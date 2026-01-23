; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284340 () Bool)

(assert start!284340)

(declare-fun b!2919835 () Bool)

(declare-fun e!1842132 () Bool)

(declare-fun tp_is_empty!15545 () Bool)

(declare-fun tp!937083 () Bool)

(assert (=> b!2919835 (= e!1842132 (and tp_is_empty!15545 tp!937083))))

(declare-fun b!2919836 () Bool)

(declare-fun e!1842137 () Bool)

(declare-fun e!1842136 () Bool)

(assert (=> b!2919836 (= e!1842137 e!1842136)))

(declare-fun res!1205410 () Bool)

(assert (=> b!2919836 (=> res!1205410 e!1842136)))

(declare-fun lt!1025503 () Bool)

(assert (=> b!2919836 (= res!1205410 (not lt!1025503))))

(declare-fun e!1842134 () Bool)

(assert (=> b!2919836 e!1842134))

(declare-fun res!1205407 () Bool)

(assert (=> b!2919836 (=> res!1205407 e!1842134)))

(assert (=> b!2919836 (= res!1205407 lt!1025503)))

(declare-datatypes ((C!18168 0))(
  ( (C!18169 (val!11120 Int)) )
))
(declare-datatypes ((Regex!8991 0))(
  ( (ElementMatch!8991 (c!476389 C!18168)) (Concat!14312 (regOne!18494 Regex!8991) (regTwo!18494 Regex!8991)) (EmptyExpr!8991) (Star!8991 (reg!9320 Regex!8991)) (EmptyLang!8991) (Union!8991 (regOne!18495 Regex!8991) (regTwo!18495 Regex!8991)) )
))
(declare-fun r!17423 () Regex!8991)

(declare-datatypes ((List!34856 0))(
  ( (Nil!34732) (Cons!34732 (h!40152 C!18168) (t!233921 List!34856)) )
))
(declare-fun s!11993 () List!34856)

(declare-fun matchR!3873 (Regex!8991 List!34856) Bool)

(assert (=> b!2919836 (= lt!1025503 (matchR!3873 (regOne!18495 r!17423) s!11993))))

(declare-datatypes ((Unit!48321 0))(
  ( (Unit!48322) )
))
(declare-fun lt!1025500 () Unit!48321)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!240 (Regex!8991 Regex!8991 List!34856) Unit!48321)

(assert (=> b!2919836 (= lt!1025500 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!240 (regOne!18495 r!17423) (regTwo!18495 r!17423) s!11993))))

(declare-fun b!2919837 () Bool)

(declare-fun e!1842133 () Bool)

(declare-fun tp!937081 () Bool)

(declare-fun tp!937082 () Bool)

(assert (=> b!2919837 (= e!1842133 (and tp!937081 tp!937082))))

(declare-fun b!2919838 () Bool)

(declare-fun tp!937085 () Bool)

(assert (=> b!2919838 (= e!1842133 tp!937085)))

(declare-fun b!2919840 () Bool)

(assert (=> b!2919840 (= e!1842133 tp_is_empty!15545)))

(declare-fun b!2919841 () Bool)

(declare-fun tp!937084 () Bool)

(declare-fun tp!937080 () Bool)

(assert (=> b!2919841 (= e!1842133 (and tp!937084 tp!937080))))

(declare-fun b!2919842 () Bool)

(declare-fun lt!1025505 () Regex!8991)

(declare-fun validRegex!3724 (Regex!8991) Bool)

(assert (=> b!2919842 (= e!1842136 (validRegex!3724 lt!1025505))))

(assert (=> b!2919842 (matchR!3873 lt!1025505 s!11993)))

(declare-fun simplify!22 (Regex!8991) Regex!8991)

(assert (=> b!2919842 (= lt!1025505 (simplify!22 (regOne!18495 r!17423)))))

(declare-fun lt!1025502 () Unit!48321)

(declare-fun lemmaSimplifySound!20 (Regex!8991 List!34856) Unit!48321)

(assert (=> b!2919842 (= lt!1025502 (lemmaSimplifySound!20 (regOne!18495 r!17423) s!11993))))

(declare-fun b!2919843 () Bool)

(declare-fun e!1842135 () Bool)

(assert (=> b!2919843 (= e!1842135 (not e!1842137))))

(declare-fun res!1205409 () Bool)

(assert (=> b!2919843 (=> res!1205409 e!1842137)))

(declare-fun lt!1025504 () Bool)

(get-info :version)

(assert (=> b!2919843 (= res!1205409 (or (not lt!1025504) ((_ is Concat!14312) r!17423) (not ((_ is Union!8991) r!17423))))))

(declare-fun matchRSpec!1128 (Regex!8991 List!34856) Bool)

(assert (=> b!2919843 (= lt!1025504 (matchRSpec!1128 r!17423 s!11993))))

(assert (=> b!2919843 (= lt!1025504 (matchR!3873 r!17423 s!11993))))

(declare-fun lt!1025501 () Unit!48321)

(declare-fun mainMatchTheorem!1128 (Regex!8991 List!34856) Unit!48321)

(assert (=> b!2919843 (= lt!1025501 (mainMatchTheorem!1128 r!17423 s!11993))))

(declare-fun b!2919839 () Bool)

(assert (=> b!2919839 (= e!1842134 (matchR!3873 (regTwo!18495 r!17423) s!11993))))

(declare-fun res!1205408 () Bool)

(assert (=> start!284340 (=> (not res!1205408) (not e!1842135))))

(assert (=> start!284340 (= res!1205408 (validRegex!3724 r!17423))))

(assert (=> start!284340 e!1842135))

(assert (=> start!284340 e!1842133))

(assert (=> start!284340 e!1842132))

(assert (= (and start!284340 res!1205408) b!2919843))

(assert (= (and b!2919843 (not res!1205409)) b!2919836))

(assert (= (and b!2919836 (not res!1205407)) b!2919839))

(assert (= (and b!2919836 (not res!1205410)) b!2919842))

(assert (= (and start!284340 ((_ is ElementMatch!8991) r!17423)) b!2919840))

(assert (= (and start!284340 ((_ is Concat!14312) r!17423)) b!2919837))

(assert (= (and start!284340 ((_ is Star!8991) r!17423)) b!2919838))

(assert (= (and start!284340 ((_ is Union!8991) r!17423)) b!2919841))

(assert (= (and start!284340 ((_ is Cons!34732) s!11993)) b!2919835))

(declare-fun m!3316631 () Bool)

(assert (=> b!2919839 m!3316631))

(declare-fun m!3316633 () Bool)

(assert (=> b!2919836 m!3316633))

(declare-fun m!3316635 () Bool)

(assert (=> b!2919836 m!3316635))

(declare-fun m!3316637 () Bool)

(assert (=> start!284340 m!3316637))

(declare-fun m!3316639 () Bool)

(assert (=> b!2919843 m!3316639))

(declare-fun m!3316641 () Bool)

(assert (=> b!2919843 m!3316641))

(declare-fun m!3316643 () Bool)

(assert (=> b!2919843 m!3316643))

(declare-fun m!3316645 () Bool)

(assert (=> b!2919842 m!3316645))

(declare-fun m!3316647 () Bool)

(assert (=> b!2919842 m!3316647))

(declare-fun m!3316649 () Bool)

(assert (=> b!2919842 m!3316649))

(declare-fun m!3316651 () Bool)

(assert (=> b!2919842 m!3316651))

(check-sat (not b!2919839) tp_is_empty!15545 (not b!2919842) (not b!2919841) (not b!2919835) (not b!2919843) (not start!284340) (not b!2919837) (not b!2919838) (not b!2919836))
(check-sat)
(get-model)

(declare-fun b!2919900 () Bool)

(declare-fun e!1842171 () Bool)

(declare-fun e!1842170 () Bool)

(assert (=> b!2919900 (= e!1842171 e!1842170)))

(declare-fun res!1205449 () Bool)

(assert (=> b!2919900 (=> (not res!1205449) (not e!1842170))))

(declare-fun lt!1025510 () Bool)

(assert (=> b!2919900 (= res!1205449 (not lt!1025510))))

(declare-fun b!2919901 () Bool)

(declare-fun e!1842172 () Bool)

(declare-fun e!1842169 () Bool)

(assert (=> b!2919901 (= e!1842172 e!1842169)))

(declare-fun c!476402 () Bool)

(assert (=> b!2919901 (= c!476402 ((_ is EmptyLang!8991) (regOne!18495 r!17423)))))

(declare-fun b!2919902 () Bool)

(declare-fun call!190997 () Bool)

(assert (=> b!2919902 (= e!1842172 (= lt!1025510 call!190997))))

(declare-fun b!2919903 () Bool)

(declare-fun e!1842168 () Bool)

(declare-fun head!6489 (List!34856) C!18168)

(assert (=> b!2919903 (= e!1842168 (not (= (head!6489 s!11993) (c!476389 (regOne!18495 r!17423)))))))

(declare-fun b!2919904 () Bool)

(declare-fun e!1842166 () Bool)

(declare-fun nullable!2816 (Regex!8991) Bool)

(assert (=> b!2919904 (= e!1842166 (nullable!2816 (regOne!18495 r!17423)))))

(declare-fun d!838471 () Bool)

(assert (=> d!838471 e!1842172))

(declare-fun c!476403 () Bool)

(assert (=> d!838471 (= c!476403 ((_ is EmptyExpr!8991) (regOne!18495 r!17423)))))

(assert (=> d!838471 (= lt!1025510 e!1842166)))

(declare-fun c!476404 () Bool)

(declare-fun isEmpty!18986 (List!34856) Bool)

(assert (=> d!838471 (= c!476404 (isEmpty!18986 s!11993))))

(assert (=> d!838471 (validRegex!3724 (regOne!18495 r!17423))))

(assert (=> d!838471 (= (matchR!3873 (regOne!18495 r!17423) s!11993) lt!1025510)))

(declare-fun b!2919905 () Bool)

(declare-fun res!1205444 () Bool)

(assert (=> b!2919905 (=> res!1205444 e!1842171)))

(assert (=> b!2919905 (= res!1205444 (not ((_ is ElementMatch!8991) (regOne!18495 r!17423))))))

(assert (=> b!2919905 (= e!1842169 e!1842171)))

(declare-fun bm!190992 () Bool)

(assert (=> bm!190992 (= call!190997 (isEmpty!18986 s!11993))))

(declare-fun b!2919906 () Bool)

(declare-fun res!1205446 () Bool)

(declare-fun e!1842167 () Bool)

(assert (=> b!2919906 (=> (not res!1205446) (not e!1842167))))

(assert (=> b!2919906 (= res!1205446 (not call!190997))))

(declare-fun b!2919907 () Bool)

(declare-fun res!1205450 () Bool)

(assert (=> b!2919907 (=> res!1205450 e!1842168)))

(declare-fun tail!4715 (List!34856) List!34856)

(assert (=> b!2919907 (= res!1205450 (not (isEmpty!18986 (tail!4715 s!11993))))))

(declare-fun b!2919908 () Bool)

(declare-fun res!1205445 () Bool)

(assert (=> b!2919908 (=> (not res!1205445) (not e!1842167))))

(assert (=> b!2919908 (= res!1205445 (isEmpty!18986 (tail!4715 s!11993)))))

(declare-fun b!2919909 () Bool)

(declare-fun derivativeStep!2430 (Regex!8991 C!18168) Regex!8991)

(assert (=> b!2919909 (= e!1842166 (matchR!3873 (derivativeStep!2430 (regOne!18495 r!17423) (head!6489 s!11993)) (tail!4715 s!11993)))))

(declare-fun b!2919910 () Bool)

(declare-fun res!1205443 () Bool)

(assert (=> b!2919910 (=> res!1205443 e!1842171)))

(assert (=> b!2919910 (= res!1205443 e!1842167)))

(declare-fun res!1205447 () Bool)

(assert (=> b!2919910 (=> (not res!1205447) (not e!1842167))))

(assert (=> b!2919910 (= res!1205447 lt!1025510)))

(declare-fun b!2919911 () Bool)

(assert (=> b!2919911 (= e!1842169 (not lt!1025510))))

(declare-fun b!2919912 () Bool)

(assert (=> b!2919912 (= e!1842167 (= (head!6489 s!11993) (c!476389 (regOne!18495 r!17423))))))

(declare-fun b!2919913 () Bool)

(assert (=> b!2919913 (= e!1842170 e!1842168)))

(declare-fun res!1205448 () Bool)

(assert (=> b!2919913 (=> res!1205448 e!1842168)))

(assert (=> b!2919913 (= res!1205448 call!190997)))

(assert (= (and d!838471 c!476404) b!2919904))

(assert (= (and d!838471 (not c!476404)) b!2919909))

(assert (= (and d!838471 c!476403) b!2919902))

(assert (= (and d!838471 (not c!476403)) b!2919901))

(assert (= (and b!2919901 c!476402) b!2919911))

(assert (= (and b!2919901 (not c!476402)) b!2919905))

(assert (= (and b!2919905 (not res!1205444)) b!2919910))

(assert (= (and b!2919910 res!1205447) b!2919906))

(assert (= (and b!2919906 res!1205446) b!2919908))

(assert (= (and b!2919908 res!1205445) b!2919912))

(assert (= (and b!2919910 (not res!1205443)) b!2919900))

(assert (= (and b!2919900 res!1205449) b!2919913))

(assert (= (and b!2919913 (not res!1205448)) b!2919907))

(assert (= (and b!2919907 (not res!1205450)) b!2919903))

(assert (= (or b!2919902 b!2919906 b!2919913) bm!190992))

(declare-fun m!3316653 () Bool)

(assert (=> bm!190992 m!3316653))

(declare-fun m!3316655 () Bool)

(assert (=> b!2919903 m!3316655))

(declare-fun m!3316657 () Bool)

(assert (=> b!2919907 m!3316657))

(assert (=> b!2919907 m!3316657))

(declare-fun m!3316659 () Bool)

(assert (=> b!2919907 m!3316659))

(declare-fun m!3316661 () Bool)

(assert (=> b!2919904 m!3316661))

(assert (=> d!838471 m!3316653))

(declare-fun m!3316663 () Bool)

(assert (=> d!838471 m!3316663))

(assert (=> b!2919908 m!3316657))

(assert (=> b!2919908 m!3316657))

(assert (=> b!2919908 m!3316659))

(assert (=> b!2919912 m!3316655))

(assert (=> b!2919909 m!3316655))

(assert (=> b!2919909 m!3316655))

(declare-fun m!3316665 () Bool)

(assert (=> b!2919909 m!3316665))

(assert (=> b!2919909 m!3316657))

(assert (=> b!2919909 m!3316665))

(assert (=> b!2919909 m!3316657))

(declare-fun m!3316667 () Bool)

(assert (=> b!2919909 m!3316667))

(assert (=> b!2919836 d!838471))

(declare-fun d!838473 () Bool)

(declare-fun e!1842178 () Bool)

(assert (=> d!838473 e!1842178))

(declare-fun res!1205456 () Bool)

(assert (=> d!838473 (=> res!1205456 e!1842178)))

(assert (=> d!838473 (= res!1205456 (matchR!3873 (regOne!18495 r!17423) s!11993))))

(declare-fun lt!1025513 () Unit!48321)

(declare-fun choose!17213 (Regex!8991 Regex!8991 List!34856) Unit!48321)

(assert (=> d!838473 (= lt!1025513 (choose!17213 (regOne!18495 r!17423) (regTwo!18495 r!17423) s!11993))))

(declare-fun e!1842177 () Bool)

(assert (=> d!838473 e!1842177))

(declare-fun res!1205455 () Bool)

(assert (=> d!838473 (=> (not res!1205455) (not e!1842177))))

(assert (=> d!838473 (= res!1205455 (validRegex!3724 (regOne!18495 r!17423)))))

(assert (=> d!838473 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!240 (regOne!18495 r!17423) (regTwo!18495 r!17423) s!11993) lt!1025513)))

(declare-fun b!2919918 () Bool)

(assert (=> b!2919918 (= e!1842177 (validRegex!3724 (regTwo!18495 r!17423)))))

(declare-fun b!2919919 () Bool)

(assert (=> b!2919919 (= e!1842178 (matchR!3873 (regTwo!18495 r!17423) s!11993))))

(assert (= (and d!838473 res!1205455) b!2919918))

(assert (= (and d!838473 (not res!1205456)) b!2919919))

(assert (=> d!838473 m!3316633))

(declare-fun m!3316669 () Bool)

(assert (=> d!838473 m!3316669))

(assert (=> d!838473 m!3316663))

(declare-fun m!3316671 () Bool)

(assert (=> b!2919918 m!3316671))

(assert (=> b!2919919 m!3316631))

(assert (=> b!2919836 d!838473))

(declare-fun b!2919952 () Bool)

(declare-fun e!1842201 () Bool)

(declare-fun call!191007 () Bool)

(assert (=> b!2919952 (= e!1842201 call!191007)))

(declare-fun bm!191002 () Bool)

(declare-fun call!191008 () Bool)

(declare-fun c!476412 () Bool)

(assert (=> bm!191002 (= call!191008 (validRegex!3724 (ite c!476412 (regTwo!18495 lt!1025505) (regOne!18494 lt!1025505))))))

(declare-fun b!2919953 () Bool)

(declare-fun e!1842202 () Bool)

(declare-fun e!1842205 () Bool)

(assert (=> b!2919953 (= e!1842202 e!1842205)))

(declare-fun c!476413 () Bool)

(assert (=> b!2919953 (= c!476413 ((_ is Star!8991) lt!1025505))))

(declare-fun b!2919954 () Bool)

(declare-fun res!1205477 () Bool)

(declare-fun e!1842203 () Bool)

(assert (=> b!2919954 (=> res!1205477 e!1842203)))

(assert (=> b!2919954 (= res!1205477 (not ((_ is Concat!14312) lt!1025505)))))

(declare-fun e!1842200 () Bool)

(assert (=> b!2919954 (= e!1842200 e!1842203)))

(declare-fun b!2919955 () Bool)

(assert (=> b!2919955 (= e!1842205 e!1842201)))

(declare-fun res!1205475 () Bool)

(assert (=> b!2919955 (= res!1205475 (not (nullable!2816 (reg!9320 lt!1025505))))))

(assert (=> b!2919955 (=> (not res!1205475) (not e!1842201))))

(declare-fun b!2919956 () Bool)

(declare-fun e!1842206 () Bool)

(declare-fun call!191009 () Bool)

(assert (=> b!2919956 (= e!1842206 call!191009)))

(declare-fun bm!191004 () Bool)

(assert (=> bm!191004 (= call!191009 call!191007)))

(declare-fun b!2919957 () Bool)

(declare-fun e!1842204 () Bool)

(assert (=> b!2919957 (= e!1842204 call!191008)))

(declare-fun b!2919958 () Bool)

(assert (=> b!2919958 (= e!1842205 e!1842200)))

(assert (=> b!2919958 (= c!476412 ((_ is Union!8991) lt!1025505))))

(declare-fun b!2919959 () Bool)

(declare-fun res!1205478 () Bool)

(assert (=> b!2919959 (=> (not res!1205478) (not e!1842204))))

(assert (=> b!2919959 (= res!1205478 call!191009)))

(assert (=> b!2919959 (= e!1842200 e!1842204)))

(declare-fun b!2919960 () Bool)

(assert (=> b!2919960 (= e!1842203 e!1842206)))

(declare-fun res!1205476 () Bool)

(assert (=> b!2919960 (=> (not res!1205476) (not e!1842206))))

(assert (=> b!2919960 (= res!1205476 call!191008)))

(declare-fun d!838475 () Bool)

(declare-fun res!1205479 () Bool)

(assert (=> d!838475 (=> res!1205479 e!1842202)))

(assert (=> d!838475 (= res!1205479 ((_ is ElementMatch!8991) lt!1025505))))

(assert (=> d!838475 (= (validRegex!3724 lt!1025505) e!1842202)))

(declare-fun bm!191003 () Bool)

(assert (=> bm!191003 (= call!191007 (validRegex!3724 (ite c!476413 (reg!9320 lt!1025505) (ite c!476412 (regOne!18495 lt!1025505) (regTwo!18494 lt!1025505)))))))

(assert (= (and d!838475 (not res!1205479)) b!2919953))

(assert (= (and b!2919953 c!476413) b!2919955))

(assert (= (and b!2919953 (not c!476413)) b!2919958))

(assert (= (and b!2919955 res!1205475) b!2919952))

(assert (= (and b!2919958 c!476412) b!2919959))

(assert (= (and b!2919958 (not c!476412)) b!2919954))

(assert (= (and b!2919959 res!1205478) b!2919957))

(assert (= (and b!2919954 (not res!1205477)) b!2919960))

(assert (= (and b!2919960 res!1205476) b!2919956))

(assert (= (or b!2919959 b!2919956) bm!191004))

(assert (= (or b!2919957 b!2919960) bm!191002))

(assert (= (or b!2919952 bm!191004) bm!191003))

(declare-fun m!3316679 () Bool)

(assert (=> bm!191002 m!3316679))

(declare-fun m!3316683 () Bool)

(assert (=> b!2919955 m!3316683))

(declare-fun m!3316687 () Bool)

(assert (=> bm!191003 m!3316687))

(assert (=> b!2919842 d!838475))

(declare-fun b!2919961 () Bool)

(declare-fun e!1842212 () Bool)

(declare-fun e!1842211 () Bool)

(assert (=> b!2919961 (= e!1842212 e!1842211)))

(declare-fun res!1205486 () Bool)

(assert (=> b!2919961 (=> (not res!1205486) (not e!1842211))))

(declare-fun lt!1025515 () Bool)

(assert (=> b!2919961 (= res!1205486 (not lt!1025515))))

(declare-fun b!2919962 () Bool)

(declare-fun e!1842213 () Bool)

(declare-fun e!1842210 () Bool)

(assert (=> b!2919962 (= e!1842213 e!1842210)))

(declare-fun c!476414 () Bool)

(assert (=> b!2919962 (= c!476414 ((_ is EmptyLang!8991) lt!1025505))))

(declare-fun b!2919963 () Bool)

(declare-fun call!191010 () Bool)

(assert (=> b!2919963 (= e!1842213 (= lt!1025515 call!191010))))

(declare-fun b!2919964 () Bool)

(declare-fun e!1842209 () Bool)

(assert (=> b!2919964 (= e!1842209 (not (= (head!6489 s!11993) (c!476389 lt!1025505))))))

(declare-fun b!2919965 () Bool)

(declare-fun e!1842207 () Bool)

(assert (=> b!2919965 (= e!1842207 (nullable!2816 lt!1025505))))

(declare-fun d!838477 () Bool)

(assert (=> d!838477 e!1842213))

(declare-fun c!476415 () Bool)

(assert (=> d!838477 (= c!476415 ((_ is EmptyExpr!8991) lt!1025505))))

(assert (=> d!838477 (= lt!1025515 e!1842207)))

(declare-fun c!476416 () Bool)

(assert (=> d!838477 (= c!476416 (isEmpty!18986 s!11993))))

(assert (=> d!838477 (validRegex!3724 lt!1025505)))

(assert (=> d!838477 (= (matchR!3873 lt!1025505 s!11993) lt!1025515)))

(declare-fun b!2919966 () Bool)

(declare-fun res!1205481 () Bool)

(assert (=> b!2919966 (=> res!1205481 e!1842212)))

(assert (=> b!2919966 (= res!1205481 (not ((_ is ElementMatch!8991) lt!1025505)))))

(assert (=> b!2919966 (= e!1842210 e!1842212)))

(declare-fun bm!191005 () Bool)

(assert (=> bm!191005 (= call!191010 (isEmpty!18986 s!11993))))

(declare-fun b!2919967 () Bool)

(declare-fun res!1205483 () Bool)

(declare-fun e!1842208 () Bool)

(assert (=> b!2919967 (=> (not res!1205483) (not e!1842208))))

(assert (=> b!2919967 (= res!1205483 (not call!191010))))

(declare-fun b!2919968 () Bool)

(declare-fun res!1205487 () Bool)

(assert (=> b!2919968 (=> res!1205487 e!1842209)))

(assert (=> b!2919968 (= res!1205487 (not (isEmpty!18986 (tail!4715 s!11993))))))

(declare-fun b!2919969 () Bool)

(declare-fun res!1205482 () Bool)

(assert (=> b!2919969 (=> (not res!1205482) (not e!1842208))))

(assert (=> b!2919969 (= res!1205482 (isEmpty!18986 (tail!4715 s!11993)))))

(declare-fun b!2919970 () Bool)

(assert (=> b!2919970 (= e!1842207 (matchR!3873 (derivativeStep!2430 lt!1025505 (head!6489 s!11993)) (tail!4715 s!11993)))))

(declare-fun b!2919971 () Bool)

(declare-fun res!1205480 () Bool)

(assert (=> b!2919971 (=> res!1205480 e!1842212)))

(assert (=> b!2919971 (= res!1205480 e!1842208)))

(declare-fun res!1205484 () Bool)

(assert (=> b!2919971 (=> (not res!1205484) (not e!1842208))))

(assert (=> b!2919971 (= res!1205484 lt!1025515)))

(declare-fun b!2919972 () Bool)

(assert (=> b!2919972 (= e!1842210 (not lt!1025515))))

(declare-fun b!2919973 () Bool)

(assert (=> b!2919973 (= e!1842208 (= (head!6489 s!11993) (c!476389 lt!1025505)))))

(declare-fun b!2919974 () Bool)

(assert (=> b!2919974 (= e!1842211 e!1842209)))

(declare-fun res!1205485 () Bool)

(assert (=> b!2919974 (=> res!1205485 e!1842209)))

(assert (=> b!2919974 (= res!1205485 call!191010)))

(assert (= (and d!838477 c!476416) b!2919965))

(assert (= (and d!838477 (not c!476416)) b!2919970))

(assert (= (and d!838477 c!476415) b!2919963))

(assert (= (and d!838477 (not c!476415)) b!2919962))

(assert (= (and b!2919962 c!476414) b!2919972))

(assert (= (and b!2919962 (not c!476414)) b!2919966))

(assert (= (and b!2919966 (not res!1205481)) b!2919971))

(assert (= (and b!2919971 res!1205484) b!2919967))

(assert (= (and b!2919967 res!1205483) b!2919969))

(assert (= (and b!2919969 res!1205482) b!2919973))

(assert (= (and b!2919971 (not res!1205480)) b!2919961))

(assert (= (and b!2919961 res!1205486) b!2919974))

(assert (= (and b!2919974 (not res!1205485)) b!2919968))

(assert (= (and b!2919968 (not res!1205487)) b!2919964))

(assert (= (or b!2919963 b!2919967 b!2919974) bm!191005))

(assert (=> bm!191005 m!3316653))

(assert (=> b!2919964 m!3316655))

(assert (=> b!2919968 m!3316657))

(assert (=> b!2919968 m!3316657))

(assert (=> b!2919968 m!3316659))

(declare-fun m!3316695 () Bool)

(assert (=> b!2919965 m!3316695))

(assert (=> d!838477 m!3316653))

(assert (=> d!838477 m!3316645))

(assert (=> b!2919969 m!3316657))

(assert (=> b!2919969 m!3316657))

(assert (=> b!2919969 m!3316659))

(assert (=> b!2919973 m!3316655))

(assert (=> b!2919970 m!3316655))

(assert (=> b!2919970 m!3316655))

(declare-fun m!3316697 () Bool)

(assert (=> b!2919970 m!3316697))

(assert (=> b!2919970 m!3316657))

(assert (=> b!2919970 m!3316697))

(assert (=> b!2919970 m!3316657))

(declare-fun m!3316699 () Bool)

(assert (=> b!2919970 m!3316699))

(assert (=> b!2919842 d!838477))

(declare-fun b!2920047 () Bool)

(declare-fun c!476456 () Bool)

(declare-fun lt!1025530 () Regex!8991)

(declare-fun isEmptyExpr!254 (Regex!8991) Bool)

(assert (=> b!2920047 (= c!476456 (isEmptyExpr!254 lt!1025530))))

(declare-fun e!1842260 () Regex!8991)

(declare-fun e!1842269 () Regex!8991)

(assert (=> b!2920047 (= e!1842260 e!1842269)))

(declare-fun b!2920048 () Bool)

(declare-fun c!476449 () Bool)

(assert (=> b!2920048 (= c!476449 ((_ is Union!8991) (regOne!18495 r!17423)))))

(declare-fun e!1842264 () Regex!8991)

(declare-fun e!1842259 () Regex!8991)

(assert (=> b!2920048 (= e!1842264 e!1842259)))

(declare-fun b!2920049 () Bool)

(declare-fun e!1842257 () Regex!8991)

(assert (=> b!2920049 (= e!1842257 (regOne!18495 r!17423))))

(declare-fun b!2920050 () Bool)

(declare-fun e!1842266 () Regex!8991)

(declare-fun lt!1025533 () Regex!8991)

(assert (=> b!2920050 (= e!1842266 (Concat!14312 lt!1025530 lt!1025533))))

(declare-fun b!2920051 () Bool)

(assert (=> b!2920051 (= e!1842260 EmptyLang!8991)))

(declare-fun b!2920052 () Bool)

(declare-fun e!1842262 () Regex!8991)

(assert (=> b!2920052 (= e!1842262 EmptyExpr!8991)))

(declare-fun b!2920053 () Bool)

(assert (=> b!2920053 (= e!1842269 lt!1025533)))

(declare-fun b!2920054 () Bool)

(declare-fun e!1842256 () Regex!8991)

(declare-fun lt!1025531 () Regex!8991)

(assert (=> b!2920054 (= e!1842256 lt!1025531)))

(declare-fun call!191028 () Bool)

(declare-fun bm!191020 () Bool)

(declare-fun isEmptyLang!169 (Regex!8991) Bool)

(assert (=> bm!191020 (= call!191028 (isEmptyLang!169 (ite c!476449 lt!1025531 lt!1025533)))))

(declare-fun bm!191021 () Bool)

(declare-fun call!191025 () Regex!8991)

(declare-fun call!191026 () Regex!8991)

(assert (=> bm!191021 (= call!191025 call!191026)))

(declare-fun b!2920055 () Bool)

(declare-fun e!1842267 () Regex!8991)

(assert (=> b!2920055 (= e!1842267 EmptyExpr!8991)))

(declare-fun b!2920056 () Bool)

(declare-fun c!476454 () Bool)

(assert (=> b!2920056 (= c!476454 ((_ is EmptyExpr!8991) (regOne!18495 r!17423)))))

(assert (=> b!2920056 (= e!1842257 e!1842262)))

(declare-fun b!2920057 () Bool)

(declare-fun c!476452 () Bool)

(declare-fun call!191030 () Bool)

(assert (=> b!2920057 (= c!476452 call!191030)))

(declare-fun e!1842261 () Regex!8991)

(assert (=> b!2920057 (= e!1842261 e!1842256)))

(declare-fun bm!191022 () Bool)

(declare-fun call!191029 () Bool)

(assert (=> bm!191022 (= call!191030 call!191029)))

(declare-fun b!2920058 () Bool)

(declare-fun lt!1025528 () Regex!8991)

(assert (=> b!2920058 (= e!1842256 (Union!8991 lt!1025531 lt!1025528))))

(declare-fun bm!191023 () Bool)

(declare-fun c!476453 () Bool)

(assert (=> bm!191023 (= call!191026 (simplify!22 (ite c!476453 (reg!9320 (regOne!18495 r!17423)) (ite c!476449 (regOne!18495 (regOne!18495 r!17423)) (regTwo!18494 (regOne!18495 r!17423))))))))

(declare-fun b!2920059 () Bool)

(declare-fun e!1842263 () Regex!8991)

(assert (=> b!2920059 (= e!1842263 EmptyLang!8991)))

(declare-fun b!2920060 () Bool)

(declare-fun e!1842258 () Bool)

(assert (=> b!2920060 (= e!1842258 call!191028)))

(declare-fun d!838481 () Bool)

(declare-fun e!1842265 () Bool)

(assert (=> d!838481 e!1842265))

(declare-fun res!1205501 () Bool)

(assert (=> d!838481 (=> (not res!1205501) (not e!1842265))))

(declare-fun lt!1025532 () Regex!8991)

(assert (=> d!838481 (= res!1205501 (validRegex!3724 lt!1025532))))

(assert (=> d!838481 (= lt!1025532 e!1842263)))

(declare-fun c!476448 () Bool)

(assert (=> d!838481 (= c!476448 ((_ is EmptyLang!8991) (regOne!18495 r!17423)))))

(assert (=> d!838481 (validRegex!3724 (regOne!18495 r!17423))))

(assert (=> d!838481 (= (simplify!22 (regOne!18495 r!17423)) lt!1025532)))

(declare-fun b!2920061 () Bool)

(assert (=> b!2920061 (= e!1842259 e!1842261)))

(assert (=> b!2920061 (= lt!1025531 call!191025)))

(declare-fun call!191027 () Regex!8991)

(assert (=> b!2920061 (= lt!1025528 call!191027)))

(declare-fun c!476450 () Bool)

(assert (=> b!2920061 (= c!476450 call!191028)))

(declare-fun b!2920062 () Bool)

(assert (=> b!2920062 (= e!1842269 e!1842266)))

(declare-fun c!476457 () Bool)

(declare-fun call!191031 () Bool)

(assert (=> b!2920062 (= c!476457 call!191031)))

(declare-fun b!2920063 () Bool)

(assert (=> b!2920063 (= e!1842261 lt!1025528)))

(declare-fun b!2920064 () Bool)

(assert (=> b!2920064 (= e!1842263 e!1842257)))

(declare-fun c!476451 () Bool)

(assert (=> b!2920064 (= c!476451 ((_ is ElementMatch!8991) (regOne!18495 r!17423)))))

(declare-fun bm!191024 () Bool)

(declare-fun lt!1025529 () Regex!8991)

(assert (=> bm!191024 (= call!191029 (isEmptyLang!169 (ite c!476453 lt!1025529 (ite c!476449 lt!1025528 lt!1025530))))))

(declare-fun bm!191025 () Bool)

(assert (=> bm!191025 (= call!191031 (isEmptyExpr!254 (ite c!476453 lt!1025529 lt!1025533)))))

(declare-fun b!2920065 () Bool)

(assert (=> b!2920065 (= e!1842262 e!1842264)))

(assert (=> b!2920065 (= c!476453 ((_ is Star!8991) (regOne!18495 r!17423)))))

(declare-fun b!2920066 () Bool)

(assert (=> b!2920066 (= e!1842266 lt!1025530)))

(declare-fun b!2920067 () Bool)

(assert (=> b!2920067 (= e!1842267 (Star!8991 lt!1025529))))

(declare-fun b!2920068 () Bool)

(assert (=> b!2920068 (= e!1842259 e!1842260)))

(assert (=> b!2920068 (= lt!1025530 call!191027)))

(assert (=> b!2920068 (= lt!1025533 call!191025)))

(declare-fun res!1205502 () Bool)

(assert (=> b!2920068 (= res!1205502 call!191030)))

(assert (=> b!2920068 (=> res!1205502 e!1842258)))

(declare-fun c!476447 () Bool)

(assert (=> b!2920068 (= c!476447 e!1842258)))

(declare-fun b!2920069 () Bool)

(declare-fun c!476455 () Bool)

(declare-fun e!1842268 () Bool)

(assert (=> b!2920069 (= c!476455 e!1842268)))

(declare-fun res!1205500 () Bool)

(assert (=> b!2920069 (=> res!1205500 e!1842268)))

(assert (=> b!2920069 (= res!1205500 call!191029)))

(assert (=> b!2920069 (= lt!1025529 call!191026)))

(assert (=> b!2920069 (= e!1842264 e!1842267)))

(declare-fun bm!191026 () Bool)

(assert (=> bm!191026 (= call!191027 (simplify!22 (ite c!476449 (regTwo!18495 (regOne!18495 r!17423)) (regOne!18494 (regOne!18495 r!17423)))))))

(declare-fun b!2920070 () Bool)

(assert (=> b!2920070 (= e!1842265 (= (nullable!2816 lt!1025532) (nullable!2816 (regOne!18495 r!17423))))))

(declare-fun b!2920071 () Bool)

(assert (=> b!2920071 (= e!1842268 call!191031)))

(assert (= (and d!838481 c!476448) b!2920059))

(assert (= (and d!838481 (not c!476448)) b!2920064))

(assert (= (and b!2920064 c!476451) b!2920049))

(assert (= (and b!2920064 (not c!476451)) b!2920056))

(assert (= (and b!2920056 c!476454) b!2920052))

(assert (= (and b!2920056 (not c!476454)) b!2920065))

(assert (= (and b!2920065 c!476453) b!2920069))

(assert (= (and b!2920065 (not c!476453)) b!2920048))

(assert (= (and b!2920069 (not res!1205500)) b!2920071))

(assert (= (and b!2920069 c!476455) b!2920055))

(assert (= (and b!2920069 (not c!476455)) b!2920067))

(assert (= (and b!2920048 c!476449) b!2920061))

(assert (= (and b!2920048 (not c!476449)) b!2920068))

(assert (= (and b!2920061 c!476450) b!2920063))

(assert (= (and b!2920061 (not c!476450)) b!2920057))

(assert (= (and b!2920057 c!476452) b!2920054))

(assert (= (and b!2920057 (not c!476452)) b!2920058))

(assert (= (and b!2920068 (not res!1205502)) b!2920060))

(assert (= (and b!2920068 c!476447) b!2920051))

(assert (= (and b!2920068 (not c!476447)) b!2920047))

(assert (= (and b!2920047 c!476456) b!2920053))

(assert (= (and b!2920047 (not c!476456)) b!2920062))

(assert (= (and b!2920062 c!476457) b!2920066))

(assert (= (and b!2920062 (not c!476457)) b!2920050))

(assert (= (or b!2920061 b!2920068) bm!191021))

(assert (= (or b!2920061 b!2920068) bm!191026))

(assert (= (or b!2920057 b!2920068) bm!191022))

(assert (= (or b!2920061 b!2920060) bm!191020))

(assert (= (or b!2920071 b!2920062) bm!191025))

(assert (= (or b!2920069 bm!191021) bm!191023))

(assert (= (or b!2920069 bm!191022) bm!191024))

(assert (= (and d!838481 res!1205501) b!2920070))

(declare-fun m!3316701 () Bool)

(assert (=> bm!191023 m!3316701))

(declare-fun m!3316703 () Bool)

(assert (=> b!2920047 m!3316703))

(declare-fun m!3316705 () Bool)

(assert (=> bm!191020 m!3316705))

(declare-fun m!3316707 () Bool)

(assert (=> bm!191026 m!3316707))

(declare-fun m!3316709 () Bool)

(assert (=> bm!191025 m!3316709))

(declare-fun m!3316711 () Bool)

(assert (=> bm!191024 m!3316711))

(declare-fun m!3316713 () Bool)

(assert (=> d!838481 m!3316713))

(assert (=> d!838481 m!3316663))

(declare-fun m!3316715 () Bool)

(assert (=> b!2920070 m!3316715))

(assert (=> b!2920070 m!3316661))

(assert (=> b!2919842 d!838481))

(declare-fun d!838483 () Bool)

(assert (=> d!838483 (= (matchR!3873 (regOne!18495 r!17423) s!11993) (matchR!3873 (simplify!22 (regOne!18495 r!17423)) s!11993))))

(declare-fun lt!1025536 () Unit!48321)

(declare-fun choose!17214 (Regex!8991 List!34856) Unit!48321)

(assert (=> d!838483 (= lt!1025536 (choose!17214 (regOne!18495 r!17423) s!11993))))

(assert (=> d!838483 (validRegex!3724 (regOne!18495 r!17423))))

(assert (=> d!838483 (= (lemmaSimplifySound!20 (regOne!18495 r!17423) s!11993) lt!1025536)))

(declare-fun bs!524941 () Bool)

(assert (= bs!524941 d!838483))

(assert (=> bs!524941 m!3316633))

(assert (=> bs!524941 m!3316649))

(assert (=> bs!524941 m!3316649))

(declare-fun m!3316717 () Bool)

(assert (=> bs!524941 m!3316717))

(assert (=> bs!524941 m!3316663))

(declare-fun m!3316719 () Bool)

(assert (=> bs!524941 m!3316719))

(assert (=> b!2919842 d!838483))

(declare-fun b!2920072 () Bool)

(declare-fun e!1842271 () Bool)

(declare-fun call!191032 () Bool)

(assert (=> b!2920072 (= e!1842271 call!191032)))

(declare-fun bm!191027 () Bool)

(declare-fun call!191033 () Bool)

(declare-fun c!476458 () Bool)

(assert (=> bm!191027 (= call!191033 (validRegex!3724 (ite c!476458 (regTwo!18495 r!17423) (regOne!18494 r!17423))))))

(declare-fun b!2920073 () Bool)

(declare-fun e!1842272 () Bool)

(declare-fun e!1842275 () Bool)

(assert (=> b!2920073 (= e!1842272 e!1842275)))

(declare-fun c!476459 () Bool)

(assert (=> b!2920073 (= c!476459 ((_ is Star!8991) r!17423))))

(declare-fun b!2920074 () Bool)

(declare-fun res!1205505 () Bool)

(declare-fun e!1842273 () Bool)

(assert (=> b!2920074 (=> res!1205505 e!1842273)))

(assert (=> b!2920074 (= res!1205505 (not ((_ is Concat!14312) r!17423)))))

(declare-fun e!1842270 () Bool)

(assert (=> b!2920074 (= e!1842270 e!1842273)))

(declare-fun b!2920075 () Bool)

(assert (=> b!2920075 (= e!1842275 e!1842271)))

(declare-fun res!1205503 () Bool)

(assert (=> b!2920075 (= res!1205503 (not (nullable!2816 (reg!9320 r!17423))))))

(assert (=> b!2920075 (=> (not res!1205503) (not e!1842271))))

(declare-fun b!2920076 () Bool)

(declare-fun e!1842276 () Bool)

(declare-fun call!191034 () Bool)

(assert (=> b!2920076 (= e!1842276 call!191034)))

(declare-fun bm!191029 () Bool)

(assert (=> bm!191029 (= call!191034 call!191032)))

(declare-fun b!2920077 () Bool)

(declare-fun e!1842274 () Bool)

(assert (=> b!2920077 (= e!1842274 call!191033)))

(declare-fun b!2920078 () Bool)

(assert (=> b!2920078 (= e!1842275 e!1842270)))

(assert (=> b!2920078 (= c!476458 ((_ is Union!8991) r!17423))))

(declare-fun b!2920079 () Bool)

(declare-fun res!1205506 () Bool)

(assert (=> b!2920079 (=> (not res!1205506) (not e!1842274))))

(assert (=> b!2920079 (= res!1205506 call!191034)))

(assert (=> b!2920079 (= e!1842270 e!1842274)))

(declare-fun b!2920080 () Bool)

(assert (=> b!2920080 (= e!1842273 e!1842276)))

(declare-fun res!1205504 () Bool)

(assert (=> b!2920080 (=> (not res!1205504) (not e!1842276))))

(assert (=> b!2920080 (= res!1205504 call!191033)))

(declare-fun d!838485 () Bool)

(declare-fun res!1205507 () Bool)

(assert (=> d!838485 (=> res!1205507 e!1842272)))

(assert (=> d!838485 (= res!1205507 ((_ is ElementMatch!8991) r!17423))))

(assert (=> d!838485 (= (validRegex!3724 r!17423) e!1842272)))

(declare-fun bm!191028 () Bool)

(assert (=> bm!191028 (= call!191032 (validRegex!3724 (ite c!476459 (reg!9320 r!17423) (ite c!476458 (regOne!18495 r!17423) (regTwo!18494 r!17423)))))))

(assert (= (and d!838485 (not res!1205507)) b!2920073))

(assert (= (and b!2920073 c!476459) b!2920075))

(assert (= (and b!2920073 (not c!476459)) b!2920078))

(assert (= (and b!2920075 res!1205503) b!2920072))

(assert (= (and b!2920078 c!476458) b!2920079))

(assert (= (and b!2920078 (not c!476458)) b!2920074))

(assert (= (and b!2920079 res!1205506) b!2920077))

(assert (= (and b!2920074 (not res!1205505)) b!2920080))

(assert (= (and b!2920080 res!1205504) b!2920076))

(assert (= (or b!2920079 b!2920076) bm!191029))

(assert (= (or b!2920077 b!2920080) bm!191027))

(assert (= (or b!2920072 bm!191029) bm!191028))

(declare-fun m!3316721 () Bool)

(assert (=> bm!191027 m!3316721))

(declare-fun m!3316723 () Bool)

(assert (=> b!2920075 m!3316723))

(declare-fun m!3316725 () Bool)

(assert (=> bm!191028 m!3316725))

(assert (=> start!284340 d!838485))

(declare-fun b!2920121 () Bool)

(assert (=> b!2920121 true))

(assert (=> b!2920121 true))

(declare-fun bs!524942 () Bool)

(declare-fun b!2920123 () Bool)

(assert (= bs!524942 (and b!2920123 b!2920121)))

(declare-fun lambda!108640 () Int)

(declare-fun lambda!108637 () Int)

(assert (=> bs!524942 (not (= lambda!108640 lambda!108637))))

(assert (=> b!2920123 true))

(assert (=> b!2920123 true))

(declare-fun b!2920119 () Bool)

(declare-fun c!476471 () Bool)

(assert (=> b!2920119 (= c!476471 ((_ is Union!8991) r!17423))))

(declare-fun e!1842298 () Bool)

(declare-fun e!1842300 () Bool)

(assert (=> b!2920119 (= e!1842298 e!1842300)))

(declare-fun b!2920120 () Bool)

(declare-fun c!476468 () Bool)

(assert (=> b!2920120 (= c!476468 ((_ is ElementMatch!8991) r!17423))))

(declare-fun e!1842303 () Bool)

(assert (=> b!2920120 (= e!1842303 e!1842298)))

(declare-fun e!1842297 () Bool)

(declare-fun call!191039 () Bool)

(assert (=> b!2920121 (= e!1842297 call!191039)))

(declare-fun b!2920122 () Bool)

(declare-fun e!1842301 () Bool)

(declare-fun call!191040 () Bool)

(assert (=> b!2920122 (= e!1842301 call!191040)))

(declare-fun bm!191034 () Bool)

(declare-fun c!476469 () Bool)

(declare-fun Exists!1367 (Int) Bool)

(assert (=> bm!191034 (= call!191039 (Exists!1367 (ite c!476469 lambda!108637 lambda!108640)))))

(declare-fun e!1842302 () Bool)

(assert (=> b!2920123 (= e!1842302 call!191039)))

(declare-fun d!838487 () Bool)

(declare-fun c!476470 () Bool)

(assert (=> d!838487 (= c!476470 ((_ is EmptyExpr!8991) r!17423))))

(assert (=> d!838487 (= (matchRSpec!1128 r!17423 s!11993) e!1842301)))

(declare-fun b!2920124 () Bool)

(declare-fun e!1842299 () Bool)

(assert (=> b!2920124 (= e!1842300 e!1842299)))

(declare-fun res!1205532 () Bool)

(assert (=> b!2920124 (= res!1205532 (matchRSpec!1128 (regOne!18495 r!17423) s!11993))))

(assert (=> b!2920124 (=> res!1205532 e!1842299)))

(declare-fun bm!191035 () Bool)

(assert (=> bm!191035 (= call!191040 (isEmpty!18986 s!11993))))

(declare-fun b!2920125 () Bool)

(assert (=> b!2920125 (= e!1842299 (matchRSpec!1128 (regTwo!18495 r!17423) s!11993))))

(declare-fun b!2920126 () Bool)

(assert (=> b!2920126 (= e!1842301 e!1842303)))

(declare-fun res!1205530 () Bool)

(assert (=> b!2920126 (= res!1205530 (not ((_ is EmptyLang!8991) r!17423)))))

(assert (=> b!2920126 (=> (not res!1205530) (not e!1842303))))

(declare-fun b!2920127 () Bool)

(assert (=> b!2920127 (= e!1842298 (= s!11993 (Cons!34732 (c!476389 r!17423) Nil!34732)))))

(declare-fun b!2920128 () Bool)

(assert (=> b!2920128 (= e!1842300 e!1842302)))

(assert (=> b!2920128 (= c!476469 ((_ is Star!8991) r!17423))))

(declare-fun b!2920129 () Bool)

(declare-fun res!1205531 () Bool)

(assert (=> b!2920129 (=> res!1205531 e!1842297)))

(assert (=> b!2920129 (= res!1205531 call!191040)))

(assert (=> b!2920129 (= e!1842302 e!1842297)))

(assert (= (and d!838487 c!476470) b!2920122))

(assert (= (and d!838487 (not c!476470)) b!2920126))

(assert (= (and b!2920126 res!1205530) b!2920120))

(assert (= (and b!2920120 c!476468) b!2920127))

(assert (= (and b!2920120 (not c!476468)) b!2920119))

(assert (= (and b!2920119 c!476471) b!2920124))

(assert (= (and b!2920119 (not c!476471)) b!2920128))

(assert (= (and b!2920124 (not res!1205532)) b!2920125))

(assert (= (and b!2920128 c!476469) b!2920129))

(assert (= (and b!2920128 (not c!476469)) b!2920123))

(assert (= (and b!2920129 (not res!1205531)) b!2920121))

(assert (= (or b!2920121 b!2920123) bm!191034))

(assert (= (or b!2920122 b!2920129) bm!191035))

(declare-fun m!3316727 () Bool)

(assert (=> bm!191034 m!3316727))

(declare-fun m!3316729 () Bool)

(assert (=> b!2920124 m!3316729))

(assert (=> bm!191035 m!3316653))

(declare-fun m!3316731 () Bool)

(assert (=> b!2920125 m!3316731))

(assert (=> b!2919843 d!838487))

(declare-fun b!2920138 () Bool)

(declare-fun e!1842311 () Bool)

(declare-fun e!1842310 () Bool)

(assert (=> b!2920138 (= e!1842311 e!1842310)))

(declare-fun res!1205543 () Bool)

(assert (=> b!2920138 (=> (not res!1205543) (not e!1842310))))

(declare-fun lt!1025537 () Bool)

(assert (=> b!2920138 (= res!1205543 (not lt!1025537))))

(declare-fun b!2920139 () Bool)

(declare-fun e!1842312 () Bool)

(declare-fun e!1842309 () Bool)

(assert (=> b!2920139 (= e!1842312 e!1842309)))

(declare-fun c!476472 () Bool)

(assert (=> b!2920139 (= c!476472 ((_ is EmptyLang!8991) r!17423))))

(declare-fun b!2920140 () Bool)

(declare-fun call!191043 () Bool)

(assert (=> b!2920140 (= e!1842312 (= lt!1025537 call!191043))))

(declare-fun b!2920141 () Bool)

(declare-fun e!1842308 () Bool)

(assert (=> b!2920141 (= e!1842308 (not (= (head!6489 s!11993) (c!476389 r!17423))))))

(declare-fun b!2920142 () Bool)

(declare-fun e!1842306 () Bool)

(assert (=> b!2920142 (= e!1842306 (nullable!2816 r!17423))))

(declare-fun d!838489 () Bool)

(assert (=> d!838489 e!1842312))

(declare-fun c!476473 () Bool)

(assert (=> d!838489 (= c!476473 ((_ is EmptyExpr!8991) r!17423))))

(assert (=> d!838489 (= lt!1025537 e!1842306)))

(declare-fun c!476474 () Bool)

(assert (=> d!838489 (= c!476474 (isEmpty!18986 s!11993))))

(assert (=> d!838489 (validRegex!3724 r!17423)))

(assert (=> d!838489 (= (matchR!3873 r!17423 s!11993) lt!1025537)))

(declare-fun b!2920143 () Bool)

(declare-fun res!1205538 () Bool)

(assert (=> b!2920143 (=> res!1205538 e!1842311)))

(assert (=> b!2920143 (= res!1205538 (not ((_ is ElementMatch!8991) r!17423)))))

(assert (=> b!2920143 (= e!1842309 e!1842311)))

(declare-fun bm!191038 () Bool)

(assert (=> bm!191038 (= call!191043 (isEmpty!18986 s!11993))))

(declare-fun b!2920144 () Bool)

(declare-fun res!1205540 () Bool)

(declare-fun e!1842307 () Bool)

(assert (=> b!2920144 (=> (not res!1205540) (not e!1842307))))

(assert (=> b!2920144 (= res!1205540 (not call!191043))))

(declare-fun b!2920145 () Bool)

(declare-fun res!1205544 () Bool)

(assert (=> b!2920145 (=> res!1205544 e!1842308)))

(assert (=> b!2920145 (= res!1205544 (not (isEmpty!18986 (tail!4715 s!11993))))))

(declare-fun b!2920146 () Bool)

(declare-fun res!1205539 () Bool)

(assert (=> b!2920146 (=> (not res!1205539) (not e!1842307))))

(assert (=> b!2920146 (= res!1205539 (isEmpty!18986 (tail!4715 s!11993)))))

(declare-fun b!2920147 () Bool)

(assert (=> b!2920147 (= e!1842306 (matchR!3873 (derivativeStep!2430 r!17423 (head!6489 s!11993)) (tail!4715 s!11993)))))

(declare-fun b!2920148 () Bool)

(declare-fun res!1205537 () Bool)

(assert (=> b!2920148 (=> res!1205537 e!1842311)))

(assert (=> b!2920148 (= res!1205537 e!1842307)))

(declare-fun res!1205541 () Bool)

(assert (=> b!2920148 (=> (not res!1205541) (not e!1842307))))

(assert (=> b!2920148 (= res!1205541 lt!1025537)))

(declare-fun b!2920149 () Bool)

(assert (=> b!2920149 (= e!1842309 (not lt!1025537))))

(declare-fun b!2920150 () Bool)

(assert (=> b!2920150 (= e!1842307 (= (head!6489 s!11993) (c!476389 r!17423)))))

(declare-fun b!2920151 () Bool)

(assert (=> b!2920151 (= e!1842310 e!1842308)))

(declare-fun res!1205542 () Bool)

(assert (=> b!2920151 (=> res!1205542 e!1842308)))

(assert (=> b!2920151 (= res!1205542 call!191043)))

(assert (= (and d!838489 c!476474) b!2920142))

(assert (= (and d!838489 (not c!476474)) b!2920147))

(assert (= (and d!838489 c!476473) b!2920140))

(assert (= (and d!838489 (not c!476473)) b!2920139))

(assert (= (and b!2920139 c!476472) b!2920149))

(assert (= (and b!2920139 (not c!476472)) b!2920143))

(assert (= (and b!2920143 (not res!1205538)) b!2920148))

(assert (= (and b!2920148 res!1205541) b!2920144))

(assert (= (and b!2920144 res!1205540) b!2920146))

(assert (= (and b!2920146 res!1205539) b!2920150))

(assert (= (and b!2920148 (not res!1205537)) b!2920138))

(assert (= (and b!2920138 res!1205543) b!2920151))

(assert (= (and b!2920151 (not res!1205542)) b!2920145))

(assert (= (and b!2920145 (not res!1205544)) b!2920141))

(assert (= (or b!2920140 b!2920144 b!2920151) bm!191038))

(assert (=> bm!191038 m!3316653))

(assert (=> b!2920141 m!3316655))

(assert (=> b!2920145 m!3316657))

(assert (=> b!2920145 m!3316657))

(assert (=> b!2920145 m!3316659))

(declare-fun m!3316733 () Bool)

(assert (=> b!2920142 m!3316733))

(assert (=> d!838489 m!3316653))

(assert (=> d!838489 m!3316637))

(assert (=> b!2920146 m!3316657))

(assert (=> b!2920146 m!3316657))

(assert (=> b!2920146 m!3316659))

(assert (=> b!2920150 m!3316655))

(assert (=> b!2920147 m!3316655))

(assert (=> b!2920147 m!3316655))

(declare-fun m!3316735 () Bool)

(assert (=> b!2920147 m!3316735))

(assert (=> b!2920147 m!3316657))

(assert (=> b!2920147 m!3316735))

(assert (=> b!2920147 m!3316657))

(declare-fun m!3316737 () Bool)

(assert (=> b!2920147 m!3316737))

(assert (=> b!2919843 d!838489))

(declare-fun d!838491 () Bool)

(assert (=> d!838491 (= (matchR!3873 r!17423 s!11993) (matchRSpec!1128 r!17423 s!11993))))

(declare-fun lt!1025540 () Unit!48321)

(declare-fun choose!17216 (Regex!8991 List!34856) Unit!48321)

(assert (=> d!838491 (= lt!1025540 (choose!17216 r!17423 s!11993))))

(assert (=> d!838491 (validRegex!3724 r!17423)))

(assert (=> d!838491 (= (mainMatchTheorem!1128 r!17423 s!11993) lt!1025540)))

(declare-fun bs!524943 () Bool)

(assert (= bs!524943 d!838491))

(assert (=> bs!524943 m!3316641))

(assert (=> bs!524943 m!3316639))

(declare-fun m!3316739 () Bool)

(assert (=> bs!524943 m!3316739))

(assert (=> bs!524943 m!3316637))

(assert (=> b!2919843 d!838491))

(declare-fun b!2920163 () Bool)

(declare-fun e!1842325 () Bool)

(declare-fun e!1842324 () Bool)

(assert (=> b!2920163 (= e!1842325 e!1842324)))

(declare-fun res!1205554 () Bool)

(assert (=> b!2920163 (=> (not res!1205554) (not e!1842324))))

(declare-fun lt!1025541 () Bool)

(assert (=> b!2920163 (= res!1205554 (not lt!1025541))))

(declare-fun b!2920164 () Bool)

(declare-fun e!1842326 () Bool)

(declare-fun e!1842323 () Bool)

(assert (=> b!2920164 (= e!1842326 e!1842323)))

(declare-fun c!476479 () Bool)

(assert (=> b!2920164 (= c!476479 ((_ is EmptyLang!8991) (regTwo!18495 r!17423)))))

(declare-fun b!2920165 () Bool)

(declare-fun call!191048 () Bool)

(assert (=> b!2920165 (= e!1842326 (= lt!1025541 call!191048))))

(declare-fun b!2920166 () Bool)

(declare-fun e!1842322 () Bool)

(assert (=> b!2920166 (= e!1842322 (not (= (head!6489 s!11993) (c!476389 (regTwo!18495 r!17423)))))))

(declare-fun b!2920167 () Bool)

(declare-fun e!1842320 () Bool)

(assert (=> b!2920167 (= e!1842320 (nullable!2816 (regTwo!18495 r!17423)))))

(declare-fun d!838493 () Bool)

(assert (=> d!838493 e!1842326))

(declare-fun c!476480 () Bool)

(assert (=> d!838493 (= c!476480 ((_ is EmptyExpr!8991) (regTwo!18495 r!17423)))))

(assert (=> d!838493 (= lt!1025541 e!1842320)))

(declare-fun c!476481 () Bool)

(assert (=> d!838493 (= c!476481 (isEmpty!18986 s!11993))))

(assert (=> d!838493 (validRegex!3724 (regTwo!18495 r!17423))))

(assert (=> d!838493 (= (matchR!3873 (regTwo!18495 r!17423) s!11993) lt!1025541)))

(declare-fun b!2920168 () Bool)

(declare-fun res!1205549 () Bool)

(assert (=> b!2920168 (=> res!1205549 e!1842325)))

(assert (=> b!2920168 (= res!1205549 (not ((_ is ElementMatch!8991) (regTwo!18495 r!17423))))))

(assert (=> b!2920168 (= e!1842323 e!1842325)))

(declare-fun bm!191043 () Bool)

(assert (=> bm!191043 (= call!191048 (isEmpty!18986 s!11993))))

(declare-fun b!2920169 () Bool)

(declare-fun res!1205551 () Bool)

(declare-fun e!1842321 () Bool)

(assert (=> b!2920169 (=> (not res!1205551) (not e!1842321))))

(assert (=> b!2920169 (= res!1205551 (not call!191048))))

(declare-fun b!2920170 () Bool)

(declare-fun res!1205555 () Bool)

(assert (=> b!2920170 (=> res!1205555 e!1842322)))

(assert (=> b!2920170 (= res!1205555 (not (isEmpty!18986 (tail!4715 s!11993))))))

(declare-fun b!2920171 () Bool)

(declare-fun res!1205550 () Bool)

(assert (=> b!2920171 (=> (not res!1205550) (not e!1842321))))

(assert (=> b!2920171 (= res!1205550 (isEmpty!18986 (tail!4715 s!11993)))))

(declare-fun b!2920172 () Bool)

(assert (=> b!2920172 (= e!1842320 (matchR!3873 (derivativeStep!2430 (regTwo!18495 r!17423) (head!6489 s!11993)) (tail!4715 s!11993)))))

(declare-fun b!2920173 () Bool)

(declare-fun res!1205548 () Bool)

(assert (=> b!2920173 (=> res!1205548 e!1842325)))

(assert (=> b!2920173 (= res!1205548 e!1842321)))

(declare-fun res!1205552 () Bool)

(assert (=> b!2920173 (=> (not res!1205552) (not e!1842321))))

(assert (=> b!2920173 (= res!1205552 lt!1025541)))

(declare-fun b!2920174 () Bool)

(assert (=> b!2920174 (= e!1842323 (not lt!1025541))))

(declare-fun b!2920175 () Bool)

(assert (=> b!2920175 (= e!1842321 (= (head!6489 s!11993) (c!476389 (regTwo!18495 r!17423))))))

(declare-fun b!2920176 () Bool)

(assert (=> b!2920176 (= e!1842324 e!1842322)))

(declare-fun res!1205553 () Bool)

(assert (=> b!2920176 (=> res!1205553 e!1842322)))

(assert (=> b!2920176 (= res!1205553 call!191048)))

(assert (= (and d!838493 c!476481) b!2920167))

(assert (= (and d!838493 (not c!476481)) b!2920172))

(assert (= (and d!838493 c!476480) b!2920165))

(assert (= (and d!838493 (not c!476480)) b!2920164))

(assert (= (and b!2920164 c!476479) b!2920174))

(assert (= (and b!2920164 (not c!476479)) b!2920168))

(assert (= (and b!2920168 (not res!1205549)) b!2920173))

(assert (= (and b!2920173 res!1205552) b!2920169))

(assert (= (and b!2920169 res!1205551) b!2920171))

(assert (= (and b!2920171 res!1205550) b!2920175))

(assert (= (and b!2920173 (not res!1205548)) b!2920163))

(assert (= (and b!2920163 res!1205554) b!2920176))

(assert (= (and b!2920176 (not res!1205553)) b!2920170))

(assert (= (and b!2920170 (not res!1205555)) b!2920166))

(assert (= (or b!2920165 b!2920169 b!2920176) bm!191043))

(assert (=> bm!191043 m!3316653))

(assert (=> b!2920166 m!3316655))

(assert (=> b!2920170 m!3316657))

(assert (=> b!2920170 m!3316657))

(assert (=> b!2920170 m!3316659))

(declare-fun m!3316741 () Bool)

(assert (=> b!2920167 m!3316741))

(assert (=> d!838493 m!3316653))

(assert (=> d!838493 m!3316671))

(assert (=> b!2920171 m!3316657))

(assert (=> b!2920171 m!3316657))

(assert (=> b!2920171 m!3316659))

(assert (=> b!2920175 m!3316655))

(assert (=> b!2920172 m!3316655))

(assert (=> b!2920172 m!3316655))

(declare-fun m!3316743 () Bool)

(assert (=> b!2920172 m!3316743))

(assert (=> b!2920172 m!3316657))

(assert (=> b!2920172 m!3316743))

(assert (=> b!2920172 m!3316657))

(declare-fun m!3316745 () Bool)

(assert (=> b!2920172 m!3316745))

(assert (=> b!2919839 d!838493))

(declare-fun e!1842336 () Bool)

(assert (=> b!2919841 (= tp!937084 e!1842336)))

(declare-fun b!2920208 () Bool)

(declare-fun tp!937096 () Bool)

(declare-fun tp!937100 () Bool)

(assert (=> b!2920208 (= e!1842336 (and tp!937096 tp!937100))))

(declare-fun b!2920205 () Bool)

(assert (=> b!2920205 (= e!1842336 tp_is_empty!15545)))

(declare-fun b!2920206 () Bool)

(declare-fun tp!937099 () Bool)

(declare-fun tp!937097 () Bool)

(assert (=> b!2920206 (= e!1842336 (and tp!937099 tp!937097))))

(declare-fun b!2920207 () Bool)

(declare-fun tp!937098 () Bool)

(assert (=> b!2920207 (= e!1842336 tp!937098)))

(assert (= (and b!2919841 ((_ is ElementMatch!8991) (regOne!18495 r!17423))) b!2920205))

(assert (= (and b!2919841 ((_ is Concat!14312) (regOne!18495 r!17423))) b!2920206))

(assert (= (and b!2919841 ((_ is Star!8991) (regOne!18495 r!17423))) b!2920207))

(assert (= (and b!2919841 ((_ is Union!8991) (regOne!18495 r!17423))) b!2920208))

(declare-fun e!1842337 () Bool)

(assert (=> b!2919841 (= tp!937080 e!1842337)))

(declare-fun b!2920212 () Bool)

(declare-fun tp!937101 () Bool)

(declare-fun tp!937105 () Bool)

(assert (=> b!2920212 (= e!1842337 (and tp!937101 tp!937105))))

(declare-fun b!2920209 () Bool)

(assert (=> b!2920209 (= e!1842337 tp_is_empty!15545)))

(declare-fun b!2920210 () Bool)

(declare-fun tp!937104 () Bool)

(declare-fun tp!937102 () Bool)

(assert (=> b!2920210 (= e!1842337 (and tp!937104 tp!937102))))

(declare-fun b!2920211 () Bool)

(declare-fun tp!937103 () Bool)

(assert (=> b!2920211 (= e!1842337 tp!937103)))

(assert (= (and b!2919841 ((_ is ElementMatch!8991) (regTwo!18495 r!17423))) b!2920209))

(assert (= (and b!2919841 ((_ is Concat!14312) (regTwo!18495 r!17423))) b!2920210))

(assert (= (and b!2919841 ((_ is Star!8991) (regTwo!18495 r!17423))) b!2920211))

(assert (= (and b!2919841 ((_ is Union!8991) (regTwo!18495 r!17423))) b!2920212))

(declare-fun b!2920217 () Bool)

(declare-fun e!1842340 () Bool)

(declare-fun tp!937108 () Bool)

(assert (=> b!2920217 (= e!1842340 (and tp_is_empty!15545 tp!937108))))

(assert (=> b!2919835 (= tp!937083 e!1842340)))

(assert (= (and b!2919835 ((_ is Cons!34732) (t!233921 s!11993))) b!2920217))

(declare-fun e!1842341 () Bool)

(assert (=> b!2919837 (= tp!937081 e!1842341)))

(declare-fun b!2920221 () Bool)

(declare-fun tp!937109 () Bool)

(declare-fun tp!937113 () Bool)

(assert (=> b!2920221 (= e!1842341 (and tp!937109 tp!937113))))

(declare-fun b!2920218 () Bool)

(assert (=> b!2920218 (= e!1842341 tp_is_empty!15545)))

(declare-fun b!2920219 () Bool)

(declare-fun tp!937112 () Bool)

(declare-fun tp!937110 () Bool)

(assert (=> b!2920219 (= e!1842341 (and tp!937112 tp!937110))))

(declare-fun b!2920220 () Bool)

(declare-fun tp!937111 () Bool)

(assert (=> b!2920220 (= e!1842341 tp!937111)))

(assert (= (and b!2919837 ((_ is ElementMatch!8991) (regOne!18494 r!17423))) b!2920218))

(assert (= (and b!2919837 ((_ is Concat!14312) (regOne!18494 r!17423))) b!2920219))

(assert (= (and b!2919837 ((_ is Star!8991) (regOne!18494 r!17423))) b!2920220))

(assert (= (and b!2919837 ((_ is Union!8991) (regOne!18494 r!17423))) b!2920221))

(declare-fun e!1842342 () Bool)

(assert (=> b!2919837 (= tp!937082 e!1842342)))

(declare-fun b!2920225 () Bool)

(declare-fun tp!937114 () Bool)

(declare-fun tp!937118 () Bool)

(assert (=> b!2920225 (= e!1842342 (and tp!937114 tp!937118))))

(declare-fun b!2920222 () Bool)

(assert (=> b!2920222 (= e!1842342 tp_is_empty!15545)))

(declare-fun b!2920223 () Bool)

(declare-fun tp!937117 () Bool)

(declare-fun tp!937115 () Bool)

(assert (=> b!2920223 (= e!1842342 (and tp!937117 tp!937115))))

(declare-fun b!2920224 () Bool)

(declare-fun tp!937116 () Bool)

(assert (=> b!2920224 (= e!1842342 tp!937116)))

(assert (= (and b!2919837 ((_ is ElementMatch!8991) (regTwo!18494 r!17423))) b!2920222))

(assert (= (and b!2919837 ((_ is Concat!14312) (regTwo!18494 r!17423))) b!2920223))

(assert (= (and b!2919837 ((_ is Star!8991) (regTwo!18494 r!17423))) b!2920224))

(assert (= (and b!2919837 ((_ is Union!8991) (regTwo!18494 r!17423))) b!2920225))

(declare-fun e!1842343 () Bool)

(assert (=> b!2919838 (= tp!937085 e!1842343)))

(declare-fun b!2920229 () Bool)

(declare-fun tp!937119 () Bool)

(declare-fun tp!937123 () Bool)

(assert (=> b!2920229 (= e!1842343 (and tp!937119 tp!937123))))

(declare-fun b!2920226 () Bool)

(assert (=> b!2920226 (= e!1842343 tp_is_empty!15545)))

(declare-fun b!2920227 () Bool)

(declare-fun tp!937122 () Bool)

(declare-fun tp!937120 () Bool)

(assert (=> b!2920227 (= e!1842343 (and tp!937122 tp!937120))))

(declare-fun b!2920228 () Bool)

(declare-fun tp!937121 () Bool)

(assert (=> b!2920228 (= e!1842343 tp!937121)))

(assert (= (and b!2919838 ((_ is ElementMatch!8991) (reg!9320 r!17423))) b!2920226))

(assert (= (and b!2919838 ((_ is Concat!14312) (reg!9320 r!17423))) b!2920227))

(assert (= (and b!2919838 ((_ is Star!8991) (reg!9320 r!17423))) b!2920228))

(assert (= (and b!2919838 ((_ is Union!8991) (reg!9320 r!17423))) b!2920229))

(check-sat (not d!838477) tp_is_empty!15545 (not b!2920141) (not d!838481) (not b!2919969) (not b!2920166) (not b!2920167) (not d!838493) (not b!2920142) (not b!2920175) (not b!2920212) (not bm!191027) (not b!2920207) (not b!2919970) (not b!2919955) (not bm!191043) (not b!2920219) (not b!2920221) (not d!838491) (not bm!191026) (not b!2920172) (not bm!191025) (not b!2920227) (not b!2920210) (not b!2919909) (not b!2919903) (not b!2920150) (not b!2920229) (not b!2919918) (not d!838483) (not bm!191034) (not b!2920220) (not b!2919908) (not b!2920206) (not b!2920145) (not bm!191002) (not b!2920170) (not b!2920223) (not b!2920124) (not b!2919904) (not b!2919964) (not b!2920070) (not b!2920125) (not b!2920146) (not b!2920228) (not b!2919907) (not b!2919912) (not b!2920217) (not b!2920225) (not b!2920147) (not bm!191005) (not b!2920047) (not b!2920211) (not b!2919919) (not d!838489) (not bm!190992) (not d!838473) (not bm!191003) (not bm!191038) (not b!2919968) (not bm!191020) (not b!2920171) (not d!838471) (not b!2919965) (not bm!191035) (not b!2920075) (not b!2920224) (not bm!191028) (not bm!191024) (not b!2919973) (not b!2920208) (not bm!191023))
(check-sat)
