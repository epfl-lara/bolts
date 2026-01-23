; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66304 () Bool)

(assert start!66304)

(declare-fun b!694294 () Bool)

(declare-fun b_free!19809 () Bool)

(declare-fun b_next!19873 () Bool)

(assert (=> b!694294 (= b_free!19809 (not b_next!19873))))

(declare-fun tp!210071 () Bool)

(declare-fun b_and!63603 () Bool)

(assert (=> b!694294 (= tp!210071 b_and!63603)))

(declare-fun b!694292 () Bool)

(declare-fun b_free!19811 () Bool)

(declare-fun b_next!19875 () Bool)

(assert (=> b!694292 (= b_free!19811 (not b_next!19875))))

(declare-fun tp!210060 () Bool)

(declare-fun b_and!63605 () Bool)

(assert (=> b!694292 (= tp!210060 b_and!63605)))

(declare-fun b_free!19813 () Bool)

(declare-fun b_next!19877 () Bool)

(assert (=> b!694292 (= b_free!19813 (not b_next!19877))))

(declare-fun tp!210053 () Bool)

(declare-fun b_and!63607 () Bool)

(assert (=> b!694292 (= tp!210053 b_and!63607)))

(declare-fun b!694324 () Bool)

(declare-fun b_free!19815 () Bool)

(declare-fun b_next!19879 () Bool)

(assert (=> b!694324 (= b_free!19815 (not b_next!19879))))

(declare-fun tp!210063 () Bool)

(declare-fun b_and!63609 () Bool)

(assert (=> b!694324 (= tp!210063 b_and!63609)))

(declare-fun b!694323 () Bool)

(declare-fun b_free!19817 () Bool)

(declare-fun b_next!19881 () Bool)

(assert (=> b!694323 (= b_free!19817 (not b_next!19881))))

(declare-fun tp!210055 () Bool)

(declare-fun b_and!63611 () Bool)

(assert (=> b!694323 (= tp!210055 b_and!63611)))

(declare-fun b!694299 () Bool)

(declare-fun b_free!19819 () Bool)

(declare-fun b_next!19883 () Bool)

(assert (=> b!694299 (= b_free!19819 (not b_next!19883))))

(declare-fun tp!210056 () Bool)

(declare-fun b_and!63613 () Bool)

(assert (=> b!694299 (= tp!210056 b_and!63613)))

(declare-fun b!694307 () Bool)

(declare-fun b_free!19821 () Bool)

(declare-fun b_next!19885 () Bool)

(assert (=> b!694307 (= b_free!19821 (not b_next!19885))))

(declare-fun tp!210069 () Bool)

(declare-fun b_and!63615 () Bool)

(assert (=> b!694307 (= tp!210069 b_and!63615)))

(declare-fun b!694289 () Bool)

(declare-fun b_free!19823 () Bool)

(declare-fun b_next!19887 () Bool)

(assert (=> b!694289 (= b_free!19823 (not b_next!19887))))

(declare-fun tp!210049 () Bool)

(declare-fun b_and!63617 () Bool)

(assert (=> b!694289 (= tp!210049 b_and!63617)))

(declare-fun b!694284 () Bool)

(declare-fun e!437215 () Bool)

(declare-fun e!437227 () Bool)

(assert (=> b!694284 (= e!437215 e!437227)))

(declare-fun res!314467 () Bool)

(assert (=> b!694284 (=> (not res!314467) (not e!437227))))

(declare-datatypes ((List!7587 0))(
  ( (Nil!7573) (Cons!7573 (h!12974 (_ BitVec 16)) (t!87410 List!7587)) )
))
(declare-datatypes ((TokenValue!1558 0))(
  ( (FloatLiteralValue!3116 (text!11351 List!7587)) (TokenValueExt!1557 (__x!5509 Int)) (Broken!7790 (value!48788 List!7587)) (Object!1571) (End!1558) (Def!1558) (Underscore!1558) (Match!1558) (Else!1558) (Error!1558) (Case!1558) (If!1558) (Extends!1558) (Abstract!1558) (Class!1558) (Val!1558) (DelimiterValue!3116 (del!1618 List!7587)) (KeywordValue!1564 (value!48789 List!7587)) (CommentValue!3116 (value!48790 List!7587)) (WhitespaceValue!3116 (value!48791 List!7587)) (IndentationValue!1558 (value!48792 List!7587)) (String!9515) (Int32!1558) (Broken!7791 (value!48793 List!7587)) (Boolean!1559) (Unit!12675) (OperatorValue!1561 (op!1618 List!7587)) (IdentifierValue!3116 (value!48794 List!7587)) (IdentifierValue!3117 (value!48795 List!7587)) (WhitespaceValue!3117 (value!48796 List!7587)) (True!3116) (False!3116) (Broken!7792 (value!48797 List!7587)) (Broken!7793 (value!48798 List!7587)) (True!3117) (RightBrace!1558) (RightBracket!1558) (Colon!1558) (Null!1558) (Comma!1558) (LeftBracket!1558) (False!3117) (LeftBrace!1558) (ImaginaryLiteralValue!1558 (text!11352 List!7587)) (StringLiteralValue!4674 (value!48799 List!7587)) (EOFValue!1558 (value!48800 List!7587)) (IdentValue!1558 (value!48801 List!7587)) (DelimiterValue!3117 (value!48802 List!7587)) (DedentValue!1558 (value!48803 List!7587)) (NewLineValue!1558 (value!48804 List!7587)) (IntegerValue!4674 (value!48805 (_ BitVec 32)) (text!11353 List!7587)) (IntegerValue!4675 (value!48806 Int) (text!11354 List!7587)) (Times!1558) (Or!1558) (Equal!1558) (Minus!1558) (Broken!7794 (value!48807 List!7587)) (And!1558) (Div!1558) (LessEqual!1558) (Mod!1558) (Concat!3411) (Not!1558) (Plus!1558) (SpaceValue!1558 (value!48808 List!7587)) (IntegerValue!4676 (value!48809 Int) (text!11355 List!7587)) (StringLiteralValue!4675 (text!11356 List!7587)) (FloatLiteralValue!3117 (text!11357 List!7587)) (BytesLiteralValue!1558 (value!48810 List!7587)) (CommentValue!3117 (value!48811 List!7587)) (StringLiteralValue!4676 (value!48812 List!7587)) (ErrorTokenValue!1558 (msg!1619 List!7587)) )
))
(declare-datatypes ((C!4308 0))(
  ( (C!4309 (val!2384 Int)) )
))
(declare-datatypes ((Regex!1853 0))(
  ( (ElementMatch!1853 (c!121778 C!4308)) (Concat!3412 (regOne!4218 Regex!1853) (regTwo!4218 Regex!1853)) (EmptyExpr!1853) (Star!1853 (reg!2182 Regex!1853)) (EmptyLang!1853) (Union!1853 (regOne!4219 Regex!1853) (regTwo!4219 Regex!1853)) )
))
(declare-datatypes ((List!7588 0))(
  ( (Nil!7574) (Cons!7574 (h!12975 C!4308) (t!87411 List!7588)) )
))
(declare-datatypes ((IArray!5333 0))(
  ( (IArray!5334 (innerList!2724 List!7588)) )
))
(declare-datatypes ((Conc!2666 0))(
  ( (Node!2666 (left!6027 Conc!2666) (right!6357 Conc!2666) (csize!5562 Int) (cheight!2877 Int)) (Leaf!3946 (xs!5319 IArray!5333) (csize!5563 Int)) (Empty!2666) )
))
(declare-datatypes ((BalanceConc!5344 0))(
  ( (BalanceConc!5345 (c!121779 Conc!2666)) )
))
(declare-datatypes ((String!9516 0))(
  ( (String!9517 (value!48813 String)) )
))
(declare-datatypes ((TokenValueInjection!2852 0))(
  ( (TokenValueInjection!2853 (toValue!2478 Int) (toChars!2337 Int)) )
))
(declare-datatypes ((Rule!2828 0))(
  ( (Rule!2829 (regex!1514 Regex!1853) (tag!1776 String!9516) (isSeparator!1514 Bool) (transformation!1514 TokenValueInjection!2852)) )
))
(declare-datatypes ((Token!2728 0))(
  ( (Token!2729 (value!48814 TokenValue!1558) (rule!2553 Rule!2828) (size!6183 Int) (originalCharacters!1789 List!7588)) )
))
(declare-datatypes ((List!7589 0))(
  ( (Nil!7575) (Cons!7575 (h!12976 Token!2728) (t!87412 List!7589)) )
))
(declare-datatypes ((IArray!5335 0))(
  ( (IArray!5336 (innerList!2725 List!7589)) )
))
(declare-datatypes ((Conc!2667 0))(
  ( (Node!2667 (left!6028 Conc!2667) (right!6358 Conc!2667) (csize!5564 Int) (cheight!2878 Int)) (Leaf!3947 (xs!5320 IArray!5335) (csize!5565 Int)) (Empty!2667) )
))
(declare-datatypes ((BalanceConc!5346 0))(
  ( (BalanceConc!5347 (c!121780 Conc!2667)) )
))
(declare-fun acc!372 () BalanceConc!5346)

(declare-datatypes ((tuple2!8012 0))(
  ( (tuple2!8013 (_1!4434 BalanceConc!5346) (_2!4434 BalanceConc!5344)) )
))
(declare-fun lt!285372 () tuple2!8012)

(declare-fun lt!285380 () tuple2!8012)

(declare-fun list!3167 (BalanceConc!5346) List!7589)

(declare-fun ++!1971 (BalanceConc!5346 BalanceConc!5346) BalanceConc!5346)

(assert (=> b!694284 (= res!314467 (= (list!3167 (_1!4434 lt!285372)) (list!3167 (++!1971 acc!372 (_1!4434 lt!285380)))))))

(declare-fun input!870 () BalanceConc!5344)

(declare-datatypes ((List!7590 0))(
  ( (Nil!7576) (Cons!7576 (h!12977 Rule!2828) (t!87413 List!7590)) )
))
(declare-fun rules!1486 () List!7590)

(declare-datatypes ((LexerInterface!1327 0))(
  ( (LexerInterfaceExt!1324 (__x!5510 Int)) (Lexer!1325) )
))
(declare-fun thiss!12529 () LexerInterface!1327)

(declare-fun lexRec!169 (LexerInterface!1327 List!7590 BalanceConc!5344) tuple2!8012)

(assert (=> b!694284 (= lt!285380 (lexRec!169 thiss!12529 rules!1486 input!870))))

(declare-fun totalInput!378 () BalanceConc!5344)

(assert (=> b!694284 (= lt!285372 (lexRec!169 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!694285 () Bool)

(declare-fun e!437230 () Bool)

(declare-fun e!437219 () Bool)

(declare-datatypes ((List!7591 0))(
  ( (Nil!7577) (Cons!7577 (h!12978 Regex!1853) (t!87414 List!7591)) )
))
(declare-datatypes ((Context!510 0))(
  ( (Context!511 (exprs!755 List!7591)) )
))
(declare-datatypes ((tuple3!734 0))(
  ( (tuple3!735 (_1!4435 Regex!1853) (_2!4435 Context!510) (_3!428 C!4308)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!8014 0))(
  ( (tuple2!8015 (_1!4436 tuple3!734) (_2!4436 (InoxSet Context!510))) )
))
(declare-datatypes ((List!7592 0))(
  ( (Nil!7578) (Cons!7578 (h!12979 tuple2!8014) (t!87415 List!7592)) )
))
(declare-datatypes ((array!2969 0))(
  ( (array!2970 (arr!1342 (Array (_ BitVec 32) (_ BitVec 64))) (size!6184 (_ BitVec 32))) )
))
(declare-datatypes ((array!2971 0))(
  ( (array!2972 (arr!1343 (Array (_ BitVec 32) List!7592)) (size!6185 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1598 0))(
  ( (LongMapFixedSize!1599 (defaultEntry!1155 Int) (mask!2610 (_ BitVec 32)) (extraKeys!1046 (_ BitVec 32)) (zeroValue!1056 List!7592) (minValue!1056 List!7592) (_size!1707 (_ BitVec 32)) (_keys!1093 array!2969) (_values!1078 array!2971) (_vacant!860 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3137 0))(
  ( (Cell!3138 (v!17723 LongMapFixedSize!1598)) )
))
(declare-datatypes ((MutLongMap!799 0))(
  ( (LongMap!799 (underlying!1781 Cell!3137)) (MutLongMapExt!798 (__x!5511 Int)) )
))
(declare-fun lt!285378 () MutLongMap!799)

(get-info :version)

(assert (=> b!694285 (= e!437230 (and e!437219 ((_ is LongMap!799) lt!285378)))))

(declare-datatypes ((Cell!3139 0))(
  ( (Cell!3140 (v!17724 MutLongMap!799)) )
))
(declare-datatypes ((Hashable!771 0))(
  ( (HashableExt!770 (__x!5512 Int)) )
))
(declare-datatypes ((MutableMap!771 0))(
  ( (MutableMapExt!770 (__x!5513 Int)) (HashMap!771 (underlying!1782 Cell!3139) (hashF!2679 Hashable!771) (_size!1708 (_ BitVec 32)) (defaultValue!922 Int)) )
))
(declare-datatypes ((CacheDown!406 0))(
  ( (CacheDown!407 (cache!1158 MutableMap!771)) )
))
(declare-fun cacheDown!515 () CacheDown!406)

(assert (=> b!694285 (= lt!285378 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))

(declare-fun mapIsEmpty!3209 () Bool)

(declare-fun mapRes!3209 () Bool)

(assert (=> mapIsEmpty!3209 mapRes!3209))

(declare-fun b!694286 () Bool)

(declare-fun res!314473 () Bool)

(assert (=> b!694286 (=> (not res!314473) (not e!437215))))

(declare-fun lt!285383 () tuple2!8012)

(declare-fun isEmpty!4894 (List!7588) Bool)

(declare-fun list!3168 (BalanceConc!5344) List!7588)

(assert (=> b!694286 (= res!314473 (isEmpty!4894 (list!3168 (_2!4434 lt!285383))))))

(declare-fun b!694287 () Bool)

(declare-fun e!437225 () Bool)

(declare-fun tp!210076 () Bool)

(declare-fun inv!9684 (Conc!2666) Bool)

(assert (=> b!694287 (= e!437225 (and (inv!9684 (c!121779 totalInput!378)) tp!210076))))

(declare-fun e!437241 () Bool)

(declare-fun e!437217 () Bool)

(assert (=> b!694289 (= e!437241 (and e!437217 tp!210049))))

(declare-fun b!694290 () Bool)

(declare-fun e!437213 () Bool)

(declare-fun e!437216 () Bool)

(assert (=> b!694290 (= e!437213 e!437216)))

(declare-fun res!314479 () Bool)

(assert (=> b!694290 (=> (not res!314479) (not e!437216))))

(declare-fun lt!285379 () List!7588)

(declare-fun lt!285374 () List!7588)

(assert (=> b!694290 (= res!314479 (= lt!285379 lt!285374))))

(declare-fun lt!285377 () List!7588)

(declare-fun lt!285382 () List!7588)

(declare-fun ++!1972 (List!7588 List!7588) List!7588)

(assert (=> b!694290 (= lt!285374 (++!1972 lt!285377 lt!285382))))

(assert (=> b!694290 (= lt!285379 (list!3168 totalInput!378))))

(assert (=> b!694290 (= lt!285382 (list!3168 input!870))))

(declare-fun treated!50 () BalanceConc!5344)

(assert (=> b!694290 (= lt!285377 (list!3168 treated!50))))

(declare-fun b!694291 () Bool)

(declare-fun e!437233 () Bool)

(declare-fun tp!210050 () Bool)

(assert (=> b!694291 (= e!437233 (and (inv!9684 (c!121779 input!870)) tp!210050))))

(declare-fun e!437206 () Bool)

(assert (=> b!694292 (= e!437206 (and tp!210060 tp!210053))))

(declare-fun b!694293 () Bool)

(declare-fun res!314470 () Bool)

(assert (=> b!694293 (=> (not res!314470) (not e!437227))))

(declare-fun valid!682 (CacheDown!406) Bool)

(assert (=> b!694293 (= res!314470 (valid!682 cacheDown!515))))

(declare-fun e!437226 () Bool)

(declare-fun e!437208 () Bool)

(assert (=> b!694294 (= e!437226 (and e!437208 tp!210071))))

(declare-fun b!694295 () Bool)

(declare-fun e!437232 () Bool)

(declare-fun e!437218 () Bool)

(assert (=> b!694295 (= e!437232 e!437218)))

(declare-fun b!694296 () Bool)

(declare-fun e!437229 () Bool)

(declare-datatypes ((Hashable!772 0))(
  ( (HashableExt!771 (__x!5514 Int)) )
))
(declare-datatypes ((tuple2!8016 0))(
  ( (tuple2!8017 (_1!4437 (InoxSet Context!510)) (_2!4437 Int)) )
))
(declare-datatypes ((tuple2!8018 0))(
  ( (tuple2!8019 (_1!4438 tuple2!8016) (_2!4438 Int)) )
))
(declare-datatypes ((List!7593 0))(
  ( (Nil!7579) (Cons!7579 (h!12980 tuple2!8018) (t!87416 List!7593)) )
))
(declare-datatypes ((array!2973 0))(
  ( (array!2974 (arr!1344 (Array (_ BitVec 32) List!7593)) (size!6186 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1600 0))(
  ( (LongMapFixedSize!1601 (defaultEntry!1156 Int) (mask!2611 (_ BitVec 32)) (extraKeys!1047 (_ BitVec 32)) (zeroValue!1057 List!7593) (minValue!1057 List!7593) (_size!1709 (_ BitVec 32)) (_keys!1094 array!2969) (_values!1079 array!2973) (_vacant!861 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3141 0))(
  ( (Cell!3142 (v!17725 LongMapFixedSize!1600)) )
))
(declare-datatypes ((MutLongMap!800 0))(
  ( (LongMap!800 (underlying!1783 Cell!3141)) (MutLongMapExt!799 (__x!5515 Int)) )
))
(declare-datatypes ((Cell!3143 0))(
  ( (Cell!3144 (v!17726 MutLongMap!800)) )
))
(declare-datatypes ((MutableMap!772 0))(
  ( (MutableMapExt!771 (__x!5516 Int)) (HashMap!772 (underlying!1784 Cell!3143) (hashF!2680 Hashable!772) (_size!1710 (_ BitVec 32)) (defaultValue!923 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!62 0))(
  ( (CacheFindLongestMatch!63 (cache!1159 MutableMap!772) (totalInput!1813 BalanceConc!5344)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!62)

(declare-fun tp!210048 () Bool)

(assert (=> b!694296 (= e!437229 (and (inv!9684 (c!121779 (totalInput!1813 cacheFindLongestMatch!74))) tp!210048))))

(declare-fun b!694297 () Bool)

(declare-fun res!314472 () Bool)

(assert (=> b!694297 (=> (not res!314472) (not e!437213))))

(declare-fun isEmpty!4895 (List!7590) Bool)

(assert (=> b!694297 (= res!314472 (not (isEmpty!4895 rules!1486)))))

(declare-fun mapIsEmpty!3210 () Bool)

(declare-fun mapRes!3210 () Bool)

(assert (=> mapIsEmpty!3210 mapRes!3210))

(declare-fun e!437214 () Bool)

(declare-fun b!694298 () Bool)

(declare-fun inv!9685 (BalanceConc!5344) Bool)

(assert (=> b!694298 (= e!437214 (and e!437226 (inv!9685 (totalInput!1813 cacheFindLongestMatch!74)) e!437229))))

(declare-fun e!437221 () Bool)

(assert (=> b!694299 (= e!437221 (and e!437230 tp!210056))))

(declare-fun mapNonEmpty!3209 () Bool)

(declare-fun tp!210068 () Bool)

(declare-fun tp!210074 () Bool)

(assert (=> mapNonEmpty!3209 (= mapRes!3209 (and tp!210068 tp!210074))))

(declare-fun mapRest!3211 () (Array (_ BitVec 32) List!7592))

(declare-fun mapValue!3209 () List!7592)

(declare-fun mapKey!3209 () (_ BitVec 32))

(assert (=> mapNonEmpty!3209 (= (arr!1343 (_values!1078 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) (store mapRest!3211 mapKey!3209 mapValue!3209))))

(declare-fun mapNonEmpty!3210 () Bool)

(declare-fun tp!210047 () Bool)

(declare-fun tp!210058 () Bool)

(assert (=> mapNonEmpty!3210 (= mapRes!3210 (and tp!210047 tp!210058))))

(declare-datatypes ((tuple2!8020 0))(
  ( (tuple2!8021 (_1!4439 Context!510) (_2!4439 C!4308)) )
))
(declare-datatypes ((tuple2!8022 0))(
  ( (tuple2!8023 (_1!4440 tuple2!8020) (_2!4440 (InoxSet Context!510))) )
))
(declare-datatypes ((List!7594 0))(
  ( (Nil!7580) (Cons!7580 (h!12981 tuple2!8022) (t!87417 List!7594)) )
))
(declare-fun mapValue!3210 () List!7594)

(declare-fun mapRest!3209 () (Array (_ BitVec 32) List!7594))

(declare-datatypes ((array!2975 0))(
  ( (array!2976 (arr!1345 (Array (_ BitVec 32) List!7594)) (size!6187 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1602 0))(
  ( (LongMapFixedSize!1603 (defaultEntry!1157 Int) (mask!2612 (_ BitVec 32)) (extraKeys!1048 (_ BitVec 32)) (zeroValue!1058 List!7594) (minValue!1058 List!7594) (_size!1711 (_ BitVec 32)) (_keys!1095 array!2969) (_values!1080 array!2975) (_vacant!862 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3145 0))(
  ( (Cell!3146 (v!17727 LongMapFixedSize!1602)) )
))
(declare-datatypes ((MutLongMap!801 0))(
  ( (LongMap!801 (underlying!1785 Cell!3145)) (MutLongMapExt!800 (__x!5517 Int)) )
))
(declare-datatypes ((Hashable!773 0))(
  ( (HashableExt!772 (__x!5518 Int)) )
))
(declare-datatypes ((Cell!3147 0))(
  ( (Cell!3148 (v!17728 MutLongMap!801)) )
))
(declare-datatypes ((MutableMap!773 0))(
  ( (MutableMapExt!772 (__x!5519 Int)) (HashMap!773 (underlying!1786 Cell!3147) (hashF!2681 Hashable!773) (_size!1712 (_ BitVec 32)) (defaultValue!924 Int)) )
))
(declare-datatypes ((CacheUp!400 0))(
  ( (CacheUp!401 (cache!1160 MutableMap!773)) )
))
(declare-fun cacheUp!502 () CacheUp!400)

(declare-fun mapKey!3210 () (_ BitVec 32))

(assert (=> mapNonEmpty!3210 (= (arr!1345 (_values!1080 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) (store mapRest!3209 mapKey!3210 mapValue!3210))))

(declare-fun b!694300 () Bool)

(assert (=> b!694300 (= e!437216 e!437215)))

(declare-fun res!314475 () Bool)

(assert (=> b!694300 (=> (not res!314475) (not e!437215))))

(assert (=> b!694300 (= res!314475 (= (list!3167 (_1!4434 lt!285383)) (list!3167 acc!372)))))

(assert (=> b!694300 (= lt!285383 (lexRec!169 thiss!12529 rules!1486 treated!50))))

(declare-fun b!694301 () Bool)

(declare-fun e!437240 () Bool)

(declare-fun e!437244 () Bool)

(assert (=> b!694301 (= e!437240 e!437244)))

(declare-fun b!694302 () Bool)

(declare-fun e!437223 () Bool)

(declare-fun tp!210052 () Bool)

(assert (=> b!694302 (= e!437223 (and tp!210052 mapRes!3209))))

(declare-fun condMapEmpty!3210 () Bool)

(declare-fun mapDefault!3210 () List!7592)

(assert (=> b!694302 (= condMapEmpty!3210 (= (arr!1343 (_values!1078 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7592)) mapDefault!3210)))))

(declare-fun b!694303 () Bool)

(declare-fun e!437211 () Bool)

(declare-fun lt!285371 () MutLongMap!801)

(assert (=> b!694303 (= e!437217 (and e!437211 ((_ is LongMap!801) lt!285371)))))

(assert (=> b!694303 (= lt!285371 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))

(declare-fun b!694304 () Bool)

(declare-fun e!437224 () Bool)

(assert (=> b!694304 (= e!437224 e!437221)))

(declare-fun b!694288 () Bool)

(declare-fun e!437207 () Bool)

(declare-fun rulesValidInductive!522 (LexerInterface!1327 List!7590) Bool)

(assert (=> b!694288 (= e!437207 (rulesValidInductive!522 thiss!12529 rules!1486))))

(declare-fun lt!285381 () tuple2!8012)

(declare-datatypes ((tuple2!8024 0))(
  ( (tuple2!8025 (_1!4441 Token!2728) (_2!4441 BalanceConc!5344)) )
))
(declare-datatypes ((Option!1712 0))(
  ( (None!1711) (Some!1711 (v!17729 tuple2!8024)) )
))
(declare-datatypes ((tuple4!122 0))(
  ( (tuple4!123 (_1!4442 Option!1712) (_2!4442 CacheUp!400) (_3!429 CacheDown!406) (_4!61 CacheFindLongestMatch!62)) )
))
(declare-fun lt!285376 () tuple4!122)

(assert (=> b!694288 (= lt!285381 (lexRec!169 thiss!12529 rules!1486 (_2!4441 (v!17729 (_1!4442 lt!285376)))))))

(declare-fun res!314469 () Bool)

(assert (=> start!66304 (=> (not res!314469) (not e!437213))))

(assert (=> start!66304 (= res!314469 ((_ is Lexer!1325) thiss!12529))))

(assert (=> start!66304 e!437213))

(declare-fun e!437234 () Bool)

(declare-fun inv!9686 (BalanceConc!5346) Bool)

(assert (=> start!66304 (and (inv!9686 acc!372) e!437234)))

(declare-fun e!437237 () Bool)

(assert (=> start!66304 (and (inv!9685 treated!50) e!437237)))

(assert (=> start!66304 (and (inv!9685 totalInput!378) e!437225)))

(assert (=> start!66304 (and (inv!9685 input!870) e!437233)))

(declare-fun e!437228 () Bool)

(assert (=> start!66304 e!437228))

(assert (=> start!66304 true))

(declare-fun e!437235 () Bool)

(declare-fun inv!9687 (CacheUp!400) Bool)

(assert (=> start!66304 (and (inv!9687 cacheUp!502) e!437235)))

(declare-fun inv!9688 (CacheDown!406) Bool)

(assert (=> start!66304 (and (inv!9688 cacheDown!515) e!437224)))

(declare-fun inv!9689 (CacheFindLongestMatch!62) Bool)

(assert (=> start!66304 (and (inv!9689 cacheFindLongestMatch!74) e!437214)))

(declare-fun mapNonEmpty!3211 () Bool)

(declare-fun mapRes!3211 () Bool)

(declare-fun tp!210065 () Bool)

(declare-fun tp!210057 () Bool)

(assert (=> mapNonEmpty!3211 (= mapRes!3211 (and tp!210065 tp!210057))))

(declare-fun mapKey!3211 () (_ BitVec 32))

(declare-fun mapValue!3211 () List!7593)

(declare-fun mapRest!3210 () (Array (_ BitVec 32) List!7593))

(assert (=> mapNonEmpty!3211 (= (arr!1344 (_values!1079 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) (store mapRest!3210 mapKey!3211 mapValue!3211))))

(declare-fun b!694305 () Bool)

(declare-fun e!437236 () Bool)

(assert (=> b!694305 (= e!437236 e!437240)))

(declare-fun b!694306 () Bool)

(declare-fun e!437210 () Bool)

(declare-fun tp!210062 () Bool)

(assert (=> b!694306 (= e!437228 (and e!437210 tp!210062))))

(declare-fun tp!210066 () Bool)

(declare-fun e!437209 () Bool)

(declare-fun tp!210064 () Bool)

(declare-fun array_inv!985 (array!2969) Bool)

(declare-fun array_inv!986 (array!2973) Bool)

(assert (=> b!694307 (= e!437244 (and tp!210069 tp!210066 tp!210064 (array_inv!985 (_keys!1094 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) (array_inv!986 (_values!1079 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) e!437209))))

(declare-fun b!694308 () Bool)

(declare-fun res!314478 () Bool)

(assert (=> b!694308 (=> (not res!314478) (not e!437227))))

(declare-fun valid!683 (CacheUp!400) Bool)

(assert (=> b!694308 (= res!314478 (valid!683 cacheUp!502))))

(declare-fun b!694309 () Bool)

(declare-fun res!314474 () Bool)

(assert (=> b!694309 (=> (not res!314474) (not e!437227))))

(declare-fun valid!684 (CacheFindLongestMatch!62) Bool)

(assert (=> b!694309 (= res!314474 (valid!684 cacheFindLongestMatch!74))))

(declare-fun b!694310 () Bool)

(declare-fun e!437220 () Bool)

(assert (=> b!694310 (= e!437211 e!437220)))

(declare-fun b!694311 () Bool)

(assert (=> b!694311 (= e!437219 e!437232)))

(declare-fun b!694312 () Bool)

(assert (=> b!694312 (= e!437235 e!437241)))

(declare-fun b!694313 () Bool)

(declare-fun lt!285375 () MutLongMap!800)

(assert (=> b!694313 (= e!437208 (and e!437236 ((_ is LongMap!800) lt!285375)))))

(assert (=> b!694313 (= lt!285375 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))

(declare-fun b!694314 () Bool)

(declare-fun tp!210067 () Bool)

(assert (=> b!694314 (= e!437209 (and tp!210067 mapRes!3211))))

(declare-fun condMapEmpty!3209 () Bool)

(declare-fun mapDefault!3209 () List!7593)

(assert (=> b!694314 (= condMapEmpty!3209 (= (arr!1344 (_values!1079 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7593)) mapDefault!3209)))))

(declare-fun b!694315 () Bool)

(declare-fun res!314477 () Bool)

(assert (=> b!694315 (=> (not res!314477) (not e!437227))))

(assert (=> b!694315 (= res!314477 (= (list!3168 (_2!4434 lt!285372)) (list!3168 (_2!4434 lt!285380))))))

(declare-fun b!694316 () Bool)

(declare-fun tp!210051 () Bool)

(assert (=> b!694316 (= e!437237 (and (inv!9684 (c!121779 treated!50)) tp!210051))))

(declare-fun b!694317 () Bool)

(declare-fun e!437243 () Bool)

(assert (=> b!694317 (= e!437220 e!437243)))

(declare-fun b!694318 () Bool)

(declare-fun tp!210054 () Bool)

(declare-fun inv!9690 (Conc!2667) Bool)

(assert (=> b!694318 (= e!437234 (and (inv!9690 (c!121780 acc!372)) tp!210054))))

(declare-fun b!694319 () Bool)

(declare-fun e!437242 () Bool)

(assert (=> b!694319 (= e!437227 (not e!437242))))

(declare-fun res!314466 () Bool)

(assert (=> b!694319 (=> res!314466 e!437242)))

(declare-fun isSuffix!136 (List!7588 List!7588) Bool)

(assert (=> b!694319 (= res!314466 (not (isSuffix!136 lt!285382 lt!285379)))))

(assert (=> b!694319 (isSuffix!136 lt!285382 lt!285374)))

(declare-datatypes ((Unit!12676 0))(
  ( (Unit!12677) )
))
(declare-fun lt!285373 () Unit!12676)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!136 (List!7588 List!7588) Unit!12676)

(assert (=> b!694319 (= lt!285373 (lemmaConcatTwoListThenFSndIsSuffix!136 lt!285377 lt!285382))))

(declare-fun b!694320 () Bool)

(declare-fun res!314468 () Bool)

(assert (=> b!694320 (=> (not res!314468) (not e!437213))))

(declare-fun rulesInvariant!1257 (LexerInterface!1327 List!7590) Bool)

(assert (=> b!694320 (= res!314468 (rulesInvariant!1257 thiss!12529 rules!1486))))

(declare-fun b!694321 () Bool)

(declare-fun res!314471 () Bool)

(assert (=> b!694321 (=> (not res!314471) (not e!437227))))

(assert (=> b!694321 (= res!314471 (= (totalInput!1813 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!694322 () Bool)

(assert (=> b!694322 (= e!437242 e!437207)))

(declare-fun res!314476 () Bool)

(assert (=> b!694322 (=> res!314476 e!437207)))

(assert (=> b!694322 (= res!314476 (not ((_ is Some!1711) (_1!4442 lt!285376))))))

(declare-fun maxPrefixZipperSequenceV2Mem!5 (LexerInterface!1327 List!7590 BalanceConc!5344 BalanceConc!5344 CacheUp!400 CacheDown!406 CacheFindLongestMatch!62) tuple4!122)

(assert (=> b!694322 (= lt!285376 (maxPrefixZipperSequenceV2Mem!5 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun tp!210070 () Bool)

(declare-fun tp!210072 () Bool)

(declare-fun array_inv!987 (array!2971) Bool)

(assert (=> b!694323 (= e!437218 (and tp!210055 tp!210072 tp!210070 (array_inv!985 (_keys!1093 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) (array_inv!987 (_values!1078 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) e!437223))))

(declare-fun tp!210075 () Bool)

(declare-fun e!437222 () Bool)

(declare-fun tp!210059 () Bool)

(declare-fun array_inv!988 (array!2975) Bool)

(assert (=> b!694324 (= e!437243 (and tp!210063 tp!210059 tp!210075 (array_inv!985 (_keys!1095 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) (array_inv!988 (_values!1080 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) e!437222))))

(declare-fun b!694325 () Bool)

(declare-fun tp!210073 () Bool)

(assert (=> b!694325 (= e!437222 (and tp!210073 mapRes!3210))))

(declare-fun condMapEmpty!3211 () Bool)

(declare-fun mapDefault!3211 () List!7594)

(assert (=> b!694325 (= condMapEmpty!3211 (= (arr!1345 (_values!1080 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7594)) mapDefault!3211)))))

(declare-fun tp!210061 () Bool)

(declare-fun b!694326 () Bool)

(declare-fun inv!9682 (String!9516) Bool)

(declare-fun inv!9691 (TokenValueInjection!2852) Bool)

(assert (=> b!694326 (= e!437210 (and tp!210061 (inv!9682 (tag!1776 (h!12977 rules!1486))) (inv!9691 (transformation!1514 (h!12977 rules!1486))) e!437206))))

(declare-fun mapIsEmpty!3211 () Bool)

(assert (=> mapIsEmpty!3211 mapRes!3211))

(assert (= (and start!66304 res!314469) b!694297))

(assert (= (and b!694297 res!314472) b!694320))

(assert (= (and b!694320 res!314468) b!694290))

(assert (= (and b!694290 res!314479) b!694300))

(assert (= (and b!694300 res!314475) b!694286))

(assert (= (and b!694286 res!314473) b!694284))

(assert (= (and b!694284 res!314467) b!694315))

(assert (= (and b!694315 res!314477) b!694308))

(assert (= (and b!694308 res!314478) b!694293))

(assert (= (and b!694293 res!314470) b!694309))

(assert (= (and b!694309 res!314474) b!694321))

(assert (= (and b!694321 res!314471) b!694319))

(assert (= (and b!694319 (not res!314466)) b!694322))

(assert (= (and b!694322 (not res!314476)) b!694288))

(assert (= start!66304 b!694318))

(assert (= start!66304 b!694316))

(assert (= start!66304 b!694287))

(assert (= start!66304 b!694291))

(assert (= b!694326 b!694292))

(assert (= b!694306 b!694326))

(assert (= (and start!66304 ((_ is Cons!7576) rules!1486)) b!694306))

(assert (= (and b!694325 condMapEmpty!3211) mapIsEmpty!3210))

(assert (= (and b!694325 (not condMapEmpty!3211)) mapNonEmpty!3210))

(assert (= b!694324 b!694325))

(assert (= b!694317 b!694324))

(assert (= b!694310 b!694317))

(assert (= (and b!694303 ((_ is LongMap!801) (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))) b!694310))

(assert (= b!694289 b!694303))

(assert (= (and b!694312 ((_ is HashMap!773) (cache!1160 cacheUp!502))) b!694289))

(assert (= start!66304 b!694312))

(assert (= (and b!694302 condMapEmpty!3210) mapIsEmpty!3209))

(assert (= (and b!694302 (not condMapEmpty!3210)) mapNonEmpty!3209))

(assert (= b!694323 b!694302))

(assert (= b!694295 b!694323))

(assert (= b!694311 b!694295))

(assert (= (and b!694285 ((_ is LongMap!799) (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))) b!694311))

(assert (= b!694299 b!694285))

(assert (= (and b!694304 ((_ is HashMap!771) (cache!1158 cacheDown!515))) b!694299))

(assert (= start!66304 b!694304))

(assert (= (and b!694314 condMapEmpty!3209) mapIsEmpty!3211))

(assert (= (and b!694314 (not condMapEmpty!3209)) mapNonEmpty!3211))

(assert (= b!694307 b!694314))

(assert (= b!694301 b!694307))

(assert (= b!694305 b!694301))

(assert (= (and b!694313 ((_ is LongMap!800) (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))) b!694305))

(assert (= b!694294 b!694313))

(assert (= (and b!694298 ((_ is HashMap!772) (cache!1159 cacheFindLongestMatch!74))) b!694294))

(assert (= b!694298 b!694296))

(assert (= start!66304 b!694298))

(declare-fun m!950265 () Bool)

(assert (=> b!694320 m!950265))

(declare-fun m!950267 () Bool)

(assert (=> mapNonEmpty!3211 m!950267))

(declare-fun m!950269 () Bool)

(assert (=> b!694298 m!950269))

(declare-fun m!950271 () Bool)

(assert (=> b!694297 m!950271))

(declare-fun m!950273 () Bool)

(assert (=> b!694288 m!950273))

(declare-fun m!950275 () Bool)

(assert (=> b!694288 m!950275))

(declare-fun m!950277 () Bool)

(assert (=> b!694319 m!950277))

(declare-fun m!950279 () Bool)

(assert (=> b!694319 m!950279))

(declare-fun m!950281 () Bool)

(assert (=> b!694319 m!950281))

(declare-fun m!950283 () Bool)

(assert (=> b!694290 m!950283))

(declare-fun m!950285 () Bool)

(assert (=> b!694290 m!950285))

(declare-fun m!950287 () Bool)

(assert (=> b!694290 m!950287))

(declare-fun m!950289 () Bool)

(assert (=> b!694290 m!950289))

(declare-fun m!950291 () Bool)

(assert (=> b!694284 m!950291))

(declare-fun m!950293 () Bool)

(assert (=> b!694284 m!950293))

(assert (=> b!694284 m!950291))

(declare-fun m!950295 () Bool)

(assert (=> b!694284 m!950295))

(declare-fun m!950297 () Bool)

(assert (=> b!694284 m!950297))

(declare-fun m!950299 () Bool)

(assert (=> b!694284 m!950299))

(declare-fun m!950301 () Bool)

(assert (=> b!694308 m!950301))

(declare-fun m!950303 () Bool)

(assert (=> b!694287 m!950303))

(declare-fun m!950305 () Bool)

(assert (=> mapNonEmpty!3210 m!950305))

(declare-fun m!950307 () Bool)

(assert (=> b!694291 m!950307))

(declare-fun m!950309 () Bool)

(assert (=> b!694296 m!950309))

(declare-fun m!950311 () Bool)

(assert (=> b!694300 m!950311))

(declare-fun m!950313 () Bool)

(assert (=> b!694300 m!950313))

(declare-fun m!950315 () Bool)

(assert (=> b!694300 m!950315))

(declare-fun m!950317 () Bool)

(assert (=> b!694286 m!950317))

(assert (=> b!694286 m!950317))

(declare-fun m!950319 () Bool)

(assert (=> b!694286 m!950319))

(declare-fun m!950321 () Bool)

(assert (=> b!694322 m!950321))

(declare-fun m!950323 () Bool)

(assert (=> b!694307 m!950323))

(declare-fun m!950325 () Bool)

(assert (=> b!694307 m!950325))

(declare-fun m!950327 () Bool)

(assert (=> b!694326 m!950327))

(declare-fun m!950329 () Bool)

(assert (=> b!694326 m!950329))

(declare-fun m!950331 () Bool)

(assert (=> b!694309 m!950331))

(declare-fun m!950333 () Bool)

(assert (=> b!694315 m!950333))

(declare-fun m!950335 () Bool)

(assert (=> b!694315 m!950335))

(declare-fun m!950337 () Bool)

(assert (=> start!66304 m!950337))

(declare-fun m!950339 () Bool)

(assert (=> start!66304 m!950339))

(declare-fun m!950341 () Bool)

(assert (=> start!66304 m!950341))

(declare-fun m!950343 () Bool)

(assert (=> start!66304 m!950343))

(declare-fun m!950345 () Bool)

(assert (=> start!66304 m!950345))

(declare-fun m!950347 () Bool)

(assert (=> start!66304 m!950347))

(declare-fun m!950349 () Bool)

(assert (=> start!66304 m!950349))

(declare-fun m!950351 () Bool)

(assert (=> b!694318 m!950351))

(declare-fun m!950353 () Bool)

(assert (=> b!694316 m!950353))

(declare-fun m!950355 () Bool)

(assert (=> mapNonEmpty!3209 m!950355))

(declare-fun m!950357 () Bool)

(assert (=> b!694324 m!950357))

(declare-fun m!950359 () Bool)

(assert (=> b!694324 m!950359))

(declare-fun m!950361 () Bool)

(assert (=> b!694323 m!950361))

(declare-fun m!950363 () Bool)

(assert (=> b!694323 m!950363))

(declare-fun m!950365 () Bool)

(assert (=> b!694293 m!950365))

(check-sat b_and!63605 (not b!694287) (not b!694291) (not b!694326) (not b!694297) (not b!694302) (not b_next!19873) b_and!63613 (not mapNonEmpty!3210) (not b!694322) (not b!694288) (not b!694315) b_and!63617 (not b_next!19887) (not mapNonEmpty!3211) (not b_next!19875) (not b!694308) (not b!694324) (not b_next!19881) (not b!694306) (not start!66304) (not b!694314) (not b!694284) (not b!694320) (not mapNonEmpty!3209) (not b_next!19885) b_and!63603 (not b!694319) (not b!694290) b_and!63615 b_and!63609 (not b_next!19883) b_and!63607 b_and!63611 (not b!694318) (not b!694298) (not b!694286) (not b!694316) (not b!694307) (not b!694325) (not b!694323) (not b!694296) (not b!694300) (not b!694293) (not b_next!19877) (not b_next!19879) (not b!694309))
(check-sat b_and!63613 b_and!63605 (not b_next!19875) (not b_next!19881) (not b_next!19885) b_and!63603 b_and!63615 b_and!63611 (not b_next!19877) (not b_next!19873) (not b_next!19879) b_and!63617 (not b_next!19887) b_and!63609 (not b_next!19883) b_and!63607)
(get-model)

(declare-fun d!232982 () Bool)

(assert (=> d!232982 true))

(declare-fun lt!285386 () Bool)

(declare-fun lambda!21592 () Int)

(declare-fun forall!1961 (List!7590 Int) Bool)

(assert (=> d!232982 (= lt!285386 (forall!1961 rules!1486 lambda!21592))))

(declare-fun e!437249 () Bool)

(assert (=> d!232982 (= lt!285386 e!437249)))

(declare-fun res!314486 () Bool)

(assert (=> d!232982 (=> res!314486 e!437249)))

(assert (=> d!232982 (= res!314486 (not ((_ is Cons!7576) rules!1486)))))

(assert (=> d!232982 (= (rulesValidInductive!522 thiss!12529 rules!1486) lt!285386)))

(declare-fun b!694331 () Bool)

(declare-fun e!437250 () Bool)

(assert (=> b!694331 (= e!437249 e!437250)))

(declare-fun res!314487 () Bool)

(assert (=> b!694331 (=> (not res!314487) (not e!437250))))

(declare-fun ruleValid!463 (LexerInterface!1327 Rule!2828) Bool)

(assert (=> b!694331 (= res!314487 (ruleValid!463 thiss!12529 (h!12977 rules!1486)))))

(declare-fun b!694332 () Bool)

(assert (=> b!694332 (= e!437250 (rulesValidInductive!522 thiss!12529 (t!87413 rules!1486)))))

(assert (= (and d!232982 (not res!314486)) b!694331))

(assert (= (and b!694331 res!314487) b!694332))

(declare-fun m!950367 () Bool)

(assert (=> d!232982 m!950367))

(declare-fun m!950369 () Bool)

(assert (=> b!694331 m!950369))

(declare-fun m!950371 () Bool)

(assert (=> b!694332 m!950371))

(assert (=> b!694288 d!232982))

(declare-fun b!694349 () Bool)

(declare-fun e!437262 () tuple2!8012)

(declare-fun lt!285394 () tuple2!8012)

(declare-fun lt!285395 () Option!1712)

(declare-fun prepend!260 (BalanceConc!5346 Token!2728) BalanceConc!5346)

(assert (=> b!694349 (= e!437262 (tuple2!8013 (prepend!260 (_1!4434 lt!285394) (_1!4441 (v!17729 lt!285395))) (_2!4434 lt!285394)))))

(assert (=> b!694349 (= lt!285394 (lexRec!169 thiss!12529 rules!1486 (_2!4441 (v!17729 lt!285395))))))

(declare-fun b!694351 () Bool)

(declare-fun e!437260 () Bool)

(declare-fun lt!285393 () tuple2!8012)

(assert (=> b!694351 (= e!437260 (= (list!3168 (_2!4434 lt!285393)) (list!3168 (_2!4441 (v!17729 (_1!4442 lt!285376))))))))

(declare-fun d!232984 () Bool)

(declare-fun e!437261 () Bool)

(assert (=> d!232984 e!437261))

(declare-fun res!314494 () Bool)

(assert (=> d!232984 (=> (not res!314494) (not e!437261))))

(assert (=> d!232984 (= res!314494 e!437260)))

(declare-fun c!121786 () Bool)

(declare-fun size!6188 (BalanceConc!5346) Int)

(assert (=> d!232984 (= c!121786 (> (size!6188 (_1!4434 lt!285393)) 0))))

(assert (=> d!232984 (= lt!285393 e!437262)))

(declare-fun c!121787 () Bool)

(assert (=> d!232984 (= c!121787 ((_ is Some!1711) lt!285395))))

(declare-fun maxPrefixZipperSequence!458 (LexerInterface!1327 List!7590 BalanceConc!5344) Option!1712)

(assert (=> d!232984 (= lt!285395 (maxPrefixZipperSequence!458 thiss!12529 rules!1486 (_2!4441 (v!17729 (_1!4442 lt!285376)))))))

(assert (=> d!232984 (= (lexRec!169 thiss!12529 rules!1486 (_2!4441 (v!17729 (_1!4442 lt!285376)))) lt!285393)))

(declare-fun b!694350 () Bool)

(assert (=> b!694350 (= e!437262 (tuple2!8013 (BalanceConc!5347 Empty!2667) (_2!4441 (v!17729 (_1!4442 lt!285376)))))))

(declare-fun b!694352 () Bool)

(declare-fun res!314496 () Bool)

(assert (=> b!694352 (=> (not res!314496) (not e!437261))))

(declare-datatypes ((tuple2!8026 0))(
  ( (tuple2!8027 (_1!4443 List!7589) (_2!4443 List!7588)) )
))
(declare-fun lexList!324 (LexerInterface!1327 List!7590 List!7588) tuple2!8026)

(assert (=> b!694352 (= res!314496 (= (list!3167 (_1!4434 lt!285393)) (_1!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 (_2!4441 (v!17729 (_1!4442 lt!285376))))))))))

(declare-fun b!694353 () Bool)

(declare-fun e!437259 () Bool)

(assert (=> b!694353 (= e!437260 e!437259)))

(declare-fun res!314495 () Bool)

(declare-fun size!6189 (BalanceConc!5344) Int)

(assert (=> b!694353 (= res!314495 (< (size!6189 (_2!4434 lt!285393)) (size!6189 (_2!4441 (v!17729 (_1!4442 lt!285376))))))))

(assert (=> b!694353 (=> (not res!314495) (not e!437259))))

(declare-fun b!694354 () Bool)

(assert (=> b!694354 (= e!437261 (= (list!3168 (_2!4434 lt!285393)) (_2!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 (_2!4441 (v!17729 (_1!4442 lt!285376))))))))))

(declare-fun b!694355 () Bool)

(declare-fun isEmpty!4896 (BalanceConc!5346) Bool)

(assert (=> b!694355 (= e!437259 (not (isEmpty!4896 (_1!4434 lt!285393))))))

(assert (= (and d!232984 c!121787) b!694349))

(assert (= (and d!232984 (not c!121787)) b!694350))

(assert (= (and d!232984 c!121786) b!694353))

(assert (= (and d!232984 (not c!121786)) b!694351))

(assert (= (and b!694353 res!314495) b!694355))

(assert (= (and d!232984 res!314494) b!694352))

(assert (= (and b!694352 res!314496) b!694354))

(declare-fun m!950373 () Bool)

(assert (=> d!232984 m!950373))

(declare-fun m!950375 () Bool)

(assert (=> d!232984 m!950375))

(declare-fun m!950377 () Bool)

(assert (=> b!694354 m!950377))

(declare-fun m!950379 () Bool)

(assert (=> b!694354 m!950379))

(assert (=> b!694354 m!950379))

(declare-fun m!950381 () Bool)

(assert (=> b!694354 m!950381))

(declare-fun m!950383 () Bool)

(assert (=> b!694353 m!950383))

(declare-fun m!950385 () Bool)

(assert (=> b!694353 m!950385))

(assert (=> b!694351 m!950377))

(assert (=> b!694351 m!950379))

(declare-fun m!950387 () Bool)

(assert (=> b!694349 m!950387))

(declare-fun m!950389 () Bool)

(assert (=> b!694349 m!950389))

(declare-fun m!950391 () Bool)

(assert (=> b!694352 m!950391))

(assert (=> b!694352 m!950379))

(assert (=> b!694352 m!950379))

(assert (=> b!694352 m!950381))

(declare-fun m!950393 () Bool)

(assert (=> b!694355 m!950393))

(assert (=> b!694288 d!232984))

(declare-fun d!232986 () Bool)

(declare-fun c!121790 () Bool)

(assert (=> d!232986 (= c!121790 ((_ is Node!2666) (c!121779 totalInput!378)))))

(declare-fun e!437267 () Bool)

(assert (=> d!232986 (= (inv!9684 (c!121779 totalInput!378)) e!437267)))

(declare-fun b!694362 () Bool)

(declare-fun inv!9692 (Conc!2666) Bool)

(assert (=> b!694362 (= e!437267 (inv!9692 (c!121779 totalInput!378)))))

(declare-fun b!694363 () Bool)

(declare-fun e!437268 () Bool)

(assert (=> b!694363 (= e!437267 e!437268)))

(declare-fun res!314499 () Bool)

(assert (=> b!694363 (= res!314499 (not ((_ is Leaf!3946) (c!121779 totalInput!378))))))

(assert (=> b!694363 (=> res!314499 e!437268)))

(declare-fun b!694364 () Bool)

(declare-fun inv!9693 (Conc!2666) Bool)

(assert (=> b!694364 (= e!437268 (inv!9693 (c!121779 totalInput!378)))))

(assert (= (and d!232986 c!121790) b!694362))

(assert (= (and d!232986 (not c!121790)) b!694363))

(assert (= (and b!694363 (not res!314499)) b!694364))

(declare-fun m!950395 () Bool)

(assert (=> b!694362 m!950395))

(declare-fun m!950397 () Bool)

(assert (=> b!694364 m!950397))

(assert (=> b!694287 d!232986))

(declare-fun d!232988 () Bool)

(assert (=> d!232988 (= (inv!9682 (tag!1776 (h!12977 rules!1486))) (= (mod (str.len (value!48813 (tag!1776 (h!12977 rules!1486)))) 2) 0))))

(assert (=> b!694326 d!232988))

(declare-fun d!232990 () Bool)

(declare-fun res!314502 () Bool)

(declare-fun e!437271 () Bool)

(assert (=> d!232990 (=> (not res!314502) (not e!437271))))

(declare-fun semiInverseModEq!572 (Int Int) Bool)

(assert (=> d!232990 (= res!314502 (semiInverseModEq!572 (toChars!2337 (transformation!1514 (h!12977 rules!1486))) (toValue!2478 (transformation!1514 (h!12977 rules!1486)))))))

(assert (=> d!232990 (= (inv!9691 (transformation!1514 (h!12977 rules!1486))) e!437271)))

(declare-fun b!694367 () Bool)

(declare-fun equivClasses!547 (Int Int) Bool)

(assert (=> b!694367 (= e!437271 (equivClasses!547 (toChars!2337 (transformation!1514 (h!12977 rules!1486))) (toValue!2478 (transformation!1514 (h!12977 rules!1486)))))))

(assert (= (and d!232990 res!314502) b!694367))

(declare-fun m!950399 () Bool)

(assert (=> d!232990 m!950399))

(declare-fun m!950401 () Bool)

(assert (=> b!694367 m!950401))

(assert (=> b!694326 d!232990))

(declare-fun d!232992 () Bool)

(assert (=> d!232992 (= (array_inv!985 (_keys!1095 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) (bvsge (size!6184 (_keys!1095 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!694324 d!232992))

(declare-fun d!232994 () Bool)

(assert (=> d!232994 (= (array_inv!988 (_values!1080 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) (bvsge (size!6187 (_values!1080 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502))))))) #b00000000000000000000000000000000))))

(assert (=> b!694324 d!232994))

(declare-fun d!232996 () Bool)

(assert (=> d!232996 (= (isEmpty!4894 (list!3168 (_2!4434 lt!285383))) ((_ is Nil!7574) (list!3168 (_2!4434 lt!285383))))))

(assert (=> b!694286 d!232996))

(declare-fun d!232998 () Bool)

(declare-fun list!3169 (Conc!2666) List!7588)

(assert (=> d!232998 (= (list!3168 (_2!4434 lt!285383)) (list!3169 (c!121779 (_2!4434 lt!285383))))))

(declare-fun bs!137901 () Bool)

(assert (= bs!137901 d!232998))

(declare-fun m!950403 () Bool)

(assert (=> bs!137901 m!950403))

(assert (=> b!694286 d!232998))

(declare-fun d!233000 () Bool)

(assert (=> d!233000 (= (array_inv!985 (_keys!1093 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) (bvsge (size!6184 (_keys!1093 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!694323 d!233000))

(declare-fun d!233002 () Bool)

(assert (=> d!233002 (= (array_inv!987 (_values!1078 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) (bvsge (size!6185 (_values!1078 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515))))))) #b00000000000000000000000000000000))))

(assert (=> b!694323 d!233002))

(declare-fun b!694368 () Bool)

(declare-fun e!437275 () tuple2!8012)

(declare-fun lt!285397 () tuple2!8012)

(declare-fun lt!285398 () Option!1712)

(assert (=> b!694368 (= e!437275 (tuple2!8013 (prepend!260 (_1!4434 lt!285397) (_1!4441 (v!17729 lt!285398))) (_2!4434 lt!285397)))))

(assert (=> b!694368 (= lt!285397 (lexRec!169 thiss!12529 rules!1486 (_2!4441 (v!17729 lt!285398))))))

(declare-fun b!694370 () Bool)

(declare-fun e!437273 () Bool)

(declare-fun lt!285396 () tuple2!8012)

(assert (=> b!694370 (= e!437273 (= (list!3168 (_2!4434 lt!285396)) (list!3168 input!870)))))

(declare-fun d!233004 () Bool)

(declare-fun e!437274 () Bool)

(assert (=> d!233004 e!437274))

(declare-fun res!314503 () Bool)

(assert (=> d!233004 (=> (not res!314503) (not e!437274))))

(assert (=> d!233004 (= res!314503 e!437273)))

(declare-fun c!121791 () Bool)

(assert (=> d!233004 (= c!121791 (> (size!6188 (_1!4434 lt!285396)) 0))))

(assert (=> d!233004 (= lt!285396 e!437275)))

(declare-fun c!121792 () Bool)

(assert (=> d!233004 (= c!121792 ((_ is Some!1711) lt!285398))))

(assert (=> d!233004 (= lt!285398 (maxPrefixZipperSequence!458 thiss!12529 rules!1486 input!870))))

(assert (=> d!233004 (= (lexRec!169 thiss!12529 rules!1486 input!870) lt!285396)))

(declare-fun b!694369 () Bool)

(assert (=> b!694369 (= e!437275 (tuple2!8013 (BalanceConc!5347 Empty!2667) input!870))))

(declare-fun b!694371 () Bool)

(declare-fun res!314505 () Bool)

(assert (=> b!694371 (=> (not res!314505) (not e!437274))))

(assert (=> b!694371 (= res!314505 (= (list!3167 (_1!4434 lt!285396)) (_1!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 input!870)))))))

(declare-fun b!694372 () Bool)

(declare-fun e!437272 () Bool)

(assert (=> b!694372 (= e!437273 e!437272)))

(declare-fun res!314504 () Bool)

(assert (=> b!694372 (= res!314504 (< (size!6189 (_2!4434 lt!285396)) (size!6189 input!870)))))

(assert (=> b!694372 (=> (not res!314504) (not e!437272))))

(declare-fun b!694373 () Bool)

(assert (=> b!694373 (= e!437274 (= (list!3168 (_2!4434 lt!285396)) (_2!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 input!870)))))))

(declare-fun b!694374 () Bool)

(assert (=> b!694374 (= e!437272 (not (isEmpty!4896 (_1!4434 lt!285396))))))

(assert (= (and d!233004 c!121792) b!694368))

(assert (= (and d!233004 (not c!121792)) b!694369))

(assert (= (and d!233004 c!121791) b!694372))

(assert (= (and d!233004 (not c!121791)) b!694370))

(assert (= (and b!694372 res!314504) b!694374))

(assert (= (and d!233004 res!314503) b!694371))

(assert (= (and b!694371 res!314505) b!694373))

(declare-fun m!950405 () Bool)

(assert (=> d!233004 m!950405))

(declare-fun m!950407 () Bool)

(assert (=> d!233004 m!950407))

(declare-fun m!950409 () Bool)

(assert (=> b!694373 m!950409))

(assert (=> b!694373 m!950287))

(assert (=> b!694373 m!950287))

(declare-fun m!950411 () Bool)

(assert (=> b!694373 m!950411))

(declare-fun m!950413 () Bool)

(assert (=> b!694372 m!950413))

(declare-fun m!950415 () Bool)

(assert (=> b!694372 m!950415))

(assert (=> b!694370 m!950409))

(assert (=> b!694370 m!950287))

(declare-fun m!950417 () Bool)

(assert (=> b!694368 m!950417))

(declare-fun m!950419 () Bool)

(assert (=> b!694368 m!950419))

(declare-fun m!950421 () Bool)

(assert (=> b!694371 m!950421))

(assert (=> b!694371 m!950287))

(assert (=> b!694371 m!950287))

(assert (=> b!694371 m!950411))

(declare-fun m!950423 () Bool)

(assert (=> b!694374 m!950423))

(assert (=> b!694284 d!233004))

(declare-fun e!437278 () Bool)

(declare-fun b!694386 () Bool)

(declare-fun lt!285401 () BalanceConc!5346)

(declare-fun ++!1973 (List!7589 List!7589) List!7589)

(assert (=> b!694386 (= e!437278 (= (list!3167 lt!285401) (++!1973 (list!3167 acc!372) (list!3167 (_1!4434 lt!285380)))))))

(declare-fun d!233006 () Bool)

(assert (=> d!233006 e!437278))

(declare-fun res!314517 () Bool)

(assert (=> d!233006 (=> (not res!314517) (not e!437278))))

(declare-fun appendAssocInst!134 (Conc!2667 Conc!2667) Bool)

(assert (=> d!233006 (= res!314517 (appendAssocInst!134 (c!121780 acc!372) (c!121780 (_1!4434 lt!285380))))))

(declare-fun ++!1974 (Conc!2667 Conc!2667) Conc!2667)

(assert (=> d!233006 (= lt!285401 (BalanceConc!5347 (++!1974 (c!121780 acc!372) (c!121780 (_1!4434 lt!285380)))))))

(assert (=> d!233006 (= (++!1971 acc!372 (_1!4434 lt!285380)) lt!285401)))

(declare-fun b!694383 () Bool)

(declare-fun res!314514 () Bool)

(assert (=> b!694383 (=> (not res!314514) (not e!437278))))

(declare-fun isBalanced!698 (Conc!2667) Bool)

(assert (=> b!694383 (= res!314514 (isBalanced!698 (++!1974 (c!121780 acc!372) (c!121780 (_1!4434 lt!285380)))))))

(declare-fun b!694385 () Bool)

(declare-fun res!314516 () Bool)

(assert (=> b!694385 (=> (not res!314516) (not e!437278))))

(declare-fun height!320 (Conc!2667) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!694385 (= res!314516 (>= (height!320 (++!1974 (c!121780 acc!372) (c!121780 (_1!4434 lt!285380)))) (max!0 (height!320 (c!121780 acc!372)) (height!320 (c!121780 (_1!4434 lt!285380))))))))

(declare-fun b!694384 () Bool)

(declare-fun res!314515 () Bool)

(assert (=> b!694384 (=> (not res!314515) (not e!437278))))

(assert (=> b!694384 (= res!314515 (<= (height!320 (++!1974 (c!121780 acc!372) (c!121780 (_1!4434 lt!285380)))) (+ (max!0 (height!320 (c!121780 acc!372)) (height!320 (c!121780 (_1!4434 lt!285380)))) 1)))))

(assert (= (and d!233006 res!314517) b!694383))

(assert (= (and b!694383 res!314514) b!694384))

(assert (= (and b!694384 res!314515) b!694385))

(assert (= (and b!694385 res!314516) b!694386))

(declare-fun m!950425 () Bool)

(assert (=> d!233006 m!950425))

(declare-fun m!950427 () Bool)

(assert (=> d!233006 m!950427))

(assert (=> b!694383 m!950427))

(assert (=> b!694383 m!950427))

(declare-fun m!950429 () Bool)

(assert (=> b!694383 m!950429))

(declare-fun m!950431 () Bool)

(assert (=> b!694384 m!950431))

(assert (=> b!694384 m!950427))

(declare-fun m!950433 () Bool)

(assert (=> b!694384 m!950433))

(assert (=> b!694384 m!950427))

(assert (=> b!694384 m!950431))

(declare-fun m!950435 () Bool)

(assert (=> b!694384 m!950435))

(declare-fun m!950437 () Bool)

(assert (=> b!694384 m!950437))

(assert (=> b!694384 m!950435))

(assert (=> b!694385 m!950431))

(assert (=> b!694385 m!950427))

(assert (=> b!694385 m!950433))

(assert (=> b!694385 m!950427))

(assert (=> b!694385 m!950431))

(assert (=> b!694385 m!950435))

(assert (=> b!694385 m!950437))

(assert (=> b!694385 m!950435))

(declare-fun m!950439 () Bool)

(assert (=> b!694386 m!950439))

(assert (=> b!694386 m!950313))

(declare-fun m!950441 () Bool)

(assert (=> b!694386 m!950441))

(assert (=> b!694386 m!950313))

(assert (=> b!694386 m!950441))

(declare-fun m!950443 () Bool)

(assert (=> b!694386 m!950443))

(assert (=> b!694284 d!233006))

(declare-fun b!694387 () Bool)

(declare-fun e!437282 () tuple2!8012)

(declare-fun lt!285403 () tuple2!8012)

(declare-fun lt!285404 () Option!1712)

(assert (=> b!694387 (= e!437282 (tuple2!8013 (prepend!260 (_1!4434 lt!285403) (_1!4441 (v!17729 lt!285404))) (_2!4434 lt!285403)))))

(assert (=> b!694387 (= lt!285403 (lexRec!169 thiss!12529 rules!1486 (_2!4441 (v!17729 lt!285404))))))

(declare-fun b!694389 () Bool)

(declare-fun e!437280 () Bool)

(declare-fun lt!285402 () tuple2!8012)

(assert (=> b!694389 (= e!437280 (= (list!3168 (_2!4434 lt!285402)) (list!3168 totalInput!378)))))

(declare-fun d!233008 () Bool)

(declare-fun e!437281 () Bool)

(assert (=> d!233008 e!437281))

(declare-fun res!314518 () Bool)

(assert (=> d!233008 (=> (not res!314518) (not e!437281))))

(assert (=> d!233008 (= res!314518 e!437280)))

(declare-fun c!121796 () Bool)

(assert (=> d!233008 (= c!121796 (> (size!6188 (_1!4434 lt!285402)) 0))))

(assert (=> d!233008 (= lt!285402 e!437282)))

(declare-fun c!121797 () Bool)

(assert (=> d!233008 (= c!121797 ((_ is Some!1711) lt!285404))))

(assert (=> d!233008 (= lt!285404 (maxPrefixZipperSequence!458 thiss!12529 rules!1486 totalInput!378))))

(assert (=> d!233008 (= (lexRec!169 thiss!12529 rules!1486 totalInput!378) lt!285402)))

(declare-fun b!694388 () Bool)

(assert (=> b!694388 (= e!437282 (tuple2!8013 (BalanceConc!5347 Empty!2667) totalInput!378))))

(declare-fun b!694390 () Bool)

(declare-fun res!314520 () Bool)

(assert (=> b!694390 (=> (not res!314520) (not e!437281))))

(assert (=> b!694390 (= res!314520 (= (list!3167 (_1!4434 lt!285402)) (_1!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 totalInput!378)))))))

(declare-fun b!694391 () Bool)

(declare-fun e!437279 () Bool)

(assert (=> b!694391 (= e!437280 e!437279)))

(declare-fun res!314519 () Bool)

(assert (=> b!694391 (= res!314519 (< (size!6189 (_2!4434 lt!285402)) (size!6189 totalInput!378)))))

(assert (=> b!694391 (=> (not res!314519) (not e!437279))))

(declare-fun b!694392 () Bool)

(assert (=> b!694392 (= e!437281 (= (list!3168 (_2!4434 lt!285402)) (_2!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 totalInput!378)))))))

(declare-fun b!694393 () Bool)

(assert (=> b!694393 (= e!437279 (not (isEmpty!4896 (_1!4434 lt!285402))))))

(assert (= (and d!233008 c!121797) b!694387))

(assert (= (and d!233008 (not c!121797)) b!694388))

(assert (= (and d!233008 c!121796) b!694391))

(assert (= (and d!233008 (not c!121796)) b!694389))

(assert (= (and b!694391 res!314519) b!694393))

(assert (= (and d!233008 res!314518) b!694390))

(assert (= (and b!694390 res!314520) b!694392))

(declare-fun m!950445 () Bool)

(assert (=> d!233008 m!950445))

(declare-fun m!950447 () Bool)

(assert (=> d!233008 m!950447))

(declare-fun m!950449 () Bool)

(assert (=> b!694392 m!950449))

(assert (=> b!694392 m!950285))

(assert (=> b!694392 m!950285))

(declare-fun m!950451 () Bool)

(assert (=> b!694392 m!950451))

(declare-fun m!950453 () Bool)

(assert (=> b!694391 m!950453))

(declare-fun m!950455 () Bool)

(assert (=> b!694391 m!950455))

(assert (=> b!694389 m!950449))

(assert (=> b!694389 m!950285))

(declare-fun m!950457 () Bool)

(assert (=> b!694387 m!950457))

(declare-fun m!950459 () Bool)

(assert (=> b!694387 m!950459))

(declare-fun m!950461 () Bool)

(assert (=> b!694390 m!950461))

(assert (=> b!694390 m!950285))

(assert (=> b!694390 m!950285))

(assert (=> b!694390 m!950451))

(declare-fun m!950463 () Bool)

(assert (=> b!694393 m!950463))

(assert (=> b!694284 d!233008))

(declare-fun d!233010 () Bool)

(declare-fun list!3170 (Conc!2667) List!7589)

(assert (=> d!233010 (= (list!3167 (_1!4434 lt!285372)) (list!3170 (c!121780 (_1!4434 lt!285372))))))

(declare-fun bs!137902 () Bool)

(assert (= bs!137902 d!233010))

(declare-fun m!950465 () Bool)

(assert (=> bs!137902 m!950465))

(assert (=> b!694284 d!233010))

(declare-fun d!233012 () Bool)

(assert (=> d!233012 (= (list!3167 (++!1971 acc!372 (_1!4434 lt!285380))) (list!3170 (c!121780 (++!1971 acc!372 (_1!4434 lt!285380)))))))

(declare-fun bs!137903 () Bool)

(assert (= bs!137903 d!233012))

(declare-fun m!950467 () Bool)

(assert (=> bs!137903 m!950467))

(assert (=> b!694284 d!233012))

(declare-fun b!694406 () Bool)

(declare-fun e!437287 () Bool)

(declare-fun lt!285431 () tuple4!122)

(assert (=> b!694406 (= e!437287 (= (totalInput!1813 (_4!61 lt!285431)) totalInput!378))))

(declare-fun b!694407 () Bool)

(declare-fun res!314529 () Bool)

(assert (=> b!694407 (=> (not res!314529) (not e!437287))))

(assert (=> b!694407 (= res!314529 (valid!682 (_3!429 lt!285431)))))

(declare-fun b!694408 () Bool)

(declare-fun res!314532 () Bool)

(assert (=> b!694408 (=> (not res!314532) (not e!437287))))

(assert (=> b!694408 (= res!314532 (valid!683 (_2!4442 lt!285431)))))

(declare-fun bm!43650 () Bool)

(declare-fun call!43655 () tuple4!122)

(declare-fun maxPrefixOneRuleZipperSequenceV2Mem!2 (LexerInterface!1327 Rule!2828 BalanceConc!5344 BalanceConc!5344 CacheUp!400 CacheDown!406 CacheFindLongestMatch!62) tuple4!122)

(assert (=> bm!43650 (= call!43655 (maxPrefixOneRuleZipperSequenceV2Mem!2 thiss!12529 (h!12977 rules!1486) input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74))))

(declare-fun b!694409 () Bool)

(declare-fun res!314530 () Bool)

(assert (=> b!694409 (=> (not res!314530) (not e!437287))))

(assert (=> b!694409 (= res!314530 (valid!684 (_4!61 lt!285431)))))

(declare-fun b!694410 () Bool)

(declare-datatypes ((tuple4!124 0))(
  ( (tuple4!125 (_1!4444 Option!1712) (_2!4444 CacheUp!400) (_3!430 CacheFindLongestMatch!62) (_4!62 CacheDown!406)) )
))
(declare-fun e!437288 () tuple4!124)

(declare-fun lt!285424 () tuple4!122)

(assert (=> b!694410 (= e!437288 (tuple4!125 (_1!4442 lt!285424) (_2!4442 lt!285424) (_4!61 lt!285424) (_3!429 lt!285424)))))

(assert (=> b!694410 (= lt!285424 call!43655)))

(declare-fun d!233014 () Bool)

(assert (=> d!233014 e!437287))

(declare-fun res!314531 () Bool)

(assert (=> d!233014 (=> (not res!314531) (not e!437287))))

(declare-fun maxPrefixZipperSequenceV2!128 (LexerInterface!1327 List!7590 BalanceConc!5344 BalanceConc!5344) Option!1712)

(assert (=> d!233014 (= res!314531 (= (_1!4442 lt!285431) (maxPrefixZipperSequenceV2!128 thiss!12529 rules!1486 input!870 totalInput!378)))))

(declare-fun lt!285425 () tuple4!124)

(assert (=> d!233014 (= lt!285431 (tuple4!123 (_1!4444 lt!285425) (_2!4444 lt!285425) (_4!62 lt!285425) (_3!430 lt!285425)))))

(assert (=> d!233014 (= lt!285425 e!437288)))

(declare-fun c!121800 () Bool)

(assert (=> d!233014 (= c!121800 (and ((_ is Cons!7576) rules!1486) ((_ is Nil!7576) (t!87413 rules!1486))))))

(declare-fun lt!285423 () Unit!12676)

(declare-fun lt!285430 () Unit!12676)

(assert (=> d!233014 (= lt!285423 lt!285430)))

(declare-fun lt!285426 () List!7588)

(declare-fun lt!285427 () List!7588)

(declare-fun isPrefix!917 (List!7588 List!7588) Bool)

(assert (=> d!233014 (isPrefix!917 lt!285426 lt!285427)))

(declare-fun lemmaIsPrefixRefl!628 (List!7588 List!7588) Unit!12676)

(assert (=> d!233014 (= lt!285430 (lemmaIsPrefixRefl!628 lt!285426 lt!285427))))

(assert (=> d!233014 (= lt!285427 (list!3168 input!870))))

(assert (=> d!233014 (= lt!285426 (list!3168 input!870))))

(assert (=> d!233014 (rulesValidInductive!522 thiss!12529 rules!1486)))

(assert (=> d!233014 (= (maxPrefixZipperSequenceV2Mem!5 thiss!12529 rules!1486 input!870 totalInput!378 cacheUp!502 cacheDown!515 cacheFindLongestMatch!74) lt!285431)))

(declare-fun b!694411 () Bool)

(declare-fun lt!285428 () tuple4!122)

(declare-fun lt!285429 () tuple4!122)

(assert (=> b!694411 (= e!437288 (tuple4!125 (ite (and ((_ is None!1711) (_1!4442 lt!285428)) ((_ is None!1711) (_1!4442 lt!285429))) None!1711 (ite ((_ is None!1711) (_1!4442 lt!285429)) (_1!4442 lt!285428) (ite ((_ is None!1711) (_1!4442 lt!285428)) (_1!4442 lt!285429) (ite (>= (size!6183 (_1!4441 (v!17729 (_1!4442 lt!285428)))) (size!6183 (_1!4441 (v!17729 (_1!4442 lt!285429))))) (_1!4442 lt!285428) (_1!4442 lt!285429))))) (_2!4442 lt!285429) (_4!61 lt!285429) (_3!429 lt!285429)))))

(assert (=> b!694411 (= lt!285428 call!43655)))

(assert (=> b!694411 (= lt!285429 (maxPrefixZipperSequenceV2Mem!5 thiss!12529 (t!87413 rules!1486) input!870 totalInput!378 (_2!4442 lt!285428) (_3!429 lt!285428) (_4!61 lt!285428)))))

(assert (= (and d!233014 c!121800) b!694410))

(assert (= (and d!233014 (not c!121800)) b!694411))

(assert (= (or b!694410 b!694411) bm!43650))

(assert (= (and d!233014 res!314531) b!694408))

(assert (= (and b!694408 res!314532) b!694407))

(assert (= (and b!694407 res!314529) b!694409))

(assert (= (and b!694409 res!314530) b!694406))

(declare-fun m!950469 () Bool)

(assert (=> b!694408 m!950469))

(declare-fun m!950471 () Bool)

(assert (=> bm!43650 m!950471))

(declare-fun m!950473 () Bool)

(assert (=> b!694409 m!950473))

(assert (=> d!233014 m!950273))

(declare-fun m!950475 () Bool)

(assert (=> d!233014 m!950475))

(declare-fun m!950477 () Bool)

(assert (=> d!233014 m!950477))

(assert (=> d!233014 m!950287))

(declare-fun m!950479 () Bool)

(assert (=> d!233014 m!950479))

(declare-fun m!950481 () Bool)

(assert (=> b!694407 m!950481))

(declare-fun m!950483 () Bool)

(assert (=> b!694411 m!950483))

(assert (=> b!694322 d!233014))

(declare-fun d!233016 () Bool)

(declare-fun res!314535 () Bool)

(declare-fun e!437291 () Bool)

(assert (=> d!233016 (=> (not res!314535) (not e!437291))))

(declare-fun rulesValid!529 (LexerInterface!1327 List!7590) Bool)

(assert (=> d!233016 (= res!314535 (rulesValid!529 thiss!12529 rules!1486))))

(assert (=> d!233016 (= (rulesInvariant!1257 thiss!12529 rules!1486) e!437291)))

(declare-fun b!694414 () Bool)

(declare-datatypes ((List!7595 0))(
  ( (Nil!7581) (Cons!7581 (h!12982 String!9516) (t!87418 List!7595)) )
))
(declare-fun noDuplicateTag!529 (LexerInterface!1327 List!7590 List!7595) Bool)

(assert (=> b!694414 (= e!437291 (noDuplicateTag!529 thiss!12529 rules!1486 Nil!7581))))

(assert (= (and d!233016 res!314535) b!694414))

(declare-fun m!950485 () Bool)

(assert (=> d!233016 m!950485))

(declare-fun m!950487 () Bool)

(assert (=> b!694414 m!950487))

(assert (=> b!694320 d!233016))

(declare-fun d!233018 () Bool)

(assert (=> d!233018 (= (list!3167 (_1!4434 lt!285383)) (list!3170 (c!121780 (_1!4434 lt!285383))))))

(declare-fun bs!137904 () Bool)

(assert (= bs!137904 d!233018))

(declare-fun m!950489 () Bool)

(assert (=> bs!137904 m!950489))

(assert (=> b!694300 d!233018))

(declare-fun d!233020 () Bool)

(assert (=> d!233020 (= (list!3167 acc!372) (list!3170 (c!121780 acc!372)))))

(declare-fun bs!137905 () Bool)

(assert (= bs!137905 d!233020))

(declare-fun m!950491 () Bool)

(assert (=> bs!137905 m!950491))

(assert (=> b!694300 d!233020))

(declare-fun b!694415 () Bool)

(declare-fun e!437295 () tuple2!8012)

(declare-fun lt!285433 () tuple2!8012)

(declare-fun lt!285434 () Option!1712)

(assert (=> b!694415 (= e!437295 (tuple2!8013 (prepend!260 (_1!4434 lt!285433) (_1!4441 (v!17729 lt!285434))) (_2!4434 lt!285433)))))

(assert (=> b!694415 (= lt!285433 (lexRec!169 thiss!12529 rules!1486 (_2!4441 (v!17729 lt!285434))))))

(declare-fun b!694417 () Bool)

(declare-fun e!437293 () Bool)

(declare-fun lt!285432 () tuple2!8012)

(assert (=> b!694417 (= e!437293 (= (list!3168 (_2!4434 lt!285432)) (list!3168 treated!50)))))

(declare-fun d!233022 () Bool)

(declare-fun e!437294 () Bool)

(assert (=> d!233022 e!437294))

(declare-fun res!314536 () Bool)

(assert (=> d!233022 (=> (not res!314536) (not e!437294))))

(assert (=> d!233022 (= res!314536 e!437293)))

(declare-fun c!121801 () Bool)

(assert (=> d!233022 (= c!121801 (> (size!6188 (_1!4434 lt!285432)) 0))))

(assert (=> d!233022 (= lt!285432 e!437295)))

(declare-fun c!121802 () Bool)

(assert (=> d!233022 (= c!121802 ((_ is Some!1711) lt!285434))))

(assert (=> d!233022 (= lt!285434 (maxPrefixZipperSequence!458 thiss!12529 rules!1486 treated!50))))

(assert (=> d!233022 (= (lexRec!169 thiss!12529 rules!1486 treated!50) lt!285432)))

(declare-fun b!694416 () Bool)

(assert (=> b!694416 (= e!437295 (tuple2!8013 (BalanceConc!5347 Empty!2667) treated!50))))

(declare-fun b!694418 () Bool)

(declare-fun res!314538 () Bool)

(assert (=> b!694418 (=> (not res!314538) (not e!437294))))

(assert (=> b!694418 (= res!314538 (= (list!3167 (_1!4434 lt!285432)) (_1!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 treated!50)))))))

(declare-fun b!694419 () Bool)

(declare-fun e!437292 () Bool)

(assert (=> b!694419 (= e!437293 e!437292)))

(declare-fun res!314537 () Bool)

(assert (=> b!694419 (= res!314537 (< (size!6189 (_2!4434 lt!285432)) (size!6189 treated!50)))))

(assert (=> b!694419 (=> (not res!314537) (not e!437292))))

(declare-fun b!694420 () Bool)

(assert (=> b!694420 (= e!437294 (= (list!3168 (_2!4434 lt!285432)) (_2!4443 (lexList!324 thiss!12529 rules!1486 (list!3168 treated!50)))))))

(declare-fun b!694421 () Bool)

(assert (=> b!694421 (= e!437292 (not (isEmpty!4896 (_1!4434 lt!285432))))))

(assert (= (and d!233022 c!121802) b!694415))

(assert (= (and d!233022 (not c!121802)) b!694416))

(assert (= (and d!233022 c!121801) b!694419))

(assert (= (and d!233022 (not c!121801)) b!694417))

(assert (= (and b!694419 res!314537) b!694421))

(assert (= (and d!233022 res!314536) b!694418))

(assert (= (and b!694418 res!314538) b!694420))

(declare-fun m!950493 () Bool)

(assert (=> d!233022 m!950493))

(declare-fun m!950495 () Bool)

(assert (=> d!233022 m!950495))

(declare-fun m!950497 () Bool)

(assert (=> b!694420 m!950497))

(assert (=> b!694420 m!950289))

(assert (=> b!694420 m!950289))

(declare-fun m!950499 () Bool)

(assert (=> b!694420 m!950499))

(declare-fun m!950501 () Bool)

(assert (=> b!694419 m!950501))

(declare-fun m!950503 () Bool)

(assert (=> b!694419 m!950503))

(assert (=> b!694417 m!950497))

(assert (=> b!694417 m!950289))

(declare-fun m!950505 () Bool)

(assert (=> b!694415 m!950505))

(declare-fun m!950507 () Bool)

(assert (=> b!694415 m!950507))

(declare-fun m!950509 () Bool)

(assert (=> b!694418 m!950509))

(assert (=> b!694418 m!950289))

(assert (=> b!694418 m!950289))

(assert (=> b!694418 m!950499))

(declare-fun m!950511 () Bool)

(assert (=> b!694421 m!950511))

(assert (=> b!694300 d!233022))

(declare-fun d!233024 () Bool)

(declare-fun e!437298 () Bool)

(assert (=> d!233024 e!437298))

(declare-fun res!314541 () Bool)

(assert (=> d!233024 (=> res!314541 e!437298)))

(declare-fun lt!285437 () Bool)

(assert (=> d!233024 (= res!314541 (not lt!285437))))

(declare-fun drop!356 (List!7588 Int) List!7588)

(declare-fun size!6190 (List!7588) Int)

(assert (=> d!233024 (= lt!285437 (= lt!285382 (drop!356 lt!285379 (- (size!6190 lt!285379) (size!6190 lt!285382)))))))

(assert (=> d!233024 (= (isSuffix!136 lt!285382 lt!285379) lt!285437)))

(declare-fun b!694424 () Bool)

(assert (=> b!694424 (= e!437298 (>= (size!6190 lt!285379) (size!6190 lt!285382)))))

(assert (= (and d!233024 (not res!314541)) b!694424))

(declare-fun m!950513 () Bool)

(assert (=> d!233024 m!950513))

(declare-fun m!950515 () Bool)

(assert (=> d!233024 m!950515))

(declare-fun m!950517 () Bool)

(assert (=> d!233024 m!950517))

(assert (=> b!694424 m!950513))

(assert (=> b!694424 m!950515))

(assert (=> b!694319 d!233024))

(declare-fun d!233026 () Bool)

(declare-fun e!437299 () Bool)

(assert (=> d!233026 e!437299))

(declare-fun res!314542 () Bool)

(assert (=> d!233026 (=> res!314542 e!437299)))

(declare-fun lt!285438 () Bool)

(assert (=> d!233026 (= res!314542 (not lt!285438))))

(assert (=> d!233026 (= lt!285438 (= lt!285382 (drop!356 lt!285374 (- (size!6190 lt!285374) (size!6190 lt!285382)))))))

(assert (=> d!233026 (= (isSuffix!136 lt!285382 lt!285374) lt!285438)))

(declare-fun b!694425 () Bool)

(assert (=> b!694425 (= e!437299 (>= (size!6190 lt!285374) (size!6190 lt!285382)))))

(assert (= (and d!233026 (not res!314542)) b!694425))

(declare-fun m!950519 () Bool)

(assert (=> d!233026 m!950519))

(assert (=> d!233026 m!950515))

(declare-fun m!950521 () Bool)

(assert (=> d!233026 m!950521))

(assert (=> b!694425 m!950519))

(assert (=> b!694425 m!950515))

(assert (=> b!694319 d!233026))

(declare-fun d!233028 () Bool)

(assert (=> d!233028 (isSuffix!136 lt!285382 (++!1972 lt!285377 lt!285382))))

(declare-fun lt!285441 () Unit!12676)

(declare-fun choose!4697 (List!7588 List!7588) Unit!12676)

(assert (=> d!233028 (= lt!285441 (choose!4697 lt!285377 lt!285382))))

(assert (=> d!233028 (= (lemmaConcatTwoListThenFSndIsSuffix!136 lt!285377 lt!285382) lt!285441)))

(declare-fun bs!137906 () Bool)

(assert (= bs!137906 d!233028))

(assert (=> bs!137906 m!950283))

(assert (=> bs!137906 m!950283))

(declare-fun m!950523 () Bool)

(assert (=> bs!137906 m!950523))

(declare-fun m!950525 () Bool)

(assert (=> bs!137906 m!950525))

(assert (=> b!694319 d!233028))

(declare-fun d!233030 () Bool)

(declare-fun c!121805 () Bool)

(assert (=> d!233030 (= c!121805 ((_ is Node!2667) (c!121780 acc!372)))))

(declare-fun e!437304 () Bool)

(assert (=> d!233030 (= (inv!9690 (c!121780 acc!372)) e!437304)))

(declare-fun b!694432 () Bool)

(declare-fun inv!9694 (Conc!2667) Bool)

(assert (=> b!694432 (= e!437304 (inv!9694 (c!121780 acc!372)))))

(declare-fun b!694433 () Bool)

(declare-fun e!437305 () Bool)

(assert (=> b!694433 (= e!437304 e!437305)))

(declare-fun res!314545 () Bool)

(assert (=> b!694433 (= res!314545 (not ((_ is Leaf!3947) (c!121780 acc!372))))))

(assert (=> b!694433 (=> res!314545 e!437305)))

(declare-fun b!694434 () Bool)

(declare-fun inv!9695 (Conc!2667) Bool)

(assert (=> b!694434 (= e!437305 (inv!9695 (c!121780 acc!372)))))

(assert (= (and d!233030 c!121805) b!694432))

(assert (= (and d!233030 (not c!121805)) b!694433))

(assert (= (and b!694433 (not res!314545)) b!694434))

(declare-fun m!950527 () Bool)

(assert (=> b!694432 m!950527))

(declare-fun m!950529 () Bool)

(assert (=> b!694434 m!950529))

(assert (=> b!694318 d!233030))

(declare-fun d!233032 () Bool)

(declare-fun c!121806 () Bool)

(assert (=> d!233032 (= c!121806 ((_ is Node!2666) (c!121779 treated!50)))))

(declare-fun e!437306 () Bool)

(assert (=> d!233032 (= (inv!9684 (c!121779 treated!50)) e!437306)))

(declare-fun b!694435 () Bool)

(assert (=> b!694435 (= e!437306 (inv!9692 (c!121779 treated!50)))))

(declare-fun b!694436 () Bool)

(declare-fun e!437307 () Bool)

(assert (=> b!694436 (= e!437306 e!437307)))

(declare-fun res!314546 () Bool)

(assert (=> b!694436 (= res!314546 (not ((_ is Leaf!3946) (c!121779 treated!50))))))

(assert (=> b!694436 (=> res!314546 e!437307)))

(declare-fun b!694437 () Bool)

(assert (=> b!694437 (= e!437307 (inv!9693 (c!121779 treated!50)))))

(assert (= (and d!233032 c!121806) b!694435))

(assert (= (and d!233032 (not c!121806)) b!694436))

(assert (= (and b!694436 (not res!314546)) b!694437))

(declare-fun m!950531 () Bool)

(assert (=> b!694435 m!950531))

(declare-fun m!950533 () Bool)

(assert (=> b!694437 m!950533))

(assert (=> b!694316 d!233032))

(declare-fun d!233034 () Bool)

(declare-fun isBalanced!699 (Conc!2666) Bool)

(assert (=> d!233034 (= (inv!9685 (totalInput!1813 cacheFindLongestMatch!74)) (isBalanced!699 (c!121779 (totalInput!1813 cacheFindLongestMatch!74))))))

(declare-fun bs!137907 () Bool)

(assert (= bs!137907 d!233034))

(declare-fun m!950535 () Bool)

(assert (=> bs!137907 m!950535))

(assert (=> b!694298 d!233034))

(declare-fun d!233036 () Bool)

(assert (=> d!233036 (= (isEmpty!4895 rules!1486) ((_ is Nil!7576) rules!1486))))

(assert (=> b!694297 d!233036))

(declare-fun d!233038 () Bool)

(assert (=> d!233038 (= (list!3168 (_2!4434 lt!285372)) (list!3169 (c!121779 (_2!4434 lt!285372))))))

(declare-fun bs!137908 () Bool)

(assert (= bs!137908 d!233038))

(declare-fun m!950537 () Bool)

(assert (=> bs!137908 m!950537))

(assert (=> b!694315 d!233038))

(declare-fun d!233040 () Bool)

(assert (=> d!233040 (= (list!3168 (_2!4434 lt!285380)) (list!3169 (c!121779 (_2!4434 lt!285380))))))

(declare-fun bs!137909 () Bool)

(assert (= bs!137909 d!233040))

(declare-fun m!950539 () Bool)

(assert (=> bs!137909 m!950539))

(assert (=> b!694315 d!233040))

(declare-fun d!233042 () Bool)

(declare-fun c!121807 () Bool)

(assert (=> d!233042 (= c!121807 ((_ is Node!2666) (c!121779 (totalInput!1813 cacheFindLongestMatch!74))))))

(declare-fun e!437308 () Bool)

(assert (=> d!233042 (= (inv!9684 (c!121779 (totalInput!1813 cacheFindLongestMatch!74))) e!437308)))

(declare-fun b!694438 () Bool)

(assert (=> b!694438 (= e!437308 (inv!9692 (c!121779 (totalInput!1813 cacheFindLongestMatch!74))))))

(declare-fun b!694439 () Bool)

(declare-fun e!437309 () Bool)

(assert (=> b!694439 (= e!437308 e!437309)))

(declare-fun res!314547 () Bool)

(assert (=> b!694439 (= res!314547 (not ((_ is Leaf!3946) (c!121779 (totalInput!1813 cacheFindLongestMatch!74)))))))

(assert (=> b!694439 (=> res!314547 e!437309)))

(declare-fun b!694440 () Bool)

(assert (=> b!694440 (= e!437309 (inv!9693 (c!121779 (totalInput!1813 cacheFindLongestMatch!74))))))

(assert (= (and d!233042 c!121807) b!694438))

(assert (= (and d!233042 (not c!121807)) b!694439))

(assert (= (and b!694439 (not res!314547)) b!694440))

(declare-fun m!950541 () Bool)

(assert (=> b!694438 m!950541))

(declare-fun m!950543 () Bool)

(assert (=> b!694440 m!950543))

(assert (=> b!694296 d!233042))

(declare-fun d!233044 () Bool)

(declare-fun validCacheMapDown!62 (MutableMap!771) Bool)

(assert (=> d!233044 (= (valid!682 cacheDown!515) (validCacheMapDown!62 (cache!1158 cacheDown!515)))))

(declare-fun bs!137910 () Bool)

(assert (= bs!137910 d!233044))

(declare-fun m!950545 () Bool)

(assert (=> bs!137910 m!950545))

(assert (=> b!694293 d!233044))

(declare-fun d!233046 () Bool)

(declare-fun validCacheMapFindLongestMatch!8 (MutableMap!772 BalanceConc!5344) Bool)

(assert (=> d!233046 (= (valid!684 cacheFindLongestMatch!74) (validCacheMapFindLongestMatch!8 (cache!1159 cacheFindLongestMatch!74) (totalInput!1813 cacheFindLongestMatch!74)))))

(declare-fun bs!137911 () Bool)

(assert (= bs!137911 d!233046))

(declare-fun m!950547 () Bool)

(assert (=> bs!137911 m!950547))

(assert (=> b!694309 d!233046))

(declare-fun d!233048 () Bool)

(declare-fun validCacheMapUp!62 (MutableMap!773) Bool)

(assert (=> d!233048 (= (valid!683 cacheUp!502) (validCacheMapUp!62 (cache!1160 cacheUp!502)))))

(declare-fun bs!137912 () Bool)

(assert (= bs!137912 d!233048))

(declare-fun m!950549 () Bool)

(assert (=> bs!137912 m!950549))

(assert (=> b!694308 d!233048))

(declare-fun d!233050 () Bool)

(declare-fun c!121808 () Bool)

(assert (=> d!233050 (= c!121808 ((_ is Node!2666) (c!121779 input!870)))))

(declare-fun e!437310 () Bool)

(assert (=> d!233050 (= (inv!9684 (c!121779 input!870)) e!437310)))

(declare-fun b!694441 () Bool)

(assert (=> b!694441 (= e!437310 (inv!9692 (c!121779 input!870)))))

(declare-fun b!694442 () Bool)

(declare-fun e!437311 () Bool)

(assert (=> b!694442 (= e!437310 e!437311)))

(declare-fun res!314548 () Bool)

(assert (=> b!694442 (= res!314548 (not ((_ is Leaf!3946) (c!121779 input!870))))))

(assert (=> b!694442 (=> res!314548 e!437311)))

(declare-fun b!694443 () Bool)

(assert (=> b!694443 (= e!437311 (inv!9693 (c!121779 input!870)))))

(assert (= (and d!233050 c!121808) b!694441))

(assert (= (and d!233050 (not c!121808)) b!694442))

(assert (= (and b!694442 (not res!314548)) b!694443))

(declare-fun m!950551 () Bool)

(assert (=> b!694441 m!950551))

(declare-fun m!950553 () Bool)

(assert (=> b!694443 m!950553))

(assert (=> b!694291 d!233050))

(declare-fun d!233052 () Bool)

(assert (=> d!233052 (= (array_inv!985 (_keys!1094 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) (bvsge (size!6184 (_keys!1094 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!694307 d!233052))

(declare-fun d!233054 () Bool)

(assert (=> d!233054 (= (array_inv!986 (_values!1079 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) (bvsge (size!6186 (_values!1079 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))) #b00000000000000000000000000000000))))

(assert (=> b!694307 d!233054))

(declare-fun b!694453 () Bool)

(declare-fun e!437317 () List!7588)

(assert (=> b!694453 (= e!437317 (Cons!7574 (h!12975 lt!285377) (++!1972 (t!87411 lt!285377) lt!285382)))))

(declare-fun b!694452 () Bool)

(assert (=> b!694452 (= e!437317 lt!285382)))

(declare-fun d!233056 () Bool)

(declare-fun e!437316 () Bool)

(assert (=> d!233056 e!437316))

(declare-fun res!314554 () Bool)

(assert (=> d!233056 (=> (not res!314554) (not e!437316))))

(declare-fun lt!285444 () List!7588)

(declare-fun content!1188 (List!7588) (InoxSet C!4308))

(assert (=> d!233056 (= res!314554 (= (content!1188 lt!285444) ((_ map or) (content!1188 lt!285377) (content!1188 lt!285382))))))

(assert (=> d!233056 (= lt!285444 e!437317)))

(declare-fun c!121811 () Bool)

(assert (=> d!233056 (= c!121811 ((_ is Nil!7574) lt!285377))))

(assert (=> d!233056 (= (++!1972 lt!285377 lt!285382) lt!285444)))

(declare-fun b!694455 () Bool)

(assert (=> b!694455 (= e!437316 (or (not (= lt!285382 Nil!7574)) (= lt!285444 lt!285377)))))

(declare-fun b!694454 () Bool)

(declare-fun res!314553 () Bool)

(assert (=> b!694454 (=> (not res!314553) (not e!437316))))

(assert (=> b!694454 (= res!314553 (= (size!6190 lt!285444) (+ (size!6190 lt!285377) (size!6190 lt!285382))))))

(assert (= (and d!233056 c!121811) b!694452))

(assert (= (and d!233056 (not c!121811)) b!694453))

(assert (= (and d!233056 res!314554) b!694454))

(assert (= (and b!694454 res!314553) b!694455))

(declare-fun m!950555 () Bool)

(assert (=> b!694453 m!950555))

(declare-fun m!950557 () Bool)

(assert (=> d!233056 m!950557))

(declare-fun m!950559 () Bool)

(assert (=> d!233056 m!950559))

(declare-fun m!950561 () Bool)

(assert (=> d!233056 m!950561))

(declare-fun m!950563 () Bool)

(assert (=> b!694454 m!950563))

(declare-fun m!950565 () Bool)

(assert (=> b!694454 m!950565))

(assert (=> b!694454 m!950515))

(assert (=> b!694290 d!233056))

(declare-fun d!233058 () Bool)

(assert (=> d!233058 (= (list!3168 totalInput!378) (list!3169 (c!121779 totalInput!378)))))

(declare-fun bs!137913 () Bool)

(assert (= bs!137913 d!233058))

(declare-fun m!950567 () Bool)

(assert (=> bs!137913 m!950567))

(assert (=> b!694290 d!233058))

(declare-fun d!233060 () Bool)

(assert (=> d!233060 (= (list!3168 input!870) (list!3169 (c!121779 input!870)))))

(declare-fun bs!137914 () Bool)

(assert (= bs!137914 d!233060))

(declare-fun m!950569 () Bool)

(assert (=> bs!137914 m!950569))

(assert (=> b!694290 d!233060))

(declare-fun d!233062 () Bool)

(assert (=> d!233062 (= (list!3168 treated!50) (list!3169 (c!121779 treated!50)))))

(declare-fun bs!137915 () Bool)

(assert (= bs!137915 d!233062))

(declare-fun m!950571 () Bool)

(assert (=> bs!137915 m!950571))

(assert (=> b!694290 d!233062))

(declare-fun d!233064 () Bool)

(declare-fun res!314557 () Bool)

(declare-fun e!437320 () Bool)

(assert (=> d!233064 (=> (not res!314557) (not e!437320))))

(assert (=> d!233064 (= res!314557 ((_ is HashMap!772) (cache!1159 cacheFindLongestMatch!74)))))

(assert (=> d!233064 (= (inv!9689 cacheFindLongestMatch!74) e!437320)))

(declare-fun b!694458 () Bool)

(assert (=> b!694458 (= e!437320 (validCacheMapFindLongestMatch!8 (cache!1159 cacheFindLongestMatch!74) (totalInput!1813 cacheFindLongestMatch!74)))))

(assert (= (and d!233064 res!314557) b!694458))

(assert (=> b!694458 m!950547))

(assert (=> start!66304 d!233064))

(declare-fun d!233066 () Bool)

(assert (=> d!233066 (= (inv!9686 acc!372) (isBalanced!698 (c!121780 acc!372)))))

(declare-fun bs!137916 () Bool)

(assert (= bs!137916 d!233066))

(declare-fun m!950573 () Bool)

(assert (=> bs!137916 m!950573))

(assert (=> start!66304 d!233066))

(declare-fun d!233068 () Bool)

(assert (=> d!233068 (= (inv!9685 input!870) (isBalanced!699 (c!121779 input!870)))))

(declare-fun bs!137917 () Bool)

(assert (= bs!137917 d!233068))

(declare-fun m!950575 () Bool)

(assert (=> bs!137917 m!950575))

(assert (=> start!66304 d!233068))

(declare-fun d!233070 () Bool)

(declare-fun res!314560 () Bool)

(declare-fun e!437323 () Bool)

(assert (=> d!233070 (=> (not res!314560) (not e!437323))))

(assert (=> d!233070 (= res!314560 ((_ is HashMap!771) (cache!1158 cacheDown!515)))))

(assert (=> d!233070 (= (inv!9688 cacheDown!515) e!437323)))

(declare-fun b!694461 () Bool)

(assert (=> b!694461 (= e!437323 (validCacheMapDown!62 (cache!1158 cacheDown!515)))))

(assert (= (and d!233070 res!314560) b!694461))

(assert (=> b!694461 m!950545))

(assert (=> start!66304 d!233070))

(declare-fun d!233072 () Bool)

(assert (=> d!233072 (= (inv!9685 treated!50) (isBalanced!699 (c!121779 treated!50)))))

(declare-fun bs!137918 () Bool)

(assert (= bs!137918 d!233072))

(declare-fun m!950577 () Bool)

(assert (=> bs!137918 m!950577))

(assert (=> start!66304 d!233072))

(declare-fun d!233074 () Bool)

(declare-fun res!314563 () Bool)

(declare-fun e!437326 () Bool)

(assert (=> d!233074 (=> (not res!314563) (not e!437326))))

(assert (=> d!233074 (= res!314563 ((_ is HashMap!773) (cache!1160 cacheUp!502)))))

(assert (=> d!233074 (= (inv!9687 cacheUp!502) e!437326)))

(declare-fun b!694464 () Bool)

(assert (=> b!694464 (= e!437326 (validCacheMapUp!62 (cache!1160 cacheUp!502)))))

(assert (= (and d!233074 res!314563) b!694464))

(assert (=> b!694464 m!950549))

(assert (=> start!66304 d!233074))

(declare-fun d!233076 () Bool)

(assert (=> d!233076 (= (inv!9685 totalInput!378) (isBalanced!699 (c!121779 totalInput!378)))))

(declare-fun bs!137919 () Bool)

(assert (= bs!137919 d!233076))

(declare-fun m!950579 () Bool)

(assert (=> bs!137919 m!950579))

(assert (=> start!66304 d!233076))

(declare-fun tp!210083 () Bool)

(declare-fun e!437332 () Bool)

(declare-fun tp!210084 () Bool)

(declare-fun b!694473 () Bool)

(assert (=> b!694473 (= e!437332 (and (inv!9684 (left!6027 (c!121779 treated!50))) tp!210084 (inv!9684 (right!6357 (c!121779 treated!50))) tp!210083))))

(declare-fun b!694475 () Bool)

(declare-fun e!437331 () Bool)

(declare-fun tp!210085 () Bool)

(assert (=> b!694475 (= e!437331 tp!210085)))

(declare-fun b!694474 () Bool)

(declare-fun inv!9696 (IArray!5333) Bool)

(assert (=> b!694474 (= e!437332 (and (inv!9696 (xs!5319 (c!121779 treated!50))) e!437331))))

(assert (=> b!694316 (= tp!210051 (and (inv!9684 (c!121779 treated!50)) e!437332))))

(assert (= (and b!694316 ((_ is Node!2666) (c!121779 treated!50))) b!694473))

(assert (= b!694474 b!694475))

(assert (= (and b!694316 ((_ is Leaf!3946) (c!121779 treated!50))) b!694474))

(declare-fun m!950581 () Bool)

(assert (=> b!694473 m!950581))

(declare-fun m!950583 () Bool)

(assert (=> b!694473 m!950583))

(declare-fun m!950585 () Bool)

(assert (=> b!694474 m!950585))

(assert (=> b!694316 m!950353))

(declare-fun b!694486 () Bool)

(declare-fun b_free!19825 () Bool)

(declare-fun b_next!19889 () Bool)

(assert (=> b!694486 (= b_free!19825 (not b_next!19889))))

(declare-fun tp!210096 () Bool)

(declare-fun b_and!63619 () Bool)

(assert (=> b!694486 (= tp!210096 b_and!63619)))

(declare-fun b_free!19827 () Bool)

(declare-fun b_next!19891 () Bool)

(assert (=> b!694486 (= b_free!19827 (not b_next!19891))))

(declare-fun tp!210094 () Bool)

(declare-fun b_and!63621 () Bool)

(assert (=> b!694486 (= tp!210094 b_and!63621)))

(declare-fun e!437342 () Bool)

(assert (=> b!694486 (= e!437342 (and tp!210096 tp!210094))))

(declare-fun e!437341 () Bool)

(declare-fun b!694485 () Bool)

(declare-fun tp!210097 () Bool)

(assert (=> b!694485 (= e!437341 (and tp!210097 (inv!9682 (tag!1776 (h!12977 (t!87413 rules!1486)))) (inv!9691 (transformation!1514 (h!12977 (t!87413 rules!1486)))) e!437342))))

(declare-fun b!694484 () Bool)

(declare-fun e!437344 () Bool)

(declare-fun tp!210095 () Bool)

(assert (=> b!694484 (= e!437344 (and e!437341 tp!210095))))

(assert (=> b!694306 (= tp!210062 e!437344)))

(assert (= b!694485 b!694486))

(assert (= b!694484 b!694485))

(assert (= (and b!694306 ((_ is Cons!7576) (t!87413 rules!1486))) b!694484))

(declare-fun m!950587 () Bool)

(assert (=> b!694485 m!950587))

(declare-fun m!950589 () Bool)

(assert (=> b!694485 m!950589))

(declare-fun e!437353 () Bool)

(assert (=> b!694325 (= tp!210073 e!437353)))

(declare-fun setIsEmpty!3887 () Bool)

(declare-fun setRes!3887 () Bool)

(assert (=> setIsEmpty!3887 setRes!3887))

(declare-fun b!694495 () Bool)

(declare-fun e!437352 () Bool)

(declare-fun tp!210107 () Bool)

(assert (=> b!694495 (= e!437352 tp!210107)))

(declare-fun b!694496 () Bool)

(declare-fun e!437351 () Bool)

(declare-fun tp!210109 () Bool)

(assert (=> b!694496 (= e!437351 tp!210109)))

(declare-fun tp!210106 () Bool)

(declare-fun b!694497 () Bool)

(declare-fun tp_is_empty!3649 () Bool)

(declare-fun inv!9697 (Context!510) Bool)

(assert (=> b!694497 (= e!437353 (and (inv!9697 (_1!4439 (_1!4440 (h!12981 mapDefault!3211)))) e!437351 tp_is_empty!3649 setRes!3887 tp!210106))))

(declare-fun condSetEmpty!3887 () Bool)

(assert (=> b!694497 (= condSetEmpty!3887 (= (_2!4440 (h!12981 mapDefault!3211)) ((as const (Array Context!510 Bool)) false)))))

(declare-fun setElem!3887 () Context!510)

(declare-fun tp!210108 () Bool)

(declare-fun setNonEmpty!3887 () Bool)

(assert (=> setNonEmpty!3887 (= setRes!3887 (and tp!210108 (inv!9697 setElem!3887) e!437352))))

(declare-fun setRest!3887 () (InoxSet Context!510))

(assert (=> setNonEmpty!3887 (= (_2!4440 (h!12981 mapDefault!3211)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3887 true) setRest!3887))))

(assert (= b!694497 b!694496))

(assert (= (and b!694497 condSetEmpty!3887) setIsEmpty!3887))

(assert (= (and b!694497 (not condSetEmpty!3887)) setNonEmpty!3887))

(assert (= setNonEmpty!3887 b!694495))

(assert (= (and b!694325 ((_ is Cons!7580) mapDefault!3211)) b!694497))

(declare-fun m!950591 () Bool)

(assert (=> b!694497 m!950591))

(declare-fun m!950593 () Bool)

(assert (=> setNonEmpty!3887 m!950593))

(declare-fun condMapEmpty!3214 () Bool)

(declare-fun mapDefault!3214 () List!7593)

(assert (=> mapNonEmpty!3211 (= condMapEmpty!3214 (= mapRest!3210 ((as const (Array (_ BitVec 32) List!7593)) mapDefault!3214)))))

(declare-fun e!437365 () Bool)

(declare-fun mapRes!3214 () Bool)

(assert (=> mapNonEmpty!3211 (= tp!210065 (and e!437365 mapRes!3214))))

(declare-fun setElem!3893 () Context!510)

(declare-fun setNonEmpty!3892 () Bool)

(declare-fun e!437364 () Bool)

(declare-fun tp!210130 () Bool)

(declare-fun setRes!3893 () Bool)

(assert (=> setNonEmpty!3892 (= setRes!3893 (and tp!210130 (inv!9697 setElem!3893) e!437364))))

(declare-fun setRest!3893 () (InoxSet Context!510))

(assert (=> setNonEmpty!3892 (= (_1!4437 (_1!4438 (h!12980 mapDefault!3214))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3893 true) setRest!3893))))

(declare-fun tp!210126 () Bool)

(declare-fun setRes!3892 () Bool)

(declare-fun setElem!3892 () Context!510)

(declare-fun e!437363 () Bool)

(declare-fun setNonEmpty!3893 () Bool)

(assert (=> setNonEmpty!3893 (= setRes!3892 (and tp!210126 (inv!9697 setElem!3892) e!437363))))

(declare-fun mapValue!3214 () List!7593)

(declare-fun setRest!3892 () (InoxSet Context!510))

(assert (=> setNonEmpty!3893 (= (_1!4437 (_1!4438 (h!12980 mapValue!3214))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3892 true) setRest!3892))))

(declare-fun mapIsEmpty!3214 () Bool)

(assert (=> mapIsEmpty!3214 mapRes!3214))

(declare-fun b!694508 () Bool)

(declare-fun tp!210128 () Bool)

(assert (=> b!694508 (= e!437364 tp!210128)))

(declare-fun mapNonEmpty!3214 () Bool)

(declare-fun tp!210127 () Bool)

(declare-fun e!437362 () Bool)

(assert (=> mapNonEmpty!3214 (= mapRes!3214 (and tp!210127 e!437362))))

(declare-fun mapKey!3214 () (_ BitVec 32))

(declare-fun mapRest!3214 () (Array (_ BitVec 32) List!7593))

(assert (=> mapNonEmpty!3214 (= mapRest!3210 (store mapRest!3214 mapKey!3214 mapValue!3214))))

(declare-fun b!694509 () Bool)

(declare-fun tp!210129 () Bool)

(assert (=> b!694509 (= e!437363 tp!210129)))

(declare-fun b!694510 () Bool)

(declare-fun tp!210125 () Bool)

(assert (=> b!694510 (= e!437365 (and setRes!3893 tp!210125))))

(declare-fun condSetEmpty!3893 () Bool)

(assert (=> b!694510 (= condSetEmpty!3893 (= (_1!4437 (_1!4438 (h!12980 mapDefault!3214))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun b!694511 () Bool)

(declare-fun tp!210124 () Bool)

(assert (=> b!694511 (= e!437362 (and setRes!3892 tp!210124))))

(declare-fun condSetEmpty!3892 () Bool)

(assert (=> b!694511 (= condSetEmpty!3892 (= (_1!4437 (_1!4438 (h!12980 mapValue!3214))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun setIsEmpty!3892 () Bool)

(assert (=> setIsEmpty!3892 setRes!3892))

(declare-fun setIsEmpty!3893 () Bool)

(assert (=> setIsEmpty!3893 setRes!3893))

(assert (= (and mapNonEmpty!3211 condMapEmpty!3214) mapIsEmpty!3214))

(assert (= (and mapNonEmpty!3211 (not condMapEmpty!3214)) mapNonEmpty!3214))

(assert (= (and b!694511 condSetEmpty!3892) setIsEmpty!3892))

(assert (= (and b!694511 (not condSetEmpty!3892)) setNonEmpty!3893))

(assert (= setNonEmpty!3893 b!694509))

(assert (= (and mapNonEmpty!3214 ((_ is Cons!7579) mapValue!3214)) b!694511))

(assert (= (and b!694510 condSetEmpty!3893) setIsEmpty!3893))

(assert (= (and b!694510 (not condSetEmpty!3893)) setNonEmpty!3892))

(assert (= setNonEmpty!3892 b!694508))

(assert (= (and mapNonEmpty!3211 ((_ is Cons!7579) mapDefault!3214)) b!694510))

(declare-fun m!950595 () Bool)

(assert (=> setNonEmpty!3892 m!950595))

(declare-fun m!950597 () Bool)

(assert (=> setNonEmpty!3893 m!950597))

(declare-fun m!950599 () Bool)

(assert (=> mapNonEmpty!3214 m!950599))

(declare-fun e!437370 () Bool)

(assert (=> mapNonEmpty!3211 (= tp!210057 e!437370)))

(declare-fun b!694518 () Bool)

(declare-fun setRes!3896 () Bool)

(declare-fun tp!210137 () Bool)

(assert (=> b!694518 (= e!437370 (and setRes!3896 tp!210137))))

(declare-fun condSetEmpty!3896 () Bool)

(assert (=> b!694518 (= condSetEmpty!3896 (= (_1!4437 (_1!4438 (h!12980 mapValue!3211))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun e!437371 () Bool)

(declare-fun setNonEmpty!3896 () Bool)

(declare-fun setElem!3896 () Context!510)

(declare-fun tp!210138 () Bool)

(assert (=> setNonEmpty!3896 (= setRes!3896 (and tp!210138 (inv!9697 setElem!3896) e!437371))))

(declare-fun setRest!3896 () (InoxSet Context!510))

(assert (=> setNonEmpty!3896 (= (_1!4437 (_1!4438 (h!12980 mapValue!3211))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3896 true) setRest!3896))))

(declare-fun b!694519 () Bool)

(declare-fun tp!210139 () Bool)

(assert (=> b!694519 (= e!437371 tp!210139)))

(declare-fun setIsEmpty!3896 () Bool)

(assert (=> setIsEmpty!3896 setRes!3896))

(assert (= (and b!694518 condSetEmpty!3896) setIsEmpty!3896))

(assert (= (and b!694518 (not condSetEmpty!3896)) setNonEmpty!3896))

(assert (= setNonEmpty!3896 b!694519))

(assert (= (and mapNonEmpty!3211 ((_ is Cons!7579) mapValue!3211)) b!694518))

(declare-fun m!950601 () Bool)

(assert (=> setNonEmpty!3896 m!950601))

(declare-fun tp!210141 () Bool)

(declare-fun e!437373 () Bool)

(declare-fun tp!210140 () Bool)

(declare-fun b!694520 () Bool)

(assert (=> b!694520 (= e!437373 (and (inv!9684 (left!6027 (c!121779 totalInput!378))) tp!210141 (inv!9684 (right!6357 (c!121779 totalInput!378))) tp!210140))))

(declare-fun b!694522 () Bool)

(declare-fun e!437372 () Bool)

(declare-fun tp!210142 () Bool)

(assert (=> b!694522 (= e!437372 tp!210142)))

(declare-fun b!694521 () Bool)

(assert (=> b!694521 (= e!437373 (and (inv!9696 (xs!5319 (c!121779 totalInput!378))) e!437372))))

(assert (=> b!694287 (= tp!210076 (and (inv!9684 (c!121779 totalInput!378)) e!437373))))

(assert (= (and b!694287 ((_ is Node!2666) (c!121779 totalInput!378))) b!694520))

(assert (= b!694521 b!694522))

(assert (= (and b!694287 ((_ is Leaf!3946) (c!121779 totalInput!378))) b!694521))

(declare-fun m!950603 () Bool)

(assert (=> b!694520 m!950603))

(declare-fun m!950605 () Bool)

(assert (=> b!694520 m!950605))

(declare-fun m!950607 () Bool)

(assert (=> b!694521 m!950607))

(assert (=> b!694287 m!950303))

(declare-fun b!694534 () Bool)

(declare-fun e!437376 () Bool)

(declare-fun tp!210157 () Bool)

(declare-fun tp!210156 () Bool)

(assert (=> b!694534 (= e!437376 (and tp!210157 tp!210156))))

(assert (=> b!694326 (= tp!210061 e!437376)))

(declare-fun b!694536 () Bool)

(declare-fun tp!210153 () Bool)

(declare-fun tp!210154 () Bool)

(assert (=> b!694536 (= e!437376 (and tp!210153 tp!210154))))

(declare-fun b!694533 () Bool)

(assert (=> b!694533 (= e!437376 tp_is_empty!3649)))

(declare-fun b!694535 () Bool)

(declare-fun tp!210155 () Bool)

(assert (=> b!694535 (= e!437376 tp!210155)))

(assert (= (and b!694326 ((_ is ElementMatch!1853) (regex!1514 (h!12977 rules!1486)))) b!694533))

(assert (= (and b!694326 ((_ is Concat!3412) (regex!1514 (h!12977 rules!1486)))) b!694534))

(assert (= (and b!694326 ((_ is Star!1853) (regex!1514 (h!12977 rules!1486)))) b!694535))

(assert (= (and b!694326 ((_ is Union!1853) (regex!1514 (h!12977 rules!1486)))) b!694536))

(declare-fun e!437379 () Bool)

(assert (=> b!694324 (= tp!210059 e!437379)))

(declare-fun setIsEmpty!3897 () Bool)

(declare-fun setRes!3897 () Bool)

(assert (=> setIsEmpty!3897 setRes!3897))

(declare-fun b!694537 () Bool)

(declare-fun e!437378 () Bool)

(declare-fun tp!210159 () Bool)

(assert (=> b!694537 (= e!437378 tp!210159)))

(declare-fun b!694538 () Bool)

(declare-fun e!437377 () Bool)

(declare-fun tp!210161 () Bool)

(assert (=> b!694538 (= e!437377 tp!210161)))

(declare-fun tp!210158 () Bool)

(declare-fun b!694539 () Bool)

(assert (=> b!694539 (= e!437379 (and (inv!9697 (_1!4439 (_1!4440 (h!12981 (zeroValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))))) e!437377 tp_is_empty!3649 setRes!3897 tp!210158))))

(declare-fun condSetEmpty!3897 () Bool)

(assert (=> b!694539 (= condSetEmpty!3897 (= (_2!4440 (h!12981 (zeroValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun setNonEmpty!3897 () Bool)

(declare-fun tp!210160 () Bool)

(declare-fun setElem!3897 () Context!510)

(assert (=> setNonEmpty!3897 (= setRes!3897 (and tp!210160 (inv!9697 setElem!3897) e!437378))))

(declare-fun setRest!3897 () (InoxSet Context!510))

(assert (=> setNonEmpty!3897 (= (_2!4440 (h!12981 (zeroValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3897 true) setRest!3897))))

(assert (= b!694539 b!694538))

(assert (= (and b!694539 condSetEmpty!3897) setIsEmpty!3897))

(assert (= (and b!694539 (not condSetEmpty!3897)) setNonEmpty!3897))

(assert (= setNonEmpty!3897 b!694537))

(assert (= (and b!694324 ((_ is Cons!7580) (zeroValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))) b!694539))

(declare-fun m!950609 () Bool)

(assert (=> b!694539 m!950609))

(declare-fun m!950611 () Bool)

(assert (=> setNonEmpty!3897 m!950611))

(declare-fun e!437382 () Bool)

(assert (=> b!694324 (= tp!210075 e!437382)))

(declare-fun setIsEmpty!3898 () Bool)

(declare-fun setRes!3898 () Bool)

(assert (=> setIsEmpty!3898 setRes!3898))

(declare-fun b!694540 () Bool)

(declare-fun e!437381 () Bool)

(declare-fun tp!210163 () Bool)

(assert (=> b!694540 (= e!437381 tp!210163)))

(declare-fun b!694541 () Bool)

(declare-fun e!437380 () Bool)

(declare-fun tp!210165 () Bool)

(assert (=> b!694541 (= e!437380 tp!210165)))

(declare-fun b!694542 () Bool)

(declare-fun tp!210162 () Bool)

(assert (=> b!694542 (= e!437382 (and (inv!9697 (_1!4439 (_1!4440 (h!12981 (minValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))))) e!437380 tp_is_empty!3649 setRes!3898 tp!210162))))

(declare-fun condSetEmpty!3898 () Bool)

(assert (=> b!694542 (= condSetEmpty!3898 (= (_2!4440 (h!12981 (minValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun setNonEmpty!3898 () Bool)

(declare-fun setElem!3898 () Context!510)

(declare-fun tp!210164 () Bool)

(assert (=> setNonEmpty!3898 (= setRes!3898 (and tp!210164 (inv!9697 setElem!3898) e!437381))))

(declare-fun setRest!3898 () (InoxSet Context!510))

(assert (=> setNonEmpty!3898 (= (_2!4440 (h!12981 (minValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3898 true) setRest!3898))))

(assert (= b!694542 b!694541))

(assert (= (and b!694542 condSetEmpty!3898) setIsEmpty!3898))

(assert (= (and b!694542 (not condSetEmpty!3898)) setNonEmpty!3898))

(assert (= setNonEmpty!3898 b!694540))

(assert (= (and b!694324 ((_ is Cons!7580) (minValue!1058 (v!17727 (underlying!1785 (v!17728 (underlying!1786 (cache!1160 cacheUp!502)))))))) b!694542))

(declare-fun m!950613 () Bool)

(assert (=> b!694542 m!950613))

(declare-fun m!950615 () Bool)

(assert (=> setNonEmpty!3898 m!950615))

(declare-fun e!437384 () Bool)

(declare-fun tp!210166 () Bool)

(declare-fun tp!210167 () Bool)

(declare-fun b!694543 () Bool)

(assert (=> b!694543 (= e!437384 (and (inv!9684 (left!6027 (c!121779 (totalInput!1813 cacheFindLongestMatch!74)))) tp!210167 (inv!9684 (right!6357 (c!121779 (totalInput!1813 cacheFindLongestMatch!74)))) tp!210166))))

(declare-fun b!694545 () Bool)

(declare-fun e!437383 () Bool)

(declare-fun tp!210168 () Bool)

(assert (=> b!694545 (= e!437383 tp!210168)))

(declare-fun b!694544 () Bool)

(assert (=> b!694544 (= e!437384 (and (inv!9696 (xs!5319 (c!121779 (totalInput!1813 cacheFindLongestMatch!74)))) e!437383))))

(assert (=> b!694296 (= tp!210048 (and (inv!9684 (c!121779 (totalInput!1813 cacheFindLongestMatch!74))) e!437384))))

(assert (= (and b!694296 ((_ is Node!2666) (c!121779 (totalInput!1813 cacheFindLongestMatch!74)))) b!694543))

(assert (= b!694544 b!694545))

(assert (= (and b!694296 ((_ is Leaf!3946) (c!121779 (totalInput!1813 cacheFindLongestMatch!74)))) b!694544))

(declare-fun m!950617 () Bool)

(assert (=> b!694543 m!950617))

(declare-fun m!950619 () Bool)

(assert (=> b!694543 m!950619))

(declare-fun m!950621 () Bool)

(assert (=> b!694544 m!950621))

(assert (=> b!694296 m!950309))

(declare-fun e!437385 () Bool)

(assert (=> b!694314 (= tp!210067 e!437385)))

(declare-fun b!694546 () Bool)

(declare-fun setRes!3899 () Bool)

(declare-fun tp!210169 () Bool)

(assert (=> b!694546 (= e!437385 (and setRes!3899 tp!210169))))

(declare-fun condSetEmpty!3899 () Bool)

(assert (=> b!694546 (= condSetEmpty!3899 (= (_1!4437 (_1!4438 (h!12980 mapDefault!3209))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun e!437386 () Bool)

(declare-fun setNonEmpty!3899 () Bool)

(declare-fun tp!210170 () Bool)

(declare-fun setElem!3899 () Context!510)

(assert (=> setNonEmpty!3899 (= setRes!3899 (and tp!210170 (inv!9697 setElem!3899) e!437386))))

(declare-fun setRest!3899 () (InoxSet Context!510))

(assert (=> setNonEmpty!3899 (= (_1!4437 (_1!4438 (h!12980 mapDefault!3209))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3899 true) setRest!3899))))

(declare-fun b!694547 () Bool)

(declare-fun tp!210171 () Bool)

(assert (=> b!694547 (= e!437386 tp!210171)))

(declare-fun setIsEmpty!3899 () Bool)

(assert (=> setIsEmpty!3899 setRes!3899))

(assert (= (and b!694546 condSetEmpty!3899) setIsEmpty!3899))

(assert (= (and b!694546 (not condSetEmpty!3899)) setNonEmpty!3899))

(assert (= setNonEmpty!3899 b!694547))

(assert (= (and b!694314 ((_ is Cons!7579) mapDefault!3209)) b!694546))

(declare-fun m!950623 () Bool)

(assert (=> setNonEmpty!3899 m!950623))

(declare-fun setIsEmpty!3902 () Bool)

(declare-fun setRes!3902 () Bool)

(assert (=> setIsEmpty!3902 setRes!3902))

(declare-fun tp!210185 () Bool)

(declare-fun setElem!3902 () Context!510)

(declare-fun setNonEmpty!3902 () Bool)

(declare-fun e!437394 () Bool)

(assert (=> setNonEmpty!3902 (= setRes!3902 (and tp!210185 (inv!9697 setElem!3902) e!437394))))

(declare-fun setRest!3902 () (InoxSet Context!510))

(assert (=> setNonEmpty!3902 (= (_2!4436 (h!12979 mapDefault!3210)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3902 true) setRest!3902))))

(declare-fun b!694556 () Bool)

(declare-fun tp!210184 () Bool)

(assert (=> b!694556 (= e!437394 tp!210184)))

(declare-fun b!694558 () Bool)

(declare-fun e!437395 () Bool)

(declare-fun tp!210186 () Bool)

(assert (=> b!694558 (= e!437395 tp!210186)))

(declare-fun tp!210183 () Bool)

(declare-fun b!694557 () Bool)

(declare-fun e!437393 () Bool)

(declare-fun tp!210182 () Bool)

(assert (=> b!694557 (= e!437393 (and tp!210183 (inv!9697 (_2!4435 (_1!4436 (h!12979 mapDefault!3210)))) e!437395 tp_is_empty!3649 setRes!3902 tp!210182))))

(declare-fun condSetEmpty!3902 () Bool)

(assert (=> b!694557 (= condSetEmpty!3902 (= (_2!4436 (h!12979 mapDefault!3210)) ((as const (Array Context!510 Bool)) false)))))

(assert (=> b!694302 (= tp!210052 e!437393)))

(assert (= b!694557 b!694558))

(assert (= (and b!694557 condSetEmpty!3902) setIsEmpty!3902))

(assert (= (and b!694557 (not condSetEmpty!3902)) setNonEmpty!3902))

(assert (= setNonEmpty!3902 b!694556))

(assert (= (and b!694302 ((_ is Cons!7578) mapDefault!3210)) b!694557))

(declare-fun m!950625 () Bool)

(assert (=> setNonEmpty!3902 m!950625))

(declare-fun m!950627 () Bool)

(assert (=> b!694557 m!950627))

(declare-fun setIsEmpty!3903 () Bool)

(declare-fun setRes!3903 () Bool)

(assert (=> setIsEmpty!3903 setRes!3903))

(declare-fun e!437397 () Bool)

(declare-fun setNonEmpty!3903 () Bool)

(declare-fun setElem!3903 () Context!510)

(declare-fun tp!210190 () Bool)

(assert (=> setNonEmpty!3903 (= setRes!3903 (and tp!210190 (inv!9697 setElem!3903) e!437397))))

(declare-fun setRest!3903 () (InoxSet Context!510))

(assert (=> setNonEmpty!3903 (= (_2!4436 (h!12979 (zeroValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3903 true) setRest!3903))))

(declare-fun b!694559 () Bool)

(declare-fun tp!210189 () Bool)

(assert (=> b!694559 (= e!437397 tp!210189)))

(declare-fun b!694561 () Bool)

(declare-fun e!437398 () Bool)

(declare-fun tp!210191 () Bool)

(assert (=> b!694561 (= e!437398 tp!210191)))

(declare-fun e!437396 () Bool)

(declare-fun tp!210188 () Bool)

(declare-fun tp!210187 () Bool)

(declare-fun b!694560 () Bool)

(assert (=> b!694560 (= e!437396 (and tp!210188 (inv!9697 (_2!4435 (_1!4436 (h!12979 (zeroValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))))) e!437398 tp_is_empty!3649 setRes!3903 tp!210187))))

(declare-fun condSetEmpty!3903 () Bool)

(assert (=> b!694560 (= condSetEmpty!3903 (= (_2!4436 (h!12979 (zeroValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))) ((as const (Array Context!510 Bool)) false)))))

(assert (=> b!694323 (= tp!210072 e!437396)))

(assert (= b!694560 b!694561))

(assert (= (and b!694560 condSetEmpty!3903) setIsEmpty!3903))

(assert (= (and b!694560 (not condSetEmpty!3903)) setNonEmpty!3903))

(assert (= setNonEmpty!3903 b!694559))

(assert (= (and b!694323 ((_ is Cons!7578) (zeroValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))) b!694560))

(declare-fun m!950629 () Bool)

(assert (=> setNonEmpty!3903 m!950629))

(declare-fun m!950631 () Bool)

(assert (=> b!694560 m!950631))

(declare-fun setIsEmpty!3904 () Bool)

(declare-fun setRes!3904 () Bool)

(assert (=> setIsEmpty!3904 setRes!3904))

(declare-fun tp!210195 () Bool)

(declare-fun setElem!3904 () Context!510)

(declare-fun e!437400 () Bool)

(declare-fun setNonEmpty!3904 () Bool)

(assert (=> setNonEmpty!3904 (= setRes!3904 (and tp!210195 (inv!9697 setElem!3904) e!437400))))

(declare-fun setRest!3904 () (InoxSet Context!510))

(assert (=> setNonEmpty!3904 (= (_2!4436 (h!12979 (minValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3904 true) setRest!3904))))

(declare-fun b!694562 () Bool)

(declare-fun tp!210194 () Bool)

(assert (=> b!694562 (= e!437400 tp!210194)))

(declare-fun b!694564 () Bool)

(declare-fun e!437401 () Bool)

(declare-fun tp!210196 () Bool)

(assert (=> b!694564 (= e!437401 tp!210196)))

(declare-fun tp!210192 () Bool)

(declare-fun b!694563 () Bool)

(declare-fun e!437399 () Bool)

(declare-fun tp!210193 () Bool)

(assert (=> b!694563 (= e!437399 (and tp!210193 (inv!9697 (_2!4435 (_1!4436 (h!12979 (minValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))))) e!437401 tp_is_empty!3649 setRes!3904 tp!210192))))

(declare-fun condSetEmpty!3904 () Bool)

(assert (=> b!694563 (= condSetEmpty!3904 (= (_2!4436 (h!12979 (minValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))) ((as const (Array Context!510 Bool)) false)))))

(assert (=> b!694323 (= tp!210070 e!437399)))

(assert (= b!694563 b!694564))

(assert (= (and b!694563 condSetEmpty!3904) setIsEmpty!3904))

(assert (= (and b!694563 (not condSetEmpty!3904)) setNonEmpty!3904))

(assert (= setNonEmpty!3904 b!694562))

(assert (= (and b!694323 ((_ is Cons!7578) (minValue!1056 (v!17723 (underlying!1781 (v!17724 (underlying!1782 (cache!1158 cacheDown!515)))))))) b!694563))

(declare-fun m!950633 () Bool)

(assert (=> setNonEmpty!3904 m!950633))

(declare-fun m!950635 () Bool)

(assert (=> b!694563 m!950635))

(declare-fun b!694579 () Bool)

(declare-fun e!437414 () Bool)

(declare-fun tp!210223 () Bool)

(assert (=> b!694579 (= e!437414 tp!210223)))

(declare-fun setRes!3909 () Bool)

(declare-fun b!694580 () Bool)

(declare-fun tp!210229 () Bool)

(declare-fun tp!210220 () Bool)

(declare-fun e!437415 () Bool)

(declare-fun mapValue!3217 () List!7592)

(declare-fun e!437417 () Bool)

(assert (=> b!694580 (= e!437417 (and tp!210220 (inv!9697 (_2!4435 (_1!4436 (h!12979 mapValue!3217)))) e!437415 tp_is_empty!3649 setRes!3909 tp!210229))))

(declare-fun condSetEmpty!3910 () Bool)

(assert (=> b!694580 (= condSetEmpty!3910 (= (_2!4436 (h!12979 mapValue!3217)) ((as const (Array Context!510 Bool)) false)))))

(declare-fun setNonEmpty!3909 () Bool)

(declare-fun tp!210224 () Bool)

(declare-fun setElem!3910 () Context!510)

(assert (=> setNonEmpty!3909 (= setRes!3909 (and tp!210224 (inv!9697 setElem!3910) e!437414))))

(declare-fun setRest!3909 () (InoxSet Context!510))

(assert (=> setNonEmpty!3909 (= (_2!4436 (h!12979 mapValue!3217)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3910 true) setRest!3909))))

(declare-fun b!694581 () Bool)

(declare-fun e!437419 () Bool)

(declare-fun tp!210222 () Bool)

(assert (=> b!694581 (= e!437419 tp!210222)))

(declare-fun tp!210221 () Bool)

(declare-fun b!694582 () Bool)

(declare-fun mapDefault!3217 () List!7592)

(declare-fun tp!210219 () Bool)

(declare-fun e!437418 () Bool)

(declare-fun setRes!3910 () Bool)

(assert (=> b!694582 (= e!437418 (and tp!210221 (inv!9697 (_2!4435 (_1!4436 (h!12979 mapDefault!3217)))) e!437419 tp_is_empty!3649 setRes!3910 tp!210219))))

(declare-fun condSetEmpty!3909 () Bool)

(assert (=> b!694582 (= condSetEmpty!3909 (= (_2!4436 (h!12979 mapDefault!3217)) ((as const (Array Context!510 Bool)) false)))))

(declare-fun setIsEmpty!3909 () Bool)

(assert (=> setIsEmpty!3909 setRes!3909))

(declare-fun condMapEmpty!3217 () Bool)

(assert (=> mapNonEmpty!3209 (= condMapEmpty!3217 (= mapRest!3211 ((as const (Array (_ BitVec 32) List!7592)) mapDefault!3217)))))

(declare-fun mapRes!3217 () Bool)

(assert (=> mapNonEmpty!3209 (= tp!210068 (and e!437418 mapRes!3217))))

(declare-fun b!694583 () Bool)

(declare-fun tp!210225 () Bool)

(assert (=> b!694583 (= e!437415 tp!210225)))

(declare-fun mapNonEmpty!3217 () Bool)

(declare-fun tp!210226 () Bool)

(assert (=> mapNonEmpty!3217 (= mapRes!3217 (and tp!210226 e!437417))))

(declare-fun mapRest!3217 () (Array (_ BitVec 32) List!7592))

(declare-fun mapKey!3217 () (_ BitVec 32))

(assert (=> mapNonEmpty!3217 (= mapRest!3211 (store mapRest!3217 mapKey!3217 mapValue!3217))))

(declare-fun setIsEmpty!3910 () Bool)

(assert (=> setIsEmpty!3910 setRes!3910))

(declare-fun mapIsEmpty!3217 () Bool)

(assert (=> mapIsEmpty!3217 mapRes!3217))

(declare-fun b!694584 () Bool)

(declare-fun e!437416 () Bool)

(declare-fun tp!210228 () Bool)

(assert (=> b!694584 (= e!437416 tp!210228)))

(declare-fun setNonEmpty!3910 () Bool)

(declare-fun setElem!3909 () Context!510)

(declare-fun tp!210227 () Bool)

(assert (=> setNonEmpty!3910 (= setRes!3910 (and tp!210227 (inv!9697 setElem!3909) e!437416))))

(declare-fun setRest!3910 () (InoxSet Context!510))

(assert (=> setNonEmpty!3910 (= (_2!4436 (h!12979 mapDefault!3217)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3909 true) setRest!3910))))

(assert (= (and mapNonEmpty!3209 condMapEmpty!3217) mapIsEmpty!3217))

(assert (= (and mapNonEmpty!3209 (not condMapEmpty!3217)) mapNonEmpty!3217))

(assert (= b!694580 b!694583))

(assert (= (and b!694580 condSetEmpty!3910) setIsEmpty!3909))

(assert (= (and b!694580 (not condSetEmpty!3910)) setNonEmpty!3909))

(assert (= setNonEmpty!3909 b!694579))

(assert (= (and mapNonEmpty!3217 ((_ is Cons!7578) mapValue!3217)) b!694580))

(assert (= b!694582 b!694581))

(assert (= (and b!694582 condSetEmpty!3909) setIsEmpty!3910))

(assert (= (and b!694582 (not condSetEmpty!3909)) setNonEmpty!3910))

(assert (= setNonEmpty!3910 b!694584))

(assert (= (and mapNonEmpty!3209 ((_ is Cons!7578) mapDefault!3217)) b!694582))

(declare-fun m!950637 () Bool)

(assert (=> setNonEmpty!3910 m!950637))

(declare-fun m!950639 () Bool)

(assert (=> b!694580 m!950639))

(declare-fun m!950641 () Bool)

(assert (=> setNonEmpty!3909 m!950641))

(declare-fun m!950643 () Bool)

(assert (=> b!694582 m!950643))

(declare-fun m!950645 () Bool)

(assert (=> mapNonEmpty!3217 m!950645))

(declare-fun setIsEmpty!3911 () Bool)

(declare-fun setRes!3911 () Bool)

(assert (=> setIsEmpty!3911 setRes!3911))

(declare-fun e!437421 () Bool)

(declare-fun setNonEmpty!3911 () Bool)

(declare-fun setElem!3911 () Context!510)

(declare-fun tp!210233 () Bool)

(assert (=> setNonEmpty!3911 (= setRes!3911 (and tp!210233 (inv!9697 setElem!3911) e!437421))))

(declare-fun setRest!3911 () (InoxSet Context!510))

(assert (=> setNonEmpty!3911 (= (_2!4436 (h!12979 mapValue!3209)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3911 true) setRest!3911))))

(declare-fun b!694585 () Bool)

(declare-fun tp!210232 () Bool)

(assert (=> b!694585 (= e!437421 tp!210232)))

(declare-fun b!694587 () Bool)

(declare-fun e!437422 () Bool)

(declare-fun tp!210234 () Bool)

(assert (=> b!694587 (= e!437422 tp!210234)))

(declare-fun e!437420 () Bool)

(declare-fun tp!210230 () Bool)

(declare-fun tp!210231 () Bool)

(declare-fun b!694586 () Bool)

(assert (=> b!694586 (= e!437420 (and tp!210231 (inv!9697 (_2!4435 (_1!4436 (h!12979 mapValue!3209)))) e!437422 tp_is_empty!3649 setRes!3911 tp!210230))))

(declare-fun condSetEmpty!3911 () Bool)

(assert (=> b!694586 (= condSetEmpty!3911 (= (_2!4436 (h!12979 mapValue!3209)) ((as const (Array Context!510 Bool)) false)))))

(assert (=> mapNonEmpty!3209 (= tp!210074 e!437420)))

(assert (= b!694586 b!694587))

(assert (= (and b!694586 condSetEmpty!3911) setIsEmpty!3911))

(assert (= (and b!694586 (not condSetEmpty!3911)) setNonEmpty!3911))

(assert (= setNonEmpty!3911 b!694585))

(assert (= (and mapNonEmpty!3209 ((_ is Cons!7578) mapValue!3209)) b!694586))

(declare-fun m!950647 () Bool)

(assert (=> setNonEmpty!3911 m!950647))

(declare-fun m!950649 () Bool)

(assert (=> b!694586 m!950649))

(declare-fun tp!210235 () Bool)

(declare-fun e!437424 () Bool)

(declare-fun tp!210236 () Bool)

(declare-fun b!694588 () Bool)

(assert (=> b!694588 (= e!437424 (and (inv!9684 (left!6027 (c!121779 input!870))) tp!210236 (inv!9684 (right!6357 (c!121779 input!870))) tp!210235))))

(declare-fun b!694590 () Bool)

(declare-fun e!437423 () Bool)

(declare-fun tp!210237 () Bool)

(assert (=> b!694590 (= e!437423 tp!210237)))

(declare-fun b!694589 () Bool)

(assert (=> b!694589 (= e!437424 (and (inv!9696 (xs!5319 (c!121779 input!870))) e!437423))))

(assert (=> b!694291 (= tp!210050 (and (inv!9684 (c!121779 input!870)) e!437424))))

(assert (= (and b!694291 ((_ is Node!2666) (c!121779 input!870))) b!694588))

(assert (= b!694589 b!694590))

(assert (= (and b!694291 ((_ is Leaf!3946) (c!121779 input!870))) b!694589))

(declare-fun m!950651 () Bool)

(assert (=> b!694588 m!950651))

(declare-fun m!950653 () Bool)

(assert (=> b!694588 m!950653))

(declare-fun m!950655 () Bool)

(assert (=> b!694589 m!950655))

(assert (=> b!694291 m!950307))

(declare-fun mapIsEmpty!3220 () Bool)

(declare-fun mapRes!3220 () Bool)

(assert (=> mapIsEmpty!3220 mapRes!3220))

(declare-fun mapValue!3220 () List!7594)

(declare-fun tp!210262 () Bool)

(declare-fun setRes!3916 () Bool)

(declare-fun e!437437 () Bool)

(declare-fun b!694605 () Bool)

(declare-fun e!437442 () Bool)

(assert (=> b!694605 (= e!437442 (and (inv!9697 (_1!4439 (_1!4440 (h!12981 mapValue!3220)))) e!437437 tp_is_empty!3649 setRes!3916 tp!210262))))

(declare-fun condSetEmpty!3917 () Bool)

(assert (=> b!694605 (= condSetEmpty!3917 (= (_2!4440 (h!12981 mapValue!3220)) ((as const (Array Context!510 Bool)) false)))))

(declare-fun tp!210264 () Bool)

(declare-fun setRes!3917 () Bool)

(declare-fun e!437440 () Bool)

(declare-fun setElem!3916 () Context!510)

(declare-fun setNonEmpty!3916 () Bool)

(assert (=> setNonEmpty!3916 (= setRes!3917 (and tp!210264 (inv!9697 setElem!3916) e!437440))))

(declare-fun mapDefault!3220 () List!7594)

(declare-fun setRest!3916 () (InoxSet Context!510))

(assert (=> setNonEmpty!3916 (= (_2!4440 (h!12981 mapDefault!3220)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3916 true) setRest!3916))))

(declare-fun b!694606 () Bool)

(declare-fun tp!210259 () Bool)

(assert (=> b!694606 (= e!437437 tp!210259)))

(declare-fun setIsEmpty!3916 () Bool)

(assert (=> setIsEmpty!3916 setRes!3916))

(declare-fun b!694607 () Bool)

(declare-fun e!437441 () Bool)

(declare-fun tp!210258 () Bool)

(assert (=> b!694607 (= e!437441 tp!210258)))

(declare-fun setIsEmpty!3917 () Bool)

(assert (=> setIsEmpty!3917 setRes!3917))

(declare-fun b!694608 () Bool)

(declare-fun tp!210263 () Bool)

(assert (=> b!694608 (= e!437440 tp!210263)))

(declare-fun b!694609 () Bool)

(declare-fun e!437439 () Bool)

(declare-fun e!437438 () Bool)

(declare-fun tp!210257 () Bool)

(assert (=> b!694609 (= e!437439 (and (inv!9697 (_1!4439 (_1!4440 (h!12981 mapDefault!3220)))) e!437438 tp_is_empty!3649 setRes!3917 tp!210257))))

(declare-fun condSetEmpty!3916 () Bool)

(assert (=> b!694609 (= condSetEmpty!3916 (= (_2!4440 (h!12981 mapDefault!3220)) ((as const (Array Context!510 Bool)) false)))))

(declare-fun setElem!3917 () Context!510)

(declare-fun setNonEmpty!3917 () Bool)

(declare-fun tp!210260 () Bool)

(assert (=> setNonEmpty!3917 (= setRes!3916 (and tp!210260 (inv!9697 setElem!3917) e!437441))))

(declare-fun setRest!3917 () (InoxSet Context!510))

(assert (=> setNonEmpty!3917 (= (_2!4440 (h!12981 mapValue!3220)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3917 true) setRest!3917))))

(declare-fun b!694610 () Bool)

(declare-fun tp!210261 () Bool)

(assert (=> b!694610 (= e!437438 tp!210261)))

(declare-fun mapNonEmpty!3220 () Bool)

(declare-fun tp!210256 () Bool)

(assert (=> mapNonEmpty!3220 (= mapRes!3220 (and tp!210256 e!437442))))

(declare-fun mapRest!3220 () (Array (_ BitVec 32) List!7594))

(declare-fun mapKey!3220 () (_ BitVec 32))

(assert (=> mapNonEmpty!3220 (= mapRest!3209 (store mapRest!3220 mapKey!3220 mapValue!3220))))

(declare-fun condMapEmpty!3220 () Bool)

(assert (=> mapNonEmpty!3210 (= condMapEmpty!3220 (= mapRest!3209 ((as const (Array (_ BitVec 32) List!7594)) mapDefault!3220)))))

(assert (=> mapNonEmpty!3210 (= tp!210047 (and e!437439 mapRes!3220))))

(assert (= (and mapNonEmpty!3210 condMapEmpty!3220) mapIsEmpty!3220))

(assert (= (and mapNonEmpty!3210 (not condMapEmpty!3220)) mapNonEmpty!3220))

(assert (= b!694605 b!694606))

(assert (= (and b!694605 condSetEmpty!3917) setIsEmpty!3916))

(assert (= (and b!694605 (not condSetEmpty!3917)) setNonEmpty!3917))

(assert (= setNonEmpty!3917 b!694607))

(assert (= (and mapNonEmpty!3220 ((_ is Cons!7580) mapValue!3220)) b!694605))

(assert (= b!694609 b!694610))

(assert (= (and b!694609 condSetEmpty!3916) setIsEmpty!3917))

(assert (= (and b!694609 (not condSetEmpty!3916)) setNonEmpty!3916))

(assert (= setNonEmpty!3916 b!694608))

(assert (= (and mapNonEmpty!3210 ((_ is Cons!7580) mapDefault!3220)) b!694609))

(declare-fun m!950657 () Bool)

(assert (=> b!694609 m!950657))

(declare-fun m!950659 () Bool)

(assert (=> setNonEmpty!3916 m!950659))

(declare-fun m!950661 () Bool)

(assert (=> setNonEmpty!3917 m!950661))

(declare-fun m!950663 () Bool)

(assert (=> mapNonEmpty!3220 m!950663))

(declare-fun m!950665 () Bool)

(assert (=> b!694605 m!950665))

(declare-fun e!437445 () Bool)

(assert (=> mapNonEmpty!3210 (= tp!210058 e!437445)))

(declare-fun setIsEmpty!3918 () Bool)

(declare-fun setRes!3918 () Bool)

(assert (=> setIsEmpty!3918 setRes!3918))

(declare-fun b!694611 () Bool)

(declare-fun e!437444 () Bool)

(declare-fun tp!210266 () Bool)

(assert (=> b!694611 (= e!437444 tp!210266)))

(declare-fun b!694612 () Bool)

(declare-fun e!437443 () Bool)

(declare-fun tp!210268 () Bool)

(assert (=> b!694612 (= e!437443 tp!210268)))

(declare-fun b!694613 () Bool)

(declare-fun tp!210265 () Bool)

(assert (=> b!694613 (= e!437445 (and (inv!9697 (_1!4439 (_1!4440 (h!12981 mapValue!3210)))) e!437443 tp_is_empty!3649 setRes!3918 tp!210265))))

(declare-fun condSetEmpty!3918 () Bool)

(assert (=> b!694613 (= condSetEmpty!3918 (= (_2!4440 (h!12981 mapValue!3210)) ((as const (Array Context!510 Bool)) false)))))

(declare-fun tp!210267 () Bool)

(declare-fun setElem!3918 () Context!510)

(declare-fun setNonEmpty!3918 () Bool)

(assert (=> setNonEmpty!3918 (= setRes!3918 (and tp!210267 (inv!9697 setElem!3918) e!437444))))

(declare-fun setRest!3918 () (InoxSet Context!510))

(assert (=> setNonEmpty!3918 (= (_2!4440 (h!12981 mapValue!3210)) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3918 true) setRest!3918))))

(assert (= b!694613 b!694612))

(assert (= (and b!694613 condSetEmpty!3918) setIsEmpty!3918))

(assert (= (and b!694613 (not condSetEmpty!3918)) setNonEmpty!3918))

(assert (= setNonEmpty!3918 b!694611))

(assert (= (and mapNonEmpty!3210 ((_ is Cons!7580) mapValue!3210)) b!694613))

(declare-fun m!950667 () Bool)

(assert (=> b!694613 m!950667))

(declare-fun m!950669 () Bool)

(assert (=> setNonEmpty!3918 m!950669))

(declare-fun e!437446 () Bool)

(assert (=> b!694307 (= tp!210066 e!437446)))

(declare-fun b!694614 () Bool)

(declare-fun setRes!3919 () Bool)

(declare-fun tp!210269 () Bool)

(assert (=> b!694614 (= e!437446 (and setRes!3919 tp!210269))))

(declare-fun condSetEmpty!3919 () Bool)

(assert (=> b!694614 (= condSetEmpty!3919 (= (_1!4437 (_1!4438 (h!12980 (zeroValue!1057 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun e!437447 () Bool)

(declare-fun tp!210270 () Bool)

(declare-fun setElem!3919 () Context!510)

(declare-fun setNonEmpty!3919 () Bool)

(assert (=> setNonEmpty!3919 (= setRes!3919 (and tp!210270 (inv!9697 setElem!3919) e!437447))))

(declare-fun setRest!3919 () (InoxSet Context!510))

(assert (=> setNonEmpty!3919 (= (_1!4437 (_1!4438 (h!12980 (zeroValue!1057 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3919 true) setRest!3919))))

(declare-fun b!694615 () Bool)

(declare-fun tp!210271 () Bool)

(assert (=> b!694615 (= e!437447 tp!210271)))

(declare-fun setIsEmpty!3919 () Bool)

(assert (=> setIsEmpty!3919 setRes!3919))

(assert (= (and b!694614 condSetEmpty!3919) setIsEmpty!3919))

(assert (= (and b!694614 (not condSetEmpty!3919)) setNonEmpty!3919))

(assert (= setNonEmpty!3919 b!694615))

(assert (= (and b!694307 ((_ is Cons!7579) (zeroValue!1057 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74)))))))) b!694614))

(declare-fun m!950671 () Bool)

(assert (=> setNonEmpty!3919 m!950671))

(declare-fun e!437448 () Bool)

(assert (=> b!694307 (= tp!210064 e!437448)))

(declare-fun b!694616 () Bool)

(declare-fun setRes!3920 () Bool)

(declare-fun tp!210272 () Bool)

(assert (=> b!694616 (= e!437448 (and setRes!3920 tp!210272))))

(declare-fun condSetEmpty!3920 () Bool)

(assert (=> b!694616 (= condSetEmpty!3920 (= (_1!4437 (_1!4438 (h!12980 (minValue!1057 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))))) ((as const (Array Context!510 Bool)) false)))))

(declare-fun tp!210273 () Bool)

(declare-fun e!437449 () Bool)

(declare-fun setElem!3920 () Context!510)

(declare-fun setNonEmpty!3920 () Bool)

(assert (=> setNonEmpty!3920 (= setRes!3920 (and tp!210273 (inv!9697 setElem!3920) e!437449))))

(declare-fun setRest!3920 () (InoxSet Context!510))

(assert (=> setNonEmpty!3920 (= (_1!4437 (_1!4438 (h!12980 (minValue!1057 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74))))))))) ((_ map or) (store ((as const (Array Context!510 Bool)) false) setElem!3920 true) setRest!3920))))

(declare-fun b!694617 () Bool)

(declare-fun tp!210274 () Bool)

(assert (=> b!694617 (= e!437449 tp!210274)))

(declare-fun setIsEmpty!3920 () Bool)

(assert (=> setIsEmpty!3920 setRes!3920))

(assert (= (and b!694616 condSetEmpty!3920) setIsEmpty!3920))

(assert (= (and b!694616 (not condSetEmpty!3920)) setNonEmpty!3920))

(assert (= setNonEmpty!3920 b!694617))

(assert (= (and b!694307 ((_ is Cons!7579) (minValue!1057 (v!17725 (underlying!1783 (v!17726 (underlying!1784 (cache!1159 cacheFindLongestMatch!74)))))))) b!694616))

(declare-fun m!950673 () Bool)

(assert (=> setNonEmpty!3920 m!950673))

(declare-fun b!694626 () Bool)

(declare-fun e!437454 () Bool)

(declare-fun tp!210283 () Bool)

(declare-fun tp!210282 () Bool)

(assert (=> b!694626 (= e!437454 (and (inv!9690 (left!6028 (c!121780 acc!372))) tp!210283 (inv!9690 (right!6358 (c!121780 acc!372))) tp!210282))))

(declare-fun b!694628 () Bool)

(declare-fun e!437455 () Bool)

(declare-fun tp!210281 () Bool)

(assert (=> b!694628 (= e!437455 tp!210281)))

(declare-fun b!694627 () Bool)

(declare-fun inv!9698 (IArray!5335) Bool)

(assert (=> b!694627 (= e!437454 (and (inv!9698 (xs!5320 (c!121780 acc!372))) e!437455))))

(assert (=> b!694318 (= tp!210054 (and (inv!9690 (c!121780 acc!372)) e!437454))))

(assert (= (and b!694318 ((_ is Node!2667) (c!121780 acc!372))) b!694626))

(assert (= b!694627 b!694628))

(assert (= (and b!694318 ((_ is Leaf!3947) (c!121780 acc!372))) b!694627))

(declare-fun m!950675 () Bool)

(assert (=> b!694626 m!950675))

(declare-fun m!950677 () Bool)

(assert (=> b!694626 m!950677))

(declare-fun m!950679 () Bool)

(assert (=> b!694627 m!950679))

(assert (=> b!694318 m!950351))

(check-sat (not b!694605) (not d!233062) b_and!63613 (not b!694331) (not b!694385) (not b!694355) (not d!233008) (not b!694558) (not b!694435) (not setNonEmpty!3896) (not d!232982) (not b_next!19887) (not d!233044) (not b!694518) b_and!63617 (not b!694495) (not b!694511) (not b!694611) (not d!232998) (not b!694589) (not d!233020) (not b!694389) (not b!694434) b_and!63605 (not b!694606) (not b!694432) (not b_next!19875) (not b!694538) (not b!694579) (not b!694585) (not b!694351) (not d!233046) (not b!694616) (not setNonEmpty!3892) (not b!694440) (not setNonEmpty!3911) (not b!694545) (not d!233016) (not d!232990) (not b!694287) (not b!694454) (not b!694291) (not b!694562) (not b!694564) (not b!694461) (not setNonEmpty!3910) (not b!694407) (not b!694510) (not b!694473) (not setNonEmpty!3899) (not b_next!19881) (not b!694608) (not b!694496) (not setNonEmpty!3919) (not b!694559) (not b!694415) (not b!694409) (not b!694628) (not mapNonEmpty!3217) (not b!694390) (not b!694509) (not b!694374) (not b!694590) (not setNonEmpty!3909) (not d!233034) (not b!694543) (not b!694557) (not b!694332) (not b!694408) (not setNonEmpty!3917) (not b!694372) (not setNonEmpty!3903) (not b!694580) (not b!694614) (not b!694458) (not b!694520) (not b!694384) (not b!694613) (not b_next!19885) (not d!233040) (not b!694373) (not b!694617) (not b!694561) b_and!63603 (not d!233012) (not d!232984) (not d!233068) (not b!694453) (not d!233058) (not b!694421) (not d!233010) (not b!694484) b_and!63615 (not b!694419) (not d!233048) (not d!233006) (not b!694521) (not b!694556) (not setNonEmpty!3918) (not b!694352) (not d!233014) (not b!694563) (not b!694386) (not b!694383) (not b!694353) (not b!694438) (not setNonEmpty!3920) b_and!63609 (not b_next!19883) (not b!694547) b_and!63607 tp_is_empty!3649 (not b!694508) (not b!694560) (not b!694546) (not b!694441) (not b!694370) (not d!233060) (not b!694371) (not setNonEmpty!3902) (not b!694425) (not b!694474) (not b!694464) (not b!694586) (not b!694497) (not b!694349) (not d!233022) (not b!694612) (not d!233028) (not b!694475) (not d!233066) (not b!694615) (not setNonEmpty!3904) (not b!694540) (not setNonEmpty!3916) (not b_next!19891) (not b!694420) (not mapNonEmpty!3214) (not b!694541) (not b!694417) (not b!694542) b_and!63621 (not b!694536) b_and!63611 (not b!694318) (not b!694437) (not b!694534) (not b!694522) (not b!694587) (not b!694584) (not b!694316) (not b!694610) (not b!694539) (not b!694411) (not setNonEmpty!3898) (not b!694607) (not b!694537) (not d!233026) (not b!694393) (not d!233004) (not b!694364) (not b!694387) (not b!694544) (not setNonEmpty!3897) (not d!233038) (not b!694392) (not b!694296) (not b!694581) (not b_next!19889) (not b!694535) (not d!233056) (not mapNonEmpty!3220) (not b!694582) (not b!694485) (not bm!43650) (not d!233018) (not b_next!19877) (not setNonEmpty!3887) (not b!694391) (not b!694443) (not b_next!19873) (not b!694362) (not b!694583) (not b!694519) (not b!694588) (not b!694626) (not b!694424) (not b!694354) (not b!694609) (not d!233076) (not d!233024) (not b!694418) (not setNonEmpty!3893) (not b_next!19879) (not b!694414) b_and!63619 (not d!233072) (not b!694368) (not b!694627) (not b!694367))
(check-sat b_and!63613 b_and!63605 (not b_next!19875) (not b_next!19881) (not b_next!19885) b_and!63603 b_and!63615 (not b_next!19891) (not b_next!19889) (not b_next!19877) (not b_next!19873) (not b_next!19879) b_and!63619 b_and!63617 (not b_next!19887) b_and!63609 (not b_next!19883) b_and!63607 b_and!63621 b_and!63611)
