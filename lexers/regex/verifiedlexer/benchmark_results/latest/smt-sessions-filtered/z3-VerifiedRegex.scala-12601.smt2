; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!698060 () Bool)

(assert start!698060)

(declare-fun b!7158962 () Bool)

(declare-fun e!4300840 () Bool)

(declare-fun tp_is_empty!46195 () Bool)

(declare-fun tp!1979773 () Bool)

(assert (=> b!7158962 (= e!4300840 (and tp_is_empty!46195 tp!1979773))))

(declare-fun b!7158963 () Bool)

(declare-fun res!2918977 () Bool)

(declare-fun e!4300842 () Bool)

(assert (=> b!7158963 (=> (not res!2918977) (not e!4300842))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36896 0))(
  ( (C!36897 (val!28396 Int)) )
))
(declare-datatypes ((Regex!18311 0))(
  ( (ElementMatch!18311 (c!1334111 C!36896)) (Concat!27156 (regOne!37134 Regex!18311) (regTwo!37134 Regex!18311)) (EmptyExpr!18311) (Star!18311 (reg!18640 Regex!18311)) (EmptyLang!18311) (Union!18311 (regOne!37135 Regex!18311) (regTwo!37135 Regex!18311)) )
))
(declare-datatypes ((List!69673 0))(
  ( (Nil!69549) (Cons!69549 (h!75997 Regex!18311) (t!383690 List!69673)) )
))
(declare-datatypes ((Context!14526 0))(
  ( (Context!14527 (exprs!7763 List!69673)) )
))
(declare-fun z!3530 () (InoxSet Context!14526))

(declare-fun focus!386 (Regex!18311) (InoxSet Context!14526))

(assert (=> b!7158963 (= res!2918977 (not (= z!3530 (focus!386 EmptyExpr!18311))))))

(declare-fun b!7158964 () Bool)

(declare-fun res!2918975 () Bool)

(declare-fun e!4300841 () Bool)

(assert (=> b!7158964 (=> (not res!2918975) (not e!4300841))))

(declare-fun lt!2569777 () (InoxSet Context!14526))

(assert (=> b!7158964 (= res!2918975 (not (= lt!2569777 ((as const (Array Context!14526 Bool)) false))))))

(declare-fun b!7158965 () Bool)

(declare-fun e!4300839 () Bool)

(assert (=> b!7158965 (= e!4300839 e!4300841)))

(declare-fun res!2918978 () Bool)

(assert (=> b!7158965 (=> (not res!2918978) (not e!4300841))))

(declare-fun lt!2569780 () Context!14526)

(declare-fun lt!2569779 () C!36896)

(declare-fun derivationStepZipperUp!2299 (Context!14526 C!36896) (InoxSet Context!14526))

(assert (=> b!7158965 (= res!2918978 (= (derivationStepZipperUp!2299 lt!2569780 lt!2569779) ((as const (Array Context!14526 Bool)) false)))))

(declare-fun derivationStepZipper!3194 ((InoxSet Context!14526) C!36896) (InoxSet Context!14526))

(assert (=> b!7158965 (= lt!2569777 (derivationStepZipper!3194 z!3530 lt!2569779))))

(declare-datatypes ((List!69674 0))(
  ( (Nil!69550) (Cons!69550 (h!75998 C!36896) (t!383691 List!69674)) )
))
(declare-fun s!7967 () List!69674)

(declare-fun head!14597 (List!69674) C!36896)

(assert (=> b!7158965 (= lt!2569779 (head!14597 s!7967))))

(declare-fun b!7158966 () Bool)

(assert (=> b!7158966 (= e!4300841 (= s!7967 Nil!69550))))

(declare-datatypes ((List!69675 0))(
  ( (Nil!69551) (Cons!69551 (h!75999 Context!14526) (t!383692 List!69675)) )
))
(declare-fun lt!2569778 () List!69675)

(declare-fun toList!11254 ((InoxSet Context!14526)) List!69675)

(assert (=> b!7158966 (= lt!2569778 (toList!11254 lt!2569777))))

(declare-fun res!2918976 () Bool)

(assert (=> start!698060 (=> (not res!2918976) (not e!4300842))))

(declare-fun unfocusZipper!2571 (List!69675) Regex!18311)

(assert (=> start!698060 (= res!2918976 (= (unfocusZipper!2571 (toList!11254 z!3530)) EmptyExpr!18311))))

(assert (=> start!698060 e!4300842))

(declare-fun condSetEmpty!52823 () Bool)

(assert (=> start!698060 (= condSetEmpty!52823 (= z!3530 ((as const (Array Context!14526 Bool)) false)))))

(declare-fun setRes!52823 () Bool)

(assert (=> start!698060 setRes!52823))

(assert (=> start!698060 e!4300840))

(declare-fun tp!1979775 () Bool)

(declare-fun setNonEmpty!52823 () Bool)

(declare-fun e!4300838 () Bool)

(declare-fun setElem!52823 () Context!14526)

(declare-fun inv!88799 (Context!14526) Bool)

(assert (=> setNonEmpty!52823 (= setRes!52823 (and tp!1979775 (inv!88799 setElem!52823) e!4300838))))

(declare-fun setRest!52823 () (InoxSet Context!14526))

(assert (=> setNonEmpty!52823 (= z!3530 ((_ map or) (store ((as const (Array Context!14526 Bool)) false) setElem!52823 true) setRest!52823))))

(declare-fun b!7158967 () Bool)

(declare-fun res!2918974 () Bool)

(assert (=> b!7158967 (=> (not res!2918974) (not e!4300839))))

(declare-fun isEmpty!40165 (List!69674) Bool)

(assert (=> b!7158967 (= res!2918974 (not (isEmpty!40165 s!7967)))))

(declare-fun setIsEmpty!52823 () Bool)

(assert (=> setIsEmpty!52823 setRes!52823))

(declare-fun b!7158968 () Bool)

(declare-fun tp!1979774 () Bool)

(assert (=> b!7158968 (= e!4300838 tp!1979774)))

(declare-fun b!7158969 () Bool)

(assert (=> b!7158969 (= e!4300842 e!4300839)))

(declare-fun res!2918979 () Bool)

(assert (=> b!7158969 (=> (not res!2918979) (not e!4300839))))

(assert (=> b!7158969 (= res!2918979 (= z!3530 (store ((as const (Array Context!14526 Bool)) false) lt!2569780 true)))))

(assert (=> b!7158969 (= lt!2569780 (Context!14527 Nil!69549))))

(assert (= (and start!698060 res!2918976) b!7158963))

(assert (= (and b!7158963 res!2918977) b!7158969))

(assert (= (and b!7158969 res!2918979) b!7158967))

(assert (= (and b!7158967 res!2918974) b!7158965))

(assert (= (and b!7158965 res!2918978) b!7158964))

(assert (= (and b!7158964 res!2918975) b!7158966))

(assert (= (and start!698060 condSetEmpty!52823) setIsEmpty!52823))

(assert (= (and start!698060 (not condSetEmpty!52823)) setNonEmpty!52823))

(assert (= setNonEmpty!52823 b!7158968))

(get-info :version)

(assert (= (and start!698060 ((_ is Cons!69550) s!7967)) b!7158962))

(declare-fun m!7865124 () Bool)

(assert (=> b!7158963 m!7865124))

(declare-fun m!7865126 () Bool)

(assert (=> b!7158966 m!7865126))

(declare-fun m!7865128 () Bool)

(assert (=> b!7158965 m!7865128))

(declare-fun m!7865130 () Bool)

(assert (=> b!7158965 m!7865130))

(declare-fun m!7865132 () Bool)

(assert (=> b!7158965 m!7865132))

(declare-fun m!7865134 () Bool)

(assert (=> setNonEmpty!52823 m!7865134))

(declare-fun m!7865136 () Bool)

(assert (=> start!698060 m!7865136))

(assert (=> start!698060 m!7865136))

(declare-fun m!7865138 () Bool)

(assert (=> start!698060 m!7865138))

(declare-fun m!7865140 () Bool)

(assert (=> b!7158969 m!7865140))

(declare-fun m!7865142 () Bool)

(assert (=> b!7158967 m!7865142))

(check-sat (not b!7158967) (not b!7158963) (not b!7158965) tp_is_empty!46195 (not b!7158966) (not start!698060) (not b!7158968) (not b!7158962) (not setNonEmpty!52823))
(check-sat)
(get-model)

(declare-fun b!7158980 () Bool)

(declare-fun e!4300849 () (InoxSet Context!14526))

(assert (=> b!7158980 (= e!4300849 ((as const (Array Context!14526 Bool)) false))))

(declare-fun bm!651866 () Bool)

(declare-fun call!651871 () (InoxSet Context!14526))

(declare-fun derivationStepZipperDown!2492 (Regex!18311 Context!14526 C!36896) (InoxSet Context!14526))

(assert (=> bm!651866 (= call!651871 (derivationStepZipperDown!2492 (h!75997 (exprs!7763 lt!2569780)) (Context!14527 (t!383690 (exprs!7763 lt!2569780))) lt!2569779))))

(declare-fun d!2230340 () Bool)

(declare-fun c!1334116 () Bool)

(declare-fun e!4300851 () Bool)

(assert (=> d!2230340 (= c!1334116 e!4300851)))

(declare-fun res!2918982 () Bool)

(assert (=> d!2230340 (=> (not res!2918982) (not e!4300851))))

(assert (=> d!2230340 (= res!2918982 ((_ is Cons!69549) (exprs!7763 lt!2569780)))))

(declare-fun e!4300850 () (InoxSet Context!14526))

(assert (=> d!2230340 (= (derivationStepZipperUp!2299 lt!2569780 lt!2569779) e!4300850)))

(declare-fun b!7158981 () Bool)

(declare-fun nullable!7750 (Regex!18311) Bool)

(assert (=> b!7158981 (= e!4300851 (nullable!7750 (h!75997 (exprs!7763 lt!2569780))))))

(declare-fun b!7158982 () Bool)

(assert (=> b!7158982 (= e!4300850 e!4300849)))

(declare-fun c!1334117 () Bool)

(assert (=> b!7158982 (= c!1334117 ((_ is Cons!69549) (exprs!7763 lt!2569780)))))

(declare-fun b!7158983 () Bool)

(assert (=> b!7158983 (= e!4300850 ((_ map or) call!651871 (derivationStepZipperUp!2299 (Context!14527 (t!383690 (exprs!7763 lt!2569780))) lt!2569779)))))

(declare-fun b!7158984 () Bool)

(assert (=> b!7158984 (= e!4300849 call!651871)))

(assert (= (and d!2230340 res!2918982) b!7158981))

(assert (= (and d!2230340 c!1334116) b!7158983))

(assert (= (and d!2230340 (not c!1334116)) b!7158982))

(assert (= (and b!7158982 c!1334117) b!7158984))

(assert (= (and b!7158982 (not c!1334117)) b!7158980))

(assert (= (or b!7158983 b!7158984) bm!651866))

(declare-fun m!7865144 () Bool)

(assert (=> bm!651866 m!7865144))

(declare-fun m!7865146 () Bool)

(assert (=> b!7158981 m!7865146))

(declare-fun m!7865148 () Bool)

(assert (=> b!7158983 m!7865148))

(assert (=> b!7158965 d!2230340))

(declare-fun d!2230342 () Bool)

(assert (=> d!2230342 true))

(declare-fun lambda!436736 () Int)

(declare-fun flatMap!2647 ((InoxSet Context!14526) Int) (InoxSet Context!14526))

(assert (=> d!2230342 (= (derivationStepZipper!3194 z!3530 lt!2569779) (flatMap!2647 z!3530 lambda!436736))))

(declare-fun bs!1890232 () Bool)

(assert (= bs!1890232 d!2230342))

(declare-fun m!7865150 () Bool)

(assert (=> bs!1890232 m!7865150))

(assert (=> b!7158965 d!2230342))

(declare-fun d!2230344 () Bool)

(assert (=> d!2230344 (= (head!14597 s!7967) (h!75998 s!7967))))

(assert (=> b!7158965 d!2230344))

(declare-fun d!2230346 () Bool)

(declare-fun e!4300854 () Bool)

(assert (=> d!2230346 e!4300854))

(declare-fun res!2918986 () Bool)

(assert (=> d!2230346 (=> (not res!2918986) (not e!4300854))))

(declare-fun validRegex!9439 (Regex!18311) Bool)

(assert (=> d!2230346 (= res!2918986 (validRegex!9439 EmptyExpr!18311))))

(assert (=> d!2230346 (= (focus!386 EmptyExpr!18311) (store ((as const (Array Context!14526 Bool)) false) (Context!14527 (Cons!69549 EmptyExpr!18311 Nil!69549)) true))))

(declare-fun b!7158989 () Bool)

(assert (=> b!7158989 (= e!4300854 (= (unfocusZipper!2571 (toList!11254 (store ((as const (Array Context!14526 Bool)) false) (Context!14527 (Cons!69549 EmptyExpr!18311 Nil!69549)) true))) EmptyExpr!18311))))

(assert (= (and d!2230346 res!2918986) b!7158989))

(declare-fun m!7865152 () Bool)

(assert (=> d!2230346 m!7865152))

(declare-fun m!7865154 () Bool)

(assert (=> d!2230346 m!7865154))

(assert (=> b!7158989 m!7865154))

(assert (=> b!7158989 m!7865154))

(declare-fun m!7865156 () Bool)

(assert (=> b!7158989 m!7865156))

(assert (=> b!7158989 m!7865156))

(declare-fun m!7865158 () Bool)

(assert (=> b!7158989 m!7865158))

(assert (=> b!7158963 d!2230346))

(declare-fun d!2230348 () Bool)

(declare-fun lt!2569783 () Regex!18311)

(assert (=> d!2230348 (validRegex!9439 lt!2569783)))

(declare-fun generalisedUnion!2742 (List!69673) Regex!18311)

(declare-fun unfocusZipperList!2298 (List!69675) List!69673)

(assert (=> d!2230348 (= lt!2569783 (generalisedUnion!2742 (unfocusZipperList!2298 (toList!11254 z!3530))))))

(assert (=> d!2230348 (= (unfocusZipper!2571 (toList!11254 z!3530)) lt!2569783)))

(declare-fun bs!1890233 () Bool)

(assert (= bs!1890233 d!2230348))

(declare-fun m!7865160 () Bool)

(assert (=> bs!1890233 m!7865160))

(assert (=> bs!1890233 m!7865136))

(declare-fun m!7865162 () Bool)

(assert (=> bs!1890233 m!7865162))

(assert (=> bs!1890233 m!7865162))

(declare-fun m!7865164 () Bool)

(assert (=> bs!1890233 m!7865164))

(assert (=> start!698060 d!2230348))

(declare-fun d!2230350 () Bool)

(declare-fun e!4300857 () Bool)

(assert (=> d!2230350 e!4300857))

(declare-fun res!2918989 () Bool)

(assert (=> d!2230350 (=> (not res!2918989) (not e!4300857))))

(declare-fun lt!2569786 () List!69675)

(declare-fun noDuplicate!2858 (List!69675) Bool)

(assert (=> d!2230350 (= res!2918989 (noDuplicate!2858 lt!2569786))))

(declare-fun choose!55327 ((InoxSet Context!14526)) List!69675)

(assert (=> d!2230350 (= lt!2569786 (choose!55327 z!3530))))

(assert (=> d!2230350 (= (toList!11254 z!3530) lt!2569786)))

(declare-fun b!7158992 () Bool)

(declare-fun content!14287 (List!69675) (InoxSet Context!14526))

(assert (=> b!7158992 (= e!4300857 (= (content!14287 lt!2569786) z!3530))))

(assert (= (and d!2230350 res!2918989) b!7158992))

(declare-fun m!7865166 () Bool)

(assert (=> d!2230350 m!7865166))

(declare-fun m!7865168 () Bool)

(assert (=> d!2230350 m!7865168))

(declare-fun m!7865170 () Bool)

(assert (=> b!7158992 m!7865170))

(assert (=> start!698060 d!2230350))

(declare-fun d!2230352 () Bool)

(declare-fun lambda!436739 () Int)

(declare-fun forall!17142 (List!69673 Int) Bool)

(assert (=> d!2230352 (= (inv!88799 setElem!52823) (forall!17142 (exprs!7763 setElem!52823) lambda!436739))))

(declare-fun bs!1890234 () Bool)

(assert (= bs!1890234 d!2230352))

(declare-fun m!7865172 () Bool)

(assert (=> bs!1890234 m!7865172))

(assert (=> setNonEmpty!52823 d!2230352))

(declare-fun d!2230354 () Bool)

(assert (=> d!2230354 (= (isEmpty!40165 s!7967) ((_ is Nil!69550) s!7967))))

(assert (=> b!7158967 d!2230354))

(declare-fun d!2230356 () Bool)

(declare-fun e!4300858 () Bool)

(assert (=> d!2230356 e!4300858))

(declare-fun res!2918990 () Bool)

(assert (=> d!2230356 (=> (not res!2918990) (not e!4300858))))

(declare-fun lt!2569787 () List!69675)

(assert (=> d!2230356 (= res!2918990 (noDuplicate!2858 lt!2569787))))

(assert (=> d!2230356 (= lt!2569787 (choose!55327 lt!2569777))))

(assert (=> d!2230356 (= (toList!11254 lt!2569777) lt!2569787)))

(declare-fun b!7158993 () Bool)

(assert (=> b!7158993 (= e!4300858 (= (content!14287 lt!2569787) lt!2569777))))

(assert (= (and d!2230356 res!2918990) b!7158993))

(declare-fun m!7865174 () Bool)

(assert (=> d!2230356 m!7865174))

(declare-fun m!7865176 () Bool)

(assert (=> d!2230356 m!7865176))

(declare-fun m!7865178 () Bool)

(assert (=> b!7158993 m!7865178))

(assert (=> b!7158966 d!2230356))

(declare-fun b!7158998 () Bool)

(declare-fun e!4300861 () Bool)

(declare-fun tp!1979780 () Bool)

(declare-fun tp!1979781 () Bool)

(assert (=> b!7158998 (= e!4300861 (and tp!1979780 tp!1979781))))

(assert (=> b!7158968 (= tp!1979774 e!4300861)))

(assert (= (and b!7158968 ((_ is Cons!69549) (exprs!7763 setElem!52823))) b!7158998))

(declare-fun condSetEmpty!52826 () Bool)

(assert (=> setNonEmpty!52823 (= condSetEmpty!52826 (= setRest!52823 ((as const (Array Context!14526 Bool)) false)))))

(declare-fun setRes!52826 () Bool)

(assert (=> setNonEmpty!52823 (= tp!1979775 setRes!52826)))

(declare-fun setIsEmpty!52826 () Bool)

(assert (=> setIsEmpty!52826 setRes!52826))

(declare-fun tp!1979787 () Bool)

(declare-fun setNonEmpty!52826 () Bool)

(declare-fun e!4300864 () Bool)

(declare-fun setElem!52826 () Context!14526)

(assert (=> setNonEmpty!52826 (= setRes!52826 (and tp!1979787 (inv!88799 setElem!52826) e!4300864))))

(declare-fun setRest!52826 () (InoxSet Context!14526))

(assert (=> setNonEmpty!52826 (= setRest!52823 ((_ map or) (store ((as const (Array Context!14526 Bool)) false) setElem!52826 true) setRest!52826))))

(declare-fun b!7159003 () Bool)

(declare-fun tp!1979786 () Bool)

(assert (=> b!7159003 (= e!4300864 tp!1979786)))

(assert (= (and setNonEmpty!52823 condSetEmpty!52826) setIsEmpty!52826))

(assert (= (and setNonEmpty!52823 (not condSetEmpty!52826)) setNonEmpty!52826))

(assert (= setNonEmpty!52826 b!7159003))

(declare-fun m!7865180 () Bool)

(assert (=> setNonEmpty!52826 m!7865180))

(declare-fun b!7159008 () Bool)

(declare-fun e!4300867 () Bool)

(declare-fun tp!1979790 () Bool)

(assert (=> b!7159008 (= e!4300867 (and tp_is_empty!46195 tp!1979790))))

(assert (=> b!7158962 (= tp!1979773 e!4300867)))

(assert (= (and b!7158962 ((_ is Cons!69550) (t!383691 s!7967))) b!7159008))

(check-sat (not b!7158992) (not d!2230350) (not d!2230342) (not b!7158981) tp_is_empty!46195 (not setNonEmpty!52826) (not d!2230356) (not bm!651866) (not b!7158998) (not b!7158989) (not b!7159008) (not d!2230352) (not b!7159003) (not d!2230346) (not d!2230348) (not b!7158983) (not b!7158993))
(check-sat)
