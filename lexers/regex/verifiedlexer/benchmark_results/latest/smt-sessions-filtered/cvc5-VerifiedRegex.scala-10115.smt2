; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530068 () Bool)

(assert start!530068)

(declare-fun b!5017137 () Bool)

(declare-fun res!2139339 () Bool)

(declare-fun e!3134267 () Bool)

(assert (=> b!5017137 (=> res!2139339 e!3134267)))

(declare-datatypes ((C!27878 0))(
  ( (C!27879 (val!23305 Int)) )
))
(declare-datatypes ((List!58046 0))(
  ( (Nil!57922) (Cons!57922 (h!64370 C!27878) (t!370422 List!58046)) )
))
(declare-fun lt!2076128 () List!58046)

(declare-fun lt!2076130 () List!58046)

(declare-fun isPrefix!5367 (List!58046 List!58046) Bool)

(assert (=> b!5017137 (= res!2139339 (not (isPrefix!5367 lt!2076128 lt!2076130)))))

(declare-fun tp!1406955 () Bool)

(declare-fun setNonEmpty!28507 () Bool)

(declare-fun setRes!28507 () Bool)

(declare-datatypes ((Regex!13814 0))(
  ( (ElementMatch!13814 (c!857241 C!27878)) (Concat!22607 (regOne!28140 Regex!13814) (regTwo!28140 Regex!13814)) (EmptyExpr!13814) (Star!13814 (reg!14143 Regex!13814)) (EmptyLang!13814) (Union!13814 (regOne!28141 Regex!13814) (regTwo!28141 Regex!13814)) )
))
(declare-datatypes ((List!58047 0))(
  ( (Nil!57923) (Cons!57923 (h!64371 Regex!13814) (t!370423 List!58047)) )
))
(declare-datatypes ((Context!6478 0))(
  ( (Context!6479 (exprs!3739 List!58047)) )
))
(declare-fun setElem!28507 () Context!6478)

(declare-fun e!3134262 () Bool)

(declare-fun inv!76146 (Context!6478) Bool)

(assert (=> setNonEmpty!28507 (= setRes!28507 (and tp!1406955 (inv!76146 setElem!28507) e!3134262))))

(declare-fun z!4183 () (Set Context!6478))

(declare-fun setRest!28507 () (Set Context!6478))

(assert (=> setNonEmpty!28507 (= z!4183 (set.union (set.insert setElem!28507 (as set.empty (Set Context!6478))) setRest!28507))))

(declare-fun b!5017138 () Bool)

(declare-fun tp!1406951 () Bool)

(assert (=> b!5017138 (= e!3134262 tp!1406951)))

(declare-fun b!5017139 () Bool)

(declare-fun e!3134269 () Bool)

(declare-fun e!3134271 () Bool)

(assert (=> b!5017139 (= e!3134269 e!3134271)))

(declare-fun res!2139336 () Bool)

(assert (=> b!5017139 (=> (not res!2139336) (not e!3134271))))

(declare-fun lt!2076115 () List!58046)

(declare-fun isSuffix!1380 (List!58046 List!58046) Bool)

(assert (=> b!5017139 (= res!2139336 (isSuffix!1380 lt!2076130 lt!2076115))))

(declare-datatypes ((IArray!30727 0))(
  ( (IArray!30728 (innerList!15421 List!58046)) )
))
(declare-datatypes ((Conc!15333 0))(
  ( (Node!15333 (left!42346 Conc!15333) (right!42676 Conc!15333) (csize!30896 Int) (cheight!15544 Int)) (Leaf!25449 (xs!18659 IArray!30727) (csize!30897 Int)) (Empty!15333) )
))
(declare-datatypes ((BalanceConc!30096 0))(
  ( (BalanceConc!30097 (c!857242 Conc!15333)) )
))
(declare-fun totalInput!1012 () BalanceConc!30096)

(declare-fun list!18659 (BalanceConc!30096) List!58046)

(assert (=> b!5017139 (= lt!2076115 (list!18659 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!30096)

(assert (=> b!5017139 (= lt!2076130 (list!18659 input!5597))))

(declare-fun b!5017140 () Bool)

(declare-fun e!3134274 () Bool)

(declare-fun tp!1406953 () Bool)

(declare-fun tp!1406952 () Bool)

(assert (=> b!5017140 (= e!3134274 (and tp!1406953 tp!1406952))))

(declare-fun b!5017141 () Bool)

(declare-fun e!3134270 () Bool)

(declare-fun e!3134261 () Bool)

(assert (=> b!5017141 (= e!3134270 (not e!3134261))))

(declare-fun res!2139334 () Bool)

(assert (=> b!5017141 (=> res!2139334 e!3134261)))

(declare-fun e!3134266 () Bool)

(assert (=> b!5017141 (= res!2139334 e!3134266)))

(declare-fun res!2139344 () Bool)

(assert (=> b!5017141 (=> (not res!2139344) (not e!3134266))))

(declare-fun lt!2076121 () Bool)

(assert (=> b!5017141 (= res!2139344 (not lt!2076121))))

(declare-fun matchZipper!582 ((Set Context!6478) List!58046) Bool)

(assert (=> b!5017141 (= lt!2076121 (matchZipper!582 z!4183 lt!2076128))))

(declare-fun e!3134265 () Bool)

(assert (=> b!5017141 e!3134265))

(declare-fun res!2139332 () Bool)

(assert (=> b!5017141 (=> res!2139332 e!3134265)))

(declare-datatypes ((tuple2!63104 0))(
  ( (tuple2!63105 (_1!34855 List!58046) (_2!34855 List!58046)) )
))
(declare-fun lt!2076127 () tuple2!63104)

(declare-fun isEmpty!31391 (List!58046) Bool)

(assert (=> b!5017141 (= res!2139332 (isEmpty!31391 (_1!34855 lt!2076127)))))

(declare-fun r!12727 () Regex!13814)

(declare-fun findLongestMatchInner!2003 (Regex!13814 List!58046 Int List!58046 List!58046 Int) tuple2!63104)

(declare-fun size!38512 (List!58046) Int)

(assert (=> b!5017141 (= lt!2076127 (findLongestMatchInner!2003 r!12727 Nil!57922 (size!38512 Nil!57922) lt!2076130 lt!2076130 (size!38512 lt!2076130)))))

(declare-datatypes ((Unit!149159 0))(
  ( (Unit!149160) )
))
(declare-fun lt!2076111 () Unit!149159)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1956 (Regex!13814 List!58046) Unit!149159)

(assert (=> b!5017141 (= lt!2076111 (longestMatchIsAcceptedByMatchOrIsEmpty!1956 r!12727 lt!2076130))))

(declare-fun e!3134275 () Bool)

(assert (=> b!5017141 e!3134275))

(declare-fun res!2139343 () Bool)

(assert (=> b!5017141 (=> res!2139343 e!3134275)))

(declare-fun lt!2076132 () Int)

(assert (=> b!5017141 (= res!2139343 (= lt!2076132 0))))

(declare-fun lt!2076114 () Int)

(declare-fun lt!2076120 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!154 ((Set Context!6478) Int BalanceConc!30096 Int) Int)

(assert (=> b!5017141 (= lt!2076132 (findLongestMatchInnerZipperFastV2!154 z!4183 lt!2076114 totalInput!1012 lt!2076120))))

(declare-fun lt!2076109 () Unit!149159)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!73 ((Set Context!6478) Int BalanceConc!30096) Unit!149159)

(assert (=> b!5017141 (= lt!2076109 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!73 z!4183 lt!2076114 totalInput!1012))))

(declare-fun take!673 (List!58046 Int) List!58046)

(assert (=> b!5017141 (isPrefix!5367 (take!673 lt!2076115 lt!2076114) lt!2076115)))

(declare-fun lt!2076131 () Unit!149159)

(declare-fun lemmaTakeIsPrefix!167 (List!58046 Int) Unit!149159)

(assert (=> b!5017141 (= lt!2076131 (lemmaTakeIsPrefix!167 lt!2076115 lt!2076114))))

(declare-fun lt!2076125 () tuple2!63104)

(declare-fun lt!2076117 () List!58046)

(assert (=> b!5017141 (isPrefix!5367 (_1!34855 lt!2076125) lt!2076117)))

(declare-fun lt!2076123 () Unit!149159)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3465 (List!58046 List!58046) Unit!149159)

(assert (=> b!5017141 (= lt!2076123 (lemmaConcatTwoListThenFirstIsPrefix!3465 (_1!34855 lt!2076125) (_2!34855 lt!2076125)))))

(declare-fun lt!2076118 () List!58046)

(assert (=> b!5017141 (isPrefix!5367 lt!2076128 lt!2076118)))

(declare-fun lt!2076122 () Unit!149159)

(declare-fun lt!2076126 () List!58046)

(assert (=> b!5017141 (= lt!2076122 (lemmaConcatTwoListThenFirstIsPrefix!3465 lt!2076128 lt!2076126))))

(declare-fun b!5017142 () Bool)

(declare-fun e!3134273 () Bool)

(assert (=> b!5017142 (= e!3134271 e!3134273)))

(declare-fun res!2139337 () Bool)

(assert (=> b!5017142 (=> (not res!2139337) (not e!3134273))))

(assert (=> b!5017142 (= res!2139337 (= lt!2076118 lt!2076130))))

(declare-fun ++!12662 (List!58046 List!58046) List!58046)

(assert (=> b!5017142 (= lt!2076118 (++!12662 lt!2076128 lt!2076126))))

(declare-datatypes ((tuple2!63106 0))(
  ( (tuple2!63107 (_1!34856 BalanceConc!30096) (_2!34856 BalanceConc!30096)) )
))
(declare-fun lt!2076110 () tuple2!63106)

(assert (=> b!5017142 (= lt!2076126 (list!18659 (_2!34856 lt!2076110)))))

(assert (=> b!5017142 (= lt!2076128 (list!18659 (_1!34856 lt!2076110)))))

(declare-fun findLongestMatch!1827 (Regex!13814 List!58046) tuple2!63104)

(assert (=> b!5017142 (= lt!2076125 (findLongestMatch!1827 r!12727 lt!2076130))))

(declare-fun size!38513 (BalanceConc!30096) Int)

(assert (=> b!5017142 (= lt!2076114 (- lt!2076120 (size!38513 input!5597)))))

(assert (=> b!5017142 (= lt!2076120 (size!38513 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!116 ((Set Context!6478) BalanceConc!30096 BalanceConc!30096) tuple2!63106)

(assert (=> b!5017142 (= lt!2076110 (findLongestMatchZipperFastV2!116 z!4183 input!5597 totalInput!1012))))

(declare-fun setIsEmpty!28507 () Bool)

(assert (=> setIsEmpty!28507 setRes!28507))

(declare-fun b!5017143 () Bool)

(declare-fun tp!1406959 () Bool)

(assert (=> b!5017143 (= e!3134274 tp!1406959)))

(declare-fun b!5017144 () Bool)

(declare-fun e!3134264 () Bool)

(assert (=> b!5017144 (= e!3134264 e!3134269)))

(declare-fun res!2139340 () Bool)

(assert (=> b!5017144 (=> (not res!2139340) (not e!3134269))))

(declare-datatypes ((List!58048 0))(
  ( (Nil!57924) (Cons!57924 (h!64372 Context!6478) (t!370424 List!58048)) )
))
(declare-fun lt!2076116 () List!58048)

(declare-fun unfocusZipper!341 (List!58048) Regex!13814)

(assert (=> b!5017144 (= res!2139340 (= (unfocusZipper!341 lt!2076116) r!12727))))

(declare-fun toList!8099 ((Set Context!6478)) List!58048)

(assert (=> b!5017144 (= lt!2076116 (toList!8099 z!4183))))

(declare-fun b!5017145 () Bool)

(declare-fun e!3134268 () Bool)

(assert (=> b!5017145 (= e!3134268 e!3134267)))

(declare-fun res!2139333 () Bool)

(assert (=> b!5017145 (=> res!2139333 e!3134267)))

(declare-fun lt!2076124 () Int)

(declare-fun lt!2076119 () Int)

(assert (=> b!5017145 (= res!2139333 (or (> lt!2076124 lt!2076119) (> lt!2076119 lt!2076124)))))

(assert (=> b!5017145 (= lt!2076119 (size!38513 (_1!34856 lt!2076110)))))

(assert (=> b!5017145 (= lt!2076124 (size!38512 (_1!34855 lt!2076125)))))

(declare-fun matchR!6778 (Regex!13814 List!58046) Bool)

(assert (=> b!5017145 (= (matchR!6778 r!12727 lt!2076128) lt!2076121)))

(declare-fun lt!2076113 () Unit!149159)

(declare-fun theoremZipperRegexEquiv!186 ((Set Context!6478) List!58048 Regex!13814 List!58046) Unit!149159)

(assert (=> b!5017145 (= lt!2076113 (theoremZipperRegexEquiv!186 z!4183 lt!2076116 r!12727 lt!2076128))))

(declare-fun lt!2076129 () Bool)

(assert (=> b!5017145 (= lt!2076129 (matchZipper!582 z!4183 (_1!34855 lt!2076125)))))

(declare-fun lt!2076112 () Unit!149159)

(assert (=> b!5017145 (= lt!2076112 (theoremZipperRegexEquiv!186 z!4183 lt!2076116 r!12727 (_1!34855 lt!2076125)))))

(declare-fun b!5017146 () Bool)

(declare-fun res!2139341 () Bool)

(assert (=> b!5017146 (=> res!2139341 e!3134267)))

(assert (=> b!5017146 (= res!2139341 (not (isPrefix!5367 (_1!34855 lt!2076125) lt!2076130)))))

(declare-fun b!5017147 () Bool)

(assert (=> b!5017147 (= e!3134273 e!3134270)))

(declare-fun res!2139338 () Bool)

(assert (=> b!5017147 (=> (not res!2139338) (not e!3134270))))

(assert (=> b!5017147 (= res!2139338 (= lt!2076117 lt!2076130))))

(assert (=> b!5017147 (= lt!2076117 (++!12662 (_1!34855 lt!2076125) (_2!34855 lt!2076125)))))

(declare-fun b!5017148 () Bool)

(declare-fun e!3134272 () Bool)

(assert (=> b!5017148 (= e!3134272 (not (isEmpty!31391 (_1!34855 lt!2076125))))))

(declare-fun b!5017149 () Bool)

(assert (=> b!5017149 (= e!3134267 (= (size!38512 lt!2076128) lt!2076124))))

(declare-fun b!5017150 () Bool)

(declare-fun tp!1406956 () Bool)

(declare-fun tp!1406954 () Bool)

(assert (=> b!5017150 (= e!3134274 (and tp!1406956 tp!1406954))))

(declare-fun b!5017151 () Bool)

(declare-fun isEmpty!31392 (BalanceConc!30096) Bool)

(assert (=> b!5017151 (= e!3134266 (not (isEmpty!31392 (_1!34856 lt!2076110))))))

(declare-fun b!5017152 () Bool)

(declare-fun drop!2477 (List!58046 Int) List!58046)

(assert (=> b!5017152 (= e!3134275 (matchZipper!582 z!4183 (take!673 (drop!2477 lt!2076115 lt!2076114) lt!2076132)))))

(declare-fun b!5017153 () Bool)

(assert (=> b!5017153 (= e!3134265 (matchR!6778 r!12727 (_1!34855 lt!2076127)))))

(declare-fun b!5017154 () Bool)

(declare-fun e!3134260 () Bool)

(declare-fun tp!1406957 () Bool)

(declare-fun inv!76147 (Conc!15333) Bool)

(assert (=> b!5017154 (= e!3134260 (and (inv!76147 (c!857242 input!5597)) tp!1406957))))

(declare-fun b!5017155 () Bool)

(declare-fun tp_is_empty!36625 () Bool)

(assert (=> b!5017155 (= e!3134274 tp_is_empty!36625)))

(declare-fun b!5017156 () Bool)

(assert (=> b!5017156 (= e!3134261 e!3134268)))

(declare-fun res!2139335 () Bool)

(assert (=> b!5017156 (=> res!2139335 e!3134268)))

(assert (=> b!5017156 (= res!2139335 e!3134272)))

(declare-fun res!2139342 () Bool)

(assert (=> b!5017156 (=> (not res!2139342) (not e!3134272))))

(assert (=> b!5017156 (= res!2139342 (not lt!2076129))))

(assert (=> b!5017156 (= lt!2076129 (matchR!6778 r!12727 (_1!34855 lt!2076125)))))

(declare-fun res!2139345 () Bool)

(assert (=> start!530068 (=> (not res!2139345) (not e!3134264))))

(declare-fun validRegex!6111 (Regex!13814) Bool)

(assert (=> start!530068 (= res!2139345 (validRegex!6111 r!12727))))

(assert (=> start!530068 e!3134264))

(assert (=> start!530068 e!3134274))

(declare-fun inv!76148 (BalanceConc!30096) Bool)

(assert (=> start!530068 (and (inv!76148 input!5597) e!3134260)))

(declare-fun condSetEmpty!28507 () Bool)

(assert (=> start!530068 (= condSetEmpty!28507 (= z!4183 (as set.empty (Set Context!6478))))))

(assert (=> start!530068 setRes!28507))

(declare-fun e!3134263 () Bool)

(assert (=> start!530068 (and (inv!76148 totalInput!1012) e!3134263)))

(declare-fun b!5017157 () Bool)

(declare-fun tp!1406958 () Bool)

(assert (=> b!5017157 (= e!3134263 (and (inv!76147 (c!857242 totalInput!1012)) tp!1406958))))

(assert (= (and start!530068 res!2139345) b!5017144))

(assert (= (and b!5017144 res!2139340) b!5017139))

(assert (= (and b!5017139 res!2139336) b!5017142))

(assert (= (and b!5017142 res!2139337) b!5017147))

(assert (= (and b!5017147 res!2139338) b!5017141))

(assert (= (and b!5017141 (not res!2139343)) b!5017152))

(assert (= (and b!5017141 (not res!2139332)) b!5017153))

(assert (= (and b!5017141 res!2139344) b!5017151))

(assert (= (and b!5017141 (not res!2139334)) b!5017156))

(assert (= (and b!5017156 res!2139342) b!5017148))

(assert (= (and b!5017156 (not res!2139335)) b!5017145))

(assert (= (and b!5017145 (not res!2139333)) b!5017137))

(assert (= (and b!5017137 (not res!2139339)) b!5017146))

(assert (= (and b!5017146 (not res!2139341)) b!5017149))

(assert (= (and start!530068 (is-ElementMatch!13814 r!12727)) b!5017155))

(assert (= (and start!530068 (is-Concat!22607 r!12727)) b!5017150))

(assert (= (and start!530068 (is-Star!13814 r!12727)) b!5017143))

(assert (= (and start!530068 (is-Union!13814 r!12727)) b!5017140))

(assert (= start!530068 b!5017154))

(assert (= (and start!530068 condSetEmpty!28507) setIsEmpty!28507))

(assert (= (and start!530068 (not condSetEmpty!28507)) setNonEmpty!28507))

(assert (= setNonEmpty!28507 b!5017138))

(assert (= start!530068 b!5017157))

(declare-fun m!6052210 () Bool)

(assert (=> b!5017139 m!6052210))

(declare-fun m!6052212 () Bool)

(assert (=> b!5017139 m!6052212))

(declare-fun m!6052214 () Bool)

(assert (=> b!5017139 m!6052214))

(declare-fun m!6052216 () Bool)

(assert (=> b!5017137 m!6052216))

(declare-fun m!6052218 () Bool)

(assert (=> b!5017147 m!6052218))

(declare-fun m!6052220 () Bool)

(assert (=> b!5017144 m!6052220))

(declare-fun m!6052222 () Bool)

(assert (=> b!5017144 m!6052222))

(declare-fun m!6052224 () Bool)

(assert (=> b!5017156 m!6052224))

(declare-fun m!6052226 () Bool)

(assert (=> b!5017141 m!6052226))

(declare-fun m!6052228 () Bool)

(assert (=> b!5017141 m!6052228))

(declare-fun m!6052230 () Bool)

(assert (=> b!5017141 m!6052230))

(declare-fun m!6052232 () Bool)

(assert (=> b!5017141 m!6052232))

(assert (=> b!5017141 m!6052226))

(declare-fun m!6052234 () Bool)

(assert (=> b!5017141 m!6052234))

(declare-fun m!6052236 () Bool)

(assert (=> b!5017141 m!6052236))

(declare-fun m!6052238 () Bool)

(assert (=> b!5017141 m!6052238))

(declare-fun m!6052240 () Bool)

(assert (=> b!5017141 m!6052240))

(declare-fun m!6052242 () Bool)

(assert (=> b!5017141 m!6052242))

(declare-fun m!6052244 () Bool)

(assert (=> b!5017141 m!6052244))

(declare-fun m!6052246 () Bool)

(assert (=> b!5017141 m!6052246))

(assert (=> b!5017141 m!6052228))

(declare-fun m!6052248 () Bool)

(assert (=> b!5017141 m!6052248))

(declare-fun m!6052250 () Bool)

(assert (=> b!5017141 m!6052250))

(declare-fun m!6052252 () Bool)

(assert (=> b!5017141 m!6052252))

(assert (=> b!5017141 m!6052234))

(declare-fun m!6052254 () Bool)

(assert (=> b!5017141 m!6052254))

(declare-fun m!6052256 () Bool)

(assert (=> b!5017152 m!6052256))

(assert (=> b!5017152 m!6052256))

(declare-fun m!6052258 () Bool)

(assert (=> b!5017152 m!6052258))

(assert (=> b!5017152 m!6052258))

(declare-fun m!6052260 () Bool)

(assert (=> b!5017152 m!6052260))

(declare-fun m!6052262 () Bool)

(assert (=> b!5017149 m!6052262))

(declare-fun m!6052264 () Bool)

(assert (=> b!5017148 m!6052264))

(declare-fun m!6052266 () Bool)

(assert (=> b!5017145 m!6052266))

(declare-fun m!6052268 () Bool)

(assert (=> b!5017145 m!6052268))

(declare-fun m!6052270 () Bool)

(assert (=> b!5017145 m!6052270))

(declare-fun m!6052272 () Bool)

(assert (=> b!5017145 m!6052272))

(declare-fun m!6052274 () Bool)

(assert (=> b!5017145 m!6052274))

(declare-fun m!6052276 () Bool)

(assert (=> b!5017145 m!6052276))

(declare-fun m!6052278 () Bool)

(assert (=> b!5017153 m!6052278))

(declare-fun m!6052280 () Bool)

(assert (=> b!5017146 m!6052280))

(declare-fun m!6052282 () Bool)

(assert (=> b!5017142 m!6052282))

(declare-fun m!6052284 () Bool)

(assert (=> b!5017142 m!6052284))

(declare-fun m!6052286 () Bool)

(assert (=> b!5017142 m!6052286))

(declare-fun m!6052288 () Bool)

(assert (=> b!5017142 m!6052288))

(declare-fun m!6052290 () Bool)

(assert (=> b!5017142 m!6052290))

(declare-fun m!6052292 () Bool)

(assert (=> b!5017142 m!6052292))

(declare-fun m!6052294 () Bool)

(assert (=> b!5017142 m!6052294))

(declare-fun m!6052296 () Bool)

(assert (=> b!5017151 m!6052296))

(declare-fun m!6052298 () Bool)

(assert (=> setNonEmpty!28507 m!6052298))

(declare-fun m!6052300 () Bool)

(assert (=> b!5017157 m!6052300))

(declare-fun m!6052302 () Bool)

(assert (=> start!530068 m!6052302))

(declare-fun m!6052304 () Bool)

(assert (=> start!530068 m!6052304))

(declare-fun m!6052306 () Bool)

(assert (=> start!530068 m!6052306))

(declare-fun m!6052308 () Bool)

(assert (=> b!5017154 m!6052308))

(push 1)

(assert (not b!5017137))

(assert (not b!5017139))

(assert (not b!5017149))

(assert (not b!5017146))

(assert tp_is_empty!36625)

(assert (not b!5017154))

(assert (not b!5017141))

(assert (not b!5017140))

(assert (not b!5017142))

(assert (not b!5017150))

(assert (not b!5017138))

(assert (not b!5017151))

(assert (not b!5017153))

(assert (not b!5017157))

(assert (not b!5017148))

(assert (not setNonEmpty!28507))

(assert (not b!5017145))

(assert (not start!530068))

(assert (not b!5017156))

(assert (not b!5017147))

(assert (not b!5017152))

(assert (not b!5017144))

(assert (not b!5017143))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1615468 () Bool)

(declare-fun lt!2076207 () Int)

(assert (=> d!1615468 (>= lt!2076207 0)))

(declare-fun e!3134326 () Int)

(assert (=> d!1615468 (= lt!2076207 e!3134326)))

(declare-fun c!857247 () Bool)

(assert (=> d!1615468 (= c!857247 (is-Nil!57922 lt!2076128))))

(assert (=> d!1615468 (= (size!38512 lt!2076128) lt!2076207)))

(declare-fun b!5017225 () Bool)

(assert (=> b!5017225 (= e!3134326 0)))

(declare-fun b!5017226 () Bool)

(assert (=> b!5017226 (= e!3134326 (+ 1 (size!38512 (t!370422 lt!2076128))))))

(assert (= (and d!1615468 c!857247) b!5017225))

(assert (= (and d!1615468 (not c!857247)) b!5017226))

(declare-fun m!6052410 () Bool)

(assert (=> b!5017226 m!6052410))

(assert (=> b!5017149 d!1615468))

(declare-fun d!1615470 () Bool)

(declare-fun e!3134329 () Bool)

(assert (=> d!1615470 e!3134329))

(declare-fun res!2139390 () Bool)

(assert (=> d!1615470 (=> res!2139390 e!3134329)))

(declare-fun lt!2076210 () Bool)

(assert (=> d!1615470 (= res!2139390 (not lt!2076210))))

(assert (=> d!1615470 (= lt!2076210 (= lt!2076130 (drop!2477 lt!2076115 (- (size!38512 lt!2076115) (size!38512 lt!2076130)))))))

(assert (=> d!1615470 (= (isSuffix!1380 lt!2076130 lt!2076115) lt!2076210)))

(declare-fun b!5017229 () Bool)

(assert (=> b!5017229 (= e!3134329 (>= (size!38512 lt!2076115) (size!38512 lt!2076130)))))

(assert (= (and d!1615470 (not res!2139390)) b!5017229))

(declare-fun m!6052412 () Bool)

(assert (=> d!1615470 m!6052412))

(assert (=> d!1615470 m!6052234))

(declare-fun m!6052414 () Bool)

(assert (=> d!1615470 m!6052414))

(assert (=> b!5017229 m!6052412))

(assert (=> b!5017229 m!6052234))

(assert (=> b!5017139 d!1615470))

(declare-fun d!1615472 () Bool)

(declare-fun list!18661 (Conc!15333) List!58046)

(assert (=> d!1615472 (= (list!18659 totalInput!1012) (list!18661 (c!857242 totalInput!1012)))))

(declare-fun bs!1187031 () Bool)

(assert (= bs!1187031 d!1615472))

(declare-fun m!6052416 () Bool)

(assert (=> bs!1187031 m!6052416))

(assert (=> b!5017139 d!1615472))

(declare-fun d!1615474 () Bool)

(assert (=> d!1615474 (= (list!18659 input!5597) (list!18661 (c!857242 input!5597)))))

(declare-fun bs!1187032 () Bool)

(assert (= bs!1187032 d!1615474))

(declare-fun m!6052418 () Bool)

(assert (=> bs!1187032 m!6052418))

(assert (=> b!5017139 d!1615474))

(declare-fun d!1615476 () Bool)

(assert (=> d!1615476 (= (isEmpty!31391 (_1!34855 lt!2076125)) (is-Nil!57922 (_1!34855 lt!2076125)))))

(assert (=> b!5017148 d!1615476))

(declare-fun d!1615478 () Bool)

(declare-fun c!857250 () Bool)

(assert (=> d!1615478 (= c!857250 (is-Node!15333 (c!857242 totalInput!1012)))))

(declare-fun e!3134334 () Bool)

(assert (=> d!1615478 (= (inv!76147 (c!857242 totalInput!1012)) e!3134334)))

(declare-fun b!5017236 () Bool)

(declare-fun inv!76152 (Conc!15333) Bool)

(assert (=> b!5017236 (= e!3134334 (inv!76152 (c!857242 totalInput!1012)))))

(declare-fun b!5017237 () Bool)

(declare-fun e!3134335 () Bool)

(assert (=> b!5017237 (= e!3134334 e!3134335)))

(declare-fun res!2139393 () Bool)

(assert (=> b!5017237 (= res!2139393 (not (is-Leaf!25449 (c!857242 totalInput!1012))))))

(assert (=> b!5017237 (=> res!2139393 e!3134335)))

(declare-fun b!5017238 () Bool)

(declare-fun inv!76153 (Conc!15333) Bool)

(assert (=> b!5017238 (= e!3134335 (inv!76153 (c!857242 totalInput!1012)))))

(assert (= (and d!1615478 c!857250) b!5017236))

(assert (= (and d!1615478 (not c!857250)) b!5017237))

(assert (= (and b!5017237 (not res!2139393)) b!5017238))

(declare-fun m!6052420 () Bool)

(assert (=> b!5017236 m!6052420))

(declare-fun m!6052422 () Bool)

(assert (=> b!5017238 m!6052422))

(assert (=> b!5017157 d!1615478))

(declare-fun d!1615482 () Bool)

(declare-fun e!3134349 () Bool)

(assert (=> d!1615482 e!3134349))

(declare-fun res!2139408 () Bool)

(assert (=> d!1615482 (=> res!2139408 e!3134349)))

(declare-fun lt!2076216 () Bool)

(assert (=> d!1615482 (= res!2139408 (not lt!2076216))))

(declare-fun e!3134348 () Bool)

(assert (=> d!1615482 (= lt!2076216 e!3134348)))

(declare-fun res!2139411 () Bool)

(assert (=> d!1615482 (=> res!2139411 e!3134348)))

(assert (=> d!1615482 (= res!2139411 (is-Nil!57922 (_1!34855 lt!2076125)))))

(assert (=> d!1615482 (= (isPrefix!5367 (_1!34855 lt!2076125) lt!2076130) lt!2076216)))

(declare-fun b!5017261 () Bool)

(declare-fun e!3134350 () Bool)

(declare-fun tail!9881 (List!58046) List!58046)

(assert (=> b!5017261 (= e!3134350 (isPrefix!5367 (tail!9881 (_1!34855 lt!2076125)) (tail!9881 lt!2076130)))))

(declare-fun b!5017262 () Bool)

(assert (=> b!5017262 (= e!3134349 (>= (size!38512 lt!2076130) (size!38512 (_1!34855 lt!2076125))))))

(declare-fun b!5017260 () Bool)

(declare-fun res!2139410 () Bool)

(assert (=> b!5017260 (=> (not res!2139410) (not e!3134350))))

(declare-fun head!10748 (List!58046) C!27878)

(assert (=> b!5017260 (= res!2139410 (= (head!10748 (_1!34855 lt!2076125)) (head!10748 lt!2076130)))))

(declare-fun b!5017259 () Bool)

(assert (=> b!5017259 (= e!3134348 e!3134350)))

(declare-fun res!2139409 () Bool)

(assert (=> b!5017259 (=> (not res!2139409) (not e!3134350))))

(assert (=> b!5017259 (= res!2139409 (not (is-Nil!57922 lt!2076130)))))

(assert (= (and d!1615482 (not res!2139411)) b!5017259))

(assert (= (and b!5017259 res!2139409) b!5017260))

(assert (= (and b!5017260 res!2139410) b!5017261))

(assert (= (and d!1615482 (not res!2139408)) b!5017262))

(declare-fun m!6052436 () Bool)

(assert (=> b!5017261 m!6052436))

(declare-fun m!6052438 () Bool)

(assert (=> b!5017261 m!6052438))

(assert (=> b!5017261 m!6052436))

(assert (=> b!5017261 m!6052438))

(declare-fun m!6052440 () Bool)

(assert (=> b!5017261 m!6052440))

(assert (=> b!5017262 m!6052234))

(assert (=> b!5017262 m!6052274))

(declare-fun m!6052442 () Bool)

(assert (=> b!5017260 m!6052442))

(declare-fun m!6052444 () Bool)

(assert (=> b!5017260 m!6052444))

(assert (=> b!5017146 d!1615482))

(declare-fun d!1615486 () Bool)

(declare-fun e!3134352 () Bool)

(assert (=> d!1615486 e!3134352))

(declare-fun res!2139412 () Bool)

(assert (=> d!1615486 (=> res!2139412 e!3134352)))

(declare-fun lt!2076217 () Bool)

(assert (=> d!1615486 (= res!2139412 (not lt!2076217))))

(declare-fun e!3134351 () Bool)

(assert (=> d!1615486 (= lt!2076217 e!3134351)))

(declare-fun res!2139415 () Bool)

(assert (=> d!1615486 (=> res!2139415 e!3134351)))

(assert (=> d!1615486 (= res!2139415 (is-Nil!57922 lt!2076128))))

(assert (=> d!1615486 (= (isPrefix!5367 lt!2076128 lt!2076130) lt!2076217)))

(declare-fun b!5017265 () Bool)

(declare-fun e!3134353 () Bool)

(assert (=> b!5017265 (= e!3134353 (isPrefix!5367 (tail!9881 lt!2076128) (tail!9881 lt!2076130)))))

(declare-fun b!5017266 () Bool)

(assert (=> b!5017266 (= e!3134352 (>= (size!38512 lt!2076130) (size!38512 lt!2076128)))))

(declare-fun b!5017264 () Bool)

(declare-fun res!2139414 () Bool)

(assert (=> b!5017264 (=> (not res!2139414) (not e!3134353))))

(assert (=> b!5017264 (= res!2139414 (= (head!10748 lt!2076128) (head!10748 lt!2076130)))))

(declare-fun b!5017263 () Bool)

(assert (=> b!5017263 (= e!3134351 e!3134353)))

(declare-fun res!2139413 () Bool)

(assert (=> b!5017263 (=> (not res!2139413) (not e!3134353))))

(assert (=> b!5017263 (= res!2139413 (not (is-Nil!57922 lt!2076130)))))

(assert (= (and d!1615486 (not res!2139415)) b!5017263))

(assert (= (and b!5017263 res!2139413) b!5017264))

(assert (= (and b!5017264 res!2139414) b!5017265))

(assert (= (and d!1615486 (not res!2139412)) b!5017266))

(declare-fun m!6052446 () Bool)

(assert (=> b!5017265 m!6052446))

(assert (=> b!5017265 m!6052438))

(assert (=> b!5017265 m!6052446))

(assert (=> b!5017265 m!6052438))

(declare-fun m!6052448 () Bool)

(assert (=> b!5017265 m!6052448))

(assert (=> b!5017266 m!6052234))

(assert (=> b!5017266 m!6052262))

(declare-fun m!6052450 () Bool)

(assert (=> b!5017264 m!6052450))

(assert (=> b!5017264 m!6052444))

(assert (=> b!5017137 d!1615486))

(declare-fun b!5017299 () Bool)

(declare-fun e!3134377 () Bool)

(declare-fun nullable!4698 (Regex!13814) Bool)

(assert (=> b!5017299 (= e!3134377 (nullable!4698 r!12727))))

(declare-fun d!1615488 () Bool)

(declare-fun e!3134378 () Bool)

(assert (=> d!1615488 e!3134378))

(declare-fun c!857262 () Bool)

(assert (=> d!1615488 (= c!857262 (is-EmptyExpr!13814 r!12727))))

(declare-fun lt!2076222 () Bool)

(assert (=> d!1615488 (= lt!2076222 e!3134377)))

(declare-fun c!857260 () Bool)

(assert (=> d!1615488 (= c!857260 (isEmpty!31391 (_1!34855 lt!2076125)))))

(assert (=> d!1615488 (validRegex!6111 r!12727)))

(assert (=> d!1615488 (= (matchR!6778 r!12727 (_1!34855 lt!2076125)) lt!2076222)))

(declare-fun bm!350423 () Bool)

(declare-fun call!350428 () Bool)

(assert (=> bm!350423 (= call!350428 (isEmpty!31391 (_1!34855 lt!2076125)))))

(declare-fun b!5017300 () Bool)

(declare-fun e!3134372 () Bool)

(declare-fun e!3134374 () Bool)

(assert (=> b!5017300 (= e!3134372 e!3134374)))

(declare-fun res!2139439 () Bool)

(assert (=> b!5017300 (=> (not res!2139439) (not e!3134374))))

(assert (=> b!5017300 (= res!2139439 (not lt!2076222))))

(declare-fun b!5017301 () Bool)

(declare-fun res!2139442 () Bool)

(declare-fun e!3134376 () Bool)

(assert (=> b!5017301 (=> (not res!2139442) (not e!3134376))))

(assert (=> b!5017301 (= res!2139442 (isEmpty!31391 (tail!9881 (_1!34855 lt!2076125))))))

(declare-fun b!5017302 () Bool)

(declare-fun derivativeStep!3988 (Regex!13814 C!27878) Regex!13814)

(assert (=> b!5017302 (= e!3134377 (matchR!6778 (derivativeStep!3988 r!12727 (head!10748 (_1!34855 lt!2076125))) (tail!9881 (_1!34855 lt!2076125))))))

(declare-fun b!5017303 () Bool)

(declare-fun res!2139436 () Bool)

(assert (=> b!5017303 (=> (not res!2139436) (not e!3134376))))

(assert (=> b!5017303 (= res!2139436 (not call!350428))))

(declare-fun b!5017304 () Bool)

(declare-fun e!3134375 () Bool)

(assert (=> b!5017304 (= e!3134378 e!3134375)))

(declare-fun c!857261 () Bool)

(assert (=> b!5017304 (= c!857261 (is-EmptyLang!13814 r!12727))))

(declare-fun b!5017305 () Bool)

(declare-fun e!3134373 () Bool)

(assert (=> b!5017305 (= e!3134373 (not (= (head!10748 (_1!34855 lt!2076125)) (c!857241 r!12727))))))

(declare-fun b!5017306 () Bool)

(assert (=> b!5017306 (= e!3134378 (= lt!2076222 call!350428))))

(declare-fun b!5017307 () Bool)

(assert (=> b!5017307 (= e!3134376 (= (head!10748 (_1!34855 lt!2076125)) (c!857241 r!12727)))))

(declare-fun b!5017308 () Bool)

(assert (=> b!5017308 (= e!3134374 e!3134373)))

(declare-fun res!2139441 () Bool)

(assert (=> b!5017308 (=> res!2139441 e!3134373)))

(assert (=> b!5017308 (= res!2139441 call!350428)))

(declare-fun b!5017309 () Bool)

(declare-fun res!2139437 () Bool)

(assert (=> b!5017309 (=> res!2139437 e!3134373)))

(assert (=> b!5017309 (= res!2139437 (not (isEmpty!31391 (tail!9881 (_1!34855 lt!2076125)))))))

(declare-fun b!5017310 () Bool)

(declare-fun res!2139438 () Bool)

(assert (=> b!5017310 (=> res!2139438 e!3134372)))

(assert (=> b!5017310 (= res!2139438 e!3134376)))

(declare-fun res!2139440 () Bool)

(assert (=> b!5017310 (=> (not res!2139440) (not e!3134376))))

(assert (=> b!5017310 (= res!2139440 lt!2076222)))

(declare-fun b!5017311 () Bool)

(assert (=> b!5017311 (= e!3134375 (not lt!2076222))))

(declare-fun b!5017312 () Bool)

(declare-fun res!2139443 () Bool)

(assert (=> b!5017312 (=> res!2139443 e!3134372)))

(assert (=> b!5017312 (= res!2139443 (not (is-ElementMatch!13814 r!12727)))))

(assert (=> b!5017312 (= e!3134375 e!3134372)))

(assert (= (and d!1615488 c!857260) b!5017299))

(assert (= (and d!1615488 (not c!857260)) b!5017302))

(assert (= (and d!1615488 c!857262) b!5017306))

(assert (= (and d!1615488 (not c!857262)) b!5017304))

(assert (= (and b!5017304 c!857261) b!5017311))

(assert (= (and b!5017304 (not c!857261)) b!5017312))

(assert (= (and b!5017312 (not res!2139443)) b!5017310))

(assert (= (and b!5017310 res!2139440) b!5017303))

(assert (= (and b!5017303 res!2139436) b!5017301))

(assert (= (and b!5017301 res!2139442) b!5017307))

(assert (= (and b!5017310 (not res!2139438)) b!5017300))

(assert (= (and b!5017300 res!2139439) b!5017308))

(assert (= (and b!5017308 (not res!2139441)) b!5017309))

(assert (= (and b!5017309 (not res!2139437)) b!5017305))

(assert (= (or b!5017306 b!5017303 b!5017308) bm!350423))

(assert (=> b!5017301 m!6052436))

(assert (=> b!5017301 m!6052436))

(declare-fun m!6052452 () Bool)

(assert (=> b!5017301 m!6052452))

(declare-fun m!6052454 () Bool)

(assert (=> b!5017299 m!6052454))

(assert (=> b!5017302 m!6052442))

(assert (=> b!5017302 m!6052442))

(declare-fun m!6052456 () Bool)

(assert (=> b!5017302 m!6052456))

(assert (=> b!5017302 m!6052436))

(assert (=> b!5017302 m!6052456))

(assert (=> b!5017302 m!6052436))

(declare-fun m!6052458 () Bool)

(assert (=> b!5017302 m!6052458))

(assert (=> d!1615488 m!6052264))

(assert (=> d!1615488 m!6052302))

(assert (=> bm!350423 m!6052264))

(assert (=> b!5017307 m!6052442))

(assert (=> b!5017305 m!6052442))

(assert (=> b!5017309 m!6052436))

(assert (=> b!5017309 m!6052436))

(assert (=> b!5017309 m!6052452))

(assert (=> b!5017156 d!1615488))

(declare-fun d!1615490 () Bool)

(declare-fun e!3134385 () Bool)

(assert (=> d!1615490 e!3134385))

(declare-fun res!2139450 () Bool)

(assert (=> d!1615490 (=> (not res!2139450) (not e!3134385))))

(declare-fun lt!2076229 () List!58046)

(declare-fun content!10271 (List!58046) (Set C!27878))

(assert (=> d!1615490 (= res!2139450 (= (content!10271 lt!2076229) (set.union (content!10271 (_1!34855 lt!2076125)) (content!10271 (_2!34855 lt!2076125)))))))

(declare-fun e!3134386 () List!58046)

(assert (=> d!1615490 (= lt!2076229 e!3134386)))

(declare-fun c!857265 () Bool)

(assert (=> d!1615490 (= c!857265 (is-Nil!57922 (_1!34855 lt!2076125)))))

(assert (=> d!1615490 (= (++!12662 (_1!34855 lt!2076125) (_2!34855 lt!2076125)) lt!2076229)))

(declare-fun b!5017325 () Bool)

(declare-fun res!2139451 () Bool)

(assert (=> b!5017325 (=> (not res!2139451) (not e!3134385))))

(assert (=> b!5017325 (= res!2139451 (= (size!38512 lt!2076229) (+ (size!38512 (_1!34855 lt!2076125)) (size!38512 (_2!34855 lt!2076125)))))))

(declare-fun b!5017323 () Bool)

(assert (=> b!5017323 (= e!3134386 (_2!34855 lt!2076125))))

(declare-fun b!5017326 () Bool)

(assert (=> b!5017326 (= e!3134385 (or (not (= (_2!34855 lt!2076125) Nil!57922)) (= lt!2076229 (_1!34855 lt!2076125))))))

(declare-fun b!5017324 () Bool)

(assert (=> b!5017324 (= e!3134386 (Cons!57922 (h!64370 (_1!34855 lt!2076125)) (++!12662 (t!370422 (_1!34855 lt!2076125)) (_2!34855 lt!2076125))))))

(assert (= (and d!1615490 c!857265) b!5017323))

(assert (= (and d!1615490 (not c!857265)) b!5017324))

(assert (= (and d!1615490 res!2139450) b!5017325))

(assert (= (and b!5017325 res!2139451) b!5017326))

(declare-fun m!6052472 () Bool)

(assert (=> d!1615490 m!6052472))

(declare-fun m!6052474 () Bool)

(assert (=> d!1615490 m!6052474))

(declare-fun m!6052476 () Bool)

(assert (=> d!1615490 m!6052476))

(declare-fun m!6052478 () Bool)

(assert (=> b!5017325 m!6052478))

(assert (=> b!5017325 m!6052274))

(declare-fun m!6052480 () Bool)

(assert (=> b!5017325 m!6052480))

(declare-fun m!6052482 () Bool)

(assert (=> b!5017324 m!6052482))

(assert (=> b!5017147 d!1615490))

(declare-fun d!1615498 () Bool)

(declare-fun lambda!248669 () Int)

(declare-fun forall!13381 (List!58047 Int) Bool)

(assert (=> d!1615498 (= (inv!76146 setElem!28507) (forall!13381 (exprs!3739 setElem!28507) lambda!248669))))

(declare-fun bs!1187036 () Bool)

(assert (= bs!1187036 d!1615498))

(declare-fun m!6052620 () Bool)

(assert (=> bs!1187036 m!6052620))

(assert (=> setNonEmpty!28507 d!1615498))

(declare-fun d!1615524 () Bool)

(declare-fun c!857309 () Bool)

(assert (=> d!1615524 (= c!857309 (is-Node!15333 (c!857242 input!5597)))))

(declare-fun e!3134463 () Bool)

(assert (=> d!1615524 (= (inv!76147 (c!857242 input!5597)) e!3134463)))

(declare-fun b!5017451 () Bool)

(assert (=> b!5017451 (= e!3134463 (inv!76152 (c!857242 input!5597)))))

(declare-fun b!5017452 () Bool)

(declare-fun e!3134464 () Bool)

(assert (=> b!5017452 (= e!3134463 e!3134464)))

(declare-fun res!2139490 () Bool)

(assert (=> b!5017452 (= res!2139490 (not (is-Leaf!25449 (c!857242 input!5597))))))

(assert (=> b!5017452 (=> res!2139490 e!3134464)))

(declare-fun b!5017453 () Bool)

(assert (=> b!5017453 (= e!3134464 (inv!76153 (c!857242 input!5597)))))

(assert (= (and d!1615524 c!857309) b!5017451))

(assert (= (and d!1615524 (not c!857309)) b!5017452))

(assert (= (and b!5017452 (not res!2139490)) b!5017453))

(declare-fun m!6052622 () Bool)

(assert (=> b!5017451 m!6052622))

(declare-fun m!6052624 () Bool)

(assert (=> b!5017453 m!6052624))

(assert (=> b!5017154 d!1615524))

(declare-fun b!5017454 () Bool)

(declare-fun e!3134470 () Bool)

(assert (=> b!5017454 (= e!3134470 (nullable!4698 r!12727))))

(declare-fun d!1615526 () Bool)

(declare-fun e!3134471 () Bool)

(assert (=> d!1615526 e!3134471))

(declare-fun c!857312 () Bool)

(assert (=> d!1615526 (= c!857312 (is-EmptyExpr!13814 r!12727))))

(declare-fun lt!2076342 () Bool)

(assert (=> d!1615526 (= lt!2076342 e!3134470)))

(declare-fun c!857310 () Bool)

(assert (=> d!1615526 (= c!857310 (isEmpty!31391 lt!2076128))))

(assert (=> d!1615526 (validRegex!6111 r!12727)))

(assert (=> d!1615526 (= (matchR!6778 r!12727 lt!2076128) lt!2076342)))

(declare-fun bm!350448 () Bool)

(declare-fun call!350453 () Bool)

(assert (=> bm!350448 (= call!350453 (isEmpty!31391 lt!2076128))))

(declare-fun b!5017455 () Bool)

(declare-fun e!3134465 () Bool)

(declare-fun e!3134467 () Bool)

(assert (=> b!5017455 (= e!3134465 e!3134467)))

(declare-fun res!2139494 () Bool)

(assert (=> b!5017455 (=> (not res!2139494) (not e!3134467))))

(assert (=> b!5017455 (= res!2139494 (not lt!2076342))))

(declare-fun b!5017456 () Bool)

(declare-fun res!2139497 () Bool)

(declare-fun e!3134469 () Bool)

(assert (=> b!5017456 (=> (not res!2139497) (not e!3134469))))

(assert (=> b!5017456 (= res!2139497 (isEmpty!31391 (tail!9881 lt!2076128)))))

(declare-fun b!5017457 () Bool)

(assert (=> b!5017457 (= e!3134470 (matchR!6778 (derivativeStep!3988 r!12727 (head!10748 lt!2076128)) (tail!9881 lt!2076128)))))

(declare-fun b!5017458 () Bool)

(declare-fun res!2139491 () Bool)

(assert (=> b!5017458 (=> (not res!2139491) (not e!3134469))))

(assert (=> b!5017458 (= res!2139491 (not call!350453))))

(declare-fun b!5017459 () Bool)

(declare-fun e!3134468 () Bool)

(assert (=> b!5017459 (= e!3134471 e!3134468)))

(declare-fun c!857311 () Bool)

(assert (=> b!5017459 (= c!857311 (is-EmptyLang!13814 r!12727))))

(declare-fun b!5017460 () Bool)

(declare-fun e!3134466 () Bool)

(assert (=> b!5017460 (= e!3134466 (not (= (head!10748 lt!2076128) (c!857241 r!12727))))))

(declare-fun b!5017461 () Bool)

(assert (=> b!5017461 (= e!3134471 (= lt!2076342 call!350453))))

(declare-fun b!5017462 () Bool)

(assert (=> b!5017462 (= e!3134469 (= (head!10748 lt!2076128) (c!857241 r!12727)))))

(declare-fun b!5017463 () Bool)

(assert (=> b!5017463 (= e!3134467 e!3134466)))

(declare-fun res!2139496 () Bool)

(assert (=> b!5017463 (=> res!2139496 e!3134466)))

(assert (=> b!5017463 (= res!2139496 call!350453)))

(declare-fun b!5017464 () Bool)

(declare-fun res!2139492 () Bool)

(assert (=> b!5017464 (=> res!2139492 e!3134466)))

(assert (=> b!5017464 (= res!2139492 (not (isEmpty!31391 (tail!9881 lt!2076128))))))

(declare-fun b!5017465 () Bool)

(declare-fun res!2139493 () Bool)

(assert (=> b!5017465 (=> res!2139493 e!3134465)))

(assert (=> b!5017465 (= res!2139493 e!3134469)))

(declare-fun res!2139495 () Bool)

(assert (=> b!5017465 (=> (not res!2139495) (not e!3134469))))

(assert (=> b!5017465 (= res!2139495 lt!2076342)))

(declare-fun b!5017466 () Bool)

(assert (=> b!5017466 (= e!3134468 (not lt!2076342))))

(declare-fun b!5017467 () Bool)

(declare-fun res!2139498 () Bool)

(assert (=> b!5017467 (=> res!2139498 e!3134465)))

(assert (=> b!5017467 (= res!2139498 (not (is-ElementMatch!13814 r!12727)))))

(assert (=> b!5017467 (= e!3134468 e!3134465)))

(assert (= (and d!1615526 c!857310) b!5017454))

(assert (= (and d!1615526 (not c!857310)) b!5017457))

(assert (= (and d!1615526 c!857312) b!5017461))

(assert (= (and d!1615526 (not c!857312)) b!5017459))

(assert (= (and b!5017459 c!857311) b!5017466))

(assert (= (and b!5017459 (not c!857311)) b!5017467))

(assert (= (and b!5017467 (not res!2139498)) b!5017465))

(assert (= (and b!5017465 res!2139495) b!5017458))

(assert (= (and b!5017458 res!2139491) b!5017456))

(assert (= (and b!5017456 res!2139497) b!5017462))

(assert (= (and b!5017465 (not res!2139493)) b!5017455))

(assert (= (and b!5017455 res!2139494) b!5017463))

(assert (= (and b!5017463 (not res!2139496)) b!5017464))

(assert (= (and b!5017464 (not res!2139492)) b!5017460))

(assert (= (or b!5017461 b!5017458 b!5017463) bm!350448))

(assert (=> b!5017456 m!6052446))

(assert (=> b!5017456 m!6052446))

(declare-fun m!6052626 () Bool)

(assert (=> b!5017456 m!6052626))

(assert (=> b!5017454 m!6052454))

(assert (=> b!5017457 m!6052450))

(assert (=> b!5017457 m!6052450))

(declare-fun m!6052628 () Bool)

(assert (=> b!5017457 m!6052628))

(assert (=> b!5017457 m!6052446))

(assert (=> b!5017457 m!6052628))

(assert (=> b!5017457 m!6052446))

(declare-fun m!6052630 () Bool)

(assert (=> b!5017457 m!6052630))

(declare-fun m!6052632 () Bool)

(assert (=> d!1615526 m!6052632))

(assert (=> d!1615526 m!6052302))

(assert (=> bm!350448 m!6052632))

(assert (=> b!5017462 m!6052450))

(assert (=> b!5017460 m!6052450))

(assert (=> b!5017464 m!6052446))

(assert (=> b!5017464 m!6052446))

(assert (=> b!5017464 m!6052626))

(assert (=> b!5017145 d!1615526))

(declare-fun d!1615528 () Bool)

(assert (=> d!1615528 (= (matchR!6778 r!12727 (_1!34855 lt!2076125)) (matchZipper!582 z!4183 (_1!34855 lt!2076125)))))

(declare-fun lt!2076345 () Unit!149159)

(declare-fun choose!37123 ((Set Context!6478) List!58048 Regex!13814 List!58046) Unit!149159)

(assert (=> d!1615528 (= lt!2076345 (choose!37123 z!4183 lt!2076116 r!12727 (_1!34855 lt!2076125)))))

(assert (=> d!1615528 (validRegex!6111 r!12727)))

(assert (=> d!1615528 (= (theoremZipperRegexEquiv!186 z!4183 lt!2076116 r!12727 (_1!34855 lt!2076125)) lt!2076345)))

(declare-fun bs!1187037 () Bool)

(assert (= bs!1187037 d!1615528))

(assert (=> bs!1187037 m!6052224))

(assert (=> bs!1187037 m!6052272))

(declare-fun m!6052634 () Bool)

(assert (=> bs!1187037 m!6052634))

(assert (=> bs!1187037 m!6052302))

(assert (=> b!5017145 d!1615528))

(declare-fun d!1615530 () Bool)

(declare-fun lt!2076348 () Int)

(assert (=> d!1615530 (= lt!2076348 (size!38512 (list!18659 (_1!34856 lt!2076110))))))

(declare-fun size!38516 (Conc!15333) Int)

(assert (=> d!1615530 (= lt!2076348 (size!38516 (c!857242 (_1!34856 lt!2076110))))))

(assert (=> d!1615530 (= (size!38513 (_1!34856 lt!2076110)) lt!2076348)))

(declare-fun bs!1187038 () Bool)

(assert (= bs!1187038 d!1615530))

(assert (=> bs!1187038 m!6052288))

(assert (=> bs!1187038 m!6052288))

(declare-fun m!6052636 () Bool)

(assert (=> bs!1187038 m!6052636))

(declare-fun m!6052638 () Bool)

(assert (=> bs!1187038 m!6052638))

(assert (=> b!5017145 d!1615530))

(declare-fun d!1615532 () Bool)

(declare-fun c!857315 () Bool)

(assert (=> d!1615532 (= c!857315 (isEmpty!31391 (_1!34855 lt!2076125)))))

(declare-fun e!3134474 () Bool)

(assert (=> d!1615532 (= (matchZipper!582 z!4183 (_1!34855 lt!2076125)) e!3134474)))

(declare-fun b!5017472 () Bool)

(declare-fun nullableZipper!893 ((Set Context!6478)) Bool)

(assert (=> b!5017472 (= e!3134474 (nullableZipper!893 z!4183))))

(declare-fun b!5017473 () Bool)

(declare-fun derivationStepZipper!642 ((Set Context!6478) C!27878) (Set Context!6478))

(assert (=> b!5017473 (= e!3134474 (matchZipper!582 (derivationStepZipper!642 z!4183 (head!10748 (_1!34855 lt!2076125))) (tail!9881 (_1!34855 lt!2076125))))))

(assert (= (and d!1615532 c!857315) b!5017472))

(assert (= (and d!1615532 (not c!857315)) b!5017473))

(assert (=> d!1615532 m!6052264))

(declare-fun m!6052640 () Bool)

(assert (=> b!5017472 m!6052640))

(assert (=> b!5017473 m!6052442))

(assert (=> b!5017473 m!6052442))

(declare-fun m!6052642 () Bool)

(assert (=> b!5017473 m!6052642))

(assert (=> b!5017473 m!6052436))

(assert (=> b!5017473 m!6052642))

(assert (=> b!5017473 m!6052436))

(declare-fun m!6052644 () Bool)

(assert (=> b!5017473 m!6052644))

(assert (=> b!5017145 d!1615532))

(declare-fun d!1615534 () Bool)

(declare-fun lt!2076349 () Int)

(assert (=> d!1615534 (>= lt!2076349 0)))

(declare-fun e!3134475 () Int)

(assert (=> d!1615534 (= lt!2076349 e!3134475)))

(declare-fun c!857316 () Bool)

(assert (=> d!1615534 (= c!857316 (is-Nil!57922 (_1!34855 lt!2076125)))))

(assert (=> d!1615534 (= (size!38512 (_1!34855 lt!2076125)) lt!2076349)))

(declare-fun b!5017474 () Bool)

(assert (=> b!5017474 (= e!3134475 0)))

(declare-fun b!5017475 () Bool)

(assert (=> b!5017475 (= e!3134475 (+ 1 (size!38512 (t!370422 (_1!34855 lt!2076125)))))))

(assert (= (and d!1615534 c!857316) b!5017474))

(assert (= (and d!1615534 (not c!857316)) b!5017475))

(declare-fun m!6052646 () Bool)

(assert (=> b!5017475 m!6052646))

(assert (=> b!5017145 d!1615534))

(declare-fun d!1615536 () Bool)

(assert (=> d!1615536 (= (matchR!6778 r!12727 lt!2076128) (matchZipper!582 z!4183 lt!2076128))))

(declare-fun lt!2076350 () Unit!149159)

(assert (=> d!1615536 (= lt!2076350 (choose!37123 z!4183 lt!2076116 r!12727 lt!2076128))))

(assert (=> d!1615536 (validRegex!6111 r!12727)))

(assert (=> d!1615536 (= (theoremZipperRegexEquiv!186 z!4183 lt!2076116 r!12727 lt!2076128) lt!2076350)))

(declare-fun bs!1187039 () Bool)

(assert (= bs!1187039 d!1615536))

(assert (=> bs!1187039 m!6052270))

(assert (=> bs!1187039 m!6052252))

(declare-fun m!6052648 () Bool)

(assert (=> bs!1187039 m!6052648))

(assert (=> bs!1187039 m!6052302))

(assert (=> b!5017145 d!1615536))

(declare-fun d!1615538 () Bool)

(declare-fun lt!2076353 () Regex!13814)

(assert (=> d!1615538 (validRegex!6111 lt!2076353)))

(declare-fun generalisedUnion!591 (List!58047) Regex!13814)

(declare-fun unfocusZipperList!104 (List!58048) List!58047)

(assert (=> d!1615538 (= lt!2076353 (generalisedUnion!591 (unfocusZipperList!104 lt!2076116)))))

(assert (=> d!1615538 (= (unfocusZipper!341 lt!2076116) lt!2076353)))

(declare-fun bs!1187040 () Bool)

(assert (= bs!1187040 d!1615538))

(declare-fun m!6052650 () Bool)

(assert (=> bs!1187040 m!6052650))

(declare-fun m!6052652 () Bool)

(assert (=> bs!1187040 m!6052652))

(assert (=> bs!1187040 m!6052652))

(declare-fun m!6052654 () Bool)

(assert (=> bs!1187040 m!6052654))

(assert (=> b!5017144 d!1615538))

(declare-fun d!1615540 () Bool)

(declare-fun e!3134478 () Bool)

(assert (=> d!1615540 e!3134478))

(declare-fun res!2139501 () Bool)

(assert (=> d!1615540 (=> (not res!2139501) (not e!3134478))))

(declare-fun lt!2076356 () List!58048)

(declare-fun noDuplicate!1040 (List!58048) Bool)

(assert (=> d!1615540 (= res!2139501 (noDuplicate!1040 lt!2076356))))

(declare-fun choose!37124 ((Set Context!6478)) List!58048)

(assert (=> d!1615540 (= lt!2076356 (choose!37124 z!4183))))

(assert (=> d!1615540 (= (toList!8099 z!4183) lt!2076356)))

(declare-fun b!5017478 () Bool)

(declare-fun content!10272 (List!58048) (Set Context!6478))

(assert (=> b!5017478 (= e!3134478 (= (content!10272 lt!2076356) z!4183))))

(assert (= (and d!1615540 res!2139501) b!5017478))

(declare-fun m!6052656 () Bool)

(assert (=> d!1615540 m!6052656))

(declare-fun m!6052658 () Bool)

(assert (=> d!1615540 m!6052658))

(declare-fun m!6052660 () Bool)

(assert (=> b!5017478 m!6052660))

(assert (=> b!5017144 d!1615540))

(declare-fun d!1615542 () Bool)

(declare-fun e!3134479 () Bool)

(assert (=> d!1615542 e!3134479))

(declare-fun res!2139502 () Bool)

(assert (=> d!1615542 (=> (not res!2139502) (not e!3134479))))

(declare-fun lt!2076357 () List!58046)

(assert (=> d!1615542 (= res!2139502 (= (content!10271 lt!2076357) (set.union (content!10271 lt!2076128) (content!10271 lt!2076126))))))

(declare-fun e!3134480 () List!58046)

(assert (=> d!1615542 (= lt!2076357 e!3134480)))

(declare-fun c!857317 () Bool)

(assert (=> d!1615542 (= c!857317 (is-Nil!57922 lt!2076128))))

(assert (=> d!1615542 (= (++!12662 lt!2076128 lt!2076126) lt!2076357)))

(declare-fun b!5017481 () Bool)

(declare-fun res!2139503 () Bool)

(assert (=> b!5017481 (=> (not res!2139503) (not e!3134479))))

(assert (=> b!5017481 (= res!2139503 (= (size!38512 lt!2076357) (+ (size!38512 lt!2076128) (size!38512 lt!2076126))))))

(declare-fun b!5017479 () Bool)

(assert (=> b!5017479 (= e!3134480 lt!2076126)))

(declare-fun b!5017482 () Bool)

(assert (=> b!5017482 (= e!3134479 (or (not (= lt!2076126 Nil!57922)) (= lt!2076357 lt!2076128)))))

(declare-fun b!5017480 () Bool)

(assert (=> b!5017480 (= e!3134480 (Cons!57922 (h!64370 lt!2076128) (++!12662 (t!370422 lt!2076128) lt!2076126)))))

(assert (= (and d!1615542 c!857317) b!5017479))

(assert (= (and d!1615542 (not c!857317)) b!5017480))

(assert (= (and d!1615542 res!2139502) b!5017481))

(assert (= (and b!5017481 res!2139503) b!5017482))

(declare-fun m!6052662 () Bool)

(assert (=> d!1615542 m!6052662))

(declare-fun m!6052664 () Bool)

(assert (=> d!1615542 m!6052664))

(declare-fun m!6052666 () Bool)

(assert (=> d!1615542 m!6052666))

(declare-fun m!6052668 () Bool)

(assert (=> b!5017481 m!6052668))

(assert (=> b!5017481 m!6052262))

(declare-fun m!6052670 () Bool)

(assert (=> b!5017481 m!6052670))

(declare-fun m!6052672 () Bool)

(assert (=> b!5017480 m!6052672))

(assert (=> b!5017142 d!1615542))

(declare-fun d!1615544 () Bool)

(assert (=> d!1615544 (= (list!18659 (_1!34856 lt!2076110)) (list!18661 (c!857242 (_1!34856 lt!2076110))))))

(declare-fun bs!1187041 () Bool)

(assert (= bs!1187041 d!1615544))

(declare-fun m!6052674 () Bool)

(assert (=> bs!1187041 m!6052674))

(assert (=> b!5017142 d!1615544))

(declare-fun d!1615546 () Bool)

(declare-fun lt!2076358 () Int)

(assert (=> d!1615546 (= lt!2076358 (size!38512 (list!18659 totalInput!1012)))))

(assert (=> d!1615546 (= lt!2076358 (size!38516 (c!857242 totalInput!1012)))))

(assert (=> d!1615546 (= (size!38513 totalInput!1012) lt!2076358)))

(declare-fun bs!1187042 () Bool)

(assert (= bs!1187042 d!1615546))

(assert (=> bs!1187042 m!6052212))

(assert (=> bs!1187042 m!6052212))

(declare-fun m!6052676 () Bool)

(assert (=> bs!1187042 m!6052676))

(declare-fun m!6052678 () Bool)

(assert (=> bs!1187042 m!6052678))

(assert (=> b!5017142 d!1615546))

(declare-fun d!1615548 () Bool)

(declare-fun lt!2076363 () tuple2!63106)

(assert (=> d!1615548 (= (++!12662 (list!18659 (_1!34856 lt!2076363)) (list!18659 (_2!34856 lt!2076363))) (list!18659 input!5597))))

(declare-fun lt!2076364 () Int)

(declare-fun splitAt!464 (BalanceConc!30096 Int) tuple2!63106)

(assert (=> d!1615548 (= lt!2076363 (splitAt!464 input!5597 (findLongestMatchInnerZipperFastV2!154 z!4183 (- lt!2076364 (size!38513 input!5597)) totalInput!1012 lt!2076364)))))

(assert (=> d!1615548 (= lt!2076364 (size!38513 totalInput!1012))))

(assert (=> d!1615548 (isSuffix!1380 (list!18659 input!5597) (list!18659 totalInput!1012))))

(assert (=> d!1615548 (= (findLongestMatchZipperFastV2!116 z!4183 input!5597 totalInput!1012) lt!2076363)))

(declare-fun bs!1187043 () Bool)

(assert (= bs!1187043 d!1615548))

(declare-fun m!6052680 () Bool)

(assert (=> bs!1187043 m!6052680))

(declare-fun m!6052682 () Bool)

(assert (=> bs!1187043 m!6052682))

(assert (=> bs!1187043 m!6052284))

(assert (=> bs!1187043 m!6052214))

(declare-fun m!6052684 () Bool)

(assert (=> bs!1187043 m!6052684))

(assert (=> bs!1187043 m!6052680))

(assert (=> bs!1187043 m!6052682))

(declare-fun m!6052686 () Bool)

(assert (=> bs!1187043 m!6052686))

(assert (=> bs!1187043 m!6052214))

(assert (=> bs!1187043 m!6052212))

(declare-fun m!6052688 () Bool)

(assert (=> bs!1187043 m!6052688))

(assert (=> bs!1187043 m!6052292))

(assert (=> bs!1187043 m!6052212))

(assert (=> bs!1187043 m!6052684))

(declare-fun m!6052690 () Bool)

(assert (=> bs!1187043 m!6052690))

(assert (=> b!5017142 d!1615548))

(declare-fun d!1615550 () Bool)

(declare-fun lt!2076384 () tuple2!63104)

(assert (=> d!1615550 (= (++!12662 (_1!34855 lt!2076384) (_2!34855 lt!2076384)) lt!2076130)))

(declare-fun sizeTr!409 (List!58046 Int) Int)

(assert (=> d!1615550 (= lt!2076384 (findLongestMatchInner!2003 r!12727 Nil!57922 0 lt!2076130 lt!2076130 (sizeTr!409 lt!2076130 0)))))

(declare-fun lt!2076387 () Unit!149159)

(declare-fun lt!2076382 () Unit!149159)

(assert (=> d!1615550 (= lt!2076387 lt!2076382)))

(declare-fun lt!2076388 () List!58046)

(declare-fun lt!2076386 () Int)

(assert (=> d!1615550 (= (sizeTr!409 lt!2076388 lt!2076386) (+ (size!38512 lt!2076388) lt!2076386))))

(declare-fun lemmaSizeTrEqualsSize!408 (List!58046 Int) Unit!149159)

(assert (=> d!1615550 (= lt!2076382 (lemmaSizeTrEqualsSize!408 lt!2076388 lt!2076386))))

(assert (=> d!1615550 (= lt!2076386 0)))

(assert (=> d!1615550 (= lt!2076388 Nil!57922)))

(declare-fun lt!2076383 () Unit!149159)

(declare-fun lt!2076381 () Unit!149159)

(assert (=> d!1615550 (= lt!2076383 lt!2076381)))

(declare-fun lt!2076385 () Int)

(assert (=> d!1615550 (= (sizeTr!409 lt!2076130 lt!2076385) (+ (size!38512 lt!2076130) lt!2076385))))

(assert (=> d!1615550 (= lt!2076381 (lemmaSizeTrEqualsSize!408 lt!2076130 lt!2076385))))

(assert (=> d!1615550 (= lt!2076385 0)))

(assert (=> d!1615550 (validRegex!6111 r!12727)))

(assert (=> d!1615550 (= (findLongestMatch!1827 r!12727 lt!2076130) lt!2076384)))

(declare-fun bs!1187044 () Bool)

(assert (= bs!1187044 d!1615550))

(declare-fun m!6052692 () Bool)

(assert (=> bs!1187044 m!6052692))

(assert (=> bs!1187044 m!6052234))

(assert (=> bs!1187044 m!6052302))

(declare-fun m!6052694 () Bool)

(assert (=> bs!1187044 m!6052694))

(declare-fun m!6052696 () Bool)

(assert (=> bs!1187044 m!6052696))

(declare-fun m!6052698 () Bool)

(assert (=> bs!1187044 m!6052698))

(declare-fun m!6052700 () Bool)

(assert (=> bs!1187044 m!6052700))

(declare-fun m!6052702 () Bool)

(assert (=> bs!1187044 m!6052702))

(assert (=> bs!1187044 m!6052702))

(declare-fun m!6052704 () Bool)

(assert (=> bs!1187044 m!6052704))

(declare-fun m!6052706 () Bool)

(assert (=> bs!1187044 m!6052706))

(assert (=> b!5017142 d!1615550))

(declare-fun d!1615552 () Bool)

(declare-fun lt!2076389 () Int)

(assert (=> d!1615552 (= lt!2076389 (size!38512 (list!18659 input!5597)))))

(assert (=> d!1615552 (= lt!2076389 (size!38516 (c!857242 input!5597)))))

(assert (=> d!1615552 (= (size!38513 input!5597) lt!2076389)))

(declare-fun bs!1187045 () Bool)

(assert (= bs!1187045 d!1615552))

(assert (=> bs!1187045 m!6052214))

(assert (=> bs!1187045 m!6052214))

(declare-fun m!6052708 () Bool)

(assert (=> bs!1187045 m!6052708))

(declare-fun m!6052710 () Bool)

(assert (=> bs!1187045 m!6052710))

(assert (=> b!5017142 d!1615552))

(declare-fun d!1615554 () Bool)

(assert (=> d!1615554 (= (list!18659 (_2!34856 lt!2076110)) (list!18661 (c!857242 (_2!34856 lt!2076110))))))

(declare-fun bs!1187046 () Bool)

(assert (= bs!1187046 d!1615554))

(declare-fun m!6052712 () Bool)

(assert (=> bs!1187046 m!6052712))

(assert (=> b!5017142 d!1615554))

(declare-fun b!5017501 () Bool)

(declare-fun res!2139516 () Bool)

(declare-fun e!3134497 () Bool)

(assert (=> b!5017501 (=> (not res!2139516) (not e!3134497))))

(declare-fun call!350460 () Bool)

(assert (=> b!5017501 (= res!2139516 call!350460)))

(declare-fun e!3134499 () Bool)

(assert (=> b!5017501 (= e!3134499 e!3134497)))

(declare-fun b!5017502 () Bool)

(declare-fun e!3134500 () Bool)

(declare-fun e!3134495 () Bool)

(assert (=> b!5017502 (= e!3134500 e!3134495)))

(declare-fun res!2139515 () Bool)

(assert (=> b!5017502 (=> (not res!2139515) (not e!3134495))))

(declare-fun call!350462 () Bool)

(assert (=> b!5017502 (= res!2139515 call!350462)))

(declare-fun b!5017503 () Bool)

(declare-fun res!2139514 () Bool)

(assert (=> b!5017503 (=> res!2139514 e!3134500)))

(assert (=> b!5017503 (= res!2139514 (not (is-Concat!22607 r!12727)))))

(assert (=> b!5017503 (= e!3134499 e!3134500)))

(declare-fun b!5017504 () Bool)

(declare-fun e!3134496 () Bool)

(declare-fun call!350461 () Bool)

(assert (=> b!5017504 (= e!3134496 call!350461)))

(declare-fun c!857323 () Bool)

(declare-fun c!857322 () Bool)

(declare-fun bm!350456 () Bool)

(assert (=> bm!350456 (= call!350461 (validRegex!6111 (ite c!857322 (reg!14143 r!12727) (ite c!857323 (regTwo!28141 r!12727) (regOne!28140 r!12727)))))))

(declare-fun b!5017505 () Bool)

(declare-fun e!3134498 () Bool)

(assert (=> b!5017505 (= e!3134498 e!3134499)))

(assert (=> b!5017505 (= c!857323 (is-Union!13814 r!12727))))

(declare-fun b!5017506 () Bool)

(assert (=> b!5017506 (= e!3134495 call!350460)))

(declare-fun b!5017507 () Bool)

(declare-fun e!3134501 () Bool)

(assert (=> b!5017507 (= e!3134501 e!3134498)))

(assert (=> b!5017507 (= c!857322 (is-Star!13814 r!12727))))

(declare-fun b!5017508 () Bool)

(assert (=> b!5017508 (= e!3134498 e!3134496)))

(declare-fun res!2139518 () Bool)

(assert (=> b!5017508 (= res!2139518 (not (nullable!4698 (reg!14143 r!12727))))))

(assert (=> b!5017508 (=> (not res!2139518) (not e!3134496))))

(declare-fun d!1615556 () Bool)

(declare-fun res!2139517 () Bool)

(assert (=> d!1615556 (=> res!2139517 e!3134501)))

(assert (=> d!1615556 (= res!2139517 (is-ElementMatch!13814 r!12727))))

(assert (=> d!1615556 (= (validRegex!6111 r!12727) e!3134501)))

(declare-fun bm!350455 () Bool)

(assert (=> bm!350455 (= call!350462 call!350461)))

(declare-fun bm!350457 () Bool)

(assert (=> bm!350457 (= call!350460 (validRegex!6111 (ite c!857323 (regOne!28141 r!12727) (regTwo!28140 r!12727))))))

(declare-fun b!5017509 () Bool)

(assert (=> b!5017509 (= e!3134497 call!350462)))

(assert (= (and d!1615556 (not res!2139517)) b!5017507))

(assert (= (and b!5017507 c!857322) b!5017508))

(assert (= (and b!5017507 (not c!857322)) b!5017505))

(assert (= (and b!5017508 res!2139518) b!5017504))

(assert (= (and b!5017505 c!857323) b!5017501))

(assert (= (and b!5017505 (not c!857323)) b!5017503))

(assert (= (and b!5017501 res!2139516) b!5017509))

(assert (= (and b!5017503 (not res!2139514)) b!5017502))

(assert (= (and b!5017502 res!2139515) b!5017506))

(assert (= (or b!5017509 b!5017502) bm!350455))

(assert (= (or b!5017501 b!5017506) bm!350457))

(assert (= (or b!5017504 bm!350455) bm!350456))

(declare-fun m!6052714 () Bool)

(assert (=> bm!350456 m!6052714))

(declare-fun m!6052716 () Bool)

(assert (=> b!5017508 m!6052716))

(declare-fun m!6052718 () Bool)

(assert (=> bm!350457 m!6052718))

(assert (=> start!530068 d!1615556))

(declare-fun d!1615558 () Bool)

(declare-fun isBalanced!4281 (Conc!15333) Bool)

(assert (=> d!1615558 (= (inv!76148 input!5597) (isBalanced!4281 (c!857242 input!5597)))))

(declare-fun bs!1187047 () Bool)

(assert (= bs!1187047 d!1615558))

(declare-fun m!6052720 () Bool)

(assert (=> bs!1187047 m!6052720))

(assert (=> start!530068 d!1615558))

(declare-fun d!1615560 () Bool)

(assert (=> d!1615560 (= (inv!76148 totalInput!1012) (isBalanced!4281 (c!857242 totalInput!1012)))))

(declare-fun bs!1187048 () Bool)

(assert (= bs!1187048 d!1615560))

(declare-fun m!6052722 () Bool)

(assert (=> bs!1187048 m!6052722))

(assert (=> start!530068 d!1615560))

(declare-fun d!1615562 () Bool)

(declare-fun lt!2076392 () Bool)

(assert (=> d!1615562 (= lt!2076392 (isEmpty!31391 (list!18659 (_1!34856 lt!2076110))))))

(declare-fun isEmpty!31395 (Conc!15333) Bool)

(assert (=> d!1615562 (= lt!2076392 (isEmpty!31395 (c!857242 (_1!34856 lt!2076110))))))

(assert (=> d!1615562 (= (isEmpty!31392 (_1!34856 lt!2076110)) lt!2076392)))

(declare-fun bs!1187049 () Bool)

(assert (= bs!1187049 d!1615562))

(assert (=> bs!1187049 m!6052288))

(assert (=> bs!1187049 m!6052288))

(declare-fun m!6052724 () Bool)

(assert (=> bs!1187049 m!6052724))

(declare-fun m!6052726 () Bool)

(assert (=> bs!1187049 m!6052726))

(assert (=> b!5017151 d!1615562))

(declare-fun d!1615564 () Bool)

(declare-fun lt!2076393 () Int)

(assert (=> d!1615564 (>= lt!2076393 0)))

(declare-fun e!3134502 () Int)

(assert (=> d!1615564 (= lt!2076393 e!3134502)))

(declare-fun c!857324 () Bool)

(assert (=> d!1615564 (= c!857324 (is-Nil!57922 lt!2076130))))

(assert (=> d!1615564 (= (size!38512 lt!2076130) lt!2076393)))

(declare-fun b!5017510 () Bool)

(assert (=> b!5017510 (= e!3134502 0)))

(declare-fun b!5017511 () Bool)

(assert (=> b!5017511 (= e!3134502 (+ 1 (size!38512 (t!370422 lt!2076130))))))

(assert (= (and d!1615564 c!857324) b!5017510))

(assert (= (and d!1615564 (not c!857324)) b!5017511))

(declare-fun m!6052728 () Bool)

(assert (=> b!5017511 m!6052728))

(assert (=> b!5017141 d!1615564))

(declare-fun d!1615566 () Bool)

(assert (=> d!1615566 (isPrefix!5367 (take!673 lt!2076115 lt!2076114) lt!2076115)))

(declare-fun lt!2076396 () Unit!149159)

(declare-fun choose!37125 (List!58046 Int) Unit!149159)

(assert (=> d!1615566 (= lt!2076396 (choose!37125 lt!2076115 lt!2076114))))

(assert (=> d!1615566 (>= lt!2076114 0)))

(assert (=> d!1615566 (= (lemmaTakeIsPrefix!167 lt!2076115 lt!2076114) lt!2076396)))

(declare-fun bs!1187050 () Bool)

(assert (= bs!1187050 d!1615566))

(assert (=> bs!1187050 m!6052228))

(assert (=> bs!1187050 m!6052228))

(assert (=> bs!1187050 m!6052230))

(declare-fun m!6052730 () Bool)

(assert (=> bs!1187050 m!6052730))

(assert (=> b!5017141 d!1615566))

(declare-fun b!5017528 () Bool)

(declare-fun e!3134515 () Int)

(declare-fun lt!2076403 () Int)

(assert (=> b!5017528 (= e!3134515 (+ 1 lt!2076403))))

(declare-fun b!5017529 () Bool)

(declare-fun e!3134516 () Int)

(assert (=> b!5017529 (= e!3134516 0)))

(declare-fun b!5017530 () Bool)

(assert (=> b!5017530 (= e!3134516 1)))

(declare-fun b!5017531 () Bool)

(declare-fun e!3134517 () Int)

(assert (=> b!5017531 (= e!3134517 e!3134515)))

(declare-fun lt!2076405 () (Set Context!6478))

(declare-fun apply!14014 (BalanceConc!30096 Int) C!27878)

(assert (=> b!5017531 (= lt!2076405 (derivationStepZipper!642 z!4183 (apply!14014 totalInput!1012 lt!2076114)))))

(assert (=> b!5017531 (= lt!2076403 (findLongestMatchInnerZipperFastV2!154 lt!2076405 (+ lt!2076114 1) totalInput!1012 lt!2076120))))

(declare-fun c!857332 () Bool)

(assert (=> b!5017531 (= c!857332 (> lt!2076403 0))))

(declare-fun b!5017532 () Bool)

(declare-fun e!3134514 () Bool)

(assert (=> b!5017532 (= e!3134514 (<= lt!2076114 (size!38513 totalInput!1012)))))

(declare-fun d!1615568 () Bool)

(declare-fun lt!2076404 () Int)

(assert (=> d!1615568 (and (>= lt!2076404 0) (<= lt!2076404 (- lt!2076120 lt!2076114)))))

(assert (=> d!1615568 (= lt!2076404 e!3134517)))

(declare-fun c!857333 () Bool)

(declare-fun e!3134513 () Bool)

(assert (=> d!1615568 (= c!857333 e!3134513)))

(declare-fun res!2139524 () Bool)

(assert (=> d!1615568 (=> res!2139524 e!3134513)))

(assert (=> d!1615568 (= res!2139524 (= lt!2076114 lt!2076120))))

(assert (=> d!1615568 e!3134514))

(declare-fun res!2139523 () Bool)

(assert (=> d!1615568 (=> (not res!2139523) (not e!3134514))))

(assert (=> d!1615568 (= res!2139523 (>= lt!2076114 0))))

(assert (=> d!1615568 (= (findLongestMatchInnerZipperFastV2!154 z!4183 lt!2076114 totalInput!1012 lt!2076120) lt!2076404)))

(declare-fun b!5017533 () Bool)

(assert (=> b!5017533 (= e!3134517 0)))

(declare-fun b!5017534 () Bool)

(declare-fun c!857331 () Bool)

(assert (=> b!5017534 (= c!857331 (nullableZipper!893 lt!2076405))))

(assert (=> b!5017534 (= e!3134515 e!3134516)))

(declare-fun b!5017535 () Bool)

(declare-fun lostCauseZipper!840 ((Set Context!6478)) Bool)

(assert (=> b!5017535 (= e!3134513 (lostCauseZipper!840 z!4183))))

(assert (= (and d!1615568 res!2139523) b!5017532))

(assert (= (and d!1615568 (not res!2139524)) b!5017535))

(assert (= (and d!1615568 c!857333) b!5017533))

(assert (= (and d!1615568 (not c!857333)) b!5017531))

(assert (= (and b!5017531 c!857332) b!5017528))

(assert (= (and b!5017531 (not c!857332)) b!5017534))

(assert (= (and b!5017534 c!857331) b!5017530))

(assert (= (and b!5017534 (not c!857331)) b!5017529))

(declare-fun m!6052732 () Bool)

(assert (=> b!5017531 m!6052732))

(assert (=> b!5017531 m!6052732))

(declare-fun m!6052734 () Bool)

(assert (=> b!5017531 m!6052734))

(declare-fun m!6052736 () Bool)

(assert (=> b!5017531 m!6052736))

(assert (=> b!5017532 m!6052292))

(declare-fun m!6052738 () Bool)

(assert (=> b!5017534 m!6052738))

(declare-fun m!6052740 () Bool)

(assert (=> b!5017535 m!6052740))

(assert (=> b!5017141 d!1615568))

(declare-fun d!1615570 () Bool)

(assert (=> d!1615570 (isPrefix!5367 lt!2076128 (++!12662 lt!2076128 lt!2076126))))

(declare-fun lt!2076408 () Unit!149159)

(declare-fun choose!37126 (List!58046 List!58046) Unit!149159)

(assert (=> d!1615570 (= lt!2076408 (choose!37126 lt!2076128 lt!2076126))))

(assert (=> d!1615570 (= (lemmaConcatTwoListThenFirstIsPrefix!3465 lt!2076128 lt!2076126) lt!2076408)))

(declare-fun bs!1187051 () Bool)

(assert (= bs!1187051 d!1615570))

(assert (=> bs!1187051 m!6052286))

(assert (=> bs!1187051 m!6052286))

(declare-fun m!6052742 () Bool)

(assert (=> bs!1187051 m!6052742))

(declare-fun m!6052744 () Bool)

(assert (=> bs!1187051 m!6052744))

(assert (=> b!5017141 d!1615570))

(declare-fun d!1615572 () Bool)

(declare-fun e!3134519 () Bool)

(assert (=> d!1615572 e!3134519))

(declare-fun res!2139525 () Bool)

(assert (=> d!1615572 (=> res!2139525 e!3134519)))

(declare-fun lt!2076409 () Bool)

(assert (=> d!1615572 (= res!2139525 (not lt!2076409))))

(declare-fun e!3134518 () Bool)

(assert (=> d!1615572 (= lt!2076409 e!3134518)))

(declare-fun res!2139528 () Bool)

(assert (=> d!1615572 (=> res!2139528 e!3134518)))

(assert (=> d!1615572 (= res!2139528 (is-Nil!57922 (take!673 lt!2076115 lt!2076114)))))

(assert (=> d!1615572 (= (isPrefix!5367 (take!673 lt!2076115 lt!2076114) lt!2076115) lt!2076409)))

(declare-fun b!5017538 () Bool)

(declare-fun e!3134520 () Bool)

(assert (=> b!5017538 (= e!3134520 (isPrefix!5367 (tail!9881 (take!673 lt!2076115 lt!2076114)) (tail!9881 lt!2076115)))))

(declare-fun b!5017539 () Bool)

(assert (=> b!5017539 (= e!3134519 (>= (size!38512 lt!2076115) (size!38512 (take!673 lt!2076115 lt!2076114))))))

(declare-fun b!5017537 () Bool)

(declare-fun res!2139527 () Bool)

(assert (=> b!5017537 (=> (not res!2139527) (not e!3134520))))

(assert (=> b!5017537 (= res!2139527 (= (head!10748 (take!673 lt!2076115 lt!2076114)) (head!10748 lt!2076115)))))

(declare-fun b!5017536 () Bool)

(assert (=> b!5017536 (= e!3134518 e!3134520)))

(declare-fun res!2139526 () Bool)

(assert (=> b!5017536 (=> (not res!2139526) (not e!3134520))))

(assert (=> b!5017536 (= res!2139526 (not (is-Nil!57922 lt!2076115)))))

(assert (= (and d!1615572 (not res!2139528)) b!5017536))

(assert (= (and b!5017536 res!2139526) b!5017537))

(assert (= (and b!5017537 res!2139527) b!5017538))

(assert (= (and d!1615572 (not res!2139525)) b!5017539))

(assert (=> b!5017538 m!6052228))

(declare-fun m!6052746 () Bool)

(assert (=> b!5017538 m!6052746))

(declare-fun m!6052748 () Bool)

(assert (=> b!5017538 m!6052748))

(assert (=> b!5017538 m!6052746))

(assert (=> b!5017538 m!6052748))

(declare-fun m!6052750 () Bool)

(assert (=> b!5017538 m!6052750))

(assert (=> b!5017539 m!6052412))

(assert (=> b!5017539 m!6052228))

(declare-fun m!6052752 () Bool)

(assert (=> b!5017539 m!6052752))

(assert (=> b!5017537 m!6052228))

(declare-fun m!6052754 () Bool)

(assert (=> b!5017537 m!6052754))

(declare-fun m!6052756 () Bool)

(assert (=> b!5017537 m!6052756))

(assert (=> b!5017141 d!1615572))

(declare-fun d!1615574 () Bool)

(assert (=> d!1615574 (= (isEmpty!31391 (_1!34855 lt!2076127)) (is-Nil!57922 (_1!34855 lt!2076127)))))

(assert (=> b!5017141 d!1615574))

(declare-fun d!1615576 () Bool)

(declare-fun lt!2076410 () Int)

(assert (=> d!1615576 (>= lt!2076410 0)))

(declare-fun e!3134521 () Int)

(assert (=> d!1615576 (= lt!2076410 e!3134521)))

(declare-fun c!857334 () Bool)

(assert (=> d!1615576 (= c!857334 (is-Nil!57922 Nil!57922))))

(assert (=> d!1615576 (= (size!38512 Nil!57922) lt!2076410)))

(declare-fun b!5017540 () Bool)

(assert (=> b!5017540 (= e!3134521 0)))

(declare-fun b!5017541 () Bool)

(assert (=> b!5017541 (= e!3134521 (+ 1 (size!38512 (t!370422 Nil!57922))))))

(assert (= (and d!1615576 c!857334) b!5017540))

(assert (= (and d!1615576 (not c!857334)) b!5017541))

(declare-fun m!6052758 () Bool)

(assert (=> b!5017541 m!6052758))

(assert (=> b!5017141 d!1615576))

(declare-fun d!1615578 () Bool)

(declare-fun e!3134526 () Bool)

(assert (=> d!1615578 e!3134526))

(declare-fun res!2139533 () Bool)

(assert (=> d!1615578 (=> res!2139533 e!3134526)))

(assert (=> d!1615578 (= res!2139533 (= (findLongestMatchInnerZipperFastV2!154 z!4183 lt!2076114 totalInput!1012 (size!38513 totalInput!1012)) 0))))

(declare-fun lt!2076413 () Unit!149159)

(declare-fun choose!37129 ((Set Context!6478) Int BalanceConc!30096) Unit!149159)

(assert (=> d!1615578 (= lt!2076413 (choose!37129 z!4183 lt!2076114 totalInput!1012))))

(declare-fun e!3134527 () Bool)

(assert (=> d!1615578 e!3134527))

(declare-fun res!2139534 () Bool)

(assert (=> d!1615578 (=> (not res!2139534) (not e!3134527))))

(assert (=> d!1615578 (= res!2139534 (>= lt!2076114 0))))

(assert (=> d!1615578 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!73 z!4183 lt!2076114 totalInput!1012) lt!2076413)))

(declare-fun b!5017546 () Bool)

(assert (=> b!5017546 (= e!3134527 (<= lt!2076114 (size!38513 totalInput!1012)))))

(declare-fun b!5017547 () Bool)

(assert (=> b!5017547 (= e!3134526 (matchZipper!582 z!4183 (take!673 (drop!2477 (list!18659 totalInput!1012) lt!2076114) (findLongestMatchInnerZipperFastV2!154 z!4183 lt!2076114 totalInput!1012 (size!38513 totalInput!1012)))))))

(assert (= (and d!1615578 res!2139534) b!5017546))

(assert (= (and d!1615578 (not res!2139533)) b!5017547))

(assert (=> d!1615578 m!6052292))

(assert (=> d!1615578 m!6052292))

(declare-fun m!6052760 () Bool)

(assert (=> d!1615578 m!6052760))

(declare-fun m!6052762 () Bool)

(assert (=> d!1615578 m!6052762))

(assert (=> b!5017546 m!6052292))

(assert (=> b!5017547 m!6052212))

(declare-fun m!6052764 () Bool)

(assert (=> b!5017547 m!6052764))

(assert (=> b!5017547 m!6052212))

(assert (=> b!5017547 m!6052292))

(assert (=> b!5017547 m!6052764))

(assert (=> b!5017547 m!6052760))

(declare-fun m!6052766 () Bool)

(assert (=> b!5017547 m!6052766))

(assert (=> b!5017547 m!6052292))

(assert (=> b!5017547 m!6052760))

(assert (=> b!5017547 m!6052766))

(declare-fun m!6052768 () Bool)

(assert (=> b!5017547 m!6052768))

(assert (=> b!5017141 d!1615578))

(declare-fun b!5017731 () Bool)

(declare-fun e!3134641 () tuple2!63104)

(assert (=> b!5017731 (= e!3134641 (tuple2!63105 Nil!57922 Nil!57922))))

(declare-fun b!5017732 () Bool)

(declare-fun e!3134642 () Bool)

(declare-fun e!3134638 () Bool)

(assert (=> b!5017732 (= e!3134642 e!3134638)))

(declare-fun res!2139608 () Bool)

(assert (=> b!5017732 (=> res!2139608 e!3134638)))

(declare-fun lt!2076514 () tuple2!63104)

(assert (=> b!5017732 (= res!2139608 (isEmpty!31391 (_1!34855 lt!2076514)))))

(declare-fun b!5017733 () Bool)

(declare-fun e!3134635 () Unit!149159)

(declare-fun Unit!149166 () Unit!149159)

(assert (=> b!5017733 (= e!3134635 Unit!149166)))

(declare-fun lt!2076511 () Unit!149159)

(declare-fun call!350500 () Unit!149159)

(assert (=> b!5017733 (= lt!2076511 call!350500)))

(declare-fun call!350499 () Bool)

(assert (=> b!5017733 call!350499))

(declare-fun lt!2076518 () Unit!149159)

(assert (=> b!5017733 (= lt!2076518 lt!2076511)))

(declare-fun lt!2076515 () Unit!149159)

(declare-fun call!350501 () Unit!149159)

(assert (=> b!5017733 (= lt!2076515 call!350501)))

(assert (=> b!5017733 (= lt!2076130 Nil!57922)))

(declare-fun lt!2076521 () Unit!149159)

(assert (=> b!5017733 (= lt!2076521 lt!2076515)))

(assert (=> b!5017733 false))

(declare-fun b!5017734 () Bool)

(declare-fun c!857394 () Bool)

(declare-fun call!350498 () Bool)

(assert (=> b!5017734 (= c!857394 call!350498)))

(declare-fun lt!2076502 () Unit!149159)

(declare-fun lt!2076523 () Unit!149159)

(assert (=> b!5017734 (= lt!2076502 lt!2076523)))

(assert (=> b!5017734 (= lt!2076130 Nil!57922)))

(assert (=> b!5017734 (= lt!2076523 call!350501)))

(declare-fun lt!2076510 () Unit!149159)

(declare-fun lt!2076517 () Unit!149159)

(assert (=> b!5017734 (= lt!2076510 lt!2076517)))

(assert (=> b!5017734 call!350499))

(assert (=> b!5017734 (= lt!2076517 call!350500)))

(declare-fun e!3134637 () tuple2!63104)

(assert (=> b!5017734 (= e!3134637 e!3134641)))

(declare-fun bm!350491 () Bool)

(declare-fun call!350503 () List!58046)

(assert (=> bm!350491 (= call!350503 (tail!9881 lt!2076130))))

(declare-fun call!350497 () tuple2!63104)

(declare-fun lt!2076507 () List!58046)

(declare-fun bm!350492 () Bool)

(declare-fun call!350502 () Regex!13814)

(assert (=> bm!350492 (= call!350497 (findLongestMatchInner!2003 call!350502 lt!2076507 (+ (size!38512 Nil!57922) 1) call!350503 lt!2076130 (size!38512 lt!2076130)))))

(declare-fun b!5017735 () Bool)

(declare-fun e!3134639 () tuple2!63104)

(declare-fun lt!2076525 () tuple2!63104)

(assert (=> b!5017735 (= e!3134639 lt!2076525)))

(declare-fun b!5017736 () Bool)

(declare-fun c!857391 () Bool)

(assert (=> b!5017736 (= c!857391 call!350498)))

(declare-fun lt!2076519 () Unit!149159)

(declare-fun lt!2076513 () Unit!149159)

(assert (=> b!5017736 (= lt!2076519 lt!2076513)))

(declare-fun lt!2076504 () C!27878)

(declare-fun lt!2076498 () List!58046)

(assert (=> b!5017736 (= (++!12662 (++!12662 Nil!57922 (Cons!57922 lt!2076504 Nil!57922)) lt!2076498) lt!2076130)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1510 (List!58046 C!27878 List!58046 List!58046) Unit!149159)

(assert (=> b!5017736 (= lt!2076513 (lemmaMoveElementToOtherListKeepsConcatEq!1510 Nil!57922 lt!2076504 lt!2076498 lt!2076130))))

(assert (=> b!5017736 (= lt!2076498 (tail!9881 lt!2076130))))

(assert (=> b!5017736 (= lt!2076504 (head!10748 lt!2076130))))

(declare-fun lt!2076509 () Unit!149159)

(declare-fun lt!2076501 () Unit!149159)

(assert (=> b!5017736 (= lt!2076509 lt!2076501)))

(declare-fun getSuffix!3154 (List!58046 List!58046) List!58046)

(assert (=> b!5017736 (isPrefix!5367 (++!12662 Nil!57922 (Cons!57922 (head!10748 (getSuffix!3154 lt!2076130 Nil!57922)) Nil!57922)) lt!2076130)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!899 (List!58046 List!58046) Unit!149159)

(assert (=> b!5017736 (= lt!2076501 (lemmaAddHeadSuffixToPrefixStillPrefix!899 Nil!57922 lt!2076130))))

(declare-fun lt!2076522 () Unit!149159)

(declare-fun lt!2076506 () Unit!149159)

(assert (=> b!5017736 (= lt!2076522 lt!2076506)))

(assert (=> b!5017736 (= lt!2076506 (lemmaAddHeadSuffixToPrefixStillPrefix!899 Nil!57922 lt!2076130))))

(assert (=> b!5017736 (= lt!2076507 (++!12662 Nil!57922 (Cons!57922 (head!10748 lt!2076130) Nil!57922)))))

(declare-fun lt!2076516 () Unit!149159)

(assert (=> b!5017736 (= lt!2076516 e!3134635)))

(declare-fun c!857393 () Bool)

(assert (=> b!5017736 (= c!857393 (= (size!38512 Nil!57922) (size!38512 lt!2076130)))))

(declare-fun lt!2076500 () Unit!149159)

(declare-fun lt!2076505 () Unit!149159)

(assert (=> b!5017736 (= lt!2076500 lt!2076505)))

(assert (=> b!5017736 (<= (size!38512 Nil!57922) (size!38512 lt!2076130))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!825 (List!58046 List!58046) Unit!149159)

(assert (=> b!5017736 (= lt!2076505 (lemmaIsPrefixThenSmallerEqSize!825 Nil!57922 lt!2076130))))

(declare-fun e!3134634 () tuple2!63104)

(assert (=> b!5017736 (= e!3134637 e!3134634)))

(declare-fun b!5017737 () Bool)

(assert (=> b!5017737 (= e!3134638 (>= (size!38512 (_1!34855 lt!2076514)) (size!38512 Nil!57922)))))

(declare-fun bm!350493 () Bool)

(assert (=> bm!350493 (= call!350499 (isPrefix!5367 lt!2076130 lt!2076130))))

(declare-fun b!5017738 () Bool)

(assert (=> b!5017738 (= e!3134641 (tuple2!63105 Nil!57922 lt!2076130))))

(declare-fun bm!350494 () Bool)

(declare-fun lemmaIsPrefixRefl!3637 (List!58046 List!58046) Unit!149159)

(assert (=> bm!350494 (= call!350500 (lemmaIsPrefixRefl!3637 lt!2076130 lt!2076130))))

(declare-fun b!5017739 () Bool)

(declare-fun e!3134640 () tuple2!63104)

(assert (=> b!5017739 (= e!3134640 (tuple2!63105 Nil!57922 lt!2076130))))

(declare-fun b!5017740 () Bool)

(assert (=> b!5017740 (= e!3134634 call!350497)))

(declare-fun b!5017741 () Bool)

(assert (=> b!5017741 (= e!3134634 e!3134639)))

(assert (=> b!5017741 (= lt!2076525 call!350497)))

(declare-fun c!857395 () Bool)

(assert (=> b!5017741 (= c!857395 (isEmpty!31391 (_1!34855 lt!2076525)))))

(declare-fun bm!350495 () Bool)

(declare-fun call!350496 () C!27878)

(assert (=> bm!350495 (= call!350502 (derivativeStep!3988 r!12727 call!350496))))

(declare-fun bm!350496 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1285 (List!58046 List!58046 List!58046) Unit!149159)

(assert (=> bm!350496 (= call!350501 (lemmaIsPrefixSameLengthThenSameList!1285 lt!2076130 Nil!57922 lt!2076130))))

(declare-fun d!1615580 () Bool)

(assert (=> d!1615580 e!3134642))

(declare-fun res!2139609 () Bool)

(assert (=> d!1615580 (=> (not res!2139609) (not e!3134642))))

(assert (=> d!1615580 (= res!2139609 (= (++!12662 (_1!34855 lt!2076514) (_2!34855 lt!2076514)) lt!2076130))))

(assert (=> d!1615580 (= lt!2076514 e!3134640)))

(declare-fun c!857390 () Bool)

(declare-fun lostCause!1198 (Regex!13814) Bool)

(assert (=> d!1615580 (= c!857390 (lostCause!1198 r!12727))))

(declare-fun lt!2076524 () Unit!149159)

(declare-fun Unit!149167 () Unit!149159)

(assert (=> d!1615580 (= lt!2076524 Unit!149167)))

(assert (=> d!1615580 (= (getSuffix!3154 lt!2076130 Nil!57922) lt!2076130)))

(declare-fun lt!2076520 () Unit!149159)

(declare-fun lt!2076499 () Unit!149159)

(assert (=> d!1615580 (= lt!2076520 lt!2076499)))

(declare-fun lt!2076508 () List!58046)

(assert (=> d!1615580 (= lt!2076130 lt!2076508)))

(declare-fun lemmaSamePrefixThenSameSuffix!2568 (List!58046 List!58046 List!58046 List!58046 List!58046) Unit!149159)

(assert (=> d!1615580 (= lt!2076499 (lemmaSamePrefixThenSameSuffix!2568 Nil!57922 lt!2076130 Nil!57922 lt!2076508 lt!2076130))))

(assert (=> d!1615580 (= lt!2076508 (getSuffix!3154 lt!2076130 Nil!57922))))

(declare-fun lt!2076512 () Unit!149159)

(declare-fun lt!2076503 () Unit!149159)

(assert (=> d!1615580 (= lt!2076512 lt!2076503)))

(assert (=> d!1615580 (isPrefix!5367 Nil!57922 (++!12662 Nil!57922 lt!2076130))))

(assert (=> d!1615580 (= lt!2076503 (lemmaConcatTwoListThenFirstIsPrefix!3465 Nil!57922 lt!2076130))))

(assert (=> d!1615580 (validRegex!6111 r!12727)))

(assert (=> d!1615580 (= (findLongestMatchInner!2003 r!12727 Nil!57922 (size!38512 Nil!57922) lt!2076130 lt!2076130 (size!38512 lt!2076130)) lt!2076514)))

(declare-fun bm!350497 () Bool)

(assert (=> bm!350497 (= call!350496 (head!10748 lt!2076130))))

(declare-fun b!5017742 () Bool)

(assert (=> b!5017742 (= e!3134640 e!3134637)))

(declare-fun c!857392 () Bool)

(assert (=> b!5017742 (= c!857392 (= (size!38512 Nil!57922) (size!38512 lt!2076130)))))

(declare-fun b!5017743 () Bool)

(declare-fun Unit!149168 () Unit!149159)

(assert (=> b!5017743 (= e!3134635 Unit!149168)))

(declare-fun b!5017744 () Bool)

(assert (=> b!5017744 (= e!3134639 (tuple2!63105 Nil!57922 lt!2076130))))

(declare-fun bm!350498 () Bool)

(assert (=> bm!350498 (= call!350498 (nullable!4698 r!12727))))

(assert (= (and d!1615580 c!857390) b!5017739))

(assert (= (and d!1615580 (not c!857390)) b!5017742))

(assert (= (and b!5017742 c!857392) b!5017734))

(assert (= (and b!5017742 (not c!857392)) b!5017736))

(assert (= (and b!5017734 c!857394) b!5017731))

(assert (= (and b!5017734 (not c!857394)) b!5017738))

(assert (= (and b!5017736 c!857393) b!5017733))

(assert (= (and b!5017736 (not c!857393)) b!5017743))

(assert (= (and b!5017736 c!857391) b!5017741))

(assert (= (and b!5017736 (not c!857391)) b!5017740))

(assert (= (and b!5017741 c!857395) b!5017744))

(assert (= (and b!5017741 (not c!857395)) b!5017735))

(assert (= (or b!5017741 b!5017740) bm!350497))

(assert (= (or b!5017741 b!5017740) bm!350491))

(assert (= (or b!5017741 b!5017740) bm!350495))

(assert (= (or b!5017741 b!5017740) bm!350492))

(assert (= (or b!5017734 b!5017736) bm!350498))

(assert (= (or b!5017734 b!5017733) bm!350493))

(assert (= (or b!5017734 b!5017733) bm!350496))

(assert (= (or b!5017734 b!5017733) bm!350494))

(assert (= (and d!1615580 res!2139609) b!5017732))

(assert (= (and b!5017732 (not res!2139608)) b!5017737))

(declare-fun m!6052884 () Bool)

(assert (=> bm!350493 m!6052884))

(declare-fun m!6052888 () Bool)

(assert (=> b!5017741 m!6052888))

(declare-fun m!6052890 () Bool)

(assert (=> bm!350495 m!6052890))

(assert (=> bm!350491 m!6052438))

(declare-fun m!6052894 () Bool)

(assert (=> bm!350496 m!6052894))

(declare-fun m!6052898 () Bool)

(assert (=> b!5017737 m!6052898))

(assert (=> b!5017737 m!6052226))

(declare-fun m!6052900 () Bool)

(assert (=> b!5017732 m!6052900))

(declare-fun m!6052902 () Bool)

(assert (=> d!1615580 m!6052902))

(declare-fun m!6052904 () Bool)

(assert (=> d!1615580 m!6052904))

(declare-fun m!6052906 () Bool)

(assert (=> d!1615580 m!6052906))

(assert (=> d!1615580 m!6052302))

(declare-fun m!6052908 () Bool)

(assert (=> d!1615580 m!6052908))

(declare-fun m!6052910 () Bool)

(assert (=> d!1615580 m!6052910))

(declare-fun m!6052912 () Bool)

(assert (=> d!1615580 m!6052912))

(assert (=> d!1615580 m!6052902))

(declare-fun m!6052914 () Bool)

(assert (=> d!1615580 m!6052914))

(assert (=> bm!350492 m!6052234))

(declare-fun m!6052916 () Bool)

(assert (=> bm!350492 m!6052916))

(assert (=> bm!350497 m!6052444))

(declare-fun m!6052918 () Bool)

(assert (=> b!5017736 m!6052918))

(declare-fun m!6052920 () Bool)

(assert (=> b!5017736 m!6052920))

(assert (=> b!5017736 m!6052438))

(assert (=> b!5017736 m!6052918))

(declare-fun m!6052922 () Bool)

(assert (=> b!5017736 m!6052922))

(declare-fun m!6052924 () Bool)

(assert (=> b!5017736 m!6052924))

(assert (=> b!5017736 m!6052234))

(assert (=> b!5017736 m!6052226))

(declare-fun m!6052926 () Bool)

(assert (=> b!5017736 m!6052926))

(declare-fun m!6052928 () Bool)

(assert (=> b!5017736 m!6052928))

(assert (=> b!5017736 m!6052924))

(declare-fun m!6052930 () Bool)

(assert (=> b!5017736 m!6052930))

(assert (=> b!5017736 m!6052906))

(declare-fun m!6052932 () Bool)

(assert (=> b!5017736 m!6052932))

(assert (=> b!5017736 m!6052444))

(assert (=> b!5017736 m!6052906))

(declare-fun m!6052934 () Bool)

(assert (=> b!5017736 m!6052934))

(declare-fun m!6052936 () Bool)

(assert (=> bm!350494 m!6052936))

(assert (=> bm!350498 m!6052454))

(assert (=> b!5017141 d!1615580))

(declare-fun d!1615634 () Bool)

(declare-fun e!3134648 () Bool)

(assert (=> d!1615634 e!3134648))

(declare-fun res!2139613 () Bool)

(assert (=> d!1615634 (=> res!2139613 e!3134648)))

(declare-fun lt!2076528 () Bool)

(assert (=> d!1615634 (= res!2139613 (not lt!2076528))))

(declare-fun e!3134647 () Bool)

(assert (=> d!1615634 (= lt!2076528 e!3134647)))

(declare-fun res!2139616 () Bool)

(assert (=> d!1615634 (=> res!2139616 e!3134647)))

(assert (=> d!1615634 (= res!2139616 (is-Nil!57922 lt!2076128))))

(assert (=> d!1615634 (= (isPrefix!5367 lt!2076128 lt!2076118) lt!2076528)))

(declare-fun b!5017754 () Bool)

(declare-fun e!3134649 () Bool)

(assert (=> b!5017754 (= e!3134649 (isPrefix!5367 (tail!9881 lt!2076128) (tail!9881 lt!2076118)))))

(declare-fun b!5017755 () Bool)

(assert (=> b!5017755 (= e!3134648 (>= (size!38512 lt!2076118) (size!38512 lt!2076128)))))

(declare-fun b!5017753 () Bool)

(declare-fun res!2139615 () Bool)

(assert (=> b!5017753 (=> (not res!2139615) (not e!3134649))))

(assert (=> b!5017753 (= res!2139615 (= (head!10748 lt!2076128) (head!10748 lt!2076118)))))

(declare-fun b!5017752 () Bool)

(assert (=> b!5017752 (= e!3134647 e!3134649)))

(declare-fun res!2139614 () Bool)

(assert (=> b!5017752 (=> (not res!2139614) (not e!3134649))))

(assert (=> b!5017752 (= res!2139614 (not (is-Nil!57922 lt!2076118)))))

(assert (= (and d!1615634 (not res!2139616)) b!5017752))

(assert (= (and b!5017752 res!2139614) b!5017753))

(assert (= (and b!5017753 res!2139615) b!5017754))

(assert (= (and d!1615634 (not res!2139613)) b!5017755))

(assert (=> b!5017754 m!6052446))

(declare-fun m!6052938 () Bool)

(assert (=> b!5017754 m!6052938))

(assert (=> b!5017754 m!6052446))

(assert (=> b!5017754 m!6052938))

(declare-fun m!6052940 () Bool)

(assert (=> b!5017754 m!6052940))

(declare-fun m!6052942 () Bool)

(assert (=> b!5017755 m!6052942))

(assert (=> b!5017755 m!6052262))

(assert (=> b!5017753 m!6052450))

(declare-fun m!6052944 () Bool)

(assert (=> b!5017753 m!6052944))

(assert (=> b!5017141 d!1615634))

(declare-fun d!1615636 () Bool)

(assert (=> d!1615636 (isPrefix!5367 (_1!34855 lt!2076125) (++!12662 (_1!34855 lt!2076125) (_2!34855 lt!2076125)))))

(declare-fun lt!2076529 () Unit!149159)

(assert (=> d!1615636 (= lt!2076529 (choose!37126 (_1!34855 lt!2076125) (_2!34855 lt!2076125)))))

(assert (=> d!1615636 (= (lemmaConcatTwoListThenFirstIsPrefix!3465 (_1!34855 lt!2076125) (_2!34855 lt!2076125)) lt!2076529)))

(declare-fun bs!1187062 () Bool)

(assert (= bs!1187062 d!1615636))

(assert (=> bs!1187062 m!6052218))

(assert (=> bs!1187062 m!6052218))

(declare-fun m!6052946 () Bool)

(assert (=> bs!1187062 m!6052946))

(declare-fun m!6052948 () Bool)

(assert (=> bs!1187062 m!6052948))

(assert (=> b!5017141 d!1615636))

(declare-fun d!1615638 () Bool)

(declare-fun c!857398 () Bool)

(assert (=> d!1615638 (= c!857398 (isEmpty!31391 lt!2076128))))

(declare-fun e!3134650 () Bool)

(assert (=> d!1615638 (= (matchZipper!582 z!4183 lt!2076128) e!3134650)))

(declare-fun b!5017756 () Bool)

(assert (=> b!5017756 (= e!3134650 (nullableZipper!893 z!4183))))

(declare-fun b!5017757 () Bool)

(assert (=> b!5017757 (= e!3134650 (matchZipper!582 (derivationStepZipper!642 z!4183 (head!10748 lt!2076128)) (tail!9881 lt!2076128)))))

(assert (= (and d!1615638 c!857398) b!5017756))

(assert (= (and d!1615638 (not c!857398)) b!5017757))

(assert (=> d!1615638 m!6052632))

(assert (=> b!5017756 m!6052640))

(assert (=> b!5017757 m!6052450))

(assert (=> b!5017757 m!6052450))

(declare-fun m!6052950 () Bool)

(assert (=> b!5017757 m!6052950))

(assert (=> b!5017757 m!6052446))

(assert (=> b!5017757 m!6052950))

(assert (=> b!5017757 m!6052446))

(declare-fun m!6052952 () Bool)

(assert (=> b!5017757 m!6052952))

(assert (=> b!5017141 d!1615638))

(declare-fun b!5017772 () Bool)

(declare-fun e!3134661 () List!58046)

(assert (=> b!5017772 (= e!3134661 Nil!57922)))

(declare-fun b!5017773 () Bool)

(declare-fun e!3134659 () Int)

(assert (=> b!5017773 (= e!3134659 0)))

(declare-fun b!5017774 () Bool)

(declare-fun e!3134660 () Bool)

(declare-fun lt!2076532 () List!58046)

(assert (=> b!5017774 (= e!3134660 (= (size!38512 lt!2076532) e!3134659))))

(declare-fun c!857406 () Bool)

(assert (=> b!5017774 (= c!857406 (<= lt!2076114 0))))

(declare-fun b!5017775 () Bool)

(assert (=> b!5017775 (= e!3134661 (Cons!57922 (h!64370 lt!2076115) (take!673 (t!370422 lt!2076115) (- lt!2076114 1))))))

(declare-fun b!5017776 () Bool)

(declare-fun e!3134662 () Int)

(assert (=> b!5017776 (= e!3134659 e!3134662)))

(declare-fun c!857405 () Bool)

(assert (=> b!5017776 (= c!857405 (>= lt!2076114 (size!38512 lt!2076115)))))

(declare-fun b!5017777 () Bool)

(assert (=> b!5017777 (= e!3134662 (size!38512 lt!2076115))))

(declare-fun b!5017778 () Bool)

(assert (=> b!5017778 (= e!3134662 lt!2076114)))

(declare-fun d!1615640 () Bool)

(assert (=> d!1615640 e!3134660))

(declare-fun res!2139619 () Bool)

(assert (=> d!1615640 (=> (not res!2139619) (not e!3134660))))

(assert (=> d!1615640 (= res!2139619 (set.subset (content!10271 lt!2076532) (content!10271 lt!2076115)))))

(assert (=> d!1615640 (= lt!2076532 e!3134661)))

(declare-fun c!857407 () Bool)

(assert (=> d!1615640 (= c!857407 (or (is-Nil!57922 lt!2076115) (<= lt!2076114 0)))))

(assert (=> d!1615640 (= (take!673 lt!2076115 lt!2076114) lt!2076532)))

(assert (= (and d!1615640 c!857407) b!5017772))

(assert (= (and d!1615640 (not c!857407)) b!5017775))

(assert (= (and d!1615640 res!2139619) b!5017774))

(assert (= (and b!5017774 c!857406) b!5017773))

(assert (= (and b!5017774 (not c!857406)) b!5017776))

(assert (= (and b!5017776 c!857405) b!5017777))

(assert (= (and b!5017776 (not c!857405)) b!5017778))

(declare-fun m!6052954 () Bool)

(assert (=> b!5017775 m!6052954))

(assert (=> b!5017777 m!6052412))

(declare-fun m!6052956 () Bool)

(assert (=> d!1615640 m!6052956))

(declare-fun m!6052958 () Bool)

(assert (=> d!1615640 m!6052958))

(declare-fun m!6052960 () Bool)

(assert (=> b!5017774 m!6052960))

(assert (=> b!5017776 m!6052412))

(assert (=> b!5017141 d!1615640))

(declare-fun d!1615642 () Bool)

(declare-fun e!3134665 () Bool)

(assert (=> d!1615642 e!3134665))

(declare-fun res!2139622 () Bool)

(assert (=> d!1615642 (=> res!2139622 e!3134665)))

(assert (=> d!1615642 (= res!2139622 (isEmpty!31391 (_1!34855 (findLongestMatchInner!2003 r!12727 Nil!57922 (size!38512 Nil!57922) lt!2076130 lt!2076130 (size!38512 lt!2076130)))))))

(declare-fun lt!2076560 () Unit!149159)

(declare-fun choose!37131 (Regex!13814 List!58046) Unit!149159)

(assert (=> d!1615642 (= lt!2076560 (choose!37131 r!12727 lt!2076130))))

(assert (=> d!1615642 (validRegex!6111 r!12727)))

(assert (=> d!1615642 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1956 r!12727 lt!2076130) lt!2076560)))

(declare-fun b!5017781 () Bool)

(assert (=> b!5017781 (= e!3134665 (matchR!6778 r!12727 (_1!34855 (findLongestMatchInner!2003 r!12727 Nil!57922 (size!38512 Nil!57922) lt!2076130 lt!2076130 (size!38512 lt!2076130)))))))

(assert (= (and d!1615642 (not res!2139622)) b!5017781))

(assert (=> d!1615642 m!6052226))

(assert (=> d!1615642 m!6052234))

(assert (=> d!1615642 m!6052302))

(declare-fun m!6052984 () Bool)

(assert (=> d!1615642 m!6052984))

(assert (=> d!1615642 m!6052226))

(assert (=> d!1615642 m!6052234))

(assert (=> d!1615642 m!6052236))

(declare-fun m!6052986 () Bool)

(assert (=> d!1615642 m!6052986))

(assert (=> b!5017781 m!6052226))

(assert (=> b!5017781 m!6052234))

(assert (=> b!5017781 m!6052226))

(assert (=> b!5017781 m!6052234))

(assert (=> b!5017781 m!6052236))

(declare-fun m!6052988 () Bool)

(assert (=> b!5017781 m!6052988))

(assert (=> b!5017141 d!1615642))

(declare-fun d!1615650 () Bool)

(declare-fun e!3134667 () Bool)

(assert (=> d!1615650 e!3134667))

(declare-fun res!2139623 () Bool)

(assert (=> d!1615650 (=> res!2139623 e!3134667)))

(declare-fun lt!2076561 () Bool)

(assert (=> d!1615650 (= res!2139623 (not lt!2076561))))

(declare-fun e!3134666 () Bool)

(assert (=> d!1615650 (= lt!2076561 e!3134666)))

(declare-fun res!2139626 () Bool)

(assert (=> d!1615650 (=> res!2139626 e!3134666)))

(assert (=> d!1615650 (= res!2139626 (is-Nil!57922 (_1!34855 lt!2076125)))))

(assert (=> d!1615650 (= (isPrefix!5367 (_1!34855 lt!2076125) lt!2076117) lt!2076561)))

(declare-fun b!5017784 () Bool)

(declare-fun e!3134668 () Bool)

(assert (=> b!5017784 (= e!3134668 (isPrefix!5367 (tail!9881 (_1!34855 lt!2076125)) (tail!9881 lt!2076117)))))

(declare-fun b!5017785 () Bool)

(assert (=> b!5017785 (= e!3134667 (>= (size!38512 lt!2076117) (size!38512 (_1!34855 lt!2076125))))))

(declare-fun b!5017783 () Bool)

(declare-fun res!2139625 () Bool)

(assert (=> b!5017783 (=> (not res!2139625) (not e!3134668))))

(assert (=> b!5017783 (= res!2139625 (= (head!10748 (_1!34855 lt!2076125)) (head!10748 lt!2076117)))))

(declare-fun b!5017782 () Bool)

(assert (=> b!5017782 (= e!3134666 e!3134668)))

(declare-fun res!2139624 () Bool)

(assert (=> b!5017782 (=> (not res!2139624) (not e!3134668))))

(assert (=> b!5017782 (= res!2139624 (not (is-Nil!57922 lt!2076117)))))

(assert (= (and d!1615650 (not res!2139626)) b!5017782))

(assert (= (and b!5017782 res!2139624) b!5017783))

(assert (= (and b!5017783 res!2139625) b!5017784))

(assert (= (and d!1615650 (not res!2139623)) b!5017785))

(assert (=> b!5017784 m!6052436))

(declare-fun m!6052990 () Bool)

(assert (=> b!5017784 m!6052990))

(assert (=> b!5017784 m!6052436))

(assert (=> b!5017784 m!6052990))

(declare-fun m!6052992 () Bool)

(assert (=> b!5017784 m!6052992))

(declare-fun m!6052994 () Bool)

(assert (=> b!5017785 m!6052994))

(assert (=> b!5017785 m!6052274))

(assert (=> b!5017783 m!6052442))

(declare-fun m!6052996 () Bool)

(assert (=> b!5017783 m!6052996))

(assert (=> b!5017141 d!1615650))

(declare-fun b!5017786 () Bool)

(declare-fun e!3134674 () Bool)

(assert (=> b!5017786 (= e!3134674 (nullable!4698 r!12727))))

(declare-fun d!1615652 () Bool)

(declare-fun e!3134675 () Bool)

(assert (=> d!1615652 e!3134675))

(declare-fun c!857410 () Bool)

(assert (=> d!1615652 (= c!857410 (is-EmptyExpr!13814 r!12727))))

(declare-fun lt!2076562 () Bool)

(assert (=> d!1615652 (= lt!2076562 e!3134674)))

(declare-fun c!857408 () Bool)

(assert (=> d!1615652 (= c!857408 (isEmpty!31391 (_1!34855 lt!2076127)))))

(assert (=> d!1615652 (validRegex!6111 r!12727)))

(assert (=> d!1615652 (= (matchR!6778 r!12727 (_1!34855 lt!2076127)) lt!2076562)))

(declare-fun bm!350499 () Bool)

(declare-fun call!350504 () Bool)

(assert (=> bm!350499 (= call!350504 (isEmpty!31391 (_1!34855 lt!2076127)))))

(declare-fun b!5017787 () Bool)

(declare-fun e!3134669 () Bool)

(declare-fun e!3134671 () Bool)

(assert (=> b!5017787 (= e!3134669 e!3134671)))

(declare-fun res!2139630 () Bool)

(assert (=> b!5017787 (=> (not res!2139630) (not e!3134671))))

(assert (=> b!5017787 (= res!2139630 (not lt!2076562))))

(declare-fun b!5017788 () Bool)

(declare-fun res!2139633 () Bool)

(declare-fun e!3134673 () Bool)

(assert (=> b!5017788 (=> (not res!2139633) (not e!3134673))))

(assert (=> b!5017788 (= res!2139633 (isEmpty!31391 (tail!9881 (_1!34855 lt!2076127))))))

(declare-fun b!5017789 () Bool)

(assert (=> b!5017789 (= e!3134674 (matchR!6778 (derivativeStep!3988 r!12727 (head!10748 (_1!34855 lt!2076127))) (tail!9881 (_1!34855 lt!2076127))))))

(declare-fun b!5017790 () Bool)

(declare-fun res!2139627 () Bool)

(assert (=> b!5017790 (=> (not res!2139627) (not e!3134673))))

(assert (=> b!5017790 (= res!2139627 (not call!350504))))

(declare-fun b!5017791 () Bool)

(declare-fun e!3134672 () Bool)

(assert (=> b!5017791 (= e!3134675 e!3134672)))

(declare-fun c!857409 () Bool)

(assert (=> b!5017791 (= c!857409 (is-EmptyLang!13814 r!12727))))

(declare-fun b!5017792 () Bool)

(declare-fun e!3134670 () Bool)

(assert (=> b!5017792 (= e!3134670 (not (= (head!10748 (_1!34855 lt!2076127)) (c!857241 r!12727))))))

(declare-fun b!5017793 () Bool)

(assert (=> b!5017793 (= e!3134675 (= lt!2076562 call!350504))))

(declare-fun b!5017794 () Bool)

(assert (=> b!5017794 (= e!3134673 (= (head!10748 (_1!34855 lt!2076127)) (c!857241 r!12727)))))

(declare-fun b!5017795 () Bool)

(assert (=> b!5017795 (= e!3134671 e!3134670)))

(declare-fun res!2139632 () Bool)

(assert (=> b!5017795 (=> res!2139632 e!3134670)))

(assert (=> b!5017795 (= res!2139632 call!350504)))

(declare-fun b!5017796 () Bool)

(declare-fun res!2139628 () Bool)

(assert (=> b!5017796 (=> res!2139628 e!3134670)))

(assert (=> b!5017796 (= res!2139628 (not (isEmpty!31391 (tail!9881 (_1!34855 lt!2076127)))))))

(declare-fun b!5017797 () Bool)

(declare-fun res!2139629 () Bool)

(assert (=> b!5017797 (=> res!2139629 e!3134669)))

(assert (=> b!5017797 (= res!2139629 e!3134673)))

(declare-fun res!2139631 () Bool)

(assert (=> b!5017797 (=> (not res!2139631) (not e!3134673))))

(assert (=> b!5017797 (= res!2139631 lt!2076562)))

(declare-fun b!5017798 () Bool)

(assert (=> b!5017798 (= e!3134672 (not lt!2076562))))

(declare-fun b!5017799 () Bool)

(declare-fun res!2139634 () Bool)

(assert (=> b!5017799 (=> res!2139634 e!3134669)))

(assert (=> b!5017799 (= res!2139634 (not (is-ElementMatch!13814 r!12727)))))

(assert (=> b!5017799 (= e!3134672 e!3134669)))

(assert (= (and d!1615652 c!857408) b!5017786))

(assert (= (and d!1615652 (not c!857408)) b!5017789))

(assert (= (and d!1615652 c!857410) b!5017793))

(assert (= (and d!1615652 (not c!857410)) b!5017791))

(assert (= (and b!5017791 c!857409) b!5017798))

(assert (= (and b!5017791 (not c!857409)) b!5017799))

(assert (= (and b!5017799 (not res!2139634)) b!5017797))

(assert (= (and b!5017797 res!2139631) b!5017790))

(assert (= (and b!5017790 res!2139627) b!5017788))

(assert (= (and b!5017788 res!2139633) b!5017794))

(assert (= (and b!5017797 (not res!2139629)) b!5017787))

(assert (= (and b!5017787 res!2139630) b!5017795))

(assert (= (and b!5017795 (not res!2139632)) b!5017796))

(assert (= (and b!5017796 (not res!2139628)) b!5017792))

(assert (= (or b!5017793 b!5017790 b!5017795) bm!350499))

(declare-fun m!6052998 () Bool)

(assert (=> b!5017788 m!6052998))

(assert (=> b!5017788 m!6052998))

(declare-fun m!6053000 () Bool)

(assert (=> b!5017788 m!6053000))

(assert (=> b!5017786 m!6052454))

(declare-fun m!6053002 () Bool)

(assert (=> b!5017789 m!6053002))

(assert (=> b!5017789 m!6053002))

(declare-fun m!6053004 () Bool)

(assert (=> b!5017789 m!6053004))

(assert (=> b!5017789 m!6052998))

(assert (=> b!5017789 m!6053004))

(assert (=> b!5017789 m!6052998))

(declare-fun m!6053006 () Bool)

(assert (=> b!5017789 m!6053006))

(assert (=> d!1615652 m!6052238))

(assert (=> d!1615652 m!6052302))

(assert (=> bm!350499 m!6052238))

(assert (=> b!5017794 m!6053002))

(assert (=> b!5017792 m!6053002))

(assert (=> b!5017796 m!6052998))

(assert (=> b!5017796 m!6052998))

(assert (=> b!5017796 m!6053000))

(assert (=> b!5017153 d!1615652))

(declare-fun c!857411 () Bool)

(declare-fun d!1615654 () Bool)

(assert (=> d!1615654 (= c!857411 (isEmpty!31391 (take!673 (drop!2477 lt!2076115 lt!2076114) lt!2076132)))))

(declare-fun e!3134676 () Bool)

(assert (=> d!1615654 (= (matchZipper!582 z!4183 (take!673 (drop!2477 lt!2076115 lt!2076114) lt!2076132)) e!3134676)))

(declare-fun b!5017800 () Bool)

(assert (=> b!5017800 (= e!3134676 (nullableZipper!893 z!4183))))

(declare-fun b!5017801 () Bool)

(assert (=> b!5017801 (= e!3134676 (matchZipper!582 (derivationStepZipper!642 z!4183 (head!10748 (take!673 (drop!2477 lt!2076115 lt!2076114) lt!2076132))) (tail!9881 (take!673 (drop!2477 lt!2076115 lt!2076114) lt!2076132))))))

(assert (= (and d!1615654 c!857411) b!5017800))

(assert (= (and d!1615654 (not c!857411)) b!5017801))

(assert (=> d!1615654 m!6052258))

(declare-fun m!6053008 () Bool)

(assert (=> d!1615654 m!6053008))

(assert (=> b!5017800 m!6052640))

(assert (=> b!5017801 m!6052258))

(declare-fun m!6053010 () Bool)

(assert (=> b!5017801 m!6053010))

(assert (=> b!5017801 m!6053010))

(declare-fun m!6053012 () Bool)

(assert (=> b!5017801 m!6053012))

(assert (=> b!5017801 m!6052258))

(declare-fun m!6053014 () Bool)

(assert (=> b!5017801 m!6053014))

(assert (=> b!5017801 m!6053012))

(assert (=> b!5017801 m!6053014))

(declare-fun m!6053016 () Bool)

(assert (=> b!5017801 m!6053016))

(assert (=> b!5017152 d!1615654))

(declare-fun b!5017802 () Bool)

(declare-fun e!3134679 () List!58046)

(assert (=> b!5017802 (= e!3134679 Nil!57922)))

(declare-fun b!5017803 () Bool)

(declare-fun e!3134677 () Int)

(assert (=> b!5017803 (= e!3134677 0)))

(declare-fun b!5017804 () Bool)

(declare-fun e!3134678 () Bool)

(declare-fun lt!2076563 () List!58046)

(assert (=> b!5017804 (= e!3134678 (= (size!38512 lt!2076563) e!3134677))))

(declare-fun c!857413 () Bool)

(assert (=> b!5017804 (= c!857413 (<= lt!2076132 0))))

(declare-fun b!5017805 () Bool)

(assert (=> b!5017805 (= e!3134679 (Cons!57922 (h!64370 (drop!2477 lt!2076115 lt!2076114)) (take!673 (t!370422 (drop!2477 lt!2076115 lt!2076114)) (- lt!2076132 1))))))

(declare-fun b!5017806 () Bool)

(declare-fun e!3134680 () Int)

(assert (=> b!5017806 (= e!3134677 e!3134680)))

(declare-fun c!857412 () Bool)

(assert (=> b!5017806 (= c!857412 (>= lt!2076132 (size!38512 (drop!2477 lt!2076115 lt!2076114))))))

(declare-fun b!5017807 () Bool)

(assert (=> b!5017807 (= e!3134680 (size!38512 (drop!2477 lt!2076115 lt!2076114)))))

(declare-fun b!5017808 () Bool)

(assert (=> b!5017808 (= e!3134680 lt!2076132)))

(declare-fun d!1615656 () Bool)

(assert (=> d!1615656 e!3134678))

(declare-fun res!2139635 () Bool)

(assert (=> d!1615656 (=> (not res!2139635) (not e!3134678))))

(assert (=> d!1615656 (= res!2139635 (set.subset (content!10271 lt!2076563) (content!10271 (drop!2477 lt!2076115 lt!2076114))))))

(assert (=> d!1615656 (= lt!2076563 e!3134679)))

(declare-fun c!857414 () Bool)

(assert (=> d!1615656 (= c!857414 (or (is-Nil!57922 (drop!2477 lt!2076115 lt!2076114)) (<= lt!2076132 0)))))

(assert (=> d!1615656 (= (take!673 (drop!2477 lt!2076115 lt!2076114) lt!2076132) lt!2076563)))

(assert (= (and d!1615656 c!857414) b!5017802))

(assert (= (and d!1615656 (not c!857414)) b!5017805))

(assert (= (and d!1615656 res!2139635) b!5017804))

(assert (= (and b!5017804 c!857413) b!5017803))

(assert (= (and b!5017804 (not c!857413)) b!5017806))

(assert (= (and b!5017806 c!857412) b!5017807))

(assert (= (and b!5017806 (not c!857412)) b!5017808))

(declare-fun m!6053018 () Bool)

(assert (=> b!5017805 m!6053018))

(assert (=> b!5017807 m!6052256))

(declare-fun m!6053020 () Bool)

(assert (=> b!5017807 m!6053020))

(declare-fun m!6053022 () Bool)

(assert (=> d!1615656 m!6053022))

(assert (=> d!1615656 m!6052256))

(declare-fun m!6053024 () Bool)

(assert (=> d!1615656 m!6053024))

(declare-fun m!6053026 () Bool)

(assert (=> b!5017804 m!6053026))

(assert (=> b!5017806 m!6052256))

(assert (=> b!5017806 m!6053020))

(assert (=> b!5017152 d!1615656))

(declare-fun b!5017827 () Bool)

(declare-fun e!3134691 () Bool)

(declare-fun lt!2076572 () List!58046)

(declare-fun e!3134692 () Int)

(assert (=> b!5017827 (= e!3134691 (= (size!38512 lt!2076572) e!3134692))))

(declare-fun c!857426 () Bool)

(assert (=> b!5017827 (= c!857426 (<= lt!2076114 0))))

(declare-fun b!5017828 () Bool)

(declare-fun e!3134694 () Int)

(assert (=> b!5017828 (= e!3134692 e!3134694)))

(declare-fun c!857423 () Bool)

(declare-fun call!350507 () Int)

(assert (=> b!5017828 (= c!857423 (>= lt!2076114 call!350507))))

(declare-fun b!5017829 () Bool)

(declare-fun e!3134693 () List!58046)

(assert (=> b!5017829 (= e!3134693 Nil!57922)))

(declare-fun b!5017830 () Bool)

(declare-fun e!3134695 () List!58046)

(assert (=> b!5017830 (= e!3134693 e!3134695)))

(declare-fun c!857424 () Bool)

(assert (=> b!5017830 (= c!857424 (<= lt!2076114 0))))

(declare-fun b!5017831 () Bool)

(assert (=> b!5017831 (= e!3134695 lt!2076115)))

(declare-fun d!1615658 () Bool)

(assert (=> d!1615658 e!3134691))

(declare-fun res!2139638 () Bool)

(assert (=> d!1615658 (=> (not res!2139638) (not e!3134691))))

(assert (=> d!1615658 (= res!2139638 (set.subset (content!10271 lt!2076572) (content!10271 lt!2076115)))))

(assert (=> d!1615658 (= lt!2076572 e!3134693)))

(declare-fun c!857425 () Bool)

(assert (=> d!1615658 (= c!857425 (is-Nil!57922 lt!2076115))))

(assert (=> d!1615658 (= (drop!2477 lt!2076115 lt!2076114) lt!2076572)))

(declare-fun bm!350502 () Bool)

(assert (=> bm!350502 (= call!350507 (size!38512 lt!2076115))))

(declare-fun b!5017832 () Bool)

(assert (=> b!5017832 (= e!3134694 (- call!350507 lt!2076114))))

(declare-fun b!5017833 () Bool)

(assert (=> b!5017833 (= e!3134694 0)))

(declare-fun b!5017834 () Bool)

(assert (=> b!5017834 (= e!3134692 call!350507)))

(declare-fun b!5017835 () Bool)

(assert (=> b!5017835 (= e!3134695 (drop!2477 (t!370422 lt!2076115) (- lt!2076114 1)))))

(assert (= (and d!1615658 c!857425) b!5017829))

(assert (= (and d!1615658 (not c!857425)) b!5017830))

(assert (= (and b!5017830 c!857424) b!5017831))

(assert (= (and b!5017830 (not c!857424)) b!5017835))

(assert (= (and d!1615658 res!2139638) b!5017827))

(assert (= (and b!5017827 c!857426) b!5017834))

(assert (= (and b!5017827 (not c!857426)) b!5017828))

(assert (= (and b!5017828 c!857423) b!5017833))

(assert (= (and b!5017828 (not c!857423)) b!5017832))

(assert (= (or b!5017834 b!5017828 b!5017832) bm!350502))

(declare-fun m!6053040 () Bool)

(assert (=> b!5017827 m!6053040))

(declare-fun m!6053042 () Bool)

(assert (=> d!1615658 m!6053042))

(assert (=> d!1615658 m!6052958))

(assert (=> bm!350502 m!6052412))

(declare-fun m!6053044 () Bool)

(assert (=> b!5017835 m!6053044))

(assert (=> b!5017152 d!1615658))

(declare-fun b!5017847 () Bool)

(declare-fun e!3134704 () Bool)

(declare-fun tp!1406995 () Bool)

(declare-fun tp!1406994 () Bool)

(assert (=> b!5017847 (= e!3134704 (and (inv!76147 (left!42346 (c!857242 input!5597))) tp!1406995 (inv!76147 (right!42676 (c!857242 input!5597))) tp!1406994))))

(declare-fun b!5017849 () Bool)

(declare-fun e!3134703 () Bool)

(declare-fun tp!1406993 () Bool)

(assert (=> b!5017849 (= e!3134703 tp!1406993)))

(declare-fun b!5017848 () Bool)

(declare-fun inv!76156 (IArray!30727) Bool)

(assert (=> b!5017848 (= e!3134704 (and (inv!76156 (xs!18659 (c!857242 input!5597))) e!3134703))))

(assert (=> b!5017154 (= tp!1406957 (and (inv!76147 (c!857242 input!5597)) e!3134704))))

(assert (= (and b!5017154 (is-Node!15333 (c!857242 input!5597))) b!5017847))

(assert (= b!5017848 b!5017849))

(assert (= (and b!5017154 (is-Leaf!25449 (c!857242 input!5597))) b!5017848))

(declare-fun m!6053052 () Bool)

(assert (=> b!5017847 m!6053052))

(declare-fun m!6053054 () Bool)

(assert (=> b!5017847 m!6053054))

(declare-fun m!6053056 () Bool)

(assert (=> b!5017848 m!6053056))

(assert (=> b!5017154 m!6052308))

(declare-fun e!3134712 () Bool)

(assert (=> b!5017143 (= tp!1406959 e!3134712)))

(declare-fun b!5017876 () Bool)

(declare-fun tp!1407016 () Bool)

(assert (=> b!5017876 (= e!3134712 tp!1407016)))

(declare-fun b!5017875 () Bool)

(declare-fun tp!1407020 () Bool)

(declare-fun tp!1407018 () Bool)

(assert (=> b!5017875 (= e!3134712 (and tp!1407020 tp!1407018))))

(declare-fun b!5017877 () Bool)

(declare-fun tp!1407019 () Bool)

(declare-fun tp!1407017 () Bool)

(assert (=> b!5017877 (= e!3134712 (and tp!1407019 tp!1407017))))

(declare-fun b!5017874 () Bool)

(assert (=> b!5017874 (= e!3134712 tp_is_empty!36625)))

(assert (= (and b!5017143 (is-ElementMatch!13814 (reg!14143 r!12727))) b!5017874))

(assert (= (and b!5017143 (is-Concat!22607 (reg!14143 r!12727))) b!5017875))

(assert (= (and b!5017143 (is-Star!13814 (reg!14143 r!12727))) b!5017876))

(assert (= (and b!5017143 (is-Union!13814 (reg!14143 r!12727))) b!5017877))

(declare-fun e!3134713 () Bool)

(assert (=> b!5017150 (= tp!1406956 e!3134713)))

(declare-fun b!5017880 () Bool)

(declare-fun tp!1407021 () Bool)

(assert (=> b!5017880 (= e!3134713 tp!1407021)))

(declare-fun b!5017879 () Bool)

(declare-fun tp!1407025 () Bool)

(declare-fun tp!1407023 () Bool)

(assert (=> b!5017879 (= e!3134713 (and tp!1407025 tp!1407023))))

(declare-fun b!5017881 () Bool)

(declare-fun tp!1407024 () Bool)

(declare-fun tp!1407022 () Bool)

(assert (=> b!5017881 (= e!3134713 (and tp!1407024 tp!1407022))))

(declare-fun b!5017878 () Bool)

(assert (=> b!5017878 (= e!3134713 tp_is_empty!36625)))

(assert (= (and b!5017150 (is-ElementMatch!13814 (regOne!28140 r!12727))) b!5017878))

(assert (= (and b!5017150 (is-Concat!22607 (regOne!28140 r!12727))) b!5017879))

(assert (= (and b!5017150 (is-Star!13814 (regOne!28140 r!12727))) b!5017880))

(assert (= (and b!5017150 (is-Union!13814 (regOne!28140 r!12727))) b!5017881))

(declare-fun e!3134714 () Bool)

(assert (=> b!5017150 (= tp!1406954 e!3134714)))

(declare-fun b!5017884 () Bool)

(declare-fun tp!1407026 () Bool)

(assert (=> b!5017884 (= e!3134714 tp!1407026)))

(declare-fun b!5017883 () Bool)

(declare-fun tp!1407030 () Bool)

(declare-fun tp!1407028 () Bool)

(assert (=> b!5017883 (= e!3134714 (and tp!1407030 tp!1407028))))

(declare-fun b!5017885 () Bool)

(declare-fun tp!1407029 () Bool)

(declare-fun tp!1407027 () Bool)

(assert (=> b!5017885 (= e!3134714 (and tp!1407029 tp!1407027))))

(declare-fun b!5017882 () Bool)

(assert (=> b!5017882 (= e!3134714 tp_is_empty!36625)))

(assert (= (and b!5017150 (is-ElementMatch!13814 (regTwo!28140 r!12727))) b!5017882))

(assert (= (and b!5017150 (is-Concat!22607 (regTwo!28140 r!12727))) b!5017883))

(assert (= (and b!5017150 (is-Star!13814 (regTwo!28140 r!12727))) b!5017884))

(assert (= (and b!5017150 (is-Union!13814 (regTwo!28140 r!12727))) b!5017885))

(declare-fun e!3134716 () Bool)

(assert (=> b!5017140 (= tp!1406953 e!3134716)))

(declare-fun b!5017892 () Bool)

(declare-fun tp!1407036 () Bool)

(assert (=> b!5017892 (= e!3134716 tp!1407036)))

(declare-fun b!5017891 () Bool)

(declare-fun tp!1407040 () Bool)

(declare-fun tp!1407038 () Bool)

(assert (=> b!5017891 (= e!3134716 (and tp!1407040 tp!1407038))))

(declare-fun b!5017893 () Bool)

(declare-fun tp!1407039 () Bool)

(declare-fun tp!1407037 () Bool)

(assert (=> b!5017893 (= e!3134716 (and tp!1407039 tp!1407037))))

(declare-fun b!5017890 () Bool)

(assert (=> b!5017890 (= e!3134716 tp_is_empty!36625)))

(assert (= (and b!5017140 (is-ElementMatch!13814 (regOne!28141 r!12727))) b!5017890))

(assert (= (and b!5017140 (is-Concat!22607 (regOne!28141 r!12727))) b!5017891))

(assert (= (and b!5017140 (is-Star!13814 (regOne!28141 r!12727))) b!5017892))

(assert (= (and b!5017140 (is-Union!13814 (regOne!28141 r!12727))) b!5017893))

(declare-fun e!3134717 () Bool)

(assert (=> b!5017140 (= tp!1406952 e!3134717)))

(declare-fun b!5017896 () Bool)

(declare-fun tp!1407041 () Bool)

(assert (=> b!5017896 (= e!3134717 tp!1407041)))

(declare-fun b!5017895 () Bool)

(declare-fun tp!1407045 () Bool)

(declare-fun tp!1407043 () Bool)

(assert (=> b!5017895 (= e!3134717 (and tp!1407045 tp!1407043))))

(declare-fun b!5017897 () Bool)

(declare-fun tp!1407044 () Bool)

(declare-fun tp!1407042 () Bool)

(assert (=> b!5017897 (= e!3134717 (and tp!1407044 tp!1407042))))

(declare-fun b!5017894 () Bool)

(assert (=> b!5017894 (= e!3134717 tp_is_empty!36625)))

(assert (= (and b!5017140 (is-ElementMatch!13814 (regTwo!28141 r!12727))) b!5017894))

(assert (= (and b!5017140 (is-Concat!22607 (regTwo!28141 r!12727))) b!5017895))

(assert (= (and b!5017140 (is-Star!13814 (regTwo!28141 r!12727))) b!5017896))

(assert (= (and b!5017140 (is-Union!13814 (regTwo!28141 r!12727))) b!5017897))

(declare-fun tp!1407050 () Bool)

(declare-fun tp!1407049 () Bool)

(declare-fun b!5017900 () Bool)

(declare-fun e!3134719 () Bool)

(assert (=> b!5017900 (= e!3134719 (and (inv!76147 (left!42346 (c!857242 totalInput!1012))) tp!1407050 (inv!76147 (right!42676 (c!857242 totalInput!1012))) tp!1407049))))

(declare-fun b!5017902 () Bool)

(declare-fun e!3134718 () Bool)

(declare-fun tp!1407048 () Bool)

(assert (=> b!5017902 (= e!3134718 tp!1407048)))

(declare-fun b!5017901 () Bool)

(assert (=> b!5017901 (= e!3134719 (and (inv!76156 (xs!18659 (c!857242 totalInput!1012))) e!3134718))))

(assert (=> b!5017157 (= tp!1406958 (and (inv!76147 (c!857242 totalInput!1012)) e!3134719))))

(assert (= (and b!5017157 (is-Node!15333 (c!857242 totalInput!1012))) b!5017900))

(assert (= b!5017901 b!5017902))

(assert (= (and b!5017157 (is-Leaf!25449 (c!857242 totalInput!1012))) b!5017901))

(declare-fun m!6053060 () Bool)

(assert (=> b!5017900 m!6053060))

(declare-fun m!6053062 () Bool)

(assert (=> b!5017900 m!6053062))

(declare-fun m!6053064 () Bool)

(assert (=> b!5017901 m!6053064))

(assert (=> b!5017157 m!6052300))

(declare-fun b!5017909 () Bool)

(declare-fun e!3134724 () Bool)

(declare-fun tp!1407057 () Bool)

(declare-fun tp!1407058 () Bool)

(assert (=> b!5017909 (= e!3134724 (and tp!1407057 tp!1407058))))

(assert (=> b!5017138 (= tp!1406951 e!3134724)))

(assert (= (and b!5017138 (is-Cons!57923 (exprs!3739 setElem!28507))) b!5017909))

(declare-fun condSetEmpty!28516 () Bool)

(assert (=> setNonEmpty!28507 (= condSetEmpty!28516 (= setRest!28507 (as set.empty (Set Context!6478))))))

(declare-fun setRes!28516 () Bool)

(assert (=> setNonEmpty!28507 (= tp!1406955 setRes!28516)))

(declare-fun setIsEmpty!28516 () Bool)

(assert (=> setIsEmpty!28516 setRes!28516))

(declare-fun setElem!28516 () Context!6478)

(declare-fun tp!1407077 () Bool)

(declare-fun e!3134732 () Bool)

(declare-fun setNonEmpty!28516 () Bool)

(assert (=> setNonEmpty!28516 (= setRes!28516 (and tp!1407077 (inv!76146 setElem!28516) e!3134732))))

(declare-fun setRest!28516 () (Set Context!6478))

(assert (=> setNonEmpty!28516 (= setRest!28507 (set.union (set.insert setElem!28516 (as set.empty (Set Context!6478))) setRest!28516))))

(declare-fun b!5017924 () Bool)

(declare-fun tp!1407076 () Bool)

(assert (=> b!5017924 (= e!3134732 tp!1407076)))

(assert (= (and setNonEmpty!28507 condSetEmpty!28516) setIsEmpty!28516))

(assert (= (and setNonEmpty!28507 (not condSetEmpty!28516)) setNonEmpty!28516))

(assert (= setNonEmpty!28516 b!5017924))

(declare-fun m!6053068 () Bool)

(assert (=> setNonEmpty!28516 m!6053068))

(push 1)

(assert (not b!5017896))

(assert (not b!5017891))

(assert (not b!5017460))

(assert (not b!5017901))

(assert (not b!5017264))

(assert (not b!5017909))

(assert (not b!5017475))

(assert (not b!5017883))

(assert (not d!1615546))

(assert (not b!5017881))

(assert (not b!5017472))

(assert (not b!5017262))

(assert (not b!5017776))

(assert (not b!5017481))

(assert (not b!5017736))

(assert (not b!5017534))

(assert (not bm!350498))

(assert (not d!1615570))

(assert (not b!5017456))

(assert (not d!1615538))

(assert (not b!5017236))

(assert (not d!1615488))

(assert (not b!5017789))

(assert (not b!5017754))

(assert (not b!5017238))

(assert (not b!5017781))

(assert (not b!5017876))

(assert (not b!5017804))

(assert (not d!1615554))

(assert (not b!5017299))

(assert (not b!5017473))

(assert (not d!1615548))

(assert (not b!5017457))

(assert (not d!1615472))

(assert (not b!5017786))

(assert (not b!5017785))

(assert (not d!1615470))

(assert (not b!5017800))

(assert (not d!1615526))

(assert (not d!1615578))

(assert (not b!5017302))

(assert (not b!5017325))

(assert (not d!1615652))

(assert (not b!5017806))

(assert (not b!5017508))

(assert (not b!5017757))

(assert (not d!1615640))

(assert (not b!5017847))

(assert (not bm!350493))

(assert (not bm!350496))

(assert (not b!5017794))

(assert (not d!1615474))

(assert (not d!1615580))

(assert (not b!5017924))

(assert (not b!5017537))

(assert (not d!1615558))

(assert (not bm!350502))

(assert (not b!5017324))

(assert (not b!5017784))

(assert (not b!5017807))

(assert (not b!5017900))

(assert (not b!5017777))

(assert (not b!5017157))

(assert (not d!1615536))

(assert (not b!5017462))

(assert (not b!5017885))

(assert (not bm!350492))

(assert (not b!5017893))

(assert (not b!5017755))

(assert (not b!5017796))

(assert (not b!5017539))

(assert (not d!1615490))

(assert (not b!5017877))

(assert (not d!1615654))

(assert (not b!5017260))

(assert (not b!5017226))

(assert (not d!1615498))

(assert (not b!5017741))

(assert (not d!1615562))

(assert (not b!5017756))

(assert (not b!5017792))

(assert (not b!5017895))

(assert (not bm!350495))

(assert (not b!5017307))

(assert (not b!5017478))

(assert tp_is_empty!36625)

(assert (not d!1615638))

(assert (not d!1615528))

(assert (not b!5017774))

(assert (not b!5017801))

(assert (not d!1615542))

(assert (not b!5017897))

(assert (not bm!350423))

(assert (not d!1615566))

(assert (not b!5017266))

(assert (not b!5017480))

(assert (not d!1615552))

(assert (not bm!350499))

(assert (not b!5017880))

(assert (not b!5017305))

(assert (not d!1615642))

(assert (not b!5017732))

(assert (not b!5017154))

(assert (not b!5017532))

(assert (not b!5017265))

(assert (not bm!350494))

(assert (not b!5017827))

(assert (not setNonEmpty!28516))

(assert (not b!5017309))

(assert (not b!5017541))

(assert (not d!1615530))

(assert (not bm!350448))

(assert (not bm!350457))

(assert (not b!5017849))

(assert (not b!5017753))

(assert (not b!5017547))

(assert (not d!1615544))

(assert (not b!5017301))

(assert (not b!5017805))

(assert (not b!5017261))

(assert (not b!5017535))

(assert (not b!5017788))

(assert (not b!5017902))

(assert (not bm!350497))

(assert (not d!1615560))

(assert (not d!1615656))

(assert (not b!5017546))

(assert (not b!5017453))

(assert (not d!1615636))

(assert (not bm!350491))

(assert (not d!1615550))

(assert (not b!5017454))

(assert (not b!5017229))

(assert (not b!5017775))

(assert (not d!1615658))

(assert (not b!5017875))

(assert (not b!5017737))

(assert (not d!1615540))

(assert (not d!1615532))

(assert (not b!5017511))

(assert (not b!5017835))

(assert (not b!5017783))

(assert (not b!5017884))

(assert (not b!5017879))

(assert (not b!5017892))

(assert (not bm!350456))

(assert (not b!5017451))

(assert (not b!5017531))

(assert (not b!5017848))

(assert (not b!5017538))

(assert (not b!5017464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

