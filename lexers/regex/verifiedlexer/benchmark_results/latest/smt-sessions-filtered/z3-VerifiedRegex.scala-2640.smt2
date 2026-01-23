; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142838 () Bool)

(assert start!142838)

(declare-fun b!1536752 () Bool)

(declare-fun b_free!39911 () Bool)

(declare-fun b_next!40615 () Bool)

(assert (=> b!1536752 (= b_free!39911 (not b_next!40615))))

(declare-fun tp!443509 () Bool)

(declare-fun b_and!106789 () Bool)

(assert (=> b!1536752 (= tp!443509 b_and!106789)))

(declare-fun b!1536734 () Bool)

(declare-fun b_free!39913 () Bool)

(declare-fun b_next!40617 () Bool)

(assert (=> b!1536734 (= b_free!39913 (not b_next!40617))))

(declare-fun tp!443516 () Bool)

(declare-fun b_and!106791 () Bool)

(assert (=> b!1536734 (= tp!443516 b_and!106791)))

(declare-fun b!1536756 () Bool)

(declare-fun b_free!39915 () Bool)

(declare-fun b_next!40619 () Bool)

(assert (=> b!1536756 (= b_free!39915 (not b_next!40619))))

(declare-fun tp!443503 () Bool)

(declare-fun b_and!106793 () Bool)

(assert (=> b!1536756 (= tp!443503 b_and!106793)))

(declare-fun b!1536723 () Bool)

(declare-fun b_free!39917 () Bool)

(declare-fun b_next!40621 () Bool)

(assert (=> b!1536723 (= b_free!39917 (not b_next!40621))))

(declare-fun tp!443499 () Bool)

(declare-fun b_and!106795 () Bool)

(assert (=> b!1536723 (= tp!443499 b_and!106795)))

(declare-fun b!1536729 () Bool)

(declare-fun b_free!39919 () Bool)

(declare-fun b_next!40623 () Bool)

(assert (=> b!1536729 (= b_free!39919 (not b_next!40623))))

(declare-fun tp!443505 () Bool)

(declare-fun b_and!106797 () Bool)

(assert (=> b!1536729 (= tp!443505 b_and!106797)))

(declare-fun b_free!39921 () Bool)

(declare-fun b_next!40625 () Bool)

(assert (=> b!1536729 (= b_free!39921 (not b_next!40625))))

(declare-fun tp!443519 () Bool)

(declare-fun b_and!106799 () Bool)

(assert (=> b!1536729 (= tp!443519 b_and!106799)))

(declare-fun b!1536727 () Bool)

(declare-fun b_free!39923 () Bool)

(declare-fun b_next!40627 () Bool)

(assert (=> b!1536727 (= b_free!39923 (not b_next!40627))))

(declare-fun tp!443513 () Bool)

(declare-fun b_and!106801 () Bool)

(assert (=> b!1536727 (= tp!443513 b_and!106801)))

(declare-fun b!1536744 () Bool)

(declare-fun b_free!39925 () Bool)

(declare-fun b_next!40629 () Bool)

(assert (=> b!1536744 (= b_free!39925 (not b_next!40629))))

(declare-fun tp!443517 () Bool)

(declare-fun b_and!106803 () Bool)

(assert (=> b!1536744 (= tp!443517 b_and!106803)))

(declare-datatypes ((C!8560 0))(
  ( (C!8561 (val!4852 Int)) )
))
(declare-datatypes ((Regex!4191 0))(
  ( (ElementMatch!4191 (c!251565 C!8560)) (Concat!7149 (regOne!8894 Regex!4191) (regTwo!8894 Regex!4191)) (EmptyExpr!4191) (Star!4191 (reg!4520 Regex!4191)) (EmptyLang!4191) (Union!4191 (regOne!8895 Regex!4191) (regTwo!8895 Regex!4191)) )
))
(declare-datatypes ((List!16370 0))(
  ( (Nil!16302) (Cons!16302 (h!21703 Regex!4191) (t!140576 List!16370)) )
))
(declare-datatypes ((Context!1418 0))(
  ( (Context!1419 (exprs!1209 List!16370)) )
))
(declare-datatypes ((tuple2!15300 0))(
  ( (tuple2!15301 (_1!8754 Context!1418) (_2!8754 C!8560)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15302 0))(
  ( (tuple2!15303 (_1!8755 tuple2!15300) (_2!8755 (InoxSet Context!1418))) )
))
(declare-datatypes ((List!16371 0))(
  ( (Nil!16303) (Cons!16303 (h!21704 tuple2!15302) (t!140577 List!16371)) )
))
(declare-datatypes ((array!5462 0))(
  ( (array!5463 (arr!2430 (Array (_ BitVec 32) List!16371)) (size!13176 (_ BitVec 32))) )
))
(declare-datatypes ((array!5464 0))(
  ( (array!5465 (arr!2431 (Array (_ BitVec 32) (_ BitVec 64))) (size!13177 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3128 0))(
  ( (LongMapFixedSize!3129 (defaultEntry!1924 Int) (mask!4748 (_ BitVec 32)) (extraKeys!1811 (_ BitVec 32)) (zeroValue!1821 List!16371) (minValue!1821 List!16371) (_size!3209 (_ BitVec 32)) (_keys!1858 array!5464) (_values!1843 array!5462) (_vacant!1625 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6141 0))(
  ( (Cell!6142 (v!23109 LongMapFixedSize!3128)) )
))
(declare-datatypes ((MutLongMap!1564 0))(
  ( (LongMap!1564 (underlying!3337 Cell!6141)) (MutLongMapExt!1563 (__x!10340 Int)) )
))
(declare-datatypes ((Cell!6143 0))(
  ( (Cell!6144 (v!23110 MutLongMap!1564)) )
))
(declare-datatypes ((Hashable!1508 0))(
  ( (HashableExt!1507 (__x!10341 Int)) )
))
(declare-datatypes ((MutableMap!1508 0))(
  ( (MutableMapExt!1507 (__x!10342 Int)) (HashMap!1508 (underlying!3338 Cell!6143) (hashF!3427 Hashable!1508) (_size!3210 (_ BitVec 32)) (defaultValue!1668 Int)) )
))
(declare-datatypes ((CacheUp!902 0))(
  ( (CacheUp!903 (cache!1889 MutableMap!1508)) )
))
(declare-fun cacheUp!695 () CacheUp!902)

(declare-fun e!982932 () Bool)

(declare-fun tp!443496 () Bool)

(declare-fun e!982931 () Bool)

(declare-fun tp!443492 () Bool)

(declare-fun array_inv!1749 (array!5464) Bool)

(declare-fun array_inv!1750 (array!5462) Bool)

(assert (=> b!1536723 (= e!982931 (and tp!443499 tp!443492 tp!443496 (array_inv!1749 (_keys!1858 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) (array_inv!1750 (_values!1843 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) e!982932))))

(declare-fun b!1536724 () Bool)

(declare-fun tp!443507 () Bool)

(declare-fun mapRes!7412 () Bool)

(assert (=> b!1536724 (= e!982932 (and tp!443507 mapRes!7412))))

(declare-fun condMapEmpty!7410 () Bool)

(declare-fun mapDefault!7412 () List!16371)

(assert (=> b!1536724 (= condMapEmpty!7410 (= (arr!2430 (_values!1843 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16371)) mapDefault!7412)))))

(declare-fun b!1536725 () Bool)

(declare-fun res!688910 () Bool)

(declare-fun e!982919 () Bool)

(assert (=> b!1536725 (=> (not res!688910) (not e!982919))))

(declare-datatypes ((List!16372 0))(
  ( (Nil!16304) (Cons!16304 (h!21705 (_ BitVec 16)) (t!140578 List!16372)) )
))
(declare-datatypes ((TokenValue!2958 0))(
  ( (FloatLiteralValue!5916 (text!21151 List!16372)) (TokenValueExt!2957 (__x!10343 Int)) (Broken!14790 (value!91375 List!16372)) (Object!3025) (End!2958) (Def!2958) (Underscore!2958) (Match!2958) (Else!2958) (Error!2958) (Case!2958) (If!2958) (Extends!2958) (Abstract!2958) (Class!2958) (Val!2958) (DelimiterValue!5916 (del!3018 List!16372)) (KeywordValue!2964 (value!91376 List!16372)) (CommentValue!5916 (value!91377 List!16372)) (WhitespaceValue!5916 (value!91378 List!16372)) (IndentationValue!2958 (value!91379 List!16372)) (String!19067) (Int32!2958) (Broken!14791 (value!91380 List!16372)) (Boolean!2959) (Unit!25836) (OperatorValue!2961 (op!3018 List!16372)) (IdentifierValue!5916 (value!91381 List!16372)) (IdentifierValue!5917 (value!91382 List!16372)) (WhitespaceValue!5917 (value!91383 List!16372)) (True!5916) (False!5916) (Broken!14792 (value!91384 List!16372)) (Broken!14793 (value!91385 List!16372)) (True!5917) (RightBrace!2958) (RightBracket!2958) (Colon!2958) (Null!2958) (Comma!2958) (LeftBracket!2958) (False!5917) (LeftBrace!2958) (ImaginaryLiteralValue!2958 (text!21152 List!16372)) (StringLiteralValue!8874 (value!91386 List!16372)) (EOFValue!2958 (value!91387 List!16372)) (IdentValue!2958 (value!91388 List!16372)) (DelimiterValue!5917 (value!91389 List!16372)) (DedentValue!2958 (value!91390 List!16372)) (NewLineValue!2958 (value!91391 List!16372)) (IntegerValue!8874 (value!91392 (_ BitVec 32)) (text!21153 List!16372)) (IntegerValue!8875 (value!91393 Int) (text!21154 List!16372)) (Times!2958) (Or!2958) (Equal!2958) (Minus!2958) (Broken!14794 (value!91394 List!16372)) (And!2958) (Div!2958) (LessEqual!2958) (Mod!2958) (Concat!7150) (Not!2958) (Plus!2958) (SpaceValue!2958 (value!91395 List!16372)) (IntegerValue!8876 (value!91396 Int) (text!21155 List!16372)) (StringLiteralValue!8875 (text!21156 List!16372)) (FloatLiteralValue!5917 (text!21157 List!16372)) (BytesLiteralValue!2958 (value!91397 List!16372)) (CommentValue!5917 (value!91398 List!16372)) (StringLiteralValue!8876 (value!91399 List!16372)) (ErrorTokenValue!2958 (msg!3019 List!16372)) )
))
(declare-datatypes ((List!16373 0))(
  ( (Nil!16305) (Cons!16305 (h!21706 C!8560) (t!140579 List!16373)) )
))
(declare-datatypes ((IArray!10973 0))(
  ( (IArray!10974 (innerList!5544 List!16373)) )
))
(declare-datatypes ((Conc!5484 0))(
  ( (Node!5484 (left!13440 Conc!5484) (right!13770 Conc!5484) (csize!11198 Int) (cheight!5695 Int)) (Leaf!8125 (xs!8284 IArray!10973) (csize!11199 Int)) (Empty!5484) )
))
(declare-datatypes ((BalanceConc!10910 0))(
  ( (BalanceConc!10911 (c!251566 Conc!5484)) )
))
(declare-datatypes ((String!19068 0))(
  ( (String!19069 (value!91400 String)) )
))
(declare-datatypes ((TokenValueInjection!5576 0))(
  ( (TokenValueInjection!5577 (toValue!4229 Int) (toChars!4088 Int)) )
))
(declare-datatypes ((Rule!5536 0))(
  ( (Rule!5537 (regex!2868 Regex!4191) (tag!3132 String!19068) (isSeparator!2868 Bool) (transformation!2868 TokenValueInjection!5576)) )
))
(declare-datatypes ((List!16374 0))(
  ( (Nil!16306) (Cons!16306 (h!21707 Rule!5536) (t!140580 List!16374)) )
))
(declare-fun rulesArg!359 () List!16374)

(declare-fun isEmpty!10001 (List!16374) Bool)

(assert (=> b!1536725 (= res!688910 (not (isEmpty!10001 rulesArg!359)))))

(declare-fun b!1536726 () Bool)

(declare-fun res!688909 () Bool)

(declare-fun e!982910 () Bool)

(assert (=> b!1536726 (=> (not res!688909) (not e!982910))))

(declare-datatypes ((tuple3!1478 0))(
  ( (tuple3!1479 (_1!8756 (InoxSet Context!1418)) (_2!8756 Int) (_3!1104 Int)) )
))
(declare-datatypes ((tuple2!15304 0))(
  ( (tuple2!15305 (_1!8757 tuple3!1478) (_2!8757 Int)) )
))
(declare-datatypes ((List!16375 0))(
  ( (Nil!16307) (Cons!16307 (h!21708 tuple2!15304) (t!140581 List!16375)) )
))
(declare-datatypes ((array!5466 0))(
  ( (array!5467 (arr!2432 (Array (_ BitVec 32) List!16375)) (size!13178 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3130 0))(
  ( (LongMapFixedSize!3131 (defaultEntry!1925 Int) (mask!4749 (_ BitVec 32)) (extraKeys!1812 (_ BitVec 32)) (zeroValue!1822 List!16375) (minValue!1822 List!16375) (_size!3211 (_ BitVec 32)) (_keys!1859 array!5464) (_values!1844 array!5466) (_vacant!1626 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1509 0))(
  ( (HashableExt!1508 (__x!10344 Int)) )
))
(declare-datatypes ((Cell!6145 0))(
  ( (Cell!6146 (v!23111 LongMapFixedSize!3130)) )
))
(declare-datatypes ((MutLongMap!1565 0))(
  ( (LongMap!1565 (underlying!3339 Cell!6145)) (MutLongMapExt!1564 (__x!10345 Int)) )
))
(declare-datatypes ((Cell!6147 0))(
  ( (Cell!6148 (v!23112 MutLongMap!1565)) )
))
(declare-datatypes ((MutableMap!1509 0))(
  ( (MutableMapExt!1508 (__x!10346 Int)) (HashMap!1509 (underlying!3340 Cell!6147) (hashF!3428 Hashable!1509) (_size!3212 (_ BitVec 32)) (defaultValue!1669 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!332 0))(
  ( (CacheFurthestNullable!333 (cache!1890 MutableMap!1509) (totalInput!2354 BalanceConc!10910)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!332)

(declare-fun valid!1274 (CacheFurthestNullable!332) Bool)

(assert (=> b!1536726 (= res!688909 (valid!1274 cacheFurthestNullable!81))))

(declare-fun tp!443506 () Bool)

(declare-fun tp!443494 () Bool)

(declare-datatypes ((tuple3!1480 0))(
  ( (tuple3!1481 (_1!8758 Regex!4191) (_2!8758 Context!1418) (_3!1105 C!8560)) )
))
(declare-datatypes ((tuple2!15306 0))(
  ( (tuple2!15307 (_1!8759 tuple3!1480) (_2!8759 (InoxSet Context!1418))) )
))
(declare-datatypes ((List!16376 0))(
  ( (Nil!16308) (Cons!16308 (h!21709 tuple2!15306) (t!140582 List!16376)) )
))
(declare-datatypes ((array!5468 0))(
  ( (array!5469 (arr!2433 (Array (_ BitVec 32) List!16376)) (size!13179 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3132 0))(
  ( (LongMapFixedSize!3133 (defaultEntry!1926 Int) (mask!4750 (_ BitVec 32)) (extraKeys!1813 (_ BitVec 32)) (zeroValue!1823 List!16376) (minValue!1823 List!16376) (_size!3213 (_ BitVec 32)) (_keys!1860 array!5464) (_values!1845 array!5468) (_vacant!1627 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6149 0))(
  ( (Cell!6150 (v!23113 LongMapFixedSize!3132)) )
))
(declare-datatypes ((MutLongMap!1566 0))(
  ( (LongMap!1566 (underlying!3341 Cell!6149)) (MutLongMapExt!1565 (__x!10347 Int)) )
))
(declare-datatypes ((Cell!6151 0))(
  ( (Cell!6152 (v!23114 MutLongMap!1566)) )
))
(declare-datatypes ((Hashable!1510 0))(
  ( (HashableExt!1509 (__x!10348 Int)) )
))
(declare-datatypes ((MutableMap!1510 0))(
  ( (MutableMapExt!1509 (__x!10349 Int)) (HashMap!1510 (underlying!3342 Cell!6151) (hashF!3429 Hashable!1510) (_size!3214 (_ BitVec 32)) (defaultValue!1670 Int)) )
))
(declare-datatypes ((CacheDown!910 0))(
  ( (CacheDown!911 (cache!1891 MutableMap!1510)) )
))
(declare-fun cacheDown!708 () CacheDown!910)

(declare-fun e!982914 () Bool)

(declare-fun e!982923 () Bool)

(declare-fun array_inv!1751 (array!5468) Bool)

(assert (=> b!1536727 (= e!982923 (and tp!443513 tp!443494 tp!443506 (array_inv!1749 (_keys!1860 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) (array_inv!1751 (_values!1845 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) e!982914))))

(declare-fun b!1536728 () Bool)

(declare-fun res!688915 () Bool)

(assert (=> b!1536728 (=> (not res!688915) (not e!982910))))

(declare-fun valid!1275 (CacheUp!902) Bool)

(assert (=> b!1536728 (= res!688915 (valid!1275 cacheUp!695))))

(declare-fun mapNonEmpty!7410 () Bool)

(declare-fun mapRes!7410 () Bool)

(declare-fun tp!443502 () Bool)

(declare-fun tp!443515 () Bool)

(assert (=> mapNonEmpty!7410 (= mapRes!7410 (and tp!443502 tp!443515))))

(declare-fun mapValue!7410 () List!16375)

(declare-fun mapKey!7411 () (_ BitVec 32))

(declare-fun mapRest!7411 () (Array (_ BitVec 32) List!16375))

(assert (=> mapNonEmpty!7410 (= (arr!2432 (_values!1844 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) (store mapRest!7411 mapKey!7411 mapValue!7410))))

(declare-fun e!982929 () Bool)

(assert (=> b!1536729 (= e!982929 (and tp!443505 tp!443519))))

(declare-fun b!1536730 () Bool)

(declare-fun e!982907 () Bool)

(declare-fun e!982915 () Bool)

(assert (=> b!1536730 (= e!982907 e!982915)))

(declare-fun tp!443501 () Bool)

(declare-fun b!1536731 () Bool)

(declare-fun e!982933 () Bool)

(declare-fun inv!21562 (String!19068) Bool)

(declare-fun inv!21563 (TokenValueInjection!5576) Bool)

(assert (=> b!1536731 (= e!982933 (and tp!443501 (inv!21562 (tag!3132 (h!21707 rulesArg!359))) (inv!21563 (transformation!2868 (h!21707 rulesArg!359))) e!982929))))

(declare-fun b!1536732 () Bool)

(declare-fun e!982912 () Bool)

(declare-fun e!982925 () Bool)

(assert (=> b!1536732 (= e!982912 e!982925)))

(declare-fun b!1536733 () Bool)

(declare-fun e!982934 () Bool)

(declare-fun e!982927 () Bool)

(assert (=> b!1536733 (= e!982934 e!982927)))

(declare-fun e!982917 () Bool)

(declare-fun e!982909 () Bool)

(assert (=> b!1536734 (= e!982917 (and e!982909 tp!443516))))

(declare-fun b!1536735 () Bool)

(declare-fun e!982930 () Bool)

(assert (=> b!1536735 (= e!982930 e!982931)))

(declare-fun res!688914 () Bool)

(assert (=> start!142838 (=> (not res!688914) (not e!982919))))

(declare-datatypes ((LexerInterface!2519 0))(
  ( (LexerInterfaceExt!2516 (__x!10350 Int)) (Lexer!2517) )
))
(declare-fun thiss!15733 () LexerInterface!2519)

(get-info :version)

(assert (=> start!142838 (= res!688914 ((_ is Lexer!2517) thiss!15733))))

(assert (=> start!142838 e!982919))

(declare-fun e!982935 () Bool)

(declare-fun inv!21564 (CacheUp!902) Bool)

(assert (=> start!142838 (and (inv!21564 cacheUp!695) e!982935)))

(declare-fun input!1460 () BalanceConc!10910)

(declare-fun e!982920 () Bool)

(declare-fun inv!21565 (BalanceConc!10910) Bool)

(assert (=> start!142838 (and (inv!21565 input!1460) e!982920)))

(declare-fun inv!21566 (CacheDown!910) Bool)

(assert (=> start!142838 (and (inv!21566 cacheDown!708) e!982934)))

(assert (=> start!142838 true))

(declare-fun totalInput!496 () BalanceConc!10910)

(declare-fun e!982921 () Bool)

(assert (=> start!142838 (and (inv!21565 totalInput!496) e!982921)))

(declare-fun e!982916 () Bool)

(assert (=> start!142838 e!982916))

(declare-fun e!982936 () Bool)

(declare-fun inv!21567 (CacheFurthestNullable!332) Bool)

(assert (=> start!142838 (and (inv!21567 cacheFurthestNullable!81) e!982936)))

(declare-fun b!1536736 () Bool)

(declare-fun tp!443512 () Bool)

(declare-fun mapRes!7411 () Bool)

(assert (=> b!1536736 (= e!982914 (and tp!443512 mapRes!7411))))

(declare-fun condMapEmpty!7412 () Bool)

(declare-fun mapDefault!7410 () List!16376)

(assert (=> b!1536736 (= condMapEmpty!7412 (= (arr!2433 (_values!1845 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16376)) mapDefault!7410)))))

(declare-fun b!1536737 () Bool)

(declare-fun tp!443511 () Bool)

(declare-fun inv!21568 (Conc!5484) Bool)

(assert (=> b!1536737 (= e!982921 (and (inv!21568 (c!251566 totalInput!496)) tp!443511))))

(declare-fun b!1536738 () Bool)

(declare-fun e!982908 () Bool)

(assert (=> b!1536738 (= e!982935 e!982908)))

(declare-fun b!1536739 () Bool)

(declare-fun tp!443510 () Bool)

(assert (=> b!1536739 (= e!982916 (and e!982933 tp!443510))))

(declare-fun b!1536740 () Bool)

(declare-fun e!982937 () Bool)

(assert (=> b!1536740 (= e!982936 (and e!982917 (inv!21565 (totalInput!2354 cacheFurthestNullable!81)) e!982937))))

(declare-fun b!1536741 () Bool)

(assert (=> b!1536741 (= e!982925 e!982923)))

(declare-fun b!1536742 () Bool)

(declare-fun res!688911 () Bool)

(assert (=> b!1536742 (=> (not res!688911) (not e!982910))))

(assert (=> b!1536742 (= res!688911 (= (totalInput!2354 cacheFurthestNullable!81) totalInput!496))))

(declare-fun mapIsEmpty!7410 () Bool)

(assert (=> mapIsEmpty!7410 mapRes!7411))

(declare-fun b!1536743 () Bool)

(declare-fun e!982928 () Bool)

(assert (=> b!1536743 (= e!982910 (not e!982928))))

(declare-fun res!688908 () Bool)

(assert (=> b!1536743 (=> res!688908 e!982928)))

(assert (=> b!1536743 (= res!688908 (or (and ((_ is Cons!16306) rulesArg!359) ((_ is Nil!16306) (t!140580 rulesArg!359))) (not ((_ is Cons!16306) rulesArg!359))))))

(declare-fun lt!533357 () List!16373)

(declare-fun isPrefix!1234 (List!16373 List!16373) Bool)

(assert (=> b!1536743 (isPrefix!1234 lt!533357 lt!533357)))

(declare-datatypes ((Unit!25837 0))(
  ( (Unit!25838) )
))
(declare-fun lt!533356 () Unit!25837)

(declare-fun lemmaIsPrefixRefl!864 (List!16373 List!16373) Unit!25837)

(assert (=> b!1536743 (= lt!533356 (lemmaIsPrefixRefl!864 lt!533357 lt!533357))))

(declare-fun e!982911 () Bool)

(assert (=> b!1536744 (= e!982927 (and e!982911 tp!443517))))

(declare-fun b!1536745 () Bool)

(declare-fun rulesValidInductive!874 (LexerInterface!2519 List!16374) Bool)

(assert (=> b!1536745 (= e!982928 (rulesValidInductive!874 thiss!15733 (t!140580 rulesArg!359)))))

(declare-datatypes ((Token!5380 0))(
  ( (Token!5381 (value!91401 TokenValue!2958) (rule!4670 Rule!5536) (size!13180 Int) (originalCharacters!3721 List!16373)) )
))
(declare-datatypes ((tuple2!15308 0))(
  ( (tuple2!15309 (_1!8760 Token!5380) (_2!8760 BalanceConc!10910)) )
))
(declare-datatypes ((Option!2952 0))(
  ( (None!2951) (Some!2951 (v!23115 tuple2!15308)) )
))
(declare-datatypes ((tuple4!730 0))(
  ( (tuple4!731 (_1!8761 Option!2952) (_2!8761 CacheUp!902) (_3!1106 CacheDown!910) (_4!365 CacheFurthestNullable!332)) )
))
(declare-fun lt!533359 () tuple4!730)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!20 (LexerInterface!2519 Rule!5536 BalanceConc!10910 BalanceConc!10910 CacheUp!902 CacheDown!910 CacheFurthestNullable!332) tuple4!730)

(assert (=> b!1536745 (= lt!533359 (maxPrefixOneRuleZipperSequenceV3Mem!20 thiss!15733 (h!21707 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1536746 () Bool)

(declare-fun e!982904 () Bool)

(assert (=> b!1536746 (= e!982915 e!982904)))

(declare-fun b!1536747 () Bool)

(declare-fun lt!533360 () MutLongMap!1566)

(assert (=> b!1536747 (= e!982911 (and e!982912 ((_ is LongMap!1566) lt!533360)))))

(assert (=> b!1536747 (= lt!533360 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))

(declare-fun mapNonEmpty!7411 () Bool)

(declare-fun tp!443495 () Bool)

(declare-fun tp!443504 () Bool)

(assert (=> mapNonEmpty!7411 (= mapRes!7411 (and tp!443495 tp!443504))))

(declare-fun mapValue!7411 () List!16376)

(declare-fun mapRest!7410 () (Array (_ BitVec 32) List!16376))

(declare-fun mapKey!7410 () (_ BitVec 32))

(assert (=> mapNonEmpty!7411 (= (arr!2433 (_values!1845 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) (store mapRest!7410 mapKey!7410 mapValue!7411))))

(declare-fun b!1536748 () Bool)

(declare-fun e!982913 () Bool)

(assert (=> b!1536748 (= e!982913 e!982930)))

(declare-fun b!1536749 () Bool)

(declare-fun res!688913 () Bool)

(assert (=> b!1536749 (=> (not res!688913) (not e!982910))))

(declare-fun valid!1276 (CacheDown!910) Bool)

(assert (=> b!1536749 (= res!688913 (valid!1276 cacheDown!708))))

(declare-fun b!1536750 () Bool)

(declare-fun tp!443498 () Bool)

(assert (=> b!1536750 (= e!982937 (and (inv!21568 (c!251566 (totalInput!2354 cacheFurthestNullable!81))) tp!443498))))

(declare-fun mapIsEmpty!7411 () Bool)

(assert (=> mapIsEmpty!7411 mapRes!7410))

(declare-fun mapNonEmpty!7412 () Bool)

(declare-fun tp!443514 () Bool)

(declare-fun tp!443497 () Bool)

(assert (=> mapNonEmpty!7412 (= mapRes!7412 (and tp!443514 tp!443497))))

(declare-fun mapValue!7412 () List!16371)

(declare-fun mapRest!7412 () (Array (_ BitVec 32) List!16371))

(declare-fun mapKey!7412 () (_ BitVec 32))

(assert (=> mapNonEmpty!7412 (= (arr!2430 (_values!1843 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) (store mapRest!7412 mapKey!7412 mapValue!7412))))

(declare-fun b!1536751 () Bool)

(assert (=> b!1536751 (= e!982919 e!982910)))

(declare-fun res!688916 () Bool)

(assert (=> b!1536751 (=> (not res!688916) (not e!982910))))

(declare-fun isSuffix!320 (List!16373 List!16373) Bool)

(declare-fun list!6412 (BalanceConc!10910) List!16373)

(assert (=> b!1536751 (= res!688916 (isSuffix!320 lt!533357 (list!6412 totalInput!496)))))

(assert (=> b!1536751 (= lt!533357 (list!6412 input!1460))))

(declare-fun e!982905 () Bool)

(assert (=> b!1536752 (= e!982908 (and e!982905 tp!443509))))

(declare-fun b!1536753 () Bool)

(declare-fun lt!533355 () MutLongMap!1565)

(assert (=> b!1536753 (= e!982909 (and e!982907 ((_ is LongMap!1565) lt!533355)))))

(assert (=> b!1536753 (= lt!533355 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))

(declare-fun b!1536754 () Bool)

(declare-fun res!688912 () Bool)

(assert (=> b!1536754 (=> (not res!688912) (not e!982919))))

(assert (=> b!1536754 (= res!688912 (rulesValidInductive!874 thiss!15733 rulesArg!359))))

(declare-fun b!1536755 () Bool)

(declare-fun e!982918 () Bool)

(declare-fun tp!443493 () Bool)

(assert (=> b!1536755 (= e!982918 (and tp!443493 mapRes!7410))))

(declare-fun condMapEmpty!7411 () Bool)

(declare-fun mapDefault!7411 () List!16375)

(assert (=> b!1536755 (= condMapEmpty!7411 (= (arr!2432 (_values!1844 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16375)) mapDefault!7411)))))

(declare-fun tp!443518 () Bool)

(declare-fun tp!443508 () Bool)

(declare-fun array_inv!1752 (array!5466) Bool)

(assert (=> b!1536756 (= e!982904 (and tp!443503 tp!443518 tp!443508 (array_inv!1749 (_keys!1859 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) (array_inv!1752 (_values!1844 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) e!982918))))

(declare-fun mapIsEmpty!7412 () Bool)

(assert (=> mapIsEmpty!7412 mapRes!7412))

(declare-fun b!1536757 () Bool)

(declare-fun lt!533358 () MutLongMap!1564)

(assert (=> b!1536757 (= e!982905 (and e!982913 ((_ is LongMap!1564) lt!533358)))))

(assert (=> b!1536757 (= lt!533358 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))

(declare-fun b!1536758 () Bool)

(declare-fun tp!443500 () Bool)

(assert (=> b!1536758 (= e!982920 (and (inv!21568 (c!251566 input!1460)) tp!443500))))

(assert (= (and start!142838 res!688914) b!1536754))

(assert (= (and b!1536754 res!688912) b!1536725))

(assert (= (and b!1536725 res!688910) b!1536751))

(assert (= (and b!1536751 res!688916) b!1536728))

(assert (= (and b!1536728 res!688915) b!1536749))

(assert (= (and b!1536749 res!688913) b!1536726))

(assert (= (and b!1536726 res!688909) b!1536742))

(assert (= (and b!1536742 res!688911) b!1536743))

(assert (= (and b!1536743 (not res!688908)) b!1536745))

(assert (= (and b!1536724 condMapEmpty!7410) mapIsEmpty!7412))

(assert (= (and b!1536724 (not condMapEmpty!7410)) mapNonEmpty!7412))

(assert (= b!1536723 b!1536724))

(assert (= b!1536735 b!1536723))

(assert (= b!1536748 b!1536735))

(assert (= (and b!1536757 ((_ is LongMap!1564) (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))) b!1536748))

(assert (= b!1536752 b!1536757))

(assert (= (and b!1536738 ((_ is HashMap!1508) (cache!1889 cacheUp!695))) b!1536752))

(assert (= start!142838 b!1536738))

(assert (= start!142838 b!1536758))

(assert (= (and b!1536736 condMapEmpty!7412) mapIsEmpty!7410))

(assert (= (and b!1536736 (not condMapEmpty!7412)) mapNonEmpty!7411))

(assert (= b!1536727 b!1536736))

(assert (= b!1536741 b!1536727))

(assert (= b!1536732 b!1536741))

(assert (= (and b!1536747 ((_ is LongMap!1566) (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))) b!1536732))

(assert (= b!1536744 b!1536747))

(assert (= (and b!1536733 ((_ is HashMap!1510) (cache!1891 cacheDown!708))) b!1536744))

(assert (= start!142838 b!1536733))

(assert (= start!142838 b!1536737))

(assert (= b!1536731 b!1536729))

(assert (= b!1536739 b!1536731))

(assert (= (and start!142838 ((_ is Cons!16306) rulesArg!359)) b!1536739))

(assert (= (and b!1536755 condMapEmpty!7411) mapIsEmpty!7411))

(assert (= (and b!1536755 (not condMapEmpty!7411)) mapNonEmpty!7410))

(assert (= b!1536756 b!1536755))

(assert (= b!1536746 b!1536756))

(assert (= b!1536730 b!1536746))

(assert (= (and b!1536753 ((_ is LongMap!1565) (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))) b!1536730))

(assert (= b!1536734 b!1536753))

(assert (= (and b!1536740 ((_ is HashMap!1509) (cache!1890 cacheFurthestNullable!81))) b!1536734))

(assert (= b!1536740 b!1536750))

(assert (= start!142838 b!1536740))

(declare-fun m!1811858 () Bool)

(assert (=> b!1536726 m!1811858))

(declare-fun m!1811860 () Bool)

(assert (=> b!1536758 m!1811860))

(declare-fun m!1811862 () Bool)

(assert (=> b!1536723 m!1811862))

(declare-fun m!1811864 () Bool)

(assert (=> b!1536723 m!1811864))

(declare-fun m!1811866 () Bool)

(assert (=> start!142838 m!1811866))

(declare-fun m!1811868 () Bool)

(assert (=> start!142838 m!1811868))

(declare-fun m!1811870 () Bool)

(assert (=> start!142838 m!1811870))

(declare-fun m!1811872 () Bool)

(assert (=> start!142838 m!1811872))

(declare-fun m!1811874 () Bool)

(assert (=> start!142838 m!1811874))

(declare-fun m!1811876 () Bool)

(assert (=> mapNonEmpty!7412 m!1811876))

(declare-fun m!1811878 () Bool)

(assert (=> b!1536754 m!1811878))

(declare-fun m!1811880 () Bool)

(assert (=> b!1536756 m!1811880))

(declare-fun m!1811882 () Bool)

(assert (=> b!1536756 m!1811882))

(declare-fun m!1811884 () Bool)

(assert (=> mapNonEmpty!7411 m!1811884))

(declare-fun m!1811886 () Bool)

(assert (=> b!1536745 m!1811886))

(declare-fun m!1811888 () Bool)

(assert (=> b!1536745 m!1811888))

(declare-fun m!1811890 () Bool)

(assert (=> b!1536725 m!1811890))

(declare-fun m!1811892 () Bool)

(assert (=> b!1536749 m!1811892))

(declare-fun m!1811894 () Bool)

(assert (=> b!1536740 m!1811894))

(declare-fun m!1811896 () Bool)

(assert (=> b!1536750 m!1811896))

(declare-fun m!1811898 () Bool)

(assert (=> b!1536731 m!1811898))

(declare-fun m!1811900 () Bool)

(assert (=> b!1536731 m!1811900))

(declare-fun m!1811902 () Bool)

(assert (=> b!1536743 m!1811902))

(declare-fun m!1811904 () Bool)

(assert (=> b!1536743 m!1811904))

(declare-fun m!1811906 () Bool)

(assert (=> mapNonEmpty!7410 m!1811906))

(declare-fun m!1811908 () Bool)

(assert (=> b!1536728 m!1811908))

(declare-fun m!1811910 () Bool)

(assert (=> b!1536751 m!1811910))

(assert (=> b!1536751 m!1811910))

(declare-fun m!1811912 () Bool)

(assert (=> b!1536751 m!1811912))

(declare-fun m!1811914 () Bool)

(assert (=> b!1536751 m!1811914))

(declare-fun m!1811916 () Bool)

(assert (=> b!1536727 m!1811916))

(declare-fun m!1811918 () Bool)

(assert (=> b!1536727 m!1811918))

(declare-fun m!1811920 () Bool)

(assert (=> b!1536737 m!1811920))

(check-sat b_and!106791 (not b!1536725) b_and!106797 (not b!1536739) (not b!1536727) (not b!1536755) (not b!1536743) b_and!106789 (not b_next!40615) (not mapNonEmpty!7410) (not mapNonEmpty!7412) (not b!1536754) (not b!1536750) b_and!106801 (not start!142838) (not b!1536756) b_and!106793 (not b!1536740) (not b!1536749) b_and!106799 (not b_next!40625) (not b_next!40623) (not b!1536737) (not b!1536724) (not b!1536726) (not b!1536745) (not b!1536758) b_and!106795 (not b_next!40621) (not mapNonEmpty!7411) (not b!1536751) b_and!106803 (not b!1536728) (not b_next!40617) (not b!1536736) (not b_next!40627) (not b_next!40619) (not b_next!40629) (not b!1536731) (not b!1536723))
(check-sat b_and!106801 b_and!106791 b_and!106793 b_and!106797 b_and!106789 (not b_next!40615) b_and!106803 (not b_next!40617) (not b_next!40629) b_and!106799 (not b_next!40625) (not b_next!40623) b_and!106795 (not b_next!40621) (not b_next!40627) (not b_next!40619))
(get-model)

(declare-fun d!458231 () Bool)

(declare-fun res!688923 () Bool)

(declare-fun e!982940 () Bool)

(assert (=> d!458231 (=> (not res!688923) (not e!982940))))

(assert (=> d!458231 (= res!688923 ((_ is HashMap!1510) (cache!1891 cacheDown!708)))))

(assert (=> d!458231 (= (inv!21566 cacheDown!708) e!982940)))

(declare-fun b!1536761 () Bool)

(declare-fun validCacheMapDown!145 (MutableMap!1510) Bool)

(assert (=> b!1536761 (= e!982940 (validCacheMapDown!145 (cache!1891 cacheDown!708)))))

(assert (= (and d!458231 res!688923) b!1536761))

(declare-fun m!1811922 () Bool)

(assert (=> b!1536761 m!1811922))

(assert (=> start!142838 d!458231))

(declare-fun d!458233 () Bool)

(declare-fun isBalanced!1627 (Conc!5484) Bool)

(assert (=> d!458233 (= (inv!21565 input!1460) (isBalanced!1627 (c!251566 input!1460)))))

(declare-fun bs!382738 () Bool)

(assert (= bs!382738 d!458233))

(declare-fun m!1811924 () Bool)

(assert (=> bs!382738 m!1811924))

(assert (=> start!142838 d!458233))

(declare-fun d!458235 () Bool)

(declare-fun res!688926 () Bool)

(declare-fun e!982943 () Bool)

(assert (=> d!458235 (=> (not res!688926) (not e!982943))))

(assert (=> d!458235 (= res!688926 ((_ is HashMap!1508) (cache!1889 cacheUp!695)))))

(assert (=> d!458235 (= (inv!21564 cacheUp!695) e!982943)))

(declare-fun b!1536764 () Bool)

(declare-fun validCacheMapUp!145 (MutableMap!1508) Bool)

(assert (=> b!1536764 (= e!982943 (validCacheMapUp!145 (cache!1889 cacheUp!695)))))

(assert (= (and d!458235 res!688926) b!1536764))

(declare-fun m!1811926 () Bool)

(assert (=> b!1536764 m!1811926))

(assert (=> start!142838 d!458235))

(declare-fun d!458237 () Bool)

(assert (=> d!458237 (= (inv!21565 totalInput!496) (isBalanced!1627 (c!251566 totalInput!496)))))

(declare-fun bs!382739 () Bool)

(assert (= bs!382739 d!458237))

(declare-fun m!1811928 () Bool)

(assert (=> bs!382739 m!1811928))

(assert (=> start!142838 d!458237))

(declare-fun d!458239 () Bool)

(declare-fun res!688929 () Bool)

(declare-fun e!982946 () Bool)

(assert (=> d!458239 (=> (not res!688929) (not e!982946))))

(assert (=> d!458239 (= res!688929 ((_ is HashMap!1509) (cache!1890 cacheFurthestNullable!81)))))

(assert (=> d!458239 (= (inv!21567 cacheFurthestNullable!81) e!982946)))

(declare-fun b!1536767 () Bool)

(declare-fun validCacheMapFurthestNullable!58 (MutableMap!1509 BalanceConc!10910) Bool)

(assert (=> b!1536767 (= e!982946 (validCacheMapFurthestNullable!58 (cache!1890 cacheFurthestNullable!81) (totalInput!2354 cacheFurthestNullable!81)))))

(assert (= (and d!458239 res!688929) b!1536767))

(declare-fun m!1811930 () Bool)

(assert (=> b!1536767 m!1811930))

(assert (=> start!142838 d!458239))

(declare-fun d!458241 () Bool)

(assert (=> d!458241 (= (valid!1274 cacheFurthestNullable!81) (validCacheMapFurthestNullable!58 (cache!1890 cacheFurthestNullable!81) (totalInput!2354 cacheFurthestNullable!81)))))

(declare-fun bs!382740 () Bool)

(assert (= bs!382740 d!458241))

(assert (=> bs!382740 m!1811930))

(assert (=> b!1536726 d!458241))

(declare-fun d!458243 () Bool)

(assert (=> d!458243 true))

(declare-fun lt!533363 () Bool)

(declare-fun lambda!65227 () Int)

(declare-fun forall!3900 (List!16374 Int) Bool)

(assert (=> d!458243 (= lt!533363 (forall!3900 (t!140580 rulesArg!359) lambda!65227))))

(declare-fun e!982952 () Bool)

(assert (=> d!458243 (= lt!533363 e!982952)))

(declare-fun res!688934 () Bool)

(assert (=> d!458243 (=> res!688934 e!982952)))

(assert (=> d!458243 (= res!688934 (not ((_ is Cons!16306) (t!140580 rulesArg!359))))))

(assert (=> d!458243 (= (rulesValidInductive!874 thiss!15733 (t!140580 rulesArg!359)) lt!533363)))

(declare-fun b!1536772 () Bool)

(declare-fun e!982951 () Bool)

(assert (=> b!1536772 (= e!982952 e!982951)))

(declare-fun res!688935 () Bool)

(assert (=> b!1536772 (=> (not res!688935) (not e!982951))))

(declare-fun ruleValid!645 (LexerInterface!2519 Rule!5536) Bool)

(assert (=> b!1536772 (= res!688935 (ruleValid!645 thiss!15733 (h!21707 (t!140580 rulesArg!359))))))

(declare-fun b!1536773 () Bool)

(assert (=> b!1536773 (= e!982951 (rulesValidInductive!874 thiss!15733 (t!140580 (t!140580 rulesArg!359))))))

(assert (= (and d!458243 (not res!688934)) b!1536772))

(assert (= (and b!1536772 res!688935) b!1536773))

(declare-fun m!1811932 () Bool)

(assert (=> d!458243 m!1811932))

(declare-fun m!1811934 () Bool)

(assert (=> b!1536772 m!1811934))

(declare-fun m!1811936 () Bool)

(assert (=> b!1536773 m!1811936))

(assert (=> b!1536745 d!458243))

(declare-fun b!1536813 () Bool)

(declare-fun e!982973 () Bool)

(assert (=> b!1536813 (= e!982973 true)))

(declare-fun b!1536812 () Bool)

(declare-fun e!982972 () Bool)

(assert (=> b!1536812 (= e!982972 e!982973)))

(declare-fun b!1536797 () Bool)

(assert (=> b!1536797 e!982972))

(assert (= b!1536812 b!1536813))

(assert (= b!1536797 b!1536812))

(declare-fun order!9589 () Int)

(declare-fun lambda!65232 () Int)

(declare-fun order!9587 () Int)

(declare-fun dynLambda!7279 (Int Int) Int)

(declare-fun dynLambda!7280 (Int Int) Int)

(assert (=> b!1536813 (< (dynLambda!7279 order!9587 (toValue!4229 (transformation!2868 (h!21707 rulesArg!359)))) (dynLambda!7280 order!9589 lambda!65232))))

(declare-fun order!9591 () Int)

(declare-fun dynLambda!7281 (Int Int) Int)

(assert (=> b!1536813 (< (dynLambda!7281 order!9591 (toChars!4088 (transformation!2868 (h!21707 rulesArg!359)))) (dynLambda!7280 order!9589 lambda!65232))))

(declare-fun e!982964 () Bool)

(declare-fun lt!533386 () tuple4!730)

(declare-fun b!1536796 () Bool)

(declare-fun get!4770 (Option!2952) tuple2!15308)

(declare-datatypes ((tuple2!15310 0))(
  ( (tuple2!15311 (_1!8762 Token!5380) (_2!8762 List!16373)) )
))
(declare-datatypes ((Option!2953 0))(
  ( (None!2952) (Some!2952 (v!23116 tuple2!15310)) )
))
(declare-fun get!4771 (Option!2953) tuple2!15310)

(declare-fun maxPrefixOneRule!673 (LexerInterface!2519 Rule!5536 List!16373) Option!2953)

(assert (=> b!1536796 (= e!982964 (= (list!6412 (_2!8760 (get!4770 (_1!8761 lt!533386)))) (_2!8762 (get!4771 (maxPrefixOneRule!673 thiss!15733 (h!21707 rulesArg!359) (list!6412 input!1460))))))))

(declare-fun e!982966 () Option!2952)

(declare-datatypes ((tuple2!15312 0))(
  ( (tuple2!15313 (_1!8763 BalanceConc!10910) (_2!8763 BalanceConc!10910)) )
))
(declare-datatypes ((tuple4!732 0))(
  ( (tuple4!733 (_1!8764 tuple2!15312) (_2!8764 CacheUp!902) (_3!1107 CacheDown!910) (_4!366 CacheFurthestNullable!332)) )
))
(declare-fun lt!533388 () tuple4!732)

(declare-fun apply!4078 (TokenValueInjection!5576 BalanceConc!10910) TokenValue!2958)

(declare-fun size!13181 (BalanceConc!10910) Int)

(assert (=> b!1536797 (= e!982966 (Some!2951 (tuple2!15309 (Token!5381 (apply!4078 (transformation!2868 (h!21707 rulesArg!359)) (_1!8763 (_1!8764 lt!533388))) (h!21707 rulesArg!359) (size!13181 (_1!8763 (_1!8764 lt!533388))) (list!6412 (_1!8763 (_1!8764 lt!533388)))) (_2!8763 (_1!8764 lt!533388)))))))

(declare-fun lt!533389 () List!16373)

(assert (=> b!1536797 (= lt!533389 (list!6412 input!1460))))

(declare-fun lt!533384 () Unit!25837)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!284 (Regex!4191 List!16373) Unit!25837)

(assert (=> b!1536797 (= lt!533384 (longestMatchIsAcceptedByMatchOrIsEmpty!284 (regex!2868 (h!21707 rulesArg!359)) lt!533389))))

(declare-fun res!688958 () Bool)

(declare-fun isEmpty!10002 (List!16373) Bool)

(declare-datatypes ((tuple2!15314 0))(
  ( (tuple2!15315 (_1!8765 List!16373) (_2!8765 List!16373)) )
))
(declare-fun findLongestMatchInner!300 (Regex!4191 List!16373 Int List!16373 List!16373 Int) tuple2!15314)

(declare-fun size!13182 (List!16373) Int)

(assert (=> b!1536797 (= res!688958 (isEmpty!10002 (_1!8765 (findLongestMatchInner!300 (regex!2868 (h!21707 rulesArg!359)) Nil!16305 (size!13182 Nil!16305) lt!533389 lt!533389 (size!13182 lt!533389)))))))

(declare-fun e!982967 () Bool)

(assert (=> b!1536797 (=> res!688958 e!982967)))

(assert (=> b!1536797 e!982967))

(declare-fun lt!533391 () Unit!25837)

(assert (=> b!1536797 (= lt!533391 lt!533384)))

(declare-fun lt!533390 () Unit!25837)

(declare-fun lemmaInv!394 (TokenValueInjection!5576) Unit!25837)

(assert (=> b!1536797 (= lt!533390 (lemmaInv!394 (transformation!2868 (h!21707 rulesArg!359))))))

(declare-fun lt!533392 () Unit!25837)

(declare-fun ForallOf!177 (Int BalanceConc!10910) Unit!25837)

(assert (=> b!1536797 (= lt!533392 (ForallOf!177 lambda!65232 (_1!8763 (_1!8764 lt!533388))))))

(declare-fun lt!533385 () Unit!25837)

(declare-fun seqFromList!1740 (List!16373) BalanceConc!10910)

(assert (=> b!1536797 (= lt!533385 (ForallOf!177 lambda!65232 (seqFromList!1740 (list!6412 (_1!8763 (_1!8764 lt!533388))))))))

(declare-fun lt!533393 () Option!2952)

(assert (=> b!1536797 (= lt!533393 (Some!2951 (tuple2!15309 (Token!5381 (apply!4078 (transformation!2868 (h!21707 rulesArg!359)) (_1!8763 (_1!8764 lt!533388))) (h!21707 rulesArg!359) (size!13181 (_1!8763 (_1!8764 lt!533388))) (list!6412 (_1!8763 (_1!8764 lt!533388)))) (_2!8763 (_1!8764 lt!533388)))))))

(declare-fun lt!533387 () Unit!25837)

(declare-fun lemmaEqSameImage!127 (TokenValueInjection!5576 BalanceConc!10910 BalanceConc!10910) Unit!25837)

(assert (=> b!1536797 (= lt!533387 (lemmaEqSameImage!127 (transformation!2868 (h!21707 rulesArg!359)) (_1!8763 (_1!8764 lt!533388)) (seqFromList!1740 (list!6412 (_1!8763 (_1!8764 lt!533388))))))))

(declare-fun b!1536798 () Bool)

(declare-fun e!982963 () Bool)

(assert (=> b!1536798 (= e!982963 (= (totalInput!2354 (_4!365 lt!533386)) totalInput!496))))

(declare-fun b!1536800 () Bool)

(declare-fun matchR!1843 (Regex!4191 List!16373) Bool)

(assert (=> b!1536800 (= e!982967 (matchR!1843 (regex!2868 (h!21707 rulesArg!359)) (_1!8765 (findLongestMatchInner!300 (regex!2868 (h!21707 rulesArg!359)) Nil!16305 (size!13182 Nil!16305) lt!533389 lt!533389 (size!13182 lt!533389)))))))

(declare-fun b!1536801 () Bool)

(declare-fun res!688952 () Bool)

(assert (=> b!1536801 (=> (not res!688952) (not e!982963))))

(declare-fun e!982965 () Bool)

(assert (=> b!1536801 (= res!688952 e!982965)))

(declare-fun res!688954 () Bool)

(assert (=> b!1536801 (=> res!688954 e!982965)))

(declare-fun isDefined!2371 (Option!2952) Bool)

(assert (=> b!1536801 (= res!688954 (not (isDefined!2371 (_1!8761 lt!533386))))))

(declare-fun b!1536802 () Bool)

(declare-fun res!688959 () Bool)

(assert (=> b!1536802 (=> (not res!688959) (not e!982963))))

(assert (=> b!1536802 (= res!688959 (valid!1276 (_3!1106 lt!533386)))))

(declare-fun b!1536803 () Bool)

(declare-fun res!688953 () Bool)

(assert (=> b!1536803 (=> (not res!688953) (not e!982963))))

(assert (=> b!1536803 (= res!688953 (valid!1275 (_2!8761 lt!533386)))))

(declare-fun b!1536799 () Bool)

(assert (=> b!1536799 (= e!982965 e!982964)))

(declare-fun res!688955 () Bool)

(assert (=> b!1536799 (=> (not res!688955) (not e!982964))))

(assert (=> b!1536799 (= res!688955 (= (_1!8760 (get!4770 (_1!8761 lt!533386))) (_1!8762 (get!4771 (maxPrefixOneRule!673 thiss!15733 (h!21707 rulesArg!359) (list!6412 input!1460))))))))

(declare-fun d!458245 () Bool)

(assert (=> d!458245 e!982963))

(declare-fun res!688956 () Bool)

(assert (=> d!458245 (=> (not res!688956) (not e!982963))))

(declare-fun isDefined!2372 (Option!2953) Bool)

(assert (=> d!458245 (= res!688956 (= (isDefined!2371 (_1!8761 lt!533386)) (isDefined!2372 (maxPrefixOneRule!673 thiss!15733 (h!21707 rulesArg!359) (list!6412 input!1460)))))))

(assert (=> d!458245 (= lt!533386 (tuple4!731 e!982966 (_2!8764 lt!533388) (_3!1107 lt!533388) (_4!366 lt!533388)))))

(declare-fun c!251570 () Bool)

(declare-fun isEmpty!10003 (BalanceConc!10910) Bool)

(assert (=> d!458245 (= c!251570 (isEmpty!10003 (_1!8763 (_1!8764 lt!533388))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!10 (Regex!4191 BalanceConc!10910 BalanceConc!10910 CacheUp!902 CacheDown!910 CacheFurthestNullable!332) tuple4!732)

(assert (=> d!458245 (= lt!533388 (findLongestMatchWithZipperSequenceV3Mem!10 (regex!2868 (h!21707 rulesArg!359)) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(assert (=> d!458245 (ruleValid!645 thiss!15733 (h!21707 rulesArg!359))))

(assert (=> d!458245 (= (maxPrefixOneRuleZipperSequenceV3Mem!20 thiss!15733 (h!21707 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81) lt!533386)))

(declare-fun b!1536804 () Bool)

(declare-fun res!688957 () Bool)

(assert (=> b!1536804 (=> (not res!688957) (not e!982963))))

(assert (=> b!1536804 (= res!688957 (valid!1274 (_4!365 lt!533386)))))

(declare-fun b!1536805 () Bool)

(assert (=> b!1536805 (= e!982966 None!2951)))

(assert (= (and d!458245 c!251570) b!1536805))

(assert (= (and d!458245 (not c!251570)) b!1536797))

(assert (= (and b!1536797 (not res!688958)) b!1536800))

(assert (= (and d!458245 res!688956) b!1536801))

(assert (= (and b!1536801 (not res!688954)) b!1536799))

(assert (= (and b!1536799 res!688955) b!1536796))

(assert (= (and b!1536801 res!688952) b!1536803))

(assert (= (and b!1536803 res!688953) b!1536802))

(assert (= (and b!1536802 res!688959) b!1536804))

(assert (= (and b!1536804 res!688957) b!1536798))

(declare-fun m!1811938 () Bool)

(assert (=> b!1536803 m!1811938))

(declare-fun m!1811940 () Bool)

(assert (=> b!1536804 m!1811940))

(declare-fun m!1811942 () Bool)

(assert (=> b!1536799 m!1811942))

(assert (=> b!1536799 m!1811914))

(assert (=> b!1536799 m!1811914))

(declare-fun m!1811944 () Bool)

(assert (=> b!1536799 m!1811944))

(assert (=> b!1536799 m!1811944))

(declare-fun m!1811946 () Bool)

(assert (=> b!1536799 m!1811946))

(declare-fun m!1811948 () Bool)

(assert (=> b!1536801 m!1811948))

(declare-fun m!1811950 () Bool)

(assert (=> b!1536802 m!1811950))

(assert (=> b!1536796 m!1811942))

(assert (=> b!1536796 m!1811914))

(assert (=> b!1536796 m!1811944))

(assert (=> b!1536796 m!1811944))

(assert (=> b!1536796 m!1811946))

(assert (=> b!1536796 m!1811914))

(declare-fun m!1811952 () Bool)

(assert (=> b!1536796 m!1811952))

(declare-fun m!1811954 () Bool)

(assert (=> b!1536797 m!1811954))

(declare-fun m!1811956 () Bool)

(assert (=> b!1536797 m!1811956))

(declare-fun m!1811958 () Bool)

(assert (=> b!1536797 m!1811958))

(declare-fun m!1811960 () Bool)

(assert (=> b!1536797 m!1811960))

(declare-fun m!1811962 () Bool)

(assert (=> b!1536797 m!1811962))

(declare-fun m!1811964 () Bool)

(assert (=> b!1536797 m!1811964))

(declare-fun m!1811966 () Bool)

(assert (=> b!1536797 m!1811966))

(declare-fun m!1811968 () Bool)

(assert (=> b!1536797 m!1811968))

(assert (=> b!1536797 m!1811964))

(declare-fun m!1811970 () Bool)

(assert (=> b!1536797 m!1811970))

(assert (=> b!1536797 m!1811964))

(declare-fun m!1811972 () Bool)

(assert (=> b!1536797 m!1811972))

(assert (=> b!1536797 m!1811956))

(assert (=> b!1536797 m!1811958))

(assert (=> b!1536797 m!1811914))

(declare-fun m!1811974 () Bool)

(assert (=> b!1536797 m!1811974))

(assert (=> b!1536797 m!1811968))

(declare-fun m!1811976 () Bool)

(assert (=> b!1536797 m!1811976))

(declare-fun m!1811978 () Bool)

(assert (=> b!1536797 m!1811978))

(declare-fun m!1811980 () Bool)

(assert (=> d!458245 m!1811980))

(assert (=> d!458245 m!1811914))

(assert (=> d!458245 m!1811944))

(declare-fun m!1811982 () Bool)

(assert (=> d!458245 m!1811982))

(assert (=> d!458245 m!1811914))

(assert (=> d!458245 m!1811948))

(declare-fun m!1811984 () Bool)

(assert (=> d!458245 m!1811984))

(assert (=> d!458245 m!1811944))

(declare-fun m!1811986 () Bool)

(assert (=> d!458245 m!1811986))

(assert (=> b!1536800 m!1811956))

(assert (=> b!1536800 m!1811958))

(assert (=> b!1536800 m!1811956))

(assert (=> b!1536800 m!1811958))

(assert (=> b!1536800 m!1811960))

(declare-fun m!1811988 () Bool)

(assert (=> b!1536800 m!1811988))

(assert (=> b!1536745 d!458245))

(declare-fun d!458247 () Bool)

(declare-fun c!251573 () Bool)

(assert (=> d!458247 (= c!251573 ((_ is Node!5484) (c!251566 totalInput!496)))))

(declare-fun e!982978 () Bool)

(assert (=> d!458247 (= (inv!21568 (c!251566 totalInput!496)) e!982978)))

(declare-fun b!1536820 () Bool)

(declare-fun inv!21569 (Conc!5484) Bool)

(assert (=> b!1536820 (= e!982978 (inv!21569 (c!251566 totalInput!496)))))

(declare-fun b!1536821 () Bool)

(declare-fun e!982979 () Bool)

(assert (=> b!1536821 (= e!982978 e!982979)))

(declare-fun res!688962 () Bool)

(assert (=> b!1536821 (= res!688962 (not ((_ is Leaf!8125) (c!251566 totalInput!496))))))

(assert (=> b!1536821 (=> res!688962 e!982979)))

(declare-fun b!1536822 () Bool)

(declare-fun inv!21570 (Conc!5484) Bool)

(assert (=> b!1536822 (= e!982979 (inv!21570 (c!251566 totalInput!496)))))

(assert (= (and d!458247 c!251573) b!1536820))

(assert (= (and d!458247 (not c!251573)) b!1536821))

(assert (= (and b!1536821 (not res!688962)) b!1536822))

(declare-fun m!1811990 () Bool)

(assert (=> b!1536820 m!1811990))

(declare-fun m!1811992 () Bool)

(assert (=> b!1536822 m!1811992))

(assert (=> b!1536737 d!458247))

(declare-fun d!458249 () Bool)

(assert (=> d!458249 (= (array_inv!1749 (_keys!1860 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) (bvsge (size!13177 (_keys!1860 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1536727 d!458249))

(declare-fun d!458251 () Bool)

(assert (=> d!458251 (= (array_inv!1751 (_values!1845 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) (bvsge (size!13179 (_values!1845 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1536727 d!458251))

(declare-fun bs!382741 () Bool)

(declare-fun d!458253 () Bool)

(assert (= bs!382741 (and d!458253 d!458243)))

(declare-fun lambda!65233 () Int)

(assert (=> bs!382741 (= lambda!65233 lambda!65227)))

(assert (=> d!458253 true))

(declare-fun lt!533394 () Bool)

(assert (=> d!458253 (= lt!533394 (forall!3900 rulesArg!359 lambda!65233))))

(declare-fun e!982981 () Bool)

(assert (=> d!458253 (= lt!533394 e!982981)))

(declare-fun res!688963 () Bool)

(assert (=> d!458253 (=> res!688963 e!982981)))

(assert (=> d!458253 (= res!688963 (not ((_ is Cons!16306) rulesArg!359)))))

(assert (=> d!458253 (= (rulesValidInductive!874 thiss!15733 rulesArg!359) lt!533394)))

(declare-fun b!1536823 () Bool)

(declare-fun e!982980 () Bool)

(assert (=> b!1536823 (= e!982981 e!982980)))

(declare-fun res!688964 () Bool)

(assert (=> b!1536823 (=> (not res!688964) (not e!982980))))

(assert (=> b!1536823 (= res!688964 (ruleValid!645 thiss!15733 (h!21707 rulesArg!359)))))

(declare-fun b!1536824 () Bool)

(assert (=> b!1536824 (= e!982980 (rulesValidInductive!874 thiss!15733 (t!140580 rulesArg!359)))))

(assert (= (and d!458253 (not res!688963)) b!1536823))

(assert (= (and b!1536823 res!688964) b!1536824))

(declare-fun m!1811994 () Bool)

(assert (=> d!458253 m!1811994))

(assert (=> b!1536823 m!1811984))

(assert (=> b!1536824 m!1811886))

(assert (=> b!1536754 d!458253))

(declare-fun d!458255 () Bool)

(assert (=> d!458255 (= (array_inv!1749 (_keys!1859 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) (bvsge (size!13177 (_keys!1859 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1536756 d!458255))

(declare-fun d!458257 () Bool)

(assert (=> d!458257 (= (array_inv!1752 (_values!1844 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) (bvsge (size!13178 (_values!1844 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1536756 d!458257))

(declare-fun d!458259 () Bool)

(assert (=> d!458259 (= (valid!1275 cacheUp!695) (validCacheMapUp!145 (cache!1889 cacheUp!695)))))

(declare-fun bs!382742 () Bool)

(assert (= bs!382742 d!458259))

(assert (=> bs!382742 m!1811926))

(assert (=> b!1536728 d!458259))

(declare-fun d!458261 () Bool)

(assert (=> d!458261 (= (inv!21565 (totalInput!2354 cacheFurthestNullable!81)) (isBalanced!1627 (c!251566 (totalInput!2354 cacheFurthestNullable!81))))))

(declare-fun bs!382743 () Bool)

(assert (= bs!382743 d!458261))

(declare-fun m!1811996 () Bool)

(assert (=> bs!382743 m!1811996))

(assert (=> b!1536740 d!458261))

(declare-fun d!458263 () Bool)

(declare-fun c!251574 () Bool)

(assert (=> d!458263 (= c!251574 ((_ is Node!5484) (c!251566 (totalInput!2354 cacheFurthestNullable!81))))))

(declare-fun e!982982 () Bool)

(assert (=> d!458263 (= (inv!21568 (c!251566 (totalInput!2354 cacheFurthestNullable!81))) e!982982)))

(declare-fun b!1536825 () Bool)

(assert (=> b!1536825 (= e!982982 (inv!21569 (c!251566 (totalInput!2354 cacheFurthestNullable!81))))))

(declare-fun b!1536826 () Bool)

(declare-fun e!982983 () Bool)

(assert (=> b!1536826 (= e!982982 e!982983)))

(declare-fun res!688965 () Bool)

(assert (=> b!1536826 (= res!688965 (not ((_ is Leaf!8125) (c!251566 (totalInput!2354 cacheFurthestNullable!81)))))))

(assert (=> b!1536826 (=> res!688965 e!982983)))

(declare-fun b!1536827 () Bool)

(assert (=> b!1536827 (= e!982983 (inv!21570 (c!251566 (totalInput!2354 cacheFurthestNullable!81))))))

(assert (= (and d!458263 c!251574) b!1536825))

(assert (= (and d!458263 (not c!251574)) b!1536826))

(assert (= (and b!1536826 (not res!688965)) b!1536827))

(declare-fun m!1811998 () Bool)

(assert (=> b!1536825 m!1811998))

(declare-fun m!1812000 () Bool)

(assert (=> b!1536827 m!1812000))

(assert (=> b!1536750 d!458263))

(declare-fun d!458265 () Bool)

(assert (=> d!458265 (= (valid!1276 cacheDown!708) (validCacheMapDown!145 (cache!1891 cacheDown!708)))))

(declare-fun bs!382744 () Bool)

(assert (= bs!382744 d!458265))

(assert (=> bs!382744 m!1811922))

(assert (=> b!1536749 d!458265))

(declare-fun d!458267 () Bool)

(assert (=> d!458267 (= (inv!21562 (tag!3132 (h!21707 rulesArg!359))) (= (mod (str.len (value!91400 (tag!3132 (h!21707 rulesArg!359)))) 2) 0))))

(assert (=> b!1536731 d!458267))

(declare-fun d!458269 () Bool)

(declare-fun res!688968 () Bool)

(declare-fun e!982986 () Bool)

(assert (=> d!458269 (=> (not res!688968) (not e!982986))))

(declare-fun semiInverseModEq!1081 (Int Int) Bool)

(assert (=> d!458269 (= res!688968 (semiInverseModEq!1081 (toChars!4088 (transformation!2868 (h!21707 rulesArg!359))) (toValue!4229 (transformation!2868 (h!21707 rulesArg!359)))))))

(assert (=> d!458269 (= (inv!21563 (transformation!2868 (h!21707 rulesArg!359))) e!982986)))

(declare-fun b!1536830 () Bool)

(declare-fun equivClasses!1040 (Int Int) Bool)

(assert (=> b!1536830 (= e!982986 (equivClasses!1040 (toChars!4088 (transformation!2868 (h!21707 rulesArg!359))) (toValue!4229 (transformation!2868 (h!21707 rulesArg!359)))))))

(assert (= (and d!458269 res!688968) b!1536830))

(declare-fun m!1812002 () Bool)

(assert (=> d!458269 m!1812002))

(declare-fun m!1812004 () Bool)

(assert (=> b!1536830 m!1812004))

(assert (=> b!1536731 d!458269))

(declare-fun d!458271 () Bool)

(declare-fun c!251575 () Bool)

(assert (=> d!458271 (= c!251575 ((_ is Node!5484) (c!251566 input!1460)))))

(declare-fun e!982987 () Bool)

(assert (=> d!458271 (= (inv!21568 (c!251566 input!1460)) e!982987)))

(declare-fun b!1536831 () Bool)

(assert (=> b!1536831 (= e!982987 (inv!21569 (c!251566 input!1460)))))

(declare-fun b!1536832 () Bool)

(declare-fun e!982988 () Bool)

(assert (=> b!1536832 (= e!982987 e!982988)))

(declare-fun res!688969 () Bool)

(assert (=> b!1536832 (= res!688969 (not ((_ is Leaf!8125) (c!251566 input!1460))))))

(assert (=> b!1536832 (=> res!688969 e!982988)))

(declare-fun b!1536833 () Bool)

(assert (=> b!1536833 (= e!982988 (inv!21570 (c!251566 input!1460)))))

(assert (= (and d!458271 c!251575) b!1536831))

(assert (= (and d!458271 (not c!251575)) b!1536832))

(assert (= (and b!1536832 (not res!688969)) b!1536833))

(declare-fun m!1812006 () Bool)

(assert (=> b!1536831 m!1812006))

(declare-fun m!1812008 () Bool)

(assert (=> b!1536833 m!1812008))

(assert (=> b!1536758 d!458271))

(declare-fun d!458273 () Bool)

(declare-fun e!982996 () Bool)

(assert (=> d!458273 e!982996))

(declare-fun res!688981 () Bool)

(assert (=> d!458273 (=> res!688981 e!982996)))

(declare-fun lt!533397 () Bool)

(assert (=> d!458273 (= res!688981 (not lt!533397))))

(declare-fun e!982995 () Bool)

(assert (=> d!458273 (= lt!533397 e!982995)))

(declare-fun res!688978 () Bool)

(assert (=> d!458273 (=> res!688978 e!982995)))

(assert (=> d!458273 (= res!688978 ((_ is Nil!16305) lt!533357))))

(assert (=> d!458273 (= (isPrefix!1234 lt!533357 lt!533357) lt!533397)))

(declare-fun b!1536843 () Bool)

(declare-fun res!688980 () Bool)

(declare-fun e!982997 () Bool)

(assert (=> b!1536843 (=> (not res!688980) (not e!982997))))

(declare-fun head!3099 (List!16373) C!8560)

(assert (=> b!1536843 (= res!688980 (= (head!3099 lt!533357) (head!3099 lt!533357)))))

(declare-fun b!1536842 () Bool)

(assert (=> b!1536842 (= e!982995 e!982997)))

(declare-fun res!688979 () Bool)

(assert (=> b!1536842 (=> (not res!688979) (not e!982997))))

(assert (=> b!1536842 (= res!688979 (not ((_ is Nil!16305) lt!533357)))))

(declare-fun b!1536845 () Bool)

(assert (=> b!1536845 (= e!982996 (>= (size!13182 lt!533357) (size!13182 lt!533357)))))

(declare-fun b!1536844 () Bool)

(declare-fun tail!2194 (List!16373) List!16373)

(assert (=> b!1536844 (= e!982997 (isPrefix!1234 (tail!2194 lt!533357) (tail!2194 lt!533357)))))

(assert (= (and d!458273 (not res!688978)) b!1536842))

(assert (= (and b!1536842 res!688979) b!1536843))

(assert (= (and b!1536843 res!688980) b!1536844))

(assert (= (and d!458273 (not res!688981)) b!1536845))

(declare-fun m!1812010 () Bool)

(assert (=> b!1536843 m!1812010))

(assert (=> b!1536843 m!1812010))

(declare-fun m!1812012 () Bool)

(assert (=> b!1536845 m!1812012))

(assert (=> b!1536845 m!1812012))

(declare-fun m!1812014 () Bool)

(assert (=> b!1536844 m!1812014))

(assert (=> b!1536844 m!1812014))

(assert (=> b!1536844 m!1812014))

(assert (=> b!1536844 m!1812014))

(declare-fun m!1812016 () Bool)

(assert (=> b!1536844 m!1812016))

(assert (=> b!1536743 d!458273))

(declare-fun d!458275 () Bool)

(assert (=> d!458275 (isPrefix!1234 lt!533357 lt!533357)))

(declare-fun lt!533400 () Unit!25837)

(declare-fun choose!9222 (List!16373 List!16373) Unit!25837)

(assert (=> d!458275 (= lt!533400 (choose!9222 lt!533357 lt!533357))))

(assert (=> d!458275 (= (lemmaIsPrefixRefl!864 lt!533357 lt!533357) lt!533400)))

(declare-fun bs!382745 () Bool)

(assert (= bs!382745 d!458275))

(assert (=> bs!382745 m!1811902))

(declare-fun m!1812018 () Bool)

(assert (=> bs!382745 m!1812018))

(assert (=> b!1536743 d!458275))

(declare-fun d!458277 () Bool)

(assert (=> d!458277 (= (array_inv!1749 (_keys!1858 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) (bvsge (size!13177 (_keys!1858 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1536723 d!458277))

(declare-fun d!458279 () Bool)

(assert (=> d!458279 (= (array_inv!1750 (_values!1843 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) (bvsge (size!13176 (_values!1843 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1536723 d!458279))

(declare-fun d!458281 () Bool)

(assert (=> d!458281 (= (isEmpty!10001 rulesArg!359) ((_ is Nil!16306) rulesArg!359))))

(assert (=> b!1536725 d!458281))

(declare-fun d!458283 () Bool)

(declare-fun e!983000 () Bool)

(assert (=> d!458283 e!983000))

(declare-fun res!688984 () Bool)

(assert (=> d!458283 (=> res!688984 e!983000)))

(declare-fun lt!533403 () Bool)

(assert (=> d!458283 (= res!688984 (not lt!533403))))

(declare-fun drop!769 (List!16373 Int) List!16373)

(assert (=> d!458283 (= lt!533403 (= lt!533357 (drop!769 (list!6412 totalInput!496) (- (size!13182 (list!6412 totalInput!496)) (size!13182 lt!533357)))))))

(assert (=> d!458283 (= (isSuffix!320 lt!533357 (list!6412 totalInput!496)) lt!533403)))

(declare-fun b!1536848 () Bool)

(assert (=> b!1536848 (= e!983000 (>= (size!13182 (list!6412 totalInput!496)) (size!13182 lt!533357)))))

(assert (= (and d!458283 (not res!688984)) b!1536848))

(assert (=> d!458283 m!1811910))

(declare-fun m!1812020 () Bool)

(assert (=> d!458283 m!1812020))

(assert (=> d!458283 m!1812012))

(assert (=> d!458283 m!1811910))

(declare-fun m!1812022 () Bool)

(assert (=> d!458283 m!1812022))

(assert (=> b!1536848 m!1811910))

(assert (=> b!1536848 m!1812020))

(assert (=> b!1536848 m!1812012))

(assert (=> b!1536751 d!458283))

(declare-fun d!458285 () Bool)

(declare-fun list!6413 (Conc!5484) List!16373)

(assert (=> d!458285 (= (list!6412 totalInput!496) (list!6413 (c!251566 totalInput!496)))))

(declare-fun bs!382746 () Bool)

(assert (= bs!382746 d!458285))

(declare-fun m!1812024 () Bool)

(assert (=> bs!382746 m!1812024))

(assert (=> b!1536751 d!458285))

(declare-fun d!458287 () Bool)

(assert (=> d!458287 (= (list!6412 input!1460) (list!6413 (c!251566 input!1460)))))

(declare-fun bs!382747 () Bool)

(assert (= bs!382747 d!458287))

(declare-fun m!1812026 () Bool)

(assert (=> bs!382747 m!1812026))

(assert (=> b!1536751 d!458287))

(declare-fun e!983007 () Bool)

(assert (=> b!1536736 (= tp!443512 e!983007)))

(declare-fun setElem!10020 () Context!1418)

(declare-fun setNonEmpty!10020 () Bool)

(declare-fun setRes!10020 () Bool)

(declare-fun tp!443534 () Bool)

(declare-fun e!983008 () Bool)

(declare-fun inv!21571 (Context!1418) Bool)

(assert (=> setNonEmpty!10020 (= setRes!10020 (and tp!443534 (inv!21571 setElem!10020) e!983008))))

(declare-fun setRest!10020 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10020 (= (_2!8759 (h!21709 mapDefault!7410)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10020 true) setRest!10020))))

(declare-fun b!1536857 () Bool)

(declare-fun tp!443531 () Bool)

(assert (=> b!1536857 (= e!983008 tp!443531)))

(declare-fun tp!443533 () Bool)

(declare-fun tp_is_empty!7035 () Bool)

(declare-fun b!1536858 () Bool)

(declare-fun e!983009 () Bool)

(declare-fun tp!443532 () Bool)

(assert (=> b!1536858 (= e!983007 (and tp!443532 (inv!21571 (_2!8758 (_1!8759 (h!21709 mapDefault!7410)))) e!983009 tp_is_empty!7035 setRes!10020 tp!443533))))

(declare-fun condSetEmpty!10020 () Bool)

(assert (=> b!1536858 (= condSetEmpty!10020 (= (_2!8759 (h!21709 mapDefault!7410)) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setIsEmpty!10020 () Bool)

(assert (=> setIsEmpty!10020 setRes!10020))

(declare-fun b!1536859 () Bool)

(declare-fun tp!443530 () Bool)

(assert (=> b!1536859 (= e!983009 tp!443530)))

(assert (= b!1536858 b!1536859))

(assert (= (and b!1536858 condSetEmpty!10020) setIsEmpty!10020))

(assert (= (and b!1536858 (not condSetEmpty!10020)) setNonEmpty!10020))

(assert (= setNonEmpty!10020 b!1536857))

(assert (= (and b!1536736 ((_ is Cons!16308) mapDefault!7410)) b!1536858))

(declare-fun m!1812028 () Bool)

(assert (=> setNonEmpty!10020 m!1812028))

(declare-fun m!1812030 () Bool)

(assert (=> b!1536858 m!1812030))

(declare-fun b!1536868 () Bool)

(declare-fun e!983015 () Bool)

(declare-fun tp!443543 () Bool)

(declare-fun tp!443541 () Bool)

(assert (=> b!1536868 (= e!983015 (and (inv!21568 (left!13440 (c!251566 totalInput!496))) tp!443541 (inv!21568 (right!13770 (c!251566 totalInput!496))) tp!443543))))

(declare-fun b!1536870 () Bool)

(declare-fun e!983014 () Bool)

(declare-fun tp!443542 () Bool)

(assert (=> b!1536870 (= e!983014 tp!443542)))

(declare-fun b!1536869 () Bool)

(declare-fun inv!21572 (IArray!10973) Bool)

(assert (=> b!1536869 (= e!983015 (and (inv!21572 (xs!8284 (c!251566 totalInput!496))) e!983014))))

(assert (=> b!1536737 (= tp!443511 (and (inv!21568 (c!251566 totalInput!496)) e!983015))))

(assert (= (and b!1536737 ((_ is Node!5484) (c!251566 totalInput!496))) b!1536868))

(assert (= b!1536869 b!1536870))

(assert (= (and b!1536737 ((_ is Leaf!8125) (c!251566 totalInput!496))) b!1536869))

(declare-fun m!1812032 () Bool)

(assert (=> b!1536868 m!1812032))

(declare-fun m!1812034 () Bool)

(assert (=> b!1536868 m!1812034))

(declare-fun m!1812036 () Bool)

(assert (=> b!1536869 m!1812036))

(assert (=> b!1536737 m!1811920))

(declare-fun e!983016 () Bool)

(assert (=> b!1536727 (= tp!443494 e!983016)))

(declare-fun e!983017 () Bool)

(declare-fun setRes!10021 () Bool)

(declare-fun setElem!10021 () Context!1418)

(declare-fun tp!443548 () Bool)

(declare-fun setNonEmpty!10021 () Bool)

(assert (=> setNonEmpty!10021 (= setRes!10021 (and tp!443548 (inv!21571 setElem!10021) e!983017))))

(declare-fun setRest!10021 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10021 (= (_2!8759 (h!21709 (zeroValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10021 true) setRest!10021))))

(declare-fun b!1536871 () Bool)

(declare-fun tp!443545 () Bool)

(assert (=> b!1536871 (= e!983017 tp!443545)))

(declare-fun tp!443546 () Bool)

(declare-fun tp!443547 () Bool)

(declare-fun e!983018 () Bool)

(declare-fun b!1536872 () Bool)

(assert (=> b!1536872 (= e!983016 (and tp!443546 (inv!21571 (_2!8758 (_1!8759 (h!21709 (zeroValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))))) e!983018 tp_is_empty!7035 setRes!10021 tp!443547))))

(declare-fun condSetEmpty!10021 () Bool)

(assert (=> b!1536872 (= condSetEmpty!10021 (= (_2!8759 (h!21709 (zeroValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setIsEmpty!10021 () Bool)

(assert (=> setIsEmpty!10021 setRes!10021))

(declare-fun b!1536873 () Bool)

(declare-fun tp!443544 () Bool)

(assert (=> b!1536873 (= e!983018 tp!443544)))

(assert (= b!1536872 b!1536873))

(assert (= (and b!1536872 condSetEmpty!10021) setIsEmpty!10021))

(assert (= (and b!1536872 (not condSetEmpty!10021)) setNonEmpty!10021))

(assert (= setNonEmpty!10021 b!1536871))

(assert (= (and b!1536727 ((_ is Cons!16308) (zeroValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))) b!1536872))

(declare-fun m!1812038 () Bool)

(assert (=> setNonEmpty!10021 m!1812038))

(declare-fun m!1812040 () Bool)

(assert (=> b!1536872 m!1812040))

(declare-fun e!983019 () Bool)

(assert (=> b!1536727 (= tp!443506 e!983019)))

(declare-fun setNonEmpty!10022 () Bool)

(declare-fun setRes!10022 () Bool)

(declare-fun tp!443553 () Bool)

(declare-fun e!983020 () Bool)

(declare-fun setElem!10022 () Context!1418)

(assert (=> setNonEmpty!10022 (= setRes!10022 (and tp!443553 (inv!21571 setElem!10022) e!983020))))

(declare-fun setRest!10022 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10022 (= (_2!8759 (h!21709 (minValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10022 true) setRest!10022))))

(declare-fun b!1536874 () Bool)

(declare-fun tp!443550 () Bool)

(assert (=> b!1536874 (= e!983020 tp!443550)))

(declare-fun b!1536875 () Bool)

(declare-fun e!983021 () Bool)

(declare-fun tp!443551 () Bool)

(declare-fun tp!443552 () Bool)

(assert (=> b!1536875 (= e!983019 (and tp!443551 (inv!21571 (_2!8758 (_1!8759 (h!21709 (minValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))))) e!983021 tp_is_empty!7035 setRes!10022 tp!443552))))

(declare-fun condSetEmpty!10022 () Bool)

(assert (=> b!1536875 (= condSetEmpty!10022 (= (_2!8759 (h!21709 (minValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setIsEmpty!10022 () Bool)

(assert (=> setIsEmpty!10022 setRes!10022))

(declare-fun b!1536876 () Bool)

(declare-fun tp!443549 () Bool)

(assert (=> b!1536876 (= e!983021 tp!443549)))

(assert (= b!1536875 b!1536876))

(assert (= (and b!1536875 condSetEmpty!10022) setIsEmpty!10022))

(assert (= (and b!1536875 (not condSetEmpty!10022)) setNonEmpty!10022))

(assert (= setNonEmpty!10022 b!1536874))

(assert (= (and b!1536727 ((_ is Cons!16308) (minValue!1823 (v!23113 (underlying!3341 (v!23114 (underlying!3342 (cache!1891 cacheDown!708)))))))) b!1536875))

(declare-fun m!1812042 () Bool)

(assert (=> setNonEmpty!10022 m!1812042))

(declare-fun m!1812044 () Bool)

(assert (=> b!1536875 m!1812044))

(declare-fun b!1536887 () Bool)

(declare-fun e!983030 () Bool)

(declare-fun tp!443573 () Bool)

(assert (=> b!1536887 (= e!983030 tp!443573)))

(declare-fun mapNonEmpty!7415 () Bool)

(declare-fun mapRes!7415 () Bool)

(declare-fun tp!443570 () Bool)

(declare-fun e!983033 () Bool)

(assert (=> mapNonEmpty!7415 (= mapRes!7415 (and tp!443570 e!983033))))

(declare-fun mapKey!7415 () (_ BitVec 32))

(declare-fun mapRest!7415 () (Array (_ BitVec 32) List!16375))

(declare-fun mapValue!7415 () List!16375)

(assert (=> mapNonEmpty!7415 (= mapRest!7411 (store mapRest!7415 mapKey!7415 mapValue!7415))))

(declare-fun b!1536888 () Bool)

(declare-fun setRes!10027 () Bool)

(declare-fun tp!443574 () Bool)

(assert (=> b!1536888 (= e!983033 (and setRes!10027 tp!443574))))

(declare-fun condSetEmpty!10027 () Bool)

(assert (=> b!1536888 (= condSetEmpty!10027 (= (_1!8756 (_1!8757 (h!21708 mapValue!7415))) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setIsEmpty!10028 () Bool)

(declare-fun setRes!10028 () Bool)

(assert (=> setIsEmpty!10028 setRes!10028))

(declare-fun setElem!10027 () Context!1418)

(declare-fun tp!443568 () Bool)

(declare-fun setNonEmpty!10027 () Bool)

(assert (=> setNonEmpty!10027 (= setRes!10027 (and tp!443568 (inv!21571 setElem!10027) e!983030))))

(declare-fun setRest!10027 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10027 (= (_1!8756 (_1!8757 (h!21708 mapValue!7415))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10027 true) setRest!10027))))

(declare-fun b!1536889 () Bool)

(declare-fun e!983032 () Bool)

(declare-fun tp!443571 () Bool)

(assert (=> b!1536889 (= e!983032 tp!443571)))

(declare-fun b!1536890 () Bool)

(declare-fun e!983031 () Bool)

(declare-fun tp!443572 () Bool)

(assert (=> b!1536890 (= e!983031 (and setRes!10028 tp!443572))))

(declare-fun condSetEmpty!10028 () Bool)

(declare-fun mapDefault!7415 () List!16375)

(assert (=> b!1536890 (= condSetEmpty!10028 (= (_1!8756 (_1!8757 (h!21708 mapDefault!7415))) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setNonEmpty!10028 () Bool)

(declare-fun tp!443569 () Bool)

(declare-fun setElem!10028 () Context!1418)

(assert (=> setNonEmpty!10028 (= setRes!10028 (and tp!443569 (inv!21571 setElem!10028) e!983032))))

(declare-fun setRest!10028 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10028 (= (_1!8756 (_1!8757 (h!21708 mapDefault!7415))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10028 true) setRest!10028))))

(declare-fun mapIsEmpty!7415 () Bool)

(assert (=> mapIsEmpty!7415 mapRes!7415))

(declare-fun setIsEmpty!10027 () Bool)

(assert (=> setIsEmpty!10027 setRes!10027))

(declare-fun condMapEmpty!7415 () Bool)

(assert (=> mapNonEmpty!7410 (= condMapEmpty!7415 (= mapRest!7411 ((as const (Array (_ BitVec 32) List!16375)) mapDefault!7415)))))

(assert (=> mapNonEmpty!7410 (= tp!443502 (and e!983031 mapRes!7415))))

(assert (= (and mapNonEmpty!7410 condMapEmpty!7415) mapIsEmpty!7415))

(assert (= (and mapNonEmpty!7410 (not condMapEmpty!7415)) mapNonEmpty!7415))

(assert (= (and b!1536888 condSetEmpty!10027) setIsEmpty!10027))

(assert (= (and b!1536888 (not condSetEmpty!10027)) setNonEmpty!10027))

(assert (= setNonEmpty!10027 b!1536887))

(assert (= (and mapNonEmpty!7415 ((_ is Cons!16307) mapValue!7415)) b!1536888))

(assert (= (and b!1536890 condSetEmpty!10028) setIsEmpty!10028))

(assert (= (and b!1536890 (not condSetEmpty!10028)) setNonEmpty!10028))

(assert (= setNonEmpty!10028 b!1536889))

(assert (= (and mapNonEmpty!7410 ((_ is Cons!16307) mapDefault!7415)) b!1536890))

(declare-fun m!1812046 () Bool)

(assert (=> mapNonEmpty!7415 m!1812046))

(declare-fun m!1812048 () Bool)

(assert (=> setNonEmpty!10027 m!1812048))

(declare-fun m!1812050 () Bool)

(assert (=> setNonEmpty!10028 m!1812050))

(declare-fun setIsEmpty!10031 () Bool)

(declare-fun setRes!10031 () Bool)

(assert (=> setIsEmpty!10031 setRes!10031))

(declare-fun b!1536898 () Bool)

(declare-fun e!983038 () Bool)

(declare-fun tp!443583 () Bool)

(assert (=> b!1536898 (= e!983038 tp!443583)))

(declare-fun b!1536897 () Bool)

(declare-fun e!983039 () Bool)

(declare-fun tp!443582 () Bool)

(assert (=> b!1536897 (= e!983039 (and setRes!10031 tp!443582))))

(declare-fun condSetEmpty!10031 () Bool)

(assert (=> b!1536897 (= condSetEmpty!10031 (= (_1!8756 (_1!8757 (h!21708 mapValue!7410))) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> mapNonEmpty!7410 (= tp!443515 e!983039)))

(declare-fun tp!443581 () Bool)

(declare-fun setElem!10031 () Context!1418)

(declare-fun setNonEmpty!10031 () Bool)

(assert (=> setNonEmpty!10031 (= setRes!10031 (and tp!443581 (inv!21571 setElem!10031) e!983038))))

(declare-fun setRest!10031 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10031 (= (_1!8756 (_1!8757 (h!21708 mapValue!7410))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10031 true) setRest!10031))))

(assert (= (and b!1536897 condSetEmpty!10031) setIsEmpty!10031))

(assert (= (and b!1536897 (not condSetEmpty!10031)) setNonEmpty!10031))

(assert (= setNonEmpty!10031 b!1536898))

(assert (= (and mapNonEmpty!7410 ((_ is Cons!16307) mapValue!7410)) b!1536897))

(declare-fun m!1812052 () Bool)

(assert (=> setNonEmpty!10031 m!1812052))

(declare-fun setIsEmpty!10032 () Bool)

(declare-fun setRes!10032 () Bool)

(assert (=> setIsEmpty!10032 setRes!10032))

(declare-fun b!1536900 () Bool)

(declare-fun e!983040 () Bool)

(declare-fun tp!443586 () Bool)

(assert (=> b!1536900 (= e!983040 tp!443586)))

(declare-fun b!1536899 () Bool)

(declare-fun e!983041 () Bool)

(declare-fun tp!443585 () Bool)

(assert (=> b!1536899 (= e!983041 (and setRes!10032 tp!443585))))

(declare-fun condSetEmpty!10032 () Bool)

(assert (=> b!1536899 (= condSetEmpty!10032 (= (_1!8756 (_1!8757 (h!21708 (zeroValue!1822 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))))) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> b!1536756 (= tp!443518 e!983041)))

(declare-fun tp!443584 () Bool)

(declare-fun setElem!10032 () Context!1418)

(declare-fun setNonEmpty!10032 () Bool)

(assert (=> setNonEmpty!10032 (= setRes!10032 (and tp!443584 (inv!21571 setElem!10032) e!983040))))

(declare-fun setRest!10032 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10032 (= (_1!8756 (_1!8757 (h!21708 (zeroValue!1822 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10032 true) setRest!10032))))

(assert (= (and b!1536899 condSetEmpty!10032) setIsEmpty!10032))

(assert (= (and b!1536899 (not condSetEmpty!10032)) setNonEmpty!10032))

(assert (= setNonEmpty!10032 b!1536900))

(assert (= (and b!1536756 ((_ is Cons!16307) (zeroValue!1822 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81)))))))) b!1536899))

(declare-fun m!1812054 () Bool)

(assert (=> setNonEmpty!10032 m!1812054))

(declare-fun setIsEmpty!10033 () Bool)

(declare-fun setRes!10033 () Bool)

(assert (=> setIsEmpty!10033 setRes!10033))

(declare-fun b!1536902 () Bool)

(declare-fun e!983042 () Bool)

(declare-fun tp!443589 () Bool)

(assert (=> b!1536902 (= e!983042 tp!443589)))

(declare-fun b!1536901 () Bool)

(declare-fun e!983043 () Bool)

(declare-fun tp!443588 () Bool)

(assert (=> b!1536901 (= e!983043 (and setRes!10033 tp!443588))))

(declare-fun condSetEmpty!10033 () Bool)

(assert (=> b!1536901 (= condSetEmpty!10033 (= (_1!8756 (_1!8757 (h!21708 (minValue!1822 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))))) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> b!1536756 (= tp!443508 e!983043)))

(declare-fun setNonEmpty!10033 () Bool)

(declare-fun tp!443587 () Bool)

(declare-fun setElem!10033 () Context!1418)

(assert (=> setNonEmpty!10033 (= setRes!10033 (and tp!443587 (inv!21571 setElem!10033) e!983042))))

(declare-fun setRest!10033 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10033 (= (_1!8756 (_1!8757 (h!21708 (minValue!1822 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10033 true) setRest!10033))))

(assert (= (and b!1536901 condSetEmpty!10033) setIsEmpty!10033))

(assert (= (and b!1536901 (not condSetEmpty!10033)) setNonEmpty!10033))

(assert (= setNonEmpty!10033 b!1536902))

(assert (= (and b!1536756 ((_ is Cons!16307) (minValue!1822 (v!23111 (underlying!3339 (v!23112 (underlying!3340 (cache!1890 cacheFurthestNullable!81)))))))) b!1536901))

(declare-fun m!1812056 () Bool)

(assert (=> setNonEmpty!10033 m!1812056))

(declare-fun b!1536917 () Bool)

(declare-fun e!983058 () Bool)

(declare-fun tp!443620 () Bool)

(assert (=> b!1536917 (= e!983058 tp!443620)))

(declare-fun mapIsEmpty!7418 () Bool)

(declare-fun mapRes!7418 () Bool)

(assert (=> mapIsEmpty!7418 mapRes!7418))

(declare-fun mapDefault!7418 () List!16376)

(declare-fun e!983056 () Bool)

(declare-fun e!983059 () Bool)

(declare-fun tp!443621 () Bool)

(declare-fun b!1536918 () Bool)

(declare-fun tp!443614 () Bool)

(declare-fun setRes!10038 () Bool)

(assert (=> b!1536918 (= e!983056 (and tp!443621 (inv!21571 (_2!8758 (_1!8759 (h!21709 mapDefault!7418)))) e!983059 tp_is_empty!7035 setRes!10038 tp!443614))))

(declare-fun condSetEmpty!10039 () Bool)

(assert (=> b!1536918 (= condSetEmpty!10039 (= (_2!8759 (h!21709 mapDefault!7418)) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun mapNonEmpty!7418 () Bool)

(declare-fun tp!443622 () Bool)

(declare-fun e!983060 () Bool)

(assert (=> mapNonEmpty!7418 (= mapRes!7418 (and tp!443622 e!983060))))

(declare-fun mapRest!7418 () (Array (_ BitVec 32) List!16376))

(declare-fun mapKey!7418 () (_ BitVec 32))

(declare-fun mapValue!7418 () List!16376)

(assert (=> mapNonEmpty!7418 (= mapRest!7410 (store mapRest!7418 mapKey!7418 mapValue!7418))))

(declare-fun condMapEmpty!7418 () Bool)

(assert (=> mapNonEmpty!7411 (= condMapEmpty!7418 (= mapRest!7410 ((as const (Array (_ BitVec 32) List!16376)) mapDefault!7418)))))

(assert (=> mapNonEmpty!7411 (= tp!443495 (and e!983056 mapRes!7418))))

(declare-fun setNonEmpty!10038 () Bool)

(declare-fun setElem!10038 () Context!1418)

(declare-fun setRes!10039 () Bool)

(declare-fun tp!443619 () Bool)

(assert (=> setNonEmpty!10038 (= setRes!10039 (and tp!443619 (inv!21571 setElem!10038) e!983058))))

(declare-fun setRest!10039 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10038 (= (_2!8759 (h!21709 mapValue!7418)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10038 true) setRest!10039))))

(declare-fun e!983057 () Bool)

(declare-fun b!1536919 () Bool)

(declare-fun tp!443617 () Bool)

(declare-fun tp!443613 () Bool)

(assert (=> b!1536919 (= e!983060 (and tp!443613 (inv!21571 (_2!8758 (_1!8759 (h!21709 mapValue!7418)))) e!983057 tp_is_empty!7035 setRes!10039 tp!443617))))

(declare-fun condSetEmpty!10038 () Bool)

(assert (=> b!1536919 (= condSetEmpty!10038 (= (_2!8759 (h!21709 mapValue!7418)) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setIsEmpty!10038 () Bool)

(assert (=> setIsEmpty!10038 setRes!10039))

(declare-fun b!1536920 () Bool)

(declare-fun tp!443616 () Bool)

(assert (=> b!1536920 (= e!983057 tp!443616)))

(declare-fun setElem!10039 () Context!1418)

(declare-fun tp!443618 () Bool)

(declare-fun e!983061 () Bool)

(declare-fun setNonEmpty!10039 () Bool)

(assert (=> setNonEmpty!10039 (= setRes!10038 (and tp!443618 (inv!21571 setElem!10039) e!983061))))

(declare-fun setRest!10038 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10039 (= (_2!8759 (h!21709 mapDefault!7418)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10039 true) setRest!10038))))

(declare-fun setIsEmpty!10039 () Bool)

(assert (=> setIsEmpty!10039 setRes!10038))

(declare-fun b!1536921 () Bool)

(declare-fun tp!443615 () Bool)

(assert (=> b!1536921 (= e!983059 tp!443615)))

(declare-fun b!1536922 () Bool)

(declare-fun tp!443612 () Bool)

(assert (=> b!1536922 (= e!983061 tp!443612)))

(assert (= (and mapNonEmpty!7411 condMapEmpty!7418) mapIsEmpty!7418))

(assert (= (and mapNonEmpty!7411 (not condMapEmpty!7418)) mapNonEmpty!7418))

(assert (= b!1536919 b!1536920))

(assert (= (and b!1536919 condSetEmpty!10038) setIsEmpty!10038))

(assert (= (and b!1536919 (not condSetEmpty!10038)) setNonEmpty!10038))

(assert (= setNonEmpty!10038 b!1536917))

(assert (= (and mapNonEmpty!7418 ((_ is Cons!16308) mapValue!7418)) b!1536919))

(assert (= b!1536918 b!1536921))

(assert (= (and b!1536918 condSetEmpty!10039) setIsEmpty!10039))

(assert (= (and b!1536918 (not condSetEmpty!10039)) setNonEmpty!10039))

(assert (= setNonEmpty!10039 b!1536922))

(assert (= (and mapNonEmpty!7411 ((_ is Cons!16308) mapDefault!7418)) b!1536918))

(declare-fun m!1812058 () Bool)

(assert (=> b!1536918 m!1812058))

(declare-fun m!1812060 () Bool)

(assert (=> setNonEmpty!10038 m!1812060))

(declare-fun m!1812062 () Bool)

(assert (=> setNonEmpty!10039 m!1812062))

(declare-fun m!1812064 () Bool)

(assert (=> b!1536919 m!1812064))

(declare-fun m!1812066 () Bool)

(assert (=> mapNonEmpty!7418 m!1812066))

(declare-fun e!983062 () Bool)

(assert (=> mapNonEmpty!7411 (= tp!443504 e!983062)))

(declare-fun setRes!10040 () Bool)

(declare-fun setElem!10040 () Context!1418)

(declare-fun e!983063 () Bool)

(declare-fun setNonEmpty!10040 () Bool)

(declare-fun tp!443627 () Bool)

(assert (=> setNonEmpty!10040 (= setRes!10040 (and tp!443627 (inv!21571 setElem!10040) e!983063))))

(declare-fun setRest!10040 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10040 (= (_2!8759 (h!21709 mapValue!7411)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10040 true) setRest!10040))))

(declare-fun b!1536923 () Bool)

(declare-fun tp!443624 () Bool)

(assert (=> b!1536923 (= e!983063 tp!443624)))

(declare-fun e!983064 () Bool)

(declare-fun tp!443626 () Bool)

(declare-fun tp!443625 () Bool)

(declare-fun b!1536924 () Bool)

(assert (=> b!1536924 (= e!983062 (and tp!443625 (inv!21571 (_2!8758 (_1!8759 (h!21709 mapValue!7411)))) e!983064 tp_is_empty!7035 setRes!10040 tp!443626))))

(declare-fun condSetEmpty!10040 () Bool)

(assert (=> b!1536924 (= condSetEmpty!10040 (= (_2!8759 (h!21709 mapValue!7411)) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setIsEmpty!10040 () Bool)

(assert (=> setIsEmpty!10040 setRes!10040))

(declare-fun b!1536925 () Bool)

(declare-fun tp!443623 () Bool)

(assert (=> b!1536925 (= e!983064 tp!443623)))

(assert (= b!1536924 b!1536925))

(assert (= (and b!1536924 condSetEmpty!10040) setIsEmpty!10040))

(assert (= (and b!1536924 (not condSetEmpty!10040)) setNonEmpty!10040))

(assert (= setNonEmpty!10040 b!1536923))

(assert (= (and mapNonEmpty!7411 ((_ is Cons!16308) mapValue!7411)) b!1536924))

(declare-fun m!1812068 () Bool)

(assert (=> setNonEmpty!10040 m!1812068))

(declare-fun m!1812070 () Bool)

(assert (=> b!1536924 m!1812070))

(declare-fun setIsEmpty!10041 () Bool)

(declare-fun setRes!10041 () Bool)

(assert (=> setIsEmpty!10041 setRes!10041))

(declare-fun b!1536927 () Bool)

(declare-fun e!983065 () Bool)

(declare-fun tp!443630 () Bool)

(assert (=> b!1536927 (= e!983065 tp!443630)))

(declare-fun b!1536926 () Bool)

(declare-fun e!983066 () Bool)

(declare-fun tp!443629 () Bool)

(assert (=> b!1536926 (= e!983066 (and setRes!10041 tp!443629))))

(declare-fun condSetEmpty!10041 () Bool)

(assert (=> b!1536926 (= condSetEmpty!10041 (= (_1!8756 (_1!8757 (h!21708 mapDefault!7411))) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> b!1536755 (= tp!443493 e!983066)))

(declare-fun setNonEmpty!10041 () Bool)

(declare-fun tp!443628 () Bool)

(declare-fun setElem!10041 () Context!1418)

(assert (=> setNonEmpty!10041 (= setRes!10041 (and tp!443628 (inv!21571 setElem!10041) e!983065))))

(declare-fun setRest!10041 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10041 (= (_1!8756 (_1!8757 (h!21708 mapDefault!7411))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10041 true) setRest!10041))))

(assert (= (and b!1536926 condSetEmpty!10041) setIsEmpty!10041))

(assert (= (and b!1536926 (not condSetEmpty!10041)) setNonEmpty!10041))

(assert (= setNonEmpty!10041 b!1536927))

(assert (= (and b!1536755 ((_ is Cons!16307) mapDefault!7411)) b!1536926))

(declare-fun m!1812072 () Bool)

(assert (=> setNonEmpty!10041 m!1812072))

(declare-fun b!1536938 () Bool)

(declare-fun b_free!39927 () Bool)

(declare-fun b_next!40631 () Bool)

(assert (=> b!1536938 (= b_free!39927 (not b_next!40631))))

(declare-fun tp!443641 () Bool)

(declare-fun b_and!106805 () Bool)

(assert (=> b!1536938 (= tp!443641 b_and!106805)))

(declare-fun b_free!39929 () Bool)

(declare-fun b_next!40633 () Bool)

(assert (=> b!1536938 (= b_free!39929 (not b_next!40633))))

(declare-fun tp!443642 () Bool)

(declare-fun b_and!106807 () Bool)

(assert (=> b!1536938 (= tp!443642 b_and!106807)))

(declare-fun e!983078 () Bool)

(assert (=> b!1536938 (= e!983078 (and tp!443641 tp!443642))))

(declare-fun e!983077 () Bool)

(declare-fun tp!443640 () Bool)

(declare-fun b!1536937 () Bool)

(assert (=> b!1536937 (= e!983077 (and tp!443640 (inv!21562 (tag!3132 (h!21707 (t!140580 rulesArg!359)))) (inv!21563 (transformation!2868 (h!21707 (t!140580 rulesArg!359)))) e!983078))))

(declare-fun b!1536936 () Bool)

(declare-fun e!983076 () Bool)

(declare-fun tp!443639 () Bool)

(assert (=> b!1536936 (= e!983076 (and e!983077 tp!443639))))

(assert (=> b!1536739 (= tp!443510 e!983076)))

(assert (= b!1536937 b!1536938))

(assert (= b!1536936 b!1536937))

(assert (= (and b!1536739 ((_ is Cons!16306) (t!140580 rulesArg!359))) b!1536936))

(declare-fun m!1812074 () Bool)

(assert (=> b!1536937 m!1812074))

(declare-fun m!1812076 () Bool)

(assert (=> b!1536937 m!1812076))

(declare-fun b!1536939 () Bool)

(declare-fun tp!443643 () Bool)

(declare-fun tp!443645 () Bool)

(declare-fun e!983080 () Bool)

(assert (=> b!1536939 (= e!983080 (and (inv!21568 (left!13440 (c!251566 (totalInput!2354 cacheFurthestNullable!81)))) tp!443643 (inv!21568 (right!13770 (c!251566 (totalInput!2354 cacheFurthestNullable!81)))) tp!443645))))

(declare-fun b!1536941 () Bool)

(declare-fun e!983079 () Bool)

(declare-fun tp!443644 () Bool)

(assert (=> b!1536941 (= e!983079 tp!443644)))

(declare-fun b!1536940 () Bool)

(assert (=> b!1536940 (= e!983080 (and (inv!21572 (xs!8284 (c!251566 (totalInput!2354 cacheFurthestNullable!81)))) e!983079))))

(assert (=> b!1536750 (= tp!443498 (and (inv!21568 (c!251566 (totalInput!2354 cacheFurthestNullable!81))) e!983080))))

(assert (= (and b!1536750 ((_ is Node!5484) (c!251566 (totalInput!2354 cacheFurthestNullable!81)))) b!1536939))

(assert (= b!1536940 b!1536941))

(assert (= (and b!1536750 ((_ is Leaf!8125) (c!251566 (totalInput!2354 cacheFurthestNullable!81)))) b!1536940))

(declare-fun m!1812078 () Bool)

(assert (=> b!1536939 m!1812078))

(declare-fun m!1812080 () Bool)

(assert (=> b!1536939 m!1812080))

(declare-fun m!1812082 () Bool)

(assert (=> b!1536940 m!1812082))

(assert (=> b!1536750 m!1811896))

(declare-fun b!1536952 () Bool)

(declare-fun e!983083 () Bool)

(assert (=> b!1536952 (= e!983083 tp_is_empty!7035)))

(declare-fun b!1536954 () Bool)

(declare-fun tp!443656 () Bool)

(assert (=> b!1536954 (= e!983083 tp!443656)))

(declare-fun b!1536955 () Bool)

(declare-fun tp!443660 () Bool)

(declare-fun tp!443659 () Bool)

(assert (=> b!1536955 (= e!983083 (and tp!443660 tp!443659))))

(assert (=> b!1536731 (= tp!443501 e!983083)))

(declare-fun b!1536953 () Bool)

(declare-fun tp!443657 () Bool)

(declare-fun tp!443658 () Bool)

(assert (=> b!1536953 (= e!983083 (and tp!443657 tp!443658))))

(assert (= (and b!1536731 ((_ is ElementMatch!4191) (regex!2868 (h!21707 rulesArg!359)))) b!1536952))

(assert (= (and b!1536731 ((_ is Concat!7149) (regex!2868 (h!21707 rulesArg!359)))) b!1536953))

(assert (= (and b!1536731 ((_ is Star!4191) (regex!2868 (h!21707 rulesArg!359)))) b!1536954))

(assert (= (and b!1536731 ((_ is Union!4191) (regex!2868 (h!21707 rulesArg!359)))) b!1536955))

(declare-fun tp!443661 () Bool)

(declare-fun e!983085 () Bool)

(declare-fun tp!443663 () Bool)

(declare-fun b!1536956 () Bool)

(assert (=> b!1536956 (= e!983085 (and (inv!21568 (left!13440 (c!251566 input!1460))) tp!443661 (inv!21568 (right!13770 (c!251566 input!1460))) tp!443663))))

(declare-fun b!1536958 () Bool)

(declare-fun e!983084 () Bool)

(declare-fun tp!443662 () Bool)

(assert (=> b!1536958 (= e!983084 tp!443662)))

(declare-fun b!1536957 () Bool)

(assert (=> b!1536957 (= e!983085 (and (inv!21572 (xs!8284 (c!251566 input!1460))) e!983084))))

(assert (=> b!1536758 (= tp!443500 (and (inv!21568 (c!251566 input!1460)) e!983085))))

(assert (= (and b!1536758 ((_ is Node!5484) (c!251566 input!1460))) b!1536956))

(assert (= b!1536957 b!1536958))

(assert (= (and b!1536758 ((_ is Leaf!8125) (c!251566 input!1460))) b!1536957))

(declare-fun m!1812084 () Bool)

(assert (=> b!1536956 m!1812084))

(declare-fun m!1812086 () Bool)

(assert (=> b!1536956 m!1812086))

(declare-fun m!1812088 () Bool)

(assert (=> b!1536957 m!1812088))

(assert (=> b!1536758 m!1811860))

(declare-fun setIsEmpty!10044 () Bool)

(declare-fun setRes!10044 () Bool)

(assert (=> setIsEmpty!10044 setRes!10044))

(declare-fun b!1536967 () Bool)

(declare-fun e!983092 () Bool)

(declare-fun tp!443672 () Bool)

(assert (=> b!1536967 (= e!983092 tp!443672)))

(declare-fun setElem!10044 () Context!1418)

(declare-fun tp!443675 () Bool)

(declare-fun setNonEmpty!10044 () Bool)

(assert (=> setNonEmpty!10044 (= setRes!10044 (and tp!443675 (inv!21571 setElem!10044) e!983092))))

(declare-fun setRest!10044 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10044 (= (_2!8755 (h!21704 (zeroValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10044 true) setRest!10044))))

(declare-fun tp!443674 () Bool)

(declare-fun b!1536968 () Bool)

(declare-fun e!983093 () Bool)

(declare-fun e!983094 () Bool)

(assert (=> b!1536968 (= e!983093 (and (inv!21571 (_1!8754 (_1!8755 (h!21704 (zeroValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))))) e!983094 tp_is_empty!7035 setRes!10044 tp!443674))))

(declare-fun condSetEmpty!10044 () Bool)

(assert (=> b!1536968 (= condSetEmpty!10044 (= (_2!8755 (h!21704 (zeroValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> b!1536723 (= tp!443492 e!983093)))

(declare-fun b!1536969 () Bool)

(declare-fun tp!443673 () Bool)

(assert (=> b!1536969 (= e!983094 tp!443673)))

(assert (= b!1536968 b!1536969))

(assert (= (and b!1536968 condSetEmpty!10044) setIsEmpty!10044))

(assert (= (and b!1536968 (not condSetEmpty!10044)) setNonEmpty!10044))

(assert (= setNonEmpty!10044 b!1536967))

(assert (= (and b!1536723 ((_ is Cons!16303) (zeroValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))) b!1536968))

(declare-fun m!1812090 () Bool)

(assert (=> setNonEmpty!10044 m!1812090))

(declare-fun m!1812092 () Bool)

(assert (=> b!1536968 m!1812092))

(declare-fun setIsEmpty!10045 () Bool)

(declare-fun setRes!10045 () Bool)

(assert (=> setIsEmpty!10045 setRes!10045))

(declare-fun b!1536970 () Bool)

(declare-fun e!983095 () Bool)

(declare-fun tp!443676 () Bool)

(assert (=> b!1536970 (= e!983095 tp!443676)))

(declare-fun setElem!10045 () Context!1418)

(declare-fun setNonEmpty!10045 () Bool)

(declare-fun tp!443679 () Bool)

(assert (=> setNonEmpty!10045 (= setRes!10045 (and tp!443679 (inv!21571 setElem!10045) e!983095))))

(declare-fun setRest!10045 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10045 (= (_2!8755 (h!21704 (minValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10045 true) setRest!10045))))

(declare-fun tp!443678 () Bool)

(declare-fun b!1536971 () Bool)

(declare-fun e!983097 () Bool)

(declare-fun e!983096 () Bool)

(assert (=> b!1536971 (= e!983096 (and (inv!21571 (_1!8754 (_1!8755 (h!21704 (minValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))))) e!983097 tp_is_empty!7035 setRes!10045 tp!443678))))

(declare-fun condSetEmpty!10045 () Bool)

(assert (=> b!1536971 (= condSetEmpty!10045 (= (_2!8755 (h!21704 (minValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> b!1536723 (= tp!443496 e!983096)))

(declare-fun b!1536972 () Bool)

(declare-fun tp!443677 () Bool)

(assert (=> b!1536972 (= e!983097 tp!443677)))

(assert (= b!1536971 b!1536972))

(assert (= (and b!1536971 condSetEmpty!10045) setIsEmpty!10045))

(assert (= (and b!1536971 (not condSetEmpty!10045)) setNonEmpty!10045))

(assert (= setNonEmpty!10045 b!1536970))

(assert (= (and b!1536723 ((_ is Cons!16303) (minValue!1821 (v!23109 (underlying!3337 (v!23110 (underlying!3338 (cache!1889 cacheUp!695)))))))) b!1536971))

(declare-fun m!1812094 () Bool)

(assert (=> setNonEmpty!10045 m!1812094))

(declare-fun m!1812096 () Bool)

(assert (=> b!1536971 m!1812096))

(declare-fun b!1536987 () Bool)

(declare-fun e!983114 () Bool)

(declare-fun tp!443701 () Bool)

(assert (=> b!1536987 (= e!983114 tp!443701)))

(declare-fun setNonEmpty!10050 () Bool)

(declare-fun tp!443698 () Bool)

(declare-fun setElem!10050 () Context!1418)

(declare-fun setRes!10051 () Bool)

(declare-fun e!983113 () Bool)

(assert (=> setNonEmpty!10050 (= setRes!10051 (and tp!443698 (inv!21571 setElem!10050) e!983113))))

(declare-fun mapValue!7421 () List!16371)

(declare-fun setRest!10051 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10050 (= (_2!8755 (h!21704 mapValue!7421)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10050 true) setRest!10051))))

(declare-fun b!1536988 () Bool)

(declare-fun e!983115 () Bool)

(declare-fun e!983110 () Bool)

(declare-fun setRes!10050 () Bool)

(declare-fun mapDefault!7421 () List!16371)

(declare-fun tp!443700 () Bool)

(assert (=> b!1536988 (= e!983110 (and (inv!21571 (_1!8754 (_1!8755 (h!21704 mapDefault!7421)))) e!983115 tp_is_empty!7035 setRes!10050 tp!443700))))

(declare-fun condSetEmpty!10051 () Bool)

(assert (=> b!1536988 (= condSetEmpty!10051 (= (_2!8755 (h!21704 mapDefault!7421)) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun setIsEmpty!10050 () Bool)

(assert (=> setIsEmpty!10050 setRes!10051))

(declare-fun mapNonEmpty!7421 () Bool)

(declare-fun mapRes!7421 () Bool)

(declare-fun tp!443704 () Bool)

(declare-fun e!983111 () Bool)

(assert (=> mapNonEmpty!7421 (= mapRes!7421 (and tp!443704 e!983111))))

(declare-fun mapRest!7421 () (Array (_ BitVec 32) List!16371))

(declare-fun mapKey!7421 () (_ BitVec 32))

(assert (=> mapNonEmpty!7421 (= mapRest!7412 (store mapRest!7421 mapKey!7421 mapValue!7421))))

(declare-fun condMapEmpty!7421 () Bool)

(assert (=> mapNonEmpty!7412 (= condMapEmpty!7421 (= mapRest!7412 ((as const (Array (_ BitVec 32) List!16371)) mapDefault!7421)))))

(assert (=> mapNonEmpty!7412 (= tp!443514 (and e!983110 mapRes!7421))))

(declare-fun b!1536989 () Bool)

(declare-fun tp!443703 () Bool)

(assert (=> b!1536989 (= e!983111 (and (inv!21571 (_1!8754 (_1!8755 (h!21704 mapValue!7421)))) e!983114 tp_is_empty!7035 setRes!10051 tp!443703))))

(declare-fun condSetEmpty!10050 () Bool)

(assert (=> b!1536989 (= condSetEmpty!10050 (= (_2!8755 (h!21704 mapValue!7421)) ((as const (Array Context!1418 Bool)) false)))))

(declare-fun mapIsEmpty!7421 () Bool)

(assert (=> mapIsEmpty!7421 mapRes!7421))

(declare-fun setIsEmpty!10051 () Bool)

(assert (=> setIsEmpty!10051 setRes!10050))

(declare-fun b!1536990 () Bool)

(declare-fun tp!443702 () Bool)

(assert (=> b!1536990 (= e!983113 tp!443702)))

(declare-fun b!1536991 () Bool)

(declare-fun tp!443706 () Bool)

(assert (=> b!1536991 (= e!983115 tp!443706)))

(declare-fun setElem!10051 () Context!1418)

(declare-fun tp!443699 () Bool)

(declare-fun setNonEmpty!10051 () Bool)

(declare-fun e!983112 () Bool)

(assert (=> setNonEmpty!10051 (= setRes!10050 (and tp!443699 (inv!21571 setElem!10051) e!983112))))

(declare-fun setRest!10050 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10051 (= (_2!8755 (h!21704 mapDefault!7421)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10051 true) setRest!10050))))

(declare-fun b!1536992 () Bool)

(declare-fun tp!443705 () Bool)

(assert (=> b!1536992 (= e!983112 tp!443705)))

(assert (= (and mapNonEmpty!7412 condMapEmpty!7421) mapIsEmpty!7421))

(assert (= (and mapNonEmpty!7412 (not condMapEmpty!7421)) mapNonEmpty!7421))

(assert (= b!1536989 b!1536987))

(assert (= (and b!1536989 condSetEmpty!10050) setIsEmpty!10050))

(assert (= (and b!1536989 (not condSetEmpty!10050)) setNonEmpty!10050))

(assert (= setNonEmpty!10050 b!1536990))

(assert (= (and mapNonEmpty!7421 ((_ is Cons!16303) mapValue!7421)) b!1536989))

(assert (= b!1536988 b!1536991))

(assert (= (and b!1536988 condSetEmpty!10051) setIsEmpty!10051))

(assert (= (and b!1536988 (not condSetEmpty!10051)) setNonEmpty!10051))

(assert (= setNonEmpty!10051 b!1536992))

(assert (= (and mapNonEmpty!7412 ((_ is Cons!16303) mapDefault!7421)) b!1536988))

(declare-fun m!1812098 () Bool)

(assert (=> b!1536988 m!1812098))

(declare-fun m!1812100 () Bool)

(assert (=> setNonEmpty!10051 m!1812100))

(declare-fun m!1812102 () Bool)

(assert (=> mapNonEmpty!7421 m!1812102))

(declare-fun m!1812104 () Bool)

(assert (=> b!1536989 m!1812104))

(declare-fun m!1812106 () Bool)

(assert (=> setNonEmpty!10050 m!1812106))

(declare-fun setIsEmpty!10052 () Bool)

(declare-fun setRes!10052 () Bool)

(assert (=> setIsEmpty!10052 setRes!10052))

(declare-fun b!1536993 () Bool)

(declare-fun e!983116 () Bool)

(declare-fun tp!443707 () Bool)

(assert (=> b!1536993 (= e!983116 tp!443707)))

(declare-fun setNonEmpty!10052 () Bool)

(declare-fun tp!443710 () Bool)

(declare-fun setElem!10052 () Context!1418)

(assert (=> setNonEmpty!10052 (= setRes!10052 (and tp!443710 (inv!21571 setElem!10052) e!983116))))

(declare-fun setRest!10052 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10052 (= (_2!8755 (h!21704 mapValue!7412)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10052 true) setRest!10052))))

(declare-fun e!983117 () Bool)

(declare-fun tp!443709 () Bool)

(declare-fun b!1536994 () Bool)

(declare-fun e!983118 () Bool)

(assert (=> b!1536994 (= e!983117 (and (inv!21571 (_1!8754 (_1!8755 (h!21704 mapValue!7412)))) e!983118 tp_is_empty!7035 setRes!10052 tp!443709))))

(declare-fun condSetEmpty!10052 () Bool)

(assert (=> b!1536994 (= condSetEmpty!10052 (= (_2!8755 (h!21704 mapValue!7412)) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> mapNonEmpty!7412 (= tp!443497 e!983117)))

(declare-fun b!1536995 () Bool)

(declare-fun tp!443708 () Bool)

(assert (=> b!1536995 (= e!983118 tp!443708)))

(assert (= b!1536994 b!1536995))

(assert (= (and b!1536994 condSetEmpty!10052) setIsEmpty!10052))

(assert (= (and b!1536994 (not condSetEmpty!10052)) setNonEmpty!10052))

(assert (= setNonEmpty!10052 b!1536993))

(assert (= (and mapNonEmpty!7412 ((_ is Cons!16303) mapValue!7412)) b!1536994))

(declare-fun m!1812108 () Bool)

(assert (=> setNonEmpty!10052 m!1812108))

(declare-fun m!1812110 () Bool)

(assert (=> b!1536994 m!1812110))

(declare-fun setIsEmpty!10053 () Bool)

(declare-fun setRes!10053 () Bool)

(assert (=> setIsEmpty!10053 setRes!10053))

(declare-fun b!1536996 () Bool)

(declare-fun e!983119 () Bool)

(declare-fun tp!443711 () Bool)

(assert (=> b!1536996 (= e!983119 tp!443711)))

(declare-fun tp!443714 () Bool)

(declare-fun setNonEmpty!10053 () Bool)

(declare-fun setElem!10053 () Context!1418)

(assert (=> setNonEmpty!10053 (= setRes!10053 (and tp!443714 (inv!21571 setElem!10053) e!983119))))

(declare-fun setRest!10053 () (InoxSet Context!1418))

(assert (=> setNonEmpty!10053 (= (_2!8755 (h!21704 mapDefault!7412)) ((_ map or) (store ((as const (Array Context!1418 Bool)) false) setElem!10053 true) setRest!10053))))

(declare-fun e!983120 () Bool)

(declare-fun b!1536997 () Bool)

(declare-fun tp!443713 () Bool)

(declare-fun e!983121 () Bool)

(assert (=> b!1536997 (= e!983120 (and (inv!21571 (_1!8754 (_1!8755 (h!21704 mapDefault!7412)))) e!983121 tp_is_empty!7035 setRes!10053 tp!443713))))

(declare-fun condSetEmpty!10053 () Bool)

(assert (=> b!1536997 (= condSetEmpty!10053 (= (_2!8755 (h!21704 mapDefault!7412)) ((as const (Array Context!1418 Bool)) false)))))

(assert (=> b!1536724 (= tp!443507 e!983120)))

(declare-fun b!1536998 () Bool)

(declare-fun tp!443712 () Bool)

(assert (=> b!1536998 (= e!983121 tp!443712)))

(assert (= b!1536997 b!1536998))

(assert (= (and b!1536997 condSetEmpty!10053) setIsEmpty!10053))

(assert (= (and b!1536997 (not condSetEmpty!10053)) setNonEmpty!10053))

(assert (= setNonEmpty!10053 b!1536996))

(assert (= (and b!1536724 ((_ is Cons!16303) mapDefault!7412)) b!1536997))

(declare-fun m!1812112 () Bool)

(assert (=> setNonEmpty!10053 m!1812112))

(declare-fun m!1812114 () Bool)

(assert (=> b!1536997 m!1812114))

(check-sat b_and!106791 (not b!1536844) (not b_next!40629) (not b!1536874) (not b!1536868) (not b!1536898) (not b!1536901) (not b!1536997) (not d!458253) (not b!1536924) (not b!1536988) (not b!1536750) b_and!106801 (not b!1536989) (not b!1536804) (not setNonEmpty!10051) (not setNonEmpty!10022) (not d!458237) (not b_next!40633) (not b!1536899) (not d!458233) (not b!1536890) (not setNonEmpty!10027) (not setNonEmpty!10044) (not b!1536939) (not setNonEmpty!10032) (not setNonEmpty!10041) (not b!1536953) (not b!1536958) (not b!1536871) (not b!1536876) (not b!1536767) (not b!1536998) (not b!1536987) (not setNonEmpty!10038) (not d!458283) b_and!106793 (not b!1536859) (not b!1536803) (not b!1536831) (not b!1536897) (not b_next!40631) b_and!106807 (not b!1536956) (not b!1536797) (not b!1536937) (not d!458245) (not b!1536825) (not setNonEmpty!10021) (not mapNonEmpty!7421) (not b!1536799) (not b!1536870) (not b!1536922) (not b!1536926) (not d!458269) b_and!106797 (not b!1536824) (not setNonEmpty!10028) (not b!1536801) (not setNonEmpty!10052) (not b!1536888) (not b!1536940) (not b!1536927) (not b!1536858) b_and!106799 (not b!1536991) (not b_next!40625) (not b!1536902) (not b_next!40623) (not b!1536873) (not b!1536889) (not b!1536833) (not b!1536845) (not b!1536919) (not b!1536993) (not b!1536737) (not d!458265) (not b!1536936) (not setNonEmpty!10045) (not b!1536827) (not b!1536917) (not d!458243) (not b!1536967) (not b!1536925) (not b!1536923) b_and!106789 (not setNonEmpty!10040) (not setNonEmpty!10033) (not setNonEmpty!10020) (not b!1536920) (not b!1536921) (not b!1536900) (not b!1536772) (not b!1536764) tp_is_empty!7035 (not b!1536957) (not b!1536918) (not b!1536869) (not d!458275) (not mapNonEmpty!7415) (not mapNonEmpty!7418) (not b!1536758) (not b!1536761) (not b!1536830) (not b!1536820) (not setNonEmpty!10039) (not b_next!40621) (not d!458285) (not b!1536994) b_and!106795 (not b_next!40615) (not b!1536996) (not b!1536970) (not b!1536990) (not d!458261) (not b!1536969) (not b!1536800) (not b!1536955) (not b!1536802) (not b!1536972) (not b!1536857) (not d!458259) (not b!1536875) b_and!106803 (not d!458241) (not b!1536992) (not b!1536872) (not b!1536848) (not setNonEmpty!10053) (not b!1536995) (not b!1536843) (not b!1536773) (not b!1536971) b_and!106805 (not d!458287) (not b!1536796) (not b!1536887) (not b!1536954) (not b!1536822) (not b_next!40617) (not b!1536941) (not b_next!40627) (not setNonEmpty!10031) (not b!1536968) (not b_next!40619) (not setNonEmpty!10050) (not b!1536823))
(check-sat b_and!106801 (not b_next!40633) b_and!106791 b_and!106793 b_and!106797 b_and!106789 (not b_next!40615) b_and!106803 (not b_next!40629) (not b_next!40631) b_and!106807 b_and!106799 (not b_next!40625) (not b_next!40623) b_and!106795 (not b_next!40621) (not b_next!40617) b_and!106805 (not b_next!40627) (not b_next!40619))
