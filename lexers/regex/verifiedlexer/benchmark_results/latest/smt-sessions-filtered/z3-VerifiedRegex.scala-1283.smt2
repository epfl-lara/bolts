; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66488 () Bool)

(assert start!66488)

(declare-fun b!696300 () Bool)

(declare-fun b_free!19949 () Bool)

(declare-fun b_next!20013 () Bool)

(assert (=> b!696300 (= b_free!19949 (not b_next!20013))))

(declare-fun tp!211409 () Bool)

(declare-fun b_and!63743 () Bool)

(assert (=> b!696300 (= tp!211409 b_and!63743)))

(declare-fun b!696304 () Bool)

(declare-fun b_free!19951 () Bool)

(declare-fun b_next!20015 () Bool)

(assert (=> b!696304 (= b_free!19951 (not b_next!20015))))

(declare-fun tp!211412 () Bool)

(declare-fun b_and!63745 () Bool)

(assert (=> b!696304 (= tp!211412 b_and!63745)))

(declare-fun b_free!19953 () Bool)

(declare-fun b_next!20017 () Bool)

(assert (=> b!696304 (= b_free!19953 (not b_next!20017))))

(declare-fun tp!211402 () Bool)

(declare-fun b_and!63747 () Bool)

(assert (=> b!696304 (= tp!211402 b_and!63747)))

(declare-fun b!696284 () Bool)

(declare-fun b_free!19955 () Bool)

(declare-fun b_next!20019 () Bool)

(assert (=> b!696284 (= b_free!19955 (not b_next!20019))))

(declare-fun tp!211417 () Bool)

(declare-fun b_and!63749 () Bool)

(assert (=> b!696284 (= tp!211417 b_and!63749)))

(declare-fun b!696282 () Bool)

(declare-fun b_free!19957 () Bool)

(declare-fun b_next!20021 () Bool)

(assert (=> b!696282 (= b_free!19957 (not b_next!20021))))

(declare-fun tp!211416 () Bool)

(declare-fun b_and!63751 () Bool)

(assert (=> b!696282 (= tp!211416 b_and!63751)))

(declare-fun b!696302 () Bool)

(declare-fun b_free!19959 () Bool)

(declare-fun b_next!20023 () Bool)

(assert (=> b!696302 (= b_free!19959 (not b_next!20023))))

(declare-fun tp!211392 () Bool)

(declare-fun b_and!63753 () Bool)

(assert (=> b!696302 (= tp!211392 b_and!63753)))

(declare-fun b!696293 () Bool)

(declare-fun b_free!19961 () Bool)

(declare-fun b_next!20025 () Bool)

(assert (=> b!696293 (= b_free!19961 (not b_next!20025))))

(declare-fun tp!211391 () Bool)

(declare-fun b_and!63755 () Bool)

(assert (=> b!696293 (= tp!211391 b_and!63755)))

(declare-fun b!696272 () Bool)

(declare-fun b_free!19963 () Bool)

(declare-fun b_next!20027 () Bool)

(assert (=> b!696272 (= b_free!19963 (not b_next!20027))))

(declare-fun tp!211394 () Bool)

(declare-fun b_and!63757 () Bool)

(assert (=> b!696272 (= tp!211394 b_and!63757)))

(declare-fun b!696264 () Bool)

(declare-fun res!315108 () Bool)

(declare-fun e!438822 () Bool)

(assert (=> b!696264 (=> (not res!315108) (not e!438822))))

(declare-datatypes ((C!4324 0))(
  ( (C!4325 (val!2392 Int)) )
))
(declare-datatypes ((List!7654 0))(
  ( (Nil!7640) (Cons!7640 (h!13041 C!4324) (t!87477 List!7654)) )
))
(declare-datatypes ((IArray!5365 0))(
  ( (IArray!5366 (innerList!2740 List!7654)) )
))
(declare-datatypes ((Regex!1861 0))(
  ( (ElementMatch!1861 (c!121895 C!4324)) (Concat!3427 (regOne!4234 Regex!1861) (regTwo!4234 Regex!1861)) (EmptyExpr!1861) (Star!1861 (reg!2190 Regex!1861)) (EmptyLang!1861) (Union!1861 (regOne!4235 Regex!1861) (regTwo!4235 Regex!1861)) )
))
(declare-datatypes ((Hashable!795 0))(
  ( (HashableExt!794 (__x!5597 Int)) )
))
(declare-datatypes ((Conc!2682 0))(
  ( (Node!2682 (left!6053 Conc!2682) (right!6383 Conc!2682) (csize!5594 Int) (cheight!2893 Int)) (Leaf!3966 (xs!5335 IArray!5365) (csize!5595 Int)) (Empty!2682) )
))
(declare-datatypes ((BalanceConc!5376 0))(
  ( (BalanceConc!5377 (c!121896 Conc!2682)) )
))
(declare-datatypes ((List!7655 0))(
  ( (Nil!7641) (Cons!7641 (h!13042 Regex!1861) (t!87478 List!7655)) )
))
(declare-datatypes ((Context!526 0))(
  ( (Context!527 (exprs!763 List!7655)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8128 0))(
  ( (tuple2!8129 (_1!4510 (InoxSet Context!526)) (_2!4510 Int)) )
))
(declare-datatypes ((tuple2!8130 0))(
  ( (tuple2!8131 (_1!4511 tuple2!8128) (_2!4511 Int)) )
))
(declare-datatypes ((array!3045 0))(
  ( (array!3046 (arr!1374 (Array (_ BitVec 32) (_ BitVec 64))) (size!6232 (_ BitVec 32))) )
))
(declare-datatypes ((List!7656 0))(
  ( (Nil!7642) (Cons!7642 (h!13043 tuple2!8130) (t!87479 List!7656)) )
))
(declare-datatypes ((array!3047 0))(
  ( (array!3048 (arr!1375 (Array (_ BitVec 32) List!7656)) (size!6233 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1646 0))(
  ( (LongMapFixedSize!1647 (defaultEntry!1179 Int) (mask!2638 (_ BitVec 32)) (extraKeys!1070 (_ BitVec 32)) (zeroValue!1080 List!7656) (minValue!1080 List!7656) (_size!1755 (_ BitVec 32)) (_keys!1117 array!3045) (_values!1102 array!3047) (_vacant!884 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3233 0))(
  ( (Cell!3234 (v!17778 LongMapFixedSize!1646)) )
))
(declare-datatypes ((MutLongMap!823 0))(
  ( (LongMap!823 (underlying!1829 Cell!3233)) (MutLongMapExt!822 (__x!5598 Int)) )
))
(declare-datatypes ((Cell!3235 0))(
  ( (Cell!3236 (v!17779 MutLongMap!823)) )
))
(declare-datatypes ((MutableMap!795 0))(
  ( (MutableMapExt!794 (__x!5599 Int)) (HashMap!795 (underlying!1830 Cell!3235) (hashF!2703 Hashable!795) (_size!1756 (_ BitVec 32)) (defaultValue!946 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!78 0))(
  ( (CacheFindLongestMatch!79 (cache!1182 MutableMap!795) (totalInput!1824 BalanceConc!5376)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!78)

(declare-fun valid!699 (CacheFindLongestMatch!78) Bool)

(assert (=> b!696264 (= res!315108 (valid!699 cacheFindLongestMatch!74))))

(declare-fun b!696265 () Bool)

(declare-fun e!438800 () Bool)

(declare-fun e!438793 () Bool)

(assert (=> b!696265 (= e!438800 e!438793)))

(declare-fun res!315098 () Bool)

(assert (=> b!696265 (=> (not res!315098) (not e!438793))))

(declare-fun lt!285880 () List!7654)

(declare-fun lt!285882 () List!7654)

(assert (=> b!696265 (= res!315098 (= lt!285880 lt!285882))))

(declare-fun lt!285886 () List!7654)

(declare-fun lt!285883 () List!7654)

(declare-fun ++!1988 (List!7654 List!7654) List!7654)

(assert (=> b!696265 (= lt!285882 (++!1988 lt!285886 lt!285883))))

(declare-fun totalInput!378 () BalanceConc!5376)

(declare-fun list!3188 (BalanceConc!5376) List!7654)

(assert (=> b!696265 (= lt!285880 (list!3188 totalInput!378))))

(declare-fun input!870 () BalanceConc!5376)

(assert (=> b!696265 (= lt!285883 (list!3188 input!870))))

(declare-fun treated!50 () BalanceConc!5376)

(assert (=> b!696265 (= lt!285886 (list!3188 treated!50))))

(declare-fun b!696266 () Bool)

(declare-fun e!438826 () Bool)

(declare-fun e!438825 () Bool)

(assert (=> b!696266 (= e!438826 e!438825)))

(declare-fun b!696267 () Bool)

(declare-fun e!438821 () Bool)

(declare-fun e!438807 () Bool)

(assert (=> b!696267 (= e!438821 e!438807)))

(declare-fun b!696268 () Bool)

(declare-fun e!438823 () Bool)

(declare-fun e!438808 () Bool)

(assert (=> b!696268 (= e!438823 e!438808)))

(declare-fun res!315103 () Bool)

(assert (=> b!696268 (=> res!315103 e!438808)))

(declare-datatypes ((tuple3!750 0))(
  ( (tuple3!751 (_1!4512 Regex!1861) (_2!4512 Context!526) (_3!446 C!4324)) )
))
(declare-datatypes ((tuple2!8132 0))(
  ( (tuple2!8133 (_1!4513 tuple3!750) (_2!4513 (InoxSet Context!526))) )
))
(declare-datatypes ((List!7657 0))(
  ( (Nil!7643) (Cons!7643 (h!13044 tuple2!8132) (t!87480 List!7657)) )
))
(declare-datatypes ((array!3049 0))(
  ( (array!3050 (arr!1376 (Array (_ BitVec 32) List!7657)) (size!6234 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1648 0))(
  ( (LongMapFixedSize!1649 (defaultEntry!1180 Int) (mask!2639 (_ BitVec 32)) (extraKeys!1071 (_ BitVec 32)) (zeroValue!1081 List!7657) (minValue!1081 List!7657) (_size!1757 (_ BitVec 32)) (_keys!1118 array!3045) (_values!1103 array!3049) (_vacant!885 (_ BitVec 32))) )
))
(declare-datatypes ((List!7658 0))(
  ( (Nil!7644) (Cons!7644 (h!13045 (_ BitVec 16)) (t!87481 List!7658)) )
))
(declare-datatypes ((TokenValue!1566 0))(
  ( (FloatLiteralValue!3132 (text!11407 List!7658)) (TokenValueExt!1565 (__x!5600 Int)) (Broken!7830 (value!49016 List!7658)) (Object!1579) (End!1566) (Def!1566) (Underscore!1566) (Match!1566) (Else!1566) (Error!1566) (Case!1566) (If!1566) (Extends!1566) (Abstract!1566) (Class!1566) (Val!1566) (DelimiterValue!3132 (del!1626 List!7658)) (KeywordValue!1572 (value!49017 List!7658)) (CommentValue!3132 (value!49018 List!7658)) (WhitespaceValue!3132 (value!49019 List!7658)) (IndentationValue!1566 (value!49020 List!7658)) (String!9555) (Int32!1566) (Broken!7831 (value!49021 List!7658)) (Boolean!1567) (Unit!12693) (OperatorValue!1569 (op!1626 List!7658)) (IdentifierValue!3132 (value!49022 List!7658)) (IdentifierValue!3133 (value!49023 List!7658)) (WhitespaceValue!3133 (value!49024 List!7658)) (True!3132) (False!3132) (Broken!7832 (value!49025 List!7658)) (Broken!7833 (value!49026 List!7658)) (True!3133) (RightBrace!1566) (RightBracket!1566) (Colon!1566) (Null!1566) (Comma!1566) (LeftBracket!1566) (False!3133) (LeftBrace!1566) (ImaginaryLiteralValue!1566 (text!11408 List!7658)) (StringLiteralValue!4698 (value!49027 List!7658)) (EOFValue!1566 (value!49028 List!7658)) (IdentValue!1566 (value!49029 List!7658)) (DelimiterValue!3133 (value!49030 List!7658)) (DedentValue!1566 (value!49031 List!7658)) (NewLineValue!1566 (value!49032 List!7658)) (IntegerValue!4698 (value!49033 (_ BitVec 32)) (text!11409 List!7658)) (IntegerValue!4699 (value!49034 Int) (text!11410 List!7658)) (Times!1566) (Or!1566) (Equal!1566) (Minus!1566) (Broken!7834 (value!49035 List!7658)) (And!1566) (Div!1566) (LessEqual!1566) (Mod!1566) (Concat!3428) (Not!1566) (Plus!1566) (SpaceValue!1566 (value!49036 List!7658)) (IntegerValue!4700 (value!49037 Int) (text!11411 List!7658)) (StringLiteralValue!4699 (text!11412 List!7658)) (FloatLiteralValue!3133 (text!11413 List!7658)) (BytesLiteralValue!1566 (value!49038 List!7658)) (CommentValue!3133 (value!49039 List!7658)) (StringLiteralValue!4700 (value!49040 List!7658)) (ErrorTokenValue!1566 (msg!1627 List!7658)) )
))
(declare-datatypes ((String!9556 0))(
  ( (String!9557 (value!49041 String)) )
))
(declare-datatypes ((TokenValueInjection!2868 0))(
  ( (TokenValueInjection!2869 (toValue!2486 Int) (toChars!2345 Int)) )
))
(declare-datatypes ((Rule!2844 0))(
  ( (Rule!2845 (regex!1522 Regex!1861) (tag!1784 String!9556) (isSeparator!1522 Bool) (transformation!1522 TokenValueInjection!2868)) )
))
(declare-datatypes ((Token!2744 0))(
  ( (Token!2745 (value!49042 TokenValue!1566) (rule!2561 Rule!2844) (size!6235 Int) (originalCharacters!1797 List!7654)) )
))
(declare-datatypes ((tuple2!8134 0))(
  ( (tuple2!8135 (_1!4514 Token!2744) (_2!4514 BalanceConc!5376)) )
))
(declare-datatypes ((Option!1719 0))(
  ( (None!1718) (Some!1718 (v!17780 tuple2!8134)) )
))
(declare-datatypes ((Hashable!796 0))(
  ( (HashableExt!795 (__x!5601 Int)) )
))
(declare-datatypes ((tuple2!8136 0))(
  ( (tuple2!8137 (_1!4515 Context!526) (_2!4515 C!4324)) )
))
(declare-datatypes ((tuple2!8138 0))(
  ( (tuple2!8139 (_1!4516 tuple2!8136) (_2!4516 (InoxSet Context!526))) )
))
(declare-datatypes ((List!7659 0))(
  ( (Nil!7645) (Cons!7645 (h!13046 tuple2!8138) (t!87482 List!7659)) )
))
(declare-datatypes ((array!3051 0))(
  ( (array!3052 (arr!1377 (Array (_ BitVec 32) List!7659)) (size!6236 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1650 0))(
  ( (LongMapFixedSize!1651 (defaultEntry!1181 Int) (mask!2640 (_ BitVec 32)) (extraKeys!1072 (_ BitVec 32)) (zeroValue!1082 List!7659) (minValue!1082 List!7659) (_size!1758 (_ BitVec 32)) (_keys!1119 array!3045) (_values!1104 array!3051) (_vacant!886 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3237 0))(
  ( (Cell!3238 (v!17781 LongMapFixedSize!1650)) )
))
(declare-datatypes ((MutLongMap!824 0))(
  ( (LongMap!824 (underlying!1831 Cell!3237)) (MutLongMapExt!823 (__x!5602 Int)) )
))
(declare-datatypes ((Cell!3239 0))(
  ( (Cell!3240 (v!17782 MutLongMap!824)) )
))
(declare-datatypes ((MutableMap!796 0))(
  ( (MutableMapExt!795 (__x!5603 Int)) (HashMap!796 (underlying!1832 Cell!3239) (hashF!2704 Hashable!796) (_size!1759 (_ BitVec 32)) (defaultValue!947 Int)) )
))
(declare-datatypes ((CacheUp!416 0))(
  ( (CacheUp!417 (cache!1183 MutableMap!796)) )
))
(declare-datatypes ((Cell!3241 0))(
  ( (Cell!3242 (v!17783 LongMapFixedSize!1648)) )
))
(declare-datatypes ((MutLongMap!825 0))(
  ( (LongMap!825 (underlying!1833 Cell!3241)) (MutLongMapExt!824 (__x!5604 Int)) )
))
(declare-datatypes ((Cell!3243 0))(
  ( (Cell!3244 (v!17784 MutLongMap!825)) )
))
(declare-datatypes ((Hashable!797 0))(
  ( (HashableExt!796 (__x!5605 Int)) )
))
(declare-datatypes ((MutableMap!797 0))(
  ( (MutableMapExt!796 (__x!5606 Int)) (HashMap!797 (underlying!1834 Cell!3243) (hashF!2705 Hashable!797) (_size!1760 (_ BitVec 32)) (defaultValue!948 Int)) )
))
(declare-datatypes ((CacheDown!422 0))(
  ( (CacheDown!423 (cache!1184 MutableMap!797)) )
))
(declare-datatypes ((tuple4!142 0))(
  ( (tuple4!143 (_1!4517 Option!1719) (_2!4517 CacheUp!416) (_3!447 CacheDown!422) (_4!71 CacheFindLongestMatch!78)) )
))
(declare-fun lt!285887 () tuple4!142)

(get-info :version)

(assert (=> b!696268 (= res!315103 (not ((_ is Some!1718) (_1!4517 lt!285887))))))

(declare-datatypes ((List!7660 0))(
  ( (Nil!7646) (Cons!7646 (h!13047 Rule!2844) (t!87483 List!7660)) )
))
(declare-fun rules!1486 () List!7660)

(declare-datatypes ((LexerInterface!1335 0))(
  ( (LexerInterfaceExt!1332 (__x!5607 Int)) (Lexer!1333) )
))
(declare-fun thiss!12529 () LexerInterface!1335)

(declare-fun cacheUp!502 () CacheUp!416)

(declare-fun cacheDown!515 () CacheDown!422)

(declare-fun maxPrefixZipperSequenceV2Mem!10 (LexerInterface!1335 List!7660 BalanceConc!5376 BalanceConc!5376 CacheUp!416 CacheDown!422 CacheFindLongestMatch!78) tuple4!142)

(assert (=> b!696268 (= lt!285887 (maxPrefixZipperSequenceV2Mem!10 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!696269 () Bool)

(declare-fun e!438809 () Bool)

(declare-fun e!438806 () Bool)

(declare-fun lt!285877 () MutLongMap!825)

(assert (=> b!696269 (= e!438809 (and e!438806 ((_ is LongMap!825) lt!285877)))))

(assert (=> b!696269 (= lt!285877 (v!17784 (underlying!1834 (cache!1184 cacheDown!515))))))

(declare-fun b!696270 () Bool)

(declare-fun e!438803 () Bool)

(declare-fun e!438804 () Bool)

(declare-fun tp!211414 () Bool)

(assert (=> b!696270 (= e!438803 (and e!438804 tp!211414))))

(declare-fun tp!211411 () Bool)

(declare-fun e!438813 () Bool)

(declare-fun tp!211396 () Bool)

(declare-fun array_inv!1013 (array!3045) Bool)

(declare-fun array_inv!1014 (array!3049) Bool)

(assert (=> b!696272 (= e!438807 (and tp!211394 tp!211396 tp!211411 (array_inv!1013 (_keys!1118 (v!17783 (underlying!1833 (v!17784 (underlying!1834 (cache!1184 cacheDown!515))))))) (array_inv!1014 (_values!1103 (v!17783 (underlying!1833 (v!17784 (underlying!1834 (cache!1184 cacheDown!515))))))) e!438813))))

(declare-fun b!696273 () Bool)

(declare-fun e!438820 () Bool)

(declare-fun e!438811 () Bool)

(assert (=> b!696273 (= e!438820 e!438811)))

(declare-fun mapNonEmpty!3308 () Bool)

(declare-fun mapRes!3309 () Bool)

(declare-fun tp!211415 () Bool)

(declare-fun tp!211388 () Bool)

(assert (=> mapNonEmpty!3308 (= mapRes!3309 (and tp!211415 tp!211388))))

(declare-fun mapValue!3308 () List!7659)

(declare-fun mapKey!3309 () (_ BitVec 32))

(declare-fun mapRest!3308 () (Array (_ BitVec 32) List!7659))

(assert (=> mapNonEmpty!3308 (= (arr!1377 (_values!1104 (v!17781 (underlying!1831 (v!17782 (underlying!1832 (cache!1183 cacheUp!502))))))) (store mapRest!3308 mapKey!3309 mapValue!3308))))

(declare-fun mapIsEmpty!3308 () Bool)

(assert (=> mapIsEmpty!3308 mapRes!3309))

(declare-fun b!696274 () Bool)

(declare-fun res!315106 () Bool)

(assert (=> b!696274 (=> (not res!315106) (not e!438822))))

(declare-datatypes ((List!7661 0))(
  ( (Nil!7647) (Cons!7647 (h!13048 Token!2744) (t!87484 List!7661)) )
))
(declare-datatypes ((IArray!5367 0))(
  ( (IArray!5368 (innerList!2741 List!7661)) )
))
(declare-datatypes ((Conc!2683 0))(
  ( (Node!2683 (left!6054 Conc!2683) (right!6384 Conc!2683) (csize!5596 Int) (cheight!2894 Int)) (Leaf!3967 (xs!5336 IArray!5367) (csize!5597 Int)) (Empty!2683) )
))
(declare-datatypes ((BalanceConc!5378 0))(
  ( (BalanceConc!5379 (c!121897 Conc!2683)) )
))
(declare-datatypes ((tuple2!8140 0))(
  ( (tuple2!8141 (_1!4518 BalanceConc!5378) (_2!4518 BalanceConc!5376)) )
))
(declare-fun lt!285879 () tuple2!8140)

(declare-fun lt!285884 () tuple2!8140)

(assert (=> b!696274 (= res!315106 (= (list!3188 (_2!4518 lt!285879)) (list!3188 (_2!4518 lt!285884))))))

(declare-fun b!696275 () Bool)

(assert (=> b!696275 (= e!438808 true)))

(declare-fun lt!285889 () tuple4!142)

(assert (=> b!696275 (= lt!285889 (maxPrefixZipperSequenceV2Mem!10 thiss!12529 rules!1486 input!870 totalInput!378 (_2!4517 lt!285887) (_3!447 lt!285887) (_4!71 lt!285887)))))

(declare-fun lt!285878 () tuple2!8140)

(declare-fun lexRec!177 (LexerInterface!1335 List!7660 BalanceConc!5376) tuple2!8140)

(assert (=> b!696275 (= lt!285878 (lexRec!177 thiss!12529 rules!1486 (_2!4514 (v!17780 (_1!4517 lt!285887)))))))

(declare-fun b!696276 () Bool)

(declare-fun res!315096 () Bool)

(assert (=> b!696276 (=> (not res!315096) (not e!438822))))

(declare-fun valid!700 (CacheUp!416) Bool)

(assert (=> b!696276 (= res!315096 (valid!700 cacheUp!502))))

(declare-fun b!696277 () Bool)

(declare-fun e!438797 () Bool)

(declare-fun e!438801 () Bool)

(declare-fun lt!285881 () MutLongMap!823)

(assert (=> b!696277 (= e!438797 (and e!438801 ((_ is LongMap!823) lt!285881)))))

(assert (=> b!696277 (= lt!285881 (v!17779 (underlying!1830 (cache!1182 cacheFindLongestMatch!74))))))

(declare-fun b!696278 () Bool)

(declare-fun e!438830 () Bool)

(assert (=> b!696278 (= e!438830 e!438822)))

(declare-fun res!315101 () Bool)

(assert (=> b!696278 (=> (not res!315101) (not e!438822))))

(declare-fun acc!372 () BalanceConc!5378)

(declare-fun list!3189 (BalanceConc!5378) List!7661)

(declare-fun ++!1989 (BalanceConc!5378 BalanceConc!5378) BalanceConc!5378)

(assert (=> b!696278 (= res!315101 (= (list!3189 (_1!4518 lt!285879)) (list!3189 (++!1989 acc!372 (_1!4518 lt!285884)))))))

(assert (=> b!696278 (= lt!285884 (lexRec!177 thiss!12529 rules!1486 input!870))))

(assert (=> b!696278 (= lt!285879 (lexRec!177 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!696279 () Bool)

(declare-fun tp!211393 () Bool)

(declare-fun mapRes!3308 () Bool)

(assert (=> b!696279 (= e!438813 (and tp!211393 mapRes!3308))))

(declare-fun condMapEmpty!3309 () Bool)

(declare-fun mapDefault!3309 () List!7657)

(assert (=> b!696279 (= condMapEmpty!3309 (= (arr!1376 (_values!1103 (v!17783 (underlying!1833 (v!17784 (underlying!1834 (cache!1184 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7657)) mapDefault!3309)))))

(declare-fun b!696280 () Bool)

(declare-fun res!315104 () Bool)

(assert (=> b!696280 (=> (not res!315104) (not e!438800))))

(declare-fun rulesInvariant!1262 (LexerInterface!1335 List!7660) Bool)

(assert (=> b!696280 (= res!315104 (rulesInvariant!1262 thiss!12529 rules!1486))))

(declare-fun e!438798 () Bool)

(declare-fun e!438824 () Bool)

(declare-fun b!696281 () Bool)

(declare-fun e!438819 () Bool)

(declare-fun inv!9768 (BalanceConc!5376) Bool)

(assert (=> b!696281 (= e!438819 (and e!438824 (inv!9768 (totalInput!1824 cacheFindLongestMatch!74)) e!438798))))

(declare-fun mapIsEmpty!3309 () Bool)

(declare-fun mapRes!3310 () Bool)

(assert (=> mapIsEmpty!3309 mapRes!3310))

(declare-fun e!438818 () Bool)

(declare-fun tp!211397 () Bool)

(declare-fun tp!211403 () Bool)

(declare-fun e!438795 () Bool)

(declare-fun array_inv!1015 (array!3051) Bool)

(assert (=> b!696282 (= e!438818 (and tp!211416 tp!211397 tp!211403 (array_inv!1013 (_keys!1119 (v!17781 (underlying!1831 (v!17782 (underlying!1832 (cache!1183 cacheUp!502))))))) (array_inv!1015 (_values!1104 (v!17781 (underlying!1831 (v!17782 (underlying!1832 (cache!1183 cacheUp!502))))))) e!438795))))

(declare-fun b!696283 () Bool)

(declare-fun e!438796 () Bool)

(declare-fun tp!211395 () Bool)

(declare-fun inv!9769 (Conc!2683) Bool)

(assert (=> b!696283 (= e!438796 (and (inv!9769 (c!121897 acc!372)) tp!211395))))

(assert (=> b!696284 (= e!438824 (and e!438797 tp!211417))))

(declare-fun mapNonEmpty!3309 () Bool)

(declare-fun tp!211408 () Bool)

(declare-fun tp!211410 () Bool)

(assert (=> mapNonEmpty!3309 (= mapRes!3308 (and tp!211408 tp!211410))))

(declare-fun mapValue!3309 () List!7657)

(declare-fun mapRest!3310 () (Array (_ BitVec 32) List!7657))

(declare-fun mapKey!3310 () (_ BitVec 32))

(assert (=> mapNonEmpty!3309 (= (arr!1376 (_values!1103 (v!17783 (underlying!1833 (v!17784 (underlying!1834 (cache!1184 cacheDown!515))))))) (store mapRest!3310 mapKey!3310 mapValue!3309))))

(declare-fun res!315109 () Bool)

(assert (=> start!66488 (=> (not res!315109) (not e!438800))))

(assert (=> start!66488 (= res!315109 ((_ is Lexer!1333) thiss!12529))))

(assert (=> start!66488 e!438800))

(declare-fun inv!9770 (BalanceConc!5378) Bool)

(assert (=> start!66488 (and (inv!9770 acc!372) e!438796)))

(declare-fun e!438831 () Bool)

(assert (=> start!66488 (and (inv!9768 treated!50) e!438831)))

(declare-fun e!438829 () Bool)

(assert (=> start!66488 (and (inv!9768 totalInput!378) e!438829)))

(declare-fun e!438805 () Bool)

(assert (=> start!66488 (and (inv!9768 input!870) e!438805)))

(assert (=> start!66488 e!438803))

(assert (=> start!66488 true))

(declare-fun inv!9771 (CacheUp!416) Bool)

(assert (=> start!66488 (and (inv!9771 cacheUp!502) e!438820)))

(declare-fun inv!9772 (CacheDown!422) Bool)

(assert (=> start!66488 (and (inv!9772 cacheDown!515) e!438826)))

(declare-fun inv!9773 (CacheFindLongestMatch!78) Bool)

(assert (=> start!66488 (and (inv!9773 cacheFindLongestMatch!74) e!438819)))

(declare-fun b!696271 () Bool)

(declare-fun e!438802 () Bool)

(declare-fun e!438810 () Bool)

(assert (=> b!696271 (= e!438802 e!438810)))

(declare-fun b!696285 () Bool)

(declare-fun res!315100 () Bool)

(assert (=> b!696285 (=> (not res!315100) (not e!438800))))

(declare-fun isEmpty!4909 (List!7660) Bool)

(assert (=> b!696285 (= res!315100 (not (isEmpty!4909 rules!1486)))))

(declare-fun b!696286 () Bool)

(declare-fun res!315107 () Bool)

(assert (=> b!696286 (=> (not res!315107) (not e!438822))))

(assert (=> b!696286 (= res!315107 (= (totalInput!1824 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!696287 () Bool)

(assert (=> b!696287 (= e!438806 e!438821)))

(declare-fun b!696288 () Bool)

(assert (=> b!696288 (= e!438810 e!438818)))

(declare-fun b!696289 () Bool)

(declare-fun tp!211390 () Bool)

(assert (=> b!696289 (= e!438795 (and tp!211390 mapRes!3309))))

(declare-fun condMapEmpty!3310 () Bool)

(declare-fun mapDefault!3310 () List!7659)

(assert (=> b!696289 (= condMapEmpty!3310 (= (arr!1377 (_values!1104 (v!17781 (underlying!1831 (v!17782 (underlying!1832 (cache!1183 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7659)) mapDefault!3310)))))

(declare-fun mapNonEmpty!3310 () Bool)

(declare-fun tp!211404 () Bool)

(declare-fun tp!211401 () Bool)

(assert (=> mapNonEmpty!3310 (= mapRes!3310 (and tp!211404 tp!211401))))

(declare-fun mapRest!3309 () (Array (_ BitVec 32) List!7656))

(declare-fun mapKey!3308 () (_ BitVec 32))

(declare-fun mapValue!3310 () List!7656)

(assert (=> mapNonEmpty!3310 (= (arr!1375 (_values!1102 (v!17778 (underlying!1829 (v!17779 (underlying!1830 (cache!1182 cacheFindLongestMatch!74))))))) (store mapRest!3309 mapKey!3308 mapValue!3310))))

(declare-fun b!696290 () Bool)

(assert (=> b!696290 (= e!438793 e!438830)))

(declare-fun res!315099 () Bool)

(assert (=> b!696290 (=> (not res!315099) (not e!438830))))

(declare-fun lt!285888 () tuple2!8140)

(assert (=> b!696290 (= res!315099 (= (list!3189 (_1!4518 lt!285888)) (list!3189 acc!372)))))

(assert (=> b!696290 (= lt!285888 (lexRec!177 thiss!12529 rules!1486 treated!50))))

(declare-fun b!696291 () Bool)

(declare-fun tp!211406 () Bool)

(declare-fun inv!9774 (Conc!2682) Bool)

(assert (=> b!696291 (= e!438798 (and (inv!9774 (c!121896 (totalInput!1824 cacheFindLongestMatch!74))) tp!211406))))

(declare-fun mapIsEmpty!3310 () Bool)

(assert (=> mapIsEmpty!3310 mapRes!3308))

(declare-fun b!696292 () Bool)

(declare-fun tp!211405 () Bool)

(assert (=> b!696292 (= e!438805 (and (inv!9774 (c!121896 input!870)) tp!211405))))

(assert (=> b!696293 (= e!438825 (and e!438809 tp!211391))))

(declare-fun b!696294 () Bool)

(declare-fun e!438828 () Bool)

(declare-fun tp!211407 () Bool)

(assert (=> b!696294 (= e!438828 (and tp!211407 mapRes!3310))))

(declare-fun condMapEmpty!3308 () Bool)

(declare-fun mapDefault!3308 () List!7656)

(assert (=> b!696294 (= condMapEmpty!3308 (= (arr!1375 (_values!1102 (v!17778 (underlying!1829 (v!17779 (underlying!1830 (cache!1182 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7656)) mapDefault!3308)))))

(declare-fun b!696295 () Bool)

(declare-fun e!438817 () Bool)

(declare-fun e!438812 () Bool)

(assert (=> b!696295 (= e!438817 e!438812)))

(declare-fun b!696296 () Bool)

(declare-fun e!438816 () Bool)

(declare-fun tp!211389 () Bool)

(declare-fun inv!9762 (String!9556) Bool)

(declare-fun inv!9775 (TokenValueInjection!2868) Bool)

(assert (=> b!696296 (= e!438804 (and tp!211389 (inv!9762 (tag!1784 (h!13047 rules!1486))) (inv!9775 (transformation!1522 (h!13047 rules!1486))) e!438816))))

(declare-fun b!696297 () Bool)

(assert (=> b!696297 (= e!438822 (not e!438823))))

(declare-fun res!315102 () Bool)

(assert (=> b!696297 (=> res!315102 e!438823)))

(declare-fun isSuffix!141 (List!7654 List!7654) Bool)

(assert (=> b!696297 (= res!315102 (not (isSuffix!141 lt!285883 lt!285880)))))

(assert (=> b!696297 (isSuffix!141 lt!285883 lt!285882)))

(declare-datatypes ((Unit!12694 0))(
  ( (Unit!12695) )
))
(declare-fun lt!285885 () Unit!12694)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!141 (List!7654 List!7654) Unit!12694)

(assert (=> b!696297 (= lt!285885 (lemmaConcatTwoListThenFSndIsSuffix!141 lt!285886 lt!285883))))

(declare-fun b!696298 () Bool)

(declare-fun res!315105 () Bool)

(assert (=> b!696298 (=> (not res!315105) (not e!438830))))

(declare-fun isEmpty!4910 (List!7654) Bool)

(assert (=> b!696298 (= res!315105 (isEmpty!4910 (list!3188 (_2!4518 lt!285888))))))

(declare-fun b!696299 () Bool)

(declare-fun tp!211400 () Bool)

(assert (=> b!696299 (= e!438831 (and (inv!9774 (c!121896 treated!50)) tp!211400))))

(declare-fun tp!211399 () Bool)

(declare-fun tp!211413 () Bool)

(declare-fun array_inv!1016 (array!3047) Bool)

(assert (=> b!696300 (= e!438812 (and tp!211409 tp!211413 tp!211399 (array_inv!1013 (_keys!1117 (v!17778 (underlying!1829 (v!17779 (underlying!1830 (cache!1182 cacheFindLongestMatch!74))))))) (array_inv!1016 (_values!1102 (v!17778 (underlying!1829 (v!17779 (underlying!1830 (cache!1182 cacheFindLongestMatch!74))))))) e!438828))))

(declare-fun b!696301 () Bool)

(declare-fun e!438815 () Bool)

(declare-fun lt!285890 () MutLongMap!824)

(assert (=> b!696301 (= e!438815 (and e!438802 ((_ is LongMap!824) lt!285890)))))

(assert (=> b!696301 (= lt!285890 (v!17782 (underlying!1832 (cache!1183 cacheUp!502))))))

(assert (=> b!696302 (= e!438811 (and e!438815 tp!211392))))

(declare-fun b!696303 () Bool)

(declare-fun tp!211398 () Bool)

(assert (=> b!696303 (= e!438829 (and (inv!9774 (c!121896 totalInput!378)) tp!211398))))

(assert (=> b!696304 (= e!438816 (and tp!211412 tp!211402))))

(declare-fun b!696305 () Bool)

(assert (=> b!696305 (= e!438801 e!438817)))

(declare-fun b!696306 () Bool)

(declare-fun res!315097 () Bool)

(assert (=> b!696306 (=> (not res!315097) (not e!438822))))

(declare-fun valid!701 (CacheDown!422) Bool)

(assert (=> b!696306 (= res!315097 (valid!701 cacheDown!515))))

(assert (= (and start!66488 res!315109) b!696285))

(assert (= (and b!696285 res!315100) b!696280))

(assert (= (and b!696280 res!315104) b!696265))

(assert (= (and b!696265 res!315098) b!696290))

(assert (= (and b!696290 res!315099) b!696298))

(assert (= (and b!696298 res!315105) b!696278))

(assert (= (and b!696278 res!315101) b!696274))

(assert (= (and b!696274 res!315106) b!696276))

(assert (= (and b!696276 res!315096) b!696306))

(assert (= (and b!696306 res!315097) b!696264))

(assert (= (and b!696264 res!315108) b!696286))

(assert (= (and b!696286 res!315107) b!696297))

(assert (= (and b!696297 (not res!315102)) b!696268))

(assert (= (and b!696268 (not res!315103)) b!696275))

(assert (= start!66488 b!696283))

(assert (= start!66488 b!696299))

(assert (= start!66488 b!696303))

(assert (= start!66488 b!696292))

(assert (= b!696296 b!696304))

(assert (= b!696270 b!696296))

(assert (= (and start!66488 ((_ is Cons!7646) rules!1486)) b!696270))

(assert (= (and b!696289 condMapEmpty!3310) mapIsEmpty!3308))

(assert (= (and b!696289 (not condMapEmpty!3310)) mapNonEmpty!3308))

(assert (= b!696282 b!696289))

(assert (= b!696288 b!696282))

(assert (= b!696271 b!696288))

(assert (= (and b!696301 ((_ is LongMap!824) (v!17782 (underlying!1832 (cache!1183 cacheUp!502))))) b!696271))

(assert (= b!696302 b!696301))

(assert (= (and b!696273 ((_ is HashMap!796) (cache!1183 cacheUp!502))) b!696302))

(assert (= start!66488 b!696273))

(assert (= (and b!696279 condMapEmpty!3309) mapIsEmpty!3310))

(assert (= (and b!696279 (not condMapEmpty!3309)) mapNonEmpty!3309))

(assert (= b!696272 b!696279))

(assert (= b!696267 b!696272))

(assert (= b!696287 b!696267))

(assert (= (and b!696269 ((_ is LongMap!825) (v!17784 (underlying!1834 (cache!1184 cacheDown!515))))) b!696287))

(assert (= b!696293 b!696269))

(assert (= (and b!696266 ((_ is HashMap!797) (cache!1184 cacheDown!515))) b!696293))

(assert (= start!66488 b!696266))

(assert (= (and b!696294 condMapEmpty!3308) mapIsEmpty!3309))

(assert (= (and b!696294 (not condMapEmpty!3308)) mapNonEmpty!3310))

(assert (= b!696300 b!696294))

(assert (= b!696295 b!696300))

(assert (= b!696305 b!696295))

(assert (= (and b!696277 ((_ is LongMap!823) (v!17779 (underlying!1830 (cache!1182 cacheFindLongestMatch!74))))) b!696305))

(assert (= b!696284 b!696277))

(assert (= (and b!696281 ((_ is HashMap!795) (cache!1182 cacheFindLongestMatch!74))) b!696284))

(assert (= b!696281 b!696291))

(assert (= start!66488 b!696281))

(declare-fun m!952059 () Bool)

(assert (=> b!696291 m!952059))

(declare-fun m!952061 () Bool)

(assert (=> b!696274 m!952061))

(declare-fun m!952063 () Bool)

(assert (=> b!696274 m!952063))

(declare-fun m!952065 () Bool)

(assert (=> mapNonEmpty!3309 m!952065))

(declare-fun m!952067 () Bool)

(assert (=> mapNonEmpty!3308 m!952067))

(declare-fun m!952069 () Bool)

(assert (=> b!696299 m!952069))

(declare-fun m!952071 () Bool)

(assert (=> b!696285 m!952071))

(declare-fun m!952073 () Bool)

(assert (=> b!696282 m!952073))

(declare-fun m!952075 () Bool)

(assert (=> b!696282 m!952075))

(declare-fun m!952077 () Bool)

(assert (=> b!696264 m!952077))

(declare-fun m!952079 () Bool)

(assert (=> b!696298 m!952079))

(assert (=> b!696298 m!952079))

(declare-fun m!952081 () Bool)

(assert (=> b!696298 m!952081))

(declare-fun m!952083 () Bool)

(assert (=> b!696268 m!952083))

(declare-fun m!952085 () Bool)

(assert (=> b!696280 m!952085))

(declare-fun m!952087 () Bool)

(assert (=> b!696283 m!952087))

(declare-fun m!952089 () Bool)

(assert (=> b!696300 m!952089))

(declare-fun m!952091 () Bool)

(assert (=> b!696300 m!952091))

(declare-fun m!952093 () Bool)

(assert (=> b!696265 m!952093))

(declare-fun m!952095 () Bool)

(assert (=> b!696265 m!952095))

(declare-fun m!952097 () Bool)

(assert (=> b!696265 m!952097))

(declare-fun m!952099 () Bool)

(assert (=> b!696265 m!952099))

(declare-fun m!952101 () Bool)

(assert (=> b!696278 m!952101))

(declare-fun m!952103 () Bool)

(assert (=> b!696278 m!952103))

(declare-fun m!952105 () Bool)

(assert (=> b!696278 m!952105))

(assert (=> b!696278 m!952101))

(declare-fun m!952107 () Bool)

(assert (=> b!696278 m!952107))

(declare-fun m!952109 () Bool)

(assert (=> b!696278 m!952109))

(declare-fun m!952111 () Bool)

(assert (=> b!696290 m!952111))

(declare-fun m!952113 () Bool)

(assert (=> b!696290 m!952113))

(declare-fun m!952115 () Bool)

(assert (=> b!696290 m!952115))

(declare-fun m!952117 () Bool)

(assert (=> start!66488 m!952117))

(declare-fun m!952119 () Bool)

(assert (=> start!66488 m!952119))

(declare-fun m!952121 () Bool)

(assert (=> start!66488 m!952121))

(declare-fun m!952123 () Bool)

(assert (=> start!66488 m!952123))

(declare-fun m!952125 () Bool)

(assert (=> start!66488 m!952125))

(declare-fun m!952127 () Bool)

(assert (=> start!66488 m!952127))

(declare-fun m!952129 () Bool)

(assert (=> start!66488 m!952129))

(declare-fun m!952131 () Bool)

(assert (=> b!696272 m!952131))

(declare-fun m!952133 () Bool)

(assert (=> b!696272 m!952133))

(declare-fun m!952135 () Bool)

(assert (=> b!696306 m!952135))

(declare-fun m!952137 () Bool)

(assert (=> b!696297 m!952137))

(declare-fun m!952139 () Bool)

(assert (=> b!696297 m!952139))

(declare-fun m!952141 () Bool)

(assert (=> b!696297 m!952141))

(declare-fun m!952143 () Bool)

(assert (=> b!696296 m!952143))

(declare-fun m!952145 () Bool)

(assert (=> b!696296 m!952145))

(declare-fun m!952147 () Bool)

(assert (=> b!696292 m!952147))

(declare-fun m!952149 () Bool)

(assert (=> b!696303 m!952149))

(declare-fun m!952151 () Bool)

(assert (=> b!696276 m!952151))

(declare-fun m!952153 () Bool)

(assert (=> b!696275 m!952153))

(declare-fun m!952155 () Bool)

(assert (=> b!696275 m!952155))

(declare-fun m!952157 () Bool)

(assert (=> b!696281 m!952157))

(declare-fun m!952159 () Bool)

(assert (=> mapNonEmpty!3310 m!952159))

(check-sat (not b!696285) (not b!696282) (not start!66488) (not b!696265) b_and!63749 (not mapNonEmpty!3310) b_and!63743 (not b!696268) (not b_next!20023) (not b!696290) (not b_next!20013) (not b_next!20025) (not b!696276) (not b!696270) (not b!696289) (not b!696291) (not b!696283) (not b!696303) b_and!63747 (not b!696300) (not b_next!20015) (not b_next!20019) (not b!696280) (not mapNonEmpty!3309) b_and!63753 b_and!63751 (not b!696297) (not b!696298) (not b!696281) (not b!696306) (not b!696274) (not b!696294) (not b_next!20017) (not mapNonEmpty!3308) (not b!696278) (not b!696296) (not b!696292) (not b!696264) b_and!63757 (not b!696272) b_and!63745 (not b!696279) (not b_next!20021) (not b!696275) (not b!696299) (not b_next!20027) b_and!63755)
(check-sat b_and!63747 b_and!63749 b_and!63743 (not b_next!20023) (not b_next!20013) (not b_next!20017) b_and!63757 (not b_next!20025) b_and!63745 (not b_next!20021) (not b_next!20015) (not b_next!20019) b_and!63753 b_and!63751 (not b_next!20027) b_and!63755)
