; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!539788 () Bool)

(assert start!539788)

(declare-fun b!5115917 () Bool)

(declare-fun e!3190691 () Bool)

(declare-fun e!3190696 () Bool)

(assert (=> b!5115917 (= e!3190691 (not e!3190696))))

(declare-fun res!2178048 () Bool)

(assert (=> b!5115917 (=> res!2178048 e!3190696)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28628 0))(
  ( (C!28629 (val!23966 Int)) )
))
(declare-datatypes ((Regex!14181 0))(
  ( (ElementMatch!14181 (c!879015 C!28628)) (Concat!23026 (regOne!28874 Regex!14181) (regTwo!28874 Regex!14181)) (EmptyExpr!14181) (Star!14181 (reg!14510 Regex!14181)) (EmptyLang!14181) (Union!14181 (regOne!28875 Regex!14181) (regTwo!28875 Regex!14181)) )
))
(declare-datatypes ((List!59265 0))(
  ( (Nil!59141) (Cons!59141 (h!65589 Regex!14181) (t!372276 List!59265)) )
))
(declare-datatypes ((Context!7130 0))(
  ( (Context!7131 (exprs!4065 List!59265)) )
))
(declare-fun z!4463 () (InoxSet Context!7130))

(declare-datatypes ((List!59266 0))(
  ( (Nil!59142) (Cons!59142 (h!65590 C!28628) (t!372277 List!59266)) )
))
(declare-fun lt!2108213 () List!59266)

(declare-fun matchZipper!849 ((InoxSet Context!7130) List!59266) Bool)

(assert (=> b!5115917 (= res!2178048 (not (matchZipper!849 z!4463 lt!2108213)))))

(declare-fun knownP!20 () List!59266)

(declare-fun testedP!265 () List!59266)

(declare-fun getSuffix!3260 (List!59266 List!59266) List!59266)

(assert (=> b!5115917 (= lt!2108213 (getSuffix!3260 knownP!20 testedP!265))))

(declare-fun isPrefix!5586 (List!59266 List!59266) Bool)

(assert (=> b!5115917 (isPrefix!5586 testedP!265 knownP!20)))

(declare-fun input!5745 () List!59266)

(declare-datatypes ((Unit!150265 0))(
  ( (Unit!150266) )
))
(declare-fun lt!2108209 () Unit!150265)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!723 (List!59266 List!59266 List!59266) Unit!150265)

(assert (=> b!5115917 (= lt!2108209 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!723 knownP!20 testedP!265 input!5745))))

(declare-fun b!5115918 () Bool)

(declare-fun res!2178046 () Bool)

(assert (=> b!5115918 (=> res!2178046 e!3190696)))

(declare-fun lostCauseZipper!1067 ((InoxSet Context!7130)) Bool)

(assert (=> b!5115918 (= res!2178046 (lostCauseZipper!1067 z!4463))))

(declare-fun setIsEmpty!30057 () Bool)

(declare-fun setRes!30057 () Bool)

(assert (=> setIsEmpty!30057 setRes!30057))

(declare-fun b!5115919 () Bool)

(declare-fun e!3190690 () Bool)

(declare-fun e!3190689 () Bool)

(assert (=> b!5115919 (= e!3190690 e!3190689)))

(declare-fun res!2178051 () Bool)

(assert (=> b!5115919 (=> res!2178051 e!3190689)))

(declare-fun lt!2108205 () C!28628)

(declare-fun head!10909 (List!59266) C!28628)

(assert (=> b!5115919 (= res!2178051 (not (= (head!10909 lt!2108213) lt!2108205)))))

(declare-fun lt!2108214 () List!59266)

(declare-fun lt!2108196 () List!59266)

(assert (=> b!5115919 (= lt!2108214 lt!2108196)))

(declare-fun lt!2108200 () Unit!150265)

(declare-fun lemmaSamePrefixThenSameSuffix!2632 (List!59266 List!59266 List!59266 List!59266 List!59266) Unit!150265)

(assert (=> b!5115919 (= lt!2108200 (lemmaSamePrefixThenSameSuffix!2632 testedP!265 lt!2108214 testedP!265 lt!2108196 input!5745))))

(declare-fun b!5115920 () Bool)

(declare-fun e!3190701 () Bool)

(declare-fun e!3190688 () Bool)

(assert (=> b!5115920 (= e!3190701 e!3190688)))

(declare-fun res!2178056 () Bool)

(assert (=> b!5115920 (=> res!2178056 e!3190688)))

(declare-fun lt!2108197 () List!59266)

(assert (=> b!5115920 (= res!2178056 (not (= lt!2108197 input!5745)))))

(declare-fun lt!2108194 () List!59266)

(declare-fun lt!2108218 () List!59266)

(declare-fun ++!13006 (List!59266 List!59266) List!59266)

(assert (=> b!5115920 (= lt!2108197 (++!13006 lt!2108194 lt!2108218))))

(assert (=> b!5115920 (= lt!2108194 (++!13006 testedP!265 lt!2108213))))

(declare-fun b!5115921 () Bool)

(declare-fun e!3190692 () Bool)

(assert (=> b!5115921 (= e!3190692 true)))

(declare-fun lt!2108203 () List!59266)

(declare-fun lt!2108198 () Int)

(declare-fun lt!2108195 () (InoxSet Context!7130))

(declare-fun lt!2108199 () Int)

(declare-fun size!39487 (List!59266) Int)

(declare-datatypes ((tuple2!63624 0))(
  ( (tuple2!63625 (_1!35115 List!59266) (_2!35115 List!59266)) )
))
(declare-fun findLongestMatchInnerZipper!193 ((InoxSet Context!7130) List!59266 Int List!59266 List!59266 Int) tuple2!63624)

(assert (=> b!5115921 (>= (size!39487 (_1!35115 (findLongestMatchInnerZipper!193 lt!2108195 lt!2108203 (size!39487 lt!2108203) (getSuffix!3260 input!5745 lt!2108203) input!5745 lt!2108199))) lt!2108198)))

(declare-fun baseZ!46 () (InoxSet Context!7130))

(declare-fun lt!2108206 () Unit!150265)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!9 ((InoxSet Context!7130) (InoxSet Context!7130) List!59266 List!59266 List!59266) Unit!150265)

(assert (=> b!5115921 (= lt!2108206 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!9 baseZ!46 lt!2108195 input!5745 lt!2108203 knownP!20))))

(declare-fun b!5115922 () Bool)

(declare-fun e!3190698 () Bool)

(assert (=> b!5115922 (= e!3190698 e!3190701)))

(declare-fun res!2178043 () Bool)

(assert (=> b!5115922 (=> res!2178043 e!3190701)))

(assert (=> b!5115922 (= res!2178043 (not (= (++!13006 knownP!20 lt!2108218) input!5745)))))

(assert (=> b!5115922 (= lt!2108218 (getSuffix!3260 input!5745 knownP!20))))

(declare-fun lt!2108201 () List!59266)

(assert (=> b!5115922 (= lt!2108201 (getSuffix!3260 knownP!20 lt!2108203))))

(assert (=> b!5115922 (isPrefix!5586 lt!2108203 knownP!20)))

(declare-fun lt!2108193 () Unit!150265)

(assert (=> b!5115922 (= lt!2108193 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!723 knownP!20 lt!2108203 input!5745))))

(declare-fun derivationZipper!80 ((InoxSet Context!7130) List!59266) (InoxSet Context!7130))

(assert (=> b!5115922 (= (derivationZipper!80 baseZ!46 lt!2108203) lt!2108195)))

(declare-fun derivationStepZipper!816 ((InoxSet Context!7130) C!28628) (InoxSet Context!7130))

(assert (=> b!5115922 (= lt!2108195 (derivationStepZipper!816 z!4463 lt!2108205))))

(declare-fun lt!2108210 () Unit!150265)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!41 ((InoxSet Context!7130) (InoxSet Context!7130) List!59266 C!28628) Unit!150265)

(assert (=> b!5115922 (= lt!2108210 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!41 baseZ!46 z!4463 testedP!265 lt!2108205))))

(assert (=> b!5115922 (isPrefix!5586 lt!2108203 input!5745)))

(declare-fun lt!2108192 () Unit!150265)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!976 (List!59266 List!59266) Unit!150265)

(assert (=> b!5115922 (= lt!2108192 (lemmaAddHeadSuffixToPrefixStillPrefix!976 testedP!265 input!5745))))

(declare-fun lt!2108208 () List!59266)

(assert (=> b!5115922 (= lt!2108203 (++!13006 testedP!265 lt!2108208))))

(assert (=> b!5115922 (= lt!2108208 (Cons!59142 lt!2108205 Nil!59142))))

(assert (=> b!5115922 (= lt!2108205 (head!10909 lt!2108196))))

(assert (=> b!5115922 (= lt!2108196 (getSuffix!3260 input!5745 testedP!265))))

(declare-fun b!5115923 () Bool)

(declare-fun res!2178042 () Bool)

(declare-fun e!3190703 () Bool)

(assert (=> b!5115923 (=> res!2178042 e!3190703)))

(assert (=> b!5115923 (= res!2178042 (not (= lt!2108194 knownP!20)))))

(declare-fun b!5115924 () Bool)

(declare-fun res!2178047 () Bool)

(assert (=> b!5115924 (=> res!2178047 e!3190696)))

(declare-fun lt!2108217 () Int)

(assert (=> b!5115924 (= res!2178047 (= lt!2108217 lt!2108198))))

(declare-fun res!2178049 () Bool)

(declare-fun e!3190697 () Bool)

(assert (=> start!539788 (=> (not res!2178049) (not e!3190697))))

(assert (=> start!539788 (= res!2178049 (isPrefix!5586 testedP!265 input!5745))))

(assert (=> start!539788 e!3190697))

(declare-fun e!3190695 () Bool)

(assert (=> start!539788 e!3190695))

(declare-fun condSetEmpty!30058 () Bool)

(assert (=> start!539788 (= condSetEmpty!30058 (= z!4463 ((as const (Array Context!7130 Bool)) false)))))

(assert (=> start!539788 setRes!30057))

(declare-fun e!3190702 () Bool)

(assert (=> start!539788 e!3190702))

(declare-fun condSetEmpty!30057 () Bool)

(assert (=> start!539788 (= condSetEmpty!30057 (= baseZ!46 ((as const (Array Context!7130 Bool)) false)))))

(declare-fun setRes!30058 () Bool)

(assert (=> start!539788 setRes!30058))

(declare-fun e!3190694 () Bool)

(assert (=> start!539788 e!3190694))

(declare-fun setIsEmpty!30058 () Bool)

(assert (=> setIsEmpty!30058 setRes!30058))

(declare-fun b!5115925 () Bool)

(assert (=> b!5115925 (= e!3190689 e!3190703)))

(declare-fun res!2178055 () Bool)

(assert (=> b!5115925 (=> res!2178055 e!3190703)))

(declare-fun lt!2108204 () List!59266)

(declare-fun $colon$colon!1127 (List!59266 C!28628) List!59266)

(assert (=> b!5115925 (= res!2178055 (not (= lt!2108213 ($colon$colon!1127 lt!2108204 lt!2108205))))))

(declare-fun tail!10050 (List!59266) List!59266)

(assert (=> b!5115925 (= lt!2108204 (tail!10050 lt!2108213))))

(declare-fun b!5115926 () Bool)

(declare-fun e!3190700 () Bool)

(assert (=> b!5115926 (= e!3190700 e!3190692)))

(declare-fun res!2178045 () Bool)

(assert (=> b!5115926 (=> res!2178045 e!3190692)))

(assert (=> b!5115926 (= res!2178045 (not (= lt!2108204 lt!2108201)))))

(declare-fun lt!2108216 () List!59266)

(assert (=> b!5115926 (= lt!2108216 lt!2108213)))

(declare-fun lt!2108207 () Unit!150265)

(assert (=> b!5115926 (= lt!2108207 (lemmaSamePrefixThenSameSuffix!2632 testedP!265 lt!2108216 testedP!265 lt!2108213 knownP!20))))

(declare-fun lt!2108211 () List!59266)

(assert (=> b!5115926 (= lt!2108211 (++!13006 testedP!265 lt!2108216))))

(assert (=> b!5115926 (= lt!2108216 (++!13006 lt!2108208 lt!2108201))))

(declare-fun lt!2108202 () Unit!150265)

(declare-fun lemmaConcatAssociativity!2764 (List!59266 List!59266 List!59266) Unit!150265)

(assert (=> b!5115926 (= lt!2108202 (lemmaConcatAssociativity!2764 testedP!265 lt!2108208 lt!2108201))))

(declare-fun b!5115927 () Bool)

(assert (=> b!5115927 (= e!3190696 e!3190698)))

(declare-fun res!2178040 () Bool)

(assert (=> b!5115927 (=> res!2178040 e!3190698)))

(assert (=> b!5115927 (= res!2178040 (>= lt!2108217 lt!2108199))))

(assert (=> b!5115927 (= lt!2108199 (size!39487 input!5745))))

(declare-fun b!5115928 () Bool)

(declare-fun tp_is_empty!37635 () Bool)

(declare-fun tp!1427265 () Bool)

(assert (=> b!5115928 (= e!3190695 (and tp_is_empty!37635 tp!1427265))))

(declare-fun b!5115929 () Bool)

(assert (=> b!5115929 (= e!3190703 e!3190700)))

(declare-fun res!2178039 () Bool)

(assert (=> b!5115929 (=> res!2178039 e!3190700)))

(assert (=> b!5115929 (= res!2178039 (not (= lt!2108211 knownP!20)))))

(assert (=> b!5115929 (= lt!2108211 (++!13006 lt!2108203 lt!2108201))))

(declare-fun b!5115930 () Bool)

(declare-fun e!3190699 () Bool)

(declare-fun tp!1427268 () Bool)

(assert (=> b!5115930 (= e!3190699 tp!1427268)))

(declare-fun b!5115931 () Bool)

(assert (=> b!5115931 (= e!3190697 e!3190691)))

(declare-fun res!2178052 () Bool)

(assert (=> b!5115931 (=> (not res!2178052) (not e!3190691))))

(assert (=> b!5115931 (= res!2178052 (>= lt!2108198 lt!2108217))))

(assert (=> b!5115931 (= lt!2108217 (size!39487 testedP!265))))

(assert (=> b!5115931 (= lt!2108198 (size!39487 knownP!20))))

(declare-fun b!5115932 () Bool)

(declare-fun res!2178054 () Bool)

(assert (=> b!5115932 (=> res!2178054 e!3190688)))

(assert (=> b!5115932 (= res!2178054 (not (= (++!13006 testedP!265 lt!2108196) input!5745)))))

(declare-fun b!5115933 () Bool)

(declare-fun e!3190693 () Bool)

(declare-fun tp!1427270 () Bool)

(assert (=> b!5115933 (= e!3190693 tp!1427270)))

(declare-fun setNonEmpty!30057 () Bool)

(declare-fun tp!1427266 () Bool)

(declare-fun setElem!30058 () Context!7130)

(declare-fun inv!78633 (Context!7130) Bool)

(assert (=> setNonEmpty!30057 (= setRes!30057 (and tp!1427266 (inv!78633 setElem!30058) e!3190699))))

(declare-fun setRest!30058 () (InoxSet Context!7130))

(assert (=> setNonEmpty!30057 (= z!4463 ((_ map or) (store ((as const (Array Context!7130 Bool)) false) setElem!30058 true) setRest!30058))))

(declare-fun b!5115934 () Bool)

(declare-fun tp!1427271 () Bool)

(assert (=> b!5115934 (= e!3190702 (and tp_is_empty!37635 tp!1427271))))

(declare-fun b!5115935 () Bool)

(declare-fun res!2178053 () Bool)

(assert (=> b!5115935 (=> (not res!2178053) (not e!3190691))))

(assert (=> b!5115935 (= res!2178053 (matchZipper!849 baseZ!46 knownP!20))))

(declare-fun tp!1427267 () Bool)

(declare-fun setElem!30057 () Context!7130)

(declare-fun setNonEmpty!30058 () Bool)

(assert (=> setNonEmpty!30058 (= setRes!30058 (and tp!1427267 (inv!78633 setElem!30057) e!3190693))))

(declare-fun setRest!30057 () (InoxSet Context!7130))

(assert (=> setNonEmpty!30058 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7130 Bool)) false) setElem!30057 true) setRest!30057))))

(declare-fun b!5115936 () Bool)

(assert (=> b!5115936 (= e!3190688 e!3190690)))

(declare-fun res!2178050 () Bool)

(assert (=> b!5115936 (=> res!2178050 e!3190690)))

(declare-fun lt!2108212 () List!59266)

(assert (=> b!5115936 (= res!2178050 (not (= lt!2108212 input!5745)))))

(assert (=> b!5115936 (= lt!2108197 lt!2108212)))

(assert (=> b!5115936 (= lt!2108212 (++!13006 testedP!265 lt!2108214))))

(assert (=> b!5115936 (= lt!2108214 (++!13006 lt!2108213 lt!2108218))))

(declare-fun lt!2108215 () Unit!150265)

(assert (=> b!5115936 (= lt!2108215 (lemmaConcatAssociativity!2764 testedP!265 lt!2108213 lt!2108218))))

(declare-fun b!5115937 () Bool)

(declare-fun tp!1427269 () Bool)

(assert (=> b!5115937 (= e!3190694 (and tp_is_empty!37635 tp!1427269))))

(declare-fun b!5115938 () Bool)

(declare-fun res!2178044 () Bool)

(assert (=> b!5115938 (=> res!2178044 e!3190696)))

(assert (=> b!5115938 (= res!2178044 (not (= (derivationZipper!80 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5115939 () Bool)

(declare-fun res!2178041 () Bool)

(assert (=> b!5115939 (=> (not res!2178041) (not e!3190697))))

(assert (=> b!5115939 (= res!2178041 (isPrefix!5586 knownP!20 input!5745))))

(assert (= (and start!539788 res!2178049) b!5115939))

(assert (= (and b!5115939 res!2178041) b!5115931))

(assert (= (and b!5115931 res!2178052) b!5115935))

(assert (= (and b!5115935 res!2178053) b!5115917))

(assert (= (and b!5115917 (not res!2178048)) b!5115938))

(assert (= (and b!5115938 (not res!2178044)) b!5115918))

(assert (= (and b!5115918 (not res!2178046)) b!5115924))

(assert (= (and b!5115924 (not res!2178047)) b!5115927))

(assert (= (and b!5115927 (not res!2178040)) b!5115922))

(assert (= (and b!5115922 (not res!2178043)) b!5115920))

(assert (= (and b!5115920 (not res!2178056)) b!5115932))

(assert (= (and b!5115932 (not res!2178054)) b!5115936))

(assert (= (and b!5115936 (not res!2178050)) b!5115919))

(assert (= (and b!5115919 (not res!2178051)) b!5115925))

(assert (= (and b!5115925 (not res!2178055)) b!5115923))

(assert (= (and b!5115923 (not res!2178042)) b!5115929))

(assert (= (and b!5115929 (not res!2178039)) b!5115926))

(assert (= (and b!5115926 (not res!2178045)) b!5115921))

(get-info :version)

(assert (= (and start!539788 ((_ is Cons!59142) input!5745)) b!5115928))

(assert (= (and start!539788 condSetEmpty!30058) setIsEmpty!30057))

(assert (= (and start!539788 (not condSetEmpty!30058)) setNonEmpty!30057))

(assert (= setNonEmpty!30057 b!5115930))

(assert (= (and start!539788 ((_ is Cons!59142) testedP!265)) b!5115934))

(assert (= (and start!539788 condSetEmpty!30057) setIsEmpty!30058))

(assert (= (and start!539788 (not condSetEmpty!30057)) setNonEmpty!30058))

(assert (= setNonEmpty!30058 b!5115933))

(assert (= (and start!539788 ((_ is Cons!59142) knownP!20)) b!5115937))

(declare-fun m!6175196 () Bool)

(assert (=> b!5115936 m!6175196))

(declare-fun m!6175198 () Bool)

(assert (=> b!5115936 m!6175198))

(declare-fun m!6175200 () Bool)

(assert (=> b!5115936 m!6175200))

(declare-fun m!6175202 () Bool)

(assert (=> b!5115918 m!6175202))

(declare-fun m!6175204 () Bool)

(assert (=> b!5115920 m!6175204))

(declare-fun m!6175206 () Bool)

(assert (=> b!5115920 m!6175206))

(declare-fun m!6175208 () Bool)

(assert (=> b!5115931 m!6175208))

(declare-fun m!6175210 () Bool)

(assert (=> b!5115931 m!6175210))

(declare-fun m!6175212 () Bool)

(assert (=> b!5115932 m!6175212))

(declare-fun m!6175214 () Bool)

(assert (=> b!5115917 m!6175214))

(declare-fun m!6175216 () Bool)

(assert (=> b!5115917 m!6175216))

(declare-fun m!6175218 () Bool)

(assert (=> b!5115917 m!6175218))

(declare-fun m!6175220 () Bool)

(assert (=> b!5115917 m!6175220))

(declare-fun m!6175222 () Bool)

(assert (=> b!5115921 m!6175222))

(declare-fun m!6175224 () Bool)

(assert (=> b!5115921 m!6175224))

(declare-fun m!6175226 () Bool)

(assert (=> b!5115921 m!6175226))

(assert (=> b!5115921 m!6175222))

(declare-fun m!6175228 () Bool)

(assert (=> b!5115921 m!6175228))

(declare-fun m!6175230 () Bool)

(assert (=> b!5115921 m!6175230))

(assert (=> b!5115921 m!6175228))

(declare-fun m!6175232 () Bool)

(assert (=> b!5115927 m!6175232))

(declare-fun m!6175234 () Bool)

(assert (=> b!5115919 m!6175234))

(declare-fun m!6175236 () Bool)

(assert (=> b!5115919 m!6175236))

(declare-fun m!6175238 () Bool)

(assert (=> b!5115922 m!6175238))

(declare-fun m!6175240 () Bool)

(assert (=> b!5115922 m!6175240))

(declare-fun m!6175242 () Bool)

(assert (=> b!5115922 m!6175242))

(declare-fun m!6175244 () Bool)

(assert (=> b!5115922 m!6175244))

(declare-fun m!6175246 () Bool)

(assert (=> b!5115922 m!6175246))

(declare-fun m!6175248 () Bool)

(assert (=> b!5115922 m!6175248))

(declare-fun m!6175250 () Bool)

(assert (=> b!5115922 m!6175250))

(declare-fun m!6175252 () Bool)

(assert (=> b!5115922 m!6175252))

(declare-fun m!6175254 () Bool)

(assert (=> b!5115922 m!6175254))

(declare-fun m!6175256 () Bool)

(assert (=> b!5115922 m!6175256))

(declare-fun m!6175258 () Bool)

(assert (=> b!5115922 m!6175258))

(declare-fun m!6175260 () Bool)

(assert (=> b!5115922 m!6175260))

(declare-fun m!6175262 () Bool)

(assert (=> b!5115922 m!6175262))

(declare-fun m!6175264 () Bool)

(assert (=> setNonEmpty!30057 m!6175264))

(declare-fun m!6175266 () Bool)

(assert (=> b!5115939 m!6175266))

(declare-fun m!6175268 () Bool)

(assert (=> start!539788 m!6175268))

(declare-fun m!6175270 () Bool)

(assert (=> setNonEmpty!30058 m!6175270))

(declare-fun m!6175272 () Bool)

(assert (=> b!5115935 m!6175272))

(declare-fun m!6175274 () Bool)

(assert (=> b!5115925 m!6175274))

(declare-fun m!6175276 () Bool)

(assert (=> b!5115925 m!6175276))

(declare-fun m!6175278 () Bool)

(assert (=> b!5115938 m!6175278))

(declare-fun m!6175280 () Bool)

(assert (=> b!5115926 m!6175280))

(declare-fun m!6175282 () Bool)

(assert (=> b!5115926 m!6175282))

(declare-fun m!6175284 () Bool)

(assert (=> b!5115926 m!6175284))

(declare-fun m!6175286 () Bool)

(assert (=> b!5115926 m!6175286))

(declare-fun m!6175288 () Bool)

(assert (=> b!5115929 m!6175288))

(check-sat tp_is_empty!37635 (not setNonEmpty!30058) (not b!5115929) (not b!5115936) (not b!5115925) (not start!539788) (not b!5115935) (not b!5115918) (not b!5115920) (not b!5115926) (not b!5115930) (not b!5115917) (not b!5115933) (not setNonEmpty!30057) (not b!5115921) (not b!5115919) (not b!5115939) (not b!5115934) (not b!5115938) (not b!5115928) (not b!5115931) (not b!5115932) (not b!5115927) (not b!5115922) (not b!5115937))
(check-sat)
