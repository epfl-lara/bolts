; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!293248 () Bool)

(assert start!293248)

(declare-fun b!3077653 () Bool)

(assert (=> b!3077653 true))

(assert (=> b!3077653 true))

(declare-fun b!3077651 () Bool)

(declare-fun res!1262852 () Bool)

(declare-fun e!1925468 () Bool)

(assert (=> b!3077651 (=> res!1262852 e!1925468)))

(declare-datatypes ((C!19244 0))(
  ( (C!19245 (val!11658 Int)) )
))
(declare-datatypes ((Regex!9529 0))(
  ( (ElementMatch!9529 (c!512187 C!19244)) (Concat!14850 (regOne!19570 Regex!9529) (regTwo!19570 Regex!9529)) (EmptyExpr!9529) (Star!9529 (reg!9858 Regex!9529)) (EmptyLang!9529) (Union!9529 (regOne!19571 Regex!9529) (regTwo!19571 Regex!9529)) )
))
(declare-fun lt!1052668 () Regex!9529)

(declare-fun isEmptyLang!580 (Regex!9529) Bool)

(assert (=> b!3077651 (= res!1262852 (isEmptyLang!580 lt!1052668))))

(declare-fun b!3077652 () Bool)

(declare-fun e!1925472 () Bool)

(declare-fun tp!969930 () Bool)

(declare-fun tp!969932 () Bool)

(assert (=> b!3077652 (= e!1925472 (and tp!969930 tp!969932))))

(declare-fun e!1925470 () Bool)

(declare-fun e!1925473 () Bool)

(assert (=> b!3077653 (= e!1925470 e!1925473)))

(declare-fun res!1262860 () Bool)

(assert (=> b!3077653 (=> res!1262860 e!1925473)))

(declare-fun r!17423 () Regex!9529)

(declare-fun validRegex!4262 (Regex!9529) Bool)

(assert (=> b!3077653 (= res!1262860 (not (validRegex!4262 (regOne!19570 r!17423))))))

(declare-fun lambda!114210 () Int)

(declare-fun Exists!1792 (Int) Bool)

(assert (=> b!3077653 (Exists!1792 lambda!114210)))

(declare-datatypes ((Unit!49497 0))(
  ( (Unit!49498) )
))
(declare-fun lt!1052666 () Unit!49497)

(declare-datatypes ((List!35394 0))(
  ( (Nil!35270) (Cons!35270 (h!40690 C!19244) (t!234459 List!35394)) )
))
(declare-fun s!11993 () List!35394)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!988 (Regex!9529 Regex!9529 List!35394) Unit!49497)

(assert (=> b!3077653 (= lt!1052666 (lemmaFindConcatSeparationEquivalentToExists!988 (regOne!19570 r!17423) (regTwo!19570 r!17423) s!11993))))

(declare-datatypes ((tuple2!34184 0))(
  ( (tuple2!34185 (_1!20224 List!35394) (_2!20224 List!35394)) )
))
(declare-datatypes ((Option!6824 0))(
  ( (None!6823) (Some!6823 (v!34957 tuple2!34184)) )
))
(declare-fun isDefined!5375 (Option!6824) Bool)

(declare-fun findConcatSeparation!1218 (Regex!9529 Regex!9529 List!35394 List!35394 List!35394) Option!6824)

(assert (=> b!3077653 (isDefined!5375 (findConcatSeparation!1218 (regOne!19570 r!17423) (regTwo!19570 r!17423) Nil!35270 s!11993 s!11993))))

(declare-fun lt!1052674 () Unit!49497)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!38 (Regex!9529 Regex!9529 List!35394 List!35394 List!35394 List!35394 List!35394) Unit!49497)

(assert (=> b!3077653 (= lt!1052674 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!38 (regOne!19570 r!17423) (regTwo!19570 r!17423) s!11993 Nil!35270 s!11993 Nil!35270 s!11993))))

(declare-fun b!3077654 () Bool)

(declare-fun res!1262853 () Bool)

(assert (=> b!3077654 (=> res!1262853 e!1925468)))

(declare-fun lt!1052667 () Regex!9529)

(declare-fun isEmptyExpr!586 (Regex!9529) Bool)

(assert (=> b!3077654 (= res!1262853 (isEmptyExpr!586 lt!1052667))))

(declare-fun b!3077655 () Bool)

(declare-fun res!1262855 () Bool)

(declare-fun e!1925471 () Bool)

(assert (=> b!3077655 (=> res!1262855 e!1925471)))

(declare-fun isEmpty!19601 (List!35394) Bool)

(assert (=> b!3077655 (= res!1262855 (isEmpty!19601 s!11993))))

(declare-fun res!1262856 () Bool)

(declare-fun e!1925469 () Bool)

(assert (=> start!293248 (=> (not res!1262856) (not e!1925469))))

(assert (=> start!293248 (= res!1262856 (validRegex!4262 r!17423))))

(assert (=> start!293248 e!1925469))

(assert (=> start!293248 e!1925472))

(declare-fun e!1925467 () Bool)

(assert (=> start!293248 e!1925467))

(declare-fun b!3077650 () Bool)

(assert (=> b!3077650 (= e!1925468 e!1925470)))

(declare-fun res!1262857 () Bool)

(assert (=> b!3077650 (=> res!1262857 e!1925470)))

(declare-fun lt!1052669 () Bool)

(assert (=> b!3077650 (= res!1262857 (not lt!1052669))))

(declare-fun matchR!4411 (Regex!9529 List!35394) Bool)

(assert (=> b!3077650 (= (matchR!4411 (regTwo!19570 r!17423) Nil!35270) (matchR!4411 lt!1052668 Nil!35270))))

(declare-fun lt!1052670 () Unit!49497)

(declare-fun lemmaSimplifySound!310 (Regex!9529 List!35394) Unit!49497)

(assert (=> b!3077650 (= lt!1052670 (lemmaSimplifySound!310 (regTwo!19570 r!17423) Nil!35270))))

(assert (=> b!3077650 (= lt!1052669 (matchR!4411 lt!1052667 s!11993))))

(assert (=> b!3077650 (= lt!1052669 (matchR!4411 (regOne!19570 r!17423) s!11993))))

(declare-fun lt!1052672 () Unit!49497)

(assert (=> b!3077650 (= lt!1052672 (lemmaSimplifySound!310 (regOne!19570 r!17423) s!11993))))

(declare-fun b!3077656 () Bool)

(declare-fun tp_is_empty!16621 () Bool)

(assert (=> b!3077656 (= e!1925472 tp_is_empty!16621)))

(declare-fun b!3077657 () Bool)

(assert (=> b!3077657 (= e!1925469 (not e!1925471))))

(declare-fun res!1262854 () Bool)

(assert (=> b!3077657 (=> res!1262854 e!1925471)))

(declare-fun lt!1052671 () Bool)

(get-info :version)

(assert (=> b!3077657 (= res!1262854 (or lt!1052671 (not ((_ is Concat!14850) r!17423))))))

(declare-fun matchRSpec!1666 (Regex!9529 List!35394) Bool)

(assert (=> b!3077657 (= lt!1052671 (matchRSpec!1666 r!17423 s!11993))))

(assert (=> b!3077657 (= lt!1052671 (matchR!4411 r!17423 s!11993))))

(declare-fun lt!1052673 () Unit!49497)

(declare-fun mainMatchTheorem!1666 (Regex!9529 List!35394) Unit!49497)

(assert (=> b!3077657 (= lt!1052673 (mainMatchTheorem!1666 r!17423 s!11993))))

(declare-fun b!3077658 () Bool)

(declare-fun tp!969933 () Bool)

(declare-fun tp!969931 () Bool)

(assert (=> b!3077658 (= e!1925472 (and tp!969933 tp!969931))))

(declare-fun b!3077659 () Bool)

(assert (=> b!3077659 (= e!1925471 e!1925468)))

(declare-fun res!1262859 () Bool)

(assert (=> b!3077659 (=> res!1262859 e!1925468)))

(assert (=> b!3077659 (= res!1262859 (isEmptyLang!580 lt!1052667))))

(declare-fun simplify!484 (Regex!9529) Regex!9529)

(assert (=> b!3077659 (= lt!1052668 (simplify!484 (regTwo!19570 r!17423)))))

(assert (=> b!3077659 (= lt!1052667 (simplify!484 (regOne!19570 r!17423)))))

(declare-fun b!3077660 () Bool)

(assert (=> b!3077660 (= e!1925473 (validRegex!4262 (regTwo!19570 r!17423)))))

(declare-fun b!3077661 () Bool)

(declare-fun tp!969928 () Bool)

(assert (=> b!3077661 (= e!1925472 tp!969928)))

(declare-fun b!3077662 () Bool)

(declare-fun tp!969929 () Bool)

(assert (=> b!3077662 (= e!1925467 (and tp_is_empty!16621 tp!969929))))

(declare-fun b!3077663 () Bool)

(declare-fun res!1262858 () Bool)

(assert (=> b!3077663 (=> res!1262858 e!1925468)))

(assert (=> b!3077663 (= res!1262858 (not (isEmptyExpr!586 lt!1052668)))))

(assert (= (and start!293248 res!1262856) b!3077657))

(assert (= (and b!3077657 (not res!1262854)) b!3077655))

(assert (= (and b!3077655 (not res!1262855)) b!3077659))

(assert (= (and b!3077659 (not res!1262859)) b!3077651))

(assert (= (and b!3077651 (not res!1262852)) b!3077654))

(assert (= (and b!3077654 (not res!1262853)) b!3077663))

(assert (= (and b!3077663 (not res!1262858)) b!3077650))

(assert (= (and b!3077650 (not res!1262857)) b!3077653))

(assert (= (and b!3077653 (not res!1262860)) b!3077660))

(assert (= (and start!293248 ((_ is ElementMatch!9529) r!17423)) b!3077656))

(assert (= (and start!293248 ((_ is Concat!14850) r!17423)) b!3077652))

(assert (= (and start!293248 ((_ is Star!9529) r!17423)) b!3077661))

(assert (= (and start!293248 ((_ is Union!9529) r!17423)) b!3077658))

(assert (= (and start!293248 ((_ is Cons!35270) s!11993)) b!3077662))

(declare-fun m!3388721 () Bool)

(assert (=> b!3077654 m!3388721))

(declare-fun m!3388723 () Bool)

(assert (=> b!3077657 m!3388723))

(declare-fun m!3388725 () Bool)

(assert (=> b!3077657 m!3388725))

(declare-fun m!3388727 () Bool)

(assert (=> b!3077657 m!3388727))

(declare-fun m!3388729 () Bool)

(assert (=> start!293248 m!3388729))

(declare-fun m!3388731 () Bool)

(assert (=> b!3077653 m!3388731))

(declare-fun m!3388733 () Bool)

(assert (=> b!3077653 m!3388733))

(declare-fun m!3388735 () Bool)

(assert (=> b!3077653 m!3388735))

(declare-fun m!3388737 () Bool)

(assert (=> b!3077653 m!3388737))

(assert (=> b!3077653 m!3388735))

(declare-fun m!3388739 () Bool)

(assert (=> b!3077653 m!3388739))

(declare-fun m!3388741 () Bool)

(assert (=> b!3077653 m!3388741))

(declare-fun m!3388743 () Bool)

(assert (=> b!3077663 m!3388743))

(declare-fun m!3388745 () Bool)

(assert (=> b!3077660 m!3388745))

(declare-fun m!3388747 () Bool)

(assert (=> b!3077655 m!3388747))

(declare-fun m!3388749 () Bool)

(assert (=> b!3077650 m!3388749))

(declare-fun m!3388751 () Bool)

(assert (=> b!3077650 m!3388751))

(declare-fun m!3388753 () Bool)

(assert (=> b!3077650 m!3388753))

(declare-fun m!3388755 () Bool)

(assert (=> b!3077650 m!3388755))

(declare-fun m!3388757 () Bool)

(assert (=> b!3077650 m!3388757))

(declare-fun m!3388759 () Bool)

(assert (=> b!3077650 m!3388759))

(declare-fun m!3388761 () Bool)

(assert (=> b!3077659 m!3388761))

(declare-fun m!3388763 () Bool)

(assert (=> b!3077659 m!3388763))

(declare-fun m!3388765 () Bool)

(assert (=> b!3077659 m!3388765))

(declare-fun m!3388767 () Bool)

(assert (=> b!3077651 m!3388767))

(check-sat (not b!3077662) (not b!3077657) (not start!293248) (not b!3077661) (not b!3077652) (not b!3077650) (not b!3077651) (not b!3077663) (not b!3077653) (not b!3077659) (not b!3077655) (not b!3077654) tp_is_empty!16621 (not b!3077658) (not b!3077660))
(check-sat)
(get-model)

(declare-fun d!857144 () Bool)

(assert (=> d!857144 (= (isEmptyExpr!586 lt!1052667) ((_ is EmptyExpr!9529) lt!1052667))))

(assert (=> b!3077654 d!857144))

(declare-fun d!857146 () Bool)

(assert (=> d!857146 (= (isEmptyLang!580 lt!1052667) ((_ is EmptyLang!9529) lt!1052667))))

(assert (=> b!3077659 d!857146))

(declare-fun b!3077718 () Bool)

(declare-fun e!1925502 () Bool)

(declare-fun call!214260 () Bool)

(assert (=> b!3077718 (= e!1925502 call!214260)))

(declare-fun b!3077719 () Bool)

(declare-fun e!1925503 () Regex!9529)

(assert (=> b!3077719 (= e!1925503 (regTwo!19570 r!17423))))

(declare-fun b!3077720 () Bool)

(declare-fun e!1925512 () Regex!9529)

(declare-fun e!1925514 () Regex!9529)

(assert (=> b!3077720 (= e!1925512 e!1925514)))

(declare-fun lt!1052690 () Regex!9529)

(declare-fun call!214257 () Regex!9529)

(assert (=> b!3077720 (= lt!1052690 call!214257)))

(declare-fun lt!1052691 () Regex!9529)

(declare-fun call!214261 () Regex!9529)

(assert (=> b!3077720 (= lt!1052691 call!214261)))

(declare-fun c!512217 () Bool)

(assert (=> b!3077720 (= c!512217 call!214260)))

(declare-fun b!3077721 () Bool)

(declare-fun e!1925515 () Regex!9529)

(assert (=> b!3077721 (= e!1925515 lt!1052690)))

(declare-fun b!3077722 () Bool)

(declare-fun c!512214 () Bool)

(assert (=> b!3077722 (= c!512214 ((_ is EmptyExpr!9529) (regTwo!19570 r!17423)))))

(declare-fun e!1925504 () Regex!9529)

(assert (=> b!3077722 (= e!1925503 e!1925504)))

(declare-fun bm!214250 () Bool)

(declare-fun c!512215 () Bool)

(assert (=> bm!214250 (= call!214257 (simplify!484 (ite c!512215 (regOne!19571 (regTwo!19570 r!17423)) (regTwo!19570 (regTwo!19570 r!17423)))))))

(declare-fun c!512210 () Bool)

(declare-fun bm!214251 () Bool)

(declare-fun call!214258 () Regex!9529)

(assert (=> bm!214251 (= call!214258 (simplify!484 (ite c!512210 (reg!9858 (regTwo!19570 r!17423)) (ite c!512215 (regTwo!19571 (regTwo!19570 r!17423)) (regOne!19570 (regTwo!19570 r!17423))))))))

(declare-fun b!3077723 () Bool)

(declare-fun e!1925505 () Regex!9529)

(assert (=> b!3077723 (= e!1925505 EmptyLang!9529)))

(declare-fun b!3077724 () Bool)

(declare-fun c!512218 () Bool)

(declare-fun e!1925511 () Bool)

(assert (=> b!3077724 (= c!512218 e!1925511)))

(declare-fun res!1262868 () Bool)

(assert (=> b!3077724 (=> res!1262868 e!1925511)))

(declare-fun call!214256 () Bool)

(assert (=> b!3077724 (= res!1262868 call!214256)))

(declare-fun lt!1052694 () Regex!9529)

(assert (=> b!3077724 (= lt!1052694 call!214258)))

(declare-fun e!1925506 () Regex!9529)

(declare-fun e!1925507 () Regex!9529)

(assert (=> b!3077724 (= e!1925506 e!1925507)))

(declare-fun b!3077726 () Bool)

(declare-fun e!1925510 () Regex!9529)

(assert (=> b!3077726 (= e!1925512 e!1925510)))

(declare-fun lt!1052695 () Regex!9529)

(assert (=> b!3077726 (= lt!1052695 call!214261)))

(declare-fun lt!1052692 () Regex!9529)

(assert (=> b!3077726 (= lt!1052692 call!214257)))

(declare-fun res!1262869 () Bool)

(declare-fun call!214259 () Bool)

(assert (=> b!3077726 (= res!1262869 call!214259)))

(assert (=> b!3077726 (=> res!1262869 e!1925502)))

(declare-fun c!512213 () Bool)

(assert (=> b!3077726 (= c!512213 e!1925502)))

(declare-fun bm!214252 () Bool)

(declare-fun call!214255 () Bool)

(assert (=> bm!214252 (= call!214255 (isEmptyExpr!586 (ite c!512210 lt!1052694 lt!1052695)))))

(declare-fun bm!214253 () Bool)

(assert (=> bm!214253 (= call!214260 call!214256)))

(declare-fun b!3077727 () Bool)

(assert (=> b!3077727 (= e!1925507 EmptyExpr!9529)))

(declare-fun b!3077728 () Bool)

(assert (=> b!3077728 (= e!1925507 (Star!9529 lt!1052694))))

(declare-fun bm!214254 () Bool)

(assert (=> bm!214254 (= call!214256 (isEmptyLang!580 (ite c!512210 lt!1052694 (ite c!512215 lt!1052690 lt!1052692))))))

(declare-fun b!3077729 () Bool)

(assert (=> b!3077729 (= e!1925514 lt!1052691)))

(declare-fun b!3077730 () Bool)

(assert (=> b!3077730 (= e!1925504 EmptyExpr!9529)))

(declare-fun b!3077731 () Bool)

(declare-fun e!1925513 () Regex!9529)

(assert (=> b!3077731 (= e!1925513 lt!1052692)))

(declare-fun b!3077732 () Bool)

(assert (=> b!3077732 (= c!512215 ((_ is Union!9529) (regTwo!19570 r!17423)))))

(assert (=> b!3077732 (= e!1925506 e!1925512)))

(declare-fun b!3077733 () Bool)

(declare-fun e!1925508 () Regex!9529)

(assert (=> b!3077733 (= e!1925508 lt!1052695)))

(declare-fun b!3077734 () Bool)

(declare-fun e!1925509 () Bool)

(declare-fun lt!1052693 () Regex!9529)

(declare-fun nullable!3174 (Regex!9529) Bool)

(assert (=> b!3077734 (= e!1925509 (= (nullable!3174 lt!1052693) (nullable!3174 (regTwo!19570 r!17423))))))

(declare-fun bm!214255 () Bool)

(assert (=> bm!214255 (= call!214259 (isEmptyLang!580 (ite c!512215 lt!1052691 lt!1052695)))))

(declare-fun b!3077735 () Bool)

(assert (=> b!3077735 (= e!1925515 (Union!9529 lt!1052690 lt!1052691))))

(declare-fun b!3077736 () Bool)

(assert (=> b!3077736 (= e!1925513 e!1925508)))

(declare-fun c!512219 () Bool)

(assert (=> b!3077736 (= c!512219 (isEmptyExpr!586 lt!1052692))))

(declare-fun b!3077737 () Bool)

(declare-fun c!512220 () Bool)

(assert (=> b!3077737 (= c!512220 call!214259)))

(assert (=> b!3077737 (= e!1925514 e!1925515)))

(declare-fun b!3077738 () Bool)

(assert (=> b!3077738 (= e!1925511 call!214255)))

(declare-fun b!3077739 () Bool)

(declare-fun c!512211 () Bool)

(assert (=> b!3077739 (= c!512211 call!214255)))

(assert (=> b!3077739 (= e!1925510 e!1925513)))

(declare-fun b!3077740 () Bool)

(assert (=> b!3077740 (= e!1925510 EmptyLang!9529)))

(declare-fun bm!214256 () Bool)

(assert (=> bm!214256 (= call!214261 call!214258)))

(declare-fun b!3077741 () Bool)

(assert (=> b!3077741 (= e!1925505 e!1925503)))

(declare-fun c!512216 () Bool)

(assert (=> b!3077741 (= c!512216 ((_ is ElementMatch!9529) (regTwo!19570 r!17423)))))

(declare-fun b!3077742 () Bool)

(assert (=> b!3077742 (= e!1925504 e!1925506)))

(assert (=> b!3077742 (= c!512210 ((_ is Star!9529) (regTwo!19570 r!17423)))))

(declare-fun d!857148 () Bool)

(assert (=> d!857148 e!1925509))

(declare-fun res!1262867 () Bool)

(assert (=> d!857148 (=> (not res!1262867) (not e!1925509))))

(assert (=> d!857148 (= res!1262867 (validRegex!4262 lt!1052693))))

(assert (=> d!857148 (= lt!1052693 e!1925505)))

(declare-fun c!512212 () Bool)

(assert (=> d!857148 (= c!512212 ((_ is EmptyLang!9529) (regTwo!19570 r!17423)))))

(assert (=> d!857148 (validRegex!4262 (regTwo!19570 r!17423))))

(assert (=> d!857148 (= (simplify!484 (regTwo!19570 r!17423)) lt!1052693)))

(declare-fun b!3077725 () Bool)

(assert (=> b!3077725 (= e!1925508 (Concat!14850 lt!1052695 lt!1052692))))

(assert (= (and d!857148 c!512212) b!3077723))

(assert (= (and d!857148 (not c!512212)) b!3077741))

(assert (= (and b!3077741 c!512216) b!3077719))

(assert (= (and b!3077741 (not c!512216)) b!3077722))

(assert (= (and b!3077722 c!512214) b!3077730))

(assert (= (and b!3077722 (not c!512214)) b!3077742))

(assert (= (and b!3077742 c!512210) b!3077724))

(assert (= (and b!3077742 (not c!512210)) b!3077732))

(assert (= (and b!3077724 (not res!1262868)) b!3077738))

(assert (= (and b!3077724 c!512218) b!3077727))

(assert (= (and b!3077724 (not c!512218)) b!3077728))

(assert (= (and b!3077732 c!512215) b!3077720))

(assert (= (and b!3077732 (not c!512215)) b!3077726))

(assert (= (and b!3077720 c!512217) b!3077729))

(assert (= (and b!3077720 (not c!512217)) b!3077737))

(assert (= (and b!3077737 c!512220) b!3077721))

(assert (= (and b!3077737 (not c!512220)) b!3077735))

(assert (= (and b!3077726 (not res!1262869)) b!3077718))

(assert (= (and b!3077726 c!512213) b!3077740))

(assert (= (and b!3077726 (not c!512213)) b!3077739))

(assert (= (and b!3077739 c!512211) b!3077731))

(assert (= (and b!3077739 (not c!512211)) b!3077736))

(assert (= (and b!3077736 c!512219) b!3077733))

(assert (= (and b!3077736 (not c!512219)) b!3077725))

(assert (= (or b!3077720 b!3077726) bm!214250))

(assert (= (or b!3077720 b!3077726) bm!214256))

(assert (= (or b!3077737 b!3077726) bm!214255))

(assert (= (or b!3077720 b!3077718) bm!214253))

(assert (= (or b!3077738 b!3077739) bm!214252))

(assert (= (or b!3077724 bm!214256) bm!214251))

(assert (= (or b!3077724 bm!214253) bm!214254))

(assert (= (and d!857148 res!1262867) b!3077734))

(declare-fun m!3388771 () Bool)

(assert (=> bm!214252 m!3388771))

(declare-fun m!3388773 () Bool)

(assert (=> bm!214254 m!3388773))

(declare-fun m!3388775 () Bool)

(assert (=> b!3077736 m!3388775))

(declare-fun m!3388777 () Bool)

(assert (=> bm!214250 m!3388777))

(declare-fun m!3388779 () Bool)

(assert (=> d!857148 m!3388779))

(assert (=> d!857148 m!3388745))

(declare-fun m!3388781 () Bool)

(assert (=> bm!214255 m!3388781))

(declare-fun m!3388783 () Bool)

(assert (=> b!3077734 m!3388783))

(declare-fun m!3388785 () Bool)

(assert (=> b!3077734 m!3388785))

(declare-fun m!3388787 () Bool)

(assert (=> bm!214251 m!3388787))

(assert (=> b!3077659 d!857148))

(declare-fun b!3077761 () Bool)

(declare-fun e!1925530 () Bool)

(declare-fun call!214273 () Bool)

(assert (=> b!3077761 (= e!1925530 call!214273)))

(declare-fun b!3077762 () Bool)

(declare-fun e!1925531 () Regex!9529)

(assert (=> b!3077762 (= e!1925531 (regOne!19570 r!17423))))

(declare-fun b!3077763 () Bool)

(declare-fun e!1925540 () Regex!9529)

(declare-fun e!1925542 () Regex!9529)

(assert (=> b!3077763 (= e!1925540 e!1925542)))

(declare-fun lt!1052696 () Regex!9529)

(declare-fun call!214270 () Regex!9529)

(assert (=> b!3077763 (= lt!1052696 call!214270)))

(declare-fun lt!1052697 () Regex!9529)

(declare-fun call!214274 () Regex!9529)

(assert (=> b!3077763 (= lt!1052697 call!214274)))

(declare-fun c!512232 () Bool)

(assert (=> b!3077763 (= c!512232 call!214273)))

(declare-fun b!3077764 () Bool)

(declare-fun e!1925543 () Regex!9529)

(assert (=> b!3077764 (= e!1925543 lt!1052696)))

(declare-fun b!3077765 () Bool)

(declare-fun c!512229 () Bool)

(assert (=> b!3077765 (= c!512229 ((_ is EmptyExpr!9529) (regOne!19570 r!17423)))))

(declare-fun e!1925532 () Regex!9529)

(assert (=> b!3077765 (= e!1925531 e!1925532)))

(declare-fun bm!214263 () Bool)

(declare-fun c!512230 () Bool)

(assert (=> bm!214263 (= call!214270 (simplify!484 (ite c!512230 (regOne!19571 (regOne!19570 r!17423)) (regTwo!19570 (regOne!19570 r!17423)))))))

(declare-fun call!214271 () Regex!9529)

(declare-fun bm!214264 () Bool)

(declare-fun c!512225 () Bool)

(assert (=> bm!214264 (= call!214271 (simplify!484 (ite c!512225 (reg!9858 (regOne!19570 r!17423)) (ite c!512230 (regTwo!19571 (regOne!19570 r!17423)) (regOne!19570 (regOne!19570 r!17423))))))))

(declare-fun b!3077766 () Bool)

(declare-fun e!1925533 () Regex!9529)

(assert (=> b!3077766 (= e!1925533 EmptyLang!9529)))

(declare-fun b!3077767 () Bool)

(declare-fun c!512233 () Bool)

(declare-fun e!1925539 () Bool)

(assert (=> b!3077767 (= c!512233 e!1925539)))

(declare-fun res!1262881 () Bool)

(assert (=> b!3077767 (=> res!1262881 e!1925539)))

(declare-fun call!214269 () Bool)

(assert (=> b!3077767 (= res!1262881 call!214269)))

(declare-fun lt!1052700 () Regex!9529)

(assert (=> b!3077767 (= lt!1052700 call!214271)))

(declare-fun e!1925534 () Regex!9529)

(declare-fun e!1925535 () Regex!9529)

(assert (=> b!3077767 (= e!1925534 e!1925535)))

(declare-fun b!3077769 () Bool)

(declare-fun e!1925538 () Regex!9529)

(assert (=> b!3077769 (= e!1925540 e!1925538)))

(declare-fun lt!1052701 () Regex!9529)

(assert (=> b!3077769 (= lt!1052701 call!214274)))

(declare-fun lt!1052698 () Regex!9529)

(assert (=> b!3077769 (= lt!1052698 call!214270)))

(declare-fun res!1262882 () Bool)

(declare-fun call!214272 () Bool)

(assert (=> b!3077769 (= res!1262882 call!214272)))

(assert (=> b!3077769 (=> res!1262882 e!1925530)))

(declare-fun c!512228 () Bool)

(assert (=> b!3077769 (= c!512228 e!1925530)))

(declare-fun bm!214265 () Bool)

(declare-fun call!214268 () Bool)

(assert (=> bm!214265 (= call!214268 (isEmptyExpr!586 (ite c!512225 lt!1052700 lt!1052701)))))

(declare-fun bm!214266 () Bool)

(assert (=> bm!214266 (= call!214273 call!214269)))

(declare-fun b!3077770 () Bool)

(assert (=> b!3077770 (= e!1925535 EmptyExpr!9529)))

(declare-fun b!3077771 () Bool)

(assert (=> b!3077771 (= e!1925535 (Star!9529 lt!1052700))))

(declare-fun bm!214267 () Bool)

(assert (=> bm!214267 (= call!214269 (isEmptyLang!580 (ite c!512225 lt!1052700 (ite c!512230 lt!1052696 lt!1052698))))))

(declare-fun b!3077772 () Bool)

(assert (=> b!3077772 (= e!1925542 lt!1052697)))

(declare-fun b!3077773 () Bool)

(assert (=> b!3077773 (= e!1925532 EmptyExpr!9529)))

(declare-fun b!3077774 () Bool)

(declare-fun e!1925541 () Regex!9529)

(assert (=> b!3077774 (= e!1925541 lt!1052698)))

(declare-fun b!3077775 () Bool)

(assert (=> b!3077775 (= c!512230 ((_ is Union!9529) (regOne!19570 r!17423)))))

(assert (=> b!3077775 (= e!1925534 e!1925540)))

(declare-fun b!3077776 () Bool)

(declare-fun e!1925536 () Regex!9529)

(assert (=> b!3077776 (= e!1925536 lt!1052701)))

(declare-fun b!3077777 () Bool)

(declare-fun e!1925537 () Bool)

(declare-fun lt!1052699 () Regex!9529)

(assert (=> b!3077777 (= e!1925537 (= (nullable!3174 lt!1052699) (nullable!3174 (regOne!19570 r!17423))))))

(declare-fun bm!214268 () Bool)

(assert (=> bm!214268 (= call!214272 (isEmptyLang!580 (ite c!512230 lt!1052697 lt!1052701)))))

(declare-fun b!3077778 () Bool)

(assert (=> b!3077778 (= e!1925543 (Union!9529 lt!1052696 lt!1052697))))

(declare-fun b!3077779 () Bool)

(assert (=> b!3077779 (= e!1925541 e!1925536)))

(declare-fun c!512234 () Bool)

(assert (=> b!3077779 (= c!512234 (isEmptyExpr!586 lt!1052698))))

(declare-fun b!3077780 () Bool)

(declare-fun c!512235 () Bool)

(assert (=> b!3077780 (= c!512235 call!214272)))

(assert (=> b!3077780 (= e!1925542 e!1925543)))

(declare-fun b!3077781 () Bool)

(assert (=> b!3077781 (= e!1925539 call!214268)))

(declare-fun b!3077782 () Bool)

(declare-fun c!512226 () Bool)

(assert (=> b!3077782 (= c!512226 call!214268)))

(assert (=> b!3077782 (= e!1925538 e!1925541)))

(declare-fun b!3077783 () Bool)

(assert (=> b!3077783 (= e!1925538 EmptyLang!9529)))

(declare-fun bm!214269 () Bool)

(assert (=> bm!214269 (= call!214274 call!214271)))

(declare-fun b!3077784 () Bool)

(assert (=> b!3077784 (= e!1925533 e!1925531)))

(declare-fun c!512231 () Bool)

(assert (=> b!3077784 (= c!512231 ((_ is ElementMatch!9529) (regOne!19570 r!17423)))))

(declare-fun b!3077785 () Bool)

(assert (=> b!3077785 (= e!1925532 e!1925534)))

(assert (=> b!3077785 (= c!512225 ((_ is Star!9529) (regOne!19570 r!17423)))))

(declare-fun d!857154 () Bool)

(assert (=> d!857154 e!1925537))

(declare-fun res!1262880 () Bool)

(assert (=> d!857154 (=> (not res!1262880) (not e!1925537))))

(assert (=> d!857154 (= res!1262880 (validRegex!4262 lt!1052699))))

(assert (=> d!857154 (= lt!1052699 e!1925533)))

(declare-fun c!512227 () Bool)

(assert (=> d!857154 (= c!512227 ((_ is EmptyLang!9529) (regOne!19570 r!17423)))))

(assert (=> d!857154 (validRegex!4262 (regOne!19570 r!17423))))

(assert (=> d!857154 (= (simplify!484 (regOne!19570 r!17423)) lt!1052699)))

(declare-fun b!3077768 () Bool)

(assert (=> b!3077768 (= e!1925536 (Concat!14850 lt!1052701 lt!1052698))))

(assert (= (and d!857154 c!512227) b!3077766))

(assert (= (and d!857154 (not c!512227)) b!3077784))

(assert (= (and b!3077784 c!512231) b!3077762))

(assert (= (and b!3077784 (not c!512231)) b!3077765))

(assert (= (and b!3077765 c!512229) b!3077773))

(assert (= (and b!3077765 (not c!512229)) b!3077785))

(assert (= (and b!3077785 c!512225) b!3077767))

(assert (= (and b!3077785 (not c!512225)) b!3077775))

(assert (= (and b!3077767 (not res!1262881)) b!3077781))

(assert (= (and b!3077767 c!512233) b!3077770))

(assert (= (and b!3077767 (not c!512233)) b!3077771))

(assert (= (and b!3077775 c!512230) b!3077763))

(assert (= (and b!3077775 (not c!512230)) b!3077769))

(assert (= (and b!3077763 c!512232) b!3077772))

(assert (= (and b!3077763 (not c!512232)) b!3077780))

(assert (= (and b!3077780 c!512235) b!3077764))

(assert (= (and b!3077780 (not c!512235)) b!3077778))

(assert (= (and b!3077769 (not res!1262882)) b!3077761))

(assert (= (and b!3077769 c!512228) b!3077783))

(assert (= (and b!3077769 (not c!512228)) b!3077782))

(assert (= (and b!3077782 c!512226) b!3077774))

(assert (= (and b!3077782 (not c!512226)) b!3077779))

(assert (= (and b!3077779 c!512234) b!3077776))

(assert (= (and b!3077779 (not c!512234)) b!3077768))

(assert (= (or b!3077763 b!3077769) bm!214263))

(assert (= (or b!3077763 b!3077769) bm!214269))

(assert (= (or b!3077780 b!3077769) bm!214268))

(assert (= (or b!3077763 b!3077761) bm!214266))

(assert (= (or b!3077781 b!3077782) bm!214265))

(assert (= (or b!3077767 bm!214269) bm!214264))

(assert (= (or b!3077767 bm!214266) bm!214267))

(assert (= (and d!857154 res!1262880) b!3077777))

(declare-fun m!3388789 () Bool)

(assert (=> bm!214265 m!3388789))

(declare-fun m!3388791 () Bool)

(assert (=> bm!214267 m!3388791))

(declare-fun m!3388793 () Bool)

(assert (=> b!3077779 m!3388793))

(declare-fun m!3388795 () Bool)

(assert (=> bm!214263 m!3388795))

(declare-fun m!3388797 () Bool)

(assert (=> d!857154 m!3388797))

(assert (=> d!857154 m!3388733))

(declare-fun m!3388799 () Bool)

(assert (=> bm!214268 m!3388799))

(declare-fun m!3388801 () Bool)

(assert (=> b!3077777 m!3388801))

(declare-fun m!3388803 () Bool)

(assert (=> b!3077777 m!3388803))

(declare-fun m!3388805 () Bool)

(assert (=> bm!214264 m!3388805))

(assert (=> b!3077659 d!857154))

(declare-fun d!857156 () Bool)

(assert (=> d!857156 (isDefined!5375 (findConcatSeparation!1218 (regOne!19570 r!17423) (regTwo!19570 r!17423) Nil!35270 s!11993 s!11993))))

(declare-fun lt!1052704 () Unit!49497)

(declare-fun choose!18238 (Regex!9529 Regex!9529 List!35394 List!35394 List!35394 List!35394 List!35394) Unit!49497)

(assert (=> d!857156 (= lt!1052704 (choose!18238 (regOne!19570 r!17423) (regTwo!19570 r!17423) s!11993 Nil!35270 s!11993 Nil!35270 s!11993))))

(assert (=> d!857156 (validRegex!4262 (regOne!19570 r!17423))))

(assert (=> d!857156 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!38 (regOne!19570 r!17423) (regTwo!19570 r!17423) s!11993 Nil!35270 s!11993 Nil!35270 s!11993) lt!1052704)))

(declare-fun bs!532809 () Bool)

(assert (= bs!532809 d!857156))

(assert (=> bs!532809 m!3388735))

(assert (=> bs!532809 m!3388735))

(assert (=> bs!532809 m!3388737))

(declare-fun m!3388817 () Bool)

(assert (=> bs!532809 m!3388817))

(assert (=> bs!532809 m!3388733))

(assert (=> b!3077653 d!857156))

(declare-fun d!857164 () Bool)

(declare-fun res!1262900 () Bool)

(declare-fun e!1925571 () Bool)

(assert (=> d!857164 (=> res!1262900 e!1925571)))

(assert (=> d!857164 (= res!1262900 ((_ is ElementMatch!9529) (regOne!19570 r!17423)))))

(assert (=> d!857164 (= (validRegex!4262 (regOne!19570 r!17423)) e!1925571)))

(declare-fun b!3077813 () Bool)

(declare-fun e!1925568 () Bool)

(declare-fun call!214285 () Bool)

(assert (=> b!3077813 (= e!1925568 call!214285)))

(declare-fun bm!214279 () Bool)

(declare-fun c!512243 () Bool)

(assert (=> bm!214279 (= call!214285 (validRegex!4262 (ite c!512243 (regOne!19571 (regOne!19570 r!17423)) (regTwo!19570 (regOne!19570 r!17423)))))))

(declare-fun b!3077814 () Bool)

(declare-fun res!1262898 () Bool)

(declare-fun e!1925566 () Bool)

(assert (=> b!3077814 (=> res!1262898 e!1925566)))

(assert (=> b!3077814 (= res!1262898 (not ((_ is Concat!14850) (regOne!19570 r!17423))))))

(declare-fun e!1925570 () Bool)

(assert (=> b!3077814 (= e!1925570 e!1925566)))

(declare-fun b!3077815 () Bool)

(declare-fun e!1925567 () Bool)

(assert (=> b!3077815 (= e!1925571 e!1925567)))

(declare-fun c!512242 () Bool)

(assert (=> b!3077815 (= c!512242 ((_ is Star!9529) (regOne!19570 r!17423)))))

(declare-fun bm!214280 () Bool)

(declare-fun call!214286 () Bool)

(assert (=> bm!214280 (= call!214286 (validRegex!4262 (ite c!512242 (reg!9858 (regOne!19570 r!17423)) (ite c!512243 (regTwo!19571 (regOne!19570 r!17423)) (regOne!19570 (regOne!19570 r!17423))))))))

(declare-fun b!3077816 () Bool)

(declare-fun res!1262899 () Bool)

(declare-fun e!1925569 () Bool)

(assert (=> b!3077816 (=> (not res!1262899) (not e!1925569))))

(assert (=> b!3077816 (= res!1262899 call!214285)))

(assert (=> b!3077816 (= e!1925570 e!1925569)))

(declare-fun b!3077817 () Bool)

(assert (=> b!3077817 (= e!1925567 e!1925570)))

(assert (=> b!3077817 (= c!512243 ((_ is Union!9529) (regOne!19570 r!17423)))))

(declare-fun bm!214281 () Bool)

(declare-fun call!214284 () Bool)

(assert (=> bm!214281 (= call!214284 call!214286)))

(declare-fun b!3077818 () Bool)

(declare-fun e!1925565 () Bool)

(assert (=> b!3077818 (= e!1925565 call!214286)))

(declare-fun b!3077819 () Bool)

(assert (=> b!3077819 (= e!1925567 e!1925565)))

(declare-fun res!1262902 () Bool)

(assert (=> b!3077819 (= res!1262902 (not (nullable!3174 (reg!9858 (regOne!19570 r!17423)))))))

(assert (=> b!3077819 (=> (not res!1262902) (not e!1925565))))

(declare-fun b!3077820 () Bool)

(assert (=> b!3077820 (= e!1925566 e!1925568)))

(declare-fun res!1262901 () Bool)

(assert (=> b!3077820 (=> (not res!1262901) (not e!1925568))))

(assert (=> b!3077820 (= res!1262901 call!214284)))

(declare-fun b!3077821 () Bool)

(assert (=> b!3077821 (= e!1925569 call!214284)))

(assert (= (and d!857164 (not res!1262900)) b!3077815))

(assert (= (and b!3077815 c!512242) b!3077819))

(assert (= (and b!3077815 (not c!512242)) b!3077817))

(assert (= (and b!3077819 res!1262902) b!3077818))

(assert (= (and b!3077817 c!512243) b!3077816))

(assert (= (and b!3077817 (not c!512243)) b!3077814))

(assert (= (and b!3077816 res!1262899) b!3077821))

(assert (= (and b!3077814 (not res!1262898)) b!3077820))

(assert (= (and b!3077820 res!1262901) b!3077813))

(assert (= (or b!3077816 b!3077813) bm!214279))

(assert (= (or b!3077821 b!3077820) bm!214281))

(assert (= (or b!3077818 bm!214281) bm!214280))

(declare-fun m!3388819 () Bool)

(assert (=> bm!214279 m!3388819))

(declare-fun m!3388821 () Bool)

(assert (=> bm!214280 m!3388821))

(declare-fun m!3388823 () Bool)

(assert (=> b!3077819 m!3388823))

(assert (=> b!3077653 d!857164))

(declare-fun d!857166 () Bool)

(declare-fun choose!18240 (Int) Bool)

(assert (=> d!857166 (= (Exists!1792 lambda!114210) (choose!18240 lambda!114210))))

(declare-fun bs!532810 () Bool)

(assert (= bs!532810 d!857166))

(declare-fun m!3388825 () Bool)

(assert (=> bs!532810 m!3388825))

(assert (=> b!3077653 d!857166))

(declare-fun d!857168 () Bool)

(declare-fun isEmpty!19603 (Option!6824) Bool)

(assert (=> d!857168 (= (isDefined!5375 (findConcatSeparation!1218 (regOne!19570 r!17423) (regTwo!19570 r!17423) Nil!35270 s!11993 s!11993)) (not (isEmpty!19603 (findConcatSeparation!1218 (regOne!19570 r!17423) (regTwo!19570 r!17423) Nil!35270 s!11993 s!11993))))))

(declare-fun bs!532811 () Bool)

(assert (= bs!532811 d!857168))

(assert (=> bs!532811 m!3388735))

(declare-fun m!3388827 () Bool)

(assert (=> bs!532811 m!3388827))

(assert (=> b!3077653 d!857168))

(declare-fun b!3077871 () Bool)

(declare-fun e!1925599 () Option!6824)

(assert (=> b!3077871 (= e!1925599 None!6823)))

(declare-fun b!3077872 () Bool)

(declare-fun e!1925600 () Option!6824)

(assert (=> b!3077872 (= e!1925600 e!1925599)))

(declare-fun c!512254 () Bool)

(assert (=> b!3077872 (= c!512254 ((_ is Nil!35270) s!11993))))

(declare-fun b!3077873 () Bool)

(declare-fun res!1262935 () Bool)

(declare-fun e!1925603 () Bool)

(assert (=> b!3077873 (=> (not res!1262935) (not e!1925603))))

(declare-fun lt!1052725 () Option!6824)

(declare-fun get!11055 (Option!6824) tuple2!34184)

(assert (=> b!3077873 (= res!1262935 (matchR!4411 (regTwo!19570 r!17423) (_2!20224 (get!11055 lt!1052725))))))

(declare-fun b!3077874 () Bool)

(assert (=> b!3077874 (= e!1925600 (Some!6823 (tuple2!34185 Nil!35270 s!11993)))))

(declare-fun d!857170 () Bool)

(declare-fun e!1925601 () Bool)

(assert (=> d!857170 e!1925601))

(declare-fun res!1262932 () Bool)

(assert (=> d!857170 (=> res!1262932 e!1925601)))

(assert (=> d!857170 (= res!1262932 e!1925603)))

(declare-fun res!1262933 () Bool)

(assert (=> d!857170 (=> (not res!1262933) (not e!1925603))))

(assert (=> d!857170 (= res!1262933 (isDefined!5375 lt!1052725))))

(assert (=> d!857170 (= lt!1052725 e!1925600)))

(declare-fun c!512255 () Bool)

(declare-fun e!1925602 () Bool)

(assert (=> d!857170 (= c!512255 e!1925602)))

(declare-fun res!1262934 () Bool)

(assert (=> d!857170 (=> (not res!1262934) (not e!1925602))))

(assert (=> d!857170 (= res!1262934 (matchR!4411 (regOne!19570 r!17423) Nil!35270))))

(assert (=> d!857170 (validRegex!4262 (regOne!19570 r!17423))))

(assert (=> d!857170 (= (findConcatSeparation!1218 (regOne!19570 r!17423) (regTwo!19570 r!17423) Nil!35270 s!11993 s!11993) lt!1052725)))

(declare-fun b!3077875 () Bool)

(declare-fun ++!8480 (List!35394 List!35394) List!35394)

(assert (=> b!3077875 (= e!1925603 (= (++!8480 (_1!20224 (get!11055 lt!1052725)) (_2!20224 (get!11055 lt!1052725))) s!11993))))

(declare-fun b!3077876 () Bool)

(declare-fun lt!1052723 () Unit!49497)

(declare-fun lt!1052724 () Unit!49497)

(assert (=> b!3077876 (= lt!1052723 lt!1052724)))

(assert (=> b!3077876 (= (++!8480 (++!8480 Nil!35270 (Cons!35270 (h!40690 s!11993) Nil!35270)) (t!234459 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1075 (List!35394 C!19244 List!35394 List!35394) Unit!49497)

(assert (=> b!3077876 (= lt!1052724 (lemmaMoveElementToOtherListKeepsConcatEq!1075 Nil!35270 (h!40690 s!11993) (t!234459 s!11993) s!11993))))

(assert (=> b!3077876 (= e!1925599 (findConcatSeparation!1218 (regOne!19570 r!17423) (regTwo!19570 r!17423) (++!8480 Nil!35270 (Cons!35270 (h!40690 s!11993) Nil!35270)) (t!234459 s!11993) s!11993))))

(declare-fun b!3077877 () Bool)

(declare-fun res!1262936 () Bool)

(assert (=> b!3077877 (=> (not res!1262936) (not e!1925603))))

(assert (=> b!3077877 (= res!1262936 (matchR!4411 (regOne!19570 r!17423) (_1!20224 (get!11055 lt!1052725))))))

(declare-fun b!3077878 () Bool)

(assert (=> b!3077878 (= e!1925601 (not (isDefined!5375 lt!1052725)))))

(declare-fun b!3077879 () Bool)

(assert (=> b!3077879 (= e!1925602 (matchR!4411 (regTwo!19570 r!17423) s!11993))))

(assert (= (and d!857170 res!1262934) b!3077879))

(assert (= (and d!857170 c!512255) b!3077874))

(assert (= (and d!857170 (not c!512255)) b!3077872))

(assert (= (and b!3077872 c!512254) b!3077871))

(assert (= (and b!3077872 (not c!512254)) b!3077876))

(assert (= (and d!857170 res!1262933) b!3077877))

(assert (= (and b!3077877 res!1262936) b!3077873))

(assert (= (and b!3077873 res!1262935) b!3077875))

(assert (= (and d!857170 (not res!1262932)) b!3077878))

(declare-fun m!3388855 () Bool)

(assert (=> d!857170 m!3388855))

(declare-fun m!3388857 () Bool)

(assert (=> d!857170 m!3388857))

(assert (=> d!857170 m!3388733))

(declare-fun m!3388859 () Bool)

(assert (=> b!3077879 m!3388859))

(declare-fun m!3388861 () Bool)

(assert (=> b!3077873 m!3388861))

(declare-fun m!3388863 () Bool)

(assert (=> b!3077873 m!3388863))

(assert (=> b!3077878 m!3388855))

(assert (=> b!3077877 m!3388861))

(declare-fun m!3388865 () Bool)

(assert (=> b!3077877 m!3388865))

(declare-fun m!3388867 () Bool)

(assert (=> b!3077876 m!3388867))

(assert (=> b!3077876 m!3388867))

(declare-fun m!3388869 () Bool)

(assert (=> b!3077876 m!3388869))

(declare-fun m!3388871 () Bool)

(assert (=> b!3077876 m!3388871))

(assert (=> b!3077876 m!3388867))

(declare-fun m!3388873 () Bool)

(assert (=> b!3077876 m!3388873))

(assert (=> b!3077875 m!3388861))

(declare-fun m!3388875 () Bool)

(assert (=> b!3077875 m!3388875))

(assert (=> b!3077653 d!857170))

(declare-fun bs!532814 () Bool)

(declare-fun d!857182 () Bool)

(assert (= bs!532814 (and d!857182 b!3077653)))

(declare-fun lambda!114216 () Int)

(assert (=> bs!532814 (= lambda!114216 lambda!114210)))

(assert (=> d!857182 true))

(assert (=> d!857182 true))

(assert (=> d!857182 true))

(assert (=> d!857182 (= (isDefined!5375 (findConcatSeparation!1218 (regOne!19570 r!17423) (regTwo!19570 r!17423) Nil!35270 s!11993 s!11993)) (Exists!1792 lambda!114216))))

(declare-fun lt!1052730 () Unit!49497)

(declare-fun choose!18241 (Regex!9529 Regex!9529 List!35394) Unit!49497)

(assert (=> d!857182 (= lt!1052730 (choose!18241 (regOne!19570 r!17423) (regTwo!19570 r!17423) s!11993))))

(assert (=> d!857182 (validRegex!4262 (regOne!19570 r!17423))))

(assert (=> d!857182 (= (lemmaFindConcatSeparationEquivalentToExists!988 (regOne!19570 r!17423) (regTwo!19570 r!17423) s!11993) lt!1052730)))

(declare-fun bs!532815 () Bool)

(assert (= bs!532815 d!857182))

(assert (=> bs!532815 m!3388733))

(declare-fun m!3388877 () Bool)

(assert (=> bs!532815 m!3388877))

(declare-fun m!3388879 () Bool)

(assert (=> bs!532815 m!3388879))

(assert (=> bs!532815 m!3388735))

(assert (=> bs!532815 m!3388737))

(assert (=> bs!532815 m!3388735))

(assert (=> b!3077653 d!857182))

(declare-fun d!857184 () Bool)

(assert (=> d!857184 (= (matchR!4411 (regTwo!19570 r!17423) Nil!35270) (matchR!4411 (simplify!484 (regTwo!19570 r!17423)) Nil!35270))))

(declare-fun lt!1052734 () Unit!49497)

(declare-fun choose!18242 (Regex!9529 List!35394) Unit!49497)

(assert (=> d!857184 (= lt!1052734 (choose!18242 (regTwo!19570 r!17423) Nil!35270))))

(assert (=> d!857184 (validRegex!4262 (regTwo!19570 r!17423))))

(assert (=> d!857184 (= (lemmaSimplifySound!310 (regTwo!19570 r!17423) Nil!35270) lt!1052734)))

(declare-fun bs!532816 () Bool)

(assert (= bs!532816 d!857184))

(assert (=> bs!532816 m!3388759))

(assert (=> bs!532816 m!3388763))

(assert (=> bs!532816 m!3388745))

(declare-fun m!3388895 () Bool)

(assert (=> bs!532816 m!3388895))

(assert (=> bs!532816 m!3388763))

(declare-fun m!3388897 () Bool)

(assert (=> bs!532816 m!3388897))

(assert (=> b!3077650 d!857184))

(declare-fun d!857188 () Bool)

(assert (=> d!857188 (= (matchR!4411 (regOne!19570 r!17423) s!11993) (matchR!4411 (simplify!484 (regOne!19570 r!17423)) s!11993))))

(declare-fun lt!1052735 () Unit!49497)

(assert (=> d!857188 (= lt!1052735 (choose!18242 (regOne!19570 r!17423) s!11993))))

(assert (=> d!857188 (validRegex!4262 (regOne!19570 r!17423))))

(assert (=> d!857188 (= (lemmaSimplifySound!310 (regOne!19570 r!17423) s!11993) lt!1052735)))

(declare-fun bs!532817 () Bool)

(assert (= bs!532817 d!857188))

(assert (=> bs!532817 m!3388753))

(assert (=> bs!532817 m!3388765))

(assert (=> bs!532817 m!3388733))

(declare-fun m!3388899 () Bool)

(assert (=> bs!532817 m!3388899))

(assert (=> bs!532817 m!3388765))

(declare-fun m!3388901 () Bool)

(assert (=> bs!532817 m!3388901))

(assert (=> b!3077650 d!857188))

(declare-fun b!3078005 () Bool)

(declare-fun res!1263011 () Bool)

(declare-fun e!1925675 () Bool)

(assert (=> b!3078005 (=> res!1263011 e!1925675)))

(declare-fun tail!5056 (List!35394) List!35394)

(assert (=> b!3078005 (= res!1263011 (not (isEmpty!19601 (tail!5056 s!11993))))))

(declare-fun b!3078006 () Bool)

(declare-fun e!1925669 () Bool)

(assert (=> b!3078006 (= e!1925669 (nullable!3174 (regOne!19570 r!17423)))))

(declare-fun b!3078007 () Bool)

(declare-fun e!1925670 () Bool)

(declare-fun lt!1052745 () Bool)

(assert (=> b!3078007 (= e!1925670 (not lt!1052745))))

(declare-fun b!3078008 () Bool)

(declare-fun res!1263017 () Bool)

(declare-fun e!1925673 () Bool)

(assert (=> b!3078008 (=> res!1263017 e!1925673)))

(assert (=> b!3078008 (= res!1263017 (not ((_ is ElementMatch!9529) (regOne!19570 r!17423))))))

(assert (=> b!3078008 (= e!1925670 e!1925673)))

(declare-fun d!857190 () Bool)

(declare-fun e!1925672 () Bool)

(assert (=> d!857190 e!1925672))

(declare-fun c!512283 () Bool)

(assert (=> d!857190 (= c!512283 ((_ is EmptyExpr!9529) (regOne!19570 r!17423)))))

(assert (=> d!857190 (= lt!1052745 e!1925669)))

(declare-fun c!512282 () Bool)

(assert (=> d!857190 (= c!512282 (isEmpty!19601 s!11993))))

(assert (=> d!857190 (validRegex!4262 (regOne!19570 r!17423))))

(assert (=> d!857190 (= (matchR!4411 (regOne!19570 r!17423) s!11993) lt!1052745)))

(declare-fun b!3078009 () Bool)

(declare-fun e!1925674 () Bool)

(assert (=> b!3078009 (= e!1925673 e!1925674)))

(declare-fun res!1263016 () Bool)

(assert (=> b!3078009 (=> (not res!1263016) (not e!1925674))))

(assert (=> b!3078009 (= res!1263016 (not lt!1052745))))

(declare-fun bm!214293 () Bool)

(declare-fun call!214298 () Bool)

(assert (=> bm!214293 (= call!214298 (isEmpty!19601 s!11993))))

(declare-fun b!3078010 () Bool)

(declare-fun res!1263012 () Bool)

(declare-fun e!1925671 () Bool)

(assert (=> b!3078010 (=> (not res!1263012) (not e!1925671))))

(assert (=> b!3078010 (= res!1263012 (not call!214298))))

(declare-fun b!3078011 () Bool)

(declare-fun res!1263010 () Bool)

(assert (=> b!3078011 (=> res!1263010 e!1925673)))

(assert (=> b!3078011 (= res!1263010 e!1925671)))

(declare-fun res!1263015 () Bool)

(assert (=> b!3078011 (=> (not res!1263015) (not e!1925671))))

(assert (=> b!3078011 (= res!1263015 lt!1052745)))

(declare-fun b!3078012 () Bool)

(declare-fun res!1263014 () Bool)

(assert (=> b!3078012 (=> (not res!1263014) (not e!1925671))))

(assert (=> b!3078012 (= res!1263014 (isEmpty!19601 (tail!5056 s!11993)))))

(declare-fun b!3078013 () Bool)

(assert (=> b!3078013 (= e!1925672 e!1925670)))

(declare-fun c!512284 () Bool)

(assert (=> b!3078013 (= c!512284 ((_ is EmptyLang!9529) (regOne!19570 r!17423)))))

(declare-fun b!3078014 () Bool)

(declare-fun head!6830 (List!35394) C!19244)

(assert (=> b!3078014 (= e!1925671 (= (head!6830 s!11993) (c!512187 (regOne!19570 r!17423))))))

(declare-fun b!3078015 () Bool)

(declare-fun derivativeStep!2771 (Regex!9529 C!19244) Regex!9529)

(assert (=> b!3078015 (= e!1925669 (matchR!4411 (derivativeStep!2771 (regOne!19570 r!17423) (head!6830 s!11993)) (tail!5056 s!11993)))))

(declare-fun b!3078016 () Bool)

(assert (=> b!3078016 (= e!1925672 (= lt!1052745 call!214298))))

(declare-fun b!3078017 () Bool)

(assert (=> b!3078017 (= e!1925674 e!1925675)))

(declare-fun res!1263013 () Bool)

(assert (=> b!3078017 (=> res!1263013 e!1925675)))

(assert (=> b!3078017 (= res!1263013 call!214298)))

(declare-fun b!3078018 () Bool)

(assert (=> b!3078018 (= e!1925675 (not (= (head!6830 s!11993) (c!512187 (regOne!19570 r!17423)))))))

(assert (= (and d!857190 c!512282) b!3078006))

(assert (= (and d!857190 (not c!512282)) b!3078015))

(assert (= (and d!857190 c!512283) b!3078016))

(assert (= (and d!857190 (not c!512283)) b!3078013))

(assert (= (and b!3078013 c!512284) b!3078007))

(assert (= (and b!3078013 (not c!512284)) b!3078008))

(assert (= (and b!3078008 (not res!1263017)) b!3078011))

(assert (= (and b!3078011 res!1263015) b!3078010))

(assert (= (and b!3078010 res!1263012) b!3078012))

(assert (= (and b!3078012 res!1263014) b!3078014))

(assert (= (and b!3078011 (not res!1263010)) b!3078009))

(assert (= (and b!3078009 res!1263016) b!3078017))

(assert (= (and b!3078017 (not res!1263013)) b!3078005))

(assert (= (and b!3078005 (not res!1263011)) b!3078018))

(assert (= (or b!3078016 b!3078010 b!3078017) bm!214293))

(declare-fun m!3388945 () Bool)

(assert (=> b!3078005 m!3388945))

(assert (=> b!3078005 m!3388945))

(declare-fun m!3388947 () Bool)

(assert (=> b!3078005 m!3388947))

(assert (=> bm!214293 m!3388747))

(assert (=> d!857190 m!3388747))

(assert (=> d!857190 m!3388733))

(assert (=> b!3078006 m!3388803))

(declare-fun m!3388949 () Bool)

(assert (=> b!3078014 m!3388949))

(assert (=> b!3078015 m!3388949))

(assert (=> b!3078015 m!3388949))

(declare-fun m!3388951 () Bool)

(assert (=> b!3078015 m!3388951))

(assert (=> b!3078015 m!3388945))

(assert (=> b!3078015 m!3388951))

(assert (=> b!3078015 m!3388945))

(declare-fun m!3388953 () Bool)

(assert (=> b!3078015 m!3388953))

(assert (=> b!3078018 m!3388949))

(assert (=> b!3078012 m!3388945))

(assert (=> b!3078012 m!3388945))

(assert (=> b!3078012 m!3388947))

(assert (=> b!3077650 d!857190))

(declare-fun b!3078019 () Bool)

(declare-fun res!1263019 () Bool)

(declare-fun e!1925682 () Bool)

(assert (=> b!3078019 (=> res!1263019 e!1925682)))

(assert (=> b!3078019 (= res!1263019 (not (isEmpty!19601 (tail!5056 s!11993))))))

(declare-fun b!3078020 () Bool)

(declare-fun e!1925676 () Bool)

(assert (=> b!3078020 (= e!1925676 (nullable!3174 lt!1052667))))

(declare-fun b!3078021 () Bool)

(declare-fun e!1925677 () Bool)

(declare-fun lt!1052746 () Bool)

(assert (=> b!3078021 (= e!1925677 (not lt!1052746))))

(declare-fun b!3078022 () Bool)

(declare-fun res!1263025 () Bool)

(declare-fun e!1925680 () Bool)

(assert (=> b!3078022 (=> res!1263025 e!1925680)))

(assert (=> b!3078022 (= res!1263025 (not ((_ is ElementMatch!9529) lt!1052667)))))

(assert (=> b!3078022 (= e!1925677 e!1925680)))

(declare-fun d!857208 () Bool)

(declare-fun e!1925679 () Bool)

(assert (=> d!857208 e!1925679))

(declare-fun c!512286 () Bool)

(assert (=> d!857208 (= c!512286 ((_ is EmptyExpr!9529) lt!1052667))))

(assert (=> d!857208 (= lt!1052746 e!1925676)))

(declare-fun c!512285 () Bool)

(assert (=> d!857208 (= c!512285 (isEmpty!19601 s!11993))))

(assert (=> d!857208 (validRegex!4262 lt!1052667)))

(assert (=> d!857208 (= (matchR!4411 lt!1052667 s!11993) lt!1052746)))

(declare-fun b!3078023 () Bool)

(declare-fun e!1925681 () Bool)

(assert (=> b!3078023 (= e!1925680 e!1925681)))

(declare-fun res!1263024 () Bool)

(assert (=> b!3078023 (=> (not res!1263024) (not e!1925681))))

(assert (=> b!3078023 (= res!1263024 (not lt!1052746))))

(declare-fun bm!214294 () Bool)

(declare-fun call!214299 () Bool)

(assert (=> bm!214294 (= call!214299 (isEmpty!19601 s!11993))))

(declare-fun b!3078024 () Bool)

(declare-fun res!1263020 () Bool)

(declare-fun e!1925678 () Bool)

(assert (=> b!3078024 (=> (not res!1263020) (not e!1925678))))

(assert (=> b!3078024 (= res!1263020 (not call!214299))))

(declare-fun b!3078025 () Bool)

(declare-fun res!1263018 () Bool)

(assert (=> b!3078025 (=> res!1263018 e!1925680)))

(assert (=> b!3078025 (= res!1263018 e!1925678)))

(declare-fun res!1263023 () Bool)

(assert (=> b!3078025 (=> (not res!1263023) (not e!1925678))))

(assert (=> b!3078025 (= res!1263023 lt!1052746)))

(declare-fun b!3078026 () Bool)

(declare-fun res!1263022 () Bool)

(assert (=> b!3078026 (=> (not res!1263022) (not e!1925678))))

(assert (=> b!3078026 (= res!1263022 (isEmpty!19601 (tail!5056 s!11993)))))

(declare-fun b!3078027 () Bool)

(assert (=> b!3078027 (= e!1925679 e!1925677)))

(declare-fun c!512287 () Bool)

(assert (=> b!3078027 (= c!512287 ((_ is EmptyLang!9529) lt!1052667))))

(declare-fun b!3078028 () Bool)

(assert (=> b!3078028 (= e!1925678 (= (head!6830 s!11993) (c!512187 lt!1052667)))))

(declare-fun b!3078029 () Bool)

(assert (=> b!3078029 (= e!1925676 (matchR!4411 (derivativeStep!2771 lt!1052667 (head!6830 s!11993)) (tail!5056 s!11993)))))

(declare-fun b!3078030 () Bool)

(assert (=> b!3078030 (= e!1925679 (= lt!1052746 call!214299))))

(declare-fun b!3078031 () Bool)

(assert (=> b!3078031 (= e!1925681 e!1925682)))

(declare-fun res!1263021 () Bool)

(assert (=> b!3078031 (=> res!1263021 e!1925682)))

(assert (=> b!3078031 (= res!1263021 call!214299)))

(declare-fun b!3078032 () Bool)

(assert (=> b!3078032 (= e!1925682 (not (= (head!6830 s!11993) (c!512187 lt!1052667))))))

(assert (= (and d!857208 c!512285) b!3078020))

(assert (= (and d!857208 (not c!512285)) b!3078029))

(assert (= (and d!857208 c!512286) b!3078030))

(assert (= (and d!857208 (not c!512286)) b!3078027))

(assert (= (and b!3078027 c!512287) b!3078021))

(assert (= (and b!3078027 (not c!512287)) b!3078022))

(assert (= (and b!3078022 (not res!1263025)) b!3078025))

(assert (= (and b!3078025 res!1263023) b!3078024))

(assert (= (and b!3078024 res!1263020) b!3078026))

(assert (= (and b!3078026 res!1263022) b!3078028))

(assert (= (and b!3078025 (not res!1263018)) b!3078023))

(assert (= (and b!3078023 res!1263024) b!3078031))

(assert (= (and b!3078031 (not res!1263021)) b!3078019))

(assert (= (and b!3078019 (not res!1263019)) b!3078032))

(assert (= (or b!3078030 b!3078024 b!3078031) bm!214294))

(assert (=> b!3078019 m!3388945))

(assert (=> b!3078019 m!3388945))

(assert (=> b!3078019 m!3388947))

(assert (=> bm!214294 m!3388747))

(assert (=> d!857208 m!3388747))

(declare-fun m!3388955 () Bool)

(assert (=> d!857208 m!3388955))

(declare-fun m!3388957 () Bool)

(assert (=> b!3078020 m!3388957))

(assert (=> b!3078028 m!3388949))

(assert (=> b!3078029 m!3388949))

(assert (=> b!3078029 m!3388949))

(declare-fun m!3388959 () Bool)

(assert (=> b!3078029 m!3388959))

(assert (=> b!3078029 m!3388945))

(assert (=> b!3078029 m!3388959))

(assert (=> b!3078029 m!3388945))

(declare-fun m!3388961 () Bool)

(assert (=> b!3078029 m!3388961))

(assert (=> b!3078032 m!3388949))

(assert (=> b!3078026 m!3388945))

(assert (=> b!3078026 m!3388945))

(assert (=> b!3078026 m!3388947))

(assert (=> b!3077650 d!857208))

(declare-fun b!3078033 () Bool)

(declare-fun res!1263027 () Bool)

(declare-fun e!1925689 () Bool)

(assert (=> b!3078033 (=> res!1263027 e!1925689)))

(assert (=> b!3078033 (= res!1263027 (not (isEmpty!19601 (tail!5056 Nil!35270))))))

(declare-fun b!3078034 () Bool)

(declare-fun e!1925683 () Bool)

(assert (=> b!3078034 (= e!1925683 (nullable!3174 (regTwo!19570 r!17423)))))

(declare-fun b!3078035 () Bool)

(declare-fun e!1925684 () Bool)

(declare-fun lt!1052747 () Bool)

(assert (=> b!3078035 (= e!1925684 (not lt!1052747))))

(declare-fun b!3078036 () Bool)

(declare-fun res!1263033 () Bool)

(declare-fun e!1925687 () Bool)

(assert (=> b!3078036 (=> res!1263033 e!1925687)))

(assert (=> b!3078036 (= res!1263033 (not ((_ is ElementMatch!9529) (regTwo!19570 r!17423))))))

(assert (=> b!3078036 (= e!1925684 e!1925687)))

(declare-fun d!857210 () Bool)

(declare-fun e!1925686 () Bool)

(assert (=> d!857210 e!1925686))

(declare-fun c!512289 () Bool)

(assert (=> d!857210 (= c!512289 ((_ is EmptyExpr!9529) (regTwo!19570 r!17423)))))

(assert (=> d!857210 (= lt!1052747 e!1925683)))

(declare-fun c!512288 () Bool)

(assert (=> d!857210 (= c!512288 (isEmpty!19601 Nil!35270))))

(assert (=> d!857210 (validRegex!4262 (regTwo!19570 r!17423))))

(assert (=> d!857210 (= (matchR!4411 (regTwo!19570 r!17423) Nil!35270) lt!1052747)))

(declare-fun b!3078037 () Bool)

(declare-fun e!1925688 () Bool)

(assert (=> b!3078037 (= e!1925687 e!1925688)))

(declare-fun res!1263032 () Bool)

(assert (=> b!3078037 (=> (not res!1263032) (not e!1925688))))

(assert (=> b!3078037 (= res!1263032 (not lt!1052747))))

(declare-fun bm!214295 () Bool)

(declare-fun call!214300 () Bool)

(assert (=> bm!214295 (= call!214300 (isEmpty!19601 Nil!35270))))

(declare-fun b!3078038 () Bool)

(declare-fun res!1263028 () Bool)

(declare-fun e!1925685 () Bool)

(assert (=> b!3078038 (=> (not res!1263028) (not e!1925685))))

(assert (=> b!3078038 (= res!1263028 (not call!214300))))

(declare-fun b!3078039 () Bool)

(declare-fun res!1263026 () Bool)

(assert (=> b!3078039 (=> res!1263026 e!1925687)))

(assert (=> b!3078039 (= res!1263026 e!1925685)))

(declare-fun res!1263031 () Bool)

(assert (=> b!3078039 (=> (not res!1263031) (not e!1925685))))

(assert (=> b!3078039 (= res!1263031 lt!1052747)))

(declare-fun b!3078040 () Bool)

(declare-fun res!1263030 () Bool)

(assert (=> b!3078040 (=> (not res!1263030) (not e!1925685))))

(assert (=> b!3078040 (= res!1263030 (isEmpty!19601 (tail!5056 Nil!35270)))))

(declare-fun b!3078041 () Bool)

(assert (=> b!3078041 (= e!1925686 e!1925684)))

(declare-fun c!512290 () Bool)

(assert (=> b!3078041 (= c!512290 ((_ is EmptyLang!9529) (regTwo!19570 r!17423)))))

(declare-fun b!3078042 () Bool)

(assert (=> b!3078042 (= e!1925685 (= (head!6830 Nil!35270) (c!512187 (regTwo!19570 r!17423))))))

(declare-fun b!3078043 () Bool)

(assert (=> b!3078043 (= e!1925683 (matchR!4411 (derivativeStep!2771 (regTwo!19570 r!17423) (head!6830 Nil!35270)) (tail!5056 Nil!35270)))))

(declare-fun b!3078044 () Bool)

(assert (=> b!3078044 (= e!1925686 (= lt!1052747 call!214300))))

(declare-fun b!3078045 () Bool)

(assert (=> b!3078045 (= e!1925688 e!1925689)))

(declare-fun res!1263029 () Bool)

(assert (=> b!3078045 (=> res!1263029 e!1925689)))

(assert (=> b!3078045 (= res!1263029 call!214300)))

(declare-fun b!3078046 () Bool)

(assert (=> b!3078046 (= e!1925689 (not (= (head!6830 Nil!35270) (c!512187 (regTwo!19570 r!17423)))))))

(assert (= (and d!857210 c!512288) b!3078034))

(assert (= (and d!857210 (not c!512288)) b!3078043))

(assert (= (and d!857210 c!512289) b!3078044))

(assert (= (and d!857210 (not c!512289)) b!3078041))

(assert (= (and b!3078041 c!512290) b!3078035))

(assert (= (and b!3078041 (not c!512290)) b!3078036))

(assert (= (and b!3078036 (not res!1263033)) b!3078039))

(assert (= (and b!3078039 res!1263031) b!3078038))

(assert (= (and b!3078038 res!1263028) b!3078040))

(assert (= (and b!3078040 res!1263030) b!3078042))

(assert (= (and b!3078039 (not res!1263026)) b!3078037))

(assert (= (and b!3078037 res!1263032) b!3078045))

(assert (= (and b!3078045 (not res!1263029)) b!3078033))

(assert (= (and b!3078033 (not res!1263027)) b!3078046))

(assert (= (or b!3078044 b!3078038 b!3078045) bm!214295))

(declare-fun m!3388963 () Bool)

(assert (=> b!3078033 m!3388963))

(assert (=> b!3078033 m!3388963))

(declare-fun m!3388965 () Bool)

(assert (=> b!3078033 m!3388965))

(declare-fun m!3388967 () Bool)

(assert (=> bm!214295 m!3388967))

(assert (=> d!857210 m!3388967))

(assert (=> d!857210 m!3388745))

(assert (=> b!3078034 m!3388785))

(declare-fun m!3388969 () Bool)

(assert (=> b!3078042 m!3388969))

(assert (=> b!3078043 m!3388969))

(assert (=> b!3078043 m!3388969))

(declare-fun m!3388971 () Bool)

(assert (=> b!3078043 m!3388971))

(assert (=> b!3078043 m!3388963))

(assert (=> b!3078043 m!3388971))

(assert (=> b!3078043 m!3388963))

(declare-fun m!3388973 () Bool)

(assert (=> b!3078043 m!3388973))

(assert (=> b!3078046 m!3388969))

(assert (=> b!3078040 m!3388963))

(assert (=> b!3078040 m!3388963))

(assert (=> b!3078040 m!3388965))

(assert (=> b!3077650 d!857210))

(declare-fun b!3078069 () Bool)

(declare-fun res!1263037 () Bool)

(declare-fun e!1925708 () Bool)

(assert (=> b!3078069 (=> res!1263037 e!1925708)))

(assert (=> b!3078069 (= res!1263037 (not (isEmpty!19601 (tail!5056 Nil!35270))))))

(declare-fun b!3078070 () Bool)

(declare-fun e!1925702 () Bool)

(assert (=> b!3078070 (= e!1925702 (nullable!3174 lt!1052668))))

(declare-fun b!3078071 () Bool)

(declare-fun e!1925703 () Bool)

(declare-fun lt!1052752 () Bool)

(assert (=> b!3078071 (= e!1925703 (not lt!1052752))))

(declare-fun b!3078072 () Bool)

(declare-fun res!1263043 () Bool)

(declare-fun e!1925706 () Bool)

(assert (=> b!3078072 (=> res!1263043 e!1925706)))

(assert (=> b!3078072 (= res!1263043 (not ((_ is ElementMatch!9529) lt!1052668)))))

(assert (=> b!3078072 (= e!1925703 e!1925706)))

(declare-fun d!857212 () Bool)

(declare-fun e!1925705 () Bool)

(assert (=> d!857212 e!1925705))

(declare-fun c!512302 () Bool)

(assert (=> d!857212 (= c!512302 ((_ is EmptyExpr!9529) lt!1052668))))

(assert (=> d!857212 (= lt!1052752 e!1925702)))

(declare-fun c!512301 () Bool)

(assert (=> d!857212 (= c!512301 (isEmpty!19601 Nil!35270))))

(assert (=> d!857212 (validRegex!4262 lt!1052668)))

(assert (=> d!857212 (= (matchR!4411 lt!1052668 Nil!35270) lt!1052752)))

(declare-fun b!3078073 () Bool)

(declare-fun e!1925707 () Bool)

(assert (=> b!3078073 (= e!1925706 e!1925707)))

(declare-fun res!1263042 () Bool)

(assert (=> b!3078073 (=> (not res!1263042) (not e!1925707))))

(assert (=> b!3078073 (= res!1263042 (not lt!1052752))))

(declare-fun bm!214296 () Bool)

(declare-fun call!214301 () Bool)

(assert (=> bm!214296 (= call!214301 (isEmpty!19601 Nil!35270))))

(declare-fun b!3078074 () Bool)

(declare-fun res!1263038 () Bool)

(declare-fun e!1925704 () Bool)

(assert (=> b!3078074 (=> (not res!1263038) (not e!1925704))))

(assert (=> b!3078074 (= res!1263038 (not call!214301))))

(declare-fun b!3078075 () Bool)

(declare-fun res!1263036 () Bool)

(assert (=> b!3078075 (=> res!1263036 e!1925706)))

(assert (=> b!3078075 (= res!1263036 e!1925704)))

(declare-fun res!1263041 () Bool)

(assert (=> b!3078075 (=> (not res!1263041) (not e!1925704))))

(assert (=> b!3078075 (= res!1263041 lt!1052752)))

(declare-fun b!3078076 () Bool)

(declare-fun res!1263040 () Bool)

(assert (=> b!3078076 (=> (not res!1263040) (not e!1925704))))

(assert (=> b!3078076 (= res!1263040 (isEmpty!19601 (tail!5056 Nil!35270)))))

(declare-fun b!3078077 () Bool)

(assert (=> b!3078077 (= e!1925705 e!1925703)))

(declare-fun c!512303 () Bool)

(assert (=> b!3078077 (= c!512303 ((_ is EmptyLang!9529) lt!1052668))))

(declare-fun b!3078078 () Bool)

(assert (=> b!3078078 (= e!1925704 (= (head!6830 Nil!35270) (c!512187 lt!1052668)))))

(declare-fun b!3078079 () Bool)

(assert (=> b!3078079 (= e!1925702 (matchR!4411 (derivativeStep!2771 lt!1052668 (head!6830 Nil!35270)) (tail!5056 Nil!35270)))))

(declare-fun b!3078080 () Bool)

(assert (=> b!3078080 (= e!1925705 (= lt!1052752 call!214301))))

(declare-fun b!3078081 () Bool)

(assert (=> b!3078081 (= e!1925707 e!1925708)))

(declare-fun res!1263039 () Bool)

(assert (=> b!3078081 (=> res!1263039 e!1925708)))

(assert (=> b!3078081 (= res!1263039 call!214301)))

(declare-fun b!3078082 () Bool)

(assert (=> b!3078082 (= e!1925708 (not (= (head!6830 Nil!35270) (c!512187 lt!1052668))))))

(assert (= (and d!857212 c!512301) b!3078070))

(assert (= (and d!857212 (not c!512301)) b!3078079))

(assert (= (and d!857212 c!512302) b!3078080))

(assert (= (and d!857212 (not c!512302)) b!3078077))

(assert (= (and b!3078077 c!512303) b!3078071))

(assert (= (and b!3078077 (not c!512303)) b!3078072))

(assert (= (and b!3078072 (not res!1263043)) b!3078075))

(assert (= (and b!3078075 res!1263041) b!3078074))

(assert (= (and b!3078074 res!1263038) b!3078076))

(assert (= (and b!3078076 res!1263040) b!3078078))

(assert (= (and b!3078075 (not res!1263036)) b!3078073))

(assert (= (and b!3078073 res!1263042) b!3078081))

(assert (= (and b!3078081 (not res!1263039)) b!3078069))

(assert (= (and b!3078069 (not res!1263037)) b!3078082))

(assert (= (or b!3078080 b!3078074 b!3078081) bm!214296))

(assert (=> b!3078069 m!3388963))

(assert (=> b!3078069 m!3388963))

(assert (=> b!3078069 m!3388965))

(assert (=> bm!214296 m!3388967))

(assert (=> d!857212 m!3388967))

(declare-fun m!3388975 () Bool)

(assert (=> d!857212 m!3388975))

(declare-fun m!3388977 () Bool)

(assert (=> b!3078070 m!3388977))

(assert (=> b!3078078 m!3388969))

(assert (=> b!3078079 m!3388969))

(assert (=> b!3078079 m!3388969))

(declare-fun m!3388979 () Bool)

(assert (=> b!3078079 m!3388979))

(assert (=> b!3078079 m!3388963))

(assert (=> b!3078079 m!3388979))

(assert (=> b!3078079 m!3388963))

(declare-fun m!3388981 () Bool)

(assert (=> b!3078079 m!3388981))

(assert (=> b!3078082 m!3388969))

(assert (=> b!3078076 m!3388963))

(assert (=> b!3078076 m!3388963))

(assert (=> b!3078076 m!3388965))

(assert (=> b!3077650 d!857212))

(declare-fun d!857214 () Bool)

(assert (=> d!857214 (= (isEmpty!19601 s!11993) ((_ is Nil!35270) s!11993))))

(assert (=> b!3077655 d!857214))

(declare-fun d!857216 () Bool)

(declare-fun res!1263048 () Bool)

(declare-fun e!1925729 () Bool)

(assert (=> d!857216 (=> res!1263048 e!1925729)))

(assert (=> d!857216 (= res!1263048 ((_ is ElementMatch!9529) (regTwo!19570 r!17423)))))

(assert (=> d!857216 (= (validRegex!4262 (regTwo!19570 r!17423)) e!1925729)))

(declare-fun b!3078109 () Bool)

(declare-fun e!1925726 () Bool)

(declare-fun call!214303 () Bool)

(assert (=> b!3078109 (= e!1925726 call!214303)))

(declare-fun bm!214297 () Bool)

(declare-fun c!512317 () Bool)

(assert (=> bm!214297 (= call!214303 (validRegex!4262 (ite c!512317 (regOne!19571 (regTwo!19570 r!17423)) (regTwo!19570 (regTwo!19570 r!17423)))))))

(declare-fun b!3078110 () Bool)

(declare-fun res!1263046 () Bool)

(declare-fun e!1925724 () Bool)

(assert (=> b!3078110 (=> res!1263046 e!1925724)))

(assert (=> b!3078110 (= res!1263046 (not ((_ is Concat!14850) (regTwo!19570 r!17423))))))

(declare-fun e!1925728 () Bool)

(assert (=> b!3078110 (= e!1925728 e!1925724)))

(declare-fun b!3078111 () Bool)

(declare-fun e!1925725 () Bool)

(assert (=> b!3078111 (= e!1925729 e!1925725)))

(declare-fun c!512316 () Bool)

(assert (=> b!3078111 (= c!512316 ((_ is Star!9529) (regTwo!19570 r!17423)))))

(declare-fun call!214304 () Bool)

(declare-fun bm!214298 () Bool)

(assert (=> bm!214298 (= call!214304 (validRegex!4262 (ite c!512316 (reg!9858 (regTwo!19570 r!17423)) (ite c!512317 (regTwo!19571 (regTwo!19570 r!17423)) (regOne!19570 (regTwo!19570 r!17423))))))))

(declare-fun b!3078112 () Bool)

(declare-fun res!1263047 () Bool)

(declare-fun e!1925727 () Bool)

(assert (=> b!3078112 (=> (not res!1263047) (not e!1925727))))

(assert (=> b!3078112 (= res!1263047 call!214303)))

(assert (=> b!3078112 (= e!1925728 e!1925727)))

(declare-fun b!3078113 () Bool)

(assert (=> b!3078113 (= e!1925725 e!1925728)))

(assert (=> b!3078113 (= c!512317 ((_ is Union!9529) (regTwo!19570 r!17423)))))

(declare-fun bm!214299 () Bool)

(declare-fun call!214302 () Bool)

(assert (=> bm!214299 (= call!214302 call!214304)))

(declare-fun b!3078114 () Bool)

(declare-fun e!1925723 () Bool)

(assert (=> b!3078114 (= e!1925723 call!214304)))

(declare-fun b!3078115 () Bool)

(assert (=> b!3078115 (= e!1925725 e!1925723)))

(declare-fun res!1263050 () Bool)

(assert (=> b!3078115 (= res!1263050 (not (nullable!3174 (reg!9858 (regTwo!19570 r!17423)))))))

(assert (=> b!3078115 (=> (not res!1263050) (not e!1925723))))

(declare-fun b!3078116 () Bool)

(assert (=> b!3078116 (= e!1925724 e!1925726)))

(declare-fun res!1263049 () Bool)

(assert (=> b!3078116 (=> (not res!1263049) (not e!1925726))))

(assert (=> b!3078116 (= res!1263049 call!214302)))

(declare-fun b!3078117 () Bool)

(assert (=> b!3078117 (= e!1925727 call!214302)))

(assert (= (and d!857216 (not res!1263048)) b!3078111))

(assert (= (and b!3078111 c!512316) b!3078115))

(assert (= (and b!3078111 (not c!512316)) b!3078113))

(assert (= (and b!3078115 res!1263050) b!3078114))

(assert (= (and b!3078113 c!512317) b!3078112))

(assert (= (and b!3078113 (not c!512317)) b!3078110))

(assert (= (and b!3078112 res!1263047) b!3078117))

(assert (= (and b!3078110 (not res!1263046)) b!3078116))

(assert (= (and b!3078116 res!1263049) b!3078109))

(assert (= (or b!3078112 b!3078109) bm!214297))

(assert (= (or b!3078117 b!3078116) bm!214299))

(assert (= (or b!3078114 bm!214299) bm!214298))

(declare-fun m!3388983 () Bool)

(assert (=> bm!214297 m!3388983))

(declare-fun m!3388985 () Bool)

(assert (=> bm!214298 m!3388985))

(declare-fun m!3388987 () Bool)

(assert (=> b!3078115 m!3388987))

(assert (=> b!3077660 d!857216))

(declare-fun d!857218 () Bool)

(declare-fun res!1263053 () Bool)

(declare-fun e!1925736 () Bool)

(assert (=> d!857218 (=> res!1263053 e!1925736)))

(assert (=> d!857218 (= res!1263053 ((_ is ElementMatch!9529) r!17423))))

(assert (=> d!857218 (= (validRegex!4262 r!17423) e!1925736)))

(declare-fun b!3078118 () Bool)

(declare-fun e!1925733 () Bool)

(declare-fun call!214314 () Bool)

(assert (=> b!3078118 (= e!1925733 call!214314)))

(declare-fun bm!214306 () Bool)

(declare-fun c!512319 () Bool)

(assert (=> bm!214306 (= call!214314 (validRegex!4262 (ite c!512319 (regOne!19571 r!17423) (regTwo!19570 r!17423))))))

(declare-fun b!3078119 () Bool)

(declare-fun res!1263051 () Bool)

(declare-fun e!1925731 () Bool)

(assert (=> b!3078119 (=> res!1263051 e!1925731)))

(assert (=> b!3078119 (= res!1263051 (not ((_ is Concat!14850) r!17423)))))

(declare-fun e!1925735 () Bool)

(assert (=> b!3078119 (= e!1925735 e!1925731)))

(declare-fun b!3078120 () Bool)

(declare-fun e!1925732 () Bool)

(assert (=> b!3078120 (= e!1925736 e!1925732)))

(declare-fun c!512318 () Bool)

(assert (=> b!3078120 (= c!512318 ((_ is Star!9529) r!17423))))

(declare-fun call!214315 () Bool)

(declare-fun bm!214307 () Bool)

(assert (=> bm!214307 (= call!214315 (validRegex!4262 (ite c!512318 (reg!9858 r!17423) (ite c!512319 (regTwo!19571 r!17423) (regOne!19570 r!17423)))))))

(declare-fun b!3078121 () Bool)

(declare-fun res!1263052 () Bool)

(declare-fun e!1925734 () Bool)

(assert (=> b!3078121 (=> (not res!1263052) (not e!1925734))))

(assert (=> b!3078121 (= res!1263052 call!214314)))

(assert (=> b!3078121 (= e!1925735 e!1925734)))

(declare-fun b!3078122 () Bool)

(assert (=> b!3078122 (= e!1925732 e!1925735)))

(assert (=> b!3078122 (= c!512319 ((_ is Union!9529) r!17423))))

(declare-fun bm!214308 () Bool)

(declare-fun call!214313 () Bool)

(assert (=> bm!214308 (= call!214313 call!214315)))

(declare-fun b!3078123 () Bool)

(declare-fun e!1925730 () Bool)

(assert (=> b!3078123 (= e!1925730 call!214315)))

(declare-fun b!3078124 () Bool)

(assert (=> b!3078124 (= e!1925732 e!1925730)))

(declare-fun res!1263055 () Bool)

(assert (=> b!3078124 (= res!1263055 (not (nullable!3174 (reg!9858 r!17423))))))

(assert (=> b!3078124 (=> (not res!1263055) (not e!1925730))))

(declare-fun b!3078125 () Bool)

(assert (=> b!3078125 (= e!1925731 e!1925733)))

(declare-fun res!1263054 () Bool)

(assert (=> b!3078125 (=> (not res!1263054) (not e!1925733))))

(assert (=> b!3078125 (= res!1263054 call!214313)))

(declare-fun b!3078126 () Bool)

(assert (=> b!3078126 (= e!1925734 call!214313)))

(assert (= (and d!857218 (not res!1263053)) b!3078120))

(assert (= (and b!3078120 c!512318) b!3078124))

(assert (= (and b!3078120 (not c!512318)) b!3078122))

(assert (= (and b!3078124 res!1263055) b!3078123))

(assert (= (and b!3078122 c!512319) b!3078121))

(assert (= (and b!3078122 (not c!512319)) b!3078119))

(assert (= (and b!3078121 res!1263052) b!3078126))

(assert (= (and b!3078119 (not res!1263051)) b!3078125))

(assert (= (and b!3078125 res!1263054) b!3078118))

(assert (= (or b!3078121 b!3078118) bm!214306))

(assert (= (or b!3078126 b!3078125) bm!214308))

(assert (= (or b!3078123 bm!214308) bm!214307))

(declare-fun m!3388989 () Bool)

(assert (=> bm!214306 m!3388989))

(declare-fun m!3388991 () Bool)

(assert (=> bm!214307 m!3388991))

(declare-fun m!3388993 () Bool)

(assert (=> b!3078124 m!3388993))

(assert (=> start!293248 d!857218))

(declare-fun d!857220 () Bool)

(assert (=> d!857220 (= (isEmptyLang!580 lt!1052668) ((_ is EmptyLang!9529) lt!1052668))))

(assert (=> b!3077651 d!857220))

(declare-fun d!857222 () Bool)

(assert (=> d!857222 (= (isEmptyExpr!586 lt!1052668) ((_ is EmptyExpr!9529) lt!1052668))))

(assert (=> b!3077663 d!857222))

(declare-fun bs!532820 () Bool)

(declare-fun b!3078218 () Bool)

(assert (= bs!532820 (and b!3078218 b!3077653)))

(declare-fun lambda!114221 () Int)

(assert (=> bs!532820 (not (= lambda!114221 lambda!114210))))

(declare-fun bs!532821 () Bool)

(assert (= bs!532821 (and b!3078218 d!857182)))

(assert (=> bs!532821 (not (= lambda!114221 lambda!114216))))

(assert (=> b!3078218 true))

(assert (=> b!3078218 true))

(declare-fun bs!532822 () Bool)

(declare-fun b!3078212 () Bool)

(assert (= bs!532822 (and b!3078212 b!3077653)))

(declare-fun lambda!114222 () Int)

(assert (=> bs!532822 (not (= lambda!114222 lambda!114210))))

(declare-fun bs!532823 () Bool)

(assert (= bs!532823 (and b!3078212 d!857182)))

(assert (=> bs!532823 (not (= lambda!114222 lambda!114216))))

(declare-fun bs!532824 () Bool)

(assert (= bs!532824 (and b!3078212 b!3078218)))

(assert (=> bs!532824 (not (= lambda!114222 lambda!114221))))

(assert (=> b!3078212 true))

(assert (=> b!3078212 true))

(declare-fun e!1925790 () Bool)

(declare-fun call!214341 () Bool)

(assert (=> b!3078212 (= e!1925790 call!214341)))

(declare-fun b!3078213 () Bool)

(declare-fun res!1263082 () Bool)

(declare-fun e!1925787 () Bool)

(assert (=> b!3078213 (=> res!1263082 e!1925787)))

(declare-fun call!214340 () Bool)

(assert (=> b!3078213 (= res!1263082 call!214340)))

(assert (=> b!3078213 (= e!1925790 e!1925787)))

(declare-fun b!3078214 () Bool)

(declare-fun e!1925785 () Bool)

(declare-fun e!1925791 () Bool)

(assert (=> b!3078214 (= e!1925785 e!1925791)))

(declare-fun res!1263080 () Bool)

(assert (=> b!3078214 (= res!1263080 (not ((_ is EmptyLang!9529) r!17423)))))

(assert (=> b!3078214 (=> (not res!1263080) (not e!1925791))))

(declare-fun bm!214335 () Bool)

(assert (=> bm!214335 (= call!214340 (isEmpty!19601 s!11993))))

(declare-fun b!3078215 () Bool)

(declare-fun e!1925789 () Bool)

(assert (=> b!3078215 (= e!1925789 (matchRSpec!1666 (regTwo!19571 r!17423) s!11993))))

(declare-fun bm!214336 () Bool)

(declare-fun c!512353 () Bool)

(assert (=> bm!214336 (= call!214341 (Exists!1792 (ite c!512353 lambda!114221 lambda!114222)))))

(declare-fun b!3078216 () Bool)

(assert (=> b!3078216 (= e!1925785 call!214340)))

(declare-fun b!3078217 () Bool)

(declare-fun c!512352 () Bool)

(assert (=> b!3078217 (= c!512352 ((_ is ElementMatch!9529) r!17423))))

(declare-fun e!1925786 () Bool)

(assert (=> b!3078217 (= e!1925791 e!1925786)))

(assert (=> b!3078218 (= e!1925787 call!214341)))

(declare-fun b!3078219 () Bool)

(assert (=> b!3078219 (= e!1925786 (= s!11993 (Cons!35270 (c!512187 r!17423) Nil!35270)))))

(declare-fun b!3078220 () Bool)

(declare-fun e!1925788 () Bool)

(assert (=> b!3078220 (= e!1925788 e!1925790)))

(assert (=> b!3078220 (= c!512353 ((_ is Star!9529) r!17423))))

(declare-fun b!3078221 () Bool)

(declare-fun c!512350 () Bool)

(assert (=> b!3078221 (= c!512350 ((_ is Union!9529) r!17423))))

(assert (=> b!3078221 (= e!1925786 e!1925788)))

(declare-fun b!3078211 () Bool)

(assert (=> b!3078211 (= e!1925788 e!1925789)))

(declare-fun res!1263081 () Bool)

(assert (=> b!3078211 (= res!1263081 (matchRSpec!1666 (regOne!19571 r!17423) s!11993))))

(assert (=> b!3078211 (=> res!1263081 e!1925789)))

(declare-fun d!857224 () Bool)

(declare-fun c!512351 () Bool)

(assert (=> d!857224 (= c!512351 ((_ is EmptyExpr!9529) r!17423))))

(assert (=> d!857224 (= (matchRSpec!1666 r!17423 s!11993) e!1925785)))

(assert (= (and d!857224 c!512351) b!3078216))

(assert (= (and d!857224 (not c!512351)) b!3078214))

(assert (= (and b!3078214 res!1263080) b!3078217))

(assert (= (and b!3078217 c!512352) b!3078219))

(assert (= (and b!3078217 (not c!512352)) b!3078221))

(assert (= (and b!3078221 c!512350) b!3078211))

(assert (= (and b!3078221 (not c!512350)) b!3078220))

(assert (= (and b!3078211 (not res!1263081)) b!3078215))

(assert (= (and b!3078220 c!512353) b!3078213))

(assert (= (and b!3078220 (not c!512353)) b!3078212))

(assert (= (and b!3078213 (not res!1263082)) b!3078218))

(assert (= (or b!3078218 b!3078212) bm!214336))

(assert (= (or b!3078216 b!3078213) bm!214335))

(assert (=> bm!214335 m!3388747))

(declare-fun m!3389027 () Bool)

(assert (=> b!3078215 m!3389027))

(declare-fun m!3389029 () Bool)

(assert (=> bm!214336 m!3389029))

(declare-fun m!3389031 () Bool)

(assert (=> b!3078211 m!3389031))

(assert (=> b!3077657 d!857224))

(declare-fun b!3078224 () Bool)

(declare-fun res!1263084 () Bool)

(declare-fun e!1925798 () Bool)

(assert (=> b!3078224 (=> res!1263084 e!1925798)))

(assert (=> b!3078224 (= res!1263084 (not (isEmpty!19601 (tail!5056 s!11993))))))

(declare-fun b!3078225 () Bool)

(declare-fun e!1925792 () Bool)

(assert (=> b!3078225 (= e!1925792 (nullable!3174 r!17423))))

(declare-fun b!3078226 () Bool)

(declare-fun e!1925793 () Bool)

(declare-fun lt!1052773 () Bool)

(assert (=> b!3078226 (= e!1925793 (not lt!1052773))))

(declare-fun b!3078227 () Bool)

(declare-fun res!1263090 () Bool)

(declare-fun e!1925796 () Bool)

(assert (=> b!3078227 (=> res!1263090 e!1925796)))

(assert (=> b!3078227 (= res!1263090 (not ((_ is ElementMatch!9529) r!17423)))))

(assert (=> b!3078227 (= e!1925793 e!1925796)))

(declare-fun d!857230 () Bool)

(declare-fun e!1925795 () Bool)

(assert (=> d!857230 e!1925795))

(declare-fun c!512355 () Bool)

(assert (=> d!857230 (= c!512355 ((_ is EmptyExpr!9529) r!17423))))

(assert (=> d!857230 (= lt!1052773 e!1925792)))

(declare-fun c!512354 () Bool)

(assert (=> d!857230 (= c!512354 (isEmpty!19601 s!11993))))

(assert (=> d!857230 (validRegex!4262 r!17423)))

(assert (=> d!857230 (= (matchR!4411 r!17423 s!11993) lt!1052773)))

(declare-fun b!3078228 () Bool)

(declare-fun e!1925797 () Bool)

(assert (=> b!3078228 (= e!1925796 e!1925797)))

(declare-fun res!1263089 () Bool)

(assert (=> b!3078228 (=> (not res!1263089) (not e!1925797))))

(assert (=> b!3078228 (= res!1263089 (not lt!1052773))))

(declare-fun bm!214337 () Bool)

(declare-fun call!214342 () Bool)

(assert (=> bm!214337 (= call!214342 (isEmpty!19601 s!11993))))

(declare-fun b!3078229 () Bool)

(declare-fun res!1263085 () Bool)

(declare-fun e!1925794 () Bool)

(assert (=> b!3078229 (=> (not res!1263085) (not e!1925794))))

(assert (=> b!3078229 (= res!1263085 (not call!214342))))

(declare-fun b!3078230 () Bool)

(declare-fun res!1263083 () Bool)

(assert (=> b!3078230 (=> res!1263083 e!1925796)))

(assert (=> b!3078230 (= res!1263083 e!1925794)))

(declare-fun res!1263088 () Bool)

(assert (=> b!3078230 (=> (not res!1263088) (not e!1925794))))

(assert (=> b!3078230 (= res!1263088 lt!1052773)))

(declare-fun b!3078231 () Bool)

(declare-fun res!1263087 () Bool)

(assert (=> b!3078231 (=> (not res!1263087) (not e!1925794))))

(assert (=> b!3078231 (= res!1263087 (isEmpty!19601 (tail!5056 s!11993)))))

(declare-fun b!3078232 () Bool)

(assert (=> b!3078232 (= e!1925795 e!1925793)))

(declare-fun c!512356 () Bool)

(assert (=> b!3078232 (= c!512356 ((_ is EmptyLang!9529) r!17423))))

(declare-fun b!3078233 () Bool)

(assert (=> b!3078233 (= e!1925794 (= (head!6830 s!11993) (c!512187 r!17423)))))

(declare-fun b!3078234 () Bool)

(assert (=> b!3078234 (= e!1925792 (matchR!4411 (derivativeStep!2771 r!17423 (head!6830 s!11993)) (tail!5056 s!11993)))))

(declare-fun b!3078235 () Bool)

(assert (=> b!3078235 (= e!1925795 (= lt!1052773 call!214342))))

(declare-fun b!3078236 () Bool)

(assert (=> b!3078236 (= e!1925797 e!1925798)))

(declare-fun res!1263086 () Bool)

(assert (=> b!3078236 (=> res!1263086 e!1925798)))

(assert (=> b!3078236 (= res!1263086 call!214342)))

(declare-fun b!3078237 () Bool)

(assert (=> b!3078237 (= e!1925798 (not (= (head!6830 s!11993) (c!512187 r!17423))))))

(assert (= (and d!857230 c!512354) b!3078225))

(assert (= (and d!857230 (not c!512354)) b!3078234))

(assert (= (and d!857230 c!512355) b!3078235))

(assert (= (and d!857230 (not c!512355)) b!3078232))

(assert (= (and b!3078232 c!512356) b!3078226))

(assert (= (and b!3078232 (not c!512356)) b!3078227))

(assert (= (and b!3078227 (not res!1263090)) b!3078230))

(assert (= (and b!3078230 res!1263088) b!3078229))

(assert (= (and b!3078229 res!1263085) b!3078231))

(assert (= (and b!3078231 res!1263087) b!3078233))

(assert (= (and b!3078230 (not res!1263083)) b!3078228))

(assert (= (and b!3078228 res!1263089) b!3078236))

(assert (= (and b!3078236 (not res!1263086)) b!3078224))

(assert (= (and b!3078224 (not res!1263084)) b!3078237))

(assert (= (or b!3078235 b!3078229 b!3078236) bm!214337))

(assert (=> b!3078224 m!3388945))

(assert (=> b!3078224 m!3388945))

(assert (=> b!3078224 m!3388947))

(assert (=> bm!214337 m!3388747))

(assert (=> d!857230 m!3388747))

(assert (=> d!857230 m!3388729))

(declare-fun m!3389033 () Bool)

(assert (=> b!3078225 m!3389033))

(assert (=> b!3078233 m!3388949))

(assert (=> b!3078234 m!3388949))

(assert (=> b!3078234 m!3388949))

(declare-fun m!3389035 () Bool)

(assert (=> b!3078234 m!3389035))

(assert (=> b!3078234 m!3388945))

(assert (=> b!3078234 m!3389035))

(assert (=> b!3078234 m!3388945))

(declare-fun m!3389037 () Bool)

(assert (=> b!3078234 m!3389037))

(assert (=> b!3078237 m!3388949))

(assert (=> b!3078231 m!3388945))

(assert (=> b!3078231 m!3388945))

(assert (=> b!3078231 m!3388947))

(assert (=> b!3077657 d!857230))

(declare-fun d!857232 () Bool)

(assert (=> d!857232 (= (matchR!4411 r!17423 s!11993) (matchRSpec!1666 r!17423 s!11993))))

(declare-fun lt!1052776 () Unit!49497)

(declare-fun choose!18244 (Regex!9529 List!35394) Unit!49497)

(assert (=> d!857232 (= lt!1052776 (choose!18244 r!17423 s!11993))))

(assert (=> d!857232 (validRegex!4262 r!17423)))

(assert (=> d!857232 (= (mainMatchTheorem!1666 r!17423 s!11993) lt!1052776)))

(declare-fun bs!532825 () Bool)

(assert (= bs!532825 d!857232))

(assert (=> bs!532825 m!3388725))

(assert (=> bs!532825 m!3388723))

(declare-fun m!3389039 () Bool)

(assert (=> bs!532825 m!3389039))

(assert (=> bs!532825 m!3388729))

(assert (=> b!3077657 d!857232))

(declare-fun b!3078272 () Bool)

(declare-fun e!1925819 () Bool)

(declare-fun tp!969936 () Bool)

(assert (=> b!3078272 (= e!1925819 (and tp_is_empty!16621 tp!969936))))

(assert (=> b!3077662 (= tp!969929 e!1925819)))

(assert (= (and b!3077662 ((_ is Cons!35270) (t!234459 s!11993))) b!3078272))

(declare-fun e!1925822 () Bool)

(assert (=> b!3077661 (= tp!969928 e!1925822)))

(declare-fun b!3078284 () Bool)

(declare-fun tp!969947 () Bool)

(declare-fun tp!969948 () Bool)

(assert (=> b!3078284 (= e!1925822 (and tp!969947 tp!969948))))

(declare-fun b!3078285 () Bool)

(declare-fun tp!969949 () Bool)

(assert (=> b!3078285 (= e!1925822 tp!969949)))

(declare-fun b!3078286 () Bool)

(declare-fun tp!969950 () Bool)

(declare-fun tp!969951 () Bool)

(assert (=> b!3078286 (= e!1925822 (and tp!969950 tp!969951))))

(declare-fun b!3078283 () Bool)

(assert (=> b!3078283 (= e!1925822 tp_is_empty!16621)))

(assert (= (and b!3077661 ((_ is ElementMatch!9529) (reg!9858 r!17423))) b!3078283))

(assert (= (and b!3077661 ((_ is Concat!14850) (reg!9858 r!17423))) b!3078284))

(assert (= (and b!3077661 ((_ is Star!9529) (reg!9858 r!17423))) b!3078285))

(assert (= (and b!3077661 ((_ is Union!9529) (reg!9858 r!17423))) b!3078286))

(declare-fun e!1925823 () Bool)

(assert (=> b!3077658 (= tp!969933 e!1925823)))

(declare-fun b!3078288 () Bool)

(declare-fun tp!969952 () Bool)

(declare-fun tp!969953 () Bool)

(assert (=> b!3078288 (= e!1925823 (and tp!969952 tp!969953))))

(declare-fun b!3078289 () Bool)

(declare-fun tp!969954 () Bool)

(assert (=> b!3078289 (= e!1925823 tp!969954)))

(declare-fun b!3078290 () Bool)

(declare-fun tp!969955 () Bool)

(declare-fun tp!969956 () Bool)

(assert (=> b!3078290 (= e!1925823 (and tp!969955 tp!969956))))

(declare-fun b!3078287 () Bool)

(assert (=> b!3078287 (= e!1925823 tp_is_empty!16621)))

(assert (= (and b!3077658 ((_ is ElementMatch!9529) (regOne!19571 r!17423))) b!3078287))

(assert (= (and b!3077658 ((_ is Concat!14850) (regOne!19571 r!17423))) b!3078288))

(assert (= (and b!3077658 ((_ is Star!9529) (regOne!19571 r!17423))) b!3078289))

(assert (= (and b!3077658 ((_ is Union!9529) (regOne!19571 r!17423))) b!3078290))

(declare-fun e!1925824 () Bool)

(assert (=> b!3077658 (= tp!969931 e!1925824)))

(declare-fun b!3078292 () Bool)

(declare-fun tp!969957 () Bool)

(declare-fun tp!969958 () Bool)

(assert (=> b!3078292 (= e!1925824 (and tp!969957 tp!969958))))

(declare-fun b!3078293 () Bool)

(declare-fun tp!969959 () Bool)

(assert (=> b!3078293 (= e!1925824 tp!969959)))

(declare-fun b!3078294 () Bool)

(declare-fun tp!969960 () Bool)

(declare-fun tp!969961 () Bool)

(assert (=> b!3078294 (= e!1925824 (and tp!969960 tp!969961))))

(declare-fun b!3078291 () Bool)

(assert (=> b!3078291 (= e!1925824 tp_is_empty!16621)))

(assert (= (and b!3077658 ((_ is ElementMatch!9529) (regTwo!19571 r!17423))) b!3078291))

(assert (= (and b!3077658 ((_ is Concat!14850) (regTwo!19571 r!17423))) b!3078292))

(assert (= (and b!3077658 ((_ is Star!9529) (regTwo!19571 r!17423))) b!3078293))

(assert (= (and b!3077658 ((_ is Union!9529) (regTwo!19571 r!17423))) b!3078294))

(declare-fun e!1925825 () Bool)

(assert (=> b!3077652 (= tp!969930 e!1925825)))

(declare-fun b!3078296 () Bool)

(declare-fun tp!969962 () Bool)

(declare-fun tp!969963 () Bool)

(assert (=> b!3078296 (= e!1925825 (and tp!969962 tp!969963))))

(declare-fun b!3078297 () Bool)

(declare-fun tp!969964 () Bool)

(assert (=> b!3078297 (= e!1925825 tp!969964)))

(declare-fun b!3078298 () Bool)

(declare-fun tp!969965 () Bool)

(declare-fun tp!969966 () Bool)

(assert (=> b!3078298 (= e!1925825 (and tp!969965 tp!969966))))

(declare-fun b!3078295 () Bool)

(assert (=> b!3078295 (= e!1925825 tp_is_empty!16621)))

(assert (= (and b!3077652 ((_ is ElementMatch!9529) (regOne!19570 r!17423))) b!3078295))

(assert (= (and b!3077652 ((_ is Concat!14850) (regOne!19570 r!17423))) b!3078296))

(assert (= (and b!3077652 ((_ is Star!9529) (regOne!19570 r!17423))) b!3078297))

(assert (= (and b!3077652 ((_ is Union!9529) (regOne!19570 r!17423))) b!3078298))

(declare-fun e!1925826 () Bool)

(assert (=> b!3077652 (= tp!969932 e!1925826)))

(declare-fun b!3078300 () Bool)

(declare-fun tp!969967 () Bool)

(declare-fun tp!969968 () Bool)

(assert (=> b!3078300 (= e!1925826 (and tp!969967 tp!969968))))

(declare-fun b!3078301 () Bool)

(declare-fun tp!969969 () Bool)

(assert (=> b!3078301 (= e!1925826 tp!969969)))

(declare-fun b!3078302 () Bool)

(declare-fun tp!969970 () Bool)

(declare-fun tp!969971 () Bool)

(assert (=> b!3078302 (= e!1925826 (and tp!969970 tp!969971))))

(declare-fun b!3078299 () Bool)

(assert (=> b!3078299 (= e!1925826 tp_is_empty!16621)))

(assert (= (and b!3077652 ((_ is ElementMatch!9529) (regTwo!19570 r!17423))) b!3078299))

(assert (= (and b!3077652 ((_ is Concat!14850) (regTwo!19570 r!17423))) b!3078300))

(assert (= (and b!3077652 ((_ is Star!9529) (regTwo!19570 r!17423))) b!3078301))

(assert (= (and b!3077652 ((_ is Union!9529) (regTwo!19570 r!17423))) b!3078302))

(check-sat (not b!3078233) (not b!3077878) (not d!857154) (not b!3078019) (not d!857212) (not b!3078069) (not d!857168) (not b!3077736) (not d!857184) (not b!3078294) (not bm!214335) (not b!3078301) (not d!857188) (not b!3078296) (not b!3077873) (not bm!214306) (not b!3077879) (not bm!214252) (not b!3078015) (not b!3078033) (not b!3078272) (not b!3078302) (not b!3078292) (not b!3078215) (not b!3078070) (not b!3078231) (not b!3078290) (not b!3078082) (not bm!214268) (not b!3078028) (not b!3078297) (not d!857210) (not bm!214264) (not b!3078076) (not bm!214254) (not b!3078043) (not d!857166) (not bm!214255) (not b!3078300) (not b!3078018) (not bm!214251) (not b!3077876) (not b!3078288) (not b!3078014) (not b!3078124) (not bm!214336) (not bm!214263) (not b!3078298) (not b!3078020) (not bm!214293) (not bm!214298) (not b!3078286) (not bm!214294) (not b!3078078) (not b!3078040) (not bm!214297) (not b!3078293) (not d!857182) (not b!3077875) (not bm!214296) (not b!3078012) (not b!3078005) (not b!3078029) (not b!3078237) (not b!3078042) (not b!3077734) (not b!3078289) (not bm!214337) (not bm!214307) (not d!857208) (not b!3078224) (not b!3078046) (not b!3077819) (not b!3078284) (not b!3078234) (not d!857230) tp_is_empty!16621 (not b!3077777) (not d!857232) (not bm!214265) (not b!3078115) (not b!3078006) (not b!3078026) (not b!3078032) (not b!3077779) (not b!3078225) (not d!857190) (not bm!214280) (not b!3078034) (not b!3078285) (not bm!214250) (not bm!214267) (not bm!214279) (not d!857170) (not d!857156) (not bm!214295) (not b!3077877) (not b!3078079) (not d!857148) (not b!3078211))
(check-sat)
