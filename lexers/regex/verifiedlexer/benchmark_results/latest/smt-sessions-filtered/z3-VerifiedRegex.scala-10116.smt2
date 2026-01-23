; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530182 () Bool)

(assert start!530182)

(declare-fun b!5018046 () Bool)

(declare-fun e!3134832 () Bool)

(declare-fun e!3134826 () Bool)

(assert (=> b!5018046 (= e!3134832 e!3134826)))

(declare-fun res!2139710 () Bool)

(assert (=> b!5018046 (=> (not res!2139710) (not e!3134826))))

(declare-datatypes ((C!27884 0))(
  ( (C!27885 (val!23308 Int)) )
))
(declare-datatypes ((List!58055 0))(
  ( (Nil!57931) (Cons!57931 (h!64379 C!27884) (t!370431 List!58055)) )
))
(declare-fun lt!2076715 () List!58055)

(declare-fun lt!2076716 () List!58055)

(assert (=> b!5018046 (= res!2139710 (= lt!2076715 lt!2076716))))

(declare-fun lt!2076704 () List!58055)

(declare-fun lt!2076726 () List!58055)

(declare-fun ++!12665 (List!58055 List!58055) List!58055)

(assert (=> b!5018046 (= lt!2076715 (++!12665 lt!2076704 lt!2076726))))

(declare-datatypes ((IArray!30733 0))(
  ( (IArray!30734 (innerList!15424 List!58055)) )
))
(declare-datatypes ((Conc!15336 0))(
  ( (Node!15336 (left!42350 Conc!15336) (right!42680 Conc!15336) (csize!30902 Int) (cheight!15547 Int)) (Leaf!25453 (xs!18662 IArray!30733) (csize!30903 Int)) (Empty!15336) )
))
(declare-datatypes ((BalanceConc!30102 0))(
  ( (BalanceConc!30103 (c!857429 Conc!15336)) )
))
(declare-datatypes ((tuple2!63116 0))(
  ( (tuple2!63117 (_1!34861 BalanceConc!30102) (_2!34861 BalanceConc!30102)) )
))
(declare-fun lt!2076707 () tuple2!63116)

(declare-fun list!18664 (BalanceConc!30102) List!58055)

(assert (=> b!5018046 (= lt!2076726 (list!18664 (_2!34861 lt!2076707)))))

(assert (=> b!5018046 (= lt!2076704 (list!18664 (_1!34861 lt!2076707)))))

(declare-datatypes ((tuple2!63118 0))(
  ( (tuple2!63119 (_1!34862 List!58055) (_2!34862 List!58055)) )
))
(declare-fun lt!2076717 () tuple2!63118)

(declare-datatypes ((Regex!13817 0))(
  ( (ElementMatch!13817 (c!857430 C!27884)) (Concat!22610 (regOne!28146 Regex!13817) (regTwo!28146 Regex!13817)) (EmptyExpr!13817) (Star!13817 (reg!14146 Regex!13817)) (EmptyLang!13817) (Union!13817 (regOne!28147 Regex!13817) (regTwo!28147 Regex!13817)) )
))
(declare-fun r!12727 () Regex!13817)

(declare-fun findLongestMatch!1830 (Regex!13817 List!58055) tuple2!63118)

(assert (=> b!5018046 (= lt!2076717 (findLongestMatch!1830 r!12727 lt!2076716))))

(declare-fun lt!2076702 () Int)

(declare-fun lt!2076723 () Int)

(declare-fun input!5597 () BalanceConc!30102)

(declare-fun size!38520 (BalanceConc!30102) Int)

(assert (=> b!5018046 (= lt!2076702 (- lt!2076723 (size!38520 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!30102)

(assert (=> b!5018046 (= lt!2076723 (size!38520 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58056 0))(
  ( (Nil!57932) (Cons!57932 (h!64380 Regex!13817) (t!370432 List!58056)) )
))
(declare-datatypes ((Context!6484 0))(
  ( (Context!6485 (exprs!3742 List!58056)) )
))
(declare-fun z!4183 () (InoxSet Context!6484))

(declare-fun findLongestMatchZipperFastV2!119 ((InoxSet Context!6484) BalanceConc!30102 BalanceConc!30102) tuple2!63116)

(assert (=> b!5018046 (= lt!2076707 (findLongestMatchZipperFastV2!119 z!4183 input!5597 totalInput!1012))))

(declare-fun setIsEmpty!28522 () Bool)

(declare-fun setRes!28522 () Bool)

(assert (=> setIsEmpty!28522 setRes!28522))

(declare-fun b!5018047 () Bool)

(declare-fun e!3134839 () Bool)

(declare-fun tp!1407151 () Bool)

(declare-fun inv!76164 (Conc!15336) Bool)

(assert (=> b!5018047 (= e!3134839 (and (inv!76164 (c!857429 input!5597)) tp!1407151))))

(declare-fun b!5018048 () Bool)

(declare-fun e!3134828 () Bool)

(declare-fun e!3134829 () Bool)

(assert (=> b!5018048 (= e!3134828 e!3134829)))

(declare-fun res!2139717 () Bool)

(assert (=> b!5018048 (=> (not res!2139717) (not e!3134829))))

(declare-datatypes ((List!58057 0))(
  ( (Nil!57933) (Cons!57933 (h!64381 Context!6484) (t!370433 List!58057)) )
))
(declare-fun lt!2076713 () List!58057)

(declare-fun unfocusZipper!344 (List!58057) Regex!13817)

(assert (=> b!5018048 (= res!2139717 (= (unfocusZipper!344 lt!2076713) r!12727))))

(declare-fun toList!8102 ((InoxSet Context!6484)) List!58057)

(assert (=> b!5018048 (= lt!2076713 (toList!8102 z!4183))))

(declare-fun e!3134833 () Bool)

(declare-fun setElem!28522 () Context!6484)

(declare-fun tp!1407150 () Bool)

(declare-fun setNonEmpty!28522 () Bool)

(declare-fun inv!76165 (Context!6484) Bool)

(assert (=> setNonEmpty!28522 (= setRes!28522 (and tp!1407150 (inv!76165 setElem!28522) e!3134833))))

(declare-fun setRest!28522 () (InoxSet Context!6484))

(assert (=> setNonEmpty!28522 (= z!4183 ((_ map or) (store ((as const (Array Context!6484 Bool)) false) setElem!28522 true) setRest!28522))))

(declare-fun b!5018049 () Bool)

(assert (=> b!5018049 (= e!3134829 e!3134832)))

(declare-fun res!2139706 () Bool)

(assert (=> b!5018049 (=> (not res!2139706) (not e!3134832))))

(declare-fun lt!2076712 () List!58055)

(declare-fun isSuffix!1383 (List!58055 List!58055) Bool)

(assert (=> b!5018049 (= res!2139706 (isSuffix!1383 lt!2076716 lt!2076712))))

(assert (=> b!5018049 (= lt!2076712 (list!18664 totalInput!1012))))

(assert (=> b!5018049 (= lt!2076716 (list!18664 input!5597))))

(declare-fun e!3134836 () Bool)

(declare-fun b!5018050 () Bool)

(declare-fun lt!2076705 () Int)

(declare-fun matchZipper!585 ((InoxSet Context!6484) List!58055) Bool)

(declare-fun take!676 (List!58055 Int) List!58055)

(declare-fun drop!2480 (List!58055 Int) List!58055)

(assert (=> b!5018050 (= e!3134836 (matchZipper!585 z!4183 (take!676 (drop!2480 lt!2076712 lt!2076702) lt!2076705)))))

(declare-fun b!5018051 () Bool)

(declare-fun e!3134835 () Bool)

(declare-fun tp!1407156 () Bool)

(assert (=> b!5018051 (= e!3134835 tp!1407156)))

(declare-fun b!5018052 () Bool)

(declare-fun e!3134825 () Bool)

(declare-fun e!3134834 () Bool)

(assert (=> b!5018052 (= e!3134825 (not e!3134834))))

(declare-fun res!2139713 () Bool)

(assert (=> b!5018052 (=> res!2139713 e!3134834)))

(declare-fun e!3134827 () Bool)

(assert (=> b!5018052 (= res!2139713 e!3134827)))

(declare-fun res!2139715 () Bool)

(assert (=> b!5018052 (=> (not res!2139715) (not e!3134827))))

(declare-fun lt!2076719 () Bool)

(assert (=> b!5018052 (= res!2139715 (not lt!2076719))))

(assert (=> b!5018052 (= lt!2076719 (matchZipper!585 z!4183 lt!2076704))))

(declare-fun e!3134838 () Bool)

(assert (=> b!5018052 e!3134838))

(declare-fun res!2139708 () Bool)

(assert (=> b!5018052 (=> res!2139708 e!3134838)))

(declare-fun lt!2076709 () tuple2!63118)

(declare-fun isEmpty!31399 (List!58055) Bool)

(assert (=> b!5018052 (= res!2139708 (isEmpty!31399 (_1!34862 lt!2076709)))))

(declare-fun findLongestMatchInner!2006 (Regex!13817 List!58055 Int List!58055 List!58055 Int) tuple2!63118)

(declare-fun size!38521 (List!58055) Int)

(assert (=> b!5018052 (= lt!2076709 (findLongestMatchInner!2006 r!12727 Nil!57931 (size!38521 Nil!57931) lt!2076716 lt!2076716 (size!38521 lt!2076716)))))

(declare-datatypes ((Unit!149171 0))(
  ( (Unit!149172) )
))
(declare-fun lt!2076725 () Unit!149171)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1959 (Regex!13817 List!58055) Unit!149171)

(assert (=> b!5018052 (= lt!2076725 (longestMatchIsAcceptedByMatchOrIsEmpty!1959 r!12727 lt!2076716))))

(assert (=> b!5018052 e!3134836))

(declare-fun res!2139716 () Bool)

(assert (=> b!5018052 (=> res!2139716 e!3134836)))

(assert (=> b!5018052 (= res!2139716 (= lt!2076705 0))))

(declare-fun findLongestMatchInnerZipperFastV2!157 ((InoxSet Context!6484) Int BalanceConc!30102 Int) Int)

(assert (=> b!5018052 (= lt!2076705 (findLongestMatchInnerZipperFastV2!157 z!4183 lt!2076702 totalInput!1012 lt!2076723))))

(declare-fun lt!2076724 () Unit!149171)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!76 ((InoxSet Context!6484) Int BalanceConc!30102) Unit!149171)

(assert (=> b!5018052 (= lt!2076724 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!76 z!4183 lt!2076702 totalInput!1012))))

(declare-fun isPrefix!5370 (List!58055 List!58055) Bool)

(assert (=> b!5018052 (isPrefix!5370 (take!676 lt!2076712 lt!2076702) lt!2076712)))

(declare-fun lt!2076706 () Unit!149171)

(declare-fun lemmaTakeIsPrefix!170 (List!58055 Int) Unit!149171)

(assert (=> b!5018052 (= lt!2076706 (lemmaTakeIsPrefix!170 lt!2076712 lt!2076702))))

(declare-fun lt!2076708 () List!58055)

(assert (=> b!5018052 (isPrefix!5370 (_1!34862 lt!2076717) lt!2076708)))

(declare-fun lt!2076722 () Unit!149171)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3468 (List!58055 List!58055) Unit!149171)

(assert (=> b!5018052 (= lt!2076722 (lemmaConcatTwoListThenFirstIsPrefix!3468 (_1!34862 lt!2076717) (_2!34862 lt!2076717)))))

(assert (=> b!5018052 (isPrefix!5370 lt!2076704 lt!2076715)))

(declare-fun lt!2076721 () Unit!149171)

(assert (=> b!5018052 (= lt!2076721 (lemmaConcatTwoListThenFirstIsPrefix!3468 lt!2076704 lt!2076726))))

(declare-fun b!5018053 () Bool)

(declare-fun e!3134830 () Bool)

(declare-fun tp!1407154 () Bool)

(assert (=> b!5018053 (= e!3134830 (and (inv!76164 (c!857429 totalInput!1012)) tp!1407154))))

(declare-fun b!5018054 () Bool)

(assert (=> b!5018054 (= e!3134826 e!3134825)))

(declare-fun res!2139709 () Bool)

(assert (=> b!5018054 (=> (not res!2139709) (not e!3134825))))

(assert (=> b!5018054 (= res!2139709 (= lt!2076708 lt!2076716))))

(assert (=> b!5018054 (= lt!2076708 (++!12665 (_1!34862 lt!2076717) (_2!34862 lt!2076717)))))

(declare-fun b!5018055 () Bool)

(declare-fun e!3134837 () Bool)

(assert (=> b!5018055 (= e!3134834 e!3134837)))

(declare-fun res!2139712 () Bool)

(assert (=> b!5018055 (=> res!2139712 e!3134837)))

(declare-fun e!3134824 () Bool)

(assert (=> b!5018055 (= res!2139712 e!3134824)))

(declare-fun res!2139711 () Bool)

(assert (=> b!5018055 (=> (not res!2139711) (not e!3134824))))

(declare-fun lt!2076710 () Bool)

(assert (=> b!5018055 (= res!2139711 (not lt!2076710))))

(declare-fun matchR!6781 (Regex!13817 List!58055) Bool)

(assert (=> b!5018055 (= lt!2076710 (matchR!6781 r!12727 (_1!34862 lt!2076717)))))

(declare-fun b!5018056 () Bool)

(declare-fun tp!1407157 () Bool)

(declare-fun tp!1407152 () Bool)

(assert (=> b!5018056 (= e!3134835 (and tp!1407157 tp!1407152))))

(declare-fun b!5018057 () Bool)

(declare-fun isEmpty!31400 (BalanceConc!30102) Bool)

(assert (=> b!5018057 (= e!3134827 (not (isEmpty!31400 (_1!34861 lt!2076707))))))

(declare-fun b!5018058 () Bool)

(assert (=> b!5018058 (= e!3134838 (matchR!6781 r!12727 (_1!34862 lt!2076709)))))

(declare-fun b!5018059 () Bool)

(declare-fun tp!1407153 () Bool)

(assert (=> b!5018059 (= e!3134833 tp!1407153)))

(declare-fun b!5018060 () Bool)

(declare-fun e!3134831 () Bool)

(assert (=> b!5018060 (= e!3134837 e!3134831)))

(declare-fun res!2139707 () Bool)

(assert (=> b!5018060 (=> res!2139707 e!3134831)))

(declare-fun lt!2076703 () Int)

(declare-fun lt!2076714 () Int)

(assert (=> b!5018060 (= res!2139707 (or (> lt!2076703 lt!2076714) (> lt!2076714 lt!2076703)))))

(assert (=> b!5018060 (= lt!2076714 (size!38520 (_1!34861 lt!2076707)))))

(assert (=> b!5018060 (= lt!2076703 (size!38521 (_1!34862 lt!2076717)))))

(assert (=> b!5018060 (= (matchR!6781 r!12727 lt!2076704) lt!2076719)))

(declare-fun lt!2076720 () Unit!149171)

(declare-fun theoremZipperRegexEquiv!189 ((InoxSet Context!6484) List!58057 Regex!13817 List!58055) Unit!149171)

(assert (=> b!5018060 (= lt!2076720 (theoremZipperRegexEquiv!189 z!4183 lt!2076713 r!12727 lt!2076704))))

(assert (=> b!5018060 (= lt!2076710 (matchZipper!585 z!4183 (_1!34862 lt!2076717)))))

(declare-fun lt!2076718 () Unit!149171)

(assert (=> b!5018060 (= lt!2076718 (theoremZipperRegexEquiv!189 z!4183 lt!2076713 r!12727 (_1!34862 lt!2076717)))))

(declare-fun b!5018061 () Bool)

(declare-fun tp!1407158 () Bool)

(declare-fun tp!1407155 () Bool)

(assert (=> b!5018061 (= e!3134835 (and tp!1407158 tp!1407155))))

(declare-fun b!5018062 () Bool)

(assert (=> b!5018062 (= e!3134824 (not (isEmpty!31399 (_1!34862 lt!2076717))))))

(declare-fun b!5018063 () Bool)

(assert (=> b!5018063 (= e!3134831 (isPrefix!5370 lt!2076704 lt!2076716))))

(assert (=> b!5018063 (= lt!2076704 (_1!34862 lt!2076717))))

(declare-fun lt!2076711 () Unit!149171)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1287 (List!58055 List!58055 List!58055) Unit!149171)

(assert (=> b!5018063 (= lt!2076711 (lemmaIsPrefixSameLengthThenSameList!1287 lt!2076704 (_1!34862 lt!2076717) lt!2076716))))

(declare-fun b!5018064 () Bool)

(declare-fun tp_is_empty!36631 () Bool)

(assert (=> b!5018064 (= e!3134835 tp_is_empty!36631)))

(declare-fun res!2139714 () Bool)

(assert (=> start!530182 (=> (not res!2139714) (not e!3134828))))

(declare-fun validRegex!6114 (Regex!13817) Bool)

(assert (=> start!530182 (= res!2139714 (validRegex!6114 r!12727))))

(assert (=> start!530182 e!3134828))

(assert (=> start!530182 e!3134835))

(declare-fun inv!76166 (BalanceConc!30102) Bool)

(assert (=> start!530182 (and (inv!76166 input!5597) e!3134839)))

(declare-fun condSetEmpty!28522 () Bool)

(assert (=> start!530182 (= condSetEmpty!28522 (= z!4183 ((as const (Array Context!6484 Bool)) false)))))

(assert (=> start!530182 setRes!28522))

(assert (=> start!530182 (and (inv!76166 totalInput!1012) e!3134830)))

(assert (= (and start!530182 res!2139714) b!5018048))

(assert (= (and b!5018048 res!2139717) b!5018049))

(assert (= (and b!5018049 res!2139706) b!5018046))

(assert (= (and b!5018046 res!2139710) b!5018054))

(assert (= (and b!5018054 res!2139709) b!5018052))

(assert (= (and b!5018052 (not res!2139716)) b!5018050))

(assert (= (and b!5018052 (not res!2139708)) b!5018058))

(assert (= (and b!5018052 res!2139715) b!5018057))

(assert (= (and b!5018052 (not res!2139713)) b!5018055))

(assert (= (and b!5018055 res!2139711) b!5018062))

(assert (= (and b!5018055 (not res!2139712)) b!5018060))

(assert (= (and b!5018060 (not res!2139707)) b!5018063))

(get-info :version)

(assert (= (and start!530182 ((_ is ElementMatch!13817) r!12727)) b!5018064))

(assert (= (and start!530182 ((_ is Concat!22610) r!12727)) b!5018056))

(assert (= (and start!530182 ((_ is Star!13817) r!12727)) b!5018051))

(assert (= (and start!530182 ((_ is Union!13817) r!12727)) b!5018061))

(assert (= start!530182 b!5018047))

(assert (= (and start!530182 condSetEmpty!28522) setIsEmpty!28522))

(assert (= (and start!530182 (not condSetEmpty!28522)) setNonEmpty!28522))

(assert (= setNonEmpty!28522 b!5018059))

(assert (= start!530182 b!5018053))

(declare-fun m!6053180 () Bool)

(assert (=> b!5018058 m!6053180))

(declare-fun m!6053182 () Bool)

(assert (=> b!5018063 m!6053182))

(declare-fun m!6053184 () Bool)

(assert (=> b!5018063 m!6053184))

(declare-fun m!6053186 () Bool)

(assert (=> b!5018047 m!6053186))

(declare-fun m!6053188 () Bool)

(assert (=> b!5018054 m!6053188))

(declare-fun m!6053190 () Bool)

(assert (=> setNonEmpty!28522 m!6053190))

(declare-fun m!6053192 () Bool)

(assert (=> start!530182 m!6053192))

(declare-fun m!6053194 () Bool)

(assert (=> start!530182 m!6053194))

(declare-fun m!6053196 () Bool)

(assert (=> start!530182 m!6053196))

(declare-fun m!6053198 () Bool)

(assert (=> b!5018050 m!6053198))

(assert (=> b!5018050 m!6053198))

(declare-fun m!6053200 () Bool)

(assert (=> b!5018050 m!6053200))

(assert (=> b!5018050 m!6053200))

(declare-fun m!6053202 () Bool)

(assert (=> b!5018050 m!6053202))

(declare-fun m!6053204 () Bool)

(assert (=> b!5018062 m!6053204))

(declare-fun m!6053206 () Bool)

(assert (=> b!5018057 m!6053206))

(declare-fun m!6053208 () Bool)

(assert (=> b!5018060 m!6053208))

(declare-fun m!6053210 () Bool)

(assert (=> b!5018060 m!6053210))

(declare-fun m!6053212 () Bool)

(assert (=> b!5018060 m!6053212))

(declare-fun m!6053214 () Bool)

(assert (=> b!5018060 m!6053214))

(declare-fun m!6053216 () Bool)

(assert (=> b!5018060 m!6053216))

(declare-fun m!6053218 () Bool)

(assert (=> b!5018060 m!6053218))

(declare-fun m!6053220 () Bool)

(assert (=> b!5018046 m!6053220))

(declare-fun m!6053222 () Bool)

(assert (=> b!5018046 m!6053222))

(declare-fun m!6053224 () Bool)

(assert (=> b!5018046 m!6053224))

(declare-fun m!6053226 () Bool)

(assert (=> b!5018046 m!6053226))

(declare-fun m!6053228 () Bool)

(assert (=> b!5018046 m!6053228))

(declare-fun m!6053230 () Bool)

(assert (=> b!5018046 m!6053230))

(declare-fun m!6053232 () Bool)

(assert (=> b!5018046 m!6053232))

(declare-fun m!6053234 () Bool)

(assert (=> b!5018048 m!6053234))

(declare-fun m!6053236 () Bool)

(assert (=> b!5018048 m!6053236))

(declare-fun m!6053238 () Bool)

(assert (=> b!5018055 m!6053238))

(declare-fun m!6053240 () Bool)

(assert (=> b!5018049 m!6053240))

(declare-fun m!6053242 () Bool)

(assert (=> b!5018049 m!6053242))

(declare-fun m!6053244 () Bool)

(assert (=> b!5018049 m!6053244))

(declare-fun m!6053246 () Bool)

(assert (=> b!5018053 m!6053246))

(declare-fun m!6053248 () Bool)

(assert (=> b!5018052 m!6053248))

(declare-fun m!6053250 () Bool)

(assert (=> b!5018052 m!6053250))

(declare-fun m!6053252 () Bool)

(assert (=> b!5018052 m!6053252))

(declare-fun m!6053254 () Bool)

(assert (=> b!5018052 m!6053254))

(declare-fun m!6053256 () Bool)

(assert (=> b!5018052 m!6053256))

(declare-fun m!6053258 () Bool)

(assert (=> b!5018052 m!6053258))

(declare-fun m!6053260 () Bool)

(assert (=> b!5018052 m!6053260))

(declare-fun m!6053262 () Bool)

(assert (=> b!5018052 m!6053262))

(declare-fun m!6053264 () Bool)

(assert (=> b!5018052 m!6053264))

(declare-fun m!6053266 () Bool)

(assert (=> b!5018052 m!6053266))

(declare-fun m!6053268 () Bool)

(assert (=> b!5018052 m!6053268))

(declare-fun m!6053270 () Bool)

(assert (=> b!5018052 m!6053270))

(assert (=> b!5018052 m!6053250))

(assert (=> b!5018052 m!6053260))

(declare-fun m!6053272 () Bool)

(assert (=> b!5018052 m!6053272))

(declare-fun m!6053274 () Bool)

(assert (=> b!5018052 m!6053274))

(assert (=> b!5018052 m!6053252))

(declare-fun m!6053276 () Bool)

(assert (=> b!5018052 m!6053276))

(check-sat (not b!5018062) (not b!5018056) (not b!5018054) (not b!5018047) (not b!5018050) (not b!5018049) (not b!5018046) (not setNonEmpty!28522) (not start!530182) (not b!5018063) (not b!5018055) (not b!5018058) (not b!5018052) (not b!5018053) (not b!5018048) (not b!5018061) (not b!5018060) (not b!5018051) (not b!5018057) (not b!5018059) tp_is_empty!36631)
(check-sat)
