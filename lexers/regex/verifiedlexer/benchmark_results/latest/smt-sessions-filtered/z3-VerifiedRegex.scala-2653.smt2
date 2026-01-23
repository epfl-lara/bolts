; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143170 () Bool)

(assert start!143170)

(declare-fun b!1541336 () Bool)

(declare-fun b_free!40351 () Bool)

(declare-fun b_next!41055 () Bool)

(assert (=> b!1541336 (= b_free!40351 (not b_next!41055))))

(declare-fun tp!446871 () Bool)

(declare-fun b_and!107229 () Bool)

(assert (=> b!1541336 (= tp!446871 b_and!107229)))

(declare-fun b!1541339 () Bool)

(declare-fun b_free!40353 () Bool)

(declare-fun b_next!41057 () Bool)

(assert (=> b!1541339 (= b_free!40353 (not b_next!41057))))

(declare-fun tp!446852 () Bool)

(declare-fun b_and!107231 () Bool)

(assert (=> b!1541339 (= tp!446852 b_and!107231)))

(declare-fun b!1541341 () Bool)

(declare-fun b_free!40355 () Bool)

(declare-fun b_next!41059 () Bool)

(assert (=> b!1541341 (= b_free!40355 (not b_next!41059))))

(declare-fun tp!446872 () Bool)

(declare-fun b_and!107233 () Bool)

(assert (=> b!1541341 (= tp!446872 b_and!107233)))

(declare-fun b!1541365 () Bool)

(declare-fun b_free!40357 () Bool)

(declare-fun b_next!41061 () Bool)

(assert (=> b!1541365 (= b_free!40357 (not b_next!41061))))

(declare-fun tp!446863 () Bool)

(declare-fun b_and!107235 () Bool)

(assert (=> b!1541365 (= tp!446863 b_and!107235)))

(declare-fun b!1541362 () Bool)

(declare-fun b_free!40359 () Bool)

(declare-fun b_next!41063 () Bool)

(assert (=> b!1541362 (= b_free!40359 (not b_next!41063))))

(declare-fun tp!446868 () Bool)

(declare-fun b_and!107237 () Bool)

(assert (=> b!1541362 (= tp!446868 b_and!107237)))

(declare-fun b!1541351 () Bool)

(declare-fun b_free!40361 () Bool)

(declare-fun b_next!41065 () Bool)

(assert (=> b!1541351 (= b_free!40361 (not b_next!41065))))

(declare-fun tp!446846 () Bool)

(declare-fun b_and!107239 () Bool)

(assert (=> b!1541351 (= tp!446846 b_and!107239)))

(declare-fun b_free!40363 () Bool)

(declare-fun b_next!41067 () Bool)

(assert (=> b!1541351 (= b_free!40363 (not b_next!41067))))

(declare-fun tp!446854 () Bool)

(declare-fun b_and!107241 () Bool)

(assert (=> b!1541351 (= tp!446854 b_and!107241)))

(declare-fun b!1541353 () Bool)

(declare-fun b_free!40365 () Bool)

(declare-fun b_next!41069 () Bool)

(assert (=> b!1541353 (= b_free!40365 (not b_next!41069))))

(declare-fun tp!446859 () Bool)

(declare-fun b_and!107243 () Bool)

(assert (=> b!1541353 (= tp!446859 b_and!107243)))

(declare-fun b!1541334 () Bool)

(declare-fun e!986833 () Bool)

(declare-fun e!986847 () Bool)

(assert (=> b!1541334 (= e!986833 e!986847)))

(declare-fun b!1541335 () Bool)

(declare-fun res!690261 () Bool)

(declare-fun e!986854 () Bool)

(assert (=> b!1541335 (=> (not res!690261) (not e!986854))))

(declare-datatypes ((C!8612 0))(
  ( (C!8613 (val!4878 Int)) )
))
(declare-datatypes ((Regex!4217 0))(
  ( (ElementMatch!4217 (c!251748 C!8612)) (Concat!7199 (regOne!8946 Regex!4217) (regTwo!8946 Regex!4217)) (EmptyExpr!4217) (Star!4217 (reg!4546 Regex!4217)) (EmptyLang!4217) (Union!4217 (regOne!8947 Regex!4217) (regTwo!8947 Regex!4217)) )
))
(declare-datatypes ((List!16543 0))(
  ( (Nil!16475) (Cons!16475 (h!21876 Regex!4217) (t!140749 List!16543)) )
))
(declare-datatypes ((Context!1470 0))(
  ( (Context!1471 (exprs!1235 List!16543)) )
))
(declare-datatypes ((array!5686 0))(
  ( (array!5687 (arr!2530 (Array (_ BitVec 32) (_ BitVec 64))) (size!13309 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!1576 0))(
  ( (tuple3!1577 (_1!8997 Regex!4217) (_2!8997 Context!1470) (_3!1192 C!8612)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15610 0))(
  ( (tuple2!15611 (_1!8998 tuple3!1576) (_2!8998 (InoxSet Context!1470))) )
))
(declare-datatypes ((List!16544 0))(
  ( (Nil!16476) (Cons!16476 (h!21877 tuple2!15610) (t!140750 List!16544)) )
))
(declare-datatypes ((array!5688 0))(
  ( (array!5689 (arr!2531 (Array (_ BitVec 32) List!16544)) (size!13310 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3276 0))(
  ( (LongMapFixedSize!3277 (defaultEntry!1998 Int) (mask!4835 (_ BitVec 32)) (extraKeys!1885 (_ BitVec 32)) (zeroValue!1895 List!16544) (minValue!1895 List!16544) (_size!3357 (_ BitVec 32)) (_keys!1932 array!5686) (_values!1917 array!5688) (_vacant!1699 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6437 0))(
  ( (Cell!6438 (v!23290 LongMapFixedSize!3276)) )
))
(declare-datatypes ((MutLongMap!1638 0))(
  ( (LongMap!1638 (underlying!3485 Cell!6437)) (MutLongMapExt!1637 (__x!10609 Int)) )
))
(declare-datatypes ((Cell!6439 0))(
  ( (Cell!6440 (v!23291 MutLongMap!1638)) )
))
(declare-datatypes ((Hashable!1582 0))(
  ( (HashableExt!1581 (__x!10610 Int)) )
))
(declare-datatypes ((MutableMap!1582 0))(
  ( (MutableMapExt!1581 (__x!10611 Int)) (HashMap!1582 (underlying!3486 Cell!6439) (hashF!3501 Hashable!1582) (_size!3358 (_ BitVec 32)) (defaultValue!1742 Int)) )
))
(declare-datatypes ((CacheDown!960 0))(
  ( (CacheDown!961 (cache!1963 MutableMap!1582)) )
))
(declare-fun cacheDown!708 () CacheDown!960)

(declare-fun valid!1322 (CacheDown!960) Bool)

(assert (=> b!1541335 (= res!690261 (valid!1322 cacheDown!708))))

(declare-fun e!986851 () Bool)

(assert (=> b!1541336 (= e!986847 (and e!986851 tp!446871))))

(declare-fun b!1541337 () Bool)

(declare-fun e!986849 () Bool)

(declare-fun e!986834 () Bool)

(assert (=> b!1541337 (= e!986849 e!986834)))

(declare-fun b!1541338 () Bool)

(declare-fun res!690264 () Bool)

(assert (=> b!1541338 (=> (not res!690264) (not e!986854))))

(declare-datatypes ((tuple3!1578 0))(
  ( (tuple3!1579 (_1!8999 (InoxSet Context!1470)) (_2!8999 Int) (_3!1193 Int)) )
))
(declare-datatypes ((tuple2!15612 0))(
  ( (tuple2!15613 (_1!9000 tuple3!1578) (_2!9000 Int)) )
))
(declare-datatypes ((List!16545 0))(
  ( (Nil!16477) (Cons!16477 (h!21878 tuple2!15612) (t!140751 List!16545)) )
))
(declare-datatypes ((List!16546 0))(
  ( (Nil!16478) (Cons!16478 (h!21879 C!8612) (t!140752 List!16546)) )
))
(declare-datatypes ((IArray!11023 0))(
  ( (IArray!11024 (innerList!5569 List!16546)) )
))
(declare-datatypes ((array!5690 0))(
  ( (array!5691 (arr!2532 (Array (_ BitVec 32) List!16545)) (size!13311 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3278 0))(
  ( (LongMapFixedSize!3279 (defaultEntry!1999 Int) (mask!4836 (_ BitVec 32)) (extraKeys!1886 (_ BitVec 32)) (zeroValue!1896 List!16545) (minValue!1896 List!16545) (_size!3359 (_ BitVec 32)) (_keys!1933 array!5686) (_values!1918 array!5690) (_vacant!1700 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1583 0))(
  ( (HashableExt!1582 (__x!10612 Int)) )
))
(declare-datatypes ((Cell!6441 0))(
  ( (Cell!6442 (v!23292 LongMapFixedSize!3278)) )
))
(declare-datatypes ((MutLongMap!1639 0))(
  ( (LongMap!1639 (underlying!3487 Cell!6441)) (MutLongMapExt!1638 (__x!10613 Int)) )
))
(declare-datatypes ((Cell!6443 0))(
  ( (Cell!6444 (v!23293 MutLongMap!1639)) )
))
(declare-datatypes ((MutableMap!1583 0))(
  ( (MutableMapExt!1582 (__x!10614 Int)) (HashMap!1583 (underlying!3488 Cell!6443) (hashF!3502 Hashable!1583) (_size!3360 (_ BitVec 32)) (defaultValue!1743 Int)) )
))
(declare-datatypes ((Conc!5509 0))(
  ( (Node!5509 (left!13490 Conc!5509) (right!13820 Conc!5509) (csize!11248 Int) (cheight!5720 Int)) (Leaf!8163 (xs!8309 IArray!11023) (csize!11249 Int)) (Empty!5509) )
))
(declare-datatypes ((BalanceConc!10960 0))(
  ( (BalanceConc!10961 (c!251749 Conc!5509)) )
))
(declare-datatypes ((CacheFurthestNullable!380 0))(
  ( (CacheFurthestNullable!381 (cache!1964 MutableMap!1583) (totalInput!2386 BalanceConc!10960)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!380)

(declare-fun valid!1323 (CacheFurthestNullable!380) Bool)

(assert (=> b!1541338 (= res!690264 (valid!1323 cacheFurthestNullable!81))))

(declare-fun res!690260 () Bool)

(assert (=> start!143170 (=> (not res!690260) (not e!986854))))

(declare-datatypes ((LexerInterface!2542 0))(
  ( (LexerInterfaceExt!2539 (__x!10615 Int)) (Lexer!2540) )
))
(declare-fun thiss!15733 () LexerInterface!2542)

(get-info :version)

(assert (=> start!143170 (= res!690260 ((_ is Lexer!2540) thiss!15733))))

(assert (=> start!143170 e!986854))

(declare-datatypes ((tuple2!15614 0))(
  ( (tuple2!15615 (_1!9001 Context!1470) (_2!9001 C!8612)) )
))
(declare-datatypes ((tuple2!15616 0))(
  ( (tuple2!15617 (_1!9002 tuple2!15614) (_2!9002 (InoxSet Context!1470))) )
))
(declare-datatypes ((List!16547 0))(
  ( (Nil!16479) (Cons!16479 (h!21880 tuple2!15616) (t!140753 List!16547)) )
))
(declare-datatypes ((array!5692 0))(
  ( (array!5693 (arr!2533 (Array (_ BitVec 32) List!16547)) (size!13312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3280 0))(
  ( (LongMapFixedSize!3281 (defaultEntry!2000 Int) (mask!4837 (_ BitVec 32)) (extraKeys!1887 (_ BitVec 32)) (zeroValue!1897 List!16547) (minValue!1897 List!16547) (_size!3361 (_ BitVec 32)) (_keys!1934 array!5686) (_values!1919 array!5692) (_vacant!1701 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6445 0))(
  ( (Cell!6446 (v!23294 LongMapFixedSize!3280)) )
))
(declare-datatypes ((MutLongMap!1640 0))(
  ( (LongMap!1640 (underlying!3489 Cell!6445)) (MutLongMapExt!1639 (__x!10616 Int)) )
))
(declare-datatypes ((Cell!6447 0))(
  ( (Cell!6448 (v!23295 MutLongMap!1640)) )
))
(declare-datatypes ((Hashable!1584 0))(
  ( (HashableExt!1583 (__x!10617 Int)) )
))
(declare-datatypes ((MutableMap!1584 0))(
  ( (MutableMapExt!1583 (__x!10618 Int)) (HashMap!1584 (underlying!3490 Cell!6447) (hashF!3503 Hashable!1584) (_size!3362 (_ BitVec 32)) (defaultValue!1744 Int)) )
))
(declare-datatypes ((CacheUp!952 0))(
  ( (CacheUp!953 (cache!1965 MutableMap!1584)) )
))
(declare-fun cacheUp!695 () CacheUp!952)

(declare-fun inv!21736 (CacheUp!952) Bool)

(assert (=> start!143170 (and (inv!21736 cacheUp!695) e!986833)))

(declare-fun input!1460 () BalanceConc!10960)

(declare-fun e!986852 () Bool)

(declare-fun inv!21737 (BalanceConc!10960) Bool)

(assert (=> start!143170 (and (inv!21737 input!1460) e!986852)))

(declare-fun e!986855 () Bool)

(declare-fun inv!21738 (CacheDown!960) Bool)

(assert (=> start!143170 (and (inv!21738 cacheDown!708) e!986855)))

(assert (=> start!143170 true))

(declare-fun totalInput!496 () BalanceConc!10960)

(declare-fun e!986843 () Bool)

(assert (=> start!143170 (and (inv!21737 totalInput!496) e!986843)))

(declare-fun e!986842 () Bool)

(assert (=> start!143170 e!986842))

(declare-fun e!986862 () Bool)

(declare-fun inv!21739 (CacheFurthestNullable!380) Bool)

(assert (=> start!143170 (and (inv!21739 cacheFurthestNullable!81) e!986862)))

(declare-fun tp!446853 () Bool)

(declare-fun tp!446847 () Bool)

(declare-fun e!986841 () Bool)

(declare-fun array_inv!1818 (array!5686) Bool)

(declare-fun array_inv!1819 (array!5688) Bool)

(assert (=> b!1541339 (= e!986834 (and tp!446852 tp!446847 tp!446853 (array_inv!1818 (_keys!1932 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) (array_inv!1819 (_values!1917 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) e!986841))))

(declare-fun b!1541340 () Bool)

(declare-fun res!690266 () Bool)

(assert (=> b!1541340 (=> (not res!690266) (not e!986854))))

(declare-fun isSuffix!337 (List!16546 List!16546) Bool)

(declare-fun list!6435 (BalanceConc!10960) List!16546)

(assert (=> b!1541340 (= res!690266 (isSuffix!337 (list!6435 input!1460) (list!6435 totalInput!496)))))

(declare-fun e!986838 () Bool)

(declare-fun tp!446869 () Bool)

(declare-fun e!986850 () Bool)

(declare-fun tp!446858 () Bool)

(declare-fun array_inv!1820 (array!5692) Bool)

(assert (=> b!1541341 (= e!986850 (and tp!446872 tp!446869 tp!446858 (array_inv!1818 (_keys!1934 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) (array_inv!1820 (_values!1919 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) e!986838))))

(declare-fun b!1541342 () Bool)

(declare-fun tp!446864 () Bool)

(declare-fun mapRes!7699 () Bool)

(assert (=> b!1541342 (= e!986841 (and tp!446864 mapRes!7699))))

(declare-fun condMapEmpty!7699 () Bool)

(declare-fun mapDefault!7699 () List!16544)

(assert (=> b!1541342 (= condMapEmpty!7699 (= (arr!2531 (_values!1917 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16544)) mapDefault!7699)))))

(declare-fun b!1541343 () Bool)

(declare-fun e!986857 () Bool)

(declare-fun lt!534539 () MutLongMap!1640)

(assert (=> b!1541343 (= e!986851 (and e!986857 ((_ is LongMap!1640) lt!534539)))))

(assert (=> b!1541343 (= lt!534539 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))

(declare-fun mapIsEmpty!7698 () Bool)

(declare-fun mapRes!7698 () Bool)

(assert (=> mapIsEmpty!7698 mapRes!7698))

(declare-fun b!1541344 () Bool)

(declare-fun e!986861 () Bool)

(declare-fun e!986840 () Bool)

(assert (=> b!1541344 (= e!986861 e!986840)))

(declare-fun b!1541345 () Bool)

(declare-datatypes ((List!16548 0))(
  ( (Nil!16480) (Cons!16480 (h!21881 (_ BitVec 16)) (t!140754 List!16548)) )
))
(declare-datatypes ((TokenValue!2982 0))(
  ( (FloatLiteralValue!5964 (text!21319 List!16548)) (TokenValueExt!2981 (__x!10619 Int)) (Broken!14910 (value!92058 List!16548)) (Object!3049) (End!2982) (Def!2982) (Underscore!2982) (Match!2982) (Else!2982) (Error!2982) (Case!2982) (If!2982) (Extends!2982) (Abstract!2982) (Class!2982) (Val!2982) (DelimiterValue!5964 (del!3042 List!16548)) (KeywordValue!2988 (value!92059 List!16548)) (CommentValue!5964 (value!92060 List!16548)) (WhitespaceValue!5964 (value!92061 List!16548)) (IndentationValue!2982 (value!92062 List!16548)) (String!19191) (Int32!2982) (Broken!14911 (value!92063 List!16548)) (Boolean!2983) (Unit!25892) (OperatorValue!2985 (op!3042 List!16548)) (IdentifierValue!5964 (value!92064 List!16548)) (IdentifierValue!5965 (value!92065 List!16548)) (WhitespaceValue!5965 (value!92066 List!16548)) (True!5964) (False!5964) (Broken!14912 (value!92067 List!16548)) (Broken!14913 (value!92068 List!16548)) (True!5965) (RightBrace!2982) (RightBracket!2982) (Colon!2982) (Null!2982) (Comma!2982) (LeftBracket!2982) (False!5965) (LeftBrace!2982) (ImaginaryLiteralValue!2982 (text!21320 List!16548)) (StringLiteralValue!8946 (value!92069 List!16548)) (EOFValue!2982 (value!92070 List!16548)) (IdentValue!2982 (value!92071 List!16548)) (DelimiterValue!5965 (value!92072 List!16548)) (DedentValue!2982 (value!92073 List!16548)) (NewLineValue!2982 (value!92074 List!16548)) (IntegerValue!8946 (value!92075 (_ BitVec 32)) (text!21321 List!16548)) (IntegerValue!8947 (value!92076 Int) (text!21322 List!16548)) (Times!2982) (Or!2982) (Equal!2982) (Minus!2982) (Broken!14914 (value!92077 List!16548)) (And!2982) (Div!2982) (LessEqual!2982) (Mod!2982) (Concat!7200) (Not!2982) (Plus!2982) (SpaceValue!2982 (value!92078 List!16548)) (IntegerValue!8948 (value!92079 Int) (text!21323 List!16548)) (StringLiteralValue!8947 (text!21324 List!16548)) (FloatLiteralValue!5965 (text!21325 List!16548)) (BytesLiteralValue!2982 (value!92080 List!16548)) (CommentValue!5965 (value!92081 List!16548)) (StringLiteralValue!8948 (value!92082 List!16548)) (ErrorTokenValue!2982 (msg!3043 List!16548)) )
))
(declare-datatypes ((String!19192 0))(
  ( (String!19193 (value!92083 String)) )
))
(declare-datatypes ((TokenValueInjection!5624 0))(
  ( (TokenValueInjection!5625 (toValue!4253 Int) (toChars!4112 Int)) )
))
(declare-datatypes ((Rule!5584 0))(
  ( (Rule!5585 (regex!2892 Regex!4217) (tag!3156 String!19192) (isSeparator!2892 Bool) (transformation!2892 TokenValueInjection!5624)) )
))
(declare-datatypes ((List!16549 0))(
  ( (Nil!16481) (Cons!16481 (h!21882 Rule!5584) (t!140755 List!16549)) )
))
(declare-fun rulesArg!359 () List!16549)

(declare-fun size!13313 (List!16549) Int)

(assert (=> b!1541345 (= e!986854 (< (size!13313 rulesArg!359) 0))))

(declare-fun b!1541346 () Bool)

(declare-fun res!690259 () Bool)

(assert (=> b!1541346 (=> (not res!690259) (not e!986854))))

(declare-fun rulesValidInductive!890 (LexerInterface!2542 List!16549) Bool)

(assert (=> b!1541346 (= res!690259 (rulesValidInductive!890 thiss!15733 rulesArg!359))))

(declare-fun b!1541347 () Bool)

(declare-fun tp!446848 () Bool)

(declare-fun inv!21740 (Conc!5509) Bool)

(assert (=> b!1541347 (= e!986852 (and (inv!21740 (c!251749 input!1460)) tp!446848))))

(declare-fun e!986839 () Bool)

(declare-fun b!1541348 () Bool)

(declare-fun e!986837 () Bool)

(assert (=> b!1541348 (= e!986862 (and e!986839 (inv!21737 (totalInput!2386 cacheFurthestNullable!81)) e!986837))))

(declare-fun b!1541349 () Bool)

(declare-fun e!986832 () Bool)

(assert (=> b!1541349 (= e!986832 e!986861)))

(declare-fun b!1541350 () Bool)

(declare-fun e!986846 () Bool)

(declare-fun lt!534540 () MutLongMap!1639)

(assert (=> b!1541350 (= e!986846 (and e!986832 ((_ is LongMap!1639) lt!534540)))))

(assert (=> b!1541350 (= lt!534540 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))

(declare-fun e!986860 () Bool)

(assert (=> b!1541351 (= e!986860 (and tp!446846 tp!446854))))

(declare-fun e!986863 () Bool)

(declare-fun tp!446873 () Bool)

(declare-fun b!1541352 () Bool)

(declare-fun inv!21729 (String!19192) Bool)

(declare-fun inv!21741 (TokenValueInjection!5624) Bool)

(assert (=> b!1541352 (= e!986863 (and tp!446873 (inv!21729 (tag!3156 (h!21882 rulesArg!359))) (inv!21741 (transformation!2892 (h!21882 rulesArg!359))) e!986860))))

(declare-fun tp!446851 () Bool)

(declare-fun e!986853 () Bool)

(declare-fun tp!446866 () Bool)

(declare-fun array_inv!1821 (array!5690) Bool)

(assert (=> b!1541353 (= e!986840 (and tp!446859 tp!446851 tp!446866 (array_inv!1818 (_keys!1933 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) (array_inv!1821 (_values!1918 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) e!986853))))

(declare-fun b!1541354 () Bool)

(declare-fun e!986844 () Bool)

(assert (=> b!1541354 (= e!986844 e!986850)))

(declare-fun b!1541355 () Bool)

(assert (=> b!1541355 (= e!986857 e!986844)))

(declare-fun b!1541356 () Bool)

(declare-fun tp!446870 () Bool)

(assert (=> b!1541356 (= e!986842 (and e!986863 tp!446870))))

(declare-fun b!1541357 () Bool)

(declare-fun res!690265 () Bool)

(assert (=> b!1541357 (=> (not res!690265) (not e!986854))))

(assert (=> b!1541357 (= res!690265 (= (totalInput!2386 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1541358 () Bool)

(declare-fun res!690262 () Bool)

(assert (=> b!1541358 (=> (not res!690262) (not e!986854))))

(declare-fun isEmpty!10034 (List!16549) Bool)

(assert (=> b!1541358 (= res!690262 (not (isEmpty!10034 rulesArg!359)))))

(declare-fun mapIsEmpty!7699 () Bool)

(assert (=> mapIsEmpty!7699 mapRes!7699))

(declare-fun b!1541359 () Bool)

(declare-fun tp!446849 () Bool)

(assert (=> b!1541359 (= e!986843 (and (inv!21740 (c!251749 totalInput!496)) tp!446849))))

(declare-fun b!1541360 () Bool)

(declare-fun tp!446865 () Bool)

(assert (=> b!1541360 (= e!986837 (and (inv!21740 (c!251749 (totalInput!2386 cacheFurthestNullable!81))) tp!446865))))

(declare-fun b!1541361 () Bool)

(declare-fun res!690263 () Bool)

(assert (=> b!1541361 (=> (not res!690263) (not e!986854))))

(declare-fun valid!1324 (CacheUp!952) Bool)

(assert (=> b!1541361 (= res!690263 (valid!1324 cacheUp!695))))

(declare-fun mapIsEmpty!7700 () Bool)

(declare-fun mapRes!7700 () Bool)

(assert (=> mapIsEmpty!7700 mapRes!7700))

(assert (=> b!1541362 (= e!986839 (and e!986846 tp!446868))))

(declare-fun b!1541363 () Bool)

(declare-fun tp!446850 () Bool)

(assert (=> b!1541363 (= e!986853 (and tp!446850 mapRes!7698))))

(declare-fun condMapEmpty!7698 () Bool)

(declare-fun mapDefault!7700 () List!16545)

(assert (=> b!1541363 (= condMapEmpty!7698 (= (arr!2532 (_values!1918 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16545)) mapDefault!7700)))))

(declare-fun b!1541364 () Bool)

(declare-fun tp!446862 () Bool)

(assert (=> b!1541364 (= e!986838 (and tp!446862 mapRes!7700))))

(declare-fun condMapEmpty!7700 () Bool)

(declare-fun mapDefault!7698 () List!16547)

(assert (=> b!1541364 (= condMapEmpty!7700 (= (arr!2533 (_values!1919 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16547)) mapDefault!7698)))))

(declare-fun e!986856 () Bool)

(declare-fun e!986836 () Bool)

(assert (=> b!1541365 (= e!986856 (and e!986836 tp!446863))))

(declare-fun b!1541366 () Bool)

(declare-fun e!986848 () Bool)

(assert (=> b!1541366 (= e!986848 e!986849)))

(declare-fun mapNonEmpty!7698 () Bool)

(declare-fun tp!446860 () Bool)

(declare-fun tp!446855 () Bool)

(assert (=> mapNonEmpty!7698 (= mapRes!7700 (and tp!446860 tp!446855))))

(declare-fun mapValue!7700 () List!16547)

(declare-fun mapRest!7699 () (Array (_ BitVec 32) List!16547))

(declare-fun mapKey!7699 () (_ BitVec 32))

(assert (=> mapNonEmpty!7698 (= (arr!2533 (_values!1919 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) (store mapRest!7699 mapKey!7699 mapValue!7700))))

(declare-fun mapNonEmpty!7699 () Bool)

(declare-fun tp!446861 () Bool)

(declare-fun tp!446857 () Bool)

(assert (=> mapNonEmpty!7699 (= mapRes!7699 (and tp!446861 tp!446857))))

(declare-fun mapValue!7698 () List!16544)

(declare-fun mapRest!7698 () (Array (_ BitVec 32) List!16544))

(declare-fun mapKey!7698 () (_ BitVec 32))

(assert (=> mapNonEmpty!7699 (= (arr!2531 (_values!1917 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) (store mapRest!7698 mapKey!7698 mapValue!7698))))

(declare-fun b!1541367 () Bool)

(assert (=> b!1541367 (= e!986855 e!986856)))

(declare-fun mapNonEmpty!7700 () Bool)

(declare-fun tp!446867 () Bool)

(declare-fun tp!446856 () Bool)

(assert (=> mapNonEmpty!7700 (= mapRes!7698 (and tp!446867 tp!446856))))

(declare-fun mapKey!7700 () (_ BitVec 32))

(declare-fun mapRest!7700 () (Array (_ BitVec 32) List!16545))

(declare-fun mapValue!7699 () List!16545)

(assert (=> mapNonEmpty!7700 (= (arr!2532 (_values!1918 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) (store mapRest!7700 mapKey!7700 mapValue!7699))))

(declare-fun b!1541368 () Bool)

(declare-fun lt!534538 () MutLongMap!1638)

(assert (=> b!1541368 (= e!986836 (and e!986848 ((_ is LongMap!1638) lt!534538)))))

(assert (=> b!1541368 (= lt!534538 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))

(assert (= (and start!143170 res!690260) b!1541346))

(assert (= (and b!1541346 res!690259) b!1541358))

(assert (= (and b!1541358 res!690262) b!1541340))

(assert (= (and b!1541340 res!690266) b!1541361))

(assert (= (and b!1541361 res!690263) b!1541335))

(assert (= (and b!1541335 res!690261) b!1541338))

(assert (= (and b!1541338 res!690264) b!1541357))

(assert (= (and b!1541357 res!690265) b!1541345))

(assert (= (and b!1541364 condMapEmpty!7700) mapIsEmpty!7700))

(assert (= (and b!1541364 (not condMapEmpty!7700)) mapNonEmpty!7698))

(assert (= b!1541341 b!1541364))

(assert (= b!1541354 b!1541341))

(assert (= b!1541355 b!1541354))

(assert (= (and b!1541343 ((_ is LongMap!1640) (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))) b!1541355))

(assert (= b!1541336 b!1541343))

(assert (= (and b!1541334 ((_ is HashMap!1584) (cache!1965 cacheUp!695))) b!1541336))

(assert (= start!143170 b!1541334))

(assert (= start!143170 b!1541347))

(assert (= (and b!1541342 condMapEmpty!7699) mapIsEmpty!7699))

(assert (= (and b!1541342 (not condMapEmpty!7699)) mapNonEmpty!7699))

(assert (= b!1541339 b!1541342))

(assert (= b!1541337 b!1541339))

(assert (= b!1541366 b!1541337))

(assert (= (and b!1541368 ((_ is LongMap!1638) (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))) b!1541366))

(assert (= b!1541365 b!1541368))

(assert (= (and b!1541367 ((_ is HashMap!1582) (cache!1963 cacheDown!708))) b!1541365))

(assert (= start!143170 b!1541367))

(assert (= start!143170 b!1541359))

(assert (= b!1541352 b!1541351))

(assert (= b!1541356 b!1541352))

(assert (= (and start!143170 ((_ is Cons!16481) rulesArg!359)) b!1541356))

(assert (= (and b!1541363 condMapEmpty!7698) mapIsEmpty!7698))

(assert (= (and b!1541363 (not condMapEmpty!7698)) mapNonEmpty!7700))

(assert (= b!1541353 b!1541363))

(assert (= b!1541344 b!1541353))

(assert (= b!1541349 b!1541344))

(assert (= (and b!1541350 ((_ is LongMap!1639) (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))) b!1541349))

(assert (= b!1541362 b!1541350))

(assert (= (and b!1541348 ((_ is HashMap!1583) (cache!1964 cacheFurthestNullable!81))) b!1541362))

(assert (= b!1541348 b!1541360))

(assert (= start!143170 b!1541348))

(declare-fun m!1815012 () Bool)

(assert (=> b!1541348 m!1815012))

(declare-fun m!1815014 () Bool)

(assert (=> b!1541338 m!1815014))

(declare-fun m!1815016 () Bool)

(assert (=> b!1541359 m!1815016))

(declare-fun m!1815018 () Bool)

(assert (=> b!1541341 m!1815018))

(declare-fun m!1815020 () Bool)

(assert (=> b!1541341 m!1815020))

(declare-fun m!1815022 () Bool)

(assert (=> b!1541353 m!1815022))

(declare-fun m!1815024 () Bool)

(assert (=> b!1541353 m!1815024))

(declare-fun m!1815026 () Bool)

(assert (=> b!1541361 m!1815026))

(declare-fun m!1815028 () Bool)

(assert (=> b!1541352 m!1815028))

(declare-fun m!1815030 () Bool)

(assert (=> b!1541352 m!1815030))

(declare-fun m!1815032 () Bool)

(assert (=> b!1541358 m!1815032))

(declare-fun m!1815034 () Bool)

(assert (=> mapNonEmpty!7698 m!1815034))

(declare-fun m!1815036 () Bool)

(assert (=> b!1541360 m!1815036))

(declare-fun m!1815038 () Bool)

(assert (=> mapNonEmpty!7699 m!1815038))

(declare-fun m!1815040 () Bool)

(assert (=> b!1541346 m!1815040))

(declare-fun m!1815042 () Bool)

(assert (=> b!1541347 m!1815042))

(declare-fun m!1815044 () Bool)

(assert (=> start!143170 m!1815044))

(declare-fun m!1815046 () Bool)

(assert (=> start!143170 m!1815046))

(declare-fun m!1815048 () Bool)

(assert (=> start!143170 m!1815048))

(declare-fun m!1815050 () Bool)

(assert (=> start!143170 m!1815050))

(declare-fun m!1815052 () Bool)

(assert (=> start!143170 m!1815052))

(declare-fun m!1815054 () Bool)

(assert (=> mapNonEmpty!7700 m!1815054))

(declare-fun m!1815056 () Bool)

(assert (=> b!1541339 m!1815056))

(declare-fun m!1815058 () Bool)

(assert (=> b!1541339 m!1815058))

(declare-fun m!1815060 () Bool)

(assert (=> b!1541340 m!1815060))

(declare-fun m!1815062 () Bool)

(assert (=> b!1541340 m!1815062))

(assert (=> b!1541340 m!1815060))

(assert (=> b!1541340 m!1815062))

(declare-fun m!1815064 () Bool)

(assert (=> b!1541340 m!1815064))

(declare-fun m!1815066 () Bool)

(assert (=> b!1541335 m!1815066))

(declare-fun m!1815068 () Bool)

(assert (=> b!1541345 m!1815068))

(check-sat (not b_next!41055) (not b!1541335) (not mapNonEmpty!7698) (not b_next!41059) (not b_next!41057) (not b!1541338) (not b!1541356) (not b_next!41061) (not b_next!41067) (not b!1541347) b_and!107229 (not b!1541340) (not b!1541358) (not mapNonEmpty!7700) (not b!1541360) (not b!1541348) (not b_next!41065) b_and!107239 (not b!1541345) (not mapNonEmpty!7699) (not start!143170) (not b!1541342) (not b!1541363) (not b_next!41069) (not b!1541341) b_and!107243 (not b!1541339) b_and!107237 b_and!107241 (not b!1541346) (not b!1541361) b_and!107233 b_and!107235 (not b_next!41063) (not b!1541364) (not b!1541359) b_and!107231 (not b!1541352) (not b!1541353))
(check-sat (not b_next!41055) (not b_next!41059) (not b_next!41057) (not b_next!41061) (not b_next!41067) b_and!107229 b_and!107233 b_and!107231 (not b_next!41065) b_and!107239 (not b_next!41069) b_and!107243 b_and!107237 b_and!107241 b_and!107235 (not b_next!41063))
(get-model)

(declare-fun d!458644 () Bool)

(assert (=> d!458644 (= (array_inv!1818 (_keys!1934 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) (bvsge (size!13309 (_keys!1934 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541341 d!458644))

(declare-fun d!458646 () Bool)

(assert (=> d!458646 (= (array_inv!1820 (_values!1919 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) (bvsge (size!13312 (_values!1919 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541341 d!458646))

(declare-fun d!458648 () Bool)

(declare-fun validCacheMapUp!151 (MutableMap!1584) Bool)

(assert (=> d!458648 (= (valid!1324 cacheUp!695) (validCacheMapUp!151 (cache!1965 cacheUp!695)))))

(declare-fun bs!382836 () Bool)

(assert (= bs!382836 d!458648))

(declare-fun m!1815070 () Bool)

(assert (=> bs!382836 m!1815070))

(assert (=> b!1541361 d!458648))

(declare-fun d!458650 () Bool)

(assert (=> d!458650 (= (inv!21729 (tag!3156 (h!21882 rulesArg!359))) (= (mod (str.len (value!92083 (tag!3156 (h!21882 rulesArg!359)))) 2) 0))))

(assert (=> b!1541352 d!458650))

(declare-fun d!458652 () Bool)

(declare-fun res!690269 () Bool)

(declare-fun e!986866 () Bool)

(assert (=> d!458652 (=> (not res!690269) (not e!986866))))

(declare-fun semiInverseModEq!1087 (Int Int) Bool)

(assert (=> d!458652 (= res!690269 (semiInverseModEq!1087 (toChars!4112 (transformation!2892 (h!21882 rulesArg!359))) (toValue!4253 (transformation!2892 (h!21882 rulesArg!359)))))))

(assert (=> d!458652 (= (inv!21741 (transformation!2892 (h!21882 rulesArg!359))) e!986866)))

(declare-fun b!1541371 () Bool)

(declare-fun equivClasses!1046 (Int Int) Bool)

(assert (=> b!1541371 (= e!986866 (equivClasses!1046 (toChars!4112 (transformation!2892 (h!21882 rulesArg!359))) (toValue!4253 (transformation!2892 (h!21882 rulesArg!359)))))))

(assert (= (and d!458652 res!690269) b!1541371))

(declare-fun m!1815072 () Bool)

(assert (=> d!458652 m!1815072))

(declare-fun m!1815074 () Bool)

(assert (=> b!1541371 m!1815074))

(assert (=> b!1541352 d!458652))

(declare-fun d!458654 () Bool)

(assert (=> d!458654 (= (array_inv!1818 (_keys!1933 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) (bvsge (size!13309 (_keys!1933 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541353 d!458654))

(declare-fun d!458656 () Bool)

(assert (=> d!458656 (= (array_inv!1821 (_values!1918 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) (bvsge (size!13311 (_values!1918 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541353 d!458656))

(declare-fun d!458658 () Bool)

(declare-fun lt!534543 () Int)

(assert (=> d!458658 (>= lt!534543 0)))

(declare-fun e!986869 () Int)

(assert (=> d!458658 (= lt!534543 e!986869)))

(declare-fun c!251752 () Bool)

(assert (=> d!458658 (= c!251752 ((_ is Nil!16481) rulesArg!359))))

(assert (=> d!458658 (= (size!13313 rulesArg!359) lt!534543)))

(declare-fun b!1541376 () Bool)

(assert (=> b!1541376 (= e!986869 0)))

(declare-fun b!1541377 () Bool)

(assert (=> b!1541377 (= e!986869 (+ 1 (size!13313 (t!140755 rulesArg!359))))))

(assert (= (and d!458658 c!251752) b!1541376))

(assert (= (and d!458658 (not c!251752)) b!1541377))

(declare-fun m!1815076 () Bool)

(assert (=> b!1541377 m!1815076))

(assert (=> b!1541345 d!458658))

(declare-fun d!458660 () Bool)

(declare-fun validCacheMapDown!151 (MutableMap!1582) Bool)

(assert (=> d!458660 (= (valid!1322 cacheDown!708) (validCacheMapDown!151 (cache!1963 cacheDown!708)))))

(declare-fun bs!382837 () Bool)

(assert (= bs!382837 d!458660))

(declare-fun m!1815078 () Bool)

(assert (=> bs!382837 m!1815078))

(assert (=> b!1541335 d!458660))

(declare-fun d!458662 () Bool)

(declare-fun res!690272 () Bool)

(declare-fun e!986872 () Bool)

(assert (=> d!458662 (=> (not res!690272) (not e!986872))))

(assert (=> d!458662 (= res!690272 ((_ is HashMap!1582) (cache!1963 cacheDown!708)))))

(assert (=> d!458662 (= (inv!21738 cacheDown!708) e!986872)))

(declare-fun b!1541380 () Bool)

(assert (=> b!1541380 (= e!986872 (validCacheMapDown!151 (cache!1963 cacheDown!708)))))

(assert (= (and d!458662 res!690272) b!1541380))

(assert (=> b!1541380 m!1815078))

(assert (=> start!143170 d!458662))

(declare-fun d!458664 () Bool)

(declare-fun isBalanced!1633 (Conc!5509) Bool)

(assert (=> d!458664 (= (inv!21737 input!1460) (isBalanced!1633 (c!251749 input!1460)))))

(declare-fun bs!382838 () Bool)

(assert (= bs!382838 d!458664))

(declare-fun m!1815080 () Bool)

(assert (=> bs!382838 m!1815080))

(assert (=> start!143170 d!458664))

(declare-fun d!458666 () Bool)

(declare-fun res!690275 () Bool)

(declare-fun e!986875 () Bool)

(assert (=> d!458666 (=> (not res!690275) (not e!986875))))

(assert (=> d!458666 (= res!690275 ((_ is HashMap!1584) (cache!1965 cacheUp!695)))))

(assert (=> d!458666 (= (inv!21736 cacheUp!695) e!986875)))

(declare-fun b!1541383 () Bool)

(assert (=> b!1541383 (= e!986875 (validCacheMapUp!151 (cache!1965 cacheUp!695)))))

(assert (= (and d!458666 res!690275) b!1541383))

(assert (=> b!1541383 m!1815070))

(assert (=> start!143170 d!458666))

(declare-fun d!458668 () Bool)

(assert (=> d!458668 (= (inv!21737 totalInput!496) (isBalanced!1633 (c!251749 totalInput!496)))))

(declare-fun bs!382839 () Bool)

(assert (= bs!382839 d!458668))

(declare-fun m!1815082 () Bool)

(assert (=> bs!382839 m!1815082))

(assert (=> start!143170 d!458668))

(declare-fun d!458670 () Bool)

(declare-fun res!690278 () Bool)

(declare-fun e!986878 () Bool)

(assert (=> d!458670 (=> (not res!690278) (not e!986878))))

(assert (=> d!458670 (= res!690278 ((_ is HashMap!1583) (cache!1964 cacheFurthestNullable!81)))))

(assert (=> d!458670 (= (inv!21739 cacheFurthestNullable!81) e!986878)))

(declare-fun b!1541386 () Bool)

(declare-fun validCacheMapFurthestNullable!64 (MutableMap!1583 BalanceConc!10960) Bool)

(assert (=> b!1541386 (= e!986878 (validCacheMapFurthestNullable!64 (cache!1964 cacheFurthestNullable!81) (totalInput!2386 cacheFurthestNullable!81)))))

(assert (= (and d!458670 res!690278) b!1541386))

(declare-fun m!1815084 () Bool)

(assert (=> b!1541386 m!1815084))

(assert (=> start!143170 d!458670))

(declare-fun d!458672 () Bool)

(assert (=> d!458672 true))

(declare-fun lt!534546 () Bool)

(declare-fun lambda!65279 () Int)

(declare-fun forall!3906 (List!16549 Int) Bool)

(assert (=> d!458672 (= lt!534546 (forall!3906 rulesArg!359 lambda!65279))))

(declare-fun e!986883 () Bool)

(assert (=> d!458672 (= lt!534546 e!986883)))

(declare-fun res!690283 () Bool)

(assert (=> d!458672 (=> res!690283 e!986883)))

(assert (=> d!458672 (= res!690283 (not ((_ is Cons!16481) rulesArg!359)))))

(assert (=> d!458672 (= (rulesValidInductive!890 thiss!15733 rulesArg!359) lt!534546)))

(declare-fun b!1541391 () Bool)

(declare-fun e!986884 () Bool)

(assert (=> b!1541391 (= e!986883 e!986884)))

(declare-fun res!690284 () Bool)

(assert (=> b!1541391 (=> (not res!690284) (not e!986884))))

(declare-fun ruleValid!651 (LexerInterface!2542 Rule!5584) Bool)

(assert (=> b!1541391 (= res!690284 (ruleValid!651 thiss!15733 (h!21882 rulesArg!359)))))

(declare-fun b!1541392 () Bool)

(assert (=> b!1541392 (= e!986884 (rulesValidInductive!890 thiss!15733 (t!140755 rulesArg!359)))))

(assert (= (and d!458672 (not res!690283)) b!1541391))

(assert (= (and b!1541391 res!690284) b!1541392))

(declare-fun m!1815086 () Bool)

(assert (=> d!458672 m!1815086))

(declare-fun m!1815088 () Bool)

(assert (=> b!1541391 m!1815088))

(declare-fun m!1815090 () Bool)

(assert (=> b!1541392 m!1815090))

(assert (=> b!1541346 d!458672))

(declare-fun d!458674 () Bool)

(declare-fun c!251755 () Bool)

(assert (=> d!458674 (= c!251755 ((_ is Node!5509) (c!251749 input!1460)))))

(declare-fun e!986889 () Bool)

(assert (=> d!458674 (= (inv!21740 (c!251749 input!1460)) e!986889)))

(declare-fun b!1541401 () Bool)

(declare-fun inv!21742 (Conc!5509) Bool)

(assert (=> b!1541401 (= e!986889 (inv!21742 (c!251749 input!1460)))))

(declare-fun b!1541402 () Bool)

(declare-fun e!986890 () Bool)

(assert (=> b!1541402 (= e!986889 e!986890)))

(declare-fun res!690287 () Bool)

(assert (=> b!1541402 (= res!690287 (not ((_ is Leaf!8163) (c!251749 input!1460))))))

(assert (=> b!1541402 (=> res!690287 e!986890)))

(declare-fun b!1541403 () Bool)

(declare-fun inv!21743 (Conc!5509) Bool)

(assert (=> b!1541403 (= e!986890 (inv!21743 (c!251749 input!1460)))))

(assert (= (and d!458674 c!251755) b!1541401))

(assert (= (and d!458674 (not c!251755)) b!1541402))

(assert (= (and b!1541402 (not res!690287)) b!1541403))

(declare-fun m!1815092 () Bool)

(assert (=> b!1541401 m!1815092))

(declare-fun m!1815094 () Bool)

(assert (=> b!1541403 m!1815094))

(assert (=> b!1541347 d!458674))

(declare-fun d!458676 () Bool)

(assert (=> d!458676 (= (valid!1323 cacheFurthestNullable!81) (validCacheMapFurthestNullable!64 (cache!1964 cacheFurthestNullable!81) (totalInput!2386 cacheFurthestNullable!81)))))

(declare-fun bs!382840 () Bool)

(assert (= bs!382840 d!458676))

(assert (=> bs!382840 m!1815084))

(assert (=> b!1541338 d!458676))

(declare-fun d!458678 () Bool)

(assert (=> d!458678 (= (isEmpty!10034 rulesArg!359) ((_ is Nil!16481) rulesArg!359))))

(assert (=> b!1541358 d!458678))

(declare-fun d!458680 () Bool)

(assert (=> d!458680 (= (inv!21737 (totalInput!2386 cacheFurthestNullable!81)) (isBalanced!1633 (c!251749 (totalInput!2386 cacheFurthestNullable!81))))))

(declare-fun bs!382841 () Bool)

(assert (= bs!382841 d!458680))

(declare-fun m!1815096 () Bool)

(assert (=> bs!382841 m!1815096))

(assert (=> b!1541348 d!458680))

(declare-fun d!458682 () Bool)

(assert (=> d!458682 (= (array_inv!1818 (_keys!1932 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) (bvsge (size!13309 (_keys!1932 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541339 d!458682))

(declare-fun d!458684 () Bool)

(assert (=> d!458684 (= (array_inv!1819 (_values!1917 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) (bvsge (size!13310 (_values!1917 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1541339 d!458684))

(declare-fun d!458686 () Bool)

(declare-fun e!986893 () Bool)

(assert (=> d!458686 e!986893))

(declare-fun res!690290 () Bool)

(assert (=> d!458686 (=> res!690290 e!986893)))

(declare-fun lt!534549 () Bool)

(assert (=> d!458686 (= res!690290 (not lt!534549))))

(declare-fun drop!775 (List!16546 Int) List!16546)

(declare-fun size!13314 (List!16546) Int)

(assert (=> d!458686 (= lt!534549 (= (list!6435 input!1460) (drop!775 (list!6435 totalInput!496) (- (size!13314 (list!6435 totalInput!496)) (size!13314 (list!6435 input!1460))))))))

(assert (=> d!458686 (= (isSuffix!337 (list!6435 input!1460) (list!6435 totalInput!496)) lt!534549)))

(declare-fun b!1541406 () Bool)

(assert (=> b!1541406 (= e!986893 (>= (size!13314 (list!6435 totalInput!496)) (size!13314 (list!6435 input!1460))))))

(assert (= (and d!458686 (not res!690290)) b!1541406))

(assert (=> d!458686 m!1815062))

(declare-fun m!1815098 () Bool)

(assert (=> d!458686 m!1815098))

(assert (=> d!458686 m!1815060))

(declare-fun m!1815100 () Bool)

(assert (=> d!458686 m!1815100))

(assert (=> d!458686 m!1815062))

(declare-fun m!1815102 () Bool)

(assert (=> d!458686 m!1815102))

(assert (=> b!1541406 m!1815062))

(assert (=> b!1541406 m!1815098))

(assert (=> b!1541406 m!1815060))

(assert (=> b!1541406 m!1815100))

(assert (=> b!1541340 d!458686))

(declare-fun d!458688 () Bool)

(declare-fun list!6436 (Conc!5509) List!16546)

(assert (=> d!458688 (= (list!6435 input!1460) (list!6436 (c!251749 input!1460)))))

(declare-fun bs!382842 () Bool)

(assert (= bs!382842 d!458688))

(declare-fun m!1815104 () Bool)

(assert (=> bs!382842 m!1815104))

(assert (=> b!1541340 d!458688))

(declare-fun d!458690 () Bool)

(assert (=> d!458690 (= (list!6435 totalInput!496) (list!6436 (c!251749 totalInput!496)))))

(declare-fun bs!382843 () Bool)

(assert (= bs!382843 d!458690))

(declare-fun m!1815106 () Bool)

(assert (=> bs!382843 m!1815106))

(assert (=> b!1541340 d!458690))

(declare-fun d!458692 () Bool)

(declare-fun c!251756 () Bool)

(assert (=> d!458692 (= c!251756 ((_ is Node!5509) (c!251749 totalInput!496)))))

(declare-fun e!986894 () Bool)

(assert (=> d!458692 (= (inv!21740 (c!251749 totalInput!496)) e!986894)))

(declare-fun b!1541407 () Bool)

(assert (=> b!1541407 (= e!986894 (inv!21742 (c!251749 totalInput!496)))))

(declare-fun b!1541408 () Bool)

(declare-fun e!986895 () Bool)

(assert (=> b!1541408 (= e!986894 e!986895)))

(declare-fun res!690291 () Bool)

(assert (=> b!1541408 (= res!690291 (not ((_ is Leaf!8163) (c!251749 totalInput!496))))))

(assert (=> b!1541408 (=> res!690291 e!986895)))

(declare-fun b!1541409 () Bool)

(assert (=> b!1541409 (= e!986895 (inv!21743 (c!251749 totalInput!496)))))

(assert (= (and d!458692 c!251756) b!1541407))

(assert (= (and d!458692 (not c!251756)) b!1541408))

(assert (= (and b!1541408 (not res!690291)) b!1541409))

(declare-fun m!1815108 () Bool)

(assert (=> b!1541407 m!1815108))

(declare-fun m!1815110 () Bool)

(assert (=> b!1541409 m!1815110))

(assert (=> b!1541359 d!458692))

(declare-fun d!458694 () Bool)

(declare-fun c!251757 () Bool)

(assert (=> d!458694 (= c!251757 ((_ is Node!5509) (c!251749 (totalInput!2386 cacheFurthestNullable!81))))))

(declare-fun e!986896 () Bool)

(assert (=> d!458694 (= (inv!21740 (c!251749 (totalInput!2386 cacheFurthestNullable!81))) e!986896)))

(declare-fun b!1541410 () Bool)

(assert (=> b!1541410 (= e!986896 (inv!21742 (c!251749 (totalInput!2386 cacheFurthestNullable!81))))))

(declare-fun b!1541411 () Bool)

(declare-fun e!986897 () Bool)

(assert (=> b!1541411 (= e!986896 e!986897)))

(declare-fun res!690292 () Bool)

(assert (=> b!1541411 (= res!690292 (not ((_ is Leaf!8163) (c!251749 (totalInput!2386 cacheFurthestNullable!81)))))))

(assert (=> b!1541411 (=> res!690292 e!986897)))

(declare-fun b!1541412 () Bool)

(assert (=> b!1541412 (= e!986897 (inv!21743 (c!251749 (totalInput!2386 cacheFurthestNullable!81))))))

(assert (= (and d!458694 c!251757) b!1541410))

(assert (= (and d!458694 (not c!251757)) b!1541411))

(assert (= (and b!1541411 (not res!690292)) b!1541412))

(declare-fun m!1815112 () Bool)

(assert (=> b!1541410 m!1815112))

(declare-fun m!1815114 () Bool)

(assert (=> b!1541412 m!1815114))

(assert (=> b!1541360 d!458694))

(declare-fun setIsEmpty!10236 () Bool)

(declare-fun setRes!10236 () Bool)

(assert (=> setIsEmpty!10236 setRes!10236))

(declare-fun b!1541421 () Bool)

(declare-fun e!986906 () Bool)

(declare-fun tp!446883 () Bool)

(assert (=> b!1541421 (= e!986906 tp!446883)))

(declare-fun tp_is_empty!7047 () Bool)

(declare-fun e!986905 () Bool)

(declare-fun tp!446882 () Bool)

(declare-fun b!1541422 () Bool)

(declare-fun e!986904 () Bool)

(declare-fun inv!21744 (Context!1470) Bool)

(assert (=> b!1541422 (= e!986904 (and (inv!21744 (_1!9001 (_1!9002 (h!21880 (zeroValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))))) e!986905 tp_is_empty!7047 setRes!10236 tp!446882))))

(declare-fun condSetEmpty!10236 () Bool)

(assert (=> b!1541422 (= condSetEmpty!10236 (= (_2!9002 (h!21880 (zeroValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))) ((as const (Array Context!1470 Bool)) false)))))

(assert (=> b!1541341 (= tp!446869 e!986904)))

(declare-fun tp!446885 () Bool)

(declare-fun setElem!10236 () Context!1470)

(declare-fun setNonEmpty!10236 () Bool)

(assert (=> setNonEmpty!10236 (= setRes!10236 (and tp!446885 (inv!21744 setElem!10236) e!986906))))

(declare-fun setRest!10236 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10236 (= (_2!9002 (h!21880 (zeroValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10236 true) setRest!10236))))

(declare-fun b!1541423 () Bool)

(declare-fun tp!446884 () Bool)

(assert (=> b!1541423 (= e!986905 tp!446884)))

(assert (= b!1541422 b!1541423))

(assert (= (and b!1541422 condSetEmpty!10236) setIsEmpty!10236))

(assert (= (and b!1541422 (not condSetEmpty!10236)) setNonEmpty!10236))

(assert (= setNonEmpty!10236 b!1541421))

(assert (= (and b!1541341 ((_ is Cons!16479) (zeroValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))) b!1541422))

(declare-fun m!1815116 () Bool)

(assert (=> b!1541422 m!1815116))

(declare-fun m!1815118 () Bool)

(assert (=> setNonEmpty!10236 m!1815118))

(declare-fun setIsEmpty!10237 () Bool)

(declare-fun setRes!10237 () Bool)

(assert (=> setIsEmpty!10237 setRes!10237))

(declare-fun b!1541424 () Bool)

(declare-fun e!986909 () Bool)

(declare-fun tp!446887 () Bool)

(assert (=> b!1541424 (= e!986909 tp!446887)))

(declare-fun e!986907 () Bool)

(declare-fun b!1541425 () Bool)

(declare-fun tp!446886 () Bool)

(declare-fun e!986908 () Bool)

(assert (=> b!1541425 (= e!986907 (and (inv!21744 (_1!9001 (_1!9002 (h!21880 (minValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))))) e!986908 tp_is_empty!7047 setRes!10237 tp!446886))))

(declare-fun condSetEmpty!10237 () Bool)

(assert (=> b!1541425 (= condSetEmpty!10237 (= (_2!9002 (h!21880 (minValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))) ((as const (Array Context!1470 Bool)) false)))))

(assert (=> b!1541341 (= tp!446858 e!986907)))

(declare-fun tp!446889 () Bool)

(declare-fun setElem!10237 () Context!1470)

(declare-fun setNonEmpty!10237 () Bool)

(assert (=> setNonEmpty!10237 (= setRes!10237 (and tp!446889 (inv!21744 setElem!10237) e!986909))))

(declare-fun setRest!10237 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10237 (= (_2!9002 (h!21880 (minValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10237 true) setRest!10237))))

(declare-fun b!1541426 () Bool)

(declare-fun tp!446888 () Bool)

(assert (=> b!1541426 (= e!986908 tp!446888)))

(assert (= b!1541425 b!1541426))

(assert (= (and b!1541425 condSetEmpty!10237) setIsEmpty!10237))

(assert (= (and b!1541425 (not condSetEmpty!10237)) setNonEmpty!10237))

(assert (= setNonEmpty!10237 b!1541424))

(assert (= (and b!1541341 ((_ is Cons!16479) (minValue!1897 (v!23294 (underlying!3489 (v!23295 (underlying!3490 (cache!1965 cacheUp!695)))))))) b!1541425))

(declare-fun m!1815120 () Bool)

(assert (=> b!1541425 m!1815120))

(declare-fun m!1815122 () Bool)

(assert (=> setNonEmpty!10237 m!1815122))

(declare-fun b!1541437 () Bool)

(declare-fun e!986920 () Bool)

(declare-fun tp!446904 () Bool)

(assert (=> b!1541437 (= e!986920 tp!446904)))

(declare-fun setNonEmpty!10242 () Bool)

(declare-fun setRes!10242 () Bool)

(declare-fun tp!446908 () Bool)

(declare-fun setElem!10242 () Context!1470)

(assert (=> setNonEmpty!10242 (= setRes!10242 (and tp!446908 (inv!21744 setElem!10242) e!986920))))

(declare-fun mapDefault!7703 () List!16545)

(declare-fun setRest!10243 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10242 (= (_1!8999 (_1!9000 (h!21878 mapDefault!7703))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10242 true) setRest!10243))))

(declare-fun b!1541438 () Bool)

(declare-fun e!986919 () Bool)

(declare-fun tp!446906 () Bool)

(assert (=> b!1541438 (= e!986919 (and setRes!10242 tp!446906))))

(declare-fun condSetEmpty!10243 () Bool)

(assert (=> b!1541438 (= condSetEmpty!10243 (= (_1!8999 (_1!9000 (h!21878 mapDefault!7703))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun condMapEmpty!7703 () Bool)

(assert (=> mapNonEmpty!7700 (= condMapEmpty!7703 (= mapRest!7700 ((as const (Array (_ BitVec 32) List!16545)) mapDefault!7703)))))

(declare-fun mapRes!7703 () Bool)

(assert (=> mapNonEmpty!7700 (= tp!446867 (and e!986919 mapRes!7703))))

(declare-fun setNonEmpty!10243 () Bool)

(declare-fun e!986921 () Bool)

(declare-fun setElem!10243 () Context!1470)

(declare-fun setRes!10243 () Bool)

(declare-fun tp!446905 () Bool)

(assert (=> setNonEmpty!10243 (= setRes!10243 (and tp!446905 (inv!21744 setElem!10243) e!986921))))

(declare-fun mapValue!7703 () List!16545)

(declare-fun setRest!10242 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10243 (= (_1!8999 (_1!9000 (h!21878 mapValue!7703))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10243 true) setRest!10242))))

(declare-fun setIsEmpty!10242 () Bool)

(assert (=> setIsEmpty!10242 setRes!10243))

(declare-fun b!1541439 () Bool)

(declare-fun e!986918 () Bool)

(declare-fun tp!446907 () Bool)

(assert (=> b!1541439 (= e!986918 (and setRes!10243 tp!446907))))

(declare-fun condSetEmpty!10242 () Bool)

(assert (=> b!1541439 (= condSetEmpty!10242 (= (_1!8999 (_1!9000 (h!21878 mapValue!7703))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun b!1541440 () Bool)

(declare-fun tp!446910 () Bool)

(assert (=> b!1541440 (= e!986921 tp!446910)))

(declare-fun setIsEmpty!10243 () Bool)

(assert (=> setIsEmpty!10243 setRes!10242))

(declare-fun mapNonEmpty!7703 () Bool)

(declare-fun tp!446909 () Bool)

(assert (=> mapNonEmpty!7703 (= mapRes!7703 (and tp!446909 e!986918))))

(declare-fun mapRest!7703 () (Array (_ BitVec 32) List!16545))

(declare-fun mapKey!7703 () (_ BitVec 32))

(assert (=> mapNonEmpty!7703 (= mapRest!7700 (store mapRest!7703 mapKey!7703 mapValue!7703))))

(declare-fun mapIsEmpty!7703 () Bool)

(assert (=> mapIsEmpty!7703 mapRes!7703))

(assert (= (and mapNonEmpty!7700 condMapEmpty!7703) mapIsEmpty!7703))

(assert (= (and mapNonEmpty!7700 (not condMapEmpty!7703)) mapNonEmpty!7703))

(assert (= (and b!1541439 condSetEmpty!10242) setIsEmpty!10242))

(assert (= (and b!1541439 (not condSetEmpty!10242)) setNonEmpty!10243))

(assert (= setNonEmpty!10243 b!1541440))

(assert (= (and mapNonEmpty!7703 ((_ is Cons!16477) mapValue!7703)) b!1541439))

(assert (= (and b!1541438 condSetEmpty!10243) setIsEmpty!10243))

(assert (= (and b!1541438 (not condSetEmpty!10243)) setNonEmpty!10242))

(assert (= setNonEmpty!10242 b!1541437))

(assert (= (and mapNonEmpty!7700 ((_ is Cons!16477) mapDefault!7703)) b!1541438))

(declare-fun m!1815124 () Bool)

(assert (=> setNonEmpty!10242 m!1815124))

(declare-fun m!1815126 () Bool)

(assert (=> setNonEmpty!10243 m!1815126))

(declare-fun m!1815128 () Bool)

(assert (=> mapNonEmpty!7703 m!1815128))

(declare-fun e!986927 () Bool)

(assert (=> mapNonEmpty!7700 (= tp!446856 e!986927)))

(declare-fun e!986926 () Bool)

(declare-fun tp!446919 () Bool)

(declare-fun setRes!10246 () Bool)

(declare-fun setElem!10246 () Context!1470)

(declare-fun setNonEmpty!10246 () Bool)

(assert (=> setNonEmpty!10246 (= setRes!10246 (and tp!446919 (inv!21744 setElem!10246) e!986926))))

(declare-fun setRest!10246 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10246 (= (_1!8999 (_1!9000 (h!21878 mapValue!7699))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10246 true) setRest!10246))))

(declare-fun b!1541447 () Bool)

(declare-fun tp!446918 () Bool)

(assert (=> b!1541447 (= e!986927 (and setRes!10246 tp!446918))))

(declare-fun condSetEmpty!10246 () Bool)

(assert (=> b!1541447 (= condSetEmpty!10246 (= (_1!8999 (_1!9000 (h!21878 mapValue!7699))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun setIsEmpty!10246 () Bool)

(assert (=> setIsEmpty!10246 setRes!10246))

(declare-fun b!1541448 () Bool)

(declare-fun tp!446917 () Bool)

(assert (=> b!1541448 (= e!986926 tp!446917)))

(assert (= (and b!1541447 condSetEmpty!10246) setIsEmpty!10246))

(assert (= (and b!1541447 (not condSetEmpty!10246)) setNonEmpty!10246))

(assert (= setNonEmpty!10246 b!1541448))

(assert (= (and mapNonEmpty!7700 ((_ is Cons!16477) mapValue!7699)) b!1541447))

(declare-fun m!1815130 () Bool)

(assert (=> setNonEmpty!10246 m!1815130))

(declare-fun tp!446931 () Bool)

(declare-fun e!986934 () Bool)

(declare-fun e!986936 () Bool)

(declare-fun tp!446930 () Bool)

(declare-fun b!1541457 () Bool)

(declare-fun setRes!10249 () Bool)

(assert (=> b!1541457 (= e!986934 (and tp!446930 (inv!21744 (_2!8997 (_1!8998 (h!21877 mapDefault!7699)))) e!986936 tp_is_empty!7047 setRes!10249 tp!446931))))

(declare-fun condSetEmpty!10249 () Bool)

(assert (=> b!1541457 (= condSetEmpty!10249 (= (_2!8998 (h!21877 mapDefault!7699)) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun b!1541458 () Bool)

(declare-fun e!986935 () Bool)

(declare-fun tp!446934 () Bool)

(assert (=> b!1541458 (= e!986935 tp!446934)))

(assert (=> b!1541342 (= tp!446864 e!986934)))

(declare-fun b!1541459 () Bool)

(declare-fun tp!446932 () Bool)

(assert (=> b!1541459 (= e!986936 tp!446932)))

(declare-fun setElem!10249 () Context!1470)

(declare-fun tp!446933 () Bool)

(declare-fun setNonEmpty!10249 () Bool)

(assert (=> setNonEmpty!10249 (= setRes!10249 (and tp!446933 (inv!21744 setElem!10249) e!986935))))

(declare-fun setRest!10249 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10249 (= (_2!8998 (h!21877 mapDefault!7699)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10249 true) setRest!10249))))

(declare-fun setIsEmpty!10249 () Bool)

(assert (=> setIsEmpty!10249 setRes!10249))

(assert (= b!1541457 b!1541459))

(assert (= (and b!1541457 condSetEmpty!10249) setIsEmpty!10249))

(assert (= (and b!1541457 (not condSetEmpty!10249)) setNonEmpty!10249))

(assert (= setNonEmpty!10249 b!1541458))

(assert (= (and b!1541342 ((_ is Cons!16476) mapDefault!7699)) b!1541457))

(declare-fun m!1815132 () Bool)

(assert (=> b!1541457 m!1815132))

(declare-fun m!1815134 () Bool)

(assert (=> setNonEmpty!10249 m!1815134))

(declare-fun b!1541471 () Bool)

(declare-fun e!986939 () Bool)

(declare-fun tp!446947 () Bool)

(declare-fun tp!446945 () Bool)

(assert (=> b!1541471 (= e!986939 (and tp!446947 tp!446945))))

(declare-fun b!1541470 () Bool)

(assert (=> b!1541470 (= e!986939 tp_is_empty!7047)))

(declare-fun b!1541472 () Bool)

(declare-fun tp!446946 () Bool)

(assert (=> b!1541472 (= e!986939 tp!446946)))

(declare-fun b!1541473 () Bool)

(declare-fun tp!446949 () Bool)

(declare-fun tp!446948 () Bool)

(assert (=> b!1541473 (= e!986939 (and tp!446949 tp!446948))))

(assert (=> b!1541352 (= tp!446873 e!986939)))

(assert (= (and b!1541352 ((_ is ElementMatch!4217) (regex!2892 (h!21882 rulesArg!359)))) b!1541470))

(assert (= (and b!1541352 ((_ is Concat!7199) (regex!2892 (h!21882 rulesArg!359)))) b!1541471))

(assert (= (and b!1541352 ((_ is Star!4217) (regex!2892 (h!21882 rulesArg!359)))) b!1541472))

(assert (= (and b!1541352 ((_ is Union!4217) (regex!2892 (h!21882 rulesArg!359)))) b!1541473))

(declare-fun e!986941 () Bool)

(assert (=> b!1541353 (= tp!446851 e!986941)))

(declare-fun e!986940 () Bool)

(declare-fun setElem!10250 () Context!1470)

(declare-fun setRes!10250 () Bool)

(declare-fun setNonEmpty!10250 () Bool)

(declare-fun tp!446952 () Bool)

(assert (=> setNonEmpty!10250 (= setRes!10250 (and tp!446952 (inv!21744 setElem!10250) e!986940))))

(declare-fun setRest!10250 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10250 (= (_1!8999 (_1!9000 (h!21878 (zeroValue!1896 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10250 true) setRest!10250))))

(declare-fun b!1541474 () Bool)

(declare-fun tp!446951 () Bool)

(assert (=> b!1541474 (= e!986941 (and setRes!10250 tp!446951))))

(declare-fun condSetEmpty!10250 () Bool)

(assert (=> b!1541474 (= condSetEmpty!10250 (= (_1!8999 (_1!9000 (h!21878 (zeroValue!1896 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun setIsEmpty!10250 () Bool)

(assert (=> setIsEmpty!10250 setRes!10250))

(declare-fun b!1541475 () Bool)

(declare-fun tp!446950 () Bool)

(assert (=> b!1541475 (= e!986940 tp!446950)))

(assert (= (and b!1541474 condSetEmpty!10250) setIsEmpty!10250))

(assert (= (and b!1541474 (not condSetEmpty!10250)) setNonEmpty!10250))

(assert (= setNonEmpty!10250 b!1541475))

(assert (= (and b!1541353 ((_ is Cons!16477) (zeroValue!1896 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81)))))))) b!1541474))

(declare-fun m!1815136 () Bool)

(assert (=> setNonEmpty!10250 m!1815136))

(declare-fun e!986943 () Bool)

(assert (=> b!1541353 (= tp!446866 e!986943)))

(declare-fun e!986942 () Bool)

(declare-fun setNonEmpty!10251 () Bool)

(declare-fun setRes!10251 () Bool)

(declare-fun setElem!10251 () Context!1470)

(declare-fun tp!446955 () Bool)

(assert (=> setNonEmpty!10251 (= setRes!10251 (and tp!446955 (inv!21744 setElem!10251) e!986942))))

(declare-fun setRest!10251 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10251 (= (_1!8999 (_1!9000 (h!21878 (minValue!1896 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10251 true) setRest!10251))))

(declare-fun b!1541476 () Bool)

(declare-fun tp!446954 () Bool)

(assert (=> b!1541476 (= e!986943 (and setRes!10251 tp!446954))))

(declare-fun condSetEmpty!10251 () Bool)

(assert (=> b!1541476 (= condSetEmpty!10251 (= (_1!8999 (_1!9000 (h!21878 (minValue!1896 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81))))))))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun setIsEmpty!10251 () Bool)

(assert (=> setIsEmpty!10251 setRes!10251))

(declare-fun b!1541477 () Bool)

(declare-fun tp!446953 () Bool)

(assert (=> b!1541477 (= e!986942 tp!446953)))

(assert (= (and b!1541476 condSetEmpty!10251) setIsEmpty!10251))

(assert (= (and b!1541476 (not condSetEmpty!10251)) setNonEmpty!10251))

(assert (= setNonEmpty!10251 b!1541477))

(assert (= (and b!1541353 ((_ is Cons!16477) (minValue!1896 (v!23292 (underlying!3487 (v!23293 (underlying!3488 (cache!1964 cacheFurthestNullable!81)))))))) b!1541476))

(declare-fun m!1815138 () Bool)

(assert (=> setNonEmpty!10251 m!1815138))

(declare-fun e!986945 () Bool)

(assert (=> b!1541363 (= tp!446850 e!986945)))

(declare-fun e!986944 () Bool)

(declare-fun setRes!10252 () Bool)

(declare-fun setNonEmpty!10252 () Bool)

(declare-fun tp!446958 () Bool)

(declare-fun setElem!10252 () Context!1470)

(assert (=> setNonEmpty!10252 (= setRes!10252 (and tp!446958 (inv!21744 setElem!10252) e!986944))))

(declare-fun setRest!10252 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10252 (= (_1!8999 (_1!9000 (h!21878 mapDefault!7700))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10252 true) setRest!10252))))

(declare-fun b!1541478 () Bool)

(declare-fun tp!446957 () Bool)

(assert (=> b!1541478 (= e!986945 (and setRes!10252 tp!446957))))

(declare-fun condSetEmpty!10252 () Bool)

(assert (=> b!1541478 (= condSetEmpty!10252 (= (_1!8999 (_1!9000 (h!21878 mapDefault!7700))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun setIsEmpty!10252 () Bool)

(assert (=> setIsEmpty!10252 setRes!10252))

(declare-fun b!1541479 () Bool)

(declare-fun tp!446956 () Bool)

(assert (=> b!1541479 (= e!986944 tp!446956)))

(assert (= (and b!1541478 condSetEmpty!10252) setIsEmpty!10252))

(assert (= (and b!1541478 (not condSetEmpty!10252)) setNonEmpty!10252))

(assert (= setNonEmpty!10252 b!1541479))

(assert (= (and b!1541363 ((_ is Cons!16477) mapDefault!7700)) b!1541478))

(declare-fun m!1815140 () Bool)

(assert (=> setNonEmpty!10252 m!1815140))

(declare-fun setIsEmpty!10253 () Bool)

(declare-fun setRes!10253 () Bool)

(assert (=> setIsEmpty!10253 setRes!10253))

(declare-fun b!1541480 () Bool)

(declare-fun e!986948 () Bool)

(declare-fun tp!446960 () Bool)

(assert (=> b!1541480 (= e!986948 tp!446960)))

(declare-fun e!986947 () Bool)

(declare-fun tp!446959 () Bool)

(declare-fun e!986946 () Bool)

(declare-fun b!1541481 () Bool)

(assert (=> b!1541481 (= e!986946 (and (inv!21744 (_1!9001 (_1!9002 (h!21880 mapDefault!7698)))) e!986947 tp_is_empty!7047 setRes!10253 tp!446959))))

(declare-fun condSetEmpty!10253 () Bool)

(assert (=> b!1541481 (= condSetEmpty!10253 (= (_2!9002 (h!21880 mapDefault!7698)) ((as const (Array Context!1470 Bool)) false)))))

(assert (=> b!1541364 (= tp!446862 e!986946)))

(declare-fun tp!446962 () Bool)

(declare-fun setElem!10253 () Context!1470)

(declare-fun setNonEmpty!10253 () Bool)

(assert (=> setNonEmpty!10253 (= setRes!10253 (and tp!446962 (inv!21744 setElem!10253) e!986948))))

(declare-fun setRest!10253 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10253 (= (_2!9002 (h!21880 mapDefault!7698)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10253 true) setRest!10253))))

(declare-fun b!1541482 () Bool)

(declare-fun tp!446961 () Bool)

(assert (=> b!1541482 (= e!986947 tp!446961)))

(assert (= b!1541481 b!1541482))

(assert (= (and b!1541481 condSetEmpty!10253) setIsEmpty!10253))

(assert (= (and b!1541481 (not condSetEmpty!10253)) setNonEmpty!10253))

(assert (= setNonEmpty!10253 b!1541480))

(assert (= (and b!1541364 ((_ is Cons!16479) mapDefault!7698)) b!1541481))

(declare-fun m!1815142 () Bool)

(assert (=> b!1541481 m!1815142))

(declare-fun m!1815144 () Bool)

(assert (=> setNonEmpty!10253 m!1815144))

(declare-fun b!1541493 () Bool)

(declare-fun b_free!40367 () Bool)

(declare-fun b_next!41071 () Bool)

(assert (=> b!1541493 (= b_free!40367 (not b_next!41071))))

(declare-fun tp!446972 () Bool)

(declare-fun b_and!107245 () Bool)

(assert (=> b!1541493 (= tp!446972 b_and!107245)))

(declare-fun b_free!40369 () Bool)

(declare-fun b_next!41073 () Bool)

(assert (=> b!1541493 (= b_free!40369 (not b_next!41073))))

(declare-fun tp!446971 () Bool)

(declare-fun b_and!107247 () Bool)

(assert (=> b!1541493 (= tp!446971 b_and!107247)))

(declare-fun e!986957 () Bool)

(assert (=> b!1541493 (= e!986957 (and tp!446972 tp!446971))))

(declare-fun tp!446974 () Bool)

(declare-fun b!1541492 () Bool)

(declare-fun e!986958 () Bool)

(assert (=> b!1541492 (= e!986958 (and tp!446974 (inv!21729 (tag!3156 (h!21882 (t!140755 rulesArg!359)))) (inv!21741 (transformation!2892 (h!21882 (t!140755 rulesArg!359)))) e!986957))))

(declare-fun b!1541491 () Bool)

(declare-fun e!986960 () Bool)

(declare-fun tp!446973 () Bool)

(assert (=> b!1541491 (= e!986960 (and e!986958 tp!446973))))

(assert (=> b!1541356 (= tp!446870 e!986960)))

(assert (= b!1541492 b!1541493))

(assert (= b!1541491 b!1541492))

(assert (= (and b!1541356 ((_ is Cons!16481) (t!140755 rulesArg!359))) b!1541491))

(declare-fun m!1815146 () Bool)

(assert (=> b!1541492 m!1815146))

(declare-fun m!1815148 () Bool)

(assert (=> b!1541492 m!1815148))

(declare-fun b!1541502 () Bool)

(declare-fun tp!446981 () Bool)

(declare-fun tp!446982 () Bool)

(declare-fun e!986966 () Bool)

(assert (=> b!1541502 (= e!986966 (and (inv!21740 (left!13490 (c!251749 input!1460))) tp!446981 (inv!21740 (right!13820 (c!251749 input!1460))) tp!446982))))

(declare-fun b!1541504 () Bool)

(declare-fun e!986965 () Bool)

(declare-fun tp!446983 () Bool)

(assert (=> b!1541504 (= e!986965 tp!446983)))

(declare-fun b!1541503 () Bool)

(declare-fun inv!21745 (IArray!11023) Bool)

(assert (=> b!1541503 (= e!986966 (and (inv!21745 (xs!8309 (c!251749 input!1460))) e!986965))))

(assert (=> b!1541347 (= tp!446848 (and (inv!21740 (c!251749 input!1460)) e!986966))))

(assert (= (and b!1541347 ((_ is Node!5509) (c!251749 input!1460))) b!1541502))

(assert (= b!1541503 b!1541504))

(assert (= (and b!1541347 ((_ is Leaf!8163) (c!251749 input!1460))) b!1541503))

(declare-fun m!1815150 () Bool)

(assert (=> b!1541502 m!1815150))

(declare-fun m!1815152 () Bool)

(assert (=> b!1541502 m!1815152))

(declare-fun m!1815154 () Bool)

(assert (=> b!1541503 m!1815154))

(assert (=> b!1541347 m!1815042))

(declare-fun setRes!10258 () Bool)

(declare-fun setNonEmpty!10258 () Bool)

(declare-fun e!986984 () Bool)

(declare-fun setElem!10259 () Context!1470)

(declare-fun tp!447006 () Bool)

(assert (=> setNonEmpty!10258 (= setRes!10258 (and tp!447006 (inv!21744 setElem!10259) e!986984))))

(declare-fun mapValue!7706 () List!16547)

(declare-fun setRest!10259 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10258 (= (_2!9002 (h!21880 mapValue!7706)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10259 true) setRest!10259))))

(declare-fun b!1541519 () Bool)

(declare-fun tp!447004 () Bool)

(assert (=> b!1541519 (= e!986984 tp!447004)))

(declare-fun mapIsEmpty!7706 () Bool)

(declare-fun mapRes!7706 () Bool)

(assert (=> mapIsEmpty!7706 mapRes!7706))

(declare-fun tp!447008 () Bool)

(declare-fun mapDefault!7706 () List!16547)

(declare-fun b!1541520 () Bool)

(declare-fun e!986980 () Bool)

(declare-fun e!986981 () Bool)

(declare-fun setRes!10259 () Bool)

(assert (=> b!1541520 (= e!986981 (and (inv!21744 (_1!9001 (_1!9002 (h!21880 mapDefault!7706)))) e!986980 tp_is_empty!7047 setRes!10259 tp!447008))))

(declare-fun condSetEmpty!10258 () Bool)

(assert (=> b!1541520 (= condSetEmpty!10258 (= (_2!9002 (h!21880 mapDefault!7706)) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun b!1541521 () Bool)

(declare-fun tp!447002 () Bool)

(assert (=> b!1541521 (= e!986980 tp!447002)))

(declare-fun b!1541522 () Bool)

(declare-fun e!986982 () Bool)

(declare-fun tp!447005 () Bool)

(assert (=> b!1541522 (= e!986982 tp!447005)))

(declare-fun setIsEmpty!10258 () Bool)

(assert (=> setIsEmpty!10258 setRes!10259))

(declare-fun mapNonEmpty!7706 () Bool)

(declare-fun tp!447009 () Bool)

(declare-fun e!986983 () Bool)

(assert (=> mapNonEmpty!7706 (= mapRes!7706 (and tp!447009 e!986983))))

(declare-fun mapRest!7706 () (Array (_ BitVec 32) List!16547))

(declare-fun mapKey!7706 () (_ BitVec 32))

(assert (=> mapNonEmpty!7706 (= mapRest!7699 (store mapRest!7706 mapKey!7706 mapValue!7706))))

(declare-fun b!1541523 () Bool)

(declare-fun e!986979 () Bool)

(declare-fun tp!447003 () Bool)

(assert (=> b!1541523 (= e!986983 (and (inv!21744 (_1!9001 (_1!9002 (h!21880 mapValue!7706)))) e!986979 tp_is_empty!7047 setRes!10258 tp!447003))))

(declare-fun condSetEmpty!10259 () Bool)

(assert (=> b!1541523 (= condSetEmpty!10259 (= (_2!9002 (h!21880 mapValue!7706)) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun condMapEmpty!7706 () Bool)

(assert (=> mapNonEmpty!7698 (= condMapEmpty!7706 (= mapRest!7699 ((as const (Array (_ BitVec 32) List!16547)) mapDefault!7706)))))

(assert (=> mapNonEmpty!7698 (= tp!446860 (and e!986981 mapRes!7706))))

(declare-fun setNonEmpty!10259 () Bool)

(declare-fun tp!447010 () Bool)

(declare-fun setElem!10258 () Context!1470)

(assert (=> setNonEmpty!10259 (= setRes!10259 (and tp!447010 (inv!21744 setElem!10258) e!986982))))

(declare-fun setRest!10258 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10259 (= (_2!9002 (h!21880 mapDefault!7706)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10258 true) setRest!10258))))

(declare-fun b!1541524 () Bool)

(declare-fun tp!447007 () Bool)

(assert (=> b!1541524 (= e!986979 tp!447007)))

(declare-fun setIsEmpty!10259 () Bool)

(assert (=> setIsEmpty!10259 setRes!10258))

(assert (= (and mapNonEmpty!7698 condMapEmpty!7706) mapIsEmpty!7706))

(assert (= (and mapNonEmpty!7698 (not condMapEmpty!7706)) mapNonEmpty!7706))

(assert (= b!1541523 b!1541524))

(assert (= (and b!1541523 condSetEmpty!10259) setIsEmpty!10259))

(assert (= (and b!1541523 (not condSetEmpty!10259)) setNonEmpty!10258))

(assert (= setNonEmpty!10258 b!1541519))

(assert (= (and mapNonEmpty!7706 ((_ is Cons!16479) mapValue!7706)) b!1541523))

(assert (= b!1541520 b!1541521))

(assert (= (and b!1541520 condSetEmpty!10258) setIsEmpty!10258))

(assert (= (and b!1541520 (not condSetEmpty!10258)) setNonEmpty!10259))

(assert (= setNonEmpty!10259 b!1541522))

(assert (= (and mapNonEmpty!7698 ((_ is Cons!16479) mapDefault!7706)) b!1541520))

(declare-fun m!1815156 () Bool)

(assert (=> b!1541520 m!1815156))

(declare-fun m!1815158 () Bool)

(assert (=> setNonEmpty!10259 m!1815158))

(declare-fun m!1815160 () Bool)

(assert (=> setNonEmpty!10258 m!1815160))

(declare-fun m!1815162 () Bool)

(assert (=> mapNonEmpty!7706 m!1815162))

(declare-fun m!1815164 () Bool)

(assert (=> b!1541523 m!1815164))

(declare-fun setIsEmpty!10260 () Bool)

(declare-fun setRes!10260 () Bool)

(assert (=> setIsEmpty!10260 setRes!10260))

(declare-fun b!1541525 () Bool)

(declare-fun e!986987 () Bool)

(declare-fun tp!447012 () Bool)

(assert (=> b!1541525 (= e!986987 tp!447012)))

(declare-fun b!1541526 () Bool)

(declare-fun e!986986 () Bool)

(declare-fun e!986985 () Bool)

(declare-fun tp!447011 () Bool)

(assert (=> b!1541526 (= e!986985 (and (inv!21744 (_1!9001 (_1!9002 (h!21880 mapValue!7700)))) e!986986 tp_is_empty!7047 setRes!10260 tp!447011))))

(declare-fun condSetEmpty!10260 () Bool)

(assert (=> b!1541526 (= condSetEmpty!10260 (= (_2!9002 (h!21880 mapValue!7700)) ((as const (Array Context!1470 Bool)) false)))))

(assert (=> mapNonEmpty!7698 (= tp!446855 e!986985)))

(declare-fun tp!447014 () Bool)

(declare-fun setElem!10260 () Context!1470)

(declare-fun setNonEmpty!10260 () Bool)

(assert (=> setNonEmpty!10260 (= setRes!10260 (and tp!447014 (inv!21744 setElem!10260) e!986987))))

(declare-fun setRest!10260 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10260 (= (_2!9002 (h!21880 mapValue!7700)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10260 true) setRest!10260))))

(declare-fun b!1541527 () Bool)

(declare-fun tp!447013 () Bool)

(assert (=> b!1541527 (= e!986986 tp!447013)))

(assert (= b!1541526 b!1541527))

(assert (= (and b!1541526 condSetEmpty!10260) setIsEmpty!10260))

(assert (= (and b!1541526 (not condSetEmpty!10260)) setNonEmpty!10260))

(assert (= setNonEmpty!10260 b!1541525))

(assert (= (and mapNonEmpty!7698 ((_ is Cons!16479) mapValue!7700)) b!1541526))

(declare-fun m!1815166 () Bool)

(assert (=> b!1541526 m!1815166))

(declare-fun m!1815168 () Bool)

(assert (=> setNonEmpty!10260 m!1815168))

(declare-fun e!986988 () Bool)

(declare-fun tp!447015 () Bool)

(declare-fun e!986990 () Bool)

(declare-fun tp!447016 () Bool)

(declare-fun setRes!10261 () Bool)

(declare-fun b!1541528 () Bool)

(assert (=> b!1541528 (= e!986988 (and tp!447015 (inv!21744 (_2!8997 (_1!8998 (h!21877 (zeroValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))))) e!986990 tp_is_empty!7047 setRes!10261 tp!447016))))

(declare-fun condSetEmpty!10261 () Bool)

(assert (=> b!1541528 (= condSetEmpty!10261 (= (_2!8998 (h!21877 (zeroValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun b!1541529 () Bool)

(declare-fun e!986989 () Bool)

(declare-fun tp!447019 () Bool)

(assert (=> b!1541529 (= e!986989 tp!447019)))

(assert (=> b!1541339 (= tp!446847 e!986988)))

(declare-fun b!1541530 () Bool)

(declare-fun tp!447017 () Bool)

(assert (=> b!1541530 (= e!986990 tp!447017)))

(declare-fun tp!447018 () Bool)

(declare-fun setNonEmpty!10261 () Bool)

(declare-fun setElem!10261 () Context!1470)

(assert (=> setNonEmpty!10261 (= setRes!10261 (and tp!447018 (inv!21744 setElem!10261) e!986989))))

(declare-fun setRest!10261 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10261 (= (_2!8998 (h!21877 (zeroValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10261 true) setRest!10261))))

(declare-fun setIsEmpty!10261 () Bool)

(assert (=> setIsEmpty!10261 setRes!10261))

(assert (= b!1541528 b!1541530))

(assert (= (and b!1541528 condSetEmpty!10261) setIsEmpty!10261))

(assert (= (and b!1541528 (not condSetEmpty!10261)) setNonEmpty!10261))

(assert (= setNonEmpty!10261 b!1541529))

(assert (= (and b!1541339 ((_ is Cons!16476) (zeroValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))) b!1541528))

(declare-fun m!1815170 () Bool)

(assert (=> b!1541528 m!1815170))

(declare-fun m!1815172 () Bool)

(assert (=> setNonEmpty!10261 m!1815172))

(declare-fun e!986993 () Bool)

(declare-fun tp!447020 () Bool)

(declare-fun setRes!10262 () Bool)

(declare-fun b!1541531 () Bool)

(declare-fun e!986991 () Bool)

(declare-fun tp!447021 () Bool)

(assert (=> b!1541531 (= e!986991 (and tp!447020 (inv!21744 (_2!8997 (_1!8998 (h!21877 (minValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))))) e!986993 tp_is_empty!7047 setRes!10262 tp!447021))))

(declare-fun condSetEmpty!10262 () Bool)

(assert (=> b!1541531 (= condSetEmpty!10262 (= (_2!8998 (h!21877 (minValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun b!1541532 () Bool)

(declare-fun e!986992 () Bool)

(declare-fun tp!447024 () Bool)

(assert (=> b!1541532 (= e!986992 tp!447024)))

(assert (=> b!1541339 (= tp!446853 e!986991)))

(declare-fun b!1541533 () Bool)

(declare-fun tp!447022 () Bool)

(assert (=> b!1541533 (= e!986993 tp!447022)))

(declare-fun setElem!10262 () Context!1470)

(declare-fun setNonEmpty!10262 () Bool)

(declare-fun tp!447023 () Bool)

(assert (=> setNonEmpty!10262 (= setRes!10262 (and tp!447023 (inv!21744 setElem!10262) e!986992))))

(declare-fun setRest!10262 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10262 (= (_2!8998 (h!21877 (minValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10262 true) setRest!10262))))

(declare-fun setIsEmpty!10262 () Bool)

(assert (=> setIsEmpty!10262 setRes!10262))

(assert (= b!1541531 b!1541533))

(assert (= (and b!1541531 condSetEmpty!10262) setIsEmpty!10262))

(assert (= (and b!1541531 (not condSetEmpty!10262)) setNonEmpty!10262))

(assert (= setNonEmpty!10262 b!1541532))

(assert (= (and b!1541339 ((_ is Cons!16476) (minValue!1895 (v!23290 (underlying!3485 (v!23291 (underlying!3486 (cache!1963 cacheDown!708)))))))) b!1541531))

(declare-fun m!1815174 () Bool)

(assert (=> b!1541531 m!1815174))

(declare-fun m!1815176 () Bool)

(assert (=> setNonEmpty!10262 m!1815176))

(declare-fun b!1541548 () Bool)

(declare-fun e!987007 () Bool)

(declare-fun tp!447054 () Bool)

(assert (=> b!1541548 (= e!987007 tp!447054)))

(declare-fun mapIsEmpty!7709 () Bool)

(declare-fun mapRes!7709 () Bool)

(assert (=> mapIsEmpty!7709 mapRes!7709))

(declare-fun b!1541549 () Bool)

(declare-fun e!987010 () Bool)

(declare-fun tp!447050 () Bool)

(assert (=> b!1541549 (= e!987010 tp!447050)))

(declare-fun setNonEmpty!10267 () Bool)

(declare-fun tp!447057 () Bool)

(declare-fun setRes!10268 () Bool)

(declare-fun setElem!10268 () Context!1470)

(assert (=> setNonEmpty!10267 (= setRes!10268 (and tp!447057 (inv!21744 setElem!10268) e!987010))))

(declare-fun mapValue!7709 () List!16544)

(declare-fun setRest!10267 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10267 (= (_2!8998 (h!21877 mapValue!7709)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10268 true) setRest!10267))))

(declare-fun tp!447056 () Bool)

(declare-fun e!987011 () Bool)

(declare-fun mapDefault!7709 () List!16544)

(declare-fun b!1541550 () Bool)

(declare-fun tp!447047 () Bool)

(declare-fun setRes!10267 () Bool)

(assert (=> b!1541550 (= e!987011 (and tp!447047 (inv!21744 (_2!8997 (_1!8998 (h!21877 mapDefault!7709)))) e!987007 tp_is_empty!7047 setRes!10267 tp!447056))))

(declare-fun condSetEmpty!10268 () Bool)

(assert (=> b!1541550 (= condSetEmpty!10268 (= (_2!8998 (h!21877 mapDefault!7709)) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun mapNonEmpty!7709 () Bool)

(declare-fun tp!447048 () Bool)

(declare-fun e!987008 () Bool)

(assert (=> mapNonEmpty!7709 (= mapRes!7709 (and tp!447048 e!987008))))

(declare-fun mapRest!7709 () (Array (_ BitVec 32) List!16544))

(declare-fun mapKey!7709 () (_ BitVec 32))

(assert (=> mapNonEmpty!7709 (= mapRest!7698 (store mapRest!7709 mapKey!7709 mapValue!7709))))

(declare-fun b!1541551 () Bool)

(declare-fun e!987006 () Bool)

(declare-fun tp!447051 () Bool)

(assert (=> b!1541551 (= e!987006 tp!447051)))

(declare-fun tp!447049 () Bool)

(declare-fun setNonEmpty!10268 () Bool)

(declare-fun setElem!10267 () Context!1470)

(assert (=> setNonEmpty!10268 (= setRes!10267 (and tp!447049 (inv!21744 setElem!10267) e!987006))))

(declare-fun setRest!10268 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10268 (= (_2!8998 (h!21877 mapDefault!7709)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10267 true) setRest!10268))))

(declare-fun setIsEmpty!10267 () Bool)

(assert (=> setIsEmpty!10267 setRes!10268))

(declare-fun setIsEmpty!10268 () Bool)

(assert (=> setIsEmpty!10268 setRes!10267))

(declare-fun tp!447053 () Bool)

(declare-fun e!987009 () Bool)

(declare-fun b!1541552 () Bool)

(declare-fun tp!447052 () Bool)

(assert (=> b!1541552 (= e!987008 (and tp!447052 (inv!21744 (_2!8997 (_1!8998 (h!21877 mapValue!7709)))) e!987009 tp_is_empty!7047 setRes!10268 tp!447053))))

(declare-fun condSetEmpty!10267 () Bool)

(assert (=> b!1541552 (= condSetEmpty!10267 (= (_2!8998 (h!21877 mapValue!7709)) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun b!1541553 () Bool)

(declare-fun tp!447055 () Bool)

(assert (=> b!1541553 (= e!987009 tp!447055)))

(declare-fun condMapEmpty!7709 () Bool)

(assert (=> mapNonEmpty!7699 (= condMapEmpty!7709 (= mapRest!7698 ((as const (Array (_ BitVec 32) List!16544)) mapDefault!7709)))))

(assert (=> mapNonEmpty!7699 (= tp!446861 (and e!987011 mapRes!7709))))

(assert (= (and mapNonEmpty!7699 condMapEmpty!7709) mapIsEmpty!7709))

(assert (= (and mapNonEmpty!7699 (not condMapEmpty!7709)) mapNonEmpty!7709))

(assert (= b!1541552 b!1541553))

(assert (= (and b!1541552 condSetEmpty!10267) setIsEmpty!10267))

(assert (= (and b!1541552 (not condSetEmpty!10267)) setNonEmpty!10267))

(assert (= setNonEmpty!10267 b!1541549))

(assert (= (and mapNonEmpty!7709 ((_ is Cons!16476) mapValue!7709)) b!1541552))

(assert (= b!1541550 b!1541548))

(assert (= (and b!1541550 condSetEmpty!10268) setIsEmpty!10268))

(assert (= (and b!1541550 (not condSetEmpty!10268)) setNonEmpty!10268))

(assert (= setNonEmpty!10268 b!1541551))

(assert (= (and mapNonEmpty!7699 ((_ is Cons!16476) mapDefault!7709)) b!1541550))

(declare-fun m!1815178 () Bool)

(assert (=> b!1541550 m!1815178))

(declare-fun m!1815180 () Bool)

(assert (=> setNonEmpty!10268 m!1815180))

(declare-fun m!1815182 () Bool)

(assert (=> setNonEmpty!10267 m!1815182))

(declare-fun m!1815184 () Bool)

(assert (=> b!1541552 m!1815184))

(declare-fun m!1815186 () Bool)

(assert (=> mapNonEmpty!7709 m!1815186))

(declare-fun e!987014 () Bool)

(declare-fun tp!447058 () Bool)

(declare-fun b!1541554 () Bool)

(declare-fun e!987012 () Bool)

(declare-fun tp!447059 () Bool)

(declare-fun setRes!10269 () Bool)

(assert (=> b!1541554 (= e!987012 (and tp!447058 (inv!21744 (_2!8997 (_1!8998 (h!21877 mapValue!7698)))) e!987014 tp_is_empty!7047 setRes!10269 tp!447059))))

(declare-fun condSetEmpty!10269 () Bool)

(assert (=> b!1541554 (= condSetEmpty!10269 (= (_2!8998 (h!21877 mapValue!7698)) ((as const (Array Context!1470 Bool)) false)))))

(declare-fun b!1541555 () Bool)

(declare-fun e!987013 () Bool)

(declare-fun tp!447062 () Bool)

(assert (=> b!1541555 (= e!987013 tp!447062)))

(assert (=> mapNonEmpty!7699 (= tp!446857 e!987012)))

(declare-fun b!1541556 () Bool)

(declare-fun tp!447060 () Bool)

(assert (=> b!1541556 (= e!987014 tp!447060)))

(declare-fun setElem!10269 () Context!1470)

(declare-fun tp!447061 () Bool)

(declare-fun setNonEmpty!10269 () Bool)

(assert (=> setNonEmpty!10269 (= setRes!10269 (and tp!447061 (inv!21744 setElem!10269) e!987013))))

(declare-fun setRest!10269 () (InoxSet Context!1470))

(assert (=> setNonEmpty!10269 (= (_2!8998 (h!21877 mapValue!7698)) ((_ map or) (store ((as const (Array Context!1470 Bool)) false) setElem!10269 true) setRest!10269))))

(declare-fun setIsEmpty!10269 () Bool)

(assert (=> setIsEmpty!10269 setRes!10269))

(assert (= b!1541554 b!1541556))

(assert (= (and b!1541554 condSetEmpty!10269) setIsEmpty!10269))

(assert (= (and b!1541554 (not condSetEmpty!10269)) setNonEmpty!10269))

(assert (= setNonEmpty!10269 b!1541555))

(assert (= (and mapNonEmpty!7699 ((_ is Cons!16476) mapValue!7698)) b!1541554))

(declare-fun m!1815188 () Bool)

(assert (=> b!1541554 m!1815188))

(declare-fun m!1815190 () Bool)

(assert (=> setNonEmpty!10269 m!1815190))

(declare-fun tp!447063 () Bool)

(declare-fun e!987016 () Bool)

(declare-fun tp!447064 () Bool)

(declare-fun b!1541557 () Bool)

(assert (=> b!1541557 (= e!987016 (and (inv!21740 (left!13490 (c!251749 totalInput!496))) tp!447063 (inv!21740 (right!13820 (c!251749 totalInput!496))) tp!447064))))

(declare-fun b!1541559 () Bool)

(declare-fun e!987015 () Bool)

(declare-fun tp!447065 () Bool)

(assert (=> b!1541559 (= e!987015 tp!447065)))

(declare-fun b!1541558 () Bool)

(assert (=> b!1541558 (= e!987016 (and (inv!21745 (xs!8309 (c!251749 totalInput!496))) e!987015))))

(assert (=> b!1541359 (= tp!446849 (and (inv!21740 (c!251749 totalInput!496)) e!987016))))

(assert (= (and b!1541359 ((_ is Node!5509) (c!251749 totalInput!496))) b!1541557))

(assert (= b!1541558 b!1541559))

(assert (= (and b!1541359 ((_ is Leaf!8163) (c!251749 totalInput!496))) b!1541558))

(declare-fun m!1815192 () Bool)

(assert (=> b!1541557 m!1815192))

(declare-fun m!1815194 () Bool)

(assert (=> b!1541557 m!1815194))

(declare-fun m!1815196 () Bool)

(assert (=> b!1541558 m!1815196))

(assert (=> b!1541359 m!1815016))

(declare-fun tp!447067 () Bool)

(declare-fun b!1541560 () Bool)

(declare-fun tp!447066 () Bool)

(declare-fun e!987018 () Bool)

(assert (=> b!1541560 (= e!987018 (and (inv!21740 (left!13490 (c!251749 (totalInput!2386 cacheFurthestNullable!81)))) tp!447066 (inv!21740 (right!13820 (c!251749 (totalInput!2386 cacheFurthestNullable!81)))) tp!447067))))

(declare-fun b!1541562 () Bool)

(declare-fun e!987017 () Bool)

(declare-fun tp!447068 () Bool)

(assert (=> b!1541562 (= e!987017 tp!447068)))

(declare-fun b!1541561 () Bool)

(assert (=> b!1541561 (= e!987018 (and (inv!21745 (xs!8309 (c!251749 (totalInput!2386 cacheFurthestNullable!81)))) e!987017))))

(assert (=> b!1541360 (= tp!446865 (and (inv!21740 (c!251749 (totalInput!2386 cacheFurthestNullable!81))) e!987018))))

(assert (= (and b!1541360 ((_ is Node!5509) (c!251749 (totalInput!2386 cacheFurthestNullable!81)))) b!1541560))

(assert (= b!1541561 b!1541562))

(assert (= (and b!1541360 ((_ is Leaf!8163) (c!251749 (totalInput!2386 cacheFurthestNullable!81)))) b!1541561))

(declare-fun m!1815198 () Bool)

(assert (=> b!1541560 m!1815198))

(declare-fun m!1815200 () Bool)

(assert (=> b!1541560 m!1815200))

(declare-fun m!1815202 () Bool)

(assert (=> b!1541561 m!1815202))

(assert (=> b!1541360 m!1815036))

(check-sat (not b!1541531) (not b!1541551) (not d!458676) (not b!1541377) (not setNonEmpty!10243) (not b!1541448) (not b!1541526) (not b!1541504) (not b!1541472) (not b_next!41071) (not b!1541477) (not b!1541524) (not d!458690) b_and!107247 (not b!1541360) (not b!1541473) (not b!1541438) (not setNonEmpty!10268) (not b!1541482) (not b!1541522) (not setNonEmpty!10267) (not b!1541425) (not d!458672) (not b!1541555) (not b_next!41055) (not b!1541383) (not b!1541521) tp_is_empty!7047 (not b!1541502) (not setNonEmpty!10250) (not b!1541401) (not b!1541560) (not b!1541403) (not b!1541476) (not b_next!41065) (not b!1541380) b_and!107239 (not setNonEmpty!10249) (not b!1541527) (not b!1541550) (not b!1541548) (not b!1541457) (not b!1541437) (not mapNonEmpty!7709) (not b!1541558) (not b!1541475) (not b!1541410) (not b!1541523) (not b!1541529) (not b!1541412) (not b!1541406) (not b_next!41059) (not d!458688) (not b!1541421) (not b!1541424) (not b!1541554) (not setNonEmpty!10262) (not b_next!41057) (not setNonEmpty!10260) (not b!1541532) (not b!1541440) (not b!1541556) (not b_next!41073) (not b!1541459) (not b!1541422) (not b!1541371) (not b!1541409) (not b!1541525) (not b!1541528) (not setNonEmpty!10261) (not b!1541458) (not b!1541503) (not setNonEmpty!10252) (not b!1541562) (not b_next!41061) (not b!1541491) (not b!1541533) (not d!458680) (not d!458648) (not d!458664) (not b!1541481) (not b_next!41067) (not b!1541552) (not b_next!41069) (not d!458660) (not b!1541492) b_and!107243 (not b!1541480) (not b!1541426) (not b!1541479) (not b!1541471) (not b!1541447) (not b!1541347) (not b!1541561) b_and!107229 (not setNonEmpty!10269) (not d!458668) (not b!1541530) b_and!107237 (not b!1541391) b_and!107241 (not setNonEmpty!10236) (not b!1541423) (not setNonEmpty!10242) b_and!107233 (not d!458686) (not mapNonEmpty!7703) (not mapNonEmpty!7706) (not setNonEmpty!10253) b_and!107235 (not b!1541519) (not setNonEmpty!10259) (not b_next!41063) (not b!1541559) (not b!1541549) (not b!1541520) (not b!1541553) (not b!1541474) (not b!1541557) (not setNonEmpty!10258) (not b!1541392) (not b!1541359) (not b!1541439) (not b!1541407) (not setNonEmpty!10251) b_and!107231 b_and!107245 (not b!1541386) (not setNonEmpty!10237) (not d!458652) (not b!1541478) (not setNonEmpty!10246))
(check-sat (not b_next!41071) b_and!107247 (not b_next!41055) (not b_next!41059) (not b_next!41057) (not b_next!41073) (not b_next!41061) (not b_next!41067) b_and!107229 b_and!107233 b_and!107231 b_and!107245 (not b_next!41065) b_and!107239 (not b_next!41069) b_and!107243 b_and!107237 b_and!107241 b_and!107235 (not b_next!41063))
