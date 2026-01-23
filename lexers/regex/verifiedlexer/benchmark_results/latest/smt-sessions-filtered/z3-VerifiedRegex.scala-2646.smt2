; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!143030 () Bool)

(assert start!143030)

(declare-fun b!1539067 () Bool)

(declare-fun b_free!40119 () Bool)

(declare-fun b_next!40823 () Bool)

(assert (=> b!1539067 (= b_free!40119 (not b_next!40823))))

(declare-fun tp!445297 () Bool)

(declare-fun b_and!106997 () Bool)

(assert (=> b!1539067 (= tp!445297 b_and!106997)))

(declare-fun b!1539055 () Bool)

(declare-fun b_free!40121 () Bool)

(declare-fun b_next!40825 () Bool)

(assert (=> b!1539055 (= b_free!40121 (not b_next!40825))))

(declare-fun tp!445282 () Bool)

(declare-fun b_and!106999 () Bool)

(assert (=> b!1539055 (= tp!445282 b_and!106999)))

(declare-fun b_free!40123 () Bool)

(declare-fun b_next!40827 () Bool)

(assert (=> b!1539055 (= b_free!40123 (not b_next!40827))))

(declare-fun tp!445293 () Bool)

(declare-fun b_and!107001 () Bool)

(assert (=> b!1539055 (= tp!445293 b_and!107001)))

(declare-fun b!1539071 () Bool)

(declare-fun b_free!40125 () Bool)

(declare-fun b_next!40829 () Bool)

(assert (=> b!1539071 (= b_free!40125 (not b_next!40829))))

(declare-fun tp!445290 () Bool)

(declare-fun b_and!107003 () Bool)

(assert (=> b!1539071 (= tp!445290 b_and!107003)))

(declare-fun b!1539052 () Bool)

(declare-fun b_free!40127 () Bool)

(declare-fun b_next!40831 () Bool)

(assert (=> b!1539052 (= b_free!40127 (not b_next!40831))))

(declare-fun tp!445280 () Bool)

(declare-fun b_and!107005 () Bool)

(assert (=> b!1539052 (= tp!445280 b_and!107005)))

(declare-fun b!1539065 () Bool)

(declare-fun b_free!40129 () Bool)

(declare-fun b_next!40833 () Bool)

(assert (=> b!1539065 (= b_free!40129 (not b_next!40833))))

(declare-fun tp!445299 () Bool)

(declare-fun b_and!107007 () Bool)

(assert (=> b!1539065 (= tp!445299 b_and!107007)))

(declare-fun b!1539080 () Bool)

(declare-fun b_free!40131 () Bool)

(declare-fun b_next!40835 () Bool)

(assert (=> b!1539080 (= b_free!40131 (not b_next!40835))))

(declare-fun tp!445296 () Bool)

(declare-fun b_and!107009 () Bool)

(assert (=> b!1539080 (= tp!445296 b_and!107009)))

(declare-fun b!1539085 () Bool)

(declare-fun b_free!40133 () Bool)

(declare-fun b_next!40837 () Bool)

(assert (=> b!1539085 (= b_free!40133 (not b_next!40837))))

(declare-fun tp!445302 () Bool)

(declare-fun b_and!107011 () Bool)

(assert (=> b!1539085 (= tp!445302 b_and!107011)))

(declare-fun b!1539050 () Bool)

(declare-fun res!689557 () Bool)

(declare-fun e!984898 () Bool)

(assert (=> b!1539050 (=> (not res!689557) (not e!984898))))

(declare-datatypes ((List!16451 0))(
  ( (Nil!16383) (Cons!16383 (h!21784 (_ BitVec 16)) (t!140657 List!16451)) )
))
(declare-datatypes ((TokenValue!2969 0))(
  ( (FloatLiteralValue!5938 (text!21228 List!16451)) (TokenValueExt!2968 (__x!10466 Int)) (Broken!14845 (value!91688 List!16451)) (Object!3036) (End!2969) (Def!2969) (Underscore!2969) (Match!2969) (Else!2969) (Error!2969) (Case!2969) (If!2969) (Extends!2969) (Abstract!2969) (Class!2969) (Val!2969) (DelimiterValue!5938 (del!3029 List!16451)) (KeywordValue!2975 (value!91689 List!16451)) (CommentValue!5938 (value!91690 List!16451)) (WhitespaceValue!5938 (value!91691 List!16451)) (IndentationValue!2969 (value!91692 List!16451)) (String!19124) (Int32!2969) (Broken!14846 (value!91693 List!16451)) (Boolean!2970) (Unit!25863) (OperatorValue!2972 (op!3029 List!16451)) (IdentifierValue!5938 (value!91694 List!16451)) (IdentifierValue!5939 (value!91695 List!16451)) (WhitespaceValue!5939 (value!91696 List!16451)) (True!5938) (False!5938) (Broken!14847 (value!91697 List!16451)) (Broken!14848 (value!91698 List!16451)) (True!5939) (RightBrace!2969) (RightBracket!2969) (Colon!2969) (Null!2969) (Comma!2969) (LeftBracket!2969) (False!5939) (LeftBrace!2969) (ImaginaryLiteralValue!2969 (text!21229 List!16451)) (StringLiteralValue!8907 (value!91699 List!16451)) (EOFValue!2969 (value!91700 List!16451)) (IdentValue!2969 (value!91701 List!16451)) (DelimiterValue!5939 (value!91702 List!16451)) (DedentValue!2969 (value!91703 List!16451)) (NewLineValue!2969 (value!91704 List!16451)) (IntegerValue!8907 (value!91705 (_ BitVec 32)) (text!21230 List!16451)) (IntegerValue!8908 (value!91706 Int) (text!21231 List!16451)) (Times!2969) (Or!2969) (Equal!2969) (Minus!2969) (Broken!14849 (value!91707 List!16451)) (And!2969) (Div!2969) (LessEqual!2969) (Mod!2969) (Concat!7172) (Not!2969) (Plus!2969) (SpaceValue!2969 (value!91708 List!16451)) (IntegerValue!8909 (value!91709 Int) (text!21232 List!16451)) (StringLiteralValue!8908 (text!21233 List!16451)) (FloatLiteralValue!5939 (text!21234 List!16451)) (BytesLiteralValue!2969 (value!91710 List!16451)) (CommentValue!5939 (value!91711 List!16451)) (StringLiteralValue!8909 (value!91712 List!16451)) (ErrorTokenValue!2969 (msg!3030 List!16451)) )
))
(declare-datatypes ((C!8584 0))(
  ( (C!8585 (val!4864 Int)) )
))
(declare-datatypes ((List!16452 0))(
  ( (Nil!16384) (Cons!16384 (h!21785 C!8584) (t!140658 List!16452)) )
))
(declare-datatypes ((IArray!10997 0))(
  ( (IArray!10998 (innerList!5556 List!16452)) )
))
(declare-datatypes ((Conc!5496 0))(
  ( (Node!5496 (left!13466 Conc!5496) (right!13796 Conc!5496) (csize!11222 Int) (cheight!5707 Int)) (Leaf!8143 (xs!8296 IArray!10997) (csize!11223 Int)) (Empty!5496) )
))
(declare-datatypes ((BalanceConc!10934 0))(
  ( (BalanceConc!10935 (c!251639 Conc!5496)) )
))
(declare-datatypes ((Regex!4203 0))(
  ( (ElementMatch!4203 (c!251640 C!8584)) (Concat!7173 (regOne!8918 Regex!4203) (regTwo!8918 Regex!4203)) (EmptyExpr!4203) (Star!4203 (reg!4532 Regex!4203)) (EmptyLang!4203) (Union!4203 (regOne!8919 Regex!4203) (regTwo!8919 Regex!4203)) )
))
(declare-datatypes ((String!19125 0))(
  ( (String!19126 (value!91713 String)) )
))
(declare-datatypes ((TokenValueInjection!5598 0))(
  ( (TokenValueInjection!5599 (toValue!4240 Int) (toChars!4099 Int)) )
))
(declare-datatypes ((Rule!5558 0))(
  ( (Rule!5559 (regex!2879 Regex!4203) (tag!3143 String!19125) (isSeparator!2879 Bool) (transformation!2879 TokenValueInjection!5598)) )
))
(declare-datatypes ((List!16453 0))(
  ( (Nil!16385) (Cons!16385 (h!21786 Rule!5558) (t!140659 List!16453)) )
))
(declare-fun rulesArg!359 () List!16453)

(declare-fun isEmpty!10017 (List!16453) Bool)

(assert (=> b!1539050 (= res!689557 (not (isEmpty!10017 rulesArg!359)))))

(declare-fun e!984902 () Bool)

(declare-fun e!984918 () Bool)

(assert (=> b!1539052 (= e!984902 (and e!984918 tp!445280))))

(declare-fun b!1539053 () Bool)

(declare-datatypes ((Token!5398 0))(
  ( (Token!5399 (value!91714 TokenValue!2969) (rule!4683 Rule!5558) (size!13240 Int) (originalCharacters!3730 List!16452)) )
))
(declare-datatypes ((tuple2!15442 0))(
  ( (tuple2!15443 (_1!8864 Token!5398) (_2!8864 BalanceConc!10934)) )
))
(declare-datatypes ((Option!2965 0))(
  ( (None!2964) (Some!2964 (v!23192 tuple2!15442)) )
))
(declare-datatypes ((List!16454 0))(
  ( (Nil!16386) (Cons!16386 (h!21787 Regex!4203) (t!140660 List!16454)) )
))
(declare-datatypes ((Context!1442 0))(
  ( (Context!1443 (exprs!1221 List!16454)) )
))
(declare-datatypes ((tuple2!15444 0))(
  ( (tuple2!15445 (_1!8865 Context!1442) (_2!8865 C!8584)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15446 0))(
  ( (tuple2!15447 (_1!8866 tuple2!15444) (_2!8866 (InoxSet Context!1442))) )
))
(declare-datatypes ((List!16455 0))(
  ( (Nil!16387) (Cons!16387 (h!21788 tuple2!15446) (t!140661 List!16455)) )
))
(declare-datatypes ((array!5572 0))(
  ( (array!5573 (arr!2477 (Array (_ BitVec 32) List!16455)) (size!13241 (_ BitVec 32))) )
))
(declare-datatypes ((array!5574 0))(
  ( (array!5575 (arr!2478 (Array (_ BitVec 32) (_ BitVec 64))) (size!13242 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3198 0))(
  ( (LongMapFixedSize!3199 (defaultEntry!1959 Int) (mask!4789 (_ BitVec 32)) (extraKeys!1846 (_ BitVec 32)) (zeroValue!1856 List!16455) (minValue!1856 List!16455) (_size!3279 (_ BitVec 32)) (_keys!1893 array!5574) (_values!1878 array!5572) (_vacant!1660 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6281 0))(
  ( (Cell!6282 (v!23193 LongMapFixedSize!3198)) )
))
(declare-datatypes ((MutLongMap!1599 0))(
  ( (LongMap!1599 (underlying!3407 Cell!6281)) (MutLongMapExt!1598 (__x!10467 Int)) )
))
(declare-datatypes ((Cell!6283 0))(
  ( (Cell!6284 (v!23194 MutLongMap!1599)) )
))
(declare-datatypes ((Hashable!1543 0))(
  ( (HashableExt!1542 (__x!10468 Int)) )
))
(declare-datatypes ((MutableMap!1543 0))(
  ( (MutableMapExt!1542 (__x!10469 Int)) (HashMap!1543 (underlying!3408 Cell!6283) (hashF!3462 Hashable!1543) (_size!3280 (_ BitVec 32)) (defaultValue!1703 Int)) )
))
(declare-datatypes ((CacheUp!926 0))(
  ( (CacheUp!927 (cache!1924 MutableMap!1543)) )
))
(declare-datatypes ((tuple3!1524 0))(
  ( (tuple3!1525 (_1!8867 (InoxSet Context!1442)) (_2!8867 Int) (_3!1143 Int)) )
))
(declare-datatypes ((Hashable!1544 0))(
  ( (HashableExt!1543 (__x!10470 Int)) )
))
(declare-datatypes ((tuple2!15448 0))(
  ( (tuple2!15449 (_1!8868 tuple3!1524) (_2!8868 Int)) )
))
(declare-datatypes ((List!16456 0))(
  ( (Nil!16388) (Cons!16388 (h!21789 tuple2!15448) (t!140662 List!16456)) )
))
(declare-datatypes ((array!5576 0))(
  ( (array!5577 (arr!2479 (Array (_ BitVec 32) List!16456)) (size!13243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3200 0))(
  ( (LongMapFixedSize!3201 (defaultEntry!1960 Int) (mask!4790 (_ BitVec 32)) (extraKeys!1847 (_ BitVec 32)) (zeroValue!1857 List!16456) (minValue!1857 List!16456) (_size!3281 (_ BitVec 32)) (_keys!1894 array!5574) (_values!1879 array!5576) (_vacant!1661 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6285 0))(
  ( (Cell!6286 (v!23195 LongMapFixedSize!3200)) )
))
(declare-datatypes ((MutLongMap!1600 0))(
  ( (LongMap!1600 (underlying!3409 Cell!6285)) (MutLongMapExt!1599 (__x!10471 Int)) )
))
(declare-datatypes ((Cell!6287 0))(
  ( (Cell!6288 (v!23196 MutLongMap!1600)) )
))
(declare-datatypes ((MutableMap!1544 0))(
  ( (MutableMapExt!1543 (__x!10472 Int)) (HashMap!1544 (underlying!3410 Cell!6287) (hashF!3463 Hashable!1544) (_size!3282 (_ BitVec 32)) (defaultValue!1704 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!354 0))(
  ( (CacheFurthestNullable!355 (cache!1925 MutableMap!1544) (totalInput!2369 BalanceConc!10934)) )
))
(declare-datatypes ((tuple3!1526 0))(
  ( (tuple3!1527 (_1!8869 Regex!4203) (_2!8869 Context!1442) (_3!1144 C!8584)) )
))
(declare-datatypes ((tuple2!15450 0))(
  ( (tuple2!15451 (_1!8870 tuple3!1526) (_2!8870 (InoxSet Context!1442))) )
))
(declare-datatypes ((List!16457 0))(
  ( (Nil!16389) (Cons!16389 (h!21790 tuple2!15450) (t!140663 List!16457)) )
))
(declare-datatypes ((array!5578 0))(
  ( (array!5579 (arr!2480 (Array (_ BitVec 32) List!16457)) (size!13244 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3202 0))(
  ( (LongMapFixedSize!3203 (defaultEntry!1961 Int) (mask!4791 (_ BitVec 32)) (extraKeys!1848 (_ BitVec 32)) (zeroValue!1858 List!16457) (minValue!1858 List!16457) (_size!3283 (_ BitVec 32)) (_keys!1895 array!5574) (_values!1880 array!5578) (_vacant!1662 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6289 0))(
  ( (Cell!6290 (v!23197 LongMapFixedSize!3202)) )
))
(declare-datatypes ((MutLongMap!1601 0))(
  ( (LongMap!1601 (underlying!3411 Cell!6289)) (MutLongMapExt!1600 (__x!10473 Int)) )
))
(declare-datatypes ((Cell!6291 0))(
  ( (Cell!6292 (v!23198 MutLongMap!1601)) )
))
(declare-datatypes ((Hashable!1545 0))(
  ( (HashableExt!1544 (__x!10474 Int)) )
))
(declare-datatypes ((MutableMap!1545 0))(
  ( (MutableMapExt!1544 (__x!10475 Int)) (HashMap!1545 (underlying!3412 Cell!6291) (hashF!3464 Hashable!1545) (_size!3284 (_ BitVec 32)) (defaultValue!1705 Int)) )
))
(declare-datatypes ((CacheDown!934 0))(
  ( (CacheDown!935 (cache!1926 MutableMap!1545)) )
))
(declare-datatypes ((tuple4!762 0))(
  ( (tuple4!763 (_1!8871 Option!2965) (_2!8871 CacheUp!926) (_3!1145 CacheFurthestNullable!354) (_4!381 CacheDown!934)) )
))
(declare-fun e!984914 () tuple4!762)

(declare-datatypes ((tuple4!764 0))(
  ( (tuple4!765 (_1!8872 Option!2965) (_2!8872 CacheUp!926) (_3!1146 CacheDown!934) (_4!382 CacheFurthestNullable!354)) )
))
(declare-fun lt!533800 () tuple4!764)

(assert (=> b!1539053 (= e!984914 (tuple4!763 (_1!8872 lt!533800) (_2!8872 lt!533800) (_4!382 lt!533800) (_3!1146 lt!533800)))))

(declare-fun call!101564 () tuple4!764)

(assert (=> b!1539053 (= lt!533800 call!101564)))

(declare-fun mapNonEmpty!7554 () Bool)

(declare-fun mapRes!7554 () Bool)

(declare-fun tp!445301 () Bool)

(declare-fun tp!445304 () Bool)

(assert (=> mapNonEmpty!7554 (= mapRes!7554 (and tp!445301 tp!445304))))

(declare-fun cacheUp!695 () CacheUp!926)

(declare-fun mapRest!7554 () (Array (_ BitVec 32) List!16455))

(declare-fun mapValue!7556 () List!16455)

(declare-fun mapKey!7556 () (_ BitVec 32))

(assert (=> mapNonEmpty!7554 (= (arr!2477 (_values!1878 (v!23193 (underlying!3407 (v!23194 (underlying!3408 (cache!1924 cacheUp!695))))))) (store mapRest!7554 mapKey!7556 mapValue!7556))))

(declare-fun b!1539054 () Bool)

(declare-datatypes ((tuple2!15452 0))(
  ( (tuple2!15453 (_1!8873 Option!2965) (_2!8873 Option!2965)) )
))
(declare-fun lt!533802 () tuple2!15452)

(declare-fun lt!533798 () tuple4!764)

(get-info :version)

(assert (=> b!1539054 (= e!984914 (tuple4!763 (ite (and ((_ is None!2964) (_1!8873 lt!533802)) ((_ is None!2964) (_2!8873 lt!533802))) None!2964 (ite ((_ is None!2964) (_2!8873 lt!533802)) (_1!8873 lt!533802) (ite ((_ is None!2964) (_1!8873 lt!533802)) (_2!8873 lt!533802) (ite (>= (size!13240 (_1!8864 (v!23192 (_1!8873 lt!533802)))) (size!13240 (_1!8864 (v!23192 (_2!8873 lt!533802))))) (_1!8873 lt!533802) (_2!8873 lt!533802))))) (_2!8872 lt!533798) (_4!382 lt!533798) (_3!1146 lt!533798)))))

(declare-fun lt!533807 () tuple4!764)

(assert (=> b!1539054 (= lt!533807 call!101564)))

(declare-fun input!1460 () BalanceConc!10934)

(declare-datatypes ((LexerInterface!2529 0))(
  ( (LexerInterfaceExt!2526 (__x!10476 Int)) (Lexer!2527) )
))
(declare-fun thiss!15733 () LexerInterface!2529)

(declare-fun totalInput!496 () BalanceConc!10934)

(declare-fun maxPrefixZipperSequenceV3Mem!38 (LexerInterface!2529 List!16453 BalanceConc!10934 BalanceConc!10934 CacheUp!926 CacheDown!934 CacheFurthestNullable!354) tuple4!764)

(assert (=> b!1539054 (= lt!533798 (maxPrefixZipperSequenceV3Mem!38 thiss!15733 (t!140659 rulesArg!359) input!1460 totalInput!496 (_2!8872 lt!533807) (_3!1146 lt!533807) (_4!382 lt!533807)))))

(assert (=> b!1539054 (= lt!533802 (tuple2!15453 (_1!8872 lt!533807) (_1!8872 lt!533798)))))

(declare-fun e!984910 () Bool)

(assert (=> b!1539055 (= e!984910 (and tp!445282 tp!445293))))

(declare-fun b!1539056 () Bool)

(declare-fun e!984912 () Bool)

(declare-fun tp!445281 () Bool)

(declare-fun inv!21646 (Conc!5496) Bool)

(assert (=> b!1539056 (= e!984912 (and (inv!21646 (c!251639 input!1460)) tp!445281))))

(declare-fun b!1539057 () Bool)

(declare-fun e!984891 () Bool)

(declare-fun e!984889 () Bool)

(declare-fun tp!445298 () Bool)

(assert (=> b!1539057 (= e!984891 (and e!984889 tp!445298))))

(declare-fun b!1539058 () Bool)

(declare-fun e!984893 () Bool)

(declare-fun e!984897 () Bool)

(declare-fun lt!533799 () MutLongMap!1599)

(assert (=> b!1539058 (= e!984893 (and e!984897 ((_ is LongMap!1599) lt!533799)))))

(assert (=> b!1539058 (= lt!533799 (v!23194 (underlying!3408 (cache!1924 cacheUp!695))))))

(declare-fun b!1539059 () Bool)

(declare-fun e!984894 () Bool)

(declare-fun e!984888 () Bool)

(declare-fun lt!533808 () MutLongMap!1600)

(assert (=> b!1539059 (= e!984894 (and e!984888 ((_ is LongMap!1600) lt!533808)))))

(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!354)

(assert (=> b!1539059 (= lt!533808 (v!23196 (underlying!3410 (cache!1925 cacheFurthestNullable!81))))))

(declare-fun b!1539060 () Bool)

(declare-fun e!984920 () Bool)

(declare-fun tp!445291 () Bool)

(declare-fun mapRes!7555 () Bool)

(assert (=> b!1539060 (= e!984920 (and tp!445291 mapRes!7555))))

(declare-fun condMapEmpty!7556 () Bool)

(declare-fun cacheDown!708 () CacheDown!934)

(declare-fun mapDefault!7556 () List!16457)

(assert (=> b!1539060 (= condMapEmpty!7556 (= (arr!2480 (_values!1880 (v!23197 (underlying!3411 (v!23198 (underlying!3412 (cache!1926 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16457)) mapDefault!7556)))))

(declare-fun b!1539061 () Bool)

(declare-fun e!984890 () Bool)

(declare-fun e!984916 () Bool)

(assert (=> b!1539061 (= e!984890 e!984916)))

(declare-fun b!1539062 () Bool)

(declare-fun res!689556 () Bool)

(declare-fun e!984911 () Bool)

(assert (=> b!1539062 (=> (not res!689556) (not e!984911))))

(declare-fun valid!1296 (CacheFurthestNullable!354) Bool)

(assert (=> b!1539062 (= res!689556 (valid!1296 cacheFurthestNullable!81))))

(declare-fun b!1539063 () Bool)

(declare-fun e!984919 () Bool)

(declare-fun e!984908 () Bool)

(assert (=> b!1539063 (= e!984919 e!984908)))

(declare-fun b!1539051 () Bool)

(declare-fun e!984915 () Bool)

(declare-fun e!984899 () Bool)

(assert (=> b!1539051 (= e!984915 e!984899)))

(declare-fun res!689559 () Bool)

(assert (=> start!143030 (=> (not res!689559) (not e!984898))))

(assert (=> start!143030 (= res!689559 ((_ is Lexer!2527) thiss!15733))))

(assert (=> start!143030 e!984898))

(declare-fun e!984917 () Bool)

(declare-fun inv!21647 (CacheUp!926) Bool)

(assert (=> start!143030 (and (inv!21647 cacheUp!695) e!984917)))

(declare-fun inv!21648 (BalanceConc!10934) Bool)

(assert (=> start!143030 (and (inv!21648 input!1460) e!984912)))

(declare-fun e!984906 () Bool)

(declare-fun inv!21649 (CacheDown!934) Bool)

(assert (=> start!143030 (and (inv!21649 cacheDown!708) e!984906)))

(assert (=> start!143030 true))

(declare-fun e!984909 () Bool)

(assert (=> start!143030 (and (inv!21648 totalInput!496) e!984909)))

(assert (=> start!143030 e!984891))

(declare-fun e!984900 () Bool)

(declare-fun inv!21650 (CacheFurthestNullable!354) Bool)

(assert (=> start!143030 (and (inv!21650 cacheFurthestNullable!81) e!984900)))

(declare-fun b!1539064 () Bool)

(declare-fun res!689558 () Bool)

(assert (=> b!1539064 (=> (not res!689558) (not e!984911))))

(declare-fun valid!1297 (CacheDown!934) Bool)

(assert (=> b!1539064 (= res!689558 (valid!1297 cacheDown!708))))

(declare-fun tp!445303 () Bool)

(declare-fun e!984913 () Bool)

(declare-fun tp!445285 () Bool)

(declare-fun array_inv!1782 (array!5574) Bool)

(declare-fun array_inv!1783 (array!5576) Bool)

(assert (=> b!1539065 (= e!984916 (and tp!445299 tp!445285 tp!445303 (array_inv!1782 (_keys!1894 (v!23195 (underlying!3409 (v!23196 (underlying!3410 (cache!1925 cacheFurthestNullable!81))))))) (array_inv!1783 (_values!1879 (v!23195 (underlying!3409 (v!23196 (underlying!3410 (cache!1925 cacheFurthestNullable!81))))))) e!984913))))

(declare-fun tp!445287 () Bool)

(declare-fun b!1539066 () Bool)

(declare-fun inv!21644 (String!19125) Bool)

(declare-fun inv!21651 (TokenValueInjection!5598) Bool)

(assert (=> b!1539066 (= e!984889 (and tp!445287 (inv!21644 (tag!3143 (h!21786 rulesArg!359))) (inv!21651 (transformation!2879 (h!21786 rulesArg!359))) e!984910))))

(declare-fun mapIsEmpty!7554 () Bool)

(assert (=> mapIsEmpty!7554 mapRes!7555))

(declare-fun e!984896 () Bool)

(assert (=> b!1539067 (= e!984896 (and e!984893 tp!445297))))

(declare-fun b!1539068 () Bool)

(assert (=> b!1539068 (= e!984917 e!984896)))

(declare-fun b!1539069 () Bool)

(assert (=> b!1539069 (= e!984911 (not true))))

(declare-datatypes ((tuple2!15454 0))(
  ( (tuple2!15455 (_1!8874 Token!5398) (_2!8874 List!16452)) )
))
(declare-datatypes ((Option!2966 0))(
  ( (None!2965) (Some!2965 (v!23199 tuple2!15454)) )
))
(declare-fun lt!533806 () Option!2966)

(declare-fun lt!533801 () List!16452)

(declare-fun maxPrefixZipper!268 (LexerInterface!2529 List!16453 List!16452) Option!2966)

(assert (=> b!1539069 (= lt!533806 (maxPrefixZipper!268 thiss!15733 rulesArg!359 lt!533801))))

(declare-fun lt!533804 () tuple4!762)

(assert (=> b!1539069 (= lt!533804 e!984914)))

(declare-fun c!251638 () Bool)

(assert (=> b!1539069 (= c!251638 (and ((_ is Cons!16385) rulesArg!359) ((_ is Nil!16385) (t!140659 rulesArg!359))))))

(declare-fun isPrefix!1242 (List!16452 List!16452) Bool)

(assert (=> b!1539069 (isPrefix!1242 lt!533801 lt!533801)))

(declare-datatypes ((Unit!25864 0))(
  ( (Unit!25865) )
))
(declare-fun lt!533803 () Unit!25864)

(declare-fun lemmaIsPrefixRefl!872 (List!16452 List!16452) Unit!25864)

(assert (=> b!1539069 (= lt!533803 (lemmaIsPrefixRefl!872 lt!533801 lt!533801))))

(declare-fun b!1539070 () Bool)

(declare-fun e!984907 () Bool)

(declare-fun e!984905 () Bool)

(assert (=> b!1539070 (= e!984900 (and e!984907 (inv!21648 (totalInput!2369 cacheFurthestNullable!81)) e!984905))))

(declare-fun tp!445306 () Bool)

(declare-fun e!984892 () Bool)

(declare-fun tp!445300 () Bool)

(declare-fun array_inv!1784 (array!5572) Bool)

(assert (=> b!1539071 (= e!984908 (and tp!445290 tp!445306 tp!445300 (array_inv!1782 (_keys!1893 (v!23193 (underlying!3407 (v!23194 (underlying!3408 (cache!1924 cacheUp!695))))))) (array_inv!1784 (_values!1878 (v!23193 (underlying!3407 (v!23194 (underlying!3408 (cache!1924 cacheUp!695))))))) e!984892))))

(declare-fun b!1539072 () Bool)

(declare-fun res!689554 () Bool)

(assert (=> b!1539072 (=> (not res!689554) (not e!984898))))

(declare-fun rulesValidInductive!881 (LexerInterface!2529 List!16453) Bool)

(assert (=> b!1539072 (= res!689554 (rulesValidInductive!881 thiss!15733 rulesArg!359))))

(declare-fun mapNonEmpty!7555 () Bool)

(declare-fun tp!445286 () Bool)

(declare-fun tp!445289 () Bool)

(assert (=> mapNonEmpty!7555 (= mapRes!7555 (and tp!445286 tp!445289))))

(declare-fun mapValue!7555 () List!16457)

(declare-fun mapKey!7555 () (_ BitVec 32))

(declare-fun mapRest!7555 () (Array (_ BitVec 32) List!16457))

(assert (=> mapNonEmpty!7555 (= (arr!2480 (_values!1880 (v!23197 (underlying!3411 (v!23198 (underlying!3412 (cache!1926 cacheDown!708))))))) (store mapRest!7555 mapKey!7555 mapValue!7555))))

(declare-fun bm!101559 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!26 (LexerInterface!2529 Rule!5558 BalanceConc!10934 BalanceConc!10934 CacheUp!926 CacheDown!934 CacheFurthestNullable!354) tuple4!764)

(assert (=> bm!101559 (= call!101564 (maxPrefixOneRuleZipperSequenceV3Mem!26 thiss!15733 (h!21786 rulesArg!359) input!1460 totalInput!496 cacheUp!695 cacheDown!708 cacheFurthestNullable!81))))

(declare-fun mapIsEmpty!7555 () Bool)

(declare-fun mapRes!7556 () Bool)

(assert (=> mapIsEmpty!7555 mapRes!7556))

(declare-fun mapNonEmpty!7556 () Bool)

(declare-fun tp!445307 () Bool)

(declare-fun tp!445292 () Bool)

(assert (=> mapNonEmpty!7556 (= mapRes!7556 (and tp!445307 tp!445292))))

(declare-fun mapKey!7554 () (_ BitVec 32))

(declare-fun mapRest!7556 () (Array (_ BitVec 32) List!16456))

(declare-fun mapValue!7554 () List!16456)

(assert (=> mapNonEmpty!7556 (= (arr!2479 (_values!1879 (v!23195 (underlying!3409 (v!23196 (underlying!3410 (cache!1925 cacheFurthestNullable!81))))))) (store mapRest!7556 mapKey!7554 mapValue!7554))))

(declare-fun b!1539073 () Bool)

(declare-fun e!984921 () Bool)

(assert (=> b!1539073 (= e!984899 e!984921)))

(declare-fun b!1539074 () Bool)

(assert (=> b!1539074 (= e!984888 e!984890)))

(declare-fun b!1539075 () Bool)

(assert (=> b!1539075 (= e!984906 e!984902)))

(declare-fun b!1539076 () Bool)

(declare-fun tp!445294 () Bool)

(assert (=> b!1539076 (= e!984905 (and (inv!21646 (c!251639 (totalInput!2369 cacheFurthestNullable!81))) tp!445294))))

(declare-fun b!1539077 () Bool)

(declare-fun res!689560 () Bool)

(assert (=> b!1539077 (=> (not res!689560) (not e!984911))))

(declare-fun valid!1298 (CacheUp!926) Bool)

(assert (=> b!1539077 (= res!689560 (valid!1298 cacheUp!695))))

(declare-fun b!1539078 () Bool)

(declare-fun tp!445305 () Bool)

(assert (=> b!1539078 (= e!984892 (and tp!445305 mapRes!7554))))

(declare-fun condMapEmpty!7554 () Bool)

(declare-fun mapDefault!7554 () List!16455)

(assert (=> b!1539078 (= condMapEmpty!7554 (= (arr!2477 (_values!1878 (v!23193 (underlying!3407 (v!23194 (underlying!3408 (cache!1924 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16455)) mapDefault!7554)))))

(declare-fun b!1539079 () Bool)

(assert (=> b!1539079 (= e!984897 e!984919)))

(declare-fun tp!445288 () Bool)

(declare-fun tp!445283 () Bool)

(declare-fun array_inv!1785 (array!5578) Bool)

(assert (=> b!1539080 (= e!984921 (and tp!445296 tp!445283 tp!445288 (array_inv!1782 (_keys!1895 (v!23197 (underlying!3411 (v!23198 (underlying!3412 (cache!1926 cacheDown!708))))))) (array_inv!1785 (_values!1880 (v!23197 (underlying!3411 (v!23198 (underlying!3412 (cache!1926 cacheDown!708))))))) e!984920))))

(declare-fun b!1539081 () Bool)

(declare-fun lt!533805 () MutLongMap!1601)

(assert (=> b!1539081 (= e!984918 (and e!984915 ((_ is LongMap!1601) lt!533805)))))

(assert (=> b!1539081 (= lt!533805 (v!23198 (underlying!3412 (cache!1926 cacheDown!708))))))

(declare-fun b!1539082 () Bool)

(assert (=> b!1539082 (= e!984898 e!984911)))

(declare-fun res!689553 () Bool)

(assert (=> b!1539082 (=> (not res!689553) (not e!984911))))

(declare-fun isSuffix!328 (List!16452 List!16452) Bool)

(declare-fun list!6424 (BalanceConc!10934) List!16452)

(assert (=> b!1539082 (= res!689553 (isSuffix!328 lt!533801 (list!6424 totalInput!496)))))

(assert (=> b!1539082 (= lt!533801 (list!6424 input!1460))))

(declare-fun b!1539083 () Bool)

(declare-fun tp!445295 () Bool)

(assert (=> b!1539083 (= e!984913 (and tp!445295 mapRes!7556))))

(declare-fun condMapEmpty!7555 () Bool)

(declare-fun mapDefault!7555 () List!16456)

(assert (=> b!1539083 (= condMapEmpty!7555 (= (arr!2479 (_values!1879 (v!23195 (underlying!3409 (v!23196 (underlying!3410 (cache!1925 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16456)) mapDefault!7555)))))

(declare-fun mapIsEmpty!7556 () Bool)

(assert (=> mapIsEmpty!7556 mapRes!7554))

(declare-fun b!1539084 () Bool)

(declare-fun res!689555 () Bool)

(assert (=> b!1539084 (=> (not res!689555) (not e!984911))))

(assert (=> b!1539084 (= res!689555 (= (totalInput!2369 cacheFurthestNullable!81) totalInput!496))))

(assert (=> b!1539085 (= e!984907 (and e!984894 tp!445302))))

(declare-fun b!1539086 () Bool)

(declare-fun tp!445284 () Bool)

(assert (=> b!1539086 (= e!984909 (and (inv!21646 (c!251639 totalInput!496)) tp!445284))))

(assert (= (and start!143030 res!689559) b!1539072))

(assert (= (and b!1539072 res!689554) b!1539050))

(assert (= (and b!1539050 res!689557) b!1539082))

(assert (= (and b!1539082 res!689553) b!1539077))

(assert (= (and b!1539077 res!689560) b!1539064))

(assert (= (and b!1539064 res!689558) b!1539062))

(assert (= (and b!1539062 res!689556) b!1539084))

(assert (= (and b!1539084 res!689555) b!1539069))

(assert (= (and b!1539069 c!251638) b!1539053))

(assert (= (and b!1539069 (not c!251638)) b!1539054))

(assert (= (or b!1539053 b!1539054) bm!101559))

(assert (= (and b!1539078 condMapEmpty!7554) mapIsEmpty!7556))

(assert (= (and b!1539078 (not condMapEmpty!7554)) mapNonEmpty!7554))

(assert (= b!1539071 b!1539078))

(assert (= b!1539063 b!1539071))

(assert (= b!1539079 b!1539063))

(assert (= (and b!1539058 ((_ is LongMap!1599) (v!23194 (underlying!3408 (cache!1924 cacheUp!695))))) b!1539079))

(assert (= b!1539067 b!1539058))

(assert (= (and b!1539068 ((_ is HashMap!1543) (cache!1924 cacheUp!695))) b!1539067))

(assert (= start!143030 b!1539068))

(assert (= start!143030 b!1539056))

(assert (= (and b!1539060 condMapEmpty!7556) mapIsEmpty!7554))

(assert (= (and b!1539060 (not condMapEmpty!7556)) mapNonEmpty!7555))

(assert (= b!1539080 b!1539060))

(assert (= b!1539073 b!1539080))

(assert (= b!1539051 b!1539073))

(assert (= (and b!1539081 ((_ is LongMap!1601) (v!23198 (underlying!3412 (cache!1926 cacheDown!708))))) b!1539051))

(assert (= b!1539052 b!1539081))

(assert (= (and b!1539075 ((_ is HashMap!1545) (cache!1926 cacheDown!708))) b!1539052))

(assert (= start!143030 b!1539075))

(assert (= start!143030 b!1539086))

(assert (= b!1539066 b!1539055))

(assert (= b!1539057 b!1539066))

(assert (= (and start!143030 ((_ is Cons!16385) rulesArg!359)) b!1539057))

(assert (= (and b!1539083 condMapEmpty!7555) mapIsEmpty!7555))

(assert (= (and b!1539083 (not condMapEmpty!7555)) mapNonEmpty!7556))

(assert (= b!1539065 b!1539083))

(assert (= b!1539061 b!1539065))

(assert (= b!1539074 b!1539061))

(assert (= (and b!1539059 ((_ is LongMap!1600) (v!23196 (underlying!3410 (cache!1925 cacheFurthestNullable!81))))) b!1539074))

(assert (= b!1539085 b!1539059))

(assert (= (and b!1539070 ((_ is HashMap!1544) (cache!1925 cacheFurthestNullable!81))) b!1539085))

(assert (= b!1539070 b!1539076))

(assert (= start!143030 b!1539070))

(declare-fun m!1813452 () Bool)

(assert (=> b!1539065 m!1813452))

(declare-fun m!1813454 () Bool)

(assert (=> b!1539065 m!1813454))

(declare-fun m!1813456 () Bool)

(assert (=> mapNonEmpty!7556 m!1813456))

(declare-fun m!1813458 () Bool)

(assert (=> b!1539080 m!1813458))

(declare-fun m!1813460 () Bool)

(assert (=> b!1539080 m!1813460))

(declare-fun m!1813462 () Bool)

(assert (=> b!1539069 m!1813462))

(declare-fun m!1813464 () Bool)

(assert (=> b!1539069 m!1813464))

(declare-fun m!1813466 () Bool)

(assert (=> b!1539069 m!1813466))

(declare-fun m!1813468 () Bool)

(assert (=> b!1539070 m!1813468))

(declare-fun m!1813470 () Bool)

(assert (=> b!1539086 m!1813470))

(declare-fun m!1813472 () Bool)

(assert (=> mapNonEmpty!7554 m!1813472))

(declare-fun m!1813474 () Bool)

(assert (=> b!1539071 m!1813474))

(declare-fun m!1813476 () Bool)

(assert (=> b!1539071 m!1813476))

(declare-fun m!1813478 () Bool)

(assert (=> b!1539064 m!1813478))

(declare-fun m!1813480 () Bool)

(assert (=> b!1539056 m!1813480))

(declare-fun m!1813482 () Bool)

(assert (=> b!1539077 m!1813482))

(declare-fun m!1813484 () Bool)

(assert (=> b!1539082 m!1813484))

(assert (=> b!1539082 m!1813484))

(declare-fun m!1813486 () Bool)

(assert (=> b!1539082 m!1813486))

(declare-fun m!1813488 () Bool)

(assert (=> b!1539082 m!1813488))

(declare-fun m!1813490 () Bool)

(assert (=> mapNonEmpty!7555 m!1813490))

(declare-fun m!1813492 () Bool)

(assert (=> b!1539050 m!1813492))

(declare-fun m!1813494 () Bool)

(assert (=> b!1539072 m!1813494))

(declare-fun m!1813496 () Bool)

(assert (=> bm!101559 m!1813496))

(declare-fun m!1813498 () Bool)

(assert (=> b!1539062 m!1813498))

(declare-fun m!1813500 () Bool)

(assert (=> b!1539066 m!1813500))

(declare-fun m!1813502 () Bool)

(assert (=> b!1539066 m!1813502))

(declare-fun m!1813504 () Bool)

(assert (=> b!1539076 m!1813504))

(declare-fun m!1813506 () Bool)

(assert (=> b!1539054 m!1813506))

(declare-fun m!1813508 () Bool)

(assert (=> start!143030 m!1813508))

(declare-fun m!1813510 () Bool)

(assert (=> start!143030 m!1813510))

(declare-fun m!1813512 () Bool)

(assert (=> start!143030 m!1813512))

(declare-fun m!1813514 () Bool)

(assert (=> start!143030 m!1813514))

(declare-fun m!1813516 () Bool)

(assert (=> start!143030 m!1813516))

(check-sat b_and!107003 (not b!1539077) (not start!143030) (not b_next!40825) (not b!1539066) (not b!1539054) (not b!1539062) (not b!1539080) (not b!1539056) b_and!107001 (not b!1539072) (not b_next!40827) (not b_next!40833) b_and!107007 b_and!106999 (not mapNonEmpty!7556) (not b_next!40831) b_and!107011 b_and!107009 (not b_next!40829) b_and!106997 (not b!1539060) (not mapNonEmpty!7554) (not b!1539083) (not b_next!40823) (not b!1539070) (not b!1539057) (not b!1539078) (not b!1539082) (not b!1539069) b_and!107005 (not b!1539076) (not b!1539050) (not bm!101559) (not mapNonEmpty!7555) (not b!1539065) (not b!1539064) (not b_next!40835) (not b_next!40837) (not b!1539086) (not b!1539071))
(check-sat b_and!107003 (not b_next!40825) (not b_next!40823) b_and!107005 b_and!107001 (not b_next!40827) (not b_next!40833) b_and!107007 b_and!106999 (not b_next!40831) b_and!107011 b_and!107009 (not b_next!40829) b_and!106997 (not b_next!40835) (not b_next!40837))
