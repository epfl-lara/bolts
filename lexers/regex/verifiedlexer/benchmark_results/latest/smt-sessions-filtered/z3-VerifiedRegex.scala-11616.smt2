; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!646154 () Bool)

(assert start!646154)

(declare-fun b!6610687 () Bool)

(assert (=> b!6610687 true))

(assert (=> b!6610687 true))

(declare-fun lambda!369138 () Int)

(declare-fun lambda!369137 () Int)

(assert (=> b!6610687 (not (= lambda!369138 lambda!369137))))

(assert (=> b!6610687 true))

(assert (=> b!6610687 true))

(declare-fun b!6610700 () Bool)

(assert (=> b!6610700 true))

(declare-fun bs!1695224 () Bool)

(declare-fun b!6610705 () Bool)

(assert (= bs!1695224 (and b!6610705 b!6610687)))

(declare-datatypes ((C!33228 0))(
  ( (C!33229 (val!26316 Int)) )
))
(declare-datatypes ((Regex!16479 0))(
  ( (ElementMatch!16479 (c!1218370 C!33228)) (Concat!25324 (regOne!33470 Regex!16479) (regTwo!33470 Regex!16479)) (EmptyExpr!16479) (Star!16479 (reg!16808 Regex!16479)) (EmptyLang!16479) (Union!16479 (regOne!33471 Regex!16479) (regTwo!33471 Regex!16479)) )
))
(declare-fun r!7292 () Regex!16479)

(declare-fun lt!2416568 () Regex!16479)

(declare-fun lambda!369140 () Int)

(assert (=> bs!1695224 (= (= lt!2416568 (regOne!33470 r!7292)) (= lambda!369140 lambda!369137))))

(assert (=> bs!1695224 (not (= lambda!369140 lambda!369138))))

(assert (=> b!6610705 true))

(assert (=> b!6610705 true))

(assert (=> b!6610705 true))

(declare-fun lambda!369141 () Int)

(assert (=> bs!1695224 (not (= lambda!369141 lambda!369137))))

(assert (=> bs!1695224 (= (= lt!2416568 (regOne!33470 r!7292)) (= lambda!369141 lambda!369138))))

(assert (=> b!6610705 (not (= lambda!369141 lambda!369140))))

(assert (=> b!6610705 true))

(assert (=> b!6610705 true))

(assert (=> b!6610705 true))

(declare-fun bs!1695225 () Bool)

(declare-fun b!6610698 () Bool)

(assert (= bs!1695225 (and b!6610698 b!6610687)))

(declare-datatypes ((List!65736 0))(
  ( (Nil!65612) (Cons!65612 (h!72060 C!33228) (t!379390 List!65736)) )
))
(declare-datatypes ((tuple2!66916 0))(
  ( (tuple2!66917 (_1!36761 List!65736) (_2!36761 List!65736)) )
))
(declare-fun lt!2416554 () tuple2!66916)

(declare-fun lambda!369142 () Int)

(declare-fun s!2326 () List!65736)

(assert (=> bs!1695225 (= (and (= (_1!36761 lt!2416554) s!2326) (= (reg!16808 (regOne!33470 r!7292)) (regOne!33470 r!7292)) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369142 lambda!369137))))

(assert (=> bs!1695225 (not (= lambda!369142 lambda!369138))))

(declare-fun bs!1695226 () Bool)

(assert (= bs!1695226 (and b!6610698 b!6610705)))

(assert (=> bs!1695226 (= (and (= (_1!36761 lt!2416554) s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416568) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369142 lambda!369140))))

(assert (=> bs!1695226 (not (= lambda!369142 lambda!369141))))

(assert (=> b!6610698 true))

(assert (=> b!6610698 true))

(assert (=> b!6610698 true))

(declare-fun lambda!369143 () Int)

(assert (=> bs!1695226 (not (= lambda!369143 lambda!369140))))

(assert (=> bs!1695226 (not (= lambda!369143 lambda!369141))))

(assert (=> bs!1695225 (not (= lambda!369143 lambda!369138))))

(assert (=> bs!1695225 (not (= lambda!369143 lambda!369137))))

(assert (=> b!6610698 (not (= lambda!369143 lambda!369142))))

(assert (=> b!6610698 true))

(assert (=> b!6610698 true))

(assert (=> b!6610698 true))

(declare-fun lambda!369144 () Int)

(assert (=> bs!1695226 (not (= lambda!369144 lambda!369140))))

(assert (=> bs!1695226 (= (and (= (_1!36761 lt!2416554) s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416568) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369144 lambda!369141))))

(assert (=> bs!1695225 (= (and (= (_1!36761 lt!2416554) s!2326) (= (reg!16808 (regOne!33470 r!7292)) (regOne!33470 r!7292)) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369144 lambda!369138))))

(assert (=> b!6610698 (not (= lambda!369144 lambda!369143))))

(assert (=> bs!1695225 (not (= lambda!369144 lambda!369137))))

(assert (=> b!6610698 (not (= lambda!369144 lambda!369142))))

(assert (=> b!6610698 true))

(assert (=> b!6610698 true))

(assert (=> b!6610698 true))

(declare-fun b!6610683 () Bool)

(assert (=> b!6610683 true))

(declare-fun bs!1695227 () Bool)

(assert (= bs!1695227 (and b!6610683 b!6610698)))

(declare-fun lambda!369147 () Int)

(declare-fun lambda!369145 () Int)

(assert (=> bs!1695227 (= lambda!369147 lambda!369145)))

(declare-fun bs!1695228 () Bool)

(assert (= bs!1695228 (and b!6610683 b!6610705)))

(declare-fun lambda!369148 () Int)

(declare-fun lt!2416541 () Regex!16479)

(assert (=> bs!1695228 (= (= lt!2416541 lt!2416568) (= lambda!369148 lambda!369140))))

(assert (=> bs!1695227 (not (= lambda!369148 lambda!369144))))

(assert (=> bs!1695228 (not (= lambda!369148 lambda!369141))))

(declare-fun bs!1695229 () Bool)

(assert (= bs!1695229 (and b!6610683 b!6610687)))

(assert (=> bs!1695229 (not (= lambda!369148 lambda!369138))))

(assert (=> bs!1695227 (not (= lambda!369148 lambda!369143))))

(assert (=> bs!1695229 (= (= lt!2416541 (regOne!33470 r!7292)) (= lambda!369148 lambda!369137))))

(assert (=> bs!1695227 (= (and (= s!2326 (_1!36761 lt!2416554)) (= lt!2416541 (reg!16808 (regOne!33470 r!7292))) (= (regTwo!33470 r!7292) lt!2416568)) (= lambda!369148 lambda!369142))))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(declare-fun lambda!369149 () Int)

(assert (=> bs!1695228 (not (= lambda!369149 lambda!369140))))

(assert (=> bs!1695227 (= (and (= s!2326 (_1!36761 lt!2416554)) (= lt!2416541 (reg!16808 (regOne!33470 r!7292))) (= (regTwo!33470 r!7292) lt!2416568)) (= lambda!369149 lambda!369144))))

(assert (=> bs!1695228 (= (= lt!2416541 lt!2416568) (= lambda!369149 lambda!369141))))

(assert (=> bs!1695229 (= (= lt!2416541 (regOne!33470 r!7292)) (= lambda!369149 lambda!369138))))

(assert (=> bs!1695227 (not (= lambda!369149 lambda!369143))))

(assert (=> b!6610683 (not (= lambda!369149 lambda!369148))))

(assert (=> bs!1695229 (not (= lambda!369149 lambda!369137))))

(assert (=> bs!1695227 (not (= lambda!369149 lambda!369142))))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(declare-fun lambda!369150 () Int)

(declare-fun lt!2416550 () tuple2!66916)

(assert (=> bs!1695228 (= (and (= (_1!36761 lt!2416550) s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416568) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369150 lambda!369140))))

(assert (=> bs!1695227 (not (= lambda!369150 lambda!369144))))

(assert (=> bs!1695228 (not (= lambda!369150 lambda!369141))))

(assert (=> b!6610683 (not (= lambda!369150 lambda!369149))))

(assert (=> bs!1695229 (not (= lambda!369150 lambda!369138))))

(assert (=> bs!1695227 (not (= lambda!369150 lambda!369143))))

(assert (=> b!6610683 (= (and (= (_1!36761 lt!2416550) s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416541) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369150 lambda!369148))))

(assert (=> bs!1695229 (= (and (= (_1!36761 lt!2416550) s!2326) (= (reg!16808 (regOne!33470 r!7292)) (regOne!33470 r!7292)) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369150 lambda!369137))))

(assert (=> bs!1695227 (= (= (_1!36761 lt!2416550) (_1!36761 lt!2416554)) (= lambda!369150 lambda!369142))))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(declare-fun lambda!369151 () Int)

(assert (=> bs!1695228 (not (= lambda!369151 lambda!369140))))

(assert (=> bs!1695227 (= (= (_1!36761 lt!2416550) (_1!36761 lt!2416554)) (= lambda!369151 lambda!369144))))

(assert (=> bs!1695228 (= (and (= (_1!36761 lt!2416550) s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416568) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369151 lambda!369141))))

(assert (=> b!6610683 (not (= lambda!369151 lambda!369150))))

(assert (=> b!6610683 (= (and (= (_1!36761 lt!2416550) s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416541) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369151 lambda!369149))))

(assert (=> bs!1695229 (= (and (= (_1!36761 lt!2416550) s!2326) (= (reg!16808 (regOne!33470 r!7292)) (regOne!33470 r!7292)) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369151 lambda!369138))))

(assert (=> bs!1695227 (not (= lambda!369151 lambda!369143))))

(assert (=> b!6610683 (not (= lambda!369151 lambda!369148))))

(assert (=> bs!1695229 (not (= lambda!369151 lambda!369137))))

(assert (=> bs!1695227 (not (= lambda!369151 lambda!369142))))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(declare-fun lambda!369152 () Int)

(assert (=> bs!1695228 (not (= lambda!369152 lambda!369140))))

(assert (=> bs!1695227 (not (= lambda!369152 lambda!369144))))

(assert (=> bs!1695228 (not (= lambda!369152 lambda!369141))))

(assert (=> b!6610683 (not (= lambda!369152 lambda!369150))))

(assert (=> b!6610683 (not (= lambda!369152 lambda!369149))))

(assert (=> bs!1695229 (not (= lambda!369152 lambda!369138))))

(assert (=> bs!1695227 (= (= (_1!36761 lt!2416550) (_1!36761 lt!2416554)) (= lambda!369152 lambda!369143))))

(assert (=> b!6610683 (not (= lambda!369152 lambda!369148))))

(assert (=> bs!1695229 (not (= lambda!369152 lambda!369137))))

(assert (=> bs!1695227 (not (= lambda!369152 lambda!369142))))

(assert (=> b!6610683 (not (= lambda!369152 lambda!369151))))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(assert (=> b!6610683 true))

(declare-fun bs!1695230 () Bool)

(declare-fun b!6610674 () Bool)

(assert (= bs!1695230 (and b!6610674 b!6610705)))

(declare-fun lambda!369153 () Int)

(assert (=> bs!1695230 (= (and (= Nil!65612 s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416568) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369153 lambda!369140))))

(declare-fun bs!1695231 () Bool)

(assert (= bs!1695231 (and b!6610674 b!6610698)))

(assert (=> bs!1695231 (not (= lambda!369153 lambda!369144))))

(assert (=> bs!1695230 (not (= lambda!369153 lambda!369141))))

(declare-fun bs!1695232 () Bool)

(assert (= bs!1695232 (and b!6610674 b!6610683)))

(assert (=> bs!1695232 (= (= Nil!65612 (_1!36761 lt!2416550)) (= lambda!369153 lambda!369150))))

(assert (=> bs!1695232 (not (= lambda!369153 lambda!369152))))

(assert (=> bs!1695232 (not (= lambda!369153 lambda!369149))))

(declare-fun bs!1695233 () Bool)

(assert (= bs!1695233 (and b!6610674 b!6610687)))

(assert (=> bs!1695233 (not (= lambda!369153 lambda!369138))))

(assert (=> bs!1695231 (not (= lambda!369153 lambda!369143))))

(assert (=> bs!1695232 (= (and (= Nil!65612 s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416541) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369153 lambda!369148))))

(assert (=> bs!1695233 (= (and (= Nil!65612 s!2326) (= (reg!16808 (regOne!33470 r!7292)) (regOne!33470 r!7292)) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369153 lambda!369137))))

(assert (=> bs!1695231 (= (= Nil!65612 (_1!36761 lt!2416554)) (= lambda!369153 lambda!369142))))

(assert (=> bs!1695232 (not (= lambda!369153 lambda!369151))))

(assert (=> b!6610674 true))

(assert (=> b!6610674 true))

(declare-fun lambda!369154 () Int)

(assert (=> bs!1695230 (not (= lambda!369154 lambda!369140))))

(assert (=> bs!1695231 (= (= Nil!65612 (_1!36761 lt!2416554)) (= lambda!369154 lambda!369144))))

(assert (=> bs!1695230 (= (and (= Nil!65612 s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416568) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369154 lambda!369141))))

(assert (=> bs!1695232 (not (= lambda!369154 lambda!369150))))

(assert (=> bs!1695232 (not (= lambda!369154 lambda!369152))))

(assert (=> b!6610674 (not (= lambda!369154 lambda!369153))))

(assert (=> bs!1695232 (= (and (= Nil!65612 s!2326) (= (reg!16808 (regOne!33470 r!7292)) lt!2416541) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369154 lambda!369149))))

(assert (=> bs!1695233 (= (and (= Nil!65612 s!2326) (= (reg!16808 (regOne!33470 r!7292)) (regOne!33470 r!7292)) (= lt!2416568 (regTwo!33470 r!7292))) (= lambda!369154 lambda!369138))))

(assert (=> bs!1695231 (not (= lambda!369154 lambda!369143))))

(assert (=> bs!1695232 (not (= lambda!369154 lambda!369148))))

(assert (=> bs!1695233 (not (= lambda!369154 lambda!369137))))

(assert (=> bs!1695231 (not (= lambda!369154 lambda!369142))))

(assert (=> bs!1695232 (= (= Nil!65612 (_1!36761 lt!2416550)) (= lambda!369154 lambda!369151))))

(assert (=> b!6610674 true))

(assert (=> b!6610674 true))

(declare-fun lambda!369155 () Int)

(assert (=> bs!1695230 (not (= lambda!369155 lambda!369140))))

(assert (=> bs!1695231 (not (= lambda!369155 lambda!369144))))

(assert (=> bs!1695230 (not (= lambda!369155 lambda!369141))))

(assert (=> bs!1695232 (not (= lambda!369155 lambda!369150))))

(assert (=> bs!1695232 (= (= Nil!65612 (_1!36761 lt!2416550)) (= lambda!369155 lambda!369152))))

(assert (=> b!6610674 (not (= lambda!369155 lambda!369153))))

(assert (=> bs!1695232 (not (= lambda!369155 lambda!369149))))

(assert (=> bs!1695233 (not (= lambda!369155 lambda!369138))))

(assert (=> bs!1695231 (= (= Nil!65612 (_1!36761 lt!2416554)) (= lambda!369155 lambda!369143))))

(assert (=> b!6610674 (not (= lambda!369155 lambda!369154))))

(assert (=> bs!1695232 (not (= lambda!369155 lambda!369148))))

(assert (=> bs!1695233 (not (= lambda!369155 lambda!369137))))

(assert (=> bs!1695231 (not (= lambda!369155 lambda!369142))))

(assert (=> bs!1695232 (not (= lambda!369155 lambda!369151))))

(assert (=> b!6610674 true))

(assert (=> b!6610674 true))

(declare-datatypes ((Option!16370 0))(
  ( (None!16369) (Some!16369 (v!52558 tuple2!66916)) )
))
(declare-fun lt!2416560 () Option!16370)

(declare-fun c!1218367 () Bool)

(declare-fun lt!2416519 () Option!16370)

(declare-fun bm!579040 () Bool)

(declare-fun call!579069 () Bool)

(declare-fun isDefined!13073 (Option!16370) Bool)

(assert (=> bm!579040 (= call!579069 (isDefined!13073 (ite c!1218367 lt!2416560 lt!2416519)))))

(declare-fun b!6610671 () Bool)

(declare-fun e!3999602 () Bool)

(declare-fun e!3999585 () Bool)

(assert (=> b!6610671 (= e!3999602 e!3999585)))

(declare-fun res!2710848 () Bool)

(assert (=> b!6610671 (=> res!2710848 e!3999585)))

(declare-datatypes ((List!65737 0))(
  ( (Nil!65613) (Cons!65613 (h!72061 Regex!16479) (t!379391 List!65737)) )
))
(declare-datatypes ((Context!11726 0))(
  ( (Context!11727 (exprs!6363 List!65737)) )
))
(declare-datatypes ((List!65738 0))(
  ( (Nil!65614) (Cons!65614 (h!72062 Context!11726) (t!379392 List!65738)) )
))
(declare-fun lt!2416532 () List!65738)

(declare-fun lt!2416595 () Regex!16479)

(declare-fun unfocusZipper!2221 (List!65738) Regex!16479)

(assert (=> b!6610671 (= res!2710848 (not (= (unfocusZipper!2221 lt!2416532) lt!2416595)))))

(declare-fun lt!2416523 () Context!11726)

(assert (=> b!6610671 (= lt!2416532 (Cons!65614 lt!2416523 Nil!65614))))

(declare-fun b!6610672 () Bool)

(declare-fun e!3999601 () Bool)

(declare-fun lt!2416594 () Bool)

(assert (=> b!6610672 (= e!3999601 lt!2416594)))

(declare-fun b!6610673 () Bool)

(declare-datatypes ((Unit!159264 0))(
  ( (Unit!159265) )
))
(declare-fun e!3999609 () Unit!159264)

(declare-fun Unit!159266 () Unit!159264)

(assert (=> b!6610673 (= e!3999609 Unit!159266)))

(declare-fun e!3999610 () Unit!159264)

(declare-fun Unit!159267 () Unit!159264)

(assert (=> b!6610674 (= e!3999610 Unit!159267)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2416534 () (InoxSet Context!11726))

(declare-fun lt!2416503 () Context!11726)

(assert (=> b!6610674 (= lt!2416534 (store ((as const (Array Context!11726 Bool)) false) lt!2416503 true))))

(declare-fun lt!2416513 () Unit!159264)

(declare-fun call!579109 () Unit!159264)

(assert (=> b!6610674 (= lt!2416513 call!579109)))

(declare-fun call!579103 () (InoxSet Context!11726))

(declare-fun call!579055 () (InoxSet Context!11726))

(assert (=> b!6610674 (= call!579103 call!579055)))

(declare-fun lt!2416584 () Regex!16479)

(declare-fun call!579077 () Regex!16479)

(assert (=> b!6610674 (= lt!2416584 call!579077)))

(declare-fun lt!2416545 () Unit!159264)

(declare-fun call!579093 () Unit!159264)

(assert (=> b!6610674 (= lt!2416545 call!579093)))

(declare-fun call!579076 () Bool)

(declare-fun call!579114 () Bool)

(assert (=> b!6610674 (= call!579076 call!579114)))

(declare-fun lt!2416537 () Unit!159264)

(declare-fun call!579091 () Unit!159264)

(assert (=> b!6610674 (= lt!2416537 call!579091)))

(declare-fun call!579071 () Bool)

(declare-fun call!579086 () Bool)

(assert (=> b!6610674 (= call!579071 call!579086)))

(declare-fun lt!2416578 () Unit!159264)

(declare-fun call!579104 () Unit!159264)

(assert (=> b!6610674 (= lt!2416578 call!579104)))

(declare-fun call!579060 () Bool)

(declare-fun call!579079 () Bool)

(assert (=> b!6610674 (= call!579060 call!579079)))

(declare-fun lt!2416516 () Unit!159264)

(declare-fun call!579112 () Unit!159264)

(assert (=> b!6610674 (= lt!2416516 call!579112)))

(declare-fun call!579115 () Bool)

(declare-fun call!579048 () Bool)

(assert (=> b!6610674 (= call!579115 call!579048)))

(declare-fun lt!2416592 () Unit!159264)

(declare-fun call!579111 () Unit!159264)

(assert (=> b!6610674 (= lt!2416592 call!579111)))

(declare-fun call!579050 () Bool)

(declare-fun call!579058 () Bool)

(assert (=> b!6610674 (= call!579050 call!579058)))

(declare-fun lt!2416557 () Unit!159264)

(declare-fun call!579081 () Unit!159264)

(assert (=> b!6610674 (= lt!2416557 call!579081)))

(declare-fun res!2710857 () Bool)

(declare-fun call!579097 () Bool)

(assert (=> b!6610674 (= res!2710857 call!579097)))

(declare-fun e!3999606 () Bool)

(assert (=> b!6610674 (=> (not res!2710857) (not e!3999606))))

(assert (=> b!6610674 e!3999606))

(declare-fun lt!2416527 () (InoxSet Context!11726))

(declare-fun lt!2416509 () (InoxSet Context!11726))

(declare-fun c!1218365 () Bool)

(declare-fun c!1218366 () Bool)

(declare-fun call!579046 () Bool)

(declare-fun lt!2416555 () tuple2!66916)

(declare-fun bm!579041 () Bool)

(declare-fun lt!2416561 () tuple2!66916)

(declare-fun matchZipper!2491 ((InoxSet Context!11726) List!65736) Bool)

(assert (=> bm!579041 (= call!579046 (matchZipper!2491 (ite c!1218367 (ite c!1218366 lt!2416527 lt!2416509) (ite c!1218365 lt!2416509 lt!2416534)) (ite c!1218367 (ite c!1218366 s!2326 (_1!36761 lt!2416555)) (ite c!1218365 (_1!36761 lt!2416561) s!2326))))))

(declare-fun b!6610675 () Bool)

(declare-fun e!3999599 () Bool)

(declare-fun tp!1821054 () Bool)

(declare-fun tp!1821053 () Bool)

(assert (=> b!6610675 (= e!3999599 (and tp!1821054 tp!1821053))))

(declare-fun bm!579042 () Bool)

(declare-fun call!579082 () List!65737)

(declare-fun lt!2416583 () List!65737)

(declare-fun lt!2416525 () List!65737)

(declare-fun ++!14628 (List!65737 List!65737) List!65737)

(assert (=> bm!579042 (= call!579082 (++!14628 lt!2416583 lt!2416525))))

(declare-fun b!6610676 () Bool)

(declare-fun res!2710852 () Bool)

(declare-fun e!3999603 () Bool)

(assert (=> b!6610676 (=> res!2710852 e!3999603)))

(declare-fun zl!343 () List!65738)

(get-info :version)

(assert (=> b!6610676 (= res!2710852 (not ((_ is Cons!65613) (exprs!6363 (h!72062 zl!343)))))))

(declare-fun bm!579043 () Bool)

(declare-fun generalisedConcat!2076 (List!65737) Regex!16479)

(assert (=> bm!579043 (= call!579077 (generalisedConcat!2076 (t!379391 (exprs!6363 (h!72062 zl!343)))))))

(declare-fun bm!579044 () Bool)

(declare-fun call!579047 () Unit!159264)

(assert (=> bm!579044 (= call!579104 call!579047)))

(declare-fun b!6610677 () Bool)

(declare-fun res!2710845 () Bool)

(assert (=> b!6610677 (=> res!2710845 e!3999603)))

(assert (=> b!6610677 (= res!2710845 (or ((_ is EmptyExpr!16479) r!7292) ((_ is EmptyLang!16479) r!7292) ((_ is ElementMatch!16479) r!7292) ((_ is Union!16479) r!7292) (not ((_ is Concat!25324) r!7292))))))

(declare-fun bm!579045 () Bool)

(declare-fun call!579064 () Unit!159264)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2086 (Regex!16479 Regex!16479 List!65736) Unit!159264)

(assert (=> bm!579045 (= call!579064 (lemmaExistCutMatchRandMatchRSpecEquivalent!2086 (ite c!1218367 (reg!16808 (regOne!33470 r!7292)) lt!2416541) (ite c!1218367 lt!2416568 (regTwo!33470 r!7292)) (ite c!1218367 (_1!36761 lt!2416554) s!2326)))))

(declare-fun b!6610678 () Bool)

(declare-fun res!2710854 () Bool)

(declare-fun e!3999593 () Bool)

(assert (=> b!6610678 (=> res!2710854 e!3999593)))

(declare-fun e!3999608 () Bool)

(assert (=> b!6610678 (= res!2710854 e!3999608)))

(declare-fun res!2710835 () Bool)

(assert (=> b!6610678 (=> (not res!2710835) (not e!3999608))))

(assert (=> b!6610678 (= res!2710835 ((_ is Concat!25324) (regOne!33470 r!7292)))))

(declare-fun b!6610679 () Bool)

(declare-fun e!3999589 () Bool)

(declare-fun call!579099 () Bool)

(assert (=> b!6610679 (= e!3999589 call!579099)))

(declare-fun b!6610680 () Bool)

(declare-fun res!2710842 () Bool)

(assert (=> b!6610680 (=> res!2710842 e!3999603)))

(declare-fun generalisedUnion!2323 (List!65737) Regex!16479)

(declare-fun unfocusZipperList!1900 (List!65738) List!65737)

(assert (=> b!6610680 (= res!2710842 (not (= r!7292 (generalisedUnion!2323 (unfocusZipperList!1900 zl!343)))))))

(declare-fun bm!579046 () Bool)

(declare-fun derivationStepZipperUp!1653 (Context!11726 C!33228) (InoxSet Context!11726))

(assert (=> bm!579046 (= call!579055 (derivationStepZipperUp!1653 lt!2416503 (h!72060 s!2326)))))

(declare-fun lt!2416510 () List!65736)

(declare-fun bm!579047 () Bool)

(declare-fun lt!2416531 () Regex!16479)

(declare-fun call!579080 () Bool)

(declare-fun matchR!8662 (Regex!16479 List!65736) Bool)

(assert (=> bm!579047 (= call!579080 (matchR!8662 (ite c!1218367 lt!2416568 lt!2416531) (ite c!1218367 lt!2416510 s!2326)))))

(declare-fun b!6610681 () Bool)

(declare-fun e!3999596 () Bool)

(declare-fun tp!1821059 () Bool)

(assert (=> b!6610681 (= e!3999596 tp!1821059)))

(declare-fun bm!579048 () Bool)

(declare-fun call!579056 () Bool)

(declare-fun lt!2416508 () Regex!16479)

(declare-fun lt!2416530 () List!65736)

(declare-fun call!579053 () List!65736)

(assert (=> bm!579048 (= call!579056 (matchR!8662 (ite c!1218367 lt!2416508 lt!2416595) (ite c!1218367 lt!2416530 (ite c!1218365 (_2!36761 lt!2416561) call!579053))))))

(declare-fun bm!579049 () Bool)

(declare-fun call!579095 () Option!16370)

(declare-fun call!579068 () Option!16370)

(assert (=> bm!579049 (= call!579095 call!579068)))

(declare-fun b!6610682 () Bool)

(declare-fun e!3999590 () Bool)

(declare-fun e!3999607 () Bool)

(assert (=> b!6610682 (= e!3999590 e!3999607)))

(declare-fun res!2710841 () Bool)

(assert (=> b!6610682 (=> res!2710841 e!3999607)))

(declare-fun lt!2416533 () (InoxSet Context!11726))

(declare-fun lt!2416609 () (InoxSet Context!11726))

(assert (=> b!6610682 (= res!2710841 (not (= lt!2416533 lt!2416609)))))

(declare-fun lt!2416576 () (InoxSet Context!11726))

(declare-fun lt!2416514 () Context!11726)

(declare-fun lambda!369139 () Int)

(declare-fun flatMap!1984 ((InoxSet Context!11726) Int) (InoxSet Context!11726))

(assert (=> b!6610682 (= (flatMap!1984 lt!2416576 lambda!369139) (derivationStepZipperUp!1653 lt!2416514 (h!72060 s!2326)))))

(declare-fun lt!2416520 () Unit!159264)

(declare-fun lemmaFlatMapOnSingletonSet!1510 ((InoxSet Context!11726) Context!11726 Int) Unit!159264)

(assert (=> b!6610682 (= lt!2416520 (lemmaFlatMapOnSingletonSet!1510 lt!2416576 lt!2416514 lambda!369139))))

(declare-fun lt!2416600 () (InoxSet Context!11726))

(assert (=> b!6610682 (= lt!2416600 (derivationStepZipperUp!1653 lt!2416514 (h!72060 s!2326)))))

(declare-fun derivationStepZipper!2445 ((InoxSet Context!11726) C!33228) (InoxSet Context!11726))

(assert (=> b!6610682 (= lt!2416533 (derivationStepZipper!2445 lt!2416576 (h!72060 s!2326)))))

(assert (=> b!6610682 (= lt!2416576 (store ((as const (Array Context!11726 Bool)) false) lt!2416514 true))))

(assert (=> b!6610682 (= lt!2416514 (Context!11727 (Cons!65613 (reg!16808 (regOne!33470 r!7292)) lt!2416525)))))

(declare-fun bm!579050 () Bool)

(assert (=> bm!579050 (= call!579097 call!579056)))

(declare-fun Unit!159268 () Unit!159264)

(assert (=> b!6610683 (= e!3999610 Unit!159268)))

(declare-fun lt!2416539 () Context!11726)

(declare-fun lambda!369146 () Int)

(declare-fun lt!2416610 () Unit!159264)

(declare-fun lemmaMapOnSingletonSet!230 ((InoxSet Context!11726) Context!11726 Int) Unit!159264)

(assert (=> b!6610683 (= lt!2416610 (lemmaMapOnSingletonSet!230 lt!2416509 lt!2416539 lambda!369146))))

(declare-fun lt!2416556 () Unit!159264)

(declare-fun call!579072 () Unit!159264)

(assert (=> b!6610683 (= lt!2416556 call!579072)))

(declare-fun map!14995 ((InoxSet Context!11726) Int) (InoxSet Context!11726))

(assert (=> b!6610683 (= (map!14995 lt!2416509 lambda!369146) (store ((as const (Array Context!11726 Bool)) false) (Context!11727 call!579082) true))))

(declare-fun lt!2416593 () Unit!159264)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!212 ((InoxSet Context!11726) Context!11726 List!65736) Unit!159264)

(assert (=> b!6610683 (= lt!2416593 (lemmaConcatZipperMatchesStringThenFindConcatDefined!212 lt!2416509 lt!2416523 s!2326))))

(declare-fun lt!2416559 () (InoxSet Context!11726))

(declare-fun lt!2416548 () Option!16370)

(declare-fun findConcatSeparationZippers!212 ((InoxSet Context!11726) (InoxSet Context!11726) List!65736 List!65736 List!65736) Option!16370)

(assert (=> b!6610683 (= lt!2416548 (findConcatSeparationZippers!212 lt!2416509 lt!2416559 Nil!65612 s!2326 s!2326))))

(assert (=> b!6610683 call!579060))

(declare-fun call!579113 () tuple2!66916)

(assert (=> b!6610683 (= lt!2416561 call!579113)))

(declare-fun lt!2416580 () Unit!159264)

(declare-fun call!579087 () Unit!159264)

(assert (=> b!6610683 (= lt!2416580 call!579087)))

(declare-fun lt!2416582 () Unit!159264)

(declare-fun call!579051 () Unit!159264)

(assert (=> b!6610683 (= lt!2416582 call!579051)))

(declare-fun lt!2416505 () List!65737)

(assert (=> b!6610683 (= lt!2416505 call!579082)))

(declare-fun lt!2416589 () List!65736)

(declare-fun call!579074 () List!65736)

(assert (=> b!6610683 (= lt!2416589 call!579074)))

(assert (=> b!6610683 (matchZipper!2491 (store ((as const (Array Context!11726 Bool)) false) (Context!11727 lt!2416505) true) lt!2416589)))

(declare-fun lt!2416608 () Unit!159264)

(declare-fun call!579061 () Unit!159264)

(assert (=> b!6610683 (= lt!2416608 call!579061)))

(declare-fun call!579049 () Bool)

(assert (=> b!6610683 (= call!579049 call!579114)))

(declare-fun lt!2416544 () Unit!159264)

(assert (=> b!6610683 (= lt!2416544 call!579093)))

(declare-fun call!579078 () Bool)

(assert (=> b!6610683 (= call!579097 call!579078)))

(declare-fun lt!2416597 () Unit!159264)

(declare-fun call!579108 () Unit!159264)

(assert (=> b!6610683 (= lt!2416597 call!579108)))

(declare-fun res!2710846 () Bool)

(assert (=> b!6610683 (= res!2710846 call!579076)))

(declare-fun e!3999595 () Bool)

(assert (=> b!6610683 (=> (not res!2710846) (not e!3999595))))

(assert (=> b!6610683 e!3999595))

(declare-fun lt!2416540 () Unit!159264)

(declare-fun lemmaConcatAssociative!144 (Regex!16479 Regex!16479 Regex!16479 List!65736) Unit!159264)

(assert (=> b!6610683 (= lt!2416540 (lemmaConcatAssociative!144 (reg!16808 (regOne!33470 r!7292)) lt!2416568 (regTwo!33470 r!7292) s!2326))))

(assert (=> b!6610683 (= lt!2416541 (Concat!25324 (reg!16808 (regOne!33470 r!7292)) lt!2416568))))

(assert (=> b!6610683 (= lt!2416531 (Concat!25324 lt!2416541 (regTwo!33470 r!7292)))))

(assert (=> b!6610683 call!579080))

(declare-fun lt!2416563 () Unit!159264)

(declare-fun mainMatchTheorem!3580 (Regex!16479 List!65736) Unit!159264)

(assert (=> b!6610683 (= lt!2416563 (mainMatchTheorem!3580 lt!2416531 s!2326))))

(declare-fun call!579065 () Bool)

(assert (=> b!6610683 call!579065))

(declare-fun lt!2416569 () Unit!159264)

(declare-fun call!579057 () Unit!159264)

(assert (=> b!6610683 (= lt!2416569 call!579057)))

(declare-fun lt!2416521 () Option!16370)

(declare-fun call!579075 () Option!16370)

(assert (=> b!6610683 (= lt!2416521 call!579075)))

(declare-fun call!579059 () Bool)

(assert (=> b!6610683 (= (isDefined!13073 lt!2416521) call!579059)))

(declare-fun lt!2416547 () Unit!159264)

(assert (=> b!6610683 (= lt!2416547 call!579064)))

(declare-fun call!579101 () Bool)

(assert (=> b!6610683 (= call!579048 call!579101)))

(declare-fun get!22800 (Option!16370) tuple2!66916)

(assert (=> b!6610683 (= lt!2416550 (get!22800 lt!2416521))))

(declare-fun lt!2416566 () Unit!159264)

(assert (=> b!6610683 (= lt!2416566 call!579091)))

(assert (=> b!6610683 (= call!579071 call!579086)))

(declare-fun lt!2416570 () Unit!159264)

(assert (=> b!6610683 (= lt!2416570 call!579104)))

(assert (=> b!6610683 (= lt!2416519 call!579095)))

(assert (=> b!6610683 (= call!579069 call!579050)))

(declare-fun lt!2416524 () Unit!159264)

(assert (=> b!6610683 (= lt!2416524 call!579112)))

(declare-fun call!579073 () Bool)

(assert (=> b!6610683 (= call!579079 call!579073)))

(declare-fun lt!2416572 () Unit!159264)

(assert (=> b!6610683 (= lt!2416572 call!579111)))

(assert (=> b!6610683 (= call!579115 call!579058)))

(declare-fun lt!2416552 () tuple2!66916)

(declare-fun call!579100 () tuple2!66916)

(assert (=> b!6610683 (= lt!2416552 call!579100)))

(declare-fun lt!2416596 () Unit!159264)

(declare-fun call!579045 () Unit!159264)

(assert (=> b!6610683 (= lt!2416596 call!579045)))

(declare-fun lt!2416599 () List!65736)

(declare-fun call!579102 () List!65736)

(assert (=> b!6610683 (= lt!2416599 call!579102)))

(declare-fun lt!2416601 () List!65736)

(declare-fun ++!14629 (List!65736 List!65736) List!65736)

(assert (=> b!6610683 (= lt!2416601 (++!14629 (_2!36761 lt!2416552) (_2!36761 lt!2416550)))))

(declare-fun lt!2416605 () List!65736)

(declare-fun call!579096 () List!65736)

(assert (=> b!6610683 (= lt!2416605 call!579096)))

(assert (=> b!6610683 (= lt!2416605 call!579053)))

(declare-fun lt!2416551 () Unit!159264)

(declare-fun call!579067 () Unit!159264)

(assert (=> b!6610683 (= lt!2416551 call!579067)))

(assert (=> b!6610683 (matchR!8662 lt!2416568 lt!2416599)))

(declare-fun lt!2416546 () Unit!159264)

(assert (=> b!6610683 (= lt!2416546 call!579081)))

(declare-fun res!2710834 () Bool)

(assert (=> b!6610683 (= res!2710834 (matchR!8662 lt!2416595 lt!2416605))))

(declare-fun e!3999587 () Bool)

(assert (=> b!6610683 (=> (not res!2710834) (not e!3999587))))

(assert (=> b!6610683 e!3999587))

(declare-fun bm!579051 () Bool)

(declare-fun call!579083 () Bool)

(declare-fun Exists!3549 (Int) Bool)

(assert (=> bm!579051 (= call!579083 (Exists!3549 (ite c!1218367 lambda!369142 (ite c!1218365 lambda!369148 lambda!369154))))))

(declare-fun setNonEmpty!45154 () Bool)

(declare-fun tp!1821055 () Bool)

(declare-fun setRes!45154 () Bool)

(declare-fun setElem!45154 () Context!11726)

(declare-fun inv!84444 (Context!11726) Bool)

(assert (=> setNonEmpty!45154 (= setRes!45154 (and tp!1821055 (inv!84444 setElem!45154) e!3999596))))

(declare-fun z!1189 () (InoxSet Context!11726))

(declare-fun setRest!45154 () (InoxSet Context!11726))

(assert (=> setNonEmpty!45154 (= z!1189 ((_ map or) (store ((as const (Array Context!11726 Bool)) false) setElem!45154 true) setRest!45154))))

(declare-fun b!6610684 () Bool)

(declare-fun res!2710856 () Bool)

(assert (=> b!6610684 (=> res!2710856 e!3999607)))

(declare-fun lt!2416538 () Regex!16479)

(assert (=> b!6610684 (= res!2710856 (not (= lt!2416538 r!7292)))))

(declare-fun bm!579052 () Bool)

(declare-fun call!579106 () Bool)

(assert (=> bm!579052 (= call!579071 call!579106)))

(declare-fun b!6610685 () Bool)

(declare-fun res!2710832 () Bool)

(assert (=> b!6610685 (=> res!2710832 e!3999593)))

(assert (=> b!6610685 (= res!2710832 (or ((_ is Concat!25324) (regOne!33470 r!7292)) (not ((_ is Star!16479) (regOne!33470 r!7292)))))))

(declare-fun lt!2416536 () Option!16370)

(declare-fun bm!579053 () Bool)

(assert (=> bm!579053 (= call!579100 (get!22800 (ite c!1218367 lt!2416536 lt!2416519)))))

(declare-fun b!6610686 () Bool)

(declare-fun e!3999598 () Bool)

(declare-fun e!3999612 () Bool)

(assert (=> b!6610686 (= e!3999598 e!3999612)))

(declare-fun res!2710847 () Bool)

(assert (=> b!6610686 (=> (not res!2710847) (not e!3999612))))

(assert (=> b!6610686 (= res!2710847 (= r!7292 lt!2416538))))

(assert (=> b!6610686 (= lt!2416538 (unfocusZipper!2221 zl!343))))

(declare-fun bm!579054 () Bool)

(declare-fun call!579062 () Bool)

(assert (=> bm!579054 (= call!579050 call!579062)))

(declare-fun bm!579055 () Bool)

(declare-fun call!579110 () Unit!159264)

(assert (=> bm!579055 (= call!579112 call!579110)))

(declare-fun e!3999588 () Bool)

(assert (=> b!6610687 (= e!3999603 e!3999588)))

(declare-fun res!2710837 () Bool)

(assert (=> b!6610687 (=> res!2710837 e!3999588)))

(declare-fun lt!2416529 () Bool)

(declare-fun lt!2416517 () Bool)

(assert (=> b!6610687 (= res!2710837 (or (not (= lt!2416517 lt!2416529)) ((_ is Nil!65612) s!2326)))))

(assert (=> b!6610687 (= (Exists!3549 lambda!369137) (Exists!3549 lambda!369138))))

(declare-fun lt!2416542 () Unit!159264)

(assert (=> b!6610687 (= lt!2416542 (lemmaExistCutMatchRandMatchRSpecEquivalent!2086 (regOne!33470 r!7292) (regTwo!33470 r!7292) s!2326))))

(assert (=> b!6610687 (= lt!2416529 (Exists!3549 lambda!369137))))

(declare-fun findConcatSeparation!2784 (Regex!16479 Regex!16479 List!65736 List!65736 List!65736) Option!16370)

(assert (=> b!6610687 (= lt!2416529 (isDefined!13073 (findConcatSeparation!2784 (regOne!33470 r!7292) (regTwo!33470 r!7292) Nil!65612 s!2326 s!2326)))))

(declare-fun lt!2416511 () Unit!159264)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2548 (Regex!16479 Regex!16479 List!65736) Unit!159264)

(assert (=> b!6610687 (= lt!2416511 (lemmaFindConcatSeparationEquivalentToExists!2548 (regOne!33470 r!7292) (regTwo!33470 r!7292) s!2326))))

(declare-fun b!6610688 () Bool)

(declare-fun res!2710855 () Bool)

(assert (=> b!6610688 (=> res!2710855 e!3999603)))

(declare-fun isEmpty!37890 (List!65738) Bool)

(assert (=> b!6610688 (= res!2710855 (not (isEmpty!37890 (t!379392 zl!343))))))

(declare-fun b!6610689 () Bool)

(declare-fun e!3999605 () Bool)

(declare-fun e!3999611 () Bool)

(assert (=> b!6610689 (= e!3999605 e!3999611)))

(declare-fun res!2710831 () Bool)

(assert (=> b!6610689 (=> res!2710831 e!3999611)))

(assert (=> b!6610689 (= res!2710831 (not (= (unfocusZipper!2221 (Cons!65614 lt!2416514 Nil!65614)) lt!2416508)))))

(assert (=> b!6610689 (= lt!2416508 (Concat!25324 (reg!16808 (regOne!33470 r!7292)) lt!2416595))))

(declare-fun b!6610690 () Bool)

(declare-fun tp!1821057 () Bool)

(declare-fun tp!1821058 () Bool)

(assert (=> b!6610690 (= e!3999599 (and tp!1821057 tp!1821058))))

(declare-fun b!6610691 () Bool)

(declare-fun tp_is_empty!42211 () Bool)

(assert (=> b!6610691 (= e!3999599 tp_is_empty!42211)))

(declare-fun bm!579056 () Bool)

(declare-fun lemmaConcatPreservesForall!420 (List!65737 List!65737 Int) Unit!159264)

(assert (=> bm!579056 (= call!579072 (lemmaConcatPreservesForall!420 lt!2416583 lt!2416525 (ite c!1218367 lambda!369145 lambda!369147)))))

(declare-fun bm!579057 () Bool)

(declare-fun call!579052 () Unit!159264)

(assert (=> bm!579057 (= call!579111 call!579052)))

(declare-fun bm!579058 () Bool)

(assert (=> bm!579058 (= call!579068 (findConcatSeparation!2784 (reg!16808 (regOne!33470 r!7292)) lt!2416568 Nil!65612 (ite c!1218367 (_1!36761 lt!2416554) (ite c!1218365 (_1!36761 lt!2416550) Nil!65612)) (ite c!1218367 (_1!36761 lt!2416554) (ite c!1218365 (_1!36761 lt!2416550) Nil!65612))))))

(declare-fun setIsEmpty!45154 () Bool)

(assert (=> setIsEmpty!45154 setRes!45154))

(declare-fun b!6610692 () Bool)

(declare-fun e!3999591 () Unit!159264)

(declare-fun Unit!159269 () Unit!159264)

(assert (=> b!6610692 (= e!3999591 Unit!159269)))

(declare-fun lt!2416606 () Bool)

(declare-fun call!579063 () Bool)

(assert (=> b!6610692 (= lt!2416606 call!579063)))

(declare-fun c!1218369 () Bool)

(assert (=> b!6610692 (= c!1218369 lt!2416606)))

(declare-fun lt!2416528 () Unit!159264)

(declare-fun e!3999586 () Unit!159264)

(assert (=> b!6610692 (= lt!2416528 e!3999586)))

(assert (=> b!6610692 (not lt!2416606)))

(declare-fun bm!579059 () Bool)

(declare-fun call!579098 () Unit!159264)

(assert (=> bm!579059 (= call!579098 (mainMatchTheorem!3580 (ite c!1218367 lt!2416568 (ite c!1218365 lt!2416541 lt!2416568)) (ite c!1218367 (_1!36761 lt!2416554) (ite c!1218365 (_1!36761 lt!2416550) Nil!65612))))))

(declare-fun lt!2416585 () (InoxSet Context!11726))

(declare-fun bm!579060 () Bool)

(declare-fun lt!2416573 () List!65736)

(declare-fun call!579105 () Bool)

(assert (=> bm!579060 (= call!579105 (matchZipper!2491 (ite c!1218367 lt!2416559 lt!2416585) (ite c!1218367 lt!2416573 (t!379390 s!2326))))))

(declare-fun b!6610693 () Bool)

(assert (=> b!6610693 (= e!3999593 e!3999590)))

(declare-fun res!2710858 () Bool)

(assert (=> b!6610693 (=> res!2710858 e!3999590)))

(assert (=> b!6610693 (= res!2710858 (not (= lt!2416585 lt!2416609)))))

(declare-fun derivationStepZipperDown!1727 (Regex!16479 Context!11726 C!33228) (InoxSet Context!11726))

(assert (=> b!6610693 (= lt!2416609 (derivationStepZipperDown!1727 (reg!16808 (regOne!33470 r!7292)) lt!2416523 (h!72060 s!2326)))))

(assert (=> b!6610693 (= lt!2416523 (Context!11727 lt!2416525))))

(assert (=> b!6610693 (= lt!2416525 (Cons!65613 lt!2416568 (t!379391 (exprs!6363 (h!72062 zl!343)))))))

(assert (=> b!6610693 (= lt!2416568 (Star!16479 (reg!16808 (regOne!33470 r!7292))))))

(declare-fun bm!579061 () Bool)

(declare-fun call!579090 () List!65736)

(assert (=> bm!579061 (= call!579053 call!579090)))

(declare-fun bm!579062 () Bool)

(declare-fun call!579066 () Unit!159264)

(declare-fun lt!2416558 () Regex!16479)

(declare-fun theoremZipperRegexEquiv!901 ((InoxSet Context!11726) List!65738 Regex!16479 List!65736) Unit!159264)

(assert (=> bm!579062 (= call!579066 (theoremZipperRegexEquiv!901 (ite c!1218367 (ite c!1218366 lt!2416527 lt!2416559) (ite c!1218365 lt!2416559 lt!2416534)) (ite c!1218367 (ite c!1218366 (Cons!65614 lt!2416503 Nil!65614) lt!2416532) (ite c!1218365 lt!2416532 (Cons!65614 lt!2416503 Nil!65614))) (ite c!1218367 (ite c!1218366 lt!2416558 lt!2416595) (ite c!1218365 lt!2416595 lt!2416584)) (ite c!1218367 (ite c!1218366 s!2326 lt!2416573) (ite c!1218365 (_2!36761 lt!2416561) s!2326))))))

(declare-fun b!6610694 () Bool)

(assert (=> b!6610694 (= e!3999595 lt!2416594)))

(declare-fun call!579092 () Bool)

(declare-fun bm!579063 () Bool)

(assert (=> bm!579063 (= call!579092 (Exists!3549 (ite c!1218367 lambda!369143 (ite c!1218365 lambda!369152 lambda!369155))))))

(declare-fun bm!579064 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!674 (Regex!16479 List!65736) Unit!159264)

(assert (=> bm!579064 (= call!579052 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!674 (reg!16808 (regOne!33470 r!7292)) (ite c!1218367 (_1!36761 lt!2416554) (ite c!1218365 (_1!36761 lt!2416550) Nil!65612))))))

(declare-fun bm!579065 () Bool)

(declare-fun call!579070 () Bool)

(assert (=> bm!579065 (= call!579070 call!579046)))

(declare-fun bm!579066 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!228 (Context!11726 Context!11726 List!65736 List!65736) Unit!159264)

(assert (=> bm!579066 (= call!579087 (lemmaConcatenateContextMatchesConcatOfStrings!228 lt!2416539 lt!2416523 (ite c!1218367 (_1!36761 lt!2416555) (_1!36761 lt!2416561)) (ite c!1218367 lt!2416573 (_2!36761 lt!2416561))))))

(declare-fun bm!579067 () Bool)

(declare-fun call!579107 () Unit!159264)

(assert (=> bm!579067 (= call!579081 call!579107)))

(declare-fun bm!579068 () Bool)

(declare-fun call!579084 () Bool)

(assert (=> bm!579068 (= call!579060 call!579084)))

(declare-fun bm!579069 () Bool)

(declare-fun lemmaStarApp!154 (Regex!16479 List!65736 List!65736) Unit!159264)

(assert (=> bm!579069 (= call!579067 (lemmaStarApp!154 (reg!16808 (regOne!33470 r!7292)) (ite c!1218367 (_1!36761 lt!2416555) (_1!36761 lt!2416552)) (ite c!1218367 (_2!36761 lt!2416555) (_2!36761 lt!2416552))))))

(declare-fun b!6610695 () Bool)

(assert (=> b!6610695 (= c!1218365 call!579105)))

(assert (=> b!6610695 (= e!3999586 e!3999610)))

(declare-fun bm!579070 () Bool)

(assert (=> bm!579070 (= call!579102 (++!14629 (ite c!1218367 (_1!36761 lt!2416555) (_1!36761 lt!2416552)) (ite c!1218367 (_2!36761 lt!2416555) (_2!36761 lt!2416552))))))

(declare-fun b!6610696 () Bool)

(declare-fun nullable!6472 (Regex!16479) Bool)

(assert (=> b!6610696 (= e!3999608 (nullable!6472 (regOne!33470 (regOne!33470 r!7292))))))

(declare-fun b!6610697 () Bool)

(declare-fun Unit!159270 () Unit!159264)

(assert (=> b!6610697 (= e!3999609 Unit!159270)))

(declare-fun lt!2416515 () (InoxSet Context!11726))

(declare-fun lt!2416575 () Unit!159264)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1310 ((InoxSet Context!11726) (InoxSet Context!11726) List!65736) Unit!159264)

(assert (=> b!6610697 (= lt!2416575 (lemmaZipperConcatMatchesSameAsBothZippers!1310 lt!2416585 lt!2416515 (t!379390 s!2326)))))

(declare-fun res!2710843 () Bool)

(assert (=> b!6610697 (= res!2710843 (matchZipper!2491 lt!2416585 (t!379390 s!2326)))))

(declare-fun e!3999592 () Bool)

(assert (=> b!6610697 (=> res!2710843 e!3999592)))

(assert (=> b!6610697 (= (matchZipper!2491 ((_ map or) lt!2416585 lt!2416515) (t!379390 s!2326)) e!3999592)))

(declare-fun bm!579071 () Bool)

(assert (=> bm!579071 (= call!579057 (lemmaFindConcatSeparationEquivalentToExists!2548 (ite c!1218367 (reg!16808 (regOne!33470 r!7292)) lt!2416541) (ite c!1218367 lt!2416568 (regTwo!33470 r!7292)) (ite c!1218367 (_1!36761 lt!2416554) s!2326)))))

(assert (=> b!6610698 call!579099))

(declare-fun lt!2416603 () Unit!159264)

(assert (=> b!6610698 (= lt!2416603 call!579051)))

(assert (=> b!6610698 e!3999601))

(declare-fun res!2710859 () Bool)

(assert (=> b!6610698 (=> (not res!2710859) (not e!3999601))))

(assert (=> b!6610698 (= res!2710859 call!579056)))

(declare-fun lt!2416587 () Unit!159264)

(assert (=> b!6610698 (= lt!2416587 call!579108)))

(assert (=> b!6610698 call!579078))

(declare-fun lt!2416604 () Unit!159264)

(assert (=> b!6610698 (= lt!2416604 call!579072)))

(declare-fun lt!2416562 () Unit!159264)

(assert (=> b!6610698 (= lt!2416562 call!579087)))

(assert (=> b!6610698 call!579105))

(declare-fun lt!2416598 () Unit!159264)

(declare-fun call!579054 () Unit!159264)

(assert (=> b!6610698 (= lt!2416598 call!579054)))

(declare-fun call!579094 () Bool)

(assert (=> b!6610698 (= call!579094 call!579070)))

(declare-fun lt!2416564 () Unit!159264)

(assert (=> b!6610698 (= lt!2416564 call!579061)))

(assert (=> b!6610698 call!579049))

(declare-fun lt!2416518 () Unit!159264)

(assert (=> b!6610698 (= lt!2416518 call!579107)))

(assert (=> b!6610698 call!579080))

(declare-fun lt!2416565 () Unit!159264)

(assert (=> b!6610698 (= lt!2416565 call!579067)))

(declare-fun lt!2416581 () List!65736)

(assert (=> b!6610698 (= lt!2416581 lt!2416530)))

(assert (=> b!6610698 (= lt!2416530 call!579074)))

(assert (=> b!6610698 (= lt!2416581 call!579090)))

(assert (=> b!6610698 (= lt!2416573 call!579096)))

(assert (=> b!6610698 (= lt!2416510 call!579102)))

(declare-fun lt!2416507 () Unit!159264)

(assert (=> b!6610698 (= lt!2416507 call!579045)))

(assert (=> b!6610698 (= lt!2416555 call!579100)))

(assert (=> b!6610698 (= call!579101 call!579062)))

(declare-fun lt!2416504 () Unit!159264)

(assert (=> b!6610698 (= lt!2416504 call!579064)))

(assert (=> b!6610698 (= call!579083 call!579092)))

(declare-fun lt!2416522 () Unit!159264)

(assert (=> b!6610698 (= lt!2416522 call!579052)))

(assert (=> b!6610698 (= call!579084 call!579073)))

(assert (=> b!6610698 (= lt!2416536 call!579068)))

(declare-fun lt!2416502 () Unit!159264)

(assert (=> b!6610698 (= lt!2416502 call!579057)))

(assert (=> b!6610698 (= call!579106 call!579065)))

(declare-fun lt!2416579 () Unit!159264)

(assert (=> b!6610698 (= lt!2416579 call!579098)))

(declare-fun e!3999604 () Unit!159264)

(declare-fun Unit!159271 () Unit!159264)

(assert (=> b!6610698 (= e!3999604 Unit!159271)))

(declare-fun bm!579072 () Bool)

(declare-fun call!579085 () Bool)

(assert (=> bm!579072 (= call!579094 call!579085)))

(declare-fun bm!579073 () Bool)

(declare-fun call!579089 () Bool)

(assert (=> bm!579073 (= call!579115 call!579089)))

(declare-fun b!6610699 () Bool)

(declare-fun res!2710838 () Bool)

(assert (=> b!6610699 (=> res!2710838 e!3999607)))

(assert (=> b!6610699 (= res!2710838 (not (= (matchZipper!2491 lt!2416576 s!2326) (matchZipper!2491 lt!2416533 (t!379390 s!2326)))))))

(assert (=> b!6610700 (= e!3999588 e!3999593)))

(declare-fun res!2710836 () Bool)

(assert (=> b!6610700 (=> res!2710836 e!3999593)))

(assert (=> b!6610700 (= res!2710836 (or (and ((_ is ElementMatch!16479) (regOne!33470 r!7292)) (= (c!1218370 (regOne!33470 r!7292)) (h!72060 s!2326))) ((_ is Union!16479) (regOne!33470 r!7292))))))

(declare-fun lt!2416588 () Unit!159264)

(assert (=> b!6610700 (= lt!2416588 e!3999609)))

(declare-fun c!1218368 () Bool)

(assert (=> b!6610700 (= c!1218368 (nullable!6472 (h!72061 (exprs!6363 (h!72062 zl!343)))))))

(assert (=> b!6610700 (= (flatMap!1984 z!1189 lambda!369139) (derivationStepZipperUp!1653 (h!72062 zl!343) (h!72060 s!2326)))))

(declare-fun lt!2416591 () Unit!159264)

(assert (=> b!6610700 (= lt!2416591 (lemmaFlatMapOnSingletonSet!1510 z!1189 (h!72062 zl!343) lambda!369139))))

(assert (=> b!6610700 (= lt!2416515 (derivationStepZipperUp!1653 lt!2416503 (h!72060 s!2326)))))

(assert (=> b!6610700 (= lt!2416585 (derivationStepZipperDown!1727 (h!72061 (exprs!6363 (h!72062 zl!343))) lt!2416503 (h!72060 s!2326)))))

(assert (=> b!6610700 (= lt!2416503 (Context!11727 (t!379391 (exprs!6363 (h!72062 zl!343)))))))

(declare-fun lt!2416567 () (InoxSet Context!11726))

(assert (=> b!6610700 (= lt!2416567 (derivationStepZipperUp!1653 (Context!11727 (Cons!65613 (h!72061 (exprs!6363 (h!72062 zl!343))) (t!379391 (exprs!6363 (h!72062 zl!343))))) (h!72060 s!2326)))))

(declare-fun bm!579074 () Bool)

(assert (=> bm!579074 (= call!579099 call!579063)))

(declare-fun b!6610701 () Bool)

(declare-fun Unit!159272 () Unit!159264)

(assert (=> b!6610701 (= e!3999586 Unit!159272)))

(declare-fun bm!579075 () Bool)

(assert (=> bm!579075 (= call!579091 call!579098)))

(declare-fun bm!579076 () Bool)

(declare-fun call!579088 () Bool)

(assert (=> bm!579076 (= call!579079 call!579088)))

(declare-fun bm!579077 () Bool)

(assert (=> bm!579077 (= call!579113 (get!22800 (ite c!1218367 lt!2416560 lt!2416548)))))

(declare-fun b!6610702 () Bool)

(assert (=> b!6610702 e!3999589))

(declare-fun res!2710849 () Bool)

(assert (=> b!6610702 (=> (not res!2710849) (not e!3999589))))

(assert (=> b!6610702 (= res!2710849 (= call!579094 call!579070))))

(declare-fun lt!2416506 () Unit!159264)

(assert (=> b!6610702 (= lt!2416506 call!579054)))

(assert (=> b!6610702 (= lt!2416558 call!579077)))

(assert (=> b!6610702 (= call!579103 call!579055)))

(declare-fun lt!2416602 () Unit!159264)

(assert (=> b!6610702 (= lt!2416602 call!579109)))

(assert (=> b!6610702 (= lt!2416527 (store ((as const (Array Context!11726 Bool)) false) lt!2416503 true))))

(declare-fun Unit!159273 () Unit!159264)

(assert (=> b!6610702 (= e!3999604 Unit!159273)))

(declare-fun bm!579078 () Bool)

(assert (=> bm!579078 (= call!579073 (Exists!3549 (ite c!1218367 lambda!369142 lambda!369151)))))

(declare-fun bm!579079 () Bool)

(declare-fun matchRSpec!3580 (Regex!16479 List!65736) Bool)

(assert (=> bm!579079 (= call!579086 (matchRSpec!3580 (ite c!1218365 lt!2416541 lt!2416568) (ite c!1218365 (_1!36761 lt!2416550) Nil!65612)))))

(declare-fun bm!579080 () Bool)

(assert (=> bm!579080 (= call!579047 (lemmaFindConcatSeparationEquivalentToExists!2548 (ite c!1218367 lt!2416568 (reg!16808 (regOne!33470 r!7292))) (ite c!1218367 (regTwo!33470 r!7292) lt!2416568) (ite c!1218367 s!2326 (ite c!1218365 (_1!36761 lt!2416550) Nil!65612))))))

(declare-fun b!6610703 () Bool)

(assert (=> b!6610703 (= e!3999611 e!3999602)))

(declare-fun res!2710853 () Bool)

(assert (=> b!6610703 (=> res!2710853 e!3999602)))

(declare-fun lt!2416586 () List!65738)

(assert (=> b!6610703 (= res!2710853 (not (= (unfocusZipper!2221 lt!2416586) (reg!16808 (regOne!33470 r!7292)))))))

(assert (=> b!6610703 (= lt!2416586 (Cons!65614 lt!2416539 Nil!65614))))

(assert (=> b!6610703 (= (flatMap!1984 lt!2416559 lambda!369139) (derivationStepZipperUp!1653 lt!2416523 (h!72060 s!2326)))))

(declare-fun lt!2416590 () Unit!159264)

(assert (=> b!6610703 (= lt!2416590 (lemmaFlatMapOnSingletonSet!1510 lt!2416559 lt!2416523 lambda!369139))))

(assert (=> b!6610703 (= (flatMap!1984 lt!2416509 lambda!369139) (derivationStepZipperUp!1653 lt!2416539 (h!72060 s!2326)))))

(declare-fun lt!2416574 () Unit!159264)

(assert (=> b!6610703 (= lt!2416574 (lemmaFlatMapOnSingletonSet!1510 lt!2416509 lt!2416539 lambda!369139))))

(declare-fun lt!2416571 () (InoxSet Context!11726))

(assert (=> b!6610703 (= lt!2416571 (derivationStepZipperUp!1653 lt!2416523 (h!72060 s!2326)))))

(declare-fun lt!2416526 () (InoxSet Context!11726))

(assert (=> b!6610703 (= lt!2416526 (derivationStepZipperUp!1653 lt!2416539 (h!72060 s!2326)))))

(assert (=> b!6610703 (= lt!2416559 (store ((as const (Array Context!11726 Bool)) false) lt!2416523 true))))

(assert (=> b!6610703 (= lt!2416509 (store ((as const (Array Context!11726 Bool)) false) lt!2416539 true))))

(assert (=> b!6610703 (= lt!2416539 (Context!11727 lt!2416583))))

(assert (=> b!6610703 (= lt!2416583 (Cons!65613 (reg!16808 (regOne!33470 r!7292)) Nil!65613))))

(declare-fun bm!579081 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!368 (Regex!16479 Regex!16479 List!65736 List!65736) Unit!159264)

(assert (=> bm!579081 (= call!579108 (lemmaTwoRegexMatchThenConcatMatchesConcatString!368 (reg!16808 (regOne!33470 r!7292)) lt!2416595 (ite c!1218367 (_1!36761 lt!2416555) (_1!36761 lt!2416561)) (ite c!1218367 lt!2416573 (_2!36761 lt!2416561))))))

(declare-fun bm!579082 () Bool)

(assert (=> bm!579082 (= call!579106 (matchR!8662 (ite c!1218367 lt!2416568 (ite c!1218365 lt!2416541 lt!2416568)) (ite c!1218367 (_1!36761 lt!2416554) (ite c!1218365 (_1!36761 lt!2416550) Nil!65612))))))

(declare-fun b!6610704 () Bool)

(assert (=> b!6610704 (= e!3999612 (not e!3999603))))

(declare-fun res!2710833 () Bool)

(assert (=> b!6610704 (=> res!2710833 e!3999603)))

(assert (=> b!6610704 (= res!2710833 (not ((_ is Cons!65614) zl!343)))))

(declare-fun lt!2416512 () Bool)

(assert (=> b!6610704 (= lt!2416517 lt!2416512)))

(assert (=> b!6610704 (= lt!2416512 (matchRSpec!3580 r!7292 s!2326))))

(assert (=> b!6610704 (= lt!2416517 (matchR!8662 r!7292 s!2326))))

(declare-fun lt!2416549 () Unit!159264)

(assert (=> b!6610704 (= lt!2416549 (mainMatchTheorem!3580 r!7292 s!2326))))

(declare-fun bm!579083 () Bool)

(assert (=> bm!579083 (= call!579096 (++!14629 (ite c!1218367 (_2!36761 lt!2416555) lt!2416599) (ite c!1218367 (_2!36761 lt!2416554) (_2!36761 lt!2416550))))))

(declare-fun Unit!159274 () Unit!159264)

(assert (=> b!6610705 (= e!3999591 Unit!159274)))

(declare-fun lt!2416607 () Unit!159264)

(assert (=> b!6610705 (= lt!2416607 call!579047)))

(assert (=> b!6610705 (= lt!2416560 call!579075)))

(assert (=> b!6610705 (= call!579069 call!579089)))

(declare-fun lt!2416535 () Unit!159264)

(assert (=> b!6610705 (= lt!2416535 call!579110)))

(assert (=> b!6610705 (= call!579059 call!579088)))

(assert (=> b!6610705 (= lt!2416554 call!579113)))

(declare-fun isEmpty!37891 (List!65736) Bool)

(assert (=> b!6610705 (= c!1218366 (isEmpty!37891 (_1!36761 lt!2416554)))))

(declare-fun lt!2416553 () Unit!159264)

(assert (=> b!6610705 (= lt!2416553 e!3999604)))

(assert (=> b!6610705 call!579063))

(declare-fun b!6610706 () Bool)

(declare-fun e!3999594 () Bool)

(declare-fun tp!1821051 () Bool)

(declare-fun e!3999584 () Bool)

(assert (=> b!6610706 (= e!3999594 (and (inv!84444 (h!72062 zl!343)) e!3999584 tp!1821051))))

(declare-fun bm!579084 () Bool)

(assert (=> bm!579084 (= call!579063 (matchZipper!2491 z!1189 s!2326))))

(declare-fun b!6610707 () Bool)

(declare-fun e!3999600 () Bool)

(declare-fun tp!1821050 () Bool)

(assert (=> b!6610707 (= e!3999600 (and tp_is_empty!42211 tp!1821050))))

(declare-fun bm!579085 () Bool)

(assert (=> bm!579085 (= call!579058 call!579092)))

(declare-fun b!6610708 () Bool)

(declare-fun tp!1821056 () Bool)

(assert (=> b!6610708 (= e!3999584 tp!1821056)))

(declare-fun bm!579086 () Bool)

(assert (=> bm!579086 (= call!579101 (Exists!3549 (ite c!1218367 lambda!369142 lambda!369149)))))

(declare-fun bm!579087 () Bool)

(assert (=> bm!579087 (= call!579093 call!579066)))

(declare-fun res!2710851 () Bool)

(assert (=> start!646154 (=> (not res!2710851) (not e!3999598))))

(declare-fun validRegex!8215 (Regex!16479) Bool)

(assert (=> start!646154 (= res!2710851 (validRegex!8215 r!7292))))

(assert (=> start!646154 e!3999598))

(assert (=> start!646154 e!3999599))

(declare-fun condSetEmpty!45154 () Bool)

(assert (=> start!646154 (= condSetEmpty!45154 (= z!1189 ((as const (Array Context!11726 Bool)) false)))))

(assert (=> start!646154 setRes!45154))

(assert (=> start!646154 e!3999594))

(assert (=> start!646154 e!3999600))

(declare-fun b!6610709 () Bool)

(declare-fun res!2710839 () Bool)

(assert (=> b!6610709 (=> res!2710839 e!3999603)))

(assert (=> b!6610709 (= res!2710839 (not (= r!7292 (generalisedConcat!2076 (exprs!6363 (h!72062 zl!343))))))))

(declare-fun bm!579088 () Bool)

(assert (=> bm!579088 (= call!579048 call!579083)))

(declare-fun b!6610710 () Bool)

(declare-fun res!2710860 () Bool)

(assert (=> b!6610710 (=> (not res!2710860) (not e!3999598))))

(declare-fun toList!10263 ((InoxSet Context!11726)) List!65738)

(assert (=> b!6610710 (= res!2710860 (= (toList!10263 z!1189) zl!343))))

(declare-fun bm!579089 () Bool)

(assert (=> bm!579089 (= call!579062 (Exists!3549 (ite c!1218367 lambda!369144 (ite c!1218365 lambda!369150 lambda!369153))))))

(declare-fun bm!579090 () Bool)

(assert (=> bm!579090 (= call!579074 (++!14629 (ite c!1218367 (_1!36761 lt!2416555) (_1!36761 lt!2416561)) (ite c!1218367 lt!2416573 (_2!36761 lt!2416561))))))

(declare-fun b!6610711 () Bool)

(declare-fun tp!1821052 () Bool)

(assert (=> b!6610711 (= e!3999599 tp!1821052)))

(declare-fun b!6610712 () Bool)

(assert (=> b!6610712 (= e!3999606 false)))

(declare-fun b!6610713 () Bool)

(declare-fun e!3999597 () Bool)

(assert (=> b!6610713 (= e!3999597 (or (not lt!2416517) lt!2416512))))

(declare-fun bm!579091 () Bool)

(assert (=> bm!579091 (= call!579049 (matchR!8662 (ite c!1218367 lt!2416595 (reg!16808 (regOne!33470 r!7292))) (ite c!1218367 lt!2416573 (_1!36761 lt!2416561))))))

(declare-fun b!6610714 () Bool)

(declare-fun res!2710850 () Bool)

(assert (=> b!6610714 (=> res!2710850 e!3999588)))

(declare-fun isEmpty!37892 (List!65737) Bool)

(assert (=> b!6610714 (= res!2710850 (isEmpty!37892 (t!379391 (exprs!6363 (h!72062 zl!343)))))))

(declare-fun bm!579092 () Bool)

(assert (=> bm!579092 (= call!579061 (theoremZipperRegexEquiv!901 lt!2416509 lt!2416586 (reg!16808 (regOne!33470 r!7292)) (ite c!1218367 (_1!36761 lt!2416555) (_1!36761 lt!2416561))))))

(declare-fun bm!579093 () Bool)

(assert (=> bm!579093 (= call!579109 (lemmaFlatMapOnSingletonSet!1510 (ite c!1218367 lt!2416527 lt!2416534) lt!2416503 (ite c!1218367 lambda!369139 lambda!369139)))))

(declare-fun bm!579094 () Bool)

(assert (=> bm!579094 (= call!579103 (flatMap!1984 (ite c!1218367 lt!2416527 lt!2416534) (ite c!1218367 lambda!369139 lambda!369139)))))

(declare-fun bm!579095 () Bool)

(assert (=> bm!579095 (= call!579107 (lemmaTwoRegexMatchThenConcatMatchesConcatString!368 lt!2416568 (regTwo!33470 r!7292) (ite c!1218367 (_2!36761 lt!2416555) (ite c!1218365 lt!2416599 Nil!65612)) (ite c!1218367 (_2!36761 lt!2416554) (ite c!1218365 (_2!36761 lt!2416550) s!2326))))))

(declare-fun bm!579096 () Bool)

(assert (=> bm!579096 (= call!579051 (lemmaConcatPreservesForall!420 lt!2416583 lt!2416525 (ite c!1218367 lambda!369145 lambda!369147)))))

(declare-fun bm!579097 () Bool)

(declare-fun lemmaConcatAssociativity!2950 (List!65736 List!65736 List!65736) Unit!159264)

(assert (=> bm!579097 (= call!579045 (lemmaConcatAssociativity!2950 (ite c!1218367 (_1!36761 lt!2416555) (_1!36761 lt!2416552)) (ite c!1218367 (_2!36761 lt!2416555) (_2!36761 lt!2416552)) (ite c!1218367 (_2!36761 lt!2416554) (_2!36761 lt!2416550))))))

(declare-fun bm!579098 () Bool)

(assert (=> bm!579098 (= call!579110 (lemmaExistCutMatchRandMatchRSpecEquivalent!2086 (ite c!1218367 lt!2416568 (reg!16808 (regOne!33470 r!7292))) (ite c!1218367 (regTwo!33470 r!7292) lt!2416568) (ite c!1218367 s!2326 (ite c!1218365 (_1!36761 lt!2416550) Nil!65612))))))

(declare-fun bm!579099 () Bool)

(assert (=> bm!579099 (= call!579085 (matchR!8662 (ite c!1218367 (ite c!1218366 lt!2416558 (reg!16808 (regOne!33470 r!7292))) (ite c!1218365 lt!2416508 lt!2416584)) (ite c!1218367 (ite c!1218366 s!2326 (_1!36761 lt!2416555)) (ite c!1218365 lt!2416589 s!2326))))))

(declare-fun bm!579100 () Bool)

(assert (=> bm!579100 (= call!579114 call!579046)))

(declare-fun bm!579101 () Bool)

(assert (=> bm!579101 (= call!579089 (Exists!3549 (ite c!1218367 lambda!369140 (ite c!1218365 lambda!369150 lambda!369153))))))

(declare-fun b!6610715 () Bool)

(assert (=> b!6610715 (= e!3999585 (= lt!2416517 (matchZipper!2491 z!1189 s!2326)))))

(declare-fun lt!2416577 () Unit!159264)

(assert (=> b!6610715 (= lt!2416577 e!3999591)))

(assert (=> b!6610715 (= c!1218367 lt!2416517)))

(assert (=> b!6610715 e!3999597))

(declare-fun res!2710844 () Bool)

(assert (=> b!6610715 (=> (not res!2710844) (not e!3999597))))

(assert (=> b!6610715 (= res!2710844 (= lt!2416594 (matchRSpec!3580 lt!2416508 s!2326)))))

(assert (=> b!6610715 (= lt!2416594 (matchR!8662 lt!2416508 s!2326))))

(declare-fun lt!2416543 () Unit!159264)

(assert (=> b!6610715 (= lt!2416543 (mainMatchTheorem!3580 lt!2416508 s!2326))))

(declare-fun bm!579102 () Bool)

(assert (=> bm!579102 (= call!579054 call!579066)))

(declare-fun bm!579103 () Bool)

(assert (=> bm!579103 (= call!579076 call!579085)))

(declare-fun bm!579104 () Bool)

(assert (=> bm!579104 (= call!579090 (++!14629 (ite c!1218367 lt!2416510 (ite c!1218365 (_1!36761 lt!2416552) Nil!65612)) (ite c!1218367 (_2!36761 lt!2416554) (ite c!1218365 lt!2416601 s!2326))))))

(declare-fun bm!579105 () Bool)

(assert (=> bm!579105 (= call!579088 (Exists!3549 (ite c!1218367 lambda!369141 (ite c!1218365 lambda!369150 lambda!369153))))))

(declare-fun b!6610716 () Bool)

(assert (=> b!6610716 (= e!3999592 (matchZipper!2491 lt!2416515 (t!379390 s!2326)))))

(declare-fun b!6610717 () Bool)

(assert (=> b!6610717 (= e!3999607 e!3999605)))

(declare-fun res!2710840 () Bool)

(assert (=> b!6610717 (=> res!2710840 e!3999605)))

(assert (=> b!6610717 (= res!2710840 (not (= r!7292 lt!2416595)))))

(assert (=> b!6610717 (= lt!2416595 (Concat!25324 lt!2416568 (regTwo!33470 r!7292)))))

(declare-fun bm!579106 () Bool)

(assert (=> bm!579106 (= call!579065 (matchRSpec!3580 (ite c!1218367 lt!2416568 lt!2416531) (ite c!1218367 (_1!36761 lt!2416554) s!2326)))))

(declare-fun bm!579107 () Bool)

(assert (=> bm!579107 (= call!579078 (matchZipper!2491 (ite c!1218367 (store ((as const (Array Context!11726 Bool)) false) (Context!11727 call!579082) true) lt!2416559) (ite c!1218367 lt!2416530 (_2!36761 lt!2416561))))))

(declare-fun b!6610718 () Bool)

(assert (=> b!6610718 (= e!3999587 false)))

(declare-fun bm!579108 () Bool)

(assert (=> bm!579108 (= call!579084 (isDefined!13073 (ite c!1218367 lt!2416536 (ite c!1218365 lt!2416548 call!579095))))))

(declare-fun bm!579109 () Bool)

(assert (=> bm!579109 (= call!579059 (Exists!3549 (ite c!1218367 lambda!369140 lambda!369148)))))

(declare-fun bm!579110 () Bool)

(assert (=> bm!579110 (= call!579075 (findConcatSeparation!2784 (ite c!1218367 lt!2416568 lt!2416541) (regTwo!33470 r!7292) Nil!65612 s!2326 s!2326))))

(assert (= (and start!646154 res!2710851) b!6610710))

(assert (= (and b!6610710 res!2710860) b!6610686))

(assert (= (and b!6610686 res!2710847) b!6610704))

(assert (= (and b!6610704 (not res!2710833)) b!6610688))

(assert (= (and b!6610688 (not res!2710855)) b!6610709))

(assert (= (and b!6610709 (not res!2710839)) b!6610676))

(assert (= (and b!6610676 (not res!2710852)) b!6610680))

(assert (= (and b!6610680 (not res!2710842)) b!6610677))

(assert (= (and b!6610677 (not res!2710845)) b!6610687))

(assert (= (and b!6610687 (not res!2710837)) b!6610714))

(assert (= (and b!6610714 (not res!2710850)) b!6610700))

(assert (= (and b!6610700 c!1218368) b!6610697))

(assert (= (and b!6610700 (not c!1218368)) b!6610673))

(assert (= (and b!6610697 (not res!2710843)) b!6610716))

(assert (= (and b!6610700 (not res!2710836)) b!6610678))

(assert (= (and b!6610678 res!2710835) b!6610696))

(assert (= (and b!6610678 (not res!2710854)) b!6610685))

(assert (= (and b!6610685 (not res!2710832)) b!6610693))

(assert (= (and b!6610693 (not res!2710858)) b!6610682))

(assert (= (and b!6610682 (not res!2710841)) b!6610699))

(assert (= (and b!6610699 (not res!2710838)) b!6610684))

(assert (= (and b!6610684 (not res!2710856)) b!6610717))

(assert (= (and b!6610717 (not res!2710840)) b!6610689))

(assert (= (and b!6610689 (not res!2710831)) b!6610703))

(assert (= (and b!6610703 (not res!2710853)) b!6610671))

(assert (= (and b!6610671 (not res!2710848)) b!6610715))

(assert (= (and b!6610715 res!2710844) b!6610713))

(assert (= (and b!6610715 c!1218367) b!6610705))

(assert (= (and b!6610715 (not c!1218367)) b!6610692))

(assert (= (and b!6610705 c!1218366) b!6610702))

(assert (= (and b!6610705 (not c!1218366)) b!6610698))

(assert (= (and b!6610702 res!2710849) b!6610679))

(assert (= (and b!6610698 res!2710859) b!6610672))

(assert (= (or b!6610702 b!6610698) bm!579072))

(assert (= (or b!6610702 b!6610698) bm!579102))

(assert (= (or b!6610702 b!6610698) bm!579065))

(assert (= (or b!6610679 b!6610698) bm!579074))

(assert (= (and b!6610692 c!1218369) b!6610695))

(assert (= (and b!6610692 (not c!1218369)) b!6610701))

(assert (= (and b!6610695 c!1218365) b!6610683))

(assert (= (and b!6610695 (not c!1218365)) b!6610674))

(assert (= (and b!6610683 res!2710846) b!6610694))

(assert (= (and b!6610683 res!2710834) b!6610718))

(assert (= (and b!6610674 res!2710857) b!6610712))

(assert (= (or b!6610683 b!6610674) bm!579085))

(assert (= (or b!6610683 b!6610674) bm!579076))

(assert (= (or b!6610683 b!6610674) bm!579054))

(assert (= (or b!6610683 b!6610674) bm!579079))

(assert (= (or b!6610683 b!6610674) bm!579100))

(assert (= (or b!6610683 b!6610674) bm!579067))

(assert (= (or b!6610683 b!6610674) bm!579044))

(assert (= (or b!6610683 b!6610674) bm!579055))

(assert (= (or b!6610683 b!6610674) bm!579073))

(assert (= (or b!6610683 b!6610674) bm!579087))

(assert (= (or b!6610683 b!6610674) bm!579075))

(assert (= (or b!6610683 b!6610674) bm!579049))

(assert (= (or b!6610683 b!6610674) bm!579103))

(assert (= (or b!6610683 b!6610674) bm!579052))

(assert (= (or b!6610683 b!6610674) bm!579057))

(assert (= (or b!6610683 b!6610674) bm!579061))

(assert (= (or b!6610683 b!6610674) bm!579088))

(assert (= (or b!6610683 b!6610674) bm!579068))

(assert (= (or b!6610683 b!6610674) bm!579050))

(assert (= (or b!6610698 bm!579049) bm!579058))

(assert (= (or b!6610698 b!6610683) bm!579106))

(assert (= (or b!6610698 bm!579075) bm!579059))

(assert (= (or b!6610705 b!6610683) bm!579109))

(assert (= (or b!6610698 b!6610683) bm!579096))

(assert (= (or b!6610698 b!6610683) bm!579083))

(assert (= (or b!6610698 bm!579088) bm!579051))

(assert (= (or b!6610698 bm!579067) bm!579095))

(assert (= (or b!6610702 b!6610674) bm!579043))

(assert (= (or b!6610698 b!6610683) bm!579091))

(assert (= (or b!6610698 bm!579068) bm!579108))

(assert (= (or b!6610705 bm!579076) bm!579105))

(assert (= (or b!6610705 b!6610683) bm!579040))

(assert (= (or b!6610698 b!6610683) bm!579097))

(assert (= (or b!6610702 b!6610674) bm!579046))

(assert (= (or b!6610698 bm!579052) bm!579082))

(assert (= (or b!6610698 bm!579050) bm!579048))

(assert (= (or b!6610698 b!6610683) bm!579047))

(assert (= (or b!6610705 bm!579073) bm!579101))

(assert (= (or b!6610705 bm!579055) bm!579098))

(assert (= (or bm!579065 bm!579100) bm!579041))

(assert (= (or b!6610705 bm!579044) bm!579080))

(assert (= (or b!6610698 b!6610683) bm!579092))

(assert (= (or b!6610698 bm!579085) bm!579063))

(assert (= (or b!6610698 b!6610683) bm!579071))

(assert (= (or b!6610698 b!6610683) bm!579069))

(assert (= (or b!6610698 b!6610683) bm!579042))

(assert (= (or b!6610698 b!6610683) bm!579086))

(assert (= (or bm!579102 bm!579087) bm!579062))

(assert (= (or b!6610702 b!6610674) bm!579094))

(assert (= (or b!6610698 bm!579054) bm!579089))

(assert (= (or b!6610698 bm!579057) bm!579064))

(assert (= (or b!6610698 b!6610683) bm!579078))

(assert (= (or bm!579072 bm!579103) bm!579099))

(assert (= (or b!6610698 b!6610683) bm!579045))

(assert (= (or b!6610698 b!6610683) bm!579081))

(assert (= (or bm!579074 b!6610705 b!6610692) bm!579084))

(assert (= (or b!6610698 b!6610683) bm!579070))

(assert (= (or b!6610705 b!6610683) bm!579110))

(assert (= (or b!6610698 b!6610683) bm!579056))

(assert (= (or b!6610705 b!6610683) bm!579077))

(assert (= (or b!6610698 b!6610683) bm!579090))

(assert (= (or b!6610698 b!6610683) bm!579066))

(assert (= (or b!6610698 b!6610683) bm!579053))

(assert (= (or b!6610702 b!6610674) bm!579093))

(assert (= (or b!6610698 b!6610695) bm!579060))

(assert (= (or b!6610698 bm!579061) bm!579104))

(assert (= (or b!6610698 b!6610683) bm!579107))

(assert (= (and start!646154 ((_ is ElementMatch!16479) r!7292)) b!6610691))

(assert (= (and start!646154 ((_ is Concat!25324) r!7292)) b!6610675))

(assert (= (and start!646154 ((_ is Star!16479) r!7292)) b!6610711))

(assert (= (and start!646154 ((_ is Union!16479) r!7292)) b!6610690))

(assert (= (and start!646154 condSetEmpty!45154) setIsEmpty!45154))

(assert (= (and start!646154 (not condSetEmpty!45154)) setNonEmpty!45154))

(assert (= setNonEmpty!45154 b!6610681))

(assert (= b!6610706 b!6610708))

(assert (= (and start!646154 ((_ is Cons!65614) zl!343)) b!6610706))

(assert (= (and start!646154 ((_ is Cons!65612) s!2326)) b!6610707))

(declare-fun m!7385280 () Bool)

(assert (=> bm!579090 m!7385280))

(declare-fun m!7385282 () Bool)

(assert (=> bm!579042 m!7385282))

(declare-fun m!7385284 () Bool)

(assert (=> bm!579105 m!7385284))

(declare-fun m!7385286 () Bool)

(assert (=> bm!579058 m!7385286))

(declare-fun m!7385288 () Bool)

(assert (=> b!6610697 m!7385288))

(declare-fun m!7385290 () Bool)

(assert (=> b!6610697 m!7385290))

(declare-fun m!7385292 () Bool)

(assert (=> b!6610697 m!7385292))

(declare-fun m!7385294 () Bool)

(assert (=> bm!579108 m!7385294))

(declare-fun m!7385296 () Bool)

(assert (=> b!6610674 m!7385296))

(declare-fun m!7385298 () Bool)

(assert (=> bm!579047 m!7385298))

(declare-fun m!7385300 () Bool)

(assert (=> setNonEmpty!45154 m!7385300))

(declare-fun m!7385302 () Bool)

(assert (=> b!6610709 m!7385302))

(declare-fun m!7385304 () Bool)

(assert (=> bm!579079 m!7385304))

(declare-fun m!7385306 () Bool)

(assert (=> bm!579091 m!7385306))

(declare-fun m!7385308 () Bool)

(assert (=> bm!579086 m!7385308))

(declare-fun m!7385310 () Bool)

(assert (=> bm!579106 m!7385310))

(declare-fun m!7385312 () Bool)

(assert (=> bm!579096 m!7385312))

(declare-fun m!7385314 () Bool)

(assert (=> bm!579080 m!7385314))

(declare-fun m!7385316 () Bool)

(assert (=> bm!579077 m!7385316))

(declare-fun m!7385318 () Bool)

(assert (=> bm!579095 m!7385318))

(declare-fun m!7385320 () Bool)

(assert (=> b!6610705 m!7385320))

(declare-fun m!7385322 () Bool)

(assert (=> bm!579063 m!7385322))

(declare-fun m!7385324 () Bool)

(assert (=> bm!579083 m!7385324))

(declare-fun m!7385326 () Bool)

(assert (=> bm!579109 m!7385326))

(declare-fun m!7385328 () Bool)

(assert (=> bm!579097 m!7385328))

(declare-fun m!7385330 () Bool)

(assert (=> b!6610699 m!7385330))

(declare-fun m!7385332 () Bool)

(assert (=> b!6610699 m!7385332))

(declare-fun m!7385334 () Bool)

(assert (=> bm!579062 m!7385334))

(declare-fun m!7385336 () Bool)

(assert (=> bm!579082 m!7385336))

(declare-fun m!7385338 () Bool)

(assert (=> bm!579069 m!7385338))

(declare-fun m!7385340 () Bool)

(assert (=> bm!579048 m!7385340))

(declare-fun m!7385342 () Bool)

(assert (=> b!6610683 m!7385342))

(declare-fun m!7385344 () Bool)

(assert (=> b!6610683 m!7385344))

(assert (=> b!6610683 m!7385344))

(declare-fun m!7385346 () Bool)

(assert (=> b!6610683 m!7385346))

(declare-fun m!7385348 () Bool)

(assert (=> b!6610683 m!7385348))

(declare-fun m!7385350 () Bool)

(assert (=> b!6610683 m!7385350))

(declare-fun m!7385352 () Bool)

(assert (=> b!6610683 m!7385352))

(declare-fun m!7385354 () Bool)

(assert (=> b!6610683 m!7385354))

(declare-fun m!7385356 () Bool)

(assert (=> b!6610683 m!7385356))

(declare-fun m!7385358 () Bool)

(assert (=> b!6610683 m!7385358))

(declare-fun m!7385360 () Bool)

(assert (=> b!6610683 m!7385360))

(declare-fun m!7385362 () Bool)

(assert (=> b!6610683 m!7385362))

(declare-fun m!7385364 () Bool)

(assert (=> b!6610683 m!7385364))

(declare-fun m!7385366 () Bool)

(assert (=> b!6610683 m!7385366))

(declare-fun m!7385368 () Bool)

(assert (=> b!6610683 m!7385368))

(declare-fun m!7385370 () Bool)

(assert (=> bm!579045 m!7385370))

(declare-fun m!7385372 () Bool)

(assert (=> b!6610703 m!7385372))

(declare-fun m!7385374 () Bool)

(assert (=> b!6610703 m!7385374))

(declare-fun m!7385376 () Bool)

(assert (=> b!6610703 m!7385376))

(declare-fun m!7385378 () Bool)

(assert (=> b!6610703 m!7385378))

(declare-fun m!7385380 () Bool)

(assert (=> b!6610703 m!7385380))

(declare-fun m!7385382 () Bool)

(assert (=> b!6610703 m!7385382))

(declare-fun m!7385384 () Bool)

(assert (=> b!6610703 m!7385384))

(declare-fun m!7385386 () Bool)

(assert (=> b!6610703 m!7385386))

(declare-fun m!7385388 () Bool)

(assert (=> b!6610703 m!7385388))

(declare-fun m!7385390 () Bool)

(assert (=> bm!579064 m!7385390))

(declare-fun m!7385392 () Bool)

(assert (=> b!6610706 m!7385392))

(declare-fun m!7385394 () Bool)

(assert (=> bm!579046 m!7385394))

(declare-fun m!7385396 () Bool)

(assert (=> bm!579110 m!7385396))

(declare-fun m!7385398 () Bool)

(assert (=> bm!579060 m!7385398))

(declare-fun m!7385400 () Bool)

(assert (=> bm!579070 m!7385400))

(declare-fun m!7385402 () Bool)

(assert (=> b!6610687 m!7385402))

(declare-fun m!7385404 () Bool)

(assert (=> b!6610687 m!7385404))

(declare-fun m!7385406 () Bool)

(assert (=> b!6610687 m!7385406))

(declare-fun m!7385408 () Bool)

(assert (=> b!6610687 m!7385408))

(assert (=> b!6610687 m!7385402))

(declare-fun m!7385410 () Bool)

(assert (=> b!6610687 m!7385410))

(assert (=> b!6610687 m!7385404))

(declare-fun m!7385412 () Bool)

(assert (=> b!6610687 m!7385412))

(declare-fun m!7385414 () Bool)

(assert (=> bm!579078 m!7385414))

(declare-fun m!7385416 () Bool)

(assert (=> b!6610710 m!7385416))

(declare-fun m!7385418 () Bool)

(assert (=> bm!579098 m!7385418))

(declare-fun m!7385420 () Bool)

(assert (=> bm!579084 m!7385420))

(declare-fun m!7385422 () Bool)

(assert (=> bm!579089 m!7385422))

(declare-fun m!7385424 () Bool)

(assert (=> b!6610686 m!7385424))

(declare-fun m!7385426 () Bool)

(assert (=> b!6610680 m!7385426))

(assert (=> b!6610680 m!7385426))

(declare-fun m!7385428 () Bool)

(assert (=> b!6610680 m!7385428))

(declare-fun m!7385430 () Bool)

(assert (=> b!6610700 m!7385430))

(declare-fun m!7385432 () Bool)

(assert (=> b!6610700 m!7385432))

(declare-fun m!7385434 () Bool)

(assert (=> b!6610700 m!7385434))

(declare-fun m!7385436 () Bool)

(assert (=> b!6610700 m!7385436))

(declare-fun m!7385438 () Bool)

(assert (=> b!6610700 m!7385438))

(assert (=> b!6610700 m!7385394))

(declare-fun m!7385440 () Bool)

(assert (=> b!6610700 m!7385440))

(declare-fun m!7385442 () Bool)

(assert (=> b!6610714 m!7385442))

(declare-fun m!7385444 () Bool)

(assert (=> b!6610671 m!7385444))

(declare-fun m!7385446 () Bool)

(assert (=> b!6610704 m!7385446))

(declare-fun m!7385448 () Bool)

(assert (=> b!6610704 m!7385448))

(declare-fun m!7385450 () Bool)

(assert (=> b!6610704 m!7385450))

(declare-fun m!7385452 () Bool)

(assert (=> bm!579099 m!7385452))

(assert (=> b!6610702 m!7385296))

(declare-fun m!7385454 () Bool)

(assert (=> bm!579051 m!7385454))

(declare-fun m!7385456 () Bool)

(assert (=> b!6610696 m!7385456))

(declare-fun m!7385458 () Bool)

(assert (=> bm!579093 m!7385458))

(declare-fun m!7385460 () Bool)

(assert (=> bm!579053 m!7385460))

(declare-fun m!7385462 () Bool)

(assert (=> b!6610689 m!7385462))

(assert (=> b!6610715 m!7385420))

(declare-fun m!7385464 () Bool)

(assert (=> b!6610715 m!7385464))

(declare-fun m!7385466 () Bool)

(assert (=> b!6610715 m!7385466))

(declare-fun m!7385468 () Bool)

(assert (=> b!6610715 m!7385468))

(assert (=> bm!579056 m!7385312))

(declare-fun m!7385470 () Bool)

(assert (=> bm!579059 m!7385470))

(declare-fun m!7385472 () Bool)

(assert (=> bm!579066 m!7385472))

(declare-fun m!7385474 () Bool)

(assert (=> b!6610682 m!7385474))

(declare-fun m!7385476 () Bool)

(assert (=> b!6610682 m!7385476))

(declare-fun m!7385478 () Bool)

(assert (=> b!6610682 m!7385478))

(declare-fun m!7385480 () Bool)

(assert (=> b!6610682 m!7385480))

(declare-fun m!7385482 () Bool)

(assert (=> b!6610682 m!7385482))

(declare-fun m!7385484 () Bool)

(assert (=> bm!579092 m!7385484))

(declare-fun m!7385486 () Bool)

(assert (=> start!646154 m!7385486))

(declare-fun m!7385488 () Bool)

(assert (=> bm!579081 m!7385488))

(declare-fun m!7385490 () Bool)

(assert (=> bm!579040 m!7385490))

(declare-fun m!7385492 () Bool)

(assert (=> bm!579094 m!7385492))

(declare-fun m!7385494 () Bool)

(assert (=> bm!579101 m!7385494))

(declare-fun m!7385496 () Bool)

(assert (=> b!6610716 m!7385496))

(declare-fun m!7385498 () Bool)

(assert (=> bm!579043 m!7385498))

(declare-fun m!7385500 () Bool)

(assert (=> b!6610688 m!7385500))

(declare-fun m!7385502 () Bool)

(assert (=> b!6610693 m!7385502))

(declare-fun m!7385504 () Bool)

(assert (=> bm!579041 m!7385504))

(declare-fun m!7385506 () Bool)

(assert (=> bm!579104 m!7385506))

(assert (=> bm!579107 m!7385352))

(declare-fun m!7385508 () Bool)

(assert (=> bm!579107 m!7385508))

(declare-fun m!7385510 () Bool)

(assert (=> bm!579071 m!7385510))

(check-sat (not b!6610700) (not bm!579064) (not b!6610716) (not b!6610697) (not bm!579099) (not bm!579043) tp_is_empty!42211 (not bm!579091) (not bm!579086) (not b!6610704) (not bm!579071) (not b!6610711) (not b!6610683) (not bm!579104) (not bm!579083) (not b!6610706) (not b!6610703) (not bm!579089) (not bm!579041) (not bm!579042) (not b!6610715) (not bm!579109) (not bm!579045) (not bm!579058) (not b!6610705) (not bm!579046) (not bm!579040) (not bm!579094) (not bm!579110) (not bm!579080) (not b!6610696) (not bm!579066) (not bm!579047) (not b!6610671) (not bm!579062) (not bm!579060) (not bm!579095) (not bm!579081) (not bm!579098) (not bm!579078) (not bm!579070) (not bm!579056) (not bm!579059) (not bm!579084) (not b!6610680) (not bm!579093) (not b!6610687) (not b!6610688) (not bm!579082) (not bm!579063) (not bm!579105) (not b!6610682) (not start!646154) (not b!6610686) (not b!6610699) (not bm!579053) (not b!6610681) (not bm!579079) (not bm!579096) (not b!6610690) (not bm!579107) (not bm!579097) (not b!6610710) (not b!6610714) (not bm!579108) (not b!6610708) (not b!6610707) (not bm!579069) (not bm!579090) (not bm!579077) (not bm!579092) (not bm!579051) (not b!6610709) (not setNonEmpty!45154) (not b!6610689) (not bm!579101) (not bm!579106) (not bm!579048) (not b!6610675) (not b!6610693))
(check-sat)
