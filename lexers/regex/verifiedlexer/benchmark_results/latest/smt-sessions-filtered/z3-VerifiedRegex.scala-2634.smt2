; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142730 () Bool)

(assert start!142730)

(declare-fun b!1535022 () Bool)

(declare-fun b_free!39711 () Bool)

(declare-fun b_next!40415 () Bool)

(assert (=> b!1535022 (= b_free!39711 (not b_next!40415))))

(declare-fun tp!442121 () Bool)

(declare-fun b_and!106589 () Bool)

(assert (=> b!1535022 (= tp!442121 b_and!106589)))

(declare-fun b!1535041 () Bool)

(declare-fun b_free!39713 () Bool)

(declare-fun b_next!40417 () Bool)

(assert (=> b!1535041 (= b_free!39713 (not b_next!40417))))

(declare-fun tp!442106 () Bool)

(declare-fun b_and!106591 () Bool)

(assert (=> b!1535041 (= tp!442106 b_and!106591)))

(declare-fun b!1535033 () Bool)

(declare-fun b_free!39715 () Bool)

(declare-fun b_next!40419 () Bool)

(assert (=> b!1535033 (= b_free!39715 (not b_next!40419))))

(declare-fun tp!442107 () Bool)

(declare-fun b_and!106593 () Bool)

(assert (=> b!1535033 (= tp!442107 b_and!106593)))

(declare-fun b!1535034 () Bool)

(declare-fun b_free!39717 () Bool)

(declare-fun b_next!40421 () Bool)

(assert (=> b!1535034 (= b_free!39717 (not b_next!40421))))

(declare-fun tp!442095 () Bool)

(declare-fun b_and!106595 () Bool)

(assert (=> b!1535034 (= tp!442095 b_and!106595)))

(declare-fun b!1535047 () Bool)

(declare-fun b_free!39719 () Bool)

(declare-fun b_next!40423 () Bool)

(assert (=> b!1535047 (= b_free!39719 (not b_next!40423))))

(declare-fun tp!442096 () Bool)

(declare-fun b_and!106597 () Bool)

(assert (=> b!1535047 (= tp!442096 b_and!106597)))

(declare-fun b!1535050 () Bool)

(declare-fun b_free!39721 () Bool)

(declare-fun b_next!40425 () Bool)

(assert (=> b!1535050 (= b_free!39721 (not b_next!40425))))

(declare-fun tp!442118 () Bool)

(declare-fun b_and!106599 () Bool)

(assert (=> b!1535050 (= tp!442118 b_and!106599)))

(declare-fun b!1535025 () Bool)

(declare-fun b_free!39723 () Bool)

(declare-fun b_next!40427 () Bool)

(assert (=> b!1535025 (= b_free!39723 (not b_next!40427))))

(declare-fun tp!442115 () Bool)

(declare-fun b_and!106601 () Bool)

(assert (=> b!1535025 (= tp!442115 b_and!106601)))

(declare-fun b_free!39725 () Bool)

(declare-fun b_next!40429 () Bool)

(assert (=> b!1535025 (= b_free!39725 (not b_next!40429))))

(declare-fun tp!442103 () Bool)

(declare-fun b_and!106603 () Bool)

(assert (=> b!1535025 (= tp!442103 b_and!106603)))

(declare-fun b!1535016 () Bool)

(declare-fun e!981353 () Bool)

(declare-fun e!981380 () Bool)

(assert (=> b!1535016 (= e!981353 e!981380)))

(declare-fun b!1535017 () Bool)

(declare-fun e!981376 () Bool)

(declare-fun e!981354 () Bool)

(assert (=> b!1535017 (= e!981376 e!981354)))

(declare-fun b!1535018 () Bool)

(declare-fun res!688494 () Bool)

(declare-fun e!981377 () Bool)

(assert (=> b!1535018 (=> (not res!688494) (not e!981377))))

(declare-datatypes ((LexerInterface!2512 0))(
  ( (LexerInterfaceExt!2509 (__x!10226 Int)) (Lexer!2510) )
))
(declare-fun thiss!15733 () LexerInterface!2512)

(declare-datatypes ((List!16297 0))(
  ( (Nil!16229) (Cons!16229 (h!21630 (_ BitVec 16)) (t!140503 List!16297)) )
))
(declare-datatypes ((TokenValue!2950 0))(
  ( (FloatLiteralValue!5900 (text!21095 List!16297)) (TokenValueExt!2949 (__x!10227 Int)) (Broken!14750 (value!91148 List!16297)) (Object!3017) (End!2950) (Def!2950) (Underscore!2950) (Match!2950) (Else!2950) (Error!2950) (Case!2950) (If!2950) (Extends!2950) (Abstract!2950) (Class!2950) (Val!2950) (DelimiterValue!5900 (del!3010 List!16297)) (KeywordValue!2956 (value!91149 List!16297)) (CommentValue!5900 (value!91150 List!16297)) (WhitespaceValue!5900 (value!91151 List!16297)) (IndentationValue!2950 (value!91152 List!16297)) (String!19019) (Int32!2950) (Broken!14751 (value!91153 List!16297)) (Boolean!2951) (Unit!25814) (OperatorValue!2953 (op!3010 List!16297)) (IdentifierValue!5900 (value!91154 List!16297)) (IdentifierValue!5901 (value!91155 List!16297)) (WhitespaceValue!5901 (value!91156 List!16297)) (True!5900) (False!5900) (Broken!14752 (value!91157 List!16297)) (Broken!14753 (value!91158 List!16297)) (True!5901) (RightBrace!2950) (RightBracket!2950) (Colon!2950) (Null!2950) (Comma!2950) (LeftBracket!2950) (False!5901) (LeftBrace!2950) (ImaginaryLiteralValue!2950 (text!21096 List!16297)) (StringLiteralValue!8850 (value!91159 List!16297)) (EOFValue!2950 (value!91160 List!16297)) (IdentValue!2950 (value!91161 List!16297)) (DelimiterValue!5901 (value!91162 List!16297)) (DedentValue!2950 (value!91163 List!16297)) (NewLineValue!2950 (value!91164 List!16297)) (IntegerValue!8850 (value!91165 (_ BitVec 32)) (text!21097 List!16297)) (IntegerValue!8851 (value!91166 Int) (text!21098 List!16297)) (Times!2950) (Or!2950) (Equal!2950) (Minus!2950) (Broken!14754 (value!91167 List!16297)) (And!2950) (Div!2950) (LessEqual!2950) (Mod!2950) (Concat!7129) (Not!2950) (Plus!2950) (SpaceValue!2950 (value!91168 List!16297)) (IntegerValue!8852 (value!91169 Int) (text!21099 List!16297)) (StringLiteralValue!8851 (text!21100 List!16297)) (FloatLiteralValue!5901 (text!21101 List!16297)) (BytesLiteralValue!2950 (value!91170 List!16297)) (CommentValue!5901 (value!91171 List!16297)) (StringLiteralValue!8852 (value!91172 List!16297)) (ErrorTokenValue!2950 (msg!3011 List!16297)) )
))
(declare-datatypes ((C!8536 0))(
  ( (C!8537 (val!4840 Int)) )
))
(declare-datatypes ((List!16298 0))(
  ( (Nil!16230) (Cons!16230 (h!21631 C!8536) (t!140504 List!16298)) )
))
(declare-datatypes ((IArray!10949 0))(
  ( (IArray!10950 (innerList!5532 List!16298)) )
))
(declare-datatypes ((Conc!5472 0))(
  ( (Node!5472 (left!13418 Conc!5472) (right!13748 Conc!5472) (csize!11174 Int) (cheight!5683 Int)) (Leaf!8107 (xs!8272 IArray!10949) (csize!11175 Int)) (Empty!5472) )
))
(declare-datatypes ((BalanceConc!10886 0))(
  ( (BalanceConc!10887 (c!251531 Conc!5472)) )
))
(declare-datatypes ((String!19020 0))(
  ( (String!19021 (value!91173 String)) )
))
(declare-datatypes ((Regex!4179 0))(
  ( (ElementMatch!4179 (c!251532 C!8536)) (Concat!7130 (regOne!8870 Regex!4179) (regTwo!8870 Regex!4179)) (EmptyExpr!4179) (Star!4179 (reg!4508 Regex!4179)) (EmptyLang!4179) (Union!4179 (regOne!8871 Regex!4179) (regTwo!8871 Regex!4179)) )
))
(declare-datatypes ((TokenValueInjection!5560 0))(
  ( (TokenValueInjection!5561 (toValue!4221 Int) (toChars!4080 Int)) )
))
(declare-datatypes ((Rule!5520 0))(
  ( (Rule!5521 (regex!2860 Regex!4179) (tag!3124 String!19020) (isSeparator!2860 Bool) (transformation!2860 TokenValueInjection!5560)) )
))
(declare-datatypes ((List!16299 0))(
  ( (Nil!16231) (Cons!16231 (h!21632 Rule!5520) (t!140505 List!16299)) )
))
(declare-fun rulesArg!359 () List!16299)

(declare-fun rulesValidInductive!867 (LexerInterface!2512 List!16299) Bool)

(assert (=> b!1535018 (= res!688494 (rulesValidInductive!867 thiss!15733 rulesArg!359))))

(declare-fun mapNonEmpty!7284 () Bool)

(declare-fun mapRes!7285 () Bool)

(declare-fun tp!442120 () Bool)

(declare-fun tp!442117 () Bool)

(assert (=> mapNonEmpty!7284 (= mapRes!7285 (and tp!442120 tp!442117))))

(declare-fun mapKey!7284 () (_ BitVec 32))

(declare-datatypes ((List!16300 0))(
  ( (Nil!16232) (Cons!16232 (h!21633 Regex!4179) (t!140506 List!16300)) )
))
(declare-datatypes ((Context!1394 0))(
  ( (Context!1395 (exprs!1197 List!16300)) )
))
(declare-datatypes ((tuple2!15212 0))(
  ( (tuple2!15213 (_1!8686 Context!1394) (_2!8686 C!8536)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15214 0))(
  ( (tuple2!15215 (_1!8687 tuple2!15212) (_2!8687 (InoxSet Context!1394))) )
))
(declare-datatypes ((List!16301 0))(
  ( (Nil!16233) (Cons!16233 (h!21634 tuple2!15214) (t!140507 List!16301)) )
))
(declare-fun mapValue!7284 () List!16301)

(declare-datatypes ((array!5364 0))(
  ( (array!5365 (arr!2385 (Array (_ BitVec 32) List!16301)) (size!13128 (_ BitVec 32))) )
))
(declare-datatypes ((array!5366 0))(
  ( (array!5367 (arr!2386 (Array (_ BitVec 32) (_ BitVec 64))) (size!13129 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3062 0))(
  ( (LongMapFixedSize!3063 (defaultEntry!1891 Int) (mask!4709 (_ BitVec 32)) (extraKeys!1778 (_ BitVec 32)) (zeroValue!1788 List!16301) (minValue!1788 List!16301) (_size!3143 (_ BitVec 32)) (_keys!1825 array!5366) (_values!1810 array!5364) (_vacant!1592 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6009 0))(
  ( (Cell!6010 (v!23042 LongMapFixedSize!3062)) )
))
(declare-datatypes ((MutLongMap!1531 0))(
  ( (LongMap!1531 (underlying!3271 Cell!6009)) (MutLongMapExt!1530 (__x!10228 Int)) )
))
(declare-datatypes ((Cell!6011 0))(
  ( (Cell!6012 (v!23043 MutLongMap!1531)) )
))
(declare-datatypes ((Hashable!1475 0))(
  ( (HashableExt!1474 (__x!10229 Int)) )
))
(declare-datatypes ((MutableMap!1475 0))(
  ( (MutableMapExt!1474 (__x!10230 Int)) (HashMap!1475 (underlying!3272 Cell!6011) (hashF!3394 Hashable!1475) (_size!3144 (_ BitVec 32)) (defaultValue!1635 Int)) )
))
(declare-datatypes ((CacheUp!882 0))(
  ( (CacheUp!883 (cache!1856 MutableMap!1475)) )
))
(declare-fun cacheUp!695 () CacheUp!882)

(declare-fun mapRest!7285 () (Array (_ BitVec 32) List!16301))

(assert (=> mapNonEmpty!7284 (= (arr!2385 (_values!1810 (v!23042 (underlying!3271 (v!23043 (underlying!3272 (cache!1856 cacheUp!695))))))) (store mapRest!7285 mapKey!7284 mapValue!7284))))

(declare-fun b!1535019 () Bool)

(declare-fun e!981355 () Bool)

(declare-fun e!981378 () Bool)

(assert (=> b!1535019 (= e!981355 e!981378)))

(declare-fun mapIsEmpty!7284 () Bool)

(declare-fun mapRes!7284 () Bool)

(assert (=> mapIsEmpty!7284 mapRes!7284))

(declare-fun b!1535020 () Bool)

(declare-fun e!981356 () Bool)

(declare-fun e!981359 () Bool)

(assert (=> b!1535020 (= e!981356 e!981359)))

(declare-fun b!1535021 () Bool)

(declare-fun e!981362 () Bool)

(declare-fun e!981367 () Bool)

(declare-datatypes ((tuple3!1432 0))(
  ( (tuple3!1433 (_1!8688 Regex!4179) (_2!8688 Context!1394) (_3!1080 C!8536)) )
))
(declare-datatypes ((tuple2!15216 0))(
  ( (tuple2!15217 (_1!8689 tuple3!1432) (_2!8689 (InoxSet Context!1394))) )
))
(declare-datatypes ((List!16302 0))(
  ( (Nil!16234) (Cons!16234 (h!21635 tuple2!15216) (t!140508 List!16302)) )
))
(declare-datatypes ((array!5368 0))(
  ( (array!5369 (arr!2387 (Array (_ BitVec 32) List!16302)) (size!13130 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3064 0))(
  ( (LongMapFixedSize!3065 (defaultEntry!1892 Int) (mask!4710 (_ BitVec 32)) (extraKeys!1779 (_ BitVec 32)) (zeroValue!1789 List!16302) (minValue!1789 List!16302) (_size!3145 (_ BitVec 32)) (_keys!1826 array!5366) (_values!1811 array!5368) (_vacant!1593 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6013 0))(
  ( (Cell!6014 (v!23044 LongMapFixedSize!3064)) )
))
(declare-datatypes ((MutLongMap!1532 0))(
  ( (LongMap!1532 (underlying!3273 Cell!6013)) (MutLongMapExt!1531 (__x!10231 Int)) )
))
(declare-fun lt!533131 () MutLongMap!1532)

(get-info :version)

(assert (=> b!1535021 (= e!981362 (and e!981367 ((_ is LongMap!1532) lt!533131)))))

(declare-datatypes ((Cell!6015 0))(
  ( (Cell!6016 (v!23045 MutLongMap!1532)) )
))
(declare-datatypes ((Hashable!1476 0))(
  ( (HashableExt!1475 (__x!10232 Int)) )
))
(declare-datatypes ((MutableMap!1476 0))(
  ( (MutableMapExt!1475 (__x!10233 Int)) (HashMap!1476 (underlying!3274 Cell!6015) (hashF!3395 Hashable!1476) (_size!3146 (_ BitVec 32)) (defaultValue!1636 Int)) )
))
(declare-datatypes ((CacheDown!888 0))(
  ( (CacheDown!889 (cache!1857 MutableMap!1476)) )
))
(declare-fun cacheDown!708 () CacheDown!888)

(assert (=> b!1535021 (= lt!533131 (v!23045 (underlying!3274 (cache!1857 cacheDown!708))))))

(declare-fun b!1535023 () Bool)

(declare-fun e!981371 () Bool)

(declare-fun lt!533129 () MutLongMap!1531)

(assert (=> b!1535023 (= e!981371 (and e!981356 ((_ is LongMap!1531) lt!533129)))))

(assert (=> b!1535023 (= lt!533129 (v!23043 (underlying!3272 (cache!1856 cacheUp!695))))))

(declare-fun e!981381 () Bool)

(declare-fun b!1535024 () Bool)

(declare-fun tp!442094 () Bool)

(declare-fun e!981369 () Bool)

(declare-fun inv!21496 (String!19020) Bool)

(declare-fun inv!21497 (TokenValueInjection!5560) Bool)

(assert (=> b!1535024 (= e!981369 (and tp!442094 (inv!21496 (tag!3124 (h!21632 rulesArg!359))) (inv!21497 (transformation!2860 (h!21632 rulesArg!359))) e!981381))))

(assert (=> b!1535025 (= e!981381 (and tp!442115 tp!442103))))

(declare-fun b!1535026 () Bool)

(declare-fun e!981385 () Bool)

(declare-fun e!981370 () Bool)

(declare-fun e!981368 () Bool)

(declare-datatypes ((tuple3!1434 0))(
  ( (tuple3!1435 (_1!8690 (InoxSet Context!1394)) (_2!8690 Int) (_3!1081 Int)) )
))
(declare-datatypes ((tuple2!15218 0))(
  ( (tuple2!15219 (_1!8691 tuple3!1434) (_2!8691 Int)) )
))
(declare-datatypes ((List!16303 0))(
  ( (Nil!16235) (Cons!16235 (h!21636 tuple2!15218) (t!140509 List!16303)) )
))
(declare-datatypes ((array!5370 0))(
  ( (array!5371 (arr!2388 (Array (_ BitVec 32) List!16303)) (size!13131 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3066 0))(
  ( (LongMapFixedSize!3067 (defaultEntry!1893 Int) (mask!4711 (_ BitVec 32)) (extraKeys!1780 (_ BitVec 32)) (zeroValue!1790 List!16303) (minValue!1790 List!16303) (_size!3147 (_ BitVec 32)) (_keys!1827 array!5366) (_values!1812 array!5370) (_vacant!1594 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1477 0))(
  ( (HashableExt!1476 (__x!10234 Int)) )
))
(declare-datatypes ((Cell!6017 0))(
  ( (Cell!6018 (v!23046 LongMapFixedSize!3066)) )
))
(declare-datatypes ((MutLongMap!1533 0))(
  ( (LongMap!1533 (underlying!3275 Cell!6017)) (MutLongMapExt!1532 (__x!10235 Int)) )
))
(declare-datatypes ((Cell!6019 0))(
  ( (Cell!6020 (v!23047 MutLongMap!1533)) )
))
(declare-datatypes ((MutableMap!1477 0))(
  ( (MutableMapExt!1476 (__x!10236 Int)) (HashMap!1477 (underlying!3276 Cell!6019) (hashF!3396 Hashable!1477) (_size!3148 (_ BitVec 32)) (defaultValue!1637 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!308 0))(
  ( (CacheFurthestNullable!309 (cache!1858 MutableMap!1477) (totalInput!2342 BalanceConc!10886)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!308)

(declare-fun inv!21498 (BalanceConc!10886) Bool)

(assert (=> b!1535026 (= e!981370 (and e!981385 (inv!21498 (totalInput!2342 cacheFurthestNullable!81)) e!981368))))

(declare-fun b!1535027 () Bool)

(declare-fun tp!442105 () Bool)

(declare-fun inv!21499 (Conc!5472) Bool)

(assert (=> b!1535027 (= e!981368 (and (inv!21499 (c!251531 (totalInput!2342 cacheFurthestNullable!81))) tp!442105))))

(declare-fun b!1535028 () Bool)

(declare-fun e!981379 () Bool)

(assert (=> b!1535028 (= e!981359 e!981379)))

(declare-fun b!1535029 () Bool)

(declare-fun e!981383 () Bool)

(declare-fun e!981360 () Bool)

(assert (=> b!1535029 (= e!981383 e!981360)))

(declare-fun b!1535030 () Bool)

(declare-fun res!688497 () Bool)

(declare-fun e!981364 () Bool)

(assert (=> b!1535030 (=> (not res!688497) (not e!981364))))

(declare-fun valid!1252 (CacheFurthestNullable!308) Bool)

(assert (=> b!1535030 (= res!688497 (valid!1252 cacheFurthestNullable!81))))

(declare-fun b!1535031 () Bool)

(declare-fun e!981363 () Bool)

(declare-fun tp!442109 () Bool)

(declare-fun mapRes!7286 () Bool)

(assert (=> b!1535031 (= e!981363 (and tp!442109 mapRes!7286))))

(declare-fun condMapEmpty!7285 () Bool)

(declare-fun mapDefault!7285 () List!16303)

(assert (=> b!1535031 (= condMapEmpty!7285 (= (arr!2388 (_values!1812 (v!23046 (underlying!3275 (v!23047 (underlying!3276 (cache!1858 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16303)) mapDefault!7285)))))

(declare-fun b!1535032 () Bool)

(declare-fun e!981365 () Bool)

(assert (=> b!1535032 (= e!981365 e!981383)))

(declare-fun tp!442116 () Bool)

(declare-fun tp!442110 () Bool)

(declare-fun e!981375 () Bool)

(declare-fun array_inv!1720 (array!5366) Bool)

(declare-fun array_inv!1721 (array!5368) Bool)

(assert (=> b!1535033 (= e!981380 (and tp!442107 tp!442116 tp!442110 (array_inv!1720 (_keys!1826 (v!23044 (underlying!3273 (v!23045 (underlying!3274 (cache!1857 cacheDown!708))))))) (array_inv!1721 (_values!1811 (v!23044 (underlying!3273 (v!23045 (underlying!3274 (cache!1857 cacheDown!708))))))) e!981375))))

(declare-fun mapIsEmpty!7285 () Bool)

(assert (=> mapIsEmpty!7285 mapRes!7286))

(declare-fun e!981384 () Bool)

(declare-fun tp!442101 () Bool)

(declare-fun tp!442119 () Bool)

(declare-fun array_inv!1722 (array!5364) Bool)

(assert (=> b!1535034 (= e!981379 (and tp!442095 tp!442119 tp!442101 (array_inv!1720 (_keys!1825 (v!23042 (underlying!3271 (v!23043 (underlying!3272 (cache!1856 cacheUp!695))))))) (array_inv!1722 (_values!1810 (v!23042 (underlying!3271 (v!23043 (underlying!3272 (cache!1856 cacheUp!695))))))) e!981384))))

(declare-fun b!1535035 () Bool)

(declare-fun tp!442100 () Bool)

(assert (=> b!1535035 (= e!981375 (and tp!442100 mapRes!7284))))

(declare-fun condMapEmpty!7286 () Bool)

(declare-fun mapDefault!7286 () List!16302)

(assert (=> b!1535035 (= condMapEmpty!7286 (= (arr!2387 (_values!1811 (v!23044 (underlying!3273 (v!23045 (underlying!3274 (cache!1857 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16302)) mapDefault!7286)))))

(declare-fun b!1535036 () Bool)

(declare-fun res!688493 () Bool)

(assert (=> b!1535036 (=> (not res!688493) (not e!981364))))

(declare-fun totalInput!496 () BalanceConc!10886)

(assert (=> b!1535036 (= res!688493 (= (totalInput!2342 cacheFurthestNullable!81) totalInput!496))))

(declare-fun mapIsEmpty!7286 () Bool)

(assert (=> mapIsEmpty!7286 mapRes!7285))

(declare-fun b!1535037 () Bool)

(declare-fun e!981382 () Bool)

(declare-fun tp!442098 () Bool)

(assert (=> b!1535037 (= e!981382 (and e!981369 tp!442098))))

(declare-fun b!1535038 () Bool)

(declare-fun e!981357 () Bool)

(declare-fun lt!533132 () MutLongMap!1533)

(assert (=> b!1535038 (= e!981357 (and e!981365 ((_ is LongMap!1533) lt!533132)))))

(assert (=> b!1535038 (= lt!533132 (v!23047 (underlying!3276 (cache!1858 cacheFurthestNullable!81))))))

(declare-fun b!1535039 () Bool)

(declare-fun res!688491 () Bool)

(assert (=> b!1535039 (=> (not res!688491) (not e!981364))))

(declare-fun valid!1253 (CacheUp!882) Bool)

(assert (=> b!1535039 (= res!688491 (valid!1253 cacheUp!695))))

(declare-fun b!1535040 () Bool)

(assert (=> b!1535040 (= e!981377 e!981364)))

(declare-fun res!688496 () Bool)

(assert (=> b!1535040 (=> (not res!688496) (not e!981364))))

(declare-fun lt!533130 () List!16298)

(declare-fun isSuffix!314 (List!16298 List!16298) Bool)

(declare-fun list!6404 (BalanceConc!10886) List!16298)

(assert (=> b!1535040 (= res!688496 (isSuffix!314 lt!533130 (list!6404 totalInput!496)))))

(declare-fun input!1460 () BalanceConc!10886)

(assert (=> b!1535040 (= lt!533130 (list!6404 input!1460))))

(declare-fun tp!442113 () Bool)

(declare-fun tp!442108 () Bool)

(declare-fun array_inv!1723 (array!5370) Bool)

(assert (=> b!1535041 (= e!981360 (and tp!442106 tp!442108 tp!442113 (array_inv!1720 (_keys!1827 (v!23046 (underlying!3275 (v!23047 (underlying!3276 (cache!1858 cacheFurthestNullable!81))))))) (array_inv!1723 (_values!1812 (v!23046 (underlying!3275 (v!23047 (underlying!3276 (cache!1858 cacheFurthestNullable!81))))))) e!981363))))

(declare-fun b!1535042 () Bool)

(declare-fun e!981361 () Bool)

(declare-fun tp!442112 () Bool)

(assert (=> b!1535042 (= e!981361 (and (inv!21499 (c!251531 input!1460)) tp!442112))))

(declare-fun b!1535043 () Bool)

(assert (=> b!1535043 (= e!981364 (not true))))

(declare-fun isPrefix!1227 (List!16298 List!16298) Bool)

(assert (=> b!1535043 (isPrefix!1227 lt!533130 lt!533130)))

(declare-datatypes ((Unit!25815 0))(
  ( (Unit!25816) )
))
(declare-fun lt!533128 () Unit!25815)

(declare-fun lemmaIsPrefixRefl!857 (List!16298 List!16298) Unit!25815)

(assert (=> b!1535043 (= lt!533128 (lemmaIsPrefixRefl!857 lt!533130 lt!533130))))

(declare-fun b!1535044 () Bool)

(declare-fun e!981366 () Bool)

(declare-fun tp!442099 () Bool)

(assert (=> b!1535044 (= e!981366 (and (inv!21499 (c!251531 totalInput!496)) tp!442099))))

(declare-fun b!1535045 () Bool)

(declare-fun tp!442111 () Bool)

(assert (=> b!1535045 (= e!981384 (and tp!442111 mapRes!7285))))

(declare-fun condMapEmpty!7284 () Bool)

(declare-fun mapDefault!7284 () List!16301)

(assert (=> b!1535045 (= condMapEmpty!7284 (= (arr!2385 (_values!1810 (v!23042 (underlying!3271 (v!23043 (underlying!3272 (cache!1856 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16301)) mapDefault!7284)))))

(assert (=> b!1535022 (= e!981354 (and e!981362 tp!442121))))

(declare-fun res!688495 () Bool)

(assert (=> start!142730 (=> (not res!688495) (not e!981377))))

(assert (=> start!142730 (= res!688495 ((_ is Lexer!2510) thiss!15733))))

(assert (=> start!142730 e!981377))

(declare-fun inv!21500 (CacheUp!882) Bool)

(assert (=> start!142730 (and (inv!21500 cacheUp!695) e!981355)))

(assert (=> start!142730 (and (inv!21498 input!1460) e!981361)))

(declare-fun inv!21501 (CacheDown!888) Bool)

(assert (=> start!142730 (and (inv!21501 cacheDown!708) e!981376)))

(assert (=> start!142730 true))

(assert (=> start!142730 (and (inv!21498 totalInput!496) e!981366)))

(assert (=> start!142730 e!981382))

(declare-fun inv!21502 (CacheFurthestNullable!308) Bool)

(assert (=> start!142730 (and (inv!21502 cacheFurthestNullable!81) e!981370)))

(declare-fun mapNonEmpty!7285 () Bool)

(declare-fun tp!442102 () Bool)

(declare-fun tp!442097 () Bool)

(assert (=> mapNonEmpty!7285 (= mapRes!7284 (and tp!442102 tp!442097))))

(declare-fun mapRest!7284 () (Array (_ BitVec 32) List!16302))

(declare-fun mapKey!7286 () (_ BitVec 32))

(declare-fun mapValue!7285 () List!16302)

(assert (=> mapNonEmpty!7285 (= (arr!2387 (_values!1811 (v!23044 (underlying!3273 (v!23045 (underlying!3274 (cache!1857 cacheDown!708))))))) (store mapRest!7284 mapKey!7286 mapValue!7285))))

(declare-fun b!1535046 () Bool)

(assert (=> b!1535046 (= e!981367 e!981353)))

(assert (=> b!1535047 (= e!981385 (and e!981357 tp!442096))))

(declare-fun b!1535048 () Bool)

(declare-fun res!688492 () Bool)

(assert (=> b!1535048 (=> (not res!688492) (not e!981364))))

(declare-fun valid!1254 (CacheDown!888) Bool)

(assert (=> b!1535048 (= res!688492 (valid!1254 cacheDown!708))))

(declare-fun b!1535049 () Bool)

(declare-fun res!688498 () Bool)

(assert (=> b!1535049 (=> (not res!688498) (not e!981377))))

(declare-fun isEmpty!9995 (List!16299) Bool)

(assert (=> b!1535049 (= res!688498 (not (isEmpty!9995 rulesArg!359)))))

(declare-fun mapNonEmpty!7286 () Bool)

(declare-fun tp!442104 () Bool)

(declare-fun tp!442114 () Bool)

(assert (=> mapNonEmpty!7286 (= mapRes!7286 (and tp!442104 tp!442114))))

(declare-fun mapKey!7285 () (_ BitVec 32))

(declare-fun mapRest!7286 () (Array (_ BitVec 32) List!16303))

(declare-fun mapValue!7286 () List!16303)

(assert (=> mapNonEmpty!7286 (= (arr!2388 (_values!1812 (v!23046 (underlying!3275 (v!23047 (underlying!3276 (cache!1858 cacheFurthestNullable!81))))))) (store mapRest!7286 mapKey!7285 mapValue!7286))))

(assert (=> b!1535050 (= e!981378 (and e!981371 tp!442118))))

(assert (= (and start!142730 res!688495) b!1535018))

(assert (= (and b!1535018 res!688494) b!1535049))

(assert (= (and b!1535049 res!688498) b!1535040))

(assert (= (and b!1535040 res!688496) b!1535039))

(assert (= (and b!1535039 res!688491) b!1535048))

(assert (= (and b!1535048 res!688492) b!1535030))

(assert (= (and b!1535030 res!688497) b!1535036))

(assert (= (and b!1535036 res!688493) b!1535043))

(assert (= (and b!1535045 condMapEmpty!7284) mapIsEmpty!7286))

(assert (= (and b!1535045 (not condMapEmpty!7284)) mapNonEmpty!7284))

(assert (= b!1535034 b!1535045))

(assert (= b!1535028 b!1535034))

(assert (= b!1535020 b!1535028))

(assert (= (and b!1535023 ((_ is LongMap!1531) (v!23043 (underlying!3272 (cache!1856 cacheUp!695))))) b!1535020))

(assert (= b!1535050 b!1535023))

(assert (= (and b!1535019 ((_ is HashMap!1475) (cache!1856 cacheUp!695))) b!1535050))

(assert (= start!142730 b!1535019))

(assert (= start!142730 b!1535042))

(assert (= (and b!1535035 condMapEmpty!7286) mapIsEmpty!7284))

(assert (= (and b!1535035 (not condMapEmpty!7286)) mapNonEmpty!7285))

(assert (= b!1535033 b!1535035))

(assert (= b!1535016 b!1535033))

(assert (= b!1535046 b!1535016))

(assert (= (and b!1535021 ((_ is LongMap!1532) (v!23045 (underlying!3274 (cache!1857 cacheDown!708))))) b!1535046))

(assert (= b!1535022 b!1535021))

(assert (= (and b!1535017 ((_ is HashMap!1476) (cache!1857 cacheDown!708))) b!1535022))

(assert (= start!142730 b!1535017))

(assert (= start!142730 b!1535044))

(assert (= b!1535024 b!1535025))

(assert (= b!1535037 b!1535024))

(assert (= (and start!142730 ((_ is Cons!16231) rulesArg!359)) b!1535037))

(assert (= (and b!1535031 condMapEmpty!7285) mapIsEmpty!7285))

(assert (= (and b!1535031 (not condMapEmpty!7285)) mapNonEmpty!7286))

(assert (= b!1535041 b!1535031))

(assert (= b!1535029 b!1535041))

(assert (= b!1535032 b!1535029))

(assert (= (and b!1535038 ((_ is LongMap!1533) (v!23047 (underlying!3276 (cache!1858 cacheFurthestNullable!81))))) b!1535032))

(assert (= b!1535047 b!1535038))

(assert (= (and b!1535026 ((_ is HashMap!1477) (cache!1858 cacheFurthestNullable!81))) b!1535047))

(assert (= b!1535026 b!1535027))

(assert (= start!142730 b!1535026))

(declare-fun m!1810830 () Bool)

(assert (=> mapNonEmpty!7285 m!1810830))

(declare-fun m!1810832 () Bool)

(assert (=> b!1535041 m!1810832))

(declare-fun m!1810834 () Bool)

(assert (=> b!1535041 m!1810834))

(declare-fun m!1810836 () Bool)

(assert (=> b!1535048 m!1810836))

(declare-fun m!1810838 () Bool)

(assert (=> b!1535034 m!1810838))

(declare-fun m!1810840 () Bool)

(assert (=> b!1535034 m!1810840))

(declare-fun m!1810842 () Bool)

(assert (=> b!1535039 m!1810842))

(declare-fun m!1810844 () Bool)

(assert (=> b!1535033 m!1810844))

(declare-fun m!1810846 () Bool)

(assert (=> b!1535033 m!1810846))

(declare-fun m!1810848 () Bool)

(assert (=> b!1535042 m!1810848))

(declare-fun m!1810850 () Bool)

(assert (=> b!1535026 m!1810850))

(declare-fun m!1810852 () Bool)

(assert (=> b!1535024 m!1810852))

(declare-fun m!1810854 () Bool)

(assert (=> b!1535024 m!1810854))

(declare-fun m!1810856 () Bool)

(assert (=> b!1535049 m!1810856))

(declare-fun m!1810858 () Bool)

(assert (=> b!1535040 m!1810858))

(assert (=> b!1535040 m!1810858))

(declare-fun m!1810860 () Bool)

(assert (=> b!1535040 m!1810860))

(declare-fun m!1810862 () Bool)

(assert (=> b!1535040 m!1810862))

(declare-fun m!1810864 () Bool)

(assert (=> start!142730 m!1810864))

(declare-fun m!1810866 () Bool)

(assert (=> start!142730 m!1810866))

(declare-fun m!1810868 () Bool)

(assert (=> start!142730 m!1810868))

(declare-fun m!1810870 () Bool)

(assert (=> start!142730 m!1810870))

(declare-fun m!1810872 () Bool)

(assert (=> start!142730 m!1810872))

(declare-fun m!1810874 () Bool)

(assert (=> b!1535018 m!1810874))

(declare-fun m!1810876 () Bool)

(assert (=> b!1535027 m!1810876))

(declare-fun m!1810878 () Bool)

(assert (=> b!1535043 m!1810878))

(declare-fun m!1810880 () Bool)

(assert (=> b!1535043 m!1810880))

(declare-fun m!1810882 () Bool)

(assert (=> mapNonEmpty!7286 m!1810882))

(declare-fun m!1810884 () Bool)

(assert (=> mapNonEmpty!7284 m!1810884))

(declare-fun m!1810886 () Bool)

(assert (=> b!1535044 m!1810886))

(declare-fun m!1810888 () Bool)

(assert (=> b!1535030 m!1810888))

(check-sat (not mapNonEmpty!7285) (not start!142730) b_and!106599 b_and!106591 (not b!1535039) (not b!1535040) (not b!1535034) (not b!1535045) b_and!106603 b_and!106595 (not b_next!40427) (not b!1535026) (not b!1535027) (not b!1535035) (not b!1535031) b_and!106593 (not b!1535033) (not b!1535024) (not b!1535018) (not b!1535037) (not b_next!40421) (not b!1535042) (not b_next!40423) (not b_next!40417) (not b_next!40425) (not b!1535030) b_and!106589 (not mapNonEmpty!7286) (not b_next!40415) (not mapNonEmpty!7284) b_and!106597 (not b_next!40419) (not b!1535048) (not b!1535043) (not b!1535044) (not b_next!40429) b_and!106601 (not b!1535041) (not b!1535049))
(check-sat b_and!106593 (not b_next!40421) b_and!106599 b_and!106591 (not b_next!40423) b_and!106589 (not b_next!40415) b_and!106603 b_and!106595 (not b_next!40427) (not b_next!40429) b_and!106601 (not b_next!40417) (not b_next!40425) b_and!106597 (not b_next!40419))
