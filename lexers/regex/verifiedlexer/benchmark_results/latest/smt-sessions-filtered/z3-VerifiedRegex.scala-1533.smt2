; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80542 () Bool)

(assert start!80542)

(declare-fun b!894010 () Bool)

(declare-fun e!585451 () Bool)

(declare-datatypes ((C!5220 0))(
  ( (C!5221 (val!2858 Int)) )
))
(declare-datatypes ((Regex!2325 0))(
  ( (ElementMatch!2325 (c!144768 C!5220)) (Concat!4158 (regOne!5162 Regex!2325) (regTwo!5162 Regex!2325)) (EmptyExpr!2325) (Star!2325 (reg!2654 Regex!2325)) (EmptyLang!2325) (Union!2325 (regOne!5163 Regex!2325) (regTwo!5163 Regex!2325)) )
))
(declare-fun r!15766 () Regex!2325)

(declare-datatypes ((List!9555 0))(
  ( (Nil!9539) (Cons!9539 (h!14940 C!5220) (t!100601 List!9555)) )
))
(declare-fun s!10566 () List!9555)

(declare-fun matchR!863 (Regex!2325 List!9555) Bool)

(assert (=> b!894010 (= e!585451 (matchR!863 (regTwo!5163 r!15766) s!10566))))

(declare-fun b!894011 () Bool)

(declare-fun e!585448 () Bool)

(declare-fun e!585447 () Bool)

(assert (=> b!894011 (= e!585448 e!585447)))

(declare-fun res!406378 () Bool)

(assert (=> b!894011 (=> res!406378 e!585447)))

(declare-fun lt!333022 () Bool)

(assert (=> b!894011 (= res!406378 (not lt!333022))))

(declare-fun lt!333020 () Bool)

(assert (=> b!894011 (= lt!333020 lt!333022)))

(declare-fun lt!333015 () Regex!2325)

(assert (=> b!894011 (= lt!333022 (matchR!863 lt!333015 s!10566))))

(assert (=> b!894011 (= lt!333020 (matchR!863 (regTwo!5163 r!15766) s!10566))))

(declare-fun removeUselessConcat!60 (Regex!2325) Regex!2325)

(assert (=> b!894011 (= lt!333015 (removeUselessConcat!60 (regTwo!5163 r!15766)))))

(declare-datatypes ((Unit!14229 0))(
  ( (Unit!14230) )
))
(declare-fun lt!333016 () Unit!14229)

(declare-fun lemmaRemoveUselessConcatSound!54 (Regex!2325 List!9555) Unit!14229)

(assert (=> b!894011 (= lt!333016 (lemmaRemoveUselessConcatSound!54 (regTwo!5163 r!15766) s!10566))))

(declare-fun b!894012 () Bool)

(declare-fun res!406377 () Bool)

(declare-fun e!585446 () Bool)

(assert (=> b!894012 (=> res!406377 e!585446)))

(declare-fun lt!333021 () Regex!2325)

(declare-fun validRegex!794 (Regex!2325) Bool)

(assert (=> b!894012 (= res!406377 (not (validRegex!794 lt!333021)))))

(declare-fun b!894013 () Bool)

(declare-fun e!585449 () Bool)

(declare-fun tp!281120 () Bool)

(assert (=> b!894013 (= e!585449 tp!281120)))

(declare-fun b!894014 () Bool)

(declare-fun tp!281124 () Bool)

(declare-fun tp!281119 () Bool)

(assert (=> b!894014 (= e!585449 (and tp!281124 tp!281119))))

(declare-fun b!894015 () Bool)

(declare-fun e!585444 () Bool)

(declare-fun tp_is_empty!4293 () Bool)

(declare-fun tp!281122 () Bool)

(assert (=> b!894015 (= e!585444 (and tp_is_empty!4293 tp!281122))))

(declare-fun b!894016 () Bool)

(declare-fun e!585445 () Bool)

(assert (=> b!894016 (= e!585445 e!585448)))

(declare-fun res!406376 () Bool)

(assert (=> b!894016 (=> res!406376 e!585448)))

(declare-fun lt!333023 () Bool)

(assert (=> b!894016 (= res!406376 lt!333023)))

(assert (=> b!894016 e!585451))

(declare-fun res!406375 () Bool)

(assert (=> b!894016 (=> res!406375 e!585451)))

(assert (=> b!894016 (= res!406375 lt!333023)))

(assert (=> b!894016 (= lt!333023 (matchR!863 (regOne!5163 r!15766) s!10566))))

(declare-fun lt!333018 () Unit!14229)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!36 (Regex!2325 Regex!2325 List!9555) Unit!14229)

(assert (=> b!894016 (= lt!333018 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!36 (regOne!5163 r!15766) (regTwo!5163 r!15766) s!10566))))

(declare-fun b!894017 () Bool)

(assert (=> b!894017 (= e!585447 e!585446)))

(declare-fun res!406372 () Bool)

(assert (=> b!894017 (=> res!406372 e!585446)))

(assert (=> b!894017 (= res!406372 (not (validRegex!794 lt!333015)))))

(assert (=> b!894017 (matchR!863 (Union!2325 lt!333015 lt!333021) s!10566)))

(declare-fun lt!333019 () Unit!14229)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!12 (Regex!2325 Regex!2325 List!9555) Unit!14229)

(assert (=> b!894017 (= lt!333019 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!12 lt!333015 lt!333021 s!10566))))

(assert (=> b!894017 (= lt!333021 (removeUselessConcat!60 (regOne!5163 r!15766)))))

(declare-fun res!406374 () Bool)

(declare-fun e!585450 () Bool)

(assert (=> start!80542 (=> (not res!406374) (not e!585450))))

(assert (=> start!80542 (= res!406374 (validRegex!794 r!15766))))

(assert (=> start!80542 e!585450))

(assert (=> start!80542 e!585449))

(assert (=> start!80542 e!585444))

(declare-fun b!894018 () Bool)

(assert (=> b!894018 (= e!585446 true)))

(assert (=> b!894018 (matchR!863 (Union!2325 lt!333021 lt!333015) s!10566)))

(declare-fun lt!333017 () Unit!14229)

(declare-fun lemmaReversedUnionAcceptsSameString!2 (Regex!2325 Regex!2325 List!9555) Unit!14229)

(assert (=> b!894018 (= lt!333017 (lemmaReversedUnionAcceptsSameString!2 lt!333015 lt!333021 s!10566))))

(declare-fun b!894019 () Bool)

(assert (=> b!894019 (= e!585450 (not e!585445))))

(declare-fun res!406373 () Bool)

(assert (=> b!894019 (=> res!406373 e!585445)))

(declare-fun lt!333024 () Bool)

(get-info :version)

(assert (=> b!894019 (= res!406373 (or (not lt!333024) (and ((_ is Concat!4158) r!15766) ((_ is EmptyExpr!2325) (regOne!5162 r!15766))) (and ((_ is Concat!4158) r!15766) ((_ is EmptyExpr!2325) (regTwo!5162 r!15766))) ((_ is Concat!4158) r!15766) (not ((_ is Union!2325) r!15766))))))

(declare-fun matchRSpec!126 (Regex!2325 List!9555) Bool)

(assert (=> b!894019 (= lt!333024 (matchRSpec!126 r!15766 s!10566))))

(assert (=> b!894019 (= lt!333024 (matchR!863 r!15766 s!10566))))

(declare-fun lt!333025 () Unit!14229)

(declare-fun mainMatchTheorem!126 (Regex!2325 List!9555) Unit!14229)

(assert (=> b!894019 (= lt!333025 (mainMatchTheorem!126 r!15766 s!10566))))

(declare-fun b!894020 () Bool)

(declare-fun tp!281121 () Bool)

(declare-fun tp!281123 () Bool)

(assert (=> b!894020 (= e!585449 (and tp!281121 tp!281123))))

(declare-fun b!894021 () Bool)

(assert (=> b!894021 (= e!585449 tp_is_empty!4293)))

(assert (= (and start!80542 res!406374) b!894019))

(assert (= (and b!894019 (not res!406373)) b!894016))

(assert (= (and b!894016 (not res!406375)) b!894010))

(assert (= (and b!894016 (not res!406376)) b!894011))

(assert (= (and b!894011 (not res!406378)) b!894017))

(assert (= (and b!894017 (not res!406372)) b!894012))

(assert (= (and b!894012 (not res!406377)) b!894018))

(assert (= (and start!80542 ((_ is ElementMatch!2325) r!15766)) b!894021))

(assert (= (and start!80542 ((_ is Concat!4158) r!15766)) b!894020))

(assert (= (and start!80542 ((_ is Star!2325) r!15766)) b!894013))

(assert (= (and start!80542 ((_ is Union!2325) r!15766)) b!894014))

(assert (= (and start!80542 ((_ is Cons!9539) s!10566)) b!894015))

(declare-fun m!1135147 () Bool)

(assert (=> b!894016 m!1135147))

(declare-fun m!1135149 () Bool)

(assert (=> b!894016 m!1135149))

(declare-fun m!1135151 () Bool)

(assert (=> b!894010 m!1135151))

(declare-fun m!1135153 () Bool)

(assert (=> b!894018 m!1135153))

(declare-fun m!1135155 () Bool)

(assert (=> b!894018 m!1135155))

(declare-fun m!1135157 () Bool)

(assert (=> start!80542 m!1135157))

(declare-fun m!1135159 () Bool)

(assert (=> b!894011 m!1135159))

(assert (=> b!894011 m!1135151))

(declare-fun m!1135161 () Bool)

(assert (=> b!894011 m!1135161))

(declare-fun m!1135163 () Bool)

(assert (=> b!894011 m!1135163))

(declare-fun m!1135165 () Bool)

(assert (=> b!894012 m!1135165))

(declare-fun m!1135167 () Bool)

(assert (=> b!894019 m!1135167))

(declare-fun m!1135169 () Bool)

(assert (=> b!894019 m!1135169))

(declare-fun m!1135171 () Bool)

(assert (=> b!894019 m!1135171))

(declare-fun m!1135173 () Bool)

(assert (=> b!894017 m!1135173))

(declare-fun m!1135175 () Bool)

(assert (=> b!894017 m!1135175))

(declare-fun m!1135177 () Bool)

(assert (=> b!894017 m!1135177))

(declare-fun m!1135179 () Bool)

(assert (=> b!894017 m!1135179))

(check-sat (not start!80542) (not b!894012) (not b!894017) (not b!894013) (not b!894014) (not b!894016) (not b!894020) (not b!894019) (not b!894011) tp_is_empty!4293 (not b!894010) (not b!894018) (not b!894015))
(check-sat)
