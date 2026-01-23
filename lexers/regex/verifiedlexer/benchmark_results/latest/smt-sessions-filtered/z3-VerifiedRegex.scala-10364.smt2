; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537772 () Bool)

(assert start!537772)

(declare-fun b!5099103 () Bool)

(declare-fun e!3180130 () Bool)

(declare-fun e!3180126 () Bool)

(assert (=> b!5099103 (= e!3180130 e!3180126)))

(declare-fun res!2170144 () Bool)

(assert (=> b!5099103 (=> (not res!2170144) (not e!3180126))))

(declare-datatypes ((C!28304 0))(
  ( (C!28305 (val!23804 Int)) )
))
(declare-datatypes ((List!58855 0))(
  ( (Nil!58731) (Cons!58731 (h!65179 C!28304) (t!371856 List!58855)) )
))
(declare-fun lt!2095647 () List!58855)

(declare-fun input!5654 () List!58855)

(assert (=> b!5099103 (= res!2170144 (= lt!2095647 input!5654))))

(declare-datatypes ((tuple2!63432 0))(
  ( (tuple2!63433 (_1!35019 List!58855) (_2!35019 List!58855)) )
))
(declare-fun lt!2095645 () tuple2!63432)

(declare-fun ++!12872 (List!58855 List!58855) List!58855)

(assert (=> b!5099103 (= lt!2095647 (++!12872 (_1!35019 lt!2095645) (_2!35019 lt!2095645)))))

(declare-fun lt!2095640 () tuple2!63432)

(declare-datatypes ((Regex!14023 0))(
  ( (ElementMatch!14023 (c!876129 C!28304)) (Concat!22868 (regOne!28558 Regex!14023) (regTwo!28558 Regex!14023)) (EmptyExpr!14023) (Star!14023 (reg!14352 Regex!14023)) (EmptyLang!14023) (Union!14023 (regOne!28559 Regex!14023) (regTwo!28559 Regex!14023)) )
))
(declare-fun r!12920 () Regex!14023)

(declare-fun findLongestMatch!1853 (Regex!14023 List!58855) tuple2!63432)

(assert (=> b!5099103 (= lt!2095640 (findLongestMatch!1853 r!12920 input!5654))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58856 0))(
  ( (Nil!58732) (Cons!58732 (h!65180 Regex!14023) (t!371857 List!58856)) )
))
(declare-datatypes ((Context!6814 0))(
  ( (Context!6815 (exprs!3907 List!58856)) )
))
(declare-fun z!4303 () (InoxSet Context!6814))

(declare-fun findLongestMatchZipper!47 ((InoxSet Context!6814) List!58855) tuple2!63432)

(assert (=> b!5099103 (= lt!2095645 (findLongestMatchZipper!47 z!4303 input!5654))))

(declare-fun b!5099104 () Bool)

(declare-fun e!3180125 () Bool)

(declare-fun tp!1422070 () Bool)

(assert (=> b!5099104 (= e!3180125 tp!1422070)))

(declare-fun b!5099105 () Bool)

(declare-fun e!3180132 () Bool)

(declare-fun e!3180131 () Bool)

(assert (=> b!5099105 (= e!3180132 e!3180131)))

(declare-fun res!2170142 () Bool)

(assert (=> b!5099105 (=> res!2170142 e!3180131)))

(declare-fun e!3180135 () Bool)

(assert (=> b!5099105 (= res!2170142 e!3180135)))

(declare-fun res!2170143 () Bool)

(assert (=> b!5099105 (=> (not res!2170143) (not e!3180135))))

(declare-fun lt!2095646 () Bool)

(assert (=> b!5099105 (= res!2170143 (not lt!2095646))))

(declare-fun matchR!6812 (Regex!14023 List!58855) Bool)

(assert (=> b!5099105 (= lt!2095646 (matchR!6812 r!12920 (_1!35019 lt!2095640)))))

(declare-fun res!2170146 () Bool)

(declare-fun e!3180128 () Bool)

(assert (=> start!537772 (=> (not res!2170146) (not e!3180128))))

(declare-fun validRegex!6150 (Regex!14023) Bool)

(assert (=> start!537772 (= res!2170146 (validRegex!6150 r!12920))))

(assert (=> start!537772 e!3180128))

(assert (=> start!537772 e!3180125))

(declare-fun condSetEmpty!29134 () Bool)

(assert (=> start!537772 (= condSetEmpty!29134 (= z!4303 ((as const (Array Context!6814 Bool)) false)))))

(declare-fun setRes!29134 () Bool)

(assert (=> start!537772 setRes!29134))

(declare-fun e!3180134 () Bool)

(assert (=> start!537772 e!3180134))

(declare-fun b!5099106 () Bool)

(declare-fun e!3180122 () Bool)

(declare-fun tp!1422066 () Bool)

(assert (=> b!5099106 (= e!3180122 tp!1422066)))

(declare-fun b!5099107 () Bool)

(declare-fun tp_is_empty!37311 () Bool)

(assert (=> b!5099107 (= e!3180125 tp_is_empty!37311)))

(declare-fun b!5099108 () Bool)

(declare-fun e!3180133 () Bool)

(declare-fun lt!2095654 () tuple2!63432)

(assert (=> b!5099108 (= e!3180133 (matchR!6812 r!12920 (_1!35019 lt!2095654)))))

(declare-fun b!5099109 () Bool)

(declare-fun e!3180124 () Bool)

(assert (=> b!5099109 (= e!3180124 (not e!3180132))))

(declare-fun res!2170150 () Bool)

(assert (=> b!5099109 (=> res!2170150 e!3180132)))

(declare-fun e!3180129 () Bool)

(assert (=> b!5099109 (= res!2170150 e!3180129)))

(declare-fun res!2170145 () Bool)

(assert (=> b!5099109 (=> (not res!2170145) (not e!3180129))))

(declare-fun lt!2095641 () Bool)

(assert (=> b!5099109 (= res!2170145 (not lt!2095641))))

(declare-fun matchZipper!699 ((InoxSet Context!6814) List!58855) Bool)

(assert (=> b!5099109 (= lt!2095641 (matchZipper!699 z!4303 (_1!35019 lt!2095645)))))

(assert (=> b!5099109 e!3180133))

(declare-fun res!2170148 () Bool)

(assert (=> b!5099109 (=> res!2170148 e!3180133)))

(declare-fun isEmpty!31772 (List!58855) Bool)

(assert (=> b!5099109 (= res!2170148 (isEmpty!31772 (_1!35019 lt!2095654)))))

(declare-fun lt!2095637 () Int)

(declare-fun lt!2095643 () Int)

(declare-fun findLongestMatchInner!2036 (Regex!14023 List!58855 Int List!58855 List!58855 Int) tuple2!63432)

(assert (=> b!5099109 (= lt!2095654 (findLongestMatchInner!2036 r!12920 Nil!58731 lt!2095637 input!5654 input!5654 lt!2095643))))

(declare-datatypes ((Unit!149770 0))(
  ( (Unit!149771) )
))
(declare-fun lt!2095639 () Unit!149770)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2000 (Regex!14023 List!58855) Unit!149770)

(assert (=> b!5099109 (= lt!2095639 (longestMatchIsAcceptedByMatchOrIsEmpty!2000 r!12920 input!5654))))

(declare-fun e!3180123 () Bool)

(assert (=> b!5099109 e!3180123))

(declare-fun res!2170141 () Bool)

(assert (=> b!5099109 (=> res!2170141 e!3180123)))

(declare-fun lt!2095649 () tuple2!63432)

(assert (=> b!5099109 (= res!2170141 (isEmpty!31772 (_1!35019 lt!2095649)))))

(declare-fun findLongestMatchInnerZipper!97 ((InoxSet Context!6814) List!58855 Int List!58855 List!58855 Int) tuple2!63432)

(assert (=> b!5099109 (= lt!2095649 (findLongestMatchInnerZipper!97 z!4303 Nil!58731 lt!2095637 input!5654 input!5654 lt!2095643))))

(declare-fun size!39325 (List!58855) Int)

(assert (=> b!5099109 (= lt!2095643 (size!39325 input!5654))))

(assert (=> b!5099109 (= lt!2095637 (size!39325 Nil!58731))))

(declare-fun lt!2095648 () Unit!149770)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2001 ((InoxSet Context!6814) List!58855) Unit!149770)

(assert (=> b!5099109 (= lt!2095648 (longestMatchIsAcceptedByMatchOrIsEmpty!2001 z!4303 input!5654))))

(declare-fun lt!2095652 () List!58855)

(declare-fun isPrefix!5428 (List!58855 List!58855) Bool)

(assert (=> b!5099109 (isPrefix!5428 (_1!35019 lt!2095640) lt!2095652)))

(declare-fun lt!2095636 () Unit!149770)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3486 (List!58855 List!58855) Unit!149770)

(assert (=> b!5099109 (= lt!2095636 (lemmaConcatTwoListThenFirstIsPrefix!3486 (_1!35019 lt!2095640) (_2!35019 lt!2095640)))))

(assert (=> b!5099109 (isPrefix!5428 (_1!35019 lt!2095645) lt!2095647)))

(declare-fun lt!2095644 () Unit!149770)

(assert (=> b!5099109 (= lt!2095644 (lemmaConcatTwoListThenFirstIsPrefix!3486 (_1!35019 lt!2095645) (_2!35019 lt!2095645)))))

(declare-fun b!5099110 () Bool)

(declare-fun tp!1422064 () Bool)

(declare-fun tp!1422071 () Bool)

(assert (=> b!5099110 (= e!3180125 (and tp!1422064 tp!1422071))))

(declare-fun tp!1422067 () Bool)

(declare-fun setNonEmpty!29134 () Bool)

(declare-fun setElem!29134 () Context!6814)

(declare-fun inv!78232 (Context!6814) Bool)

(assert (=> setNonEmpty!29134 (= setRes!29134 (and tp!1422067 (inv!78232 setElem!29134) e!3180122))))

(declare-fun setRest!29134 () (InoxSet Context!6814))

(assert (=> setNonEmpty!29134 (= z!4303 ((_ map or) (store ((as const (Array Context!6814 Bool)) false) setElem!29134 true) setRest!29134))))

(declare-fun b!5099111 () Bool)

(assert (=> b!5099111 (= e!3180123 (matchZipper!699 z!4303 (_1!35019 lt!2095649)))))

(declare-fun setIsEmpty!29134 () Bool)

(assert (=> setIsEmpty!29134 setRes!29134))

(declare-fun b!5099112 () Bool)

(declare-fun e!3180127 () Bool)

(assert (=> b!5099112 (= e!3180127 true)))

(declare-fun lt!2095650 () Bool)

(assert (=> b!5099112 (or (= (_1!35019 lt!2095640) (_1!35019 lt!2095645)) (not lt!2095650))))

(declare-fun lt!2095651 () Unit!149770)

(declare-fun longestMatchNoBiggerStringMatch!19 ((InoxSet Context!6814) List!58855 List!58855 List!58855) Unit!149770)

(assert (=> b!5099112 (= lt!2095651 (longestMatchNoBiggerStringMatch!19 z!4303 input!5654 (_1!35019 lt!2095645) (_1!35019 lt!2095640)))))

(declare-fun b!5099113 () Bool)

(assert (=> b!5099113 (= e!3180135 (not (isEmpty!31772 (_1!35019 lt!2095640))))))

(declare-fun b!5099114 () Bool)

(assert (=> b!5099114 (= e!3180128 e!3180130)))

(declare-fun res!2170149 () Bool)

(assert (=> b!5099114 (=> (not res!2170149) (not e!3180130))))

(declare-datatypes ((List!58857 0))(
  ( (Nil!58733) (Cons!58733 (h!65181 Context!6814) (t!371858 List!58857)) )
))
(declare-fun lt!2095653 () List!58857)

(declare-fun unfocusZipper!365 (List!58857) Regex!14023)

(assert (=> b!5099114 (= res!2170149 (= (unfocusZipper!365 lt!2095653) r!12920))))

(declare-fun toList!8157 ((InoxSet Context!6814)) List!58857)

(assert (=> b!5099114 (= lt!2095653 (toList!8157 z!4303))))

(declare-fun b!5099115 () Bool)

(declare-fun tp!1422068 () Bool)

(assert (=> b!5099115 (= e!3180134 (and tp_is_empty!37311 tp!1422068))))

(declare-fun b!5099116 () Bool)

(assert (=> b!5099116 (= e!3180131 e!3180127)))

(declare-fun res!2170147 () Bool)

(assert (=> b!5099116 (=> res!2170147 e!3180127)))

(assert (=> b!5099116 (= res!2170147 (<= (size!39325 (_1!35019 lt!2095640)) (size!39325 (_1!35019 lt!2095645))))))

(assert (=> b!5099116 (= (matchR!6812 r!12920 (_1!35019 lt!2095645)) lt!2095641)))

(declare-fun lt!2095642 () Unit!149770)

(declare-fun theoremZipperRegexEquiv!197 ((InoxSet Context!6814) List!58857 Regex!14023 List!58855) Unit!149770)

(assert (=> b!5099116 (= lt!2095642 (theoremZipperRegexEquiv!197 z!4303 lt!2095653 r!12920 (_1!35019 lt!2095645)))))

(assert (=> b!5099116 (= lt!2095646 lt!2095650)))

(assert (=> b!5099116 (= lt!2095650 (matchZipper!699 z!4303 (_1!35019 lt!2095640)))))

(declare-fun lt!2095638 () Unit!149770)

(assert (=> b!5099116 (= lt!2095638 (theoremZipperRegexEquiv!197 z!4303 lt!2095653 r!12920 (_1!35019 lt!2095640)))))

(declare-fun b!5099117 () Bool)

(assert (=> b!5099117 (= e!3180129 (not (isEmpty!31772 (_1!35019 lt!2095645))))))

(declare-fun b!5099118 () Bool)

(declare-fun tp!1422069 () Bool)

(declare-fun tp!1422065 () Bool)

(assert (=> b!5099118 (= e!3180125 (and tp!1422069 tp!1422065))))

(declare-fun b!5099119 () Bool)

(assert (=> b!5099119 (= e!3180126 e!3180124)))

(declare-fun res!2170140 () Bool)

(assert (=> b!5099119 (=> (not res!2170140) (not e!3180124))))

(assert (=> b!5099119 (= res!2170140 (= lt!2095652 input!5654))))

(assert (=> b!5099119 (= lt!2095652 (++!12872 (_1!35019 lt!2095640) (_2!35019 lt!2095640)))))

(assert (= (and start!537772 res!2170146) b!5099114))

(assert (= (and b!5099114 res!2170149) b!5099103))

(assert (= (and b!5099103 res!2170144) b!5099119))

(assert (= (and b!5099119 res!2170140) b!5099109))

(assert (= (and b!5099109 (not res!2170141)) b!5099111))

(assert (= (and b!5099109 (not res!2170148)) b!5099108))

(assert (= (and b!5099109 res!2170145) b!5099117))

(assert (= (and b!5099109 (not res!2170150)) b!5099105))

(assert (= (and b!5099105 res!2170143) b!5099113))

(assert (= (and b!5099105 (not res!2170142)) b!5099116))

(assert (= (and b!5099116 (not res!2170147)) b!5099112))

(get-info :version)

(assert (= (and start!537772 ((_ is ElementMatch!14023) r!12920)) b!5099107))

(assert (= (and start!537772 ((_ is Concat!22868) r!12920)) b!5099110))

(assert (= (and start!537772 ((_ is Star!14023) r!12920)) b!5099104))

(assert (= (and start!537772 ((_ is Union!14023) r!12920)) b!5099118))

(assert (= (and start!537772 condSetEmpty!29134) setIsEmpty!29134))

(assert (= (and start!537772 (not condSetEmpty!29134)) setNonEmpty!29134))

(assert (= setNonEmpty!29134 b!5099106))

(assert (= (and start!537772 ((_ is Cons!58731) input!5654)) b!5099115))

(declare-fun m!6156428 () Bool)

(assert (=> b!5099114 m!6156428))

(declare-fun m!6156430 () Bool)

(assert (=> b!5099114 m!6156430))

(declare-fun m!6156432 () Bool)

(assert (=> b!5099111 m!6156432))

(declare-fun m!6156434 () Bool)

(assert (=> setNonEmpty!29134 m!6156434))

(declare-fun m!6156436 () Bool)

(assert (=> b!5099117 m!6156436))

(declare-fun m!6156438 () Bool)

(assert (=> b!5099109 m!6156438))

(declare-fun m!6156440 () Bool)

(assert (=> b!5099109 m!6156440))

(declare-fun m!6156442 () Bool)

(assert (=> b!5099109 m!6156442))

(declare-fun m!6156444 () Bool)

(assert (=> b!5099109 m!6156444))

(declare-fun m!6156446 () Bool)

(assert (=> b!5099109 m!6156446))

(declare-fun m!6156448 () Bool)

(assert (=> b!5099109 m!6156448))

(declare-fun m!6156450 () Bool)

(assert (=> b!5099109 m!6156450))

(declare-fun m!6156452 () Bool)

(assert (=> b!5099109 m!6156452))

(declare-fun m!6156454 () Bool)

(assert (=> b!5099109 m!6156454))

(declare-fun m!6156456 () Bool)

(assert (=> b!5099109 m!6156456))

(declare-fun m!6156458 () Bool)

(assert (=> b!5099109 m!6156458))

(declare-fun m!6156460 () Bool)

(assert (=> b!5099109 m!6156460))

(declare-fun m!6156462 () Bool)

(assert (=> b!5099109 m!6156462))

(declare-fun m!6156464 () Bool)

(assert (=> b!5099105 m!6156464))

(declare-fun m!6156466 () Bool)

(assert (=> b!5099103 m!6156466))

(declare-fun m!6156468 () Bool)

(assert (=> b!5099103 m!6156468))

(declare-fun m!6156470 () Bool)

(assert (=> b!5099103 m!6156470))

(declare-fun m!6156472 () Bool)

(assert (=> start!537772 m!6156472))

(declare-fun m!6156474 () Bool)

(assert (=> b!5099119 m!6156474))

(declare-fun m!6156476 () Bool)

(assert (=> b!5099113 m!6156476))

(declare-fun m!6156478 () Bool)

(assert (=> b!5099116 m!6156478))

(declare-fun m!6156480 () Bool)

(assert (=> b!5099116 m!6156480))

(declare-fun m!6156482 () Bool)

(assert (=> b!5099116 m!6156482))

(declare-fun m!6156484 () Bool)

(assert (=> b!5099116 m!6156484))

(declare-fun m!6156486 () Bool)

(assert (=> b!5099116 m!6156486))

(declare-fun m!6156488 () Bool)

(assert (=> b!5099116 m!6156488))

(declare-fun m!6156490 () Bool)

(assert (=> b!5099108 m!6156490))

(declare-fun m!6156492 () Bool)

(assert (=> b!5099112 m!6156492))

(check-sat tp_is_empty!37311 (not b!5099106) (not b!5099109) (not b!5099108) (not b!5099116) (not setNonEmpty!29134) (not b!5099112) (not b!5099110) (not b!5099103) (not b!5099113) (not b!5099111) (not b!5099105) (not b!5099117) (not b!5099118) (not b!5099114) (not b!5099119) (not b!5099104) (not start!537772) (not b!5099115))
(check-sat)
