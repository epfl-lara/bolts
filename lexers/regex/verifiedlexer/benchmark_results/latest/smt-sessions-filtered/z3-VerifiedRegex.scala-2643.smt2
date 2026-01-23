; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142934 () Bool)

(assert start!142934)

(declare-fun b!1537906 () Bool)

(declare-fun b_free!40015 () Bool)

(declare-fun b_next!40719 () Bool)

(assert (=> b!1537906 (= b_free!40015 (not b_next!40719))))

(declare-fun tp!444390 () Bool)

(declare-fun b_and!106893 () Bool)

(assert (=> b!1537906 (= tp!444390 b_and!106893)))

(declare-fun b!1537897 () Bool)

(declare-fun b_free!40017 () Bool)

(declare-fun b_next!40721 () Bool)

(assert (=> b!1537897 (= b_free!40017 (not b_next!40721))))

(declare-fun tp!444395 () Bool)

(declare-fun b_and!106895 () Bool)

(assert (=> b!1537897 (= tp!444395 b_and!106895)))

(declare-fun b_free!40019 () Bool)

(declare-fun b_next!40723 () Bool)

(assert (=> b!1537897 (= b_free!40019 (not b_next!40723))))

(declare-fun tp!444401 () Bool)

(declare-fun b_and!106897 () Bool)

(assert (=> b!1537897 (= tp!444401 b_and!106897)))

(declare-fun b!1537909 () Bool)

(declare-fun b_free!40021 () Bool)

(declare-fun b_next!40725 () Bool)

(assert (=> b!1537909 (= b_free!40021 (not b_next!40725))))

(declare-fun tp!444387 () Bool)

(declare-fun b_and!106899 () Bool)

(assert (=> b!1537909 (= tp!444387 b_and!106899)))

(declare-fun b!1537899 () Bool)

(declare-fun b_free!40023 () Bool)

(declare-fun b_next!40727 () Bool)

(assert (=> b!1537899 (= b_free!40023 (not b_next!40727))))

(declare-fun tp!444408 () Bool)

(declare-fun b_and!106901 () Bool)

(assert (=> b!1537899 (= tp!444408 b_and!106901)))

(declare-fun b!1537902 () Bool)

(declare-fun b_free!40025 () Bool)

(declare-fun b_next!40729 () Bool)

(assert (=> b!1537902 (= b_free!40025 (not b_next!40729))))

(declare-fun tp!444413 () Bool)

(declare-fun b_and!106903 () Bool)

(assert (=> b!1537902 (= tp!444413 b_and!106903)))

(declare-fun b!1537886 () Bool)

(declare-fun b_free!40027 () Bool)

(declare-fun b_next!40731 () Bool)

(assert (=> b!1537886 (= b_free!40027 (not b_next!40731))))

(declare-fun tp!444412 () Bool)

(declare-fun b_and!106905 () Bool)

(assert (=> b!1537886 (= tp!444412 b_and!106905)))

(declare-fun b!1537913 () Bool)

(declare-fun b_free!40029 () Bool)

(declare-fun b_next!40733 () Bool)

(assert (=> b!1537913 (= b_free!40029 (not b_next!40733))))

(declare-fun tp!444393 () Bool)

(declare-fun b_and!106907 () Bool)

(assert (=> b!1537913 (= tp!444393 b_and!106907)))

(declare-fun b!1537877 () Bool)

(declare-fun e!983922 () Bool)

(declare-fun tp!444394 () Bool)

(declare-fun mapRes!7482 () Bool)

(assert (=> b!1537877 (= e!983922 (and tp!444394 mapRes!7482))))

(declare-fun condMapEmpty!7482 () Bool)

(declare-datatypes ((C!8572 0))(
  ( (C!8573 (val!4858 Int)) )
))
(declare-datatypes ((Regex!4197 0))(
  ( (ElementMatch!4197 (c!251595 C!8572)) (Concat!7160 (regOne!8906 Regex!4197) (regTwo!8906 Regex!4197)) (EmptyExpr!4197) (Star!4197 (reg!4526 Regex!4197)) (EmptyLang!4197) (Union!4197 (regOne!8907 Regex!4197) (regTwo!8907 Regex!4197)) )
))
(declare-datatypes ((List!16410 0))(
  ( (Nil!16342) (Cons!16342 (h!21743 Regex!4197) (t!140616 List!16410)) )
))
(declare-datatypes ((Context!1430 0))(
  ( (Context!1431 (exprs!1215 List!16410)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1502 0))(
  ( (tuple3!1503 (_1!8806 (InoxSet Context!1430)) (_2!8806 Int) (_3!1122 Int)) )
))
(declare-datatypes ((tuple2!15368 0))(
  ( (tuple2!15369 (_1!8807 tuple3!1502) (_2!8807 Int)) )
))
(declare-datatypes ((List!16411 0))(
  ( (Nil!16343) (Cons!16343 (h!21744 tuple2!15368) (t!140617 List!16411)) )
))
(declare-datatypes ((List!16412 0))(
  ( (Nil!16344) (Cons!16344 (h!21745 C!8572) (t!140618 List!16412)) )
))
(declare-datatypes ((IArray!10985 0))(
  ( (IArray!10986 (innerList!5550 List!16412)) )
))
(declare-datatypes ((array!5518 0))(
  ( (array!5519 (arr!2454 (Array (_ BitVec 32) (_ BitVec 64))) (size!13208 (_ BitVec 32))) )
))
(declare-datatypes ((array!5520 0))(
  ( (array!5521 (arr!2455 (Array (_ BitVec 32) List!16411)) (size!13209 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3164 0))(
  ( (LongMapFixedSize!3165 (defaultEntry!1942 Int) (mask!4769 (_ BitVec 32)) (extraKeys!1829 (_ BitVec 32)) (zeroValue!1839 List!16411) (minValue!1839 List!16411) (_size!3245 (_ BitVec 32)) (_keys!1876 array!5518) (_values!1861 array!5520) (_vacant!1643 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1526 0))(
  ( (HashableExt!1525 (__x!10404 Int)) )
))
(declare-datatypes ((Cell!6213 0))(
  ( (Cell!6214 (v!23151 LongMapFixedSize!3164)) )
))
(declare-datatypes ((MutLongMap!1582 0))(
  ( (LongMap!1582 (underlying!3373 Cell!6213)) (MutLongMapExt!1581 (__x!10405 Int)) )
))
(declare-datatypes ((Cell!6215 0))(
  ( (Cell!6216 (v!23152 MutLongMap!1582)) )
))
(declare-datatypes ((MutableMap!1526 0))(
  ( (MutableMapExt!1525 (__x!10406 Int)) (HashMap!1526 (underlying!3374 Cell!6215) (hashF!3445 Hashable!1526) (_size!3246 (_ BitVec 32)) (defaultValue!1686 Int)) )
))
(declare-datatypes ((Conc!5490 0))(
  ( (Node!5490 (left!13453 Conc!5490) (right!13783 Conc!5490) (csize!11210 Int) (cheight!5701 Int)) (Leaf!8134 (xs!8290 IArray!10985) (csize!11211 Int)) (Empty!5490) )
))
(declare-datatypes ((BalanceConc!10922 0))(
  ( (BalanceConc!10923 (c!251596 Conc!5490)) )
))
(declare-datatypes ((CacheFurthestNullable!344 0))(
  ( (CacheFurthestNullable!345 (cache!1907 MutableMap!1526) (totalInput!2362 BalanceConc!10922)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!344)

(declare-fun mapDefault!7484 () List!16411)

(assert (=> b!1537877 (= condMapEmpty!7482 (= (arr!2455 (_values!1861 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16411)) mapDefault!7484)))))

(declare-fun b!1537878 () Bool)

(declare-fun e!983921 () Bool)

(declare-fun e!983918 () Bool)

(declare-datatypes ((tuple2!15370 0))(
  ( (tuple2!15371 (_1!8808 Context!1430) (_2!8808 C!8572)) )
))
(declare-datatypes ((tuple2!15372 0))(
  ( (tuple2!15373 (_1!8809 tuple2!15370) (_2!8809 (InoxSet Context!1430))) )
))
(declare-datatypes ((List!16413 0))(
  ( (Nil!16345) (Cons!16345 (h!21746 tuple2!15372) (t!140619 List!16413)) )
))
(declare-datatypes ((array!5522 0))(
  ( (array!5523 (arr!2456 (Array (_ BitVec 32) List!16413)) (size!13210 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3166 0))(
  ( (LongMapFixedSize!3167 (defaultEntry!1943 Int) (mask!4770 (_ BitVec 32)) (extraKeys!1830 (_ BitVec 32)) (zeroValue!1840 List!16413) (minValue!1840 List!16413) (_size!3247 (_ BitVec 32)) (_keys!1877 array!5518) (_values!1862 array!5522) (_vacant!1644 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6217 0))(
  ( (Cell!6218 (v!23153 LongMapFixedSize!3166)) )
))
(declare-datatypes ((MutLongMap!1583 0))(
  ( (LongMap!1583 (underlying!3375 Cell!6217)) (MutLongMapExt!1582 (__x!10407 Int)) )
))
(declare-fun lt!533557 () MutLongMap!1583)

(get-info :version)

(assert (=> b!1537878 (= e!983921 (and e!983918 ((_ is LongMap!1583) lt!533557)))))

(declare-datatypes ((Cell!6219 0))(
  ( (Cell!6220 (v!23154 MutLongMap!1583)) )
))
(declare-datatypes ((Hashable!1527 0))(
  ( (HashableExt!1526 (__x!10408 Int)) )
))
(declare-datatypes ((MutableMap!1527 0))(
  ( (MutableMapExt!1526 (__x!10409 Int)) (HashMap!1527 (underlying!3376 Cell!6219) (hashF!3446 Hashable!1527) (_size!3248 (_ BitVec 32)) (defaultValue!1687 Int)) )
))
(declare-datatypes ((CacheUp!914 0))(
  ( (CacheUp!915 (cache!1908 MutableMap!1527)) )
))
(declare-fun cacheUp!695 () CacheUp!914)

(assert (=> b!1537878 (= lt!533557 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))

(declare-fun mapNonEmpty!7482 () Bool)

(declare-fun mapRes!7483 () Bool)

(declare-fun tp!444396 () Bool)

(declare-fun tp!444400 () Bool)

(assert (=> mapNonEmpty!7482 (= mapRes!7483 (and tp!444396 tp!444400))))

(declare-fun mapKey!7484 () (_ BitVec 32))

(declare-fun mapValue!7483 () List!16413)

(declare-fun mapRest!7484 () (Array (_ BitVec 32) List!16413))

(assert (=> mapNonEmpty!7482 (= (arr!2456 (_values!1862 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) (store mapRest!7484 mapKey!7484 mapValue!7483))))

(declare-fun b!1537879 () Bool)

(declare-fun res!689244 () Bool)

(declare-fun e!983920 () Bool)

(assert (=> b!1537879 (=> (not res!689244) (not e!983920))))

(declare-fun valid!1287 (CacheUp!914) Bool)

(assert (=> b!1537879 (= res!689244 (valid!1287 cacheUp!695))))

(declare-fun b!1537880 () Bool)

(declare-fun e!983924 () Bool)

(declare-fun e!983910 () Bool)

(assert (=> b!1537880 (= e!983924 e!983910)))

(declare-fun mapNonEmpty!7483 () Bool)

(declare-fun tp!444402 () Bool)

(declare-fun tp!444388 () Bool)

(assert (=> mapNonEmpty!7483 (= mapRes!7482 (and tp!444402 tp!444388))))

(declare-fun mapRest!7482 () (Array (_ BitVec 32) List!16411))

(declare-fun mapKey!7483 () (_ BitVec 32))

(declare-fun mapValue!7484 () List!16411)

(assert (=> mapNonEmpty!7483 (= (arr!2455 (_values!1861 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) (store mapRest!7482 mapKey!7483 mapValue!7484))))

(declare-fun b!1537881 () Bool)

(declare-fun e!983917 () Bool)

(declare-fun e!983913 () Bool)

(assert (=> b!1537881 (= e!983917 e!983913)))

(declare-fun b!1537882 () Bool)

(declare-fun res!689240 () Bool)

(assert (=> b!1537882 (=> (not res!689240) (not e!983920))))

(declare-datatypes ((tuple3!1504 0))(
  ( (tuple3!1505 (_1!8810 Regex!4197) (_2!8810 Context!1430) (_3!1123 C!8572)) )
))
(declare-datatypes ((tuple2!15374 0))(
  ( (tuple2!15375 (_1!8811 tuple3!1504) (_2!8811 (InoxSet Context!1430))) )
))
(declare-datatypes ((List!16414 0))(
  ( (Nil!16346) (Cons!16346 (h!21747 tuple2!15374) (t!140620 List!16414)) )
))
(declare-datatypes ((array!5524 0))(
  ( (array!5525 (arr!2457 (Array (_ BitVec 32) List!16414)) (size!13211 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3168 0))(
  ( (LongMapFixedSize!3169 (defaultEntry!1944 Int) (mask!4771 (_ BitVec 32)) (extraKeys!1831 (_ BitVec 32)) (zeroValue!1841 List!16414) (minValue!1841 List!16414) (_size!3249 (_ BitVec 32)) (_keys!1878 array!5518) (_values!1863 array!5524) (_vacant!1645 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6221 0))(
  ( (Cell!6222 (v!23155 LongMapFixedSize!3168)) )
))
(declare-datatypes ((MutLongMap!1584 0))(
  ( (LongMap!1584 (underlying!3377 Cell!6221)) (MutLongMapExt!1583 (__x!10410 Int)) )
))
(declare-datatypes ((Cell!6223 0))(
  ( (Cell!6224 (v!23156 MutLongMap!1584)) )
))
(declare-datatypes ((Hashable!1528 0))(
  ( (HashableExt!1527 (__x!10411 Int)) )
))
(declare-datatypes ((MutableMap!1528 0))(
  ( (MutableMapExt!1527 (__x!10412 Int)) (HashMap!1528 (underlying!3378 Cell!6223) (hashF!3447 Hashable!1528) (_size!3250 (_ BitVec 32)) (defaultValue!1688 Int)) )
))
(declare-datatypes ((CacheDown!922 0))(
  ( (CacheDown!923 (cache!1909 MutableMap!1528)) )
))
(declare-fun cacheDown!708 () CacheDown!922)

(declare-fun valid!1288 (CacheDown!922) Bool)

(assert (=> b!1537882 (= res!689240 (valid!1288 cacheDown!708))))

(declare-fun b!1537883 () Bool)

(declare-fun e!983909 () Bool)

(declare-fun e!983905 () Bool)

(declare-fun tp!444386 () Bool)

(assert (=> b!1537883 (= e!983909 (and e!983905 tp!444386))))

(declare-fun b!1537884 () Bool)

(declare-fun e!983915 () Bool)

(declare-fun e!983926 () Bool)

(assert (=> b!1537884 (= e!983915 e!983926)))

(declare-fun b!1537885 () Bool)

(declare-fun e!983906 () Bool)

(declare-fun e!983933 () Bool)

(assert (=> b!1537885 (= e!983906 e!983933)))

(declare-fun tp!444398 () Bool)

(declare-fun tp!444410 () Bool)

(declare-fun e!983932 () Bool)

(declare-fun array_inv!1766 (array!5518) Bool)

(declare-fun array_inv!1767 (array!5524) Bool)

(assert (=> b!1537886 (= e!983933 (and tp!444412 tp!444398 tp!444410 (array_inv!1766 (_keys!1878 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) (array_inv!1767 (_values!1863 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) e!983932))))

(declare-fun b!1537887 () Bool)

(declare-fun e!983911 () Bool)

(assert (=> b!1537887 (= e!983920 (not e!983911))))

(declare-fun res!689237 () Bool)

(assert (=> b!1537887 (=> res!689237 e!983911)))

(declare-datatypes ((List!16415 0))(
  ( (Nil!16347) (Cons!16347 (h!21748 (_ BitVec 16)) (t!140621 List!16415)) )
))
(declare-datatypes ((TokenValue!2963 0))(
  ( (FloatLiteralValue!5926 (text!21186 List!16415)) (TokenValueExt!2962 (__x!10413 Int)) (Broken!14815 (value!91518 List!16415)) (Object!3030) (End!2963) (Def!2963) (Underscore!2963) (Match!2963) (Else!2963) (Error!2963) (Case!2963) (If!2963) (Extends!2963) (Abstract!2963) (Class!2963) (Val!2963) (DelimiterValue!5926 (del!3023 List!16415)) (KeywordValue!2969 (value!91519 List!16415)) (CommentValue!5926 (value!91520 List!16415)) (WhitespaceValue!5926 (value!91521 List!16415)) (IndentationValue!2963 (value!91522 List!16415)) (String!19094) (Int32!2963) (Broken!14816 (value!91523 List!16415)) (Boolean!2964) (Unit!25849) (OperatorValue!2966 (op!3023 List!16415)) (IdentifierValue!5926 (value!91524 List!16415)) (IdentifierValue!5927 (value!91525 List!16415)) (WhitespaceValue!5927 (value!91526 List!16415)) (True!5926) (False!5926) (Broken!14817 (value!91527 List!16415)) (Broken!14818 (value!91528 List!16415)) (True!5927) (RightBrace!2963) (RightBracket!2963) (Colon!2963) (Null!2963) (Comma!2963) (LeftBracket!2963) (False!5927) (LeftBrace!2963) (ImaginaryLiteralValue!2963 (text!21187 List!16415)) (StringLiteralValue!8889 (value!91529 List!16415)) (EOFValue!2963 (value!91530 List!16415)) (IdentValue!2963 (value!91531 List!16415)) (DelimiterValue!5927 (value!91532 List!16415)) (DedentValue!2963 (value!91533 List!16415)) (NewLineValue!2963 (value!91534 List!16415)) (IntegerValue!8889 (value!91535 (_ BitVec 32)) (text!21188 List!16415)) (IntegerValue!8890 (value!91536 Int) (text!21189 List!16415)) (Times!2963) (Or!2963) (Equal!2963) (Minus!2963) (Broken!14819 (value!91537 List!16415)) (And!2963) (Div!2963) (LessEqual!2963) (Mod!2963) (Concat!7161) (Not!2963) (Plus!2963) (SpaceValue!2963 (value!91538 List!16415)) (IntegerValue!8891 (value!91539 Int) (text!21190 List!16415)) (StringLiteralValue!8890 (text!21191 List!16415)) (FloatLiteralValue!5927 (text!21192 List!16415)) (BytesLiteralValue!2963 (value!91540 List!16415)) (CommentValue!5927 (value!91541 List!16415)) (StringLiteralValue!8891 (value!91542 List!16415)) (ErrorTokenValue!2963 (msg!3024 List!16415)) )
))
(declare-datatypes ((String!19095 0))(
  ( (String!19096 (value!91543 String)) )
))
(declare-datatypes ((TokenValueInjection!5586 0))(
  ( (TokenValueInjection!5587 (toValue!4234 Int) (toChars!4093 Int)) )
))
(declare-datatypes ((Rule!5546 0))(
  ( (Rule!5547 (regex!2873 Regex!4197) (tag!3137 String!19095) (isSeparator!2873 Bool) (transformation!2873 TokenValueInjection!5586)) )
))
(declare-datatypes ((List!16416 0))(
  ( (Nil!16348) (Cons!16348 (h!21749 Rule!5546) (t!140622 List!16416)) )
))
(declare-fun rulesArg!359 () List!16416)

(assert (=> b!1537887 (= res!689237 (or (and ((_ is Cons!16348) rulesArg!359) ((_ is Nil!16348) (t!140622 rulesArg!359))) (not ((_ is Cons!16348) rulesArg!359))))))

(declare-fun lt!533555 () List!16412)

(declare-fun isPrefix!1238 (List!16412 List!16412) Bool)

(assert (=> b!1537887 (isPrefix!1238 lt!533555 lt!533555)))

(declare-datatypes ((Unit!25850 0))(
  ( (Unit!25851) )
))
(declare-fun lt!533559 () Unit!25850)

(declare-fun lemmaIsPrefixRefl!868 (List!16412 List!16412) Unit!25850)

(assert (=> b!1537887 (= lt!533559 (lemmaIsPrefixRefl!868 lt!533555 lt!533555))))

(declare-fun b!1537888 () Bool)

(declare-fun res!689233 () Bool)

(declare-fun e!983928 () Bool)

(assert (=> b!1537888 (=> (not res!689233) (not e!983928))))

(declare-fun isEmpty!10010 (List!16416) Bool)

(assert (=> b!1537888 (= res!689233 (not (isEmpty!10010 rulesArg!359)))))

(declare-fun b!1537889 () Bool)

(declare-fun e!983912 () Bool)

(assert (=> b!1537889 (= e!983911 e!983912)))

(declare-fun res!689241 () Bool)

(assert (=> b!1537889 (=> res!689241 e!983912)))

(declare-datatypes ((LexerInterface!2524 0))(
  ( (LexerInterfaceExt!2521 (__x!10414 Int)) (Lexer!2522) )
))
(declare-fun thiss!15733 () LexerInterface!2524)

(declare-fun rulesValidInductive!877 (LexerInterface!2524 List!16416) Bool)

(assert (=> b!1537889 (= res!689241 (not (rulesValidInductive!877 thiss!15733 (t!140622 rulesArg!359))))))

(declare-fun input!1460 () BalanceConc!10922)

(declare-datatypes ((Token!5388 0))(
  ( (Token!5389 (value!91544 TokenValue!2963) (rule!4676 Rule!5546) (size!13212 Int) (originalCharacters!3725 List!16412)) )
))
(declare-datatypes ((tuple2!15376 0))(
  ( (tuple2!15377 (_1!8812 Token!5388) (_2!8812 BalanceConc!10922)) )
))
(declare-datatypes ((Option!2958 0))(
  ( (None!2957) (Some!2957 (v!23157 tuple2!15376)) )
))
(declare-datatypes ((tuple4!742 0))(
  ( (tuple4!743 (_1!8813 Option!2958) (_2!8813 CacheUp!914) (_3!1124 CacheDown!922) (_4!371 CacheFurthestNullable!344)) )
))
(declare-fun lt!533560 () tuple4!742)

(declare-fun totalInput!496 () BalanceConc!10922)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!23 (LexerInterface!2524 Rule!5546 BalanceConc!10922 BalanceConc!10922 CacheUp!914 CacheDown!922 CacheFurthestNullable!344) tuple4!742)

(assert (=> b!1537889 (= lt!533560 (maxPrefixOneRuleZipperSequenceV3Mem!23 thiss!15733 (h!21749 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1537890 () Bool)

(declare-fun res!689235 () Bool)

(assert (=> b!1537890 (=> (not res!689235) (not e!983928))))

(assert (=> b!1537890 (= res!689235 (rulesValidInductive!877 thiss!15733 rulesArg!359))))

(declare-fun res!689236 () Bool)

(assert (=> start!142934 (=> (not res!689236) (not e!983928))))

(assert (=> start!142934 (= res!689236 ((_ is Lexer!2522) thiss!15733))))

(assert (=> start!142934 e!983928))

(declare-fun e!983900 () Bool)

(declare-fun inv!21609 (CacheUp!914) Bool)

(assert (=> start!142934 (and (inv!21609 cacheUp!695) e!983900)))

(declare-fun e!983903 () Bool)

(declare-fun inv!21610 (BalanceConc!10922) Bool)

(assert (=> start!142934 (and (inv!21610 input!1460) e!983903)))

(declare-fun inv!21611 (CacheDown!922) Bool)

(assert (=> start!142934 (and (inv!21611 cacheDown!708) e!983915)))

(assert (=> start!142934 true))

(declare-fun e!983935 () Bool)

(assert (=> start!142934 (and (inv!21610 totalInput!496) e!983935)))

(assert (=> start!142934 e!983909))

(declare-fun e!983927 () Bool)

(declare-fun inv!21612 (CacheFurthestNullable!344) Bool)

(assert (=> start!142934 (and (inv!21612 cacheFurthestNullable!81) e!983927)))

(declare-fun mapIsEmpty!7482 () Bool)

(assert (=> mapIsEmpty!7482 mapRes!7483))

(declare-fun b!1537891 () Bool)

(assert (=> b!1537891 (= e!983918 e!983924)))

(declare-fun b!1537892 () Bool)

(declare-fun tp!444411 () Bool)

(declare-fun mapRes!7484 () Bool)

(assert (=> b!1537892 (= e!983932 (and tp!444411 mapRes!7484))))

(declare-fun condMapEmpty!7483 () Bool)

(declare-fun mapDefault!7482 () List!16414)

(assert (=> b!1537892 (= condMapEmpty!7483 (= (arr!2457 (_values!1863 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16414)) mapDefault!7482)))))

(declare-fun b!1537893 () Bool)

(assert (=> b!1537893 (= e!983928 e!983920)))

(declare-fun res!689239 () Bool)

(assert (=> b!1537893 (=> (not res!689239) (not e!983920))))

(declare-fun isSuffix!323 (List!16412 List!16412) Bool)

(declare-fun list!6417 (BalanceConc!10922) List!16412)

(assert (=> b!1537893 (= res!689239 (isSuffix!323 lt!533555 (list!6417 totalInput!496)))))

(assert (=> b!1537893 (= lt!533555 (list!6417 input!1460))))

(declare-fun b!1537894 () Bool)

(declare-fun e!983908 () Bool)

(declare-fun e!983930 () Bool)

(declare-fun lt!533558 () MutLongMap!1584)

(assert (=> b!1537894 (= e!983908 (and e!983930 ((_ is LongMap!1584) lt!533558)))))

(assert (=> b!1537894 (= lt!533558 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))

(declare-fun b!1537895 () Bool)

(assert (=> b!1537895 (= e!983930 e!983906)))

(declare-fun b!1537896 () Bool)

(declare-fun res!689234 () Bool)

(assert (=> b!1537896 (=> (not res!689234) (not e!983920))))

(declare-fun valid!1289 (CacheFurthestNullable!344) Bool)

(assert (=> b!1537896 (= res!689234 (valid!1289 cacheFurthestNullable!81))))

(declare-fun e!983934 () Bool)

(assert (=> b!1537897 (= e!983934 (and tp!444395 tp!444401))))

(declare-fun b!1537898 () Bool)

(declare-fun e!983914 () Bool)

(assert (=> b!1537898 (= e!983912 e!983914)))

(declare-fun res!689232 () Bool)

(assert (=> b!1537898 (=> (not res!689232) (not e!983914))))

(assert (=> b!1537898 (= res!689232 (valid!1287 (_2!8813 lt!533560)))))

(declare-fun e!983925 () Bool)

(assert (=> b!1537899 (= e!983925 (and e!983921 tp!444408))))

(declare-fun b!1537900 () Bool)

(declare-fun res!689238 () Bool)

(assert (=> b!1537900 (=> (not res!689238) (not e!983914))))

(assert (=> b!1537900 (= res!689238 (valid!1288 (_3!1124 lt!533560)))))

(declare-fun mapNonEmpty!7484 () Bool)

(declare-fun tp!444403 () Bool)

(declare-fun tp!444409 () Bool)

(assert (=> mapNonEmpty!7484 (= mapRes!7484 (and tp!444403 tp!444409))))

(declare-fun mapRest!7483 () (Array (_ BitVec 32) List!16414))

(declare-fun mapKey!7482 () (_ BitVec 32))

(declare-fun mapValue!7482 () List!16414)

(assert (=> mapNonEmpty!7484 (= (arr!2457 (_values!1863 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) (store mapRest!7483 mapKey!7482 mapValue!7482))))

(declare-fun b!1537901 () Bool)

(assert (=> b!1537901 (= e!983914 (valid!1289 (_4!371 lt!533560)))))

(declare-fun e!983931 () Bool)

(declare-fun e!983901 () Bool)

(assert (=> b!1537902 (= e!983931 (and e!983901 tp!444413))))

(declare-fun b!1537903 () Bool)

(declare-fun res!689243 () Bool)

(assert (=> b!1537903 (=> res!689243 e!983912)))

(assert (=> b!1537903 (= res!689243 (isEmpty!10010 (t!140622 rulesArg!359)))))

(declare-fun b!1537904 () Bool)

(declare-fun e!983923 () Bool)

(declare-fun tp!444404 () Bool)

(declare-fun inv!21613 (Conc!5490) Bool)

(assert (=> b!1537904 (= e!983923 (and (inv!21613 (c!251596 (totalInput!2362 cacheFurthestNullable!81))) tp!444404))))

(declare-fun b!1537905 () Bool)

(declare-fun e!983907 () Bool)

(declare-fun tp!444407 () Bool)

(assert (=> b!1537905 (= e!983907 (and tp!444407 mapRes!7483))))

(declare-fun condMapEmpty!7484 () Bool)

(declare-fun mapDefault!7483 () List!16413)

(assert (=> b!1537905 (= condMapEmpty!7484 (= (arr!2456 (_values!1862 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16413)) mapDefault!7483)))))

(declare-fun tp!444406 () Bool)

(declare-fun tp!444405 () Bool)

(declare-fun array_inv!1768 (array!5520) Bool)

(assert (=> b!1537906 (= e!983913 (and tp!444390 tp!444406 tp!444405 (array_inv!1766 (_keys!1876 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) (array_inv!1768 (_values!1861 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) e!983922))))

(declare-fun mapIsEmpty!7483 () Bool)

(assert (=> mapIsEmpty!7483 mapRes!7484))

(declare-fun mapIsEmpty!7484 () Bool)

(assert (=> mapIsEmpty!7484 mapRes!7482))

(declare-fun b!1537907 () Bool)

(assert (=> b!1537907 (= e!983927 (and e!983931 (inv!21610 (totalInput!2362 cacheFurthestNullable!81)) e!983923))))

(declare-fun b!1537908 () Bool)

(declare-fun tp!444392 () Bool)

(declare-fun inv!21607 (String!19095) Bool)

(declare-fun inv!21614 (TokenValueInjection!5586) Bool)

(assert (=> b!1537908 (= e!983905 (and tp!444392 (inv!21607 (tag!3137 (h!21749 rulesArg!359))) (inv!21614 (transformation!2873 (h!21749 rulesArg!359))) e!983934))))

(assert (=> b!1537909 (= e!983926 (and e!983908 tp!444387))))

(declare-fun b!1537910 () Bool)

(declare-fun e!983904 () Bool)

(declare-fun lt!533556 () MutLongMap!1582)

(assert (=> b!1537910 (= e!983901 (and e!983904 ((_ is LongMap!1582) lt!533556)))))

(assert (=> b!1537910 (= lt!533556 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))

(declare-fun b!1537911 () Bool)

(assert (=> b!1537911 (= e!983904 e!983917)))

(declare-fun b!1537912 () Bool)

(declare-fun tp!444397 () Bool)

(assert (=> b!1537912 (= e!983935 (and (inv!21613 (c!251596 totalInput!496)) tp!444397))))

(declare-fun tp!444399 () Bool)

(declare-fun tp!444389 () Bool)

(declare-fun array_inv!1769 (array!5522) Bool)

(assert (=> b!1537913 (= e!983910 (and tp!444393 tp!444399 tp!444389 (array_inv!1766 (_keys!1877 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) (array_inv!1769 (_values!1862 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) e!983907))))

(declare-fun b!1537914 () Bool)

(assert (=> b!1537914 (= e!983900 e!983925)))

(declare-fun b!1537915 () Bool)

(declare-fun res!689242 () Bool)

(assert (=> b!1537915 (=> (not res!689242) (not e!983920))))

(assert (=> b!1537915 (= res!689242 (= (totalInput!2362 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1537916 () Bool)

(declare-fun tp!444391 () Bool)

(assert (=> b!1537916 (= e!983903 (and (inv!21613 (c!251596 input!1460)) tp!444391))))

(assert (= (and start!142934 res!689236) b!1537890))

(assert (= (and b!1537890 res!689235) b!1537888))

(assert (= (and b!1537888 res!689233) b!1537893))

(assert (= (and b!1537893 res!689239) b!1537879))

(assert (= (and b!1537879 res!689244) b!1537882))

(assert (= (and b!1537882 res!689240) b!1537896))

(assert (= (and b!1537896 res!689234) b!1537915))

(assert (= (and b!1537915 res!689242) b!1537887))

(assert (= (and b!1537887 (not res!689237)) b!1537889))

(assert (= (and b!1537889 (not res!689241)) b!1537903))

(assert (= (and b!1537903 (not res!689243)) b!1537898))

(assert (= (and b!1537898 res!689232) b!1537900))

(assert (= (and b!1537900 res!689238) b!1537901))

(assert (= (and b!1537905 condMapEmpty!7484) mapIsEmpty!7482))

(assert (= (and b!1537905 (not condMapEmpty!7484)) mapNonEmpty!7482))

(assert (= b!1537913 b!1537905))

(assert (= b!1537880 b!1537913))

(assert (= b!1537891 b!1537880))

(assert (= (and b!1537878 ((_ is LongMap!1583) (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))) b!1537891))

(assert (= b!1537899 b!1537878))

(assert (= (and b!1537914 ((_ is HashMap!1527) (cache!1908 cacheUp!695))) b!1537899))

(assert (= start!142934 b!1537914))

(assert (= start!142934 b!1537916))

(assert (= (and b!1537892 condMapEmpty!7483) mapIsEmpty!7483))

(assert (= (and b!1537892 (not condMapEmpty!7483)) mapNonEmpty!7484))

(assert (= b!1537886 b!1537892))

(assert (= b!1537885 b!1537886))

(assert (= b!1537895 b!1537885))

(assert (= (and b!1537894 ((_ is LongMap!1584) (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))) b!1537895))

(assert (= b!1537909 b!1537894))

(assert (= (and b!1537884 ((_ is HashMap!1528) (cache!1909 cacheDown!708))) b!1537909))

(assert (= start!142934 b!1537884))

(assert (= start!142934 b!1537912))

(assert (= b!1537908 b!1537897))

(assert (= b!1537883 b!1537908))

(assert (= (and start!142934 ((_ is Cons!16348) rulesArg!359)) b!1537883))

(assert (= (and b!1537877 condMapEmpty!7482) mapIsEmpty!7484))

(assert (= (and b!1537877 (not condMapEmpty!7482)) mapNonEmpty!7483))

(assert (= b!1537906 b!1537877))

(assert (= b!1537881 b!1537906))

(assert (= b!1537911 b!1537881))

(assert (= (and b!1537910 ((_ is LongMap!1582) (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))) b!1537911))

(assert (= b!1537902 b!1537910))

(assert (= (and b!1537907 ((_ is HashMap!1526) (cache!1907 cacheFurthestNullable!81))) b!1537902))

(assert (= b!1537907 b!1537904))

(assert (= start!142934 b!1537907))

(declare-fun m!1812642 () Bool)

(assert (=> b!1537900 m!1812642))

(declare-fun m!1812644 () Bool)

(assert (=> mapNonEmpty!7482 m!1812644))

(declare-fun m!1812646 () Bool)

(assert (=> b!1537896 m!1812646))

(declare-fun m!1812648 () Bool)

(assert (=> b!1537907 m!1812648))

(declare-fun m!1812650 () Bool)

(assert (=> b!1537901 m!1812650))

(declare-fun m!1812652 () Bool)

(assert (=> b!1537893 m!1812652))

(assert (=> b!1537893 m!1812652))

(declare-fun m!1812654 () Bool)

(assert (=> b!1537893 m!1812654))

(declare-fun m!1812656 () Bool)

(assert (=> b!1537893 m!1812656))

(declare-fun m!1812658 () Bool)

(assert (=> mapNonEmpty!7484 m!1812658))

(declare-fun m!1812660 () Bool)

(assert (=> b!1537904 m!1812660))

(declare-fun m!1812662 () Bool)

(assert (=> b!1537913 m!1812662))

(declare-fun m!1812664 () Bool)

(assert (=> b!1537913 m!1812664))

(declare-fun m!1812666 () Bool)

(assert (=> b!1537889 m!1812666))

(declare-fun m!1812668 () Bool)

(assert (=> b!1537889 m!1812668))

(declare-fun m!1812670 () Bool)

(assert (=> b!1537906 m!1812670))

(declare-fun m!1812672 () Bool)

(assert (=> b!1537906 m!1812672))

(declare-fun m!1812674 () Bool)

(assert (=> b!1537887 m!1812674))

(declare-fun m!1812676 () Bool)

(assert (=> b!1537887 m!1812676))

(declare-fun m!1812678 () Bool)

(assert (=> b!1537912 m!1812678))

(declare-fun m!1812680 () Bool)

(assert (=> b!1537898 m!1812680))

(declare-fun m!1812682 () Bool)

(assert (=> b!1537888 m!1812682))

(declare-fun m!1812684 () Bool)

(assert (=> b!1537903 m!1812684))

(declare-fun m!1812686 () Bool)

(assert (=> b!1537882 m!1812686))

(declare-fun m!1812688 () Bool)

(assert (=> b!1537908 m!1812688))

(declare-fun m!1812690 () Bool)

(assert (=> b!1537908 m!1812690))

(declare-fun m!1812692 () Bool)

(assert (=> b!1537890 m!1812692))

(declare-fun m!1812694 () Bool)

(assert (=> b!1537886 m!1812694))

(declare-fun m!1812696 () Bool)

(assert (=> b!1537886 m!1812696))

(declare-fun m!1812698 () Bool)

(assert (=> start!142934 m!1812698))

(declare-fun m!1812700 () Bool)

(assert (=> start!142934 m!1812700))

(declare-fun m!1812702 () Bool)

(assert (=> start!142934 m!1812702))

(declare-fun m!1812704 () Bool)

(assert (=> start!142934 m!1812704))

(declare-fun m!1812706 () Bool)

(assert (=> start!142934 m!1812706))

(declare-fun m!1812708 () Bool)

(assert (=> b!1537916 m!1812708))

(declare-fun m!1812710 () Bool)

(assert (=> b!1537879 m!1812710))

(declare-fun m!1812712 () Bool)

(assert (=> mapNonEmpty!7483 m!1812712))

(check-sat (not b!1537913) b_and!106899 (not b_next!40719) (not b!1537908) (not b!1537900) b_and!106907 (not start!142934) (not mapNonEmpty!7484) (not b!1537887) b_and!106897 (not b_next!40731) (not b!1537896) (not b!1537905) b_and!106901 (not b!1537882) (not b!1537893) (not b!1537877) (not b_next!40729) (not b!1537912) (not b!1537898) (not b!1537883) (not b!1537879) b_and!106903 (not b!1537904) (not b_next!40727) (not b!1537889) (not b!1537886) (not b_next!40721) (not mapNonEmpty!7482) (not mapNonEmpty!7483) b_and!106893 (not b_next!40733) (not b!1537888) (not b!1537907) b_and!106895 (not b_next!40723) (not b!1537916) (not b_next!40725) (not b!1537892) (not b!1537906) (not b!1537901) (not b!1537890) b_and!106905 (not b!1537903))
(check-sat (not b_next!40729) b_and!106903 (not b_next!40727) (not b_next!40721) b_and!106899 (not b_next!40719) b_and!106907 b_and!106895 b_and!106897 (not b_next!40731) b_and!106901 b_and!106905 b_and!106893 (not b_next!40733) (not b_next!40723) (not b_next!40725))
(get-model)

(declare-fun d!458352 () Bool)

(declare-fun validCacheMapFurthestNullable!60 (MutableMap!1526 BalanceConc!10922) Bool)

(assert (=> d!458352 (= (valid!1289 cacheFurthestNullable!81) (validCacheMapFurthestNullable!60 (cache!1907 cacheFurthestNullable!81) (totalInput!2362 cacheFurthestNullable!81)))))

(declare-fun bs!382764 () Bool)

(assert (= bs!382764 d!458352))

(declare-fun m!1812714 () Bool)

(assert (=> bs!382764 m!1812714))

(assert (=> b!1537896 d!458352))

(declare-fun d!458354 () Bool)

(assert (=> d!458354 (= (array_inv!1766 (_keys!1878 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) (bvsge (size!13208 (_keys!1878 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537886 d!458354))

(declare-fun d!458356 () Bool)

(assert (=> d!458356 (= (array_inv!1767 (_values!1863 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) (bvsge (size!13211 (_values!1863 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537886 d!458356))

(declare-fun d!458358 () Bool)

(declare-fun e!983942 () Bool)

(assert (=> d!458358 e!983942))

(declare-fun res!689260 () Bool)

(assert (=> d!458358 (=> res!689260 e!983942)))

(declare-fun lt!533563 () Bool)

(assert (=> d!458358 (= res!689260 (not lt!533563))))

(declare-fun e!983944 () Bool)

(assert (=> d!458358 (= lt!533563 e!983944)))

(declare-fun res!689259 () Bool)

(assert (=> d!458358 (=> res!689259 e!983944)))

(assert (=> d!458358 (= res!689259 ((_ is Nil!16344) lt!533555))))

(assert (=> d!458358 (= (isPrefix!1238 lt!533555 lt!533555) lt!533563)))

(declare-fun b!1537928 () Bool)

(declare-fun size!13213 (List!16412) Int)

(assert (=> b!1537928 (= e!983942 (>= (size!13213 lt!533555) (size!13213 lt!533555)))))

(declare-fun b!1537926 () Bool)

(declare-fun res!689258 () Bool)

(declare-fun e!983943 () Bool)

(assert (=> b!1537926 (=> (not res!689258) (not e!983943))))

(declare-fun head!3101 (List!16412) C!8572)

(assert (=> b!1537926 (= res!689258 (= (head!3101 lt!533555) (head!3101 lt!533555)))))

(declare-fun b!1537927 () Bool)

(declare-fun tail!2196 (List!16412) List!16412)

(assert (=> b!1537927 (= e!983943 (isPrefix!1238 (tail!2196 lt!533555) (tail!2196 lt!533555)))))

(declare-fun b!1537925 () Bool)

(assert (=> b!1537925 (= e!983944 e!983943)))

(declare-fun res!689257 () Bool)

(assert (=> b!1537925 (=> (not res!689257) (not e!983943))))

(assert (=> b!1537925 (= res!689257 (not ((_ is Nil!16344) lt!533555)))))

(assert (= (and d!458358 (not res!689259)) b!1537925))

(assert (= (and b!1537925 res!689257) b!1537926))

(assert (= (and b!1537926 res!689258) b!1537927))

(assert (= (and d!458358 (not res!689260)) b!1537928))

(declare-fun m!1812716 () Bool)

(assert (=> b!1537928 m!1812716))

(assert (=> b!1537928 m!1812716))

(declare-fun m!1812718 () Bool)

(assert (=> b!1537926 m!1812718))

(assert (=> b!1537926 m!1812718))

(declare-fun m!1812720 () Bool)

(assert (=> b!1537927 m!1812720))

(assert (=> b!1537927 m!1812720))

(assert (=> b!1537927 m!1812720))

(assert (=> b!1537927 m!1812720))

(declare-fun m!1812722 () Bool)

(assert (=> b!1537927 m!1812722))

(assert (=> b!1537887 d!458358))

(declare-fun d!458360 () Bool)

(assert (=> d!458360 (isPrefix!1238 lt!533555 lt!533555)))

(declare-fun lt!533566 () Unit!25850)

(declare-fun choose!9224 (List!16412 List!16412) Unit!25850)

(assert (=> d!458360 (= lt!533566 (choose!9224 lt!533555 lt!533555))))

(assert (=> d!458360 (= (lemmaIsPrefixRefl!868 lt!533555 lt!533555) lt!533566)))

(declare-fun bs!382765 () Bool)

(assert (= bs!382765 d!458360))

(assert (=> bs!382765 m!1812674))

(declare-fun m!1812724 () Bool)

(assert (=> bs!382765 m!1812724))

(assert (=> b!1537887 d!458360))

(declare-fun d!458362 () Bool)

(assert (=> d!458362 (= (array_inv!1766 (_keys!1876 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) (bvsge (size!13208 (_keys!1876 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537906 d!458362))

(declare-fun d!458364 () Bool)

(assert (=> d!458364 (= (array_inv!1768 (_values!1861 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) (bvsge (size!13209 (_values!1861 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537906 d!458364))

(declare-fun d!458366 () Bool)

(declare-fun e!983947 () Bool)

(assert (=> d!458366 e!983947))

(declare-fun res!689263 () Bool)

(assert (=> d!458366 (=> res!689263 e!983947)))

(declare-fun lt!533569 () Bool)

(assert (=> d!458366 (= res!689263 (not lt!533569))))

(declare-fun drop!771 (List!16412 Int) List!16412)

(assert (=> d!458366 (= lt!533569 (= lt!533555 (drop!771 (list!6417 totalInput!496) (- (size!13213 (list!6417 totalInput!496)) (size!13213 lt!533555)))))))

(assert (=> d!458366 (= (isSuffix!323 lt!533555 (list!6417 totalInput!496)) lt!533569)))

(declare-fun b!1537931 () Bool)

(assert (=> b!1537931 (= e!983947 (>= (size!13213 (list!6417 totalInput!496)) (size!13213 lt!533555)))))

(assert (= (and d!458366 (not res!689263)) b!1537931))

(assert (=> d!458366 m!1812652))

(declare-fun m!1812726 () Bool)

(assert (=> d!458366 m!1812726))

(assert (=> d!458366 m!1812716))

(assert (=> d!458366 m!1812652))

(declare-fun m!1812728 () Bool)

(assert (=> d!458366 m!1812728))

(assert (=> b!1537931 m!1812652))

(assert (=> b!1537931 m!1812726))

(assert (=> b!1537931 m!1812716))

(assert (=> b!1537893 d!458366))

(declare-fun d!458368 () Bool)

(declare-fun list!6418 (Conc!5490) List!16412)

(assert (=> d!458368 (= (list!6417 totalInput!496) (list!6418 (c!251596 totalInput!496)))))

(declare-fun bs!382766 () Bool)

(assert (= bs!382766 d!458368))

(declare-fun m!1812730 () Bool)

(assert (=> bs!382766 m!1812730))

(assert (=> b!1537893 d!458368))

(declare-fun d!458370 () Bool)

(assert (=> d!458370 (= (list!6417 input!1460) (list!6418 (c!251596 input!1460)))))

(declare-fun bs!382767 () Bool)

(assert (= bs!382767 d!458370))

(declare-fun m!1812732 () Bool)

(assert (=> bs!382767 m!1812732))

(assert (=> b!1537893 d!458370))

(declare-fun d!458372 () Bool)

(assert (=> d!458372 (= (isEmpty!10010 (t!140622 rulesArg!359)) ((_ is Nil!16348) (t!140622 rulesArg!359)))))

(assert (=> b!1537903 d!458372))

(declare-fun d!458374 () Bool)

(declare-fun c!251599 () Bool)

(assert (=> d!458374 (= c!251599 ((_ is Node!5490) (c!251596 (totalInput!2362 cacheFurthestNullable!81))))))

(declare-fun e!983952 () Bool)

(assert (=> d!458374 (= (inv!21613 (c!251596 (totalInput!2362 cacheFurthestNullable!81))) e!983952)))

(declare-fun b!1537938 () Bool)

(declare-fun inv!21615 (Conc!5490) Bool)

(assert (=> b!1537938 (= e!983952 (inv!21615 (c!251596 (totalInput!2362 cacheFurthestNullable!81))))))

(declare-fun b!1537939 () Bool)

(declare-fun e!983953 () Bool)

(assert (=> b!1537939 (= e!983952 e!983953)))

(declare-fun res!689266 () Bool)

(assert (=> b!1537939 (= res!689266 (not ((_ is Leaf!8134) (c!251596 (totalInput!2362 cacheFurthestNullable!81)))))))

(assert (=> b!1537939 (=> res!689266 e!983953)))

(declare-fun b!1537940 () Bool)

(declare-fun inv!21616 (Conc!5490) Bool)

(assert (=> b!1537940 (= e!983953 (inv!21616 (c!251596 (totalInput!2362 cacheFurthestNullable!81))))))

(assert (= (and d!458374 c!251599) b!1537938))

(assert (= (and d!458374 (not c!251599)) b!1537939))

(assert (= (and b!1537939 (not res!689266)) b!1537940))

(declare-fun m!1812734 () Bool)

(assert (=> b!1537938 m!1812734))

(declare-fun m!1812736 () Bool)

(assert (=> b!1537940 m!1812736))

(assert (=> b!1537904 d!458374))

(declare-fun d!458376 () Bool)

(assert (=> d!458376 (= (array_inv!1766 (_keys!1877 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) (bvsge (size!13208 (_keys!1877 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537913 d!458376))

(declare-fun d!458378 () Bool)

(assert (=> d!458378 (= (array_inv!1769 (_values!1862 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) (bvsge (size!13210 (_values!1862 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1537913 d!458378))

(declare-fun d!458380 () Bool)

(declare-fun res!689269 () Bool)

(declare-fun e!983956 () Bool)

(assert (=> d!458380 (=> (not res!689269) (not e!983956))))

(assert (=> d!458380 (= res!689269 ((_ is HashMap!1528) (cache!1909 cacheDown!708)))))

(assert (=> d!458380 (= (inv!21611 cacheDown!708) e!983956)))

(declare-fun b!1537943 () Bool)

(declare-fun validCacheMapDown!147 (MutableMap!1528) Bool)

(assert (=> b!1537943 (= e!983956 (validCacheMapDown!147 (cache!1909 cacheDown!708)))))

(assert (= (and d!458380 res!689269) b!1537943))

(declare-fun m!1812738 () Bool)

(assert (=> b!1537943 m!1812738))

(assert (=> start!142934 d!458380))

(declare-fun d!458382 () Bool)

(declare-fun isBalanced!1629 (Conc!5490) Bool)

(assert (=> d!458382 (= (inv!21610 input!1460) (isBalanced!1629 (c!251596 input!1460)))))

(declare-fun bs!382768 () Bool)

(assert (= bs!382768 d!458382))

(declare-fun m!1812740 () Bool)

(assert (=> bs!382768 m!1812740))

(assert (=> start!142934 d!458382))

(declare-fun d!458384 () Bool)

(declare-fun res!689272 () Bool)

(declare-fun e!983959 () Bool)

(assert (=> d!458384 (=> (not res!689272) (not e!983959))))

(assert (=> d!458384 (= res!689272 ((_ is HashMap!1527) (cache!1908 cacheUp!695)))))

(assert (=> d!458384 (= (inv!21609 cacheUp!695) e!983959)))

(declare-fun b!1537946 () Bool)

(declare-fun validCacheMapUp!147 (MutableMap!1527) Bool)

(assert (=> b!1537946 (= e!983959 (validCacheMapUp!147 (cache!1908 cacheUp!695)))))

(assert (= (and d!458384 res!689272) b!1537946))

(declare-fun m!1812742 () Bool)

(assert (=> b!1537946 m!1812742))

(assert (=> start!142934 d!458384))

(declare-fun d!458386 () Bool)

(assert (=> d!458386 (= (inv!21610 totalInput!496) (isBalanced!1629 (c!251596 totalInput!496)))))

(declare-fun bs!382769 () Bool)

(assert (= bs!382769 d!458386))

(declare-fun m!1812744 () Bool)

(assert (=> bs!382769 m!1812744))

(assert (=> start!142934 d!458386))

(declare-fun d!458388 () Bool)

(declare-fun res!689275 () Bool)

(declare-fun e!983962 () Bool)

(assert (=> d!458388 (=> (not res!689275) (not e!983962))))

(assert (=> d!458388 (= res!689275 ((_ is HashMap!1526) (cache!1907 cacheFurthestNullable!81)))))

(assert (=> d!458388 (= (inv!21612 cacheFurthestNullable!81) e!983962)))

(declare-fun b!1537949 () Bool)

(assert (=> b!1537949 (= e!983962 (validCacheMapFurthestNullable!60 (cache!1907 cacheFurthestNullable!81) (totalInput!2362 cacheFurthestNullable!81)))))

(assert (= (and d!458388 res!689275) b!1537949))

(assert (=> b!1537949 m!1812714))

(assert (=> start!142934 d!458388))

(declare-fun d!458390 () Bool)

(declare-fun c!251600 () Bool)

(assert (=> d!458390 (= c!251600 ((_ is Node!5490) (c!251596 totalInput!496)))))

(declare-fun e!983963 () Bool)

(assert (=> d!458390 (= (inv!21613 (c!251596 totalInput!496)) e!983963)))

(declare-fun b!1537950 () Bool)

(assert (=> b!1537950 (= e!983963 (inv!21615 (c!251596 totalInput!496)))))

(declare-fun b!1537951 () Bool)

(declare-fun e!983964 () Bool)

(assert (=> b!1537951 (= e!983963 e!983964)))

(declare-fun res!689276 () Bool)

(assert (=> b!1537951 (= res!689276 (not ((_ is Leaf!8134) (c!251596 totalInput!496))))))

(assert (=> b!1537951 (=> res!689276 e!983964)))

(declare-fun b!1537952 () Bool)

(assert (=> b!1537952 (= e!983964 (inv!21616 (c!251596 totalInput!496)))))

(assert (= (and d!458390 c!251600) b!1537950))

(assert (= (and d!458390 (not c!251600)) b!1537951))

(assert (= (and b!1537951 (not res!689276)) b!1537952))

(declare-fun m!1812746 () Bool)

(assert (=> b!1537950 m!1812746))

(declare-fun m!1812748 () Bool)

(assert (=> b!1537952 m!1812748))

(assert (=> b!1537912 d!458390))

(declare-fun d!458392 () Bool)

(assert (=> d!458392 (= (inv!21607 (tag!3137 (h!21749 rulesArg!359))) (= (mod (str.len (value!91543 (tag!3137 (h!21749 rulesArg!359)))) 2) 0))))

(assert (=> b!1537908 d!458392))

(declare-fun d!458394 () Bool)

(declare-fun res!689279 () Bool)

(declare-fun e!983967 () Bool)

(assert (=> d!458394 (=> (not res!689279) (not e!983967))))

(declare-fun semiInverseModEq!1083 (Int Int) Bool)

(assert (=> d!458394 (= res!689279 (semiInverseModEq!1083 (toChars!4093 (transformation!2873 (h!21749 rulesArg!359))) (toValue!4234 (transformation!2873 (h!21749 rulesArg!359)))))))

(assert (=> d!458394 (= (inv!21614 (transformation!2873 (h!21749 rulesArg!359))) e!983967)))

(declare-fun b!1537955 () Bool)

(declare-fun equivClasses!1042 (Int Int) Bool)

(assert (=> b!1537955 (= e!983967 (equivClasses!1042 (toChars!4093 (transformation!2873 (h!21749 rulesArg!359))) (toValue!4234 (transformation!2873 (h!21749 rulesArg!359)))))))

(assert (= (and d!458394 res!689279) b!1537955))

(declare-fun m!1812750 () Bool)

(assert (=> d!458394 m!1812750))

(declare-fun m!1812752 () Bool)

(assert (=> b!1537955 m!1812752))

(assert (=> b!1537908 d!458394))

(declare-fun d!458396 () Bool)

(assert (=> d!458396 (= (valid!1288 cacheDown!708) (validCacheMapDown!147 (cache!1909 cacheDown!708)))))

(declare-fun bs!382770 () Bool)

(assert (= bs!382770 d!458396))

(assert (=> bs!382770 m!1812738))

(assert (=> b!1537882 d!458396))

(declare-fun d!458398 () Bool)

(assert (=> d!458398 (= (valid!1289 (_4!371 lt!533560)) (validCacheMapFurthestNullable!60 (cache!1907 (_4!371 lt!533560)) (totalInput!2362 (_4!371 lt!533560))))))

(declare-fun bs!382771 () Bool)

(assert (= bs!382771 d!458398))

(declare-fun m!1812754 () Bool)

(assert (=> bs!382771 m!1812754))

(assert (=> b!1537901 d!458398))

(declare-fun d!458400 () Bool)

(assert (=> d!458400 true))

(declare-fun lt!533572 () Bool)

(declare-fun lambda!65245 () Int)

(declare-fun forall!3902 (List!16416 Int) Bool)

(assert (=> d!458400 (= lt!533572 (forall!3902 (t!140622 rulesArg!359) lambda!65245))))

(declare-fun e!983972 () Bool)

(assert (=> d!458400 (= lt!533572 e!983972)))

(declare-fun res!689284 () Bool)

(assert (=> d!458400 (=> res!689284 e!983972)))

(assert (=> d!458400 (= res!689284 (not ((_ is Cons!16348) (t!140622 rulesArg!359))))))

(assert (=> d!458400 (= (rulesValidInductive!877 thiss!15733 (t!140622 rulesArg!359)) lt!533572)))

(declare-fun b!1537960 () Bool)

(declare-fun e!983973 () Bool)

(assert (=> b!1537960 (= e!983972 e!983973)))

(declare-fun res!689285 () Bool)

(assert (=> b!1537960 (=> (not res!689285) (not e!983973))))

(declare-fun ruleValid!647 (LexerInterface!2524 Rule!5546) Bool)

(assert (=> b!1537960 (= res!689285 (ruleValid!647 thiss!15733 (h!21749 (t!140622 rulesArg!359))))))

(declare-fun b!1537961 () Bool)

(assert (=> b!1537961 (= e!983973 (rulesValidInductive!877 thiss!15733 (t!140622 (t!140622 rulesArg!359))))))

(assert (= (and d!458400 (not res!689284)) b!1537960))

(assert (= (and b!1537960 res!689285) b!1537961))

(declare-fun m!1812756 () Bool)

(assert (=> d!458400 m!1812756))

(declare-fun m!1812758 () Bool)

(assert (=> b!1537960 m!1812758))

(declare-fun m!1812760 () Bool)

(assert (=> b!1537961 m!1812760))

(assert (=> b!1537889 d!458400))

(declare-fun b!1538001 () Bool)

(declare-fun e!983994 () Bool)

(assert (=> b!1538001 (= e!983994 true)))

(declare-fun b!1538000 () Bool)

(declare-fun e!983993 () Bool)

(assert (=> b!1538000 (= e!983993 e!983994)))

(declare-fun b!1537993 () Bool)

(assert (=> b!1537993 e!983993))

(assert (= b!1538000 b!1538001))

(assert (= b!1537993 b!1538000))

(declare-fun lambda!65250 () Int)

(declare-fun order!9601 () Int)

(declare-fun order!9599 () Int)

(declare-fun dynLambda!7285 (Int Int) Int)

(declare-fun dynLambda!7286 (Int Int) Int)

(assert (=> b!1538001 (< (dynLambda!7285 order!9599 (toValue!4234 (transformation!2873 (h!21749 rulesArg!359)))) (dynLambda!7286 order!9601 lambda!65250))))

(declare-fun order!9603 () Int)

(declare-fun dynLambda!7287 (Int Int) Int)

(assert (=> b!1538001 (< (dynLambda!7287 order!9603 (toChars!4093 (transformation!2873 (h!21749 rulesArg!359)))) (dynLambda!7286 order!9601 lambda!65250))))

(declare-fun b!1537984 () Bool)

(declare-fun res!689304 () Bool)

(declare-fun e!983988 () Bool)

(assert (=> b!1537984 (=> (not res!689304) (not e!983988))))

(declare-fun lt!533594 () tuple4!742)

(assert (=> b!1537984 (= res!689304 (valid!1288 (_3!1124 lt!533594)))))

(declare-fun b!1537985 () Bool)

(assert (=> b!1537985 (= e!983988 (= (totalInput!2362 (_4!371 lt!533594)) totalInput!496))))

(declare-fun b!1537986 () Bool)

(declare-fun e!983987 () Bool)

(declare-fun get!4777 (Option!2958) tuple2!15376)

(declare-datatypes ((tuple2!15378 0))(
  ( (tuple2!15379 (_1!8814 Token!5388) (_2!8814 List!16412)) )
))
(declare-datatypes ((Option!2959 0))(
  ( (None!2958) (Some!2958 (v!23158 tuple2!15378)) )
))
(declare-fun get!4778 (Option!2959) tuple2!15378)

(declare-fun maxPrefixOneRule!675 (LexerInterface!2524 Rule!5546 List!16412) Option!2959)

(assert (=> b!1537986 (= e!983987 (= (list!6417 (_2!8812 (get!4777 (_1!8813 lt!533594)))) (_2!8814 (get!4778 (maxPrefixOneRule!675 thiss!15733 (h!21749 rulesArg!359) (list!6417 input!1460))))))))

(declare-fun b!1537987 () Bool)

(declare-fun e!983984 () Bool)

(assert (=> b!1537987 (= e!983984 e!983987)))

(declare-fun res!689308 () Bool)

(assert (=> b!1537987 (=> (not res!689308) (not e!983987))))

(assert (=> b!1537987 (= res!689308 (= (_1!8812 (get!4777 (_1!8813 lt!533594))) (_1!8814 (get!4778 (maxPrefixOneRule!675 thiss!15733 (h!21749 rulesArg!359) (list!6417 input!1460))))))))

(declare-fun b!1537988 () Bool)

(declare-fun e!983986 () Option!2958)

(assert (=> b!1537988 (= e!983986 None!2957)))

(declare-fun b!1537990 () Bool)

(declare-fun res!689305 () Bool)

(assert (=> b!1537990 (=> (not res!689305) (not e!983988))))

(assert (=> b!1537990 (= res!689305 e!983984)))

(declare-fun res!689306 () Bool)

(assert (=> b!1537990 (=> res!689306 e!983984)))

(declare-fun isDefined!2375 (Option!2958) Bool)

(assert (=> b!1537990 (= res!689306 (not (isDefined!2375 (_1!8813 lt!533594))))))

(declare-fun b!1537991 () Bool)

(declare-fun e!983985 () Bool)

(declare-fun lt!533598 () List!16412)

(declare-fun matchR!1845 (Regex!4197 List!16412) Bool)

(declare-datatypes ((tuple2!15380 0))(
  ( (tuple2!15381 (_1!8815 List!16412) (_2!8815 List!16412)) )
))
(declare-fun findLongestMatchInner!302 (Regex!4197 List!16412 Int List!16412 List!16412 Int) tuple2!15380)

(assert (=> b!1537991 (= e!983985 (matchR!1845 (regex!2873 (h!21749 rulesArg!359)) (_1!8815 (findLongestMatchInner!302 (regex!2873 (h!21749 rulesArg!359)) Nil!16344 (size!13213 Nil!16344) lt!533598 lt!533598 (size!13213 lt!533598)))))))

(declare-fun b!1537992 () Bool)

(declare-fun res!689303 () Bool)

(assert (=> b!1537992 (=> (not res!689303) (not e!983988))))

(assert (=> b!1537992 (= res!689303 (valid!1289 (_4!371 lt!533594)))))

(declare-datatypes ((tuple2!15382 0))(
  ( (tuple2!15383 (_1!8816 BalanceConc!10922) (_2!8816 BalanceConc!10922)) )
))
(declare-datatypes ((tuple4!744 0))(
  ( (tuple4!745 (_1!8817 tuple2!15382) (_2!8817 CacheUp!914) (_3!1125 CacheDown!922) (_4!372 CacheFurthestNullable!344)) )
))
(declare-fun lt!533596 () tuple4!744)

(declare-fun apply!4080 (TokenValueInjection!5586 BalanceConc!10922) TokenValue!2963)

(declare-fun size!13214 (BalanceConc!10922) Int)

(assert (=> b!1537993 (= e!983986 (Some!2957 (tuple2!15377 (Token!5389 (apply!4080 (transformation!2873 (h!21749 rulesArg!359)) (_1!8816 (_1!8817 lt!533596))) (h!21749 rulesArg!359) (size!13214 (_1!8816 (_1!8817 lt!533596))) (list!6417 (_1!8816 (_1!8817 lt!533596)))) (_2!8816 (_1!8817 lt!533596)))))))

(assert (=> b!1537993 (= lt!533598 (list!6417 input!1460))))

(declare-fun lt!533595 () Unit!25850)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!286 (Regex!4197 List!16412) Unit!25850)

(assert (=> b!1537993 (= lt!533595 (longestMatchIsAcceptedByMatchOrIsEmpty!286 (regex!2873 (h!21749 rulesArg!359)) lt!533598))))

(declare-fun res!689309 () Bool)

(declare-fun isEmpty!10011 (List!16412) Bool)

(assert (=> b!1537993 (= res!689309 (isEmpty!10011 (_1!8815 (findLongestMatchInner!302 (regex!2873 (h!21749 rulesArg!359)) Nil!16344 (size!13213 Nil!16344) lt!533598 lt!533598 (size!13213 lt!533598)))))))

(assert (=> b!1537993 (=> res!689309 e!983985)))

(assert (=> b!1537993 e!983985))

(declare-fun lt!533600 () Unit!25850)

(assert (=> b!1537993 (= lt!533600 lt!533595)))

(declare-fun lt!533601 () Unit!25850)

(declare-fun lemmaInv!396 (TokenValueInjection!5586) Unit!25850)

(assert (=> b!1537993 (= lt!533601 (lemmaInv!396 (transformation!2873 (h!21749 rulesArg!359))))))

(declare-fun lt!533602 () Unit!25850)

(declare-fun ForallOf!179 (Int BalanceConc!10922) Unit!25850)

(assert (=> b!1537993 (= lt!533602 (ForallOf!179 lambda!65250 (_1!8816 (_1!8817 lt!533596))))))

(declare-fun lt!533599 () Unit!25850)

(declare-fun seqFromList!1742 (List!16412) BalanceConc!10922)

(assert (=> b!1537993 (= lt!533599 (ForallOf!179 lambda!65250 (seqFromList!1742 (list!6417 (_1!8816 (_1!8817 lt!533596))))))))

(declare-fun lt!533593 () Option!2958)

(assert (=> b!1537993 (= lt!533593 (Some!2957 (tuple2!15377 (Token!5389 (apply!4080 (transformation!2873 (h!21749 rulesArg!359)) (_1!8816 (_1!8817 lt!533596))) (h!21749 rulesArg!359) (size!13214 (_1!8816 (_1!8817 lt!533596))) (list!6417 (_1!8816 (_1!8817 lt!533596)))) (_2!8816 (_1!8817 lt!533596)))))))

(declare-fun lt!533597 () Unit!25850)

(declare-fun lemmaEqSameImage!129 (TokenValueInjection!5586 BalanceConc!10922 BalanceConc!10922) Unit!25850)

(assert (=> b!1537993 (= lt!533597 (lemmaEqSameImage!129 (transformation!2873 (h!21749 rulesArg!359)) (_1!8816 (_1!8817 lt!533596)) (seqFromList!1742 (list!6417 (_1!8816 (_1!8817 lt!533596))))))))

(declare-fun d!458402 () Bool)

(assert (=> d!458402 e!983988))

(declare-fun res!689302 () Bool)

(assert (=> d!458402 (=> (not res!689302) (not e!983988))))

(declare-fun isDefined!2376 (Option!2959) Bool)

(assert (=> d!458402 (= res!689302 (= (isDefined!2375 (_1!8813 lt!533594)) (isDefined!2376 (maxPrefixOneRule!675 thiss!15733 (h!21749 rulesArg!359) (list!6417 input!1460)))))))

(assert (=> d!458402 (= lt!533594 (tuple4!743 e!983986 (_2!8817 lt!533596) (_3!1125 lt!533596) (_4!372 lt!533596)))))

(declare-fun c!251604 () Bool)

(declare-fun isEmpty!10012 (BalanceConc!10922) Bool)

(assert (=> d!458402 (= c!251604 (isEmpty!10012 (_1!8816 (_1!8817 lt!533596))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!12 (Regex!4197 BalanceConc!10922 BalanceConc!10922 CacheUp!914 CacheDown!922 CacheFurthestNullable!344) tuple4!744)

(assert (=> d!458402 (= lt!533596 (findLongestMatchWithZipperSequenceV3Mem!12 (regex!2873 (h!21749 rulesArg!359)) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(assert (=> d!458402 (ruleValid!647 thiss!15733 (h!21749 rulesArg!359))))

(assert (=> d!458402 (= (maxPrefixOneRuleZipperSequenceV3Mem!23 thiss!15733 (h!21749 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81) lt!533594)))

(declare-fun b!1537989 () Bool)

(declare-fun res!689307 () Bool)

(assert (=> b!1537989 (=> (not res!689307) (not e!983988))))

(assert (=> b!1537989 (= res!689307 (valid!1287 (_2!8813 lt!533594)))))

(assert (= (and d!458402 c!251604) b!1537988))

(assert (= (and d!458402 (not c!251604)) b!1537993))

(assert (= (and b!1537993 (not res!689309)) b!1537991))

(assert (= (and d!458402 res!689302) b!1537990))

(assert (= (and b!1537990 (not res!689306)) b!1537987))

(assert (= (and b!1537987 res!689308) b!1537986))

(assert (= (and b!1537990 res!689305) b!1537989))

(assert (= (and b!1537989 res!689307) b!1537984))

(assert (= (and b!1537984 res!689304) b!1537992))

(assert (= (and b!1537992 res!689303) b!1537985))

(declare-fun m!1812762 () Bool)

(assert (=> b!1537989 m!1812762))

(declare-fun m!1812764 () Bool)

(assert (=> b!1537991 m!1812764))

(declare-fun m!1812766 () Bool)

(assert (=> b!1537991 m!1812766))

(assert (=> b!1537991 m!1812764))

(assert (=> b!1537991 m!1812766))

(declare-fun m!1812768 () Bool)

(assert (=> b!1537991 m!1812768))

(declare-fun m!1812770 () Bool)

(assert (=> b!1537991 m!1812770))

(declare-fun m!1812772 () Bool)

(assert (=> b!1537993 m!1812772))

(declare-fun m!1812774 () Bool)

(assert (=> b!1537993 m!1812774))

(declare-fun m!1812776 () Bool)

(assert (=> b!1537993 m!1812776))

(declare-fun m!1812778 () Bool)

(assert (=> b!1537993 m!1812778))

(declare-fun m!1812780 () Bool)

(assert (=> b!1537993 m!1812780))

(assert (=> b!1537993 m!1812764))

(assert (=> b!1537993 m!1812780))

(assert (=> b!1537993 m!1812776))

(declare-fun m!1812782 () Bool)

(assert (=> b!1537993 m!1812782))

(declare-fun m!1812784 () Bool)

(assert (=> b!1537993 m!1812784))

(declare-fun m!1812786 () Bool)

(assert (=> b!1537993 m!1812786))

(declare-fun m!1812788 () Bool)

(assert (=> b!1537993 m!1812788))

(assert (=> b!1537993 m!1812766))

(assert (=> b!1537993 m!1812776))

(declare-fun m!1812790 () Bool)

(assert (=> b!1537993 m!1812790))

(assert (=> b!1537993 m!1812656))

(assert (=> b!1537993 m!1812764))

(assert (=> b!1537993 m!1812766))

(assert (=> b!1537993 m!1812768))

(declare-fun m!1812792 () Bool)

(assert (=> b!1537992 m!1812792))

(declare-fun m!1812794 () Bool)

(assert (=> b!1537986 m!1812794))

(declare-fun m!1812796 () Bool)

(assert (=> b!1537986 m!1812796))

(assert (=> b!1537986 m!1812656))

(assert (=> b!1537986 m!1812794))

(declare-fun m!1812798 () Bool)

(assert (=> b!1537986 m!1812798))

(assert (=> b!1537986 m!1812656))

(declare-fun m!1812800 () Bool)

(assert (=> b!1537986 m!1812800))

(declare-fun m!1812802 () Bool)

(assert (=> d!458402 m!1812802))

(declare-fun m!1812804 () Bool)

(assert (=> d!458402 m!1812804))

(declare-fun m!1812806 () Bool)

(assert (=> d!458402 m!1812806))

(declare-fun m!1812808 () Bool)

(assert (=> d!458402 m!1812808))

(assert (=> d!458402 m!1812656))

(assert (=> d!458402 m!1812656))

(assert (=> d!458402 m!1812794))

(assert (=> d!458402 m!1812794))

(declare-fun m!1812810 () Bool)

(assert (=> d!458402 m!1812810))

(assert (=> b!1537987 m!1812800))

(assert (=> b!1537987 m!1812656))

(assert (=> b!1537987 m!1812656))

(assert (=> b!1537987 m!1812794))

(assert (=> b!1537987 m!1812794))

(assert (=> b!1537987 m!1812796))

(assert (=> b!1537990 m!1812808))

(declare-fun m!1812812 () Bool)

(assert (=> b!1537984 m!1812812))

(assert (=> b!1537889 d!458402))

(declare-fun d!458404 () Bool)

(assert (=> d!458404 (= (valid!1287 cacheUp!695) (validCacheMapUp!147 (cache!1908 cacheUp!695)))))

(declare-fun bs!382772 () Bool)

(assert (= bs!382772 d!458404))

(assert (=> bs!382772 m!1812742))

(assert (=> b!1537879 d!458404))

(declare-fun d!458406 () Bool)

(assert (=> d!458406 (= (valid!1287 (_2!8813 lt!533560)) (validCacheMapUp!147 (cache!1908 (_2!8813 lt!533560))))))

(declare-fun bs!382773 () Bool)

(assert (= bs!382773 d!458406))

(declare-fun m!1812814 () Bool)

(assert (=> bs!382773 m!1812814))

(assert (=> b!1537898 d!458406))

(declare-fun d!458408 () Bool)

(declare-fun c!251605 () Bool)

(assert (=> d!458408 (= c!251605 ((_ is Node!5490) (c!251596 input!1460)))))

(declare-fun e!983995 () Bool)

(assert (=> d!458408 (= (inv!21613 (c!251596 input!1460)) e!983995)))

(declare-fun b!1538002 () Bool)

(assert (=> b!1538002 (= e!983995 (inv!21615 (c!251596 input!1460)))))

(declare-fun b!1538003 () Bool)

(declare-fun e!983996 () Bool)

(assert (=> b!1538003 (= e!983995 e!983996)))

(declare-fun res!689310 () Bool)

(assert (=> b!1538003 (= res!689310 (not ((_ is Leaf!8134) (c!251596 input!1460))))))

(assert (=> b!1538003 (=> res!689310 e!983996)))

(declare-fun b!1538004 () Bool)

(assert (=> b!1538004 (= e!983996 (inv!21616 (c!251596 input!1460)))))

(assert (= (and d!458408 c!251605) b!1538002))

(assert (= (and d!458408 (not c!251605)) b!1538003))

(assert (= (and b!1538003 (not res!689310)) b!1538004))

(declare-fun m!1812816 () Bool)

(assert (=> b!1538002 m!1812816))

(declare-fun m!1812818 () Bool)

(assert (=> b!1538004 m!1812818))

(assert (=> b!1537916 d!458408))

(declare-fun d!458410 () Bool)

(assert (=> d!458410 (= (isEmpty!10010 rulesArg!359) ((_ is Nil!16348) rulesArg!359))))

(assert (=> b!1537888 d!458410))

(declare-fun bs!382774 () Bool)

(declare-fun d!458412 () Bool)

(assert (= bs!382774 (and d!458412 d!458400)))

(declare-fun lambda!65251 () Int)

(assert (=> bs!382774 (= lambda!65251 lambda!65245)))

(assert (=> d!458412 true))

(declare-fun lt!533603 () Bool)

(assert (=> d!458412 (= lt!533603 (forall!3902 rulesArg!359 lambda!65251))))

(declare-fun e!983997 () Bool)

(assert (=> d!458412 (= lt!533603 e!983997)))

(declare-fun res!689311 () Bool)

(assert (=> d!458412 (=> res!689311 e!983997)))

(assert (=> d!458412 (= res!689311 (not ((_ is Cons!16348) rulesArg!359)))))

(assert (=> d!458412 (= (rulesValidInductive!877 thiss!15733 rulesArg!359) lt!533603)))

(declare-fun b!1538005 () Bool)

(declare-fun e!983998 () Bool)

(assert (=> b!1538005 (= e!983997 e!983998)))

(declare-fun res!689312 () Bool)

(assert (=> b!1538005 (=> (not res!689312) (not e!983998))))

(assert (=> b!1538005 (= res!689312 (ruleValid!647 thiss!15733 (h!21749 rulesArg!359)))))

(declare-fun b!1538006 () Bool)

(assert (=> b!1538006 (= e!983998 (rulesValidInductive!877 thiss!15733 (t!140622 rulesArg!359)))))

(assert (= (and d!458412 (not res!689311)) b!1538005))

(assert (= (and b!1538005 res!689312) b!1538006))

(declare-fun m!1812820 () Bool)

(assert (=> d!458412 m!1812820))

(assert (=> b!1538005 m!1812804))

(assert (=> b!1538006 m!1812666))

(assert (=> b!1537890 d!458412))

(declare-fun d!458414 () Bool)

(assert (=> d!458414 (= (valid!1288 (_3!1124 lt!533560)) (validCacheMapDown!147 (cache!1909 (_3!1124 lt!533560))))))

(declare-fun bs!382775 () Bool)

(assert (= bs!382775 d!458414))

(declare-fun m!1812822 () Bool)

(assert (=> bs!382775 m!1812822))

(assert (=> b!1537900 d!458414))

(declare-fun d!458416 () Bool)

(assert (=> d!458416 (= (inv!21610 (totalInput!2362 cacheFurthestNullable!81)) (isBalanced!1629 (c!251596 (totalInput!2362 cacheFurthestNullable!81))))))

(declare-fun bs!382776 () Bool)

(assert (= bs!382776 d!458416))

(declare-fun m!1812824 () Bool)

(assert (=> bs!382776 m!1812824))

(assert (=> b!1537907 d!458416))

(declare-fun setRes!10092 () Bool)

(declare-fun tp_is_empty!7039 () Bool)

(declare-fun e!984006 () Bool)

(declare-fun e!984005 () Bool)

(declare-fun tp!444426 () Bool)

(declare-fun b!1538015 () Bool)

(declare-fun tp!444428 () Bool)

(declare-fun inv!21617 (Context!1430) Bool)

(assert (=> b!1538015 (= e!984005 (and tp!444426 (inv!21617 (_2!8810 (_1!8811 (h!21747 (zeroValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))))) e!984006 tp_is_empty!7039 setRes!10092 tp!444428))))

(declare-fun condSetEmpty!10092 () Bool)

(assert (=> b!1538015 (= condSetEmpty!10092 (= (_2!8811 (h!21747 (zeroValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun b!1538016 () Bool)

(declare-fun e!984007 () Bool)

(declare-fun tp!444424 () Bool)

(assert (=> b!1538016 (= e!984007 tp!444424)))

(declare-fun setIsEmpty!10092 () Bool)

(assert (=> setIsEmpty!10092 setRes!10092))

(declare-fun b!1538017 () Bool)

(declare-fun tp!444425 () Bool)

(assert (=> b!1538017 (= e!984006 tp!444425)))

(assert (=> b!1537886 (= tp!444398 e!984005)))

(declare-fun tp!444427 () Bool)

(declare-fun setElem!10092 () Context!1430)

(declare-fun setNonEmpty!10092 () Bool)

(assert (=> setNonEmpty!10092 (= setRes!10092 (and tp!444427 (inv!21617 setElem!10092) e!984007))))

(declare-fun setRest!10092 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10092 (= (_2!8811 (h!21747 (zeroValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10092 true) setRest!10092))))

(assert (= b!1538015 b!1538017))

(assert (= (and b!1538015 condSetEmpty!10092) setIsEmpty!10092))

(assert (= (and b!1538015 (not condSetEmpty!10092)) setNonEmpty!10092))

(assert (= setNonEmpty!10092 b!1538016))

(assert (= (and b!1537886 ((_ is Cons!16346) (zeroValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))) b!1538015))

(declare-fun m!1812826 () Bool)

(assert (=> b!1538015 m!1812826))

(declare-fun m!1812828 () Bool)

(assert (=> setNonEmpty!10092 m!1812828))

(declare-fun tp!444433 () Bool)

(declare-fun e!984008 () Bool)

(declare-fun e!984009 () Bool)

(declare-fun b!1538018 () Bool)

(declare-fun setRes!10093 () Bool)

(declare-fun tp!444431 () Bool)

(assert (=> b!1538018 (= e!984008 (and tp!444431 (inv!21617 (_2!8810 (_1!8811 (h!21747 (minValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))))) e!984009 tp_is_empty!7039 setRes!10093 tp!444433))))

(declare-fun condSetEmpty!10093 () Bool)

(assert (=> b!1538018 (= condSetEmpty!10093 (= (_2!8811 (h!21747 (minValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun b!1538019 () Bool)

(declare-fun e!984010 () Bool)

(declare-fun tp!444429 () Bool)

(assert (=> b!1538019 (= e!984010 tp!444429)))

(declare-fun setIsEmpty!10093 () Bool)

(assert (=> setIsEmpty!10093 setRes!10093))

(declare-fun b!1538020 () Bool)

(declare-fun tp!444430 () Bool)

(assert (=> b!1538020 (= e!984009 tp!444430)))

(assert (=> b!1537886 (= tp!444410 e!984008)))

(declare-fun tp!444432 () Bool)

(declare-fun setNonEmpty!10093 () Bool)

(declare-fun setElem!10093 () Context!1430)

(assert (=> setNonEmpty!10093 (= setRes!10093 (and tp!444432 (inv!21617 setElem!10093) e!984010))))

(declare-fun setRest!10093 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10093 (= (_2!8811 (h!21747 (minValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10093 true) setRest!10093))))

(assert (= b!1538018 b!1538020))

(assert (= (and b!1538018 condSetEmpty!10093) setIsEmpty!10093))

(assert (= (and b!1538018 (not condSetEmpty!10093)) setNonEmpty!10093))

(assert (= setNonEmpty!10093 b!1538019))

(assert (= (and b!1537886 ((_ is Cons!16346) (minValue!1841 (v!23155 (underlying!3377 (v!23156 (underlying!3378 (cache!1909 cacheDown!708)))))))) b!1538018))

(declare-fun m!1812830 () Bool)

(assert (=> b!1538018 m!1812830))

(declare-fun m!1812832 () Bool)

(assert (=> setNonEmpty!10093 m!1812832))

(declare-fun setIsEmpty!10096 () Bool)

(declare-fun setRes!10096 () Bool)

(assert (=> setIsEmpty!10096 setRes!10096))

(declare-fun b!1538028 () Bool)

(declare-fun e!984015 () Bool)

(declare-fun tp!444442 () Bool)

(assert (=> b!1538028 (= e!984015 tp!444442)))

(declare-fun setElem!10096 () Context!1430)

(declare-fun tp!444441 () Bool)

(declare-fun setNonEmpty!10096 () Bool)

(assert (=> setNonEmpty!10096 (= setRes!10096 (and tp!444441 (inv!21617 setElem!10096) e!984015))))

(declare-fun setRest!10096 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10096 (= (_1!8806 (_1!8807 (h!21744 mapDefault!7484))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10096 true) setRest!10096))))

(declare-fun b!1538027 () Bool)

(declare-fun e!984016 () Bool)

(declare-fun tp!444440 () Bool)

(assert (=> b!1538027 (= e!984016 (and setRes!10096 tp!444440))))

(declare-fun condSetEmpty!10096 () Bool)

(assert (=> b!1538027 (= condSetEmpty!10096 (= (_1!8806 (_1!8807 (h!21744 mapDefault!7484))) ((as const (Array Context!1430 Bool)) false)))))

(assert (=> b!1537877 (= tp!444394 e!984016)))

(assert (= (and b!1538027 condSetEmpty!10096) setIsEmpty!10096))

(assert (= (and b!1538027 (not condSetEmpty!10096)) setNonEmpty!10096))

(assert (= setNonEmpty!10096 b!1538028))

(assert (= (and b!1537877 ((_ is Cons!16343) mapDefault!7484)) b!1538027))

(declare-fun m!1812834 () Bool)

(assert (=> setNonEmpty!10096 m!1812834))

(declare-fun b!1538037 () Bool)

(declare-fun e!984023 () Bool)

(declare-fun tp!444452 () Bool)

(assert (=> b!1538037 (= e!984023 tp!444452)))

(declare-fun tp!444453 () Bool)

(declare-fun b!1538038 () Bool)

(declare-fun e!984025 () Bool)

(declare-fun setRes!10099 () Bool)

(declare-fun e!984024 () Bool)

(assert (=> b!1538038 (= e!984025 (and (inv!21617 (_1!8808 (_1!8809 (h!21746 mapDefault!7483)))) e!984024 tp_is_empty!7039 setRes!10099 tp!444453))))

(declare-fun condSetEmpty!10099 () Bool)

(assert (=> b!1538038 (= condSetEmpty!10099 (= (_2!8809 (h!21746 mapDefault!7483)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun setNonEmpty!10099 () Bool)

(declare-fun tp!444451 () Bool)

(declare-fun setElem!10099 () Context!1430)

(assert (=> setNonEmpty!10099 (= setRes!10099 (and tp!444451 (inv!21617 setElem!10099) e!984023))))

(declare-fun setRest!10099 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10099 (= (_2!8809 (h!21746 mapDefault!7483)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10099 true) setRest!10099))))

(assert (=> b!1537905 (= tp!444407 e!984025)))

(declare-fun b!1538039 () Bool)

(declare-fun tp!444454 () Bool)

(assert (=> b!1538039 (= e!984024 tp!444454)))

(declare-fun setIsEmpty!10099 () Bool)

(assert (=> setIsEmpty!10099 setRes!10099))

(assert (= b!1538038 b!1538039))

(assert (= (and b!1538038 condSetEmpty!10099) setIsEmpty!10099))

(assert (= (and b!1538038 (not condSetEmpty!10099)) setNonEmpty!10099))

(assert (= setNonEmpty!10099 b!1538037))

(assert (= (and b!1537905 ((_ is Cons!16345) mapDefault!7483)) b!1538038))

(declare-fun m!1812836 () Bool)

(assert (=> b!1538038 m!1812836))

(declare-fun m!1812838 () Bool)

(assert (=> setNonEmpty!10099 m!1812838))

(declare-fun setIsEmpty!10104 () Bool)

(declare-fun setRes!10105 () Bool)

(assert (=> setIsEmpty!10104 setRes!10105))

(declare-fun b!1538054 () Bool)

(declare-fun e!984039 () Bool)

(declare-fun tp!444474 () Bool)

(assert (=> b!1538054 (= e!984039 tp!444474)))

(declare-fun b!1538055 () Bool)

(declare-fun e!984038 () Bool)

(declare-fun tp!444473 () Bool)

(assert (=> b!1538055 (= e!984038 tp!444473)))

(declare-fun b!1538056 () Bool)

(declare-fun e!984043 () Bool)

(declare-fun tp!444476 () Bool)

(assert (=> b!1538056 (= e!984043 tp!444476)))

(declare-fun mapIsEmpty!7487 () Bool)

(declare-fun mapRes!7487 () Bool)

(assert (=> mapIsEmpty!7487 mapRes!7487))

(declare-fun b!1538057 () Bool)

(declare-fun e!984041 () Bool)

(declare-fun tp!444475 () Bool)

(assert (=> b!1538057 (= e!984041 tp!444475)))

(declare-fun setElem!10105 () Context!1430)

(declare-fun setNonEmpty!10104 () Bool)

(declare-fun setRes!10104 () Bool)

(declare-fun tp!444477 () Bool)

(assert (=> setNonEmpty!10104 (= setRes!10104 (and tp!444477 (inv!21617 setElem!10105) e!984043))))

(declare-fun mapDefault!7487 () List!16413)

(declare-fun setRest!10105 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10104 (= (_2!8809 (h!21746 mapDefault!7487)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10105 true) setRest!10105))))

(declare-fun tp!444478 () Bool)

(declare-fun mapValue!7487 () List!16413)

(declare-fun b!1538058 () Bool)

(declare-fun e!984040 () Bool)

(assert (=> b!1538058 (= e!984040 (and (inv!21617 (_1!8808 (_1!8809 (h!21746 mapValue!7487)))) e!984041 tp_is_empty!7039 setRes!10105 tp!444478))))

(declare-fun condSetEmpty!10104 () Bool)

(assert (=> b!1538058 (= condSetEmpty!10104 (= (_2!8809 (h!21746 mapValue!7487)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun b!1538059 () Bool)

(declare-fun e!984042 () Bool)

(declare-fun tp!444480 () Bool)

(assert (=> b!1538059 (= e!984042 (and (inv!21617 (_1!8808 (_1!8809 (h!21746 mapDefault!7487)))) e!984039 tp_is_empty!7039 setRes!10104 tp!444480))))

(declare-fun condSetEmpty!10105 () Bool)

(assert (=> b!1538059 (= condSetEmpty!10105 (= (_2!8809 (h!21746 mapDefault!7487)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun mapNonEmpty!7487 () Bool)

(declare-fun tp!444481 () Bool)

(assert (=> mapNonEmpty!7487 (= mapRes!7487 (and tp!444481 e!984040))))

(declare-fun mapKey!7487 () (_ BitVec 32))

(declare-fun mapRest!7487 () (Array (_ BitVec 32) List!16413))

(assert (=> mapNonEmpty!7487 (= mapRest!7484 (store mapRest!7487 mapKey!7487 mapValue!7487))))

(declare-fun tp!444479 () Bool)

(declare-fun setNonEmpty!10105 () Bool)

(declare-fun setElem!10104 () Context!1430)

(assert (=> setNonEmpty!10105 (= setRes!10105 (and tp!444479 (inv!21617 setElem!10104) e!984038))))

(declare-fun setRest!10104 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10105 (= (_2!8809 (h!21746 mapValue!7487)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10104 true) setRest!10104))))

(declare-fun condMapEmpty!7487 () Bool)

(assert (=> mapNonEmpty!7482 (= condMapEmpty!7487 (= mapRest!7484 ((as const (Array (_ BitVec 32) List!16413)) mapDefault!7487)))))

(assert (=> mapNonEmpty!7482 (= tp!444396 (and e!984042 mapRes!7487))))

(declare-fun setIsEmpty!10105 () Bool)

(assert (=> setIsEmpty!10105 setRes!10104))

(assert (= (and mapNonEmpty!7482 condMapEmpty!7487) mapIsEmpty!7487))

(assert (= (and mapNonEmpty!7482 (not condMapEmpty!7487)) mapNonEmpty!7487))

(assert (= b!1538058 b!1538057))

(assert (= (and b!1538058 condSetEmpty!10104) setIsEmpty!10104))

(assert (= (and b!1538058 (not condSetEmpty!10104)) setNonEmpty!10105))

(assert (= setNonEmpty!10105 b!1538055))

(assert (= (and mapNonEmpty!7487 ((_ is Cons!16345) mapValue!7487)) b!1538058))

(assert (= b!1538059 b!1538054))

(assert (= (and b!1538059 condSetEmpty!10105) setIsEmpty!10105))

(assert (= (and b!1538059 (not condSetEmpty!10105)) setNonEmpty!10104))

(assert (= setNonEmpty!10104 b!1538056))

(assert (= (and mapNonEmpty!7482 ((_ is Cons!16345) mapDefault!7487)) b!1538059))

(declare-fun m!1812840 () Bool)

(assert (=> b!1538059 m!1812840))

(declare-fun m!1812842 () Bool)

(assert (=> mapNonEmpty!7487 m!1812842))

(declare-fun m!1812844 () Bool)

(assert (=> setNonEmpty!10105 m!1812844))

(declare-fun m!1812846 () Bool)

(assert (=> setNonEmpty!10104 m!1812846))

(declare-fun m!1812848 () Bool)

(assert (=> b!1538058 m!1812848))

(declare-fun b!1538060 () Bool)

(declare-fun e!984044 () Bool)

(declare-fun tp!444483 () Bool)

(assert (=> b!1538060 (= e!984044 tp!444483)))

(declare-fun e!984046 () Bool)

(declare-fun b!1538061 () Bool)

(declare-fun setRes!10106 () Bool)

(declare-fun tp!444484 () Bool)

(declare-fun e!984045 () Bool)

(assert (=> b!1538061 (= e!984046 (and (inv!21617 (_1!8808 (_1!8809 (h!21746 mapValue!7483)))) e!984045 tp_is_empty!7039 setRes!10106 tp!444484))))

(declare-fun condSetEmpty!10106 () Bool)

(assert (=> b!1538061 (= condSetEmpty!10106 (= (_2!8809 (h!21746 mapValue!7483)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun setNonEmpty!10106 () Bool)

(declare-fun setElem!10106 () Context!1430)

(declare-fun tp!444482 () Bool)

(assert (=> setNonEmpty!10106 (= setRes!10106 (and tp!444482 (inv!21617 setElem!10106) e!984044))))

(declare-fun setRest!10106 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10106 (= (_2!8809 (h!21746 mapValue!7483)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10106 true) setRest!10106))))

(assert (=> mapNonEmpty!7482 (= tp!444400 e!984046)))

(declare-fun b!1538062 () Bool)

(declare-fun tp!444485 () Bool)

(assert (=> b!1538062 (= e!984045 tp!444485)))

(declare-fun setIsEmpty!10106 () Bool)

(assert (=> setIsEmpty!10106 setRes!10106))

(assert (= b!1538061 b!1538062))

(assert (= (and b!1538061 condSetEmpty!10106) setIsEmpty!10106))

(assert (= (and b!1538061 (not condSetEmpty!10106)) setNonEmpty!10106))

(assert (= setNonEmpty!10106 b!1538060))

(assert (= (and mapNonEmpty!7482 ((_ is Cons!16345) mapValue!7483)) b!1538061))

(declare-fun m!1812850 () Bool)

(assert (=> b!1538061 m!1812850))

(declare-fun m!1812852 () Bool)

(assert (=> setNonEmpty!10106 m!1812852))

(declare-fun setIsEmpty!10107 () Bool)

(declare-fun setRes!10107 () Bool)

(assert (=> setIsEmpty!10107 setRes!10107))

(declare-fun b!1538064 () Bool)

(declare-fun e!984047 () Bool)

(declare-fun tp!444488 () Bool)

(assert (=> b!1538064 (= e!984047 tp!444488)))

(declare-fun tp!444487 () Bool)

(declare-fun setNonEmpty!10107 () Bool)

(declare-fun setElem!10107 () Context!1430)

(assert (=> setNonEmpty!10107 (= setRes!10107 (and tp!444487 (inv!21617 setElem!10107) e!984047))))

(declare-fun setRest!10107 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10107 (= (_1!8806 (_1!8807 (h!21744 (zeroValue!1839 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10107 true) setRest!10107))))

(declare-fun b!1538063 () Bool)

(declare-fun e!984048 () Bool)

(declare-fun tp!444486 () Bool)

(assert (=> b!1538063 (= e!984048 (and setRes!10107 tp!444486))))

(declare-fun condSetEmpty!10107 () Bool)

(assert (=> b!1538063 (= condSetEmpty!10107 (= (_1!8806 (_1!8807 (h!21744 (zeroValue!1839 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))))) ((as const (Array Context!1430 Bool)) false)))))

(assert (=> b!1537906 (= tp!444406 e!984048)))

(assert (= (and b!1538063 condSetEmpty!10107) setIsEmpty!10107))

(assert (= (and b!1538063 (not condSetEmpty!10107)) setNonEmpty!10107))

(assert (= setNonEmpty!10107 b!1538064))

(assert (= (and b!1537906 ((_ is Cons!16343) (zeroValue!1839 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81)))))))) b!1538063))

(declare-fun m!1812854 () Bool)

(assert (=> setNonEmpty!10107 m!1812854))

(declare-fun setIsEmpty!10108 () Bool)

(declare-fun setRes!10108 () Bool)

(assert (=> setIsEmpty!10108 setRes!10108))

(declare-fun b!1538066 () Bool)

(declare-fun e!984049 () Bool)

(declare-fun tp!444491 () Bool)

(assert (=> b!1538066 (= e!984049 tp!444491)))

(declare-fun tp!444490 () Bool)

(declare-fun setElem!10108 () Context!1430)

(declare-fun setNonEmpty!10108 () Bool)

(assert (=> setNonEmpty!10108 (= setRes!10108 (and tp!444490 (inv!21617 setElem!10108) e!984049))))

(declare-fun setRest!10108 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10108 (= (_1!8806 (_1!8807 (h!21744 (minValue!1839 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10108 true) setRest!10108))))

(declare-fun b!1538065 () Bool)

(declare-fun e!984050 () Bool)

(declare-fun tp!444489 () Bool)

(assert (=> b!1538065 (= e!984050 (and setRes!10108 tp!444489))))

(declare-fun condSetEmpty!10108 () Bool)

(assert (=> b!1538065 (= condSetEmpty!10108 (= (_1!8806 (_1!8807 (h!21744 (minValue!1839 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81))))))))) ((as const (Array Context!1430 Bool)) false)))))

(assert (=> b!1537906 (= tp!444405 e!984050)))

(assert (= (and b!1538065 condSetEmpty!10108) setIsEmpty!10108))

(assert (= (and b!1538065 (not condSetEmpty!10108)) setNonEmpty!10108))

(assert (= setNonEmpty!10108 b!1538066))

(assert (= (and b!1537906 ((_ is Cons!16343) (minValue!1839 (v!23151 (underlying!3373 (v!23152 (underlying!3374 (cache!1907 cacheFurthestNullable!81)))))))) b!1538065))

(declare-fun m!1812856 () Bool)

(assert (=> setNonEmpty!10108 m!1812856))

(declare-fun b!1538077 () Bool)

(declare-fun b_free!40031 () Bool)

(declare-fun b_next!40735 () Bool)

(assert (=> b!1538077 (= b_free!40031 (not b_next!40735))))

(declare-fun tp!444502 () Bool)

(declare-fun b_and!106909 () Bool)

(assert (=> b!1538077 (= tp!444502 b_and!106909)))

(declare-fun b_free!40033 () Bool)

(declare-fun b_next!40737 () Bool)

(assert (=> b!1538077 (= b_free!40033 (not b_next!40737))))

(declare-fun tp!444501 () Bool)

(declare-fun b_and!106911 () Bool)

(assert (=> b!1538077 (= tp!444501 b_and!106911)))

(declare-fun e!984062 () Bool)

(assert (=> b!1538077 (= e!984062 (and tp!444502 tp!444501))))

(declare-fun e!984059 () Bool)

(declare-fun tp!444500 () Bool)

(declare-fun b!1538076 () Bool)

(assert (=> b!1538076 (= e!984059 (and tp!444500 (inv!21607 (tag!3137 (h!21749 (t!140622 rulesArg!359)))) (inv!21614 (transformation!2873 (h!21749 (t!140622 rulesArg!359)))) e!984062))))

(declare-fun b!1538075 () Bool)

(declare-fun e!984061 () Bool)

(declare-fun tp!444503 () Bool)

(assert (=> b!1538075 (= e!984061 (and e!984059 tp!444503))))

(assert (=> b!1537883 (= tp!444386 e!984061)))

(assert (= b!1538076 b!1538077))

(assert (= b!1538075 b!1538076))

(assert (= (and b!1537883 ((_ is Cons!16348) (t!140622 rulesArg!359))) b!1538075))

(declare-fun m!1812858 () Bool)

(assert (=> b!1538076 m!1812858))

(declare-fun m!1812860 () Bool)

(assert (=> b!1538076 m!1812860))

(declare-fun b!1538086 () Bool)

(declare-fun e!984067 () Bool)

(declare-fun tp!444512 () Bool)

(declare-fun tp!444510 () Bool)

(assert (=> b!1538086 (= e!984067 (and (inv!21613 (left!13453 (c!251596 (totalInput!2362 cacheFurthestNullable!81)))) tp!444510 (inv!21613 (right!13783 (c!251596 (totalInput!2362 cacheFurthestNullable!81)))) tp!444512))))

(declare-fun b!1538088 () Bool)

(declare-fun e!984068 () Bool)

(declare-fun tp!444511 () Bool)

(assert (=> b!1538088 (= e!984068 tp!444511)))

(declare-fun b!1538087 () Bool)

(declare-fun inv!21618 (IArray!10985) Bool)

(assert (=> b!1538087 (= e!984067 (and (inv!21618 (xs!8290 (c!251596 (totalInput!2362 cacheFurthestNullable!81)))) e!984068))))

(assert (=> b!1537904 (= tp!444404 (and (inv!21613 (c!251596 (totalInput!2362 cacheFurthestNullable!81))) e!984067))))

(assert (= (and b!1537904 ((_ is Node!5490) (c!251596 (totalInput!2362 cacheFurthestNullable!81)))) b!1538086))

(assert (= b!1538087 b!1538088))

(assert (= (and b!1537904 ((_ is Leaf!8134) (c!251596 (totalInput!2362 cacheFurthestNullable!81)))) b!1538087))

(declare-fun m!1812862 () Bool)

(assert (=> b!1538086 m!1812862))

(declare-fun m!1812864 () Bool)

(assert (=> b!1538086 m!1812864))

(declare-fun m!1812866 () Bool)

(assert (=> b!1538087 m!1812866))

(assert (=> b!1537904 m!1812660))

(declare-fun b!1538089 () Bool)

(declare-fun e!984069 () Bool)

(declare-fun tp!444514 () Bool)

(assert (=> b!1538089 (= e!984069 tp!444514)))

(declare-fun e!984071 () Bool)

(declare-fun e!984070 () Bool)

(declare-fun tp!444515 () Bool)

(declare-fun b!1538090 () Bool)

(declare-fun setRes!10109 () Bool)

(assert (=> b!1538090 (= e!984071 (and (inv!21617 (_1!8808 (_1!8809 (h!21746 (zeroValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))))) e!984070 tp_is_empty!7039 setRes!10109 tp!444515))))

(declare-fun condSetEmpty!10109 () Bool)

(assert (=> b!1538090 (= condSetEmpty!10109 (= (_2!8809 (h!21746 (zeroValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun setElem!10109 () Context!1430)

(declare-fun tp!444513 () Bool)

(declare-fun setNonEmpty!10109 () Bool)

(assert (=> setNonEmpty!10109 (= setRes!10109 (and tp!444513 (inv!21617 setElem!10109) e!984069))))

(declare-fun setRest!10109 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10109 (= (_2!8809 (h!21746 (zeroValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10109 true) setRest!10109))))

(assert (=> b!1537913 (= tp!444399 e!984071)))

(declare-fun b!1538091 () Bool)

(declare-fun tp!444516 () Bool)

(assert (=> b!1538091 (= e!984070 tp!444516)))

(declare-fun setIsEmpty!10109 () Bool)

(assert (=> setIsEmpty!10109 setRes!10109))

(assert (= b!1538090 b!1538091))

(assert (= (and b!1538090 condSetEmpty!10109) setIsEmpty!10109))

(assert (= (and b!1538090 (not condSetEmpty!10109)) setNonEmpty!10109))

(assert (= setNonEmpty!10109 b!1538089))

(assert (= (and b!1537913 ((_ is Cons!16345) (zeroValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))) b!1538090))

(declare-fun m!1812868 () Bool)

(assert (=> b!1538090 m!1812868))

(declare-fun m!1812870 () Bool)

(assert (=> setNonEmpty!10109 m!1812870))

(declare-fun b!1538092 () Bool)

(declare-fun e!984072 () Bool)

(declare-fun tp!444518 () Bool)

(assert (=> b!1538092 (= e!984072 tp!444518)))

(declare-fun e!984074 () Bool)

(declare-fun setRes!10110 () Bool)

(declare-fun e!984073 () Bool)

(declare-fun b!1538093 () Bool)

(declare-fun tp!444519 () Bool)

(assert (=> b!1538093 (= e!984074 (and (inv!21617 (_1!8808 (_1!8809 (h!21746 (minValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))))) e!984073 tp_is_empty!7039 setRes!10110 tp!444519))))

(declare-fun condSetEmpty!10110 () Bool)

(assert (=> b!1538093 (= condSetEmpty!10110 (= (_2!8809 (h!21746 (minValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun setElem!10110 () Context!1430)

(declare-fun setNonEmpty!10110 () Bool)

(declare-fun tp!444517 () Bool)

(assert (=> setNonEmpty!10110 (= setRes!10110 (and tp!444517 (inv!21617 setElem!10110) e!984072))))

(declare-fun setRest!10110 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10110 (= (_2!8809 (h!21746 (minValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10110 true) setRest!10110))))

(assert (=> b!1537913 (= tp!444389 e!984074)))

(declare-fun b!1538094 () Bool)

(declare-fun tp!444520 () Bool)

(assert (=> b!1538094 (= e!984073 tp!444520)))

(declare-fun setIsEmpty!10110 () Bool)

(assert (=> setIsEmpty!10110 setRes!10110))

(assert (= b!1538093 b!1538094))

(assert (= (and b!1538093 condSetEmpty!10110) setIsEmpty!10110))

(assert (= (and b!1538093 (not condSetEmpty!10110)) setNonEmpty!10110))

(assert (= setNonEmpty!10110 b!1538092))

(assert (= (and b!1537913 ((_ is Cons!16345) (minValue!1840 (v!23153 (underlying!3375 (v!23154 (underlying!3376 (cache!1908 cacheUp!695)))))))) b!1538093))

(declare-fun m!1812872 () Bool)

(assert (=> b!1538093 m!1812872))

(declare-fun m!1812874 () Bool)

(assert (=> setNonEmpty!10110 m!1812874))

(declare-fun tp!444523 () Bool)

(declare-fun e!984075 () Bool)

(declare-fun b!1538095 () Bool)

(declare-fun tp!444521 () Bool)

(assert (=> b!1538095 (= e!984075 (and (inv!21613 (left!13453 (c!251596 totalInput!496))) tp!444521 (inv!21613 (right!13783 (c!251596 totalInput!496))) tp!444523))))

(declare-fun b!1538097 () Bool)

(declare-fun e!984076 () Bool)

(declare-fun tp!444522 () Bool)

(assert (=> b!1538097 (= e!984076 tp!444522)))

(declare-fun b!1538096 () Bool)

(assert (=> b!1538096 (= e!984075 (and (inv!21618 (xs!8290 (c!251596 totalInput!496))) e!984076))))

(assert (=> b!1537912 (= tp!444397 (and (inv!21613 (c!251596 totalInput!496)) e!984075))))

(assert (= (and b!1537912 ((_ is Node!5490) (c!251596 totalInput!496))) b!1538095))

(assert (= b!1538096 b!1538097))

(assert (= (and b!1537912 ((_ is Leaf!8134) (c!251596 totalInput!496))) b!1538096))

(declare-fun m!1812876 () Bool)

(assert (=> b!1538095 m!1812876))

(declare-fun m!1812878 () Bool)

(assert (=> b!1538095 m!1812878))

(declare-fun m!1812880 () Bool)

(assert (=> b!1538096 m!1812880))

(assert (=> b!1537912 m!1812678))

(declare-fun setIsEmpty!10115 () Bool)

(declare-fun setRes!10116 () Bool)

(assert (=> setIsEmpty!10115 setRes!10116))

(declare-fun tp!444552 () Bool)

(declare-fun e!984093 () Bool)

(declare-fun tp!444549 () Bool)

(declare-fun e!984089 () Bool)

(declare-fun mapDefault!7490 () List!16414)

(declare-fun setRes!10115 () Bool)

(declare-fun b!1538112 () Bool)

(assert (=> b!1538112 (= e!984089 (and tp!444549 (inv!21617 (_2!8810 (_1!8811 (h!21747 mapDefault!7490)))) e!984093 tp_is_empty!7039 setRes!10115 tp!444552))))

(declare-fun condSetEmpty!10116 () Bool)

(assert (=> b!1538112 (= condSetEmpty!10116 (= (_2!8811 (h!21747 mapDefault!7490)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun setElem!10116 () Context!1430)

(declare-fun setNonEmpty!10115 () Bool)

(declare-fun e!984092 () Bool)

(declare-fun tp!444554 () Bool)

(assert (=> setNonEmpty!10115 (= setRes!10115 (and tp!444554 (inv!21617 setElem!10116) e!984092))))

(declare-fun setRest!10115 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10115 (= (_2!8811 (h!21747 mapDefault!7490)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10116 true) setRest!10115))))

(declare-fun mapNonEmpty!7490 () Bool)

(declare-fun mapRes!7490 () Bool)

(declare-fun tp!444547 () Bool)

(declare-fun e!984090 () Bool)

(assert (=> mapNonEmpty!7490 (= mapRes!7490 (and tp!444547 e!984090))))

(declare-fun mapRest!7490 () (Array (_ BitVec 32) List!16414))

(declare-fun mapKey!7490 () (_ BitVec 32))

(declare-fun mapValue!7490 () List!16414)

(assert (=> mapNonEmpty!7490 (= mapRest!7483 (store mapRest!7490 mapKey!7490 mapValue!7490))))

(declare-fun b!1538113 () Bool)

(declare-fun e!984091 () Bool)

(declare-fun tp!444546 () Bool)

(assert (=> b!1538113 (= e!984091 tp!444546)))

(declare-fun b!1538114 () Bool)

(declare-fun e!984094 () Bool)

(declare-fun tp!444553 () Bool)

(assert (=> b!1538114 (= e!984094 tp!444553)))

(declare-fun condMapEmpty!7490 () Bool)

(assert (=> mapNonEmpty!7484 (= condMapEmpty!7490 (= mapRest!7483 ((as const (Array (_ BitVec 32) List!16414)) mapDefault!7490)))))

(assert (=> mapNonEmpty!7484 (= tp!444403 (and e!984089 mapRes!7490))))

(declare-fun b!1538115 () Bool)

(declare-fun tp!444551 () Bool)

(assert (=> b!1538115 (= e!984092 tp!444551)))

(declare-fun mapIsEmpty!7490 () Bool)

(assert (=> mapIsEmpty!7490 mapRes!7490))

(declare-fun b!1538116 () Bool)

(declare-fun tp!444556 () Bool)

(declare-fun tp!444550 () Bool)

(assert (=> b!1538116 (= e!984090 (and tp!444550 (inv!21617 (_2!8810 (_1!8811 (h!21747 mapValue!7490)))) e!984091 tp_is_empty!7039 setRes!10116 tp!444556))))

(declare-fun condSetEmpty!10115 () Bool)

(assert (=> b!1538116 (= condSetEmpty!10115 (= (_2!8811 (h!21747 mapValue!7490)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun setIsEmpty!10116 () Bool)

(assert (=> setIsEmpty!10116 setRes!10115))

(declare-fun b!1538117 () Bool)

(declare-fun tp!444555 () Bool)

(assert (=> b!1538117 (= e!984093 tp!444555)))

(declare-fun setNonEmpty!10116 () Bool)

(declare-fun setElem!10115 () Context!1430)

(declare-fun tp!444548 () Bool)

(assert (=> setNonEmpty!10116 (= setRes!10116 (and tp!444548 (inv!21617 setElem!10115) e!984094))))

(declare-fun setRest!10116 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10116 (= (_2!8811 (h!21747 mapValue!7490)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10115 true) setRest!10116))))

(assert (= (and mapNonEmpty!7484 condMapEmpty!7490) mapIsEmpty!7490))

(assert (= (and mapNonEmpty!7484 (not condMapEmpty!7490)) mapNonEmpty!7490))

(assert (= b!1538116 b!1538113))

(assert (= (and b!1538116 condSetEmpty!10115) setIsEmpty!10115))

(assert (= (and b!1538116 (not condSetEmpty!10115)) setNonEmpty!10116))

(assert (= setNonEmpty!10116 b!1538114))

(assert (= (and mapNonEmpty!7490 ((_ is Cons!16346) mapValue!7490)) b!1538116))

(assert (= b!1538112 b!1538117))

(assert (= (and b!1538112 condSetEmpty!10116) setIsEmpty!10116))

(assert (= (and b!1538112 (not condSetEmpty!10116)) setNonEmpty!10115))

(assert (= setNonEmpty!10115 b!1538115))

(assert (= (and mapNonEmpty!7484 ((_ is Cons!16346) mapDefault!7490)) b!1538112))

(declare-fun m!1812882 () Bool)

(assert (=> setNonEmpty!10116 m!1812882))

(declare-fun m!1812884 () Bool)

(assert (=> mapNonEmpty!7490 m!1812884))

(declare-fun m!1812886 () Bool)

(assert (=> b!1538112 m!1812886))

(declare-fun m!1812888 () Bool)

(assert (=> setNonEmpty!10115 m!1812888))

(declare-fun m!1812890 () Bool)

(assert (=> b!1538116 m!1812890))

(declare-fun setRes!10117 () Bool)

(declare-fun tp!444561 () Bool)

(declare-fun e!984095 () Bool)

(declare-fun b!1538118 () Bool)

(declare-fun e!984096 () Bool)

(declare-fun tp!444559 () Bool)

(assert (=> b!1538118 (= e!984095 (and tp!444559 (inv!21617 (_2!8810 (_1!8811 (h!21747 mapValue!7482)))) e!984096 tp_is_empty!7039 setRes!10117 tp!444561))))

(declare-fun condSetEmpty!10117 () Bool)

(assert (=> b!1538118 (= condSetEmpty!10117 (= (_2!8811 (h!21747 mapValue!7482)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun b!1538119 () Bool)

(declare-fun e!984097 () Bool)

(declare-fun tp!444557 () Bool)

(assert (=> b!1538119 (= e!984097 tp!444557)))

(declare-fun setIsEmpty!10117 () Bool)

(assert (=> setIsEmpty!10117 setRes!10117))

(declare-fun b!1538120 () Bool)

(declare-fun tp!444558 () Bool)

(assert (=> b!1538120 (= e!984096 tp!444558)))

(assert (=> mapNonEmpty!7484 (= tp!444409 e!984095)))

(declare-fun tp!444560 () Bool)

(declare-fun setNonEmpty!10117 () Bool)

(declare-fun setElem!10117 () Context!1430)

(assert (=> setNonEmpty!10117 (= setRes!10117 (and tp!444560 (inv!21617 setElem!10117) e!984097))))

(declare-fun setRest!10117 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10117 (= (_2!8811 (h!21747 mapValue!7482)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10117 true) setRest!10117))))

(assert (= b!1538118 b!1538120))

(assert (= (and b!1538118 condSetEmpty!10117) setIsEmpty!10117))

(assert (= (and b!1538118 (not condSetEmpty!10117)) setNonEmpty!10117))

(assert (= setNonEmpty!10117 b!1538119))

(assert (= (and mapNonEmpty!7484 ((_ is Cons!16346) mapValue!7482)) b!1538118))

(declare-fun m!1812892 () Bool)

(assert (=> b!1538118 m!1812892))

(declare-fun m!1812894 () Bool)

(assert (=> setNonEmpty!10117 m!1812894))

(declare-fun b!1538133 () Bool)

(declare-fun e!984100 () Bool)

(declare-fun tp!444574 () Bool)

(assert (=> b!1538133 (= e!984100 tp!444574)))

(declare-fun b!1538131 () Bool)

(assert (=> b!1538131 (= e!984100 tp_is_empty!7039)))

(declare-fun b!1538132 () Bool)

(declare-fun tp!444576 () Bool)

(declare-fun tp!444575 () Bool)

(assert (=> b!1538132 (= e!984100 (and tp!444576 tp!444575))))

(declare-fun b!1538134 () Bool)

(declare-fun tp!444572 () Bool)

(declare-fun tp!444573 () Bool)

(assert (=> b!1538134 (= e!984100 (and tp!444572 tp!444573))))

(assert (=> b!1537908 (= tp!444392 e!984100)))

(assert (= (and b!1537908 ((_ is ElementMatch!4197) (regex!2873 (h!21749 rulesArg!359)))) b!1538131))

(assert (= (and b!1537908 ((_ is Concat!7160) (regex!2873 (h!21749 rulesArg!359)))) b!1538132))

(assert (= (and b!1537908 ((_ is Star!4197) (regex!2873 (h!21749 rulesArg!359)))) b!1538133))

(assert (= (and b!1537908 ((_ is Union!4197) (regex!2873 (h!21749 rulesArg!359)))) b!1538134))

(declare-fun b!1538145 () Bool)

(declare-fun e!984109 () Bool)

(declare-fun tp!444593 () Bool)

(assert (=> b!1538145 (= e!984109 tp!444593)))

(declare-fun mapNonEmpty!7493 () Bool)

(declare-fun mapRes!7493 () Bool)

(declare-fun tp!444596 () Bool)

(declare-fun e!984112 () Bool)

(assert (=> mapNonEmpty!7493 (= mapRes!7493 (and tp!444596 e!984112))))

(declare-fun mapValue!7493 () List!16411)

(declare-fun mapKey!7493 () (_ BitVec 32))

(declare-fun mapRest!7493 () (Array (_ BitVec 32) List!16411))

(assert (=> mapNonEmpty!7493 (= mapRest!7482 (store mapRest!7493 mapKey!7493 mapValue!7493))))

(declare-fun setRes!10122 () Bool)

(declare-fun tp!444592 () Bool)

(declare-fun setNonEmpty!10122 () Bool)

(declare-fun setElem!10123 () Context!1430)

(assert (=> setNonEmpty!10122 (= setRes!10122 (and tp!444592 (inv!21617 setElem!10123) e!984109))))

(declare-fun setRest!10122 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10122 (= (_1!8806 (_1!8807 (h!21744 mapValue!7493))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10123 true) setRest!10122))))

(declare-fun setIsEmpty!10122 () Bool)

(assert (=> setIsEmpty!10122 setRes!10122))

(declare-fun setIsEmpty!10123 () Bool)

(declare-fun setRes!10123 () Bool)

(assert (=> setIsEmpty!10123 setRes!10123))

(declare-fun b!1538146 () Bool)

(declare-fun e!984111 () Bool)

(declare-fun tp!444591 () Bool)

(assert (=> b!1538146 (= e!984111 (and setRes!10123 tp!444591))))

(declare-fun condSetEmpty!10122 () Bool)

(declare-fun mapDefault!7493 () List!16411)

(assert (=> b!1538146 (= condSetEmpty!10122 (= (_1!8806 (_1!8807 (h!21744 mapDefault!7493))) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun b!1538147 () Bool)

(declare-fun tp!444597 () Bool)

(assert (=> b!1538147 (= e!984112 (and setRes!10122 tp!444597))))

(declare-fun condSetEmpty!10123 () Bool)

(assert (=> b!1538147 (= condSetEmpty!10123 (= (_1!8806 (_1!8807 (h!21744 mapValue!7493))) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun mapIsEmpty!7493 () Bool)

(assert (=> mapIsEmpty!7493 mapRes!7493))

(declare-fun b!1538148 () Bool)

(declare-fun e!984110 () Bool)

(declare-fun tp!444594 () Bool)

(assert (=> b!1538148 (= e!984110 tp!444594)))

(declare-fun condMapEmpty!7493 () Bool)

(assert (=> mapNonEmpty!7483 (= condMapEmpty!7493 (= mapRest!7482 ((as const (Array (_ BitVec 32) List!16411)) mapDefault!7493)))))

(assert (=> mapNonEmpty!7483 (= tp!444402 (and e!984111 mapRes!7493))))

(declare-fun setElem!10122 () Context!1430)

(declare-fun setNonEmpty!10123 () Bool)

(declare-fun tp!444595 () Bool)

(assert (=> setNonEmpty!10123 (= setRes!10123 (and tp!444595 (inv!21617 setElem!10122) e!984110))))

(declare-fun setRest!10123 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10123 (= (_1!8806 (_1!8807 (h!21744 mapDefault!7493))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10122 true) setRest!10123))))

(assert (= (and mapNonEmpty!7483 condMapEmpty!7493) mapIsEmpty!7493))

(assert (= (and mapNonEmpty!7483 (not condMapEmpty!7493)) mapNonEmpty!7493))

(assert (= (and b!1538147 condSetEmpty!10123) setIsEmpty!10122))

(assert (= (and b!1538147 (not condSetEmpty!10123)) setNonEmpty!10122))

(assert (= setNonEmpty!10122 b!1538145))

(assert (= (and mapNonEmpty!7493 ((_ is Cons!16343) mapValue!7493)) b!1538147))

(assert (= (and b!1538146 condSetEmpty!10122) setIsEmpty!10123))

(assert (= (and b!1538146 (not condSetEmpty!10122)) setNonEmpty!10123))

(assert (= setNonEmpty!10123 b!1538148))

(assert (= (and mapNonEmpty!7483 ((_ is Cons!16343) mapDefault!7493)) b!1538146))

(declare-fun m!1812896 () Bool)

(assert (=> mapNonEmpty!7493 m!1812896))

(declare-fun m!1812898 () Bool)

(assert (=> setNonEmpty!10122 m!1812898))

(declare-fun m!1812900 () Bool)

(assert (=> setNonEmpty!10123 m!1812900))

(declare-fun setIsEmpty!10124 () Bool)

(declare-fun setRes!10124 () Bool)

(assert (=> setIsEmpty!10124 setRes!10124))

(declare-fun b!1538150 () Bool)

(declare-fun e!984113 () Bool)

(declare-fun tp!444600 () Bool)

(assert (=> b!1538150 (= e!984113 tp!444600)))

(declare-fun tp!444599 () Bool)

(declare-fun setElem!10124 () Context!1430)

(declare-fun setNonEmpty!10124 () Bool)

(assert (=> setNonEmpty!10124 (= setRes!10124 (and tp!444599 (inv!21617 setElem!10124) e!984113))))

(declare-fun setRest!10124 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10124 (= (_1!8806 (_1!8807 (h!21744 mapValue!7484))) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10124 true) setRest!10124))))

(declare-fun b!1538149 () Bool)

(declare-fun e!984114 () Bool)

(declare-fun tp!444598 () Bool)

(assert (=> b!1538149 (= e!984114 (and setRes!10124 tp!444598))))

(declare-fun condSetEmpty!10124 () Bool)

(assert (=> b!1538149 (= condSetEmpty!10124 (= (_1!8806 (_1!8807 (h!21744 mapValue!7484))) ((as const (Array Context!1430 Bool)) false)))))

(assert (=> mapNonEmpty!7483 (= tp!444388 e!984114)))

(assert (= (and b!1538149 condSetEmpty!10124) setIsEmpty!10124))

(assert (= (and b!1538149 (not condSetEmpty!10124)) setNonEmpty!10124))

(assert (= setNonEmpty!10124 b!1538150))

(assert (= (and mapNonEmpty!7483 ((_ is Cons!16343) mapValue!7484)) b!1538149))

(declare-fun m!1812902 () Bool)

(assert (=> setNonEmpty!10124 m!1812902))

(declare-fun tp!444603 () Bool)

(declare-fun e!984115 () Bool)

(declare-fun b!1538151 () Bool)

(declare-fun tp!444605 () Bool)

(declare-fun e!984116 () Bool)

(declare-fun setRes!10125 () Bool)

(assert (=> b!1538151 (= e!984115 (and tp!444603 (inv!21617 (_2!8810 (_1!8811 (h!21747 mapDefault!7482)))) e!984116 tp_is_empty!7039 setRes!10125 tp!444605))))

(declare-fun condSetEmpty!10125 () Bool)

(assert (=> b!1538151 (= condSetEmpty!10125 (= (_2!8811 (h!21747 mapDefault!7482)) ((as const (Array Context!1430 Bool)) false)))))

(declare-fun b!1538152 () Bool)

(declare-fun e!984117 () Bool)

(declare-fun tp!444601 () Bool)

(assert (=> b!1538152 (= e!984117 tp!444601)))

(declare-fun setIsEmpty!10125 () Bool)

(assert (=> setIsEmpty!10125 setRes!10125))

(declare-fun b!1538153 () Bool)

(declare-fun tp!444602 () Bool)

(assert (=> b!1538153 (= e!984116 tp!444602)))

(assert (=> b!1537892 (= tp!444411 e!984115)))

(declare-fun setNonEmpty!10125 () Bool)

(declare-fun tp!444604 () Bool)

(declare-fun setElem!10125 () Context!1430)

(assert (=> setNonEmpty!10125 (= setRes!10125 (and tp!444604 (inv!21617 setElem!10125) e!984117))))

(declare-fun setRest!10125 () (InoxSet Context!1430))

(assert (=> setNonEmpty!10125 (= (_2!8811 (h!21747 mapDefault!7482)) ((_ map or) (store ((as const (Array Context!1430 Bool)) false) setElem!10125 true) setRest!10125))))

(assert (= b!1538151 b!1538153))

(assert (= (and b!1538151 condSetEmpty!10125) setIsEmpty!10125))

(assert (= (and b!1538151 (not condSetEmpty!10125)) setNonEmpty!10125))

(assert (= setNonEmpty!10125 b!1538152))

(assert (= (and b!1537892 ((_ is Cons!16346) mapDefault!7482)) b!1538151))

(declare-fun m!1812904 () Bool)

(assert (=> b!1538151 m!1812904))

(declare-fun m!1812906 () Bool)

(assert (=> setNonEmpty!10125 m!1812906))

(declare-fun tp!444606 () Bool)

(declare-fun b!1538154 () Bool)

(declare-fun e!984118 () Bool)

(declare-fun tp!444608 () Bool)

(assert (=> b!1538154 (= e!984118 (and (inv!21613 (left!13453 (c!251596 input!1460))) tp!444606 (inv!21613 (right!13783 (c!251596 input!1460))) tp!444608))))

(declare-fun b!1538156 () Bool)

(declare-fun e!984119 () Bool)

(declare-fun tp!444607 () Bool)

(assert (=> b!1538156 (= e!984119 tp!444607)))

(declare-fun b!1538155 () Bool)

(assert (=> b!1538155 (= e!984118 (and (inv!21618 (xs!8290 (c!251596 input!1460))) e!984119))))

(assert (=> b!1537916 (= tp!444391 (and (inv!21613 (c!251596 input!1460)) e!984118))))

(assert (= (and b!1537916 ((_ is Node!5490) (c!251596 input!1460))) b!1538154))

(assert (= b!1538155 b!1538156))

(assert (= (and b!1537916 ((_ is Leaf!8134) (c!251596 input!1460))) b!1538155))

(declare-fun m!1812908 () Bool)

(assert (=> b!1538154 m!1812908))

(declare-fun m!1812910 () Bool)

(assert (=> b!1538154 m!1812910))

(declare-fun m!1812912 () Bool)

(assert (=> b!1538155 m!1812912))

(assert (=> b!1537916 m!1812708))

(check-sat (not b!1538062) (not b!1537931) (not setNonEmpty!10109) (not b!1538088) (not b!1537955) (not d!458398) (not b!1537986) (not b!1538090) (not b!1538117) (not b!1538097) (not mapNonEmpty!7487) (not b!1538154) (not setNonEmpty!10117) (not d!458416) (not b!1538119) (not setNonEmpty!10092) (not b_next!40729) (not b!1538149) (not b!1538150) (not setNonEmpty!10105) (not b!1538155) (not b!1537961) (not d!458406) (not setNonEmpty!10125) tp_is_empty!7039 (not b!1537940) (not b!1537926) (not b!1537912) (not d!458366) (not b!1538038) b_and!106903 (not b!1537904) (not b!1537943) (not b_next!40727) (not b!1538061) (not setNonEmpty!10108) (not b!1538075) (not d!458360) (not b!1538096) (not b!1538152) (not b!1538019) (not b!1538091) (not b_next!40721) (not mapNonEmpty!7490) (not b!1538116) (not setNonEmpty!10093) (not b!1538094) (not b!1537928) (not b!1538113) b_and!106899 (not setNonEmpty!10122) (not b!1537952) (not b!1538092) (not b!1538086) (not b!1538037) (not mapNonEmpty!7493) b_and!106909 (not b_next!40719) (not b!1538059) (not b!1538153) (not setNonEmpty!10104) (not b!1538016) (not b!1538057) (not b!1537946) (not b!1538054) (not d!458382) (not b!1538148) b_and!106907 (not d!458396) (not b!1537927) (not b!1537992) (not b!1538115) (not b!1538151) b_and!106893 (not setNonEmpty!10096) (not b!1538020) (not b_next!40733) (not d!458412) (not b!1538066) (not b!1538039) (not b!1538134) (not b!1537989) (not b!1538120) (not b!1538006) (not b!1538112) (not b!1538018) (not setNonEmpty!10099) (not b!1538017) (not b!1538058) (not b!1538064) (not b!1538055) (not b!1538146) (not b!1538028) (not b!1538118) b_and!106895 (not setNonEmpty!10124) (not b!1538004) (not b_next!40737) (not setNonEmpty!10106) (not b!1538095) (not b!1538065) (not b_next!40723) (not b!1537916) (not setNonEmpty!10107) (not b!1538005) b_and!106911 (not b_next!40725) (not setNonEmpty!10115) (not b!1538015) (not b!1538114) (not d!458394) (not b!1538156) (not b!1538132) b_and!106897 (not b!1537984) (not b!1537960) (not d!458402) (not b_next!40731) (not d!458386) (not d!458400) (not b!1538060) (not b!1538093) (not b!1538133) (not d!458368) (not setNonEmpty!10110) (not b!1537991) (not d!458352) (not b!1538089) (not b!1538145) (not b!1537993) (not b!1537949) (not b!1538027) (not b!1537987) (not b!1537990) (not b!1538087) (not b!1537950) (not d!458370) (not b!1538076) (not b!1538002) (not b!1537938) b_and!106901 (not b!1538056) (not setNonEmpty!10123) (not b!1538063) (not d!458404) (not b!1538147) (not setNonEmpty!10116) (not d!458414) b_and!106905 (not b_next!40735))
(check-sat (not b_next!40729) b_and!106903 (not b_next!40727) (not b_next!40721) b_and!106899 b_and!106907 b_and!106897 (not b_next!40731) b_and!106901 b_and!106909 (not b_next!40719) b_and!106893 (not b_next!40733) b_and!106895 (not b_next!40737) (not b_next!40723) b_and!106911 (not b_next!40725) b_and!106905 (not b_next!40735))
