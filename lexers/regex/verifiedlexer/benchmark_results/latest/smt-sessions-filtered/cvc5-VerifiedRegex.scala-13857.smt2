; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!736710 () Bool)

(assert start!736710)

(declare-fun b!7693139 () Bool)

(assert (=> b!7693139 true))

(assert (=> b!7693139 true))

(declare-fun bs!1956333 () Bool)

(declare-fun b!7693132 () Bool)

(assert (= bs!1956333 (and b!7693132 b!7693139)))

(declare-fun lambda!470389 () Int)

(declare-fun lambda!470388 () Int)

(assert (=> bs!1956333 (not (= lambda!470389 lambda!470388))))

(assert (=> b!7693132 true))

(assert (=> b!7693132 true))

(declare-fun e!4566468 () Bool)

(declare-datatypes ((C!41342 0))(
  ( (C!41343 (val!31111 Int)) )
))
(declare-datatypes ((List!73359 0))(
  ( (Nil!73235) (Cons!73235 (h!79683 C!41342) (t!388094 List!73359)) )
))
(declare-fun s!9605 () List!73359)

(declare-fun lt!2664021 () Bool)

(declare-fun b!7693128 () Bool)

(declare-datatypes ((Regex!20508 0))(
  ( (ElementMatch!20508 (c!1417834 C!41342)) (Concat!29353 (regOne!41528 Regex!20508) (regTwo!41528 Regex!20508)) (EmptyExpr!20508) (Star!20508 (reg!20837 Regex!20508)) (EmptyLang!20508) (Union!20508 (regOne!41529 Regex!20508) (regTwo!41529 Regex!20508)) )
))
(declare-fun r!14126 () Regex!20508)

(declare-fun matchRSpec!4609 (Regex!20508 List!73359) Bool)

(assert (=> b!7693128 (= e!4566468 (= lt!2664021 (matchRSpec!4609 r!14126 s!9605)))))

(declare-fun b!7693129 () Bool)

(declare-fun e!4566472 () Bool)

(declare-fun tp_is_empty!51371 () Bool)

(declare-fun tp!2253759 () Bool)

(assert (=> b!7693129 (= e!4566472 (and tp_is_empty!51371 tp!2253759))))

(declare-fun b!7693130 () Bool)

(declare-fun res!3072973 () Bool)

(declare-fun e!4566473 () Bool)

(assert (=> b!7693130 (=> res!3072973 e!4566473)))

(declare-datatypes ((tuple2!69478 0))(
  ( (tuple2!69479 (_1!38042 List!73359) (_2!38042 List!73359)) )
))
(declare-fun lt!2664030 () tuple2!69478)

(declare-fun isEmpty!41878 (List!73359) Bool)

(assert (=> b!7693130 (= res!3072973 (isEmpty!41878 (_1!38042 lt!2664030)))))

(declare-fun b!7693131 () Bool)

(declare-fun e!4566469 () Bool)

(declare-fun tp!2253757 () Bool)

(declare-fun tp!2253756 () Bool)

(assert (=> b!7693131 (= e!4566469 (and tp!2253757 tp!2253756))))

(assert (=> b!7693132 (= e!4566473 e!4566468)))

(declare-fun res!3072980 () Bool)

(assert (=> b!7693132 (=> res!3072980 e!4566468)))

(declare-fun Exists!4633 (Int) Bool)

(assert (=> b!7693132 (= res!3072980 (not (Exists!4633 lambda!470389)))))

(declare-datatypes ((Unit!168044 0))(
  ( (Unit!168045) )
))
(declare-fun lt!2664022 () Unit!168044)

(declare-fun ExistsThe!57 (tuple2!69478 Int) Unit!168044)

(assert (=> b!7693132 (= lt!2664022 (ExistsThe!57 lt!2664030 lambda!470389))))

(declare-fun b!7693133 () Bool)

(declare-fun tp!2253755 () Bool)

(assert (=> b!7693133 (= e!4566469 tp!2253755)))

(declare-fun b!7693134 () Bool)

(declare-fun tp!2253758 () Bool)

(declare-fun tp!2253754 () Bool)

(assert (=> b!7693134 (= e!4566469 (and tp!2253758 tp!2253754))))

(declare-fun b!7693135 () Bool)

(declare-fun res!3072981 () Bool)

(declare-fun e!4566466 () Bool)

(assert (=> b!7693135 (=> (not res!3072981) (not e!4566466))))

(assert (=> b!7693135 (= res!3072981 (not (isEmpty!41878 s!9605)))))

(declare-fun b!7693136 () Bool)

(declare-fun e!4566474 () Unit!168044)

(declare-fun Unit!168046 () Unit!168044)

(assert (=> b!7693136 (= e!4566474 Unit!168046)))

(declare-fun lt!2664019 () Unit!168044)

(declare-fun lt!2664020 () tuple2!69478)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!195 (Regex!20508 Regex!20508 List!73359 List!73359 List!73359) Unit!168044)

(assert (=> b!7693136 (= lt!2664019 (lemmaFindSeparationIsDefinedThenConcatMatches!195 (reg!20837 r!14126) r!14126 (_1!38042 lt!2664020) (_2!38042 lt!2664020) s!9605))))

(declare-fun lt!2664025 () List!73359)

(declare-fun ++!17730 (List!73359 List!73359) List!73359)

(assert (=> b!7693136 (= lt!2664025 (++!17730 (_1!38042 lt!2664020) (_2!38042 lt!2664020)))))

(declare-fun matchR!10004 (Regex!20508 List!73359) Bool)

(assert (=> b!7693136 (matchR!10004 (Concat!29353 (reg!20837 r!14126) r!14126) lt!2664025)))

(declare-fun lt!2664026 () Unit!168044)

(declare-fun lemmaStarApp!217 (Regex!20508 List!73359 List!73359) Unit!168044)

(assert (=> b!7693136 (= lt!2664026 (lemmaStarApp!217 (reg!20837 r!14126) (_1!38042 lt!2664020) (_2!38042 lt!2664020)))))

(declare-fun res!3072974 () Bool)

(assert (=> b!7693136 (= res!3072974 (matchR!10004 r!14126 lt!2664025))))

(declare-fun e!4566471 () Bool)

(assert (=> b!7693136 (=> (not res!3072974) (not e!4566471))))

(assert (=> b!7693136 e!4566471))

(declare-fun b!7693137 () Bool)

(declare-fun Unit!168047 () Unit!168044)

(assert (=> b!7693137 (= e!4566474 Unit!168047)))

(declare-fun b!7693138 () Bool)

(assert (=> b!7693138 (= e!4566469 tp_is_empty!51371)))

(declare-fun e!4566470 () Bool)

(assert (=> b!7693139 (= e!4566466 (not e!4566470))))

(declare-fun res!3072979 () Bool)

(assert (=> b!7693139 (=> res!3072979 e!4566470)))

(declare-fun lt!2664024 () Bool)

(assert (=> b!7693139 (= res!3072979 (not lt!2664024))))

(assert (=> b!7693139 (= lt!2664024 (Exists!4633 lambda!470388))))

(declare-datatypes ((Option!17533 0))(
  ( (None!17532) (Some!17532 (v!54667 tuple2!69478)) )
))
(declare-fun lt!2664017 () Option!17533)

(declare-fun isDefined!14149 (Option!17533) Bool)

(assert (=> b!7693139 (= lt!2664024 (isDefined!14149 lt!2664017))))

(declare-fun findConcatSeparation!3563 (Regex!20508 Regex!20508 List!73359 List!73359 List!73359) Option!17533)

(assert (=> b!7693139 (= lt!2664017 (findConcatSeparation!3563 (reg!20837 r!14126) r!14126 Nil!73235 s!9605 s!9605))))

(declare-fun lt!2664031 () Unit!168044)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3321 (Regex!20508 Regex!20508 List!73359) Unit!168044)

(assert (=> b!7693139 (= lt!2664031 (lemmaFindConcatSeparationEquivalentToExists!3321 (reg!20837 r!14126) r!14126 s!9605))))

(declare-fun res!3072975 () Bool)

(assert (=> start!736710 (=> (not res!3072975) (not e!4566466))))

(declare-fun validRegex!10926 (Regex!20508) Bool)

(assert (=> start!736710 (= res!3072975 (validRegex!10926 r!14126))))

(assert (=> start!736710 e!4566466))

(assert (=> start!736710 e!4566469))

(assert (=> start!736710 e!4566472))

(declare-fun b!7693140 () Bool)

(declare-fun e!4566467 () Bool)

(assert (=> b!7693140 (= e!4566467 e!4566473)))

(declare-fun res!3072976 () Bool)

(assert (=> b!7693140 (=> res!3072976 e!4566473)))

(declare-fun nullable!8997 (Regex!20508) Bool)

(assert (=> b!7693140 (= res!3072976 (nullable!8997 (reg!20837 r!14126)))))

(assert (=> b!7693140 (= (matchR!10004 r!14126 (_2!38042 lt!2664030)) (matchRSpec!4609 r!14126 (_2!38042 lt!2664030)))))

(declare-fun lt!2664029 () Unit!168044)

(declare-fun mainMatchTheorem!4587 (Regex!20508 List!73359) Unit!168044)

(assert (=> b!7693140 (= lt!2664029 (mainMatchTheorem!4587 r!14126 (_2!38042 lt!2664030)))))

(assert (=> b!7693140 (= (matchR!10004 (reg!20837 r!14126) (_1!38042 lt!2664030)) (matchRSpec!4609 (reg!20837 r!14126) (_1!38042 lt!2664030)))))

(declare-fun lt!2664027 () Unit!168044)

(assert (=> b!7693140 (= lt!2664027 (mainMatchTheorem!4587 (reg!20837 r!14126) (_1!38042 lt!2664030)))))

(declare-fun pickWitness!497 (Int) tuple2!69478)

(assert (=> b!7693140 (= lt!2664030 (pickWitness!497 lambda!470388))))

(declare-fun b!7693141 () Bool)

(assert (=> b!7693141 (= e!4566470 e!4566467)))

(declare-fun res!3072978 () Bool)

(assert (=> b!7693141 (=> res!3072978 e!4566467)))

(assert (=> b!7693141 (= res!3072978 (not (Exists!4633 lambda!470388)))))

(declare-fun lt!2664018 () Unit!168044)

(assert (=> b!7693141 (= lt!2664018 e!4566474)))

(declare-fun c!1417833 () Bool)

(assert (=> b!7693141 (= c!1417833 (not lt!2664021))))

(assert (=> b!7693141 (= lt!2664021 (matchR!10004 r!14126 s!9605))))

(assert (=> b!7693141 (= (matchR!10004 r!14126 (_2!38042 lt!2664020)) (matchRSpec!4609 r!14126 (_2!38042 lt!2664020)))))

(declare-fun lt!2664028 () Unit!168044)

(assert (=> b!7693141 (= lt!2664028 (mainMatchTheorem!4587 r!14126 (_2!38042 lt!2664020)))))

(assert (=> b!7693141 (= (matchR!10004 (reg!20837 r!14126) (_1!38042 lt!2664020)) (matchRSpec!4609 (reg!20837 r!14126) (_1!38042 lt!2664020)))))

(declare-fun lt!2664023 () Unit!168044)

(assert (=> b!7693141 (= lt!2664023 (mainMatchTheorem!4587 (reg!20837 r!14126) (_1!38042 lt!2664020)))))

(declare-fun get!25974 (Option!17533) tuple2!69478)

(assert (=> b!7693141 (= lt!2664020 (get!25974 lt!2664017))))

(declare-fun b!7693142 () Bool)

(declare-fun res!3072977 () Bool)

(assert (=> b!7693142 (=> (not res!3072977) (not e!4566466))))

(assert (=> b!7693142 (= res!3072977 (and (not (is-EmptyExpr!20508 r!14126)) (not (is-EmptyLang!20508 r!14126)) (not (is-ElementMatch!20508 r!14126)) (not (is-Union!20508 r!14126)) (is-Star!20508 r!14126)))))

(declare-fun b!7693143 () Bool)

(assert (=> b!7693143 (= e!4566471 false)))

(assert (= (and start!736710 res!3072975) b!7693142))

(assert (= (and b!7693142 res!3072977) b!7693135))

(assert (= (and b!7693135 res!3072981) b!7693139))

(assert (= (and b!7693139 (not res!3072979)) b!7693141))

(assert (= (and b!7693141 c!1417833) b!7693136))

(assert (= (and b!7693141 (not c!1417833)) b!7693137))

(assert (= (and b!7693136 res!3072974) b!7693143))

(assert (= (and b!7693141 (not res!3072978)) b!7693140))

(assert (= (and b!7693140 (not res!3072976)) b!7693130))

(assert (= (and b!7693130 (not res!3072973)) b!7693132))

(assert (= (and b!7693132 (not res!3072980)) b!7693128))

(assert (= (and start!736710 (is-ElementMatch!20508 r!14126)) b!7693138))

(assert (= (and start!736710 (is-Concat!29353 r!14126)) b!7693131))

(assert (= (and start!736710 (is-Star!20508 r!14126)) b!7693133))

(assert (= (and start!736710 (is-Union!20508 r!14126)) b!7693134))

(assert (= (and start!736710 (is-Cons!73235 s!9605)) b!7693129))

(declare-fun m!8186758 () Bool)

(assert (=> b!7693140 m!8186758))

(declare-fun m!8186760 () Bool)

(assert (=> b!7693140 m!8186760))

(declare-fun m!8186762 () Bool)

(assert (=> b!7693140 m!8186762))

(declare-fun m!8186764 () Bool)

(assert (=> b!7693140 m!8186764))

(declare-fun m!8186766 () Bool)

(assert (=> b!7693140 m!8186766))

(declare-fun m!8186768 () Bool)

(assert (=> b!7693140 m!8186768))

(declare-fun m!8186770 () Bool)

(assert (=> b!7693140 m!8186770))

(declare-fun m!8186772 () Bool)

(assert (=> b!7693140 m!8186772))

(declare-fun m!8186774 () Bool)

(assert (=> b!7693132 m!8186774))

(declare-fun m!8186776 () Bool)

(assert (=> b!7693132 m!8186776))

(declare-fun m!8186778 () Bool)

(assert (=> b!7693136 m!8186778))

(declare-fun m!8186780 () Bool)

(assert (=> b!7693136 m!8186780))

(declare-fun m!8186782 () Bool)

(assert (=> b!7693136 m!8186782))

(declare-fun m!8186784 () Bool)

(assert (=> b!7693136 m!8186784))

(declare-fun m!8186786 () Bool)

(assert (=> b!7693136 m!8186786))

(declare-fun m!8186788 () Bool)

(assert (=> b!7693139 m!8186788))

(declare-fun m!8186790 () Bool)

(assert (=> b!7693139 m!8186790))

(declare-fun m!8186792 () Bool)

(assert (=> b!7693139 m!8186792))

(declare-fun m!8186794 () Bool)

(assert (=> b!7693139 m!8186794))

(declare-fun m!8186796 () Bool)

(assert (=> b!7693135 m!8186796))

(declare-fun m!8186798 () Bool)

(assert (=> b!7693141 m!8186798))

(declare-fun m!8186800 () Bool)

(assert (=> b!7693141 m!8186800))

(declare-fun m!8186802 () Bool)

(assert (=> b!7693141 m!8186802))

(declare-fun m!8186804 () Bool)

(assert (=> b!7693141 m!8186804))

(declare-fun m!8186806 () Bool)

(assert (=> b!7693141 m!8186806))

(declare-fun m!8186808 () Bool)

(assert (=> b!7693141 m!8186808))

(declare-fun m!8186810 () Bool)

(assert (=> b!7693141 m!8186810))

(declare-fun m!8186812 () Bool)

(assert (=> b!7693141 m!8186812))

(assert (=> b!7693141 m!8186788))

(declare-fun m!8186814 () Bool)

(assert (=> start!736710 m!8186814))

(declare-fun m!8186816 () Bool)

(assert (=> b!7693130 m!8186816))

(declare-fun m!8186818 () Bool)

(assert (=> b!7693128 m!8186818))

(push 1)

(assert (not b!7693133))

(assert (not b!7693131))

(assert (not b!7693130))

(assert (not b!7693132))

(assert (not b!7693128))

(assert (not b!7693134))

(assert (not b!7693135))

(assert (not b!7693141))

(assert (not b!7693136))

(assert (not start!736710))

(assert tp_is_empty!51371)

(assert (not b!7693140))

(assert (not b!7693139))

(assert (not b!7693129))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2333342 () Bool)

(declare-fun choose!59130 (Int) Bool)

(assert (=> d!2333342 (= (Exists!4633 lambda!470388) (choose!59130 lambda!470388))))

(declare-fun bs!1956335 () Bool)

(assert (= bs!1956335 d!2333342))

(declare-fun m!8186882 () Bool)

(assert (=> bs!1956335 m!8186882))

(assert (=> b!7693139 d!2333342))

(declare-fun d!2333344 () Bool)

(declare-fun isEmpty!41880 (Option!17533) Bool)

(assert (=> d!2333344 (= (isDefined!14149 lt!2664017) (not (isEmpty!41880 lt!2664017)))))

(declare-fun bs!1956336 () Bool)

(assert (= bs!1956336 d!2333344))

(declare-fun m!8186884 () Bool)

(assert (=> bs!1956336 m!8186884))

(assert (=> b!7693139 d!2333344))

(declare-fun b!7693242 () Bool)

(declare-fun res!3073044 () Bool)

(declare-fun e!4566522 () Bool)

(assert (=> b!7693242 (=> (not res!3073044) (not e!4566522))))

(declare-fun lt!2664085 () Option!17533)

(assert (=> b!7693242 (= res!3073044 (matchR!10004 (reg!20837 r!14126) (_1!38042 (get!25974 lt!2664085))))))

(declare-fun b!7693243 () Bool)

(declare-fun e!4566525 () Bool)

(assert (=> b!7693243 (= e!4566525 (matchR!10004 r!14126 s!9605))))

(declare-fun b!7693245 () Bool)

(declare-fun e!4566526 () Option!17533)

(declare-fun e!4566524 () Option!17533)

(assert (=> b!7693245 (= e!4566526 e!4566524)))

(declare-fun c!1417844 () Bool)

(assert (=> b!7693245 (= c!1417844 (is-Nil!73235 s!9605))))

(declare-fun b!7693246 () Bool)

(assert (=> b!7693246 (= e!4566524 None!17532)))

(declare-fun b!7693247 () Bool)

(assert (=> b!7693247 (= e!4566526 (Some!17532 (tuple2!69479 Nil!73235 s!9605)))))

(declare-fun b!7693248 () Bool)

(assert (=> b!7693248 (= e!4566522 (= (++!17730 (_1!38042 (get!25974 lt!2664085)) (_2!38042 (get!25974 lt!2664085))) s!9605))))

(declare-fun b!7693249 () Bool)

(declare-fun res!3073046 () Bool)

(assert (=> b!7693249 (=> (not res!3073046) (not e!4566522))))

(assert (=> b!7693249 (= res!3073046 (matchR!10004 r!14126 (_2!38042 (get!25974 lt!2664085))))))

(declare-fun b!7693250 () Bool)

(declare-fun lt!2664084 () Unit!168044)

(declare-fun lt!2664083 () Unit!168044)

(assert (=> b!7693250 (= lt!2664084 lt!2664083)))

(assert (=> b!7693250 (= (++!17730 (++!17730 Nil!73235 (Cons!73235 (h!79683 s!9605) Nil!73235)) (t!388094 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3281 (List!73359 C!41342 List!73359 List!73359) Unit!168044)

(assert (=> b!7693250 (= lt!2664083 (lemmaMoveElementToOtherListKeepsConcatEq!3281 Nil!73235 (h!79683 s!9605) (t!388094 s!9605) s!9605))))

(assert (=> b!7693250 (= e!4566524 (findConcatSeparation!3563 (reg!20837 r!14126) r!14126 (++!17730 Nil!73235 (Cons!73235 (h!79683 s!9605) Nil!73235)) (t!388094 s!9605) s!9605))))

(declare-fun b!7693244 () Bool)

(declare-fun e!4566523 () Bool)

(assert (=> b!7693244 (= e!4566523 (not (isDefined!14149 lt!2664085)))))

(declare-fun d!2333346 () Bool)

(assert (=> d!2333346 e!4566523))

(declare-fun res!3073047 () Bool)

(assert (=> d!2333346 (=> res!3073047 e!4566523)))

(assert (=> d!2333346 (= res!3073047 e!4566522)))

(declare-fun res!3073045 () Bool)

(assert (=> d!2333346 (=> (not res!3073045) (not e!4566522))))

(assert (=> d!2333346 (= res!3073045 (isDefined!14149 lt!2664085))))

(assert (=> d!2333346 (= lt!2664085 e!4566526)))

(declare-fun c!1417843 () Bool)

(assert (=> d!2333346 (= c!1417843 e!4566525)))

(declare-fun res!3073043 () Bool)

(assert (=> d!2333346 (=> (not res!3073043) (not e!4566525))))

(assert (=> d!2333346 (= res!3073043 (matchR!10004 (reg!20837 r!14126) Nil!73235))))

(assert (=> d!2333346 (validRegex!10926 (reg!20837 r!14126))))

(assert (=> d!2333346 (= (findConcatSeparation!3563 (reg!20837 r!14126) r!14126 Nil!73235 s!9605 s!9605) lt!2664085)))

(assert (= (and d!2333346 res!3073043) b!7693243))

(assert (= (and d!2333346 c!1417843) b!7693247))

(assert (= (and d!2333346 (not c!1417843)) b!7693245))

(assert (= (and b!7693245 c!1417844) b!7693246))

(assert (= (and b!7693245 (not c!1417844)) b!7693250))

(assert (= (and d!2333346 res!3073045) b!7693242))

(assert (= (and b!7693242 res!3073044) b!7693249))

(assert (= (and b!7693249 res!3073046) b!7693248))

(assert (= (and d!2333346 (not res!3073047)) b!7693244))

(declare-fun m!8186886 () Bool)

(assert (=> b!7693249 m!8186886))

(declare-fun m!8186888 () Bool)

(assert (=> b!7693249 m!8186888))

(assert (=> b!7693242 m!8186886))

(declare-fun m!8186890 () Bool)

(assert (=> b!7693242 m!8186890))

(assert (=> b!7693243 m!8186804))

(declare-fun m!8186892 () Bool)

(assert (=> d!2333346 m!8186892))

(declare-fun m!8186894 () Bool)

(assert (=> d!2333346 m!8186894))

(declare-fun m!8186896 () Bool)

(assert (=> d!2333346 m!8186896))

(assert (=> b!7693244 m!8186892))

(assert (=> b!7693248 m!8186886))

(declare-fun m!8186898 () Bool)

(assert (=> b!7693248 m!8186898))

(declare-fun m!8186900 () Bool)

(assert (=> b!7693250 m!8186900))

(assert (=> b!7693250 m!8186900))

(declare-fun m!8186902 () Bool)

(assert (=> b!7693250 m!8186902))

(declare-fun m!8186904 () Bool)

(assert (=> b!7693250 m!8186904))

(assert (=> b!7693250 m!8186900))

(declare-fun m!8186906 () Bool)

(assert (=> b!7693250 m!8186906))

(assert (=> b!7693139 d!2333346))

(declare-fun bs!1956337 () Bool)

(declare-fun d!2333350 () Bool)

(assert (= bs!1956337 (and d!2333350 b!7693139)))

(declare-fun lambda!470404 () Int)

(assert (=> bs!1956337 (= lambda!470404 lambda!470388)))

(declare-fun bs!1956338 () Bool)

(assert (= bs!1956338 (and d!2333350 b!7693132)))

(assert (=> bs!1956338 (not (= lambda!470404 lambda!470389))))

(assert (=> d!2333350 true))

(assert (=> d!2333350 true))

(assert (=> d!2333350 true))

(assert (=> d!2333350 (= (isDefined!14149 (findConcatSeparation!3563 (reg!20837 r!14126) r!14126 Nil!73235 s!9605 s!9605)) (Exists!4633 lambda!470404))))

(declare-fun lt!2664088 () Unit!168044)

(declare-fun choose!59131 (Regex!20508 Regex!20508 List!73359) Unit!168044)

(assert (=> d!2333350 (= lt!2664088 (choose!59131 (reg!20837 r!14126) r!14126 s!9605))))

(assert (=> d!2333350 (validRegex!10926 (reg!20837 r!14126))))

(assert (=> d!2333350 (= (lemmaFindConcatSeparationEquivalentToExists!3321 (reg!20837 r!14126) r!14126 s!9605) lt!2664088)))

(declare-fun bs!1956339 () Bool)

(assert (= bs!1956339 d!2333350))

(assert (=> bs!1956339 m!8186792))

(declare-fun m!8186908 () Bool)

(assert (=> bs!1956339 m!8186908))

(assert (=> bs!1956339 m!8186896))

(declare-fun m!8186910 () Bool)

(assert (=> bs!1956339 m!8186910))

(declare-fun m!8186912 () Bool)

(assert (=> bs!1956339 m!8186912))

(assert (=> bs!1956339 m!8186792))

(assert (=> b!7693139 d!2333350))

(declare-fun bm!709562 () Bool)

(declare-fun call!709567 () Bool)

(assert (=> bm!709562 (= call!709567 (isEmpty!41878 (_1!38042 lt!2664030)))))

(declare-fun b!7693311 () Bool)

(declare-fun e!4566562 () Bool)

(declare-fun e!4566559 () Bool)

(assert (=> b!7693311 (= e!4566562 e!4566559)))

(declare-fun res!3073086 () Bool)

(assert (=> b!7693311 (=> res!3073086 e!4566559)))

(assert (=> b!7693311 (= res!3073086 call!709567)))

(declare-fun b!7693312 () Bool)

(declare-fun e!4566561 () Bool)

(assert (=> b!7693312 (= e!4566561 (nullable!8997 (reg!20837 r!14126)))))

(declare-fun b!7693313 () Bool)

(declare-fun head!15763 (List!73359) C!41342)

(assert (=> b!7693313 (= e!4566559 (not (= (head!15763 (_1!38042 lt!2664030)) (c!1417834 (reg!20837 r!14126)))))))

(declare-fun b!7693314 () Bool)

(declare-fun res!3073081 () Bool)

(assert (=> b!7693314 (=> res!3073081 e!4566559)))

(declare-fun tail!15303 (List!73359) List!73359)

(assert (=> b!7693314 (= res!3073081 (not (isEmpty!41878 (tail!15303 (_1!38042 lt!2664030)))))))

(declare-fun b!7693316 () Bool)

(declare-fun res!3073084 () Bool)

(declare-fun e!4566564 () Bool)

(assert (=> b!7693316 (=> (not res!3073084) (not e!4566564))))

(assert (=> b!7693316 (= res!3073084 (isEmpty!41878 (tail!15303 (_1!38042 lt!2664030))))))

(declare-fun b!7693317 () Bool)

(declare-fun e!4566563 () Bool)

(assert (=> b!7693317 (= e!4566563 e!4566562)))

(declare-fun res!3073087 () Bool)

(assert (=> b!7693317 (=> (not res!3073087) (not e!4566562))))

(declare-fun lt!2664091 () Bool)

(assert (=> b!7693317 (= res!3073087 (not lt!2664091))))

(declare-fun b!7693318 () Bool)

(declare-fun res!3073085 () Bool)

(assert (=> b!7693318 (=> (not res!3073085) (not e!4566564))))

(assert (=> b!7693318 (= res!3073085 (not call!709567))))

(declare-fun b!7693319 () Bool)

(declare-fun e!4566565 () Bool)

(declare-fun e!4566560 () Bool)

(assert (=> b!7693319 (= e!4566565 e!4566560)))

(declare-fun c!1417860 () Bool)

(assert (=> b!7693319 (= c!1417860 (is-EmptyLang!20508 (reg!20837 r!14126)))))

(declare-fun b!7693320 () Bool)

(declare-fun res!3073083 () Bool)

(assert (=> b!7693320 (=> res!3073083 e!4566563)))

(assert (=> b!7693320 (= res!3073083 (not (is-ElementMatch!20508 (reg!20837 r!14126))))))

(assert (=> b!7693320 (= e!4566560 e!4566563)))

(declare-fun b!7693321 () Bool)

(assert (=> b!7693321 (= e!4566564 (= (head!15763 (_1!38042 lt!2664030)) (c!1417834 (reg!20837 r!14126))))))

(declare-fun b!7693322 () Bool)

(assert (=> b!7693322 (= e!4566560 (not lt!2664091))))

(declare-fun b!7693323 () Bool)

(assert (=> b!7693323 (= e!4566565 (= lt!2664091 call!709567))))

(declare-fun b!7693324 () Bool)

(declare-fun res!3073082 () Bool)

(assert (=> b!7693324 (=> res!3073082 e!4566563)))

(assert (=> b!7693324 (= res!3073082 e!4566564)))

(declare-fun res!3073080 () Bool)

(assert (=> b!7693324 (=> (not res!3073080) (not e!4566564))))

(assert (=> b!7693324 (= res!3073080 lt!2664091)))

(declare-fun b!7693315 () Bool)

(declare-fun derivativeStep!5963 (Regex!20508 C!41342) Regex!20508)

(assert (=> b!7693315 (= e!4566561 (matchR!10004 (derivativeStep!5963 (reg!20837 r!14126) (head!15763 (_1!38042 lt!2664030))) (tail!15303 (_1!38042 lt!2664030))))))

(declare-fun d!2333352 () Bool)

(assert (=> d!2333352 e!4566565))

(declare-fun c!1417861 () Bool)

(assert (=> d!2333352 (= c!1417861 (is-EmptyExpr!20508 (reg!20837 r!14126)))))

(assert (=> d!2333352 (= lt!2664091 e!4566561)))

(declare-fun c!1417859 () Bool)

(assert (=> d!2333352 (= c!1417859 (isEmpty!41878 (_1!38042 lt!2664030)))))

(assert (=> d!2333352 (validRegex!10926 (reg!20837 r!14126))))

(assert (=> d!2333352 (= (matchR!10004 (reg!20837 r!14126) (_1!38042 lt!2664030)) lt!2664091)))

(assert (= (and d!2333352 c!1417859) b!7693312))

(assert (= (and d!2333352 (not c!1417859)) b!7693315))

(assert (= (and d!2333352 c!1417861) b!7693323))

(assert (= (and d!2333352 (not c!1417861)) b!7693319))

(assert (= (and b!7693319 c!1417860) b!7693322))

(assert (= (and b!7693319 (not c!1417860)) b!7693320))

(assert (= (and b!7693320 (not res!3073083)) b!7693324))

(assert (= (and b!7693324 res!3073080) b!7693318))

(assert (= (and b!7693318 res!3073085) b!7693316))

(assert (= (and b!7693316 res!3073084) b!7693321))

(assert (= (and b!7693324 (not res!3073082)) b!7693317))

(assert (= (and b!7693317 res!3073087) b!7693311))

(assert (= (and b!7693311 (not res!3073086)) b!7693314))

(assert (= (and b!7693314 (not res!3073081)) b!7693313))

(assert (= (or b!7693323 b!7693311 b!7693318) bm!709562))

(assert (=> d!2333352 m!8186816))

(assert (=> d!2333352 m!8186896))

(declare-fun m!8186914 () Bool)

(assert (=> b!7693316 m!8186914))

(assert (=> b!7693316 m!8186914))

(declare-fun m!8186916 () Bool)

(assert (=> b!7693316 m!8186916))

(assert (=> b!7693312 m!8186760))

(declare-fun m!8186918 () Bool)

(assert (=> b!7693315 m!8186918))

(assert (=> b!7693315 m!8186918))

(declare-fun m!8186920 () Bool)

(assert (=> b!7693315 m!8186920))

(assert (=> b!7693315 m!8186914))

(assert (=> b!7693315 m!8186920))

(assert (=> b!7693315 m!8186914))

(declare-fun m!8186922 () Bool)

(assert (=> b!7693315 m!8186922))

(assert (=> b!7693313 m!8186918))

(assert (=> bm!709562 m!8186816))

(assert (=> b!7693321 m!8186918))

(assert (=> b!7693314 m!8186914))

(assert (=> b!7693314 m!8186914))

(assert (=> b!7693314 m!8186916))

(assert (=> b!7693140 d!2333352))

(declare-fun d!2333354 () Bool)

(declare-fun nullableFct!3566 (Regex!20508) Bool)

(assert (=> d!2333354 (= (nullable!8997 (reg!20837 r!14126)) (nullableFct!3566 (reg!20837 r!14126)))))

(declare-fun bs!1956340 () Bool)

(assert (= bs!1956340 d!2333354))

(declare-fun m!8186924 () Bool)

(assert (=> bs!1956340 m!8186924))

(assert (=> b!7693140 d!2333354))

(declare-fun d!2333356 () Bool)

(declare-fun lt!2664094 () tuple2!69478)

(declare-fun dynLambda!29941 (Int tuple2!69478) Bool)

(assert (=> d!2333356 (dynLambda!29941 lambda!470388 lt!2664094)))

(declare-fun choose!59132 (Int) tuple2!69478)

(assert (=> d!2333356 (= lt!2664094 (choose!59132 lambda!470388))))

(assert (=> d!2333356 (Exists!4633 lambda!470388)))

(assert (=> d!2333356 (= (pickWitness!497 lambda!470388) lt!2664094)))

(declare-fun b_lambda!289163 () Bool)

(assert (=> (not b_lambda!289163) (not d!2333356)))

(declare-fun bs!1956341 () Bool)

(assert (= bs!1956341 d!2333356))

(declare-fun m!8186926 () Bool)

(assert (=> bs!1956341 m!8186926))

(declare-fun m!8186928 () Bool)

(assert (=> bs!1956341 m!8186928))

(assert (=> bs!1956341 m!8186788))

(assert (=> b!7693140 d!2333356))

(declare-fun bs!1956344 () Bool)

(declare-fun b!7693377 () Bool)

(assert (= bs!1956344 (and b!7693377 b!7693139)))

(declare-fun lambda!470414 () Int)

(assert (=> bs!1956344 (not (= lambda!470414 lambda!470388))))

(declare-fun bs!1956345 () Bool)

(assert (= bs!1956345 (and b!7693377 b!7693132)))

(assert (=> bs!1956345 (= (= (_2!38042 lt!2664030) s!9605) (= lambda!470414 lambda!470389))))

(declare-fun bs!1956346 () Bool)

(assert (= bs!1956346 (and b!7693377 d!2333350)))

(assert (=> bs!1956346 (not (= lambda!470414 lambda!470404))))

(assert (=> b!7693377 true))

(assert (=> b!7693377 true))

(declare-fun bs!1956350 () Bool)

(declare-fun b!7693373 () Bool)

(assert (= bs!1956350 (and b!7693373 b!7693139)))

(declare-fun lambda!470416 () Int)

(assert (=> bs!1956350 (not (= lambda!470416 lambda!470388))))

(declare-fun bs!1956351 () Bool)

(assert (= bs!1956351 (and b!7693373 b!7693132)))

(assert (=> bs!1956351 (not (= lambda!470416 lambda!470389))))

(declare-fun bs!1956352 () Bool)

(assert (= bs!1956352 (and b!7693373 d!2333350)))

(assert (=> bs!1956352 (not (= lambda!470416 lambda!470404))))

(declare-fun bs!1956353 () Bool)

(assert (= bs!1956353 (and b!7693373 b!7693377)))

(assert (=> bs!1956353 (not (= lambda!470416 lambda!470414))))

(assert (=> b!7693373 true))

(assert (=> b!7693373 true))

(declare-fun b!7693372 () Bool)

(declare-fun c!1417877 () Bool)

(assert (=> b!7693372 (= c!1417877 (is-Union!20508 r!14126))))

(declare-fun e!4566597 () Bool)

(declare-fun e!4566594 () Bool)

(assert (=> b!7693372 (= e!4566597 e!4566594)))

(declare-fun e!4566595 () Bool)

(declare-fun call!709579 () Bool)

(assert (=> b!7693373 (= e!4566595 call!709579)))

(declare-fun b!7693374 () Bool)

(assert (=> b!7693374 (= e!4566597 (= (_2!38042 lt!2664030) (Cons!73235 (c!1417834 r!14126) Nil!73235)))))

(declare-fun b!7693376 () Bool)

(declare-fun c!1417874 () Bool)

(assert (=> b!7693376 (= c!1417874 (is-ElementMatch!20508 r!14126))))

(declare-fun e!4566596 () Bool)

(assert (=> b!7693376 (= e!4566596 e!4566597)))

(declare-fun e!4566598 () Bool)

(assert (=> b!7693377 (= e!4566598 call!709579)))

(declare-fun bm!709573 () Bool)

(declare-fun call!709578 () Bool)

(assert (=> bm!709573 (= call!709578 (isEmpty!41878 (_2!38042 lt!2664030)))))

(declare-fun b!7693378 () Bool)

(declare-fun e!4566593 () Bool)

(assert (=> b!7693378 (= e!4566593 call!709578)))

(declare-fun b!7693379 () Bool)

(assert (=> b!7693379 (= e!4566593 e!4566596)))

(declare-fun res!3073113 () Bool)

(assert (=> b!7693379 (= res!3073113 (not (is-EmptyLang!20508 r!14126)))))

(assert (=> b!7693379 (=> (not res!3073113) (not e!4566596))))

(declare-fun b!7693380 () Bool)

(declare-fun res!3073111 () Bool)

(assert (=> b!7693380 (=> res!3073111 e!4566598)))

(assert (=> b!7693380 (= res!3073111 call!709578)))

(assert (=> b!7693380 (= e!4566595 e!4566598)))

(declare-fun b!7693381 () Bool)

(declare-fun e!4566599 () Bool)

(assert (=> b!7693381 (= e!4566599 (matchRSpec!4609 (regTwo!41529 r!14126) (_2!38042 lt!2664030)))))

(declare-fun b!7693375 () Bool)

(assert (=> b!7693375 (= e!4566594 e!4566595)))

(declare-fun c!1417876 () Bool)

(assert (=> b!7693375 (= c!1417876 (is-Star!20508 r!14126))))

(declare-fun d!2333358 () Bool)

(declare-fun c!1417875 () Bool)

(assert (=> d!2333358 (= c!1417875 (is-EmptyExpr!20508 r!14126))))

(assert (=> d!2333358 (= (matchRSpec!4609 r!14126 (_2!38042 lt!2664030)) e!4566593)))

(declare-fun bm!709574 () Bool)

(assert (=> bm!709574 (= call!709579 (Exists!4633 (ite c!1417876 lambda!470414 lambda!470416)))))

(declare-fun b!7693382 () Bool)

(assert (=> b!7693382 (= e!4566594 e!4566599)))

(declare-fun res!3073112 () Bool)

(assert (=> b!7693382 (= res!3073112 (matchRSpec!4609 (regOne!41529 r!14126) (_2!38042 lt!2664030)))))

(assert (=> b!7693382 (=> res!3073112 e!4566599)))

(assert (= (and d!2333358 c!1417875) b!7693378))

(assert (= (and d!2333358 (not c!1417875)) b!7693379))

(assert (= (and b!7693379 res!3073113) b!7693376))

(assert (= (and b!7693376 c!1417874) b!7693374))

(assert (= (and b!7693376 (not c!1417874)) b!7693372))

(assert (= (and b!7693372 c!1417877) b!7693382))

(assert (= (and b!7693372 (not c!1417877)) b!7693375))

(assert (= (and b!7693382 (not res!3073112)) b!7693381))

(assert (= (and b!7693375 c!1417876) b!7693380))

(assert (= (and b!7693375 (not c!1417876)) b!7693373))

(assert (= (and b!7693380 (not res!3073111)) b!7693377))

(assert (= (or b!7693377 b!7693373) bm!709574))

(assert (= (or b!7693378 b!7693380) bm!709573))

(declare-fun m!8186930 () Bool)

(assert (=> bm!709573 m!8186930))

(declare-fun m!8186932 () Bool)

(assert (=> b!7693381 m!8186932))

(declare-fun m!8186934 () Bool)

(assert (=> bm!709574 m!8186934))

(declare-fun m!8186936 () Bool)

(assert (=> b!7693382 m!8186936))

(assert (=> b!7693140 d!2333358))

(declare-fun bs!1956354 () Bool)

(declare-fun b!7693388 () Bool)

(assert (= bs!1956354 (and b!7693388 b!7693139)))

(declare-fun lambda!470417 () Int)

(assert (=> bs!1956354 (not (= lambda!470417 lambda!470388))))

(declare-fun bs!1956355 () Bool)

(assert (= bs!1956355 (and b!7693388 b!7693377)))

(assert (=> bs!1956355 (= (and (= (_1!38042 lt!2664030) (_2!38042 lt!2664030)) (= (reg!20837 (reg!20837 r!14126)) (reg!20837 r!14126)) (= (reg!20837 r!14126) r!14126)) (= lambda!470417 lambda!470414))))

(declare-fun bs!1956356 () Bool)

(assert (= bs!1956356 (and b!7693388 d!2333350)))

(assert (=> bs!1956356 (not (= lambda!470417 lambda!470404))))

(declare-fun bs!1956357 () Bool)

(assert (= bs!1956357 (and b!7693388 b!7693373)))

(assert (=> bs!1956357 (not (= lambda!470417 lambda!470416))))

(declare-fun bs!1956358 () Bool)

(assert (= bs!1956358 (and b!7693388 b!7693132)))

(assert (=> bs!1956358 (= (and (= (_1!38042 lt!2664030) s!9605) (= (reg!20837 (reg!20837 r!14126)) (reg!20837 r!14126)) (= (reg!20837 r!14126) r!14126)) (= lambda!470417 lambda!470389))))

(assert (=> b!7693388 true))

(assert (=> b!7693388 true))

(declare-fun bs!1956359 () Bool)

(declare-fun b!7693384 () Bool)

(assert (= bs!1956359 (and b!7693384 b!7693139)))

(declare-fun lambda!470418 () Int)

(assert (=> bs!1956359 (not (= lambda!470418 lambda!470388))))

(declare-fun bs!1956360 () Bool)

(assert (= bs!1956360 (and b!7693384 b!7693377)))

(assert (=> bs!1956360 (not (= lambda!470418 lambda!470414))))

(declare-fun bs!1956361 () Bool)

(assert (= bs!1956361 (and b!7693384 d!2333350)))

(assert (=> bs!1956361 (not (= lambda!470418 lambda!470404))))

(declare-fun bs!1956362 () Bool)

(assert (= bs!1956362 (and b!7693384 b!7693373)))

(assert (=> bs!1956362 (= (and (= (_1!38042 lt!2664030) (_2!38042 lt!2664030)) (= (regOne!41528 (reg!20837 r!14126)) (regOne!41528 r!14126)) (= (regTwo!41528 (reg!20837 r!14126)) (regTwo!41528 r!14126))) (= lambda!470418 lambda!470416))))

(declare-fun bs!1956363 () Bool)

(assert (= bs!1956363 (and b!7693384 b!7693388)))

(assert (=> bs!1956363 (not (= lambda!470418 lambda!470417))))

(declare-fun bs!1956364 () Bool)

(assert (= bs!1956364 (and b!7693384 b!7693132)))

(assert (=> bs!1956364 (not (= lambda!470418 lambda!470389))))

(assert (=> b!7693384 true))

(assert (=> b!7693384 true))

(declare-fun b!7693383 () Bool)

(declare-fun c!1417881 () Bool)

(assert (=> b!7693383 (= c!1417881 (is-Union!20508 (reg!20837 r!14126)))))

(declare-fun e!4566604 () Bool)

(declare-fun e!4566601 () Bool)

(assert (=> b!7693383 (= e!4566604 e!4566601)))

(declare-fun e!4566602 () Bool)

(declare-fun call!709581 () Bool)

(assert (=> b!7693384 (= e!4566602 call!709581)))

(declare-fun b!7693385 () Bool)

(assert (=> b!7693385 (= e!4566604 (= (_1!38042 lt!2664030) (Cons!73235 (c!1417834 (reg!20837 r!14126)) Nil!73235)))))

(declare-fun b!7693387 () Bool)

(declare-fun c!1417878 () Bool)

(assert (=> b!7693387 (= c!1417878 (is-ElementMatch!20508 (reg!20837 r!14126)))))

(declare-fun e!4566603 () Bool)

(assert (=> b!7693387 (= e!4566603 e!4566604)))

(declare-fun e!4566605 () Bool)

(assert (=> b!7693388 (= e!4566605 call!709581)))

(declare-fun bm!709575 () Bool)

(declare-fun call!709580 () Bool)

(assert (=> bm!709575 (= call!709580 (isEmpty!41878 (_1!38042 lt!2664030)))))

(declare-fun b!7693389 () Bool)

(declare-fun e!4566600 () Bool)

(assert (=> b!7693389 (= e!4566600 call!709580)))

(declare-fun b!7693390 () Bool)

(assert (=> b!7693390 (= e!4566600 e!4566603)))

(declare-fun res!3073116 () Bool)

(assert (=> b!7693390 (= res!3073116 (not (is-EmptyLang!20508 (reg!20837 r!14126))))))

(assert (=> b!7693390 (=> (not res!3073116) (not e!4566603))))

(declare-fun b!7693391 () Bool)

(declare-fun res!3073114 () Bool)

(assert (=> b!7693391 (=> res!3073114 e!4566605)))

(assert (=> b!7693391 (= res!3073114 call!709580)))

(assert (=> b!7693391 (= e!4566602 e!4566605)))

(declare-fun b!7693392 () Bool)

(declare-fun e!4566606 () Bool)

(assert (=> b!7693392 (= e!4566606 (matchRSpec!4609 (regTwo!41529 (reg!20837 r!14126)) (_1!38042 lt!2664030)))))

(declare-fun b!7693386 () Bool)

(assert (=> b!7693386 (= e!4566601 e!4566602)))

(declare-fun c!1417880 () Bool)

(assert (=> b!7693386 (= c!1417880 (is-Star!20508 (reg!20837 r!14126)))))

(declare-fun d!2333360 () Bool)

(declare-fun c!1417879 () Bool)

(assert (=> d!2333360 (= c!1417879 (is-EmptyExpr!20508 (reg!20837 r!14126)))))

(assert (=> d!2333360 (= (matchRSpec!4609 (reg!20837 r!14126) (_1!38042 lt!2664030)) e!4566600)))

(declare-fun bm!709576 () Bool)

(assert (=> bm!709576 (= call!709581 (Exists!4633 (ite c!1417880 lambda!470417 lambda!470418)))))

(declare-fun b!7693393 () Bool)

(assert (=> b!7693393 (= e!4566601 e!4566606)))

(declare-fun res!3073115 () Bool)

(assert (=> b!7693393 (= res!3073115 (matchRSpec!4609 (regOne!41529 (reg!20837 r!14126)) (_1!38042 lt!2664030)))))

(assert (=> b!7693393 (=> res!3073115 e!4566606)))

(assert (= (and d!2333360 c!1417879) b!7693389))

(assert (= (and d!2333360 (not c!1417879)) b!7693390))

(assert (= (and b!7693390 res!3073116) b!7693387))

(assert (= (and b!7693387 c!1417878) b!7693385))

(assert (= (and b!7693387 (not c!1417878)) b!7693383))

(assert (= (and b!7693383 c!1417881) b!7693393))

(assert (= (and b!7693383 (not c!1417881)) b!7693386))

(assert (= (and b!7693393 (not res!3073115)) b!7693392))

(assert (= (and b!7693386 c!1417880) b!7693391))

(assert (= (and b!7693386 (not c!1417880)) b!7693384))

(assert (= (and b!7693391 (not res!3073114)) b!7693388))

(assert (= (or b!7693388 b!7693384) bm!709576))

(assert (= (or b!7693389 b!7693391) bm!709575))

(assert (=> bm!709575 m!8186816))

(declare-fun m!8186946 () Bool)

(assert (=> b!7693392 m!8186946))

(declare-fun m!8186948 () Bool)

(assert (=> bm!709576 m!8186948))

(declare-fun m!8186950 () Bool)

(assert (=> b!7693393 m!8186950))

(assert (=> b!7693140 d!2333360))

(declare-fun d!2333370 () Bool)

(assert (=> d!2333370 (= (matchR!10004 r!14126 (_2!38042 lt!2664030)) (matchRSpec!4609 r!14126 (_2!38042 lt!2664030)))))

(declare-fun lt!2664097 () Unit!168044)

(declare-fun choose!59133 (Regex!20508 List!73359) Unit!168044)

(assert (=> d!2333370 (= lt!2664097 (choose!59133 r!14126 (_2!38042 lt!2664030)))))

(assert (=> d!2333370 (validRegex!10926 r!14126)))

(assert (=> d!2333370 (= (mainMatchTheorem!4587 r!14126 (_2!38042 lt!2664030)) lt!2664097)))

(declare-fun bs!1956367 () Bool)

(assert (= bs!1956367 d!2333370))

(assert (=> bs!1956367 m!8186766))

(assert (=> bs!1956367 m!8186772))

(declare-fun m!8186954 () Bool)

(assert (=> bs!1956367 m!8186954))

(assert (=> bs!1956367 m!8186814))

(assert (=> b!7693140 d!2333370))

(declare-fun bm!709577 () Bool)

(declare-fun call!709582 () Bool)

(assert (=> bm!709577 (= call!709582 (isEmpty!41878 (_2!38042 lt!2664030)))))

(declare-fun b!7693394 () Bool)

(declare-fun e!4566610 () Bool)

(declare-fun e!4566607 () Bool)

(assert (=> b!7693394 (= e!4566610 e!4566607)))

(declare-fun res!3073123 () Bool)

(assert (=> b!7693394 (=> res!3073123 e!4566607)))

(assert (=> b!7693394 (= res!3073123 call!709582)))

(declare-fun b!7693395 () Bool)

(declare-fun e!4566609 () Bool)

(assert (=> b!7693395 (= e!4566609 (nullable!8997 r!14126))))

(declare-fun b!7693396 () Bool)

(assert (=> b!7693396 (= e!4566607 (not (= (head!15763 (_2!38042 lt!2664030)) (c!1417834 r!14126))))))

(declare-fun b!7693397 () Bool)

(declare-fun res!3073118 () Bool)

(assert (=> b!7693397 (=> res!3073118 e!4566607)))

(assert (=> b!7693397 (= res!3073118 (not (isEmpty!41878 (tail!15303 (_2!38042 lt!2664030)))))))

(declare-fun b!7693399 () Bool)

(declare-fun res!3073121 () Bool)

(declare-fun e!4566612 () Bool)

(assert (=> b!7693399 (=> (not res!3073121) (not e!4566612))))

(assert (=> b!7693399 (= res!3073121 (isEmpty!41878 (tail!15303 (_2!38042 lt!2664030))))))

(declare-fun b!7693400 () Bool)

(declare-fun e!4566611 () Bool)

(assert (=> b!7693400 (= e!4566611 e!4566610)))

(declare-fun res!3073124 () Bool)

(assert (=> b!7693400 (=> (not res!3073124) (not e!4566610))))

(declare-fun lt!2664098 () Bool)

(assert (=> b!7693400 (= res!3073124 (not lt!2664098))))

(declare-fun b!7693401 () Bool)

(declare-fun res!3073122 () Bool)

(assert (=> b!7693401 (=> (not res!3073122) (not e!4566612))))

(assert (=> b!7693401 (= res!3073122 (not call!709582))))

(declare-fun b!7693402 () Bool)

(declare-fun e!4566613 () Bool)

(declare-fun e!4566608 () Bool)

(assert (=> b!7693402 (= e!4566613 e!4566608)))

(declare-fun c!1417883 () Bool)

(assert (=> b!7693402 (= c!1417883 (is-EmptyLang!20508 r!14126))))

(declare-fun b!7693403 () Bool)

(declare-fun res!3073120 () Bool)

(assert (=> b!7693403 (=> res!3073120 e!4566611)))

(assert (=> b!7693403 (= res!3073120 (not (is-ElementMatch!20508 r!14126)))))

(assert (=> b!7693403 (= e!4566608 e!4566611)))

(declare-fun b!7693404 () Bool)

(assert (=> b!7693404 (= e!4566612 (= (head!15763 (_2!38042 lt!2664030)) (c!1417834 r!14126)))))

(declare-fun b!7693405 () Bool)

(assert (=> b!7693405 (= e!4566608 (not lt!2664098))))

(declare-fun b!7693406 () Bool)

(assert (=> b!7693406 (= e!4566613 (= lt!2664098 call!709582))))

(declare-fun b!7693407 () Bool)

(declare-fun res!3073119 () Bool)

(assert (=> b!7693407 (=> res!3073119 e!4566611)))

(assert (=> b!7693407 (= res!3073119 e!4566612)))

(declare-fun res!3073117 () Bool)

(assert (=> b!7693407 (=> (not res!3073117) (not e!4566612))))

(assert (=> b!7693407 (= res!3073117 lt!2664098)))

(declare-fun b!7693398 () Bool)

(assert (=> b!7693398 (= e!4566609 (matchR!10004 (derivativeStep!5963 r!14126 (head!15763 (_2!38042 lt!2664030))) (tail!15303 (_2!38042 lt!2664030))))))

(declare-fun d!2333374 () Bool)

(assert (=> d!2333374 e!4566613))

(declare-fun c!1417884 () Bool)

(assert (=> d!2333374 (= c!1417884 (is-EmptyExpr!20508 r!14126))))

(assert (=> d!2333374 (= lt!2664098 e!4566609)))

(declare-fun c!1417882 () Bool)

(assert (=> d!2333374 (= c!1417882 (isEmpty!41878 (_2!38042 lt!2664030)))))

(assert (=> d!2333374 (validRegex!10926 r!14126)))

(assert (=> d!2333374 (= (matchR!10004 r!14126 (_2!38042 lt!2664030)) lt!2664098)))

(assert (= (and d!2333374 c!1417882) b!7693395))

(assert (= (and d!2333374 (not c!1417882)) b!7693398))

(assert (= (and d!2333374 c!1417884) b!7693406))

(assert (= (and d!2333374 (not c!1417884)) b!7693402))

(assert (= (and b!7693402 c!1417883) b!7693405))

(assert (= (and b!7693402 (not c!1417883)) b!7693403))

(assert (= (and b!7693403 (not res!3073120)) b!7693407))

(assert (= (and b!7693407 res!3073117) b!7693401))

(assert (= (and b!7693401 res!3073122) b!7693399))

(assert (= (and b!7693399 res!3073121) b!7693404))

(assert (= (and b!7693407 (not res!3073119)) b!7693400))

(assert (= (and b!7693400 res!3073124) b!7693394))

(assert (= (and b!7693394 (not res!3073123)) b!7693397))

(assert (= (and b!7693397 (not res!3073118)) b!7693396))

(assert (= (or b!7693406 b!7693394 b!7693401) bm!709577))

(assert (=> d!2333374 m!8186930))

(assert (=> d!2333374 m!8186814))

(declare-fun m!8186956 () Bool)

(assert (=> b!7693399 m!8186956))

(assert (=> b!7693399 m!8186956))

(declare-fun m!8186958 () Bool)

(assert (=> b!7693399 m!8186958))

(declare-fun m!8186960 () Bool)

(assert (=> b!7693395 m!8186960))

(declare-fun m!8186962 () Bool)

(assert (=> b!7693398 m!8186962))

(assert (=> b!7693398 m!8186962))

(declare-fun m!8186964 () Bool)

(assert (=> b!7693398 m!8186964))

(assert (=> b!7693398 m!8186956))

(assert (=> b!7693398 m!8186964))

(assert (=> b!7693398 m!8186956))

(declare-fun m!8186966 () Bool)

(assert (=> b!7693398 m!8186966))

(assert (=> b!7693396 m!8186962))

(assert (=> bm!709577 m!8186930))

(assert (=> b!7693404 m!8186962))

(assert (=> b!7693397 m!8186956))

(assert (=> b!7693397 m!8186956))

(assert (=> b!7693397 m!8186958))

(assert (=> b!7693140 d!2333374))

(declare-fun d!2333376 () Bool)

(assert (=> d!2333376 (= (matchR!10004 (reg!20837 r!14126) (_1!38042 lt!2664030)) (matchRSpec!4609 (reg!20837 r!14126) (_1!38042 lt!2664030)))))

(declare-fun lt!2664099 () Unit!168044)

(assert (=> d!2333376 (= lt!2664099 (choose!59133 (reg!20837 r!14126) (_1!38042 lt!2664030)))))

(assert (=> d!2333376 (validRegex!10926 (reg!20837 r!14126))))

(assert (=> d!2333376 (= (mainMatchTheorem!4587 (reg!20837 r!14126) (_1!38042 lt!2664030)) lt!2664099)))

(declare-fun bs!1956368 () Bool)

(assert (= bs!1956368 d!2333376))

(assert (=> bs!1956368 m!8186764))

(assert (=> bs!1956368 m!8186770))

(declare-fun m!8186968 () Bool)

(assert (=> bs!1956368 m!8186968))

(assert (=> bs!1956368 m!8186896))

(assert (=> b!7693140 d!2333376))

(declare-fun bs!1956369 () Bool)

(declare-fun b!7693413 () Bool)

(assert (= bs!1956369 (and b!7693413 b!7693139)))

(declare-fun lambda!470419 () Int)

(assert (=> bs!1956369 (not (= lambda!470419 lambda!470388))))

(declare-fun bs!1956370 () Bool)

(assert (= bs!1956370 (and b!7693413 b!7693377)))

(assert (=> bs!1956370 (= (= s!9605 (_2!38042 lt!2664030)) (= lambda!470419 lambda!470414))))

(declare-fun bs!1956371 () Bool)

(assert (= bs!1956371 (and b!7693413 d!2333350)))

(assert (=> bs!1956371 (not (= lambda!470419 lambda!470404))))

(declare-fun bs!1956372 () Bool)

(assert (= bs!1956372 (and b!7693413 b!7693373)))

(assert (=> bs!1956372 (not (= lambda!470419 lambda!470416))))

(declare-fun bs!1956373 () Bool)

(assert (= bs!1956373 (and b!7693413 b!7693132)))

(assert (=> bs!1956373 (= lambda!470419 lambda!470389)))

(declare-fun bs!1956374 () Bool)

(assert (= bs!1956374 (and b!7693413 b!7693384)))

(assert (=> bs!1956374 (not (= lambda!470419 lambda!470418))))

(declare-fun bs!1956375 () Bool)

(assert (= bs!1956375 (and b!7693413 b!7693388)))

(assert (=> bs!1956375 (= (and (= s!9605 (_1!38042 lt!2664030)) (= (reg!20837 r!14126) (reg!20837 (reg!20837 r!14126))) (= r!14126 (reg!20837 r!14126))) (= lambda!470419 lambda!470417))))

(assert (=> b!7693413 true))

(assert (=> b!7693413 true))

(declare-fun bs!1956376 () Bool)

(declare-fun b!7693409 () Bool)

(assert (= bs!1956376 (and b!7693409 b!7693139)))

(declare-fun lambda!470420 () Int)

(assert (=> bs!1956376 (not (= lambda!470420 lambda!470388))))

(declare-fun bs!1956377 () Bool)

(assert (= bs!1956377 (and b!7693409 b!7693377)))

(assert (=> bs!1956377 (not (= lambda!470420 lambda!470414))))

(declare-fun bs!1956378 () Bool)

(assert (= bs!1956378 (and b!7693409 d!2333350)))

(assert (=> bs!1956378 (not (= lambda!470420 lambda!470404))))

(declare-fun bs!1956379 () Bool)

(assert (= bs!1956379 (and b!7693409 b!7693373)))

(assert (=> bs!1956379 (= (= s!9605 (_2!38042 lt!2664030)) (= lambda!470420 lambda!470416))))

(declare-fun bs!1956380 () Bool)

(assert (= bs!1956380 (and b!7693409 b!7693413)))

(assert (=> bs!1956380 (not (= lambda!470420 lambda!470419))))

(declare-fun bs!1956381 () Bool)

(assert (= bs!1956381 (and b!7693409 b!7693132)))

(assert (=> bs!1956381 (not (= lambda!470420 lambda!470389))))

(declare-fun bs!1956382 () Bool)

(assert (= bs!1956382 (and b!7693409 b!7693384)))

(assert (=> bs!1956382 (= (and (= s!9605 (_1!38042 lt!2664030)) (= (regOne!41528 r!14126) (regOne!41528 (reg!20837 r!14126))) (= (regTwo!41528 r!14126) (regTwo!41528 (reg!20837 r!14126)))) (= lambda!470420 lambda!470418))))

(declare-fun bs!1956383 () Bool)

(assert (= bs!1956383 (and b!7693409 b!7693388)))

(assert (=> bs!1956383 (not (= lambda!470420 lambda!470417))))

(assert (=> b!7693409 true))

(assert (=> b!7693409 true))

(declare-fun b!7693408 () Bool)

(declare-fun c!1417888 () Bool)

(assert (=> b!7693408 (= c!1417888 (is-Union!20508 r!14126))))

(declare-fun e!4566618 () Bool)

(declare-fun e!4566615 () Bool)

(assert (=> b!7693408 (= e!4566618 e!4566615)))

(declare-fun e!4566616 () Bool)

(declare-fun call!709584 () Bool)

(assert (=> b!7693409 (= e!4566616 call!709584)))

(declare-fun b!7693410 () Bool)

(assert (=> b!7693410 (= e!4566618 (= s!9605 (Cons!73235 (c!1417834 r!14126) Nil!73235)))))

(declare-fun b!7693412 () Bool)

(declare-fun c!1417885 () Bool)

(assert (=> b!7693412 (= c!1417885 (is-ElementMatch!20508 r!14126))))

(declare-fun e!4566617 () Bool)

(assert (=> b!7693412 (= e!4566617 e!4566618)))

(declare-fun e!4566619 () Bool)

(assert (=> b!7693413 (= e!4566619 call!709584)))

(declare-fun bm!709578 () Bool)

(declare-fun call!709583 () Bool)

(assert (=> bm!709578 (= call!709583 (isEmpty!41878 s!9605))))

(declare-fun b!7693414 () Bool)

(declare-fun e!4566614 () Bool)

(assert (=> b!7693414 (= e!4566614 call!709583)))

(declare-fun b!7693415 () Bool)

(assert (=> b!7693415 (= e!4566614 e!4566617)))

(declare-fun res!3073127 () Bool)

(assert (=> b!7693415 (= res!3073127 (not (is-EmptyLang!20508 r!14126)))))

(assert (=> b!7693415 (=> (not res!3073127) (not e!4566617))))

(declare-fun b!7693416 () Bool)

(declare-fun res!3073125 () Bool)

(assert (=> b!7693416 (=> res!3073125 e!4566619)))

(assert (=> b!7693416 (= res!3073125 call!709583)))

(assert (=> b!7693416 (= e!4566616 e!4566619)))

(declare-fun b!7693417 () Bool)

(declare-fun e!4566620 () Bool)

(assert (=> b!7693417 (= e!4566620 (matchRSpec!4609 (regTwo!41529 r!14126) s!9605))))

(declare-fun b!7693411 () Bool)

(assert (=> b!7693411 (= e!4566615 e!4566616)))

(declare-fun c!1417887 () Bool)

(assert (=> b!7693411 (= c!1417887 (is-Star!20508 r!14126))))

(declare-fun d!2333378 () Bool)

(declare-fun c!1417886 () Bool)

(assert (=> d!2333378 (= c!1417886 (is-EmptyExpr!20508 r!14126))))

(assert (=> d!2333378 (= (matchRSpec!4609 r!14126 s!9605) e!4566614)))

(declare-fun bm!709579 () Bool)

(assert (=> bm!709579 (= call!709584 (Exists!4633 (ite c!1417887 lambda!470419 lambda!470420)))))

(declare-fun b!7693418 () Bool)

(assert (=> b!7693418 (= e!4566615 e!4566620)))

(declare-fun res!3073126 () Bool)

(assert (=> b!7693418 (= res!3073126 (matchRSpec!4609 (regOne!41529 r!14126) s!9605))))

(assert (=> b!7693418 (=> res!3073126 e!4566620)))

(assert (= (and d!2333378 c!1417886) b!7693414))

(assert (= (and d!2333378 (not c!1417886)) b!7693415))

(assert (= (and b!7693415 res!3073127) b!7693412))

(assert (= (and b!7693412 c!1417885) b!7693410))

(assert (= (and b!7693412 (not c!1417885)) b!7693408))

(assert (= (and b!7693408 c!1417888) b!7693418))

(assert (= (and b!7693408 (not c!1417888)) b!7693411))

(assert (= (and b!7693418 (not res!3073126)) b!7693417))

(assert (= (and b!7693411 c!1417887) b!7693416))

(assert (= (and b!7693411 (not c!1417887)) b!7693409))

(assert (= (and b!7693416 (not res!3073125)) b!7693413))

(assert (= (or b!7693413 b!7693409) bm!709579))

(assert (= (or b!7693414 b!7693416) bm!709578))

(assert (=> bm!709578 m!8186796))

(declare-fun m!8186970 () Bool)

(assert (=> b!7693417 m!8186970))

(declare-fun m!8186972 () Bool)

(assert (=> bm!709579 m!8186972))

(declare-fun m!8186974 () Bool)

(assert (=> b!7693418 m!8186974))

(assert (=> b!7693128 d!2333378))

(declare-fun d!2333380 () Bool)

(assert (=> d!2333380 (= (Exists!4633 lambda!470389) (choose!59130 lambda!470389))))

(declare-fun bs!1956384 () Bool)

(assert (= bs!1956384 d!2333380))

(declare-fun m!8186976 () Bool)

(assert (=> bs!1956384 m!8186976))

(assert (=> b!7693132 d!2333380))

(declare-fun d!2333382 () Bool)

(assert (=> d!2333382 (Exists!4633 lambda!470389)))

(declare-fun lt!2664102 () Unit!168044)

(declare-fun choose!59134 (tuple2!69478 Int) Unit!168044)

(assert (=> d!2333382 (= lt!2664102 (choose!59134 lt!2664030 lambda!470389))))

(assert (=> d!2333382 (dynLambda!29941 lambda!470389 lt!2664030)))

(assert (=> d!2333382 (= (ExistsThe!57 lt!2664030 lambda!470389) lt!2664102)))

(declare-fun b_lambda!289165 () Bool)

(assert (=> (not b_lambda!289165) (not d!2333382)))

(declare-fun bs!1956385 () Bool)

(assert (= bs!1956385 d!2333382))

(assert (=> bs!1956385 m!8186774))

(declare-fun m!8186978 () Bool)

(assert (=> bs!1956385 m!8186978))

(declare-fun m!8186980 () Bool)

(assert (=> bs!1956385 m!8186980))

(assert (=> b!7693132 d!2333382))

(declare-fun b!7693437 () Bool)

(declare-fun e!4566635 () Bool)

(declare-fun call!709592 () Bool)

(assert (=> b!7693437 (= e!4566635 call!709592)))

(declare-fun b!7693438 () Bool)

(declare-fun res!3073138 () Bool)

(declare-fun e!4566638 () Bool)

(assert (=> b!7693438 (=> res!3073138 e!4566638)))

(assert (=> b!7693438 (= res!3073138 (not (is-Concat!29353 r!14126)))))

(declare-fun e!4566641 () Bool)

(assert (=> b!7693438 (= e!4566641 e!4566638)))

(declare-fun b!7693439 () Bool)

(declare-fun e!4566636 () Bool)

(assert (=> b!7693439 (= e!4566636 e!4566641)))

(declare-fun c!1417893 () Bool)

(assert (=> b!7693439 (= c!1417893 (is-Union!20508 r!14126))))

(declare-fun d!2333384 () Bool)

(declare-fun res!3073142 () Bool)

(declare-fun e!4566639 () Bool)

(assert (=> d!2333384 (=> res!3073142 e!4566639)))

(assert (=> d!2333384 (= res!3073142 (is-ElementMatch!20508 r!14126))))

(assert (=> d!2333384 (= (validRegex!10926 r!14126) e!4566639)))

(declare-fun b!7693440 () Bool)

(assert (=> b!7693440 (= e!4566639 e!4566636)))

(declare-fun c!1417894 () Bool)

(assert (=> b!7693440 (= c!1417894 (is-Star!20508 r!14126))))

(declare-fun b!7693441 () Bool)

(declare-fun res!3073140 () Bool)

(declare-fun e!4566640 () Bool)

(assert (=> b!7693441 (=> (not res!3073140) (not e!4566640))))

(declare-fun call!709591 () Bool)

(assert (=> b!7693441 (= res!3073140 call!709591)))

(assert (=> b!7693441 (= e!4566641 e!4566640)))

(declare-fun bm!709586 () Bool)

(declare-fun call!709593 () Bool)

(assert (=> bm!709586 (= call!709593 (validRegex!10926 (ite c!1417893 (regTwo!41529 r!14126) (regTwo!41528 r!14126))))))

(declare-fun bm!709587 () Bool)

(assert (=> bm!709587 (= call!709592 (validRegex!10926 (ite c!1417894 (reg!20837 r!14126) (ite c!1417893 (regOne!41529 r!14126) (regOne!41528 r!14126)))))))

(declare-fun b!7693442 () Bool)

(declare-fun e!4566637 () Bool)

(assert (=> b!7693442 (= e!4566638 e!4566637)))

(declare-fun res!3073141 () Bool)

(assert (=> b!7693442 (=> (not res!3073141) (not e!4566637))))

(assert (=> b!7693442 (= res!3073141 call!709591)))

(declare-fun b!7693443 () Bool)

(assert (=> b!7693443 (= e!4566636 e!4566635)))

(declare-fun res!3073139 () Bool)

(assert (=> b!7693443 (= res!3073139 (not (nullable!8997 (reg!20837 r!14126))))))

(assert (=> b!7693443 (=> (not res!3073139) (not e!4566635))))

(declare-fun bm!709588 () Bool)

(assert (=> bm!709588 (= call!709591 call!709592)))

(declare-fun b!7693444 () Bool)

(assert (=> b!7693444 (= e!4566637 call!709593)))

(declare-fun b!7693445 () Bool)

(assert (=> b!7693445 (= e!4566640 call!709593)))

(assert (= (and d!2333384 (not res!3073142)) b!7693440))

(assert (= (and b!7693440 c!1417894) b!7693443))

(assert (= (and b!7693440 (not c!1417894)) b!7693439))

(assert (= (and b!7693443 res!3073139) b!7693437))

(assert (= (and b!7693439 c!1417893) b!7693441))

(assert (= (and b!7693439 (not c!1417893)) b!7693438))

(assert (= (and b!7693441 res!3073140) b!7693445))

(assert (= (and b!7693438 (not res!3073138)) b!7693442))

(assert (= (and b!7693442 res!3073141) b!7693444))

(assert (= (or b!7693441 b!7693442) bm!709588))

(assert (= (or b!7693445 b!7693444) bm!709586))

(assert (= (or b!7693437 bm!709588) bm!709587))

(declare-fun m!8186982 () Bool)

(assert (=> bm!709586 m!8186982))

(declare-fun m!8186984 () Bool)

(assert (=> bm!709587 m!8186984))

(assert (=> b!7693443 m!8186760))

(assert (=> start!736710 d!2333384))

(declare-fun d!2333386 () Bool)

(assert (=> d!2333386 (= (isEmpty!41878 s!9605) (is-Nil!73235 s!9605))))

(assert (=> b!7693135 d!2333386))

(declare-fun d!2333388 () Bool)

(assert (=> d!2333388 (= (isEmpty!41878 (_1!38042 lt!2664030)) (is-Nil!73235 (_1!38042 lt!2664030)))))

(assert (=> b!7693130 d!2333388))

(declare-fun bm!709589 () Bool)

(declare-fun call!709594 () Bool)

(assert (=> bm!709589 (= call!709594 (isEmpty!41878 (_1!38042 lt!2664020)))))

(declare-fun b!7693446 () Bool)

(declare-fun e!4566645 () Bool)

(declare-fun e!4566642 () Bool)

(assert (=> b!7693446 (= e!4566645 e!4566642)))

(declare-fun res!3073149 () Bool)

(assert (=> b!7693446 (=> res!3073149 e!4566642)))

(assert (=> b!7693446 (= res!3073149 call!709594)))

(declare-fun b!7693447 () Bool)

(declare-fun e!4566644 () Bool)

(assert (=> b!7693447 (= e!4566644 (nullable!8997 (reg!20837 r!14126)))))

(declare-fun b!7693448 () Bool)

(assert (=> b!7693448 (= e!4566642 (not (= (head!15763 (_1!38042 lt!2664020)) (c!1417834 (reg!20837 r!14126)))))))

(declare-fun b!7693449 () Bool)

(declare-fun res!3073144 () Bool)

(assert (=> b!7693449 (=> res!3073144 e!4566642)))

(assert (=> b!7693449 (= res!3073144 (not (isEmpty!41878 (tail!15303 (_1!38042 lt!2664020)))))))

(declare-fun b!7693451 () Bool)

(declare-fun res!3073147 () Bool)

(declare-fun e!4566647 () Bool)

(assert (=> b!7693451 (=> (not res!3073147) (not e!4566647))))

(assert (=> b!7693451 (= res!3073147 (isEmpty!41878 (tail!15303 (_1!38042 lt!2664020))))))

(declare-fun b!7693452 () Bool)

(declare-fun e!4566646 () Bool)

(assert (=> b!7693452 (= e!4566646 e!4566645)))

(declare-fun res!3073150 () Bool)

(assert (=> b!7693452 (=> (not res!3073150) (not e!4566645))))

(declare-fun lt!2664103 () Bool)

(assert (=> b!7693452 (= res!3073150 (not lt!2664103))))

(declare-fun b!7693453 () Bool)

(declare-fun res!3073148 () Bool)

(assert (=> b!7693453 (=> (not res!3073148) (not e!4566647))))

(assert (=> b!7693453 (= res!3073148 (not call!709594))))

(declare-fun b!7693454 () Bool)

(declare-fun e!4566648 () Bool)

(declare-fun e!4566643 () Bool)

(assert (=> b!7693454 (= e!4566648 e!4566643)))

(declare-fun c!1417896 () Bool)

(assert (=> b!7693454 (= c!1417896 (is-EmptyLang!20508 (reg!20837 r!14126)))))

(declare-fun b!7693455 () Bool)

(declare-fun res!3073146 () Bool)

(assert (=> b!7693455 (=> res!3073146 e!4566646)))

(assert (=> b!7693455 (= res!3073146 (not (is-ElementMatch!20508 (reg!20837 r!14126))))))

(assert (=> b!7693455 (= e!4566643 e!4566646)))

(declare-fun b!7693456 () Bool)

(assert (=> b!7693456 (= e!4566647 (= (head!15763 (_1!38042 lt!2664020)) (c!1417834 (reg!20837 r!14126))))))

(declare-fun b!7693457 () Bool)

(assert (=> b!7693457 (= e!4566643 (not lt!2664103))))

(declare-fun b!7693458 () Bool)

(assert (=> b!7693458 (= e!4566648 (= lt!2664103 call!709594))))

(declare-fun b!7693459 () Bool)

(declare-fun res!3073145 () Bool)

(assert (=> b!7693459 (=> res!3073145 e!4566646)))

(assert (=> b!7693459 (= res!3073145 e!4566647)))

(declare-fun res!3073143 () Bool)

(assert (=> b!7693459 (=> (not res!3073143) (not e!4566647))))

(assert (=> b!7693459 (= res!3073143 lt!2664103)))

(declare-fun b!7693450 () Bool)

(assert (=> b!7693450 (= e!4566644 (matchR!10004 (derivativeStep!5963 (reg!20837 r!14126) (head!15763 (_1!38042 lt!2664020))) (tail!15303 (_1!38042 lt!2664020))))))

(declare-fun d!2333390 () Bool)

(assert (=> d!2333390 e!4566648))

(declare-fun c!1417897 () Bool)

(assert (=> d!2333390 (= c!1417897 (is-EmptyExpr!20508 (reg!20837 r!14126)))))

(assert (=> d!2333390 (= lt!2664103 e!4566644)))

(declare-fun c!1417895 () Bool)

(assert (=> d!2333390 (= c!1417895 (isEmpty!41878 (_1!38042 lt!2664020)))))

(assert (=> d!2333390 (validRegex!10926 (reg!20837 r!14126))))

(assert (=> d!2333390 (= (matchR!10004 (reg!20837 r!14126) (_1!38042 lt!2664020)) lt!2664103)))

(assert (= (and d!2333390 c!1417895) b!7693447))

(assert (= (and d!2333390 (not c!1417895)) b!7693450))

(assert (= (and d!2333390 c!1417897) b!7693458))

(assert (= (and d!2333390 (not c!1417897)) b!7693454))

(assert (= (and b!7693454 c!1417896) b!7693457))

(assert (= (and b!7693454 (not c!1417896)) b!7693455))

(assert (= (and b!7693455 (not res!3073146)) b!7693459))

(assert (= (and b!7693459 res!3073143) b!7693453))

(assert (= (and b!7693453 res!3073148) b!7693451))

(assert (= (and b!7693451 res!3073147) b!7693456))

(assert (= (and b!7693459 (not res!3073145)) b!7693452))

(assert (= (and b!7693452 res!3073150) b!7693446))

(assert (= (and b!7693446 (not res!3073149)) b!7693449))

(assert (= (and b!7693449 (not res!3073144)) b!7693448))

(assert (= (or b!7693458 b!7693446 b!7693453) bm!709589))

(declare-fun m!8186986 () Bool)

(assert (=> d!2333390 m!8186986))

(assert (=> d!2333390 m!8186896))

(declare-fun m!8186988 () Bool)

(assert (=> b!7693451 m!8186988))

(assert (=> b!7693451 m!8186988))

(declare-fun m!8186990 () Bool)

(assert (=> b!7693451 m!8186990))

(assert (=> b!7693447 m!8186760))

(declare-fun m!8186992 () Bool)

(assert (=> b!7693450 m!8186992))

(assert (=> b!7693450 m!8186992))

(declare-fun m!8186994 () Bool)

(assert (=> b!7693450 m!8186994))

(assert (=> b!7693450 m!8186988))

(assert (=> b!7693450 m!8186994))

(assert (=> b!7693450 m!8186988))

(declare-fun m!8186996 () Bool)

(assert (=> b!7693450 m!8186996))

(assert (=> b!7693448 m!8186992))

(assert (=> bm!709589 m!8186986))

(assert (=> b!7693456 m!8186992))

(assert (=> b!7693449 m!8186988))

(assert (=> b!7693449 m!8186988))

(assert (=> b!7693449 m!8186990))

(assert (=> b!7693141 d!2333390))

(assert (=> b!7693141 d!2333342))

(declare-fun d!2333392 () Bool)

(assert (=> d!2333392 (= (matchR!10004 (reg!20837 r!14126) (_1!38042 lt!2664020)) (matchRSpec!4609 (reg!20837 r!14126) (_1!38042 lt!2664020)))))

(declare-fun lt!2664104 () Unit!168044)

(assert (=> d!2333392 (= lt!2664104 (choose!59133 (reg!20837 r!14126) (_1!38042 lt!2664020)))))

(assert (=> d!2333392 (validRegex!10926 (reg!20837 r!14126))))

(assert (=> d!2333392 (= (mainMatchTheorem!4587 (reg!20837 r!14126) (_1!38042 lt!2664020)) lt!2664104)))

(declare-fun bs!1956386 () Bool)

(assert (= bs!1956386 d!2333392))

(assert (=> bs!1956386 m!8186808))

(assert (=> bs!1956386 m!8186802))

(declare-fun m!8186998 () Bool)

(assert (=> bs!1956386 m!8186998))

(assert (=> bs!1956386 m!8186896))

(assert (=> b!7693141 d!2333392))

(declare-fun bs!1956387 () Bool)

(declare-fun b!7693465 () Bool)

(assert (= bs!1956387 (and b!7693465 b!7693139)))

(declare-fun lambda!470421 () Int)

(assert (=> bs!1956387 (not (= lambda!470421 lambda!470388))))

(declare-fun bs!1956388 () Bool)

(assert (= bs!1956388 (and b!7693465 b!7693377)))

(assert (=> bs!1956388 (= (= (_2!38042 lt!2664020) (_2!38042 lt!2664030)) (= lambda!470421 lambda!470414))))

(declare-fun bs!1956389 () Bool)

(assert (= bs!1956389 (and b!7693465 d!2333350)))

(assert (=> bs!1956389 (not (= lambda!470421 lambda!470404))))

(declare-fun bs!1956390 () Bool)

(assert (= bs!1956390 (and b!7693465 b!7693373)))

(assert (=> bs!1956390 (not (= lambda!470421 lambda!470416))))

(declare-fun bs!1956391 () Bool)

(assert (= bs!1956391 (and b!7693465 b!7693413)))

(assert (=> bs!1956391 (= (= (_2!38042 lt!2664020) s!9605) (= lambda!470421 lambda!470419))))

(declare-fun bs!1956392 () Bool)

(assert (= bs!1956392 (and b!7693465 b!7693409)))

(assert (=> bs!1956392 (not (= lambda!470421 lambda!470420))))

(declare-fun bs!1956393 () Bool)

(assert (= bs!1956393 (and b!7693465 b!7693132)))

(assert (=> bs!1956393 (= (= (_2!38042 lt!2664020) s!9605) (= lambda!470421 lambda!470389))))

(declare-fun bs!1956394 () Bool)

(assert (= bs!1956394 (and b!7693465 b!7693384)))

(assert (=> bs!1956394 (not (= lambda!470421 lambda!470418))))

(declare-fun bs!1956395 () Bool)

(assert (= bs!1956395 (and b!7693465 b!7693388)))

(assert (=> bs!1956395 (= (and (= (_2!38042 lt!2664020) (_1!38042 lt!2664030)) (= (reg!20837 r!14126) (reg!20837 (reg!20837 r!14126))) (= r!14126 (reg!20837 r!14126))) (= lambda!470421 lambda!470417))))

(assert (=> b!7693465 true))

(assert (=> b!7693465 true))

(declare-fun bs!1956396 () Bool)

(declare-fun b!7693461 () Bool)

(assert (= bs!1956396 (and b!7693461 b!7693139)))

(declare-fun lambda!470422 () Int)

(assert (=> bs!1956396 (not (= lambda!470422 lambda!470388))))

(declare-fun bs!1956397 () Bool)

(assert (= bs!1956397 (and b!7693461 b!7693377)))

(assert (=> bs!1956397 (not (= lambda!470422 lambda!470414))))

(declare-fun bs!1956398 () Bool)

(assert (= bs!1956398 (and b!7693461 d!2333350)))

(assert (=> bs!1956398 (not (= lambda!470422 lambda!470404))))

(declare-fun bs!1956399 () Bool)

(assert (= bs!1956399 (and b!7693461 b!7693373)))

(assert (=> bs!1956399 (= (= (_2!38042 lt!2664020) (_2!38042 lt!2664030)) (= lambda!470422 lambda!470416))))

(declare-fun bs!1956400 () Bool)

(assert (= bs!1956400 (and b!7693461 b!7693465)))

(assert (=> bs!1956400 (not (= lambda!470422 lambda!470421))))

(declare-fun bs!1956401 () Bool)

(assert (= bs!1956401 (and b!7693461 b!7693413)))

(assert (=> bs!1956401 (not (= lambda!470422 lambda!470419))))

(declare-fun bs!1956402 () Bool)

(assert (= bs!1956402 (and b!7693461 b!7693409)))

(assert (=> bs!1956402 (= (= (_2!38042 lt!2664020) s!9605) (= lambda!470422 lambda!470420))))

(declare-fun bs!1956403 () Bool)

(assert (= bs!1956403 (and b!7693461 b!7693132)))

(assert (=> bs!1956403 (not (= lambda!470422 lambda!470389))))

(declare-fun bs!1956404 () Bool)

(assert (= bs!1956404 (and b!7693461 b!7693384)))

(assert (=> bs!1956404 (= (and (= (_2!38042 lt!2664020) (_1!38042 lt!2664030)) (= (regOne!41528 r!14126) (regOne!41528 (reg!20837 r!14126))) (= (regTwo!41528 r!14126) (regTwo!41528 (reg!20837 r!14126)))) (= lambda!470422 lambda!470418))))

(declare-fun bs!1956405 () Bool)

(assert (= bs!1956405 (and b!7693461 b!7693388)))

(assert (=> bs!1956405 (not (= lambda!470422 lambda!470417))))

(assert (=> b!7693461 true))

(assert (=> b!7693461 true))

(declare-fun b!7693460 () Bool)

(declare-fun c!1417901 () Bool)

(assert (=> b!7693460 (= c!1417901 (is-Union!20508 r!14126))))

(declare-fun e!4566653 () Bool)

(declare-fun e!4566650 () Bool)

(assert (=> b!7693460 (= e!4566653 e!4566650)))

(declare-fun e!4566651 () Bool)

(declare-fun call!709596 () Bool)

(assert (=> b!7693461 (= e!4566651 call!709596)))

(declare-fun b!7693462 () Bool)

(assert (=> b!7693462 (= e!4566653 (= (_2!38042 lt!2664020) (Cons!73235 (c!1417834 r!14126) Nil!73235)))))

(declare-fun b!7693464 () Bool)

(declare-fun c!1417898 () Bool)

(assert (=> b!7693464 (= c!1417898 (is-ElementMatch!20508 r!14126))))

(declare-fun e!4566652 () Bool)

(assert (=> b!7693464 (= e!4566652 e!4566653)))

(declare-fun e!4566654 () Bool)

(assert (=> b!7693465 (= e!4566654 call!709596)))

(declare-fun bm!709590 () Bool)

(declare-fun call!709595 () Bool)

(assert (=> bm!709590 (= call!709595 (isEmpty!41878 (_2!38042 lt!2664020)))))

(declare-fun b!7693466 () Bool)

(declare-fun e!4566649 () Bool)

(assert (=> b!7693466 (= e!4566649 call!709595)))

(declare-fun b!7693467 () Bool)

(assert (=> b!7693467 (= e!4566649 e!4566652)))

(declare-fun res!3073153 () Bool)

(assert (=> b!7693467 (= res!3073153 (not (is-EmptyLang!20508 r!14126)))))

(assert (=> b!7693467 (=> (not res!3073153) (not e!4566652))))

(declare-fun b!7693468 () Bool)

(declare-fun res!3073151 () Bool)

(assert (=> b!7693468 (=> res!3073151 e!4566654)))

(assert (=> b!7693468 (= res!3073151 call!709595)))

(assert (=> b!7693468 (= e!4566651 e!4566654)))

(declare-fun b!7693469 () Bool)

(declare-fun e!4566655 () Bool)

(assert (=> b!7693469 (= e!4566655 (matchRSpec!4609 (regTwo!41529 r!14126) (_2!38042 lt!2664020)))))

(declare-fun b!7693463 () Bool)

(assert (=> b!7693463 (= e!4566650 e!4566651)))

(declare-fun c!1417900 () Bool)

(assert (=> b!7693463 (= c!1417900 (is-Star!20508 r!14126))))

(declare-fun d!2333394 () Bool)

(declare-fun c!1417899 () Bool)

(assert (=> d!2333394 (= c!1417899 (is-EmptyExpr!20508 r!14126))))

(assert (=> d!2333394 (= (matchRSpec!4609 r!14126 (_2!38042 lt!2664020)) e!4566649)))

(declare-fun bm!709591 () Bool)

(assert (=> bm!709591 (= call!709596 (Exists!4633 (ite c!1417900 lambda!470421 lambda!470422)))))

(declare-fun b!7693470 () Bool)

(assert (=> b!7693470 (= e!4566650 e!4566655)))

(declare-fun res!3073152 () Bool)

(assert (=> b!7693470 (= res!3073152 (matchRSpec!4609 (regOne!41529 r!14126) (_2!38042 lt!2664020)))))

(assert (=> b!7693470 (=> res!3073152 e!4566655)))

(assert (= (and d!2333394 c!1417899) b!7693466))

(assert (= (and d!2333394 (not c!1417899)) b!7693467))

(assert (= (and b!7693467 res!3073153) b!7693464))

(assert (= (and b!7693464 c!1417898) b!7693462))

(assert (= (and b!7693464 (not c!1417898)) b!7693460))

(assert (= (and b!7693460 c!1417901) b!7693470))

(assert (= (and b!7693460 (not c!1417901)) b!7693463))

(assert (= (and b!7693470 (not res!3073152)) b!7693469))

(assert (= (and b!7693463 c!1417900) b!7693468))

(assert (= (and b!7693463 (not c!1417900)) b!7693461))

(assert (= (and b!7693468 (not res!3073151)) b!7693465))

(assert (= (or b!7693465 b!7693461) bm!709591))

(assert (= (or b!7693466 b!7693468) bm!709590))

(declare-fun m!8187000 () Bool)

(assert (=> bm!709590 m!8187000))

(declare-fun m!8187002 () Bool)

(assert (=> b!7693469 m!8187002))

(declare-fun m!8187004 () Bool)

(assert (=> bm!709591 m!8187004))

(declare-fun m!8187006 () Bool)

(assert (=> b!7693470 m!8187006))

(assert (=> b!7693141 d!2333394))

(declare-fun d!2333396 () Bool)

(assert (=> d!2333396 (= (matchR!10004 r!14126 (_2!38042 lt!2664020)) (matchRSpec!4609 r!14126 (_2!38042 lt!2664020)))))

(declare-fun lt!2664111 () Unit!168044)

(assert (=> d!2333396 (= lt!2664111 (choose!59133 r!14126 (_2!38042 lt!2664020)))))

(assert (=> d!2333396 (validRegex!10926 r!14126)))

(assert (=> d!2333396 (= (mainMatchTheorem!4587 r!14126 (_2!38042 lt!2664020)) lt!2664111)))

(declare-fun bs!1956406 () Bool)

(assert (= bs!1956406 d!2333396))

(assert (=> bs!1956406 m!8186806))

(assert (=> bs!1956406 m!8186812))

(declare-fun m!8187008 () Bool)

(assert (=> bs!1956406 m!8187008))

(assert (=> bs!1956406 m!8186814))

(assert (=> b!7693141 d!2333396))

(declare-fun bm!709592 () Bool)

(declare-fun call!709597 () Bool)

(assert (=> bm!709592 (= call!709597 (isEmpty!41878 s!9605))))

(declare-fun b!7693481 () Bool)

(declare-fun e!4566665 () Bool)

(declare-fun e!4566662 () Bool)

(assert (=> b!7693481 (= e!4566665 e!4566662)))

(declare-fun res!3073162 () Bool)

(assert (=> b!7693481 (=> res!3073162 e!4566662)))

(assert (=> b!7693481 (= res!3073162 call!709597)))

(declare-fun b!7693482 () Bool)

(declare-fun e!4566664 () Bool)

(assert (=> b!7693482 (= e!4566664 (nullable!8997 r!14126))))

(declare-fun b!7693483 () Bool)

(assert (=> b!7693483 (= e!4566662 (not (= (head!15763 s!9605) (c!1417834 r!14126))))))

(declare-fun b!7693484 () Bool)

(declare-fun res!3073157 () Bool)

(assert (=> b!7693484 (=> res!3073157 e!4566662)))

(assert (=> b!7693484 (= res!3073157 (not (isEmpty!41878 (tail!15303 s!9605))))))

(declare-fun b!7693486 () Bool)

(declare-fun res!3073160 () Bool)

(declare-fun e!4566667 () Bool)

(assert (=> b!7693486 (=> (not res!3073160) (not e!4566667))))

(assert (=> b!7693486 (= res!3073160 (isEmpty!41878 (tail!15303 s!9605)))))

(declare-fun b!7693487 () Bool)

(declare-fun e!4566666 () Bool)

(assert (=> b!7693487 (= e!4566666 e!4566665)))

(declare-fun res!3073163 () Bool)

(assert (=> b!7693487 (=> (not res!3073163) (not e!4566665))))

(declare-fun lt!2664112 () Bool)

(assert (=> b!7693487 (= res!3073163 (not lt!2664112))))

(declare-fun b!7693488 () Bool)

(declare-fun res!3073161 () Bool)

(assert (=> b!7693488 (=> (not res!3073161) (not e!4566667))))

(assert (=> b!7693488 (= res!3073161 (not call!709597))))

(declare-fun b!7693489 () Bool)

(declare-fun e!4566668 () Bool)

(declare-fun e!4566663 () Bool)

(assert (=> b!7693489 (= e!4566668 e!4566663)))

(declare-fun c!1417907 () Bool)

(assert (=> b!7693489 (= c!1417907 (is-EmptyLang!20508 r!14126))))

(declare-fun b!7693490 () Bool)

(declare-fun res!3073159 () Bool)

(assert (=> b!7693490 (=> res!3073159 e!4566666)))

(assert (=> b!7693490 (= res!3073159 (not (is-ElementMatch!20508 r!14126)))))

(assert (=> b!7693490 (= e!4566663 e!4566666)))

(declare-fun b!7693491 () Bool)

(assert (=> b!7693491 (= e!4566667 (= (head!15763 s!9605) (c!1417834 r!14126)))))

(declare-fun b!7693492 () Bool)

(assert (=> b!7693492 (= e!4566663 (not lt!2664112))))

(declare-fun b!7693493 () Bool)

(assert (=> b!7693493 (= e!4566668 (= lt!2664112 call!709597))))

(declare-fun b!7693494 () Bool)

(declare-fun res!3073158 () Bool)

(assert (=> b!7693494 (=> res!3073158 e!4566666)))

(assert (=> b!7693494 (= res!3073158 e!4566667)))

(declare-fun res!3073156 () Bool)

(assert (=> b!7693494 (=> (not res!3073156) (not e!4566667))))

(assert (=> b!7693494 (= res!3073156 lt!2664112)))

(declare-fun b!7693485 () Bool)

(assert (=> b!7693485 (= e!4566664 (matchR!10004 (derivativeStep!5963 r!14126 (head!15763 s!9605)) (tail!15303 s!9605)))))

(declare-fun d!2333398 () Bool)

(assert (=> d!2333398 e!4566668))

(declare-fun c!1417908 () Bool)

(assert (=> d!2333398 (= c!1417908 (is-EmptyExpr!20508 r!14126))))

(assert (=> d!2333398 (= lt!2664112 e!4566664)))

(declare-fun c!1417906 () Bool)

(assert (=> d!2333398 (= c!1417906 (isEmpty!41878 s!9605))))

(assert (=> d!2333398 (validRegex!10926 r!14126)))

(assert (=> d!2333398 (= (matchR!10004 r!14126 s!9605) lt!2664112)))

(assert (= (and d!2333398 c!1417906) b!7693482))

(assert (= (and d!2333398 (not c!1417906)) b!7693485))

(assert (= (and d!2333398 c!1417908) b!7693493))

(assert (= (and d!2333398 (not c!1417908)) b!7693489))

(assert (= (and b!7693489 c!1417907) b!7693492))

(assert (= (and b!7693489 (not c!1417907)) b!7693490))

(assert (= (and b!7693490 (not res!3073159)) b!7693494))

(assert (= (and b!7693494 res!3073156) b!7693488))

(assert (= (and b!7693488 res!3073161) b!7693486))

(assert (= (and b!7693486 res!3073160) b!7693491))

(assert (= (and b!7693494 (not res!3073158)) b!7693487))

(assert (= (and b!7693487 res!3073163) b!7693481))

(assert (= (and b!7693481 (not res!3073162)) b!7693484))

(assert (= (and b!7693484 (not res!3073157)) b!7693483))

(assert (= (or b!7693493 b!7693481 b!7693488) bm!709592))

(assert (=> d!2333398 m!8186796))

(assert (=> d!2333398 m!8186814))

(declare-fun m!8187010 () Bool)

(assert (=> b!7693486 m!8187010))

(assert (=> b!7693486 m!8187010))

(declare-fun m!8187012 () Bool)

(assert (=> b!7693486 m!8187012))

(assert (=> b!7693482 m!8186960))

(declare-fun m!8187014 () Bool)

(assert (=> b!7693485 m!8187014))

(assert (=> b!7693485 m!8187014))

(declare-fun m!8187016 () Bool)

(assert (=> b!7693485 m!8187016))

(assert (=> b!7693485 m!8187010))

(assert (=> b!7693485 m!8187016))

(assert (=> b!7693485 m!8187010))

(declare-fun m!8187018 () Bool)

(assert (=> b!7693485 m!8187018))

(assert (=> b!7693483 m!8187014))

(assert (=> bm!709592 m!8186796))

(assert (=> b!7693491 m!8187014))

(assert (=> b!7693484 m!8187010))

(assert (=> b!7693484 m!8187010))

(assert (=> b!7693484 m!8187012))

(assert (=> b!7693141 d!2333398))

(declare-fun bm!709593 () Bool)

(declare-fun call!709598 () Bool)

(assert (=> bm!709593 (= call!709598 (isEmpty!41878 (_2!38042 lt!2664020)))))

(declare-fun b!7693501 () Bool)

(declare-fun e!4566676 () Bool)

(declare-fun e!4566673 () Bool)

(assert (=> b!7693501 (= e!4566676 e!4566673)))

(declare-fun res!3073178 () Bool)

(assert (=> b!7693501 (=> res!3073178 e!4566673)))

(assert (=> b!7693501 (= res!3073178 call!709598)))

(declare-fun b!7693502 () Bool)

(declare-fun e!4566675 () Bool)

(assert (=> b!7693502 (= e!4566675 (nullable!8997 r!14126))))

(declare-fun b!7693503 () Bool)

(assert (=> b!7693503 (= e!4566673 (not (= (head!15763 (_2!38042 lt!2664020)) (c!1417834 r!14126))))))

(declare-fun b!7693504 () Bool)

(declare-fun res!3073173 () Bool)

(assert (=> b!7693504 (=> res!3073173 e!4566673)))

(assert (=> b!7693504 (= res!3073173 (not (isEmpty!41878 (tail!15303 (_2!38042 lt!2664020)))))))

(declare-fun b!7693506 () Bool)

(declare-fun res!3073176 () Bool)

(declare-fun e!4566678 () Bool)

(assert (=> b!7693506 (=> (not res!3073176) (not e!4566678))))

(assert (=> b!7693506 (= res!3073176 (isEmpty!41878 (tail!15303 (_2!38042 lt!2664020))))))

(declare-fun b!7693507 () Bool)

(declare-fun e!4566677 () Bool)

(assert (=> b!7693507 (= e!4566677 e!4566676)))

(declare-fun res!3073179 () Bool)

(assert (=> b!7693507 (=> (not res!3073179) (not e!4566676))))

(declare-fun lt!2664113 () Bool)

(assert (=> b!7693507 (= res!3073179 (not lt!2664113))))

(declare-fun b!7693508 () Bool)

(declare-fun res!3073177 () Bool)

(assert (=> b!7693508 (=> (not res!3073177) (not e!4566678))))

(assert (=> b!7693508 (= res!3073177 (not call!709598))))

(declare-fun b!7693509 () Bool)

(declare-fun e!4566679 () Bool)

(declare-fun e!4566674 () Bool)

(assert (=> b!7693509 (= e!4566679 e!4566674)))

(declare-fun c!1417910 () Bool)

(assert (=> b!7693509 (= c!1417910 (is-EmptyLang!20508 r!14126))))

(declare-fun b!7693510 () Bool)

(declare-fun res!3073175 () Bool)

(assert (=> b!7693510 (=> res!3073175 e!4566677)))

(assert (=> b!7693510 (= res!3073175 (not (is-ElementMatch!20508 r!14126)))))

(assert (=> b!7693510 (= e!4566674 e!4566677)))

(declare-fun b!7693511 () Bool)

(assert (=> b!7693511 (= e!4566678 (= (head!15763 (_2!38042 lt!2664020)) (c!1417834 r!14126)))))

(declare-fun b!7693512 () Bool)

(assert (=> b!7693512 (= e!4566674 (not lt!2664113))))

(declare-fun b!7693513 () Bool)

(assert (=> b!7693513 (= e!4566679 (= lt!2664113 call!709598))))

(declare-fun b!7693514 () Bool)

(declare-fun res!3073174 () Bool)

(assert (=> b!7693514 (=> res!3073174 e!4566677)))

(assert (=> b!7693514 (= res!3073174 e!4566678)))

(declare-fun res!3073172 () Bool)

(assert (=> b!7693514 (=> (not res!3073172) (not e!4566678))))

(assert (=> b!7693514 (= res!3073172 lt!2664113)))

(declare-fun b!7693505 () Bool)

(assert (=> b!7693505 (= e!4566675 (matchR!10004 (derivativeStep!5963 r!14126 (head!15763 (_2!38042 lt!2664020))) (tail!15303 (_2!38042 lt!2664020))))))

(declare-fun d!2333400 () Bool)

(assert (=> d!2333400 e!4566679))

(declare-fun c!1417911 () Bool)

(assert (=> d!2333400 (= c!1417911 (is-EmptyExpr!20508 r!14126))))

(assert (=> d!2333400 (= lt!2664113 e!4566675)))

(declare-fun c!1417909 () Bool)

(assert (=> d!2333400 (= c!1417909 (isEmpty!41878 (_2!38042 lt!2664020)))))

(assert (=> d!2333400 (validRegex!10926 r!14126)))

(assert (=> d!2333400 (= (matchR!10004 r!14126 (_2!38042 lt!2664020)) lt!2664113)))

(assert (= (and d!2333400 c!1417909) b!7693502))

(assert (= (and d!2333400 (not c!1417909)) b!7693505))

(assert (= (and d!2333400 c!1417911) b!7693513))

(assert (= (and d!2333400 (not c!1417911)) b!7693509))

(assert (= (and b!7693509 c!1417910) b!7693512))

(assert (= (and b!7693509 (not c!1417910)) b!7693510))

(assert (= (and b!7693510 (not res!3073175)) b!7693514))

(assert (= (and b!7693514 res!3073172) b!7693508))

(assert (= (and b!7693508 res!3073177) b!7693506))

(assert (= (and b!7693506 res!3073176) b!7693511))

(assert (= (and b!7693514 (not res!3073174)) b!7693507))

(assert (= (and b!7693507 res!3073179) b!7693501))

(assert (= (and b!7693501 (not res!3073178)) b!7693504))

(assert (= (and b!7693504 (not res!3073173)) b!7693503))

(assert (= (or b!7693513 b!7693501 b!7693508) bm!709593))

(assert (=> d!2333400 m!8187000))

(assert (=> d!2333400 m!8186814))

(declare-fun m!8187020 () Bool)

(assert (=> b!7693506 m!8187020))

(assert (=> b!7693506 m!8187020))

(declare-fun m!8187022 () Bool)

(assert (=> b!7693506 m!8187022))

(assert (=> b!7693502 m!8186960))

(declare-fun m!8187024 () Bool)

(assert (=> b!7693505 m!8187024))

(assert (=> b!7693505 m!8187024))

(declare-fun m!8187026 () Bool)

(assert (=> b!7693505 m!8187026))

(assert (=> b!7693505 m!8187020))

(assert (=> b!7693505 m!8187026))

(assert (=> b!7693505 m!8187020))

(declare-fun m!8187028 () Bool)

(assert (=> b!7693505 m!8187028))

(assert (=> b!7693503 m!8187024))

(assert (=> bm!709593 m!8187000))

(assert (=> b!7693511 m!8187024))

(assert (=> b!7693504 m!8187020))

(assert (=> b!7693504 m!8187020))

(assert (=> b!7693504 m!8187022))

(assert (=> b!7693141 d!2333400))

(declare-fun d!2333402 () Bool)

(assert (=> d!2333402 (= (get!25974 lt!2664017) (v!54667 lt!2664017))))

(assert (=> b!7693141 d!2333402))

(declare-fun bs!1956407 () Bool)

(declare-fun b!7693522 () Bool)

(assert (= bs!1956407 (and b!7693522 b!7693139)))

(declare-fun lambda!470423 () Int)

(assert (=> bs!1956407 (not (= lambda!470423 lambda!470388))))

(declare-fun bs!1956408 () Bool)

(assert (= bs!1956408 (and b!7693522 b!7693377)))

(assert (=> bs!1956408 (= (and (= (_1!38042 lt!2664020) (_2!38042 lt!2664030)) (= (reg!20837 (reg!20837 r!14126)) (reg!20837 r!14126)) (= (reg!20837 r!14126) r!14126)) (= lambda!470423 lambda!470414))))

(declare-fun bs!1956409 () Bool)

(assert (= bs!1956409 (and b!7693522 d!2333350)))

(assert (=> bs!1956409 (not (= lambda!470423 lambda!470404))))

(declare-fun bs!1956410 () Bool)

(assert (= bs!1956410 (and b!7693522 b!7693373)))

(assert (=> bs!1956410 (not (= lambda!470423 lambda!470416))))

(declare-fun bs!1956411 () Bool)

(assert (= bs!1956411 (and b!7693522 b!7693465)))

(assert (=> bs!1956411 (= (and (= (_1!38042 lt!2664020) (_2!38042 lt!2664020)) (= (reg!20837 (reg!20837 r!14126)) (reg!20837 r!14126)) (= (reg!20837 r!14126) r!14126)) (= lambda!470423 lambda!470421))))

(declare-fun bs!1956412 () Bool)

(assert (= bs!1956412 (and b!7693522 b!7693461)))

(assert (=> bs!1956412 (not (= lambda!470423 lambda!470422))))

(declare-fun bs!1956413 () Bool)

(assert (= bs!1956413 (and b!7693522 b!7693413)))

(assert (=> bs!1956413 (= (and (= (_1!38042 lt!2664020) s!9605) (= (reg!20837 (reg!20837 r!14126)) (reg!20837 r!14126)) (= (reg!20837 r!14126) r!14126)) (= lambda!470423 lambda!470419))))

(declare-fun bs!1956414 () Bool)

(assert (= bs!1956414 (and b!7693522 b!7693409)))

(assert (=> bs!1956414 (not (= lambda!470423 lambda!470420))))

(declare-fun bs!1956415 () Bool)

(assert (= bs!1956415 (and b!7693522 b!7693132)))

(assert (=> bs!1956415 (= (and (= (_1!38042 lt!2664020) s!9605) (= (reg!20837 (reg!20837 r!14126)) (reg!20837 r!14126)) (= (reg!20837 r!14126) r!14126)) (= lambda!470423 lambda!470389))))

(declare-fun bs!1956416 () Bool)

(assert (= bs!1956416 (and b!7693522 b!7693384)))

(assert (=> bs!1956416 (not (= lambda!470423 lambda!470418))))

(declare-fun bs!1956417 () Bool)

(assert (= bs!1956417 (and b!7693522 b!7693388)))

(assert (=> bs!1956417 (= (= (_1!38042 lt!2664020) (_1!38042 lt!2664030)) (= lambda!470423 lambda!470417))))

(assert (=> b!7693522 true))

(assert (=> b!7693522 true))

(declare-fun bs!1956418 () Bool)

(declare-fun b!7693518 () Bool)

(assert (= bs!1956418 (and b!7693518 b!7693139)))

(declare-fun lambda!470424 () Int)

(assert (=> bs!1956418 (not (= lambda!470424 lambda!470388))))

(declare-fun bs!1956419 () Bool)

(assert (= bs!1956419 (and b!7693518 b!7693377)))

(assert (=> bs!1956419 (not (= lambda!470424 lambda!470414))))

(declare-fun bs!1956420 () Bool)

(assert (= bs!1956420 (and b!7693518 d!2333350)))

(assert (=> bs!1956420 (not (= lambda!470424 lambda!470404))))

(declare-fun bs!1956421 () Bool)

(assert (= bs!1956421 (and b!7693518 b!7693373)))

(assert (=> bs!1956421 (= (and (= (_1!38042 lt!2664020) (_2!38042 lt!2664030)) (= (regOne!41528 (reg!20837 r!14126)) (regOne!41528 r!14126)) (= (regTwo!41528 (reg!20837 r!14126)) (regTwo!41528 r!14126))) (= lambda!470424 lambda!470416))))

(declare-fun bs!1956422 () Bool)

(assert (= bs!1956422 (and b!7693518 b!7693465)))

(assert (=> bs!1956422 (not (= lambda!470424 lambda!470421))))

(declare-fun bs!1956423 () Bool)

(assert (= bs!1956423 (and b!7693518 b!7693461)))

(assert (=> bs!1956423 (= (and (= (_1!38042 lt!2664020) (_2!38042 lt!2664020)) (= (regOne!41528 (reg!20837 r!14126)) (regOne!41528 r!14126)) (= (regTwo!41528 (reg!20837 r!14126)) (regTwo!41528 r!14126))) (= lambda!470424 lambda!470422))))

(declare-fun bs!1956424 () Bool)

(assert (= bs!1956424 (and b!7693518 b!7693413)))

(assert (=> bs!1956424 (not (= lambda!470424 lambda!470419))))

(declare-fun bs!1956425 () Bool)

(assert (= bs!1956425 (and b!7693518 b!7693409)))

(assert (=> bs!1956425 (= (and (= (_1!38042 lt!2664020) s!9605) (= (regOne!41528 (reg!20837 r!14126)) (regOne!41528 r!14126)) (= (regTwo!41528 (reg!20837 r!14126)) (regTwo!41528 r!14126))) (= lambda!470424 lambda!470420))))

(declare-fun bs!1956426 () Bool)

(assert (= bs!1956426 (and b!7693518 b!7693132)))

(assert (=> bs!1956426 (not (= lambda!470424 lambda!470389))))

(declare-fun bs!1956427 () Bool)

(assert (= bs!1956427 (and b!7693518 b!7693522)))

(assert (=> bs!1956427 (not (= lambda!470424 lambda!470423))))

(declare-fun bs!1956428 () Bool)

(assert (= bs!1956428 (and b!7693518 b!7693384)))

(assert (=> bs!1956428 (= (= (_1!38042 lt!2664020) (_1!38042 lt!2664030)) (= lambda!470424 lambda!470418))))

(declare-fun bs!1956429 () Bool)

(assert (= bs!1956429 (and b!7693518 b!7693388)))

(assert (=> bs!1956429 (not (= lambda!470424 lambda!470417))))

(assert (=> b!7693518 true))

(assert (=> b!7693518 true))

(declare-fun b!7693517 () Bool)

(declare-fun c!1417915 () Bool)

(assert (=> b!7693517 (= c!1417915 (is-Union!20508 (reg!20837 r!14126)))))

(declare-fun e!4566684 () Bool)

(declare-fun e!4566681 () Bool)

(assert (=> b!7693517 (= e!4566684 e!4566681)))

(declare-fun e!4566682 () Bool)

(declare-fun call!709600 () Bool)

(assert (=> b!7693518 (= e!4566682 call!709600)))

(declare-fun b!7693519 () Bool)

(assert (=> b!7693519 (= e!4566684 (= (_1!38042 lt!2664020) (Cons!73235 (c!1417834 (reg!20837 r!14126)) Nil!73235)))))

(declare-fun b!7693521 () Bool)

(declare-fun c!1417912 () Bool)

(assert (=> b!7693521 (= c!1417912 (is-ElementMatch!20508 (reg!20837 r!14126)))))

(declare-fun e!4566683 () Bool)

(assert (=> b!7693521 (= e!4566683 e!4566684)))

(declare-fun e!4566685 () Bool)

(assert (=> b!7693522 (= e!4566685 call!709600)))

(declare-fun bm!709594 () Bool)

(declare-fun call!709599 () Bool)

(assert (=> bm!709594 (= call!709599 (isEmpty!41878 (_1!38042 lt!2664020)))))

(declare-fun b!7693523 () Bool)

(declare-fun e!4566680 () Bool)

(assert (=> b!7693523 (= e!4566680 call!709599)))

(declare-fun b!7693524 () Bool)

(assert (=> b!7693524 (= e!4566680 e!4566683)))

(declare-fun res!3073182 () Bool)

(assert (=> b!7693524 (= res!3073182 (not (is-EmptyLang!20508 (reg!20837 r!14126))))))

(assert (=> b!7693524 (=> (not res!3073182) (not e!4566683))))

(declare-fun b!7693525 () Bool)

(declare-fun res!3073180 () Bool)

(assert (=> b!7693525 (=> res!3073180 e!4566685)))

(assert (=> b!7693525 (= res!3073180 call!709599)))

(assert (=> b!7693525 (= e!4566682 e!4566685)))

(declare-fun b!7693526 () Bool)

(declare-fun e!4566686 () Bool)

(assert (=> b!7693526 (= e!4566686 (matchRSpec!4609 (regTwo!41529 (reg!20837 r!14126)) (_1!38042 lt!2664020)))))

(declare-fun b!7693520 () Bool)

(assert (=> b!7693520 (= e!4566681 e!4566682)))

(declare-fun c!1417914 () Bool)

(assert (=> b!7693520 (= c!1417914 (is-Star!20508 (reg!20837 r!14126)))))

(declare-fun d!2333404 () Bool)

(declare-fun c!1417913 () Bool)

(assert (=> d!2333404 (= c!1417913 (is-EmptyExpr!20508 (reg!20837 r!14126)))))

(assert (=> d!2333404 (= (matchRSpec!4609 (reg!20837 r!14126) (_1!38042 lt!2664020)) e!4566680)))

(declare-fun bm!709595 () Bool)

(assert (=> bm!709595 (= call!709600 (Exists!4633 (ite c!1417914 lambda!470423 lambda!470424)))))

(declare-fun b!7693527 () Bool)

(assert (=> b!7693527 (= e!4566681 e!4566686)))

(declare-fun res!3073181 () Bool)

(assert (=> b!7693527 (= res!3073181 (matchRSpec!4609 (regOne!41529 (reg!20837 r!14126)) (_1!38042 lt!2664020)))))

(assert (=> b!7693527 (=> res!3073181 e!4566686)))

(assert (= (and d!2333404 c!1417913) b!7693523))

(assert (= (and d!2333404 (not c!1417913)) b!7693524))

(assert (= (and b!7693524 res!3073182) b!7693521))

(assert (= (and b!7693521 c!1417912) b!7693519))

(assert (= (and b!7693521 (not c!1417912)) b!7693517))

(assert (= (and b!7693517 c!1417915) b!7693527))

(assert (= (and b!7693517 (not c!1417915)) b!7693520))

(assert (= (and b!7693527 (not res!3073181)) b!7693526))

(assert (= (and b!7693520 c!1417914) b!7693525))

(assert (= (and b!7693520 (not c!1417914)) b!7693518))

(assert (= (and b!7693525 (not res!3073180)) b!7693522))

(assert (= (or b!7693522 b!7693518) bm!709595))

(assert (= (or b!7693523 b!7693525) bm!709594))

(assert (=> bm!709594 m!8186986))

(declare-fun m!8187030 () Bool)

(assert (=> b!7693526 m!8187030))

(declare-fun m!8187032 () Bool)

(assert (=> bm!709595 m!8187032))

(declare-fun m!8187034 () Bool)

(assert (=> b!7693527 m!8187034))

(assert (=> b!7693141 d!2333404))

(declare-fun d!2333406 () Bool)

(assert (=> d!2333406 (matchR!10004 (Concat!29353 (reg!20837 r!14126) r!14126) (++!17730 (_1!38042 lt!2664020) (_2!38042 lt!2664020)))))

(declare-fun lt!2664119 () Unit!168044)

(declare-fun choose!59139 (Regex!20508 Regex!20508 List!73359 List!73359 List!73359) Unit!168044)

(assert (=> d!2333406 (= lt!2664119 (choose!59139 (reg!20837 r!14126) r!14126 (_1!38042 lt!2664020) (_2!38042 lt!2664020) s!9605))))

(assert (=> d!2333406 (validRegex!10926 (reg!20837 r!14126))))

(assert (=> d!2333406 (= (lemmaFindSeparationIsDefinedThenConcatMatches!195 (reg!20837 r!14126) r!14126 (_1!38042 lt!2664020) (_2!38042 lt!2664020) s!9605) lt!2664119)))

(declare-fun bs!1956430 () Bool)

(assert (= bs!1956430 d!2333406))

(assert (=> bs!1956430 m!8186778))

(assert (=> bs!1956430 m!8186778))

(declare-fun m!8187036 () Bool)

(assert (=> bs!1956430 m!8187036))

(declare-fun m!8187038 () Bool)

(assert (=> bs!1956430 m!8187038))

(assert (=> bs!1956430 m!8186896))

(assert (=> b!7693136 d!2333406))

(declare-fun bm!709596 () Bool)

(declare-fun call!709601 () Bool)

(assert (=> bm!709596 (= call!709601 (isEmpty!41878 lt!2664025))))

(declare-fun b!7693537 () Bool)

(declare-fun e!4566695 () Bool)

(declare-fun e!4566692 () Bool)

(assert (=> b!7693537 (= e!4566695 e!4566692)))

(declare-fun res!3073194 () Bool)

(assert (=> b!7693537 (=> res!3073194 e!4566692)))

(assert (=> b!7693537 (= res!3073194 call!709601)))

(declare-fun b!7693538 () Bool)

(declare-fun e!4566694 () Bool)

(assert (=> b!7693538 (= e!4566694 (nullable!8997 (Concat!29353 (reg!20837 r!14126) r!14126)))))

(declare-fun b!7693539 () Bool)

(assert (=> b!7693539 (= e!4566692 (not (= (head!15763 lt!2664025) (c!1417834 (Concat!29353 (reg!20837 r!14126) r!14126)))))))

(declare-fun b!7693540 () Bool)

(declare-fun res!3073189 () Bool)

(assert (=> b!7693540 (=> res!3073189 e!4566692)))

(assert (=> b!7693540 (= res!3073189 (not (isEmpty!41878 (tail!15303 lt!2664025))))))

(declare-fun b!7693542 () Bool)

(declare-fun res!3073192 () Bool)

(declare-fun e!4566697 () Bool)

(assert (=> b!7693542 (=> (not res!3073192) (not e!4566697))))

(assert (=> b!7693542 (= res!3073192 (isEmpty!41878 (tail!15303 lt!2664025)))))

(declare-fun b!7693543 () Bool)

(declare-fun e!4566696 () Bool)

(assert (=> b!7693543 (= e!4566696 e!4566695)))

(declare-fun res!3073195 () Bool)

(assert (=> b!7693543 (=> (not res!3073195) (not e!4566695))))

(declare-fun lt!2664120 () Bool)

(assert (=> b!7693543 (= res!3073195 (not lt!2664120))))

(declare-fun b!7693544 () Bool)

(declare-fun res!3073193 () Bool)

(assert (=> b!7693544 (=> (not res!3073193) (not e!4566697))))

(assert (=> b!7693544 (= res!3073193 (not call!709601))))

(declare-fun b!7693545 () Bool)

(declare-fun e!4566698 () Bool)

(declare-fun e!4566693 () Bool)

(assert (=> b!7693545 (= e!4566698 e!4566693)))

(declare-fun c!1417919 () Bool)

(assert (=> b!7693545 (= c!1417919 (is-EmptyLang!20508 (Concat!29353 (reg!20837 r!14126) r!14126)))))

(declare-fun b!7693546 () Bool)

(declare-fun res!3073191 () Bool)

(assert (=> b!7693546 (=> res!3073191 e!4566696)))

(assert (=> b!7693546 (= res!3073191 (not (is-ElementMatch!20508 (Concat!29353 (reg!20837 r!14126) r!14126))))))

(assert (=> b!7693546 (= e!4566693 e!4566696)))

(declare-fun b!7693547 () Bool)

(assert (=> b!7693547 (= e!4566697 (= (head!15763 lt!2664025) (c!1417834 (Concat!29353 (reg!20837 r!14126) r!14126))))))

(declare-fun b!7693548 () Bool)

(assert (=> b!7693548 (= e!4566693 (not lt!2664120))))

(declare-fun b!7693549 () Bool)

(assert (=> b!7693549 (= e!4566698 (= lt!2664120 call!709601))))

(declare-fun b!7693550 () Bool)

(declare-fun res!3073190 () Bool)

(assert (=> b!7693550 (=> res!3073190 e!4566696)))

(assert (=> b!7693550 (= res!3073190 e!4566697)))

(declare-fun res!3073188 () Bool)

(assert (=> b!7693550 (=> (not res!3073188) (not e!4566697))))

(assert (=> b!7693550 (= res!3073188 lt!2664120)))

(declare-fun b!7693541 () Bool)

(assert (=> b!7693541 (= e!4566694 (matchR!10004 (derivativeStep!5963 (Concat!29353 (reg!20837 r!14126) r!14126) (head!15763 lt!2664025)) (tail!15303 lt!2664025)))))

(declare-fun d!2333408 () Bool)

(assert (=> d!2333408 e!4566698))

(declare-fun c!1417920 () Bool)

(assert (=> d!2333408 (= c!1417920 (is-EmptyExpr!20508 (Concat!29353 (reg!20837 r!14126) r!14126)))))

(assert (=> d!2333408 (= lt!2664120 e!4566694)))

(declare-fun c!1417918 () Bool)

(assert (=> d!2333408 (= c!1417918 (isEmpty!41878 lt!2664025))))

(assert (=> d!2333408 (validRegex!10926 (Concat!29353 (reg!20837 r!14126) r!14126))))

(assert (=> d!2333408 (= (matchR!10004 (Concat!29353 (reg!20837 r!14126) r!14126) lt!2664025) lt!2664120)))

(assert (= (and d!2333408 c!1417918) b!7693538))

(assert (= (and d!2333408 (not c!1417918)) b!7693541))

(assert (= (and d!2333408 c!1417920) b!7693549))

(assert (= (and d!2333408 (not c!1417920)) b!7693545))

(assert (= (and b!7693545 c!1417919) b!7693548))

(assert (= (and b!7693545 (not c!1417919)) b!7693546))

(assert (= (and b!7693546 (not res!3073191)) b!7693550))

(assert (= (and b!7693550 res!3073188) b!7693544))

(assert (= (and b!7693544 res!3073193) b!7693542))

(assert (= (and b!7693542 res!3073192) b!7693547))

(assert (= (and b!7693550 (not res!3073190)) b!7693543))

(assert (= (and b!7693543 res!3073195) b!7693537))

(assert (= (and b!7693537 (not res!3073194)) b!7693540))

(assert (= (and b!7693540 (not res!3073189)) b!7693539))

(assert (= (or b!7693549 b!7693537 b!7693544) bm!709596))

(declare-fun m!8187040 () Bool)

(assert (=> d!2333408 m!8187040))

(declare-fun m!8187042 () Bool)

(assert (=> d!2333408 m!8187042))

(declare-fun m!8187044 () Bool)

(assert (=> b!7693542 m!8187044))

(assert (=> b!7693542 m!8187044))

(declare-fun m!8187046 () Bool)

(assert (=> b!7693542 m!8187046))

(declare-fun m!8187048 () Bool)

(assert (=> b!7693538 m!8187048))

(declare-fun m!8187050 () Bool)

(assert (=> b!7693541 m!8187050))

(assert (=> b!7693541 m!8187050))

(declare-fun m!8187054 () Bool)

(assert (=> b!7693541 m!8187054))

(assert (=> b!7693541 m!8187044))

(assert (=> b!7693541 m!8187054))

(assert (=> b!7693541 m!8187044))

(declare-fun m!8187060 () Bool)

(assert (=> b!7693541 m!8187060))

(assert (=> b!7693539 m!8187050))

(assert (=> bm!709596 m!8187040))

(assert (=> b!7693547 m!8187050))

(assert (=> b!7693540 m!8187044))

(assert (=> b!7693540 m!8187044))

(assert (=> b!7693540 m!8187046))

(assert (=> b!7693136 d!2333408))

(declare-fun d!2333410 () Bool)

(assert (=> d!2333410 (matchR!10004 (Star!20508 (reg!20837 r!14126)) (++!17730 (_1!38042 lt!2664020) (_2!38042 lt!2664020)))))

(declare-fun lt!2664123 () Unit!168044)

(declare-fun choose!59140 (Regex!20508 List!73359 List!73359) Unit!168044)

(assert (=> d!2333410 (= lt!2664123 (choose!59140 (reg!20837 r!14126) (_1!38042 lt!2664020) (_2!38042 lt!2664020)))))

(assert (=> d!2333410 (validRegex!10926 (Star!20508 (reg!20837 r!14126)))))

(assert (=> d!2333410 (= (lemmaStarApp!217 (reg!20837 r!14126) (_1!38042 lt!2664020) (_2!38042 lt!2664020)) lt!2664123)))

(declare-fun bs!1956431 () Bool)

(assert (= bs!1956431 d!2333410))

(assert (=> bs!1956431 m!8186778))

(assert (=> bs!1956431 m!8186778))

(declare-fun m!8187078 () Bool)

(assert (=> bs!1956431 m!8187078))

(declare-fun m!8187080 () Bool)

(assert (=> bs!1956431 m!8187080))

(declare-fun m!8187082 () Bool)

(assert (=> bs!1956431 m!8187082))

(assert (=> b!7693136 d!2333410))

(declare-fun d!2333414 () Bool)

(declare-fun e!4566703 () Bool)

(assert (=> d!2333414 e!4566703))

(declare-fun res!3073201 () Bool)

(assert (=> d!2333414 (=> (not res!3073201) (not e!4566703))))

(declare-fun lt!2664126 () List!73359)

(declare-fun content!15508 (List!73359) (Set C!41342))

(assert (=> d!2333414 (= res!3073201 (= (content!15508 lt!2664126) (set.union (content!15508 (_1!38042 lt!2664020)) (content!15508 (_2!38042 lt!2664020)))))))

(declare-fun e!4566704 () List!73359)

(assert (=> d!2333414 (= lt!2664126 e!4566704)))

(declare-fun c!1417923 () Bool)

(assert (=> d!2333414 (= c!1417923 (is-Nil!73235 (_1!38042 lt!2664020)))))

(assert (=> d!2333414 (= (++!17730 (_1!38042 lt!2664020) (_2!38042 lt!2664020)) lt!2664126)))

(declare-fun b!7693559 () Bool)

(assert (=> b!7693559 (= e!4566704 (_2!38042 lt!2664020))))

(declare-fun b!7693561 () Bool)

(declare-fun res!3073200 () Bool)

(assert (=> b!7693561 (=> (not res!3073200) (not e!4566703))))

(declare-fun size!42611 (List!73359) Int)

(assert (=> b!7693561 (= res!3073200 (= (size!42611 lt!2664126) (+ (size!42611 (_1!38042 lt!2664020)) (size!42611 (_2!38042 lt!2664020)))))))

(declare-fun b!7693560 () Bool)

(assert (=> b!7693560 (= e!4566704 (Cons!73235 (h!79683 (_1!38042 lt!2664020)) (++!17730 (t!388094 (_1!38042 lt!2664020)) (_2!38042 lt!2664020))))))

(declare-fun b!7693562 () Bool)

(assert (=> b!7693562 (= e!4566703 (or (not (= (_2!38042 lt!2664020) Nil!73235)) (= lt!2664126 (_1!38042 lt!2664020))))))

(assert (= (and d!2333414 c!1417923) b!7693559))

(assert (= (and d!2333414 (not c!1417923)) b!7693560))

(assert (= (and d!2333414 res!3073201) b!7693561))

(assert (= (and b!7693561 res!3073200) b!7693562))

(declare-fun m!8187084 () Bool)

(assert (=> d!2333414 m!8187084))

(declare-fun m!8187086 () Bool)

(assert (=> d!2333414 m!8187086))

(declare-fun m!8187088 () Bool)

(assert (=> d!2333414 m!8187088))

(declare-fun m!8187090 () Bool)

(assert (=> b!7693561 m!8187090))

(declare-fun m!8187092 () Bool)

(assert (=> b!7693561 m!8187092))

(declare-fun m!8187094 () Bool)

(assert (=> b!7693561 m!8187094))

(declare-fun m!8187096 () Bool)

(assert (=> b!7693560 m!8187096))

(assert (=> b!7693136 d!2333414))

(declare-fun bm!709597 () Bool)

(declare-fun call!709602 () Bool)

(assert (=> bm!709597 (= call!709602 (isEmpty!41878 lt!2664025))))

(declare-fun b!7693563 () Bool)

(declare-fun e!4566708 () Bool)

(declare-fun e!4566705 () Bool)

(assert (=> b!7693563 (= e!4566708 e!4566705)))

(declare-fun res!3073208 () Bool)

(assert (=> b!7693563 (=> res!3073208 e!4566705)))

(assert (=> b!7693563 (= res!3073208 call!709602)))

(declare-fun b!7693564 () Bool)

(declare-fun e!4566707 () Bool)

(assert (=> b!7693564 (= e!4566707 (nullable!8997 r!14126))))

(declare-fun b!7693565 () Bool)

(assert (=> b!7693565 (= e!4566705 (not (= (head!15763 lt!2664025) (c!1417834 r!14126))))))

(declare-fun b!7693566 () Bool)

(declare-fun res!3073203 () Bool)

(assert (=> b!7693566 (=> res!3073203 e!4566705)))

(assert (=> b!7693566 (= res!3073203 (not (isEmpty!41878 (tail!15303 lt!2664025))))))

(declare-fun b!7693568 () Bool)

(declare-fun res!3073206 () Bool)

(declare-fun e!4566710 () Bool)

(assert (=> b!7693568 (=> (not res!3073206) (not e!4566710))))

(assert (=> b!7693568 (= res!3073206 (isEmpty!41878 (tail!15303 lt!2664025)))))

(declare-fun b!7693569 () Bool)

(declare-fun e!4566709 () Bool)

(assert (=> b!7693569 (= e!4566709 e!4566708)))

(declare-fun res!3073209 () Bool)

(assert (=> b!7693569 (=> (not res!3073209) (not e!4566708))))

(declare-fun lt!2664127 () Bool)

(assert (=> b!7693569 (= res!3073209 (not lt!2664127))))

(declare-fun b!7693570 () Bool)

(declare-fun res!3073207 () Bool)

(assert (=> b!7693570 (=> (not res!3073207) (not e!4566710))))

(assert (=> b!7693570 (= res!3073207 (not call!709602))))

(declare-fun b!7693571 () Bool)

(declare-fun e!4566711 () Bool)

(declare-fun e!4566706 () Bool)

(assert (=> b!7693571 (= e!4566711 e!4566706)))

(declare-fun c!1417925 () Bool)

(assert (=> b!7693571 (= c!1417925 (is-EmptyLang!20508 r!14126))))

(declare-fun b!7693572 () Bool)

(declare-fun res!3073205 () Bool)

(assert (=> b!7693572 (=> res!3073205 e!4566709)))

(assert (=> b!7693572 (= res!3073205 (not (is-ElementMatch!20508 r!14126)))))

(assert (=> b!7693572 (= e!4566706 e!4566709)))

(declare-fun b!7693573 () Bool)

(assert (=> b!7693573 (= e!4566710 (= (head!15763 lt!2664025) (c!1417834 r!14126)))))

(declare-fun b!7693574 () Bool)

(assert (=> b!7693574 (= e!4566706 (not lt!2664127))))

(declare-fun b!7693575 () Bool)

(assert (=> b!7693575 (= e!4566711 (= lt!2664127 call!709602))))

(declare-fun b!7693576 () Bool)

(declare-fun res!3073204 () Bool)

(assert (=> b!7693576 (=> res!3073204 e!4566709)))

(assert (=> b!7693576 (= res!3073204 e!4566710)))

(declare-fun res!3073202 () Bool)

(assert (=> b!7693576 (=> (not res!3073202) (not e!4566710))))

(assert (=> b!7693576 (= res!3073202 lt!2664127)))

(declare-fun b!7693567 () Bool)

(assert (=> b!7693567 (= e!4566707 (matchR!10004 (derivativeStep!5963 r!14126 (head!15763 lt!2664025)) (tail!15303 lt!2664025)))))

(declare-fun d!2333416 () Bool)

(assert (=> d!2333416 e!4566711))

(declare-fun c!1417926 () Bool)

(assert (=> d!2333416 (= c!1417926 (is-EmptyExpr!20508 r!14126))))

(assert (=> d!2333416 (= lt!2664127 e!4566707)))

(declare-fun c!1417924 () Bool)

(assert (=> d!2333416 (= c!1417924 (isEmpty!41878 lt!2664025))))

(assert (=> d!2333416 (validRegex!10926 r!14126)))

(assert (=> d!2333416 (= (matchR!10004 r!14126 lt!2664025) lt!2664127)))

(assert (= (and d!2333416 c!1417924) b!7693564))

(assert (= (and d!2333416 (not c!1417924)) b!7693567))

(assert (= (and d!2333416 c!1417926) b!7693575))

(assert (= (and d!2333416 (not c!1417926)) b!7693571))

(assert (= (and b!7693571 c!1417925) b!7693574))

(assert (= (and b!7693571 (not c!1417925)) b!7693572))

(assert (= (and b!7693572 (not res!3073205)) b!7693576))

(assert (= (and b!7693576 res!3073202) b!7693570))

(assert (= (and b!7693570 res!3073207) b!7693568))

(assert (= (and b!7693568 res!3073206) b!7693573))

(assert (= (and b!7693576 (not res!3073204)) b!7693569))

(assert (= (and b!7693569 res!3073209) b!7693563))

(assert (= (and b!7693563 (not res!3073208)) b!7693566))

(assert (= (and b!7693566 (not res!3073203)) b!7693565))

(assert (= (or b!7693575 b!7693563 b!7693570) bm!709597))

(assert (=> d!2333416 m!8187040))

(assert (=> d!2333416 m!8186814))

(assert (=> b!7693568 m!8187044))

(assert (=> b!7693568 m!8187044))

(assert (=> b!7693568 m!8187046))

(assert (=> b!7693564 m!8186960))

(assert (=> b!7693567 m!8187050))

(assert (=> b!7693567 m!8187050))

(declare-fun m!8187098 () Bool)

(assert (=> b!7693567 m!8187098))

(assert (=> b!7693567 m!8187044))

(assert (=> b!7693567 m!8187098))

(assert (=> b!7693567 m!8187044))

(declare-fun m!8187100 () Bool)

(assert (=> b!7693567 m!8187100))

(assert (=> b!7693565 m!8187050))

(assert (=> bm!709597 m!8187040))

(assert (=> b!7693573 m!8187050))

(assert (=> b!7693566 m!8187044))

(assert (=> b!7693566 m!8187044))

(assert (=> b!7693566 m!8187046))

(assert (=> b!7693136 d!2333416))

(declare-fun b!7693590 () Bool)

(declare-fun e!4566714 () Bool)

(declare-fun tp!2253791 () Bool)

(declare-fun tp!2253792 () Bool)

(assert (=> b!7693590 (= e!4566714 (and tp!2253791 tp!2253792))))

(declare-fun b!7693587 () Bool)

(assert (=> b!7693587 (= e!4566714 tp_is_empty!51371)))

(declare-fun b!7693588 () Bool)

(declare-fun tp!2253789 () Bool)

(declare-fun tp!2253790 () Bool)

(assert (=> b!7693588 (= e!4566714 (and tp!2253789 tp!2253790))))

(assert (=> b!7693134 (= tp!2253758 e!4566714)))

(declare-fun b!7693589 () Bool)

(declare-fun tp!2253788 () Bool)

(assert (=> b!7693589 (= e!4566714 tp!2253788)))

(assert (= (and b!7693134 (is-ElementMatch!20508 (regOne!41529 r!14126))) b!7693587))

(assert (= (and b!7693134 (is-Concat!29353 (regOne!41529 r!14126))) b!7693588))

(assert (= (and b!7693134 (is-Star!20508 (regOne!41529 r!14126))) b!7693589))

(assert (= (and b!7693134 (is-Union!20508 (regOne!41529 r!14126))) b!7693590))

(declare-fun b!7693594 () Bool)

(declare-fun e!4566715 () Bool)

(declare-fun tp!2253796 () Bool)

(declare-fun tp!2253797 () Bool)

(assert (=> b!7693594 (= e!4566715 (and tp!2253796 tp!2253797))))

(declare-fun b!7693591 () Bool)

(assert (=> b!7693591 (= e!4566715 tp_is_empty!51371)))

(declare-fun b!7693592 () Bool)

(declare-fun tp!2253794 () Bool)

(declare-fun tp!2253795 () Bool)

(assert (=> b!7693592 (= e!4566715 (and tp!2253794 tp!2253795))))

(assert (=> b!7693134 (= tp!2253754 e!4566715)))

(declare-fun b!7693593 () Bool)

(declare-fun tp!2253793 () Bool)

(assert (=> b!7693593 (= e!4566715 tp!2253793)))

(assert (= (and b!7693134 (is-ElementMatch!20508 (regTwo!41529 r!14126))) b!7693591))

(assert (= (and b!7693134 (is-Concat!29353 (regTwo!41529 r!14126))) b!7693592))

(assert (= (and b!7693134 (is-Star!20508 (regTwo!41529 r!14126))) b!7693593))

(assert (= (and b!7693134 (is-Union!20508 (regTwo!41529 r!14126))) b!7693594))

(declare-fun b!7693599 () Bool)

(declare-fun e!4566718 () Bool)

(declare-fun tp!2253800 () Bool)

(assert (=> b!7693599 (= e!4566718 (and tp_is_empty!51371 tp!2253800))))

(assert (=> b!7693129 (= tp!2253759 e!4566718)))

(assert (= (and b!7693129 (is-Cons!73235 (t!388094 s!9605))) b!7693599))

(declare-fun b!7693603 () Bool)

(declare-fun e!4566719 () Bool)

(declare-fun tp!2253804 () Bool)

(declare-fun tp!2253805 () Bool)

(assert (=> b!7693603 (= e!4566719 (and tp!2253804 tp!2253805))))

(declare-fun b!7693600 () Bool)

(assert (=> b!7693600 (= e!4566719 tp_is_empty!51371)))

(declare-fun b!7693601 () Bool)

(declare-fun tp!2253802 () Bool)

(declare-fun tp!2253803 () Bool)

(assert (=> b!7693601 (= e!4566719 (and tp!2253802 tp!2253803))))

(assert (=> b!7693133 (= tp!2253755 e!4566719)))

(declare-fun b!7693602 () Bool)

(declare-fun tp!2253801 () Bool)

(assert (=> b!7693602 (= e!4566719 tp!2253801)))

(assert (= (and b!7693133 (is-ElementMatch!20508 (reg!20837 r!14126))) b!7693600))

(assert (= (and b!7693133 (is-Concat!29353 (reg!20837 r!14126))) b!7693601))

(assert (= (and b!7693133 (is-Star!20508 (reg!20837 r!14126))) b!7693602))

(assert (= (and b!7693133 (is-Union!20508 (reg!20837 r!14126))) b!7693603))

(declare-fun b!7693607 () Bool)

(declare-fun e!4566720 () Bool)

(declare-fun tp!2253809 () Bool)

(declare-fun tp!2253810 () Bool)

(assert (=> b!7693607 (= e!4566720 (and tp!2253809 tp!2253810))))

(declare-fun b!7693604 () Bool)

(assert (=> b!7693604 (= e!4566720 tp_is_empty!51371)))

(declare-fun b!7693605 () Bool)

(declare-fun tp!2253807 () Bool)

(declare-fun tp!2253808 () Bool)

(assert (=> b!7693605 (= e!4566720 (and tp!2253807 tp!2253808))))

(assert (=> b!7693131 (= tp!2253757 e!4566720)))

(declare-fun b!7693606 () Bool)

(declare-fun tp!2253806 () Bool)

(assert (=> b!7693606 (= e!4566720 tp!2253806)))

(assert (= (and b!7693131 (is-ElementMatch!20508 (regOne!41528 r!14126))) b!7693604))

(assert (= (and b!7693131 (is-Concat!29353 (regOne!41528 r!14126))) b!7693605))

(assert (= (and b!7693131 (is-Star!20508 (regOne!41528 r!14126))) b!7693606))

(assert (= (and b!7693131 (is-Union!20508 (regOne!41528 r!14126))) b!7693607))

(declare-fun b!7693611 () Bool)

(declare-fun e!4566721 () Bool)

(declare-fun tp!2253814 () Bool)

(declare-fun tp!2253815 () Bool)

(assert (=> b!7693611 (= e!4566721 (and tp!2253814 tp!2253815))))

(declare-fun b!7693608 () Bool)

(assert (=> b!7693608 (= e!4566721 tp_is_empty!51371)))

(declare-fun b!7693609 () Bool)

(declare-fun tp!2253812 () Bool)

(declare-fun tp!2253813 () Bool)

(assert (=> b!7693609 (= e!4566721 (and tp!2253812 tp!2253813))))

(assert (=> b!7693131 (= tp!2253756 e!4566721)))

(declare-fun b!7693610 () Bool)

(declare-fun tp!2253811 () Bool)

(assert (=> b!7693610 (= e!4566721 tp!2253811)))

(assert (= (and b!7693131 (is-ElementMatch!20508 (regTwo!41528 r!14126))) b!7693608))

(assert (= (and b!7693131 (is-Concat!29353 (regTwo!41528 r!14126))) b!7693609))

(assert (= (and b!7693131 (is-Star!20508 (regTwo!41528 r!14126))) b!7693610))

(assert (= (and b!7693131 (is-Union!20508 (regTwo!41528 r!14126))) b!7693611))

(declare-fun b_lambda!289167 () Bool)

(assert (= b_lambda!289163 (or b!7693139 b_lambda!289167)))

(declare-fun bs!1956432 () Bool)

(declare-fun d!2333418 () Bool)

(assert (= bs!1956432 (and d!2333418 b!7693139)))

(declare-fun res!3073210 () Bool)

(declare-fun e!4566722 () Bool)

(assert (=> bs!1956432 (=> (not res!3073210) (not e!4566722))))

(assert (=> bs!1956432 (= res!3073210 (= (++!17730 (_1!38042 lt!2664094) (_2!38042 lt!2664094)) s!9605))))

(assert (=> bs!1956432 (= (dynLambda!29941 lambda!470388 lt!2664094) e!4566722)))

(declare-fun b!7693612 () Bool)

(declare-fun res!3073211 () Bool)

(assert (=> b!7693612 (=> (not res!3073211) (not e!4566722))))

(assert (=> b!7693612 (= res!3073211 (matchR!10004 (reg!20837 r!14126) (_1!38042 lt!2664094)))))

(declare-fun b!7693613 () Bool)

(assert (=> b!7693613 (= e!4566722 (matchR!10004 r!14126 (_2!38042 lt!2664094)))))

(assert (= (and bs!1956432 res!3073210) b!7693612))

(assert (= (and b!7693612 res!3073211) b!7693613))

(declare-fun m!8187102 () Bool)

(assert (=> bs!1956432 m!8187102))

(declare-fun m!8187104 () Bool)

(assert (=> b!7693612 m!8187104))

(declare-fun m!8187106 () Bool)

(assert (=> b!7693613 m!8187106))

(assert (=> d!2333356 d!2333418))

(declare-fun b_lambda!289169 () Bool)

(assert (= b_lambda!289165 (or b!7693132 b_lambda!289169)))

(declare-fun bs!1956433 () Bool)

(declare-fun d!2333420 () Bool)

(assert (= bs!1956433 (and d!2333420 b!7693132)))

(declare-fun res!3073212 () Bool)

(declare-fun e!4566723 () Bool)

(assert (=> bs!1956433 (=> (not res!3073212) (not e!4566723))))

(assert (=> bs!1956433 (= res!3073212 (= (++!17730 (_1!38042 lt!2664030) (_2!38042 lt!2664030)) s!9605))))

(assert (=> bs!1956433 (= (dynLambda!29941 lambda!470389 lt!2664030) e!4566723)))

(declare-fun b!7693614 () Bool)

(declare-fun res!3073213 () Bool)

(assert (=> b!7693614 (=> (not res!3073213) (not e!4566723))))

(assert (=> b!7693614 (= res!3073213 (not (isEmpty!41878 (_1!38042 lt!2664030))))))

(declare-fun b!7693615 () Bool)

(declare-fun res!3073214 () Bool)

(assert (=> b!7693615 (=> (not res!3073214) (not e!4566723))))

(assert (=> b!7693615 (= res!3073214 (matchRSpec!4609 (reg!20837 r!14126) (_1!38042 lt!2664030)))))

(declare-fun b!7693616 () Bool)

(assert (=> b!7693616 (= e!4566723 (matchRSpec!4609 r!14126 (_2!38042 lt!2664030)))))

(assert (= (and bs!1956433 res!3073212) b!7693614))

(assert (= (and b!7693614 res!3073213) b!7693615))

(assert (= (and b!7693615 res!3073214) b!7693616))

(declare-fun m!8187108 () Bool)

(assert (=> bs!1956433 m!8187108))

(assert (=> b!7693614 m!8186816))

(assert (=> b!7693615 m!8186770))

(assert (=> b!7693616 m!8186772))

(assert (=> d!2333382 d!2333420))

(push 1)

(assert (not d!2333400))

(assert (not b!7693249))

(assert (not bm!709592))

(assert (not b!7693590))

(assert (not d!2333406))

(assert (not d!2333396))

(assert (not d!2333414))

(assert (not b!7693491))

(assert (not b!7693567))

(assert (not b!7693470))

(assert (not b!7693250))

(assert (not b!7693244))

(assert (not b!7693564))

(assert (not b!7693381))

(assert (not bm!709574))

(assert (not b!7693566))

(assert (not b!7693592))

(assert (not d!2333344))

(assert (not bm!709597))

(assert (not b!7693610))

(assert (not b!7693612))

(assert (not b!7693568))

(assert (not b!7693602))

(assert (not b!7693547))

(assert (not bm!709587))

(assert (not b!7693542))

(assert (not b!7693605))

(assert (not b!7693614))

(assert (not b!7693312))

(assert (not b!7693561))

(assert (not b!7693397))

(assert (not bm!709589))

(assert (not b!7693451))

(assert (not b!7693603))

(assert (not b!7693395))

(assert (not b!7693398))

(assert (not b!7693321))

(assert (not b!7693565))

(assert (not bm!709596))

(assert (not b!7693502))

(assert (not b!7693450))

(assert (not bm!709595))

(assert (not bm!709593))

(assert (not b!7693599))

(assert (not b_lambda!289169))

(assert (not b!7693613))

(assert (not b!7693443))

(assert (not d!2333390))

(assert (not bm!709579))

(assert (not bm!709575))

(assert (not b!7693315))

(assert (not b!7693314))

(assert (not b!7693541))

(assert (not b!7693607))

(assert (not bm!709590))

(assert (not b!7693560))

(assert (not d!2333408))

(assert (not b!7693449))

(assert (not d!2333342))

(assert (not b!7693593))

(assert (not bs!1956433))

(assert (not d!2333356))

(assert (not b!7693486))

(assert (not bm!709576))

(assert (not d!2333398))

(assert (not d!2333380))

(assert (not bm!709577))

(assert (not bs!1956432))

(assert (not b!7693601))

(assert (not b!7693469))

(assert (not b!7693418))

(assert tp_is_empty!51371)

(assert (not b!7693616))

(assert (not b!7693448))

(assert (not b!7693482))

(assert (not d!2333354))

(assert (not b!7693392))

(assert (not b!7693483))

(assert (not bm!709586))

(assert (not b!7693393))

(assert (not b!7693589))

(assert (not b!7693511))

(assert (not d!2333374))

(assert (not b!7693609))

(assert (not b!7693242))

(assert (not d!2333392))

(assert (not b!7693606))

(assert (not b!7693243))

(assert (not bm!709591))

(assert (not b!7693573))

(assert (not b!7693539))

(assert (not b!7693504))

(assert (not bm!709594))

(assert (not d!2333382))

(assert (not b!7693447))

(assert (not b!7693506))

(assert (not b!7693248))

(assert (not d!2333410))

(assert (not b!7693611))

(assert (not d!2333352))

(assert (not b!7693313))

(assert (not b!7693505))

(assert (not b!7693417))

(assert (not b!7693404))

(assert (not b!7693594))

(assert (not b_lambda!289167))

(assert (not b!7693399))

(assert (not b!7693538))

(assert (not b!7693527))

(assert (not b!7693526))

(assert (not b!7693503))

(assert (not b!7693456))

(assert (not bm!709578))

(assert (not d!2333346))

(assert (not b!7693316))

(assert (not d!2333350))

(assert (not b!7693396))

(assert (not b!7693484))

(assert (not b!7693588))

(assert (not bm!709573))

(assert (not b!7693485))

(assert (not d!2333416))

(assert (not b!7693382))

(assert (not b!7693615))

(assert (not d!2333376))

(assert (not b!7693540))

(assert (not d!2333370))

(assert (not bm!709562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

