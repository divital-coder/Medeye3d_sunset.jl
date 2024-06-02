using Pkg
using Documenter
using DocumenterVitepress
using MedEye3d

DocMeta.setdocmeta!(MedEye3d, :DOCTestSetup, :(using MedEye3d); recursive=true)
pgs = [
    "Home" => "index.md",
    "Tutorials" => "tutorials.md",
    "Contributing" => "contributing.md"
]

fmt = DocumenterVitepress.MarkdownVitepress(
    repo="https://github.com/JuliaHealth/MedEye3d.jl",
    devbranch="master",
    devurl="dev"
)


makedocs(;
    modules=[MedEye3d, MedEye3d.SegmentationDisplay, MedEye3d.ReactingToInput, MedEye3d.ReactOnKeyboard, MedEye3d.ReactOnMouseClickAndDrag, MedEye3d.ReactToScroll, MedEye3d.PrepareWindow, MedEye3d.TextureManag, MedEye3d.DisplayWords, MedEye3d.Uniforms, MedEye3d.ShadersAndVerticiesForText, MedEye3d.ShadersAndVerticies, MedEye3d.OpenGLDisplayUtils, MedEye3d.CustomFragShad, MedEye3d.PrepareWindowHelpers, MedEye3d.StructsManag, MedEye3d.ForDisplayStructs, MedEye3d.DataStructs, MedEye3d.BasicStructs, MedEye3d.ModernGlUtil, MedEye3d.MaskDiffrence, MedEye3d.KeyboardVisibility, MedEye3d.OtherKeyboardActions, MedEye3d.KeyboardMouseHelper, MedEye3d.WindowControll, MedEye3d.ChangePlane],
    format=fmt,
    repo=Remotes.Github("JuliaHealth", "MedEye3d.jl"),
    authors="Jakub Mitura <jakubmitura14@gmail.com>, Divyansh Goyal <divital2004@gmail.com>, and contributors",
    sitename="MedEye3d.jl",
    pages=pgs,
    warnonly=true,
    draft=false,
    source="src",
    build="build",
    checkdocs=:all
)

deploydocs(;
    repo="github.com/JuliaHealth/MedEye3d.jl",
    target="build",
    devbranch="master",
    branch="gh-pages",
    push_preview=true
)
