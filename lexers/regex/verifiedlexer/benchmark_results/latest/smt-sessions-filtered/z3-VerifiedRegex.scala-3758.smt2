; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209630 () Bool)

(assert start!209630)

(declare-fun b!2161033 () Bool)

(declare-fun e!1382827 () Int)

(assert (=> b!2161033 (= e!1382827 (- 1))))

(declare-fun b!2161034 () Bool)

(declare-fun e!1382825 () Bool)

(assert (=> b!2161034 (= e!1382825 true)))

(declare-fun lt!804160 () Int)

(declare-datatypes ((C!12112 0))(
  ( (C!12113 (val!7042 Int)) )
))
(declare-datatypes ((List!25162 0))(
  ( (Nil!25078) (Cons!25078 (h!30479 C!12112) (t!197710 List!25162)) )
))
(declare-fun lt!804169 () List!25162)

(declare-fun size!19593 (List!25162) Int)

(assert (=> b!2161034 (= lt!804160 (size!19593 lt!804169))))

(declare-fun b!2161035 () Bool)

(declare-fun e!1382839 () Bool)

(declare-fun lt!804159 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!5983 0))(
  ( (ElementMatch!5983 (c!341956 C!12112)) (Concat!10285 (regOne!12478 Regex!5983) (regTwo!12478 Regex!5983)) (EmptyExpr!5983) (Star!5983 (reg!6312 Regex!5983)) (EmptyLang!5983) (Union!5983 (regOne!12479 Regex!5983) (regTwo!12479 Regex!5983)) )
))
(declare-datatypes ((List!25163 0))(
  ( (Nil!25079) (Cons!25079 (h!30480 Regex!5983) (t!197711 List!25163)) )
))
(declare-datatypes ((Context!3106 0))(
  ( (Context!3107 (exprs!2053 List!25163)) )
))
(declare-fun z!4055 () (InoxSet Context!3106))

(declare-fun lt!804152 () List!25162)

(declare-fun lt!804162 () Int)

(declare-fun matchZipper!111 ((InoxSet Context!3106) List!25162) Bool)

(declare-fun take!197 (List!25162 Int) List!25162)

(declare-fun drop!1206 (List!25162 Int) List!25162)

(assert (=> b!2161035 (= e!1382839 (matchZipper!111 z!4055 (take!197 (drop!1206 lt!804152 lt!804162) lt!804159)))))

(declare-fun b!2161036 () Bool)

(declare-fun e!1382838 () Bool)

(assert (=> b!2161036 (= e!1382838 e!1382825)))

(declare-fun res!931278 () Bool)

(assert (=> b!2161036 (=> res!931278 e!1382825)))

(declare-fun lt!804170 () Int)

(declare-fun lt!804149 () Int)

(assert (=> b!2161036 (= res!931278 (or (> lt!804170 lt!804149) (<= lt!804149 lt!804170)))))

(declare-datatypes ((IArray!16243 0))(
  ( (IArray!16244 (innerList!8179 List!25162)) )
))
(declare-datatypes ((Conc!8119 0))(
  ( (Node!8119 (left!19289 Conc!8119) (right!19619 Conc!8119) (csize!16468 Int) (cheight!8330 Int)) (Leaf!11878 (xs!11061 IArray!16243) (csize!16469 Int)) (Empty!8119) )
))
(declare-datatypes ((BalanceConc!16000 0))(
  ( (BalanceConc!16001 (c!341957 Conc!8119)) )
))
(declare-datatypes ((tuple2!24798 0))(
  ( (tuple2!24799 (_1!14769 BalanceConc!16000) (_2!14769 BalanceConc!16000)) )
))
(declare-fun lt!804157 () tuple2!24798)

(declare-fun size!19594 (BalanceConc!16000) Int)

(assert (=> b!2161036 (= lt!804149 (size!19594 (_1!14769 lt!804157)))))

(declare-datatypes ((tuple2!24800 0))(
  ( (tuple2!24801 (_1!14770 List!25162) (_2!14770 List!25162)) )
))
(declare-fun lt!804167 () tuple2!24800)

(assert (=> b!2161036 (= lt!804170 (size!19593 (_1!14770 lt!804167)))))

(declare-fun r!12534 () Regex!5983)

(declare-fun lt!804154 () Bool)

(declare-fun matchR!2744 (Regex!5983 List!25162) Bool)

(assert (=> b!2161036 (= (matchR!2744 r!12534 lt!804169) lt!804154)))

(declare-datatypes ((List!25164 0))(
  ( (Nil!25080) (Cons!25080 (h!30481 Context!3106) (t!197712 List!25164)) )
))
(declare-fun lt!804150 () List!25164)

(declare-datatypes ((Unit!38117 0))(
  ( (Unit!38118) )
))
(declare-fun lt!804164 () Unit!38117)

(declare-fun theoremZipperRegexEquiv!27 ((InoxSet Context!3106) List!25164 Regex!5983 List!25162) Unit!38117)

(assert (=> b!2161036 (= lt!804164 (theoremZipperRegexEquiv!27 z!4055 lt!804150 r!12534 lt!804169))))

(declare-fun lt!804166 () Bool)

(assert (=> b!2161036 (= lt!804166 (matchZipper!111 z!4055 (_1!14770 lt!804167)))))

(declare-fun lt!804165 () Unit!38117)

(assert (=> b!2161036 (= lt!804165 (theoremZipperRegexEquiv!27 z!4055 lt!804150 r!12534 (_1!14770 lt!804167)))))

(declare-fun b!2161037 () Bool)

(declare-fun e!1382832 () Bool)

(assert (=> b!2161037 (= e!1382832 e!1382838)))

(declare-fun res!931275 () Bool)

(assert (=> b!2161037 (=> res!931275 e!1382838)))

(declare-fun e!1382836 () Bool)

(assert (=> b!2161037 (= res!931275 e!1382836)))

(declare-fun res!931270 () Bool)

(assert (=> b!2161037 (=> (not res!931270) (not e!1382836))))

(assert (=> b!2161037 (= res!931270 (not lt!804166))))

(assert (=> b!2161037 (= lt!804166 (matchR!2744 r!12534 (_1!14770 lt!804167)))))

(declare-fun b!2161038 () Bool)

(declare-fun e!1382831 () Bool)

(declare-fun isEmpty!14381 (BalanceConc!16000) Bool)

(assert (=> b!2161038 (= e!1382831 (not (isEmpty!14381 (_1!14769 lt!804157))))))

(declare-fun b!2161039 () Bool)

(declare-fun e!1382828 () Bool)

(declare-fun e!1382834 () Bool)

(assert (=> b!2161039 (= e!1382828 e!1382834)))

(declare-fun res!931269 () Bool)

(assert (=> b!2161039 (=> (not res!931269) (not e!1382834))))

(declare-fun lt!804148 () List!25162)

(declare-fun lt!804146 () List!25162)

(assert (=> b!2161039 (= res!931269 (= lt!804148 lt!804146))))

(declare-fun ++!6340 (List!25162 List!25162) List!25162)

(assert (=> b!2161039 (= lt!804148 (++!6340 (_1!14770 lt!804167) (_2!14770 lt!804167)))))

(declare-fun setIsEmpty!18058 () Bool)

(declare-fun setRes!18058 () Bool)

(assert (=> setIsEmpty!18058 setRes!18058))

(declare-fun b!2161040 () Bool)

(declare-fun e!1382837 () Bool)

(declare-fun input!5540 () BalanceConc!16000)

(declare-fun tp!674154 () Bool)

(declare-fun inv!33226 (Conc!8119) Bool)

(assert (=> b!2161040 (= e!1382837 (and (inv!33226 (c!341957 input!5540)) tp!674154))))

(declare-fun b!2161041 () Bool)

(assert (=> b!2161041 (= e!1382827 (- lt!804162 1))))

(declare-fun res!931277 () Bool)

(declare-fun e!1382830 () Bool)

(assert (=> start!209630 (=> (not res!931277) (not e!1382830))))

(declare-fun validRegex!2259 (Regex!5983) Bool)

(assert (=> start!209630 (= res!931277 (validRegex!2259 r!12534))))

(assert (=> start!209630 e!1382830))

(declare-fun e!1382833 () Bool)

(assert (=> start!209630 e!1382833))

(declare-fun totalInput!977 () BalanceConc!16000)

(declare-fun e!1382841 () Bool)

(declare-fun inv!33227 (BalanceConc!16000) Bool)

(assert (=> start!209630 (and (inv!33227 totalInput!977) e!1382841)))

(assert (=> start!209630 (and (inv!33227 input!5540) e!1382837)))

(declare-fun condSetEmpty!18058 () Bool)

(assert (=> start!209630 (= condSetEmpty!18058 (= z!4055 ((as const (Array Context!3106 Bool)) false)))))

(assert (=> start!209630 setRes!18058))

(declare-fun setElem!18058 () Context!3106)

(declare-fun e!1382826 () Bool)

(declare-fun setNonEmpty!18058 () Bool)

(declare-fun tp!674157 () Bool)

(declare-fun inv!33228 (Context!3106) Bool)

(assert (=> setNonEmpty!18058 (= setRes!18058 (and tp!674157 (inv!33228 setElem!18058) e!1382826))))

(declare-fun setRest!18058 () (InoxSet Context!3106))

(assert (=> setNonEmpty!18058 (= z!4055 ((_ map or) (store ((as const (Array Context!3106 Bool)) false) setElem!18058 true) setRest!18058))))

(declare-fun b!2161042 () Bool)

(declare-fun e!1382840 () Bool)

(declare-fun lt!804155 () tuple2!24800)

(assert (=> b!2161042 (= e!1382840 (matchR!2744 r!12534 (_1!14770 lt!804155)))))

(declare-fun b!2161043 () Bool)

(declare-fun isEmpty!14382 (List!25162) Bool)

(assert (=> b!2161043 (= e!1382836 (not (isEmpty!14382 (_1!14770 lt!804167))))))

(declare-fun b!2161044 () Bool)

(declare-fun res!931279 () Bool)

(assert (=> b!2161044 (=> res!931279 e!1382825)))

(declare-fun isPrefix!2103 (List!25162 List!25162) Bool)

(assert (=> b!2161044 (= res!931279 (not (isPrefix!2103 (_1!14770 lt!804167) lt!804146)))))

(declare-fun b!2161045 () Bool)

(declare-fun e!1382835 () Bool)

(declare-fun e!1382829 () Bool)

(assert (=> b!2161045 (= e!1382835 e!1382829)))

(declare-fun res!931274 () Bool)

(assert (=> b!2161045 (=> (not res!931274) (not e!1382829))))

(declare-fun isSuffix!650 (List!25162 List!25162) Bool)

(assert (=> b!2161045 (= res!931274 (isSuffix!650 lt!804146 lt!804152))))

(declare-fun list!9602 (BalanceConc!16000) List!25162)

(assert (=> b!2161045 (= lt!804152 (list!9602 totalInput!977))))

(assert (=> b!2161045 (= lt!804146 (list!9602 input!5540))))

(declare-fun b!2161046 () Bool)

(assert (=> b!2161046 (= e!1382829 e!1382828)))

(declare-fun res!931268 () Bool)

(assert (=> b!2161046 (=> (not res!931268) (not e!1382828))))

(declare-fun lt!804156 () List!25162)

(assert (=> b!2161046 (= res!931268 (= lt!804156 lt!804146))))

(declare-fun lt!804153 () List!25162)

(assert (=> b!2161046 (= lt!804156 (++!6340 lt!804169 lt!804153))))

(assert (=> b!2161046 (= lt!804153 (list!9602 (_2!14769 lt!804157)))))

(assert (=> b!2161046 (= lt!804169 (list!9602 (_1!14769 lt!804157)))))

(declare-fun findLongestMatch!537 (Regex!5983 List!25162) tuple2!24800)

(assert (=> b!2161046 (= lt!804167 (findLongestMatch!537 r!12534 lt!804146))))

(declare-fun lt!804158 () Int)

(assert (=> b!2161046 (= lt!804162 (- lt!804158 (size!19594 input!5540)))))

(assert (=> b!2161046 (= lt!804158 (size!19594 totalInput!977))))

(declare-fun findLongestMatchZipperSequenceV3!32 ((InoxSet Context!3106) BalanceConc!16000 BalanceConc!16000) tuple2!24798)

(assert (=> b!2161046 (= lt!804157 (findLongestMatchZipperSequenceV3!32 z!4055 input!5540 totalInput!977))))

(declare-fun b!2161047 () Bool)

(declare-fun tp!674158 () Bool)

(declare-fun tp!674160 () Bool)

(assert (=> b!2161047 (= e!1382833 (and tp!674158 tp!674160))))

(declare-fun b!2161048 () Bool)

(declare-fun tp!674156 () Bool)

(assert (=> b!2161048 (= e!1382833 tp!674156)))

(declare-fun b!2161049 () Bool)

(declare-fun tp_is_empty!9573 () Bool)

(assert (=> b!2161049 (= e!1382833 tp_is_empty!9573)))

(declare-fun b!2161050 () Bool)

(assert (=> b!2161050 (= e!1382834 (not e!1382832))))

(declare-fun res!931266 () Bool)

(assert (=> b!2161050 (=> res!931266 e!1382832)))

(assert (=> b!2161050 (= res!931266 e!1382831)))

(declare-fun res!931272 () Bool)

(assert (=> b!2161050 (=> (not res!931272) (not e!1382831))))

(assert (=> b!2161050 (= res!931272 (not lt!804154))))

(assert (=> b!2161050 (= lt!804154 (matchZipper!111 z!4055 lt!804169))))

(assert (=> b!2161050 e!1382840))

(declare-fun res!931273 () Bool)

(assert (=> b!2161050 (=> res!931273 e!1382840)))

(assert (=> b!2161050 (= res!931273 (isEmpty!14382 (_1!14770 lt!804155)))))

(declare-fun findLongestMatchInner!612 (Regex!5983 List!25162 Int List!25162 List!25162 Int) tuple2!24800)

(assert (=> b!2161050 (= lt!804155 (findLongestMatchInner!612 r!12534 Nil!25078 (size!19593 Nil!25078) lt!804146 lt!804146 (size!19593 lt!804146)))))

(declare-fun lt!804161 () Unit!38117)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!593 (Regex!5983 List!25162) Unit!38117)

(assert (=> b!2161050 (= lt!804161 (longestMatchIsAcceptedByMatchOrIsEmpty!593 r!12534 lt!804146))))

(assert (=> b!2161050 e!1382839))

(declare-fun res!931276 () Bool)

(assert (=> b!2161050 (=> res!931276 e!1382839)))

(assert (=> b!2161050 (= res!931276 (<= lt!804159 0))))

(declare-fun lt!804151 () Int)

(declare-fun furthestNullablePosition!170 ((InoxSet Context!3106) Int BalanceConc!16000 Int Int) Int)

(assert (=> b!2161050 (= lt!804159 (+ 1 (- (furthestNullablePosition!170 z!4055 lt!804162 totalInput!977 lt!804158 lt!804151) lt!804162)))))

(declare-fun lt!804168 () Unit!38117)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!18 ((InoxSet Context!3106) Int BalanceConc!16000 Int) Unit!38117)

(assert (=> b!2161050 (= lt!804168 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!18 z!4055 lt!804162 totalInput!977 lt!804151))))

(assert (=> b!2161050 (= lt!804151 e!1382827)))

(declare-fun c!341955 () Bool)

(declare-fun nullableZipper!264 ((InoxSet Context!3106)) Bool)

(assert (=> b!2161050 (= c!341955 (nullableZipper!264 z!4055))))

(assert (=> b!2161050 (isPrefix!2103 (take!197 lt!804152 lt!804162) lt!804152)))

(declare-fun lt!804145 () Unit!38117)

(declare-fun lemmaTakeIsPrefix!20 (List!25162 Int) Unit!38117)

(assert (=> b!2161050 (= lt!804145 (lemmaTakeIsPrefix!20 lt!804152 lt!804162))))

(assert (=> b!2161050 (isPrefix!2103 (_1!14770 lt!804167) lt!804148)))

(declare-fun lt!804163 () Unit!38117)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1386 (List!25162 List!25162) Unit!38117)

(assert (=> b!2161050 (= lt!804163 (lemmaConcatTwoListThenFirstIsPrefix!1386 (_1!14770 lt!804167) (_2!14770 lt!804167)))))

(assert (=> b!2161050 (isPrefix!2103 lt!804169 lt!804156)))

(declare-fun lt!804147 () Unit!38117)

(assert (=> b!2161050 (= lt!804147 (lemmaConcatTwoListThenFirstIsPrefix!1386 lt!804169 lt!804153))))

(declare-fun b!2161051 () Bool)

(declare-fun tp!674155 () Bool)

(declare-fun tp!674162 () Bool)

(assert (=> b!2161051 (= e!1382833 (and tp!674155 tp!674162))))

(declare-fun b!2161052 () Bool)

(assert (=> b!2161052 (= e!1382830 e!1382835)))

(declare-fun res!931267 () Bool)

(assert (=> b!2161052 (=> (not res!931267) (not e!1382835))))

(declare-fun unfocusZipper!90 (List!25164) Regex!5983)

(assert (=> b!2161052 (= res!931267 (= (unfocusZipper!90 lt!804150) r!12534))))

(declare-fun toList!1166 ((InoxSet Context!3106)) List!25164)

(assert (=> b!2161052 (= lt!804150 (toList!1166 z!4055))))

(declare-fun b!2161053 () Bool)

(declare-fun res!931271 () Bool)

(assert (=> b!2161053 (=> res!931271 e!1382825)))

(assert (=> b!2161053 (= res!931271 (not (isPrefix!2103 lt!804169 lt!804146)))))

(declare-fun b!2161054 () Bool)

(declare-fun tp!674159 () Bool)

(assert (=> b!2161054 (= e!1382841 (and (inv!33226 (c!341957 totalInput!977)) tp!674159))))

(declare-fun b!2161055 () Bool)

(declare-fun tp!674161 () Bool)

(assert (=> b!2161055 (= e!1382826 tp!674161)))

(assert (= (and start!209630 res!931277) b!2161052))

(assert (= (and b!2161052 res!931267) b!2161045))

(assert (= (and b!2161045 res!931274) b!2161046))

(assert (= (and b!2161046 res!931268) b!2161039))

(assert (= (and b!2161039 res!931269) b!2161050))

(assert (= (and b!2161050 c!341955) b!2161041))

(assert (= (and b!2161050 (not c!341955)) b!2161033))

(assert (= (and b!2161050 (not res!931276)) b!2161035))

(assert (= (and b!2161050 (not res!931273)) b!2161042))

(assert (= (and b!2161050 res!931272) b!2161038))

(assert (= (and b!2161050 (not res!931266)) b!2161037))

(assert (= (and b!2161037 res!931270) b!2161043))

(assert (= (and b!2161037 (not res!931275)) b!2161036))

(assert (= (and b!2161036 (not res!931278)) b!2161044))

(assert (= (and b!2161044 (not res!931279)) b!2161053))

(assert (= (and b!2161053 (not res!931271)) b!2161034))

(get-info :version)

(assert (= (and start!209630 ((_ is ElementMatch!5983) r!12534)) b!2161049))

(assert (= (and start!209630 ((_ is Concat!10285) r!12534)) b!2161047))

(assert (= (and start!209630 ((_ is Star!5983) r!12534)) b!2161048))

(assert (= (and start!209630 ((_ is Union!5983) r!12534)) b!2161051))

(assert (= start!209630 b!2161054))

(assert (= start!209630 b!2161040))

(assert (= (and start!209630 condSetEmpty!18058) setIsEmpty!18058))

(assert (= (and start!209630 (not condSetEmpty!18058)) setNonEmpty!18058))

(assert (= setNonEmpty!18058 b!2161055))

(declare-fun m!2601329 () Bool)

(assert (=> setNonEmpty!18058 m!2601329))

(declare-fun m!2601331 () Bool)

(assert (=> b!2161043 m!2601331))

(declare-fun m!2601333 () Bool)

(assert (=> b!2161042 m!2601333))

(declare-fun m!2601335 () Bool)

(assert (=> b!2161046 m!2601335))

(declare-fun m!2601337 () Bool)

(assert (=> b!2161046 m!2601337))

(declare-fun m!2601339 () Bool)

(assert (=> b!2161046 m!2601339))

(declare-fun m!2601341 () Bool)

(assert (=> b!2161046 m!2601341))

(declare-fun m!2601343 () Bool)

(assert (=> b!2161046 m!2601343))

(declare-fun m!2601345 () Bool)

(assert (=> b!2161046 m!2601345))

(declare-fun m!2601347 () Bool)

(assert (=> b!2161046 m!2601347))

(declare-fun m!2601349 () Bool)

(assert (=> b!2161035 m!2601349))

(assert (=> b!2161035 m!2601349))

(declare-fun m!2601351 () Bool)

(assert (=> b!2161035 m!2601351))

(assert (=> b!2161035 m!2601351))

(declare-fun m!2601353 () Bool)

(assert (=> b!2161035 m!2601353))

(declare-fun m!2601355 () Bool)

(assert (=> b!2161038 m!2601355))

(declare-fun m!2601357 () Bool)

(assert (=> b!2161052 m!2601357))

(declare-fun m!2601359 () Bool)

(assert (=> b!2161052 m!2601359))

(declare-fun m!2601361 () Bool)

(assert (=> b!2161037 m!2601361))

(declare-fun m!2601363 () Bool)

(assert (=> b!2161034 m!2601363))

(declare-fun m!2601365 () Bool)

(assert (=> b!2161050 m!2601365))

(declare-fun m!2601367 () Bool)

(assert (=> b!2161050 m!2601367))

(declare-fun m!2601369 () Bool)

(assert (=> b!2161050 m!2601369))

(declare-fun m!2601371 () Bool)

(assert (=> b!2161050 m!2601371))

(declare-fun m!2601373 () Bool)

(assert (=> b!2161050 m!2601373))

(declare-fun m!2601375 () Bool)

(assert (=> b!2161050 m!2601375))

(declare-fun m!2601377 () Bool)

(assert (=> b!2161050 m!2601377))

(declare-fun m!2601379 () Bool)

(assert (=> b!2161050 m!2601379))

(declare-fun m!2601381 () Bool)

(assert (=> b!2161050 m!2601381))

(declare-fun m!2601383 () Bool)

(assert (=> b!2161050 m!2601383))

(declare-fun m!2601385 () Bool)

(assert (=> b!2161050 m!2601385))

(assert (=> b!2161050 m!2601369))

(declare-fun m!2601387 () Bool)

(assert (=> b!2161050 m!2601387))

(declare-fun m!2601389 () Bool)

(assert (=> b!2161050 m!2601389))

(declare-fun m!2601391 () Bool)

(assert (=> b!2161050 m!2601391))

(declare-fun m!2601393 () Bool)

(assert (=> b!2161050 m!2601393))

(assert (=> b!2161050 m!2601379))

(assert (=> b!2161050 m!2601373))

(declare-fun m!2601395 () Bool)

(assert (=> b!2161050 m!2601395))

(declare-fun m!2601397 () Bool)

(assert (=> b!2161039 m!2601397))

(declare-fun m!2601399 () Bool)

(assert (=> b!2161036 m!2601399))

(declare-fun m!2601401 () Bool)

(assert (=> b!2161036 m!2601401))

(declare-fun m!2601403 () Bool)

(assert (=> b!2161036 m!2601403))

(declare-fun m!2601405 () Bool)

(assert (=> b!2161036 m!2601405))

(declare-fun m!2601407 () Bool)

(assert (=> b!2161036 m!2601407))

(declare-fun m!2601409 () Bool)

(assert (=> b!2161036 m!2601409))

(declare-fun m!2601411 () Bool)

(assert (=> b!2161044 m!2601411))

(declare-fun m!2601413 () Bool)

(assert (=> b!2161040 m!2601413))

(declare-fun m!2601415 () Bool)

(assert (=> b!2161045 m!2601415))

(declare-fun m!2601417 () Bool)

(assert (=> b!2161045 m!2601417))

(declare-fun m!2601419 () Bool)

(assert (=> b!2161045 m!2601419))

(declare-fun m!2601421 () Bool)

(assert (=> start!209630 m!2601421))

(declare-fun m!2601423 () Bool)

(assert (=> start!209630 m!2601423))

(declare-fun m!2601425 () Bool)

(assert (=> start!209630 m!2601425))

(declare-fun m!2601427 () Bool)

(assert (=> b!2161053 m!2601427))

(declare-fun m!2601429 () Bool)

(assert (=> b!2161054 m!2601429))

(check-sat (not b!2161051) (not b!2161055) (not start!209630) (not b!2161036) (not b!2161043) (not b!2161047) (not b!2161054) (not b!2161038) (not b!2161040) (not b!2161052) (not setNonEmpty!18058) (not b!2161044) (not b!2161045) (not b!2161035) (not b!2161039) tp_is_empty!9573 (not b!2161037) (not b!2161034) (not b!2161053) (not b!2161048) (not b!2161046) (not b!2161050) (not b!2161042))
(check-sat)
