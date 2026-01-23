; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549570 () Bool)

(assert start!549570)

(declare-fun b!5193081 () Bool)

(assert (=> b!5193081 true))

(assert (=> b!5193081 true))

(declare-fun lambda!259699 () Int)

(declare-fun lambda!259698 () Int)

(assert (=> b!5193081 (not (= lambda!259699 lambda!259698))))

(assert (=> b!5193081 true))

(assert (=> b!5193081 true))

(declare-fun b!5193075 () Bool)

(declare-fun res!2205800 () Bool)

(declare-fun e!3234523 () Bool)

(assert (=> b!5193075 (=> res!2205800 e!3234523)))

(declare-datatypes ((C!29756 0))(
  ( (C!29757 (val!24580 Int)) )
))
(declare-datatypes ((Regex!14743 0))(
  ( (ElementMatch!14743 (c!895122 C!29756)) (Concat!23588 (regOne!29998 Regex!14743) (regTwo!29998 Regex!14743)) (EmptyExpr!14743) (Star!14743 (reg!15072 Regex!14743)) (EmptyLang!14743) (Union!14743 (regOne!29999 Regex!14743) (regTwo!29999 Regex!14743)) )
))
(declare-fun r!7292 () Regex!14743)

(get-info :version)

(assert (=> b!5193075 (= res!2205800 (or ((_ is EmptyExpr!14743) r!7292) ((_ is EmptyLang!14743) r!7292) ((_ is ElementMatch!14743) r!7292) ((_ is Union!14743) r!7292) (not ((_ is Concat!23588) r!7292))))))

(declare-fun b!5193076 () Bool)

(declare-fun e!3234519 () Bool)

(assert (=> b!5193076 (= e!3234519 (not e!3234523))))

(declare-fun res!2205805 () Bool)

(assert (=> b!5193076 (=> res!2205805 e!3234523)))

(declare-datatypes ((List!60528 0))(
  ( (Nil!60404) (Cons!60404 (h!66852 Regex!14743) (t!373681 List!60528)) )
))
(declare-datatypes ((Context!8254 0))(
  ( (Context!8255 (exprs!4627 List!60528)) )
))
(declare-datatypes ((List!60529 0))(
  ( (Nil!60405) (Cons!60405 (h!66853 Context!8254) (t!373682 List!60529)) )
))
(declare-fun zl!343 () List!60529)

(assert (=> b!5193076 (= res!2205805 (not ((_ is Cons!60405) zl!343)))))

(declare-datatypes ((List!60530 0))(
  ( (Nil!60406) (Cons!60406 (h!66854 C!29756) (t!373683 List!60530)) )
))
(declare-fun s!2326 () List!60530)

(declare-fun matchR!6928 (Regex!14743 List!60530) Bool)

(declare-fun matchRSpec!1846 (Regex!14743 List!60530) Bool)

(assert (=> b!5193076 (= (matchR!6928 r!7292 s!2326) (matchRSpec!1846 r!7292 s!2326))))

(declare-datatypes ((Unit!152320 0))(
  ( (Unit!152321) )
))
(declare-fun lt!2138365 () Unit!152320)

(declare-fun mainMatchTheorem!1846 (Regex!14743 List!60530) Unit!152320)

(assert (=> b!5193076 (= lt!2138365 (mainMatchTheorem!1846 r!7292 s!2326))))

(declare-fun b!5193077 () Bool)

(declare-fun e!3234524 () Bool)

(declare-fun tp_is_empty!38739 () Bool)

(declare-fun tp!1456833 () Bool)

(assert (=> b!5193077 (= e!3234524 (and tp_is_empty!38739 tp!1456833))))

(declare-fun b!5193078 () Bool)

(declare-fun e!3234522 () Bool)

(declare-fun tp!1456830 () Bool)

(assert (=> b!5193078 (= e!3234522 tp!1456830)))

(declare-fun b!5193079 () Bool)

(declare-fun e!3234525 () Bool)

(declare-fun tp!1456829 () Bool)

(assert (=> b!5193079 (= e!3234525 tp!1456829)))

(declare-fun b!5193080 () Bool)

(declare-fun res!2205806 () Bool)

(assert (=> b!5193080 (=> res!2205806 e!3234523)))

(declare-fun generalisedUnion!672 (List!60528) Regex!14743)

(declare-fun unfocusZipperList!185 (List!60529) List!60528)

(assert (=> b!5193080 (= res!2205806 (not (= r!7292 (generalisedUnion!672 (unfocusZipperList!185 zl!343)))))))

(declare-fun validRegex!6479 (Regex!14743) Bool)

(assert (=> b!5193081 (= e!3234523 (validRegex!6479 (regOne!29998 r!7292)))))

(declare-fun Exists!1924 (Int) Bool)

(assert (=> b!5193081 (= (Exists!1924 lambda!259698) (Exists!1924 lambda!259699))))

(declare-fun lt!2138364 () Unit!152320)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!578 (Regex!14743 Regex!14743 List!60530) Unit!152320)

(assert (=> b!5193081 (= lt!2138364 (lemmaExistCutMatchRandMatchRSpecEquivalent!578 (regOne!29998 r!7292) (regTwo!29998 r!7292) s!2326))))

(declare-datatypes ((tuple2!63884 0))(
  ( (tuple2!63885 (_1!35245 List!60530) (_2!35245 List!60530)) )
))
(declare-datatypes ((Option!14854 0))(
  ( (None!14853) (Some!14853 (v!50882 tuple2!63884)) )
))
(declare-fun isDefined!11557 (Option!14854) Bool)

(declare-fun findConcatSeparation!1268 (Regex!14743 Regex!14743 List!60530 List!60530 List!60530) Option!14854)

(assert (=> b!5193081 (= (isDefined!11557 (findConcatSeparation!1268 (regOne!29998 r!7292) (regTwo!29998 r!7292) Nil!60406 s!2326 s!2326)) (Exists!1924 lambda!259698))))

(declare-fun lt!2138363 () Unit!152320)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1032 (Regex!14743 Regex!14743 List!60530) Unit!152320)

(assert (=> b!5193081 (= lt!2138363 (lemmaFindConcatSeparationEquivalentToExists!1032 (regOne!29998 r!7292) (regTwo!29998 r!7292) s!2326))))

(declare-fun b!5193082 () Bool)

(declare-fun e!3234520 () Bool)

(declare-fun tp!1456828 () Bool)

(declare-fun tp!1456831 () Bool)

(assert (=> b!5193082 (= e!3234520 (and tp!1456828 tp!1456831))))

(declare-fun e!3234521 () Bool)

(declare-fun b!5193083 () Bool)

(declare-fun tp!1456827 () Bool)

(declare-fun inv!80104 (Context!8254) Bool)

(assert (=> b!5193083 (= e!3234521 (and (inv!80104 (h!66853 zl!343)) e!3234525 tp!1456827))))

(declare-fun b!5193084 () Bool)

(declare-fun res!2205804 () Bool)

(assert (=> b!5193084 (=> (not res!2205804) (not e!3234519))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8254))

(declare-fun toList!8527 ((InoxSet Context!8254)) List!60529)

(assert (=> b!5193084 (= res!2205804 (= (toList!8527 z!1189) zl!343))))

(declare-fun res!2205802 () Bool)

(assert (=> start!549570 (=> (not res!2205802) (not e!3234519))))

(assert (=> start!549570 (= res!2205802 (validRegex!6479 r!7292))))

(assert (=> start!549570 e!3234519))

(assert (=> start!549570 e!3234520))

(declare-fun condSetEmpty!32824 () Bool)

(assert (=> start!549570 (= condSetEmpty!32824 (= z!1189 ((as const (Array Context!8254 Bool)) false)))))

(declare-fun setRes!32824 () Bool)

(assert (=> start!549570 setRes!32824))

(assert (=> start!549570 e!3234521))

(assert (=> start!549570 e!3234524))

(declare-fun b!5193085 () Bool)

(declare-fun tp!1456824 () Bool)

(assert (=> b!5193085 (= e!3234520 tp!1456824)))

(declare-fun setIsEmpty!32824 () Bool)

(assert (=> setIsEmpty!32824 setRes!32824))

(declare-fun b!5193086 () Bool)

(assert (=> b!5193086 (= e!3234520 tp_is_empty!38739)))

(declare-fun setElem!32824 () Context!8254)

(declare-fun setNonEmpty!32824 () Bool)

(declare-fun tp!1456826 () Bool)

(assert (=> setNonEmpty!32824 (= setRes!32824 (and tp!1456826 (inv!80104 setElem!32824) e!3234522))))

(declare-fun setRest!32824 () (InoxSet Context!8254))

(assert (=> setNonEmpty!32824 (= z!1189 ((_ map or) (store ((as const (Array Context!8254 Bool)) false) setElem!32824 true) setRest!32824))))

(declare-fun b!5193087 () Bool)

(declare-fun res!2205807 () Bool)

(assert (=> b!5193087 (=> res!2205807 e!3234523)))

(assert (=> b!5193087 (= res!2205807 (not ((_ is Cons!60404) (exprs!4627 (h!66853 zl!343)))))))

(declare-fun b!5193088 () Bool)

(declare-fun res!2205808 () Bool)

(assert (=> b!5193088 (=> res!2205808 e!3234523)))

(declare-fun isEmpty!32332 (List!60529) Bool)

(assert (=> b!5193088 (= res!2205808 (not (isEmpty!32332 (t!373682 zl!343))))))

(declare-fun b!5193089 () Bool)

(declare-fun res!2205803 () Bool)

(assert (=> b!5193089 (=> (not res!2205803) (not e!3234519))))

(declare-fun unfocusZipper!485 (List!60529) Regex!14743)

(assert (=> b!5193089 (= res!2205803 (= r!7292 (unfocusZipper!485 zl!343)))))

(declare-fun b!5193090 () Bool)

(declare-fun tp!1456832 () Bool)

(declare-fun tp!1456825 () Bool)

(assert (=> b!5193090 (= e!3234520 (and tp!1456832 tp!1456825))))

(declare-fun b!5193091 () Bool)

(declare-fun res!2205801 () Bool)

(assert (=> b!5193091 (=> res!2205801 e!3234523)))

(declare-fun generalisedConcat!412 (List!60528) Regex!14743)

(assert (=> b!5193091 (= res!2205801 (not (= r!7292 (generalisedConcat!412 (exprs!4627 (h!66853 zl!343))))))))

(assert (= (and start!549570 res!2205802) b!5193084))

(assert (= (and b!5193084 res!2205804) b!5193089))

(assert (= (and b!5193089 res!2205803) b!5193076))

(assert (= (and b!5193076 (not res!2205805)) b!5193088))

(assert (= (and b!5193088 (not res!2205808)) b!5193091))

(assert (= (and b!5193091 (not res!2205801)) b!5193087))

(assert (= (and b!5193087 (not res!2205807)) b!5193080))

(assert (= (and b!5193080 (not res!2205806)) b!5193075))

(assert (= (and b!5193075 (not res!2205800)) b!5193081))

(assert (= (and start!549570 ((_ is ElementMatch!14743) r!7292)) b!5193086))

(assert (= (and start!549570 ((_ is Concat!23588) r!7292)) b!5193082))

(assert (= (and start!549570 ((_ is Star!14743) r!7292)) b!5193085))

(assert (= (and start!549570 ((_ is Union!14743) r!7292)) b!5193090))

(assert (= (and start!549570 condSetEmpty!32824) setIsEmpty!32824))

(assert (= (and start!549570 (not condSetEmpty!32824)) setNonEmpty!32824))

(assert (= setNonEmpty!32824 b!5193078))

(assert (= b!5193083 b!5193079))

(assert (= (and start!549570 ((_ is Cons!60405) zl!343)) b!5193083))

(assert (= (and start!549570 ((_ is Cons!60406) s!2326)) b!5193077))

(declare-fun m!6248576 () Bool)

(assert (=> b!5193088 m!6248576))

(declare-fun m!6248578 () Bool)

(assert (=> b!5193084 m!6248578))

(declare-fun m!6248580 () Bool)

(assert (=> b!5193081 m!6248580))

(declare-fun m!6248582 () Bool)

(assert (=> b!5193081 m!6248582))

(assert (=> b!5193081 m!6248580))

(declare-fun m!6248584 () Bool)

(assert (=> b!5193081 m!6248584))

(declare-fun m!6248586 () Bool)

(assert (=> b!5193081 m!6248586))

(declare-fun m!6248588 () Bool)

(assert (=> b!5193081 m!6248588))

(declare-fun m!6248590 () Bool)

(assert (=> b!5193081 m!6248590))

(assert (=> b!5193081 m!6248586))

(declare-fun m!6248592 () Bool)

(assert (=> b!5193081 m!6248592))

(declare-fun m!6248594 () Bool)

(assert (=> b!5193089 m!6248594))

(declare-fun m!6248596 () Bool)

(assert (=> b!5193083 m!6248596))

(declare-fun m!6248598 () Bool)

(assert (=> b!5193091 m!6248598))

(declare-fun m!6248600 () Bool)

(assert (=> setNonEmpty!32824 m!6248600))

(declare-fun m!6248602 () Bool)

(assert (=> b!5193076 m!6248602))

(declare-fun m!6248604 () Bool)

(assert (=> b!5193076 m!6248604))

(declare-fun m!6248606 () Bool)

(assert (=> b!5193076 m!6248606))

(declare-fun m!6248608 () Bool)

(assert (=> start!549570 m!6248608))

(declare-fun m!6248610 () Bool)

(assert (=> b!5193080 m!6248610))

(assert (=> b!5193080 m!6248610))

(declare-fun m!6248612 () Bool)

(assert (=> b!5193080 m!6248612))

(check-sat (not b!5193077) (not b!5193076) (not b!5193091) (not b!5193082) (not setNonEmpty!32824) (not b!5193079) (not b!5193083) tp_is_empty!38739 (not b!5193088) (not b!5193078) (not b!5193089) (not b!5193081) (not b!5193080) (not b!5193084) (not b!5193085) (not b!5193090) (not start!549570))
(check-sat)
(get-model)

(declare-fun d!1676931 () Bool)

(assert (=> d!1676931 (= (isEmpty!32332 (t!373682 zl!343)) ((_ is Nil!60405) (t!373682 zl!343)))))

(assert (=> b!5193088 d!1676931))

(declare-fun d!1676935 () Bool)

(declare-fun e!3234531 () Bool)

(assert (=> d!1676935 e!3234531))

(declare-fun res!2205814 () Bool)

(assert (=> d!1676935 (=> (not res!2205814) (not e!3234531))))

(declare-fun lt!2138371 () List!60529)

(declare-fun noDuplicate!1160 (List!60529) Bool)

(assert (=> d!1676935 (= res!2205814 (noDuplicate!1160 lt!2138371))))

(declare-fun choose!38574 ((InoxSet Context!8254)) List!60529)

(assert (=> d!1676935 (= lt!2138371 (choose!38574 z!1189))))

(assert (=> d!1676935 (= (toList!8527 z!1189) lt!2138371)))

(declare-fun b!5193101 () Bool)

(declare-fun content!10696 (List!60529) (InoxSet Context!8254))

(assert (=> b!5193101 (= e!3234531 (= (content!10696 lt!2138371) z!1189))))

(assert (= (and d!1676935 res!2205814) b!5193101))

(declare-fun m!6248622 () Bool)

(assert (=> d!1676935 m!6248622))

(declare-fun m!6248624 () Bool)

(assert (=> d!1676935 m!6248624))

(declare-fun m!6248626 () Bool)

(assert (=> b!5193101 m!6248626))

(assert (=> b!5193084 d!1676935))

(declare-fun b!5193220 () Bool)

(declare-fun e!3234598 () Bool)

(declare-fun lt!2138392 () Option!14854)

(declare-fun ++!13183 (List!60530 List!60530) List!60530)

(declare-fun get!20760 (Option!14854) tuple2!63884)

(assert (=> b!5193220 (= e!3234598 (= (++!13183 (_1!35245 (get!20760 lt!2138392)) (_2!35245 (get!20760 lt!2138392))) s!2326))))

(declare-fun b!5193221 () Bool)

(declare-fun e!3234602 () Option!14854)

(declare-fun e!3234599 () Option!14854)

(assert (=> b!5193221 (= e!3234602 e!3234599)))

(declare-fun c!895159 () Bool)

(assert (=> b!5193221 (= c!895159 ((_ is Nil!60406) s!2326))))

(declare-fun b!5193222 () Bool)

(assert (=> b!5193222 (= e!3234602 (Some!14853 (tuple2!63885 Nil!60406 s!2326)))))

(declare-fun b!5193223 () Bool)

(declare-fun e!3234600 () Bool)

(assert (=> b!5193223 (= e!3234600 (matchR!6928 (regTwo!29998 r!7292) s!2326))))

(declare-fun b!5193224 () Bool)

(declare-fun lt!2138391 () Unit!152320)

(declare-fun lt!2138390 () Unit!152320)

(assert (=> b!5193224 (= lt!2138391 lt!2138390)))

(assert (=> b!5193224 (= (++!13183 (++!13183 Nil!60406 (Cons!60406 (h!66854 s!2326) Nil!60406)) (t!373683 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1598 (List!60530 C!29756 List!60530 List!60530) Unit!152320)

(assert (=> b!5193224 (= lt!2138390 (lemmaMoveElementToOtherListKeepsConcatEq!1598 Nil!60406 (h!66854 s!2326) (t!373683 s!2326) s!2326))))

(assert (=> b!5193224 (= e!3234599 (findConcatSeparation!1268 (regOne!29998 r!7292) (regTwo!29998 r!7292) (++!13183 Nil!60406 (Cons!60406 (h!66854 s!2326) Nil!60406)) (t!373683 s!2326) s!2326))))

(declare-fun b!5193225 () Bool)

(assert (=> b!5193225 (= e!3234599 None!14853)))

(declare-fun b!5193227 () Bool)

(declare-fun e!3234601 () Bool)

(assert (=> b!5193227 (= e!3234601 (not (isDefined!11557 lt!2138392)))))

(declare-fun b!5193228 () Bool)

(declare-fun res!2205864 () Bool)

(assert (=> b!5193228 (=> (not res!2205864) (not e!3234598))))

(assert (=> b!5193228 (= res!2205864 (matchR!6928 (regOne!29998 r!7292) (_1!35245 (get!20760 lt!2138392))))))

(declare-fun d!1676939 () Bool)

(assert (=> d!1676939 e!3234601))

(declare-fun res!2205861 () Bool)

(assert (=> d!1676939 (=> res!2205861 e!3234601)))

(assert (=> d!1676939 (= res!2205861 e!3234598)))

(declare-fun res!2205865 () Bool)

(assert (=> d!1676939 (=> (not res!2205865) (not e!3234598))))

(assert (=> d!1676939 (= res!2205865 (isDefined!11557 lt!2138392))))

(assert (=> d!1676939 (= lt!2138392 e!3234602)))

(declare-fun c!895160 () Bool)

(assert (=> d!1676939 (= c!895160 e!3234600)))

(declare-fun res!2205862 () Bool)

(assert (=> d!1676939 (=> (not res!2205862) (not e!3234600))))

(assert (=> d!1676939 (= res!2205862 (matchR!6928 (regOne!29998 r!7292) Nil!60406))))

(assert (=> d!1676939 (validRegex!6479 (regOne!29998 r!7292))))

(assert (=> d!1676939 (= (findConcatSeparation!1268 (regOne!29998 r!7292) (regTwo!29998 r!7292) Nil!60406 s!2326 s!2326) lt!2138392)))

(declare-fun b!5193226 () Bool)

(declare-fun res!2205863 () Bool)

(assert (=> b!5193226 (=> (not res!2205863) (not e!3234598))))

(assert (=> b!5193226 (= res!2205863 (matchR!6928 (regTwo!29998 r!7292) (_2!35245 (get!20760 lt!2138392))))))

(assert (= (and d!1676939 res!2205862) b!5193223))

(assert (= (and d!1676939 c!895160) b!5193222))

(assert (= (and d!1676939 (not c!895160)) b!5193221))

(assert (= (and b!5193221 c!895159) b!5193225))

(assert (= (and b!5193221 (not c!895159)) b!5193224))

(assert (= (and d!1676939 res!2205865) b!5193228))

(assert (= (and b!5193228 res!2205864) b!5193226))

(assert (= (and b!5193226 res!2205863) b!5193220))

(assert (= (and d!1676939 (not res!2205861)) b!5193227))

(declare-fun m!6248670 () Bool)

(assert (=> b!5193224 m!6248670))

(assert (=> b!5193224 m!6248670))

(declare-fun m!6248672 () Bool)

(assert (=> b!5193224 m!6248672))

(declare-fun m!6248674 () Bool)

(assert (=> b!5193224 m!6248674))

(assert (=> b!5193224 m!6248670))

(declare-fun m!6248676 () Bool)

(assert (=> b!5193224 m!6248676))

(declare-fun m!6248678 () Bool)

(assert (=> b!5193228 m!6248678))

(declare-fun m!6248680 () Bool)

(assert (=> b!5193228 m!6248680))

(declare-fun m!6248682 () Bool)

(assert (=> b!5193223 m!6248682))

(assert (=> b!5193220 m!6248678))

(declare-fun m!6248684 () Bool)

(assert (=> b!5193220 m!6248684))

(declare-fun m!6248686 () Bool)

(assert (=> b!5193227 m!6248686))

(assert (=> b!5193226 m!6248678))

(declare-fun m!6248688 () Bool)

(assert (=> b!5193226 m!6248688))

(assert (=> d!1676939 m!6248686))

(declare-fun m!6248690 () Bool)

(assert (=> d!1676939 m!6248690))

(assert (=> d!1676939 m!6248582))

(assert (=> b!5193081 d!1676939))

(declare-fun bm!365110 () Bool)

(declare-fun call!365115 () Bool)

(declare-fun call!365116 () Bool)

(assert (=> bm!365110 (= call!365115 call!365116)))

(declare-fun b!5193268 () Bool)

(declare-fun e!3234632 () Bool)

(assert (=> b!5193268 (= e!3234632 call!365116)))

(declare-fun b!5193269 () Bool)

(declare-fun e!3234629 () Bool)

(declare-fun call!365117 () Bool)

(assert (=> b!5193269 (= e!3234629 call!365117)))

(declare-fun b!5193270 () Bool)

(declare-fun e!3234633 () Bool)

(assert (=> b!5193270 (= e!3234633 call!365117)))

(declare-fun b!5193271 () Bool)

(declare-fun e!3234630 () Bool)

(declare-fun e!3234628 () Bool)

(assert (=> b!5193271 (= e!3234630 e!3234628)))

(declare-fun c!895170 () Bool)

(assert (=> b!5193271 (= c!895170 ((_ is Star!14743) (regOne!29998 r!7292)))))

(declare-fun b!5193272 () Bool)

(declare-fun e!3234631 () Bool)

(assert (=> b!5193272 (= e!3234631 e!3234629)))

(declare-fun res!2205891 () Bool)

(assert (=> b!5193272 (=> (not res!2205891) (not e!3234629))))

(assert (=> b!5193272 (= res!2205891 call!365115)))

(declare-fun b!5193273 () Bool)

(declare-fun res!2205889 () Bool)

(assert (=> b!5193273 (=> (not res!2205889) (not e!3234633))))

(assert (=> b!5193273 (= res!2205889 call!365115)))

(declare-fun e!3234634 () Bool)

(assert (=> b!5193273 (= e!3234634 e!3234633)))

(declare-fun d!1676951 () Bool)

(declare-fun res!2205893 () Bool)

(assert (=> d!1676951 (=> res!2205893 e!3234630)))

(assert (=> d!1676951 (= res!2205893 ((_ is ElementMatch!14743) (regOne!29998 r!7292)))))

(assert (=> d!1676951 (= (validRegex!6479 (regOne!29998 r!7292)) e!3234630)))

(declare-fun bm!365111 () Bool)

(declare-fun c!895169 () Bool)

(assert (=> bm!365111 (= call!365117 (validRegex!6479 (ite c!895169 (regTwo!29999 (regOne!29998 r!7292)) (regTwo!29998 (regOne!29998 r!7292)))))))

(declare-fun bm!365112 () Bool)

(assert (=> bm!365112 (= call!365116 (validRegex!6479 (ite c!895170 (reg!15072 (regOne!29998 r!7292)) (ite c!895169 (regOne!29999 (regOne!29998 r!7292)) (regOne!29998 (regOne!29998 r!7292))))))))

(declare-fun b!5193274 () Bool)

(assert (=> b!5193274 (= e!3234628 e!3234632)))

(declare-fun res!2205890 () Bool)

(declare-fun nullable!4924 (Regex!14743) Bool)

(assert (=> b!5193274 (= res!2205890 (not (nullable!4924 (reg!15072 (regOne!29998 r!7292)))))))

(assert (=> b!5193274 (=> (not res!2205890) (not e!3234632))))

(declare-fun b!5193275 () Bool)

(assert (=> b!5193275 (= e!3234628 e!3234634)))

(assert (=> b!5193275 (= c!895169 ((_ is Union!14743) (regOne!29998 r!7292)))))

(declare-fun b!5193276 () Bool)

(declare-fun res!2205892 () Bool)

(assert (=> b!5193276 (=> res!2205892 e!3234631)))

(assert (=> b!5193276 (= res!2205892 (not ((_ is Concat!23588) (regOne!29998 r!7292))))))

(assert (=> b!5193276 (= e!3234634 e!3234631)))

(assert (= (and d!1676951 (not res!2205893)) b!5193271))

(assert (= (and b!5193271 c!895170) b!5193274))

(assert (= (and b!5193271 (not c!895170)) b!5193275))

(assert (= (and b!5193274 res!2205890) b!5193268))

(assert (= (and b!5193275 c!895169) b!5193273))

(assert (= (and b!5193275 (not c!895169)) b!5193276))

(assert (= (and b!5193273 res!2205889) b!5193270))

(assert (= (and b!5193276 (not res!2205892)) b!5193272))

(assert (= (and b!5193272 res!2205891) b!5193269))

(assert (= (or b!5193270 b!5193269) bm!365111))

(assert (= (or b!5193273 b!5193272) bm!365110))

(assert (= (or b!5193268 bm!365110) bm!365112))

(declare-fun m!6248698 () Bool)

(assert (=> bm!365111 m!6248698))

(declare-fun m!6248700 () Bool)

(assert (=> bm!365112 m!6248700))

(declare-fun m!6248702 () Bool)

(assert (=> b!5193274 m!6248702))

(assert (=> b!5193081 d!1676951))

(declare-fun d!1676955 () Bool)

(declare-fun choose!38577 (Int) Bool)

(assert (=> d!1676955 (= (Exists!1924 lambda!259699) (choose!38577 lambda!259699))))

(declare-fun bs!1208743 () Bool)

(assert (= bs!1208743 d!1676955))

(declare-fun m!6248706 () Bool)

(assert (=> bs!1208743 m!6248706))

(assert (=> b!5193081 d!1676955))

(declare-fun d!1676959 () Bool)

(assert (=> d!1676959 (= (Exists!1924 lambda!259698) (choose!38577 lambda!259698))))

(declare-fun bs!1208744 () Bool)

(assert (= bs!1208744 d!1676959))

(declare-fun m!6248708 () Bool)

(assert (=> bs!1208744 m!6248708))

(assert (=> b!5193081 d!1676959))

(declare-fun bs!1208746 () Bool)

(declare-fun d!1676961 () Bool)

(assert (= bs!1208746 (and d!1676961 b!5193081)))

(declare-fun lambda!259718 () Int)

(assert (=> bs!1208746 (= lambda!259718 lambda!259698)))

(assert (=> bs!1208746 (not (= lambda!259718 lambda!259699))))

(assert (=> d!1676961 true))

(assert (=> d!1676961 true))

(assert (=> d!1676961 true))

(assert (=> d!1676961 (= (isDefined!11557 (findConcatSeparation!1268 (regOne!29998 r!7292) (regTwo!29998 r!7292) Nil!60406 s!2326 s!2326)) (Exists!1924 lambda!259718))))

(declare-fun lt!2138404 () Unit!152320)

(declare-fun choose!38578 (Regex!14743 Regex!14743 List!60530) Unit!152320)

(assert (=> d!1676961 (= lt!2138404 (choose!38578 (regOne!29998 r!7292) (regTwo!29998 r!7292) s!2326))))

(assert (=> d!1676961 (validRegex!6479 (regOne!29998 r!7292))))

(assert (=> d!1676961 (= (lemmaFindConcatSeparationEquivalentToExists!1032 (regOne!29998 r!7292) (regTwo!29998 r!7292) s!2326) lt!2138404)))

(declare-fun bs!1208747 () Bool)

(assert (= bs!1208747 d!1676961))

(assert (=> bs!1208747 m!6248586))

(assert (=> bs!1208747 m!6248588))

(declare-fun m!6248718 () Bool)

(assert (=> bs!1208747 m!6248718))

(assert (=> bs!1208747 m!6248586))

(declare-fun m!6248720 () Bool)

(assert (=> bs!1208747 m!6248720))

(assert (=> bs!1208747 m!6248582))

(assert (=> b!5193081 d!1676961))

(declare-fun bs!1208753 () Bool)

(declare-fun d!1676967 () Bool)

(assert (= bs!1208753 (and d!1676967 b!5193081)))

(declare-fun lambda!259726 () Int)

(assert (=> bs!1208753 (= lambda!259726 lambda!259698)))

(assert (=> bs!1208753 (not (= lambda!259726 lambda!259699))))

(declare-fun bs!1208754 () Bool)

(assert (= bs!1208754 (and d!1676967 d!1676961)))

(assert (=> bs!1208754 (= lambda!259726 lambda!259718)))

(assert (=> d!1676967 true))

(assert (=> d!1676967 true))

(assert (=> d!1676967 true))

(declare-fun lambda!259729 () Int)

(assert (=> bs!1208753 (not (= lambda!259729 lambda!259698))))

(assert (=> bs!1208753 (= lambda!259729 lambda!259699)))

(assert (=> bs!1208754 (not (= lambda!259729 lambda!259718))))

(declare-fun bs!1208755 () Bool)

(assert (= bs!1208755 d!1676967))

(assert (=> bs!1208755 (not (= lambda!259729 lambda!259726))))

(assert (=> d!1676967 true))

(assert (=> d!1676967 true))

(assert (=> d!1676967 true))

(assert (=> d!1676967 (= (Exists!1924 lambda!259726) (Exists!1924 lambda!259729))))

(declare-fun lt!2138413 () Unit!152320)

(declare-fun choose!38579 (Regex!14743 Regex!14743 List!60530) Unit!152320)

(assert (=> d!1676967 (= lt!2138413 (choose!38579 (regOne!29998 r!7292) (regTwo!29998 r!7292) s!2326))))

(assert (=> d!1676967 (validRegex!6479 (regOne!29998 r!7292))))

(assert (=> d!1676967 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!578 (regOne!29998 r!7292) (regTwo!29998 r!7292) s!2326) lt!2138413)))

(declare-fun m!6248756 () Bool)

(assert (=> bs!1208755 m!6248756))

(declare-fun m!6248758 () Bool)

(assert (=> bs!1208755 m!6248758))

(declare-fun m!6248760 () Bool)

(assert (=> bs!1208755 m!6248760))

(assert (=> bs!1208755 m!6248582))

(assert (=> b!5193081 d!1676967))

(declare-fun d!1676977 () Bool)

(declare-fun isEmpty!32336 (Option!14854) Bool)

(assert (=> d!1676977 (= (isDefined!11557 (findConcatSeparation!1268 (regOne!29998 r!7292) (regTwo!29998 r!7292) Nil!60406 s!2326 s!2326)) (not (isEmpty!32336 (findConcatSeparation!1268 (regOne!29998 r!7292) (regTwo!29998 r!7292) Nil!60406 s!2326 s!2326))))))

(declare-fun bs!1208756 () Bool)

(assert (= bs!1208756 d!1676977))

(assert (=> bs!1208756 m!6248586))

(declare-fun m!6248762 () Bool)

(assert (=> bs!1208756 m!6248762))

(assert (=> b!5193081 d!1676977))

(declare-fun b!5193420 () Bool)

(declare-fun e!3234727 () Bool)

(declare-fun isEmpty!32337 (List!60528) Bool)

(assert (=> b!5193420 (= e!3234727 (isEmpty!32337 (t!373681 (unfocusZipperList!185 zl!343))))))

(declare-fun b!5193421 () Bool)

(declare-fun e!3234722 () Regex!14743)

(assert (=> b!5193421 (= e!3234722 EmptyLang!14743)))

(declare-fun b!5193422 () Bool)

(declare-fun e!3234725 () Bool)

(declare-fun lt!2138422 () Regex!14743)

(declare-fun isUnion!182 (Regex!14743) Bool)

(assert (=> b!5193422 (= e!3234725 (isUnion!182 lt!2138422))))

(declare-fun d!1676979 () Bool)

(declare-fun e!3234723 () Bool)

(assert (=> d!1676979 e!3234723))

(declare-fun res!2205963 () Bool)

(assert (=> d!1676979 (=> (not res!2205963) (not e!3234723))))

(assert (=> d!1676979 (= res!2205963 (validRegex!6479 lt!2138422))))

(declare-fun e!3234726 () Regex!14743)

(assert (=> d!1676979 (= lt!2138422 e!3234726)))

(declare-fun c!895207 () Bool)

(assert (=> d!1676979 (= c!895207 e!3234727)))

(declare-fun res!2205964 () Bool)

(assert (=> d!1676979 (=> (not res!2205964) (not e!3234727))))

(assert (=> d!1676979 (= res!2205964 ((_ is Cons!60404) (unfocusZipperList!185 zl!343)))))

(declare-fun lambda!259739 () Int)

(declare-fun forall!14212 (List!60528 Int) Bool)

(assert (=> d!1676979 (forall!14212 (unfocusZipperList!185 zl!343) lambda!259739)))

(assert (=> d!1676979 (= (generalisedUnion!672 (unfocusZipperList!185 zl!343)) lt!2138422)))

(declare-fun b!5193423 () Bool)

(assert (=> b!5193423 (= e!3234722 (Union!14743 (h!66852 (unfocusZipperList!185 zl!343)) (generalisedUnion!672 (t!373681 (unfocusZipperList!185 zl!343)))))))

(declare-fun b!5193424 () Bool)

(assert (=> b!5193424 (= e!3234726 e!3234722)))

(declare-fun c!895208 () Bool)

(assert (=> b!5193424 (= c!895208 ((_ is Cons!60404) (unfocusZipperList!185 zl!343)))))

(declare-fun b!5193425 () Bool)

(declare-fun e!3234724 () Bool)

(declare-fun isEmptyLang!750 (Regex!14743) Bool)

(assert (=> b!5193425 (= e!3234724 (isEmptyLang!750 lt!2138422))))

(declare-fun b!5193426 () Bool)

(assert (=> b!5193426 (= e!3234723 e!3234724)))

(declare-fun c!895206 () Bool)

(assert (=> b!5193426 (= c!895206 (isEmpty!32337 (unfocusZipperList!185 zl!343)))))

(declare-fun b!5193427 () Bool)

(assert (=> b!5193427 (= e!3234726 (h!66852 (unfocusZipperList!185 zl!343)))))

(declare-fun b!5193428 () Bool)

(assert (=> b!5193428 (= e!3234724 e!3234725)))

(declare-fun c!895205 () Bool)

(declare-fun tail!10224 (List!60528) List!60528)

(assert (=> b!5193428 (= c!895205 (isEmpty!32337 (tail!10224 (unfocusZipperList!185 zl!343))))))

(declare-fun b!5193429 () Bool)

(declare-fun head!11127 (List!60528) Regex!14743)

(assert (=> b!5193429 (= e!3234725 (= lt!2138422 (head!11127 (unfocusZipperList!185 zl!343))))))

(assert (= (and d!1676979 res!2205964) b!5193420))

(assert (= (and d!1676979 c!895207) b!5193427))

(assert (= (and d!1676979 (not c!895207)) b!5193424))

(assert (= (and b!5193424 c!895208) b!5193423))

(assert (= (and b!5193424 (not c!895208)) b!5193421))

(assert (= (and d!1676979 res!2205963) b!5193426))

(assert (= (and b!5193426 c!895206) b!5193425))

(assert (= (and b!5193426 (not c!895206)) b!5193428))

(assert (= (and b!5193428 c!895205) b!5193429))

(assert (= (and b!5193428 (not c!895205)) b!5193422))

(assert (=> b!5193428 m!6248610))

(declare-fun m!6248792 () Bool)

(assert (=> b!5193428 m!6248792))

(assert (=> b!5193428 m!6248792))

(declare-fun m!6248794 () Bool)

(assert (=> b!5193428 m!6248794))

(declare-fun m!6248796 () Bool)

(assert (=> b!5193420 m!6248796))

(declare-fun m!6248798 () Bool)

(assert (=> d!1676979 m!6248798))

(assert (=> d!1676979 m!6248610))

(declare-fun m!6248800 () Bool)

(assert (=> d!1676979 m!6248800))

(declare-fun m!6248802 () Bool)

(assert (=> b!5193423 m!6248802))

(assert (=> b!5193426 m!6248610))

(declare-fun m!6248804 () Bool)

(assert (=> b!5193426 m!6248804))

(declare-fun m!6248806 () Bool)

(assert (=> b!5193425 m!6248806))

(declare-fun m!6248808 () Bool)

(assert (=> b!5193422 m!6248808))

(assert (=> b!5193429 m!6248610))

(declare-fun m!6248810 () Bool)

(assert (=> b!5193429 m!6248810))

(assert (=> b!5193080 d!1676979))

(declare-fun bs!1208767 () Bool)

(declare-fun d!1676985 () Bool)

(assert (= bs!1208767 (and d!1676985 d!1676979)))

(declare-fun lambda!259742 () Int)

(assert (=> bs!1208767 (= lambda!259742 lambda!259739)))

(declare-fun lt!2138425 () List!60528)

(assert (=> d!1676985 (forall!14212 lt!2138425 lambda!259742)))

(declare-fun e!3234749 () List!60528)

(assert (=> d!1676985 (= lt!2138425 e!3234749)))

(declare-fun c!895211 () Bool)

(assert (=> d!1676985 (= c!895211 ((_ is Cons!60405) zl!343))))

(assert (=> d!1676985 (= (unfocusZipperList!185 zl!343) lt!2138425)))

(declare-fun b!5193473 () Bool)

(assert (=> b!5193473 (= e!3234749 (Cons!60404 (generalisedConcat!412 (exprs!4627 (h!66853 zl!343))) (unfocusZipperList!185 (t!373682 zl!343))))))

(declare-fun b!5193475 () Bool)

(assert (=> b!5193475 (= e!3234749 Nil!60404)))

(assert (= (and d!1676985 c!895211) b!5193473))

(assert (= (and d!1676985 (not c!895211)) b!5193475))

(declare-fun m!6248816 () Bool)

(assert (=> d!1676985 m!6248816))

(assert (=> b!5193473 m!6248598))

(declare-fun m!6248818 () Bool)

(assert (=> b!5193473 m!6248818))

(assert (=> b!5193080 d!1676985))

(declare-fun d!1676987 () Bool)

(declare-fun lt!2138428 () Regex!14743)

(assert (=> d!1676987 (validRegex!6479 lt!2138428)))

(assert (=> d!1676987 (= lt!2138428 (generalisedUnion!672 (unfocusZipperList!185 zl!343)))))

(assert (=> d!1676987 (= (unfocusZipper!485 zl!343) lt!2138428)))

(declare-fun bs!1208768 () Bool)

(assert (= bs!1208768 d!1676987))

(declare-fun m!6248820 () Bool)

(assert (=> bs!1208768 m!6248820))

(assert (=> bs!1208768 m!6248610))

(assert (=> bs!1208768 m!6248610))

(assert (=> bs!1208768 m!6248612))

(assert (=> b!5193089 d!1676987))

(declare-fun bs!1208769 () Bool)

(declare-fun d!1676989 () Bool)

(assert (= bs!1208769 (and d!1676989 d!1676979)))

(declare-fun lambda!259745 () Int)

(assert (=> bs!1208769 (= lambda!259745 lambda!259739)))

(declare-fun bs!1208770 () Bool)

(assert (= bs!1208770 (and d!1676989 d!1676985)))

(assert (=> bs!1208770 (= lambda!259745 lambda!259742)))

(declare-fun b!5193504 () Bool)

(declare-fun e!3234768 () Bool)

(declare-fun lt!2138431 () Regex!14743)

(assert (=> b!5193504 (= e!3234768 (= lt!2138431 (head!11127 (exprs!4627 (h!66853 zl!343)))))))

(declare-fun b!5193505 () Bool)

(declare-fun e!3234766 () Regex!14743)

(assert (=> b!5193505 (= e!3234766 EmptyExpr!14743)))

(declare-fun b!5193506 () Bool)

(declare-fun isConcat!263 (Regex!14743) Bool)

(assert (=> b!5193506 (= e!3234768 (isConcat!263 lt!2138431))))

(declare-fun b!5193507 () Bool)

(declare-fun e!3234765 () Regex!14743)

(assert (=> b!5193507 (= e!3234765 e!3234766)))

(declare-fun c!895220 () Bool)

(assert (=> b!5193507 (= c!895220 ((_ is Cons!60404) (exprs!4627 (h!66853 zl!343))))))

(declare-fun b!5193508 () Bool)

(declare-fun e!3234769 () Bool)

(declare-fun isEmptyExpr!740 (Regex!14743) Bool)

(assert (=> b!5193508 (= e!3234769 (isEmptyExpr!740 lt!2138431))))

(declare-fun b!5193509 () Bool)

(assert (=> b!5193509 (= e!3234769 e!3234768)))

(declare-fun c!895223 () Bool)

(assert (=> b!5193509 (= c!895223 (isEmpty!32337 (tail!10224 (exprs!4627 (h!66853 zl!343)))))))

(declare-fun e!3234767 () Bool)

(assert (=> d!1676989 e!3234767))

(declare-fun res!2205970 () Bool)

(assert (=> d!1676989 (=> (not res!2205970) (not e!3234767))))

(assert (=> d!1676989 (= res!2205970 (validRegex!6479 lt!2138431))))

(assert (=> d!1676989 (= lt!2138431 e!3234765)))

(declare-fun c!895221 () Bool)

(declare-fun e!3234764 () Bool)

(assert (=> d!1676989 (= c!895221 e!3234764)))

(declare-fun res!2205969 () Bool)

(assert (=> d!1676989 (=> (not res!2205969) (not e!3234764))))

(assert (=> d!1676989 (= res!2205969 ((_ is Cons!60404) (exprs!4627 (h!66853 zl!343))))))

(assert (=> d!1676989 (forall!14212 (exprs!4627 (h!66853 zl!343)) lambda!259745)))

(assert (=> d!1676989 (= (generalisedConcat!412 (exprs!4627 (h!66853 zl!343))) lt!2138431)))

(declare-fun b!5193510 () Bool)

(assert (=> b!5193510 (= e!3234764 (isEmpty!32337 (t!373681 (exprs!4627 (h!66853 zl!343)))))))

(declare-fun b!5193511 () Bool)

(assert (=> b!5193511 (= e!3234767 e!3234769)))

(declare-fun c!895222 () Bool)

(assert (=> b!5193511 (= c!895222 (isEmpty!32337 (exprs!4627 (h!66853 zl!343))))))

(declare-fun b!5193512 () Bool)

(assert (=> b!5193512 (= e!3234766 (Concat!23588 (h!66852 (exprs!4627 (h!66853 zl!343))) (generalisedConcat!412 (t!373681 (exprs!4627 (h!66853 zl!343))))))))

(declare-fun b!5193513 () Bool)

(assert (=> b!5193513 (= e!3234765 (h!66852 (exprs!4627 (h!66853 zl!343))))))

(assert (= (and d!1676989 res!2205969) b!5193510))

(assert (= (and d!1676989 c!895221) b!5193513))

(assert (= (and d!1676989 (not c!895221)) b!5193507))

(assert (= (and b!5193507 c!895220) b!5193512))

(assert (= (and b!5193507 (not c!895220)) b!5193505))

(assert (= (and d!1676989 res!2205970) b!5193511))

(assert (= (and b!5193511 c!895222) b!5193508))

(assert (= (and b!5193511 (not c!895222)) b!5193509))

(assert (= (and b!5193509 c!895223) b!5193504))

(assert (= (and b!5193509 (not c!895223)) b!5193506))

(declare-fun m!6248822 () Bool)

(assert (=> b!5193509 m!6248822))

(assert (=> b!5193509 m!6248822))

(declare-fun m!6248824 () Bool)

(assert (=> b!5193509 m!6248824))

(declare-fun m!6248826 () Bool)

(assert (=> b!5193508 m!6248826))

(declare-fun m!6248828 () Bool)

(assert (=> d!1676989 m!6248828))

(declare-fun m!6248830 () Bool)

(assert (=> d!1676989 m!6248830))

(declare-fun m!6248832 () Bool)

(assert (=> b!5193510 m!6248832))

(declare-fun m!6248834 () Bool)

(assert (=> b!5193504 m!6248834))

(declare-fun m!6248836 () Bool)

(assert (=> b!5193506 m!6248836))

(declare-fun m!6248838 () Bool)

(assert (=> b!5193511 m!6248838))

(declare-fun m!6248840 () Bool)

(assert (=> b!5193512 m!6248840))

(assert (=> b!5193091 d!1676989))

(declare-fun b!5193542 () Bool)

(declare-fun e!3234788 () Bool)

(declare-fun head!11128 (List!60530) C!29756)

(assert (=> b!5193542 (= e!3234788 (not (= (head!11128 s!2326) (c!895122 r!7292))))))

(declare-fun b!5193543 () Bool)

(declare-fun e!3234789 () Bool)

(assert (=> b!5193543 (= e!3234789 e!3234788)))

(declare-fun res!2205990 () Bool)

(assert (=> b!5193543 (=> res!2205990 e!3234788)))

(declare-fun call!365132 () Bool)

(assert (=> b!5193543 (= res!2205990 call!365132)))

(declare-fun b!5193544 () Bool)

(declare-fun res!2205994 () Bool)

(declare-fun e!3234786 () Bool)

(assert (=> b!5193544 (=> (not res!2205994) (not e!3234786))))

(assert (=> b!5193544 (= res!2205994 (not call!365132))))

(declare-fun b!5193545 () Bool)

(declare-fun e!3234790 () Bool)

(assert (=> b!5193545 (= e!3234790 e!3234789)))

(declare-fun res!2205993 () Bool)

(assert (=> b!5193545 (=> (not res!2205993) (not e!3234789))))

(declare-fun lt!2138434 () Bool)

(assert (=> b!5193545 (= res!2205993 (not lt!2138434))))

(declare-fun b!5193546 () Bool)

(declare-fun e!3234784 () Bool)

(declare-fun e!3234787 () Bool)

(assert (=> b!5193546 (= e!3234784 e!3234787)))

(declare-fun c!895232 () Bool)

(assert (=> b!5193546 (= c!895232 ((_ is EmptyLang!14743) r!7292))))

(declare-fun b!5193547 () Bool)

(assert (=> b!5193547 (= e!3234786 (= (head!11128 s!2326) (c!895122 r!7292)))))

(declare-fun b!5193548 () Bool)

(assert (=> b!5193548 (= e!3234784 (= lt!2138434 call!365132))))

(declare-fun bm!365127 () Bool)

(declare-fun isEmpty!32338 (List!60530) Bool)

(assert (=> bm!365127 (= call!365132 (isEmpty!32338 s!2326))))

(declare-fun b!5193549 () Bool)

(declare-fun e!3234785 () Bool)

(assert (=> b!5193549 (= e!3234785 (nullable!4924 r!7292))))

(declare-fun b!5193550 () Bool)

(declare-fun res!2205987 () Bool)

(assert (=> b!5193550 (=> (not res!2205987) (not e!3234786))))

(declare-fun tail!10225 (List!60530) List!60530)

(assert (=> b!5193550 (= res!2205987 (isEmpty!32338 (tail!10225 s!2326)))))

(declare-fun b!5193551 () Bool)

(declare-fun res!2205991 () Bool)

(assert (=> b!5193551 (=> res!2205991 e!3234788)))

(assert (=> b!5193551 (= res!2205991 (not (isEmpty!32338 (tail!10225 s!2326))))))

(declare-fun b!5193552 () Bool)

(declare-fun derivativeStep!4026 (Regex!14743 C!29756) Regex!14743)

(assert (=> b!5193552 (= e!3234785 (matchR!6928 (derivativeStep!4026 r!7292 (head!11128 s!2326)) (tail!10225 s!2326)))))

(declare-fun b!5193553 () Bool)

(declare-fun res!2205988 () Bool)

(assert (=> b!5193553 (=> res!2205988 e!3234790)))

(assert (=> b!5193553 (= res!2205988 e!3234786)))

(declare-fun res!2205992 () Bool)

(assert (=> b!5193553 (=> (not res!2205992) (not e!3234786))))

(assert (=> b!5193553 (= res!2205992 lt!2138434)))

(declare-fun b!5193555 () Bool)

(assert (=> b!5193555 (= e!3234787 (not lt!2138434))))

(declare-fun b!5193554 () Bool)

(declare-fun res!2205989 () Bool)

(assert (=> b!5193554 (=> res!2205989 e!3234790)))

(assert (=> b!5193554 (= res!2205989 (not ((_ is ElementMatch!14743) r!7292)))))

(assert (=> b!5193554 (= e!3234787 e!3234790)))

(declare-fun d!1676991 () Bool)

(assert (=> d!1676991 e!3234784))

(declare-fun c!895230 () Bool)

(assert (=> d!1676991 (= c!895230 ((_ is EmptyExpr!14743) r!7292))))

(assert (=> d!1676991 (= lt!2138434 e!3234785)))

(declare-fun c!895231 () Bool)

(assert (=> d!1676991 (= c!895231 (isEmpty!32338 s!2326))))

(assert (=> d!1676991 (validRegex!6479 r!7292)))

(assert (=> d!1676991 (= (matchR!6928 r!7292 s!2326) lt!2138434)))

(assert (= (and d!1676991 c!895231) b!5193549))

(assert (= (and d!1676991 (not c!895231)) b!5193552))

(assert (= (and d!1676991 c!895230) b!5193548))

(assert (= (and d!1676991 (not c!895230)) b!5193546))

(assert (= (and b!5193546 c!895232) b!5193555))

(assert (= (and b!5193546 (not c!895232)) b!5193554))

(assert (= (and b!5193554 (not res!2205989)) b!5193553))

(assert (= (and b!5193553 res!2205992) b!5193544))

(assert (= (and b!5193544 res!2205994) b!5193550))

(assert (= (and b!5193550 res!2205987) b!5193547))

(assert (= (and b!5193553 (not res!2205988)) b!5193545))

(assert (= (and b!5193545 res!2205993) b!5193543))

(assert (= (and b!5193543 (not res!2205990)) b!5193551))

(assert (= (and b!5193551 (not res!2205991)) b!5193542))

(assert (= (or b!5193548 b!5193543 b!5193544) bm!365127))

(declare-fun m!6248842 () Bool)

(assert (=> b!5193552 m!6248842))

(assert (=> b!5193552 m!6248842))

(declare-fun m!6248844 () Bool)

(assert (=> b!5193552 m!6248844))

(declare-fun m!6248846 () Bool)

(assert (=> b!5193552 m!6248846))

(assert (=> b!5193552 m!6248844))

(assert (=> b!5193552 m!6248846))

(declare-fun m!6248848 () Bool)

(assert (=> b!5193552 m!6248848))

(declare-fun m!6248850 () Bool)

(assert (=> bm!365127 m!6248850))

(assert (=> b!5193551 m!6248846))

(assert (=> b!5193551 m!6248846))

(declare-fun m!6248852 () Bool)

(assert (=> b!5193551 m!6248852))

(assert (=> b!5193542 m!6248842))

(assert (=> b!5193547 m!6248842))

(assert (=> d!1676991 m!6248850))

(assert (=> d!1676991 m!6248608))

(assert (=> b!5193550 m!6248846))

(assert (=> b!5193550 m!6248846))

(assert (=> b!5193550 m!6248852))

(declare-fun m!6248854 () Bool)

(assert (=> b!5193549 m!6248854))

(assert (=> b!5193076 d!1676991))

(declare-fun bs!1208771 () Bool)

(declare-fun b!5193594 () Bool)

(assert (= bs!1208771 (and b!5193594 b!5193081)))

(declare-fun lambda!259750 () Int)

(assert (=> bs!1208771 (not (= lambda!259750 lambda!259699))))

(declare-fun bs!1208772 () Bool)

(assert (= bs!1208772 (and b!5193594 d!1676967)))

(assert (=> bs!1208772 (not (= lambda!259750 lambda!259726))))

(declare-fun bs!1208773 () Bool)

(assert (= bs!1208773 (and b!5193594 d!1676961)))

(assert (=> bs!1208773 (not (= lambda!259750 lambda!259718))))

(assert (=> bs!1208772 (not (= lambda!259750 lambda!259729))))

(assert (=> bs!1208771 (not (= lambda!259750 lambda!259698))))

(assert (=> b!5193594 true))

(assert (=> b!5193594 true))

(declare-fun bs!1208774 () Bool)

(declare-fun b!5193593 () Bool)

(assert (= bs!1208774 (and b!5193593 b!5193081)))

(declare-fun lambda!259751 () Int)

(assert (=> bs!1208774 (= lambda!259751 lambda!259699)))

(declare-fun bs!1208775 () Bool)

(assert (= bs!1208775 (and b!5193593 d!1676967)))

(assert (=> bs!1208775 (not (= lambda!259751 lambda!259726))))

(declare-fun bs!1208776 () Bool)

(assert (= bs!1208776 (and b!5193593 d!1676961)))

(assert (=> bs!1208776 (not (= lambda!259751 lambda!259718))))

(declare-fun bs!1208777 () Bool)

(assert (= bs!1208777 (and b!5193593 b!5193594)))

(assert (=> bs!1208777 (not (= lambda!259751 lambda!259750))))

(assert (=> bs!1208775 (= lambda!259751 lambda!259729)))

(assert (=> bs!1208774 (not (= lambda!259751 lambda!259698))))

(assert (=> b!5193593 true))

(assert (=> b!5193593 true))

(declare-fun b!5193588 () Bool)

(declare-fun e!3234811 () Bool)

(declare-fun e!3234809 () Bool)

(assert (=> b!5193588 (= e!3234811 e!3234809)))

(declare-fun res!2206012 () Bool)

(assert (=> b!5193588 (= res!2206012 (matchRSpec!1846 (regOne!29999 r!7292) s!2326))))

(assert (=> b!5193588 (=> res!2206012 e!3234809)))

(declare-fun b!5193589 () Bool)

(declare-fun e!3234815 () Bool)

(assert (=> b!5193589 (= e!3234815 (= s!2326 (Cons!60406 (c!895122 r!7292) Nil!60406)))))

(declare-fun b!5193590 () Bool)

(assert (=> b!5193590 (= e!3234809 (matchRSpec!1846 (regTwo!29999 r!7292) s!2326))))

(declare-fun b!5193591 () Bool)

(declare-fun c!895241 () Bool)

(assert (=> b!5193591 (= c!895241 ((_ is ElementMatch!14743) r!7292))))

(declare-fun e!3234810 () Bool)

(assert (=> b!5193591 (= e!3234810 e!3234815)))

(declare-fun b!5193592 () Bool)

(declare-fun c!895244 () Bool)

(assert (=> b!5193592 (= c!895244 ((_ is Union!14743) r!7292))))

(assert (=> b!5193592 (= e!3234815 e!3234811)))

(declare-fun e!3234814 () Bool)

(declare-fun call!365138 () Bool)

(assert (=> b!5193593 (= e!3234814 call!365138)))

(declare-fun bm!365133 () Bool)

(declare-fun call!365137 () Bool)

(assert (=> bm!365133 (= call!365137 (isEmpty!32338 s!2326))))

(declare-fun e!3234813 () Bool)

(assert (=> b!5193594 (= e!3234813 call!365138)))

(declare-fun b!5193595 () Bool)

(declare-fun e!3234812 () Bool)

(assert (=> b!5193595 (= e!3234812 call!365137)))

(declare-fun b!5193596 () Bool)

(assert (=> b!5193596 (= e!3234812 e!3234810)))

(declare-fun res!2206013 () Bool)

(assert (=> b!5193596 (= res!2206013 (not ((_ is EmptyLang!14743) r!7292)))))

(assert (=> b!5193596 (=> (not res!2206013) (not e!3234810))))

(declare-fun b!5193597 () Bool)

(assert (=> b!5193597 (= e!3234811 e!3234814)))

(declare-fun c!895243 () Bool)

(assert (=> b!5193597 (= c!895243 ((_ is Star!14743) r!7292))))

(declare-fun b!5193598 () Bool)

(declare-fun res!2206011 () Bool)

(assert (=> b!5193598 (=> res!2206011 e!3234813)))

(assert (=> b!5193598 (= res!2206011 call!365137)))

(assert (=> b!5193598 (= e!3234814 e!3234813)))

(declare-fun bm!365132 () Bool)

(assert (=> bm!365132 (= call!365138 (Exists!1924 (ite c!895243 lambda!259750 lambda!259751)))))

(declare-fun d!1676993 () Bool)

(declare-fun c!895242 () Bool)

(assert (=> d!1676993 (= c!895242 ((_ is EmptyExpr!14743) r!7292))))

(assert (=> d!1676993 (= (matchRSpec!1846 r!7292 s!2326) e!3234812)))

(assert (= (and d!1676993 c!895242) b!5193595))

(assert (= (and d!1676993 (not c!895242)) b!5193596))

(assert (= (and b!5193596 res!2206013) b!5193591))

(assert (= (and b!5193591 c!895241) b!5193589))

(assert (= (and b!5193591 (not c!895241)) b!5193592))

(assert (= (and b!5193592 c!895244) b!5193588))

(assert (= (and b!5193592 (not c!895244)) b!5193597))

(assert (= (and b!5193588 (not res!2206012)) b!5193590))

(assert (= (and b!5193597 c!895243) b!5193598))

(assert (= (and b!5193597 (not c!895243)) b!5193593))

(assert (= (and b!5193598 (not res!2206011)) b!5193594))

(assert (= (or b!5193594 b!5193593) bm!365132))

(assert (= (or b!5193595 b!5193598) bm!365133))

(declare-fun m!6248856 () Bool)

(assert (=> b!5193588 m!6248856))

(declare-fun m!6248858 () Bool)

(assert (=> b!5193590 m!6248858))

(assert (=> bm!365133 m!6248850))

(declare-fun m!6248860 () Bool)

(assert (=> bm!365132 m!6248860))

(assert (=> b!5193076 d!1676993))

(declare-fun d!1676995 () Bool)

(assert (=> d!1676995 (= (matchR!6928 r!7292 s!2326) (matchRSpec!1846 r!7292 s!2326))))

(declare-fun lt!2138437 () Unit!152320)

(declare-fun choose!38580 (Regex!14743 List!60530) Unit!152320)

(assert (=> d!1676995 (= lt!2138437 (choose!38580 r!7292 s!2326))))

(assert (=> d!1676995 (validRegex!6479 r!7292)))

(assert (=> d!1676995 (= (mainMatchTheorem!1846 r!7292 s!2326) lt!2138437)))

(declare-fun bs!1208778 () Bool)

(assert (= bs!1208778 d!1676995))

(assert (=> bs!1208778 m!6248602))

(assert (=> bs!1208778 m!6248604))

(declare-fun m!6248862 () Bool)

(assert (=> bs!1208778 m!6248862))

(assert (=> bs!1208778 m!6248608))

(assert (=> b!5193076 d!1676995))

(declare-fun bm!365134 () Bool)

(declare-fun call!365139 () Bool)

(declare-fun call!365140 () Bool)

(assert (=> bm!365134 (= call!365139 call!365140)))

(declare-fun b!5193599 () Bool)

(declare-fun e!3234820 () Bool)

(assert (=> b!5193599 (= e!3234820 call!365140)))

(declare-fun b!5193600 () Bool)

(declare-fun e!3234817 () Bool)

(declare-fun call!365141 () Bool)

(assert (=> b!5193600 (= e!3234817 call!365141)))

(declare-fun b!5193601 () Bool)

(declare-fun e!3234821 () Bool)

(assert (=> b!5193601 (= e!3234821 call!365141)))

(declare-fun b!5193602 () Bool)

(declare-fun e!3234818 () Bool)

(declare-fun e!3234816 () Bool)

(assert (=> b!5193602 (= e!3234818 e!3234816)))

(declare-fun c!895246 () Bool)

(assert (=> b!5193602 (= c!895246 ((_ is Star!14743) r!7292))))

(declare-fun b!5193603 () Bool)

(declare-fun e!3234819 () Bool)

(assert (=> b!5193603 (= e!3234819 e!3234817)))

(declare-fun res!2206016 () Bool)

(assert (=> b!5193603 (=> (not res!2206016) (not e!3234817))))

(assert (=> b!5193603 (= res!2206016 call!365139)))

(declare-fun b!5193604 () Bool)

(declare-fun res!2206014 () Bool)

(assert (=> b!5193604 (=> (not res!2206014) (not e!3234821))))

(assert (=> b!5193604 (= res!2206014 call!365139)))

(declare-fun e!3234822 () Bool)

(assert (=> b!5193604 (= e!3234822 e!3234821)))

(declare-fun d!1676997 () Bool)

(declare-fun res!2206018 () Bool)

(assert (=> d!1676997 (=> res!2206018 e!3234818)))

(assert (=> d!1676997 (= res!2206018 ((_ is ElementMatch!14743) r!7292))))

(assert (=> d!1676997 (= (validRegex!6479 r!7292) e!3234818)))

(declare-fun bm!365135 () Bool)

(declare-fun c!895245 () Bool)

(assert (=> bm!365135 (= call!365141 (validRegex!6479 (ite c!895245 (regTwo!29999 r!7292) (regTwo!29998 r!7292))))))

(declare-fun bm!365136 () Bool)

(assert (=> bm!365136 (= call!365140 (validRegex!6479 (ite c!895246 (reg!15072 r!7292) (ite c!895245 (regOne!29999 r!7292) (regOne!29998 r!7292)))))))

(declare-fun b!5193605 () Bool)

(assert (=> b!5193605 (= e!3234816 e!3234820)))

(declare-fun res!2206015 () Bool)

(assert (=> b!5193605 (= res!2206015 (not (nullable!4924 (reg!15072 r!7292))))))

(assert (=> b!5193605 (=> (not res!2206015) (not e!3234820))))

(declare-fun b!5193606 () Bool)

(assert (=> b!5193606 (= e!3234816 e!3234822)))

(assert (=> b!5193606 (= c!895245 ((_ is Union!14743) r!7292))))

(declare-fun b!5193607 () Bool)

(declare-fun res!2206017 () Bool)

(assert (=> b!5193607 (=> res!2206017 e!3234819)))

(assert (=> b!5193607 (= res!2206017 (not ((_ is Concat!23588) r!7292)))))

(assert (=> b!5193607 (= e!3234822 e!3234819)))

(assert (= (and d!1676997 (not res!2206018)) b!5193602))

(assert (= (and b!5193602 c!895246) b!5193605))

(assert (= (and b!5193602 (not c!895246)) b!5193606))

(assert (= (and b!5193605 res!2206015) b!5193599))

(assert (= (and b!5193606 c!895245) b!5193604))

(assert (= (and b!5193606 (not c!895245)) b!5193607))

(assert (= (and b!5193604 res!2206014) b!5193601))

(assert (= (and b!5193607 (not res!2206017)) b!5193603))

(assert (= (and b!5193603 res!2206016) b!5193600))

(assert (= (or b!5193601 b!5193600) bm!365135))

(assert (= (or b!5193604 b!5193603) bm!365134))

(assert (= (or b!5193599 bm!365134) bm!365136))

(declare-fun m!6248864 () Bool)

(assert (=> bm!365135 m!6248864))

(declare-fun m!6248866 () Bool)

(assert (=> bm!365136 m!6248866))

(declare-fun m!6248868 () Bool)

(assert (=> b!5193605 m!6248868))

(assert (=> start!549570 d!1676997))

(declare-fun bs!1208779 () Bool)

(declare-fun d!1676999 () Bool)

(assert (= bs!1208779 (and d!1676999 d!1676979)))

(declare-fun lambda!259754 () Int)

(assert (=> bs!1208779 (= lambda!259754 lambda!259739)))

(declare-fun bs!1208780 () Bool)

(assert (= bs!1208780 (and d!1676999 d!1676985)))

(assert (=> bs!1208780 (= lambda!259754 lambda!259742)))

(declare-fun bs!1208781 () Bool)

(assert (= bs!1208781 (and d!1676999 d!1676989)))

(assert (=> bs!1208781 (= lambda!259754 lambda!259745)))

(assert (=> d!1676999 (= (inv!80104 setElem!32824) (forall!14212 (exprs!4627 setElem!32824) lambda!259754))))

(declare-fun bs!1208782 () Bool)

(assert (= bs!1208782 d!1676999))

(declare-fun m!6248870 () Bool)

(assert (=> bs!1208782 m!6248870))

(assert (=> setNonEmpty!32824 d!1676999))

(declare-fun bs!1208783 () Bool)

(declare-fun d!1677001 () Bool)

(assert (= bs!1208783 (and d!1677001 d!1676979)))

(declare-fun lambda!259755 () Int)

(assert (=> bs!1208783 (= lambda!259755 lambda!259739)))

(declare-fun bs!1208784 () Bool)

(assert (= bs!1208784 (and d!1677001 d!1676985)))

(assert (=> bs!1208784 (= lambda!259755 lambda!259742)))

(declare-fun bs!1208785 () Bool)

(assert (= bs!1208785 (and d!1677001 d!1676989)))

(assert (=> bs!1208785 (= lambda!259755 lambda!259745)))

(declare-fun bs!1208786 () Bool)

(assert (= bs!1208786 (and d!1677001 d!1676999)))

(assert (=> bs!1208786 (= lambda!259755 lambda!259754)))

(assert (=> d!1677001 (= (inv!80104 (h!66853 zl!343)) (forall!14212 (exprs!4627 (h!66853 zl!343)) lambda!259755))))

(declare-fun bs!1208787 () Bool)

(assert (= bs!1208787 d!1677001))

(declare-fun m!6248872 () Bool)

(assert (=> bs!1208787 m!6248872))

(assert (=> b!5193083 d!1677001))

(declare-fun b!5193619 () Bool)

(declare-fun e!3234825 () Bool)

(declare-fun tp!1456902 () Bool)

(declare-fun tp!1456903 () Bool)

(assert (=> b!5193619 (= e!3234825 (and tp!1456902 tp!1456903))))

(assert (=> b!5193085 (= tp!1456824 e!3234825)))

(declare-fun b!5193620 () Bool)

(declare-fun tp!1456906 () Bool)

(assert (=> b!5193620 (= e!3234825 tp!1456906)))

(declare-fun b!5193621 () Bool)

(declare-fun tp!1456905 () Bool)

(declare-fun tp!1456904 () Bool)

(assert (=> b!5193621 (= e!3234825 (and tp!1456905 tp!1456904))))

(declare-fun b!5193618 () Bool)

(assert (=> b!5193618 (= e!3234825 tp_is_empty!38739)))

(assert (= (and b!5193085 ((_ is ElementMatch!14743) (reg!15072 r!7292))) b!5193618))

(assert (= (and b!5193085 ((_ is Concat!23588) (reg!15072 r!7292))) b!5193619))

(assert (= (and b!5193085 ((_ is Star!14743) (reg!15072 r!7292))) b!5193620))

(assert (= (and b!5193085 ((_ is Union!14743) (reg!15072 r!7292))) b!5193621))

(declare-fun b!5193626 () Bool)

(declare-fun e!3234828 () Bool)

(declare-fun tp!1456911 () Bool)

(declare-fun tp!1456912 () Bool)

(assert (=> b!5193626 (= e!3234828 (and tp!1456911 tp!1456912))))

(assert (=> b!5193079 (= tp!1456829 e!3234828)))

(assert (= (and b!5193079 ((_ is Cons!60404) (exprs!4627 (h!66853 zl!343)))) b!5193626))

(declare-fun b!5193628 () Bool)

(declare-fun e!3234829 () Bool)

(declare-fun tp!1456913 () Bool)

(declare-fun tp!1456914 () Bool)

(assert (=> b!5193628 (= e!3234829 (and tp!1456913 tp!1456914))))

(assert (=> b!5193082 (= tp!1456828 e!3234829)))

(declare-fun b!5193629 () Bool)

(declare-fun tp!1456917 () Bool)

(assert (=> b!5193629 (= e!3234829 tp!1456917)))

(declare-fun b!5193630 () Bool)

(declare-fun tp!1456916 () Bool)

(declare-fun tp!1456915 () Bool)

(assert (=> b!5193630 (= e!3234829 (and tp!1456916 tp!1456915))))

(declare-fun b!5193627 () Bool)

(assert (=> b!5193627 (= e!3234829 tp_is_empty!38739)))

(assert (= (and b!5193082 ((_ is ElementMatch!14743) (regOne!29998 r!7292))) b!5193627))

(assert (= (and b!5193082 ((_ is Concat!23588) (regOne!29998 r!7292))) b!5193628))

(assert (= (and b!5193082 ((_ is Star!14743) (regOne!29998 r!7292))) b!5193629))

(assert (= (and b!5193082 ((_ is Union!14743) (regOne!29998 r!7292))) b!5193630))

(declare-fun b!5193632 () Bool)

(declare-fun e!3234830 () Bool)

(declare-fun tp!1456918 () Bool)

(declare-fun tp!1456919 () Bool)

(assert (=> b!5193632 (= e!3234830 (and tp!1456918 tp!1456919))))

(assert (=> b!5193082 (= tp!1456831 e!3234830)))

(declare-fun b!5193633 () Bool)

(declare-fun tp!1456922 () Bool)

(assert (=> b!5193633 (= e!3234830 tp!1456922)))

(declare-fun b!5193634 () Bool)

(declare-fun tp!1456921 () Bool)

(declare-fun tp!1456920 () Bool)

(assert (=> b!5193634 (= e!3234830 (and tp!1456921 tp!1456920))))

(declare-fun b!5193631 () Bool)

(assert (=> b!5193631 (= e!3234830 tp_is_empty!38739)))

(assert (= (and b!5193082 ((_ is ElementMatch!14743) (regTwo!29998 r!7292))) b!5193631))

(assert (= (and b!5193082 ((_ is Concat!23588) (regTwo!29998 r!7292))) b!5193632))

(assert (= (and b!5193082 ((_ is Star!14743) (regTwo!29998 r!7292))) b!5193633))

(assert (= (and b!5193082 ((_ is Union!14743) (regTwo!29998 r!7292))) b!5193634))

(declare-fun b!5193639 () Bool)

(declare-fun e!3234833 () Bool)

(declare-fun tp!1456925 () Bool)

(assert (=> b!5193639 (= e!3234833 (and tp_is_empty!38739 tp!1456925))))

(assert (=> b!5193077 (= tp!1456833 e!3234833)))

(assert (= (and b!5193077 ((_ is Cons!60406) (t!373683 s!2326))) b!5193639))

(declare-fun b!5193641 () Bool)

(declare-fun e!3234834 () Bool)

(declare-fun tp!1456926 () Bool)

(declare-fun tp!1456927 () Bool)

(assert (=> b!5193641 (= e!3234834 (and tp!1456926 tp!1456927))))

(assert (=> b!5193090 (= tp!1456832 e!3234834)))

(declare-fun b!5193642 () Bool)

(declare-fun tp!1456930 () Bool)

(assert (=> b!5193642 (= e!3234834 tp!1456930)))

(declare-fun b!5193643 () Bool)

(declare-fun tp!1456929 () Bool)

(declare-fun tp!1456928 () Bool)

(assert (=> b!5193643 (= e!3234834 (and tp!1456929 tp!1456928))))

(declare-fun b!5193640 () Bool)

(assert (=> b!5193640 (= e!3234834 tp_is_empty!38739)))

(assert (= (and b!5193090 ((_ is ElementMatch!14743) (regOne!29999 r!7292))) b!5193640))

(assert (= (and b!5193090 ((_ is Concat!23588) (regOne!29999 r!7292))) b!5193641))

(assert (= (and b!5193090 ((_ is Star!14743) (regOne!29999 r!7292))) b!5193642))

(assert (= (and b!5193090 ((_ is Union!14743) (regOne!29999 r!7292))) b!5193643))

(declare-fun b!5193645 () Bool)

(declare-fun e!3234835 () Bool)

(declare-fun tp!1456931 () Bool)

(declare-fun tp!1456932 () Bool)

(assert (=> b!5193645 (= e!3234835 (and tp!1456931 tp!1456932))))

(assert (=> b!5193090 (= tp!1456825 e!3234835)))

(declare-fun b!5193646 () Bool)

(declare-fun tp!1456935 () Bool)

(assert (=> b!5193646 (= e!3234835 tp!1456935)))

(declare-fun b!5193647 () Bool)

(declare-fun tp!1456934 () Bool)

(declare-fun tp!1456933 () Bool)

(assert (=> b!5193647 (= e!3234835 (and tp!1456934 tp!1456933))))

(declare-fun b!5193644 () Bool)

(assert (=> b!5193644 (= e!3234835 tp_is_empty!38739)))

(assert (= (and b!5193090 ((_ is ElementMatch!14743) (regTwo!29999 r!7292))) b!5193644))

(assert (= (and b!5193090 ((_ is Concat!23588) (regTwo!29999 r!7292))) b!5193645))

(assert (= (and b!5193090 ((_ is Star!14743) (regTwo!29999 r!7292))) b!5193646))

(assert (= (and b!5193090 ((_ is Union!14743) (regTwo!29999 r!7292))) b!5193647))

(declare-fun b!5193648 () Bool)

(declare-fun e!3234836 () Bool)

(declare-fun tp!1456936 () Bool)

(declare-fun tp!1456937 () Bool)

(assert (=> b!5193648 (= e!3234836 (and tp!1456936 tp!1456937))))

(assert (=> b!5193078 (= tp!1456830 e!3234836)))

(assert (= (and b!5193078 ((_ is Cons!60404) (exprs!4627 setElem!32824))) b!5193648))

(declare-fun condSetEmpty!32830 () Bool)

(assert (=> setNonEmpty!32824 (= condSetEmpty!32830 (= setRest!32824 ((as const (Array Context!8254 Bool)) false)))))

(declare-fun setRes!32830 () Bool)

(assert (=> setNonEmpty!32824 (= tp!1456826 setRes!32830)))

(declare-fun setIsEmpty!32830 () Bool)

(assert (=> setIsEmpty!32830 setRes!32830))

(declare-fun setElem!32830 () Context!8254)

(declare-fun setNonEmpty!32830 () Bool)

(declare-fun tp!1456943 () Bool)

(declare-fun e!3234839 () Bool)

(assert (=> setNonEmpty!32830 (= setRes!32830 (and tp!1456943 (inv!80104 setElem!32830) e!3234839))))

(declare-fun setRest!32830 () (InoxSet Context!8254))

(assert (=> setNonEmpty!32830 (= setRest!32824 ((_ map or) (store ((as const (Array Context!8254 Bool)) false) setElem!32830 true) setRest!32830))))

(declare-fun b!5193653 () Bool)

(declare-fun tp!1456942 () Bool)

(assert (=> b!5193653 (= e!3234839 tp!1456942)))

(assert (= (and setNonEmpty!32824 condSetEmpty!32830) setIsEmpty!32830))

(assert (= (and setNonEmpty!32824 (not condSetEmpty!32830)) setNonEmpty!32830))

(assert (= setNonEmpty!32830 b!5193653))

(declare-fun m!6248874 () Bool)

(assert (=> setNonEmpty!32830 m!6248874))

(declare-fun b!5193661 () Bool)

(declare-fun e!3234845 () Bool)

(declare-fun tp!1456948 () Bool)

(assert (=> b!5193661 (= e!3234845 tp!1456948)))

(declare-fun tp!1456949 () Bool)

(declare-fun e!3234844 () Bool)

(declare-fun b!5193660 () Bool)

(assert (=> b!5193660 (= e!3234844 (and (inv!80104 (h!66853 (t!373682 zl!343))) e!3234845 tp!1456949))))

(assert (=> b!5193083 (= tp!1456827 e!3234844)))

(assert (= b!5193660 b!5193661))

(assert (= (and b!5193083 ((_ is Cons!60405) (t!373682 zl!343))) b!5193660))

(declare-fun m!6248876 () Bool)

(assert (=> b!5193660 m!6248876))

(check-sat (not b!5193621) tp_is_empty!38739 (not d!1676999) (not d!1676967) (not b!5193510) (not d!1676995) (not d!1676987) (not b!5193552) (not b!5193426) (not b!5193423) (not b!5193633) (not bm!365136) (not d!1676961) (not b!5193620) (not b!5193642) (not b!5193420) (not b!5193547) (not b!5193551) (not d!1676991) (not b!5193643) (not b!5193422) (not b!5193429) (not b!5193629) (not d!1676955) (not b!5193425) (not b!5193227) (not bm!365112) (not d!1676979) (not d!1676989) (not b!5193645) (not bm!365132) (not b!5193101) (not bm!365135) (not b!5193220) (not b!5193512) (not b!5193473) (not b!5193626) (not d!1677001) (not b!5193509) (not b!5193506) (not b!5193590) (not b!5193646) (not b!5193628) (not b!5193504) (not b!5193542) (not b!5193632) (not d!1676977) (not b!5193549) (not b!5193639) (not b!5193605) (not b!5193228) (not b!5193641) (not b!5193588) (not b!5193648) (not setNonEmpty!32830) (not d!1676935) (not b!5193224) (not b!5193661) (not b!5193508) (not b!5193653) (not b!5193428) (not bm!365127) (not b!5193274) (not b!5193647) (not bm!365111) (not b!5193550) (not b!5193660) (not b!5193634) (not d!1676959) (not bm!365133) (not d!1676985) (not d!1676939) (not b!5193619) (not b!5193223) (not b!5193226) (not b!5193630) (not b!5193511))
(check-sat)
