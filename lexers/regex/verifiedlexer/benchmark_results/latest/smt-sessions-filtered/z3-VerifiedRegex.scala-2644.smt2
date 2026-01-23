; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142980 () Bool)

(assert start!142980)

(declare-fun b!1538377 () Bool)

(declare-fun b_free!40051 () Bool)

(declare-fun b_next!40755 () Bool)

(assert (=> b!1538377 (= b_free!40051 (not b_next!40755))))

(declare-fun tp!444752 () Bool)

(declare-fun b_and!106929 () Bool)

(assert (=> b!1538377 (= tp!444752 b_and!106929)))

(declare-fun b!1538378 () Bool)

(declare-fun b_free!40053 () Bool)

(declare-fun b_next!40757 () Bool)

(assert (=> b!1538378 (= b_free!40053 (not b_next!40757))))

(declare-fun tp!444775 () Bool)

(declare-fun b_and!106931 () Bool)

(assert (=> b!1538378 (= tp!444775 b_and!106931)))

(declare-fun b!1538367 () Bool)

(declare-fun b_free!40055 () Bool)

(declare-fun b_next!40759 () Bool)

(assert (=> b!1538367 (= b_free!40055 (not b_next!40759))))

(declare-fun tp!444764 () Bool)

(declare-fun b_and!106933 () Bool)

(assert (=> b!1538367 (= tp!444764 b_and!106933)))

(declare-fun b!1538398 () Bool)

(declare-fun b_free!40057 () Bool)

(declare-fun b_next!40761 () Bool)

(assert (=> b!1538398 (= b_free!40057 (not b_next!40761))))

(declare-fun tp!444772 () Bool)

(declare-fun b_and!106935 () Bool)

(assert (=> b!1538398 (= tp!444772 b_and!106935)))

(declare-fun b!1538371 () Bool)

(declare-fun b_free!40059 () Bool)

(declare-fun b_next!40763 () Bool)

(assert (=> b!1538371 (= b_free!40059 (not b_next!40763))))

(declare-fun tp!444776 () Bool)

(declare-fun b_and!106937 () Bool)

(assert (=> b!1538371 (= tp!444776 b_and!106937)))

(declare-fun b!1538368 () Bool)

(declare-fun b_free!40061 () Bool)

(declare-fun b_next!40765 () Bool)

(assert (=> b!1538368 (= b_free!40061 (not b_next!40765))))

(declare-fun tp!444749 () Bool)

(declare-fun b_and!106939 () Bool)

(assert (=> b!1538368 (= tp!444749 b_and!106939)))

(declare-fun b_free!40063 () Bool)

(declare-fun b_next!40767 () Bool)

(assert (=> b!1538368 (= b_free!40063 (not b_next!40767))))

(declare-fun tp!444761 () Bool)

(declare-fun b_and!106941 () Bool)

(assert (=> b!1538368 (= tp!444761 b_and!106941)))

(declare-fun b!1538381 () Bool)

(declare-fun b_free!40065 () Bool)

(declare-fun b_next!40769 () Bool)

(assert (=> b!1538381 (= b_free!40065 (not b_next!40769))))

(declare-fun tp!444758 () Bool)

(declare-fun b_and!106943 () Bool)

(assert (=> b!1538381 (= tp!444758 b_and!106943)))

(declare-fun b!1538362 () Bool)

(declare-fun e!984327 () Bool)

(declare-fun e!984320 () Bool)

(assert (=> b!1538362 (= e!984327 e!984320)))

(declare-fun res!689389 () Bool)

(assert (=> b!1538362 (=> res!689389 e!984320)))

(declare-datatypes ((LexerInterface!2525 0))(
  ( (LexerInterfaceExt!2522 (__x!10422 Int)) (Lexer!2523) )
))
(declare-fun thiss!15733 () LexerInterface!2525)

(declare-datatypes ((List!16423 0))(
  ( (Nil!16355) (Cons!16355 (h!21756 (_ BitVec 16)) (t!140629 List!16423)) )
))
(declare-datatypes ((TokenValue!2965 0))(
  ( (FloatLiteralValue!5930 (text!21200 List!16423)) (TokenValueExt!2964 (__x!10423 Int)) (Broken!14825 (value!91574 List!16423)) (Object!3032) (End!2965) (Def!2965) (Underscore!2965) (Match!2965) (Else!2965) (Error!2965) (Case!2965) (If!2965) (Extends!2965) (Abstract!2965) (Class!2965) (Val!2965) (DelimiterValue!5930 (del!3025 List!16423)) (KeywordValue!2971 (value!91575 List!16423)) (CommentValue!5930 (value!91576 List!16423)) (WhitespaceValue!5930 (value!91577 List!16423)) (IndentationValue!2965 (value!91578 List!16423)) (String!19104) (Int32!2965) (Broken!14826 (value!91579 List!16423)) (Boolean!2966) (Unit!25855) (OperatorValue!2968 (op!3025 List!16423)) (IdentifierValue!5930 (value!91580 List!16423)) (IdentifierValue!5931 (value!91581 List!16423)) (WhitespaceValue!5931 (value!91582 List!16423)) (True!5930) (False!5930) (Broken!14827 (value!91583 List!16423)) (Broken!14828 (value!91584 List!16423)) (True!5931) (RightBrace!2965) (RightBracket!2965) (Colon!2965) (Null!2965) (Comma!2965) (LeftBracket!2965) (False!5931) (LeftBrace!2965) (ImaginaryLiteralValue!2965 (text!21201 List!16423)) (StringLiteralValue!8895 (value!91585 List!16423)) (EOFValue!2965 (value!91586 List!16423)) (IdentValue!2965 (value!91587 List!16423)) (DelimiterValue!5931 (value!91588 List!16423)) (DedentValue!2965 (value!91589 List!16423)) (NewLineValue!2965 (value!91590 List!16423)) (IntegerValue!8895 (value!91591 (_ BitVec 32)) (text!21202 List!16423)) (IntegerValue!8896 (value!91592 Int) (text!21203 List!16423)) (Times!2965) (Or!2965) (Equal!2965) (Minus!2965) (Broken!14829 (value!91593 List!16423)) (And!2965) (Div!2965) (LessEqual!2965) (Mod!2965) (Concat!7164) (Not!2965) (Plus!2965) (SpaceValue!2965 (value!91594 List!16423)) (IntegerValue!8897 (value!91595 Int) (text!21204 List!16423)) (StringLiteralValue!8896 (text!21205 List!16423)) (FloatLiteralValue!5931 (text!21206 List!16423)) (BytesLiteralValue!2965 (value!91596 List!16423)) (CommentValue!5931 (value!91597 List!16423)) (StringLiteralValue!8897 (value!91598 List!16423)) (ErrorTokenValue!2965 (msg!3026 List!16423)) )
))
(declare-datatypes ((C!8576 0))(
  ( (C!8577 (val!4860 Int)) )
))
(declare-datatypes ((List!16424 0))(
  ( (Nil!16356) (Cons!16356 (h!21757 C!8576) (t!140630 List!16424)) )
))
(declare-datatypes ((IArray!10989 0))(
  ( (IArray!10990 (innerList!5552 List!16424)) )
))
(declare-datatypes ((Conc!5492 0))(
  ( (Node!5492 (left!13458 Conc!5492) (right!13788 Conc!5492) (csize!11214 Int) (cheight!5703 Int)) (Leaf!8137 (xs!8292 IArray!10989) (csize!11215 Int)) (Empty!5492) )
))
(declare-datatypes ((BalanceConc!10926 0))(
  ( (BalanceConc!10927 (c!251608 Conc!5492)) )
))
(declare-datatypes ((Regex!4199 0))(
  ( (ElementMatch!4199 (c!251609 C!8576)) (Concat!7165 (regOne!8910 Regex!4199) (regTwo!8910 Regex!4199)) (EmptyExpr!4199) (Star!4199 (reg!4528 Regex!4199)) (EmptyLang!4199) (Union!4199 (regOne!8911 Regex!4199) (regTwo!8911 Regex!4199)) )
))
(declare-datatypes ((String!19105 0))(
  ( (String!19106 (value!91599 String)) )
))
(declare-datatypes ((TokenValueInjection!5590 0))(
  ( (TokenValueInjection!5591 (toValue!4236 Int) (toChars!4095 Int)) )
))
(declare-datatypes ((Rule!5550 0))(
  ( (Rule!5551 (regex!2875 Regex!4199) (tag!3139 String!19105) (isSeparator!2875 Bool) (transformation!2875 TokenValueInjection!5590)) )
))
(declare-datatypes ((List!16425 0))(
  ( (Nil!16357) (Cons!16357 (h!21758 Rule!5550) (t!140631 List!16425)) )
))
(declare-fun rulesArg!359 () List!16425)

(declare-fun rulesValidInductive!878 (LexerInterface!2525 List!16425) Bool)

(assert (=> b!1538362 (= res!689389 (not (rulesValidInductive!878 thiss!15733 (t!140631 rulesArg!359))))))

(declare-datatypes ((List!16426 0))(
  ( (Nil!16358) (Cons!16358 (h!21759 Regex!4199) (t!140632 List!16426)) )
))
(declare-datatypes ((Context!1434 0))(
  ( (Context!1435 (exprs!1217 List!16426)) )
))
(declare-datatypes ((array!5536 0))(
  ( (array!5537 (arr!2461 (Array (_ BitVec 32) (_ BitVec 64))) (size!13218 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!1508 0))(
  ( (tuple3!1509 (_1!8822 Regex!4199) (_2!8822 Context!1434) (_3!1127 C!8576)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15390 0))(
  ( (tuple2!15391 (_1!8823 tuple3!1508) (_2!8823 (InoxSet Context!1434))) )
))
(declare-datatypes ((List!16427 0))(
  ( (Nil!16359) (Cons!16359 (h!21760 tuple2!15390) (t!140633 List!16427)) )
))
(declare-datatypes ((array!5538 0))(
  ( (array!5539 (arr!2462 (Array (_ BitVec 32) List!16427)) (size!13219 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3174 0))(
  ( (LongMapFixedSize!3175 (defaultEntry!1947 Int) (mask!4775 (_ BitVec 32)) (extraKeys!1834 (_ BitVec 32)) (zeroValue!1844 List!16427) (minValue!1844 List!16427) (_size!3255 (_ BitVec 32)) (_keys!1881 array!5536) (_values!1866 array!5538) (_vacant!1648 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6233 0))(
  ( (Cell!6234 (v!23163 LongMapFixedSize!3174)) )
))
(declare-datatypes ((MutLongMap!1587 0))(
  ( (LongMap!1587 (underlying!3383 Cell!6233)) (MutLongMapExt!1586 (__x!10424 Int)) )
))
(declare-datatypes ((Cell!6235 0))(
  ( (Cell!6236 (v!23164 MutLongMap!1587)) )
))
(declare-datatypes ((Hashable!1531 0))(
  ( (HashableExt!1530 (__x!10425 Int)) )
))
(declare-datatypes ((MutableMap!1531 0))(
  ( (MutableMapExt!1530 (__x!10426 Int)) (HashMap!1531 (underlying!3384 Cell!6235) (hashF!3450 Hashable!1531) (_size!3256 (_ BitVec 32)) (defaultValue!1691 Int)) )
))
(declare-datatypes ((CacheDown!926 0))(
  ( (CacheDown!927 (cache!1912 MutableMap!1531)) )
))
(declare-datatypes ((tuple3!1510 0))(
  ( (tuple3!1511 (_1!8824 (InoxSet Context!1434)) (_2!8824 Int) (_3!1128 Int)) )
))
(declare-datatypes ((tuple2!15392 0))(
  ( (tuple2!15393 (_1!8825 tuple3!1510) (_2!8825 Int)) )
))
(declare-datatypes ((List!16428 0))(
  ( (Nil!16360) (Cons!16360 (h!21761 tuple2!15392) (t!140634 List!16428)) )
))
(declare-datatypes ((array!5540 0))(
  ( (array!5541 (arr!2463 (Array (_ BitVec 32) List!16428)) (size!13220 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3176 0))(
  ( (LongMapFixedSize!3177 (defaultEntry!1948 Int) (mask!4776 (_ BitVec 32)) (extraKeys!1835 (_ BitVec 32)) (zeroValue!1845 List!16428) (minValue!1845 List!16428) (_size!3257 (_ BitVec 32)) (_keys!1882 array!5536) (_values!1867 array!5540) (_vacant!1649 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6237 0))(
  ( (Cell!6238 (v!23165 LongMapFixedSize!3176)) )
))
(declare-datatypes ((tuple2!15394 0))(
  ( (tuple2!15395 (_1!8826 Context!1434) (_2!8826 C!8576)) )
))
(declare-datatypes ((tuple2!15396 0))(
  ( (tuple2!15397 (_1!8827 tuple2!15394) (_2!8827 (InoxSet Context!1434))) )
))
(declare-datatypes ((Token!5390 0))(
  ( (Token!5391 (value!91600 TokenValue!2965) (rule!4678 Rule!5550) (size!13221 Int) (originalCharacters!3726 List!16424)) )
))
(declare-datatypes ((tuple2!15398 0))(
  ( (tuple2!15399 (_1!8828 Token!5390) (_2!8828 BalanceConc!10926)) )
))
(declare-datatypes ((List!16429 0))(
  ( (Nil!16361) (Cons!16361 (h!21762 tuple2!15396) (t!140635 List!16429)) )
))
(declare-datatypes ((array!5542 0))(
  ( (array!5543 (arr!2464 (Array (_ BitVec 32) List!16429)) (size!13222 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3178 0))(
  ( (LongMapFixedSize!3179 (defaultEntry!1949 Int) (mask!4777 (_ BitVec 32)) (extraKeys!1836 (_ BitVec 32)) (zeroValue!1846 List!16429) (minValue!1846 List!16429) (_size!3258 (_ BitVec 32)) (_keys!1883 array!5536) (_values!1868 array!5542) (_vacant!1650 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6239 0))(
  ( (Cell!6240 (v!23166 LongMapFixedSize!3178)) )
))
(declare-datatypes ((MutLongMap!1588 0))(
  ( (LongMap!1588 (underlying!3385 Cell!6239)) (MutLongMapExt!1587 (__x!10427 Int)) )
))
(declare-datatypes ((Cell!6241 0))(
  ( (Cell!6242 (v!23167 MutLongMap!1588)) )
))
(declare-datatypes ((Hashable!1532 0))(
  ( (HashableExt!1531 (__x!10428 Int)) )
))
(declare-datatypes ((MutableMap!1532 0))(
  ( (MutableMapExt!1531 (__x!10429 Int)) (HashMap!1532 (underlying!3386 Cell!6241) (hashF!3451 Hashable!1532) (_size!3259 (_ BitVec 32)) (defaultValue!1692 Int)) )
))
(declare-datatypes ((Option!2960 0))(
  ( (None!2959) (Some!2959 (v!23168 tuple2!15398)) )
))
(declare-datatypes ((CacheUp!918 0))(
  ( (CacheUp!919 (cache!1913 MutableMap!1532)) )
))
(declare-datatypes ((Hashable!1533 0))(
  ( (HashableExt!1532 (__x!10430 Int)) )
))
(declare-datatypes ((MutLongMap!1589 0))(
  ( (LongMap!1589 (underlying!3387 Cell!6237)) (MutLongMapExt!1588 (__x!10431 Int)) )
))
(declare-datatypes ((Cell!6243 0))(
  ( (Cell!6244 (v!23169 MutLongMap!1589)) )
))
(declare-datatypes ((MutableMap!1533 0))(
  ( (MutableMapExt!1532 (__x!10432 Int)) (HashMap!1533 (underlying!3388 Cell!6243) (hashF!3452 Hashable!1533) (_size!3260 (_ BitVec 32)) (defaultValue!1693 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!346 0))(
  ( (CacheFurthestNullable!347 (cache!1914 MutableMap!1533) (totalInput!2364 BalanceConc!10926)) )
))
(declare-datatypes ((tuple4!746 0))(
  ( (tuple4!747 (_1!8829 Option!2960) (_2!8829 CacheUp!918) (_3!1129 CacheDown!926) (_4!373 CacheFurthestNullable!346)) )
))
(declare-fun lt!533637 () tuple4!746)

(declare-fun cacheUp!695 () CacheUp!918)

(declare-fun input!1460 () BalanceConc!10926)

(declare-fun cacheDown!708 () CacheDown!926)

(declare-fun totalInput!496 () BalanceConc!10926)

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!346)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!24 (LexerInterface!2525 Rule!5550 BalanceConc!10926 BalanceConc!10926 CacheUp!918 CacheDown!926 CacheFurthestNullable!346) tuple4!746)

(assert (=> b!1538362 (= lt!533637 (maxPrefixOneRuleZipperSequenceV3Mem!24 thiss!15733 (h!21758 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1538363 () Bool)

(declare-fun res!689383 () Bool)

(declare-fun e!984318 () Bool)

(assert (=> b!1538363 (=> (not res!689383) (not e!984318))))

(assert (=> b!1538363 (= res!689383 (= (totalInput!2364 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1538364 () Bool)

(declare-fun e!984324 () Bool)

(declare-fun e!984302 () Bool)

(assert (=> b!1538364 (= e!984324 e!984302)))

(declare-fun b!1538365 () Bool)

(declare-fun res!689384 () Bool)

(declare-fun e!984328 () Bool)

(assert (=> b!1538365 (=> (not res!689384) (not e!984328))))

(assert (=> b!1538365 (= res!689384 (rulesValidInductive!878 thiss!15733 rulesArg!359))))

(declare-fun e!984304 () Bool)

(declare-fun e!984306 () Bool)

(declare-fun e!984326 () Bool)

(declare-fun b!1538366 () Bool)

(declare-fun inv!21622 (BalanceConc!10926) Bool)

(assert (=> b!1538366 (= e!984306 (and e!984326 (inv!21622 (totalInput!2364 cacheFurthestNullable!81)) e!984304))))

(declare-fun e!984319 () Bool)

(assert (=> b!1538367 (= e!984302 (and e!984319 tp!444764))))

(declare-fun e!984312 () Bool)

(assert (=> b!1538368 (= e!984312 (and tp!444749 tp!444761))))

(declare-fun b!1538369 () Bool)

(declare-fun e!984315 () Bool)

(declare-fun e!984307 () Bool)

(declare-fun tp!444773 () Bool)

(assert (=> b!1538369 (= e!984315 (and e!984307 tp!444773))))

(declare-fun b!1538370 () Bool)

(declare-fun e!984310 () Bool)

(declare-fun e!984299 () Bool)

(assert (=> b!1538370 (= e!984310 e!984299)))

(declare-fun tp!444757 () Bool)

(declare-fun e!984316 () Bool)

(declare-fun tp!444769 () Bool)

(declare-fun e!984311 () Bool)

(declare-fun array_inv!1772 (array!5536) Bool)

(declare-fun array_inv!1773 (array!5542) Bool)

(assert (=> b!1538371 (= e!984311 (and tp!444776 tp!444757 tp!444769 (array_inv!1772 (_keys!1883 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) (array_inv!1773 (_values!1868 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) e!984316))))

(declare-fun b!1538372 () Bool)

(declare-fun e!984325 () Bool)

(declare-fun tp!444767 () Bool)

(declare-fun inv!21623 (Conc!5492) Bool)

(assert (=> b!1538372 (= e!984325 (and (inv!21623 (c!251608 input!1460)) tp!444767))))

(declare-fun b!1538373 () Bool)

(declare-fun res!689392 () Bool)

(assert (=> b!1538373 (=> res!689392 e!984320)))

(declare-fun valid!1290 (CacheFurthestNullable!346) Bool)

(assert (=> b!1538373 (= res!689392 (not (valid!1290 (_4!373 lt!533637))))))

(declare-fun b!1538374 () Bool)

(declare-fun e!984321 () Bool)

(assert (=> b!1538374 (= e!984321 e!984310)))

(declare-fun mapIsEmpty!7509 () Bool)

(declare-fun mapRes!7510 () Bool)

(assert (=> mapIsEmpty!7509 mapRes!7510))

(declare-fun b!1538375 () Bool)

(declare-fun e!984323 () Bool)

(declare-fun tp!444774 () Bool)

(declare-fun mapRes!7509 () Bool)

(assert (=> b!1538375 (= e!984323 (and tp!444774 mapRes!7509))))

(declare-fun condMapEmpty!7511 () Bool)

(declare-fun mapDefault!7509 () List!16427)

(assert (=> b!1538375 (= condMapEmpty!7511 (= (arr!2462 (_values!1866 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16427)) mapDefault!7509)))))

(declare-fun b!1538376 () Bool)

(declare-fun res!689388 () Bool)

(assert (=> b!1538376 (=> (not res!689388) (not e!984318))))

(declare-fun valid!1291 (CacheUp!918) Bool)

(assert (=> b!1538376 (= res!689388 (valid!1291 cacheUp!695))))

(declare-fun e!984313 () Bool)

(assert (=> b!1538377 (= e!984326 (and e!984313 tp!444752))))

(declare-fun e!984329 () Bool)

(declare-fun tp!444765 () Bool)

(declare-fun tp!444756 () Bool)

(declare-fun array_inv!1774 (array!5538) Bool)

(assert (=> b!1538378 (= e!984329 (and tp!444775 tp!444756 tp!444765 (array_inv!1772 (_keys!1881 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) (array_inv!1774 (_values!1866 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) e!984323))))

(declare-fun b!1538379 () Bool)

(declare-fun res!689396 () Bool)

(assert (=> b!1538379 (=> (not res!689396) (not e!984318))))

(assert (=> b!1538379 (= res!689396 (valid!1290 cacheFurthestNullable!81))))

(declare-fun b!1538380 () Bool)

(declare-fun tp!444770 () Bool)

(assert (=> b!1538380 (= e!984316 (and tp!444770 mapRes!7510))))

(declare-fun condMapEmpty!7509 () Bool)

(declare-fun mapDefault!7511 () List!16429)

(assert (=> b!1538380 (= condMapEmpty!7509 (= (arr!2464 (_values!1868 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16429)) mapDefault!7511)))))

(declare-fun tp!444750 () Bool)

(declare-fun tp!444754 () Bool)

(declare-fun e!984303 () Bool)

(declare-fun array_inv!1775 (array!5540) Bool)

(assert (=> b!1538381 (= e!984299 (and tp!444758 tp!444754 tp!444750 (array_inv!1772 (_keys!1882 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) (array_inv!1775 (_values!1867 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) e!984303))))

(declare-fun b!1538382 () Bool)

(declare-fun res!689395 () Bool)

(assert (=> b!1538382 (=> (not res!689395) (not e!984328))))

(declare-fun isEmpty!10013 (List!16425) Bool)

(assert (=> b!1538382 (= res!689395 (not (isEmpty!10013 rulesArg!359)))))

(declare-fun b!1538383 () Bool)

(declare-fun e!984295 () Bool)

(declare-fun e!984322 () Bool)

(assert (=> b!1538383 (= e!984295 e!984322)))

(declare-fun b!1538384 () Bool)

(assert (=> b!1538384 (= e!984328 e!984318)))

(declare-fun res!689390 () Bool)

(assert (=> b!1538384 (=> (not res!689390) (not e!984318))))

(declare-fun lt!533638 () List!16424)

(declare-fun isSuffix!325 (List!16424 List!16424) Bool)

(declare-fun list!6420 (BalanceConc!10926) List!16424)

(assert (=> b!1538384 (= res!689390 (isSuffix!325 lt!533638 (list!6420 totalInput!496)))))

(assert (=> b!1538384 (= lt!533638 (list!6420 input!1460))))

(declare-fun mapNonEmpty!7509 () Bool)

(declare-fun mapRes!7511 () Bool)

(declare-fun tp!444759 () Bool)

(declare-fun tp!444753 () Bool)

(assert (=> mapNonEmpty!7509 (= mapRes!7511 (and tp!444759 tp!444753))))

(declare-fun mapKey!7511 () (_ BitVec 32))

(declare-fun mapValue!7509 () List!16428)

(declare-fun mapRest!7509 () (Array (_ BitVec 32) List!16428))

(assert (=> mapNonEmpty!7509 (= (arr!2463 (_values!1867 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) (store mapRest!7509 mapKey!7511 mapValue!7509))))

(declare-fun b!1538385 () Bool)

(declare-fun res!689387 () Bool)

(assert (=> b!1538385 (=> res!689387 e!984320)))

(assert (=> b!1538385 (= res!689387 (isEmpty!10013 (t!140631 rulesArg!359)))))

(declare-fun b!1538386 () Bool)

(declare-fun lt!533635 () MutLongMap!1589)

(get-info :version)

(assert (=> b!1538386 (= e!984313 (and e!984321 ((_ is LongMap!1589) lt!533635)))))

(assert (=> b!1538386 (= lt!533635 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))

(declare-fun b!1538387 () Bool)

(declare-fun e!984300 () Bool)

(declare-fun e!984308 () Bool)

(declare-fun lt!533636 () MutLongMap!1587)

(assert (=> b!1538387 (= e!984300 (and e!984308 ((_ is LongMap!1587) lt!533636)))))

(assert (=> b!1538387 (= lt!533636 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))

(declare-fun b!1538388 () Bool)

(declare-fun res!689386 () Bool)

(assert (=> b!1538388 (=> (not res!689386) (not e!984318))))

(declare-fun valid!1292 (CacheDown!926) Bool)

(assert (=> b!1538388 (= res!689386 (valid!1292 cacheDown!708))))

(declare-fun b!1538389 () Bool)

(declare-fun lt!533634 () MutLongMap!1588)

(assert (=> b!1538389 (= e!984319 (and e!984295 ((_ is LongMap!1588) lt!533634)))))

(assert (=> b!1538389 (= lt!533634 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))

(declare-fun mapIsEmpty!7510 () Bool)

(assert (=> mapIsEmpty!7510 mapRes!7511))

(declare-fun res!689385 () Bool)

(assert (=> start!142980 (=> (not res!689385) (not e!984328))))

(assert (=> start!142980 (= res!689385 ((_ is Lexer!2523) thiss!15733))))

(assert (=> start!142980 e!984328))

(declare-fun inv!21624 (CacheUp!918) Bool)

(assert (=> start!142980 (and (inv!21624 cacheUp!695) e!984324)))

(assert (=> start!142980 (and (inv!21622 input!1460) e!984325)))

(declare-fun e!984309 () Bool)

(declare-fun inv!21625 (CacheDown!926) Bool)

(assert (=> start!142980 (and (inv!21625 cacheDown!708) e!984309)))

(assert (=> start!142980 true))

(declare-fun e!984301 () Bool)

(assert (=> start!142980 (and (inv!21622 totalInput!496) e!984301)))

(assert (=> start!142980 e!984315))

(declare-fun inv!21626 (CacheFurthestNullable!346) Bool)

(assert (=> start!142980 (and (inv!21626 cacheFurthestNullable!81) e!984306)))

(declare-fun b!1538390 () Bool)

(declare-fun tp!444751 () Bool)

(declare-fun inv!21621 (String!19105) Bool)

(declare-fun inv!21627 (TokenValueInjection!5590) Bool)

(assert (=> b!1538390 (= e!984307 (and tp!444751 (inv!21621 (tag!3139 (h!21758 rulesArg!359))) (inv!21627 (transformation!2875 (h!21758 rulesArg!359))) e!984312))))

(declare-fun b!1538391 () Bool)

(declare-fun res!689393 () Bool)

(assert (=> b!1538391 (=> res!689393 e!984320)))

(assert (=> b!1538391 (= res!689393 (not (valid!1292 (_3!1129 lt!533637))))))

(declare-fun b!1538392 () Bool)

(declare-fun res!689394 () Bool)

(assert (=> b!1538392 (=> res!689394 e!984320)))

(assert (=> b!1538392 (= res!689394 (not (valid!1291 (_2!8829 lt!533637))))))

(declare-fun mapIsEmpty!7511 () Bool)

(assert (=> mapIsEmpty!7511 mapRes!7509))

(declare-fun b!1538393 () Bool)

(declare-fun e!984296 () Bool)

(assert (=> b!1538393 (= e!984308 e!984296)))

(declare-fun b!1538394 () Bool)

(assert (=> b!1538394 (= e!984322 e!984311)))

(declare-fun b!1538395 () Bool)

(assert (=> b!1538395 (= e!984296 e!984329)))

(declare-fun b!1538396 () Bool)

(declare-fun tp!444763 () Bool)

(assert (=> b!1538396 (= e!984304 (and (inv!21623 (c!251608 (totalInput!2364 cacheFurthestNullable!81))) tp!444763))))

(declare-fun b!1538397 () Bool)

(assert (=> b!1538397 (= e!984318 (not e!984327))))

(declare-fun res!689391 () Bool)

(assert (=> b!1538397 (=> res!689391 e!984327)))

(assert (=> b!1538397 (= res!689391 (or (and ((_ is Cons!16357) rulesArg!359) ((_ is Nil!16357) (t!140631 rulesArg!359))) (not ((_ is Cons!16357) rulesArg!359))))))

(declare-fun isPrefix!1240 (List!16424 List!16424) Bool)

(assert (=> b!1538397 (isPrefix!1240 lt!533638 lt!533638)))

(declare-datatypes ((Unit!25856 0))(
  ( (Unit!25857) )
))
(declare-fun lt!533639 () Unit!25856)

(declare-fun lemmaIsPrefixRefl!870 (List!16424 List!16424) Unit!25856)

(assert (=> b!1538397 (= lt!533639 (lemmaIsPrefixRefl!870 lt!533638 lt!533638))))

(declare-fun e!984314 () Bool)

(assert (=> b!1538398 (= e!984314 (and e!984300 tp!444772))))

(declare-fun b!1538399 () Bool)

(declare-fun tp!444762 () Bool)

(assert (=> b!1538399 (= e!984303 (and tp!444762 mapRes!7511))))

(declare-fun condMapEmpty!7510 () Bool)

(declare-fun mapDefault!7510 () List!16428)

(assert (=> b!1538399 (= condMapEmpty!7510 (= (arr!2463 (_values!1867 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16428)) mapDefault!7510)))))

(declare-fun b!1538400 () Bool)

(declare-fun tp!444766 () Bool)

(assert (=> b!1538400 (= e!984301 (and (inv!21623 (c!251608 totalInput!496)) tp!444766))))

(declare-fun b!1538401 () Bool)

(assert (=> b!1538401 (= e!984320 (= (totalInput!2364 (_4!373 lt!533637)) totalInput!496))))

(declare-fun b!1538402 () Bool)

(assert (=> b!1538402 (= e!984309 e!984314)))

(declare-fun mapNonEmpty!7510 () Bool)

(declare-fun tp!444768 () Bool)

(declare-fun tp!444760 () Bool)

(assert (=> mapNonEmpty!7510 (= mapRes!7509 (and tp!444768 tp!444760))))

(declare-fun mapRest!7510 () (Array (_ BitVec 32) List!16427))

(declare-fun mapValue!7511 () List!16427)

(declare-fun mapKey!7509 () (_ BitVec 32))

(assert (=> mapNonEmpty!7510 (= (arr!2462 (_values!1866 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) (store mapRest!7510 mapKey!7509 mapValue!7511))))

(declare-fun mapNonEmpty!7511 () Bool)

(declare-fun tp!444755 () Bool)

(declare-fun tp!444771 () Bool)

(assert (=> mapNonEmpty!7511 (= mapRes!7510 (and tp!444755 tp!444771))))

(declare-fun mapRest!7511 () (Array (_ BitVec 32) List!16429))

(declare-fun mapValue!7510 () List!16429)

(declare-fun mapKey!7510 () (_ BitVec 32))

(assert (=> mapNonEmpty!7511 (= (arr!2464 (_values!1868 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) (store mapRest!7511 mapKey!7510 mapValue!7510))))

(assert (= (and start!142980 res!689385) b!1538365))

(assert (= (and b!1538365 res!689384) b!1538382))

(assert (= (and b!1538382 res!689395) b!1538384))

(assert (= (and b!1538384 res!689390) b!1538376))

(assert (= (and b!1538376 res!689388) b!1538388))

(assert (= (and b!1538388 res!689386) b!1538379))

(assert (= (and b!1538379 res!689396) b!1538363))

(assert (= (and b!1538363 res!689383) b!1538397))

(assert (= (and b!1538397 (not res!689391)) b!1538362))

(assert (= (and b!1538362 (not res!689389)) b!1538385))

(assert (= (and b!1538385 (not res!689387)) b!1538392))

(assert (= (and b!1538392 (not res!689394)) b!1538391))

(assert (= (and b!1538391 (not res!689393)) b!1538373))

(assert (= (and b!1538373 (not res!689392)) b!1538401))

(assert (= (and b!1538380 condMapEmpty!7509) mapIsEmpty!7509))

(assert (= (and b!1538380 (not condMapEmpty!7509)) mapNonEmpty!7511))

(assert (= b!1538371 b!1538380))

(assert (= b!1538394 b!1538371))

(assert (= b!1538383 b!1538394))

(assert (= (and b!1538389 ((_ is LongMap!1588) (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))) b!1538383))

(assert (= b!1538367 b!1538389))

(assert (= (and b!1538364 ((_ is HashMap!1532) (cache!1913 cacheUp!695))) b!1538367))

(assert (= start!142980 b!1538364))

(assert (= start!142980 b!1538372))

(assert (= (and b!1538375 condMapEmpty!7511) mapIsEmpty!7511))

(assert (= (and b!1538375 (not condMapEmpty!7511)) mapNonEmpty!7510))

(assert (= b!1538378 b!1538375))

(assert (= b!1538395 b!1538378))

(assert (= b!1538393 b!1538395))

(assert (= (and b!1538387 ((_ is LongMap!1587) (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))) b!1538393))

(assert (= b!1538398 b!1538387))

(assert (= (and b!1538402 ((_ is HashMap!1531) (cache!1912 cacheDown!708))) b!1538398))

(assert (= start!142980 b!1538402))

(assert (= start!142980 b!1538400))

(assert (= b!1538390 b!1538368))

(assert (= b!1538369 b!1538390))

(assert (= (and start!142980 ((_ is Cons!16357) rulesArg!359)) b!1538369))

(assert (= (and b!1538399 condMapEmpty!7510) mapIsEmpty!7510))

(assert (= (and b!1538399 (not condMapEmpty!7510)) mapNonEmpty!7509))

(assert (= b!1538381 b!1538399))

(assert (= b!1538370 b!1538381))

(assert (= b!1538374 b!1538370))

(assert (= (and b!1538386 ((_ is LongMap!1589) (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))) b!1538374))

(assert (= b!1538377 b!1538386))

(assert (= (and b!1538366 ((_ is HashMap!1533) (cache!1914 cacheFurthestNullable!81))) b!1538377))

(assert (= b!1538366 b!1538396))

(assert (= start!142980 b!1538366))

(declare-fun m!1812986 () Bool)

(assert (=> b!1538373 m!1812986))

(declare-fun m!1812988 () Bool)

(assert (=> b!1538365 m!1812988))

(declare-fun m!1812990 () Bool)

(assert (=> start!142980 m!1812990))

(declare-fun m!1812992 () Bool)

(assert (=> start!142980 m!1812992))

(declare-fun m!1812994 () Bool)

(assert (=> start!142980 m!1812994))

(declare-fun m!1812996 () Bool)

(assert (=> start!142980 m!1812996))

(declare-fun m!1812998 () Bool)

(assert (=> start!142980 m!1812998))

(declare-fun m!1813000 () Bool)

(assert (=> b!1538400 m!1813000))

(declare-fun m!1813002 () Bool)

(assert (=> b!1538378 m!1813002))

(declare-fun m!1813004 () Bool)

(assert (=> b!1538378 m!1813004))

(declare-fun m!1813006 () Bool)

(assert (=> b!1538384 m!1813006))

(assert (=> b!1538384 m!1813006))

(declare-fun m!1813008 () Bool)

(assert (=> b!1538384 m!1813008))

(declare-fun m!1813010 () Bool)

(assert (=> b!1538384 m!1813010))

(declare-fun m!1813012 () Bool)

(assert (=> mapNonEmpty!7510 m!1813012))

(declare-fun m!1813014 () Bool)

(assert (=> b!1538371 m!1813014))

(declare-fun m!1813016 () Bool)

(assert (=> b!1538371 m!1813016))

(declare-fun m!1813018 () Bool)

(assert (=> b!1538376 m!1813018))

(declare-fun m!1813020 () Bool)

(assert (=> mapNonEmpty!7509 m!1813020))

(declare-fun m!1813022 () Bool)

(assert (=> b!1538397 m!1813022))

(declare-fun m!1813024 () Bool)

(assert (=> b!1538397 m!1813024))

(declare-fun m!1813026 () Bool)

(assert (=> b!1538381 m!1813026))

(declare-fun m!1813028 () Bool)

(assert (=> b!1538381 m!1813028))

(declare-fun m!1813030 () Bool)

(assert (=> mapNonEmpty!7511 m!1813030))

(declare-fun m!1813032 () Bool)

(assert (=> b!1538392 m!1813032))

(declare-fun m!1813034 () Bool)

(assert (=> b!1538390 m!1813034))

(declare-fun m!1813036 () Bool)

(assert (=> b!1538390 m!1813036))

(declare-fun m!1813038 () Bool)

(assert (=> b!1538391 m!1813038))

(declare-fun m!1813040 () Bool)

(assert (=> b!1538372 m!1813040))

(declare-fun m!1813042 () Bool)

(assert (=> b!1538396 m!1813042))

(declare-fun m!1813044 () Bool)

(assert (=> b!1538362 m!1813044))

(declare-fun m!1813046 () Bool)

(assert (=> b!1538362 m!1813046))

(declare-fun m!1813048 () Bool)

(assert (=> b!1538382 m!1813048))

(declare-fun m!1813050 () Bool)

(assert (=> b!1538379 m!1813050))

(declare-fun m!1813052 () Bool)

(assert (=> b!1538388 m!1813052))

(declare-fun m!1813054 () Bool)

(assert (=> b!1538366 m!1813054))

(declare-fun m!1813056 () Bool)

(assert (=> b!1538385 m!1813056))

(check-sat b_and!106933 (not b!1538396) (not b!1538373) (not b!1538381) (not b!1538397) b_and!106943 b_and!106941 (not b!1538388) (not mapNonEmpty!7511) (not b_next!40767) (not b!1538378) (not b_next!40765) (not b!1538376) b_and!106935 (not b_next!40759) (not b!1538369) (not b!1538385) (not b!1538366) b_and!106939 (not b!1538399) (not b!1538375) (not b!1538372) (not b!1538384) (not b_next!40763) (not b!1538391) (not b!1538379) (not b!1538382) (not b_next!40757) (not start!142980) (not b!1538362) (not b!1538380) b_and!106931 b_and!106929 (not b!1538390) (not b_next!40755) (not b!1538400) (not b!1538371) (not mapNonEmpty!7509) (not b_next!40769) b_and!106937 (not b_next!40761) (not b!1538392) (not mapNonEmpty!7510) (not b!1538365))
(check-sat b_and!106933 b_and!106935 (not b_next!40759) b_and!106939 (not b_next!40763) b_and!106943 (not b_next!40757) b_and!106941 b_and!106931 b_and!106929 (not b_next!40755) (not b_next!40761) (not b_next!40767) (not b_next!40765) (not b_next!40769) b_and!106937)
(get-model)

(declare-fun d!458419 () Bool)

(declare-fun validCacheMapUp!148 (MutableMap!1532) Bool)

(assert (=> d!458419 (= (valid!1291 cacheUp!695) (validCacheMapUp!148 (cache!1913 cacheUp!695)))))

(declare-fun bs!382779 () Bool)

(assert (= bs!382779 d!458419))

(declare-fun m!1813058 () Bool)

(assert (=> bs!382779 m!1813058))

(assert (=> b!1538376 d!458419))

(declare-fun d!458421 () Bool)

(declare-fun isBalanced!1630 (Conc!5492) Bool)

(assert (=> d!458421 (= (inv!21622 (totalInput!2364 cacheFurthestNullable!81)) (isBalanced!1630 (c!251608 (totalInput!2364 cacheFurthestNullable!81))))))

(declare-fun bs!382780 () Bool)

(assert (= bs!382780 d!458421))

(declare-fun m!1813060 () Bool)

(assert (=> bs!382780 m!1813060))

(assert (=> b!1538366 d!458421))

(declare-fun d!458423 () Bool)

(declare-fun res!689403 () Bool)

(declare-fun e!984332 () Bool)

(assert (=> d!458423 (=> (not res!689403) (not e!984332))))

(assert (=> d!458423 (= res!689403 ((_ is HashMap!1531) (cache!1912 cacheDown!708)))))

(assert (=> d!458423 (= (inv!21625 cacheDown!708) e!984332)))

(declare-fun b!1538405 () Bool)

(declare-fun validCacheMapDown!148 (MutableMap!1531) Bool)

(assert (=> b!1538405 (= e!984332 (validCacheMapDown!148 (cache!1912 cacheDown!708)))))

(assert (= (and d!458423 res!689403) b!1538405))

(declare-fun m!1813062 () Bool)

(assert (=> b!1538405 m!1813062))

(assert (=> start!142980 d!458423))

(declare-fun d!458425 () Bool)

(assert (=> d!458425 (= (inv!21622 input!1460) (isBalanced!1630 (c!251608 input!1460)))))

(declare-fun bs!382781 () Bool)

(assert (= bs!382781 d!458425))

(declare-fun m!1813064 () Bool)

(assert (=> bs!382781 m!1813064))

(assert (=> start!142980 d!458425))

(declare-fun d!458427 () Bool)

(declare-fun res!689406 () Bool)

(declare-fun e!984335 () Bool)

(assert (=> d!458427 (=> (not res!689406) (not e!984335))))

(assert (=> d!458427 (= res!689406 ((_ is HashMap!1532) (cache!1913 cacheUp!695)))))

(assert (=> d!458427 (= (inv!21624 cacheUp!695) e!984335)))

(declare-fun b!1538408 () Bool)

(assert (=> b!1538408 (= e!984335 (validCacheMapUp!148 (cache!1913 cacheUp!695)))))

(assert (= (and d!458427 res!689406) b!1538408))

(assert (=> b!1538408 m!1813058))

(assert (=> start!142980 d!458427))

(declare-fun d!458429 () Bool)

(assert (=> d!458429 (= (inv!21622 totalInput!496) (isBalanced!1630 (c!251608 totalInput!496)))))

(declare-fun bs!382782 () Bool)

(assert (= bs!382782 d!458429))

(declare-fun m!1813066 () Bool)

(assert (=> bs!382782 m!1813066))

(assert (=> start!142980 d!458429))

(declare-fun d!458431 () Bool)

(declare-fun res!689409 () Bool)

(declare-fun e!984338 () Bool)

(assert (=> d!458431 (=> (not res!689409) (not e!984338))))

(assert (=> d!458431 (= res!689409 ((_ is HashMap!1533) (cache!1914 cacheFurthestNullable!81)))))

(assert (=> d!458431 (= (inv!21626 cacheFurthestNullable!81) e!984338)))

(declare-fun b!1538411 () Bool)

(declare-fun validCacheMapFurthestNullable!61 (MutableMap!1533 BalanceConc!10926) Bool)

(assert (=> b!1538411 (= e!984338 (validCacheMapFurthestNullable!61 (cache!1914 cacheFurthestNullable!81) (totalInput!2364 cacheFurthestNullable!81)))))

(assert (= (and d!458431 res!689409) b!1538411))

(declare-fun m!1813068 () Bool)

(assert (=> b!1538411 m!1813068))

(assert (=> start!142980 d!458431))

(declare-fun d!458433 () Bool)

(assert (=> d!458433 (= (isEmpty!10013 (t!140631 rulesArg!359)) ((_ is Nil!16357) (t!140631 rulesArg!359)))))

(assert (=> b!1538385 d!458433))

(declare-fun d!458435 () Bool)

(assert (=> d!458435 true))

(declare-fun lt!533642 () Bool)

(declare-fun lambda!65254 () Int)

(declare-fun forall!3903 (List!16425 Int) Bool)

(assert (=> d!458435 (= lt!533642 (forall!3903 rulesArg!359 lambda!65254))))

(declare-fun e!984344 () Bool)

(assert (=> d!458435 (= lt!533642 e!984344)))

(declare-fun res!689415 () Bool)

(assert (=> d!458435 (=> res!689415 e!984344)))

(assert (=> d!458435 (= res!689415 (not ((_ is Cons!16357) rulesArg!359)))))

(assert (=> d!458435 (= (rulesValidInductive!878 thiss!15733 rulesArg!359) lt!533642)))

(declare-fun b!1538416 () Bool)

(declare-fun e!984343 () Bool)

(assert (=> b!1538416 (= e!984344 e!984343)))

(declare-fun res!689414 () Bool)

(assert (=> b!1538416 (=> (not res!689414) (not e!984343))))

(declare-fun ruleValid!648 (LexerInterface!2525 Rule!5550) Bool)

(assert (=> b!1538416 (= res!689414 (ruleValid!648 thiss!15733 (h!21758 rulesArg!359)))))

(declare-fun b!1538417 () Bool)

(assert (=> b!1538417 (= e!984343 (rulesValidInductive!878 thiss!15733 (t!140631 rulesArg!359)))))

(assert (= (and d!458435 (not res!689415)) b!1538416))

(assert (= (and b!1538416 res!689414) b!1538417))

(declare-fun m!1813070 () Bool)

(assert (=> d!458435 m!1813070))

(declare-fun m!1813072 () Bool)

(assert (=> b!1538416 m!1813072))

(assert (=> b!1538417 m!1813044))

(assert (=> b!1538365 d!458435))

(declare-fun d!458437 () Bool)

(assert (=> d!458437 (= (valid!1290 cacheFurthestNullable!81) (validCacheMapFurthestNullable!61 (cache!1914 cacheFurthestNullable!81) (totalInput!2364 cacheFurthestNullable!81)))))

(declare-fun bs!382783 () Bool)

(assert (= bs!382783 d!458437))

(assert (=> bs!382783 m!1813068))

(assert (=> b!1538379 d!458437))

(declare-fun d!458439 () Bool)

(declare-fun e!984352 () Bool)

(assert (=> d!458439 e!984352))

(declare-fun res!689427 () Bool)

(assert (=> d!458439 (=> res!689427 e!984352)))

(declare-fun lt!533645 () Bool)

(assert (=> d!458439 (= res!689427 (not lt!533645))))

(declare-fun e!984351 () Bool)

(assert (=> d!458439 (= lt!533645 e!984351)))

(declare-fun res!689424 () Bool)

(assert (=> d!458439 (=> res!689424 e!984351)))

(assert (=> d!458439 (= res!689424 ((_ is Nil!16356) lt!533638))))

(assert (=> d!458439 (= (isPrefix!1240 lt!533638 lt!533638) lt!533645)))

(declare-fun b!1538431 () Bool)

(declare-fun size!13223 (List!16424) Int)

(assert (=> b!1538431 (= e!984352 (>= (size!13223 lt!533638) (size!13223 lt!533638)))))

(declare-fun b!1538430 () Bool)

(declare-fun e!984353 () Bool)

(declare-fun tail!2197 (List!16424) List!16424)

(assert (=> b!1538430 (= e!984353 (isPrefix!1240 (tail!2197 lt!533638) (tail!2197 lt!533638)))))

(declare-fun b!1538429 () Bool)

(declare-fun res!689426 () Bool)

(assert (=> b!1538429 (=> (not res!689426) (not e!984353))))

(declare-fun head!3102 (List!16424) C!8576)

(assert (=> b!1538429 (= res!689426 (= (head!3102 lt!533638) (head!3102 lt!533638)))))

(declare-fun b!1538428 () Bool)

(assert (=> b!1538428 (= e!984351 e!984353)))

(declare-fun res!689425 () Bool)

(assert (=> b!1538428 (=> (not res!689425) (not e!984353))))

(assert (=> b!1538428 (= res!689425 (not ((_ is Nil!16356) lt!533638)))))

(assert (= (and d!458439 (not res!689424)) b!1538428))

(assert (= (and b!1538428 res!689425) b!1538429))

(assert (= (and b!1538429 res!689426) b!1538430))

(assert (= (and d!458439 (not res!689427)) b!1538431))

(declare-fun m!1813074 () Bool)

(assert (=> b!1538431 m!1813074))

(assert (=> b!1538431 m!1813074))

(declare-fun m!1813076 () Bool)

(assert (=> b!1538430 m!1813076))

(assert (=> b!1538430 m!1813076))

(assert (=> b!1538430 m!1813076))

(assert (=> b!1538430 m!1813076))

(declare-fun m!1813078 () Bool)

(assert (=> b!1538430 m!1813078))

(declare-fun m!1813080 () Bool)

(assert (=> b!1538429 m!1813080))

(assert (=> b!1538429 m!1813080))

(assert (=> b!1538397 d!458439))

(declare-fun d!458441 () Bool)

(assert (=> d!458441 (isPrefix!1240 lt!533638 lt!533638)))

(declare-fun lt!533648 () Unit!25856)

(declare-fun choose!9225 (List!16424 List!16424) Unit!25856)

(assert (=> d!458441 (= lt!533648 (choose!9225 lt!533638 lt!533638))))

(assert (=> d!458441 (= (lemmaIsPrefixRefl!870 lt!533638 lt!533638) lt!533648)))

(declare-fun bs!382784 () Bool)

(assert (= bs!382784 d!458441))

(assert (=> bs!382784 m!1813022))

(declare-fun m!1813082 () Bool)

(assert (=> bs!382784 m!1813082))

(assert (=> b!1538397 d!458441))

(declare-fun d!458443 () Bool)

(assert (=> d!458443 (= (valid!1292 cacheDown!708) (validCacheMapDown!148 (cache!1912 cacheDown!708)))))

(declare-fun bs!382785 () Bool)

(assert (= bs!382785 d!458443))

(assert (=> bs!382785 m!1813062))

(assert (=> b!1538388 d!458443))

(declare-fun d!458445 () Bool)

(assert (=> d!458445 (= (array_inv!1772 (_keys!1881 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) (bvsge (size!13218 (_keys!1881 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1538378 d!458445))

(declare-fun d!458447 () Bool)

(assert (=> d!458447 (= (array_inv!1774 (_values!1866 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) (bvsge (size!13219 (_values!1866 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1538378 d!458447))

(declare-fun d!458449 () Bool)

(declare-fun c!251612 () Bool)

(assert (=> d!458449 (= c!251612 ((_ is Node!5492) (c!251608 (totalInput!2364 cacheFurthestNullable!81))))))

(declare-fun e!984358 () Bool)

(assert (=> d!458449 (= (inv!21623 (c!251608 (totalInput!2364 cacheFurthestNullable!81))) e!984358)))

(declare-fun b!1538438 () Bool)

(declare-fun inv!21628 (Conc!5492) Bool)

(assert (=> b!1538438 (= e!984358 (inv!21628 (c!251608 (totalInput!2364 cacheFurthestNullable!81))))))

(declare-fun b!1538439 () Bool)

(declare-fun e!984359 () Bool)

(assert (=> b!1538439 (= e!984358 e!984359)))

(declare-fun res!689430 () Bool)

(assert (=> b!1538439 (= res!689430 (not ((_ is Leaf!8137) (c!251608 (totalInput!2364 cacheFurthestNullable!81)))))))

(assert (=> b!1538439 (=> res!689430 e!984359)))

(declare-fun b!1538440 () Bool)

(declare-fun inv!21629 (Conc!5492) Bool)

(assert (=> b!1538440 (= e!984359 (inv!21629 (c!251608 (totalInput!2364 cacheFurthestNullable!81))))))

(assert (= (and d!458449 c!251612) b!1538438))

(assert (= (and d!458449 (not c!251612)) b!1538439))

(assert (= (and b!1538439 (not res!689430)) b!1538440))

(declare-fun m!1813084 () Bool)

(assert (=> b!1538438 m!1813084))

(declare-fun m!1813086 () Bool)

(assert (=> b!1538440 m!1813086))

(assert (=> b!1538396 d!458449))

(declare-fun d!458451 () Bool)

(assert (=> d!458451 (= (valid!1292 (_3!1129 lt!533637)) (validCacheMapDown!148 (cache!1912 (_3!1129 lt!533637))))))

(declare-fun bs!382786 () Bool)

(assert (= bs!382786 d!458451))

(declare-fun m!1813088 () Bool)

(assert (=> bs!382786 m!1813088))

(assert (=> b!1538391 d!458451))

(declare-fun bs!382787 () Bool)

(declare-fun d!458453 () Bool)

(assert (= bs!382787 (and d!458453 d!458435)))

(declare-fun lambda!65255 () Int)

(assert (=> bs!382787 (= lambda!65255 lambda!65254)))

(assert (=> d!458453 true))

(declare-fun lt!533649 () Bool)

(assert (=> d!458453 (= lt!533649 (forall!3903 (t!140631 rulesArg!359) lambda!65255))))

(declare-fun e!984361 () Bool)

(assert (=> d!458453 (= lt!533649 e!984361)))

(declare-fun res!689432 () Bool)

(assert (=> d!458453 (=> res!689432 e!984361)))

(assert (=> d!458453 (= res!689432 (not ((_ is Cons!16357) (t!140631 rulesArg!359))))))

(assert (=> d!458453 (= (rulesValidInductive!878 thiss!15733 (t!140631 rulesArg!359)) lt!533649)))

(declare-fun b!1538441 () Bool)

(declare-fun e!984360 () Bool)

(assert (=> b!1538441 (= e!984361 e!984360)))

(declare-fun res!689431 () Bool)

(assert (=> b!1538441 (=> (not res!689431) (not e!984360))))

(assert (=> b!1538441 (= res!689431 (ruleValid!648 thiss!15733 (h!21758 (t!140631 rulesArg!359))))))

(declare-fun b!1538442 () Bool)

(assert (=> b!1538442 (= e!984360 (rulesValidInductive!878 thiss!15733 (t!140631 (t!140631 rulesArg!359))))))

(assert (= (and d!458453 (not res!689432)) b!1538441))

(assert (= (and b!1538441 res!689431) b!1538442))

(declare-fun m!1813090 () Bool)

(assert (=> d!458453 m!1813090))

(declare-fun m!1813092 () Bool)

(assert (=> b!1538441 m!1813092))

(declare-fun m!1813094 () Bool)

(assert (=> b!1538442 m!1813094))

(assert (=> b!1538362 d!458453))

(declare-fun b!1538480 () Bool)

(declare-fun e!984382 () Bool)

(assert (=> b!1538480 (= e!984382 true)))

(declare-fun b!1538479 () Bool)

(declare-fun e!984381 () Bool)

(assert (=> b!1538479 (= e!984381 e!984382)))

(declare-fun b!1538463 () Bool)

(assert (=> b!1538463 e!984381))

(assert (= b!1538479 b!1538480))

(assert (= b!1538463 b!1538479))

(declare-fun lambda!65260 () Int)

(declare-fun order!9605 () Int)

(declare-fun order!9607 () Int)

(declare-fun dynLambda!7288 (Int Int) Int)

(declare-fun dynLambda!7289 (Int Int) Int)

(assert (=> b!1538480 (< (dynLambda!7288 order!9605 (toValue!4236 (transformation!2875 (h!21758 rulesArg!359)))) (dynLambda!7289 order!9607 lambda!65260))))

(declare-fun order!9609 () Int)

(declare-fun dynLambda!7290 (Int Int) Int)

(assert (=> b!1538480 (< (dynLambda!7290 order!9609 (toChars!4095 (transformation!2875 (h!21758 rulesArg!359)))) (dynLambda!7289 order!9607 lambda!65260))))

(declare-fun e!984374 () Option!2960)

(declare-datatypes ((tuple2!15400 0))(
  ( (tuple2!15401 (_1!8830 BalanceConc!10926) (_2!8830 BalanceConc!10926)) )
))
(declare-datatypes ((tuple4!748 0))(
  ( (tuple4!749 (_1!8831 tuple2!15400) (_2!8831 CacheUp!918) (_3!1130 CacheDown!926) (_4!374 CacheFurthestNullable!346)) )
))
(declare-fun lt!533676 () tuple4!748)

(declare-fun apply!4081 (TokenValueInjection!5590 BalanceConc!10926) TokenValue!2965)

(declare-fun size!13224 (BalanceConc!10926) Int)

(assert (=> b!1538463 (= e!984374 (Some!2959 (tuple2!15399 (Token!5391 (apply!4081 (transformation!2875 (h!21758 rulesArg!359)) (_1!8830 (_1!8831 lt!533676))) (h!21758 rulesArg!359) (size!13224 (_1!8830 (_1!8831 lt!533676))) (list!6420 (_1!8830 (_1!8831 lt!533676)))) (_2!8830 (_1!8831 lt!533676)))))))

(declare-fun lt!533674 () List!16424)

(assert (=> b!1538463 (= lt!533674 (list!6420 input!1460))))

(declare-fun lt!533679 () Unit!25856)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!287 (Regex!4199 List!16424) Unit!25856)

(assert (=> b!1538463 (= lt!533679 (longestMatchIsAcceptedByMatchOrIsEmpty!287 (regex!2875 (h!21758 rulesArg!359)) lt!533674))))

(declare-fun res!689456 () Bool)

(declare-fun isEmpty!10014 (List!16424) Bool)

(declare-datatypes ((tuple2!15402 0))(
  ( (tuple2!15403 (_1!8832 List!16424) (_2!8832 List!16424)) )
))
(declare-fun findLongestMatchInner!303 (Regex!4199 List!16424 Int List!16424 List!16424 Int) tuple2!15402)

(assert (=> b!1538463 (= res!689456 (isEmpty!10014 (_1!8832 (findLongestMatchInner!303 (regex!2875 (h!21758 rulesArg!359)) Nil!16356 (size!13223 Nil!16356) lt!533674 lt!533674 (size!13223 lt!533674)))))))

(declare-fun e!984373 () Bool)

(assert (=> b!1538463 (=> res!689456 e!984373)))

(assert (=> b!1538463 e!984373))

(declare-fun lt!533672 () Unit!25856)

(assert (=> b!1538463 (= lt!533672 lt!533679)))

(declare-fun lt!533677 () Unit!25856)

(declare-fun lemmaInv!397 (TokenValueInjection!5590) Unit!25856)

(assert (=> b!1538463 (= lt!533677 (lemmaInv!397 (transformation!2875 (h!21758 rulesArg!359))))))

(declare-fun lt!533675 () Unit!25856)

(declare-fun ForallOf!180 (Int BalanceConc!10926) Unit!25856)

(assert (=> b!1538463 (= lt!533675 (ForallOf!180 lambda!65260 (_1!8830 (_1!8831 lt!533676))))))

(declare-fun lt!533678 () Unit!25856)

(declare-fun seqFromList!1743 (List!16424) BalanceConc!10926)

(assert (=> b!1538463 (= lt!533678 (ForallOf!180 lambda!65260 (seqFromList!1743 (list!6420 (_1!8830 (_1!8831 lt!533676))))))))

(declare-fun lt!533671 () Option!2960)

(assert (=> b!1538463 (= lt!533671 (Some!2959 (tuple2!15399 (Token!5391 (apply!4081 (transformation!2875 (h!21758 rulesArg!359)) (_1!8830 (_1!8831 lt!533676))) (h!21758 rulesArg!359) (size!13224 (_1!8830 (_1!8831 lt!533676))) (list!6420 (_1!8830 (_1!8831 lt!533676)))) (_2!8830 (_1!8831 lt!533676)))))))

(declare-fun lt!533670 () Unit!25856)

(declare-fun lemmaEqSameImage!130 (TokenValueInjection!5590 BalanceConc!10926 BalanceConc!10926) Unit!25856)

(assert (=> b!1538463 (= lt!533670 (lemmaEqSameImage!130 (transformation!2875 (h!21758 rulesArg!359)) (_1!8830 (_1!8831 lt!533676)) (seqFromList!1743 (list!6420 (_1!8830 (_1!8831 lt!533676))))))))

(declare-fun b!1538464 () Bool)

(declare-fun e!984375 () Bool)

(declare-fun e!984372 () Bool)

(assert (=> b!1538464 (= e!984375 e!984372)))

(declare-fun res!689451 () Bool)

(assert (=> b!1538464 (=> (not res!689451) (not e!984372))))

(declare-fun lt!533673 () tuple4!746)

(declare-fun get!4780 (Option!2960) tuple2!15398)

(declare-datatypes ((tuple2!15404 0))(
  ( (tuple2!15405 (_1!8833 Token!5390) (_2!8833 List!16424)) )
))
(declare-datatypes ((Option!2961 0))(
  ( (None!2960) (Some!2960 (v!23170 tuple2!15404)) )
))
(declare-fun get!4781 (Option!2961) tuple2!15404)

(declare-fun maxPrefixOneRule!676 (LexerInterface!2525 Rule!5550 List!16424) Option!2961)

(assert (=> b!1538464 (= res!689451 (= (_1!8828 (get!4780 (_1!8829 lt!533673))) (_1!8833 (get!4781 (maxPrefixOneRule!676 thiss!15733 (h!21758 rulesArg!359) (list!6420 input!1460))))))))

(declare-fun b!1538465 () Bool)

(declare-fun matchR!1846 (Regex!4199 List!16424) Bool)

(assert (=> b!1538465 (= e!984373 (matchR!1846 (regex!2875 (h!21758 rulesArg!359)) (_1!8832 (findLongestMatchInner!303 (regex!2875 (h!21758 rulesArg!359)) Nil!16356 (size!13223 Nil!16356) lt!533674 lt!533674 (size!13223 lt!533674)))))))

(declare-fun b!1538467 () Bool)

(declare-fun res!689455 () Bool)

(declare-fun e!984376 () Bool)

(assert (=> b!1538467 (=> (not res!689455) (not e!984376))))

(assert (=> b!1538467 (= res!689455 (valid!1291 (_2!8829 lt!533673)))))

(declare-fun b!1538468 () Bool)

(declare-fun res!689452 () Bool)

(assert (=> b!1538468 (=> (not res!689452) (not e!984376))))

(assert (=> b!1538468 (= res!689452 e!984375)))

(declare-fun res!689450 () Bool)

(assert (=> b!1538468 (=> res!689450 e!984375)))

(declare-fun isDefined!2377 (Option!2960) Bool)

(assert (=> b!1538468 (= res!689450 (not (isDefined!2377 (_1!8829 lt!533673))))))

(declare-fun b!1538469 () Bool)

(assert (=> b!1538469 (= e!984376 (= (totalInput!2364 (_4!373 lt!533673)) totalInput!496))))

(declare-fun b!1538470 () Bool)

(assert (=> b!1538470 (= e!984372 (= (list!6420 (_2!8828 (get!4780 (_1!8829 lt!533673)))) (_2!8833 (get!4781 (maxPrefixOneRule!676 thiss!15733 (h!21758 rulesArg!359) (list!6420 input!1460))))))))

(declare-fun d!458455 () Bool)

(assert (=> d!458455 e!984376))

(declare-fun res!689453 () Bool)

(assert (=> d!458455 (=> (not res!689453) (not e!984376))))

(declare-fun isDefined!2378 (Option!2961) Bool)

(assert (=> d!458455 (= res!689453 (= (isDefined!2377 (_1!8829 lt!533673)) (isDefined!2378 (maxPrefixOneRule!676 thiss!15733 (h!21758 rulesArg!359) (list!6420 input!1460)))))))

(assert (=> d!458455 (= lt!533673 (tuple4!747 e!984374 (_2!8831 lt!533676) (_3!1130 lt!533676) (_4!374 lt!533676)))))

(declare-fun c!251616 () Bool)

(declare-fun isEmpty!10015 (BalanceConc!10926) Bool)

(assert (=> d!458455 (= c!251616 (isEmpty!10015 (_1!8830 (_1!8831 lt!533676))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!13 (Regex!4199 BalanceConc!10926 BalanceConc!10926 CacheUp!918 CacheDown!926 CacheFurthestNullable!346) tuple4!748)

(assert (=> d!458455 (= lt!533676 (findLongestMatchWithZipperSequenceV3Mem!13 (regex!2875 (h!21758 rulesArg!359)) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(assert (=> d!458455 (ruleValid!648 thiss!15733 (h!21758 rulesArg!359))))

(assert (=> d!458455 (= (maxPrefixOneRuleZipperSequenceV3Mem!24 thiss!15733 (h!21758 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81) lt!533673)))

(declare-fun b!1538466 () Bool)

(declare-fun res!689449 () Bool)

(assert (=> b!1538466 (=> (not res!689449) (not e!984376))))

(assert (=> b!1538466 (= res!689449 (valid!1292 (_3!1129 lt!533673)))))

(declare-fun b!1538471 () Bool)

(assert (=> b!1538471 (= e!984374 None!2959)))

(declare-fun b!1538472 () Bool)

(declare-fun res!689454 () Bool)

(assert (=> b!1538472 (=> (not res!689454) (not e!984376))))

(assert (=> b!1538472 (= res!689454 (valid!1290 (_4!373 lt!533673)))))

(assert (= (and d!458455 c!251616) b!1538471))

(assert (= (and d!458455 (not c!251616)) b!1538463))

(assert (= (and b!1538463 (not res!689456)) b!1538465))

(assert (= (and d!458455 res!689453) b!1538468))

(assert (= (and b!1538468 (not res!689450)) b!1538464))

(assert (= (and b!1538464 res!689451) b!1538470))

(assert (= (and b!1538468 res!689452) b!1538467))

(assert (= (and b!1538467 res!689455) b!1538466))

(assert (= (and b!1538466 res!689449) b!1538472))

(assert (= (and b!1538472 res!689454) b!1538469))

(declare-fun m!1813096 () Bool)

(assert (=> b!1538465 m!1813096))

(declare-fun m!1813098 () Bool)

(assert (=> b!1538465 m!1813098))

(assert (=> b!1538465 m!1813096))

(assert (=> b!1538465 m!1813098))

(declare-fun m!1813100 () Bool)

(assert (=> b!1538465 m!1813100))

(declare-fun m!1813102 () Bool)

(assert (=> b!1538465 m!1813102))

(declare-fun m!1813104 () Bool)

(assert (=> b!1538463 m!1813104))

(declare-fun m!1813106 () Bool)

(assert (=> b!1538463 m!1813106))

(declare-fun m!1813108 () Bool)

(assert (=> b!1538463 m!1813108))

(declare-fun m!1813110 () Bool)

(assert (=> b!1538463 m!1813110))

(assert (=> b!1538463 m!1813106))

(assert (=> b!1538463 m!1813098))

(assert (=> b!1538463 m!1813110))

(assert (=> b!1538463 m!1813096))

(assert (=> b!1538463 m!1813098))

(assert (=> b!1538463 m!1813100))

(assert (=> b!1538463 m!1813010))

(assert (=> b!1538463 m!1813106))

(declare-fun m!1813112 () Bool)

(assert (=> b!1538463 m!1813112))

(assert (=> b!1538463 m!1813096))

(declare-fun m!1813114 () Bool)

(assert (=> b!1538463 m!1813114))

(declare-fun m!1813116 () Bool)

(assert (=> b!1538463 m!1813116))

(declare-fun m!1813118 () Bool)

(assert (=> b!1538463 m!1813118))

(declare-fun m!1813120 () Bool)

(assert (=> b!1538463 m!1813120))

(declare-fun m!1813122 () Bool)

(assert (=> b!1538463 m!1813122))

(assert (=> d!458455 m!1813010))

(declare-fun m!1813124 () Bool)

(assert (=> d!458455 m!1813124))

(assert (=> d!458455 m!1813010))

(assert (=> d!458455 m!1813124))

(declare-fun m!1813126 () Bool)

(assert (=> d!458455 m!1813126))

(declare-fun m!1813128 () Bool)

(assert (=> d!458455 m!1813128))

(declare-fun m!1813130 () Bool)

(assert (=> d!458455 m!1813130))

(declare-fun m!1813132 () Bool)

(assert (=> d!458455 m!1813132))

(assert (=> d!458455 m!1813072))

(declare-fun m!1813134 () Bool)

(assert (=> b!1538466 m!1813134))

(declare-fun m!1813136 () Bool)

(assert (=> b!1538464 m!1813136))

(assert (=> b!1538464 m!1813010))

(assert (=> b!1538464 m!1813010))

(assert (=> b!1538464 m!1813124))

(assert (=> b!1538464 m!1813124))

(declare-fun m!1813138 () Bool)

(assert (=> b!1538464 m!1813138))

(declare-fun m!1813140 () Bool)

(assert (=> b!1538470 m!1813140))

(assert (=> b!1538470 m!1813010))

(assert (=> b!1538470 m!1813124))

(assert (=> b!1538470 m!1813136))

(assert (=> b!1538470 m!1813010))

(assert (=> b!1538470 m!1813124))

(assert (=> b!1538470 m!1813138))

(declare-fun m!1813142 () Bool)

(assert (=> b!1538472 m!1813142))

(assert (=> b!1538468 m!1813132))

(declare-fun m!1813144 () Bool)

(assert (=> b!1538467 m!1813144))

(assert (=> b!1538362 d!458455))

(declare-fun d!458457 () Bool)

(assert (=> d!458457 (= (isEmpty!10013 rulesArg!359) ((_ is Nil!16357) rulesArg!359))))

(assert (=> b!1538382 d!458457))

(declare-fun d!458459 () Bool)

(declare-fun c!251617 () Bool)

(assert (=> d!458459 (= c!251617 ((_ is Node!5492) (c!251608 input!1460)))))

(declare-fun e!984383 () Bool)

(assert (=> d!458459 (= (inv!21623 (c!251608 input!1460)) e!984383)))

(declare-fun b!1538481 () Bool)

(assert (=> b!1538481 (= e!984383 (inv!21628 (c!251608 input!1460)))))

(declare-fun b!1538482 () Bool)

(declare-fun e!984384 () Bool)

(assert (=> b!1538482 (= e!984383 e!984384)))

(declare-fun res!689457 () Bool)

(assert (=> b!1538482 (= res!689457 (not ((_ is Leaf!8137) (c!251608 input!1460))))))

(assert (=> b!1538482 (=> res!689457 e!984384)))

(declare-fun b!1538483 () Bool)

(assert (=> b!1538483 (= e!984384 (inv!21629 (c!251608 input!1460)))))

(assert (= (and d!458459 c!251617) b!1538481))

(assert (= (and d!458459 (not c!251617)) b!1538482))

(assert (= (and b!1538482 (not res!689457)) b!1538483))

(declare-fun m!1813146 () Bool)

(assert (=> b!1538481 m!1813146))

(declare-fun m!1813148 () Bool)

(assert (=> b!1538483 m!1813148))

(assert (=> b!1538372 d!458459))

(declare-fun d!458461 () Bool)

(declare-fun c!251618 () Bool)

(assert (=> d!458461 (= c!251618 ((_ is Node!5492) (c!251608 totalInput!496)))))

(declare-fun e!984385 () Bool)

(assert (=> d!458461 (= (inv!21623 (c!251608 totalInput!496)) e!984385)))

(declare-fun b!1538484 () Bool)

(assert (=> b!1538484 (= e!984385 (inv!21628 (c!251608 totalInput!496)))))

(declare-fun b!1538485 () Bool)

(declare-fun e!984386 () Bool)

(assert (=> b!1538485 (= e!984385 e!984386)))

(declare-fun res!689458 () Bool)

(assert (=> b!1538485 (= res!689458 (not ((_ is Leaf!8137) (c!251608 totalInput!496))))))

(assert (=> b!1538485 (=> res!689458 e!984386)))

(declare-fun b!1538486 () Bool)

(assert (=> b!1538486 (= e!984386 (inv!21629 (c!251608 totalInput!496)))))

(assert (= (and d!458461 c!251618) b!1538484))

(assert (= (and d!458461 (not c!251618)) b!1538485))

(assert (= (and b!1538485 (not res!689458)) b!1538486))

(declare-fun m!1813150 () Bool)

(assert (=> b!1538484 m!1813150))

(declare-fun m!1813152 () Bool)

(assert (=> b!1538486 m!1813152))

(assert (=> b!1538400 d!458461))

(declare-fun d!458463 () Bool)

(assert (=> d!458463 (= (inv!21621 (tag!3139 (h!21758 rulesArg!359))) (= (mod (str.len (value!91599 (tag!3139 (h!21758 rulesArg!359)))) 2) 0))))

(assert (=> b!1538390 d!458463))

(declare-fun d!458465 () Bool)

(declare-fun res!689461 () Bool)

(declare-fun e!984389 () Bool)

(assert (=> d!458465 (=> (not res!689461) (not e!984389))))

(declare-fun semiInverseModEq!1084 (Int Int) Bool)

(assert (=> d!458465 (= res!689461 (semiInverseModEq!1084 (toChars!4095 (transformation!2875 (h!21758 rulesArg!359))) (toValue!4236 (transformation!2875 (h!21758 rulesArg!359)))))))

(assert (=> d!458465 (= (inv!21627 (transformation!2875 (h!21758 rulesArg!359))) e!984389)))

(declare-fun b!1538489 () Bool)

(declare-fun equivClasses!1043 (Int Int) Bool)

(assert (=> b!1538489 (= e!984389 (equivClasses!1043 (toChars!4095 (transformation!2875 (h!21758 rulesArg!359))) (toValue!4236 (transformation!2875 (h!21758 rulesArg!359)))))))

(assert (= (and d!458465 res!689461) b!1538489))

(declare-fun m!1813154 () Bool)

(assert (=> d!458465 m!1813154))

(declare-fun m!1813156 () Bool)

(assert (=> b!1538489 m!1813156))

(assert (=> b!1538390 d!458465))

(declare-fun d!458467 () Bool)

(assert (=> d!458467 (= (array_inv!1772 (_keys!1882 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) (bvsge (size!13218 (_keys!1882 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1538381 d!458467))

(declare-fun d!458469 () Bool)

(assert (=> d!458469 (= (array_inv!1775 (_values!1867 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) (bvsge (size!13220 (_values!1867 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1538381 d!458469))

(declare-fun d!458471 () Bool)

(assert (=> d!458471 (= (array_inv!1772 (_keys!1883 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) (bvsge (size!13218 (_keys!1883 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1538371 d!458471))

(declare-fun d!458473 () Bool)

(assert (=> d!458473 (= (array_inv!1773 (_values!1868 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) (bvsge (size!13222 (_values!1868 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1538371 d!458473))

(declare-fun d!458475 () Bool)

(declare-fun e!984392 () Bool)

(assert (=> d!458475 e!984392))

(declare-fun res!689464 () Bool)

(assert (=> d!458475 (=> res!689464 e!984392)))

(declare-fun lt!533682 () Bool)

(assert (=> d!458475 (= res!689464 (not lt!533682))))

(declare-fun drop!772 (List!16424 Int) List!16424)

(assert (=> d!458475 (= lt!533682 (= lt!533638 (drop!772 (list!6420 totalInput!496) (- (size!13223 (list!6420 totalInput!496)) (size!13223 lt!533638)))))))

(assert (=> d!458475 (= (isSuffix!325 lt!533638 (list!6420 totalInput!496)) lt!533682)))

(declare-fun b!1538492 () Bool)

(assert (=> b!1538492 (= e!984392 (>= (size!13223 (list!6420 totalInput!496)) (size!13223 lt!533638)))))

(assert (= (and d!458475 (not res!689464)) b!1538492))

(assert (=> d!458475 m!1813006))

(declare-fun m!1813158 () Bool)

(assert (=> d!458475 m!1813158))

(assert (=> d!458475 m!1813074))

(assert (=> d!458475 m!1813006))

(declare-fun m!1813160 () Bool)

(assert (=> d!458475 m!1813160))

(assert (=> b!1538492 m!1813006))

(assert (=> b!1538492 m!1813158))

(assert (=> b!1538492 m!1813074))

(assert (=> b!1538384 d!458475))

(declare-fun d!458477 () Bool)

(declare-fun list!6421 (Conc!5492) List!16424)

(assert (=> d!458477 (= (list!6420 totalInput!496) (list!6421 (c!251608 totalInput!496)))))

(declare-fun bs!382788 () Bool)

(assert (= bs!382788 d!458477))

(declare-fun m!1813162 () Bool)

(assert (=> bs!382788 m!1813162))

(assert (=> b!1538384 d!458477))

(declare-fun d!458479 () Bool)

(assert (=> d!458479 (= (list!6420 input!1460) (list!6421 (c!251608 input!1460)))))

(declare-fun bs!382789 () Bool)

(assert (= bs!382789 d!458479))

(declare-fun m!1813164 () Bool)

(assert (=> bs!382789 m!1813164))

(assert (=> b!1538384 d!458479))

(declare-fun d!458481 () Bool)

(assert (=> d!458481 (= (valid!1291 (_2!8829 lt!533637)) (validCacheMapUp!148 (cache!1913 (_2!8829 lt!533637))))))

(declare-fun bs!382790 () Bool)

(assert (= bs!382790 d!458481))

(declare-fun m!1813166 () Bool)

(assert (=> bs!382790 m!1813166))

(assert (=> b!1538392 d!458481))

(declare-fun d!458483 () Bool)

(assert (=> d!458483 (= (valid!1290 (_4!373 lt!533637)) (validCacheMapFurthestNullable!61 (cache!1914 (_4!373 lt!533637)) (totalInput!2364 (_4!373 lt!533637))))))

(declare-fun bs!382791 () Bool)

(assert (= bs!382791 d!458483))

(declare-fun m!1813168 () Bool)

(assert (=> bs!382791 m!1813168))

(assert (=> b!1538373 d!458483))

(declare-fun b!1538501 () Bool)

(declare-fun e!984401 () Bool)

(declare-fun tp!444789 () Bool)

(assert (=> b!1538501 (= e!984401 tp!444789)))

(declare-fun setRes!10128 () Bool)

(declare-fun setElem!10128 () Context!1434)

(declare-fun tp!444790 () Bool)

(declare-fun setNonEmpty!10128 () Bool)

(declare-fun inv!21630 (Context!1434) Bool)

(assert (=> setNonEmpty!10128 (= setRes!10128 (and tp!444790 (inv!21630 setElem!10128) e!984401))))

(declare-fun setRest!10128 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10128 (= (_2!8823 (h!21760 mapDefault!7509)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10128 true) setRest!10128))))

(declare-fun setIsEmpty!10128 () Bool)

(assert (=> setIsEmpty!10128 setRes!10128))

(declare-fun b!1538502 () Bool)

(declare-fun e!984399 () Bool)

(declare-fun tp!444787 () Bool)

(assert (=> b!1538502 (= e!984399 tp!444787)))

(declare-fun e!984400 () Bool)

(assert (=> b!1538375 (= tp!444774 e!984400)))

(declare-fun tp_is_empty!7041 () Bool)

(declare-fun tp!444791 () Bool)

(declare-fun b!1538503 () Bool)

(declare-fun tp!444788 () Bool)

(assert (=> b!1538503 (= e!984400 (and tp!444791 (inv!21630 (_2!8822 (_1!8823 (h!21760 mapDefault!7509)))) e!984399 tp_is_empty!7041 setRes!10128 tp!444788))))

(declare-fun condSetEmpty!10128 () Bool)

(assert (=> b!1538503 (= condSetEmpty!10128 (= (_2!8823 (h!21760 mapDefault!7509)) ((as const (Array Context!1434 Bool)) false)))))

(assert (= b!1538503 b!1538502))

(assert (= (and b!1538503 condSetEmpty!10128) setIsEmpty!10128))

(assert (= (and b!1538503 (not condSetEmpty!10128)) setNonEmpty!10128))

(assert (= setNonEmpty!10128 b!1538501))

(assert (= (and b!1538375 ((_ is Cons!16359) mapDefault!7509)) b!1538503))

(declare-fun m!1813170 () Bool)

(assert (=> setNonEmpty!10128 m!1813170))

(declare-fun m!1813172 () Bool)

(assert (=> b!1538503 m!1813172))

(declare-fun b!1538518 () Bool)

(declare-fun e!984415 () Bool)

(declare-fun setRes!10134 () Bool)

(declare-fun tp!444817 () Bool)

(declare-fun mapValue!7514 () List!16429)

(declare-fun e!984418 () Bool)

(assert (=> b!1538518 (= e!984415 (and (inv!21630 (_1!8826 (_1!8827 (h!21762 mapValue!7514)))) e!984418 tp_is_empty!7041 setRes!10134 tp!444817))))

(declare-fun condSetEmpty!10134 () Bool)

(assert (=> b!1538518 (= condSetEmpty!10134 (= (_2!8827 (h!21762 mapValue!7514)) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun b!1538519 () Bool)

(declare-fun tp!444814 () Bool)

(assert (=> b!1538519 (= e!984418 tp!444814)))

(declare-fun mapIsEmpty!7514 () Bool)

(declare-fun mapRes!7514 () Bool)

(assert (=> mapIsEmpty!7514 mapRes!7514))

(declare-fun setIsEmpty!10133 () Bool)

(assert (=> setIsEmpty!10133 setRes!10134))

(declare-fun b!1538520 () Bool)

(declare-fun tp!444812 () Bool)

(declare-fun mapDefault!7514 () List!16429)

(declare-fun setRes!10133 () Bool)

(declare-fun e!984414 () Bool)

(declare-fun e!984417 () Bool)

(assert (=> b!1538520 (= e!984414 (and (inv!21630 (_1!8826 (_1!8827 (h!21762 mapDefault!7514)))) e!984417 tp_is_empty!7041 setRes!10133 tp!444812))))

(declare-fun condSetEmpty!10133 () Bool)

(assert (=> b!1538520 (= condSetEmpty!10133 (= (_2!8827 (h!21762 mapDefault!7514)) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun condMapEmpty!7514 () Bool)

(assert (=> mapNonEmpty!7511 (= condMapEmpty!7514 (= mapRest!7511 ((as const (Array (_ BitVec 32) List!16429)) mapDefault!7514)))))

(assert (=> mapNonEmpty!7511 (= tp!444755 (and e!984414 mapRes!7514))))

(declare-fun setNonEmpty!10133 () Bool)

(declare-fun tp!444813 () Bool)

(declare-fun e!984416 () Bool)

(declare-fun setElem!10133 () Context!1434)

(assert (=> setNonEmpty!10133 (= setRes!10133 (and tp!444813 (inv!21630 setElem!10133) e!984416))))

(declare-fun setRest!10134 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10133 (= (_2!8827 (h!21762 mapDefault!7514)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10133 true) setRest!10134))))

(declare-fun b!1538521 () Bool)

(declare-fun tp!444815 () Bool)

(assert (=> b!1538521 (= e!984417 tp!444815)))

(declare-fun b!1538522 () Bool)

(declare-fun tp!444816 () Bool)

(assert (=> b!1538522 (= e!984416 tp!444816)))

(declare-fun b!1538523 () Bool)

(declare-fun e!984419 () Bool)

(declare-fun tp!444811 () Bool)

(assert (=> b!1538523 (= e!984419 tp!444811)))

(declare-fun mapNonEmpty!7514 () Bool)

(declare-fun tp!444810 () Bool)

(assert (=> mapNonEmpty!7514 (= mapRes!7514 (and tp!444810 e!984415))))

(declare-fun mapRest!7514 () (Array (_ BitVec 32) List!16429))

(declare-fun mapKey!7514 () (_ BitVec 32))

(assert (=> mapNonEmpty!7514 (= mapRest!7511 (store mapRest!7514 mapKey!7514 mapValue!7514))))

(declare-fun setIsEmpty!10134 () Bool)

(assert (=> setIsEmpty!10134 setRes!10133))

(declare-fun setElem!10134 () Context!1434)

(declare-fun setNonEmpty!10134 () Bool)

(declare-fun tp!444818 () Bool)

(assert (=> setNonEmpty!10134 (= setRes!10134 (and tp!444818 (inv!21630 setElem!10134) e!984419))))

(declare-fun setRest!10133 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10134 (= (_2!8827 (h!21762 mapValue!7514)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10134 true) setRest!10133))))

(assert (= (and mapNonEmpty!7511 condMapEmpty!7514) mapIsEmpty!7514))

(assert (= (and mapNonEmpty!7511 (not condMapEmpty!7514)) mapNonEmpty!7514))

(assert (= b!1538518 b!1538519))

(assert (= (and b!1538518 condSetEmpty!10134) setIsEmpty!10133))

(assert (= (and b!1538518 (not condSetEmpty!10134)) setNonEmpty!10134))

(assert (= setNonEmpty!10134 b!1538523))

(assert (= (and mapNonEmpty!7514 ((_ is Cons!16361) mapValue!7514)) b!1538518))

(assert (= b!1538520 b!1538521))

(assert (= (and b!1538520 condSetEmpty!10133) setIsEmpty!10134))

(assert (= (and b!1538520 (not condSetEmpty!10133)) setNonEmpty!10133))

(assert (= setNonEmpty!10133 b!1538522))

(assert (= (and mapNonEmpty!7511 ((_ is Cons!16361) mapDefault!7514)) b!1538520))

(declare-fun m!1813174 () Bool)

(assert (=> setNonEmpty!10133 m!1813174))

(declare-fun m!1813176 () Bool)

(assert (=> mapNonEmpty!7514 m!1813176))

(declare-fun m!1813178 () Bool)

(assert (=> b!1538520 m!1813178))

(declare-fun m!1813180 () Bool)

(assert (=> b!1538518 m!1813180))

(declare-fun m!1813182 () Bool)

(assert (=> setNonEmpty!10134 m!1813182))

(declare-fun b!1538532 () Bool)

(declare-fun setRes!10137 () Bool)

(declare-fun tp!444827 () Bool)

(declare-fun e!984427 () Bool)

(declare-fun e!984426 () Bool)

(assert (=> b!1538532 (= e!984426 (and (inv!21630 (_1!8826 (_1!8827 (h!21762 mapValue!7510)))) e!984427 tp_is_empty!7041 setRes!10137 tp!444827))))

(declare-fun condSetEmpty!10137 () Bool)

(assert (=> b!1538532 (= condSetEmpty!10137 (= (_2!8827 (h!21762 mapValue!7510)) ((as const (Array Context!1434 Bool)) false)))))

(assert (=> mapNonEmpty!7511 (= tp!444771 e!984426)))

(declare-fun b!1538533 () Bool)

(declare-fun e!984428 () Bool)

(declare-fun tp!444828 () Bool)

(assert (=> b!1538533 (= e!984428 tp!444828)))

(declare-fun b!1538534 () Bool)

(declare-fun tp!444829 () Bool)

(assert (=> b!1538534 (= e!984427 tp!444829)))

(declare-fun setElem!10137 () Context!1434)

(declare-fun setNonEmpty!10137 () Bool)

(declare-fun tp!444830 () Bool)

(assert (=> setNonEmpty!10137 (= setRes!10137 (and tp!444830 (inv!21630 setElem!10137) e!984428))))

(declare-fun setRest!10137 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10137 (= (_2!8827 (h!21762 mapValue!7510)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10137 true) setRest!10137))))

(declare-fun setIsEmpty!10137 () Bool)

(assert (=> setIsEmpty!10137 setRes!10137))

(assert (= b!1538532 b!1538534))

(assert (= (and b!1538532 condSetEmpty!10137) setIsEmpty!10137))

(assert (= (and b!1538532 (not condSetEmpty!10137)) setNonEmpty!10137))

(assert (= setNonEmpty!10137 b!1538533))

(assert (= (and mapNonEmpty!7511 ((_ is Cons!16361) mapValue!7510)) b!1538532))

(declare-fun m!1813184 () Bool)

(assert (=> b!1538532 m!1813184))

(declare-fun m!1813186 () Bool)

(assert (=> setNonEmpty!10137 m!1813186))

(declare-fun b!1538545 () Bool)

(declare-fun b_free!40067 () Bool)

(declare-fun b_next!40771 () Bool)

(assert (=> b!1538545 (= b_free!40067 (not b_next!40771))))

(declare-fun tp!444841 () Bool)

(declare-fun b_and!106945 () Bool)

(assert (=> b!1538545 (= tp!444841 b_and!106945)))

(declare-fun b_free!40069 () Bool)

(declare-fun b_next!40773 () Bool)

(assert (=> b!1538545 (= b_free!40069 (not b_next!40773))))

(declare-fun tp!444840 () Bool)

(declare-fun b_and!106947 () Bool)

(assert (=> b!1538545 (= tp!444840 b_and!106947)))

(declare-fun e!984437 () Bool)

(assert (=> b!1538545 (= e!984437 (and tp!444841 tp!444840))))

(declare-fun tp!444842 () Bool)

(declare-fun b!1538544 () Bool)

(declare-fun e!984438 () Bool)

(assert (=> b!1538544 (= e!984438 (and tp!444842 (inv!21621 (tag!3139 (h!21758 (t!140631 rulesArg!359)))) (inv!21627 (transformation!2875 (h!21758 (t!140631 rulesArg!359)))) e!984437))))

(declare-fun b!1538543 () Bool)

(declare-fun e!984439 () Bool)

(declare-fun tp!444839 () Bool)

(assert (=> b!1538543 (= e!984439 (and e!984438 tp!444839))))

(assert (=> b!1538369 (= tp!444773 e!984439)))

(assert (= b!1538544 b!1538545))

(assert (= b!1538543 b!1538544))

(assert (= (and b!1538369 ((_ is Cons!16357) (t!140631 rulesArg!359))) b!1538543))

(declare-fun m!1813188 () Bool)

(assert (=> b!1538544 m!1813188))

(declare-fun m!1813190 () Bool)

(assert (=> b!1538544 m!1813190))

(declare-fun b!1538546 () Bool)

(declare-fun e!984443 () Bool)

(declare-fun tp!444845 () Bool)

(assert (=> b!1538546 (= e!984443 tp!444845)))

(declare-fun setNonEmpty!10138 () Bool)

(declare-fun setElem!10138 () Context!1434)

(declare-fun setRes!10138 () Bool)

(declare-fun tp!444846 () Bool)

(assert (=> setNonEmpty!10138 (= setRes!10138 (and tp!444846 (inv!21630 setElem!10138) e!984443))))

(declare-fun setRest!10138 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10138 (= (_2!8823 (h!21760 (zeroValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10138 true) setRest!10138))))

(declare-fun setIsEmpty!10138 () Bool)

(assert (=> setIsEmpty!10138 setRes!10138))

(declare-fun b!1538547 () Bool)

(declare-fun e!984441 () Bool)

(declare-fun tp!444843 () Bool)

(assert (=> b!1538547 (= e!984441 tp!444843)))

(declare-fun e!984442 () Bool)

(assert (=> b!1538378 (= tp!444756 e!984442)))

(declare-fun tp!444847 () Bool)

(declare-fun b!1538548 () Bool)

(declare-fun tp!444844 () Bool)

(assert (=> b!1538548 (= e!984442 (and tp!444847 (inv!21630 (_2!8822 (_1!8823 (h!21760 (zeroValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))))) e!984441 tp_is_empty!7041 setRes!10138 tp!444844))))

(declare-fun condSetEmpty!10138 () Bool)

(assert (=> b!1538548 (= condSetEmpty!10138 (= (_2!8823 (h!21760 (zeroValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))) ((as const (Array Context!1434 Bool)) false)))))

(assert (= b!1538548 b!1538547))

(assert (= (and b!1538548 condSetEmpty!10138) setIsEmpty!10138))

(assert (= (and b!1538548 (not condSetEmpty!10138)) setNonEmpty!10138))

(assert (= setNonEmpty!10138 b!1538546))

(assert (= (and b!1538378 ((_ is Cons!16359) (zeroValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))) b!1538548))

(declare-fun m!1813192 () Bool)

(assert (=> setNonEmpty!10138 m!1813192))

(declare-fun m!1813194 () Bool)

(assert (=> b!1538548 m!1813194))

(declare-fun b!1538549 () Bool)

(declare-fun e!984446 () Bool)

(declare-fun tp!444850 () Bool)

(assert (=> b!1538549 (= e!984446 tp!444850)))

(declare-fun setNonEmpty!10139 () Bool)

(declare-fun setRes!10139 () Bool)

(declare-fun setElem!10139 () Context!1434)

(declare-fun tp!444851 () Bool)

(assert (=> setNonEmpty!10139 (= setRes!10139 (and tp!444851 (inv!21630 setElem!10139) e!984446))))

(declare-fun setRest!10139 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10139 (= (_2!8823 (h!21760 (minValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10139 true) setRest!10139))))

(declare-fun setIsEmpty!10139 () Bool)

(assert (=> setIsEmpty!10139 setRes!10139))

(declare-fun b!1538550 () Bool)

(declare-fun e!984444 () Bool)

(declare-fun tp!444848 () Bool)

(assert (=> b!1538550 (= e!984444 tp!444848)))

(declare-fun e!984445 () Bool)

(assert (=> b!1538378 (= tp!444765 e!984445)))

(declare-fun tp!444849 () Bool)

(declare-fun tp!444852 () Bool)

(declare-fun b!1538551 () Bool)

(assert (=> b!1538551 (= e!984445 (and tp!444852 (inv!21630 (_2!8822 (_1!8823 (h!21760 (minValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))))) e!984444 tp_is_empty!7041 setRes!10139 tp!444849))))

(declare-fun condSetEmpty!10139 () Bool)

(assert (=> b!1538551 (= condSetEmpty!10139 (= (_2!8823 (h!21760 (minValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))) ((as const (Array Context!1434 Bool)) false)))))

(assert (= b!1538551 b!1538550))

(assert (= (and b!1538551 condSetEmpty!10139) setIsEmpty!10139))

(assert (= (and b!1538551 (not condSetEmpty!10139)) setNonEmpty!10139))

(assert (= setNonEmpty!10139 b!1538549))

(assert (= (and b!1538378 ((_ is Cons!16359) (minValue!1844 (v!23163 (underlying!3383 (v!23164 (underlying!3384 (cache!1912 cacheDown!708)))))))) b!1538551))

(declare-fun m!1813196 () Bool)

(assert (=> setNonEmpty!10139 m!1813196))

(declare-fun m!1813198 () Bool)

(assert (=> b!1538551 m!1813198))

(declare-fun b!1538560 () Bool)

(declare-fun tp!444860 () Bool)

(declare-fun tp!444859 () Bool)

(declare-fun e!984451 () Bool)

(assert (=> b!1538560 (= e!984451 (and (inv!21623 (left!13458 (c!251608 (totalInput!2364 cacheFurthestNullable!81)))) tp!444859 (inv!21623 (right!13788 (c!251608 (totalInput!2364 cacheFurthestNullable!81)))) tp!444860))))

(declare-fun b!1538562 () Bool)

(declare-fun e!984452 () Bool)

(declare-fun tp!444861 () Bool)

(assert (=> b!1538562 (= e!984452 tp!444861)))

(declare-fun b!1538561 () Bool)

(declare-fun inv!21631 (IArray!10989) Bool)

(assert (=> b!1538561 (= e!984451 (and (inv!21631 (xs!8292 (c!251608 (totalInput!2364 cacheFurthestNullable!81)))) e!984452))))

(assert (=> b!1538396 (= tp!444763 (and (inv!21623 (c!251608 (totalInput!2364 cacheFurthestNullable!81))) e!984451))))

(assert (= (and b!1538396 ((_ is Node!5492) (c!251608 (totalInput!2364 cacheFurthestNullable!81)))) b!1538560))

(assert (= b!1538561 b!1538562))

(assert (= (and b!1538396 ((_ is Leaf!8137) (c!251608 (totalInput!2364 cacheFurthestNullable!81)))) b!1538561))

(declare-fun m!1813200 () Bool)

(assert (=> b!1538560 m!1813200))

(declare-fun m!1813202 () Bool)

(assert (=> b!1538560 m!1813202))

(declare-fun m!1813204 () Bool)

(assert (=> b!1538561 m!1813204))

(assert (=> b!1538396 m!1813042))

(declare-fun tp!444862 () Bool)

(declare-fun tp!444863 () Bool)

(declare-fun e!984453 () Bool)

(declare-fun b!1538563 () Bool)

(assert (=> b!1538563 (= e!984453 (and (inv!21623 (left!13458 (c!251608 input!1460))) tp!444862 (inv!21623 (right!13788 (c!251608 input!1460))) tp!444863))))

(declare-fun b!1538565 () Bool)

(declare-fun e!984454 () Bool)

(declare-fun tp!444864 () Bool)

(assert (=> b!1538565 (= e!984454 tp!444864)))

(declare-fun b!1538564 () Bool)

(assert (=> b!1538564 (= e!984453 (and (inv!21631 (xs!8292 (c!251608 input!1460))) e!984454))))

(assert (=> b!1538372 (= tp!444767 (and (inv!21623 (c!251608 input!1460)) e!984453))))

(assert (= (and b!1538372 ((_ is Node!5492) (c!251608 input!1460))) b!1538563))

(assert (= b!1538564 b!1538565))

(assert (= (and b!1538372 ((_ is Leaf!8137) (c!251608 input!1460))) b!1538564))

(declare-fun m!1813206 () Bool)

(assert (=> b!1538563 m!1813206))

(declare-fun m!1813208 () Bool)

(assert (=> b!1538563 m!1813208))

(declare-fun m!1813210 () Bool)

(assert (=> b!1538564 m!1813210))

(assert (=> b!1538372 m!1813040))

(declare-fun e!984455 () Bool)

(declare-fun tp!444866 () Bool)

(declare-fun b!1538566 () Bool)

(declare-fun tp!444865 () Bool)

(assert (=> b!1538566 (= e!984455 (and (inv!21623 (left!13458 (c!251608 totalInput!496))) tp!444865 (inv!21623 (right!13788 (c!251608 totalInput!496))) tp!444866))))

(declare-fun b!1538568 () Bool)

(declare-fun e!984456 () Bool)

(declare-fun tp!444867 () Bool)

(assert (=> b!1538568 (= e!984456 tp!444867)))

(declare-fun b!1538567 () Bool)

(assert (=> b!1538567 (= e!984455 (and (inv!21631 (xs!8292 (c!251608 totalInput!496))) e!984456))))

(assert (=> b!1538400 (= tp!444766 (and (inv!21623 (c!251608 totalInput!496)) e!984455))))

(assert (= (and b!1538400 ((_ is Node!5492) (c!251608 totalInput!496))) b!1538566))

(assert (= b!1538567 b!1538568))

(assert (= (and b!1538400 ((_ is Leaf!8137) (c!251608 totalInput!496))) b!1538567))

(declare-fun m!1813212 () Bool)

(assert (=> b!1538566 m!1813212))

(declare-fun m!1813214 () Bool)

(assert (=> b!1538566 m!1813214))

(declare-fun m!1813216 () Bool)

(assert (=> b!1538567 m!1813216))

(assert (=> b!1538400 m!1813000))

(declare-fun b!1538579 () Bool)

(declare-fun e!984459 () Bool)

(assert (=> b!1538579 (= e!984459 tp_is_empty!7041)))

(declare-fun b!1538582 () Bool)

(declare-fun tp!444880 () Bool)

(declare-fun tp!444881 () Bool)

(assert (=> b!1538582 (= e!984459 (and tp!444880 tp!444881))))

(declare-fun b!1538581 () Bool)

(declare-fun tp!444882 () Bool)

(assert (=> b!1538581 (= e!984459 tp!444882)))

(assert (=> b!1538390 (= tp!444751 e!984459)))

(declare-fun b!1538580 () Bool)

(declare-fun tp!444879 () Bool)

(declare-fun tp!444878 () Bool)

(assert (=> b!1538580 (= e!984459 (and tp!444879 tp!444878))))

(assert (= (and b!1538390 ((_ is ElementMatch!4199) (regex!2875 (h!21758 rulesArg!359)))) b!1538579))

(assert (= (and b!1538390 ((_ is Concat!7165) (regex!2875 (h!21758 rulesArg!359)))) b!1538580))

(assert (= (and b!1538390 ((_ is Star!4199) (regex!2875 (h!21758 rulesArg!359)))) b!1538581))

(assert (= (and b!1538390 ((_ is Union!4199) (regex!2875 (h!21758 rulesArg!359)))) b!1538582))

(declare-fun b!1538589 () Bool)

(declare-fun e!984464 () Bool)

(declare-fun setRes!10142 () Bool)

(declare-fun tp!444889 () Bool)

(assert (=> b!1538589 (= e!984464 (and setRes!10142 tp!444889))))

(declare-fun condSetEmpty!10142 () Bool)

(assert (=> b!1538589 (= condSetEmpty!10142 (= (_1!8824 (_1!8825 (h!21761 (zeroValue!1845 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))))) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun b!1538590 () Bool)

(declare-fun e!984465 () Bool)

(declare-fun tp!444891 () Bool)

(assert (=> b!1538590 (= e!984465 tp!444891)))

(declare-fun setElem!10142 () Context!1434)

(declare-fun setNonEmpty!10142 () Bool)

(declare-fun tp!444890 () Bool)

(assert (=> setNonEmpty!10142 (= setRes!10142 (and tp!444890 (inv!21630 setElem!10142) e!984465))))

(declare-fun setRest!10142 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10142 (= (_1!8824 (_1!8825 (h!21761 (zeroValue!1845 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10142 true) setRest!10142))))

(declare-fun setIsEmpty!10142 () Bool)

(assert (=> setIsEmpty!10142 setRes!10142))

(assert (=> b!1538381 (= tp!444754 e!984464)))

(assert (= (and b!1538589 condSetEmpty!10142) setIsEmpty!10142))

(assert (= (and b!1538589 (not condSetEmpty!10142)) setNonEmpty!10142))

(assert (= setNonEmpty!10142 b!1538590))

(assert (= (and b!1538381 ((_ is Cons!16360) (zeroValue!1845 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81)))))))) b!1538589))

(declare-fun m!1813218 () Bool)

(assert (=> setNonEmpty!10142 m!1813218))

(declare-fun b!1538591 () Bool)

(declare-fun e!984466 () Bool)

(declare-fun setRes!10143 () Bool)

(declare-fun tp!444892 () Bool)

(assert (=> b!1538591 (= e!984466 (and setRes!10143 tp!444892))))

(declare-fun condSetEmpty!10143 () Bool)

(assert (=> b!1538591 (= condSetEmpty!10143 (= (_1!8824 (_1!8825 (h!21761 (minValue!1845 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))))) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun b!1538592 () Bool)

(declare-fun e!984467 () Bool)

(declare-fun tp!444894 () Bool)

(assert (=> b!1538592 (= e!984467 tp!444894)))

(declare-fun setNonEmpty!10143 () Bool)

(declare-fun setElem!10143 () Context!1434)

(declare-fun tp!444893 () Bool)

(assert (=> setNonEmpty!10143 (= setRes!10143 (and tp!444893 (inv!21630 setElem!10143) e!984467))))

(declare-fun setRest!10143 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10143 (= (_1!8824 (_1!8825 (h!21761 (minValue!1845 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10143 true) setRest!10143))))

(declare-fun setIsEmpty!10143 () Bool)

(assert (=> setIsEmpty!10143 setRes!10143))

(assert (=> b!1538381 (= tp!444750 e!984466)))

(assert (= (and b!1538591 condSetEmpty!10143) setIsEmpty!10143))

(assert (= (and b!1538591 (not condSetEmpty!10143)) setNonEmpty!10143))

(assert (= setNonEmpty!10143 b!1538592))

(assert (= (and b!1538381 ((_ is Cons!16360) (minValue!1845 (v!23165 (underlying!3387 (v!23169 (underlying!3388 (cache!1914 cacheFurthestNullable!81)))))))) b!1538591))

(declare-fun m!1813220 () Bool)

(assert (=> setNonEmpty!10143 m!1813220))

(declare-fun tp!444895 () Bool)

(declare-fun e!984468 () Bool)

(declare-fun setRes!10144 () Bool)

(declare-fun b!1538593 () Bool)

(declare-fun e!984469 () Bool)

(assert (=> b!1538593 (= e!984468 (and (inv!21630 (_1!8826 (_1!8827 (h!21762 (zeroValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))))) e!984469 tp_is_empty!7041 setRes!10144 tp!444895))))

(declare-fun condSetEmpty!10144 () Bool)

(assert (=> b!1538593 (= condSetEmpty!10144 (= (_2!8827 (h!21762 (zeroValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))) ((as const (Array Context!1434 Bool)) false)))))

(assert (=> b!1538371 (= tp!444757 e!984468)))

(declare-fun b!1538594 () Bool)

(declare-fun e!984470 () Bool)

(declare-fun tp!444896 () Bool)

(assert (=> b!1538594 (= e!984470 tp!444896)))

(declare-fun b!1538595 () Bool)

(declare-fun tp!444897 () Bool)

(assert (=> b!1538595 (= e!984469 tp!444897)))

(declare-fun tp!444898 () Bool)

(declare-fun setNonEmpty!10144 () Bool)

(declare-fun setElem!10144 () Context!1434)

(assert (=> setNonEmpty!10144 (= setRes!10144 (and tp!444898 (inv!21630 setElem!10144) e!984470))))

(declare-fun setRest!10144 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10144 (= (_2!8827 (h!21762 (zeroValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10144 true) setRest!10144))))

(declare-fun setIsEmpty!10144 () Bool)

(assert (=> setIsEmpty!10144 setRes!10144))

(assert (= b!1538593 b!1538595))

(assert (= (and b!1538593 condSetEmpty!10144) setIsEmpty!10144))

(assert (= (and b!1538593 (not condSetEmpty!10144)) setNonEmpty!10144))

(assert (= setNonEmpty!10144 b!1538594))

(assert (= (and b!1538371 ((_ is Cons!16361) (zeroValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))) b!1538593))

(declare-fun m!1813222 () Bool)

(assert (=> b!1538593 m!1813222))

(declare-fun m!1813224 () Bool)

(assert (=> setNonEmpty!10144 m!1813224))

(declare-fun b!1538596 () Bool)

(declare-fun e!984471 () Bool)

(declare-fun setRes!10145 () Bool)

(declare-fun e!984472 () Bool)

(declare-fun tp!444899 () Bool)

(assert (=> b!1538596 (= e!984471 (and (inv!21630 (_1!8826 (_1!8827 (h!21762 (minValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))))) e!984472 tp_is_empty!7041 setRes!10145 tp!444899))))

(declare-fun condSetEmpty!10145 () Bool)

(assert (=> b!1538596 (= condSetEmpty!10145 (= (_2!8827 (h!21762 (minValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))) ((as const (Array Context!1434 Bool)) false)))))

(assert (=> b!1538371 (= tp!444769 e!984471)))

(declare-fun b!1538597 () Bool)

(declare-fun e!984473 () Bool)

(declare-fun tp!444900 () Bool)

(assert (=> b!1538597 (= e!984473 tp!444900)))

(declare-fun b!1538598 () Bool)

(declare-fun tp!444901 () Bool)

(assert (=> b!1538598 (= e!984472 tp!444901)))

(declare-fun setNonEmpty!10145 () Bool)

(declare-fun tp!444902 () Bool)

(declare-fun setElem!10145 () Context!1434)

(assert (=> setNonEmpty!10145 (= setRes!10145 (and tp!444902 (inv!21630 setElem!10145) e!984473))))

(declare-fun setRest!10145 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10145 (= (_2!8827 (h!21762 (minValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10145 true) setRest!10145))))

(declare-fun setIsEmpty!10145 () Bool)

(assert (=> setIsEmpty!10145 setRes!10145))

(assert (= b!1538596 b!1538598))

(assert (= (and b!1538596 condSetEmpty!10145) setIsEmpty!10145))

(assert (= (and b!1538596 (not condSetEmpty!10145)) setNonEmpty!10145))

(assert (= setNonEmpty!10145 b!1538597))

(assert (= (and b!1538371 ((_ is Cons!16361) (minValue!1846 (v!23166 (underlying!3385 (v!23167 (underlying!3386 (cache!1913 cacheUp!695)))))))) b!1538596))

(declare-fun m!1813226 () Bool)

(assert (=> b!1538596 m!1813226))

(declare-fun m!1813228 () Bool)

(assert (=> setNonEmpty!10145 m!1813228))

(declare-fun b!1538599 () Bool)

(declare-fun e!984474 () Bool)

(declare-fun setRes!10146 () Bool)

(declare-fun tp!444903 () Bool)

(assert (=> b!1538599 (= e!984474 (and setRes!10146 tp!444903))))

(declare-fun condSetEmpty!10146 () Bool)

(assert (=> b!1538599 (= condSetEmpty!10146 (= (_1!8824 (_1!8825 (h!21761 mapDefault!7510))) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun b!1538600 () Bool)

(declare-fun e!984475 () Bool)

(declare-fun tp!444905 () Bool)

(assert (=> b!1538600 (= e!984475 tp!444905)))

(declare-fun setNonEmpty!10146 () Bool)

(declare-fun tp!444904 () Bool)

(declare-fun setElem!10146 () Context!1434)

(assert (=> setNonEmpty!10146 (= setRes!10146 (and tp!444904 (inv!21630 setElem!10146) e!984475))))

(declare-fun setRest!10146 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10146 (= (_1!8824 (_1!8825 (h!21761 mapDefault!7510))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10146 true) setRest!10146))))

(declare-fun setIsEmpty!10146 () Bool)

(assert (=> setIsEmpty!10146 setRes!10146))

(assert (=> b!1538399 (= tp!444762 e!984474)))

(assert (= (and b!1538599 condSetEmpty!10146) setIsEmpty!10146))

(assert (= (and b!1538599 (not condSetEmpty!10146)) setNonEmpty!10146))

(assert (= setNonEmpty!10146 b!1538600))

(assert (= (and b!1538399 ((_ is Cons!16360) mapDefault!7510)) b!1538599))

(declare-fun m!1813230 () Bool)

(assert (=> setNonEmpty!10146 m!1813230))

(declare-fun b!1538601 () Bool)

(declare-fun tp!444906 () Bool)

(declare-fun e!984476 () Bool)

(declare-fun setRes!10147 () Bool)

(declare-fun e!984477 () Bool)

(assert (=> b!1538601 (= e!984476 (and (inv!21630 (_1!8826 (_1!8827 (h!21762 mapDefault!7511)))) e!984477 tp_is_empty!7041 setRes!10147 tp!444906))))

(declare-fun condSetEmpty!10147 () Bool)

(assert (=> b!1538601 (= condSetEmpty!10147 (= (_2!8827 (h!21762 mapDefault!7511)) ((as const (Array Context!1434 Bool)) false)))))

(assert (=> b!1538380 (= tp!444770 e!984476)))

(declare-fun b!1538602 () Bool)

(declare-fun e!984478 () Bool)

(declare-fun tp!444907 () Bool)

(assert (=> b!1538602 (= e!984478 tp!444907)))

(declare-fun b!1538603 () Bool)

(declare-fun tp!444908 () Bool)

(assert (=> b!1538603 (= e!984477 tp!444908)))

(declare-fun setElem!10147 () Context!1434)

(declare-fun tp!444909 () Bool)

(declare-fun setNonEmpty!10147 () Bool)

(assert (=> setNonEmpty!10147 (= setRes!10147 (and tp!444909 (inv!21630 setElem!10147) e!984478))))

(declare-fun setRest!10147 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10147 (= (_2!8827 (h!21762 mapDefault!7511)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10147 true) setRest!10147))))

(declare-fun setIsEmpty!10147 () Bool)

(assert (=> setIsEmpty!10147 setRes!10147))

(assert (= b!1538601 b!1538603))

(assert (= (and b!1538601 condSetEmpty!10147) setIsEmpty!10147))

(assert (= (and b!1538601 (not condSetEmpty!10147)) setNonEmpty!10147))

(assert (= setNonEmpty!10147 b!1538602))

(assert (= (and b!1538380 ((_ is Cons!16361) mapDefault!7511)) b!1538601))

(declare-fun m!1813232 () Bool)

(assert (=> b!1538601 m!1813232))

(declare-fun m!1813234 () Bool)

(assert (=> setNonEmpty!10147 m!1813234))

(declare-fun b!1538614 () Bool)

(declare-fun e!984489 () Bool)

(declare-fun setRes!10153 () Bool)

(declare-fun tp!444927 () Bool)

(assert (=> b!1538614 (= e!984489 (and setRes!10153 tp!444927))))

(declare-fun condSetEmpty!10152 () Bool)

(declare-fun mapDefault!7517 () List!16428)

(assert (=> b!1538614 (= condSetEmpty!10152 (= (_1!8824 (_1!8825 (h!21761 mapDefault!7517))) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun mapNonEmpty!7517 () Bool)

(declare-fun mapRes!7517 () Bool)

(declare-fun tp!444926 () Bool)

(declare-fun e!984488 () Bool)

(assert (=> mapNonEmpty!7517 (= mapRes!7517 (and tp!444926 e!984488))))

(declare-fun mapKey!7517 () (_ BitVec 32))

(declare-fun mapValue!7517 () List!16428)

(declare-fun mapRest!7517 () (Array (_ BitVec 32) List!16428))

(assert (=> mapNonEmpty!7517 (= mapRest!7509 (store mapRest!7517 mapKey!7517 mapValue!7517))))

(declare-fun setIsEmpty!10152 () Bool)

(assert (=> setIsEmpty!10152 setRes!10153))

(declare-fun setIsEmpty!10153 () Bool)

(declare-fun setRes!10152 () Bool)

(assert (=> setIsEmpty!10153 setRes!10152))

(declare-fun mapIsEmpty!7517 () Bool)

(assert (=> mapIsEmpty!7517 mapRes!7517))

(declare-fun condMapEmpty!7517 () Bool)

(assert (=> mapNonEmpty!7509 (= condMapEmpty!7517 (= mapRest!7509 ((as const (Array (_ BitVec 32) List!16428)) mapDefault!7517)))))

(assert (=> mapNonEmpty!7509 (= tp!444759 (and e!984489 mapRes!7517))))

(declare-fun b!1538615 () Bool)

(declare-fun e!984487 () Bool)

(declare-fun tp!444929 () Bool)

(assert (=> b!1538615 (= e!984487 tp!444929)))

(declare-fun b!1538616 () Bool)

(declare-fun tp!444928 () Bool)

(assert (=> b!1538616 (= e!984488 (and setRes!10152 tp!444928))))

(declare-fun condSetEmpty!10153 () Bool)

(assert (=> b!1538616 (= condSetEmpty!10153 (= (_1!8824 (_1!8825 (h!21761 mapValue!7517))) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun b!1538617 () Bool)

(declare-fun e!984490 () Bool)

(declare-fun tp!444925 () Bool)

(assert (=> b!1538617 (= e!984490 tp!444925)))

(declare-fun tp!444924 () Bool)

(declare-fun setNonEmpty!10152 () Bool)

(declare-fun setElem!10152 () Context!1434)

(assert (=> setNonEmpty!10152 (= setRes!10153 (and tp!444924 (inv!21630 setElem!10152) e!984490))))

(declare-fun setRest!10153 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10152 (= (_1!8824 (_1!8825 (h!21761 mapDefault!7517))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10152 true) setRest!10153))))

(declare-fun tp!444930 () Bool)

(declare-fun setNonEmpty!10153 () Bool)

(declare-fun setElem!10153 () Context!1434)

(assert (=> setNonEmpty!10153 (= setRes!10152 (and tp!444930 (inv!21630 setElem!10153) e!984487))))

(declare-fun setRest!10152 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10153 (= (_1!8824 (_1!8825 (h!21761 mapValue!7517))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10153 true) setRest!10152))))

(assert (= (and mapNonEmpty!7509 condMapEmpty!7517) mapIsEmpty!7517))

(assert (= (and mapNonEmpty!7509 (not condMapEmpty!7517)) mapNonEmpty!7517))

(assert (= (and b!1538616 condSetEmpty!10153) setIsEmpty!10153))

(assert (= (and b!1538616 (not condSetEmpty!10153)) setNonEmpty!10153))

(assert (= setNonEmpty!10153 b!1538615))

(assert (= (and mapNonEmpty!7517 ((_ is Cons!16360) mapValue!7517)) b!1538616))

(assert (= (and b!1538614 condSetEmpty!10152) setIsEmpty!10152))

(assert (= (and b!1538614 (not condSetEmpty!10152)) setNonEmpty!10152))

(assert (= setNonEmpty!10152 b!1538617))

(assert (= (and mapNonEmpty!7509 ((_ is Cons!16360) mapDefault!7517)) b!1538614))

(declare-fun m!1813236 () Bool)

(assert (=> mapNonEmpty!7517 m!1813236))

(declare-fun m!1813238 () Bool)

(assert (=> setNonEmpty!10152 m!1813238))

(declare-fun m!1813240 () Bool)

(assert (=> setNonEmpty!10153 m!1813240))

(declare-fun b!1538618 () Bool)

(declare-fun e!984491 () Bool)

(declare-fun setRes!10154 () Bool)

(declare-fun tp!444931 () Bool)

(assert (=> b!1538618 (= e!984491 (and setRes!10154 tp!444931))))

(declare-fun condSetEmpty!10154 () Bool)

(assert (=> b!1538618 (= condSetEmpty!10154 (= (_1!8824 (_1!8825 (h!21761 mapValue!7509))) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun b!1538619 () Bool)

(declare-fun e!984492 () Bool)

(declare-fun tp!444933 () Bool)

(assert (=> b!1538619 (= e!984492 tp!444933)))

(declare-fun tp!444932 () Bool)

(declare-fun setElem!10154 () Context!1434)

(declare-fun setNonEmpty!10154 () Bool)

(assert (=> setNonEmpty!10154 (= setRes!10154 (and tp!444932 (inv!21630 setElem!10154) e!984492))))

(declare-fun setRest!10154 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10154 (= (_1!8824 (_1!8825 (h!21761 mapValue!7509))) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10154 true) setRest!10154))))

(declare-fun setIsEmpty!10154 () Bool)

(assert (=> setIsEmpty!10154 setRes!10154))

(assert (=> mapNonEmpty!7509 (= tp!444753 e!984491)))

(assert (= (and b!1538618 condSetEmpty!10154) setIsEmpty!10154))

(assert (= (and b!1538618 (not condSetEmpty!10154)) setNonEmpty!10154))

(assert (= setNonEmpty!10154 b!1538619))

(assert (= (and mapNonEmpty!7509 ((_ is Cons!16360) mapValue!7509)) b!1538618))

(declare-fun m!1813242 () Bool)

(assert (=> setNonEmpty!10154 m!1813242))

(declare-fun tp!444964 () Bool)

(declare-fun e!984510 () Bool)

(declare-fun e!984506 () Bool)

(declare-fun b!1538634 () Bool)

(declare-fun mapValue!7520 () List!16427)

(declare-fun tp!444960 () Bool)

(declare-fun setRes!10160 () Bool)

(assert (=> b!1538634 (= e!984506 (and tp!444960 (inv!21630 (_2!8822 (_1!8823 (h!21760 mapValue!7520)))) e!984510 tp_is_empty!7041 setRes!10160 tp!444964))))

(declare-fun condSetEmpty!10159 () Bool)

(assert (=> b!1538634 (= condSetEmpty!10159 (= (_2!8823 (h!21760 mapValue!7520)) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun b!1538635 () Bool)

(declare-fun tp!444962 () Bool)

(assert (=> b!1538635 (= e!984510 tp!444962)))

(declare-fun mapIsEmpty!7520 () Bool)

(declare-fun mapRes!7520 () Bool)

(assert (=> mapIsEmpty!7520 mapRes!7520))

(declare-fun e!984509 () Bool)

(declare-fun setRes!10159 () Bool)

(declare-fun b!1538636 () Bool)

(declare-fun tp!444959 () Bool)

(declare-fun mapDefault!7520 () List!16427)

(declare-fun tp!444958 () Bool)

(declare-fun e!984507 () Bool)

(assert (=> b!1538636 (= e!984507 (and tp!444958 (inv!21630 (_2!8822 (_1!8823 (h!21760 mapDefault!7520)))) e!984509 tp_is_empty!7041 setRes!10159 tp!444959))))

(declare-fun condSetEmpty!10160 () Bool)

(assert (=> b!1538636 (= condSetEmpty!10160 (= (_2!8823 (h!21760 mapDefault!7520)) ((as const (Array Context!1434 Bool)) false)))))

(declare-fun condMapEmpty!7520 () Bool)

(assert (=> mapNonEmpty!7510 (= condMapEmpty!7520 (= mapRest!7510 ((as const (Array (_ BitVec 32) List!16427)) mapDefault!7520)))))

(assert (=> mapNonEmpty!7510 (= tp!444768 (and e!984507 mapRes!7520))))

(declare-fun b!1538637 () Bool)

(declare-fun e!984508 () Bool)

(declare-fun tp!444963 () Bool)

(assert (=> b!1538637 (= e!984508 tp!444963)))

(declare-fun setNonEmpty!10159 () Bool)

(declare-fun tp!444957 () Bool)

(declare-fun setElem!10159 () Context!1434)

(declare-fun e!984505 () Bool)

(assert (=> setNonEmpty!10159 (= setRes!10160 (and tp!444957 (inv!21630 setElem!10159) e!984505))))

(declare-fun setRest!10159 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10159 (= (_2!8823 (h!21760 mapValue!7520)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10159 true) setRest!10159))))

(declare-fun mapNonEmpty!7520 () Bool)

(declare-fun tp!444956 () Bool)

(assert (=> mapNonEmpty!7520 (= mapRes!7520 (and tp!444956 e!984506))))

(declare-fun mapRest!7520 () (Array (_ BitVec 32) List!16427))

(declare-fun mapKey!7520 () (_ BitVec 32))

(assert (=> mapNonEmpty!7520 (= mapRest!7510 (store mapRest!7520 mapKey!7520 mapValue!7520))))

(declare-fun setIsEmpty!10159 () Bool)

(assert (=> setIsEmpty!10159 setRes!10160))

(declare-fun b!1538638 () Bool)

(declare-fun tp!444961 () Bool)

(assert (=> b!1538638 (= e!984509 tp!444961)))

(declare-fun setIsEmpty!10160 () Bool)

(assert (=> setIsEmpty!10160 setRes!10159))

(declare-fun tp!444965 () Bool)

(declare-fun setNonEmpty!10160 () Bool)

(declare-fun setElem!10160 () Context!1434)

(assert (=> setNonEmpty!10160 (= setRes!10159 (and tp!444965 (inv!21630 setElem!10160) e!984508))))

(declare-fun setRest!10160 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10160 (= (_2!8823 (h!21760 mapDefault!7520)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10160 true) setRest!10160))))

(declare-fun b!1538639 () Bool)

(declare-fun tp!444966 () Bool)

(assert (=> b!1538639 (= e!984505 tp!444966)))

(assert (= (and mapNonEmpty!7510 condMapEmpty!7520) mapIsEmpty!7520))

(assert (= (and mapNonEmpty!7510 (not condMapEmpty!7520)) mapNonEmpty!7520))

(assert (= b!1538634 b!1538635))

(assert (= (and b!1538634 condSetEmpty!10159) setIsEmpty!10159))

(assert (= (and b!1538634 (not condSetEmpty!10159)) setNonEmpty!10159))

(assert (= setNonEmpty!10159 b!1538639))

(assert (= (and mapNonEmpty!7520 ((_ is Cons!16359) mapValue!7520)) b!1538634))

(assert (= b!1538636 b!1538638))

(assert (= (and b!1538636 condSetEmpty!10160) setIsEmpty!10160))

(assert (= (and b!1538636 (not condSetEmpty!10160)) setNonEmpty!10160))

(assert (= setNonEmpty!10160 b!1538637))

(assert (= (and mapNonEmpty!7510 ((_ is Cons!16359) mapDefault!7520)) b!1538636))

(declare-fun m!1813244 () Bool)

(assert (=> mapNonEmpty!7520 m!1813244))

(declare-fun m!1813246 () Bool)

(assert (=> b!1538634 m!1813246))

(declare-fun m!1813248 () Bool)

(assert (=> setNonEmpty!10159 m!1813248))

(declare-fun m!1813250 () Bool)

(assert (=> b!1538636 m!1813250))

(declare-fun m!1813252 () Bool)

(assert (=> setNonEmpty!10160 m!1813252))

(declare-fun b!1538640 () Bool)

(declare-fun e!984513 () Bool)

(declare-fun tp!444969 () Bool)

(assert (=> b!1538640 (= e!984513 tp!444969)))

(declare-fun setElem!10161 () Context!1434)

(declare-fun setNonEmpty!10161 () Bool)

(declare-fun setRes!10161 () Bool)

(declare-fun tp!444970 () Bool)

(assert (=> setNonEmpty!10161 (= setRes!10161 (and tp!444970 (inv!21630 setElem!10161) e!984513))))

(declare-fun setRest!10161 () (InoxSet Context!1434))

(assert (=> setNonEmpty!10161 (= (_2!8823 (h!21760 mapValue!7511)) ((_ map or) (store ((as const (Array Context!1434 Bool)) false) setElem!10161 true) setRest!10161))))

(declare-fun setIsEmpty!10161 () Bool)

(assert (=> setIsEmpty!10161 setRes!10161))

(declare-fun b!1538641 () Bool)

(declare-fun e!984511 () Bool)

(declare-fun tp!444967 () Bool)

(assert (=> b!1538641 (= e!984511 tp!444967)))

(declare-fun e!984512 () Bool)

(assert (=> mapNonEmpty!7510 (= tp!444760 e!984512)))

(declare-fun tp!444968 () Bool)

(declare-fun b!1538642 () Bool)

(declare-fun tp!444971 () Bool)

(assert (=> b!1538642 (= e!984512 (and tp!444971 (inv!21630 (_2!8822 (_1!8823 (h!21760 mapValue!7511)))) e!984511 tp_is_empty!7041 setRes!10161 tp!444968))))

(declare-fun condSetEmpty!10161 () Bool)

(assert (=> b!1538642 (= condSetEmpty!10161 (= (_2!8823 (h!21760 mapValue!7511)) ((as const (Array Context!1434 Bool)) false)))))

(assert (= b!1538642 b!1538641))

(assert (= (and b!1538642 condSetEmpty!10161) setIsEmpty!10161))

(assert (= (and b!1538642 (not condSetEmpty!10161)) setNonEmpty!10161))

(assert (= setNonEmpty!10161 b!1538640))

(assert (= (and mapNonEmpty!7510 ((_ is Cons!16359) mapValue!7511)) b!1538642))

(declare-fun m!1813254 () Bool)

(assert (=> setNonEmpty!10161 m!1813254))

(declare-fun m!1813256 () Bool)

(assert (=> b!1538642 m!1813256))

(check-sat (not b!1538634) b_and!106929 (not b!1538589) (not setNonEmpty!10133) b_and!106933 (not b!1538550) (not b!1538580) b_and!106935 (not b!1538581) (not b!1538533) (not d!458479) (not b!1538598) (not b_next!40759) (not b!1538523) (not b!1538483) (not b!1538502) b_and!106939 (not b!1538568) (not setNonEmpty!10134) (not b!1538521) (not setNonEmpty!10159) (not b!1538635) (not b!1538396) (not b!1538544) (not setNonEmpty!10137) (not setNonEmpty!10138) (not d!458429) (not b!1538567) (not b!1538636) (not b!1538416) (not b!1538405) (not b!1538468) (not b!1538549) (not b!1538564) (not setNonEmpty!10128) (not d!458437) (not b!1538599) (not b!1538372) (not b!1538522) (not b_next!40763) (not setNonEmpty!10146) (not b!1538470) (not b!1538561) (not b!1538486) (not d!458455) (not b_next!40771) (not b!1538481) (not setNonEmpty!10153) (not b!1538417) (not b!1538543) (not b!1538503) (not b!1538602) (not b!1538431) (not d!458421) (not b!1538532) b_and!106943 (not b!1538641) (not d!458483) (not b!1538547) tp_is_empty!7041 (not setNonEmpty!10142) (not b!1538429) (not setNonEmpty!10139) (not b!1538590) (not d!458481) (not b_next!40757) (not b!1538472) (not b!1538637) (not b!1538566) (not b!1538642) b_and!106941 (not b!1538615) (not b!1538592) (not b!1538593) (not b!1538408) (not setNonEmpty!10143) (not b!1538546) b_and!106931 (not b_next!40773) (not b!1538463) (not d!458475) (not setNonEmpty!10152) (not b!1538430) (not mapNonEmpty!7514) (not d!458441) (not b!1538560) (not b!1538534) (not setNonEmpty!10147) (not b!1538640) (not b!1538618) (not d!458453) (not b!1538594) (not b_next!40755) (not b!1538400) (not b!1538518) (not b!1538466) (not d!458477) (not setNonEmpty!10161) (not b!1538619) (not b!1538591) (not d!458425) (not d!458419) (not b!1538565) (not b!1538441) (not b_next!40769) (not b!1538601) (not b!1538519) (not b!1538639) b_and!106937 (not b!1538440) (not b!1538501) (not d!458443) (not b!1538562) (not b_next!40761) (not b!1538616) (not b_next!40767) (not b!1538489) (not b!1538597) (not d!458435) (not b!1538411) (not mapNonEmpty!7520) (not mapNonEmpty!7517) b_and!106947 (not b!1538638) (not b!1538465) (not b!1538520) (not b!1538600) (not b!1538438) (not b!1538467) (not b!1538492) (not b!1538548) (not b!1538442) (not setNonEmpty!10154) (not setNonEmpty!10160) (not b!1538464) (not b!1538614) (not d!458451) (not b!1538603) (not setNonEmpty!10145) (not b!1538596) (not b!1538617) b_and!106945 (not b!1538484) (not b_next!40765) (not b!1538582) (not b!1538551) (not setNonEmpty!10144) (not d!458465) (not b!1538563) (not b!1538595))
(check-sat b_and!106933 b_and!106935 (not b_next!40759) b_and!106939 (not b_next!40763) (not b_next!40771) b_and!106943 (not b_next!40757) b_and!106941 b_and!106929 (not b_next!40755) (not b_next!40761) (not b_next!40767) b_and!106947 b_and!106931 (not b_next!40773) (not b_next!40769) b_and!106937 b_and!106945 (not b_next!40765))
