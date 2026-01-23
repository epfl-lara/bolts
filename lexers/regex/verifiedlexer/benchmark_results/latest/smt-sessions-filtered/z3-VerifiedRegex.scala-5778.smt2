; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285696 () Bool)

(assert start!285696)

(declare-fun b!2942330 () Bool)

(assert (=> b!2942330 true))

(assert (=> b!2942330 true))

(declare-fun lambda!109546 () Int)

(declare-fun lambda!109545 () Int)

(assert (=> b!2942330 (not (= lambda!109546 lambda!109545))))

(assert (=> b!2942330 true))

(assert (=> b!2942330 true))

(declare-fun b!2942324 () Bool)

(declare-fun e!1854116 () Bool)

(declare-fun e!1854117 () Bool)

(assert (=> b!2942324 (= e!1854116 e!1854117)))

(declare-fun res!1214370 () Bool)

(assert (=> b!2942324 (=> res!1214370 e!1854117)))

(declare-datatypes ((C!18400 0))(
  ( (C!18401 (val!11236 Int)) )
))
(declare-datatypes ((Regex!9107 0))(
  ( (ElementMatch!9107 (c!481135 C!18400)) (Concat!14428 (regOne!18726 Regex!9107) (regTwo!18726 Regex!9107)) (EmptyExpr!9107) (Star!9107 (reg!9436 Regex!9107)) (EmptyLang!9107) (Union!9107 (regOne!18727 Regex!9107) (regTwo!18727 Regex!9107)) )
))
(declare-fun lt!1030394 () Regex!9107)

(declare-fun isEmptyLang!231 (Regex!9107) Bool)

(assert (=> b!2942324 (= res!1214370 (isEmptyLang!231 lt!1030394))))

(declare-fun lt!1030393 () Regex!9107)

(declare-fun r!17423 () Regex!9107)

(declare-fun simplify!112 (Regex!9107) Regex!9107)

(assert (=> b!2942324 (= lt!1030393 (simplify!112 (regTwo!18726 r!17423)))))

(assert (=> b!2942324 (= lt!1030394 (simplify!112 (regOne!18726 r!17423)))))

(declare-fun b!2942325 () Bool)

(declare-fun e!1854118 () Bool)

(declare-fun tp_is_empty!15777 () Bool)

(assert (=> b!2942325 (= e!1854118 tp_is_empty!15777)))

(declare-fun b!2942326 () Bool)

(declare-fun res!1214376 () Bool)

(assert (=> b!2942326 (=> res!1214376 e!1854116)))

(declare-datatypes ((List!34972 0))(
  ( (Nil!34848) (Cons!34848 (h!40268 C!18400) (t!234037 List!34972)) )
))
(declare-fun s!11993 () List!34972)

(declare-fun isEmpty!19109 (List!34972) Bool)

(assert (=> b!2942326 (= res!1214376 (isEmpty!19109 s!11993))))

(declare-fun b!2942327 () Bool)

(declare-fun res!1214375 () Bool)

(declare-fun e!1854114 () Bool)

(assert (=> b!2942327 (=> res!1214375 e!1854114)))

(declare-fun nullable!2885 (Regex!9107) Bool)

(assert (=> b!2942327 (= res!1214375 (not (nullable!2885 (regOne!18726 r!17423))))))

(declare-fun b!2942329 () Bool)

(declare-fun res!1214373 () Bool)

(assert (=> b!2942329 (=> res!1214373 e!1854114)))

(declare-fun matchR!3989 (Regex!9107 List!34972) Bool)

(assert (=> b!2942329 (= res!1214373 (not (matchR!3989 (regOne!18726 r!17423) Nil!34848)))))

(assert (=> b!2942330 (= e!1854114 true)))

(declare-fun Exists!1455 (Int) Bool)

(assert (=> b!2942330 (= (Exists!1455 lambda!109545) (Exists!1455 lambda!109546))))

(declare-datatypes ((Unit!48593 0))(
  ( (Unit!48594) )
))
(declare-fun lt!1030396 () Unit!48593)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!504 (Regex!9107 Regex!9107 List!34972) Unit!48593)

(assert (=> b!2942330 (= lt!1030396 (lemmaExistCutMatchRandMatchRSpecEquivalent!504 (regOne!18726 r!17423) (regTwo!18726 r!17423) s!11993))))

(assert (=> b!2942330 (Exists!1455 lambda!109545)))

(declare-fun lt!1030392 () Unit!48593)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!806 (Regex!9107 Regex!9107 List!34972) Unit!48593)

(assert (=> b!2942330 (= lt!1030392 (lemmaFindConcatSeparationEquivalentToExists!806 (regOne!18726 r!17423) (regTwo!18726 r!17423) s!11993))))

(declare-datatypes ((tuple2!33800 0))(
  ( (tuple2!33801 (_1!20032 List!34972) (_2!20032 List!34972)) )
))
(declare-datatypes ((Option!6632 0))(
  ( (None!6631) (Some!6631 (v!34765 tuple2!33800)) )
))
(declare-fun isDefined!5183 (Option!6632) Bool)

(declare-fun findConcatSeparation!1026 (Regex!9107 Regex!9107 List!34972 List!34972 List!34972) Option!6632)

(assert (=> b!2942330 (isDefined!5183 (findConcatSeparation!1026 (regOne!18726 r!17423) (regTwo!18726 r!17423) Nil!34848 s!11993 s!11993))))

(declare-fun lt!1030395 () Unit!48593)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!14 (Regex!9107 Regex!9107 List!34972 List!34972 List!34972 List!34972 List!34972) Unit!48593)

(assert (=> b!2942330 (= lt!1030395 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!14 (regOne!18726 r!17423) (regTwo!18726 r!17423) Nil!34848 s!11993 s!11993 Nil!34848 s!11993))))

(declare-fun b!2942331 () Bool)

(declare-fun e!1854119 () Bool)

(declare-fun tp!941526 () Bool)

(assert (=> b!2942331 (= e!1854119 (and tp_is_empty!15777 tp!941526))))

(declare-fun b!2942332 () Bool)

(declare-fun res!1214374 () Bool)

(assert (=> b!2942332 (=> res!1214374 e!1854117)))

(declare-fun isEmptyExpr!312 (Regex!9107) Bool)

(assert (=> b!2942332 (= res!1214374 (not (isEmptyExpr!312 lt!1030394)))))

(declare-fun b!2942333 () Bool)

(assert (=> b!2942333 (= e!1854117 e!1854114)))

(declare-fun res!1214377 () Bool)

(assert (=> b!2942333 (=> res!1214377 e!1854114)))

(declare-fun lt!1030390 () Bool)

(assert (=> b!2942333 (= res!1214377 (not lt!1030390))))

(assert (=> b!2942333 (= lt!1030390 (matchR!3989 lt!1030393 s!11993))))

(assert (=> b!2942333 (= lt!1030390 (matchR!3989 (regTwo!18726 r!17423) s!11993))))

(declare-fun lt!1030389 () Unit!48593)

(declare-fun lemmaSimplifySound!96 (Regex!9107 List!34972) Unit!48593)

(assert (=> b!2942333 (= lt!1030389 (lemmaSimplifySound!96 (regTwo!18726 r!17423) s!11993))))

(declare-fun b!2942334 () Bool)

(declare-fun res!1214378 () Bool)

(assert (=> b!2942334 (=> res!1214378 e!1854117)))

(assert (=> b!2942334 (= res!1214378 (isEmptyLang!231 lt!1030393))))

(declare-fun b!2942335 () Bool)

(declare-fun tp!941528 () Bool)

(declare-fun tp!941529 () Bool)

(assert (=> b!2942335 (= e!1854118 (and tp!941528 tp!941529))))

(declare-fun b!2942328 () Bool)

(declare-fun tp!941525 () Bool)

(declare-fun tp!941524 () Bool)

(assert (=> b!2942328 (= e!1854118 (and tp!941525 tp!941524))))

(declare-fun res!1214371 () Bool)

(declare-fun e!1854115 () Bool)

(assert (=> start!285696 (=> (not res!1214371) (not e!1854115))))

(declare-fun validRegex!3840 (Regex!9107) Bool)

(assert (=> start!285696 (= res!1214371 (validRegex!3840 r!17423))))

(assert (=> start!285696 e!1854115))

(assert (=> start!285696 e!1854118))

(assert (=> start!285696 e!1854119))

(declare-fun b!2942336 () Bool)

(declare-fun tp!941527 () Bool)

(assert (=> b!2942336 (= e!1854118 tp!941527)))

(declare-fun b!2942337 () Bool)

(assert (=> b!2942337 (= e!1854115 (not e!1854116))))

(declare-fun res!1214372 () Bool)

(assert (=> b!2942337 (=> res!1214372 e!1854116)))

(declare-fun lt!1030397 () Bool)

(get-info :version)

(assert (=> b!2942337 (= res!1214372 (or lt!1030397 (not ((_ is Concat!14428) r!17423))))))

(declare-fun matchRSpec!1244 (Regex!9107 List!34972) Bool)

(assert (=> b!2942337 (= lt!1030397 (matchRSpec!1244 r!17423 s!11993))))

(assert (=> b!2942337 (= lt!1030397 (matchR!3989 r!17423 s!11993))))

(declare-fun lt!1030391 () Unit!48593)

(declare-fun mainMatchTheorem!1244 (Regex!9107 List!34972) Unit!48593)

(assert (=> b!2942337 (= lt!1030391 (mainMatchTheorem!1244 r!17423 s!11993))))

(assert (= (and start!285696 res!1214371) b!2942337))

(assert (= (and b!2942337 (not res!1214372)) b!2942326))

(assert (= (and b!2942326 (not res!1214376)) b!2942324))

(assert (= (and b!2942324 (not res!1214370)) b!2942334))

(assert (= (and b!2942334 (not res!1214378)) b!2942332))

(assert (= (and b!2942332 (not res!1214374)) b!2942333))

(assert (= (and b!2942333 (not res!1214377)) b!2942327))

(assert (= (and b!2942327 (not res!1214375)) b!2942329))

(assert (= (and b!2942329 (not res!1214373)) b!2942330))

(assert (= (and start!285696 ((_ is ElementMatch!9107) r!17423)) b!2942325))

(assert (= (and start!285696 ((_ is Concat!14428) r!17423)) b!2942335))

(assert (= (and start!285696 ((_ is Star!9107) r!17423)) b!2942336))

(assert (= (and start!285696 ((_ is Union!9107) r!17423)) b!2942328))

(assert (= (and start!285696 ((_ is Cons!34848) s!11993)) b!2942331))

(declare-fun m!3326045 () Bool)

(assert (=> b!2942324 m!3326045))

(declare-fun m!3326047 () Bool)

(assert (=> b!2942324 m!3326047))

(declare-fun m!3326049 () Bool)

(assert (=> b!2942324 m!3326049))

(declare-fun m!3326051 () Bool)

(assert (=> b!2942330 m!3326051))

(declare-fun m!3326053 () Bool)

(assert (=> b!2942330 m!3326053))

(declare-fun m!3326055 () Bool)

(assert (=> b!2942330 m!3326055))

(declare-fun m!3326057 () Bool)

(assert (=> b!2942330 m!3326057))

(assert (=> b!2942330 m!3326055))

(declare-fun m!3326059 () Bool)

(assert (=> b!2942330 m!3326059))

(declare-fun m!3326061 () Bool)

(assert (=> b!2942330 m!3326061))

(assert (=> b!2942330 m!3326053))

(declare-fun m!3326063 () Bool)

(assert (=> b!2942330 m!3326063))

(declare-fun m!3326065 () Bool)

(assert (=> b!2942333 m!3326065))

(declare-fun m!3326067 () Bool)

(assert (=> b!2942333 m!3326067))

(declare-fun m!3326069 () Bool)

(assert (=> b!2942333 m!3326069))

(declare-fun m!3326071 () Bool)

(assert (=> b!2942327 m!3326071))

(declare-fun m!3326073 () Bool)

(assert (=> b!2942334 m!3326073))

(declare-fun m!3326075 () Bool)

(assert (=> b!2942337 m!3326075))

(declare-fun m!3326077 () Bool)

(assert (=> b!2942337 m!3326077))

(declare-fun m!3326079 () Bool)

(assert (=> b!2942337 m!3326079))

(declare-fun m!3326081 () Bool)

(assert (=> b!2942326 m!3326081))

(declare-fun m!3326083 () Bool)

(assert (=> b!2942329 m!3326083))

(declare-fun m!3326085 () Bool)

(assert (=> b!2942332 m!3326085))

(declare-fun m!3326087 () Bool)

(assert (=> start!285696 m!3326087))

(check-sat (not b!2942331) (not b!2942326) (not b!2942335) (not b!2942329) (not b!2942336) (not b!2942332) (not b!2942327) (not start!285696) (not b!2942334) (not b!2942333) (not b!2942330) tp_is_empty!15777 (not b!2942328) (not b!2942324) (not b!2942337))
(check-sat)
