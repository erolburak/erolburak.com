//
//  main.swift
//
//
//  Created by Burak Erol on 20.10.23.
//

import Publish

try ErolburakMe().publish(using: [.copyResources(to: "Resources"),
                                  .copyFile(at: Path("Resources/CNAME")),
                                  .addMarkdownFiles(),
                                  .generateHTML(withTheme: .customTheme),
                                  .copyDefaultIndexHtml(),
                                  .deploy(using: .gitHub("erolburak/erolburak.github.io",
                                                         branch: "main",
                                                         useSSH: true))])
