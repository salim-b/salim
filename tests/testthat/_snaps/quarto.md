# `read_quarto_chunk_data()` works as expected

    {
      "type": "list",
      "attributes": {
        "names": {
          "type": "character",
          "attributes": {},
          "value": ["body", "fig_cap", "fig_column", "fig_height", "itr_vars", "label", "out_height", "itr_vars_r"]
        },
        "row.names": {
          "type": "integer",
          "attributes": {},
          "value": [1, 2, 3, 4, 5]
        },
        "class": {
          "type": "character",
          "attributes": {},
          "value": ["tbl_df", "tbl", "data.frame"]
        }
      },
      "value": [
        {
          "type": "character",
          "attributes": {},
          "value": ["insert_plot(id = glue::glue('likert_plot_agreement_arguments_{lvl}_proposal_{proposal_nr}'))", "insert_plot(id = glue::glue('likert_plot_agreement_arguments_{lvl}_proposal_{proposal_nr}'))", "insert_plot(id = glue::glue('likert_plot_agreement_arguments_{lvl}_proposal_{proposal_nr}'))", "insert_plot(id = glue::glue('bar_plot_main_motive_{lvl}_{proposal_nr}_{type}'))", "plot(cars)"]
        },
        {
          "type": "character",
          "attributes": {},
          "value": ["Agreeement to pro and contra arguments in canton {canton} at {ballot_date}", "Agreeement to pro and contra arguments in canton {canton} at {ballot_date}", "Agreeement to pro and contra arguments in canton {canton} at {ballot_date}", "Main motive of the {type} voters to proposal {proposal_nr}", "A simple figure"]
        },
        {
          "type": "character",
          "attributes": {},
          "value": ["page", "page", "page", "page", "page"]
        },
        {
          "type": "integer",
          "attributes": {},
          "value": [8, 8, 8, 8, 8]
        },
        {
          "type": "list",
          "attributes": {},
          "value": [
            {
              "type": "list",
              "attributes": {
                "names": {
                  "type": "character",
                  "attributes": {},
                  "value": ["ballot_date", "canton", "lvl", "proposal_nr"]
                }
              },
              "value": [
                {
                  "type": "double",
                  "attributes": {
                    "class": {
                      "type": "character",
                      "attributes": {},
                      "value": ["Date"]
                    }
                  },
                  "value": [19526]
                },
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["aargau"]
                },
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["cantonal"]
                },
                {
                  "type": "integer",
                  "attributes": {},
                  "value": [1]
                }
              ]
            },
            {
              "type": "list",
              "attributes": {
                "names": {
                  "type": "character",
                  "attributes": {},
                  "value": ["ballot_date", "canton", "lvl", "proposal_nr"]
                }
              },
              "value": [
                {
                  "type": "double",
                  "attributes": {
                    "class": {
                      "type": "character",
                      "attributes": {},
                      "value": ["Date"]
                    }
                  },
                  "value": [19526]
                },
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["aargau"]
                },
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["cantonal"]
                },
                {
                  "type": "integer",
                  "attributes": {},
                  "value": [3]
                }
              ]
            },
            {
              "type": "list",
              "attributes": {
                "names": {
                  "type": "character",
                  "attributes": {},
                  "value": ["ballot_date", "canton", "lvl", "proposal_nr"]
                }
              },
              "value": [
                {
                  "type": "double",
                  "attributes": {
                    "class": {
                      "type": "character",
                      "attributes": {},
                      "value": ["Date"]
                    }
                  },
                  "value": [19526]
                },
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["aargau"]
                },
                {
                  "type": "character",
                  "attributes": {},
                  "value": ["federal"]
                },
                {
                  "type": "integer",
                  "attributes": {},
                  "value": [2]
                }
              ]
            },
            {
              "type": "NULL"
            },
            {
              "type": "NULL"
            }
          ]
        },
        {
          "type": "character",
          "attributes": {},
          "value": ["fig-likert_plot_agreement_arguments_{lvl}_proposal_{proposal_nr}", "fig-likert_plot_agreement_arguments_{lvl}_proposal_{proposal_nr}", "fig-likert_plot_agreement_arguments_{lvl}_proposal_{proposal_nr}", "fig-bar_plot_main_motive_{lvl}_{proposal_nr}_{type}", "fig-simple"]
        },
        {
          "type": "character",
          "attributes": {},
          "value": ["800px", "800px", "800px", "800px", "800px"]
        },
        {
          "type": "character",
          "attributes": {},
          "value": [null, null, null, "fokus::combos_proposal_main_motives(canton = 'aargau', ballot_date = '2023-06-18')", null]
        }
      ]
    }

# `quarto_chunks()` works as expected

    {
      "type": "list",
      "attributes": {
        "names": {
          "type": "character",
          "attributes": {},
          "value": ["fig-likert_plot_agreement_arguments_cantonal_proposal_1", "fig-likert_plot_agreement_arguments_cantonal_proposal_3", "fig-likert_plot_agreement_arguments_federal_proposal_2", "fig-bar_plot_main_motive_cantonal_1_yes", "fig-bar_plot_main_motive_cantonal_1_no", "fig-bar_plot_main_motive_cantonal_3_yes", "fig-bar_plot_main_motive_cantonal_3_no", "fig-bar_plot_main_motive_federal_2_yes", "fig-bar_plot_main_motive_federal_2_no", "fig-simple"]
        }
      },
      "value": [
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-likert_plot_agreement_arguments_cantonal_proposal_1\n#| fig-cap:\n#|   - Agreeement to pro and contra arguments in canton aargau at 2023-06-18\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('likert_plot_agreement_arguments_cantonal_proposal_1'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-likert_plot_agreement_arguments_cantonal_proposal_3\n#| fig-cap:\n#|   - Agreeement to pro and contra arguments in canton aargau at 2023-06-18\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('likert_plot_agreement_arguments_cantonal_proposal_3'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-likert_plot_agreement_arguments_federal_proposal_2\n#| fig-cap:\n#|   - Agreeement to pro and contra arguments in canton aargau at 2023-06-18\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('likert_plot_agreement_arguments_federal_proposal_2'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-bar_plot_main_motive_cantonal_1_yes\n#| fig-cap:\n#|   - Main motive of the yes voters to proposal 1\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('bar_plot_main_motive_cantonal_1_yes'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-bar_plot_main_motive_cantonal_1_no\n#| fig-cap:\n#|   - Main motive of the no voters to proposal 1\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('bar_plot_main_motive_cantonal_1_no'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-bar_plot_main_motive_cantonal_3_yes\n#| fig-cap:\n#|   - Main motive of the yes voters to proposal 3\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('bar_plot_main_motive_cantonal_3_yes'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-bar_plot_main_motive_cantonal_3_no\n#| fig-cap:\n#|   - Main motive of the no voters to proposal 3\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('bar_plot_main_motive_cantonal_3_no'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-bar_plot_main_motive_federal_2_yes\n#| fig-cap:\n#|   - Main motive of the yes voters to proposal 2\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('bar_plot_main_motive_federal_2_yes'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-bar_plot_main_motive_federal_2_no\n#| fig-cap:\n#|   - Main motive of the no voters to proposal 2\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\ninsert_plot(id = glue::glue('bar_plot_main_motive_federal_2_no'))\n```\n"]
        },
        {
          "type": "character",
          "attributes": {
            "class": {
              "type": "character",
              "attributes": {},
              "value": ["glue", "character"]
            }
          },
          "value": ["```{r}\n#| label: fig-simple\n#| fig-cap:\n#|   - A simple figure\n#| fig-column: page\n#| fig-height: 8\n#| fig-pos: H\n#| out-height: 800px\n\nplot(cars)\n```\n"]
        }
      ]
    }

