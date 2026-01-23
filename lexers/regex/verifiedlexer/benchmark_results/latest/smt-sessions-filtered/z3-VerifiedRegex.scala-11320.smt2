; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597240 () Bool)

(assert start!597240)

(declare-fun setIsEmpty!39444 () Bool)

(declare-fun setRes!39444 () Bool)

(assert (=> setIsEmpty!39444 setRes!39444))

(declare-fun b!5830867 () Bool)

(declare-fun e!3577468 () Bool)

(declare-fun tp!1611007 () Bool)

(assert (=> b!5830867 (= e!3577468 tp!1611007)))

(declare-fun b!5830868 () Bool)

(declare-fun e!3577469 () Bool)

(declare-fun tp_is_empty!41027 () Bool)

(declare-fun tp!1611004 () Bool)

(assert (=> b!5830868 (= e!3577469 (and tp_is_empty!41027 tp!1611004))))

(declare-fun b!5830869 () Bool)

(declare-fun res!2457486 () Bool)

(declare-fun e!3577471 () Bool)

(assert (=> b!5830869 (=> res!2457486 e!3577471)))

(declare-datatypes ((C!32044 0))(
  ( (C!32045 (val!25724 Int)) )
))
(declare-datatypes ((Regex!15887 0))(
  ( (ElementMatch!15887 (c!1033165 C!32044)) (Concat!24732 (regOne!32286 Regex!15887) (regTwo!32286 Regex!15887)) (EmptyExpr!15887) (Star!15887 (reg!16216 Regex!15887)) (EmptyLang!15887) (Union!15887 (regOne!32287 Regex!15887) (regTwo!32287 Regex!15887)) )
))
(declare-datatypes ((List!63960 0))(
  ( (Nil!63836) (Cons!63836 (h!70284 Regex!15887) (t!377315 List!63960)) )
))
(declare-datatypes ((Context!10542 0))(
  ( (Context!10543 (exprs!5771 List!63960)) )
))
(declare-datatypes ((List!63961 0))(
  ( (Nil!63837) (Cons!63837 (h!70285 Context!10542) (t!377316 List!63961)) )
))
(declare-fun zl!343 () List!63961)

(declare-fun isEmpty!35702 (List!63961) Bool)

(assert (=> b!5830869 (= res!2457486 (not (isEmpty!35702 (t!377316 zl!343))))))

(declare-fun b!5830870 () Bool)

(assert (=> b!5830870 (= e!3577468 tp_is_empty!41027)))

(declare-fun b!5830871 () Bool)

(declare-fun e!3577470 () Bool)

(assert (=> b!5830871 (= e!3577470 (not e!3577471))))

(declare-fun res!2457481 () Bool)

(assert (=> b!5830871 (=> res!2457481 e!3577471)))

(get-info :version)

(assert (=> b!5830871 (= res!2457481 (not ((_ is Cons!63837) zl!343)))))

(declare-fun r!7292 () Regex!15887)

(declare-datatypes ((List!63962 0))(
  ( (Nil!63838) (Cons!63838 (h!70286 C!32044) (t!377317 List!63962)) )
))
(declare-fun s!2326 () List!63962)

(declare-fun matchR!8070 (Regex!15887 List!63962) Bool)

(declare-fun matchRSpec!2988 (Regex!15887 List!63962) Bool)

(assert (=> b!5830871 (= (matchR!8070 r!7292 s!2326) (matchRSpec!2988 r!7292 s!2326))))

(declare-datatypes ((Unit!157045 0))(
  ( (Unit!157046) )
))
(declare-fun lt!2302912 () Unit!157045)

(declare-fun mainMatchTheorem!2988 (Regex!15887 List!63962) Unit!157045)

(assert (=> b!5830871 (= lt!2302912 (mainMatchTheorem!2988 r!7292 s!2326))))

(declare-fun b!5830872 () Bool)

(declare-fun e!3577466 () Bool)

(declare-fun tp!1611003 () Bool)

(assert (=> b!5830872 (= e!3577466 tp!1611003)))

(declare-fun b!5830873 () Bool)

(declare-fun res!2457482 () Bool)

(assert (=> b!5830873 (=> (not res!2457482) (not e!3577470))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10542))

(declare-fun toList!9671 ((InoxSet Context!10542)) List!63961)

(assert (=> b!5830873 (= res!2457482 (= (toList!9671 z!1189) zl!343))))

(declare-fun res!2457485 () Bool)

(assert (=> start!597240 (=> (not res!2457485) (not e!3577470))))

(declare-fun validRegex!7623 (Regex!15887) Bool)

(assert (=> start!597240 (= res!2457485 (validRegex!7623 r!7292))))

(assert (=> start!597240 e!3577470))

(assert (=> start!597240 e!3577468))

(declare-fun condSetEmpty!39444 () Bool)

(assert (=> start!597240 (= condSetEmpty!39444 (= z!1189 ((as const (Array Context!10542 Bool)) false)))))

(assert (=> start!597240 setRes!39444))

(declare-fun e!3577465 () Bool)

(assert (=> start!597240 e!3577465))

(assert (=> start!597240 e!3577469))

(declare-fun b!5830874 () Bool)

(declare-fun tp!1611009 () Bool)

(declare-fun tp!1611012 () Bool)

(assert (=> b!5830874 (= e!3577468 (and tp!1611009 tp!1611012))))

(declare-fun b!5830875 () Bool)

(declare-fun res!2457479 () Bool)

(assert (=> b!5830875 (=> res!2457479 e!3577471)))

(declare-fun generalisedConcat!1484 (List!63960) Regex!15887)

(assert (=> b!5830875 (= res!2457479 (not (= r!7292 (generalisedConcat!1484 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5830876 () Bool)

(declare-fun tp!1611011 () Bool)

(declare-fun tp!1611010 () Bool)

(assert (=> b!5830876 (= e!3577468 (and tp!1611011 tp!1611010))))

(declare-fun b!5830877 () Bool)

(declare-fun res!2457484 () Bool)

(assert (=> b!5830877 (=> (not res!2457484) (not e!3577470))))

(declare-fun unfocusZipper!1629 (List!63961) Regex!15887)

(assert (=> b!5830877 (= res!2457484 (= r!7292 (unfocusZipper!1629 zl!343)))))

(declare-fun b!5830878 () Bool)

(assert (=> b!5830878 (= e!3577471 (or ((_ is EmptyExpr!15887) r!7292) ((_ is EmptyLang!15887) r!7292) (not ((_ is ElementMatch!15887) r!7292)) (= z!1189 (store ((as const (Array Context!10542 Bool)) false) (Context!10543 (Cons!63836 (ElementMatch!15887 (c!1033165 r!7292)) Nil!63836)) true))))))

(declare-fun b!5830879 () Bool)

(declare-fun e!3577467 () Bool)

(declare-fun tp!1611008 () Bool)

(assert (=> b!5830879 (= e!3577467 tp!1611008)))

(declare-fun b!5830880 () Bool)

(declare-fun res!2457480 () Bool)

(assert (=> b!5830880 (=> res!2457480 e!3577471)))

(declare-fun generalisedUnion!1731 (List!63960) Regex!15887)

(declare-fun unfocusZipperList!1308 (List!63961) List!63960)

(assert (=> b!5830880 (= res!2457480 (not (= r!7292 (generalisedUnion!1731 (unfocusZipperList!1308 zl!343)))))))

(declare-fun tp!1611006 () Bool)

(declare-fun b!5830881 () Bool)

(declare-fun inv!82964 (Context!10542) Bool)

(assert (=> b!5830881 (= e!3577465 (and (inv!82964 (h!70285 zl!343)) e!3577466 tp!1611006))))

(declare-fun b!5830882 () Bool)

(declare-fun res!2457483 () Bool)

(assert (=> b!5830882 (=> res!2457483 e!3577471)))

(assert (=> b!5830882 (= res!2457483 (not ((_ is Cons!63836) (exprs!5771 (h!70285 zl!343)))))))

(declare-fun tp!1611005 () Bool)

(declare-fun setElem!39444 () Context!10542)

(declare-fun setNonEmpty!39444 () Bool)

(assert (=> setNonEmpty!39444 (= setRes!39444 (and tp!1611005 (inv!82964 setElem!39444) e!3577467))))

(declare-fun setRest!39444 () (InoxSet Context!10542))

(assert (=> setNonEmpty!39444 (= z!1189 ((_ map or) (store ((as const (Array Context!10542 Bool)) false) setElem!39444 true) setRest!39444))))

(assert (= (and start!597240 res!2457485) b!5830873))

(assert (= (and b!5830873 res!2457482) b!5830877))

(assert (= (and b!5830877 res!2457484) b!5830871))

(assert (= (and b!5830871 (not res!2457481)) b!5830869))

(assert (= (and b!5830869 (not res!2457486)) b!5830875))

(assert (= (and b!5830875 (not res!2457479)) b!5830882))

(assert (= (and b!5830882 (not res!2457483)) b!5830880))

(assert (= (and b!5830880 (not res!2457480)) b!5830878))

(assert (= (and start!597240 ((_ is ElementMatch!15887) r!7292)) b!5830870))

(assert (= (and start!597240 ((_ is Concat!24732) r!7292)) b!5830876))

(assert (= (and start!597240 ((_ is Star!15887) r!7292)) b!5830867))

(assert (= (and start!597240 ((_ is Union!15887) r!7292)) b!5830874))

(assert (= (and start!597240 condSetEmpty!39444) setIsEmpty!39444))

(assert (= (and start!597240 (not condSetEmpty!39444)) setNonEmpty!39444))

(assert (= setNonEmpty!39444 b!5830879))

(assert (= b!5830881 b!5830872))

(assert (= (and start!597240 ((_ is Cons!63837) zl!343)) b!5830881))

(assert (= (and start!597240 ((_ is Cons!63838) s!2326)) b!5830868))

(declare-fun m!6760570 () Bool)

(assert (=> b!5830871 m!6760570))

(declare-fun m!6760572 () Bool)

(assert (=> b!5830871 m!6760572))

(declare-fun m!6760574 () Bool)

(assert (=> b!5830871 m!6760574))

(declare-fun m!6760576 () Bool)

(assert (=> start!597240 m!6760576))

(declare-fun m!6760578 () Bool)

(assert (=> setNonEmpty!39444 m!6760578))

(declare-fun m!6760580 () Bool)

(assert (=> b!5830877 m!6760580))

(declare-fun m!6760582 () Bool)

(assert (=> b!5830869 m!6760582))

(declare-fun m!6760584 () Bool)

(assert (=> b!5830880 m!6760584))

(assert (=> b!5830880 m!6760584))

(declare-fun m!6760586 () Bool)

(assert (=> b!5830880 m!6760586))

(declare-fun m!6760588 () Bool)

(assert (=> b!5830873 m!6760588))

(declare-fun m!6760590 () Bool)

(assert (=> b!5830875 m!6760590))

(declare-fun m!6760592 () Bool)

(assert (=> b!5830878 m!6760592))

(declare-fun m!6760594 () Bool)

(assert (=> b!5830881 m!6760594))

(check-sat (not b!5830868) (not b!5830871) (not b!5830877) (not b!5830869) (not b!5830875) (not b!5830881) (not b!5830873) (not b!5830872) (not start!597240) (not b!5830876) (not b!5830880) (not b!5830879) (not b!5830867) tp_is_empty!41027 (not b!5830874) (not setNonEmpty!39444))
(check-sat)
(get-model)

(declare-fun b!5831142 () Bool)

(declare-fun e!3577619 () Bool)

(declare-fun isEmpty!35705 (List!63960) Bool)

(assert (=> b!5831142 (= e!3577619 (isEmpty!35705 (t!377315 (unfocusZipperList!1308 zl!343))))))

(declare-fun b!5831143 () Bool)

(declare-fun e!3577620 () Bool)

(declare-fun lt!2302936 () Regex!15887)

(declare-fun head!12336 (List!63960) Regex!15887)

(assert (=> b!5831143 (= e!3577620 (= lt!2302936 (head!12336 (unfocusZipperList!1308 zl!343))))))

(declare-fun b!5831144 () Bool)

(declare-fun e!3577621 () Bool)

(declare-fun isEmptyLang!1334 (Regex!15887) Bool)

(assert (=> b!5831144 (= e!3577621 (isEmptyLang!1334 lt!2302936))))

(declare-fun b!5831145 () Bool)

(declare-fun e!3577618 () Bool)

(assert (=> b!5831145 (= e!3577618 e!3577621)))

(declare-fun c!1033231 () Bool)

(assert (=> b!5831145 (= c!1033231 (isEmpty!35705 (unfocusZipperList!1308 zl!343)))))

(declare-fun b!5831146 () Bool)

(declare-fun e!3577617 () Regex!15887)

(assert (=> b!5831146 (= e!3577617 (Union!15887 (h!70284 (unfocusZipperList!1308 zl!343)) (generalisedUnion!1731 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5831147 () Bool)

(assert (=> b!5831147 (= e!3577621 e!3577620)))

(declare-fun c!1033228 () Bool)

(declare-fun tail!11421 (List!63960) List!63960)

(assert (=> b!5831147 (= c!1033228 (isEmpty!35705 (tail!11421 (unfocusZipperList!1308 zl!343))))))

(declare-fun b!5831148 () Bool)

(declare-fun e!3577616 () Regex!15887)

(assert (=> b!5831148 (= e!3577616 (h!70284 (unfocusZipperList!1308 zl!343)))))

(declare-fun d!1833585 () Bool)

(assert (=> d!1833585 e!3577618))

(declare-fun res!2457565 () Bool)

(assert (=> d!1833585 (=> (not res!2457565) (not e!3577618))))

(assert (=> d!1833585 (= res!2457565 (validRegex!7623 lt!2302936))))

(assert (=> d!1833585 (= lt!2302936 e!3577616)))

(declare-fun c!1033230 () Bool)

(assert (=> d!1833585 (= c!1033230 e!3577619)))

(declare-fun res!2457564 () Bool)

(assert (=> d!1833585 (=> (not res!2457564) (not e!3577619))))

(assert (=> d!1833585 (= res!2457564 ((_ is Cons!63836) (unfocusZipperList!1308 zl!343)))))

(declare-fun lambda!319052 () Int)

(declare-fun forall!14978 (List!63960 Int) Bool)

(assert (=> d!1833585 (forall!14978 (unfocusZipperList!1308 zl!343) lambda!319052)))

(assert (=> d!1833585 (= (generalisedUnion!1731 (unfocusZipperList!1308 zl!343)) lt!2302936)))

(declare-fun b!5831149 () Bool)

(assert (=> b!5831149 (= e!3577616 e!3577617)))

(declare-fun c!1033229 () Bool)

(assert (=> b!5831149 (= c!1033229 ((_ is Cons!63836) (unfocusZipperList!1308 zl!343)))))

(declare-fun b!5831150 () Bool)

(assert (=> b!5831150 (= e!3577617 EmptyLang!15887)))

(declare-fun b!5831151 () Bool)

(declare-fun isUnion!764 (Regex!15887) Bool)

(assert (=> b!5831151 (= e!3577620 (isUnion!764 lt!2302936))))

(assert (= (and d!1833585 res!2457564) b!5831142))

(assert (= (and d!1833585 c!1033230) b!5831148))

(assert (= (and d!1833585 (not c!1033230)) b!5831149))

(assert (= (and b!5831149 c!1033229) b!5831146))

(assert (= (and b!5831149 (not c!1033229)) b!5831150))

(assert (= (and d!1833585 res!2457565) b!5831145))

(assert (= (and b!5831145 c!1033231) b!5831144))

(assert (= (and b!5831145 (not c!1033231)) b!5831147))

(assert (= (and b!5831147 c!1033228) b!5831143))

(assert (= (and b!5831147 (not c!1033228)) b!5831151))

(assert (=> b!5831143 m!6760584))

(declare-fun m!6760684 () Bool)

(assert (=> b!5831143 m!6760684))

(declare-fun m!6760686 () Bool)

(assert (=> b!5831142 m!6760686))

(assert (=> b!5831145 m!6760584))

(declare-fun m!6760688 () Bool)

(assert (=> b!5831145 m!6760688))

(assert (=> b!5831147 m!6760584))

(declare-fun m!6760690 () Bool)

(assert (=> b!5831147 m!6760690))

(assert (=> b!5831147 m!6760690))

(declare-fun m!6760692 () Bool)

(assert (=> b!5831147 m!6760692))

(declare-fun m!6760694 () Bool)

(assert (=> b!5831146 m!6760694))

(declare-fun m!6760696 () Bool)

(assert (=> b!5831144 m!6760696))

(declare-fun m!6760698 () Bool)

(assert (=> d!1833585 m!6760698))

(assert (=> d!1833585 m!6760584))

(declare-fun m!6760700 () Bool)

(assert (=> d!1833585 m!6760700))

(declare-fun m!6760702 () Bool)

(assert (=> b!5831151 m!6760702))

(assert (=> b!5830880 d!1833585))

(declare-fun bs!1374745 () Bool)

(declare-fun d!1833609 () Bool)

(assert (= bs!1374745 (and d!1833609 d!1833585)))

(declare-fun lambda!319055 () Int)

(assert (=> bs!1374745 (= lambda!319055 lambda!319052)))

(declare-fun lt!2302939 () List!63960)

(assert (=> d!1833609 (forall!14978 lt!2302939 lambda!319055)))

(declare-fun e!3577624 () List!63960)

(assert (=> d!1833609 (= lt!2302939 e!3577624)))

(declare-fun c!1033234 () Bool)

(assert (=> d!1833609 (= c!1033234 ((_ is Cons!63837) zl!343))))

(assert (=> d!1833609 (= (unfocusZipperList!1308 zl!343) lt!2302939)))

(declare-fun b!5831156 () Bool)

(assert (=> b!5831156 (= e!3577624 (Cons!63836 (generalisedConcat!1484 (exprs!5771 (h!70285 zl!343))) (unfocusZipperList!1308 (t!377316 zl!343))))))

(declare-fun b!5831157 () Bool)

(assert (=> b!5831157 (= e!3577624 Nil!63836)))

(assert (= (and d!1833609 c!1033234) b!5831156))

(assert (= (and d!1833609 (not c!1033234)) b!5831157))

(declare-fun m!6760704 () Bool)

(assert (=> d!1833609 m!6760704))

(assert (=> b!5831156 m!6760590))

(declare-fun m!6760706 () Bool)

(assert (=> b!5831156 m!6760706))

(assert (=> b!5830880 d!1833609))

(declare-fun bs!1374746 () Bool)

(declare-fun d!1833611 () Bool)

(assert (= bs!1374746 (and d!1833611 d!1833585)))

(declare-fun lambda!319058 () Int)

(assert (=> bs!1374746 (= lambda!319058 lambda!319052)))

(declare-fun bs!1374747 () Bool)

(assert (= bs!1374747 (and d!1833611 d!1833609)))

(assert (=> bs!1374747 (= lambda!319058 lambda!319055)))

(declare-fun b!5831178 () Bool)

(declare-fun e!3577641 () Bool)

(declare-fun lt!2302942 () Regex!15887)

(assert (=> b!5831178 (= e!3577641 (= lt!2302942 (head!12336 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5831179 () Bool)

(declare-fun e!3577642 () Regex!15887)

(declare-fun e!3577637 () Regex!15887)

(assert (=> b!5831179 (= e!3577642 e!3577637)))

(declare-fun c!1033243 () Bool)

(assert (=> b!5831179 (= c!1033243 ((_ is Cons!63836) (exprs!5771 (h!70285 zl!343))))))

(declare-fun b!5831180 () Bool)

(declare-fun isConcat!849 (Regex!15887) Bool)

(assert (=> b!5831180 (= e!3577641 (isConcat!849 lt!2302942))))

(declare-fun b!5831181 () Bool)

(assert (=> b!5831181 (= e!3577637 (Concat!24732 (h!70284 (exprs!5771 (h!70285 zl!343))) (generalisedConcat!1484 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5831182 () Bool)

(declare-fun e!3577639 () Bool)

(assert (=> b!5831182 (= e!3577639 (isEmpty!35705 (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5831183 () Bool)

(declare-fun e!3577640 () Bool)

(declare-fun e!3577638 () Bool)

(assert (=> b!5831183 (= e!3577640 e!3577638)))

(declare-fun c!1033244 () Bool)

(assert (=> b!5831183 (= c!1033244 (isEmpty!35705 (exprs!5771 (h!70285 zl!343))))))

(assert (=> d!1833611 e!3577640))

(declare-fun res!2457570 () Bool)

(assert (=> d!1833611 (=> (not res!2457570) (not e!3577640))))

(assert (=> d!1833611 (= res!2457570 (validRegex!7623 lt!2302942))))

(assert (=> d!1833611 (= lt!2302942 e!3577642)))

(declare-fun c!1033245 () Bool)

(assert (=> d!1833611 (= c!1033245 e!3577639)))

(declare-fun res!2457571 () Bool)

(assert (=> d!1833611 (=> (not res!2457571) (not e!3577639))))

(assert (=> d!1833611 (= res!2457571 ((_ is Cons!63836) (exprs!5771 (h!70285 zl!343))))))

(assert (=> d!1833611 (forall!14978 (exprs!5771 (h!70285 zl!343)) lambda!319058)))

(assert (=> d!1833611 (= (generalisedConcat!1484 (exprs!5771 (h!70285 zl!343))) lt!2302942)))

(declare-fun b!5831184 () Bool)

(declare-fun isEmptyExpr!1326 (Regex!15887) Bool)

(assert (=> b!5831184 (= e!3577638 (isEmptyExpr!1326 lt!2302942))))

(declare-fun b!5831185 () Bool)

(assert (=> b!5831185 (= e!3577638 e!3577641)))

(declare-fun c!1033246 () Bool)

(assert (=> b!5831185 (= c!1033246 (isEmpty!35705 (tail!11421 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5831186 () Bool)

(assert (=> b!5831186 (= e!3577642 (h!70284 (exprs!5771 (h!70285 zl!343))))))

(declare-fun b!5831187 () Bool)

(assert (=> b!5831187 (= e!3577637 EmptyExpr!15887)))

(assert (= (and d!1833611 res!2457571) b!5831182))

(assert (= (and d!1833611 c!1033245) b!5831186))

(assert (= (and d!1833611 (not c!1033245)) b!5831179))

(assert (= (and b!5831179 c!1033243) b!5831181))

(assert (= (and b!5831179 (not c!1033243)) b!5831187))

(assert (= (and d!1833611 res!2457570) b!5831183))

(assert (= (and b!5831183 c!1033244) b!5831184))

(assert (= (and b!5831183 (not c!1033244)) b!5831185))

(assert (= (and b!5831185 c!1033246) b!5831178))

(assert (= (and b!5831185 (not c!1033246)) b!5831180))

(declare-fun m!6760708 () Bool)

(assert (=> b!5831180 m!6760708))

(declare-fun m!6760710 () Bool)

(assert (=> b!5831181 m!6760710))

(declare-fun m!6760712 () Bool)

(assert (=> b!5831178 m!6760712))

(declare-fun m!6760714 () Bool)

(assert (=> b!5831182 m!6760714))

(declare-fun m!6760716 () Bool)

(assert (=> b!5831185 m!6760716))

(assert (=> b!5831185 m!6760716))

(declare-fun m!6760718 () Bool)

(assert (=> b!5831185 m!6760718))

(declare-fun m!6760720 () Bool)

(assert (=> b!5831184 m!6760720))

(declare-fun m!6760722 () Bool)

(assert (=> d!1833611 m!6760722))

(declare-fun m!6760724 () Bool)

(assert (=> d!1833611 m!6760724))

(declare-fun m!6760726 () Bool)

(assert (=> b!5831183 m!6760726))

(assert (=> b!5830875 d!1833611))

(declare-fun bs!1374748 () Bool)

(declare-fun d!1833613 () Bool)

(assert (= bs!1374748 (and d!1833613 d!1833585)))

(declare-fun lambda!319061 () Int)

(assert (=> bs!1374748 (= lambda!319061 lambda!319052)))

(declare-fun bs!1374749 () Bool)

(assert (= bs!1374749 (and d!1833613 d!1833609)))

(assert (=> bs!1374749 (= lambda!319061 lambda!319055)))

(declare-fun bs!1374750 () Bool)

(assert (= bs!1374750 (and d!1833613 d!1833611)))

(assert (=> bs!1374750 (= lambda!319061 lambda!319058)))

(assert (=> d!1833613 (= (inv!82964 (h!70285 zl!343)) (forall!14978 (exprs!5771 (h!70285 zl!343)) lambda!319061))))

(declare-fun bs!1374751 () Bool)

(assert (= bs!1374751 d!1833613))

(declare-fun m!6760728 () Bool)

(assert (=> bs!1374751 m!6760728))

(assert (=> b!5830881 d!1833613))

(declare-fun b!5831206 () Bool)

(declare-fun e!3577663 () Bool)

(declare-fun e!3577659 () Bool)

(assert (=> b!5831206 (= e!3577663 e!3577659)))

(declare-fun res!2457582 () Bool)

(declare-fun nullable!5889 (Regex!15887) Bool)

(assert (=> b!5831206 (= res!2457582 (not (nullable!5889 (reg!16216 r!7292))))))

(assert (=> b!5831206 (=> (not res!2457582) (not e!3577659))))

(declare-fun b!5831207 () Bool)

(declare-fun e!3577660 () Bool)

(declare-fun call!455389 () Bool)

(assert (=> b!5831207 (= e!3577660 call!455389)))

(declare-fun bm!455382 () Bool)

(declare-fun call!455387 () Bool)

(declare-fun call!455388 () Bool)

(assert (=> bm!455382 (= call!455387 call!455388)))

(declare-fun b!5831208 () Bool)

(assert (=> b!5831208 (= e!3577659 call!455388)))

(declare-fun b!5831209 () Bool)

(declare-fun e!3577657 () Bool)

(assert (=> b!5831209 (= e!3577657 e!3577660)))

(declare-fun res!2457585 () Bool)

(assert (=> b!5831209 (=> (not res!2457585) (not e!3577660))))

(assert (=> b!5831209 (= res!2457585 call!455387)))

(declare-fun b!5831210 () Bool)

(declare-fun res!2457583 () Bool)

(assert (=> b!5831210 (=> res!2457583 e!3577657)))

(assert (=> b!5831210 (= res!2457583 (not ((_ is Concat!24732) r!7292)))))

(declare-fun e!3577658 () Bool)

(assert (=> b!5831210 (= e!3577658 e!3577657)))

(declare-fun b!5831211 () Bool)

(declare-fun res!2457584 () Bool)

(declare-fun e!3577662 () Bool)

(assert (=> b!5831211 (=> (not res!2457584) (not e!3577662))))

(assert (=> b!5831211 (= res!2457584 call!455387)))

(assert (=> b!5831211 (= e!3577658 e!3577662)))

(declare-fun d!1833615 () Bool)

(declare-fun res!2457586 () Bool)

(declare-fun e!3577661 () Bool)

(assert (=> d!1833615 (=> res!2457586 e!3577661)))

(assert (=> d!1833615 (= res!2457586 ((_ is ElementMatch!15887) r!7292))))

(assert (=> d!1833615 (= (validRegex!7623 r!7292) e!3577661)))

(declare-fun bm!455383 () Bool)

(declare-fun c!1033251 () Bool)

(declare-fun c!1033252 () Bool)

(assert (=> bm!455383 (= call!455388 (validRegex!7623 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))

(declare-fun bm!455384 () Bool)

(assert (=> bm!455384 (= call!455389 (validRegex!7623 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))

(declare-fun b!5831212 () Bool)

(assert (=> b!5831212 (= e!3577663 e!3577658)))

(assert (=> b!5831212 (= c!1033252 ((_ is Union!15887) r!7292))))

(declare-fun b!5831213 () Bool)

(assert (=> b!5831213 (= e!3577662 call!455389)))

(declare-fun b!5831214 () Bool)

(assert (=> b!5831214 (= e!3577661 e!3577663)))

(assert (=> b!5831214 (= c!1033251 ((_ is Star!15887) r!7292))))

(assert (= (and d!1833615 (not res!2457586)) b!5831214))

(assert (= (and b!5831214 c!1033251) b!5831206))

(assert (= (and b!5831214 (not c!1033251)) b!5831212))

(assert (= (and b!5831206 res!2457582) b!5831208))

(assert (= (and b!5831212 c!1033252) b!5831211))

(assert (= (and b!5831212 (not c!1033252)) b!5831210))

(assert (= (and b!5831211 res!2457584) b!5831213))

(assert (= (and b!5831210 (not res!2457583)) b!5831209))

(assert (= (and b!5831209 res!2457585) b!5831207))

(assert (= (or b!5831213 b!5831207) bm!455384))

(assert (= (or b!5831211 b!5831209) bm!455382))

(assert (= (or b!5831208 bm!455382) bm!455383))

(declare-fun m!6760730 () Bool)

(assert (=> b!5831206 m!6760730))

(declare-fun m!6760732 () Bool)

(assert (=> bm!455383 m!6760732))

(declare-fun m!6760734 () Bool)

(assert (=> bm!455384 m!6760734))

(assert (=> start!597240 d!1833615))

(declare-fun d!1833617 () Bool)

(assert (=> d!1833617 (= (isEmpty!35702 (t!377316 zl!343)) ((_ is Nil!63837) (t!377316 zl!343)))))

(assert (=> b!5830869 d!1833617))

(declare-fun bs!1374752 () Bool)

(declare-fun d!1833619 () Bool)

(assert (= bs!1374752 (and d!1833619 d!1833585)))

(declare-fun lambda!319062 () Int)

(assert (=> bs!1374752 (= lambda!319062 lambda!319052)))

(declare-fun bs!1374753 () Bool)

(assert (= bs!1374753 (and d!1833619 d!1833609)))

(assert (=> bs!1374753 (= lambda!319062 lambda!319055)))

(declare-fun bs!1374754 () Bool)

(assert (= bs!1374754 (and d!1833619 d!1833611)))

(assert (=> bs!1374754 (= lambda!319062 lambda!319058)))

(declare-fun bs!1374755 () Bool)

(assert (= bs!1374755 (and d!1833619 d!1833613)))

(assert (=> bs!1374755 (= lambda!319062 lambda!319061)))

(assert (=> d!1833619 (= (inv!82964 setElem!39444) (forall!14978 (exprs!5771 setElem!39444) lambda!319062))))

(declare-fun bs!1374756 () Bool)

(assert (= bs!1374756 d!1833619))

(declare-fun m!6760736 () Bool)

(assert (=> bs!1374756 m!6760736))

(assert (=> setNonEmpty!39444 d!1833619))

(declare-fun d!1833621 () Bool)

(declare-fun e!3577666 () Bool)

(assert (=> d!1833621 e!3577666))

(declare-fun res!2457589 () Bool)

(assert (=> d!1833621 (=> (not res!2457589) (not e!3577666))))

(declare-fun lt!2302945 () List!63961)

(declare-fun noDuplicate!1757 (List!63961) Bool)

(assert (=> d!1833621 (= res!2457589 (noDuplicate!1757 lt!2302945))))

(declare-fun choose!44296 ((InoxSet Context!10542)) List!63961)

(assert (=> d!1833621 (= lt!2302945 (choose!44296 z!1189))))

(assert (=> d!1833621 (= (toList!9671 z!1189) lt!2302945)))

(declare-fun b!5831217 () Bool)

(declare-fun content!11722 (List!63961) (InoxSet Context!10542))

(assert (=> b!5831217 (= e!3577666 (= (content!11722 lt!2302945) z!1189))))

(assert (= (and d!1833621 res!2457589) b!5831217))

(declare-fun m!6760738 () Bool)

(assert (=> d!1833621 m!6760738))

(declare-fun m!6760740 () Bool)

(assert (=> d!1833621 m!6760740))

(declare-fun m!6760742 () Bool)

(assert (=> b!5831217 m!6760742))

(assert (=> b!5830873 d!1833621))

(declare-fun bm!455387 () Bool)

(declare-fun call!455392 () Bool)

(declare-fun isEmpty!35706 (List!63962) Bool)

(assert (=> bm!455387 (= call!455392 (isEmpty!35706 s!2326))))

(declare-fun b!5831246 () Bool)

(declare-fun res!2457613 () Bool)

(declare-fun e!3577687 () Bool)

(assert (=> b!5831246 (=> (not res!2457613) (not e!3577687))))

(assert (=> b!5831246 (= res!2457613 (not call!455392))))

(declare-fun b!5831247 () Bool)

(declare-fun res!2457611 () Bool)

(assert (=> b!5831247 (=> (not res!2457611) (not e!3577687))))

(declare-fun tail!11422 (List!63962) List!63962)

(assert (=> b!5831247 (= res!2457611 (isEmpty!35706 (tail!11422 s!2326)))))

(declare-fun b!5831248 () Bool)

(declare-fun e!3577682 () Bool)

(assert (=> b!5831248 (= e!3577682 (nullable!5889 r!7292))))

(declare-fun b!5831249 () Bool)

(declare-fun e!3577684 () Bool)

(declare-fun lt!2302948 () Bool)

(assert (=> b!5831249 (= e!3577684 (not lt!2302948))))

(declare-fun b!5831250 () Bool)

(declare-fun e!3577683 () Bool)

(declare-fun head!12337 (List!63962) C!32044)

(assert (=> b!5831250 (= e!3577683 (not (= (head!12337 s!2326) (c!1033165 r!7292))))))

(declare-fun d!1833623 () Bool)

(declare-fun e!3577686 () Bool)

(assert (=> d!1833623 e!3577686))

(declare-fun c!1033260 () Bool)

(assert (=> d!1833623 (= c!1033260 ((_ is EmptyExpr!15887) r!7292))))

(assert (=> d!1833623 (= lt!2302948 e!3577682)))

(declare-fun c!1033261 () Bool)

(assert (=> d!1833623 (= c!1033261 (isEmpty!35706 s!2326))))

(assert (=> d!1833623 (validRegex!7623 r!7292)))

(assert (=> d!1833623 (= (matchR!8070 r!7292 s!2326) lt!2302948)))

(declare-fun b!5831251 () Bool)

(declare-fun e!3577685 () Bool)

(assert (=> b!5831251 (= e!3577685 e!3577683)))

(declare-fun res!2457609 () Bool)

(assert (=> b!5831251 (=> res!2457609 e!3577683)))

(assert (=> b!5831251 (= res!2457609 call!455392)))

(declare-fun b!5831252 () Bool)

(assert (=> b!5831252 (= e!3577686 e!3577684)))

(declare-fun c!1033259 () Bool)

(assert (=> b!5831252 (= c!1033259 ((_ is EmptyLang!15887) r!7292))))

(declare-fun b!5831253 () Bool)

(assert (=> b!5831253 (= e!3577687 (= (head!12337 s!2326) (c!1033165 r!7292)))))

(declare-fun b!5831254 () Bool)

(declare-fun derivativeStep!4629 (Regex!15887 C!32044) Regex!15887)

(assert (=> b!5831254 (= e!3577682 (matchR!8070 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (tail!11422 s!2326)))))

(declare-fun b!5831255 () Bool)

(declare-fun res!2457610 () Bool)

(declare-fun e!3577681 () Bool)

(assert (=> b!5831255 (=> res!2457610 e!3577681)))

(assert (=> b!5831255 (= res!2457610 (not ((_ is ElementMatch!15887) r!7292)))))

(assert (=> b!5831255 (= e!3577684 e!3577681)))

(declare-fun b!5831256 () Bool)

(assert (=> b!5831256 (= e!3577681 e!3577685)))

(declare-fun res!2457606 () Bool)

(assert (=> b!5831256 (=> (not res!2457606) (not e!3577685))))

(assert (=> b!5831256 (= res!2457606 (not lt!2302948))))

(declare-fun b!5831257 () Bool)

(assert (=> b!5831257 (= e!3577686 (= lt!2302948 call!455392))))

(declare-fun b!5831258 () Bool)

(declare-fun res!2457607 () Bool)

(assert (=> b!5831258 (=> res!2457607 e!3577683)))

(assert (=> b!5831258 (= res!2457607 (not (isEmpty!35706 (tail!11422 s!2326))))))

(declare-fun b!5831259 () Bool)

(declare-fun res!2457612 () Bool)

(assert (=> b!5831259 (=> res!2457612 e!3577681)))

(assert (=> b!5831259 (= res!2457612 e!3577687)))

(declare-fun res!2457608 () Bool)

(assert (=> b!5831259 (=> (not res!2457608) (not e!3577687))))

(assert (=> b!5831259 (= res!2457608 lt!2302948)))

(assert (= (and d!1833623 c!1033261) b!5831248))

(assert (= (and d!1833623 (not c!1033261)) b!5831254))

(assert (= (and d!1833623 c!1033260) b!5831257))

(assert (= (and d!1833623 (not c!1033260)) b!5831252))

(assert (= (and b!5831252 c!1033259) b!5831249))

(assert (= (and b!5831252 (not c!1033259)) b!5831255))

(assert (= (and b!5831255 (not res!2457610)) b!5831259))

(assert (= (and b!5831259 res!2457608) b!5831246))

(assert (= (and b!5831246 res!2457613) b!5831247))

(assert (= (and b!5831247 res!2457611) b!5831253))

(assert (= (and b!5831259 (not res!2457612)) b!5831256))

(assert (= (and b!5831256 res!2457606) b!5831251))

(assert (= (and b!5831251 (not res!2457609)) b!5831258))

(assert (= (and b!5831258 (not res!2457607)) b!5831250))

(assert (= (or b!5831257 b!5831246 b!5831251) bm!455387))

(declare-fun m!6760744 () Bool)

(assert (=> d!1833623 m!6760744))

(assert (=> d!1833623 m!6760576))

(assert (=> bm!455387 m!6760744))

(declare-fun m!6760746 () Bool)

(assert (=> b!5831253 m!6760746))

(assert (=> b!5831254 m!6760746))

(assert (=> b!5831254 m!6760746))

(declare-fun m!6760748 () Bool)

(assert (=> b!5831254 m!6760748))

(declare-fun m!6760750 () Bool)

(assert (=> b!5831254 m!6760750))

(assert (=> b!5831254 m!6760748))

(assert (=> b!5831254 m!6760750))

(declare-fun m!6760752 () Bool)

(assert (=> b!5831254 m!6760752))

(assert (=> b!5831247 m!6760750))

(assert (=> b!5831247 m!6760750))

(declare-fun m!6760754 () Bool)

(assert (=> b!5831247 m!6760754))

(assert (=> b!5831258 m!6760750))

(assert (=> b!5831258 m!6760750))

(assert (=> b!5831258 m!6760754))

(assert (=> b!5831250 m!6760746))

(declare-fun m!6760756 () Bool)

(assert (=> b!5831248 m!6760756))

(assert (=> b!5830871 d!1833623))

(declare-fun b!5831298 () Bool)

(assert (=> b!5831298 true))

(assert (=> b!5831298 true))

(declare-fun bs!1374757 () Bool)

(declare-fun b!5831301 () Bool)

(assert (= bs!1374757 (and b!5831301 b!5831298)))

(declare-fun lambda!319068 () Int)

(declare-fun lambda!319067 () Int)

(assert (=> bs!1374757 (not (= lambda!319068 lambda!319067))))

(assert (=> b!5831301 true))

(assert (=> b!5831301 true))

(declare-fun bm!455392 () Bool)

(declare-fun call!455397 () Bool)

(declare-fun c!1033273 () Bool)

(declare-fun Exists!2964 (Int) Bool)

(assert (=> bm!455392 (= call!455397 (Exists!2964 (ite c!1033273 lambda!319067 lambda!319068)))))

(declare-fun b!5831292 () Bool)

(declare-fun e!3577708 () Bool)

(declare-fun e!3577706 () Bool)

(assert (=> b!5831292 (= e!3577708 e!3577706)))

(declare-fun res!2457631 () Bool)

(assert (=> b!5831292 (= res!2457631 (not ((_ is EmptyLang!15887) r!7292)))))

(assert (=> b!5831292 (=> (not res!2457631) (not e!3577706))))

(declare-fun b!5831293 () Bool)

(declare-fun e!3577711 () Bool)

(declare-fun e!3577712 () Bool)

(assert (=> b!5831293 (= e!3577711 e!3577712)))

(declare-fun res!2457632 () Bool)

(assert (=> b!5831293 (= res!2457632 (matchRSpec!2988 (regOne!32287 r!7292) s!2326))))

(assert (=> b!5831293 (=> res!2457632 e!3577712)))

(declare-fun b!5831294 () Bool)

(declare-fun e!3577710 () Bool)

(assert (=> b!5831294 (= e!3577711 e!3577710)))

(assert (=> b!5831294 (= c!1033273 ((_ is Star!15887) r!7292))))

(declare-fun b!5831295 () Bool)

(declare-fun call!455398 () Bool)

(assert (=> b!5831295 (= e!3577708 call!455398)))

(declare-fun b!5831296 () Bool)

(declare-fun c!1033270 () Bool)

(assert (=> b!5831296 (= c!1033270 ((_ is Union!15887) r!7292))))

(declare-fun e!3577709 () Bool)

(assert (=> b!5831296 (= e!3577709 e!3577711)))

(declare-fun b!5831297 () Bool)

(assert (=> b!5831297 (= e!3577709 (= s!2326 (Cons!63838 (c!1033165 r!7292) Nil!63838)))))

(declare-fun d!1833625 () Bool)

(declare-fun c!1033272 () Bool)

(assert (=> d!1833625 (= c!1033272 ((_ is EmptyExpr!15887) r!7292))))

(assert (=> d!1833625 (= (matchRSpec!2988 r!7292 s!2326) e!3577708)))

(declare-fun e!3577707 () Bool)

(assert (=> b!5831298 (= e!3577707 call!455397)))

(declare-fun b!5831299 () Bool)

(declare-fun c!1033271 () Bool)

(assert (=> b!5831299 (= c!1033271 ((_ is ElementMatch!15887) r!7292))))

(assert (=> b!5831299 (= e!3577706 e!3577709)))

(declare-fun b!5831300 () Bool)

(declare-fun res!2457630 () Bool)

(assert (=> b!5831300 (=> res!2457630 e!3577707)))

(assert (=> b!5831300 (= res!2457630 call!455398)))

(assert (=> b!5831300 (= e!3577710 e!3577707)))

(assert (=> b!5831301 (= e!3577710 call!455397)))

(declare-fun bm!455393 () Bool)

(assert (=> bm!455393 (= call!455398 (isEmpty!35706 s!2326))))

(declare-fun b!5831302 () Bool)

(assert (=> b!5831302 (= e!3577712 (matchRSpec!2988 (regTwo!32287 r!7292) s!2326))))

(assert (= (and d!1833625 c!1033272) b!5831295))

(assert (= (and d!1833625 (not c!1033272)) b!5831292))

(assert (= (and b!5831292 res!2457631) b!5831299))

(assert (= (and b!5831299 c!1033271) b!5831297))

(assert (= (and b!5831299 (not c!1033271)) b!5831296))

(assert (= (and b!5831296 c!1033270) b!5831293))

(assert (= (and b!5831296 (not c!1033270)) b!5831294))

(assert (= (and b!5831293 (not res!2457632)) b!5831302))

(assert (= (and b!5831294 c!1033273) b!5831300))

(assert (= (and b!5831294 (not c!1033273)) b!5831301))

(assert (= (and b!5831300 (not res!2457630)) b!5831298))

(assert (= (or b!5831298 b!5831301) bm!455392))

(assert (= (or b!5831295 b!5831300) bm!455393))

(declare-fun m!6760758 () Bool)

(assert (=> bm!455392 m!6760758))

(declare-fun m!6760760 () Bool)

(assert (=> b!5831293 m!6760760))

(assert (=> bm!455393 m!6760744))

(declare-fun m!6760762 () Bool)

(assert (=> b!5831302 m!6760762))

(assert (=> b!5830871 d!1833625))

(declare-fun d!1833627 () Bool)

(assert (=> d!1833627 (= (matchR!8070 r!7292 s!2326) (matchRSpec!2988 r!7292 s!2326))))

(declare-fun lt!2302951 () Unit!157045)

(declare-fun choose!44297 (Regex!15887 List!63962) Unit!157045)

(assert (=> d!1833627 (= lt!2302951 (choose!44297 r!7292 s!2326))))

(assert (=> d!1833627 (validRegex!7623 r!7292)))

(assert (=> d!1833627 (= (mainMatchTheorem!2988 r!7292 s!2326) lt!2302951)))

(declare-fun bs!1374758 () Bool)

(assert (= bs!1374758 d!1833627))

(assert (=> bs!1374758 m!6760570))

(assert (=> bs!1374758 m!6760572))

(declare-fun m!6760764 () Bool)

(assert (=> bs!1374758 m!6760764))

(assert (=> bs!1374758 m!6760576))

(assert (=> b!5830871 d!1833627))

(declare-fun d!1833629 () Bool)

(declare-fun lt!2302954 () Regex!15887)

(assert (=> d!1833629 (validRegex!7623 lt!2302954)))

(assert (=> d!1833629 (= lt!2302954 (generalisedUnion!1731 (unfocusZipperList!1308 zl!343)))))

(assert (=> d!1833629 (= (unfocusZipper!1629 zl!343) lt!2302954)))

(declare-fun bs!1374759 () Bool)

(assert (= bs!1374759 d!1833629))

(declare-fun m!6760766 () Bool)

(assert (=> bs!1374759 m!6760766))

(assert (=> bs!1374759 m!6760584))

(assert (=> bs!1374759 m!6760584))

(assert (=> bs!1374759 m!6760586))

(assert (=> b!5830877 d!1833629))

(declare-fun b!5831314 () Bool)

(declare-fun e!3577718 () Bool)

(declare-fun tp!1611075 () Bool)

(assert (=> b!5831314 (= e!3577718 tp!1611075)))

(declare-fun e!3577717 () Bool)

(declare-fun b!5831313 () Bool)

(declare-fun tp!1611076 () Bool)

(assert (=> b!5831313 (= e!3577717 (and (inv!82964 (h!70285 (t!377316 zl!343))) e!3577718 tp!1611076))))

(assert (=> b!5830881 (= tp!1611006 e!3577717)))

(assert (= b!5831313 b!5831314))

(assert (= (and b!5830881 ((_ is Cons!63837) (t!377316 zl!343))) b!5831313))

(declare-fun m!6760768 () Bool)

(assert (=> b!5831313 m!6760768))

(declare-fun b!5831319 () Bool)

(declare-fun e!3577721 () Bool)

(declare-fun tp!1611079 () Bool)

(assert (=> b!5831319 (= e!3577721 (and tp_is_empty!41027 tp!1611079))))

(assert (=> b!5830868 (= tp!1611004 e!3577721)))

(assert (= (and b!5830868 ((_ is Cons!63838) (t!377317 s!2326))) b!5831319))

(declare-fun b!5831324 () Bool)

(declare-fun e!3577724 () Bool)

(declare-fun tp!1611084 () Bool)

(declare-fun tp!1611085 () Bool)

(assert (=> b!5831324 (= e!3577724 (and tp!1611084 tp!1611085))))

(assert (=> b!5830879 (= tp!1611008 e!3577724)))

(assert (= (and b!5830879 ((_ is Cons!63836) (exprs!5771 setElem!39444))) b!5831324))

(declare-fun b!5831336 () Bool)

(declare-fun e!3577727 () Bool)

(declare-fun tp!1611097 () Bool)

(declare-fun tp!1611100 () Bool)

(assert (=> b!5831336 (= e!3577727 (and tp!1611097 tp!1611100))))

(declare-fun b!5831337 () Bool)

(declare-fun tp!1611096 () Bool)

(assert (=> b!5831337 (= e!3577727 tp!1611096)))

(assert (=> b!5830874 (= tp!1611009 e!3577727)))

(declare-fun b!5831335 () Bool)

(assert (=> b!5831335 (= e!3577727 tp_is_empty!41027)))

(declare-fun b!5831338 () Bool)

(declare-fun tp!1611099 () Bool)

(declare-fun tp!1611098 () Bool)

(assert (=> b!5831338 (= e!3577727 (and tp!1611099 tp!1611098))))

(assert (= (and b!5830874 ((_ is ElementMatch!15887) (regOne!32287 r!7292))) b!5831335))

(assert (= (and b!5830874 ((_ is Concat!24732) (regOne!32287 r!7292))) b!5831336))

(assert (= (and b!5830874 ((_ is Star!15887) (regOne!32287 r!7292))) b!5831337))

(assert (= (and b!5830874 ((_ is Union!15887) (regOne!32287 r!7292))) b!5831338))

(declare-fun b!5831340 () Bool)

(declare-fun e!3577728 () Bool)

(declare-fun tp!1611102 () Bool)

(declare-fun tp!1611105 () Bool)

(assert (=> b!5831340 (= e!3577728 (and tp!1611102 tp!1611105))))

(declare-fun b!5831341 () Bool)

(declare-fun tp!1611101 () Bool)

(assert (=> b!5831341 (= e!3577728 tp!1611101)))

(assert (=> b!5830874 (= tp!1611012 e!3577728)))

(declare-fun b!5831339 () Bool)

(assert (=> b!5831339 (= e!3577728 tp_is_empty!41027)))

(declare-fun b!5831342 () Bool)

(declare-fun tp!1611104 () Bool)

(declare-fun tp!1611103 () Bool)

(assert (=> b!5831342 (= e!3577728 (and tp!1611104 tp!1611103))))

(assert (= (and b!5830874 ((_ is ElementMatch!15887) (regTwo!32287 r!7292))) b!5831339))

(assert (= (and b!5830874 ((_ is Concat!24732) (regTwo!32287 r!7292))) b!5831340))

(assert (= (and b!5830874 ((_ is Star!15887) (regTwo!32287 r!7292))) b!5831341))

(assert (= (and b!5830874 ((_ is Union!15887) (regTwo!32287 r!7292))) b!5831342))

(declare-fun b!5831343 () Bool)

(declare-fun e!3577729 () Bool)

(declare-fun tp!1611106 () Bool)

(declare-fun tp!1611107 () Bool)

(assert (=> b!5831343 (= e!3577729 (and tp!1611106 tp!1611107))))

(assert (=> b!5830872 (= tp!1611003 e!3577729)))

(assert (= (and b!5830872 ((_ is Cons!63836) (exprs!5771 (h!70285 zl!343)))) b!5831343))

(declare-fun b!5831345 () Bool)

(declare-fun e!3577730 () Bool)

(declare-fun tp!1611109 () Bool)

(declare-fun tp!1611112 () Bool)

(assert (=> b!5831345 (= e!3577730 (and tp!1611109 tp!1611112))))

(declare-fun b!5831346 () Bool)

(declare-fun tp!1611108 () Bool)

(assert (=> b!5831346 (= e!3577730 tp!1611108)))

(assert (=> b!5830867 (= tp!1611007 e!3577730)))

(declare-fun b!5831344 () Bool)

(assert (=> b!5831344 (= e!3577730 tp_is_empty!41027)))

(declare-fun b!5831347 () Bool)

(declare-fun tp!1611111 () Bool)

(declare-fun tp!1611110 () Bool)

(assert (=> b!5831347 (= e!3577730 (and tp!1611111 tp!1611110))))

(assert (= (and b!5830867 ((_ is ElementMatch!15887) (reg!16216 r!7292))) b!5831344))

(assert (= (and b!5830867 ((_ is Concat!24732) (reg!16216 r!7292))) b!5831345))

(assert (= (and b!5830867 ((_ is Star!15887) (reg!16216 r!7292))) b!5831346))

(assert (= (and b!5830867 ((_ is Union!15887) (reg!16216 r!7292))) b!5831347))

(declare-fun condSetEmpty!39450 () Bool)

(assert (=> setNonEmpty!39444 (= condSetEmpty!39450 (= setRest!39444 ((as const (Array Context!10542 Bool)) false)))))

(declare-fun setRes!39450 () Bool)

(assert (=> setNonEmpty!39444 (= tp!1611005 setRes!39450)))

(declare-fun setIsEmpty!39450 () Bool)

(assert (=> setIsEmpty!39450 setRes!39450))

(declare-fun setNonEmpty!39450 () Bool)

(declare-fun setElem!39450 () Context!10542)

(declare-fun tp!1611117 () Bool)

(declare-fun e!3577733 () Bool)

(assert (=> setNonEmpty!39450 (= setRes!39450 (and tp!1611117 (inv!82964 setElem!39450) e!3577733))))

(declare-fun setRest!39450 () (InoxSet Context!10542))

(assert (=> setNonEmpty!39450 (= setRest!39444 ((_ map or) (store ((as const (Array Context!10542 Bool)) false) setElem!39450 true) setRest!39450))))

(declare-fun b!5831352 () Bool)

(declare-fun tp!1611118 () Bool)

(assert (=> b!5831352 (= e!3577733 tp!1611118)))

(assert (= (and setNonEmpty!39444 condSetEmpty!39450) setIsEmpty!39450))

(assert (= (and setNonEmpty!39444 (not condSetEmpty!39450)) setNonEmpty!39450))

(assert (= setNonEmpty!39450 b!5831352))

(declare-fun m!6760770 () Bool)

(assert (=> setNonEmpty!39450 m!6760770))

(declare-fun b!5831354 () Bool)

(declare-fun e!3577734 () Bool)

(declare-fun tp!1611120 () Bool)

(declare-fun tp!1611123 () Bool)

(assert (=> b!5831354 (= e!3577734 (and tp!1611120 tp!1611123))))

(declare-fun b!5831355 () Bool)

(declare-fun tp!1611119 () Bool)

(assert (=> b!5831355 (= e!3577734 tp!1611119)))

(assert (=> b!5830876 (= tp!1611011 e!3577734)))

(declare-fun b!5831353 () Bool)

(assert (=> b!5831353 (= e!3577734 tp_is_empty!41027)))

(declare-fun b!5831356 () Bool)

(declare-fun tp!1611122 () Bool)

(declare-fun tp!1611121 () Bool)

(assert (=> b!5831356 (= e!3577734 (and tp!1611122 tp!1611121))))

(assert (= (and b!5830876 ((_ is ElementMatch!15887) (regOne!32286 r!7292))) b!5831353))

(assert (= (and b!5830876 ((_ is Concat!24732) (regOne!32286 r!7292))) b!5831354))

(assert (= (and b!5830876 ((_ is Star!15887) (regOne!32286 r!7292))) b!5831355))

(assert (= (and b!5830876 ((_ is Union!15887) (regOne!32286 r!7292))) b!5831356))

(declare-fun b!5831358 () Bool)

(declare-fun e!3577735 () Bool)

(declare-fun tp!1611125 () Bool)

(declare-fun tp!1611128 () Bool)

(assert (=> b!5831358 (= e!3577735 (and tp!1611125 tp!1611128))))

(declare-fun b!5831359 () Bool)

(declare-fun tp!1611124 () Bool)

(assert (=> b!5831359 (= e!3577735 tp!1611124)))

(assert (=> b!5830876 (= tp!1611010 e!3577735)))

(declare-fun b!5831357 () Bool)

(assert (=> b!5831357 (= e!3577735 tp_is_empty!41027)))

(declare-fun b!5831360 () Bool)

(declare-fun tp!1611127 () Bool)

(declare-fun tp!1611126 () Bool)

(assert (=> b!5831360 (= e!3577735 (and tp!1611127 tp!1611126))))

(assert (= (and b!5830876 ((_ is ElementMatch!15887) (regTwo!32286 r!7292))) b!5831357))

(assert (= (and b!5830876 ((_ is Concat!24732) (regTwo!32286 r!7292))) b!5831358))

(assert (= (and b!5830876 ((_ is Star!15887) (regTwo!32286 r!7292))) b!5831359))

(assert (= (and b!5830876 ((_ is Union!15887) (regTwo!32286 r!7292))) b!5831360))

(check-sat (not b!5831258) (not b!5831144) (not b!5831314) (not b!5831354) (not b!5831358) (not b!5831147) (not d!1833609) (not b!5831359) (not b!5831248) (not b!5831180) (not b!5831338) (not b!5831254) (not d!1833621) (not b!5831206) (not b!5831181) (not b!5831356) (not b!5831343) (not b!5831293) (not b!5831313) (not bm!455383) (not b!5831182) (not d!1833613) (not b!5831347) (not b!5831146) (not b!5831355) (not b!5831324) (not d!1833619) (not b!5831217) (not b!5831253) tp_is_empty!41027 (not b!5831337) (not d!1833627) (not b!5831184) (not b!5831156) (not d!1833629) (not b!5831336) (not bm!455393) (not b!5831352) (not b!5831360) (not b!5831142) (not b!5831302) (not b!5831151) (not bm!455392) (not b!5831342) (not b!5831178) (not d!1833585) (not b!5831346) (not b!5831143) (not bm!455384) (not b!5831345) (not d!1833623) (not b!5831340) (not b!5831183) (not b!5831247) (not b!5831319) (not setNonEmpty!39450) (not bm!455387) (not d!1833611) (not b!5831185) (not b!5831145) (not b!5831341) (not b!5831250))
(check-sat)
(get-model)

(declare-fun b!5831645 () Bool)

(declare-fun e!3577893 () Bool)

(declare-fun e!3577889 () Bool)

(assert (=> b!5831645 (= e!3577893 e!3577889)))

(declare-fun res!2457702 () Bool)

(assert (=> b!5831645 (= res!2457702 (not (nullable!5889 (reg!16216 lt!2302936))))))

(assert (=> b!5831645 (=> (not res!2457702) (not e!3577889))))

(declare-fun b!5831646 () Bool)

(declare-fun e!3577890 () Bool)

(declare-fun call!455433 () Bool)

(assert (=> b!5831646 (= e!3577890 call!455433)))

(declare-fun bm!455426 () Bool)

(declare-fun call!455431 () Bool)

(declare-fun call!455432 () Bool)

(assert (=> bm!455426 (= call!455431 call!455432)))

(declare-fun b!5831647 () Bool)

(assert (=> b!5831647 (= e!3577889 call!455432)))

(declare-fun b!5831648 () Bool)

(declare-fun e!3577887 () Bool)

(assert (=> b!5831648 (= e!3577887 e!3577890)))

(declare-fun res!2457705 () Bool)

(assert (=> b!5831648 (=> (not res!2457705) (not e!3577890))))

(assert (=> b!5831648 (= res!2457705 call!455431)))

(declare-fun b!5831649 () Bool)

(declare-fun res!2457703 () Bool)

(assert (=> b!5831649 (=> res!2457703 e!3577887)))

(assert (=> b!5831649 (= res!2457703 (not ((_ is Concat!24732) lt!2302936)))))

(declare-fun e!3577888 () Bool)

(assert (=> b!5831649 (= e!3577888 e!3577887)))

(declare-fun b!5831650 () Bool)

(declare-fun res!2457704 () Bool)

(declare-fun e!3577892 () Bool)

(assert (=> b!5831650 (=> (not res!2457704) (not e!3577892))))

(assert (=> b!5831650 (= res!2457704 call!455431)))

(assert (=> b!5831650 (= e!3577888 e!3577892)))

(declare-fun d!1833729 () Bool)

(declare-fun res!2457706 () Bool)

(declare-fun e!3577891 () Bool)

(assert (=> d!1833729 (=> res!2457706 e!3577891)))

(assert (=> d!1833729 (= res!2457706 ((_ is ElementMatch!15887) lt!2302936))))

(assert (=> d!1833729 (= (validRegex!7623 lt!2302936) e!3577891)))

(declare-fun c!1033322 () Bool)

(declare-fun bm!455427 () Bool)

(declare-fun c!1033323 () Bool)

(assert (=> bm!455427 (= call!455432 (validRegex!7623 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))))))

(declare-fun bm!455428 () Bool)

(assert (=> bm!455428 (= call!455433 (validRegex!7623 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))))))

(declare-fun b!5831651 () Bool)

(assert (=> b!5831651 (= e!3577893 e!3577888)))

(assert (=> b!5831651 (= c!1033323 ((_ is Union!15887) lt!2302936))))

(declare-fun b!5831652 () Bool)

(assert (=> b!5831652 (= e!3577892 call!455433)))

(declare-fun b!5831653 () Bool)

(assert (=> b!5831653 (= e!3577891 e!3577893)))

(assert (=> b!5831653 (= c!1033322 ((_ is Star!15887) lt!2302936))))

(assert (= (and d!1833729 (not res!2457706)) b!5831653))

(assert (= (and b!5831653 c!1033322) b!5831645))

(assert (= (and b!5831653 (not c!1033322)) b!5831651))

(assert (= (and b!5831645 res!2457702) b!5831647))

(assert (= (and b!5831651 c!1033323) b!5831650))

(assert (= (and b!5831651 (not c!1033323)) b!5831649))

(assert (= (and b!5831650 res!2457704) b!5831652))

(assert (= (and b!5831649 (not res!2457703)) b!5831648))

(assert (= (and b!5831648 res!2457705) b!5831646))

(assert (= (or b!5831652 b!5831646) bm!455428))

(assert (= (or b!5831650 b!5831648) bm!455426))

(assert (= (or b!5831647 bm!455426) bm!455427))

(declare-fun m!6760934 () Bool)

(assert (=> b!5831645 m!6760934))

(declare-fun m!6760936 () Bool)

(assert (=> bm!455427 m!6760936))

(declare-fun m!6760938 () Bool)

(assert (=> bm!455428 m!6760938))

(assert (=> d!1833585 d!1833729))

(declare-fun d!1833731 () Bool)

(declare-fun res!2457711 () Bool)

(declare-fun e!3577898 () Bool)

(assert (=> d!1833731 (=> res!2457711 e!3577898)))

(assert (=> d!1833731 (= res!2457711 ((_ is Nil!63836) (unfocusZipperList!1308 zl!343)))))

(assert (=> d!1833731 (= (forall!14978 (unfocusZipperList!1308 zl!343) lambda!319052) e!3577898)))

(declare-fun b!5831658 () Bool)

(declare-fun e!3577899 () Bool)

(assert (=> b!5831658 (= e!3577898 e!3577899)))

(declare-fun res!2457712 () Bool)

(assert (=> b!5831658 (=> (not res!2457712) (not e!3577899))))

(declare-fun dynLambda!24974 (Int Regex!15887) Bool)

(assert (=> b!5831658 (= res!2457712 (dynLambda!24974 lambda!319052 (h!70284 (unfocusZipperList!1308 zl!343))))))

(declare-fun b!5831659 () Bool)

(assert (=> b!5831659 (= e!3577899 (forall!14978 (t!377315 (unfocusZipperList!1308 zl!343)) lambda!319052))))

(assert (= (and d!1833731 (not res!2457711)) b!5831658))

(assert (= (and b!5831658 res!2457712) b!5831659))

(declare-fun b_lambda!219769 () Bool)

(assert (=> (not b_lambda!219769) (not b!5831658)))

(declare-fun m!6760940 () Bool)

(assert (=> b!5831658 m!6760940))

(declare-fun m!6760942 () Bool)

(assert (=> b!5831659 m!6760942))

(assert (=> d!1833585 d!1833731))

(declare-fun d!1833733 () Bool)

(declare-fun res!2457713 () Bool)

(declare-fun e!3577900 () Bool)

(assert (=> d!1833733 (=> res!2457713 e!3577900)))

(assert (=> d!1833733 (= res!2457713 ((_ is Nil!63836) (exprs!5771 (h!70285 zl!343))))))

(assert (=> d!1833733 (= (forall!14978 (exprs!5771 (h!70285 zl!343)) lambda!319061) e!3577900)))

(declare-fun b!5831660 () Bool)

(declare-fun e!3577901 () Bool)

(assert (=> b!5831660 (= e!3577900 e!3577901)))

(declare-fun res!2457714 () Bool)

(assert (=> b!5831660 (=> (not res!2457714) (not e!3577901))))

(assert (=> b!5831660 (= res!2457714 (dynLambda!24974 lambda!319061 (h!70284 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5831661 () Bool)

(assert (=> b!5831661 (= e!3577901 (forall!14978 (t!377315 (exprs!5771 (h!70285 zl!343))) lambda!319061))))

(assert (= (and d!1833733 (not res!2457713)) b!5831660))

(assert (= (and b!5831660 res!2457714) b!5831661))

(declare-fun b_lambda!219771 () Bool)

(assert (=> (not b_lambda!219771) (not b!5831660)))

(declare-fun m!6760944 () Bool)

(assert (=> b!5831660 m!6760944))

(declare-fun m!6760946 () Bool)

(assert (=> b!5831661 m!6760946))

(assert (=> d!1833613 d!1833733))

(assert (=> d!1833627 d!1833623))

(assert (=> d!1833627 d!1833625))

(declare-fun d!1833735 () Bool)

(assert (=> d!1833735 (= (matchR!8070 r!7292 s!2326) (matchRSpec!2988 r!7292 s!2326))))

(assert (=> d!1833735 true))

(declare-fun _$88!4180 () Unit!157045)

(assert (=> d!1833735 (= (choose!44297 r!7292 s!2326) _$88!4180)))

(declare-fun bs!1374820 () Bool)

(assert (= bs!1374820 d!1833735))

(assert (=> bs!1374820 m!6760570))

(assert (=> bs!1374820 m!6760572))

(assert (=> d!1833627 d!1833735))

(assert (=> d!1833627 d!1833615))

(declare-fun d!1833737 () Bool)

(assert (=> d!1833737 (= (isEmpty!35706 s!2326) ((_ is Nil!63838) s!2326))))

(assert (=> bm!455387 d!1833737))

(declare-fun d!1833739 () Bool)

(assert (=> d!1833739 (= (head!12336 (unfocusZipperList!1308 zl!343)) (h!70284 (unfocusZipperList!1308 zl!343)))))

(assert (=> b!5831143 d!1833739))

(declare-fun bs!1374821 () Bool)

(declare-fun d!1833741 () Bool)

(assert (= bs!1374821 (and d!1833741 d!1833613)))

(declare-fun lambda!319078 () Int)

(assert (=> bs!1374821 (= lambda!319078 lambda!319061)))

(declare-fun bs!1374822 () Bool)

(assert (= bs!1374822 (and d!1833741 d!1833619)))

(assert (=> bs!1374822 (= lambda!319078 lambda!319062)))

(declare-fun bs!1374823 () Bool)

(assert (= bs!1374823 (and d!1833741 d!1833585)))

(assert (=> bs!1374823 (= lambda!319078 lambda!319052)))

(declare-fun bs!1374824 () Bool)

(assert (= bs!1374824 (and d!1833741 d!1833611)))

(assert (=> bs!1374824 (= lambda!319078 lambda!319058)))

(declare-fun bs!1374825 () Bool)

(assert (= bs!1374825 (and d!1833741 d!1833609)))

(assert (=> bs!1374825 (= lambda!319078 lambda!319055)))

(assert (=> d!1833741 (= (inv!82964 (h!70285 (t!377316 zl!343))) (forall!14978 (exprs!5771 (h!70285 (t!377316 zl!343))) lambda!319078))))

(declare-fun bs!1374826 () Bool)

(assert (= bs!1374826 d!1833741))

(declare-fun m!6760948 () Bool)

(assert (=> bs!1374826 m!6760948))

(assert (=> b!5831313 d!1833741))

(declare-fun d!1833743 () Bool)

(assert (=> d!1833743 (= (isEmpty!35705 (t!377315 (unfocusZipperList!1308 zl!343))) ((_ is Nil!63836) (t!377315 (unfocusZipperList!1308 zl!343))))))

(assert (=> b!5831142 d!1833743))

(declare-fun d!1833745 () Bool)

(declare-fun nullableFct!1890 (Regex!15887) Bool)

(assert (=> d!1833745 (= (nullable!5889 r!7292) (nullableFct!1890 r!7292))))

(declare-fun bs!1374827 () Bool)

(assert (= bs!1374827 d!1833745))

(declare-fun m!6760950 () Bool)

(assert (=> bs!1374827 m!6760950))

(assert (=> b!5831248 d!1833745))

(declare-fun d!1833747 () Bool)

(assert (=> d!1833747 (= (isEmptyLang!1334 lt!2302936) ((_ is EmptyLang!15887) lt!2302936))))

(assert (=> b!5831144 d!1833747))

(declare-fun d!1833749 () Bool)

(declare-fun res!2457719 () Bool)

(declare-fun e!3577906 () Bool)

(assert (=> d!1833749 (=> res!2457719 e!3577906)))

(assert (=> d!1833749 (= res!2457719 ((_ is Nil!63837) lt!2302945))))

(assert (=> d!1833749 (= (noDuplicate!1757 lt!2302945) e!3577906)))

(declare-fun b!5831666 () Bool)

(declare-fun e!3577907 () Bool)

(assert (=> b!5831666 (= e!3577906 e!3577907)))

(declare-fun res!2457720 () Bool)

(assert (=> b!5831666 (=> (not res!2457720) (not e!3577907))))

(declare-fun contains!19910 (List!63961 Context!10542) Bool)

(assert (=> b!5831666 (= res!2457720 (not (contains!19910 (t!377316 lt!2302945) (h!70285 lt!2302945))))))

(declare-fun b!5831667 () Bool)

(assert (=> b!5831667 (= e!3577907 (noDuplicate!1757 (t!377316 lt!2302945)))))

(assert (= (and d!1833749 (not res!2457719)) b!5831666))

(assert (= (and b!5831666 res!2457720) b!5831667))

(declare-fun m!6760952 () Bool)

(assert (=> b!5831666 m!6760952))

(declare-fun m!6760954 () Bool)

(assert (=> b!5831667 m!6760954))

(assert (=> d!1833621 d!1833749))

(declare-fun d!1833751 () Bool)

(declare-fun e!3577915 () Bool)

(assert (=> d!1833751 e!3577915))

(declare-fun res!2457725 () Bool)

(assert (=> d!1833751 (=> (not res!2457725) (not e!3577915))))

(declare-fun res!2457726 () List!63961)

(assert (=> d!1833751 (= res!2457725 (noDuplicate!1757 res!2457726))))

(declare-fun e!3577916 () Bool)

(assert (=> d!1833751 e!3577916))

(assert (=> d!1833751 (= (choose!44296 z!1189) res!2457726)))

(declare-fun b!5831675 () Bool)

(declare-fun e!3577914 () Bool)

(declare-fun tp!1611288 () Bool)

(assert (=> b!5831675 (= e!3577914 tp!1611288)))

(declare-fun b!5831674 () Bool)

(declare-fun tp!1611287 () Bool)

(assert (=> b!5831674 (= e!3577916 (and (inv!82964 (h!70285 res!2457726)) e!3577914 tp!1611287))))

(declare-fun b!5831676 () Bool)

(assert (=> b!5831676 (= e!3577915 (= (content!11722 res!2457726) z!1189))))

(assert (= b!5831674 b!5831675))

(assert (= (and d!1833751 ((_ is Cons!63837) res!2457726)) b!5831674))

(assert (= (and d!1833751 res!2457725) b!5831676))

(declare-fun m!6760956 () Bool)

(assert (=> d!1833751 m!6760956))

(declare-fun m!6760958 () Bool)

(assert (=> b!5831674 m!6760958))

(declare-fun m!6760960 () Bool)

(assert (=> b!5831676 m!6760960))

(assert (=> d!1833621 d!1833751))

(declare-fun d!1833753 () Bool)

(assert (=> d!1833753 (= (isEmpty!35706 (tail!11422 s!2326)) ((_ is Nil!63838) (tail!11422 s!2326)))))

(assert (=> b!5831247 d!1833753))

(declare-fun d!1833755 () Bool)

(assert (=> d!1833755 (= (tail!11422 s!2326) (t!377317 s!2326))))

(assert (=> b!5831247 d!1833755))

(declare-fun d!1833757 () Bool)

(assert (=> d!1833757 (= (isEmpty!35705 (tail!11421 (exprs!5771 (h!70285 zl!343)))) ((_ is Nil!63836) (tail!11421 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> b!5831185 d!1833757))

(declare-fun d!1833759 () Bool)

(assert (=> d!1833759 (= (tail!11421 (exprs!5771 (h!70285 zl!343))) (t!377315 (exprs!5771 (h!70285 zl!343))))))

(assert (=> b!5831185 d!1833759))

(assert (=> bm!455393 d!1833737))

(assert (=> b!5831156 d!1833611))

(declare-fun bs!1374828 () Bool)

(declare-fun d!1833761 () Bool)

(assert (= bs!1374828 (and d!1833761 d!1833613)))

(declare-fun lambda!319079 () Int)

(assert (=> bs!1374828 (= lambda!319079 lambda!319061)))

(declare-fun bs!1374829 () Bool)

(assert (= bs!1374829 (and d!1833761 d!1833585)))

(assert (=> bs!1374829 (= lambda!319079 lambda!319052)))

(declare-fun bs!1374830 () Bool)

(assert (= bs!1374830 (and d!1833761 d!1833611)))

(assert (=> bs!1374830 (= lambda!319079 lambda!319058)))

(declare-fun bs!1374831 () Bool)

(assert (= bs!1374831 (and d!1833761 d!1833609)))

(assert (=> bs!1374831 (= lambda!319079 lambda!319055)))

(declare-fun bs!1374832 () Bool)

(assert (= bs!1374832 (and d!1833761 d!1833619)))

(assert (=> bs!1374832 (= lambda!319079 lambda!319062)))

(declare-fun bs!1374833 () Bool)

(assert (= bs!1374833 (and d!1833761 d!1833741)))

(assert (=> bs!1374833 (= lambda!319079 lambda!319078)))

(declare-fun lt!2302962 () List!63960)

(assert (=> d!1833761 (forall!14978 lt!2302962 lambda!319079)))

(declare-fun e!3577917 () List!63960)

(assert (=> d!1833761 (= lt!2302962 e!3577917)))

(declare-fun c!1033324 () Bool)

(assert (=> d!1833761 (= c!1033324 ((_ is Cons!63837) (t!377316 zl!343)))))

(assert (=> d!1833761 (= (unfocusZipperList!1308 (t!377316 zl!343)) lt!2302962)))

(declare-fun b!5831677 () Bool)

(assert (=> b!5831677 (= e!3577917 (Cons!63836 (generalisedConcat!1484 (exprs!5771 (h!70285 (t!377316 zl!343)))) (unfocusZipperList!1308 (t!377316 (t!377316 zl!343)))))))

(declare-fun b!5831678 () Bool)

(assert (=> b!5831678 (= e!3577917 Nil!63836)))

(assert (= (and d!1833761 c!1033324) b!5831677))

(assert (= (and d!1833761 (not c!1033324)) b!5831678))

(declare-fun m!6760962 () Bool)

(assert (=> d!1833761 m!6760962))

(declare-fun m!6760964 () Bool)

(assert (=> b!5831677 m!6760964))

(declare-fun m!6760966 () Bool)

(assert (=> b!5831677 m!6760966))

(assert (=> b!5831156 d!1833761))

(declare-fun bs!1374834 () Bool)

(declare-fun b!5831685 () Bool)

(assert (= bs!1374834 (and b!5831685 b!5831298)))

(declare-fun lambda!319080 () Int)

(assert (=> bs!1374834 (= (and (= (reg!16216 (regTwo!32287 r!7292)) (reg!16216 r!7292)) (= (regTwo!32287 r!7292) r!7292)) (= lambda!319080 lambda!319067))))

(declare-fun bs!1374835 () Bool)

(assert (= bs!1374835 (and b!5831685 b!5831301)))

(assert (=> bs!1374835 (not (= lambda!319080 lambda!319068))))

(assert (=> b!5831685 true))

(assert (=> b!5831685 true))

(declare-fun bs!1374836 () Bool)

(declare-fun b!5831688 () Bool)

(assert (= bs!1374836 (and b!5831688 b!5831298)))

(declare-fun lambda!319081 () Int)

(assert (=> bs!1374836 (not (= lambda!319081 lambda!319067))))

(declare-fun bs!1374837 () Bool)

(assert (= bs!1374837 (and b!5831688 b!5831301)))

(assert (=> bs!1374837 (= (and (= (regOne!32286 (regTwo!32287 r!7292)) (regOne!32286 r!7292)) (= (regTwo!32286 (regTwo!32287 r!7292)) (regTwo!32286 r!7292))) (= lambda!319081 lambda!319068))))

(declare-fun bs!1374838 () Bool)

(assert (= bs!1374838 (and b!5831688 b!5831685)))

(assert (=> bs!1374838 (not (= lambda!319081 lambda!319080))))

(assert (=> b!5831688 true))

(assert (=> b!5831688 true))

(declare-fun bm!455429 () Bool)

(declare-fun c!1033328 () Bool)

(declare-fun call!455434 () Bool)

(assert (=> bm!455429 (= call!455434 (Exists!2964 (ite c!1033328 lambda!319080 lambda!319081)))))

(declare-fun b!5831679 () Bool)

(declare-fun e!3577920 () Bool)

(declare-fun e!3577918 () Bool)

(assert (=> b!5831679 (= e!3577920 e!3577918)))

(declare-fun res!2457728 () Bool)

(assert (=> b!5831679 (= res!2457728 (not ((_ is EmptyLang!15887) (regTwo!32287 r!7292))))))

(assert (=> b!5831679 (=> (not res!2457728) (not e!3577918))))

(declare-fun b!5831680 () Bool)

(declare-fun e!3577923 () Bool)

(declare-fun e!3577924 () Bool)

(assert (=> b!5831680 (= e!3577923 e!3577924)))

(declare-fun res!2457729 () Bool)

(assert (=> b!5831680 (= res!2457729 (matchRSpec!2988 (regOne!32287 (regTwo!32287 r!7292)) s!2326))))

(assert (=> b!5831680 (=> res!2457729 e!3577924)))

(declare-fun b!5831681 () Bool)

(declare-fun e!3577922 () Bool)

(assert (=> b!5831681 (= e!3577923 e!3577922)))

(assert (=> b!5831681 (= c!1033328 ((_ is Star!15887) (regTwo!32287 r!7292)))))

(declare-fun b!5831682 () Bool)

(declare-fun call!455435 () Bool)

(assert (=> b!5831682 (= e!3577920 call!455435)))

(declare-fun b!5831683 () Bool)

(declare-fun c!1033325 () Bool)

(assert (=> b!5831683 (= c!1033325 ((_ is Union!15887) (regTwo!32287 r!7292)))))

(declare-fun e!3577921 () Bool)

(assert (=> b!5831683 (= e!3577921 e!3577923)))

(declare-fun b!5831684 () Bool)

(assert (=> b!5831684 (= e!3577921 (= s!2326 (Cons!63838 (c!1033165 (regTwo!32287 r!7292)) Nil!63838)))))

(declare-fun d!1833763 () Bool)

(declare-fun c!1033327 () Bool)

(assert (=> d!1833763 (= c!1033327 ((_ is EmptyExpr!15887) (regTwo!32287 r!7292)))))

(assert (=> d!1833763 (= (matchRSpec!2988 (regTwo!32287 r!7292) s!2326) e!3577920)))

(declare-fun e!3577919 () Bool)

(assert (=> b!5831685 (= e!3577919 call!455434)))

(declare-fun b!5831686 () Bool)

(declare-fun c!1033326 () Bool)

(assert (=> b!5831686 (= c!1033326 ((_ is ElementMatch!15887) (regTwo!32287 r!7292)))))

(assert (=> b!5831686 (= e!3577918 e!3577921)))

(declare-fun b!5831687 () Bool)

(declare-fun res!2457727 () Bool)

(assert (=> b!5831687 (=> res!2457727 e!3577919)))

(assert (=> b!5831687 (= res!2457727 call!455435)))

(assert (=> b!5831687 (= e!3577922 e!3577919)))

(assert (=> b!5831688 (= e!3577922 call!455434)))

(declare-fun bm!455430 () Bool)

(assert (=> bm!455430 (= call!455435 (isEmpty!35706 s!2326))))

(declare-fun b!5831689 () Bool)

(assert (=> b!5831689 (= e!3577924 (matchRSpec!2988 (regTwo!32287 (regTwo!32287 r!7292)) s!2326))))

(assert (= (and d!1833763 c!1033327) b!5831682))

(assert (= (and d!1833763 (not c!1033327)) b!5831679))

(assert (= (and b!5831679 res!2457728) b!5831686))

(assert (= (and b!5831686 c!1033326) b!5831684))

(assert (= (and b!5831686 (not c!1033326)) b!5831683))

(assert (= (and b!5831683 c!1033325) b!5831680))

(assert (= (and b!5831683 (not c!1033325)) b!5831681))

(assert (= (and b!5831680 (not res!2457729)) b!5831689))

(assert (= (and b!5831681 c!1033328) b!5831687))

(assert (= (and b!5831681 (not c!1033328)) b!5831688))

(assert (= (and b!5831687 (not res!2457727)) b!5831685))

(assert (= (or b!5831685 b!5831688) bm!455429))

(assert (= (or b!5831682 b!5831687) bm!455430))

(declare-fun m!6760968 () Bool)

(assert (=> bm!455429 m!6760968))

(declare-fun m!6760970 () Bool)

(assert (=> b!5831680 m!6760970))

(assert (=> bm!455430 m!6760744))

(declare-fun m!6760972 () Bool)

(assert (=> b!5831689 m!6760972))

(assert (=> b!5831302 d!1833763))

(declare-fun b!5831690 () Bool)

(declare-fun e!3577931 () Bool)

(declare-fun e!3577927 () Bool)

(assert (=> b!5831690 (= e!3577931 e!3577927)))

(declare-fun res!2457730 () Bool)

(assert (=> b!5831690 (= res!2457730 (not (nullable!5889 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))

(assert (=> b!5831690 (=> (not res!2457730) (not e!3577927))))

(declare-fun b!5831691 () Bool)

(declare-fun e!3577928 () Bool)

(declare-fun call!455438 () Bool)

(assert (=> b!5831691 (= e!3577928 call!455438)))

(declare-fun bm!455431 () Bool)

(declare-fun call!455436 () Bool)

(declare-fun call!455437 () Bool)

(assert (=> bm!455431 (= call!455436 call!455437)))

(declare-fun b!5831692 () Bool)

(assert (=> b!5831692 (= e!3577927 call!455437)))

(declare-fun b!5831693 () Bool)

(declare-fun e!3577925 () Bool)

(assert (=> b!5831693 (= e!3577925 e!3577928)))

(declare-fun res!2457733 () Bool)

(assert (=> b!5831693 (=> (not res!2457733) (not e!3577928))))

(assert (=> b!5831693 (= res!2457733 call!455436)))

(declare-fun b!5831694 () Bool)

(declare-fun res!2457731 () Bool)

(assert (=> b!5831694 (=> res!2457731 e!3577925)))

(assert (=> b!5831694 (= res!2457731 (not ((_ is Concat!24732) (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))

(declare-fun e!3577926 () Bool)

(assert (=> b!5831694 (= e!3577926 e!3577925)))

(declare-fun b!5831695 () Bool)

(declare-fun res!2457732 () Bool)

(declare-fun e!3577930 () Bool)

(assert (=> b!5831695 (=> (not res!2457732) (not e!3577930))))

(assert (=> b!5831695 (= res!2457732 call!455436)))

(assert (=> b!5831695 (= e!3577926 e!3577930)))

(declare-fun d!1833765 () Bool)

(declare-fun res!2457734 () Bool)

(declare-fun e!3577929 () Bool)

(assert (=> d!1833765 (=> res!2457734 e!3577929)))

(assert (=> d!1833765 (= res!2457734 ((_ is ElementMatch!15887) (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))

(assert (=> d!1833765 (= (validRegex!7623 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) e!3577929)))

(declare-fun c!1033330 () Bool)

(declare-fun bm!455432 () Bool)

(declare-fun c!1033329 () Bool)

(assert (=> bm!455432 (= call!455437 (validRegex!7623 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))

(declare-fun bm!455433 () Bool)

(assert (=> bm!455433 (= call!455438 (validRegex!7623 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))

(declare-fun b!5831696 () Bool)

(assert (=> b!5831696 (= e!3577931 e!3577926)))

(assert (=> b!5831696 (= c!1033330 ((_ is Union!15887) (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))

(declare-fun b!5831697 () Bool)

(assert (=> b!5831697 (= e!3577930 call!455438)))

(declare-fun b!5831698 () Bool)

(assert (=> b!5831698 (= e!3577929 e!3577931)))

(assert (=> b!5831698 (= c!1033329 ((_ is Star!15887) (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))

(assert (= (and d!1833765 (not res!2457734)) b!5831698))

(assert (= (and b!5831698 c!1033329) b!5831690))

(assert (= (and b!5831698 (not c!1033329)) b!5831696))

(assert (= (and b!5831690 res!2457730) b!5831692))

(assert (= (and b!5831696 c!1033330) b!5831695))

(assert (= (and b!5831696 (not c!1033330)) b!5831694))

(assert (= (and b!5831695 res!2457732) b!5831697))

(assert (= (and b!5831694 (not res!2457731)) b!5831693))

(assert (= (and b!5831693 res!2457733) b!5831691))

(assert (= (or b!5831697 b!5831691) bm!455433))

(assert (= (or b!5831695 b!5831693) bm!455431))

(assert (= (or b!5831692 bm!455431) bm!455432))

(declare-fun m!6760974 () Bool)

(assert (=> b!5831690 m!6760974))

(declare-fun m!6760976 () Bool)

(assert (=> bm!455432 m!6760976))

(declare-fun m!6760978 () Bool)

(assert (=> bm!455433 m!6760978))

(assert (=> bm!455383 d!1833765))

(declare-fun b!5831699 () Bool)

(declare-fun e!3577938 () Bool)

(declare-fun e!3577934 () Bool)

(assert (=> b!5831699 (= e!3577938 e!3577934)))

(declare-fun res!2457735 () Bool)

(assert (=> b!5831699 (= res!2457735 (not (nullable!5889 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))

(assert (=> b!5831699 (=> (not res!2457735) (not e!3577934))))

(declare-fun b!5831700 () Bool)

(declare-fun e!3577935 () Bool)

(declare-fun call!455441 () Bool)

(assert (=> b!5831700 (= e!3577935 call!455441)))

(declare-fun bm!455434 () Bool)

(declare-fun call!455439 () Bool)

(declare-fun call!455440 () Bool)

(assert (=> bm!455434 (= call!455439 call!455440)))

(declare-fun b!5831701 () Bool)

(assert (=> b!5831701 (= e!3577934 call!455440)))

(declare-fun b!5831702 () Bool)

(declare-fun e!3577932 () Bool)

(assert (=> b!5831702 (= e!3577932 e!3577935)))

(declare-fun res!2457738 () Bool)

(assert (=> b!5831702 (=> (not res!2457738) (not e!3577935))))

(assert (=> b!5831702 (= res!2457738 call!455439)))

(declare-fun b!5831703 () Bool)

(declare-fun res!2457736 () Bool)

(assert (=> b!5831703 (=> res!2457736 e!3577932)))

(assert (=> b!5831703 (= res!2457736 (not ((_ is Concat!24732) (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))

(declare-fun e!3577933 () Bool)

(assert (=> b!5831703 (= e!3577933 e!3577932)))

(declare-fun b!5831704 () Bool)

(declare-fun res!2457737 () Bool)

(declare-fun e!3577937 () Bool)

(assert (=> b!5831704 (=> (not res!2457737) (not e!3577937))))

(assert (=> b!5831704 (= res!2457737 call!455439)))

(assert (=> b!5831704 (= e!3577933 e!3577937)))

(declare-fun d!1833767 () Bool)

(declare-fun res!2457739 () Bool)

(declare-fun e!3577936 () Bool)

(assert (=> d!1833767 (=> res!2457739 e!3577936)))

(assert (=> d!1833767 (= res!2457739 ((_ is ElementMatch!15887) (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))

(assert (=> d!1833767 (= (validRegex!7623 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) e!3577936)))

(declare-fun c!1033331 () Bool)

(declare-fun bm!455435 () Bool)

(declare-fun c!1033332 () Bool)

(assert (=> bm!455435 (= call!455440 (validRegex!7623 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))

(declare-fun bm!455436 () Bool)

(assert (=> bm!455436 (= call!455441 (validRegex!7623 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))

(declare-fun b!5831705 () Bool)

(assert (=> b!5831705 (= e!3577938 e!3577933)))

(assert (=> b!5831705 (= c!1033332 ((_ is Union!15887) (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))

(declare-fun b!5831706 () Bool)

(assert (=> b!5831706 (= e!3577937 call!455441)))

(declare-fun b!5831707 () Bool)

(assert (=> b!5831707 (= e!3577936 e!3577938)))

(assert (=> b!5831707 (= c!1033331 ((_ is Star!15887) (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))

(assert (= (and d!1833767 (not res!2457739)) b!5831707))

(assert (= (and b!5831707 c!1033331) b!5831699))

(assert (= (and b!5831707 (not c!1033331)) b!5831705))

(assert (= (and b!5831699 res!2457735) b!5831701))

(assert (= (and b!5831705 c!1033332) b!5831704))

(assert (= (and b!5831705 (not c!1033332)) b!5831703))

(assert (= (and b!5831704 res!2457737) b!5831706))

(assert (= (and b!5831703 (not res!2457736)) b!5831702))

(assert (= (and b!5831702 res!2457738) b!5831700))

(assert (= (or b!5831706 b!5831700) bm!455436))

(assert (= (or b!5831704 b!5831702) bm!455434))

(assert (= (or b!5831701 bm!455434) bm!455435))

(declare-fun m!6760980 () Bool)

(assert (=> b!5831699 m!6760980))

(declare-fun m!6760982 () Bool)

(assert (=> bm!455435 m!6760982))

(declare-fun m!6760984 () Bool)

(assert (=> bm!455436 m!6760984))

(assert (=> bm!455384 d!1833767))

(declare-fun d!1833769 () Bool)

(declare-fun c!1033335 () Bool)

(assert (=> d!1833769 (= c!1033335 ((_ is Nil!63837) lt!2302945))))

(declare-fun e!3577941 () (InoxSet Context!10542))

(assert (=> d!1833769 (= (content!11722 lt!2302945) e!3577941)))

(declare-fun b!5831712 () Bool)

(assert (=> b!5831712 (= e!3577941 ((as const (Array Context!10542 Bool)) false))))

(declare-fun b!5831713 () Bool)

(assert (=> b!5831713 (= e!3577941 ((_ map or) (store ((as const (Array Context!10542 Bool)) false) (h!70285 lt!2302945) true) (content!11722 (t!377316 lt!2302945))))))

(assert (= (and d!1833769 c!1033335) b!5831712))

(assert (= (and d!1833769 (not c!1033335)) b!5831713))

(declare-fun m!6760986 () Bool)

(assert (=> b!5831713 m!6760986))

(declare-fun m!6760988 () Bool)

(assert (=> b!5831713 m!6760988))

(assert (=> b!5831217 d!1833769))

(declare-fun d!1833771 () Bool)

(assert (=> d!1833771 (= (isConcat!849 lt!2302942) ((_ is Concat!24732) lt!2302942))))

(assert (=> b!5831180 d!1833771))

(declare-fun d!1833773 () Bool)

(assert (=> d!1833773 (= (isUnion!764 lt!2302936) ((_ is Union!15887) lt!2302936))))

(assert (=> b!5831151 d!1833773))

(declare-fun bm!455437 () Bool)

(declare-fun call!455442 () Bool)

(assert (=> bm!455437 (= call!455442 (isEmpty!35706 (tail!11422 s!2326)))))

(declare-fun b!5831714 () Bool)

(declare-fun res!2457747 () Bool)

(declare-fun e!3577948 () Bool)

(assert (=> b!5831714 (=> (not res!2457747) (not e!3577948))))

(assert (=> b!5831714 (= res!2457747 (not call!455442))))

(declare-fun b!5831715 () Bool)

(declare-fun res!2457745 () Bool)

(assert (=> b!5831715 (=> (not res!2457745) (not e!3577948))))

(assert (=> b!5831715 (= res!2457745 (isEmpty!35706 (tail!11422 (tail!11422 s!2326))))))

(declare-fun b!5831716 () Bool)

(declare-fun e!3577943 () Bool)

(assert (=> b!5831716 (= e!3577943 (nullable!5889 (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(declare-fun b!5831717 () Bool)

(declare-fun e!3577945 () Bool)

(declare-fun lt!2302963 () Bool)

(assert (=> b!5831717 (= e!3577945 (not lt!2302963))))

(declare-fun b!5831718 () Bool)

(declare-fun e!3577944 () Bool)

(assert (=> b!5831718 (= e!3577944 (not (= (head!12337 (tail!11422 s!2326)) (c!1033165 (derivativeStep!4629 r!7292 (head!12337 s!2326))))))))

(declare-fun d!1833775 () Bool)

(declare-fun e!3577947 () Bool)

(assert (=> d!1833775 e!3577947))

(declare-fun c!1033337 () Bool)

(assert (=> d!1833775 (= c!1033337 ((_ is EmptyExpr!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(assert (=> d!1833775 (= lt!2302963 e!3577943)))

(declare-fun c!1033338 () Bool)

(assert (=> d!1833775 (= c!1033338 (isEmpty!35706 (tail!11422 s!2326)))))

(assert (=> d!1833775 (validRegex!7623 (derivativeStep!4629 r!7292 (head!12337 s!2326)))))

(assert (=> d!1833775 (= (matchR!8070 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (tail!11422 s!2326)) lt!2302963)))

(declare-fun b!5831719 () Bool)

(declare-fun e!3577946 () Bool)

(assert (=> b!5831719 (= e!3577946 e!3577944)))

(declare-fun res!2457743 () Bool)

(assert (=> b!5831719 (=> res!2457743 e!3577944)))

(assert (=> b!5831719 (= res!2457743 call!455442)))

(declare-fun b!5831720 () Bool)

(assert (=> b!5831720 (= e!3577947 e!3577945)))

(declare-fun c!1033336 () Bool)

(assert (=> b!5831720 (= c!1033336 ((_ is EmptyLang!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(declare-fun b!5831721 () Bool)

(assert (=> b!5831721 (= e!3577948 (= (head!12337 (tail!11422 s!2326)) (c!1033165 (derivativeStep!4629 r!7292 (head!12337 s!2326)))))))

(declare-fun b!5831722 () Bool)

(assert (=> b!5831722 (= e!3577943 (matchR!8070 (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326))) (tail!11422 (tail!11422 s!2326))))))

(declare-fun b!5831723 () Bool)

(declare-fun res!2457744 () Bool)

(declare-fun e!3577942 () Bool)

(assert (=> b!5831723 (=> res!2457744 e!3577942)))

(assert (=> b!5831723 (= res!2457744 (not ((_ is ElementMatch!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326)))))))

(assert (=> b!5831723 (= e!3577945 e!3577942)))

(declare-fun b!5831724 () Bool)

(assert (=> b!5831724 (= e!3577942 e!3577946)))

(declare-fun res!2457740 () Bool)

(assert (=> b!5831724 (=> (not res!2457740) (not e!3577946))))

(assert (=> b!5831724 (= res!2457740 (not lt!2302963))))

(declare-fun b!5831725 () Bool)

(assert (=> b!5831725 (= e!3577947 (= lt!2302963 call!455442))))

(declare-fun b!5831726 () Bool)

(declare-fun res!2457741 () Bool)

(assert (=> b!5831726 (=> res!2457741 e!3577944)))

(assert (=> b!5831726 (= res!2457741 (not (isEmpty!35706 (tail!11422 (tail!11422 s!2326)))))))

(declare-fun b!5831727 () Bool)

(declare-fun res!2457746 () Bool)

(assert (=> b!5831727 (=> res!2457746 e!3577942)))

(assert (=> b!5831727 (= res!2457746 e!3577948)))

(declare-fun res!2457742 () Bool)

(assert (=> b!5831727 (=> (not res!2457742) (not e!3577948))))

(assert (=> b!5831727 (= res!2457742 lt!2302963)))

(assert (= (and d!1833775 c!1033338) b!5831716))

(assert (= (and d!1833775 (not c!1033338)) b!5831722))

(assert (= (and d!1833775 c!1033337) b!5831725))

(assert (= (and d!1833775 (not c!1033337)) b!5831720))

(assert (= (and b!5831720 c!1033336) b!5831717))

(assert (= (and b!5831720 (not c!1033336)) b!5831723))

(assert (= (and b!5831723 (not res!2457744)) b!5831727))

(assert (= (and b!5831727 res!2457742) b!5831714))

(assert (= (and b!5831714 res!2457747) b!5831715))

(assert (= (and b!5831715 res!2457745) b!5831721))

(assert (= (and b!5831727 (not res!2457746)) b!5831724))

(assert (= (and b!5831724 res!2457740) b!5831719))

(assert (= (and b!5831719 (not res!2457743)) b!5831726))

(assert (= (and b!5831726 (not res!2457741)) b!5831718))

(assert (= (or b!5831725 b!5831714 b!5831719) bm!455437))

(assert (=> d!1833775 m!6760750))

(assert (=> d!1833775 m!6760754))

(assert (=> d!1833775 m!6760748))

(declare-fun m!6760990 () Bool)

(assert (=> d!1833775 m!6760990))

(assert (=> bm!455437 m!6760750))

(assert (=> bm!455437 m!6760754))

(assert (=> b!5831721 m!6760750))

(declare-fun m!6760992 () Bool)

(assert (=> b!5831721 m!6760992))

(assert (=> b!5831722 m!6760750))

(assert (=> b!5831722 m!6760992))

(assert (=> b!5831722 m!6760748))

(assert (=> b!5831722 m!6760992))

(declare-fun m!6760994 () Bool)

(assert (=> b!5831722 m!6760994))

(assert (=> b!5831722 m!6760750))

(declare-fun m!6760996 () Bool)

(assert (=> b!5831722 m!6760996))

(assert (=> b!5831722 m!6760994))

(assert (=> b!5831722 m!6760996))

(declare-fun m!6760998 () Bool)

(assert (=> b!5831722 m!6760998))

(assert (=> b!5831715 m!6760750))

(assert (=> b!5831715 m!6760996))

(assert (=> b!5831715 m!6760996))

(declare-fun m!6761000 () Bool)

(assert (=> b!5831715 m!6761000))

(assert (=> b!5831726 m!6760750))

(assert (=> b!5831726 m!6760996))

(assert (=> b!5831726 m!6760996))

(assert (=> b!5831726 m!6761000))

(assert (=> b!5831718 m!6760750))

(assert (=> b!5831718 m!6760992))

(assert (=> b!5831716 m!6760748))

(declare-fun m!6761002 () Bool)

(assert (=> b!5831716 m!6761002))

(assert (=> b!5831254 d!1833775))

(declare-fun bm!455446 () Bool)

(declare-fun call!455452 () Regex!15887)

(declare-fun call!455453 () Regex!15887)

(assert (=> bm!455446 (= call!455452 call!455453)))

(declare-fun b!5831748 () Bool)

(declare-fun e!3577959 () Regex!15887)

(assert (=> b!5831748 (= e!3577959 (Union!15887 (Concat!24732 call!455452 (regTwo!32286 r!7292)) EmptyLang!15887))))

(declare-fun b!5831749 () Bool)

(declare-fun e!3577961 () Regex!15887)

(declare-fun e!3577962 () Regex!15887)

(assert (=> b!5831749 (= e!3577961 e!3577962)))

(declare-fun c!1033349 () Bool)

(assert (=> b!5831749 (= c!1033349 ((_ is ElementMatch!15887) r!7292))))

(declare-fun call!455451 () Regex!15887)

(declare-fun b!5831750 () Bool)

(assert (=> b!5831750 (= e!3577959 (Union!15887 (Concat!24732 call!455451 (regTwo!32286 r!7292)) call!455452))))

(declare-fun c!1033352 () Bool)

(declare-fun c!1033350 () Bool)

(declare-fun bm!455447 () Bool)

(declare-fun c!1033351 () Bool)

(declare-fun call!455454 () Regex!15887)

(assert (=> bm!455447 (= call!455454 (derivativeStep!4629 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))) (head!12337 s!2326)))))

(declare-fun b!5831751 () Bool)

(declare-fun e!3577963 () Regex!15887)

(assert (=> b!5831751 (= e!3577963 (Union!15887 call!455451 call!455454))))

(declare-fun b!5831752 () Bool)

(assert (=> b!5831752 (= e!3577962 (ite (= (head!12337 s!2326) (c!1033165 r!7292)) EmptyExpr!15887 EmptyLang!15887))))

(declare-fun b!5831753 () Bool)

(assert (=> b!5831753 (= c!1033350 (nullable!5889 (regOne!32286 r!7292)))))

(declare-fun e!3577960 () Regex!15887)

(assert (=> b!5831753 (= e!3577960 e!3577959)))

(declare-fun b!5831754 () Bool)

(assert (=> b!5831754 (= e!3577963 e!3577960)))

(assert (=> b!5831754 (= c!1033351 ((_ is Star!15887) r!7292))))

(declare-fun b!5831755 () Bool)

(assert (=> b!5831755 (= e!3577961 EmptyLang!15887)))

(declare-fun bm!455448 () Bool)

(assert (=> bm!455448 (= call!455453 call!455454)))

(declare-fun b!5831756 () Bool)

(assert (=> b!5831756 (= e!3577960 (Concat!24732 call!455453 r!7292))))

(declare-fun d!1833777 () Bool)

(declare-fun lt!2302966 () Regex!15887)

(assert (=> d!1833777 (validRegex!7623 lt!2302966)))

(assert (=> d!1833777 (= lt!2302966 e!3577961)))

(declare-fun c!1033353 () Bool)

(assert (=> d!1833777 (= c!1033353 (or ((_ is EmptyExpr!15887) r!7292) ((_ is EmptyLang!15887) r!7292)))))

(assert (=> d!1833777 (validRegex!7623 r!7292)))

(assert (=> d!1833777 (= (derivativeStep!4629 r!7292 (head!12337 s!2326)) lt!2302966)))

(declare-fun b!5831757 () Bool)

(assert (=> b!5831757 (= c!1033352 ((_ is Union!15887) r!7292))))

(assert (=> b!5831757 (= e!3577962 e!3577963)))

(declare-fun bm!455449 () Bool)

(assert (=> bm!455449 (= call!455451 (derivativeStep!4629 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)) (head!12337 s!2326)))))

(assert (= (and d!1833777 c!1033353) b!5831755))

(assert (= (and d!1833777 (not c!1033353)) b!5831749))

(assert (= (and b!5831749 c!1033349) b!5831752))

(assert (= (and b!5831749 (not c!1033349)) b!5831757))

(assert (= (and b!5831757 c!1033352) b!5831751))

(assert (= (and b!5831757 (not c!1033352)) b!5831754))

(assert (= (and b!5831754 c!1033351) b!5831756))

(assert (= (and b!5831754 (not c!1033351)) b!5831753))

(assert (= (and b!5831753 c!1033350) b!5831750))

(assert (= (and b!5831753 (not c!1033350)) b!5831748))

(assert (= (or b!5831750 b!5831748) bm!455446))

(assert (= (or b!5831756 bm!455446) bm!455448))

(assert (= (or b!5831751 bm!455448) bm!455447))

(assert (= (or b!5831751 b!5831750) bm!455449))

(assert (=> bm!455447 m!6760746))

(declare-fun m!6761004 () Bool)

(assert (=> bm!455447 m!6761004))

(declare-fun m!6761006 () Bool)

(assert (=> b!5831753 m!6761006))

(declare-fun m!6761008 () Bool)

(assert (=> d!1833777 m!6761008))

(assert (=> d!1833777 m!6760576))

(assert (=> bm!455449 m!6760746))

(declare-fun m!6761010 () Bool)

(assert (=> bm!455449 m!6761010))

(assert (=> b!5831254 d!1833777))

(declare-fun d!1833779 () Bool)

(assert (=> d!1833779 (= (head!12337 s!2326) (h!70286 s!2326))))

(assert (=> b!5831254 d!1833779))

(assert (=> b!5831254 d!1833755))

(declare-fun d!1833781 () Bool)

(assert (=> d!1833781 (= (nullable!5889 (reg!16216 r!7292)) (nullableFct!1890 (reg!16216 r!7292)))))

(declare-fun bs!1374839 () Bool)

(assert (= bs!1374839 d!1833781))

(declare-fun m!6761012 () Bool)

(assert (=> bs!1374839 m!6761012))

(assert (=> b!5831206 d!1833781))

(declare-fun bs!1374840 () Bool)

(declare-fun d!1833783 () Bool)

(assert (= bs!1374840 (and d!1833783 d!1833613)))

(declare-fun lambda!319082 () Int)

(assert (=> bs!1374840 (= lambda!319082 lambda!319061)))

(declare-fun bs!1374841 () Bool)

(assert (= bs!1374841 (and d!1833783 d!1833585)))

(assert (=> bs!1374841 (= lambda!319082 lambda!319052)))

(declare-fun bs!1374842 () Bool)

(assert (= bs!1374842 (and d!1833783 d!1833611)))

(assert (=> bs!1374842 (= lambda!319082 lambda!319058)))

(declare-fun bs!1374843 () Bool)

(assert (= bs!1374843 (and d!1833783 d!1833609)))

(assert (=> bs!1374843 (= lambda!319082 lambda!319055)))

(declare-fun bs!1374844 () Bool)

(assert (= bs!1374844 (and d!1833783 d!1833761)))

(assert (=> bs!1374844 (= lambda!319082 lambda!319079)))

(declare-fun bs!1374845 () Bool)

(assert (= bs!1374845 (and d!1833783 d!1833619)))

(assert (=> bs!1374845 (= lambda!319082 lambda!319062)))

(declare-fun bs!1374846 () Bool)

(assert (= bs!1374846 (and d!1833783 d!1833741)))

(assert (=> bs!1374846 (= lambda!319082 lambda!319078)))

(declare-fun b!5831758 () Bool)

(declare-fun e!3577968 () Bool)

(declare-fun lt!2302967 () Regex!15887)

(assert (=> b!5831758 (= e!3577968 (= lt!2302967 (head!12336 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5831759 () Bool)

(declare-fun e!3577969 () Regex!15887)

(declare-fun e!3577964 () Regex!15887)

(assert (=> b!5831759 (= e!3577969 e!3577964)))

(declare-fun c!1033354 () Bool)

(assert (=> b!5831759 (= c!1033354 ((_ is Cons!63836) (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5831760 () Bool)

(assert (=> b!5831760 (= e!3577968 (isConcat!849 lt!2302967))))

(declare-fun b!5831761 () Bool)

(assert (=> b!5831761 (= e!3577964 (Concat!24732 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343)))) (generalisedConcat!1484 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))))))))

(declare-fun b!5831762 () Bool)

(declare-fun e!3577966 () Bool)

(assert (=> b!5831762 (= e!3577966 (isEmpty!35705 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5831763 () Bool)

(declare-fun e!3577967 () Bool)

(declare-fun e!3577965 () Bool)

(assert (=> b!5831763 (= e!3577967 e!3577965)))

(declare-fun c!1033355 () Bool)

(assert (=> b!5831763 (= c!1033355 (isEmpty!35705 (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> d!1833783 e!3577967))

(declare-fun res!2457748 () Bool)

(assert (=> d!1833783 (=> (not res!2457748) (not e!3577967))))

(assert (=> d!1833783 (= res!2457748 (validRegex!7623 lt!2302967))))

(assert (=> d!1833783 (= lt!2302967 e!3577969)))

(declare-fun c!1033356 () Bool)

(assert (=> d!1833783 (= c!1033356 e!3577966)))

(declare-fun res!2457749 () Bool)

(assert (=> d!1833783 (=> (not res!2457749) (not e!3577966))))

(assert (=> d!1833783 (= res!2457749 ((_ is Cons!63836) (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> d!1833783 (forall!14978 (t!377315 (exprs!5771 (h!70285 zl!343))) lambda!319082)))

(assert (=> d!1833783 (= (generalisedConcat!1484 (t!377315 (exprs!5771 (h!70285 zl!343)))) lt!2302967)))

(declare-fun b!5831764 () Bool)

(assert (=> b!5831764 (= e!3577965 (isEmptyExpr!1326 lt!2302967))))

(declare-fun b!5831765 () Bool)

(assert (=> b!5831765 (= e!3577965 e!3577968)))

(declare-fun c!1033357 () Bool)

(assert (=> b!5831765 (= c!1033357 (isEmpty!35705 (tail!11421 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5831766 () Bool)

(assert (=> b!5831766 (= e!3577969 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5831767 () Bool)

(assert (=> b!5831767 (= e!3577964 EmptyExpr!15887)))

(assert (= (and d!1833783 res!2457749) b!5831762))

(assert (= (and d!1833783 c!1033356) b!5831766))

(assert (= (and d!1833783 (not c!1033356)) b!5831759))

(assert (= (and b!5831759 c!1033354) b!5831761))

(assert (= (and b!5831759 (not c!1033354)) b!5831767))

(assert (= (and d!1833783 res!2457748) b!5831763))

(assert (= (and b!5831763 c!1033355) b!5831764))

(assert (= (and b!5831763 (not c!1033355)) b!5831765))

(assert (= (and b!5831765 c!1033357) b!5831758))

(assert (= (and b!5831765 (not c!1033357)) b!5831760))

(declare-fun m!6761014 () Bool)

(assert (=> b!5831760 m!6761014))

(declare-fun m!6761016 () Bool)

(assert (=> b!5831761 m!6761016))

(declare-fun m!6761018 () Bool)

(assert (=> b!5831758 m!6761018))

(declare-fun m!6761020 () Bool)

(assert (=> b!5831762 m!6761020))

(declare-fun m!6761022 () Bool)

(assert (=> b!5831765 m!6761022))

(assert (=> b!5831765 m!6761022))

(declare-fun m!6761024 () Bool)

(assert (=> b!5831765 m!6761024))

(declare-fun m!6761026 () Bool)

(assert (=> b!5831764 m!6761026))

(declare-fun m!6761028 () Bool)

(assert (=> d!1833783 m!6761028))

(declare-fun m!6761030 () Bool)

(assert (=> d!1833783 m!6761030))

(assert (=> b!5831763 m!6760714))

(assert (=> b!5831181 d!1833783))

(declare-fun b!5831768 () Bool)

(declare-fun e!3577976 () Bool)

(declare-fun e!3577972 () Bool)

(assert (=> b!5831768 (= e!3577976 e!3577972)))

(declare-fun res!2457750 () Bool)

(assert (=> b!5831768 (= res!2457750 (not (nullable!5889 (reg!16216 lt!2302954))))))

(assert (=> b!5831768 (=> (not res!2457750) (not e!3577972))))

(declare-fun b!5831769 () Bool)

(declare-fun e!3577973 () Bool)

(declare-fun call!455457 () Bool)

(assert (=> b!5831769 (= e!3577973 call!455457)))

(declare-fun bm!455450 () Bool)

(declare-fun call!455455 () Bool)

(declare-fun call!455456 () Bool)

(assert (=> bm!455450 (= call!455455 call!455456)))

(declare-fun b!5831770 () Bool)

(assert (=> b!5831770 (= e!3577972 call!455456)))

(declare-fun b!5831771 () Bool)

(declare-fun e!3577970 () Bool)

(assert (=> b!5831771 (= e!3577970 e!3577973)))

(declare-fun res!2457753 () Bool)

(assert (=> b!5831771 (=> (not res!2457753) (not e!3577973))))

(assert (=> b!5831771 (= res!2457753 call!455455)))

(declare-fun b!5831772 () Bool)

(declare-fun res!2457751 () Bool)

(assert (=> b!5831772 (=> res!2457751 e!3577970)))

(assert (=> b!5831772 (= res!2457751 (not ((_ is Concat!24732) lt!2302954)))))

(declare-fun e!3577971 () Bool)

(assert (=> b!5831772 (= e!3577971 e!3577970)))

(declare-fun b!5831773 () Bool)

(declare-fun res!2457752 () Bool)

(declare-fun e!3577975 () Bool)

(assert (=> b!5831773 (=> (not res!2457752) (not e!3577975))))

(assert (=> b!5831773 (= res!2457752 call!455455)))

(assert (=> b!5831773 (= e!3577971 e!3577975)))

(declare-fun d!1833785 () Bool)

(declare-fun res!2457754 () Bool)

(declare-fun e!3577974 () Bool)

(assert (=> d!1833785 (=> res!2457754 e!3577974)))

(assert (=> d!1833785 (= res!2457754 ((_ is ElementMatch!15887) lt!2302954))))

(assert (=> d!1833785 (= (validRegex!7623 lt!2302954) e!3577974)))

(declare-fun bm!455451 () Bool)

(declare-fun c!1033358 () Bool)

(declare-fun c!1033359 () Bool)

(assert (=> bm!455451 (= call!455456 (validRegex!7623 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))))))

(declare-fun bm!455452 () Bool)

(assert (=> bm!455452 (= call!455457 (validRegex!7623 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))))))

(declare-fun b!5831774 () Bool)

(assert (=> b!5831774 (= e!3577976 e!3577971)))

(assert (=> b!5831774 (= c!1033359 ((_ is Union!15887) lt!2302954))))

(declare-fun b!5831775 () Bool)

(assert (=> b!5831775 (= e!3577975 call!455457)))

(declare-fun b!5831776 () Bool)

(assert (=> b!5831776 (= e!3577974 e!3577976)))

(assert (=> b!5831776 (= c!1033358 ((_ is Star!15887) lt!2302954))))

(assert (= (and d!1833785 (not res!2457754)) b!5831776))

(assert (= (and b!5831776 c!1033358) b!5831768))

(assert (= (and b!5831776 (not c!1033358)) b!5831774))

(assert (= (and b!5831768 res!2457750) b!5831770))

(assert (= (and b!5831774 c!1033359) b!5831773))

(assert (= (and b!5831774 (not c!1033359)) b!5831772))

(assert (= (and b!5831773 res!2457752) b!5831775))

(assert (= (and b!5831772 (not res!2457751)) b!5831771))

(assert (= (and b!5831771 res!2457753) b!5831769))

(assert (= (or b!5831775 b!5831769) bm!455452))

(assert (= (or b!5831773 b!5831771) bm!455450))

(assert (= (or b!5831770 bm!455450) bm!455451))

(declare-fun m!6761032 () Bool)

(assert (=> b!5831768 m!6761032))

(declare-fun m!6761034 () Bool)

(assert (=> bm!455451 m!6761034))

(declare-fun m!6761036 () Bool)

(assert (=> bm!455452 m!6761036))

(assert (=> d!1833629 d!1833785))

(assert (=> d!1833629 d!1833585))

(assert (=> d!1833629 d!1833609))

(declare-fun d!1833787 () Bool)

(assert (=> d!1833787 (= (isEmpty!35705 (t!377315 (exprs!5771 (h!70285 zl!343)))) ((_ is Nil!63836) (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> b!5831182 d!1833787))

(declare-fun d!1833789 () Bool)

(declare-fun res!2457755 () Bool)

(declare-fun e!3577977 () Bool)

(assert (=> d!1833789 (=> res!2457755 e!3577977)))

(assert (=> d!1833789 (= res!2457755 ((_ is Nil!63836) lt!2302939))))

(assert (=> d!1833789 (= (forall!14978 lt!2302939 lambda!319055) e!3577977)))

(declare-fun b!5831777 () Bool)

(declare-fun e!3577978 () Bool)

(assert (=> b!5831777 (= e!3577977 e!3577978)))

(declare-fun res!2457756 () Bool)

(assert (=> b!5831777 (=> (not res!2457756) (not e!3577978))))

(assert (=> b!5831777 (= res!2457756 (dynLambda!24974 lambda!319055 (h!70284 lt!2302939)))))

(declare-fun b!5831778 () Bool)

(assert (=> b!5831778 (= e!3577978 (forall!14978 (t!377315 lt!2302939) lambda!319055))))

(assert (= (and d!1833789 (not res!2457755)) b!5831777))

(assert (= (and b!5831777 res!2457756) b!5831778))

(declare-fun b_lambda!219773 () Bool)

(assert (=> (not b_lambda!219773) (not b!5831777)))

(declare-fun m!6761038 () Bool)

(assert (=> b!5831777 m!6761038))

(declare-fun m!6761040 () Bool)

(assert (=> b!5831778 m!6761040))

(assert (=> d!1833609 d!1833789))

(declare-fun d!1833791 () Bool)

(assert (=> d!1833791 (= (isEmptyExpr!1326 lt!2302942) ((_ is EmptyExpr!15887) lt!2302942))))

(assert (=> b!5831184 d!1833791))

(declare-fun d!1833793 () Bool)

(declare-fun res!2457757 () Bool)

(declare-fun e!3577979 () Bool)

(assert (=> d!1833793 (=> res!2457757 e!3577979)))

(assert (=> d!1833793 (= res!2457757 ((_ is Nil!63836) (exprs!5771 setElem!39444)))))

(assert (=> d!1833793 (= (forall!14978 (exprs!5771 setElem!39444) lambda!319062) e!3577979)))

(declare-fun b!5831779 () Bool)

(declare-fun e!3577980 () Bool)

(assert (=> b!5831779 (= e!3577979 e!3577980)))

(declare-fun res!2457758 () Bool)

(assert (=> b!5831779 (=> (not res!2457758) (not e!3577980))))

(assert (=> b!5831779 (= res!2457758 (dynLambda!24974 lambda!319062 (h!70284 (exprs!5771 setElem!39444))))))

(declare-fun b!5831780 () Bool)

(assert (=> b!5831780 (= e!3577980 (forall!14978 (t!377315 (exprs!5771 setElem!39444)) lambda!319062))))

(assert (= (and d!1833793 (not res!2457757)) b!5831779))

(assert (= (and b!5831779 res!2457758) b!5831780))

(declare-fun b_lambda!219775 () Bool)

(assert (=> (not b_lambda!219775) (not b!5831779)))

(declare-fun m!6761042 () Bool)

(assert (=> b!5831779 m!6761042))

(declare-fun m!6761044 () Bool)

(assert (=> b!5831780 m!6761044))

(assert (=> d!1833619 d!1833793))

(assert (=> b!5831258 d!1833753))

(assert (=> b!5831258 d!1833755))

(declare-fun d!1833795 () Bool)

(assert (=> d!1833795 (= (isEmpty!35705 (exprs!5771 (h!70285 zl!343))) ((_ is Nil!63836) (exprs!5771 (h!70285 zl!343))))))

(assert (=> b!5831183 d!1833795))

(declare-fun bs!1374847 () Bool)

(declare-fun d!1833797 () Bool)

(assert (= bs!1374847 (and d!1833797 d!1833613)))

(declare-fun lambda!319083 () Int)

(assert (=> bs!1374847 (= lambda!319083 lambda!319061)))

(declare-fun bs!1374848 () Bool)

(assert (= bs!1374848 (and d!1833797 d!1833585)))

(assert (=> bs!1374848 (= lambda!319083 lambda!319052)))

(declare-fun bs!1374849 () Bool)

(assert (= bs!1374849 (and d!1833797 d!1833611)))

(assert (=> bs!1374849 (= lambda!319083 lambda!319058)))

(declare-fun bs!1374850 () Bool)

(assert (= bs!1374850 (and d!1833797 d!1833783)))

(assert (=> bs!1374850 (= lambda!319083 lambda!319082)))

(declare-fun bs!1374851 () Bool)

(assert (= bs!1374851 (and d!1833797 d!1833609)))

(assert (=> bs!1374851 (= lambda!319083 lambda!319055)))

(declare-fun bs!1374852 () Bool)

(assert (= bs!1374852 (and d!1833797 d!1833761)))

(assert (=> bs!1374852 (= lambda!319083 lambda!319079)))

(declare-fun bs!1374853 () Bool)

(assert (= bs!1374853 (and d!1833797 d!1833619)))

(assert (=> bs!1374853 (= lambda!319083 lambda!319062)))

(declare-fun bs!1374854 () Bool)

(assert (= bs!1374854 (and d!1833797 d!1833741)))

(assert (=> bs!1374854 (= lambda!319083 lambda!319078)))

(assert (=> d!1833797 (= (inv!82964 setElem!39450) (forall!14978 (exprs!5771 setElem!39450) lambda!319083))))

(declare-fun bs!1374855 () Bool)

(assert (= bs!1374855 d!1833797))

(declare-fun m!6761046 () Bool)

(assert (=> bs!1374855 m!6761046))

(assert (=> setNonEmpty!39450 d!1833797))

(declare-fun d!1833799 () Bool)

(assert (=> d!1833799 (= (isEmpty!35705 (unfocusZipperList!1308 zl!343)) ((_ is Nil!63836) (unfocusZipperList!1308 zl!343)))))

(assert (=> b!5831145 d!1833799))

(declare-fun d!1833801 () Bool)

(declare-fun choose!44299 (Int) Bool)

(assert (=> d!1833801 (= (Exists!2964 (ite c!1033273 lambda!319067 lambda!319068)) (choose!44299 (ite c!1033273 lambda!319067 lambda!319068)))))

(declare-fun bs!1374856 () Bool)

(assert (= bs!1374856 d!1833801))

(declare-fun m!6761048 () Bool)

(assert (=> bs!1374856 m!6761048))

(assert (=> bm!455392 d!1833801))

(declare-fun d!1833803 () Bool)

(assert (=> d!1833803 (= (isEmpty!35705 (tail!11421 (unfocusZipperList!1308 zl!343))) ((_ is Nil!63836) (tail!11421 (unfocusZipperList!1308 zl!343))))))

(assert (=> b!5831147 d!1833803))

(declare-fun d!1833805 () Bool)

(assert (=> d!1833805 (= (tail!11421 (unfocusZipperList!1308 zl!343)) (t!377315 (unfocusZipperList!1308 zl!343)))))

(assert (=> b!5831147 d!1833805))

(declare-fun bs!1374857 () Bool)

(declare-fun b!5831787 () Bool)

(assert (= bs!1374857 (and b!5831787 b!5831298)))

(declare-fun lambda!319084 () Int)

(assert (=> bs!1374857 (= (and (= (reg!16216 (regOne!32287 r!7292)) (reg!16216 r!7292)) (= (regOne!32287 r!7292) r!7292)) (= lambda!319084 lambda!319067))))

(declare-fun bs!1374858 () Bool)

(assert (= bs!1374858 (and b!5831787 b!5831301)))

(assert (=> bs!1374858 (not (= lambda!319084 lambda!319068))))

(declare-fun bs!1374859 () Bool)

(assert (= bs!1374859 (and b!5831787 b!5831685)))

(assert (=> bs!1374859 (= (and (= (reg!16216 (regOne!32287 r!7292)) (reg!16216 (regTwo!32287 r!7292))) (= (regOne!32287 r!7292) (regTwo!32287 r!7292))) (= lambda!319084 lambda!319080))))

(declare-fun bs!1374860 () Bool)

(assert (= bs!1374860 (and b!5831787 b!5831688)))

(assert (=> bs!1374860 (not (= lambda!319084 lambda!319081))))

(assert (=> b!5831787 true))

(assert (=> b!5831787 true))

(declare-fun bs!1374861 () Bool)

(declare-fun b!5831790 () Bool)

(assert (= bs!1374861 (and b!5831790 b!5831688)))

(declare-fun lambda!319085 () Int)

(assert (=> bs!1374861 (= (and (= (regOne!32286 (regOne!32287 r!7292)) (regOne!32286 (regTwo!32287 r!7292))) (= (regTwo!32286 (regOne!32287 r!7292)) (regTwo!32286 (regTwo!32287 r!7292)))) (= lambda!319085 lambda!319081))))

(declare-fun bs!1374862 () Bool)

(assert (= bs!1374862 (and b!5831790 b!5831301)))

(assert (=> bs!1374862 (= (and (= (regOne!32286 (regOne!32287 r!7292)) (regOne!32286 r!7292)) (= (regTwo!32286 (regOne!32287 r!7292)) (regTwo!32286 r!7292))) (= lambda!319085 lambda!319068))))

(declare-fun bs!1374863 () Bool)

(assert (= bs!1374863 (and b!5831790 b!5831298)))

(assert (=> bs!1374863 (not (= lambda!319085 lambda!319067))))

(declare-fun bs!1374864 () Bool)

(assert (= bs!1374864 (and b!5831790 b!5831685)))

(assert (=> bs!1374864 (not (= lambda!319085 lambda!319080))))

(declare-fun bs!1374865 () Bool)

(assert (= bs!1374865 (and b!5831790 b!5831787)))

(assert (=> bs!1374865 (not (= lambda!319085 lambda!319084))))

(assert (=> b!5831790 true))

(assert (=> b!5831790 true))

(declare-fun call!455458 () Bool)

(declare-fun c!1033363 () Bool)

(declare-fun bm!455453 () Bool)

(assert (=> bm!455453 (= call!455458 (Exists!2964 (ite c!1033363 lambda!319084 lambda!319085)))))

(declare-fun b!5831781 () Bool)

(declare-fun e!3577983 () Bool)

(declare-fun e!3577981 () Bool)

(assert (=> b!5831781 (= e!3577983 e!3577981)))

(declare-fun res!2457760 () Bool)

(assert (=> b!5831781 (= res!2457760 (not ((_ is EmptyLang!15887) (regOne!32287 r!7292))))))

(assert (=> b!5831781 (=> (not res!2457760) (not e!3577981))))

(declare-fun b!5831782 () Bool)

(declare-fun e!3577986 () Bool)

(declare-fun e!3577987 () Bool)

(assert (=> b!5831782 (= e!3577986 e!3577987)))

(declare-fun res!2457761 () Bool)

(assert (=> b!5831782 (= res!2457761 (matchRSpec!2988 (regOne!32287 (regOne!32287 r!7292)) s!2326))))

(assert (=> b!5831782 (=> res!2457761 e!3577987)))

(declare-fun b!5831783 () Bool)

(declare-fun e!3577985 () Bool)

(assert (=> b!5831783 (= e!3577986 e!3577985)))

(assert (=> b!5831783 (= c!1033363 ((_ is Star!15887) (regOne!32287 r!7292)))))

(declare-fun b!5831784 () Bool)

(declare-fun call!455459 () Bool)

(assert (=> b!5831784 (= e!3577983 call!455459)))

(declare-fun b!5831785 () Bool)

(declare-fun c!1033360 () Bool)

(assert (=> b!5831785 (= c!1033360 ((_ is Union!15887) (regOne!32287 r!7292)))))

(declare-fun e!3577984 () Bool)

(assert (=> b!5831785 (= e!3577984 e!3577986)))

(declare-fun b!5831786 () Bool)

(assert (=> b!5831786 (= e!3577984 (= s!2326 (Cons!63838 (c!1033165 (regOne!32287 r!7292)) Nil!63838)))))

(declare-fun d!1833807 () Bool)

(declare-fun c!1033362 () Bool)

(assert (=> d!1833807 (= c!1033362 ((_ is EmptyExpr!15887) (regOne!32287 r!7292)))))

(assert (=> d!1833807 (= (matchRSpec!2988 (regOne!32287 r!7292) s!2326) e!3577983)))

(declare-fun e!3577982 () Bool)

(assert (=> b!5831787 (= e!3577982 call!455458)))

(declare-fun b!5831788 () Bool)

(declare-fun c!1033361 () Bool)

(assert (=> b!5831788 (= c!1033361 ((_ is ElementMatch!15887) (regOne!32287 r!7292)))))

(assert (=> b!5831788 (= e!3577981 e!3577984)))

(declare-fun b!5831789 () Bool)

(declare-fun res!2457759 () Bool)

(assert (=> b!5831789 (=> res!2457759 e!3577982)))

(assert (=> b!5831789 (= res!2457759 call!455459)))

(assert (=> b!5831789 (= e!3577985 e!3577982)))

(assert (=> b!5831790 (= e!3577985 call!455458)))

(declare-fun bm!455454 () Bool)

(assert (=> bm!455454 (= call!455459 (isEmpty!35706 s!2326))))

(declare-fun b!5831791 () Bool)

(assert (=> b!5831791 (= e!3577987 (matchRSpec!2988 (regTwo!32287 (regOne!32287 r!7292)) s!2326))))

(assert (= (and d!1833807 c!1033362) b!5831784))

(assert (= (and d!1833807 (not c!1033362)) b!5831781))

(assert (= (and b!5831781 res!2457760) b!5831788))

(assert (= (and b!5831788 c!1033361) b!5831786))

(assert (= (and b!5831788 (not c!1033361)) b!5831785))

(assert (= (and b!5831785 c!1033360) b!5831782))

(assert (= (and b!5831785 (not c!1033360)) b!5831783))

(assert (= (and b!5831782 (not res!2457761)) b!5831791))

(assert (= (and b!5831783 c!1033363) b!5831789))

(assert (= (and b!5831783 (not c!1033363)) b!5831790))

(assert (= (and b!5831789 (not res!2457759)) b!5831787))

(assert (= (or b!5831787 b!5831790) bm!455453))

(assert (= (or b!5831784 b!5831789) bm!455454))

(declare-fun m!6761050 () Bool)

(assert (=> bm!455453 m!6761050))

(declare-fun m!6761052 () Bool)

(assert (=> b!5831782 m!6761052))

(assert (=> bm!455454 m!6760744))

(declare-fun m!6761054 () Bool)

(assert (=> b!5831791 m!6761054))

(assert (=> b!5831293 d!1833807))

(assert (=> b!5831250 d!1833779))

(assert (=> d!1833623 d!1833737))

(assert (=> d!1833623 d!1833615))

(declare-fun b!5831792 () Bool)

(declare-fun e!3577994 () Bool)

(declare-fun e!3577990 () Bool)

(assert (=> b!5831792 (= e!3577994 e!3577990)))

(declare-fun res!2457762 () Bool)

(assert (=> b!5831792 (= res!2457762 (not (nullable!5889 (reg!16216 lt!2302942))))))

(assert (=> b!5831792 (=> (not res!2457762) (not e!3577990))))

(declare-fun b!5831793 () Bool)

(declare-fun e!3577991 () Bool)

(declare-fun call!455462 () Bool)

(assert (=> b!5831793 (= e!3577991 call!455462)))

(declare-fun bm!455455 () Bool)

(declare-fun call!455460 () Bool)

(declare-fun call!455461 () Bool)

(assert (=> bm!455455 (= call!455460 call!455461)))

(declare-fun b!5831794 () Bool)

(assert (=> b!5831794 (= e!3577990 call!455461)))

(declare-fun b!5831795 () Bool)

(declare-fun e!3577988 () Bool)

(assert (=> b!5831795 (= e!3577988 e!3577991)))

(declare-fun res!2457765 () Bool)

(assert (=> b!5831795 (=> (not res!2457765) (not e!3577991))))

(assert (=> b!5831795 (= res!2457765 call!455460)))

(declare-fun b!5831796 () Bool)

(declare-fun res!2457763 () Bool)

(assert (=> b!5831796 (=> res!2457763 e!3577988)))

(assert (=> b!5831796 (= res!2457763 (not ((_ is Concat!24732) lt!2302942)))))

(declare-fun e!3577989 () Bool)

(assert (=> b!5831796 (= e!3577989 e!3577988)))

(declare-fun b!5831797 () Bool)

(declare-fun res!2457764 () Bool)

(declare-fun e!3577993 () Bool)

(assert (=> b!5831797 (=> (not res!2457764) (not e!3577993))))

(assert (=> b!5831797 (= res!2457764 call!455460)))

(assert (=> b!5831797 (= e!3577989 e!3577993)))

(declare-fun d!1833809 () Bool)

(declare-fun res!2457766 () Bool)

(declare-fun e!3577992 () Bool)

(assert (=> d!1833809 (=> res!2457766 e!3577992)))

(assert (=> d!1833809 (= res!2457766 ((_ is ElementMatch!15887) lt!2302942))))

(assert (=> d!1833809 (= (validRegex!7623 lt!2302942) e!3577992)))

(declare-fun c!1033365 () Bool)

(declare-fun c!1033364 () Bool)

(declare-fun bm!455456 () Bool)

(assert (=> bm!455456 (= call!455461 (validRegex!7623 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))))))

(declare-fun bm!455457 () Bool)

(assert (=> bm!455457 (= call!455462 (validRegex!7623 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))))))

(declare-fun b!5831798 () Bool)

(assert (=> b!5831798 (= e!3577994 e!3577989)))

(assert (=> b!5831798 (= c!1033365 ((_ is Union!15887) lt!2302942))))

(declare-fun b!5831799 () Bool)

(assert (=> b!5831799 (= e!3577993 call!455462)))

(declare-fun b!5831800 () Bool)

(assert (=> b!5831800 (= e!3577992 e!3577994)))

(assert (=> b!5831800 (= c!1033364 ((_ is Star!15887) lt!2302942))))

(assert (= (and d!1833809 (not res!2457766)) b!5831800))

(assert (= (and b!5831800 c!1033364) b!5831792))

(assert (= (and b!5831800 (not c!1033364)) b!5831798))

(assert (= (and b!5831792 res!2457762) b!5831794))

(assert (= (and b!5831798 c!1033365) b!5831797))

(assert (= (and b!5831798 (not c!1033365)) b!5831796))

(assert (= (and b!5831797 res!2457764) b!5831799))

(assert (= (and b!5831796 (not res!2457763)) b!5831795))

(assert (= (and b!5831795 res!2457765) b!5831793))

(assert (= (or b!5831799 b!5831793) bm!455457))

(assert (= (or b!5831797 b!5831795) bm!455455))

(assert (= (or b!5831794 bm!455455) bm!455456))

(declare-fun m!6761056 () Bool)

(assert (=> b!5831792 m!6761056))

(declare-fun m!6761058 () Bool)

(assert (=> bm!455456 m!6761058))

(declare-fun m!6761060 () Bool)

(assert (=> bm!455457 m!6761060))

(assert (=> d!1833611 d!1833809))

(declare-fun d!1833811 () Bool)

(declare-fun res!2457767 () Bool)

(declare-fun e!3577995 () Bool)

(assert (=> d!1833811 (=> res!2457767 e!3577995)))

(assert (=> d!1833811 (= res!2457767 ((_ is Nil!63836) (exprs!5771 (h!70285 zl!343))))))

(assert (=> d!1833811 (= (forall!14978 (exprs!5771 (h!70285 zl!343)) lambda!319058) e!3577995)))

(declare-fun b!5831801 () Bool)

(declare-fun e!3577996 () Bool)

(assert (=> b!5831801 (= e!3577995 e!3577996)))

(declare-fun res!2457768 () Bool)

(assert (=> b!5831801 (=> (not res!2457768) (not e!3577996))))

(assert (=> b!5831801 (= res!2457768 (dynLambda!24974 lambda!319058 (h!70284 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5831802 () Bool)

(assert (=> b!5831802 (= e!3577996 (forall!14978 (t!377315 (exprs!5771 (h!70285 zl!343))) lambda!319058))))

(assert (= (and d!1833811 (not res!2457767)) b!5831801))

(assert (= (and b!5831801 res!2457768) b!5831802))

(declare-fun b_lambda!219777 () Bool)

(assert (=> (not b_lambda!219777) (not b!5831801)))

(declare-fun m!6761062 () Bool)

(assert (=> b!5831801 m!6761062))

(declare-fun m!6761064 () Bool)

(assert (=> b!5831802 m!6761064))

(assert (=> d!1833611 d!1833811))

(declare-fun bs!1374866 () Bool)

(declare-fun d!1833813 () Bool)

(assert (= bs!1374866 (and d!1833813 d!1833613)))

(declare-fun lambda!319086 () Int)

(assert (=> bs!1374866 (= lambda!319086 lambda!319061)))

(declare-fun bs!1374867 () Bool)

(assert (= bs!1374867 (and d!1833813 d!1833797)))

(assert (=> bs!1374867 (= lambda!319086 lambda!319083)))

(declare-fun bs!1374868 () Bool)

(assert (= bs!1374868 (and d!1833813 d!1833585)))

(assert (=> bs!1374868 (= lambda!319086 lambda!319052)))

(declare-fun bs!1374869 () Bool)

(assert (= bs!1374869 (and d!1833813 d!1833611)))

(assert (=> bs!1374869 (= lambda!319086 lambda!319058)))

(declare-fun bs!1374870 () Bool)

(assert (= bs!1374870 (and d!1833813 d!1833783)))

(assert (=> bs!1374870 (= lambda!319086 lambda!319082)))

(declare-fun bs!1374871 () Bool)

(assert (= bs!1374871 (and d!1833813 d!1833609)))

(assert (=> bs!1374871 (= lambda!319086 lambda!319055)))

(declare-fun bs!1374872 () Bool)

(assert (= bs!1374872 (and d!1833813 d!1833761)))

(assert (=> bs!1374872 (= lambda!319086 lambda!319079)))

(declare-fun bs!1374873 () Bool)

(assert (= bs!1374873 (and d!1833813 d!1833619)))

(assert (=> bs!1374873 (= lambda!319086 lambda!319062)))

(declare-fun bs!1374874 () Bool)

(assert (= bs!1374874 (and d!1833813 d!1833741)))

(assert (=> bs!1374874 (= lambda!319086 lambda!319078)))

(declare-fun b!5831803 () Bool)

(declare-fun e!3578000 () Bool)

(assert (=> b!5831803 (= e!3578000 (isEmpty!35705 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5831804 () Bool)

(declare-fun e!3578001 () Bool)

(declare-fun lt!2302968 () Regex!15887)

(assert (=> b!5831804 (= e!3578001 (= lt!2302968 (head!12336 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5831805 () Bool)

(declare-fun e!3578002 () Bool)

(assert (=> b!5831805 (= e!3578002 (isEmptyLang!1334 lt!2302968))))

(declare-fun b!5831806 () Bool)

(declare-fun e!3577999 () Bool)

(assert (=> b!5831806 (= e!3577999 e!3578002)))

(declare-fun c!1033369 () Bool)

(assert (=> b!5831806 (= c!1033369 (isEmpty!35705 (t!377315 (unfocusZipperList!1308 zl!343))))))

(declare-fun b!5831807 () Bool)

(declare-fun e!3577998 () Regex!15887)

(assert (=> b!5831807 (= e!3577998 (Union!15887 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343))) (generalisedUnion!1731 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))))))))

(declare-fun b!5831808 () Bool)

(assert (=> b!5831808 (= e!3578002 e!3578001)))

(declare-fun c!1033366 () Bool)

(assert (=> b!5831808 (= c!1033366 (isEmpty!35705 (tail!11421 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5831809 () Bool)

(declare-fun e!3577997 () Regex!15887)

(assert (=> b!5831809 (= e!3577997 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343))))))

(assert (=> d!1833813 e!3577999))

(declare-fun res!2457770 () Bool)

(assert (=> d!1833813 (=> (not res!2457770) (not e!3577999))))

(assert (=> d!1833813 (= res!2457770 (validRegex!7623 lt!2302968))))

(assert (=> d!1833813 (= lt!2302968 e!3577997)))

(declare-fun c!1033368 () Bool)

(assert (=> d!1833813 (= c!1033368 e!3578000)))

(declare-fun res!2457769 () Bool)

(assert (=> d!1833813 (=> (not res!2457769) (not e!3578000))))

(assert (=> d!1833813 (= res!2457769 ((_ is Cons!63836) (t!377315 (unfocusZipperList!1308 zl!343))))))

(assert (=> d!1833813 (forall!14978 (t!377315 (unfocusZipperList!1308 zl!343)) lambda!319086)))

(assert (=> d!1833813 (= (generalisedUnion!1731 (t!377315 (unfocusZipperList!1308 zl!343))) lt!2302968)))

(declare-fun b!5831810 () Bool)

(assert (=> b!5831810 (= e!3577997 e!3577998)))

(declare-fun c!1033367 () Bool)

(assert (=> b!5831810 (= c!1033367 ((_ is Cons!63836) (t!377315 (unfocusZipperList!1308 zl!343))))))

(declare-fun b!5831811 () Bool)

(assert (=> b!5831811 (= e!3577998 EmptyLang!15887)))

(declare-fun b!5831812 () Bool)

(assert (=> b!5831812 (= e!3578001 (isUnion!764 lt!2302968))))

(assert (= (and d!1833813 res!2457769) b!5831803))

(assert (= (and d!1833813 c!1033368) b!5831809))

(assert (= (and d!1833813 (not c!1033368)) b!5831810))

(assert (= (and b!5831810 c!1033367) b!5831807))

(assert (= (and b!5831810 (not c!1033367)) b!5831811))

(assert (= (and d!1833813 res!2457770) b!5831806))

(assert (= (and b!5831806 c!1033369) b!5831805))

(assert (= (and b!5831806 (not c!1033369)) b!5831808))

(assert (= (and b!5831808 c!1033366) b!5831804))

(assert (= (and b!5831808 (not c!1033366)) b!5831812))

(declare-fun m!6761066 () Bool)

(assert (=> b!5831804 m!6761066))

(declare-fun m!6761068 () Bool)

(assert (=> b!5831803 m!6761068))

(assert (=> b!5831806 m!6760686))

(declare-fun m!6761070 () Bool)

(assert (=> b!5831808 m!6761070))

(assert (=> b!5831808 m!6761070))

(declare-fun m!6761072 () Bool)

(assert (=> b!5831808 m!6761072))

(declare-fun m!6761074 () Bool)

(assert (=> b!5831807 m!6761074))

(declare-fun m!6761076 () Bool)

(assert (=> b!5831805 m!6761076))

(declare-fun m!6761078 () Bool)

(assert (=> d!1833813 m!6761078))

(declare-fun m!6761080 () Bool)

(assert (=> d!1833813 m!6761080))

(declare-fun m!6761082 () Bool)

(assert (=> b!5831812 m!6761082))

(assert (=> b!5831146 d!1833813))

(assert (=> b!5831253 d!1833779))

(declare-fun d!1833815 () Bool)

(assert (=> d!1833815 (= (head!12336 (exprs!5771 (h!70285 zl!343))) (h!70284 (exprs!5771 (h!70285 zl!343))))))

(assert (=> b!5831178 d!1833815))

(declare-fun b!5831814 () Bool)

(declare-fun e!3578003 () Bool)

(declare-fun tp!1611290 () Bool)

(declare-fun tp!1611293 () Bool)

(assert (=> b!5831814 (= e!3578003 (and tp!1611290 tp!1611293))))

(declare-fun b!5831815 () Bool)

(declare-fun tp!1611289 () Bool)

(assert (=> b!5831815 (= e!3578003 tp!1611289)))

(assert (=> b!5831342 (= tp!1611104 e!3578003)))

(declare-fun b!5831813 () Bool)

(assert (=> b!5831813 (= e!3578003 tp_is_empty!41027)))

(declare-fun b!5831816 () Bool)

(declare-fun tp!1611292 () Bool)

(declare-fun tp!1611291 () Bool)

(assert (=> b!5831816 (= e!3578003 (and tp!1611292 tp!1611291))))

(assert (= (and b!5831342 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32287 r!7292)))) b!5831813))

(assert (= (and b!5831342 ((_ is Concat!24732) (regOne!32287 (regTwo!32287 r!7292)))) b!5831814))

(assert (= (and b!5831342 ((_ is Star!15887) (regOne!32287 (regTwo!32287 r!7292)))) b!5831815))

(assert (= (and b!5831342 ((_ is Union!15887) (regOne!32287 (regTwo!32287 r!7292)))) b!5831816))

(declare-fun b!5831818 () Bool)

(declare-fun e!3578004 () Bool)

(declare-fun tp!1611295 () Bool)

(declare-fun tp!1611298 () Bool)

(assert (=> b!5831818 (= e!3578004 (and tp!1611295 tp!1611298))))

(declare-fun b!5831819 () Bool)

(declare-fun tp!1611294 () Bool)

(assert (=> b!5831819 (= e!3578004 tp!1611294)))

(assert (=> b!5831342 (= tp!1611103 e!3578004)))

(declare-fun b!5831817 () Bool)

(assert (=> b!5831817 (= e!3578004 tp_is_empty!41027)))

(declare-fun b!5831820 () Bool)

(declare-fun tp!1611297 () Bool)

(declare-fun tp!1611296 () Bool)

(assert (=> b!5831820 (= e!3578004 (and tp!1611297 tp!1611296))))

(assert (= (and b!5831342 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32287 r!7292)))) b!5831817))

(assert (= (and b!5831342 ((_ is Concat!24732) (regTwo!32287 (regTwo!32287 r!7292)))) b!5831818))

(assert (= (and b!5831342 ((_ is Star!15887) (regTwo!32287 (regTwo!32287 r!7292)))) b!5831819))

(assert (= (and b!5831342 ((_ is Union!15887) (regTwo!32287 (regTwo!32287 r!7292)))) b!5831820))

(declare-fun b!5831821 () Bool)

(declare-fun e!3578005 () Bool)

(declare-fun tp!1611299 () Bool)

(assert (=> b!5831821 (= e!3578005 (and tp_is_empty!41027 tp!1611299))))

(assert (=> b!5831319 (= tp!1611079 e!3578005)))

(assert (= (and b!5831319 ((_ is Cons!63838) (t!377317 (t!377317 s!2326)))) b!5831821))

(declare-fun b!5831823 () Bool)

(declare-fun e!3578007 () Bool)

(declare-fun tp!1611300 () Bool)

(assert (=> b!5831823 (= e!3578007 tp!1611300)))

(declare-fun e!3578006 () Bool)

(declare-fun tp!1611301 () Bool)

(declare-fun b!5831822 () Bool)

(assert (=> b!5831822 (= e!3578006 (and (inv!82964 (h!70285 (t!377316 (t!377316 zl!343)))) e!3578007 tp!1611301))))

(assert (=> b!5831313 (= tp!1611076 e!3578006)))

(assert (= b!5831822 b!5831823))

(assert (= (and b!5831313 ((_ is Cons!63837) (t!377316 (t!377316 zl!343)))) b!5831822))

(declare-fun m!6761084 () Bool)

(assert (=> b!5831822 m!6761084))

(declare-fun b!5831824 () Bool)

(declare-fun e!3578008 () Bool)

(declare-fun tp!1611302 () Bool)

(declare-fun tp!1611303 () Bool)

(assert (=> b!5831824 (= e!3578008 (and tp!1611302 tp!1611303))))

(assert (=> b!5831314 (= tp!1611075 e!3578008)))

(assert (= (and b!5831314 ((_ is Cons!63836) (exprs!5771 (h!70285 (t!377316 zl!343))))) b!5831824))

(declare-fun b!5831826 () Bool)

(declare-fun e!3578009 () Bool)

(declare-fun tp!1611305 () Bool)

(declare-fun tp!1611308 () Bool)

(assert (=> b!5831826 (= e!3578009 (and tp!1611305 tp!1611308))))

(declare-fun b!5831827 () Bool)

(declare-fun tp!1611304 () Bool)

(assert (=> b!5831827 (= e!3578009 tp!1611304)))

(assert (=> b!5831343 (= tp!1611106 e!3578009)))

(declare-fun b!5831825 () Bool)

(assert (=> b!5831825 (= e!3578009 tp_is_empty!41027)))

(declare-fun b!5831828 () Bool)

(declare-fun tp!1611307 () Bool)

(declare-fun tp!1611306 () Bool)

(assert (=> b!5831828 (= e!3578009 (and tp!1611307 tp!1611306))))

(assert (= (and b!5831343 ((_ is ElementMatch!15887) (h!70284 (exprs!5771 (h!70285 zl!343))))) b!5831825))

(assert (= (and b!5831343 ((_ is Concat!24732) (h!70284 (exprs!5771 (h!70285 zl!343))))) b!5831826))

(assert (= (and b!5831343 ((_ is Star!15887) (h!70284 (exprs!5771 (h!70285 zl!343))))) b!5831827))

(assert (= (and b!5831343 ((_ is Union!15887) (h!70284 (exprs!5771 (h!70285 zl!343))))) b!5831828))

(declare-fun b!5831829 () Bool)

(declare-fun e!3578010 () Bool)

(declare-fun tp!1611309 () Bool)

(declare-fun tp!1611310 () Bool)

(assert (=> b!5831829 (= e!3578010 (and tp!1611309 tp!1611310))))

(assert (=> b!5831343 (= tp!1611107 e!3578010)))

(assert (= (and b!5831343 ((_ is Cons!63836) (t!377315 (exprs!5771 (h!70285 zl!343))))) b!5831829))

(declare-fun b!5831831 () Bool)

(declare-fun e!3578011 () Bool)

(declare-fun tp!1611312 () Bool)

(declare-fun tp!1611315 () Bool)

(assert (=> b!5831831 (= e!3578011 (and tp!1611312 tp!1611315))))

(declare-fun b!5831832 () Bool)

(declare-fun tp!1611311 () Bool)

(assert (=> b!5831832 (= e!3578011 tp!1611311)))

(assert (=> b!5831355 (= tp!1611119 e!3578011)))

(declare-fun b!5831830 () Bool)

(assert (=> b!5831830 (= e!3578011 tp_is_empty!41027)))

(declare-fun b!5831833 () Bool)

(declare-fun tp!1611314 () Bool)

(declare-fun tp!1611313 () Bool)

(assert (=> b!5831833 (= e!3578011 (and tp!1611314 tp!1611313))))

(assert (= (and b!5831355 ((_ is ElementMatch!15887) (reg!16216 (regOne!32286 r!7292)))) b!5831830))

(assert (= (and b!5831355 ((_ is Concat!24732) (reg!16216 (regOne!32286 r!7292)))) b!5831831))

(assert (= (and b!5831355 ((_ is Star!15887) (reg!16216 (regOne!32286 r!7292)))) b!5831832))

(assert (= (and b!5831355 ((_ is Union!15887) (reg!16216 (regOne!32286 r!7292)))) b!5831833))

(declare-fun b!5831835 () Bool)

(declare-fun e!3578012 () Bool)

(declare-fun tp!1611317 () Bool)

(declare-fun tp!1611320 () Bool)

(assert (=> b!5831835 (= e!3578012 (and tp!1611317 tp!1611320))))

(declare-fun b!5831836 () Bool)

(declare-fun tp!1611316 () Bool)

(assert (=> b!5831836 (= e!3578012 tp!1611316)))

(assert (=> b!5831324 (= tp!1611084 e!3578012)))

(declare-fun b!5831834 () Bool)

(assert (=> b!5831834 (= e!3578012 tp_is_empty!41027)))

(declare-fun b!5831837 () Bool)

(declare-fun tp!1611319 () Bool)

(declare-fun tp!1611318 () Bool)

(assert (=> b!5831837 (= e!3578012 (and tp!1611319 tp!1611318))))

(assert (= (and b!5831324 ((_ is ElementMatch!15887) (h!70284 (exprs!5771 setElem!39444)))) b!5831834))

(assert (= (and b!5831324 ((_ is Concat!24732) (h!70284 (exprs!5771 setElem!39444)))) b!5831835))

(assert (= (and b!5831324 ((_ is Star!15887) (h!70284 (exprs!5771 setElem!39444)))) b!5831836))

(assert (= (and b!5831324 ((_ is Union!15887) (h!70284 (exprs!5771 setElem!39444)))) b!5831837))

(declare-fun b!5831838 () Bool)

(declare-fun e!3578013 () Bool)

(declare-fun tp!1611321 () Bool)

(declare-fun tp!1611322 () Bool)

(assert (=> b!5831838 (= e!3578013 (and tp!1611321 tp!1611322))))

(assert (=> b!5831324 (= tp!1611085 e!3578013)))

(assert (= (and b!5831324 ((_ is Cons!63836) (t!377315 (exprs!5771 setElem!39444)))) b!5831838))

(declare-fun b!5831840 () Bool)

(declare-fun e!3578014 () Bool)

(declare-fun tp!1611324 () Bool)

(declare-fun tp!1611327 () Bool)

(assert (=> b!5831840 (= e!3578014 (and tp!1611324 tp!1611327))))

(declare-fun b!5831841 () Bool)

(declare-fun tp!1611323 () Bool)

(assert (=> b!5831841 (= e!3578014 tp!1611323)))

(assert (=> b!5831354 (= tp!1611120 e!3578014)))

(declare-fun b!5831839 () Bool)

(assert (=> b!5831839 (= e!3578014 tp_is_empty!41027)))

(declare-fun b!5831842 () Bool)

(declare-fun tp!1611326 () Bool)

(declare-fun tp!1611325 () Bool)

(assert (=> b!5831842 (= e!3578014 (and tp!1611326 tp!1611325))))

(assert (= (and b!5831354 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32286 r!7292)))) b!5831839))

(assert (= (and b!5831354 ((_ is Concat!24732) (regOne!32286 (regOne!32286 r!7292)))) b!5831840))

(assert (= (and b!5831354 ((_ is Star!15887) (regOne!32286 (regOne!32286 r!7292)))) b!5831841))

(assert (= (and b!5831354 ((_ is Union!15887) (regOne!32286 (regOne!32286 r!7292)))) b!5831842))

(declare-fun b!5831844 () Bool)

(declare-fun e!3578015 () Bool)

(declare-fun tp!1611329 () Bool)

(declare-fun tp!1611332 () Bool)

(assert (=> b!5831844 (= e!3578015 (and tp!1611329 tp!1611332))))

(declare-fun b!5831845 () Bool)

(declare-fun tp!1611328 () Bool)

(assert (=> b!5831845 (= e!3578015 tp!1611328)))

(assert (=> b!5831354 (= tp!1611123 e!3578015)))

(declare-fun b!5831843 () Bool)

(assert (=> b!5831843 (= e!3578015 tp_is_empty!41027)))

(declare-fun b!5831846 () Bool)

(declare-fun tp!1611331 () Bool)

(declare-fun tp!1611330 () Bool)

(assert (=> b!5831846 (= e!3578015 (and tp!1611331 tp!1611330))))

(assert (= (and b!5831354 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32286 r!7292)))) b!5831843))

(assert (= (and b!5831354 ((_ is Concat!24732) (regTwo!32286 (regOne!32286 r!7292)))) b!5831844))

(assert (= (and b!5831354 ((_ is Star!15887) (regTwo!32286 (regOne!32286 r!7292)))) b!5831845))

(assert (= (and b!5831354 ((_ is Union!15887) (regTwo!32286 (regOne!32286 r!7292)))) b!5831846))

(declare-fun b!5831848 () Bool)

(declare-fun e!3578016 () Bool)

(declare-fun tp!1611334 () Bool)

(declare-fun tp!1611337 () Bool)

(assert (=> b!5831848 (= e!3578016 (and tp!1611334 tp!1611337))))

(declare-fun b!5831849 () Bool)

(declare-fun tp!1611333 () Bool)

(assert (=> b!5831849 (= e!3578016 tp!1611333)))

(assert (=> b!5831356 (= tp!1611122 e!3578016)))

(declare-fun b!5831847 () Bool)

(assert (=> b!5831847 (= e!3578016 tp_is_empty!41027)))

(declare-fun b!5831850 () Bool)

(declare-fun tp!1611336 () Bool)

(declare-fun tp!1611335 () Bool)

(assert (=> b!5831850 (= e!3578016 (and tp!1611336 tp!1611335))))

(assert (= (and b!5831356 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32286 r!7292)))) b!5831847))

(assert (= (and b!5831356 ((_ is Concat!24732) (regOne!32287 (regOne!32286 r!7292)))) b!5831848))

(assert (= (and b!5831356 ((_ is Star!15887) (regOne!32287 (regOne!32286 r!7292)))) b!5831849))

(assert (= (and b!5831356 ((_ is Union!15887) (regOne!32287 (regOne!32286 r!7292)))) b!5831850))

(declare-fun b!5831852 () Bool)

(declare-fun e!3578017 () Bool)

(declare-fun tp!1611339 () Bool)

(declare-fun tp!1611342 () Bool)

(assert (=> b!5831852 (= e!3578017 (and tp!1611339 tp!1611342))))

(declare-fun b!5831853 () Bool)

(declare-fun tp!1611338 () Bool)

(assert (=> b!5831853 (= e!3578017 tp!1611338)))

(assert (=> b!5831356 (= tp!1611121 e!3578017)))

(declare-fun b!5831851 () Bool)

(assert (=> b!5831851 (= e!3578017 tp_is_empty!41027)))

(declare-fun b!5831854 () Bool)

(declare-fun tp!1611341 () Bool)

(declare-fun tp!1611340 () Bool)

(assert (=> b!5831854 (= e!3578017 (and tp!1611341 tp!1611340))))

(assert (= (and b!5831356 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32286 r!7292)))) b!5831851))

(assert (= (and b!5831356 ((_ is Concat!24732) (regTwo!32287 (regOne!32286 r!7292)))) b!5831852))

(assert (= (and b!5831356 ((_ is Star!15887) (regTwo!32287 (regOne!32286 r!7292)))) b!5831853))

(assert (= (and b!5831356 ((_ is Union!15887) (regTwo!32287 (regOne!32286 r!7292)))) b!5831854))

(declare-fun b!5831856 () Bool)

(declare-fun e!3578018 () Bool)

(declare-fun tp!1611344 () Bool)

(declare-fun tp!1611347 () Bool)

(assert (=> b!5831856 (= e!3578018 (and tp!1611344 tp!1611347))))

(declare-fun b!5831857 () Bool)

(declare-fun tp!1611343 () Bool)

(assert (=> b!5831857 (= e!3578018 tp!1611343)))

(assert (=> b!5831340 (= tp!1611102 e!3578018)))

(declare-fun b!5831855 () Bool)

(assert (=> b!5831855 (= e!3578018 tp_is_empty!41027)))

(declare-fun b!5831858 () Bool)

(declare-fun tp!1611346 () Bool)

(declare-fun tp!1611345 () Bool)

(assert (=> b!5831858 (= e!3578018 (and tp!1611346 tp!1611345))))

(assert (= (and b!5831340 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32287 r!7292)))) b!5831855))

(assert (= (and b!5831340 ((_ is Concat!24732) (regOne!32286 (regTwo!32287 r!7292)))) b!5831856))

(assert (= (and b!5831340 ((_ is Star!15887) (regOne!32286 (regTwo!32287 r!7292)))) b!5831857))

(assert (= (and b!5831340 ((_ is Union!15887) (regOne!32286 (regTwo!32287 r!7292)))) b!5831858))

(declare-fun b!5831860 () Bool)

(declare-fun e!3578019 () Bool)

(declare-fun tp!1611349 () Bool)

(declare-fun tp!1611352 () Bool)

(assert (=> b!5831860 (= e!3578019 (and tp!1611349 tp!1611352))))

(declare-fun b!5831861 () Bool)

(declare-fun tp!1611348 () Bool)

(assert (=> b!5831861 (= e!3578019 tp!1611348)))

(assert (=> b!5831340 (= tp!1611105 e!3578019)))

(declare-fun b!5831859 () Bool)

(assert (=> b!5831859 (= e!3578019 tp_is_empty!41027)))

(declare-fun b!5831862 () Bool)

(declare-fun tp!1611351 () Bool)

(declare-fun tp!1611350 () Bool)

(assert (=> b!5831862 (= e!3578019 (and tp!1611351 tp!1611350))))

(assert (= (and b!5831340 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32287 r!7292)))) b!5831859))

(assert (= (and b!5831340 ((_ is Concat!24732) (regTwo!32286 (regTwo!32287 r!7292)))) b!5831860))

(assert (= (and b!5831340 ((_ is Star!15887) (regTwo!32286 (regTwo!32287 r!7292)))) b!5831861))

(assert (= (and b!5831340 ((_ is Union!15887) (regTwo!32286 (regTwo!32287 r!7292)))) b!5831862))

(declare-fun b!5831864 () Bool)

(declare-fun e!3578020 () Bool)

(declare-fun tp!1611354 () Bool)

(declare-fun tp!1611357 () Bool)

(assert (=> b!5831864 (= e!3578020 (and tp!1611354 tp!1611357))))

(declare-fun b!5831865 () Bool)

(declare-fun tp!1611353 () Bool)

(assert (=> b!5831865 (= e!3578020 tp!1611353)))

(assert (=> b!5831341 (= tp!1611101 e!3578020)))

(declare-fun b!5831863 () Bool)

(assert (=> b!5831863 (= e!3578020 tp_is_empty!41027)))

(declare-fun b!5831866 () Bool)

(declare-fun tp!1611356 () Bool)

(declare-fun tp!1611355 () Bool)

(assert (=> b!5831866 (= e!3578020 (and tp!1611356 tp!1611355))))

(assert (= (and b!5831341 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32287 r!7292)))) b!5831863))

(assert (= (and b!5831341 ((_ is Concat!24732) (reg!16216 (regTwo!32287 r!7292)))) b!5831864))

(assert (= (and b!5831341 ((_ is Star!15887) (reg!16216 (regTwo!32287 r!7292)))) b!5831865))

(assert (= (and b!5831341 ((_ is Union!15887) (reg!16216 (regTwo!32287 r!7292)))) b!5831866))

(declare-fun b!5831868 () Bool)

(declare-fun e!3578021 () Bool)

(declare-fun tp!1611359 () Bool)

(declare-fun tp!1611362 () Bool)

(assert (=> b!5831868 (= e!3578021 (and tp!1611359 tp!1611362))))

(declare-fun b!5831869 () Bool)

(declare-fun tp!1611358 () Bool)

(assert (=> b!5831869 (= e!3578021 tp!1611358)))

(assert (=> b!5831338 (= tp!1611099 e!3578021)))

(declare-fun b!5831867 () Bool)

(assert (=> b!5831867 (= e!3578021 tp_is_empty!41027)))

(declare-fun b!5831870 () Bool)

(declare-fun tp!1611361 () Bool)

(declare-fun tp!1611360 () Bool)

(assert (=> b!5831870 (= e!3578021 (and tp!1611361 tp!1611360))))

(assert (= (and b!5831338 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32287 r!7292)))) b!5831867))

(assert (= (and b!5831338 ((_ is Concat!24732) (regOne!32287 (regOne!32287 r!7292)))) b!5831868))

(assert (= (and b!5831338 ((_ is Star!15887) (regOne!32287 (regOne!32287 r!7292)))) b!5831869))

(assert (= (and b!5831338 ((_ is Union!15887) (regOne!32287 (regOne!32287 r!7292)))) b!5831870))

(declare-fun b!5831872 () Bool)

(declare-fun e!3578022 () Bool)

(declare-fun tp!1611364 () Bool)

(declare-fun tp!1611367 () Bool)

(assert (=> b!5831872 (= e!3578022 (and tp!1611364 tp!1611367))))

(declare-fun b!5831873 () Bool)

(declare-fun tp!1611363 () Bool)

(assert (=> b!5831873 (= e!3578022 tp!1611363)))

(assert (=> b!5831338 (= tp!1611098 e!3578022)))

(declare-fun b!5831871 () Bool)

(assert (=> b!5831871 (= e!3578022 tp_is_empty!41027)))

(declare-fun b!5831874 () Bool)

(declare-fun tp!1611366 () Bool)

(declare-fun tp!1611365 () Bool)

(assert (=> b!5831874 (= e!3578022 (and tp!1611366 tp!1611365))))

(assert (= (and b!5831338 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32287 r!7292)))) b!5831871))

(assert (= (and b!5831338 ((_ is Concat!24732) (regTwo!32287 (regOne!32287 r!7292)))) b!5831872))

(assert (= (and b!5831338 ((_ is Star!15887) (regTwo!32287 (regOne!32287 r!7292)))) b!5831873))

(assert (= (and b!5831338 ((_ is Union!15887) (regTwo!32287 (regOne!32287 r!7292)))) b!5831874))

(declare-fun b!5831876 () Bool)

(declare-fun e!3578023 () Bool)

(declare-fun tp!1611369 () Bool)

(declare-fun tp!1611372 () Bool)

(assert (=> b!5831876 (= e!3578023 (and tp!1611369 tp!1611372))))

(declare-fun b!5831877 () Bool)

(declare-fun tp!1611368 () Bool)

(assert (=> b!5831877 (= e!3578023 tp!1611368)))

(assert (=> b!5831346 (= tp!1611108 e!3578023)))

(declare-fun b!5831875 () Bool)

(assert (=> b!5831875 (= e!3578023 tp_is_empty!41027)))

(declare-fun b!5831878 () Bool)

(declare-fun tp!1611371 () Bool)

(declare-fun tp!1611370 () Bool)

(assert (=> b!5831878 (= e!3578023 (and tp!1611371 tp!1611370))))

(assert (= (and b!5831346 ((_ is ElementMatch!15887) (reg!16216 (reg!16216 r!7292)))) b!5831875))

(assert (= (and b!5831346 ((_ is Concat!24732) (reg!16216 (reg!16216 r!7292)))) b!5831876))

(assert (= (and b!5831346 ((_ is Star!15887) (reg!16216 (reg!16216 r!7292)))) b!5831877))

(assert (= (and b!5831346 ((_ is Union!15887) (reg!16216 (reg!16216 r!7292)))) b!5831878))

(declare-fun b!5831880 () Bool)

(declare-fun e!3578024 () Bool)

(declare-fun tp!1611374 () Bool)

(declare-fun tp!1611377 () Bool)

(assert (=> b!5831880 (= e!3578024 (and tp!1611374 tp!1611377))))

(declare-fun b!5831881 () Bool)

(declare-fun tp!1611373 () Bool)

(assert (=> b!5831881 (= e!3578024 tp!1611373)))

(assert (=> b!5831345 (= tp!1611109 e!3578024)))

(declare-fun b!5831879 () Bool)

(assert (=> b!5831879 (= e!3578024 tp_is_empty!41027)))

(declare-fun b!5831882 () Bool)

(declare-fun tp!1611376 () Bool)

(declare-fun tp!1611375 () Bool)

(assert (=> b!5831882 (= e!3578024 (and tp!1611376 tp!1611375))))

(assert (= (and b!5831345 ((_ is ElementMatch!15887) (regOne!32286 (reg!16216 r!7292)))) b!5831879))

(assert (= (and b!5831345 ((_ is Concat!24732) (regOne!32286 (reg!16216 r!7292)))) b!5831880))

(assert (= (and b!5831345 ((_ is Star!15887) (regOne!32286 (reg!16216 r!7292)))) b!5831881))

(assert (= (and b!5831345 ((_ is Union!15887) (regOne!32286 (reg!16216 r!7292)))) b!5831882))

(declare-fun b!5831884 () Bool)

(declare-fun e!3578025 () Bool)

(declare-fun tp!1611379 () Bool)

(declare-fun tp!1611382 () Bool)

(assert (=> b!5831884 (= e!3578025 (and tp!1611379 tp!1611382))))

(declare-fun b!5831885 () Bool)

(declare-fun tp!1611378 () Bool)

(assert (=> b!5831885 (= e!3578025 tp!1611378)))

(assert (=> b!5831345 (= tp!1611112 e!3578025)))

(declare-fun b!5831883 () Bool)

(assert (=> b!5831883 (= e!3578025 tp_is_empty!41027)))

(declare-fun b!5831886 () Bool)

(declare-fun tp!1611381 () Bool)

(declare-fun tp!1611380 () Bool)

(assert (=> b!5831886 (= e!3578025 (and tp!1611381 tp!1611380))))

(assert (= (and b!5831345 ((_ is ElementMatch!15887) (regTwo!32286 (reg!16216 r!7292)))) b!5831883))

(assert (= (and b!5831345 ((_ is Concat!24732) (regTwo!32286 (reg!16216 r!7292)))) b!5831884))

(assert (= (and b!5831345 ((_ is Star!15887) (regTwo!32286 (reg!16216 r!7292)))) b!5831885))

(assert (= (and b!5831345 ((_ is Union!15887) (regTwo!32286 (reg!16216 r!7292)))) b!5831886))

(declare-fun b!5831888 () Bool)

(declare-fun e!3578026 () Bool)

(declare-fun tp!1611384 () Bool)

(declare-fun tp!1611387 () Bool)

(assert (=> b!5831888 (= e!3578026 (and tp!1611384 tp!1611387))))

(declare-fun b!5831889 () Bool)

(declare-fun tp!1611383 () Bool)

(assert (=> b!5831889 (= e!3578026 tp!1611383)))

(assert (=> b!5831347 (= tp!1611111 e!3578026)))

(declare-fun b!5831887 () Bool)

(assert (=> b!5831887 (= e!3578026 tp_is_empty!41027)))

(declare-fun b!5831890 () Bool)

(declare-fun tp!1611386 () Bool)

(declare-fun tp!1611385 () Bool)

(assert (=> b!5831890 (= e!3578026 (and tp!1611386 tp!1611385))))

(assert (= (and b!5831347 ((_ is ElementMatch!15887) (regOne!32287 (reg!16216 r!7292)))) b!5831887))

(assert (= (and b!5831347 ((_ is Concat!24732) (regOne!32287 (reg!16216 r!7292)))) b!5831888))

(assert (= (and b!5831347 ((_ is Star!15887) (regOne!32287 (reg!16216 r!7292)))) b!5831889))

(assert (= (and b!5831347 ((_ is Union!15887) (regOne!32287 (reg!16216 r!7292)))) b!5831890))

(declare-fun b!5831892 () Bool)

(declare-fun e!3578027 () Bool)

(declare-fun tp!1611389 () Bool)

(declare-fun tp!1611392 () Bool)

(assert (=> b!5831892 (= e!3578027 (and tp!1611389 tp!1611392))))

(declare-fun b!5831893 () Bool)

(declare-fun tp!1611388 () Bool)

(assert (=> b!5831893 (= e!3578027 tp!1611388)))

(assert (=> b!5831347 (= tp!1611110 e!3578027)))

(declare-fun b!5831891 () Bool)

(assert (=> b!5831891 (= e!3578027 tp_is_empty!41027)))

(declare-fun b!5831894 () Bool)

(declare-fun tp!1611391 () Bool)

(declare-fun tp!1611390 () Bool)

(assert (=> b!5831894 (= e!3578027 (and tp!1611391 tp!1611390))))

(assert (= (and b!5831347 ((_ is ElementMatch!15887) (regTwo!32287 (reg!16216 r!7292)))) b!5831891))

(assert (= (and b!5831347 ((_ is Concat!24732) (regTwo!32287 (reg!16216 r!7292)))) b!5831892))

(assert (= (and b!5831347 ((_ is Star!15887) (regTwo!32287 (reg!16216 r!7292)))) b!5831893))

(assert (= (and b!5831347 ((_ is Union!15887) (regTwo!32287 (reg!16216 r!7292)))) b!5831894))

(declare-fun condSetEmpty!39452 () Bool)

(assert (=> setNonEmpty!39450 (= condSetEmpty!39452 (= setRest!39450 ((as const (Array Context!10542 Bool)) false)))))

(declare-fun setRes!39452 () Bool)

(assert (=> setNonEmpty!39450 (= tp!1611117 setRes!39452)))

(declare-fun setIsEmpty!39452 () Bool)

(assert (=> setIsEmpty!39452 setRes!39452))

(declare-fun tp!1611393 () Bool)

(declare-fun e!3578028 () Bool)

(declare-fun setNonEmpty!39452 () Bool)

(declare-fun setElem!39452 () Context!10542)

(assert (=> setNonEmpty!39452 (= setRes!39452 (and tp!1611393 (inv!82964 setElem!39452) e!3578028))))

(declare-fun setRest!39452 () (InoxSet Context!10542))

(assert (=> setNonEmpty!39452 (= setRest!39450 ((_ map or) (store ((as const (Array Context!10542 Bool)) false) setElem!39452 true) setRest!39452))))

(declare-fun b!5831895 () Bool)

(declare-fun tp!1611394 () Bool)

(assert (=> b!5831895 (= e!3578028 tp!1611394)))

(assert (= (and setNonEmpty!39450 condSetEmpty!39452) setIsEmpty!39452))

(assert (= (and setNonEmpty!39450 (not condSetEmpty!39452)) setNonEmpty!39452))

(assert (= setNonEmpty!39452 b!5831895))

(declare-fun m!6761086 () Bool)

(assert (=> setNonEmpty!39452 m!6761086))

(declare-fun b!5831897 () Bool)

(declare-fun e!3578029 () Bool)

(declare-fun tp!1611396 () Bool)

(declare-fun tp!1611399 () Bool)

(assert (=> b!5831897 (= e!3578029 (and tp!1611396 tp!1611399))))

(declare-fun b!5831898 () Bool)

(declare-fun tp!1611395 () Bool)

(assert (=> b!5831898 (= e!3578029 tp!1611395)))

(assert (=> b!5831358 (= tp!1611125 e!3578029)))

(declare-fun b!5831896 () Bool)

(assert (=> b!5831896 (= e!3578029 tp_is_empty!41027)))

(declare-fun b!5831899 () Bool)

(declare-fun tp!1611398 () Bool)

(declare-fun tp!1611397 () Bool)

(assert (=> b!5831899 (= e!3578029 (and tp!1611398 tp!1611397))))

(assert (= (and b!5831358 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32286 r!7292)))) b!5831896))

(assert (= (and b!5831358 ((_ is Concat!24732) (regOne!32286 (regTwo!32286 r!7292)))) b!5831897))

(assert (= (and b!5831358 ((_ is Star!15887) (regOne!32286 (regTwo!32286 r!7292)))) b!5831898))

(assert (= (and b!5831358 ((_ is Union!15887) (regOne!32286 (regTwo!32286 r!7292)))) b!5831899))

(declare-fun b!5831901 () Bool)

(declare-fun e!3578030 () Bool)

(declare-fun tp!1611401 () Bool)

(declare-fun tp!1611404 () Bool)

(assert (=> b!5831901 (= e!3578030 (and tp!1611401 tp!1611404))))

(declare-fun b!5831902 () Bool)

(declare-fun tp!1611400 () Bool)

(assert (=> b!5831902 (= e!3578030 tp!1611400)))

(assert (=> b!5831358 (= tp!1611128 e!3578030)))

(declare-fun b!5831900 () Bool)

(assert (=> b!5831900 (= e!3578030 tp_is_empty!41027)))

(declare-fun b!5831903 () Bool)

(declare-fun tp!1611403 () Bool)

(declare-fun tp!1611402 () Bool)

(assert (=> b!5831903 (= e!3578030 (and tp!1611403 tp!1611402))))

(assert (= (and b!5831358 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32286 r!7292)))) b!5831900))

(assert (= (and b!5831358 ((_ is Concat!24732) (regTwo!32286 (regTwo!32286 r!7292)))) b!5831901))

(assert (= (and b!5831358 ((_ is Star!15887) (regTwo!32286 (regTwo!32286 r!7292)))) b!5831902))

(assert (= (and b!5831358 ((_ is Union!15887) (regTwo!32286 (regTwo!32286 r!7292)))) b!5831903))

(declare-fun b!5831904 () Bool)

(declare-fun e!3578031 () Bool)

(declare-fun tp!1611405 () Bool)

(declare-fun tp!1611406 () Bool)

(assert (=> b!5831904 (= e!3578031 (and tp!1611405 tp!1611406))))

(assert (=> b!5831352 (= tp!1611118 e!3578031)))

(assert (= (and b!5831352 ((_ is Cons!63836) (exprs!5771 setElem!39450))) b!5831904))

(declare-fun b!5831906 () Bool)

(declare-fun e!3578032 () Bool)

(declare-fun tp!1611408 () Bool)

(declare-fun tp!1611411 () Bool)

(assert (=> b!5831906 (= e!3578032 (and tp!1611408 tp!1611411))))

(declare-fun b!5831907 () Bool)

(declare-fun tp!1611407 () Bool)

(assert (=> b!5831907 (= e!3578032 tp!1611407)))

(assert (=> b!5831359 (= tp!1611124 e!3578032)))

(declare-fun b!5831905 () Bool)

(assert (=> b!5831905 (= e!3578032 tp_is_empty!41027)))

(declare-fun b!5831908 () Bool)

(declare-fun tp!1611410 () Bool)

(declare-fun tp!1611409 () Bool)

(assert (=> b!5831908 (= e!3578032 (and tp!1611410 tp!1611409))))

(assert (= (and b!5831359 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32286 r!7292)))) b!5831905))

(assert (= (and b!5831359 ((_ is Concat!24732) (reg!16216 (regTwo!32286 r!7292)))) b!5831906))

(assert (= (and b!5831359 ((_ is Star!15887) (reg!16216 (regTwo!32286 r!7292)))) b!5831907))

(assert (= (and b!5831359 ((_ is Union!15887) (reg!16216 (regTwo!32286 r!7292)))) b!5831908))

(declare-fun b!5831910 () Bool)

(declare-fun e!3578033 () Bool)

(declare-fun tp!1611413 () Bool)

(declare-fun tp!1611416 () Bool)

(assert (=> b!5831910 (= e!3578033 (and tp!1611413 tp!1611416))))

(declare-fun b!5831911 () Bool)

(declare-fun tp!1611412 () Bool)

(assert (=> b!5831911 (= e!3578033 tp!1611412)))

(assert (=> b!5831360 (= tp!1611127 e!3578033)))

(declare-fun b!5831909 () Bool)

(assert (=> b!5831909 (= e!3578033 tp_is_empty!41027)))

(declare-fun b!5831912 () Bool)

(declare-fun tp!1611415 () Bool)

(declare-fun tp!1611414 () Bool)

(assert (=> b!5831912 (= e!3578033 (and tp!1611415 tp!1611414))))

(assert (= (and b!5831360 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32286 r!7292)))) b!5831909))

(assert (= (and b!5831360 ((_ is Concat!24732) (regOne!32287 (regTwo!32286 r!7292)))) b!5831910))

(assert (= (and b!5831360 ((_ is Star!15887) (regOne!32287 (regTwo!32286 r!7292)))) b!5831911))

(assert (= (and b!5831360 ((_ is Union!15887) (regOne!32287 (regTwo!32286 r!7292)))) b!5831912))

(declare-fun b!5831914 () Bool)

(declare-fun e!3578034 () Bool)

(declare-fun tp!1611418 () Bool)

(declare-fun tp!1611421 () Bool)

(assert (=> b!5831914 (= e!3578034 (and tp!1611418 tp!1611421))))

(declare-fun b!5831915 () Bool)

(declare-fun tp!1611417 () Bool)

(assert (=> b!5831915 (= e!3578034 tp!1611417)))

(assert (=> b!5831360 (= tp!1611126 e!3578034)))

(declare-fun b!5831913 () Bool)

(assert (=> b!5831913 (= e!3578034 tp_is_empty!41027)))

(declare-fun b!5831916 () Bool)

(declare-fun tp!1611420 () Bool)

(declare-fun tp!1611419 () Bool)

(assert (=> b!5831916 (= e!3578034 (and tp!1611420 tp!1611419))))

(assert (= (and b!5831360 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32286 r!7292)))) b!5831913))

(assert (= (and b!5831360 ((_ is Concat!24732) (regTwo!32287 (regTwo!32286 r!7292)))) b!5831914))

(assert (= (and b!5831360 ((_ is Star!15887) (regTwo!32287 (regTwo!32286 r!7292)))) b!5831915))

(assert (= (and b!5831360 ((_ is Union!15887) (regTwo!32287 (regTwo!32286 r!7292)))) b!5831916))

(declare-fun b!5831918 () Bool)

(declare-fun e!3578035 () Bool)

(declare-fun tp!1611423 () Bool)

(declare-fun tp!1611426 () Bool)

(assert (=> b!5831918 (= e!3578035 (and tp!1611423 tp!1611426))))

(declare-fun b!5831919 () Bool)

(declare-fun tp!1611422 () Bool)

(assert (=> b!5831919 (= e!3578035 tp!1611422)))

(assert (=> b!5831337 (= tp!1611096 e!3578035)))

(declare-fun b!5831917 () Bool)

(assert (=> b!5831917 (= e!3578035 tp_is_empty!41027)))

(declare-fun b!5831920 () Bool)

(declare-fun tp!1611425 () Bool)

(declare-fun tp!1611424 () Bool)

(assert (=> b!5831920 (= e!3578035 (and tp!1611425 tp!1611424))))

(assert (= (and b!5831337 ((_ is ElementMatch!15887) (reg!16216 (regOne!32287 r!7292)))) b!5831917))

(assert (= (and b!5831337 ((_ is Concat!24732) (reg!16216 (regOne!32287 r!7292)))) b!5831918))

(assert (= (and b!5831337 ((_ is Star!15887) (reg!16216 (regOne!32287 r!7292)))) b!5831919))

(assert (= (and b!5831337 ((_ is Union!15887) (reg!16216 (regOne!32287 r!7292)))) b!5831920))

(declare-fun b!5831922 () Bool)

(declare-fun e!3578036 () Bool)

(declare-fun tp!1611428 () Bool)

(declare-fun tp!1611431 () Bool)

(assert (=> b!5831922 (= e!3578036 (and tp!1611428 tp!1611431))))

(declare-fun b!5831923 () Bool)

(declare-fun tp!1611427 () Bool)

(assert (=> b!5831923 (= e!3578036 tp!1611427)))

(assert (=> b!5831336 (= tp!1611097 e!3578036)))

(declare-fun b!5831921 () Bool)

(assert (=> b!5831921 (= e!3578036 tp_is_empty!41027)))

(declare-fun b!5831924 () Bool)

(declare-fun tp!1611430 () Bool)

(declare-fun tp!1611429 () Bool)

(assert (=> b!5831924 (= e!3578036 (and tp!1611430 tp!1611429))))

(assert (= (and b!5831336 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32287 r!7292)))) b!5831921))

(assert (= (and b!5831336 ((_ is Concat!24732) (regOne!32286 (regOne!32287 r!7292)))) b!5831922))

(assert (= (and b!5831336 ((_ is Star!15887) (regOne!32286 (regOne!32287 r!7292)))) b!5831923))

(assert (= (and b!5831336 ((_ is Union!15887) (regOne!32286 (regOne!32287 r!7292)))) b!5831924))

(declare-fun b!5831926 () Bool)

(declare-fun e!3578037 () Bool)

(declare-fun tp!1611433 () Bool)

(declare-fun tp!1611436 () Bool)

(assert (=> b!5831926 (= e!3578037 (and tp!1611433 tp!1611436))))

(declare-fun b!5831927 () Bool)

(declare-fun tp!1611432 () Bool)

(assert (=> b!5831927 (= e!3578037 tp!1611432)))

(assert (=> b!5831336 (= tp!1611100 e!3578037)))

(declare-fun b!5831925 () Bool)

(assert (=> b!5831925 (= e!3578037 tp_is_empty!41027)))

(declare-fun b!5831928 () Bool)

(declare-fun tp!1611435 () Bool)

(declare-fun tp!1611434 () Bool)

(assert (=> b!5831928 (= e!3578037 (and tp!1611435 tp!1611434))))

(assert (= (and b!5831336 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32287 r!7292)))) b!5831925))

(assert (= (and b!5831336 ((_ is Concat!24732) (regTwo!32286 (regOne!32287 r!7292)))) b!5831926))

(assert (= (and b!5831336 ((_ is Star!15887) (regTwo!32286 (regOne!32287 r!7292)))) b!5831927))

(assert (= (and b!5831336 ((_ is Union!15887) (regTwo!32286 (regOne!32287 r!7292)))) b!5831928))

(declare-fun b_lambda!219779 () Bool)

(assert (= b_lambda!219769 (or d!1833585 b_lambda!219779)))

(declare-fun bs!1374875 () Bool)

(declare-fun d!1833817 () Bool)

(assert (= bs!1374875 (and d!1833817 d!1833585)))

(assert (=> bs!1374875 (= (dynLambda!24974 lambda!319052 (h!70284 (unfocusZipperList!1308 zl!343))) (validRegex!7623 (h!70284 (unfocusZipperList!1308 zl!343))))))

(declare-fun m!6761088 () Bool)

(assert (=> bs!1374875 m!6761088))

(assert (=> b!5831658 d!1833817))

(declare-fun b_lambda!219781 () Bool)

(assert (= b_lambda!219773 (or d!1833609 b_lambda!219781)))

(declare-fun bs!1374876 () Bool)

(declare-fun d!1833819 () Bool)

(assert (= bs!1374876 (and d!1833819 d!1833609)))

(assert (=> bs!1374876 (= (dynLambda!24974 lambda!319055 (h!70284 lt!2302939)) (validRegex!7623 (h!70284 lt!2302939)))))

(declare-fun m!6761090 () Bool)

(assert (=> bs!1374876 m!6761090))

(assert (=> b!5831777 d!1833819))

(declare-fun b_lambda!219783 () Bool)

(assert (= b_lambda!219777 (or d!1833611 b_lambda!219783)))

(declare-fun bs!1374877 () Bool)

(declare-fun d!1833821 () Bool)

(assert (= bs!1374877 (and d!1833821 d!1833611)))

(assert (=> bs!1374877 (= (dynLambda!24974 lambda!319058 (h!70284 (exprs!5771 (h!70285 zl!343)))) (validRegex!7623 (h!70284 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun m!6761092 () Bool)

(assert (=> bs!1374877 m!6761092))

(assert (=> b!5831801 d!1833821))

(declare-fun b_lambda!219785 () Bool)

(assert (= b_lambda!219771 (or d!1833613 b_lambda!219785)))

(declare-fun bs!1374878 () Bool)

(declare-fun d!1833823 () Bool)

(assert (= bs!1374878 (and d!1833823 d!1833613)))

(assert (=> bs!1374878 (= (dynLambda!24974 lambda!319061 (h!70284 (exprs!5771 (h!70285 zl!343)))) (validRegex!7623 (h!70284 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> bs!1374878 m!6761092))

(assert (=> b!5831660 d!1833823))

(declare-fun b_lambda!219787 () Bool)

(assert (= b_lambda!219775 (or d!1833619 b_lambda!219787)))

(declare-fun bs!1374879 () Bool)

(declare-fun d!1833825 () Bool)

(assert (= bs!1374879 (and d!1833825 d!1833619)))

(assert (=> bs!1374879 (= (dynLambda!24974 lambda!319062 (h!70284 (exprs!5771 setElem!39444))) (validRegex!7623 (h!70284 (exprs!5771 setElem!39444))))))

(declare-fun m!6761094 () Bool)

(assert (=> bs!1374879 m!6761094))

(assert (=> b!5831779 d!1833825))

(check-sat (not bm!455433) (not b!5831844) (not b!5831895) (not b!5831675) (not b!5831666) (not b!5831832) (not b!5831722) (not b!5831820) (not b!5831667) (not b!5831853) (not b!5831645) (not b!5831715) (not b!5831845) (not b!5831858) (not bm!455449) (not b_lambda!219781) (not b!5831889) (not b!5831862) (not b!5831674) (not b!5831822) (not b!5831838) (not b!5831916) (not b_lambda!219779) (not b!5831812) (not bm!455428) (not b!5831831) (not b!5831908) (not b!5831836) (not bs!1374879) (not b!5831877) (not b!5831778) (not b!5831924) (not bm!455432) (not b!5831886) (not b!5831680) (not b!5831760) (not b!5831923) (not bm!455452) (not bm!455453) (not b!5831689) (not d!1833783) (not b!5831840) (not b!5831782) (not b_lambda!219787) (not b!5831881) (not bm!455427) (not b!5831860) (not b!5831823) (not b!5831919) (not b!5831857) tp_is_empty!41027 (not b!5831699) (not b!5831819) (not bs!1374876) (not b!5831780) (not b!5831659) (not bm!455437) (not b!5831912) (not b!5831918) (not bm!455451) (not b!5831903) (not bs!1374878) (not b!5831824) (not b_lambda!219785) (not bm!455436) (not d!1833781) (not b!5831850) (not b!5831911) (not b!5831791) (not b!5831902) (not b!5831827) (not d!1833741) (not b!5831874) (not d!1833813) (not b!5831898) (not b!5831926) (not b!5831802) (not bs!1374875) (not b!5831805) (not b!5831677) (not b!5831721) (not b!5831885) (not bm!455456) (not b!5831865) (not b!5831906) (not b!5831713) (not b!5831803) (not setNonEmpty!39452) (not b!5831872) (not b!5831806) (not b!5831826) (not bm!455429) (not b!5831829) (not b!5831763) (not b!5831899) (not b!5831876) (not bs!1374877) (not b!5831868) (not b!5831892) (not b!5831849) (not b!5831726) (not b!5831880) (not b!5831897) (not b!5831842) (not b!5831753) (not b!5831884) (not b!5831816) (not b_lambda!219783) (not b!5831890) (not b!5831718) (not b!5831765) (not bm!455430) (not b!5831856) (not b!5831854) (not d!1833745) (not b!5831661) (not b!5831869) (not b!5831894) (not b!5831808) (not b!5831828) (not b!5831848) (not b!5831676) (not bm!455435) (not b!5831716) (not b!5831915) (not b!5831928) (not d!1833735) (not d!1833761) (not b!5831835) (not d!1833797) (not bm!455457) (not b!5831927) (not b!5831762) (not b!5831852) (not b!5831888) (not bm!455447) (not d!1833751) (not b!5831878) (not b!5831901) (not b!5831846) (not b!5831841) (not b!5831758) (not b!5831893) (not b!5831818) (not b!5831864) (not d!1833801) (not b!5831861) (not b!5831833) (not b!5831866) (not b!5831768) (not b!5831764) (not b!5831922) (not b!5831837) (not b!5831804) (not d!1833775) (not b!5831821) (not b!5831792) (not b!5831907) (not b!5831870) (not b!5831690) (not b!5831914) (not b!5831882) (not b!5831814) (not bm!455454) (not b!5831904) (not b!5831920) (not b!5831807) (not b!5831873) (not b!5831815) (not b!5831910) (not d!1833777) (not b!5831761))
(check-sat)
(get-model)

(declare-fun b!5832842 () Bool)

(declare-fun e!3578447 () Bool)

(declare-fun e!3578443 () Bool)

(assert (=> b!5832842 (= e!3578447 e!3578443)))

(declare-fun res!2457940 () Bool)

(assert (=> b!5832842 (= res!2457940 (not (nullable!5889 (reg!16216 (h!70284 (exprs!5771 setElem!39444))))))))

(assert (=> b!5832842 (=> (not res!2457940) (not e!3578443))))

(declare-fun b!5832843 () Bool)

(declare-fun e!3578444 () Bool)

(declare-fun call!455548 () Bool)

(assert (=> b!5832843 (= e!3578444 call!455548)))

(declare-fun bm!455541 () Bool)

(declare-fun call!455546 () Bool)

(declare-fun call!455547 () Bool)

(assert (=> bm!455541 (= call!455546 call!455547)))

(declare-fun b!5832844 () Bool)

(assert (=> b!5832844 (= e!3578443 call!455547)))

(declare-fun b!5832845 () Bool)

(declare-fun e!3578441 () Bool)

(assert (=> b!5832845 (= e!3578441 e!3578444)))

(declare-fun res!2457943 () Bool)

(assert (=> b!5832845 (=> (not res!2457943) (not e!3578444))))

(assert (=> b!5832845 (= res!2457943 call!455546)))

(declare-fun b!5832846 () Bool)

(declare-fun res!2457941 () Bool)

(assert (=> b!5832846 (=> res!2457941 e!3578441)))

(assert (=> b!5832846 (= res!2457941 (not ((_ is Concat!24732) (h!70284 (exprs!5771 setElem!39444)))))))

(declare-fun e!3578442 () Bool)

(assert (=> b!5832846 (= e!3578442 e!3578441)))

(declare-fun b!5832847 () Bool)

(declare-fun res!2457942 () Bool)

(declare-fun e!3578446 () Bool)

(assert (=> b!5832847 (=> (not res!2457942) (not e!3578446))))

(assert (=> b!5832847 (= res!2457942 call!455546)))

(assert (=> b!5832847 (= e!3578442 e!3578446)))

(declare-fun d!1833997 () Bool)

(declare-fun res!2457944 () Bool)

(declare-fun e!3578445 () Bool)

(assert (=> d!1833997 (=> res!2457944 e!3578445)))

(assert (=> d!1833997 (= res!2457944 ((_ is ElementMatch!15887) (h!70284 (exprs!5771 setElem!39444))))))

(assert (=> d!1833997 (= (validRegex!7623 (h!70284 (exprs!5771 setElem!39444))) e!3578445)))

(declare-fun c!1033460 () Bool)

(declare-fun bm!455542 () Bool)

(declare-fun c!1033459 () Bool)

(assert (=> bm!455542 (= call!455547 (validRegex!7623 (ite c!1033459 (reg!16216 (h!70284 (exprs!5771 setElem!39444))) (ite c!1033460 (regOne!32287 (h!70284 (exprs!5771 setElem!39444))) (regOne!32286 (h!70284 (exprs!5771 setElem!39444)))))))))

(declare-fun bm!455543 () Bool)

(assert (=> bm!455543 (= call!455548 (validRegex!7623 (ite c!1033460 (regTwo!32287 (h!70284 (exprs!5771 setElem!39444))) (regTwo!32286 (h!70284 (exprs!5771 setElem!39444))))))))

(declare-fun b!5832848 () Bool)

(assert (=> b!5832848 (= e!3578447 e!3578442)))

(assert (=> b!5832848 (= c!1033460 ((_ is Union!15887) (h!70284 (exprs!5771 setElem!39444))))))

(declare-fun b!5832849 () Bool)

(assert (=> b!5832849 (= e!3578446 call!455548)))

(declare-fun b!5832850 () Bool)

(assert (=> b!5832850 (= e!3578445 e!3578447)))

(assert (=> b!5832850 (= c!1033459 ((_ is Star!15887) (h!70284 (exprs!5771 setElem!39444))))))

(assert (= (and d!1833997 (not res!2457944)) b!5832850))

(assert (= (and b!5832850 c!1033459) b!5832842))

(assert (= (and b!5832850 (not c!1033459)) b!5832848))

(assert (= (and b!5832842 res!2457940) b!5832844))

(assert (= (and b!5832848 c!1033460) b!5832847))

(assert (= (and b!5832848 (not c!1033460)) b!5832846))

(assert (= (and b!5832847 res!2457942) b!5832849))

(assert (= (and b!5832846 (not res!2457941)) b!5832845))

(assert (= (and b!5832845 res!2457943) b!5832843))

(assert (= (or b!5832849 b!5832843) bm!455543))

(assert (= (or b!5832847 b!5832845) bm!455541))

(assert (= (or b!5832844 bm!455541) bm!455542))

(declare-fun m!6761444 () Bool)

(assert (=> b!5832842 m!6761444))

(declare-fun m!6761446 () Bool)

(assert (=> bm!455542 m!6761446))

(declare-fun m!6761448 () Bool)

(assert (=> bm!455543 m!6761448))

(assert (=> bs!1374879 d!1833997))

(declare-fun bs!1375069 () Bool)

(declare-fun b!5832857 () Bool)

(assert (= bs!1375069 (and b!5832857 b!5831688)))

(declare-fun lambda!319102 () Int)

(assert (=> bs!1375069 (not (= lambda!319102 lambda!319081))))

(declare-fun bs!1375070 () Bool)

(assert (= bs!1375070 (and b!5832857 b!5831790)))

(assert (=> bs!1375070 (not (= lambda!319102 lambda!319085))))

(declare-fun bs!1375071 () Bool)

(assert (= bs!1375071 (and b!5832857 b!5831301)))

(assert (=> bs!1375071 (not (= lambda!319102 lambda!319068))))

(declare-fun bs!1375072 () Bool)

(assert (= bs!1375072 (and b!5832857 b!5831298)))

(assert (=> bs!1375072 (= (and (= (reg!16216 (regOne!32287 (regTwo!32287 r!7292))) (reg!16216 r!7292)) (= (regOne!32287 (regTwo!32287 r!7292)) r!7292)) (= lambda!319102 lambda!319067))))

(declare-fun bs!1375073 () Bool)

(assert (= bs!1375073 (and b!5832857 b!5831685)))

(assert (=> bs!1375073 (= (and (= (reg!16216 (regOne!32287 (regTwo!32287 r!7292))) (reg!16216 (regTwo!32287 r!7292))) (= (regOne!32287 (regTwo!32287 r!7292)) (regTwo!32287 r!7292))) (= lambda!319102 lambda!319080))))

(declare-fun bs!1375074 () Bool)

(assert (= bs!1375074 (and b!5832857 b!5831787)))

(assert (=> bs!1375074 (= (and (= (reg!16216 (regOne!32287 (regTwo!32287 r!7292))) (reg!16216 (regOne!32287 r!7292))) (= (regOne!32287 (regTwo!32287 r!7292)) (regOne!32287 r!7292))) (= lambda!319102 lambda!319084))))

(assert (=> b!5832857 true))

(assert (=> b!5832857 true))

(declare-fun bs!1375075 () Bool)

(declare-fun b!5832860 () Bool)

(assert (= bs!1375075 (and b!5832860 b!5832857)))

(declare-fun lambda!319103 () Int)

(assert (=> bs!1375075 (not (= lambda!319103 lambda!319102))))

(declare-fun bs!1375076 () Bool)

(assert (= bs!1375076 (and b!5832860 b!5831688)))

(assert (=> bs!1375076 (= (and (= (regOne!32286 (regOne!32287 (regTwo!32287 r!7292))) (regOne!32286 (regTwo!32287 r!7292))) (= (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))) (regTwo!32286 (regTwo!32287 r!7292)))) (= lambda!319103 lambda!319081))))

(declare-fun bs!1375077 () Bool)

(assert (= bs!1375077 (and b!5832860 b!5831790)))

(assert (=> bs!1375077 (= (and (= (regOne!32286 (regOne!32287 (regTwo!32287 r!7292))) (regOne!32286 (regOne!32287 r!7292))) (= (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))) (regTwo!32286 (regOne!32287 r!7292)))) (= lambda!319103 lambda!319085))))

(declare-fun bs!1375078 () Bool)

(assert (= bs!1375078 (and b!5832860 b!5831301)))

(assert (=> bs!1375078 (= (and (= (regOne!32286 (regOne!32287 (regTwo!32287 r!7292))) (regOne!32286 r!7292)) (= (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))) (regTwo!32286 r!7292))) (= lambda!319103 lambda!319068))))

(declare-fun bs!1375079 () Bool)

(assert (= bs!1375079 (and b!5832860 b!5831298)))

(assert (=> bs!1375079 (not (= lambda!319103 lambda!319067))))

(declare-fun bs!1375080 () Bool)

(assert (= bs!1375080 (and b!5832860 b!5831685)))

(assert (=> bs!1375080 (not (= lambda!319103 lambda!319080))))

(declare-fun bs!1375081 () Bool)

(assert (= bs!1375081 (and b!5832860 b!5831787)))

(assert (=> bs!1375081 (not (= lambda!319103 lambda!319084))))

(assert (=> b!5832860 true))

(assert (=> b!5832860 true))

(declare-fun c!1033464 () Bool)

(declare-fun bm!455544 () Bool)

(declare-fun call!455549 () Bool)

(assert (=> bm!455544 (= call!455549 (Exists!2964 (ite c!1033464 lambda!319102 lambda!319103)))))

(declare-fun b!5832851 () Bool)

(declare-fun e!3578450 () Bool)

(declare-fun e!3578448 () Bool)

(assert (=> b!5832851 (= e!3578450 e!3578448)))

(declare-fun res!2457946 () Bool)

(assert (=> b!5832851 (= res!2457946 (not ((_ is EmptyLang!15887) (regOne!32287 (regTwo!32287 r!7292)))))))

(assert (=> b!5832851 (=> (not res!2457946) (not e!3578448))))

(declare-fun b!5832852 () Bool)

(declare-fun e!3578453 () Bool)

(declare-fun e!3578454 () Bool)

(assert (=> b!5832852 (= e!3578453 e!3578454)))

(declare-fun res!2457947 () Bool)

(assert (=> b!5832852 (= res!2457947 (matchRSpec!2988 (regOne!32287 (regOne!32287 (regTwo!32287 r!7292))) s!2326))))

(assert (=> b!5832852 (=> res!2457947 e!3578454)))

(declare-fun b!5832853 () Bool)

(declare-fun e!3578452 () Bool)

(assert (=> b!5832853 (= e!3578453 e!3578452)))

(assert (=> b!5832853 (= c!1033464 ((_ is Star!15887) (regOne!32287 (regTwo!32287 r!7292))))))

(declare-fun b!5832854 () Bool)

(declare-fun call!455550 () Bool)

(assert (=> b!5832854 (= e!3578450 call!455550)))

(declare-fun b!5832855 () Bool)

(declare-fun c!1033461 () Bool)

(assert (=> b!5832855 (= c!1033461 ((_ is Union!15887) (regOne!32287 (regTwo!32287 r!7292))))))

(declare-fun e!3578451 () Bool)

(assert (=> b!5832855 (= e!3578451 e!3578453)))

(declare-fun b!5832856 () Bool)

(assert (=> b!5832856 (= e!3578451 (= s!2326 (Cons!63838 (c!1033165 (regOne!32287 (regTwo!32287 r!7292))) Nil!63838)))))

(declare-fun d!1833999 () Bool)

(declare-fun c!1033463 () Bool)

(assert (=> d!1833999 (= c!1033463 ((_ is EmptyExpr!15887) (regOne!32287 (regTwo!32287 r!7292))))))

(assert (=> d!1833999 (= (matchRSpec!2988 (regOne!32287 (regTwo!32287 r!7292)) s!2326) e!3578450)))

(declare-fun e!3578449 () Bool)

(assert (=> b!5832857 (= e!3578449 call!455549)))

(declare-fun b!5832858 () Bool)

(declare-fun c!1033462 () Bool)

(assert (=> b!5832858 (= c!1033462 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32287 r!7292))))))

(assert (=> b!5832858 (= e!3578448 e!3578451)))

(declare-fun b!5832859 () Bool)

(declare-fun res!2457945 () Bool)

(assert (=> b!5832859 (=> res!2457945 e!3578449)))

(assert (=> b!5832859 (= res!2457945 call!455550)))

(assert (=> b!5832859 (= e!3578452 e!3578449)))

(assert (=> b!5832860 (= e!3578452 call!455549)))

(declare-fun bm!455545 () Bool)

(assert (=> bm!455545 (= call!455550 (isEmpty!35706 s!2326))))

(declare-fun b!5832861 () Bool)

(assert (=> b!5832861 (= e!3578454 (matchRSpec!2988 (regTwo!32287 (regOne!32287 (regTwo!32287 r!7292))) s!2326))))

(assert (= (and d!1833999 c!1033463) b!5832854))

(assert (= (and d!1833999 (not c!1033463)) b!5832851))

(assert (= (and b!5832851 res!2457946) b!5832858))

(assert (= (and b!5832858 c!1033462) b!5832856))

(assert (= (and b!5832858 (not c!1033462)) b!5832855))

(assert (= (and b!5832855 c!1033461) b!5832852))

(assert (= (and b!5832855 (not c!1033461)) b!5832853))

(assert (= (and b!5832852 (not res!2457947)) b!5832861))

(assert (= (and b!5832853 c!1033464) b!5832859))

(assert (= (and b!5832853 (not c!1033464)) b!5832860))

(assert (= (and b!5832859 (not res!2457945)) b!5832857))

(assert (= (or b!5832857 b!5832860) bm!455544))

(assert (= (or b!5832854 b!5832859) bm!455545))

(declare-fun m!6761450 () Bool)

(assert (=> bm!455544 m!6761450))

(declare-fun m!6761452 () Bool)

(assert (=> b!5832852 m!6761452))

(assert (=> bm!455545 m!6760744))

(declare-fun m!6761454 () Bool)

(assert (=> b!5832861 m!6761454))

(assert (=> b!5831680 d!1833999))

(declare-fun bs!1375082 () Bool)

(declare-fun d!1834001 () Bool)

(assert (= bs!1375082 (and d!1834001 d!1833613)))

(declare-fun lambda!319104 () Int)

(assert (=> bs!1375082 (= lambda!319104 lambda!319061)))

(declare-fun bs!1375083 () Bool)

(assert (= bs!1375083 (and d!1834001 d!1833797)))

(assert (=> bs!1375083 (= lambda!319104 lambda!319083)))

(declare-fun bs!1375084 () Bool)

(assert (= bs!1375084 (and d!1834001 d!1833813)))

(assert (=> bs!1375084 (= lambda!319104 lambda!319086)))

(declare-fun bs!1375085 () Bool)

(assert (= bs!1375085 (and d!1834001 d!1833585)))

(assert (=> bs!1375085 (= lambda!319104 lambda!319052)))

(declare-fun bs!1375086 () Bool)

(assert (= bs!1375086 (and d!1834001 d!1833611)))

(assert (=> bs!1375086 (= lambda!319104 lambda!319058)))

(declare-fun bs!1375087 () Bool)

(assert (= bs!1375087 (and d!1834001 d!1833783)))

(assert (=> bs!1375087 (= lambda!319104 lambda!319082)))

(declare-fun bs!1375088 () Bool)

(assert (= bs!1375088 (and d!1834001 d!1833609)))

(assert (=> bs!1375088 (= lambda!319104 lambda!319055)))

(declare-fun bs!1375089 () Bool)

(assert (= bs!1375089 (and d!1834001 d!1833761)))

(assert (=> bs!1375089 (= lambda!319104 lambda!319079)))

(declare-fun bs!1375090 () Bool)

(assert (= bs!1375090 (and d!1834001 d!1833619)))

(assert (=> bs!1375090 (= lambda!319104 lambda!319062)))

(declare-fun bs!1375091 () Bool)

(assert (= bs!1375091 (and d!1834001 d!1833741)))

(assert (=> bs!1375091 (= lambda!319104 lambda!319078)))

(assert (=> d!1834001 (= (inv!82964 (h!70285 res!2457726)) (forall!14978 (exprs!5771 (h!70285 res!2457726)) lambda!319104))))

(declare-fun bs!1375092 () Bool)

(assert (= bs!1375092 d!1834001))

(declare-fun m!6761456 () Bool)

(assert (=> bs!1375092 m!6761456))

(assert (=> b!5831674 d!1834001))

(assert (=> d!1833735 d!1833623))

(assert (=> d!1833735 d!1833625))

(assert (=> bm!455437 d!1833753))

(declare-fun d!1834003 () Bool)

(assert (=> d!1834003 (= (nullable!5889 (reg!16216 lt!2302936)) (nullableFct!1890 (reg!16216 lt!2302936)))))

(declare-fun bs!1375093 () Bool)

(assert (= bs!1375093 d!1834003))

(declare-fun m!6761458 () Bool)

(assert (=> bs!1375093 m!6761458))

(assert (=> b!5831645 d!1834003))

(declare-fun d!1834005 () Bool)

(declare-fun res!2457948 () Bool)

(declare-fun e!3578455 () Bool)

(assert (=> d!1834005 (=> res!2457948 e!3578455)))

(assert (=> d!1834005 (= res!2457948 ((_ is Nil!63836) (t!377315 (exprs!5771 setElem!39444))))))

(assert (=> d!1834005 (= (forall!14978 (t!377315 (exprs!5771 setElem!39444)) lambda!319062) e!3578455)))

(declare-fun b!5832862 () Bool)

(declare-fun e!3578456 () Bool)

(assert (=> b!5832862 (= e!3578455 e!3578456)))

(declare-fun res!2457949 () Bool)

(assert (=> b!5832862 (=> (not res!2457949) (not e!3578456))))

(assert (=> b!5832862 (= res!2457949 (dynLambda!24974 lambda!319062 (h!70284 (t!377315 (exprs!5771 setElem!39444)))))))

(declare-fun b!5832863 () Bool)

(assert (=> b!5832863 (= e!3578456 (forall!14978 (t!377315 (t!377315 (exprs!5771 setElem!39444))) lambda!319062))))

(assert (= (and d!1834005 (not res!2457948)) b!5832862))

(assert (= (and b!5832862 res!2457949) b!5832863))

(declare-fun b_lambda!219829 () Bool)

(assert (=> (not b_lambda!219829) (not b!5832862)))

(declare-fun m!6761460 () Bool)

(assert (=> b!5832862 m!6761460))

(declare-fun m!6761462 () Bool)

(assert (=> b!5832863 m!6761462))

(assert (=> b!5831780 d!1834005))

(assert (=> d!1833775 d!1833753))

(declare-fun b!5832864 () Bool)

(declare-fun e!3578463 () Bool)

(declare-fun e!3578459 () Bool)

(assert (=> b!5832864 (= e!3578463 e!3578459)))

(declare-fun res!2457950 () Bool)

(assert (=> b!5832864 (= res!2457950 (not (nullable!5889 (reg!16216 (derivativeStep!4629 r!7292 (head!12337 s!2326))))))))

(assert (=> b!5832864 (=> (not res!2457950) (not e!3578459))))

(declare-fun b!5832865 () Bool)

(declare-fun e!3578460 () Bool)

(declare-fun call!455553 () Bool)

(assert (=> b!5832865 (= e!3578460 call!455553)))

(declare-fun bm!455546 () Bool)

(declare-fun call!455551 () Bool)

(declare-fun call!455552 () Bool)

(assert (=> bm!455546 (= call!455551 call!455552)))

(declare-fun b!5832866 () Bool)

(assert (=> b!5832866 (= e!3578459 call!455552)))

(declare-fun b!5832867 () Bool)

(declare-fun e!3578457 () Bool)

(assert (=> b!5832867 (= e!3578457 e!3578460)))

(declare-fun res!2457953 () Bool)

(assert (=> b!5832867 (=> (not res!2457953) (not e!3578460))))

(assert (=> b!5832867 (= res!2457953 call!455551)))

(declare-fun b!5832868 () Bool)

(declare-fun res!2457951 () Bool)

(assert (=> b!5832868 (=> res!2457951 e!3578457)))

(assert (=> b!5832868 (= res!2457951 (not ((_ is Concat!24732) (derivativeStep!4629 r!7292 (head!12337 s!2326)))))))

(declare-fun e!3578458 () Bool)

(assert (=> b!5832868 (= e!3578458 e!3578457)))

(declare-fun b!5832869 () Bool)

(declare-fun res!2457952 () Bool)

(declare-fun e!3578462 () Bool)

(assert (=> b!5832869 (=> (not res!2457952) (not e!3578462))))

(assert (=> b!5832869 (= res!2457952 call!455551)))

(assert (=> b!5832869 (= e!3578458 e!3578462)))

(declare-fun d!1834007 () Bool)

(declare-fun res!2457954 () Bool)

(declare-fun e!3578461 () Bool)

(assert (=> d!1834007 (=> res!2457954 e!3578461)))

(assert (=> d!1834007 (= res!2457954 ((_ is ElementMatch!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(assert (=> d!1834007 (= (validRegex!7623 (derivativeStep!4629 r!7292 (head!12337 s!2326))) e!3578461)))

(declare-fun c!1033466 () Bool)

(declare-fun bm!455547 () Bool)

(declare-fun c!1033465 () Bool)

(assert (=> bm!455547 (= call!455552 (validRegex!7623 (ite c!1033465 (reg!16216 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (ite c!1033466 (regOne!32287 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (regOne!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326)))))))))

(declare-fun bm!455548 () Bool)

(assert (=> bm!455548 (= call!455553 (validRegex!7623 (ite c!1033466 (regTwo!32287 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (regTwo!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326))))))))

(declare-fun b!5832870 () Bool)

(assert (=> b!5832870 (= e!3578463 e!3578458)))

(assert (=> b!5832870 (= c!1033466 ((_ is Union!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(declare-fun b!5832871 () Bool)

(assert (=> b!5832871 (= e!3578462 call!455553)))

(declare-fun b!5832872 () Bool)

(assert (=> b!5832872 (= e!3578461 e!3578463)))

(assert (=> b!5832872 (= c!1033465 ((_ is Star!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(assert (= (and d!1834007 (not res!2457954)) b!5832872))

(assert (= (and b!5832872 c!1033465) b!5832864))

(assert (= (and b!5832872 (not c!1033465)) b!5832870))

(assert (= (and b!5832864 res!2457950) b!5832866))

(assert (= (and b!5832870 c!1033466) b!5832869))

(assert (= (and b!5832870 (not c!1033466)) b!5832868))

(assert (= (and b!5832869 res!2457952) b!5832871))

(assert (= (and b!5832868 (not res!2457951)) b!5832867))

(assert (= (and b!5832867 res!2457953) b!5832865))

(assert (= (or b!5832871 b!5832865) bm!455548))

(assert (= (or b!5832869 b!5832867) bm!455546))

(assert (= (or b!5832866 bm!455546) bm!455547))

(declare-fun m!6761464 () Bool)

(assert (=> b!5832864 m!6761464))

(declare-fun m!6761466 () Bool)

(assert (=> bm!455547 m!6761466))

(declare-fun m!6761468 () Bool)

(assert (=> bm!455548 m!6761468))

(assert (=> d!1833775 d!1834007))

(declare-fun d!1834009 () Bool)

(declare-fun c!1033467 () Bool)

(assert (=> d!1834009 (= c!1033467 ((_ is Nil!63837) res!2457726))))

(declare-fun e!3578464 () (InoxSet Context!10542))

(assert (=> d!1834009 (= (content!11722 res!2457726) e!3578464)))

(declare-fun b!5832873 () Bool)

(assert (=> b!5832873 (= e!3578464 ((as const (Array Context!10542 Bool)) false))))

(declare-fun b!5832874 () Bool)

(assert (=> b!5832874 (= e!3578464 ((_ map or) (store ((as const (Array Context!10542 Bool)) false) (h!70285 res!2457726) true) (content!11722 (t!377316 res!2457726))))))

(assert (= (and d!1834009 c!1033467) b!5832873))

(assert (= (and d!1834009 (not c!1033467)) b!5832874))

(declare-fun m!6761470 () Bool)

(assert (=> b!5832874 m!6761470))

(declare-fun m!6761472 () Bool)

(assert (=> b!5832874 m!6761472))

(assert (=> b!5831676 d!1834009))

(declare-fun b!5832875 () Bool)

(declare-fun e!3578471 () Bool)

(declare-fun e!3578467 () Bool)

(assert (=> b!5832875 (= e!3578471 e!3578467)))

(declare-fun res!2457955 () Bool)

(assert (=> b!5832875 (= res!2457955 (not (nullable!5889 (reg!16216 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))))

(assert (=> b!5832875 (=> (not res!2457955) (not e!3578467))))

(declare-fun b!5832876 () Bool)

(declare-fun e!3578468 () Bool)

(declare-fun call!455556 () Bool)

(assert (=> b!5832876 (= e!3578468 call!455556)))

(declare-fun bm!455549 () Bool)

(declare-fun call!455554 () Bool)

(declare-fun call!455555 () Bool)

(assert (=> bm!455549 (= call!455554 call!455555)))

(declare-fun b!5832877 () Bool)

(assert (=> b!5832877 (= e!3578467 call!455555)))

(declare-fun b!5832878 () Bool)

(declare-fun e!3578465 () Bool)

(assert (=> b!5832878 (= e!3578465 e!3578468)))

(declare-fun res!2457958 () Bool)

(assert (=> b!5832878 (=> (not res!2457958) (not e!3578468))))

(assert (=> b!5832878 (= res!2457958 call!455554)))

(declare-fun b!5832879 () Bool)

(declare-fun res!2457956 () Bool)

(assert (=> b!5832879 (=> res!2457956 e!3578465)))

(assert (=> b!5832879 (= res!2457956 (not ((_ is Concat!24732) (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))

(declare-fun e!3578466 () Bool)

(assert (=> b!5832879 (= e!3578466 e!3578465)))

(declare-fun b!5832880 () Bool)

(declare-fun res!2457957 () Bool)

(declare-fun e!3578470 () Bool)

(assert (=> b!5832880 (=> (not res!2457957) (not e!3578470))))

(assert (=> b!5832880 (= res!2457957 call!455554)))

(assert (=> b!5832880 (= e!3578466 e!3578470)))

(declare-fun d!1834011 () Bool)

(declare-fun res!2457959 () Bool)

(declare-fun e!3578469 () Bool)

(assert (=> d!1834011 (=> res!2457959 e!3578469)))

(assert (=> d!1834011 (= res!2457959 ((_ is ElementMatch!15887) (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))

(assert (=> d!1834011 (= (validRegex!7623 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))) e!3578469)))

(declare-fun bm!455550 () Bool)

(declare-fun c!1033468 () Bool)

(declare-fun c!1033469 () Bool)

(assert (=> bm!455550 (= call!455555 (validRegex!7623 (ite c!1033468 (reg!16216 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))) (ite c!1033469 (regOne!32287 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))) (regOne!32286 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))))

(declare-fun bm!455551 () Bool)

(assert (=> bm!455551 (= call!455556 (validRegex!7623 (ite c!1033469 (regTwo!32287 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))) (regTwo!32286 (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))))

(declare-fun b!5832881 () Bool)

(assert (=> b!5832881 (= e!3578471 e!3578466)))

(assert (=> b!5832881 (= c!1033469 ((_ is Union!15887) (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))

(declare-fun b!5832882 () Bool)

(assert (=> b!5832882 (= e!3578470 call!455556)))

(declare-fun b!5832883 () Bool)

(assert (=> b!5832883 (= e!3578469 e!3578471)))

(assert (=> b!5832883 (= c!1033468 ((_ is Star!15887) (ite c!1033332 (regTwo!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regTwo!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))

(assert (= (and d!1834011 (not res!2457959)) b!5832883))

(assert (= (and b!5832883 c!1033468) b!5832875))

(assert (= (and b!5832883 (not c!1033468)) b!5832881))

(assert (= (and b!5832875 res!2457955) b!5832877))

(assert (= (and b!5832881 c!1033469) b!5832880))

(assert (= (and b!5832881 (not c!1033469)) b!5832879))

(assert (= (and b!5832880 res!2457957) b!5832882))

(assert (= (and b!5832879 (not res!2457956)) b!5832878))

(assert (= (and b!5832878 res!2457958) b!5832876))

(assert (= (or b!5832882 b!5832876) bm!455551))

(assert (= (or b!5832880 b!5832878) bm!455549))

(assert (= (or b!5832877 bm!455549) bm!455550))

(declare-fun m!6761474 () Bool)

(assert (=> b!5832875 m!6761474))

(declare-fun m!6761476 () Bool)

(assert (=> bm!455550 m!6761476))

(declare-fun m!6761478 () Bool)

(assert (=> bm!455551 m!6761478))

(assert (=> bm!455436 d!1834011))

(declare-fun d!1834013 () Bool)

(assert (=> d!1834013 (= (isEmpty!35706 (tail!11422 (tail!11422 s!2326))) ((_ is Nil!63838) (tail!11422 (tail!11422 s!2326))))))

(assert (=> b!5831715 d!1834013))

(declare-fun d!1834015 () Bool)

(assert (=> d!1834015 (= (tail!11422 (tail!11422 s!2326)) (t!377317 (tail!11422 s!2326)))))

(assert (=> b!5831715 d!1834015))

(declare-fun d!1834017 () Bool)

(assert (=> d!1834017 (= (isEmpty!35705 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))) ((_ is Nil!63836) (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(assert (=> b!5831803 d!1834017))

(assert (=> b!5831726 d!1834013))

(assert (=> b!5831726 d!1834015))

(declare-fun b!5832884 () Bool)

(declare-fun e!3578478 () Bool)

(declare-fun e!3578474 () Bool)

(assert (=> b!5832884 (= e!3578478 e!3578474)))

(declare-fun res!2457960 () Bool)

(assert (=> b!5832884 (= res!2457960 (not (nullable!5889 (reg!16216 lt!2302967))))))

(assert (=> b!5832884 (=> (not res!2457960) (not e!3578474))))

(declare-fun b!5832885 () Bool)

(declare-fun e!3578475 () Bool)

(declare-fun call!455559 () Bool)

(assert (=> b!5832885 (= e!3578475 call!455559)))

(declare-fun bm!455552 () Bool)

(declare-fun call!455557 () Bool)

(declare-fun call!455558 () Bool)

(assert (=> bm!455552 (= call!455557 call!455558)))

(declare-fun b!5832886 () Bool)

(assert (=> b!5832886 (= e!3578474 call!455558)))

(declare-fun b!5832887 () Bool)

(declare-fun e!3578472 () Bool)

(assert (=> b!5832887 (= e!3578472 e!3578475)))

(declare-fun res!2457963 () Bool)

(assert (=> b!5832887 (=> (not res!2457963) (not e!3578475))))

(assert (=> b!5832887 (= res!2457963 call!455557)))

(declare-fun b!5832888 () Bool)

(declare-fun res!2457961 () Bool)

(assert (=> b!5832888 (=> res!2457961 e!3578472)))

(assert (=> b!5832888 (= res!2457961 (not ((_ is Concat!24732) lt!2302967)))))

(declare-fun e!3578473 () Bool)

(assert (=> b!5832888 (= e!3578473 e!3578472)))

(declare-fun b!5832889 () Bool)

(declare-fun res!2457962 () Bool)

(declare-fun e!3578477 () Bool)

(assert (=> b!5832889 (=> (not res!2457962) (not e!3578477))))

(assert (=> b!5832889 (= res!2457962 call!455557)))

(assert (=> b!5832889 (= e!3578473 e!3578477)))

(declare-fun d!1834019 () Bool)

(declare-fun res!2457964 () Bool)

(declare-fun e!3578476 () Bool)

(assert (=> d!1834019 (=> res!2457964 e!3578476)))

(assert (=> d!1834019 (= res!2457964 ((_ is ElementMatch!15887) lt!2302967))))

(assert (=> d!1834019 (= (validRegex!7623 lt!2302967) e!3578476)))

(declare-fun c!1033470 () Bool)

(declare-fun bm!455553 () Bool)

(declare-fun c!1033471 () Bool)

(assert (=> bm!455553 (= call!455558 (validRegex!7623 (ite c!1033470 (reg!16216 lt!2302967) (ite c!1033471 (regOne!32287 lt!2302967) (regOne!32286 lt!2302967)))))))

(declare-fun bm!455554 () Bool)

(assert (=> bm!455554 (= call!455559 (validRegex!7623 (ite c!1033471 (regTwo!32287 lt!2302967) (regTwo!32286 lt!2302967))))))

(declare-fun b!5832890 () Bool)

(assert (=> b!5832890 (= e!3578478 e!3578473)))

(assert (=> b!5832890 (= c!1033471 ((_ is Union!15887) lt!2302967))))

(declare-fun b!5832891 () Bool)

(assert (=> b!5832891 (= e!3578477 call!455559)))

(declare-fun b!5832892 () Bool)

(assert (=> b!5832892 (= e!3578476 e!3578478)))

(assert (=> b!5832892 (= c!1033470 ((_ is Star!15887) lt!2302967))))

(assert (= (and d!1834019 (not res!2457964)) b!5832892))

(assert (= (and b!5832892 c!1033470) b!5832884))

(assert (= (and b!5832892 (not c!1033470)) b!5832890))

(assert (= (and b!5832884 res!2457960) b!5832886))

(assert (= (and b!5832890 c!1033471) b!5832889))

(assert (= (and b!5832890 (not c!1033471)) b!5832888))

(assert (= (and b!5832889 res!2457962) b!5832891))

(assert (= (and b!5832888 (not res!2457961)) b!5832887))

(assert (= (and b!5832887 res!2457963) b!5832885))

(assert (= (or b!5832891 b!5832885) bm!455554))

(assert (= (or b!5832889 b!5832887) bm!455552))

(assert (= (or b!5832886 bm!455552) bm!455553))

(declare-fun m!6761480 () Bool)

(assert (=> b!5832884 m!6761480))

(declare-fun m!6761482 () Bool)

(assert (=> bm!455553 m!6761482))

(declare-fun m!6761484 () Bool)

(assert (=> bm!455554 m!6761484))

(assert (=> d!1833783 d!1834019))

(declare-fun d!1834021 () Bool)

(declare-fun res!2457965 () Bool)

(declare-fun e!3578479 () Bool)

(assert (=> d!1834021 (=> res!2457965 e!3578479)))

(assert (=> d!1834021 (= res!2457965 ((_ is Nil!63836) (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> d!1834021 (= (forall!14978 (t!377315 (exprs!5771 (h!70285 zl!343))) lambda!319082) e!3578479)))

(declare-fun b!5832893 () Bool)

(declare-fun e!3578480 () Bool)

(assert (=> b!5832893 (= e!3578479 e!3578480)))

(declare-fun res!2457966 () Bool)

(assert (=> b!5832893 (=> (not res!2457966) (not e!3578480))))

(assert (=> b!5832893 (= res!2457966 (dynLambda!24974 lambda!319082 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5832894 () Bool)

(assert (=> b!5832894 (= e!3578480 (forall!14978 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))) lambda!319082))))

(assert (= (and d!1834021 (not res!2457965)) b!5832893))

(assert (= (and b!5832893 res!2457966) b!5832894))

(declare-fun b_lambda!219831 () Bool)

(assert (=> (not b_lambda!219831) (not b!5832893)))

(declare-fun m!6761486 () Bool)

(assert (=> b!5832893 m!6761486))

(declare-fun m!6761488 () Bool)

(assert (=> b!5832894 m!6761488))

(assert (=> d!1833783 d!1834021))

(declare-fun bm!455559 () Bool)

(declare-fun call!455565 () Bool)

(declare-fun c!1033474 () Bool)

(assert (=> bm!455559 (= call!455565 (nullable!5889 (ite c!1033474 (regOne!32287 r!7292) (regOne!32286 r!7292))))))

(declare-fun b!5832909 () Bool)

(declare-fun e!3578497 () Bool)

(declare-fun e!3578498 () Bool)

(assert (=> b!5832909 (= e!3578497 e!3578498)))

(declare-fun res!2457977 () Bool)

(assert (=> b!5832909 (=> res!2457977 e!3578498)))

(assert (=> b!5832909 (= res!2457977 ((_ is Star!15887) r!7292))))

(declare-fun b!5832910 () Bool)

(declare-fun e!3578493 () Bool)

(declare-fun e!3578495 () Bool)

(assert (=> b!5832910 (= e!3578493 e!3578495)))

(declare-fun res!2457978 () Bool)

(assert (=> b!5832910 (= res!2457978 call!455565)))

(assert (=> b!5832910 (=> (not res!2457978) (not e!3578495))))

(declare-fun b!5832911 () Bool)

(assert (=> b!5832911 (= e!3578498 e!3578493)))

(assert (=> b!5832911 (= c!1033474 ((_ is Union!15887) r!7292))))

(declare-fun bm!455560 () Bool)

(declare-fun call!455564 () Bool)

(assert (=> bm!455560 (= call!455564 (nullable!5889 (ite c!1033474 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))

(declare-fun b!5832913 () Bool)

(declare-fun e!3578494 () Bool)

(assert (=> b!5832913 (= e!3578494 e!3578497)))

(declare-fun res!2457980 () Bool)

(assert (=> b!5832913 (=> (not res!2457980) (not e!3578497))))

(assert (=> b!5832913 (= res!2457980 (and (not ((_ is EmptyLang!15887) r!7292)) (not ((_ is ElementMatch!15887) r!7292))))))

(declare-fun b!5832912 () Bool)

(declare-fun e!3578496 () Bool)

(assert (=> b!5832912 (= e!3578496 call!455564)))

(declare-fun d!1834023 () Bool)

(declare-fun res!2457979 () Bool)

(assert (=> d!1834023 (=> res!2457979 e!3578494)))

(assert (=> d!1834023 (= res!2457979 ((_ is EmptyExpr!15887) r!7292))))

(assert (=> d!1834023 (= (nullableFct!1890 r!7292) e!3578494)))

(declare-fun b!5832914 () Bool)

(assert (=> b!5832914 (= e!3578493 e!3578496)))

(declare-fun res!2457981 () Bool)

(assert (=> b!5832914 (= res!2457981 call!455565)))

(assert (=> b!5832914 (=> res!2457981 e!3578496)))

(declare-fun b!5832915 () Bool)

(assert (=> b!5832915 (= e!3578495 call!455564)))

(assert (= (and d!1834023 (not res!2457979)) b!5832913))

(assert (= (and b!5832913 res!2457980) b!5832909))

(assert (= (and b!5832909 (not res!2457977)) b!5832911))

(assert (= (and b!5832911 c!1033474) b!5832914))

(assert (= (and b!5832911 (not c!1033474)) b!5832910))

(assert (= (and b!5832914 (not res!2457981)) b!5832912))

(assert (= (and b!5832910 res!2457978) b!5832915))

(assert (= (or b!5832912 b!5832915) bm!455560))

(assert (= (or b!5832914 b!5832910) bm!455559))

(declare-fun m!6761490 () Bool)

(assert (=> bm!455559 m!6761490))

(declare-fun m!6761492 () Bool)

(assert (=> bm!455560 m!6761492))

(assert (=> d!1833745 d!1834023))

(declare-fun d!1834025 () Bool)

(assert (=> d!1834025 (= (nullable!5889 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))) (nullableFct!1890 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))

(declare-fun bs!1375094 () Bool)

(assert (= bs!1375094 d!1834025))

(declare-fun m!6761494 () Bool)

(assert (=> bs!1375094 m!6761494))

(assert (=> b!5831699 d!1834025))

(declare-fun bs!1375095 () Bool)

(declare-fun b!5832922 () Bool)

(assert (= bs!1375095 (and b!5832922 b!5832857)))

(declare-fun lambda!319105 () Int)

(assert (=> bs!1375095 (= (and (= (reg!16216 (regOne!32287 (regOne!32287 r!7292))) (reg!16216 (regOne!32287 (regTwo!32287 r!7292)))) (= (regOne!32287 (regOne!32287 r!7292)) (regOne!32287 (regTwo!32287 r!7292)))) (= lambda!319105 lambda!319102))))

(declare-fun bs!1375096 () Bool)

(assert (= bs!1375096 (and b!5832922 b!5831688)))

(assert (=> bs!1375096 (not (= lambda!319105 lambda!319081))))

(declare-fun bs!1375097 () Bool)

(assert (= bs!1375097 (and b!5832922 b!5832860)))

(assert (=> bs!1375097 (not (= lambda!319105 lambda!319103))))

(declare-fun bs!1375098 () Bool)

(assert (= bs!1375098 (and b!5832922 b!5831790)))

(assert (=> bs!1375098 (not (= lambda!319105 lambda!319085))))

(declare-fun bs!1375099 () Bool)

(assert (= bs!1375099 (and b!5832922 b!5831301)))

(assert (=> bs!1375099 (not (= lambda!319105 lambda!319068))))

(declare-fun bs!1375100 () Bool)

(assert (= bs!1375100 (and b!5832922 b!5831298)))

(assert (=> bs!1375100 (= (and (= (reg!16216 (regOne!32287 (regOne!32287 r!7292))) (reg!16216 r!7292)) (= (regOne!32287 (regOne!32287 r!7292)) r!7292)) (= lambda!319105 lambda!319067))))

(declare-fun bs!1375101 () Bool)

(assert (= bs!1375101 (and b!5832922 b!5831685)))

(assert (=> bs!1375101 (= (and (= (reg!16216 (regOne!32287 (regOne!32287 r!7292))) (reg!16216 (regTwo!32287 r!7292))) (= (regOne!32287 (regOne!32287 r!7292)) (regTwo!32287 r!7292))) (= lambda!319105 lambda!319080))))

(declare-fun bs!1375102 () Bool)

(assert (= bs!1375102 (and b!5832922 b!5831787)))

(assert (=> bs!1375102 (= (and (= (reg!16216 (regOne!32287 (regOne!32287 r!7292))) (reg!16216 (regOne!32287 r!7292))) (= (regOne!32287 (regOne!32287 r!7292)) (regOne!32287 r!7292))) (= lambda!319105 lambda!319084))))

(assert (=> b!5832922 true))

(assert (=> b!5832922 true))

(declare-fun bs!1375103 () Bool)

(declare-fun b!5832925 () Bool)

(assert (= bs!1375103 (and b!5832925 b!5832857)))

(declare-fun lambda!319106 () Int)

(assert (=> bs!1375103 (not (= lambda!319106 lambda!319102))))

(declare-fun bs!1375104 () Bool)

(assert (= bs!1375104 (and b!5832925 b!5831688)))

(assert (=> bs!1375104 (= (and (= (regOne!32286 (regOne!32287 (regOne!32287 r!7292))) (regOne!32286 (regTwo!32287 r!7292))) (= (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))) (regTwo!32286 (regTwo!32287 r!7292)))) (= lambda!319106 lambda!319081))))

(declare-fun bs!1375105 () Bool)

(assert (= bs!1375105 (and b!5832925 b!5832860)))

(assert (=> bs!1375105 (= (and (= (regOne!32286 (regOne!32287 (regOne!32287 r!7292))) (regOne!32286 (regOne!32287 (regTwo!32287 r!7292)))) (= (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))) (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))))) (= lambda!319106 lambda!319103))))

(declare-fun bs!1375106 () Bool)

(assert (= bs!1375106 (and b!5832925 b!5831790)))

(assert (=> bs!1375106 (= (and (= (regOne!32286 (regOne!32287 (regOne!32287 r!7292))) (regOne!32286 (regOne!32287 r!7292))) (= (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))) (regTwo!32286 (regOne!32287 r!7292)))) (= lambda!319106 lambda!319085))))

(declare-fun bs!1375107 () Bool)

(assert (= bs!1375107 (and b!5832925 b!5832922)))

(assert (=> bs!1375107 (not (= lambda!319106 lambda!319105))))

(declare-fun bs!1375108 () Bool)

(assert (= bs!1375108 (and b!5832925 b!5831301)))

(assert (=> bs!1375108 (= (and (= (regOne!32286 (regOne!32287 (regOne!32287 r!7292))) (regOne!32286 r!7292)) (= (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))) (regTwo!32286 r!7292))) (= lambda!319106 lambda!319068))))

(declare-fun bs!1375109 () Bool)

(assert (= bs!1375109 (and b!5832925 b!5831298)))

(assert (=> bs!1375109 (not (= lambda!319106 lambda!319067))))

(declare-fun bs!1375110 () Bool)

(assert (= bs!1375110 (and b!5832925 b!5831685)))

(assert (=> bs!1375110 (not (= lambda!319106 lambda!319080))))

(declare-fun bs!1375111 () Bool)

(assert (= bs!1375111 (and b!5832925 b!5831787)))

(assert (=> bs!1375111 (not (= lambda!319106 lambda!319084))))

(assert (=> b!5832925 true))

(assert (=> b!5832925 true))

(declare-fun c!1033478 () Bool)

(declare-fun bm!455561 () Bool)

(declare-fun call!455566 () Bool)

(assert (=> bm!455561 (= call!455566 (Exists!2964 (ite c!1033478 lambda!319105 lambda!319106)))))

(declare-fun b!5832916 () Bool)

(declare-fun e!3578501 () Bool)

(declare-fun e!3578499 () Bool)

(assert (=> b!5832916 (= e!3578501 e!3578499)))

(declare-fun res!2457983 () Bool)

(assert (=> b!5832916 (= res!2457983 (not ((_ is EmptyLang!15887) (regOne!32287 (regOne!32287 r!7292)))))))

(assert (=> b!5832916 (=> (not res!2457983) (not e!3578499))))

(declare-fun b!5832917 () Bool)

(declare-fun e!3578504 () Bool)

(declare-fun e!3578505 () Bool)

(assert (=> b!5832917 (= e!3578504 e!3578505)))

(declare-fun res!2457984 () Bool)

(assert (=> b!5832917 (= res!2457984 (matchRSpec!2988 (regOne!32287 (regOne!32287 (regOne!32287 r!7292))) s!2326))))

(assert (=> b!5832917 (=> res!2457984 e!3578505)))

(declare-fun b!5832918 () Bool)

(declare-fun e!3578503 () Bool)

(assert (=> b!5832918 (= e!3578504 e!3578503)))

(assert (=> b!5832918 (= c!1033478 ((_ is Star!15887) (regOne!32287 (regOne!32287 r!7292))))))

(declare-fun b!5832919 () Bool)

(declare-fun call!455567 () Bool)

(assert (=> b!5832919 (= e!3578501 call!455567)))

(declare-fun b!5832920 () Bool)

(declare-fun c!1033475 () Bool)

(assert (=> b!5832920 (= c!1033475 ((_ is Union!15887) (regOne!32287 (regOne!32287 r!7292))))))

(declare-fun e!3578502 () Bool)

(assert (=> b!5832920 (= e!3578502 e!3578504)))

(declare-fun b!5832921 () Bool)

(assert (=> b!5832921 (= e!3578502 (= s!2326 (Cons!63838 (c!1033165 (regOne!32287 (regOne!32287 r!7292))) Nil!63838)))))

(declare-fun d!1834027 () Bool)

(declare-fun c!1033477 () Bool)

(assert (=> d!1834027 (= c!1033477 ((_ is EmptyExpr!15887) (regOne!32287 (regOne!32287 r!7292))))))

(assert (=> d!1834027 (= (matchRSpec!2988 (regOne!32287 (regOne!32287 r!7292)) s!2326) e!3578501)))

(declare-fun e!3578500 () Bool)

(assert (=> b!5832922 (= e!3578500 call!455566)))

(declare-fun b!5832923 () Bool)

(declare-fun c!1033476 () Bool)

(assert (=> b!5832923 (= c!1033476 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32287 r!7292))))))

(assert (=> b!5832923 (= e!3578499 e!3578502)))

(declare-fun b!5832924 () Bool)

(declare-fun res!2457982 () Bool)

(assert (=> b!5832924 (=> res!2457982 e!3578500)))

(assert (=> b!5832924 (= res!2457982 call!455567)))

(assert (=> b!5832924 (= e!3578503 e!3578500)))

(assert (=> b!5832925 (= e!3578503 call!455566)))

(declare-fun bm!455562 () Bool)

(assert (=> bm!455562 (= call!455567 (isEmpty!35706 s!2326))))

(declare-fun b!5832926 () Bool)

(assert (=> b!5832926 (= e!3578505 (matchRSpec!2988 (regTwo!32287 (regOne!32287 (regOne!32287 r!7292))) s!2326))))

(assert (= (and d!1834027 c!1033477) b!5832919))

(assert (= (and d!1834027 (not c!1033477)) b!5832916))

(assert (= (and b!5832916 res!2457983) b!5832923))

(assert (= (and b!5832923 c!1033476) b!5832921))

(assert (= (and b!5832923 (not c!1033476)) b!5832920))

(assert (= (and b!5832920 c!1033475) b!5832917))

(assert (= (and b!5832920 (not c!1033475)) b!5832918))

(assert (= (and b!5832917 (not res!2457984)) b!5832926))

(assert (= (and b!5832918 c!1033478) b!5832924))

(assert (= (and b!5832918 (not c!1033478)) b!5832925))

(assert (= (and b!5832924 (not res!2457982)) b!5832922))

(assert (= (or b!5832922 b!5832925) bm!455561))

(assert (= (or b!5832919 b!5832924) bm!455562))

(declare-fun m!6761496 () Bool)

(assert (=> bm!455561 m!6761496))

(declare-fun m!6761498 () Bool)

(assert (=> b!5832917 m!6761498))

(assert (=> bm!455562 m!6760744))

(declare-fun m!6761500 () Bool)

(assert (=> b!5832926 m!6761500))

(assert (=> b!5831782 d!1834027))

(declare-fun d!1834029 () Bool)

(assert (=> d!1834029 (= (nullable!5889 (reg!16216 lt!2302954)) (nullableFct!1890 (reg!16216 lt!2302954)))))

(declare-fun bs!1375112 () Bool)

(assert (= bs!1375112 d!1834029))

(declare-fun m!6761502 () Bool)

(assert (=> bs!1375112 m!6761502))

(assert (=> b!5831768 d!1834029))

(declare-fun d!1834031 () Bool)

(assert (=> d!1834031 (= (Exists!2964 (ite c!1033328 lambda!319080 lambda!319081)) (choose!44299 (ite c!1033328 lambda!319080 lambda!319081)))))

(declare-fun bs!1375113 () Bool)

(assert (= bs!1375113 d!1834031))

(declare-fun m!6761504 () Bool)

(assert (=> bs!1375113 m!6761504))

(assert (=> bm!455429 d!1834031))

(declare-fun b!5832927 () Bool)

(declare-fun e!3578512 () Bool)

(declare-fun e!3578508 () Bool)

(assert (=> b!5832927 (= e!3578512 e!3578508)))

(declare-fun res!2457985 () Bool)

(assert (=> b!5832927 (= res!2457985 (not (nullable!5889 (reg!16216 lt!2302966))))))

(assert (=> b!5832927 (=> (not res!2457985) (not e!3578508))))

(declare-fun b!5832928 () Bool)

(declare-fun e!3578509 () Bool)

(declare-fun call!455570 () Bool)

(assert (=> b!5832928 (= e!3578509 call!455570)))

(declare-fun bm!455563 () Bool)

(declare-fun call!455568 () Bool)

(declare-fun call!455569 () Bool)

(assert (=> bm!455563 (= call!455568 call!455569)))

(declare-fun b!5832929 () Bool)

(assert (=> b!5832929 (= e!3578508 call!455569)))

(declare-fun b!5832930 () Bool)

(declare-fun e!3578506 () Bool)

(assert (=> b!5832930 (= e!3578506 e!3578509)))

(declare-fun res!2457988 () Bool)

(assert (=> b!5832930 (=> (not res!2457988) (not e!3578509))))

(assert (=> b!5832930 (= res!2457988 call!455568)))

(declare-fun b!5832931 () Bool)

(declare-fun res!2457986 () Bool)

(assert (=> b!5832931 (=> res!2457986 e!3578506)))

(assert (=> b!5832931 (= res!2457986 (not ((_ is Concat!24732) lt!2302966)))))

(declare-fun e!3578507 () Bool)

(assert (=> b!5832931 (= e!3578507 e!3578506)))

(declare-fun b!5832932 () Bool)

(declare-fun res!2457987 () Bool)

(declare-fun e!3578511 () Bool)

(assert (=> b!5832932 (=> (not res!2457987) (not e!3578511))))

(assert (=> b!5832932 (= res!2457987 call!455568)))

(assert (=> b!5832932 (= e!3578507 e!3578511)))

(declare-fun d!1834033 () Bool)

(declare-fun res!2457989 () Bool)

(declare-fun e!3578510 () Bool)

(assert (=> d!1834033 (=> res!2457989 e!3578510)))

(assert (=> d!1834033 (= res!2457989 ((_ is ElementMatch!15887) lt!2302966))))

(assert (=> d!1834033 (= (validRegex!7623 lt!2302966) e!3578510)))

(declare-fun c!1033480 () Bool)

(declare-fun c!1033479 () Bool)

(declare-fun bm!455564 () Bool)

(assert (=> bm!455564 (= call!455569 (validRegex!7623 (ite c!1033479 (reg!16216 lt!2302966) (ite c!1033480 (regOne!32287 lt!2302966) (regOne!32286 lt!2302966)))))))

(declare-fun bm!455565 () Bool)

(assert (=> bm!455565 (= call!455570 (validRegex!7623 (ite c!1033480 (regTwo!32287 lt!2302966) (regTwo!32286 lt!2302966))))))

(declare-fun b!5832933 () Bool)

(assert (=> b!5832933 (= e!3578512 e!3578507)))

(assert (=> b!5832933 (= c!1033480 ((_ is Union!15887) lt!2302966))))

(declare-fun b!5832934 () Bool)

(assert (=> b!5832934 (= e!3578511 call!455570)))

(declare-fun b!5832935 () Bool)

(assert (=> b!5832935 (= e!3578510 e!3578512)))

(assert (=> b!5832935 (= c!1033479 ((_ is Star!15887) lt!2302966))))

(assert (= (and d!1834033 (not res!2457989)) b!5832935))

(assert (= (and b!5832935 c!1033479) b!5832927))

(assert (= (and b!5832935 (not c!1033479)) b!5832933))

(assert (= (and b!5832927 res!2457985) b!5832929))

(assert (= (and b!5832933 c!1033480) b!5832932))

(assert (= (and b!5832933 (not c!1033480)) b!5832931))

(assert (= (and b!5832932 res!2457987) b!5832934))

(assert (= (and b!5832931 (not res!2457986)) b!5832930))

(assert (= (and b!5832930 res!2457988) b!5832928))

(assert (= (or b!5832934 b!5832928) bm!455565))

(assert (= (or b!5832932 b!5832930) bm!455563))

(assert (= (or b!5832929 bm!455563) bm!455564))

(declare-fun m!6761506 () Bool)

(assert (=> b!5832927 m!6761506))

(declare-fun m!6761508 () Bool)

(assert (=> bm!455564 m!6761508))

(declare-fun m!6761510 () Bool)

(assert (=> bm!455565 m!6761510))

(assert (=> d!1833777 d!1834033))

(assert (=> d!1833777 d!1833615))

(declare-fun bs!1375114 () Bool)

(declare-fun d!1834035 () Bool)

(assert (= bs!1375114 (and d!1834035 d!1833613)))

(declare-fun lambda!319107 () Int)

(assert (=> bs!1375114 (= lambda!319107 lambda!319061)))

(declare-fun bs!1375115 () Bool)

(assert (= bs!1375115 (and d!1834035 d!1833797)))

(assert (=> bs!1375115 (= lambda!319107 lambda!319083)))

(declare-fun bs!1375116 () Bool)

(assert (= bs!1375116 (and d!1834035 d!1833813)))

(assert (=> bs!1375116 (= lambda!319107 lambda!319086)))

(declare-fun bs!1375117 () Bool)

(assert (= bs!1375117 (and d!1834035 d!1833585)))

(assert (=> bs!1375117 (= lambda!319107 lambda!319052)))

(declare-fun bs!1375118 () Bool)

(assert (= bs!1375118 (and d!1834035 d!1833611)))

(assert (=> bs!1375118 (= lambda!319107 lambda!319058)))

(declare-fun bs!1375119 () Bool)

(assert (= bs!1375119 (and d!1834035 d!1833783)))

(assert (=> bs!1375119 (= lambda!319107 lambda!319082)))

(declare-fun bs!1375120 () Bool)

(assert (= bs!1375120 (and d!1834035 d!1834001)))

(assert (=> bs!1375120 (= lambda!319107 lambda!319104)))

(declare-fun bs!1375121 () Bool)

(assert (= bs!1375121 (and d!1834035 d!1833609)))

(assert (=> bs!1375121 (= lambda!319107 lambda!319055)))

(declare-fun bs!1375122 () Bool)

(assert (= bs!1375122 (and d!1834035 d!1833761)))

(assert (=> bs!1375122 (= lambda!319107 lambda!319079)))

(declare-fun bs!1375123 () Bool)

(assert (= bs!1375123 (and d!1834035 d!1833619)))

(assert (=> bs!1375123 (= lambda!319107 lambda!319062)))

(declare-fun bs!1375124 () Bool)

(assert (= bs!1375124 (and d!1834035 d!1833741)))

(assert (=> bs!1375124 (= lambda!319107 lambda!319078)))

(declare-fun b!5832936 () Bool)

(declare-fun e!3578517 () Bool)

(declare-fun lt!2302980 () Regex!15887)

(assert (=> b!5832936 (= e!3578517 (= lt!2302980 (head!12336 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))))))))

(declare-fun b!5832937 () Bool)

(declare-fun e!3578518 () Regex!15887)

(declare-fun e!3578513 () Regex!15887)

(assert (=> b!5832937 (= e!3578518 e!3578513)))

(declare-fun c!1033481 () Bool)

(assert (=> b!5832937 (= c!1033481 ((_ is Cons!63836) (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5832938 () Bool)

(assert (=> b!5832938 (= e!3578517 (isConcat!849 lt!2302980))))

(declare-fun b!5832939 () Bool)

(assert (=> b!5832939 (= e!3578513 (Concat!24732 (h!70284 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))) (generalisedConcat!1484 (t!377315 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))))))))

(declare-fun b!5832940 () Bool)

(declare-fun e!3578515 () Bool)

(assert (=> b!5832940 (= e!3578515 (isEmpty!35705 (t!377315 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))))))))

(declare-fun b!5832941 () Bool)

(declare-fun e!3578516 () Bool)

(declare-fun e!3578514 () Bool)

(assert (=> b!5832941 (= e!3578516 e!3578514)))

(declare-fun c!1033482 () Bool)

(assert (=> b!5832941 (= c!1033482 (isEmpty!35705 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(assert (=> d!1834035 e!3578516))

(declare-fun res!2457990 () Bool)

(assert (=> d!1834035 (=> (not res!2457990) (not e!3578516))))

(assert (=> d!1834035 (= res!2457990 (validRegex!7623 lt!2302980))))

(assert (=> d!1834035 (= lt!2302980 e!3578518)))

(declare-fun c!1033483 () Bool)

(assert (=> d!1834035 (= c!1033483 e!3578515)))

(declare-fun res!2457991 () Bool)

(assert (=> d!1834035 (=> (not res!2457991) (not e!3578515))))

(assert (=> d!1834035 (= res!2457991 ((_ is Cons!63836) (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(assert (=> d!1834035 (forall!14978 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))) lambda!319107)))

(assert (=> d!1834035 (= (generalisedConcat!1484 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))) lt!2302980)))

(declare-fun b!5832942 () Bool)

(assert (=> b!5832942 (= e!3578514 (isEmptyExpr!1326 lt!2302980))))

(declare-fun b!5832943 () Bool)

(assert (=> b!5832943 (= e!3578514 e!3578517)))

(declare-fun c!1033484 () Bool)

(assert (=> b!5832943 (= c!1033484 (isEmpty!35705 (tail!11421 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))))))))

(declare-fun b!5832944 () Bool)

(assert (=> b!5832944 (= e!3578518 (h!70284 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5832945 () Bool)

(assert (=> b!5832945 (= e!3578513 EmptyExpr!15887)))

(assert (= (and d!1834035 res!2457991) b!5832940))

(assert (= (and d!1834035 c!1033483) b!5832944))

(assert (= (and d!1834035 (not c!1033483)) b!5832937))

(assert (= (and b!5832937 c!1033481) b!5832939))

(assert (= (and b!5832937 (not c!1033481)) b!5832945))

(assert (= (and d!1834035 res!2457990) b!5832941))

(assert (= (and b!5832941 c!1033482) b!5832942))

(assert (= (and b!5832941 (not c!1033482)) b!5832943))

(assert (= (and b!5832943 c!1033484) b!5832936))

(assert (= (and b!5832943 (not c!1033484)) b!5832938))

(declare-fun m!6761512 () Bool)

(assert (=> b!5832938 m!6761512))

(declare-fun m!6761514 () Bool)

(assert (=> b!5832939 m!6761514))

(declare-fun m!6761516 () Bool)

(assert (=> b!5832936 m!6761516))

(declare-fun m!6761518 () Bool)

(assert (=> b!5832940 m!6761518))

(declare-fun m!6761520 () Bool)

(assert (=> b!5832943 m!6761520))

(assert (=> b!5832943 m!6761520))

(declare-fun m!6761522 () Bool)

(assert (=> b!5832943 m!6761522))

(declare-fun m!6761524 () Bool)

(assert (=> b!5832942 m!6761524))

(declare-fun m!6761526 () Bool)

(assert (=> d!1834035 m!6761526))

(declare-fun m!6761528 () Bool)

(assert (=> d!1834035 m!6761528))

(assert (=> b!5832941 m!6761020))

(assert (=> b!5831761 d!1834035))

(declare-fun bm!455566 () Bool)

(declare-fun call!455571 () Bool)

(assert (=> bm!455566 (= call!455571 (isEmpty!35706 (tail!11422 (tail!11422 s!2326))))))

(declare-fun b!5832946 () Bool)

(declare-fun res!2457999 () Bool)

(declare-fun e!3578525 () Bool)

(assert (=> b!5832946 (=> (not res!2457999) (not e!3578525))))

(assert (=> b!5832946 (= res!2457999 (not call!455571))))

(declare-fun b!5832947 () Bool)

(declare-fun res!2457997 () Bool)

(assert (=> b!5832947 (=> (not res!2457997) (not e!3578525))))

(assert (=> b!5832947 (= res!2457997 (isEmpty!35706 (tail!11422 (tail!11422 (tail!11422 s!2326)))))))

(declare-fun b!5832948 () Bool)

(declare-fun e!3578520 () Bool)

(assert (=> b!5832948 (= e!3578520 (nullable!5889 (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326)))))))

(declare-fun b!5832949 () Bool)

(declare-fun e!3578522 () Bool)

(declare-fun lt!2302981 () Bool)

(assert (=> b!5832949 (= e!3578522 (not lt!2302981))))

(declare-fun b!5832950 () Bool)

(declare-fun e!3578521 () Bool)

(assert (=> b!5832950 (= e!3578521 (not (= (head!12337 (tail!11422 (tail!11422 s!2326))) (c!1033165 (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326)))))))))

(declare-fun d!1834037 () Bool)

(declare-fun e!3578524 () Bool)

(assert (=> d!1834037 e!3578524))

(declare-fun c!1033486 () Bool)

(assert (=> d!1834037 (= c!1033486 ((_ is EmptyExpr!15887) (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326)))))))

(assert (=> d!1834037 (= lt!2302981 e!3578520)))

(declare-fun c!1033487 () Bool)

(assert (=> d!1834037 (= c!1033487 (isEmpty!35706 (tail!11422 (tail!11422 s!2326))))))

(assert (=> d!1834037 (validRegex!7623 (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326))))))

(assert (=> d!1834037 (= (matchR!8070 (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326))) (tail!11422 (tail!11422 s!2326))) lt!2302981)))

(declare-fun b!5832951 () Bool)

(declare-fun e!3578523 () Bool)

(assert (=> b!5832951 (= e!3578523 e!3578521)))

(declare-fun res!2457995 () Bool)

(assert (=> b!5832951 (=> res!2457995 e!3578521)))

(assert (=> b!5832951 (= res!2457995 call!455571)))

(declare-fun b!5832952 () Bool)

(assert (=> b!5832952 (= e!3578524 e!3578522)))

(declare-fun c!1033485 () Bool)

(assert (=> b!5832952 (= c!1033485 ((_ is EmptyLang!15887) (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326)))))))

(declare-fun b!5832953 () Bool)

(assert (=> b!5832953 (= e!3578525 (= (head!12337 (tail!11422 (tail!11422 s!2326))) (c!1033165 (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326))))))))

(declare-fun b!5832954 () Bool)

(assert (=> b!5832954 (= e!3578520 (matchR!8070 (derivativeStep!4629 (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326))) (head!12337 (tail!11422 (tail!11422 s!2326)))) (tail!11422 (tail!11422 (tail!11422 s!2326)))))))

(declare-fun b!5832955 () Bool)

(declare-fun res!2457996 () Bool)

(declare-fun e!3578519 () Bool)

(assert (=> b!5832955 (=> res!2457996 e!3578519)))

(assert (=> b!5832955 (= res!2457996 (not ((_ is ElementMatch!15887) (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326))))))))

(assert (=> b!5832955 (= e!3578522 e!3578519)))

(declare-fun b!5832956 () Bool)

(assert (=> b!5832956 (= e!3578519 e!3578523)))

(declare-fun res!2457992 () Bool)

(assert (=> b!5832956 (=> (not res!2457992) (not e!3578523))))

(assert (=> b!5832956 (= res!2457992 (not lt!2302981))))

(declare-fun b!5832957 () Bool)

(assert (=> b!5832957 (= e!3578524 (= lt!2302981 call!455571))))

(declare-fun b!5832958 () Bool)

(declare-fun res!2457993 () Bool)

(assert (=> b!5832958 (=> res!2457993 e!3578521)))

(assert (=> b!5832958 (= res!2457993 (not (isEmpty!35706 (tail!11422 (tail!11422 (tail!11422 s!2326))))))))

(declare-fun b!5832959 () Bool)

(declare-fun res!2457998 () Bool)

(assert (=> b!5832959 (=> res!2457998 e!3578519)))

(assert (=> b!5832959 (= res!2457998 e!3578525)))

(declare-fun res!2457994 () Bool)

(assert (=> b!5832959 (=> (not res!2457994) (not e!3578525))))

(assert (=> b!5832959 (= res!2457994 lt!2302981)))

(assert (= (and d!1834037 c!1033487) b!5832948))

(assert (= (and d!1834037 (not c!1033487)) b!5832954))

(assert (= (and d!1834037 c!1033486) b!5832957))

(assert (= (and d!1834037 (not c!1033486)) b!5832952))

(assert (= (and b!5832952 c!1033485) b!5832949))

(assert (= (and b!5832952 (not c!1033485)) b!5832955))

(assert (= (and b!5832955 (not res!2457996)) b!5832959))

(assert (= (and b!5832959 res!2457994) b!5832946))

(assert (= (and b!5832946 res!2457999) b!5832947))

(assert (= (and b!5832947 res!2457997) b!5832953))

(assert (= (and b!5832959 (not res!2457998)) b!5832956))

(assert (= (and b!5832956 res!2457992) b!5832951))

(assert (= (and b!5832951 (not res!2457995)) b!5832958))

(assert (= (and b!5832958 (not res!2457993)) b!5832950))

(assert (= (or b!5832957 b!5832946 b!5832951) bm!455566))

(assert (=> d!1834037 m!6760996))

(assert (=> d!1834037 m!6761000))

(assert (=> d!1834037 m!6760994))

(declare-fun m!6761530 () Bool)

(assert (=> d!1834037 m!6761530))

(assert (=> bm!455566 m!6760996))

(assert (=> bm!455566 m!6761000))

(assert (=> b!5832953 m!6760996))

(declare-fun m!6761532 () Bool)

(assert (=> b!5832953 m!6761532))

(assert (=> b!5832954 m!6760996))

(assert (=> b!5832954 m!6761532))

(assert (=> b!5832954 m!6760994))

(assert (=> b!5832954 m!6761532))

(declare-fun m!6761534 () Bool)

(assert (=> b!5832954 m!6761534))

(assert (=> b!5832954 m!6760996))

(declare-fun m!6761536 () Bool)

(assert (=> b!5832954 m!6761536))

(assert (=> b!5832954 m!6761534))

(assert (=> b!5832954 m!6761536))

(declare-fun m!6761538 () Bool)

(assert (=> b!5832954 m!6761538))

(assert (=> b!5832947 m!6760996))

(assert (=> b!5832947 m!6761536))

(assert (=> b!5832947 m!6761536))

(declare-fun m!6761540 () Bool)

(assert (=> b!5832947 m!6761540))

(assert (=> b!5832958 m!6760996))

(assert (=> b!5832958 m!6761536))

(assert (=> b!5832958 m!6761536))

(assert (=> b!5832958 m!6761540))

(assert (=> b!5832950 m!6760996))

(assert (=> b!5832950 m!6761532))

(assert (=> b!5832948 m!6760994))

(declare-fun m!6761542 () Bool)

(assert (=> b!5832948 m!6761542))

(assert (=> b!5831722 d!1834037))

(declare-fun bm!455567 () Bool)

(declare-fun call!455573 () Regex!15887)

(declare-fun call!455574 () Regex!15887)

(assert (=> bm!455567 (= call!455573 call!455574)))

(declare-fun b!5832960 () Bool)

(declare-fun e!3578526 () Regex!15887)

(assert (=> b!5832960 (= e!3578526 (Union!15887 (Concat!24732 call!455573 (regTwo!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326)))) EmptyLang!15887))))

(declare-fun b!5832961 () Bool)

(declare-fun e!3578528 () Regex!15887)

(declare-fun e!3578529 () Regex!15887)

(assert (=> b!5832961 (= e!3578528 e!3578529)))

(declare-fun c!1033488 () Bool)

(assert (=> b!5832961 (= c!1033488 ((_ is ElementMatch!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(declare-fun call!455572 () Regex!15887)

(declare-fun b!5832962 () Bool)

(assert (=> b!5832962 (= e!3578526 (Union!15887 (Concat!24732 call!455572 (regTwo!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326)))) call!455573))))

(declare-fun call!455575 () Regex!15887)

(declare-fun c!1033490 () Bool)

(declare-fun c!1033489 () Bool)

(declare-fun bm!455568 () Bool)

(declare-fun c!1033491 () Bool)

(assert (=> bm!455568 (= call!455575 (derivativeStep!4629 (ite c!1033491 (regTwo!32287 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (ite c!1033490 (reg!16216 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (ite c!1033489 (regTwo!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (regOne!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326)))))) (head!12337 (tail!11422 s!2326))))))

(declare-fun b!5832963 () Bool)

(declare-fun e!3578530 () Regex!15887)

(assert (=> b!5832963 (= e!3578530 (Union!15887 call!455572 call!455575))))

(declare-fun b!5832964 () Bool)

(assert (=> b!5832964 (= e!3578529 (ite (= (head!12337 (tail!11422 s!2326)) (c!1033165 (derivativeStep!4629 r!7292 (head!12337 s!2326)))) EmptyExpr!15887 EmptyLang!15887))))

(declare-fun b!5832965 () Bool)

(assert (=> b!5832965 (= c!1033489 (nullable!5889 (regOne!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326)))))))

(declare-fun e!3578527 () Regex!15887)

(assert (=> b!5832965 (= e!3578527 e!3578526)))

(declare-fun b!5832966 () Bool)

(assert (=> b!5832966 (= e!3578530 e!3578527)))

(assert (=> b!5832966 (= c!1033490 ((_ is Star!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(declare-fun b!5832967 () Bool)

(assert (=> b!5832967 (= e!3578528 EmptyLang!15887)))

(declare-fun bm!455569 () Bool)

(assert (=> bm!455569 (= call!455574 call!455575)))

(declare-fun b!5832968 () Bool)

(assert (=> b!5832968 (= e!3578527 (Concat!24732 call!455574 (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(declare-fun d!1834039 () Bool)

(declare-fun lt!2302982 () Regex!15887)

(assert (=> d!1834039 (validRegex!7623 lt!2302982)))

(assert (=> d!1834039 (= lt!2302982 e!3578528)))

(declare-fun c!1033492 () Bool)

(assert (=> d!1834039 (= c!1033492 (or ((_ is EmptyExpr!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))) ((_ is EmptyLang!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326)))))))

(assert (=> d!1834039 (validRegex!7623 (derivativeStep!4629 r!7292 (head!12337 s!2326)))))

(assert (=> d!1834039 (= (derivativeStep!4629 (derivativeStep!4629 r!7292 (head!12337 s!2326)) (head!12337 (tail!11422 s!2326))) lt!2302982)))

(declare-fun b!5832969 () Bool)

(assert (=> b!5832969 (= c!1033491 ((_ is Union!15887) (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(assert (=> b!5832969 (= e!3578529 e!3578530)))

(declare-fun bm!455570 () Bool)

(assert (=> bm!455570 (= call!455572 (derivativeStep!4629 (ite c!1033491 (regOne!32287 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (regOne!32286 (derivativeStep!4629 r!7292 (head!12337 s!2326)))) (head!12337 (tail!11422 s!2326))))))

(assert (= (and d!1834039 c!1033492) b!5832967))

(assert (= (and d!1834039 (not c!1033492)) b!5832961))

(assert (= (and b!5832961 c!1033488) b!5832964))

(assert (= (and b!5832961 (not c!1033488)) b!5832969))

(assert (= (and b!5832969 c!1033491) b!5832963))

(assert (= (and b!5832969 (not c!1033491)) b!5832966))

(assert (= (and b!5832966 c!1033490) b!5832968))

(assert (= (and b!5832966 (not c!1033490)) b!5832965))

(assert (= (and b!5832965 c!1033489) b!5832962))

(assert (= (and b!5832965 (not c!1033489)) b!5832960))

(assert (= (or b!5832962 b!5832960) bm!455567))

(assert (= (or b!5832968 bm!455567) bm!455569))

(assert (= (or b!5832963 bm!455569) bm!455568))

(assert (= (or b!5832963 b!5832962) bm!455570))

(assert (=> bm!455568 m!6760992))

(declare-fun m!6761544 () Bool)

(assert (=> bm!455568 m!6761544))

(declare-fun m!6761546 () Bool)

(assert (=> b!5832965 m!6761546))

(declare-fun m!6761548 () Bool)

(assert (=> d!1834039 m!6761548))

(assert (=> d!1834039 m!6760748))

(assert (=> d!1834039 m!6760990))

(assert (=> bm!455570 m!6760992))

(declare-fun m!6761550 () Bool)

(assert (=> bm!455570 m!6761550))

(assert (=> b!5831722 d!1834039))

(declare-fun d!1834041 () Bool)

(assert (=> d!1834041 (= (head!12337 (tail!11422 s!2326)) (h!70286 (tail!11422 s!2326)))))

(assert (=> b!5831722 d!1834041))

(assert (=> b!5831722 d!1834015))

(declare-fun b!5832970 () Bool)

(declare-fun e!3578537 () Bool)

(declare-fun e!3578533 () Bool)

(assert (=> b!5832970 (= e!3578537 e!3578533)))

(declare-fun res!2458000 () Bool)

(assert (=> b!5832970 (= res!2458000 (not (nullable!5889 (reg!16216 lt!2302968))))))

(assert (=> b!5832970 (=> (not res!2458000) (not e!3578533))))

(declare-fun b!5832971 () Bool)

(declare-fun e!3578534 () Bool)

(declare-fun call!455578 () Bool)

(assert (=> b!5832971 (= e!3578534 call!455578)))

(declare-fun bm!455571 () Bool)

(declare-fun call!455576 () Bool)

(declare-fun call!455577 () Bool)

(assert (=> bm!455571 (= call!455576 call!455577)))

(declare-fun b!5832972 () Bool)

(assert (=> b!5832972 (= e!3578533 call!455577)))

(declare-fun b!5832973 () Bool)

(declare-fun e!3578531 () Bool)

(assert (=> b!5832973 (= e!3578531 e!3578534)))

(declare-fun res!2458003 () Bool)

(assert (=> b!5832973 (=> (not res!2458003) (not e!3578534))))

(assert (=> b!5832973 (= res!2458003 call!455576)))

(declare-fun b!5832974 () Bool)

(declare-fun res!2458001 () Bool)

(assert (=> b!5832974 (=> res!2458001 e!3578531)))

(assert (=> b!5832974 (= res!2458001 (not ((_ is Concat!24732) lt!2302968)))))

(declare-fun e!3578532 () Bool)

(assert (=> b!5832974 (= e!3578532 e!3578531)))

(declare-fun b!5832975 () Bool)

(declare-fun res!2458002 () Bool)

(declare-fun e!3578536 () Bool)

(assert (=> b!5832975 (=> (not res!2458002) (not e!3578536))))

(assert (=> b!5832975 (= res!2458002 call!455576)))

(assert (=> b!5832975 (= e!3578532 e!3578536)))

(declare-fun d!1834043 () Bool)

(declare-fun res!2458004 () Bool)

(declare-fun e!3578535 () Bool)

(assert (=> d!1834043 (=> res!2458004 e!3578535)))

(assert (=> d!1834043 (= res!2458004 ((_ is ElementMatch!15887) lt!2302968))))

(assert (=> d!1834043 (= (validRegex!7623 lt!2302968) e!3578535)))

(declare-fun c!1033493 () Bool)

(declare-fun bm!455572 () Bool)

(declare-fun c!1033494 () Bool)

(assert (=> bm!455572 (= call!455577 (validRegex!7623 (ite c!1033493 (reg!16216 lt!2302968) (ite c!1033494 (regOne!32287 lt!2302968) (regOne!32286 lt!2302968)))))))

(declare-fun bm!455573 () Bool)

(assert (=> bm!455573 (= call!455578 (validRegex!7623 (ite c!1033494 (regTwo!32287 lt!2302968) (regTwo!32286 lt!2302968))))))

(declare-fun b!5832976 () Bool)

(assert (=> b!5832976 (= e!3578537 e!3578532)))

(assert (=> b!5832976 (= c!1033494 ((_ is Union!15887) lt!2302968))))

(declare-fun b!5832977 () Bool)

(assert (=> b!5832977 (= e!3578536 call!455578)))

(declare-fun b!5832978 () Bool)

(assert (=> b!5832978 (= e!3578535 e!3578537)))

(assert (=> b!5832978 (= c!1033493 ((_ is Star!15887) lt!2302968))))

(assert (= (and d!1834043 (not res!2458004)) b!5832978))

(assert (= (and b!5832978 c!1033493) b!5832970))

(assert (= (and b!5832978 (not c!1033493)) b!5832976))

(assert (= (and b!5832970 res!2458000) b!5832972))

(assert (= (and b!5832976 c!1033494) b!5832975))

(assert (= (and b!5832976 (not c!1033494)) b!5832974))

(assert (= (and b!5832975 res!2458002) b!5832977))

(assert (= (and b!5832974 (not res!2458001)) b!5832973))

(assert (= (and b!5832973 res!2458003) b!5832971))

(assert (= (or b!5832977 b!5832971) bm!455573))

(assert (= (or b!5832975 b!5832973) bm!455571))

(assert (= (or b!5832972 bm!455571) bm!455572))

(declare-fun m!6761552 () Bool)

(assert (=> b!5832970 m!6761552))

(declare-fun m!6761554 () Bool)

(assert (=> bm!455572 m!6761554))

(declare-fun m!6761556 () Bool)

(assert (=> bm!455573 m!6761556))

(assert (=> d!1833813 d!1834043))

(declare-fun d!1834045 () Bool)

(declare-fun res!2458005 () Bool)

(declare-fun e!3578538 () Bool)

(assert (=> d!1834045 (=> res!2458005 e!3578538)))

(assert (=> d!1834045 (= res!2458005 ((_ is Nil!63836) (t!377315 (unfocusZipperList!1308 zl!343))))))

(assert (=> d!1834045 (= (forall!14978 (t!377315 (unfocusZipperList!1308 zl!343)) lambda!319086) e!3578538)))

(declare-fun b!5832979 () Bool)

(declare-fun e!3578539 () Bool)

(assert (=> b!5832979 (= e!3578538 e!3578539)))

(declare-fun res!2458006 () Bool)

(assert (=> b!5832979 (=> (not res!2458006) (not e!3578539))))

(assert (=> b!5832979 (= res!2458006 (dynLambda!24974 lambda!319086 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5832980 () Bool)

(assert (=> b!5832980 (= e!3578539 (forall!14978 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))) lambda!319086))))

(assert (= (and d!1834045 (not res!2458005)) b!5832979))

(assert (= (and b!5832979 res!2458006) b!5832980))

(declare-fun b_lambda!219833 () Bool)

(assert (=> (not b_lambda!219833) (not b!5832979)))

(declare-fun m!6761558 () Bool)

(assert (=> b!5832979 m!6761558))

(declare-fun m!6761560 () Bool)

(assert (=> b!5832980 m!6761560))

(assert (=> d!1833813 d!1834045))

(declare-fun d!1834047 () Bool)

(assert (=> d!1834047 (= (isUnion!764 lt!2302968) ((_ is Union!15887) lt!2302968))))

(assert (=> b!5831812 d!1834047))

(assert (=> b!5831763 d!1833787))

(declare-fun b!5832981 () Bool)

(declare-fun e!3578546 () Bool)

(declare-fun e!3578542 () Bool)

(assert (=> b!5832981 (= e!3578546 e!3578542)))

(declare-fun res!2458007 () Bool)

(assert (=> b!5832981 (= res!2458007 (not (nullable!5889 (reg!16216 (h!70284 (exprs!5771 (h!70285 zl!343)))))))))

(assert (=> b!5832981 (=> (not res!2458007) (not e!3578542))))

(declare-fun b!5832982 () Bool)

(declare-fun e!3578543 () Bool)

(declare-fun call!455581 () Bool)

(assert (=> b!5832982 (= e!3578543 call!455581)))

(declare-fun bm!455574 () Bool)

(declare-fun call!455579 () Bool)

(declare-fun call!455580 () Bool)

(assert (=> bm!455574 (= call!455579 call!455580)))

(declare-fun b!5832983 () Bool)

(assert (=> b!5832983 (= e!3578542 call!455580)))

(declare-fun b!5832984 () Bool)

(declare-fun e!3578540 () Bool)

(assert (=> b!5832984 (= e!3578540 e!3578543)))

(declare-fun res!2458010 () Bool)

(assert (=> b!5832984 (=> (not res!2458010) (not e!3578543))))

(assert (=> b!5832984 (= res!2458010 call!455579)))

(declare-fun b!5832985 () Bool)

(declare-fun res!2458008 () Bool)

(assert (=> b!5832985 (=> res!2458008 e!3578540)))

(assert (=> b!5832985 (= res!2458008 (not ((_ is Concat!24732) (h!70284 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun e!3578541 () Bool)

(assert (=> b!5832985 (= e!3578541 e!3578540)))

(declare-fun b!5832986 () Bool)

(declare-fun res!2458009 () Bool)

(declare-fun e!3578545 () Bool)

(assert (=> b!5832986 (=> (not res!2458009) (not e!3578545))))

(assert (=> b!5832986 (= res!2458009 call!455579)))

(assert (=> b!5832986 (= e!3578541 e!3578545)))

(declare-fun d!1834049 () Bool)

(declare-fun res!2458011 () Bool)

(declare-fun e!3578544 () Bool)

(assert (=> d!1834049 (=> res!2458011 e!3578544)))

(assert (=> d!1834049 (= res!2458011 ((_ is ElementMatch!15887) (h!70284 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> d!1834049 (= (validRegex!7623 (h!70284 (exprs!5771 (h!70285 zl!343)))) e!3578544)))

(declare-fun bm!455575 () Bool)

(declare-fun c!1033495 () Bool)

(declare-fun c!1033496 () Bool)

(assert (=> bm!455575 (= call!455580 (validRegex!7623 (ite c!1033495 (reg!16216 (h!70284 (exprs!5771 (h!70285 zl!343)))) (ite c!1033496 (regOne!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))) (regOne!32286 (h!70284 (exprs!5771 (h!70285 zl!343))))))))))

(declare-fun bm!455576 () Bool)

(assert (=> bm!455576 (= call!455581 (validRegex!7623 (ite c!1033496 (regTwo!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))) (regTwo!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))))))

(declare-fun b!5832987 () Bool)

(assert (=> b!5832987 (= e!3578546 e!3578541)))

(assert (=> b!5832987 (= c!1033496 ((_ is Union!15887) (h!70284 (exprs!5771 (h!70285 zl!343)))))))

(declare-fun b!5832988 () Bool)

(assert (=> b!5832988 (= e!3578545 call!455581)))

(declare-fun b!5832989 () Bool)

(assert (=> b!5832989 (= e!3578544 e!3578546)))

(assert (=> b!5832989 (= c!1033495 ((_ is Star!15887) (h!70284 (exprs!5771 (h!70285 zl!343)))))))

(assert (= (and d!1834049 (not res!2458011)) b!5832989))

(assert (= (and b!5832989 c!1033495) b!5832981))

(assert (= (and b!5832989 (not c!1033495)) b!5832987))

(assert (= (and b!5832981 res!2458007) b!5832983))

(assert (= (and b!5832987 c!1033496) b!5832986))

(assert (= (and b!5832987 (not c!1033496)) b!5832985))

(assert (= (and b!5832986 res!2458009) b!5832988))

(assert (= (and b!5832985 (not res!2458008)) b!5832984))

(assert (= (and b!5832984 res!2458010) b!5832982))

(assert (= (or b!5832988 b!5832982) bm!455576))

(assert (= (or b!5832986 b!5832984) bm!455574))

(assert (= (or b!5832983 bm!455574) bm!455575))

(declare-fun m!6761562 () Bool)

(assert (=> b!5832981 m!6761562))

(declare-fun m!6761564 () Bool)

(assert (=> bm!455575 m!6761564))

(declare-fun m!6761566 () Bool)

(assert (=> bm!455576 m!6761566))

(assert (=> bs!1374877 d!1834049))

(declare-fun d!1834051 () Bool)

(declare-fun res!2458012 () Bool)

(declare-fun e!3578547 () Bool)

(assert (=> d!1834051 (=> res!2458012 e!3578547)))

(assert (=> d!1834051 (= res!2458012 ((_ is Nil!63837) res!2457726))))

(assert (=> d!1834051 (= (noDuplicate!1757 res!2457726) e!3578547)))

(declare-fun b!5832990 () Bool)

(declare-fun e!3578548 () Bool)

(assert (=> b!5832990 (= e!3578547 e!3578548)))

(declare-fun res!2458013 () Bool)

(assert (=> b!5832990 (=> (not res!2458013) (not e!3578548))))

(assert (=> b!5832990 (= res!2458013 (not (contains!19910 (t!377316 res!2457726) (h!70285 res!2457726))))))

(declare-fun b!5832991 () Bool)

(assert (=> b!5832991 (= e!3578548 (noDuplicate!1757 (t!377316 res!2457726)))))

(assert (= (and d!1834051 (not res!2458012)) b!5832990))

(assert (= (and b!5832990 res!2458013) b!5832991))

(declare-fun m!6761568 () Bool)

(assert (=> b!5832990 m!6761568))

(declare-fun m!6761570 () Bool)

(assert (=> b!5832991 m!6761570))

(assert (=> d!1833751 d!1834051))

(declare-fun d!1834053 () Bool)

(assert (=> d!1834053 (= (isEmpty!35705 (tail!11421 (t!377315 (exprs!5771 (h!70285 zl!343))))) ((_ is Nil!63836) (tail!11421 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(assert (=> b!5831765 d!1834053))

(declare-fun d!1834055 () Bool)

(assert (=> d!1834055 (= (tail!11421 (t!377315 (exprs!5771 (h!70285 zl!343)))) (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> b!5831765 d!1834055))

(declare-fun d!1834057 () Bool)

(declare-fun res!2458014 () Bool)

(declare-fun e!3578549 () Bool)

(assert (=> d!1834057 (=> res!2458014 e!3578549)))

(assert (=> d!1834057 (= res!2458014 ((_ is Nil!63836) (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> d!1834057 (= (forall!14978 (t!377315 (exprs!5771 (h!70285 zl!343))) lambda!319061) e!3578549)))

(declare-fun b!5832992 () Bool)

(declare-fun e!3578550 () Bool)

(assert (=> b!5832992 (= e!3578549 e!3578550)))

(declare-fun res!2458015 () Bool)

(assert (=> b!5832992 (=> (not res!2458015) (not e!3578550))))

(assert (=> b!5832992 (= res!2458015 (dynLambda!24974 lambda!319061 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5832993 () Bool)

(assert (=> b!5832993 (= e!3578550 (forall!14978 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))) lambda!319061))))

(assert (= (and d!1834057 (not res!2458014)) b!5832992))

(assert (= (and b!5832992 res!2458015) b!5832993))

(declare-fun b_lambda!219835 () Bool)

(assert (=> (not b_lambda!219835) (not b!5832992)))

(declare-fun m!6761572 () Bool)

(assert (=> b!5832992 m!6761572))

(declare-fun m!6761574 () Bool)

(assert (=> b!5832993 m!6761574))

(assert (=> b!5831661 d!1834057))

(declare-fun d!1834059 () Bool)

(assert (=> d!1834059 (= (Exists!2964 (ite c!1033363 lambda!319084 lambda!319085)) (choose!44299 (ite c!1033363 lambda!319084 lambda!319085)))))

(declare-fun bs!1375125 () Bool)

(assert (= bs!1375125 d!1834059))

(declare-fun m!6761576 () Bool)

(assert (=> bs!1375125 m!6761576))

(assert (=> bm!455453 d!1834059))

(declare-fun d!1834061 () Bool)

(assert (=> d!1834061 (= (head!12336 (t!377315 (unfocusZipperList!1308 zl!343))) (h!70284 (t!377315 (unfocusZipperList!1308 zl!343))))))

(assert (=> b!5831804 d!1834061))

(declare-fun d!1834063 () Bool)

(assert (=> d!1834063 (= (nullable!5889 (derivativeStep!4629 r!7292 (head!12337 s!2326))) (nullableFct!1890 (derivativeStep!4629 r!7292 (head!12337 s!2326))))))

(declare-fun bs!1375126 () Bool)

(assert (= bs!1375126 d!1834063))

(assert (=> bs!1375126 m!6760748))

(declare-fun m!6761578 () Bool)

(assert (=> bs!1375126 m!6761578))

(assert (=> b!5831716 d!1834063))

(declare-fun b!5832994 () Bool)

(declare-fun e!3578557 () Bool)

(declare-fun e!3578553 () Bool)

(assert (=> b!5832994 (= e!3578557 e!3578553)))

(declare-fun res!2458016 () Bool)

(assert (=> b!5832994 (= res!2458016 (not (nullable!5889 (reg!16216 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))))))))

(assert (=> b!5832994 (=> (not res!2458016) (not e!3578553))))

(declare-fun b!5832995 () Bool)

(declare-fun e!3578554 () Bool)

(declare-fun call!455584 () Bool)

(assert (=> b!5832995 (= e!3578554 call!455584)))

(declare-fun bm!455577 () Bool)

(declare-fun call!455582 () Bool)

(declare-fun call!455583 () Bool)

(assert (=> bm!455577 (= call!455582 call!455583)))

(declare-fun b!5832996 () Bool)

(assert (=> b!5832996 (= e!3578553 call!455583)))

(declare-fun b!5832997 () Bool)

(declare-fun e!3578551 () Bool)

(assert (=> b!5832997 (= e!3578551 e!3578554)))

(declare-fun res!2458019 () Bool)

(assert (=> b!5832997 (=> (not res!2458019) (not e!3578554))))

(assert (=> b!5832997 (= res!2458019 call!455582)))

(declare-fun b!5832998 () Bool)

(declare-fun res!2458017 () Bool)

(assert (=> b!5832998 (=> res!2458017 e!3578551)))

(assert (=> b!5832998 (= res!2458017 (not ((_ is Concat!24732) (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954))))))))

(declare-fun e!3578552 () Bool)

(assert (=> b!5832998 (= e!3578552 e!3578551)))

(declare-fun b!5832999 () Bool)

(declare-fun res!2458018 () Bool)

(declare-fun e!3578556 () Bool)

(assert (=> b!5832999 (=> (not res!2458018) (not e!3578556))))

(assert (=> b!5832999 (= res!2458018 call!455582)))

(assert (=> b!5832999 (= e!3578552 e!3578556)))

(declare-fun d!1834065 () Bool)

(declare-fun res!2458020 () Bool)

(declare-fun e!3578555 () Bool)

(assert (=> d!1834065 (=> res!2458020 e!3578555)))

(assert (=> d!1834065 (= res!2458020 ((_ is ElementMatch!15887) (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))))))

(assert (=> d!1834065 (= (validRegex!7623 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))) e!3578555)))

(declare-fun c!1033498 () Bool)

(declare-fun bm!455578 () Bool)

(declare-fun c!1033497 () Bool)

(assert (=> bm!455578 (= call!455583 (validRegex!7623 (ite c!1033497 (reg!16216 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))) (ite c!1033498 (regOne!32287 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))) (regOne!32286 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954))))))))))

(declare-fun bm!455579 () Bool)

(assert (=> bm!455579 (= call!455584 (validRegex!7623 (ite c!1033498 (regTwo!32287 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))) (regTwo!32286 (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))))))))

(declare-fun b!5833000 () Bool)

(assert (=> b!5833000 (= e!3578557 e!3578552)))

(assert (=> b!5833000 (= c!1033498 ((_ is Union!15887) (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))))))

(declare-fun b!5833001 () Bool)

(assert (=> b!5833001 (= e!3578556 call!455584)))

(declare-fun b!5833002 () Bool)

(assert (=> b!5833002 (= e!3578555 e!3578557)))

(assert (=> b!5833002 (= c!1033497 ((_ is Star!15887) (ite c!1033358 (reg!16216 lt!2302954) (ite c!1033359 (regOne!32287 lt!2302954) (regOne!32286 lt!2302954)))))))

(assert (= (and d!1834065 (not res!2458020)) b!5833002))

(assert (= (and b!5833002 c!1033497) b!5832994))

(assert (= (and b!5833002 (not c!1033497)) b!5833000))

(assert (= (and b!5832994 res!2458016) b!5832996))

(assert (= (and b!5833000 c!1033498) b!5832999))

(assert (= (and b!5833000 (not c!1033498)) b!5832998))

(assert (= (and b!5832999 res!2458018) b!5833001))

(assert (= (and b!5832998 (not res!2458017)) b!5832997))

(assert (= (and b!5832997 res!2458019) b!5832995))

(assert (= (or b!5833001 b!5832995) bm!455579))

(assert (= (or b!5832999 b!5832997) bm!455577))

(assert (= (or b!5832996 bm!455577) bm!455578))

(declare-fun m!6761580 () Bool)

(assert (=> b!5832994 m!6761580))

(declare-fun m!6761582 () Bool)

(assert (=> bm!455578 m!6761582))

(declare-fun m!6761584 () Bool)

(assert (=> bm!455579 m!6761584))

(assert (=> bm!455451 d!1834065))

(assert (=> b!5831806 d!1833743))

(declare-fun d!1834067 () Bool)

(assert (=> d!1834067 true))

(assert (=> d!1834067 true))

(declare-fun res!2458023 () Bool)

(assert (=> d!1834067 (= (choose!44299 (ite c!1033273 lambda!319067 lambda!319068)) res!2458023)))

(assert (=> d!1833801 d!1834067))

(declare-fun b!5833003 () Bool)

(declare-fun e!3578564 () Bool)

(declare-fun e!3578560 () Bool)

(assert (=> b!5833003 (= e!3578564 e!3578560)))

(declare-fun res!2458024 () Bool)

(assert (=> b!5833003 (= res!2458024 (not (nullable!5889 (reg!16216 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))))))))

(assert (=> b!5833003 (=> (not res!2458024) (not e!3578560))))

(declare-fun b!5833004 () Bool)

(declare-fun e!3578561 () Bool)

(declare-fun call!455587 () Bool)

(assert (=> b!5833004 (= e!3578561 call!455587)))

(declare-fun bm!455580 () Bool)

(declare-fun call!455585 () Bool)

(declare-fun call!455586 () Bool)

(assert (=> bm!455580 (= call!455585 call!455586)))

(declare-fun b!5833005 () Bool)

(assert (=> b!5833005 (= e!3578560 call!455586)))

(declare-fun b!5833006 () Bool)

(declare-fun e!3578558 () Bool)

(assert (=> b!5833006 (= e!3578558 e!3578561)))

(declare-fun res!2458027 () Bool)

(assert (=> b!5833006 (=> (not res!2458027) (not e!3578561))))

(assert (=> b!5833006 (= res!2458027 call!455585)))

(declare-fun b!5833007 () Bool)

(declare-fun res!2458025 () Bool)

(assert (=> b!5833007 (=> res!2458025 e!3578558)))

(assert (=> b!5833007 (= res!2458025 (not ((_ is Concat!24732) (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942)))))))

(declare-fun e!3578559 () Bool)

(assert (=> b!5833007 (= e!3578559 e!3578558)))

(declare-fun b!5833008 () Bool)

(declare-fun res!2458026 () Bool)

(declare-fun e!3578563 () Bool)

(assert (=> b!5833008 (=> (not res!2458026) (not e!3578563))))

(assert (=> b!5833008 (= res!2458026 call!455585)))

(assert (=> b!5833008 (= e!3578559 e!3578563)))

(declare-fun d!1834069 () Bool)

(declare-fun res!2458028 () Bool)

(declare-fun e!3578562 () Bool)

(assert (=> d!1834069 (=> res!2458028 e!3578562)))

(assert (=> d!1834069 (= res!2458028 ((_ is ElementMatch!15887) (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))))))

(assert (=> d!1834069 (= (validRegex!7623 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))) e!3578562)))

(declare-fun c!1033500 () Bool)

(declare-fun bm!455581 () Bool)

(declare-fun c!1033499 () Bool)

(assert (=> bm!455581 (= call!455586 (validRegex!7623 (ite c!1033499 (reg!16216 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))) (ite c!1033500 (regOne!32287 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))) (regOne!32286 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942)))))))))

(declare-fun bm!455582 () Bool)

(assert (=> bm!455582 (= call!455587 (validRegex!7623 (ite c!1033500 (regTwo!32287 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))) (regTwo!32286 (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))))))))

(declare-fun b!5833009 () Bool)

(assert (=> b!5833009 (= e!3578564 e!3578559)))

(assert (=> b!5833009 (= c!1033500 ((_ is Union!15887) (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))))))

(declare-fun b!5833010 () Bool)

(assert (=> b!5833010 (= e!3578563 call!455587)))

(declare-fun b!5833011 () Bool)

(assert (=> b!5833011 (= e!3578562 e!3578564)))

(assert (=> b!5833011 (= c!1033499 ((_ is Star!15887) (ite c!1033365 (regTwo!32287 lt!2302942) (regTwo!32286 lt!2302942))))))

(assert (= (and d!1834069 (not res!2458028)) b!5833011))

(assert (= (and b!5833011 c!1033499) b!5833003))

(assert (= (and b!5833011 (not c!1033499)) b!5833009))

(assert (= (and b!5833003 res!2458024) b!5833005))

(assert (= (and b!5833009 c!1033500) b!5833008))

(assert (= (and b!5833009 (not c!1033500)) b!5833007))

(assert (= (and b!5833008 res!2458026) b!5833010))

(assert (= (and b!5833007 (not res!2458025)) b!5833006))

(assert (= (and b!5833006 res!2458027) b!5833004))

(assert (= (or b!5833010 b!5833004) bm!455582))

(assert (= (or b!5833008 b!5833006) bm!455580))

(assert (= (or b!5833005 bm!455580) bm!455581))

(declare-fun m!6761586 () Bool)

(assert (=> b!5833003 m!6761586))

(declare-fun m!6761588 () Bool)

(assert (=> bm!455581 m!6761588))

(declare-fun m!6761590 () Bool)

(assert (=> bm!455582 m!6761590))

(assert (=> bm!455457 d!1834069))

(declare-fun bm!455583 () Bool)

(declare-fun call!455589 () Regex!15887)

(declare-fun call!455590 () Regex!15887)

(assert (=> bm!455583 (= call!455589 call!455590)))

(declare-fun e!3578565 () Regex!15887)

(declare-fun b!5833012 () Bool)

(assert (=> b!5833012 (= e!3578565 (Union!15887 (Concat!24732 call!455589 (regTwo!32286 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))) EmptyLang!15887))))

(declare-fun b!5833013 () Bool)

(declare-fun e!3578567 () Regex!15887)

(declare-fun e!3578568 () Regex!15887)

(assert (=> b!5833013 (= e!3578567 e!3578568)))

(declare-fun c!1033501 () Bool)

(assert (=> b!5833013 (= c!1033501 ((_ is ElementMatch!15887) (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))))))

(declare-fun b!5833014 () Bool)

(declare-fun call!455588 () Regex!15887)

(assert (=> b!5833014 (= e!3578565 (Union!15887 (Concat!24732 call!455588 (regTwo!32286 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))) call!455589))))

(declare-fun bm!455584 () Bool)

(declare-fun call!455591 () Regex!15887)

(declare-fun c!1033504 () Bool)

(declare-fun c!1033502 () Bool)

(declare-fun c!1033503 () Bool)

(assert (=> bm!455584 (= call!455591 (derivativeStep!4629 (ite c!1033504 (regTwo!32287 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))) (ite c!1033503 (reg!16216 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))) (ite c!1033502 (regTwo!32286 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))) (regOne!32286 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))))) (head!12337 s!2326)))))

(declare-fun b!5833015 () Bool)

(declare-fun e!3578569 () Regex!15887)

(assert (=> b!5833015 (= e!3578569 (Union!15887 call!455588 call!455591))))

(declare-fun b!5833016 () Bool)

(assert (=> b!5833016 (= e!3578568 (ite (= (head!12337 s!2326) (c!1033165 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))) EmptyExpr!15887 EmptyLang!15887))))

(declare-fun b!5833017 () Bool)

(assert (=> b!5833017 (= c!1033502 (nullable!5889 (regOne!32286 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))))))

(declare-fun e!3578566 () Regex!15887)

(assert (=> b!5833017 (= e!3578566 e!3578565)))

(declare-fun b!5833018 () Bool)

(assert (=> b!5833018 (= e!3578569 e!3578566)))

(assert (=> b!5833018 (= c!1033503 ((_ is Star!15887) (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))))))

(declare-fun b!5833019 () Bool)

(assert (=> b!5833019 (= e!3578567 EmptyLang!15887)))

(declare-fun bm!455585 () Bool)

(assert (=> bm!455585 (= call!455590 call!455591)))

(declare-fun b!5833020 () Bool)

(assert (=> b!5833020 (= e!3578566 (Concat!24732 call!455590 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))))))

(declare-fun d!1834071 () Bool)

(declare-fun lt!2302983 () Regex!15887)

(assert (=> d!1834071 (validRegex!7623 lt!2302983)))

(assert (=> d!1834071 (= lt!2302983 e!3578567)))

(declare-fun c!1033505 () Bool)

(assert (=> d!1834071 (= c!1033505 (or ((_ is EmptyExpr!15887) (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))) ((_ is EmptyLang!15887) (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))))))

(assert (=> d!1834071 (validRegex!7623 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))))

(assert (=> d!1834071 (= (derivativeStep!4629 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))) (head!12337 s!2326)) lt!2302983)))

(declare-fun b!5833021 () Bool)

(assert (=> b!5833021 (= c!1033504 ((_ is Union!15887) (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))))))

(assert (=> b!5833021 (= e!3578568 e!3578569)))

(declare-fun bm!455586 () Bool)

(assert (=> bm!455586 (= call!455588 (derivativeStep!4629 (ite c!1033504 (regOne!32287 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292))))) (regOne!32286 (ite c!1033352 (regTwo!32287 r!7292) (ite c!1033351 (reg!16216 r!7292) (ite c!1033350 (regTwo!32286 r!7292) (regOne!32286 r!7292)))))) (head!12337 s!2326)))))

(assert (= (and d!1834071 c!1033505) b!5833019))

(assert (= (and d!1834071 (not c!1033505)) b!5833013))

(assert (= (and b!5833013 c!1033501) b!5833016))

(assert (= (and b!5833013 (not c!1033501)) b!5833021))

(assert (= (and b!5833021 c!1033504) b!5833015))

(assert (= (and b!5833021 (not c!1033504)) b!5833018))

(assert (= (and b!5833018 c!1033503) b!5833020))

(assert (= (and b!5833018 (not c!1033503)) b!5833017))

(assert (= (and b!5833017 c!1033502) b!5833014))

(assert (= (and b!5833017 (not c!1033502)) b!5833012))

(assert (= (or b!5833014 b!5833012) bm!455583))

(assert (= (or b!5833020 bm!455583) bm!455585))

(assert (= (or b!5833015 bm!455585) bm!455584))

(assert (= (or b!5833015 b!5833014) bm!455586))

(assert (=> bm!455584 m!6760746))

(declare-fun m!6761592 () Bool)

(assert (=> bm!455584 m!6761592))

(declare-fun m!6761594 () Bool)

(assert (=> b!5833017 m!6761594))

(declare-fun m!6761596 () Bool)

(assert (=> d!1834071 m!6761596))

(declare-fun m!6761598 () Bool)

(assert (=> d!1834071 m!6761598))

(assert (=> bm!455586 m!6760746))

(declare-fun m!6761600 () Bool)

(assert (=> bm!455586 m!6761600))

(assert (=> bm!455447 d!1834071))

(assert (=> b!5831718 d!1834041))

(declare-fun d!1834073 () Bool)

(declare-fun res!2458029 () Bool)

(declare-fun e!3578570 () Bool)

(assert (=> d!1834073 (=> res!2458029 e!3578570)))

(assert (=> d!1834073 (= res!2458029 ((_ is Nil!63837) (t!377316 lt!2302945)))))

(assert (=> d!1834073 (= (noDuplicate!1757 (t!377316 lt!2302945)) e!3578570)))

(declare-fun b!5833022 () Bool)

(declare-fun e!3578571 () Bool)

(assert (=> b!5833022 (= e!3578570 e!3578571)))

(declare-fun res!2458030 () Bool)

(assert (=> b!5833022 (=> (not res!2458030) (not e!3578571))))

(assert (=> b!5833022 (= res!2458030 (not (contains!19910 (t!377316 (t!377316 lt!2302945)) (h!70285 (t!377316 lt!2302945)))))))

(declare-fun b!5833023 () Bool)

(assert (=> b!5833023 (= e!3578571 (noDuplicate!1757 (t!377316 (t!377316 lt!2302945))))))

(assert (= (and d!1834073 (not res!2458029)) b!5833022))

(assert (= (and b!5833022 res!2458030) b!5833023))

(declare-fun m!6761602 () Bool)

(assert (=> b!5833022 m!6761602))

(declare-fun m!6761604 () Bool)

(assert (=> b!5833023 m!6761604))

(assert (=> b!5831667 d!1834073))

(declare-fun bs!1375127 () Bool)

(declare-fun d!1834075 () Bool)

(assert (= bs!1375127 (and d!1834075 d!1833613)))

(declare-fun lambda!319108 () Int)

(assert (=> bs!1375127 (= lambda!319108 lambda!319061)))

(declare-fun bs!1375128 () Bool)

(assert (= bs!1375128 (and d!1834075 d!1833797)))

(assert (=> bs!1375128 (= lambda!319108 lambda!319083)))

(declare-fun bs!1375129 () Bool)

(assert (= bs!1375129 (and d!1834075 d!1834035)))

(assert (=> bs!1375129 (= lambda!319108 lambda!319107)))

(declare-fun bs!1375130 () Bool)

(assert (= bs!1375130 (and d!1834075 d!1833813)))

(assert (=> bs!1375130 (= lambda!319108 lambda!319086)))

(declare-fun bs!1375131 () Bool)

(assert (= bs!1375131 (and d!1834075 d!1833585)))

(assert (=> bs!1375131 (= lambda!319108 lambda!319052)))

(declare-fun bs!1375132 () Bool)

(assert (= bs!1375132 (and d!1834075 d!1833611)))

(assert (=> bs!1375132 (= lambda!319108 lambda!319058)))

(declare-fun bs!1375133 () Bool)

(assert (= bs!1375133 (and d!1834075 d!1833783)))

(assert (=> bs!1375133 (= lambda!319108 lambda!319082)))

(declare-fun bs!1375134 () Bool)

(assert (= bs!1375134 (and d!1834075 d!1834001)))

(assert (=> bs!1375134 (= lambda!319108 lambda!319104)))

(declare-fun bs!1375135 () Bool)

(assert (= bs!1375135 (and d!1834075 d!1833609)))

(assert (=> bs!1375135 (= lambda!319108 lambda!319055)))

(declare-fun bs!1375136 () Bool)

(assert (= bs!1375136 (and d!1834075 d!1833761)))

(assert (=> bs!1375136 (= lambda!319108 lambda!319079)))

(declare-fun bs!1375137 () Bool)

(assert (= bs!1375137 (and d!1834075 d!1833619)))

(assert (=> bs!1375137 (= lambda!319108 lambda!319062)))

(declare-fun bs!1375138 () Bool)

(assert (= bs!1375138 (and d!1834075 d!1833741)))

(assert (=> bs!1375138 (= lambda!319108 lambda!319078)))

(declare-fun b!5833024 () Bool)

(declare-fun e!3578576 () Bool)

(declare-fun lt!2302984 () Regex!15887)

(assert (=> b!5833024 (= e!3578576 (= lt!2302984 (head!12336 (exprs!5771 (h!70285 (t!377316 zl!343))))))))

(declare-fun b!5833025 () Bool)

(declare-fun e!3578577 () Regex!15887)

(declare-fun e!3578572 () Regex!15887)

(assert (=> b!5833025 (= e!3578577 e!3578572)))

(declare-fun c!1033506 () Bool)

(assert (=> b!5833025 (= c!1033506 ((_ is Cons!63836) (exprs!5771 (h!70285 (t!377316 zl!343)))))))

(declare-fun b!5833026 () Bool)

(assert (=> b!5833026 (= e!3578576 (isConcat!849 lt!2302984))))

(declare-fun b!5833027 () Bool)

(assert (=> b!5833027 (= e!3578572 (Concat!24732 (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343)))) (generalisedConcat!1484 (t!377315 (exprs!5771 (h!70285 (t!377316 zl!343)))))))))

(declare-fun b!5833028 () Bool)

(declare-fun e!3578574 () Bool)

(assert (=> b!5833028 (= e!3578574 (isEmpty!35705 (t!377315 (exprs!5771 (h!70285 (t!377316 zl!343))))))))

(declare-fun b!5833029 () Bool)

(declare-fun e!3578575 () Bool)

(declare-fun e!3578573 () Bool)

(assert (=> b!5833029 (= e!3578575 e!3578573)))

(declare-fun c!1033507 () Bool)

(assert (=> b!5833029 (= c!1033507 (isEmpty!35705 (exprs!5771 (h!70285 (t!377316 zl!343)))))))

(assert (=> d!1834075 e!3578575))

(declare-fun res!2458031 () Bool)

(assert (=> d!1834075 (=> (not res!2458031) (not e!3578575))))

(assert (=> d!1834075 (= res!2458031 (validRegex!7623 lt!2302984))))

(assert (=> d!1834075 (= lt!2302984 e!3578577)))

(declare-fun c!1033508 () Bool)

(assert (=> d!1834075 (= c!1033508 e!3578574)))

(declare-fun res!2458032 () Bool)

(assert (=> d!1834075 (=> (not res!2458032) (not e!3578574))))

(assert (=> d!1834075 (= res!2458032 ((_ is Cons!63836) (exprs!5771 (h!70285 (t!377316 zl!343)))))))

(assert (=> d!1834075 (forall!14978 (exprs!5771 (h!70285 (t!377316 zl!343))) lambda!319108)))

(assert (=> d!1834075 (= (generalisedConcat!1484 (exprs!5771 (h!70285 (t!377316 zl!343)))) lt!2302984)))

(declare-fun b!5833030 () Bool)

(assert (=> b!5833030 (= e!3578573 (isEmptyExpr!1326 lt!2302984))))

(declare-fun b!5833031 () Bool)

(assert (=> b!5833031 (= e!3578573 e!3578576)))

(declare-fun c!1033509 () Bool)

(assert (=> b!5833031 (= c!1033509 (isEmpty!35705 (tail!11421 (exprs!5771 (h!70285 (t!377316 zl!343))))))))

(declare-fun b!5833032 () Bool)

(assert (=> b!5833032 (= e!3578577 (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343)))))))

(declare-fun b!5833033 () Bool)

(assert (=> b!5833033 (= e!3578572 EmptyExpr!15887)))

(assert (= (and d!1834075 res!2458032) b!5833028))

(assert (= (and d!1834075 c!1033508) b!5833032))

(assert (= (and d!1834075 (not c!1033508)) b!5833025))

(assert (= (and b!5833025 c!1033506) b!5833027))

(assert (= (and b!5833025 (not c!1033506)) b!5833033))

(assert (= (and d!1834075 res!2458031) b!5833029))

(assert (= (and b!5833029 c!1033507) b!5833030))

(assert (= (and b!5833029 (not c!1033507)) b!5833031))

(assert (= (and b!5833031 c!1033509) b!5833024))

(assert (= (and b!5833031 (not c!1033509)) b!5833026))

(declare-fun m!6761606 () Bool)

(assert (=> b!5833026 m!6761606))

(declare-fun m!6761608 () Bool)

(assert (=> b!5833027 m!6761608))

(declare-fun m!6761610 () Bool)

(assert (=> b!5833024 m!6761610))

(declare-fun m!6761612 () Bool)

(assert (=> b!5833028 m!6761612))

(declare-fun m!6761614 () Bool)

(assert (=> b!5833031 m!6761614))

(assert (=> b!5833031 m!6761614))

(declare-fun m!6761616 () Bool)

(assert (=> b!5833031 m!6761616))

(declare-fun m!6761618 () Bool)

(assert (=> b!5833030 m!6761618))

(declare-fun m!6761620 () Bool)

(assert (=> d!1834075 m!6761620))

(declare-fun m!6761622 () Bool)

(assert (=> d!1834075 m!6761622))

(declare-fun m!6761624 () Bool)

(assert (=> b!5833029 m!6761624))

(assert (=> b!5831677 d!1834075))

(declare-fun bs!1375139 () Bool)

(declare-fun d!1834077 () Bool)

(assert (= bs!1375139 (and d!1834077 d!1833613)))

(declare-fun lambda!319109 () Int)

(assert (=> bs!1375139 (= lambda!319109 lambda!319061)))

(declare-fun bs!1375140 () Bool)

(assert (= bs!1375140 (and d!1834077 d!1833797)))

(assert (=> bs!1375140 (= lambda!319109 lambda!319083)))

(declare-fun bs!1375141 () Bool)

(assert (= bs!1375141 (and d!1834077 d!1834035)))

(assert (=> bs!1375141 (= lambda!319109 lambda!319107)))

(declare-fun bs!1375142 () Bool)

(assert (= bs!1375142 (and d!1834077 d!1833813)))

(assert (=> bs!1375142 (= lambda!319109 lambda!319086)))

(declare-fun bs!1375143 () Bool)

(assert (= bs!1375143 (and d!1834077 d!1833585)))

(assert (=> bs!1375143 (= lambda!319109 lambda!319052)))

(declare-fun bs!1375144 () Bool)

(assert (= bs!1375144 (and d!1834077 d!1833611)))

(assert (=> bs!1375144 (= lambda!319109 lambda!319058)))

(declare-fun bs!1375145 () Bool)

(assert (= bs!1375145 (and d!1834077 d!1833783)))

(assert (=> bs!1375145 (= lambda!319109 lambda!319082)))

(declare-fun bs!1375146 () Bool)

(assert (= bs!1375146 (and d!1834077 d!1833609)))

(assert (=> bs!1375146 (= lambda!319109 lambda!319055)))

(declare-fun bs!1375147 () Bool)

(assert (= bs!1375147 (and d!1834077 d!1833761)))

(assert (=> bs!1375147 (= lambda!319109 lambda!319079)))

(declare-fun bs!1375148 () Bool)

(assert (= bs!1375148 (and d!1834077 d!1833619)))

(assert (=> bs!1375148 (= lambda!319109 lambda!319062)))

(declare-fun bs!1375149 () Bool)

(assert (= bs!1375149 (and d!1834077 d!1833741)))

(assert (=> bs!1375149 (= lambda!319109 lambda!319078)))

(declare-fun bs!1375150 () Bool)

(assert (= bs!1375150 (and d!1834077 d!1834001)))

(assert (=> bs!1375150 (= lambda!319109 lambda!319104)))

(declare-fun bs!1375151 () Bool)

(assert (= bs!1375151 (and d!1834077 d!1834075)))

(assert (=> bs!1375151 (= lambda!319109 lambda!319108)))

(declare-fun lt!2302985 () List!63960)

(assert (=> d!1834077 (forall!14978 lt!2302985 lambda!319109)))

(declare-fun e!3578578 () List!63960)

(assert (=> d!1834077 (= lt!2302985 e!3578578)))

(declare-fun c!1033510 () Bool)

(assert (=> d!1834077 (= c!1033510 ((_ is Cons!63837) (t!377316 (t!377316 zl!343))))))

(assert (=> d!1834077 (= (unfocusZipperList!1308 (t!377316 (t!377316 zl!343))) lt!2302985)))

(declare-fun b!5833034 () Bool)

(assert (=> b!5833034 (= e!3578578 (Cons!63836 (generalisedConcat!1484 (exprs!5771 (h!70285 (t!377316 (t!377316 zl!343))))) (unfocusZipperList!1308 (t!377316 (t!377316 (t!377316 zl!343))))))))

(declare-fun b!5833035 () Bool)

(assert (=> b!5833035 (= e!3578578 Nil!63836)))

(assert (= (and d!1834077 c!1033510) b!5833034))

(assert (= (and d!1834077 (not c!1033510)) b!5833035))

(declare-fun m!6761626 () Bool)

(assert (=> d!1834077 m!6761626))

(declare-fun m!6761628 () Bool)

(assert (=> b!5833034 m!6761628))

(declare-fun m!6761630 () Bool)

(assert (=> b!5833034 m!6761630))

(assert (=> b!5831677 d!1834077))

(declare-fun d!1834079 () Bool)

(declare-fun c!1033511 () Bool)

(assert (=> d!1834079 (= c!1033511 ((_ is Nil!63837) (t!377316 lt!2302945)))))

(declare-fun e!3578579 () (InoxSet Context!10542))

(assert (=> d!1834079 (= (content!11722 (t!377316 lt!2302945)) e!3578579)))

(declare-fun b!5833036 () Bool)

(assert (=> b!5833036 (= e!3578579 ((as const (Array Context!10542 Bool)) false))))

(declare-fun b!5833037 () Bool)

(assert (=> b!5833037 (= e!3578579 ((_ map or) (store ((as const (Array Context!10542 Bool)) false) (h!70285 (t!377316 lt!2302945)) true) (content!11722 (t!377316 (t!377316 lt!2302945)))))))

(assert (= (and d!1834079 c!1033511) b!5833036))

(assert (= (and d!1834079 (not c!1033511)) b!5833037))

(declare-fun m!6761632 () Bool)

(assert (=> b!5833037 m!6761632))

(declare-fun m!6761634 () Bool)

(assert (=> b!5833037 m!6761634))

(assert (=> b!5831713 d!1834079))

(declare-fun bs!1375152 () Bool)

(declare-fun d!1834081 () Bool)

(assert (= bs!1375152 (and d!1834081 d!1833613)))

(declare-fun lambda!319110 () Int)

(assert (=> bs!1375152 (= lambda!319110 lambda!319061)))

(declare-fun bs!1375153 () Bool)

(assert (= bs!1375153 (and d!1834081 d!1833797)))

(assert (=> bs!1375153 (= lambda!319110 lambda!319083)))

(declare-fun bs!1375154 () Bool)

(assert (= bs!1375154 (and d!1834081 d!1834035)))

(assert (=> bs!1375154 (= lambda!319110 lambda!319107)))

(declare-fun bs!1375155 () Bool)

(assert (= bs!1375155 (and d!1834081 d!1834077)))

(assert (=> bs!1375155 (= lambda!319110 lambda!319109)))

(declare-fun bs!1375156 () Bool)

(assert (= bs!1375156 (and d!1834081 d!1833813)))

(assert (=> bs!1375156 (= lambda!319110 lambda!319086)))

(declare-fun bs!1375157 () Bool)

(assert (= bs!1375157 (and d!1834081 d!1833585)))

(assert (=> bs!1375157 (= lambda!319110 lambda!319052)))

(declare-fun bs!1375158 () Bool)

(assert (= bs!1375158 (and d!1834081 d!1833611)))

(assert (=> bs!1375158 (= lambda!319110 lambda!319058)))

(declare-fun bs!1375159 () Bool)

(assert (= bs!1375159 (and d!1834081 d!1833783)))

(assert (=> bs!1375159 (= lambda!319110 lambda!319082)))

(declare-fun bs!1375160 () Bool)

(assert (= bs!1375160 (and d!1834081 d!1833609)))

(assert (=> bs!1375160 (= lambda!319110 lambda!319055)))

(declare-fun bs!1375161 () Bool)

(assert (= bs!1375161 (and d!1834081 d!1833761)))

(assert (=> bs!1375161 (= lambda!319110 lambda!319079)))

(declare-fun bs!1375162 () Bool)

(assert (= bs!1375162 (and d!1834081 d!1833619)))

(assert (=> bs!1375162 (= lambda!319110 lambda!319062)))

(declare-fun bs!1375163 () Bool)

(assert (= bs!1375163 (and d!1834081 d!1833741)))

(assert (=> bs!1375163 (= lambda!319110 lambda!319078)))

(declare-fun bs!1375164 () Bool)

(assert (= bs!1375164 (and d!1834081 d!1834001)))

(assert (=> bs!1375164 (= lambda!319110 lambda!319104)))

(declare-fun bs!1375165 () Bool)

(assert (= bs!1375165 (and d!1834081 d!1834075)))

(assert (=> bs!1375165 (= lambda!319110 lambda!319108)))

(assert (=> d!1834081 (= (inv!82964 (h!70285 (t!377316 (t!377316 zl!343)))) (forall!14978 (exprs!5771 (h!70285 (t!377316 (t!377316 zl!343)))) lambda!319110))))

(declare-fun bs!1375166 () Bool)

(assert (= bs!1375166 d!1834081))

(declare-fun m!6761636 () Bool)

(assert (=> bs!1375166 m!6761636))

(assert (=> b!5831822 d!1834081))

(declare-fun b!5833038 () Bool)

(declare-fun e!3578586 () Bool)

(declare-fun e!3578582 () Bool)

(assert (=> b!5833038 (= e!3578586 e!3578582)))

(declare-fun res!2458033 () Bool)

(assert (=> b!5833038 (= res!2458033 (not (nullable!5889 (reg!16216 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))))

(assert (=> b!5833038 (=> (not res!2458033) (not e!3578582))))

(declare-fun b!5833039 () Bool)

(declare-fun e!3578583 () Bool)

(declare-fun call!455594 () Bool)

(assert (=> b!5833039 (= e!3578583 call!455594)))

(declare-fun bm!455587 () Bool)

(declare-fun call!455592 () Bool)

(declare-fun call!455593 () Bool)

(assert (=> bm!455587 (= call!455592 call!455593)))

(declare-fun b!5833040 () Bool)

(assert (=> b!5833040 (= e!3578582 call!455593)))

(declare-fun b!5833041 () Bool)

(declare-fun e!3578580 () Bool)

(assert (=> b!5833041 (= e!3578580 e!3578583)))

(declare-fun res!2458036 () Bool)

(assert (=> b!5833041 (=> (not res!2458036) (not e!3578583))))

(assert (=> b!5833041 (= res!2458036 call!455592)))

(declare-fun b!5833042 () Bool)

(declare-fun res!2458034 () Bool)

(assert (=> b!5833042 (=> res!2458034 e!3578580)))

(assert (=> b!5833042 (= res!2458034 (not ((_ is Concat!24732) (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))

(declare-fun e!3578581 () Bool)

(assert (=> b!5833042 (= e!3578581 e!3578580)))

(declare-fun b!5833043 () Bool)

(declare-fun res!2458035 () Bool)

(declare-fun e!3578585 () Bool)

(assert (=> b!5833043 (=> (not res!2458035) (not e!3578585))))

(assert (=> b!5833043 (= res!2458035 call!455592)))

(assert (=> b!5833043 (= e!3578581 e!3578585)))

(declare-fun d!1834083 () Bool)

(declare-fun res!2458037 () Bool)

(declare-fun e!3578584 () Bool)

(assert (=> d!1834083 (=> res!2458037 e!3578584)))

(assert (=> d!1834083 (= res!2458037 ((_ is ElementMatch!15887) (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))

(assert (=> d!1834083 (= (validRegex!7623 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))) e!3578584)))

(declare-fun c!1033512 () Bool)

(declare-fun c!1033513 () Bool)

(declare-fun bm!455588 () Bool)

(assert (=> bm!455588 (= call!455593 (validRegex!7623 (ite c!1033512 (reg!16216 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))) (ite c!1033513 (regOne!32287 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))) (regOne!32286 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))))

(declare-fun bm!455589 () Bool)

(assert (=> bm!455589 (= call!455594 (validRegex!7623 (ite c!1033513 (regTwo!32287 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))) (regTwo!32286 (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))))

(declare-fun b!5833044 () Bool)

(assert (=> b!5833044 (= e!3578586 e!3578581)))

(assert (=> b!5833044 (= c!1033513 ((_ is Union!15887) (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))

(declare-fun b!5833045 () Bool)

(assert (=> b!5833045 (= e!3578585 call!455594)))

(declare-fun b!5833046 () Bool)

(assert (=> b!5833046 (= e!3578584 e!3578586)))

(assert (=> b!5833046 (= c!1033512 ((_ is Star!15887) (ite c!1033330 (regTwo!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regTwo!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))

(assert (= (and d!1834083 (not res!2458037)) b!5833046))

(assert (= (and b!5833046 c!1033512) b!5833038))

(assert (= (and b!5833046 (not c!1033512)) b!5833044))

(assert (= (and b!5833038 res!2458033) b!5833040))

(assert (= (and b!5833044 c!1033513) b!5833043))

(assert (= (and b!5833044 (not c!1033513)) b!5833042))

(assert (= (and b!5833043 res!2458035) b!5833045))

(assert (= (and b!5833042 (not res!2458034)) b!5833041))

(assert (= (and b!5833041 res!2458036) b!5833039))

(assert (= (or b!5833045 b!5833039) bm!455589))

(assert (= (or b!5833043 b!5833041) bm!455587))

(assert (= (or b!5833040 bm!455587) bm!455588))

(declare-fun m!6761638 () Bool)

(assert (=> b!5833038 m!6761638))

(declare-fun m!6761640 () Bool)

(assert (=> bm!455588 m!6761640))

(declare-fun m!6761642 () Bool)

(assert (=> bm!455589 m!6761642))

(assert (=> bm!455433 d!1834083))

(declare-fun d!1834085 () Bool)

(assert (=> d!1834085 (= (isEmpty!35705 (tail!11421 (t!377315 (unfocusZipperList!1308 zl!343)))) ((_ is Nil!63836) (tail!11421 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(assert (=> b!5831808 d!1834085))

(declare-fun d!1834087 () Bool)

(assert (=> d!1834087 (= (tail!11421 (t!377315 (unfocusZipperList!1308 zl!343))) (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))))))

(assert (=> b!5831808 d!1834087))

(assert (=> bm!455430 d!1833737))

(declare-fun b!5833047 () Bool)

(declare-fun e!3578593 () Bool)

(declare-fun e!3578589 () Bool)

(assert (=> b!5833047 (= e!3578593 e!3578589)))

(declare-fun res!2458038 () Bool)

(assert (=> b!5833047 (= res!2458038 (not (nullable!5889 (reg!16216 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))))))))

(assert (=> b!5833047 (=> (not res!2458038) (not e!3578589))))

(declare-fun b!5833048 () Bool)

(declare-fun e!3578590 () Bool)

(declare-fun call!455597 () Bool)

(assert (=> b!5833048 (= e!3578590 call!455597)))

(declare-fun bm!455590 () Bool)

(declare-fun call!455595 () Bool)

(declare-fun call!455596 () Bool)

(assert (=> bm!455590 (= call!455595 call!455596)))

(declare-fun b!5833049 () Bool)

(assert (=> b!5833049 (= e!3578589 call!455596)))

(declare-fun b!5833050 () Bool)

(declare-fun e!3578587 () Bool)

(assert (=> b!5833050 (= e!3578587 e!3578590)))

(declare-fun res!2458041 () Bool)

(assert (=> b!5833050 (=> (not res!2458041) (not e!3578590))))

(assert (=> b!5833050 (= res!2458041 call!455595)))

(declare-fun b!5833051 () Bool)

(declare-fun res!2458039 () Bool)

(assert (=> b!5833051 (=> res!2458039 e!3578587)))

(assert (=> b!5833051 (= res!2458039 (not ((_ is Concat!24732) (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936))))))))

(declare-fun e!3578588 () Bool)

(assert (=> b!5833051 (= e!3578588 e!3578587)))

(declare-fun b!5833052 () Bool)

(declare-fun res!2458040 () Bool)

(declare-fun e!3578592 () Bool)

(assert (=> b!5833052 (=> (not res!2458040) (not e!3578592))))

(assert (=> b!5833052 (= res!2458040 call!455595)))

(assert (=> b!5833052 (= e!3578588 e!3578592)))

(declare-fun d!1834089 () Bool)

(declare-fun res!2458042 () Bool)

(declare-fun e!3578591 () Bool)

(assert (=> d!1834089 (=> res!2458042 e!3578591)))

(assert (=> d!1834089 (= res!2458042 ((_ is ElementMatch!15887) (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))))))

(assert (=> d!1834089 (= (validRegex!7623 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))) e!3578591)))

(declare-fun bm!455591 () Bool)

(declare-fun c!1033515 () Bool)

(declare-fun c!1033514 () Bool)

(assert (=> bm!455591 (= call!455596 (validRegex!7623 (ite c!1033514 (reg!16216 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))) (ite c!1033515 (regOne!32287 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))) (regOne!32286 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936))))))))))

(declare-fun bm!455592 () Bool)

(assert (=> bm!455592 (= call!455597 (validRegex!7623 (ite c!1033515 (regTwo!32287 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))) (regTwo!32286 (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))))))))

(declare-fun b!5833053 () Bool)

(assert (=> b!5833053 (= e!3578593 e!3578588)))

(assert (=> b!5833053 (= c!1033515 ((_ is Union!15887) (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))))))

(declare-fun b!5833054 () Bool)

(assert (=> b!5833054 (= e!3578592 call!455597)))

(declare-fun b!5833055 () Bool)

(assert (=> b!5833055 (= e!3578591 e!3578593)))

(assert (=> b!5833055 (= c!1033514 ((_ is Star!15887) (ite c!1033322 (reg!16216 lt!2302936) (ite c!1033323 (regOne!32287 lt!2302936) (regOne!32286 lt!2302936)))))))

(assert (= (and d!1834089 (not res!2458042)) b!5833055))

(assert (= (and b!5833055 c!1033514) b!5833047))

(assert (= (and b!5833055 (not c!1033514)) b!5833053))

(assert (= (and b!5833047 res!2458038) b!5833049))

(assert (= (and b!5833053 c!1033515) b!5833052))

(assert (= (and b!5833053 (not c!1033515)) b!5833051))

(assert (= (and b!5833052 res!2458040) b!5833054))

(assert (= (and b!5833051 (not res!2458039)) b!5833050))

(assert (= (and b!5833050 res!2458041) b!5833048))

(assert (= (or b!5833054 b!5833048) bm!455592))

(assert (= (or b!5833052 b!5833050) bm!455590))

(assert (= (or b!5833049 bm!455590) bm!455591))

(declare-fun m!6761644 () Bool)

(assert (=> b!5833047 m!6761644))

(declare-fun m!6761646 () Bool)

(assert (=> bm!455591 m!6761646))

(declare-fun m!6761648 () Bool)

(assert (=> bm!455592 m!6761648))

(assert (=> bm!455427 d!1834089))

(declare-fun d!1834091 () Bool)

(assert (=> d!1834091 (= (nullable!5889 (reg!16216 lt!2302942)) (nullableFct!1890 (reg!16216 lt!2302942)))))

(declare-fun bs!1375167 () Bool)

(assert (= bs!1375167 d!1834091))

(declare-fun m!6761650 () Bool)

(assert (=> bs!1375167 m!6761650))

(assert (=> b!5831792 d!1834091))

(declare-fun d!1834093 () Bool)

(declare-fun res!2458043 () Bool)

(declare-fun e!3578594 () Bool)

(assert (=> d!1834093 (=> res!2458043 e!3578594)))

(assert (=> d!1834093 (= res!2458043 ((_ is Nil!63836) (exprs!5771 (h!70285 (t!377316 zl!343)))))))

(assert (=> d!1834093 (= (forall!14978 (exprs!5771 (h!70285 (t!377316 zl!343))) lambda!319078) e!3578594)))

(declare-fun b!5833056 () Bool)

(declare-fun e!3578595 () Bool)

(assert (=> b!5833056 (= e!3578594 e!3578595)))

(declare-fun res!2458044 () Bool)

(assert (=> b!5833056 (=> (not res!2458044) (not e!3578595))))

(assert (=> b!5833056 (= res!2458044 (dynLambda!24974 lambda!319078 (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343))))))))

(declare-fun b!5833057 () Bool)

(assert (=> b!5833057 (= e!3578595 (forall!14978 (t!377315 (exprs!5771 (h!70285 (t!377316 zl!343)))) lambda!319078))))

(assert (= (and d!1834093 (not res!2458043)) b!5833056))

(assert (= (and b!5833056 res!2458044) b!5833057))

(declare-fun b_lambda!219837 () Bool)

(assert (=> (not b_lambda!219837) (not b!5833056)))

(declare-fun m!6761652 () Bool)

(assert (=> b!5833056 m!6761652))

(declare-fun m!6761654 () Bool)

(assert (=> b!5833057 m!6761654))

(assert (=> d!1833741 d!1834093))

(declare-fun d!1834095 () Bool)

(assert (=> d!1834095 (= (nullable!5889 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))) (nullableFct!1890 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))

(declare-fun bs!1375168 () Bool)

(assert (= bs!1375168 d!1834095))

(declare-fun m!6761656 () Bool)

(assert (=> bs!1375168 m!6761656))

(assert (=> b!5831690 d!1834095))

(declare-fun d!1834097 () Bool)

(declare-fun res!2458045 () Bool)

(declare-fun e!3578596 () Bool)

(assert (=> d!1834097 (=> res!2458045 e!3578596)))

(assert (=> d!1834097 (= res!2458045 ((_ is Nil!63836) (t!377315 (unfocusZipperList!1308 zl!343))))))

(assert (=> d!1834097 (= (forall!14978 (t!377315 (unfocusZipperList!1308 zl!343)) lambda!319052) e!3578596)))

(declare-fun b!5833058 () Bool)

(declare-fun e!3578597 () Bool)

(assert (=> b!5833058 (= e!3578596 e!3578597)))

(declare-fun res!2458046 () Bool)

(assert (=> b!5833058 (=> (not res!2458046) (not e!3578597))))

(assert (=> b!5833058 (= res!2458046 (dynLambda!24974 lambda!319052 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5833059 () Bool)

(assert (=> b!5833059 (= e!3578597 (forall!14978 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))) lambda!319052))))

(assert (= (and d!1834097 (not res!2458045)) b!5833058))

(assert (= (and b!5833058 res!2458046) b!5833059))

(declare-fun b_lambda!219839 () Bool)

(assert (=> (not b_lambda!219839) (not b!5833058)))

(declare-fun m!6761658 () Bool)

(assert (=> b!5833058 m!6761658))

(declare-fun m!6761660 () Bool)

(assert (=> b!5833059 m!6761660))

(assert (=> b!5831659 d!1834097))

(declare-fun b!5833060 () Bool)

(declare-fun e!3578604 () Bool)

(declare-fun e!3578600 () Bool)

(assert (=> b!5833060 (= e!3578604 e!3578600)))

(declare-fun res!2458047 () Bool)

(assert (=> b!5833060 (= res!2458047 (not (nullable!5889 (reg!16216 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))))

(assert (=> b!5833060 (=> (not res!2458047) (not e!3578600))))

(declare-fun b!5833061 () Bool)

(declare-fun e!3578601 () Bool)

(declare-fun call!455600 () Bool)

(assert (=> b!5833061 (= e!3578601 call!455600)))

(declare-fun bm!455593 () Bool)

(declare-fun call!455598 () Bool)

(declare-fun call!455599 () Bool)

(assert (=> bm!455593 (= call!455598 call!455599)))

(declare-fun b!5833062 () Bool)

(assert (=> b!5833062 (= e!3578600 call!455599)))

(declare-fun b!5833063 () Bool)

(declare-fun e!3578598 () Bool)

(assert (=> b!5833063 (= e!3578598 e!3578601)))

(declare-fun res!2458050 () Bool)

(assert (=> b!5833063 (=> (not res!2458050) (not e!3578601))))

(assert (=> b!5833063 (= res!2458050 call!455598)))

(declare-fun b!5833064 () Bool)

(declare-fun res!2458048 () Bool)

(assert (=> b!5833064 (=> res!2458048 e!3578598)))

(assert (=> b!5833064 (= res!2458048 (not ((_ is Concat!24732) (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))))

(declare-fun e!3578599 () Bool)

(assert (=> b!5833064 (= e!3578599 e!3578598)))

(declare-fun b!5833065 () Bool)

(declare-fun res!2458049 () Bool)

(declare-fun e!3578603 () Bool)

(assert (=> b!5833065 (=> (not res!2458049) (not e!3578603))))

(assert (=> b!5833065 (= res!2458049 call!455598)))

(assert (=> b!5833065 (= e!3578599 e!3578603)))

(declare-fun d!1834099 () Bool)

(declare-fun res!2458051 () Bool)

(declare-fun e!3578602 () Bool)

(assert (=> d!1834099 (=> res!2458051 e!3578602)))

(assert (=> d!1834099 (= res!2458051 ((_ is ElementMatch!15887) (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))

(assert (=> d!1834099 (= (validRegex!7623 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))) e!3578602)))

(declare-fun c!1033517 () Bool)

(declare-fun c!1033516 () Bool)

(declare-fun bm!455594 () Bool)

(assert (=> bm!455594 (= call!455599 (validRegex!7623 (ite c!1033516 (reg!16216 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))) (ite c!1033517 (regOne!32287 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))) (regOne!32286 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))))))))))))

(declare-fun bm!455595 () Bool)

(assert (=> bm!455595 (= call!455600 (validRegex!7623 (ite c!1033517 (regTwo!32287 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))) (regTwo!32286 (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))))

(declare-fun b!5833066 () Bool)

(assert (=> b!5833066 (= e!3578604 e!3578599)))

(assert (=> b!5833066 (= c!1033517 ((_ is Union!15887) (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))

(declare-fun b!5833067 () Bool)

(assert (=> b!5833067 (= e!3578603 call!455600)))

(declare-fun b!5833068 () Bool)

(assert (=> b!5833068 (= e!3578602 e!3578604)))

(assert (=> b!5833068 (= c!1033516 ((_ is Star!15887) (ite c!1033331 (reg!16216 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (ite c!1033332 (regOne!32287 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292))) (regOne!32286 (ite c!1033252 (regTwo!32287 r!7292) (regTwo!32286 r!7292)))))))))

(assert (= (and d!1834099 (not res!2458051)) b!5833068))

(assert (= (and b!5833068 c!1033516) b!5833060))

(assert (= (and b!5833068 (not c!1033516)) b!5833066))

(assert (= (and b!5833060 res!2458047) b!5833062))

(assert (= (and b!5833066 c!1033517) b!5833065))

(assert (= (and b!5833066 (not c!1033517)) b!5833064))

(assert (= (and b!5833065 res!2458049) b!5833067))

(assert (= (and b!5833064 (not res!2458048)) b!5833063))

(assert (= (and b!5833063 res!2458050) b!5833061))

(assert (= (or b!5833067 b!5833061) bm!455595))

(assert (= (or b!5833065 b!5833063) bm!455593))

(assert (= (or b!5833062 bm!455593) bm!455594))

(declare-fun m!6761662 () Bool)

(assert (=> b!5833060 m!6761662))

(declare-fun m!6761664 () Bool)

(assert (=> bm!455594 m!6761664))

(declare-fun m!6761666 () Bool)

(assert (=> bm!455595 m!6761666))

(assert (=> bm!455435 d!1834099))

(declare-fun b!5833069 () Bool)

(declare-fun e!3578611 () Bool)

(declare-fun e!3578607 () Bool)

(assert (=> b!5833069 (= e!3578611 e!3578607)))

(declare-fun res!2458052 () Bool)

(assert (=> b!5833069 (= res!2458052 (not (nullable!5889 (reg!16216 (h!70284 (unfocusZipperList!1308 zl!343))))))))

(assert (=> b!5833069 (=> (not res!2458052) (not e!3578607))))

(declare-fun b!5833070 () Bool)

(declare-fun e!3578608 () Bool)

(declare-fun call!455603 () Bool)

(assert (=> b!5833070 (= e!3578608 call!455603)))

(declare-fun bm!455596 () Bool)

(declare-fun call!455601 () Bool)

(declare-fun call!455602 () Bool)

(assert (=> bm!455596 (= call!455601 call!455602)))

(declare-fun b!5833071 () Bool)

(assert (=> b!5833071 (= e!3578607 call!455602)))

(declare-fun b!5833072 () Bool)

(declare-fun e!3578605 () Bool)

(assert (=> b!5833072 (= e!3578605 e!3578608)))

(declare-fun res!2458055 () Bool)

(assert (=> b!5833072 (=> (not res!2458055) (not e!3578608))))

(assert (=> b!5833072 (= res!2458055 call!455601)))

(declare-fun b!5833073 () Bool)

(declare-fun res!2458053 () Bool)

(assert (=> b!5833073 (=> res!2458053 e!3578605)))

(assert (=> b!5833073 (= res!2458053 (not ((_ is Concat!24732) (h!70284 (unfocusZipperList!1308 zl!343)))))))

(declare-fun e!3578606 () Bool)

(assert (=> b!5833073 (= e!3578606 e!3578605)))

(declare-fun b!5833074 () Bool)

(declare-fun res!2458054 () Bool)

(declare-fun e!3578610 () Bool)

(assert (=> b!5833074 (=> (not res!2458054) (not e!3578610))))

(assert (=> b!5833074 (= res!2458054 call!455601)))

(assert (=> b!5833074 (= e!3578606 e!3578610)))

(declare-fun d!1834101 () Bool)

(declare-fun res!2458056 () Bool)

(declare-fun e!3578609 () Bool)

(assert (=> d!1834101 (=> res!2458056 e!3578609)))

(assert (=> d!1834101 (= res!2458056 ((_ is ElementMatch!15887) (h!70284 (unfocusZipperList!1308 zl!343))))))

(assert (=> d!1834101 (= (validRegex!7623 (h!70284 (unfocusZipperList!1308 zl!343))) e!3578609)))

(declare-fun bm!455597 () Bool)

(declare-fun c!1033519 () Bool)

(declare-fun c!1033518 () Bool)

(assert (=> bm!455597 (= call!455602 (validRegex!7623 (ite c!1033518 (reg!16216 (h!70284 (unfocusZipperList!1308 zl!343))) (ite c!1033519 (regOne!32287 (h!70284 (unfocusZipperList!1308 zl!343))) (regOne!32286 (h!70284 (unfocusZipperList!1308 zl!343)))))))))

(declare-fun bm!455598 () Bool)

(assert (=> bm!455598 (= call!455603 (validRegex!7623 (ite c!1033519 (regTwo!32287 (h!70284 (unfocusZipperList!1308 zl!343))) (regTwo!32286 (h!70284 (unfocusZipperList!1308 zl!343))))))))

(declare-fun b!5833075 () Bool)

(assert (=> b!5833075 (= e!3578611 e!3578606)))

(assert (=> b!5833075 (= c!1033519 ((_ is Union!15887) (h!70284 (unfocusZipperList!1308 zl!343))))))

(declare-fun b!5833076 () Bool)

(assert (=> b!5833076 (= e!3578610 call!455603)))

(declare-fun b!5833077 () Bool)

(assert (=> b!5833077 (= e!3578609 e!3578611)))

(assert (=> b!5833077 (= c!1033518 ((_ is Star!15887) (h!70284 (unfocusZipperList!1308 zl!343))))))

(assert (= (and d!1834101 (not res!2458056)) b!5833077))

(assert (= (and b!5833077 c!1033518) b!5833069))

(assert (= (and b!5833077 (not c!1033518)) b!5833075))

(assert (= (and b!5833069 res!2458052) b!5833071))

(assert (= (and b!5833075 c!1033519) b!5833074))

(assert (= (and b!5833075 (not c!1033519)) b!5833073))

(assert (= (and b!5833074 res!2458054) b!5833076))

(assert (= (and b!5833073 (not res!2458053)) b!5833072))

(assert (= (and b!5833072 res!2458055) b!5833070))

(assert (= (or b!5833076 b!5833070) bm!455598))

(assert (= (or b!5833074 b!5833072) bm!455596))

(assert (= (or b!5833071 bm!455596) bm!455597))

(declare-fun m!6761668 () Bool)

(assert (=> b!5833069 m!6761668))

(declare-fun m!6761670 () Bool)

(assert (=> bm!455597 m!6761670))

(declare-fun m!6761672 () Bool)

(assert (=> bm!455598 m!6761672))

(assert (=> bs!1374875 d!1834101))

(declare-fun d!1834103 () Bool)

(declare-fun res!2458057 () Bool)

(declare-fun e!3578612 () Bool)

(assert (=> d!1834103 (=> res!2458057 e!3578612)))

(assert (=> d!1834103 (= res!2458057 ((_ is Nil!63836) (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> d!1834103 (= (forall!14978 (t!377315 (exprs!5771 (h!70285 zl!343))) lambda!319058) e!3578612)))

(declare-fun b!5833078 () Bool)

(declare-fun e!3578613 () Bool)

(assert (=> b!5833078 (= e!3578612 e!3578613)))

(declare-fun res!2458058 () Bool)

(assert (=> b!5833078 (=> (not res!2458058) (not e!3578613))))

(assert (=> b!5833078 (= res!2458058 (dynLambda!24974 lambda!319058 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun b!5833079 () Bool)

(assert (=> b!5833079 (= e!3578613 (forall!14978 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))) lambda!319058))))

(assert (= (and d!1834103 (not res!2458057)) b!5833078))

(assert (= (and b!5833078 res!2458058) b!5833079))

(declare-fun b_lambda!219841 () Bool)

(assert (=> (not b_lambda!219841) (not b!5833078)))

(declare-fun m!6761674 () Bool)

(assert (=> b!5833078 m!6761674))

(declare-fun m!6761676 () Bool)

(assert (=> b!5833079 m!6761676))

(assert (=> b!5831802 d!1834103))

(declare-fun d!1834105 () Bool)

(declare-fun res!2458059 () Bool)

(declare-fun e!3578614 () Bool)

(assert (=> d!1834105 (=> res!2458059 e!3578614)))

(assert (=> d!1834105 (= res!2458059 ((_ is Nil!63836) lt!2302962))))

(assert (=> d!1834105 (= (forall!14978 lt!2302962 lambda!319079) e!3578614)))

(declare-fun b!5833080 () Bool)

(declare-fun e!3578615 () Bool)

(assert (=> b!5833080 (= e!3578614 e!3578615)))

(declare-fun res!2458060 () Bool)

(assert (=> b!5833080 (=> (not res!2458060) (not e!3578615))))

(assert (=> b!5833080 (= res!2458060 (dynLambda!24974 lambda!319079 (h!70284 lt!2302962)))))

(declare-fun b!5833081 () Bool)

(assert (=> b!5833081 (= e!3578615 (forall!14978 (t!377315 lt!2302962) lambda!319079))))

(assert (= (and d!1834105 (not res!2458059)) b!5833080))

(assert (= (and b!5833080 res!2458060) b!5833081))

(declare-fun b_lambda!219843 () Bool)

(assert (=> (not b_lambda!219843) (not b!5833080)))

(declare-fun m!6761678 () Bool)

(assert (=> b!5833080 m!6761678))

(declare-fun m!6761680 () Bool)

(assert (=> b!5833081 m!6761680))

(assert (=> d!1833761 d!1834105))

(assert (=> bm!455454 d!1833737))

(declare-fun bm!455599 () Bool)

(declare-fun call!455605 () Regex!15887)

(declare-fun call!455606 () Regex!15887)

(assert (=> bm!455599 (= call!455605 call!455606)))

(declare-fun e!3578616 () Regex!15887)

(declare-fun b!5833082 () Bool)

(assert (=> b!5833082 (= e!3578616 (Union!15887 (Concat!24732 call!455605 (regTwo!32286 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))) EmptyLang!15887))))

(declare-fun b!5833083 () Bool)

(declare-fun e!3578618 () Regex!15887)

(declare-fun e!3578619 () Regex!15887)

(assert (=> b!5833083 (= e!3578618 e!3578619)))

(declare-fun c!1033520 () Bool)

(assert (=> b!5833083 (= c!1033520 ((_ is ElementMatch!15887) (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))))))

(declare-fun b!5833084 () Bool)

(declare-fun call!455604 () Regex!15887)

(assert (=> b!5833084 (= e!3578616 (Union!15887 (Concat!24732 call!455604 (regTwo!32286 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))) call!455605))))

(declare-fun c!1033521 () Bool)

(declare-fun call!455607 () Regex!15887)

(declare-fun c!1033522 () Bool)

(declare-fun bm!455600 () Bool)

(declare-fun c!1033523 () Bool)

(assert (=> bm!455600 (= call!455607 (derivativeStep!4629 (ite c!1033523 (regTwo!32287 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))) (ite c!1033522 (reg!16216 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))) (ite c!1033521 (regTwo!32286 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))) (regOne!32286 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))))) (head!12337 s!2326)))))

(declare-fun b!5833085 () Bool)

(declare-fun e!3578620 () Regex!15887)

(assert (=> b!5833085 (= e!3578620 (Union!15887 call!455604 call!455607))))

(declare-fun b!5833086 () Bool)

(assert (=> b!5833086 (= e!3578619 (ite (= (head!12337 s!2326) (c!1033165 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))) EmptyExpr!15887 EmptyLang!15887))))

(declare-fun b!5833087 () Bool)

(assert (=> b!5833087 (= c!1033521 (nullable!5889 (regOne!32286 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))

(declare-fun e!3578617 () Regex!15887)

(assert (=> b!5833087 (= e!3578617 e!3578616)))

(declare-fun b!5833088 () Bool)

(assert (=> b!5833088 (= e!3578620 e!3578617)))

(assert (=> b!5833088 (= c!1033522 ((_ is Star!15887) (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))))))

(declare-fun b!5833089 () Bool)

(assert (=> b!5833089 (= e!3578618 EmptyLang!15887)))

(declare-fun bm!455601 () Bool)

(assert (=> bm!455601 (= call!455606 call!455607)))

(declare-fun b!5833090 () Bool)

(assert (=> b!5833090 (= e!3578617 (Concat!24732 call!455606 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))))))

(declare-fun d!1834107 () Bool)

(declare-fun lt!2302986 () Regex!15887)

(assert (=> d!1834107 (validRegex!7623 lt!2302986)))

(assert (=> d!1834107 (= lt!2302986 e!3578618)))

(declare-fun c!1033524 () Bool)

(assert (=> d!1834107 (= c!1033524 (or ((_ is EmptyExpr!15887) (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))) ((_ is EmptyLang!15887) (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))

(assert (=> d!1834107 (validRegex!7623 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))))

(assert (=> d!1834107 (= (derivativeStep!4629 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)) (head!12337 s!2326)) lt!2302986)))

(declare-fun b!5833091 () Bool)

(assert (=> b!5833091 (= c!1033523 ((_ is Union!15887) (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))))))

(assert (=> b!5833091 (= e!3578619 e!3578620)))

(declare-fun bm!455602 () Bool)

(assert (=> bm!455602 (= call!455604 (derivativeStep!4629 (ite c!1033523 (regOne!32287 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292))) (regOne!32286 (ite c!1033352 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (head!12337 s!2326)))))

(assert (= (and d!1834107 c!1033524) b!5833089))

(assert (= (and d!1834107 (not c!1033524)) b!5833083))

(assert (= (and b!5833083 c!1033520) b!5833086))

(assert (= (and b!5833083 (not c!1033520)) b!5833091))

(assert (= (and b!5833091 c!1033523) b!5833085))

(assert (= (and b!5833091 (not c!1033523)) b!5833088))

(assert (= (and b!5833088 c!1033522) b!5833090))

(assert (= (and b!5833088 (not c!1033522)) b!5833087))

(assert (= (and b!5833087 c!1033521) b!5833084))

(assert (= (and b!5833087 (not c!1033521)) b!5833082))

(assert (= (or b!5833084 b!5833082) bm!455599))

(assert (= (or b!5833090 bm!455599) bm!455601))

(assert (= (or b!5833085 bm!455601) bm!455600))

(assert (= (or b!5833085 b!5833084) bm!455602))

(assert (=> bm!455600 m!6760746))

(declare-fun m!6761682 () Bool)

(assert (=> bm!455600 m!6761682))

(declare-fun m!6761684 () Bool)

(assert (=> b!5833087 m!6761684))

(declare-fun m!6761686 () Bool)

(assert (=> d!1834107 m!6761686))

(declare-fun m!6761688 () Bool)

(assert (=> d!1834107 m!6761688))

(assert (=> bm!455602 m!6760746))

(declare-fun m!6761690 () Bool)

(assert (=> bm!455602 m!6761690))

(assert (=> bm!455449 d!1834107))

(assert (=> bs!1374878 d!1834049))

(assert (=> b!5831721 d!1834041))

(declare-fun b!5833092 () Bool)

(declare-fun e!3578627 () Bool)

(declare-fun e!3578623 () Bool)

(assert (=> b!5833092 (= e!3578627 e!3578623)))

(declare-fun res!2458061 () Bool)

(assert (=> b!5833092 (= res!2458061 (not (nullable!5889 (reg!16216 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))))))))

(assert (=> b!5833092 (=> (not res!2458061) (not e!3578623))))

(declare-fun b!5833093 () Bool)

(declare-fun e!3578624 () Bool)

(declare-fun call!455610 () Bool)

(assert (=> b!5833093 (= e!3578624 call!455610)))

(declare-fun bm!455603 () Bool)

(declare-fun call!455608 () Bool)

(declare-fun call!455609 () Bool)

(assert (=> bm!455603 (= call!455608 call!455609)))

(declare-fun b!5833094 () Bool)

(assert (=> b!5833094 (= e!3578623 call!455609)))

(declare-fun b!5833095 () Bool)

(declare-fun e!3578621 () Bool)

(assert (=> b!5833095 (= e!3578621 e!3578624)))

(declare-fun res!2458064 () Bool)

(assert (=> b!5833095 (=> (not res!2458064) (not e!3578624))))

(assert (=> b!5833095 (= res!2458064 call!455608)))

(declare-fun b!5833096 () Bool)

(declare-fun res!2458062 () Bool)

(assert (=> b!5833096 (=> res!2458062 e!3578621)))

(assert (=> b!5833096 (= res!2458062 (not ((_ is Concat!24732) (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936)))))))

(declare-fun e!3578622 () Bool)

(assert (=> b!5833096 (= e!3578622 e!3578621)))

(declare-fun b!5833097 () Bool)

(declare-fun res!2458063 () Bool)

(declare-fun e!3578626 () Bool)

(assert (=> b!5833097 (=> (not res!2458063) (not e!3578626))))

(assert (=> b!5833097 (= res!2458063 call!455608)))

(assert (=> b!5833097 (= e!3578622 e!3578626)))

(declare-fun d!1834109 () Bool)

(declare-fun res!2458065 () Bool)

(declare-fun e!3578625 () Bool)

(assert (=> d!1834109 (=> res!2458065 e!3578625)))

(assert (=> d!1834109 (= res!2458065 ((_ is ElementMatch!15887) (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))))))

(assert (=> d!1834109 (= (validRegex!7623 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))) e!3578625)))

(declare-fun c!1033525 () Bool)

(declare-fun c!1033526 () Bool)

(declare-fun bm!455604 () Bool)

(assert (=> bm!455604 (= call!455609 (validRegex!7623 (ite c!1033525 (reg!16216 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))) (ite c!1033526 (regOne!32287 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))) (regOne!32286 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936)))))))))

(declare-fun bm!455605 () Bool)

(assert (=> bm!455605 (= call!455610 (validRegex!7623 (ite c!1033526 (regTwo!32287 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))) (regTwo!32286 (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))))))))

(declare-fun b!5833098 () Bool)

(assert (=> b!5833098 (= e!3578627 e!3578622)))

(assert (=> b!5833098 (= c!1033526 ((_ is Union!15887) (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))))))

(declare-fun b!5833099 () Bool)

(assert (=> b!5833099 (= e!3578626 call!455610)))

(declare-fun b!5833100 () Bool)

(assert (=> b!5833100 (= e!3578625 e!3578627)))

(assert (=> b!5833100 (= c!1033525 ((_ is Star!15887) (ite c!1033323 (regTwo!32287 lt!2302936) (regTwo!32286 lt!2302936))))))

(assert (= (and d!1834109 (not res!2458065)) b!5833100))

(assert (= (and b!5833100 c!1033525) b!5833092))

(assert (= (and b!5833100 (not c!1033525)) b!5833098))

(assert (= (and b!5833092 res!2458061) b!5833094))

(assert (= (and b!5833098 c!1033526) b!5833097))

(assert (= (and b!5833098 (not c!1033526)) b!5833096))

(assert (= (and b!5833097 res!2458063) b!5833099))

(assert (= (and b!5833096 (not res!2458062)) b!5833095))

(assert (= (and b!5833095 res!2458064) b!5833093))

(assert (= (or b!5833099 b!5833093) bm!455605))

(assert (= (or b!5833097 b!5833095) bm!455603))

(assert (= (or b!5833094 bm!455603) bm!455604))

(declare-fun m!6761692 () Bool)

(assert (=> b!5833092 m!6761692))

(declare-fun m!6761694 () Bool)

(assert (=> bm!455604 m!6761694))

(declare-fun m!6761696 () Bool)

(assert (=> bm!455605 m!6761696))

(assert (=> bm!455428 d!1834109))

(declare-fun bm!455606 () Bool)

(declare-fun call!455612 () Bool)

(declare-fun c!1033527 () Bool)

(assert (=> bm!455606 (= call!455612 (nullable!5889 (ite c!1033527 (regOne!32287 (reg!16216 r!7292)) (regOne!32286 (reg!16216 r!7292)))))))

(declare-fun b!5833101 () Bool)

(declare-fun e!3578632 () Bool)

(declare-fun e!3578633 () Bool)

(assert (=> b!5833101 (= e!3578632 e!3578633)))

(declare-fun res!2458066 () Bool)

(assert (=> b!5833101 (=> res!2458066 e!3578633)))

(assert (=> b!5833101 (= res!2458066 ((_ is Star!15887) (reg!16216 r!7292)))))

(declare-fun b!5833102 () Bool)

(declare-fun e!3578628 () Bool)

(declare-fun e!3578630 () Bool)

(assert (=> b!5833102 (= e!3578628 e!3578630)))

(declare-fun res!2458067 () Bool)

(assert (=> b!5833102 (= res!2458067 call!455612)))

(assert (=> b!5833102 (=> (not res!2458067) (not e!3578630))))

(declare-fun b!5833103 () Bool)

(assert (=> b!5833103 (= e!3578633 e!3578628)))

(assert (=> b!5833103 (= c!1033527 ((_ is Union!15887) (reg!16216 r!7292)))))

(declare-fun bm!455607 () Bool)

(declare-fun call!455611 () Bool)

(assert (=> bm!455607 (= call!455611 (nullable!5889 (ite c!1033527 (regTwo!32287 (reg!16216 r!7292)) (regTwo!32286 (reg!16216 r!7292)))))))

(declare-fun b!5833105 () Bool)

(declare-fun e!3578629 () Bool)

(assert (=> b!5833105 (= e!3578629 e!3578632)))

(declare-fun res!2458069 () Bool)

(assert (=> b!5833105 (=> (not res!2458069) (not e!3578632))))

(assert (=> b!5833105 (= res!2458069 (and (not ((_ is EmptyLang!15887) (reg!16216 r!7292))) (not ((_ is ElementMatch!15887) (reg!16216 r!7292)))))))

(declare-fun b!5833104 () Bool)

(declare-fun e!3578631 () Bool)

(assert (=> b!5833104 (= e!3578631 call!455611)))

(declare-fun d!1834111 () Bool)

(declare-fun res!2458068 () Bool)

(assert (=> d!1834111 (=> res!2458068 e!3578629)))

(assert (=> d!1834111 (= res!2458068 ((_ is EmptyExpr!15887) (reg!16216 r!7292)))))

(assert (=> d!1834111 (= (nullableFct!1890 (reg!16216 r!7292)) e!3578629)))

(declare-fun b!5833106 () Bool)

(assert (=> b!5833106 (= e!3578628 e!3578631)))

(declare-fun res!2458070 () Bool)

(assert (=> b!5833106 (= res!2458070 call!455612)))

(assert (=> b!5833106 (=> res!2458070 e!3578631)))

(declare-fun b!5833107 () Bool)

(assert (=> b!5833107 (= e!3578630 call!455611)))

(assert (= (and d!1834111 (not res!2458068)) b!5833105))

(assert (= (and b!5833105 res!2458069) b!5833101))

(assert (= (and b!5833101 (not res!2458066)) b!5833103))

(assert (= (and b!5833103 c!1033527) b!5833106))

(assert (= (and b!5833103 (not c!1033527)) b!5833102))

(assert (= (and b!5833106 (not res!2458070)) b!5833104))

(assert (= (and b!5833102 res!2458067) b!5833107))

(assert (= (or b!5833104 b!5833107) bm!455607))

(assert (= (or b!5833106 b!5833102) bm!455606))

(declare-fun m!6761698 () Bool)

(assert (=> bm!455606 m!6761698))

(declare-fun m!6761700 () Bool)

(assert (=> bm!455607 m!6761700))

(assert (=> d!1833781 d!1834111))

(declare-fun bs!1375169 () Bool)

(declare-fun d!1834113 () Bool)

(assert (= bs!1375169 (and d!1834113 d!1833613)))

(declare-fun lambda!319111 () Int)

(assert (=> bs!1375169 (= lambda!319111 lambda!319061)))

(declare-fun bs!1375170 () Bool)

(assert (= bs!1375170 (and d!1834113 d!1833797)))

(assert (=> bs!1375170 (= lambda!319111 lambda!319083)))

(declare-fun bs!1375171 () Bool)

(assert (= bs!1375171 (and d!1834113 d!1834035)))

(assert (=> bs!1375171 (= lambda!319111 lambda!319107)))

(declare-fun bs!1375172 () Bool)

(assert (= bs!1375172 (and d!1834113 d!1834077)))

(assert (=> bs!1375172 (= lambda!319111 lambda!319109)))

(declare-fun bs!1375173 () Bool)

(assert (= bs!1375173 (and d!1834113 d!1833813)))

(assert (=> bs!1375173 (= lambda!319111 lambda!319086)))

(declare-fun bs!1375174 () Bool)

(assert (= bs!1375174 (and d!1834113 d!1833585)))

(assert (=> bs!1375174 (= lambda!319111 lambda!319052)))

(declare-fun bs!1375175 () Bool)

(assert (= bs!1375175 (and d!1834113 d!1833611)))

(assert (=> bs!1375175 (= lambda!319111 lambda!319058)))

(declare-fun bs!1375176 () Bool)

(assert (= bs!1375176 (and d!1834113 d!1833783)))

(assert (=> bs!1375176 (= lambda!319111 lambda!319082)))

(declare-fun bs!1375177 () Bool)

(assert (= bs!1375177 (and d!1834113 d!1833609)))

(assert (=> bs!1375177 (= lambda!319111 lambda!319055)))

(declare-fun bs!1375178 () Bool)

(assert (= bs!1375178 (and d!1834113 d!1833761)))

(assert (=> bs!1375178 (= lambda!319111 lambda!319079)))

(declare-fun bs!1375179 () Bool)

(assert (= bs!1375179 (and d!1834113 d!1834081)))

(assert (=> bs!1375179 (= lambda!319111 lambda!319110)))

(declare-fun bs!1375180 () Bool)

(assert (= bs!1375180 (and d!1834113 d!1833619)))

(assert (=> bs!1375180 (= lambda!319111 lambda!319062)))

(declare-fun bs!1375181 () Bool)

(assert (= bs!1375181 (and d!1834113 d!1833741)))

(assert (=> bs!1375181 (= lambda!319111 lambda!319078)))

(declare-fun bs!1375182 () Bool)

(assert (= bs!1375182 (and d!1834113 d!1834001)))

(assert (=> bs!1375182 (= lambda!319111 lambda!319104)))

(declare-fun bs!1375183 () Bool)

(assert (= bs!1375183 (and d!1834113 d!1834075)))

(assert (=> bs!1375183 (= lambda!319111 lambda!319108)))

(assert (=> d!1834113 (= (inv!82964 setElem!39452) (forall!14978 (exprs!5771 setElem!39452) lambda!319111))))

(declare-fun bs!1375184 () Bool)

(assert (= bs!1375184 d!1834113))

(declare-fun m!6761702 () Bool)

(assert (=> bs!1375184 m!6761702))

(assert (=> setNonEmpty!39452 d!1834113))

(declare-fun d!1834115 () Bool)

(assert (=> d!1834115 (= (isConcat!849 lt!2302967) ((_ is Concat!24732) lt!2302967))))

(assert (=> b!5831760 d!1834115))

(declare-fun bs!1375185 () Bool)

(declare-fun b!5833114 () Bool)

(assert (= bs!1375185 (and b!5833114 b!5832857)))

(declare-fun lambda!319112 () Int)

(assert (=> bs!1375185 (= (and (= (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))) (reg!16216 (regOne!32287 (regTwo!32287 r!7292)))) (= (regTwo!32287 (regTwo!32287 r!7292)) (regOne!32287 (regTwo!32287 r!7292)))) (= lambda!319112 lambda!319102))))

(declare-fun bs!1375186 () Bool)

(assert (= bs!1375186 (and b!5833114 b!5831688)))

(assert (=> bs!1375186 (not (= lambda!319112 lambda!319081))))

(declare-fun bs!1375187 () Bool)

(assert (= bs!1375187 (and b!5833114 b!5832860)))

(assert (=> bs!1375187 (not (= lambda!319112 lambda!319103))))

(declare-fun bs!1375188 () Bool)

(assert (= bs!1375188 (and b!5833114 b!5831790)))

(assert (=> bs!1375188 (not (= lambda!319112 lambda!319085))))

(declare-fun bs!1375189 () Bool)

(assert (= bs!1375189 (and b!5833114 b!5832922)))

(assert (=> bs!1375189 (= (and (= (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))) (reg!16216 (regOne!32287 (regOne!32287 r!7292)))) (= (regTwo!32287 (regTwo!32287 r!7292)) (regOne!32287 (regOne!32287 r!7292)))) (= lambda!319112 lambda!319105))))

(declare-fun bs!1375190 () Bool)

(assert (= bs!1375190 (and b!5833114 b!5831301)))

(assert (=> bs!1375190 (not (= lambda!319112 lambda!319068))))

(declare-fun bs!1375191 () Bool)

(assert (= bs!1375191 (and b!5833114 b!5831298)))

(assert (=> bs!1375191 (= (and (= (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))) (reg!16216 r!7292)) (= (regTwo!32287 (regTwo!32287 r!7292)) r!7292)) (= lambda!319112 lambda!319067))))

(declare-fun bs!1375192 () Bool)

(assert (= bs!1375192 (and b!5833114 b!5831685)))

(assert (=> bs!1375192 (= (and (= (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))) (reg!16216 (regTwo!32287 r!7292))) (= (regTwo!32287 (regTwo!32287 r!7292)) (regTwo!32287 r!7292))) (= lambda!319112 lambda!319080))))

(declare-fun bs!1375193 () Bool)

(assert (= bs!1375193 (and b!5833114 b!5831787)))

(assert (=> bs!1375193 (= (and (= (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))) (reg!16216 (regOne!32287 r!7292))) (= (regTwo!32287 (regTwo!32287 r!7292)) (regOne!32287 r!7292))) (= lambda!319112 lambda!319084))))

(declare-fun bs!1375194 () Bool)

(assert (= bs!1375194 (and b!5833114 b!5832925)))

(assert (=> bs!1375194 (not (= lambda!319112 lambda!319106))))

(assert (=> b!5833114 true))

(assert (=> b!5833114 true))

(declare-fun bs!1375195 () Bool)

(declare-fun b!5833117 () Bool)

(assert (= bs!1375195 (and b!5833117 b!5832857)))

(declare-fun lambda!319113 () Int)

(assert (=> bs!1375195 (not (= lambda!319113 lambda!319102))))

(declare-fun bs!1375196 () Bool)

(assert (= bs!1375196 (and b!5833117 b!5831688)))

(assert (=> bs!1375196 (= (and (= (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regOne!32286 (regTwo!32287 r!7292))) (= (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regTwo!32286 (regTwo!32287 r!7292)))) (= lambda!319113 lambda!319081))))

(declare-fun bs!1375197 () Bool)

(assert (= bs!1375197 (and b!5833117 b!5832860)))

(assert (=> bs!1375197 (= (and (= (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regOne!32286 (regOne!32287 (regTwo!32287 r!7292)))) (= (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))))) (= lambda!319113 lambda!319103))))

(declare-fun bs!1375198 () Bool)

(assert (= bs!1375198 (and b!5833117 b!5831790)))

(assert (=> bs!1375198 (= (and (= (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regOne!32286 (regOne!32287 r!7292))) (= (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regTwo!32286 (regOne!32287 r!7292)))) (= lambda!319113 lambda!319085))))

(declare-fun bs!1375199 () Bool)

(assert (= bs!1375199 (and b!5833117 b!5832922)))

(assert (=> bs!1375199 (not (= lambda!319113 lambda!319105))))

(declare-fun bs!1375200 () Bool)

(assert (= bs!1375200 (and b!5833117 b!5831301)))

(assert (=> bs!1375200 (= (and (= (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regOne!32286 r!7292)) (= (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regTwo!32286 r!7292))) (= lambda!319113 lambda!319068))))

(declare-fun bs!1375201 () Bool)

(assert (= bs!1375201 (and b!5833117 b!5833114)))

(assert (=> bs!1375201 (not (= lambda!319113 lambda!319112))))

(declare-fun bs!1375202 () Bool)

(assert (= bs!1375202 (and b!5833117 b!5831298)))

(assert (=> bs!1375202 (not (= lambda!319113 lambda!319067))))

(declare-fun bs!1375203 () Bool)

(assert (= bs!1375203 (and b!5833117 b!5831685)))

(assert (=> bs!1375203 (not (= lambda!319113 lambda!319080))))

(declare-fun bs!1375204 () Bool)

(assert (= bs!1375204 (and b!5833117 b!5831787)))

(assert (=> bs!1375204 (not (= lambda!319113 lambda!319084))))

(declare-fun bs!1375205 () Bool)

(assert (= bs!1375205 (and b!5833117 b!5832925)))

(assert (=> bs!1375205 (= (and (= (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regOne!32286 (regOne!32287 (regOne!32287 r!7292)))) (= (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))) (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))))) (= lambda!319113 lambda!319106))))

(assert (=> b!5833117 true))

(assert (=> b!5833117 true))

(declare-fun c!1033531 () Bool)

(declare-fun call!455613 () Bool)

(declare-fun bm!455608 () Bool)

(assert (=> bm!455608 (= call!455613 (Exists!2964 (ite c!1033531 lambda!319112 lambda!319113)))))

(declare-fun b!5833108 () Bool)

(declare-fun e!3578636 () Bool)

(declare-fun e!3578634 () Bool)

(assert (=> b!5833108 (= e!3578636 e!3578634)))

(declare-fun res!2458072 () Bool)

(assert (=> b!5833108 (= res!2458072 (not ((_ is EmptyLang!15887) (regTwo!32287 (regTwo!32287 r!7292)))))))

(assert (=> b!5833108 (=> (not res!2458072) (not e!3578634))))

(declare-fun b!5833109 () Bool)

(declare-fun e!3578639 () Bool)

(declare-fun e!3578640 () Bool)

(assert (=> b!5833109 (= e!3578639 e!3578640)))

(declare-fun res!2458073 () Bool)

(assert (=> b!5833109 (= res!2458073 (matchRSpec!2988 (regOne!32287 (regTwo!32287 (regTwo!32287 r!7292))) s!2326))))

(assert (=> b!5833109 (=> res!2458073 e!3578640)))

(declare-fun b!5833110 () Bool)

(declare-fun e!3578638 () Bool)

(assert (=> b!5833110 (= e!3578639 e!3578638)))

(assert (=> b!5833110 (= c!1033531 ((_ is Star!15887) (regTwo!32287 (regTwo!32287 r!7292))))))

(declare-fun b!5833111 () Bool)

(declare-fun call!455614 () Bool)

(assert (=> b!5833111 (= e!3578636 call!455614)))

(declare-fun b!5833112 () Bool)

(declare-fun c!1033528 () Bool)

(assert (=> b!5833112 (= c!1033528 ((_ is Union!15887) (regTwo!32287 (regTwo!32287 r!7292))))))

(declare-fun e!3578637 () Bool)

(assert (=> b!5833112 (= e!3578637 e!3578639)))

(declare-fun b!5833113 () Bool)

(assert (=> b!5833113 (= e!3578637 (= s!2326 (Cons!63838 (c!1033165 (regTwo!32287 (regTwo!32287 r!7292))) Nil!63838)))))

(declare-fun d!1834117 () Bool)

(declare-fun c!1033530 () Bool)

(assert (=> d!1834117 (= c!1033530 ((_ is EmptyExpr!15887) (regTwo!32287 (regTwo!32287 r!7292))))))

(assert (=> d!1834117 (= (matchRSpec!2988 (regTwo!32287 (regTwo!32287 r!7292)) s!2326) e!3578636)))

(declare-fun e!3578635 () Bool)

(assert (=> b!5833114 (= e!3578635 call!455613)))

(declare-fun b!5833115 () Bool)

(declare-fun c!1033529 () Bool)

(assert (=> b!5833115 (= c!1033529 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32287 r!7292))))))

(assert (=> b!5833115 (= e!3578634 e!3578637)))

(declare-fun b!5833116 () Bool)

(declare-fun res!2458071 () Bool)

(assert (=> b!5833116 (=> res!2458071 e!3578635)))

(assert (=> b!5833116 (= res!2458071 call!455614)))

(assert (=> b!5833116 (= e!3578638 e!3578635)))

(assert (=> b!5833117 (= e!3578638 call!455613)))

(declare-fun bm!455609 () Bool)

(assert (=> bm!455609 (= call!455614 (isEmpty!35706 s!2326))))

(declare-fun b!5833118 () Bool)

(assert (=> b!5833118 (= e!3578640 (matchRSpec!2988 (regTwo!32287 (regTwo!32287 (regTwo!32287 r!7292))) s!2326))))

(assert (= (and d!1834117 c!1033530) b!5833111))

(assert (= (and d!1834117 (not c!1033530)) b!5833108))

(assert (= (and b!5833108 res!2458072) b!5833115))

(assert (= (and b!5833115 c!1033529) b!5833113))

(assert (= (and b!5833115 (not c!1033529)) b!5833112))

(assert (= (and b!5833112 c!1033528) b!5833109))

(assert (= (and b!5833112 (not c!1033528)) b!5833110))

(assert (= (and b!5833109 (not res!2458073)) b!5833118))

(assert (= (and b!5833110 c!1033531) b!5833116))

(assert (= (and b!5833110 (not c!1033531)) b!5833117))

(assert (= (and b!5833116 (not res!2458071)) b!5833114))

(assert (= (or b!5833114 b!5833117) bm!455608))

(assert (= (or b!5833111 b!5833116) bm!455609))

(declare-fun m!6761704 () Bool)

(assert (=> bm!455608 m!6761704))

(declare-fun m!6761706 () Bool)

(assert (=> b!5833109 m!6761706))

(assert (=> bm!455609 m!6760744))

(declare-fun m!6761708 () Bool)

(assert (=> b!5833118 m!6761708))

(assert (=> b!5831689 d!1834117))

(declare-fun d!1834119 () Bool)

(assert (=> d!1834119 (= (nullable!5889 (regOne!32286 r!7292)) (nullableFct!1890 (regOne!32286 r!7292)))))

(declare-fun bs!1375206 () Bool)

(assert (= bs!1375206 d!1834119))

(declare-fun m!6761710 () Bool)

(assert (=> bs!1375206 m!6761710))

(assert (=> b!5831753 d!1834119))

(declare-fun d!1834121 () Bool)

(declare-fun res!2458074 () Bool)

(declare-fun e!3578641 () Bool)

(assert (=> d!1834121 (=> res!2458074 e!3578641)))

(assert (=> d!1834121 (= res!2458074 ((_ is Nil!63836) (exprs!5771 setElem!39450)))))

(assert (=> d!1834121 (= (forall!14978 (exprs!5771 setElem!39450) lambda!319083) e!3578641)))

(declare-fun b!5833119 () Bool)

(declare-fun e!3578642 () Bool)

(assert (=> b!5833119 (= e!3578641 e!3578642)))

(declare-fun res!2458075 () Bool)

(assert (=> b!5833119 (=> (not res!2458075) (not e!3578642))))

(assert (=> b!5833119 (= res!2458075 (dynLambda!24974 lambda!319083 (h!70284 (exprs!5771 setElem!39450))))))

(declare-fun b!5833120 () Bool)

(assert (=> b!5833120 (= e!3578642 (forall!14978 (t!377315 (exprs!5771 setElem!39450)) lambda!319083))))

(assert (= (and d!1834121 (not res!2458074)) b!5833119))

(assert (= (and b!5833119 res!2458075) b!5833120))

(declare-fun b_lambda!219845 () Bool)

(assert (=> (not b_lambda!219845) (not b!5833119)))

(declare-fun m!6761712 () Bool)

(assert (=> b!5833119 m!6761712))

(declare-fun m!6761714 () Bool)

(assert (=> b!5833120 m!6761714))

(assert (=> d!1833797 d!1834121))

(declare-fun d!1834123 () Bool)

(assert (=> d!1834123 (= (isEmpty!35705 (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))) ((_ is Nil!63836) (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(assert (=> b!5831762 d!1834123))

(declare-fun d!1834125 () Bool)

(assert (=> d!1834125 (= (isEmptyExpr!1326 lt!2302967) ((_ is EmptyExpr!15887) lt!2302967))))

(assert (=> b!5831764 d!1834125))

(declare-fun d!1834127 () Bool)

(declare-fun res!2458076 () Bool)

(declare-fun e!3578643 () Bool)

(assert (=> d!1834127 (=> res!2458076 e!3578643)))

(assert (=> d!1834127 (= res!2458076 ((_ is Nil!63836) (t!377315 lt!2302939)))))

(assert (=> d!1834127 (= (forall!14978 (t!377315 lt!2302939) lambda!319055) e!3578643)))

(declare-fun b!5833121 () Bool)

(declare-fun e!3578644 () Bool)

(assert (=> b!5833121 (= e!3578643 e!3578644)))

(declare-fun res!2458077 () Bool)

(assert (=> b!5833121 (=> (not res!2458077) (not e!3578644))))

(assert (=> b!5833121 (= res!2458077 (dynLambda!24974 lambda!319055 (h!70284 (t!377315 lt!2302939))))))

(declare-fun b!5833122 () Bool)

(assert (=> b!5833122 (= e!3578644 (forall!14978 (t!377315 (t!377315 lt!2302939)) lambda!319055))))

(assert (= (and d!1834127 (not res!2458076)) b!5833121))

(assert (= (and b!5833121 res!2458077) b!5833122))

(declare-fun b_lambda!219847 () Bool)

(assert (=> (not b_lambda!219847) (not b!5833121)))

(declare-fun m!6761716 () Bool)

(assert (=> b!5833121 m!6761716))

(declare-fun m!6761718 () Bool)

(assert (=> b!5833122 m!6761718))

(assert (=> b!5831778 d!1834127))

(declare-fun bs!1375207 () Bool)

(declare-fun b!5833129 () Bool)

(assert (= bs!1375207 (and b!5833129 b!5832857)))

(declare-fun lambda!319114 () Int)

(assert (=> bs!1375207 (= (and (= (reg!16216 (regTwo!32287 (regOne!32287 r!7292))) (reg!16216 (regOne!32287 (regTwo!32287 r!7292)))) (= (regTwo!32287 (regOne!32287 r!7292)) (regOne!32287 (regTwo!32287 r!7292)))) (= lambda!319114 lambda!319102))))

(declare-fun bs!1375208 () Bool)

(assert (= bs!1375208 (and b!5833129 b!5831688)))

(assert (=> bs!1375208 (not (= lambda!319114 lambda!319081))))

(declare-fun bs!1375209 () Bool)

(assert (= bs!1375209 (and b!5833129 b!5833117)))

(assert (=> bs!1375209 (not (= lambda!319114 lambda!319113))))

(declare-fun bs!1375210 () Bool)

(assert (= bs!1375210 (and b!5833129 b!5832860)))

(assert (=> bs!1375210 (not (= lambda!319114 lambda!319103))))

(declare-fun bs!1375211 () Bool)

(assert (= bs!1375211 (and b!5833129 b!5831790)))

(assert (=> bs!1375211 (not (= lambda!319114 lambda!319085))))

(declare-fun bs!1375212 () Bool)

(assert (= bs!1375212 (and b!5833129 b!5832922)))

(assert (=> bs!1375212 (= (and (= (reg!16216 (regTwo!32287 (regOne!32287 r!7292))) (reg!16216 (regOne!32287 (regOne!32287 r!7292)))) (= (regTwo!32287 (regOne!32287 r!7292)) (regOne!32287 (regOne!32287 r!7292)))) (= lambda!319114 lambda!319105))))

(declare-fun bs!1375213 () Bool)

(assert (= bs!1375213 (and b!5833129 b!5831301)))

(assert (=> bs!1375213 (not (= lambda!319114 lambda!319068))))

(declare-fun bs!1375214 () Bool)

(assert (= bs!1375214 (and b!5833129 b!5833114)))

(assert (=> bs!1375214 (= (and (= (reg!16216 (regTwo!32287 (regOne!32287 r!7292))) (reg!16216 (regTwo!32287 (regTwo!32287 r!7292)))) (= (regTwo!32287 (regOne!32287 r!7292)) (regTwo!32287 (regTwo!32287 r!7292)))) (= lambda!319114 lambda!319112))))

(declare-fun bs!1375215 () Bool)

(assert (= bs!1375215 (and b!5833129 b!5831298)))

(assert (=> bs!1375215 (= (and (= (reg!16216 (regTwo!32287 (regOne!32287 r!7292))) (reg!16216 r!7292)) (= (regTwo!32287 (regOne!32287 r!7292)) r!7292)) (= lambda!319114 lambda!319067))))

(declare-fun bs!1375216 () Bool)

(assert (= bs!1375216 (and b!5833129 b!5831685)))

(assert (=> bs!1375216 (= (and (= (reg!16216 (regTwo!32287 (regOne!32287 r!7292))) (reg!16216 (regTwo!32287 r!7292))) (= (regTwo!32287 (regOne!32287 r!7292)) (regTwo!32287 r!7292))) (= lambda!319114 lambda!319080))))

(declare-fun bs!1375217 () Bool)

(assert (= bs!1375217 (and b!5833129 b!5831787)))

(assert (=> bs!1375217 (= (and (= (reg!16216 (regTwo!32287 (regOne!32287 r!7292))) (reg!16216 (regOne!32287 r!7292))) (= (regTwo!32287 (regOne!32287 r!7292)) (regOne!32287 r!7292))) (= lambda!319114 lambda!319084))))

(declare-fun bs!1375218 () Bool)

(assert (= bs!1375218 (and b!5833129 b!5832925)))

(assert (=> bs!1375218 (not (= lambda!319114 lambda!319106))))

(assert (=> b!5833129 true))

(assert (=> b!5833129 true))

(declare-fun bs!1375219 () Bool)

(declare-fun b!5833132 () Bool)

(assert (= bs!1375219 (and b!5833132 b!5832857)))

(declare-fun lambda!319115 () Int)

(assert (=> bs!1375219 (not (= lambda!319115 lambda!319102))))

(declare-fun bs!1375220 () Bool)

(assert (= bs!1375220 (and b!5833132 b!5831688)))

(assert (=> bs!1375220 (= (and (= (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))) (regOne!32286 (regTwo!32287 r!7292))) (= (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))) (regTwo!32286 (regTwo!32287 r!7292)))) (= lambda!319115 lambda!319081))))

(declare-fun bs!1375221 () Bool)

(assert (= bs!1375221 (and b!5833132 b!5833117)))

(assert (=> bs!1375221 (= (and (= (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))) (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292)))) (= (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))) (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))))) (= lambda!319115 lambda!319113))))

(declare-fun bs!1375222 () Bool)

(assert (= bs!1375222 (and b!5833132 b!5832860)))

(assert (=> bs!1375222 (= (and (= (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))) (regOne!32286 (regOne!32287 (regTwo!32287 r!7292)))) (= (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))) (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))))) (= lambda!319115 lambda!319103))))

(declare-fun bs!1375223 () Bool)

(assert (= bs!1375223 (and b!5833132 b!5831790)))

(assert (=> bs!1375223 (= (and (= (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))) (regOne!32286 (regOne!32287 r!7292))) (= (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))) (regTwo!32286 (regOne!32287 r!7292)))) (= lambda!319115 lambda!319085))))

(declare-fun bs!1375224 () Bool)

(assert (= bs!1375224 (and b!5833132 b!5832922)))

(assert (=> bs!1375224 (not (= lambda!319115 lambda!319105))))

(declare-fun bs!1375225 () Bool)

(assert (= bs!1375225 (and b!5833132 b!5831301)))

(assert (=> bs!1375225 (= (and (= (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))) (regOne!32286 r!7292)) (= (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))) (regTwo!32286 r!7292))) (= lambda!319115 lambda!319068))))

(declare-fun bs!1375226 () Bool)

(assert (= bs!1375226 (and b!5833132 b!5833114)))

(assert (=> bs!1375226 (not (= lambda!319115 lambda!319112))))

(declare-fun bs!1375227 () Bool)

(assert (= bs!1375227 (and b!5833132 b!5831298)))

(assert (=> bs!1375227 (not (= lambda!319115 lambda!319067))))

(declare-fun bs!1375228 () Bool)

(assert (= bs!1375228 (and b!5833132 b!5831685)))

(assert (=> bs!1375228 (not (= lambda!319115 lambda!319080))))

(declare-fun bs!1375229 () Bool)

(assert (= bs!1375229 (and b!5833132 b!5832925)))

(assert (=> bs!1375229 (= (and (= (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))) (regOne!32286 (regOne!32287 (regOne!32287 r!7292)))) (= (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))) (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))))) (= lambda!319115 lambda!319106))))

(declare-fun bs!1375230 () Bool)

(assert (= bs!1375230 (and b!5833132 b!5831787)))

(assert (=> bs!1375230 (not (= lambda!319115 lambda!319084))))

(declare-fun bs!1375231 () Bool)

(assert (= bs!1375231 (and b!5833132 b!5833129)))

(assert (=> bs!1375231 (not (= lambda!319115 lambda!319114))))

(assert (=> b!5833132 true))

(assert (=> b!5833132 true))

(declare-fun bm!455610 () Bool)

(declare-fun c!1033535 () Bool)

(declare-fun call!455615 () Bool)

(assert (=> bm!455610 (= call!455615 (Exists!2964 (ite c!1033535 lambda!319114 lambda!319115)))))

(declare-fun b!5833123 () Bool)

(declare-fun e!3578647 () Bool)

(declare-fun e!3578645 () Bool)

(assert (=> b!5833123 (= e!3578647 e!3578645)))

(declare-fun res!2458079 () Bool)

(assert (=> b!5833123 (= res!2458079 (not ((_ is EmptyLang!15887) (regTwo!32287 (regOne!32287 r!7292)))))))

(assert (=> b!5833123 (=> (not res!2458079) (not e!3578645))))

(declare-fun b!5833124 () Bool)

(declare-fun e!3578650 () Bool)

(declare-fun e!3578651 () Bool)

(assert (=> b!5833124 (= e!3578650 e!3578651)))

(declare-fun res!2458080 () Bool)

(assert (=> b!5833124 (= res!2458080 (matchRSpec!2988 (regOne!32287 (regTwo!32287 (regOne!32287 r!7292))) s!2326))))

(assert (=> b!5833124 (=> res!2458080 e!3578651)))

(declare-fun b!5833125 () Bool)

(declare-fun e!3578649 () Bool)

(assert (=> b!5833125 (= e!3578650 e!3578649)))

(assert (=> b!5833125 (= c!1033535 ((_ is Star!15887) (regTwo!32287 (regOne!32287 r!7292))))))

(declare-fun b!5833126 () Bool)

(declare-fun call!455616 () Bool)

(assert (=> b!5833126 (= e!3578647 call!455616)))

(declare-fun b!5833127 () Bool)

(declare-fun c!1033532 () Bool)

(assert (=> b!5833127 (= c!1033532 ((_ is Union!15887) (regTwo!32287 (regOne!32287 r!7292))))))

(declare-fun e!3578648 () Bool)

(assert (=> b!5833127 (= e!3578648 e!3578650)))

(declare-fun b!5833128 () Bool)

(assert (=> b!5833128 (= e!3578648 (= s!2326 (Cons!63838 (c!1033165 (regTwo!32287 (regOne!32287 r!7292))) Nil!63838)))))

(declare-fun d!1834129 () Bool)

(declare-fun c!1033534 () Bool)

(assert (=> d!1834129 (= c!1033534 ((_ is EmptyExpr!15887) (regTwo!32287 (regOne!32287 r!7292))))))

(assert (=> d!1834129 (= (matchRSpec!2988 (regTwo!32287 (regOne!32287 r!7292)) s!2326) e!3578647)))

(declare-fun e!3578646 () Bool)

(assert (=> b!5833129 (= e!3578646 call!455615)))

(declare-fun b!5833130 () Bool)

(declare-fun c!1033533 () Bool)

(assert (=> b!5833130 (= c!1033533 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32287 r!7292))))))

(assert (=> b!5833130 (= e!3578645 e!3578648)))

(declare-fun b!5833131 () Bool)

(declare-fun res!2458078 () Bool)

(assert (=> b!5833131 (=> res!2458078 e!3578646)))

(assert (=> b!5833131 (= res!2458078 call!455616)))

(assert (=> b!5833131 (= e!3578649 e!3578646)))

(assert (=> b!5833132 (= e!3578649 call!455615)))

(declare-fun bm!455611 () Bool)

(assert (=> bm!455611 (= call!455616 (isEmpty!35706 s!2326))))

(declare-fun b!5833133 () Bool)

(assert (=> b!5833133 (= e!3578651 (matchRSpec!2988 (regTwo!32287 (regTwo!32287 (regOne!32287 r!7292))) s!2326))))

(assert (= (and d!1834129 c!1033534) b!5833126))

(assert (= (and d!1834129 (not c!1033534)) b!5833123))

(assert (= (and b!5833123 res!2458079) b!5833130))

(assert (= (and b!5833130 c!1033533) b!5833128))

(assert (= (and b!5833130 (not c!1033533)) b!5833127))

(assert (= (and b!5833127 c!1033532) b!5833124))

(assert (= (and b!5833127 (not c!1033532)) b!5833125))

(assert (= (and b!5833124 (not res!2458080)) b!5833133))

(assert (= (and b!5833125 c!1033535) b!5833131))

(assert (= (and b!5833125 (not c!1033535)) b!5833132))

(assert (= (and b!5833131 (not res!2458078)) b!5833129))

(assert (= (or b!5833129 b!5833132) bm!455610))

(assert (= (or b!5833126 b!5833131) bm!455611))

(declare-fun m!6761720 () Bool)

(assert (=> bm!455610 m!6761720))

(declare-fun m!6761722 () Bool)

(assert (=> b!5833124 m!6761722))

(assert (=> bm!455611 m!6760744))

(declare-fun m!6761724 () Bool)

(assert (=> b!5833133 m!6761724))

(assert (=> b!5831791 d!1834129))

(declare-fun d!1834131 () Bool)

(declare-fun lt!2302989 () Bool)

(assert (=> d!1834131 (= lt!2302989 (select (content!11722 (t!377316 lt!2302945)) (h!70285 lt!2302945)))))

(declare-fun e!3578656 () Bool)

(assert (=> d!1834131 (= lt!2302989 e!3578656)))

(declare-fun res!2458086 () Bool)

(assert (=> d!1834131 (=> (not res!2458086) (not e!3578656))))

(assert (=> d!1834131 (= res!2458086 ((_ is Cons!63837) (t!377316 lt!2302945)))))

(assert (=> d!1834131 (= (contains!19910 (t!377316 lt!2302945) (h!70285 lt!2302945)) lt!2302989)))

(declare-fun b!5833138 () Bool)

(declare-fun e!3578657 () Bool)

(assert (=> b!5833138 (= e!3578656 e!3578657)))

(declare-fun res!2458085 () Bool)

(assert (=> b!5833138 (=> res!2458085 e!3578657)))

(assert (=> b!5833138 (= res!2458085 (= (h!70285 (t!377316 lt!2302945)) (h!70285 lt!2302945)))))

(declare-fun b!5833139 () Bool)

(assert (=> b!5833139 (= e!3578657 (contains!19910 (t!377316 (t!377316 lt!2302945)) (h!70285 lt!2302945)))))

(assert (= (and d!1834131 res!2458086) b!5833138))

(assert (= (and b!5833138 (not res!2458085)) b!5833139))

(assert (=> d!1834131 m!6760988))

(declare-fun m!6761726 () Bool)

(assert (=> d!1834131 m!6761726))

(declare-fun m!6761728 () Bool)

(assert (=> b!5833139 m!6761728))

(assert (=> b!5831666 d!1834131))

(declare-fun d!1834133 () Bool)

(assert (=> d!1834133 (= (isEmptyLang!1334 lt!2302968) ((_ is EmptyLang!15887) lt!2302968))))

(assert (=> b!5831805 d!1834133))

(declare-fun b!5833140 () Bool)

(declare-fun e!3578664 () Bool)

(declare-fun e!3578660 () Bool)

(assert (=> b!5833140 (= e!3578664 e!3578660)))

(declare-fun res!2458087 () Bool)

(assert (=> b!5833140 (= res!2458087 (not (nullable!5889 (reg!16216 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))))))))

(assert (=> b!5833140 (=> (not res!2458087) (not e!3578660))))

(declare-fun b!5833141 () Bool)

(declare-fun e!3578661 () Bool)

(declare-fun call!455619 () Bool)

(assert (=> b!5833141 (= e!3578661 call!455619)))

(declare-fun bm!455612 () Bool)

(declare-fun call!455617 () Bool)

(declare-fun call!455618 () Bool)

(assert (=> bm!455612 (= call!455617 call!455618)))

(declare-fun b!5833142 () Bool)

(assert (=> b!5833142 (= e!3578660 call!455618)))

(declare-fun b!5833143 () Bool)

(declare-fun e!3578658 () Bool)

(assert (=> b!5833143 (= e!3578658 e!3578661)))

(declare-fun res!2458090 () Bool)

(assert (=> b!5833143 (=> (not res!2458090) (not e!3578661))))

(assert (=> b!5833143 (= res!2458090 call!455617)))

(declare-fun b!5833144 () Bool)

(declare-fun res!2458088 () Bool)

(assert (=> b!5833144 (=> res!2458088 e!3578658)))

(assert (=> b!5833144 (= res!2458088 (not ((_ is Concat!24732) (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954)))))))

(declare-fun e!3578659 () Bool)

(assert (=> b!5833144 (= e!3578659 e!3578658)))

(declare-fun b!5833145 () Bool)

(declare-fun res!2458089 () Bool)

(declare-fun e!3578663 () Bool)

(assert (=> b!5833145 (=> (not res!2458089) (not e!3578663))))

(assert (=> b!5833145 (= res!2458089 call!455617)))

(assert (=> b!5833145 (= e!3578659 e!3578663)))

(declare-fun d!1834135 () Bool)

(declare-fun res!2458091 () Bool)

(declare-fun e!3578662 () Bool)

(assert (=> d!1834135 (=> res!2458091 e!3578662)))

(assert (=> d!1834135 (= res!2458091 ((_ is ElementMatch!15887) (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))))))

(assert (=> d!1834135 (= (validRegex!7623 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))) e!3578662)))

(declare-fun c!1033537 () Bool)

(declare-fun bm!455613 () Bool)

(declare-fun c!1033536 () Bool)

(assert (=> bm!455613 (= call!455618 (validRegex!7623 (ite c!1033536 (reg!16216 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))) (ite c!1033537 (regOne!32287 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))) (regOne!32286 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954)))))))))

(declare-fun bm!455614 () Bool)

(assert (=> bm!455614 (= call!455619 (validRegex!7623 (ite c!1033537 (regTwo!32287 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))) (regTwo!32286 (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))))))))

(declare-fun b!5833146 () Bool)

(assert (=> b!5833146 (= e!3578664 e!3578659)))

(assert (=> b!5833146 (= c!1033537 ((_ is Union!15887) (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))))))

(declare-fun b!5833147 () Bool)

(assert (=> b!5833147 (= e!3578663 call!455619)))

(declare-fun b!5833148 () Bool)

(assert (=> b!5833148 (= e!3578662 e!3578664)))

(assert (=> b!5833148 (= c!1033536 ((_ is Star!15887) (ite c!1033359 (regTwo!32287 lt!2302954) (regTwo!32286 lt!2302954))))))

(assert (= (and d!1834135 (not res!2458091)) b!5833148))

(assert (= (and b!5833148 c!1033536) b!5833140))

(assert (= (and b!5833148 (not c!1033536)) b!5833146))

(assert (= (and b!5833140 res!2458087) b!5833142))

(assert (= (and b!5833146 c!1033537) b!5833145))

(assert (= (and b!5833146 (not c!1033537)) b!5833144))

(assert (= (and b!5833145 res!2458089) b!5833147))

(assert (= (and b!5833144 (not res!2458088)) b!5833143))

(assert (= (and b!5833143 res!2458090) b!5833141))

(assert (= (or b!5833147 b!5833141) bm!455614))

(assert (= (or b!5833145 b!5833143) bm!455612))

(assert (= (or b!5833142 bm!455612) bm!455613))

(declare-fun m!6761730 () Bool)

(assert (=> b!5833140 m!6761730))

(declare-fun m!6761732 () Bool)

(assert (=> bm!455613 m!6761732))

(declare-fun m!6761734 () Bool)

(assert (=> bm!455614 m!6761734))

(assert (=> bm!455452 d!1834135))

(declare-fun b!5833149 () Bool)

(declare-fun e!3578671 () Bool)

(declare-fun e!3578667 () Bool)

(assert (=> b!5833149 (= e!3578671 e!3578667)))

(declare-fun res!2458092 () Bool)

(assert (=> b!5833149 (= res!2458092 (not (nullable!5889 (reg!16216 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))))))))

(assert (=> b!5833149 (=> (not res!2458092) (not e!3578667))))

(declare-fun b!5833150 () Bool)

(declare-fun e!3578668 () Bool)

(declare-fun call!455622 () Bool)

(assert (=> b!5833150 (= e!3578668 call!455622)))

(declare-fun bm!455615 () Bool)

(declare-fun call!455620 () Bool)

(declare-fun call!455621 () Bool)

(assert (=> bm!455615 (= call!455620 call!455621)))

(declare-fun b!5833151 () Bool)

(assert (=> b!5833151 (= e!3578667 call!455621)))

(declare-fun b!5833152 () Bool)

(declare-fun e!3578665 () Bool)

(assert (=> b!5833152 (= e!3578665 e!3578668)))

(declare-fun res!2458095 () Bool)

(assert (=> b!5833152 (=> (not res!2458095) (not e!3578668))))

(assert (=> b!5833152 (= res!2458095 call!455620)))

(declare-fun b!5833153 () Bool)

(declare-fun res!2458093 () Bool)

(assert (=> b!5833153 (=> res!2458093 e!3578665)))

(assert (=> b!5833153 (= res!2458093 (not ((_ is Concat!24732) (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942))))))))

(declare-fun e!3578666 () Bool)

(assert (=> b!5833153 (= e!3578666 e!3578665)))

(declare-fun b!5833154 () Bool)

(declare-fun res!2458094 () Bool)

(declare-fun e!3578670 () Bool)

(assert (=> b!5833154 (=> (not res!2458094) (not e!3578670))))

(assert (=> b!5833154 (= res!2458094 call!455620)))

(assert (=> b!5833154 (= e!3578666 e!3578670)))

(declare-fun d!1834137 () Bool)

(declare-fun res!2458096 () Bool)

(declare-fun e!3578669 () Bool)

(assert (=> d!1834137 (=> res!2458096 e!3578669)))

(assert (=> d!1834137 (= res!2458096 ((_ is ElementMatch!15887) (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))))))

(assert (=> d!1834137 (= (validRegex!7623 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))) e!3578669)))

(declare-fun bm!455616 () Bool)

(declare-fun c!1033539 () Bool)

(declare-fun c!1033538 () Bool)

(assert (=> bm!455616 (= call!455621 (validRegex!7623 (ite c!1033538 (reg!16216 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))) (ite c!1033539 (regOne!32287 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))) (regOne!32286 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942))))))))))

(declare-fun bm!455617 () Bool)

(assert (=> bm!455617 (= call!455622 (validRegex!7623 (ite c!1033539 (regTwo!32287 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))) (regTwo!32286 (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))))))))

(declare-fun b!5833155 () Bool)

(assert (=> b!5833155 (= e!3578671 e!3578666)))

(assert (=> b!5833155 (= c!1033539 ((_ is Union!15887) (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))))))

(declare-fun b!5833156 () Bool)

(assert (=> b!5833156 (= e!3578670 call!455622)))

(declare-fun b!5833157 () Bool)

(assert (=> b!5833157 (= e!3578669 e!3578671)))

(assert (=> b!5833157 (= c!1033538 ((_ is Star!15887) (ite c!1033364 (reg!16216 lt!2302942) (ite c!1033365 (regOne!32287 lt!2302942) (regOne!32286 lt!2302942)))))))

(assert (= (and d!1834137 (not res!2458096)) b!5833157))

(assert (= (and b!5833157 c!1033538) b!5833149))

(assert (= (and b!5833157 (not c!1033538)) b!5833155))

(assert (= (and b!5833149 res!2458092) b!5833151))

(assert (= (and b!5833155 c!1033539) b!5833154))

(assert (= (and b!5833155 (not c!1033539)) b!5833153))

(assert (= (and b!5833154 res!2458094) b!5833156))

(assert (= (and b!5833153 (not res!2458093)) b!5833152))

(assert (= (and b!5833152 res!2458095) b!5833150))

(assert (= (or b!5833156 b!5833150) bm!455617))

(assert (= (or b!5833154 b!5833152) bm!455615))

(assert (= (or b!5833151 bm!455615) bm!455616))

(declare-fun m!6761736 () Bool)

(assert (=> b!5833149 m!6761736))

(declare-fun m!6761738 () Bool)

(assert (=> bm!455616 m!6761738))

(declare-fun m!6761740 () Bool)

(assert (=> bm!455617 m!6761740))

(assert (=> bm!455456 d!1834137))

(declare-fun b!5833158 () Bool)

(declare-fun e!3578678 () Bool)

(declare-fun e!3578674 () Bool)

(assert (=> b!5833158 (= e!3578678 e!3578674)))

(declare-fun res!2458097 () Bool)

(assert (=> b!5833158 (= res!2458097 (not (nullable!5889 (reg!16216 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))))

(assert (=> b!5833158 (=> (not res!2458097) (not e!3578674))))

(declare-fun b!5833159 () Bool)

(declare-fun e!3578675 () Bool)

(declare-fun call!455625 () Bool)

(assert (=> b!5833159 (= e!3578675 call!455625)))

(declare-fun bm!455618 () Bool)

(declare-fun call!455623 () Bool)

(declare-fun call!455624 () Bool)

(assert (=> bm!455618 (= call!455623 call!455624)))

(declare-fun b!5833160 () Bool)

(assert (=> b!5833160 (= e!3578674 call!455624)))

(declare-fun b!5833161 () Bool)

(declare-fun e!3578672 () Bool)

(assert (=> b!5833161 (= e!3578672 e!3578675)))

(declare-fun res!2458100 () Bool)

(assert (=> b!5833161 (=> (not res!2458100) (not e!3578675))))

(assert (=> b!5833161 (= res!2458100 call!455623)))

(declare-fun b!5833162 () Bool)

(declare-fun res!2458098 () Bool)

(assert (=> b!5833162 (=> res!2458098 e!3578672)))

(assert (=> b!5833162 (= res!2458098 (not ((_ is Concat!24732) (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))))

(declare-fun e!3578673 () Bool)

(assert (=> b!5833162 (= e!3578673 e!3578672)))

(declare-fun b!5833163 () Bool)

(declare-fun res!2458099 () Bool)

(declare-fun e!3578677 () Bool)

(assert (=> b!5833163 (=> (not res!2458099) (not e!3578677))))

(assert (=> b!5833163 (= res!2458099 call!455623)))

(assert (=> b!5833163 (= e!3578673 e!3578677)))

(declare-fun d!1834139 () Bool)

(declare-fun res!2458101 () Bool)

(declare-fun e!3578676 () Bool)

(assert (=> d!1834139 (=> res!2458101 e!3578676)))

(assert (=> d!1834139 (= res!2458101 ((_ is ElementMatch!15887) (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))

(assert (=> d!1834139 (= (validRegex!7623 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))) e!3578676)))

(declare-fun bm!455619 () Bool)

(declare-fun c!1033541 () Bool)

(declare-fun c!1033540 () Bool)

(assert (=> bm!455619 (= call!455624 (validRegex!7623 (ite c!1033540 (reg!16216 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))) (ite c!1033541 (regOne!32287 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))) (regOne!32286 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))))))))))))

(declare-fun bm!455620 () Bool)

(assert (=> bm!455620 (= call!455625 (validRegex!7623 (ite c!1033541 (regTwo!32287 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))) (regTwo!32286 (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))))

(declare-fun b!5833164 () Bool)

(assert (=> b!5833164 (= e!3578678 e!3578673)))

(assert (=> b!5833164 (= c!1033541 ((_ is Union!15887) (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))

(declare-fun b!5833165 () Bool)

(assert (=> b!5833165 (= e!3578677 call!455625)))

(declare-fun b!5833166 () Bool)

(assert (=> b!5833166 (= e!3578676 e!3578678)))

(assert (=> b!5833166 (= c!1033540 ((_ is Star!15887) (ite c!1033329 (reg!16216 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (ite c!1033330 (regOne!32287 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292)))) (regOne!32286 (ite c!1033251 (reg!16216 r!7292) (ite c!1033252 (regOne!32287 r!7292) (regOne!32286 r!7292))))))))))

(assert (= (and d!1834139 (not res!2458101)) b!5833166))

(assert (= (and b!5833166 c!1033540) b!5833158))

(assert (= (and b!5833166 (not c!1033540)) b!5833164))

(assert (= (and b!5833158 res!2458097) b!5833160))

(assert (= (and b!5833164 c!1033541) b!5833163))

(assert (= (and b!5833164 (not c!1033541)) b!5833162))

(assert (= (and b!5833163 res!2458099) b!5833165))

(assert (= (and b!5833162 (not res!2458098)) b!5833161))

(assert (= (and b!5833161 res!2458100) b!5833159))

(assert (= (or b!5833165 b!5833159) bm!455620))

(assert (= (or b!5833163 b!5833161) bm!455618))

(assert (= (or b!5833160 bm!455618) bm!455619))

(declare-fun m!6761742 () Bool)

(assert (=> b!5833158 m!6761742))

(declare-fun m!6761744 () Bool)

(assert (=> bm!455619 m!6761744))

(declare-fun m!6761746 () Bool)

(assert (=> bm!455620 m!6761746))

(assert (=> bm!455432 d!1834139))

(declare-fun bs!1375232 () Bool)

(declare-fun d!1834141 () Bool)

(assert (= bs!1375232 (and d!1834141 d!1833613)))

(declare-fun lambda!319116 () Int)

(assert (=> bs!1375232 (= lambda!319116 lambda!319061)))

(declare-fun bs!1375233 () Bool)

(assert (= bs!1375233 (and d!1834141 d!1833797)))

(assert (=> bs!1375233 (= lambda!319116 lambda!319083)))

(declare-fun bs!1375234 () Bool)

(assert (= bs!1375234 (and d!1834141 d!1834035)))

(assert (=> bs!1375234 (= lambda!319116 lambda!319107)))

(declare-fun bs!1375235 () Bool)

(assert (= bs!1375235 (and d!1834141 d!1834077)))

(assert (=> bs!1375235 (= lambda!319116 lambda!319109)))

(declare-fun bs!1375236 () Bool)

(assert (= bs!1375236 (and d!1834141 d!1833813)))

(assert (=> bs!1375236 (= lambda!319116 lambda!319086)))

(declare-fun bs!1375237 () Bool)

(assert (= bs!1375237 (and d!1834141 d!1833585)))

(assert (=> bs!1375237 (= lambda!319116 lambda!319052)))

(declare-fun bs!1375238 () Bool)

(assert (= bs!1375238 (and d!1834141 d!1833611)))

(assert (=> bs!1375238 (= lambda!319116 lambda!319058)))

(declare-fun bs!1375239 () Bool)

(assert (= bs!1375239 (and d!1834141 d!1833783)))

(assert (=> bs!1375239 (= lambda!319116 lambda!319082)))

(declare-fun bs!1375240 () Bool)

(assert (= bs!1375240 (and d!1834141 d!1833761)))

(assert (=> bs!1375240 (= lambda!319116 lambda!319079)))

(declare-fun bs!1375241 () Bool)

(assert (= bs!1375241 (and d!1834141 d!1834081)))

(assert (=> bs!1375241 (= lambda!319116 lambda!319110)))

(declare-fun bs!1375242 () Bool)

(assert (= bs!1375242 (and d!1834141 d!1833619)))

(assert (=> bs!1375242 (= lambda!319116 lambda!319062)))

(declare-fun bs!1375243 () Bool)

(assert (= bs!1375243 (and d!1834141 d!1833741)))

(assert (=> bs!1375243 (= lambda!319116 lambda!319078)))

(declare-fun bs!1375244 () Bool)

(assert (= bs!1375244 (and d!1834141 d!1834001)))

(assert (=> bs!1375244 (= lambda!319116 lambda!319104)))

(declare-fun bs!1375245 () Bool)

(assert (= bs!1375245 (and d!1834141 d!1834075)))

(assert (=> bs!1375245 (= lambda!319116 lambda!319108)))

(declare-fun bs!1375246 () Bool)

(assert (= bs!1375246 (and d!1834141 d!1834113)))

(assert (=> bs!1375246 (= lambda!319116 lambda!319111)))

(declare-fun bs!1375247 () Bool)

(assert (= bs!1375247 (and d!1834141 d!1833609)))

(assert (=> bs!1375247 (= lambda!319116 lambda!319055)))

(declare-fun b!5833167 () Bool)

(declare-fun e!3578682 () Bool)

(assert (=> b!5833167 (= e!3578682 (isEmpty!35705 (t!377315 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))))))))

(declare-fun b!5833168 () Bool)

(declare-fun e!3578683 () Bool)

(declare-fun lt!2302990 () Regex!15887)

(assert (=> b!5833168 (= e!3578683 (= lt!2302990 (head!12336 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))))))))

(declare-fun b!5833169 () Bool)

(declare-fun e!3578684 () Bool)

(assert (=> b!5833169 (= e!3578684 (isEmptyLang!1334 lt!2302990))))

(declare-fun b!5833170 () Bool)

(declare-fun e!3578681 () Bool)

(assert (=> b!5833170 (= e!3578681 e!3578684)))

(declare-fun c!1033545 () Bool)

(assert (=> b!5833170 (= c!1033545 (isEmpty!35705 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5833171 () Bool)

(declare-fun e!3578680 () Regex!15887)

(assert (=> b!5833171 (= e!3578680 (Union!15887 (h!70284 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))) (generalisedUnion!1731 (t!377315 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))))))))

(declare-fun b!5833172 () Bool)

(assert (=> b!5833172 (= e!3578684 e!3578683)))

(declare-fun c!1033542 () Bool)

(assert (=> b!5833172 (= c!1033542 (isEmpty!35705 (tail!11421 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))))))))

(declare-fun b!5833173 () Bool)

(declare-fun e!3578679 () Regex!15887)

(assert (=> b!5833173 (= e!3578679 (h!70284 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(assert (=> d!1834141 e!3578681))

(declare-fun res!2458103 () Bool)

(assert (=> d!1834141 (=> (not res!2458103) (not e!3578681))))

(assert (=> d!1834141 (= res!2458103 (validRegex!7623 lt!2302990))))

(assert (=> d!1834141 (= lt!2302990 e!3578679)))

(declare-fun c!1033544 () Bool)

(assert (=> d!1834141 (= c!1033544 e!3578682)))

(declare-fun res!2458102 () Bool)

(assert (=> d!1834141 (=> (not res!2458102) (not e!3578682))))

(assert (=> d!1834141 (= res!2458102 ((_ is Cons!63836) (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(assert (=> d!1834141 (forall!14978 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343))) lambda!319116)))

(assert (=> d!1834141 (= (generalisedUnion!1731 (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))) lt!2302990)))

(declare-fun b!5833174 () Bool)

(assert (=> b!5833174 (= e!3578679 e!3578680)))

(declare-fun c!1033543 () Bool)

(assert (=> b!5833174 (= c!1033543 ((_ is Cons!63836) (t!377315 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun b!5833175 () Bool)

(assert (=> b!5833175 (= e!3578680 EmptyLang!15887)))

(declare-fun b!5833176 () Bool)

(assert (=> b!5833176 (= e!3578683 (isUnion!764 lt!2302990))))

(assert (= (and d!1834141 res!2458102) b!5833167))

(assert (= (and d!1834141 c!1033544) b!5833173))

(assert (= (and d!1834141 (not c!1033544)) b!5833174))

(assert (= (and b!5833174 c!1033543) b!5833171))

(assert (= (and b!5833174 (not c!1033543)) b!5833175))

(assert (= (and d!1834141 res!2458103) b!5833170))

(assert (= (and b!5833170 c!1033545) b!5833169))

(assert (= (and b!5833170 (not c!1033545)) b!5833172))

(assert (= (and b!5833172 c!1033542) b!5833168))

(assert (= (and b!5833172 (not c!1033542)) b!5833176))

(declare-fun m!6761748 () Bool)

(assert (=> b!5833168 m!6761748))

(declare-fun m!6761750 () Bool)

(assert (=> b!5833167 m!6761750))

(assert (=> b!5833170 m!6761068))

(declare-fun m!6761752 () Bool)

(assert (=> b!5833172 m!6761752))

(assert (=> b!5833172 m!6761752))

(declare-fun m!6761754 () Bool)

(assert (=> b!5833172 m!6761754))

(declare-fun m!6761756 () Bool)

(assert (=> b!5833171 m!6761756))

(declare-fun m!6761758 () Bool)

(assert (=> b!5833169 m!6761758))

(declare-fun m!6761760 () Bool)

(assert (=> d!1834141 m!6761760))

(declare-fun m!6761762 () Bool)

(assert (=> d!1834141 m!6761762))

(declare-fun m!6761764 () Bool)

(assert (=> b!5833176 m!6761764))

(assert (=> b!5831807 d!1834141))

(declare-fun d!1834143 () Bool)

(assert (=> d!1834143 (= (head!12336 (t!377315 (exprs!5771 (h!70285 zl!343)))) (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343)))))))

(assert (=> b!5831758 d!1834143))

(declare-fun b!5833177 () Bool)

(declare-fun e!3578691 () Bool)

(declare-fun e!3578687 () Bool)

(assert (=> b!5833177 (= e!3578691 e!3578687)))

(declare-fun res!2458104 () Bool)

(assert (=> b!5833177 (= res!2458104 (not (nullable!5889 (reg!16216 (h!70284 lt!2302939)))))))

(assert (=> b!5833177 (=> (not res!2458104) (not e!3578687))))

(declare-fun b!5833178 () Bool)

(declare-fun e!3578688 () Bool)

(declare-fun call!455628 () Bool)

(assert (=> b!5833178 (= e!3578688 call!455628)))

(declare-fun bm!455621 () Bool)

(declare-fun call!455626 () Bool)

(declare-fun call!455627 () Bool)

(assert (=> bm!455621 (= call!455626 call!455627)))

(declare-fun b!5833179 () Bool)

(assert (=> b!5833179 (= e!3578687 call!455627)))

(declare-fun b!5833180 () Bool)

(declare-fun e!3578685 () Bool)

(assert (=> b!5833180 (= e!3578685 e!3578688)))

(declare-fun res!2458107 () Bool)

(assert (=> b!5833180 (=> (not res!2458107) (not e!3578688))))

(assert (=> b!5833180 (= res!2458107 call!455626)))

(declare-fun b!5833181 () Bool)

(declare-fun res!2458105 () Bool)

(assert (=> b!5833181 (=> res!2458105 e!3578685)))

(assert (=> b!5833181 (= res!2458105 (not ((_ is Concat!24732) (h!70284 lt!2302939))))))

(declare-fun e!3578686 () Bool)

(assert (=> b!5833181 (= e!3578686 e!3578685)))

(declare-fun b!5833182 () Bool)

(declare-fun res!2458106 () Bool)

(declare-fun e!3578690 () Bool)

(assert (=> b!5833182 (=> (not res!2458106) (not e!3578690))))

(assert (=> b!5833182 (= res!2458106 call!455626)))

(assert (=> b!5833182 (= e!3578686 e!3578690)))

(declare-fun d!1834145 () Bool)

(declare-fun res!2458108 () Bool)

(declare-fun e!3578689 () Bool)

(assert (=> d!1834145 (=> res!2458108 e!3578689)))

(assert (=> d!1834145 (= res!2458108 ((_ is ElementMatch!15887) (h!70284 lt!2302939)))))

(assert (=> d!1834145 (= (validRegex!7623 (h!70284 lt!2302939)) e!3578689)))

(declare-fun c!1033547 () Bool)

(declare-fun c!1033546 () Bool)

(declare-fun bm!455622 () Bool)

(assert (=> bm!455622 (= call!455627 (validRegex!7623 (ite c!1033546 (reg!16216 (h!70284 lt!2302939)) (ite c!1033547 (regOne!32287 (h!70284 lt!2302939)) (regOne!32286 (h!70284 lt!2302939))))))))

(declare-fun bm!455623 () Bool)

(assert (=> bm!455623 (= call!455628 (validRegex!7623 (ite c!1033547 (regTwo!32287 (h!70284 lt!2302939)) (regTwo!32286 (h!70284 lt!2302939)))))))

(declare-fun b!5833183 () Bool)

(assert (=> b!5833183 (= e!3578691 e!3578686)))

(assert (=> b!5833183 (= c!1033547 ((_ is Union!15887) (h!70284 lt!2302939)))))

(declare-fun b!5833184 () Bool)

(assert (=> b!5833184 (= e!3578690 call!455628)))

(declare-fun b!5833185 () Bool)

(assert (=> b!5833185 (= e!3578689 e!3578691)))

(assert (=> b!5833185 (= c!1033546 ((_ is Star!15887) (h!70284 lt!2302939)))))

(assert (= (and d!1834145 (not res!2458108)) b!5833185))

(assert (= (and b!5833185 c!1033546) b!5833177))

(assert (= (and b!5833185 (not c!1033546)) b!5833183))

(assert (= (and b!5833177 res!2458104) b!5833179))

(assert (= (and b!5833183 c!1033547) b!5833182))

(assert (= (and b!5833183 (not c!1033547)) b!5833181))

(assert (= (and b!5833182 res!2458106) b!5833184))

(assert (= (and b!5833181 (not res!2458105)) b!5833180))

(assert (= (and b!5833180 res!2458107) b!5833178))

(assert (= (or b!5833184 b!5833178) bm!455623))

(assert (= (or b!5833182 b!5833180) bm!455621))

(assert (= (or b!5833179 bm!455621) bm!455622))

(declare-fun m!6761766 () Bool)

(assert (=> b!5833177 m!6761766))

(declare-fun m!6761768 () Bool)

(assert (=> bm!455622 m!6761768))

(declare-fun m!6761770 () Bool)

(assert (=> bm!455623 m!6761770))

(assert (=> bs!1374876 d!1834145))

(declare-fun b!5833187 () Bool)

(declare-fun e!3578692 () Bool)

(declare-fun tp!1612154 () Bool)

(declare-fun tp!1612157 () Bool)

(assert (=> b!5833187 (= e!3578692 (and tp!1612154 tp!1612157))))

(declare-fun b!5833188 () Bool)

(declare-fun tp!1612153 () Bool)

(assert (=> b!5833188 (= e!3578692 tp!1612153)))

(assert (=> b!5831897 (= tp!1611396 e!3578692)))

(declare-fun b!5833186 () Bool)

(assert (=> b!5833186 (= e!3578692 tp_is_empty!41027)))

(declare-fun b!5833189 () Bool)

(declare-fun tp!1612156 () Bool)

(declare-fun tp!1612155 () Bool)

(assert (=> b!5833189 (= e!3578692 (and tp!1612156 tp!1612155))))

(assert (= (and b!5831897 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833186))

(assert (= (and b!5831897 ((_ is Concat!24732) (regOne!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833187))

(assert (= (and b!5831897 ((_ is Star!15887) (regOne!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833188))

(assert (= (and b!5831897 ((_ is Union!15887) (regOne!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833189))

(declare-fun b!5833191 () Bool)

(declare-fun e!3578693 () Bool)

(declare-fun tp!1612159 () Bool)

(declare-fun tp!1612162 () Bool)

(assert (=> b!5833191 (= e!3578693 (and tp!1612159 tp!1612162))))

(declare-fun b!5833192 () Bool)

(declare-fun tp!1612158 () Bool)

(assert (=> b!5833192 (= e!3578693 tp!1612158)))

(assert (=> b!5831897 (= tp!1611399 e!3578693)))

(declare-fun b!5833190 () Bool)

(assert (=> b!5833190 (= e!3578693 tp_is_empty!41027)))

(declare-fun b!5833193 () Bool)

(declare-fun tp!1612161 () Bool)

(declare-fun tp!1612160 () Bool)

(assert (=> b!5833193 (= e!3578693 (and tp!1612161 tp!1612160))))

(assert (= (and b!5831897 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833190))

(assert (= (and b!5831897 ((_ is Concat!24732) (regTwo!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833191))

(assert (= (and b!5831897 ((_ is Star!15887) (regTwo!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833192))

(assert (= (and b!5831897 ((_ is Union!15887) (regTwo!32286 (regOne!32286 (regTwo!32286 r!7292))))) b!5833193))

(declare-fun b!5833195 () Bool)

(declare-fun e!3578694 () Bool)

(declare-fun tp!1612164 () Bool)

(declare-fun tp!1612167 () Bool)

(assert (=> b!5833195 (= e!3578694 (and tp!1612164 tp!1612167))))

(declare-fun b!5833196 () Bool)

(declare-fun tp!1612163 () Bool)

(assert (=> b!5833196 (= e!3578694 tp!1612163)))

(assert (=> b!5831893 (= tp!1611388 e!3578694)))

(declare-fun b!5833194 () Bool)

(assert (=> b!5833194 (= e!3578694 tp_is_empty!41027)))

(declare-fun b!5833197 () Bool)

(declare-fun tp!1612166 () Bool)

(declare-fun tp!1612165 () Bool)

(assert (=> b!5833197 (= e!3578694 (and tp!1612166 tp!1612165))))

(assert (= (and b!5831893 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32287 (reg!16216 r!7292))))) b!5833194))

(assert (= (and b!5831893 ((_ is Concat!24732) (reg!16216 (regTwo!32287 (reg!16216 r!7292))))) b!5833195))

(assert (= (and b!5831893 ((_ is Star!15887) (reg!16216 (regTwo!32287 (reg!16216 r!7292))))) b!5833196))

(assert (= (and b!5831893 ((_ is Union!15887) (reg!16216 (regTwo!32287 (reg!16216 r!7292))))) b!5833197))

(declare-fun b!5833199 () Bool)

(declare-fun e!3578695 () Bool)

(declare-fun tp!1612169 () Bool)

(declare-fun tp!1612172 () Bool)

(assert (=> b!5833199 (= e!3578695 (and tp!1612169 tp!1612172))))

(declare-fun b!5833200 () Bool)

(declare-fun tp!1612168 () Bool)

(assert (=> b!5833200 (= e!3578695 tp!1612168)))

(assert (=> b!5831884 (= tp!1611379 e!3578695)))

(declare-fun b!5833198 () Bool)

(assert (=> b!5833198 (= e!3578695 tp_is_empty!41027)))

(declare-fun b!5833201 () Bool)

(declare-fun tp!1612171 () Bool)

(declare-fun tp!1612170 () Bool)

(assert (=> b!5833201 (= e!3578695 (and tp!1612171 tp!1612170))))

(assert (= (and b!5831884 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833198))

(assert (= (and b!5831884 ((_ is Concat!24732) (regOne!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833199))

(assert (= (and b!5831884 ((_ is Star!15887) (regOne!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833200))

(assert (= (and b!5831884 ((_ is Union!15887) (regOne!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833201))

(declare-fun b!5833203 () Bool)

(declare-fun e!3578696 () Bool)

(declare-fun tp!1612174 () Bool)

(declare-fun tp!1612177 () Bool)

(assert (=> b!5833203 (= e!3578696 (and tp!1612174 tp!1612177))))

(declare-fun b!5833204 () Bool)

(declare-fun tp!1612173 () Bool)

(assert (=> b!5833204 (= e!3578696 tp!1612173)))

(assert (=> b!5831884 (= tp!1611382 e!3578696)))

(declare-fun b!5833202 () Bool)

(assert (=> b!5833202 (= e!3578696 tp_is_empty!41027)))

(declare-fun b!5833205 () Bool)

(declare-fun tp!1612176 () Bool)

(declare-fun tp!1612175 () Bool)

(assert (=> b!5833205 (= e!3578696 (and tp!1612176 tp!1612175))))

(assert (= (and b!5831884 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833202))

(assert (= (and b!5831884 ((_ is Concat!24732) (regTwo!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833203))

(assert (= (and b!5831884 ((_ is Star!15887) (regTwo!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833204))

(assert (= (and b!5831884 ((_ is Union!15887) (regTwo!32286 (regTwo!32286 (reg!16216 r!7292))))) b!5833205))

(declare-fun b!5833207 () Bool)

(declare-fun e!3578697 () Bool)

(declare-fun tp!1612179 () Bool)

(declare-fun tp!1612182 () Bool)

(assert (=> b!5833207 (= e!3578697 (and tp!1612179 tp!1612182))))

(declare-fun b!5833208 () Bool)

(declare-fun tp!1612178 () Bool)

(assert (=> b!5833208 (= e!3578697 tp!1612178)))

(assert (=> b!5831923 (= tp!1611427 e!3578697)))

(declare-fun b!5833206 () Bool)

(assert (=> b!5833206 (= e!3578697 tp_is_empty!41027)))

(declare-fun b!5833209 () Bool)

(declare-fun tp!1612181 () Bool)

(declare-fun tp!1612180 () Bool)

(assert (=> b!5833209 (= e!3578697 (and tp!1612181 tp!1612180))))

(assert (= (and b!5831923 ((_ is ElementMatch!15887) (reg!16216 (regOne!32286 (regOne!32287 r!7292))))) b!5833206))

(assert (= (and b!5831923 ((_ is Concat!24732) (reg!16216 (regOne!32286 (regOne!32287 r!7292))))) b!5833207))

(assert (= (and b!5831923 ((_ is Star!15887) (reg!16216 (regOne!32286 (regOne!32287 r!7292))))) b!5833208))

(assert (= (and b!5831923 ((_ is Union!15887) (reg!16216 (regOne!32286 (regOne!32287 r!7292))))) b!5833209))

(declare-fun b!5833211 () Bool)

(declare-fun e!3578698 () Bool)

(declare-fun tp!1612184 () Bool)

(declare-fun tp!1612187 () Bool)

(assert (=> b!5833211 (= e!3578698 (and tp!1612184 tp!1612187))))

(declare-fun b!5833212 () Bool)

(declare-fun tp!1612183 () Bool)

(assert (=> b!5833212 (= e!3578698 tp!1612183)))

(assert (=> b!5831914 (= tp!1611418 e!3578698)))

(declare-fun b!5833210 () Bool)

(assert (=> b!5833210 (= e!3578698 tp_is_empty!41027)))

(declare-fun b!5833213 () Bool)

(declare-fun tp!1612186 () Bool)

(declare-fun tp!1612185 () Bool)

(assert (=> b!5833213 (= e!3578698 (and tp!1612186 tp!1612185))))

(assert (= (and b!5831914 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833210))

(assert (= (and b!5831914 ((_ is Concat!24732) (regOne!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833211))

(assert (= (and b!5831914 ((_ is Star!15887) (regOne!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833212))

(assert (= (and b!5831914 ((_ is Union!15887) (regOne!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833213))

(declare-fun b!5833215 () Bool)

(declare-fun e!3578699 () Bool)

(declare-fun tp!1612189 () Bool)

(declare-fun tp!1612192 () Bool)

(assert (=> b!5833215 (= e!3578699 (and tp!1612189 tp!1612192))))

(declare-fun b!5833216 () Bool)

(declare-fun tp!1612188 () Bool)

(assert (=> b!5833216 (= e!3578699 tp!1612188)))

(assert (=> b!5831914 (= tp!1611421 e!3578699)))

(declare-fun b!5833214 () Bool)

(assert (=> b!5833214 (= e!3578699 tp_is_empty!41027)))

(declare-fun b!5833217 () Bool)

(declare-fun tp!1612191 () Bool)

(declare-fun tp!1612190 () Bool)

(assert (=> b!5833217 (= e!3578699 (and tp!1612191 tp!1612190))))

(assert (= (and b!5831914 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833214))

(assert (= (and b!5831914 ((_ is Concat!24732) (regTwo!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833215))

(assert (= (and b!5831914 ((_ is Star!15887) (regTwo!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833216))

(assert (= (and b!5831914 ((_ is Union!15887) (regTwo!32286 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833217))

(declare-fun b!5833219 () Bool)

(declare-fun e!3578701 () Bool)

(declare-fun tp!1612193 () Bool)

(assert (=> b!5833219 (= e!3578701 tp!1612193)))

(declare-fun e!3578700 () Bool)

(declare-fun b!5833218 () Bool)

(declare-fun tp!1612194 () Bool)

(assert (=> b!5833218 (= e!3578700 (and (inv!82964 (h!70285 (t!377316 res!2457726))) e!3578701 tp!1612194))))

(assert (=> b!5831674 (= tp!1611287 e!3578700)))

(assert (= b!5833218 b!5833219))

(assert (= (and b!5831674 ((_ is Cons!63837) (t!377316 res!2457726))) b!5833218))

(declare-fun m!6761772 () Bool)

(assert (=> b!5833218 m!6761772))

(declare-fun b!5833221 () Bool)

(declare-fun e!3578702 () Bool)

(declare-fun tp!1612196 () Bool)

(declare-fun tp!1612199 () Bool)

(assert (=> b!5833221 (= e!3578702 (and tp!1612196 tp!1612199))))

(declare-fun b!5833222 () Bool)

(declare-fun tp!1612195 () Bool)

(assert (=> b!5833222 (= e!3578702 tp!1612195)))

(assert (=> b!5831899 (= tp!1611398 e!3578702)))

(declare-fun b!5833220 () Bool)

(assert (=> b!5833220 (= e!3578702 tp_is_empty!41027)))

(declare-fun b!5833223 () Bool)

(declare-fun tp!1612198 () Bool)

(declare-fun tp!1612197 () Bool)

(assert (=> b!5833223 (= e!3578702 (and tp!1612198 tp!1612197))))

(assert (= (and b!5831899 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833220))

(assert (= (and b!5831899 ((_ is Concat!24732) (regOne!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833221))

(assert (= (and b!5831899 ((_ is Star!15887) (regOne!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833222))

(assert (= (and b!5831899 ((_ is Union!15887) (regOne!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833223))

(declare-fun b!5833225 () Bool)

(declare-fun e!3578703 () Bool)

(declare-fun tp!1612201 () Bool)

(declare-fun tp!1612204 () Bool)

(assert (=> b!5833225 (= e!3578703 (and tp!1612201 tp!1612204))))

(declare-fun b!5833226 () Bool)

(declare-fun tp!1612200 () Bool)

(assert (=> b!5833226 (= e!3578703 tp!1612200)))

(assert (=> b!5831899 (= tp!1611397 e!3578703)))

(declare-fun b!5833224 () Bool)

(assert (=> b!5833224 (= e!3578703 tp_is_empty!41027)))

(declare-fun b!5833227 () Bool)

(declare-fun tp!1612203 () Bool)

(declare-fun tp!1612202 () Bool)

(assert (=> b!5833227 (= e!3578703 (and tp!1612203 tp!1612202))))

(assert (= (and b!5831899 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833224))

(assert (= (and b!5831899 ((_ is Concat!24732) (regTwo!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833225))

(assert (= (and b!5831899 ((_ is Star!15887) (regTwo!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833226))

(assert (= (and b!5831899 ((_ is Union!15887) (regTwo!32287 (regOne!32286 (regTwo!32286 r!7292))))) b!5833227))

(declare-fun b!5833229 () Bool)

(declare-fun e!3578704 () Bool)

(declare-fun tp!1612206 () Bool)

(declare-fun tp!1612209 () Bool)

(assert (=> b!5833229 (= e!3578704 (and tp!1612206 tp!1612209))))

(declare-fun b!5833230 () Bool)

(declare-fun tp!1612205 () Bool)

(assert (=> b!5833230 (= e!3578704 tp!1612205)))

(assert (=> b!5831886 (= tp!1611381 e!3578704)))

(declare-fun b!5833228 () Bool)

(assert (=> b!5833228 (= e!3578704 tp_is_empty!41027)))

(declare-fun b!5833231 () Bool)

(declare-fun tp!1612208 () Bool)

(declare-fun tp!1612207 () Bool)

(assert (=> b!5833231 (= e!3578704 (and tp!1612208 tp!1612207))))

(assert (= (and b!5831886 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833228))

(assert (= (and b!5831886 ((_ is Concat!24732) (regOne!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833229))

(assert (= (and b!5831886 ((_ is Star!15887) (regOne!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833230))

(assert (= (and b!5831886 ((_ is Union!15887) (regOne!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833231))

(declare-fun b!5833233 () Bool)

(declare-fun e!3578705 () Bool)

(declare-fun tp!1612211 () Bool)

(declare-fun tp!1612214 () Bool)

(assert (=> b!5833233 (= e!3578705 (and tp!1612211 tp!1612214))))

(declare-fun b!5833234 () Bool)

(declare-fun tp!1612210 () Bool)

(assert (=> b!5833234 (= e!3578705 tp!1612210)))

(assert (=> b!5831886 (= tp!1611380 e!3578705)))

(declare-fun b!5833232 () Bool)

(assert (=> b!5833232 (= e!3578705 tp_is_empty!41027)))

(declare-fun b!5833235 () Bool)

(declare-fun tp!1612213 () Bool)

(declare-fun tp!1612212 () Bool)

(assert (=> b!5833235 (= e!3578705 (and tp!1612213 tp!1612212))))

(assert (= (and b!5831886 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833232))

(assert (= (and b!5831886 ((_ is Concat!24732) (regTwo!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833233))

(assert (= (and b!5831886 ((_ is Star!15887) (regTwo!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833234))

(assert (= (and b!5831886 ((_ is Union!15887) (regTwo!32287 (regTwo!32286 (reg!16216 r!7292))))) b!5833235))

(declare-fun b!5833237 () Bool)

(declare-fun e!3578706 () Bool)

(declare-fun tp!1612216 () Bool)

(declare-fun tp!1612219 () Bool)

(assert (=> b!5833237 (= e!3578706 (and tp!1612216 tp!1612219))))

(declare-fun b!5833238 () Bool)

(declare-fun tp!1612215 () Bool)

(assert (=> b!5833238 (= e!3578706 tp!1612215)))

(assert (=> b!5831868 (= tp!1611359 e!3578706)))

(declare-fun b!5833236 () Bool)

(assert (=> b!5833236 (= e!3578706 tp_is_empty!41027)))

(declare-fun b!5833239 () Bool)

(declare-fun tp!1612218 () Bool)

(declare-fun tp!1612217 () Bool)

(assert (=> b!5833239 (= e!3578706 (and tp!1612218 tp!1612217))))

(assert (= (and b!5831868 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833236))

(assert (= (and b!5831868 ((_ is Concat!24732) (regOne!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833237))

(assert (= (and b!5831868 ((_ is Star!15887) (regOne!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833238))

(assert (= (and b!5831868 ((_ is Union!15887) (regOne!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833239))

(declare-fun b!5833241 () Bool)

(declare-fun e!3578707 () Bool)

(declare-fun tp!1612221 () Bool)

(declare-fun tp!1612224 () Bool)

(assert (=> b!5833241 (= e!3578707 (and tp!1612221 tp!1612224))))

(declare-fun b!5833242 () Bool)

(declare-fun tp!1612220 () Bool)

(assert (=> b!5833242 (= e!3578707 tp!1612220)))

(assert (=> b!5831868 (= tp!1611362 e!3578707)))

(declare-fun b!5833240 () Bool)

(assert (=> b!5833240 (= e!3578707 tp_is_empty!41027)))

(declare-fun b!5833243 () Bool)

(declare-fun tp!1612223 () Bool)

(declare-fun tp!1612222 () Bool)

(assert (=> b!5833243 (= e!3578707 (and tp!1612223 tp!1612222))))

(assert (= (and b!5831868 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833240))

(assert (= (and b!5831868 ((_ is Concat!24732) (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833241))

(assert (= (and b!5831868 ((_ is Star!15887) (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833242))

(assert (= (and b!5831868 ((_ is Union!15887) (regTwo!32286 (regOne!32287 (regOne!32287 r!7292))))) b!5833243))

(declare-fun b!5833244 () Bool)

(declare-fun e!3578708 () Bool)

(declare-fun tp!1612225 () Bool)

(assert (=> b!5833244 (= e!3578708 (and tp_is_empty!41027 tp!1612225))))

(assert (=> b!5831821 (= tp!1611299 e!3578708)))

(assert (= (and b!5831821 ((_ is Cons!63838) (t!377317 (t!377317 (t!377317 s!2326))))) b!5833244))

(declare-fun b!5833246 () Bool)

(declare-fun e!3578709 () Bool)

(declare-fun tp!1612227 () Bool)

(declare-fun tp!1612230 () Bool)

(assert (=> b!5833246 (= e!3578709 (and tp!1612227 tp!1612230))))

(declare-fun b!5833247 () Bool)

(declare-fun tp!1612226 () Bool)

(assert (=> b!5833247 (= e!3578709 tp!1612226)))

(assert (=> b!5831877 (= tp!1611368 e!3578709)))

(declare-fun b!5833245 () Bool)

(assert (=> b!5833245 (= e!3578709 tp_is_empty!41027)))

(declare-fun b!5833248 () Bool)

(declare-fun tp!1612229 () Bool)

(declare-fun tp!1612228 () Bool)

(assert (=> b!5833248 (= e!3578709 (and tp!1612229 tp!1612228))))

(assert (= (and b!5831877 ((_ is ElementMatch!15887) (reg!16216 (reg!16216 (reg!16216 r!7292))))) b!5833245))

(assert (= (and b!5831877 ((_ is Concat!24732) (reg!16216 (reg!16216 (reg!16216 r!7292))))) b!5833246))

(assert (= (and b!5831877 ((_ is Star!15887) (reg!16216 (reg!16216 (reg!16216 r!7292))))) b!5833247))

(assert (= (and b!5831877 ((_ is Union!15887) (reg!16216 (reg!16216 (reg!16216 r!7292))))) b!5833248))

(declare-fun b!5833250 () Bool)

(declare-fun e!3578710 () Bool)

(declare-fun tp!1612232 () Bool)

(declare-fun tp!1612235 () Bool)

(assert (=> b!5833250 (= e!3578710 (and tp!1612232 tp!1612235))))

(declare-fun b!5833251 () Bool)

(declare-fun tp!1612231 () Bool)

(assert (=> b!5833251 (= e!3578710 tp!1612231)))

(assert (=> b!5831827 (= tp!1611304 e!3578710)))

(declare-fun b!5833249 () Bool)

(assert (=> b!5833249 (= e!3578710 tp_is_empty!41027)))

(declare-fun b!5833252 () Bool)

(declare-fun tp!1612234 () Bool)

(declare-fun tp!1612233 () Bool)

(assert (=> b!5833252 (= e!3578710 (and tp!1612234 tp!1612233))))

(assert (= (and b!5831827 ((_ is ElementMatch!15887) (reg!16216 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833249))

(assert (= (and b!5831827 ((_ is Concat!24732) (reg!16216 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833250))

(assert (= (and b!5831827 ((_ is Star!15887) (reg!16216 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833251))

(assert (= (and b!5831827 ((_ is Union!15887) (reg!16216 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833252))

(declare-fun b!5833254 () Bool)

(declare-fun e!3578711 () Bool)

(declare-fun tp!1612237 () Bool)

(declare-fun tp!1612240 () Bool)

(assert (=> b!5833254 (= e!3578711 (and tp!1612237 tp!1612240))))

(declare-fun b!5833255 () Bool)

(declare-fun tp!1612236 () Bool)

(assert (=> b!5833255 (= e!3578711 tp!1612236)))

(assert (=> b!5831916 (= tp!1611420 e!3578711)))

(declare-fun b!5833253 () Bool)

(assert (=> b!5833253 (= e!3578711 tp_is_empty!41027)))

(declare-fun b!5833256 () Bool)

(declare-fun tp!1612239 () Bool)

(declare-fun tp!1612238 () Bool)

(assert (=> b!5833256 (= e!3578711 (and tp!1612239 tp!1612238))))

(assert (= (and b!5831916 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833253))

(assert (= (and b!5831916 ((_ is Concat!24732) (regOne!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833254))

(assert (= (and b!5831916 ((_ is Star!15887) (regOne!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833255))

(assert (= (and b!5831916 ((_ is Union!15887) (regOne!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833256))

(declare-fun b!5833258 () Bool)

(declare-fun e!3578712 () Bool)

(declare-fun tp!1612242 () Bool)

(declare-fun tp!1612245 () Bool)

(assert (=> b!5833258 (= e!3578712 (and tp!1612242 tp!1612245))))

(declare-fun b!5833259 () Bool)

(declare-fun tp!1612241 () Bool)

(assert (=> b!5833259 (= e!3578712 tp!1612241)))

(assert (=> b!5831916 (= tp!1611419 e!3578712)))

(declare-fun b!5833257 () Bool)

(assert (=> b!5833257 (= e!3578712 tp_is_empty!41027)))

(declare-fun b!5833260 () Bool)

(declare-fun tp!1612244 () Bool)

(declare-fun tp!1612243 () Bool)

(assert (=> b!5833260 (= e!3578712 (and tp!1612244 tp!1612243))))

(assert (= (and b!5831916 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833257))

(assert (= (and b!5831916 ((_ is Concat!24732) (regTwo!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833258))

(assert (= (and b!5831916 ((_ is Star!15887) (regTwo!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833259))

(assert (= (and b!5831916 ((_ is Union!15887) (regTwo!32287 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833260))

(declare-fun b!5833262 () Bool)

(declare-fun e!3578713 () Bool)

(declare-fun tp!1612247 () Bool)

(declare-fun tp!1612250 () Bool)

(assert (=> b!5833262 (= e!3578713 (and tp!1612247 tp!1612250))))

(declare-fun b!5833263 () Bool)

(declare-fun tp!1612246 () Bool)

(assert (=> b!5833263 (= e!3578713 tp!1612246)))

(assert (=> b!5831907 (= tp!1611407 e!3578713)))

(declare-fun b!5833261 () Bool)

(assert (=> b!5833261 (= e!3578713 tp_is_empty!41027)))

(declare-fun b!5833264 () Bool)

(declare-fun tp!1612249 () Bool)

(declare-fun tp!1612248 () Bool)

(assert (=> b!5833264 (= e!3578713 (and tp!1612249 tp!1612248))))

(assert (= (and b!5831907 ((_ is ElementMatch!15887) (reg!16216 (reg!16216 (regTwo!32286 r!7292))))) b!5833261))

(assert (= (and b!5831907 ((_ is Concat!24732) (reg!16216 (reg!16216 (regTwo!32286 r!7292))))) b!5833262))

(assert (= (and b!5831907 ((_ is Star!15887) (reg!16216 (reg!16216 (regTwo!32286 r!7292))))) b!5833263))

(assert (= (and b!5831907 ((_ is Union!15887) (reg!16216 (reg!16216 (regTwo!32286 r!7292))))) b!5833264))

(declare-fun b!5833266 () Bool)

(declare-fun e!3578714 () Bool)

(declare-fun tp!1612252 () Bool)

(declare-fun tp!1612255 () Bool)

(assert (=> b!5833266 (= e!3578714 (and tp!1612252 tp!1612255))))

(declare-fun b!5833267 () Bool)

(declare-fun tp!1612251 () Bool)

(assert (=> b!5833267 (= e!3578714 tp!1612251)))

(assert (=> b!5831835 (= tp!1611317 e!3578714)))

(declare-fun b!5833265 () Bool)

(assert (=> b!5833265 (= e!3578714 tp_is_empty!41027)))

(declare-fun b!5833268 () Bool)

(declare-fun tp!1612254 () Bool)

(declare-fun tp!1612253 () Bool)

(assert (=> b!5833268 (= e!3578714 (and tp!1612254 tp!1612253))))

(assert (= (and b!5831835 ((_ is ElementMatch!15887) (regOne!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833265))

(assert (= (and b!5831835 ((_ is Concat!24732) (regOne!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833266))

(assert (= (and b!5831835 ((_ is Star!15887) (regOne!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833267))

(assert (= (and b!5831835 ((_ is Union!15887) (regOne!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833268))

(declare-fun b!5833270 () Bool)

(declare-fun e!3578715 () Bool)

(declare-fun tp!1612257 () Bool)

(declare-fun tp!1612260 () Bool)

(assert (=> b!5833270 (= e!3578715 (and tp!1612257 tp!1612260))))

(declare-fun b!5833271 () Bool)

(declare-fun tp!1612256 () Bool)

(assert (=> b!5833271 (= e!3578715 tp!1612256)))

(assert (=> b!5831835 (= tp!1611320 e!3578715)))

(declare-fun b!5833269 () Bool)

(assert (=> b!5833269 (= e!3578715 tp_is_empty!41027)))

(declare-fun b!5833272 () Bool)

(declare-fun tp!1612259 () Bool)

(declare-fun tp!1612258 () Bool)

(assert (=> b!5833272 (= e!3578715 (and tp!1612259 tp!1612258))))

(assert (= (and b!5831835 ((_ is ElementMatch!15887) (regTwo!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833269))

(assert (= (and b!5831835 ((_ is Concat!24732) (regTwo!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833270))

(assert (= (and b!5831835 ((_ is Star!15887) (regTwo!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833271))

(assert (= (and b!5831835 ((_ is Union!15887) (regTwo!32286 (h!70284 (exprs!5771 setElem!39444))))) b!5833272))

(declare-fun b!5833274 () Bool)

(declare-fun e!3578716 () Bool)

(declare-fun tp!1612262 () Bool)

(declare-fun tp!1612265 () Bool)

(assert (=> b!5833274 (= e!3578716 (and tp!1612262 tp!1612265))))

(declare-fun b!5833275 () Bool)

(declare-fun tp!1612261 () Bool)

(assert (=> b!5833275 (= e!3578716 tp!1612261)))

(assert (=> b!5831831 (= tp!1611312 e!3578716)))

(declare-fun b!5833273 () Bool)

(assert (=> b!5833273 (= e!3578716 tp_is_empty!41027)))

(declare-fun b!5833276 () Bool)

(declare-fun tp!1612264 () Bool)

(declare-fun tp!1612263 () Bool)

(assert (=> b!5833276 (= e!3578716 (and tp!1612264 tp!1612263))))

(assert (= (and b!5831831 ((_ is ElementMatch!15887) (regOne!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833273))

(assert (= (and b!5831831 ((_ is Concat!24732) (regOne!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833274))

(assert (= (and b!5831831 ((_ is Star!15887) (regOne!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833275))

(assert (= (and b!5831831 ((_ is Union!15887) (regOne!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833276))

(declare-fun b!5833278 () Bool)

(declare-fun e!3578717 () Bool)

(declare-fun tp!1612267 () Bool)

(declare-fun tp!1612270 () Bool)

(assert (=> b!5833278 (= e!3578717 (and tp!1612267 tp!1612270))))

(declare-fun b!5833279 () Bool)

(declare-fun tp!1612266 () Bool)

(assert (=> b!5833279 (= e!3578717 tp!1612266)))

(assert (=> b!5831831 (= tp!1611315 e!3578717)))

(declare-fun b!5833277 () Bool)

(assert (=> b!5833277 (= e!3578717 tp_is_empty!41027)))

(declare-fun b!5833280 () Bool)

(declare-fun tp!1612269 () Bool)

(declare-fun tp!1612268 () Bool)

(assert (=> b!5833280 (= e!3578717 (and tp!1612269 tp!1612268))))

(assert (= (and b!5831831 ((_ is ElementMatch!15887) (regTwo!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833277))

(assert (= (and b!5831831 ((_ is Concat!24732) (regTwo!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833278))

(assert (= (and b!5831831 ((_ is Star!15887) (regTwo!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833279))

(assert (= (and b!5831831 ((_ is Union!15887) (regTwo!32286 (reg!16216 (regOne!32286 r!7292))))) b!5833280))

(declare-fun b!5833282 () Bool)

(declare-fun e!3578718 () Bool)

(declare-fun tp!1612272 () Bool)

(declare-fun tp!1612275 () Bool)

(assert (=> b!5833282 (= e!3578718 (and tp!1612272 tp!1612275))))

(declare-fun b!5833283 () Bool)

(declare-fun tp!1612271 () Bool)

(assert (=> b!5833283 (= e!3578718 tp!1612271)))

(assert (=> b!5831866 (= tp!1611356 e!3578718)))

(declare-fun b!5833281 () Bool)

(assert (=> b!5833281 (= e!3578718 tp_is_empty!41027)))

(declare-fun b!5833284 () Bool)

(declare-fun tp!1612274 () Bool)

(declare-fun tp!1612273 () Bool)

(assert (=> b!5833284 (= e!3578718 (and tp!1612274 tp!1612273))))

(assert (= (and b!5831866 ((_ is ElementMatch!15887) (regOne!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833281))

(assert (= (and b!5831866 ((_ is Concat!24732) (regOne!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833282))

(assert (= (and b!5831866 ((_ is Star!15887) (regOne!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833283))

(assert (= (and b!5831866 ((_ is Union!15887) (regOne!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833284))

(declare-fun b!5833286 () Bool)

(declare-fun e!3578719 () Bool)

(declare-fun tp!1612277 () Bool)

(declare-fun tp!1612280 () Bool)

(assert (=> b!5833286 (= e!3578719 (and tp!1612277 tp!1612280))))

(declare-fun b!5833287 () Bool)

(declare-fun tp!1612276 () Bool)

(assert (=> b!5833287 (= e!3578719 tp!1612276)))

(assert (=> b!5831866 (= tp!1611355 e!3578719)))

(declare-fun b!5833285 () Bool)

(assert (=> b!5833285 (= e!3578719 tp_is_empty!41027)))

(declare-fun b!5833288 () Bool)

(declare-fun tp!1612279 () Bool)

(declare-fun tp!1612278 () Bool)

(assert (=> b!5833288 (= e!3578719 (and tp!1612279 tp!1612278))))

(assert (= (and b!5831866 ((_ is ElementMatch!15887) (regTwo!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833285))

(assert (= (and b!5831866 ((_ is Concat!24732) (regTwo!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833286))

(assert (= (and b!5831866 ((_ is Star!15887) (regTwo!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833287))

(assert (= (and b!5831866 ((_ is Union!15887) (regTwo!32287 (reg!16216 (regTwo!32287 r!7292))))) b!5833288))

(declare-fun b!5833290 () Bool)

(declare-fun e!3578720 () Bool)

(declare-fun tp!1612282 () Bool)

(declare-fun tp!1612285 () Bool)

(assert (=> b!5833290 (= e!3578720 (and tp!1612282 tp!1612285))))

(declare-fun b!5833291 () Bool)

(declare-fun tp!1612281 () Bool)

(assert (=> b!5833291 (= e!3578720 tp!1612281)))

(assert (=> b!5831848 (= tp!1611334 e!3578720)))

(declare-fun b!5833289 () Bool)

(assert (=> b!5833289 (= e!3578720 tp_is_empty!41027)))

(declare-fun b!5833292 () Bool)

(declare-fun tp!1612284 () Bool)

(declare-fun tp!1612283 () Bool)

(assert (=> b!5833292 (= e!3578720 (and tp!1612284 tp!1612283))))

(assert (= (and b!5831848 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833289))

(assert (= (and b!5831848 ((_ is Concat!24732) (regOne!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833290))

(assert (= (and b!5831848 ((_ is Star!15887) (regOne!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833291))

(assert (= (and b!5831848 ((_ is Union!15887) (regOne!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833292))

(declare-fun b!5833294 () Bool)

(declare-fun e!3578721 () Bool)

(declare-fun tp!1612287 () Bool)

(declare-fun tp!1612290 () Bool)

(assert (=> b!5833294 (= e!3578721 (and tp!1612287 tp!1612290))))

(declare-fun b!5833295 () Bool)

(declare-fun tp!1612286 () Bool)

(assert (=> b!5833295 (= e!3578721 tp!1612286)))

(assert (=> b!5831848 (= tp!1611337 e!3578721)))

(declare-fun b!5833293 () Bool)

(assert (=> b!5833293 (= e!3578721 tp_is_empty!41027)))

(declare-fun b!5833296 () Bool)

(declare-fun tp!1612289 () Bool)

(declare-fun tp!1612288 () Bool)

(assert (=> b!5833296 (= e!3578721 (and tp!1612289 tp!1612288))))

(assert (= (and b!5831848 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833293))

(assert (= (and b!5831848 ((_ is Concat!24732) (regTwo!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833294))

(assert (= (and b!5831848 ((_ is Star!15887) (regTwo!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833295))

(assert (= (and b!5831848 ((_ is Union!15887) (regTwo!32286 (regOne!32287 (regOne!32286 r!7292))))) b!5833296))

(declare-fun b!5833298 () Bool)

(declare-fun e!3578722 () Bool)

(declare-fun tp!1612292 () Bool)

(declare-fun tp!1612295 () Bool)

(assert (=> b!5833298 (= e!3578722 (and tp!1612292 tp!1612295))))

(declare-fun b!5833299 () Bool)

(declare-fun tp!1612291 () Bool)

(assert (=> b!5833299 (= e!3578722 tp!1612291)))

(assert (=> b!5831857 (= tp!1611343 e!3578722)))

(declare-fun b!5833297 () Bool)

(assert (=> b!5833297 (= e!3578722 tp_is_empty!41027)))

(declare-fun b!5833300 () Bool)

(declare-fun tp!1612294 () Bool)

(declare-fun tp!1612293 () Bool)

(assert (=> b!5833300 (= e!3578722 (and tp!1612294 tp!1612293))))

(assert (= (and b!5831857 ((_ is ElementMatch!15887) (reg!16216 (regOne!32286 (regTwo!32287 r!7292))))) b!5833297))

(assert (= (and b!5831857 ((_ is Concat!24732) (reg!16216 (regOne!32286 (regTwo!32287 r!7292))))) b!5833298))

(assert (= (and b!5831857 ((_ is Star!15887) (reg!16216 (regOne!32286 (regTwo!32287 r!7292))))) b!5833299))

(assert (= (and b!5831857 ((_ is Union!15887) (reg!16216 (regOne!32286 (regTwo!32287 r!7292))))) b!5833300))

(declare-fun b!5833302 () Bool)

(declare-fun e!3578723 () Bool)

(declare-fun tp!1612297 () Bool)

(declare-fun tp!1612300 () Bool)

(assert (=> b!5833302 (= e!3578723 (and tp!1612297 tp!1612300))))

(declare-fun b!5833303 () Bool)

(declare-fun tp!1612296 () Bool)

(assert (=> b!5833303 (= e!3578723 tp!1612296)))

(assert (=> b!5831833 (= tp!1611314 e!3578723)))

(declare-fun b!5833301 () Bool)

(assert (=> b!5833301 (= e!3578723 tp_is_empty!41027)))

(declare-fun b!5833304 () Bool)

(declare-fun tp!1612299 () Bool)

(declare-fun tp!1612298 () Bool)

(assert (=> b!5833304 (= e!3578723 (and tp!1612299 tp!1612298))))

(assert (= (and b!5831833 ((_ is ElementMatch!15887) (regOne!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833301))

(assert (= (and b!5831833 ((_ is Concat!24732) (regOne!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833302))

(assert (= (and b!5831833 ((_ is Star!15887) (regOne!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833303))

(assert (= (and b!5831833 ((_ is Union!15887) (regOne!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833304))

(declare-fun b!5833306 () Bool)

(declare-fun e!3578724 () Bool)

(declare-fun tp!1612302 () Bool)

(declare-fun tp!1612305 () Bool)

(assert (=> b!5833306 (= e!3578724 (and tp!1612302 tp!1612305))))

(declare-fun b!5833307 () Bool)

(declare-fun tp!1612301 () Bool)

(assert (=> b!5833307 (= e!3578724 tp!1612301)))

(assert (=> b!5831833 (= tp!1611313 e!3578724)))

(declare-fun b!5833305 () Bool)

(assert (=> b!5833305 (= e!3578724 tp_is_empty!41027)))

(declare-fun b!5833308 () Bool)

(declare-fun tp!1612304 () Bool)

(declare-fun tp!1612303 () Bool)

(assert (=> b!5833308 (= e!3578724 (and tp!1612304 tp!1612303))))

(assert (= (and b!5831833 ((_ is ElementMatch!15887) (regTwo!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833305))

(assert (= (and b!5831833 ((_ is Concat!24732) (regTwo!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833306))

(assert (= (and b!5831833 ((_ is Star!15887) (regTwo!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833307))

(assert (= (and b!5831833 ((_ is Union!15887) (regTwo!32287 (reg!16216 (regOne!32286 r!7292))))) b!5833308))

(declare-fun b!5833310 () Bool)

(declare-fun e!3578725 () Bool)

(declare-fun tp!1612307 () Bool)

(declare-fun tp!1612310 () Bool)

(assert (=> b!5833310 (= e!3578725 (and tp!1612307 tp!1612310))))

(declare-fun b!5833311 () Bool)

(declare-fun tp!1612306 () Bool)

(assert (=> b!5833311 (= e!3578725 tp!1612306)))

(assert (=> b!5831850 (= tp!1611336 e!3578725)))

(declare-fun b!5833309 () Bool)

(assert (=> b!5833309 (= e!3578725 tp_is_empty!41027)))

(declare-fun b!5833312 () Bool)

(declare-fun tp!1612309 () Bool)

(declare-fun tp!1612308 () Bool)

(assert (=> b!5833312 (= e!3578725 (and tp!1612309 tp!1612308))))

(assert (= (and b!5831850 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833309))

(assert (= (and b!5831850 ((_ is Concat!24732) (regOne!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833310))

(assert (= (and b!5831850 ((_ is Star!15887) (regOne!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833311))

(assert (= (and b!5831850 ((_ is Union!15887) (regOne!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833312))

(declare-fun b!5833314 () Bool)

(declare-fun e!3578726 () Bool)

(declare-fun tp!1612312 () Bool)

(declare-fun tp!1612315 () Bool)

(assert (=> b!5833314 (= e!3578726 (and tp!1612312 tp!1612315))))

(declare-fun b!5833315 () Bool)

(declare-fun tp!1612311 () Bool)

(assert (=> b!5833315 (= e!3578726 tp!1612311)))

(assert (=> b!5831850 (= tp!1611335 e!3578726)))

(declare-fun b!5833313 () Bool)

(assert (=> b!5833313 (= e!3578726 tp_is_empty!41027)))

(declare-fun b!5833316 () Bool)

(declare-fun tp!1612314 () Bool)

(declare-fun tp!1612313 () Bool)

(assert (=> b!5833316 (= e!3578726 (and tp!1612314 tp!1612313))))

(assert (= (and b!5831850 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833313))

(assert (= (and b!5831850 ((_ is Concat!24732) (regTwo!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833314))

(assert (= (and b!5831850 ((_ is Star!15887) (regTwo!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833315))

(assert (= (and b!5831850 ((_ is Union!15887) (regTwo!32287 (regOne!32287 (regOne!32286 r!7292))))) b!5833316))

(declare-fun b!5833318 () Bool)

(declare-fun e!3578727 () Bool)

(declare-fun tp!1612317 () Bool)

(declare-fun tp!1612320 () Bool)

(assert (=> b!5833318 (= e!3578727 (and tp!1612317 tp!1612320))))

(declare-fun b!5833319 () Bool)

(declare-fun tp!1612316 () Bool)

(assert (=> b!5833319 (= e!3578727 tp!1612316)))

(assert (=> b!5831841 (= tp!1611323 e!3578727)))

(declare-fun b!5833317 () Bool)

(assert (=> b!5833317 (= e!3578727 tp_is_empty!41027)))

(declare-fun b!5833320 () Bool)

(declare-fun tp!1612319 () Bool)

(declare-fun tp!1612318 () Bool)

(assert (=> b!5833320 (= e!3578727 (and tp!1612319 tp!1612318))))

(assert (= (and b!5831841 ((_ is ElementMatch!15887) (reg!16216 (regOne!32286 (regOne!32286 r!7292))))) b!5833317))

(assert (= (and b!5831841 ((_ is Concat!24732) (reg!16216 (regOne!32286 (regOne!32286 r!7292))))) b!5833318))

(assert (= (and b!5831841 ((_ is Star!15887) (reg!16216 (regOne!32286 (regOne!32286 r!7292))))) b!5833319))

(assert (= (and b!5831841 ((_ is Union!15887) (reg!16216 (regOne!32286 (regOne!32286 r!7292))))) b!5833320))

(declare-fun b!5833322 () Bool)

(declare-fun e!3578728 () Bool)

(declare-fun tp!1612322 () Bool)

(declare-fun tp!1612325 () Bool)

(assert (=> b!5833322 (= e!3578728 (and tp!1612322 tp!1612325))))

(declare-fun b!5833323 () Bool)

(declare-fun tp!1612321 () Bool)

(assert (=> b!5833323 (= e!3578728 tp!1612321)))

(assert (=> b!5831819 (= tp!1611294 e!3578728)))

(declare-fun b!5833321 () Bool)

(assert (=> b!5833321 (= e!3578728 tp_is_empty!41027)))

(declare-fun b!5833324 () Bool)

(declare-fun tp!1612324 () Bool)

(declare-fun tp!1612323 () Bool)

(assert (=> b!5833324 (= e!3578728 (and tp!1612324 tp!1612323))))

(assert (= (and b!5831819 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833321))

(assert (= (and b!5831819 ((_ is Concat!24732) (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833322))

(assert (= (and b!5831819 ((_ is Star!15887) (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833323))

(assert (= (and b!5831819 ((_ is Union!15887) (reg!16216 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833324))

(declare-fun b!5833326 () Bool)

(declare-fun e!3578729 () Bool)

(declare-fun tp!1612327 () Bool)

(declare-fun tp!1612330 () Bool)

(assert (=> b!5833326 (= e!3578729 (and tp!1612327 tp!1612330))))

(declare-fun b!5833327 () Bool)

(declare-fun tp!1612326 () Bool)

(assert (=> b!5833327 (= e!3578729 tp!1612326)))

(assert (=> b!5831815 (= tp!1611289 e!3578729)))

(declare-fun b!5833325 () Bool)

(assert (=> b!5833325 (= e!3578729 tp_is_empty!41027)))

(declare-fun b!5833328 () Bool)

(declare-fun tp!1612329 () Bool)

(declare-fun tp!1612328 () Bool)

(assert (=> b!5833328 (= e!3578729 (and tp!1612329 tp!1612328))))

(assert (= (and b!5831815 ((_ is ElementMatch!15887) (reg!16216 (regOne!32287 (regTwo!32287 r!7292))))) b!5833325))

(assert (= (and b!5831815 ((_ is Concat!24732) (reg!16216 (regOne!32287 (regTwo!32287 r!7292))))) b!5833326))

(assert (= (and b!5831815 ((_ is Star!15887) (reg!16216 (regOne!32287 (regTwo!32287 r!7292))))) b!5833327))

(assert (= (and b!5831815 ((_ is Union!15887) (reg!16216 (regOne!32287 (regTwo!32287 r!7292))))) b!5833328))

(declare-fun b!5833330 () Bool)

(declare-fun e!3578730 () Bool)

(declare-fun tp!1612332 () Bool)

(declare-fun tp!1612335 () Bool)

(assert (=> b!5833330 (= e!3578730 (and tp!1612332 tp!1612335))))

(declare-fun b!5833331 () Bool)

(declare-fun tp!1612331 () Bool)

(assert (=> b!5833331 (= e!3578730 tp!1612331)))

(assert (=> b!5831902 (= tp!1611400 e!3578730)))

(declare-fun b!5833329 () Bool)

(assert (=> b!5833329 (= e!3578730 tp_is_empty!41027)))

(declare-fun b!5833332 () Bool)

(declare-fun tp!1612334 () Bool)

(declare-fun tp!1612333 () Bool)

(assert (=> b!5833332 (= e!3578730 (and tp!1612334 tp!1612333))))

(assert (= (and b!5831902 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833329))

(assert (= (and b!5831902 ((_ is Concat!24732) (reg!16216 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833330))

(assert (= (and b!5831902 ((_ is Star!15887) (reg!16216 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833331))

(assert (= (and b!5831902 ((_ is Union!15887) (reg!16216 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833332))

(declare-fun b!5833333 () Bool)

(declare-fun e!3578731 () Bool)

(declare-fun tp!1612336 () Bool)

(declare-fun tp!1612337 () Bool)

(assert (=> b!5833333 (= e!3578731 (and tp!1612336 tp!1612337))))

(assert (=> b!5831895 (= tp!1611394 e!3578731)))

(assert (= (and b!5831895 ((_ is Cons!63836) (exprs!5771 setElem!39452))) b!5833333))

(declare-fun b!5833335 () Bool)

(declare-fun e!3578732 () Bool)

(declare-fun tp!1612339 () Bool)

(declare-fun tp!1612342 () Bool)

(assert (=> b!5833335 (= e!3578732 (and tp!1612339 tp!1612342))))

(declare-fun b!5833336 () Bool)

(declare-fun tp!1612338 () Bool)

(assert (=> b!5833336 (= e!3578732 tp!1612338)))

(assert (=> b!5831889 (= tp!1611383 e!3578732)))

(declare-fun b!5833334 () Bool)

(assert (=> b!5833334 (= e!3578732 tp_is_empty!41027)))

(declare-fun b!5833337 () Bool)

(declare-fun tp!1612341 () Bool)

(declare-fun tp!1612340 () Bool)

(assert (=> b!5833337 (= e!3578732 (and tp!1612341 tp!1612340))))

(assert (= (and b!5831889 ((_ is ElementMatch!15887) (reg!16216 (regOne!32287 (reg!16216 r!7292))))) b!5833334))

(assert (= (and b!5831889 ((_ is Concat!24732) (reg!16216 (regOne!32287 (reg!16216 r!7292))))) b!5833335))

(assert (= (and b!5831889 ((_ is Star!15887) (reg!16216 (regOne!32287 (reg!16216 r!7292))))) b!5833336))

(assert (= (and b!5831889 ((_ is Union!15887) (reg!16216 (regOne!32287 (reg!16216 r!7292))))) b!5833337))

(declare-fun b!5833339 () Bool)

(declare-fun e!3578733 () Bool)

(declare-fun tp!1612344 () Bool)

(declare-fun tp!1612347 () Bool)

(assert (=> b!5833339 (= e!3578733 (and tp!1612344 tp!1612347))))

(declare-fun b!5833340 () Bool)

(declare-fun tp!1612343 () Bool)

(assert (=> b!5833340 (= e!3578733 tp!1612343)))

(assert (=> b!5831928 (= tp!1611435 e!3578733)))

(declare-fun b!5833338 () Bool)

(assert (=> b!5833338 (= e!3578733 tp_is_empty!41027)))

(declare-fun b!5833341 () Bool)

(declare-fun tp!1612346 () Bool)

(declare-fun tp!1612345 () Bool)

(assert (=> b!5833341 (= e!3578733 (and tp!1612346 tp!1612345))))

(assert (= (and b!5831928 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833338))

(assert (= (and b!5831928 ((_ is Concat!24732) (regOne!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833339))

(assert (= (and b!5831928 ((_ is Star!15887) (regOne!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833340))

(assert (= (and b!5831928 ((_ is Union!15887) (regOne!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833341))

(declare-fun b!5833343 () Bool)

(declare-fun e!3578734 () Bool)

(declare-fun tp!1612349 () Bool)

(declare-fun tp!1612352 () Bool)

(assert (=> b!5833343 (= e!3578734 (and tp!1612349 tp!1612352))))

(declare-fun b!5833344 () Bool)

(declare-fun tp!1612348 () Bool)

(assert (=> b!5833344 (= e!3578734 tp!1612348)))

(assert (=> b!5831928 (= tp!1611434 e!3578734)))

(declare-fun b!5833342 () Bool)

(assert (=> b!5833342 (= e!3578734 tp_is_empty!41027)))

(declare-fun b!5833345 () Bool)

(declare-fun tp!1612351 () Bool)

(declare-fun tp!1612350 () Bool)

(assert (=> b!5833345 (= e!3578734 (and tp!1612351 tp!1612350))))

(assert (= (and b!5831928 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833342))

(assert (= (and b!5831928 ((_ is Concat!24732) (regTwo!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833343))

(assert (= (and b!5831928 ((_ is Star!15887) (regTwo!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833344))

(assert (= (and b!5831928 ((_ is Union!15887) (regTwo!32287 (regTwo!32286 (regOne!32287 r!7292))))) b!5833345))

(declare-fun b!5833347 () Bool)

(declare-fun e!3578735 () Bool)

(declare-fun tp!1612354 () Bool)

(declare-fun tp!1612357 () Bool)

(assert (=> b!5833347 (= e!3578735 (and tp!1612354 tp!1612357))))

(declare-fun b!5833348 () Bool)

(declare-fun tp!1612353 () Bool)

(assert (=> b!5833348 (= e!3578735 tp!1612353)))

(assert (=> b!5831880 (= tp!1611374 e!3578735)))

(declare-fun b!5833346 () Bool)

(assert (=> b!5833346 (= e!3578735 tp_is_empty!41027)))

(declare-fun b!5833349 () Bool)

(declare-fun tp!1612356 () Bool)

(declare-fun tp!1612355 () Bool)

(assert (=> b!5833349 (= e!3578735 (and tp!1612356 tp!1612355))))

(assert (= (and b!5831880 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833346))

(assert (= (and b!5831880 ((_ is Concat!24732) (regOne!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833347))

(assert (= (and b!5831880 ((_ is Star!15887) (regOne!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833348))

(assert (= (and b!5831880 ((_ is Union!15887) (regOne!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833349))

(declare-fun b!5833351 () Bool)

(declare-fun e!3578736 () Bool)

(declare-fun tp!1612359 () Bool)

(declare-fun tp!1612362 () Bool)

(assert (=> b!5833351 (= e!3578736 (and tp!1612359 tp!1612362))))

(declare-fun b!5833352 () Bool)

(declare-fun tp!1612358 () Bool)

(assert (=> b!5833352 (= e!3578736 tp!1612358)))

(assert (=> b!5831880 (= tp!1611377 e!3578736)))

(declare-fun b!5833350 () Bool)

(assert (=> b!5833350 (= e!3578736 tp_is_empty!41027)))

(declare-fun b!5833353 () Bool)

(declare-fun tp!1612361 () Bool)

(declare-fun tp!1612360 () Bool)

(assert (=> b!5833353 (= e!3578736 (and tp!1612361 tp!1612360))))

(assert (= (and b!5831880 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833350))

(assert (= (and b!5831880 ((_ is Concat!24732) (regTwo!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833351))

(assert (= (and b!5831880 ((_ is Star!15887) (regTwo!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833352))

(assert (= (and b!5831880 ((_ is Union!15887) (regTwo!32286 (regOne!32286 (reg!16216 r!7292))))) b!5833353))

(declare-fun b!5833355 () Bool)

(declare-fun e!3578737 () Bool)

(declare-fun tp!1612364 () Bool)

(declare-fun tp!1612367 () Bool)

(assert (=> b!5833355 (= e!3578737 (and tp!1612364 tp!1612367))))

(declare-fun b!5833356 () Bool)

(declare-fun tp!1612363 () Bool)

(assert (=> b!5833356 (= e!3578737 tp!1612363)))

(assert (=> b!5831919 (= tp!1611422 e!3578737)))

(declare-fun b!5833354 () Bool)

(assert (=> b!5833354 (= e!3578737 tp_is_empty!41027)))

(declare-fun b!5833357 () Bool)

(declare-fun tp!1612366 () Bool)

(declare-fun tp!1612365 () Bool)

(assert (=> b!5833357 (= e!3578737 (and tp!1612366 tp!1612365))))

(assert (= (and b!5831919 ((_ is ElementMatch!15887) (reg!16216 (reg!16216 (regOne!32287 r!7292))))) b!5833354))

(assert (= (and b!5831919 ((_ is Concat!24732) (reg!16216 (reg!16216 (regOne!32287 r!7292))))) b!5833355))

(assert (= (and b!5831919 ((_ is Star!15887) (reg!16216 (reg!16216 (regOne!32287 r!7292))))) b!5833356))

(assert (= (and b!5831919 ((_ is Union!15887) (reg!16216 (reg!16216 (regOne!32287 r!7292))))) b!5833357))

(declare-fun b!5833359 () Bool)

(declare-fun e!3578738 () Bool)

(declare-fun tp!1612369 () Bool)

(declare-fun tp!1612372 () Bool)

(assert (=> b!5833359 (= e!3578738 (and tp!1612369 tp!1612372))))

(declare-fun b!5833360 () Bool)

(declare-fun tp!1612368 () Bool)

(assert (=> b!5833360 (= e!3578738 tp!1612368)))

(assert (=> b!5831910 (= tp!1611413 e!3578738)))

(declare-fun b!5833358 () Bool)

(assert (=> b!5833358 (= e!3578738 tp_is_empty!41027)))

(declare-fun b!5833361 () Bool)

(declare-fun tp!1612371 () Bool)

(declare-fun tp!1612370 () Bool)

(assert (=> b!5833361 (= e!3578738 (and tp!1612371 tp!1612370))))

(assert (= (and b!5831910 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833358))

(assert (= (and b!5831910 ((_ is Concat!24732) (regOne!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833359))

(assert (= (and b!5831910 ((_ is Star!15887) (regOne!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833360))

(assert (= (and b!5831910 ((_ is Union!15887) (regOne!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833361))

(declare-fun b!5833363 () Bool)

(declare-fun e!3578739 () Bool)

(declare-fun tp!1612374 () Bool)

(declare-fun tp!1612377 () Bool)

(assert (=> b!5833363 (= e!3578739 (and tp!1612374 tp!1612377))))

(declare-fun b!5833364 () Bool)

(declare-fun tp!1612373 () Bool)

(assert (=> b!5833364 (= e!3578739 tp!1612373)))

(assert (=> b!5831910 (= tp!1611416 e!3578739)))

(declare-fun b!5833362 () Bool)

(assert (=> b!5833362 (= e!3578739 tp_is_empty!41027)))

(declare-fun b!5833365 () Bool)

(declare-fun tp!1612376 () Bool)

(declare-fun tp!1612375 () Bool)

(assert (=> b!5833365 (= e!3578739 (and tp!1612376 tp!1612375))))

(assert (= (and b!5831910 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833362))

(assert (= (and b!5831910 ((_ is Concat!24732) (regTwo!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833363))

(assert (= (and b!5831910 ((_ is Star!15887) (regTwo!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833364))

(assert (= (and b!5831910 ((_ is Union!15887) (regTwo!32286 (regOne!32287 (regTwo!32286 r!7292))))) b!5833365))

(declare-fun b!5833367 () Bool)

(declare-fun e!3578740 () Bool)

(declare-fun tp!1612379 () Bool)

(declare-fun tp!1612382 () Bool)

(assert (=> b!5833367 (= e!3578740 (and tp!1612379 tp!1612382))))

(declare-fun b!5833368 () Bool)

(declare-fun tp!1612378 () Bool)

(assert (=> b!5833368 (= e!3578740 tp!1612378)))

(assert (=> b!5831882 (= tp!1611376 e!3578740)))

(declare-fun b!5833366 () Bool)

(assert (=> b!5833366 (= e!3578740 tp_is_empty!41027)))

(declare-fun b!5833369 () Bool)

(declare-fun tp!1612381 () Bool)

(declare-fun tp!1612380 () Bool)

(assert (=> b!5833369 (= e!3578740 (and tp!1612381 tp!1612380))))

(assert (= (and b!5831882 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833366))

(assert (= (and b!5831882 ((_ is Concat!24732) (regOne!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833367))

(assert (= (and b!5831882 ((_ is Star!15887) (regOne!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833368))

(assert (= (and b!5831882 ((_ is Union!15887) (regOne!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833369))

(declare-fun b!5833371 () Bool)

(declare-fun e!3578741 () Bool)

(declare-fun tp!1612384 () Bool)

(declare-fun tp!1612387 () Bool)

(assert (=> b!5833371 (= e!3578741 (and tp!1612384 tp!1612387))))

(declare-fun b!5833372 () Bool)

(declare-fun tp!1612383 () Bool)

(assert (=> b!5833372 (= e!3578741 tp!1612383)))

(assert (=> b!5831882 (= tp!1611375 e!3578741)))

(declare-fun b!5833370 () Bool)

(assert (=> b!5833370 (= e!3578741 tp_is_empty!41027)))

(declare-fun b!5833373 () Bool)

(declare-fun tp!1612386 () Bool)

(declare-fun tp!1612385 () Bool)

(assert (=> b!5833373 (= e!3578741 (and tp!1612386 tp!1612385))))

(assert (= (and b!5831882 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833370))

(assert (= (and b!5831882 ((_ is Concat!24732) (regTwo!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833371))

(assert (= (and b!5831882 ((_ is Star!15887) (regTwo!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833372))

(assert (= (and b!5831882 ((_ is Union!15887) (regTwo!32287 (regOne!32286 (reg!16216 r!7292))))) b!5833373))

(declare-fun b!5833375 () Bool)

(declare-fun e!3578742 () Bool)

(declare-fun tp!1612389 () Bool)

(declare-fun tp!1612392 () Bool)

(assert (=> b!5833375 (= e!3578742 (and tp!1612389 tp!1612392))))

(declare-fun b!5833376 () Bool)

(declare-fun tp!1612388 () Bool)

(assert (=> b!5833376 (= e!3578742 tp!1612388)))

(assert (=> b!5831864 (= tp!1611354 e!3578742)))

(declare-fun b!5833374 () Bool)

(assert (=> b!5833374 (= e!3578742 tp_is_empty!41027)))

(declare-fun b!5833377 () Bool)

(declare-fun tp!1612391 () Bool)

(declare-fun tp!1612390 () Bool)

(assert (=> b!5833377 (= e!3578742 (and tp!1612391 tp!1612390))))

(assert (= (and b!5831864 ((_ is ElementMatch!15887) (regOne!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833374))

(assert (= (and b!5831864 ((_ is Concat!24732) (regOne!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833375))

(assert (= (and b!5831864 ((_ is Star!15887) (regOne!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833376))

(assert (= (and b!5831864 ((_ is Union!15887) (regOne!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833377))

(declare-fun b!5833379 () Bool)

(declare-fun e!3578743 () Bool)

(declare-fun tp!1612394 () Bool)

(declare-fun tp!1612397 () Bool)

(assert (=> b!5833379 (= e!3578743 (and tp!1612394 tp!1612397))))

(declare-fun b!5833380 () Bool)

(declare-fun tp!1612393 () Bool)

(assert (=> b!5833380 (= e!3578743 tp!1612393)))

(assert (=> b!5831864 (= tp!1611357 e!3578743)))

(declare-fun b!5833378 () Bool)

(assert (=> b!5833378 (= e!3578743 tp_is_empty!41027)))

(declare-fun b!5833381 () Bool)

(declare-fun tp!1612396 () Bool)

(declare-fun tp!1612395 () Bool)

(assert (=> b!5833381 (= e!3578743 (and tp!1612396 tp!1612395))))

(assert (= (and b!5831864 ((_ is ElementMatch!15887) (regTwo!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833378))

(assert (= (and b!5831864 ((_ is Concat!24732) (regTwo!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833379))

(assert (= (and b!5831864 ((_ is Star!15887) (regTwo!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833380))

(assert (= (and b!5831864 ((_ is Union!15887) (regTwo!32286 (reg!16216 (regTwo!32287 r!7292))))) b!5833381))

(declare-fun b!5833383 () Bool)

(declare-fun e!3578744 () Bool)

(declare-fun tp!1612399 () Bool)

(declare-fun tp!1612402 () Bool)

(assert (=> b!5833383 (= e!3578744 (and tp!1612399 tp!1612402))))

(declare-fun b!5833384 () Bool)

(declare-fun tp!1612398 () Bool)

(assert (=> b!5833384 (= e!3578744 tp!1612398)))

(assert (=> b!5831873 (= tp!1611363 e!3578744)))

(declare-fun b!5833382 () Bool)

(assert (=> b!5833382 (= e!3578744 tp_is_empty!41027)))

(declare-fun b!5833385 () Bool)

(declare-fun tp!1612401 () Bool)

(declare-fun tp!1612400 () Bool)

(assert (=> b!5833385 (= e!3578744 (and tp!1612401 tp!1612400))))

(assert (= (and b!5831873 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32287 (regOne!32287 r!7292))))) b!5833382))

(assert (= (and b!5831873 ((_ is Concat!24732) (reg!16216 (regTwo!32287 (regOne!32287 r!7292))))) b!5833383))

(assert (= (and b!5831873 ((_ is Star!15887) (reg!16216 (regTwo!32287 (regOne!32287 r!7292))))) b!5833384))

(assert (= (and b!5831873 ((_ is Union!15887) (reg!16216 (regTwo!32287 (regOne!32287 r!7292))))) b!5833385))

(declare-fun b!5833387 () Bool)

(declare-fun e!3578745 () Bool)

(declare-fun tp!1612404 () Bool)

(declare-fun tp!1612407 () Bool)

(assert (=> b!5833387 (= e!3578745 (and tp!1612404 tp!1612407))))

(declare-fun b!5833388 () Bool)

(declare-fun tp!1612403 () Bool)

(assert (=> b!5833388 (= e!3578745 tp!1612403)))

(assert (=> b!5831912 (= tp!1611415 e!3578745)))

(declare-fun b!5833386 () Bool)

(assert (=> b!5833386 (= e!3578745 tp_is_empty!41027)))

(declare-fun b!5833389 () Bool)

(declare-fun tp!1612406 () Bool)

(declare-fun tp!1612405 () Bool)

(assert (=> b!5833389 (= e!3578745 (and tp!1612406 tp!1612405))))

(assert (= (and b!5831912 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833386))

(assert (= (and b!5831912 ((_ is Concat!24732) (regOne!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833387))

(assert (= (and b!5831912 ((_ is Star!15887) (regOne!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833388))

(assert (= (and b!5831912 ((_ is Union!15887) (regOne!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833389))

(declare-fun b!5833391 () Bool)

(declare-fun e!3578746 () Bool)

(declare-fun tp!1612409 () Bool)

(declare-fun tp!1612412 () Bool)

(assert (=> b!5833391 (= e!3578746 (and tp!1612409 tp!1612412))))

(declare-fun b!5833392 () Bool)

(declare-fun tp!1612408 () Bool)

(assert (=> b!5833392 (= e!3578746 tp!1612408)))

(assert (=> b!5831912 (= tp!1611414 e!3578746)))

(declare-fun b!5833390 () Bool)

(assert (=> b!5833390 (= e!3578746 tp_is_empty!41027)))

(declare-fun b!5833393 () Bool)

(declare-fun tp!1612411 () Bool)

(declare-fun tp!1612410 () Bool)

(assert (=> b!5833393 (= e!3578746 (and tp!1612411 tp!1612410))))

(assert (= (and b!5831912 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833390))

(assert (= (and b!5831912 ((_ is Concat!24732) (regTwo!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833391))

(assert (= (and b!5831912 ((_ is Star!15887) (regTwo!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833392))

(assert (= (and b!5831912 ((_ is Union!15887) (regTwo!32287 (regOne!32287 (regTwo!32286 r!7292))))) b!5833393))

(declare-fun b!5833395 () Bool)

(declare-fun e!3578747 () Bool)

(declare-fun tp!1612414 () Bool)

(declare-fun tp!1612417 () Bool)

(assert (=> b!5833395 (= e!3578747 (and tp!1612414 tp!1612417))))

(declare-fun b!5833396 () Bool)

(declare-fun tp!1612413 () Bool)

(assert (=> b!5833396 (= e!3578747 tp!1612413)))

(assert (=> b!5831836 (= tp!1611316 e!3578747)))

(declare-fun b!5833394 () Bool)

(assert (=> b!5833394 (= e!3578747 tp_is_empty!41027)))

(declare-fun b!5833397 () Bool)

(declare-fun tp!1612416 () Bool)

(declare-fun tp!1612415 () Bool)

(assert (=> b!5833397 (= e!3578747 (and tp!1612416 tp!1612415))))

(assert (= (and b!5831836 ((_ is ElementMatch!15887) (reg!16216 (h!70284 (exprs!5771 setElem!39444))))) b!5833394))

(assert (= (and b!5831836 ((_ is Concat!24732) (reg!16216 (h!70284 (exprs!5771 setElem!39444))))) b!5833395))

(assert (= (and b!5831836 ((_ is Star!15887) (reg!16216 (h!70284 (exprs!5771 setElem!39444))))) b!5833396))

(assert (= (and b!5831836 ((_ is Union!15887) (reg!16216 (h!70284 (exprs!5771 setElem!39444))))) b!5833397))

(declare-fun b!5833399 () Bool)

(declare-fun e!3578748 () Bool)

(declare-fun tp!1612419 () Bool)

(declare-fun tp!1612422 () Bool)

(assert (=> b!5833399 (= e!3578748 (and tp!1612419 tp!1612422))))

(declare-fun b!5833400 () Bool)

(declare-fun tp!1612418 () Bool)

(assert (=> b!5833400 (= e!3578748 tp!1612418)))

(assert (=> b!5831862 (= tp!1611351 e!3578748)))

(declare-fun b!5833398 () Bool)

(assert (=> b!5833398 (= e!3578748 tp_is_empty!41027)))

(declare-fun b!5833401 () Bool)

(declare-fun tp!1612421 () Bool)

(declare-fun tp!1612420 () Bool)

(assert (=> b!5833401 (= e!3578748 (and tp!1612421 tp!1612420))))

(assert (= (and b!5831862 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833398))

(assert (= (and b!5831862 ((_ is Concat!24732) (regOne!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833399))

(assert (= (and b!5831862 ((_ is Star!15887) (regOne!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833400))

(assert (= (and b!5831862 ((_ is Union!15887) (regOne!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833401))

(declare-fun b!5833403 () Bool)

(declare-fun e!3578749 () Bool)

(declare-fun tp!1612424 () Bool)

(declare-fun tp!1612427 () Bool)

(assert (=> b!5833403 (= e!3578749 (and tp!1612424 tp!1612427))))

(declare-fun b!5833404 () Bool)

(declare-fun tp!1612423 () Bool)

(assert (=> b!5833404 (= e!3578749 tp!1612423)))

(assert (=> b!5831862 (= tp!1611350 e!3578749)))

(declare-fun b!5833402 () Bool)

(assert (=> b!5833402 (= e!3578749 tp_is_empty!41027)))

(declare-fun b!5833405 () Bool)

(declare-fun tp!1612426 () Bool)

(declare-fun tp!1612425 () Bool)

(assert (=> b!5833405 (= e!3578749 (and tp!1612426 tp!1612425))))

(assert (= (and b!5831862 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833402))

(assert (= (and b!5831862 ((_ is Concat!24732) (regTwo!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833403))

(assert (= (and b!5831862 ((_ is Star!15887) (regTwo!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833404))

(assert (= (and b!5831862 ((_ is Union!15887) (regTwo!32287 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833405))

(declare-fun b!5833407 () Bool)

(declare-fun e!3578750 () Bool)

(declare-fun tp!1612429 () Bool)

(declare-fun tp!1612432 () Bool)

(assert (=> b!5833407 (= e!3578750 (and tp!1612429 tp!1612432))))

(declare-fun b!5833408 () Bool)

(declare-fun tp!1612428 () Bool)

(assert (=> b!5833408 (= e!3578750 tp!1612428)))

(assert (=> b!5831844 (= tp!1611329 e!3578750)))

(declare-fun b!5833406 () Bool)

(assert (=> b!5833406 (= e!3578750 tp_is_empty!41027)))

(declare-fun b!5833409 () Bool)

(declare-fun tp!1612431 () Bool)

(declare-fun tp!1612430 () Bool)

(assert (=> b!5833409 (= e!3578750 (and tp!1612431 tp!1612430))))

(assert (= (and b!5831844 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833406))

(assert (= (and b!5831844 ((_ is Concat!24732) (regOne!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833407))

(assert (= (and b!5831844 ((_ is Star!15887) (regOne!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833408))

(assert (= (and b!5831844 ((_ is Union!15887) (regOne!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833409))

(declare-fun b!5833411 () Bool)

(declare-fun e!3578751 () Bool)

(declare-fun tp!1612434 () Bool)

(declare-fun tp!1612437 () Bool)

(assert (=> b!5833411 (= e!3578751 (and tp!1612434 tp!1612437))))

(declare-fun b!5833412 () Bool)

(declare-fun tp!1612433 () Bool)

(assert (=> b!5833412 (= e!3578751 tp!1612433)))

(assert (=> b!5831844 (= tp!1611332 e!3578751)))

(declare-fun b!5833410 () Bool)

(assert (=> b!5833410 (= e!3578751 tp_is_empty!41027)))

(declare-fun b!5833413 () Bool)

(declare-fun tp!1612436 () Bool)

(declare-fun tp!1612435 () Bool)

(assert (=> b!5833413 (= e!3578751 (and tp!1612436 tp!1612435))))

(assert (= (and b!5831844 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833410))

(assert (= (and b!5831844 ((_ is Concat!24732) (regTwo!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833411))

(assert (= (and b!5831844 ((_ is Star!15887) (regTwo!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833412))

(assert (= (and b!5831844 ((_ is Union!15887) (regTwo!32286 (regTwo!32286 (regOne!32286 r!7292))))) b!5833413))

(declare-fun b!5833415 () Bool)

(declare-fun e!3578752 () Bool)

(declare-fun tp!1612439 () Bool)

(declare-fun tp!1612442 () Bool)

(assert (=> b!5833415 (= e!3578752 (and tp!1612439 tp!1612442))))

(declare-fun b!5833416 () Bool)

(declare-fun tp!1612438 () Bool)

(assert (=> b!5833416 (= e!3578752 tp!1612438)))

(assert (=> b!5831853 (= tp!1611338 e!3578752)))

(declare-fun b!5833414 () Bool)

(assert (=> b!5833414 (= e!3578752 tp_is_empty!41027)))

(declare-fun b!5833417 () Bool)

(declare-fun tp!1612441 () Bool)

(declare-fun tp!1612440 () Bool)

(assert (=> b!5833417 (= e!3578752 (and tp!1612441 tp!1612440))))

(assert (= (and b!5831853 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32287 (regOne!32286 r!7292))))) b!5833414))

(assert (= (and b!5831853 ((_ is Concat!24732) (reg!16216 (regTwo!32287 (regOne!32286 r!7292))))) b!5833415))

(assert (= (and b!5831853 ((_ is Star!15887) (reg!16216 (regTwo!32287 (regOne!32286 r!7292))))) b!5833416))

(assert (= (and b!5831853 ((_ is Union!15887) (reg!16216 (regTwo!32287 (regOne!32286 r!7292))))) b!5833417))

(declare-fun b!5833419 () Bool)

(declare-fun e!3578753 () Bool)

(declare-fun tp!1612444 () Bool)

(declare-fun tp!1612447 () Bool)

(assert (=> b!5833419 (= e!3578753 (and tp!1612444 tp!1612447))))

(declare-fun b!5833420 () Bool)

(declare-fun tp!1612443 () Bool)

(assert (=> b!5833420 (= e!3578753 tp!1612443)))

(assert (=> b!5831829 (= tp!1611309 e!3578753)))

(declare-fun b!5833418 () Bool)

(assert (=> b!5833418 (= e!3578753 tp_is_empty!41027)))

(declare-fun b!5833421 () Bool)

(declare-fun tp!1612446 () Bool)

(declare-fun tp!1612445 () Bool)

(assert (=> b!5833421 (= e!3578753 (and tp!1612446 tp!1612445))))

(assert (= (and b!5831829 ((_ is ElementMatch!15887) (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343)))))) b!5833418))

(assert (= (and b!5831829 ((_ is Concat!24732) (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343)))))) b!5833419))

(assert (= (and b!5831829 ((_ is Star!15887) (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343)))))) b!5833420))

(assert (= (and b!5831829 ((_ is Union!15887) (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343)))))) b!5833421))

(declare-fun b!5833422 () Bool)

(declare-fun e!3578754 () Bool)

(declare-fun tp!1612448 () Bool)

(declare-fun tp!1612449 () Bool)

(assert (=> b!5833422 (= e!3578754 (and tp!1612448 tp!1612449))))

(assert (=> b!5831829 (= tp!1611310 e!3578754)))

(assert (= (and b!5831829 ((_ is Cons!63836) (t!377315 (t!377315 (exprs!5771 (h!70285 zl!343)))))) b!5833422))

(declare-fun b!5833424 () Bool)

(declare-fun e!3578756 () Bool)

(declare-fun tp!1612450 () Bool)

(assert (=> b!5833424 (= e!3578756 tp!1612450)))

(declare-fun tp!1612451 () Bool)

(declare-fun e!3578755 () Bool)

(declare-fun b!5833423 () Bool)

(assert (=> b!5833423 (= e!3578755 (and (inv!82964 (h!70285 (t!377316 (t!377316 (t!377316 zl!343))))) e!3578756 tp!1612451))))

(assert (=> b!5831822 (= tp!1611301 e!3578755)))

(assert (= b!5833423 b!5833424))

(assert (= (and b!5831822 ((_ is Cons!63837) (t!377316 (t!377316 (t!377316 zl!343))))) b!5833423))

(declare-fun m!6761774 () Bool)

(assert (=> b!5833423 m!6761774))

(declare-fun b!5833426 () Bool)

(declare-fun e!3578757 () Bool)

(declare-fun tp!1612453 () Bool)

(declare-fun tp!1612456 () Bool)

(assert (=> b!5833426 (= e!3578757 (and tp!1612453 tp!1612456))))

(declare-fun b!5833427 () Bool)

(declare-fun tp!1612452 () Bool)

(assert (=> b!5833427 (= e!3578757 tp!1612452)))

(assert (=> b!5831846 (= tp!1611331 e!3578757)))

(declare-fun b!5833425 () Bool)

(assert (=> b!5833425 (= e!3578757 tp_is_empty!41027)))

(declare-fun b!5833428 () Bool)

(declare-fun tp!1612455 () Bool)

(declare-fun tp!1612454 () Bool)

(assert (=> b!5833428 (= e!3578757 (and tp!1612455 tp!1612454))))

(assert (= (and b!5831846 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833425))

(assert (= (and b!5831846 ((_ is Concat!24732) (regOne!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833426))

(assert (= (and b!5831846 ((_ is Star!15887) (regOne!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833427))

(assert (= (and b!5831846 ((_ is Union!15887) (regOne!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833428))

(declare-fun b!5833430 () Bool)

(declare-fun e!3578758 () Bool)

(declare-fun tp!1612458 () Bool)

(declare-fun tp!1612461 () Bool)

(assert (=> b!5833430 (= e!3578758 (and tp!1612458 tp!1612461))))

(declare-fun b!5833431 () Bool)

(declare-fun tp!1612457 () Bool)

(assert (=> b!5833431 (= e!3578758 tp!1612457)))

(assert (=> b!5831846 (= tp!1611330 e!3578758)))

(declare-fun b!5833429 () Bool)

(assert (=> b!5833429 (= e!3578758 tp_is_empty!41027)))

(declare-fun b!5833432 () Bool)

(declare-fun tp!1612460 () Bool)

(declare-fun tp!1612459 () Bool)

(assert (=> b!5833432 (= e!3578758 (and tp!1612460 tp!1612459))))

(assert (= (and b!5831846 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833429))

(assert (= (and b!5831846 ((_ is Concat!24732) (regTwo!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833430))

(assert (= (and b!5831846 ((_ is Star!15887) (regTwo!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833431))

(assert (= (and b!5831846 ((_ is Union!15887) (regTwo!32287 (regTwo!32286 (regOne!32286 r!7292))))) b!5833432))

(declare-fun b!5833434 () Bool)

(declare-fun e!3578759 () Bool)

(declare-fun tp!1612463 () Bool)

(declare-fun tp!1612466 () Bool)

(assert (=> b!5833434 (= e!3578759 (and tp!1612463 tp!1612466))))

(declare-fun b!5833435 () Bool)

(declare-fun tp!1612462 () Bool)

(assert (=> b!5833435 (= e!3578759 tp!1612462)))

(assert (=> b!5831926 (= tp!1611433 e!3578759)))

(declare-fun b!5833433 () Bool)

(assert (=> b!5833433 (= e!3578759 tp_is_empty!41027)))

(declare-fun b!5833436 () Bool)

(declare-fun tp!1612465 () Bool)

(declare-fun tp!1612464 () Bool)

(assert (=> b!5833436 (= e!3578759 (and tp!1612465 tp!1612464))))

(assert (= (and b!5831926 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833433))

(assert (= (and b!5831926 ((_ is Concat!24732) (regOne!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833434))

(assert (= (and b!5831926 ((_ is Star!15887) (regOne!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833435))

(assert (= (and b!5831926 ((_ is Union!15887) (regOne!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833436))

(declare-fun b!5833438 () Bool)

(declare-fun e!3578760 () Bool)

(declare-fun tp!1612468 () Bool)

(declare-fun tp!1612471 () Bool)

(assert (=> b!5833438 (= e!3578760 (and tp!1612468 tp!1612471))))

(declare-fun b!5833439 () Bool)

(declare-fun tp!1612467 () Bool)

(assert (=> b!5833439 (= e!3578760 tp!1612467)))

(assert (=> b!5831926 (= tp!1611436 e!3578760)))

(declare-fun b!5833437 () Bool)

(assert (=> b!5833437 (= e!3578760 tp_is_empty!41027)))

(declare-fun b!5833440 () Bool)

(declare-fun tp!1612470 () Bool)

(declare-fun tp!1612469 () Bool)

(assert (=> b!5833440 (= e!3578760 (and tp!1612470 tp!1612469))))

(assert (= (and b!5831926 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833437))

(assert (= (and b!5831926 ((_ is Concat!24732) (regTwo!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833438))

(assert (= (and b!5831926 ((_ is Star!15887) (regTwo!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833439))

(assert (= (and b!5831926 ((_ is Union!15887) (regTwo!32286 (regTwo!32286 (regOne!32287 r!7292))))) b!5833440))

(declare-fun b!5833442 () Bool)

(declare-fun e!3578761 () Bool)

(declare-fun tp!1612473 () Bool)

(declare-fun tp!1612476 () Bool)

(assert (=> b!5833442 (= e!3578761 (and tp!1612473 tp!1612476))))

(declare-fun b!5833443 () Bool)

(declare-fun tp!1612472 () Bool)

(assert (=> b!5833443 (= e!3578761 tp!1612472)))

(assert (=> b!5831922 (= tp!1611428 e!3578761)))

(declare-fun b!5833441 () Bool)

(assert (=> b!5833441 (= e!3578761 tp_is_empty!41027)))

(declare-fun b!5833444 () Bool)

(declare-fun tp!1612475 () Bool)

(declare-fun tp!1612474 () Bool)

(assert (=> b!5833444 (= e!3578761 (and tp!1612475 tp!1612474))))

(assert (= (and b!5831922 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833441))

(assert (= (and b!5831922 ((_ is Concat!24732) (regOne!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833442))

(assert (= (and b!5831922 ((_ is Star!15887) (regOne!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833443))

(assert (= (and b!5831922 ((_ is Union!15887) (regOne!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833444))

(declare-fun b!5833446 () Bool)

(declare-fun e!3578762 () Bool)

(declare-fun tp!1612478 () Bool)

(declare-fun tp!1612481 () Bool)

(assert (=> b!5833446 (= e!3578762 (and tp!1612478 tp!1612481))))

(declare-fun b!5833447 () Bool)

(declare-fun tp!1612477 () Bool)

(assert (=> b!5833447 (= e!3578762 tp!1612477)))

(assert (=> b!5831922 (= tp!1611431 e!3578762)))

(declare-fun b!5833445 () Bool)

(assert (=> b!5833445 (= e!3578762 tp_is_empty!41027)))

(declare-fun b!5833448 () Bool)

(declare-fun tp!1612480 () Bool)

(declare-fun tp!1612479 () Bool)

(assert (=> b!5833448 (= e!3578762 (and tp!1612480 tp!1612479))))

(assert (= (and b!5831922 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833445))

(assert (= (and b!5831922 ((_ is Concat!24732) (regTwo!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833446))

(assert (= (and b!5831922 ((_ is Star!15887) (regTwo!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833447))

(assert (= (and b!5831922 ((_ is Union!15887) (regTwo!32286 (regOne!32286 (regOne!32287 r!7292))))) b!5833448))

(declare-fun b!5833450 () Bool)

(declare-fun e!3578763 () Bool)

(declare-fun tp!1612483 () Bool)

(declare-fun tp!1612486 () Bool)

(assert (=> b!5833450 (= e!3578763 (and tp!1612483 tp!1612486))))

(declare-fun b!5833451 () Bool)

(declare-fun tp!1612482 () Bool)

(assert (=> b!5833451 (= e!3578763 tp!1612482)))

(assert (=> b!5831820 (= tp!1611297 e!3578763)))

(declare-fun b!5833449 () Bool)

(assert (=> b!5833449 (= e!3578763 tp_is_empty!41027)))

(declare-fun b!5833452 () Bool)

(declare-fun tp!1612485 () Bool)

(declare-fun tp!1612484 () Bool)

(assert (=> b!5833452 (= e!3578763 (and tp!1612485 tp!1612484))))

(assert (= (and b!5831820 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833449))

(assert (= (and b!5831820 ((_ is Concat!24732) (regOne!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833450))

(assert (= (and b!5831820 ((_ is Star!15887) (regOne!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833451))

(assert (= (and b!5831820 ((_ is Union!15887) (regOne!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833452))

(declare-fun b!5833454 () Bool)

(declare-fun e!3578764 () Bool)

(declare-fun tp!1612488 () Bool)

(declare-fun tp!1612491 () Bool)

(assert (=> b!5833454 (= e!3578764 (and tp!1612488 tp!1612491))))

(declare-fun b!5833455 () Bool)

(declare-fun tp!1612487 () Bool)

(assert (=> b!5833455 (= e!3578764 tp!1612487)))

(assert (=> b!5831820 (= tp!1611296 e!3578764)))

(declare-fun b!5833453 () Bool)

(assert (=> b!5833453 (= e!3578764 tp_is_empty!41027)))

(declare-fun b!5833456 () Bool)

(declare-fun tp!1612490 () Bool)

(declare-fun tp!1612489 () Bool)

(assert (=> b!5833456 (= e!3578764 (and tp!1612490 tp!1612489))))

(assert (= (and b!5831820 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833453))

(assert (= (and b!5831820 ((_ is Concat!24732) (regTwo!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833454))

(assert (= (and b!5831820 ((_ is Star!15887) (regTwo!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833455))

(assert (= (and b!5831820 ((_ is Union!15887) (regTwo!32287 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833456))

(declare-fun b!5833458 () Bool)

(declare-fun e!3578765 () Bool)

(declare-fun tp!1612493 () Bool)

(declare-fun tp!1612496 () Bool)

(assert (=> b!5833458 (= e!3578765 (and tp!1612493 tp!1612496))))

(declare-fun b!5833459 () Bool)

(declare-fun tp!1612492 () Bool)

(assert (=> b!5833459 (= e!3578765 tp!1612492)))

(assert (=> b!5831898 (= tp!1611395 e!3578765)))

(declare-fun b!5833457 () Bool)

(assert (=> b!5833457 (= e!3578765 tp_is_empty!41027)))

(declare-fun b!5833460 () Bool)

(declare-fun tp!1612495 () Bool)

(declare-fun tp!1612494 () Bool)

(assert (=> b!5833460 (= e!3578765 (and tp!1612495 tp!1612494))))

(assert (= (and b!5831898 ((_ is ElementMatch!15887) (reg!16216 (regOne!32286 (regTwo!32286 r!7292))))) b!5833457))

(assert (= (and b!5831898 ((_ is Concat!24732) (reg!16216 (regOne!32286 (regTwo!32286 r!7292))))) b!5833458))

(assert (= (and b!5831898 ((_ is Star!15887) (reg!16216 (regOne!32286 (regTwo!32286 r!7292))))) b!5833459))

(assert (= (and b!5831898 ((_ is Union!15887) (reg!16216 (regOne!32286 (regTwo!32286 r!7292))))) b!5833460))

(declare-fun b!5833462 () Bool)

(declare-fun e!3578766 () Bool)

(declare-fun tp!1612498 () Bool)

(declare-fun tp!1612501 () Bool)

(assert (=> b!5833462 (= e!3578766 (and tp!1612498 tp!1612501))))

(declare-fun b!5833463 () Bool)

(declare-fun tp!1612497 () Bool)

(assert (=> b!5833463 (= e!3578766 tp!1612497)))

(assert (=> b!5831894 (= tp!1611391 e!3578766)))

(declare-fun b!5833461 () Bool)

(assert (=> b!5833461 (= e!3578766 tp_is_empty!41027)))

(declare-fun b!5833464 () Bool)

(declare-fun tp!1612500 () Bool)

(declare-fun tp!1612499 () Bool)

(assert (=> b!5833464 (= e!3578766 (and tp!1612500 tp!1612499))))

(assert (= (and b!5831894 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833461))

(assert (= (and b!5831894 ((_ is Concat!24732) (regOne!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833462))

(assert (= (and b!5831894 ((_ is Star!15887) (regOne!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833463))

(assert (= (and b!5831894 ((_ is Union!15887) (regOne!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833464))

(declare-fun b!5833466 () Bool)

(declare-fun e!3578767 () Bool)

(declare-fun tp!1612503 () Bool)

(declare-fun tp!1612506 () Bool)

(assert (=> b!5833466 (= e!3578767 (and tp!1612503 tp!1612506))))

(declare-fun b!5833467 () Bool)

(declare-fun tp!1612502 () Bool)

(assert (=> b!5833467 (= e!3578767 tp!1612502)))

(assert (=> b!5831894 (= tp!1611390 e!3578767)))

(declare-fun b!5833465 () Bool)

(assert (=> b!5833465 (= e!3578767 tp_is_empty!41027)))

(declare-fun b!5833468 () Bool)

(declare-fun tp!1612505 () Bool)

(declare-fun tp!1612504 () Bool)

(assert (=> b!5833468 (= e!3578767 (and tp!1612505 tp!1612504))))

(assert (= (and b!5831894 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833465))

(assert (= (and b!5831894 ((_ is Concat!24732) (regTwo!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833466))

(assert (= (and b!5831894 ((_ is Star!15887) (regTwo!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833467))

(assert (= (and b!5831894 ((_ is Union!15887) (regTwo!32287 (regTwo!32287 (reg!16216 r!7292))))) b!5833468))

(declare-fun b!5833470 () Bool)

(declare-fun e!3578768 () Bool)

(declare-fun tp!1612508 () Bool)

(declare-fun tp!1612511 () Bool)

(assert (=> b!5833470 (= e!3578768 (and tp!1612508 tp!1612511))))

(declare-fun b!5833471 () Bool)

(declare-fun tp!1612507 () Bool)

(assert (=> b!5833471 (= e!3578768 tp!1612507)))

(assert (=> b!5831876 (= tp!1611369 e!3578768)))

(declare-fun b!5833469 () Bool)

(assert (=> b!5833469 (= e!3578768 tp_is_empty!41027)))

(declare-fun b!5833472 () Bool)

(declare-fun tp!1612510 () Bool)

(declare-fun tp!1612509 () Bool)

(assert (=> b!5833472 (= e!3578768 (and tp!1612510 tp!1612509))))

(assert (= (and b!5831876 ((_ is ElementMatch!15887) (regOne!32286 (reg!16216 (reg!16216 r!7292))))) b!5833469))

(assert (= (and b!5831876 ((_ is Concat!24732) (regOne!32286 (reg!16216 (reg!16216 r!7292))))) b!5833470))

(assert (= (and b!5831876 ((_ is Star!15887) (regOne!32286 (reg!16216 (reg!16216 r!7292))))) b!5833471))

(assert (= (and b!5831876 ((_ is Union!15887) (regOne!32286 (reg!16216 (reg!16216 r!7292))))) b!5833472))

(declare-fun b!5833474 () Bool)

(declare-fun e!3578769 () Bool)

(declare-fun tp!1612513 () Bool)

(declare-fun tp!1612516 () Bool)

(assert (=> b!5833474 (= e!3578769 (and tp!1612513 tp!1612516))))

(declare-fun b!5833475 () Bool)

(declare-fun tp!1612512 () Bool)

(assert (=> b!5833475 (= e!3578769 tp!1612512)))

(assert (=> b!5831876 (= tp!1611372 e!3578769)))

(declare-fun b!5833473 () Bool)

(assert (=> b!5833473 (= e!3578769 tp_is_empty!41027)))

(declare-fun b!5833476 () Bool)

(declare-fun tp!1612515 () Bool)

(declare-fun tp!1612514 () Bool)

(assert (=> b!5833476 (= e!3578769 (and tp!1612515 tp!1612514))))

(assert (= (and b!5831876 ((_ is ElementMatch!15887) (regTwo!32286 (reg!16216 (reg!16216 r!7292))))) b!5833473))

(assert (= (and b!5831876 ((_ is Concat!24732) (regTwo!32286 (reg!16216 (reg!16216 r!7292))))) b!5833474))

(assert (= (and b!5831876 ((_ is Star!15887) (regTwo!32286 (reg!16216 (reg!16216 r!7292))))) b!5833475))

(assert (= (and b!5831876 ((_ is Union!15887) (regTwo!32286 (reg!16216 (reg!16216 r!7292))))) b!5833476))

(declare-fun b!5833478 () Bool)

(declare-fun e!3578770 () Bool)

(declare-fun tp!1612518 () Bool)

(declare-fun tp!1612521 () Bool)

(assert (=> b!5833478 (= e!3578770 (and tp!1612518 tp!1612521))))

(declare-fun b!5833479 () Bool)

(declare-fun tp!1612517 () Bool)

(assert (=> b!5833479 (= e!3578770 tp!1612517)))

(assert (=> b!5831826 (= tp!1611305 e!3578770)))

(declare-fun b!5833477 () Bool)

(assert (=> b!5833477 (= e!3578770 tp_is_empty!41027)))

(declare-fun b!5833480 () Bool)

(declare-fun tp!1612520 () Bool)

(declare-fun tp!1612519 () Bool)

(assert (=> b!5833480 (= e!3578770 (and tp!1612520 tp!1612519))))

(assert (= (and b!5831826 ((_ is ElementMatch!15887) (regOne!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833477))

(assert (= (and b!5831826 ((_ is Concat!24732) (regOne!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833478))

(assert (= (and b!5831826 ((_ is Star!15887) (regOne!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833479))

(assert (= (and b!5831826 ((_ is Union!15887) (regOne!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833480))

(declare-fun b!5833482 () Bool)

(declare-fun e!3578771 () Bool)

(declare-fun tp!1612523 () Bool)

(declare-fun tp!1612526 () Bool)

(assert (=> b!5833482 (= e!3578771 (and tp!1612523 tp!1612526))))

(declare-fun b!5833483 () Bool)

(declare-fun tp!1612522 () Bool)

(assert (=> b!5833483 (= e!3578771 tp!1612522)))

(assert (=> b!5831826 (= tp!1611308 e!3578771)))

(declare-fun b!5833481 () Bool)

(assert (=> b!5833481 (= e!3578771 tp_is_empty!41027)))

(declare-fun b!5833484 () Bool)

(declare-fun tp!1612525 () Bool)

(declare-fun tp!1612524 () Bool)

(assert (=> b!5833484 (= e!3578771 (and tp!1612525 tp!1612524))))

(assert (= (and b!5831826 ((_ is ElementMatch!15887) (regTwo!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833481))

(assert (= (and b!5831826 ((_ is Concat!24732) (regTwo!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833482))

(assert (= (and b!5831826 ((_ is Star!15887) (regTwo!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833483))

(assert (= (and b!5831826 ((_ is Union!15887) (regTwo!32286 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833484))

(declare-fun b!5833486 () Bool)

(declare-fun e!3578772 () Bool)

(declare-fun tp!1612528 () Bool)

(declare-fun tp!1612531 () Bool)

(assert (=> b!5833486 (= e!3578772 (and tp!1612528 tp!1612531))))

(declare-fun b!5833487 () Bool)

(declare-fun tp!1612527 () Bool)

(assert (=> b!5833487 (= e!3578772 tp!1612527)))

(assert (=> b!5831885 (= tp!1611378 e!3578772)))

(declare-fun b!5833485 () Bool)

(assert (=> b!5833485 (= e!3578772 tp_is_empty!41027)))

(declare-fun b!5833488 () Bool)

(declare-fun tp!1612530 () Bool)

(declare-fun tp!1612529 () Bool)

(assert (=> b!5833488 (= e!3578772 (and tp!1612530 tp!1612529))))

(assert (= (and b!5831885 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32286 (reg!16216 r!7292))))) b!5833485))

(assert (= (and b!5831885 ((_ is Concat!24732) (reg!16216 (regTwo!32286 (reg!16216 r!7292))))) b!5833486))

(assert (= (and b!5831885 ((_ is Star!15887) (reg!16216 (regTwo!32286 (reg!16216 r!7292))))) b!5833487))

(assert (= (and b!5831885 ((_ is Union!15887) (reg!16216 (regTwo!32286 (reg!16216 r!7292))))) b!5833488))

(declare-fun b!5833490 () Bool)

(declare-fun e!3578773 () Bool)

(declare-fun tp!1612533 () Bool)

(declare-fun tp!1612536 () Bool)

(assert (=> b!5833490 (= e!3578773 (and tp!1612533 tp!1612536))))

(declare-fun b!5833491 () Bool)

(declare-fun tp!1612532 () Bool)

(assert (=> b!5833491 (= e!3578773 tp!1612532)))

(assert (=> b!5831924 (= tp!1611430 e!3578773)))

(declare-fun b!5833489 () Bool)

(assert (=> b!5833489 (= e!3578773 tp_is_empty!41027)))

(declare-fun b!5833492 () Bool)

(declare-fun tp!1612535 () Bool)

(declare-fun tp!1612534 () Bool)

(assert (=> b!5833492 (= e!3578773 (and tp!1612535 tp!1612534))))

(assert (= (and b!5831924 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833489))

(assert (= (and b!5831924 ((_ is Concat!24732) (regOne!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833490))

(assert (= (and b!5831924 ((_ is Star!15887) (regOne!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833491))

(assert (= (and b!5831924 ((_ is Union!15887) (regOne!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833492))

(declare-fun b!5833494 () Bool)

(declare-fun e!3578774 () Bool)

(declare-fun tp!1612538 () Bool)

(declare-fun tp!1612541 () Bool)

(assert (=> b!5833494 (= e!3578774 (and tp!1612538 tp!1612541))))

(declare-fun b!5833495 () Bool)

(declare-fun tp!1612537 () Bool)

(assert (=> b!5833495 (= e!3578774 tp!1612537)))

(assert (=> b!5831924 (= tp!1611429 e!3578774)))

(declare-fun b!5833493 () Bool)

(assert (=> b!5833493 (= e!3578774 tp_is_empty!41027)))

(declare-fun b!5833496 () Bool)

(declare-fun tp!1612540 () Bool)

(declare-fun tp!1612539 () Bool)

(assert (=> b!5833496 (= e!3578774 (and tp!1612540 tp!1612539))))

(assert (= (and b!5831924 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833493))

(assert (= (and b!5831924 ((_ is Concat!24732) (regTwo!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833494))

(assert (= (and b!5831924 ((_ is Star!15887) (regTwo!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833495))

(assert (= (and b!5831924 ((_ is Union!15887) (regTwo!32287 (regOne!32286 (regOne!32287 r!7292))))) b!5833496))

(declare-fun b!5833498 () Bool)

(declare-fun e!3578775 () Bool)

(declare-fun tp!1612543 () Bool)

(declare-fun tp!1612546 () Bool)

(assert (=> b!5833498 (= e!3578775 (and tp!1612543 tp!1612546))))

(declare-fun b!5833499 () Bool)

(declare-fun tp!1612542 () Bool)

(assert (=> b!5833499 (= e!3578775 tp!1612542)))

(assert (=> b!5831915 (= tp!1611417 e!3578775)))

(declare-fun b!5833497 () Bool)

(assert (=> b!5833497 (= e!3578775 tp_is_empty!41027)))

(declare-fun b!5833500 () Bool)

(declare-fun tp!1612545 () Bool)

(declare-fun tp!1612544 () Bool)

(assert (=> b!5833500 (= e!3578775 (and tp!1612545 tp!1612544))))

(assert (= (and b!5831915 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833497))

(assert (= (and b!5831915 ((_ is Concat!24732) (reg!16216 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833498))

(assert (= (and b!5831915 ((_ is Star!15887) (reg!16216 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833499))

(assert (= (and b!5831915 ((_ is Union!15887) (reg!16216 (regTwo!32287 (regTwo!32286 r!7292))))) b!5833500))

(declare-fun b!5833502 () Bool)

(declare-fun e!3578776 () Bool)

(declare-fun tp!1612548 () Bool)

(declare-fun tp!1612551 () Bool)

(assert (=> b!5833502 (= e!3578776 (and tp!1612548 tp!1612551))))

(declare-fun b!5833503 () Bool)

(declare-fun tp!1612547 () Bool)

(assert (=> b!5833503 (= e!3578776 tp!1612547)))

(assert (=> b!5831906 (= tp!1611408 e!3578776)))

(declare-fun b!5833501 () Bool)

(assert (=> b!5833501 (= e!3578776 tp_is_empty!41027)))

(declare-fun b!5833504 () Bool)

(declare-fun tp!1612550 () Bool)

(declare-fun tp!1612549 () Bool)

(assert (=> b!5833504 (= e!3578776 (and tp!1612550 tp!1612549))))

(assert (= (and b!5831906 ((_ is ElementMatch!15887) (regOne!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833501))

(assert (= (and b!5831906 ((_ is Concat!24732) (regOne!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833502))

(assert (= (and b!5831906 ((_ is Star!15887) (regOne!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833503))

(assert (= (and b!5831906 ((_ is Union!15887) (regOne!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833504))

(declare-fun b!5833506 () Bool)

(declare-fun e!3578777 () Bool)

(declare-fun tp!1612553 () Bool)

(declare-fun tp!1612556 () Bool)

(assert (=> b!5833506 (= e!3578777 (and tp!1612553 tp!1612556))))

(declare-fun b!5833507 () Bool)

(declare-fun tp!1612552 () Bool)

(assert (=> b!5833507 (= e!3578777 tp!1612552)))

(assert (=> b!5831906 (= tp!1611411 e!3578777)))

(declare-fun b!5833505 () Bool)

(assert (=> b!5833505 (= e!3578777 tp_is_empty!41027)))

(declare-fun b!5833508 () Bool)

(declare-fun tp!1612555 () Bool)

(declare-fun tp!1612554 () Bool)

(assert (=> b!5833508 (= e!3578777 (and tp!1612555 tp!1612554))))

(assert (= (and b!5831906 ((_ is ElementMatch!15887) (regTwo!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833505))

(assert (= (and b!5831906 ((_ is Concat!24732) (regTwo!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833506))

(assert (= (and b!5831906 ((_ is Star!15887) (regTwo!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833507))

(assert (= (and b!5831906 ((_ is Union!15887) (regTwo!32286 (reg!16216 (regTwo!32286 r!7292))))) b!5833508))

(declare-fun b!5833509 () Bool)

(declare-fun e!3578778 () Bool)

(declare-fun tp!1612557 () Bool)

(declare-fun tp!1612558 () Bool)

(assert (=> b!5833509 (= e!3578778 (and tp!1612557 tp!1612558))))

(assert (=> b!5831675 (= tp!1611288 e!3578778)))

(assert (= (and b!5831675 ((_ is Cons!63836) (exprs!5771 (h!70285 res!2457726)))) b!5833509))

(declare-fun b!5833511 () Bool)

(declare-fun e!3578779 () Bool)

(declare-fun tp!1612560 () Bool)

(declare-fun tp!1612563 () Bool)

(assert (=> b!5833511 (= e!3578779 (and tp!1612560 tp!1612563))))

(declare-fun b!5833512 () Bool)

(declare-fun tp!1612559 () Bool)

(assert (=> b!5833512 (= e!3578779 tp!1612559)))

(assert (=> b!5831878 (= tp!1611371 e!3578779)))

(declare-fun b!5833510 () Bool)

(assert (=> b!5833510 (= e!3578779 tp_is_empty!41027)))

(declare-fun b!5833513 () Bool)

(declare-fun tp!1612562 () Bool)

(declare-fun tp!1612561 () Bool)

(assert (=> b!5833513 (= e!3578779 (and tp!1612562 tp!1612561))))

(assert (= (and b!5831878 ((_ is ElementMatch!15887) (regOne!32287 (reg!16216 (reg!16216 r!7292))))) b!5833510))

(assert (= (and b!5831878 ((_ is Concat!24732) (regOne!32287 (reg!16216 (reg!16216 r!7292))))) b!5833511))

(assert (= (and b!5831878 ((_ is Star!15887) (regOne!32287 (reg!16216 (reg!16216 r!7292))))) b!5833512))

(assert (= (and b!5831878 ((_ is Union!15887) (regOne!32287 (reg!16216 (reg!16216 r!7292))))) b!5833513))

(declare-fun b!5833515 () Bool)

(declare-fun e!3578780 () Bool)

(declare-fun tp!1612565 () Bool)

(declare-fun tp!1612568 () Bool)

(assert (=> b!5833515 (= e!3578780 (and tp!1612565 tp!1612568))))

(declare-fun b!5833516 () Bool)

(declare-fun tp!1612564 () Bool)

(assert (=> b!5833516 (= e!3578780 tp!1612564)))

(assert (=> b!5831878 (= tp!1611370 e!3578780)))

(declare-fun b!5833514 () Bool)

(assert (=> b!5833514 (= e!3578780 tp_is_empty!41027)))

(declare-fun b!5833517 () Bool)

(declare-fun tp!1612567 () Bool)

(declare-fun tp!1612566 () Bool)

(assert (=> b!5833517 (= e!3578780 (and tp!1612567 tp!1612566))))

(assert (= (and b!5831878 ((_ is ElementMatch!15887) (regTwo!32287 (reg!16216 (reg!16216 r!7292))))) b!5833514))

(assert (= (and b!5831878 ((_ is Concat!24732) (regTwo!32287 (reg!16216 (reg!16216 r!7292))))) b!5833515))

(assert (= (and b!5831878 ((_ is Star!15887) (regTwo!32287 (reg!16216 (reg!16216 r!7292))))) b!5833516))

(assert (= (and b!5831878 ((_ is Union!15887) (regTwo!32287 (reg!16216 (reg!16216 r!7292))))) b!5833517))

(declare-fun b!5833519 () Bool)

(declare-fun e!3578781 () Bool)

(declare-fun tp!1612570 () Bool)

(declare-fun tp!1612573 () Bool)

(assert (=> b!5833519 (= e!3578781 (and tp!1612570 tp!1612573))))

(declare-fun b!5833520 () Bool)

(declare-fun tp!1612569 () Bool)

(assert (=> b!5833520 (= e!3578781 tp!1612569)))

(assert (=> b!5831828 (= tp!1611307 e!3578781)))

(declare-fun b!5833518 () Bool)

(assert (=> b!5833518 (= e!3578781 tp_is_empty!41027)))

(declare-fun b!5833521 () Bool)

(declare-fun tp!1612572 () Bool)

(declare-fun tp!1612571 () Bool)

(assert (=> b!5833521 (= e!3578781 (and tp!1612572 tp!1612571))))

(assert (= (and b!5831828 ((_ is ElementMatch!15887) (regOne!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833518))

(assert (= (and b!5831828 ((_ is Concat!24732) (regOne!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833519))

(assert (= (and b!5831828 ((_ is Star!15887) (regOne!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833520))

(assert (= (and b!5831828 ((_ is Union!15887) (regOne!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833521))

(declare-fun b!5833523 () Bool)

(declare-fun e!3578782 () Bool)

(declare-fun tp!1612575 () Bool)

(declare-fun tp!1612578 () Bool)

(assert (=> b!5833523 (= e!3578782 (and tp!1612575 tp!1612578))))

(declare-fun b!5833524 () Bool)

(declare-fun tp!1612574 () Bool)

(assert (=> b!5833524 (= e!3578782 tp!1612574)))

(assert (=> b!5831828 (= tp!1611306 e!3578782)))

(declare-fun b!5833522 () Bool)

(assert (=> b!5833522 (= e!3578782 tp_is_empty!41027)))

(declare-fun b!5833525 () Bool)

(declare-fun tp!1612577 () Bool)

(declare-fun tp!1612576 () Bool)

(assert (=> b!5833525 (= e!3578782 (and tp!1612577 tp!1612576))))

(assert (= (and b!5831828 ((_ is ElementMatch!15887) (regTwo!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833522))

(assert (= (and b!5831828 ((_ is Concat!24732) (regTwo!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833523))

(assert (= (and b!5831828 ((_ is Star!15887) (regTwo!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833524))

(assert (= (and b!5831828 ((_ is Union!15887) (regTwo!32287 (h!70284 (exprs!5771 (h!70285 zl!343)))))) b!5833525))

(declare-fun b!5833527 () Bool)

(declare-fun e!3578783 () Bool)

(declare-fun tp!1612580 () Bool)

(declare-fun tp!1612583 () Bool)

(assert (=> b!5833527 (= e!3578783 (and tp!1612580 tp!1612583))))

(declare-fun b!5833528 () Bool)

(declare-fun tp!1612579 () Bool)

(assert (=> b!5833528 (= e!3578783 tp!1612579)))

(assert (=> b!5831860 (= tp!1611349 e!3578783)))

(declare-fun b!5833526 () Bool)

(assert (=> b!5833526 (= e!3578783 tp_is_empty!41027)))

(declare-fun b!5833529 () Bool)

(declare-fun tp!1612582 () Bool)

(declare-fun tp!1612581 () Bool)

(assert (=> b!5833529 (= e!3578783 (and tp!1612582 tp!1612581))))

(assert (= (and b!5831860 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833526))

(assert (= (and b!5831860 ((_ is Concat!24732) (regOne!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833527))

(assert (= (and b!5831860 ((_ is Star!15887) (regOne!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833528))

(assert (= (and b!5831860 ((_ is Union!15887) (regOne!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833529))

(declare-fun b!5833531 () Bool)

(declare-fun e!3578784 () Bool)

(declare-fun tp!1612585 () Bool)

(declare-fun tp!1612588 () Bool)

(assert (=> b!5833531 (= e!3578784 (and tp!1612585 tp!1612588))))

(declare-fun b!5833532 () Bool)

(declare-fun tp!1612584 () Bool)

(assert (=> b!5833532 (= e!3578784 tp!1612584)))

(assert (=> b!5831860 (= tp!1611352 e!3578784)))

(declare-fun b!5833530 () Bool)

(assert (=> b!5833530 (= e!3578784 tp_is_empty!41027)))

(declare-fun b!5833533 () Bool)

(declare-fun tp!1612587 () Bool)

(declare-fun tp!1612586 () Bool)

(assert (=> b!5833533 (= e!3578784 (and tp!1612587 tp!1612586))))

(assert (= (and b!5831860 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833530))

(assert (= (and b!5831860 ((_ is Concat!24732) (regTwo!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833531))

(assert (= (and b!5831860 ((_ is Star!15887) (regTwo!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833532))

(assert (= (and b!5831860 ((_ is Union!15887) (regTwo!32286 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833533))

(declare-fun b!5833535 () Bool)

(declare-fun e!3578785 () Bool)

(declare-fun tp!1612590 () Bool)

(declare-fun tp!1612593 () Bool)

(assert (=> b!5833535 (= e!3578785 (and tp!1612590 tp!1612593))))

(declare-fun b!5833536 () Bool)

(declare-fun tp!1612589 () Bool)

(assert (=> b!5833536 (= e!3578785 tp!1612589)))

(assert (=> b!5831869 (= tp!1611358 e!3578785)))

(declare-fun b!5833534 () Bool)

(assert (=> b!5833534 (= e!3578785 tp_is_empty!41027)))

(declare-fun b!5833537 () Bool)

(declare-fun tp!1612592 () Bool)

(declare-fun tp!1612591 () Bool)

(assert (=> b!5833537 (= e!3578785 (and tp!1612592 tp!1612591))))

(assert (= (and b!5831869 ((_ is ElementMatch!15887) (reg!16216 (regOne!32287 (regOne!32287 r!7292))))) b!5833534))

(assert (= (and b!5831869 ((_ is Concat!24732) (reg!16216 (regOne!32287 (regOne!32287 r!7292))))) b!5833535))

(assert (= (and b!5831869 ((_ is Star!15887) (reg!16216 (regOne!32287 (regOne!32287 r!7292))))) b!5833536))

(assert (= (and b!5831869 ((_ is Union!15887) (reg!16216 (regOne!32287 (regOne!32287 r!7292))))) b!5833537))

(declare-fun b!5833539 () Bool)

(declare-fun e!3578786 () Bool)

(declare-fun tp!1612595 () Bool)

(declare-fun tp!1612598 () Bool)

(assert (=> b!5833539 (= e!3578786 (and tp!1612595 tp!1612598))))

(declare-fun b!5833540 () Bool)

(declare-fun tp!1612594 () Bool)

(assert (=> b!5833540 (= e!3578786 tp!1612594)))

(assert (=> b!5831908 (= tp!1611410 e!3578786)))

(declare-fun b!5833538 () Bool)

(assert (=> b!5833538 (= e!3578786 tp_is_empty!41027)))

(declare-fun b!5833541 () Bool)

(declare-fun tp!1612597 () Bool)

(declare-fun tp!1612596 () Bool)

(assert (=> b!5833541 (= e!3578786 (and tp!1612597 tp!1612596))))

(assert (= (and b!5831908 ((_ is ElementMatch!15887) (regOne!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833538))

(assert (= (and b!5831908 ((_ is Concat!24732) (regOne!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833539))

(assert (= (and b!5831908 ((_ is Star!15887) (regOne!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833540))

(assert (= (and b!5831908 ((_ is Union!15887) (regOne!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833541))

(declare-fun b!5833543 () Bool)

(declare-fun e!3578787 () Bool)

(declare-fun tp!1612600 () Bool)

(declare-fun tp!1612603 () Bool)

(assert (=> b!5833543 (= e!3578787 (and tp!1612600 tp!1612603))))

(declare-fun b!5833544 () Bool)

(declare-fun tp!1612599 () Bool)

(assert (=> b!5833544 (= e!3578787 tp!1612599)))

(assert (=> b!5831908 (= tp!1611409 e!3578787)))

(declare-fun b!5833542 () Bool)

(assert (=> b!5833542 (= e!3578787 tp_is_empty!41027)))

(declare-fun b!5833545 () Bool)

(declare-fun tp!1612602 () Bool)

(declare-fun tp!1612601 () Bool)

(assert (=> b!5833545 (= e!3578787 (and tp!1612602 tp!1612601))))

(assert (= (and b!5831908 ((_ is ElementMatch!15887) (regTwo!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833542))

(assert (= (and b!5831908 ((_ is Concat!24732) (regTwo!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833543))

(assert (= (and b!5831908 ((_ is Star!15887) (regTwo!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833544))

(assert (= (and b!5831908 ((_ is Union!15887) (regTwo!32287 (reg!16216 (regTwo!32286 r!7292))))) b!5833545))

(declare-fun b!5833547 () Bool)

(declare-fun e!3578788 () Bool)

(declare-fun tp!1612605 () Bool)

(declare-fun tp!1612608 () Bool)

(assert (=> b!5833547 (= e!3578788 (and tp!1612605 tp!1612608))))

(declare-fun b!5833548 () Bool)

(declare-fun tp!1612604 () Bool)

(assert (=> b!5833548 (= e!3578788 tp!1612604)))

(assert (=> b!5831856 (= tp!1611344 e!3578788)))

(declare-fun b!5833546 () Bool)

(assert (=> b!5833546 (= e!3578788 tp_is_empty!41027)))

(declare-fun b!5833549 () Bool)

(declare-fun tp!1612607 () Bool)

(declare-fun tp!1612606 () Bool)

(assert (=> b!5833549 (= e!3578788 (and tp!1612607 tp!1612606))))

(assert (= (and b!5831856 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833546))

(assert (= (and b!5831856 ((_ is Concat!24732) (regOne!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833547))

(assert (= (and b!5831856 ((_ is Star!15887) (regOne!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833548))

(assert (= (and b!5831856 ((_ is Union!15887) (regOne!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833549))

(declare-fun b!5833551 () Bool)

(declare-fun e!3578789 () Bool)

(declare-fun tp!1612610 () Bool)

(declare-fun tp!1612613 () Bool)

(assert (=> b!5833551 (= e!3578789 (and tp!1612610 tp!1612613))))

(declare-fun b!5833552 () Bool)

(declare-fun tp!1612609 () Bool)

(assert (=> b!5833552 (= e!3578789 tp!1612609)))

(assert (=> b!5831856 (= tp!1611347 e!3578789)))

(declare-fun b!5833550 () Bool)

(assert (=> b!5833550 (= e!3578789 tp_is_empty!41027)))

(declare-fun b!5833553 () Bool)

(declare-fun tp!1612612 () Bool)

(declare-fun tp!1612611 () Bool)

(assert (=> b!5833553 (= e!3578789 (and tp!1612612 tp!1612611))))

(assert (= (and b!5831856 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833550))

(assert (= (and b!5831856 ((_ is Concat!24732) (regTwo!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833551))

(assert (= (and b!5831856 ((_ is Star!15887) (regTwo!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833552))

(assert (= (and b!5831856 ((_ is Union!15887) (regTwo!32286 (regOne!32286 (regTwo!32287 r!7292))))) b!5833553))

(declare-fun b!5833555 () Bool)

(declare-fun e!3578790 () Bool)

(declare-fun tp!1612615 () Bool)

(declare-fun tp!1612618 () Bool)

(assert (=> b!5833555 (= e!3578790 (and tp!1612615 tp!1612618))))

(declare-fun b!5833556 () Bool)

(declare-fun tp!1612614 () Bool)

(assert (=> b!5833556 (= e!3578790 tp!1612614)))

(assert (=> b!5831865 (= tp!1611353 e!3578790)))

(declare-fun b!5833554 () Bool)

(assert (=> b!5833554 (= e!3578790 tp_is_empty!41027)))

(declare-fun b!5833557 () Bool)

(declare-fun tp!1612617 () Bool)

(declare-fun tp!1612616 () Bool)

(assert (=> b!5833557 (= e!3578790 (and tp!1612617 tp!1612616))))

(assert (= (and b!5831865 ((_ is ElementMatch!15887) (reg!16216 (reg!16216 (regTwo!32287 r!7292))))) b!5833554))

(assert (= (and b!5831865 ((_ is Concat!24732) (reg!16216 (reg!16216 (regTwo!32287 r!7292))))) b!5833555))

(assert (= (and b!5831865 ((_ is Star!15887) (reg!16216 (reg!16216 (regTwo!32287 r!7292))))) b!5833556))

(assert (= (and b!5831865 ((_ is Union!15887) (reg!16216 (reg!16216 (regTwo!32287 r!7292))))) b!5833557))

(declare-fun b!5833559 () Bool)

(declare-fun e!3578791 () Bool)

(declare-fun tp!1612620 () Bool)

(declare-fun tp!1612623 () Bool)

(assert (=> b!5833559 (= e!3578791 (and tp!1612620 tp!1612623))))

(declare-fun b!5833560 () Bool)

(declare-fun tp!1612619 () Bool)

(assert (=> b!5833560 (= e!3578791 tp!1612619)))

(assert (=> b!5831904 (= tp!1611405 e!3578791)))

(declare-fun b!5833558 () Bool)

(assert (=> b!5833558 (= e!3578791 tp_is_empty!41027)))

(declare-fun b!5833561 () Bool)

(declare-fun tp!1612622 () Bool)

(declare-fun tp!1612621 () Bool)

(assert (=> b!5833561 (= e!3578791 (and tp!1612622 tp!1612621))))

(assert (= (and b!5831904 ((_ is ElementMatch!15887) (h!70284 (exprs!5771 setElem!39450)))) b!5833558))

(assert (= (and b!5831904 ((_ is Concat!24732) (h!70284 (exprs!5771 setElem!39450)))) b!5833559))

(assert (= (and b!5831904 ((_ is Star!15887) (h!70284 (exprs!5771 setElem!39450)))) b!5833560))

(assert (= (and b!5831904 ((_ is Union!15887) (h!70284 (exprs!5771 setElem!39450)))) b!5833561))

(declare-fun b!5833562 () Bool)

(declare-fun e!3578792 () Bool)

(declare-fun tp!1612624 () Bool)

(declare-fun tp!1612625 () Bool)

(assert (=> b!5833562 (= e!3578792 (and tp!1612624 tp!1612625))))

(assert (=> b!5831904 (= tp!1611406 e!3578792)))

(assert (= (and b!5831904 ((_ is Cons!63836) (t!377315 (exprs!5771 setElem!39450)))) b!5833562))

(declare-fun b!5833564 () Bool)

(declare-fun e!3578793 () Bool)

(declare-fun tp!1612627 () Bool)

(declare-fun tp!1612630 () Bool)

(assert (=> b!5833564 (= e!3578793 (and tp!1612627 tp!1612630))))

(declare-fun b!5833565 () Bool)

(declare-fun tp!1612626 () Bool)

(assert (=> b!5833565 (= e!3578793 tp!1612626)))

(assert (=> b!5831832 (= tp!1611311 e!3578793)))

(declare-fun b!5833563 () Bool)

(assert (=> b!5833563 (= e!3578793 tp_is_empty!41027)))

(declare-fun b!5833566 () Bool)

(declare-fun tp!1612629 () Bool)

(declare-fun tp!1612628 () Bool)

(assert (=> b!5833566 (= e!3578793 (and tp!1612629 tp!1612628))))

(assert (= (and b!5831832 ((_ is ElementMatch!15887) (reg!16216 (reg!16216 (regOne!32286 r!7292))))) b!5833563))

(assert (= (and b!5831832 ((_ is Concat!24732) (reg!16216 (reg!16216 (regOne!32286 r!7292))))) b!5833564))

(assert (= (and b!5831832 ((_ is Star!15887) (reg!16216 (reg!16216 (regOne!32286 r!7292))))) b!5833565))

(assert (= (and b!5831832 ((_ is Union!15887) (reg!16216 (reg!16216 (regOne!32286 r!7292))))) b!5833566))

(declare-fun b!5833568 () Bool)

(declare-fun e!3578794 () Bool)

(declare-fun tp!1612632 () Bool)

(declare-fun tp!1612635 () Bool)

(assert (=> b!5833568 (= e!3578794 (and tp!1612632 tp!1612635))))

(declare-fun b!5833569 () Bool)

(declare-fun tp!1612631 () Bool)

(assert (=> b!5833569 (= e!3578794 tp!1612631)))

(assert (=> b!5831858 (= tp!1611346 e!3578794)))

(declare-fun b!5833567 () Bool)

(assert (=> b!5833567 (= e!3578794 tp_is_empty!41027)))

(declare-fun b!5833570 () Bool)

(declare-fun tp!1612634 () Bool)

(declare-fun tp!1612633 () Bool)

(assert (=> b!5833570 (= e!3578794 (and tp!1612634 tp!1612633))))

(assert (= (and b!5831858 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833567))

(assert (= (and b!5831858 ((_ is Concat!24732) (regOne!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833568))

(assert (= (and b!5831858 ((_ is Star!15887) (regOne!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833569))

(assert (= (and b!5831858 ((_ is Union!15887) (regOne!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833570))

(declare-fun b!5833572 () Bool)

(declare-fun e!3578795 () Bool)

(declare-fun tp!1612637 () Bool)

(declare-fun tp!1612640 () Bool)

(assert (=> b!5833572 (= e!3578795 (and tp!1612637 tp!1612640))))

(declare-fun b!5833573 () Bool)

(declare-fun tp!1612636 () Bool)

(assert (=> b!5833573 (= e!3578795 tp!1612636)))

(assert (=> b!5831858 (= tp!1611345 e!3578795)))

(declare-fun b!5833571 () Bool)

(assert (=> b!5833571 (= e!3578795 tp_is_empty!41027)))

(declare-fun b!5833574 () Bool)

(declare-fun tp!1612639 () Bool)

(declare-fun tp!1612638 () Bool)

(assert (=> b!5833574 (= e!3578795 (and tp!1612639 tp!1612638))))

(assert (= (and b!5831858 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833571))

(assert (= (and b!5831858 ((_ is Concat!24732) (regTwo!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833572))

(assert (= (and b!5831858 ((_ is Star!15887) (regTwo!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833573))

(assert (= (and b!5831858 ((_ is Union!15887) (regTwo!32287 (regOne!32286 (regTwo!32287 r!7292))))) b!5833574))

(declare-fun b!5833576 () Bool)

(declare-fun e!3578796 () Bool)

(declare-fun tp!1612642 () Bool)

(declare-fun tp!1612645 () Bool)

(assert (=> b!5833576 (= e!3578796 (and tp!1612642 tp!1612645))))

(declare-fun b!5833577 () Bool)

(declare-fun tp!1612641 () Bool)

(assert (=> b!5833577 (= e!3578796 tp!1612641)))

(assert (=> b!5831840 (= tp!1611324 e!3578796)))

(declare-fun b!5833575 () Bool)

(assert (=> b!5833575 (= e!3578796 tp_is_empty!41027)))

(declare-fun b!5833578 () Bool)

(declare-fun tp!1612644 () Bool)

(declare-fun tp!1612643 () Bool)

(assert (=> b!5833578 (= e!3578796 (and tp!1612644 tp!1612643))))

(assert (= (and b!5831840 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833575))

(assert (= (and b!5831840 ((_ is Concat!24732) (regOne!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833576))

(assert (= (and b!5831840 ((_ is Star!15887) (regOne!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833577))

(assert (= (and b!5831840 ((_ is Union!15887) (regOne!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833578))

(declare-fun b!5833580 () Bool)

(declare-fun e!3578797 () Bool)

(declare-fun tp!1612647 () Bool)

(declare-fun tp!1612650 () Bool)

(assert (=> b!5833580 (= e!3578797 (and tp!1612647 tp!1612650))))

(declare-fun b!5833581 () Bool)

(declare-fun tp!1612646 () Bool)

(assert (=> b!5833581 (= e!3578797 tp!1612646)))

(assert (=> b!5831840 (= tp!1611327 e!3578797)))

(declare-fun b!5833579 () Bool)

(assert (=> b!5833579 (= e!3578797 tp_is_empty!41027)))

(declare-fun b!5833582 () Bool)

(declare-fun tp!1612649 () Bool)

(declare-fun tp!1612648 () Bool)

(assert (=> b!5833582 (= e!3578797 (and tp!1612649 tp!1612648))))

(assert (= (and b!5831840 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833579))

(assert (= (and b!5831840 ((_ is Concat!24732) (regTwo!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833580))

(assert (= (and b!5831840 ((_ is Star!15887) (regTwo!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833581))

(assert (= (and b!5831840 ((_ is Union!15887) (regTwo!32286 (regOne!32286 (regOne!32286 r!7292))))) b!5833582))

(declare-fun b!5833584 () Bool)

(declare-fun e!3578798 () Bool)

(declare-fun tp!1612652 () Bool)

(declare-fun tp!1612655 () Bool)

(assert (=> b!5833584 (= e!3578798 (and tp!1612652 tp!1612655))))

(declare-fun b!5833585 () Bool)

(declare-fun tp!1612651 () Bool)

(assert (=> b!5833585 (= e!3578798 tp!1612651)))

(assert (=> b!5831849 (= tp!1611333 e!3578798)))

(declare-fun b!5833583 () Bool)

(assert (=> b!5833583 (= e!3578798 tp_is_empty!41027)))

(declare-fun b!5833586 () Bool)

(declare-fun tp!1612654 () Bool)

(declare-fun tp!1612653 () Bool)

(assert (=> b!5833586 (= e!3578798 (and tp!1612654 tp!1612653))))

(assert (= (and b!5831849 ((_ is ElementMatch!15887) (reg!16216 (regOne!32287 (regOne!32286 r!7292))))) b!5833583))

(assert (= (and b!5831849 ((_ is Concat!24732) (reg!16216 (regOne!32287 (regOne!32286 r!7292))))) b!5833584))

(assert (= (and b!5831849 ((_ is Star!15887) (reg!16216 (regOne!32287 (regOne!32286 r!7292))))) b!5833585))

(assert (= (and b!5831849 ((_ is Union!15887) (reg!16216 (regOne!32287 (regOne!32286 r!7292))))) b!5833586))

(declare-fun b!5833588 () Bool)

(declare-fun e!3578799 () Bool)

(declare-fun tp!1612657 () Bool)

(declare-fun tp!1612660 () Bool)

(assert (=> b!5833588 (= e!3578799 (and tp!1612657 tp!1612660))))

(declare-fun b!5833589 () Bool)

(declare-fun tp!1612656 () Bool)

(assert (=> b!5833589 (= e!3578799 tp!1612656)))

(assert (=> b!5831818 (= tp!1611295 e!3578799)))

(declare-fun b!5833587 () Bool)

(assert (=> b!5833587 (= e!3578799 tp_is_empty!41027)))

(declare-fun b!5833590 () Bool)

(declare-fun tp!1612659 () Bool)

(declare-fun tp!1612658 () Bool)

(assert (=> b!5833590 (= e!3578799 (and tp!1612659 tp!1612658))))

(assert (= (and b!5831818 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833587))

(assert (= (and b!5831818 ((_ is Concat!24732) (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833588))

(assert (= (and b!5831818 ((_ is Star!15887) (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833589))

(assert (= (and b!5831818 ((_ is Union!15887) (regOne!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833590))

(declare-fun b!5833592 () Bool)

(declare-fun e!3578800 () Bool)

(declare-fun tp!1612662 () Bool)

(declare-fun tp!1612665 () Bool)

(assert (=> b!5833592 (= e!3578800 (and tp!1612662 tp!1612665))))

(declare-fun b!5833593 () Bool)

(declare-fun tp!1612661 () Bool)

(assert (=> b!5833593 (= e!3578800 tp!1612661)))

(assert (=> b!5831818 (= tp!1611298 e!3578800)))

(declare-fun b!5833591 () Bool)

(assert (=> b!5833591 (= e!3578800 tp_is_empty!41027)))

(declare-fun b!5833594 () Bool)

(declare-fun tp!1612664 () Bool)

(declare-fun tp!1612663 () Bool)

(assert (=> b!5833594 (= e!3578800 (and tp!1612664 tp!1612663))))

(assert (= (and b!5831818 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833591))

(assert (= (and b!5831818 ((_ is Concat!24732) (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833592))

(assert (= (and b!5831818 ((_ is Star!15887) (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833593))

(assert (= (and b!5831818 ((_ is Union!15887) (regTwo!32286 (regTwo!32287 (regTwo!32287 r!7292))))) b!5833594))

(declare-fun b!5833596 () Bool)

(declare-fun e!3578801 () Bool)

(declare-fun tp!1612667 () Bool)

(declare-fun tp!1612670 () Bool)

(assert (=> b!5833596 (= e!3578801 (and tp!1612667 tp!1612670))))

(declare-fun b!5833597 () Bool)

(declare-fun tp!1612666 () Bool)

(assert (=> b!5833597 (= e!3578801 tp!1612666)))

(assert (=> b!5831842 (= tp!1611326 e!3578801)))

(declare-fun b!5833595 () Bool)

(assert (=> b!5833595 (= e!3578801 tp_is_empty!41027)))

(declare-fun b!5833598 () Bool)

(declare-fun tp!1612669 () Bool)

(declare-fun tp!1612668 () Bool)

(assert (=> b!5833598 (= e!3578801 (and tp!1612669 tp!1612668))))

(assert (= (and b!5831842 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833595))

(assert (= (and b!5831842 ((_ is Concat!24732) (regOne!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833596))

(assert (= (and b!5831842 ((_ is Star!15887) (regOne!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833597))

(assert (= (and b!5831842 ((_ is Union!15887) (regOne!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833598))

(declare-fun b!5833600 () Bool)

(declare-fun e!3578802 () Bool)

(declare-fun tp!1612672 () Bool)

(declare-fun tp!1612675 () Bool)

(assert (=> b!5833600 (= e!3578802 (and tp!1612672 tp!1612675))))

(declare-fun b!5833601 () Bool)

(declare-fun tp!1612671 () Bool)

(assert (=> b!5833601 (= e!3578802 tp!1612671)))

(assert (=> b!5831842 (= tp!1611325 e!3578802)))

(declare-fun b!5833599 () Bool)

(assert (=> b!5833599 (= e!3578802 tp_is_empty!41027)))

(declare-fun b!5833602 () Bool)

(declare-fun tp!1612674 () Bool)

(declare-fun tp!1612673 () Bool)

(assert (=> b!5833602 (= e!3578802 (and tp!1612674 tp!1612673))))

(assert (= (and b!5831842 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833599))

(assert (= (and b!5831842 ((_ is Concat!24732) (regTwo!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833600))

(assert (= (and b!5831842 ((_ is Star!15887) (regTwo!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833601))

(assert (= (and b!5831842 ((_ is Union!15887) (regTwo!32287 (regOne!32286 (regOne!32286 r!7292))))) b!5833602))

(declare-fun b!5833604 () Bool)

(declare-fun e!3578803 () Bool)

(declare-fun tp!1612677 () Bool)

(declare-fun tp!1612680 () Bool)

(assert (=> b!5833604 (= e!3578803 (and tp!1612677 tp!1612680))))

(declare-fun b!5833605 () Bool)

(declare-fun tp!1612676 () Bool)

(assert (=> b!5833605 (= e!3578803 tp!1612676)))

(assert (=> b!5831892 (= tp!1611389 e!3578803)))

(declare-fun b!5833603 () Bool)

(assert (=> b!5833603 (= e!3578803 tp_is_empty!41027)))

(declare-fun b!5833606 () Bool)

(declare-fun tp!1612679 () Bool)

(declare-fun tp!1612678 () Bool)

(assert (=> b!5833606 (= e!3578803 (and tp!1612679 tp!1612678))))

(assert (= (and b!5831892 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833603))

(assert (= (and b!5831892 ((_ is Concat!24732) (regOne!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833604))

(assert (= (and b!5831892 ((_ is Star!15887) (regOne!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833605))

(assert (= (and b!5831892 ((_ is Union!15887) (regOne!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833606))

(declare-fun b!5833608 () Bool)

(declare-fun e!3578804 () Bool)

(declare-fun tp!1612682 () Bool)

(declare-fun tp!1612685 () Bool)

(assert (=> b!5833608 (= e!3578804 (and tp!1612682 tp!1612685))))

(declare-fun b!5833609 () Bool)

(declare-fun tp!1612681 () Bool)

(assert (=> b!5833609 (= e!3578804 tp!1612681)))

(assert (=> b!5831892 (= tp!1611392 e!3578804)))

(declare-fun b!5833607 () Bool)

(assert (=> b!5833607 (= e!3578804 tp_is_empty!41027)))

(declare-fun b!5833610 () Bool)

(declare-fun tp!1612684 () Bool)

(declare-fun tp!1612683 () Bool)

(assert (=> b!5833610 (= e!3578804 (and tp!1612684 tp!1612683))))

(assert (= (and b!5831892 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833607))

(assert (= (and b!5831892 ((_ is Concat!24732) (regTwo!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833608))

(assert (= (and b!5831892 ((_ is Star!15887) (regTwo!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833609))

(assert (= (and b!5831892 ((_ is Union!15887) (regTwo!32286 (regTwo!32287 (reg!16216 r!7292))))) b!5833610))

(declare-fun b!5833612 () Bool)

(declare-fun e!3578805 () Bool)

(declare-fun tp!1612687 () Bool)

(declare-fun tp!1612690 () Bool)

(assert (=> b!5833612 (= e!3578805 (and tp!1612687 tp!1612690))))

(declare-fun b!5833613 () Bool)

(declare-fun tp!1612686 () Bool)

(assert (=> b!5833613 (= e!3578805 tp!1612686)))

(assert (=> b!5831838 (= tp!1611321 e!3578805)))

(declare-fun b!5833611 () Bool)

(assert (=> b!5833611 (= e!3578805 tp_is_empty!41027)))

(declare-fun b!5833614 () Bool)

(declare-fun tp!1612689 () Bool)

(declare-fun tp!1612688 () Bool)

(assert (=> b!5833614 (= e!3578805 (and tp!1612689 tp!1612688))))

(assert (= (and b!5831838 ((_ is ElementMatch!15887) (h!70284 (t!377315 (exprs!5771 setElem!39444))))) b!5833611))

(assert (= (and b!5831838 ((_ is Concat!24732) (h!70284 (t!377315 (exprs!5771 setElem!39444))))) b!5833612))

(assert (= (and b!5831838 ((_ is Star!15887) (h!70284 (t!377315 (exprs!5771 setElem!39444))))) b!5833613))

(assert (= (and b!5831838 ((_ is Union!15887) (h!70284 (t!377315 (exprs!5771 setElem!39444))))) b!5833614))

(declare-fun b!5833615 () Bool)

(declare-fun e!3578806 () Bool)

(declare-fun tp!1612691 () Bool)

(declare-fun tp!1612692 () Bool)

(assert (=> b!5833615 (= e!3578806 (and tp!1612691 tp!1612692))))

(assert (=> b!5831838 (= tp!1611322 e!3578806)))

(assert (= (and b!5831838 ((_ is Cons!63836) (t!377315 (t!377315 (exprs!5771 setElem!39444))))) b!5833615))

(declare-fun condSetEmpty!39454 () Bool)

(assert (=> setNonEmpty!39452 (= condSetEmpty!39454 (= setRest!39452 ((as const (Array Context!10542 Bool)) false)))))

(declare-fun setRes!39454 () Bool)

(assert (=> setNonEmpty!39452 (= tp!1611393 setRes!39454)))

(declare-fun setIsEmpty!39454 () Bool)

(assert (=> setIsEmpty!39454 setRes!39454))

(declare-fun setNonEmpty!39454 () Bool)

(declare-fun e!3578807 () Bool)

(declare-fun setElem!39454 () Context!10542)

(declare-fun tp!1612693 () Bool)

(assert (=> setNonEmpty!39454 (= setRes!39454 (and tp!1612693 (inv!82964 setElem!39454) e!3578807))))

(declare-fun setRest!39454 () (InoxSet Context!10542))

(assert (=> setNonEmpty!39454 (= setRest!39452 ((_ map or) (store ((as const (Array Context!10542 Bool)) false) setElem!39454 true) setRest!39454))))

(declare-fun b!5833616 () Bool)

(declare-fun tp!1612694 () Bool)

(assert (=> b!5833616 (= e!3578807 tp!1612694)))

(assert (= (and setNonEmpty!39452 condSetEmpty!39454) setIsEmpty!39454))

(assert (= (and setNonEmpty!39452 (not condSetEmpty!39454)) setNonEmpty!39454))

(assert (= setNonEmpty!39454 b!5833616))

(declare-fun m!6761776 () Bool)

(assert (=> setNonEmpty!39454 m!6761776))

(declare-fun b!5833618 () Bool)

(declare-fun e!3578808 () Bool)

(declare-fun tp!1612696 () Bool)

(declare-fun tp!1612699 () Bool)

(assert (=> b!5833618 (= e!3578808 (and tp!1612696 tp!1612699))))

(declare-fun b!5833619 () Bool)

(declare-fun tp!1612695 () Bool)

(assert (=> b!5833619 (= e!3578808 tp!1612695)))

(assert (=> b!5831888 (= tp!1611384 e!3578808)))

(declare-fun b!5833617 () Bool)

(assert (=> b!5833617 (= e!3578808 tp_is_empty!41027)))

(declare-fun b!5833620 () Bool)

(declare-fun tp!1612698 () Bool)

(declare-fun tp!1612697 () Bool)

(assert (=> b!5833620 (= e!3578808 (and tp!1612698 tp!1612697))))

(assert (= (and b!5831888 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833617))

(assert (= (and b!5831888 ((_ is Concat!24732) (regOne!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833618))

(assert (= (and b!5831888 ((_ is Star!15887) (regOne!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833619))

(assert (= (and b!5831888 ((_ is Union!15887) (regOne!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833620))

(declare-fun b!5833622 () Bool)

(declare-fun e!3578809 () Bool)

(declare-fun tp!1612701 () Bool)

(declare-fun tp!1612704 () Bool)

(assert (=> b!5833622 (= e!3578809 (and tp!1612701 tp!1612704))))

(declare-fun b!5833623 () Bool)

(declare-fun tp!1612700 () Bool)

(assert (=> b!5833623 (= e!3578809 tp!1612700)))

(assert (=> b!5831888 (= tp!1611387 e!3578809)))

(declare-fun b!5833621 () Bool)

(assert (=> b!5833621 (= e!3578809 tp_is_empty!41027)))

(declare-fun b!5833624 () Bool)

(declare-fun tp!1612703 () Bool)

(declare-fun tp!1612702 () Bool)

(assert (=> b!5833624 (= e!3578809 (and tp!1612703 tp!1612702))))

(assert (= (and b!5831888 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833621))

(assert (= (and b!5831888 ((_ is Concat!24732) (regTwo!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833622))

(assert (= (and b!5831888 ((_ is Star!15887) (regTwo!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833623))

(assert (= (and b!5831888 ((_ is Union!15887) (regTwo!32286 (regOne!32287 (reg!16216 r!7292))))) b!5833624))

(declare-fun b!5833626 () Bool)

(declare-fun e!3578810 () Bool)

(declare-fun tp!1612706 () Bool)

(declare-fun tp!1612709 () Bool)

(assert (=> b!5833626 (= e!3578810 (and tp!1612706 tp!1612709))))

(declare-fun b!5833627 () Bool)

(declare-fun tp!1612705 () Bool)

(assert (=> b!5833627 (= e!3578810 tp!1612705)))

(assert (=> b!5831927 (= tp!1611432 e!3578810)))

(declare-fun b!5833625 () Bool)

(assert (=> b!5833625 (= e!3578810 tp_is_empty!41027)))

(declare-fun b!5833628 () Bool)

(declare-fun tp!1612708 () Bool)

(declare-fun tp!1612707 () Bool)

(assert (=> b!5833628 (= e!3578810 (and tp!1612708 tp!1612707))))

(assert (= (and b!5831927 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32286 (regOne!32287 r!7292))))) b!5833625))

(assert (= (and b!5831927 ((_ is Concat!24732) (reg!16216 (regTwo!32286 (regOne!32287 r!7292))))) b!5833626))

(assert (= (and b!5831927 ((_ is Star!15887) (reg!16216 (regTwo!32286 (regOne!32287 r!7292))))) b!5833627))

(assert (= (and b!5831927 ((_ is Union!15887) (reg!16216 (regTwo!32286 (regOne!32287 r!7292))))) b!5833628))

(declare-fun b!5833630 () Bool)

(declare-fun e!3578811 () Bool)

(declare-fun tp!1612711 () Bool)

(declare-fun tp!1612714 () Bool)

(assert (=> b!5833630 (= e!3578811 (and tp!1612711 tp!1612714))))

(declare-fun b!5833631 () Bool)

(declare-fun tp!1612710 () Bool)

(assert (=> b!5833631 (= e!3578811 tp!1612710)))

(assert (=> b!5831918 (= tp!1611423 e!3578811)))

(declare-fun b!5833629 () Bool)

(assert (=> b!5833629 (= e!3578811 tp_is_empty!41027)))

(declare-fun b!5833632 () Bool)

(declare-fun tp!1612713 () Bool)

(declare-fun tp!1612712 () Bool)

(assert (=> b!5833632 (= e!3578811 (and tp!1612713 tp!1612712))))

(assert (= (and b!5831918 ((_ is ElementMatch!15887) (regOne!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833629))

(assert (= (and b!5831918 ((_ is Concat!24732) (regOne!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833630))

(assert (= (and b!5831918 ((_ is Star!15887) (regOne!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833631))

(assert (= (and b!5831918 ((_ is Union!15887) (regOne!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833632))

(declare-fun b!5833634 () Bool)

(declare-fun e!3578812 () Bool)

(declare-fun tp!1612716 () Bool)

(declare-fun tp!1612719 () Bool)

(assert (=> b!5833634 (= e!3578812 (and tp!1612716 tp!1612719))))

(declare-fun b!5833635 () Bool)

(declare-fun tp!1612715 () Bool)

(assert (=> b!5833635 (= e!3578812 tp!1612715)))

(assert (=> b!5831918 (= tp!1611426 e!3578812)))

(declare-fun b!5833633 () Bool)

(assert (=> b!5833633 (= e!3578812 tp_is_empty!41027)))

(declare-fun b!5833636 () Bool)

(declare-fun tp!1612718 () Bool)

(declare-fun tp!1612717 () Bool)

(assert (=> b!5833636 (= e!3578812 (and tp!1612718 tp!1612717))))

(assert (= (and b!5831918 ((_ is ElementMatch!15887) (regTwo!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833633))

(assert (= (and b!5831918 ((_ is Concat!24732) (regTwo!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833634))

(assert (= (and b!5831918 ((_ is Star!15887) (regTwo!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833635))

(assert (= (and b!5831918 ((_ is Union!15887) (regTwo!32286 (reg!16216 (regOne!32287 r!7292))))) b!5833636))

(declare-fun b!5833638 () Bool)

(declare-fun e!3578813 () Bool)

(declare-fun tp!1612721 () Bool)

(declare-fun tp!1612724 () Bool)

(assert (=> b!5833638 (= e!3578813 (and tp!1612721 tp!1612724))))

(declare-fun b!5833639 () Bool)

(declare-fun tp!1612720 () Bool)

(assert (=> b!5833639 (= e!3578813 tp!1612720)))

(assert (=> b!5831816 (= tp!1611292 e!3578813)))

(declare-fun b!5833637 () Bool)

(assert (=> b!5833637 (= e!3578813 tp_is_empty!41027)))

(declare-fun b!5833640 () Bool)

(declare-fun tp!1612723 () Bool)

(declare-fun tp!1612722 () Bool)

(assert (=> b!5833640 (= e!3578813 (and tp!1612723 tp!1612722))))

(assert (= (and b!5831816 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833637))

(assert (= (and b!5831816 ((_ is Concat!24732) (regOne!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833638))

(assert (= (and b!5831816 ((_ is Star!15887) (regOne!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833639))

(assert (= (and b!5831816 ((_ is Union!15887) (regOne!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833640))

(declare-fun b!5833642 () Bool)

(declare-fun e!3578814 () Bool)

(declare-fun tp!1612726 () Bool)

(declare-fun tp!1612729 () Bool)

(assert (=> b!5833642 (= e!3578814 (and tp!1612726 tp!1612729))))

(declare-fun b!5833643 () Bool)

(declare-fun tp!1612725 () Bool)

(assert (=> b!5833643 (= e!3578814 tp!1612725)))

(assert (=> b!5831816 (= tp!1611291 e!3578814)))

(declare-fun b!5833641 () Bool)

(assert (=> b!5833641 (= e!3578814 tp_is_empty!41027)))

(declare-fun b!5833644 () Bool)

(declare-fun tp!1612728 () Bool)

(declare-fun tp!1612727 () Bool)

(assert (=> b!5833644 (= e!3578814 (and tp!1612728 tp!1612727))))

(assert (= (and b!5831816 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833641))

(assert (= (and b!5831816 ((_ is Concat!24732) (regTwo!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833642))

(assert (= (and b!5831816 ((_ is Star!15887) (regTwo!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833643))

(assert (= (and b!5831816 ((_ is Union!15887) (regTwo!32287 (regOne!32287 (regTwo!32287 r!7292))))) b!5833644))

(declare-fun b!5833646 () Bool)

(declare-fun e!3578815 () Bool)

(declare-fun tp!1612731 () Bool)

(declare-fun tp!1612734 () Bool)

(assert (=> b!5833646 (= e!3578815 (and tp!1612731 tp!1612734))))

(declare-fun b!5833647 () Bool)

(declare-fun tp!1612730 () Bool)

(assert (=> b!5833647 (= e!3578815 tp!1612730)))

(assert (=> b!5831903 (= tp!1611403 e!3578815)))

(declare-fun b!5833645 () Bool)

(assert (=> b!5833645 (= e!3578815 tp_is_empty!41027)))

(declare-fun b!5833648 () Bool)

(declare-fun tp!1612733 () Bool)

(declare-fun tp!1612732 () Bool)

(assert (=> b!5833648 (= e!3578815 (and tp!1612733 tp!1612732))))

(assert (= (and b!5831903 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833645))

(assert (= (and b!5831903 ((_ is Concat!24732) (regOne!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833646))

(assert (= (and b!5831903 ((_ is Star!15887) (regOne!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833647))

(assert (= (and b!5831903 ((_ is Union!15887) (regOne!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833648))

(declare-fun b!5833650 () Bool)

(declare-fun e!3578816 () Bool)

(declare-fun tp!1612736 () Bool)

(declare-fun tp!1612739 () Bool)

(assert (=> b!5833650 (= e!3578816 (and tp!1612736 tp!1612739))))

(declare-fun b!5833651 () Bool)

(declare-fun tp!1612735 () Bool)

(assert (=> b!5833651 (= e!3578816 tp!1612735)))

(assert (=> b!5831903 (= tp!1611402 e!3578816)))

(declare-fun b!5833649 () Bool)

(assert (=> b!5833649 (= e!3578816 tp_is_empty!41027)))

(declare-fun b!5833652 () Bool)

(declare-fun tp!1612738 () Bool)

(declare-fun tp!1612737 () Bool)

(assert (=> b!5833652 (= e!3578816 (and tp!1612738 tp!1612737))))

(assert (= (and b!5831903 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833649))

(assert (= (and b!5831903 ((_ is Concat!24732) (regTwo!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833650))

(assert (= (and b!5831903 ((_ is Star!15887) (regTwo!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833651))

(assert (= (and b!5831903 ((_ is Union!15887) (regTwo!32287 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833652))

(declare-fun b!5833654 () Bool)

(declare-fun e!3578817 () Bool)

(declare-fun tp!1612741 () Bool)

(declare-fun tp!1612744 () Bool)

(assert (=> b!5833654 (= e!3578817 (and tp!1612741 tp!1612744))))

(declare-fun b!5833655 () Bool)

(declare-fun tp!1612740 () Bool)

(assert (=> b!5833655 (= e!3578817 tp!1612740)))

(assert (=> b!5831890 (= tp!1611386 e!3578817)))

(declare-fun b!5833653 () Bool)

(assert (=> b!5833653 (= e!3578817 tp_is_empty!41027)))

(declare-fun b!5833656 () Bool)

(declare-fun tp!1612743 () Bool)

(declare-fun tp!1612742 () Bool)

(assert (=> b!5833656 (= e!3578817 (and tp!1612743 tp!1612742))))

(assert (= (and b!5831890 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833653))

(assert (= (and b!5831890 ((_ is Concat!24732) (regOne!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833654))

(assert (= (and b!5831890 ((_ is Star!15887) (regOne!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833655))

(assert (= (and b!5831890 ((_ is Union!15887) (regOne!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833656))

(declare-fun b!5833658 () Bool)

(declare-fun e!3578818 () Bool)

(declare-fun tp!1612746 () Bool)

(declare-fun tp!1612749 () Bool)

(assert (=> b!5833658 (= e!3578818 (and tp!1612746 tp!1612749))))

(declare-fun b!5833659 () Bool)

(declare-fun tp!1612745 () Bool)

(assert (=> b!5833659 (= e!3578818 tp!1612745)))

(assert (=> b!5831890 (= tp!1611385 e!3578818)))

(declare-fun b!5833657 () Bool)

(assert (=> b!5833657 (= e!3578818 tp_is_empty!41027)))

(declare-fun b!5833660 () Bool)

(declare-fun tp!1612748 () Bool)

(declare-fun tp!1612747 () Bool)

(assert (=> b!5833660 (= e!3578818 (and tp!1612748 tp!1612747))))

(assert (= (and b!5831890 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833657))

(assert (= (and b!5831890 ((_ is Concat!24732) (regTwo!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833658))

(assert (= (and b!5831890 ((_ is Star!15887) (regTwo!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833659))

(assert (= (and b!5831890 ((_ is Union!15887) (regTwo!32287 (regOne!32287 (reg!16216 r!7292))))) b!5833660))

(declare-fun b!5833662 () Bool)

(declare-fun e!3578819 () Bool)

(declare-fun tp!1612751 () Bool)

(declare-fun tp!1612754 () Bool)

(assert (=> b!5833662 (= e!3578819 (and tp!1612751 tp!1612754))))

(declare-fun b!5833663 () Bool)

(declare-fun tp!1612750 () Bool)

(assert (=> b!5833663 (= e!3578819 tp!1612750)))

(assert (=> b!5831872 (= tp!1611364 e!3578819)))

(declare-fun b!5833661 () Bool)

(assert (=> b!5833661 (= e!3578819 tp_is_empty!41027)))

(declare-fun b!5833664 () Bool)

(declare-fun tp!1612753 () Bool)

(declare-fun tp!1612752 () Bool)

(assert (=> b!5833664 (= e!3578819 (and tp!1612753 tp!1612752))))

(assert (= (and b!5831872 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833661))

(assert (= (and b!5831872 ((_ is Concat!24732) (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833662))

(assert (= (and b!5831872 ((_ is Star!15887) (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833663))

(assert (= (and b!5831872 ((_ is Union!15887) (regOne!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833664))

(declare-fun b!5833666 () Bool)

(declare-fun e!3578820 () Bool)

(declare-fun tp!1612756 () Bool)

(declare-fun tp!1612759 () Bool)

(assert (=> b!5833666 (= e!3578820 (and tp!1612756 tp!1612759))))

(declare-fun b!5833667 () Bool)

(declare-fun tp!1612755 () Bool)

(assert (=> b!5833667 (= e!3578820 tp!1612755)))

(assert (=> b!5831872 (= tp!1611367 e!3578820)))

(declare-fun b!5833665 () Bool)

(assert (=> b!5833665 (= e!3578820 tp_is_empty!41027)))

(declare-fun b!5833668 () Bool)

(declare-fun tp!1612758 () Bool)

(declare-fun tp!1612757 () Bool)

(assert (=> b!5833668 (= e!3578820 (and tp!1612758 tp!1612757))))

(assert (= (and b!5831872 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833665))

(assert (= (and b!5831872 ((_ is Concat!24732) (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833666))

(assert (= (and b!5831872 ((_ is Star!15887) (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833667))

(assert (= (and b!5831872 ((_ is Union!15887) (regTwo!32286 (regTwo!32287 (regOne!32287 r!7292))))) b!5833668))

(declare-fun b!5833670 () Bool)

(declare-fun e!3578821 () Bool)

(declare-fun tp!1612761 () Bool)

(declare-fun tp!1612764 () Bool)

(assert (=> b!5833670 (= e!3578821 (and tp!1612761 tp!1612764))))

(declare-fun b!5833671 () Bool)

(declare-fun tp!1612760 () Bool)

(assert (=> b!5833671 (= e!3578821 tp!1612760)))

(assert (=> b!5831881 (= tp!1611373 e!3578821)))

(declare-fun b!5833669 () Bool)

(assert (=> b!5833669 (= e!3578821 tp_is_empty!41027)))

(declare-fun b!5833672 () Bool)

(declare-fun tp!1612763 () Bool)

(declare-fun tp!1612762 () Bool)

(assert (=> b!5833672 (= e!3578821 (and tp!1612763 tp!1612762))))

(assert (= (and b!5831881 ((_ is ElementMatch!15887) (reg!16216 (regOne!32286 (reg!16216 r!7292))))) b!5833669))

(assert (= (and b!5831881 ((_ is Concat!24732) (reg!16216 (regOne!32286 (reg!16216 r!7292))))) b!5833670))

(assert (= (and b!5831881 ((_ is Star!15887) (reg!16216 (regOne!32286 (reg!16216 r!7292))))) b!5833671))

(assert (= (and b!5831881 ((_ is Union!15887) (reg!16216 (regOne!32286 (reg!16216 r!7292))))) b!5833672))

(declare-fun b!5833674 () Bool)

(declare-fun e!3578822 () Bool)

(declare-fun tp!1612766 () Bool)

(declare-fun tp!1612769 () Bool)

(assert (=> b!5833674 (= e!3578822 (and tp!1612766 tp!1612769))))

(declare-fun b!5833675 () Bool)

(declare-fun tp!1612765 () Bool)

(assert (=> b!5833675 (= e!3578822 tp!1612765)))

(assert (=> b!5831920 (= tp!1611425 e!3578822)))

(declare-fun b!5833673 () Bool)

(assert (=> b!5833673 (= e!3578822 tp_is_empty!41027)))

(declare-fun b!5833676 () Bool)

(declare-fun tp!1612768 () Bool)

(declare-fun tp!1612767 () Bool)

(assert (=> b!5833676 (= e!3578822 (and tp!1612768 tp!1612767))))

(assert (= (and b!5831920 ((_ is ElementMatch!15887) (regOne!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833673))

(assert (= (and b!5831920 ((_ is Concat!24732) (regOne!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833674))

(assert (= (and b!5831920 ((_ is Star!15887) (regOne!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833675))

(assert (= (and b!5831920 ((_ is Union!15887) (regOne!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833676))

(declare-fun b!5833678 () Bool)

(declare-fun e!3578823 () Bool)

(declare-fun tp!1612771 () Bool)

(declare-fun tp!1612774 () Bool)

(assert (=> b!5833678 (= e!3578823 (and tp!1612771 tp!1612774))))

(declare-fun b!5833679 () Bool)

(declare-fun tp!1612770 () Bool)

(assert (=> b!5833679 (= e!3578823 tp!1612770)))

(assert (=> b!5831920 (= tp!1611424 e!3578823)))

(declare-fun b!5833677 () Bool)

(assert (=> b!5833677 (= e!3578823 tp_is_empty!41027)))

(declare-fun b!5833680 () Bool)

(declare-fun tp!1612773 () Bool)

(declare-fun tp!1612772 () Bool)

(assert (=> b!5833680 (= e!3578823 (and tp!1612773 tp!1612772))))

(assert (= (and b!5831920 ((_ is ElementMatch!15887) (regTwo!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833677))

(assert (= (and b!5831920 ((_ is Concat!24732) (regTwo!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833678))

(assert (= (and b!5831920 ((_ is Star!15887) (regTwo!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833679))

(assert (= (and b!5831920 ((_ is Union!15887) (regTwo!32287 (reg!16216 (regOne!32287 r!7292))))) b!5833680))

(declare-fun b!5833682 () Bool)

(declare-fun e!3578824 () Bool)

(declare-fun tp!1612776 () Bool)

(declare-fun tp!1612779 () Bool)

(assert (=> b!5833682 (= e!3578824 (and tp!1612776 tp!1612779))))

(declare-fun b!5833683 () Bool)

(declare-fun tp!1612775 () Bool)

(assert (=> b!5833683 (= e!3578824 tp!1612775)))

(assert (=> b!5831911 (= tp!1611412 e!3578824)))

(declare-fun b!5833681 () Bool)

(assert (=> b!5833681 (= e!3578824 tp_is_empty!41027)))

(declare-fun b!5833684 () Bool)

(declare-fun tp!1612778 () Bool)

(declare-fun tp!1612777 () Bool)

(assert (=> b!5833684 (= e!3578824 (and tp!1612778 tp!1612777))))

(assert (= (and b!5831911 ((_ is ElementMatch!15887) (reg!16216 (regOne!32287 (regTwo!32286 r!7292))))) b!5833681))

(assert (= (and b!5831911 ((_ is Concat!24732) (reg!16216 (regOne!32287 (regTwo!32286 r!7292))))) b!5833682))

(assert (= (and b!5831911 ((_ is Star!15887) (reg!16216 (regOne!32287 (regTwo!32286 r!7292))))) b!5833683))

(assert (= (and b!5831911 ((_ is Union!15887) (reg!16216 (regOne!32287 (regTwo!32286 r!7292))))) b!5833684))

(declare-fun b!5833686 () Bool)

(declare-fun e!3578825 () Bool)

(declare-fun tp!1612781 () Bool)

(declare-fun tp!1612784 () Bool)

(assert (=> b!5833686 (= e!3578825 (and tp!1612781 tp!1612784))))

(declare-fun b!5833687 () Bool)

(declare-fun tp!1612780 () Bool)

(assert (=> b!5833687 (= e!3578825 tp!1612780)))

(assert (=> b!5831874 (= tp!1611366 e!3578825)))

(declare-fun b!5833685 () Bool)

(assert (=> b!5833685 (= e!3578825 tp_is_empty!41027)))

(declare-fun b!5833688 () Bool)

(declare-fun tp!1612783 () Bool)

(declare-fun tp!1612782 () Bool)

(assert (=> b!5833688 (= e!3578825 (and tp!1612783 tp!1612782))))

(assert (= (and b!5831874 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833685))

(assert (= (and b!5831874 ((_ is Concat!24732) (regOne!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833686))

(assert (= (and b!5831874 ((_ is Star!15887) (regOne!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833687))

(assert (= (and b!5831874 ((_ is Union!15887) (regOne!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833688))

(declare-fun b!5833690 () Bool)

(declare-fun e!3578826 () Bool)

(declare-fun tp!1612786 () Bool)

(declare-fun tp!1612789 () Bool)

(assert (=> b!5833690 (= e!3578826 (and tp!1612786 tp!1612789))))

(declare-fun b!5833691 () Bool)

(declare-fun tp!1612785 () Bool)

(assert (=> b!5833691 (= e!3578826 tp!1612785)))

(assert (=> b!5831874 (= tp!1611365 e!3578826)))

(declare-fun b!5833689 () Bool)

(assert (=> b!5833689 (= e!3578826 tp_is_empty!41027)))

(declare-fun b!5833692 () Bool)

(declare-fun tp!1612788 () Bool)

(declare-fun tp!1612787 () Bool)

(assert (=> b!5833692 (= e!3578826 (and tp!1612788 tp!1612787))))

(assert (= (and b!5831874 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833689))

(assert (= (and b!5831874 ((_ is Concat!24732) (regTwo!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833690))

(assert (= (and b!5831874 ((_ is Star!15887) (regTwo!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833691))

(assert (= (and b!5831874 ((_ is Union!15887) (regTwo!32287 (regTwo!32287 (regOne!32287 r!7292))))) b!5833692))

(declare-fun b!5833694 () Bool)

(declare-fun e!3578827 () Bool)

(declare-fun tp!1612791 () Bool)

(declare-fun tp!1612794 () Bool)

(assert (=> b!5833694 (= e!3578827 (and tp!1612791 tp!1612794))))

(declare-fun b!5833695 () Bool)

(declare-fun tp!1612790 () Bool)

(assert (=> b!5833695 (= e!3578827 tp!1612790)))

(assert (=> b!5831824 (= tp!1611302 e!3578827)))

(declare-fun b!5833693 () Bool)

(assert (=> b!5833693 (= e!3578827 tp_is_empty!41027)))

(declare-fun b!5833696 () Bool)

(declare-fun tp!1612793 () Bool)

(declare-fun tp!1612792 () Bool)

(assert (=> b!5833696 (= e!3578827 (and tp!1612793 tp!1612792))))

(assert (= (and b!5831824 ((_ is ElementMatch!15887) (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343)))))) b!5833693))

(assert (= (and b!5831824 ((_ is Concat!24732) (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343)))))) b!5833694))

(assert (= (and b!5831824 ((_ is Star!15887) (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343)))))) b!5833695))

(assert (= (and b!5831824 ((_ is Union!15887) (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343)))))) b!5833696))

(declare-fun b!5833697 () Bool)

(declare-fun e!3578828 () Bool)

(declare-fun tp!1612795 () Bool)

(declare-fun tp!1612796 () Bool)

(assert (=> b!5833697 (= e!3578828 (and tp!1612795 tp!1612796))))

(assert (=> b!5831824 (= tp!1611303 e!3578828)))

(assert (= (and b!5831824 ((_ is Cons!63836) (t!377315 (exprs!5771 (h!70285 (t!377316 zl!343)))))) b!5833697))

(declare-fun b!5833699 () Bool)

(declare-fun e!3578829 () Bool)

(declare-fun tp!1612798 () Bool)

(declare-fun tp!1612801 () Bool)

(assert (=> b!5833699 (= e!3578829 (and tp!1612798 tp!1612801))))

(declare-fun b!5833700 () Bool)

(declare-fun tp!1612797 () Bool)

(assert (=> b!5833700 (= e!3578829 tp!1612797)))

(assert (=> b!5831870 (= tp!1611361 e!3578829)))

(declare-fun b!5833698 () Bool)

(assert (=> b!5833698 (= e!3578829 tp_is_empty!41027)))

(declare-fun b!5833701 () Bool)

(declare-fun tp!1612800 () Bool)

(declare-fun tp!1612799 () Bool)

(assert (=> b!5833701 (= e!3578829 (and tp!1612800 tp!1612799))))

(assert (= (and b!5831870 ((_ is ElementMatch!15887) (regOne!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833698))

(assert (= (and b!5831870 ((_ is Concat!24732) (regOne!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833699))

(assert (= (and b!5831870 ((_ is Star!15887) (regOne!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833700))

(assert (= (and b!5831870 ((_ is Union!15887) (regOne!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833701))

(declare-fun b!5833703 () Bool)

(declare-fun e!3578830 () Bool)

(declare-fun tp!1612803 () Bool)

(declare-fun tp!1612806 () Bool)

(assert (=> b!5833703 (= e!3578830 (and tp!1612803 tp!1612806))))

(declare-fun b!5833704 () Bool)

(declare-fun tp!1612802 () Bool)

(assert (=> b!5833704 (= e!3578830 tp!1612802)))

(assert (=> b!5831870 (= tp!1611360 e!3578830)))

(declare-fun b!5833702 () Bool)

(assert (=> b!5833702 (= e!3578830 tp_is_empty!41027)))

(declare-fun b!5833705 () Bool)

(declare-fun tp!1612805 () Bool)

(declare-fun tp!1612804 () Bool)

(assert (=> b!5833705 (= e!3578830 (and tp!1612805 tp!1612804))))

(assert (= (and b!5831870 ((_ is ElementMatch!15887) (regTwo!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833702))

(assert (= (and b!5831870 ((_ is Concat!24732) (regTwo!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833703))

(assert (= (and b!5831870 ((_ is Star!15887) (regTwo!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833704))

(assert (= (and b!5831870 ((_ is Union!15887) (regTwo!32287 (regOne!32287 (regOne!32287 r!7292))))) b!5833705))

(declare-fun b!5833707 () Bool)

(declare-fun e!3578831 () Bool)

(declare-fun tp!1612808 () Bool)

(declare-fun tp!1612811 () Bool)

(assert (=> b!5833707 (= e!3578831 (and tp!1612808 tp!1612811))))

(declare-fun b!5833708 () Bool)

(declare-fun tp!1612807 () Bool)

(assert (=> b!5833708 (= e!3578831 tp!1612807)))

(assert (=> b!5831852 (= tp!1611339 e!3578831)))

(declare-fun b!5833706 () Bool)

(assert (=> b!5833706 (= e!3578831 tp_is_empty!41027)))

(declare-fun b!5833709 () Bool)

(declare-fun tp!1612810 () Bool)

(declare-fun tp!1612809 () Bool)

(assert (=> b!5833709 (= e!3578831 (and tp!1612810 tp!1612809))))

(assert (= (and b!5831852 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833706))

(assert (= (and b!5831852 ((_ is Concat!24732) (regOne!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833707))

(assert (= (and b!5831852 ((_ is Star!15887) (regOne!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833708))

(assert (= (and b!5831852 ((_ is Union!15887) (regOne!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833709))

(declare-fun b!5833711 () Bool)

(declare-fun e!3578832 () Bool)

(declare-fun tp!1612813 () Bool)

(declare-fun tp!1612816 () Bool)

(assert (=> b!5833711 (= e!3578832 (and tp!1612813 tp!1612816))))

(declare-fun b!5833712 () Bool)

(declare-fun tp!1612812 () Bool)

(assert (=> b!5833712 (= e!3578832 tp!1612812)))

(assert (=> b!5831852 (= tp!1611342 e!3578832)))

(declare-fun b!5833710 () Bool)

(assert (=> b!5833710 (= e!3578832 tp_is_empty!41027)))

(declare-fun b!5833713 () Bool)

(declare-fun tp!1612815 () Bool)

(declare-fun tp!1612814 () Bool)

(assert (=> b!5833713 (= e!3578832 (and tp!1612815 tp!1612814))))

(assert (= (and b!5831852 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833710))

(assert (= (and b!5831852 ((_ is Concat!24732) (regTwo!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833711))

(assert (= (and b!5831852 ((_ is Star!15887) (regTwo!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833712))

(assert (= (and b!5831852 ((_ is Union!15887) (regTwo!32286 (regTwo!32287 (regOne!32286 r!7292))))) b!5833713))

(declare-fun b!5833715 () Bool)

(declare-fun e!3578833 () Bool)

(declare-fun tp!1612818 () Bool)

(declare-fun tp!1612821 () Bool)

(assert (=> b!5833715 (= e!3578833 (and tp!1612818 tp!1612821))))

(declare-fun b!5833716 () Bool)

(declare-fun tp!1612817 () Bool)

(assert (=> b!5833716 (= e!3578833 tp!1612817)))

(assert (=> b!5831861 (= tp!1611348 e!3578833)))

(declare-fun b!5833714 () Bool)

(assert (=> b!5833714 (= e!3578833 tp_is_empty!41027)))

(declare-fun b!5833717 () Bool)

(declare-fun tp!1612820 () Bool)

(declare-fun tp!1612819 () Bool)

(assert (=> b!5833717 (= e!3578833 (and tp!1612820 tp!1612819))))

(assert (= (and b!5831861 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833714))

(assert (= (and b!5831861 ((_ is Concat!24732) (reg!16216 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833715))

(assert (= (and b!5831861 ((_ is Star!15887) (reg!16216 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833716))

(assert (= (and b!5831861 ((_ is Union!15887) (reg!16216 (regTwo!32286 (regTwo!32287 r!7292))))) b!5833717))

(declare-fun b!5833719 () Bool)

(declare-fun e!3578834 () Bool)

(declare-fun tp!1612823 () Bool)

(declare-fun tp!1612826 () Bool)

(assert (=> b!5833719 (= e!3578834 (and tp!1612823 tp!1612826))))

(declare-fun b!5833720 () Bool)

(declare-fun tp!1612822 () Bool)

(assert (=> b!5833720 (= e!3578834 tp!1612822)))

(assert (=> b!5831837 (= tp!1611319 e!3578834)))

(declare-fun b!5833718 () Bool)

(assert (=> b!5833718 (= e!3578834 tp_is_empty!41027)))

(declare-fun b!5833721 () Bool)

(declare-fun tp!1612825 () Bool)

(declare-fun tp!1612824 () Bool)

(assert (=> b!5833721 (= e!3578834 (and tp!1612825 tp!1612824))))

(assert (= (and b!5831837 ((_ is ElementMatch!15887) (regOne!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833718))

(assert (= (and b!5831837 ((_ is Concat!24732) (regOne!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833719))

(assert (= (and b!5831837 ((_ is Star!15887) (regOne!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833720))

(assert (= (and b!5831837 ((_ is Union!15887) (regOne!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833721))

(declare-fun b!5833723 () Bool)

(declare-fun e!3578835 () Bool)

(declare-fun tp!1612828 () Bool)

(declare-fun tp!1612831 () Bool)

(assert (=> b!5833723 (= e!3578835 (and tp!1612828 tp!1612831))))

(declare-fun b!5833724 () Bool)

(declare-fun tp!1612827 () Bool)

(assert (=> b!5833724 (= e!3578835 tp!1612827)))

(assert (=> b!5831837 (= tp!1611318 e!3578835)))

(declare-fun b!5833722 () Bool)

(assert (=> b!5833722 (= e!3578835 tp_is_empty!41027)))

(declare-fun b!5833725 () Bool)

(declare-fun tp!1612830 () Bool)

(declare-fun tp!1612829 () Bool)

(assert (=> b!5833725 (= e!3578835 (and tp!1612830 tp!1612829))))

(assert (= (and b!5831837 ((_ is ElementMatch!15887) (regTwo!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833722))

(assert (= (and b!5831837 ((_ is Concat!24732) (regTwo!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833723))

(assert (= (and b!5831837 ((_ is Star!15887) (regTwo!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833724))

(assert (= (and b!5831837 ((_ is Union!15887) (regTwo!32287 (h!70284 (exprs!5771 setElem!39444))))) b!5833725))

(declare-fun b!5833727 () Bool)

(declare-fun e!3578836 () Bool)

(declare-fun tp!1612833 () Bool)

(declare-fun tp!1612836 () Bool)

(assert (=> b!5833727 (= e!3578836 (and tp!1612833 tp!1612836))))

(declare-fun b!5833728 () Bool)

(declare-fun tp!1612832 () Bool)

(assert (=> b!5833728 (= e!3578836 tp!1612832)))

(assert (=> b!5831854 (= tp!1611341 e!3578836)))

(declare-fun b!5833726 () Bool)

(assert (=> b!5833726 (= e!3578836 tp_is_empty!41027)))

(declare-fun b!5833729 () Bool)

(declare-fun tp!1612835 () Bool)

(declare-fun tp!1612834 () Bool)

(assert (=> b!5833729 (= e!3578836 (and tp!1612835 tp!1612834))))

(assert (= (and b!5831854 ((_ is ElementMatch!15887) (regOne!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833726))

(assert (= (and b!5831854 ((_ is Concat!24732) (regOne!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833727))

(assert (= (and b!5831854 ((_ is Star!15887) (regOne!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833728))

(assert (= (and b!5831854 ((_ is Union!15887) (regOne!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833729))

(declare-fun b!5833731 () Bool)

(declare-fun e!3578837 () Bool)

(declare-fun tp!1612838 () Bool)

(declare-fun tp!1612841 () Bool)

(assert (=> b!5833731 (= e!3578837 (and tp!1612838 tp!1612841))))

(declare-fun b!5833732 () Bool)

(declare-fun tp!1612837 () Bool)

(assert (=> b!5833732 (= e!3578837 tp!1612837)))

(assert (=> b!5831854 (= tp!1611340 e!3578837)))

(declare-fun b!5833730 () Bool)

(assert (=> b!5833730 (= e!3578837 tp_is_empty!41027)))

(declare-fun b!5833733 () Bool)

(declare-fun tp!1612840 () Bool)

(declare-fun tp!1612839 () Bool)

(assert (=> b!5833733 (= e!3578837 (and tp!1612840 tp!1612839))))

(assert (= (and b!5831854 ((_ is ElementMatch!15887) (regTwo!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833730))

(assert (= (and b!5831854 ((_ is Concat!24732) (regTwo!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833731))

(assert (= (and b!5831854 ((_ is Star!15887) (regTwo!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833732))

(assert (= (and b!5831854 ((_ is Union!15887) (regTwo!32287 (regTwo!32287 (regOne!32286 r!7292))))) b!5833733))

(declare-fun b!5833735 () Bool)

(declare-fun e!3578838 () Bool)

(declare-fun tp!1612843 () Bool)

(declare-fun tp!1612846 () Bool)

(assert (=> b!5833735 (= e!3578838 (and tp!1612843 tp!1612846))))

(declare-fun b!5833736 () Bool)

(declare-fun tp!1612842 () Bool)

(assert (=> b!5833736 (= e!3578838 tp!1612842)))

(assert (=> b!5831845 (= tp!1611328 e!3578838)))

(declare-fun b!5833734 () Bool)

(assert (=> b!5833734 (= e!3578838 tp_is_empty!41027)))

(declare-fun b!5833737 () Bool)

(declare-fun tp!1612845 () Bool)

(declare-fun tp!1612844 () Bool)

(assert (=> b!5833737 (= e!3578838 (and tp!1612845 tp!1612844))))

(assert (= (and b!5831845 ((_ is ElementMatch!15887) (reg!16216 (regTwo!32286 (regOne!32286 r!7292))))) b!5833734))

(assert (= (and b!5831845 ((_ is Concat!24732) (reg!16216 (regTwo!32286 (regOne!32286 r!7292))))) b!5833735))

(assert (= (and b!5831845 ((_ is Star!15887) (reg!16216 (regTwo!32286 (regOne!32286 r!7292))))) b!5833736))

(assert (= (and b!5831845 ((_ is Union!15887) (reg!16216 (regTwo!32286 (regOne!32286 r!7292))))) b!5833737))

(declare-fun b!5833738 () Bool)

(declare-fun e!3578839 () Bool)

(declare-fun tp!1612847 () Bool)

(declare-fun tp!1612848 () Bool)

(assert (=> b!5833738 (= e!3578839 (and tp!1612847 tp!1612848))))

(assert (=> b!5831823 (= tp!1611300 e!3578839)))

(assert (= (and b!5831823 ((_ is Cons!63836) (exprs!5771 (h!70285 (t!377316 (t!377316 zl!343)))))) b!5833738))

(declare-fun b!5833740 () Bool)

(declare-fun e!3578840 () Bool)

(declare-fun tp!1612850 () Bool)

(declare-fun tp!1612853 () Bool)

(assert (=> b!5833740 (= e!3578840 (and tp!1612850 tp!1612853))))

(declare-fun b!5833741 () Bool)

(declare-fun tp!1612849 () Bool)

(assert (=> b!5833741 (= e!3578840 tp!1612849)))

(assert (=> b!5831814 (= tp!1611290 e!3578840)))

(declare-fun b!5833739 () Bool)

(assert (=> b!5833739 (= e!3578840 tp_is_empty!41027)))

(declare-fun b!5833742 () Bool)

(declare-fun tp!1612852 () Bool)

(declare-fun tp!1612851 () Bool)

(assert (=> b!5833742 (= e!3578840 (and tp!1612852 tp!1612851))))

(assert (= (and b!5831814 ((_ is ElementMatch!15887) (regOne!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833739))

(assert (= (and b!5831814 ((_ is Concat!24732) (regOne!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833740))

(assert (= (and b!5831814 ((_ is Star!15887) (regOne!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833741))

(assert (= (and b!5831814 ((_ is Union!15887) (regOne!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833742))

(declare-fun b!5833744 () Bool)

(declare-fun e!3578841 () Bool)

(declare-fun tp!1612855 () Bool)

(declare-fun tp!1612858 () Bool)

(assert (=> b!5833744 (= e!3578841 (and tp!1612855 tp!1612858))))

(declare-fun b!5833745 () Bool)

(declare-fun tp!1612854 () Bool)

(assert (=> b!5833745 (= e!3578841 tp!1612854)))

(assert (=> b!5831814 (= tp!1611293 e!3578841)))

(declare-fun b!5833743 () Bool)

(assert (=> b!5833743 (= e!3578841 tp_is_empty!41027)))

(declare-fun b!5833746 () Bool)

(declare-fun tp!1612857 () Bool)

(declare-fun tp!1612856 () Bool)

(assert (=> b!5833746 (= e!3578841 (and tp!1612857 tp!1612856))))

(assert (= (and b!5831814 ((_ is ElementMatch!15887) (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833743))

(assert (= (and b!5831814 ((_ is Concat!24732) (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833744))

(assert (= (and b!5831814 ((_ is Star!15887) (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833745))

(assert (= (and b!5831814 ((_ is Union!15887) (regTwo!32286 (regOne!32287 (regTwo!32287 r!7292))))) b!5833746))

(declare-fun b!5833748 () Bool)

(declare-fun e!3578842 () Bool)

(declare-fun tp!1612860 () Bool)

(declare-fun tp!1612863 () Bool)

(assert (=> b!5833748 (= e!3578842 (and tp!1612860 tp!1612863))))

(declare-fun b!5833749 () Bool)

(declare-fun tp!1612859 () Bool)

(assert (=> b!5833749 (= e!3578842 tp!1612859)))

(assert (=> b!5831901 (= tp!1611401 e!3578842)))

(declare-fun b!5833747 () Bool)

(assert (=> b!5833747 (= e!3578842 tp_is_empty!41027)))

(declare-fun b!5833750 () Bool)

(declare-fun tp!1612862 () Bool)

(declare-fun tp!1612861 () Bool)

(assert (=> b!5833750 (= e!3578842 (and tp!1612862 tp!1612861))))

(assert (= (and b!5831901 ((_ is ElementMatch!15887) (regOne!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833747))

(assert (= (and b!5831901 ((_ is Concat!24732) (regOne!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833748))

(assert (= (and b!5831901 ((_ is Star!15887) (regOne!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833749))

(assert (= (and b!5831901 ((_ is Union!15887) (regOne!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833750))

(declare-fun b!5833752 () Bool)

(declare-fun e!3578843 () Bool)

(declare-fun tp!1612865 () Bool)

(declare-fun tp!1612868 () Bool)

(assert (=> b!5833752 (= e!3578843 (and tp!1612865 tp!1612868))))

(declare-fun b!5833753 () Bool)

(declare-fun tp!1612864 () Bool)

(assert (=> b!5833753 (= e!3578843 tp!1612864)))

(assert (=> b!5831901 (= tp!1611404 e!3578843)))

(declare-fun b!5833751 () Bool)

(assert (=> b!5833751 (= e!3578843 tp_is_empty!41027)))

(declare-fun b!5833754 () Bool)

(declare-fun tp!1612867 () Bool)

(declare-fun tp!1612866 () Bool)

(assert (=> b!5833754 (= e!3578843 (and tp!1612867 tp!1612866))))

(assert (= (and b!5831901 ((_ is ElementMatch!15887) (regTwo!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833751))

(assert (= (and b!5831901 ((_ is Concat!24732) (regTwo!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833752))

(assert (= (and b!5831901 ((_ is Star!15887) (regTwo!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833753))

(assert (= (and b!5831901 ((_ is Union!15887) (regTwo!32286 (regTwo!32286 (regTwo!32286 r!7292))))) b!5833754))

(declare-fun b_lambda!219849 () Bool)

(assert (= b_lambda!219831 (or d!1833783 b_lambda!219849)))

(declare-fun bs!1375248 () Bool)

(declare-fun d!1834147 () Bool)

(assert (= bs!1375248 (and d!1834147 d!1833783)))

(assert (=> bs!1375248 (= (dynLambda!24974 lambda!319082 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))) (validRegex!7623 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(declare-fun m!6761778 () Bool)

(assert (=> bs!1375248 m!6761778))

(assert (=> b!5832893 d!1834147))

(declare-fun b_lambda!219851 () Bool)

(assert (= b_lambda!219839 (or d!1833585 b_lambda!219851)))

(declare-fun bs!1375249 () Bool)

(declare-fun d!1834149 () Bool)

(assert (= bs!1375249 (and d!1834149 d!1833585)))

(assert (=> bs!1375249 (= (dynLambda!24974 lambda!319052 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343)))) (validRegex!7623 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(declare-fun m!6761780 () Bool)

(assert (=> bs!1375249 m!6761780))

(assert (=> b!5833058 d!1834149))

(declare-fun b_lambda!219853 () Bool)

(assert (= b_lambda!219843 (or d!1833761 b_lambda!219853)))

(declare-fun bs!1375250 () Bool)

(declare-fun d!1834151 () Bool)

(assert (= bs!1375250 (and d!1834151 d!1833761)))

(assert (=> bs!1375250 (= (dynLambda!24974 lambda!319079 (h!70284 lt!2302962)) (validRegex!7623 (h!70284 lt!2302962)))))

(declare-fun m!6761782 () Bool)

(assert (=> bs!1375250 m!6761782))

(assert (=> b!5833080 d!1834151))

(declare-fun b_lambda!219855 () Bool)

(assert (= b_lambda!219835 (or d!1833613 b_lambda!219855)))

(declare-fun bs!1375251 () Bool)

(declare-fun d!1834153 () Bool)

(assert (= bs!1375251 (and d!1834153 d!1833613)))

(assert (=> bs!1375251 (= (dynLambda!24974 lambda!319061 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))) (validRegex!7623 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(assert (=> bs!1375251 m!6761778))

(assert (=> b!5832992 d!1834153))

(declare-fun b_lambda!219857 () Bool)

(assert (= b_lambda!219841 (or d!1833611 b_lambda!219857)))

(declare-fun bs!1375252 () Bool)

(declare-fun d!1834155 () Bool)

(assert (= bs!1375252 (and d!1834155 d!1833611)))

(assert (=> bs!1375252 (= (dynLambda!24974 lambda!319058 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))) (validRegex!7623 (h!70284 (t!377315 (exprs!5771 (h!70285 zl!343))))))))

(assert (=> bs!1375252 m!6761778))

(assert (=> b!5833078 d!1834155))

(declare-fun b_lambda!219859 () Bool)

(assert (= b_lambda!219833 (or d!1833813 b_lambda!219859)))

(declare-fun bs!1375253 () Bool)

(declare-fun d!1834157 () Bool)

(assert (= bs!1375253 (and d!1834157 d!1833813)))

(assert (=> bs!1375253 (= (dynLambda!24974 lambda!319086 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343)))) (validRegex!7623 (h!70284 (t!377315 (unfocusZipperList!1308 zl!343)))))))

(assert (=> bs!1375253 m!6761780))

(assert (=> b!5832979 d!1834157))

(declare-fun b_lambda!219861 () Bool)

(assert (= b_lambda!219829 (or d!1833619 b_lambda!219861)))

(declare-fun bs!1375254 () Bool)

(declare-fun d!1834159 () Bool)

(assert (= bs!1375254 (and d!1834159 d!1833619)))

(assert (=> bs!1375254 (= (dynLambda!24974 lambda!319062 (h!70284 (t!377315 (exprs!5771 setElem!39444)))) (validRegex!7623 (h!70284 (t!377315 (exprs!5771 setElem!39444)))))))

(declare-fun m!6761784 () Bool)

(assert (=> bs!1375254 m!6761784))

(assert (=> b!5832862 d!1834159))

(declare-fun b_lambda!219863 () Bool)

(assert (= b_lambda!219845 (or d!1833797 b_lambda!219863)))

(declare-fun bs!1375255 () Bool)

(declare-fun d!1834161 () Bool)

(assert (= bs!1375255 (and d!1834161 d!1833797)))

(assert (=> bs!1375255 (= (dynLambda!24974 lambda!319083 (h!70284 (exprs!5771 setElem!39450))) (validRegex!7623 (h!70284 (exprs!5771 setElem!39450))))))

(declare-fun m!6761786 () Bool)

(assert (=> bs!1375255 m!6761786))

(assert (=> b!5833119 d!1834161))

(declare-fun b_lambda!219865 () Bool)

(assert (= b_lambda!219837 (or d!1833741 b_lambda!219865)))

(declare-fun bs!1375256 () Bool)

(declare-fun d!1834163 () Bool)

(assert (= bs!1375256 (and d!1834163 d!1833741)))

(assert (=> bs!1375256 (= (dynLambda!24974 lambda!319078 (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343))))) (validRegex!7623 (h!70284 (exprs!5771 (h!70285 (t!377316 zl!343))))))))

(declare-fun m!6761788 () Bool)

(assert (=> bs!1375256 m!6761788))

(assert (=> b!5833056 d!1834163))

(declare-fun b_lambda!219867 () Bool)

(assert (= b_lambda!219847 (or d!1833609 b_lambda!219867)))

(declare-fun bs!1375257 () Bool)

(declare-fun d!1834165 () Bool)

(assert (= bs!1375257 (and d!1834165 d!1833609)))

(assert (=> bs!1375257 (= (dynLambda!24974 lambda!319055 (h!70284 (t!377315 lt!2302939))) (validRegex!7623 (h!70284 (t!377315 lt!2302939))))))

(declare-fun m!6761790 () Bool)

(assert (=> bs!1375257 m!6761790))

(assert (=> b!5833121 d!1834165))

(check-sat (not b!5833744) (not b!5833412) (not b!5832864) (not bm!455543) (not bm!455606) (not b!5833266) (not d!1834075) (not b!5833267) (not b!5833597) (not b!5833326) (not b!5833634) (not b!5833413) (not d!1834039) (not b!5833716) (not d!1834059) (not b!5833201) (not b!5833307) (not bm!455594) (not b!5833699) (not b!5833401) (not b!5833255) (not b!5833486) (not b!5833373) (not b!5833494) (not b!5833213) (not b!5833614) (not d!1834095) (not b!5833471) (not b!5832938) (not b!5833291) (not bm!455582) (not b!5833303) (not b!5833069) (not b!5833092) (not b!5833488) (not b!5832926) (not b!5833348) (not b!5833483) (not b!5832927) (not b!5832990) (not b!5833271) (not b!5833451) (not b!5833646) (not b!5833367) (not bm!455565) (not b!5833109) (not d!1834037) (not b!5833381) (not b_lambda!219861) (not b!5833376) (not bm!455610) (not b!5833047) (not b!5833448) (not b!5833491) (not b!5833320) (not b!5833651) (not b!5833628) (not b!5833234) (not b!5832936) (not b!5833569) (not b!5833712) (not b!5833384) (not b_lambda!219781) (not b!5833357) (not b!5833713) (not b!5833037) (not b!5833200) (not b!5833323) (not b!5833345) (not b!5833674) (not b!5833315) (not b!5833231) (not b!5833247) (not b!5833427) (not b!5833027) (not bs!1375248) (not bm!455605) (not b!5833679) (not b!5833707) (not b!5833024) (not bm!455576) (not b!5833302) (not b!5833731) (not b!5833208) (not b!5833544) (not b!5833447) (not bm!455572) (not b!5832950) (not d!1834113) (not b!5833299) (not b!5833658) (not b!5833229) (not b!5833193) (not b!5833590) (not d!1834077) (not b!5833733) (not b!5833517) (not b_lambda!219779) (not b!5833537) (not b!5833360) (not b!5833434) (not bm!455591) (not b!5833454) (not b!5833438) (not b!5833363) (not b!5833167) (not b!5833239) (not b!5833695) (not b!5833556) (not b!5833226) (not b!5833468) (not b!5833732) (not bs!1375256) (not b!5833361) (not b!5833582) (not b!5833684) (not b!5833529) (not bm!455602) (not b!5833278) (not b!5833615) (not b!5833696) (not b!5833171) (not b!5832981) (not b!5833715) (not b!5833605) (not b!5833459) (not b!5833586) (not b!5833417) (not b!5833687) (not b!5833300) (not b!5833688) (not b!5833408) (not b!5833170) (not b!5833540) (not b!5833280) (not bm!455609) (not b!5833248) (not b!5833598) (not b!5833460) (not b!5833081) (not b!5833576) (not b!5833282) (not b!5833660) (not b!5833643) (not bm!455589) (not b!5833238) (not b!5833500) (not b!5833270) (not b!5833566) (not b!5833450) (not b!5833495) (not b!5833365) (not b!5833455) (not bm!455575) (not b!5833256) (not b!5833690) (not b!5833405) (not b!5833610) (not d!1834025) (not b!5833672) (not b!5833589) (not b!5833559) (not b!5833223) (not b!5833642) (not b!5833318) (not b!5833668) (not b!5833311) (not b!5833330) (not b_lambda!219787) (not b!5833207) (not b!5833392) (not bs!1375253) (not b!5832970) (not bs!1375255) (not b!5833087) (not b!5833440) (not b!5833286) (not b!5833577) (not bm!455598) (not b!5833748) (not b!5833276) (not b!5833430) (not b!5833227) (not b!5833667) (not b!5833215) (not b!5833700) (not b!5833168) (not b!5833602) tp_is_empty!41027 (not d!1834107) (not b!5833404) (not b_lambda!219849) (not b!5833479) (not b!5833557) (not b!5833385) (not b!5833415) (not b!5833565) (not d!1834071) (not b!5833516) (not b_lambda!219867) (not b!5833368) (not b!5832980) (not b!5833535) (not b_lambda!219853) (not b!5833177) (not b!5832941) (not b!5833258) (not bs!1375254) (not bm!455568) (not b!5833670) (not b!5833284) (not b!5833411) (not b!5833316) (not b!5833242) (not b!5833353) (not bs!1375250) (not b!5833531) (not bm!455592) (not b!5833424) (not b!5833031) (not b!5833754) (not bm!455622) (not bm!455614) (not b!5833310) (not b!5833560) (not b!5833623) (not b!5833596) (not b!5833680) (not b!5832874) (not d!1834091) (not b!5833727) (not b!5833545) (not b!5833663) (not b!5833436) (not b!5833570) (not b!5833158) (not bm!455553) (not b!5833584) (not b!5833268) (not b!5833736) (not b!5833630) (not b!5833290) (not b!5833169) (not b!5833292) (not b!5833691) (not b!5833528) (not d!1834031) (not b!5833432) (not b_lambda!219785) (not bm!455579) (not b!5833476) (not b!5833552) (not b!5833484) (not b!5833034) (not b!5833728) (not b!5833502) (not bm!455547) (not b!5832947) (not b!5833608) (not b!5833509) (not b!5833133) (not b!5833254) (not b!5833741) (not b!5833331) (not bm!455542) (not b!5833335) (not b!5833729) (not b!5833533) (not bs!1375257) (not b!5833312) (not b!5833120) (not b!5833662) (not b!5833397) (not b_lambda!219863) (not bm!455623) (not b!5833026) (not b!5833060) (not b!5833395) (not b!5833654) (not b_lambda!219859) (not bm!455548) (not b!5833463) (not b!5833243) (not b!5833124) (not bm!455604) (not b!5833636) (not b!5833139) (not b!5833403) (not b!5833246) (not b!5833222) (not b!5833328) (not b!5832894) (not bm!455564) (not b!5833664) (not b!5832863) (not b!5833574) (not b!5832917) (not b!5833192) (not b!5833225) (not b!5833217) (not b!5833750) (not b!5833504) (not b!5833701) (not b!5833581) (not b!5833578) (not b!5833030) (not b!5833409) (not b!5833393) (not bm!455607) (not bm!455586) (not b!5833306) (not b!5833708) (not b!5833622) (not b!5833308) (not b!5833620) (not b!5833606) (not b!5833519) (not b!5833371) (not bm!455613) (not b!5833561) (not b!5833568) (not b!5833407) (not b!5833508) (not b!5833446) (not b!5833573) (not b!5833650) (not b!5833369) (not b!5833332) (not b!5833626) (not b!5833543) (not d!1834001) (not bm!455616) (not b!5833704) (not b!5833295) (not b!5833588) (not b!5833742) (not b!5833283) (not b!5833218) (not b!5833592) (not b!5833682) (not b!5833452) (not b!5833250) (not b!5833711) (not b!5833738) (not b!5833383) (not b!5833723) (not b!5833655) (not b!5833616) (not bm!455573) (not b!5832943) (not b!5832842) (not b!5833298) (not b!5833274) (not b!5832954) (not b!5833527) (not b!5833656) (not b!5833724) (not b!5833644) (not b!5833594) (not b!5833347) (not b!5833122) (not b!5833428) (not bs!1375252) (not b!5833572) (not bs!1375251) (not b!5833547) (not b!5833023) (not b!5833442) (not b!5833745) (not b!5833541) (not b_lambda!219855) (not b!5833059) (not b!5833172) (not bm!455561) (not b!5833564) (not b!5833619) (not b!5832940) (not b_lambda!219783) (not b!5833262) (not b!5833647) (not d!1834003) (not b!5833272) (not b!5833244) (not b!5833585) (not bm!455551) (not b!5833532) (not bm!455570) (not b!5833456) (not bm!455600) (not b!5833435) (not b!5833396) (not b!5833703) (not b!5833375) (not b_lambda!219857) (not b!5833197) (not b!5833639) (not b!5832994) (not b!5833287) (not b!5833480) (not b!5833498) (not d!1834081) (not b!5833230) (not b!5833379) (not b!5833380) (not b!5833260) (not b!5833536) (not b!5833749) (not b!5833513) (not b!5833426) (not b!5833196) (not bm!455608) (not b!5833604) (not b!5833341) (not b!5833675) (not bm!455562) (not b!5832993) (not b!5833548) (not b!5832953) (not b!5833613) (not b!5833340) (not b!5833057) (not b!5833337) (not b!5833355) (not d!1834131) (not bm!455617) (not bm!455560) (not b!5833195) (not b!5833511) (not b!5833525) (not b!5833423) (not b!5833003) (not b!5833482) (not b!5833296) (not b!5833149) (not b!5833209) (not b!5833523) (not b!5833562) (not b!5833187) (not b!5833697) (not b!5833709) (not b!5833521) (not b!5833275) (not b!5833593) (not b!5833496) (not b!5833343) (not b!5833191) (not b!5833140) (not b!5833676) (not bm!455588) (not b!5833391) (not b!5833746) (not b!5833549) (not b!5833678) (not b!5833601) (not b!5833624) (not b!5833492) (not b!5833721) (not b!5833635) (not b!5833555) (not b!5833322) (not bm!455566) (not b!5833388) (not b!5833659) (not b!5833466) (not bm!455559) (not b!5833752) (not b!5833241) (not b!5833419) (not b!5833467) (not b!5833652) (not b!5832939) (not b!5833199) (not b!5833389) (not b!5833666) (not b!5833233) (not b!5833400) (not b!5833462) (not bm!455584) (not b!5833499) (not b!5833490) (not b!5833176) (not b!5833737) (not b!5833420) (not bm!455620) (not b!5833609) (not b!5833211) (not b!5833416) (not b!5833439) (not b!5833524) (not b!5833079) (not b!5833216) (not b!5833631) (not b!5833356) (not b!5833600) (not bm!455550) (not d!1834119) (not b!5833364) (not b!5833551) (not b!5833725) (not bm!455597) (not b!5833264) (not b!5833507) (not b!5833421) (not b!5833352) (not b!5833478) (not b!5832884) (not b!5833237) (not b!5833387) (not b!5833671) (not b!5833512) (not b!5833464) (not b!5833472) (not bm!455619) (not b!5833205) (not bm!455595) (not bm!455611) (not b!5833627) (not b!5833719) (not bs!1375249) (not b_lambda!219865) (not b!5833219) (not b!5833203) (not b!5833553) (not b!5832852) (not b!5833515) (not b!5833422) (not b!5833720) (not b!5833503) (not b!5833443) (not b!5833118) (not d!1834141) (not b!5833474) (not b!5833314) (not b!5833740) (not bm!455578) (not b!5833506) (not b!5833444) (not d!1834029) (not b!5833028) (not b!5833252) (not b!5833188) (not b!5833618) (not b_lambda!219851) (not b!5833640) (not bm!455544) (not b!5833735) (not b!5832958) (not b!5833189) (not bm!455554) (not b!5832942) (not b!5833648) (not b!5832948) (not b!5833017) (not d!1834035) (not b!5833204) (not b!5833029) (not b!5833359) (not b!5833399) (not b!5833692) (not b!5833717) (not b!5832861) (not b!5833333) (not b!5833431) (not b!5833221) (not b!5833475) (not b!5832991) (not bm!455545) (not b!5833259) (not b!5833487) (not b!5833212) (not b!5833038) (not b!5833327) (not b!5833632) (not b!5833458) (not b!5833339) (not b!5832875) (not b!5833324) (not b!5833344) (not b!5833520) (not b!5833612) (not b!5833694) (not setNonEmpty!39454) (not b!5833336) (not b!5833539) (not d!1834063) (not b!5833686) (not b!5833705) (not b!5833304) (not b!5833377) (not b!5833580) (not b!5833294) (not b!5833235) (not b!5833251) (not b!5833288) (not b!5833351) (not bm!455581) (not b!5833753) (not b!5833279) (not b!5833349) (not b!5833372) (not b!5832965) (not b!5833683) (not b!5833022) (not b!5833263) (not b!5833470) (not b!5833319) (not b!5833638))
(check-sat)
