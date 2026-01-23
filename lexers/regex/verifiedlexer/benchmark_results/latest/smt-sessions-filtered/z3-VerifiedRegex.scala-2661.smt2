; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143574 () Bool)

(assert start!143574)

(declare-fun b!1546583 () Bool)

(declare-fun b_free!40643 () Bool)

(declare-fun b_next!41347 () Bool)

(assert (=> b!1546583 (= b_free!40643 (not b_next!41347))))

(declare-fun tp!450449 () Bool)

(declare-fun b_and!107733 () Bool)

(assert (=> b!1546583 (= tp!450449 b_and!107733)))

(declare-fun b!1546603 () Bool)

(declare-fun b_free!40645 () Bool)

(declare-fun b_next!41349 () Bool)

(assert (=> b!1546603 (= b_free!40645 (not b_next!41349))))

(declare-fun tp!450456 () Bool)

(declare-fun b_and!107735 () Bool)

(assert (=> b!1546603 (= tp!450456 b_and!107735)))

(declare-fun b!1546599 () Bool)

(declare-fun b_free!40647 () Bool)

(declare-fun b_next!41351 () Bool)

(assert (=> b!1546599 (= b_free!40647 (not b_next!41351))))

(declare-fun tp!450463 () Bool)

(declare-fun b_and!107737 () Bool)

(assert (=> b!1546599 (= tp!450463 b_and!107737)))

(declare-fun b!1546593 () Bool)

(declare-fun b_free!40649 () Bool)

(declare-fun b_next!41353 () Bool)

(assert (=> b!1546593 (= b_free!40649 (not b_next!41353))))

(declare-fun tp!450453 () Bool)

(declare-fun b_and!107739 () Bool)

(assert (=> b!1546593 (= tp!450453 b_and!107739)))

(declare-fun b!1546590 () Bool)

(declare-fun b_free!40651 () Bool)

(declare-fun b_next!41355 () Bool)

(assert (=> b!1546590 (= b_free!40651 (not b_next!41355))))

(declare-fun tp!450448 () Bool)

(declare-fun b_and!107741 () Bool)

(assert (=> b!1546590 (= tp!450448 b_and!107741)))

(declare-fun b!1546602 () Bool)

(declare-fun b_free!40653 () Bool)

(declare-fun b_next!41357 () Bool)

(assert (=> b!1546602 (= b_free!40653 (not b_next!41357))))

(declare-fun tp!450450 () Bool)

(declare-fun b_and!107743 () Bool)

(assert (=> b!1546602 (= tp!450450 b_and!107743)))

(declare-fun b!1546580 () Bool)

(declare-fun b_free!40655 () Bool)

(declare-fun b_next!41359 () Bool)

(assert (=> b!1546580 (= b_free!40655 (not b_next!41359))))

(declare-fun tp!450451 () Bool)

(declare-fun b_and!107745 () Bool)

(assert (=> b!1546580 (= tp!450451 b_and!107745)))

(declare-fun b_free!40657 () Bool)

(declare-fun b_next!41361 () Bool)

(assert (=> b!1546580 (= b_free!40657 (not b_next!41361))))

(declare-fun tp!450445 () Bool)

(declare-fun b_and!107747 () Bool)

(assert (=> b!1546580 (= tp!450445 b_and!107747)))

(declare-fun b!1546613 () Bool)

(declare-fun e!990781 () Bool)

(assert (=> b!1546613 (= e!990781 true)))

(declare-fun b!1546612 () Bool)

(declare-fun e!990780 () Bool)

(assert (=> b!1546612 (= e!990780 e!990781)))

(declare-fun b!1546570 () Bool)

(assert (=> b!1546570 e!990780))

(assert (= b!1546612 b!1546613))

(assert (= b!1546570 b!1546612))

(declare-fun order!9643 () Int)

(declare-fun lambda!65449 () Int)

(declare-datatypes ((List!16639 0))(
  ( (Nil!16571) (Cons!16571 (h!21972 (_ BitVec 16)) (t!141042 List!16639)) )
))
(declare-datatypes ((TokenValue!2995 0))(
  ( (FloatLiteralValue!5990 (text!21410 List!16639)) (TokenValueExt!2994 (__x!10759 Int)) (Broken!14975 (value!92424 List!16639)) (Object!3062) (End!2995) (Def!2995) (Underscore!2995) (Match!2995) (Else!2995) (Error!2995) (Case!2995) (If!2995) (Extends!2995) (Abstract!2995) (Class!2995) (Val!2995) (DelimiterValue!5990 (del!3055 List!16639)) (KeywordValue!3001 (value!92425 List!16639)) (CommentValue!5990 (value!92426 List!16639)) (WhitespaceValue!5990 (value!92427 List!16639)) (IndentationValue!2995 (value!92428 List!16639)) (String!19262) (Int32!2995) (Broken!14976 (value!92429 List!16639)) (Boolean!2996) (Unit!25932) (OperatorValue!2998 (op!3055 List!16639)) (IdentifierValue!5990 (value!92430 List!16639)) (IdentifierValue!5991 (value!92431 List!16639)) (WhitespaceValue!5991 (value!92432 List!16639)) (True!5990) (False!5990) (Broken!14977 (value!92433 List!16639)) (Broken!14978 (value!92434 List!16639)) (True!5991) (RightBrace!2995) (RightBracket!2995) (Colon!2995) (Null!2995) (Comma!2995) (LeftBracket!2995) (False!5991) (LeftBrace!2995) (ImaginaryLiteralValue!2995 (text!21411 List!16639)) (StringLiteralValue!8985 (value!92435 List!16639)) (EOFValue!2995 (value!92436 List!16639)) (IdentValue!2995 (value!92437 List!16639)) (DelimiterValue!5991 (value!92438 List!16639)) (DedentValue!2995 (value!92439 List!16639)) (NewLineValue!2995 (value!92440 List!16639)) (IntegerValue!8985 (value!92441 (_ BitVec 32)) (text!21412 List!16639)) (IntegerValue!8986 (value!92442 Int) (text!21413 List!16639)) (Times!2995) (Or!2995) (Equal!2995) (Minus!2995) (Broken!14979 (value!92443 List!16639)) (And!2995) (Div!2995) (LessEqual!2995) (Mod!2995) (Concat!7228) (Not!2995) (Plus!2995) (SpaceValue!2995 (value!92444 List!16639)) (IntegerValue!8987 (value!92445 Int) (text!21414 List!16639)) (StringLiteralValue!8986 (text!21415 List!16639)) (FloatLiteralValue!5991 (text!21416 List!16639)) (BytesLiteralValue!2995 (value!92446 List!16639)) (CommentValue!5991 (value!92447 List!16639)) (StringLiteralValue!8987 (value!92448 List!16639)) (ErrorTokenValue!2995 (msg!3056 List!16639)) )
))
(declare-datatypes ((C!8644 0))(
  ( (C!8645 (val!4894 Int)) )
))
(declare-datatypes ((List!16640 0))(
  ( (Nil!16572) (Cons!16572 (h!21973 C!8644) (t!141043 List!16640)) )
))
(declare-datatypes ((IArray!11051 0))(
  ( (IArray!11052 (innerList!5583 List!16640)) )
))
(declare-datatypes ((Conc!5523 0))(
  ( (Node!5523 (left!13524 Conc!5523) (right!13854 Conc!5523) (csize!11276 Int) (cheight!5734 Int)) (Leaf!8185 (xs!8323 IArray!11051) (csize!11277 Int)) (Empty!5523) )
))
(declare-datatypes ((BalanceConc!10988 0))(
  ( (BalanceConc!10989 (c!252127 Conc!5523)) )
))
(declare-datatypes ((String!19263 0))(
  ( (String!19264 (value!92449 String)) )
))
(declare-datatypes ((Regex!4233 0))(
  ( (ElementMatch!4233 (c!252128 C!8644)) (Concat!7229 (regOne!8978 Regex!4233) (regTwo!8978 Regex!4233)) (EmptyExpr!4233) (Star!4233 (reg!4562 Regex!4233)) (EmptyLang!4233) (Union!4233 (regOne!8979 Regex!4233) (regTwo!8979 Regex!4233)) )
))
(declare-datatypes ((TokenValueInjection!5650 0))(
  ( (TokenValueInjection!5651 (toValue!4268 Int) (toChars!4127 Int)) )
))
(declare-datatypes ((Rule!5610 0))(
  ( (Rule!5611 (regex!2905 Regex!4233) (tag!3169 String!19263) (isSeparator!2905 Bool) (transformation!2905 TokenValueInjection!5650)) )
))
(declare-fun rule!240 () Rule!5610)

(declare-fun order!9645 () Int)

(declare-fun dynLambda!7316 (Int Int) Int)

(declare-fun dynLambda!7317 (Int Int) Int)

(assert (=> b!1546613 (< (dynLambda!7316 order!9643 (toValue!4268 (transformation!2905 rule!240))) (dynLambda!7317 order!9645 lambda!65449))))

(declare-fun order!9647 () Int)

(declare-fun dynLambda!7318 (Int Int) Int)

(assert (=> b!1546613 (< (dynLambda!7318 order!9647 (toChars!4127 (transformation!2905 rule!240))) (dynLambda!7317 order!9645 lambda!65449))))

(declare-fun b!1546569 () Bool)

(declare-fun e!990746 () Bool)

(declare-fun e!990753 () Bool)

(assert (=> b!1546569 (= e!990746 (not e!990753))))

(declare-fun res!691755 () Bool)

(assert (=> b!1546569 (=> res!691755 e!990753)))

(declare-fun semiInverseModEq!1092 (Int Int) Bool)

(assert (=> b!1546569 (= res!691755 (not (semiInverseModEq!1092 (toChars!4127 (transformation!2905 rule!240)) (toValue!4268 (transformation!2905 rule!240)))))))

(declare-datatypes ((Unit!25933 0))(
  ( (Unit!25934) )
))
(declare-fun lt!535632 () Unit!25933)

(declare-fun lemmaInv!402 (TokenValueInjection!5650) Unit!25933)

(assert (=> b!1546569 (= lt!535632 (lemmaInv!402 (transformation!2905 rule!240)))))

(declare-fun e!990755 () Bool)

(assert (=> b!1546569 e!990755))

(declare-fun res!691756 () Bool)

(assert (=> b!1546569 (=> res!691756 e!990755)))

(declare-datatypes ((tuple2!15752 0))(
  ( (tuple2!15753 (_1!9104 List!16640) (_2!9104 List!16640)) )
))
(declare-fun lt!535630 () tuple2!15752)

(declare-fun isEmpty!10047 (List!16640) Bool)

(assert (=> b!1546569 (= res!691756 (isEmpty!10047 (_1!9104 lt!535630)))))

(declare-fun lt!535631 () List!16640)

(declare-fun findLongestMatchInner!308 (Regex!4233 List!16640 Int List!16640 List!16640 Int) tuple2!15752)

(declare-fun size!13382 (List!16640) Int)

(assert (=> b!1546569 (= lt!535630 (findLongestMatchInner!308 (regex!2905 rule!240) Nil!16572 (size!13382 Nil!16572) lt!535631 lt!535631 (size!13382 lt!535631)))))

(declare-fun lt!535627 () Unit!25933)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!292 (Regex!4233 List!16640) Unit!25933)

(assert (=> b!1546569 (= lt!535627 (longestMatchIsAcceptedByMatchOrIsEmpty!292 (regex!2905 rule!240) lt!535631))))

(declare-fun res!691751 () Bool)

(assert (=> b!1546570 (=> res!691751 e!990753)))

(declare-fun Forall!586 (Int) Bool)

(assert (=> b!1546570 (= res!691751 (not (Forall!586 lambda!65449)))))

(declare-fun b!1546571 () Bool)

(declare-fun e!990773 () Bool)

(declare-fun e!990759 () Bool)

(assert (=> b!1546571 (= e!990773 e!990759)))

(declare-fun b!1546572 () Bool)

(assert (=> b!1546572 (= e!990753 (Forall!586 lambda!65449))))

(declare-fun e!990765 () Bool)

(declare-datatypes ((List!16641 0))(
  ( (Nil!16573) (Cons!16573 (h!21974 Regex!4233) (t!141044 List!16641)) )
))
(declare-datatypes ((Context!1502 0))(
  ( (Context!1503 (exprs!1251 List!16641)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1632 0))(
  ( (tuple3!1633 (_1!9105 (InoxSet Context!1502)) (_2!9105 Int) (_3!1228 Int)) )
))
(declare-datatypes ((tuple2!15754 0))(
  ( (tuple2!15755 (_1!9106 tuple3!1632) (_2!9106 Int)) )
))
(declare-datatypes ((List!16642 0))(
  ( (Nil!16574) (Cons!16574 (h!21975 tuple2!15754) (t!141045 List!16642)) )
))
(declare-datatypes ((array!5822 0))(
  ( (array!5823 (arr!2588 (Array (_ BitVec 32) List!16642)) (size!13383 (_ BitVec 32))) )
))
(declare-datatypes ((array!5824 0))(
  ( (array!5825 (arr!2589 (Array (_ BitVec 32) (_ BitVec 64))) (size!13384 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3360 0))(
  ( (LongMapFixedSize!3361 (defaultEntry!2040 Int) (mask!4885 (_ BitVec 32)) (extraKeys!1927 (_ BitVec 32)) (zeroValue!1937 List!16642) (minValue!1937 List!16642) (_size!3441 (_ BitVec 32)) (_keys!1974 array!5824) (_values!1959 array!5822) (_vacant!1741 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6605 0))(
  ( (Cell!6606 (v!23381 LongMapFixedSize!3360)) )
))
(declare-datatypes ((Hashable!1624 0))(
  ( (HashableExt!1623 (__x!10760 Int)) )
))
(declare-datatypes ((MutLongMap!1680 0))(
  ( (LongMap!1680 (underlying!3569 Cell!6605)) (MutLongMapExt!1679 (__x!10761 Int)) )
))
(declare-datatypes ((Cell!6607 0))(
  ( (Cell!6608 (v!23382 MutLongMap!1680)) )
))
(declare-datatypes ((MutableMap!1624 0))(
  ( (MutableMapExt!1623 (__x!10762 Int)) (HashMap!1624 (underlying!3570 Cell!6607) (hashF!3543 Hashable!1624) (_size!3442 (_ BitVec 32)) (defaultValue!1784 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!408 0))(
  ( (CacheFurthestNullable!409 (cache!2005 MutableMap!1624) (totalInput!2407 BalanceConc!10988)) )
))
(declare-fun cacheFurthestNullable!103 () CacheFurthestNullable!408)

(declare-fun e!990770 () Bool)

(declare-fun e!990744 () Bool)

(declare-fun b!1546573 () Bool)

(declare-fun inv!21845 (BalanceConc!10988) Bool)

(assert (=> b!1546573 (= e!990765 (and e!990770 (inv!21845 (totalInput!2407 cacheFurthestNullable!103)) e!990744))))

(declare-fun res!691758 () Bool)

(declare-fun e!990760 () Bool)

(assert (=> start!143574 (=> (not res!691758) (not e!990760))))

(declare-datatypes ((LexerInterface!2553 0))(
  ( (LexerInterfaceExt!2550 (__x!10763 Int)) (Lexer!2551) )
))
(declare-fun thiss!16438 () LexerInterface!2553)

(get-info :version)

(assert (=> start!143574 (= res!691758 ((_ is Lexer!2551) thiss!16438))))

(assert (=> start!143574 e!990760))

(declare-fun totalInput!568 () BalanceConc!10988)

(declare-fun e!990766 () Bool)

(assert (=> start!143574 (and (inv!21845 totalInput!568) e!990766)))

(declare-datatypes ((tuple2!15756 0))(
  ( (tuple2!15757 (_1!9107 Context!1502) (_2!9107 C!8644)) )
))
(declare-datatypes ((tuple2!15758 0))(
  ( (tuple2!15759 (_1!9108 tuple2!15756) (_2!9108 (InoxSet Context!1502))) )
))
(declare-datatypes ((List!16643 0))(
  ( (Nil!16575) (Cons!16575 (h!21976 tuple2!15758) (t!141046 List!16643)) )
))
(declare-datatypes ((array!5826 0))(
  ( (array!5827 (arr!2590 (Array (_ BitVec 32) List!16643)) (size!13385 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1625 0))(
  ( (HashableExt!1624 (__x!10764 Int)) )
))
(declare-datatypes ((LongMapFixedSize!3362 0))(
  ( (LongMapFixedSize!3363 (defaultEntry!2041 Int) (mask!4886 (_ BitVec 32)) (extraKeys!1928 (_ BitVec 32)) (zeroValue!1938 List!16643) (minValue!1938 List!16643) (_size!3443 (_ BitVec 32)) (_keys!1975 array!5824) (_values!1960 array!5826) (_vacant!1742 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6609 0))(
  ( (Cell!6610 (v!23383 LongMapFixedSize!3362)) )
))
(declare-datatypes ((MutLongMap!1681 0))(
  ( (LongMap!1681 (underlying!3571 Cell!6609)) (MutLongMapExt!1680 (__x!10765 Int)) )
))
(declare-datatypes ((Cell!6611 0))(
  ( (Cell!6612 (v!23384 MutLongMap!1681)) )
))
(declare-datatypes ((MutableMap!1625 0))(
  ( (MutableMapExt!1624 (__x!10766 Int)) (HashMap!1625 (underlying!3572 Cell!6611) (hashF!3544 Hashable!1625) (_size!3444 (_ BitVec 32)) (defaultValue!1785 Int)) )
))
(declare-datatypes ((CacheUp!980 0))(
  ( (CacheUp!981 (cache!2006 MutableMap!1625)) )
))
(declare-fun cacheUp!755 () CacheUp!980)

(declare-fun e!990754 () Bool)

(declare-fun inv!21846 (CacheUp!980) Bool)

(assert (=> start!143574 (and (inv!21846 cacheUp!755) e!990754)))

(declare-fun inv!21847 (CacheFurthestNullable!408) Bool)

(assert (=> start!143574 (and (inv!21847 cacheFurthestNullable!103) e!990765)))

(declare-fun input!1676 () BalanceConc!10988)

(declare-fun e!990743 () Bool)

(assert (=> start!143574 (and (inv!21845 input!1676) e!990743)))

(declare-fun e!990750 () Bool)

(assert (=> start!143574 e!990750))

(declare-datatypes ((tuple3!1634 0))(
  ( (tuple3!1635 (_1!9109 Regex!4233) (_2!9109 Context!1502) (_3!1229 C!8644)) )
))
(declare-datatypes ((tuple2!15760 0))(
  ( (tuple2!15761 (_1!9110 tuple3!1634) (_2!9110 (InoxSet Context!1502))) )
))
(declare-datatypes ((List!16644 0))(
  ( (Nil!16576) (Cons!16576 (h!21977 tuple2!15760) (t!141047 List!16644)) )
))
(declare-datatypes ((array!5828 0))(
  ( (array!5829 (arr!2591 (Array (_ BitVec 32) List!16644)) (size!13386 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3364 0))(
  ( (LongMapFixedSize!3365 (defaultEntry!2042 Int) (mask!4887 (_ BitVec 32)) (extraKeys!1929 (_ BitVec 32)) (zeroValue!1939 List!16644) (minValue!1939 List!16644) (_size!3445 (_ BitVec 32)) (_keys!1976 array!5824) (_values!1961 array!5828) (_vacant!1743 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6613 0))(
  ( (Cell!6614 (v!23385 LongMapFixedSize!3364)) )
))
(declare-datatypes ((MutLongMap!1682 0))(
  ( (LongMap!1682 (underlying!3573 Cell!6613)) (MutLongMapExt!1681 (__x!10767 Int)) )
))
(declare-datatypes ((Cell!6615 0))(
  ( (Cell!6616 (v!23386 MutLongMap!1682)) )
))
(declare-datatypes ((Hashable!1626 0))(
  ( (HashableExt!1625 (__x!10768 Int)) )
))
(declare-datatypes ((MutableMap!1626 0))(
  ( (MutableMapExt!1625 (__x!10769 Int)) (HashMap!1626 (underlying!3574 Cell!6615) (hashF!3545 Hashable!1626) (_size!3446 (_ BitVec 32)) (defaultValue!1786 Int)) )
))
(declare-datatypes ((CacheDown!988 0))(
  ( (CacheDown!989 (cache!2007 MutableMap!1626)) )
))
(declare-fun cacheDown!768 () CacheDown!988)

(declare-fun inv!21848 (CacheDown!988) Bool)

(assert (=> start!143574 (and (inv!21848 cacheDown!768) e!990773)))

(assert (=> start!143574 true))

(declare-fun b!1546574 () Bool)

(declare-fun res!691749 () Bool)

(assert (=> b!1546574 (=> (not res!691749) (not e!990760))))

(declare-fun valid!1360 (CacheUp!980) Bool)

(assert (=> b!1546574 (= res!691749 (valid!1360 cacheUp!755))))

(declare-fun b!1546575 () Bool)

(declare-fun e!990761 () Bool)

(declare-fun tp!450444 () Bool)

(declare-fun mapRes!7902 () Bool)

(assert (=> b!1546575 (= e!990761 (and tp!450444 mapRes!7902))))

(declare-fun condMapEmpty!7902 () Bool)

(declare-fun mapDefault!7903 () List!16644)

(assert (=> b!1546575 (= condMapEmpty!7902 (= (arr!2591 (_values!1961 (v!23385 (underlying!3573 (v!23386 (underlying!3574 (cache!2007 cacheDown!768))))))) ((as const (Array (_ BitVec 32) List!16644)) mapDefault!7903)))))

(declare-fun b!1546576 () Bool)

(declare-fun e!990757 () Bool)

(declare-fun e!990752 () Bool)

(declare-fun lt!535633 () MutLongMap!1682)

(assert (=> b!1546576 (= e!990757 (and e!990752 ((_ is LongMap!1682) lt!535633)))))

(assert (=> b!1546576 (= lt!535633 (v!23386 (underlying!3574 (cache!2007 cacheDown!768))))))

(declare-fun b!1546577 () Bool)

(declare-fun res!691753 () Bool)

(assert (=> b!1546577 (=> (not res!691753) (not e!990760))))

(declare-fun valid!1361 (CacheFurthestNullable!408) Bool)

(assert (=> b!1546577 (= res!691753 (valid!1361 cacheFurthestNullable!103))))

(declare-fun mapNonEmpty!7902 () Bool)

(declare-fun mapRes!7903 () Bool)

(declare-fun tp!450466 () Bool)

(declare-fun tp!450457 () Bool)

(assert (=> mapNonEmpty!7902 (= mapRes!7903 (and tp!450466 tp!450457))))

(declare-fun mapKey!7902 () (_ BitVec 32))

(declare-fun mapValue!7902 () List!16642)

(declare-fun mapRest!7903 () (Array (_ BitVec 32) List!16642))

(assert (=> mapNonEmpty!7902 (= (arr!2588 (_values!1959 (v!23381 (underlying!3569 (v!23382 (underlying!3570 (cache!2005 cacheFurthestNullable!103))))))) (store mapRest!7903 mapKey!7902 mapValue!7902))))

(declare-fun mapNonEmpty!7903 () Bool)

(declare-fun tp!450461 () Bool)

(declare-fun tp!450447 () Bool)

(assert (=> mapNonEmpty!7903 (= mapRes!7902 (and tp!450461 tp!450447))))

(declare-fun mapKey!7903 () (_ BitVec 32))

(declare-fun mapValue!7904 () List!16644)

(declare-fun mapRest!7902 () (Array (_ BitVec 32) List!16644))

(assert (=> mapNonEmpty!7903 (= (arr!2591 (_values!1961 (v!23385 (underlying!3573 (v!23386 (underlying!3574 (cache!2007 cacheDown!768))))))) (store mapRest!7902 mapKey!7903 mapValue!7904))))

(declare-fun b!1546578 () Bool)

(declare-fun tp!450446 () Bool)

(declare-fun inv!21849 (Conc!5523) Bool)

(assert (=> b!1546578 (= e!990766 (and (inv!21849 (c!252127 totalInput!568)) tp!450446))))

(declare-fun b!1546579 () Bool)

(declare-fun e!990762 () Bool)

(declare-fun tp!450460 () Bool)

(assert (=> b!1546579 (= e!990762 (and tp!450460 mapRes!7903))))

(declare-fun condMapEmpty!7904 () Bool)

(declare-fun mapDefault!7902 () List!16642)

(assert (=> b!1546579 (= condMapEmpty!7904 (= (arr!2588 (_values!1959 (v!23381 (underlying!3569 (v!23382 (underlying!3570 (cache!2005 cacheFurthestNullable!103))))))) ((as const (Array (_ BitVec 32) List!16642)) mapDefault!7902)))))

(declare-fun e!990775 () Bool)

(assert (=> b!1546580 (= e!990775 (and tp!450451 tp!450445))))

(declare-fun mapIsEmpty!7902 () Bool)

(declare-fun mapRes!7904 () Bool)

(assert (=> mapIsEmpty!7902 mapRes!7904))

(declare-fun b!1546581 () Bool)

(declare-fun res!691757 () Bool)

(assert (=> b!1546581 (=> (not res!691757) (not e!990760))))

(declare-fun ruleValid!658 (LexerInterface!2553 Rule!5610) Bool)

(assert (=> b!1546581 (= res!691757 (ruleValid!658 thiss!16438 rule!240))))

(declare-fun b!1546582 () Bool)

(declare-fun res!691750 () Bool)

(assert (=> b!1546582 (=> (not res!691750) (not e!990746))))

(declare-fun isEmpty!10048 (BalanceConc!10988) Bool)

(declare-datatypes ((tuple2!15762 0))(
  ( (tuple2!15763 (_1!9111 BalanceConc!10988) (_2!9111 BalanceConc!10988)) )
))
(declare-datatypes ((tuple4!824 0))(
  ( (tuple4!825 (_1!9112 tuple2!15762) (_2!9112 CacheUp!980) (_3!1230 CacheDown!988) (_4!412 CacheFurthestNullable!408)) )
))
(declare-fun findLongestMatchWithZipperSequenceV3Mem!19 (Regex!4233 BalanceConc!10988 BalanceConc!10988 CacheUp!980 CacheDown!988 CacheFurthestNullable!408) tuple4!824)

(assert (=> b!1546582 (= res!691750 (not (isEmpty!10048 (_1!9111 (_1!9112 (findLongestMatchWithZipperSequenceV3Mem!19 (regex!2905 rule!240) input!1676 totalInput!568 cacheUp!755 cacheDown!768 cacheFurthestNullable!103))))))))

(declare-fun e!990767 () Bool)

(declare-fun tp!450458 () Bool)

(declare-fun tp!450443 () Bool)

(declare-fun array_inv!1863 (array!5824) Bool)

(declare-fun array_inv!1864 (array!5822) Bool)

(assert (=> b!1546583 (= e!990767 (and tp!450449 tp!450458 tp!450443 (array_inv!1863 (_keys!1974 (v!23381 (underlying!3569 (v!23382 (underlying!3570 (cache!2005 cacheFurthestNullable!103))))))) (array_inv!1864 (_values!1959 (v!23381 (underlying!3569 (v!23382 (underlying!3570 (cache!2005 cacheFurthestNullable!103))))))) e!990762))))

(declare-fun b!1546584 () Bool)

(declare-fun e!990749 () Bool)

(declare-fun e!990751 () Bool)

(declare-fun lt!535628 () MutLongMap!1680)

(assert (=> b!1546584 (= e!990749 (and e!990751 ((_ is LongMap!1680) lt!535628)))))

(assert (=> b!1546584 (= lt!535628 (v!23382 (underlying!3570 (cache!2005 cacheFurthestNullable!103))))))

(declare-fun b!1546585 () Bool)

(declare-fun matchR!1851 (Regex!4233 List!16640) Bool)

(assert (=> b!1546585 (= e!990755 (matchR!1851 (regex!2905 rule!240) (_1!9104 lt!535630)))))

(declare-fun b!1546586 () Bool)

(declare-fun e!990768 () Bool)

(declare-fun e!990764 () Bool)

(assert (=> b!1546586 (= e!990768 e!990764)))

(declare-fun b!1546587 () Bool)

(assert (=> b!1546587 (= e!990760 e!990746)))

(declare-fun res!691754 () Bool)

(assert (=> b!1546587 (=> (not res!691754) (not e!990746))))

(declare-fun isSuffix!347 (List!16640 List!16640) Bool)

(declare-fun list!6451 (BalanceConc!10988) List!16640)

(assert (=> b!1546587 (= res!691754 (isSuffix!347 lt!535631 (list!6451 totalInput!568)))))

(assert (=> b!1546587 (= lt!535631 (list!6451 input!1676))))

(declare-fun mapIsEmpty!7903 () Bool)

(assert (=> mapIsEmpty!7903 mapRes!7902))

(declare-fun b!1546588 () Bool)

(declare-fun e!990763 () Bool)

(declare-fun e!990747 () Bool)

(assert (=> b!1546588 (= e!990763 e!990747)))

(declare-fun b!1546589 () Bool)

(declare-fun e!990756 () Bool)

(declare-fun tp!450452 () Bool)

(assert (=> b!1546589 (= e!990756 (and tp!450452 mapRes!7904))))

(declare-fun condMapEmpty!7903 () Bool)

(declare-fun mapDefault!7904 () List!16643)

(assert (=> b!1546589 (= condMapEmpty!7903 (= (arr!2590 (_values!1960 (v!23383 (underlying!3571 (v!23384 (underlying!3572 (cache!2006 cacheUp!755))))))) ((as const (Array (_ BitVec 32) List!16643)) mapDefault!7904)))))

(declare-fun tp!450455 () Bool)

(declare-fun tp!450465 () Bool)

(declare-fun array_inv!1865 (array!5828) Bool)

(assert (=> b!1546590 (= e!990747 (and tp!450448 tp!450455 tp!450465 (array_inv!1863 (_keys!1976 (v!23385 (underlying!3573 (v!23386 (underlying!3574 (cache!2007 cacheDown!768))))))) (array_inv!1865 (_values!1961 (v!23385 (underlying!3573 (v!23386 (underlying!3574 (cache!2007 cacheDown!768))))))) e!990761))))

(declare-fun b!1546591 () Bool)

(declare-fun tp!450459 () Bool)

(assert (=> b!1546591 (= e!990744 (and (inv!21849 (c!252127 (totalInput!2407 cacheFurthestNullable!103))) tp!450459))))

(declare-fun b!1546592 () Bool)

(declare-fun res!691759 () Bool)

(assert (=> b!1546592 (=> (not res!691759) (not e!990760))))

(declare-fun valid!1362 (CacheDown!988) Bool)

(assert (=> b!1546592 (= res!691759 (valid!1362 cacheDown!768))))

(assert (=> b!1546593 (= e!990770 (and e!990749 tp!450453))))

(declare-fun b!1546594 () Bool)

(declare-fun e!990745 () Bool)

(declare-fun lt!535629 () MutLongMap!1681)

(assert (=> b!1546594 (= e!990745 (and e!990768 ((_ is LongMap!1681) lt!535629)))))

(assert (=> b!1546594 (= lt!535629 (v!23384 (underlying!3572 (cache!2006 cacheUp!755))))))

(declare-fun mapNonEmpty!7904 () Bool)

(declare-fun tp!450464 () Bool)

(declare-fun tp!450468 () Bool)

(assert (=> mapNonEmpty!7904 (= mapRes!7904 (and tp!450464 tp!450468))))

(declare-fun mapValue!7903 () List!16643)

(declare-fun mapRest!7904 () (Array (_ BitVec 32) List!16643))

(declare-fun mapKey!7904 () (_ BitVec 32))

(assert (=> mapNonEmpty!7904 (= (arr!2590 (_values!1960 (v!23383 (underlying!3571 (v!23384 (underlying!3572 (cache!2006 cacheUp!755))))))) (store mapRest!7904 mapKey!7904 mapValue!7903))))

(declare-fun b!1546595 () Bool)

(declare-fun e!990772 () Bool)

(assert (=> b!1546595 (= e!990764 e!990772)))

(declare-fun b!1546596 () Bool)

(declare-fun e!990774 () Bool)

(assert (=> b!1546596 (= e!990774 e!990767)))

(declare-fun b!1546597 () Bool)

(declare-fun tp!450454 () Bool)

(declare-fun inv!21844 (String!19263) Bool)

(declare-fun inv!21850 (TokenValueInjection!5650) Bool)

(assert (=> b!1546597 (= e!990750 (and tp!450454 (inv!21844 (tag!3169 rule!240)) (inv!21850 (transformation!2905 rule!240)) e!990775))))

(declare-fun b!1546598 () Bool)

(assert (=> b!1546598 (= e!990752 e!990763)))

(declare-fun tp!450442 () Bool)

(declare-fun tp!450467 () Bool)

(declare-fun array_inv!1866 (array!5826) Bool)

(assert (=> b!1546599 (= e!990772 (and tp!450463 tp!450467 tp!450442 (array_inv!1863 (_keys!1975 (v!23383 (underlying!3571 (v!23384 (underlying!3572 (cache!2006 cacheUp!755))))))) (array_inv!1866 (_values!1960 (v!23383 (underlying!3571 (v!23384 (underlying!3572 (cache!2006 cacheUp!755))))))) e!990756))))

(declare-fun b!1546600 () Bool)

(assert (=> b!1546600 (= e!990751 e!990774)))

(declare-fun b!1546601 () Bool)

(declare-fun res!691752 () Bool)

(assert (=> b!1546601 (=> (not res!691752) (not e!990746))))

(assert (=> b!1546601 (= res!691752 (= (totalInput!2407 cacheFurthestNullable!103) totalInput!568))))

(declare-fun mapIsEmpty!7904 () Bool)

(assert (=> mapIsEmpty!7904 mapRes!7903))

(assert (=> b!1546602 (= e!990759 (and e!990757 tp!450450))))

(declare-fun e!990748 () Bool)

(assert (=> b!1546603 (= e!990748 (and e!990745 tp!450456))))

(declare-fun b!1546604 () Bool)

(declare-fun tp!450462 () Bool)

(assert (=> b!1546604 (= e!990743 (and (inv!21849 (c!252127 input!1676)) tp!450462))))

(declare-fun b!1546605 () Bool)

(assert (=> b!1546605 (= e!990754 e!990748)))

(assert (= (and start!143574 res!691758) b!1546581))

(assert (= (and b!1546581 res!691757) b!1546574))

(assert (= (and b!1546574 res!691749) b!1546592))

(assert (= (and b!1546592 res!691759) b!1546577))

(assert (= (and b!1546577 res!691753) b!1546587))

(assert (= (and b!1546587 res!691754) b!1546601))

(assert (= (and b!1546601 res!691752) b!1546582))

(assert (= (and b!1546582 res!691750) b!1546569))

(assert (= (and b!1546569 (not res!691756)) b!1546585))

(assert (= (and b!1546569 (not res!691755)) b!1546570))

(assert (= (and b!1546570 (not res!691751)) b!1546572))

(assert (= start!143574 b!1546578))

(assert (= (and b!1546589 condMapEmpty!7903) mapIsEmpty!7902))

(assert (= (and b!1546589 (not condMapEmpty!7903)) mapNonEmpty!7904))

(assert (= b!1546599 b!1546589))

(assert (= b!1546595 b!1546599))

(assert (= b!1546586 b!1546595))

(assert (= (and b!1546594 ((_ is LongMap!1681) (v!23384 (underlying!3572 (cache!2006 cacheUp!755))))) b!1546586))

(assert (= b!1546603 b!1546594))

(assert (= (and b!1546605 ((_ is HashMap!1625) (cache!2006 cacheUp!755))) b!1546603))

(assert (= start!143574 b!1546605))

(assert (= (and b!1546579 condMapEmpty!7904) mapIsEmpty!7904))

(assert (= (and b!1546579 (not condMapEmpty!7904)) mapNonEmpty!7902))

(assert (= b!1546583 b!1546579))

(assert (= b!1546596 b!1546583))

(assert (= b!1546600 b!1546596))

(assert (= (and b!1546584 ((_ is LongMap!1680) (v!23382 (underlying!3570 (cache!2005 cacheFurthestNullable!103))))) b!1546600))

(assert (= b!1546593 b!1546584))

(assert (= (and b!1546573 ((_ is HashMap!1624) (cache!2005 cacheFurthestNullable!103))) b!1546593))

(assert (= b!1546573 b!1546591))

(assert (= start!143574 b!1546573))

(assert (= start!143574 b!1546604))

(assert (= b!1546597 b!1546580))

(assert (= start!143574 b!1546597))

(assert (= (and b!1546575 condMapEmpty!7902) mapIsEmpty!7903))

(assert (= (and b!1546575 (not condMapEmpty!7902)) mapNonEmpty!7903))

(assert (= b!1546590 b!1546575))

(assert (= b!1546588 b!1546590))

(assert (= b!1546598 b!1546588))

(assert (= (and b!1546576 ((_ is LongMap!1682) (v!23386 (underlying!3574 (cache!2007 cacheDown!768))))) b!1546598))

(assert (= b!1546602 b!1546576))

(assert (= (and b!1546571 ((_ is HashMap!1626) (cache!2007 cacheDown!768))) b!1546602))

(assert (= start!143574 b!1546571))

(declare-fun m!1820197 () Bool)

(assert (=> mapNonEmpty!7904 m!1820197))

(declare-fun m!1820199 () Bool)

(assert (=> b!1546590 m!1820199))

(declare-fun m!1820201 () Bool)

(assert (=> b!1546590 m!1820201))

(declare-fun m!1820203 () Bool)

(assert (=> b!1546585 m!1820203))

(declare-fun m!1820205 () Bool)

(assert (=> b!1546591 m!1820205))

(declare-fun m!1820207 () Bool)

(assert (=> b!1546569 m!1820207))

(declare-fun m!1820209 () Bool)

(assert (=> b!1546569 m!1820209))

(declare-fun m!1820211 () Bool)

(assert (=> b!1546569 m!1820211))

(declare-fun m!1820213 () Bool)

(assert (=> b!1546569 m!1820213))

(declare-fun m!1820215 () Bool)

(assert (=> b!1546569 m!1820215))

(declare-fun m!1820217 () Bool)

(assert (=> b!1546569 m!1820217))

(assert (=> b!1546569 m!1820213))

(declare-fun m!1820219 () Bool)

(assert (=> b!1546569 m!1820219))

(assert (=> b!1546569 m!1820215))

(declare-fun m!1820221 () Bool)

(assert (=> b!1546574 m!1820221))

(declare-fun m!1820223 () Bool)

(assert (=> b!1546583 m!1820223))

(declare-fun m!1820225 () Bool)

(assert (=> b!1546583 m!1820225))

(declare-fun m!1820227 () Bool)

(assert (=> b!1546587 m!1820227))

(assert (=> b!1546587 m!1820227))

(declare-fun m!1820229 () Bool)

(assert (=> b!1546587 m!1820229))

(declare-fun m!1820231 () Bool)

(assert (=> b!1546587 m!1820231))

(declare-fun m!1820233 () Bool)

(assert (=> mapNonEmpty!7903 m!1820233))

(declare-fun m!1820235 () Bool)

(assert (=> start!143574 m!1820235))

(declare-fun m!1820237 () Bool)

(assert (=> start!143574 m!1820237))

(declare-fun m!1820239 () Bool)

(assert (=> start!143574 m!1820239))

(declare-fun m!1820241 () Bool)

(assert (=> start!143574 m!1820241))

(declare-fun m!1820243 () Bool)

(assert (=> start!143574 m!1820243))

(declare-fun m!1820245 () Bool)

(assert (=> b!1546582 m!1820245))

(declare-fun m!1820247 () Bool)

(assert (=> b!1546582 m!1820247))

(declare-fun m!1820249 () Bool)

(assert (=> b!1546592 m!1820249))

(declare-fun m!1820251 () Bool)

(assert (=> b!1546570 m!1820251))

(assert (=> b!1546572 m!1820251))

(declare-fun m!1820253 () Bool)

(assert (=> b!1546599 m!1820253))

(declare-fun m!1820255 () Bool)

(assert (=> b!1546599 m!1820255))

(declare-fun m!1820257 () Bool)

(assert (=> b!1546604 m!1820257))

(declare-fun m!1820259 () Bool)

(assert (=> b!1546581 m!1820259))

(declare-fun m!1820261 () Bool)

(assert (=> b!1546597 m!1820261))

(declare-fun m!1820263 () Bool)

(assert (=> b!1546597 m!1820263))

(declare-fun m!1820265 () Bool)

(assert (=> b!1546573 m!1820265))

(declare-fun m!1820267 () Bool)

(assert (=> b!1546578 m!1820267))

(declare-fun m!1820269 () Bool)

(assert (=> mapNonEmpty!7902 m!1820269))

(declare-fun m!1820271 () Bool)

(assert (=> b!1546577 m!1820271))

(check-sat (not b_next!41355) b_and!107733 (not b!1546574) (not mapNonEmpty!7904) (not b_next!41353) (not mapNonEmpty!7903) (not b!1546575) b_and!107739 (not b!1546581) (not b!1546573) (not b!1546604) (not b!1546577) (not b!1546585) (not b!1546587) (not b!1546582) (not b!1546578) (not b!1546599) (not b!1546590) (not b!1546597) b_and!107741 b_and!107747 (not b!1546591) b_and!107745 (not b!1546592) (not b!1546589) (not b_next!41349) b_and!107743 b_and!107735 (not b_next!41361) (not b!1546579) (not b_next!41359) (not start!143574) (not b_next!41351) b_and!107737 (not b!1546570) (not b!1546569) (not b!1546583) (not mapNonEmpty!7902) (not b!1546572) (not b_next!41357) (not b_next!41347))
(check-sat b_and!107741 (not b_next!41355) b_and!107733 b_and!107747 b_and!107745 (not b_next!41353) (not b_next!41349) b_and!107739 (not b_next!41359) (not b_next!41351) b_and!107737 b_and!107743 b_and!107735 (not b_next!41361) (not b_next!41357) (not b_next!41347))
