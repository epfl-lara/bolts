; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142726 () Bool)

(assert start!142726)

(declare-fun b!1534829 () Bool)

(declare-fun b_free!39679 () Bool)

(declare-fun b_next!40383 () Bool)

(assert (=> b!1534829 (= b_free!39679 (not b_next!40383))))

(declare-fun tp!441948 () Bool)

(declare-fun b_and!106557 () Bool)

(assert (=> b!1534829 (= tp!441948 b_and!106557)))

(declare-fun b!1534833 () Bool)

(declare-fun b_free!39681 () Bool)

(declare-fun b_next!40385 () Bool)

(assert (=> b!1534833 (= b_free!39681 (not b_next!40385))))

(declare-fun tp!441932 () Bool)

(declare-fun b_and!106559 () Bool)

(assert (=> b!1534833 (= tp!441932 b_and!106559)))

(declare-fun b!1534830 () Bool)

(declare-fun b_free!39683 () Bool)

(declare-fun b_next!40387 () Bool)

(assert (=> b!1534830 (= b_free!39683 (not b_next!40387))))

(declare-fun tp!441944 () Bool)

(declare-fun b_and!106561 () Bool)

(assert (=> b!1534830 (= tp!441944 b_and!106561)))

(declare-fun b!1534828 () Bool)

(declare-fun b_free!39685 () Bool)

(declare-fun b_next!40389 () Bool)

(assert (=> b!1534828 (= b_free!39685 (not b_next!40389))))

(declare-fun tp!441946 () Bool)

(declare-fun b_and!106563 () Bool)

(assert (=> b!1534828 (= tp!441946 b_and!106563)))

(declare-fun b!1534834 () Bool)

(declare-fun b_free!39687 () Bool)

(declare-fun b_next!40391 () Bool)

(assert (=> b!1534834 (= b_free!39687 (not b_next!40391))))

(declare-fun tp!441936 () Bool)

(declare-fun b_and!106565 () Bool)

(assert (=> b!1534834 (= tp!441936 b_and!106565)))

(declare-fun b!1534825 () Bool)

(declare-fun b_free!39689 () Bool)

(declare-fun b_next!40393 () Bool)

(assert (=> b!1534825 (= b_free!39689 (not b_next!40393))))

(declare-fun tp!441928 () Bool)

(declare-fun b_and!106567 () Bool)

(assert (=> b!1534825 (= tp!441928 b_and!106567)))

(declare-fun b!1534827 () Bool)

(declare-fun b_free!39691 () Bool)

(declare-fun b_next!40395 () Bool)

(assert (=> b!1534827 (= b_free!39691 (not b_next!40395))))

(declare-fun tp!441938 () Bool)

(declare-fun b_and!106569 () Bool)

(assert (=> b!1534827 (= tp!441938 b_and!106569)))

(declare-fun b_free!39693 () Bool)

(declare-fun b_next!40397 () Bool)

(assert (=> b!1534827 (= b_free!39693 (not b_next!40397))))

(declare-fun tp!441949 () Bool)

(declare-fun b_and!106571 () Bool)

(assert (=> b!1534827 (= tp!441949 b_and!106571)))

(declare-fun b!1534808 () Bool)

(declare-fun e!981173 () Bool)

(declare-fun e!981165 () Bool)

(assert (=> b!1534808 (= e!981173 e!981165)))

(declare-fun mapNonEmpty!7266 () Bool)

(declare-fun mapRes!7267 () Bool)

(declare-fun tp!441935 () Bool)

(declare-fun tp!441942 () Bool)

(assert (=> mapNonEmpty!7266 (= mapRes!7267 (and tp!441935 tp!441942))))

(declare-fun mapKey!7267 () (_ BitVec 32))

(declare-datatypes ((C!8532 0))(
  ( (C!8533 (val!4838 Int)) )
))
(declare-datatypes ((Regex!4177 0))(
  ( (ElementMatch!4177 (c!251527 C!8532)) (Concat!7126 (regOne!8866 Regex!4177) (regTwo!8866 Regex!4177)) (EmptyExpr!4177) (Star!4177 (reg!4506 Regex!4177)) (EmptyLang!4177) (Union!4177 (regOne!8867 Regex!4177) (regTwo!8867 Regex!4177)) )
))
(declare-datatypes ((List!16287 0))(
  ( (Nil!16219) (Cons!16219 (h!21620 Regex!4177) (t!140493 List!16287)) )
))
(declare-datatypes ((Context!1390 0))(
  ( (Context!1391 (exprs!1195 List!16287)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1426 0))(
  ( (tuple3!1427 (_1!8678 (InoxSet Context!1390)) (_2!8678 Int) (_3!1077 Int)) )
))
(declare-datatypes ((tuple2!15202 0))(
  ( (tuple2!15203 (_1!8679 tuple3!1426) (_2!8679 Int)) )
))
(declare-datatypes ((List!16288 0))(
  ( (Nil!16220) (Cons!16220 (h!21621 tuple2!15202) (t!140494 List!16288)) )
))
(declare-fun mapRest!7268 () (Array (_ BitVec 32) List!16288))

(declare-datatypes ((List!16289 0))(
  ( (Nil!16221) (Cons!16221 (h!21622 C!8532) (t!140495 List!16289)) )
))
(declare-datatypes ((IArray!10945 0))(
  ( (IArray!10946 (innerList!5530 List!16289)) )
))
(declare-datatypes ((array!5352 0))(
  ( (array!5353 (arr!2379 (Array (_ BitVec 32) (_ BitVec 64))) (size!13122 (_ BitVec 32))) )
))
(declare-datatypes ((array!5354 0))(
  ( (array!5355 (arr!2380 (Array (_ BitVec 32) List!16288)) (size!13123 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3054 0))(
  ( (LongMapFixedSize!3055 (defaultEntry!1887 Int) (mask!4704 (_ BitVec 32)) (extraKeys!1774 (_ BitVec 32)) (zeroValue!1784 List!16288) (minValue!1784 List!16288) (_size!3135 (_ BitVec 32)) (_keys!1821 array!5352) (_values!1806 array!5354) (_vacant!1588 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1471 0))(
  ( (HashableExt!1470 (__x!10212 Int)) )
))
(declare-datatypes ((Cell!5993 0))(
  ( (Cell!5994 (v!23034 LongMapFixedSize!3054)) )
))
(declare-datatypes ((MutLongMap!1527 0))(
  ( (LongMap!1527 (underlying!3263 Cell!5993)) (MutLongMapExt!1526 (__x!10213 Int)) )
))
(declare-datatypes ((Cell!5995 0))(
  ( (Cell!5996 (v!23035 MutLongMap!1527)) )
))
(declare-datatypes ((MutableMap!1471 0))(
  ( (MutableMapExt!1470 (__x!10214 Int)) (HashMap!1471 (underlying!3264 Cell!5995) (hashF!3390 Hashable!1471) (_size!3136 (_ BitVec 32)) (defaultValue!1631 Int)) )
))
(declare-datatypes ((Conc!5470 0))(
  ( (Node!5470 (left!13415 Conc!5470) (right!13745 Conc!5470) (csize!11170 Int) (cheight!5681 Int)) (Leaf!8104 (xs!8270 IArray!10945) (csize!11171 Int)) (Empty!5470) )
))
(declare-datatypes ((BalanceConc!10882 0))(
  ( (BalanceConc!10883 (c!251528 Conc!5470)) )
))
(declare-datatypes ((CacheFurthestNullable!304 0))(
  ( (CacheFurthestNullable!305 (cache!1852 MutableMap!1471) (totalInput!2340 BalanceConc!10882)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!304)

(declare-fun mapValue!7266 () List!16288)

(assert (=> mapNonEmpty!7266 (= (arr!2380 (_values!1806 (v!23034 (underlying!3263 (v!23035 (underlying!3264 (cache!1852 cacheFurthestNullable!81))))))) (store mapRest!7268 mapKey!7267 mapValue!7266))))

(declare-fun b!1534809 () Bool)

(declare-fun e!981180 () Bool)

(declare-fun tp!441950 () Bool)

(declare-fun mapRes!7266 () Bool)

(assert (=> b!1534809 (= e!981180 (and tp!441950 mapRes!7266))))

(declare-fun condMapEmpty!7266 () Bool)

(declare-datatypes ((tuple3!1428 0))(
  ( (tuple3!1429 (_1!8680 Regex!4177) (_2!8680 Context!1390) (_3!1078 C!8532)) )
))
(declare-datatypes ((tuple2!15204 0))(
  ( (tuple2!15205 (_1!8681 tuple3!1428) (_2!8681 (InoxSet Context!1390))) )
))
(declare-datatypes ((List!16290 0))(
  ( (Nil!16222) (Cons!16222 (h!21623 tuple2!15204) (t!140496 List!16290)) )
))
(declare-datatypes ((array!5356 0))(
  ( (array!5357 (arr!2381 (Array (_ BitVec 32) List!16290)) (size!13124 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3056 0))(
  ( (LongMapFixedSize!3057 (defaultEntry!1888 Int) (mask!4705 (_ BitVec 32)) (extraKeys!1775 (_ BitVec 32)) (zeroValue!1785 List!16290) (minValue!1785 List!16290) (_size!3137 (_ BitVec 32)) (_keys!1822 array!5352) (_values!1807 array!5356) (_vacant!1589 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5997 0))(
  ( (Cell!5998 (v!23036 LongMapFixedSize!3056)) )
))
(declare-datatypes ((MutLongMap!1528 0))(
  ( (LongMap!1528 (underlying!3265 Cell!5997)) (MutLongMapExt!1527 (__x!10215 Int)) )
))
(declare-datatypes ((Cell!5999 0))(
  ( (Cell!6000 (v!23037 MutLongMap!1528)) )
))
(declare-datatypes ((Hashable!1472 0))(
  ( (HashableExt!1471 (__x!10216 Int)) )
))
(declare-datatypes ((MutableMap!1472 0))(
  ( (MutableMapExt!1471 (__x!10217 Int)) (HashMap!1472 (underlying!3266 Cell!5999) (hashF!3391 Hashable!1472) (_size!3138 (_ BitVec 32)) (defaultValue!1632 Int)) )
))
(declare-datatypes ((CacheDown!886 0))(
  ( (CacheDown!887 (cache!1853 MutableMap!1472)) )
))
(declare-fun cacheDown!708 () CacheDown!886)

(declare-fun mapDefault!7267 () List!16290)

(assert (=> b!1534809 (= condMapEmpty!7266 (= (arr!2381 (_values!1807 (v!23036 (underlying!3265 (v!23037 (underlying!3266 (cache!1853 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16290)) mapDefault!7267)))))

(declare-fun b!1534810 () Bool)

(declare-fun e!981167 () Bool)

(declare-fun e!981164 () Bool)

(assert (=> b!1534810 (= e!981167 e!981164)))

(declare-fun b!1534811 () Bool)

(declare-fun e!981171 () Bool)

(declare-fun input!1460 () BalanceConc!10882)

(declare-fun tp!441929 () Bool)

(declare-fun inv!21488 (Conc!5470) Bool)

(assert (=> b!1534811 (= e!981171 (and (inv!21488 (c!251528 input!1460)) tp!441929))))

(declare-fun b!1534812 () Bool)

(declare-fun e!981181 () Bool)

(declare-fun totalInput!496 () BalanceConc!10882)

(declare-fun tp!441940 () Bool)

(assert (=> b!1534812 (= e!981181 (and (inv!21488 (c!251528 totalInput!496)) tp!441940))))

(declare-fun b!1534814 () Bool)

(declare-fun e!981176 () Bool)

(assert (=> b!1534814 (= e!981176 e!981173)))

(declare-fun b!1534815 () Bool)

(declare-fun e!981159 () Bool)

(assert (=> b!1534815 (= e!981159 e!981167)))

(declare-fun b!1534816 () Bool)

(declare-fun res!688445 () Bool)

(declare-fun e!981183 () Bool)

(assert (=> b!1534816 (=> (not res!688445) (not e!981183))))

(declare-datatypes ((tuple2!15206 0))(
  ( (tuple2!15207 (_1!8682 Context!1390) (_2!8682 C!8532)) )
))
(declare-datatypes ((tuple2!15208 0))(
  ( (tuple2!15209 (_1!8683 tuple2!15206) (_2!8683 (InoxSet Context!1390))) )
))
(declare-datatypes ((List!16291 0))(
  ( (Nil!16223) (Cons!16223 (h!21624 tuple2!15208) (t!140497 List!16291)) )
))
(declare-datatypes ((array!5358 0))(
  ( (array!5359 (arr!2382 (Array (_ BitVec 32) List!16291)) (size!13125 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3058 0))(
  ( (LongMapFixedSize!3059 (defaultEntry!1889 Int) (mask!4706 (_ BitVec 32)) (extraKeys!1776 (_ BitVec 32)) (zeroValue!1786 List!16291) (minValue!1786 List!16291) (_size!3139 (_ BitVec 32)) (_keys!1823 array!5352) (_values!1808 array!5358) (_vacant!1590 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6001 0))(
  ( (Cell!6002 (v!23038 LongMapFixedSize!3058)) )
))
(declare-datatypes ((MutLongMap!1529 0))(
  ( (LongMap!1529 (underlying!3267 Cell!6001)) (MutLongMapExt!1528 (__x!10218 Int)) )
))
(declare-datatypes ((Cell!6003 0))(
  ( (Cell!6004 (v!23039 MutLongMap!1529)) )
))
(declare-datatypes ((Hashable!1473 0))(
  ( (HashableExt!1472 (__x!10219 Int)) )
))
(declare-datatypes ((MutableMap!1473 0))(
  ( (MutableMapExt!1472 (__x!10220 Int)) (HashMap!1473 (underlying!3268 Cell!6003) (hashF!3392 Hashable!1473) (_size!3140 (_ BitVec 32)) (defaultValue!1633 Int)) )
))
(declare-datatypes ((CacheUp!880 0))(
  ( (CacheUp!881 (cache!1854 MutableMap!1473)) )
))
(declare-fun cacheUp!695 () CacheUp!880)

(declare-fun valid!1249 (CacheUp!880) Bool)

(assert (=> b!1534816 (= res!688445 (valid!1249 cacheUp!695))))

(declare-fun b!1534817 () Bool)

(declare-fun res!688446 () Bool)

(assert (=> b!1534817 (=> (not res!688446) (not e!981183))))

(declare-datatypes ((List!16292 0))(
  ( (Nil!16224) (Cons!16224 (h!21625 (_ BitVec 16)) (t!140498 List!16292)) )
))
(declare-datatypes ((TokenValue!2949 0))(
  ( (FloatLiteralValue!5898 (text!21088 List!16292)) (TokenValueExt!2948 (__x!10221 Int)) (Broken!14745 (value!91119 List!16292)) (Object!3016) (End!2949) (Def!2949) (Underscore!2949) (Match!2949) (Else!2949) (Error!2949) (Case!2949) (If!2949) (Extends!2949) (Abstract!2949) (Class!2949) (Val!2949) (DelimiterValue!5898 (del!3009 List!16292)) (KeywordValue!2955 (value!91120 List!16292)) (CommentValue!5898 (value!91121 List!16292)) (WhitespaceValue!5898 (value!91122 List!16292)) (IndentationValue!2949 (value!91123 List!16292)) (String!19012) (Int32!2949) (Broken!14746 (value!91124 List!16292)) (Boolean!2950) (Unit!25813) (OperatorValue!2952 (op!3009 List!16292)) (IdentifierValue!5898 (value!91125 List!16292)) (IdentifierValue!5899 (value!91126 List!16292)) (WhitespaceValue!5899 (value!91127 List!16292)) (True!5898) (False!5898) (Broken!14747 (value!91128 List!16292)) (Broken!14748 (value!91129 List!16292)) (True!5899) (RightBrace!2949) (RightBracket!2949) (Colon!2949) (Null!2949) (Comma!2949) (LeftBracket!2949) (False!5899) (LeftBrace!2949) (ImaginaryLiteralValue!2949 (text!21089 List!16292)) (StringLiteralValue!8847 (value!91130 List!16292)) (EOFValue!2949 (value!91131 List!16292)) (IdentValue!2949 (value!91132 List!16292)) (DelimiterValue!5899 (value!91133 List!16292)) (DedentValue!2949 (value!91134 List!16292)) (NewLineValue!2949 (value!91135 List!16292)) (IntegerValue!8847 (value!91136 (_ BitVec 32)) (text!21090 List!16292)) (IntegerValue!8848 (value!91137 Int) (text!21091 List!16292)) (Times!2949) (Or!2949) (Equal!2949) (Minus!2949) (Broken!14749 (value!91138 List!16292)) (And!2949) (Div!2949) (LessEqual!2949) (Mod!2949) (Concat!7127) (Not!2949) (Plus!2949) (SpaceValue!2949 (value!91139 List!16292)) (IntegerValue!8849 (value!91140 Int) (text!21092 List!16292)) (StringLiteralValue!8848 (text!21093 List!16292)) (FloatLiteralValue!5899 (text!21094 List!16292)) (BytesLiteralValue!2949 (value!91141 List!16292)) (CommentValue!5899 (value!91142 List!16292)) (StringLiteralValue!8849 (value!91143 List!16292)) (ErrorTokenValue!2949 (msg!3010 List!16292)) )
))
(declare-datatypes ((String!19013 0))(
  ( (String!19014 (value!91144 String)) )
))
(declare-datatypes ((TokenValueInjection!5558 0))(
  ( (TokenValueInjection!5559 (toValue!4220 Int) (toChars!4079 Int)) )
))
(declare-datatypes ((Rule!5518 0))(
  ( (Rule!5519 (regex!2859 Regex!4177) (tag!3123 String!19013) (isSeparator!2859 Bool) (transformation!2859 TokenValueInjection!5558)) )
))
(declare-datatypes ((List!16293 0))(
  ( (Nil!16225) (Cons!16225 (h!21626 Rule!5518) (t!140499 List!16293)) )
))
(declare-fun rulesArg!359 () List!16293)

(declare-fun isEmpty!9994 (List!16293) Bool)

(assert (=> b!1534817 (= res!688446 (not (isEmpty!9994 rulesArg!359)))))

(declare-fun b!1534818 () Bool)

(declare-fun e!981162 () Bool)

(declare-fun e!981178 () Bool)

(assert (=> b!1534818 (= e!981162 e!981178)))

(declare-fun b!1534819 () Bool)

(declare-fun e!981172 () Bool)

(declare-fun tp!441930 () Bool)

(assert (=> b!1534819 (= e!981172 (and (inv!21488 (c!251528 (totalInput!2340 cacheFurthestNullable!81))) tp!441930))))

(declare-fun b!1534820 () Bool)

(declare-fun e!981175 () Bool)

(declare-fun lt!533100 () MutLongMap!1527)

(get-info :version)

(assert (=> b!1534820 (= e!981175 (and e!981159 ((_ is LongMap!1527) lt!533100)))))

(assert (=> b!1534820 (= lt!533100 (v!23035 (underlying!3264 (cache!1852 cacheFurthestNullable!81))))))

(declare-fun b!1534821 () Bool)

(declare-fun res!688449 () Bool)

(assert (=> b!1534821 (=> (not res!688449) (not e!981183))))

(declare-fun isSuffix!313 (List!16289 List!16289) Bool)

(declare-fun list!6403 (BalanceConc!10882) List!16289)

(assert (=> b!1534821 (= res!688449 (isSuffix!313 (list!6403 input!1460) (list!6403 totalInput!496)))))

(declare-fun mapNonEmpty!7267 () Bool)

(declare-fun tp!441953 () Bool)

(declare-fun tp!441945 () Bool)

(assert (=> mapNonEmpty!7267 (= mapRes!7266 (and tp!441953 tp!441945))))

(declare-fun mapRest!7267 () (Array (_ BitVec 32) List!16290))

(declare-fun mapValue!7267 () List!16290)

(declare-fun mapKey!7268 () (_ BitVec 32))

(assert (=> mapNonEmpty!7267 (= (arr!2381 (_values!1807 (v!23036 (underlying!3265 (v!23037 (underlying!3266 (cache!1853 cacheDown!708))))))) (store mapRest!7267 mapKey!7268 mapValue!7267))))

(declare-fun b!1534822 () Bool)

(declare-fun e!981179 () Bool)

(assert (=> b!1534822 (= e!981179 e!981162)))

(declare-fun b!1534823 () Bool)

(declare-fun e!981168 () Bool)

(declare-fun lt!533102 () MutLongMap!1528)

(assert (=> b!1534823 (= e!981168 (and e!981179 ((_ is LongMap!1528) lt!533102)))))

(assert (=> b!1534823 (= lt!533102 (v!23037 (underlying!3266 (cache!1853 cacheDown!708))))))

(declare-fun b!1534824 () Bool)

(declare-fun e!981161 () Bool)

(declare-fun tp!441934 () Bool)

(declare-fun e!981169 () Bool)

(declare-fun inv!21485 (String!19013) Bool)

(declare-fun inv!21489 (TokenValueInjection!5558) Bool)

(assert (=> b!1534824 (= e!981169 (and tp!441934 (inv!21485 (tag!3123 (h!21626 rulesArg!359))) (inv!21489 (transformation!2859 (h!21626 rulesArg!359))) e!981161))))

(declare-fun e!981184 () Bool)

(declare-fun e!981177 () Bool)

(assert (=> b!1534825 (= e!981184 (and e!981177 tp!441928))))

(declare-fun b!1534826 () Bool)

(declare-fun res!688448 () Bool)

(assert (=> b!1534826 (=> (not res!688448) (not e!981183))))

(declare-datatypes ((LexerInterface!2511 0))(
  ( (LexerInterfaceExt!2508 (__x!10222 Int)) (Lexer!2509) )
))
(declare-fun thiss!15733 () LexerInterface!2511)

(declare-fun rulesValidInductive!866 (LexerInterface!2511 List!16293) Bool)

(assert (=> b!1534826 (= res!688448 (rulesValidInductive!866 thiss!15733 rulesArg!359))))

(declare-fun mapNonEmpty!7268 () Bool)

(declare-fun mapRes!7268 () Bool)

(declare-fun tp!441937 () Bool)

(declare-fun tp!441939 () Bool)

(assert (=> mapNonEmpty!7268 (= mapRes!7268 (and tp!441937 tp!441939))))

(declare-fun mapValue!7268 () List!16291)

(declare-fun mapKey!7266 () (_ BitVec 32))

(declare-fun mapRest!7266 () (Array (_ BitVec 32) List!16291))

(assert (=> mapNonEmpty!7268 (= (arr!2382 (_values!1808 (v!23038 (underlying!3267 (v!23039 (underlying!3268 (cache!1854 cacheUp!695))))))) (store mapRest!7266 mapKey!7266 mapValue!7268))))

(assert (=> b!1534827 (= e!981161 (and tp!441938 tp!441949))))

(declare-fun e!981182 () Bool)

(assert (=> b!1534828 (= e!981182 (and e!981175 tp!441946))))

(declare-fun res!688447 () Bool)

(assert (=> start!142726 (=> (not res!688447) (not e!981183))))

(assert (=> start!142726 (= res!688447 ((_ is Lexer!2509) thiss!15733))))

(assert (=> start!142726 e!981183))

(declare-fun e!981166 () Bool)

(declare-fun inv!21490 (CacheUp!880) Bool)

(assert (=> start!142726 (and (inv!21490 cacheUp!695) e!981166)))

(declare-fun inv!21491 (BalanceConc!10882) Bool)

(assert (=> start!142726 (and (inv!21491 input!1460) e!981171)))

(declare-fun e!981174 () Bool)

(declare-fun inv!21492 (CacheDown!886) Bool)

(assert (=> start!142726 (and (inv!21492 cacheDown!708) e!981174)))

(assert (=> start!142726 true))

(assert (=> start!142726 (and (inv!21491 totalInput!496) e!981181)))

(declare-fun e!981157 () Bool)

(assert (=> start!142726 e!981157))

(declare-fun e!981156 () Bool)

(declare-fun inv!21493 (CacheFurthestNullable!304) Bool)

(assert (=> start!142726 (and (inv!21493 cacheFurthestNullable!81) e!981156)))

(declare-fun b!1534813 () Bool)

(assert (=> b!1534813 (= e!981166 e!981184)))

(declare-fun e!981170 () Bool)

(assert (=> b!1534829 (= e!981170 (and e!981168 tp!441948))))

(declare-fun e!981187 () Bool)

(declare-fun tp!441952 () Bool)

(declare-fun tp!441931 () Bool)

(declare-fun array_inv!1716 (array!5352) Bool)

(declare-fun array_inv!1717 (array!5358) Bool)

(assert (=> b!1534830 (= e!981165 (and tp!441944 tp!441952 tp!441931 (array_inv!1716 (_keys!1823 (v!23038 (underlying!3267 (v!23039 (underlying!3268 (cache!1854 cacheUp!695))))))) (array_inv!1717 (_values!1808 (v!23038 (underlying!3267 (v!23039 (underlying!3268 (cache!1854 cacheUp!695))))))) e!981187))))

(declare-fun b!1534831 () Bool)

(declare-fun tp!441933 () Bool)

(assert (=> b!1534831 (= e!981187 (and tp!441933 mapRes!7268))))

(declare-fun condMapEmpty!7267 () Bool)

(declare-fun mapDefault!7268 () List!16291)

(assert (=> b!1534831 (= condMapEmpty!7267 (= (arr!2382 (_values!1808 (v!23038 (underlying!3267 (v!23039 (underlying!3268 (cache!1854 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16291)) mapDefault!7268)))))

(declare-fun b!1534832 () Bool)

(declare-fun lt!533101 () MutLongMap!1529)

(assert (=> b!1534832 (= e!981177 (and e!981176 ((_ is LongMap!1529) lt!533101)))))

(assert (=> b!1534832 (= lt!533101 (v!23039 (underlying!3268 (cache!1854 cacheUp!695))))))

(declare-fun tp!441927 () Bool)

(declare-fun tp!441951 () Bool)

(declare-fun array_inv!1718 (array!5356) Bool)

(assert (=> b!1534833 (= e!981178 (and tp!441932 tp!441927 tp!441951 (array_inv!1716 (_keys!1822 (v!23036 (underlying!3265 (v!23037 (underlying!3266 (cache!1853 cacheDown!708))))))) (array_inv!1718 (_values!1807 (v!23036 (underlying!3265 (v!23037 (underlying!3266 (cache!1853 cacheDown!708))))))) e!981180))))

(declare-fun mapIsEmpty!7266 () Bool)

(assert (=> mapIsEmpty!7266 mapRes!7267))

(declare-fun tp!441947 () Bool)

(declare-fun tp!441941 () Bool)

(declare-fun e!981186 () Bool)

(declare-fun array_inv!1719 (array!5354) Bool)

(assert (=> b!1534834 (= e!981164 (and tp!441936 tp!441947 tp!441941 (array_inv!1716 (_keys!1821 (v!23034 (underlying!3263 (v!23035 (underlying!3264 (cache!1852 cacheFurthestNullable!81))))))) (array_inv!1719 (_values!1806 (v!23034 (underlying!3263 (v!23035 (underlying!3264 (cache!1852 cacheFurthestNullable!81))))))) e!981186))))

(declare-fun b!1534835 () Bool)

(declare-fun tp!441943 () Bool)

(assert (=> b!1534835 (= e!981157 (and e!981169 tp!441943))))

(declare-fun mapIsEmpty!7267 () Bool)

(assert (=> mapIsEmpty!7267 mapRes!7268))

(declare-fun b!1534836 () Bool)

(assert (=> b!1534836 (= e!981174 e!981170)))

(declare-fun b!1534837 () Bool)

(declare-fun res!688450 () Bool)

(assert (=> b!1534837 (=> (not res!688450) (not e!981183))))

(declare-fun valid!1250 (CacheDown!886) Bool)

(assert (=> b!1534837 (= res!688450 (valid!1250 cacheDown!708))))

(declare-fun b!1534838 () Bool)

(assert (=> b!1534838 (= e!981156 (and e!981182 (inv!21491 (totalInput!2340 cacheFurthestNullable!81)) e!981172))))

(declare-fun mapIsEmpty!7268 () Bool)

(assert (=> mapIsEmpty!7268 mapRes!7266))

(declare-fun b!1534839 () Bool)

(declare-fun tp!441926 () Bool)

(assert (=> b!1534839 (= e!981186 (and tp!441926 mapRes!7267))))

(declare-fun condMapEmpty!7268 () Bool)

(declare-fun mapDefault!7266 () List!16288)

(assert (=> b!1534839 (= condMapEmpty!7268 (= (arr!2380 (_values!1806 (v!23034 (underlying!3263 (v!23035 (underlying!3264 (cache!1852 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16288)) mapDefault!7266)))))

(declare-fun b!1534840 () Bool)

(assert (=> b!1534840 (= e!981183 false)))

(declare-fun lt!533099 () Bool)

(declare-fun valid!1251 (CacheFurthestNullable!304) Bool)

(assert (=> b!1534840 (= lt!533099 (valid!1251 cacheFurthestNullable!81))))

(assert (= (and start!142726 res!688447) b!1534826))

(assert (= (and b!1534826 res!688448) b!1534817))

(assert (= (and b!1534817 res!688446) b!1534821))

(assert (= (and b!1534821 res!688449) b!1534816))

(assert (= (and b!1534816 res!688445) b!1534837))

(assert (= (and b!1534837 res!688450) b!1534840))

(assert (= (and b!1534831 condMapEmpty!7267) mapIsEmpty!7267))

(assert (= (and b!1534831 (not condMapEmpty!7267)) mapNonEmpty!7268))

(assert (= b!1534830 b!1534831))

(assert (= b!1534808 b!1534830))

(assert (= b!1534814 b!1534808))

(assert (= (and b!1534832 ((_ is LongMap!1529) (v!23039 (underlying!3268 (cache!1854 cacheUp!695))))) b!1534814))

(assert (= b!1534825 b!1534832))

(assert (= (and b!1534813 ((_ is HashMap!1473) (cache!1854 cacheUp!695))) b!1534825))

(assert (= start!142726 b!1534813))

(assert (= start!142726 b!1534811))

(assert (= (and b!1534809 condMapEmpty!7266) mapIsEmpty!7268))

(assert (= (and b!1534809 (not condMapEmpty!7266)) mapNonEmpty!7267))

(assert (= b!1534833 b!1534809))

(assert (= b!1534818 b!1534833))

(assert (= b!1534822 b!1534818))

(assert (= (and b!1534823 ((_ is LongMap!1528) (v!23037 (underlying!3266 (cache!1853 cacheDown!708))))) b!1534822))

(assert (= b!1534829 b!1534823))

(assert (= (and b!1534836 ((_ is HashMap!1472) (cache!1853 cacheDown!708))) b!1534829))

(assert (= start!142726 b!1534836))

(assert (= start!142726 b!1534812))

(assert (= b!1534824 b!1534827))

(assert (= b!1534835 b!1534824))

(assert (= (and start!142726 ((_ is Cons!16225) rulesArg!359)) b!1534835))

(assert (= (and b!1534839 condMapEmpty!7268) mapIsEmpty!7266))

(assert (= (and b!1534839 (not condMapEmpty!7268)) mapNonEmpty!7266))

(assert (= b!1534834 b!1534839))

(assert (= b!1534810 b!1534834))

(assert (= b!1534815 b!1534810))

(assert (= (and b!1534820 ((_ is LongMap!1527) (v!23035 (underlying!3264 (cache!1852 cacheFurthestNullable!81))))) b!1534815))

(assert (= b!1534828 b!1534820))

(assert (= (and b!1534838 ((_ is HashMap!1471) (cache!1852 cacheFurthestNullable!81))) b!1534828))

(assert (= b!1534838 b!1534819))

(assert (= start!142726 b!1534838))

(declare-fun m!1810714 () Bool)

(assert (=> b!1534824 m!1810714))

(declare-fun m!1810716 () Bool)

(assert (=> b!1534824 m!1810716))

(declare-fun m!1810718 () Bool)

(assert (=> b!1534837 m!1810718))

(declare-fun m!1810720 () Bool)

(assert (=> b!1534819 m!1810720))

(declare-fun m!1810722 () Bool)

(assert (=> mapNonEmpty!7267 m!1810722))

(declare-fun m!1810724 () Bool)

(assert (=> b!1534817 m!1810724))

(declare-fun m!1810726 () Bool)

(assert (=> b!1534821 m!1810726))

(declare-fun m!1810728 () Bool)

(assert (=> b!1534821 m!1810728))

(assert (=> b!1534821 m!1810726))

(assert (=> b!1534821 m!1810728))

(declare-fun m!1810730 () Bool)

(assert (=> b!1534821 m!1810730))

(declare-fun m!1810732 () Bool)

(assert (=> b!1534816 m!1810732))

(declare-fun m!1810734 () Bool)

(assert (=> b!1534840 m!1810734))

(declare-fun m!1810736 () Bool)

(assert (=> b!1534826 m!1810736))

(declare-fun m!1810738 () Bool)

(assert (=> b!1534812 m!1810738))

(declare-fun m!1810740 () Bool)

(assert (=> b!1534811 m!1810740))

(declare-fun m!1810742 () Bool)

(assert (=> b!1534838 m!1810742))

(declare-fun m!1810744 () Bool)

(assert (=> b!1534834 m!1810744))

(declare-fun m!1810746 () Bool)

(assert (=> b!1534834 m!1810746))

(declare-fun m!1810748 () Bool)

(assert (=> mapNonEmpty!7266 m!1810748))

(declare-fun m!1810750 () Bool)

(assert (=> b!1534830 m!1810750))

(declare-fun m!1810752 () Bool)

(assert (=> b!1534830 m!1810752))

(declare-fun m!1810754 () Bool)

(assert (=> mapNonEmpty!7268 m!1810754))

(declare-fun m!1810756 () Bool)

(assert (=> start!142726 m!1810756))

(declare-fun m!1810758 () Bool)

(assert (=> start!142726 m!1810758))

(declare-fun m!1810760 () Bool)

(assert (=> start!142726 m!1810760))

(declare-fun m!1810762 () Bool)

(assert (=> start!142726 m!1810762))

(declare-fun m!1810764 () Bool)

(assert (=> start!142726 m!1810764))

(declare-fun m!1810766 () Bool)

(assert (=> b!1534833 m!1810766))

(declare-fun m!1810768 () Bool)

(assert (=> b!1534833 m!1810768))

(check-sat (not b_next!40393) (not b_next!40395) (not b_next!40389) (not b!1534831) b_and!106563 b_and!106557 b_and!106571 (not start!142726) (not b!1534824) (not b!1534821) (not b!1534812) (not mapNonEmpty!7268) (not b!1534838) (not b_next!40397) b_and!106559 b_and!106567 (not b!1534830) (not b!1534834) (not b!1534835) (not b!1534837) (not b_next!40385) (not b_next!40391) b_and!106561 (not b!1534819) (not b_next!40383) (not b_next!40387) (not b!1534811) (not b!1534833) b_and!106569 (not mapNonEmpty!7266) (not b!1534817) (not b!1534816) (not b!1534826) (not b!1534840) (not mapNonEmpty!7267) (not b!1534809) b_and!106565 (not b!1534839))
(check-sat (not b_next!40393) (not b_next!40395) (not b_next!40397) (not b_next!40389) b_and!106561 b_and!106563 b_and!106557 b_and!106571 b_and!106569 b_and!106565 b_and!106559 b_and!106567 (not b_next!40385) (not b_next!40391) (not b_next!40383) (not b_next!40387))
