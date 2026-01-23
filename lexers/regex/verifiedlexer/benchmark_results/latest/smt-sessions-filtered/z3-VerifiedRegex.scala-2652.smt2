; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143110 () Bool)

(assert start!143110)

(declare-fun b!1540817 () Bool)

(declare-fun b_free!40315 () Bool)

(declare-fun b_next!41019 () Bool)

(assert (=> b!1540817 (= b_free!40315 (not b_next!41019))))

(declare-fun tp!446487 () Bool)

(declare-fun b_and!107193 () Bool)

(assert (=> b!1540817 (= tp!446487 b_and!107193)))

(declare-fun b_free!40317 () Bool)

(declare-fun b_next!41021 () Bool)

(assert (=> b!1540817 (= b_free!40317 (not b_next!41021))))

(declare-fun tp!446492 () Bool)

(declare-fun b_and!107195 () Bool)

(assert (=> b!1540817 (= tp!446492 b_and!107195)))

(declare-fun b!1540847 () Bool)

(declare-fun b_free!40319 () Bool)

(declare-fun b_next!41023 () Bool)

(assert (=> b!1540847 (= b_free!40319 (not b_next!41023))))

(declare-fun tp!446502 () Bool)

(declare-fun b_and!107197 () Bool)

(assert (=> b!1540847 (= tp!446502 b_and!107197)))

(declare-fun b!1540811 () Bool)

(declare-fun b_free!40321 () Bool)

(declare-fun b_next!41025 () Bool)

(assert (=> b!1540811 (= b_free!40321 (not b_next!41025))))

(declare-fun tp!446498 () Bool)

(declare-fun b_and!107199 () Bool)

(assert (=> b!1540811 (= tp!446498 b_and!107199)))

(declare-fun b!1540818 () Bool)

(declare-fun b_free!40323 () Bool)

(declare-fun b_next!41027 () Bool)

(assert (=> b!1540818 (= b_free!40323 (not b_next!41027))))

(declare-fun tp!446497 () Bool)

(declare-fun b_and!107201 () Bool)

(assert (=> b!1540818 (= tp!446497 b_and!107201)))

(declare-fun b!1540850 () Bool)

(declare-fun b_free!40325 () Bool)

(declare-fun b_next!41029 () Bool)

(assert (=> b!1540850 (= b_free!40325 (not b_next!41029))))

(declare-fun tp!446508 () Bool)

(declare-fun b_and!107203 () Bool)

(assert (=> b!1540850 (= tp!446508 b_and!107203)))

(declare-fun b!1540829 () Bool)

(declare-fun b_free!40327 () Bool)

(declare-fun b_next!41031 () Bool)

(assert (=> b!1540829 (= b_free!40327 (not b_next!41031))))

(declare-fun tp!446486 () Bool)

(declare-fun b_and!107205 () Bool)

(assert (=> b!1540829 (= tp!446486 b_and!107205)))

(declare-fun b!1540843 () Bool)

(declare-fun b_free!40329 () Bool)

(declare-fun b_next!41033 () Bool)

(assert (=> b!1540843 (= b_free!40329 (not b_next!41033))))

(declare-fun tp!446500 () Bool)

(declare-fun b_and!107207 () Bool)

(assert (=> b!1540843 (= tp!446500 b_and!107207)))

(declare-fun bm!101604 () Bool)

(declare-datatypes ((C!8608 0))(
  ( (C!8609 (val!4876 Int)) )
))
(declare-datatypes ((Regex!4215 0))(
  ( (ElementMatch!4215 (c!251727 C!8608)) (Concat!7195 (regOne!8942 Regex!4215) (regTwo!8942 Regex!4215)) (EmptyExpr!4215) (Star!4215 (reg!4544 Regex!4215)) (EmptyLang!4215) (Union!4215 (regOne!8943 Regex!4215) (regTwo!8943 Regex!4215)) )
))
(declare-datatypes ((List!16529 0))(
  ( (Nil!16461) (Cons!16461 (h!21862 Regex!4215) (t!140735 List!16529)) )
))
(declare-datatypes ((Context!1466 0))(
  ( (Context!1467 (exprs!1233 List!16529)) )
))
(declare-datatypes ((tuple2!15584 0))(
  ( (tuple2!15585 (_1!8977 Context!1466) (_2!8977 C!8608)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15586 0))(
  ( (tuple2!15587 (_1!8978 tuple2!15584) (_2!8978 (InoxSet Context!1466))) )
))
(declare-datatypes ((List!16530 0))(
  ( (Nil!16462) (Cons!16462 (h!21863 tuple2!15586) (t!140736 List!16530)) )
))
(declare-datatypes ((array!5666 0))(
  ( (array!5667 (arr!2522 (Array (_ BitVec 32) List!16530)) (size!13297 (_ BitVec 32))) )
))
(declare-datatypes ((array!5668 0))(
  ( (array!5669 (arr!2523 (Array (_ BitVec 32) (_ BitVec 64))) (size!13298 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3264 0))(
  ( (LongMapFixedSize!3265 (defaultEntry!1992 Int) (mask!4828 (_ BitVec 32)) (extraKeys!1879 (_ BitVec 32)) (zeroValue!1889 List!16530) (minValue!1889 List!16530) (_size!3345 (_ BitVec 32)) (_keys!1926 array!5668) (_values!1911 array!5666) (_vacant!1693 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6413 0))(
  ( (Cell!6414 (v!23276 LongMapFixedSize!3264)) )
))
(declare-datatypes ((MutLongMap!1632 0))(
  ( (LongMap!1632 (underlying!3473 Cell!6413)) (MutLongMapExt!1631 (__x!10587 Int)) )
))
(declare-datatypes ((Cell!6415 0))(
  ( (Cell!6416 (v!23277 MutLongMap!1632)) )
))
(declare-datatypes ((Hashable!1576 0))(
  ( (HashableExt!1575 (__x!10588 Int)) )
))
(declare-datatypes ((MutableMap!1576 0))(
  ( (MutableMapExt!1575 (__x!10589 Int)) (HashMap!1576 (underlying!3474 Cell!6415) (hashF!3495 Hashable!1576) (_size!3346 (_ BitVec 32)) (defaultValue!1736 Int)) )
))
(declare-datatypes ((CacheUp!948 0))(
  ( (CacheUp!949 (cache!1957 MutableMap!1576)) )
))
(declare-fun cacheUp!695 () CacheUp!948)

(declare-datatypes ((List!16531 0))(
  ( (Nil!16463) (Cons!16463 (h!21864 C!8608) (t!140737 List!16531)) )
))
(declare-datatypes ((IArray!11019 0))(
  ( (IArray!11020 (innerList!5567 List!16531)) )
))
(declare-datatypes ((Conc!5507 0))(
  ( (Node!5507 (left!13485 Conc!5507) (right!13815 Conc!5507) (csize!11244 Int) (cheight!5718 Int)) (Leaf!8160 (xs!8307 IArray!11019) (csize!11245 Int)) (Empty!5507) )
))
(declare-datatypes ((BalanceConc!10956 0))(
  ( (BalanceConc!10957 (c!251728 Conc!5507)) )
))
(declare-fun input!1460 () BalanceConc!10956)

(declare-datatypes ((tuple3!1568 0))(
  ( (tuple3!1569 (_1!8979 Regex!4215) (_2!8979 Context!1466) (_3!1185 C!8608)) )
))
(declare-datatypes ((tuple2!15588 0))(
  ( (tuple2!15589 (_1!8980 tuple3!1568) (_2!8980 (InoxSet Context!1466))) )
))
(declare-datatypes ((List!16532 0))(
  ( (Nil!16464) (Cons!16464 (h!21865 tuple2!15588) (t!140738 List!16532)) )
))
(declare-datatypes ((array!5670 0))(
  ( (array!5671 (arr!2524 (Array (_ BitVec 32) List!16532)) (size!13299 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3266 0))(
  ( (LongMapFixedSize!3267 (defaultEntry!1993 Int) (mask!4829 (_ BitVec 32)) (extraKeys!1880 (_ BitVec 32)) (zeroValue!1890 List!16532) (minValue!1890 List!16532) (_size!3347 (_ BitVec 32)) (_keys!1927 array!5668) (_values!1912 array!5670) (_vacant!1694 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6417 0))(
  ( (Cell!6418 (v!23278 LongMapFixedSize!3266)) )
))
(declare-datatypes ((MutLongMap!1633 0))(
  ( (LongMap!1633 (underlying!3475 Cell!6417)) (MutLongMapExt!1632 (__x!10590 Int)) )
))
(declare-datatypes ((Cell!6419 0))(
  ( (Cell!6420 (v!23279 MutLongMap!1633)) )
))
(declare-datatypes ((Hashable!1577 0))(
  ( (HashableExt!1576 (__x!10591 Int)) )
))
(declare-datatypes ((MutableMap!1577 0))(
  ( (MutableMapExt!1576 (__x!10592 Int)) (HashMap!1577 (underlying!3476 Cell!6419) (hashF!3496 Hashable!1577) (_size!3348 (_ BitVec 32)) (defaultValue!1737 Int)) )
))
(declare-datatypes ((CacheDown!956 0))(
  ( (CacheDown!957 (cache!1958 MutableMap!1577)) )
))
(declare-fun cacheDown!708 () CacheDown!956)

(declare-datatypes ((Hashable!1578 0))(
  ( (HashableExt!1577 (__x!10593 Int)) )
))
(declare-datatypes ((tuple3!1570 0))(
  ( (tuple3!1571 (_1!8981 (InoxSet Context!1466)) (_2!8981 Int) (_3!1186 Int)) )
))
(declare-datatypes ((tuple2!15590 0))(
  ( (tuple2!15591 (_1!8982 tuple3!1570) (_2!8982 Int)) )
))
(declare-datatypes ((List!16533 0))(
  ( (Nil!16465) (Cons!16465 (h!21866 tuple2!15590) (t!140739 List!16533)) )
))
(declare-datatypes ((array!5672 0))(
  ( (array!5673 (arr!2525 (Array (_ BitVec 32) List!16533)) (size!13300 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3268 0))(
  ( (LongMapFixedSize!3269 (defaultEntry!1994 Int) (mask!4830 (_ BitVec 32)) (extraKeys!1881 (_ BitVec 32)) (zeroValue!1891 List!16533) (minValue!1891 List!16533) (_size!3349 (_ BitVec 32)) (_keys!1928 array!5668) (_values!1913 array!5672) (_vacant!1695 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6421 0))(
  ( (Cell!6422 (v!23280 LongMapFixedSize!3268)) )
))
(declare-datatypes ((List!16534 0))(
  ( (Nil!16466) (Cons!16466 (h!21867 (_ BitVec 16)) (t!140740 List!16534)) )
))
(declare-datatypes ((TokenValue!2980 0))(
  ( (FloatLiteralValue!5960 (text!21305 List!16534)) (TokenValueExt!2979 (__x!10594 Int)) (Broken!14900 (value!92002 List!16534)) (Object!3047) (End!2980) (Def!2980) (Underscore!2980) (Match!2980) (Else!2980) (Error!2980) (Case!2980) (If!2980) (Extends!2980) (Abstract!2980) (Class!2980) (Val!2980) (DelimiterValue!5960 (del!3040 List!16534)) (KeywordValue!2986 (value!92003 List!16534)) (CommentValue!5960 (value!92004 List!16534)) (WhitespaceValue!5960 (value!92005 List!16534)) (IndentationValue!2980 (value!92006 List!16534)) (String!19181) (Int32!2980) (Broken!14901 (value!92007 List!16534)) (Boolean!2981) (Unit!25888) (OperatorValue!2983 (op!3040 List!16534)) (IdentifierValue!5960 (value!92008 List!16534)) (IdentifierValue!5961 (value!92009 List!16534)) (WhitespaceValue!5961 (value!92010 List!16534)) (True!5960) (False!5960) (Broken!14902 (value!92011 List!16534)) (Broken!14903 (value!92012 List!16534)) (True!5961) (RightBrace!2980) (RightBracket!2980) (Colon!2980) (Null!2980) (Comma!2980) (LeftBracket!2980) (False!5961) (LeftBrace!2980) (ImaginaryLiteralValue!2980 (text!21306 List!16534)) (StringLiteralValue!8940 (value!92013 List!16534)) (EOFValue!2980 (value!92014 List!16534)) (IdentValue!2980 (value!92015 List!16534)) (DelimiterValue!5961 (value!92016 List!16534)) (DedentValue!2980 (value!92017 List!16534)) (NewLineValue!2980 (value!92018 List!16534)) (IntegerValue!8940 (value!92019 (_ BitVec 32)) (text!21307 List!16534)) (IntegerValue!8941 (value!92020 Int) (text!21308 List!16534)) (Times!2980) (Or!2980) (Equal!2980) (Minus!2980) (Broken!14904 (value!92021 List!16534)) (And!2980) (Div!2980) (LessEqual!2980) (Mod!2980) (Concat!7196) (Not!2980) (Plus!2980) (SpaceValue!2980 (value!92022 List!16534)) (IntegerValue!8942 (value!92023 Int) (text!21309 List!16534)) (StringLiteralValue!8941 (text!21310 List!16534)) (FloatLiteralValue!5961 (text!21311 List!16534)) (BytesLiteralValue!2980 (value!92024 List!16534)) (CommentValue!5961 (value!92025 List!16534)) (StringLiteralValue!8942 (value!92026 List!16534)) (ErrorTokenValue!2980 (msg!3041 List!16534)) )
))
(declare-datatypes ((String!19182 0))(
  ( (String!19183 (value!92027 String)) )
))
(declare-datatypes ((TokenValueInjection!5620 0))(
  ( (TokenValueInjection!5621 (toValue!4251 Int) (toChars!4110 Int)) )
))
(declare-datatypes ((Rule!5580 0))(
  ( (Rule!5581 (regex!2890 Regex!4215) (tag!3154 String!19182) (isSeparator!2890 Bool) (transformation!2890 TokenValueInjection!5620)) )
))
(declare-datatypes ((Token!5418 0))(
  ( (Token!5419 (value!92028 TokenValue!2980) (rule!4694 Rule!5580) (size!13301 Int) (originalCharacters!3740 List!16531)) )
))
(declare-datatypes ((tuple2!15592 0))(
  ( (tuple2!15593 (_1!8983 Token!5418) (_2!8983 BalanceConc!10956)) )
))
(declare-datatypes ((Option!2983 0))(
  ( (None!2982) (Some!2982 (v!23281 tuple2!15592)) )
))
(declare-datatypes ((MutLongMap!1634 0))(
  ( (LongMap!1634 (underlying!3477 Cell!6421)) (MutLongMapExt!1633 (__x!10595 Int)) )
))
(declare-datatypes ((Cell!6423 0))(
  ( (Cell!6424 (v!23282 MutLongMap!1634)) )
))
(declare-datatypes ((MutableMap!1578 0))(
  ( (MutableMapExt!1577 (__x!10596 Int)) (HashMap!1578 (underlying!3478 Cell!6423) (hashF!3497 Hashable!1578) (_size!3350 (_ BitVec 32)) (defaultValue!1738 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!376 0))(
  ( (CacheFurthestNullable!377 (cache!1959 MutableMap!1578) (totalInput!2382 BalanceConc!10956)) )
))
(declare-datatypes ((tuple4!802 0))(
  ( (tuple4!803 (_1!8984 Option!2983) (_2!8984 CacheUp!948) (_3!1187 CacheDown!956) (_4!401 CacheFurthestNullable!376)) )
))
(declare-fun call!101609 () tuple4!802)

(declare-datatypes ((LexerInterface!2540 0))(
  ( (LexerInterfaceExt!2537 (__x!10597 Int)) (Lexer!2538) )
))
(declare-fun thiss!15733 () LexerInterface!2540)

(declare-fun totalInput!496 () BalanceConc!10956)

(declare-datatypes ((List!16535 0))(
  ( (Nil!16467) (Cons!16467 (h!21868 Rule!5580) (t!140741 List!16535)) )
))
(declare-fun rulesArg!359 () List!16535)

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!376)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!35 (LexerInterface!2540 Rule!5580 BalanceConc!10956 BalanceConc!10956 CacheUp!948 CacheDown!956 CacheFurthestNullable!376) tuple4!802)

(assert (=> bm!101604 (= call!101609 (maxPrefixOneRuleZipperSequenceV3Mem!35 thiss!15733 (h!21868 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun b!1540809 () Bool)

(declare-fun e!986433 () Bool)

(declare-fun e!986449 () Bool)

(assert (=> b!1540809 (= e!986433 e!986449)))

(declare-fun b!1540810 () Bool)

(declare-fun e!986432 () Bool)

(declare-fun e!986447 () Bool)

(assert (=> b!1540810 (= e!986432 e!986447)))

(declare-fun res!690093 () Bool)

(assert (=> b!1540810 (=> res!690093 e!986447)))

(declare-datatypes ((tuple4!804 0))(
  ( (tuple4!805 (_1!8985 Option!2983) (_2!8985 CacheUp!948) (_3!1188 CacheFurthestNullable!376) (_4!402 CacheDown!956)) )
))
(declare-fun lt!534418 () tuple4!804)

(declare-datatypes ((tuple2!15594 0))(
  ( (tuple2!15595 (_1!8986 Token!5418) (_2!8986 List!16531)) )
))
(declare-datatypes ((Option!2984 0))(
  ( (None!2983) (Some!2983 (v!23283 tuple2!15594)) )
))
(declare-fun lt!534415 () Option!2984)

(declare-fun get!4798 (Option!2983) tuple2!15592)

(declare-fun get!4799 (Option!2984) tuple2!15594)

(assert (=> b!1540810 (= res!690093 (not (= (_1!8983 (get!4798 (_1!8985 lt!534418))) (_1!8986 (get!4799 lt!534415)))))))

(declare-fun lt!534416 () List!16531)

(declare-fun maxPrefix!1220 (LexerInterface!2540 List!16535 List!16531) Option!2984)

(assert (=> b!1540810 (= lt!534415 (maxPrefix!1220 thiss!15733 rulesArg!359 lt!534416))))

(declare-fun e!986437 () Bool)

(declare-fun tp!446491 () Bool)

(declare-fun tp!446504 () Bool)

(declare-fun e!986428 () Bool)

(declare-fun array_inv!1811 (array!5668) Bool)

(declare-fun array_inv!1812 (array!5666) Bool)

(assert (=> b!1540811 (= e!986437 (and tp!446498 tp!446491 tp!446504 (array_inv!1811 (_keys!1926 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) (array_inv!1812 (_values!1911 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) e!986428))))

(declare-fun b!1540812 () Bool)

(declare-fun isDefined!2391 (Option!2984) Bool)

(assert (=> b!1540812 (= e!986447 (isDefined!2391 lt!534415))))

(declare-fun b!1540813 () Bool)

(declare-fun res!690092 () Bool)

(assert (=> b!1540813 (=> res!690092 e!986432)))

(declare-fun lt!534414 () Bool)

(assert (=> b!1540813 (= res!690092 lt!534414)))

(declare-fun b!1540814 () Bool)

(declare-fun tp!446507 () Bool)

(declare-fun e!986427 () Bool)

(declare-fun e!986429 () Bool)

(declare-fun inv!21716 (String!19182) Bool)

(declare-fun inv!21717 (TokenValueInjection!5620) Bool)

(assert (=> b!1540814 (= e!986429 (and tp!446507 (inv!21716 (tag!3154 (h!21868 rulesArg!359))) (inv!21717 (transformation!2890 (h!21868 rulesArg!359))) e!986427))))

(declare-fun b!1540815 () Bool)

(declare-fun e!986459 () Bool)

(assert (=> b!1540815 (= e!986449 e!986459)))

(declare-fun b!1540816 () Bool)

(declare-fun e!986457 () Bool)

(declare-fun lt!534417 () tuple2!15592)

(declare-fun lt!534409 () tuple2!15594)

(declare-fun list!6432 (BalanceConc!10956) List!16531)

(assert (=> b!1540816 (= e!986457 (not (= (list!6432 (_2!8983 lt!534417)) (_2!8986 lt!534409))))))

(assert (=> b!1540817 (= e!986427 (and tp!446487 tp!446492))))

(declare-fun e!986443 () Bool)

(declare-fun e!986431 () Bool)

(assert (=> b!1540818 (= e!986443 (and e!986431 tp!446497))))

(declare-fun b!1540819 () Bool)

(declare-fun e!986458 () Bool)

(declare-fun lt!534411 () MutLongMap!1632)

(get-info :version)

(assert (=> b!1540819 (= e!986431 (and e!986458 ((_ is LongMap!1632) lt!534411)))))

(assert (=> b!1540819 (= lt!534411 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))

(declare-fun b!1540820 () Bool)

(declare-fun res!690094 () Bool)

(declare-fun e!986448 () Bool)

(assert (=> b!1540820 (=> (not res!690094) (not e!986448))))

(declare-fun valid!1318 (CacheDown!956) Bool)

(assert (=> b!1540820 (= res!690094 (valid!1318 cacheDown!708))))

(declare-fun b!1540821 () Bool)

(declare-fun e!986438 () Bool)

(assert (=> b!1540821 (= e!986438 e!986448)))

(declare-fun res!690091 () Bool)

(assert (=> b!1540821 (=> (not res!690091) (not e!986448))))

(declare-fun isSuffix!335 (List!16531 List!16531) Bool)

(assert (=> b!1540821 (= res!690091 (isSuffix!335 lt!534416 (list!6432 totalInput!496)))))

(assert (=> b!1540821 (= lt!534416 (list!6432 input!1460))))

(declare-fun b!1540822 () Bool)

(declare-fun e!986444 () Bool)

(declare-fun e!986452 () Bool)

(declare-fun lt!534420 () MutLongMap!1633)

(assert (=> b!1540822 (= e!986444 (and e!986452 ((_ is LongMap!1633) lt!534420)))))

(assert (=> b!1540822 (= lt!534420 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))

(declare-fun mapIsEmpty!7672 () Bool)

(declare-fun mapRes!7671 () Bool)

(assert (=> mapIsEmpty!7672 mapRes!7671))

(declare-fun b!1540823 () Bool)

(declare-fun e!986441 () Bool)

(assert (=> b!1540823 (= e!986441 e!986432)))

(declare-fun res!690084 () Bool)

(assert (=> b!1540823 (=> res!690084 e!986432)))

(declare-fun e!986426 () Bool)

(assert (=> b!1540823 (= res!690084 e!986426)))

(declare-fun res!690085 () Bool)

(assert (=> b!1540823 (=> (not res!690085) (not e!986426))))

(assert (=> b!1540823 (= res!690085 (not lt!534414))))

(declare-fun lt!534408 () Bool)

(assert (=> b!1540823 (= lt!534414 (not lt!534408))))

(declare-fun b!1540824 () Bool)

(declare-fun e!986424 () Bool)

(assert (=> b!1540824 (= e!986424 e!986443)))

(declare-fun mapNonEmpty!7671 () Bool)

(declare-fun tp!446501 () Bool)

(declare-fun tp!446483 () Bool)

(assert (=> mapNonEmpty!7671 (= mapRes!7671 (and tp!446501 tp!446483))))

(declare-fun mapValue!7672 () List!16530)

(declare-fun mapRest!7672 () (Array (_ BitVec 32) List!16530))

(declare-fun mapKey!7673 () (_ BitVec 32))

(assert (=> mapNonEmpty!7671 (= (arr!2522 (_values!1911 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) (store mapRest!7672 mapKey!7673 mapValue!7672))))

(declare-fun b!1540825 () Bool)

(assert (=> b!1540825 (= e!986448 (not e!986441))))

(declare-fun res!690082 () Bool)

(assert (=> b!1540825 (=> res!690082 e!986441)))

(declare-fun lt!534413 () Option!2984)

(assert (=> b!1540825 (= res!690082 (not (= lt!534408 (isDefined!2391 lt!534413))))))

(declare-fun isDefined!2392 (Option!2983) Bool)

(assert (=> b!1540825 (= lt!534408 (isDefined!2392 (_1!8985 lt!534418)))))

(declare-fun maxPrefixZipper!275 (LexerInterface!2540 List!16535 List!16531) Option!2984)

(assert (=> b!1540825 (= lt!534413 (maxPrefixZipper!275 thiss!15733 rulesArg!359 lt!534416))))

(declare-fun e!986453 () tuple4!804)

(assert (=> b!1540825 (= lt!534418 e!986453)))

(declare-fun c!251726 () Bool)

(assert (=> b!1540825 (= c!251726 (and ((_ is Cons!16467) rulesArg!359) ((_ is Nil!16467) (t!140741 rulesArg!359))))))

(declare-fun isPrefix!1249 (List!16531 List!16531) Bool)

(assert (=> b!1540825 (isPrefix!1249 lt!534416 lt!534416)))

(declare-datatypes ((Unit!25889 0))(
  ( (Unit!25890) )
))
(declare-fun lt!534419 () Unit!25889)

(declare-fun lemmaIsPrefixRefl!879 (List!16531 List!16531) Unit!25889)

(assert (=> b!1540825 (= lt!534419 (lemmaIsPrefixRefl!879 lt!534416 lt!534416))))

(declare-fun b!1540826 () Bool)

(declare-fun e!986456 () Bool)

(declare-fun lt!534410 () MutLongMap!1634)

(assert (=> b!1540826 (= e!986456 (and e!986433 ((_ is LongMap!1634) lt!534410)))))

(assert (=> b!1540826 (= lt!534410 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))

(declare-fun b!1540827 () Bool)

(declare-fun e!986454 () Bool)

(declare-fun tp!446499 () Bool)

(declare-fun mapRes!7673 () Bool)

(assert (=> b!1540827 (= e!986454 (and tp!446499 mapRes!7673))))

(declare-fun condMapEmpty!7672 () Bool)

(declare-fun mapDefault!7672 () List!16533)

(assert (=> b!1540827 (= condMapEmpty!7672 (= (arr!2525 (_values!1913 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16533)) mapDefault!7672)))))

(declare-fun mapNonEmpty!7672 () Bool)

(declare-fun tp!446509 () Bool)

(declare-fun tp!446484 () Bool)

(assert (=> mapNonEmpty!7672 (= mapRes!7673 (and tp!446509 tp!446484))))

(declare-fun mapRest!7673 () (Array (_ BitVec 32) List!16533))

(declare-fun mapValue!7671 () List!16533)

(declare-fun mapKey!7671 () (_ BitVec 32))

(assert (=> mapNonEmpty!7672 (= (arr!2525 (_values!1913 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) (store mapRest!7673 mapKey!7671 mapValue!7671))))

(declare-fun b!1540828 () Bool)

(declare-fun e!986445 () Bool)

(declare-fun tp!446485 () Bool)

(declare-fun inv!21718 (Conc!5507) Bool)

(assert (=> b!1540828 (= e!986445 (and (inv!21718 (c!251728 input!1460)) tp!446485))))

(declare-fun tp!446503 () Bool)

(declare-fun tp!446505 () Bool)

(declare-fun e!986422 () Bool)

(declare-fun e!986440 () Bool)

(declare-fun array_inv!1813 (array!5670) Bool)

(assert (=> b!1540829 (= e!986422 (and tp!446486 tp!446505 tp!446503 (array_inv!1811 (_keys!1927 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) (array_inv!1813 (_values!1912 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) e!986440))))

(declare-fun mapNonEmpty!7673 () Bool)

(declare-fun mapRes!7672 () Bool)

(declare-fun tp!446506 () Bool)

(declare-fun tp!446488 () Bool)

(assert (=> mapNonEmpty!7673 (= mapRes!7672 (and tp!446506 tp!446488))))

(declare-fun mapValue!7673 () List!16532)

(declare-fun mapRest!7671 () (Array (_ BitVec 32) List!16532))

(declare-fun mapKey!7672 () (_ BitVec 32))

(assert (=> mapNonEmpty!7673 (= (arr!2524 (_values!1912 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) (store mapRest!7671 mapKey!7672 mapValue!7673))))

(declare-fun res!690083 () Bool)

(assert (=> start!143110 (=> (not res!690083) (not e!986438))))

(assert (=> start!143110 (= res!690083 ((_ is Lexer!2538) thiss!15733))))

(assert (=> start!143110 e!986438))

(declare-fun inv!21719 (CacheUp!948) Bool)

(assert (=> start!143110 (and (inv!21719 cacheUp!695) e!986424)))

(declare-fun inv!21720 (BalanceConc!10956) Bool)

(assert (=> start!143110 (and (inv!21720 input!1460) e!986445)))

(declare-fun e!986434 () Bool)

(declare-fun inv!21721 (CacheDown!956) Bool)

(assert (=> start!143110 (and (inv!21721 cacheDown!708) e!986434)))

(assert (=> start!143110 true))

(declare-fun e!986421 () Bool)

(assert (=> start!143110 (and (inv!21720 totalInput!496) e!986421)))

(declare-fun e!986423 () Bool)

(assert (=> start!143110 e!986423))

(declare-fun e!986435 () Bool)

(declare-fun inv!21722 (CacheFurthestNullable!376) Bool)

(assert (=> start!143110 (and (inv!21722 cacheFurthestNullable!81) e!986435)))

(declare-fun mapIsEmpty!7671 () Bool)

(assert (=> mapIsEmpty!7671 mapRes!7673))

(declare-fun b!1540830 () Bool)

(declare-fun res!690095 () Bool)

(assert (=> b!1540830 (=> (not res!690095) (not e!986448))))

(assert (=> b!1540830 (= res!690095 (= (totalInput!2382 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1540831 () Bool)

(declare-fun e!986455 () Bool)

(declare-fun tp!446510 () Bool)

(assert (=> b!1540831 (= e!986455 (and (inv!21718 (c!251728 (totalInput!2382 cacheFurthestNullable!81))) tp!446510))))

(declare-fun b!1540832 () Bool)

(declare-fun e!986436 () Bool)

(assert (=> b!1540832 (= e!986436 e!986437)))

(declare-fun b!1540833 () Bool)

(declare-fun e!986451 () Bool)

(assert (=> b!1540833 (= e!986452 e!986451)))

(declare-fun b!1540834 () Bool)

(declare-fun tp!446496 () Bool)

(assert (=> b!1540834 (= e!986428 (and tp!446496 mapRes!7671))))

(declare-fun condMapEmpty!7673 () Bool)

(declare-fun mapDefault!7673 () List!16530)

(assert (=> b!1540834 (= condMapEmpty!7673 (= (arr!2522 (_values!1911 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16530)) mapDefault!7673)))))

(declare-fun b!1540835 () Bool)

(assert (=> b!1540835 (= e!986426 e!986457)))

(declare-fun res!690086 () Bool)

(assert (=> b!1540835 (=> res!690086 e!986457)))

(assert (=> b!1540835 (= res!690086 (not (= (_1!8983 lt!534417) (_1!8986 lt!534409))))))

(assert (=> b!1540835 (= lt!534409 (get!4799 lt!534413))))

(assert (=> b!1540835 (= lt!534417 (get!4798 (_1!8985 lt!534418)))))

(declare-fun b!1540836 () Bool)

(declare-fun e!986425 () Bool)

(assert (=> b!1540836 (= e!986434 e!986425)))

(declare-fun b!1540837 () Bool)

(declare-fun lt!534412 () tuple4!802)

(assert (=> b!1540837 (= e!986453 (tuple4!805 (_1!8984 lt!534412) (_2!8984 lt!534412) (_4!401 lt!534412) (_3!1187 lt!534412)))))

(assert (=> b!1540837 (= lt!534412 call!101609)))

(declare-fun b!1540838 () Bool)

(declare-datatypes ((tuple2!15596 0))(
  ( (tuple2!15597 (_1!8987 Option!2983) (_2!8987 Option!2983)) )
))
(declare-fun lt!534423 () tuple2!15596)

(declare-fun lt!534421 () tuple4!802)

(assert (=> b!1540838 (= e!986453 (tuple4!805 (ite (and ((_ is None!2982) (_1!8987 lt!534423)) ((_ is None!2982) (_2!8987 lt!534423))) None!2982 (ite ((_ is None!2982) (_2!8987 lt!534423)) (_1!8987 lt!534423) (ite ((_ is None!2982) (_1!8987 lt!534423)) (_2!8987 lt!534423) (ite (>= (size!13301 (_1!8983 (v!23281 (_1!8987 lt!534423)))) (size!13301 (_1!8983 (v!23281 (_2!8987 lt!534423))))) (_1!8987 lt!534423) (_2!8987 lt!534423))))) (_2!8984 lt!534421) (_4!401 lt!534421) (_3!1187 lt!534421)))))

(declare-fun lt!534422 () tuple4!802)

(assert (=> b!1540838 (= lt!534422 call!101609)))

(declare-fun maxPrefixZipperSequenceV3Mem!45 (LexerInterface!2540 List!16535 BalanceConc!10956 BalanceConc!10956 CacheUp!948 CacheDown!956 CacheFurthestNullable!376) tuple4!802)

(assert (=> b!1540838 (= lt!534421 (maxPrefixZipperSequenceV3Mem!45 thiss!15733 (t!140741 rulesArg!359) input!1460 totalInput!496 (_2!8984 lt!534422) (_3!1187 lt!534422) (_4!401 lt!534422)))))

(assert (=> b!1540838 (= lt!534423 (tuple2!15597 (_1!8984 lt!534422) (_1!8984 lt!534421)))))

(declare-fun b!1540839 () Bool)

(declare-fun res!690090 () Bool)

(assert (=> b!1540839 (=> (not res!690090) (not e!986438))))

(declare-fun isEmpty!10028 (List!16535) Bool)

(assert (=> b!1540839 (= res!690090 (not (isEmpty!10028 rulesArg!359)))))

(declare-fun b!1540840 () Bool)

(declare-fun e!986450 () Bool)

(assert (=> b!1540840 (= e!986435 (and e!986450 (inv!21720 (totalInput!2382 cacheFurthestNullable!81)) e!986455))))

(declare-fun mapIsEmpty!7673 () Bool)

(assert (=> mapIsEmpty!7673 mapRes!7672))

(declare-fun b!1540841 () Bool)

(assert (=> b!1540841 (= e!986458 e!986436)))

(declare-fun b!1540842 () Bool)

(declare-fun res!690089 () Bool)

(assert (=> b!1540842 (=> (not res!690089) (not e!986448))))

(declare-fun valid!1319 (CacheUp!948) Bool)

(assert (=> b!1540842 (= res!690089 (valid!1319 cacheUp!695))))

(assert (=> b!1540843 (= e!986450 (and e!986456 tp!446500))))

(declare-fun b!1540844 () Bool)

(declare-fun res!690087 () Bool)

(assert (=> b!1540844 (=> (not res!690087) (not e!986448))))

(declare-fun valid!1320 (CacheFurthestNullable!376) Bool)

(assert (=> b!1540844 (= res!690087 (valid!1320 cacheFurthestNullable!81))))

(declare-fun b!1540845 () Bool)

(declare-fun tp!446493 () Bool)

(assert (=> b!1540845 (= e!986421 (and (inv!21718 (c!251728 totalInput!496)) tp!446493))))

(declare-fun b!1540846 () Bool)

(declare-fun tp!446494 () Bool)

(assert (=> b!1540846 (= e!986440 (and tp!446494 mapRes!7672))))

(declare-fun condMapEmpty!7671 () Bool)

(declare-fun mapDefault!7671 () List!16532)

(assert (=> b!1540846 (= condMapEmpty!7671 (= (arr!2524 (_values!1912 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16532)) mapDefault!7671)))))

(assert (=> b!1540847 (= e!986425 (and e!986444 tp!446502))))

(declare-fun b!1540848 () Bool)

(assert (=> b!1540848 (= e!986451 e!986422)))

(declare-fun b!1540849 () Bool)

(declare-fun res!690088 () Bool)

(assert (=> b!1540849 (=> (not res!690088) (not e!986438))))

(declare-fun rulesValidInductive!889 (LexerInterface!2540 List!16535) Bool)

(assert (=> b!1540849 (= res!690088 (rulesValidInductive!889 thiss!15733 rulesArg!359))))

(declare-fun tp!446490 () Bool)

(declare-fun tp!446489 () Bool)

(declare-fun array_inv!1814 (array!5672) Bool)

(assert (=> b!1540850 (= e!986459 (and tp!446508 tp!446490 tp!446489 (array_inv!1811 (_keys!1928 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) (array_inv!1814 (_values!1913 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) e!986454))))

(declare-fun b!1540851 () Bool)

(declare-fun tp!446495 () Bool)

(assert (=> b!1540851 (= e!986423 (and e!986429 tp!446495))))

(assert (= (and start!143110 res!690083) b!1540849))

(assert (= (and b!1540849 res!690088) b!1540839))

(assert (= (and b!1540839 res!690090) b!1540821))

(assert (= (and b!1540821 res!690091) b!1540842))

(assert (= (and b!1540842 res!690089) b!1540820))

(assert (= (and b!1540820 res!690094) b!1540844))

(assert (= (and b!1540844 res!690087) b!1540830))

(assert (= (and b!1540830 res!690095) b!1540825))

(assert (= (and b!1540825 c!251726) b!1540837))

(assert (= (and b!1540825 (not c!251726)) b!1540838))

(assert (= (or b!1540837 b!1540838) bm!101604))

(assert (= (and b!1540825 (not res!690082)) b!1540823))

(assert (= (and b!1540823 res!690085) b!1540835))

(assert (= (and b!1540835 (not res!690086)) b!1540816))

(assert (= (and b!1540823 (not res!690084)) b!1540813))

(assert (= (and b!1540813 (not res!690092)) b!1540810))

(assert (= (and b!1540810 (not res!690093)) b!1540812))

(assert (= (and b!1540834 condMapEmpty!7673) mapIsEmpty!7672))

(assert (= (and b!1540834 (not condMapEmpty!7673)) mapNonEmpty!7671))

(assert (= b!1540811 b!1540834))

(assert (= b!1540832 b!1540811))

(assert (= b!1540841 b!1540832))

(assert (= (and b!1540819 ((_ is LongMap!1632) (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))) b!1540841))

(assert (= b!1540818 b!1540819))

(assert (= (and b!1540824 ((_ is HashMap!1576) (cache!1957 cacheUp!695))) b!1540818))

(assert (= start!143110 b!1540824))

(assert (= start!143110 b!1540828))

(assert (= (and b!1540846 condMapEmpty!7671) mapIsEmpty!7673))

(assert (= (and b!1540846 (not condMapEmpty!7671)) mapNonEmpty!7673))

(assert (= b!1540829 b!1540846))

(assert (= b!1540848 b!1540829))

(assert (= b!1540833 b!1540848))

(assert (= (and b!1540822 ((_ is LongMap!1633) (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))) b!1540833))

(assert (= b!1540847 b!1540822))

(assert (= (and b!1540836 ((_ is HashMap!1577) (cache!1958 cacheDown!708))) b!1540847))

(assert (= start!143110 b!1540836))

(assert (= start!143110 b!1540845))

(assert (= b!1540814 b!1540817))

(assert (= b!1540851 b!1540814))

(assert (= (and start!143110 ((_ is Cons!16467) rulesArg!359)) b!1540851))

(assert (= (and b!1540827 condMapEmpty!7672) mapIsEmpty!7671))

(assert (= (and b!1540827 (not condMapEmpty!7672)) mapNonEmpty!7672))

(assert (= b!1540850 b!1540827))

(assert (= b!1540815 b!1540850))

(assert (= b!1540809 b!1540815))

(assert (= (and b!1540826 ((_ is LongMap!1634) (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))) b!1540809))

(assert (= b!1540843 b!1540826))

(assert (= (and b!1540840 ((_ is HashMap!1578) (cache!1959 cacheFurthestNullable!81))) b!1540843))

(assert (= b!1540840 b!1540831))

(assert (= start!143110 b!1540840))

(declare-fun m!1814614 () Bool)

(assert (=> start!143110 m!1814614))

(declare-fun m!1814616 () Bool)

(assert (=> start!143110 m!1814616))

(declare-fun m!1814618 () Bool)

(assert (=> start!143110 m!1814618))

(declare-fun m!1814620 () Bool)

(assert (=> start!143110 m!1814620))

(declare-fun m!1814622 () Bool)

(assert (=> start!143110 m!1814622))

(declare-fun m!1814624 () Bool)

(assert (=> b!1540839 m!1814624))

(declare-fun m!1814626 () Bool)

(assert (=> mapNonEmpty!7672 m!1814626))

(declare-fun m!1814628 () Bool)

(assert (=> b!1540821 m!1814628))

(assert (=> b!1540821 m!1814628))

(declare-fun m!1814630 () Bool)

(assert (=> b!1540821 m!1814630))

(declare-fun m!1814632 () Bool)

(assert (=> b!1540821 m!1814632))

(declare-fun m!1814634 () Bool)

(assert (=> b!1540845 m!1814634))

(declare-fun m!1814636 () Bool)

(assert (=> b!1540814 m!1814636))

(declare-fun m!1814638 () Bool)

(assert (=> b!1540814 m!1814638))

(declare-fun m!1814640 () Bool)

(assert (=> mapNonEmpty!7673 m!1814640))

(declare-fun m!1814642 () Bool)

(assert (=> b!1540844 m!1814642))

(declare-fun m!1814644 () Bool)

(assert (=> b!1540810 m!1814644))

(declare-fun m!1814646 () Bool)

(assert (=> b!1540810 m!1814646))

(declare-fun m!1814648 () Bool)

(assert (=> b!1540810 m!1814648))

(declare-fun m!1814650 () Bool)

(assert (=> b!1540850 m!1814650))

(declare-fun m!1814652 () Bool)

(assert (=> b!1540850 m!1814652))

(declare-fun m!1814654 () Bool)

(assert (=> mapNonEmpty!7671 m!1814654))

(declare-fun m!1814656 () Bool)

(assert (=> b!1540811 m!1814656))

(declare-fun m!1814658 () Bool)

(assert (=> b!1540811 m!1814658))

(declare-fun m!1814660 () Bool)

(assert (=> b!1540816 m!1814660))

(declare-fun m!1814662 () Bool)

(assert (=> b!1540828 m!1814662))

(declare-fun m!1814664 () Bool)

(assert (=> bm!101604 m!1814664))

(declare-fun m!1814666 () Bool)

(assert (=> b!1540838 m!1814666))

(declare-fun m!1814668 () Bool)

(assert (=> b!1540829 m!1814668))

(declare-fun m!1814670 () Bool)

(assert (=> b!1540829 m!1814670))

(declare-fun m!1814672 () Bool)

(assert (=> b!1540835 m!1814672))

(assert (=> b!1540835 m!1814644))

(declare-fun m!1814674 () Bool)

(assert (=> b!1540842 m!1814674))

(declare-fun m!1814676 () Bool)

(assert (=> b!1540812 m!1814676))

(declare-fun m!1814678 () Bool)

(assert (=> b!1540831 m!1814678))

(declare-fun m!1814680 () Bool)

(assert (=> b!1540840 m!1814680))

(declare-fun m!1814682 () Bool)

(assert (=> b!1540825 m!1814682))

(declare-fun m!1814684 () Bool)

(assert (=> b!1540825 m!1814684))

(declare-fun m!1814686 () Bool)

(assert (=> b!1540825 m!1814686))

(declare-fun m!1814688 () Bool)

(assert (=> b!1540825 m!1814688))

(declare-fun m!1814690 () Bool)

(assert (=> b!1540825 m!1814690))

(declare-fun m!1814692 () Bool)

(assert (=> b!1540820 m!1814692))

(declare-fun m!1814694 () Bool)

(assert (=> b!1540849 m!1814694))

(check-sat (not b!1540834) (not b!1540821) (not b_next!41025) (not b!1540839) (not mapNonEmpty!7673) (not b!1540846) (not b!1540850) (not b!1540845) (not b!1540849) (not b!1540844) (not b!1540828) (not b!1540842) (not start!143110) (not b!1540840) (not b_next!41021) (not b_next!41033) (not mapNonEmpty!7672) b_and!107201 (not bm!101604) (not b!1540851) (not b!1540829) (not b!1540814) (not b_next!41027) (not b!1540820) (not b_next!41029) b_and!107199 (not b!1540827) (not b!1540835) b_and!107195 b_and!107193 (not b_next!41023) b_and!107207 (not b_next!41031) (not b!1540838) b_and!107203 (not b!1540816) (not b!1540812) (not mapNonEmpty!7671) (not b!1540825) (not b!1540810) (not b!1540831) b_and!107197 (not b!1540811) b_and!107205 (not b_next!41019))
(check-sat b_and!107201 (not b_next!41025) (not b_next!41027) b_and!107197 (not b_next!41021) (not b_next!41033) (not b_next!41029) b_and!107199 b_and!107195 b_and!107193 (not b_next!41023) b_and!107207 (not b_next!41031) b_and!107203 b_and!107205 (not b_next!41019))
(get-model)

(declare-fun d!458567 () Bool)

(assert (=> d!458567 (= (array_inv!1811 (_keys!1927 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) (bvsge (size!13298 (_keys!1927 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540829 d!458567))

(declare-fun d!458569 () Bool)

(assert (=> d!458569 (= (array_inv!1813 (_values!1912 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) (bvsge (size!13299 (_values!1912 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540829 d!458569))

(declare-fun d!458571 () Bool)

(declare-fun e!986462 () Bool)

(assert (=> d!458571 e!986462))

(declare-fun res!690108 () Bool)

(assert (=> d!458571 (=> res!690108 e!986462)))

(declare-fun lt!534426 () Bool)

(assert (=> d!458571 (= res!690108 (not lt!534426))))

(declare-fun drop!774 (List!16531 Int) List!16531)

(declare-fun size!13302 (List!16531) Int)

(assert (=> d!458571 (= lt!534426 (= lt!534416 (drop!774 (list!6432 totalInput!496) (- (size!13302 (list!6432 totalInput!496)) (size!13302 lt!534416)))))))

(assert (=> d!458571 (= (isSuffix!335 lt!534416 (list!6432 totalInput!496)) lt!534426)))

(declare-fun b!1540854 () Bool)

(assert (=> b!1540854 (= e!986462 (>= (size!13302 (list!6432 totalInput!496)) (size!13302 lt!534416)))))

(assert (= (and d!458571 (not res!690108)) b!1540854))

(assert (=> d!458571 m!1814628))

(declare-fun m!1814696 () Bool)

(assert (=> d!458571 m!1814696))

(declare-fun m!1814698 () Bool)

(assert (=> d!458571 m!1814698))

(assert (=> d!458571 m!1814628))

(declare-fun m!1814700 () Bool)

(assert (=> d!458571 m!1814700))

(assert (=> b!1540854 m!1814628))

(assert (=> b!1540854 m!1814696))

(assert (=> b!1540854 m!1814698))

(assert (=> b!1540821 d!458571))

(declare-fun d!458573 () Bool)

(declare-fun list!6433 (Conc!5507) List!16531)

(assert (=> d!458573 (= (list!6432 totalInput!496) (list!6433 (c!251728 totalInput!496)))))

(declare-fun bs!382821 () Bool)

(assert (= bs!382821 d!458573))

(declare-fun m!1814702 () Bool)

(assert (=> bs!382821 m!1814702))

(assert (=> b!1540821 d!458573))

(declare-fun d!458575 () Bool)

(assert (=> d!458575 (= (list!6432 input!1460) (list!6433 (c!251728 input!1460)))))

(declare-fun bs!382822 () Bool)

(assert (= bs!382822 d!458575))

(declare-fun m!1814704 () Bool)

(assert (=> bs!382822 m!1814704))

(assert (=> b!1540821 d!458575))

(declare-fun d!458577 () Bool)

(assert (=> d!458577 true))

(declare-fun lt!534429 () Bool)

(declare-fun lambda!65271 () Int)

(declare-fun forall!3905 (List!16535 Int) Bool)

(assert (=> d!458577 (= lt!534429 (forall!3905 rulesArg!359 lambda!65271))))

(declare-fun e!986468 () Bool)

(assert (=> d!458577 (= lt!534429 e!986468)))

(declare-fun res!690113 () Bool)

(assert (=> d!458577 (=> res!690113 e!986468)))

(assert (=> d!458577 (= res!690113 (not ((_ is Cons!16467) rulesArg!359)))))

(assert (=> d!458577 (= (rulesValidInductive!889 thiss!15733 rulesArg!359) lt!534429)))

(declare-fun b!1540859 () Bool)

(declare-fun e!986467 () Bool)

(assert (=> b!1540859 (= e!986468 e!986467)))

(declare-fun res!690114 () Bool)

(assert (=> b!1540859 (=> (not res!690114) (not e!986467))))

(declare-fun ruleValid!650 (LexerInterface!2540 Rule!5580) Bool)

(assert (=> b!1540859 (= res!690114 (ruleValid!650 thiss!15733 (h!21868 rulesArg!359)))))

(declare-fun b!1540860 () Bool)

(assert (=> b!1540860 (= e!986467 (rulesValidInductive!889 thiss!15733 (t!140741 rulesArg!359)))))

(assert (= (and d!458577 (not res!690113)) b!1540859))

(assert (= (and b!1540859 res!690114) b!1540860))

(declare-fun m!1814706 () Bool)

(assert (=> d!458577 m!1814706))

(declare-fun m!1814708 () Bool)

(assert (=> b!1540859 m!1814708))

(declare-fun m!1814710 () Bool)

(assert (=> b!1540860 m!1814710))

(assert (=> b!1540849 d!458577))

(declare-fun d!458579 () Bool)

(assert (=> d!458579 (= (isEmpty!10028 rulesArg!359) ((_ is Nil!16467) rulesArg!359))))

(assert (=> b!1540839 d!458579))

(declare-fun d!458581 () Bool)

(assert (=> d!458581 (= (array_inv!1811 (_keys!1926 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) (bvsge (size!13298 (_keys!1926 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540811 d!458581))

(declare-fun d!458583 () Bool)

(assert (=> d!458583 (= (array_inv!1812 (_values!1911 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) (bvsge (size!13297 (_values!1911 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540811 d!458583))

(declare-fun d!458585 () Bool)

(declare-fun validCacheMapDown!150 (MutableMap!1577) Bool)

(assert (=> d!458585 (= (valid!1318 cacheDown!708) (validCacheMapDown!150 (cache!1958 cacheDown!708)))))

(declare-fun bs!382823 () Bool)

(assert (= bs!382823 d!458585))

(declare-fun m!1814712 () Bool)

(assert (=> bs!382823 m!1814712))

(assert (=> b!1540820 d!458585))

(declare-fun d!458587 () Bool)

(assert (=> d!458587 (= (get!4798 (_1!8985 lt!534418)) (v!23281 (_1!8985 lt!534418)))))

(assert (=> b!1540810 d!458587))

(declare-fun d!458589 () Bool)

(assert (=> d!458589 (= (get!4799 lt!534415) (v!23283 lt!534415))))

(assert (=> b!1540810 d!458589))

(declare-fun b!1540881 () Bool)

(declare-fun res!690131 () Bool)

(declare-fun e!986475 () Bool)

(assert (=> b!1540881 (=> (not res!690131) (not e!986475))))

(declare-fun lt!534442 () Option!2984)

(assert (=> b!1540881 (= res!690131 (< (size!13302 (_2!8986 (get!4799 lt!534442))) (size!13302 lt!534416)))))

(declare-fun b!1540882 () Bool)

(declare-fun res!690135 () Bool)

(assert (=> b!1540882 (=> (not res!690135) (not e!986475))))

(declare-fun ++!4407 (List!16531 List!16531) List!16531)

(declare-fun charsOf!1641 (Token!5418) BalanceConc!10956)

(assert (=> b!1540882 (= res!690135 (= (++!4407 (list!6432 (charsOf!1641 (_1!8986 (get!4799 lt!534442)))) (_2!8986 (get!4799 lt!534442))) lt!534416))))

(declare-fun b!1540883 () Bool)

(declare-fun res!690130 () Bool)

(assert (=> b!1540883 (=> (not res!690130) (not e!986475))))

(declare-fun apply!4083 (TokenValueInjection!5620 BalanceConc!10956) TokenValue!2980)

(declare-fun seqFromList!1745 (List!16531) BalanceConc!10956)

(assert (=> b!1540883 (= res!690130 (= (value!92028 (_1!8986 (get!4799 lt!534442))) (apply!4083 (transformation!2890 (rule!4694 (_1!8986 (get!4799 lt!534442)))) (seqFromList!1745 (originalCharacters!3740 (_1!8986 (get!4799 lt!534442)))))))))

(declare-fun b!1540884 () Bool)

(declare-fun res!690129 () Bool)

(assert (=> b!1540884 (=> (not res!690129) (not e!986475))))

(assert (=> b!1540884 (= res!690129 (= (list!6432 (charsOf!1641 (_1!8986 (get!4799 lt!534442)))) (originalCharacters!3740 (_1!8986 (get!4799 lt!534442)))))))

(declare-fun bm!101607 () Bool)

(declare-fun call!101612 () Option!2984)

(declare-fun maxPrefixOneRule!678 (LexerInterface!2540 Rule!5580 List!16531) Option!2984)

(assert (=> bm!101607 (= call!101612 (maxPrefixOneRule!678 thiss!15733 (h!21868 rulesArg!359) lt!534416))))

(declare-fun b!1540885 () Bool)

(declare-fun contains!2981 (List!16535 Rule!5580) Bool)

(assert (=> b!1540885 (= e!986475 (contains!2981 rulesArg!359 (rule!4694 (_1!8986 (get!4799 lt!534442)))))))

(declare-fun d!458591 () Bool)

(declare-fun e!986476 () Bool)

(assert (=> d!458591 e!986476))

(declare-fun res!690134 () Bool)

(assert (=> d!458591 (=> res!690134 e!986476)))

(declare-fun isEmpty!10029 (Option!2984) Bool)

(assert (=> d!458591 (= res!690134 (isEmpty!10029 lt!534442))))

(declare-fun e!986477 () Option!2984)

(assert (=> d!458591 (= lt!534442 e!986477)))

(declare-fun c!251731 () Bool)

(assert (=> d!458591 (= c!251731 (and ((_ is Cons!16467) rulesArg!359) ((_ is Nil!16467) (t!140741 rulesArg!359))))))

(declare-fun lt!534440 () Unit!25889)

(declare-fun lt!534443 () Unit!25889)

(assert (=> d!458591 (= lt!534440 lt!534443)))

(assert (=> d!458591 (isPrefix!1249 lt!534416 lt!534416)))

(assert (=> d!458591 (= lt!534443 (lemmaIsPrefixRefl!879 lt!534416 lt!534416))))

(assert (=> d!458591 (rulesValidInductive!889 thiss!15733 rulesArg!359)))

(assert (=> d!458591 (= (maxPrefix!1220 thiss!15733 rulesArg!359 lt!534416) lt!534442)))

(declare-fun b!1540886 () Bool)

(assert (=> b!1540886 (= e!986477 call!101612)))

(declare-fun b!1540887 () Bool)

(declare-fun lt!534444 () Option!2984)

(declare-fun lt!534441 () Option!2984)

(assert (=> b!1540887 (= e!986477 (ite (and ((_ is None!2983) lt!534444) ((_ is None!2983) lt!534441)) None!2983 (ite ((_ is None!2983) lt!534441) lt!534444 (ite ((_ is None!2983) lt!534444) lt!534441 (ite (>= (size!13301 (_1!8986 (v!23283 lt!534444))) (size!13301 (_1!8986 (v!23283 lt!534441)))) lt!534444 lt!534441)))))))

(assert (=> b!1540887 (= lt!534444 call!101612)))

(assert (=> b!1540887 (= lt!534441 (maxPrefix!1220 thiss!15733 (t!140741 rulesArg!359) lt!534416))))

(declare-fun b!1540888 () Bool)

(assert (=> b!1540888 (= e!986476 e!986475)))

(declare-fun res!690133 () Bool)

(assert (=> b!1540888 (=> (not res!690133) (not e!986475))))

(assert (=> b!1540888 (= res!690133 (isDefined!2391 lt!534442))))

(declare-fun b!1540889 () Bool)

(declare-fun res!690132 () Bool)

(assert (=> b!1540889 (=> (not res!690132) (not e!986475))))

(declare-fun matchR!1848 (Regex!4215 List!16531) Bool)

(assert (=> b!1540889 (= res!690132 (matchR!1848 (regex!2890 (rule!4694 (_1!8986 (get!4799 lt!534442)))) (list!6432 (charsOf!1641 (_1!8986 (get!4799 lt!534442))))))))

(assert (= (and d!458591 c!251731) b!1540886))

(assert (= (and d!458591 (not c!251731)) b!1540887))

(assert (= (or b!1540886 b!1540887) bm!101607))

(assert (= (and d!458591 (not res!690134)) b!1540888))

(assert (= (and b!1540888 res!690133) b!1540884))

(assert (= (and b!1540884 res!690129) b!1540881))

(assert (= (and b!1540881 res!690131) b!1540882))

(assert (= (and b!1540882 res!690135) b!1540883))

(assert (= (and b!1540883 res!690130) b!1540889))

(assert (= (and b!1540889 res!690132) b!1540885))

(declare-fun m!1814714 () Bool)

(assert (=> b!1540884 m!1814714))

(declare-fun m!1814716 () Bool)

(assert (=> b!1540884 m!1814716))

(assert (=> b!1540884 m!1814716))

(declare-fun m!1814718 () Bool)

(assert (=> b!1540884 m!1814718))

(assert (=> b!1540889 m!1814714))

(assert (=> b!1540889 m!1814716))

(assert (=> b!1540889 m!1814716))

(assert (=> b!1540889 m!1814718))

(assert (=> b!1540889 m!1814718))

(declare-fun m!1814720 () Bool)

(assert (=> b!1540889 m!1814720))

(assert (=> b!1540885 m!1814714))

(declare-fun m!1814722 () Bool)

(assert (=> b!1540885 m!1814722))

(assert (=> b!1540881 m!1814714))

(declare-fun m!1814724 () Bool)

(assert (=> b!1540881 m!1814724))

(assert (=> b!1540881 m!1814698))

(assert (=> b!1540882 m!1814714))

(assert (=> b!1540882 m!1814716))

(assert (=> b!1540882 m!1814716))

(assert (=> b!1540882 m!1814718))

(assert (=> b!1540882 m!1814718))

(declare-fun m!1814726 () Bool)

(assert (=> b!1540882 m!1814726))

(declare-fun m!1814728 () Bool)

(assert (=> b!1540887 m!1814728))

(declare-fun m!1814730 () Bool)

(assert (=> bm!101607 m!1814730))

(assert (=> b!1540883 m!1814714))

(declare-fun m!1814732 () Bool)

(assert (=> b!1540883 m!1814732))

(assert (=> b!1540883 m!1814732))

(declare-fun m!1814734 () Bool)

(assert (=> b!1540883 m!1814734))

(declare-fun m!1814736 () Bool)

(assert (=> b!1540888 m!1814736))

(declare-fun m!1814738 () Bool)

(assert (=> d!458591 m!1814738))

(assert (=> d!458591 m!1814684))

(assert (=> d!458591 m!1814682))

(assert (=> d!458591 m!1814694))

(assert (=> b!1540810 d!458591))

(declare-fun b!1540914 () Bool)

(declare-fun res!690165 () Bool)

(declare-fun e!986490 () Bool)

(assert (=> b!1540914 (=> (not res!690165) (not e!986490))))

(declare-fun lt!534467 () tuple4!802)

(assert (=> b!1540914 (= res!690165 (valid!1319 (_2!8984 lt!534467)))))

(declare-fun e!986491 () Bool)

(declare-fun b!1540915 () Bool)

(assert (=> b!1540915 (= e!986491 (= (list!6432 (_2!8983 (get!4798 (_1!8984 lt!534467)))) (_2!8986 (get!4799 (maxPrefix!1220 thiss!15733 (t!140741 rulesArg!359) (list!6432 input!1460))))))))

(declare-fun b!1540916 () Bool)

(declare-fun res!690162 () Bool)

(assert (=> b!1540916 (=> (not res!690162) (not e!986490))))

(assert (=> b!1540916 (= res!690162 (valid!1318 (_3!1187 lt!534467)))))

(declare-fun b!1540917 () Bool)

(declare-fun e!986492 () Bool)

(assert (=> b!1540917 (= e!986492 (= (list!6432 (_2!8983 (get!4798 (_1!8984 lt!534467)))) (_2!8986 (get!4799 (maxPrefixZipper!275 thiss!15733 (t!140741 rulesArg!359) (list!6432 input!1460))))))))

(declare-fun b!1540918 () Bool)

(declare-fun res!690158 () Bool)

(assert (=> b!1540918 (=> (not res!690158) (not e!986490))))

(declare-fun e!986495 () Bool)

(assert (=> b!1540918 (= res!690158 e!986495)))

(declare-fun res!690160 () Bool)

(assert (=> b!1540918 (=> res!690160 e!986495)))

(assert (=> b!1540918 (= res!690160 (not (isDefined!2392 (_1!8984 lt!534467))))))

(declare-fun b!1540919 () Bool)

(declare-fun res!690163 () Bool)

(assert (=> b!1540919 (=> (not res!690163) (not e!986490))))

(declare-fun e!986494 () Bool)

(assert (=> b!1540919 (= res!690163 e!986494)))

(declare-fun res!690164 () Bool)

(assert (=> b!1540919 (=> res!690164 e!986494)))

(assert (=> b!1540919 (= res!690164 (not (isDefined!2392 (_1!8984 lt!534467))))))

(declare-fun b!1540920 () Bool)

(assert (=> b!1540920 (= e!986490 (= (totalInput!2382 (_4!401 lt!534467)) totalInput!496))))

(declare-fun b!1540921 () Bool)

(assert (=> b!1540921 (= e!986495 e!986492)))

(declare-fun res!690157 () Bool)

(assert (=> b!1540921 (=> (not res!690157) (not e!986492))))

(assert (=> b!1540921 (= res!690157 (= (_1!8983 (get!4798 (_1!8984 lt!534467))) (_1!8986 (get!4799 (maxPrefixZipper!275 thiss!15733 (t!140741 rulesArg!359) (list!6432 input!1460))))))))

(declare-fun b!1540922 () Bool)

(declare-fun e!986493 () tuple4!804)

(declare-fun lt!534464 () tuple4!802)

(assert (=> b!1540922 (= e!986493 (tuple4!805 (_1!8984 lt!534464) (_2!8984 lt!534464) (_4!401 lt!534464) (_3!1187 lt!534464)))))

(declare-fun call!101615 () tuple4!802)

(assert (=> b!1540922 (= lt!534464 call!101615)))

(declare-fun b!1540923 () Bool)

(assert (=> b!1540923 (= e!986494 e!986491)))

(declare-fun res!690156 () Bool)

(assert (=> b!1540923 (=> (not res!690156) (not e!986491))))

(assert (=> b!1540923 (= res!690156 (= (_1!8983 (get!4798 (_1!8984 lt!534467))) (_1!8986 (get!4799 (maxPrefix!1220 thiss!15733 (t!140741 rulesArg!359) (list!6432 input!1460))))))))

(declare-fun b!1540924 () Bool)

(declare-fun lt!534470 () tuple4!802)

(declare-fun lt!534465 () tuple4!802)

(assert (=> b!1540924 (= e!986493 (tuple4!805 (ite (and ((_ is None!2982) (_1!8984 lt!534470)) ((_ is None!2982) (_1!8984 lt!534465))) None!2982 (ite ((_ is None!2982) (_1!8984 lt!534465)) (_1!8984 lt!534470) (ite ((_ is None!2982) (_1!8984 lt!534470)) (_1!8984 lt!534465) (ite (>= (size!13301 (_1!8983 (v!23281 (_1!8984 lt!534470)))) (size!13301 (_1!8983 (v!23281 (_1!8984 lt!534465))))) (_1!8984 lt!534470) (_1!8984 lt!534465))))) (_2!8984 lt!534465) (_4!401 lt!534465) (_3!1187 lt!534465)))))

(assert (=> b!1540924 (= lt!534470 call!101615)))

(assert (=> b!1540924 (= lt!534465 (maxPrefixZipperSequenceV3Mem!45 thiss!15733 (t!140741 (t!140741 rulesArg!359)) input!1460 totalInput!496 (_2!8984 lt!534470) (_3!1187 lt!534470) (_4!401 lt!534470)))))

(declare-fun d!458593 () Bool)

(assert (=> d!458593 e!986490))

(declare-fun res!690159 () Bool)

(assert (=> d!458593 (=> (not res!690159) (not e!986490))))

(assert (=> d!458593 (= res!690159 (= (isDefined!2392 (_1!8984 lt!534467)) (isDefined!2391 (maxPrefixZipper!275 thiss!15733 (t!140741 rulesArg!359) (list!6432 input!1460)))))))

(declare-fun lt!534468 () tuple4!804)

(assert (=> d!458593 (= lt!534467 (tuple4!803 (_1!8985 lt!534468) (_2!8985 lt!534468) (_4!402 lt!534468) (_3!1188 lt!534468)))))

(assert (=> d!458593 (= lt!534468 e!986493)))

(declare-fun c!251734 () Bool)

(assert (=> d!458593 (= c!251734 (and ((_ is Cons!16467) (t!140741 rulesArg!359)) ((_ is Nil!16467) (t!140741 (t!140741 rulesArg!359)))))))

(declare-fun lt!534471 () Unit!25889)

(declare-fun lt!534469 () Unit!25889)

(assert (=> d!458593 (= lt!534471 lt!534469)))

(declare-fun lt!534466 () List!16531)

(declare-fun lt!534463 () List!16531)

(assert (=> d!458593 (isPrefix!1249 lt!534466 lt!534463)))

(assert (=> d!458593 (= lt!534469 (lemmaIsPrefixRefl!879 lt!534466 lt!534463))))

(assert (=> d!458593 (= lt!534463 (list!6432 input!1460))))

(assert (=> d!458593 (= lt!534466 (list!6432 input!1460))))

(assert (=> d!458593 (rulesValidInductive!889 thiss!15733 (t!140741 rulesArg!359))))

(assert (=> d!458593 (= (maxPrefixZipperSequenceV3Mem!45 thiss!15733 (t!140741 rulesArg!359) input!1460 totalInput!496 (_2!8984 lt!534422) (_3!1187 lt!534422) (_4!401 lt!534422)) lt!534467)))

(declare-fun bm!101610 () Bool)

(assert (=> bm!101610 (= call!101615 (maxPrefixOneRuleZipperSequenceV3Mem!35 thiss!15733 (h!21868 (t!140741 rulesArg!359)) input!1460 totalInput!496 (_2!8984 lt!534422) (_3!1187 lt!534422) (_4!401 lt!534422)))))

(declare-fun b!1540925 () Bool)

(declare-fun res!690161 () Bool)

(assert (=> b!1540925 (=> (not res!690161) (not e!986490))))

(assert (=> b!1540925 (= res!690161 (valid!1320 (_4!401 lt!534467)))))

(assert (= (and d!458593 c!251734) b!1540922))

(assert (= (and d!458593 (not c!251734)) b!1540924))

(assert (= (or b!1540922 b!1540924) bm!101610))

(assert (= (and d!458593 res!690159) b!1540918))

(assert (= (and b!1540918 (not res!690160)) b!1540921))

(assert (= (and b!1540921 res!690157) b!1540917))

(assert (= (and b!1540918 res!690158) b!1540919))

(assert (= (and b!1540919 (not res!690164)) b!1540923))

(assert (= (and b!1540923 res!690156) b!1540915))

(assert (= (and b!1540919 res!690163) b!1540914))

(assert (= (and b!1540914 res!690165) b!1540916))

(assert (= (and b!1540916 res!690162) b!1540925))

(assert (= (and b!1540925 res!690161) b!1540920))

(declare-fun m!1814740 () Bool)

(assert (=> bm!101610 m!1814740))

(declare-fun m!1814742 () Bool)

(assert (=> b!1540916 m!1814742))

(declare-fun m!1814744 () Bool)

(assert (=> b!1540921 m!1814744))

(assert (=> b!1540921 m!1814632))

(assert (=> b!1540921 m!1814632))

(declare-fun m!1814746 () Bool)

(assert (=> b!1540921 m!1814746))

(assert (=> b!1540921 m!1814746))

(declare-fun m!1814748 () Bool)

(assert (=> b!1540921 m!1814748))

(declare-fun m!1814750 () Bool)

(assert (=> d!458593 m!1814750))

(declare-fun m!1814752 () Bool)

(assert (=> d!458593 m!1814752))

(assert (=> d!458593 m!1814710))

(assert (=> d!458593 m!1814746))

(declare-fun m!1814754 () Bool)

(assert (=> d!458593 m!1814754))

(declare-fun m!1814756 () Bool)

(assert (=> d!458593 m!1814756))

(assert (=> d!458593 m!1814632))

(assert (=> d!458593 m!1814746))

(assert (=> d!458593 m!1814632))

(declare-fun m!1814758 () Bool)

(assert (=> b!1540925 m!1814758))

(assert (=> b!1540919 m!1814756))

(assert (=> b!1540923 m!1814744))

(assert (=> b!1540923 m!1814632))

(assert (=> b!1540923 m!1814632))

(declare-fun m!1814760 () Bool)

(assert (=> b!1540923 m!1814760))

(assert (=> b!1540923 m!1814760))

(declare-fun m!1814762 () Bool)

(assert (=> b!1540923 m!1814762))

(assert (=> b!1540918 m!1814756))

(declare-fun m!1814764 () Bool)

(assert (=> b!1540917 m!1814764))

(assert (=> b!1540917 m!1814632))

(assert (=> b!1540917 m!1814746))

(assert (=> b!1540917 m!1814632))

(assert (=> b!1540917 m!1814746))

(assert (=> b!1540917 m!1814748))

(assert (=> b!1540917 m!1814744))

(declare-fun m!1814766 () Bool)

(assert (=> b!1540914 m!1814766))

(assert (=> b!1540915 m!1814760))

(assert (=> b!1540915 m!1814762))

(assert (=> b!1540915 m!1814764))

(assert (=> b!1540915 m!1814632))

(assert (=> b!1540915 m!1814760))

(assert (=> b!1540915 m!1814632))

(assert (=> b!1540915 m!1814744))

(declare-fun m!1814768 () Bool)

(assert (=> b!1540924 m!1814768))

(assert (=> b!1540838 d!458593))

(declare-fun d!458595 () Bool)

(declare-fun c!251737 () Bool)

(assert (=> d!458595 (= c!251737 ((_ is Node!5507) (c!251728 input!1460)))))

(declare-fun e!986500 () Bool)

(assert (=> d!458595 (= (inv!21718 (c!251728 input!1460)) e!986500)))

(declare-fun b!1540932 () Bool)

(declare-fun inv!21723 (Conc!5507) Bool)

(assert (=> b!1540932 (= e!986500 (inv!21723 (c!251728 input!1460)))))

(declare-fun b!1540933 () Bool)

(declare-fun e!986501 () Bool)

(assert (=> b!1540933 (= e!986500 e!986501)))

(declare-fun res!690168 () Bool)

(assert (=> b!1540933 (= res!690168 (not ((_ is Leaf!8160) (c!251728 input!1460))))))

(assert (=> b!1540933 (=> res!690168 e!986501)))

(declare-fun b!1540934 () Bool)

(declare-fun inv!21724 (Conc!5507) Bool)

(assert (=> b!1540934 (= e!986501 (inv!21724 (c!251728 input!1460)))))

(assert (= (and d!458595 c!251737) b!1540932))

(assert (= (and d!458595 (not c!251737)) b!1540933))

(assert (= (and b!1540933 (not res!690168)) b!1540934))

(declare-fun m!1814770 () Bool)

(assert (=> b!1540932 m!1814770))

(declare-fun m!1814772 () Bool)

(assert (=> b!1540934 m!1814772))

(assert (=> b!1540828 d!458595))

(declare-fun d!458597 () Bool)

(assert (=> d!458597 (= (inv!21716 (tag!3154 (h!21868 rulesArg!359))) (= (mod (str.len (value!92027 (tag!3154 (h!21868 rulesArg!359)))) 2) 0))))

(assert (=> b!1540814 d!458597))

(declare-fun d!458599 () Bool)

(declare-fun res!690171 () Bool)

(declare-fun e!986504 () Bool)

(assert (=> d!458599 (=> (not res!690171) (not e!986504))))

(declare-fun semiInverseModEq!1086 (Int Int) Bool)

(assert (=> d!458599 (= res!690171 (semiInverseModEq!1086 (toChars!4110 (transformation!2890 (h!21868 rulesArg!359))) (toValue!4251 (transformation!2890 (h!21868 rulesArg!359)))))))

(assert (=> d!458599 (= (inv!21717 (transformation!2890 (h!21868 rulesArg!359))) e!986504)))

(declare-fun b!1540937 () Bool)

(declare-fun equivClasses!1045 (Int Int) Bool)

(assert (=> b!1540937 (= e!986504 (equivClasses!1045 (toChars!4110 (transformation!2890 (h!21868 rulesArg!359))) (toValue!4251 (transformation!2890 (h!21868 rulesArg!359)))))))

(assert (= (and d!458599 res!690171) b!1540937))

(declare-fun m!1814774 () Bool)

(assert (=> d!458599 m!1814774))

(declare-fun m!1814776 () Bool)

(assert (=> b!1540937 m!1814776))

(assert (=> b!1540814 d!458599))

(declare-fun d!458601 () Bool)

(declare-fun c!251738 () Bool)

(assert (=> d!458601 (= c!251738 ((_ is Node!5507) (c!251728 (totalInput!2382 cacheFurthestNullable!81))))))

(declare-fun e!986505 () Bool)

(assert (=> d!458601 (= (inv!21718 (c!251728 (totalInput!2382 cacheFurthestNullable!81))) e!986505)))

(declare-fun b!1540938 () Bool)

(assert (=> b!1540938 (= e!986505 (inv!21723 (c!251728 (totalInput!2382 cacheFurthestNullable!81))))))

(declare-fun b!1540939 () Bool)

(declare-fun e!986506 () Bool)

(assert (=> b!1540939 (= e!986505 e!986506)))

(declare-fun res!690172 () Bool)

(assert (=> b!1540939 (= res!690172 (not ((_ is Leaf!8160) (c!251728 (totalInput!2382 cacheFurthestNullable!81)))))))

(assert (=> b!1540939 (=> res!690172 e!986506)))

(declare-fun b!1540940 () Bool)

(assert (=> b!1540940 (= e!986506 (inv!21724 (c!251728 (totalInput!2382 cacheFurthestNullable!81))))))

(assert (= (and d!458601 c!251738) b!1540938))

(assert (= (and d!458601 (not c!251738)) b!1540939))

(assert (= (and b!1540939 (not res!690172)) b!1540940))

(declare-fun m!1814778 () Bool)

(assert (=> b!1540938 m!1814778))

(declare-fun m!1814780 () Bool)

(assert (=> b!1540940 m!1814780))

(assert (=> b!1540831 d!458601))

(declare-fun d!458603 () Bool)

(declare-fun isBalanced!1632 (Conc!5507) Bool)

(assert (=> d!458603 (= (inv!21720 (totalInput!2382 cacheFurthestNullable!81)) (isBalanced!1632 (c!251728 (totalInput!2382 cacheFurthestNullable!81))))))

(declare-fun bs!382824 () Bool)

(assert (= bs!382824 d!458603))

(declare-fun m!1814782 () Bool)

(assert (=> bs!382824 m!1814782))

(assert (=> b!1540840 d!458603))

(declare-fun d!458605 () Bool)

(assert (=> d!458605 (= (isDefined!2391 lt!534415) (not (isEmpty!10029 lt!534415)))))

(declare-fun bs!382825 () Bool)

(assert (= bs!382825 d!458605))

(declare-fun m!1814784 () Bool)

(assert (=> bs!382825 m!1814784))

(assert (=> b!1540812 d!458605))

(declare-fun d!458607 () Bool)

(declare-fun res!690175 () Bool)

(declare-fun e!986509 () Bool)

(assert (=> d!458607 (=> (not res!690175) (not e!986509))))

(assert (=> d!458607 (= res!690175 ((_ is HashMap!1577) (cache!1958 cacheDown!708)))))

(assert (=> d!458607 (= (inv!21721 cacheDown!708) e!986509)))

(declare-fun b!1540943 () Bool)

(assert (=> b!1540943 (= e!986509 (validCacheMapDown!150 (cache!1958 cacheDown!708)))))

(assert (= (and d!458607 res!690175) b!1540943))

(assert (=> b!1540943 m!1814712))

(assert (=> start!143110 d!458607))

(declare-fun d!458609 () Bool)

(assert (=> d!458609 (= (inv!21720 input!1460) (isBalanced!1632 (c!251728 input!1460)))))

(declare-fun bs!382826 () Bool)

(assert (= bs!382826 d!458609))

(declare-fun m!1814786 () Bool)

(assert (=> bs!382826 m!1814786))

(assert (=> start!143110 d!458609))

(declare-fun d!458611 () Bool)

(declare-fun res!690178 () Bool)

(declare-fun e!986512 () Bool)

(assert (=> d!458611 (=> (not res!690178) (not e!986512))))

(assert (=> d!458611 (= res!690178 ((_ is HashMap!1576) (cache!1957 cacheUp!695)))))

(assert (=> d!458611 (= (inv!21719 cacheUp!695) e!986512)))

(declare-fun b!1540946 () Bool)

(declare-fun validCacheMapUp!150 (MutableMap!1576) Bool)

(assert (=> b!1540946 (= e!986512 (validCacheMapUp!150 (cache!1957 cacheUp!695)))))

(assert (= (and d!458611 res!690178) b!1540946))

(declare-fun m!1814788 () Bool)

(assert (=> b!1540946 m!1814788))

(assert (=> start!143110 d!458611))

(declare-fun d!458613 () Bool)

(assert (=> d!458613 (= (inv!21720 totalInput!496) (isBalanced!1632 (c!251728 totalInput!496)))))

(declare-fun bs!382827 () Bool)

(assert (= bs!382827 d!458613))

(declare-fun m!1814790 () Bool)

(assert (=> bs!382827 m!1814790))

(assert (=> start!143110 d!458613))

(declare-fun d!458615 () Bool)

(declare-fun res!690181 () Bool)

(declare-fun e!986515 () Bool)

(assert (=> d!458615 (=> (not res!690181) (not e!986515))))

(assert (=> d!458615 (= res!690181 ((_ is HashMap!1578) (cache!1959 cacheFurthestNullable!81)))))

(assert (=> d!458615 (= (inv!21722 cacheFurthestNullable!81) e!986515)))

(declare-fun b!1540949 () Bool)

(declare-fun validCacheMapFurthestNullable!63 (MutableMap!1578 BalanceConc!10956) Bool)

(assert (=> b!1540949 (= e!986515 (validCacheMapFurthestNullable!63 (cache!1959 cacheFurthestNullable!81) (totalInput!2382 cacheFurthestNullable!81)))))

(assert (= (and d!458615 res!690181) b!1540949))

(declare-fun m!1814792 () Bool)

(assert (=> b!1540949 m!1814792))

(assert (=> start!143110 d!458615))

(declare-fun d!458617 () Bool)

(assert (=> d!458617 (= (array_inv!1811 (_keys!1928 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) (bvsge (size!13298 (_keys!1928 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540850 d!458617))

(declare-fun d!458619 () Bool)

(assert (=> d!458619 (= (array_inv!1814 (_values!1913 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) (bvsge (size!13300 (_values!1913 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))) #b00000000000000000000000000000000))))

(assert (=> b!1540850 d!458619))

(declare-fun d!458621 () Bool)

(assert (=> d!458621 (= (list!6432 (_2!8983 lt!534417)) (list!6433 (c!251728 (_2!8983 lt!534417))))))

(declare-fun bs!382828 () Bool)

(assert (= bs!382828 d!458621))

(declare-fun m!1814794 () Bool)

(assert (=> bs!382828 m!1814794))

(assert (=> b!1540816 d!458621))

(declare-fun d!458623 () Bool)

(declare-fun lt!534485 () Option!2984)

(assert (=> d!458623 (= lt!534485 (maxPrefix!1220 thiss!15733 rulesArg!359 lt!534416))))

(declare-fun e!986518 () Option!2984)

(assert (=> d!458623 (= lt!534485 e!986518)))

(declare-fun c!251741 () Bool)

(assert (=> d!458623 (= c!251741 (and ((_ is Cons!16467) rulesArg!359) ((_ is Nil!16467) (t!140741 rulesArg!359))))))

(declare-fun lt!534486 () Unit!25889)

(declare-fun lt!534482 () Unit!25889)

(assert (=> d!458623 (= lt!534486 lt!534482)))

(assert (=> d!458623 (isPrefix!1249 lt!534416 lt!534416)))

(assert (=> d!458623 (= lt!534482 (lemmaIsPrefixRefl!879 lt!534416 lt!534416))))

(assert (=> d!458623 (rulesValidInductive!889 thiss!15733 rulesArg!359)))

(assert (=> d!458623 (= (maxPrefixZipper!275 thiss!15733 rulesArg!359 lt!534416) lt!534485)))

(declare-fun bm!101613 () Bool)

(declare-fun call!101618 () Option!2984)

(declare-fun maxPrefixOneRuleZipper!103 (LexerInterface!2540 Rule!5580 List!16531) Option!2984)

(assert (=> bm!101613 (= call!101618 (maxPrefixOneRuleZipper!103 thiss!15733 (h!21868 rulesArg!359) lt!534416))))

(declare-fun b!1540954 () Bool)

(assert (=> b!1540954 (= e!986518 call!101618)))

(declare-fun b!1540955 () Bool)

(declare-fun lt!534484 () Option!2984)

(declare-fun lt!534483 () Option!2984)

(assert (=> b!1540955 (= e!986518 (ite (and ((_ is None!2983) lt!534484) ((_ is None!2983) lt!534483)) None!2983 (ite ((_ is None!2983) lt!534483) lt!534484 (ite ((_ is None!2983) lt!534484) lt!534483 (ite (>= (size!13301 (_1!8986 (v!23283 lt!534484))) (size!13301 (_1!8986 (v!23283 lt!534483)))) lt!534484 lt!534483)))))))

(assert (=> b!1540955 (= lt!534484 call!101618)))

(assert (=> b!1540955 (= lt!534483 (maxPrefixZipper!275 thiss!15733 (t!140741 rulesArg!359) lt!534416))))

(assert (= (and d!458623 c!251741) b!1540954))

(assert (= (and d!458623 (not c!251741)) b!1540955))

(assert (= (or b!1540954 b!1540955) bm!101613))

(assert (=> d!458623 m!1814648))

(assert (=> d!458623 m!1814684))

(assert (=> d!458623 m!1814682))

(assert (=> d!458623 m!1814694))

(declare-fun m!1814796 () Bool)

(assert (=> bm!101613 m!1814796))

(declare-fun m!1814798 () Bool)

(assert (=> b!1540955 m!1814798))

(assert (=> b!1540825 d!458623))

(declare-fun d!458625 () Bool)

(declare-fun isEmpty!10030 (Option!2983) Bool)

(assert (=> d!458625 (= (isDefined!2392 (_1!8985 lt!534418)) (not (isEmpty!10030 (_1!8985 lt!534418))))))

(declare-fun bs!382829 () Bool)

(assert (= bs!382829 d!458625))

(declare-fun m!1814800 () Bool)

(assert (=> bs!382829 m!1814800))

(assert (=> b!1540825 d!458625))

(declare-fun d!458627 () Bool)

(assert (=> d!458627 (= (isDefined!2391 lt!534413) (not (isEmpty!10029 lt!534413)))))

(declare-fun bs!382830 () Bool)

(assert (= bs!382830 d!458627))

(declare-fun m!1814802 () Bool)

(assert (=> bs!382830 m!1814802))

(assert (=> b!1540825 d!458627))

(declare-fun d!458629 () Bool)

(assert (=> d!458629 (isPrefix!1249 lt!534416 lt!534416)))

(declare-fun lt!534489 () Unit!25889)

(declare-fun choose!9227 (List!16531 List!16531) Unit!25889)

(assert (=> d!458629 (= lt!534489 (choose!9227 lt!534416 lt!534416))))

(assert (=> d!458629 (= (lemmaIsPrefixRefl!879 lt!534416 lt!534416) lt!534489)))

(declare-fun bs!382831 () Bool)

(assert (= bs!382831 d!458629))

(assert (=> bs!382831 m!1814684))

(declare-fun m!1814804 () Bool)

(assert (=> bs!382831 m!1814804))

(assert (=> b!1540825 d!458629))

(declare-fun b!1540967 () Bool)

(declare-fun e!986527 () Bool)

(assert (=> b!1540967 (= e!986527 (>= (size!13302 lt!534416) (size!13302 lt!534416)))))

(declare-fun d!458631 () Bool)

(assert (=> d!458631 e!986527))

(declare-fun res!690193 () Bool)

(assert (=> d!458631 (=> res!690193 e!986527)))

(declare-fun lt!534492 () Bool)

(assert (=> d!458631 (= res!690193 (not lt!534492))))

(declare-fun e!986526 () Bool)

(assert (=> d!458631 (= lt!534492 e!986526)))

(declare-fun res!690191 () Bool)

(assert (=> d!458631 (=> res!690191 e!986526)))

(assert (=> d!458631 (= res!690191 ((_ is Nil!16463) lt!534416))))

(assert (=> d!458631 (= (isPrefix!1249 lt!534416 lt!534416) lt!534492)))

(declare-fun b!1540964 () Bool)

(declare-fun e!986525 () Bool)

(assert (=> b!1540964 (= e!986526 e!986525)))

(declare-fun res!690190 () Bool)

(assert (=> b!1540964 (=> (not res!690190) (not e!986525))))

(assert (=> b!1540964 (= res!690190 (not ((_ is Nil!16463) lt!534416)))))

(declare-fun b!1540965 () Bool)

(declare-fun res!690192 () Bool)

(assert (=> b!1540965 (=> (not res!690192) (not e!986525))))

(declare-fun head!3104 (List!16531) C!8608)

(assert (=> b!1540965 (= res!690192 (= (head!3104 lt!534416) (head!3104 lt!534416)))))

(declare-fun b!1540966 () Bool)

(declare-fun tail!2199 (List!16531) List!16531)

(assert (=> b!1540966 (= e!986525 (isPrefix!1249 (tail!2199 lt!534416) (tail!2199 lt!534416)))))

(assert (= (and d!458631 (not res!690191)) b!1540964))

(assert (= (and b!1540964 res!690190) b!1540965))

(assert (= (and b!1540965 res!690192) b!1540966))

(assert (= (and d!458631 (not res!690193)) b!1540967))

(assert (=> b!1540967 m!1814698))

(assert (=> b!1540967 m!1814698))

(declare-fun m!1814806 () Bool)

(assert (=> b!1540965 m!1814806))

(assert (=> b!1540965 m!1814806))

(declare-fun m!1814808 () Bool)

(assert (=> b!1540966 m!1814808))

(assert (=> b!1540966 m!1814808))

(assert (=> b!1540966 m!1814808))

(assert (=> b!1540966 m!1814808))

(declare-fun m!1814810 () Bool)

(assert (=> b!1540966 m!1814810))

(assert (=> b!1540825 d!458631))

(declare-fun d!458633 () Bool)

(assert (=> d!458633 (= (valid!1319 cacheUp!695) (validCacheMapUp!150 (cache!1957 cacheUp!695)))))

(declare-fun bs!382832 () Bool)

(assert (= bs!382832 d!458633))

(assert (=> bs!382832 m!1814788))

(assert (=> b!1540842 d!458633))

(declare-fun d!458635 () Bool)

(assert (=> d!458635 (= (valid!1320 cacheFurthestNullable!81) (validCacheMapFurthestNullable!63 (cache!1959 cacheFurthestNullable!81) (totalInput!2382 cacheFurthestNullable!81)))))

(declare-fun bs!382833 () Bool)

(assert (= bs!382833 d!458635))

(assert (=> bs!382833 m!1814792))

(assert (=> b!1540844 d!458635))

(declare-fun d!458637 () Bool)

(declare-fun c!251742 () Bool)

(assert (=> d!458637 (= c!251742 ((_ is Node!5507) (c!251728 totalInput!496)))))

(declare-fun e!986528 () Bool)

(assert (=> d!458637 (= (inv!21718 (c!251728 totalInput!496)) e!986528)))

(declare-fun b!1540968 () Bool)

(assert (=> b!1540968 (= e!986528 (inv!21723 (c!251728 totalInput!496)))))

(declare-fun b!1540969 () Bool)

(declare-fun e!986529 () Bool)

(assert (=> b!1540969 (= e!986528 e!986529)))

(declare-fun res!690194 () Bool)

(assert (=> b!1540969 (= res!690194 (not ((_ is Leaf!8160) (c!251728 totalInput!496))))))

(assert (=> b!1540969 (=> res!690194 e!986529)))

(declare-fun b!1540970 () Bool)

(assert (=> b!1540970 (= e!986529 (inv!21724 (c!251728 totalInput!496)))))

(assert (= (and d!458637 c!251742) b!1540968))

(assert (= (and d!458637 (not c!251742)) b!1540969))

(assert (= (and b!1540969 (not res!690194)) b!1540970))

(declare-fun m!1814812 () Bool)

(assert (=> b!1540968 m!1814812))

(declare-fun m!1814814 () Bool)

(assert (=> b!1540970 m!1814814))

(assert (=> b!1540845 d!458637))

(declare-fun d!458639 () Bool)

(assert (=> d!458639 (= (get!4799 lt!534413) (v!23283 lt!534413))))

(assert (=> b!1540835 d!458639))

(assert (=> b!1540835 d!458587))

(declare-fun b!1541008 () Bool)

(declare-fun e!986550 () Bool)

(assert (=> b!1541008 (= e!986550 true)))

(declare-fun b!1541007 () Bool)

(declare-fun e!986549 () Bool)

(assert (=> b!1541007 (= e!986549 e!986550)))

(declare-fun b!1541000 () Bool)

(assert (=> b!1541000 e!986549))

(assert (= b!1541007 b!1541008))

(assert (= b!1541000 b!1541007))

(declare-fun order!9617 () Int)

(declare-fun order!9619 () Int)

(declare-fun lambda!65276 () Int)

(declare-fun dynLambda!7294 (Int Int) Int)

(declare-fun dynLambda!7295 (Int Int) Int)

(assert (=> b!1541008 (< (dynLambda!7294 order!9617 (toValue!4251 (transformation!2890 (h!21868 rulesArg!359)))) (dynLambda!7295 order!9619 lambda!65276))))

(declare-fun order!9621 () Int)

(declare-fun dynLambda!7296 (Int Int) Int)

(assert (=> b!1541008 (< (dynLambda!7296 order!9621 (toChars!4110 (transformation!2890 (h!21868 rulesArg!359)))) (dynLambda!7295 order!9619 lambda!65276))))

(declare-fun b!1540991 () Bool)

(declare-fun e!986541 () Option!2983)

(assert (=> b!1540991 (= e!986541 None!2982)))

(declare-fun b!1540992 () Bool)

(declare-fun res!690215 () Bool)

(declare-fun e!986542 () Bool)

(assert (=> b!1540992 (=> (not res!690215) (not e!986542))))

(declare-fun e!986543 () Bool)

(assert (=> b!1540992 (= res!690215 e!986543)))

(declare-fun res!690214 () Bool)

(assert (=> b!1540992 (=> res!690214 e!986543)))

(declare-fun lt!534519 () tuple4!802)

(assert (=> b!1540992 (= res!690214 (not (isDefined!2392 (_1!8984 lt!534519))))))

(declare-fun b!1540993 () Bool)

(assert (=> b!1540993 (= e!986542 (= (totalInput!2382 (_4!401 lt!534519)) totalInput!496))))

(declare-fun b!1540995 () Bool)

(declare-fun res!690211 () Bool)

(assert (=> b!1540995 (=> (not res!690211) (not e!986542))))

(assert (=> b!1540995 (= res!690211 (valid!1319 (_2!8984 lt!534519)))))

(declare-fun b!1540996 () Bool)

(declare-fun res!690217 () Bool)

(assert (=> b!1540996 (=> (not res!690217) (not e!986542))))

(assert (=> b!1540996 (= res!690217 (valid!1320 (_4!401 lt!534519)))))

(declare-fun b!1540997 () Bool)

(declare-fun e!986544 () Bool)

(assert (=> b!1540997 (= e!986543 e!986544)))

(declare-fun res!690212 () Bool)

(assert (=> b!1540997 (=> (not res!690212) (not e!986544))))

(assert (=> b!1540997 (= res!690212 (= (_1!8983 (get!4798 (_1!8984 lt!534519))) (_1!8986 (get!4799 (maxPrefixOneRule!678 thiss!15733 (h!21868 rulesArg!359) (list!6432 input!1460))))))))

(declare-fun b!1540998 () Bool)

(assert (=> b!1540998 (= e!986544 (= (list!6432 (_2!8983 (get!4798 (_1!8984 lt!534519)))) (_2!8986 (get!4799 (maxPrefixOneRule!678 thiss!15733 (h!21868 rulesArg!359) (list!6432 input!1460))))))))

(declare-fun b!1540999 () Bool)

(declare-fun e!986540 () Bool)

(declare-fun lt!534522 () List!16531)

(declare-datatypes ((tuple2!15598 0))(
  ( (tuple2!15599 (_1!8988 List!16531) (_2!8988 List!16531)) )
))
(declare-fun findLongestMatchInner!305 (Regex!4215 List!16531 Int List!16531 List!16531 Int) tuple2!15598)

(assert (=> b!1540999 (= e!986540 (matchR!1848 (regex!2890 (h!21868 rulesArg!359)) (_1!8988 (findLongestMatchInner!305 (regex!2890 (h!21868 rulesArg!359)) Nil!16463 (size!13302 Nil!16463) lt!534522 lt!534522 (size!13302 lt!534522)))))))

(declare-datatypes ((tuple2!15600 0))(
  ( (tuple2!15601 (_1!8989 BalanceConc!10956) (_2!8989 BalanceConc!10956)) )
))
(declare-datatypes ((tuple4!806 0))(
  ( (tuple4!807 (_1!8990 tuple2!15600) (_2!8990 CacheUp!948) (_3!1189 CacheDown!956) (_4!403 CacheFurthestNullable!376)) )
))
(declare-fun lt!534521 () tuple4!806)

(declare-fun size!13303 (BalanceConc!10956) Int)

(assert (=> b!1541000 (= e!986541 (Some!2982 (tuple2!15593 (Token!5419 (apply!4083 (transformation!2890 (h!21868 rulesArg!359)) (_1!8989 (_1!8990 lt!534521))) (h!21868 rulesArg!359) (size!13303 (_1!8989 (_1!8990 lt!534521))) (list!6432 (_1!8989 (_1!8990 lt!534521)))) (_2!8989 (_1!8990 lt!534521)))))))

(assert (=> b!1541000 (= lt!534522 (list!6432 input!1460))))

(declare-fun lt!534518 () Unit!25889)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!289 (Regex!4215 List!16531) Unit!25889)

(assert (=> b!1541000 (= lt!534518 (longestMatchIsAcceptedByMatchOrIsEmpty!289 (regex!2890 (h!21868 rulesArg!359)) lt!534522))))

(declare-fun res!690216 () Bool)

(declare-fun isEmpty!10031 (List!16531) Bool)

(assert (=> b!1541000 (= res!690216 (isEmpty!10031 (_1!8988 (findLongestMatchInner!305 (regex!2890 (h!21868 rulesArg!359)) Nil!16463 (size!13302 Nil!16463) lt!534522 lt!534522 (size!13302 lt!534522)))))))

(assert (=> b!1541000 (=> res!690216 e!986540)))

(assert (=> b!1541000 e!986540))

(declare-fun lt!534520 () Unit!25889)

(assert (=> b!1541000 (= lt!534520 lt!534518)))

(declare-fun lt!534513 () Unit!25889)

(declare-fun lemmaInv!399 (TokenValueInjection!5620) Unit!25889)

(assert (=> b!1541000 (= lt!534513 (lemmaInv!399 (transformation!2890 (h!21868 rulesArg!359))))))

(declare-fun lt!534517 () Unit!25889)

(declare-fun ForallOf!182 (Int BalanceConc!10956) Unit!25889)

(assert (=> b!1541000 (= lt!534517 (ForallOf!182 lambda!65276 (_1!8989 (_1!8990 lt!534521))))))

(declare-fun lt!534514 () Unit!25889)

(assert (=> b!1541000 (= lt!534514 (ForallOf!182 lambda!65276 (seqFromList!1745 (list!6432 (_1!8989 (_1!8990 lt!534521))))))))

(declare-fun lt!534515 () Option!2983)

(assert (=> b!1541000 (= lt!534515 (Some!2982 (tuple2!15593 (Token!5419 (apply!4083 (transformation!2890 (h!21868 rulesArg!359)) (_1!8989 (_1!8990 lt!534521))) (h!21868 rulesArg!359) (size!13303 (_1!8989 (_1!8990 lt!534521))) (list!6432 (_1!8989 (_1!8990 lt!534521)))) (_2!8989 (_1!8990 lt!534521)))))))

(declare-fun lt!534516 () Unit!25889)

(declare-fun lemmaEqSameImage!132 (TokenValueInjection!5620 BalanceConc!10956 BalanceConc!10956) Unit!25889)

(assert (=> b!1541000 (= lt!534516 (lemmaEqSameImage!132 (transformation!2890 (h!21868 rulesArg!359)) (_1!8989 (_1!8990 lt!534521)) (seqFromList!1745 (list!6432 (_1!8989 (_1!8990 lt!534521))))))))

(declare-fun d!458641 () Bool)

(assert (=> d!458641 e!986542))

(declare-fun res!690218 () Bool)

(assert (=> d!458641 (=> (not res!690218) (not e!986542))))

(assert (=> d!458641 (= res!690218 (= (isDefined!2392 (_1!8984 lt!534519)) (isDefined!2391 (maxPrefixOneRule!678 thiss!15733 (h!21868 rulesArg!359) (list!6432 input!1460)))))))

(assert (=> d!458641 (= lt!534519 (tuple4!803 e!986541 (_2!8990 lt!534521) (_3!1189 lt!534521) (_4!403 lt!534521)))))

(declare-fun c!251745 () Bool)

(declare-fun isEmpty!10032 (BalanceConc!10956) Bool)

(assert (=> d!458641 (= c!251745 (isEmpty!10032 (_1!8989 (_1!8990 lt!534521))))))

(declare-fun findLongestMatchWithZipperSequenceV3Mem!15 (Regex!4215 BalanceConc!10956 BalanceConc!10956 CacheUp!948 CacheDown!956 CacheFurthestNullable!376) tuple4!806)

(assert (=> d!458641 (= lt!534521 (findLongestMatchWithZipperSequenceV3Mem!15 (regex!2890 (h!21868 rulesArg!359)) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(assert (=> d!458641 (ruleValid!650 thiss!15733 (h!21868 rulesArg!359))))

(assert (=> d!458641 (= (maxPrefixOneRuleZipperSequenceV3Mem!35 thiss!15733 (h!21868 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81) lt!534519)))

(declare-fun b!1540994 () Bool)

(declare-fun res!690213 () Bool)

(assert (=> b!1540994 (=> (not res!690213) (not e!986542))))

(assert (=> b!1540994 (= res!690213 (valid!1318 (_3!1187 lt!534519)))))

(assert (= (and d!458641 c!251745) b!1540991))

(assert (= (and d!458641 (not c!251745)) b!1541000))

(assert (= (and b!1541000 (not res!690216)) b!1540999))

(assert (= (and d!458641 res!690218) b!1540992))

(assert (= (and b!1540992 (not res!690214)) b!1540997))

(assert (= (and b!1540997 res!690212) b!1540998))

(assert (= (and b!1540992 res!690215) b!1540995))

(assert (= (and b!1540995 res!690211) b!1540994))

(assert (= (and b!1540994 res!690213) b!1540996))

(assert (= (and b!1540996 res!690217) b!1540993))

(declare-fun m!1814816 () Bool)

(assert (=> b!1540997 m!1814816))

(assert (=> b!1540997 m!1814632))

(assert (=> b!1540997 m!1814632))

(declare-fun m!1814818 () Bool)

(assert (=> b!1540997 m!1814818))

(assert (=> b!1540997 m!1814818))

(declare-fun m!1814820 () Bool)

(assert (=> b!1540997 m!1814820))

(declare-fun m!1814822 () Bool)

(assert (=> b!1540996 m!1814822))

(assert (=> d!458641 m!1814632))

(assert (=> d!458641 m!1814818))

(assert (=> d!458641 m!1814632))

(declare-fun m!1814824 () Bool)

(assert (=> d!458641 m!1814824))

(assert (=> d!458641 m!1814708))

(declare-fun m!1814826 () Bool)

(assert (=> d!458641 m!1814826))

(assert (=> d!458641 m!1814818))

(declare-fun m!1814828 () Bool)

(assert (=> d!458641 m!1814828))

(declare-fun m!1814830 () Bool)

(assert (=> d!458641 m!1814830))

(assert (=> b!1540998 m!1814632))

(assert (=> b!1540998 m!1814818))

(assert (=> b!1540998 m!1814816))

(assert (=> b!1540998 m!1814818))

(assert (=> b!1540998 m!1814820))

(declare-fun m!1814832 () Bool)

(assert (=> b!1540998 m!1814832))

(assert (=> b!1540998 m!1814632))

(declare-fun m!1814834 () Bool)

(assert (=> b!1540999 m!1814834))

(declare-fun m!1814836 () Bool)

(assert (=> b!1540999 m!1814836))

(assert (=> b!1540999 m!1814834))

(assert (=> b!1540999 m!1814836))

(declare-fun m!1814838 () Bool)

(assert (=> b!1540999 m!1814838))

(declare-fun m!1814840 () Bool)

(assert (=> b!1540999 m!1814840))

(declare-fun m!1814842 () Bool)

(assert (=> b!1540994 m!1814842))

(declare-fun m!1814844 () Bool)

(assert (=> b!1541000 m!1814844))

(declare-fun m!1814846 () Bool)

(assert (=> b!1541000 m!1814846))

(assert (=> b!1541000 m!1814834))

(assert (=> b!1541000 m!1814836))

(assert (=> b!1541000 m!1814838))

(declare-fun m!1814848 () Bool)

(assert (=> b!1541000 m!1814848))

(declare-fun m!1814850 () Bool)

(assert (=> b!1541000 m!1814850))

(declare-fun m!1814852 () Bool)

(assert (=> b!1541000 m!1814852))

(declare-fun m!1814854 () Bool)

(assert (=> b!1541000 m!1814854))

(declare-fun m!1814856 () Bool)

(assert (=> b!1541000 m!1814856))

(assert (=> b!1541000 m!1814850))

(declare-fun m!1814858 () Bool)

(assert (=> b!1541000 m!1814858))

(assert (=> b!1541000 m!1814834))

(declare-fun m!1814860 () Bool)

(assert (=> b!1541000 m!1814860))

(assert (=> b!1541000 m!1814850))

(declare-fun m!1814862 () Bool)

(assert (=> b!1541000 m!1814862))

(assert (=> b!1541000 m!1814836))

(assert (=> b!1541000 m!1814860))

(assert (=> b!1541000 m!1814632))

(assert (=> b!1540992 m!1814824))

(declare-fun m!1814864 () Bool)

(assert (=> b!1540995 m!1814864))

(assert (=> bm!101604 d!458641))

(declare-fun setIsEmpty!10200 () Bool)

(declare-fun setRes!10200 () Bool)

(assert (=> setIsEmpty!10200 setRes!10200))

(declare-fun b!1541017 () Bool)

(declare-fun e!986558 () Bool)

(declare-fun tp!446521 () Bool)

(assert (=> b!1541017 (= e!986558 tp!446521)))

(declare-fun setElem!10200 () Context!1466)

(declare-fun e!986557 () Bool)

(declare-fun setNonEmpty!10200 () Bool)

(declare-fun tp!446525 () Bool)

(declare-fun inv!21725 (Context!1466) Bool)

(assert (=> setNonEmpty!10200 (= setRes!10200 (and tp!446525 (inv!21725 setElem!10200) e!986557))))

(declare-fun setRest!10200 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10200 (= (_2!8980 (h!21865 (zeroValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10200 true) setRest!10200))))

(declare-fun b!1541018 () Bool)

(declare-fun tp!446523 () Bool)

(declare-fun tp_is_empty!7045 () Bool)

(declare-fun tp!446522 () Bool)

(declare-fun e!986559 () Bool)

(assert (=> b!1541018 (= e!986559 (and tp!446523 (inv!21725 (_2!8979 (_1!8980 (h!21865 (zeroValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))))) e!986558 tp_is_empty!7045 setRes!10200 tp!446522))))

(declare-fun condSetEmpty!10200 () Bool)

(assert (=> b!1541018 (= condSetEmpty!10200 (= (_2!8980 (h!21865 (zeroValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))) ((as const (Array Context!1466 Bool)) false)))))

(assert (=> b!1540829 (= tp!446505 e!986559)))

(declare-fun b!1541019 () Bool)

(declare-fun tp!446524 () Bool)

(assert (=> b!1541019 (= e!986557 tp!446524)))

(assert (= b!1541018 b!1541017))

(assert (= (and b!1541018 condSetEmpty!10200) setIsEmpty!10200))

(assert (= (and b!1541018 (not condSetEmpty!10200)) setNonEmpty!10200))

(assert (= setNonEmpty!10200 b!1541019))

(assert (= (and b!1540829 ((_ is Cons!16464) (zeroValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))) b!1541018))

(declare-fun m!1814866 () Bool)

(assert (=> setNonEmpty!10200 m!1814866))

(declare-fun m!1814868 () Bool)

(assert (=> b!1541018 m!1814868))

(declare-fun setIsEmpty!10201 () Bool)

(declare-fun setRes!10201 () Bool)

(assert (=> setIsEmpty!10201 setRes!10201))

(declare-fun b!1541020 () Bool)

(declare-fun e!986561 () Bool)

(declare-fun tp!446526 () Bool)

(assert (=> b!1541020 (= e!986561 tp!446526)))

(declare-fun tp!446530 () Bool)

(declare-fun e!986560 () Bool)

(declare-fun setElem!10201 () Context!1466)

(declare-fun setNonEmpty!10201 () Bool)

(assert (=> setNonEmpty!10201 (= setRes!10201 (and tp!446530 (inv!21725 setElem!10201) e!986560))))

(declare-fun setRest!10201 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10201 (= (_2!8980 (h!21865 (minValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10201 true) setRest!10201))))

(declare-fun b!1541021 () Bool)

(declare-fun e!986562 () Bool)

(declare-fun tp!446527 () Bool)

(declare-fun tp!446528 () Bool)

(assert (=> b!1541021 (= e!986562 (and tp!446528 (inv!21725 (_2!8979 (_1!8980 (h!21865 (minValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))))) e!986561 tp_is_empty!7045 setRes!10201 tp!446527))))

(declare-fun condSetEmpty!10201 () Bool)

(assert (=> b!1541021 (= condSetEmpty!10201 (= (_2!8980 (h!21865 (minValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))) ((as const (Array Context!1466 Bool)) false)))))

(assert (=> b!1540829 (= tp!446503 e!986562)))

(declare-fun b!1541022 () Bool)

(declare-fun tp!446529 () Bool)

(assert (=> b!1541022 (= e!986560 tp!446529)))

(assert (= b!1541021 b!1541020))

(assert (= (and b!1541021 condSetEmpty!10201) setIsEmpty!10201))

(assert (= (and b!1541021 (not condSetEmpty!10201)) setNonEmpty!10201))

(assert (= setNonEmpty!10201 b!1541022))

(assert (= (and b!1540829 ((_ is Cons!16464) (minValue!1890 (v!23278 (underlying!3475 (v!23279 (underlying!3476 (cache!1958 cacheDown!708)))))))) b!1541021))

(declare-fun m!1814870 () Bool)

(assert (=> setNonEmpty!10201 m!1814870))

(declare-fun m!1814872 () Bool)

(assert (=> b!1541021 m!1814872))

(declare-fun setRes!10204 () Bool)

(declare-fun e!986570 () Bool)

(declare-fun b!1541031 () Bool)

(declare-fun tp!446539 () Bool)

(declare-fun e!986569 () Bool)

(assert (=> b!1541031 (= e!986569 (and (inv!21725 (_1!8977 (_1!8978 (h!21863 (zeroValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))))) e!986570 tp_is_empty!7045 setRes!10204 tp!446539))))

(declare-fun condSetEmpty!10204 () Bool)

(assert (=> b!1541031 (= condSetEmpty!10204 (= (_2!8978 (h!21863 (zeroValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setIsEmpty!10204 () Bool)

(assert (=> setIsEmpty!10204 setRes!10204))

(declare-fun e!986571 () Bool)

(declare-fun setNonEmpty!10204 () Bool)

(declare-fun setElem!10204 () Context!1466)

(declare-fun tp!446540 () Bool)

(assert (=> setNonEmpty!10204 (= setRes!10204 (and tp!446540 (inv!21725 setElem!10204) e!986571))))

(declare-fun setRest!10204 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10204 (= (_2!8978 (h!21863 (zeroValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10204 true) setRest!10204))))

(declare-fun b!1541033 () Bool)

(declare-fun tp!446541 () Bool)

(assert (=> b!1541033 (= e!986570 tp!446541)))

(assert (=> b!1540811 (= tp!446491 e!986569)))

(declare-fun b!1541032 () Bool)

(declare-fun tp!446542 () Bool)

(assert (=> b!1541032 (= e!986571 tp!446542)))

(assert (= b!1541031 b!1541033))

(assert (= (and b!1541031 condSetEmpty!10204) setIsEmpty!10204))

(assert (= (and b!1541031 (not condSetEmpty!10204)) setNonEmpty!10204))

(assert (= setNonEmpty!10204 b!1541032))

(assert (= (and b!1540811 ((_ is Cons!16462) (zeroValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))) b!1541031))

(declare-fun m!1814874 () Bool)

(assert (=> b!1541031 m!1814874))

(declare-fun m!1814876 () Bool)

(assert (=> setNonEmpty!10204 m!1814876))

(declare-fun setRes!10205 () Bool)

(declare-fun e!986573 () Bool)

(declare-fun e!986572 () Bool)

(declare-fun b!1541034 () Bool)

(declare-fun tp!446543 () Bool)

(assert (=> b!1541034 (= e!986572 (and (inv!21725 (_1!8977 (_1!8978 (h!21863 (minValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))))) e!986573 tp_is_empty!7045 setRes!10205 tp!446543))))

(declare-fun condSetEmpty!10205 () Bool)

(assert (=> b!1541034 (= condSetEmpty!10205 (= (_2!8978 (h!21863 (minValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setIsEmpty!10205 () Bool)

(assert (=> setIsEmpty!10205 setRes!10205))

(declare-fun setElem!10205 () Context!1466)

(declare-fun setNonEmpty!10205 () Bool)

(declare-fun e!986574 () Bool)

(declare-fun tp!446544 () Bool)

(assert (=> setNonEmpty!10205 (= setRes!10205 (and tp!446544 (inv!21725 setElem!10205) e!986574))))

(declare-fun setRest!10205 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10205 (= (_2!8978 (h!21863 (minValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10205 true) setRest!10205))))

(declare-fun b!1541036 () Bool)

(declare-fun tp!446545 () Bool)

(assert (=> b!1541036 (= e!986573 tp!446545)))

(assert (=> b!1540811 (= tp!446504 e!986572)))

(declare-fun b!1541035 () Bool)

(declare-fun tp!446546 () Bool)

(assert (=> b!1541035 (= e!986574 tp!446546)))

(assert (= b!1541034 b!1541036))

(assert (= (and b!1541034 condSetEmpty!10205) setIsEmpty!10205))

(assert (= (and b!1541034 (not condSetEmpty!10205)) setNonEmpty!10205))

(assert (= setNonEmpty!10205 b!1541035))

(assert (= (and b!1540811 ((_ is Cons!16462) (minValue!1889 (v!23276 (underlying!3473 (v!23277 (underlying!3474 (cache!1957 cacheUp!695)))))))) b!1541034))

(declare-fun m!1814878 () Bool)

(assert (=> b!1541034 m!1814878))

(declare-fun m!1814880 () Bool)

(assert (=> setNonEmpty!10205 m!1814880))

(declare-fun e!986579 () Bool)

(declare-fun b!1541045 () Bool)

(declare-fun tp!446555 () Bool)

(declare-fun tp!446553 () Bool)

(assert (=> b!1541045 (= e!986579 (and (inv!21718 (left!13485 (c!251728 input!1460))) tp!446553 (inv!21718 (right!13815 (c!251728 input!1460))) tp!446555))))

(declare-fun b!1541047 () Bool)

(declare-fun e!986580 () Bool)

(declare-fun tp!446554 () Bool)

(assert (=> b!1541047 (= e!986580 tp!446554)))

(declare-fun b!1541046 () Bool)

(declare-fun inv!21726 (IArray!11019) Bool)

(assert (=> b!1541046 (= e!986579 (and (inv!21726 (xs!8307 (c!251728 input!1460))) e!986580))))

(assert (=> b!1540828 (= tp!446485 (and (inv!21718 (c!251728 input!1460)) e!986579))))

(assert (= (and b!1540828 ((_ is Node!5507) (c!251728 input!1460))) b!1541045))

(assert (= b!1541046 b!1541047))

(assert (= (and b!1540828 ((_ is Leaf!8160) (c!251728 input!1460))) b!1541046))

(declare-fun m!1814882 () Bool)

(assert (=> b!1541045 m!1814882))

(declare-fun m!1814884 () Bool)

(assert (=> b!1541045 m!1814884))

(declare-fun m!1814886 () Bool)

(assert (=> b!1541046 m!1814886))

(assert (=> b!1540828 m!1814662))

(declare-fun b!1541058 () Bool)

(declare-fun b_free!40331 () Bool)

(declare-fun b_next!41035 () Bool)

(assert (=> b!1541058 (= b_free!40331 (not b_next!41035))))

(declare-fun tp!446565 () Bool)

(declare-fun b_and!107209 () Bool)

(assert (=> b!1541058 (= tp!446565 b_and!107209)))

(declare-fun b_free!40333 () Bool)

(declare-fun b_next!41037 () Bool)

(assert (=> b!1541058 (= b_free!40333 (not b_next!41037))))

(declare-fun tp!446566 () Bool)

(declare-fun b_and!107211 () Bool)

(assert (=> b!1541058 (= tp!446566 b_and!107211)))

(declare-fun e!986589 () Bool)

(assert (=> b!1541058 (= e!986589 (and tp!446565 tp!446566))))

(declare-fun tp!446567 () Bool)

(declare-fun e!986592 () Bool)

(declare-fun b!1541057 () Bool)

(assert (=> b!1541057 (= e!986592 (and tp!446567 (inv!21716 (tag!3154 (h!21868 (t!140741 rulesArg!359)))) (inv!21717 (transformation!2890 (h!21868 (t!140741 rulesArg!359)))) e!986589))))

(declare-fun b!1541056 () Bool)

(declare-fun e!986591 () Bool)

(declare-fun tp!446564 () Bool)

(assert (=> b!1541056 (= e!986591 (and e!986592 tp!446564))))

(assert (=> b!1540851 (= tp!446495 e!986591)))

(assert (= b!1541057 b!1541058))

(assert (= b!1541056 b!1541057))

(assert (= (and b!1540851 ((_ is Cons!16467) (t!140741 rulesArg!359))) b!1541056))

(declare-fun m!1814888 () Bool)

(assert (=> b!1541057 m!1814888))

(declare-fun m!1814890 () Bool)

(assert (=> b!1541057 m!1814890))

(declare-fun b!1541069 () Bool)

(declare-fun e!986595 () Bool)

(assert (=> b!1541069 (= e!986595 tp_is_empty!7045)))

(declare-fun b!1541071 () Bool)

(declare-fun tp!446582 () Bool)

(assert (=> b!1541071 (= e!986595 tp!446582)))

(declare-fun b!1541070 () Bool)

(declare-fun tp!446579 () Bool)

(declare-fun tp!446581 () Bool)

(assert (=> b!1541070 (= e!986595 (and tp!446579 tp!446581))))

(declare-fun b!1541072 () Bool)

(declare-fun tp!446578 () Bool)

(declare-fun tp!446580 () Bool)

(assert (=> b!1541072 (= e!986595 (and tp!446578 tp!446580))))

(assert (=> b!1540814 (= tp!446507 e!986595)))

(assert (= (and b!1540814 ((_ is ElementMatch!4215) (regex!2890 (h!21868 rulesArg!359)))) b!1541069))

(assert (= (and b!1540814 ((_ is Concat!7195) (regex!2890 (h!21868 rulesArg!359)))) b!1541070))

(assert (= (and b!1540814 ((_ is Star!4215) (regex!2890 (h!21868 rulesArg!359)))) b!1541071))

(assert (= (and b!1540814 ((_ is Union!4215) (regex!2890 (h!21868 rulesArg!359)))) b!1541072))

(declare-fun b!1541073 () Bool)

(declare-fun tp!446585 () Bool)

(declare-fun tp!446583 () Bool)

(declare-fun e!986596 () Bool)

(assert (=> b!1541073 (= e!986596 (and (inv!21718 (left!13485 (c!251728 (totalInput!2382 cacheFurthestNullable!81)))) tp!446583 (inv!21718 (right!13815 (c!251728 (totalInput!2382 cacheFurthestNullable!81)))) tp!446585))))

(declare-fun b!1541075 () Bool)

(declare-fun e!986597 () Bool)

(declare-fun tp!446584 () Bool)

(assert (=> b!1541075 (= e!986597 tp!446584)))

(declare-fun b!1541074 () Bool)

(assert (=> b!1541074 (= e!986596 (and (inv!21726 (xs!8307 (c!251728 (totalInput!2382 cacheFurthestNullable!81)))) e!986597))))

(assert (=> b!1540831 (= tp!446510 (and (inv!21718 (c!251728 (totalInput!2382 cacheFurthestNullable!81))) e!986596))))

(assert (= (and b!1540831 ((_ is Node!5507) (c!251728 (totalInput!2382 cacheFurthestNullable!81)))) b!1541073))

(assert (= b!1541074 b!1541075))

(assert (= (and b!1540831 ((_ is Leaf!8160) (c!251728 (totalInput!2382 cacheFurthestNullable!81)))) b!1541074))

(declare-fun m!1814892 () Bool)

(assert (=> b!1541073 m!1814892))

(declare-fun m!1814894 () Bool)

(assert (=> b!1541073 m!1814894))

(declare-fun m!1814896 () Bool)

(assert (=> b!1541074 m!1814896))

(assert (=> b!1540831 m!1814678))

(declare-fun b!1541090 () Bool)

(declare-fun e!986615 () Bool)

(declare-fun tp!446615 () Bool)

(assert (=> b!1541090 (= e!986615 tp!446615)))

(declare-fun mapNonEmpty!7676 () Bool)

(declare-fun mapRes!7676 () Bool)

(declare-fun tp!446616 () Bool)

(declare-fun e!986612 () Bool)

(assert (=> mapNonEmpty!7676 (= mapRes!7676 (and tp!446616 e!986612))))

(declare-fun mapValue!7676 () List!16532)

(declare-fun mapRest!7676 () (Array (_ BitVec 32) List!16532))

(declare-fun mapKey!7676 () (_ BitVec 32))

(assert (=> mapNonEmpty!7676 (= mapRest!7671 (store mapRest!7676 mapKey!7676 mapValue!7676))))

(declare-fun setIsEmpty!10210 () Bool)

(declare-fun setRes!10210 () Bool)

(assert (=> setIsEmpty!10210 setRes!10210))

(declare-fun b!1541091 () Bool)

(declare-fun e!986614 () Bool)

(declare-fun tp!446608 () Bool)

(assert (=> b!1541091 (= e!986614 tp!446608)))

(declare-fun condMapEmpty!7676 () Bool)

(declare-fun mapDefault!7676 () List!16532)

(assert (=> mapNonEmpty!7673 (= condMapEmpty!7676 (= mapRest!7671 ((as const (Array (_ BitVec 32) List!16532)) mapDefault!7676)))))

(declare-fun e!986611 () Bool)

(assert (=> mapNonEmpty!7673 (= tp!446506 (and e!986611 mapRes!7676))))

(declare-fun b!1541092 () Bool)

(declare-fun e!986610 () Bool)

(declare-fun tp!446613 () Bool)

(assert (=> b!1541092 (= e!986610 tp!446613)))

(declare-fun b!1541093 () Bool)

(declare-fun e!986613 () Bool)

(declare-fun tp!446612 () Bool)

(assert (=> b!1541093 (= e!986613 tp!446612)))

(declare-fun b!1541094 () Bool)

(declare-fun tp!446609 () Bool)

(declare-fun tp!446618 () Bool)

(assert (=> b!1541094 (= e!986612 (and tp!446609 (inv!21725 (_2!8979 (_1!8980 (h!21865 mapValue!7676)))) e!986614 tp_is_empty!7045 setRes!10210 tp!446618))))

(declare-fun condSetEmpty!10210 () Bool)

(assert (=> b!1541094 (= condSetEmpty!10210 (= (_2!8980 (h!21865 mapValue!7676)) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setRes!10211 () Bool)

(declare-fun b!1541095 () Bool)

(declare-fun tp!446614 () Bool)

(declare-fun tp!446610 () Bool)

(assert (=> b!1541095 (= e!986611 (and tp!446614 (inv!21725 (_2!8979 (_1!8980 (h!21865 mapDefault!7676)))) e!986610 tp_is_empty!7045 setRes!10211 tp!446610))))

(declare-fun condSetEmpty!10211 () Bool)

(assert (=> b!1541095 (= condSetEmpty!10211 (= (_2!8980 (h!21865 mapDefault!7676)) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setElem!10211 () Context!1466)

(declare-fun tp!446611 () Bool)

(declare-fun setNonEmpty!10210 () Bool)

(assert (=> setNonEmpty!10210 (= setRes!10210 (and tp!446611 (inv!21725 setElem!10211) e!986613))))

(declare-fun setRest!10210 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10210 (= (_2!8980 (h!21865 mapValue!7676)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10211 true) setRest!10210))))

(declare-fun setIsEmpty!10211 () Bool)

(assert (=> setIsEmpty!10211 setRes!10211))

(declare-fun mapIsEmpty!7676 () Bool)

(assert (=> mapIsEmpty!7676 mapRes!7676))

(declare-fun tp!446617 () Bool)

(declare-fun setNonEmpty!10211 () Bool)

(declare-fun setElem!10210 () Context!1466)

(assert (=> setNonEmpty!10211 (= setRes!10211 (and tp!446617 (inv!21725 setElem!10210) e!986615))))

(declare-fun setRest!10211 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10211 (= (_2!8980 (h!21865 mapDefault!7676)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10210 true) setRest!10211))))

(assert (= (and mapNonEmpty!7673 condMapEmpty!7676) mapIsEmpty!7676))

(assert (= (and mapNonEmpty!7673 (not condMapEmpty!7676)) mapNonEmpty!7676))

(assert (= b!1541094 b!1541091))

(assert (= (and b!1541094 condSetEmpty!10210) setIsEmpty!10210))

(assert (= (and b!1541094 (not condSetEmpty!10210)) setNonEmpty!10210))

(assert (= setNonEmpty!10210 b!1541093))

(assert (= (and mapNonEmpty!7676 ((_ is Cons!16464) mapValue!7676)) b!1541094))

(assert (= b!1541095 b!1541092))

(assert (= (and b!1541095 condSetEmpty!10211) setIsEmpty!10211))

(assert (= (and b!1541095 (not condSetEmpty!10211)) setNonEmpty!10211))

(assert (= setNonEmpty!10211 b!1541090))

(assert (= (and mapNonEmpty!7673 ((_ is Cons!16464) mapDefault!7676)) b!1541095))

(declare-fun m!1814898 () Bool)

(assert (=> setNonEmpty!10210 m!1814898))

(declare-fun m!1814900 () Bool)

(assert (=> mapNonEmpty!7676 m!1814900))

(declare-fun m!1814902 () Bool)

(assert (=> b!1541094 m!1814902))

(declare-fun m!1814904 () Bool)

(assert (=> b!1541095 m!1814904))

(declare-fun m!1814906 () Bool)

(assert (=> setNonEmpty!10211 m!1814906))

(declare-fun setIsEmpty!10212 () Bool)

(declare-fun setRes!10212 () Bool)

(assert (=> setIsEmpty!10212 setRes!10212))

(declare-fun b!1541096 () Bool)

(declare-fun e!986617 () Bool)

(declare-fun tp!446619 () Bool)

(assert (=> b!1541096 (= e!986617 tp!446619)))

(declare-fun setElem!10212 () Context!1466)

(declare-fun e!986616 () Bool)

(declare-fun setNonEmpty!10212 () Bool)

(declare-fun tp!446623 () Bool)

(assert (=> setNonEmpty!10212 (= setRes!10212 (and tp!446623 (inv!21725 setElem!10212) e!986616))))

(declare-fun setRest!10212 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10212 (= (_2!8980 (h!21865 mapValue!7673)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10212 true) setRest!10212))))

(declare-fun tp!446621 () Bool)

(declare-fun b!1541097 () Bool)

(declare-fun tp!446620 () Bool)

(declare-fun e!986618 () Bool)

(assert (=> b!1541097 (= e!986618 (and tp!446621 (inv!21725 (_2!8979 (_1!8980 (h!21865 mapValue!7673)))) e!986617 tp_is_empty!7045 setRes!10212 tp!446620))))

(declare-fun condSetEmpty!10212 () Bool)

(assert (=> b!1541097 (= condSetEmpty!10212 (= (_2!8980 (h!21865 mapValue!7673)) ((as const (Array Context!1466 Bool)) false)))))

(assert (=> mapNonEmpty!7673 (= tp!446488 e!986618)))

(declare-fun b!1541098 () Bool)

(declare-fun tp!446622 () Bool)

(assert (=> b!1541098 (= e!986616 tp!446622)))

(assert (= b!1541097 b!1541096))

(assert (= (and b!1541097 condSetEmpty!10212) setIsEmpty!10212))

(assert (= (and b!1541097 (not condSetEmpty!10212)) setNonEmpty!10212))

(assert (= setNonEmpty!10212 b!1541098))

(assert (= (and mapNonEmpty!7673 ((_ is Cons!16464) mapValue!7673)) b!1541097))

(declare-fun m!1814908 () Bool)

(assert (=> setNonEmpty!10212 m!1814908))

(declare-fun m!1814910 () Bool)

(assert (=> b!1541097 m!1814910))

(declare-fun e!986624 () Bool)

(assert (=> b!1540850 (= tp!446490 e!986624)))

(declare-fun b!1541106 () Bool)

(declare-fun e!986623 () Bool)

(declare-fun tp!446631 () Bool)

(assert (=> b!1541106 (= e!986623 tp!446631)))

(declare-fun setIsEmpty!10215 () Bool)

(declare-fun setRes!10215 () Bool)

(assert (=> setIsEmpty!10215 setRes!10215))

(declare-fun setElem!10215 () Context!1466)

(declare-fun tp!446630 () Bool)

(declare-fun setNonEmpty!10215 () Bool)

(assert (=> setNonEmpty!10215 (= setRes!10215 (and tp!446630 (inv!21725 setElem!10215) e!986623))))

(declare-fun setRest!10215 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10215 (= (_1!8981 (_1!8982 (h!21866 (zeroValue!1891 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10215 true) setRest!10215))))

(declare-fun b!1541105 () Bool)

(declare-fun tp!446632 () Bool)

(assert (=> b!1541105 (= e!986624 (and setRes!10215 tp!446632))))

(declare-fun condSetEmpty!10215 () Bool)

(assert (=> b!1541105 (= condSetEmpty!10215 (= (_1!8981 (_1!8982 (h!21866 (zeroValue!1891 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))))) ((as const (Array Context!1466 Bool)) false)))))

(assert (= (and b!1541105 condSetEmpty!10215) setIsEmpty!10215))

(assert (= (and b!1541105 (not condSetEmpty!10215)) setNonEmpty!10215))

(assert (= setNonEmpty!10215 b!1541106))

(assert (= (and b!1540850 ((_ is Cons!16465) (zeroValue!1891 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81)))))))) b!1541105))

(declare-fun m!1814912 () Bool)

(assert (=> setNonEmpty!10215 m!1814912))

(declare-fun e!986626 () Bool)

(assert (=> b!1540850 (= tp!446489 e!986626)))

(declare-fun b!1541108 () Bool)

(declare-fun e!986625 () Bool)

(declare-fun tp!446634 () Bool)

(assert (=> b!1541108 (= e!986625 tp!446634)))

(declare-fun setIsEmpty!10216 () Bool)

(declare-fun setRes!10216 () Bool)

(assert (=> setIsEmpty!10216 setRes!10216))

(declare-fun setElem!10216 () Context!1466)

(declare-fun tp!446633 () Bool)

(declare-fun setNonEmpty!10216 () Bool)

(assert (=> setNonEmpty!10216 (= setRes!10216 (and tp!446633 (inv!21725 setElem!10216) e!986625))))

(declare-fun setRest!10216 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10216 (= (_1!8981 (_1!8982 (h!21866 (minValue!1891 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10216 true) setRest!10216))))

(declare-fun b!1541107 () Bool)

(declare-fun tp!446635 () Bool)

(assert (=> b!1541107 (= e!986626 (and setRes!10216 tp!446635))))

(declare-fun condSetEmpty!10216 () Bool)

(assert (=> b!1541107 (= condSetEmpty!10216 (= (_1!8981 (_1!8982 (h!21866 (minValue!1891 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81))))))))) ((as const (Array Context!1466 Bool)) false)))))

(assert (= (and b!1541107 condSetEmpty!10216) setIsEmpty!10216))

(assert (= (and b!1541107 (not condSetEmpty!10216)) setNonEmpty!10216))

(assert (= setNonEmpty!10216 b!1541108))

(assert (= (and b!1540850 ((_ is Cons!16465) (minValue!1891 (v!23280 (underlying!3477 (v!23282 (underlying!3478 (cache!1959 cacheFurthestNullable!81)))))))) b!1541107))

(declare-fun m!1814914 () Bool)

(assert (=> setNonEmpty!10216 m!1814914))

(declare-fun tp!446636 () Bool)

(declare-fun e!986628 () Bool)

(declare-fun b!1541109 () Bool)

(declare-fun e!986627 () Bool)

(declare-fun setRes!10217 () Bool)

(assert (=> b!1541109 (= e!986627 (and (inv!21725 (_1!8977 (_1!8978 (h!21863 mapDefault!7673)))) e!986628 tp_is_empty!7045 setRes!10217 tp!446636))))

(declare-fun condSetEmpty!10217 () Bool)

(assert (=> b!1541109 (= condSetEmpty!10217 (= (_2!8978 (h!21863 mapDefault!7673)) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setIsEmpty!10217 () Bool)

(assert (=> setIsEmpty!10217 setRes!10217))

(declare-fun tp!446637 () Bool)

(declare-fun e!986629 () Bool)

(declare-fun setElem!10217 () Context!1466)

(declare-fun setNonEmpty!10217 () Bool)

(assert (=> setNonEmpty!10217 (= setRes!10217 (and tp!446637 (inv!21725 setElem!10217) e!986629))))

(declare-fun setRest!10217 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10217 (= (_2!8978 (h!21863 mapDefault!7673)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10217 true) setRest!10217))))

(declare-fun b!1541111 () Bool)

(declare-fun tp!446638 () Bool)

(assert (=> b!1541111 (= e!986628 tp!446638)))

(assert (=> b!1540834 (= tp!446496 e!986627)))

(declare-fun b!1541110 () Bool)

(declare-fun tp!446639 () Bool)

(assert (=> b!1541110 (= e!986629 tp!446639)))

(assert (= b!1541109 b!1541111))

(assert (= (and b!1541109 condSetEmpty!10217) setIsEmpty!10217))

(assert (= (and b!1541109 (not condSetEmpty!10217)) setNonEmpty!10217))

(assert (= setNonEmpty!10217 b!1541110))

(assert (= (and b!1540834 ((_ is Cons!16462) mapDefault!7673)) b!1541109))

(declare-fun m!1814916 () Bool)

(assert (=> b!1541109 m!1814916))

(declare-fun m!1814918 () Bool)

(assert (=> setNonEmpty!10217 m!1814918))

(declare-fun setIsEmpty!10222 () Bool)

(declare-fun setRes!10222 () Bool)

(assert (=> setIsEmpty!10222 setRes!10222))

(declare-fun b!1541126 () Bool)

(declare-fun e!986644 () Bool)

(declare-fun tp!446663 () Bool)

(assert (=> b!1541126 (= e!986644 tp!446663)))

(declare-fun b!1541127 () Bool)

(declare-fun e!986643 () Bool)

(declare-fun tp!446659 () Bool)

(assert (=> b!1541127 (= e!986643 tp!446659)))

(declare-fun condMapEmpty!7679 () Bool)

(declare-fun mapDefault!7679 () List!16530)

(assert (=> mapNonEmpty!7671 (= condMapEmpty!7679 (= mapRest!7672 ((as const (Array (_ BitVec 32) List!16530)) mapDefault!7679)))))

(declare-fun e!986646 () Bool)

(declare-fun mapRes!7679 () Bool)

(assert (=> mapNonEmpty!7671 (= tp!446501 (and e!986646 mapRes!7679))))

(declare-fun b!1541128 () Bool)

(declare-fun tp!446664 () Bool)

(assert (=> b!1541128 (= e!986646 (and (inv!21725 (_1!8977 (_1!8978 (h!21863 mapDefault!7679)))) e!986644 tp_is_empty!7045 setRes!10222 tp!446664))))

(declare-fun condSetEmpty!10222 () Bool)

(assert (=> b!1541128 (= condSetEmpty!10222 (= (_2!8978 (h!21863 mapDefault!7679)) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setIsEmpty!10223 () Bool)

(declare-fun setRes!10223 () Bool)

(assert (=> setIsEmpty!10223 setRes!10223))

(declare-fun e!986645 () Bool)

(declare-fun setNonEmpty!10222 () Bool)

(declare-fun setElem!10222 () Context!1466)

(declare-fun tp!446661 () Bool)

(assert (=> setNonEmpty!10222 (= setRes!10223 (and tp!446661 (inv!21725 setElem!10222) e!986645))))

(declare-fun mapValue!7679 () List!16530)

(declare-fun setRest!10222 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10222 (= (_2!8978 (h!21863 mapValue!7679)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10222 true) setRest!10222))))

(declare-fun setNonEmpty!10223 () Bool)

(declare-fun e!986642 () Bool)

(declare-fun tp!446662 () Bool)

(declare-fun setElem!10223 () Context!1466)

(assert (=> setNonEmpty!10223 (= setRes!10222 (and tp!446662 (inv!21725 setElem!10223) e!986642))))

(declare-fun setRest!10223 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10223 (= (_2!8978 (h!21863 mapDefault!7679)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10223 true) setRest!10223))))

(declare-fun b!1541129 () Bool)

(declare-fun tp!446660 () Bool)

(assert (=> b!1541129 (= e!986642 tp!446660)))

(declare-fun b!1541130 () Bool)

(declare-fun tp!446658 () Bool)

(assert (=> b!1541130 (= e!986645 tp!446658)))

(declare-fun mapNonEmpty!7679 () Bool)

(declare-fun tp!446666 () Bool)

(declare-fun e!986647 () Bool)

(assert (=> mapNonEmpty!7679 (= mapRes!7679 (and tp!446666 e!986647))))

(declare-fun mapRest!7679 () (Array (_ BitVec 32) List!16530))

(declare-fun mapKey!7679 () (_ BitVec 32))

(assert (=> mapNonEmpty!7679 (= mapRest!7672 (store mapRest!7679 mapKey!7679 mapValue!7679))))

(declare-fun tp!446665 () Bool)

(declare-fun b!1541131 () Bool)

(assert (=> b!1541131 (= e!986647 (and (inv!21725 (_1!8977 (_1!8978 (h!21863 mapValue!7679)))) e!986643 tp_is_empty!7045 setRes!10223 tp!446665))))

(declare-fun condSetEmpty!10223 () Bool)

(assert (=> b!1541131 (= condSetEmpty!10223 (= (_2!8978 (h!21863 mapValue!7679)) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun mapIsEmpty!7679 () Bool)

(assert (=> mapIsEmpty!7679 mapRes!7679))

(assert (= (and mapNonEmpty!7671 condMapEmpty!7679) mapIsEmpty!7679))

(assert (= (and mapNonEmpty!7671 (not condMapEmpty!7679)) mapNonEmpty!7679))

(assert (= b!1541131 b!1541127))

(assert (= (and b!1541131 condSetEmpty!10223) setIsEmpty!10223))

(assert (= (and b!1541131 (not condSetEmpty!10223)) setNonEmpty!10222))

(assert (= setNonEmpty!10222 b!1541130))

(assert (= (and mapNonEmpty!7679 ((_ is Cons!16462) mapValue!7679)) b!1541131))

(assert (= b!1541128 b!1541126))

(assert (= (and b!1541128 condSetEmpty!10222) setIsEmpty!10222))

(assert (= (and b!1541128 (not condSetEmpty!10222)) setNonEmpty!10223))

(assert (= setNonEmpty!10223 b!1541129))

(assert (= (and mapNonEmpty!7671 ((_ is Cons!16462) mapDefault!7679)) b!1541128))

(declare-fun m!1814920 () Bool)

(assert (=> mapNonEmpty!7679 m!1814920))

(declare-fun m!1814922 () Bool)

(assert (=> b!1541131 m!1814922))

(declare-fun m!1814924 () Bool)

(assert (=> setNonEmpty!10223 m!1814924))

(declare-fun m!1814926 () Bool)

(assert (=> b!1541128 m!1814926))

(declare-fun m!1814928 () Bool)

(assert (=> setNonEmpty!10222 m!1814928))

(declare-fun e!986649 () Bool)

(declare-fun setRes!10224 () Bool)

(declare-fun tp!446667 () Bool)

(declare-fun e!986648 () Bool)

(declare-fun b!1541132 () Bool)

(assert (=> b!1541132 (= e!986648 (and (inv!21725 (_1!8977 (_1!8978 (h!21863 mapValue!7672)))) e!986649 tp_is_empty!7045 setRes!10224 tp!446667))))

(declare-fun condSetEmpty!10224 () Bool)

(assert (=> b!1541132 (= condSetEmpty!10224 (= (_2!8978 (h!21863 mapValue!7672)) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setIsEmpty!10224 () Bool)

(assert (=> setIsEmpty!10224 setRes!10224))

(declare-fun tp!446668 () Bool)

(declare-fun e!986650 () Bool)

(declare-fun setNonEmpty!10224 () Bool)

(declare-fun setElem!10224 () Context!1466)

(assert (=> setNonEmpty!10224 (= setRes!10224 (and tp!446668 (inv!21725 setElem!10224) e!986650))))

(declare-fun setRest!10224 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10224 (= (_2!8978 (h!21863 mapValue!7672)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10224 true) setRest!10224))))

(declare-fun b!1541134 () Bool)

(declare-fun tp!446669 () Bool)

(assert (=> b!1541134 (= e!986649 tp!446669)))

(assert (=> mapNonEmpty!7671 (= tp!446483 e!986648)))

(declare-fun b!1541133 () Bool)

(declare-fun tp!446670 () Bool)

(assert (=> b!1541133 (= e!986650 tp!446670)))

(assert (= b!1541132 b!1541134))

(assert (= (and b!1541132 condSetEmpty!10224) setIsEmpty!10224))

(assert (= (and b!1541132 (not condSetEmpty!10224)) setNonEmpty!10224))

(assert (= setNonEmpty!10224 b!1541133))

(assert (= (and mapNonEmpty!7671 ((_ is Cons!16462) mapValue!7672)) b!1541132))

(declare-fun m!1814930 () Bool)

(assert (=> b!1541132 m!1814930))

(declare-fun m!1814932 () Bool)

(assert (=> setNonEmpty!10224 m!1814932))

(declare-fun e!986652 () Bool)

(assert (=> b!1540827 (= tp!446499 e!986652)))

(declare-fun b!1541136 () Bool)

(declare-fun e!986651 () Bool)

(declare-fun tp!446672 () Bool)

(assert (=> b!1541136 (= e!986651 tp!446672)))

(declare-fun setIsEmpty!10225 () Bool)

(declare-fun setRes!10225 () Bool)

(assert (=> setIsEmpty!10225 setRes!10225))

(declare-fun setElem!10225 () Context!1466)

(declare-fun tp!446671 () Bool)

(declare-fun setNonEmpty!10225 () Bool)

(assert (=> setNonEmpty!10225 (= setRes!10225 (and tp!446671 (inv!21725 setElem!10225) e!986651))))

(declare-fun setRest!10225 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10225 (= (_1!8981 (_1!8982 (h!21866 mapDefault!7672))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10225 true) setRest!10225))))

(declare-fun b!1541135 () Bool)

(declare-fun tp!446673 () Bool)

(assert (=> b!1541135 (= e!986652 (and setRes!10225 tp!446673))))

(declare-fun condSetEmpty!10225 () Bool)

(assert (=> b!1541135 (= condSetEmpty!10225 (= (_1!8981 (_1!8982 (h!21866 mapDefault!7672))) ((as const (Array Context!1466 Bool)) false)))))

(assert (= (and b!1541135 condSetEmpty!10225) setIsEmpty!10225))

(assert (= (and b!1541135 (not condSetEmpty!10225)) setNonEmpty!10225))

(assert (= setNonEmpty!10225 b!1541136))

(assert (= (and b!1540827 ((_ is Cons!16465) mapDefault!7672)) b!1541135))

(declare-fun m!1814934 () Bool)

(assert (=> setNonEmpty!10225 m!1814934))

(declare-fun b!1541147 () Bool)

(declare-fun e!986662 () Bool)

(declare-fun setRes!10230 () Bool)

(declare-fun tp!446692 () Bool)

(assert (=> b!1541147 (= e!986662 (and setRes!10230 tp!446692))))

(declare-fun condSetEmpty!10231 () Bool)

(declare-fun mapValue!7682 () List!16533)

(assert (=> b!1541147 (= condSetEmpty!10231 (= (_1!8981 (_1!8982 (h!21866 mapValue!7682))) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setElem!10231 () Context!1466)

(declare-fun setRes!10231 () Bool)

(declare-fun e!986661 () Bool)

(declare-fun setNonEmpty!10230 () Bool)

(declare-fun tp!446689 () Bool)

(assert (=> setNonEmpty!10230 (= setRes!10231 (and tp!446689 (inv!21725 setElem!10231) e!986661))))

(declare-fun mapDefault!7682 () List!16533)

(declare-fun setRest!10230 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10230 (= (_1!8981 (_1!8982 (h!21866 mapDefault!7682))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10231 true) setRest!10230))))

(declare-fun mapIsEmpty!7682 () Bool)

(declare-fun mapRes!7682 () Bool)

(assert (=> mapIsEmpty!7682 mapRes!7682))

(declare-fun condMapEmpty!7682 () Bool)

(assert (=> mapNonEmpty!7672 (= condMapEmpty!7682 (= mapRest!7673 ((as const (Array (_ BitVec 32) List!16533)) mapDefault!7682)))))

(declare-fun e!986663 () Bool)

(assert (=> mapNonEmpty!7672 (= tp!446509 (and e!986663 mapRes!7682))))

(declare-fun b!1541148 () Bool)

(declare-fun e!986664 () Bool)

(declare-fun tp!446693 () Bool)

(assert (=> b!1541148 (= e!986664 tp!446693)))

(declare-fun b!1541149 () Bool)

(declare-fun tp!446694 () Bool)

(assert (=> b!1541149 (= e!986661 tp!446694)))

(declare-fun mapNonEmpty!7682 () Bool)

(declare-fun tp!446690 () Bool)

(assert (=> mapNonEmpty!7682 (= mapRes!7682 (and tp!446690 e!986662))))

(declare-fun mapRest!7682 () (Array (_ BitVec 32) List!16533))

(declare-fun mapKey!7682 () (_ BitVec 32))

(assert (=> mapNonEmpty!7682 (= mapRest!7673 (store mapRest!7682 mapKey!7682 mapValue!7682))))

(declare-fun setIsEmpty!10230 () Bool)

(assert (=> setIsEmpty!10230 setRes!10230))

(declare-fun b!1541150 () Bool)

(declare-fun tp!446688 () Bool)

(assert (=> b!1541150 (= e!986663 (and setRes!10231 tp!446688))))

(declare-fun condSetEmpty!10230 () Bool)

(assert (=> b!1541150 (= condSetEmpty!10230 (= (_1!8981 (_1!8982 (h!21866 mapDefault!7682))) ((as const (Array Context!1466 Bool)) false)))))

(declare-fun setIsEmpty!10231 () Bool)

(assert (=> setIsEmpty!10231 setRes!10231))

(declare-fun setNonEmpty!10231 () Bool)

(declare-fun setElem!10230 () Context!1466)

(declare-fun tp!446691 () Bool)

(assert (=> setNonEmpty!10231 (= setRes!10230 (and tp!446691 (inv!21725 setElem!10230) e!986664))))

(declare-fun setRest!10231 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10231 (= (_1!8981 (_1!8982 (h!21866 mapValue!7682))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10230 true) setRest!10231))))

(assert (= (and mapNonEmpty!7672 condMapEmpty!7682) mapIsEmpty!7682))

(assert (= (and mapNonEmpty!7672 (not condMapEmpty!7682)) mapNonEmpty!7682))

(assert (= (and b!1541147 condSetEmpty!10231) setIsEmpty!10230))

(assert (= (and b!1541147 (not condSetEmpty!10231)) setNonEmpty!10231))

(assert (= setNonEmpty!10231 b!1541148))

(assert (= (and mapNonEmpty!7682 ((_ is Cons!16465) mapValue!7682)) b!1541147))

(assert (= (and b!1541150 condSetEmpty!10230) setIsEmpty!10231))

(assert (= (and b!1541150 (not condSetEmpty!10230)) setNonEmpty!10230))

(assert (= setNonEmpty!10230 b!1541149))

(assert (= (and mapNonEmpty!7672 ((_ is Cons!16465) mapDefault!7682)) b!1541150))

(declare-fun m!1814936 () Bool)

(assert (=> setNonEmpty!10230 m!1814936))

(declare-fun m!1814938 () Bool)

(assert (=> mapNonEmpty!7682 m!1814938))

(declare-fun m!1814940 () Bool)

(assert (=> setNonEmpty!10231 m!1814940))

(declare-fun e!986666 () Bool)

(assert (=> mapNonEmpty!7672 (= tp!446484 e!986666)))

(declare-fun b!1541152 () Bool)

(declare-fun e!986665 () Bool)

(declare-fun tp!446696 () Bool)

(assert (=> b!1541152 (= e!986665 tp!446696)))

(declare-fun setIsEmpty!10232 () Bool)

(declare-fun setRes!10232 () Bool)

(assert (=> setIsEmpty!10232 setRes!10232))

(declare-fun setNonEmpty!10232 () Bool)

(declare-fun setElem!10232 () Context!1466)

(declare-fun tp!446695 () Bool)

(assert (=> setNonEmpty!10232 (= setRes!10232 (and tp!446695 (inv!21725 setElem!10232) e!986665))))

(declare-fun setRest!10232 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10232 (= (_1!8981 (_1!8982 (h!21866 mapValue!7671))) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10232 true) setRest!10232))))

(declare-fun b!1541151 () Bool)

(declare-fun tp!446697 () Bool)

(assert (=> b!1541151 (= e!986666 (and setRes!10232 tp!446697))))

(declare-fun condSetEmpty!10232 () Bool)

(assert (=> b!1541151 (= condSetEmpty!10232 (= (_1!8981 (_1!8982 (h!21866 mapValue!7671))) ((as const (Array Context!1466 Bool)) false)))))

(assert (= (and b!1541151 condSetEmpty!10232) setIsEmpty!10232))

(assert (= (and b!1541151 (not condSetEmpty!10232)) setNonEmpty!10232))

(assert (= setNonEmpty!10232 b!1541152))

(assert (= (and mapNonEmpty!7672 ((_ is Cons!16465) mapValue!7671)) b!1541151))

(declare-fun m!1814942 () Bool)

(assert (=> setNonEmpty!10232 m!1814942))

(declare-fun setIsEmpty!10233 () Bool)

(declare-fun setRes!10233 () Bool)

(assert (=> setIsEmpty!10233 setRes!10233))

(declare-fun b!1541153 () Bool)

(declare-fun e!986668 () Bool)

(declare-fun tp!446698 () Bool)

(assert (=> b!1541153 (= e!986668 tp!446698)))

(declare-fun setElem!10233 () Context!1466)

(declare-fun setNonEmpty!10233 () Bool)

(declare-fun e!986667 () Bool)

(declare-fun tp!446702 () Bool)

(assert (=> setNonEmpty!10233 (= setRes!10233 (and tp!446702 (inv!21725 setElem!10233) e!986667))))

(declare-fun setRest!10233 () (InoxSet Context!1466))

(assert (=> setNonEmpty!10233 (= (_2!8980 (h!21865 mapDefault!7671)) ((_ map or) (store ((as const (Array Context!1466 Bool)) false) setElem!10233 true) setRest!10233))))

(declare-fun tp!446700 () Bool)

(declare-fun e!986669 () Bool)

(declare-fun tp!446699 () Bool)

(declare-fun b!1541154 () Bool)

(assert (=> b!1541154 (= e!986669 (and tp!446700 (inv!21725 (_2!8979 (_1!8980 (h!21865 mapDefault!7671)))) e!986668 tp_is_empty!7045 setRes!10233 tp!446699))))

(declare-fun condSetEmpty!10233 () Bool)

(assert (=> b!1541154 (= condSetEmpty!10233 (= (_2!8980 (h!21865 mapDefault!7671)) ((as const (Array Context!1466 Bool)) false)))))

(assert (=> b!1540846 (= tp!446494 e!986669)))

(declare-fun b!1541155 () Bool)

(declare-fun tp!446701 () Bool)

(assert (=> b!1541155 (= e!986667 tp!446701)))

(assert (= b!1541154 b!1541153))

(assert (= (and b!1541154 condSetEmpty!10233) setIsEmpty!10233))

(assert (= (and b!1541154 (not condSetEmpty!10233)) setNonEmpty!10233))

(assert (= setNonEmpty!10233 b!1541155))

(assert (= (and b!1540846 ((_ is Cons!16464) mapDefault!7671)) b!1541154))

(declare-fun m!1814944 () Bool)

(assert (=> setNonEmpty!10233 m!1814944))

(declare-fun m!1814946 () Bool)

(assert (=> b!1541154 m!1814946))

(declare-fun tp!446703 () Bool)

(declare-fun tp!446705 () Bool)

(declare-fun b!1541156 () Bool)

(declare-fun e!986670 () Bool)

(assert (=> b!1541156 (= e!986670 (and (inv!21718 (left!13485 (c!251728 totalInput!496))) tp!446703 (inv!21718 (right!13815 (c!251728 totalInput!496))) tp!446705))))

(declare-fun b!1541158 () Bool)

(declare-fun e!986671 () Bool)

(declare-fun tp!446704 () Bool)

(assert (=> b!1541158 (= e!986671 tp!446704)))

(declare-fun b!1541157 () Bool)

(assert (=> b!1541157 (= e!986670 (and (inv!21726 (xs!8307 (c!251728 totalInput!496))) e!986671))))

(assert (=> b!1540845 (= tp!446493 (and (inv!21718 (c!251728 totalInput!496)) e!986670))))

(assert (= (and b!1540845 ((_ is Node!5507) (c!251728 totalInput!496))) b!1541156))

(assert (= b!1541157 b!1541158))

(assert (= (and b!1540845 ((_ is Leaf!8160) (c!251728 totalInput!496))) b!1541157))

(declare-fun m!1814948 () Bool)

(assert (=> b!1541156 m!1814948))

(declare-fun m!1814950 () Bool)

(assert (=> b!1541156 m!1814950))

(declare-fun m!1814952 () Bool)

(assert (=> b!1541157 m!1814952))

(assert (=> b!1540845 m!1814634))

(check-sat (not b!1541110) (not d!458575) (not b!1541136) (not b!1540883) (not d!458623) (not b!1541135) (not b!1540921) (not b!1540999) (not b!1540997) (not mapNonEmpty!7679) (not d!458641) (not d!458621) (not d!458613) (not setNonEmpty!10231) (not setNonEmpty!10232) (not b!1541032) (not b!1540998) (not d!458625) (not b!1540887) (not b!1540882) (not b!1540938) (not b!1541155) (not b!1540885) (not b!1540828) (not b!1541033) (not setNonEmpty!10233) (not b!1541091) (not b!1541126) (not b!1541153) (not b!1540923) (not mapNonEmpty!7676) (not bm!101610) (not b!1540881) (not b!1540925) (not d!458591) (not b!1540919) (not b!1541128) (not b_next!41021) (not b_next!41033) (not d!458635) (not setNonEmpty!10230) (not b!1541092) (not b!1540970) (not b!1541111) (not b!1540965) (not b!1540854) (not setNonEmpty!10216) b_and!107201 (not b!1541000) (not b!1541158) (not b!1541109) (not b!1541075) (not b!1541107) (not b_next!41025) (not b!1541152) (not b!1540915) (not b!1540966) (not b!1540932) tp_is_empty!7045 (not b!1541034) (not b!1540859) (not b!1541047) (not b!1540968) (not b!1541148) (not b!1541132) (not b!1541129) (not b!1541106) (not b!1541072) (not b!1541093) (not b!1541046) (not b!1541127) (not b_next!41027) (not b!1541134) (not b!1540914) (not b!1541147) (not b!1540992) (not d!458627) (not b!1541151) (not b!1541105) (not b_next!41029) (not setNonEmpty!10210) b_and!107199 (not b!1541070) (not b!1540967) (not b!1540916) (not b!1541094) (not b!1540946) (not b!1541156) (not b!1541045) b_and!107195 (not d!458629) b_and!107193 (not bm!101613) (not b!1541018) (not b!1540888) (not b!1541022) (not b!1540996) (not b!1541149) (not b!1541021) (not setNonEmpty!10223) (not b!1541090) (not b!1541036) (not b!1541056) (not setNonEmpty!10211) (not b!1541154) (not setNonEmpty!10201) (not b!1541157) (not b_next!41023) (not setNonEmpty!10225) b_and!107207 (not b!1541098) (not b!1541031) (not b_next!41031) (not setNonEmpty!10217) (not d!458585) (not d!458571) (not setNonEmpty!10224) b_and!107203 (not b!1541057) (not b!1540924) (not setNonEmpty!10222) (not b!1541096) (not b_next!41035) (not b_next!41037) (not setNonEmpty!10212) (not d!458609) (not b!1540940) (not bm!101607) (not b!1540884) (not b!1540949) (not b!1540845) (not b!1540955) (not b!1541108) (not b!1541073) (not d!458593) (not b!1541035) (not setNonEmpty!10205) (not b!1541095) (not b!1541017) (not b!1541019) (not b!1541074) (not b!1541097) (not b!1540889) (not d!458573) (not mapNonEmpty!7682) (not setNonEmpty!10200) (not b!1541071) (not setNonEmpty!10215) (not b!1540943) (not b!1541133) (not b!1540995) (not b!1541130) (not b!1540860) b_and!107197 (not b!1540937) (not b!1541020) (not b!1540934) b_and!107211 (not b!1540831) (not b!1540917) (not d!458599) (not d!458577) (not setNonEmpty!10204) (not d!458633) (not b!1541131) (not b!1540918) b_and!107205 (not b_next!41019) (not b!1540994) b_and!107209 (not d!458603) (not b!1541150) (not d!458605))
(check-sat b_and!107201 (not b_next!41025) (not b_next!41027) (not b_next!41021) (not b_next!41033) (not b_next!41029) b_and!107199 b_and!107195 b_and!107193 (not b_next!41023) b_and!107207 (not b_next!41031) b_and!107203 (not b_next!41035) (not b_next!41037) b_and!107211 b_and!107197 b_and!107205 (not b_next!41019) b_and!107209)
