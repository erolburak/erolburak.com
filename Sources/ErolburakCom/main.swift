//
//  main.swift
//
//
//  Created by Burak Erol on 20.10.23.
//

import Publish

try ErolburakCom().publish(using: [.copyResources(to: "resources"),
                                  .copyFile(at: Path("resources/CNAME")),
                                  .copyFile(at: Path("resources/README.md")),
                                  .addMarkdownFiles(),
                                  .generateHTML(withTheme: .customTheme),
                                  .copyDefaultIndexHtml(),
                                  .deploy(using: .gitHub("erolburak/erolburak.github.io",
                                                         branch: "main",
                                                         useSSH: true))])
