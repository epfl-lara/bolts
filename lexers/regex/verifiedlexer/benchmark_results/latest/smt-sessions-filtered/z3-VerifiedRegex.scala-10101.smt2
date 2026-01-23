; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528542 () Bool)

(assert start!528542)

(declare-fun res!2134197 () Bool)

(declare-fun e!3125446 () Bool)

(assert (=> start!528542 (=> (not res!2134197) (not e!3125446))))

(declare-datatypes ((C!27824 0))(
  ( (C!27825 (val!23278 Int)) )
))
(declare-datatypes ((Regex!13787 0))(
  ( (ElementMatch!13787 (c!853591 C!27824)) (Concat!22580 (regOne!28086 Regex!13787) (regTwo!28086 Regex!13787)) (EmptyExpr!13787) (Star!13787 (reg!14116 Regex!13787)) (EmptyLang!13787) (Union!13787 (regOne!28087 Regex!13787) (regTwo!28087 Regex!13787)) )
))
(declare-fun r!12727 () Regex!13787)

(declare-fun validRegex!6084 (Regex!13787) Bool)

(assert (=> start!528542 (= res!2134197 (validRegex!6084 r!12727))))

(assert (=> start!528542 e!3125446))

(declare-fun e!3125455 () Bool)

(assert (=> start!528542 e!3125455))

(declare-datatypes ((List!57965 0))(
  ( (Nil!57841) (Cons!57841 (h!64289 C!27824) (t!370311 List!57965)) )
))
(declare-datatypes ((IArray!30673 0))(
  ( (IArray!30674 (innerList!15394 List!57965)) )
))
(declare-datatypes ((Conc!15306 0))(
  ( (Node!15306 (left!42293 Conc!15306) (right!42623 Conc!15306) (csize!30842 Int) (cheight!15517 Int)) (Leaf!25408 (xs!18632 IArray!30673) (csize!30843 Int)) (Empty!15306) )
))
(declare-datatypes ((BalanceConc!30042 0))(
  ( (BalanceConc!30043 (c!853592 Conc!15306)) )
))
(declare-fun input!5597 () BalanceConc!30042)

(declare-fun e!3125450 () Bool)

(declare-fun inv!75975 (BalanceConc!30042) Bool)

(assert (=> start!528542 (and (inv!75975 input!5597) e!3125450)))

(declare-fun condSetEmpty!28370 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57966 0))(
  ( (Nil!57842) (Cons!57842 (h!64290 Regex!13787) (t!370312 List!57966)) )
))
(declare-datatypes ((Context!6424 0))(
  ( (Context!6425 (exprs!3712 List!57966)) )
))
(declare-fun z!4183 () (InoxSet Context!6424))

(assert (=> start!528542 (= condSetEmpty!28370 (= z!4183 ((as const (Array Context!6424 Bool)) false)))))

(declare-fun setRes!28370 () Bool)

(assert (=> start!528542 setRes!28370))

(declare-fun totalInput!1012 () BalanceConc!30042)

(declare-fun e!3125453 () Bool)

(assert (=> start!528542 (and (inv!75975 totalInput!1012) e!3125453)))

(declare-fun b!5001612 () Bool)

(declare-fun e!3125451 () Bool)

(declare-datatypes ((tuple2!62984 0))(
  ( (tuple2!62985 (_1!34795 List!57965) (_2!34795 List!57965)) )
))
(declare-fun lt!2069213 () tuple2!62984)

(declare-fun isEmpty!31310 (List!57965) Bool)

(assert (=> b!5001612 (= e!3125451 (not (isEmpty!31310 (_1!34795 lt!2069213))))))

(declare-fun b!5001613 () Bool)

(declare-fun e!3125443 () Bool)

(declare-fun e!3125452 () Bool)

(assert (=> b!5001613 (= e!3125443 e!3125452)))

(declare-fun res!2134194 () Bool)

(assert (=> b!5001613 (=> (not res!2134194) (not e!3125452))))

(declare-fun lt!2069217 () List!57965)

(declare-fun lt!2069227 () List!57965)

(assert (=> b!5001613 (= res!2134194 (= lt!2069217 lt!2069227))))

(declare-fun lt!2069209 () List!57965)

(declare-fun lt!2069210 () List!57965)

(declare-fun ++!12633 (List!57965 List!57965) List!57965)

(assert (=> b!5001613 (= lt!2069217 (++!12633 lt!2069209 lt!2069210))))

(declare-datatypes ((tuple2!62986 0))(
  ( (tuple2!62987 (_1!34796 BalanceConc!30042) (_2!34796 BalanceConc!30042)) )
))
(declare-fun lt!2069215 () tuple2!62986)

(declare-fun list!18610 (BalanceConc!30042) List!57965)

(assert (=> b!5001613 (= lt!2069210 (list!18610 (_2!34796 lt!2069215)))))

(assert (=> b!5001613 (= lt!2069209 (list!18610 (_1!34796 lt!2069215)))))

(declare-fun findLongestMatch!1800 (Regex!13787 List!57965) tuple2!62984)

(assert (=> b!5001613 (= lt!2069213 (findLongestMatch!1800 r!12727 lt!2069227))))

(declare-fun lt!2069231 () Int)

(declare-fun lt!2069207 () Int)

(declare-fun size!38442 (BalanceConc!30042) Int)

(assert (=> b!5001613 (= lt!2069231 (- lt!2069207 (size!38442 input!5597)))))

(assert (=> b!5001613 (= lt!2069207 (size!38442 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!89 ((InoxSet Context!6424) BalanceConc!30042 BalanceConc!30042) tuple2!62986)

(assert (=> b!5001613 (= lt!2069215 (findLongestMatchZipperFastV2!89 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5001614 () Bool)

(declare-fun e!3125458 () Bool)

(declare-fun tp!1402924 () Bool)

(assert (=> b!5001614 (= e!3125458 tp!1402924)))

(declare-fun setIsEmpty!28370 () Bool)

(assert (=> setIsEmpty!28370 setRes!28370))

(declare-fun b!5001615 () Bool)

(declare-fun e!3125442 () Bool)

(declare-fun e!3125447 () Bool)

(assert (=> b!5001615 (= e!3125442 e!3125447)))

(declare-fun res!2134195 () Bool)

(assert (=> b!5001615 (=> res!2134195 e!3125447)))

(declare-fun lt!2069211 () Int)

(assert (=> b!5001615 (= res!2134195 (<= lt!2069211 (size!38442 (_1!34796 lt!2069215))))))

(declare-fun size!38443 (List!57965) Int)

(assert (=> b!5001615 (= lt!2069211 (size!38443 (_1!34795 lt!2069213)))))

(declare-fun lt!2069223 () Bool)

(declare-fun matchR!6751 (Regex!13787 List!57965) Bool)

(assert (=> b!5001615 (= (matchR!6751 r!12727 lt!2069209) lt!2069223)))

(declare-datatypes ((List!57967 0))(
  ( (Nil!57843) (Cons!57843 (h!64291 Context!6424) (t!370313 List!57967)) )
))
(declare-fun lt!2069212 () List!57967)

(declare-datatypes ((Unit!149001 0))(
  ( (Unit!149002) )
))
(declare-fun lt!2069218 () Unit!149001)

(declare-fun theoremZipperRegexEquiv!159 ((InoxSet Context!6424) List!57967 Regex!13787 List!57965) Unit!149001)

(assert (=> b!5001615 (= lt!2069218 (theoremZipperRegexEquiv!159 z!4183 lt!2069212 r!12727 lt!2069209))))

(declare-fun lt!2069232 () Bool)

(declare-fun matchZipper!555 ((InoxSet Context!6424) List!57965) Bool)

(assert (=> b!5001615 (= lt!2069232 (matchZipper!555 z!4183 (_1!34795 lt!2069213)))))

(declare-fun lt!2069226 () Unit!149001)

(assert (=> b!5001615 (= lt!2069226 (theoremZipperRegexEquiv!159 z!4183 lt!2069212 r!12727 (_1!34795 lt!2069213)))))

(declare-fun b!5001616 () Bool)

(declare-fun tp!1402921 () Bool)

(declare-fun tp!1402923 () Bool)

(assert (=> b!5001616 (= e!3125455 (and tp!1402921 tp!1402923))))

(declare-fun b!5001617 () Bool)

(declare-fun tp!1402925 () Bool)

(assert (=> b!5001617 (= e!3125455 tp!1402925)))

(declare-fun b!5001618 () Bool)

(declare-fun e!3125459 () Bool)

(assert (=> b!5001618 (= e!3125447 e!3125459)))

(declare-fun res!2134192 () Bool)

(assert (=> b!5001618 (=> res!2134192 e!3125459)))

(declare-fun lt!2069208 () List!57965)

(assert (=> b!5001618 (= res!2134192 (not (= lt!2069208 lt!2069227)))))

(declare-fun lt!2069219 () List!57965)

(declare-fun take!646 (List!57965 Int) List!57965)

(assert (=> b!5001618 (= lt!2069219 (take!646 lt!2069208 lt!2069211))))

(declare-fun lt!2069216 () List!57965)

(declare-fun drop!2450 (List!57965 Int) List!57965)

(assert (=> b!5001618 (= lt!2069208 (drop!2450 lt!2069216 lt!2069231))))

(declare-fun b!5001619 () Bool)

(declare-fun e!3125444 () Bool)

(declare-fun isEmpty!31311 (BalanceConc!30042) Bool)

(assert (=> b!5001619 (= e!3125444 (not (isEmpty!31311 (_1!34796 lt!2069215))))))

(declare-fun b!5001620 () Bool)

(declare-fun tp!1402920 () Bool)

(declare-fun tp!1402918 () Bool)

(assert (=> b!5001620 (= e!3125455 (and tp!1402920 tp!1402918))))

(declare-fun b!5001621 () Bool)

(declare-fun tp_is_empty!36571 () Bool)

(assert (=> b!5001621 (= e!3125455 tp_is_empty!36571)))

(declare-fun b!5001622 () Bool)

(declare-fun tp!1402922 () Bool)

(declare-fun inv!75976 (Conc!15306) Bool)

(assert (=> b!5001622 (= e!3125453 (and (inv!75976 (c!853592 totalInput!1012)) tp!1402922))))

(declare-fun b!5001623 () Bool)

(declare-fun e!3125454 () Bool)

(declare-fun lt!2069229 () tuple2!62984)

(assert (=> b!5001623 (= e!3125454 (matchR!6751 r!12727 (_1!34795 lt!2069229)))))

(declare-fun b!5001624 () Bool)

(declare-fun e!3125449 () Bool)

(declare-fun isPrefix!5340 (List!57965 List!57965) Bool)

(assert (=> b!5001624 (= e!3125449 (isPrefix!5340 (_1!34795 lt!2069213) lt!2069227))))

(declare-fun b!5001625 () Bool)

(declare-fun e!3125448 () Bool)

(assert (=> b!5001625 (= e!3125446 e!3125448)))

(declare-fun res!2134189 () Bool)

(assert (=> b!5001625 (=> (not res!2134189) (not e!3125448))))

(declare-fun unfocusZipper!314 (List!57967) Regex!13787)

(assert (=> b!5001625 (= res!2134189 (= (unfocusZipper!314 lt!2069212) r!12727))))

(declare-fun toList!8072 ((InoxSet Context!6424)) List!57967)

(assert (=> b!5001625 (= lt!2069212 (toList!8072 z!4183))))

(declare-fun b!5001626 () Bool)

(declare-fun tp!1402926 () Bool)

(assert (=> b!5001626 (= e!3125450 (and (inv!75976 (c!853592 input!5597)) tp!1402926))))

(declare-fun setElem!28370 () Context!6424)

(declare-fun tp!1402919 () Bool)

(declare-fun setNonEmpty!28370 () Bool)

(declare-fun inv!75977 (Context!6424) Bool)

(assert (=> setNonEmpty!28370 (= setRes!28370 (and tp!1402919 (inv!75977 setElem!28370) e!3125458))))

(declare-fun setRest!28370 () (InoxSet Context!6424))

(assert (=> setNonEmpty!28370 (= z!4183 ((_ map or) (store ((as const (Array Context!6424 Bool)) false) setElem!28370 true) setRest!28370))))

(declare-fun b!5001627 () Bool)

(assert (=> b!5001627 (= e!3125448 e!3125443)))

(declare-fun res!2134200 () Bool)

(assert (=> b!5001627 (=> (not res!2134200) (not e!3125443))))

(declare-fun isSuffix!1353 (List!57965 List!57965) Bool)

(assert (=> b!5001627 (= res!2134200 (isSuffix!1353 lt!2069227 lt!2069216))))

(assert (=> b!5001627 (= lt!2069216 (list!18610 totalInput!1012))))

(assert (=> b!5001627 (= lt!2069227 (list!18610 input!5597))))

(declare-fun e!3125445 () Bool)

(declare-fun lt!2069224 () Int)

(declare-fun b!5001628 () Bool)

(assert (=> b!5001628 (= e!3125445 (matchZipper!555 z!4183 (take!646 (drop!2450 lt!2069216 lt!2069231) lt!2069224)))))

(declare-fun b!5001629 () Bool)

(declare-fun e!3125457 () Bool)

(declare-fun e!3125456 () Bool)

(assert (=> b!5001629 (= e!3125457 (not e!3125456))))

(declare-fun res!2134199 () Bool)

(assert (=> b!5001629 (=> res!2134199 e!3125456)))

(assert (=> b!5001629 (= res!2134199 e!3125444)))

(declare-fun res!2134191 () Bool)

(assert (=> b!5001629 (=> (not res!2134191) (not e!3125444))))

(assert (=> b!5001629 (= res!2134191 (not lt!2069223))))

(assert (=> b!5001629 (= lt!2069223 (matchZipper!555 z!4183 lt!2069209))))

(assert (=> b!5001629 e!3125454))

(declare-fun res!2134201 () Bool)

(assert (=> b!5001629 (=> res!2134201 e!3125454)))

(assert (=> b!5001629 (= res!2134201 (isEmpty!31310 (_1!34795 lt!2069229)))))

(declare-fun findLongestMatchInner!1976 (Regex!13787 List!57965 Int List!57965 List!57965 Int) tuple2!62984)

(assert (=> b!5001629 (= lt!2069229 (findLongestMatchInner!1976 r!12727 Nil!57841 (size!38443 Nil!57841) lt!2069227 lt!2069227 (size!38443 lt!2069227)))))

(declare-fun lt!2069221 () Unit!149001)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1929 (Regex!13787 List!57965) Unit!149001)

(assert (=> b!5001629 (= lt!2069221 (longestMatchIsAcceptedByMatchOrIsEmpty!1929 r!12727 lt!2069227))))

(assert (=> b!5001629 e!3125445))

(declare-fun res!2134196 () Bool)

(assert (=> b!5001629 (=> res!2134196 e!3125445)))

(assert (=> b!5001629 (= res!2134196 (= lt!2069224 0))))

(declare-fun findLongestMatchInnerZipperFastV2!127 ((InoxSet Context!6424) Int BalanceConc!30042 Int) Int)

(assert (=> b!5001629 (= lt!2069224 (findLongestMatchInnerZipperFastV2!127 z!4183 lt!2069231 totalInput!1012 lt!2069207))))

(declare-fun lt!2069228 () Unit!149001)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!46 ((InoxSet Context!6424) Int BalanceConc!30042) Unit!149001)

(assert (=> b!5001629 (= lt!2069228 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!46 z!4183 lt!2069231 totalInput!1012))))

(assert (=> b!5001629 (isPrefix!5340 (take!646 lt!2069216 lt!2069231) lt!2069216)))

(declare-fun lt!2069225 () Unit!149001)

(declare-fun lemmaTakeIsPrefix!140 (List!57965 Int) Unit!149001)

(assert (=> b!5001629 (= lt!2069225 (lemmaTakeIsPrefix!140 lt!2069216 lt!2069231))))

(declare-fun lt!2069230 () List!57965)

(assert (=> b!5001629 (isPrefix!5340 (_1!34795 lt!2069213) lt!2069230)))

(declare-fun lt!2069222 () Unit!149001)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3438 (List!57965 List!57965) Unit!149001)

(assert (=> b!5001629 (= lt!2069222 (lemmaConcatTwoListThenFirstIsPrefix!3438 (_1!34795 lt!2069213) (_2!34795 lt!2069213)))))

(assert (=> b!5001629 (isPrefix!5340 lt!2069209 lt!2069217)))

(declare-fun lt!2069220 () Unit!149001)

(assert (=> b!5001629 (= lt!2069220 (lemmaConcatTwoListThenFirstIsPrefix!3438 lt!2069209 lt!2069210))))

(declare-fun b!5001630 () Bool)

(assert (=> b!5001630 (= e!3125459 e!3125449)))

(declare-fun res!2134193 () Bool)

(assert (=> b!5001630 (=> res!2134193 e!3125449)))

(assert (=> b!5001630 (= res!2134193 (not (isPrefix!5340 lt!2069219 lt!2069227)))))

(assert (=> b!5001630 (isPrefix!5340 (take!646 lt!2069227 lt!2069211) lt!2069227)))

(declare-fun lt!2069214 () Unit!149001)

(assert (=> b!5001630 (= lt!2069214 (lemmaTakeIsPrefix!140 lt!2069227 lt!2069211))))

(declare-fun b!5001631 () Bool)

(assert (=> b!5001631 (= e!3125452 e!3125457)))

(declare-fun res!2134188 () Bool)

(assert (=> b!5001631 (=> (not res!2134188) (not e!3125457))))

(assert (=> b!5001631 (= res!2134188 (= lt!2069230 lt!2069227))))

(assert (=> b!5001631 (= lt!2069230 (++!12633 (_1!34795 lt!2069213) (_2!34795 lt!2069213)))))

(declare-fun b!5001632 () Bool)

(assert (=> b!5001632 (= e!3125456 e!3125442)))

(declare-fun res!2134198 () Bool)

(assert (=> b!5001632 (=> res!2134198 e!3125442)))

(assert (=> b!5001632 (= res!2134198 e!3125451)))

(declare-fun res!2134190 () Bool)

(assert (=> b!5001632 (=> (not res!2134190) (not e!3125451))))

(assert (=> b!5001632 (= res!2134190 (not lt!2069232))))

(assert (=> b!5001632 (= lt!2069232 (matchR!6751 r!12727 (_1!34795 lt!2069213)))))

(assert (= (and start!528542 res!2134197) b!5001625))

(assert (= (and b!5001625 res!2134189) b!5001627))

(assert (= (and b!5001627 res!2134200) b!5001613))

(assert (= (and b!5001613 res!2134194) b!5001631))

(assert (= (and b!5001631 res!2134188) b!5001629))

(assert (= (and b!5001629 (not res!2134196)) b!5001628))

(assert (= (and b!5001629 (not res!2134201)) b!5001623))

(assert (= (and b!5001629 res!2134191) b!5001619))

(assert (= (and b!5001629 (not res!2134199)) b!5001632))

(assert (= (and b!5001632 res!2134190) b!5001612))

(assert (= (and b!5001632 (not res!2134198)) b!5001615))

(assert (= (and b!5001615 (not res!2134195)) b!5001618))

(assert (= (and b!5001618 (not res!2134192)) b!5001630))

(assert (= (and b!5001630 (not res!2134193)) b!5001624))

(get-info :version)

(assert (= (and start!528542 ((_ is ElementMatch!13787) r!12727)) b!5001621))

(assert (= (and start!528542 ((_ is Concat!22580) r!12727)) b!5001620))

(assert (= (and start!528542 ((_ is Star!13787) r!12727)) b!5001617))

(assert (= (and start!528542 ((_ is Union!13787) r!12727)) b!5001616))

(assert (= start!528542 b!5001626))

(assert (= (and start!528542 condSetEmpty!28370) setIsEmpty!28370))

(assert (= (and start!528542 (not condSetEmpty!28370)) setNonEmpty!28370))

(assert (= setNonEmpty!28370 b!5001614))

(assert (= start!528542 b!5001622))

(declare-fun m!6035260 () Bool)

(assert (=> b!5001613 m!6035260))

(declare-fun m!6035262 () Bool)

(assert (=> b!5001613 m!6035262))

(declare-fun m!6035264 () Bool)

(assert (=> b!5001613 m!6035264))

(declare-fun m!6035266 () Bool)

(assert (=> b!5001613 m!6035266))

(declare-fun m!6035268 () Bool)

(assert (=> b!5001613 m!6035268))

(declare-fun m!6035270 () Bool)

(assert (=> b!5001613 m!6035270))

(declare-fun m!6035272 () Bool)

(assert (=> b!5001613 m!6035272))

(declare-fun m!6035274 () Bool)

(assert (=> b!5001629 m!6035274))

(declare-fun m!6035276 () Bool)

(assert (=> b!5001629 m!6035276))

(declare-fun m!6035278 () Bool)

(assert (=> b!5001629 m!6035278))

(declare-fun m!6035280 () Bool)

(assert (=> b!5001629 m!6035280))

(declare-fun m!6035282 () Bool)

(assert (=> b!5001629 m!6035282))

(declare-fun m!6035284 () Bool)

(assert (=> b!5001629 m!6035284))

(declare-fun m!6035286 () Bool)

(assert (=> b!5001629 m!6035286))

(assert (=> b!5001629 m!6035276))

(declare-fun m!6035288 () Bool)

(assert (=> b!5001629 m!6035288))

(declare-fun m!6035290 () Bool)

(assert (=> b!5001629 m!6035290))

(assert (=> b!5001629 m!6035286))

(declare-fun m!6035292 () Bool)

(assert (=> b!5001629 m!6035292))

(declare-fun m!6035294 () Bool)

(assert (=> b!5001629 m!6035294))

(declare-fun m!6035296 () Bool)

(assert (=> b!5001629 m!6035296))

(assert (=> b!5001629 m!6035288))

(declare-fun m!6035298 () Bool)

(assert (=> b!5001629 m!6035298))

(declare-fun m!6035300 () Bool)

(assert (=> b!5001629 m!6035300))

(declare-fun m!6035302 () Bool)

(assert (=> b!5001629 m!6035302))

(declare-fun m!6035304 () Bool)

(assert (=> b!5001612 m!6035304))

(declare-fun m!6035306 () Bool)

(assert (=> b!5001631 m!6035306))

(declare-fun m!6035308 () Bool)

(assert (=> b!5001618 m!6035308))

(declare-fun m!6035310 () Bool)

(assert (=> b!5001618 m!6035310))

(assert (=> b!5001628 m!6035310))

(assert (=> b!5001628 m!6035310))

(declare-fun m!6035312 () Bool)

(assert (=> b!5001628 m!6035312))

(assert (=> b!5001628 m!6035312))

(declare-fun m!6035314 () Bool)

(assert (=> b!5001628 m!6035314))

(declare-fun m!6035316 () Bool)

(assert (=> setNonEmpty!28370 m!6035316))

(declare-fun m!6035318 () Bool)

(assert (=> b!5001626 m!6035318))

(declare-fun m!6035320 () Bool)

(assert (=> b!5001624 m!6035320))

(declare-fun m!6035322 () Bool)

(assert (=> b!5001630 m!6035322))

(declare-fun m!6035324 () Bool)

(assert (=> b!5001630 m!6035324))

(assert (=> b!5001630 m!6035324))

(declare-fun m!6035326 () Bool)

(assert (=> b!5001630 m!6035326))

(declare-fun m!6035328 () Bool)

(assert (=> b!5001630 m!6035328))

(declare-fun m!6035330 () Bool)

(assert (=> b!5001615 m!6035330))

(declare-fun m!6035332 () Bool)

(assert (=> b!5001615 m!6035332))

(declare-fun m!6035334 () Bool)

(assert (=> b!5001615 m!6035334))

(declare-fun m!6035336 () Bool)

(assert (=> b!5001615 m!6035336))

(declare-fun m!6035338 () Bool)

(assert (=> b!5001615 m!6035338))

(declare-fun m!6035340 () Bool)

(assert (=> b!5001615 m!6035340))

(declare-fun m!6035342 () Bool)

(assert (=> b!5001627 m!6035342))

(declare-fun m!6035344 () Bool)

(assert (=> b!5001627 m!6035344))

(declare-fun m!6035346 () Bool)

(assert (=> b!5001627 m!6035346))

(declare-fun m!6035348 () Bool)

(assert (=> b!5001623 m!6035348))

(declare-fun m!6035350 () Bool)

(assert (=> b!5001625 m!6035350))

(declare-fun m!6035352 () Bool)

(assert (=> b!5001625 m!6035352))

(declare-fun m!6035354 () Bool)

(assert (=> b!5001619 m!6035354))

(declare-fun m!6035356 () Bool)

(assert (=> b!5001622 m!6035356))

(declare-fun m!6035358 () Bool)

(assert (=> start!528542 m!6035358))

(declare-fun m!6035360 () Bool)

(assert (=> start!528542 m!6035360))

(declare-fun m!6035362 () Bool)

(assert (=> start!528542 m!6035362))

(declare-fun m!6035364 () Bool)

(assert (=> b!5001632 m!6035364))

(check-sat (not start!528542) (not b!5001632) (not b!5001613) (not b!5001612) (not b!5001623) (not b!5001627) (not b!5001625) (not b!5001618) (not b!5001631) (not b!5001630) (not b!5001614) tp_is_empty!36571 (not setNonEmpty!28370) (not b!5001628) (not b!5001616) (not b!5001626) (not b!5001629) (not b!5001622) (not b!5001624) (not b!5001615) (not b!5001617) (not b!5001619) (not b!5001620))
(check-sat)
