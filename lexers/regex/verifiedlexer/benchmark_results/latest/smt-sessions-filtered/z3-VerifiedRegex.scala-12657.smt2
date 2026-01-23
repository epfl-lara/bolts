; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700824 () Bool)

(assert start!700824)

(declare-fun res!2932398 () Bool)

(declare-fun e!4332209 () Bool)

(assert (=> start!700824 (=> (not res!2932398) (not e!4332209))))

(declare-datatypes ((C!37120 0))(
  ( (C!37121 (val!28508 Int)) )
))
(declare-datatypes ((Regex!18423 0))(
  ( (ElementMatch!18423 (c!1340681 C!37120)) (Concat!27268 (regOne!37358 Regex!18423) (regTwo!37358 Regex!18423)) (EmptyExpr!18423) (Star!18423 (reg!18752 Regex!18423)) (EmptyLang!18423) (Union!18423 (regOne!37359 Regex!18423) (regTwo!37359 Regex!18423)) )
))
(declare-datatypes ((List!69961 0))(
  ( (Nil!69837) (Cons!69837 (h!76285 Regex!18423) (t!383992 List!69961)) )
))
(declare-datatypes ((Context!14750 0))(
  ( (Context!14751 (exprs!7875 List!69961)) )
))
(declare-fun c!7037 () Context!14750)

(get-info :version)

(assert (=> start!700824 (= res!2932398 ((_ is Cons!69837) (exprs!7875 c!7037)))))

(assert (=> start!700824 e!4332209))

(declare-fun e!4332208 () Bool)

(declare-fun inv!89079 (Context!14750) Bool)

(assert (=> start!700824 (and (inv!89079 c!7037) e!4332208)))

(declare-fun b!7226936 () Bool)

(assert (=> b!7226936 (= e!4332209 (not (inv!89079 (Context!14751 (t!383992 (exprs!7875 c!7037))))))))

(declare-fun lt!2572202 () Int)

(declare-fun regexDepth!412 (Regex!18423) Int)

(assert (=> b!7226936 (= lt!2572202 (regexDepth!412 (h!76285 (exprs!7875 c!7037))))))

(declare-fun b!7226937 () Bool)

(declare-fun tp!2032484 () Bool)

(assert (=> b!7226937 (= e!4332208 tp!2032484)))

(assert (= (and start!700824 res!2932398) b!7226936))

(assert (= start!700824 b!7226937))

(declare-fun m!7896204 () Bool)

(assert (=> start!700824 m!7896204))

(declare-fun m!7896206 () Bool)

(assert (=> b!7226936 m!7896206))

(declare-fun m!7896208 () Bool)

(assert (=> b!7226936 m!7896208))

(check-sat (not b!7226936) (not start!700824) (not b!7226937))
(check-sat)
(get-model)

(declare-fun d!2244646 () Bool)

(declare-fun lambda!438626 () Int)

(declare-fun forall!17248 (List!69961 Int) Bool)

(assert (=> d!2244646 (= (inv!89079 (Context!14751 (t!383992 (exprs!7875 c!7037)))) (forall!17248 (exprs!7875 (Context!14751 (t!383992 (exprs!7875 c!7037)))) lambda!438626))))

(declare-fun bs!1902032 () Bool)

(assert (= bs!1902032 d!2244646))

(declare-fun m!7896210 () Bool)

(assert (=> bs!1902032 m!7896210))

(assert (=> b!7226936 d!2244646))

(declare-fun bm!657729 () Bool)

(declare-fun call!657734 () Int)

(declare-fun call!657740 () Int)

(assert (=> bm!657729 (= call!657734 call!657740)))

(declare-fun b!7226972 () Bool)

(declare-fun c!1340700 () Bool)

(assert (=> b!7226972 (= c!1340700 ((_ is Union!18423) (h!76285 (exprs!7875 c!7037))))))

(declare-fun e!4332239 () Int)

(declare-fun e!4332235 () Int)

(assert (=> b!7226972 (= e!4332239 e!4332235)))

(declare-fun b!7226973 () Bool)

(declare-fun e!4332234 () Int)

(declare-fun call!657737 () Int)

(assert (=> b!7226973 (= e!4332234 (+ 1 call!657737))))

(declare-fun bm!657730 () Bool)

(declare-fun c!1340699 () Bool)

(assert (=> bm!657730 (= call!657740 (regexDepth!412 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun bm!657732 () Bool)

(declare-fun call!657739 () Int)

(declare-fun c!1340702 () Bool)

(assert (=> bm!657732 (= call!657739 (regexDepth!412 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun b!7226974 () Bool)

(assert (=> b!7226974 (= e!4332235 e!4332234)))

(declare-fun c!1340697 () Bool)

(assert (=> b!7226974 (= c!1340697 ((_ is Concat!27268) (h!76285 (exprs!7875 c!7037))))))

(declare-fun bm!657733 () Bool)

(declare-fun call!657738 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!657733 (= call!657737 (maxBigInt!0 call!657738 call!657734))))

(declare-fun b!7226975 () Bool)

(declare-fun e!4332231 () Bool)

(declare-fun lt!2572205 () Int)

(assert (=> b!7226975 (= e!4332231 (= lt!2572205 1))))

(declare-fun b!7226976 () Bool)

(assert (=> b!7226976 (= e!4332235 (+ 1 call!657737))))

(declare-fun b!7226977 () Bool)

(declare-fun e!4332237 () Bool)

(assert (=> b!7226977 (= e!4332237 (> lt!2572205 call!657739))))

(declare-fun b!7226978 () Bool)

(declare-fun e!4332233 () Bool)

(assert (=> b!7226978 (= e!4332233 (> lt!2572205 call!657739))))

(declare-fun b!7226979 () Bool)

(declare-fun e!4332232 () Int)

(assert (=> b!7226979 (= e!4332232 e!4332239)))

(assert (=> b!7226979 (= c!1340699 ((_ is Star!18423) (h!76285 (exprs!7875 c!7037))))))

(declare-fun b!7226980 () Bool)

(declare-fun e!4332230 () Bool)

(assert (=> b!7226980 (= e!4332230 e!4332237)))

(declare-fun res!2932407 () Bool)

(declare-fun call!657735 () Int)

(assert (=> b!7226980 (= res!2932407 (> lt!2572205 call!657735))))

(assert (=> b!7226980 (=> (not res!2932407) (not e!4332237))))

(declare-fun b!7226981 () Bool)

(declare-fun e!4332236 () Bool)

(assert (=> b!7226981 (= e!4332236 e!4332230)))

(assert (=> b!7226981 (= c!1340702 ((_ is Union!18423) (h!76285 (exprs!7875 c!7037))))))

(declare-fun b!7226982 () Bool)

(declare-fun res!2932406 () Bool)

(assert (=> b!7226982 (=> (not res!2932406) (not e!4332233))))

(declare-fun call!657736 () Int)

(assert (=> b!7226982 (= res!2932406 (> lt!2572205 call!657736))))

(declare-fun e!4332238 () Bool)

(assert (=> b!7226982 (= e!4332238 e!4332233)))

(declare-fun b!7226983 () Bool)

(assert (=> b!7226983 (= e!4332230 e!4332238)))

(declare-fun c!1340696 () Bool)

(assert (=> b!7226983 (= c!1340696 ((_ is Concat!27268) (h!76285 (exprs!7875 c!7037))))))

(declare-fun b!7226984 () Bool)

(assert (=> b!7226984 (= e!4332239 (+ 1 call!657740))))

(declare-fun bm!657731 () Bool)

(assert (=> bm!657731 (= call!657736 call!657735)))

(declare-fun d!2244648 () Bool)

(assert (=> d!2244648 e!4332236))

(declare-fun res!2932405 () Bool)

(assert (=> d!2244648 (=> (not res!2932405) (not e!4332236))))

(assert (=> d!2244648 (= res!2932405 (> lt!2572205 0))))

(assert (=> d!2244648 (= lt!2572205 e!4332232)))

(declare-fun c!1340698 () Bool)

(assert (=> d!2244648 (= c!1340698 ((_ is ElementMatch!18423) (h!76285 (exprs!7875 c!7037))))))

(assert (=> d!2244648 (= (regexDepth!412 (h!76285 (exprs!7875 c!7037))) lt!2572205)))

(declare-fun b!7226985 () Bool)

(assert (=> b!7226985 (= e!4332231 (> lt!2572205 call!657736))))

(declare-fun b!7226986 () Bool)

(assert (=> b!7226986 (= e!4332232 1)))

(declare-fun b!7226987 () Bool)

(assert (=> b!7226987 (= e!4332234 1)))

(declare-fun b!7226988 () Bool)

(declare-fun c!1340701 () Bool)

(assert (=> b!7226988 (= c!1340701 ((_ is Star!18423) (h!76285 (exprs!7875 c!7037))))))

(assert (=> b!7226988 (= e!4332238 e!4332231)))

(declare-fun bm!657734 () Bool)

(assert (=> bm!657734 (= call!657738 (regexDepth!412 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun bm!657735 () Bool)

(assert (=> bm!657735 (= call!657735 (regexDepth!412 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(assert (= (and d!2244648 c!1340698) b!7226986))

(assert (= (and d!2244648 (not c!1340698)) b!7226979))

(assert (= (and b!7226979 c!1340699) b!7226984))

(assert (= (and b!7226979 (not c!1340699)) b!7226972))

(assert (= (and b!7226972 c!1340700) b!7226976))

(assert (= (and b!7226972 (not c!1340700)) b!7226974))

(assert (= (and b!7226974 c!1340697) b!7226973))

(assert (= (and b!7226974 (not c!1340697)) b!7226987))

(assert (= (or b!7226976 b!7226973) bm!657734))

(assert (= (or b!7226976 b!7226973) bm!657729))

(assert (= (or b!7226976 b!7226973) bm!657733))

(assert (= (or b!7226984 bm!657729) bm!657730))

(assert (= (and d!2244648 res!2932405) b!7226981))

(assert (= (and b!7226981 c!1340702) b!7226980))

(assert (= (and b!7226981 (not c!1340702)) b!7226983))

(assert (= (and b!7226980 res!2932407) b!7226977))

(assert (= (and b!7226983 c!1340696) b!7226982))

(assert (= (and b!7226983 (not c!1340696)) b!7226988))

(assert (= (and b!7226982 res!2932406) b!7226978))

(assert (= (and b!7226988 c!1340701) b!7226985))

(assert (= (and b!7226988 (not c!1340701)) b!7226975))

(assert (= (or b!7226982 b!7226985) bm!657731))

(assert (= (or b!7226980 bm!657731) bm!657735))

(assert (= (or b!7226977 b!7226978) bm!657732))

(declare-fun m!7896212 () Bool)

(assert (=> bm!657730 m!7896212))

(declare-fun m!7896214 () Bool)

(assert (=> bm!657735 m!7896214))

(declare-fun m!7896216 () Bool)

(assert (=> bm!657734 m!7896216))

(declare-fun m!7896218 () Bool)

(assert (=> bm!657732 m!7896218))

(declare-fun m!7896220 () Bool)

(assert (=> bm!657733 m!7896220))

(assert (=> b!7226936 d!2244648))

(declare-fun bs!1902033 () Bool)

(declare-fun d!2244650 () Bool)

(assert (= bs!1902033 (and d!2244650 d!2244646)))

(declare-fun lambda!438627 () Int)

(assert (=> bs!1902033 (= lambda!438627 lambda!438626)))

(assert (=> d!2244650 (= (inv!89079 c!7037) (forall!17248 (exprs!7875 c!7037) lambda!438627))))

(declare-fun bs!1902034 () Bool)

(assert (= bs!1902034 d!2244650))

(declare-fun m!7896222 () Bool)

(assert (=> bs!1902034 m!7896222))

(assert (=> start!700824 d!2244650))

(declare-fun b!7226993 () Bool)

(declare-fun e!4332242 () Bool)

(declare-fun tp!2032489 () Bool)

(declare-fun tp!2032490 () Bool)

(assert (=> b!7226993 (= e!4332242 (and tp!2032489 tp!2032490))))

(assert (=> b!7226937 (= tp!2032484 e!4332242)))

(assert (= (and b!7226937 ((_ is Cons!69837) (exprs!7875 c!7037))) b!7226993))

(check-sat (not d!2244650) (not bm!657735) (not bm!657733) (not bm!657734) (not b!7226993) (not d!2244646) (not bm!657730) (not bm!657732))
(check-sat)
(get-model)

(declare-fun d!2244652 () Bool)

(declare-fun res!2932412 () Bool)

(declare-fun e!4332247 () Bool)

(assert (=> d!2244652 (=> res!2932412 e!4332247)))

(assert (=> d!2244652 (= res!2932412 ((_ is Nil!69837) (exprs!7875 (Context!14751 (t!383992 (exprs!7875 c!7037))))))))

(assert (=> d!2244652 (= (forall!17248 (exprs!7875 (Context!14751 (t!383992 (exprs!7875 c!7037)))) lambda!438626) e!4332247)))

(declare-fun b!7226998 () Bool)

(declare-fun e!4332248 () Bool)

(assert (=> b!7226998 (= e!4332247 e!4332248)))

(declare-fun res!2932413 () Bool)

(assert (=> b!7226998 (=> (not res!2932413) (not e!4332248))))

(declare-fun dynLambda!28441 (Int Regex!18423) Bool)

(assert (=> b!7226998 (= res!2932413 (dynLambda!28441 lambda!438626 (h!76285 (exprs!7875 (Context!14751 (t!383992 (exprs!7875 c!7037)))))))))

(declare-fun b!7226999 () Bool)

(assert (=> b!7226999 (= e!4332248 (forall!17248 (t!383992 (exprs!7875 (Context!14751 (t!383992 (exprs!7875 c!7037))))) lambda!438626))))

(assert (= (and d!2244652 (not res!2932412)) b!7226998))

(assert (= (and b!7226998 res!2932413) b!7226999))

(declare-fun b_lambda!276703 () Bool)

(assert (=> (not b_lambda!276703) (not b!7226998)))

(declare-fun m!7896224 () Bool)

(assert (=> b!7226998 m!7896224))

(declare-fun m!7896226 () Bool)

(assert (=> b!7226999 m!7896226))

(assert (=> d!2244646 d!2244652))

(declare-fun bm!657736 () Bool)

(declare-fun call!657741 () Int)

(declare-fun call!657747 () Int)

(assert (=> bm!657736 (= call!657741 call!657747)))

(declare-fun c!1340707 () Bool)

(declare-fun b!7227000 () Bool)

(assert (=> b!7227000 (= c!1340707 ((_ is Union!18423) (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun e!4332258 () Int)

(declare-fun e!4332254 () Int)

(assert (=> b!7227000 (= e!4332258 e!4332254)))

(declare-fun b!7227001 () Bool)

(declare-fun e!4332253 () Int)

(declare-fun call!657744 () Int)

(assert (=> b!7227001 (= e!4332253 (+ 1 call!657744))))

(declare-fun c!1340706 () Bool)

(declare-fun bm!657737 () Bool)

(assert (=> bm!657737 (= call!657747 (regexDepth!412 (ite c!1340706 (reg!18752 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))) (ite c!1340707 (regTwo!37359 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))) (regTwo!37358 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037))))))))))))

(declare-fun bm!657739 () Bool)

(declare-fun c!1340709 () Bool)

(declare-fun call!657746 () Int)

(assert (=> bm!657739 (= call!657746 (regexDepth!412 (ite c!1340709 (regTwo!37359 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))) (regTwo!37358 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))))

(declare-fun b!7227002 () Bool)

(assert (=> b!7227002 (= e!4332254 e!4332253)))

(declare-fun c!1340704 () Bool)

(assert (=> b!7227002 (= c!1340704 ((_ is Concat!27268) (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun bm!657740 () Bool)

(declare-fun call!657745 () Int)

(assert (=> bm!657740 (= call!657744 (maxBigInt!0 call!657745 call!657741))))

(declare-fun b!7227003 () Bool)

(declare-fun e!4332250 () Bool)

(declare-fun lt!2572206 () Int)

(assert (=> b!7227003 (= e!4332250 (= lt!2572206 1))))

(declare-fun b!7227004 () Bool)

(assert (=> b!7227004 (= e!4332254 (+ 1 call!657744))))

(declare-fun b!7227005 () Bool)

(declare-fun e!4332256 () Bool)

(assert (=> b!7227005 (= e!4332256 (> lt!2572206 call!657746))))

(declare-fun b!7227006 () Bool)

(declare-fun e!4332252 () Bool)

(assert (=> b!7227006 (= e!4332252 (> lt!2572206 call!657746))))

(declare-fun b!7227007 () Bool)

(declare-fun e!4332251 () Int)

(assert (=> b!7227007 (= e!4332251 e!4332258)))

(assert (=> b!7227007 (= c!1340706 ((_ is Star!18423) (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun b!7227008 () Bool)

(declare-fun e!4332249 () Bool)

(assert (=> b!7227008 (= e!4332249 e!4332256)))

(declare-fun res!2932416 () Bool)

(declare-fun call!657742 () Int)

(assert (=> b!7227008 (= res!2932416 (> lt!2572206 call!657742))))

(assert (=> b!7227008 (=> (not res!2932416) (not e!4332256))))

(declare-fun b!7227009 () Bool)

(declare-fun e!4332255 () Bool)

(assert (=> b!7227009 (= e!4332255 e!4332249)))

(assert (=> b!7227009 (= c!1340709 ((_ is Union!18423) (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun b!7227010 () Bool)

(declare-fun res!2932415 () Bool)

(assert (=> b!7227010 (=> (not res!2932415) (not e!4332252))))

(declare-fun call!657743 () Int)

(assert (=> b!7227010 (= res!2932415 (> lt!2572206 call!657743))))

(declare-fun e!4332257 () Bool)

(assert (=> b!7227010 (= e!4332257 e!4332252)))

(declare-fun b!7227011 () Bool)

(assert (=> b!7227011 (= e!4332249 e!4332257)))

(declare-fun c!1340703 () Bool)

(assert (=> b!7227011 (= c!1340703 ((_ is Concat!27268) (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun b!7227012 () Bool)

(assert (=> b!7227012 (= e!4332258 (+ 1 call!657747))))

(declare-fun bm!657738 () Bool)

(assert (=> bm!657738 (= call!657743 call!657742)))

(declare-fun d!2244654 () Bool)

(assert (=> d!2244654 e!4332255))

(declare-fun res!2932414 () Bool)

(assert (=> d!2244654 (=> (not res!2932414) (not e!4332255))))

(assert (=> d!2244654 (= res!2932414 (> lt!2572206 0))))

(assert (=> d!2244654 (= lt!2572206 e!4332251)))

(declare-fun c!1340705 () Bool)

(assert (=> d!2244654 (= c!1340705 ((_ is ElementMatch!18423) (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(assert (=> d!2244654 (= (regexDepth!412 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))) lt!2572206)))

(declare-fun b!7227013 () Bool)

(assert (=> b!7227013 (= e!4332250 (> lt!2572206 call!657743))))

(declare-fun b!7227014 () Bool)

(assert (=> b!7227014 (= e!4332251 1)))

(declare-fun b!7227015 () Bool)

(assert (=> b!7227015 (= e!4332253 1)))

(declare-fun c!1340708 () Bool)

(declare-fun b!7227016 () Bool)

(assert (=> b!7227016 (= c!1340708 ((_ is Star!18423) (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))

(assert (=> b!7227016 (= e!4332257 e!4332250)))

(declare-fun bm!657741 () Bool)

(assert (=> bm!657741 (= call!657745 (regexDepth!412 (ite c!1340707 (regOne!37359 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))) (regOne!37358 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))))))))

(declare-fun bm!657742 () Bool)

(assert (=> bm!657742 (= call!657742 (regexDepth!412 (ite c!1340709 (regOne!37359 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))) (ite c!1340703 (regOne!37358 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037)))))) (reg!18752 (ite c!1340702 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (ite c!1340696 (regOne!37358 (h!76285 (exprs!7875 c!7037))) (reg!18752 (h!76285 (exprs!7875 c!7037))))))))))))

(assert (= (and d!2244654 c!1340705) b!7227014))

(assert (= (and d!2244654 (not c!1340705)) b!7227007))

(assert (= (and b!7227007 c!1340706) b!7227012))

(assert (= (and b!7227007 (not c!1340706)) b!7227000))

(assert (= (and b!7227000 c!1340707) b!7227004))

(assert (= (and b!7227000 (not c!1340707)) b!7227002))

(assert (= (and b!7227002 c!1340704) b!7227001))

(assert (= (and b!7227002 (not c!1340704)) b!7227015))

(assert (= (or b!7227004 b!7227001) bm!657741))

(assert (= (or b!7227004 b!7227001) bm!657736))

(assert (= (or b!7227004 b!7227001) bm!657740))

(assert (= (or b!7227012 bm!657736) bm!657737))

(assert (= (and d!2244654 res!2932414) b!7227009))

(assert (= (and b!7227009 c!1340709) b!7227008))

(assert (= (and b!7227009 (not c!1340709)) b!7227011))

(assert (= (and b!7227008 res!2932416) b!7227005))

(assert (= (and b!7227011 c!1340703) b!7227010))

(assert (= (and b!7227011 (not c!1340703)) b!7227016))

(assert (= (and b!7227010 res!2932415) b!7227006))

(assert (= (and b!7227016 c!1340708) b!7227013))

(assert (= (and b!7227016 (not c!1340708)) b!7227003))

(assert (= (or b!7227010 b!7227013) bm!657738))

(assert (= (or b!7227008 bm!657738) bm!657742))

(assert (= (or b!7227005 b!7227006) bm!657739))

(declare-fun m!7896228 () Bool)

(assert (=> bm!657737 m!7896228))

(declare-fun m!7896230 () Bool)

(assert (=> bm!657742 m!7896230))

(declare-fun m!7896232 () Bool)

(assert (=> bm!657741 m!7896232))

(declare-fun m!7896234 () Bool)

(assert (=> bm!657739 m!7896234))

(declare-fun m!7896236 () Bool)

(assert (=> bm!657740 m!7896236))

(assert (=> bm!657735 d!2244654))

(declare-fun d!2244656 () Bool)

(assert (=> d!2244656 (= (maxBigInt!0 call!657738 call!657734) (ite (>= call!657738 call!657734) call!657738 call!657734))))

(assert (=> bm!657733 d!2244656))

(declare-fun bm!657743 () Bool)

(declare-fun call!657748 () Int)

(declare-fun call!657754 () Int)

(assert (=> bm!657743 (= call!657748 call!657754)))

(declare-fun b!7227018 () Bool)

(declare-fun c!1340714 () Bool)

(assert (=> b!7227018 (= c!1340714 ((_ is Union!18423) (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun e!4332268 () Int)

(declare-fun e!4332264 () Int)

(assert (=> b!7227018 (= e!4332268 e!4332264)))

(declare-fun b!7227019 () Bool)

(declare-fun e!4332263 () Int)

(declare-fun call!657751 () Int)

(assert (=> b!7227019 (= e!4332263 (+ 1 call!657751))))

(declare-fun bm!657744 () Bool)

(declare-fun c!1340713 () Bool)

(assert (=> bm!657744 (= call!657754 (regexDepth!412 (ite c!1340713 (reg!18752 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))) (ite c!1340714 (regTwo!37359 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))) (regTwo!37358 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037)))))))))))

(declare-fun c!1340716 () Bool)

(declare-fun bm!657746 () Bool)

(declare-fun call!657753 () Int)

(assert (=> bm!657746 (= call!657753 (regexDepth!412 (ite c!1340716 (regTwo!37359 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))) (regTwo!37358 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))))

(declare-fun b!7227020 () Bool)

(assert (=> b!7227020 (= e!4332264 e!4332263)))

(declare-fun c!1340711 () Bool)

(assert (=> b!7227020 (= c!1340711 ((_ is Concat!27268) (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun bm!657747 () Bool)

(declare-fun call!657752 () Int)

(assert (=> bm!657747 (= call!657751 (maxBigInt!0 call!657752 call!657748))))

(declare-fun b!7227021 () Bool)

(declare-fun e!4332260 () Bool)

(declare-fun lt!2572207 () Int)

(assert (=> b!7227021 (= e!4332260 (= lt!2572207 1))))

(declare-fun b!7227022 () Bool)

(assert (=> b!7227022 (= e!4332264 (+ 1 call!657751))))

(declare-fun b!7227023 () Bool)

(declare-fun e!4332266 () Bool)

(assert (=> b!7227023 (= e!4332266 (> lt!2572207 call!657753))))

(declare-fun b!7227024 () Bool)

(declare-fun e!4332262 () Bool)

(assert (=> b!7227024 (= e!4332262 (> lt!2572207 call!657753))))

(declare-fun b!7227025 () Bool)

(declare-fun e!4332261 () Int)

(assert (=> b!7227025 (= e!4332261 e!4332268)))

(assert (=> b!7227025 (= c!1340713 ((_ is Star!18423) (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun b!7227026 () Bool)

(declare-fun e!4332259 () Bool)

(assert (=> b!7227026 (= e!4332259 e!4332266)))

(declare-fun res!2932419 () Bool)

(declare-fun call!657749 () Int)

(assert (=> b!7227026 (= res!2932419 (> lt!2572207 call!657749))))

(assert (=> b!7227026 (=> (not res!2932419) (not e!4332266))))

(declare-fun b!7227027 () Bool)

(declare-fun e!4332265 () Bool)

(assert (=> b!7227027 (= e!4332265 e!4332259)))

(assert (=> b!7227027 (= c!1340716 ((_ is Union!18423) (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun b!7227028 () Bool)

(declare-fun res!2932418 () Bool)

(assert (=> b!7227028 (=> (not res!2932418) (not e!4332262))))

(declare-fun call!657750 () Int)

(assert (=> b!7227028 (= res!2932418 (> lt!2572207 call!657750))))

(declare-fun e!4332267 () Bool)

(assert (=> b!7227028 (= e!4332267 e!4332262)))

(declare-fun b!7227029 () Bool)

(assert (=> b!7227029 (= e!4332259 e!4332267)))

(declare-fun c!1340710 () Bool)

(assert (=> b!7227029 (= c!1340710 ((_ is Concat!27268) (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun b!7227030 () Bool)

(assert (=> b!7227030 (= e!4332268 (+ 1 call!657754))))

(declare-fun bm!657745 () Bool)

(assert (=> bm!657745 (= call!657750 call!657749)))

(declare-fun d!2244658 () Bool)

(assert (=> d!2244658 e!4332265))

(declare-fun res!2932417 () Bool)

(assert (=> d!2244658 (=> (not res!2932417) (not e!4332265))))

(assert (=> d!2244658 (= res!2932417 (> lt!2572207 0))))

(assert (=> d!2244658 (= lt!2572207 e!4332261)))

(declare-fun c!1340712 () Bool)

(assert (=> d!2244658 (= c!1340712 ((_ is ElementMatch!18423) (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(assert (=> d!2244658 (= (regexDepth!412 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))) lt!2572207)))

(declare-fun b!7227031 () Bool)

(assert (=> b!7227031 (= e!4332260 (> lt!2572207 call!657750))))

(declare-fun b!7227032 () Bool)

(assert (=> b!7227032 (= e!4332261 1)))

(declare-fun b!7227033 () Bool)

(assert (=> b!7227033 (= e!4332263 1)))

(declare-fun b!7227034 () Bool)

(declare-fun c!1340715 () Bool)

(assert (=> b!7227034 (= c!1340715 ((_ is Star!18423) (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))

(assert (=> b!7227034 (= e!4332267 e!4332260)))

(declare-fun bm!657748 () Bool)

(assert (=> bm!657748 (= call!657752 (regexDepth!412 (ite c!1340714 (regOne!37359 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))) (regOne!37358 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))))))))

(declare-fun bm!657749 () Bool)

(assert (=> bm!657749 (= call!657749 (regexDepth!412 (ite c!1340716 (regOne!37359 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))) (ite c!1340710 (regOne!37358 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037))))) (reg!18752 (ite c!1340700 (regOne!37359 (h!76285 (exprs!7875 c!7037))) (regOne!37358 (h!76285 (exprs!7875 c!7037)))))))))))

(assert (= (and d!2244658 c!1340712) b!7227032))

(assert (= (and d!2244658 (not c!1340712)) b!7227025))

(assert (= (and b!7227025 c!1340713) b!7227030))

(assert (= (and b!7227025 (not c!1340713)) b!7227018))

(assert (= (and b!7227018 c!1340714) b!7227022))

(assert (= (and b!7227018 (not c!1340714)) b!7227020))

(assert (= (and b!7227020 c!1340711) b!7227019))

(assert (= (and b!7227020 (not c!1340711)) b!7227033))

(assert (= (or b!7227022 b!7227019) bm!657748))

(assert (= (or b!7227022 b!7227019) bm!657743))

(assert (= (or b!7227022 b!7227019) bm!657747))

(assert (= (or b!7227030 bm!657743) bm!657744))

(assert (= (and d!2244658 res!2932417) b!7227027))

(assert (= (and b!7227027 c!1340716) b!7227026))

(assert (= (and b!7227027 (not c!1340716)) b!7227029))

(assert (= (and b!7227026 res!2932419) b!7227023))

(assert (= (and b!7227029 c!1340710) b!7227028))

(assert (= (and b!7227029 (not c!1340710)) b!7227034))

(assert (= (and b!7227028 res!2932418) b!7227024))

(assert (= (and b!7227034 c!1340715) b!7227031))

(assert (= (and b!7227034 (not c!1340715)) b!7227021))

(assert (= (or b!7227028 b!7227031) bm!657745))

(assert (= (or b!7227026 bm!657745) bm!657749))

(assert (= (or b!7227023 b!7227024) bm!657746))

(declare-fun m!7896238 () Bool)

(assert (=> bm!657744 m!7896238))

(declare-fun m!7896240 () Bool)

(assert (=> bm!657749 m!7896240))

(declare-fun m!7896242 () Bool)

(assert (=> bm!657748 m!7896242))

(declare-fun m!7896244 () Bool)

(assert (=> bm!657746 m!7896244))

(declare-fun m!7896246 () Bool)

(assert (=> bm!657747 m!7896246))

(assert (=> bm!657734 d!2244658))

(declare-fun bm!657750 () Bool)

(declare-fun call!657755 () Int)

(declare-fun call!657761 () Int)

(assert (=> bm!657750 (= call!657755 call!657761)))

(declare-fun b!7227035 () Bool)

(declare-fun c!1340721 () Bool)

(assert (=> b!7227035 (= c!1340721 ((_ is Union!18423) (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun e!4332278 () Int)

(declare-fun e!4332274 () Int)

(assert (=> b!7227035 (= e!4332278 e!4332274)))

(declare-fun b!7227036 () Bool)

(declare-fun e!4332273 () Int)

(declare-fun call!657758 () Int)

(assert (=> b!7227036 (= e!4332273 (+ 1 call!657758))))

(declare-fun bm!657751 () Bool)

(declare-fun c!1340720 () Bool)

(assert (=> bm!657751 (= call!657761 (regexDepth!412 (ite c!1340720 (reg!18752 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))) (ite c!1340721 (regTwo!37359 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))) (regTwo!37358 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))))

(declare-fun bm!657753 () Bool)

(declare-fun c!1340723 () Bool)

(declare-fun call!657760 () Int)

(assert (=> bm!657753 (= call!657760 (regexDepth!412 (ite c!1340723 (regTwo!37359 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))) (regTwo!37358 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))))

(declare-fun b!7227037 () Bool)

(assert (=> b!7227037 (= e!4332274 e!4332273)))

(declare-fun c!1340718 () Bool)

(assert (=> b!7227037 (= c!1340718 ((_ is Concat!27268) (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun bm!657754 () Bool)

(declare-fun call!657759 () Int)

(assert (=> bm!657754 (= call!657758 (maxBigInt!0 call!657759 call!657755))))

(declare-fun b!7227038 () Bool)

(declare-fun e!4332270 () Bool)

(declare-fun lt!2572208 () Int)

(assert (=> b!7227038 (= e!4332270 (= lt!2572208 1))))

(declare-fun b!7227039 () Bool)

(assert (=> b!7227039 (= e!4332274 (+ 1 call!657758))))

(declare-fun b!7227040 () Bool)

(declare-fun e!4332276 () Bool)

(assert (=> b!7227040 (= e!4332276 (> lt!2572208 call!657760))))

(declare-fun b!7227041 () Bool)

(declare-fun e!4332272 () Bool)

(assert (=> b!7227041 (= e!4332272 (> lt!2572208 call!657760))))

(declare-fun b!7227042 () Bool)

(declare-fun e!4332271 () Int)

(assert (=> b!7227042 (= e!4332271 e!4332278)))

(assert (=> b!7227042 (= c!1340720 ((_ is Star!18423) (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun b!7227043 () Bool)

(declare-fun e!4332269 () Bool)

(assert (=> b!7227043 (= e!4332269 e!4332276)))

(declare-fun res!2932422 () Bool)

(declare-fun call!657756 () Int)

(assert (=> b!7227043 (= res!2932422 (> lt!2572208 call!657756))))

(assert (=> b!7227043 (=> (not res!2932422) (not e!4332276))))

(declare-fun b!7227044 () Bool)

(declare-fun e!4332275 () Bool)

(assert (=> b!7227044 (= e!4332275 e!4332269)))

(assert (=> b!7227044 (= c!1340723 ((_ is Union!18423) (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun b!7227045 () Bool)

(declare-fun res!2932421 () Bool)

(assert (=> b!7227045 (=> (not res!2932421) (not e!4332272))))

(declare-fun call!657757 () Int)

(assert (=> b!7227045 (= res!2932421 (> lt!2572208 call!657757))))

(declare-fun e!4332277 () Bool)

(assert (=> b!7227045 (= e!4332277 e!4332272)))

(declare-fun b!7227046 () Bool)

(assert (=> b!7227046 (= e!4332269 e!4332277)))

(declare-fun c!1340717 () Bool)

(assert (=> b!7227046 (= c!1340717 ((_ is Concat!27268) (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(declare-fun b!7227047 () Bool)

(assert (=> b!7227047 (= e!4332278 (+ 1 call!657761))))

(declare-fun bm!657752 () Bool)

(assert (=> bm!657752 (= call!657757 call!657756)))

(declare-fun d!2244660 () Bool)

(assert (=> d!2244660 e!4332275))

(declare-fun res!2932420 () Bool)

(assert (=> d!2244660 (=> (not res!2932420) (not e!4332275))))

(assert (=> d!2244660 (= res!2932420 (> lt!2572208 0))))

(assert (=> d!2244660 (= lt!2572208 e!4332271)))

(declare-fun c!1340719 () Bool)

(assert (=> d!2244660 (= c!1340719 ((_ is ElementMatch!18423) (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(assert (=> d!2244660 (= (regexDepth!412 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))) lt!2572208)))

(declare-fun b!7227048 () Bool)

(assert (=> b!7227048 (= e!4332270 (> lt!2572208 call!657757))))

(declare-fun b!7227049 () Bool)

(assert (=> b!7227049 (= e!4332271 1)))

(declare-fun b!7227050 () Bool)

(assert (=> b!7227050 (= e!4332273 1)))

(declare-fun b!7227051 () Bool)

(declare-fun c!1340722 () Bool)

(assert (=> b!7227051 (= c!1340722 ((_ is Star!18423) (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))

(assert (=> b!7227051 (= e!4332277 e!4332270)))

(declare-fun bm!657755 () Bool)

(assert (=> bm!657755 (= call!657759 (regexDepth!412 (ite c!1340721 (regOne!37359 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))) (regOne!37358 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))))

(declare-fun bm!657756 () Bool)

(assert (=> bm!657756 (= call!657756 (regexDepth!412 (ite c!1340723 (regOne!37359 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))) (ite c!1340717 (regOne!37358 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))) (reg!18752 (ite c!1340702 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))))

(assert (= (and d!2244660 c!1340719) b!7227049))

(assert (= (and d!2244660 (not c!1340719)) b!7227042))

(assert (= (and b!7227042 c!1340720) b!7227047))

(assert (= (and b!7227042 (not c!1340720)) b!7227035))

(assert (= (and b!7227035 c!1340721) b!7227039))

(assert (= (and b!7227035 (not c!1340721)) b!7227037))

(assert (= (and b!7227037 c!1340718) b!7227036))

(assert (= (and b!7227037 (not c!1340718)) b!7227050))

(assert (= (or b!7227039 b!7227036) bm!657755))

(assert (= (or b!7227039 b!7227036) bm!657750))

(assert (= (or b!7227039 b!7227036) bm!657754))

(assert (= (or b!7227047 bm!657750) bm!657751))

(assert (= (and d!2244660 res!2932420) b!7227044))

(assert (= (and b!7227044 c!1340723) b!7227043))

(assert (= (and b!7227044 (not c!1340723)) b!7227046))

(assert (= (and b!7227043 res!2932422) b!7227040))

(assert (= (and b!7227046 c!1340717) b!7227045))

(assert (= (and b!7227046 (not c!1340717)) b!7227051))

(assert (= (and b!7227045 res!2932421) b!7227041))

(assert (= (and b!7227051 c!1340722) b!7227048))

(assert (= (and b!7227051 (not c!1340722)) b!7227038))

(assert (= (or b!7227045 b!7227048) bm!657752))

(assert (= (or b!7227043 bm!657752) bm!657756))

(assert (= (or b!7227040 b!7227041) bm!657753))

(declare-fun m!7896248 () Bool)

(assert (=> bm!657751 m!7896248))

(declare-fun m!7896250 () Bool)

(assert (=> bm!657756 m!7896250))

(declare-fun m!7896252 () Bool)

(assert (=> bm!657755 m!7896252))

(declare-fun m!7896254 () Bool)

(assert (=> bm!657753 m!7896254))

(declare-fun m!7896256 () Bool)

(assert (=> bm!657754 m!7896256))

(assert (=> bm!657732 d!2244660))

(declare-fun d!2244662 () Bool)

(declare-fun res!2932423 () Bool)

(declare-fun e!4332279 () Bool)

(assert (=> d!2244662 (=> res!2932423 e!4332279)))

(assert (=> d!2244662 (= res!2932423 ((_ is Nil!69837) (exprs!7875 c!7037)))))

(assert (=> d!2244662 (= (forall!17248 (exprs!7875 c!7037) lambda!438627) e!4332279)))

(declare-fun b!7227052 () Bool)

(declare-fun e!4332280 () Bool)

(assert (=> b!7227052 (= e!4332279 e!4332280)))

(declare-fun res!2932424 () Bool)

(assert (=> b!7227052 (=> (not res!2932424) (not e!4332280))))

(assert (=> b!7227052 (= res!2932424 (dynLambda!28441 lambda!438627 (h!76285 (exprs!7875 c!7037))))))

(declare-fun b!7227053 () Bool)

(assert (=> b!7227053 (= e!4332280 (forall!17248 (t!383992 (exprs!7875 c!7037)) lambda!438627))))

(assert (= (and d!2244662 (not res!2932423)) b!7227052))

(assert (= (and b!7227052 res!2932424) b!7227053))

(declare-fun b_lambda!276705 () Bool)

(assert (=> (not b_lambda!276705) (not b!7227052)))

(declare-fun m!7896258 () Bool)

(assert (=> b!7227052 m!7896258))

(declare-fun m!7896260 () Bool)

(assert (=> b!7227053 m!7896260))

(assert (=> d!2244650 d!2244662))

(declare-fun bm!657757 () Bool)

(declare-fun call!657762 () Int)

(declare-fun call!657768 () Int)

(assert (=> bm!657757 (= call!657762 call!657768)))

(declare-fun c!1340728 () Bool)

(declare-fun b!7227054 () Bool)

(assert (=> b!7227054 (= c!1340728 ((_ is Union!18423) (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun e!4332290 () Int)

(declare-fun e!4332286 () Int)

(assert (=> b!7227054 (= e!4332290 e!4332286)))

(declare-fun b!7227055 () Bool)

(declare-fun e!4332285 () Int)

(declare-fun call!657765 () Int)

(assert (=> b!7227055 (= e!4332285 (+ 1 call!657765))))

(declare-fun bm!657758 () Bool)

(declare-fun c!1340727 () Bool)

(assert (=> bm!657758 (= call!657768 (regexDepth!412 (ite c!1340727 (reg!18752 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))) (ite c!1340728 (regTwo!37359 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))) (regTwo!37358 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))))))

(declare-fun bm!657760 () Bool)

(declare-fun c!1340730 () Bool)

(declare-fun call!657767 () Int)

(assert (=> bm!657760 (= call!657767 (regexDepth!412 (ite c!1340730 (regTwo!37359 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))) (regTwo!37358 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))))

(declare-fun b!7227056 () Bool)

(assert (=> b!7227056 (= e!4332286 e!4332285)))

(declare-fun c!1340725 () Bool)

(assert (=> b!7227056 (= c!1340725 ((_ is Concat!27268) (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun bm!657761 () Bool)

(declare-fun call!657766 () Int)

(assert (=> bm!657761 (= call!657765 (maxBigInt!0 call!657766 call!657762))))

(declare-fun b!7227057 () Bool)

(declare-fun e!4332282 () Bool)

(declare-fun lt!2572209 () Int)

(assert (=> b!7227057 (= e!4332282 (= lt!2572209 1))))

(declare-fun b!7227058 () Bool)

(assert (=> b!7227058 (= e!4332286 (+ 1 call!657765))))

(declare-fun b!7227059 () Bool)

(declare-fun e!4332288 () Bool)

(assert (=> b!7227059 (= e!4332288 (> lt!2572209 call!657767))))

(declare-fun b!7227060 () Bool)

(declare-fun e!4332284 () Bool)

(assert (=> b!7227060 (= e!4332284 (> lt!2572209 call!657767))))

(declare-fun b!7227061 () Bool)

(declare-fun e!4332283 () Int)

(assert (=> b!7227061 (= e!4332283 e!4332290)))

(assert (=> b!7227061 (= c!1340727 ((_ is Star!18423) (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun b!7227062 () Bool)

(declare-fun e!4332281 () Bool)

(assert (=> b!7227062 (= e!4332281 e!4332288)))

(declare-fun res!2932427 () Bool)

(declare-fun call!657763 () Int)

(assert (=> b!7227062 (= res!2932427 (> lt!2572209 call!657763))))

(assert (=> b!7227062 (=> (not res!2932427) (not e!4332288))))

(declare-fun b!7227063 () Bool)

(declare-fun e!4332287 () Bool)

(assert (=> b!7227063 (= e!4332287 e!4332281)))

(assert (=> b!7227063 (= c!1340730 ((_ is Union!18423) (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun b!7227064 () Bool)

(declare-fun res!2932426 () Bool)

(assert (=> b!7227064 (=> (not res!2932426) (not e!4332284))))

(declare-fun call!657764 () Int)

(assert (=> b!7227064 (= res!2932426 (> lt!2572209 call!657764))))

(declare-fun e!4332289 () Bool)

(assert (=> b!7227064 (= e!4332289 e!4332284)))

(declare-fun b!7227065 () Bool)

(assert (=> b!7227065 (= e!4332281 e!4332289)))

(declare-fun c!1340724 () Bool)

(assert (=> b!7227065 (= c!1340724 ((_ is Concat!27268) (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(declare-fun b!7227066 () Bool)

(assert (=> b!7227066 (= e!4332290 (+ 1 call!657768))))

(declare-fun bm!657759 () Bool)

(assert (=> bm!657759 (= call!657764 call!657763)))

(declare-fun d!2244664 () Bool)

(assert (=> d!2244664 e!4332287))

(declare-fun res!2932425 () Bool)

(assert (=> d!2244664 (=> (not res!2932425) (not e!4332287))))

(assert (=> d!2244664 (= res!2932425 (> lt!2572209 0))))

(assert (=> d!2244664 (= lt!2572209 e!4332283)))

(declare-fun c!1340726 () Bool)

(assert (=> d!2244664 (= c!1340726 ((_ is ElementMatch!18423) (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(assert (=> d!2244664 (= (regexDepth!412 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))) lt!2572209)))

(declare-fun b!7227067 () Bool)

(assert (=> b!7227067 (= e!4332282 (> lt!2572209 call!657764))))

(declare-fun b!7227068 () Bool)

(assert (=> b!7227068 (= e!4332283 1)))

(declare-fun b!7227069 () Bool)

(assert (=> b!7227069 (= e!4332285 1)))

(declare-fun c!1340729 () Bool)

(declare-fun b!7227070 () Bool)

(assert (=> b!7227070 (= c!1340729 ((_ is Star!18423) (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))

(assert (=> b!7227070 (= e!4332289 e!4332282)))

(declare-fun bm!657762 () Bool)

(assert (=> bm!657762 (= call!657766 (regexDepth!412 (ite c!1340728 (regOne!37359 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))) (regOne!37358 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))))))))

(declare-fun bm!657763 () Bool)

(assert (=> bm!657763 (= call!657763 (regexDepth!412 (ite c!1340730 (regOne!37359 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))) (ite c!1340724 (regOne!37358 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037)))))) (reg!18752 (ite c!1340699 (reg!18752 (h!76285 (exprs!7875 c!7037))) (ite c!1340700 (regTwo!37359 (h!76285 (exprs!7875 c!7037))) (regTwo!37358 (h!76285 (exprs!7875 c!7037))))))))))))

(assert (= (and d!2244664 c!1340726) b!7227068))

(assert (= (and d!2244664 (not c!1340726)) b!7227061))

(assert (= (and b!7227061 c!1340727) b!7227066))

(assert (= (and b!7227061 (not c!1340727)) b!7227054))

(assert (= (and b!7227054 c!1340728) b!7227058))

(assert (= (and b!7227054 (not c!1340728)) b!7227056))

(assert (= (and b!7227056 c!1340725) b!7227055))

(assert (= (and b!7227056 (not c!1340725)) b!7227069))

(assert (= (or b!7227058 b!7227055) bm!657762))

(assert (= (or b!7227058 b!7227055) bm!657757))

(assert (= (or b!7227058 b!7227055) bm!657761))

(assert (= (or b!7227066 bm!657757) bm!657758))

(assert (= (and d!2244664 res!2932425) b!7227063))

(assert (= (and b!7227063 c!1340730) b!7227062))

(assert (= (and b!7227063 (not c!1340730)) b!7227065))

(assert (= (and b!7227062 res!2932427) b!7227059))

(assert (= (and b!7227065 c!1340724) b!7227064))

(assert (= (and b!7227065 (not c!1340724)) b!7227070))

(assert (= (and b!7227064 res!2932426) b!7227060))

(assert (= (and b!7227070 c!1340729) b!7227067))

(assert (= (and b!7227070 (not c!1340729)) b!7227057))

(assert (= (or b!7227064 b!7227067) bm!657759))

(assert (= (or b!7227062 bm!657759) bm!657763))

(assert (= (or b!7227059 b!7227060) bm!657760))

(declare-fun m!7896262 () Bool)

(assert (=> bm!657758 m!7896262))

(declare-fun m!7896264 () Bool)

(assert (=> bm!657763 m!7896264))

(declare-fun m!7896266 () Bool)

(assert (=> bm!657762 m!7896266))

(declare-fun m!7896268 () Bool)

(assert (=> bm!657760 m!7896268))

(declare-fun m!7896270 () Bool)

(assert (=> bm!657761 m!7896270))

(assert (=> bm!657730 d!2244664))

(declare-fun e!4332293 () Bool)

(assert (=> b!7226993 (= tp!2032489 e!4332293)))

(declare-fun b!7227083 () Bool)

(declare-fun tp!2032503 () Bool)

(assert (=> b!7227083 (= e!4332293 tp!2032503)))

(declare-fun b!7227084 () Bool)

(declare-fun tp!2032501 () Bool)

(declare-fun tp!2032505 () Bool)

(assert (=> b!7227084 (= e!4332293 (and tp!2032501 tp!2032505))))

(declare-fun b!7227082 () Bool)

(declare-fun tp!2032502 () Bool)

(declare-fun tp!2032504 () Bool)

(assert (=> b!7227082 (= e!4332293 (and tp!2032502 tp!2032504))))

(declare-fun b!7227081 () Bool)

(declare-fun tp_is_empty!46361 () Bool)

(assert (=> b!7227081 (= e!4332293 tp_is_empty!46361)))

(assert (= (and b!7226993 ((_ is ElementMatch!18423) (h!76285 (exprs!7875 c!7037)))) b!7227081))

(assert (= (and b!7226993 ((_ is Concat!27268) (h!76285 (exprs!7875 c!7037)))) b!7227082))

(assert (= (and b!7226993 ((_ is Star!18423) (h!76285 (exprs!7875 c!7037)))) b!7227083))

(assert (= (and b!7226993 ((_ is Union!18423) (h!76285 (exprs!7875 c!7037)))) b!7227084))

(declare-fun b!7227085 () Bool)

(declare-fun e!4332294 () Bool)

(declare-fun tp!2032506 () Bool)

(declare-fun tp!2032507 () Bool)

(assert (=> b!7227085 (= e!4332294 (and tp!2032506 tp!2032507))))

(assert (=> b!7226993 (= tp!2032490 e!4332294)))

(assert (= (and b!7226993 ((_ is Cons!69837) (t!383992 (exprs!7875 c!7037)))) b!7227085))

(declare-fun b_lambda!276707 () Bool)

(assert (= b_lambda!276703 (or d!2244646 b_lambda!276707)))

(declare-fun bs!1902035 () Bool)

(declare-fun d!2244666 () Bool)

(assert (= bs!1902035 (and d!2244666 d!2244646)))

(declare-fun validRegex!9494 (Regex!18423) Bool)

(assert (=> bs!1902035 (= (dynLambda!28441 lambda!438626 (h!76285 (exprs!7875 (Context!14751 (t!383992 (exprs!7875 c!7037)))))) (validRegex!9494 (h!76285 (exprs!7875 (Context!14751 (t!383992 (exprs!7875 c!7037)))))))))

(declare-fun m!7896272 () Bool)

(assert (=> bs!1902035 m!7896272))

(assert (=> b!7226998 d!2244666))

(declare-fun b_lambda!276709 () Bool)

(assert (= b_lambda!276705 (or d!2244650 b_lambda!276709)))

(declare-fun bs!1902036 () Bool)

(declare-fun d!2244668 () Bool)

(assert (= bs!1902036 (and d!2244668 d!2244650)))

(assert (=> bs!1902036 (= (dynLambda!28441 lambda!438627 (h!76285 (exprs!7875 c!7037))) (validRegex!9494 (h!76285 (exprs!7875 c!7037))))))

(declare-fun m!7896274 () Bool)

(assert (=> bs!1902036 m!7896274))

(assert (=> b!7227052 d!2244668))

(check-sat (not bm!657739) (not bm!657754) (not bm!657741) (not bm!657749) (not bm!657746) (not b!7227085) (not b!7227084) (not bm!657758) (not bs!1902035) (not bm!657761) (not bm!657756) (not bm!657755) (not bm!657748) (not bm!657744) (not bs!1902036) (not bm!657763) (not bm!657747) (not b!7227083) (not b!7226999) (not bm!657742) (not bm!657740) (not b_lambda!276709) (not b_lambda!276707) (not b!7227053) (not bm!657760) (not bm!657737) (not bm!657753) (not bm!657762) (not b!7227082) (not bm!657751) tp_is_empty!46361)
(check-sat)
