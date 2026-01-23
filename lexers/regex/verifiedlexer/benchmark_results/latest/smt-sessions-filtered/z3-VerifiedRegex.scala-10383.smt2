; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538188 () Bool)

(assert start!538188)

(declare-fun b!5103520 () Bool)

(declare-fun e!3182965 () Bool)

(declare-fun tp!1423576 () Bool)

(declare-fun tp!1423578 () Bool)

(assert (=> b!5103520 (= e!3182965 (and tp!1423576 tp!1423578))))

(declare-fun b!5103521 () Bool)

(declare-fun e!3182971 () Bool)

(declare-datatypes ((C!28380 0))(
  ( (C!28381 (val!23842 Int)) )
))
(declare-datatypes ((List!58969 0))(
  ( (Nil!58845) (Cons!58845 (h!65293 C!28380) (t!371970 List!58969)) )
))
(declare-datatypes ((tuple2!63508 0))(
  ( (tuple2!63509 (_1!35057 List!58969) (_2!35057 List!58969)) )
))
(declare-fun lt!2099546 () tuple2!63508)

(declare-fun isEmpty!31806 (List!58969) Bool)

(assert (=> b!5103521 (= e!3182971 (not (isEmpty!31806 (_1!35057 lt!2099546))))))

(declare-fun b!5103522 () Bool)

(declare-fun e!3182970 () Bool)

(declare-fun e!3182966 () Bool)

(assert (=> b!5103522 (= e!3182970 e!3182966)))

(declare-fun res!2172170 () Bool)

(assert (=> b!5103522 (=> (not res!2172170) (not e!3182966))))

(declare-fun lt!2099559 () List!58969)

(declare-fun input!5654 () List!58969)

(assert (=> b!5103522 (= res!2172170 (= lt!2099559 input!5654))))

(declare-fun ++!12910 (List!58969 List!58969) List!58969)

(assert (=> b!5103522 (= lt!2099559 (++!12910 (_1!35057 lt!2099546) (_2!35057 lt!2099546)))))

(declare-fun b!5103523 () Bool)

(declare-fun e!3182975 () Bool)

(declare-fun lt!2099556 () tuple2!63508)

(declare-fun isPrefix!5462 (List!58969 List!58969) Bool)

(assert (=> b!5103523 (= e!3182975 (isPrefix!5462 (_1!35057 lt!2099556) input!5654))))

(declare-fun b!5103524 () Bool)

(declare-fun res!2172175 () Bool)

(assert (=> b!5103524 (=> res!2172175 e!3182975)))

(assert (=> b!5103524 (= res!2172175 (not (isPrefix!5462 (_1!35057 lt!2099546) input!5654)))))

(declare-fun res!2172176 () Bool)

(declare-fun e!3182976 () Bool)

(assert (=> start!538188 (=> (not res!2172176) (not e!3182976))))

(declare-datatypes ((Regex!14061 0))(
  ( (ElementMatch!14061 (c!876751 C!28380)) (Concat!22906 (regOne!28634 Regex!14061) (regTwo!28634 Regex!14061)) (EmptyExpr!14061) (Star!14061 (reg!14390 Regex!14061)) (EmptyLang!14061) (Union!14061 (regOne!28635 Regex!14061) (regTwo!28635 Regex!14061)) )
))
(declare-fun r!12920 () Regex!14061)

(declare-fun validRegex!6188 (Regex!14061) Bool)

(assert (=> start!538188 (= res!2172176 (validRegex!6188 r!12920))))

(assert (=> start!538188 e!3182976))

(assert (=> start!538188 e!3182965))

(declare-fun condSetEmpty!29284 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58970 0))(
  ( (Nil!58846) (Cons!58846 (h!65294 Regex!14061) (t!371971 List!58970)) )
))
(declare-datatypes ((Context!6890 0))(
  ( (Context!6891 (exprs!3945 List!58970)) )
))
(declare-fun z!4303 () (InoxSet Context!6890))

(assert (=> start!538188 (= condSetEmpty!29284 (= z!4303 ((as const (Array Context!6890 Bool)) false)))))

(declare-fun setRes!29284 () Bool)

(assert (=> start!538188 setRes!29284))

(declare-fun e!3182972 () Bool)

(assert (=> start!538188 e!3182972))

(declare-fun setIsEmpty!29284 () Bool)

(assert (=> setIsEmpty!29284 setRes!29284))

(declare-fun b!5103525 () Bool)

(declare-fun e!3182967 () Bool)

(declare-fun e!3182977 () Bool)

(assert (=> b!5103525 (= e!3182967 e!3182977)))

(declare-fun res!2172171 () Bool)

(assert (=> b!5103525 (=> res!2172171 e!3182977)))

(assert (=> b!5103525 (= res!2172171 e!3182971)))

(declare-fun res!2172167 () Bool)

(assert (=> b!5103525 (=> (not res!2172167) (not e!3182971))))

(declare-fun lt!2099549 () Bool)

(assert (=> b!5103525 (= res!2172167 (not lt!2099549))))

(declare-fun matchR!6846 (Regex!14061 List!58969) Bool)

(assert (=> b!5103525 (= lt!2099549 (matchR!6846 r!12920 (_1!35057 lt!2099546)))))

(declare-fun b!5103526 () Bool)

(declare-fun tp!1423579 () Bool)

(declare-fun tp!1423583 () Bool)

(assert (=> b!5103526 (= e!3182965 (and tp!1423579 tp!1423583))))

(declare-fun e!3182969 () Bool)

(declare-fun setElem!29284 () Context!6890)

(declare-fun setNonEmpty!29284 () Bool)

(declare-fun tp!1423580 () Bool)

(declare-fun inv!78327 (Context!6890) Bool)

(assert (=> setNonEmpty!29284 (= setRes!29284 (and tp!1423580 (inv!78327 setElem!29284) e!3182969))))

(declare-fun setRest!29284 () (InoxSet Context!6890))

(assert (=> setNonEmpty!29284 (= z!4303 ((_ map or) (store ((as const (Array Context!6890 Bool)) false) setElem!29284 true) setRest!29284))))

(declare-fun b!5103527 () Bool)

(declare-fun e!3182964 () Bool)

(assert (=> b!5103527 (= e!3182976 e!3182964)))

(declare-fun res!2172173 () Bool)

(assert (=> b!5103527 (=> (not res!2172173) (not e!3182964))))

(declare-datatypes ((List!58971 0))(
  ( (Nil!58847) (Cons!58847 (h!65295 Context!6890) (t!371972 List!58971)) )
))
(declare-fun lt!2099555 () List!58971)

(declare-fun unfocusZipper!403 (List!58971) Regex!14061)

(assert (=> b!5103527 (= res!2172173 (= (unfocusZipper!403 lt!2099555) r!12920))))

(declare-fun toList!8195 ((InoxSet Context!6890)) List!58971)

(assert (=> b!5103527 (= lt!2099555 (toList!8195 z!4303))))

(declare-fun b!5103528 () Bool)

(declare-fun e!3182974 () Bool)

(declare-fun lt!2099545 () tuple2!63508)

(declare-fun matchZipper!733 ((InoxSet Context!6890) List!58969) Bool)

(assert (=> b!5103528 (= e!3182974 (matchZipper!733 z!4303 (_1!35057 lt!2099545)))))

(declare-fun b!5103529 () Bool)

(declare-fun tp!1423577 () Bool)

(assert (=> b!5103529 (= e!3182969 tp!1423577)))

(declare-fun b!5103530 () Bool)

(assert (=> b!5103530 (= e!3182966 (not e!3182967))))

(declare-fun res!2172174 () Bool)

(assert (=> b!5103530 (=> res!2172174 e!3182967)))

(declare-fun e!3182973 () Bool)

(assert (=> b!5103530 (= res!2172174 e!3182973)))

(declare-fun res!2172172 () Bool)

(assert (=> b!5103530 (=> (not res!2172172) (not e!3182973))))

(declare-fun lt!2099552 () Bool)

(assert (=> b!5103530 (= res!2172172 (not lt!2099552))))

(assert (=> b!5103530 (= lt!2099552 (matchZipper!733 z!4303 (_1!35057 lt!2099556)))))

(declare-fun e!3182968 () Bool)

(assert (=> b!5103530 e!3182968))

(declare-fun res!2172165 () Bool)

(assert (=> b!5103530 (=> res!2172165 e!3182968)))

(declare-fun lt!2099553 () tuple2!63508)

(assert (=> b!5103530 (= res!2172165 (isEmpty!31806 (_1!35057 lt!2099553)))))

(declare-fun lt!2099547 () Int)

(declare-fun lt!2099542 () Int)

(declare-fun findLongestMatchInner!2074 (Regex!14061 List!58969 Int List!58969 List!58969 Int) tuple2!63508)

(assert (=> b!5103530 (= lt!2099553 (findLongestMatchInner!2074 r!12920 Nil!58845 lt!2099542 input!5654 input!5654 lt!2099547))))

(declare-datatypes ((Unit!149894 0))(
  ( (Unit!149895) )
))
(declare-fun lt!2099543 () Unit!149894)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2068 (Regex!14061 List!58969) Unit!149894)

(assert (=> b!5103530 (= lt!2099543 (longestMatchIsAcceptedByMatchOrIsEmpty!2068 r!12920 input!5654))))

(assert (=> b!5103530 e!3182974))

(declare-fun res!2172169 () Bool)

(assert (=> b!5103530 (=> res!2172169 e!3182974)))

(assert (=> b!5103530 (= res!2172169 (isEmpty!31806 (_1!35057 lt!2099545)))))

(declare-fun findLongestMatchInnerZipper!135 ((InoxSet Context!6890) List!58969 Int List!58969 List!58969 Int) tuple2!63508)

(assert (=> b!5103530 (= lt!2099545 (findLongestMatchInnerZipper!135 z!4303 Nil!58845 lt!2099542 input!5654 input!5654 lt!2099547))))

(declare-fun size!39363 (List!58969) Int)

(assert (=> b!5103530 (= lt!2099547 (size!39363 input!5654))))

(assert (=> b!5103530 (= lt!2099542 (size!39363 Nil!58845))))

(declare-fun lt!2099551 () Unit!149894)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2069 ((InoxSet Context!6890) List!58969) Unit!149894)

(assert (=> b!5103530 (= lt!2099551 (longestMatchIsAcceptedByMatchOrIsEmpty!2069 z!4303 input!5654))))

(assert (=> b!5103530 (isPrefix!5462 (_1!35057 lt!2099546) lt!2099559)))

(declare-fun lt!2099544 () Unit!149894)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3520 (List!58969 List!58969) Unit!149894)

(assert (=> b!5103530 (= lt!2099544 (lemmaConcatTwoListThenFirstIsPrefix!3520 (_1!35057 lt!2099546) (_2!35057 lt!2099546)))))

(declare-fun lt!2099554 () List!58969)

(assert (=> b!5103530 (isPrefix!5462 (_1!35057 lt!2099556) lt!2099554)))

(declare-fun lt!2099557 () Unit!149894)

(assert (=> b!5103530 (= lt!2099557 (lemmaConcatTwoListThenFirstIsPrefix!3520 (_1!35057 lt!2099556) (_2!35057 lt!2099556)))))

(declare-fun b!5103531 () Bool)

(declare-fun tp_is_empty!37387 () Bool)

(assert (=> b!5103531 (= e!3182965 tp_is_empty!37387)))

(declare-fun b!5103532 () Bool)

(assert (=> b!5103532 (= e!3182968 (matchR!6846 r!12920 (_1!35057 lt!2099553)))))

(declare-fun b!5103533 () Bool)

(declare-fun tp!1423581 () Bool)

(assert (=> b!5103533 (= e!3182972 (and tp_is_empty!37387 tp!1423581))))

(declare-fun b!5103534 () Bool)

(declare-fun tp!1423582 () Bool)

(assert (=> b!5103534 (= e!3182965 tp!1423582)))

(declare-fun b!5103535 () Bool)

(assert (=> b!5103535 (= e!3182977 e!3182975)))

(declare-fun res!2172168 () Bool)

(assert (=> b!5103535 (=> res!2172168 e!3182975)))

(declare-fun lt!2099560 () Int)

(declare-fun lt!2099548 () Int)

(assert (=> b!5103535 (= res!2172168 (or (> lt!2099560 lt!2099548) (<= lt!2099548 lt!2099560)))))

(assert (=> b!5103535 (= lt!2099548 (size!39363 (_1!35057 lt!2099556)))))

(assert (=> b!5103535 (= lt!2099560 (size!39363 (_1!35057 lt!2099546)))))

(assert (=> b!5103535 (= (matchR!6846 r!12920 (_1!35057 lt!2099556)) lt!2099552)))

(declare-fun lt!2099558 () Unit!149894)

(declare-fun theoremZipperRegexEquiv!225 ((InoxSet Context!6890) List!58971 Regex!14061 List!58969) Unit!149894)

(assert (=> b!5103535 (= lt!2099558 (theoremZipperRegexEquiv!225 z!4303 lt!2099555 r!12920 (_1!35057 lt!2099556)))))

(assert (=> b!5103535 (= lt!2099549 (matchZipper!733 z!4303 (_1!35057 lt!2099546)))))

(declare-fun lt!2099550 () Unit!149894)

(assert (=> b!5103535 (= lt!2099550 (theoremZipperRegexEquiv!225 z!4303 lt!2099555 r!12920 (_1!35057 lt!2099546)))))

(declare-fun b!5103536 () Bool)

(assert (=> b!5103536 (= e!3182964 e!3182970)))

(declare-fun res!2172166 () Bool)

(assert (=> b!5103536 (=> (not res!2172166) (not e!3182970))))

(assert (=> b!5103536 (= res!2172166 (= lt!2099554 input!5654))))

(assert (=> b!5103536 (= lt!2099554 (++!12910 (_1!35057 lt!2099556) (_2!35057 lt!2099556)))))

(declare-fun findLongestMatch!1891 (Regex!14061 List!58969) tuple2!63508)

(assert (=> b!5103536 (= lt!2099546 (findLongestMatch!1891 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!85 ((InoxSet Context!6890) List!58969) tuple2!63508)

(assert (=> b!5103536 (= lt!2099556 (findLongestMatchZipper!85 z!4303 input!5654))))

(declare-fun b!5103537 () Bool)

(assert (=> b!5103537 (= e!3182973 (not (isEmpty!31806 (_1!35057 lt!2099556))))))

(assert (= (and start!538188 res!2172176) b!5103527))

(assert (= (and b!5103527 res!2172173) b!5103536))

(assert (= (and b!5103536 res!2172166) b!5103522))

(assert (= (and b!5103522 res!2172170) b!5103530))

(assert (= (and b!5103530 (not res!2172169)) b!5103528))

(assert (= (and b!5103530 (not res!2172165)) b!5103532))

(assert (= (and b!5103530 res!2172172) b!5103537))

(assert (= (and b!5103530 (not res!2172174)) b!5103525))

(assert (= (and b!5103525 res!2172167) b!5103521))

(assert (= (and b!5103525 (not res!2172171)) b!5103535))

(assert (= (and b!5103535 (not res!2172168)) b!5103524))

(assert (= (and b!5103524 (not res!2172175)) b!5103523))

(get-info :version)

(assert (= (and start!538188 ((_ is ElementMatch!14061) r!12920)) b!5103531))

(assert (= (and start!538188 ((_ is Concat!22906) r!12920)) b!5103520))

(assert (= (and start!538188 ((_ is Star!14061) r!12920)) b!5103534))

(assert (= (and start!538188 ((_ is Union!14061) r!12920)) b!5103526))

(assert (= (and start!538188 condSetEmpty!29284) setIsEmpty!29284))

(assert (= (and start!538188 (not condSetEmpty!29284)) setNonEmpty!29284))

(assert (= setNonEmpty!29284 b!5103529))

(assert (= (and start!538188 ((_ is Cons!58845) input!5654)) b!5103533))

(declare-fun m!6160842 () Bool)

(assert (=> b!5103536 m!6160842))

(declare-fun m!6160844 () Bool)

(assert (=> b!5103536 m!6160844))

(declare-fun m!6160846 () Bool)

(assert (=> b!5103536 m!6160846))

(declare-fun m!6160848 () Bool)

(assert (=> start!538188 m!6160848))

(declare-fun m!6160850 () Bool)

(assert (=> b!5103523 m!6160850))

(declare-fun m!6160852 () Bool)

(assert (=> b!5103525 m!6160852))

(declare-fun m!6160854 () Bool)

(assert (=> b!5103527 m!6160854))

(declare-fun m!6160856 () Bool)

(assert (=> b!5103527 m!6160856))

(declare-fun m!6160858 () Bool)

(assert (=> b!5103537 m!6160858))

(declare-fun m!6160860 () Bool)

(assert (=> b!5103524 m!6160860))

(declare-fun m!6160862 () Bool)

(assert (=> b!5103522 m!6160862))

(declare-fun m!6160864 () Bool)

(assert (=> b!5103528 m!6160864))

(declare-fun m!6160866 () Bool)

(assert (=> setNonEmpty!29284 m!6160866))

(declare-fun m!6160868 () Bool)

(assert (=> b!5103535 m!6160868))

(declare-fun m!6160870 () Bool)

(assert (=> b!5103535 m!6160870))

(declare-fun m!6160872 () Bool)

(assert (=> b!5103535 m!6160872))

(declare-fun m!6160874 () Bool)

(assert (=> b!5103535 m!6160874))

(declare-fun m!6160876 () Bool)

(assert (=> b!5103535 m!6160876))

(declare-fun m!6160878 () Bool)

(assert (=> b!5103535 m!6160878))

(declare-fun m!6160880 () Bool)

(assert (=> b!5103521 m!6160880))

(declare-fun m!6160882 () Bool)

(assert (=> b!5103532 m!6160882))

(declare-fun m!6160884 () Bool)

(assert (=> b!5103530 m!6160884))

(declare-fun m!6160886 () Bool)

(assert (=> b!5103530 m!6160886))

(declare-fun m!6160888 () Bool)

(assert (=> b!5103530 m!6160888))

(declare-fun m!6160890 () Bool)

(assert (=> b!5103530 m!6160890))

(declare-fun m!6160892 () Bool)

(assert (=> b!5103530 m!6160892))

(declare-fun m!6160894 () Bool)

(assert (=> b!5103530 m!6160894))

(declare-fun m!6160896 () Bool)

(assert (=> b!5103530 m!6160896))

(declare-fun m!6160898 () Bool)

(assert (=> b!5103530 m!6160898))

(declare-fun m!6160900 () Bool)

(assert (=> b!5103530 m!6160900))

(declare-fun m!6160902 () Bool)

(assert (=> b!5103530 m!6160902))

(declare-fun m!6160904 () Bool)

(assert (=> b!5103530 m!6160904))

(declare-fun m!6160906 () Bool)

(assert (=> b!5103530 m!6160906))

(declare-fun m!6160908 () Bool)

(assert (=> b!5103530 m!6160908))

(check-sat (not b!5103523) (not b!5103530) (not b!5103528) (not b!5103535) tp_is_empty!37387 (not b!5103526) (not setNonEmpty!29284) (not b!5103533) (not b!5103527) (not b!5103521) (not b!5103536) (not b!5103520) (not b!5103522) (not b!5103524) (not b!5103537) (not b!5103525) (not b!5103529) (not b!5103532) (not b!5103534) (not start!538188))
(check-sat)
