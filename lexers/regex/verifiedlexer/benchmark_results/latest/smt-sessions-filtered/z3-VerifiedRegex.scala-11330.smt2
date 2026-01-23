; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597860 () Bool)

(assert start!597860)

(declare-fun e!3581739 () Bool)

(declare-fun tp!1614583 () Bool)

(declare-fun e!3581742 () Bool)

(declare-fun b!5839203 () Bool)

(declare-datatypes ((C!32084 0))(
  ( (C!32085 (val!25744 Int)) )
))
(declare-datatypes ((Regex!15907 0))(
  ( (ElementMatch!15907 (c!1034555 C!32084)) (Concat!24752 (regOne!32326 Regex!15907) (regTwo!32326 Regex!15907)) (EmptyExpr!15907) (Star!15907 (reg!16236 Regex!15907)) (EmptyLang!15907) (Union!15907 (regOne!32327 Regex!15907) (regTwo!32327 Regex!15907)) )
))
(declare-datatypes ((List!64020 0))(
  ( (Nil!63896) (Cons!63896 (h!70344 Regex!15907) (t!377375 List!64020)) )
))
(declare-datatypes ((Context!10582 0))(
  ( (Context!10583 (exprs!5791 List!64020)) )
))
(declare-datatypes ((List!64021 0))(
  ( (Nil!63897) (Cons!63897 (h!70345 Context!10582) (t!377376 List!64021)) )
))
(declare-fun zl!343 () List!64021)

(declare-fun inv!83014 (Context!10582) Bool)

(assert (=> b!5839203 (= e!3581739 (and (inv!83014 (h!70345 zl!343)) e!3581742 tp!1614583))))

(declare-fun b!5839204 () Bool)

(declare-fun res!2460075 () Bool)

(declare-fun e!3581740 () Bool)

(assert (=> b!5839204 (=> res!2460075 e!3581740)))

(declare-fun r!7292 () Regex!15907)

(get-info :version)

(assert (=> b!5839204 (= res!2460075 (or ((_ is EmptyExpr!15907) r!7292) ((_ is EmptyLang!15907) r!7292) ((_ is ElementMatch!15907) r!7292) (not ((_ is Union!15907) r!7292))))))

(declare-fun setIsEmpty!39558 () Bool)

(declare-fun setRes!39558 () Bool)

(assert (=> setIsEmpty!39558 setRes!39558))

(declare-fun b!5839205 () Bool)

(declare-fun res!2460079 () Bool)

(assert (=> b!5839205 (=> res!2460079 e!3581740)))

(declare-fun isEmpty!35754 (List!64021) Bool)

(assert (=> b!5839205 (= res!2460079 (not (isEmpty!35754 (t!377376 zl!343))))))

(declare-fun b!5839206 () Bool)

(declare-fun res!2460076 () Bool)

(assert (=> b!5839206 (=> res!2460076 e!3581740)))

(declare-fun generalisedUnion!1751 (List!64020) Regex!15907)

(declare-fun unfocusZipperList!1328 (List!64021) List!64020)

(assert (=> b!5839206 (= res!2460076 (not (= r!7292 (generalisedUnion!1751 (unfocusZipperList!1328 zl!343)))))))

(declare-fun b!5839207 () Bool)

(declare-fun res!2460077 () Bool)

(assert (=> b!5839207 (=> res!2460077 e!3581740)))

(assert (=> b!5839207 (= res!2460077 (not ((_ is Cons!63896) (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5839208 () Bool)

(declare-fun e!3581745 () Bool)

(declare-fun tp!1614581 () Bool)

(declare-fun tp!1614587 () Bool)

(assert (=> b!5839208 (= e!3581745 (and tp!1614581 tp!1614587))))

(declare-fun res!2460080 () Bool)

(declare-fun e!3581738 () Bool)

(assert (=> start!597860 (=> (not res!2460080) (not e!3581738))))

(declare-fun validRegex!7643 (Regex!15907) Bool)

(assert (=> start!597860 (= res!2460080 (validRegex!7643 r!7292))))

(assert (=> start!597860 e!3581738))

(assert (=> start!597860 e!3581745))

(declare-fun condSetEmpty!39558 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10582))

(assert (=> start!597860 (= condSetEmpty!39558 (= z!1189 ((as const (Array Context!10582 Bool)) false)))))

(assert (=> start!597860 setRes!39558))

(assert (=> start!597860 e!3581739))

(declare-fun e!3581743 () Bool)

(assert (=> start!597860 e!3581743))

(declare-fun b!5839209 () Bool)

(declare-fun res!2460078 () Bool)

(assert (=> b!5839209 (=> (not res!2460078) (not e!3581738))))

(declare-fun unfocusZipper!1649 (List!64021) Regex!15907)

(assert (=> b!5839209 (= res!2460078 (= r!7292 (unfocusZipper!1649 zl!343)))))

(declare-fun b!5839210 () Bool)

(declare-fun e!3581741 () Bool)

(assert (=> b!5839210 (= e!3581740 e!3581741)))

(declare-fun res!2460081 () Bool)

(assert (=> b!5839210 (=> res!2460081 e!3581741)))

(declare-datatypes ((List!64022 0))(
  ( (Nil!63898) (Cons!63898 (h!70346 C!32084) (t!377377 List!64022)) )
))
(declare-fun s!2326 () List!64022)

(declare-fun lt!2303633 () Bool)

(declare-fun lt!2303634 () Bool)

(declare-fun lt!2303636 () Bool)

(assert (=> b!5839210 (= res!2460081 (or (not (= lt!2303633 (or lt!2303636 lt!2303634))) ((_ is Nil!63898) s!2326)))))

(declare-fun matchRSpec!3008 (Regex!15907 List!64022) Bool)

(assert (=> b!5839210 (= lt!2303634 (matchRSpec!3008 (regTwo!32327 r!7292) s!2326))))

(declare-fun matchR!8090 (Regex!15907 List!64022) Bool)

(assert (=> b!5839210 (= lt!2303634 (matchR!8090 (regTwo!32327 r!7292) s!2326))))

(declare-datatypes ((Unit!157085 0))(
  ( (Unit!157086) )
))
(declare-fun lt!2303631 () Unit!157085)

(declare-fun mainMatchTheorem!3008 (Regex!15907 List!64022) Unit!157085)

(assert (=> b!5839210 (= lt!2303631 (mainMatchTheorem!3008 (regTwo!32327 r!7292) s!2326))))

(assert (=> b!5839210 (= lt!2303636 (matchRSpec!3008 (regOne!32327 r!7292) s!2326))))

(assert (=> b!5839210 (= lt!2303636 (matchR!8090 (regOne!32327 r!7292) s!2326))))

(declare-fun lt!2303635 () Unit!157085)

(assert (=> b!5839210 (= lt!2303635 (mainMatchTheorem!3008 (regOne!32327 r!7292) s!2326))))

(declare-fun b!5839211 () Bool)

(declare-fun tp!1614588 () Bool)

(assert (=> b!5839211 (= e!3581742 tp!1614588)))

(declare-fun b!5839212 () Bool)

(declare-fun tp!1614586 () Bool)

(declare-fun tp!1614582 () Bool)

(assert (=> b!5839212 (= e!3581745 (and tp!1614586 tp!1614582))))

(declare-fun b!5839213 () Bool)

(assert (=> b!5839213 (= e!3581738 (not e!3581740))))

(declare-fun res!2460083 () Bool)

(assert (=> b!5839213 (=> res!2460083 e!3581740)))

(assert (=> b!5839213 (= res!2460083 (not ((_ is Cons!63897) zl!343)))))

(assert (=> b!5839213 (= lt!2303633 (matchRSpec!3008 r!7292 s!2326))))

(assert (=> b!5839213 (= lt!2303633 (matchR!8090 r!7292 s!2326))))

(declare-fun lt!2303632 () Unit!157085)

(assert (=> b!5839213 (= lt!2303632 (mainMatchTheorem!3008 r!7292 s!2326))))

(declare-fun b!5839214 () Bool)

(declare-fun tp_is_empty!41067 () Bool)

(declare-fun tp!1614585 () Bool)

(assert (=> b!5839214 (= e!3581743 (and tp_is_empty!41067 tp!1614585))))

(declare-fun b!5839215 () Bool)

(assert (=> b!5839215 (= e!3581741 (inv!83014 (Context!10583 (Cons!63896 r!7292 Nil!63896))))))

(declare-fun b!5839216 () Bool)

(declare-fun tp!1614579 () Bool)

(assert (=> b!5839216 (= e!3581745 tp!1614579)))

(declare-fun b!5839217 () Bool)

(declare-fun res!2460082 () Bool)

(assert (=> b!5839217 (=> res!2460082 e!3581740)))

(declare-fun generalisedConcat!1504 (List!64020) Regex!15907)

(assert (=> b!5839217 (= res!2460082 (not (= r!7292 (generalisedConcat!1504 (exprs!5791 (h!70345 zl!343))))))))

(declare-fun b!5839218 () Bool)

(declare-fun e!3581744 () Bool)

(declare-fun tp!1614584 () Bool)

(assert (=> b!5839218 (= e!3581744 tp!1614584)))

(declare-fun b!5839219 () Bool)

(assert (=> b!5839219 (= e!3581745 tp_is_empty!41067)))

(declare-fun b!5839220 () Bool)

(declare-fun res!2460084 () Bool)

(assert (=> b!5839220 (=> (not res!2460084) (not e!3581738))))

(declare-fun toList!9691 ((InoxSet Context!10582)) List!64021)

(assert (=> b!5839220 (= res!2460084 (= (toList!9691 z!1189) zl!343))))

(declare-fun setElem!39558 () Context!10582)

(declare-fun setNonEmpty!39558 () Bool)

(declare-fun tp!1614580 () Bool)

(assert (=> setNonEmpty!39558 (= setRes!39558 (and tp!1614580 (inv!83014 setElem!39558) e!3581744))))

(declare-fun setRest!39558 () (InoxSet Context!10582))

(assert (=> setNonEmpty!39558 (= z!1189 ((_ map or) (store ((as const (Array Context!10582 Bool)) false) setElem!39558 true) setRest!39558))))

(assert (= (and start!597860 res!2460080) b!5839220))

(assert (= (and b!5839220 res!2460084) b!5839209))

(assert (= (and b!5839209 res!2460078) b!5839213))

(assert (= (and b!5839213 (not res!2460083)) b!5839205))

(assert (= (and b!5839205 (not res!2460079)) b!5839217))

(assert (= (and b!5839217 (not res!2460082)) b!5839207))

(assert (= (and b!5839207 (not res!2460077)) b!5839206))

(assert (= (and b!5839206 (not res!2460076)) b!5839204))

(assert (= (and b!5839204 (not res!2460075)) b!5839210))

(assert (= (and b!5839210 (not res!2460081)) b!5839215))

(assert (= (and start!597860 ((_ is ElementMatch!15907) r!7292)) b!5839219))

(assert (= (and start!597860 ((_ is Concat!24752) r!7292)) b!5839212))

(assert (= (and start!597860 ((_ is Star!15907) r!7292)) b!5839216))

(assert (= (and start!597860 ((_ is Union!15907) r!7292)) b!5839208))

(assert (= (and start!597860 condSetEmpty!39558) setIsEmpty!39558))

(assert (= (and start!597860 (not condSetEmpty!39558)) setNonEmpty!39558))

(assert (= setNonEmpty!39558 b!5839218))

(assert (= b!5839203 b!5839211))

(assert (= (and start!597860 ((_ is Cons!63897) zl!343)) b!5839203))

(assert (= (and start!597860 ((_ is Cons!63898) s!2326)) b!5839214))

(declare-fun m!6764310 () Bool)

(assert (=> start!597860 m!6764310))

(declare-fun m!6764312 () Bool)

(assert (=> b!5839220 m!6764312))

(declare-fun m!6764314 () Bool)

(assert (=> b!5839215 m!6764314))

(declare-fun m!6764316 () Bool)

(assert (=> b!5839209 m!6764316))

(declare-fun m!6764318 () Bool)

(assert (=> b!5839203 m!6764318))

(declare-fun m!6764320 () Bool)

(assert (=> b!5839217 m!6764320))

(declare-fun m!6764322 () Bool)

(assert (=> b!5839210 m!6764322))

(declare-fun m!6764324 () Bool)

(assert (=> b!5839210 m!6764324))

(declare-fun m!6764326 () Bool)

(assert (=> b!5839210 m!6764326))

(declare-fun m!6764328 () Bool)

(assert (=> b!5839210 m!6764328))

(declare-fun m!6764330 () Bool)

(assert (=> b!5839210 m!6764330))

(declare-fun m!6764332 () Bool)

(assert (=> b!5839210 m!6764332))

(declare-fun m!6764334 () Bool)

(assert (=> setNonEmpty!39558 m!6764334))

(declare-fun m!6764336 () Bool)

(assert (=> b!5839213 m!6764336))

(declare-fun m!6764338 () Bool)

(assert (=> b!5839213 m!6764338))

(declare-fun m!6764340 () Bool)

(assert (=> b!5839213 m!6764340))

(declare-fun m!6764342 () Bool)

(assert (=> b!5839206 m!6764342))

(assert (=> b!5839206 m!6764342))

(declare-fun m!6764344 () Bool)

(assert (=> b!5839206 m!6764344))

(declare-fun m!6764346 () Bool)

(assert (=> b!5839205 m!6764346))

(check-sat (not b!5839214) (not b!5839203) (not b!5839217) (not b!5839206) (not start!597860) (not b!5839210) (not b!5839208) (not b!5839220) (not b!5839209) tp_is_empty!41067 (not b!5839213) (not b!5839211) (not b!5839212) (not b!5839205) (not setNonEmpty!39558) (not b!5839218) (not b!5839215) (not b!5839216))
(check-sat)
(get-model)

(declare-fun d!1834893 () Bool)

(declare-fun e!3581748 () Bool)

(assert (=> d!1834893 e!3581748))

(declare-fun res!2460087 () Bool)

(assert (=> d!1834893 (=> (not res!2460087) (not e!3581748))))

(declare-fun lt!2303639 () List!64021)

(declare-fun noDuplicate!1771 (List!64021) Bool)

(assert (=> d!1834893 (= res!2460087 (noDuplicate!1771 lt!2303639))))

(declare-fun choose!44334 ((InoxSet Context!10582)) List!64021)

(assert (=> d!1834893 (= lt!2303639 (choose!44334 z!1189))))

(assert (=> d!1834893 (= (toList!9691 z!1189) lt!2303639)))

(declare-fun b!5839223 () Bool)

(declare-fun content!11736 (List!64021) (InoxSet Context!10582))

(assert (=> b!5839223 (= e!3581748 (= (content!11736 lt!2303639) z!1189))))

(assert (= (and d!1834893 res!2460087) b!5839223))

(declare-fun m!6764348 () Bool)

(assert (=> d!1834893 m!6764348))

(declare-fun m!6764350 () Bool)

(assert (=> d!1834893 m!6764350))

(declare-fun m!6764352 () Bool)

(assert (=> b!5839223 m!6764352))

(assert (=> b!5839220 d!1834893))

(declare-fun d!1834897 () Bool)

(declare-fun lt!2303642 () Regex!15907)

(assert (=> d!1834897 (validRegex!7643 lt!2303642)))

(assert (=> d!1834897 (= lt!2303642 (generalisedUnion!1751 (unfocusZipperList!1328 zl!343)))))

(assert (=> d!1834897 (= (unfocusZipper!1649 zl!343) lt!2303642)))

(declare-fun bs!1375800 () Bool)

(assert (= bs!1375800 d!1834897))

(declare-fun m!6764354 () Bool)

(assert (=> bs!1375800 m!6764354))

(assert (=> bs!1375800 m!6764342))

(assert (=> bs!1375800 m!6764342))

(assert (=> bs!1375800 m!6764344))

(assert (=> b!5839209 d!1834897))

(declare-fun b!5839292 () Bool)

(assert (=> b!5839292 true))

(assert (=> b!5839292 true))

(declare-fun bs!1375801 () Bool)

(declare-fun b!5839287 () Bool)

(assert (= bs!1375801 (and b!5839287 b!5839292)))

(declare-fun lambda!319438 () Int)

(declare-fun lambda!319437 () Int)

(assert (=> bs!1375801 (not (= lambda!319438 lambda!319437))))

(assert (=> b!5839287 true))

(assert (=> b!5839287 true))

(declare-fun b!5839286 () Bool)

(declare-fun res!2460122 () Bool)

(declare-fun e!3581794 () Bool)

(assert (=> b!5839286 (=> res!2460122 e!3581794)))

(declare-fun call!456041 () Bool)

(assert (=> b!5839286 (= res!2460122 call!456041)))

(declare-fun e!3581797 () Bool)

(assert (=> b!5839286 (= e!3581797 e!3581794)))

(declare-fun d!1834899 () Bool)

(declare-fun c!1034573 () Bool)

(assert (=> d!1834899 (= c!1034573 ((_ is EmptyExpr!15907) (regTwo!32327 r!7292)))))

(declare-fun e!3581795 () Bool)

(assert (=> d!1834899 (= (matchRSpec!3008 (regTwo!32327 r!7292) s!2326) e!3581795)))

(declare-fun call!456040 () Bool)

(assert (=> b!5839287 (= e!3581797 call!456040)))

(declare-fun b!5839288 () Bool)

(assert (=> b!5839288 (= e!3581795 call!456041)))

(declare-fun b!5839289 () Bool)

(declare-fun e!3581792 () Bool)

(assert (=> b!5839289 (= e!3581792 e!3581797)))

(declare-fun c!1034570 () Bool)

(assert (=> b!5839289 (= c!1034570 ((_ is Star!15907) (regTwo!32327 r!7292)))))

(declare-fun b!5839290 () Bool)

(declare-fun e!3581793 () Bool)

(assert (=> b!5839290 (= e!3581792 e!3581793)))

(declare-fun res!2460124 () Bool)

(assert (=> b!5839290 (= res!2460124 (matchRSpec!3008 (regOne!32327 (regTwo!32327 r!7292)) s!2326))))

(assert (=> b!5839290 (=> res!2460124 e!3581793)))

(declare-fun b!5839291 () Bool)

(assert (=> b!5839291 (= e!3581793 (matchRSpec!3008 (regTwo!32327 (regTwo!32327 r!7292)) s!2326))))

(declare-fun bm!456035 () Bool)

(declare-fun isEmpty!35755 (List!64022) Bool)

(assert (=> bm!456035 (= call!456041 (isEmpty!35755 s!2326))))

(assert (=> b!5839292 (= e!3581794 call!456040)))

(declare-fun b!5839293 () Bool)

(declare-fun e!3581791 () Bool)

(assert (=> b!5839293 (= e!3581795 e!3581791)))

(declare-fun res!2460123 () Bool)

(assert (=> b!5839293 (= res!2460123 (not ((_ is EmptyLang!15907) (regTwo!32327 r!7292))))))

(assert (=> b!5839293 (=> (not res!2460123) (not e!3581791))))

(declare-fun bm!456036 () Bool)

(declare-fun Exists!2978 (Int) Bool)

(assert (=> bm!456036 (= call!456040 (Exists!2978 (ite c!1034570 lambda!319437 lambda!319438)))))

(declare-fun b!5839294 () Bool)

(declare-fun c!1034572 () Bool)

(assert (=> b!5839294 (= c!1034572 ((_ is ElementMatch!15907) (regTwo!32327 r!7292)))))

(declare-fun e!3581796 () Bool)

(assert (=> b!5839294 (= e!3581791 e!3581796)))

(declare-fun b!5839295 () Bool)

(declare-fun c!1034571 () Bool)

(assert (=> b!5839295 (= c!1034571 ((_ is Union!15907) (regTwo!32327 r!7292)))))

(assert (=> b!5839295 (= e!3581796 e!3581792)))

(declare-fun b!5839296 () Bool)

(assert (=> b!5839296 (= e!3581796 (= s!2326 (Cons!63898 (c!1034555 (regTwo!32327 r!7292)) Nil!63898)))))

(assert (= (and d!1834899 c!1034573) b!5839288))

(assert (= (and d!1834899 (not c!1034573)) b!5839293))

(assert (= (and b!5839293 res!2460123) b!5839294))

(assert (= (and b!5839294 c!1034572) b!5839296))

(assert (= (and b!5839294 (not c!1034572)) b!5839295))

(assert (= (and b!5839295 c!1034571) b!5839290))

(assert (= (and b!5839295 (not c!1034571)) b!5839289))

(assert (= (and b!5839290 (not res!2460124)) b!5839291))

(assert (= (and b!5839289 c!1034570) b!5839286))

(assert (= (and b!5839289 (not c!1034570)) b!5839287))

(assert (= (and b!5839286 (not res!2460122)) b!5839292))

(assert (= (or b!5839292 b!5839287) bm!456036))

(assert (= (or b!5839288 b!5839286) bm!456035))

(declare-fun m!6764368 () Bool)

(assert (=> b!5839290 m!6764368))

(declare-fun m!6764370 () Bool)

(assert (=> b!5839291 m!6764370))

(declare-fun m!6764372 () Bool)

(assert (=> bm!456035 m!6764372))

(declare-fun m!6764374 () Bool)

(assert (=> bm!456036 m!6764374))

(assert (=> b!5839210 d!1834899))

(declare-fun d!1834907 () Bool)

(assert (=> d!1834907 (= (matchR!8090 (regOne!32327 r!7292) s!2326) (matchRSpec!3008 (regOne!32327 r!7292) s!2326))))

(declare-fun lt!2303648 () Unit!157085)

(declare-fun choose!44335 (Regex!15907 List!64022) Unit!157085)

(assert (=> d!1834907 (= lt!2303648 (choose!44335 (regOne!32327 r!7292) s!2326))))

(assert (=> d!1834907 (validRegex!7643 (regOne!32327 r!7292))))

(assert (=> d!1834907 (= (mainMatchTheorem!3008 (regOne!32327 r!7292) s!2326) lt!2303648)))

(declare-fun bs!1375802 () Bool)

(assert (= bs!1375802 d!1834907))

(assert (=> bs!1375802 m!6764332))

(assert (=> bs!1375802 m!6764328))

(declare-fun m!6764376 () Bool)

(assert (=> bs!1375802 m!6764376))

(declare-fun m!6764378 () Bool)

(assert (=> bs!1375802 m!6764378))

(assert (=> b!5839210 d!1834907))

(declare-fun b!5839329 () Bool)

(declare-fun e!3581815 () Bool)

(declare-fun lt!2303651 () Bool)

(declare-fun call!456044 () Bool)

(assert (=> b!5839329 (= e!3581815 (= lt!2303651 call!456044))))

(declare-fun b!5839330 () Bool)

(declare-fun res!2460142 () Bool)

(declare-fun e!3581816 () Bool)

(assert (=> b!5839330 (=> res!2460142 e!3581816)))

(assert (=> b!5839330 (= res!2460142 (not ((_ is ElementMatch!15907) (regTwo!32327 r!7292))))))

(declare-fun e!3581812 () Bool)

(assert (=> b!5839330 (= e!3581812 e!3581816)))

(declare-fun b!5839331 () Bool)

(declare-fun e!3581813 () Bool)

(declare-fun derivativeStep!4644 (Regex!15907 C!32084) Regex!15907)

(declare-fun head!12366 (List!64022) C!32084)

(declare-fun tail!11451 (List!64022) List!64022)

(assert (=> b!5839331 (= e!3581813 (matchR!8090 (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326)) (tail!11451 s!2326)))))

(declare-fun b!5839332 () Bool)

(declare-fun e!3581818 () Bool)

(declare-fun e!3581817 () Bool)

(assert (=> b!5839332 (= e!3581818 e!3581817)))

(declare-fun res!2460145 () Bool)

(assert (=> b!5839332 (=> res!2460145 e!3581817)))

(assert (=> b!5839332 (= res!2460145 call!456044)))

(declare-fun d!1834909 () Bool)

(assert (=> d!1834909 e!3581815))

(declare-fun c!1034581 () Bool)

(assert (=> d!1834909 (= c!1034581 ((_ is EmptyExpr!15907) (regTwo!32327 r!7292)))))

(assert (=> d!1834909 (= lt!2303651 e!3581813)))

(declare-fun c!1034582 () Bool)

(assert (=> d!1834909 (= c!1034582 (isEmpty!35755 s!2326))))

(assert (=> d!1834909 (validRegex!7643 (regTwo!32327 r!7292))))

(assert (=> d!1834909 (= (matchR!8090 (regTwo!32327 r!7292) s!2326) lt!2303651)))

(declare-fun b!5839333 () Bool)

(declare-fun res!2460148 () Bool)

(declare-fun e!3581814 () Bool)

(assert (=> b!5839333 (=> (not res!2460148) (not e!3581814))))

(assert (=> b!5839333 (= res!2460148 (not call!456044))))

(declare-fun b!5839334 () Bool)

(assert (=> b!5839334 (= e!3581814 (= (head!12366 s!2326) (c!1034555 (regTwo!32327 r!7292))))))

(declare-fun b!5839335 () Bool)

(declare-fun res!2460141 () Bool)

(assert (=> b!5839335 (=> res!2460141 e!3581817)))

(assert (=> b!5839335 (= res!2460141 (not (isEmpty!35755 (tail!11451 s!2326))))))

(declare-fun b!5839336 () Bool)

(assert (=> b!5839336 (= e!3581817 (not (= (head!12366 s!2326) (c!1034555 (regTwo!32327 r!7292)))))))

(declare-fun bm!456039 () Bool)

(assert (=> bm!456039 (= call!456044 (isEmpty!35755 s!2326))))

(declare-fun b!5839337 () Bool)

(assert (=> b!5839337 (= e!3581812 (not lt!2303651))))

(declare-fun b!5839338 () Bool)

(declare-fun res!2460143 () Bool)

(assert (=> b!5839338 (=> (not res!2460143) (not e!3581814))))

(assert (=> b!5839338 (= res!2460143 (isEmpty!35755 (tail!11451 s!2326)))))

(declare-fun b!5839339 () Bool)

(declare-fun res!2460144 () Bool)

(assert (=> b!5839339 (=> res!2460144 e!3581816)))

(assert (=> b!5839339 (= res!2460144 e!3581814)))

(declare-fun res!2460146 () Bool)

(assert (=> b!5839339 (=> (not res!2460146) (not e!3581814))))

(assert (=> b!5839339 (= res!2460146 lt!2303651)))

(declare-fun b!5839340 () Bool)

(assert (=> b!5839340 (= e!3581816 e!3581818)))

(declare-fun res!2460147 () Bool)

(assert (=> b!5839340 (=> (not res!2460147) (not e!3581818))))

(assert (=> b!5839340 (= res!2460147 (not lt!2303651))))

(declare-fun b!5839341 () Bool)

(declare-fun nullable!5906 (Regex!15907) Bool)

(assert (=> b!5839341 (= e!3581813 (nullable!5906 (regTwo!32327 r!7292)))))

(declare-fun b!5839342 () Bool)

(assert (=> b!5839342 (= e!3581815 e!3581812)))

(declare-fun c!1034580 () Bool)

(assert (=> b!5839342 (= c!1034580 ((_ is EmptyLang!15907) (regTwo!32327 r!7292)))))

(assert (= (and d!1834909 c!1034582) b!5839341))

(assert (= (and d!1834909 (not c!1034582)) b!5839331))

(assert (= (and d!1834909 c!1034581) b!5839329))

(assert (= (and d!1834909 (not c!1034581)) b!5839342))

(assert (= (and b!5839342 c!1034580) b!5839337))

(assert (= (and b!5839342 (not c!1034580)) b!5839330))

(assert (= (and b!5839330 (not res!2460142)) b!5839339))

(assert (= (and b!5839339 res!2460146) b!5839333))

(assert (= (and b!5839333 res!2460148) b!5839338))

(assert (= (and b!5839338 res!2460143) b!5839334))

(assert (= (and b!5839339 (not res!2460144)) b!5839340))

(assert (= (and b!5839340 res!2460147) b!5839332))

(assert (= (and b!5839332 (not res!2460145)) b!5839335))

(assert (= (and b!5839335 (not res!2460141)) b!5839336))

(assert (= (or b!5839329 b!5839332 b!5839333) bm!456039))

(declare-fun m!6764380 () Bool)

(assert (=> b!5839331 m!6764380))

(assert (=> b!5839331 m!6764380))

(declare-fun m!6764382 () Bool)

(assert (=> b!5839331 m!6764382))

(declare-fun m!6764384 () Bool)

(assert (=> b!5839331 m!6764384))

(assert (=> b!5839331 m!6764382))

(assert (=> b!5839331 m!6764384))

(declare-fun m!6764386 () Bool)

(assert (=> b!5839331 m!6764386))

(assert (=> d!1834909 m!6764372))

(declare-fun m!6764388 () Bool)

(assert (=> d!1834909 m!6764388))

(declare-fun m!6764390 () Bool)

(assert (=> b!5839341 m!6764390))

(assert (=> b!5839334 m!6764380))

(assert (=> b!5839338 m!6764384))

(assert (=> b!5839338 m!6764384))

(declare-fun m!6764392 () Bool)

(assert (=> b!5839338 m!6764392))

(assert (=> b!5839335 m!6764384))

(assert (=> b!5839335 m!6764384))

(assert (=> b!5839335 m!6764392))

(assert (=> bm!456039 m!6764372))

(assert (=> b!5839336 m!6764380))

(assert (=> b!5839210 d!1834909))

(declare-fun d!1834911 () Bool)

(assert (=> d!1834911 (= (matchR!8090 (regTwo!32327 r!7292) s!2326) (matchRSpec!3008 (regTwo!32327 r!7292) s!2326))))

(declare-fun lt!2303652 () Unit!157085)

(assert (=> d!1834911 (= lt!2303652 (choose!44335 (regTwo!32327 r!7292) s!2326))))

(assert (=> d!1834911 (validRegex!7643 (regTwo!32327 r!7292))))

(assert (=> d!1834911 (= (mainMatchTheorem!3008 (regTwo!32327 r!7292) s!2326) lt!2303652)))

(declare-fun bs!1375803 () Bool)

(assert (= bs!1375803 d!1834911))

(assert (=> bs!1375803 m!6764326))

(assert (=> bs!1375803 m!6764322))

(declare-fun m!6764394 () Bool)

(assert (=> bs!1375803 m!6764394))

(assert (=> bs!1375803 m!6764388))

(assert (=> b!5839210 d!1834911))

(declare-fun bs!1375804 () Bool)

(declare-fun b!5839349 () Bool)

(assert (= bs!1375804 (and b!5839349 b!5839292)))

(declare-fun lambda!319439 () Int)

(assert (=> bs!1375804 (= (and (= (reg!16236 (regOne!32327 r!7292)) (reg!16236 (regTwo!32327 r!7292))) (= (regOne!32327 r!7292) (regTwo!32327 r!7292))) (= lambda!319439 lambda!319437))))

(declare-fun bs!1375805 () Bool)

(assert (= bs!1375805 (and b!5839349 b!5839287)))

(assert (=> bs!1375805 (not (= lambda!319439 lambda!319438))))

(assert (=> b!5839349 true))

(assert (=> b!5839349 true))

(declare-fun bs!1375806 () Bool)

(declare-fun b!5839344 () Bool)

(assert (= bs!1375806 (and b!5839344 b!5839292)))

(declare-fun lambda!319440 () Int)

(assert (=> bs!1375806 (not (= lambda!319440 lambda!319437))))

(declare-fun bs!1375807 () Bool)

(assert (= bs!1375807 (and b!5839344 b!5839287)))

(assert (=> bs!1375807 (= (and (= (regOne!32326 (regOne!32327 r!7292)) (regOne!32326 (regTwo!32327 r!7292))) (= (regTwo!32326 (regOne!32327 r!7292)) (regTwo!32326 (regTwo!32327 r!7292)))) (= lambda!319440 lambda!319438))))

(declare-fun bs!1375808 () Bool)

(assert (= bs!1375808 (and b!5839344 b!5839349)))

(assert (=> bs!1375808 (not (= lambda!319440 lambda!319439))))

(assert (=> b!5839344 true))

(assert (=> b!5839344 true))

(declare-fun b!5839343 () Bool)

(declare-fun res!2460149 () Bool)

(declare-fun e!3581822 () Bool)

(assert (=> b!5839343 (=> res!2460149 e!3581822)))

(declare-fun call!456046 () Bool)

(assert (=> b!5839343 (= res!2460149 call!456046)))

(declare-fun e!3581825 () Bool)

(assert (=> b!5839343 (= e!3581825 e!3581822)))

(declare-fun d!1834913 () Bool)

(declare-fun c!1034586 () Bool)

(assert (=> d!1834913 (= c!1034586 ((_ is EmptyExpr!15907) (regOne!32327 r!7292)))))

(declare-fun e!3581823 () Bool)

(assert (=> d!1834913 (= (matchRSpec!3008 (regOne!32327 r!7292) s!2326) e!3581823)))

(declare-fun call!456045 () Bool)

(assert (=> b!5839344 (= e!3581825 call!456045)))

(declare-fun b!5839345 () Bool)

(assert (=> b!5839345 (= e!3581823 call!456046)))

(declare-fun b!5839346 () Bool)

(declare-fun e!3581820 () Bool)

(assert (=> b!5839346 (= e!3581820 e!3581825)))

(declare-fun c!1034583 () Bool)

(assert (=> b!5839346 (= c!1034583 ((_ is Star!15907) (regOne!32327 r!7292)))))

(declare-fun b!5839347 () Bool)

(declare-fun e!3581821 () Bool)

(assert (=> b!5839347 (= e!3581820 e!3581821)))

(declare-fun res!2460151 () Bool)

(assert (=> b!5839347 (= res!2460151 (matchRSpec!3008 (regOne!32327 (regOne!32327 r!7292)) s!2326))))

(assert (=> b!5839347 (=> res!2460151 e!3581821)))

(declare-fun b!5839348 () Bool)

(assert (=> b!5839348 (= e!3581821 (matchRSpec!3008 (regTwo!32327 (regOne!32327 r!7292)) s!2326))))

(declare-fun bm!456040 () Bool)

(assert (=> bm!456040 (= call!456046 (isEmpty!35755 s!2326))))

(assert (=> b!5839349 (= e!3581822 call!456045)))

(declare-fun b!5839350 () Bool)

(declare-fun e!3581819 () Bool)

(assert (=> b!5839350 (= e!3581823 e!3581819)))

(declare-fun res!2460150 () Bool)

(assert (=> b!5839350 (= res!2460150 (not ((_ is EmptyLang!15907) (regOne!32327 r!7292))))))

(assert (=> b!5839350 (=> (not res!2460150) (not e!3581819))))

(declare-fun bm!456041 () Bool)

(assert (=> bm!456041 (= call!456045 (Exists!2978 (ite c!1034583 lambda!319439 lambda!319440)))))

(declare-fun b!5839351 () Bool)

(declare-fun c!1034585 () Bool)

(assert (=> b!5839351 (= c!1034585 ((_ is ElementMatch!15907) (regOne!32327 r!7292)))))

(declare-fun e!3581824 () Bool)

(assert (=> b!5839351 (= e!3581819 e!3581824)))

(declare-fun b!5839352 () Bool)

(declare-fun c!1034584 () Bool)

(assert (=> b!5839352 (= c!1034584 ((_ is Union!15907) (regOne!32327 r!7292)))))

(assert (=> b!5839352 (= e!3581824 e!3581820)))

(declare-fun b!5839353 () Bool)

(assert (=> b!5839353 (= e!3581824 (= s!2326 (Cons!63898 (c!1034555 (regOne!32327 r!7292)) Nil!63898)))))

(assert (= (and d!1834913 c!1034586) b!5839345))

(assert (= (and d!1834913 (not c!1034586)) b!5839350))

(assert (= (and b!5839350 res!2460150) b!5839351))

(assert (= (and b!5839351 c!1034585) b!5839353))

(assert (= (and b!5839351 (not c!1034585)) b!5839352))

(assert (= (and b!5839352 c!1034584) b!5839347))

(assert (= (and b!5839352 (not c!1034584)) b!5839346))

(assert (= (and b!5839347 (not res!2460151)) b!5839348))

(assert (= (and b!5839346 c!1034583) b!5839343))

(assert (= (and b!5839346 (not c!1034583)) b!5839344))

(assert (= (and b!5839343 (not res!2460149)) b!5839349))

(assert (= (or b!5839349 b!5839344) bm!456041))

(assert (= (or b!5839345 b!5839343) bm!456040))

(declare-fun m!6764396 () Bool)

(assert (=> b!5839347 m!6764396))

(declare-fun m!6764398 () Bool)

(assert (=> b!5839348 m!6764398))

(assert (=> bm!456040 m!6764372))

(declare-fun m!6764400 () Bool)

(assert (=> bm!456041 m!6764400))

(assert (=> b!5839210 d!1834913))

(declare-fun b!5839354 () Bool)

(declare-fun e!3581829 () Bool)

(declare-fun lt!2303653 () Bool)

(declare-fun call!456047 () Bool)

(assert (=> b!5839354 (= e!3581829 (= lt!2303653 call!456047))))

(declare-fun b!5839355 () Bool)

(declare-fun res!2460153 () Bool)

(declare-fun e!3581830 () Bool)

(assert (=> b!5839355 (=> res!2460153 e!3581830)))

(assert (=> b!5839355 (= res!2460153 (not ((_ is ElementMatch!15907) (regOne!32327 r!7292))))))

(declare-fun e!3581826 () Bool)

(assert (=> b!5839355 (= e!3581826 e!3581830)))

(declare-fun b!5839356 () Bool)

(declare-fun e!3581827 () Bool)

(assert (=> b!5839356 (= e!3581827 (matchR!8090 (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326)) (tail!11451 s!2326)))))

(declare-fun b!5839357 () Bool)

(declare-fun e!3581832 () Bool)

(declare-fun e!3581831 () Bool)

(assert (=> b!5839357 (= e!3581832 e!3581831)))

(declare-fun res!2460156 () Bool)

(assert (=> b!5839357 (=> res!2460156 e!3581831)))

(assert (=> b!5839357 (= res!2460156 call!456047)))

(declare-fun d!1834915 () Bool)

(assert (=> d!1834915 e!3581829))

(declare-fun c!1034588 () Bool)

(assert (=> d!1834915 (= c!1034588 ((_ is EmptyExpr!15907) (regOne!32327 r!7292)))))

(assert (=> d!1834915 (= lt!2303653 e!3581827)))

(declare-fun c!1034589 () Bool)

(assert (=> d!1834915 (= c!1034589 (isEmpty!35755 s!2326))))

(assert (=> d!1834915 (validRegex!7643 (regOne!32327 r!7292))))

(assert (=> d!1834915 (= (matchR!8090 (regOne!32327 r!7292) s!2326) lt!2303653)))

(declare-fun b!5839358 () Bool)

(declare-fun res!2460159 () Bool)

(declare-fun e!3581828 () Bool)

(assert (=> b!5839358 (=> (not res!2460159) (not e!3581828))))

(assert (=> b!5839358 (= res!2460159 (not call!456047))))

(declare-fun b!5839359 () Bool)

(assert (=> b!5839359 (= e!3581828 (= (head!12366 s!2326) (c!1034555 (regOne!32327 r!7292))))))

(declare-fun b!5839360 () Bool)

(declare-fun res!2460152 () Bool)

(assert (=> b!5839360 (=> res!2460152 e!3581831)))

(assert (=> b!5839360 (= res!2460152 (not (isEmpty!35755 (tail!11451 s!2326))))))

(declare-fun b!5839361 () Bool)

(assert (=> b!5839361 (= e!3581831 (not (= (head!12366 s!2326) (c!1034555 (regOne!32327 r!7292)))))))

(declare-fun bm!456042 () Bool)

(assert (=> bm!456042 (= call!456047 (isEmpty!35755 s!2326))))

(declare-fun b!5839362 () Bool)

(assert (=> b!5839362 (= e!3581826 (not lt!2303653))))

(declare-fun b!5839363 () Bool)

(declare-fun res!2460154 () Bool)

(assert (=> b!5839363 (=> (not res!2460154) (not e!3581828))))

(assert (=> b!5839363 (= res!2460154 (isEmpty!35755 (tail!11451 s!2326)))))

(declare-fun b!5839364 () Bool)

(declare-fun res!2460155 () Bool)

(assert (=> b!5839364 (=> res!2460155 e!3581830)))

(assert (=> b!5839364 (= res!2460155 e!3581828)))

(declare-fun res!2460157 () Bool)

(assert (=> b!5839364 (=> (not res!2460157) (not e!3581828))))

(assert (=> b!5839364 (= res!2460157 lt!2303653)))

(declare-fun b!5839365 () Bool)

(assert (=> b!5839365 (= e!3581830 e!3581832)))

(declare-fun res!2460158 () Bool)

(assert (=> b!5839365 (=> (not res!2460158) (not e!3581832))))

(assert (=> b!5839365 (= res!2460158 (not lt!2303653))))

(declare-fun b!5839366 () Bool)

(assert (=> b!5839366 (= e!3581827 (nullable!5906 (regOne!32327 r!7292)))))

(declare-fun b!5839367 () Bool)

(assert (=> b!5839367 (= e!3581829 e!3581826)))

(declare-fun c!1034587 () Bool)

(assert (=> b!5839367 (= c!1034587 ((_ is EmptyLang!15907) (regOne!32327 r!7292)))))

(assert (= (and d!1834915 c!1034589) b!5839366))

(assert (= (and d!1834915 (not c!1034589)) b!5839356))

(assert (= (and d!1834915 c!1034588) b!5839354))

(assert (= (and d!1834915 (not c!1034588)) b!5839367))

(assert (= (and b!5839367 c!1034587) b!5839362))

(assert (= (and b!5839367 (not c!1034587)) b!5839355))

(assert (= (and b!5839355 (not res!2460153)) b!5839364))

(assert (= (and b!5839364 res!2460157) b!5839358))

(assert (= (and b!5839358 res!2460159) b!5839363))

(assert (= (and b!5839363 res!2460154) b!5839359))

(assert (= (and b!5839364 (not res!2460155)) b!5839365))

(assert (= (and b!5839365 res!2460158) b!5839357))

(assert (= (and b!5839357 (not res!2460156)) b!5839360))

(assert (= (and b!5839360 (not res!2460152)) b!5839361))

(assert (= (or b!5839354 b!5839357 b!5839358) bm!456042))

(assert (=> b!5839356 m!6764380))

(assert (=> b!5839356 m!6764380))

(declare-fun m!6764402 () Bool)

(assert (=> b!5839356 m!6764402))

(assert (=> b!5839356 m!6764384))

(assert (=> b!5839356 m!6764402))

(assert (=> b!5839356 m!6764384))

(declare-fun m!6764404 () Bool)

(assert (=> b!5839356 m!6764404))

(assert (=> d!1834915 m!6764372))

(assert (=> d!1834915 m!6764378))

(declare-fun m!6764406 () Bool)

(assert (=> b!5839366 m!6764406))

(assert (=> b!5839359 m!6764380))

(assert (=> b!5839363 m!6764384))

(assert (=> b!5839363 m!6764384))

(assert (=> b!5839363 m!6764392))

(assert (=> b!5839360 m!6764384))

(assert (=> b!5839360 m!6764384))

(assert (=> b!5839360 m!6764392))

(assert (=> bm!456042 m!6764372))

(assert (=> b!5839361 m!6764380))

(assert (=> b!5839210 d!1834915))

(declare-fun d!1834917 () Bool)

(declare-fun lambda!319443 () Int)

(declare-fun forall!14994 (List!64020 Int) Bool)

(assert (=> d!1834917 (= (inv!83014 setElem!39558) (forall!14994 (exprs!5791 setElem!39558) lambda!319443))))

(declare-fun bs!1375809 () Bool)

(assert (= bs!1375809 d!1834917))

(declare-fun m!6764408 () Bool)

(assert (=> bs!1375809 m!6764408))

(assert (=> setNonEmpty!39558 d!1834917))

(declare-fun bs!1375810 () Bool)

(declare-fun d!1834919 () Bool)

(assert (= bs!1375810 (and d!1834919 d!1834917)))

(declare-fun lambda!319444 () Int)

(assert (=> bs!1375810 (= lambda!319444 lambda!319443)))

(assert (=> d!1834919 (= (inv!83014 (h!70345 zl!343)) (forall!14994 (exprs!5791 (h!70345 zl!343)) lambda!319444))))

(declare-fun bs!1375811 () Bool)

(assert (= bs!1375811 d!1834919))

(declare-fun m!6764410 () Bool)

(assert (=> bs!1375811 m!6764410))

(assert (=> b!5839203 d!1834919))

(declare-fun bs!1375812 () Bool)

(declare-fun b!5839374 () Bool)

(assert (= bs!1375812 (and b!5839374 b!5839292)))

(declare-fun lambda!319445 () Int)

(assert (=> bs!1375812 (= (and (= (reg!16236 r!7292) (reg!16236 (regTwo!32327 r!7292))) (= r!7292 (regTwo!32327 r!7292))) (= lambda!319445 lambda!319437))))

(declare-fun bs!1375813 () Bool)

(assert (= bs!1375813 (and b!5839374 b!5839287)))

(assert (=> bs!1375813 (not (= lambda!319445 lambda!319438))))

(declare-fun bs!1375814 () Bool)

(assert (= bs!1375814 (and b!5839374 b!5839349)))

(assert (=> bs!1375814 (= (and (= (reg!16236 r!7292) (reg!16236 (regOne!32327 r!7292))) (= r!7292 (regOne!32327 r!7292))) (= lambda!319445 lambda!319439))))

(declare-fun bs!1375815 () Bool)

(assert (= bs!1375815 (and b!5839374 b!5839344)))

(assert (=> bs!1375815 (not (= lambda!319445 lambda!319440))))

(assert (=> b!5839374 true))

(assert (=> b!5839374 true))

(declare-fun bs!1375816 () Bool)

(declare-fun b!5839369 () Bool)

(assert (= bs!1375816 (and b!5839369 b!5839344)))

(declare-fun lambda!319446 () Int)

(assert (=> bs!1375816 (= (and (= (regOne!32326 r!7292) (regOne!32326 (regOne!32327 r!7292))) (= (regTwo!32326 r!7292) (regTwo!32326 (regOne!32327 r!7292)))) (= lambda!319446 lambda!319440))))

(declare-fun bs!1375817 () Bool)

(assert (= bs!1375817 (and b!5839369 b!5839349)))

(assert (=> bs!1375817 (not (= lambda!319446 lambda!319439))))

(declare-fun bs!1375818 () Bool)

(assert (= bs!1375818 (and b!5839369 b!5839292)))

(assert (=> bs!1375818 (not (= lambda!319446 lambda!319437))))

(declare-fun bs!1375819 () Bool)

(assert (= bs!1375819 (and b!5839369 b!5839374)))

(assert (=> bs!1375819 (not (= lambda!319446 lambda!319445))))

(declare-fun bs!1375820 () Bool)

(assert (= bs!1375820 (and b!5839369 b!5839287)))

(assert (=> bs!1375820 (= (and (= (regOne!32326 r!7292) (regOne!32326 (regTwo!32327 r!7292))) (= (regTwo!32326 r!7292) (regTwo!32326 (regTwo!32327 r!7292)))) (= lambda!319446 lambda!319438))))

(assert (=> b!5839369 true))

(assert (=> b!5839369 true))

(declare-fun b!5839368 () Bool)

(declare-fun res!2460160 () Bool)

(declare-fun e!3581836 () Bool)

(assert (=> b!5839368 (=> res!2460160 e!3581836)))

(declare-fun call!456049 () Bool)

(assert (=> b!5839368 (= res!2460160 call!456049)))

(declare-fun e!3581839 () Bool)

(assert (=> b!5839368 (= e!3581839 e!3581836)))

(declare-fun d!1834921 () Bool)

(declare-fun c!1034593 () Bool)

(assert (=> d!1834921 (= c!1034593 ((_ is EmptyExpr!15907) r!7292))))

(declare-fun e!3581837 () Bool)

(assert (=> d!1834921 (= (matchRSpec!3008 r!7292 s!2326) e!3581837)))

(declare-fun call!456048 () Bool)

(assert (=> b!5839369 (= e!3581839 call!456048)))

(declare-fun b!5839370 () Bool)

(assert (=> b!5839370 (= e!3581837 call!456049)))

(declare-fun b!5839371 () Bool)

(declare-fun e!3581834 () Bool)

(assert (=> b!5839371 (= e!3581834 e!3581839)))

(declare-fun c!1034590 () Bool)

(assert (=> b!5839371 (= c!1034590 ((_ is Star!15907) r!7292))))

(declare-fun b!5839372 () Bool)

(declare-fun e!3581835 () Bool)

(assert (=> b!5839372 (= e!3581834 e!3581835)))

(declare-fun res!2460162 () Bool)

(assert (=> b!5839372 (= res!2460162 (matchRSpec!3008 (regOne!32327 r!7292) s!2326))))

(assert (=> b!5839372 (=> res!2460162 e!3581835)))

(declare-fun b!5839373 () Bool)

(assert (=> b!5839373 (= e!3581835 (matchRSpec!3008 (regTwo!32327 r!7292) s!2326))))

(declare-fun bm!456043 () Bool)

(assert (=> bm!456043 (= call!456049 (isEmpty!35755 s!2326))))

(assert (=> b!5839374 (= e!3581836 call!456048)))

(declare-fun b!5839375 () Bool)

(declare-fun e!3581833 () Bool)

(assert (=> b!5839375 (= e!3581837 e!3581833)))

(declare-fun res!2460161 () Bool)

(assert (=> b!5839375 (= res!2460161 (not ((_ is EmptyLang!15907) r!7292)))))

(assert (=> b!5839375 (=> (not res!2460161) (not e!3581833))))

(declare-fun bm!456044 () Bool)

(assert (=> bm!456044 (= call!456048 (Exists!2978 (ite c!1034590 lambda!319445 lambda!319446)))))

(declare-fun b!5839376 () Bool)

(declare-fun c!1034592 () Bool)

(assert (=> b!5839376 (= c!1034592 ((_ is ElementMatch!15907) r!7292))))

(declare-fun e!3581838 () Bool)

(assert (=> b!5839376 (= e!3581833 e!3581838)))

(declare-fun b!5839377 () Bool)

(declare-fun c!1034591 () Bool)

(assert (=> b!5839377 (= c!1034591 ((_ is Union!15907) r!7292))))

(assert (=> b!5839377 (= e!3581838 e!3581834)))

(declare-fun b!5839378 () Bool)

(assert (=> b!5839378 (= e!3581838 (= s!2326 (Cons!63898 (c!1034555 r!7292) Nil!63898)))))

(assert (= (and d!1834921 c!1034593) b!5839370))

(assert (= (and d!1834921 (not c!1034593)) b!5839375))

(assert (= (and b!5839375 res!2460161) b!5839376))

(assert (= (and b!5839376 c!1034592) b!5839378))

(assert (= (and b!5839376 (not c!1034592)) b!5839377))

(assert (= (and b!5839377 c!1034591) b!5839372))

(assert (= (and b!5839377 (not c!1034591)) b!5839371))

(assert (= (and b!5839372 (not res!2460162)) b!5839373))

(assert (= (and b!5839371 c!1034590) b!5839368))

(assert (= (and b!5839371 (not c!1034590)) b!5839369))

(assert (= (and b!5839368 (not res!2460160)) b!5839374))

(assert (= (or b!5839374 b!5839369) bm!456044))

(assert (= (or b!5839370 b!5839368) bm!456043))

(assert (=> b!5839372 m!6764328))

(assert (=> b!5839373 m!6764322))

(assert (=> bm!456043 m!6764372))

(declare-fun m!6764412 () Bool)

(assert (=> bm!456044 m!6764412))

(assert (=> b!5839213 d!1834921))

(declare-fun b!5839379 () Bool)

(declare-fun e!3581843 () Bool)

(declare-fun lt!2303654 () Bool)

(declare-fun call!456050 () Bool)

(assert (=> b!5839379 (= e!3581843 (= lt!2303654 call!456050))))

(declare-fun b!5839380 () Bool)

(declare-fun res!2460164 () Bool)

(declare-fun e!3581844 () Bool)

(assert (=> b!5839380 (=> res!2460164 e!3581844)))

(assert (=> b!5839380 (= res!2460164 (not ((_ is ElementMatch!15907) r!7292)))))

(declare-fun e!3581840 () Bool)

(assert (=> b!5839380 (= e!3581840 e!3581844)))

(declare-fun b!5839381 () Bool)

(declare-fun e!3581841 () Bool)

(assert (=> b!5839381 (= e!3581841 (matchR!8090 (derivativeStep!4644 r!7292 (head!12366 s!2326)) (tail!11451 s!2326)))))

(declare-fun b!5839382 () Bool)

(declare-fun e!3581846 () Bool)

(declare-fun e!3581845 () Bool)

(assert (=> b!5839382 (= e!3581846 e!3581845)))

(declare-fun res!2460167 () Bool)

(assert (=> b!5839382 (=> res!2460167 e!3581845)))

(assert (=> b!5839382 (= res!2460167 call!456050)))

(declare-fun d!1834923 () Bool)

(assert (=> d!1834923 e!3581843))

(declare-fun c!1034595 () Bool)

(assert (=> d!1834923 (= c!1034595 ((_ is EmptyExpr!15907) r!7292))))

(assert (=> d!1834923 (= lt!2303654 e!3581841)))

(declare-fun c!1034596 () Bool)

(assert (=> d!1834923 (= c!1034596 (isEmpty!35755 s!2326))))

(assert (=> d!1834923 (validRegex!7643 r!7292)))

(assert (=> d!1834923 (= (matchR!8090 r!7292 s!2326) lt!2303654)))

(declare-fun b!5839383 () Bool)

(declare-fun res!2460170 () Bool)

(declare-fun e!3581842 () Bool)

(assert (=> b!5839383 (=> (not res!2460170) (not e!3581842))))

(assert (=> b!5839383 (= res!2460170 (not call!456050))))

(declare-fun b!5839384 () Bool)

(assert (=> b!5839384 (= e!3581842 (= (head!12366 s!2326) (c!1034555 r!7292)))))

(declare-fun b!5839385 () Bool)

(declare-fun res!2460163 () Bool)

(assert (=> b!5839385 (=> res!2460163 e!3581845)))

(assert (=> b!5839385 (= res!2460163 (not (isEmpty!35755 (tail!11451 s!2326))))))

(declare-fun b!5839386 () Bool)

(assert (=> b!5839386 (= e!3581845 (not (= (head!12366 s!2326) (c!1034555 r!7292))))))

(declare-fun bm!456045 () Bool)

(assert (=> bm!456045 (= call!456050 (isEmpty!35755 s!2326))))

(declare-fun b!5839387 () Bool)

(assert (=> b!5839387 (= e!3581840 (not lt!2303654))))

(declare-fun b!5839388 () Bool)

(declare-fun res!2460165 () Bool)

(assert (=> b!5839388 (=> (not res!2460165) (not e!3581842))))

(assert (=> b!5839388 (= res!2460165 (isEmpty!35755 (tail!11451 s!2326)))))

(declare-fun b!5839389 () Bool)

(declare-fun res!2460166 () Bool)

(assert (=> b!5839389 (=> res!2460166 e!3581844)))

(assert (=> b!5839389 (= res!2460166 e!3581842)))

(declare-fun res!2460168 () Bool)

(assert (=> b!5839389 (=> (not res!2460168) (not e!3581842))))

(assert (=> b!5839389 (= res!2460168 lt!2303654)))

(declare-fun b!5839390 () Bool)

(assert (=> b!5839390 (= e!3581844 e!3581846)))

(declare-fun res!2460169 () Bool)

(assert (=> b!5839390 (=> (not res!2460169) (not e!3581846))))

(assert (=> b!5839390 (= res!2460169 (not lt!2303654))))

(declare-fun b!5839391 () Bool)

(assert (=> b!5839391 (= e!3581841 (nullable!5906 r!7292))))

(declare-fun b!5839392 () Bool)

(assert (=> b!5839392 (= e!3581843 e!3581840)))

(declare-fun c!1034594 () Bool)

(assert (=> b!5839392 (= c!1034594 ((_ is EmptyLang!15907) r!7292))))

(assert (= (and d!1834923 c!1034596) b!5839391))

(assert (= (and d!1834923 (not c!1034596)) b!5839381))

(assert (= (and d!1834923 c!1034595) b!5839379))

(assert (= (and d!1834923 (not c!1034595)) b!5839392))

(assert (= (and b!5839392 c!1034594) b!5839387))

(assert (= (and b!5839392 (not c!1034594)) b!5839380))

(assert (= (and b!5839380 (not res!2460164)) b!5839389))

(assert (= (and b!5839389 res!2460168) b!5839383))

(assert (= (and b!5839383 res!2460170) b!5839388))

(assert (= (and b!5839388 res!2460165) b!5839384))

(assert (= (and b!5839389 (not res!2460166)) b!5839390))

(assert (= (and b!5839390 res!2460169) b!5839382))

(assert (= (and b!5839382 (not res!2460167)) b!5839385))

(assert (= (and b!5839385 (not res!2460163)) b!5839386))

(assert (= (or b!5839379 b!5839382 b!5839383) bm!456045))

(assert (=> b!5839381 m!6764380))

(assert (=> b!5839381 m!6764380))

(declare-fun m!6764414 () Bool)

(assert (=> b!5839381 m!6764414))

(assert (=> b!5839381 m!6764384))

(assert (=> b!5839381 m!6764414))

(assert (=> b!5839381 m!6764384))

(declare-fun m!6764416 () Bool)

(assert (=> b!5839381 m!6764416))

(assert (=> d!1834923 m!6764372))

(assert (=> d!1834923 m!6764310))

(declare-fun m!6764418 () Bool)

(assert (=> b!5839391 m!6764418))

(assert (=> b!5839384 m!6764380))

(assert (=> b!5839388 m!6764384))

(assert (=> b!5839388 m!6764384))

(assert (=> b!5839388 m!6764392))

(assert (=> b!5839385 m!6764384))

(assert (=> b!5839385 m!6764384))

(assert (=> b!5839385 m!6764392))

(assert (=> bm!456045 m!6764372))

(assert (=> b!5839386 m!6764380))

(assert (=> b!5839213 d!1834923))

(declare-fun d!1834925 () Bool)

(assert (=> d!1834925 (= (matchR!8090 r!7292 s!2326) (matchRSpec!3008 r!7292 s!2326))))

(declare-fun lt!2303655 () Unit!157085)

(assert (=> d!1834925 (= lt!2303655 (choose!44335 r!7292 s!2326))))

(assert (=> d!1834925 (validRegex!7643 r!7292)))

(assert (=> d!1834925 (= (mainMatchTheorem!3008 r!7292 s!2326) lt!2303655)))

(declare-fun bs!1375821 () Bool)

(assert (= bs!1375821 d!1834925))

(assert (=> bs!1375821 m!6764338))

(assert (=> bs!1375821 m!6764336))

(declare-fun m!6764420 () Bool)

(assert (=> bs!1375821 m!6764420))

(assert (=> bs!1375821 m!6764310))

(assert (=> b!5839213 d!1834925))

(declare-fun bs!1375823 () Bool)

(declare-fun d!1834927 () Bool)

(assert (= bs!1375823 (and d!1834927 d!1834917)))

(declare-fun lambda!319452 () Int)

(assert (=> bs!1375823 (= lambda!319452 lambda!319443)))

(declare-fun bs!1375824 () Bool)

(assert (= bs!1375824 (and d!1834927 d!1834919)))

(assert (=> bs!1375824 (= lambda!319452 lambda!319444)))

(declare-fun e!3581862 () Bool)

(assert (=> d!1834927 e!3581862))

(declare-fun res!2460175 () Bool)

(assert (=> d!1834927 (=> (not res!2460175) (not e!3581862))))

(declare-fun lt!2303658 () Regex!15907)

(assert (=> d!1834927 (= res!2460175 (validRegex!7643 lt!2303658))))

(declare-fun e!3581860 () Regex!15907)

(assert (=> d!1834927 (= lt!2303658 e!3581860)))

(declare-fun c!1034605 () Bool)

(declare-fun e!3581864 () Bool)

(assert (=> d!1834927 (= c!1034605 e!3581864)))

(declare-fun res!2460176 () Bool)

(assert (=> d!1834927 (=> (not res!2460176) (not e!3581864))))

(assert (=> d!1834927 (= res!2460176 ((_ is Cons!63896) (unfocusZipperList!1328 zl!343)))))

(assert (=> d!1834927 (forall!14994 (unfocusZipperList!1328 zl!343) lambda!319452)))

(assert (=> d!1834927 (= (generalisedUnion!1751 (unfocusZipperList!1328 zl!343)) lt!2303658)))

(declare-fun b!5839413 () Bool)

(declare-fun e!3581863 () Regex!15907)

(assert (=> b!5839413 (= e!3581863 EmptyLang!15907)))

(declare-fun b!5839414 () Bool)

(declare-fun e!3581861 () Bool)

(assert (=> b!5839414 (= e!3581862 e!3581861)))

(declare-fun c!1034606 () Bool)

(declare-fun isEmpty!35758 (List!64020) Bool)

(assert (=> b!5839414 (= c!1034606 (isEmpty!35758 (unfocusZipperList!1328 zl!343)))))

(declare-fun b!5839415 () Bool)

(declare-fun e!3581859 () Bool)

(declare-fun isUnion!780 (Regex!15907) Bool)

(assert (=> b!5839415 (= e!3581859 (isUnion!780 lt!2303658))))

(declare-fun b!5839416 () Bool)

(assert (=> b!5839416 (= e!3581863 (Union!15907 (h!70344 (unfocusZipperList!1328 zl!343)) (generalisedUnion!1751 (t!377375 (unfocusZipperList!1328 zl!343)))))))

(declare-fun b!5839417 () Bool)

(assert (=> b!5839417 (= e!3581861 e!3581859)))

(declare-fun c!1034607 () Bool)

(declare-fun tail!11454 (List!64020) List!64020)

(assert (=> b!5839417 (= c!1034607 (isEmpty!35758 (tail!11454 (unfocusZipperList!1328 zl!343))))))

(declare-fun b!5839418 () Bool)

(declare-fun head!12369 (List!64020) Regex!15907)

(assert (=> b!5839418 (= e!3581859 (= lt!2303658 (head!12369 (unfocusZipperList!1328 zl!343))))))

(declare-fun b!5839419 () Bool)

(declare-fun isEmptyLang!1350 (Regex!15907) Bool)

(assert (=> b!5839419 (= e!3581861 (isEmptyLang!1350 lt!2303658))))

(declare-fun b!5839420 () Bool)

(assert (=> b!5839420 (= e!3581864 (isEmpty!35758 (t!377375 (unfocusZipperList!1328 zl!343))))))

(declare-fun b!5839421 () Bool)

(assert (=> b!5839421 (= e!3581860 e!3581863)))

(declare-fun c!1034608 () Bool)

(assert (=> b!5839421 (= c!1034608 ((_ is Cons!63896) (unfocusZipperList!1328 zl!343)))))

(declare-fun b!5839422 () Bool)

(assert (=> b!5839422 (= e!3581860 (h!70344 (unfocusZipperList!1328 zl!343)))))

(assert (= (and d!1834927 res!2460176) b!5839420))

(assert (= (and d!1834927 c!1034605) b!5839422))

(assert (= (and d!1834927 (not c!1034605)) b!5839421))

(assert (= (and b!5839421 c!1034608) b!5839416))

(assert (= (and b!5839421 (not c!1034608)) b!5839413))

(assert (= (and d!1834927 res!2460175) b!5839414))

(assert (= (and b!5839414 c!1034606) b!5839419))

(assert (= (and b!5839414 (not c!1034606)) b!5839417))

(assert (= (and b!5839417 c!1034607) b!5839418))

(assert (= (and b!5839417 (not c!1034607)) b!5839415))

(declare-fun m!6764424 () Bool)

(assert (=> b!5839419 m!6764424))

(assert (=> b!5839417 m!6764342))

(declare-fun m!6764426 () Bool)

(assert (=> b!5839417 m!6764426))

(assert (=> b!5839417 m!6764426))

(declare-fun m!6764428 () Bool)

(assert (=> b!5839417 m!6764428))

(assert (=> b!5839414 m!6764342))

(declare-fun m!6764430 () Bool)

(assert (=> b!5839414 m!6764430))

(declare-fun m!6764432 () Bool)

(assert (=> b!5839416 m!6764432))

(declare-fun m!6764434 () Bool)

(assert (=> b!5839415 m!6764434))

(assert (=> b!5839418 m!6764342))

(declare-fun m!6764436 () Bool)

(assert (=> b!5839418 m!6764436))

(declare-fun m!6764438 () Bool)

(assert (=> d!1834927 m!6764438))

(assert (=> d!1834927 m!6764342))

(declare-fun m!6764440 () Bool)

(assert (=> d!1834927 m!6764440))

(declare-fun m!6764442 () Bool)

(assert (=> b!5839420 m!6764442))

(assert (=> b!5839206 d!1834927))

(declare-fun bs!1375825 () Bool)

(declare-fun d!1834931 () Bool)

(assert (= bs!1375825 (and d!1834931 d!1834917)))

(declare-fun lambda!319455 () Int)

(assert (=> bs!1375825 (= lambda!319455 lambda!319443)))

(declare-fun bs!1375826 () Bool)

(assert (= bs!1375826 (and d!1834931 d!1834919)))

(assert (=> bs!1375826 (= lambda!319455 lambda!319444)))

(declare-fun bs!1375827 () Bool)

(assert (= bs!1375827 (and d!1834931 d!1834927)))

(assert (=> bs!1375827 (= lambda!319455 lambda!319452)))

(declare-fun lt!2303661 () List!64020)

(assert (=> d!1834931 (forall!14994 lt!2303661 lambda!319455)))

(declare-fun e!3581867 () List!64020)

(assert (=> d!1834931 (= lt!2303661 e!3581867)))

(declare-fun c!1034611 () Bool)

(assert (=> d!1834931 (= c!1034611 ((_ is Cons!63897) zl!343))))

(assert (=> d!1834931 (= (unfocusZipperList!1328 zl!343) lt!2303661)))

(declare-fun b!5839427 () Bool)

(assert (=> b!5839427 (= e!3581867 (Cons!63896 (generalisedConcat!1504 (exprs!5791 (h!70345 zl!343))) (unfocusZipperList!1328 (t!377376 zl!343))))))

(declare-fun b!5839428 () Bool)

(assert (=> b!5839428 (= e!3581867 Nil!63896)))

(assert (= (and d!1834931 c!1034611) b!5839427))

(assert (= (and d!1834931 (not c!1034611)) b!5839428))

(declare-fun m!6764444 () Bool)

(assert (=> d!1834931 m!6764444))

(assert (=> b!5839427 m!6764320))

(declare-fun m!6764446 () Bool)

(assert (=> b!5839427 m!6764446))

(assert (=> b!5839206 d!1834931))

(declare-fun bs!1375828 () Bool)

(declare-fun d!1834933 () Bool)

(assert (= bs!1375828 (and d!1834933 d!1834917)))

(declare-fun lambda!319462 () Int)

(assert (=> bs!1375828 (= lambda!319462 lambda!319443)))

(declare-fun bs!1375829 () Bool)

(assert (= bs!1375829 (and d!1834933 d!1834919)))

(assert (=> bs!1375829 (= lambda!319462 lambda!319444)))

(declare-fun bs!1375830 () Bool)

(assert (= bs!1375830 (and d!1834933 d!1834927)))

(assert (=> bs!1375830 (= lambda!319462 lambda!319452)))

(declare-fun bs!1375831 () Bool)

(assert (= bs!1375831 (and d!1834933 d!1834931)))

(assert (=> bs!1375831 (= lambda!319462 lambda!319455)))

(declare-fun b!5839481 () Bool)

(declare-fun e!3581900 () Regex!15907)

(assert (=> b!5839481 (= e!3581900 EmptyExpr!15907)))

(declare-fun b!5839482 () Bool)

(declare-fun e!3581901 () Regex!15907)

(assert (=> b!5839482 (= e!3581901 (h!70344 (exprs!5791 (h!70345 zl!343))))))

(declare-fun b!5839483 () Bool)

(assert (=> b!5839483 (= e!3581901 e!3581900)))

(declare-fun c!1034630 () Bool)

(assert (=> b!5839483 (= c!1034630 ((_ is Cons!63896) (exprs!5791 (h!70345 zl!343))))))

(declare-fun b!5839484 () Bool)

(declare-fun e!3581903 () Bool)

(declare-fun e!3581898 () Bool)

(assert (=> b!5839484 (= e!3581903 e!3581898)))

(declare-fun c!1034628 () Bool)

(assert (=> b!5839484 (= c!1034628 (isEmpty!35758 (exprs!5791 (h!70345 zl!343))))))

(declare-fun b!5839485 () Bool)

(declare-fun e!3581902 () Bool)

(assert (=> b!5839485 (= e!3581898 e!3581902)))

(declare-fun c!1034631 () Bool)

(assert (=> b!5839485 (= c!1034631 (isEmpty!35758 (tail!11454 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5839486 () Bool)

(declare-fun lt!2303664 () Regex!15907)

(declare-fun isConcat!865 (Regex!15907) Bool)

(assert (=> b!5839486 (= e!3581902 (isConcat!865 lt!2303664))))

(declare-fun b!5839487 () Bool)

(declare-fun isEmptyExpr!1342 (Regex!15907) Bool)

(assert (=> b!5839487 (= e!3581898 (isEmptyExpr!1342 lt!2303664))))

(declare-fun b!5839488 () Bool)

(declare-fun e!3581899 () Bool)

(assert (=> b!5839488 (= e!3581899 (isEmpty!35758 (t!377375 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5839489 () Bool)

(assert (=> b!5839489 (= e!3581902 (= lt!2303664 (head!12369 (exprs!5791 (h!70345 zl!343)))))))

(assert (=> d!1834933 e!3581903))

(declare-fun res!2460198 () Bool)

(assert (=> d!1834933 (=> (not res!2460198) (not e!3581903))))

(assert (=> d!1834933 (= res!2460198 (validRegex!7643 lt!2303664))))

(assert (=> d!1834933 (= lt!2303664 e!3581901)))

(declare-fun c!1034629 () Bool)

(assert (=> d!1834933 (= c!1034629 e!3581899)))

(declare-fun res!2460197 () Bool)

(assert (=> d!1834933 (=> (not res!2460197) (not e!3581899))))

(assert (=> d!1834933 (= res!2460197 ((_ is Cons!63896) (exprs!5791 (h!70345 zl!343))))))

(assert (=> d!1834933 (forall!14994 (exprs!5791 (h!70345 zl!343)) lambda!319462)))

(assert (=> d!1834933 (= (generalisedConcat!1504 (exprs!5791 (h!70345 zl!343))) lt!2303664)))

(declare-fun b!5839490 () Bool)

(assert (=> b!5839490 (= e!3581900 (Concat!24752 (h!70344 (exprs!5791 (h!70345 zl!343))) (generalisedConcat!1504 (t!377375 (exprs!5791 (h!70345 zl!343))))))))

(assert (= (and d!1834933 res!2460197) b!5839488))

(assert (= (and d!1834933 c!1034629) b!5839482))

(assert (= (and d!1834933 (not c!1034629)) b!5839483))

(assert (= (and b!5839483 c!1034630) b!5839490))

(assert (= (and b!5839483 (not c!1034630)) b!5839481))

(assert (= (and d!1834933 res!2460198) b!5839484))

(assert (= (and b!5839484 c!1034628) b!5839487))

(assert (= (and b!5839484 (not c!1034628)) b!5839485))

(assert (= (and b!5839485 c!1034631) b!5839489))

(assert (= (and b!5839485 (not c!1034631)) b!5839486))

(declare-fun m!6764448 () Bool)

(assert (=> b!5839490 m!6764448))

(declare-fun m!6764450 () Bool)

(assert (=> b!5839488 m!6764450))

(declare-fun m!6764452 () Bool)

(assert (=> b!5839485 m!6764452))

(assert (=> b!5839485 m!6764452))

(declare-fun m!6764454 () Bool)

(assert (=> b!5839485 m!6764454))

(declare-fun m!6764456 () Bool)

(assert (=> b!5839487 m!6764456))

(declare-fun m!6764458 () Bool)

(assert (=> b!5839484 m!6764458))

(declare-fun m!6764460 () Bool)

(assert (=> b!5839489 m!6764460))

(declare-fun m!6764462 () Bool)

(assert (=> d!1834933 m!6764462))

(declare-fun m!6764464 () Bool)

(assert (=> d!1834933 m!6764464))

(declare-fun m!6764466 () Bool)

(assert (=> b!5839486 m!6764466))

(assert (=> b!5839217 d!1834933))

(declare-fun bs!1375832 () Bool)

(declare-fun d!1834935 () Bool)

(assert (= bs!1375832 (and d!1834935 d!1834927)))

(declare-fun lambda!319463 () Int)

(assert (=> bs!1375832 (= lambda!319463 lambda!319452)))

(declare-fun bs!1375833 () Bool)

(assert (= bs!1375833 (and d!1834935 d!1834933)))

(assert (=> bs!1375833 (= lambda!319463 lambda!319462)))

(declare-fun bs!1375834 () Bool)

(assert (= bs!1375834 (and d!1834935 d!1834917)))

(assert (=> bs!1375834 (= lambda!319463 lambda!319443)))

(declare-fun bs!1375835 () Bool)

(assert (= bs!1375835 (and d!1834935 d!1834931)))

(assert (=> bs!1375835 (= lambda!319463 lambda!319455)))

(declare-fun bs!1375836 () Bool)

(assert (= bs!1375836 (and d!1834935 d!1834919)))

(assert (=> bs!1375836 (= lambda!319463 lambda!319444)))

(assert (=> d!1834935 (= (inv!83014 (Context!10583 (Cons!63896 r!7292 Nil!63896))) (forall!14994 (exprs!5791 (Context!10583 (Cons!63896 r!7292 Nil!63896))) lambda!319463))))

(declare-fun bs!1375837 () Bool)

(assert (= bs!1375837 d!1834935))

(declare-fun m!6764468 () Bool)

(assert (=> bs!1375837 m!6764468))

(assert (=> b!5839215 d!1834935))

(declare-fun b!5839524 () Bool)

(declare-fun e!3581928 () Bool)

(declare-fun call!456063 () Bool)

(assert (=> b!5839524 (= e!3581928 call!456063)))

(declare-fun bm!456058 () Bool)

(declare-fun call!456065 () Bool)

(declare-fun c!1034641 () Bool)

(assert (=> bm!456058 (= call!456065 (validRegex!7643 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))))))

(declare-fun b!5839525 () Bool)

(declare-fun e!3581927 () Bool)

(assert (=> b!5839525 (= e!3581927 call!456065)))

(declare-fun b!5839526 () Bool)

(declare-fun e!3581929 () Bool)

(assert (=> b!5839526 (= e!3581929 call!456065)))

(declare-fun d!1834937 () Bool)

(declare-fun res!2460216 () Bool)

(declare-fun e!3581925 () Bool)

(assert (=> d!1834937 (=> res!2460216 e!3581925)))

(assert (=> d!1834937 (= res!2460216 ((_ is ElementMatch!15907) r!7292))))

(assert (=> d!1834937 (= (validRegex!7643 r!7292) e!3581925)))

(declare-fun b!5839527 () Bool)

(declare-fun res!2460212 () Bool)

(assert (=> b!5839527 (=> (not res!2460212) (not e!3581927))))

(declare-fun call!456064 () Bool)

(assert (=> b!5839527 (= res!2460212 call!456064)))

(declare-fun e!3581931 () Bool)

(assert (=> b!5839527 (= e!3581931 e!3581927)))

(declare-fun b!5839528 () Bool)

(declare-fun e!3581930 () Bool)

(assert (=> b!5839528 (= e!3581930 e!3581931)))

(assert (=> b!5839528 (= c!1034641 ((_ is Union!15907) r!7292))))

(declare-fun b!5839529 () Bool)

(assert (=> b!5839529 (= e!3581925 e!3581930)))

(declare-fun c!1034640 () Bool)

(assert (=> b!5839529 (= c!1034640 ((_ is Star!15907) r!7292))))

(declare-fun b!5839530 () Bool)

(assert (=> b!5839530 (= e!3581930 e!3581928)))

(declare-fun res!2460214 () Bool)

(assert (=> b!5839530 (= res!2460214 (not (nullable!5906 (reg!16236 r!7292))))))

(assert (=> b!5839530 (=> (not res!2460214) (not e!3581928))))

(declare-fun bm!456059 () Bool)

(assert (=> bm!456059 (= call!456063 (validRegex!7643 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))))))

(declare-fun b!5839531 () Bool)

(declare-fun e!3581926 () Bool)

(assert (=> b!5839531 (= e!3581926 e!3581929)))

(declare-fun res!2460215 () Bool)

(assert (=> b!5839531 (=> (not res!2460215) (not e!3581929))))

(assert (=> b!5839531 (= res!2460215 call!456064)))

(declare-fun b!5839532 () Bool)

(declare-fun res!2460213 () Bool)

(assert (=> b!5839532 (=> res!2460213 e!3581926)))

(assert (=> b!5839532 (= res!2460213 (not ((_ is Concat!24752) r!7292)))))

(assert (=> b!5839532 (= e!3581931 e!3581926)))

(declare-fun bm!456060 () Bool)

(assert (=> bm!456060 (= call!456064 call!456063)))

(assert (= (and d!1834937 (not res!2460216)) b!5839529))

(assert (= (and b!5839529 c!1034640) b!5839530))

(assert (= (and b!5839529 (not c!1034640)) b!5839528))

(assert (= (and b!5839530 res!2460214) b!5839524))

(assert (= (and b!5839528 c!1034641) b!5839527))

(assert (= (and b!5839528 (not c!1034641)) b!5839532))

(assert (= (and b!5839527 res!2460212) b!5839525))

(assert (= (and b!5839532 (not res!2460213)) b!5839531))

(assert (= (and b!5839531 res!2460215) b!5839526))

(assert (= (or b!5839525 b!5839526) bm!456058))

(assert (= (or b!5839527 b!5839531) bm!456060))

(assert (= (or b!5839524 bm!456060) bm!456059))

(declare-fun m!6764474 () Bool)

(assert (=> bm!456058 m!6764474))

(declare-fun m!6764476 () Bool)

(assert (=> b!5839530 m!6764476))

(declare-fun m!6764478 () Bool)

(assert (=> bm!456059 m!6764478))

(assert (=> start!597860 d!1834937))

(declare-fun d!1834941 () Bool)

(assert (=> d!1834941 (= (isEmpty!35754 (t!377376 zl!343)) ((_ is Nil!63897) (t!377376 zl!343)))))

(assert (=> b!5839205 d!1834941))

(declare-fun b!5839541 () Bool)

(declare-fun e!3581936 () Bool)

(declare-fun tp!1614591 () Bool)

(assert (=> b!5839541 (= e!3581936 (and tp_is_empty!41067 tp!1614591))))

(assert (=> b!5839214 (= tp!1614585 e!3581936)))

(assert (= (and b!5839214 ((_ is Cons!63898) (t!377377 s!2326))) b!5839541))

(declare-fun b!5839554 () Bool)

(declare-fun e!3581943 () Bool)

(declare-fun tp!1614596 () Bool)

(declare-fun tp!1614597 () Bool)

(assert (=> b!5839554 (= e!3581943 (and tp!1614596 tp!1614597))))

(assert (=> b!5839218 (= tp!1614584 e!3581943)))

(assert (= (and b!5839218 ((_ is Cons!63896) (exprs!5791 setElem!39558))) b!5839554))

(declare-fun b!5839578 () Bool)

(declare-fun e!3581957 () Bool)

(declare-fun tp!1614602 () Bool)

(assert (=> b!5839578 (= e!3581957 tp!1614602)))

(declare-fun e!3581956 () Bool)

(declare-fun tp!1614603 () Bool)

(declare-fun b!5839577 () Bool)

(assert (=> b!5839577 (= e!3581956 (and (inv!83014 (h!70345 (t!377376 zl!343))) e!3581957 tp!1614603))))

(assert (=> b!5839203 (= tp!1614583 e!3581956)))

(assert (= b!5839577 b!5839578))

(assert (= (and b!5839203 ((_ is Cons!63897) (t!377376 zl!343))) b!5839577))

(declare-fun m!6764480 () Bool)

(assert (=> b!5839577 m!6764480))

(declare-fun b!5839591 () Bool)

(declare-fun e!3581960 () Bool)

(declare-fun tp!1614615 () Bool)

(assert (=> b!5839591 (= e!3581960 tp!1614615)))

(declare-fun b!5839592 () Bool)

(declare-fun tp!1614617 () Bool)

(declare-fun tp!1614614 () Bool)

(assert (=> b!5839592 (= e!3581960 (and tp!1614617 tp!1614614))))

(declare-fun b!5839589 () Bool)

(assert (=> b!5839589 (= e!3581960 tp_is_empty!41067)))

(declare-fun b!5839590 () Bool)

(declare-fun tp!1614618 () Bool)

(declare-fun tp!1614616 () Bool)

(assert (=> b!5839590 (= e!3581960 (and tp!1614618 tp!1614616))))

(assert (=> b!5839208 (= tp!1614581 e!3581960)))

(assert (= (and b!5839208 ((_ is ElementMatch!15907) (regOne!32327 r!7292))) b!5839589))

(assert (= (and b!5839208 ((_ is Concat!24752) (regOne!32327 r!7292))) b!5839590))

(assert (= (and b!5839208 ((_ is Star!15907) (regOne!32327 r!7292))) b!5839591))

(assert (= (and b!5839208 ((_ is Union!15907) (regOne!32327 r!7292))) b!5839592))

(declare-fun b!5839595 () Bool)

(declare-fun e!3581961 () Bool)

(declare-fun tp!1614620 () Bool)

(assert (=> b!5839595 (= e!3581961 tp!1614620)))

(declare-fun b!5839596 () Bool)

(declare-fun tp!1614622 () Bool)

(declare-fun tp!1614619 () Bool)

(assert (=> b!5839596 (= e!3581961 (and tp!1614622 tp!1614619))))

(declare-fun b!5839593 () Bool)

(assert (=> b!5839593 (= e!3581961 tp_is_empty!41067)))

(declare-fun b!5839594 () Bool)

(declare-fun tp!1614623 () Bool)

(declare-fun tp!1614621 () Bool)

(assert (=> b!5839594 (= e!3581961 (and tp!1614623 tp!1614621))))

(assert (=> b!5839208 (= tp!1614587 e!3581961)))

(assert (= (and b!5839208 ((_ is ElementMatch!15907) (regTwo!32327 r!7292))) b!5839593))

(assert (= (and b!5839208 ((_ is Concat!24752) (regTwo!32327 r!7292))) b!5839594))

(assert (= (and b!5839208 ((_ is Star!15907) (regTwo!32327 r!7292))) b!5839595))

(assert (= (and b!5839208 ((_ is Union!15907) (regTwo!32327 r!7292))) b!5839596))

(declare-fun b!5839597 () Bool)

(declare-fun e!3581962 () Bool)

(declare-fun tp!1614624 () Bool)

(declare-fun tp!1614625 () Bool)

(assert (=> b!5839597 (= e!3581962 (and tp!1614624 tp!1614625))))

(assert (=> b!5839211 (= tp!1614588 e!3581962)))

(assert (= (and b!5839211 ((_ is Cons!63896) (exprs!5791 (h!70345 zl!343)))) b!5839597))

(declare-fun b!5839600 () Bool)

(declare-fun e!3581963 () Bool)

(declare-fun tp!1614627 () Bool)

(assert (=> b!5839600 (= e!3581963 tp!1614627)))

(declare-fun b!5839601 () Bool)

(declare-fun tp!1614629 () Bool)

(declare-fun tp!1614626 () Bool)

(assert (=> b!5839601 (= e!3581963 (and tp!1614629 tp!1614626))))

(declare-fun b!5839598 () Bool)

(assert (=> b!5839598 (= e!3581963 tp_is_empty!41067)))

(declare-fun b!5839599 () Bool)

(declare-fun tp!1614630 () Bool)

(declare-fun tp!1614628 () Bool)

(assert (=> b!5839599 (= e!3581963 (and tp!1614630 tp!1614628))))

(assert (=> b!5839212 (= tp!1614586 e!3581963)))

(assert (= (and b!5839212 ((_ is ElementMatch!15907) (regOne!32326 r!7292))) b!5839598))

(assert (= (and b!5839212 ((_ is Concat!24752) (regOne!32326 r!7292))) b!5839599))

(assert (= (and b!5839212 ((_ is Star!15907) (regOne!32326 r!7292))) b!5839600))

(assert (= (and b!5839212 ((_ is Union!15907) (regOne!32326 r!7292))) b!5839601))

(declare-fun b!5839604 () Bool)

(declare-fun e!3581964 () Bool)

(declare-fun tp!1614632 () Bool)

(assert (=> b!5839604 (= e!3581964 tp!1614632)))

(declare-fun b!5839605 () Bool)

(declare-fun tp!1614634 () Bool)

(declare-fun tp!1614631 () Bool)

(assert (=> b!5839605 (= e!3581964 (and tp!1614634 tp!1614631))))

(declare-fun b!5839602 () Bool)

(assert (=> b!5839602 (= e!3581964 tp_is_empty!41067)))

(declare-fun b!5839603 () Bool)

(declare-fun tp!1614635 () Bool)

(declare-fun tp!1614633 () Bool)

(assert (=> b!5839603 (= e!3581964 (and tp!1614635 tp!1614633))))

(assert (=> b!5839212 (= tp!1614582 e!3581964)))

(assert (= (and b!5839212 ((_ is ElementMatch!15907) (regTwo!32326 r!7292))) b!5839602))

(assert (= (and b!5839212 ((_ is Concat!24752) (regTwo!32326 r!7292))) b!5839603))

(assert (= (and b!5839212 ((_ is Star!15907) (regTwo!32326 r!7292))) b!5839604))

(assert (= (and b!5839212 ((_ is Union!15907) (regTwo!32326 r!7292))) b!5839605))

(declare-fun b!5839608 () Bool)

(declare-fun e!3581965 () Bool)

(declare-fun tp!1614637 () Bool)

(assert (=> b!5839608 (= e!3581965 tp!1614637)))

(declare-fun b!5839609 () Bool)

(declare-fun tp!1614639 () Bool)

(declare-fun tp!1614636 () Bool)

(assert (=> b!5839609 (= e!3581965 (and tp!1614639 tp!1614636))))

(declare-fun b!5839606 () Bool)

(assert (=> b!5839606 (= e!3581965 tp_is_empty!41067)))

(declare-fun b!5839607 () Bool)

(declare-fun tp!1614640 () Bool)

(declare-fun tp!1614638 () Bool)

(assert (=> b!5839607 (= e!3581965 (and tp!1614640 tp!1614638))))

(assert (=> b!5839216 (= tp!1614579 e!3581965)))

(assert (= (and b!5839216 ((_ is ElementMatch!15907) (reg!16236 r!7292))) b!5839606))

(assert (= (and b!5839216 ((_ is Concat!24752) (reg!16236 r!7292))) b!5839607))

(assert (= (and b!5839216 ((_ is Star!15907) (reg!16236 r!7292))) b!5839608))

(assert (= (and b!5839216 ((_ is Union!15907) (reg!16236 r!7292))) b!5839609))

(declare-fun condSetEmpty!39561 () Bool)

(assert (=> setNonEmpty!39558 (= condSetEmpty!39561 (= setRest!39558 ((as const (Array Context!10582 Bool)) false)))))

(declare-fun setRes!39561 () Bool)

(assert (=> setNonEmpty!39558 (= tp!1614580 setRes!39561)))

(declare-fun setIsEmpty!39561 () Bool)

(assert (=> setIsEmpty!39561 setRes!39561))

(declare-fun e!3581968 () Bool)

(declare-fun tp!1614645 () Bool)

(declare-fun setNonEmpty!39561 () Bool)

(declare-fun setElem!39561 () Context!10582)

(assert (=> setNonEmpty!39561 (= setRes!39561 (and tp!1614645 (inv!83014 setElem!39561) e!3581968))))

(declare-fun setRest!39561 () (InoxSet Context!10582))

(assert (=> setNonEmpty!39561 (= setRest!39558 ((_ map or) (store ((as const (Array Context!10582 Bool)) false) setElem!39561 true) setRest!39561))))

(declare-fun b!5839614 () Bool)

(declare-fun tp!1614646 () Bool)

(assert (=> b!5839614 (= e!3581968 tp!1614646)))

(assert (= (and setNonEmpty!39558 condSetEmpty!39561) setIsEmpty!39561))

(assert (= (and setNonEmpty!39558 (not condSetEmpty!39561)) setNonEmpty!39561))

(assert (= setNonEmpty!39561 b!5839614))

(declare-fun m!6764482 () Bool)

(assert (=> setNonEmpty!39561 m!6764482))

(check-sat (not d!1834915) (not b!5839338) (not d!1834917) (not b!5839335) (not b!5839594) (not b!5839334) (not b!5839356) (not b!5839489) (not b!5839373) (not b!5839348) (not b!5839419) (not b!5839487) (not bm!456040) (not b!5839417) (not b!5839577) (not d!1834923) (not bm!456059) (not b!5839601) (not b!5839530) (not bm!456058) (not d!1834909) (not b!5839415) (not b!5839591) (not b!5839341) (not b!5839385) (not b!5839291) (not d!1834927) (not bm!456044) (not b!5839578) (not b!5839488) (not b!5839600) (not b!5839597) (not bm!456041) tp_is_empty!41067 (not b!5839420) (not d!1834919) (not setNonEmpty!39561) (not b!5839360) (not b!5839484) (not b!5839418) (not d!1834933) (not b!5839607) (not b!5839596) (not bm!456039) (not b!5839336) (not b!5839486) (not b!5839603) (not b!5839608) (not d!1834893) (not b!5839592) (not d!1834907) (not b!5839386) (not b!5839359) (not bm!456036) (not b!5839541) (not b!5839554) (not b!5839361) (not b!5839595) (not b!5839366) (not d!1834911) (not d!1834935) (not b!5839609) (not d!1834897) (not b!5839223) (not b!5839599) (not b!5839614) (not b!5839490) (not b!5839388) (not b!5839427) (not b!5839347) (not b!5839604) (not bm!456035) (not b!5839363) (not b!5839372) (not b!5839290) (not b!5839590) (not bm!456045) (not d!1834925) (not d!1834931) (not b!5839391) (not b!5839414) (not b!5839381) (not b!5839485) (not bm!456043) (not b!5839384) (not b!5839416) (not b!5839331) (not bm!456042) (not b!5839605))
(check-sat)
(get-model)

(declare-fun b!5839833 () Bool)

(declare-fun e!3582086 () Bool)

(declare-fun lt!2303690 () Bool)

(declare-fun call!456084 () Bool)

(assert (=> b!5839833 (= e!3582086 (= lt!2303690 call!456084))))

(declare-fun b!5839834 () Bool)

(declare-fun res!2460284 () Bool)

(declare-fun e!3582087 () Bool)

(assert (=> b!5839834 (=> res!2460284 e!3582087)))

(assert (=> b!5839834 (= res!2460284 (not ((_ is ElementMatch!15907) (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326)))))))

(declare-fun e!3582083 () Bool)

(assert (=> b!5839834 (= e!3582083 e!3582087)))

(declare-fun b!5839835 () Bool)

(declare-fun e!3582084 () Bool)

(assert (=> b!5839835 (= e!3582084 (matchR!8090 (derivativeStep!4644 (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326)) (head!12366 (tail!11451 s!2326))) (tail!11451 (tail!11451 s!2326))))))

(declare-fun b!5839836 () Bool)

(declare-fun e!3582089 () Bool)

(declare-fun e!3582088 () Bool)

(assert (=> b!5839836 (= e!3582089 e!3582088)))

(declare-fun res!2460287 () Bool)

(assert (=> b!5839836 (=> res!2460287 e!3582088)))

(assert (=> b!5839836 (= res!2460287 call!456084)))

(declare-fun d!1834975 () Bool)

(assert (=> d!1834975 e!3582086))

(declare-fun c!1034706 () Bool)

(assert (=> d!1834975 (= c!1034706 ((_ is EmptyExpr!15907) (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326))))))

(assert (=> d!1834975 (= lt!2303690 e!3582084)))

(declare-fun c!1034707 () Bool)

(assert (=> d!1834975 (= c!1034707 (isEmpty!35755 (tail!11451 s!2326)))))

(assert (=> d!1834975 (validRegex!7643 (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326)))))

(assert (=> d!1834975 (= (matchR!8090 (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326)) (tail!11451 s!2326)) lt!2303690)))

(declare-fun b!5839837 () Bool)

(declare-fun res!2460290 () Bool)

(declare-fun e!3582085 () Bool)

(assert (=> b!5839837 (=> (not res!2460290) (not e!3582085))))

(assert (=> b!5839837 (= res!2460290 (not call!456084))))

(declare-fun b!5839838 () Bool)

(assert (=> b!5839838 (= e!3582085 (= (head!12366 (tail!11451 s!2326)) (c!1034555 (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326)))))))

(declare-fun b!5839839 () Bool)

(declare-fun res!2460283 () Bool)

(assert (=> b!5839839 (=> res!2460283 e!3582088)))

(assert (=> b!5839839 (= res!2460283 (not (isEmpty!35755 (tail!11451 (tail!11451 s!2326)))))))

(declare-fun b!5839840 () Bool)

(assert (=> b!5839840 (= e!3582088 (not (= (head!12366 (tail!11451 s!2326)) (c!1034555 (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326))))))))

(declare-fun bm!456079 () Bool)

(assert (=> bm!456079 (= call!456084 (isEmpty!35755 (tail!11451 s!2326)))))

(declare-fun b!5839841 () Bool)

(assert (=> b!5839841 (= e!3582083 (not lt!2303690))))

(declare-fun b!5839842 () Bool)

(declare-fun res!2460285 () Bool)

(assert (=> b!5839842 (=> (not res!2460285) (not e!3582085))))

(assert (=> b!5839842 (= res!2460285 (isEmpty!35755 (tail!11451 (tail!11451 s!2326))))))

(declare-fun b!5839843 () Bool)

(declare-fun res!2460286 () Bool)

(assert (=> b!5839843 (=> res!2460286 e!3582087)))

(assert (=> b!5839843 (= res!2460286 e!3582085)))

(declare-fun res!2460288 () Bool)

(assert (=> b!5839843 (=> (not res!2460288) (not e!3582085))))

(assert (=> b!5839843 (= res!2460288 lt!2303690)))

(declare-fun b!5839844 () Bool)

(assert (=> b!5839844 (= e!3582087 e!3582089)))

(declare-fun res!2460289 () Bool)

(assert (=> b!5839844 (=> (not res!2460289) (not e!3582089))))

(assert (=> b!5839844 (= res!2460289 (not lt!2303690))))

(declare-fun b!5839845 () Bool)

(assert (=> b!5839845 (= e!3582084 (nullable!5906 (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326))))))

(declare-fun b!5839846 () Bool)

(assert (=> b!5839846 (= e!3582086 e!3582083)))

(declare-fun c!1034705 () Bool)

(assert (=> b!5839846 (= c!1034705 ((_ is EmptyLang!15907) (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326))))))

(assert (= (and d!1834975 c!1034707) b!5839845))

(assert (= (and d!1834975 (not c!1034707)) b!5839835))

(assert (= (and d!1834975 c!1034706) b!5839833))

(assert (= (and d!1834975 (not c!1034706)) b!5839846))

(assert (= (and b!5839846 c!1034705) b!5839841))

(assert (= (and b!5839846 (not c!1034705)) b!5839834))

(assert (= (and b!5839834 (not res!2460284)) b!5839843))

(assert (= (and b!5839843 res!2460288) b!5839837))

(assert (= (and b!5839837 res!2460290) b!5839842))

(assert (= (and b!5839842 res!2460285) b!5839838))

(assert (= (and b!5839843 (not res!2460286)) b!5839844))

(assert (= (and b!5839844 res!2460289) b!5839836))

(assert (= (and b!5839836 (not res!2460287)) b!5839839))

(assert (= (and b!5839839 (not res!2460283)) b!5839840))

(assert (= (or b!5839833 b!5839836 b!5839837) bm!456079))

(assert (=> b!5839835 m!6764384))

(declare-fun m!6764600 () Bool)

(assert (=> b!5839835 m!6764600))

(assert (=> b!5839835 m!6764402))

(assert (=> b!5839835 m!6764600))

(declare-fun m!6764602 () Bool)

(assert (=> b!5839835 m!6764602))

(assert (=> b!5839835 m!6764384))

(declare-fun m!6764604 () Bool)

(assert (=> b!5839835 m!6764604))

(assert (=> b!5839835 m!6764602))

(assert (=> b!5839835 m!6764604))

(declare-fun m!6764606 () Bool)

(assert (=> b!5839835 m!6764606))

(assert (=> d!1834975 m!6764384))

(assert (=> d!1834975 m!6764392))

(assert (=> d!1834975 m!6764402))

(declare-fun m!6764608 () Bool)

(assert (=> d!1834975 m!6764608))

(assert (=> b!5839845 m!6764402))

(declare-fun m!6764610 () Bool)

(assert (=> b!5839845 m!6764610))

(assert (=> b!5839838 m!6764384))

(assert (=> b!5839838 m!6764600))

(assert (=> b!5839842 m!6764384))

(assert (=> b!5839842 m!6764604))

(assert (=> b!5839842 m!6764604))

(declare-fun m!6764612 () Bool)

(assert (=> b!5839842 m!6764612))

(assert (=> b!5839839 m!6764384))

(assert (=> b!5839839 m!6764604))

(assert (=> b!5839839 m!6764604))

(assert (=> b!5839839 m!6764612))

(assert (=> bm!456079 m!6764384))

(assert (=> bm!456079 m!6764392))

(assert (=> b!5839840 m!6764384))

(assert (=> b!5839840 m!6764600))

(assert (=> b!5839356 d!1834975))

(declare-fun b!5839888 () Bool)

(declare-fun e!3582115 () Regex!15907)

(declare-fun e!3582112 () Regex!15907)

(assert (=> b!5839888 (= e!3582115 e!3582112)))

(declare-fun c!1034728 () Bool)

(assert (=> b!5839888 (= c!1034728 ((_ is Star!15907) (regOne!32327 r!7292)))))

(declare-fun b!5839889 () Bool)

(declare-fun call!456102 () Regex!15907)

(declare-fun call!456101 () Regex!15907)

(declare-fun e!3582116 () Regex!15907)

(assert (=> b!5839889 (= e!3582116 (Union!15907 (Concat!24752 call!456101 (regTwo!32326 (regOne!32327 r!7292))) call!456102))))

(declare-fun c!1034727 () Bool)

(declare-fun call!456100 () Regex!15907)

(declare-fun bm!456094 () Bool)

(assert (=> bm!456094 (= call!456100 (derivativeStep!4644 (ite c!1034727 (regTwo!32327 (regOne!32327 r!7292)) (ite c!1034728 (reg!16236 (regOne!32327 r!7292)) (regOne!32326 (regOne!32327 r!7292)))) (head!12366 s!2326)))))

(declare-fun b!5839890 () Bool)

(declare-fun c!1034730 () Bool)

(assert (=> b!5839890 (= c!1034730 (nullable!5906 (regOne!32326 (regOne!32327 r!7292))))))

(assert (=> b!5839890 (= e!3582112 e!3582116)))

(declare-fun b!5839891 () Bool)

(assert (=> b!5839891 (= e!3582116 (Union!15907 (Concat!24752 call!456102 (regTwo!32326 (regOne!32327 r!7292))) EmptyLang!15907))))

(declare-fun d!1834977 () Bool)

(declare-fun lt!2303694 () Regex!15907)

(assert (=> d!1834977 (validRegex!7643 lt!2303694)))

(declare-fun e!3582113 () Regex!15907)

(assert (=> d!1834977 (= lt!2303694 e!3582113)))

(declare-fun c!1034729 () Bool)

(assert (=> d!1834977 (= c!1034729 (or ((_ is EmptyExpr!15907) (regOne!32327 r!7292)) ((_ is EmptyLang!15907) (regOne!32327 r!7292))))))

(assert (=> d!1834977 (validRegex!7643 (regOne!32327 r!7292))))

(assert (=> d!1834977 (= (derivativeStep!4644 (regOne!32327 r!7292) (head!12366 s!2326)) lt!2303694)))

(declare-fun bm!456095 () Bool)

(assert (=> bm!456095 (= call!456101 call!456100)))

(declare-fun b!5839892 () Bool)

(declare-fun e!3582114 () Regex!15907)

(assert (=> b!5839892 (= e!3582114 (ite (= (head!12366 s!2326) (c!1034555 (regOne!32327 r!7292))) EmptyExpr!15907 EmptyLang!15907))))

(declare-fun b!5839893 () Bool)

(declare-fun call!456099 () Regex!15907)

(assert (=> b!5839893 (= e!3582115 (Union!15907 call!456099 call!456100))))

(declare-fun b!5839894 () Bool)

(assert (=> b!5839894 (= e!3582112 (Concat!24752 call!456101 (regOne!32327 r!7292)))))

(declare-fun bm!456096 () Bool)

(assert (=> bm!456096 (= call!456099 (derivativeStep!4644 (ite c!1034727 (regOne!32327 (regOne!32327 r!7292)) (ite c!1034730 (regTwo!32326 (regOne!32327 r!7292)) (regOne!32326 (regOne!32327 r!7292)))) (head!12366 s!2326)))))

(declare-fun bm!456097 () Bool)

(assert (=> bm!456097 (= call!456102 call!456099)))

(declare-fun b!5839895 () Bool)

(assert (=> b!5839895 (= e!3582113 EmptyLang!15907)))

(declare-fun b!5839896 () Bool)

(assert (=> b!5839896 (= c!1034727 ((_ is Union!15907) (regOne!32327 r!7292)))))

(assert (=> b!5839896 (= e!3582114 e!3582115)))

(declare-fun b!5839897 () Bool)

(assert (=> b!5839897 (= e!3582113 e!3582114)))

(declare-fun c!1034731 () Bool)

(assert (=> b!5839897 (= c!1034731 ((_ is ElementMatch!15907) (regOne!32327 r!7292)))))

(assert (= (and d!1834977 c!1034729) b!5839895))

(assert (= (and d!1834977 (not c!1034729)) b!5839897))

(assert (= (and b!5839897 c!1034731) b!5839892))

(assert (= (and b!5839897 (not c!1034731)) b!5839896))

(assert (= (and b!5839896 c!1034727) b!5839893))

(assert (= (and b!5839896 (not c!1034727)) b!5839888))

(assert (= (and b!5839888 c!1034728) b!5839894))

(assert (= (and b!5839888 (not c!1034728)) b!5839890))

(assert (= (and b!5839890 c!1034730) b!5839889))

(assert (= (and b!5839890 (not c!1034730)) b!5839891))

(assert (= (or b!5839889 b!5839891) bm!456097))

(assert (= (or b!5839894 b!5839889) bm!456095))

(assert (= (or b!5839893 bm!456095) bm!456094))

(assert (= (or b!5839893 bm!456097) bm!456096))

(assert (=> bm!456094 m!6764380))

(declare-fun m!6764632 () Bool)

(assert (=> bm!456094 m!6764632))

(declare-fun m!6764634 () Bool)

(assert (=> b!5839890 m!6764634))

(declare-fun m!6764636 () Bool)

(assert (=> d!1834977 m!6764636))

(assert (=> d!1834977 m!6764378))

(assert (=> bm!456096 m!6764380))

(declare-fun m!6764638 () Bool)

(assert (=> bm!456096 m!6764638))

(assert (=> b!5839356 d!1834977))

(declare-fun d!1835001 () Bool)

(assert (=> d!1835001 (= (head!12366 s!2326) (h!70346 s!2326))))

(assert (=> b!5839356 d!1835001))

(declare-fun d!1835005 () Bool)

(assert (=> d!1835005 (= (tail!11451 s!2326) (t!377377 s!2326))))

(assert (=> b!5839356 d!1835005))

(declare-fun d!1835007 () Bool)

(declare-fun nullableFct!1894 (Regex!15907) Bool)

(assert (=> d!1835007 (= (nullable!5906 (reg!16236 r!7292)) (nullableFct!1894 (reg!16236 r!7292)))))

(declare-fun bs!1375891 () Bool)

(assert (= bs!1375891 d!1835007))

(declare-fun m!6764646 () Bool)

(assert (=> bs!1375891 m!6764646))

(assert (=> b!5839530 d!1835007))

(declare-fun d!1835011 () Bool)

(assert (=> d!1835011 (= (isEmpty!35755 s!2326) ((_ is Nil!63898) s!2326))))

(assert (=> d!1834915 d!1835011))

(declare-fun b!5839907 () Bool)

(declare-fun e!3582127 () Bool)

(declare-fun call!456106 () Bool)

(assert (=> b!5839907 (= e!3582127 call!456106)))

(declare-fun bm!456101 () Bool)

(declare-fun call!456108 () Bool)

(declare-fun c!1034735 () Bool)

(assert (=> bm!456101 (= call!456108 (validRegex!7643 (ite c!1034735 (regTwo!32327 (regOne!32327 r!7292)) (regTwo!32326 (regOne!32327 r!7292)))))))

(declare-fun b!5839908 () Bool)

(declare-fun e!3582126 () Bool)

(assert (=> b!5839908 (= e!3582126 call!456108)))

(declare-fun b!5839909 () Bool)

(declare-fun e!3582128 () Bool)

(assert (=> b!5839909 (= e!3582128 call!456108)))

(declare-fun d!1835013 () Bool)

(declare-fun res!2460303 () Bool)

(declare-fun e!3582124 () Bool)

(assert (=> d!1835013 (=> res!2460303 e!3582124)))

(assert (=> d!1835013 (= res!2460303 ((_ is ElementMatch!15907) (regOne!32327 r!7292)))))

(assert (=> d!1835013 (= (validRegex!7643 (regOne!32327 r!7292)) e!3582124)))

(declare-fun b!5839910 () Bool)

(declare-fun res!2460299 () Bool)

(assert (=> b!5839910 (=> (not res!2460299) (not e!3582126))))

(declare-fun call!456107 () Bool)

(assert (=> b!5839910 (= res!2460299 call!456107)))

(declare-fun e!3582130 () Bool)

(assert (=> b!5839910 (= e!3582130 e!3582126)))

(declare-fun b!5839911 () Bool)

(declare-fun e!3582129 () Bool)

(assert (=> b!5839911 (= e!3582129 e!3582130)))

(assert (=> b!5839911 (= c!1034735 ((_ is Union!15907) (regOne!32327 r!7292)))))

(declare-fun b!5839912 () Bool)

(assert (=> b!5839912 (= e!3582124 e!3582129)))

(declare-fun c!1034734 () Bool)

(assert (=> b!5839912 (= c!1034734 ((_ is Star!15907) (regOne!32327 r!7292)))))

(declare-fun b!5839913 () Bool)

(assert (=> b!5839913 (= e!3582129 e!3582127)))

(declare-fun res!2460301 () Bool)

(assert (=> b!5839913 (= res!2460301 (not (nullable!5906 (reg!16236 (regOne!32327 r!7292)))))))

(assert (=> b!5839913 (=> (not res!2460301) (not e!3582127))))

(declare-fun bm!456102 () Bool)

(assert (=> bm!456102 (= call!456106 (validRegex!7643 (ite c!1034734 (reg!16236 (regOne!32327 r!7292)) (ite c!1034735 (regOne!32327 (regOne!32327 r!7292)) (regOne!32326 (regOne!32327 r!7292))))))))

(declare-fun b!5839914 () Bool)

(declare-fun e!3582125 () Bool)

(assert (=> b!5839914 (= e!3582125 e!3582128)))

(declare-fun res!2460302 () Bool)

(assert (=> b!5839914 (=> (not res!2460302) (not e!3582128))))

(assert (=> b!5839914 (= res!2460302 call!456107)))

(declare-fun b!5839915 () Bool)

(declare-fun res!2460300 () Bool)

(assert (=> b!5839915 (=> res!2460300 e!3582125)))

(assert (=> b!5839915 (= res!2460300 (not ((_ is Concat!24752) (regOne!32327 r!7292))))))

(assert (=> b!5839915 (= e!3582130 e!3582125)))

(declare-fun bm!456103 () Bool)

(assert (=> bm!456103 (= call!456107 call!456106)))

(assert (= (and d!1835013 (not res!2460303)) b!5839912))

(assert (= (and b!5839912 c!1034734) b!5839913))

(assert (= (and b!5839912 (not c!1034734)) b!5839911))

(assert (= (and b!5839913 res!2460301) b!5839907))

(assert (= (and b!5839911 c!1034735) b!5839910))

(assert (= (and b!5839911 (not c!1034735)) b!5839915))

(assert (= (and b!5839910 res!2460299) b!5839908))

(assert (= (and b!5839915 (not res!2460300)) b!5839914))

(assert (= (and b!5839914 res!2460302) b!5839909))

(assert (= (or b!5839908 b!5839909) bm!456101))

(assert (= (or b!5839910 b!5839914) bm!456103))

(assert (= (or b!5839907 bm!456103) bm!456102))

(declare-fun m!6764648 () Bool)

(assert (=> bm!456101 m!6764648))

(declare-fun m!6764650 () Bool)

(assert (=> b!5839913 m!6764650))

(declare-fun m!6764652 () Bool)

(assert (=> bm!456102 m!6764652))

(assert (=> d!1834915 d!1835013))

(declare-fun d!1835015 () Bool)

(declare-fun res!2460321 () Bool)

(declare-fun e!3582152 () Bool)

(assert (=> d!1835015 (=> res!2460321 e!3582152)))

(assert (=> d!1835015 (= res!2460321 ((_ is Nil!63896) (exprs!5791 (Context!10583 (Cons!63896 r!7292 Nil!63896)))))))

(assert (=> d!1835015 (= (forall!14994 (exprs!5791 (Context!10583 (Cons!63896 r!7292 Nil!63896))) lambda!319463) e!3582152)))

(declare-fun b!5839941 () Bool)

(declare-fun e!3582153 () Bool)

(assert (=> b!5839941 (= e!3582152 e!3582153)))

(declare-fun res!2460322 () Bool)

(assert (=> b!5839941 (=> (not res!2460322) (not e!3582153))))

(declare-fun dynLambda!24978 (Int Regex!15907) Bool)

(assert (=> b!5839941 (= res!2460322 (dynLambda!24978 lambda!319463 (h!70344 (exprs!5791 (Context!10583 (Cons!63896 r!7292 Nil!63896))))))))

(declare-fun b!5839942 () Bool)

(assert (=> b!5839942 (= e!3582153 (forall!14994 (t!377375 (exprs!5791 (Context!10583 (Cons!63896 r!7292 Nil!63896)))) lambda!319463))))

(assert (= (and d!1835015 (not res!2460321)) b!5839941))

(assert (= (and b!5839941 res!2460322) b!5839942))

(declare-fun b_lambda!219915 () Bool)

(assert (=> (not b_lambda!219915) (not b!5839941)))

(declare-fun m!6764666 () Bool)

(assert (=> b!5839941 m!6764666))

(declare-fun m!6764668 () Bool)

(assert (=> b!5839942 m!6764668))

(assert (=> d!1834935 d!1835015))

(assert (=> bm!456040 d!1835011))

(assert (=> d!1834923 d!1835011))

(assert (=> d!1834923 d!1834937))

(assert (=> bm!456043 d!1835011))

(assert (=> b!5839372 d!1834913))

(assert (=> d!1834907 d!1834915))

(assert (=> d!1834907 d!1834913))

(declare-fun d!1835027 () Bool)

(assert (=> d!1835027 (= (matchR!8090 (regOne!32327 r!7292) s!2326) (matchRSpec!3008 (regOne!32327 r!7292) s!2326))))

(assert (=> d!1835027 true))

(declare-fun _$88!4196 () Unit!157085)

(assert (=> d!1835027 (= (choose!44335 (regOne!32327 r!7292) s!2326) _$88!4196)))

(declare-fun bs!1375903 () Bool)

(assert (= bs!1375903 d!1835027))

(assert (=> bs!1375903 m!6764332))

(assert (=> bs!1375903 m!6764328))

(assert (=> d!1834907 d!1835027))

(assert (=> d!1834907 d!1835013))

(declare-fun d!1835029 () Bool)

(declare-fun res!2460323 () Bool)

(declare-fun e!3582154 () Bool)

(assert (=> d!1835029 (=> res!2460323 e!3582154)))

(assert (=> d!1835029 (= res!2460323 ((_ is Nil!63896) lt!2303661))))

(assert (=> d!1835029 (= (forall!14994 lt!2303661 lambda!319455) e!3582154)))

(declare-fun b!5839943 () Bool)

(declare-fun e!3582155 () Bool)

(assert (=> b!5839943 (= e!3582154 e!3582155)))

(declare-fun res!2460324 () Bool)

(assert (=> b!5839943 (=> (not res!2460324) (not e!3582155))))

(assert (=> b!5839943 (= res!2460324 (dynLambda!24978 lambda!319455 (h!70344 lt!2303661)))))

(declare-fun b!5839944 () Bool)

(assert (=> b!5839944 (= e!3582155 (forall!14994 (t!377375 lt!2303661) lambda!319455))))

(assert (= (and d!1835029 (not res!2460323)) b!5839943))

(assert (= (and b!5839943 res!2460324) b!5839944))

(declare-fun b_lambda!219917 () Bool)

(assert (=> (not b_lambda!219917) (not b!5839943)))

(declare-fun m!6764670 () Bool)

(assert (=> b!5839943 m!6764670))

(declare-fun m!6764672 () Bool)

(assert (=> b!5839944 m!6764672))

(assert (=> d!1834931 d!1835029))

(declare-fun d!1835031 () Bool)

(assert (=> d!1835031 (= (nullable!5906 r!7292) (nullableFct!1894 r!7292))))

(declare-fun bs!1375909 () Bool)

(assert (= bs!1375909 d!1835031))

(declare-fun m!6764674 () Bool)

(assert (=> bs!1375909 m!6764674))

(assert (=> b!5839391 d!1835031))

(declare-fun b!5839945 () Bool)

(declare-fun e!3582159 () Bool)

(declare-fun call!456111 () Bool)

(assert (=> b!5839945 (= e!3582159 call!456111)))

(declare-fun c!1034741 () Bool)

(declare-fun bm!456106 () Bool)

(declare-fun call!456113 () Bool)

(assert (=> bm!456106 (= call!456113 (validRegex!7643 (ite c!1034741 (regTwo!32327 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))) (regTwo!32326 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))))))))

(declare-fun b!5839946 () Bool)

(declare-fun e!3582158 () Bool)

(assert (=> b!5839946 (= e!3582158 call!456113)))

(declare-fun b!5839947 () Bool)

(declare-fun e!3582160 () Bool)

(assert (=> b!5839947 (= e!3582160 call!456113)))

(declare-fun d!1835033 () Bool)

(declare-fun res!2460329 () Bool)

(declare-fun e!3582156 () Bool)

(assert (=> d!1835033 (=> res!2460329 e!3582156)))

(assert (=> d!1835033 (= res!2460329 ((_ is ElementMatch!15907) (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))))))

(assert (=> d!1835033 (= (validRegex!7643 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))) e!3582156)))

(declare-fun b!5839948 () Bool)

(declare-fun res!2460325 () Bool)

(assert (=> b!5839948 (=> (not res!2460325) (not e!3582158))))

(declare-fun call!456112 () Bool)

(assert (=> b!5839948 (= res!2460325 call!456112)))

(declare-fun e!3582162 () Bool)

(assert (=> b!5839948 (= e!3582162 e!3582158)))

(declare-fun b!5839949 () Bool)

(declare-fun e!3582161 () Bool)

(assert (=> b!5839949 (= e!3582161 e!3582162)))

(assert (=> b!5839949 (= c!1034741 ((_ is Union!15907) (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))))))

(declare-fun b!5839950 () Bool)

(assert (=> b!5839950 (= e!3582156 e!3582161)))

(declare-fun c!1034740 () Bool)

(assert (=> b!5839950 (= c!1034740 ((_ is Star!15907) (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))))))

(declare-fun b!5839951 () Bool)

(assert (=> b!5839951 (= e!3582161 e!3582159)))

(declare-fun res!2460327 () Bool)

(assert (=> b!5839951 (= res!2460327 (not (nullable!5906 (reg!16236 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))))))))

(assert (=> b!5839951 (=> (not res!2460327) (not e!3582159))))

(declare-fun bm!456107 () Bool)

(assert (=> bm!456107 (= call!456111 (validRegex!7643 (ite c!1034740 (reg!16236 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))) (ite c!1034741 (regOne!32327 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292))) (regOne!32326 (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292)))))))))

(declare-fun b!5839952 () Bool)

(declare-fun e!3582157 () Bool)

(assert (=> b!5839952 (= e!3582157 e!3582160)))

(declare-fun res!2460328 () Bool)

(assert (=> b!5839952 (=> (not res!2460328) (not e!3582160))))

(assert (=> b!5839952 (= res!2460328 call!456112)))

(declare-fun b!5839953 () Bool)

(declare-fun res!2460326 () Bool)

(assert (=> b!5839953 (=> res!2460326 e!3582157)))

(assert (=> b!5839953 (= res!2460326 (not ((_ is Concat!24752) (ite c!1034641 (regTwo!32327 r!7292) (regTwo!32326 r!7292)))))))

(assert (=> b!5839953 (= e!3582162 e!3582157)))

(declare-fun bm!456108 () Bool)

(assert (=> bm!456108 (= call!456112 call!456111)))

(assert (= (and d!1835033 (not res!2460329)) b!5839950))

(assert (= (and b!5839950 c!1034740) b!5839951))

(assert (= (and b!5839950 (not c!1034740)) b!5839949))

(assert (= (and b!5839951 res!2460327) b!5839945))

(assert (= (and b!5839949 c!1034741) b!5839948))

(assert (= (and b!5839949 (not c!1034741)) b!5839953))

(assert (= (and b!5839948 res!2460325) b!5839946))

(assert (= (and b!5839953 (not res!2460326)) b!5839952))

(assert (= (and b!5839952 res!2460328) b!5839947))

(assert (= (or b!5839946 b!5839947) bm!456106))

(assert (= (or b!5839948 b!5839952) bm!456108))

(assert (= (or b!5839945 bm!456108) bm!456107))

(declare-fun m!6764676 () Bool)

(assert (=> bm!456106 m!6764676))

(declare-fun m!6764680 () Bool)

(assert (=> b!5839951 m!6764680))

(declare-fun m!6764684 () Bool)

(assert (=> bm!456107 m!6764684))

(assert (=> bm!456058 d!1835033))

(declare-fun bs!1375914 () Bool)

(declare-fun d!1835035 () Bool)

(assert (= bs!1375914 (and d!1835035 d!1834927)))

(declare-fun lambda!319486 () Int)

(assert (=> bs!1375914 (= lambda!319486 lambda!319452)))

(declare-fun bs!1375916 () Bool)

(assert (= bs!1375916 (and d!1835035 d!1834933)))

(assert (=> bs!1375916 (= lambda!319486 lambda!319462)))

(declare-fun bs!1375918 () Bool)

(assert (= bs!1375918 (and d!1835035 d!1834935)))

(assert (=> bs!1375918 (= lambda!319486 lambda!319463)))

(declare-fun bs!1375920 () Bool)

(assert (= bs!1375920 (and d!1835035 d!1834917)))

(assert (=> bs!1375920 (= lambda!319486 lambda!319443)))

(declare-fun bs!1375921 () Bool)

(assert (= bs!1375921 (and d!1835035 d!1834931)))

(assert (=> bs!1375921 (= lambda!319486 lambda!319455)))

(declare-fun bs!1375923 () Bool)

(assert (= bs!1375923 (and d!1835035 d!1834919)))

(assert (=> bs!1375923 (= lambda!319486 lambda!319444)))

(declare-fun b!5839954 () Bool)

(declare-fun e!3582165 () Regex!15907)

(assert (=> b!5839954 (= e!3582165 EmptyExpr!15907)))

(declare-fun b!5839955 () Bool)

(declare-fun e!3582166 () Regex!15907)

(assert (=> b!5839955 (= e!3582166 (h!70344 (t!377375 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5839956 () Bool)

(assert (=> b!5839956 (= e!3582166 e!3582165)))

(declare-fun c!1034744 () Bool)

(assert (=> b!5839956 (= c!1034744 ((_ is Cons!63896) (t!377375 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5839957 () Bool)

(declare-fun e!3582168 () Bool)

(declare-fun e!3582163 () Bool)

(assert (=> b!5839957 (= e!3582168 e!3582163)))

(declare-fun c!1034742 () Bool)

(assert (=> b!5839957 (= c!1034742 (isEmpty!35758 (t!377375 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5839958 () Bool)

(declare-fun e!3582167 () Bool)

(assert (=> b!5839958 (= e!3582163 e!3582167)))

(declare-fun c!1034745 () Bool)

(assert (=> b!5839958 (= c!1034745 (isEmpty!35758 (tail!11454 (t!377375 (exprs!5791 (h!70345 zl!343))))))))

(declare-fun b!5839959 () Bool)

(declare-fun lt!2303695 () Regex!15907)

(assert (=> b!5839959 (= e!3582167 (isConcat!865 lt!2303695))))

(declare-fun b!5839960 () Bool)

(assert (=> b!5839960 (= e!3582163 (isEmptyExpr!1342 lt!2303695))))

(declare-fun b!5839961 () Bool)

(declare-fun e!3582164 () Bool)

(assert (=> b!5839961 (= e!3582164 (isEmpty!35758 (t!377375 (t!377375 (exprs!5791 (h!70345 zl!343))))))))

(declare-fun b!5839962 () Bool)

(assert (=> b!5839962 (= e!3582167 (= lt!2303695 (head!12369 (t!377375 (exprs!5791 (h!70345 zl!343))))))))

(assert (=> d!1835035 e!3582168))

(declare-fun res!2460331 () Bool)

(assert (=> d!1835035 (=> (not res!2460331) (not e!3582168))))

(assert (=> d!1835035 (= res!2460331 (validRegex!7643 lt!2303695))))

(assert (=> d!1835035 (= lt!2303695 e!3582166)))

(declare-fun c!1034743 () Bool)

(assert (=> d!1835035 (= c!1034743 e!3582164)))

(declare-fun res!2460330 () Bool)

(assert (=> d!1835035 (=> (not res!2460330) (not e!3582164))))

(assert (=> d!1835035 (= res!2460330 ((_ is Cons!63896) (t!377375 (exprs!5791 (h!70345 zl!343)))))))

(assert (=> d!1835035 (forall!14994 (t!377375 (exprs!5791 (h!70345 zl!343))) lambda!319486)))

(assert (=> d!1835035 (= (generalisedConcat!1504 (t!377375 (exprs!5791 (h!70345 zl!343)))) lt!2303695)))

(declare-fun b!5839963 () Bool)

(assert (=> b!5839963 (= e!3582165 (Concat!24752 (h!70344 (t!377375 (exprs!5791 (h!70345 zl!343)))) (generalisedConcat!1504 (t!377375 (t!377375 (exprs!5791 (h!70345 zl!343)))))))))

(assert (= (and d!1835035 res!2460330) b!5839961))

(assert (= (and d!1835035 c!1034743) b!5839955))

(assert (= (and d!1835035 (not c!1034743)) b!5839956))

(assert (= (and b!5839956 c!1034744) b!5839963))

(assert (= (and b!5839956 (not c!1034744)) b!5839954))

(assert (= (and d!1835035 res!2460331) b!5839957))

(assert (= (and b!5839957 c!1034742) b!5839960))

(assert (= (and b!5839957 (not c!1034742)) b!5839958))

(assert (= (and b!5839958 c!1034745) b!5839962))

(assert (= (and b!5839958 (not c!1034745)) b!5839959))

(declare-fun m!6764690 () Bool)

(assert (=> b!5839963 m!6764690))

(declare-fun m!6764692 () Bool)

(assert (=> b!5839961 m!6764692))

(declare-fun m!6764694 () Bool)

(assert (=> b!5839958 m!6764694))

(assert (=> b!5839958 m!6764694))

(declare-fun m!6764696 () Bool)

(assert (=> b!5839958 m!6764696))

(declare-fun m!6764698 () Bool)

(assert (=> b!5839960 m!6764698))

(assert (=> b!5839957 m!6764450))

(declare-fun m!6764700 () Bool)

(assert (=> b!5839962 m!6764700))

(declare-fun m!6764702 () Bool)

(assert (=> d!1835035 m!6764702))

(declare-fun m!6764704 () Bool)

(assert (=> d!1835035 m!6764704))

(declare-fun m!6764706 () Bool)

(assert (=> b!5839959 m!6764706))

(assert (=> b!5839490 d!1835035))

(assert (=> b!5839427 d!1834933))

(declare-fun bs!1375924 () Bool)

(declare-fun d!1835043 () Bool)

(assert (= bs!1375924 (and d!1835043 d!1834927)))

(declare-fun lambda!319487 () Int)

(assert (=> bs!1375924 (= lambda!319487 lambda!319452)))

(declare-fun bs!1375925 () Bool)

(assert (= bs!1375925 (and d!1835043 d!1834933)))

(assert (=> bs!1375925 (= lambda!319487 lambda!319462)))

(declare-fun bs!1375926 () Bool)

(assert (= bs!1375926 (and d!1835043 d!1834935)))

(assert (=> bs!1375926 (= lambda!319487 lambda!319463)))

(declare-fun bs!1375927 () Bool)

(assert (= bs!1375927 (and d!1835043 d!1834917)))

(assert (=> bs!1375927 (= lambda!319487 lambda!319443)))

(declare-fun bs!1375928 () Bool)

(assert (= bs!1375928 (and d!1835043 d!1834931)))

(assert (=> bs!1375928 (= lambda!319487 lambda!319455)))

(declare-fun bs!1375929 () Bool)

(assert (= bs!1375929 (and d!1835043 d!1835035)))

(assert (=> bs!1375929 (= lambda!319487 lambda!319486)))

(declare-fun bs!1375930 () Bool)

(assert (= bs!1375930 (and d!1835043 d!1834919)))

(assert (=> bs!1375930 (= lambda!319487 lambda!319444)))

(declare-fun lt!2303696 () List!64020)

(assert (=> d!1835043 (forall!14994 lt!2303696 lambda!319487)))

(declare-fun e!3582169 () List!64020)

(assert (=> d!1835043 (= lt!2303696 e!3582169)))

(declare-fun c!1034746 () Bool)

(assert (=> d!1835043 (= c!1034746 ((_ is Cons!63897) (t!377376 zl!343)))))

(assert (=> d!1835043 (= (unfocusZipperList!1328 (t!377376 zl!343)) lt!2303696)))

(declare-fun b!5839964 () Bool)

(assert (=> b!5839964 (= e!3582169 (Cons!63896 (generalisedConcat!1504 (exprs!5791 (h!70345 (t!377376 zl!343)))) (unfocusZipperList!1328 (t!377376 (t!377376 zl!343)))))))

(declare-fun b!5839965 () Bool)

(assert (=> b!5839965 (= e!3582169 Nil!63896)))

(assert (= (and d!1835043 c!1034746) b!5839964))

(assert (= (and d!1835043 (not c!1034746)) b!5839965))

(declare-fun m!6764708 () Bool)

(assert (=> d!1835043 m!6764708))

(declare-fun m!6764710 () Bool)

(assert (=> b!5839964 m!6764710))

(declare-fun m!6764712 () Bool)

(assert (=> b!5839964 m!6764712))

(assert (=> b!5839427 d!1835043))

(declare-fun bs!1375931 () Bool)

(declare-fun b!5839976 () Bool)

(assert (= bs!1375931 (and b!5839976 b!5839344)))

(declare-fun lambda!319488 () Int)

(assert (=> bs!1375931 (not (= lambda!319488 lambda!319440))))

(declare-fun bs!1375932 () Bool)

(assert (= bs!1375932 (and b!5839976 b!5839349)))

(assert (=> bs!1375932 (= (and (= (reg!16236 (regOne!32327 (regOne!32327 r!7292))) (reg!16236 (regOne!32327 r!7292))) (= (regOne!32327 (regOne!32327 r!7292)) (regOne!32327 r!7292))) (= lambda!319488 lambda!319439))))

(declare-fun bs!1375933 () Bool)

(assert (= bs!1375933 (and b!5839976 b!5839369)))

(assert (=> bs!1375933 (not (= lambda!319488 lambda!319446))))

(declare-fun bs!1375934 () Bool)

(assert (= bs!1375934 (and b!5839976 b!5839292)))

(assert (=> bs!1375934 (= (and (= (reg!16236 (regOne!32327 (regOne!32327 r!7292))) (reg!16236 (regTwo!32327 r!7292))) (= (regOne!32327 (regOne!32327 r!7292)) (regTwo!32327 r!7292))) (= lambda!319488 lambda!319437))))

(declare-fun bs!1375935 () Bool)

(assert (= bs!1375935 (and b!5839976 b!5839374)))

(assert (=> bs!1375935 (= (and (= (reg!16236 (regOne!32327 (regOne!32327 r!7292))) (reg!16236 r!7292)) (= (regOne!32327 (regOne!32327 r!7292)) r!7292)) (= lambda!319488 lambda!319445))))

(declare-fun bs!1375936 () Bool)

(assert (= bs!1375936 (and b!5839976 b!5839287)))

(assert (=> bs!1375936 (not (= lambda!319488 lambda!319438))))

(assert (=> b!5839976 true))

(assert (=> b!5839976 true))

(declare-fun bs!1375937 () Bool)

(declare-fun b!5839971 () Bool)

(assert (= bs!1375937 (and b!5839971 b!5839344)))

(declare-fun lambda!319489 () Int)

(assert (=> bs!1375937 (= (and (= (regOne!32326 (regOne!32327 (regOne!32327 r!7292))) (regOne!32326 (regOne!32327 r!7292))) (= (regTwo!32326 (regOne!32327 (regOne!32327 r!7292))) (regTwo!32326 (regOne!32327 r!7292)))) (= lambda!319489 lambda!319440))))

(declare-fun bs!1375938 () Bool)

(assert (= bs!1375938 (and b!5839971 b!5839349)))

(assert (=> bs!1375938 (not (= lambda!319489 lambda!319439))))

(declare-fun bs!1375939 () Bool)

(assert (= bs!1375939 (and b!5839971 b!5839369)))

(assert (=> bs!1375939 (= (and (= (regOne!32326 (regOne!32327 (regOne!32327 r!7292))) (regOne!32326 r!7292)) (= (regTwo!32326 (regOne!32327 (regOne!32327 r!7292))) (regTwo!32326 r!7292))) (= lambda!319489 lambda!319446))))

(declare-fun bs!1375940 () Bool)

(assert (= bs!1375940 (and b!5839971 b!5839292)))

(assert (=> bs!1375940 (not (= lambda!319489 lambda!319437))))

(declare-fun bs!1375941 () Bool)

(assert (= bs!1375941 (and b!5839971 b!5839976)))

(assert (=> bs!1375941 (not (= lambda!319489 lambda!319488))))

(declare-fun bs!1375942 () Bool)

(assert (= bs!1375942 (and b!5839971 b!5839374)))

(assert (=> bs!1375942 (not (= lambda!319489 lambda!319445))))

(declare-fun bs!1375943 () Bool)

(assert (= bs!1375943 (and b!5839971 b!5839287)))

(assert (=> bs!1375943 (= (and (= (regOne!32326 (regOne!32327 (regOne!32327 r!7292))) (regOne!32326 (regTwo!32327 r!7292))) (= (regTwo!32326 (regOne!32327 (regOne!32327 r!7292))) (regTwo!32326 (regTwo!32327 r!7292)))) (= lambda!319489 lambda!319438))))

(assert (=> b!5839971 true))

(assert (=> b!5839971 true))

(declare-fun b!5839970 () Bool)

(declare-fun res!2460336 () Bool)

(declare-fun e!3582177 () Bool)

(assert (=> b!5839970 (=> res!2460336 e!3582177)))

(declare-fun call!456115 () Bool)

(assert (=> b!5839970 (= res!2460336 call!456115)))

(declare-fun e!3582180 () Bool)

(assert (=> b!5839970 (= e!3582180 e!3582177)))

(declare-fun d!1835045 () Bool)

(declare-fun c!1034750 () Bool)

(assert (=> d!1835045 (= c!1034750 ((_ is EmptyExpr!15907) (regOne!32327 (regOne!32327 r!7292))))))

(declare-fun e!3582178 () Bool)

(assert (=> d!1835045 (= (matchRSpec!3008 (regOne!32327 (regOne!32327 r!7292)) s!2326) e!3582178)))

(declare-fun call!456114 () Bool)

(assert (=> b!5839971 (= e!3582180 call!456114)))

(declare-fun b!5839972 () Bool)

(assert (=> b!5839972 (= e!3582178 call!456115)))

(declare-fun b!5839973 () Bool)

(declare-fun e!3582175 () Bool)

(assert (=> b!5839973 (= e!3582175 e!3582180)))

(declare-fun c!1034747 () Bool)

(assert (=> b!5839973 (= c!1034747 ((_ is Star!15907) (regOne!32327 (regOne!32327 r!7292))))))

(declare-fun b!5839974 () Bool)

(declare-fun e!3582176 () Bool)

(assert (=> b!5839974 (= e!3582175 e!3582176)))

(declare-fun res!2460338 () Bool)

(assert (=> b!5839974 (= res!2460338 (matchRSpec!3008 (regOne!32327 (regOne!32327 (regOne!32327 r!7292))) s!2326))))

(assert (=> b!5839974 (=> res!2460338 e!3582176)))

(declare-fun b!5839975 () Bool)

(assert (=> b!5839975 (= e!3582176 (matchRSpec!3008 (regTwo!32327 (regOne!32327 (regOne!32327 r!7292))) s!2326))))

(declare-fun bm!456109 () Bool)

(assert (=> bm!456109 (= call!456115 (isEmpty!35755 s!2326))))

(assert (=> b!5839976 (= e!3582177 call!456114)))

(declare-fun b!5839977 () Bool)

(declare-fun e!3582174 () Bool)

(assert (=> b!5839977 (= e!3582178 e!3582174)))

(declare-fun res!2460337 () Bool)

(assert (=> b!5839977 (= res!2460337 (not ((_ is EmptyLang!15907) (regOne!32327 (regOne!32327 r!7292)))))))

(assert (=> b!5839977 (=> (not res!2460337) (not e!3582174))))

(declare-fun bm!456110 () Bool)

(assert (=> bm!456110 (= call!456114 (Exists!2978 (ite c!1034747 lambda!319488 lambda!319489)))))

(declare-fun b!5839978 () Bool)

(declare-fun c!1034749 () Bool)

(assert (=> b!5839978 (= c!1034749 ((_ is ElementMatch!15907) (regOne!32327 (regOne!32327 r!7292))))))

(declare-fun e!3582179 () Bool)

(assert (=> b!5839978 (= e!3582174 e!3582179)))

(declare-fun b!5839979 () Bool)

(declare-fun c!1034748 () Bool)

(assert (=> b!5839979 (= c!1034748 ((_ is Union!15907) (regOne!32327 (regOne!32327 r!7292))))))

(assert (=> b!5839979 (= e!3582179 e!3582175)))

(declare-fun b!5839980 () Bool)

(assert (=> b!5839980 (= e!3582179 (= s!2326 (Cons!63898 (c!1034555 (regOne!32327 (regOne!32327 r!7292))) Nil!63898)))))

(assert (= (and d!1835045 c!1034750) b!5839972))

(assert (= (and d!1835045 (not c!1034750)) b!5839977))

(assert (= (and b!5839977 res!2460337) b!5839978))

(assert (= (and b!5839978 c!1034749) b!5839980))

(assert (= (and b!5839978 (not c!1034749)) b!5839979))

(assert (= (and b!5839979 c!1034748) b!5839974))

(assert (= (and b!5839979 (not c!1034748)) b!5839973))

(assert (= (and b!5839974 (not res!2460338)) b!5839975))

(assert (= (and b!5839973 c!1034747) b!5839970))

(assert (= (and b!5839973 (not c!1034747)) b!5839971))

(assert (= (and b!5839970 (not res!2460336)) b!5839976))

(assert (= (or b!5839976 b!5839971) bm!456110))

(assert (= (or b!5839972 b!5839970) bm!456109))

(declare-fun m!6764724 () Bool)

(assert (=> b!5839974 m!6764724))

(declare-fun m!6764726 () Bool)

(assert (=> b!5839975 m!6764726))

(assert (=> bm!456109 m!6764372))

(declare-fun m!6764728 () Bool)

(assert (=> bm!456110 m!6764728))

(assert (=> b!5839347 d!1835045))

(declare-fun b!5839994 () Bool)

(declare-fun e!3582195 () Bool)

(declare-fun call!456116 () Bool)

(assert (=> b!5839994 (= e!3582195 call!456116)))

(declare-fun bm!456111 () Bool)

(declare-fun call!456118 () Bool)

(declare-fun c!1034752 () Bool)

(assert (=> bm!456111 (= call!456118 (validRegex!7643 (ite c!1034752 (regTwo!32327 lt!2303664) (regTwo!32326 lt!2303664))))))

(declare-fun b!5839997 () Bool)

(declare-fun e!3582194 () Bool)

(assert (=> b!5839997 (= e!3582194 call!456118)))

(declare-fun b!5839998 () Bool)

(declare-fun e!3582196 () Bool)

(assert (=> b!5839998 (= e!3582196 call!456118)))

(declare-fun d!1835055 () Bool)

(declare-fun res!2460351 () Bool)

(declare-fun e!3582192 () Bool)

(assert (=> d!1835055 (=> res!2460351 e!3582192)))

(assert (=> d!1835055 (= res!2460351 ((_ is ElementMatch!15907) lt!2303664))))

(assert (=> d!1835055 (= (validRegex!7643 lt!2303664) e!3582192)))

(declare-fun b!5839999 () Bool)

(declare-fun res!2460347 () Bool)

(assert (=> b!5839999 (=> (not res!2460347) (not e!3582194))))

(declare-fun call!456117 () Bool)

(assert (=> b!5839999 (= res!2460347 call!456117)))

(declare-fun e!3582198 () Bool)

(assert (=> b!5839999 (= e!3582198 e!3582194)))

(declare-fun b!5840000 () Bool)

(declare-fun e!3582197 () Bool)

(assert (=> b!5840000 (= e!3582197 e!3582198)))

(assert (=> b!5840000 (= c!1034752 ((_ is Union!15907) lt!2303664))))

(declare-fun b!5840001 () Bool)

(assert (=> b!5840001 (= e!3582192 e!3582197)))

(declare-fun c!1034751 () Bool)

(assert (=> b!5840001 (= c!1034751 ((_ is Star!15907) lt!2303664))))

(declare-fun b!5840002 () Bool)

(assert (=> b!5840002 (= e!3582197 e!3582195)))

(declare-fun res!2460349 () Bool)

(assert (=> b!5840002 (= res!2460349 (not (nullable!5906 (reg!16236 lt!2303664))))))

(assert (=> b!5840002 (=> (not res!2460349) (not e!3582195))))

(declare-fun bm!456112 () Bool)

(assert (=> bm!456112 (= call!456116 (validRegex!7643 (ite c!1034751 (reg!16236 lt!2303664) (ite c!1034752 (regOne!32327 lt!2303664) (regOne!32326 lt!2303664)))))))

(declare-fun b!5840003 () Bool)

(declare-fun e!3582193 () Bool)

(assert (=> b!5840003 (= e!3582193 e!3582196)))

(declare-fun res!2460350 () Bool)

(assert (=> b!5840003 (=> (not res!2460350) (not e!3582196))))

(assert (=> b!5840003 (= res!2460350 call!456117)))

(declare-fun b!5840004 () Bool)

(declare-fun res!2460348 () Bool)

(assert (=> b!5840004 (=> res!2460348 e!3582193)))

(assert (=> b!5840004 (= res!2460348 (not ((_ is Concat!24752) lt!2303664)))))

(assert (=> b!5840004 (= e!3582198 e!3582193)))

(declare-fun bm!456113 () Bool)

(assert (=> bm!456113 (= call!456117 call!456116)))

(assert (= (and d!1835055 (not res!2460351)) b!5840001))

(assert (= (and b!5840001 c!1034751) b!5840002))

(assert (= (and b!5840001 (not c!1034751)) b!5840000))

(assert (= (and b!5840002 res!2460349) b!5839994))

(assert (= (and b!5840000 c!1034752) b!5839999))

(assert (= (and b!5840000 (not c!1034752)) b!5840004))

(assert (= (and b!5839999 res!2460347) b!5839997))

(assert (= (and b!5840004 (not res!2460348)) b!5840003))

(assert (= (and b!5840003 res!2460350) b!5839998))

(assert (= (or b!5839997 b!5839998) bm!456111))

(assert (= (or b!5839999 b!5840003) bm!456113))

(assert (= (or b!5839994 bm!456113) bm!456112))

(declare-fun m!6764730 () Bool)

(assert (=> bm!456111 m!6764730))

(declare-fun m!6764732 () Bool)

(assert (=> b!5840002 m!6764732))

(declare-fun m!6764734 () Bool)

(assert (=> bm!456112 m!6764734))

(assert (=> d!1834933 d!1835055))

(declare-fun d!1835057 () Bool)

(declare-fun res!2460352 () Bool)

(declare-fun e!3582201 () Bool)

(assert (=> d!1835057 (=> res!2460352 e!3582201)))

(assert (=> d!1835057 (= res!2460352 ((_ is Nil!63896) (exprs!5791 (h!70345 zl!343))))))

(assert (=> d!1835057 (= (forall!14994 (exprs!5791 (h!70345 zl!343)) lambda!319462) e!3582201)))

(declare-fun b!5840005 () Bool)

(declare-fun e!3582202 () Bool)

(assert (=> b!5840005 (= e!3582201 e!3582202)))

(declare-fun res!2460353 () Bool)

(assert (=> b!5840005 (=> (not res!2460353) (not e!3582202))))

(assert (=> b!5840005 (= res!2460353 (dynLambda!24978 lambda!319462 (h!70344 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5840006 () Bool)

(assert (=> b!5840006 (= e!3582202 (forall!14994 (t!377375 (exprs!5791 (h!70345 zl!343))) lambda!319462))))

(assert (= (and d!1835057 (not res!2460352)) b!5840005))

(assert (= (and b!5840005 res!2460353) b!5840006))

(declare-fun b_lambda!219919 () Bool)

(assert (=> (not b_lambda!219919) (not b!5840005)))

(declare-fun m!6764736 () Bool)

(assert (=> b!5840005 m!6764736))

(declare-fun m!6764738 () Bool)

(assert (=> b!5840006 m!6764738))

(assert (=> d!1834933 d!1835057))

(declare-fun d!1835059 () Bool)

(assert (=> d!1835059 (= (nullable!5906 (regTwo!32327 r!7292)) (nullableFct!1894 (regTwo!32327 r!7292)))))

(declare-fun bs!1375944 () Bool)

(assert (= bs!1375944 d!1835059))

(declare-fun m!6764740 () Bool)

(assert (=> bs!1375944 m!6764740))

(assert (=> b!5839341 d!1835059))

(declare-fun b!5840009 () Bool)

(declare-fun e!3582207 () Bool)

(declare-fun call!456119 () Bool)

(assert (=> b!5840009 (= e!3582207 call!456119)))

(declare-fun bm!456114 () Bool)

(declare-fun call!456121 () Bool)

(declare-fun c!1034757 () Bool)

(assert (=> bm!456114 (= call!456121 (validRegex!7643 (ite c!1034757 (regTwo!32327 lt!2303642) (regTwo!32326 lt!2303642))))))

(declare-fun b!5840010 () Bool)

(declare-fun e!3582206 () Bool)

(assert (=> b!5840010 (= e!3582206 call!456121)))

(declare-fun b!5840011 () Bool)

(declare-fun e!3582208 () Bool)

(assert (=> b!5840011 (= e!3582208 call!456121)))

(declare-fun d!1835061 () Bool)

(declare-fun res!2460358 () Bool)

(declare-fun e!3582204 () Bool)

(assert (=> d!1835061 (=> res!2460358 e!3582204)))

(assert (=> d!1835061 (= res!2460358 ((_ is ElementMatch!15907) lt!2303642))))

(assert (=> d!1835061 (= (validRegex!7643 lt!2303642) e!3582204)))

(declare-fun b!5840012 () Bool)

(declare-fun res!2460354 () Bool)

(assert (=> b!5840012 (=> (not res!2460354) (not e!3582206))))

(declare-fun call!456120 () Bool)

(assert (=> b!5840012 (= res!2460354 call!456120)))

(declare-fun e!3582210 () Bool)

(assert (=> b!5840012 (= e!3582210 e!3582206)))

(declare-fun b!5840013 () Bool)

(declare-fun e!3582209 () Bool)

(assert (=> b!5840013 (= e!3582209 e!3582210)))

(assert (=> b!5840013 (= c!1034757 ((_ is Union!15907) lt!2303642))))

(declare-fun b!5840014 () Bool)

(assert (=> b!5840014 (= e!3582204 e!3582209)))

(declare-fun c!1034756 () Bool)

(assert (=> b!5840014 (= c!1034756 ((_ is Star!15907) lt!2303642))))

(declare-fun b!5840015 () Bool)

(assert (=> b!5840015 (= e!3582209 e!3582207)))

(declare-fun res!2460356 () Bool)

(assert (=> b!5840015 (= res!2460356 (not (nullable!5906 (reg!16236 lt!2303642))))))

(assert (=> b!5840015 (=> (not res!2460356) (not e!3582207))))

(declare-fun bm!456115 () Bool)

(assert (=> bm!456115 (= call!456119 (validRegex!7643 (ite c!1034756 (reg!16236 lt!2303642) (ite c!1034757 (regOne!32327 lt!2303642) (regOne!32326 lt!2303642)))))))

(declare-fun b!5840016 () Bool)

(declare-fun e!3582205 () Bool)

(assert (=> b!5840016 (= e!3582205 e!3582208)))

(declare-fun res!2460357 () Bool)

(assert (=> b!5840016 (=> (not res!2460357) (not e!3582208))))

(assert (=> b!5840016 (= res!2460357 call!456120)))

(declare-fun b!5840017 () Bool)

(declare-fun res!2460355 () Bool)

(assert (=> b!5840017 (=> res!2460355 e!3582205)))

(assert (=> b!5840017 (= res!2460355 (not ((_ is Concat!24752) lt!2303642)))))

(assert (=> b!5840017 (= e!3582210 e!3582205)))

(declare-fun bm!456116 () Bool)

(assert (=> bm!456116 (= call!456120 call!456119)))

(assert (= (and d!1835061 (not res!2460358)) b!5840014))

(assert (= (and b!5840014 c!1034756) b!5840015))

(assert (= (and b!5840014 (not c!1034756)) b!5840013))

(assert (= (and b!5840015 res!2460356) b!5840009))

(assert (= (and b!5840013 c!1034757) b!5840012))

(assert (= (and b!5840013 (not c!1034757)) b!5840017))

(assert (= (and b!5840012 res!2460354) b!5840010))

(assert (= (and b!5840017 (not res!2460355)) b!5840016))

(assert (= (and b!5840016 res!2460357) b!5840011))

(assert (= (or b!5840010 b!5840011) bm!456114))

(assert (= (or b!5840012 b!5840016) bm!456116))

(assert (= (or b!5840009 bm!456116) bm!456115))

(declare-fun m!6764746 () Bool)

(assert (=> bm!456114 m!6764746))

(declare-fun m!6764748 () Bool)

(assert (=> b!5840015 m!6764748))

(declare-fun m!6764750 () Bool)

(assert (=> bm!456115 m!6764750))

(assert (=> d!1834897 d!1835061))

(assert (=> d!1834897 d!1834927))

(assert (=> d!1834897 d!1834931))

(assert (=> bm!456045 d!1835011))

(declare-fun d!1835065 () Bool)

(assert (=> d!1835065 (= (isEmptyExpr!1342 lt!2303664) ((_ is EmptyExpr!15907) lt!2303664))))

(assert (=> b!5839487 d!1835065))

(declare-fun d!1835069 () Bool)

(assert (=> d!1835069 (= (isEmptyLang!1350 lt!2303658) ((_ is EmptyLang!15907) lt!2303658))))

(assert (=> b!5839419 d!1835069))

(declare-fun d!1835071 () Bool)

(assert (=> d!1835071 (= (isEmpty!35758 (tail!11454 (exprs!5791 (h!70345 zl!343)))) ((_ is Nil!63896) (tail!11454 (exprs!5791 (h!70345 zl!343)))))))

(assert (=> b!5839485 d!1835071))

(declare-fun d!1835073 () Bool)

(assert (=> d!1835073 (= (tail!11454 (exprs!5791 (h!70345 zl!343))) (t!377375 (exprs!5791 (h!70345 zl!343))))))

(assert (=> b!5839485 d!1835073))

(declare-fun d!1835077 () Bool)

(assert (=> d!1835077 (= (isEmpty!35755 (tail!11451 s!2326)) ((_ is Nil!63898) (tail!11451 s!2326)))))

(assert (=> b!5839335 d!1835077))

(assert (=> b!5839335 d!1835005))

(declare-fun d!1835079 () Bool)

(assert (=> d!1835079 (= (head!12369 (exprs!5791 (h!70345 zl!343))) (h!70344 (exprs!5791 (h!70345 zl!343))))))

(assert (=> b!5839489 d!1835079))

(assert (=> b!5839338 d!1835077))

(assert (=> b!5839338 d!1835005))

(assert (=> bm!456039 d!1835011))

(declare-fun d!1835081 () Bool)

(declare-fun choose!44339 (Int) Bool)

(assert (=> d!1835081 (= (Exists!2978 (ite c!1034570 lambda!319437 lambda!319438)) (choose!44339 (ite c!1034570 lambda!319437 lambda!319438)))))

(declare-fun bs!1375945 () Bool)

(assert (= bs!1375945 d!1835081))

(declare-fun m!6764770 () Bool)

(assert (=> bs!1375945 m!6764770))

(assert (=> bm!456036 d!1835081))

(assert (=> b!5839388 d!1835077))

(assert (=> b!5839388 d!1835005))

(declare-fun d!1835085 () Bool)

(assert (=> d!1835085 (= (isUnion!780 lt!2303658) ((_ is Union!15907) lt!2303658))))

(assert (=> b!5839415 d!1835085))

(declare-fun b!5840059 () Bool)

(declare-fun e!3582240 () Bool)

(declare-fun lt!2303699 () Bool)

(declare-fun call!456131 () Bool)

(assert (=> b!5840059 (= e!3582240 (= lt!2303699 call!456131))))

(declare-fun b!5840060 () Bool)

(declare-fun res!2460376 () Bool)

(declare-fun e!3582242 () Bool)

(assert (=> b!5840060 (=> res!2460376 e!3582242)))

(assert (=> b!5840060 (= res!2460376 (not ((_ is ElementMatch!15907) (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326)))))))

(declare-fun e!3582235 () Bool)

(assert (=> b!5840060 (= e!3582235 e!3582242)))

(declare-fun b!5840062 () Bool)

(declare-fun e!3582236 () Bool)

(assert (=> b!5840062 (= e!3582236 (matchR!8090 (derivativeStep!4644 (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326)) (head!12366 (tail!11451 s!2326))) (tail!11451 (tail!11451 s!2326))))))

(declare-fun b!5840064 () Bool)

(declare-fun e!3582245 () Bool)

(declare-fun e!3582244 () Bool)

(assert (=> b!5840064 (= e!3582245 e!3582244)))

(declare-fun res!2460382 () Bool)

(assert (=> b!5840064 (=> res!2460382 e!3582244)))

(assert (=> b!5840064 (= res!2460382 call!456131)))

(declare-fun d!1835089 () Bool)

(assert (=> d!1835089 e!3582240))

(declare-fun c!1034771 () Bool)

(assert (=> d!1835089 (= c!1034771 ((_ is EmptyExpr!15907) (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326))))))

(assert (=> d!1835089 (= lt!2303699 e!3582236)))

(declare-fun c!1034772 () Bool)

(assert (=> d!1835089 (= c!1034772 (isEmpty!35755 (tail!11451 s!2326)))))

(assert (=> d!1835089 (validRegex!7643 (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326)))))

(assert (=> d!1835089 (= (matchR!8090 (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326)) (tail!11451 s!2326)) lt!2303699)))

(declare-fun b!5840065 () Bool)

(declare-fun res!2460386 () Bool)

(declare-fun e!3582238 () Bool)

(assert (=> b!5840065 (=> (not res!2460386) (not e!3582238))))

(assert (=> b!5840065 (= res!2460386 (not call!456131))))

(declare-fun b!5840067 () Bool)

(assert (=> b!5840067 (= e!3582238 (= (head!12366 (tail!11451 s!2326)) (c!1034555 (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326)))))))

(declare-fun b!5840068 () Bool)

(declare-fun res!2460375 () Bool)

(assert (=> b!5840068 (=> res!2460375 e!3582244)))

(assert (=> b!5840068 (= res!2460375 (not (isEmpty!35755 (tail!11451 (tail!11451 s!2326)))))))

(declare-fun b!5840069 () Bool)

(assert (=> b!5840069 (= e!3582244 (not (= (head!12366 (tail!11451 s!2326)) (c!1034555 (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326))))))))

(declare-fun bm!456128 () Bool)

(assert (=> bm!456128 (= call!456131 (isEmpty!35755 (tail!11451 s!2326)))))

(declare-fun b!5840070 () Bool)

(assert (=> b!5840070 (= e!3582235 (not lt!2303699))))

(declare-fun b!5840071 () Bool)

(declare-fun res!2460380 () Bool)

(assert (=> b!5840071 (=> (not res!2460380) (not e!3582238))))

(assert (=> b!5840071 (= res!2460380 (isEmpty!35755 (tail!11451 (tail!11451 s!2326))))))

(declare-fun b!5840072 () Bool)

(declare-fun res!2460381 () Bool)

(assert (=> b!5840072 (=> res!2460381 e!3582242)))

(assert (=> b!5840072 (= res!2460381 e!3582238)))

(declare-fun res!2460384 () Bool)

(assert (=> b!5840072 (=> (not res!2460384) (not e!3582238))))

(assert (=> b!5840072 (= res!2460384 lt!2303699)))

(declare-fun b!5840073 () Bool)

(assert (=> b!5840073 (= e!3582242 e!3582245)))

(declare-fun res!2460385 () Bool)

(assert (=> b!5840073 (=> (not res!2460385) (not e!3582245))))

(assert (=> b!5840073 (= res!2460385 (not lt!2303699))))

(declare-fun b!5840074 () Bool)

(assert (=> b!5840074 (= e!3582236 (nullable!5906 (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326))))))

(declare-fun b!5840075 () Bool)

(assert (=> b!5840075 (= e!3582240 e!3582235)))

(declare-fun c!1034769 () Bool)

(assert (=> b!5840075 (= c!1034769 ((_ is EmptyLang!15907) (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326))))))

(assert (= (and d!1835089 c!1034772) b!5840074))

(assert (= (and d!1835089 (not c!1034772)) b!5840062))

(assert (= (and d!1835089 c!1034771) b!5840059))

(assert (= (and d!1835089 (not c!1034771)) b!5840075))

(assert (= (and b!5840075 c!1034769) b!5840070))

(assert (= (and b!5840075 (not c!1034769)) b!5840060))

(assert (= (and b!5840060 (not res!2460376)) b!5840072))

(assert (= (and b!5840072 res!2460384) b!5840065))

(assert (= (and b!5840065 res!2460386) b!5840071))

(assert (= (and b!5840071 res!2460380) b!5840067))

(assert (= (and b!5840072 (not res!2460381)) b!5840073))

(assert (= (and b!5840073 res!2460385) b!5840064))

(assert (= (and b!5840064 (not res!2460382)) b!5840068))

(assert (= (and b!5840068 (not res!2460375)) b!5840069))

(assert (= (or b!5840059 b!5840064 b!5840065) bm!456128))

(assert (=> b!5840062 m!6764384))

(assert (=> b!5840062 m!6764600))

(assert (=> b!5840062 m!6764382))

(assert (=> b!5840062 m!6764600))

(declare-fun m!6764786 () Bool)

(assert (=> b!5840062 m!6764786))

(assert (=> b!5840062 m!6764384))

(assert (=> b!5840062 m!6764604))

(assert (=> b!5840062 m!6764786))

(assert (=> b!5840062 m!6764604))

(declare-fun m!6764788 () Bool)

(assert (=> b!5840062 m!6764788))

(assert (=> d!1835089 m!6764384))

(assert (=> d!1835089 m!6764392))

(assert (=> d!1835089 m!6764382))

(declare-fun m!6764790 () Bool)

(assert (=> d!1835089 m!6764790))

(assert (=> b!5840074 m!6764382))

(declare-fun m!6764792 () Bool)

(assert (=> b!5840074 m!6764792))

(assert (=> b!5840067 m!6764384))

(assert (=> b!5840067 m!6764600))

(assert (=> b!5840071 m!6764384))

(assert (=> b!5840071 m!6764604))

(assert (=> b!5840071 m!6764604))

(assert (=> b!5840071 m!6764612))

(assert (=> b!5840068 m!6764384))

(assert (=> b!5840068 m!6764604))

(assert (=> b!5840068 m!6764604))

(assert (=> b!5840068 m!6764612))

(assert (=> bm!456128 m!6764384))

(assert (=> bm!456128 m!6764392))

(assert (=> b!5840069 m!6764384))

(assert (=> b!5840069 m!6764600))

(assert (=> b!5839331 d!1835089))

(declare-fun b!5840086 () Bool)

(declare-fun e!3582255 () Regex!15907)

(declare-fun e!3582252 () Regex!15907)

(assert (=> b!5840086 (= e!3582255 e!3582252)))

(declare-fun c!1034778 () Bool)

(assert (=> b!5840086 (= c!1034778 ((_ is Star!15907) (regTwo!32327 r!7292)))))

(declare-fun call!456136 () Regex!15907)

(declare-fun b!5840087 () Bool)

(declare-fun e!3582256 () Regex!15907)

(declare-fun call!456137 () Regex!15907)

(assert (=> b!5840087 (= e!3582256 (Union!15907 (Concat!24752 call!456136 (regTwo!32326 (regTwo!32327 r!7292))) call!456137))))

(declare-fun call!456135 () Regex!15907)

(declare-fun c!1034777 () Bool)

(declare-fun bm!456129 () Bool)

(assert (=> bm!456129 (= call!456135 (derivativeStep!4644 (ite c!1034777 (regTwo!32327 (regTwo!32327 r!7292)) (ite c!1034778 (reg!16236 (regTwo!32327 r!7292)) (regOne!32326 (regTwo!32327 r!7292)))) (head!12366 s!2326)))))

(declare-fun b!5840088 () Bool)

(declare-fun c!1034780 () Bool)

(assert (=> b!5840088 (= c!1034780 (nullable!5906 (regOne!32326 (regTwo!32327 r!7292))))))

(assert (=> b!5840088 (= e!3582252 e!3582256)))

(declare-fun b!5840089 () Bool)

(assert (=> b!5840089 (= e!3582256 (Union!15907 (Concat!24752 call!456137 (regTwo!32326 (regTwo!32327 r!7292))) EmptyLang!15907))))

(declare-fun d!1835095 () Bool)

(declare-fun lt!2303701 () Regex!15907)

(assert (=> d!1835095 (validRegex!7643 lt!2303701)))

(declare-fun e!3582253 () Regex!15907)

(assert (=> d!1835095 (= lt!2303701 e!3582253)))

(declare-fun c!1034779 () Bool)

(assert (=> d!1835095 (= c!1034779 (or ((_ is EmptyExpr!15907) (regTwo!32327 r!7292)) ((_ is EmptyLang!15907) (regTwo!32327 r!7292))))))

(assert (=> d!1835095 (validRegex!7643 (regTwo!32327 r!7292))))

(assert (=> d!1835095 (= (derivativeStep!4644 (regTwo!32327 r!7292) (head!12366 s!2326)) lt!2303701)))

(declare-fun bm!456130 () Bool)

(assert (=> bm!456130 (= call!456136 call!456135)))

(declare-fun b!5840090 () Bool)

(declare-fun e!3582254 () Regex!15907)

(assert (=> b!5840090 (= e!3582254 (ite (= (head!12366 s!2326) (c!1034555 (regTwo!32327 r!7292))) EmptyExpr!15907 EmptyLang!15907))))

(declare-fun b!5840091 () Bool)

(declare-fun call!456134 () Regex!15907)

(assert (=> b!5840091 (= e!3582255 (Union!15907 call!456134 call!456135))))

(declare-fun b!5840092 () Bool)

(assert (=> b!5840092 (= e!3582252 (Concat!24752 call!456136 (regTwo!32327 r!7292)))))

(declare-fun bm!456131 () Bool)

(assert (=> bm!456131 (= call!456134 (derivativeStep!4644 (ite c!1034777 (regOne!32327 (regTwo!32327 r!7292)) (ite c!1034780 (regTwo!32326 (regTwo!32327 r!7292)) (regOne!32326 (regTwo!32327 r!7292)))) (head!12366 s!2326)))))

(declare-fun bm!456132 () Bool)

(assert (=> bm!456132 (= call!456137 call!456134)))

(declare-fun b!5840093 () Bool)

(assert (=> b!5840093 (= e!3582253 EmptyLang!15907)))

(declare-fun b!5840094 () Bool)

(assert (=> b!5840094 (= c!1034777 ((_ is Union!15907) (regTwo!32327 r!7292)))))

(assert (=> b!5840094 (= e!3582254 e!3582255)))

(declare-fun b!5840095 () Bool)

(assert (=> b!5840095 (= e!3582253 e!3582254)))

(declare-fun c!1034781 () Bool)

(assert (=> b!5840095 (= c!1034781 ((_ is ElementMatch!15907) (regTwo!32327 r!7292)))))

(assert (= (and d!1835095 c!1034779) b!5840093))

(assert (= (and d!1835095 (not c!1034779)) b!5840095))

(assert (= (and b!5840095 c!1034781) b!5840090))

(assert (= (and b!5840095 (not c!1034781)) b!5840094))

(assert (= (and b!5840094 c!1034777) b!5840091))

(assert (= (and b!5840094 (not c!1034777)) b!5840086))

(assert (= (and b!5840086 c!1034778) b!5840092))

(assert (= (and b!5840086 (not c!1034778)) b!5840088))

(assert (= (and b!5840088 c!1034780) b!5840087))

(assert (= (and b!5840088 (not c!1034780)) b!5840089))

(assert (= (or b!5840087 b!5840089) bm!456132))

(assert (= (or b!5840092 b!5840087) bm!456130))

(assert (= (or b!5840091 bm!456130) bm!456129))

(assert (= (or b!5840091 bm!456132) bm!456131))

(assert (=> bm!456129 m!6764380))

(declare-fun m!6764796 () Bool)

(assert (=> bm!456129 m!6764796))

(declare-fun m!6764800 () Bool)

(assert (=> b!5840088 m!6764800))

(declare-fun m!6764802 () Bool)

(assert (=> d!1835095 m!6764802))

(assert (=> d!1835095 m!6764388))

(assert (=> bm!456131 m!6764380))

(declare-fun m!6764812 () Bool)

(assert (=> bm!456131 m!6764812))

(assert (=> b!5839331 d!1835095))

(assert (=> b!5839331 d!1835001))

(assert (=> b!5839331 d!1835005))

(assert (=> b!5839360 d!1835077))

(assert (=> b!5839360 d!1835005))

(declare-fun b!5840096 () Bool)

(declare-fun e!3582260 () Bool)

(declare-fun lt!2303702 () Bool)

(declare-fun call!456138 () Bool)

(assert (=> b!5840096 (= e!3582260 (= lt!2303702 call!456138))))

(declare-fun b!5840097 () Bool)

(declare-fun res!2460390 () Bool)

(declare-fun e!3582261 () Bool)

(assert (=> b!5840097 (=> res!2460390 e!3582261)))

(assert (=> b!5840097 (= res!2460390 (not ((_ is ElementMatch!15907) (derivativeStep!4644 r!7292 (head!12366 s!2326)))))))

(declare-fun e!3582257 () Bool)

(assert (=> b!5840097 (= e!3582257 e!3582261)))

(declare-fun b!5840098 () Bool)

(declare-fun e!3582258 () Bool)

(assert (=> b!5840098 (= e!3582258 (matchR!8090 (derivativeStep!4644 (derivativeStep!4644 r!7292 (head!12366 s!2326)) (head!12366 (tail!11451 s!2326))) (tail!11451 (tail!11451 s!2326))))))

(declare-fun b!5840099 () Bool)

(declare-fun e!3582263 () Bool)

(declare-fun e!3582262 () Bool)

(assert (=> b!5840099 (= e!3582263 e!3582262)))

(declare-fun res!2460393 () Bool)

(assert (=> b!5840099 (=> res!2460393 e!3582262)))

(assert (=> b!5840099 (= res!2460393 call!456138)))

(declare-fun d!1835097 () Bool)

(assert (=> d!1835097 e!3582260))

(declare-fun c!1034783 () Bool)

(assert (=> d!1835097 (= c!1034783 ((_ is EmptyExpr!15907) (derivativeStep!4644 r!7292 (head!12366 s!2326))))))

(assert (=> d!1835097 (= lt!2303702 e!3582258)))

(declare-fun c!1034784 () Bool)

(assert (=> d!1835097 (= c!1034784 (isEmpty!35755 (tail!11451 s!2326)))))

(assert (=> d!1835097 (validRegex!7643 (derivativeStep!4644 r!7292 (head!12366 s!2326)))))

(assert (=> d!1835097 (= (matchR!8090 (derivativeStep!4644 r!7292 (head!12366 s!2326)) (tail!11451 s!2326)) lt!2303702)))

(declare-fun b!5840100 () Bool)

(declare-fun res!2460396 () Bool)

(declare-fun e!3582259 () Bool)

(assert (=> b!5840100 (=> (not res!2460396) (not e!3582259))))

(assert (=> b!5840100 (= res!2460396 (not call!456138))))

(declare-fun b!5840101 () Bool)

(assert (=> b!5840101 (= e!3582259 (= (head!12366 (tail!11451 s!2326)) (c!1034555 (derivativeStep!4644 r!7292 (head!12366 s!2326)))))))

(declare-fun b!5840102 () Bool)

(declare-fun res!2460389 () Bool)

(assert (=> b!5840102 (=> res!2460389 e!3582262)))

(assert (=> b!5840102 (= res!2460389 (not (isEmpty!35755 (tail!11451 (tail!11451 s!2326)))))))

(declare-fun b!5840103 () Bool)

(assert (=> b!5840103 (= e!3582262 (not (= (head!12366 (tail!11451 s!2326)) (c!1034555 (derivativeStep!4644 r!7292 (head!12366 s!2326))))))))

(declare-fun bm!456133 () Bool)

(assert (=> bm!456133 (= call!456138 (isEmpty!35755 (tail!11451 s!2326)))))

(declare-fun b!5840104 () Bool)

(assert (=> b!5840104 (= e!3582257 (not lt!2303702))))

(declare-fun b!5840105 () Bool)

(declare-fun res!2460391 () Bool)

(assert (=> b!5840105 (=> (not res!2460391) (not e!3582259))))

(assert (=> b!5840105 (= res!2460391 (isEmpty!35755 (tail!11451 (tail!11451 s!2326))))))

(declare-fun b!5840106 () Bool)

(declare-fun res!2460392 () Bool)

(assert (=> b!5840106 (=> res!2460392 e!3582261)))

(assert (=> b!5840106 (= res!2460392 e!3582259)))

(declare-fun res!2460394 () Bool)

(assert (=> b!5840106 (=> (not res!2460394) (not e!3582259))))

(assert (=> b!5840106 (= res!2460394 lt!2303702)))

(declare-fun b!5840107 () Bool)

(assert (=> b!5840107 (= e!3582261 e!3582263)))

(declare-fun res!2460395 () Bool)

(assert (=> b!5840107 (=> (not res!2460395) (not e!3582263))))

(assert (=> b!5840107 (= res!2460395 (not lt!2303702))))

(declare-fun b!5840108 () Bool)

(assert (=> b!5840108 (= e!3582258 (nullable!5906 (derivativeStep!4644 r!7292 (head!12366 s!2326))))))

(declare-fun b!5840109 () Bool)

(assert (=> b!5840109 (= e!3582260 e!3582257)))

(declare-fun c!1034782 () Bool)

(assert (=> b!5840109 (= c!1034782 ((_ is EmptyLang!15907) (derivativeStep!4644 r!7292 (head!12366 s!2326))))))

(assert (= (and d!1835097 c!1034784) b!5840108))

(assert (= (and d!1835097 (not c!1034784)) b!5840098))

(assert (= (and d!1835097 c!1034783) b!5840096))

(assert (= (and d!1835097 (not c!1034783)) b!5840109))

(assert (= (and b!5840109 c!1034782) b!5840104))

(assert (= (and b!5840109 (not c!1034782)) b!5840097))

(assert (= (and b!5840097 (not res!2460390)) b!5840106))

(assert (= (and b!5840106 res!2460394) b!5840100))

(assert (= (and b!5840100 res!2460396) b!5840105))

(assert (= (and b!5840105 res!2460391) b!5840101))

(assert (= (and b!5840106 (not res!2460392)) b!5840107))

(assert (= (and b!5840107 res!2460395) b!5840099))

(assert (= (and b!5840099 (not res!2460393)) b!5840102))

(assert (= (and b!5840102 (not res!2460389)) b!5840103))

(assert (= (or b!5840096 b!5840099 b!5840100) bm!456133))

(assert (=> b!5840098 m!6764384))

(assert (=> b!5840098 m!6764600))

(assert (=> b!5840098 m!6764414))

(assert (=> b!5840098 m!6764600))

(declare-fun m!6764820 () Bool)

(assert (=> b!5840098 m!6764820))

(assert (=> b!5840098 m!6764384))

(assert (=> b!5840098 m!6764604))

(assert (=> b!5840098 m!6764820))

(assert (=> b!5840098 m!6764604))

(declare-fun m!6764822 () Bool)

(assert (=> b!5840098 m!6764822))

(assert (=> d!1835097 m!6764384))

(assert (=> d!1835097 m!6764392))

(assert (=> d!1835097 m!6764414))

(declare-fun m!6764824 () Bool)

(assert (=> d!1835097 m!6764824))

(assert (=> b!5840108 m!6764414))

(declare-fun m!6764826 () Bool)

(assert (=> b!5840108 m!6764826))

(assert (=> b!5840101 m!6764384))

(assert (=> b!5840101 m!6764600))

(assert (=> b!5840105 m!6764384))

(assert (=> b!5840105 m!6764604))

(assert (=> b!5840105 m!6764604))

(assert (=> b!5840105 m!6764612))

(assert (=> b!5840102 m!6764384))

(assert (=> b!5840102 m!6764604))

(assert (=> b!5840102 m!6764604))

(assert (=> b!5840102 m!6764612))

(assert (=> bm!456133 m!6764384))

(assert (=> bm!456133 m!6764392))

(assert (=> b!5840103 m!6764384))

(assert (=> b!5840103 m!6764600))

(assert (=> b!5839381 d!1835097))

(declare-fun b!5840121 () Bool)

(declare-fun e!3582274 () Regex!15907)

(declare-fun e!3582271 () Regex!15907)

(assert (=> b!5840121 (= e!3582274 e!3582271)))

(declare-fun c!1034790 () Bool)

(assert (=> b!5840121 (= c!1034790 ((_ is Star!15907) r!7292))))

(declare-fun b!5840122 () Bool)

(declare-fun call!456144 () Regex!15907)

(declare-fun e!3582275 () Regex!15907)

(declare-fun call!456143 () Regex!15907)

(assert (=> b!5840122 (= e!3582275 (Union!15907 (Concat!24752 call!456143 (regTwo!32326 r!7292)) call!456144))))

(declare-fun c!1034789 () Bool)

(declare-fun bm!456136 () Bool)

(declare-fun call!456142 () Regex!15907)

(assert (=> bm!456136 (= call!456142 (derivativeStep!4644 (ite c!1034789 (regTwo!32327 r!7292) (ite c!1034790 (reg!16236 r!7292) (regOne!32326 r!7292))) (head!12366 s!2326)))))

(declare-fun b!5840123 () Bool)

(declare-fun c!1034792 () Bool)

(assert (=> b!5840123 (= c!1034792 (nullable!5906 (regOne!32326 r!7292)))))

(assert (=> b!5840123 (= e!3582271 e!3582275)))

(declare-fun b!5840124 () Bool)

(assert (=> b!5840124 (= e!3582275 (Union!15907 (Concat!24752 call!456144 (regTwo!32326 r!7292)) EmptyLang!15907))))

(declare-fun d!1835101 () Bool)

(declare-fun lt!2303703 () Regex!15907)

(assert (=> d!1835101 (validRegex!7643 lt!2303703)))

(declare-fun e!3582272 () Regex!15907)

(assert (=> d!1835101 (= lt!2303703 e!3582272)))

(declare-fun c!1034791 () Bool)

(assert (=> d!1835101 (= c!1034791 (or ((_ is EmptyExpr!15907) r!7292) ((_ is EmptyLang!15907) r!7292)))))

(assert (=> d!1835101 (validRegex!7643 r!7292)))

(assert (=> d!1835101 (= (derivativeStep!4644 r!7292 (head!12366 s!2326)) lt!2303703)))

(declare-fun bm!456137 () Bool)

(assert (=> bm!456137 (= call!456143 call!456142)))

(declare-fun b!5840125 () Bool)

(declare-fun e!3582273 () Regex!15907)

(assert (=> b!5840125 (= e!3582273 (ite (= (head!12366 s!2326) (c!1034555 r!7292)) EmptyExpr!15907 EmptyLang!15907))))

(declare-fun b!5840126 () Bool)

(declare-fun call!456141 () Regex!15907)

(assert (=> b!5840126 (= e!3582274 (Union!15907 call!456141 call!456142))))

(declare-fun b!5840127 () Bool)

(assert (=> b!5840127 (= e!3582271 (Concat!24752 call!456143 r!7292))))

(declare-fun bm!456138 () Bool)

(assert (=> bm!456138 (= call!456141 (derivativeStep!4644 (ite c!1034789 (regOne!32327 r!7292) (ite c!1034792 (regTwo!32326 r!7292) (regOne!32326 r!7292))) (head!12366 s!2326)))))

(declare-fun bm!456139 () Bool)

(assert (=> bm!456139 (= call!456144 call!456141)))

(declare-fun b!5840128 () Bool)

(assert (=> b!5840128 (= e!3582272 EmptyLang!15907)))

(declare-fun b!5840129 () Bool)

(assert (=> b!5840129 (= c!1034789 ((_ is Union!15907) r!7292))))

(assert (=> b!5840129 (= e!3582273 e!3582274)))

(declare-fun b!5840130 () Bool)

(assert (=> b!5840130 (= e!3582272 e!3582273)))

(declare-fun c!1034793 () Bool)

(assert (=> b!5840130 (= c!1034793 ((_ is ElementMatch!15907) r!7292))))

(assert (= (and d!1835101 c!1034791) b!5840128))

(assert (= (and d!1835101 (not c!1034791)) b!5840130))

(assert (= (and b!5840130 c!1034793) b!5840125))

(assert (= (and b!5840130 (not c!1034793)) b!5840129))

(assert (= (and b!5840129 c!1034789) b!5840126))

(assert (= (and b!5840129 (not c!1034789)) b!5840121))

(assert (= (and b!5840121 c!1034790) b!5840127))

(assert (= (and b!5840121 (not c!1034790)) b!5840123))

(assert (= (and b!5840123 c!1034792) b!5840122))

(assert (= (and b!5840123 (not c!1034792)) b!5840124))

(assert (= (or b!5840122 b!5840124) bm!456139))

(assert (= (or b!5840127 b!5840122) bm!456137))

(assert (= (or b!5840126 bm!456137) bm!456136))

(assert (= (or b!5840126 bm!456139) bm!456138))

(assert (=> bm!456136 m!6764380))

(declare-fun m!6764828 () Bool)

(assert (=> bm!456136 m!6764828))

(declare-fun m!6764830 () Bool)

(assert (=> b!5840123 m!6764830))

(declare-fun m!6764832 () Bool)

(assert (=> d!1835101 m!6764832))

(assert (=> d!1835101 m!6764310))

(assert (=> bm!456138 m!6764380))

(declare-fun m!6764834 () Bool)

(assert (=> bm!456138 m!6764834))

(assert (=> b!5839381 d!1835101))

(assert (=> b!5839381 d!1835001))

(assert (=> b!5839381 d!1835005))

(assert (=> b!5839363 d!1835077))

(assert (=> b!5839363 d!1835005))

(declare-fun bs!1375964 () Bool)

(declare-fun b!5840137 () Bool)

(assert (= bs!1375964 (and b!5840137 b!5839344)))

(declare-fun lambda!319493 () Int)

(assert (=> bs!1375964 (not (= lambda!319493 lambda!319440))))

(declare-fun bs!1375967 () Bool)

(assert (= bs!1375967 (and b!5840137 b!5839349)))

(assert (=> bs!1375967 (= (and (= (reg!16236 (regTwo!32327 (regTwo!32327 r!7292))) (reg!16236 (regOne!32327 r!7292))) (= (regTwo!32327 (regTwo!32327 r!7292)) (regOne!32327 r!7292))) (= lambda!319493 lambda!319439))))

(declare-fun bs!1375969 () Bool)

(assert (= bs!1375969 (and b!5840137 b!5839369)))

(assert (=> bs!1375969 (not (= lambda!319493 lambda!319446))))

(declare-fun bs!1375971 () Bool)

(assert (= bs!1375971 (and b!5840137 b!5839976)))

(assert (=> bs!1375971 (= (and (= (reg!16236 (regTwo!32327 (regTwo!32327 r!7292))) (reg!16236 (regOne!32327 (regOne!32327 r!7292)))) (= (regTwo!32327 (regTwo!32327 r!7292)) (regOne!32327 (regOne!32327 r!7292)))) (= lambda!319493 lambda!319488))))

(declare-fun bs!1375973 () Bool)

(assert (= bs!1375973 (and b!5840137 b!5839374)))

(assert (=> bs!1375973 (= (and (= (reg!16236 (regTwo!32327 (regTwo!32327 r!7292))) (reg!16236 r!7292)) (= (regTwo!32327 (regTwo!32327 r!7292)) r!7292)) (= lambda!319493 lambda!319445))))

(declare-fun bs!1375975 () Bool)

(assert (= bs!1375975 (and b!5840137 b!5839287)))

(assert (=> bs!1375975 (not (= lambda!319493 lambda!319438))))

(declare-fun bs!1375977 () Bool)

(assert (= bs!1375977 (and b!5840137 b!5839971)))

(assert (=> bs!1375977 (not (= lambda!319493 lambda!319489))))

(declare-fun bs!1375979 () Bool)

(assert (= bs!1375979 (and b!5840137 b!5839292)))

(assert (=> bs!1375979 (= (and (= (reg!16236 (regTwo!32327 (regTwo!32327 r!7292))) (reg!16236 (regTwo!32327 r!7292))) (= (regTwo!32327 (regTwo!32327 r!7292)) (regTwo!32327 r!7292))) (= lambda!319493 lambda!319437))))

(assert (=> b!5840137 true))

(assert (=> b!5840137 true))

(declare-fun bs!1375982 () Bool)

(declare-fun b!5840132 () Bool)

(assert (= bs!1375982 (and b!5840132 b!5839344)))

(declare-fun lambda!319494 () Int)

(assert (=> bs!1375982 (= (and (= (regOne!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regOne!32326 (regOne!32327 r!7292))) (= (regTwo!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regOne!32327 r!7292)))) (= lambda!319494 lambda!319440))))

(declare-fun bs!1375983 () Bool)

(assert (= bs!1375983 (and b!5840132 b!5839349)))

(assert (=> bs!1375983 (not (= lambda!319494 lambda!319439))))

(declare-fun bs!1375984 () Bool)

(assert (= bs!1375984 (and b!5840132 b!5839369)))

(assert (=> bs!1375984 (= (and (= (regOne!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regOne!32326 r!7292)) (= (regTwo!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regTwo!32326 r!7292))) (= lambda!319494 lambda!319446))))

(declare-fun bs!1375985 () Bool)

(assert (= bs!1375985 (and b!5840132 b!5839374)))

(assert (=> bs!1375985 (not (= lambda!319494 lambda!319445))))

(declare-fun bs!1375986 () Bool)

(assert (= bs!1375986 (and b!5840132 b!5839287)))

(assert (=> bs!1375986 (= (and (= (regOne!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regOne!32326 (regTwo!32327 r!7292))) (= (regTwo!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regTwo!32327 r!7292)))) (= lambda!319494 lambda!319438))))

(declare-fun bs!1375987 () Bool)

(assert (= bs!1375987 (and b!5840132 b!5839971)))

(assert (=> bs!1375987 (= (and (= (regOne!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regOne!32326 (regOne!32327 (regOne!32327 r!7292)))) (= (regTwo!32326 (regTwo!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regOne!32327 (regOne!32327 r!7292))))) (= lambda!319494 lambda!319489))))

(declare-fun bs!1375988 () Bool)

(assert (= bs!1375988 (and b!5840132 b!5839292)))

(assert (=> bs!1375988 (not (= lambda!319494 lambda!319437))))

(declare-fun bs!1375989 () Bool)

(assert (= bs!1375989 (and b!5840132 b!5839976)))

(assert (=> bs!1375989 (not (= lambda!319494 lambda!319488))))

(declare-fun bs!1375990 () Bool)

(assert (= bs!1375990 (and b!5840132 b!5840137)))

(assert (=> bs!1375990 (not (= lambda!319494 lambda!319493))))

(assert (=> b!5840132 true))

(assert (=> b!5840132 true))

(declare-fun b!5840131 () Bool)

(declare-fun res!2460400 () Bool)

(declare-fun e!3582279 () Bool)

(assert (=> b!5840131 (=> res!2460400 e!3582279)))

(declare-fun call!456146 () Bool)

(assert (=> b!5840131 (= res!2460400 call!456146)))

(declare-fun e!3582282 () Bool)

(assert (=> b!5840131 (= e!3582282 e!3582279)))

(declare-fun d!1835103 () Bool)

(declare-fun c!1034797 () Bool)

(assert (=> d!1835103 (= c!1034797 ((_ is EmptyExpr!15907) (regTwo!32327 (regTwo!32327 r!7292))))))

(declare-fun e!3582280 () Bool)

(assert (=> d!1835103 (= (matchRSpec!3008 (regTwo!32327 (regTwo!32327 r!7292)) s!2326) e!3582280)))

(declare-fun call!456145 () Bool)

(assert (=> b!5840132 (= e!3582282 call!456145)))

(declare-fun b!5840133 () Bool)

(assert (=> b!5840133 (= e!3582280 call!456146)))

(declare-fun b!5840134 () Bool)

(declare-fun e!3582277 () Bool)

(assert (=> b!5840134 (= e!3582277 e!3582282)))

(declare-fun c!1034794 () Bool)

(assert (=> b!5840134 (= c!1034794 ((_ is Star!15907) (regTwo!32327 (regTwo!32327 r!7292))))))

(declare-fun b!5840135 () Bool)

(declare-fun e!3582278 () Bool)

(assert (=> b!5840135 (= e!3582277 e!3582278)))

(declare-fun res!2460402 () Bool)

(assert (=> b!5840135 (= res!2460402 (matchRSpec!3008 (regOne!32327 (regTwo!32327 (regTwo!32327 r!7292))) s!2326))))

(assert (=> b!5840135 (=> res!2460402 e!3582278)))

(declare-fun b!5840136 () Bool)

(assert (=> b!5840136 (= e!3582278 (matchRSpec!3008 (regTwo!32327 (regTwo!32327 (regTwo!32327 r!7292))) s!2326))))

(declare-fun bm!456140 () Bool)

(assert (=> bm!456140 (= call!456146 (isEmpty!35755 s!2326))))

(assert (=> b!5840137 (= e!3582279 call!456145)))

(declare-fun b!5840138 () Bool)

(declare-fun e!3582276 () Bool)

(assert (=> b!5840138 (= e!3582280 e!3582276)))

(declare-fun res!2460401 () Bool)

(assert (=> b!5840138 (= res!2460401 (not ((_ is EmptyLang!15907) (regTwo!32327 (regTwo!32327 r!7292)))))))

(assert (=> b!5840138 (=> (not res!2460401) (not e!3582276))))

(declare-fun bm!456141 () Bool)

(assert (=> bm!456141 (= call!456145 (Exists!2978 (ite c!1034794 lambda!319493 lambda!319494)))))

(declare-fun b!5840139 () Bool)

(declare-fun c!1034796 () Bool)

(assert (=> b!5840139 (= c!1034796 ((_ is ElementMatch!15907) (regTwo!32327 (regTwo!32327 r!7292))))))

(declare-fun e!3582281 () Bool)

(assert (=> b!5840139 (= e!3582276 e!3582281)))

(declare-fun b!5840140 () Bool)

(declare-fun c!1034795 () Bool)

(assert (=> b!5840140 (= c!1034795 ((_ is Union!15907) (regTwo!32327 (regTwo!32327 r!7292))))))

(assert (=> b!5840140 (= e!3582281 e!3582277)))

(declare-fun b!5840141 () Bool)

(assert (=> b!5840141 (= e!3582281 (= s!2326 (Cons!63898 (c!1034555 (regTwo!32327 (regTwo!32327 r!7292))) Nil!63898)))))

(assert (= (and d!1835103 c!1034797) b!5840133))

(assert (= (and d!1835103 (not c!1034797)) b!5840138))

(assert (= (and b!5840138 res!2460401) b!5840139))

(assert (= (and b!5840139 c!1034796) b!5840141))

(assert (= (and b!5840139 (not c!1034796)) b!5840140))

(assert (= (and b!5840140 c!1034795) b!5840135))

(assert (= (and b!5840140 (not c!1034795)) b!5840134))

(assert (= (and b!5840135 (not res!2460402)) b!5840136))

(assert (= (and b!5840134 c!1034794) b!5840131))

(assert (= (and b!5840134 (not c!1034794)) b!5840132))

(assert (= (and b!5840131 (not res!2460400)) b!5840137))

(assert (= (or b!5840137 b!5840132) bm!456141))

(assert (= (or b!5840133 b!5840131) bm!456140))

(declare-fun m!6764852 () Bool)

(assert (=> b!5840135 m!6764852))

(declare-fun m!6764854 () Bool)

(assert (=> b!5840136 m!6764854))

(assert (=> bm!456140 m!6764372))

(declare-fun m!6764856 () Bool)

(assert (=> bm!456141 m!6764856))

(assert (=> b!5839291 d!1835103))

(assert (=> b!5839385 d!1835077))

(assert (=> b!5839385 d!1835005))

(assert (=> bm!456042 d!1835011))

(declare-fun d!1835117 () Bool)

(assert (=> d!1835117 (= (isEmpty!35758 (tail!11454 (unfocusZipperList!1328 zl!343))) ((_ is Nil!63896) (tail!11454 (unfocusZipperList!1328 zl!343))))))

(assert (=> b!5839417 d!1835117))

(declare-fun d!1835119 () Bool)

(assert (=> d!1835119 (= (tail!11454 (unfocusZipperList!1328 zl!343)) (t!377375 (unfocusZipperList!1328 zl!343)))))

(assert (=> b!5839417 d!1835119))

(declare-fun d!1835123 () Bool)

(declare-fun res!2460408 () Bool)

(declare-fun e!3582290 () Bool)

(assert (=> d!1835123 (=> res!2460408 e!3582290)))

(assert (=> d!1835123 (= res!2460408 ((_ is Nil!63896) (exprs!5791 setElem!39558)))))

(assert (=> d!1835123 (= (forall!14994 (exprs!5791 setElem!39558) lambda!319443) e!3582290)))

(declare-fun b!5840151 () Bool)

(declare-fun e!3582291 () Bool)

(assert (=> b!5840151 (= e!3582290 e!3582291)))

(declare-fun res!2460409 () Bool)

(assert (=> b!5840151 (=> (not res!2460409) (not e!3582291))))

(assert (=> b!5840151 (= res!2460409 (dynLambda!24978 lambda!319443 (h!70344 (exprs!5791 setElem!39558))))))

(declare-fun b!5840152 () Bool)

(assert (=> b!5840152 (= e!3582291 (forall!14994 (t!377375 (exprs!5791 setElem!39558)) lambda!319443))))

(assert (= (and d!1835123 (not res!2460408)) b!5840151))

(assert (= (and b!5840151 res!2460409) b!5840152))

(declare-fun b_lambda!219923 () Bool)

(assert (=> (not b_lambda!219923) (not b!5840151)))

(declare-fun m!6764858 () Bool)

(assert (=> b!5840151 m!6764858))

(declare-fun m!6764860 () Bool)

(assert (=> b!5840152 m!6764860))

(assert (=> d!1834917 d!1835123))

(assert (=> b!5839373 d!1834899))

(assert (=> d!1834925 d!1834923))

(assert (=> d!1834925 d!1834921))

(declare-fun d!1835125 () Bool)

(assert (=> d!1835125 (= (matchR!8090 r!7292 s!2326) (matchRSpec!3008 r!7292 s!2326))))

(assert (=> d!1835125 true))

(declare-fun _$88!4197 () Unit!157085)

(assert (=> d!1835125 (= (choose!44335 r!7292 s!2326) _$88!4197)))

(declare-fun bs!1375993 () Bool)

(assert (= bs!1375993 d!1835125))

(assert (=> bs!1375993 m!6764338))

(assert (=> bs!1375993 m!6764336))

(assert (=> d!1834925 d!1835125))

(assert (=> d!1834925 d!1834937))

(assert (=> b!5839359 d!1835001))

(declare-fun b!5840167 () Bool)

(declare-fun e!3582302 () Bool)

(declare-fun call!456151 () Bool)

(assert (=> b!5840167 (= e!3582302 call!456151)))

(declare-fun call!456153 () Bool)

(declare-fun c!1034804 () Bool)

(declare-fun bm!456146 () Bool)

(assert (=> bm!456146 (= call!456153 (validRegex!7643 (ite c!1034804 (regTwo!32327 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))) (regTwo!32326 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))))))))

(declare-fun b!5840168 () Bool)

(declare-fun e!3582301 () Bool)

(assert (=> b!5840168 (= e!3582301 call!456153)))

(declare-fun b!5840169 () Bool)

(declare-fun e!3582303 () Bool)

(assert (=> b!5840169 (= e!3582303 call!456153)))

(declare-fun d!1835127 () Bool)

(declare-fun res!2460422 () Bool)

(declare-fun e!3582299 () Bool)

(assert (=> d!1835127 (=> res!2460422 e!3582299)))

(assert (=> d!1835127 (= res!2460422 ((_ is ElementMatch!15907) (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))))))

(assert (=> d!1835127 (= (validRegex!7643 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))) e!3582299)))

(declare-fun b!5840170 () Bool)

(declare-fun res!2460418 () Bool)

(assert (=> b!5840170 (=> (not res!2460418) (not e!3582301))))

(declare-fun call!456152 () Bool)

(assert (=> b!5840170 (= res!2460418 call!456152)))

(declare-fun e!3582305 () Bool)

(assert (=> b!5840170 (= e!3582305 e!3582301)))

(declare-fun b!5840171 () Bool)

(declare-fun e!3582304 () Bool)

(assert (=> b!5840171 (= e!3582304 e!3582305)))

(assert (=> b!5840171 (= c!1034804 ((_ is Union!15907) (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))))))

(declare-fun b!5840172 () Bool)

(assert (=> b!5840172 (= e!3582299 e!3582304)))

(declare-fun c!1034803 () Bool)

(assert (=> b!5840172 (= c!1034803 ((_ is Star!15907) (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))))))

(declare-fun b!5840173 () Bool)

(assert (=> b!5840173 (= e!3582304 e!3582302)))

(declare-fun res!2460420 () Bool)

(assert (=> b!5840173 (= res!2460420 (not (nullable!5906 (reg!16236 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))))))))

(assert (=> b!5840173 (=> (not res!2460420) (not e!3582302))))

(declare-fun bm!456147 () Bool)

(assert (=> bm!456147 (= call!456151 (validRegex!7643 (ite c!1034803 (reg!16236 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))) (ite c!1034804 (regOne!32327 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292)))) (regOne!32326 (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292))))))))))

(declare-fun b!5840174 () Bool)

(declare-fun e!3582300 () Bool)

(assert (=> b!5840174 (= e!3582300 e!3582303)))

(declare-fun res!2460421 () Bool)

(assert (=> b!5840174 (=> (not res!2460421) (not e!3582303))))

(assert (=> b!5840174 (= res!2460421 call!456152)))

(declare-fun b!5840175 () Bool)

(declare-fun res!2460419 () Bool)

(assert (=> b!5840175 (=> res!2460419 e!3582300)))

(assert (=> b!5840175 (= res!2460419 (not ((_ is Concat!24752) (ite c!1034640 (reg!16236 r!7292) (ite c!1034641 (regOne!32327 r!7292) (regOne!32326 r!7292))))))))

(assert (=> b!5840175 (= e!3582305 e!3582300)))

(declare-fun bm!456148 () Bool)

(assert (=> bm!456148 (= call!456152 call!456151)))

(assert (= (and d!1835127 (not res!2460422)) b!5840172))

(assert (= (and b!5840172 c!1034803) b!5840173))

(assert (= (and b!5840172 (not c!1034803)) b!5840171))

(assert (= (and b!5840173 res!2460420) b!5840167))

(assert (= (and b!5840171 c!1034804) b!5840170))

(assert (= (and b!5840171 (not c!1034804)) b!5840175))

(assert (= (and b!5840170 res!2460418) b!5840168))

(assert (= (and b!5840175 (not res!2460419)) b!5840174))

(assert (= (and b!5840174 res!2460421) b!5840169))

(assert (= (or b!5840168 b!5840169) bm!456146))

(assert (= (or b!5840170 b!5840174) bm!456148))

(assert (= (or b!5840167 bm!456148) bm!456147))

(declare-fun m!6764868 () Bool)

(assert (=> bm!456146 m!6764868))

(declare-fun m!6764871 () Bool)

(assert (=> b!5840173 m!6764871))

(declare-fun m!6764874 () Bool)

(assert (=> bm!456147 m!6764874))

(assert (=> bm!456059 d!1835127))

(declare-fun d!1835129 () Bool)

(assert (=> d!1835129 (= (Exists!2978 (ite c!1034583 lambda!319439 lambda!319440)) (choose!44339 (ite c!1034583 lambda!319439 lambda!319440)))))

(declare-fun bs!1375994 () Bool)

(assert (= bs!1375994 d!1835129))

(declare-fun m!6764876 () Bool)

(assert (=> bs!1375994 m!6764876))

(assert (=> bm!456041 d!1835129))

(assert (=> d!1834909 d!1835011))

(declare-fun b!5840186 () Bool)

(declare-fun e!3582314 () Bool)

(declare-fun call!456158 () Bool)

(assert (=> b!5840186 (= e!3582314 call!456158)))

(declare-fun bm!456153 () Bool)

(declare-fun call!456160 () Bool)

(declare-fun c!1034811 () Bool)

(assert (=> bm!456153 (= call!456160 (validRegex!7643 (ite c!1034811 (regTwo!32327 (regTwo!32327 r!7292)) (regTwo!32326 (regTwo!32327 r!7292)))))))

(declare-fun b!5840187 () Bool)

(declare-fun e!3582313 () Bool)

(assert (=> b!5840187 (= e!3582313 call!456160)))

(declare-fun b!5840188 () Bool)

(declare-fun e!3582315 () Bool)

(assert (=> b!5840188 (= e!3582315 call!456160)))

(declare-fun d!1835133 () Bool)

(declare-fun res!2460427 () Bool)

(declare-fun e!3582311 () Bool)

(assert (=> d!1835133 (=> res!2460427 e!3582311)))

(assert (=> d!1835133 (= res!2460427 ((_ is ElementMatch!15907) (regTwo!32327 r!7292)))))

(assert (=> d!1835133 (= (validRegex!7643 (regTwo!32327 r!7292)) e!3582311)))

(declare-fun b!5840189 () Bool)

(declare-fun res!2460423 () Bool)

(assert (=> b!5840189 (=> (not res!2460423) (not e!3582313))))

(declare-fun call!456159 () Bool)

(assert (=> b!5840189 (= res!2460423 call!456159)))

(declare-fun e!3582317 () Bool)

(assert (=> b!5840189 (= e!3582317 e!3582313)))

(declare-fun b!5840190 () Bool)

(declare-fun e!3582316 () Bool)

(assert (=> b!5840190 (= e!3582316 e!3582317)))

(assert (=> b!5840190 (= c!1034811 ((_ is Union!15907) (regTwo!32327 r!7292)))))

(declare-fun b!5840191 () Bool)

(assert (=> b!5840191 (= e!3582311 e!3582316)))

(declare-fun c!1034810 () Bool)

(assert (=> b!5840191 (= c!1034810 ((_ is Star!15907) (regTwo!32327 r!7292)))))

(declare-fun b!5840192 () Bool)

(assert (=> b!5840192 (= e!3582316 e!3582314)))

(declare-fun res!2460425 () Bool)

(assert (=> b!5840192 (= res!2460425 (not (nullable!5906 (reg!16236 (regTwo!32327 r!7292)))))))

(assert (=> b!5840192 (=> (not res!2460425) (not e!3582314))))

(declare-fun bm!456154 () Bool)

(assert (=> bm!456154 (= call!456158 (validRegex!7643 (ite c!1034810 (reg!16236 (regTwo!32327 r!7292)) (ite c!1034811 (regOne!32327 (regTwo!32327 r!7292)) (regOne!32326 (regTwo!32327 r!7292))))))))

(declare-fun b!5840193 () Bool)

(declare-fun e!3582312 () Bool)

(assert (=> b!5840193 (= e!3582312 e!3582315)))

(declare-fun res!2460426 () Bool)

(assert (=> b!5840193 (=> (not res!2460426) (not e!3582315))))

(assert (=> b!5840193 (= res!2460426 call!456159)))

(declare-fun b!5840194 () Bool)

(declare-fun res!2460424 () Bool)

(assert (=> b!5840194 (=> res!2460424 e!3582312)))

(assert (=> b!5840194 (= res!2460424 (not ((_ is Concat!24752) (regTwo!32327 r!7292))))))

(assert (=> b!5840194 (= e!3582317 e!3582312)))

(declare-fun bm!456155 () Bool)

(assert (=> bm!456155 (= call!456159 call!456158)))

(assert (= (and d!1835133 (not res!2460427)) b!5840191))

(assert (= (and b!5840191 c!1034810) b!5840192))

(assert (= (and b!5840191 (not c!1034810)) b!5840190))

(assert (= (and b!5840192 res!2460425) b!5840186))

(assert (= (and b!5840190 c!1034811) b!5840189))

(assert (= (and b!5840190 (not c!1034811)) b!5840194))

(assert (= (and b!5840189 res!2460423) b!5840187))

(assert (= (and b!5840194 (not res!2460424)) b!5840193))

(assert (= (and b!5840193 res!2460426) b!5840188))

(assert (= (or b!5840187 b!5840188) bm!456153))

(assert (= (or b!5840189 b!5840193) bm!456155))

(assert (= (or b!5840186 bm!456155) bm!456154))

(declare-fun m!6764878 () Bool)

(assert (=> bm!456153 m!6764878))

(declare-fun m!6764880 () Bool)

(assert (=> b!5840192 m!6764880))

(declare-fun m!6764884 () Bool)

(assert (=> bm!456154 m!6764884))

(assert (=> d!1834909 d!1835133))

(declare-fun d!1835135 () Bool)

(declare-fun res!2460428 () Bool)

(declare-fun e!3582318 () Bool)

(assert (=> d!1835135 (=> res!2460428 e!3582318)))

(assert (=> d!1835135 (= res!2460428 ((_ is Nil!63896) (exprs!5791 (h!70345 zl!343))))))

(assert (=> d!1835135 (= (forall!14994 (exprs!5791 (h!70345 zl!343)) lambda!319444) e!3582318)))

(declare-fun b!5840195 () Bool)

(declare-fun e!3582319 () Bool)

(assert (=> b!5840195 (= e!3582318 e!3582319)))

(declare-fun res!2460429 () Bool)

(assert (=> b!5840195 (=> (not res!2460429) (not e!3582319))))

(assert (=> b!5840195 (= res!2460429 (dynLambda!24978 lambda!319444 (h!70344 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun b!5840196 () Bool)

(assert (=> b!5840196 (= e!3582319 (forall!14994 (t!377375 (exprs!5791 (h!70345 zl!343))) lambda!319444))))

(assert (= (and d!1835135 (not res!2460428)) b!5840195))

(assert (= (and b!5840195 res!2460429) b!5840196))

(declare-fun b_lambda!219925 () Bool)

(assert (=> (not b_lambda!219925) (not b!5840195)))

(declare-fun m!6764894 () Bool)

(assert (=> b!5840195 m!6764894))

(declare-fun m!6764896 () Bool)

(assert (=> b!5840196 m!6764896))

(assert (=> d!1834919 d!1835135))

(declare-fun bs!1375998 () Bool)

(declare-fun b!5840203 () Bool)

(assert (= bs!1375998 (and b!5840203 b!5839344)))

(declare-fun lambda!319495 () Int)

(assert (=> bs!1375998 (not (= lambda!319495 lambda!319440))))

(declare-fun bs!1375999 () Bool)

(assert (= bs!1375999 (and b!5840203 b!5839349)))

(assert (=> bs!1375999 (= (and (= (reg!16236 (regTwo!32327 (regOne!32327 r!7292))) (reg!16236 (regOne!32327 r!7292))) (= (regTwo!32327 (regOne!32327 r!7292)) (regOne!32327 r!7292))) (= lambda!319495 lambda!319439))))

(declare-fun bs!1376000 () Bool)

(assert (= bs!1376000 (and b!5840203 b!5839369)))

(assert (=> bs!1376000 (not (= lambda!319495 lambda!319446))))

(declare-fun bs!1376001 () Bool)

(assert (= bs!1376001 (and b!5840203 b!5839374)))

(assert (=> bs!1376001 (= (and (= (reg!16236 (regTwo!32327 (regOne!32327 r!7292))) (reg!16236 r!7292)) (= (regTwo!32327 (regOne!32327 r!7292)) r!7292)) (= lambda!319495 lambda!319445))))

(declare-fun bs!1376002 () Bool)

(assert (= bs!1376002 (and b!5840203 b!5839287)))

(assert (=> bs!1376002 (not (= lambda!319495 lambda!319438))))

(declare-fun bs!1376003 () Bool)

(assert (= bs!1376003 (and b!5840203 b!5840132)))

(assert (=> bs!1376003 (not (= lambda!319495 lambda!319494))))

(declare-fun bs!1376004 () Bool)

(assert (= bs!1376004 (and b!5840203 b!5839971)))

(assert (=> bs!1376004 (not (= lambda!319495 lambda!319489))))

(declare-fun bs!1376005 () Bool)

(assert (= bs!1376005 (and b!5840203 b!5839292)))

(assert (=> bs!1376005 (= (and (= (reg!16236 (regTwo!32327 (regOne!32327 r!7292))) (reg!16236 (regTwo!32327 r!7292))) (= (regTwo!32327 (regOne!32327 r!7292)) (regTwo!32327 r!7292))) (= lambda!319495 lambda!319437))))

(declare-fun bs!1376006 () Bool)

(assert (= bs!1376006 (and b!5840203 b!5839976)))

(assert (=> bs!1376006 (= (and (= (reg!16236 (regTwo!32327 (regOne!32327 r!7292))) (reg!16236 (regOne!32327 (regOne!32327 r!7292)))) (= (regTwo!32327 (regOne!32327 r!7292)) (regOne!32327 (regOne!32327 r!7292)))) (= lambda!319495 lambda!319488))))

(declare-fun bs!1376007 () Bool)

(assert (= bs!1376007 (and b!5840203 b!5840137)))

(assert (=> bs!1376007 (= (and (= (reg!16236 (regTwo!32327 (regOne!32327 r!7292))) (reg!16236 (regTwo!32327 (regTwo!32327 r!7292)))) (= (regTwo!32327 (regOne!32327 r!7292)) (regTwo!32327 (regTwo!32327 r!7292)))) (= lambda!319495 lambda!319493))))

(assert (=> b!5840203 true))

(assert (=> b!5840203 true))

(declare-fun bs!1376008 () Bool)

(declare-fun b!5840198 () Bool)

(assert (= bs!1376008 (and b!5840198 b!5839344)))

(declare-fun lambda!319496 () Int)

(assert (=> bs!1376008 (= (and (= (regOne!32326 (regTwo!32327 (regOne!32327 r!7292))) (regOne!32326 (regOne!32327 r!7292))) (= (regTwo!32326 (regTwo!32327 (regOne!32327 r!7292))) (regTwo!32326 (regOne!32327 r!7292)))) (= lambda!319496 lambda!319440))))

(declare-fun bs!1376009 () Bool)

(assert (= bs!1376009 (and b!5840198 b!5839349)))

(assert (=> bs!1376009 (not (= lambda!319496 lambda!319439))))

(declare-fun bs!1376010 () Bool)

(assert (= bs!1376010 (and b!5840198 b!5839369)))

(assert (=> bs!1376010 (= (and (= (regOne!32326 (regTwo!32327 (regOne!32327 r!7292))) (regOne!32326 r!7292)) (= (regTwo!32326 (regTwo!32327 (regOne!32327 r!7292))) (regTwo!32326 r!7292))) (= lambda!319496 lambda!319446))))

(declare-fun bs!1376011 () Bool)

(assert (= bs!1376011 (and b!5840198 b!5839374)))

(assert (=> bs!1376011 (not (= lambda!319496 lambda!319445))))

(declare-fun bs!1376012 () Bool)

(assert (= bs!1376012 (and b!5840198 b!5839287)))

(assert (=> bs!1376012 (= (and (= (regOne!32326 (regTwo!32327 (regOne!32327 r!7292))) (regOne!32326 (regTwo!32327 r!7292))) (= (regTwo!32326 (regTwo!32327 (regOne!32327 r!7292))) (regTwo!32326 (regTwo!32327 r!7292)))) (= lambda!319496 lambda!319438))))

(declare-fun bs!1376013 () Bool)

(assert (= bs!1376013 (and b!5840198 b!5840203)))

(assert (=> bs!1376013 (not (= lambda!319496 lambda!319495))))

(declare-fun bs!1376014 () Bool)

(assert (= bs!1376014 (and b!5840198 b!5840132)))

(assert (=> bs!1376014 (= (and (= (regOne!32326 (regTwo!32327 (regOne!32327 r!7292))) (regOne!32326 (regTwo!32327 (regTwo!32327 r!7292)))) (= (regTwo!32326 (regTwo!32327 (regOne!32327 r!7292))) (regTwo!32326 (regTwo!32327 (regTwo!32327 r!7292))))) (= lambda!319496 lambda!319494))))

(declare-fun bs!1376015 () Bool)

(assert (= bs!1376015 (and b!5840198 b!5839971)))

(assert (=> bs!1376015 (= (and (= (regOne!32326 (regTwo!32327 (regOne!32327 r!7292))) (regOne!32326 (regOne!32327 (regOne!32327 r!7292)))) (= (regTwo!32326 (regTwo!32327 (regOne!32327 r!7292))) (regTwo!32326 (regOne!32327 (regOne!32327 r!7292))))) (= lambda!319496 lambda!319489))))

(declare-fun bs!1376016 () Bool)

(assert (= bs!1376016 (and b!5840198 b!5839292)))

(assert (=> bs!1376016 (not (= lambda!319496 lambda!319437))))

(declare-fun bs!1376017 () Bool)

(assert (= bs!1376017 (and b!5840198 b!5839976)))

(assert (=> bs!1376017 (not (= lambda!319496 lambda!319488))))

(declare-fun bs!1376019 () Bool)

(assert (= bs!1376019 (and b!5840198 b!5840137)))

(assert (=> bs!1376019 (not (= lambda!319496 lambda!319493))))

(assert (=> b!5840198 true))

(assert (=> b!5840198 true))

(declare-fun b!5840197 () Bool)

(declare-fun res!2460430 () Bool)

(declare-fun e!3582323 () Bool)

(assert (=> b!5840197 (=> res!2460430 e!3582323)))

(declare-fun call!456162 () Bool)

(assert (=> b!5840197 (= res!2460430 call!456162)))

(declare-fun e!3582326 () Bool)

(assert (=> b!5840197 (= e!3582326 e!3582323)))

(declare-fun d!1835141 () Bool)

(declare-fun c!1034815 () Bool)

(assert (=> d!1835141 (= c!1034815 ((_ is EmptyExpr!15907) (regTwo!32327 (regOne!32327 r!7292))))))

(declare-fun e!3582324 () Bool)

(assert (=> d!1835141 (= (matchRSpec!3008 (regTwo!32327 (regOne!32327 r!7292)) s!2326) e!3582324)))

(declare-fun call!456161 () Bool)

(assert (=> b!5840198 (= e!3582326 call!456161)))

(declare-fun b!5840199 () Bool)

(assert (=> b!5840199 (= e!3582324 call!456162)))

(declare-fun b!5840200 () Bool)

(declare-fun e!3582321 () Bool)

(assert (=> b!5840200 (= e!3582321 e!3582326)))

(declare-fun c!1034812 () Bool)

(assert (=> b!5840200 (= c!1034812 ((_ is Star!15907) (regTwo!32327 (regOne!32327 r!7292))))))

(declare-fun b!5840201 () Bool)

(declare-fun e!3582322 () Bool)

(assert (=> b!5840201 (= e!3582321 e!3582322)))

(declare-fun res!2460432 () Bool)

(assert (=> b!5840201 (= res!2460432 (matchRSpec!3008 (regOne!32327 (regTwo!32327 (regOne!32327 r!7292))) s!2326))))

(assert (=> b!5840201 (=> res!2460432 e!3582322)))

(declare-fun b!5840202 () Bool)

(assert (=> b!5840202 (= e!3582322 (matchRSpec!3008 (regTwo!32327 (regTwo!32327 (regOne!32327 r!7292))) s!2326))))

(declare-fun bm!456156 () Bool)

(assert (=> bm!456156 (= call!456162 (isEmpty!35755 s!2326))))

(assert (=> b!5840203 (= e!3582323 call!456161)))

(declare-fun b!5840204 () Bool)

(declare-fun e!3582320 () Bool)

(assert (=> b!5840204 (= e!3582324 e!3582320)))

(declare-fun res!2460431 () Bool)

(assert (=> b!5840204 (= res!2460431 (not ((_ is EmptyLang!15907) (regTwo!32327 (regOne!32327 r!7292)))))))

(assert (=> b!5840204 (=> (not res!2460431) (not e!3582320))))

(declare-fun bm!456157 () Bool)

(assert (=> bm!456157 (= call!456161 (Exists!2978 (ite c!1034812 lambda!319495 lambda!319496)))))

(declare-fun b!5840205 () Bool)

(declare-fun c!1034814 () Bool)

(assert (=> b!5840205 (= c!1034814 ((_ is ElementMatch!15907) (regTwo!32327 (regOne!32327 r!7292))))))

(declare-fun e!3582325 () Bool)

(assert (=> b!5840205 (= e!3582320 e!3582325)))

(declare-fun b!5840206 () Bool)

(declare-fun c!1034813 () Bool)

(assert (=> b!5840206 (= c!1034813 ((_ is Union!15907) (regTwo!32327 (regOne!32327 r!7292))))))

(assert (=> b!5840206 (= e!3582325 e!3582321)))

(declare-fun b!5840207 () Bool)

(assert (=> b!5840207 (= e!3582325 (= s!2326 (Cons!63898 (c!1034555 (regTwo!32327 (regOne!32327 r!7292))) Nil!63898)))))

(assert (= (and d!1835141 c!1034815) b!5840199))

(assert (= (and d!1835141 (not c!1034815)) b!5840204))

(assert (= (and b!5840204 res!2460431) b!5840205))

(assert (= (and b!5840205 c!1034814) b!5840207))

(assert (= (and b!5840205 (not c!1034814)) b!5840206))

(assert (= (and b!5840206 c!1034813) b!5840201))

(assert (= (and b!5840206 (not c!1034813)) b!5840200))

(assert (= (and b!5840201 (not res!2460432)) b!5840202))

(assert (= (and b!5840200 c!1034812) b!5840197))

(assert (= (and b!5840200 (not c!1034812)) b!5840198))

(assert (= (and b!5840197 (not res!2460430)) b!5840203))

(assert (= (or b!5840203 b!5840198) bm!456157))

(assert (= (or b!5840199 b!5840197) bm!456156))

(declare-fun m!6764920 () Bool)

(assert (=> b!5840201 m!6764920))

(declare-fun m!6764922 () Bool)

(assert (=> b!5840202 m!6764922))

(assert (=> bm!456156 m!6764372))

(declare-fun m!6764924 () Bool)

(assert (=> bm!456157 m!6764924))

(assert (=> b!5839348 d!1835141))

(declare-fun d!1835159 () Bool)

(assert (=> d!1835159 (= (isConcat!865 lt!2303664) ((_ is Concat!24752) lt!2303664))))

(assert (=> b!5839486 d!1835159))

(assert (=> b!5839336 d!1835001))

(declare-fun d!1835161 () Bool)

(assert (=> d!1835161 (= (nullable!5906 (regOne!32327 r!7292)) (nullableFct!1894 (regOne!32327 r!7292)))))

(declare-fun bs!1376031 () Bool)

(assert (= bs!1376031 d!1835161))

(declare-fun m!6764926 () Bool)

(assert (=> bs!1376031 m!6764926))

(assert (=> b!5839366 d!1835161))

(assert (=> bm!456035 d!1835011))

(assert (=> b!5839334 d!1835001))

(declare-fun b!5840241 () Bool)

(declare-fun e!3582355 () Bool)

(declare-fun call!456171 () Bool)

(assert (=> b!5840241 (= e!3582355 call!456171)))

(declare-fun bm!456166 () Bool)

(declare-fun call!456173 () Bool)

(declare-fun c!1034825 () Bool)

(assert (=> bm!456166 (= call!456173 (validRegex!7643 (ite c!1034825 (regTwo!32327 lt!2303658) (regTwo!32326 lt!2303658))))))

(declare-fun b!5840242 () Bool)

(declare-fun e!3582354 () Bool)

(assert (=> b!5840242 (= e!3582354 call!456173)))

(declare-fun b!5840243 () Bool)

(declare-fun e!3582356 () Bool)

(assert (=> b!5840243 (= e!3582356 call!456173)))

(declare-fun d!1835163 () Bool)

(declare-fun res!2460454 () Bool)

(declare-fun e!3582352 () Bool)

(assert (=> d!1835163 (=> res!2460454 e!3582352)))

(assert (=> d!1835163 (= res!2460454 ((_ is ElementMatch!15907) lt!2303658))))

(assert (=> d!1835163 (= (validRegex!7643 lt!2303658) e!3582352)))

(declare-fun b!5840244 () Bool)

(declare-fun res!2460450 () Bool)

(assert (=> b!5840244 (=> (not res!2460450) (not e!3582354))))

(declare-fun call!456172 () Bool)

(assert (=> b!5840244 (= res!2460450 call!456172)))

(declare-fun e!3582358 () Bool)

(assert (=> b!5840244 (= e!3582358 e!3582354)))

(declare-fun b!5840245 () Bool)

(declare-fun e!3582357 () Bool)

(assert (=> b!5840245 (= e!3582357 e!3582358)))

(assert (=> b!5840245 (= c!1034825 ((_ is Union!15907) lt!2303658))))

(declare-fun b!5840246 () Bool)

(assert (=> b!5840246 (= e!3582352 e!3582357)))

(declare-fun c!1034824 () Bool)

(assert (=> b!5840246 (= c!1034824 ((_ is Star!15907) lt!2303658))))

(declare-fun b!5840247 () Bool)

(assert (=> b!5840247 (= e!3582357 e!3582355)))

(declare-fun res!2460452 () Bool)

(assert (=> b!5840247 (= res!2460452 (not (nullable!5906 (reg!16236 lt!2303658))))))

(assert (=> b!5840247 (=> (not res!2460452) (not e!3582355))))

(declare-fun bm!456167 () Bool)

(assert (=> bm!456167 (= call!456171 (validRegex!7643 (ite c!1034824 (reg!16236 lt!2303658) (ite c!1034825 (regOne!32327 lt!2303658) (regOne!32326 lt!2303658)))))))

(declare-fun b!5840248 () Bool)

(declare-fun e!3582353 () Bool)

(assert (=> b!5840248 (= e!3582353 e!3582356)))

(declare-fun res!2460453 () Bool)

(assert (=> b!5840248 (=> (not res!2460453) (not e!3582356))))

(assert (=> b!5840248 (= res!2460453 call!456172)))

(declare-fun b!5840249 () Bool)

(declare-fun res!2460451 () Bool)

(assert (=> b!5840249 (=> res!2460451 e!3582353)))

(assert (=> b!5840249 (= res!2460451 (not ((_ is Concat!24752) lt!2303658)))))

(assert (=> b!5840249 (= e!3582358 e!3582353)))

(declare-fun bm!456168 () Bool)

(assert (=> bm!456168 (= call!456172 call!456171)))

(assert (= (and d!1835163 (not res!2460454)) b!5840246))

(assert (= (and b!5840246 c!1034824) b!5840247))

(assert (= (and b!5840246 (not c!1034824)) b!5840245))

(assert (= (and b!5840247 res!2460452) b!5840241))

(assert (= (and b!5840245 c!1034825) b!5840244))

(assert (= (and b!5840245 (not c!1034825)) b!5840249))

(assert (= (and b!5840244 res!2460450) b!5840242))

(assert (= (and b!5840249 (not res!2460451)) b!5840248))

(assert (= (and b!5840248 res!2460453) b!5840243))

(assert (= (or b!5840242 b!5840243) bm!456166))

(assert (= (or b!5840244 b!5840248) bm!456168))

(assert (= (or b!5840241 bm!456168) bm!456167))

(declare-fun m!6764928 () Bool)

(assert (=> bm!456166 m!6764928))

(declare-fun m!6764930 () Bool)

(assert (=> b!5840247 m!6764930))

(declare-fun m!6764932 () Bool)

(assert (=> bm!456167 m!6764932))

(assert (=> d!1834927 d!1835163))

(declare-fun d!1835165 () Bool)

(declare-fun res!2460455 () Bool)

(declare-fun e!3582359 () Bool)

(assert (=> d!1835165 (=> res!2460455 e!3582359)))

(assert (=> d!1835165 (= res!2460455 ((_ is Nil!63896) (unfocusZipperList!1328 zl!343)))))

(assert (=> d!1835165 (= (forall!14994 (unfocusZipperList!1328 zl!343) lambda!319452) e!3582359)))

(declare-fun b!5840250 () Bool)

(declare-fun e!3582360 () Bool)

(assert (=> b!5840250 (= e!3582359 e!3582360)))

(declare-fun res!2460456 () Bool)

(assert (=> b!5840250 (=> (not res!2460456) (not e!3582360))))

(assert (=> b!5840250 (= res!2460456 (dynLambda!24978 lambda!319452 (h!70344 (unfocusZipperList!1328 zl!343))))))

(declare-fun b!5840251 () Bool)

(assert (=> b!5840251 (= e!3582360 (forall!14994 (t!377375 (unfocusZipperList!1328 zl!343)) lambda!319452))))

(assert (= (and d!1835165 (not res!2460455)) b!5840250))

(assert (= (and b!5840250 res!2460456) b!5840251))

(declare-fun b_lambda!219931 () Bool)

(assert (=> (not b_lambda!219931) (not b!5840250)))

(declare-fun m!6764934 () Bool)

(assert (=> b!5840250 m!6764934))

(declare-fun m!6764936 () Bool)

(assert (=> b!5840251 m!6764936))

(assert (=> d!1834927 d!1835165))

(assert (=> b!5839386 d!1835001))

(declare-fun d!1835167 () Bool)

(declare-fun c!1034828 () Bool)

(assert (=> d!1835167 (= c!1034828 ((_ is Nil!63897) lt!2303639))))

(declare-fun e!3582363 () (InoxSet Context!10582))

(assert (=> d!1835167 (= (content!11736 lt!2303639) e!3582363)))

(declare-fun b!5840256 () Bool)

(assert (=> b!5840256 (= e!3582363 ((as const (Array Context!10582 Bool)) false))))

(declare-fun b!5840257 () Bool)

(assert (=> b!5840257 (= e!3582363 ((_ map or) (store ((as const (Array Context!10582 Bool)) false) (h!70345 lt!2303639) true) (content!11736 (t!377376 lt!2303639))))))

(assert (= (and d!1835167 c!1034828) b!5840256))

(assert (= (and d!1835167 (not c!1034828)) b!5840257))

(declare-fun m!6764944 () Bool)

(assert (=> b!5840257 m!6764944))

(declare-fun m!6764946 () Bool)

(assert (=> b!5840257 m!6764946))

(assert (=> b!5839223 d!1835167))

(declare-fun d!1835171 () Bool)

(assert (=> d!1835171 (= (isEmpty!35758 (t!377375 (unfocusZipperList!1328 zl!343))) ((_ is Nil!63896) (t!377375 (unfocusZipperList!1328 zl!343))))))

(assert (=> b!5839420 d!1835171))

(declare-fun bs!1376045 () Bool)

(declare-fun d!1835173 () Bool)

(assert (= bs!1376045 (and d!1835173 d!1834927)))

(declare-fun lambda!319499 () Int)

(assert (=> bs!1376045 (= lambda!319499 lambda!319452)))

(declare-fun bs!1376046 () Bool)

(assert (= bs!1376046 (and d!1835173 d!1834933)))

(assert (=> bs!1376046 (= lambda!319499 lambda!319462)))

(declare-fun bs!1376047 () Bool)

(assert (= bs!1376047 (and d!1835173 d!1834935)))

(assert (=> bs!1376047 (= lambda!319499 lambda!319463)))

(declare-fun bs!1376048 () Bool)

(assert (= bs!1376048 (and d!1835173 d!1834917)))

(assert (=> bs!1376048 (= lambda!319499 lambda!319443)))

(declare-fun bs!1376049 () Bool)

(assert (= bs!1376049 (and d!1835173 d!1834931)))

(assert (=> bs!1376049 (= lambda!319499 lambda!319455)))

(declare-fun bs!1376050 () Bool)

(assert (= bs!1376050 (and d!1835173 d!1835035)))

(assert (=> bs!1376050 (= lambda!319499 lambda!319486)))

(declare-fun bs!1376051 () Bool)

(assert (= bs!1376051 (and d!1835173 d!1834919)))

(assert (=> bs!1376051 (= lambda!319499 lambda!319444)))

(declare-fun bs!1376052 () Bool)

(assert (= bs!1376052 (and d!1835173 d!1835043)))

(assert (=> bs!1376052 (= lambda!319499 lambda!319487)))

(assert (=> d!1835173 (= (inv!83014 (h!70345 (t!377376 zl!343))) (forall!14994 (exprs!5791 (h!70345 (t!377376 zl!343))) lambda!319499))))

(declare-fun bs!1376054 () Bool)

(assert (= bs!1376054 d!1835173))

(declare-fun m!6764954 () Bool)

(assert (=> bs!1376054 m!6764954))

(assert (=> b!5839577 d!1835173))

(declare-fun d!1835179 () Bool)

(declare-fun res!2460468 () Bool)

(declare-fun e!3582382 () Bool)

(assert (=> d!1835179 (=> res!2460468 e!3582382)))

(assert (=> d!1835179 (= res!2460468 ((_ is Nil!63897) lt!2303639))))

(assert (=> d!1835179 (= (noDuplicate!1771 lt!2303639) e!3582382)))

(declare-fun b!5840283 () Bool)

(declare-fun e!3582383 () Bool)

(assert (=> b!5840283 (= e!3582382 e!3582383)))

(declare-fun res!2460469 () Bool)

(assert (=> b!5840283 (=> (not res!2460469) (not e!3582383))))

(declare-fun contains!19915 (List!64021 Context!10582) Bool)

(assert (=> b!5840283 (= res!2460469 (not (contains!19915 (t!377376 lt!2303639) (h!70345 lt!2303639))))))

(declare-fun b!5840284 () Bool)

(assert (=> b!5840284 (= e!3582383 (noDuplicate!1771 (t!377376 lt!2303639)))))

(assert (= (and d!1835179 (not res!2460468)) b!5840283))

(assert (= (and b!5840283 res!2460469) b!5840284))

(declare-fun m!6764974 () Bool)

(assert (=> b!5840283 m!6764974))

(declare-fun m!6764976 () Bool)

(assert (=> b!5840284 m!6764976))

(assert (=> d!1834893 d!1835179))

(declare-fun d!1835183 () Bool)

(declare-fun e!3582393 () Bool)

(assert (=> d!1835183 e!3582393))

(declare-fun res!2460474 () Bool)

(assert (=> d!1835183 (=> (not res!2460474) (not e!3582393))))

(declare-fun res!2460475 () List!64021)

(assert (=> d!1835183 (= res!2460474 (noDuplicate!1771 res!2460475))))

(declare-fun e!3582392 () Bool)

(assert (=> d!1835183 e!3582392))

(assert (=> d!1835183 (= (choose!44334 z!1189) res!2460475)))

(declare-fun b!5840297 () Bool)

(declare-fun e!3582394 () Bool)

(declare-fun tp!1614721 () Bool)

(assert (=> b!5840297 (= e!3582394 tp!1614721)))

(declare-fun b!5840296 () Bool)

(declare-fun tp!1614722 () Bool)

(assert (=> b!5840296 (= e!3582392 (and (inv!83014 (h!70345 res!2460475)) e!3582394 tp!1614722))))

(declare-fun b!5840298 () Bool)

(assert (=> b!5840298 (= e!3582393 (= (content!11736 res!2460475) z!1189))))

(assert (= b!5840296 b!5840297))

(assert (= (and d!1835183 ((_ is Cons!63897) res!2460475)) b!5840296))

(assert (= (and d!1835183 res!2460474) b!5840298))

(declare-fun m!6764986 () Bool)

(assert (=> d!1835183 m!6764986))

(declare-fun m!6764988 () Bool)

(assert (=> b!5840296 m!6764988))

(declare-fun m!6764990 () Bool)

(assert (=> b!5840298 m!6764990))

(assert (=> d!1834893 d!1835183))

(declare-fun d!1835187 () Bool)

(assert (=> d!1835187 (= (isEmpty!35758 (t!377375 (exprs!5791 (h!70345 zl!343)))) ((_ is Nil!63896) (t!377375 (exprs!5791 (h!70345 zl!343)))))))

(assert (=> b!5839488 d!1835187))

(assert (=> d!1834911 d!1834909))

(assert (=> d!1834911 d!1834899))

(declare-fun d!1835189 () Bool)

(assert (=> d!1835189 (= (matchR!8090 (regTwo!32327 r!7292) s!2326) (matchRSpec!3008 (regTwo!32327 r!7292) s!2326))))

(assert (=> d!1835189 true))

(declare-fun _$88!4200 () Unit!157085)

(assert (=> d!1835189 (= (choose!44335 (regTwo!32327 r!7292) s!2326) _$88!4200)))

(declare-fun bs!1376083 () Bool)

(assert (= bs!1376083 d!1835189))

(assert (=> bs!1376083 m!6764326))

(assert (=> bs!1376083 m!6764322))

(assert (=> d!1834911 d!1835189))

(assert (=> d!1834911 d!1835133))

(assert (=> b!5839361 d!1835001))

(declare-fun bs!1376084 () Bool)

(declare-fun d!1835191 () Bool)

(assert (= bs!1376084 (and d!1835191 d!1834927)))

(declare-fun lambda!319503 () Int)

(assert (=> bs!1376084 (= lambda!319503 lambda!319452)))

(declare-fun bs!1376085 () Bool)

(assert (= bs!1376085 (and d!1835191 d!1834933)))

(assert (=> bs!1376085 (= lambda!319503 lambda!319462)))

(declare-fun bs!1376086 () Bool)

(assert (= bs!1376086 (and d!1835191 d!1834935)))

(assert (=> bs!1376086 (= lambda!319503 lambda!319463)))

(declare-fun bs!1376087 () Bool)

(assert (= bs!1376087 (and d!1835191 d!1834931)))

(assert (=> bs!1376087 (= lambda!319503 lambda!319455)))

(declare-fun bs!1376088 () Bool)

(assert (= bs!1376088 (and d!1835191 d!1835035)))

(assert (=> bs!1376088 (= lambda!319503 lambda!319486)))

(declare-fun bs!1376089 () Bool)

(assert (= bs!1376089 (and d!1835191 d!1834919)))

(assert (=> bs!1376089 (= lambda!319503 lambda!319444)))

(declare-fun bs!1376090 () Bool)

(assert (= bs!1376090 (and d!1835191 d!1835043)))

(assert (=> bs!1376090 (= lambda!319503 lambda!319487)))

(declare-fun bs!1376091 () Bool)

(assert (= bs!1376091 (and d!1835191 d!1834917)))

(assert (=> bs!1376091 (= lambda!319503 lambda!319443)))

(declare-fun bs!1376092 () Bool)

(assert (= bs!1376092 (and d!1835191 d!1835173)))

(assert (=> bs!1376092 (= lambda!319503 lambda!319499)))

(declare-fun e!3582402 () Bool)

(assert (=> d!1835191 e!3582402))

(declare-fun res!2460476 () Bool)

(assert (=> d!1835191 (=> (not res!2460476) (not e!3582402))))

(declare-fun lt!2303708 () Regex!15907)

(assert (=> d!1835191 (= res!2460476 (validRegex!7643 lt!2303708))))

(declare-fun e!3582400 () Regex!15907)

(assert (=> d!1835191 (= lt!2303708 e!3582400)))

(declare-fun c!1034836 () Bool)

(declare-fun e!3582404 () Bool)

(assert (=> d!1835191 (= c!1034836 e!3582404)))

(declare-fun res!2460477 () Bool)

(assert (=> d!1835191 (=> (not res!2460477) (not e!3582404))))

(assert (=> d!1835191 (= res!2460477 ((_ is Cons!63896) (t!377375 (unfocusZipperList!1328 zl!343))))))

(assert (=> d!1835191 (forall!14994 (t!377375 (unfocusZipperList!1328 zl!343)) lambda!319503)))

(assert (=> d!1835191 (= (generalisedUnion!1751 (t!377375 (unfocusZipperList!1328 zl!343))) lt!2303708)))

(declare-fun b!5840315 () Bool)

(declare-fun e!3582403 () Regex!15907)

(assert (=> b!5840315 (= e!3582403 EmptyLang!15907)))

(declare-fun b!5840316 () Bool)

(declare-fun e!3582401 () Bool)

(assert (=> b!5840316 (= e!3582402 e!3582401)))

(declare-fun c!1034837 () Bool)

(assert (=> b!5840316 (= c!1034837 (isEmpty!35758 (t!377375 (unfocusZipperList!1328 zl!343))))))

(declare-fun b!5840317 () Bool)

(declare-fun e!3582399 () Bool)

(assert (=> b!5840317 (= e!3582399 (isUnion!780 lt!2303708))))

(declare-fun b!5840318 () Bool)

(assert (=> b!5840318 (= e!3582403 (Union!15907 (h!70344 (t!377375 (unfocusZipperList!1328 zl!343))) (generalisedUnion!1751 (t!377375 (t!377375 (unfocusZipperList!1328 zl!343))))))))

(declare-fun b!5840319 () Bool)

(assert (=> b!5840319 (= e!3582401 e!3582399)))

(declare-fun c!1034838 () Bool)

(assert (=> b!5840319 (= c!1034838 (isEmpty!35758 (tail!11454 (t!377375 (unfocusZipperList!1328 zl!343)))))))

(declare-fun b!5840320 () Bool)

(assert (=> b!5840320 (= e!3582399 (= lt!2303708 (head!12369 (t!377375 (unfocusZipperList!1328 zl!343)))))))

(declare-fun b!5840321 () Bool)

(assert (=> b!5840321 (= e!3582401 (isEmptyLang!1350 lt!2303708))))

(declare-fun b!5840322 () Bool)

(assert (=> b!5840322 (= e!3582404 (isEmpty!35758 (t!377375 (t!377375 (unfocusZipperList!1328 zl!343)))))))

(declare-fun b!5840323 () Bool)

(assert (=> b!5840323 (= e!3582400 e!3582403)))

(declare-fun c!1034839 () Bool)

(assert (=> b!5840323 (= c!1034839 ((_ is Cons!63896) (t!377375 (unfocusZipperList!1328 zl!343))))))

(declare-fun b!5840324 () Bool)

(assert (=> b!5840324 (= e!3582400 (h!70344 (t!377375 (unfocusZipperList!1328 zl!343))))))

(assert (= (and d!1835191 res!2460477) b!5840322))

(assert (= (and d!1835191 c!1034836) b!5840324))

(assert (= (and d!1835191 (not c!1034836)) b!5840323))

(assert (= (and b!5840323 c!1034839) b!5840318))

(assert (= (and b!5840323 (not c!1034839)) b!5840315))

(assert (= (and d!1835191 res!2460476) b!5840316))

(assert (= (and b!5840316 c!1034837) b!5840321))

(assert (= (and b!5840316 (not c!1034837)) b!5840319))

(assert (= (and b!5840319 c!1034838) b!5840320))

(assert (= (and b!5840319 (not c!1034838)) b!5840317))

(declare-fun m!6764992 () Bool)

(assert (=> b!5840321 m!6764992))

(declare-fun m!6764994 () Bool)

(assert (=> b!5840319 m!6764994))

(assert (=> b!5840319 m!6764994))

(declare-fun m!6764996 () Bool)

(assert (=> b!5840319 m!6764996))

(assert (=> b!5840316 m!6764442))

(declare-fun m!6764998 () Bool)

(assert (=> b!5840318 m!6764998))

(declare-fun m!6765000 () Bool)

(assert (=> b!5840317 m!6765000))

(declare-fun m!6765002 () Bool)

(assert (=> b!5840320 m!6765002))

(declare-fun m!6765004 () Bool)

(assert (=> d!1835191 m!6765004))

(declare-fun m!6765006 () Bool)

(assert (=> d!1835191 m!6765006))

(declare-fun m!6765008 () Bool)

(assert (=> b!5840322 m!6765008))

(assert (=> b!5839416 d!1835191))

(declare-fun d!1835193 () Bool)

(assert (=> d!1835193 (= (isEmpty!35758 (unfocusZipperList!1328 zl!343)) ((_ is Nil!63896) (unfocusZipperList!1328 zl!343)))))

(assert (=> b!5839414 d!1835193))

(assert (=> b!5839384 d!1835001))

(declare-fun bs!1376093 () Bool)

(declare-fun d!1835195 () Bool)

(assert (= bs!1376093 (and d!1835195 d!1834927)))

(declare-fun lambda!319504 () Int)

(assert (=> bs!1376093 (= lambda!319504 lambda!319452)))

(declare-fun bs!1376094 () Bool)

(assert (= bs!1376094 (and d!1835195 d!1834935)))

(assert (=> bs!1376094 (= lambda!319504 lambda!319463)))

(declare-fun bs!1376095 () Bool)

(assert (= bs!1376095 (and d!1835195 d!1834931)))

(assert (=> bs!1376095 (= lambda!319504 lambda!319455)))

(declare-fun bs!1376096 () Bool)

(assert (= bs!1376096 (and d!1835195 d!1835035)))

(assert (=> bs!1376096 (= lambda!319504 lambda!319486)))

(declare-fun bs!1376097 () Bool)

(assert (= bs!1376097 (and d!1835195 d!1834919)))

(assert (=> bs!1376097 (= lambda!319504 lambda!319444)))

(declare-fun bs!1376098 () Bool)

(assert (= bs!1376098 (and d!1835195 d!1835043)))

(assert (=> bs!1376098 (= lambda!319504 lambda!319487)))

(declare-fun bs!1376099 () Bool)

(assert (= bs!1376099 (and d!1835195 d!1835191)))

(assert (=> bs!1376099 (= lambda!319504 lambda!319503)))

(declare-fun bs!1376100 () Bool)

(assert (= bs!1376100 (and d!1835195 d!1834933)))

(assert (=> bs!1376100 (= lambda!319504 lambda!319462)))

(declare-fun bs!1376101 () Bool)

(assert (= bs!1376101 (and d!1835195 d!1834917)))

(assert (=> bs!1376101 (= lambda!319504 lambda!319443)))

(declare-fun bs!1376102 () Bool)

(assert (= bs!1376102 (and d!1835195 d!1835173)))

(assert (=> bs!1376102 (= lambda!319504 lambda!319499)))

(assert (=> d!1835195 (= (inv!83014 setElem!39561) (forall!14994 (exprs!5791 setElem!39561) lambda!319504))))

(declare-fun bs!1376103 () Bool)

(assert (= bs!1376103 d!1835195))

(declare-fun m!6765012 () Bool)

(assert (=> bs!1376103 m!6765012))

(assert (=> setNonEmpty!39561 d!1835195))

(declare-fun d!1835197 () Bool)

(assert (=> d!1835197 (= (head!12369 (unfocusZipperList!1328 zl!343)) (h!70344 (unfocusZipperList!1328 zl!343)))))

(assert (=> b!5839418 d!1835197))

(declare-fun d!1835199 () Bool)

(assert (=> d!1835199 (= (isEmpty!35758 (exprs!5791 (h!70345 zl!343))) ((_ is Nil!63896) (exprs!5791 (h!70345 zl!343))))))

(assert (=> b!5839484 d!1835199))

(declare-fun d!1835201 () Bool)

(assert (=> d!1835201 (= (Exists!2978 (ite c!1034590 lambda!319445 lambda!319446)) (choose!44339 (ite c!1034590 lambda!319445 lambda!319446)))))

(declare-fun bs!1376104 () Bool)

(assert (= bs!1376104 d!1835201))

(declare-fun m!6765014 () Bool)

(assert (=> bs!1376104 m!6765014))

(assert (=> bm!456044 d!1835201))

(declare-fun bs!1376105 () Bool)

(declare-fun b!5840393 () Bool)

(assert (= bs!1376105 (and b!5840393 b!5839344)))

(declare-fun lambda!319505 () Int)

(assert (=> bs!1376105 (not (= lambda!319505 lambda!319440))))

(declare-fun bs!1376106 () Bool)

(assert (= bs!1376106 (and b!5840393 b!5840198)))

(assert (=> bs!1376106 (not (= lambda!319505 lambda!319496))))

(declare-fun bs!1376107 () Bool)

(assert (= bs!1376107 (and b!5840393 b!5839349)))

(assert (=> bs!1376107 (= (and (= (reg!16236 (regOne!32327 (regTwo!32327 r!7292))) (reg!16236 (regOne!32327 r!7292))) (= (regOne!32327 (regTwo!32327 r!7292)) (regOne!32327 r!7292))) (= lambda!319505 lambda!319439))))

(declare-fun bs!1376108 () Bool)

(assert (= bs!1376108 (and b!5840393 b!5839369)))

(assert (=> bs!1376108 (not (= lambda!319505 lambda!319446))))

(declare-fun bs!1376109 () Bool)

(assert (= bs!1376109 (and b!5840393 b!5839374)))

(assert (=> bs!1376109 (= (and (= (reg!16236 (regOne!32327 (regTwo!32327 r!7292))) (reg!16236 r!7292)) (= (regOne!32327 (regTwo!32327 r!7292)) r!7292)) (= lambda!319505 lambda!319445))))

(declare-fun bs!1376110 () Bool)

(assert (= bs!1376110 (and b!5840393 b!5839287)))

(assert (=> bs!1376110 (not (= lambda!319505 lambda!319438))))

(declare-fun bs!1376111 () Bool)

(assert (= bs!1376111 (and b!5840393 b!5840203)))

(assert (=> bs!1376111 (= (and (= (reg!16236 (regOne!32327 (regTwo!32327 r!7292))) (reg!16236 (regTwo!32327 (regOne!32327 r!7292)))) (= (regOne!32327 (regTwo!32327 r!7292)) (regTwo!32327 (regOne!32327 r!7292)))) (= lambda!319505 lambda!319495))))

(declare-fun bs!1376112 () Bool)

(assert (= bs!1376112 (and b!5840393 b!5840132)))

(assert (=> bs!1376112 (not (= lambda!319505 lambda!319494))))

(declare-fun bs!1376113 () Bool)

(assert (= bs!1376113 (and b!5840393 b!5839971)))

(assert (=> bs!1376113 (not (= lambda!319505 lambda!319489))))

(declare-fun bs!1376114 () Bool)

(assert (= bs!1376114 (and b!5840393 b!5839292)))

(assert (=> bs!1376114 (= (and (= (reg!16236 (regOne!32327 (regTwo!32327 r!7292))) (reg!16236 (regTwo!32327 r!7292))) (= (regOne!32327 (regTwo!32327 r!7292)) (regTwo!32327 r!7292))) (= lambda!319505 lambda!319437))))

(declare-fun bs!1376115 () Bool)

(assert (= bs!1376115 (and b!5840393 b!5839976)))

(assert (=> bs!1376115 (= (and (= (reg!16236 (regOne!32327 (regTwo!32327 r!7292))) (reg!16236 (regOne!32327 (regOne!32327 r!7292)))) (= (regOne!32327 (regTwo!32327 r!7292)) (regOne!32327 (regOne!32327 r!7292)))) (= lambda!319505 lambda!319488))))

(declare-fun bs!1376117 () Bool)

(assert (= bs!1376117 (and b!5840393 b!5840137)))

(assert (=> bs!1376117 (= (and (= (reg!16236 (regOne!32327 (regTwo!32327 r!7292))) (reg!16236 (regTwo!32327 (regTwo!32327 r!7292)))) (= (regOne!32327 (regTwo!32327 r!7292)) (regTwo!32327 (regTwo!32327 r!7292)))) (= lambda!319505 lambda!319493))))

(assert (=> b!5840393 true))

(assert (=> b!5840393 true))

(declare-fun bs!1376123 () Bool)

(declare-fun b!5840388 () Bool)

(assert (= bs!1376123 (and b!5840388 b!5839344)))

(declare-fun lambda!319506 () Int)

(assert (=> bs!1376123 (= (and (= (regOne!32326 (regOne!32327 (regTwo!32327 r!7292))) (regOne!32326 (regOne!32327 r!7292))) (= (regTwo!32326 (regOne!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regOne!32327 r!7292)))) (= lambda!319506 lambda!319440))))

(declare-fun bs!1376124 () Bool)

(assert (= bs!1376124 (and b!5840388 b!5840198)))

(assert (=> bs!1376124 (= (and (= (regOne!32326 (regOne!32327 (regTwo!32327 r!7292))) (regOne!32326 (regTwo!32327 (regOne!32327 r!7292)))) (= (regTwo!32326 (regOne!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regTwo!32327 (regOne!32327 r!7292))))) (= lambda!319506 lambda!319496))))

(declare-fun bs!1376125 () Bool)

(assert (= bs!1376125 (and b!5840388 b!5839369)))

(assert (=> bs!1376125 (= (and (= (regOne!32326 (regOne!32327 (regTwo!32327 r!7292))) (regOne!32326 r!7292)) (= (regTwo!32326 (regOne!32327 (regTwo!32327 r!7292))) (regTwo!32326 r!7292))) (= lambda!319506 lambda!319446))))

(declare-fun bs!1376126 () Bool)

(assert (= bs!1376126 (and b!5840388 b!5839374)))

(assert (=> bs!1376126 (not (= lambda!319506 lambda!319445))))

(declare-fun bs!1376127 () Bool)

(assert (= bs!1376127 (and b!5840388 b!5839287)))

(assert (=> bs!1376127 (= (and (= (regOne!32326 (regOne!32327 (regTwo!32327 r!7292))) (regOne!32326 (regTwo!32327 r!7292))) (= (regTwo!32326 (regOne!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regTwo!32327 r!7292)))) (= lambda!319506 lambda!319438))))

(declare-fun bs!1376128 () Bool)

(assert (= bs!1376128 (and b!5840388 b!5840203)))

(assert (=> bs!1376128 (not (= lambda!319506 lambda!319495))))

(declare-fun bs!1376129 () Bool)

(assert (= bs!1376129 (and b!5840388 b!5840393)))

(assert (=> bs!1376129 (not (= lambda!319506 lambda!319505))))

(declare-fun bs!1376130 () Bool)

(assert (= bs!1376130 (and b!5840388 b!5839349)))

(assert (=> bs!1376130 (not (= lambda!319506 lambda!319439))))

(declare-fun bs!1376131 () Bool)

(assert (= bs!1376131 (and b!5840388 b!5840132)))

(assert (=> bs!1376131 (= (and (= (regOne!32326 (regOne!32327 (regTwo!32327 r!7292))) (regOne!32326 (regTwo!32327 (regTwo!32327 r!7292)))) (= (regTwo!32326 (regOne!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regTwo!32327 (regTwo!32327 r!7292))))) (= lambda!319506 lambda!319494))))

(declare-fun bs!1376132 () Bool)

(assert (= bs!1376132 (and b!5840388 b!5839971)))

(assert (=> bs!1376132 (= (and (= (regOne!32326 (regOne!32327 (regTwo!32327 r!7292))) (regOne!32326 (regOne!32327 (regOne!32327 r!7292)))) (= (regTwo!32326 (regOne!32327 (regTwo!32327 r!7292))) (regTwo!32326 (regOne!32327 (regOne!32327 r!7292))))) (= lambda!319506 lambda!319489))))

(declare-fun bs!1376133 () Bool)

(assert (= bs!1376133 (and b!5840388 b!5839292)))

(assert (=> bs!1376133 (not (= lambda!319506 lambda!319437))))

(declare-fun bs!1376134 () Bool)

(assert (= bs!1376134 (and b!5840388 b!5839976)))

(assert (=> bs!1376134 (not (= lambda!319506 lambda!319488))))

(declare-fun bs!1376135 () Bool)

(assert (= bs!1376135 (and b!5840388 b!5840137)))

(assert (=> bs!1376135 (not (= lambda!319506 lambda!319493))))

(assert (=> b!5840388 true))

(assert (=> b!5840388 true))

(declare-fun b!5840387 () Bool)

(declare-fun res!2460478 () Bool)

(declare-fun e!3582428 () Bool)

(assert (=> b!5840387 (=> res!2460478 e!3582428)))

(declare-fun call!456178 () Bool)

(assert (=> b!5840387 (= res!2460478 call!456178)))

(declare-fun e!3582431 () Bool)

(assert (=> b!5840387 (= e!3582431 e!3582428)))

(declare-fun d!1835203 () Bool)

(declare-fun c!1034843 () Bool)

(assert (=> d!1835203 (= c!1034843 ((_ is EmptyExpr!15907) (regOne!32327 (regTwo!32327 r!7292))))))

(declare-fun e!3582429 () Bool)

(assert (=> d!1835203 (= (matchRSpec!3008 (regOne!32327 (regTwo!32327 r!7292)) s!2326) e!3582429)))

(declare-fun call!456177 () Bool)

(assert (=> b!5840388 (= e!3582431 call!456177)))

(declare-fun b!5840389 () Bool)

(assert (=> b!5840389 (= e!3582429 call!456178)))

(declare-fun b!5840390 () Bool)

(declare-fun e!3582426 () Bool)

(assert (=> b!5840390 (= e!3582426 e!3582431)))

(declare-fun c!1034840 () Bool)

(assert (=> b!5840390 (= c!1034840 ((_ is Star!15907) (regOne!32327 (regTwo!32327 r!7292))))))

(declare-fun b!5840391 () Bool)

(declare-fun e!3582427 () Bool)

(assert (=> b!5840391 (= e!3582426 e!3582427)))

(declare-fun res!2460480 () Bool)

(assert (=> b!5840391 (= res!2460480 (matchRSpec!3008 (regOne!32327 (regOne!32327 (regTwo!32327 r!7292))) s!2326))))

(assert (=> b!5840391 (=> res!2460480 e!3582427)))

(declare-fun b!5840392 () Bool)

(assert (=> b!5840392 (= e!3582427 (matchRSpec!3008 (regTwo!32327 (regOne!32327 (regTwo!32327 r!7292))) s!2326))))

(declare-fun bm!456172 () Bool)

(assert (=> bm!456172 (= call!456178 (isEmpty!35755 s!2326))))

(assert (=> b!5840393 (= e!3582428 call!456177)))

(declare-fun b!5840394 () Bool)

(declare-fun e!3582425 () Bool)

(assert (=> b!5840394 (= e!3582429 e!3582425)))

(declare-fun res!2460479 () Bool)

(assert (=> b!5840394 (= res!2460479 (not ((_ is EmptyLang!15907) (regOne!32327 (regTwo!32327 r!7292)))))))

(assert (=> b!5840394 (=> (not res!2460479) (not e!3582425))))

(declare-fun bm!456173 () Bool)

(assert (=> bm!456173 (= call!456177 (Exists!2978 (ite c!1034840 lambda!319505 lambda!319506)))))

(declare-fun b!5840395 () Bool)

(declare-fun c!1034842 () Bool)

(assert (=> b!5840395 (= c!1034842 ((_ is ElementMatch!15907) (regOne!32327 (regTwo!32327 r!7292))))))

(declare-fun e!3582430 () Bool)

(assert (=> b!5840395 (= e!3582425 e!3582430)))

(declare-fun b!5840396 () Bool)

(declare-fun c!1034841 () Bool)

(assert (=> b!5840396 (= c!1034841 ((_ is Union!15907) (regOne!32327 (regTwo!32327 r!7292))))))

(assert (=> b!5840396 (= e!3582430 e!3582426)))

(declare-fun b!5840397 () Bool)

(assert (=> b!5840397 (= e!3582430 (= s!2326 (Cons!63898 (c!1034555 (regOne!32327 (regTwo!32327 r!7292))) Nil!63898)))))

(assert (= (and d!1835203 c!1034843) b!5840389))

(assert (= (and d!1835203 (not c!1034843)) b!5840394))

(assert (= (and b!5840394 res!2460479) b!5840395))

(assert (= (and b!5840395 c!1034842) b!5840397))

(assert (= (and b!5840395 (not c!1034842)) b!5840396))

(assert (= (and b!5840396 c!1034841) b!5840391))

(assert (= (and b!5840396 (not c!1034841)) b!5840390))

(assert (= (and b!5840391 (not res!2460480)) b!5840392))

(assert (= (and b!5840390 c!1034840) b!5840387))

(assert (= (and b!5840390 (not c!1034840)) b!5840388))

(assert (= (and b!5840387 (not res!2460478)) b!5840393))

(assert (= (or b!5840393 b!5840388) bm!456173))

(assert (= (or b!5840389 b!5840387) bm!456172))

(declare-fun m!6765028 () Bool)

(assert (=> b!5840391 m!6765028))

(declare-fun m!6765030 () Bool)

(assert (=> b!5840392 m!6765030))

(assert (=> bm!456172 m!6764372))

(declare-fun m!6765032 () Bool)

(assert (=> bm!456173 m!6765032))

(assert (=> b!5839290 d!1835203))

(declare-fun b!5840433 () Bool)

(declare-fun e!3582441 () Bool)

(declare-fun tp!1614866 () Bool)

(assert (=> b!5840433 (= e!3582441 tp!1614866)))

(declare-fun b!5840434 () Bool)

(declare-fun tp!1614868 () Bool)

(declare-fun tp!1614865 () Bool)

(assert (=> b!5840434 (= e!3582441 (and tp!1614868 tp!1614865))))

(declare-fun b!5840431 () Bool)

(assert (=> b!5840431 (= e!3582441 tp_is_empty!41067)))

(declare-fun b!5840432 () Bool)

(declare-fun tp!1614869 () Bool)

(declare-fun tp!1614867 () Bool)

(assert (=> b!5840432 (= e!3582441 (and tp!1614869 tp!1614867))))

(assert (=> b!5839594 (= tp!1614623 e!3582441)))

(assert (= (and b!5839594 ((_ is ElementMatch!15907) (regOne!32326 (regTwo!32327 r!7292)))) b!5840431))

(assert (= (and b!5839594 ((_ is Concat!24752) (regOne!32326 (regTwo!32327 r!7292)))) b!5840432))

(assert (= (and b!5839594 ((_ is Star!15907) (regOne!32326 (regTwo!32327 r!7292)))) b!5840433))

(assert (= (and b!5839594 ((_ is Union!15907) (regOne!32326 (regTwo!32327 r!7292)))) b!5840434))

(declare-fun b!5840437 () Bool)

(declare-fun e!3582442 () Bool)

(declare-fun tp!1614871 () Bool)

(assert (=> b!5840437 (= e!3582442 tp!1614871)))

(declare-fun b!5840438 () Bool)

(declare-fun tp!1614873 () Bool)

(declare-fun tp!1614870 () Bool)

(assert (=> b!5840438 (= e!3582442 (and tp!1614873 tp!1614870))))

(declare-fun b!5840435 () Bool)

(assert (=> b!5840435 (= e!3582442 tp_is_empty!41067)))

(declare-fun b!5840436 () Bool)

(declare-fun tp!1614874 () Bool)

(declare-fun tp!1614872 () Bool)

(assert (=> b!5840436 (= e!3582442 (and tp!1614874 tp!1614872))))

(assert (=> b!5839594 (= tp!1614621 e!3582442)))

(assert (= (and b!5839594 ((_ is ElementMatch!15907) (regTwo!32326 (regTwo!32327 r!7292)))) b!5840435))

(assert (= (and b!5839594 ((_ is Concat!24752) (regTwo!32326 (regTwo!32327 r!7292)))) b!5840436))

(assert (= (and b!5839594 ((_ is Star!15907) (regTwo!32326 (regTwo!32327 r!7292)))) b!5840437))

(assert (= (and b!5839594 ((_ is Union!15907) (regTwo!32326 (regTwo!32327 r!7292)))) b!5840438))

(declare-fun b!5840441 () Bool)

(declare-fun e!3582443 () Bool)

(declare-fun tp!1614876 () Bool)

(assert (=> b!5840441 (= e!3582443 tp!1614876)))

(declare-fun b!5840442 () Bool)

(declare-fun tp!1614878 () Bool)

(declare-fun tp!1614875 () Bool)

(assert (=> b!5840442 (= e!3582443 (and tp!1614878 tp!1614875))))

(declare-fun b!5840439 () Bool)

(assert (=> b!5840439 (= e!3582443 tp_is_empty!41067)))

(declare-fun b!5840440 () Bool)

(declare-fun tp!1614879 () Bool)

(declare-fun tp!1614877 () Bool)

(assert (=> b!5840440 (= e!3582443 (and tp!1614879 tp!1614877))))

(assert (=> b!5839596 (= tp!1614622 e!3582443)))

(assert (= (and b!5839596 ((_ is ElementMatch!15907) (regOne!32327 (regTwo!32327 r!7292)))) b!5840439))

(assert (= (and b!5839596 ((_ is Concat!24752) (regOne!32327 (regTwo!32327 r!7292)))) b!5840440))

(assert (= (and b!5839596 ((_ is Star!15907) (regOne!32327 (regTwo!32327 r!7292)))) b!5840441))

(assert (= (and b!5839596 ((_ is Union!15907) (regOne!32327 (regTwo!32327 r!7292)))) b!5840442))

(declare-fun b!5840445 () Bool)

(declare-fun e!3582444 () Bool)

(declare-fun tp!1614881 () Bool)

(assert (=> b!5840445 (= e!3582444 tp!1614881)))

(declare-fun b!5840446 () Bool)

(declare-fun tp!1614883 () Bool)

(declare-fun tp!1614880 () Bool)

(assert (=> b!5840446 (= e!3582444 (and tp!1614883 tp!1614880))))

(declare-fun b!5840443 () Bool)

(assert (=> b!5840443 (= e!3582444 tp_is_empty!41067)))

(declare-fun b!5840444 () Bool)

(declare-fun tp!1614884 () Bool)

(declare-fun tp!1614882 () Bool)

(assert (=> b!5840444 (= e!3582444 (and tp!1614884 tp!1614882))))

(assert (=> b!5839596 (= tp!1614619 e!3582444)))

(assert (= (and b!5839596 ((_ is ElementMatch!15907) (regTwo!32327 (regTwo!32327 r!7292)))) b!5840443))

(assert (= (and b!5839596 ((_ is Concat!24752) (regTwo!32327 (regTwo!32327 r!7292)))) b!5840444))

(assert (= (and b!5839596 ((_ is Star!15907) (regTwo!32327 (regTwo!32327 r!7292)))) b!5840445))

(assert (= (and b!5839596 ((_ is Union!15907) (regTwo!32327 (regTwo!32327 r!7292)))) b!5840446))

(declare-fun b!5840449 () Bool)

(declare-fun e!3582445 () Bool)

(declare-fun tp!1614886 () Bool)

(assert (=> b!5840449 (= e!3582445 tp!1614886)))

(declare-fun b!5840450 () Bool)

(declare-fun tp!1614888 () Bool)

(declare-fun tp!1614885 () Bool)

(assert (=> b!5840450 (= e!3582445 (and tp!1614888 tp!1614885))))

(declare-fun b!5840447 () Bool)

(assert (=> b!5840447 (= e!3582445 tp_is_empty!41067)))

(declare-fun b!5840448 () Bool)

(declare-fun tp!1614889 () Bool)

(declare-fun tp!1614887 () Bool)

(assert (=> b!5840448 (= e!3582445 (and tp!1614889 tp!1614887))))

(assert (=> b!5839595 (= tp!1614620 e!3582445)))

(assert (= (and b!5839595 ((_ is ElementMatch!15907) (reg!16236 (regTwo!32327 r!7292)))) b!5840447))

(assert (= (and b!5839595 ((_ is Concat!24752) (reg!16236 (regTwo!32327 r!7292)))) b!5840448))

(assert (= (and b!5839595 ((_ is Star!15907) (reg!16236 (regTwo!32327 r!7292)))) b!5840449))

(assert (= (and b!5839595 ((_ is Union!15907) (reg!16236 (regTwo!32327 r!7292)))) b!5840450))

(declare-fun b!5840453 () Bool)

(declare-fun e!3582446 () Bool)

(declare-fun tp!1614891 () Bool)

(assert (=> b!5840453 (= e!3582446 tp!1614891)))

(declare-fun b!5840454 () Bool)

(declare-fun tp!1614893 () Bool)

(declare-fun tp!1614890 () Bool)

(assert (=> b!5840454 (= e!3582446 (and tp!1614893 tp!1614890))))

(declare-fun b!5840451 () Bool)

(assert (=> b!5840451 (= e!3582446 tp_is_empty!41067)))

(declare-fun b!5840452 () Bool)

(declare-fun tp!1614894 () Bool)

(declare-fun tp!1614892 () Bool)

(assert (=> b!5840452 (= e!3582446 (and tp!1614894 tp!1614892))))

(assert (=> b!5839603 (= tp!1614635 e!3582446)))

(assert (= (and b!5839603 ((_ is ElementMatch!15907) (regOne!32326 (regTwo!32326 r!7292)))) b!5840451))

(assert (= (and b!5839603 ((_ is Concat!24752) (regOne!32326 (regTwo!32326 r!7292)))) b!5840452))

(assert (= (and b!5839603 ((_ is Star!15907) (regOne!32326 (regTwo!32326 r!7292)))) b!5840453))

(assert (= (and b!5839603 ((_ is Union!15907) (regOne!32326 (regTwo!32326 r!7292)))) b!5840454))

(declare-fun b!5840457 () Bool)

(declare-fun e!3582447 () Bool)

(declare-fun tp!1614896 () Bool)

(assert (=> b!5840457 (= e!3582447 tp!1614896)))

(declare-fun b!5840458 () Bool)

(declare-fun tp!1614898 () Bool)

(declare-fun tp!1614895 () Bool)

(assert (=> b!5840458 (= e!3582447 (and tp!1614898 tp!1614895))))

(declare-fun b!5840455 () Bool)

(assert (=> b!5840455 (= e!3582447 tp_is_empty!41067)))

(declare-fun b!5840456 () Bool)

(declare-fun tp!1614899 () Bool)

(declare-fun tp!1614897 () Bool)

(assert (=> b!5840456 (= e!3582447 (and tp!1614899 tp!1614897))))

(assert (=> b!5839603 (= tp!1614633 e!3582447)))

(assert (= (and b!5839603 ((_ is ElementMatch!15907) (regTwo!32326 (regTwo!32326 r!7292)))) b!5840455))

(assert (= (and b!5839603 ((_ is Concat!24752) (regTwo!32326 (regTwo!32326 r!7292)))) b!5840456))

(assert (= (and b!5839603 ((_ is Star!15907) (regTwo!32326 (regTwo!32326 r!7292)))) b!5840457))

(assert (= (and b!5839603 ((_ is Union!15907) (regTwo!32326 (regTwo!32326 r!7292)))) b!5840458))

(declare-fun b!5840459 () Bool)

(declare-fun e!3582448 () Bool)

(declare-fun tp!1614900 () Bool)

(assert (=> b!5840459 (= e!3582448 (and tp_is_empty!41067 tp!1614900))))

(assert (=> b!5839541 (= tp!1614591 e!3582448)))

(assert (= (and b!5839541 ((_ is Cons!63898) (t!377377 (t!377377 s!2326)))) b!5840459))

(declare-fun b!5840462 () Bool)

(declare-fun e!3582449 () Bool)

(declare-fun tp!1614902 () Bool)

(assert (=> b!5840462 (= e!3582449 tp!1614902)))

(declare-fun b!5840463 () Bool)

(declare-fun tp!1614904 () Bool)

(declare-fun tp!1614901 () Bool)

(assert (=> b!5840463 (= e!3582449 (and tp!1614904 tp!1614901))))

(declare-fun b!5840460 () Bool)

(assert (=> b!5840460 (= e!3582449 tp_is_empty!41067)))

(declare-fun b!5840461 () Bool)

(declare-fun tp!1614905 () Bool)

(declare-fun tp!1614903 () Bool)

(assert (=> b!5840461 (= e!3582449 (and tp!1614905 tp!1614903))))

(assert (=> b!5839600 (= tp!1614627 e!3582449)))

(assert (= (and b!5839600 ((_ is ElementMatch!15907) (reg!16236 (regOne!32326 r!7292)))) b!5840460))

(assert (= (and b!5839600 ((_ is Concat!24752) (reg!16236 (regOne!32326 r!7292)))) b!5840461))

(assert (= (and b!5839600 ((_ is Star!15907) (reg!16236 (regOne!32326 r!7292)))) b!5840462))

(assert (= (and b!5839600 ((_ is Union!15907) (reg!16236 (regOne!32326 r!7292)))) b!5840463))

(declare-fun b!5840466 () Bool)

(declare-fun e!3582450 () Bool)

(declare-fun tp!1614907 () Bool)

(assert (=> b!5840466 (= e!3582450 tp!1614907)))

(declare-fun b!5840467 () Bool)

(declare-fun tp!1614909 () Bool)

(declare-fun tp!1614906 () Bool)

(assert (=> b!5840467 (= e!3582450 (and tp!1614909 tp!1614906))))

(declare-fun b!5840464 () Bool)

(assert (=> b!5840464 (= e!3582450 tp_is_empty!41067)))

(declare-fun b!5840465 () Bool)

(declare-fun tp!1614910 () Bool)

(declare-fun tp!1614908 () Bool)

(assert (=> b!5840465 (= e!3582450 (and tp!1614910 tp!1614908))))

(assert (=> b!5839609 (= tp!1614639 e!3582450)))

(assert (= (and b!5839609 ((_ is ElementMatch!15907) (regOne!32327 (reg!16236 r!7292)))) b!5840464))

(assert (= (and b!5839609 ((_ is Concat!24752) (regOne!32327 (reg!16236 r!7292)))) b!5840465))

(assert (= (and b!5839609 ((_ is Star!15907) (regOne!32327 (reg!16236 r!7292)))) b!5840466))

(assert (= (and b!5839609 ((_ is Union!15907) (regOne!32327 (reg!16236 r!7292)))) b!5840467))

(declare-fun b!5840470 () Bool)

(declare-fun e!3582451 () Bool)

(declare-fun tp!1614912 () Bool)

(assert (=> b!5840470 (= e!3582451 tp!1614912)))

(declare-fun b!5840471 () Bool)

(declare-fun tp!1614914 () Bool)

(declare-fun tp!1614911 () Bool)

(assert (=> b!5840471 (= e!3582451 (and tp!1614914 tp!1614911))))

(declare-fun b!5840468 () Bool)

(assert (=> b!5840468 (= e!3582451 tp_is_empty!41067)))

(declare-fun b!5840469 () Bool)

(declare-fun tp!1614915 () Bool)

(declare-fun tp!1614913 () Bool)

(assert (=> b!5840469 (= e!3582451 (and tp!1614915 tp!1614913))))

(assert (=> b!5839609 (= tp!1614636 e!3582451)))

(assert (= (and b!5839609 ((_ is ElementMatch!15907) (regTwo!32327 (reg!16236 r!7292)))) b!5840468))

(assert (= (and b!5839609 ((_ is Concat!24752) (regTwo!32327 (reg!16236 r!7292)))) b!5840469))

(assert (= (and b!5839609 ((_ is Star!15907) (regTwo!32327 (reg!16236 r!7292)))) b!5840470))

(assert (= (and b!5839609 ((_ is Union!15907) (regTwo!32327 (reg!16236 r!7292)))) b!5840471))

(declare-fun b!5840474 () Bool)

(declare-fun e!3582452 () Bool)

(declare-fun tp!1614917 () Bool)

(assert (=> b!5840474 (= e!3582452 tp!1614917)))

(declare-fun b!5840475 () Bool)

(declare-fun tp!1614919 () Bool)

(declare-fun tp!1614916 () Bool)

(assert (=> b!5840475 (= e!3582452 (and tp!1614919 tp!1614916))))

(declare-fun b!5840472 () Bool)

(assert (=> b!5840472 (= e!3582452 tp_is_empty!41067)))

(declare-fun b!5840473 () Bool)

(declare-fun tp!1614920 () Bool)

(declare-fun tp!1614918 () Bool)

(assert (=> b!5840473 (= e!3582452 (and tp!1614920 tp!1614918))))

(assert (=> b!5839599 (= tp!1614630 e!3582452)))

(assert (= (and b!5839599 ((_ is ElementMatch!15907) (regOne!32326 (regOne!32326 r!7292)))) b!5840472))

(assert (= (and b!5839599 ((_ is Concat!24752) (regOne!32326 (regOne!32326 r!7292)))) b!5840473))

(assert (= (and b!5839599 ((_ is Star!15907) (regOne!32326 (regOne!32326 r!7292)))) b!5840474))

(assert (= (and b!5839599 ((_ is Union!15907) (regOne!32326 (regOne!32326 r!7292)))) b!5840475))

(declare-fun b!5840478 () Bool)

(declare-fun e!3582453 () Bool)

(declare-fun tp!1614922 () Bool)

(assert (=> b!5840478 (= e!3582453 tp!1614922)))

(declare-fun b!5840479 () Bool)

(declare-fun tp!1614924 () Bool)

(declare-fun tp!1614921 () Bool)

(assert (=> b!5840479 (= e!3582453 (and tp!1614924 tp!1614921))))

(declare-fun b!5840476 () Bool)

(assert (=> b!5840476 (= e!3582453 tp_is_empty!41067)))

(declare-fun b!5840477 () Bool)

(declare-fun tp!1614925 () Bool)

(declare-fun tp!1614923 () Bool)

(assert (=> b!5840477 (= e!3582453 (and tp!1614925 tp!1614923))))

(assert (=> b!5839599 (= tp!1614628 e!3582453)))

(assert (= (and b!5839599 ((_ is ElementMatch!15907) (regTwo!32326 (regOne!32326 r!7292)))) b!5840476))

(assert (= (and b!5839599 ((_ is Concat!24752) (regTwo!32326 (regOne!32326 r!7292)))) b!5840477))

(assert (= (and b!5839599 ((_ is Star!15907) (regTwo!32326 (regOne!32326 r!7292)))) b!5840478))

(assert (= (and b!5839599 ((_ is Union!15907) (regTwo!32326 (regOne!32326 r!7292)))) b!5840479))

(declare-fun b!5840480 () Bool)

(declare-fun e!3582454 () Bool)

(declare-fun tp!1614926 () Bool)

(declare-fun tp!1614927 () Bool)

(assert (=> b!5840480 (= e!3582454 (and tp!1614926 tp!1614927))))

(assert (=> b!5839578 (= tp!1614602 e!3582454)))

(assert (= (and b!5839578 ((_ is Cons!63896) (exprs!5791 (h!70345 (t!377376 zl!343))))) b!5840480))

(declare-fun b!5840483 () Bool)

(declare-fun e!3582455 () Bool)

(declare-fun tp!1614929 () Bool)

(assert (=> b!5840483 (= e!3582455 tp!1614929)))

(declare-fun b!5840484 () Bool)

(declare-fun tp!1614931 () Bool)

(declare-fun tp!1614928 () Bool)

(assert (=> b!5840484 (= e!3582455 (and tp!1614931 tp!1614928))))

(declare-fun b!5840481 () Bool)

(assert (=> b!5840481 (= e!3582455 tp_is_empty!41067)))

(declare-fun b!5840482 () Bool)

(declare-fun tp!1614932 () Bool)

(declare-fun tp!1614930 () Bool)

(assert (=> b!5840482 (= e!3582455 (and tp!1614932 tp!1614930))))

(assert (=> b!5839554 (= tp!1614596 e!3582455)))

(assert (= (and b!5839554 ((_ is ElementMatch!15907) (h!70344 (exprs!5791 setElem!39558)))) b!5840481))

(assert (= (and b!5839554 ((_ is Concat!24752) (h!70344 (exprs!5791 setElem!39558)))) b!5840482))

(assert (= (and b!5839554 ((_ is Star!15907) (h!70344 (exprs!5791 setElem!39558)))) b!5840483))

(assert (= (and b!5839554 ((_ is Union!15907) (h!70344 (exprs!5791 setElem!39558)))) b!5840484))

(declare-fun b!5840485 () Bool)

(declare-fun e!3582456 () Bool)

(declare-fun tp!1614933 () Bool)

(declare-fun tp!1614934 () Bool)

(assert (=> b!5840485 (= e!3582456 (and tp!1614933 tp!1614934))))

(assert (=> b!5839554 (= tp!1614597 e!3582456)))

(assert (= (and b!5839554 ((_ is Cons!63896) (t!377375 (exprs!5791 setElem!39558)))) b!5840485))

(declare-fun b!5840488 () Bool)

(declare-fun e!3582457 () Bool)

(declare-fun tp!1614936 () Bool)

(assert (=> b!5840488 (= e!3582457 tp!1614936)))

(declare-fun b!5840489 () Bool)

(declare-fun tp!1614938 () Bool)

(declare-fun tp!1614935 () Bool)

(assert (=> b!5840489 (= e!3582457 (and tp!1614938 tp!1614935))))

(declare-fun b!5840486 () Bool)

(assert (=> b!5840486 (= e!3582457 tp_is_empty!41067)))

(declare-fun b!5840487 () Bool)

(declare-fun tp!1614939 () Bool)

(declare-fun tp!1614937 () Bool)

(assert (=> b!5840487 (= e!3582457 (and tp!1614939 tp!1614937))))

(assert (=> b!5839601 (= tp!1614629 e!3582457)))

(assert (= (and b!5839601 ((_ is ElementMatch!15907) (regOne!32327 (regOne!32326 r!7292)))) b!5840486))

(assert (= (and b!5839601 ((_ is Concat!24752) (regOne!32327 (regOne!32326 r!7292)))) b!5840487))

(assert (= (and b!5839601 ((_ is Star!15907) (regOne!32327 (regOne!32326 r!7292)))) b!5840488))

(assert (= (and b!5839601 ((_ is Union!15907) (regOne!32327 (regOne!32326 r!7292)))) b!5840489))

(declare-fun b!5840492 () Bool)

(declare-fun e!3582458 () Bool)

(declare-fun tp!1614941 () Bool)

(assert (=> b!5840492 (= e!3582458 tp!1614941)))

(declare-fun b!5840493 () Bool)

(declare-fun tp!1614943 () Bool)

(declare-fun tp!1614940 () Bool)

(assert (=> b!5840493 (= e!3582458 (and tp!1614943 tp!1614940))))

(declare-fun b!5840490 () Bool)

(assert (=> b!5840490 (= e!3582458 tp_is_empty!41067)))

(declare-fun b!5840491 () Bool)

(declare-fun tp!1614944 () Bool)

(declare-fun tp!1614942 () Bool)

(assert (=> b!5840491 (= e!3582458 (and tp!1614944 tp!1614942))))

(assert (=> b!5839601 (= tp!1614626 e!3582458)))

(assert (= (and b!5839601 ((_ is ElementMatch!15907) (regTwo!32327 (regOne!32326 r!7292)))) b!5840490))

(assert (= (and b!5839601 ((_ is Concat!24752) (regTwo!32327 (regOne!32326 r!7292)))) b!5840491))

(assert (= (and b!5839601 ((_ is Star!15907) (regTwo!32327 (regOne!32326 r!7292)))) b!5840492))

(assert (= (and b!5839601 ((_ is Union!15907) (regTwo!32327 (regOne!32326 r!7292)))) b!5840493))

(declare-fun b!5840495 () Bool)

(declare-fun e!3582460 () Bool)

(declare-fun tp!1614945 () Bool)

(assert (=> b!5840495 (= e!3582460 tp!1614945)))

(declare-fun e!3582459 () Bool)

(declare-fun b!5840494 () Bool)

(declare-fun tp!1614946 () Bool)

(assert (=> b!5840494 (= e!3582459 (and (inv!83014 (h!70345 (t!377376 (t!377376 zl!343)))) e!3582460 tp!1614946))))

(assert (=> b!5839577 (= tp!1614603 e!3582459)))

(assert (= b!5840494 b!5840495))

(assert (= (and b!5839577 ((_ is Cons!63897) (t!377376 (t!377376 zl!343)))) b!5840494))

(declare-fun m!6765034 () Bool)

(assert (=> b!5840494 m!6765034))

(declare-fun b!5840498 () Bool)

(declare-fun e!3582461 () Bool)

(declare-fun tp!1614948 () Bool)

(assert (=> b!5840498 (= e!3582461 tp!1614948)))

(declare-fun b!5840499 () Bool)

(declare-fun tp!1614950 () Bool)

(declare-fun tp!1614947 () Bool)

(assert (=> b!5840499 (= e!3582461 (and tp!1614950 tp!1614947))))

(declare-fun b!5840496 () Bool)

(assert (=> b!5840496 (= e!3582461 tp_is_empty!41067)))

(declare-fun b!5840497 () Bool)

(declare-fun tp!1614951 () Bool)

(declare-fun tp!1614949 () Bool)

(assert (=> b!5840497 (= e!3582461 (and tp!1614951 tp!1614949))))

(assert (=> b!5839592 (= tp!1614617 e!3582461)))

(assert (= (and b!5839592 ((_ is ElementMatch!15907) (regOne!32327 (regOne!32327 r!7292)))) b!5840496))

(assert (= (and b!5839592 ((_ is Concat!24752) (regOne!32327 (regOne!32327 r!7292)))) b!5840497))

(assert (= (and b!5839592 ((_ is Star!15907) (regOne!32327 (regOne!32327 r!7292)))) b!5840498))

(assert (= (and b!5839592 ((_ is Union!15907) (regOne!32327 (regOne!32327 r!7292)))) b!5840499))

(declare-fun b!5840502 () Bool)

(declare-fun e!3582462 () Bool)

(declare-fun tp!1614953 () Bool)

(assert (=> b!5840502 (= e!3582462 tp!1614953)))

(declare-fun b!5840503 () Bool)

(declare-fun tp!1614955 () Bool)

(declare-fun tp!1614952 () Bool)

(assert (=> b!5840503 (= e!3582462 (and tp!1614955 tp!1614952))))

(declare-fun b!5840500 () Bool)

(assert (=> b!5840500 (= e!3582462 tp_is_empty!41067)))

(declare-fun b!5840501 () Bool)

(declare-fun tp!1614956 () Bool)

(declare-fun tp!1614954 () Bool)

(assert (=> b!5840501 (= e!3582462 (and tp!1614956 tp!1614954))))

(assert (=> b!5839592 (= tp!1614614 e!3582462)))

(assert (= (and b!5839592 ((_ is ElementMatch!15907) (regTwo!32327 (regOne!32327 r!7292)))) b!5840500))

(assert (= (and b!5839592 ((_ is Concat!24752) (regTwo!32327 (regOne!32327 r!7292)))) b!5840501))

(assert (= (and b!5839592 ((_ is Star!15907) (regTwo!32327 (regOne!32327 r!7292)))) b!5840502))

(assert (= (and b!5839592 ((_ is Union!15907) (regTwo!32327 (regOne!32327 r!7292)))) b!5840503))

(declare-fun b!5840506 () Bool)

(declare-fun e!3582463 () Bool)

(declare-fun tp!1614958 () Bool)

(assert (=> b!5840506 (= e!3582463 tp!1614958)))

(declare-fun b!5840507 () Bool)

(declare-fun tp!1614960 () Bool)

(declare-fun tp!1614957 () Bool)

(assert (=> b!5840507 (= e!3582463 (and tp!1614960 tp!1614957))))

(declare-fun b!5840504 () Bool)

(assert (=> b!5840504 (= e!3582463 tp_is_empty!41067)))

(declare-fun b!5840505 () Bool)

(declare-fun tp!1614961 () Bool)

(declare-fun tp!1614959 () Bool)

(assert (=> b!5840505 (= e!3582463 (and tp!1614961 tp!1614959))))

(assert (=> b!5839590 (= tp!1614618 e!3582463)))

(assert (= (and b!5839590 ((_ is ElementMatch!15907) (regOne!32326 (regOne!32327 r!7292)))) b!5840504))

(assert (= (and b!5839590 ((_ is Concat!24752) (regOne!32326 (regOne!32327 r!7292)))) b!5840505))

(assert (= (and b!5839590 ((_ is Star!15907) (regOne!32326 (regOne!32327 r!7292)))) b!5840506))

(assert (= (and b!5839590 ((_ is Union!15907) (regOne!32326 (regOne!32327 r!7292)))) b!5840507))

(declare-fun b!5840510 () Bool)

(declare-fun e!3582464 () Bool)

(declare-fun tp!1614963 () Bool)

(assert (=> b!5840510 (= e!3582464 tp!1614963)))

(declare-fun b!5840511 () Bool)

(declare-fun tp!1614965 () Bool)

(declare-fun tp!1614962 () Bool)

(assert (=> b!5840511 (= e!3582464 (and tp!1614965 tp!1614962))))

(declare-fun b!5840508 () Bool)

(assert (=> b!5840508 (= e!3582464 tp_is_empty!41067)))

(declare-fun b!5840509 () Bool)

(declare-fun tp!1614966 () Bool)

(declare-fun tp!1614964 () Bool)

(assert (=> b!5840509 (= e!3582464 (and tp!1614966 tp!1614964))))

(assert (=> b!5839590 (= tp!1614616 e!3582464)))

(assert (= (and b!5839590 ((_ is ElementMatch!15907) (regTwo!32326 (regOne!32327 r!7292)))) b!5840508))

(assert (= (and b!5839590 ((_ is Concat!24752) (regTwo!32326 (regOne!32327 r!7292)))) b!5840509))

(assert (= (and b!5839590 ((_ is Star!15907) (regTwo!32326 (regOne!32327 r!7292)))) b!5840510))

(assert (= (and b!5839590 ((_ is Union!15907) (regTwo!32326 (regOne!32327 r!7292)))) b!5840511))

(declare-fun b!5840514 () Bool)

(declare-fun e!3582465 () Bool)

(declare-fun tp!1614968 () Bool)

(assert (=> b!5840514 (= e!3582465 tp!1614968)))

(declare-fun b!5840515 () Bool)

(declare-fun tp!1614970 () Bool)

(declare-fun tp!1614967 () Bool)

(assert (=> b!5840515 (= e!3582465 (and tp!1614970 tp!1614967))))

(declare-fun b!5840512 () Bool)

(assert (=> b!5840512 (= e!3582465 tp_is_empty!41067)))

(declare-fun b!5840513 () Bool)

(declare-fun tp!1614971 () Bool)

(declare-fun tp!1614969 () Bool)

(assert (=> b!5840513 (= e!3582465 (and tp!1614971 tp!1614969))))

(assert (=> b!5839608 (= tp!1614637 e!3582465)))

(assert (= (and b!5839608 ((_ is ElementMatch!15907) (reg!16236 (reg!16236 r!7292)))) b!5840512))

(assert (= (and b!5839608 ((_ is Concat!24752) (reg!16236 (reg!16236 r!7292)))) b!5840513))

(assert (= (and b!5839608 ((_ is Star!15907) (reg!16236 (reg!16236 r!7292)))) b!5840514))

(assert (= (and b!5839608 ((_ is Union!15907) (reg!16236 (reg!16236 r!7292)))) b!5840515))

(declare-fun b!5840518 () Bool)

(declare-fun e!3582466 () Bool)

(declare-fun tp!1614973 () Bool)

(assert (=> b!5840518 (= e!3582466 tp!1614973)))

(declare-fun b!5840519 () Bool)

(declare-fun tp!1614975 () Bool)

(declare-fun tp!1614972 () Bool)

(assert (=> b!5840519 (= e!3582466 (and tp!1614975 tp!1614972))))

(declare-fun b!5840516 () Bool)

(assert (=> b!5840516 (= e!3582466 tp_is_empty!41067)))

(declare-fun b!5840517 () Bool)

(declare-fun tp!1614976 () Bool)

(declare-fun tp!1614974 () Bool)

(assert (=> b!5840517 (= e!3582466 (and tp!1614976 tp!1614974))))

(assert (=> b!5839591 (= tp!1614615 e!3582466)))

(assert (= (and b!5839591 ((_ is ElementMatch!15907) (reg!16236 (regOne!32327 r!7292)))) b!5840516))

(assert (= (and b!5839591 ((_ is Concat!24752) (reg!16236 (regOne!32327 r!7292)))) b!5840517))

(assert (= (and b!5839591 ((_ is Star!15907) (reg!16236 (regOne!32327 r!7292)))) b!5840518))

(assert (= (and b!5839591 ((_ is Union!15907) (reg!16236 (regOne!32327 r!7292)))) b!5840519))

(declare-fun b!5840522 () Bool)

(declare-fun e!3582467 () Bool)

(declare-fun tp!1614978 () Bool)

(assert (=> b!5840522 (= e!3582467 tp!1614978)))

(declare-fun b!5840523 () Bool)

(declare-fun tp!1614980 () Bool)

(declare-fun tp!1614977 () Bool)

(assert (=> b!5840523 (= e!3582467 (and tp!1614980 tp!1614977))))

(declare-fun b!5840520 () Bool)

(assert (=> b!5840520 (= e!3582467 tp_is_empty!41067)))

(declare-fun b!5840521 () Bool)

(declare-fun tp!1614981 () Bool)

(declare-fun tp!1614979 () Bool)

(assert (=> b!5840521 (= e!3582467 (and tp!1614981 tp!1614979))))

(assert (=> b!5839607 (= tp!1614640 e!3582467)))

(assert (= (and b!5839607 ((_ is ElementMatch!15907) (regOne!32326 (reg!16236 r!7292)))) b!5840520))

(assert (= (and b!5839607 ((_ is Concat!24752) (regOne!32326 (reg!16236 r!7292)))) b!5840521))

(assert (= (and b!5839607 ((_ is Star!15907) (regOne!32326 (reg!16236 r!7292)))) b!5840522))

(assert (= (and b!5839607 ((_ is Union!15907) (regOne!32326 (reg!16236 r!7292)))) b!5840523))

(declare-fun b!5840526 () Bool)

(declare-fun e!3582468 () Bool)

(declare-fun tp!1614983 () Bool)

(assert (=> b!5840526 (= e!3582468 tp!1614983)))

(declare-fun b!5840527 () Bool)

(declare-fun tp!1614985 () Bool)

(declare-fun tp!1614982 () Bool)

(assert (=> b!5840527 (= e!3582468 (and tp!1614985 tp!1614982))))

(declare-fun b!5840524 () Bool)

(assert (=> b!5840524 (= e!3582468 tp_is_empty!41067)))

(declare-fun b!5840525 () Bool)

(declare-fun tp!1614986 () Bool)

(declare-fun tp!1614984 () Bool)

(assert (=> b!5840525 (= e!3582468 (and tp!1614986 tp!1614984))))

(assert (=> b!5839607 (= tp!1614638 e!3582468)))

(assert (= (and b!5839607 ((_ is ElementMatch!15907) (regTwo!32326 (reg!16236 r!7292)))) b!5840524))

(assert (= (and b!5839607 ((_ is Concat!24752) (regTwo!32326 (reg!16236 r!7292)))) b!5840525))

(assert (= (and b!5839607 ((_ is Star!15907) (regTwo!32326 (reg!16236 r!7292)))) b!5840526))

(assert (= (and b!5839607 ((_ is Union!15907) (regTwo!32326 (reg!16236 r!7292)))) b!5840527))

(declare-fun b!5840530 () Bool)

(declare-fun e!3582469 () Bool)

(declare-fun tp!1614988 () Bool)

(assert (=> b!5840530 (= e!3582469 tp!1614988)))

(declare-fun b!5840531 () Bool)

(declare-fun tp!1614990 () Bool)

(declare-fun tp!1614987 () Bool)

(assert (=> b!5840531 (= e!3582469 (and tp!1614990 tp!1614987))))

(declare-fun b!5840528 () Bool)

(assert (=> b!5840528 (= e!3582469 tp_is_empty!41067)))

(declare-fun b!5840529 () Bool)

(declare-fun tp!1614991 () Bool)

(declare-fun tp!1614989 () Bool)

(assert (=> b!5840529 (= e!3582469 (and tp!1614991 tp!1614989))))

(assert (=> b!5839604 (= tp!1614632 e!3582469)))

(assert (= (and b!5839604 ((_ is ElementMatch!15907) (reg!16236 (regTwo!32326 r!7292)))) b!5840528))

(assert (= (and b!5839604 ((_ is Concat!24752) (reg!16236 (regTwo!32326 r!7292)))) b!5840529))

(assert (= (and b!5839604 ((_ is Star!15907) (reg!16236 (regTwo!32326 r!7292)))) b!5840530))

(assert (= (and b!5839604 ((_ is Union!15907) (reg!16236 (regTwo!32326 r!7292)))) b!5840531))

(declare-fun b!5840534 () Bool)

(declare-fun e!3582470 () Bool)

(declare-fun tp!1614993 () Bool)

(assert (=> b!5840534 (= e!3582470 tp!1614993)))

(declare-fun b!5840535 () Bool)

(declare-fun tp!1614995 () Bool)

(declare-fun tp!1614992 () Bool)

(assert (=> b!5840535 (= e!3582470 (and tp!1614995 tp!1614992))))

(declare-fun b!5840532 () Bool)

(assert (=> b!5840532 (= e!3582470 tp_is_empty!41067)))

(declare-fun b!5840533 () Bool)

(declare-fun tp!1614996 () Bool)

(declare-fun tp!1614994 () Bool)

(assert (=> b!5840533 (= e!3582470 (and tp!1614996 tp!1614994))))

(assert (=> b!5839605 (= tp!1614634 e!3582470)))

(assert (= (and b!5839605 ((_ is ElementMatch!15907) (regOne!32327 (regTwo!32326 r!7292)))) b!5840532))

(assert (= (and b!5839605 ((_ is Concat!24752) (regOne!32327 (regTwo!32326 r!7292)))) b!5840533))

(assert (= (and b!5839605 ((_ is Star!15907) (regOne!32327 (regTwo!32326 r!7292)))) b!5840534))

(assert (= (and b!5839605 ((_ is Union!15907) (regOne!32327 (regTwo!32326 r!7292)))) b!5840535))

(declare-fun b!5840538 () Bool)

(declare-fun e!3582471 () Bool)

(declare-fun tp!1614998 () Bool)

(assert (=> b!5840538 (= e!3582471 tp!1614998)))

(declare-fun b!5840539 () Bool)

(declare-fun tp!1615000 () Bool)

(declare-fun tp!1614997 () Bool)

(assert (=> b!5840539 (= e!3582471 (and tp!1615000 tp!1614997))))

(declare-fun b!5840536 () Bool)

(assert (=> b!5840536 (= e!3582471 tp_is_empty!41067)))

(declare-fun b!5840537 () Bool)

(declare-fun tp!1615001 () Bool)

(declare-fun tp!1614999 () Bool)

(assert (=> b!5840537 (= e!3582471 (and tp!1615001 tp!1614999))))

(assert (=> b!5839605 (= tp!1614631 e!3582471)))

(assert (= (and b!5839605 ((_ is ElementMatch!15907) (regTwo!32327 (regTwo!32326 r!7292)))) b!5840536))

(assert (= (and b!5839605 ((_ is Concat!24752) (regTwo!32327 (regTwo!32326 r!7292)))) b!5840537))

(assert (= (and b!5839605 ((_ is Star!15907) (regTwo!32327 (regTwo!32326 r!7292)))) b!5840538))

(assert (= (and b!5839605 ((_ is Union!15907) (regTwo!32327 (regTwo!32326 r!7292)))) b!5840539))

(declare-fun condSetEmpty!39566 () Bool)

(assert (=> setNonEmpty!39561 (= condSetEmpty!39566 (= setRest!39561 ((as const (Array Context!10582 Bool)) false)))))

(declare-fun setRes!39566 () Bool)

(assert (=> setNonEmpty!39561 (= tp!1614645 setRes!39566)))

(declare-fun setIsEmpty!39566 () Bool)

(assert (=> setIsEmpty!39566 setRes!39566))

(declare-fun e!3582472 () Bool)

(declare-fun tp!1615002 () Bool)

(declare-fun setNonEmpty!39566 () Bool)

(declare-fun setElem!39566 () Context!10582)

(assert (=> setNonEmpty!39566 (= setRes!39566 (and tp!1615002 (inv!83014 setElem!39566) e!3582472))))

(declare-fun setRest!39566 () (InoxSet Context!10582))

(assert (=> setNonEmpty!39566 (= setRest!39561 ((_ map or) (store ((as const (Array Context!10582 Bool)) false) setElem!39566 true) setRest!39566))))

(declare-fun b!5840540 () Bool)

(declare-fun tp!1615003 () Bool)

(assert (=> b!5840540 (= e!3582472 tp!1615003)))

(assert (= (and setNonEmpty!39561 condSetEmpty!39566) setIsEmpty!39566))

(assert (= (and setNonEmpty!39561 (not condSetEmpty!39566)) setNonEmpty!39566))

(assert (= setNonEmpty!39566 b!5840540))

(declare-fun m!6765036 () Bool)

(assert (=> setNonEmpty!39566 m!6765036))

(declare-fun b!5840543 () Bool)

(declare-fun e!3582473 () Bool)

(declare-fun tp!1615005 () Bool)

(assert (=> b!5840543 (= e!3582473 tp!1615005)))

(declare-fun b!5840544 () Bool)

(declare-fun tp!1615007 () Bool)

(declare-fun tp!1615004 () Bool)

(assert (=> b!5840544 (= e!3582473 (and tp!1615007 tp!1615004))))

(declare-fun b!5840541 () Bool)

(assert (=> b!5840541 (= e!3582473 tp_is_empty!41067)))

(declare-fun b!5840542 () Bool)

(declare-fun tp!1615008 () Bool)

(declare-fun tp!1615006 () Bool)

(assert (=> b!5840542 (= e!3582473 (and tp!1615008 tp!1615006))))

(assert (=> b!5839597 (= tp!1614624 e!3582473)))

(assert (= (and b!5839597 ((_ is ElementMatch!15907) (h!70344 (exprs!5791 (h!70345 zl!343))))) b!5840541))

(assert (= (and b!5839597 ((_ is Concat!24752) (h!70344 (exprs!5791 (h!70345 zl!343))))) b!5840542))

(assert (= (and b!5839597 ((_ is Star!15907) (h!70344 (exprs!5791 (h!70345 zl!343))))) b!5840543))

(assert (= (and b!5839597 ((_ is Union!15907) (h!70344 (exprs!5791 (h!70345 zl!343))))) b!5840544))

(declare-fun b!5840545 () Bool)

(declare-fun e!3582474 () Bool)

(declare-fun tp!1615009 () Bool)

(declare-fun tp!1615010 () Bool)

(assert (=> b!5840545 (= e!3582474 (and tp!1615009 tp!1615010))))

(assert (=> b!5839597 (= tp!1614625 e!3582474)))

(assert (= (and b!5839597 ((_ is Cons!63896) (t!377375 (exprs!5791 (h!70345 zl!343))))) b!5840545))

(declare-fun b!5840546 () Bool)

(declare-fun e!3582475 () Bool)

(declare-fun tp!1615011 () Bool)

(declare-fun tp!1615012 () Bool)

(assert (=> b!5840546 (= e!3582475 (and tp!1615011 tp!1615012))))

(assert (=> b!5839614 (= tp!1614646 e!3582475)))

(assert (= (and b!5839614 ((_ is Cons!63896) (exprs!5791 setElem!39561))) b!5840546))

(declare-fun b_lambda!219945 () Bool)

(assert (= b_lambda!219931 (or d!1834927 b_lambda!219945)))

(declare-fun bs!1376136 () Bool)

(declare-fun d!1835217 () Bool)

(assert (= bs!1376136 (and d!1835217 d!1834927)))

(assert (=> bs!1376136 (= (dynLambda!24978 lambda!319452 (h!70344 (unfocusZipperList!1328 zl!343))) (validRegex!7643 (h!70344 (unfocusZipperList!1328 zl!343))))))

(declare-fun m!6765038 () Bool)

(assert (=> bs!1376136 m!6765038))

(assert (=> b!5840250 d!1835217))

(declare-fun b_lambda!219947 () Bool)

(assert (= b_lambda!219919 (or d!1834933 b_lambda!219947)))

(declare-fun bs!1376137 () Bool)

(declare-fun d!1835219 () Bool)

(assert (= bs!1376137 (and d!1835219 d!1834933)))

(assert (=> bs!1376137 (= (dynLambda!24978 lambda!319462 (h!70344 (exprs!5791 (h!70345 zl!343)))) (validRegex!7643 (h!70344 (exprs!5791 (h!70345 zl!343)))))))

(declare-fun m!6765040 () Bool)

(assert (=> bs!1376137 m!6765040))

(assert (=> b!5840005 d!1835219))

(declare-fun b_lambda!219949 () Bool)

(assert (= b_lambda!219915 (or d!1834935 b_lambda!219949)))

(declare-fun bs!1376138 () Bool)

(declare-fun d!1835221 () Bool)

(assert (= bs!1376138 (and d!1835221 d!1834935)))

(assert (=> bs!1376138 (= (dynLambda!24978 lambda!319463 (h!70344 (exprs!5791 (Context!10583 (Cons!63896 r!7292 Nil!63896))))) (validRegex!7643 (h!70344 (exprs!5791 (Context!10583 (Cons!63896 r!7292 Nil!63896))))))))

(declare-fun m!6765042 () Bool)

(assert (=> bs!1376138 m!6765042))

(assert (=> b!5839941 d!1835221))

(declare-fun b_lambda!219951 () Bool)

(assert (= b_lambda!219923 (or d!1834917 b_lambda!219951)))

(declare-fun bs!1376139 () Bool)

(declare-fun d!1835223 () Bool)

(assert (= bs!1376139 (and d!1835223 d!1834917)))

(assert (=> bs!1376139 (= (dynLambda!24978 lambda!319443 (h!70344 (exprs!5791 setElem!39558))) (validRegex!7643 (h!70344 (exprs!5791 setElem!39558))))))

(declare-fun m!6765044 () Bool)

(assert (=> bs!1376139 m!6765044))

(assert (=> b!5840151 d!1835223))

(declare-fun b_lambda!219953 () Bool)

(assert (= b_lambda!219917 (or d!1834931 b_lambda!219953)))

(declare-fun bs!1376140 () Bool)

(declare-fun d!1835225 () Bool)

(assert (= bs!1376140 (and d!1835225 d!1834931)))

(assert (=> bs!1376140 (= (dynLambda!24978 lambda!319455 (h!70344 lt!2303661)) (validRegex!7643 (h!70344 lt!2303661)))))

(declare-fun m!6765046 () Bool)

(assert (=> bs!1376140 m!6765046))

(assert (=> b!5839943 d!1835225))

(declare-fun b_lambda!219955 () Bool)

(assert (= b_lambda!219925 (or d!1834919 b_lambda!219955)))

(declare-fun bs!1376141 () Bool)

(declare-fun d!1835227 () Bool)

(assert (= bs!1376141 (and d!1835227 d!1834919)))

(assert (=> bs!1376141 (= (dynLambda!24978 lambda!319444 (h!70344 (exprs!5791 (h!70345 zl!343)))) (validRegex!7643 (h!70344 (exprs!5791 (h!70345 zl!343)))))))

(assert (=> bs!1376141 m!6765040))

(assert (=> b!5840195 d!1835227))

(check-sat (not bm!456115) (not b!5840152) (not b!5840503) (not b!5840320) (not b!5839951) (not b!5840247) (not b!5840542) (not b!5840450) (not b!5840505) (not bm!456101) (not d!1835191) (not d!1835027) (not b!5840538) (not d!1835007) (not b!5839974) (not b!5839962) (not bm!456102) (not b!5840492) (not b!5840257) (not b!5840533) (not b!5840319) (not b!5840062) (not b!5840322) (not b!5840517) (not b!5840474) (not b!5840432) (not bm!456112) (not b!5840192) (not b!5839957) (not bm!456129) (not b!5840485) (not bm!456140) (not b!5840446) (not b!5840283) (not b!5840518) (not b!5840015) (not b!5840433) (not b!5840444) (not b!5840102) (not bm!456141) (not d!1835173) (not b!5840449) (not b!5840534) (not b!5840527) (not b!5840456) (not b!5840461) (not b!5840470) (not bs!1376139) (not b!5840509) (not b!5840465) (not b!5840135) (not bm!456147) (not bm!456128) (not b!5840202) (not b!5840297) (not b!5840434) (not b_lambda!219955) (not setNonEmpty!39566) (not b!5840475) (not b!5840002) (not b!5840069) (not b!5839944) (not b!5840488) (not bm!456166) (not b!5840493) (not b!5840391) (not b_lambda!219953) (not b!5840530) (not b!5840088) tp_is_empty!41067 (not b!5840478) (not b!5839839) (not b!5840466) (not d!1835183) (not b!5840006) (not b_lambda!219947) (not b!5840098) (not b!5840123) (not b!5840494) (not b!5840537) (not b!5840487) (not b!5840525) (not d!1835195) (not b!5840317) (not b!5840452) (not bm!456094) (not b!5840526) (not b!5840544) (not b!5840540) (not b!5839890) (not b!5840103) (not b!5839913) (not b!5840108) (not bm!456096) (not b!5840522) (not bm!456109) (not b!5840201) (not bm!456173) (not b!5840440) (not b!5840477) (not b!5840284) (not bs!1376138) (not b!5840497) (not b!5840499) (not d!1835201) (not d!1835101) (not bm!456114) (not b!5840441) (not b!5840469) (not b!5840511) (not b_lambda!219949) (not d!1835031) (not b!5840483) (not d!1835125) (not b!5840454) (not b!5840507) (not bm!456111) (not b!5840514) (not b!5839838) (not b_lambda!219951) (not b!5840484) (not b!5840521) (not d!1835081) (not b!5839959) (not bm!456146) (not bm!456156) (not b!5840463) (not b!5840316) (not bm!456172) (not b!5840531) (not b!5840101) (not b!5840545) (not b!5840298) (not b!5840251) (not d!1835189) (not b!5840539) (not b!5840471) (not bm!456107) (not b!5840543) (not bm!456079) (not b!5839845) (not b!5839961) (not b!5839964) (not b!5840436) (not d!1834975) (not b!5840529) (not d!1835043) (not d!1835035) (not b!5840495) (not b!5840068) (not d!1835161) (not bm!456131) (not b!5840489) (not bm!456157) (not bm!456153) (not bs!1376141) (not bm!456106) (not b!5840473) (not d!1835129) (not b!5840318) (not bm!456110) (not b!5840515) (not d!1835095) (not b!5840453) (not bs!1376137) (not bs!1376140) (not b!5840467) (not b!5840498) (not b!5839958) (not b!5840535) (not b!5840457) (not b!5839960) (not bs!1376136) (not b!5840458) (not b!5840462) (not d!1835097) (not b!5839835) (not b!5839942) (not d!1835059) (not b!5840067) (not b!5840392) (not b!5840459) (not b!5840502) (not b!5840438) (not b!5840523) (not b!5839963) (not b!5840445) (not b!5840510) (not d!1835089) (not bm!456138) (not d!1834977) (not b!5840519) (not b_lambda!219945) (not b!5840074) (not b!5840071) (not bm!456154) (not b!5840173) (not b!5839975) (not b!5839842) (not b!5840105) (not b!5840513) (not b!5840480) (not b!5840506) (not b!5840546) (not b!5840491) (not b!5840442) (not b!5840437) (not bm!456167) (not b!5840482) (not b!5840321) (not b!5840448) (not b!5840196) (not b!5839840) (not bm!456136) (not b!5840296) (not b!5840479) (not b!5840501) (not b!5840136) (not bm!456133))
(check-sat)
