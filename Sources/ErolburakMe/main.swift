//
//  main.swift
//
//
//  Created by Burak Erol on 20.10.23.
//

try ErolburakMe().publish(using: [.copyResources(),
                                  .addMarkdownFiles(),
                                  .generateHTML(withTheme: .customTheme),
                                  .copyDefaultIndexHtml(),
                                  .deploy(using: .gitHub("erolburak/erolburak.github.io",
                                                         branch: "main",
                                                         useSSH: true))])
