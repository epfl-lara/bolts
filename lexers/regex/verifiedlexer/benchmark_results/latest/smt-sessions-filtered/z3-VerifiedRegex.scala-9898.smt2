; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518528 () Bool)

(assert start!518528)

(declare-fun b!4934130 () Bool)

(declare-fun e!3082917 () Bool)

(declare-fun e!3082924 () Bool)

(assert (=> b!4934130 (= e!3082917 e!3082924)))

(declare-fun res!2105812 () Bool)

(assert (=> b!4934130 (=> res!2105812 e!3082924)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27076 0))(
  ( (C!27077 (val!22872 Int)) )
))
(declare-datatypes ((Regex!13423 0))(
  ( (ElementMatch!13423 (c!840949 C!27076)) (Concat!21996 (regOne!27358 Regex!13423) (regTwo!27358 Regex!13423)) (EmptyExpr!13423) (Star!13423 (reg!13752 Regex!13423)) (EmptyLang!13423) (Union!13423 (regOne!27359 Regex!13423) (regTwo!27359 Regex!13423)) )
))
(declare-datatypes ((List!56942 0))(
  ( (Nil!56818) (Cons!56818 (h!63266 Regex!13423) (t!367422 List!56942)) )
))
(declare-datatypes ((Context!6130 0))(
  ( (Context!6131 (exprs!3565 List!56942)) )
))
(declare-fun z!3568 () (InoxSet Context!6130))

(declare-fun lostCauseZipper!741 ((InoxSet Context!6130)) Bool)

(assert (=> b!4934130 (= res!2105812 (lostCauseZipper!741 z!3568))))

(declare-datatypes ((List!56943 0))(
  ( (Nil!56819) (Cons!56819 (h!63267 C!27076) (t!367423 List!56943)) )
))
(declare-fun testedSuffix!70 () List!56943)

(declare-fun lt!2032182 () List!56943)

(assert (=> b!4934130 (and (= testedSuffix!70 lt!2032182) (= lt!2032182 testedSuffix!70))))

(declare-fun testedP!110 () List!56943)

(declare-fun lt!2032197 () List!56943)

(declare-datatypes ((Unit!147489 0))(
  ( (Unit!147490) )
))
(declare-fun lt!2032199 () Unit!147489)

(declare-fun lemmaSamePrefixThenSameSuffix!2419 (List!56943 List!56943 List!56943 List!56943 List!56943) Unit!147489)

(assert (=> b!4934130 (= lt!2032199 (lemmaSamePrefixThenSameSuffix!2419 testedP!110 testedSuffix!70 testedP!110 lt!2032182 lt!2032197))))

(declare-fun getSuffix!3005 (List!56943 List!56943) List!56943)

(assert (=> b!4934130 (= lt!2032182 (getSuffix!3005 lt!2032197 testedP!110))))

(declare-fun setIsEmpty!27758 () Bool)

(declare-fun setRes!27758 () Bool)

(assert (=> setIsEmpty!27758 setRes!27758))

(declare-fun b!4934131 () Bool)

(declare-fun e!3082912 () Bool)

(declare-fun e!3082921 () Bool)

(assert (=> b!4934131 (= e!3082912 e!3082921)))

(declare-fun res!2105807 () Bool)

(assert (=> b!4934131 (=> res!2105807 e!3082921)))

(declare-fun lt!2032179 () Int)

(declare-fun lt!2032191 () Int)

(assert (=> b!4934131 (= res!2105807 (>= lt!2032179 lt!2032191))))

(declare-fun lt!2032198 () Unit!147489)

(declare-fun e!3082923 () Unit!147489)

(assert (=> b!4934131 (= lt!2032198 e!3082923)))

(declare-fun c!840948 () Bool)

(assert (=> b!4934131 (= c!840948 (= lt!2032179 lt!2032191))))

(declare-fun size!37628 (List!56943) Int)

(assert (=> b!4934131 (<= lt!2032179 (size!37628 lt!2032197))))

(declare-fun lt!2032183 () Unit!147489)

(declare-fun lemmaIsPrefixThenSmallerEqSize!709 (List!56943 List!56943) Unit!147489)

(assert (=> b!4934131 (= lt!2032183 (lemmaIsPrefixThenSmallerEqSize!709 testedP!110 lt!2032197))))

(declare-fun b!4934132 () Bool)

(declare-fun res!2105804 () Bool)

(assert (=> b!4934132 (=> res!2105804 e!3082924)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4934132 (= res!2105804 (= testedPSize!70 totalInputSize!132))))

(declare-fun e!3082913 () Bool)

(declare-fun setElem!27758 () Context!6130)

(declare-fun tp!1385122 () Bool)

(declare-fun setNonEmpty!27758 () Bool)

(declare-fun inv!73807 (Context!6130) Bool)

(assert (=> setNonEmpty!27758 (= setRes!27758 (and tp!1385122 (inv!73807 setElem!27758) e!3082913))))

(declare-fun setRest!27758 () (InoxSet Context!6130))

(assert (=> setNonEmpty!27758 (= z!3568 ((_ map or) (store ((as const (Array Context!6130 Bool)) false) setElem!27758 true) setRest!27758))))

(declare-fun b!4934134 () Bool)

(declare-fun e!3082922 () Bool)

(assert (=> b!4934134 (= e!3082922 e!3082912)))

(declare-fun res!2105803 () Bool)

(assert (=> b!4934134 (=> res!2105803 e!3082912)))

(declare-fun lt!2032193 () C!27076)

(declare-fun head!10560 (List!56943) C!27076)

(assert (=> b!4934134 (= res!2105803 (not (= lt!2032193 (head!10560 testedSuffix!70))))))

(declare-datatypes ((IArray!29925 0))(
  ( (IArray!29926 (innerList!15020 List!56943)) )
))
(declare-datatypes ((Conc!14932 0))(
  ( (Node!14932 (left!41432 Conc!14932) (right!41762 Conc!14932) (csize!30094 Int) (cheight!15143 Int)) (Leaf!24831 (xs!18256 IArray!29925) (csize!30095 Int)) (Empty!14932) )
))
(declare-datatypes ((BalanceConc!29294 0))(
  ( (BalanceConc!29295 (c!840950 Conc!14932)) )
))
(declare-fun totalInput!685 () BalanceConc!29294)

(declare-fun apply!13728 (BalanceConc!29294 Int) C!27076)

(assert (=> b!4934134 (= lt!2032193 (apply!13728 totalInput!685 testedPSize!70))))

(declare-fun drop!2254 (List!56943 Int) List!56943)

(declare-fun apply!13729 (List!56943 Int) C!27076)

(assert (=> b!4934134 (= (head!10560 (drop!2254 lt!2032197 testedPSize!70)) (apply!13729 lt!2032197 testedPSize!70))))

(declare-fun lt!2032180 () Unit!147489)

(declare-fun lemmaDropApply!1312 (List!56943 Int) Unit!147489)

(assert (=> b!4934134 (= lt!2032180 (lemmaDropApply!1312 lt!2032197 testedPSize!70))))

(declare-fun lt!2032187 () List!56943)

(declare-fun lt!2032185 () List!56943)

(assert (=> b!4934134 (not (or (not (= lt!2032187 testedP!110)) (not (= lt!2032185 testedSuffix!70))))))

(declare-fun lt!2032186 () Unit!147489)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!689 (List!56943 List!56943 List!56943 List!56943) Unit!147489)

(assert (=> b!4934134 (= lt!2032186 (lemmaConcatSameAndSameSizesThenSameLists!689 lt!2032187 lt!2032185 testedP!110 testedSuffix!70))))

(declare-fun b!4934135 () Bool)

(declare-fun res!2105810 () Bool)

(assert (=> b!4934135 (=> res!2105810 e!3082922)))

(declare-datatypes ((tuple2!61314 0))(
  ( (tuple2!61315 (_1!33960 BalanceConc!29294) (_2!33960 BalanceConc!29294)) )
))
(declare-fun lt!2032188 () tuple2!61314)

(declare-fun size!37629 (BalanceConc!29294) Int)

(assert (=> b!4934135 (= res!2105810 (not (= (size!37629 (_1!33960 lt!2032188)) testedPSize!70)))))

(declare-fun b!4934136 () Bool)

(declare-fun e!3082916 () Bool)

(declare-fun tp_is_empty!36023 () Bool)

(declare-fun tp!1385121 () Bool)

(assert (=> b!4934136 (= e!3082916 (and tp_is_empty!36023 tp!1385121))))

(declare-fun b!4934137 () Bool)

(declare-fun tp!1385123 () Bool)

(assert (=> b!4934137 (= e!3082913 tp!1385123)))

(declare-fun b!4934138 () Bool)

(declare-fun e!3082914 () Bool)

(declare-fun e!3082918 () Bool)

(assert (=> b!4934138 (= e!3082914 e!3082918)))

(declare-fun res!2105808 () Bool)

(assert (=> b!4934138 (=> (not res!2105808) (not e!3082918))))

(assert (=> b!4934138 (= res!2105808 (= totalInputSize!132 lt!2032191))))

(assert (=> b!4934138 (= lt!2032191 (size!37629 totalInput!685))))

(declare-fun b!4934139 () Bool)

(declare-fun e!3082915 () Bool)

(assert (=> b!4934139 (= e!3082915 e!3082914)))

(declare-fun res!2105805 () Bool)

(assert (=> b!4934139 (=> (not res!2105805) (not e!3082914))))

(assert (=> b!4934139 (= res!2105805 (= testedPSize!70 lt!2032179))))

(assert (=> b!4934139 (= lt!2032179 (size!37628 testedP!110))))

(declare-fun b!4934133 () Bool)

(assert (=> b!4934133 (= e!3082924 e!3082922)))

(declare-fun res!2105811 () Bool)

(assert (=> b!4934133 (=> res!2105811 e!3082922)))

(declare-fun ++!12388 (List!56943 List!56943) List!56943)

(assert (=> b!4934133 (= res!2105811 (not (= (++!12388 lt!2032187 lt!2032185) lt!2032197)))))

(declare-fun list!18042 (BalanceConc!29294) List!56943)

(assert (=> b!4934133 (= lt!2032185 (list!18042 (_2!33960 lt!2032188)))))

(assert (=> b!4934133 (= lt!2032187 (list!18042 (_1!33960 lt!2032188)))))

(declare-fun splitAt!323 (BalanceConc!29294 Int) tuple2!61314)

(assert (=> b!4934133 (= lt!2032188 (splitAt!323 totalInput!685 testedPSize!70))))

(declare-fun res!2105809 () Bool)

(assert (=> start!518528 (=> (not res!2105809) (not e!3082915))))

(declare-fun lt!2032192 () List!56943)

(assert (=> start!518528 (= res!2105809 (= lt!2032192 lt!2032197))))

(assert (=> start!518528 (= lt!2032197 (list!18042 totalInput!685))))

(assert (=> start!518528 (= lt!2032192 (++!12388 testedP!110 testedSuffix!70))))

(assert (=> start!518528 e!3082915))

(assert (=> start!518528 e!3082916))

(declare-fun condSetEmpty!27758 () Bool)

(assert (=> start!518528 (= condSetEmpty!27758 (= z!3568 ((as const (Array Context!6130 Bool)) false)))))

(assert (=> start!518528 setRes!27758))

(assert (=> start!518528 true))

(declare-fun e!3082920 () Bool)

(declare-fun inv!73808 (BalanceConc!29294) Bool)

(assert (=> start!518528 (and (inv!73808 totalInput!685) e!3082920)))

(declare-fun e!3082919 () Bool)

(assert (=> start!518528 e!3082919))

(declare-fun b!4934140 () Bool)

(declare-fun Unit!147491 () Unit!147489)

(assert (=> b!4934140 (= e!3082923 Unit!147491)))

(declare-fun b!4934141 () Bool)

(assert (=> b!4934141 (= e!3082921 true)))

(declare-fun lt!2032184 () Bool)

(declare-fun nullableZipper!828 ((InoxSet Context!6130)) Bool)

(assert (=> b!4934141 (= lt!2032184 (nullableZipper!828 z!3568))))

(declare-fun lt!2032194 () List!56943)

(assert (=> b!4934141 (= (++!12388 (++!12388 testedP!110 (Cons!56819 lt!2032193 Nil!56819)) lt!2032194) lt!2032197)))

(declare-fun lt!2032196 () Unit!147489)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1403 (List!56943 C!27076 List!56943 List!56943) Unit!147489)

(assert (=> b!4934141 (= lt!2032196 (lemmaMoveElementToOtherListKeepsConcatEq!1403 testedP!110 lt!2032193 lt!2032194 lt!2032197))))

(declare-fun tail!9699 (List!56943) List!56943)

(assert (=> b!4934141 (= lt!2032194 (tail!9699 testedSuffix!70))))

(declare-fun isPrefix!5021 (List!56943 List!56943) Bool)

(assert (=> b!4934141 (isPrefix!5021 (++!12388 testedP!110 (Cons!56819 (head!10560 lt!2032182) Nil!56819)) lt!2032197)))

(declare-fun lt!2032195 () Unit!147489)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!791 (List!56943 List!56943) Unit!147489)

(assert (=> b!4934141 (= lt!2032195 (lemmaAddHeadSuffixToPrefixStillPrefix!791 testedP!110 lt!2032197))))

(declare-fun b!4934142 () Bool)

(declare-fun tp!1385119 () Bool)

(assert (=> b!4934142 (= e!3082919 (and tp_is_empty!36023 tp!1385119))))

(declare-fun b!4934143 () Bool)

(declare-fun Unit!147492 () Unit!147489)

(assert (=> b!4934143 (= e!3082923 Unit!147492)))

(declare-fun lt!2032189 () Unit!147489)

(declare-fun lemmaIsPrefixRefl!3387 (List!56943 List!56943) Unit!147489)

(assert (=> b!4934143 (= lt!2032189 (lemmaIsPrefixRefl!3387 lt!2032197 lt!2032197))))

(assert (=> b!4934143 (isPrefix!5021 lt!2032197 lt!2032197)))

(declare-fun lt!2032181 () Unit!147489)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1145 (List!56943 List!56943 List!56943) Unit!147489)

(assert (=> b!4934143 (= lt!2032181 (lemmaIsPrefixSameLengthThenSameList!1145 lt!2032197 testedP!110 lt!2032197))))

(assert (=> b!4934143 false))

(declare-fun b!4934144 () Bool)

(assert (=> b!4934144 (= e!3082918 (not e!3082917))))

(declare-fun res!2105806 () Bool)

(assert (=> b!4934144 (=> res!2105806 e!3082917)))

(assert (=> b!4934144 (= res!2105806 (not (isPrefix!5021 testedP!110 lt!2032197)))))

(assert (=> b!4934144 (isPrefix!5021 testedP!110 lt!2032192)))

(declare-fun lt!2032190 () Unit!147489)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3245 (List!56943 List!56943) Unit!147489)

(assert (=> b!4934144 (= lt!2032190 (lemmaConcatTwoListThenFirstIsPrefix!3245 testedP!110 testedSuffix!70))))

(declare-fun b!4934145 () Bool)

(declare-fun tp!1385120 () Bool)

(declare-fun inv!73809 (Conc!14932) Bool)

(assert (=> b!4934145 (= e!3082920 (and (inv!73809 (c!840950 totalInput!685)) tp!1385120))))

(assert (= (and start!518528 res!2105809) b!4934139))

(assert (= (and b!4934139 res!2105805) b!4934138))

(assert (= (and b!4934138 res!2105808) b!4934144))

(assert (= (and b!4934144 (not res!2105806)) b!4934130))

(assert (= (and b!4934130 (not res!2105812)) b!4934132))

(assert (= (and b!4934132 (not res!2105804)) b!4934133))

(assert (= (and b!4934133 (not res!2105811)) b!4934135))

(assert (= (and b!4934135 (not res!2105810)) b!4934134))

(assert (= (and b!4934134 (not res!2105803)) b!4934131))

(assert (= (and b!4934131 c!840948) b!4934143))

(assert (= (and b!4934131 (not c!840948)) b!4934140))

(assert (= (and b!4934131 (not res!2105807)) b!4934141))

(get-info :version)

(assert (= (and start!518528 ((_ is Cons!56819) testedP!110)) b!4934136))

(assert (= (and start!518528 condSetEmpty!27758) setIsEmpty!27758))

(assert (= (and start!518528 (not condSetEmpty!27758)) setNonEmpty!27758))

(assert (= setNonEmpty!27758 b!4934137))

(assert (= start!518528 b!4934145))

(assert (= (and start!518528 ((_ is Cons!56819) testedSuffix!70)) b!4934142))

(declare-fun m!5954846 () Bool)

(assert (=> setNonEmpty!27758 m!5954846))

(declare-fun m!5954848 () Bool)

(assert (=> b!4934130 m!5954848))

(declare-fun m!5954850 () Bool)

(assert (=> b!4934130 m!5954850))

(declare-fun m!5954852 () Bool)

(assert (=> b!4934130 m!5954852))

(declare-fun m!5954854 () Bool)

(assert (=> b!4934139 m!5954854))

(declare-fun m!5954856 () Bool)

(assert (=> b!4934133 m!5954856))

(declare-fun m!5954858 () Bool)

(assert (=> b!4934133 m!5954858))

(declare-fun m!5954860 () Bool)

(assert (=> b!4934133 m!5954860))

(declare-fun m!5954862 () Bool)

(assert (=> b!4934133 m!5954862))

(declare-fun m!5954864 () Bool)

(assert (=> b!4934145 m!5954864))

(declare-fun m!5954866 () Bool)

(assert (=> b!4934134 m!5954866))

(declare-fun m!5954868 () Bool)

(assert (=> b!4934134 m!5954868))

(declare-fun m!5954870 () Bool)

(assert (=> b!4934134 m!5954870))

(declare-fun m!5954872 () Bool)

(assert (=> b!4934134 m!5954872))

(declare-fun m!5954874 () Bool)

(assert (=> b!4934134 m!5954874))

(assert (=> b!4934134 m!5954870))

(declare-fun m!5954876 () Bool)

(assert (=> b!4934134 m!5954876))

(declare-fun m!5954878 () Bool)

(assert (=> b!4934134 m!5954878))

(declare-fun m!5954880 () Bool)

(assert (=> b!4934135 m!5954880))

(declare-fun m!5954882 () Bool)

(assert (=> start!518528 m!5954882))

(declare-fun m!5954884 () Bool)

(assert (=> start!518528 m!5954884))

(declare-fun m!5954886 () Bool)

(assert (=> start!518528 m!5954886))

(declare-fun m!5954888 () Bool)

(assert (=> b!4934131 m!5954888))

(declare-fun m!5954890 () Bool)

(assert (=> b!4934131 m!5954890))

(declare-fun m!5954892 () Bool)

(assert (=> b!4934143 m!5954892))

(declare-fun m!5954894 () Bool)

(assert (=> b!4934143 m!5954894))

(declare-fun m!5954896 () Bool)

(assert (=> b!4934143 m!5954896))

(declare-fun m!5954898 () Bool)

(assert (=> b!4934138 m!5954898))

(declare-fun m!5954900 () Bool)

(assert (=> b!4934144 m!5954900))

(declare-fun m!5954902 () Bool)

(assert (=> b!4934144 m!5954902))

(declare-fun m!5954904 () Bool)

(assert (=> b!4934144 m!5954904))

(declare-fun m!5954906 () Bool)

(assert (=> b!4934141 m!5954906))

(declare-fun m!5954908 () Bool)

(assert (=> b!4934141 m!5954908))

(declare-fun m!5954910 () Bool)

(assert (=> b!4934141 m!5954910))

(declare-fun m!5954912 () Bool)

(assert (=> b!4934141 m!5954912))

(declare-fun m!5954914 () Bool)

(assert (=> b!4934141 m!5954914))

(declare-fun m!5954916 () Bool)

(assert (=> b!4934141 m!5954916))

(declare-fun m!5954918 () Bool)

(assert (=> b!4934141 m!5954918))

(declare-fun m!5954920 () Bool)

(assert (=> b!4934141 m!5954920))

(declare-fun m!5954922 () Bool)

(assert (=> b!4934141 m!5954922))

(assert (=> b!4934141 m!5954912))

(assert (=> b!4934141 m!5954920))

(check-sat (not b!4934130) (not setNonEmpty!27758) (not b!4934137) (not b!4934134) (not b!4934141) (not b!4934144) (not b!4934135) (not start!518528) (not b!4934133) tp_is_empty!36023 (not b!4934131) (not b!4934139) (not b!4934143) (not b!4934145) (not b!4934142) (not b!4934138) (not b!4934136))
(check-sat)
