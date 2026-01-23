; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550110 () Bool)

(assert start!550110)

(declare-fun b!5200145 () Bool)

(assert (=> b!5200145 true))

(assert (=> b!5200145 true))

(declare-fun lambda!260488 () Int)

(declare-fun lambda!260487 () Int)

(assert (=> b!5200145 (not (= lambda!260488 lambda!260487))))

(assert (=> b!5200145 true))

(assert (=> b!5200145 true))

(declare-fun b!5200121 () Bool)

(assert (=> b!5200121 true))

(declare-fun e!3238200 () Bool)

(declare-fun e!3238195 () Bool)

(assert (=> b!5200121 (= e!3238200 e!3238195)))

(declare-fun res!2209259 () Bool)

(assert (=> b!5200121 (=> res!2209259 e!3238195)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29828 0))(
  ( (C!29829 (val!24616 Int)) )
))
(declare-datatypes ((Regex!14779 0))(
  ( (ElementMatch!14779 (c!896258 C!29828)) (Concat!23624 (regOne!30070 Regex!14779) (regTwo!30070 Regex!14779)) (EmptyExpr!14779) (Star!14779 (reg!15108 Regex!14779)) (EmptyLang!14779) (Union!14779 (regOne!30071 Regex!14779) (regTwo!30071 Regex!14779)) )
))
(declare-datatypes ((List!60636 0))(
  ( (Nil!60512) (Cons!60512 (h!66960 Regex!14779) (t!373789 List!60636)) )
))
(declare-datatypes ((Context!8326 0))(
  ( (Context!8327 (exprs!4663 List!60636)) )
))
(declare-fun lt!2140717 () (InoxSet Context!8326))

(declare-fun lt!2140724 () (InoxSet Context!8326))

(assert (=> b!5200121 (= res!2209259 (not (= lt!2140717 lt!2140724)))))

(declare-datatypes ((List!60637 0))(
  ( (Nil!60513) (Cons!60513 (h!66961 C!29828) (t!373790 List!60637)) )
))
(declare-fun s!2326 () List!60637)

(declare-fun z!1189 () (InoxSet Context!8326))

(declare-fun lambda!260489 () Int)

(declare-datatypes ((List!60638 0))(
  ( (Nil!60514) (Cons!60514 (h!66962 Context!8326) (t!373791 List!60638)) )
))
(declare-fun zl!343 () List!60638)

(declare-fun flatMap!510 ((InoxSet Context!8326) Int) (InoxSet Context!8326))

(declare-fun derivationStepZipperUp!151 (Context!8326 C!29828) (InoxSet Context!8326))

(assert (=> b!5200121 (= (flatMap!510 z!1189 lambda!260489) (derivationStepZipperUp!151 (h!66962 zl!343) (h!66961 s!2326)))))

(declare-datatypes ((Unit!152392 0))(
  ( (Unit!152393) )
))
(declare-fun lt!2140726 () Unit!152392)

(declare-fun lemmaFlatMapOnSingletonSet!42 ((InoxSet Context!8326) Context!8326 Int) Unit!152392)

(assert (=> b!5200121 (= lt!2140726 (lemmaFlatMapOnSingletonSet!42 z!1189 (h!66962 zl!343) lambda!260489))))

(declare-fun b!5200122 () Bool)

(declare-fun e!3238201 () Bool)

(declare-fun e!3238202 () Bool)

(assert (=> b!5200122 (= e!3238201 e!3238202)))

(declare-fun res!2209249 () Bool)

(assert (=> b!5200122 (=> res!2209249 e!3238202)))

(declare-fun r!7292 () Regex!14779)

(declare-fun validRegex!6515 (Regex!14779) Bool)

(assert (=> b!5200122 (= res!2209249 (not (validRegex!6515 (regTwo!30070 r!7292))))))

(declare-fun lt!2140705 () List!60638)

(declare-fun lt!2140710 () Context!8326)

(assert (=> b!5200122 (= lt!2140705 (Cons!60514 lt!2140710 Nil!60514))))

(declare-fun lt!2140722 () Regex!14779)

(declare-fun lt!2140718 () (InoxSet Context!8326))

(declare-fun matchR!6964 (Regex!14779 List!60637) Bool)

(declare-fun matchZipper!1027 ((InoxSet Context!8326) List!60637) Bool)

(assert (=> b!5200122 (= (matchR!6964 lt!2140722 s!2326) (matchZipper!1027 lt!2140718 s!2326))))

(declare-fun lt!2140714 () Unit!152392)

(declare-fun lt!2140727 () List!60638)

(declare-fun theoremZipperRegexEquiv!255 ((InoxSet Context!8326) List!60638 Regex!14779 List!60637) Unit!152392)

(assert (=> b!5200122 (= lt!2140714 (theoremZipperRegexEquiv!255 lt!2140718 lt!2140727 lt!2140722 s!2326))))

(assert (=> b!5200122 (= lt!2140722 (Concat!23624 (regOne!30070 r!7292) (regTwo!30070 r!7292)))))

(declare-fun b!5200123 () Bool)

(declare-fun res!2209254 () Bool)

(declare-fun e!3238205 () Bool)

(assert (=> b!5200123 (=> res!2209254 e!3238205)))

(get-info :version)

(assert (=> b!5200123 (= res!2209254 (or ((_ is EmptyExpr!14779) r!7292) ((_ is EmptyLang!14779) r!7292) ((_ is ElementMatch!14779) r!7292) ((_ is Union!14779) r!7292) (not ((_ is Concat!23624) r!7292))))))

(declare-fun b!5200124 () Bool)

(declare-fun res!2209252 () Bool)

(assert (=> b!5200124 (=> res!2209252 e!3238205)))

(declare-fun generalisedUnion!708 (List!60636) Regex!14779)

(declare-fun unfocusZipperList!221 (List!60638) List!60636)

(assert (=> b!5200124 (= res!2209252 (not (= r!7292 (generalisedUnion!708 (unfocusZipperList!221 zl!343)))))))

(declare-fun b!5200125 () Bool)

(declare-fun res!2209247 () Bool)

(assert (=> b!5200125 (=> res!2209247 e!3238202)))

(declare-fun unfocusZipper!521 (List!60638) Regex!14779)

(assert (=> b!5200125 (= res!2209247 (not (= (regTwo!30070 r!7292) (unfocusZipper!521 lt!2140705))))))

(declare-fun b!5200126 () Bool)

(declare-fun e!3238196 () Bool)

(declare-fun tp!1458603 () Bool)

(assert (=> b!5200126 (= e!3238196 tp!1458603)))

(declare-fun b!5200127 () Bool)

(declare-fun tp!1458609 () Bool)

(declare-fun e!3238203 () Bool)

(declare-fun inv!80194 (Context!8326) Bool)

(assert (=> b!5200127 (= e!3238203 (and (inv!80194 (h!66962 zl!343)) e!3238196 tp!1458609))))

(declare-fun b!5200128 () Bool)

(declare-fun res!2209258 () Bool)

(declare-fun e!3238193 () Bool)

(assert (=> b!5200128 (=> res!2209258 e!3238193)))

(declare-fun lt!2140723 () (InoxSet Context!8326))

(declare-fun lt!2140701 () List!60636)

(declare-fun lt!2140729 () Regex!14779)

(assert (=> b!5200128 (= res!2209258 (or (not (= lt!2140717 lt!2140723)) (not (= lt!2140729 r!7292)) (not (= (exprs!4663 (h!66962 zl!343)) lt!2140701))))))

(declare-fun b!5200129 () Bool)

(declare-fun res!2209256 () Bool)

(declare-fun e!3238199 () Bool)

(assert (=> b!5200129 (=> (not res!2209256) (not e!3238199))))

(declare-fun toList!8563 ((InoxSet Context!8326)) List!60638)

(assert (=> b!5200129 (= res!2209256 (= (toList!8563 z!1189) zl!343))))

(declare-fun setIsEmpty!32968 () Bool)

(declare-fun setRes!32968 () Bool)

(assert (=> setIsEmpty!32968 setRes!32968))

(declare-fun b!5200130 () Bool)

(assert (=> b!5200130 (= e!3238202 true)))

(declare-fun lt!2140707 () (InoxSet Context!8326))

(assert (=> b!5200130 (= (matchR!6964 (regTwo!30070 r!7292) s!2326) (matchZipper!1027 lt!2140707 s!2326))))

(declare-fun lt!2140720 () Unit!152392)

(assert (=> b!5200130 (= lt!2140720 (theoremZipperRegexEquiv!255 lt!2140707 lt!2140705 (regTwo!30070 r!7292) s!2326))))

(declare-fun b!5200131 () Bool)

(declare-fun e!3238194 () Bool)

(declare-fun tp!1458608 () Bool)

(declare-fun tp!1458601 () Bool)

(assert (=> b!5200131 (= e!3238194 (and tp!1458608 tp!1458601))))

(declare-fun b!5200132 () Bool)

(assert (=> b!5200132 (= e!3238195 e!3238193)))

(declare-fun res!2209262 () Bool)

(assert (=> b!5200132 (=> res!2209262 e!3238193)))

(declare-fun nullable!4950 (Regex!14779) Bool)

(assert (=> b!5200132 (= res!2209262 (nullable!4950 (regOne!30070 r!7292)))))

(declare-fun lt!2140709 () Context!8326)

(declare-fun lt!2140721 () (InoxSet Context!8326))

(declare-fun derivationStepZipperDown!228 (Regex!14779 Context!8326 C!29828) (InoxSet Context!8326))

(assert (=> b!5200132 (= lt!2140721 (derivationStepZipperDown!228 (regTwo!30070 r!7292) lt!2140709 (h!66961 s!2326)))))

(assert (=> b!5200132 (= lt!2140723 (derivationStepZipperDown!228 (regOne!30070 r!7292) lt!2140710 (h!66961 s!2326)))))

(assert (=> b!5200132 (= (flatMap!510 lt!2140707 lambda!260489) (derivationStepZipperUp!151 lt!2140710 (h!66961 s!2326)))))

(declare-fun lt!2140703 () Unit!152392)

(assert (=> b!5200132 (= lt!2140703 (lemmaFlatMapOnSingletonSet!42 lt!2140707 lt!2140710 lambda!260489))))

(declare-fun lt!2140702 () Context!8326)

(assert (=> b!5200132 (= (flatMap!510 lt!2140718 lambda!260489) (derivationStepZipperUp!151 lt!2140702 (h!66961 s!2326)))))

(declare-fun lt!2140708 () Unit!152392)

(assert (=> b!5200132 (= lt!2140708 (lemmaFlatMapOnSingletonSet!42 lt!2140718 lt!2140702 lambda!260489))))

(declare-fun lt!2140706 () (InoxSet Context!8326))

(assert (=> b!5200132 (= lt!2140706 (derivationStepZipperUp!151 lt!2140710 (h!66961 s!2326)))))

(declare-fun lt!2140715 () (InoxSet Context!8326))

(assert (=> b!5200132 (= lt!2140715 (derivationStepZipperUp!151 lt!2140702 (h!66961 s!2326)))))

(assert (=> b!5200132 (= lt!2140707 (store ((as const (Array Context!8326 Bool)) false) lt!2140710 true))))

(declare-fun lt!2140704 () List!60636)

(assert (=> b!5200132 (= lt!2140710 (Context!8327 lt!2140704))))

(assert (=> b!5200132 (= lt!2140718 (store ((as const (Array Context!8326 Bool)) false) lt!2140702 true))))

(assert (=> b!5200132 (= lt!2140702 (Context!8327 (Cons!60512 (regOne!30070 r!7292) lt!2140704)))))

(assert (=> b!5200132 (= lt!2140704 (Cons!60512 (regTwo!30070 r!7292) Nil!60512))))

(declare-fun b!5200133 () Bool)

(declare-fun res!2209250 () Bool)

(declare-fun e!3238204 () Bool)

(assert (=> b!5200133 (=> res!2209250 e!3238204)))

(declare-fun isEmpty!32422 (List!60636) Bool)

(assert (=> b!5200133 (= res!2209250 (not (isEmpty!32422 (t!373789 (exprs!4663 (h!66962 zl!343))))))))

(declare-fun b!5200134 () Bool)

(declare-fun e!3238197 () Bool)

(declare-fun tp!1458600 () Bool)

(assert (=> b!5200134 (= e!3238197 tp!1458600)))

(declare-fun b!5200135 () Bool)

(assert (=> b!5200135 (= e!3238204 e!3238200)))

(declare-fun res!2209245 () Bool)

(assert (=> b!5200135 (=> res!2209245 e!3238200)))

(declare-fun lt!2140716 () (InoxSet Context!8326))

(assert (=> b!5200135 (= res!2209245 (not (= lt!2140716 lt!2140724)))))

(assert (=> b!5200135 (= lt!2140724 (derivationStepZipperDown!228 r!7292 lt!2140709 (h!66961 s!2326)))))

(assert (=> b!5200135 (= lt!2140709 (Context!8327 Nil!60512))))

(declare-fun lt!2140712 () Context!8326)

(assert (=> b!5200135 (= lt!2140716 (derivationStepZipperUp!151 lt!2140712 (h!66961 s!2326)))))

(assert (=> b!5200135 (= lt!2140712 (Context!8327 lt!2140701))))

(assert (=> b!5200135 (= lt!2140701 (Cons!60512 r!7292 Nil!60512))))

(declare-fun derivationStepZipper!1059 ((InoxSet Context!8326) C!29828) (InoxSet Context!8326))

(assert (=> b!5200135 (= lt!2140717 (derivationStepZipper!1059 z!1189 (h!66961 s!2326)))))

(declare-fun b!5200136 () Bool)

(declare-fun tp!1458607 () Bool)

(assert (=> b!5200136 (= e!3238194 tp!1458607)))

(declare-fun b!5200137 () Bool)

(declare-fun res!2209248 () Bool)

(assert (=> b!5200137 (=> res!2209248 e!3238205)))

(declare-fun isEmpty!32423 (List!60638) Bool)

(assert (=> b!5200137 (= res!2209248 (not (isEmpty!32423 (t!373791 zl!343))))))

(declare-fun b!5200138 () Bool)

(assert (=> b!5200138 (= e!3238193 e!3238201)))

(declare-fun res!2209246 () Bool)

(assert (=> b!5200138 (=> res!2209246 e!3238201)))

(declare-fun zipperDepth!12 (List!60638) Int)

(assert (=> b!5200138 (= res!2209246 (>= (zipperDepth!12 lt!2140727) (zipperDepth!12 (Cons!60514 lt!2140712 Nil!60514))))))

(assert (=> b!5200138 (= lt!2140727 (Cons!60514 lt!2140702 Nil!60514))))

(declare-fun b!5200139 () Bool)

(declare-fun e!3238192 () Bool)

(declare-fun tp_is_empty!38811 () Bool)

(declare-fun tp!1458605 () Bool)

(assert (=> b!5200139 (= e!3238192 (and tp_is_empty!38811 tp!1458605))))

(declare-fun b!5200140 () Bool)

(declare-fun e!3238198 () Bool)

(assert (=> b!5200140 (= e!3238198 (not e!3238205))))

(declare-fun res!2209244 () Bool)

(assert (=> b!5200140 (=> res!2209244 e!3238205)))

(assert (=> b!5200140 (= res!2209244 (not ((_ is Cons!60514) zl!343)))))

(declare-fun lt!2140728 () Bool)

(declare-fun matchRSpec!1882 (Regex!14779 List!60637) Bool)

(assert (=> b!5200140 (= lt!2140728 (matchRSpec!1882 r!7292 s!2326))))

(assert (=> b!5200140 (= lt!2140728 (matchR!6964 r!7292 s!2326))))

(declare-fun lt!2140713 () Unit!152392)

(declare-fun mainMatchTheorem!1882 (Regex!14779 List!60637) Unit!152392)

(assert (=> b!5200140 (= lt!2140713 (mainMatchTheorem!1882 r!7292 s!2326))))

(declare-fun b!5200141 () Bool)

(assert (=> b!5200141 (= e!3238199 e!3238198)))

(declare-fun res!2209260 () Bool)

(assert (=> b!5200141 (=> (not res!2209260) (not e!3238198))))

(assert (=> b!5200141 (= res!2209260 (= r!7292 lt!2140729))))

(assert (=> b!5200141 (= lt!2140729 (unfocusZipper!521 zl!343))))

(declare-fun b!5200142 () Bool)

(declare-fun res!2209253 () Bool)

(assert (=> b!5200142 (=> res!2209253 e!3238205)))

(declare-fun generalisedConcat!448 (List!60636) Regex!14779)

(assert (=> b!5200142 (= res!2209253 (not (= r!7292 (generalisedConcat!448 (exprs!4663 (h!66962 zl!343))))))))

(declare-fun b!5200143 () Bool)

(declare-fun res!2209261 () Bool)

(assert (=> b!5200143 (=> res!2209261 e!3238205)))

(assert (=> b!5200143 (= res!2209261 (not ((_ is Cons!60512) (exprs!4663 (h!66962 zl!343)))))))

(declare-fun b!5200144 () Bool)

(declare-fun res!2209251 () Bool)

(assert (=> b!5200144 (=> res!2209251 e!3238202)))

(assert (=> b!5200144 (= res!2209251 (not (= (toList!8563 lt!2140707) lt!2140705)))))

(assert (=> b!5200145 (= e!3238205 e!3238204)))

(declare-fun res!2209255 () Bool)

(assert (=> b!5200145 (=> res!2209255 e!3238204)))

(declare-fun lt!2140719 () Bool)

(assert (=> b!5200145 (= res!2209255 (or (not (= lt!2140728 lt!2140719)) ((_ is Nil!60513) s!2326)))))

(declare-fun Exists!1960 (Int) Bool)

(assert (=> b!5200145 (= (Exists!1960 lambda!260487) (Exists!1960 lambda!260488))))

(declare-fun lt!2140725 () Unit!152392)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!614 (Regex!14779 Regex!14779 List!60637) Unit!152392)

(assert (=> b!5200145 (= lt!2140725 (lemmaExistCutMatchRandMatchRSpecEquivalent!614 (regOne!30070 r!7292) (regTwo!30070 r!7292) s!2326))))

(assert (=> b!5200145 (= lt!2140719 (Exists!1960 lambda!260487))))

(declare-datatypes ((tuple2!63956 0))(
  ( (tuple2!63957 (_1!35281 List!60637) (_2!35281 List!60637)) )
))
(declare-datatypes ((Option!14890 0))(
  ( (None!14889) (Some!14889 (v!50918 tuple2!63956)) )
))
(declare-fun isDefined!11593 (Option!14890) Bool)

(declare-fun findConcatSeparation!1304 (Regex!14779 Regex!14779 List!60637 List!60637 List!60637) Option!14890)

(assert (=> b!5200145 (= lt!2140719 (isDefined!11593 (findConcatSeparation!1304 (regOne!30070 r!7292) (regTwo!30070 r!7292) Nil!60513 s!2326 s!2326)))))

(declare-fun lt!2140711 () Unit!152392)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1068 (Regex!14779 Regex!14779 List!60637) Unit!152392)

(assert (=> b!5200145 (= lt!2140711 (lemmaFindConcatSeparationEquivalentToExists!1068 (regOne!30070 r!7292) (regTwo!30070 r!7292) s!2326))))

(declare-fun setElem!32968 () Context!8326)

(declare-fun tp!1458602 () Bool)

(declare-fun setNonEmpty!32968 () Bool)

(assert (=> setNonEmpty!32968 (= setRes!32968 (and tp!1458602 (inv!80194 setElem!32968) e!3238197))))

(declare-fun setRest!32968 () (InoxSet Context!8326))

(assert (=> setNonEmpty!32968 (= z!1189 ((_ map or) (store ((as const (Array Context!8326 Bool)) false) setElem!32968 true) setRest!32968))))

(declare-fun res!2209257 () Bool)

(assert (=> start!550110 (=> (not res!2209257) (not e!3238199))))

(assert (=> start!550110 (= res!2209257 (validRegex!6515 r!7292))))

(assert (=> start!550110 e!3238199))

(assert (=> start!550110 e!3238194))

(declare-fun condSetEmpty!32968 () Bool)

(assert (=> start!550110 (= condSetEmpty!32968 (= z!1189 ((as const (Array Context!8326 Bool)) false)))))

(assert (=> start!550110 setRes!32968))

(assert (=> start!550110 e!3238203))

(assert (=> start!550110 e!3238192))

(declare-fun b!5200146 () Bool)

(declare-fun tp!1458604 () Bool)

(declare-fun tp!1458606 () Bool)

(assert (=> b!5200146 (= e!3238194 (and tp!1458604 tp!1458606))))

(declare-fun b!5200147 () Bool)

(assert (=> b!5200147 (= e!3238194 tp_is_empty!38811)))

(assert (= (and start!550110 res!2209257) b!5200129))

(assert (= (and b!5200129 res!2209256) b!5200141))

(assert (= (and b!5200141 res!2209260) b!5200140))

(assert (= (and b!5200140 (not res!2209244)) b!5200137))

(assert (= (and b!5200137 (not res!2209248)) b!5200142))

(assert (= (and b!5200142 (not res!2209253)) b!5200143))

(assert (= (and b!5200143 (not res!2209261)) b!5200124))

(assert (= (and b!5200124 (not res!2209252)) b!5200123))

(assert (= (and b!5200123 (not res!2209254)) b!5200145))

(assert (= (and b!5200145 (not res!2209255)) b!5200133))

(assert (= (and b!5200133 (not res!2209250)) b!5200135))

(assert (= (and b!5200135 (not res!2209245)) b!5200121))

(assert (= (and b!5200121 (not res!2209259)) b!5200132))

(assert (= (and b!5200132 (not res!2209262)) b!5200128))

(assert (= (and b!5200128 (not res!2209258)) b!5200138))

(assert (= (and b!5200138 (not res!2209246)) b!5200122))

(assert (= (and b!5200122 (not res!2209249)) b!5200144))

(assert (= (and b!5200144 (not res!2209251)) b!5200125))

(assert (= (and b!5200125 (not res!2209247)) b!5200130))

(assert (= (and start!550110 ((_ is ElementMatch!14779) r!7292)) b!5200147))

(assert (= (and start!550110 ((_ is Concat!23624) r!7292)) b!5200131))

(assert (= (and start!550110 ((_ is Star!14779) r!7292)) b!5200136))

(assert (= (and start!550110 ((_ is Union!14779) r!7292)) b!5200146))

(assert (= (and start!550110 condSetEmpty!32968) setIsEmpty!32968))

(assert (= (and start!550110 (not condSetEmpty!32968)) setNonEmpty!32968))

(assert (= setNonEmpty!32968 b!5200134))

(assert (= b!5200127 b!5200126))

(assert (= (and start!550110 ((_ is Cons!60514) zl!343)) b!5200127))

(assert (= (and start!550110 ((_ is Cons!60513) s!2326)) b!5200139))

(declare-fun m!6253012 () Bool)

(assert (=> b!5200125 m!6253012))

(declare-fun m!6253014 () Bool)

(assert (=> b!5200140 m!6253014))

(declare-fun m!6253016 () Bool)

(assert (=> b!5200140 m!6253016))

(declare-fun m!6253018 () Bool)

(assert (=> b!5200140 m!6253018))

(declare-fun m!6253020 () Bool)

(assert (=> b!5200127 m!6253020))

(declare-fun m!6253022 () Bool)

(assert (=> start!550110 m!6253022))

(declare-fun m!6253024 () Bool)

(assert (=> b!5200133 m!6253024))

(declare-fun m!6253026 () Bool)

(assert (=> b!5200137 m!6253026))

(declare-fun m!6253028 () Bool)

(assert (=> b!5200135 m!6253028))

(declare-fun m!6253030 () Bool)

(assert (=> b!5200135 m!6253030))

(declare-fun m!6253032 () Bool)

(assert (=> b!5200135 m!6253032))

(declare-fun m!6253034 () Bool)

(assert (=> b!5200122 m!6253034))

(declare-fun m!6253036 () Bool)

(assert (=> b!5200122 m!6253036))

(declare-fun m!6253038 () Bool)

(assert (=> b!5200122 m!6253038))

(declare-fun m!6253040 () Bool)

(assert (=> b!5200122 m!6253040))

(declare-fun m!6253042 () Bool)

(assert (=> b!5200142 m!6253042))

(declare-fun m!6253044 () Bool)

(assert (=> b!5200124 m!6253044))

(assert (=> b!5200124 m!6253044))

(declare-fun m!6253046 () Bool)

(assert (=> b!5200124 m!6253046))

(declare-fun m!6253048 () Bool)

(assert (=> b!5200130 m!6253048))

(declare-fun m!6253050 () Bool)

(assert (=> b!5200130 m!6253050))

(declare-fun m!6253052 () Bool)

(assert (=> b!5200130 m!6253052))

(declare-fun m!6253054 () Bool)

(assert (=> b!5200121 m!6253054))

(declare-fun m!6253056 () Bool)

(assert (=> b!5200121 m!6253056))

(declare-fun m!6253058 () Bool)

(assert (=> b!5200121 m!6253058))

(declare-fun m!6253060 () Bool)

(assert (=> b!5200145 m!6253060))

(declare-fun m!6253062 () Bool)

(assert (=> b!5200145 m!6253062))

(declare-fun m!6253064 () Bool)

(assert (=> b!5200145 m!6253064))

(declare-fun m!6253066 () Bool)

(assert (=> b!5200145 m!6253066))

(assert (=> b!5200145 m!6253066))

(declare-fun m!6253068 () Bool)

(assert (=> b!5200145 m!6253068))

(assert (=> b!5200145 m!6253062))

(declare-fun m!6253070 () Bool)

(assert (=> b!5200145 m!6253070))

(declare-fun m!6253072 () Bool)

(assert (=> b!5200144 m!6253072))

(declare-fun m!6253074 () Bool)

(assert (=> b!5200132 m!6253074))

(declare-fun m!6253076 () Bool)

(assert (=> b!5200132 m!6253076))

(declare-fun m!6253078 () Bool)

(assert (=> b!5200132 m!6253078))

(declare-fun m!6253080 () Bool)

(assert (=> b!5200132 m!6253080))

(declare-fun m!6253082 () Bool)

(assert (=> b!5200132 m!6253082))

(declare-fun m!6253084 () Bool)

(assert (=> b!5200132 m!6253084))

(declare-fun m!6253086 () Bool)

(assert (=> b!5200132 m!6253086))

(declare-fun m!6253088 () Bool)

(assert (=> b!5200132 m!6253088))

(declare-fun m!6253090 () Bool)

(assert (=> b!5200132 m!6253090))

(declare-fun m!6253092 () Bool)

(assert (=> b!5200132 m!6253092))

(declare-fun m!6253094 () Bool)

(assert (=> b!5200132 m!6253094))

(declare-fun m!6253096 () Bool)

(assert (=> b!5200141 m!6253096))

(declare-fun m!6253098 () Bool)

(assert (=> b!5200129 m!6253098))

(declare-fun m!6253100 () Bool)

(assert (=> b!5200138 m!6253100))

(declare-fun m!6253102 () Bool)

(assert (=> b!5200138 m!6253102))

(declare-fun m!6253104 () Bool)

(assert (=> setNonEmpty!32968 m!6253104))

(check-sat (not b!5200140) (not b!5200127) (not b!5200142) (not b!5200144) (not b!5200124) (not b!5200139) (not b!5200129) (not b!5200126) (not b!5200125) (not b!5200138) (not b!5200132) (not b!5200130) (not b!5200122) (not b!5200141) (not b!5200145) (not setNonEmpty!32968) (not b!5200133) (not b!5200136) (not b!5200121) (not start!550110) (not b!5200146) (not b!5200134) tp_is_empty!38811 (not b!5200135) (not b!5200137) (not b!5200131))
(check-sat)
