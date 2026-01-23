; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530066 () Bool)

(assert start!530066)

(declare-fun b!5017075 () Bool)

(declare-fun e!3134227 () Bool)

(declare-fun e!3134216 () Bool)

(assert (=> b!5017075 (= e!3134227 e!3134216)))

(declare-fun res!2139301 () Bool)

(assert (=> b!5017075 (=> (not res!2139301) (not e!3134216))))

(declare-datatypes ((C!27876 0))(
  ( (C!27877 (val!23304 Int)) )
))
(declare-datatypes ((List!58043 0))(
  ( (Nil!57919) (Cons!57919 (h!64367 C!27876) (t!370419 List!58043)) )
))
(declare-fun lt!2076058 () List!58043)

(declare-fun lt!2076047 () List!58043)

(assert (=> b!5017075 (= res!2139301 (= lt!2076058 lt!2076047))))

(declare-datatypes ((tuple2!63100 0))(
  ( (tuple2!63101 (_1!34853 List!58043) (_2!34853 List!58043)) )
))
(declare-fun lt!2076039 () tuple2!63100)

(declare-fun ++!12661 (List!58043 List!58043) List!58043)

(assert (=> b!5017075 (= lt!2076058 (++!12661 (_1!34853 lt!2076039) (_2!34853 lt!2076039)))))

(declare-fun setIsEmpty!28504 () Bool)

(declare-fun setRes!28504 () Bool)

(assert (=> setIsEmpty!28504 setRes!28504))

(declare-fun b!5017076 () Bool)

(declare-fun e!3134215 () Bool)

(declare-fun e!3134218 () Bool)

(assert (=> b!5017076 (= e!3134215 e!3134218)))

(declare-fun res!2139293 () Bool)

(assert (=> b!5017076 (=> res!2139293 e!3134218)))

(declare-fun lt!2076057 () Int)

(declare-fun lt!2076041 () Int)

(assert (=> b!5017076 (= res!2139293 (or (> lt!2076057 lt!2076041) (> lt!2076041 lt!2076057)))))

(declare-datatypes ((IArray!30725 0))(
  ( (IArray!30726 (innerList!15420 List!58043)) )
))
(declare-datatypes ((Conc!15332 0))(
  ( (Node!15332 (left!42344 Conc!15332) (right!42674 Conc!15332) (csize!30894 Int) (cheight!15543 Int)) (Leaf!25447 (xs!18658 IArray!30725) (csize!30895 Int)) (Empty!15332) )
))
(declare-datatypes ((BalanceConc!30094 0))(
  ( (BalanceConc!30095 (c!857239 Conc!15332)) )
))
(declare-datatypes ((tuple2!63102 0))(
  ( (tuple2!63103 (_1!34854 BalanceConc!30094) (_2!34854 BalanceConc!30094)) )
))
(declare-fun lt!2076050 () tuple2!63102)

(declare-fun size!38510 (BalanceConc!30094) Int)

(assert (=> b!5017076 (= lt!2076041 (size!38510 (_1!34854 lt!2076050)))))

(declare-fun size!38511 (List!58043) Int)

(assert (=> b!5017076 (= lt!2076057 (size!38511 (_1!34853 lt!2076039)))))

(declare-datatypes ((Regex!13813 0))(
  ( (ElementMatch!13813 (c!857240 C!27876)) (Concat!22606 (regOne!28138 Regex!13813) (regTwo!28138 Regex!13813)) (EmptyExpr!13813) (Star!13813 (reg!14142 Regex!13813)) (EmptyLang!13813) (Union!13813 (regOne!28139 Regex!13813) (regTwo!28139 Regex!13813)) )
))
(declare-fun r!12727 () Regex!13813)

(declare-fun lt!2076042 () List!58043)

(declare-fun lt!2076037 () Bool)

(declare-fun matchR!6777 (Regex!13813 List!58043) Bool)

(assert (=> b!5017076 (= (matchR!6777 r!12727 lt!2076042) lt!2076037)))

(declare-datatypes ((List!58044 0))(
  ( (Nil!57920) (Cons!57920 (h!64368 Regex!13813) (t!370420 List!58044)) )
))
(declare-datatypes ((Context!6476 0))(
  ( (Context!6477 (exprs!3738 List!58044)) )
))
(declare-datatypes ((List!58045 0))(
  ( (Nil!57921) (Cons!57921 (h!64369 Context!6476) (t!370421 List!58045)) )
))
(declare-fun lt!2076055 () List!58045)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4183 () (InoxSet Context!6476))

(declare-datatypes ((Unit!149157 0))(
  ( (Unit!149158) )
))
(declare-fun lt!2076049 () Unit!149157)

(declare-fun theoremZipperRegexEquiv!185 ((InoxSet Context!6476) List!58045 Regex!13813 List!58043) Unit!149157)

(assert (=> b!5017076 (= lt!2076049 (theoremZipperRegexEquiv!185 z!4183 lt!2076055 r!12727 lt!2076042))))

(declare-fun lt!2076054 () Bool)

(declare-fun matchZipper!581 ((InoxSet Context!6476) List!58043) Bool)

(assert (=> b!5017076 (= lt!2076054 (matchZipper!581 z!4183 (_1!34853 lt!2076039)))))

(declare-fun lt!2076038 () Unit!149157)

(assert (=> b!5017076 (= lt!2076038 (theoremZipperRegexEquiv!185 z!4183 lt!2076055 r!12727 (_1!34853 lt!2076039)))))

(declare-fun b!5017077 () Bool)

(declare-fun e!3134223 () Bool)

(declare-fun tp!1406932 () Bool)

(declare-fun tp!1406926 () Bool)

(assert (=> b!5017077 (= e!3134223 (and tp!1406932 tp!1406926))))

(declare-fun b!5017078 () Bool)

(declare-fun e!3134225 () Bool)

(declare-fun e!3134213 () Bool)

(assert (=> b!5017078 (= e!3134225 e!3134213)))

(declare-fun res!2139299 () Bool)

(assert (=> b!5017078 (=> (not res!2139299) (not e!3134213))))

(declare-fun lt!2076046 () List!58043)

(declare-fun isSuffix!1379 (List!58043 List!58043) Bool)

(assert (=> b!5017078 (= res!2139299 (isSuffix!1379 lt!2076047 lt!2076046))))

(declare-fun totalInput!1012 () BalanceConc!30094)

(declare-fun list!18658 (BalanceConc!30094) List!58043)

(assert (=> b!5017078 (= lt!2076046 (list!18658 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!30094)

(assert (=> b!5017078 (= lt!2076047 (list!18658 input!5597))))

(declare-fun res!2139302 () Bool)

(declare-fun e!3134219 () Bool)

(assert (=> start!530066 (=> (not res!2139302) (not e!3134219))))

(declare-fun validRegex!6110 (Regex!13813) Bool)

(assert (=> start!530066 (= res!2139302 (validRegex!6110 r!12727))))

(assert (=> start!530066 e!3134219))

(assert (=> start!530066 e!3134223))

(declare-fun e!3134220 () Bool)

(declare-fun inv!76140 (BalanceConc!30094) Bool)

(assert (=> start!530066 (and (inv!76140 input!5597) e!3134220)))

(declare-fun condSetEmpty!28504 () Bool)

(assert (=> start!530066 (= condSetEmpty!28504 (= z!4183 ((as const (Array Context!6476 Bool)) false)))))

(assert (=> start!530066 setRes!28504))

(declare-fun e!3134222 () Bool)

(assert (=> start!530066 (and (inv!76140 totalInput!1012) e!3134222)))

(declare-fun b!5017079 () Bool)

(declare-fun res!2139294 () Bool)

(assert (=> b!5017079 (=> res!2139294 e!3134218)))

(declare-fun isPrefix!5366 (List!58043 List!58043) Bool)

(assert (=> b!5017079 (= res!2139294 (not (isPrefix!5366 lt!2076042 lt!2076047)))))

(declare-fun b!5017080 () Bool)

(declare-fun e!3134221 () Bool)

(assert (=> b!5017080 (= e!3134221 e!3134215)))

(declare-fun res!2139296 () Bool)

(assert (=> b!5017080 (=> res!2139296 e!3134215)))

(declare-fun e!3134214 () Bool)

(assert (=> b!5017080 (= res!2139296 e!3134214)))

(declare-fun res!2139298 () Bool)

(assert (=> b!5017080 (=> (not res!2139298) (not e!3134214))))

(assert (=> b!5017080 (= res!2139298 (not lt!2076054))))

(assert (=> b!5017080 (= lt!2076054 (matchR!6777 r!12727 (_1!34853 lt!2076039)))))

(declare-fun b!5017081 () Bool)

(declare-fun tp!1406928 () Bool)

(assert (=> b!5017081 (= e!3134223 tp!1406928)))

(declare-fun b!5017082 () Bool)

(assert (=> b!5017082 (= e!3134213 e!3134227)))

(declare-fun res!2139303 () Bool)

(assert (=> b!5017082 (=> (not res!2139303) (not e!3134227))))

(declare-fun lt!2076048 () List!58043)

(assert (=> b!5017082 (= res!2139303 (= lt!2076048 lt!2076047))))

(declare-fun lt!2076044 () List!58043)

(assert (=> b!5017082 (= lt!2076048 (++!12661 lt!2076042 lt!2076044))))

(assert (=> b!5017082 (= lt!2076044 (list!18658 (_2!34854 lt!2076050)))))

(assert (=> b!5017082 (= lt!2076042 (list!18658 (_1!34854 lt!2076050)))))

(declare-fun findLongestMatch!1826 (Regex!13813 List!58043) tuple2!63100)

(assert (=> b!5017082 (= lt!2076039 (findLongestMatch!1826 r!12727 lt!2076047))))

(declare-fun lt!2076060 () Int)

(declare-fun lt!2076045 () Int)

(assert (=> b!5017082 (= lt!2076060 (- lt!2076045 (size!38510 input!5597)))))

(assert (=> b!5017082 (= lt!2076045 (size!38510 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!115 ((InoxSet Context!6476) BalanceConc!30094 BalanceConc!30094) tuple2!63102)

(assert (=> b!5017082 (= lt!2076050 (findLongestMatchZipperFastV2!115 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5017083 () Bool)

(assert (=> b!5017083 (= e!3134216 (not e!3134221))))

(declare-fun res!2139300 () Bool)

(assert (=> b!5017083 (=> res!2139300 e!3134221)))

(declare-fun e!3134226 () Bool)

(assert (=> b!5017083 (= res!2139300 e!3134226)))

(declare-fun res!2139295 () Bool)

(assert (=> b!5017083 (=> (not res!2139295) (not e!3134226))))

(assert (=> b!5017083 (= res!2139295 (not lt!2076037))))

(assert (=> b!5017083 (= lt!2076037 (matchZipper!581 z!4183 lt!2076042))))

(declare-fun e!3134224 () Bool)

(assert (=> b!5017083 e!3134224))

(declare-fun res!2139291 () Bool)

(assert (=> b!5017083 (=> res!2139291 e!3134224)))

(declare-fun lt!2076059 () tuple2!63100)

(declare-fun isEmpty!31389 (List!58043) Bool)

(assert (=> b!5017083 (= res!2139291 (isEmpty!31389 (_1!34853 lt!2076059)))))

(declare-fun findLongestMatchInner!2002 (Regex!13813 List!58043 Int List!58043 List!58043 Int) tuple2!63100)

(assert (=> b!5017083 (= lt!2076059 (findLongestMatchInner!2002 r!12727 Nil!57919 (size!38511 Nil!57919) lt!2076047 lt!2076047 (size!38511 lt!2076047)))))

(declare-fun lt!2076052 () Unit!149157)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1955 (Regex!13813 List!58043) Unit!149157)

(assert (=> b!5017083 (= lt!2076052 (longestMatchIsAcceptedByMatchOrIsEmpty!1955 r!12727 lt!2076047))))

(declare-fun e!3134212 () Bool)

(assert (=> b!5017083 e!3134212))

(declare-fun res!2139297 () Bool)

(assert (=> b!5017083 (=> res!2139297 e!3134212)))

(declare-fun lt!2076051 () Int)

(assert (=> b!5017083 (= res!2139297 (= lt!2076051 0))))

(declare-fun findLongestMatchInnerZipperFastV2!153 ((InoxSet Context!6476) Int BalanceConc!30094 Int) Int)

(assert (=> b!5017083 (= lt!2076051 (findLongestMatchInnerZipperFastV2!153 z!4183 lt!2076060 totalInput!1012 lt!2076045))))

(declare-fun lt!2076056 () Unit!149157)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!72 ((InoxSet Context!6476) Int BalanceConc!30094) Unit!149157)

(assert (=> b!5017083 (= lt!2076056 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!72 z!4183 lt!2076060 totalInput!1012))))

(declare-fun take!672 (List!58043 Int) List!58043)

(assert (=> b!5017083 (isPrefix!5366 (take!672 lt!2076046 lt!2076060) lt!2076046)))

(declare-fun lt!2076053 () Unit!149157)

(declare-fun lemmaTakeIsPrefix!166 (List!58043 Int) Unit!149157)

(assert (=> b!5017083 (= lt!2076053 (lemmaTakeIsPrefix!166 lt!2076046 lt!2076060))))

(assert (=> b!5017083 (isPrefix!5366 (_1!34853 lt!2076039) lt!2076058)))

(declare-fun lt!2076040 () Unit!149157)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3464 (List!58043 List!58043) Unit!149157)

(assert (=> b!5017083 (= lt!2076040 (lemmaConcatTwoListThenFirstIsPrefix!3464 (_1!34853 lt!2076039) (_2!34853 lt!2076039)))))

(assert (=> b!5017083 (isPrefix!5366 lt!2076042 lt!2076048)))

(declare-fun lt!2076043 () Unit!149157)

(assert (=> b!5017083 (= lt!2076043 (lemmaConcatTwoListThenFirstIsPrefix!3464 lt!2076042 lt!2076044))))

(declare-fun b!5017084 () Bool)

(assert (=> b!5017084 (= e!3134218 (isPrefix!5366 (_1!34853 lt!2076039) lt!2076047))))

(declare-fun b!5017085 () Bool)

(declare-fun tp!1406930 () Bool)

(declare-fun tp!1406929 () Bool)

(assert (=> b!5017085 (= e!3134223 (and tp!1406930 tp!1406929))))

(declare-fun tp!1406927 () Bool)

(declare-fun setNonEmpty!28504 () Bool)

(declare-fun setElem!28504 () Context!6476)

(declare-fun e!3134217 () Bool)

(declare-fun inv!76141 (Context!6476) Bool)

(assert (=> setNonEmpty!28504 (= setRes!28504 (and tp!1406927 (inv!76141 setElem!28504) e!3134217))))

(declare-fun setRest!28504 () (InoxSet Context!6476))

(assert (=> setNonEmpty!28504 (= z!4183 ((_ map or) (store ((as const (Array Context!6476 Bool)) false) setElem!28504 true) setRest!28504))))

(declare-fun b!5017086 () Bool)

(declare-fun isEmpty!31390 (BalanceConc!30094) Bool)

(assert (=> b!5017086 (= e!3134226 (not (isEmpty!31390 (_1!34854 lt!2076050))))))

(declare-fun b!5017087 () Bool)

(declare-fun drop!2476 (List!58043 Int) List!58043)

(assert (=> b!5017087 (= e!3134212 (matchZipper!581 z!4183 (take!672 (drop!2476 lt!2076046 lt!2076060) lt!2076051)))))

(declare-fun b!5017088 () Bool)

(declare-fun tp!1406924 () Bool)

(assert (=> b!5017088 (= e!3134217 tp!1406924)))

(declare-fun b!5017089 () Bool)

(assert (=> b!5017089 (= e!3134219 e!3134225)))

(declare-fun res!2139292 () Bool)

(assert (=> b!5017089 (=> (not res!2139292) (not e!3134225))))

(declare-fun unfocusZipper!340 (List!58045) Regex!13813)

(assert (=> b!5017089 (= res!2139292 (= (unfocusZipper!340 lt!2076055) r!12727))))

(declare-fun toList!8098 ((InoxSet Context!6476)) List!58045)

(assert (=> b!5017089 (= lt!2076055 (toList!8098 z!4183))))

(declare-fun b!5017090 () Bool)

(declare-fun tp_is_empty!36623 () Bool)

(assert (=> b!5017090 (= e!3134223 tp_is_empty!36623)))

(declare-fun b!5017091 () Bool)

(assert (=> b!5017091 (= e!3134224 (matchR!6777 r!12727 (_1!34853 lt!2076059)))))

(declare-fun b!5017092 () Bool)

(declare-fun tp!1406925 () Bool)

(declare-fun inv!76142 (Conc!15332) Bool)

(assert (=> b!5017092 (= e!3134222 (and (inv!76142 (c!857239 totalInput!1012)) tp!1406925))))

(declare-fun b!5017093 () Bool)

(declare-fun tp!1406931 () Bool)

(assert (=> b!5017093 (= e!3134220 (and (inv!76142 (c!857239 input!5597)) tp!1406931))))

(declare-fun b!5017094 () Bool)

(assert (=> b!5017094 (= e!3134214 (not (isEmpty!31389 (_1!34853 lt!2076039))))))

(assert (= (and start!530066 res!2139302) b!5017089))

(assert (= (and b!5017089 res!2139292) b!5017078))

(assert (= (and b!5017078 res!2139299) b!5017082))

(assert (= (and b!5017082 res!2139303) b!5017075))

(assert (= (and b!5017075 res!2139301) b!5017083))

(assert (= (and b!5017083 (not res!2139297)) b!5017087))

(assert (= (and b!5017083 (not res!2139291)) b!5017091))

(assert (= (and b!5017083 res!2139295) b!5017086))

(assert (= (and b!5017083 (not res!2139300)) b!5017080))

(assert (= (and b!5017080 res!2139298) b!5017094))

(assert (= (and b!5017080 (not res!2139296)) b!5017076))

(assert (= (and b!5017076 (not res!2139293)) b!5017079))

(assert (= (and b!5017079 (not res!2139294)) b!5017084))

(get-info :version)

(assert (= (and start!530066 ((_ is ElementMatch!13813) r!12727)) b!5017090))

(assert (= (and start!530066 ((_ is Concat!22606) r!12727)) b!5017085))

(assert (= (and start!530066 ((_ is Star!13813) r!12727)) b!5017081))

(assert (= (and start!530066 ((_ is Union!13813) r!12727)) b!5017077))

(assert (= start!530066 b!5017093))

(assert (= (and start!530066 condSetEmpty!28504) setIsEmpty!28504))

(assert (= (and start!530066 (not condSetEmpty!28504)) setNonEmpty!28504))

(assert (= setNonEmpty!28504 b!5017088))

(assert (= start!530066 b!5017092))

(declare-fun m!6052112 () Bool)

(assert (=> b!5017083 m!6052112))

(declare-fun m!6052114 () Bool)

(assert (=> b!5017083 m!6052114))

(declare-fun m!6052116 () Bool)

(assert (=> b!5017083 m!6052116))

(assert (=> b!5017083 m!6052114))

(declare-fun m!6052118 () Bool)

(assert (=> b!5017083 m!6052118))

(declare-fun m!6052120 () Bool)

(assert (=> b!5017083 m!6052120))

(declare-fun m!6052122 () Bool)

(assert (=> b!5017083 m!6052122))

(declare-fun m!6052124 () Bool)

(assert (=> b!5017083 m!6052124))

(declare-fun m!6052126 () Bool)

(assert (=> b!5017083 m!6052126))

(declare-fun m!6052128 () Bool)

(assert (=> b!5017083 m!6052128))

(declare-fun m!6052130 () Bool)

(assert (=> b!5017083 m!6052130))

(assert (=> b!5017083 m!6052118))

(declare-fun m!6052132 () Bool)

(assert (=> b!5017083 m!6052132))

(declare-fun m!6052134 () Bool)

(assert (=> b!5017083 m!6052134))

(declare-fun m!6052136 () Bool)

(assert (=> b!5017083 m!6052136))

(declare-fun m!6052138 () Bool)

(assert (=> b!5017083 m!6052138))

(assert (=> b!5017083 m!6052134))

(declare-fun m!6052140 () Bool)

(assert (=> b!5017083 m!6052140))

(declare-fun m!6052142 () Bool)

(assert (=> b!5017076 m!6052142))

(declare-fun m!6052144 () Bool)

(assert (=> b!5017076 m!6052144))

(declare-fun m!6052146 () Bool)

(assert (=> b!5017076 m!6052146))

(declare-fun m!6052148 () Bool)

(assert (=> b!5017076 m!6052148))

(declare-fun m!6052150 () Bool)

(assert (=> b!5017076 m!6052150))

(declare-fun m!6052152 () Bool)

(assert (=> b!5017076 m!6052152))

(declare-fun m!6052154 () Bool)

(assert (=> b!5017075 m!6052154))

(declare-fun m!6052156 () Bool)

(assert (=> b!5017093 m!6052156))

(declare-fun m!6052158 () Bool)

(assert (=> b!5017094 m!6052158))

(declare-fun m!6052160 () Bool)

(assert (=> b!5017080 m!6052160))

(declare-fun m!6052162 () Bool)

(assert (=> b!5017089 m!6052162))

(declare-fun m!6052164 () Bool)

(assert (=> b!5017089 m!6052164))

(declare-fun m!6052166 () Bool)

(assert (=> b!5017092 m!6052166))

(declare-fun m!6052168 () Bool)

(assert (=> b!5017079 m!6052168))

(declare-fun m!6052170 () Bool)

(assert (=> b!5017086 m!6052170))

(declare-fun m!6052172 () Bool)

(assert (=> setNonEmpty!28504 m!6052172))

(declare-fun m!6052174 () Bool)

(assert (=> b!5017082 m!6052174))

(declare-fun m!6052176 () Bool)

(assert (=> b!5017082 m!6052176))

(declare-fun m!6052178 () Bool)

(assert (=> b!5017082 m!6052178))

(declare-fun m!6052180 () Bool)

(assert (=> b!5017082 m!6052180))

(declare-fun m!6052182 () Bool)

(assert (=> b!5017082 m!6052182))

(declare-fun m!6052184 () Bool)

(assert (=> b!5017082 m!6052184))

(declare-fun m!6052186 () Bool)

(assert (=> b!5017082 m!6052186))

(declare-fun m!6052188 () Bool)

(assert (=> start!530066 m!6052188))

(declare-fun m!6052190 () Bool)

(assert (=> start!530066 m!6052190))

(declare-fun m!6052192 () Bool)

(assert (=> start!530066 m!6052192))

(declare-fun m!6052194 () Bool)

(assert (=> b!5017091 m!6052194))

(declare-fun m!6052196 () Bool)

(assert (=> b!5017078 m!6052196))

(declare-fun m!6052198 () Bool)

(assert (=> b!5017078 m!6052198))

(declare-fun m!6052200 () Bool)

(assert (=> b!5017078 m!6052200))

(declare-fun m!6052202 () Bool)

(assert (=> b!5017084 m!6052202))

(declare-fun m!6052204 () Bool)

(assert (=> b!5017087 m!6052204))

(assert (=> b!5017087 m!6052204))

(declare-fun m!6052206 () Bool)

(assert (=> b!5017087 m!6052206))

(assert (=> b!5017087 m!6052206))

(declare-fun m!6052208 () Bool)

(assert (=> b!5017087 m!6052208))

(check-sat (not start!530066) (not b!5017087) (not b!5017083) (not b!5017076) (not b!5017078) (not b!5017080) (not b!5017092) (not b!5017077) (not b!5017075) (not b!5017085) (not setNonEmpty!28504) (not b!5017084) (not b!5017079) (not b!5017088) tp_is_empty!36623 (not b!5017094) (not b!5017091) (not b!5017086) (not b!5017093) (not b!5017081) (not b!5017089) (not b!5017082))
(check-sat)
