; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527462 () Bool)

(assert start!527462)

(declare-fun b!4990552 () Bool)

(declare-fun e!3119154 () Bool)

(declare-fun tp!1399017 () Bool)

(assert (=> b!4990552 (= e!3119154 tp!1399017)))

(declare-fun b!4990553 () Bool)

(declare-fun e!3119155 () Bool)

(declare-datatypes ((C!27756 0))(
  ( (C!27757 (val!23244 Int)) )
))
(declare-datatypes ((Regex!13753 0))(
  ( (ElementMatch!13753 (c!851371 C!27756)) (Concat!22546 (regOne!28018 Regex!13753) (regTwo!28018 Regex!13753)) (EmptyExpr!13753) (Star!13753 (reg!14082 Regex!13753)) (EmptyLang!13753) (Union!13753 (regOne!28019 Regex!13753) (regTwo!28019 Regex!13753)) )
))
(declare-fun r!12727 () Regex!13753)

(declare-datatypes ((List!57863 0))(
  ( (Nil!57739) (Cons!57739 (h!64187 C!27756) (t!370189 List!57863)) )
))
(declare-datatypes ((tuple2!62840 0))(
  ( (tuple2!62841 (_1!34723 List!57863) (_2!34723 List!57863)) )
))
(declare-fun lt!2064080 () tuple2!62840)

(declare-fun matchR!6725 (Regex!13753 List!57863) Bool)

(assert (=> b!4990553 (= e!3119155 (matchR!6725 r!12727 (_1!34723 lt!2064080)))))

(declare-fun b!4990554 () Bool)

(declare-fun e!3119147 () Bool)

(declare-fun e!3119158 () Bool)

(assert (=> b!4990554 (= e!3119147 e!3119158)))

(declare-fun res!2130600 () Bool)

(assert (=> b!4990554 (=> (not res!2130600) (not e!3119158))))

(declare-fun lt!2064074 () List!57863)

(declare-fun lt!2064087 () List!57863)

(assert (=> b!4990554 (= res!2130600 (= lt!2064074 lt!2064087))))

(declare-fun lt!2064071 () tuple2!62840)

(declare-fun ++!12597 (List!57863 List!57863) List!57863)

(assert (=> b!4990554 (= lt!2064074 (++!12597 (_1!34723 lt!2064071) (_2!34723 lt!2064071)))))

(declare-fun b!4990555 () Bool)

(declare-fun e!3119148 () Bool)

(declare-fun e!3119152 () Bool)

(assert (=> b!4990555 (= e!3119148 e!3119152)))

(declare-fun res!2130609 () Bool)

(assert (=> b!4990555 (=> (not res!2130609) (not e!3119152))))

(declare-fun lt!2064076 () List!57863)

(declare-fun isSuffix!1319 (List!57863 List!57863) Bool)

(assert (=> b!4990555 (= res!2130609 (isSuffix!1319 lt!2064087 lt!2064076))))

(declare-datatypes ((IArray!30605 0))(
  ( (IArray!30606 (innerList!15360 List!57863)) )
))
(declare-datatypes ((Conc!15272 0))(
  ( (Node!15272 (left!42238 Conc!15272) (right!42568 Conc!15272) (csize!30774 Int) (cheight!15483 Int)) (Leaf!25357 (xs!18598 IArray!30605) (csize!30775 Int)) (Empty!15272) )
))
(declare-datatypes ((BalanceConc!29974 0))(
  ( (BalanceConc!29975 (c!851372 Conc!15272)) )
))
(declare-fun totalInput!1012 () BalanceConc!29974)

(declare-fun list!18556 (BalanceConc!29974) List!57863)

(assert (=> b!4990555 (= lt!2064076 (list!18556 totalInput!1012))))

(declare-fun input!5597 () BalanceConc!29974)

(assert (=> b!4990555 (= lt!2064087 (list!18556 input!5597))))

(declare-fun b!4990557 () Bool)

(declare-fun e!3119156 () Bool)

(assert (=> b!4990557 (= e!3119156 true)))

(declare-fun lt!2064081 () List!57863)

(declare-fun lt!2064077 () Bool)

(assert (=> b!4990557 (or (= lt!2064081 (_1!34723 lt!2064071)) (not lt!2064077))))

(declare-datatypes ((Unit!148871 0))(
  ( (Unit!148872) )
))
(declare-fun lt!2064086 () Unit!148871)

(declare-fun longestMatchNoBiggerStringMatch!15 (Regex!13753 List!57863 List!57863 List!57863) Unit!148871)

(assert (=> b!4990557 (= lt!2064086 (longestMatchNoBiggerStringMatch!15 r!12727 lt!2064087 (_1!34723 lt!2064071) lt!2064081))))

(declare-fun b!4990558 () Bool)

(declare-fun e!3119146 () Bool)

(declare-fun tp!1399014 () Bool)

(declare-fun inv!75776 (Conc!15272) Bool)

(assert (=> b!4990558 (= e!3119146 (and (inv!75776 (c!851372 totalInput!1012)) tp!1399014))))

(declare-fun b!4990559 () Bool)

(declare-fun tp!1399012 () Bool)

(declare-fun tp!1399020 () Bool)

(assert (=> b!4990559 (= e!3119154 (and tp!1399012 tp!1399020))))

(declare-fun setIsEmpty!28214 () Bool)

(declare-fun setRes!28214 () Bool)

(assert (=> setIsEmpty!28214 setRes!28214))

(declare-fun b!4990560 () Bool)

(declare-fun tp_is_empty!36503 () Bool)

(assert (=> b!4990560 (= e!3119154 tp_is_empty!36503)))

(declare-fun b!4990561 () Bool)

(declare-fun e!3119145 () Bool)

(declare-fun e!3119149 () Bool)

(assert (=> b!4990561 (= e!3119145 e!3119149)))

(declare-fun res!2130608 () Bool)

(assert (=> b!4990561 (=> res!2130608 e!3119149)))

(declare-fun e!3119153 () Bool)

(assert (=> b!4990561 (= res!2130608 e!3119153)))

(declare-fun res!2130610 () Bool)

(assert (=> b!4990561 (=> (not res!2130610) (not e!3119153))))

(declare-fun lt!2064084 () Bool)

(assert (=> b!4990561 (= res!2130610 (not lt!2064084))))

(assert (=> b!4990561 (= lt!2064084 (matchR!6725 r!12727 (_1!34723 lt!2064071)))))

(declare-fun b!4990562 () Bool)

(declare-fun e!3119151 () Bool)

(assert (=> b!4990562 (= e!3119151 e!3119148)))

(declare-fun res!2130607 () Bool)

(assert (=> b!4990562 (=> (not res!2130607) (not e!3119148))))

(declare-datatypes ((List!57864 0))(
  ( (Nil!57740) (Cons!57740 (h!64188 Regex!13753) (t!370190 List!57864)) )
))
(declare-datatypes ((Context!6356 0))(
  ( (Context!6357 (exprs!3678 List!57864)) )
))
(declare-datatypes ((List!57865 0))(
  ( (Nil!57741) (Cons!57741 (h!64189 Context!6356) (t!370191 List!57865)) )
))
(declare-fun lt!2064090 () List!57865)

(declare-fun unfocusZipper!280 (List!57865) Regex!13753)

(assert (=> b!4990562 (= res!2130607 (= (unfocusZipper!280 lt!2064090) r!12727))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4183 () (InoxSet Context!6356))

(declare-fun toList!8038 ((InoxSet Context!6356)) List!57865)

(assert (=> b!4990562 (= lt!2064090 (toList!8038 z!4183))))

(declare-fun b!4990563 () Bool)

(declare-fun isEmpty!31240 (List!57863) Bool)

(assert (=> b!4990563 (= e!3119153 (not (isEmpty!31240 (_1!34723 lt!2064071))))))

(declare-fun b!4990564 () Bool)

(declare-fun e!3119157 () Bool)

(declare-fun tp!1399018 () Bool)

(assert (=> b!4990564 (= e!3119157 tp!1399018)))

(declare-fun b!4990565 () Bool)

(assert (=> b!4990565 (= e!3119158 (not e!3119145))))

(declare-fun res!2130606 () Bool)

(assert (=> b!4990565 (=> res!2130606 e!3119145)))

(declare-fun e!3119159 () Bool)

(assert (=> b!4990565 (= res!2130606 e!3119159)))

(declare-fun res!2130605 () Bool)

(assert (=> b!4990565 (=> (not res!2130605) (not e!3119159))))

(declare-fun lt!2064082 () Bool)

(assert (=> b!4990565 (= res!2130605 (not lt!2064082))))

(declare-fun matchZipper!529 ((InoxSet Context!6356) List!57863) Bool)

(assert (=> b!4990565 (= lt!2064082 (matchZipper!529 z!4183 lt!2064081))))

(assert (=> b!4990565 e!3119155))

(declare-fun res!2130604 () Bool)

(assert (=> b!4990565 (=> res!2130604 e!3119155)))

(assert (=> b!4990565 (= res!2130604 (isEmpty!31240 (_1!34723 lt!2064080)))))

(declare-fun findLongestMatchInner!1942 (Regex!13753 List!57863 Int List!57863 List!57863 Int) tuple2!62840)

(declare-fun size!38358 (List!57863) Int)

(assert (=> b!4990565 (= lt!2064080 (findLongestMatchInner!1942 r!12727 Nil!57739 (size!38358 Nil!57739) lt!2064087 lt!2064087 (size!38358 lt!2064087)))))

(declare-fun lt!2064069 () Unit!148871)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1903 (Regex!13753 List!57863) Unit!148871)

(assert (=> b!4990565 (= lt!2064069 (longestMatchIsAcceptedByMatchOrIsEmpty!1903 r!12727 lt!2064087))))

(declare-fun e!3119144 () Bool)

(assert (=> b!4990565 e!3119144))

(declare-fun res!2130603 () Bool)

(assert (=> b!4990565 (=> res!2130603 e!3119144)))

(declare-fun lt!2064075 () Int)

(assert (=> b!4990565 (= res!2130603 (= lt!2064075 0))))

(declare-fun lt!2064089 () Int)

(declare-fun lt!2064079 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!93 ((InoxSet Context!6356) Int BalanceConc!29974 Int) Int)

(assert (=> b!4990565 (= lt!2064075 (findLongestMatchInnerZipperFastV2!93 z!4183 lt!2064089 totalInput!1012 lt!2064079))))

(declare-fun lt!2064070 () Unit!148871)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!20 ((InoxSet Context!6356) Int BalanceConc!29974) Unit!148871)

(assert (=> b!4990565 (= lt!2064070 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!20 z!4183 lt!2064089 totalInput!1012))))

(declare-fun isPrefix!5310 (List!57863 List!57863) Bool)

(declare-fun take!618 (List!57863 Int) List!57863)

(assert (=> b!4990565 (isPrefix!5310 (take!618 lt!2064076 lt!2064089) lt!2064076)))

(declare-fun lt!2064091 () Unit!148871)

(declare-fun lemmaTakeIsPrefix!112 (List!57863 Int) Unit!148871)

(assert (=> b!4990565 (= lt!2064091 (lemmaTakeIsPrefix!112 lt!2064076 lt!2064089))))

(assert (=> b!4990565 (isPrefix!5310 (_1!34723 lt!2064071) lt!2064074)))

(declare-fun lt!2064072 () Unit!148871)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3408 (List!57863 List!57863) Unit!148871)

(assert (=> b!4990565 (= lt!2064072 (lemmaConcatTwoListThenFirstIsPrefix!3408 (_1!34723 lt!2064071) (_2!34723 lt!2064071)))))

(declare-fun lt!2064085 () List!57863)

(assert (=> b!4990565 (isPrefix!5310 lt!2064081 lt!2064085)))

(declare-fun lt!2064073 () Unit!148871)

(declare-fun lt!2064092 () List!57863)

(assert (=> b!4990565 (= lt!2064073 (lemmaConcatTwoListThenFirstIsPrefix!3408 lt!2064081 lt!2064092))))

(declare-fun b!4990566 () Bool)

(declare-datatypes ((tuple2!62842 0))(
  ( (tuple2!62843 (_1!34724 BalanceConc!29974) (_2!34724 BalanceConc!29974)) )
))
(declare-fun lt!2064083 () tuple2!62842)

(declare-fun isEmpty!31241 (BalanceConc!29974) Bool)

(assert (=> b!4990566 (= e!3119159 (not (isEmpty!31241 (_1!34724 lt!2064083))))))

(declare-fun b!4990567 () Bool)

(assert (=> b!4990567 (= e!3119149 e!3119156)))

(declare-fun res!2130602 () Bool)

(assert (=> b!4990567 (=> res!2130602 e!3119156)))

(declare-fun lt!2064068 () Int)

(declare-fun lt!2064078 () Int)

(assert (=> b!4990567 (= res!2130602 (or (> lt!2064068 lt!2064078) (<= lt!2064078 lt!2064068)))))

(declare-fun size!38359 (BalanceConc!29974) Int)

(assert (=> b!4990567 (= lt!2064078 (size!38359 (_1!34724 lt!2064083)))))

(assert (=> b!4990567 (= lt!2064068 (size!38358 (_1!34723 lt!2064071)))))

(assert (=> b!4990567 (= lt!2064077 lt!2064082)))

(assert (=> b!4990567 (= lt!2064077 (matchR!6725 r!12727 lt!2064081))))

(declare-fun lt!2064088 () Unit!148871)

(declare-fun theoremZipperRegexEquiv!139 ((InoxSet Context!6356) List!57865 Regex!13753 List!57863) Unit!148871)

(assert (=> b!4990567 (= lt!2064088 (theoremZipperRegexEquiv!139 z!4183 lt!2064090 r!12727 lt!2064081))))

(assert (=> b!4990567 (= lt!2064084 (matchZipper!529 z!4183 (_1!34723 lt!2064071)))))

(declare-fun lt!2064067 () Unit!148871)

(assert (=> b!4990567 (= lt!2064067 (theoremZipperRegexEquiv!139 z!4183 lt!2064090 r!12727 (_1!34723 lt!2064071)))))

(declare-fun res!2130611 () Bool)

(assert (=> start!527462 (=> (not res!2130611) (not e!3119151))))

(declare-fun validRegex!6050 (Regex!13753) Bool)

(assert (=> start!527462 (= res!2130611 (validRegex!6050 r!12727))))

(assert (=> start!527462 e!3119151))

(assert (=> start!527462 e!3119154))

(declare-fun e!3119150 () Bool)

(declare-fun inv!75777 (BalanceConc!29974) Bool)

(assert (=> start!527462 (and (inv!75777 input!5597) e!3119150)))

(declare-fun condSetEmpty!28214 () Bool)

(assert (=> start!527462 (= condSetEmpty!28214 (= z!4183 ((as const (Array Context!6356 Bool)) false)))))

(assert (=> start!527462 setRes!28214))

(assert (=> start!527462 (and (inv!75777 totalInput!1012) e!3119146)))

(declare-fun b!4990556 () Bool)

(declare-fun drop!2416 (List!57863 Int) List!57863)

(assert (=> b!4990556 (= e!3119144 (matchZipper!529 z!4183 (take!618 (drop!2416 lt!2064076 lt!2064089) lt!2064075)))))

(declare-fun b!4990568 () Bool)

(declare-fun tp!1399015 () Bool)

(declare-fun tp!1399019 () Bool)

(assert (=> b!4990568 (= e!3119154 (and tp!1399015 tp!1399019))))

(declare-fun tp!1399016 () Bool)

(declare-fun setNonEmpty!28214 () Bool)

(declare-fun setElem!28214 () Context!6356)

(declare-fun inv!75778 (Context!6356) Bool)

(assert (=> setNonEmpty!28214 (= setRes!28214 (and tp!1399016 (inv!75778 setElem!28214) e!3119157))))

(declare-fun setRest!28214 () (InoxSet Context!6356))

(assert (=> setNonEmpty!28214 (= z!4183 ((_ map or) (store ((as const (Array Context!6356 Bool)) false) setElem!28214 true) setRest!28214))))

(declare-fun b!4990569 () Bool)

(declare-fun tp!1399013 () Bool)

(assert (=> b!4990569 (= e!3119150 (and (inv!75776 (c!851372 input!5597)) tp!1399013))))

(declare-fun b!4990570 () Bool)

(assert (=> b!4990570 (= e!3119152 e!3119147)))

(declare-fun res!2130601 () Bool)

(assert (=> b!4990570 (=> (not res!2130601) (not e!3119147))))

(assert (=> b!4990570 (= res!2130601 (= lt!2064085 lt!2064087))))

(assert (=> b!4990570 (= lt!2064085 (++!12597 lt!2064081 lt!2064092))))

(assert (=> b!4990570 (= lt!2064092 (list!18556 (_2!34724 lt!2064083)))))

(assert (=> b!4990570 (= lt!2064081 (list!18556 (_1!34724 lt!2064083)))))

(declare-fun findLongestMatch!1766 (Regex!13753 List!57863) tuple2!62840)

(assert (=> b!4990570 (= lt!2064071 (findLongestMatch!1766 r!12727 lt!2064087))))

(assert (=> b!4990570 (= lt!2064089 (- lt!2064079 (size!38359 input!5597)))))

(assert (=> b!4990570 (= lt!2064079 (size!38359 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!55 ((InoxSet Context!6356) BalanceConc!29974 BalanceConc!29974) tuple2!62842)

(assert (=> b!4990570 (= lt!2064083 (findLongestMatchZipperFastV2!55 z!4183 input!5597 totalInput!1012))))

(assert (= (and start!527462 res!2130611) b!4990562))

(assert (= (and b!4990562 res!2130607) b!4990555))

(assert (= (and b!4990555 res!2130609) b!4990570))

(assert (= (and b!4990570 res!2130601) b!4990554))

(assert (= (and b!4990554 res!2130600) b!4990565))

(assert (= (and b!4990565 (not res!2130603)) b!4990556))

(assert (= (and b!4990565 (not res!2130604)) b!4990553))

(assert (= (and b!4990565 res!2130605) b!4990566))

(assert (= (and b!4990565 (not res!2130606)) b!4990561))

(assert (= (and b!4990561 res!2130610) b!4990563))

(assert (= (and b!4990561 (not res!2130608)) b!4990567))

(assert (= (and b!4990567 (not res!2130602)) b!4990557))

(get-info :version)

(assert (= (and start!527462 ((_ is ElementMatch!13753) r!12727)) b!4990560))

(assert (= (and start!527462 ((_ is Concat!22546) r!12727)) b!4990568))

(assert (= (and start!527462 ((_ is Star!13753) r!12727)) b!4990552))

(assert (= (and start!527462 ((_ is Union!13753) r!12727)) b!4990559))

(assert (= start!527462 b!4990569))

(assert (= (and start!527462 condSetEmpty!28214) setIsEmpty!28214))

(assert (= (and start!527462 (not condSetEmpty!28214)) setNonEmpty!28214))

(assert (= setNonEmpty!28214 b!4990564))

(assert (= start!527462 b!4990558))

(declare-fun m!6023170 () Bool)

(assert (=> b!4990562 m!6023170))

(declare-fun m!6023172 () Bool)

(assert (=> b!4990562 m!6023172))

(declare-fun m!6023174 () Bool)

(assert (=> b!4990553 m!6023174))

(declare-fun m!6023176 () Bool)

(assert (=> b!4990569 m!6023176))

(declare-fun m!6023178 () Bool)

(assert (=> b!4990556 m!6023178))

(assert (=> b!4990556 m!6023178))

(declare-fun m!6023180 () Bool)

(assert (=> b!4990556 m!6023180))

(assert (=> b!4990556 m!6023180))

(declare-fun m!6023182 () Bool)

(assert (=> b!4990556 m!6023182))

(declare-fun m!6023184 () Bool)

(assert (=> b!4990557 m!6023184))

(declare-fun m!6023186 () Bool)

(assert (=> b!4990566 m!6023186))

(declare-fun m!6023188 () Bool)

(assert (=> setNonEmpty!28214 m!6023188))

(declare-fun m!6023190 () Bool)

(assert (=> b!4990565 m!6023190))

(declare-fun m!6023192 () Bool)

(assert (=> b!4990565 m!6023192))

(declare-fun m!6023194 () Bool)

(assert (=> b!4990565 m!6023194))

(declare-fun m!6023196 () Bool)

(assert (=> b!4990565 m!6023196))

(declare-fun m!6023198 () Bool)

(assert (=> b!4990565 m!6023198))

(declare-fun m!6023200 () Bool)

(assert (=> b!4990565 m!6023200))

(declare-fun m!6023202 () Bool)

(assert (=> b!4990565 m!6023202))

(declare-fun m!6023204 () Bool)

(assert (=> b!4990565 m!6023204))

(declare-fun m!6023206 () Bool)

(assert (=> b!4990565 m!6023206))

(declare-fun m!6023208 () Bool)

(assert (=> b!4990565 m!6023208))

(assert (=> b!4990565 m!6023200))

(declare-fun m!6023210 () Bool)

(assert (=> b!4990565 m!6023210))

(assert (=> b!4990565 m!6023190))

(assert (=> b!4990565 m!6023204))

(declare-fun m!6023212 () Bool)

(assert (=> b!4990565 m!6023212))

(declare-fun m!6023214 () Bool)

(assert (=> b!4990565 m!6023214))

(declare-fun m!6023216 () Bool)

(assert (=> b!4990565 m!6023216))

(declare-fun m!6023218 () Bool)

(assert (=> b!4990565 m!6023218))

(declare-fun m!6023220 () Bool)

(assert (=> b!4990554 m!6023220))

(declare-fun m!6023222 () Bool)

(assert (=> b!4990558 m!6023222))

(declare-fun m!6023224 () Bool)

(assert (=> b!4990563 m!6023224))

(declare-fun m!6023226 () Bool)

(assert (=> b!4990570 m!6023226))

(declare-fun m!6023228 () Bool)

(assert (=> b!4990570 m!6023228))

(declare-fun m!6023230 () Bool)

(assert (=> b!4990570 m!6023230))

(declare-fun m!6023232 () Bool)

(assert (=> b!4990570 m!6023232))

(declare-fun m!6023234 () Bool)

(assert (=> b!4990570 m!6023234))

(declare-fun m!6023236 () Bool)

(assert (=> b!4990570 m!6023236))

(declare-fun m!6023238 () Bool)

(assert (=> b!4990570 m!6023238))

(declare-fun m!6023240 () Bool)

(assert (=> b!4990567 m!6023240))

(declare-fun m!6023242 () Bool)

(assert (=> b!4990567 m!6023242))

(declare-fun m!6023244 () Bool)

(assert (=> b!4990567 m!6023244))

(declare-fun m!6023246 () Bool)

(assert (=> b!4990567 m!6023246))

(declare-fun m!6023248 () Bool)

(assert (=> b!4990567 m!6023248))

(declare-fun m!6023250 () Bool)

(assert (=> b!4990567 m!6023250))

(declare-fun m!6023252 () Bool)

(assert (=> b!4990555 m!6023252))

(declare-fun m!6023254 () Bool)

(assert (=> b!4990555 m!6023254))

(declare-fun m!6023256 () Bool)

(assert (=> b!4990555 m!6023256))

(declare-fun m!6023258 () Bool)

(assert (=> b!4990561 m!6023258))

(declare-fun m!6023260 () Bool)

(assert (=> start!527462 m!6023260))

(declare-fun m!6023262 () Bool)

(assert (=> start!527462 m!6023262))

(declare-fun m!6023264 () Bool)

(assert (=> start!527462 m!6023264))

(check-sat (not b!4990559) (not b!4990555) (not b!4990562) (not setNonEmpty!28214) tp_is_empty!36503 (not b!4990561) (not b!4990563) (not b!4990570) (not b!4990564) (not b!4990569) (not b!4990565) (not b!4990557) (not b!4990566) (not b!4990556) (not b!4990552) (not b!4990568) (not b!4990558) (not b!4990553) (not b!4990567) (not start!527462) (not b!4990554))
(check-sat)
