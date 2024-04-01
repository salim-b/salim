test_that("`decline_noun_de()` works as expected", {

  c("genitive", "dative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Aargauische Klimaschutziniative",
                                                         gender = "feminine",
                                                         case = case),
                                         "Aargauischen Klimaschutziniative"))

  c("nominative", "accusative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Aargauische Klimaschutziniative",
                                                         gender = "feminine",
                                                         case = case),
                                         "Aargauische Klimaschutziniative"))

  expect_identical(decline_noun_de(noun = "Biss",
                                   gender = "masculine",
                                   case = "genitive"),
                   "Bisses")

  c("nominative", "dative", "accusative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Biss",
                                                         gender = "masculine",
                                                         case = case),
                                         "Biss"))

  expect_identical(decline_noun_de(noun = "Ende",
                                   gender = "neuter",
                                   case = "genitive"),
                   "Endes")

  c("nominative", "dative", "accusative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Ende",
                                                         gender = "neuter",
                                                         case = case),
                                         "Ende"))

  c("nominative", "genitive", "dative", "accusative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Matrix",
                                                         gender = "feminine",
                                                         case = case),
                                         "Matrix"))

  expect_identical(decline_noun_de(noun = "Schatz",
                                   gender = "masculine",
                                   case = "genitive"),
                   "Schatzes")

  c("nominative", "dative", "accusative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Schatz",
                                                         gender = "masculine",
                                                         case = case),
                                         "Schatz"))

  c("nominative", "genitive", "dative", "accusative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Tatsache",
                                                         gender = "feminine",
                                                         case = case),
                                         "Tatsache"))

  expect_identical(decline_noun_de(noun = "Wald",
                                   gender = "masculine",
                                   case = "genitive"),
                   "Walds")

  c("nominative", "dative", "accusative") |>
    purrr::walk(\(case) expect_identical(decline_noun_de(noun = "Wald",
                                                         gender = "masculine",
                                                         case = case),
                                         "Wald"))
})
