; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230368 () Bool)

(assert start!230368)

(declare-fun b!2331644 () Bool)

(declare-fun e!1493651 () Bool)

(declare-fun e!1493654 () Bool)

(assert (=> b!2331644 (= e!1493651 e!1493654)))

(declare-fun res!995318 () Bool)

(assert (=> b!2331644 (=> (not res!995318) (not e!1493654))))

(declare-datatypes ((C!13832 0))(
  ( (C!13833 (val!8076 Int)) )
))
(declare-datatypes ((Regex!6837 0))(
  ( (ElementMatch!6837 (c!370433 C!13832)) (Concat!11459 (regOne!14186 Regex!6837) (regTwo!14186 Regex!6837)) (EmptyExpr!6837) (Star!6837 (reg!7166 Regex!6837)) (EmptyLang!6837) (Union!6837 (regOne!14187 Regex!6837) (regTwo!14187 Regex!6837)) )
))
(declare-fun r!26197 () Regex!6837)

(declare-fun c!13498 () C!13832)

(declare-fun nullable!1916 (Regex!6837) Bool)

(declare-fun derivativeStep!1576 (Regex!6837 C!13832) Regex!6837)

(assert (=> b!2331644 (= res!995318 (not (nullable!1916 (derivativeStep!1576 (regOne!14187 r!26197) c!13498))))))

(declare-datatypes ((Unit!40654 0))(
  ( (Unit!40655) )
))
(declare-fun lt!862306 () Unit!40654)

(declare-fun e!1493652 () Unit!40654)

(assert (=> b!2331644 (= lt!862306 e!1493652)))

(declare-fun c!370431 () Bool)

(assert (=> b!2331644 (= c!370431 (nullable!1916 (regTwo!14187 r!26197)))))

(declare-fun lt!862307 () Unit!40654)

(declare-fun e!1493650 () Unit!40654)

(assert (=> b!2331644 (= lt!862307 e!1493650)))

(declare-fun c!370432 () Bool)

(assert (=> b!2331644 (= c!370432 (nullable!1916 (regOne!14187 r!26197)))))

(declare-fun b!2331645 () Bool)

(declare-fun Unit!40656 () Unit!40654)

(assert (=> b!2331645 (= e!1493652 Unit!40656)))

(declare-fun b!2331646 () Bool)

(declare-fun e!1493653 () Bool)

(declare-fun tp!738931 () Bool)

(assert (=> b!2331646 (= e!1493653 tp!738931)))

(declare-fun b!2331647 () Bool)

(declare-fun Unit!40657 () Unit!40654)

(assert (=> b!2331647 (= e!1493650 Unit!40657)))

(declare-fun b!2331648 () Bool)

(declare-fun tp!738928 () Bool)

(declare-fun tp!738927 () Bool)

(assert (=> b!2331648 (= e!1493653 (and tp!738928 tp!738927))))

(declare-fun b!2331649 () Bool)

(declare-fun Unit!40658 () Unit!40654)

(assert (=> b!2331649 (= e!1493650 Unit!40658)))

(assert (=> b!2331649 false))

(declare-fun b!2331651 () Bool)

(declare-fun res!995319 () Bool)

(assert (=> b!2331651 (=> (not res!995319) (not e!1493651))))

(get-info :version)

(assert (=> b!2331651 (= res!995319 (and (not ((_ is EmptyExpr!6837) r!26197)) (not ((_ is EmptyLang!6837) r!26197)) (not ((_ is ElementMatch!6837) r!26197)) ((_ is Union!6837) r!26197)))))

(declare-fun b!2331652 () Bool)

(assert (=> b!2331652 (= e!1493654 (not (nullable!1916 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498))))))

(declare-fun b!2331653 () Bool)

(declare-fun tp!738929 () Bool)

(declare-fun tp!738930 () Bool)

(assert (=> b!2331653 (= e!1493653 (and tp!738929 tp!738930))))

(declare-fun b!2331654 () Bool)

(declare-fun tp_is_empty!10985 () Bool)

(assert (=> b!2331654 (= e!1493653 tp_is_empty!10985)))

(declare-fun b!2331655 () Bool)

(declare-fun res!995321 () Bool)

(assert (=> b!2331655 (=> (not res!995321) (not e!1493651))))

(assert (=> b!2331655 (= res!995321 (not (nullable!1916 r!26197)))))

(declare-fun b!2331656 () Bool)

(declare-fun res!995320 () Bool)

(assert (=> b!2331656 (=> (not res!995320) (not e!1493651))))

(assert (=> b!2331656 (= res!995320 (nullable!1916 (derivativeStep!1576 r!26197 c!13498)))))

(declare-fun res!995317 () Bool)

(assert (=> start!230368 (=> (not res!995317) (not e!1493651))))

(declare-fun validRegex!2582 (Regex!6837) Bool)

(assert (=> start!230368 (= res!995317 (validRegex!2582 r!26197))))

(assert (=> start!230368 e!1493651))

(assert (=> start!230368 e!1493653))

(assert (=> start!230368 tp_is_empty!10985))

(declare-fun b!2331650 () Bool)

(declare-fun Unit!40659 () Unit!40654)

(assert (=> b!2331650 (= e!1493652 Unit!40659)))

(assert (=> b!2331650 false))

(assert (= (and start!230368 res!995317) b!2331655))

(assert (= (and b!2331655 res!995321) b!2331656))

(assert (= (and b!2331656 res!995320) b!2331651))

(assert (= (and b!2331651 res!995319) b!2331644))

(assert (= (and b!2331644 c!370432) b!2331649))

(assert (= (and b!2331644 (not c!370432)) b!2331647))

(assert (= (and b!2331644 c!370431) b!2331650))

(assert (= (and b!2331644 (not c!370431)) b!2331645))

(assert (= (and b!2331644 res!995318) b!2331652))

(assert (= (and start!230368 ((_ is ElementMatch!6837) r!26197)) b!2331654))

(assert (= (and start!230368 ((_ is Concat!11459) r!26197)) b!2331648))

(assert (= (and start!230368 ((_ is Star!6837) r!26197)) b!2331646))

(assert (= (and start!230368 ((_ is Union!6837) r!26197)) b!2331653))

(declare-fun m!2761071 () Bool)

(assert (=> start!230368 m!2761071))

(declare-fun m!2761073 () Bool)

(assert (=> b!2331644 m!2761073))

(assert (=> b!2331644 m!2761073))

(declare-fun m!2761075 () Bool)

(assert (=> b!2331644 m!2761075))

(declare-fun m!2761077 () Bool)

(assert (=> b!2331644 m!2761077))

(declare-fun m!2761079 () Bool)

(assert (=> b!2331644 m!2761079))

(declare-fun m!2761081 () Bool)

(assert (=> b!2331655 m!2761081))

(declare-fun m!2761083 () Bool)

(assert (=> b!2331652 m!2761083))

(assert (=> b!2331652 m!2761083))

(declare-fun m!2761085 () Bool)

(assert (=> b!2331652 m!2761085))

(declare-fun m!2761087 () Bool)

(assert (=> b!2331656 m!2761087))

(assert (=> b!2331656 m!2761087))

(declare-fun m!2761089 () Bool)

(assert (=> b!2331656 m!2761089))

(check-sat (not b!2331653) (not b!2331652) tp_is_empty!10985 (not b!2331656) (not b!2331644) (not b!2331655) (not b!2331648) (not start!230368) (not b!2331646))
(check-sat)
(get-model)

(declare-fun d!689982 () Bool)

(declare-fun nullableFct!474 (Regex!6837) Bool)

(assert (=> d!689982 (= (nullable!1916 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)) (nullableFct!474 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)))))

(declare-fun bs!459827 () Bool)

(assert (= bs!459827 d!689982))

(assert (=> bs!459827 m!2761083))

(declare-fun m!2761091 () Bool)

(assert (=> bs!459827 m!2761091))

(assert (=> b!2331652 d!689982))

(declare-fun bm!139210 () Bool)

(declare-fun call!139216 () Regex!6837)

(declare-fun call!139217 () Regex!6837)

(assert (=> bm!139210 (= call!139216 call!139217)))

(declare-fun bm!139211 () Bool)

(declare-fun call!139215 () Regex!6837)

(assert (=> bm!139211 (= call!139215 call!139216)))

(declare-fun bm!139212 () Bool)

(declare-fun c!370449 () Bool)

(declare-fun c!370448 () Bool)

(assert (=> bm!139212 (= call!139217 (derivativeStep!1576 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))) c!13498))))

(declare-fun b!2331695 () Bool)

(declare-fun e!1493681 () Regex!6837)

(assert (=> b!2331695 (= e!1493681 EmptyLang!6837)))

(declare-fun b!2331696 () Bool)

(declare-fun c!370450 () Bool)

(assert (=> b!2331696 (= c!370450 (nullable!1916 (regOne!14186 (regTwo!14187 r!26197))))))

(declare-fun e!1493680 () Regex!6837)

(declare-fun e!1493682 () Regex!6837)

(assert (=> b!2331696 (= e!1493680 e!1493682)))

(declare-fun b!2331697 () Bool)

(assert (=> b!2331697 (= e!1493680 (Concat!11459 call!139216 (regTwo!14187 r!26197)))))

(declare-fun d!689984 () Bool)

(declare-fun lt!862310 () Regex!6837)

(assert (=> d!689984 (validRegex!2582 lt!862310)))

(assert (=> d!689984 (= lt!862310 e!1493681)))

(declare-fun c!370451 () Bool)

(assert (=> d!689984 (= c!370451 (or ((_ is EmptyExpr!6837) (regTwo!14187 r!26197)) ((_ is EmptyLang!6837) (regTwo!14187 r!26197))))))

(assert (=> d!689984 (validRegex!2582 (regTwo!14187 r!26197))))

(assert (=> d!689984 (= (derivativeStep!1576 (regTwo!14187 r!26197) c!13498) lt!862310)))

(declare-fun b!2331698 () Bool)

(assert (=> b!2331698 (= e!1493682 (Union!6837 (Concat!11459 call!139215 (regTwo!14186 (regTwo!14187 r!26197))) EmptyLang!6837))))

(declare-fun b!2331699 () Bool)

(declare-fun e!1493679 () Regex!6837)

(assert (=> b!2331699 (= e!1493679 e!1493680)))

(assert (=> b!2331699 (= c!370449 ((_ is Star!6837) (regTwo!14187 r!26197)))))

(declare-fun bm!139213 () Bool)

(declare-fun call!139218 () Regex!6837)

(assert (=> bm!139213 (= call!139218 (derivativeStep!1576 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))) c!13498))))

(declare-fun b!2331700 () Bool)

(assert (=> b!2331700 (= c!370448 ((_ is Union!6837) (regTwo!14187 r!26197)))))

(declare-fun e!1493683 () Regex!6837)

(assert (=> b!2331700 (= e!1493683 e!1493679)))

(declare-fun b!2331701 () Bool)

(assert (=> b!2331701 (= e!1493683 (ite (= c!13498 (c!370433 (regTwo!14187 r!26197))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331702 () Bool)

(assert (=> b!2331702 (= e!1493682 (Union!6837 (Concat!11459 call!139215 (regTwo!14186 (regTwo!14187 r!26197))) call!139218))))

(declare-fun b!2331703 () Bool)

(assert (=> b!2331703 (= e!1493681 e!1493683)))

(declare-fun c!370452 () Bool)

(assert (=> b!2331703 (= c!370452 ((_ is ElementMatch!6837) (regTwo!14187 r!26197)))))

(declare-fun b!2331704 () Bool)

(assert (=> b!2331704 (= e!1493679 (Union!6837 call!139218 call!139217))))

(assert (= (and d!689984 c!370451) b!2331695))

(assert (= (and d!689984 (not c!370451)) b!2331703))

(assert (= (and b!2331703 c!370452) b!2331701))

(assert (= (and b!2331703 (not c!370452)) b!2331700))

(assert (= (and b!2331700 c!370448) b!2331704))

(assert (= (and b!2331700 (not c!370448)) b!2331699))

(assert (= (and b!2331699 c!370449) b!2331697))

(assert (= (and b!2331699 (not c!370449)) b!2331696))

(assert (= (and b!2331696 c!370450) b!2331702))

(assert (= (and b!2331696 (not c!370450)) b!2331698))

(assert (= (or b!2331702 b!2331698) bm!139211))

(assert (= (or b!2331697 bm!139211) bm!139210))

(assert (= (or b!2331704 bm!139210) bm!139212))

(assert (= (or b!2331704 b!2331702) bm!139213))

(declare-fun m!2761093 () Bool)

(assert (=> bm!139212 m!2761093))

(declare-fun m!2761095 () Bool)

(assert (=> b!2331696 m!2761095))

(declare-fun m!2761097 () Bool)

(assert (=> d!689984 m!2761097))

(declare-fun m!2761099 () Bool)

(assert (=> d!689984 m!2761099))

(declare-fun m!2761101 () Bool)

(assert (=> bm!139213 m!2761101))

(assert (=> b!2331652 d!689984))

(declare-fun b!2331732 () Bool)

(declare-fun e!1493710 () Bool)

(declare-fun call!139229 () Bool)

(assert (=> b!2331732 (= e!1493710 call!139229)))

(declare-fun b!2331733 () Bool)

(declare-fun res!995347 () Bool)

(declare-fun e!1493706 () Bool)

(assert (=> b!2331733 (=> res!995347 e!1493706)))

(assert (=> b!2331733 (= res!995347 (not ((_ is Concat!11459) r!26197)))))

(declare-fun e!1493708 () Bool)

(assert (=> b!2331733 (= e!1493708 e!1493706)))

(declare-fun b!2331734 () Bool)

(declare-fun e!1493711 () Bool)

(assert (=> b!2331734 (= e!1493711 call!139229)))

(declare-fun bm!139223 () Bool)

(declare-fun call!139230 () Bool)

(declare-fun call!139228 () Bool)

(assert (=> bm!139223 (= call!139230 call!139228)))

(declare-fun d!689988 () Bool)

(declare-fun res!995350 () Bool)

(declare-fun e!1493707 () Bool)

(assert (=> d!689988 (=> res!995350 e!1493707)))

(assert (=> d!689988 (= res!995350 ((_ is ElementMatch!6837) r!26197))))

(assert (=> d!689988 (= (validRegex!2582 r!26197) e!1493707)))

(declare-fun b!2331735 () Bool)

(assert (=> b!2331735 (= e!1493706 e!1493711)))

(declare-fun res!995348 () Bool)

(assert (=> b!2331735 (=> (not res!995348) (not e!1493711))))

(assert (=> b!2331735 (= res!995348 call!139230)))

(declare-fun bm!139224 () Bool)

(declare-fun c!370459 () Bool)

(assert (=> bm!139224 (= call!139229 (validRegex!2582 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))))))

(declare-fun bm!139225 () Bool)

(declare-fun c!370460 () Bool)

(assert (=> bm!139225 (= call!139228 (validRegex!2582 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))))))

(declare-fun b!2331736 () Bool)

(declare-fun res!995351 () Bool)

(assert (=> b!2331736 (=> (not res!995351) (not e!1493710))))

(assert (=> b!2331736 (= res!995351 call!139230)))

(assert (=> b!2331736 (= e!1493708 e!1493710)))

(declare-fun b!2331737 () Bool)

(declare-fun e!1493709 () Bool)

(declare-fun e!1493705 () Bool)

(assert (=> b!2331737 (= e!1493709 e!1493705)))

(declare-fun res!995349 () Bool)

(assert (=> b!2331737 (= res!995349 (not (nullable!1916 (reg!7166 r!26197))))))

(assert (=> b!2331737 (=> (not res!995349) (not e!1493705))))

(declare-fun b!2331738 () Bool)

(assert (=> b!2331738 (= e!1493705 call!139228)))

(declare-fun b!2331739 () Bool)

(assert (=> b!2331739 (= e!1493709 e!1493708)))

(assert (=> b!2331739 (= c!370459 ((_ is Union!6837) r!26197))))

(declare-fun b!2331740 () Bool)

(assert (=> b!2331740 (= e!1493707 e!1493709)))

(assert (=> b!2331740 (= c!370460 ((_ is Star!6837) r!26197))))

(assert (= (and d!689988 (not res!995350)) b!2331740))

(assert (= (and b!2331740 c!370460) b!2331737))

(assert (= (and b!2331740 (not c!370460)) b!2331739))

(assert (= (and b!2331737 res!995349) b!2331738))

(assert (= (and b!2331739 c!370459) b!2331736))

(assert (= (and b!2331739 (not c!370459)) b!2331733))

(assert (= (and b!2331736 res!995351) b!2331732))

(assert (= (and b!2331733 (not res!995347)) b!2331735))

(assert (= (and b!2331735 res!995348) b!2331734))

(assert (= (or b!2331732 b!2331734) bm!139224))

(assert (= (or b!2331736 b!2331735) bm!139223))

(assert (= (or b!2331738 bm!139223) bm!139225))

(declare-fun m!2761111 () Bool)

(assert (=> bm!139224 m!2761111))

(declare-fun m!2761113 () Bool)

(assert (=> bm!139225 m!2761113))

(declare-fun m!2761115 () Bool)

(assert (=> b!2331737 m!2761115))

(assert (=> start!230368 d!689988))

(declare-fun d!689994 () Bool)

(assert (=> d!689994 (= (nullable!1916 r!26197) (nullableFct!474 r!26197))))

(declare-fun bs!459829 () Bool)

(assert (= bs!459829 d!689994))

(declare-fun m!2761117 () Bool)

(assert (=> bs!459829 m!2761117))

(assert (=> b!2331655 d!689994))

(declare-fun d!689996 () Bool)

(assert (=> d!689996 (= (nullable!1916 (derivativeStep!1576 (regOne!14187 r!26197) c!13498)) (nullableFct!474 (derivativeStep!1576 (regOne!14187 r!26197) c!13498)))))

(declare-fun bs!459830 () Bool)

(assert (= bs!459830 d!689996))

(assert (=> bs!459830 m!2761073))

(declare-fun m!2761119 () Bool)

(assert (=> bs!459830 m!2761119))

(assert (=> b!2331644 d!689996))

(declare-fun bm!139226 () Bool)

(declare-fun call!139232 () Regex!6837)

(declare-fun call!139233 () Regex!6837)

(assert (=> bm!139226 (= call!139232 call!139233)))

(declare-fun bm!139227 () Bool)

(declare-fun call!139231 () Regex!6837)

(assert (=> bm!139227 (= call!139231 call!139232)))

(declare-fun c!370462 () Bool)

(declare-fun bm!139228 () Bool)

(declare-fun c!370461 () Bool)

(assert (=> bm!139228 (= call!139233 (derivativeStep!1576 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))) c!13498))))

(declare-fun b!2331741 () Bool)

(declare-fun e!1493714 () Regex!6837)

(assert (=> b!2331741 (= e!1493714 EmptyLang!6837)))

(declare-fun b!2331742 () Bool)

(declare-fun c!370463 () Bool)

(assert (=> b!2331742 (= c!370463 (nullable!1916 (regOne!14186 (regOne!14187 r!26197))))))

(declare-fun e!1493713 () Regex!6837)

(declare-fun e!1493715 () Regex!6837)

(assert (=> b!2331742 (= e!1493713 e!1493715)))

(declare-fun b!2331743 () Bool)

(assert (=> b!2331743 (= e!1493713 (Concat!11459 call!139232 (regOne!14187 r!26197)))))

(declare-fun d!689998 () Bool)

(declare-fun lt!862311 () Regex!6837)

(assert (=> d!689998 (validRegex!2582 lt!862311)))

(assert (=> d!689998 (= lt!862311 e!1493714)))

(declare-fun c!370464 () Bool)

(assert (=> d!689998 (= c!370464 (or ((_ is EmptyExpr!6837) (regOne!14187 r!26197)) ((_ is EmptyLang!6837) (regOne!14187 r!26197))))))

(assert (=> d!689998 (validRegex!2582 (regOne!14187 r!26197))))

(assert (=> d!689998 (= (derivativeStep!1576 (regOne!14187 r!26197) c!13498) lt!862311)))

(declare-fun b!2331744 () Bool)

(assert (=> b!2331744 (= e!1493715 (Union!6837 (Concat!11459 call!139231 (regTwo!14186 (regOne!14187 r!26197))) EmptyLang!6837))))

(declare-fun b!2331745 () Bool)

(declare-fun e!1493712 () Regex!6837)

(assert (=> b!2331745 (= e!1493712 e!1493713)))

(assert (=> b!2331745 (= c!370462 ((_ is Star!6837) (regOne!14187 r!26197)))))

(declare-fun bm!139229 () Bool)

(declare-fun call!139234 () Regex!6837)

(assert (=> bm!139229 (= call!139234 (derivativeStep!1576 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))) c!13498))))

(declare-fun b!2331746 () Bool)

(assert (=> b!2331746 (= c!370461 ((_ is Union!6837) (regOne!14187 r!26197)))))

(declare-fun e!1493716 () Regex!6837)

(assert (=> b!2331746 (= e!1493716 e!1493712)))

(declare-fun b!2331747 () Bool)

(assert (=> b!2331747 (= e!1493716 (ite (= c!13498 (c!370433 (regOne!14187 r!26197))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331748 () Bool)

(assert (=> b!2331748 (= e!1493715 (Union!6837 (Concat!11459 call!139231 (regTwo!14186 (regOne!14187 r!26197))) call!139234))))

(declare-fun b!2331749 () Bool)

(assert (=> b!2331749 (= e!1493714 e!1493716)))

(declare-fun c!370465 () Bool)

(assert (=> b!2331749 (= c!370465 ((_ is ElementMatch!6837) (regOne!14187 r!26197)))))

(declare-fun b!2331750 () Bool)

(assert (=> b!2331750 (= e!1493712 (Union!6837 call!139234 call!139233))))

(assert (= (and d!689998 c!370464) b!2331741))

(assert (= (and d!689998 (not c!370464)) b!2331749))

(assert (= (and b!2331749 c!370465) b!2331747))

(assert (= (and b!2331749 (not c!370465)) b!2331746))

(assert (= (and b!2331746 c!370461) b!2331750))

(assert (= (and b!2331746 (not c!370461)) b!2331745))

(assert (= (and b!2331745 c!370462) b!2331743))

(assert (= (and b!2331745 (not c!370462)) b!2331742))

(assert (= (and b!2331742 c!370463) b!2331748))

(assert (= (and b!2331742 (not c!370463)) b!2331744))

(assert (= (or b!2331748 b!2331744) bm!139227))

(assert (= (or b!2331743 bm!139227) bm!139226))

(assert (= (or b!2331750 bm!139226) bm!139228))

(assert (= (or b!2331750 b!2331748) bm!139229))

(declare-fun m!2761121 () Bool)

(assert (=> bm!139228 m!2761121))

(declare-fun m!2761123 () Bool)

(assert (=> b!2331742 m!2761123))

(declare-fun m!2761125 () Bool)

(assert (=> d!689998 m!2761125))

(declare-fun m!2761127 () Bool)

(assert (=> d!689998 m!2761127))

(declare-fun m!2761129 () Bool)

(assert (=> bm!139229 m!2761129))

(assert (=> b!2331644 d!689998))

(declare-fun d!690000 () Bool)

(assert (=> d!690000 (= (nullable!1916 (regTwo!14187 r!26197)) (nullableFct!474 (regTwo!14187 r!26197)))))

(declare-fun bs!459831 () Bool)

(assert (= bs!459831 d!690000))

(declare-fun m!2761131 () Bool)

(assert (=> bs!459831 m!2761131))

(assert (=> b!2331644 d!690000))

(declare-fun d!690002 () Bool)

(assert (=> d!690002 (= (nullable!1916 (regOne!14187 r!26197)) (nullableFct!474 (regOne!14187 r!26197)))))

(declare-fun bs!459832 () Bool)

(assert (= bs!459832 d!690002))

(declare-fun m!2761133 () Bool)

(assert (=> bs!459832 m!2761133))

(assert (=> b!2331644 d!690002))

(declare-fun d!690004 () Bool)

(assert (=> d!690004 (= (nullable!1916 (derivativeStep!1576 r!26197 c!13498)) (nullableFct!474 (derivativeStep!1576 r!26197 c!13498)))))

(declare-fun bs!459833 () Bool)

(assert (= bs!459833 d!690004))

(assert (=> bs!459833 m!2761087))

(declare-fun m!2761135 () Bool)

(assert (=> bs!459833 m!2761135))

(assert (=> b!2331656 d!690004))

(declare-fun bm!139230 () Bool)

(declare-fun call!139236 () Regex!6837)

(declare-fun call!139237 () Regex!6837)

(assert (=> bm!139230 (= call!139236 call!139237)))

(declare-fun bm!139231 () Bool)

(declare-fun call!139235 () Regex!6837)

(assert (=> bm!139231 (= call!139235 call!139236)))

(declare-fun c!370466 () Bool)

(declare-fun c!370467 () Bool)

(declare-fun bm!139232 () Bool)

(assert (=> bm!139232 (= call!139237 (derivativeStep!1576 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))) c!13498))))

(declare-fun b!2331751 () Bool)

(declare-fun e!1493719 () Regex!6837)

(assert (=> b!2331751 (= e!1493719 EmptyLang!6837)))

(declare-fun b!2331752 () Bool)

(declare-fun c!370468 () Bool)

(assert (=> b!2331752 (= c!370468 (nullable!1916 (regOne!14186 r!26197)))))

(declare-fun e!1493718 () Regex!6837)

(declare-fun e!1493720 () Regex!6837)

(assert (=> b!2331752 (= e!1493718 e!1493720)))

(declare-fun b!2331753 () Bool)

(assert (=> b!2331753 (= e!1493718 (Concat!11459 call!139236 r!26197))))

(declare-fun d!690006 () Bool)

(declare-fun lt!862312 () Regex!6837)

(assert (=> d!690006 (validRegex!2582 lt!862312)))

(assert (=> d!690006 (= lt!862312 e!1493719)))

(declare-fun c!370469 () Bool)

(assert (=> d!690006 (= c!370469 (or ((_ is EmptyExpr!6837) r!26197) ((_ is EmptyLang!6837) r!26197)))))

(assert (=> d!690006 (validRegex!2582 r!26197)))

(assert (=> d!690006 (= (derivativeStep!1576 r!26197 c!13498) lt!862312)))

(declare-fun b!2331754 () Bool)

(assert (=> b!2331754 (= e!1493720 (Union!6837 (Concat!11459 call!139235 (regTwo!14186 r!26197)) EmptyLang!6837))))

(declare-fun b!2331755 () Bool)

(declare-fun e!1493717 () Regex!6837)

(assert (=> b!2331755 (= e!1493717 e!1493718)))

(assert (=> b!2331755 (= c!370467 ((_ is Star!6837) r!26197))))

(declare-fun call!139238 () Regex!6837)

(declare-fun bm!139233 () Bool)

(assert (=> bm!139233 (= call!139238 (derivativeStep!1576 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)) c!13498))))

(declare-fun b!2331756 () Bool)

(assert (=> b!2331756 (= c!370466 ((_ is Union!6837) r!26197))))

(declare-fun e!1493721 () Regex!6837)

(assert (=> b!2331756 (= e!1493721 e!1493717)))

(declare-fun b!2331757 () Bool)

(assert (=> b!2331757 (= e!1493721 (ite (= c!13498 (c!370433 r!26197)) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331758 () Bool)

(assert (=> b!2331758 (= e!1493720 (Union!6837 (Concat!11459 call!139235 (regTwo!14186 r!26197)) call!139238))))

(declare-fun b!2331759 () Bool)

(assert (=> b!2331759 (= e!1493719 e!1493721)))

(declare-fun c!370470 () Bool)

(assert (=> b!2331759 (= c!370470 ((_ is ElementMatch!6837) r!26197))))

(declare-fun b!2331760 () Bool)

(assert (=> b!2331760 (= e!1493717 (Union!6837 call!139238 call!139237))))

(assert (= (and d!690006 c!370469) b!2331751))

(assert (= (and d!690006 (not c!370469)) b!2331759))

(assert (= (and b!2331759 c!370470) b!2331757))

(assert (= (and b!2331759 (not c!370470)) b!2331756))

(assert (= (and b!2331756 c!370466) b!2331760))

(assert (= (and b!2331756 (not c!370466)) b!2331755))

(assert (= (and b!2331755 c!370467) b!2331753))

(assert (= (and b!2331755 (not c!370467)) b!2331752))

(assert (= (and b!2331752 c!370468) b!2331758))

(assert (= (and b!2331752 (not c!370468)) b!2331754))

(assert (= (or b!2331758 b!2331754) bm!139231))

(assert (= (or b!2331753 bm!139231) bm!139230))

(assert (= (or b!2331760 bm!139230) bm!139232))

(assert (= (or b!2331760 b!2331758) bm!139233))

(declare-fun m!2761137 () Bool)

(assert (=> bm!139232 m!2761137))

(declare-fun m!2761139 () Bool)

(assert (=> b!2331752 m!2761139))

(declare-fun m!2761141 () Bool)

(assert (=> d!690006 m!2761141))

(assert (=> d!690006 m!2761071))

(declare-fun m!2761143 () Bool)

(assert (=> bm!139233 m!2761143))

(assert (=> b!2331656 d!690006))

(declare-fun b!2331791 () Bool)

(declare-fun e!1493734 () Bool)

(assert (=> b!2331791 (= e!1493734 tp_is_empty!10985)))

(assert (=> b!2331648 (= tp!738928 e!1493734)))

(declare-fun b!2331792 () Bool)

(declare-fun tp!738942 () Bool)

(declare-fun tp!738946 () Bool)

(assert (=> b!2331792 (= e!1493734 (and tp!738942 tp!738946))))

(declare-fun b!2331793 () Bool)

(declare-fun tp!738945 () Bool)

(assert (=> b!2331793 (= e!1493734 tp!738945)))

(declare-fun b!2331794 () Bool)

(declare-fun tp!738944 () Bool)

(declare-fun tp!738943 () Bool)

(assert (=> b!2331794 (= e!1493734 (and tp!738944 tp!738943))))

(assert (= (and b!2331648 ((_ is ElementMatch!6837) (regOne!14186 r!26197))) b!2331791))

(assert (= (and b!2331648 ((_ is Concat!11459) (regOne!14186 r!26197))) b!2331792))

(assert (= (and b!2331648 ((_ is Star!6837) (regOne!14186 r!26197))) b!2331793))

(assert (= (and b!2331648 ((_ is Union!6837) (regOne!14186 r!26197))) b!2331794))

(declare-fun b!2331795 () Bool)

(declare-fun e!1493735 () Bool)

(assert (=> b!2331795 (= e!1493735 tp_is_empty!10985)))

(assert (=> b!2331648 (= tp!738927 e!1493735)))

(declare-fun b!2331796 () Bool)

(declare-fun tp!738947 () Bool)

(declare-fun tp!738951 () Bool)

(assert (=> b!2331796 (= e!1493735 (and tp!738947 tp!738951))))

(declare-fun b!2331797 () Bool)

(declare-fun tp!738950 () Bool)

(assert (=> b!2331797 (= e!1493735 tp!738950)))

(declare-fun b!2331798 () Bool)

(declare-fun tp!738949 () Bool)

(declare-fun tp!738948 () Bool)

(assert (=> b!2331798 (= e!1493735 (and tp!738949 tp!738948))))

(assert (= (and b!2331648 ((_ is ElementMatch!6837) (regTwo!14186 r!26197))) b!2331795))

(assert (= (and b!2331648 ((_ is Concat!11459) (regTwo!14186 r!26197))) b!2331796))

(assert (= (and b!2331648 ((_ is Star!6837) (regTwo!14186 r!26197))) b!2331797))

(assert (= (and b!2331648 ((_ is Union!6837) (regTwo!14186 r!26197))) b!2331798))

(declare-fun b!2331799 () Bool)

(declare-fun e!1493736 () Bool)

(assert (=> b!2331799 (= e!1493736 tp_is_empty!10985)))

(assert (=> b!2331653 (= tp!738929 e!1493736)))

(declare-fun b!2331800 () Bool)

(declare-fun tp!738952 () Bool)

(declare-fun tp!738956 () Bool)

(assert (=> b!2331800 (= e!1493736 (and tp!738952 tp!738956))))

(declare-fun b!2331801 () Bool)

(declare-fun tp!738955 () Bool)

(assert (=> b!2331801 (= e!1493736 tp!738955)))

(declare-fun b!2331802 () Bool)

(declare-fun tp!738954 () Bool)

(declare-fun tp!738953 () Bool)

(assert (=> b!2331802 (= e!1493736 (and tp!738954 tp!738953))))

(assert (= (and b!2331653 ((_ is ElementMatch!6837) (regOne!14187 r!26197))) b!2331799))

(assert (= (and b!2331653 ((_ is Concat!11459) (regOne!14187 r!26197))) b!2331800))

(assert (= (and b!2331653 ((_ is Star!6837) (regOne!14187 r!26197))) b!2331801))

(assert (= (and b!2331653 ((_ is Union!6837) (regOne!14187 r!26197))) b!2331802))

(declare-fun b!2331803 () Bool)

(declare-fun e!1493737 () Bool)

(assert (=> b!2331803 (= e!1493737 tp_is_empty!10985)))

(assert (=> b!2331653 (= tp!738930 e!1493737)))

(declare-fun b!2331804 () Bool)

(declare-fun tp!738957 () Bool)

(declare-fun tp!738961 () Bool)

(assert (=> b!2331804 (= e!1493737 (and tp!738957 tp!738961))))

(declare-fun b!2331805 () Bool)

(declare-fun tp!738960 () Bool)

(assert (=> b!2331805 (= e!1493737 tp!738960)))

(declare-fun b!2331806 () Bool)

(declare-fun tp!738959 () Bool)

(declare-fun tp!738958 () Bool)

(assert (=> b!2331806 (= e!1493737 (and tp!738959 tp!738958))))

(assert (= (and b!2331653 ((_ is ElementMatch!6837) (regTwo!14187 r!26197))) b!2331803))

(assert (= (and b!2331653 ((_ is Concat!11459) (regTwo!14187 r!26197))) b!2331804))

(assert (= (and b!2331653 ((_ is Star!6837) (regTwo!14187 r!26197))) b!2331805))

(assert (= (and b!2331653 ((_ is Union!6837) (regTwo!14187 r!26197))) b!2331806))

(declare-fun b!2331807 () Bool)

(declare-fun e!1493738 () Bool)

(assert (=> b!2331807 (= e!1493738 tp_is_empty!10985)))

(assert (=> b!2331646 (= tp!738931 e!1493738)))

(declare-fun b!2331808 () Bool)

(declare-fun tp!738962 () Bool)

(declare-fun tp!738966 () Bool)

(assert (=> b!2331808 (= e!1493738 (and tp!738962 tp!738966))))

(declare-fun b!2331809 () Bool)

(declare-fun tp!738965 () Bool)

(assert (=> b!2331809 (= e!1493738 tp!738965)))

(declare-fun b!2331810 () Bool)

(declare-fun tp!738964 () Bool)

(declare-fun tp!738963 () Bool)

(assert (=> b!2331810 (= e!1493738 (and tp!738964 tp!738963))))

(assert (= (and b!2331646 ((_ is ElementMatch!6837) (reg!7166 r!26197))) b!2331807))

(assert (= (and b!2331646 ((_ is Concat!11459) (reg!7166 r!26197))) b!2331808))

(assert (= (and b!2331646 ((_ is Star!6837) (reg!7166 r!26197))) b!2331809))

(assert (= (and b!2331646 ((_ is Union!6837) (reg!7166 r!26197))) b!2331810))

(check-sat (not bm!139229) (not b!2331800) (not d!689994) (not bm!139213) (not b!2331794) (not bm!139212) (not b!2331798) (not d!690004) (not bm!139228) (not d!689982) (not b!2331796) (not bm!139225) (not b!2331810) (not b!2331805) (not b!2331792) tp_is_empty!10985 (not d!690006) (not bm!139233) (not b!2331806) (not b!2331801) (not b!2331808) (not b!2331752) (not d!689998) (not b!2331797) (not d!689984) (not d!690000) (not b!2331737) (not b!2331802) (not b!2331809) (not b!2331804) (not bm!139232) (not d!690002) (not bm!139224) (not b!2331793) (not b!2331742) (not b!2331696) (not d!689996))
(check-sat)
(get-model)

(declare-fun d!690022 () Bool)

(assert (=> d!690022 (= (nullable!1916 (regOne!14186 r!26197)) (nullableFct!474 (regOne!14186 r!26197)))))

(declare-fun bs!459839 () Bool)

(assert (= bs!459839 d!690022))

(declare-fun m!2761183 () Bool)

(assert (=> bs!459839 m!2761183))

(assert (=> b!2331752 d!690022))

(declare-fun b!2331871 () Bool)

(declare-fun e!1493766 () Bool)

(declare-fun call!139260 () Bool)

(assert (=> b!2331871 (= e!1493766 call!139260)))

(declare-fun b!2331872 () Bool)

(declare-fun res!995352 () Bool)

(declare-fun e!1493762 () Bool)

(assert (=> b!2331872 (=> res!995352 e!1493762)))

(assert (=> b!2331872 (= res!995352 (not ((_ is Concat!11459) lt!862310)))))

(declare-fun e!1493764 () Bool)

(assert (=> b!2331872 (= e!1493764 e!1493762)))

(declare-fun b!2331873 () Bool)

(declare-fun e!1493767 () Bool)

(assert (=> b!2331873 (= e!1493767 call!139260)))

(declare-fun bm!139254 () Bool)

(declare-fun call!139261 () Bool)

(declare-fun call!139259 () Bool)

(assert (=> bm!139254 (= call!139261 call!139259)))

(declare-fun d!690024 () Bool)

(declare-fun res!995355 () Bool)

(declare-fun e!1493763 () Bool)

(assert (=> d!690024 (=> res!995355 e!1493763)))

(assert (=> d!690024 (= res!995355 ((_ is ElementMatch!6837) lt!862310))))

(assert (=> d!690024 (= (validRegex!2582 lt!862310) e!1493763)))

(declare-fun b!2331874 () Bool)

(assert (=> b!2331874 (= e!1493762 e!1493767)))

(declare-fun res!995353 () Bool)

(assert (=> b!2331874 (=> (not res!995353) (not e!1493767))))

(assert (=> b!2331874 (= res!995353 call!139261)))

(declare-fun bm!139255 () Bool)

(declare-fun c!370496 () Bool)

(assert (=> bm!139255 (= call!139260 (validRegex!2582 (ite c!370496 (regTwo!14187 lt!862310) (regTwo!14186 lt!862310))))))

(declare-fun bm!139256 () Bool)

(declare-fun c!370497 () Bool)

(assert (=> bm!139256 (= call!139259 (validRegex!2582 (ite c!370497 (reg!7166 lt!862310) (ite c!370496 (regOne!14187 lt!862310) (regOne!14186 lt!862310)))))))

(declare-fun b!2331875 () Bool)

(declare-fun res!995356 () Bool)

(assert (=> b!2331875 (=> (not res!995356) (not e!1493766))))

(assert (=> b!2331875 (= res!995356 call!139261)))

(assert (=> b!2331875 (= e!1493764 e!1493766)))

(declare-fun b!2331876 () Bool)

(declare-fun e!1493765 () Bool)

(declare-fun e!1493761 () Bool)

(assert (=> b!2331876 (= e!1493765 e!1493761)))

(declare-fun res!995354 () Bool)

(assert (=> b!2331876 (= res!995354 (not (nullable!1916 (reg!7166 lt!862310))))))

(assert (=> b!2331876 (=> (not res!995354) (not e!1493761))))

(declare-fun b!2331877 () Bool)

(assert (=> b!2331877 (= e!1493761 call!139259)))

(declare-fun b!2331878 () Bool)

(assert (=> b!2331878 (= e!1493765 e!1493764)))

(assert (=> b!2331878 (= c!370496 ((_ is Union!6837) lt!862310))))

(declare-fun b!2331879 () Bool)

(assert (=> b!2331879 (= e!1493763 e!1493765)))

(assert (=> b!2331879 (= c!370497 ((_ is Star!6837) lt!862310))))

(assert (= (and d!690024 (not res!995355)) b!2331879))

(assert (= (and b!2331879 c!370497) b!2331876))

(assert (= (and b!2331879 (not c!370497)) b!2331878))

(assert (= (and b!2331876 res!995354) b!2331877))

(assert (= (and b!2331878 c!370496) b!2331875))

(assert (= (and b!2331878 (not c!370496)) b!2331872))

(assert (= (and b!2331875 res!995356) b!2331871))

(assert (= (and b!2331872 (not res!995352)) b!2331874))

(assert (= (and b!2331874 res!995353) b!2331873))

(assert (= (or b!2331871 b!2331873) bm!139255))

(assert (= (or b!2331875 b!2331874) bm!139254))

(assert (= (or b!2331877 bm!139254) bm!139256))

(declare-fun m!2761185 () Bool)

(assert (=> bm!139255 m!2761185))

(declare-fun m!2761187 () Bool)

(assert (=> bm!139256 m!2761187))

(declare-fun m!2761189 () Bool)

(assert (=> b!2331876 m!2761189))

(assert (=> d!689984 d!690024))

(declare-fun b!2331880 () Bool)

(declare-fun e!1493773 () Bool)

(declare-fun call!139263 () Bool)

(assert (=> b!2331880 (= e!1493773 call!139263)))

(declare-fun b!2331881 () Bool)

(declare-fun res!995357 () Bool)

(declare-fun e!1493769 () Bool)

(assert (=> b!2331881 (=> res!995357 e!1493769)))

(assert (=> b!2331881 (= res!995357 (not ((_ is Concat!11459) (regTwo!14187 r!26197))))))

(declare-fun e!1493771 () Bool)

(assert (=> b!2331881 (= e!1493771 e!1493769)))

(declare-fun b!2331882 () Bool)

(declare-fun e!1493774 () Bool)

(assert (=> b!2331882 (= e!1493774 call!139263)))

(declare-fun bm!139257 () Bool)

(declare-fun call!139264 () Bool)

(declare-fun call!139262 () Bool)

(assert (=> bm!139257 (= call!139264 call!139262)))

(declare-fun d!690026 () Bool)

(declare-fun res!995360 () Bool)

(declare-fun e!1493770 () Bool)

(assert (=> d!690026 (=> res!995360 e!1493770)))

(assert (=> d!690026 (= res!995360 ((_ is ElementMatch!6837) (regTwo!14187 r!26197)))))

(assert (=> d!690026 (= (validRegex!2582 (regTwo!14187 r!26197)) e!1493770)))

(declare-fun b!2331883 () Bool)

(assert (=> b!2331883 (= e!1493769 e!1493774)))

(declare-fun res!995358 () Bool)

(assert (=> b!2331883 (=> (not res!995358) (not e!1493774))))

(assert (=> b!2331883 (= res!995358 call!139264)))

(declare-fun bm!139258 () Bool)

(declare-fun c!370498 () Bool)

(assert (=> bm!139258 (= call!139263 (validRegex!2582 (ite c!370498 (regTwo!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))))))

(declare-fun c!370499 () Bool)

(declare-fun bm!139259 () Bool)

(assert (=> bm!139259 (= call!139262 (validRegex!2582 (ite c!370499 (reg!7166 (regTwo!14187 r!26197)) (ite c!370498 (regOne!14187 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))))))

(declare-fun b!2331884 () Bool)

(declare-fun res!995361 () Bool)

(assert (=> b!2331884 (=> (not res!995361) (not e!1493773))))

(assert (=> b!2331884 (= res!995361 call!139264)))

(assert (=> b!2331884 (= e!1493771 e!1493773)))

(declare-fun b!2331885 () Bool)

(declare-fun e!1493772 () Bool)

(declare-fun e!1493768 () Bool)

(assert (=> b!2331885 (= e!1493772 e!1493768)))

(declare-fun res!995359 () Bool)

(assert (=> b!2331885 (= res!995359 (not (nullable!1916 (reg!7166 (regTwo!14187 r!26197)))))))

(assert (=> b!2331885 (=> (not res!995359) (not e!1493768))))

(declare-fun b!2331886 () Bool)

(assert (=> b!2331886 (= e!1493768 call!139262)))

(declare-fun b!2331887 () Bool)

(assert (=> b!2331887 (= e!1493772 e!1493771)))

(assert (=> b!2331887 (= c!370498 ((_ is Union!6837) (regTwo!14187 r!26197)))))

(declare-fun b!2331888 () Bool)

(assert (=> b!2331888 (= e!1493770 e!1493772)))

(assert (=> b!2331888 (= c!370499 ((_ is Star!6837) (regTwo!14187 r!26197)))))

(assert (= (and d!690026 (not res!995360)) b!2331888))

(assert (= (and b!2331888 c!370499) b!2331885))

(assert (= (and b!2331888 (not c!370499)) b!2331887))

(assert (= (and b!2331885 res!995359) b!2331886))

(assert (= (and b!2331887 c!370498) b!2331884))

(assert (= (and b!2331887 (not c!370498)) b!2331881))

(assert (= (and b!2331884 res!995361) b!2331880))

(assert (= (and b!2331881 (not res!995357)) b!2331883))

(assert (= (and b!2331883 res!995358) b!2331882))

(assert (= (or b!2331880 b!2331882) bm!139258))

(assert (= (or b!2331884 b!2331883) bm!139257))

(assert (= (or b!2331886 bm!139257) bm!139259))

(declare-fun m!2761191 () Bool)

(assert (=> bm!139258 m!2761191))

(declare-fun m!2761193 () Bool)

(assert (=> bm!139259 m!2761193))

(declare-fun m!2761195 () Bool)

(assert (=> b!2331885 m!2761195))

(assert (=> d!689984 d!690026))

(declare-fun b!2331903 () Bool)

(declare-fun e!1493788 () Bool)

(declare-fun e!1493790 () Bool)

(assert (=> b!2331903 (= e!1493788 e!1493790)))

(declare-fun res!995373 () Bool)

(assert (=> b!2331903 (=> (not res!995373) (not e!1493790))))

(assert (=> b!2331903 (= res!995373 (and (not ((_ is EmptyLang!6837) r!26197)) (not ((_ is ElementMatch!6837) r!26197))))))

(declare-fun b!2331904 () Bool)

(declare-fun e!1493787 () Bool)

(declare-fun e!1493792 () Bool)

(assert (=> b!2331904 (= e!1493787 e!1493792)))

(declare-fun res!995376 () Bool)

(declare-fun call!139269 () Bool)

(assert (=> b!2331904 (= res!995376 call!139269)))

(assert (=> b!2331904 (=> (not res!995376) (not e!1493792))))

(declare-fun b!2331905 () Bool)

(declare-fun e!1493789 () Bool)

(assert (=> b!2331905 (= e!1493790 e!1493789)))

(declare-fun res!995375 () Bool)

(assert (=> b!2331905 (=> res!995375 e!1493789)))

(assert (=> b!2331905 (= res!995375 ((_ is Star!6837) r!26197))))

(declare-fun bm!139264 () Bool)

(declare-fun c!370502 () Bool)

(assert (=> bm!139264 (= call!139269 (nullable!1916 (ite c!370502 (regOne!14187 r!26197) (regOne!14186 r!26197))))))

(declare-fun b!2331906 () Bool)

(declare-fun e!1493791 () Bool)

(declare-fun call!139270 () Bool)

(assert (=> b!2331906 (= e!1493791 call!139270)))

(declare-fun bm!139265 () Bool)

(assert (=> bm!139265 (= call!139270 (nullable!1916 (ite c!370502 (regTwo!14187 r!26197) (regTwo!14186 r!26197))))))

(declare-fun b!2331908 () Bool)

(assert (=> b!2331908 (= e!1493787 e!1493791)))

(declare-fun res!995372 () Bool)

(assert (=> b!2331908 (= res!995372 call!139269)))

(assert (=> b!2331908 (=> res!995372 e!1493791)))

(declare-fun b!2331909 () Bool)

(assert (=> b!2331909 (= e!1493792 call!139270)))

(declare-fun d!690028 () Bool)

(declare-fun res!995374 () Bool)

(assert (=> d!690028 (=> res!995374 e!1493788)))

(assert (=> d!690028 (= res!995374 ((_ is EmptyExpr!6837) r!26197))))

(assert (=> d!690028 (= (nullableFct!474 r!26197) e!1493788)))

(declare-fun b!2331907 () Bool)

(assert (=> b!2331907 (= e!1493789 e!1493787)))

(assert (=> b!2331907 (= c!370502 ((_ is Union!6837) r!26197))))

(assert (= (and d!690028 (not res!995374)) b!2331903))

(assert (= (and b!2331903 res!995373) b!2331905))

(assert (= (and b!2331905 (not res!995375)) b!2331907))

(assert (= (and b!2331907 c!370502) b!2331908))

(assert (= (and b!2331907 (not c!370502)) b!2331904))

(assert (= (and b!2331908 (not res!995372)) b!2331906))

(assert (= (and b!2331904 res!995376) b!2331909))

(assert (= (or b!2331908 b!2331904) bm!139264))

(assert (= (or b!2331906 b!2331909) bm!139265))

(declare-fun m!2761197 () Bool)

(assert (=> bm!139264 m!2761197))

(declare-fun m!2761199 () Bool)

(assert (=> bm!139265 m!2761199))

(assert (=> d!689994 d!690028))

(declare-fun bm!139266 () Bool)

(declare-fun call!139272 () Regex!6837)

(declare-fun call!139273 () Regex!6837)

(assert (=> bm!139266 (= call!139272 call!139273)))

(declare-fun bm!139267 () Bool)

(declare-fun call!139271 () Regex!6837)

(assert (=> bm!139267 (= call!139271 call!139272)))

(declare-fun c!370503 () Bool)

(declare-fun c!370504 () Bool)

(declare-fun bm!139268 () Bool)

(assert (=> bm!139268 (= call!139273 (derivativeStep!1576 (ite c!370503 (regTwo!14187 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))) (ite c!370504 (reg!7166 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))) (regOne!14186 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))))) c!13498))))

(declare-fun b!2331910 () Bool)

(declare-fun e!1493795 () Regex!6837)

(assert (=> b!2331910 (= e!1493795 EmptyLang!6837)))

(declare-fun b!2331911 () Bool)

(declare-fun c!370505 () Bool)

(assert (=> b!2331911 (= c!370505 (nullable!1916 (regOne!14186 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))))))))

(declare-fun e!1493794 () Regex!6837)

(declare-fun e!1493796 () Regex!6837)

(assert (=> b!2331911 (= e!1493794 e!1493796)))

(declare-fun b!2331912 () Bool)

(assert (=> b!2331912 (= e!1493794 (Concat!11459 call!139272 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))))))

(declare-fun d!690030 () Bool)

(declare-fun lt!862318 () Regex!6837)

(assert (=> d!690030 (validRegex!2582 lt!862318)))

(assert (=> d!690030 (= lt!862318 e!1493795)))

(declare-fun c!370506 () Bool)

(assert (=> d!690030 (= c!370506 (or ((_ is EmptyExpr!6837) (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))) ((_ is EmptyLang!6837) (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))))))))

(assert (=> d!690030 (validRegex!2582 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))))))

(assert (=> d!690030 (= (derivativeStep!1576 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))) c!13498) lt!862318)))

(declare-fun b!2331913 () Bool)

(assert (=> b!2331913 (= e!1493796 (Union!6837 (Concat!11459 call!139271 (regTwo!14186 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))))) EmptyLang!6837))))

(declare-fun b!2331914 () Bool)

(declare-fun e!1493793 () Regex!6837)

(assert (=> b!2331914 (= e!1493793 e!1493794)))

(assert (=> b!2331914 (= c!370504 ((_ is Star!6837) (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))))))

(declare-fun call!139274 () Regex!6837)

(declare-fun bm!139269 () Bool)

(assert (=> bm!139269 (= call!139274 (derivativeStep!1576 (ite c!370503 (regOne!14187 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))) (regTwo!14186 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))))) c!13498))))

(declare-fun b!2331915 () Bool)

(assert (=> b!2331915 (= c!370503 ((_ is Union!6837) (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))))))

(declare-fun e!1493797 () Regex!6837)

(assert (=> b!2331915 (= e!1493797 e!1493793)))

(declare-fun b!2331916 () Bool)

(assert (=> b!2331916 (= e!1493797 (ite (= c!13498 (c!370433 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331917 () Bool)

(assert (=> b!2331917 (= e!1493796 (Union!6837 (Concat!11459 call!139271 (regTwo!14186 (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197))))) call!139274))))

(declare-fun b!2331918 () Bool)

(assert (=> b!2331918 (= e!1493795 e!1493797)))

(declare-fun c!370507 () Bool)

(assert (=> b!2331918 (= c!370507 ((_ is ElementMatch!6837) (ite c!370448 (regOne!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))))))

(declare-fun b!2331919 () Bool)

(assert (=> b!2331919 (= e!1493793 (Union!6837 call!139274 call!139273))))

(assert (= (and d!690030 c!370506) b!2331910))

(assert (= (and d!690030 (not c!370506)) b!2331918))

(assert (= (and b!2331918 c!370507) b!2331916))

(assert (= (and b!2331918 (not c!370507)) b!2331915))

(assert (= (and b!2331915 c!370503) b!2331919))

(assert (= (and b!2331915 (not c!370503)) b!2331914))

(assert (= (and b!2331914 c!370504) b!2331912))

(assert (= (and b!2331914 (not c!370504)) b!2331911))

(assert (= (and b!2331911 c!370505) b!2331917))

(assert (= (and b!2331911 (not c!370505)) b!2331913))

(assert (= (or b!2331917 b!2331913) bm!139267))

(assert (= (or b!2331912 bm!139267) bm!139266))

(assert (= (or b!2331919 bm!139266) bm!139268))

(assert (= (or b!2331919 b!2331917) bm!139269))

(declare-fun m!2761201 () Bool)

(assert (=> bm!139268 m!2761201))

(declare-fun m!2761203 () Bool)

(assert (=> b!2331911 m!2761203))

(declare-fun m!2761205 () Bool)

(assert (=> d!690030 m!2761205))

(declare-fun m!2761207 () Bool)

(assert (=> d!690030 m!2761207))

(declare-fun m!2761209 () Bool)

(assert (=> bm!139269 m!2761209))

(assert (=> bm!139213 d!690030))

(declare-fun d!690032 () Bool)

(assert (=> d!690032 (= (nullable!1916 (reg!7166 r!26197)) (nullableFct!474 (reg!7166 r!26197)))))

(declare-fun bs!459840 () Bool)

(assert (= bs!459840 d!690032))

(declare-fun m!2761211 () Bool)

(assert (=> bs!459840 m!2761211))

(assert (=> b!2331737 d!690032))

(declare-fun bm!139270 () Bool)

(declare-fun call!139276 () Regex!6837)

(declare-fun call!139277 () Regex!6837)

(assert (=> bm!139270 (= call!139276 call!139277)))

(declare-fun bm!139271 () Bool)

(declare-fun call!139275 () Regex!6837)

(assert (=> bm!139271 (= call!139275 call!139276)))

(declare-fun c!370509 () Bool)

(declare-fun c!370508 () Bool)

(declare-fun bm!139272 () Bool)

(assert (=> bm!139272 (= call!139277 (derivativeStep!1576 (ite c!370508 (regTwo!14187 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))) (ite c!370509 (reg!7166 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))) (regOne!14186 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))))) c!13498))))

(declare-fun b!2331920 () Bool)

(declare-fun e!1493800 () Regex!6837)

(assert (=> b!2331920 (= e!1493800 EmptyLang!6837)))

(declare-fun b!2331921 () Bool)

(declare-fun c!370510 () Bool)

(assert (=> b!2331921 (= c!370510 (nullable!1916 (regOne!14186 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))))))))

(declare-fun e!1493799 () Regex!6837)

(declare-fun e!1493801 () Regex!6837)

(assert (=> b!2331921 (= e!1493799 e!1493801)))

(declare-fun b!2331922 () Bool)

(assert (=> b!2331922 (= e!1493799 (Concat!11459 call!139276 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))))))

(declare-fun d!690034 () Bool)

(declare-fun lt!862319 () Regex!6837)

(assert (=> d!690034 (validRegex!2582 lt!862319)))

(assert (=> d!690034 (= lt!862319 e!1493800)))

(declare-fun c!370511 () Bool)

(assert (=> d!690034 (= c!370511 (or ((_ is EmptyExpr!6837) (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))) ((_ is EmptyLang!6837) (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))))))))

(assert (=> d!690034 (validRegex!2582 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))))))

(assert (=> d!690034 (= (derivativeStep!1576 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))) c!13498) lt!862319)))

(declare-fun b!2331923 () Bool)

(assert (=> b!2331923 (= e!1493801 (Union!6837 (Concat!11459 call!139275 (regTwo!14186 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))))) EmptyLang!6837))))

(declare-fun b!2331924 () Bool)

(declare-fun e!1493798 () Regex!6837)

(assert (=> b!2331924 (= e!1493798 e!1493799)))

(assert (=> b!2331924 (= c!370509 ((_ is Star!6837) (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))))))

(declare-fun bm!139273 () Bool)

(declare-fun call!139278 () Regex!6837)

(assert (=> bm!139273 (= call!139278 (derivativeStep!1576 (ite c!370508 (regOne!14187 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))) (regTwo!14186 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))))) c!13498))))

(declare-fun b!2331925 () Bool)

(assert (=> b!2331925 (= c!370508 ((_ is Union!6837) (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))))))

(declare-fun e!1493802 () Regex!6837)

(assert (=> b!2331925 (= e!1493802 e!1493798)))

(declare-fun b!2331926 () Bool)

(assert (=> b!2331926 (= e!1493802 (ite (= c!13498 (c!370433 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331927 () Bool)

(assert (=> b!2331927 (= e!1493801 (Union!6837 (Concat!11459 call!139275 (regTwo!14186 (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197))))) call!139278))))

(declare-fun b!2331928 () Bool)

(assert (=> b!2331928 (= e!1493800 e!1493802)))

(declare-fun c!370512 () Bool)

(assert (=> b!2331928 (= c!370512 ((_ is ElementMatch!6837) (ite c!370461 (regOne!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))))))

(declare-fun b!2331929 () Bool)

(assert (=> b!2331929 (= e!1493798 (Union!6837 call!139278 call!139277))))

(assert (= (and d!690034 c!370511) b!2331920))

(assert (= (and d!690034 (not c!370511)) b!2331928))

(assert (= (and b!2331928 c!370512) b!2331926))

(assert (= (and b!2331928 (not c!370512)) b!2331925))

(assert (= (and b!2331925 c!370508) b!2331929))

(assert (= (and b!2331925 (not c!370508)) b!2331924))

(assert (= (and b!2331924 c!370509) b!2331922))

(assert (= (and b!2331924 (not c!370509)) b!2331921))

(assert (= (and b!2331921 c!370510) b!2331927))

(assert (= (and b!2331921 (not c!370510)) b!2331923))

(assert (= (or b!2331927 b!2331923) bm!139271))

(assert (= (or b!2331922 bm!139271) bm!139270))

(assert (= (or b!2331929 bm!139270) bm!139272))

(assert (= (or b!2331929 b!2331927) bm!139273))

(declare-fun m!2761213 () Bool)

(assert (=> bm!139272 m!2761213))

(declare-fun m!2761215 () Bool)

(assert (=> b!2331921 m!2761215))

(declare-fun m!2761217 () Bool)

(assert (=> d!690034 m!2761217))

(declare-fun m!2761219 () Bool)

(assert (=> d!690034 m!2761219))

(declare-fun m!2761221 () Bool)

(assert (=> bm!139273 m!2761221))

(assert (=> bm!139229 d!690034))

(declare-fun b!2331930 () Bool)

(declare-fun e!1493808 () Bool)

(declare-fun call!139280 () Bool)

(assert (=> b!2331930 (= e!1493808 call!139280)))

(declare-fun b!2331931 () Bool)

(declare-fun res!995377 () Bool)

(declare-fun e!1493804 () Bool)

(assert (=> b!2331931 (=> res!995377 e!1493804)))

(assert (=> b!2331931 (= res!995377 (not ((_ is Concat!11459) lt!862312)))))

(declare-fun e!1493806 () Bool)

(assert (=> b!2331931 (= e!1493806 e!1493804)))

(declare-fun b!2331932 () Bool)

(declare-fun e!1493809 () Bool)

(assert (=> b!2331932 (= e!1493809 call!139280)))

(declare-fun bm!139274 () Bool)

(declare-fun call!139281 () Bool)

(declare-fun call!139279 () Bool)

(assert (=> bm!139274 (= call!139281 call!139279)))

(declare-fun d!690036 () Bool)

(declare-fun res!995380 () Bool)

(declare-fun e!1493805 () Bool)

(assert (=> d!690036 (=> res!995380 e!1493805)))

(assert (=> d!690036 (= res!995380 ((_ is ElementMatch!6837) lt!862312))))

(assert (=> d!690036 (= (validRegex!2582 lt!862312) e!1493805)))

(declare-fun b!2331933 () Bool)

(assert (=> b!2331933 (= e!1493804 e!1493809)))

(declare-fun res!995378 () Bool)

(assert (=> b!2331933 (=> (not res!995378) (not e!1493809))))

(assert (=> b!2331933 (= res!995378 call!139281)))

(declare-fun bm!139275 () Bool)

(declare-fun c!370513 () Bool)

(assert (=> bm!139275 (= call!139280 (validRegex!2582 (ite c!370513 (regTwo!14187 lt!862312) (regTwo!14186 lt!862312))))))

(declare-fun c!370514 () Bool)

(declare-fun bm!139276 () Bool)

(assert (=> bm!139276 (= call!139279 (validRegex!2582 (ite c!370514 (reg!7166 lt!862312) (ite c!370513 (regOne!14187 lt!862312) (regOne!14186 lt!862312)))))))

(declare-fun b!2331934 () Bool)

(declare-fun res!995381 () Bool)

(assert (=> b!2331934 (=> (not res!995381) (not e!1493808))))

(assert (=> b!2331934 (= res!995381 call!139281)))

(assert (=> b!2331934 (= e!1493806 e!1493808)))

(declare-fun b!2331935 () Bool)

(declare-fun e!1493807 () Bool)

(declare-fun e!1493803 () Bool)

(assert (=> b!2331935 (= e!1493807 e!1493803)))

(declare-fun res!995379 () Bool)

(assert (=> b!2331935 (= res!995379 (not (nullable!1916 (reg!7166 lt!862312))))))

(assert (=> b!2331935 (=> (not res!995379) (not e!1493803))))

(declare-fun b!2331936 () Bool)

(assert (=> b!2331936 (= e!1493803 call!139279)))

(declare-fun b!2331937 () Bool)

(assert (=> b!2331937 (= e!1493807 e!1493806)))

(assert (=> b!2331937 (= c!370513 ((_ is Union!6837) lt!862312))))

(declare-fun b!2331938 () Bool)

(assert (=> b!2331938 (= e!1493805 e!1493807)))

(assert (=> b!2331938 (= c!370514 ((_ is Star!6837) lt!862312))))

(assert (= (and d!690036 (not res!995380)) b!2331938))

(assert (= (and b!2331938 c!370514) b!2331935))

(assert (= (and b!2331938 (not c!370514)) b!2331937))

(assert (= (and b!2331935 res!995379) b!2331936))

(assert (= (and b!2331937 c!370513) b!2331934))

(assert (= (and b!2331937 (not c!370513)) b!2331931))

(assert (= (and b!2331934 res!995381) b!2331930))

(assert (= (and b!2331931 (not res!995377)) b!2331933))

(assert (= (and b!2331933 res!995378) b!2331932))

(assert (= (or b!2331930 b!2331932) bm!139275))

(assert (= (or b!2331934 b!2331933) bm!139274))

(assert (= (or b!2331936 bm!139274) bm!139276))

(declare-fun m!2761223 () Bool)

(assert (=> bm!139275 m!2761223))

(declare-fun m!2761225 () Bool)

(assert (=> bm!139276 m!2761225))

(declare-fun m!2761227 () Bool)

(assert (=> b!2331935 m!2761227))

(assert (=> d!690006 d!690036))

(assert (=> d!690006 d!689988))

(declare-fun b!2331939 () Bool)

(declare-fun e!1493811 () Bool)

(declare-fun e!1493813 () Bool)

(assert (=> b!2331939 (= e!1493811 e!1493813)))

(declare-fun res!995383 () Bool)

(assert (=> b!2331939 (=> (not res!995383) (not e!1493813))))

(assert (=> b!2331939 (= res!995383 (and (not ((_ is EmptyLang!6837) (derivativeStep!1576 (regTwo!14187 r!26197) c!13498))) (not ((_ is ElementMatch!6837) (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)))))))

(declare-fun b!2331940 () Bool)

(declare-fun e!1493810 () Bool)

(declare-fun e!1493815 () Bool)

(assert (=> b!2331940 (= e!1493810 e!1493815)))

(declare-fun res!995386 () Bool)

(declare-fun call!139282 () Bool)

(assert (=> b!2331940 (= res!995386 call!139282)))

(assert (=> b!2331940 (=> (not res!995386) (not e!1493815))))

(declare-fun b!2331941 () Bool)

(declare-fun e!1493812 () Bool)

(assert (=> b!2331941 (= e!1493813 e!1493812)))

(declare-fun res!995385 () Bool)

(assert (=> b!2331941 (=> res!995385 e!1493812)))

(assert (=> b!2331941 (= res!995385 ((_ is Star!6837) (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)))))

(declare-fun c!370515 () Bool)

(declare-fun bm!139277 () Bool)

(assert (=> bm!139277 (= call!139282 (nullable!1916 (ite c!370515 (regOne!14187 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)) (regOne!14186 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)))))))

(declare-fun b!2331942 () Bool)

(declare-fun e!1493814 () Bool)

(declare-fun call!139283 () Bool)

(assert (=> b!2331942 (= e!1493814 call!139283)))

(declare-fun bm!139278 () Bool)

(assert (=> bm!139278 (= call!139283 (nullable!1916 (ite c!370515 (regTwo!14187 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)) (regTwo!14186 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)))))))

(declare-fun b!2331944 () Bool)

(assert (=> b!2331944 (= e!1493810 e!1493814)))

(declare-fun res!995382 () Bool)

(assert (=> b!2331944 (= res!995382 call!139282)))

(assert (=> b!2331944 (=> res!995382 e!1493814)))

(declare-fun b!2331945 () Bool)

(assert (=> b!2331945 (= e!1493815 call!139283)))

(declare-fun d!690038 () Bool)

(declare-fun res!995384 () Bool)

(assert (=> d!690038 (=> res!995384 e!1493811)))

(assert (=> d!690038 (= res!995384 ((_ is EmptyExpr!6837) (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)))))

(assert (=> d!690038 (= (nullableFct!474 (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)) e!1493811)))

(declare-fun b!2331943 () Bool)

(assert (=> b!2331943 (= e!1493812 e!1493810)))

(assert (=> b!2331943 (= c!370515 ((_ is Union!6837) (derivativeStep!1576 (regTwo!14187 r!26197) c!13498)))))

(assert (= (and d!690038 (not res!995384)) b!2331939))

(assert (= (and b!2331939 res!995383) b!2331941))

(assert (= (and b!2331941 (not res!995385)) b!2331943))

(assert (= (and b!2331943 c!370515) b!2331944))

(assert (= (and b!2331943 (not c!370515)) b!2331940))

(assert (= (and b!2331944 (not res!995382)) b!2331942))

(assert (= (and b!2331940 res!995386) b!2331945))

(assert (= (or b!2331944 b!2331940) bm!139277))

(assert (= (or b!2331942 b!2331945) bm!139278))

(declare-fun m!2761229 () Bool)

(assert (=> bm!139277 m!2761229))

(declare-fun m!2761231 () Bool)

(assert (=> bm!139278 m!2761231))

(assert (=> d!689982 d!690038))

(declare-fun b!2331946 () Bool)

(declare-fun e!1493817 () Bool)

(declare-fun e!1493819 () Bool)

(assert (=> b!2331946 (= e!1493817 e!1493819)))

(declare-fun res!995388 () Bool)

(assert (=> b!2331946 (=> (not res!995388) (not e!1493819))))

(assert (=> b!2331946 (= res!995388 (and (not ((_ is EmptyLang!6837) (regOne!14187 r!26197))) (not ((_ is ElementMatch!6837) (regOne!14187 r!26197)))))))

(declare-fun b!2331947 () Bool)

(declare-fun e!1493816 () Bool)

(declare-fun e!1493821 () Bool)

(assert (=> b!2331947 (= e!1493816 e!1493821)))

(declare-fun res!995391 () Bool)

(declare-fun call!139284 () Bool)

(assert (=> b!2331947 (= res!995391 call!139284)))

(assert (=> b!2331947 (=> (not res!995391) (not e!1493821))))

(declare-fun b!2331948 () Bool)

(declare-fun e!1493818 () Bool)

(assert (=> b!2331948 (= e!1493819 e!1493818)))

(declare-fun res!995390 () Bool)

(assert (=> b!2331948 (=> res!995390 e!1493818)))

(assert (=> b!2331948 (= res!995390 ((_ is Star!6837) (regOne!14187 r!26197)))))

(declare-fun bm!139279 () Bool)

(declare-fun c!370516 () Bool)

(assert (=> bm!139279 (= call!139284 (nullable!1916 (ite c!370516 (regOne!14187 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))))

(declare-fun b!2331949 () Bool)

(declare-fun e!1493820 () Bool)

(declare-fun call!139285 () Bool)

(assert (=> b!2331949 (= e!1493820 call!139285)))

(declare-fun bm!139280 () Bool)

(assert (=> bm!139280 (= call!139285 (nullable!1916 (ite c!370516 (regTwo!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))))))

(declare-fun b!2331951 () Bool)

(assert (=> b!2331951 (= e!1493816 e!1493820)))

(declare-fun res!995387 () Bool)

(assert (=> b!2331951 (= res!995387 call!139284)))

(assert (=> b!2331951 (=> res!995387 e!1493820)))

(declare-fun b!2331952 () Bool)

(assert (=> b!2331952 (= e!1493821 call!139285)))

(declare-fun d!690040 () Bool)

(declare-fun res!995389 () Bool)

(assert (=> d!690040 (=> res!995389 e!1493817)))

(assert (=> d!690040 (= res!995389 ((_ is EmptyExpr!6837) (regOne!14187 r!26197)))))

(assert (=> d!690040 (= (nullableFct!474 (regOne!14187 r!26197)) e!1493817)))

(declare-fun b!2331950 () Bool)

(assert (=> b!2331950 (= e!1493818 e!1493816)))

(assert (=> b!2331950 (= c!370516 ((_ is Union!6837) (regOne!14187 r!26197)))))

(assert (= (and d!690040 (not res!995389)) b!2331946))

(assert (= (and b!2331946 res!995388) b!2331948))

(assert (= (and b!2331948 (not res!995390)) b!2331950))

(assert (= (and b!2331950 c!370516) b!2331951))

(assert (= (and b!2331950 (not c!370516)) b!2331947))

(assert (= (and b!2331951 (not res!995387)) b!2331949))

(assert (= (and b!2331947 res!995391) b!2331952))

(assert (= (or b!2331951 b!2331947) bm!139279))

(assert (= (or b!2331949 b!2331952) bm!139280))

(declare-fun m!2761233 () Bool)

(assert (=> bm!139279 m!2761233))

(declare-fun m!2761235 () Bool)

(assert (=> bm!139280 m!2761235))

(assert (=> d!690002 d!690040))

(declare-fun bm!139281 () Bool)

(declare-fun call!139287 () Regex!6837)

(declare-fun call!139288 () Regex!6837)

(assert (=> bm!139281 (= call!139287 call!139288)))

(declare-fun bm!139282 () Bool)

(declare-fun call!139286 () Regex!6837)

(assert (=> bm!139282 (= call!139286 call!139287)))

(declare-fun c!370517 () Bool)

(declare-fun c!370518 () Bool)

(declare-fun bm!139283 () Bool)

(assert (=> bm!139283 (= call!139288 (derivativeStep!1576 (ite c!370517 (regTwo!14187 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))) (ite c!370518 (reg!7166 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))) (regOne!14186 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))))) c!13498))))

(declare-fun b!2331953 () Bool)

(declare-fun e!1493824 () Regex!6837)

(assert (=> b!2331953 (= e!1493824 EmptyLang!6837)))

(declare-fun b!2331954 () Bool)

(declare-fun c!370519 () Bool)

(assert (=> b!2331954 (= c!370519 (nullable!1916 (regOne!14186 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))))))

(declare-fun e!1493823 () Regex!6837)

(declare-fun e!1493825 () Regex!6837)

(assert (=> b!2331954 (= e!1493823 e!1493825)))

(declare-fun b!2331955 () Bool)

(assert (=> b!2331955 (= e!1493823 (Concat!11459 call!139287 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))))))

(declare-fun d!690042 () Bool)

(declare-fun lt!862320 () Regex!6837)

(assert (=> d!690042 (validRegex!2582 lt!862320)))

(assert (=> d!690042 (= lt!862320 e!1493824)))

(declare-fun c!370520 () Bool)

(assert (=> d!690042 (= c!370520 (or ((_ is EmptyExpr!6837) (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))) ((_ is EmptyLang!6837) (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))))))

(assert (=> d!690042 (validRegex!2582 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))))

(assert (=> d!690042 (= (derivativeStep!1576 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))) c!13498) lt!862320)))

(declare-fun b!2331956 () Bool)

(assert (=> b!2331956 (= e!1493825 (Union!6837 (Concat!11459 call!139286 (regTwo!14186 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))) EmptyLang!6837))))

(declare-fun b!2331957 () Bool)

(declare-fun e!1493822 () Regex!6837)

(assert (=> b!2331957 (= e!1493822 e!1493823)))

(assert (=> b!2331957 (= c!370518 ((_ is Star!6837) (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))))))

(declare-fun call!139289 () Regex!6837)

(declare-fun bm!139284 () Bool)

(assert (=> bm!139284 (= call!139289 (derivativeStep!1576 (ite c!370517 (regOne!14187 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))) (regTwo!14186 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))) c!13498))))

(declare-fun b!2331958 () Bool)

(assert (=> b!2331958 (= c!370517 ((_ is Union!6837) (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))))))

(declare-fun e!1493826 () Regex!6837)

(assert (=> b!2331958 (= e!1493826 e!1493822)))

(declare-fun b!2331959 () Bool)

(assert (=> b!2331959 (= e!1493826 (ite (= c!13498 (c!370433 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331960 () Bool)

(assert (=> b!2331960 (= e!1493825 (Union!6837 (Concat!11459 call!139286 (regTwo!14186 (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))) call!139289))))

(declare-fun b!2331961 () Bool)

(assert (=> b!2331961 (= e!1493824 e!1493826)))

(declare-fun c!370521 () Bool)

(assert (=> b!2331961 (= c!370521 ((_ is ElementMatch!6837) (ite c!370448 (regTwo!14187 (regTwo!14187 r!26197)) (ite c!370449 (reg!7166 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197))))))))

(declare-fun b!2331962 () Bool)

(assert (=> b!2331962 (= e!1493822 (Union!6837 call!139289 call!139288))))

(assert (= (and d!690042 c!370520) b!2331953))

(assert (= (and d!690042 (not c!370520)) b!2331961))

(assert (= (and b!2331961 c!370521) b!2331959))

(assert (= (and b!2331961 (not c!370521)) b!2331958))

(assert (= (and b!2331958 c!370517) b!2331962))

(assert (= (and b!2331958 (not c!370517)) b!2331957))

(assert (= (and b!2331957 c!370518) b!2331955))

(assert (= (and b!2331957 (not c!370518)) b!2331954))

(assert (= (and b!2331954 c!370519) b!2331960))

(assert (= (and b!2331954 (not c!370519)) b!2331956))

(assert (= (or b!2331960 b!2331956) bm!139282))

(assert (= (or b!2331955 bm!139282) bm!139281))

(assert (= (or b!2331962 bm!139281) bm!139283))

(assert (= (or b!2331962 b!2331960) bm!139284))

(declare-fun m!2761237 () Bool)

(assert (=> bm!139283 m!2761237))

(declare-fun m!2761239 () Bool)

(assert (=> b!2331954 m!2761239))

(declare-fun m!2761241 () Bool)

(assert (=> d!690042 m!2761241))

(declare-fun m!2761243 () Bool)

(assert (=> d!690042 m!2761243))

(declare-fun m!2761245 () Bool)

(assert (=> bm!139284 m!2761245))

(assert (=> bm!139212 d!690042))

(declare-fun bm!139285 () Bool)

(declare-fun call!139291 () Regex!6837)

(declare-fun call!139292 () Regex!6837)

(assert (=> bm!139285 (= call!139291 call!139292)))

(declare-fun bm!139286 () Bool)

(declare-fun call!139290 () Regex!6837)

(assert (=> bm!139286 (= call!139290 call!139291)))

(declare-fun c!370522 () Bool)

(declare-fun bm!139287 () Bool)

(declare-fun c!370523 () Bool)

(assert (=> bm!139287 (= call!139292 (derivativeStep!1576 (ite c!370522 (regTwo!14187 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))) (ite c!370523 (reg!7166 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))) (regOne!14186 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))))) c!13498))))

(declare-fun b!2331963 () Bool)

(declare-fun e!1493829 () Regex!6837)

(assert (=> b!2331963 (= e!1493829 EmptyLang!6837)))

(declare-fun b!2331964 () Bool)

(declare-fun c!370524 () Bool)

(assert (=> b!2331964 (= c!370524 (nullable!1916 (regOne!14186 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)))))))

(declare-fun e!1493828 () Regex!6837)

(declare-fun e!1493830 () Regex!6837)

(assert (=> b!2331964 (= e!1493828 e!1493830)))

(declare-fun b!2331965 () Bool)

(assert (=> b!2331965 (= e!1493828 (Concat!11459 call!139291 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))))))

(declare-fun d!690044 () Bool)

(declare-fun lt!862321 () Regex!6837)

(assert (=> d!690044 (validRegex!2582 lt!862321)))

(assert (=> d!690044 (= lt!862321 e!1493829)))

(declare-fun c!370525 () Bool)

(assert (=> d!690044 (= c!370525 (or ((_ is EmptyExpr!6837) (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))) ((_ is EmptyLang!6837) (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)))))))

(assert (=> d!690044 (validRegex!2582 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)))))

(assert (=> d!690044 (= (derivativeStep!1576 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)) c!13498) lt!862321)))

(declare-fun b!2331966 () Bool)

(assert (=> b!2331966 (= e!1493830 (Union!6837 (Concat!11459 call!139290 (regTwo!14186 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)))) EmptyLang!6837))))

(declare-fun b!2331967 () Bool)

(declare-fun e!1493827 () Regex!6837)

(assert (=> b!2331967 (= e!1493827 e!1493828)))

(assert (=> b!2331967 (= c!370523 ((_ is Star!6837) (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))))))

(declare-fun bm!139288 () Bool)

(declare-fun call!139293 () Regex!6837)

(assert (=> bm!139288 (= call!139293 (derivativeStep!1576 (ite c!370522 (regOne!14187 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))) (regTwo!14186 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)))) c!13498))))

(declare-fun b!2331968 () Bool)

(assert (=> b!2331968 (= c!370522 ((_ is Union!6837) (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))))))

(declare-fun e!1493831 () Regex!6837)

(assert (=> b!2331968 (= e!1493831 e!1493827)))

(declare-fun b!2331969 () Bool)

(assert (=> b!2331969 (= e!1493831 (ite (= c!13498 (c!370433 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331970 () Bool)

(assert (=> b!2331970 (= e!1493830 (Union!6837 (Concat!11459 call!139290 (regTwo!14186 (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197)))) call!139293))))

(declare-fun b!2331971 () Bool)

(assert (=> b!2331971 (= e!1493829 e!1493831)))

(declare-fun c!370526 () Bool)

(assert (=> b!2331971 (= c!370526 ((_ is ElementMatch!6837) (ite c!370466 (regOne!14187 r!26197) (regTwo!14186 r!26197))))))

(declare-fun b!2331972 () Bool)

(assert (=> b!2331972 (= e!1493827 (Union!6837 call!139293 call!139292))))

(assert (= (and d!690044 c!370525) b!2331963))

(assert (= (and d!690044 (not c!370525)) b!2331971))

(assert (= (and b!2331971 c!370526) b!2331969))

(assert (= (and b!2331971 (not c!370526)) b!2331968))

(assert (= (and b!2331968 c!370522) b!2331972))

(assert (= (and b!2331968 (not c!370522)) b!2331967))

(assert (= (and b!2331967 c!370523) b!2331965))

(assert (= (and b!2331967 (not c!370523)) b!2331964))

(assert (= (and b!2331964 c!370524) b!2331970))

(assert (= (and b!2331964 (not c!370524)) b!2331966))

(assert (= (or b!2331970 b!2331966) bm!139286))

(assert (= (or b!2331965 bm!139286) bm!139285))

(assert (= (or b!2331972 bm!139285) bm!139287))

(assert (= (or b!2331972 b!2331970) bm!139288))

(declare-fun m!2761247 () Bool)

(assert (=> bm!139287 m!2761247))

(declare-fun m!2761249 () Bool)

(assert (=> b!2331964 m!2761249))

(declare-fun m!2761251 () Bool)

(assert (=> d!690044 m!2761251))

(declare-fun m!2761253 () Bool)

(assert (=> d!690044 m!2761253))

(declare-fun m!2761255 () Bool)

(assert (=> bm!139288 m!2761255))

(assert (=> bm!139233 d!690044))

(declare-fun b!2331973 () Bool)

(declare-fun e!1493833 () Bool)

(declare-fun e!1493835 () Bool)

(assert (=> b!2331973 (= e!1493833 e!1493835)))

(declare-fun res!995393 () Bool)

(assert (=> b!2331973 (=> (not res!995393) (not e!1493835))))

(assert (=> b!2331973 (= res!995393 (and (not ((_ is EmptyLang!6837) (derivativeStep!1576 (regOne!14187 r!26197) c!13498))) (not ((_ is ElementMatch!6837) (derivativeStep!1576 (regOne!14187 r!26197) c!13498)))))))

(declare-fun b!2331974 () Bool)

(declare-fun e!1493832 () Bool)

(declare-fun e!1493837 () Bool)

(assert (=> b!2331974 (= e!1493832 e!1493837)))

(declare-fun res!995396 () Bool)

(declare-fun call!139294 () Bool)

(assert (=> b!2331974 (= res!995396 call!139294)))

(assert (=> b!2331974 (=> (not res!995396) (not e!1493837))))

(declare-fun b!2331975 () Bool)

(declare-fun e!1493834 () Bool)

(assert (=> b!2331975 (= e!1493835 e!1493834)))

(declare-fun res!995395 () Bool)

(assert (=> b!2331975 (=> res!995395 e!1493834)))

(assert (=> b!2331975 (= res!995395 ((_ is Star!6837) (derivativeStep!1576 (regOne!14187 r!26197) c!13498)))))

(declare-fun bm!139289 () Bool)

(declare-fun c!370527 () Bool)

(assert (=> bm!139289 (= call!139294 (nullable!1916 (ite c!370527 (regOne!14187 (derivativeStep!1576 (regOne!14187 r!26197) c!13498)) (regOne!14186 (derivativeStep!1576 (regOne!14187 r!26197) c!13498)))))))

(declare-fun b!2331976 () Bool)

(declare-fun e!1493836 () Bool)

(declare-fun call!139295 () Bool)

(assert (=> b!2331976 (= e!1493836 call!139295)))

(declare-fun bm!139290 () Bool)

(assert (=> bm!139290 (= call!139295 (nullable!1916 (ite c!370527 (regTwo!14187 (derivativeStep!1576 (regOne!14187 r!26197) c!13498)) (regTwo!14186 (derivativeStep!1576 (regOne!14187 r!26197) c!13498)))))))

(declare-fun b!2331978 () Bool)

(assert (=> b!2331978 (= e!1493832 e!1493836)))

(declare-fun res!995392 () Bool)

(assert (=> b!2331978 (= res!995392 call!139294)))

(assert (=> b!2331978 (=> res!995392 e!1493836)))

(declare-fun b!2331979 () Bool)

(assert (=> b!2331979 (= e!1493837 call!139295)))

(declare-fun d!690046 () Bool)

(declare-fun res!995394 () Bool)

(assert (=> d!690046 (=> res!995394 e!1493833)))

(assert (=> d!690046 (= res!995394 ((_ is EmptyExpr!6837) (derivativeStep!1576 (regOne!14187 r!26197) c!13498)))))

(assert (=> d!690046 (= (nullableFct!474 (derivativeStep!1576 (regOne!14187 r!26197) c!13498)) e!1493833)))

(declare-fun b!2331977 () Bool)

(assert (=> b!2331977 (= e!1493834 e!1493832)))

(assert (=> b!2331977 (= c!370527 ((_ is Union!6837) (derivativeStep!1576 (regOne!14187 r!26197) c!13498)))))

(assert (= (and d!690046 (not res!995394)) b!2331973))

(assert (= (and b!2331973 res!995393) b!2331975))

(assert (= (and b!2331975 (not res!995395)) b!2331977))

(assert (= (and b!2331977 c!370527) b!2331978))

(assert (= (and b!2331977 (not c!370527)) b!2331974))

(assert (= (and b!2331978 (not res!995392)) b!2331976))

(assert (= (and b!2331974 res!995396) b!2331979))

(assert (= (or b!2331978 b!2331974) bm!139289))

(assert (= (or b!2331976 b!2331979) bm!139290))

(declare-fun m!2761257 () Bool)

(assert (=> bm!139289 m!2761257))

(declare-fun m!2761259 () Bool)

(assert (=> bm!139290 m!2761259))

(assert (=> d!689996 d!690046))

(declare-fun b!2331980 () Bool)

(declare-fun e!1493843 () Bool)

(declare-fun call!139297 () Bool)

(assert (=> b!2331980 (= e!1493843 call!139297)))

(declare-fun b!2331981 () Bool)

(declare-fun res!995397 () Bool)

(declare-fun e!1493839 () Bool)

(assert (=> b!2331981 (=> res!995397 e!1493839)))

(assert (=> b!2331981 (= res!995397 (not ((_ is Concat!11459) (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197)))))))

(declare-fun e!1493841 () Bool)

(assert (=> b!2331981 (= e!1493841 e!1493839)))

(declare-fun b!2331982 () Bool)

(declare-fun e!1493844 () Bool)

(assert (=> b!2331982 (= e!1493844 call!139297)))

(declare-fun bm!139291 () Bool)

(declare-fun call!139298 () Bool)

(declare-fun call!139296 () Bool)

(assert (=> bm!139291 (= call!139298 call!139296)))

(declare-fun d!690048 () Bool)

(declare-fun res!995400 () Bool)

(declare-fun e!1493840 () Bool)

(assert (=> d!690048 (=> res!995400 e!1493840)))

(assert (=> d!690048 (= res!995400 ((_ is ElementMatch!6837) (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))))))

(assert (=> d!690048 (= (validRegex!2582 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))) e!1493840)))

(declare-fun b!2331983 () Bool)

(assert (=> b!2331983 (= e!1493839 e!1493844)))

(declare-fun res!995398 () Bool)

(assert (=> b!2331983 (=> (not res!995398) (not e!1493844))))

(assert (=> b!2331983 (= res!995398 call!139298)))

(declare-fun bm!139292 () Bool)

(declare-fun c!370528 () Bool)

(assert (=> bm!139292 (= call!139297 (validRegex!2582 (ite c!370528 (regTwo!14187 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))) (regTwo!14186 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))))))))

(declare-fun c!370529 () Bool)

(declare-fun bm!139293 () Bool)

(assert (=> bm!139293 (= call!139296 (validRegex!2582 (ite c!370529 (reg!7166 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))) (ite c!370528 (regOne!14187 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))) (regOne!14186 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197)))))))))

(declare-fun b!2331984 () Bool)

(declare-fun res!995401 () Bool)

(assert (=> b!2331984 (=> (not res!995401) (not e!1493843))))

(assert (=> b!2331984 (= res!995401 call!139298)))

(assert (=> b!2331984 (= e!1493841 e!1493843)))

(declare-fun b!2331985 () Bool)

(declare-fun e!1493842 () Bool)

(declare-fun e!1493838 () Bool)

(assert (=> b!2331985 (= e!1493842 e!1493838)))

(declare-fun res!995399 () Bool)

(assert (=> b!2331985 (= res!995399 (not (nullable!1916 (reg!7166 (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))))))))

(assert (=> b!2331985 (=> (not res!995399) (not e!1493838))))

(declare-fun b!2331986 () Bool)

(assert (=> b!2331986 (= e!1493838 call!139296)))

(declare-fun b!2331987 () Bool)

(assert (=> b!2331987 (= e!1493842 e!1493841)))

(assert (=> b!2331987 (= c!370528 ((_ is Union!6837) (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))))))

(declare-fun b!2331988 () Bool)

(assert (=> b!2331988 (= e!1493840 e!1493842)))

(assert (=> b!2331988 (= c!370529 ((_ is Star!6837) (ite c!370459 (regTwo!14187 r!26197) (regTwo!14186 r!26197))))))

(assert (= (and d!690048 (not res!995400)) b!2331988))

(assert (= (and b!2331988 c!370529) b!2331985))

(assert (= (and b!2331988 (not c!370529)) b!2331987))

(assert (= (and b!2331985 res!995399) b!2331986))

(assert (= (and b!2331987 c!370528) b!2331984))

(assert (= (and b!2331987 (not c!370528)) b!2331981))

(assert (= (and b!2331984 res!995401) b!2331980))

(assert (= (and b!2331981 (not res!995397)) b!2331983))

(assert (= (and b!2331983 res!995398) b!2331982))

(assert (= (or b!2331980 b!2331982) bm!139292))

(assert (= (or b!2331984 b!2331983) bm!139291))

(assert (= (or b!2331986 bm!139291) bm!139293))

(declare-fun m!2761261 () Bool)

(assert (=> bm!139292 m!2761261))

(declare-fun m!2761263 () Bool)

(assert (=> bm!139293 m!2761263))

(declare-fun m!2761265 () Bool)

(assert (=> b!2331985 m!2761265))

(assert (=> bm!139224 d!690048))

(declare-fun d!690050 () Bool)

(assert (=> d!690050 (= (nullable!1916 (regOne!14186 (regTwo!14187 r!26197))) (nullableFct!474 (regOne!14186 (regTwo!14187 r!26197))))))

(declare-fun bs!459841 () Bool)

(assert (= bs!459841 d!690050))

(declare-fun m!2761267 () Bool)

(assert (=> bs!459841 m!2761267))

(assert (=> b!2331696 d!690050))

(declare-fun bm!139294 () Bool)

(declare-fun call!139300 () Regex!6837)

(declare-fun call!139301 () Regex!6837)

(assert (=> bm!139294 (= call!139300 call!139301)))

(declare-fun bm!139295 () Bool)

(declare-fun call!139299 () Regex!6837)

(assert (=> bm!139295 (= call!139299 call!139300)))

(declare-fun c!370530 () Bool)

(declare-fun bm!139296 () Bool)

(declare-fun c!370531 () Bool)

(assert (=> bm!139296 (= call!139301 (derivativeStep!1576 (ite c!370530 (regTwo!14187 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))) (ite c!370531 (reg!7166 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))) (regOne!14186 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))))) c!13498))))

(declare-fun b!2331989 () Bool)

(declare-fun e!1493847 () Regex!6837)

(assert (=> b!2331989 (= e!1493847 EmptyLang!6837)))

(declare-fun b!2331990 () Bool)

(declare-fun c!370532 () Bool)

(assert (=> b!2331990 (= c!370532 (nullable!1916 (regOne!14186 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))))))

(declare-fun e!1493846 () Regex!6837)

(declare-fun e!1493848 () Regex!6837)

(assert (=> b!2331990 (= e!1493846 e!1493848)))

(declare-fun b!2331991 () Bool)

(assert (=> b!2331991 (= e!1493846 (Concat!11459 call!139300 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))))))

(declare-fun d!690052 () Bool)

(declare-fun lt!862322 () Regex!6837)

(assert (=> d!690052 (validRegex!2582 lt!862322)))

(assert (=> d!690052 (= lt!862322 e!1493847)))

(declare-fun c!370533 () Bool)

(assert (=> d!690052 (= c!370533 (or ((_ is EmptyExpr!6837) (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))) ((_ is EmptyLang!6837) (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))))))

(assert (=> d!690052 (validRegex!2582 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))))

(assert (=> d!690052 (= (derivativeStep!1576 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))) c!13498) lt!862322)))

(declare-fun b!2331992 () Bool)

(assert (=> b!2331992 (= e!1493848 (Union!6837 (Concat!11459 call!139299 (regTwo!14186 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))) EmptyLang!6837))))

(declare-fun b!2331993 () Bool)

(declare-fun e!1493845 () Regex!6837)

(assert (=> b!2331993 (= e!1493845 e!1493846)))

(assert (=> b!2331993 (= c!370531 ((_ is Star!6837) (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))))))

(declare-fun call!139302 () Regex!6837)

(declare-fun bm!139297 () Bool)

(assert (=> bm!139297 (= call!139302 (derivativeStep!1576 (ite c!370530 (regOne!14187 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))) (regTwo!14186 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))) c!13498))))

(declare-fun b!2331994 () Bool)

(assert (=> b!2331994 (= c!370530 ((_ is Union!6837) (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))))))

(declare-fun e!1493849 () Regex!6837)

(assert (=> b!2331994 (= e!1493849 e!1493845)))

(declare-fun b!2331995 () Bool)

(assert (=> b!2331995 (= e!1493849 (ite (= c!13498 (c!370433 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2331996 () Bool)

(assert (=> b!2331996 (= e!1493848 (Union!6837 (Concat!11459 call!139299 (regTwo!14186 (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197)))))) call!139302))))

(declare-fun b!2331997 () Bool)

(assert (=> b!2331997 (= e!1493847 e!1493849)))

(declare-fun c!370534 () Bool)

(assert (=> b!2331997 (= c!370534 ((_ is ElementMatch!6837) (ite c!370461 (regTwo!14187 (regOne!14187 r!26197)) (ite c!370462 (reg!7166 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))))))

(declare-fun b!2331998 () Bool)

(assert (=> b!2331998 (= e!1493845 (Union!6837 call!139302 call!139301))))

(assert (= (and d!690052 c!370533) b!2331989))

(assert (= (and d!690052 (not c!370533)) b!2331997))

(assert (= (and b!2331997 c!370534) b!2331995))

(assert (= (and b!2331997 (not c!370534)) b!2331994))

(assert (= (and b!2331994 c!370530) b!2331998))

(assert (= (and b!2331994 (not c!370530)) b!2331993))

(assert (= (and b!2331993 c!370531) b!2331991))

(assert (= (and b!2331993 (not c!370531)) b!2331990))

(assert (= (and b!2331990 c!370532) b!2331996))

(assert (= (and b!2331990 (not c!370532)) b!2331992))

(assert (= (or b!2331996 b!2331992) bm!139295))

(assert (= (or b!2331991 bm!139295) bm!139294))

(assert (= (or b!2331998 bm!139294) bm!139296))

(assert (= (or b!2331998 b!2331996) bm!139297))

(declare-fun m!2761269 () Bool)

(assert (=> bm!139296 m!2761269))

(declare-fun m!2761271 () Bool)

(assert (=> b!2331990 m!2761271))

(declare-fun m!2761273 () Bool)

(assert (=> d!690052 m!2761273))

(declare-fun m!2761275 () Bool)

(assert (=> d!690052 m!2761275))

(declare-fun m!2761277 () Bool)

(assert (=> bm!139297 m!2761277))

(assert (=> bm!139228 d!690052))

(declare-fun d!690054 () Bool)

(assert (=> d!690054 (= (nullable!1916 (regOne!14186 (regOne!14187 r!26197))) (nullableFct!474 (regOne!14186 (regOne!14187 r!26197))))))

(declare-fun bs!459842 () Bool)

(assert (= bs!459842 d!690054))

(declare-fun m!2761279 () Bool)

(assert (=> bs!459842 m!2761279))

(assert (=> b!2331742 d!690054))

(declare-fun b!2331999 () Bool)

(declare-fun e!1493855 () Bool)

(declare-fun call!139304 () Bool)

(assert (=> b!2331999 (= e!1493855 call!139304)))

(declare-fun b!2332000 () Bool)

(declare-fun res!995402 () Bool)

(declare-fun e!1493851 () Bool)

(assert (=> b!2332000 (=> res!995402 e!1493851)))

(assert (=> b!2332000 (= res!995402 (not ((_ is Concat!11459) (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197))))))))

(declare-fun e!1493853 () Bool)

(assert (=> b!2332000 (= e!1493853 e!1493851)))

(declare-fun b!2332001 () Bool)

(declare-fun e!1493856 () Bool)

(assert (=> b!2332001 (= e!1493856 call!139304)))

(declare-fun bm!139298 () Bool)

(declare-fun call!139305 () Bool)

(declare-fun call!139303 () Bool)

(assert (=> bm!139298 (= call!139305 call!139303)))

(declare-fun d!690056 () Bool)

(declare-fun res!995405 () Bool)

(declare-fun e!1493852 () Bool)

(assert (=> d!690056 (=> res!995405 e!1493852)))

(assert (=> d!690056 (= res!995405 ((_ is ElementMatch!6837) (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))))))

(assert (=> d!690056 (= (validRegex!2582 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))) e!1493852)))

(declare-fun b!2332002 () Bool)

(assert (=> b!2332002 (= e!1493851 e!1493856)))

(declare-fun res!995403 () Bool)

(assert (=> b!2332002 (=> (not res!995403) (not e!1493856))))

(assert (=> b!2332002 (= res!995403 call!139305)))

(declare-fun c!370535 () Bool)

(declare-fun bm!139299 () Bool)

(assert (=> bm!139299 (= call!139304 (validRegex!2582 (ite c!370535 (regTwo!14187 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))) (regTwo!14186 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))))))))

(declare-fun bm!139300 () Bool)

(declare-fun c!370536 () Bool)

(assert (=> bm!139300 (= call!139303 (validRegex!2582 (ite c!370536 (reg!7166 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))) (ite c!370535 (regOne!14187 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))) (regOne!14186 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197))))))))))

(declare-fun b!2332003 () Bool)

(declare-fun res!995406 () Bool)

(assert (=> b!2332003 (=> (not res!995406) (not e!1493855))))

(assert (=> b!2332003 (= res!995406 call!139305)))

(assert (=> b!2332003 (= e!1493853 e!1493855)))

(declare-fun b!2332004 () Bool)

(declare-fun e!1493854 () Bool)

(declare-fun e!1493850 () Bool)

(assert (=> b!2332004 (= e!1493854 e!1493850)))

(declare-fun res!995404 () Bool)

(assert (=> b!2332004 (= res!995404 (not (nullable!1916 (reg!7166 (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))))))))

(assert (=> b!2332004 (=> (not res!995404) (not e!1493850))))

(declare-fun b!2332005 () Bool)

(assert (=> b!2332005 (= e!1493850 call!139303)))

(declare-fun b!2332006 () Bool)

(assert (=> b!2332006 (= e!1493854 e!1493853)))

(assert (=> b!2332006 (= c!370535 ((_ is Union!6837) (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))))))

(declare-fun b!2332007 () Bool)

(assert (=> b!2332007 (= e!1493852 e!1493854)))

(assert (=> b!2332007 (= c!370536 ((_ is Star!6837) (ite c!370460 (reg!7166 r!26197) (ite c!370459 (regOne!14187 r!26197) (regOne!14186 r!26197)))))))

(assert (= (and d!690056 (not res!995405)) b!2332007))

(assert (= (and b!2332007 c!370536) b!2332004))

(assert (= (and b!2332007 (not c!370536)) b!2332006))

(assert (= (and b!2332004 res!995404) b!2332005))

(assert (= (and b!2332006 c!370535) b!2332003))

(assert (= (and b!2332006 (not c!370535)) b!2332000))

(assert (= (and b!2332003 res!995406) b!2331999))

(assert (= (and b!2332000 (not res!995402)) b!2332002))

(assert (= (and b!2332002 res!995403) b!2332001))

(assert (= (or b!2331999 b!2332001) bm!139299))

(assert (= (or b!2332003 b!2332002) bm!139298))

(assert (= (or b!2332005 bm!139298) bm!139300))

(declare-fun m!2761281 () Bool)

(assert (=> bm!139299 m!2761281))

(declare-fun m!2761283 () Bool)

(assert (=> bm!139300 m!2761283))

(declare-fun m!2761285 () Bool)

(assert (=> b!2332004 m!2761285))

(assert (=> bm!139225 d!690056))

(declare-fun b!2332008 () Bool)

(declare-fun e!1493858 () Bool)

(declare-fun e!1493860 () Bool)

(assert (=> b!2332008 (= e!1493858 e!1493860)))

(declare-fun res!995408 () Bool)

(assert (=> b!2332008 (=> (not res!995408) (not e!1493860))))

(assert (=> b!2332008 (= res!995408 (and (not ((_ is EmptyLang!6837) (regTwo!14187 r!26197))) (not ((_ is ElementMatch!6837) (regTwo!14187 r!26197)))))))

(declare-fun b!2332009 () Bool)

(declare-fun e!1493857 () Bool)

(declare-fun e!1493862 () Bool)

(assert (=> b!2332009 (= e!1493857 e!1493862)))

(declare-fun res!995411 () Bool)

(declare-fun call!139306 () Bool)

(assert (=> b!2332009 (= res!995411 call!139306)))

(assert (=> b!2332009 (=> (not res!995411) (not e!1493862))))

(declare-fun b!2332010 () Bool)

(declare-fun e!1493859 () Bool)

(assert (=> b!2332010 (= e!1493860 e!1493859)))

(declare-fun res!995410 () Bool)

(assert (=> b!2332010 (=> res!995410 e!1493859)))

(assert (=> b!2332010 (= res!995410 ((_ is Star!6837) (regTwo!14187 r!26197)))))

(declare-fun bm!139301 () Bool)

(declare-fun c!370537 () Bool)

(assert (=> bm!139301 (= call!139306 (nullable!1916 (ite c!370537 (regOne!14187 (regTwo!14187 r!26197)) (regOne!14186 (regTwo!14187 r!26197)))))))

(declare-fun b!2332011 () Bool)

(declare-fun e!1493861 () Bool)

(declare-fun call!139307 () Bool)

(assert (=> b!2332011 (= e!1493861 call!139307)))

(declare-fun bm!139302 () Bool)

(assert (=> bm!139302 (= call!139307 (nullable!1916 (ite c!370537 (regTwo!14187 (regTwo!14187 r!26197)) (regTwo!14186 (regTwo!14187 r!26197)))))))

(declare-fun b!2332013 () Bool)

(assert (=> b!2332013 (= e!1493857 e!1493861)))

(declare-fun res!995407 () Bool)

(assert (=> b!2332013 (= res!995407 call!139306)))

(assert (=> b!2332013 (=> res!995407 e!1493861)))

(declare-fun b!2332014 () Bool)

(assert (=> b!2332014 (= e!1493862 call!139307)))

(declare-fun d!690058 () Bool)

(declare-fun res!995409 () Bool)

(assert (=> d!690058 (=> res!995409 e!1493858)))

(assert (=> d!690058 (= res!995409 ((_ is EmptyExpr!6837) (regTwo!14187 r!26197)))))

(assert (=> d!690058 (= (nullableFct!474 (regTwo!14187 r!26197)) e!1493858)))

(declare-fun b!2332012 () Bool)

(assert (=> b!2332012 (= e!1493859 e!1493857)))

(assert (=> b!2332012 (= c!370537 ((_ is Union!6837) (regTwo!14187 r!26197)))))

(assert (= (and d!690058 (not res!995409)) b!2332008))

(assert (= (and b!2332008 res!995408) b!2332010))

(assert (= (and b!2332010 (not res!995410)) b!2332012))

(assert (= (and b!2332012 c!370537) b!2332013))

(assert (= (and b!2332012 (not c!370537)) b!2332009))

(assert (= (and b!2332013 (not res!995407)) b!2332011))

(assert (= (and b!2332009 res!995411) b!2332014))

(assert (= (or b!2332013 b!2332009) bm!139301))

(assert (= (or b!2332011 b!2332014) bm!139302))

(declare-fun m!2761287 () Bool)

(assert (=> bm!139301 m!2761287))

(declare-fun m!2761289 () Bool)

(assert (=> bm!139302 m!2761289))

(assert (=> d!690000 d!690058))

(declare-fun b!2332015 () Bool)

(declare-fun e!1493864 () Bool)

(declare-fun e!1493866 () Bool)

(assert (=> b!2332015 (= e!1493864 e!1493866)))

(declare-fun res!995413 () Bool)

(assert (=> b!2332015 (=> (not res!995413) (not e!1493866))))

(assert (=> b!2332015 (= res!995413 (and (not ((_ is EmptyLang!6837) (derivativeStep!1576 r!26197 c!13498))) (not ((_ is ElementMatch!6837) (derivativeStep!1576 r!26197 c!13498)))))))

(declare-fun b!2332016 () Bool)

(declare-fun e!1493863 () Bool)

(declare-fun e!1493868 () Bool)

(assert (=> b!2332016 (= e!1493863 e!1493868)))

(declare-fun res!995416 () Bool)

(declare-fun call!139308 () Bool)

(assert (=> b!2332016 (= res!995416 call!139308)))

(assert (=> b!2332016 (=> (not res!995416) (not e!1493868))))

(declare-fun b!2332017 () Bool)

(declare-fun e!1493865 () Bool)

(assert (=> b!2332017 (= e!1493866 e!1493865)))

(declare-fun res!995415 () Bool)

(assert (=> b!2332017 (=> res!995415 e!1493865)))

(assert (=> b!2332017 (= res!995415 ((_ is Star!6837) (derivativeStep!1576 r!26197 c!13498)))))

(declare-fun c!370538 () Bool)

(declare-fun bm!139303 () Bool)

(assert (=> bm!139303 (= call!139308 (nullable!1916 (ite c!370538 (regOne!14187 (derivativeStep!1576 r!26197 c!13498)) (regOne!14186 (derivativeStep!1576 r!26197 c!13498)))))))

(declare-fun b!2332018 () Bool)

(declare-fun e!1493867 () Bool)

(declare-fun call!139309 () Bool)

(assert (=> b!2332018 (= e!1493867 call!139309)))

(declare-fun bm!139304 () Bool)

(assert (=> bm!139304 (= call!139309 (nullable!1916 (ite c!370538 (regTwo!14187 (derivativeStep!1576 r!26197 c!13498)) (regTwo!14186 (derivativeStep!1576 r!26197 c!13498)))))))

(declare-fun b!2332020 () Bool)

(assert (=> b!2332020 (= e!1493863 e!1493867)))

(declare-fun res!995412 () Bool)

(assert (=> b!2332020 (= res!995412 call!139308)))

(assert (=> b!2332020 (=> res!995412 e!1493867)))

(declare-fun b!2332021 () Bool)

(assert (=> b!2332021 (= e!1493868 call!139309)))

(declare-fun d!690060 () Bool)

(declare-fun res!995414 () Bool)

(assert (=> d!690060 (=> res!995414 e!1493864)))

(assert (=> d!690060 (= res!995414 ((_ is EmptyExpr!6837) (derivativeStep!1576 r!26197 c!13498)))))

(assert (=> d!690060 (= (nullableFct!474 (derivativeStep!1576 r!26197 c!13498)) e!1493864)))

(declare-fun b!2332019 () Bool)

(assert (=> b!2332019 (= e!1493865 e!1493863)))

(assert (=> b!2332019 (= c!370538 ((_ is Union!6837) (derivativeStep!1576 r!26197 c!13498)))))

(assert (= (and d!690060 (not res!995414)) b!2332015))

(assert (= (and b!2332015 res!995413) b!2332017))

(assert (= (and b!2332017 (not res!995415)) b!2332019))

(assert (= (and b!2332019 c!370538) b!2332020))

(assert (= (and b!2332019 (not c!370538)) b!2332016))

(assert (= (and b!2332020 (not res!995412)) b!2332018))

(assert (= (and b!2332016 res!995416) b!2332021))

(assert (= (or b!2332020 b!2332016) bm!139303))

(assert (= (or b!2332018 b!2332021) bm!139304))

(declare-fun m!2761291 () Bool)

(assert (=> bm!139303 m!2761291))

(declare-fun m!2761293 () Bool)

(assert (=> bm!139304 m!2761293))

(assert (=> d!690004 d!690060))

(declare-fun b!2332022 () Bool)

(declare-fun e!1493874 () Bool)

(declare-fun call!139311 () Bool)

(assert (=> b!2332022 (= e!1493874 call!139311)))

(declare-fun b!2332023 () Bool)

(declare-fun res!995417 () Bool)

(declare-fun e!1493870 () Bool)

(assert (=> b!2332023 (=> res!995417 e!1493870)))

(assert (=> b!2332023 (= res!995417 (not ((_ is Concat!11459) lt!862311)))))

(declare-fun e!1493872 () Bool)

(assert (=> b!2332023 (= e!1493872 e!1493870)))

(declare-fun b!2332024 () Bool)

(declare-fun e!1493875 () Bool)

(assert (=> b!2332024 (= e!1493875 call!139311)))

(declare-fun bm!139305 () Bool)

(declare-fun call!139312 () Bool)

(declare-fun call!139310 () Bool)

(assert (=> bm!139305 (= call!139312 call!139310)))

(declare-fun d!690062 () Bool)

(declare-fun res!995420 () Bool)

(declare-fun e!1493871 () Bool)

(assert (=> d!690062 (=> res!995420 e!1493871)))

(assert (=> d!690062 (= res!995420 ((_ is ElementMatch!6837) lt!862311))))

(assert (=> d!690062 (= (validRegex!2582 lt!862311) e!1493871)))

(declare-fun b!2332025 () Bool)

(assert (=> b!2332025 (= e!1493870 e!1493875)))

(declare-fun res!995418 () Bool)

(assert (=> b!2332025 (=> (not res!995418) (not e!1493875))))

(assert (=> b!2332025 (= res!995418 call!139312)))

(declare-fun bm!139306 () Bool)

(declare-fun c!370539 () Bool)

(assert (=> bm!139306 (= call!139311 (validRegex!2582 (ite c!370539 (regTwo!14187 lt!862311) (regTwo!14186 lt!862311))))))

(declare-fun c!370540 () Bool)

(declare-fun bm!139307 () Bool)

(assert (=> bm!139307 (= call!139310 (validRegex!2582 (ite c!370540 (reg!7166 lt!862311) (ite c!370539 (regOne!14187 lt!862311) (regOne!14186 lt!862311)))))))

(declare-fun b!2332026 () Bool)

(declare-fun res!995421 () Bool)

(assert (=> b!2332026 (=> (not res!995421) (not e!1493874))))

(assert (=> b!2332026 (= res!995421 call!139312)))

(assert (=> b!2332026 (= e!1493872 e!1493874)))

(declare-fun b!2332027 () Bool)

(declare-fun e!1493873 () Bool)

(declare-fun e!1493869 () Bool)

(assert (=> b!2332027 (= e!1493873 e!1493869)))

(declare-fun res!995419 () Bool)

(assert (=> b!2332027 (= res!995419 (not (nullable!1916 (reg!7166 lt!862311))))))

(assert (=> b!2332027 (=> (not res!995419) (not e!1493869))))

(declare-fun b!2332028 () Bool)

(assert (=> b!2332028 (= e!1493869 call!139310)))

(declare-fun b!2332029 () Bool)

(assert (=> b!2332029 (= e!1493873 e!1493872)))

(assert (=> b!2332029 (= c!370539 ((_ is Union!6837) lt!862311))))

(declare-fun b!2332030 () Bool)

(assert (=> b!2332030 (= e!1493871 e!1493873)))

(assert (=> b!2332030 (= c!370540 ((_ is Star!6837) lt!862311))))

(assert (= (and d!690062 (not res!995420)) b!2332030))

(assert (= (and b!2332030 c!370540) b!2332027))

(assert (= (and b!2332030 (not c!370540)) b!2332029))

(assert (= (and b!2332027 res!995419) b!2332028))

(assert (= (and b!2332029 c!370539) b!2332026))

(assert (= (and b!2332029 (not c!370539)) b!2332023))

(assert (= (and b!2332026 res!995421) b!2332022))

(assert (= (and b!2332023 (not res!995417)) b!2332025))

(assert (= (and b!2332025 res!995418) b!2332024))

(assert (= (or b!2332022 b!2332024) bm!139306))

(assert (= (or b!2332026 b!2332025) bm!139305))

(assert (= (or b!2332028 bm!139305) bm!139307))

(declare-fun m!2761295 () Bool)

(assert (=> bm!139306 m!2761295))

(declare-fun m!2761297 () Bool)

(assert (=> bm!139307 m!2761297))

(declare-fun m!2761299 () Bool)

(assert (=> b!2332027 m!2761299))

(assert (=> d!689998 d!690062))

(declare-fun b!2332031 () Bool)

(declare-fun e!1493881 () Bool)

(declare-fun call!139314 () Bool)

(assert (=> b!2332031 (= e!1493881 call!139314)))

(declare-fun b!2332032 () Bool)

(declare-fun res!995422 () Bool)

(declare-fun e!1493877 () Bool)

(assert (=> b!2332032 (=> res!995422 e!1493877)))

(assert (=> b!2332032 (= res!995422 (not ((_ is Concat!11459) (regOne!14187 r!26197))))))

(declare-fun e!1493879 () Bool)

(assert (=> b!2332032 (= e!1493879 e!1493877)))

(declare-fun b!2332033 () Bool)

(declare-fun e!1493882 () Bool)

(assert (=> b!2332033 (= e!1493882 call!139314)))

(declare-fun bm!139308 () Bool)

(declare-fun call!139315 () Bool)

(declare-fun call!139313 () Bool)

(assert (=> bm!139308 (= call!139315 call!139313)))

(declare-fun d!690064 () Bool)

(declare-fun res!995425 () Bool)

(declare-fun e!1493878 () Bool)

(assert (=> d!690064 (=> res!995425 e!1493878)))

(assert (=> d!690064 (= res!995425 ((_ is ElementMatch!6837) (regOne!14187 r!26197)))))

(assert (=> d!690064 (= (validRegex!2582 (regOne!14187 r!26197)) e!1493878)))

(declare-fun b!2332034 () Bool)

(assert (=> b!2332034 (= e!1493877 e!1493882)))

(declare-fun res!995423 () Bool)

(assert (=> b!2332034 (=> (not res!995423) (not e!1493882))))

(assert (=> b!2332034 (= res!995423 call!139315)))

(declare-fun bm!139309 () Bool)

(declare-fun c!370541 () Bool)

(assert (=> bm!139309 (= call!139314 (validRegex!2582 (ite c!370541 (regTwo!14187 (regOne!14187 r!26197)) (regTwo!14186 (regOne!14187 r!26197)))))))

(declare-fun c!370542 () Bool)

(declare-fun bm!139310 () Bool)

(assert (=> bm!139310 (= call!139313 (validRegex!2582 (ite c!370542 (reg!7166 (regOne!14187 r!26197)) (ite c!370541 (regOne!14187 (regOne!14187 r!26197)) (regOne!14186 (regOne!14187 r!26197))))))))

(declare-fun b!2332035 () Bool)

(declare-fun res!995426 () Bool)

(assert (=> b!2332035 (=> (not res!995426) (not e!1493881))))

(assert (=> b!2332035 (= res!995426 call!139315)))

(assert (=> b!2332035 (= e!1493879 e!1493881)))

(declare-fun b!2332036 () Bool)

(declare-fun e!1493880 () Bool)

(declare-fun e!1493876 () Bool)

(assert (=> b!2332036 (= e!1493880 e!1493876)))

(declare-fun res!995424 () Bool)

(assert (=> b!2332036 (= res!995424 (not (nullable!1916 (reg!7166 (regOne!14187 r!26197)))))))

(assert (=> b!2332036 (=> (not res!995424) (not e!1493876))))

(declare-fun b!2332037 () Bool)

(assert (=> b!2332037 (= e!1493876 call!139313)))

(declare-fun b!2332038 () Bool)

(assert (=> b!2332038 (= e!1493880 e!1493879)))

(assert (=> b!2332038 (= c!370541 ((_ is Union!6837) (regOne!14187 r!26197)))))

(declare-fun b!2332039 () Bool)

(assert (=> b!2332039 (= e!1493878 e!1493880)))

(assert (=> b!2332039 (= c!370542 ((_ is Star!6837) (regOne!14187 r!26197)))))

(assert (= (and d!690064 (not res!995425)) b!2332039))

(assert (= (and b!2332039 c!370542) b!2332036))

(assert (= (and b!2332039 (not c!370542)) b!2332038))

(assert (= (and b!2332036 res!995424) b!2332037))

(assert (= (and b!2332038 c!370541) b!2332035))

(assert (= (and b!2332038 (not c!370541)) b!2332032))

(assert (= (and b!2332035 res!995426) b!2332031))

(assert (= (and b!2332032 (not res!995422)) b!2332034))

(assert (= (and b!2332034 res!995423) b!2332033))

(assert (= (or b!2332031 b!2332033) bm!139309))

(assert (= (or b!2332035 b!2332034) bm!139308))

(assert (= (or b!2332037 bm!139308) bm!139310))

(declare-fun m!2761301 () Bool)

(assert (=> bm!139309 m!2761301))

(declare-fun m!2761303 () Bool)

(assert (=> bm!139310 m!2761303))

(declare-fun m!2761305 () Bool)

(assert (=> b!2332036 m!2761305))

(assert (=> d!689998 d!690064))

(declare-fun bm!139311 () Bool)

(declare-fun call!139317 () Regex!6837)

(declare-fun call!139318 () Regex!6837)

(assert (=> bm!139311 (= call!139317 call!139318)))

(declare-fun bm!139312 () Bool)

(declare-fun call!139316 () Regex!6837)

(assert (=> bm!139312 (= call!139316 call!139317)))

(declare-fun c!370543 () Bool)

(declare-fun bm!139313 () Bool)

(declare-fun c!370544 () Bool)

(assert (=> bm!139313 (= call!139318 (derivativeStep!1576 (ite c!370543 (regTwo!14187 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))) (ite c!370544 (reg!7166 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))) (regOne!14186 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))))) c!13498))))

(declare-fun b!2332040 () Bool)

(declare-fun e!1493885 () Regex!6837)

(assert (=> b!2332040 (= e!1493885 EmptyLang!6837)))

(declare-fun b!2332041 () Bool)

(declare-fun c!370545 () Bool)

(assert (=> b!2332041 (= c!370545 (nullable!1916 (regOne!14186 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))))))))

(declare-fun e!1493884 () Regex!6837)

(declare-fun e!1493886 () Regex!6837)

(assert (=> b!2332041 (= e!1493884 e!1493886)))

(declare-fun b!2332042 () Bool)

(assert (=> b!2332042 (= e!1493884 (Concat!11459 call!139317 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))))))

(declare-fun d!690066 () Bool)

(declare-fun lt!862323 () Regex!6837)

(assert (=> d!690066 (validRegex!2582 lt!862323)))

(assert (=> d!690066 (= lt!862323 e!1493885)))

(declare-fun c!370546 () Bool)

(assert (=> d!690066 (= c!370546 (or ((_ is EmptyExpr!6837) (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))) ((_ is EmptyLang!6837) (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))))))))

(assert (=> d!690066 (validRegex!2582 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))))))

(assert (=> d!690066 (= (derivativeStep!1576 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))) c!13498) lt!862323)))

(declare-fun b!2332043 () Bool)

(assert (=> b!2332043 (= e!1493886 (Union!6837 (Concat!11459 call!139316 (regTwo!14186 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))))) EmptyLang!6837))))

(declare-fun b!2332044 () Bool)

(declare-fun e!1493883 () Regex!6837)

(assert (=> b!2332044 (= e!1493883 e!1493884)))

(assert (=> b!2332044 (= c!370544 ((_ is Star!6837) (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))))))

(declare-fun bm!139314 () Bool)

(declare-fun call!139319 () Regex!6837)

(assert (=> bm!139314 (= call!139319 (derivativeStep!1576 (ite c!370543 (regOne!14187 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))) (regTwo!14186 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))))) c!13498))))

(declare-fun b!2332045 () Bool)

(assert (=> b!2332045 (= c!370543 ((_ is Union!6837) (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))))))

(declare-fun e!1493887 () Regex!6837)

(assert (=> b!2332045 (= e!1493887 e!1493883)))

(declare-fun b!2332046 () Bool)

(assert (=> b!2332046 (= e!1493887 (ite (= c!13498 (c!370433 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))))) EmptyExpr!6837 EmptyLang!6837))))

(declare-fun b!2332047 () Bool)

(assert (=> b!2332047 (= e!1493886 (Union!6837 (Concat!11459 call!139316 (regTwo!14186 (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197))))) call!139319))))

(declare-fun b!2332048 () Bool)

(assert (=> b!2332048 (= e!1493885 e!1493887)))

(declare-fun c!370547 () Bool)

(assert (=> b!2332048 (= c!370547 ((_ is ElementMatch!6837) (ite c!370466 (regTwo!14187 r!26197) (ite c!370467 (reg!7166 r!26197) (regOne!14186 r!26197)))))))

(declare-fun b!2332049 () Bool)

(assert (=> b!2332049 (= e!1493883 (Union!6837 call!139319 call!139318))))

(assert (= (and d!690066 c!370546) b!2332040))

(assert (= (and d!690066 (not c!370546)) b!2332048))

(assert (= (and b!2332048 c!370547) b!2332046))

(assert (= (and b!2332048 (not c!370547)) b!2332045))

(assert (= (and b!2332045 c!370543) b!2332049))

(assert (= (and b!2332045 (not c!370543)) b!2332044))

(assert (= (and b!2332044 c!370544) b!2332042))

(assert (= (and b!2332044 (not c!370544)) b!2332041))

(assert (= (and b!2332041 c!370545) b!2332047))

(assert (= (and b!2332041 (not c!370545)) b!2332043))

(assert (= (or b!2332047 b!2332043) bm!139312))

(assert (= (or b!2332042 bm!139312) bm!139311))

(assert (= (or b!2332049 bm!139311) bm!139313))

(assert (= (or b!2332049 b!2332047) bm!139314))

(declare-fun m!2761307 () Bool)

(assert (=> bm!139313 m!2761307))

(declare-fun m!2761309 () Bool)

(assert (=> b!2332041 m!2761309))

(declare-fun m!2761311 () Bool)

(assert (=> d!690066 m!2761311))

(declare-fun m!2761313 () Bool)

(assert (=> d!690066 m!2761313))

(declare-fun m!2761315 () Bool)

(assert (=> bm!139314 m!2761315))

(assert (=> bm!139232 d!690066))

(declare-fun b!2332050 () Bool)

(declare-fun e!1493888 () Bool)

(assert (=> b!2332050 (= e!1493888 tp_is_empty!10985)))

(assert (=> b!2331798 (= tp!738949 e!1493888)))

(declare-fun b!2332051 () Bool)

(declare-fun tp!739002 () Bool)

(declare-fun tp!739006 () Bool)

(assert (=> b!2332051 (= e!1493888 (and tp!739002 tp!739006))))

(declare-fun b!2332052 () Bool)

(declare-fun tp!739005 () Bool)

(assert (=> b!2332052 (= e!1493888 tp!739005)))

(declare-fun b!2332053 () Bool)

(declare-fun tp!739004 () Bool)

(declare-fun tp!739003 () Bool)

(assert (=> b!2332053 (= e!1493888 (and tp!739004 tp!739003))))

(assert (= (and b!2331798 ((_ is ElementMatch!6837) (regOne!14187 (regTwo!14186 r!26197)))) b!2332050))

(assert (= (and b!2331798 ((_ is Concat!11459) (regOne!14187 (regTwo!14186 r!26197)))) b!2332051))

(assert (= (and b!2331798 ((_ is Star!6837) (regOne!14187 (regTwo!14186 r!26197)))) b!2332052))

(assert (= (and b!2331798 ((_ is Union!6837) (regOne!14187 (regTwo!14186 r!26197)))) b!2332053))

(declare-fun b!2332054 () Bool)

(declare-fun e!1493889 () Bool)

(assert (=> b!2332054 (= e!1493889 tp_is_empty!10985)))

(assert (=> b!2331798 (= tp!738948 e!1493889)))

(declare-fun b!2332055 () Bool)

(declare-fun tp!739007 () Bool)

(declare-fun tp!739011 () Bool)

(assert (=> b!2332055 (= e!1493889 (and tp!739007 tp!739011))))

(declare-fun b!2332056 () Bool)

(declare-fun tp!739010 () Bool)

(assert (=> b!2332056 (= e!1493889 tp!739010)))

(declare-fun b!2332057 () Bool)

(declare-fun tp!739009 () Bool)

(declare-fun tp!739008 () Bool)

(assert (=> b!2332057 (= e!1493889 (and tp!739009 tp!739008))))

(assert (= (and b!2331798 ((_ is ElementMatch!6837) (regTwo!14187 (regTwo!14186 r!26197)))) b!2332054))

(assert (= (and b!2331798 ((_ is Concat!11459) (regTwo!14187 (regTwo!14186 r!26197)))) b!2332055))

(assert (= (and b!2331798 ((_ is Star!6837) (regTwo!14187 (regTwo!14186 r!26197)))) b!2332056))

(assert (= (and b!2331798 ((_ is Union!6837) (regTwo!14187 (regTwo!14186 r!26197)))) b!2332057))

(declare-fun b!2332058 () Bool)

(declare-fun e!1493890 () Bool)

(assert (=> b!2332058 (= e!1493890 tp_is_empty!10985)))

(assert (=> b!2331793 (= tp!738945 e!1493890)))

(declare-fun b!2332059 () Bool)

(declare-fun tp!739012 () Bool)

(declare-fun tp!739016 () Bool)

(assert (=> b!2332059 (= e!1493890 (and tp!739012 tp!739016))))

(declare-fun b!2332060 () Bool)

(declare-fun tp!739015 () Bool)

(assert (=> b!2332060 (= e!1493890 tp!739015)))

(declare-fun b!2332061 () Bool)

(declare-fun tp!739014 () Bool)

(declare-fun tp!739013 () Bool)

(assert (=> b!2332061 (= e!1493890 (and tp!739014 tp!739013))))

(assert (= (and b!2331793 ((_ is ElementMatch!6837) (reg!7166 (regOne!14186 r!26197)))) b!2332058))

(assert (= (and b!2331793 ((_ is Concat!11459) (reg!7166 (regOne!14186 r!26197)))) b!2332059))

(assert (= (and b!2331793 ((_ is Star!6837) (reg!7166 (regOne!14186 r!26197)))) b!2332060))

(assert (= (and b!2331793 ((_ is Union!6837) (reg!7166 (regOne!14186 r!26197)))) b!2332061))

(declare-fun b!2332062 () Bool)

(declare-fun e!1493891 () Bool)

(assert (=> b!2332062 (= e!1493891 tp_is_empty!10985)))

(assert (=> b!2331802 (= tp!738954 e!1493891)))

(declare-fun b!2332063 () Bool)

(declare-fun tp!739017 () Bool)

(declare-fun tp!739021 () Bool)

(assert (=> b!2332063 (= e!1493891 (and tp!739017 tp!739021))))

(declare-fun b!2332064 () Bool)

(declare-fun tp!739020 () Bool)

(assert (=> b!2332064 (= e!1493891 tp!739020)))

(declare-fun b!2332065 () Bool)

(declare-fun tp!739019 () Bool)

(declare-fun tp!739018 () Bool)

(assert (=> b!2332065 (= e!1493891 (and tp!739019 tp!739018))))

(assert (= (and b!2331802 ((_ is ElementMatch!6837) (regOne!14187 (regOne!14187 r!26197)))) b!2332062))

(assert (= (and b!2331802 ((_ is Concat!11459) (regOne!14187 (regOne!14187 r!26197)))) b!2332063))

(assert (= (and b!2331802 ((_ is Star!6837) (regOne!14187 (regOne!14187 r!26197)))) b!2332064))

(assert (= (and b!2331802 ((_ is Union!6837) (regOne!14187 (regOne!14187 r!26197)))) b!2332065))

(declare-fun b!2332066 () Bool)

(declare-fun e!1493892 () Bool)

(assert (=> b!2332066 (= e!1493892 tp_is_empty!10985)))

(assert (=> b!2331802 (= tp!738953 e!1493892)))

(declare-fun b!2332067 () Bool)

(declare-fun tp!739022 () Bool)

(declare-fun tp!739026 () Bool)

(assert (=> b!2332067 (= e!1493892 (and tp!739022 tp!739026))))

(declare-fun b!2332068 () Bool)

(declare-fun tp!739025 () Bool)

(assert (=> b!2332068 (= e!1493892 tp!739025)))

(declare-fun b!2332069 () Bool)

(declare-fun tp!739024 () Bool)

(declare-fun tp!739023 () Bool)

(assert (=> b!2332069 (= e!1493892 (and tp!739024 tp!739023))))

(assert (= (and b!2331802 ((_ is ElementMatch!6837) (regTwo!14187 (regOne!14187 r!26197)))) b!2332066))

(assert (= (and b!2331802 ((_ is Concat!11459) (regTwo!14187 (regOne!14187 r!26197)))) b!2332067))

(assert (= (and b!2331802 ((_ is Star!6837) (regTwo!14187 (regOne!14187 r!26197)))) b!2332068))

(assert (= (and b!2331802 ((_ is Union!6837) (regTwo!14187 (regOne!14187 r!26197)))) b!2332069))

(declare-fun b!2332070 () Bool)

(declare-fun e!1493893 () Bool)

(assert (=> b!2332070 (= e!1493893 tp_is_empty!10985)))

(assert (=> b!2331805 (= tp!738960 e!1493893)))

(declare-fun b!2332071 () Bool)

(declare-fun tp!739027 () Bool)

(declare-fun tp!739031 () Bool)

(assert (=> b!2332071 (= e!1493893 (and tp!739027 tp!739031))))

(declare-fun b!2332072 () Bool)

(declare-fun tp!739030 () Bool)

(assert (=> b!2332072 (= e!1493893 tp!739030)))

(declare-fun b!2332073 () Bool)

(declare-fun tp!739029 () Bool)

(declare-fun tp!739028 () Bool)

(assert (=> b!2332073 (= e!1493893 (and tp!739029 tp!739028))))

(assert (= (and b!2331805 ((_ is ElementMatch!6837) (reg!7166 (regTwo!14187 r!26197)))) b!2332070))

(assert (= (and b!2331805 ((_ is Concat!11459) (reg!7166 (regTwo!14187 r!26197)))) b!2332071))

(assert (= (and b!2331805 ((_ is Star!6837) (reg!7166 (regTwo!14187 r!26197)))) b!2332072))

(assert (= (and b!2331805 ((_ is Union!6837) (reg!7166 (regTwo!14187 r!26197)))) b!2332073))

(declare-fun b!2332074 () Bool)

(declare-fun e!1493894 () Bool)

(assert (=> b!2332074 (= e!1493894 tp_is_empty!10985)))

(assert (=> b!2331794 (= tp!738944 e!1493894)))

(declare-fun b!2332075 () Bool)

(declare-fun tp!739032 () Bool)

(declare-fun tp!739036 () Bool)

(assert (=> b!2332075 (= e!1493894 (and tp!739032 tp!739036))))

(declare-fun b!2332076 () Bool)

(declare-fun tp!739035 () Bool)

(assert (=> b!2332076 (= e!1493894 tp!739035)))

(declare-fun b!2332077 () Bool)

(declare-fun tp!739034 () Bool)

(declare-fun tp!739033 () Bool)

(assert (=> b!2332077 (= e!1493894 (and tp!739034 tp!739033))))

(assert (= (and b!2331794 ((_ is ElementMatch!6837) (regOne!14187 (regOne!14186 r!26197)))) b!2332074))

(assert (= (and b!2331794 ((_ is Concat!11459) (regOne!14187 (regOne!14186 r!26197)))) b!2332075))

(assert (= (and b!2331794 ((_ is Star!6837) (regOne!14187 (regOne!14186 r!26197)))) b!2332076))

(assert (= (and b!2331794 ((_ is Union!6837) (regOne!14187 (regOne!14186 r!26197)))) b!2332077))

(declare-fun b!2332078 () Bool)

(declare-fun e!1493895 () Bool)

(assert (=> b!2332078 (= e!1493895 tp_is_empty!10985)))

(assert (=> b!2331794 (= tp!738943 e!1493895)))

(declare-fun b!2332079 () Bool)

(declare-fun tp!739037 () Bool)

(declare-fun tp!739041 () Bool)

(assert (=> b!2332079 (= e!1493895 (and tp!739037 tp!739041))))

(declare-fun b!2332080 () Bool)

(declare-fun tp!739040 () Bool)

(assert (=> b!2332080 (= e!1493895 tp!739040)))

(declare-fun b!2332081 () Bool)

(declare-fun tp!739039 () Bool)

(declare-fun tp!739038 () Bool)

(assert (=> b!2332081 (= e!1493895 (and tp!739039 tp!739038))))

(assert (= (and b!2331794 ((_ is ElementMatch!6837) (regTwo!14187 (regOne!14186 r!26197)))) b!2332078))

(assert (= (and b!2331794 ((_ is Concat!11459) (regTwo!14187 (regOne!14186 r!26197)))) b!2332079))

(assert (= (and b!2331794 ((_ is Star!6837) (regTwo!14187 (regOne!14186 r!26197)))) b!2332080))

(assert (= (and b!2331794 ((_ is Union!6837) (regTwo!14187 (regOne!14186 r!26197)))) b!2332081))

(declare-fun b!2332082 () Bool)

(declare-fun e!1493896 () Bool)

(assert (=> b!2332082 (= e!1493896 tp_is_empty!10985)))

(assert (=> b!2331804 (= tp!738957 e!1493896)))

(declare-fun b!2332083 () Bool)

(declare-fun tp!739042 () Bool)

(declare-fun tp!739046 () Bool)

(assert (=> b!2332083 (= e!1493896 (and tp!739042 tp!739046))))

(declare-fun b!2332084 () Bool)

(declare-fun tp!739045 () Bool)

(assert (=> b!2332084 (= e!1493896 tp!739045)))

(declare-fun b!2332085 () Bool)

(declare-fun tp!739044 () Bool)

(declare-fun tp!739043 () Bool)

(assert (=> b!2332085 (= e!1493896 (and tp!739044 tp!739043))))

(assert (= (and b!2331804 ((_ is ElementMatch!6837) (regOne!14186 (regTwo!14187 r!26197)))) b!2332082))

(assert (= (and b!2331804 ((_ is Concat!11459) (regOne!14186 (regTwo!14187 r!26197)))) b!2332083))

(assert (= (and b!2331804 ((_ is Star!6837) (regOne!14186 (regTwo!14187 r!26197)))) b!2332084))

(assert (= (and b!2331804 ((_ is Union!6837) (regOne!14186 (regTwo!14187 r!26197)))) b!2332085))

(declare-fun b!2332086 () Bool)

(declare-fun e!1493897 () Bool)

(assert (=> b!2332086 (= e!1493897 tp_is_empty!10985)))

(assert (=> b!2331804 (= tp!738961 e!1493897)))

(declare-fun b!2332087 () Bool)

(declare-fun tp!739047 () Bool)

(declare-fun tp!739051 () Bool)

(assert (=> b!2332087 (= e!1493897 (and tp!739047 tp!739051))))

(declare-fun b!2332088 () Bool)

(declare-fun tp!739050 () Bool)

(assert (=> b!2332088 (= e!1493897 tp!739050)))

(declare-fun b!2332089 () Bool)

(declare-fun tp!739049 () Bool)

(declare-fun tp!739048 () Bool)

(assert (=> b!2332089 (= e!1493897 (and tp!739049 tp!739048))))

(assert (= (and b!2331804 ((_ is ElementMatch!6837) (regTwo!14186 (regTwo!14187 r!26197)))) b!2332086))

(assert (= (and b!2331804 ((_ is Concat!11459) (regTwo!14186 (regTwo!14187 r!26197)))) b!2332087))

(assert (= (and b!2331804 ((_ is Star!6837) (regTwo!14186 (regTwo!14187 r!26197)))) b!2332088))

(assert (= (and b!2331804 ((_ is Union!6837) (regTwo!14186 (regTwo!14187 r!26197)))) b!2332089))

(declare-fun b!2332090 () Bool)

(declare-fun e!1493898 () Bool)

(assert (=> b!2332090 (= e!1493898 tp_is_empty!10985)))

(assert (=> b!2331809 (= tp!738965 e!1493898)))

(declare-fun b!2332091 () Bool)

(declare-fun tp!739052 () Bool)

(declare-fun tp!739056 () Bool)

(assert (=> b!2332091 (= e!1493898 (and tp!739052 tp!739056))))

(declare-fun b!2332092 () Bool)

(declare-fun tp!739055 () Bool)

(assert (=> b!2332092 (= e!1493898 tp!739055)))

(declare-fun b!2332093 () Bool)

(declare-fun tp!739054 () Bool)

(declare-fun tp!739053 () Bool)

(assert (=> b!2332093 (= e!1493898 (and tp!739054 tp!739053))))

(assert (= (and b!2331809 ((_ is ElementMatch!6837) (reg!7166 (reg!7166 r!26197)))) b!2332090))

(assert (= (and b!2331809 ((_ is Concat!11459) (reg!7166 (reg!7166 r!26197)))) b!2332091))

(assert (= (and b!2331809 ((_ is Star!6837) (reg!7166 (reg!7166 r!26197)))) b!2332092))

(assert (= (and b!2331809 ((_ is Union!6837) (reg!7166 (reg!7166 r!26197)))) b!2332093))

(declare-fun b!2332094 () Bool)

(declare-fun e!1493899 () Bool)

(assert (=> b!2332094 (= e!1493899 tp_is_empty!10985)))

(assert (=> b!2331806 (= tp!738959 e!1493899)))

(declare-fun b!2332095 () Bool)

(declare-fun tp!739057 () Bool)

(declare-fun tp!739061 () Bool)

(assert (=> b!2332095 (= e!1493899 (and tp!739057 tp!739061))))

(declare-fun b!2332096 () Bool)

(declare-fun tp!739060 () Bool)

(assert (=> b!2332096 (= e!1493899 tp!739060)))

(declare-fun b!2332097 () Bool)

(declare-fun tp!739059 () Bool)

(declare-fun tp!739058 () Bool)

(assert (=> b!2332097 (= e!1493899 (and tp!739059 tp!739058))))

(assert (= (and b!2331806 ((_ is ElementMatch!6837) (regOne!14187 (regTwo!14187 r!26197)))) b!2332094))

(assert (= (and b!2331806 ((_ is Concat!11459) (regOne!14187 (regTwo!14187 r!26197)))) b!2332095))

(assert (= (and b!2331806 ((_ is Star!6837) (regOne!14187 (regTwo!14187 r!26197)))) b!2332096))

(assert (= (and b!2331806 ((_ is Union!6837) (regOne!14187 (regTwo!14187 r!26197)))) b!2332097))

(declare-fun b!2332098 () Bool)

(declare-fun e!1493900 () Bool)

(assert (=> b!2332098 (= e!1493900 tp_is_empty!10985)))

(assert (=> b!2331806 (= tp!738958 e!1493900)))

(declare-fun b!2332099 () Bool)

(declare-fun tp!739062 () Bool)

(declare-fun tp!739066 () Bool)

(assert (=> b!2332099 (= e!1493900 (and tp!739062 tp!739066))))

(declare-fun b!2332100 () Bool)

(declare-fun tp!739065 () Bool)

(assert (=> b!2332100 (= e!1493900 tp!739065)))

(declare-fun b!2332101 () Bool)

(declare-fun tp!739064 () Bool)

(declare-fun tp!739063 () Bool)

(assert (=> b!2332101 (= e!1493900 (and tp!739064 tp!739063))))

(assert (= (and b!2331806 ((_ is ElementMatch!6837) (regTwo!14187 (regTwo!14187 r!26197)))) b!2332098))

(assert (= (and b!2331806 ((_ is Concat!11459) (regTwo!14187 (regTwo!14187 r!26197)))) b!2332099))

(assert (= (and b!2331806 ((_ is Star!6837) (regTwo!14187 (regTwo!14187 r!26197)))) b!2332100))

(assert (= (and b!2331806 ((_ is Union!6837) (regTwo!14187 (regTwo!14187 r!26197)))) b!2332101))

(declare-fun b!2332102 () Bool)

(declare-fun e!1493901 () Bool)

(assert (=> b!2332102 (= e!1493901 tp_is_empty!10985)))

(assert (=> b!2331808 (= tp!738962 e!1493901)))

(declare-fun b!2332103 () Bool)

(declare-fun tp!739067 () Bool)

(declare-fun tp!739071 () Bool)

(assert (=> b!2332103 (= e!1493901 (and tp!739067 tp!739071))))

(declare-fun b!2332104 () Bool)

(declare-fun tp!739070 () Bool)

(assert (=> b!2332104 (= e!1493901 tp!739070)))

(declare-fun b!2332105 () Bool)

(declare-fun tp!739069 () Bool)

(declare-fun tp!739068 () Bool)

(assert (=> b!2332105 (= e!1493901 (and tp!739069 tp!739068))))

(assert (= (and b!2331808 ((_ is ElementMatch!6837) (regOne!14186 (reg!7166 r!26197)))) b!2332102))

(assert (= (and b!2331808 ((_ is Concat!11459) (regOne!14186 (reg!7166 r!26197)))) b!2332103))

(assert (= (and b!2331808 ((_ is Star!6837) (regOne!14186 (reg!7166 r!26197)))) b!2332104))

(assert (= (and b!2331808 ((_ is Union!6837) (regOne!14186 (reg!7166 r!26197)))) b!2332105))

(declare-fun b!2332106 () Bool)

(declare-fun e!1493902 () Bool)

(assert (=> b!2332106 (= e!1493902 tp_is_empty!10985)))

(assert (=> b!2331808 (= tp!738966 e!1493902)))

(declare-fun b!2332107 () Bool)

(declare-fun tp!739072 () Bool)

(declare-fun tp!739076 () Bool)

(assert (=> b!2332107 (= e!1493902 (and tp!739072 tp!739076))))

(declare-fun b!2332108 () Bool)

(declare-fun tp!739075 () Bool)

(assert (=> b!2332108 (= e!1493902 tp!739075)))

(declare-fun b!2332109 () Bool)

(declare-fun tp!739074 () Bool)

(declare-fun tp!739073 () Bool)

(assert (=> b!2332109 (= e!1493902 (and tp!739074 tp!739073))))

(assert (= (and b!2331808 ((_ is ElementMatch!6837) (regTwo!14186 (reg!7166 r!26197)))) b!2332106))

(assert (= (and b!2331808 ((_ is Concat!11459) (regTwo!14186 (reg!7166 r!26197)))) b!2332107))

(assert (= (and b!2331808 ((_ is Star!6837) (regTwo!14186 (reg!7166 r!26197)))) b!2332108))

(assert (= (and b!2331808 ((_ is Union!6837) (regTwo!14186 (reg!7166 r!26197)))) b!2332109))

(declare-fun b!2332110 () Bool)

(declare-fun e!1493903 () Bool)

(assert (=> b!2332110 (= e!1493903 tp_is_empty!10985)))

(assert (=> b!2331810 (= tp!738964 e!1493903)))

(declare-fun b!2332111 () Bool)

(declare-fun tp!739077 () Bool)

(declare-fun tp!739081 () Bool)

(assert (=> b!2332111 (= e!1493903 (and tp!739077 tp!739081))))

(declare-fun b!2332112 () Bool)

(declare-fun tp!739080 () Bool)

(assert (=> b!2332112 (= e!1493903 tp!739080)))

(declare-fun b!2332113 () Bool)

(declare-fun tp!739079 () Bool)

(declare-fun tp!739078 () Bool)

(assert (=> b!2332113 (= e!1493903 (and tp!739079 tp!739078))))

(assert (= (and b!2331810 ((_ is ElementMatch!6837) (regOne!14187 (reg!7166 r!26197)))) b!2332110))

(assert (= (and b!2331810 ((_ is Concat!11459) (regOne!14187 (reg!7166 r!26197)))) b!2332111))

(assert (= (and b!2331810 ((_ is Star!6837) (regOne!14187 (reg!7166 r!26197)))) b!2332112))

(assert (= (and b!2331810 ((_ is Union!6837) (regOne!14187 (reg!7166 r!26197)))) b!2332113))

(declare-fun b!2332114 () Bool)

(declare-fun e!1493904 () Bool)

(assert (=> b!2332114 (= e!1493904 tp_is_empty!10985)))

(assert (=> b!2331810 (= tp!738963 e!1493904)))

(declare-fun b!2332115 () Bool)

(declare-fun tp!739082 () Bool)

(declare-fun tp!739086 () Bool)

(assert (=> b!2332115 (= e!1493904 (and tp!739082 tp!739086))))

(declare-fun b!2332116 () Bool)

(declare-fun tp!739085 () Bool)

(assert (=> b!2332116 (= e!1493904 tp!739085)))

(declare-fun b!2332117 () Bool)

(declare-fun tp!739084 () Bool)

(declare-fun tp!739083 () Bool)

(assert (=> b!2332117 (= e!1493904 (and tp!739084 tp!739083))))

(assert (= (and b!2331810 ((_ is ElementMatch!6837) (regTwo!14187 (reg!7166 r!26197)))) b!2332114))

(assert (= (and b!2331810 ((_ is Concat!11459) (regTwo!14187 (reg!7166 r!26197)))) b!2332115))

(assert (= (and b!2331810 ((_ is Star!6837) (regTwo!14187 (reg!7166 r!26197)))) b!2332116))

(assert (= (and b!2331810 ((_ is Union!6837) (regTwo!14187 (reg!7166 r!26197)))) b!2332117))

(declare-fun b!2332118 () Bool)

(declare-fun e!1493905 () Bool)

(assert (=> b!2332118 (= e!1493905 tp_is_empty!10985)))

(assert (=> b!2331800 (= tp!738952 e!1493905)))

(declare-fun b!2332119 () Bool)

(declare-fun tp!739087 () Bool)

(declare-fun tp!739091 () Bool)

(assert (=> b!2332119 (= e!1493905 (and tp!739087 tp!739091))))

(declare-fun b!2332120 () Bool)

(declare-fun tp!739090 () Bool)

(assert (=> b!2332120 (= e!1493905 tp!739090)))

(declare-fun b!2332121 () Bool)

(declare-fun tp!739089 () Bool)

(declare-fun tp!739088 () Bool)

(assert (=> b!2332121 (= e!1493905 (and tp!739089 tp!739088))))

(assert (= (and b!2331800 ((_ is ElementMatch!6837) (regOne!14186 (regOne!14187 r!26197)))) b!2332118))

(assert (= (and b!2331800 ((_ is Concat!11459) (regOne!14186 (regOne!14187 r!26197)))) b!2332119))

(assert (= (and b!2331800 ((_ is Star!6837) (regOne!14186 (regOne!14187 r!26197)))) b!2332120))

(assert (= (and b!2331800 ((_ is Union!6837) (regOne!14186 (regOne!14187 r!26197)))) b!2332121))

(declare-fun b!2332122 () Bool)

(declare-fun e!1493906 () Bool)

(assert (=> b!2332122 (= e!1493906 tp_is_empty!10985)))

(assert (=> b!2331800 (= tp!738956 e!1493906)))

(declare-fun b!2332123 () Bool)

(declare-fun tp!739092 () Bool)

(declare-fun tp!739096 () Bool)

(assert (=> b!2332123 (= e!1493906 (and tp!739092 tp!739096))))

(declare-fun b!2332124 () Bool)

(declare-fun tp!739095 () Bool)

(assert (=> b!2332124 (= e!1493906 tp!739095)))

(declare-fun b!2332125 () Bool)

(declare-fun tp!739094 () Bool)

(declare-fun tp!739093 () Bool)

(assert (=> b!2332125 (= e!1493906 (and tp!739094 tp!739093))))

(assert (= (and b!2331800 ((_ is ElementMatch!6837) (regTwo!14186 (regOne!14187 r!26197)))) b!2332122))

(assert (= (and b!2331800 ((_ is Concat!11459) (regTwo!14186 (regOne!14187 r!26197)))) b!2332123))

(assert (= (and b!2331800 ((_ is Star!6837) (regTwo!14186 (regOne!14187 r!26197)))) b!2332124))

(assert (= (and b!2331800 ((_ is Union!6837) (regTwo!14186 (regOne!14187 r!26197)))) b!2332125))

(declare-fun b!2332126 () Bool)

(declare-fun e!1493907 () Bool)

(assert (=> b!2332126 (= e!1493907 tp_is_empty!10985)))

(assert (=> b!2331797 (= tp!738950 e!1493907)))

(declare-fun b!2332127 () Bool)

(declare-fun tp!739097 () Bool)

(declare-fun tp!739101 () Bool)

(assert (=> b!2332127 (= e!1493907 (and tp!739097 tp!739101))))

(declare-fun b!2332128 () Bool)

(declare-fun tp!739100 () Bool)

(assert (=> b!2332128 (= e!1493907 tp!739100)))

(declare-fun b!2332129 () Bool)

(declare-fun tp!739099 () Bool)

(declare-fun tp!739098 () Bool)

(assert (=> b!2332129 (= e!1493907 (and tp!739099 tp!739098))))

(assert (= (and b!2331797 ((_ is ElementMatch!6837) (reg!7166 (regTwo!14186 r!26197)))) b!2332126))

(assert (= (and b!2331797 ((_ is Concat!11459) (reg!7166 (regTwo!14186 r!26197)))) b!2332127))

(assert (= (and b!2331797 ((_ is Star!6837) (reg!7166 (regTwo!14186 r!26197)))) b!2332128))

(assert (= (and b!2331797 ((_ is Union!6837) (reg!7166 (regTwo!14186 r!26197)))) b!2332129))

(declare-fun b!2332130 () Bool)

(declare-fun e!1493908 () Bool)

(assert (=> b!2332130 (= e!1493908 tp_is_empty!10985)))

(assert (=> b!2331792 (= tp!738942 e!1493908)))

(declare-fun b!2332131 () Bool)

(declare-fun tp!739102 () Bool)

(declare-fun tp!739106 () Bool)

(assert (=> b!2332131 (= e!1493908 (and tp!739102 tp!739106))))

(declare-fun b!2332132 () Bool)

(declare-fun tp!739105 () Bool)

(assert (=> b!2332132 (= e!1493908 tp!739105)))

(declare-fun b!2332133 () Bool)

(declare-fun tp!739104 () Bool)

(declare-fun tp!739103 () Bool)

(assert (=> b!2332133 (= e!1493908 (and tp!739104 tp!739103))))

(assert (= (and b!2331792 ((_ is ElementMatch!6837) (regOne!14186 (regOne!14186 r!26197)))) b!2332130))

(assert (= (and b!2331792 ((_ is Concat!11459) (regOne!14186 (regOne!14186 r!26197)))) b!2332131))

(assert (= (and b!2331792 ((_ is Star!6837) (regOne!14186 (regOne!14186 r!26197)))) b!2332132))

(assert (= (and b!2331792 ((_ is Union!6837) (regOne!14186 (regOne!14186 r!26197)))) b!2332133))

(declare-fun b!2332134 () Bool)

(declare-fun e!1493909 () Bool)

(assert (=> b!2332134 (= e!1493909 tp_is_empty!10985)))

(assert (=> b!2331792 (= tp!738946 e!1493909)))

(declare-fun b!2332135 () Bool)

(declare-fun tp!739107 () Bool)

(declare-fun tp!739111 () Bool)

(assert (=> b!2332135 (= e!1493909 (and tp!739107 tp!739111))))

(declare-fun b!2332136 () Bool)

(declare-fun tp!739110 () Bool)

(assert (=> b!2332136 (= e!1493909 tp!739110)))

(declare-fun b!2332137 () Bool)

(declare-fun tp!739109 () Bool)

(declare-fun tp!739108 () Bool)

(assert (=> b!2332137 (= e!1493909 (and tp!739109 tp!739108))))

(assert (= (and b!2331792 ((_ is ElementMatch!6837) (regTwo!14186 (regOne!14186 r!26197)))) b!2332134))

(assert (= (and b!2331792 ((_ is Concat!11459) (regTwo!14186 (regOne!14186 r!26197)))) b!2332135))

(assert (= (and b!2331792 ((_ is Star!6837) (regTwo!14186 (regOne!14186 r!26197)))) b!2332136))

(assert (= (and b!2331792 ((_ is Union!6837) (regTwo!14186 (regOne!14186 r!26197)))) b!2332137))

(declare-fun b!2332138 () Bool)

(declare-fun e!1493910 () Bool)

(assert (=> b!2332138 (= e!1493910 tp_is_empty!10985)))

(assert (=> b!2331801 (= tp!738955 e!1493910)))

(declare-fun b!2332139 () Bool)

(declare-fun tp!739112 () Bool)

(declare-fun tp!739116 () Bool)

(assert (=> b!2332139 (= e!1493910 (and tp!739112 tp!739116))))

(declare-fun b!2332140 () Bool)

(declare-fun tp!739115 () Bool)

(assert (=> b!2332140 (= e!1493910 tp!739115)))

(declare-fun b!2332141 () Bool)

(declare-fun tp!739114 () Bool)

(declare-fun tp!739113 () Bool)

(assert (=> b!2332141 (= e!1493910 (and tp!739114 tp!739113))))

(assert (= (and b!2331801 ((_ is ElementMatch!6837) (reg!7166 (regOne!14187 r!26197)))) b!2332138))

(assert (= (and b!2331801 ((_ is Concat!11459) (reg!7166 (regOne!14187 r!26197)))) b!2332139))

(assert (= (and b!2331801 ((_ is Star!6837) (reg!7166 (regOne!14187 r!26197)))) b!2332140))

(assert (= (and b!2331801 ((_ is Union!6837) (reg!7166 (regOne!14187 r!26197)))) b!2332141))

(declare-fun b!2332142 () Bool)

(declare-fun e!1493911 () Bool)

(assert (=> b!2332142 (= e!1493911 tp_is_empty!10985)))

(assert (=> b!2331796 (= tp!738947 e!1493911)))

(declare-fun b!2332143 () Bool)

(declare-fun tp!739117 () Bool)

(declare-fun tp!739121 () Bool)

(assert (=> b!2332143 (= e!1493911 (and tp!739117 tp!739121))))

(declare-fun b!2332144 () Bool)

(declare-fun tp!739120 () Bool)

(assert (=> b!2332144 (= e!1493911 tp!739120)))

(declare-fun b!2332145 () Bool)

(declare-fun tp!739119 () Bool)

(declare-fun tp!739118 () Bool)

(assert (=> b!2332145 (= e!1493911 (and tp!739119 tp!739118))))

(assert (= (and b!2331796 ((_ is ElementMatch!6837) (regOne!14186 (regTwo!14186 r!26197)))) b!2332142))

(assert (= (and b!2331796 ((_ is Concat!11459) (regOne!14186 (regTwo!14186 r!26197)))) b!2332143))

(assert (= (and b!2331796 ((_ is Star!6837) (regOne!14186 (regTwo!14186 r!26197)))) b!2332144))

(assert (= (and b!2331796 ((_ is Union!6837) (regOne!14186 (regTwo!14186 r!26197)))) b!2332145))

(declare-fun b!2332146 () Bool)

(declare-fun e!1493912 () Bool)

(assert (=> b!2332146 (= e!1493912 tp_is_empty!10985)))

(assert (=> b!2331796 (= tp!738951 e!1493912)))

(declare-fun b!2332147 () Bool)

(declare-fun tp!739122 () Bool)

(declare-fun tp!739126 () Bool)

(assert (=> b!2332147 (= e!1493912 (and tp!739122 tp!739126))))

(declare-fun b!2332148 () Bool)

(declare-fun tp!739125 () Bool)

(assert (=> b!2332148 (= e!1493912 tp!739125)))

(declare-fun b!2332149 () Bool)

(declare-fun tp!739124 () Bool)

(declare-fun tp!739123 () Bool)

(assert (=> b!2332149 (= e!1493912 (and tp!739124 tp!739123))))

(assert (= (and b!2331796 ((_ is ElementMatch!6837) (regTwo!14186 (regTwo!14186 r!26197)))) b!2332146))

(assert (= (and b!2331796 ((_ is Concat!11459) (regTwo!14186 (regTwo!14186 r!26197)))) b!2332147))

(assert (= (and b!2331796 ((_ is Star!6837) (regTwo!14186 (regTwo!14186 r!26197)))) b!2332148))

(assert (= (and b!2331796 ((_ is Union!6837) (regTwo!14186 (regTwo!14186 r!26197)))) b!2332149))

(check-sat (not b!2332107) (not bm!139277) (not b!2332133) (not b!2332088) (not b!2332127) (not bm!139300) (not bm!139288) (not bm!139278) (not d!690066) (not d!690052) (not bm!139296) (not bm!139265) (not b!2332089) (not b!2332121) (not b!2332041) (not bm!139301) (not b!2332112) (not b!2332143) (not b!2332069) (not b!2332056) (not b!2332140) (not b!2332104) (not bm!139306) (not b!2332052) (not b!2332109) (not b!2332093) (not b!2332077) (not b!2332085) (not b!2332144) (not b!2331921) (not b!2332100) (not b!2332148) (not b!2332132) (not b!2331911) tp_is_empty!10985 (not b!2332004) (not b!2332091) (not b!2331935) (not b!2332072) (not bm!139272) (not b!2332059) (not bm!139264) (not b!2332071) (not bm!139256) (not b!2332060) (not bm!139287) (not d!690034) (not d!690044) (not b!2332087) (not b!2332057) (not b!2331885) (not b!2332064) (not b!2331985) (not bm!139302) (not b!2332120) (not b!2332119) (not b!2332063) (not bm!139279) (not d!690054) (not bm!139269) (not d!690030) (not b!2332067) (not bm!139276) (not bm!139313) (not b!2332096) (not b!2331954) (not bm!139259) (not b!2332075) (not b!2331964) (not b!2332065) (not b!2332141) (not bm!139290) (not bm!139258) (not b!2332084) (not bm!139293) (not b!2332076) (not b!2332145) (not b!2332117) (not b!2332036) (not b!2332131) (not b!2332124) (not b!2332027) (not d!690042) (not b!2332149) (not b!2332113) (not bm!139299) (not bm!139303) (not b!2332115) (not bm!139304) (not b!2332123) (not b!2332137) (not b!2332105) (not b!2332147) (not bm!139255) (not b!2332079) (not bm!139273) (not bm!139314) (not b!2332051) (not b!2332103) (not b!2332073) (not bm!139268) (not b!2332061) (not b!2332108) (not b!2332111) (not b!2332092) (not bm!139292) (not b!2332055) (not b!2332083) (not bm!139283) (not b!2332135) (not bm!139309) (not b!2332099) (not d!690050) (not b!2332053) (not b!2332095) (not bm!139307) (not b!2332101) (not bm!139289) (not bm!139275) (not bm!139284) (not b!2332116) (not b!2332129) (not b!2332097) (not b!2331990) (not b!2332068) (not b!2332125) (not b!2332081) (not b!2332128) (not b!2332080) (not b!2331876) (not d!690022) (not bm!139310) (not b!2332139) (not bm!139280) (not d!690032) (not b!2332136) (not bm!139297))
(check-sat)
