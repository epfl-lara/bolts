; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48266 () Bool)

(assert start!48266)

(declare-fun b!526876 () Bool)

(declare-fun b_free!13993 () Bool)

(declare-fun b_next!14009 () Bool)

(assert (=> b!526876 (= b_free!13993 (not b_next!14009))))

(declare-fun tp!166595 () Bool)

(declare-fun b_and!51487 () Bool)

(assert (=> b!526876 (= tp!166595 b_and!51487)))

(declare-fun b!526866 () Bool)

(declare-fun b_free!13995 () Bool)

(declare-fun b_next!14011 () Bool)

(assert (=> b!526866 (= b_free!13995 (not b_next!14011))))

(declare-fun tp!166583 () Bool)

(declare-fun b_and!51489 () Bool)

(assert (=> b!526866 (= tp!166583 b_and!51489)))

(declare-fun b_free!13997 () Bool)

(declare-fun b_next!14013 () Bool)

(assert (=> b!526866 (= b_free!13997 (not b_next!14013))))

(declare-fun tp!166572 () Bool)

(declare-fun b_and!51491 () Bool)

(assert (=> b!526866 (= tp!166572 b_and!51491)))

(declare-fun b!526867 () Bool)

(declare-fun b_free!13999 () Bool)

(declare-fun b_next!14015 () Bool)

(assert (=> b!526867 (= b_free!13999 (not b_next!14015))))

(declare-fun tp!166594 () Bool)

(declare-fun b_and!51493 () Bool)

(assert (=> b!526867 (= tp!166594 b_and!51493)))

(declare-fun b!526863 () Bool)

(declare-fun b_free!14001 () Bool)

(declare-fun b_next!14017 () Bool)

(assert (=> b!526863 (= b_free!14001 (not b_next!14017))))

(declare-fun tp!166586 () Bool)

(declare-fun b_and!51495 () Bool)

(assert (=> b!526863 (= tp!166586 b_and!51495)))

(declare-fun b!526852 () Bool)

(declare-fun b_free!14003 () Bool)

(declare-fun b_next!14019 () Bool)

(assert (=> b!526852 (= b_free!14003 (not b_next!14019))))

(declare-fun tp!166585 () Bool)

(declare-fun b_and!51497 () Bool)

(assert (=> b!526852 (= tp!166585 b_and!51497)))

(declare-fun b!526847 () Bool)

(declare-fun b_free!14005 () Bool)

(declare-fun b_next!14021 () Bool)

(assert (=> b!526847 (= b_free!14005 (not b_next!14021))))

(declare-fun tp!166579 () Bool)

(declare-fun b_and!51499 () Bool)

(assert (=> b!526847 (= tp!166579 b_and!51499)))

(declare-fun b!526871 () Bool)

(declare-fun b_free!14007 () Bool)

(declare-fun b_next!14023 () Bool)

(assert (=> b!526871 (= b_free!14007 (not b_next!14023))))

(declare-fun tp!166584 () Bool)

(declare-fun b_and!51501 () Bool)

(assert (=> b!526871 (= tp!166584 b_and!51501)))

(declare-fun b!526844 () Bool)

(declare-fun e!316716 () Bool)

(declare-fun e!316690 () Bool)

(assert (=> b!526844 (= e!316716 e!316690)))

(declare-fun b!526845 () Bool)

(declare-fun e!316709 () Bool)

(declare-fun e!316699 () Bool)

(declare-fun tp!166573 () Bool)

(assert (=> b!526845 (= e!316709 (and e!316699 tp!166573))))

(declare-fun b!526846 () Bool)

(declare-fun res!222835 () Bool)

(declare-fun e!316708 () Bool)

(assert (=> b!526846 (=> (not res!222835) (not e!316708))))

(declare-datatypes ((C!3360 0))(
  ( (C!3361 (val!1906 Int)) )
))
(declare-datatypes ((List!4964 0))(
  ( (Nil!4954) (Cons!4954 (h!10355 C!3360) (t!73574 List!4964)) )
))
(declare-datatypes ((IArray!3215 0))(
  ( (IArray!3216 (innerList!1665 List!4964)) )
))
(declare-datatypes ((Regex!1219 0))(
  ( (ElementMatch!1219 (c!101074 C!3360)) (Concat!2135 (regOne!2950 Regex!1219) (regTwo!2950 Regex!1219)) (EmptyExpr!1219) (Star!1219 (reg!1548 Regex!1219)) (EmptyLang!1219) (Union!1219 (regOne!2951 Regex!1219) (regTwo!2951 Regex!1219)) )
))
(declare-datatypes ((List!4965 0))(
  ( (Nil!4955) (Cons!4955 (h!10356 Regex!1219) (t!73575 List!4965)) )
))
(declare-datatypes ((Context!314 0))(
  ( (Context!315 (exprs!657 List!4965)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!404 0))(
  ( (tuple3!405 (_1!3305 (InoxSet Context!314)) (_2!3305 Int) (_3!250 Int)) )
))
(declare-datatypes ((Hashable!561 0))(
  ( (HashableExt!560 (__x!3688 Int)) )
))
(declare-datatypes ((tuple2!6110 0))(
  ( (tuple2!6111 (_1!3306 tuple3!404) (_2!3306 Int)) )
))
(declare-datatypes ((List!4966 0))(
  ( (Nil!4956) (Cons!4956 (h!10357 tuple2!6110) (t!73576 List!4966)) )
))
(declare-datatypes ((array!2263 0))(
  ( (array!2264 (arr!1032 (Array (_ BitVec 32) (_ BitVec 64))) (size!4039 (_ BitVec 32))) )
))
(declare-datatypes ((array!2265 0))(
  ( (array!2266 (arr!1033 (Array (_ BitVec 32) List!4966)) (size!4040 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1178 0))(
  ( (LongMapFixedSize!1179 (defaultEntry!945 Int) (mask!2070 (_ BitVec 32)) (extraKeys!836 (_ BitVec 32)) (zeroValue!846 List!4966) (minValue!846 List!4966) (_size!1287 (_ BitVec 32)) (_keys!883 array!2263) (_values!868 array!2265) (_vacant!650 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2297 0))(
  ( (Cell!2298 (v!16022 LongMapFixedSize!1178)) )
))
(declare-datatypes ((MutLongMap!589 0))(
  ( (LongMap!589 (underlying!1357 Cell!2297)) (MutLongMapExt!588 (__x!3689 Int)) )
))
(declare-datatypes ((Cell!2299 0))(
  ( (Cell!2300 (v!16023 MutLongMap!589)) )
))
(declare-datatypes ((MutableMap!561 0))(
  ( (MutableMapExt!560 (__x!3690 Int)) (HashMap!561 (underlying!1358 Cell!2299) (hashF!2469 Hashable!561) (_size!1288 (_ BitVec 32)) (defaultValue!712 Int)) )
))
(declare-datatypes ((Conc!1607 0))(
  ( (Node!1607 (left!4218 Conc!1607) (right!4548 Conc!1607) (csize!3444 Int) (cheight!1818 Int)) (Leaf!2557 (xs!4244 IArray!3215) (csize!3445 Int)) (Empty!1607) )
))
(declare-datatypes ((BalanceConc!3222 0))(
  ( (BalanceConc!3223 (c!101075 Conc!1607)) )
))
(declare-datatypes ((CacheFurthestNullable!172 0))(
  ( (CacheFurthestNullable!173 (cache!948 MutableMap!561) (totalInput!1748 BalanceConc!3222)) )
))
(declare-fun cacheFurthestNullable!56 () CacheFurthestNullable!172)

(declare-fun valid!569 (CacheFurthestNullable!172) Bool)

(assert (=> b!526846 (= res!222835 (valid!569 cacheFurthestNullable!56))))

(declare-fun mapIsEmpty!2310 () Bool)

(declare-fun mapRes!2311 () Bool)

(assert (=> mapIsEmpty!2310 mapRes!2311))

(declare-fun mapIsEmpty!2311 () Bool)

(declare-fun mapRes!2310 () Bool)

(assert (=> mapIsEmpty!2311 mapRes!2310))

(declare-fun e!316717 () Bool)

(declare-fun e!316688 () Bool)

(assert (=> b!526847 (= e!316717 (and e!316688 tp!166579))))

(declare-fun b!526848 () Bool)

(declare-fun res!222833 () Bool)

(assert (=> b!526848 (=> (not res!222833) (not e!316708))))

(declare-datatypes ((tuple3!406 0))(
  ( (tuple3!407 (_1!3307 Regex!1219) (_2!3307 Context!314) (_3!251 C!3360)) )
))
(declare-datatypes ((tuple2!6112 0))(
  ( (tuple2!6113 (_1!3308 tuple3!406) (_2!3308 (InoxSet Context!314))) )
))
(declare-datatypes ((List!4967 0))(
  ( (Nil!4957) (Cons!4957 (h!10358 tuple2!6112) (t!73577 List!4967)) )
))
(declare-datatypes ((array!2267 0))(
  ( (array!2268 (arr!1034 (Array (_ BitVec 32) List!4967)) (size!4041 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1180 0))(
  ( (LongMapFixedSize!1181 (defaultEntry!946 Int) (mask!2071 (_ BitVec 32)) (extraKeys!837 (_ BitVec 32)) (zeroValue!847 List!4967) (minValue!847 List!4967) (_size!1289 (_ BitVec 32)) (_keys!884 array!2263) (_values!869 array!2267) (_vacant!651 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2301 0))(
  ( (Cell!2302 (v!16024 LongMapFixedSize!1180)) )
))
(declare-datatypes ((MutLongMap!590 0))(
  ( (LongMap!590 (underlying!1359 Cell!2301)) (MutLongMapExt!589 (__x!3691 Int)) )
))
(declare-datatypes ((Cell!2303 0))(
  ( (Cell!2304 (v!16025 MutLongMap!590)) )
))
(declare-datatypes ((Hashable!562 0))(
  ( (HashableExt!561 (__x!3692 Int)) )
))
(declare-datatypes ((MutableMap!562 0))(
  ( (MutableMapExt!561 (__x!3693 Int)) (HashMap!562 (underlying!1360 Cell!2303) (hashF!2470 Hashable!562) (_size!1290 (_ BitVec 32)) (defaultValue!713 Int)) )
))
(declare-datatypes ((CacheDown!218 0))(
  ( (CacheDown!219 (cache!949 MutableMap!562)) )
))
(declare-fun cacheDown!462 () CacheDown!218)

(declare-fun valid!570 (CacheDown!218) Bool)

(assert (=> b!526848 (= res!222833 (valid!570 cacheDown!462))))

(declare-fun b!526849 () Bool)

(declare-fun e!316694 () Bool)

(declare-fun input!747 () BalanceConc!3222)

(declare-fun tp!166580 () Bool)

(declare-fun inv!6212 (Conc!1607) Bool)

(assert (=> b!526849 (= e!316694 (and (inv!6212 (c!101075 input!747)) tp!166580))))

(declare-fun b!526850 () Bool)

(declare-fun e!316700 () Bool)

(declare-fun e!316697 () Bool)

(declare-fun lt!217837 () MutLongMap!590)

(get-info :version)

(assert (=> b!526850 (= e!316700 (and e!316697 ((_ is LongMap!590) lt!217837)))))

(assert (=> b!526850 (= lt!217837 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))

(declare-fun b!526851 () Bool)

(declare-fun res!222836 () Bool)

(assert (=> b!526851 (=> (not res!222836) (not e!316708))))

(declare-datatypes ((LexerInterface!778 0))(
  ( (LexerInterfaceExt!775 (__x!3694 Int)) (Lexer!776) )
))
(declare-fun thiss!12147 () LexerInterface!778)

(declare-datatypes ((List!4968 0))(
  ( (Nil!4958) (Cons!4958 (h!10359 (_ BitVec 16)) (t!73578 List!4968)) )
))
(declare-datatypes ((TokenValue!916 0))(
  ( (FloatLiteralValue!1832 (text!6857 List!4968)) (TokenValueExt!915 (__x!3695 Int)) (Broken!4580 (value!30253 List!4968)) (Object!925) (End!916) (Def!916) (Underscore!916) (Match!916) (Else!916) (Error!916) (Case!916) (If!916) (Extends!916) (Abstract!916) (Class!916) (Val!916) (DelimiterValue!1832 (del!976 List!4968)) (KeywordValue!922 (value!30254 List!4968)) (CommentValue!1832 (value!30255 List!4968)) (WhitespaceValue!1832 (value!30256 List!4968)) (IndentationValue!916 (value!30257 List!4968)) (String!6309) (Int32!916) (Broken!4581 (value!30258 List!4968)) (Boolean!917) (Unit!8803) (OperatorValue!919 (op!976 List!4968)) (IdentifierValue!1832 (value!30259 List!4968)) (IdentifierValue!1833 (value!30260 List!4968)) (WhitespaceValue!1833 (value!30261 List!4968)) (True!1832) (False!1832) (Broken!4582 (value!30262 List!4968)) (Broken!4583 (value!30263 List!4968)) (True!1833) (RightBrace!916) (RightBracket!916) (Colon!916) (Null!916) (Comma!916) (LeftBracket!916) (False!1833) (LeftBrace!916) (ImaginaryLiteralValue!916 (text!6858 List!4968)) (StringLiteralValue!2748 (value!30264 List!4968)) (EOFValue!916 (value!30265 List!4968)) (IdentValue!916 (value!30266 List!4968)) (DelimiterValue!1833 (value!30267 List!4968)) (DedentValue!916 (value!30268 List!4968)) (NewLineValue!916 (value!30269 List!4968)) (IntegerValue!2748 (value!30270 (_ BitVec 32)) (text!6859 List!4968)) (IntegerValue!2749 (value!30271 Int) (text!6860 List!4968)) (Times!916) (Or!916) (Equal!916) (Minus!916) (Broken!4584 (value!30272 List!4968)) (And!916) (Div!916) (LessEqual!916) (Mod!916) (Concat!2136) (Not!916) (Plus!916) (SpaceValue!916 (value!30273 List!4968)) (IntegerValue!2750 (value!30274 Int) (text!6861 List!4968)) (StringLiteralValue!2749 (text!6862 List!4968)) (FloatLiteralValue!1833 (text!6863 List!4968)) (BytesLiteralValue!916 (value!30275 List!4968)) (CommentValue!1833 (value!30276 List!4968)) (StringLiteralValue!2750 (value!30277 List!4968)) (ErrorTokenValue!916 (msg!977 List!4968)) )
))
(declare-datatypes ((TokenValueInjection!1600 0))(
  ( (TokenValueInjection!1601 (toValue!1727 Int) (toChars!1586 Int)) )
))
(declare-datatypes ((String!6310 0))(
  ( (String!6311 (value!30278 String)) )
))
(declare-datatypes ((Rule!1584 0))(
  ( (Rule!1585 (regex!892 Regex!1219) (tag!1154 String!6310) (isSeparator!892 Bool) (transformation!892 TokenValueInjection!1600)) )
))
(declare-datatypes ((List!4969 0))(
  ( (Nil!4959) (Cons!4959 (h!10360 Rule!1584) (t!73579 List!4969)) )
))
(declare-fun rules!1345 () List!4969)

(declare-fun rulesInvariant!741 (LexerInterface!778 List!4969) Bool)

(assert (=> b!526851 (= res!222836 (rulesInvariant!741 thiss!12147 rules!1345))))

(assert (=> b!526852 (= e!316690 (and e!316700 tp!166585))))

(declare-fun b!526853 () Bool)

(declare-fun e!316713 () Bool)

(declare-fun e!316693 () Bool)

(assert (=> b!526853 (= e!316713 e!316693)))

(declare-fun b!526854 () Bool)

(declare-fun e!316705 () Bool)

(declare-fun tp!166590 () Bool)

(assert (=> b!526854 (= e!316705 (and (inv!6212 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) tp!166590))))

(declare-fun b!526855 () Bool)

(declare-fun e!316710 () Bool)

(assert (=> b!526855 (= e!316710 e!316713)))

(declare-fun b!526856 () Bool)

(declare-fun e!316707 () Bool)

(declare-fun tp!166589 () Bool)

(assert (=> b!526856 (= e!316707 (and tp!166589 mapRes!2311))))

(declare-fun condMapEmpty!2312 () Bool)

(declare-fun mapDefault!2312 () List!4966)

(assert (=> b!526856 (= condMapEmpty!2312 (= (arr!1033 (_values!868 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) ((as const (Array (_ BitVec 32) List!4966)) mapDefault!2312)))))

(declare-fun b!526857 () Bool)

(declare-fun res!222834 () Bool)

(assert (=> b!526857 (=> (not res!222834) (not e!316708))))

(assert (=> b!526857 (= res!222834 (= (totalInput!1748 cacheFurthestNullable!56) input!747))))

(declare-fun b!526858 () Bool)

(declare-fun e!316711 () Bool)

(declare-fun e!316702 () Bool)

(assert (=> b!526858 (= e!316711 e!316702)))

(declare-fun mapNonEmpty!2310 () Bool)

(declare-fun mapRes!2312 () Bool)

(declare-fun tp!166576 () Bool)

(declare-fun tp!166578 () Bool)

(assert (=> mapNonEmpty!2310 (= mapRes!2312 (and tp!166576 tp!166578))))

(declare-datatypes ((tuple2!6114 0))(
  ( (tuple2!6115 (_1!3309 Context!314) (_2!3309 C!3360)) )
))
(declare-datatypes ((tuple2!6116 0))(
  ( (tuple2!6117 (_1!3310 tuple2!6114) (_2!3310 (InoxSet Context!314))) )
))
(declare-datatypes ((List!4970 0))(
  ( (Nil!4960) (Cons!4960 (h!10361 tuple2!6116) (t!73580 List!4970)) )
))
(declare-fun mapRest!2310 () (Array (_ BitVec 32) List!4970))

(declare-datatypes ((Hashable!563 0))(
  ( (HashableExt!562 (__x!3696 Int)) )
))
(declare-datatypes ((array!2269 0))(
  ( (array!2270 (arr!1035 (Array (_ BitVec 32) List!4970)) (size!4042 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1182 0))(
  ( (LongMapFixedSize!1183 (defaultEntry!947 Int) (mask!2072 (_ BitVec 32)) (extraKeys!838 (_ BitVec 32)) (zeroValue!848 List!4970) (minValue!848 List!4970) (_size!1291 (_ BitVec 32)) (_keys!885 array!2263) (_values!870 array!2269) (_vacant!652 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2305 0))(
  ( (Cell!2306 (v!16026 LongMapFixedSize!1182)) )
))
(declare-datatypes ((MutLongMap!591 0))(
  ( (LongMap!591 (underlying!1361 Cell!2305)) (MutLongMapExt!590 (__x!3697 Int)) )
))
(declare-datatypes ((Cell!2307 0))(
  ( (Cell!2308 (v!16027 MutLongMap!591)) )
))
(declare-datatypes ((MutableMap!563 0))(
  ( (MutableMapExt!562 (__x!3698 Int)) (HashMap!563 (underlying!1362 Cell!2307) (hashF!2471 Hashable!563) (_size!1292 (_ BitVec 32)) (defaultValue!714 Int)) )
))
(declare-datatypes ((CacheUp!232 0))(
  ( (CacheUp!233 (cache!950 MutableMap!563)) )
))
(declare-fun cacheUp!449 () CacheUp!232)

(declare-fun mapValue!2311 () List!4970)

(declare-fun mapKey!2312 () (_ BitVec 32))

(assert (=> mapNonEmpty!2310 (= (arr!1035 (_values!870 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) (store mapRest!2310 mapKey!2312 mapValue!2311))))

(declare-fun b!526859 () Bool)

(declare-fun e!316695 () Bool)

(declare-fun e!316714 () Bool)

(assert (=> b!526859 (= e!316695 e!316714)))

(declare-fun mapNonEmpty!2311 () Bool)

(declare-fun tp!166571 () Bool)

(declare-fun tp!166574 () Bool)

(assert (=> mapNonEmpty!2311 (= mapRes!2311 (and tp!166571 tp!166574))))

(declare-fun mapKey!2311 () (_ BitVec 32))

(declare-fun mapValue!2312 () List!4966)

(declare-fun mapRest!2311 () (Array (_ BitVec 32) List!4966))

(assert (=> mapNonEmpty!2311 (= (arr!1033 (_values!868 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) (store mapRest!2311 mapKey!2311 mapValue!2312))))

(declare-fun b!526860 () Bool)

(declare-fun e!316696 () Bool)

(declare-fun lt!217836 () MutLongMap!589)

(assert (=> b!526860 (= e!316688 (and e!316696 ((_ is LongMap!589) lt!217836)))))

(assert (=> b!526860 (= lt!217836 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))

(declare-fun mapNonEmpty!2312 () Bool)

(declare-fun tp!166591 () Bool)

(declare-fun tp!166587 () Bool)

(assert (=> mapNonEmpty!2312 (= mapRes!2310 (and tp!166591 tp!166587))))

(declare-fun mapRest!2312 () (Array (_ BitVec 32) List!4967))

(declare-fun mapValue!2310 () List!4967)

(declare-fun mapKey!2310 () (_ BitVec 32))

(assert (=> mapNonEmpty!2312 (= (arr!1034 (_values!869 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) (store mapRest!2312 mapKey!2310 mapValue!2310))))

(declare-fun b!526861 () Bool)

(declare-fun e!316687 () Bool)

(declare-fun lt!217835 () MutLongMap!591)

(assert (=> b!526861 (= e!316687 (and e!316710 ((_ is LongMap!591) lt!217835)))))

(assert (=> b!526861 (= lt!217835 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))

(declare-fun b!526862 () Bool)

(declare-fun size!4043 (BalanceConc!3222) Int)

(assert (=> b!526862 (= e!316708 (< (size!4043 input!747) 0))))

(declare-fun tp!166592 () Bool)

(declare-fun tp!166582 () Bool)

(declare-fun array_inv!753 (array!2263) Bool)

(declare-fun array_inv!754 (array!2265) Bool)

(assert (=> b!526863 (= e!316702 (and tp!166586 tp!166592 tp!166582 (array_inv!753 (_keys!883 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) (array_inv!754 (_values!868 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) e!316707))))

(declare-fun b!526864 () Bool)

(assert (=> b!526864 (= e!316697 e!316695)))

(declare-fun b!526865 () Bool)

(declare-fun e!316701 () Bool)

(declare-fun e!316715 () Bool)

(assert (=> b!526865 (= e!316701 e!316715)))

(declare-fun res!222832 () Bool)

(assert (=> start!48266 (=> (not res!222832) (not e!316708))))

(assert (=> start!48266 (= res!222832 ((_ is Lexer!776) thiss!12147))))

(assert (=> start!48266 e!316708))

(declare-fun inv!6213 (BalanceConc!3222) Bool)

(assert (=> start!48266 (and (inv!6213 input!747) e!316694)))

(declare-fun inv!6214 (CacheDown!218) Bool)

(assert (=> start!48266 (and (inv!6214 cacheDown!462) e!316716)))

(assert (=> start!48266 true))

(declare-fun e!316712 () Bool)

(declare-fun inv!6215 (CacheFurthestNullable!172) Bool)

(assert (=> start!48266 (and (inv!6215 cacheFurthestNullable!56) e!316712)))

(declare-fun inv!6216 (CacheUp!232) Bool)

(assert (=> start!48266 (and (inv!6216 cacheUp!449) e!316701)))

(assert (=> start!48266 e!316709))

(declare-fun e!316698 () Bool)

(assert (=> b!526866 (= e!316698 (and tp!166583 tp!166572))))

(assert (=> b!526867 (= e!316715 (and e!316687 tp!166594))))

(declare-fun b!526868 () Bool)

(assert (=> b!526868 (= e!316696 e!316711)))

(declare-fun b!526869 () Bool)

(declare-fun tp!166577 () Bool)

(declare-fun inv!6211 (String!6310) Bool)

(declare-fun inv!6217 (TokenValueInjection!1600) Bool)

(assert (=> b!526869 (= e!316699 (and tp!166577 (inv!6211 (tag!1154 (h!10360 rules!1345))) (inv!6217 (transformation!892 (h!10360 rules!1345))) e!316698))))

(declare-fun b!526870 () Bool)

(assert (=> b!526870 (= e!316712 (and e!316717 (inv!6213 (totalInput!1748 cacheFurthestNullable!56)) e!316705))))

(declare-fun e!316692 () Bool)

(declare-fun tp!166596 () Bool)

(declare-fun tp!166575 () Bool)

(declare-fun array_inv!755 (array!2267) Bool)

(assert (=> b!526871 (= e!316714 (and tp!166584 tp!166596 tp!166575 (array_inv!753 (_keys!884 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) (array_inv!755 (_values!869 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) e!316692))))

(declare-fun b!526872 () Bool)

(declare-fun e!316704 () Bool)

(declare-fun tp!166581 () Bool)

(assert (=> b!526872 (= e!316704 (and tp!166581 mapRes!2312))))

(declare-fun condMapEmpty!2310 () Bool)

(declare-fun mapDefault!2310 () List!4970)

(assert (=> b!526872 (= condMapEmpty!2310 (= (arr!1035 (_values!870 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) ((as const (Array (_ BitVec 32) List!4970)) mapDefault!2310)))))

(declare-fun b!526873 () Bool)

(declare-fun tp!166593 () Bool)

(assert (=> b!526873 (= e!316692 (and tp!166593 mapRes!2310))))

(declare-fun condMapEmpty!2311 () Bool)

(declare-fun mapDefault!2311 () List!4967)

(assert (=> b!526873 (= condMapEmpty!2311 (= (arr!1034 (_values!869 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) ((as const (Array (_ BitVec 32) List!4967)) mapDefault!2311)))))

(declare-fun mapIsEmpty!2312 () Bool)

(assert (=> mapIsEmpty!2312 mapRes!2312))

(declare-fun b!526874 () Bool)

(declare-fun res!222830 () Bool)

(assert (=> b!526874 (=> (not res!222830) (not e!316708))))

(declare-fun isEmpty!3607 (List!4969) Bool)

(assert (=> b!526874 (= res!222830 (not (isEmpty!3607 rules!1345)))))

(declare-fun b!526875 () Bool)

(declare-fun res!222831 () Bool)

(assert (=> b!526875 (=> (not res!222831) (not e!316708))))

(declare-fun valid!571 (CacheUp!232) Bool)

(assert (=> b!526875 (= res!222831 (valid!571 cacheUp!449))))

(declare-fun tp!166570 () Bool)

(declare-fun tp!166588 () Bool)

(declare-fun array_inv!756 (array!2269) Bool)

(assert (=> b!526876 (= e!316693 (and tp!166595 tp!166588 tp!166570 (array_inv!753 (_keys!885 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) (array_inv!756 (_values!870 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) e!316704))))

(assert (= (and start!48266 res!222832) b!526874))

(assert (= (and b!526874 res!222830) b!526851))

(assert (= (and b!526851 res!222836) b!526875))

(assert (= (and b!526875 res!222831) b!526848))

(assert (= (and b!526848 res!222833) b!526846))

(assert (= (and b!526846 res!222835) b!526857))

(assert (= (and b!526857 res!222834) b!526862))

(assert (= start!48266 b!526849))

(assert (= (and b!526873 condMapEmpty!2311) mapIsEmpty!2311))

(assert (= (and b!526873 (not condMapEmpty!2311)) mapNonEmpty!2312))

(assert (= b!526871 b!526873))

(assert (= b!526859 b!526871))

(assert (= b!526864 b!526859))

(assert (= (and b!526850 ((_ is LongMap!590) (v!16025 (underlying!1360 (cache!949 cacheDown!462))))) b!526864))

(assert (= b!526852 b!526850))

(assert (= (and b!526844 ((_ is HashMap!562) (cache!949 cacheDown!462))) b!526852))

(assert (= start!48266 b!526844))

(assert (= (and b!526856 condMapEmpty!2312) mapIsEmpty!2310))

(assert (= (and b!526856 (not condMapEmpty!2312)) mapNonEmpty!2311))

(assert (= b!526863 b!526856))

(assert (= b!526858 b!526863))

(assert (= b!526868 b!526858))

(assert (= (and b!526860 ((_ is LongMap!589) (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))) b!526868))

(assert (= b!526847 b!526860))

(assert (= (and b!526870 ((_ is HashMap!561) (cache!948 cacheFurthestNullable!56))) b!526847))

(assert (= b!526870 b!526854))

(assert (= start!48266 b!526870))

(assert (= (and b!526872 condMapEmpty!2310) mapIsEmpty!2312))

(assert (= (and b!526872 (not condMapEmpty!2310)) mapNonEmpty!2310))

(assert (= b!526876 b!526872))

(assert (= b!526853 b!526876))

(assert (= b!526855 b!526853))

(assert (= (and b!526861 ((_ is LongMap!591) (v!16027 (underlying!1362 (cache!950 cacheUp!449))))) b!526855))

(assert (= b!526867 b!526861))

(assert (= (and b!526865 ((_ is HashMap!563) (cache!950 cacheUp!449))) b!526867))

(assert (= start!48266 b!526865))

(assert (= b!526869 b!526866))

(assert (= b!526845 b!526869))

(assert (= (and start!48266 ((_ is Cons!4959) rules!1345)) b!526845))

(declare-fun m!772597 () Bool)

(assert (=> b!526851 m!772597))

(declare-fun m!772599 () Bool)

(assert (=> b!526854 m!772599))

(declare-fun m!772601 () Bool)

(assert (=> b!526862 m!772601))

(declare-fun m!772603 () Bool)

(assert (=> b!526874 m!772603))

(declare-fun m!772605 () Bool)

(assert (=> mapNonEmpty!2312 m!772605))

(declare-fun m!772607 () Bool)

(assert (=> mapNonEmpty!2311 m!772607))

(declare-fun m!772609 () Bool)

(assert (=> b!526871 m!772609))

(declare-fun m!772611 () Bool)

(assert (=> b!526871 m!772611))

(declare-fun m!772613 () Bool)

(assert (=> b!526849 m!772613))

(declare-fun m!772615 () Bool)

(assert (=> b!526870 m!772615))

(declare-fun m!772617 () Bool)

(assert (=> b!526846 m!772617))

(declare-fun m!772619 () Bool)

(assert (=> b!526876 m!772619))

(declare-fun m!772621 () Bool)

(assert (=> b!526876 m!772621))

(declare-fun m!772623 () Bool)

(assert (=> b!526869 m!772623))

(declare-fun m!772625 () Bool)

(assert (=> b!526869 m!772625))

(declare-fun m!772627 () Bool)

(assert (=> b!526863 m!772627))

(declare-fun m!772629 () Bool)

(assert (=> b!526863 m!772629))

(declare-fun m!772631 () Bool)

(assert (=> mapNonEmpty!2310 m!772631))

(declare-fun m!772633 () Bool)

(assert (=> b!526848 m!772633))

(declare-fun m!772635 () Bool)

(assert (=> start!48266 m!772635))

(declare-fun m!772637 () Bool)

(assert (=> start!48266 m!772637))

(declare-fun m!772639 () Bool)

(assert (=> start!48266 m!772639))

(declare-fun m!772641 () Bool)

(assert (=> start!48266 m!772641))

(declare-fun m!772643 () Bool)

(assert (=> b!526875 m!772643))

(check-sat (not b_next!14015) (not b!526872) b_and!51487 (not b_next!14017) (not b_next!14019) (not mapNonEmpty!2311) (not b!526862) (not b!526851) b_and!51499 (not b!526873) (not b!526849) (not b!526874) b_and!51501 (not mapNonEmpty!2310) (not b!526870) b_and!51489 (not b!526871) b_and!51495 (not b_next!14011) (not b_next!14013) (not b!526876) b_and!51491 (not b!526856) (not b!526848) (not start!48266) (not b_next!14009) (not b!526863) (not b!526845) (not b!526854) b_and!51493 b_and!51497 (not b!526869) (not b!526875) (not mapNonEmpty!2312) (not b_next!14021) (not b_next!14023) (not b!526846))
(check-sat b_and!51489 (not b_next!14015) b_and!51495 b_and!51487 (not b_next!14017) b_and!51491 (not b_next!14019) (not b_next!14009) b_and!51499 b_and!51493 b_and!51497 (not b_next!14021) (not b_next!14023) b_and!51501 (not b_next!14011) (not b_next!14013))
(get-model)

(declare-fun d!187496 () Bool)

(assert (=> d!187496 (= (isEmpty!3607 rules!1345) ((_ is Nil!4959) rules!1345))))

(assert (=> b!526874 d!187496))

(declare-fun d!187498 () Bool)

(declare-fun isBalanced!496 (Conc!1607) Bool)

(assert (=> d!187498 (= (inv!6213 input!747) (isBalanced!496 (c!101075 input!747)))))

(declare-fun bs!66062 () Bool)

(assert (= bs!66062 d!187498))

(declare-fun m!772645 () Bool)

(assert (=> bs!66062 m!772645))

(assert (=> start!48266 d!187498))

(declare-fun d!187500 () Bool)

(declare-fun res!222839 () Bool)

(declare-fun e!316720 () Bool)

(assert (=> d!187500 (=> (not res!222839) (not e!316720))))

(assert (=> d!187500 (= res!222839 ((_ is HashMap!562) (cache!949 cacheDown!462)))))

(assert (=> d!187500 (= (inv!6214 cacheDown!462) e!316720)))

(declare-fun b!526879 () Bool)

(declare-fun validCacheMapDown!34 (MutableMap!562) Bool)

(assert (=> b!526879 (= e!316720 (validCacheMapDown!34 (cache!949 cacheDown!462)))))

(assert (= (and d!187500 res!222839) b!526879))

(declare-fun m!772647 () Bool)

(assert (=> b!526879 m!772647))

(assert (=> start!48266 d!187500))

(declare-fun d!187502 () Bool)

(declare-fun res!222842 () Bool)

(declare-fun e!316723 () Bool)

(assert (=> d!187502 (=> (not res!222842) (not e!316723))))

(assert (=> d!187502 (= res!222842 ((_ is HashMap!561) (cache!948 cacheFurthestNullable!56)))))

(assert (=> d!187502 (= (inv!6215 cacheFurthestNullable!56) e!316723)))

(declare-fun b!526882 () Bool)

(declare-fun validCacheMapFurthestNullable!27 (MutableMap!561 BalanceConc!3222) Bool)

(assert (=> b!526882 (= e!316723 (validCacheMapFurthestNullable!27 (cache!948 cacheFurthestNullable!56) (totalInput!1748 cacheFurthestNullable!56)))))

(assert (= (and d!187502 res!222842) b!526882))

(declare-fun m!772649 () Bool)

(assert (=> b!526882 m!772649))

(assert (=> start!48266 d!187502))

(declare-fun d!187504 () Bool)

(declare-fun res!222845 () Bool)

(declare-fun e!316726 () Bool)

(assert (=> d!187504 (=> (not res!222845) (not e!316726))))

(assert (=> d!187504 (= res!222845 ((_ is HashMap!563) (cache!950 cacheUp!449)))))

(assert (=> d!187504 (= (inv!6216 cacheUp!449) e!316726)))

(declare-fun b!526885 () Bool)

(declare-fun validCacheMapUp!37 (MutableMap!563) Bool)

(assert (=> b!526885 (= e!316726 (validCacheMapUp!37 (cache!950 cacheUp!449)))))

(assert (= (and d!187504 res!222845) b!526885))

(declare-fun m!772651 () Bool)

(assert (=> b!526885 m!772651))

(assert (=> start!48266 d!187504))

(declare-fun d!187506 () Bool)

(assert (=> d!187506 (= (valid!571 cacheUp!449) (validCacheMapUp!37 (cache!950 cacheUp!449)))))

(declare-fun bs!66063 () Bool)

(assert (= bs!66063 d!187506))

(assert (=> bs!66063 m!772651))

(assert (=> b!526875 d!187506))

(declare-fun d!187508 () Bool)

(assert (=> d!187508 (= (array_inv!753 (_keys!885 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) (bvsge (size!4039 (_keys!885 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!526876 d!187508))

(declare-fun d!187510 () Bool)

(assert (=> d!187510 (= (array_inv!756 (_values!870 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) (bvsge (size!4042 (_values!870 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))) #b00000000000000000000000000000000))))

(assert (=> b!526876 d!187510))

(declare-fun d!187512 () Bool)

(assert (=> d!187512 (= (valid!570 cacheDown!462) (validCacheMapDown!34 (cache!949 cacheDown!462)))))

(declare-fun bs!66064 () Bool)

(assert (= bs!66064 d!187512))

(assert (=> bs!66064 m!772647))

(assert (=> b!526848 d!187512))

(declare-fun d!187514 () Bool)

(declare-fun c!101078 () Bool)

(assert (=> d!187514 (= c!101078 ((_ is Node!1607) (c!101075 input!747)))))

(declare-fun e!316731 () Bool)

(assert (=> d!187514 (= (inv!6212 (c!101075 input!747)) e!316731)))

(declare-fun b!526892 () Bool)

(declare-fun inv!6218 (Conc!1607) Bool)

(assert (=> b!526892 (= e!316731 (inv!6218 (c!101075 input!747)))))

(declare-fun b!526893 () Bool)

(declare-fun e!316732 () Bool)

(assert (=> b!526893 (= e!316731 e!316732)))

(declare-fun res!222848 () Bool)

(assert (=> b!526893 (= res!222848 (not ((_ is Leaf!2557) (c!101075 input!747))))))

(assert (=> b!526893 (=> res!222848 e!316732)))

(declare-fun b!526894 () Bool)

(declare-fun inv!6219 (Conc!1607) Bool)

(assert (=> b!526894 (= e!316732 (inv!6219 (c!101075 input!747)))))

(assert (= (and d!187514 c!101078) b!526892))

(assert (= (and d!187514 (not c!101078)) b!526893))

(assert (= (and b!526893 (not res!222848)) b!526894))

(declare-fun m!772653 () Bool)

(assert (=> b!526892 m!772653))

(declare-fun m!772655 () Bool)

(assert (=> b!526894 m!772655))

(assert (=> b!526849 d!187514))

(declare-fun d!187516 () Bool)

(assert (=> d!187516 (= (inv!6211 (tag!1154 (h!10360 rules!1345))) (= (mod (str.len (value!30278 (tag!1154 (h!10360 rules!1345)))) 2) 0))))

(assert (=> b!526869 d!187516))

(declare-fun d!187518 () Bool)

(declare-fun res!222851 () Bool)

(declare-fun e!316735 () Bool)

(assert (=> d!187518 (=> (not res!222851) (not e!316735))))

(declare-fun semiInverseModEq!356 (Int Int) Bool)

(assert (=> d!187518 (= res!222851 (semiInverseModEq!356 (toChars!1586 (transformation!892 (h!10360 rules!1345))) (toValue!1727 (transformation!892 (h!10360 rules!1345)))))))

(assert (=> d!187518 (= (inv!6217 (transformation!892 (h!10360 rules!1345))) e!316735)))

(declare-fun b!526897 () Bool)

(declare-fun equivClasses!339 (Int Int) Bool)

(assert (=> b!526897 (= e!316735 (equivClasses!339 (toChars!1586 (transformation!892 (h!10360 rules!1345))) (toValue!1727 (transformation!892 (h!10360 rules!1345)))))))

(assert (= (and d!187518 res!222851) b!526897))

(declare-fun m!772657 () Bool)

(assert (=> d!187518 m!772657))

(declare-fun m!772659 () Bool)

(assert (=> b!526897 m!772659))

(assert (=> b!526869 d!187518))

(declare-fun d!187520 () Bool)

(declare-fun res!222854 () Bool)

(declare-fun e!316738 () Bool)

(assert (=> d!187520 (=> (not res!222854) (not e!316738))))

(declare-fun rulesValid!321 (LexerInterface!778 List!4969) Bool)

(assert (=> d!187520 (= res!222854 (rulesValid!321 thiss!12147 rules!1345))))

(assert (=> d!187520 (= (rulesInvariant!741 thiss!12147 rules!1345) e!316738)))

(declare-fun b!526900 () Bool)

(declare-datatypes ((List!4971 0))(
  ( (Nil!4961) (Cons!4961 (h!10362 String!6310) (t!73581 List!4971)) )
))
(declare-fun noDuplicateTag!321 (LexerInterface!778 List!4969 List!4971) Bool)

(assert (=> b!526900 (= e!316738 (noDuplicateTag!321 thiss!12147 rules!1345 Nil!4961))))

(assert (= (and d!187520 res!222854) b!526900))

(declare-fun m!772661 () Bool)

(assert (=> d!187520 m!772661))

(declare-fun m!772663 () Bool)

(assert (=> b!526900 m!772663))

(assert (=> b!526851 d!187520))

(declare-fun d!187522 () Bool)

(assert (=> d!187522 (= (inv!6213 (totalInput!1748 cacheFurthestNullable!56)) (isBalanced!496 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))

(declare-fun bs!66065 () Bool)

(assert (= bs!66065 d!187522))

(declare-fun m!772665 () Bool)

(assert (=> bs!66065 m!772665))

(assert (=> b!526870 d!187522))

(declare-fun d!187524 () Bool)

(assert (=> d!187524 (= (array_inv!753 (_keys!884 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) (bvsge (size!4039 (_keys!884 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!526871 d!187524))

(declare-fun d!187526 () Bool)

(assert (=> d!187526 (= (array_inv!755 (_values!869 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) (bvsge (size!4041 (_values!869 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))) #b00000000000000000000000000000000))))

(assert (=> b!526871 d!187526))

(declare-fun d!187528 () Bool)

(declare-fun c!101079 () Bool)

(assert (=> d!187528 (= c!101079 ((_ is Node!1607) (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))

(declare-fun e!316739 () Bool)

(assert (=> d!187528 (= (inv!6212 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) e!316739)))

(declare-fun b!526901 () Bool)

(assert (=> b!526901 (= e!316739 (inv!6218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))

(declare-fun b!526902 () Bool)

(declare-fun e!316740 () Bool)

(assert (=> b!526902 (= e!316739 e!316740)))

(declare-fun res!222855 () Bool)

(assert (=> b!526902 (= res!222855 (not ((_ is Leaf!2557) (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(assert (=> b!526902 (=> res!222855 e!316740)))

(declare-fun b!526903 () Bool)

(assert (=> b!526903 (= e!316740 (inv!6219 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))

(assert (= (and d!187528 c!101079) b!526901))

(assert (= (and d!187528 (not c!101079)) b!526902))

(assert (= (and b!526902 (not res!222855)) b!526903))

(declare-fun m!772667 () Bool)

(assert (=> b!526901 m!772667))

(declare-fun m!772669 () Bool)

(assert (=> b!526903 m!772669))

(assert (=> b!526854 d!187528))

(declare-fun d!187530 () Bool)

(declare-fun lt!217840 () Int)

(declare-fun size!4044 (List!4964) Int)

(declare-fun list!2065 (BalanceConc!3222) List!4964)

(assert (=> d!187530 (= lt!217840 (size!4044 (list!2065 input!747)))))

(declare-fun size!4045 (Conc!1607) Int)

(assert (=> d!187530 (= lt!217840 (size!4045 (c!101075 input!747)))))

(assert (=> d!187530 (= (size!4043 input!747) lt!217840)))

(declare-fun bs!66066 () Bool)

(assert (= bs!66066 d!187530))

(declare-fun m!772671 () Bool)

(assert (=> bs!66066 m!772671))

(assert (=> bs!66066 m!772671))

(declare-fun m!772673 () Bool)

(assert (=> bs!66066 m!772673))

(declare-fun m!772675 () Bool)

(assert (=> bs!66066 m!772675))

(assert (=> b!526862 d!187530))

(declare-fun d!187532 () Bool)

(assert (=> d!187532 (= (valid!569 cacheFurthestNullable!56) (validCacheMapFurthestNullable!27 (cache!948 cacheFurthestNullable!56) (totalInput!1748 cacheFurthestNullable!56)))))

(declare-fun bs!66067 () Bool)

(assert (= bs!66067 d!187532))

(assert (=> bs!66067 m!772649))

(assert (=> b!526846 d!187532))

(declare-fun d!187534 () Bool)

(assert (=> d!187534 (= (array_inv!753 (_keys!883 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) (bvsge (size!4039 (_keys!883 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!526863 d!187534))

(declare-fun d!187536 () Bool)

(assert (=> d!187536 (= (array_inv!754 (_values!868 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) (bvsge (size!4040 (_values!868 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))) #b00000000000000000000000000000000))))

(assert (=> b!526863 d!187536))

(declare-fun setNonEmpty!2509 () Bool)

(declare-fun tp!166603 () Bool)

(declare-fun e!316745 () Bool)

(declare-fun setElem!2509 () Context!314)

(declare-fun setRes!2509 () Bool)

(declare-fun inv!6220 (Context!314) Bool)

(assert (=> setNonEmpty!2509 (= setRes!2509 (and tp!166603 (inv!6220 setElem!2509) e!316745))))

(declare-fun setRest!2509 () (InoxSet Context!314))

(assert (=> setNonEmpty!2509 (= (_1!3305 (_1!3306 (h!10357 mapDefault!2312))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2509 true) setRest!2509))))

(declare-fun b!526910 () Bool)

(declare-fun e!316746 () Bool)

(declare-fun tp!166604 () Bool)

(assert (=> b!526910 (= e!316746 (and setRes!2509 tp!166604))))

(declare-fun condSetEmpty!2509 () Bool)

(assert (=> b!526910 (= condSetEmpty!2509 (= (_1!3305 (_1!3306 (h!10357 mapDefault!2312))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526856 (= tp!166589 e!316746)))

(declare-fun setIsEmpty!2509 () Bool)

(assert (=> setIsEmpty!2509 setRes!2509))

(declare-fun b!526911 () Bool)

(declare-fun tp!166605 () Bool)

(assert (=> b!526911 (= e!316745 tp!166605)))

(assert (= (and b!526910 condSetEmpty!2509) setIsEmpty!2509))

(assert (= (and b!526910 (not condSetEmpty!2509)) setNonEmpty!2509))

(assert (= setNonEmpty!2509 b!526911))

(assert (= (and b!526856 ((_ is Cons!4956) mapDefault!2312)) b!526910))

(declare-fun m!772677 () Bool)

(assert (=> setNonEmpty!2509 m!772677))

(declare-fun setIsEmpty!2512 () Bool)

(declare-fun setRes!2512 () Bool)

(assert (=> setIsEmpty!2512 setRes!2512))

(declare-fun b!526920 () Bool)

(declare-fun e!316753 () Bool)

(declare-fun tp!166614 () Bool)

(assert (=> b!526920 (= e!316753 tp!166614)))

(declare-fun e!316755 () Bool)

(declare-fun tp!166615 () Bool)

(declare-fun tp_is_empty!2797 () Bool)

(declare-fun b!526921 () Bool)

(assert (=> b!526921 (= e!316755 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))) e!316753 tp_is_empty!2797 setRes!2512 tp!166615))))

(declare-fun condSetEmpty!2512 () Bool)

(assert (=> b!526921 (= condSetEmpty!2512 (= (_2!3310 (h!10361 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526876 (= tp!166588 e!316755)))

(declare-fun b!526922 () Bool)

(declare-fun e!316754 () Bool)

(declare-fun tp!166616 () Bool)

(assert (=> b!526922 (= e!316754 tp!166616)))

(declare-fun setElem!2512 () Context!314)

(declare-fun tp!166617 () Bool)

(declare-fun setNonEmpty!2512 () Bool)

(assert (=> setNonEmpty!2512 (= setRes!2512 (and tp!166617 (inv!6220 setElem!2512) e!316754))))

(declare-fun setRest!2512 () (InoxSet Context!314))

(assert (=> setNonEmpty!2512 (= (_2!3310 (h!10361 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2512 true) setRest!2512))))

(assert (= b!526921 b!526920))

(assert (= (and b!526921 condSetEmpty!2512) setIsEmpty!2512))

(assert (= (and b!526921 (not condSetEmpty!2512)) setNonEmpty!2512))

(assert (= setNonEmpty!2512 b!526922))

(assert (= (and b!526876 ((_ is Cons!4960) (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))) b!526921))

(declare-fun m!772679 () Bool)

(assert (=> b!526921 m!772679))

(declare-fun m!772681 () Bool)

(assert (=> setNonEmpty!2512 m!772681))

(declare-fun setIsEmpty!2513 () Bool)

(declare-fun setRes!2513 () Bool)

(assert (=> setIsEmpty!2513 setRes!2513))

(declare-fun b!526923 () Bool)

(declare-fun e!316756 () Bool)

(declare-fun tp!166618 () Bool)

(assert (=> b!526923 (= e!316756 tp!166618)))

(declare-fun e!316758 () Bool)

(declare-fun tp!166619 () Bool)

(declare-fun b!526924 () Bool)

(assert (=> b!526924 (= e!316758 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))) e!316756 tp_is_empty!2797 setRes!2513 tp!166619))))

(declare-fun condSetEmpty!2513 () Bool)

(assert (=> b!526924 (= condSetEmpty!2513 (= (_2!3310 (h!10361 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526876 (= tp!166570 e!316758)))

(declare-fun b!526925 () Bool)

(declare-fun e!316757 () Bool)

(declare-fun tp!166620 () Bool)

(assert (=> b!526925 (= e!316757 tp!166620)))

(declare-fun setElem!2513 () Context!314)

(declare-fun setNonEmpty!2513 () Bool)

(declare-fun tp!166621 () Bool)

(assert (=> setNonEmpty!2513 (= setRes!2513 (and tp!166621 (inv!6220 setElem!2513) e!316757))))

(declare-fun setRest!2513 () (InoxSet Context!314))

(assert (=> setNonEmpty!2513 (= (_2!3310 (h!10361 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2513 true) setRest!2513))))

(assert (= b!526924 b!526923))

(assert (= (and b!526924 condSetEmpty!2513) setIsEmpty!2513))

(assert (= (and b!526924 (not condSetEmpty!2513)) setNonEmpty!2513))

(assert (= setNonEmpty!2513 b!526925))

(assert (= (and b!526876 ((_ is Cons!4960) (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))) b!526924))

(declare-fun m!772683 () Bool)

(assert (=> b!526924 m!772683))

(declare-fun m!772685 () Bool)

(assert (=> setNonEmpty!2513 m!772685))

(declare-fun setIsEmpty!2518 () Bool)

(declare-fun setRes!2519 () Bool)

(assert (=> setIsEmpty!2518 setRes!2519))

(declare-fun b!526940 () Bool)

(declare-fun e!316775 () Bool)

(declare-fun tp!166643 () Bool)

(assert (=> b!526940 (= e!316775 tp!166643)))

(declare-fun mapIsEmpty!2315 () Bool)

(declare-fun mapRes!2315 () Bool)

(assert (=> mapIsEmpty!2315 mapRes!2315))

(declare-fun b!526941 () Bool)

(declare-fun e!316776 () Bool)

(declare-fun tp!166644 () Bool)

(assert (=> b!526941 (= e!316776 tp!166644)))

(declare-fun setIsEmpty!2519 () Bool)

(declare-fun setRes!2518 () Bool)

(assert (=> setIsEmpty!2519 setRes!2518))

(declare-fun b!526942 () Bool)

(declare-fun e!316774 () Bool)

(declare-fun tp!166646 () Bool)

(assert (=> b!526942 (= e!316774 tp!166646)))

(declare-fun b!526943 () Bool)

(declare-fun e!316771 () Bool)

(declare-fun tp!166645 () Bool)

(assert (=> b!526943 (= e!316771 tp!166645)))

(declare-fun mapValue!2315 () List!4970)

(declare-fun e!316772 () Bool)

(declare-fun tp!166648 () Bool)

(declare-fun b!526944 () Bool)

(assert (=> b!526944 (= e!316772 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 mapValue!2315)))) e!316774 tp_is_empty!2797 setRes!2519 tp!166648))))

(declare-fun condSetEmpty!2518 () Bool)

(assert (=> b!526944 (= condSetEmpty!2518 (= (_2!3310 (h!10361 mapValue!2315)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun condMapEmpty!2315 () Bool)

(declare-fun mapDefault!2315 () List!4970)

(assert (=> mapNonEmpty!2310 (= condMapEmpty!2315 (= mapRest!2310 ((as const (Array (_ BitVec 32) List!4970)) mapDefault!2315)))))

(declare-fun e!316773 () Bool)

(assert (=> mapNonEmpty!2310 (= tp!166576 (and e!316773 mapRes!2315))))

(declare-fun tp!166642 () Bool)

(declare-fun setElem!2519 () Context!314)

(declare-fun setNonEmpty!2518 () Bool)

(assert (=> setNonEmpty!2518 (= setRes!2519 (and tp!166642 (inv!6220 setElem!2519) e!316776))))

(declare-fun setRest!2518 () (InoxSet Context!314))

(assert (=> setNonEmpty!2518 (= (_2!3310 (h!10361 mapValue!2315)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2519 true) setRest!2518))))

(declare-fun tp!166640 () Bool)

(declare-fun setElem!2518 () Context!314)

(declare-fun setNonEmpty!2519 () Bool)

(assert (=> setNonEmpty!2519 (= setRes!2518 (and tp!166640 (inv!6220 setElem!2518) e!316775))))

(declare-fun setRest!2519 () (InoxSet Context!314))

(assert (=> setNonEmpty!2519 (= (_2!3310 (h!10361 mapDefault!2315)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2518 true) setRest!2519))))

(declare-fun b!526945 () Bool)

(declare-fun tp!166647 () Bool)

(assert (=> b!526945 (= e!316773 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 mapDefault!2315)))) e!316771 tp_is_empty!2797 setRes!2518 tp!166647))))

(declare-fun condSetEmpty!2519 () Bool)

(assert (=> b!526945 (= condSetEmpty!2519 (= (_2!3310 (h!10361 mapDefault!2315)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun mapNonEmpty!2315 () Bool)

(declare-fun tp!166641 () Bool)

(assert (=> mapNonEmpty!2315 (= mapRes!2315 (and tp!166641 e!316772))))

(declare-fun mapKey!2315 () (_ BitVec 32))

(declare-fun mapRest!2315 () (Array (_ BitVec 32) List!4970))

(assert (=> mapNonEmpty!2315 (= mapRest!2310 (store mapRest!2315 mapKey!2315 mapValue!2315))))

(assert (= (and mapNonEmpty!2310 condMapEmpty!2315) mapIsEmpty!2315))

(assert (= (and mapNonEmpty!2310 (not condMapEmpty!2315)) mapNonEmpty!2315))

(assert (= b!526944 b!526942))

(assert (= (and b!526944 condSetEmpty!2518) setIsEmpty!2518))

(assert (= (and b!526944 (not condSetEmpty!2518)) setNonEmpty!2518))

(assert (= setNonEmpty!2518 b!526941))

(assert (= (and mapNonEmpty!2315 ((_ is Cons!4960) mapValue!2315)) b!526944))

(assert (= b!526945 b!526943))

(assert (= (and b!526945 condSetEmpty!2519) setIsEmpty!2519))

(assert (= (and b!526945 (not condSetEmpty!2519)) setNonEmpty!2519))

(assert (= setNonEmpty!2519 b!526940))

(assert (= (and mapNonEmpty!2310 ((_ is Cons!4960) mapDefault!2315)) b!526945))

(declare-fun m!772687 () Bool)

(assert (=> setNonEmpty!2519 m!772687))

(declare-fun m!772689 () Bool)

(assert (=> mapNonEmpty!2315 m!772689))

(declare-fun m!772691 () Bool)

(assert (=> setNonEmpty!2518 m!772691))

(declare-fun m!772693 () Bool)

(assert (=> b!526945 m!772693))

(declare-fun m!772695 () Bool)

(assert (=> b!526944 m!772695))

(declare-fun setIsEmpty!2520 () Bool)

(declare-fun setRes!2520 () Bool)

(assert (=> setIsEmpty!2520 setRes!2520))

(declare-fun b!526946 () Bool)

(declare-fun e!316777 () Bool)

(declare-fun tp!166649 () Bool)

(assert (=> b!526946 (= e!316777 tp!166649)))

(declare-fun tp!166650 () Bool)

(declare-fun e!316779 () Bool)

(declare-fun b!526947 () Bool)

(assert (=> b!526947 (= e!316779 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 mapValue!2311)))) e!316777 tp_is_empty!2797 setRes!2520 tp!166650))))

(declare-fun condSetEmpty!2520 () Bool)

(assert (=> b!526947 (= condSetEmpty!2520 (= (_2!3310 (h!10361 mapValue!2311)) ((as const (Array Context!314 Bool)) false)))))

(assert (=> mapNonEmpty!2310 (= tp!166578 e!316779)))

(declare-fun b!526948 () Bool)

(declare-fun e!316778 () Bool)

(declare-fun tp!166651 () Bool)

(assert (=> b!526948 (= e!316778 tp!166651)))

(declare-fun tp!166652 () Bool)

(declare-fun setElem!2520 () Context!314)

(declare-fun setNonEmpty!2520 () Bool)

(assert (=> setNonEmpty!2520 (= setRes!2520 (and tp!166652 (inv!6220 setElem!2520) e!316778))))

(declare-fun setRest!2520 () (InoxSet Context!314))

(assert (=> setNonEmpty!2520 (= (_2!3310 (h!10361 mapValue!2311)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2520 true) setRest!2520))))

(assert (= b!526947 b!526946))

(assert (= (and b!526947 condSetEmpty!2520) setIsEmpty!2520))

(assert (= (and b!526947 (not condSetEmpty!2520)) setNonEmpty!2520))

(assert (= setNonEmpty!2520 b!526948))

(assert (= (and mapNonEmpty!2310 ((_ is Cons!4960) mapValue!2311)) b!526947))

(declare-fun m!772697 () Bool)

(assert (=> b!526947 m!772697))

(declare-fun m!772699 () Bool)

(assert (=> setNonEmpty!2520 m!772699))

(declare-fun e!316785 () Bool)

(declare-fun b!526957 () Bool)

(declare-fun tp!166659 () Bool)

(declare-fun tp!166661 () Bool)

(assert (=> b!526957 (= e!316785 (and (inv!6212 (left!4218 (c!101075 input!747))) tp!166659 (inv!6212 (right!4548 (c!101075 input!747))) tp!166661))))

(declare-fun b!526959 () Bool)

(declare-fun e!316784 () Bool)

(declare-fun tp!166660 () Bool)

(assert (=> b!526959 (= e!316784 tp!166660)))

(declare-fun b!526958 () Bool)

(declare-fun inv!6221 (IArray!3215) Bool)

(assert (=> b!526958 (= e!316785 (and (inv!6221 (xs!4244 (c!101075 input!747))) e!316784))))

(assert (=> b!526849 (= tp!166580 (and (inv!6212 (c!101075 input!747)) e!316785))))

(assert (= (and b!526849 ((_ is Node!1607) (c!101075 input!747))) b!526957))

(assert (= b!526958 b!526959))

(assert (= (and b!526849 ((_ is Leaf!2557) (c!101075 input!747))) b!526958))

(declare-fun m!772701 () Bool)

(assert (=> b!526957 m!772701))

(declare-fun m!772703 () Bool)

(assert (=> b!526957 m!772703))

(declare-fun m!772705 () Bool)

(assert (=> b!526958 m!772705))

(assert (=> b!526849 m!772613))

(declare-fun b!526970 () Bool)

(declare-fun e!316796 () Bool)

(declare-fun setRes!2525 () Bool)

(declare-fun tp!166682 () Bool)

(assert (=> b!526970 (= e!316796 (and setRes!2525 tp!166682))))

(declare-fun condSetEmpty!2526 () Bool)

(declare-fun mapDefault!2318 () List!4966)

(assert (=> b!526970 (= condSetEmpty!2526 (= (_1!3305 (_1!3306 (h!10357 mapDefault!2318))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun condMapEmpty!2318 () Bool)

(assert (=> mapNonEmpty!2311 (= condMapEmpty!2318 (= mapRest!2311 ((as const (Array (_ BitVec 32) List!4966)) mapDefault!2318)))))

(declare-fun mapRes!2318 () Bool)

(assert (=> mapNonEmpty!2311 (= tp!166571 (and e!316796 mapRes!2318))))

(declare-fun b!526971 () Bool)

(declare-fun e!316797 () Bool)

(declare-fun tp!166677 () Bool)

(assert (=> b!526971 (= e!316797 tp!166677)))

(declare-fun mapIsEmpty!2318 () Bool)

(assert (=> mapIsEmpty!2318 mapRes!2318))

(declare-fun b!526972 () Bool)

(declare-fun e!316795 () Bool)

(declare-fun tp!166678 () Bool)

(assert (=> b!526972 (= e!316795 tp!166678)))

(declare-fun setNonEmpty!2525 () Bool)

(declare-fun setElem!2525 () Context!314)

(declare-fun setRes!2526 () Bool)

(declare-fun tp!166679 () Bool)

(assert (=> setNonEmpty!2525 (= setRes!2526 (and tp!166679 (inv!6220 setElem!2525) e!316795))))

(declare-fun mapValue!2318 () List!4966)

(declare-fun setRest!2526 () (InoxSet Context!314))

(assert (=> setNonEmpty!2525 (= (_1!3305 (_1!3306 (h!10357 mapValue!2318))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2525 true) setRest!2526))))

(declare-fun setIsEmpty!2525 () Bool)

(assert (=> setIsEmpty!2525 setRes!2525))

(declare-fun b!526973 () Bool)

(declare-fun e!316794 () Bool)

(declare-fun tp!166676 () Bool)

(assert (=> b!526973 (= e!316794 (and setRes!2526 tp!166676))))

(declare-fun condSetEmpty!2525 () Bool)

(assert (=> b!526973 (= condSetEmpty!2525 (= (_1!3305 (_1!3306 (h!10357 mapValue!2318))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun mapNonEmpty!2318 () Bool)

(declare-fun tp!166681 () Bool)

(assert (=> mapNonEmpty!2318 (= mapRes!2318 (and tp!166681 e!316794))))

(declare-fun mapRest!2318 () (Array (_ BitVec 32) List!4966))

(declare-fun mapKey!2318 () (_ BitVec 32))

(assert (=> mapNonEmpty!2318 (= mapRest!2311 (store mapRest!2318 mapKey!2318 mapValue!2318))))

(declare-fun setIsEmpty!2526 () Bool)

(assert (=> setIsEmpty!2526 setRes!2526))

(declare-fun setNonEmpty!2526 () Bool)

(declare-fun tp!166680 () Bool)

(declare-fun setElem!2526 () Context!314)

(assert (=> setNonEmpty!2526 (= setRes!2525 (and tp!166680 (inv!6220 setElem!2526) e!316797))))

(declare-fun setRest!2525 () (InoxSet Context!314))

(assert (=> setNonEmpty!2526 (= (_1!3305 (_1!3306 (h!10357 mapDefault!2318))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2526 true) setRest!2525))))

(assert (= (and mapNonEmpty!2311 condMapEmpty!2318) mapIsEmpty!2318))

(assert (= (and mapNonEmpty!2311 (not condMapEmpty!2318)) mapNonEmpty!2318))

(assert (= (and b!526973 condSetEmpty!2525) setIsEmpty!2526))

(assert (= (and b!526973 (not condSetEmpty!2525)) setNonEmpty!2525))

(assert (= setNonEmpty!2525 b!526972))

(assert (= (and mapNonEmpty!2318 ((_ is Cons!4956) mapValue!2318)) b!526973))

(assert (= (and b!526970 condSetEmpty!2526) setIsEmpty!2525))

(assert (= (and b!526970 (not condSetEmpty!2526)) setNonEmpty!2526))

(assert (= setNonEmpty!2526 b!526971))

(assert (= (and mapNonEmpty!2311 ((_ is Cons!4956) mapDefault!2318)) b!526970))

(declare-fun m!772707 () Bool)

(assert (=> setNonEmpty!2525 m!772707))

(declare-fun m!772709 () Bool)

(assert (=> mapNonEmpty!2318 m!772709))

(declare-fun m!772711 () Bool)

(assert (=> setNonEmpty!2526 m!772711))

(declare-fun e!316798 () Bool)

(declare-fun setRes!2527 () Bool)

(declare-fun tp!166683 () Bool)

(declare-fun setNonEmpty!2527 () Bool)

(declare-fun setElem!2527 () Context!314)

(assert (=> setNonEmpty!2527 (= setRes!2527 (and tp!166683 (inv!6220 setElem!2527) e!316798))))

(declare-fun setRest!2527 () (InoxSet Context!314))

(assert (=> setNonEmpty!2527 (= (_1!3305 (_1!3306 (h!10357 mapValue!2312))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2527 true) setRest!2527))))

(declare-fun b!526974 () Bool)

(declare-fun e!316799 () Bool)

(declare-fun tp!166684 () Bool)

(assert (=> b!526974 (= e!316799 (and setRes!2527 tp!166684))))

(declare-fun condSetEmpty!2527 () Bool)

(assert (=> b!526974 (= condSetEmpty!2527 (= (_1!3305 (_1!3306 (h!10357 mapValue!2312))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> mapNonEmpty!2311 (= tp!166574 e!316799)))

(declare-fun setIsEmpty!2527 () Bool)

(assert (=> setIsEmpty!2527 setRes!2527))

(declare-fun b!526975 () Bool)

(declare-fun tp!166685 () Bool)

(assert (=> b!526975 (= e!316798 tp!166685)))

(assert (= (and b!526974 condSetEmpty!2527) setIsEmpty!2527))

(assert (= (and b!526974 (not condSetEmpty!2527)) setNonEmpty!2527))

(assert (= setNonEmpty!2527 b!526975))

(assert (= (and mapNonEmpty!2311 ((_ is Cons!4956) mapValue!2312)) b!526974))

(declare-fun m!772713 () Bool)

(assert (=> setNonEmpty!2527 m!772713))

(declare-fun b!526989 () Bool)

(declare-fun e!316802 () Bool)

(declare-fun tp!166699 () Bool)

(declare-fun tp!166697 () Bool)

(assert (=> b!526989 (= e!316802 (and tp!166699 tp!166697))))

(declare-fun b!526988 () Bool)

(declare-fun tp!166698 () Bool)

(assert (=> b!526988 (= e!316802 tp!166698)))

(declare-fun b!526987 () Bool)

(declare-fun tp!166700 () Bool)

(declare-fun tp!166696 () Bool)

(assert (=> b!526987 (= e!316802 (and tp!166700 tp!166696))))

(assert (=> b!526869 (= tp!166577 e!316802)))

(declare-fun b!526986 () Bool)

(assert (=> b!526986 (= e!316802 tp_is_empty!2797)))

(assert (= (and b!526869 ((_ is ElementMatch!1219) (regex!892 (h!10360 rules!1345)))) b!526986))

(assert (= (and b!526869 ((_ is Concat!2135) (regex!892 (h!10360 rules!1345)))) b!526987))

(assert (= (and b!526869 ((_ is Star!1219) (regex!892 (h!10360 rules!1345)))) b!526988))

(assert (= (and b!526869 ((_ is Union!1219) (regex!892 (h!10360 rules!1345)))) b!526989))

(declare-fun setRes!2532 () Bool)

(declare-fun tp!166730 () Bool)

(declare-fun tp!166728 () Bool)

(declare-fun e!316820 () Bool)

(declare-fun e!316818 () Bool)

(declare-fun b!527004 () Bool)

(declare-fun mapValue!2321 () List!4967)

(assert (=> b!527004 (= e!316818 (and tp!166730 (inv!6220 (_2!3307 (_1!3308 (h!10358 mapValue!2321)))) e!316820 tp_is_empty!2797 setRes!2532 tp!166728))))

(declare-fun condSetEmpty!2533 () Bool)

(assert (=> b!527004 (= condSetEmpty!2533 (= (_2!3308 (h!10358 mapValue!2321)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527005 () Bool)

(declare-fun e!316816 () Bool)

(declare-fun tp!166726 () Bool)

(assert (=> b!527005 (= e!316816 tp!166726)))

(declare-fun mapNonEmpty!2321 () Bool)

(declare-fun mapRes!2321 () Bool)

(declare-fun tp!166731 () Bool)

(assert (=> mapNonEmpty!2321 (= mapRes!2321 (and tp!166731 e!316818))))

(declare-fun mapRest!2321 () (Array (_ BitVec 32) List!4967))

(declare-fun mapKey!2321 () (_ BitVec 32))

(assert (=> mapNonEmpty!2321 (= mapRest!2312 (store mapRest!2321 mapKey!2321 mapValue!2321))))

(declare-fun setIsEmpty!2532 () Bool)

(assert (=> setIsEmpty!2532 setRes!2532))

(declare-fun setRes!2533 () Bool)

(declare-fun tp!166725 () Bool)

(declare-fun e!316815 () Bool)

(declare-fun tp!166729 () Bool)

(declare-fun e!316817 () Bool)

(declare-fun mapDefault!2321 () List!4967)

(declare-fun b!527006 () Bool)

(assert (=> b!527006 (= e!316815 (and tp!166729 (inv!6220 (_2!3307 (_1!3308 (h!10358 mapDefault!2321)))) e!316817 tp_is_empty!2797 setRes!2533 tp!166725))))

(declare-fun condSetEmpty!2532 () Bool)

(assert (=> b!527006 (= condSetEmpty!2532 (= (_2!3308 (h!10358 mapDefault!2321)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun setElem!2533 () Context!314)

(declare-fun tp!166733 () Bool)

(declare-fun setNonEmpty!2532 () Bool)

(assert (=> setNonEmpty!2532 (= setRes!2532 (and tp!166733 (inv!6220 setElem!2533) e!316816))))

(declare-fun setRest!2533 () (InoxSet Context!314))

(assert (=> setNonEmpty!2532 (= (_2!3308 (h!10358 mapValue!2321)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2533 true) setRest!2533))))

(declare-fun condMapEmpty!2321 () Bool)

(assert (=> mapNonEmpty!2312 (= condMapEmpty!2321 (= mapRest!2312 ((as const (Array (_ BitVec 32) List!4967)) mapDefault!2321)))))

(assert (=> mapNonEmpty!2312 (= tp!166591 (and e!316815 mapRes!2321))))

(declare-fun mapIsEmpty!2321 () Bool)

(assert (=> mapIsEmpty!2321 mapRes!2321))

(declare-fun b!527007 () Bool)

(declare-fun e!316819 () Bool)

(declare-fun tp!166727 () Bool)

(assert (=> b!527007 (= e!316819 tp!166727)))

(declare-fun setNonEmpty!2533 () Bool)

(declare-fun tp!166724 () Bool)

(declare-fun setElem!2532 () Context!314)

(assert (=> setNonEmpty!2533 (= setRes!2533 (and tp!166724 (inv!6220 setElem!2532) e!316819))))

(declare-fun setRest!2532 () (InoxSet Context!314))

(assert (=> setNonEmpty!2533 (= (_2!3308 (h!10358 mapDefault!2321)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2532 true) setRest!2532))))

(declare-fun setIsEmpty!2533 () Bool)

(assert (=> setIsEmpty!2533 setRes!2533))

(declare-fun b!527008 () Bool)

(declare-fun tp!166732 () Bool)

(assert (=> b!527008 (= e!316817 tp!166732)))

(declare-fun b!527009 () Bool)

(declare-fun tp!166723 () Bool)

(assert (=> b!527009 (= e!316820 tp!166723)))

(assert (= (and mapNonEmpty!2312 condMapEmpty!2321) mapIsEmpty!2321))

(assert (= (and mapNonEmpty!2312 (not condMapEmpty!2321)) mapNonEmpty!2321))

(assert (= b!527004 b!527009))

(assert (= (and b!527004 condSetEmpty!2533) setIsEmpty!2532))

(assert (= (and b!527004 (not condSetEmpty!2533)) setNonEmpty!2532))

(assert (= setNonEmpty!2532 b!527005))

(assert (= (and mapNonEmpty!2321 ((_ is Cons!4957) mapValue!2321)) b!527004))

(assert (= b!527006 b!527008))

(assert (= (and b!527006 condSetEmpty!2532) setIsEmpty!2533))

(assert (= (and b!527006 (not condSetEmpty!2532)) setNonEmpty!2533))

(assert (= setNonEmpty!2533 b!527007))

(assert (= (and mapNonEmpty!2312 ((_ is Cons!4957) mapDefault!2321)) b!527006))

(declare-fun m!772715 () Bool)

(assert (=> b!527006 m!772715))

(declare-fun m!772717 () Bool)

(assert (=> mapNonEmpty!2321 m!772717))

(declare-fun m!772719 () Bool)

(assert (=> b!527004 m!772719))

(declare-fun m!772721 () Bool)

(assert (=> setNonEmpty!2533 m!772721))

(declare-fun m!772723 () Bool)

(assert (=> setNonEmpty!2532 m!772723))

(declare-fun setIsEmpty!2536 () Bool)

(declare-fun setRes!2536 () Bool)

(assert (=> setIsEmpty!2536 setRes!2536))

(declare-fun b!527018 () Bool)

(declare-fun e!316828 () Bool)

(declare-fun tp!166748 () Bool)

(assert (=> b!527018 (= e!316828 tp!166748)))

(declare-fun e!316829 () Bool)

(assert (=> mapNonEmpty!2312 (= tp!166587 e!316829)))

(declare-fun b!527019 () Bool)

(declare-fun tp!166744 () Bool)

(declare-fun tp!166746 () Bool)

(assert (=> b!527019 (= e!316829 (and tp!166746 (inv!6220 (_2!3307 (_1!3308 (h!10358 mapValue!2310)))) e!316828 tp_is_empty!2797 setRes!2536 tp!166744))))

(declare-fun condSetEmpty!2536 () Bool)

(assert (=> b!527019 (= condSetEmpty!2536 (= (_2!3308 (h!10358 mapValue!2310)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527020 () Bool)

(declare-fun e!316827 () Bool)

(declare-fun tp!166747 () Bool)

(assert (=> b!527020 (= e!316827 tp!166747)))

(declare-fun setElem!2536 () Context!314)

(declare-fun setNonEmpty!2536 () Bool)

(declare-fun tp!166745 () Bool)

(assert (=> setNonEmpty!2536 (= setRes!2536 (and tp!166745 (inv!6220 setElem!2536) e!316827))))

(declare-fun setRest!2536 () (InoxSet Context!314))

(assert (=> setNonEmpty!2536 (= (_2!3308 (h!10358 mapValue!2310)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2536 true) setRest!2536))))

(assert (= b!527019 b!527018))

(assert (= (and b!527019 condSetEmpty!2536) setIsEmpty!2536))

(assert (= (and b!527019 (not condSetEmpty!2536)) setNonEmpty!2536))

(assert (= setNonEmpty!2536 b!527020))

(assert (= (and mapNonEmpty!2312 ((_ is Cons!4957) mapValue!2310)) b!527019))

(declare-fun m!772725 () Bool)

(assert (=> b!527019 m!772725))

(declare-fun m!772727 () Bool)

(assert (=> setNonEmpty!2536 m!772727))

(declare-fun setIsEmpty!2537 () Bool)

(declare-fun setRes!2537 () Bool)

(assert (=> setIsEmpty!2537 setRes!2537))

(declare-fun b!527021 () Bool)

(declare-fun e!316831 () Bool)

(declare-fun tp!166753 () Bool)

(assert (=> b!527021 (= e!316831 tp!166753)))

(declare-fun e!316832 () Bool)

(assert (=> b!526871 (= tp!166596 e!316832)))

(declare-fun tp!166749 () Bool)

(declare-fun b!527022 () Bool)

(declare-fun tp!166751 () Bool)

(assert (=> b!527022 (= e!316832 (and tp!166751 (inv!6220 (_2!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))) e!316831 tp_is_empty!2797 setRes!2537 tp!166749))))

(declare-fun condSetEmpty!2537 () Bool)

(assert (=> b!527022 (= condSetEmpty!2537 (= (_2!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527023 () Bool)

(declare-fun e!316830 () Bool)

(declare-fun tp!166752 () Bool)

(assert (=> b!527023 (= e!316830 tp!166752)))

(declare-fun tp!166750 () Bool)

(declare-fun setNonEmpty!2537 () Bool)

(declare-fun setElem!2537 () Context!314)

(assert (=> setNonEmpty!2537 (= setRes!2537 (and tp!166750 (inv!6220 setElem!2537) e!316830))))

(declare-fun setRest!2537 () (InoxSet Context!314))

(assert (=> setNonEmpty!2537 (= (_2!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2537 true) setRest!2537))))

(assert (= b!527022 b!527021))

(assert (= (and b!527022 condSetEmpty!2537) setIsEmpty!2537))

(assert (= (and b!527022 (not condSetEmpty!2537)) setNonEmpty!2537))

(assert (= setNonEmpty!2537 b!527023))

(assert (= (and b!526871 ((_ is Cons!4957) (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))) b!527022))

(declare-fun m!772729 () Bool)

(assert (=> b!527022 m!772729))

(declare-fun m!772731 () Bool)

(assert (=> setNonEmpty!2537 m!772731))

(declare-fun setIsEmpty!2538 () Bool)

(declare-fun setRes!2538 () Bool)

(assert (=> setIsEmpty!2538 setRes!2538))

(declare-fun b!527024 () Bool)

(declare-fun e!316834 () Bool)

(declare-fun tp!166758 () Bool)

(assert (=> b!527024 (= e!316834 tp!166758)))

(declare-fun e!316835 () Bool)

(assert (=> b!526871 (= tp!166575 e!316835)))

(declare-fun tp!166754 () Bool)

(declare-fun b!527025 () Bool)

(declare-fun tp!166756 () Bool)

(assert (=> b!527025 (= e!316835 (and tp!166756 (inv!6220 (_2!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))) e!316834 tp_is_empty!2797 setRes!2538 tp!166754))))

(declare-fun condSetEmpty!2538 () Bool)

(assert (=> b!527025 (= condSetEmpty!2538 (= (_2!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527026 () Bool)

(declare-fun e!316833 () Bool)

(declare-fun tp!166757 () Bool)

(assert (=> b!527026 (= e!316833 tp!166757)))

(declare-fun setNonEmpty!2538 () Bool)

(declare-fun setElem!2538 () Context!314)

(declare-fun tp!166755 () Bool)

(assert (=> setNonEmpty!2538 (= setRes!2538 (and tp!166755 (inv!6220 setElem!2538) e!316833))))

(declare-fun setRest!2538 () (InoxSet Context!314))

(assert (=> setNonEmpty!2538 (= (_2!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2538 true) setRest!2538))))

(assert (= b!527025 b!527024))

(assert (= (and b!527025 condSetEmpty!2538) setIsEmpty!2538))

(assert (= (and b!527025 (not condSetEmpty!2538)) setNonEmpty!2538))

(assert (= setNonEmpty!2538 b!527026))

(assert (= (and b!526871 ((_ is Cons!4957) (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))) b!527025))

(declare-fun m!772733 () Bool)

(assert (=> b!527025 m!772733))

(declare-fun m!772735 () Bool)

(assert (=> setNonEmpty!2538 m!772735))

(declare-fun setIsEmpty!2539 () Bool)

(declare-fun setRes!2539 () Bool)

(assert (=> setIsEmpty!2539 setRes!2539))

(declare-fun b!527027 () Bool)

(declare-fun e!316836 () Bool)

(declare-fun tp!166759 () Bool)

(assert (=> b!527027 (= e!316836 tp!166759)))

(declare-fun b!527028 () Bool)

(declare-fun tp!166760 () Bool)

(declare-fun e!316838 () Bool)

(assert (=> b!527028 (= e!316838 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 mapDefault!2310)))) e!316836 tp_is_empty!2797 setRes!2539 tp!166760))))

(declare-fun condSetEmpty!2539 () Bool)

(assert (=> b!527028 (= condSetEmpty!2539 (= (_2!3310 (h!10361 mapDefault!2310)) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526872 (= tp!166581 e!316838)))

(declare-fun b!527029 () Bool)

(declare-fun e!316837 () Bool)

(declare-fun tp!166761 () Bool)

(assert (=> b!527029 (= e!316837 tp!166761)))

(declare-fun setNonEmpty!2539 () Bool)

(declare-fun setElem!2539 () Context!314)

(declare-fun tp!166762 () Bool)

(assert (=> setNonEmpty!2539 (= setRes!2539 (and tp!166762 (inv!6220 setElem!2539) e!316837))))

(declare-fun setRest!2539 () (InoxSet Context!314))

(assert (=> setNonEmpty!2539 (= (_2!3310 (h!10361 mapDefault!2310)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2539 true) setRest!2539))))

(assert (= b!527028 b!527027))

(assert (= (and b!527028 condSetEmpty!2539) setIsEmpty!2539))

(assert (= (and b!527028 (not condSetEmpty!2539)) setNonEmpty!2539))

(assert (= setNonEmpty!2539 b!527029))

(assert (= (and b!526872 ((_ is Cons!4960) mapDefault!2310)) b!527028))

(declare-fun m!772737 () Bool)

(assert (=> b!527028 m!772737))

(declare-fun m!772739 () Bool)

(assert (=> setNonEmpty!2539 m!772739))

(declare-fun b!527040 () Bool)

(declare-fun b_free!14009 () Bool)

(declare-fun b_next!14025 () Bool)

(assert (=> b!527040 (= b_free!14009 (not b_next!14025))))

(declare-fun tp!166773 () Bool)

(declare-fun b_and!51503 () Bool)

(assert (=> b!527040 (= tp!166773 b_and!51503)))

(declare-fun b_free!14011 () Bool)

(declare-fun b_next!14027 () Bool)

(assert (=> b!527040 (= b_free!14011 (not b_next!14027))))

(declare-fun tp!166771 () Bool)

(declare-fun b_and!51505 () Bool)

(assert (=> b!527040 (= tp!166771 b_and!51505)))

(declare-fun e!316849 () Bool)

(assert (=> b!527040 (= e!316849 (and tp!166773 tp!166771))))

(declare-fun e!316847 () Bool)

(declare-fun tp!166774 () Bool)

(declare-fun b!527039 () Bool)

(assert (=> b!527039 (= e!316847 (and tp!166774 (inv!6211 (tag!1154 (h!10360 (t!73579 rules!1345)))) (inv!6217 (transformation!892 (h!10360 (t!73579 rules!1345)))) e!316849))))

(declare-fun b!527038 () Bool)

(declare-fun e!316850 () Bool)

(declare-fun tp!166772 () Bool)

(assert (=> b!527038 (= e!316850 (and e!316847 tp!166772))))

(assert (=> b!526845 (= tp!166573 e!316850)))

(assert (= b!527039 b!527040))

(assert (= b!527038 b!527039))

(assert (= (and b!526845 ((_ is Cons!4959) (t!73579 rules!1345))) b!527038))

(declare-fun m!772741 () Bool)

(assert (=> b!527039 m!772741))

(declare-fun m!772743 () Bool)

(assert (=> b!527039 m!772743))

(declare-fun b!527041 () Bool)

(declare-fun e!316852 () Bool)

(declare-fun tp!166775 () Bool)

(declare-fun tp!166777 () Bool)

(assert (=> b!527041 (= e!316852 (and (inv!6212 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) tp!166775 (inv!6212 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) tp!166777))))

(declare-fun b!527043 () Bool)

(declare-fun e!316851 () Bool)

(declare-fun tp!166776 () Bool)

(assert (=> b!527043 (= e!316851 tp!166776)))

(declare-fun b!527042 () Bool)

(assert (=> b!527042 (= e!316852 (and (inv!6221 (xs!4244 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) e!316851))))

(assert (=> b!526854 (= tp!166590 (and (inv!6212 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) e!316852))))

(assert (= (and b!526854 ((_ is Node!1607) (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) b!527041))

(assert (= b!527042 b!527043))

(assert (= (and b!526854 ((_ is Leaf!2557) (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) b!527042))

(declare-fun m!772745 () Bool)

(assert (=> b!527041 m!772745))

(declare-fun m!772747 () Bool)

(assert (=> b!527041 m!772747))

(declare-fun m!772749 () Bool)

(assert (=> b!527042 m!772749))

(assert (=> b!526854 m!772599))

(declare-fun setIsEmpty!2540 () Bool)

(declare-fun setRes!2540 () Bool)

(assert (=> setIsEmpty!2540 setRes!2540))

(declare-fun b!527044 () Bool)

(declare-fun e!316854 () Bool)

(declare-fun tp!166782 () Bool)

(assert (=> b!527044 (= e!316854 tp!166782)))

(declare-fun e!316855 () Bool)

(assert (=> b!526873 (= tp!166593 e!316855)))

(declare-fun tp!166780 () Bool)

(declare-fun tp!166778 () Bool)

(declare-fun b!527045 () Bool)

(assert (=> b!527045 (= e!316855 (and tp!166780 (inv!6220 (_2!3307 (_1!3308 (h!10358 mapDefault!2311)))) e!316854 tp_is_empty!2797 setRes!2540 tp!166778))))

(declare-fun condSetEmpty!2540 () Bool)

(assert (=> b!527045 (= condSetEmpty!2540 (= (_2!3308 (h!10358 mapDefault!2311)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527046 () Bool)

(declare-fun e!316853 () Bool)

(declare-fun tp!166781 () Bool)

(assert (=> b!527046 (= e!316853 tp!166781)))

(declare-fun setNonEmpty!2540 () Bool)

(declare-fun tp!166779 () Bool)

(declare-fun setElem!2540 () Context!314)

(assert (=> setNonEmpty!2540 (= setRes!2540 (and tp!166779 (inv!6220 setElem!2540) e!316853))))

(declare-fun setRest!2540 () (InoxSet Context!314))

(assert (=> setNonEmpty!2540 (= (_2!3308 (h!10358 mapDefault!2311)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2540 true) setRest!2540))))

(assert (= b!527045 b!527044))

(assert (= (and b!527045 condSetEmpty!2540) setIsEmpty!2540))

(assert (= (and b!527045 (not condSetEmpty!2540)) setNonEmpty!2540))

(assert (= setNonEmpty!2540 b!527046))

(assert (= (and b!526873 ((_ is Cons!4957) mapDefault!2311)) b!527045))

(declare-fun m!772751 () Bool)

(assert (=> b!527045 m!772751))

(declare-fun m!772753 () Bool)

(assert (=> setNonEmpty!2540 m!772753))

(declare-fun setRes!2541 () Bool)

(declare-fun tp!166783 () Bool)

(declare-fun setElem!2541 () Context!314)

(declare-fun e!316856 () Bool)

(declare-fun setNonEmpty!2541 () Bool)

(assert (=> setNonEmpty!2541 (= setRes!2541 (and tp!166783 (inv!6220 setElem!2541) e!316856))))

(declare-fun setRest!2541 () (InoxSet Context!314))

(assert (=> setNonEmpty!2541 (= (_1!3305 (_1!3306 (h!10357 (zeroValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2541 true) setRest!2541))))

(declare-fun b!527047 () Bool)

(declare-fun e!316857 () Bool)

(declare-fun tp!166784 () Bool)

(assert (=> b!527047 (= e!316857 (and setRes!2541 tp!166784))))

(declare-fun condSetEmpty!2541 () Bool)

(assert (=> b!527047 (= condSetEmpty!2541 (= (_1!3305 (_1!3306 (h!10357 (zeroValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526863 (= tp!166592 e!316857)))

(declare-fun setIsEmpty!2541 () Bool)

(assert (=> setIsEmpty!2541 setRes!2541))

(declare-fun b!527048 () Bool)

(declare-fun tp!166785 () Bool)

(assert (=> b!527048 (= e!316856 tp!166785)))

(assert (= (and b!527047 condSetEmpty!2541) setIsEmpty!2541))

(assert (= (and b!527047 (not condSetEmpty!2541)) setNonEmpty!2541))

(assert (= setNonEmpty!2541 b!527048))

(assert (= (and b!526863 ((_ is Cons!4956) (zeroValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56)))))))) b!527047))

(declare-fun m!772755 () Bool)

(assert (=> setNonEmpty!2541 m!772755))

(declare-fun setRes!2542 () Bool)

(declare-fun setElem!2542 () Context!314)

(declare-fun setNonEmpty!2542 () Bool)

(declare-fun tp!166786 () Bool)

(declare-fun e!316858 () Bool)

(assert (=> setNonEmpty!2542 (= setRes!2542 (and tp!166786 (inv!6220 setElem!2542) e!316858))))

(declare-fun setRest!2542 () (InoxSet Context!314))

(assert (=> setNonEmpty!2542 (= (_1!3305 (_1!3306 (h!10357 (minValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2542 true) setRest!2542))))

(declare-fun b!527049 () Bool)

(declare-fun e!316859 () Bool)

(declare-fun tp!166787 () Bool)

(assert (=> b!527049 (= e!316859 (and setRes!2542 tp!166787))))

(declare-fun condSetEmpty!2542 () Bool)

(assert (=> b!527049 (= condSetEmpty!2542 (= (_1!3305 (_1!3306 (h!10357 (minValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526863 (= tp!166582 e!316859)))

(declare-fun setIsEmpty!2542 () Bool)

(assert (=> setIsEmpty!2542 setRes!2542))

(declare-fun b!527050 () Bool)

(declare-fun tp!166788 () Bool)

(assert (=> b!527050 (= e!316858 tp!166788)))

(assert (= (and b!527049 condSetEmpty!2542) setIsEmpty!2542))

(assert (= (and b!527049 (not condSetEmpty!2542)) setNonEmpty!2542))

(assert (= setNonEmpty!2542 b!527050))

(assert (= (and b!526863 ((_ is Cons!4956) (minValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56)))))))) b!527049))

(declare-fun m!772757 () Bool)

(assert (=> setNonEmpty!2542 m!772757))

(check-sat (not b!527029) (not b!527044) (not b!526911) b_and!51505 (not setNonEmpty!2539) (not b!526957) (not b!526971) b_and!51489 (not b!527047) (not b!527039) (not b_next!14015) (not setNonEmpty!2518) (not b!526958) (not b!527028) (not setNonEmpty!2542) (not b!526921) b_and!51495 (not b!526988) (not mapNonEmpty!2318) b_and!51487 (not setNonEmpty!2541) (not setNonEmpty!2512) (not b_next!14027) (not b!527009) (not setNonEmpty!2540) (not b!526903) (not b!527007) (not d!187512) (not b!526901) (not setNonEmpty!2509) (not b_next!14017) (not d!187530) (not b!526882) (not b!526947) (not b_next!14011) (not b_next!14013) (not b!527022) (not b!527042) (not d!187532) (not b!526970) (not b!526942) (not b!527006) (not mapNonEmpty!2315) (not b!527018) b_and!51491 (not setNonEmpty!2533) (not b!526922) (not b_next!14019) (not b!527025) (not b!527049) (not b!526974) (not b!527043) (not b!526959) (not b!526943) (not b!527026) (not b_next!14009) (not setNonEmpty!2519) (not b!526924) (not d!187520) (not b!527021) (not setNonEmpty!2520) (not mapNonEmpty!2321) (not setNonEmpty!2536) (not b!526975) (not b!527045) (not b!527020) (not b!526948) b_and!51499 (not b!527019) (not b!526989) (not b!526923) (not b!526946) (not b!526879) (not b!526940) (not b!527005) (not d!187506) (not b!527048) (not b!526892) (not b!526894) (not d!187522) (not d!187498) (not b!526849) (not b!526900) (not b!527046) (not d!187518) (not b!527024) (not b!526920) (not b!526945) (not b!526854) b_and!51493 (not b!526910) (not b!527027) b_and!51503 b_and!51497 (not b!526941) (not b!526885) (not b!526944) (not b!527008) (not setNonEmpty!2525) tp_is_empty!2797 (not b!526973) (not setNonEmpty!2526) (not setNonEmpty!2537) (not b_next!14021) (not b_next!14023) (not b!527050) (not b_next!14025) b_and!51501 (not b!527041) (not setNonEmpty!2538) (not b!526972) (not b!526987) (not b!527038) (not setNonEmpty!2532) (not setNonEmpty!2513) (not setNonEmpty!2527) (not b!527004) (not b!527023) (not b!526925) (not b!526897))
(check-sat b_and!51489 (not b_next!14015) b_and!51495 b_and!51487 (not b_next!14027) (not b_next!14017) b_and!51491 (not b_next!14019) (not b_next!14009) b_and!51499 b_and!51493 b_and!51503 b_and!51505 b_and!51497 (not b_next!14021) (not b_next!14023) (not b_next!14011) (not b_next!14013) (not b_next!14025) b_and!51501)
(get-model)

(declare-fun d!187538 () Bool)

(declare-fun res!222864 () Bool)

(declare-fun e!316864 () Bool)

(assert (=> d!187538 (=> (not res!222864) (not e!316864))))

(declare-fun valid!572 (MutableMap!562) Bool)

(assert (=> d!187538 (= res!222864 (valid!572 (cache!949 cacheDown!462)))))

(assert (=> d!187538 (= (validCacheMapDown!34 (cache!949 cacheDown!462)) e!316864)))

(declare-fun b!527057 () Bool)

(declare-fun res!222865 () Bool)

(assert (=> b!527057 (=> (not res!222865) (not e!316864))))

(declare-fun invariantList!101 (List!4967) Bool)

(declare-datatypes ((ListMap!251 0))(
  ( (ListMap!252 (toList!462 List!4967)) )
))
(declare-fun map!1136 (MutableMap!562) ListMap!251)

(assert (=> b!527057 (= res!222865 (invariantList!101 (toList!462 (map!1136 (cache!949 cacheDown!462)))))))

(declare-fun b!527058 () Bool)

(declare-fun lambda!15242 () Int)

(declare-fun forall!1490 (List!4967 Int) Bool)

(assert (=> b!527058 (= e!316864 (forall!1490 (toList!462 (map!1136 (cache!949 cacheDown!462))) lambda!15242))))

(assert (= (and d!187538 res!222864) b!527057))

(assert (= (and b!527057 res!222865) b!527058))

(declare-fun m!772760 () Bool)

(assert (=> d!187538 m!772760))

(declare-fun m!772762 () Bool)

(assert (=> b!527057 m!772762))

(declare-fun m!772764 () Bool)

(assert (=> b!527057 m!772764))

(assert (=> b!527058 m!772762))

(declare-fun m!772766 () Bool)

(assert (=> b!527058 m!772766))

(assert (=> b!526879 d!187538))

(declare-fun d!187540 () Bool)

(declare-fun res!222870 () Bool)

(declare-fun e!316867 () Bool)

(assert (=> d!187540 (=> (not res!222870) (not e!316867))))

(declare-fun list!2066 (IArray!3215) List!4964)

(assert (=> d!187540 (= res!222870 (<= (size!4044 (list!2066 (xs!4244 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) 512))))

(assert (=> d!187540 (= (inv!6219 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) e!316867)))

(declare-fun b!527063 () Bool)

(declare-fun res!222871 () Bool)

(assert (=> b!527063 (=> (not res!222871) (not e!316867))))

(assert (=> b!527063 (= res!222871 (= (csize!3445 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) (size!4044 (list!2066 (xs!4244 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))))

(declare-fun b!527064 () Bool)

(assert (=> b!527064 (= e!316867 (and (> (csize!3445 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) 0) (<= (csize!3445 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) 512)))))

(assert (= (and d!187540 res!222870) b!527063))

(assert (= (and b!527063 res!222871) b!527064))

(declare-fun m!772768 () Bool)

(assert (=> d!187540 m!772768))

(assert (=> d!187540 m!772768))

(declare-fun m!772770 () Bool)

(assert (=> d!187540 m!772770))

(assert (=> b!527063 m!772768))

(assert (=> b!527063 m!772768))

(assert (=> b!527063 m!772770))

(assert (=> b!526903 d!187540))

(declare-fun b!527070 () Bool)

(assert (=> b!527070 true))

(declare-fun d!187542 () Bool)

(declare-fun res!222876 () Bool)

(declare-fun e!316870 () Bool)

(assert (=> d!187542 (=> (not res!222876) (not e!316870))))

(declare-fun valid!573 (MutableMap!561) Bool)

(assert (=> d!187542 (= res!222876 (valid!573 (cache!948 cacheFurthestNullable!56)))))

(assert (=> d!187542 (= (validCacheMapFurthestNullable!27 (cache!948 cacheFurthestNullable!56) (totalInput!1748 cacheFurthestNullable!56)) e!316870)))

(declare-fun b!527069 () Bool)

(declare-fun res!222877 () Bool)

(assert (=> b!527069 (=> (not res!222877) (not e!316870))))

(declare-fun invariantList!102 (List!4966) Bool)

(declare-datatypes ((ListMap!253 0))(
  ( (ListMap!254 (toList!463 List!4966)) )
))
(declare-fun map!1137 (MutableMap!561) ListMap!253)

(assert (=> b!527069 (= res!222877 (invariantList!102 (toList!463 (map!1137 (cache!948 cacheFurthestNullable!56)))))))

(declare-fun lambda!15245 () Int)

(declare-fun forall!1491 (List!4966 Int) Bool)

(assert (=> b!527070 (= e!316870 (forall!1491 (toList!463 (map!1137 (cache!948 cacheFurthestNullable!56))) lambda!15245))))

(assert (= (and d!187542 res!222876) b!527069))

(assert (= (and b!527069 res!222877) b!527070))

(declare-fun m!772773 () Bool)

(assert (=> d!187542 m!772773))

(declare-fun m!772775 () Bool)

(assert (=> b!527069 m!772775))

(declare-fun m!772777 () Bool)

(assert (=> b!527069 m!772777))

(assert (=> b!527070 m!772775))

(declare-fun m!772779 () Bool)

(assert (=> b!527070 m!772779))

(assert (=> d!187532 d!187542))

(declare-fun d!187544 () Bool)

(assert (=> d!187544 (= (inv!6221 (xs!4244 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) (<= (size!4044 (innerList!1665 (xs!4244 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) 2147483647))))

(declare-fun bs!66068 () Bool)

(assert (= bs!66068 d!187544))

(declare-fun m!772781 () Bool)

(assert (=> bs!66068 m!772781))

(assert (=> b!527042 d!187544))

(declare-fun d!187546 () Bool)

(declare-fun lambda!15248 () Int)

(declare-fun forall!1492 (List!4965 Int) Bool)

(assert (=> d!187546 (= (inv!6220 setElem!2536) (forall!1492 (exprs!657 setElem!2536) lambda!15248))))

(declare-fun bs!66069 () Bool)

(assert (= bs!66069 d!187546))

(declare-fun m!772783 () Bool)

(assert (=> bs!66069 m!772783))

(assert (=> setNonEmpty!2536 d!187546))

(declare-fun d!187548 () Bool)

(assert (=> d!187548 true))

(declare-fun order!4381 () Int)

(declare-fun order!4379 () Int)

(declare-fun lambda!15251 () Int)

(declare-fun dynLambda!3033 (Int Int) Int)

(declare-fun dynLambda!3034 (Int Int) Int)

(assert (=> d!187548 (< (dynLambda!3033 order!4379 (toValue!1727 (transformation!892 (h!10360 rules!1345)))) (dynLambda!3034 order!4381 lambda!15251))))

(declare-fun Forall2!197 (Int) Bool)

(assert (=> d!187548 (= (equivClasses!339 (toChars!1586 (transformation!892 (h!10360 rules!1345))) (toValue!1727 (transformation!892 (h!10360 rules!1345)))) (Forall2!197 lambda!15251))))

(declare-fun bs!66070 () Bool)

(assert (= bs!66070 d!187548))

(declare-fun m!772785 () Bool)

(assert (=> bs!66070 m!772785))

(assert (=> b!526897 d!187548))

(declare-fun bs!66071 () Bool)

(declare-fun d!187550 () Bool)

(assert (= bs!66071 (and d!187550 d!187546)))

(declare-fun lambda!15252 () Int)

(assert (=> bs!66071 (= lambda!15252 lambda!15248)))

(assert (=> d!187550 (= (inv!6220 setElem!2538) (forall!1492 (exprs!657 setElem!2538) lambda!15252))))

(declare-fun bs!66072 () Bool)

(assert (= bs!66072 d!187550))

(declare-fun m!772787 () Bool)

(assert (=> bs!66072 m!772787))

(assert (=> setNonEmpty!2538 d!187550))

(declare-fun d!187552 () Bool)

(declare-fun res!222886 () Bool)

(declare-fun e!316875 () Bool)

(assert (=> d!187552 (=> (not res!222886) (not e!316875))))

(assert (=> d!187552 (= res!222886 (= (csize!3444 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) (+ (size!4045 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) (size!4045 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))))

(assert (=> d!187552 (= (inv!6218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) e!316875)))

(declare-fun b!527083 () Bool)

(declare-fun res!222887 () Bool)

(assert (=> b!527083 (=> (not res!222887) (not e!316875))))

(assert (=> b!527083 (= res!222887 (and (not (= (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) Empty!1607)) (not (= (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) Empty!1607))))))

(declare-fun b!527084 () Bool)

(declare-fun res!222888 () Bool)

(assert (=> b!527084 (=> (not res!222888) (not e!316875))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!251 (Conc!1607) Int)

(assert (=> b!527084 (= res!222888 (= (cheight!1818 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) (+ (max!0 (height!251 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) (height!251 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) 1)))))

(declare-fun b!527085 () Bool)

(assert (=> b!527085 (= e!316875 (<= 0 (cheight!1818 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(assert (= (and d!187552 res!222886) b!527083))

(assert (= (and b!527083 res!222887) b!527084))

(assert (= (and b!527084 res!222888) b!527085))

(declare-fun m!772789 () Bool)

(assert (=> d!187552 m!772789))

(declare-fun m!772791 () Bool)

(assert (=> d!187552 m!772791))

(declare-fun m!772793 () Bool)

(assert (=> b!527084 m!772793))

(declare-fun m!772795 () Bool)

(assert (=> b!527084 m!772795))

(assert (=> b!527084 m!772793))

(assert (=> b!527084 m!772795))

(declare-fun m!772797 () Bool)

(assert (=> b!527084 m!772797))

(assert (=> b!526901 d!187552))

(declare-fun bs!66073 () Bool)

(declare-fun d!187554 () Bool)

(assert (= bs!66073 (and d!187554 d!187546)))

(declare-fun lambda!15253 () Int)

(assert (=> bs!66073 (= lambda!15253 lambda!15248)))

(declare-fun bs!66074 () Bool)

(assert (= bs!66074 (and d!187554 d!187550)))

(assert (=> bs!66074 (= lambda!15253 lambda!15252)))

(assert (=> d!187554 (= (inv!6220 setElem!2537) (forall!1492 (exprs!657 setElem!2537) lambda!15253))))

(declare-fun bs!66075 () Bool)

(assert (= bs!66075 d!187554))

(declare-fun m!772799 () Bool)

(assert (=> bs!66075 m!772799))

(assert (=> setNonEmpty!2537 d!187554))

(declare-fun d!187556 () Bool)

(declare-fun res!222889 () Bool)

(declare-fun e!316876 () Bool)

(assert (=> d!187556 (=> (not res!222889) (not e!316876))))

(assert (=> d!187556 (= res!222889 (<= (size!4044 (list!2066 (xs!4244 (c!101075 input!747)))) 512))))

(assert (=> d!187556 (= (inv!6219 (c!101075 input!747)) e!316876)))

(declare-fun b!527086 () Bool)

(declare-fun res!222890 () Bool)

(assert (=> b!527086 (=> (not res!222890) (not e!316876))))

(assert (=> b!527086 (= res!222890 (= (csize!3445 (c!101075 input!747)) (size!4044 (list!2066 (xs!4244 (c!101075 input!747))))))))

(declare-fun b!527087 () Bool)

(assert (=> b!527087 (= e!316876 (and (> (csize!3445 (c!101075 input!747)) 0) (<= (csize!3445 (c!101075 input!747)) 512)))))

(assert (= (and d!187556 res!222889) b!527086))

(assert (= (and b!527086 res!222890) b!527087))

(declare-fun m!772801 () Bool)

(assert (=> d!187556 m!772801))

(assert (=> d!187556 m!772801))

(declare-fun m!772803 () Bool)

(assert (=> d!187556 m!772803))

(assert (=> b!527086 m!772801))

(assert (=> b!527086 m!772801))

(assert (=> b!527086 m!772803))

(assert (=> b!526894 d!187556))

(declare-fun bs!66076 () Bool)

(declare-fun d!187558 () Bool)

(assert (= bs!66076 (and d!187558 d!187546)))

(declare-fun lambda!15254 () Int)

(assert (=> bs!66076 (= lambda!15254 lambda!15248)))

(declare-fun bs!66077 () Bool)

(assert (= bs!66077 (and d!187558 d!187550)))

(assert (=> bs!66077 (= lambda!15254 lambda!15252)))

(declare-fun bs!66078 () Bool)

(assert (= bs!66078 (and d!187558 d!187554)))

(assert (=> bs!66078 (= lambda!15254 lambda!15253)))

(assert (=> d!187558 (= (inv!6220 (_2!3307 (_1!3308 (h!10358 mapValue!2310)))) (forall!1492 (exprs!657 (_2!3307 (_1!3308 (h!10358 mapValue!2310)))) lambda!15254))))

(declare-fun bs!66079 () Bool)

(assert (= bs!66079 d!187558))

(declare-fun m!772805 () Bool)

(assert (=> bs!66079 m!772805))

(assert (=> b!527019 d!187558))

(declare-fun d!187560 () Bool)

(declare-fun res!222895 () Bool)

(declare-fun e!316881 () Bool)

(assert (=> d!187560 (=> res!222895 e!316881)))

(assert (=> d!187560 (= res!222895 ((_ is Nil!4959) rules!1345))))

(assert (=> d!187560 (= (noDuplicateTag!321 thiss!12147 rules!1345 Nil!4961) e!316881)))

(declare-fun b!527092 () Bool)

(declare-fun e!316882 () Bool)

(assert (=> b!527092 (= e!316881 e!316882)))

(declare-fun res!222896 () Bool)

(assert (=> b!527092 (=> (not res!222896) (not e!316882))))

(declare-fun contains!1174 (List!4971 String!6310) Bool)

(assert (=> b!527092 (= res!222896 (not (contains!1174 Nil!4961 (tag!1154 (h!10360 rules!1345)))))))

(declare-fun b!527093 () Bool)

(assert (=> b!527093 (= e!316882 (noDuplicateTag!321 thiss!12147 (t!73579 rules!1345) (Cons!4961 (tag!1154 (h!10360 rules!1345)) Nil!4961)))))

(assert (= (and d!187560 (not res!222895)) b!527092))

(assert (= (and b!527092 res!222896) b!527093))

(declare-fun m!772807 () Bool)

(assert (=> b!527092 m!772807))

(declare-fun m!772809 () Bool)

(assert (=> b!527093 m!772809))

(assert (=> b!526900 d!187560))

(declare-fun bs!66080 () Bool)

(declare-fun d!187562 () Bool)

(assert (= bs!66080 (and d!187562 d!187546)))

(declare-fun lambda!15255 () Int)

(assert (=> bs!66080 (= lambda!15255 lambda!15248)))

(declare-fun bs!66081 () Bool)

(assert (= bs!66081 (and d!187562 d!187550)))

(assert (=> bs!66081 (= lambda!15255 lambda!15252)))

(declare-fun bs!66082 () Bool)

(assert (= bs!66082 (and d!187562 d!187554)))

(assert (=> bs!66082 (= lambda!15255 lambda!15253)))

(declare-fun bs!66083 () Bool)

(assert (= bs!66083 (and d!187562 d!187558)))

(assert (=> bs!66083 (= lambda!15255 lambda!15254)))

(assert (=> d!187562 (= (inv!6220 setElem!2541) (forall!1492 (exprs!657 setElem!2541) lambda!15255))))

(declare-fun bs!66084 () Bool)

(assert (= bs!66084 d!187562))

(declare-fun m!772811 () Bool)

(assert (=> bs!66084 m!772811))

(assert (=> setNonEmpty!2541 d!187562))

(declare-fun bs!66085 () Bool)

(declare-fun d!187564 () Bool)

(assert (= bs!66085 (and d!187564 d!187554)))

(declare-fun lambda!15256 () Int)

(assert (=> bs!66085 (= lambda!15256 lambda!15253)))

(declare-fun bs!66086 () Bool)

(assert (= bs!66086 (and d!187564 d!187558)))

(assert (=> bs!66086 (= lambda!15256 lambda!15254)))

(declare-fun bs!66087 () Bool)

(assert (= bs!66087 (and d!187564 d!187546)))

(assert (=> bs!66087 (= lambda!15256 lambda!15248)))

(declare-fun bs!66088 () Bool)

(assert (= bs!66088 (and d!187564 d!187562)))

(assert (=> bs!66088 (= lambda!15256 lambda!15255)))

(declare-fun bs!66089 () Bool)

(assert (= bs!66089 (and d!187564 d!187550)))

(assert (=> bs!66089 (= lambda!15256 lambda!15252)))

(assert (=> d!187564 (= (inv!6220 (_2!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))) (forall!1492 (exprs!657 (_2!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))) lambda!15256))))

(declare-fun bs!66090 () Bool)

(assert (= bs!66090 d!187564))

(declare-fun m!772813 () Bool)

(assert (=> bs!66090 m!772813))

(assert (=> b!527025 d!187564))

(declare-fun bs!66091 () Bool)

(declare-fun d!187566 () Bool)

(assert (= bs!66091 (and d!187566 d!187554)))

(declare-fun lambda!15257 () Int)

(assert (=> bs!66091 (= lambda!15257 lambda!15253)))

(declare-fun bs!66092 () Bool)

(assert (= bs!66092 (and d!187566 d!187558)))

(assert (=> bs!66092 (= lambda!15257 lambda!15254)))

(declare-fun bs!66093 () Bool)

(assert (= bs!66093 (and d!187566 d!187546)))

(assert (=> bs!66093 (= lambda!15257 lambda!15248)))

(declare-fun bs!66094 () Bool)

(assert (= bs!66094 (and d!187566 d!187562)))

(assert (=> bs!66094 (= lambda!15257 lambda!15255)))

(declare-fun bs!66095 () Bool)

(assert (= bs!66095 (and d!187566 d!187550)))

(assert (=> bs!66095 (= lambda!15257 lambda!15252)))

(declare-fun bs!66096 () Bool)

(assert (= bs!66096 (and d!187566 d!187564)))

(assert (=> bs!66096 (= lambda!15257 lambda!15256)))

(assert (=> d!187566 (= (inv!6220 (_2!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))) (forall!1492 (exprs!657 (_2!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))) lambda!15257))))

(declare-fun bs!66097 () Bool)

(assert (= bs!66097 d!187566))

(declare-fun m!772815 () Bool)

(assert (=> bs!66097 m!772815))

(assert (=> b!527022 d!187566))

(declare-fun d!187568 () Bool)

(declare-fun res!222897 () Bool)

(declare-fun e!316883 () Bool)

(assert (=> d!187568 (=> (not res!222897) (not e!316883))))

(assert (=> d!187568 (= res!222897 (= (csize!3444 (c!101075 input!747)) (+ (size!4045 (left!4218 (c!101075 input!747))) (size!4045 (right!4548 (c!101075 input!747))))))))

(assert (=> d!187568 (= (inv!6218 (c!101075 input!747)) e!316883)))

(declare-fun b!527094 () Bool)

(declare-fun res!222898 () Bool)

(assert (=> b!527094 (=> (not res!222898) (not e!316883))))

(assert (=> b!527094 (= res!222898 (and (not (= (left!4218 (c!101075 input!747)) Empty!1607)) (not (= (right!4548 (c!101075 input!747)) Empty!1607))))))

(declare-fun b!527095 () Bool)

(declare-fun res!222899 () Bool)

(assert (=> b!527095 (=> (not res!222899) (not e!316883))))

(assert (=> b!527095 (= res!222899 (= (cheight!1818 (c!101075 input!747)) (+ (max!0 (height!251 (left!4218 (c!101075 input!747))) (height!251 (right!4548 (c!101075 input!747)))) 1)))))

(declare-fun b!527096 () Bool)

(assert (=> b!527096 (= e!316883 (<= 0 (cheight!1818 (c!101075 input!747))))))

(assert (= (and d!187568 res!222897) b!527094))

(assert (= (and b!527094 res!222898) b!527095))

(assert (= (and b!527095 res!222899) b!527096))

(declare-fun m!772817 () Bool)

(assert (=> d!187568 m!772817))

(declare-fun m!772819 () Bool)

(assert (=> d!187568 m!772819))

(declare-fun m!772821 () Bool)

(assert (=> b!527095 m!772821))

(declare-fun m!772823 () Bool)

(assert (=> b!527095 m!772823))

(assert (=> b!527095 m!772821))

(assert (=> b!527095 m!772823))

(declare-fun m!772825 () Bool)

(assert (=> b!527095 m!772825))

(assert (=> b!526892 d!187568))

(declare-fun d!187570 () Bool)

(declare-fun res!222904 () Bool)

(declare-fun e!316886 () Bool)

(assert (=> d!187570 (=> (not res!222904) (not e!316886))))

(declare-fun valid!574 (MutableMap!563) Bool)

(assert (=> d!187570 (= res!222904 (valid!574 (cache!950 cacheUp!449)))))

(assert (=> d!187570 (= (validCacheMapUp!37 (cache!950 cacheUp!449)) e!316886)))

(declare-fun b!527101 () Bool)

(declare-fun res!222905 () Bool)

(assert (=> b!527101 (=> (not res!222905) (not e!316886))))

(declare-fun invariantList!103 (List!4970) Bool)

(declare-datatypes ((ListMap!255 0))(
  ( (ListMap!256 (toList!464 List!4970)) )
))
(declare-fun map!1138 (MutableMap!563) ListMap!255)

(assert (=> b!527101 (= res!222905 (invariantList!103 (toList!464 (map!1138 (cache!950 cacheUp!449)))))))

(declare-fun b!527102 () Bool)

(declare-fun lambda!15260 () Int)

(declare-fun forall!1493 (List!4970 Int) Bool)

(assert (=> b!527102 (= e!316886 (forall!1493 (toList!464 (map!1138 (cache!950 cacheUp!449))) lambda!15260))))

(assert (= (and d!187570 res!222904) b!527101))

(assert (= (and b!527101 res!222905) b!527102))

(declare-fun m!772828 () Bool)

(assert (=> d!187570 m!772828))

(declare-fun m!772830 () Bool)

(assert (=> b!527101 m!772830))

(declare-fun m!772832 () Bool)

(assert (=> b!527101 m!772832))

(assert (=> b!527102 m!772830))

(declare-fun m!772834 () Bool)

(assert (=> b!527102 m!772834))

(assert (=> d!187506 d!187570))

(declare-fun bs!66098 () Bool)

(declare-fun d!187572 () Bool)

(assert (= bs!66098 (and d!187572 d!187554)))

(declare-fun lambda!15261 () Int)

(assert (=> bs!66098 (= lambda!15261 lambda!15253)))

(declare-fun bs!66099 () Bool)

(assert (= bs!66099 (and d!187572 d!187558)))

(assert (=> bs!66099 (= lambda!15261 lambda!15254)))

(declare-fun bs!66100 () Bool)

(assert (= bs!66100 (and d!187572 d!187546)))

(assert (=> bs!66100 (= lambda!15261 lambda!15248)))

(declare-fun bs!66101 () Bool)

(assert (= bs!66101 (and d!187572 d!187562)))

(assert (=> bs!66101 (= lambda!15261 lambda!15255)))

(declare-fun bs!66102 () Bool)

(assert (= bs!66102 (and d!187572 d!187550)))

(assert (=> bs!66102 (= lambda!15261 lambda!15252)))

(declare-fun bs!66103 () Bool)

(assert (= bs!66103 (and d!187572 d!187566)))

(assert (=> bs!66103 (= lambda!15261 lambda!15257)))

(declare-fun bs!66104 () Bool)

(assert (= bs!66104 (and d!187572 d!187564)))

(assert (=> bs!66104 (= lambda!15261 lambda!15256)))

(assert (=> d!187572 (= (inv!6220 setElem!2527) (forall!1492 (exprs!657 setElem!2527) lambda!15261))))

(declare-fun bs!66105 () Bool)

(assert (= bs!66105 d!187572))

(declare-fun m!772836 () Bool)

(assert (=> bs!66105 m!772836))

(assert (=> setNonEmpty!2527 d!187572))

(declare-fun bs!66106 () Bool)

(declare-fun d!187574 () Bool)

(assert (= bs!66106 (and d!187574 d!187554)))

(declare-fun lambda!15262 () Int)

(assert (=> bs!66106 (= lambda!15262 lambda!15253)))

(declare-fun bs!66107 () Bool)

(assert (= bs!66107 (and d!187574 d!187558)))

(assert (=> bs!66107 (= lambda!15262 lambda!15254)))

(declare-fun bs!66108 () Bool)

(assert (= bs!66108 (and d!187574 d!187572)))

(assert (=> bs!66108 (= lambda!15262 lambda!15261)))

(declare-fun bs!66109 () Bool)

(assert (= bs!66109 (and d!187574 d!187546)))

(assert (=> bs!66109 (= lambda!15262 lambda!15248)))

(declare-fun bs!66110 () Bool)

(assert (= bs!66110 (and d!187574 d!187562)))

(assert (=> bs!66110 (= lambda!15262 lambda!15255)))

(declare-fun bs!66111 () Bool)

(assert (= bs!66111 (and d!187574 d!187550)))

(assert (=> bs!66111 (= lambda!15262 lambda!15252)))

(declare-fun bs!66112 () Bool)

(assert (= bs!66112 (and d!187574 d!187566)))

(assert (=> bs!66112 (= lambda!15262 lambda!15257)))

(declare-fun bs!66113 () Bool)

(assert (= bs!66113 (and d!187574 d!187564)))

(assert (=> bs!66113 (= lambda!15262 lambda!15256)))

(assert (=> d!187574 (= (inv!6220 (_2!3307 (_1!3308 (h!10358 mapDefault!2321)))) (forall!1492 (exprs!657 (_2!3307 (_1!3308 (h!10358 mapDefault!2321)))) lambda!15262))))

(declare-fun bs!66114 () Bool)

(assert (= bs!66114 d!187574))

(declare-fun m!772838 () Bool)

(assert (=> bs!66114 m!772838))

(assert (=> b!527006 d!187574))

(declare-fun bs!66115 () Bool)

(declare-fun d!187576 () Bool)

(assert (= bs!66115 (and d!187576 d!187554)))

(declare-fun lambda!15263 () Int)

(assert (=> bs!66115 (= lambda!15263 lambda!15253)))

(declare-fun bs!66116 () Bool)

(assert (= bs!66116 (and d!187576 d!187558)))

(assert (=> bs!66116 (= lambda!15263 lambda!15254)))

(declare-fun bs!66117 () Bool)

(assert (= bs!66117 (and d!187576 d!187572)))

(assert (=> bs!66117 (= lambda!15263 lambda!15261)))

(declare-fun bs!66118 () Bool)

(assert (= bs!66118 (and d!187576 d!187574)))

(assert (=> bs!66118 (= lambda!15263 lambda!15262)))

(declare-fun bs!66119 () Bool)

(assert (= bs!66119 (and d!187576 d!187546)))

(assert (=> bs!66119 (= lambda!15263 lambda!15248)))

(declare-fun bs!66120 () Bool)

(assert (= bs!66120 (and d!187576 d!187562)))

(assert (=> bs!66120 (= lambda!15263 lambda!15255)))

(declare-fun bs!66121 () Bool)

(assert (= bs!66121 (and d!187576 d!187550)))

(assert (=> bs!66121 (= lambda!15263 lambda!15252)))

(declare-fun bs!66122 () Bool)

(assert (= bs!66122 (and d!187576 d!187566)))

(assert (=> bs!66122 (= lambda!15263 lambda!15257)))

(declare-fun bs!66123 () Bool)

(assert (= bs!66123 (and d!187576 d!187564)))

(assert (=> bs!66123 (= lambda!15263 lambda!15256)))

(assert (=> d!187576 (= (inv!6220 (_1!3309 (_1!3310 (h!10361 mapDefault!2315)))) (forall!1492 (exprs!657 (_1!3309 (_1!3310 (h!10361 mapDefault!2315)))) lambda!15263))))

(declare-fun bs!66124 () Bool)

(assert (= bs!66124 d!187576))

(declare-fun m!772840 () Bool)

(assert (=> bs!66124 m!772840))

(assert (=> b!526945 d!187576))

(assert (=> d!187512 d!187538))

(declare-fun bs!66125 () Bool)

(declare-fun d!187578 () Bool)

(assert (= bs!66125 (and d!187578 d!187554)))

(declare-fun lambda!15264 () Int)

(assert (=> bs!66125 (= lambda!15264 lambda!15253)))

(declare-fun bs!66126 () Bool)

(assert (= bs!66126 (and d!187578 d!187558)))

(assert (=> bs!66126 (= lambda!15264 lambda!15254)))

(declare-fun bs!66127 () Bool)

(assert (= bs!66127 (and d!187578 d!187572)))

(assert (=> bs!66127 (= lambda!15264 lambda!15261)))

(declare-fun bs!66128 () Bool)

(assert (= bs!66128 (and d!187578 d!187574)))

(assert (=> bs!66128 (= lambda!15264 lambda!15262)))

(declare-fun bs!66129 () Bool)

(assert (= bs!66129 (and d!187578 d!187576)))

(assert (=> bs!66129 (= lambda!15264 lambda!15263)))

(declare-fun bs!66130 () Bool)

(assert (= bs!66130 (and d!187578 d!187546)))

(assert (=> bs!66130 (= lambda!15264 lambda!15248)))

(declare-fun bs!66131 () Bool)

(assert (= bs!66131 (and d!187578 d!187562)))

(assert (=> bs!66131 (= lambda!15264 lambda!15255)))

(declare-fun bs!66132 () Bool)

(assert (= bs!66132 (and d!187578 d!187550)))

(assert (=> bs!66132 (= lambda!15264 lambda!15252)))

(declare-fun bs!66133 () Bool)

(assert (= bs!66133 (and d!187578 d!187566)))

(assert (=> bs!66133 (= lambda!15264 lambda!15257)))

(declare-fun bs!66134 () Bool)

(assert (= bs!66134 (and d!187578 d!187564)))

(assert (=> bs!66134 (= lambda!15264 lambda!15256)))

(assert (=> d!187578 (= (inv!6220 setElem!2519) (forall!1492 (exprs!657 setElem!2519) lambda!15264))))

(declare-fun bs!66135 () Bool)

(assert (= bs!66135 d!187578))

(declare-fun m!772842 () Bool)

(assert (=> bs!66135 m!772842))

(assert (=> setNonEmpty!2518 d!187578))

(declare-fun bs!66136 () Bool)

(declare-fun d!187580 () Bool)

(assert (= bs!66136 (and d!187580 d!187554)))

(declare-fun lambda!15265 () Int)

(assert (=> bs!66136 (= lambda!15265 lambda!15253)))

(declare-fun bs!66137 () Bool)

(assert (= bs!66137 (and d!187580 d!187558)))

(assert (=> bs!66137 (= lambda!15265 lambda!15254)))

(declare-fun bs!66138 () Bool)

(assert (= bs!66138 (and d!187580 d!187578)))

(assert (=> bs!66138 (= lambda!15265 lambda!15264)))

(declare-fun bs!66139 () Bool)

(assert (= bs!66139 (and d!187580 d!187572)))

(assert (=> bs!66139 (= lambda!15265 lambda!15261)))

(declare-fun bs!66140 () Bool)

(assert (= bs!66140 (and d!187580 d!187574)))

(assert (=> bs!66140 (= lambda!15265 lambda!15262)))

(declare-fun bs!66141 () Bool)

(assert (= bs!66141 (and d!187580 d!187576)))

(assert (=> bs!66141 (= lambda!15265 lambda!15263)))

(declare-fun bs!66142 () Bool)

(assert (= bs!66142 (and d!187580 d!187546)))

(assert (=> bs!66142 (= lambda!15265 lambda!15248)))

(declare-fun bs!66143 () Bool)

(assert (= bs!66143 (and d!187580 d!187562)))

(assert (=> bs!66143 (= lambda!15265 lambda!15255)))

(declare-fun bs!66144 () Bool)

(assert (= bs!66144 (and d!187580 d!187550)))

(assert (=> bs!66144 (= lambda!15265 lambda!15252)))

(declare-fun bs!66145 () Bool)

(assert (= bs!66145 (and d!187580 d!187566)))

(assert (=> bs!66145 (= lambda!15265 lambda!15257)))

(declare-fun bs!66146 () Bool)

(assert (= bs!66146 (and d!187580 d!187564)))

(assert (=> bs!66146 (= lambda!15265 lambda!15256)))

(assert (=> d!187580 (= (inv!6220 (_2!3307 (_1!3308 (h!10358 mapValue!2321)))) (forall!1492 (exprs!657 (_2!3307 (_1!3308 (h!10358 mapValue!2321)))) lambda!15265))))

(declare-fun bs!66147 () Bool)

(assert (= bs!66147 d!187580))

(declare-fun m!772844 () Bool)

(assert (=> bs!66147 m!772844))

(assert (=> b!527004 d!187580))

(declare-fun d!187582 () Bool)

(declare-fun lt!217843 () Int)

(assert (=> d!187582 (>= lt!217843 0)))

(declare-fun e!316889 () Int)

(assert (=> d!187582 (= lt!217843 e!316889)))

(declare-fun c!101082 () Bool)

(assert (=> d!187582 (= c!101082 ((_ is Nil!4954) (list!2065 input!747)))))

(assert (=> d!187582 (= (size!4044 (list!2065 input!747)) lt!217843)))

(declare-fun b!527107 () Bool)

(assert (=> b!527107 (= e!316889 0)))

(declare-fun b!527108 () Bool)

(assert (=> b!527108 (= e!316889 (+ 1 (size!4044 (t!73574 (list!2065 input!747)))))))

(assert (= (and d!187582 c!101082) b!527107))

(assert (= (and d!187582 (not c!101082)) b!527108))

(declare-fun m!772846 () Bool)

(assert (=> b!527108 m!772846))

(assert (=> d!187530 d!187582))

(declare-fun d!187584 () Bool)

(declare-fun list!2067 (Conc!1607) List!4964)

(assert (=> d!187584 (= (list!2065 input!747) (list!2067 (c!101075 input!747)))))

(declare-fun bs!66148 () Bool)

(assert (= bs!66148 d!187584))

(declare-fun m!772848 () Bool)

(assert (=> bs!66148 m!772848))

(assert (=> d!187530 d!187584))

(declare-fun d!187586 () Bool)

(declare-fun lt!217846 () Int)

(assert (=> d!187586 (= lt!217846 (size!4044 (list!2067 (c!101075 input!747))))))

(assert (=> d!187586 (= lt!217846 (ite ((_ is Empty!1607) (c!101075 input!747)) 0 (ite ((_ is Leaf!2557) (c!101075 input!747)) (csize!3445 (c!101075 input!747)) (csize!3444 (c!101075 input!747)))))))

(assert (=> d!187586 (= (size!4045 (c!101075 input!747)) lt!217846)))

(declare-fun bs!66149 () Bool)

(assert (= bs!66149 d!187586))

(assert (=> bs!66149 m!772848))

(assert (=> bs!66149 m!772848))

(declare-fun m!772850 () Bool)

(assert (=> bs!66149 m!772850))

(assert (=> d!187530 d!187586))

(declare-fun bs!66150 () Bool)

(declare-fun d!187588 () Bool)

(assert (= bs!66150 (and d!187588 d!187554)))

(declare-fun lambda!15266 () Int)

(assert (=> bs!66150 (= lambda!15266 lambda!15253)))

(declare-fun bs!66151 () Bool)

(assert (= bs!66151 (and d!187588 d!187558)))

(assert (=> bs!66151 (= lambda!15266 lambda!15254)))

(declare-fun bs!66152 () Bool)

(assert (= bs!66152 (and d!187588 d!187578)))

(assert (=> bs!66152 (= lambda!15266 lambda!15264)))

(declare-fun bs!66153 () Bool)

(assert (= bs!66153 (and d!187588 d!187572)))

(assert (=> bs!66153 (= lambda!15266 lambda!15261)))

(declare-fun bs!66154 () Bool)

(assert (= bs!66154 (and d!187588 d!187574)))

(assert (=> bs!66154 (= lambda!15266 lambda!15262)))

(declare-fun bs!66155 () Bool)

(assert (= bs!66155 (and d!187588 d!187576)))

(assert (=> bs!66155 (= lambda!15266 lambda!15263)))

(declare-fun bs!66156 () Bool)

(assert (= bs!66156 (and d!187588 d!187546)))

(assert (=> bs!66156 (= lambda!15266 lambda!15248)))

(declare-fun bs!66157 () Bool)

(assert (= bs!66157 (and d!187588 d!187562)))

(assert (=> bs!66157 (= lambda!15266 lambda!15255)))

(declare-fun bs!66158 () Bool)

(assert (= bs!66158 (and d!187588 d!187580)))

(assert (=> bs!66158 (= lambda!15266 lambda!15265)))

(declare-fun bs!66159 () Bool)

(assert (= bs!66159 (and d!187588 d!187550)))

(assert (=> bs!66159 (= lambda!15266 lambda!15252)))

(declare-fun bs!66160 () Bool)

(assert (= bs!66160 (and d!187588 d!187566)))

(assert (=> bs!66160 (= lambda!15266 lambda!15257)))

(declare-fun bs!66161 () Bool)

(assert (= bs!66161 (and d!187588 d!187564)))

(assert (=> bs!66161 (= lambda!15266 lambda!15256)))

(assert (=> d!187588 (= (inv!6220 setElem!2513) (forall!1492 (exprs!657 setElem!2513) lambda!15266))))

(declare-fun bs!66162 () Bool)

(assert (= bs!66162 d!187588))

(declare-fun m!772852 () Bool)

(assert (=> bs!66162 m!772852))

(assert (=> setNonEmpty!2513 d!187588))

(declare-fun d!187590 () Bool)

(declare-fun c!101083 () Bool)

(assert (=> d!187590 (= c!101083 ((_ is Node!1607) (left!4218 (c!101075 input!747))))))

(declare-fun e!316890 () Bool)

(assert (=> d!187590 (= (inv!6212 (left!4218 (c!101075 input!747))) e!316890)))

(declare-fun b!527109 () Bool)

(assert (=> b!527109 (= e!316890 (inv!6218 (left!4218 (c!101075 input!747))))))

(declare-fun b!527110 () Bool)

(declare-fun e!316891 () Bool)

(assert (=> b!527110 (= e!316890 e!316891)))

(declare-fun res!222906 () Bool)

(assert (=> b!527110 (= res!222906 (not ((_ is Leaf!2557) (left!4218 (c!101075 input!747)))))))

(assert (=> b!527110 (=> res!222906 e!316891)))

(declare-fun b!527111 () Bool)

(assert (=> b!527111 (= e!316891 (inv!6219 (left!4218 (c!101075 input!747))))))

(assert (= (and d!187590 c!101083) b!527109))

(assert (= (and d!187590 (not c!101083)) b!527110))

(assert (= (and b!527110 (not res!222906)) b!527111))

(declare-fun m!772854 () Bool)

(assert (=> b!527109 m!772854))

(declare-fun m!772856 () Bool)

(assert (=> b!527111 m!772856))

(assert (=> b!526957 d!187590))

(declare-fun d!187592 () Bool)

(declare-fun c!101084 () Bool)

(assert (=> d!187592 (= c!101084 ((_ is Node!1607) (right!4548 (c!101075 input!747))))))

(declare-fun e!316892 () Bool)

(assert (=> d!187592 (= (inv!6212 (right!4548 (c!101075 input!747))) e!316892)))

(declare-fun b!527112 () Bool)

(assert (=> b!527112 (= e!316892 (inv!6218 (right!4548 (c!101075 input!747))))))

(declare-fun b!527113 () Bool)

(declare-fun e!316893 () Bool)

(assert (=> b!527113 (= e!316892 e!316893)))

(declare-fun res!222907 () Bool)

(assert (=> b!527113 (= res!222907 (not ((_ is Leaf!2557) (right!4548 (c!101075 input!747)))))))

(assert (=> b!527113 (=> res!222907 e!316893)))

(declare-fun b!527114 () Bool)

(assert (=> b!527114 (= e!316893 (inv!6219 (right!4548 (c!101075 input!747))))))

(assert (= (and d!187592 c!101084) b!527112))

(assert (= (and d!187592 (not c!101084)) b!527113))

(assert (= (and b!527113 (not res!222907)) b!527114))

(declare-fun m!772858 () Bool)

(assert (=> b!527112 m!772858))

(declare-fun m!772860 () Bool)

(assert (=> b!527114 m!772860))

(assert (=> b!526957 d!187592))

(declare-fun d!187594 () Bool)

(assert (=> d!187594 true))

(declare-fun lt!217849 () Bool)

(declare-fun rulesValidInductive!297 (LexerInterface!778 List!4969) Bool)

(assert (=> d!187594 (= lt!217849 (rulesValidInductive!297 thiss!12147 rules!1345))))

(declare-fun lambda!15269 () Int)

(declare-fun forall!1494 (List!4969 Int) Bool)

(assert (=> d!187594 (= lt!217849 (forall!1494 rules!1345 lambda!15269))))

(assert (=> d!187594 (= (rulesValid!321 thiss!12147 rules!1345) lt!217849)))

(declare-fun bs!66163 () Bool)

(assert (= bs!66163 d!187594))

(declare-fun m!772862 () Bool)

(assert (=> bs!66163 m!772862))

(declare-fun m!772864 () Bool)

(assert (=> bs!66163 m!772864))

(assert (=> d!187520 d!187594))

(declare-fun bs!66164 () Bool)

(declare-fun d!187596 () Bool)

(assert (= bs!66164 (and d!187596 d!187554)))

(declare-fun lambda!15270 () Int)

(assert (=> bs!66164 (= lambda!15270 lambda!15253)))

(declare-fun bs!66165 () Bool)

(assert (= bs!66165 (and d!187596 d!187578)))

(assert (=> bs!66165 (= lambda!15270 lambda!15264)))

(declare-fun bs!66166 () Bool)

(assert (= bs!66166 (and d!187596 d!187572)))

(assert (=> bs!66166 (= lambda!15270 lambda!15261)))

(declare-fun bs!66167 () Bool)

(assert (= bs!66167 (and d!187596 d!187574)))

(assert (=> bs!66167 (= lambda!15270 lambda!15262)))

(declare-fun bs!66168 () Bool)

(assert (= bs!66168 (and d!187596 d!187576)))

(assert (=> bs!66168 (= lambda!15270 lambda!15263)))

(declare-fun bs!66169 () Bool)

(assert (= bs!66169 (and d!187596 d!187546)))

(assert (=> bs!66169 (= lambda!15270 lambda!15248)))

(declare-fun bs!66170 () Bool)

(assert (= bs!66170 (and d!187596 d!187562)))

(assert (=> bs!66170 (= lambda!15270 lambda!15255)))

(declare-fun bs!66171 () Bool)

(assert (= bs!66171 (and d!187596 d!187580)))

(assert (=> bs!66171 (= lambda!15270 lambda!15265)))

(declare-fun bs!66172 () Bool)

(assert (= bs!66172 (and d!187596 d!187550)))

(assert (=> bs!66172 (= lambda!15270 lambda!15252)))

(declare-fun bs!66173 () Bool)

(assert (= bs!66173 (and d!187596 d!187566)))

(assert (=> bs!66173 (= lambda!15270 lambda!15257)))

(declare-fun bs!66174 () Bool)

(assert (= bs!66174 (and d!187596 d!187564)))

(assert (=> bs!66174 (= lambda!15270 lambda!15256)))

(declare-fun bs!66175 () Bool)

(assert (= bs!66175 (and d!187596 d!187588)))

(assert (=> bs!66175 (= lambda!15270 lambda!15266)))

(declare-fun bs!66176 () Bool)

(assert (= bs!66176 (and d!187596 d!187558)))

(assert (=> bs!66176 (= lambda!15270 lambda!15254)))

(assert (=> d!187596 (= (inv!6220 (_1!3309 (_1!3310 (h!10361 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))) (forall!1492 (exprs!657 (_1!3309 (_1!3310 (h!10361 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))) lambda!15270))))

(declare-fun bs!66177 () Bool)

(assert (= bs!66177 d!187596))

(declare-fun m!772866 () Bool)

(assert (=> bs!66177 m!772866))

(assert (=> b!526924 d!187596))

(assert (=> b!526854 d!187528))

(declare-fun b!527129 () Bool)

(declare-fun res!222922 () Bool)

(declare-fun e!316899 () Bool)

(assert (=> b!527129 (=> (not res!222922) (not e!316899))))

(assert (=> b!527129 (= res!222922 (isBalanced!496 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(declare-fun d!187598 () Bool)

(declare-fun res!222925 () Bool)

(declare-fun e!316898 () Bool)

(assert (=> d!187598 (=> res!222925 e!316898)))

(assert (=> d!187598 (= res!222925 (not ((_ is Node!1607) (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(assert (=> d!187598 (= (isBalanced!496 (c!101075 (totalInput!1748 cacheFurthestNullable!56))) e!316898)))

(declare-fun b!527130 () Bool)

(assert (=> b!527130 (= e!316898 e!316899)))

(declare-fun res!222924 () Bool)

(assert (=> b!527130 (=> (not res!222924) (not e!316899))))

(assert (=> b!527130 (= res!222924 (<= (- 1) (- (height!251 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) (height!251 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))))

(declare-fun b!527131 () Bool)

(declare-fun isEmpty!3608 (Conc!1607) Bool)

(assert (=> b!527131 (= e!316899 (not (isEmpty!3608 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))))

(declare-fun b!527132 () Bool)

(declare-fun res!222923 () Bool)

(assert (=> b!527132 (=> (not res!222923) (not e!316899))))

(assert (=> b!527132 (= res!222923 (not (isEmpty!3608 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))))

(declare-fun b!527133 () Bool)

(declare-fun res!222920 () Bool)

(assert (=> b!527133 (=> (not res!222920) (not e!316899))))

(assert (=> b!527133 (= res!222920 (<= (- (height!251 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) (height!251 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) 1))))

(declare-fun b!527134 () Bool)

(declare-fun res!222921 () Bool)

(assert (=> b!527134 (=> (not res!222921) (not e!316899))))

(assert (=> b!527134 (= res!222921 (isBalanced!496 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(assert (= (and d!187598 (not res!222925)) b!527130))

(assert (= (and b!527130 res!222924) b!527133))

(assert (= (and b!527133 res!222920) b!527134))

(assert (= (and b!527134 res!222921) b!527129))

(assert (= (and b!527129 res!222922) b!527132))

(assert (= (and b!527132 res!222923) b!527131))

(declare-fun m!772868 () Bool)

(assert (=> b!527129 m!772868))

(declare-fun m!772870 () Bool)

(assert (=> b!527131 m!772870))

(assert (=> b!527130 m!772793))

(assert (=> b!527130 m!772795))

(declare-fun m!772872 () Bool)

(assert (=> b!527132 m!772872))

(declare-fun m!772874 () Bool)

(assert (=> b!527134 m!772874))

(assert (=> b!527133 m!772793))

(assert (=> b!527133 m!772795))

(assert (=> d!187522 d!187598))

(declare-fun b!527135 () Bool)

(declare-fun res!222928 () Bool)

(declare-fun e!316901 () Bool)

(assert (=> b!527135 (=> (not res!222928) (not e!316901))))

(assert (=> b!527135 (= res!222928 (isBalanced!496 (right!4548 (c!101075 input!747))))))

(declare-fun d!187600 () Bool)

(declare-fun res!222931 () Bool)

(declare-fun e!316900 () Bool)

(assert (=> d!187600 (=> res!222931 e!316900)))

(assert (=> d!187600 (= res!222931 (not ((_ is Node!1607) (c!101075 input!747))))))

(assert (=> d!187600 (= (isBalanced!496 (c!101075 input!747)) e!316900)))

(declare-fun b!527136 () Bool)

(assert (=> b!527136 (= e!316900 e!316901)))

(declare-fun res!222930 () Bool)

(assert (=> b!527136 (=> (not res!222930) (not e!316901))))

(assert (=> b!527136 (= res!222930 (<= (- 1) (- (height!251 (left!4218 (c!101075 input!747))) (height!251 (right!4548 (c!101075 input!747))))))))

(declare-fun b!527137 () Bool)

(assert (=> b!527137 (= e!316901 (not (isEmpty!3608 (right!4548 (c!101075 input!747)))))))

(declare-fun b!527138 () Bool)

(declare-fun res!222929 () Bool)

(assert (=> b!527138 (=> (not res!222929) (not e!316901))))

(assert (=> b!527138 (= res!222929 (not (isEmpty!3608 (left!4218 (c!101075 input!747)))))))

(declare-fun b!527139 () Bool)

(declare-fun res!222926 () Bool)

(assert (=> b!527139 (=> (not res!222926) (not e!316901))))

(assert (=> b!527139 (= res!222926 (<= (- (height!251 (left!4218 (c!101075 input!747))) (height!251 (right!4548 (c!101075 input!747)))) 1))))

(declare-fun b!527140 () Bool)

(declare-fun res!222927 () Bool)

(assert (=> b!527140 (=> (not res!222927) (not e!316901))))

(assert (=> b!527140 (= res!222927 (isBalanced!496 (left!4218 (c!101075 input!747))))))

(assert (= (and d!187600 (not res!222931)) b!527136))

(assert (= (and b!527136 res!222930) b!527139))

(assert (= (and b!527139 res!222926) b!527140))

(assert (= (and b!527140 res!222927) b!527135))

(assert (= (and b!527135 res!222928) b!527138))

(assert (= (and b!527138 res!222929) b!527137))

(declare-fun m!772876 () Bool)

(assert (=> b!527135 m!772876))

(declare-fun m!772878 () Bool)

(assert (=> b!527137 m!772878))

(assert (=> b!527136 m!772821))

(assert (=> b!527136 m!772823))

(declare-fun m!772880 () Bool)

(assert (=> b!527138 m!772880))

(declare-fun m!772882 () Bool)

(assert (=> b!527140 m!772882))

(assert (=> b!527139 m!772821))

(assert (=> b!527139 m!772823))

(assert (=> d!187498 d!187600))

(declare-fun bs!66178 () Bool)

(declare-fun d!187602 () Bool)

(assert (= bs!66178 (and d!187602 d!187554)))

(declare-fun lambda!15271 () Int)

(assert (=> bs!66178 (= lambda!15271 lambda!15253)))

(declare-fun bs!66179 () Bool)

(assert (= bs!66179 (and d!187602 d!187578)))

(assert (=> bs!66179 (= lambda!15271 lambda!15264)))

(declare-fun bs!66180 () Bool)

(assert (= bs!66180 (and d!187602 d!187572)))

(assert (=> bs!66180 (= lambda!15271 lambda!15261)))

(declare-fun bs!66181 () Bool)

(assert (= bs!66181 (and d!187602 d!187574)))

(assert (=> bs!66181 (= lambda!15271 lambda!15262)))

(declare-fun bs!66182 () Bool)

(assert (= bs!66182 (and d!187602 d!187576)))

(assert (=> bs!66182 (= lambda!15271 lambda!15263)))

(declare-fun bs!66183 () Bool)

(assert (= bs!66183 (and d!187602 d!187546)))

(assert (=> bs!66183 (= lambda!15271 lambda!15248)))

(declare-fun bs!66184 () Bool)

(assert (= bs!66184 (and d!187602 d!187562)))

(assert (=> bs!66184 (= lambda!15271 lambda!15255)))

(declare-fun bs!66185 () Bool)

(assert (= bs!66185 (and d!187602 d!187580)))

(assert (=> bs!66185 (= lambda!15271 lambda!15265)))

(declare-fun bs!66186 () Bool)

(assert (= bs!66186 (and d!187602 d!187596)))

(assert (=> bs!66186 (= lambda!15271 lambda!15270)))

(declare-fun bs!66187 () Bool)

(assert (= bs!66187 (and d!187602 d!187550)))

(assert (=> bs!66187 (= lambda!15271 lambda!15252)))

(declare-fun bs!66188 () Bool)

(assert (= bs!66188 (and d!187602 d!187566)))

(assert (=> bs!66188 (= lambda!15271 lambda!15257)))

(declare-fun bs!66189 () Bool)

(assert (= bs!66189 (and d!187602 d!187564)))

(assert (=> bs!66189 (= lambda!15271 lambda!15256)))

(declare-fun bs!66190 () Bool)

(assert (= bs!66190 (and d!187602 d!187588)))

(assert (=> bs!66190 (= lambda!15271 lambda!15266)))

(declare-fun bs!66191 () Bool)

(assert (= bs!66191 (and d!187602 d!187558)))

(assert (=> bs!66191 (= lambda!15271 lambda!15254)))

(assert (=> d!187602 (= (inv!6220 setElem!2540) (forall!1492 (exprs!657 setElem!2540) lambda!15271))))

(declare-fun bs!66192 () Bool)

(assert (= bs!66192 d!187602))

(declare-fun m!772884 () Bool)

(assert (=> bs!66192 m!772884))

(assert (=> setNonEmpty!2540 d!187602))

(declare-fun bs!66193 () Bool)

(declare-fun d!187604 () Bool)

(assert (= bs!66193 (and d!187604 d!187554)))

(declare-fun lambda!15272 () Int)

(assert (=> bs!66193 (= lambda!15272 lambda!15253)))

(declare-fun bs!66194 () Bool)

(assert (= bs!66194 (and d!187604 d!187578)))

(assert (=> bs!66194 (= lambda!15272 lambda!15264)))

(declare-fun bs!66195 () Bool)

(assert (= bs!66195 (and d!187604 d!187572)))

(assert (=> bs!66195 (= lambda!15272 lambda!15261)))

(declare-fun bs!66196 () Bool)

(assert (= bs!66196 (and d!187604 d!187574)))

(assert (=> bs!66196 (= lambda!15272 lambda!15262)))

(declare-fun bs!66197 () Bool)

(assert (= bs!66197 (and d!187604 d!187576)))

(assert (=> bs!66197 (= lambda!15272 lambda!15263)))

(declare-fun bs!66198 () Bool)

(assert (= bs!66198 (and d!187604 d!187546)))

(assert (=> bs!66198 (= lambda!15272 lambda!15248)))

(declare-fun bs!66199 () Bool)

(assert (= bs!66199 (and d!187604 d!187580)))

(assert (=> bs!66199 (= lambda!15272 lambda!15265)))

(declare-fun bs!66200 () Bool)

(assert (= bs!66200 (and d!187604 d!187596)))

(assert (=> bs!66200 (= lambda!15272 lambda!15270)))

(declare-fun bs!66201 () Bool)

(assert (= bs!66201 (and d!187604 d!187550)))

(assert (=> bs!66201 (= lambda!15272 lambda!15252)))

(declare-fun bs!66202 () Bool)

(assert (= bs!66202 (and d!187604 d!187566)))

(assert (=> bs!66202 (= lambda!15272 lambda!15257)))

(declare-fun bs!66203 () Bool)

(assert (= bs!66203 (and d!187604 d!187564)))

(assert (=> bs!66203 (= lambda!15272 lambda!15256)))

(declare-fun bs!66204 () Bool)

(assert (= bs!66204 (and d!187604 d!187588)))

(assert (=> bs!66204 (= lambda!15272 lambda!15266)))

(declare-fun bs!66205 () Bool)

(assert (= bs!66205 (and d!187604 d!187558)))

(assert (=> bs!66205 (= lambda!15272 lambda!15254)))

(declare-fun bs!66206 () Bool)

(assert (= bs!66206 (and d!187604 d!187602)))

(assert (=> bs!66206 (= lambda!15272 lambda!15271)))

(declare-fun bs!66207 () Bool)

(assert (= bs!66207 (and d!187604 d!187562)))

(assert (=> bs!66207 (= lambda!15272 lambda!15255)))

(assert (=> d!187604 (= (inv!6220 (_2!3307 (_1!3308 (h!10358 mapDefault!2311)))) (forall!1492 (exprs!657 (_2!3307 (_1!3308 (h!10358 mapDefault!2311)))) lambda!15272))))

(declare-fun bs!66208 () Bool)

(assert (= bs!66208 d!187604))

(declare-fun m!772886 () Bool)

(assert (=> bs!66208 m!772886))

(assert (=> b!527045 d!187604))

(declare-fun d!187606 () Bool)

(declare-fun c!101085 () Bool)

(assert (=> d!187606 (= c!101085 ((_ is Node!1607) (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(declare-fun e!316902 () Bool)

(assert (=> d!187606 (= (inv!6212 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) e!316902)))

(declare-fun b!527141 () Bool)

(assert (=> b!527141 (= e!316902 (inv!6218 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(declare-fun b!527142 () Bool)

(declare-fun e!316903 () Bool)

(assert (=> b!527142 (= e!316902 e!316903)))

(declare-fun res!222932 () Bool)

(assert (=> b!527142 (= res!222932 (not ((_ is Leaf!2557) (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))))

(assert (=> b!527142 (=> res!222932 e!316903)))

(declare-fun b!527143 () Bool)

(assert (=> b!527143 (= e!316903 (inv!6219 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(assert (= (and d!187606 c!101085) b!527141))

(assert (= (and d!187606 (not c!101085)) b!527142))

(assert (= (and b!527142 (not res!222932)) b!527143))

(declare-fun m!772888 () Bool)

(assert (=> b!527141 m!772888))

(declare-fun m!772890 () Bool)

(assert (=> b!527143 m!772890))

(assert (=> b!527041 d!187606))

(declare-fun d!187608 () Bool)

(declare-fun c!101086 () Bool)

(assert (=> d!187608 (= c!101086 ((_ is Node!1607) (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(declare-fun e!316904 () Bool)

(assert (=> d!187608 (= (inv!6212 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) e!316904)))

(declare-fun b!527144 () Bool)

(assert (=> b!527144 (= e!316904 (inv!6218 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(declare-fun b!527145 () Bool)

(declare-fun e!316905 () Bool)

(assert (=> b!527145 (= e!316904 e!316905)))

(declare-fun res!222933 () Bool)

(assert (=> b!527145 (= res!222933 (not ((_ is Leaf!2557) (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))))))

(assert (=> b!527145 (=> res!222933 e!316905)))

(declare-fun b!527146 () Bool)

(assert (=> b!527146 (= e!316905 (inv!6219 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))))

(assert (= (and d!187608 c!101086) b!527144))

(assert (= (and d!187608 (not c!101086)) b!527145))

(assert (= (and b!527145 (not res!222933)) b!527146))

(declare-fun m!772892 () Bool)

(assert (=> b!527144 m!772892))

(declare-fun m!772894 () Bool)

(assert (=> b!527146 m!772894))

(assert (=> b!527041 d!187608))

(declare-fun bs!66209 () Bool)

(declare-fun d!187610 () Bool)

(assert (= bs!66209 (and d!187610 d!187554)))

(declare-fun lambda!15273 () Int)

(assert (=> bs!66209 (= lambda!15273 lambda!15253)))

(declare-fun bs!66210 () Bool)

(assert (= bs!66210 (and d!187610 d!187578)))

(assert (=> bs!66210 (= lambda!15273 lambda!15264)))

(declare-fun bs!66211 () Bool)

(assert (= bs!66211 (and d!187610 d!187572)))

(assert (=> bs!66211 (= lambda!15273 lambda!15261)))

(declare-fun bs!66212 () Bool)

(assert (= bs!66212 (and d!187610 d!187574)))

(assert (=> bs!66212 (= lambda!15273 lambda!15262)))

(declare-fun bs!66213 () Bool)

(assert (= bs!66213 (and d!187610 d!187576)))

(assert (=> bs!66213 (= lambda!15273 lambda!15263)))

(declare-fun bs!66214 () Bool)

(assert (= bs!66214 (and d!187610 d!187546)))

(assert (=> bs!66214 (= lambda!15273 lambda!15248)))

(declare-fun bs!66215 () Bool)

(assert (= bs!66215 (and d!187610 d!187580)))

(assert (=> bs!66215 (= lambda!15273 lambda!15265)))

(declare-fun bs!66216 () Bool)

(assert (= bs!66216 (and d!187610 d!187596)))

(assert (=> bs!66216 (= lambda!15273 lambda!15270)))

(declare-fun bs!66217 () Bool)

(assert (= bs!66217 (and d!187610 d!187604)))

(assert (=> bs!66217 (= lambda!15273 lambda!15272)))

(declare-fun bs!66218 () Bool)

(assert (= bs!66218 (and d!187610 d!187550)))

(assert (=> bs!66218 (= lambda!15273 lambda!15252)))

(declare-fun bs!66219 () Bool)

(assert (= bs!66219 (and d!187610 d!187566)))

(assert (=> bs!66219 (= lambda!15273 lambda!15257)))

(declare-fun bs!66220 () Bool)

(assert (= bs!66220 (and d!187610 d!187564)))

(assert (=> bs!66220 (= lambda!15273 lambda!15256)))

(declare-fun bs!66221 () Bool)

(assert (= bs!66221 (and d!187610 d!187588)))

(assert (=> bs!66221 (= lambda!15273 lambda!15266)))

(declare-fun bs!66222 () Bool)

(assert (= bs!66222 (and d!187610 d!187558)))

(assert (=> bs!66222 (= lambda!15273 lambda!15254)))

(declare-fun bs!66223 () Bool)

(assert (= bs!66223 (and d!187610 d!187602)))

(assert (=> bs!66223 (= lambda!15273 lambda!15271)))

(declare-fun bs!66224 () Bool)

(assert (= bs!66224 (and d!187610 d!187562)))

(assert (=> bs!66224 (= lambda!15273 lambda!15255)))

(assert (=> d!187610 (= (inv!6220 setElem!2539) (forall!1492 (exprs!657 setElem!2539) lambda!15273))))

(declare-fun bs!66225 () Bool)

(assert (= bs!66225 d!187610))

(declare-fun m!772896 () Bool)

(assert (=> bs!66225 m!772896))

(assert (=> setNonEmpty!2539 d!187610))

(declare-fun d!187612 () Bool)

(assert (=> d!187612 (= (inv!6211 (tag!1154 (h!10360 (t!73579 rules!1345)))) (= (mod (str.len (value!30278 (tag!1154 (h!10360 (t!73579 rules!1345))))) 2) 0))))

(assert (=> b!527039 d!187612))

(declare-fun d!187614 () Bool)

(declare-fun res!222934 () Bool)

(declare-fun e!316906 () Bool)

(assert (=> d!187614 (=> (not res!222934) (not e!316906))))

(assert (=> d!187614 (= res!222934 (semiInverseModEq!356 (toChars!1586 (transformation!892 (h!10360 (t!73579 rules!1345)))) (toValue!1727 (transformation!892 (h!10360 (t!73579 rules!1345))))))))

(assert (=> d!187614 (= (inv!6217 (transformation!892 (h!10360 (t!73579 rules!1345)))) e!316906)))

(declare-fun b!527147 () Bool)

(assert (=> b!527147 (= e!316906 (equivClasses!339 (toChars!1586 (transformation!892 (h!10360 (t!73579 rules!1345)))) (toValue!1727 (transformation!892 (h!10360 (t!73579 rules!1345))))))))

(assert (= (and d!187614 res!222934) b!527147))

(declare-fun m!772898 () Bool)

(assert (=> d!187614 m!772898))

(declare-fun m!772900 () Bool)

(assert (=> b!527147 m!772900))

(assert (=> b!527039 d!187614))

(declare-fun bs!66226 () Bool)

(declare-fun d!187616 () Bool)

(assert (= bs!66226 (and d!187616 d!187610)))

(declare-fun lambda!15274 () Int)

(assert (=> bs!66226 (= lambda!15274 lambda!15273)))

(declare-fun bs!66227 () Bool)

(assert (= bs!66227 (and d!187616 d!187554)))

(assert (=> bs!66227 (= lambda!15274 lambda!15253)))

(declare-fun bs!66228 () Bool)

(assert (= bs!66228 (and d!187616 d!187578)))

(assert (=> bs!66228 (= lambda!15274 lambda!15264)))

(declare-fun bs!66229 () Bool)

(assert (= bs!66229 (and d!187616 d!187572)))

(assert (=> bs!66229 (= lambda!15274 lambda!15261)))

(declare-fun bs!66230 () Bool)

(assert (= bs!66230 (and d!187616 d!187574)))

(assert (=> bs!66230 (= lambda!15274 lambda!15262)))

(declare-fun bs!66231 () Bool)

(assert (= bs!66231 (and d!187616 d!187576)))

(assert (=> bs!66231 (= lambda!15274 lambda!15263)))

(declare-fun bs!66232 () Bool)

(assert (= bs!66232 (and d!187616 d!187546)))

(assert (=> bs!66232 (= lambda!15274 lambda!15248)))

(declare-fun bs!66233 () Bool)

(assert (= bs!66233 (and d!187616 d!187580)))

(assert (=> bs!66233 (= lambda!15274 lambda!15265)))

(declare-fun bs!66234 () Bool)

(assert (= bs!66234 (and d!187616 d!187596)))

(assert (=> bs!66234 (= lambda!15274 lambda!15270)))

(declare-fun bs!66235 () Bool)

(assert (= bs!66235 (and d!187616 d!187604)))

(assert (=> bs!66235 (= lambda!15274 lambda!15272)))

(declare-fun bs!66236 () Bool)

(assert (= bs!66236 (and d!187616 d!187550)))

(assert (=> bs!66236 (= lambda!15274 lambda!15252)))

(declare-fun bs!66237 () Bool)

(assert (= bs!66237 (and d!187616 d!187566)))

(assert (=> bs!66237 (= lambda!15274 lambda!15257)))

(declare-fun bs!66238 () Bool)

(assert (= bs!66238 (and d!187616 d!187564)))

(assert (=> bs!66238 (= lambda!15274 lambda!15256)))

(declare-fun bs!66239 () Bool)

(assert (= bs!66239 (and d!187616 d!187588)))

(assert (=> bs!66239 (= lambda!15274 lambda!15266)))

(declare-fun bs!66240 () Bool)

(assert (= bs!66240 (and d!187616 d!187558)))

(assert (=> bs!66240 (= lambda!15274 lambda!15254)))

(declare-fun bs!66241 () Bool)

(assert (= bs!66241 (and d!187616 d!187602)))

(assert (=> bs!66241 (= lambda!15274 lambda!15271)))

(declare-fun bs!66242 () Bool)

(assert (= bs!66242 (and d!187616 d!187562)))

(assert (=> bs!66242 (= lambda!15274 lambda!15255)))

(assert (=> d!187616 (= (inv!6220 setElem!2526) (forall!1492 (exprs!657 setElem!2526) lambda!15274))))

(declare-fun bs!66243 () Bool)

(assert (= bs!66243 d!187616))

(declare-fun m!772902 () Bool)

(assert (=> bs!66243 m!772902))

(assert (=> setNonEmpty!2526 d!187616))

(assert (=> b!526882 d!187542))

(declare-fun bs!66244 () Bool)

(declare-fun d!187618 () Bool)

(assert (= bs!66244 (and d!187618 d!187610)))

(declare-fun lambda!15275 () Int)

(assert (=> bs!66244 (= lambda!15275 lambda!15273)))

(declare-fun bs!66245 () Bool)

(assert (= bs!66245 (and d!187618 d!187554)))

(assert (=> bs!66245 (= lambda!15275 lambda!15253)))

(declare-fun bs!66246 () Bool)

(assert (= bs!66246 (and d!187618 d!187578)))

(assert (=> bs!66246 (= lambda!15275 lambda!15264)))

(declare-fun bs!66247 () Bool)

(assert (= bs!66247 (and d!187618 d!187572)))

(assert (=> bs!66247 (= lambda!15275 lambda!15261)))

(declare-fun bs!66248 () Bool)

(assert (= bs!66248 (and d!187618 d!187574)))

(assert (=> bs!66248 (= lambda!15275 lambda!15262)))

(declare-fun bs!66249 () Bool)

(assert (= bs!66249 (and d!187618 d!187576)))

(assert (=> bs!66249 (= lambda!15275 lambda!15263)))

(declare-fun bs!66250 () Bool)

(assert (= bs!66250 (and d!187618 d!187580)))

(assert (=> bs!66250 (= lambda!15275 lambda!15265)))

(declare-fun bs!66251 () Bool)

(assert (= bs!66251 (and d!187618 d!187596)))

(assert (=> bs!66251 (= lambda!15275 lambda!15270)))

(declare-fun bs!66252 () Bool)

(assert (= bs!66252 (and d!187618 d!187604)))

(assert (=> bs!66252 (= lambda!15275 lambda!15272)))

(declare-fun bs!66253 () Bool)

(assert (= bs!66253 (and d!187618 d!187550)))

(assert (=> bs!66253 (= lambda!15275 lambda!15252)))

(declare-fun bs!66254 () Bool)

(assert (= bs!66254 (and d!187618 d!187566)))

(assert (=> bs!66254 (= lambda!15275 lambda!15257)))

(declare-fun bs!66255 () Bool)

(assert (= bs!66255 (and d!187618 d!187564)))

(assert (=> bs!66255 (= lambda!15275 lambda!15256)))

(declare-fun bs!66256 () Bool)

(assert (= bs!66256 (and d!187618 d!187588)))

(assert (=> bs!66256 (= lambda!15275 lambda!15266)))

(declare-fun bs!66257 () Bool)

(assert (= bs!66257 (and d!187618 d!187558)))

(assert (=> bs!66257 (= lambda!15275 lambda!15254)))

(declare-fun bs!66258 () Bool)

(assert (= bs!66258 (and d!187618 d!187546)))

(assert (=> bs!66258 (= lambda!15275 lambda!15248)))

(declare-fun bs!66259 () Bool)

(assert (= bs!66259 (and d!187618 d!187616)))

(assert (=> bs!66259 (= lambda!15275 lambda!15274)))

(declare-fun bs!66260 () Bool)

(assert (= bs!66260 (and d!187618 d!187602)))

(assert (=> bs!66260 (= lambda!15275 lambda!15271)))

(declare-fun bs!66261 () Bool)

(assert (= bs!66261 (and d!187618 d!187562)))

(assert (=> bs!66261 (= lambda!15275 lambda!15255)))

(assert (=> d!187618 (= (inv!6220 (_1!3309 (_1!3310 (h!10361 mapDefault!2310)))) (forall!1492 (exprs!657 (_1!3309 (_1!3310 (h!10361 mapDefault!2310)))) lambda!15275))))

(declare-fun bs!66262 () Bool)

(assert (= bs!66262 d!187618))

(declare-fun m!772904 () Bool)

(assert (=> bs!66262 m!772904))

(assert (=> b!527028 d!187618))

(declare-fun bs!66263 () Bool)

(declare-fun d!187620 () Bool)

(assert (= bs!66263 (and d!187620 d!187610)))

(declare-fun lambda!15276 () Int)

(assert (=> bs!66263 (= lambda!15276 lambda!15273)))

(declare-fun bs!66264 () Bool)

(assert (= bs!66264 (and d!187620 d!187578)))

(assert (=> bs!66264 (= lambda!15276 lambda!15264)))

(declare-fun bs!66265 () Bool)

(assert (= bs!66265 (and d!187620 d!187572)))

(assert (=> bs!66265 (= lambda!15276 lambda!15261)))

(declare-fun bs!66266 () Bool)

(assert (= bs!66266 (and d!187620 d!187574)))

(assert (=> bs!66266 (= lambda!15276 lambda!15262)))

(declare-fun bs!66267 () Bool)

(assert (= bs!66267 (and d!187620 d!187576)))

(assert (=> bs!66267 (= lambda!15276 lambda!15263)))

(declare-fun bs!66268 () Bool)

(assert (= bs!66268 (and d!187620 d!187580)))

(assert (=> bs!66268 (= lambda!15276 lambda!15265)))

(declare-fun bs!66269 () Bool)

(assert (= bs!66269 (and d!187620 d!187596)))

(assert (=> bs!66269 (= lambda!15276 lambda!15270)))

(declare-fun bs!66270 () Bool)

(assert (= bs!66270 (and d!187620 d!187604)))

(assert (=> bs!66270 (= lambda!15276 lambda!15272)))

(declare-fun bs!66271 () Bool)

(assert (= bs!66271 (and d!187620 d!187550)))

(assert (=> bs!66271 (= lambda!15276 lambda!15252)))

(declare-fun bs!66272 () Bool)

(assert (= bs!66272 (and d!187620 d!187566)))

(assert (=> bs!66272 (= lambda!15276 lambda!15257)))

(declare-fun bs!66273 () Bool)

(assert (= bs!66273 (and d!187620 d!187564)))

(assert (=> bs!66273 (= lambda!15276 lambda!15256)))

(declare-fun bs!66274 () Bool)

(assert (= bs!66274 (and d!187620 d!187554)))

(assert (=> bs!66274 (= lambda!15276 lambda!15253)))

(declare-fun bs!66275 () Bool)

(assert (= bs!66275 (and d!187620 d!187618)))

(assert (=> bs!66275 (= lambda!15276 lambda!15275)))

(declare-fun bs!66276 () Bool)

(assert (= bs!66276 (and d!187620 d!187588)))

(assert (=> bs!66276 (= lambda!15276 lambda!15266)))

(declare-fun bs!66277 () Bool)

(assert (= bs!66277 (and d!187620 d!187558)))

(assert (=> bs!66277 (= lambda!15276 lambda!15254)))

(declare-fun bs!66278 () Bool)

(assert (= bs!66278 (and d!187620 d!187546)))

(assert (=> bs!66278 (= lambda!15276 lambda!15248)))

(declare-fun bs!66279 () Bool)

(assert (= bs!66279 (and d!187620 d!187616)))

(assert (=> bs!66279 (= lambda!15276 lambda!15274)))

(declare-fun bs!66280 () Bool)

(assert (= bs!66280 (and d!187620 d!187602)))

(assert (=> bs!66280 (= lambda!15276 lambda!15271)))

(declare-fun bs!66281 () Bool)

(assert (= bs!66281 (and d!187620 d!187562)))

(assert (=> bs!66281 (= lambda!15276 lambda!15255)))

(assert (=> d!187620 (= (inv!6220 setElem!2520) (forall!1492 (exprs!657 setElem!2520) lambda!15276))))

(declare-fun bs!66282 () Bool)

(assert (= bs!66282 d!187620))

(declare-fun m!772906 () Bool)

(assert (=> bs!66282 m!772906))

(assert (=> setNonEmpty!2520 d!187620))

(declare-fun bs!66283 () Bool)

(declare-fun d!187622 () Bool)

(assert (= bs!66283 (and d!187622 d!187610)))

(declare-fun lambda!15277 () Int)

(assert (=> bs!66283 (= lambda!15277 lambda!15273)))

(declare-fun bs!66284 () Bool)

(assert (= bs!66284 (and d!187622 d!187578)))

(assert (=> bs!66284 (= lambda!15277 lambda!15264)))

(declare-fun bs!66285 () Bool)

(assert (= bs!66285 (and d!187622 d!187620)))

(assert (=> bs!66285 (= lambda!15277 lambda!15276)))

(declare-fun bs!66286 () Bool)

(assert (= bs!66286 (and d!187622 d!187572)))

(assert (=> bs!66286 (= lambda!15277 lambda!15261)))

(declare-fun bs!66287 () Bool)

(assert (= bs!66287 (and d!187622 d!187574)))

(assert (=> bs!66287 (= lambda!15277 lambda!15262)))

(declare-fun bs!66288 () Bool)

(assert (= bs!66288 (and d!187622 d!187576)))

(assert (=> bs!66288 (= lambda!15277 lambda!15263)))

(declare-fun bs!66289 () Bool)

(assert (= bs!66289 (and d!187622 d!187580)))

(assert (=> bs!66289 (= lambda!15277 lambda!15265)))

(declare-fun bs!66290 () Bool)

(assert (= bs!66290 (and d!187622 d!187596)))

(assert (=> bs!66290 (= lambda!15277 lambda!15270)))

(declare-fun bs!66291 () Bool)

(assert (= bs!66291 (and d!187622 d!187604)))

(assert (=> bs!66291 (= lambda!15277 lambda!15272)))

(declare-fun bs!66292 () Bool)

(assert (= bs!66292 (and d!187622 d!187550)))

(assert (=> bs!66292 (= lambda!15277 lambda!15252)))

(declare-fun bs!66293 () Bool)

(assert (= bs!66293 (and d!187622 d!187566)))

(assert (=> bs!66293 (= lambda!15277 lambda!15257)))

(declare-fun bs!66294 () Bool)

(assert (= bs!66294 (and d!187622 d!187564)))

(assert (=> bs!66294 (= lambda!15277 lambda!15256)))

(declare-fun bs!66295 () Bool)

(assert (= bs!66295 (and d!187622 d!187554)))

(assert (=> bs!66295 (= lambda!15277 lambda!15253)))

(declare-fun bs!66296 () Bool)

(assert (= bs!66296 (and d!187622 d!187618)))

(assert (=> bs!66296 (= lambda!15277 lambda!15275)))

(declare-fun bs!66297 () Bool)

(assert (= bs!66297 (and d!187622 d!187588)))

(assert (=> bs!66297 (= lambda!15277 lambda!15266)))

(declare-fun bs!66298 () Bool)

(assert (= bs!66298 (and d!187622 d!187558)))

(assert (=> bs!66298 (= lambda!15277 lambda!15254)))

(declare-fun bs!66299 () Bool)

(assert (= bs!66299 (and d!187622 d!187546)))

(assert (=> bs!66299 (= lambda!15277 lambda!15248)))

(declare-fun bs!66300 () Bool)

(assert (= bs!66300 (and d!187622 d!187616)))

(assert (=> bs!66300 (= lambda!15277 lambda!15274)))

(declare-fun bs!66301 () Bool)

(assert (= bs!66301 (and d!187622 d!187602)))

(assert (=> bs!66301 (= lambda!15277 lambda!15271)))

(declare-fun bs!66302 () Bool)

(assert (= bs!66302 (and d!187622 d!187562)))

(assert (=> bs!66302 (= lambda!15277 lambda!15255)))

(assert (=> d!187622 (= (inv!6220 setElem!2532) (forall!1492 (exprs!657 setElem!2532) lambda!15277))))

(declare-fun bs!66303 () Bool)

(assert (= bs!66303 d!187622))

(declare-fun m!772908 () Bool)

(assert (=> bs!66303 m!772908))

(assert (=> setNonEmpty!2533 d!187622))

(declare-fun bs!66304 () Bool)

(declare-fun d!187624 () Bool)

(assert (= bs!66304 (and d!187624 d!187610)))

(declare-fun lambda!15278 () Int)

(assert (=> bs!66304 (= lambda!15278 lambda!15273)))

(declare-fun bs!66305 () Bool)

(assert (= bs!66305 (and d!187624 d!187578)))

(assert (=> bs!66305 (= lambda!15278 lambda!15264)))

(declare-fun bs!66306 () Bool)

(assert (= bs!66306 (and d!187624 d!187620)))

(assert (=> bs!66306 (= lambda!15278 lambda!15276)))

(declare-fun bs!66307 () Bool)

(assert (= bs!66307 (and d!187624 d!187572)))

(assert (=> bs!66307 (= lambda!15278 lambda!15261)))

(declare-fun bs!66308 () Bool)

(assert (= bs!66308 (and d!187624 d!187574)))

(assert (=> bs!66308 (= lambda!15278 lambda!15262)))

(declare-fun bs!66309 () Bool)

(assert (= bs!66309 (and d!187624 d!187576)))

(assert (=> bs!66309 (= lambda!15278 lambda!15263)))

(declare-fun bs!66310 () Bool)

(assert (= bs!66310 (and d!187624 d!187596)))

(assert (=> bs!66310 (= lambda!15278 lambda!15270)))

(declare-fun bs!66311 () Bool)

(assert (= bs!66311 (and d!187624 d!187604)))

(assert (=> bs!66311 (= lambda!15278 lambda!15272)))

(declare-fun bs!66312 () Bool)

(assert (= bs!66312 (and d!187624 d!187550)))

(assert (=> bs!66312 (= lambda!15278 lambda!15252)))

(declare-fun bs!66313 () Bool)

(assert (= bs!66313 (and d!187624 d!187566)))

(assert (=> bs!66313 (= lambda!15278 lambda!15257)))

(declare-fun bs!66314 () Bool)

(assert (= bs!66314 (and d!187624 d!187564)))

(assert (=> bs!66314 (= lambda!15278 lambda!15256)))

(declare-fun bs!66315 () Bool)

(assert (= bs!66315 (and d!187624 d!187554)))

(assert (=> bs!66315 (= lambda!15278 lambda!15253)))

(declare-fun bs!66316 () Bool)

(assert (= bs!66316 (and d!187624 d!187618)))

(assert (=> bs!66316 (= lambda!15278 lambda!15275)))

(declare-fun bs!66317 () Bool)

(assert (= bs!66317 (and d!187624 d!187588)))

(assert (=> bs!66317 (= lambda!15278 lambda!15266)))

(declare-fun bs!66318 () Bool)

(assert (= bs!66318 (and d!187624 d!187558)))

(assert (=> bs!66318 (= lambda!15278 lambda!15254)))

(declare-fun bs!66319 () Bool)

(assert (= bs!66319 (and d!187624 d!187546)))

(assert (=> bs!66319 (= lambda!15278 lambda!15248)))

(declare-fun bs!66320 () Bool)

(assert (= bs!66320 (and d!187624 d!187616)))

(assert (=> bs!66320 (= lambda!15278 lambda!15274)))

(declare-fun bs!66321 () Bool)

(assert (= bs!66321 (and d!187624 d!187602)))

(assert (=> bs!66321 (= lambda!15278 lambda!15271)))

(declare-fun bs!66322 () Bool)

(assert (= bs!66322 (and d!187624 d!187562)))

(assert (=> bs!66322 (= lambda!15278 lambda!15255)))

(declare-fun bs!66323 () Bool)

(assert (= bs!66323 (and d!187624 d!187622)))

(assert (=> bs!66323 (= lambda!15278 lambda!15277)))

(declare-fun bs!66324 () Bool)

(assert (= bs!66324 (and d!187624 d!187580)))

(assert (=> bs!66324 (= lambda!15278 lambda!15265)))

(assert (=> d!187624 (= (inv!6220 (_1!3309 (_1!3310 (h!10361 mapValue!2311)))) (forall!1492 (exprs!657 (_1!3309 (_1!3310 (h!10361 mapValue!2311)))) lambda!15278))))

(declare-fun bs!66325 () Bool)

(assert (= bs!66325 d!187624))

(declare-fun m!772910 () Bool)

(assert (=> bs!66325 m!772910))

(assert (=> b!526947 d!187624))

(declare-fun bs!66326 () Bool)

(declare-fun d!187626 () Bool)

(assert (= bs!66326 (and d!187626 d!187610)))

(declare-fun lambda!15279 () Int)

(assert (=> bs!66326 (= lambda!15279 lambda!15273)))

(declare-fun bs!66327 () Bool)

(assert (= bs!66327 (and d!187626 d!187578)))

(assert (=> bs!66327 (= lambda!15279 lambda!15264)))

(declare-fun bs!66328 () Bool)

(assert (= bs!66328 (and d!187626 d!187620)))

(assert (=> bs!66328 (= lambda!15279 lambda!15276)))

(declare-fun bs!66329 () Bool)

(assert (= bs!66329 (and d!187626 d!187572)))

(assert (=> bs!66329 (= lambda!15279 lambda!15261)))

(declare-fun bs!66330 () Bool)

(assert (= bs!66330 (and d!187626 d!187576)))

(assert (=> bs!66330 (= lambda!15279 lambda!15263)))

(declare-fun bs!66331 () Bool)

(assert (= bs!66331 (and d!187626 d!187596)))

(assert (=> bs!66331 (= lambda!15279 lambda!15270)))

(declare-fun bs!66332 () Bool)

(assert (= bs!66332 (and d!187626 d!187604)))

(assert (=> bs!66332 (= lambda!15279 lambda!15272)))

(declare-fun bs!66333 () Bool)

(assert (= bs!66333 (and d!187626 d!187550)))

(assert (=> bs!66333 (= lambda!15279 lambda!15252)))

(declare-fun bs!66334 () Bool)

(assert (= bs!66334 (and d!187626 d!187566)))

(assert (=> bs!66334 (= lambda!15279 lambda!15257)))

(declare-fun bs!66335 () Bool)

(assert (= bs!66335 (and d!187626 d!187564)))

(assert (=> bs!66335 (= lambda!15279 lambda!15256)))

(declare-fun bs!66336 () Bool)

(assert (= bs!66336 (and d!187626 d!187554)))

(assert (=> bs!66336 (= lambda!15279 lambda!15253)))

(declare-fun bs!66337 () Bool)

(assert (= bs!66337 (and d!187626 d!187618)))

(assert (=> bs!66337 (= lambda!15279 lambda!15275)))

(declare-fun bs!66338 () Bool)

(assert (= bs!66338 (and d!187626 d!187588)))

(assert (=> bs!66338 (= lambda!15279 lambda!15266)))

(declare-fun bs!66339 () Bool)

(assert (= bs!66339 (and d!187626 d!187558)))

(assert (=> bs!66339 (= lambda!15279 lambda!15254)))

(declare-fun bs!66340 () Bool)

(assert (= bs!66340 (and d!187626 d!187574)))

(assert (=> bs!66340 (= lambda!15279 lambda!15262)))

(declare-fun bs!66341 () Bool)

(assert (= bs!66341 (and d!187626 d!187624)))

(assert (=> bs!66341 (= lambda!15279 lambda!15278)))

(declare-fun bs!66342 () Bool)

(assert (= bs!66342 (and d!187626 d!187546)))

(assert (=> bs!66342 (= lambda!15279 lambda!15248)))

(declare-fun bs!66343 () Bool)

(assert (= bs!66343 (and d!187626 d!187616)))

(assert (=> bs!66343 (= lambda!15279 lambda!15274)))

(declare-fun bs!66344 () Bool)

(assert (= bs!66344 (and d!187626 d!187602)))

(assert (=> bs!66344 (= lambda!15279 lambda!15271)))

(declare-fun bs!66345 () Bool)

(assert (= bs!66345 (and d!187626 d!187562)))

(assert (=> bs!66345 (= lambda!15279 lambda!15255)))

(declare-fun bs!66346 () Bool)

(assert (= bs!66346 (and d!187626 d!187622)))

(assert (=> bs!66346 (= lambda!15279 lambda!15277)))

(declare-fun bs!66347 () Bool)

(assert (= bs!66347 (and d!187626 d!187580)))

(assert (=> bs!66347 (= lambda!15279 lambda!15265)))

(assert (=> d!187626 (= (inv!6220 setElem!2525) (forall!1492 (exprs!657 setElem!2525) lambda!15279))))

(declare-fun bs!66348 () Bool)

(assert (= bs!66348 d!187626))

(declare-fun m!772912 () Bool)

(assert (=> bs!66348 m!772912))

(assert (=> setNonEmpty!2525 d!187626))

(declare-fun bs!66349 () Bool)

(declare-fun d!187628 () Bool)

(assert (= bs!66349 (and d!187628 d!187610)))

(declare-fun lambda!15280 () Int)

(assert (=> bs!66349 (= lambda!15280 lambda!15273)))

(declare-fun bs!66350 () Bool)

(assert (= bs!66350 (and d!187628 d!187578)))

(assert (=> bs!66350 (= lambda!15280 lambda!15264)))

(declare-fun bs!66351 () Bool)

(assert (= bs!66351 (and d!187628 d!187620)))

(assert (=> bs!66351 (= lambda!15280 lambda!15276)))

(declare-fun bs!66352 () Bool)

(assert (= bs!66352 (and d!187628 d!187572)))

(assert (=> bs!66352 (= lambda!15280 lambda!15261)))

(declare-fun bs!66353 () Bool)

(assert (= bs!66353 (and d!187628 d!187576)))

(assert (=> bs!66353 (= lambda!15280 lambda!15263)))

(declare-fun bs!66354 () Bool)

(assert (= bs!66354 (and d!187628 d!187596)))

(assert (=> bs!66354 (= lambda!15280 lambda!15270)))

(declare-fun bs!66355 () Bool)

(assert (= bs!66355 (and d!187628 d!187604)))

(assert (=> bs!66355 (= lambda!15280 lambda!15272)))

(declare-fun bs!66356 () Bool)

(assert (= bs!66356 (and d!187628 d!187550)))

(assert (=> bs!66356 (= lambda!15280 lambda!15252)))

(declare-fun bs!66357 () Bool)

(assert (= bs!66357 (and d!187628 d!187566)))

(assert (=> bs!66357 (= lambda!15280 lambda!15257)))

(declare-fun bs!66358 () Bool)

(assert (= bs!66358 (and d!187628 d!187564)))

(assert (=> bs!66358 (= lambda!15280 lambda!15256)))

(declare-fun bs!66359 () Bool)

(assert (= bs!66359 (and d!187628 d!187554)))

(assert (=> bs!66359 (= lambda!15280 lambda!15253)))

(declare-fun bs!66360 () Bool)

(assert (= bs!66360 (and d!187628 d!187618)))

(assert (=> bs!66360 (= lambda!15280 lambda!15275)))

(declare-fun bs!66361 () Bool)

(assert (= bs!66361 (and d!187628 d!187588)))

(assert (=> bs!66361 (= lambda!15280 lambda!15266)))

(declare-fun bs!66362 () Bool)

(assert (= bs!66362 (and d!187628 d!187558)))

(assert (=> bs!66362 (= lambda!15280 lambda!15254)))

(declare-fun bs!66363 () Bool)

(assert (= bs!66363 (and d!187628 d!187574)))

(assert (=> bs!66363 (= lambda!15280 lambda!15262)))

(declare-fun bs!66364 () Bool)

(assert (= bs!66364 (and d!187628 d!187626)))

(assert (=> bs!66364 (= lambda!15280 lambda!15279)))

(declare-fun bs!66365 () Bool)

(assert (= bs!66365 (and d!187628 d!187624)))

(assert (=> bs!66365 (= lambda!15280 lambda!15278)))

(declare-fun bs!66366 () Bool)

(assert (= bs!66366 (and d!187628 d!187546)))

(assert (=> bs!66366 (= lambda!15280 lambda!15248)))

(declare-fun bs!66367 () Bool)

(assert (= bs!66367 (and d!187628 d!187616)))

(assert (=> bs!66367 (= lambda!15280 lambda!15274)))

(declare-fun bs!66368 () Bool)

(assert (= bs!66368 (and d!187628 d!187602)))

(assert (=> bs!66368 (= lambda!15280 lambda!15271)))

(declare-fun bs!66369 () Bool)

(assert (= bs!66369 (and d!187628 d!187562)))

(assert (=> bs!66369 (= lambda!15280 lambda!15255)))

(declare-fun bs!66370 () Bool)

(assert (= bs!66370 (and d!187628 d!187622)))

(assert (=> bs!66370 (= lambda!15280 lambda!15277)))

(declare-fun bs!66371 () Bool)

(assert (= bs!66371 (and d!187628 d!187580)))

(assert (=> bs!66371 (= lambda!15280 lambda!15265)))

(assert (=> d!187628 (= (inv!6220 setElem!2509) (forall!1492 (exprs!657 setElem!2509) lambda!15280))))

(declare-fun bs!66372 () Bool)

(assert (= bs!66372 d!187628))

(declare-fun m!772914 () Bool)

(assert (=> bs!66372 m!772914))

(assert (=> setNonEmpty!2509 d!187628))

(assert (=> b!526885 d!187570))

(declare-fun bs!66373 () Bool)

(declare-fun d!187630 () Bool)

(assert (= bs!66373 (and d!187630 d!187578)))

(declare-fun lambda!15281 () Int)

(assert (=> bs!66373 (= lambda!15281 lambda!15264)))

(declare-fun bs!66374 () Bool)

(assert (= bs!66374 (and d!187630 d!187620)))

(assert (=> bs!66374 (= lambda!15281 lambda!15276)))

(declare-fun bs!66375 () Bool)

(assert (= bs!66375 (and d!187630 d!187572)))

(assert (=> bs!66375 (= lambda!15281 lambda!15261)))

(declare-fun bs!66376 () Bool)

(assert (= bs!66376 (and d!187630 d!187576)))

(assert (=> bs!66376 (= lambda!15281 lambda!15263)))

(declare-fun bs!66377 () Bool)

(assert (= bs!66377 (and d!187630 d!187596)))

(assert (=> bs!66377 (= lambda!15281 lambda!15270)))

(declare-fun bs!66378 () Bool)

(assert (= bs!66378 (and d!187630 d!187604)))

(assert (=> bs!66378 (= lambda!15281 lambda!15272)))

(declare-fun bs!66379 () Bool)

(assert (= bs!66379 (and d!187630 d!187550)))

(assert (=> bs!66379 (= lambda!15281 lambda!15252)))

(declare-fun bs!66380 () Bool)

(assert (= bs!66380 (and d!187630 d!187566)))

(assert (=> bs!66380 (= lambda!15281 lambda!15257)))

(declare-fun bs!66381 () Bool)

(assert (= bs!66381 (and d!187630 d!187564)))

(assert (=> bs!66381 (= lambda!15281 lambda!15256)))

(declare-fun bs!66382 () Bool)

(assert (= bs!66382 (and d!187630 d!187628)))

(assert (=> bs!66382 (= lambda!15281 lambda!15280)))

(declare-fun bs!66383 () Bool)

(assert (= bs!66383 (and d!187630 d!187610)))

(assert (=> bs!66383 (= lambda!15281 lambda!15273)))

(declare-fun bs!66384 () Bool)

(assert (= bs!66384 (and d!187630 d!187554)))

(assert (=> bs!66384 (= lambda!15281 lambda!15253)))

(declare-fun bs!66385 () Bool)

(assert (= bs!66385 (and d!187630 d!187618)))

(assert (=> bs!66385 (= lambda!15281 lambda!15275)))

(declare-fun bs!66386 () Bool)

(assert (= bs!66386 (and d!187630 d!187588)))

(assert (=> bs!66386 (= lambda!15281 lambda!15266)))

(declare-fun bs!66387 () Bool)

(assert (= bs!66387 (and d!187630 d!187558)))

(assert (=> bs!66387 (= lambda!15281 lambda!15254)))

(declare-fun bs!66388 () Bool)

(assert (= bs!66388 (and d!187630 d!187574)))

(assert (=> bs!66388 (= lambda!15281 lambda!15262)))

(declare-fun bs!66389 () Bool)

(assert (= bs!66389 (and d!187630 d!187626)))

(assert (=> bs!66389 (= lambda!15281 lambda!15279)))

(declare-fun bs!66390 () Bool)

(assert (= bs!66390 (and d!187630 d!187624)))

(assert (=> bs!66390 (= lambda!15281 lambda!15278)))

(declare-fun bs!66391 () Bool)

(assert (= bs!66391 (and d!187630 d!187546)))

(assert (=> bs!66391 (= lambda!15281 lambda!15248)))

(declare-fun bs!66392 () Bool)

(assert (= bs!66392 (and d!187630 d!187616)))

(assert (=> bs!66392 (= lambda!15281 lambda!15274)))

(declare-fun bs!66393 () Bool)

(assert (= bs!66393 (and d!187630 d!187602)))

(assert (=> bs!66393 (= lambda!15281 lambda!15271)))

(declare-fun bs!66394 () Bool)

(assert (= bs!66394 (and d!187630 d!187562)))

(assert (=> bs!66394 (= lambda!15281 lambda!15255)))

(declare-fun bs!66395 () Bool)

(assert (= bs!66395 (and d!187630 d!187622)))

(assert (=> bs!66395 (= lambda!15281 lambda!15277)))

(declare-fun bs!66396 () Bool)

(assert (= bs!66396 (and d!187630 d!187580)))

(assert (=> bs!66396 (= lambda!15281 lambda!15265)))

(assert (=> d!187630 (= (inv!6220 setElem!2542) (forall!1492 (exprs!657 setElem!2542) lambda!15281))))

(declare-fun bs!66397 () Bool)

(assert (= bs!66397 d!187630))

(declare-fun m!772916 () Bool)

(assert (=> bs!66397 m!772916))

(assert (=> setNonEmpty!2542 d!187630))

(declare-fun bs!66398 () Bool)

(declare-fun d!187632 () Bool)

(assert (= bs!66398 (and d!187632 d!187578)))

(declare-fun lambda!15282 () Int)

(assert (=> bs!66398 (= lambda!15282 lambda!15264)))

(declare-fun bs!66399 () Bool)

(assert (= bs!66399 (and d!187632 d!187620)))

(assert (=> bs!66399 (= lambda!15282 lambda!15276)))

(declare-fun bs!66400 () Bool)

(assert (= bs!66400 (and d!187632 d!187572)))

(assert (=> bs!66400 (= lambda!15282 lambda!15261)))

(declare-fun bs!66401 () Bool)

(assert (= bs!66401 (and d!187632 d!187576)))

(assert (=> bs!66401 (= lambda!15282 lambda!15263)))

(declare-fun bs!66402 () Bool)

(assert (= bs!66402 (and d!187632 d!187596)))

(assert (=> bs!66402 (= lambda!15282 lambda!15270)))

(declare-fun bs!66403 () Bool)

(assert (= bs!66403 (and d!187632 d!187604)))

(assert (=> bs!66403 (= lambda!15282 lambda!15272)))

(declare-fun bs!66404 () Bool)

(assert (= bs!66404 (and d!187632 d!187550)))

(assert (=> bs!66404 (= lambda!15282 lambda!15252)))

(declare-fun bs!66405 () Bool)

(assert (= bs!66405 (and d!187632 d!187566)))

(assert (=> bs!66405 (= lambda!15282 lambda!15257)))

(declare-fun bs!66406 () Bool)

(assert (= bs!66406 (and d!187632 d!187564)))

(assert (=> bs!66406 (= lambda!15282 lambda!15256)))

(declare-fun bs!66407 () Bool)

(assert (= bs!66407 (and d!187632 d!187628)))

(assert (=> bs!66407 (= lambda!15282 lambda!15280)))

(declare-fun bs!66408 () Bool)

(assert (= bs!66408 (and d!187632 d!187610)))

(assert (=> bs!66408 (= lambda!15282 lambda!15273)))

(declare-fun bs!66409 () Bool)

(assert (= bs!66409 (and d!187632 d!187554)))

(assert (=> bs!66409 (= lambda!15282 lambda!15253)))

(declare-fun bs!66410 () Bool)

(assert (= bs!66410 (and d!187632 d!187618)))

(assert (=> bs!66410 (= lambda!15282 lambda!15275)))

(declare-fun bs!66411 () Bool)

(assert (= bs!66411 (and d!187632 d!187588)))

(assert (=> bs!66411 (= lambda!15282 lambda!15266)))

(declare-fun bs!66412 () Bool)

(assert (= bs!66412 (and d!187632 d!187558)))

(assert (=> bs!66412 (= lambda!15282 lambda!15254)))

(declare-fun bs!66413 () Bool)

(assert (= bs!66413 (and d!187632 d!187574)))

(assert (=> bs!66413 (= lambda!15282 lambda!15262)))

(declare-fun bs!66414 () Bool)

(assert (= bs!66414 (and d!187632 d!187626)))

(assert (=> bs!66414 (= lambda!15282 lambda!15279)))

(declare-fun bs!66415 () Bool)

(assert (= bs!66415 (and d!187632 d!187624)))

(assert (=> bs!66415 (= lambda!15282 lambda!15278)))

(declare-fun bs!66416 () Bool)

(assert (= bs!66416 (and d!187632 d!187546)))

(assert (=> bs!66416 (= lambda!15282 lambda!15248)))

(declare-fun bs!66417 () Bool)

(assert (= bs!66417 (and d!187632 d!187616)))

(assert (=> bs!66417 (= lambda!15282 lambda!15274)))

(declare-fun bs!66418 () Bool)

(assert (= bs!66418 (and d!187632 d!187602)))

(assert (=> bs!66418 (= lambda!15282 lambda!15271)))

(declare-fun bs!66419 () Bool)

(assert (= bs!66419 (and d!187632 d!187562)))

(assert (=> bs!66419 (= lambda!15282 lambda!15255)))

(declare-fun bs!66420 () Bool)

(assert (= bs!66420 (and d!187632 d!187622)))

(assert (=> bs!66420 (= lambda!15282 lambda!15277)))

(declare-fun bs!66421 () Bool)

(assert (= bs!66421 (and d!187632 d!187580)))

(assert (=> bs!66421 (= lambda!15282 lambda!15265)))

(declare-fun bs!66422 () Bool)

(assert (= bs!66422 (and d!187632 d!187630)))

(assert (=> bs!66422 (= lambda!15282 lambda!15281)))

(assert (=> d!187632 (= (inv!6220 setElem!2533) (forall!1492 (exprs!657 setElem!2533) lambda!15282))))

(declare-fun bs!66423 () Bool)

(assert (= bs!66423 d!187632))

(declare-fun m!772918 () Bool)

(assert (=> bs!66423 m!772918))

(assert (=> setNonEmpty!2532 d!187632))

(declare-fun bs!66424 () Bool)

(declare-fun d!187634 () Bool)

(assert (= bs!66424 (and d!187634 d!187578)))

(declare-fun lambda!15283 () Int)

(assert (=> bs!66424 (= lambda!15283 lambda!15264)))

(declare-fun bs!66425 () Bool)

(assert (= bs!66425 (and d!187634 d!187620)))

(assert (=> bs!66425 (= lambda!15283 lambda!15276)))

(declare-fun bs!66426 () Bool)

(assert (= bs!66426 (and d!187634 d!187572)))

(assert (=> bs!66426 (= lambda!15283 lambda!15261)))

(declare-fun bs!66427 () Bool)

(assert (= bs!66427 (and d!187634 d!187576)))

(assert (=> bs!66427 (= lambda!15283 lambda!15263)))

(declare-fun bs!66428 () Bool)

(assert (= bs!66428 (and d!187634 d!187596)))

(assert (=> bs!66428 (= lambda!15283 lambda!15270)))

(declare-fun bs!66429 () Bool)

(assert (= bs!66429 (and d!187634 d!187604)))

(assert (=> bs!66429 (= lambda!15283 lambda!15272)))

(declare-fun bs!66430 () Bool)

(assert (= bs!66430 (and d!187634 d!187550)))

(assert (=> bs!66430 (= lambda!15283 lambda!15252)))

(declare-fun bs!66431 () Bool)

(assert (= bs!66431 (and d!187634 d!187566)))

(assert (=> bs!66431 (= lambda!15283 lambda!15257)))

(declare-fun bs!66432 () Bool)

(assert (= bs!66432 (and d!187634 d!187632)))

(assert (=> bs!66432 (= lambda!15283 lambda!15282)))

(declare-fun bs!66433 () Bool)

(assert (= bs!66433 (and d!187634 d!187564)))

(assert (=> bs!66433 (= lambda!15283 lambda!15256)))

(declare-fun bs!66434 () Bool)

(assert (= bs!66434 (and d!187634 d!187628)))

(assert (=> bs!66434 (= lambda!15283 lambda!15280)))

(declare-fun bs!66435 () Bool)

(assert (= bs!66435 (and d!187634 d!187610)))

(assert (=> bs!66435 (= lambda!15283 lambda!15273)))

(declare-fun bs!66436 () Bool)

(assert (= bs!66436 (and d!187634 d!187554)))

(assert (=> bs!66436 (= lambda!15283 lambda!15253)))

(declare-fun bs!66437 () Bool)

(assert (= bs!66437 (and d!187634 d!187618)))

(assert (=> bs!66437 (= lambda!15283 lambda!15275)))

(declare-fun bs!66438 () Bool)

(assert (= bs!66438 (and d!187634 d!187588)))

(assert (=> bs!66438 (= lambda!15283 lambda!15266)))

(declare-fun bs!66439 () Bool)

(assert (= bs!66439 (and d!187634 d!187558)))

(assert (=> bs!66439 (= lambda!15283 lambda!15254)))

(declare-fun bs!66440 () Bool)

(assert (= bs!66440 (and d!187634 d!187574)))

(assert (=> bs!66440 (= lambda!15283 lambda!15262)))

(declare-fun bs!66441 () Bool)

(assert (= bs!66441 (and d!187634 d!187626)))

(assert (=> bs!66441 (= lambda!15283 lambda!15279)))

(declare-fun bs!66442 () Bool)

(assert (= bs!66442 (and d!187634 d!187624)))

(assert (=> bs!66442 (= lambda!15283 lambda!15278)))

(declare-fun bs!66443 () Bool)

(assert (= bs!66443 (and d!187634 d!187546)))

(assert (=> bs!66443 (= lambda!15283 lambda!15248)))

(declare-fun bs!66444 () Bool)

(assert (= bs!66444 (and d!187634 d!187616)))

(assert (=> bs!66444 (= lambda!15283 lambda!15274)))

(declare-fun bs!66445 () Bool)

(assert (= bs!66445 (and d!187634 d!187602)))

(assert (=> bs!66445 (= lambda!15283 lambda!15271)))

(declare-fun bs!66446 () Bool)

(assert (= bs!66446 (and d!187634 d!187562)))

(assert (=> bs!66446 (= lambda!15283 lambda!15255)))

(declare-fun bs!66447 () Bool)

(assert (= bs!66447 (and d!187634 d!187622)))

(assert (=> bs!66447 (= lambda!15283 lambda!15277)))

(declare-fun bs!66448 () Bool)

(assert (= bs!66448 (and d!187634 d!187580)))

(assert (=> bs!66448 (= lambda!15283 lambda!15265)))

(declare-fun bs!66449 () Bool)

(assert (= bs!66449 (and d!187634 d!187630)))

(assert (=> bs!66449 (= lambda!15283 lambda!15281)))

(assert (=> d!187634 (= (inv!6220 setElem!2518) (forall!1492 (exprs!657 setElem!2518) lambda!15283))))

(declare-fun bs!66450 () Bool)

(assert (= bs!66450 d!187634))

(declare-fun m!772920 () Bool)

(assert (=> bs!66450 m!772920))

(assert (=> setNonEmpty!2519 d!187634))

(assert (=> b!526849 d!187514))

(declare-fun d!187636 () Bool)

(assert (=> d!187636 true))

(declare-fun order!4383 () Int)

(declare-fun order!4385 () Int)

(declare-fun lambda!15286 () Int)

(declare-fun dynLambda!3035 (Int Int) Int)

(declare-fun dynLambda!3036 (Int Int) Int)

(assert (=> d!187636 (< (dynLambda!3035 order!4383 (toChars!1586 (transformation!892 (h!10360 rules!1345)))) (dynLambda!3036 order!4385 lambda!15286))))

(assert (=> d!187636 true))

(assert (=> d!187636 (< (dynLambda!3033 order!4379 (toValue!1727 (transformation!892 (h!10360 rules!1345)))) (dynLambda!3036 order!4385 lambda!15286))))

(declare-fun Forall!271 (Int) Bool)

(assert (=> d!187636 (= (semiInverseModEq!356 (toChars!1586 (transformation!892 (h!10360 rules!1345))) (toValue!1727 (transformation!892 (h!10360 rules!1345)))) (Forall!271 lambda!15286))))

(declare-fun bs!66451 () Bool)

(assert (= bs!66451 d!187636))

(declare-fun m!772922 () Bool)

(assert (=> bs!66451 m!772922))

(assert (=> d!187518 d!187636))

(declare-fun bs!66452 () Bool)

(declare-fun d!187638 () Bool)

(assert (= bs!66452 (and d!187638 d!187578)))

(declare-fun lambda!15287 () Int)

(assert (=> bs!66452 (= lambda!15287 lambda!15264)))

(declare-fun bs!66453 () Bool)

(assert (= bs!66453 (and d!187638 d!187620)))

(assert (=> bs!66453 (= lambda!15287 lambda!15276)))

(declare-fun bs!66454 () Bool)

(assert (= bs!66454 (and d!187638 d!187572)))

(assert (=> bs!66454 (= lambda!15287 lambda!15261)))

(declare-fun bs!66455 () Bool)

(assert (= bs!66455 (and d!187638 d!187576)))

(assert (=> bs!66455 (= lambda!15287 lambda!15263)))

(declare-fun bs!66456 () Bool)

(assert (= bs!66456 (and d!187638 d!187596)))

(assert (=> bs!66456 (= lambda!15287 lambda!15270)))

(declare-fun bs!66457 () Bool)

(assert (= bs!66457 (and d!187638 d!187604)))

(assert (=> bs!66457 (= lambda!15287 lambda!15272)))

(declare-fun bs!66458 () Bool)

(assert (= bs!66458 (and d!187638 d!187550)))

(assert (=> bs!66458 (= lambda!15287 lambda!15252)))

(declare-fun bs!66459 () Bool)

(assert (= bs!66459 (and d!187638 d!187566)))

(assert (=> bs!66459 (= lambda!15287 lambda!15257)))

(declare-fun bs!66460 () Bool)

(assert (= bs!66460 (and d!187638 d!187632)))

(assert (=> bs!66460 (= lambda!15287 lambda!15282)))

(declare-fun bs!66461 () Bool)

(assert (= bs!66461 (and d!187638 d!187564)))

(assert (=> bs!66461 (= lambda!15287 lambda!15256)))

(declare-fun bs!66462 () Bool)

(assert (= bs!66462 (and d!187638 d!187628)))

(assert (=> bs!66462 (= lambda!15287 lambda!15280)))

(declare-fun bs!66463 () Bool)

(assert (= bs!66463 (and d!187638 d!187610)))

(assert (=> bs!66463 (= lambda!15287 lambda!15273)))

(declare-fun bs!66464 () Bool)

(assert (= bs!66464 (and d!187638 d!187554)))

(assert (=> bs!66464 (= lambda!15287 lambda!15253)))

(declare-fun bs!66465 () Bool)

(assert (= bs!66465 (and d!187638 d!187618)))

(assert (=> bs!66465 (= lambda!15287 lambda!15275)))

(declare-fun bs!66466 () Bool)

(assert (= bs!66466 (and d!187638 d!187588)))

(assert (=> bs!66466 (= lambda!15287 lambda!15266)))

(declare-fun bs!66467 () Bool)

(assert (= bs!66467 (and d!187638 d!187558)))

(assert (=> bs!66467 (= lambda!15287 lambda!15254)))

(declare-fun bs!66468 () Bool)

(assert (= bs!66468 (and d!187638 d!187574)))

(assert (=> bs!66468 (= lambda!15287 lambda!15262)))

(declare-fun bs!66469 () Bool)

(assert (= bs!66469 (and d!187638 d!187626)))

(assert (=> bs!66469 (= lambda!15287 lambda!15279)))

(declare-fun bs!66470 () Bool)

(assert (= bs!66470 (and d!187638 d!187624)))

(assert (=> bs!66470 (= lambda!15287 lambda!15278)))

(declare-fun bs!66471 () Bool)

(assert (= bs!66471 (and d!187638 d!187546)))

(assert (=> bs!66471 (= lambda!15287 lambda!15248)))

(declare-fun bs!66472 () Bool)

(assert (= bs!66472 (and d!187638 d!187616)))

(assert (=> bs!66472 (= lambda!15287 lambda!15274)))

(declare-fun bs!66473 () Bool)

(assert (= bs!66473 (and d!187638 d!187602)))

(assert (=> bs!66473 (= lambda!15287 lambda!15271)))

(declare-fun bs!66474 () Bool)

(assert (= bs!66474 (and d!187638 d!187562)))

(assert (=> bs!66474 (= lambda!15287 lambda!15255)))

(declare-fun bs!66475 () Bool)

(assert (= bs!66475 (and d!187638 d!187622)))

(assert (=> bs!66475 (= lambda!15287 lambda!15277)))

(declare-fun bs!66476 () Bool)

(assert (= bs!66476 (and d!187638 d!187634)))

(assert (=> bs!66476 (= lambda!15287 lambda!15283)))

(declare-fun bs!66477 () Bool)

(assert (= bs!66477 (and d!187638 d!187580)))

(assert (=> bs!66477 (= lambda!15287 lambda!15265)))

(declare-fun bs!66478 () Bool)

(assert (= bs!66478 (and d!187638 d!187630)))

(assert (=> bs!66478 (= lambda!15287 lambda!15281)))

(assert (=> d!187638 (= (inv!6220 setElem!2512) (forall!1492 (exprs!657 setElem!2512) lambda!15287))))

(declare-fun bs!66479 () Bool)

(assert (= bs!66479 d!187638))

(declare-fun m!772924 () Bool)

(assert (=> bs!66479 m!772924))

(assert (=> setNonEmpty!2512 d!187638))

(declare-fun bs!66480 () Bool)

(declare-fun d!187640 () Bool)

(assert (= bs!66480 (and d!187640 d!187578)))

(declare-fun lambda!15288 () Int)

(assert (=> bs!66480 (= lambda!15288 lambda!15264)))

(declare-fun bs!66481 () Bool)

(assert (= bs!66481 (and d!187640 d!187620)))

(assert (=> bs!66481 (= lambda!15288 lambda!15276)))

(declare-fun bs!66482 () Bool)

(assert (= bs!66482 (and d!187640 d!187576)))

(assert (=> bs!66482 (= lambda!15288 lambda!15263)))

(declare-fun bs!66483 () Bool)

(assert (= bs!66483 (and d!187640 d!187596)))

(assert (=> bs!66483 (= lambda!15288 lambda!15270)))

(declare-fun bs!66484 () Bool)

(assert (= bs!66484 (and d!187640 d!187604)))

(assert (=> bs!66484 (= lambda!15288 lambda!15272)))

(declare-fun bs!66485 () Bool)

(assert (= bs!66485 (and d!187640 d!187550)))

(assert (=> bs!66485 (= lambda!15288 lambda!15252)))

(declare-fun bs!66486 () Bool)

(assert (= bs!66486 (and d!187640 d!187566)))

(assert (=> bs!66486 (= lambda!15288 lambda!15257)))

(declare-fun bs!66487 () Bool)

(assert (= bs!66487 (and d!187640 d!187632)))

(assert (=> bs!66487 (= lambda!15288 lambda!15282)))

(declare-fun bs!66488 () Bool)

(assert (= bs!66488 (and d!187640 d!187564)))

(assert (=> bs!66488 (= lambda!15288 lambda!15256)))

(declare-fun bs!66489 () Bool)

(assert (= bs!66489 (and d!187640 d!187628)))

(assert (=> bs!66489 (= lambda!15288 lambda!15280)))

(declare-fun bs!66490 () Bool)

(assert (= bs!66490 (and d!187640 d!187610)))

(assert (=> bs!66490 (= lambda!15288 lambda!15273)))

(declare-fun bs!66491 () Bool)

(assert (= bs!66491 (and d!187640 d!187554)))

(assert (=> bs!66491 (= lambda!15288 lambda!15253)))

(declare-fun bs!66492 () Bool)

(assert (= bs!66492 (and d!187640 d!187618)))

(assert (=> bs!66492 (= lambda!15288 lambda!15275)))

(declare-fun bs!66493 () Bool)

(assert (= bs!66493 (and d!187640 d!187588)))

(assert (=> bs!66493 (= lambda!15288 lambda!15266)))

(declare-fun bs!66494 () Bool)

(assert (= bs!66494 (and d!187640 d!187558)))

(assert (=> bs!66494 (= lambda!15288 lambda!15254)))

(declare-fun bs!66495 () Bool)

(assert (= bs!66495 (and d!187640 d!187638)))

(assert (=> bs!66495 (= lambda!15288 lambda!15287)))

(declare-fun bs!66496 () Bool)

(assert (= bs!66496 (and d!187640 d!187572)))

(assert (=> bs!66496 (= lambda!15288 lambda!15261)))

(declare-fun bs!66497 () Bool)

(assert (= bs!66497 (and d!187640 d!187574)))

(assert (=> bs!66497 (= lambda!15288 lambda!15262)))

(declare-fun bs!66498 () Bool)

(assert (= bs!66498 (and d!187640 d!187626)))

(assert (=> bs!66498 (= lambda!15288 lambda!15279)))

(declare-fun bs!66499 () Bool)

(assert (= bs!66499 (and d!187640 d!187624)))

(assert (=> bs!66499 (= lambda!15288 lambda!15278)))

(declare-fun bs!66500 () Bool)

(assert (= bs!66500 (and d!187640 d!187546)))

(assert (=> bs!66500 (= lambda!15288 lambda!15248)))

(declare-fun bs!66501 () Bool)

(assert (= bs!66501 (and d!187640 d!187616)))

(assert (=> bs!66501 (= lambda!15288 lambda!15274)))

(declare-fun bs!66502 () Bool)

(assert (= bs!66502 (and d!187640 d!187602)))

(assert (=> bs!66502 (= lambda!15288 lambda!15271)))

(declare-fun bs!66503 () Bool)

(assert (= bs!66503 (and d!187640 d!187562)))

(assert (=> bs!66503 (= lambda!15288 lambda!15255)))

(declare-fun bs!66504 () Bool)

(assert (= bs!66504 (and d!187640 d!187622)))

(assert (=> bs!66504 (= lambda!15288 lambda!15277)))

(declare-fun bs!66505 () Bool)

(assert (= bs!66505 (and d!187640 d!187634)))

(assert (=> bs!66505 (= lambda!15288 lambda!15283)))

(declare-fun bs!66506 () Bool)

(assert (= bs!66506 (and d!187640 d!187580)))

(assert (=> bs!66506 (= lambda!15288 lambda!15265)))

(declare-fun bs!66507 () Bool)

(assert (= bs!66507 (and d!187640 d!187630)))

(assert (=> bs!66507 (= lambda!15288 lambda!15281)))

(assert (=> d!187640 (= (inv!6220 (_1!3309 (_1!3310 (h!10361 mapValue!2315)))) (forall!1492 (exprs!657 (_1!3309 (_1!3310 (h!10361 mapValue!2315)))) lambda!15288))))

(declare-fun bs!66508 () Bool)

(assert (= bs!66508 d!187640))

(declare-fun m!772926 () Bool)

(assert (=> bs!66508 m!772926))

(assert (=> b!526944 d!187640))

(declare-fun d!187642 () Bool)

(assert (=> d!187642 (= (inv!6221 (xs!4244 (c!101075 input!747))) (<= (size!4044 (innerList!1665 (xs!4244 (c!101075 input!747)))) 2147483647))))

(declare-fun bs!66509 () Bool)

(assert (= bs!66509 d!187642))

(declare-fun m!772928 () Bool)

(assert (=> bs!66509 m!772928))

(assert (=> b!526958 d!187642))

(declare-fun bs!66510 () Bool)

(declare-fun d!187644 () Bool)

(assert (= bs!66510 (and d!187644 d!187578)))

(declare-fun lambda!15289 () Int)

(assert (=> bs!66510 (= lambda!15289 lambda!15264)))

(declare-fun bs!66511 () Bool)

(assert (= bs!66511 (and d!187644 d!187620)))

(assert (=> bs!66511 (= lambda!15289 lambda!15276)))

(declare-fun bs!66512 () Bool)

(assert (= bs!66512 (and d!187644 d!187576)))

(assert (=> bs!66512 (= lambda!15289 lambda!15263)))

(declare-fun bs!66513 () Bool)

(assert (= bs!66513 (and d!187644 d!187596)))

(assert (=> bs!66513 (= lambda!15289 lambda!15270)))

(declare-fun bs!66514 () Bool)

(assert (= bs!66514 (and d!187644 d!187604)))

(assert (=> bs!66514 (= lambda!15289 lambda!15272)))

(declare-fun bs!66515 () Bool)

(assert (= bs!66515 (and d!187644 d!187566)))

(assert (=> bs!66515 (= lambda!15289 lambda!15257)))

(declare-fun bs!66516 () Bool)

(assert (= bs!66516 (and d!187644 d!187632)))

(assert (=> bs!66516 (= lambda!15289 lambda!15282)))

(declare-fun bs!66517 () Bool)

(assert (= bs!66517 (and d!187644 d!187564)))

(assert (=> bs!66517 (= lambda!15289 lambda!15256)))

(declare-fun bs!66518 () Bool)

(assert (= bs!66518 (and d!187644 d!187628)))

(assert (=> bs!66518 (= lambda!15289 lambda!15280)))

(declare-fun bs!66519 () Bool)

(assert (= bs!66519 (and d!187644 d!187610)))

(assert (=> bs!66519 (= lambda!15289 lambda!15273)))

(declare-fun bs!66520 () Bool)

(assert (= bs!66520 (and d!187644 d!187554)))

(assert (=> bs!66520 (= lambda!15289 lambda!15253)))

(declare-fun bs!66521 () Bool)

(assert (= bs!66521 (and d!187644 d!187618)))

(assert (=> bs!66521 (= lambda!15289 lambda!15275)))

(declare-fun bs!66522 () Bool)

(assert (= bs!66522 (and d!187644 d!187588)))

(assert (=> bs!66522 (= lambda!15289 lambda!15266)))

(declare-fun bs!66523 () Bool)

(assert (= bs!66523 (and d!187644 d!187558)))

(assert (=> bs!66523 (= lambda!15289 lambda!15254)))

(declare-fun bs!66524 () Bool)

(assert (= bs!66524 (and d!187644 d!187638)))

(assert (=> bs!66524 (= lambda!15289 lambda!15287)))

(declare-fun bs!66525 () Bool)

(assert (= bs!66525 (and d!187644 d!187572)))

(assert (=> bs!66525 (= lambda!15289 lambda!15261)))

(declare-fun bs!66526 () Bool)

(assert (= bs!66526 (and d!187644 d!187574)))

(assert (=> bs!66526 (= lambda!15289 lambda!15262)))

(declare-fun bs!66527 () Bool)

(assert (= bs!66527 (and d!187644 d!187626)))

(assert (=> bs!66527 (= lambda!15289 lambda!15279)))

(declare-fun bs!66528 () Bool)

(assert (= bs!66528 (and d!187644 d!187624)))

(assert (=> bs!66528 (= lambda!15289 lambda!15278)))

(declare-fun bs!66529 () Bool)

(assert (= bs!66529 (and d!187644 d!187546)))

(assert (=> bs!66529 (= lambda!15289 lambda!15248)))

(declare-fun bs!66530 () Bool)

(assert (= bs!66530 (and d!187644 d!187616)))

(assert (=> bs!66530 (= lambda!15289 lambda!15274)))

(declare-fun bs!66531 () Bool)

(assert (= bs!66531 (and d!187644 d!187602)))

(assert (=> bs!66531 (= lambda!15289 lambda!15271)))

(declare-fun bs!66532 () Bool)

(assert (= bs!66532 (and d!187644 d!187562)))

(assert (=> bs!66532 (= lambda!15289 lambda!15255)))

(declare-fun bs!66533 () Bool)

(assert (= bs!66533 (and d!187644 d!187622)))

(assert (=> bs!66533 (= lambda!15289 lambda!15277)))

(declare-fun bs!66534 () Bool)

(assert (= bs!66534 (and d!187644 d!187634)))

(assert (=> bs!66534 (= lambda!15289 lambda!15283)))

(declare-fun bs!66535 () Bool)

(assert (= bs!66535 (and d!187644 d!187580)))

(assert (=> bs!66535 (= lambda!15289 lambda!15265)))

(declare-fun bs!66536 () Bool)

(assert (= bs!66536 (and d!187644 d!187630)))

(assert (=> bs!66536 (= lambda!15289 lambda!15281)))

(declare-fun bs!66537 () Bool)

(assert (= bs!66537 (and d!187644 d!187640)))

(assert (=> bs!66537 (= lambda!15289 lambda!15288)))

(declare-fun bs!66538 () Bool)

(assert (= bs!66538 (and d!187644 d!187550)))

(assert (=> bs!66538 (= lambda!15289 lambda!15252)))

(assert (=> d!187644 (= (inv!6220 (_1!3309 (_1!3310 (h!10361 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))) (forall!1492 (exprs!657 (_1!3309 (_1!3310 (h!10361 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))) lambda!15289))))

(declare-fun bs!66539 () Bool)

(assert (= bs!66539 d!187644))

(declare-fun m!772930 () Bool)

(assert (=> bs!66539 m!772930))

(assert (=> b!526921 d!187644))

(declare-fun b!527156 () Bool)

(declare-fun e!316909 () Bool)

(declare-fun tp!166793 () Bool)

(declare-fun tp!166794 () Bool)

(assert (=> b!527156 (= e!316909 (and tp!166793 tp!166794))))

(assert (=> b!527046 (= tp!166781 e!316909)))

(assert (= (and b!527046 ((_ is Cons!4955) (exprs!657 setElem!2540))) b!527156))

(declare-fun condSetEmpty!2545 () Bool)

(assert (=> setNonEmpty!2536 (= condSetEmpty!2545 (= setRest!2536 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2545 () Bool)

(assert (=> setNonEmpty!2536 (= tp!166745 setRes!2545)))

(declare-fun setIsEmpty!2545 () Bool)

(assert (=> setIsEmpty!2545 setRes!2545))

(declare-fun setNonEmpty!2545 () Bool)

(declare-fun tp!166800 () Bool)

(declare-fun setElem!2545 () Context!314)

(declare-fun e!316912 () Bool)

(assert (=> setNonEmpty!2545 (= setRes!2545 (and tp!166800 (inv!6220 setElem!2545) e!316912))))

(declare-fun setRest!2545 () (InoxSet Context!314))

(assert (=> setNonEmpty!2545 (= setRest!2536 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2545 true) setRest!2545))))

(declare-fun b!527161 () Bool)

(declare-fun tp!166799 () Bool)

(assert (=> b!527161 (= e!316912 tp!166799)))

(assert (= (and setNonEmpty!2536 condSetEmpty!2545) setIsEmpty!2545))

(assert (= (and setNonEmpty!2536 (not condSetEmpty!2545)) setNonEmpty!2545))

(assert (= setNonEmpty!2545 b!527161))

(declare-fun m!772932 () Bool)

(assert (=> setNonEmpty!2545 m!772932))

(declare-fun condSetEmpty!2546 () Bool)

(assert (=> setNonEmpty!2538 (= condSetEmpty!2546 (= setRest!2538 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2546 () Bool)

(assert (=> setNonEmpty!2538 (= tp!166755 setRes!2546)))

(declare-fun setIsEmpty!2546 () Bool)

(assert (=> setIsEmpty!2546 setRes!2546))

(declare-fun e!316913 () Bool)

(declare-fun tp!166802 () Bool)

(declare-fun setElem!2546 () Context!314)

(declare-fun setNonEmpty!2546 () Bool)

(assert (=> setNonEmpty!2546 (= setRes!2546 (and tp!166802 (inv!6220 setElem!2546) e!316913))))

(declare-fun setRest!2546 () (InoxSet Context!314))

(assert (=> setNonEmpty!2546 (= setRest!2538 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2546 true) setRest!2546))))

(declare-fun b!527162 () Bool)

(declare-fun tp!166801 () Bool)

(assert (=> b!527162 (= e!316913 tp!166801)))

(assert (= (and setNonEmpty!2538 condSetEmpty!2546) setIsEmpty!2546))

(assert (= (and setNonEmpty!2538 (not condSetEmpty!2546)) setNonEmpty!2546))

(assert (= setNonEmpty!2546 b!527162))

(declare-fun m!772934 () Bool)

(assert (=> setNonEmpty!2546 m!772934))

(declare-fun b!527163 () Bool)

(declare-fun e!316914 () Bool)

(declare-fun tp!166803 () Bool)

(declare-fun tp!166804 () Bool)

(assert (=> b!527163 (= e!316914 (and tp!166803 tp!166804))))

(assert (=> b!527044 (= tp!166782 e!316914)))

(assert (= (and b!527044 ((_ is Cons!4955) (exprs!657 (_2!3307 (_1!3308 (h!10358 mapDefault!2311)))))) b!527163))

(declare-fun condSetEmpty!2547 () Bool)

(assert (=> setNonEmpty!2537 (= condSetEmpty!2547 (= setRest!2537 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2547 () Bool)

(assert (=> setNonEmpty!2537 (= tp!166750 setRes!2547)))

(declare-fun setIsEmpty!2547 () Bool)

(assert (=> setIsEmpty!2547 setRes!2547))

(declare-fun e!316915 () Bool)

(declare-fun tp!166806 () Bool)

(declare-fun setElem!2547 () Context!314)

(declare-fun setNonEmpty!2547 () Bool)

(assert (=> setNonEmpty!2547 (= setRes!2547 (and tp!166806 (inv!6220 setElem!2547) e!316915))))

(declare-fun setRest!2547 () (InoxSet Context!314))

(assert (=> setNonEmpty!2547 (= setRest!2537 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2547 true) setRest!2547))))

(declare-fun b!527164 () Bool)

(declare-fun tp!166805 () Bool)

(assert (=> b!527164 (= e!316915 tp!166805)))

(assert (= (and setNonEmpty!2537 condSetEmpty!2547) setIsEmpty!2547))

(assert (= (and setNonEmpty!2537 (not condSetEmpty!2547)) setNonEmpty!2547))

(assert (= setNonEmpty!2547 b!527164))

(declare-fun m!772936 () Bool)

(assert (=> setNonEmpty!2547 m!772936))

(declare-fun b!527168 () Bool)

(declare-fun e!316916 () Bool)

(declare-fun tp!166810 () Bool)

(declare-fun tp!166808 () Bool)

(assert (=> b!527168 (= e!316916 (and tp!166810 tp!166808))))

(declare-fun b!527167 () Bool)

(declare-fun tp!166809 () Bool)

(assert (=> b!527167 (= e!316916 tp!166809)))

(declare-fun b!527166 () Bool)

(declare-fun tp!166811 () Bool)

(declare-fun tp!166807 () Bool)

(assert (=> b!527166 (= e!316916 (and tp!166811 tp!166807))))

(assert (=> b!527019 (= tp!166746 e!316916)))

(declare-fun b!527165 () Bool)

(assert (=> b!527165 (= e!316916 tp_is_empty!2797)))

(assert (= (and b!527019 ((_ is ElementMatch!1219) (_1!3307 (_1!3308 (h!10358 mapValue!2310))))) b!527165))

(assert (= (and b!527019 ((_ is Concat!2135) (_1!3307 (_1!3308 (h!10358 mapValue!2310))))) b!527166))

(assert (= (and b!527019 ((_ is Star!1219) (_1!3307 (_1!3308 (h!10358 mapValue!2310))))) b!527167))

(assert (= (and b!527019 ((_ is Union!1219) (_1!3307 (_1!3308 (h!10358 mapValue!2310))))) b!527168))

(declare-fun setIsEmpty!2548 () Bool)

(declare-fun setRes!2548 () Bool)

(assert (=> setIsEmpty!2548 setRes!2548))

(declare-fun b!527169 () Bool)

(declare-fun e!316918 () Bool)

(declare-fun tp!166816 () Bool)

(assert (=> b!527169 (= e!316918 tp!166816)))

(declare-fun e!316919 () Bool)

(assert (=> b!527019 (= tp!166744 e!316919)))

(declare-fun tp!166814 () Bool)

(declare-fun tp!166812 () Bool)

(declare-fun b!527170 () Bool)

(assert (=> b!527170 (= e!316919 (and tp!166814 (inv!6220 (_2!3307 (_1!3308 (h!10358 (t!73577 mapValue!2310))))) e!316918 tp_is_empty!2797 setRes!2548 tp!166812))))

(declare-fun condSetEmpty!2548 () Bool)

(assert (=> b!527170 (= condSetEmpty!2548 (= (_2!3308 (h!10358 (t!73577 mapValue!2310))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527171 () Bool)

(declare-fun e!316917 () Bool)

(declare-fun tp!166815 () Bool)

(assert (=> b!527171 (= e!316917 tp!166815)))

(declare-fun tp!166813 () Bool)

(declare-fun setElem!2548 () Context!314)

(declare-fun setNonEmpty!2548 () Bool)

(assert (=> setNonEmpty!2548 (= setRes!2548 (and tp!166813 (inv!6220 setElem!2548) e!316917))))

(declare-fun setRest!2548 () (InoxSet Context!314))

(assert (=> setNonEmpty!2548 (= (_2!3308 (h!10358 (t!73577 mapValue!2310))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2548 true) setRest!2548))))

(assert (= b!527170 b!527169))

(assert (= (and b!527170 condSetEmpty!2548) setIsEmpty!2548))

(assert (= (and b!527170 (not condSetEmpty!2548)) setNonEmpty!2548))

(assert (= setNonEmpty!2548 b!527171))

(assert (= (and b!527019 ((_ is Cons!4957) (t!73577 mapValue!2310))) b!527170))

(declare-fun m!772938 () Bool)

(assert (=> b!527170 m!772938))

(declare-fun m!772940 () Bool)

(assert (=> setNonEmpty!2548 m!772940))

(declare-fun condSetEmpty!2549 () Bool)

(assert (=> setNonEmpty!2541 (= condSetEmpty!2549 (= setRest!2541 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2549 () Bool)

(assert (=> setNonEmpty!2541 (= tp!166783 setRes!2549)))

(declare-fun setIsEmpty!2549 () Bool)

(assert (=> setIsEmpty!2549 setRes!2549))

(declare-fun setElem!2549 () Context!314)

(declare-fun e!316920 () Bool)

(declare-fun tp!166818 () Bool)

(declare-fun setNonEmpty!2549 () Bool)

(assert (=> setNonEmpty!2549 (= setRes!2549 (and tp!166818 (inv!6220 setElem!2549) e!316920))))

(declare-fun setRest!2549 () (InoxSet Context!314))

(assert (=> setNonEmpty!2549 (= setRest!2541 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2549 true) setRest!2549))))

(declare-fun b!527172 () Bool)

(declare-fun tp!166817 () Bool)

(assert (=> b!527172 (= e!316920 tp!166817)))

(assert (= (and setNonEmpty!2541 condSetEmpty!2549) setIsEmpty!2549))

(assert (= (and setNonEmpty!2541 (not condSetEmpty!2549)) setNonEmpty!2549))

(assert (= setNonEmpty!2549 b!527172))

(declare-fun m!772942 () Bool)

(assert (=> setNonEmpty!2549 m!772942))

(declare-fun b!527176 () Bool)

(declare-fun e!316921 () Bool)

(declare-fun tp!166822 () Bool)

(declare-fun tp!166820 () Bool)

(assert (=> b!527176 (= e!316921 (and tp!166822 tp!166820))))

(declare-fun b!527175 () Bool)

(declare-fun tp!166821 () Bool)

(assert (=> b!527175 (= e!316921 tp!166821)))

(declare-fun b!527174 () Bool)

(declare-fun tp!166823 () Bool)

(declare-fun tp!166819 () Bool)

(assert (=> b!527174 (= e!316921 (and tp!166823 tp!166819))))

(assert (=> b!527025 (= tp!166756 e!316921)))

(declare-fun b!527173 () Bool)

(assert (=> b!527173 (= e!316921 tp_is_empty!2797)))

(assert (= (and b!527025 ((_ is ElementMatch!1219) (_1!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527173))

(assert (= (and b!527025 ((_ is Concat!2135) (_1!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527174))

(assert (= (and b!527025 ((_ is Star!1219) (_1!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527175))

(assert (= (and b!527025 ((_ is Union!1219) (_1!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527176))

(declare-fun setIsEmpty!2550 () Bool)

(declare-fun setRes!2550 () Bool)

(assert (=> setIsEmpty!2550 setRes!2550))

(declare-fun b!527177 () Bool)

(declare-fun e!316923 () Bool)

(declare-fun tp!166828 () Bool)

(assert (=> b!527177 (= e!316923 tp!166828)))

(declare-fun e!316924 () Bool)

(assert (=> b!527025 (= tp!166754 e!316924)))

(declare-fun tp!166824 () Bool)

(declare-fun b!527178 () Bool)

(declare-fun tp!166826 () Bool)

(assert (=> b!527178 (= e!316924 (and tp!166826 (inv!6220 (_2!3307 (_1!3308 (h!10358 (t!73577 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) e!316923 tp_is_empty!2797 setRes!2550 tp!166824))))

(declare-fun condSetEmpty!2550 () Bool)

(assert (=> b!527178 (= condSetEmpty!2550 (= (_2!3308 (h!10358 (t!73577 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527179 () Bool)

(declare-fun e!316922 () Bool)

(declare-fun tp!166827 () Bool)

(assert (=> b!527179 (= e!316922 tp!166827)))

(declare-fun tp!166825 () Bool)

(declare-fun setNonEmpty!2550 () Bool)

(declare-fun setElem!2550 () Context!314)

(assert (=> setNonEmpty!2550 (= setRes!2550 (and tp!166825 (inv!6220 setElem!2550) e!316922))))

(declare-fun setRest!2550 () (InoxSet Context!314))

(assert (=> setNonEmpty!2550 (= (_2!3308 (h!10358 (t!73577 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2550 true) setRest!2550))))

(assert (= b!527178 b!527177))

(assert (= (and b!527178 condSetEmpty!2550) setIsEmpty!2550))

(assert (= (and b!527178 (not condSetEmpty!2550)) setNonEmpty!2550))

(assert (= setNonEmpty!2550 b!527179))

(assert (= (and b!527025 ((_ is Cons!4957) (t!73577 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))) b!527178))

(declare-fun m!772944 () Bool)

(assert (=> b!527178 m!772944))

(declare-fun m!772946 () Bool)

(assert (=> setNonEmpty!2550 m!772946))

(declare-fun b!527183 () Bool)

(declare-fun e!316925 () Bool)

(declare-fun tp!166832 () Bool)

(declare-fun tp!166830 () Bool)

(assert (=> b!527183 (= e!316925 (and tp!166832 tp!166830))))

(declare-fun b!527182 () Bool)

(declare-fun tp!166831 () Bool)

(assert (=> b!527182 (= e!316925 tp!166831)))

(declare-fun b!527181 () Bool)

(declare-fun tp!166833 () Bool)

(declare-fun tp!166829 () Bool)

(assert (=> b!527181 (= e!316925 (and tp!166833 tp!166829))))

(assert (=> b!527022 (= tp!166751 e!316925)))

(declare-fun b!527180 () Bool)

(assert (=> b!527180 (= e!316925 tp_is_empty!2797)))

(assert (= (and b!527022 ((_ is ElementMatch!1219) (_1!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527180))

(assert (= (and b!527022 ((_ is Concat!2135) (_1!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527181))

(assert (= (and b!527022 ((_ is Star!1219) (_1!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527182))

(assert (= (and b!527022 ((_ is Union!1219) (_1!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) b!527183))

(declare-fun setIsEmpty!2551 () Bool)

(declare-fun setRes!2551 () Bool)

(assert (=> setIsEmpty!2551 setRes!2551))

(declare-fun b!527184 () Bool)

(declare-fun e!316927 () Bool)

(declare-fun tp!166838 () Bool)

(assert (=> b!527184 (= e!316927 tp!166838)))

(declare-fun e!316928 () Bool)

(assert (=> b!527022 (= tp!166749 e!316928)))

(declare-fun b!527185 () Bool)

(declare-fun tp!166834 () Bool)

(declare-fun tp!166836 () Bool)

(assert (=> b!527185 (= e!316928 (and tp!166836 (inv!6220 (_2!3307 (_1!3308 (h!10358 (t!73577 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))))) e!316927 tp_is_empty!2797 setRes!2551 tp!166834))))

(declare-fun condSetEmpty!2551 () Bool)

(assert (=> b!527185 (= condSetEmpty!2551 (= (_2!3308 (h!10358 (t!73577 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527186 () Bool)

(declare-fun e!316926 () Bool)

(declare-fun tp!166837 () Bool)

(assert (=> b!527186 (= e!316926 tp!166837)))

(declare-fun setElem!2551 () Context!314)

(declare-fun setNonEmpty!2551 () Bool)

(declare-fun tp!166835 () Bool)

(assert (=> setNonEmpty!2551 (= setRes!2551 (and tp!166835 (inv!6220 setElem!2551) e!316926))))

(declare-fun setRest!2551 () (InoxSet Context!314))

(assert (=> setNonEmpty!2551 (= (_2!3308 (h!10358 (t!73577 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2551 true) setRest!2551))))

(assert (= b!527185 b!527184))

(assert (= (and b!527185 condSetEmpty!2551) setIsEmpty!2551))

(assert (= (and b!527185 (not condSetEmpty!2551)) setNonEmpty!2551))

(assert (= setNonEmpty!2551 b!527186))

(assert (= (and b!527022 ((_ is Cons!4957) (t!73577 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462))))))))) b!527185))

(declare-fun m!772948 () Bool)

(assert (=> b!527185 m!772948))

(declare-fun m!772950 () Bool)

(assert (=> setNonEmpty!2551 m!772950))

(declare-fun b!527187 () Bool)

(declare-fun e!316929 () Bool)

(declare-fun tp!166839 () Bool)

(declare-fun tp!166840 () Bool)

(assert (=> b!527187 (= e!316929 (and tp!166839 tp!166840))))

(assert (=> b!527029 (= tp!166761 e!316929)))

(assert (= (and b!527029 ((_ is Cons!4955) (exprs!657 setElem!2539))) b!527187))

(declare-fun b!527188 () Bool)

(declare-fun e!316930 () Bool)

(declare-fun tp!166841 () Bool)

(declare-fun tp!166842 () Bool)

(assert (=> b!527188 (= e!316930 (and tp!166841 tp!166842))))

(assert (=> b!527009 (= tp!166723 e!316930)))

(assert (= (and b!527009 ((_ is Cons!4955) (exprs!657 (_2!3307 (_1!3308 (h!10358 mapValue!2321)))))) b!527188))

(declare-fun b!527191 () Bool)

(declare-fun b_free!14013 () Bool)

(declare-fun b_next!14029 () Bool)

(assert (=> b!527191 (= b_free!14013 (not b_next!14029))))

(declare-fun tp!166845 () Bool)

(declare-fun b_and!51507 () Bool)

(assert (=> b!527191 (= tp!166845 b_and!51507)))

(declare-fun b_free!14015 () Bool)

(declare-fun b_next!14031 () Bool)

(assert (=> b!527191 (= b_free!14015 (not b_next!14031))))

(declare-fun tp!166843 () Bool)

(declare-fun b_and!51509 () Bool)

(assert (=> b!527191 (= tp!166843 b_and!51509)))

(declare-fun e!316933 () Bool)

(assert (=> b!527191 (= e!316933 (and tp!166845 tp!166843))))

(declare-fun tp!166846 () Bool)

(declare-fun b!527190 () Bool)

(declare-fun e!316931 () Bool)

(assert (=> b!527190 (= e!316931 (and tp!166846 (inv!6211 (tag!1154 (h!10360 (t!73579 (t!73579 rules!1345))))) (inv!6217 (transformation!892 (h!10360 (t!73579 (t!73579 rules!1345))))) e!316933))))

(declare-fun b!527189 () Bool)

(declare-fun e!316934 () Bool)

(declare-fun tp!166844 () Bool)

(assert (=> b!527189 (= e!316934 (and e!316931 tp!166844))))

(assert (=> b!527038 (= tp!166772 e!316934)))

(assert (= b!527190 b!527191))

(assert (= b!527189 b!527190))

(assert (= (and b!527038 ((_ is Cons!4959) (t!73579 (t!73579 rules!1345)))) b!527189))

(declare-fun m!772952 () Bool)

(assert (=> b!527190 m!772952))

(declare-fun m!772954 () Bool)

(assert (=> b!527190 m!772954))

(declare-fun setRes!2552 () Bool)

(declare-fun setElem!2552 () Context!314)

(declare-fun e!316935 () Bool)

(declare-fun setNonEmpty!2552 () Bool)

(declare-fun tp!166847 () Bool)

(assert (=> setNonEmpty!2552 (= setRes!2552 (and tp!166847 (inv!6220 setElem!2552) e!316935))))

(declare-fun setRest!2552 () (InoxSet Context!314))

(assert (=> setNonEmpty!2552 (= (_1!3305 (_1!3306 (h!10357 (t!73576 (zeroValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2552 true) setRest!2552))))

(declare-fun b!527192 () Bool)

(declare-fun e!316936 () Bool)

(declare-fun tp!166848 () Bool)

(assert (=> b!527192 (= e!316936 (and setRes!2552 tp!166848))))

(declare-fun condSetEmpty!2552 () Bool)

(assert (=> b!527192 (= condSetEmpty!2552 (= (_1!3305 (_1!3306 (h!10357 (t!73576 (zeroValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56)))))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!527047 (= tp!166784 e!316936)))

(declare-fun setIsEmpty!2552 () Bool)

(assert (=> setIsEmpty!2552 setRes!2552))

(declare-fun b!527193 () Bool)

(declare-fun tp!166849 () Bool)

(assert (=> b!527193 (= e!316935 tp!166849)))

(assert (= (and b!527192 condSetEmpty!2552) setIsEmpty!2552))

(assert (= (and b!527192 (not condSetEmpty!2552)) setNonEmpty!2552))

(assert (= setNonEmpty!2552 b!527193))

(assert (= (and b!527047 ((_ is Cons!4956) (t!73576 (zeroValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))))) b!527192))

(declare-fun m!772956 () Bool)

(assert (=> setNonEmpty!2552 m!772956))

(declare-fun b!527194 () Bool)

(declare-fun e!316937 () Bool)

(declare-fun tp!166850 () Bool)

(declare-fun tp!166851 () Bool)

(assert (=> b!527194 (= e!316937 (and tp!166850 tp!166851))))

(assert (=> b!527027 (= tp!166759 e!316937)))

(assert (= (and b!527027 ((_ is Cons!4955) (exprs!657 (_1!3309 (_1!3310 (h!10361 mapDefault!2310)))))) b!527194))

(declare-fun b!527195 () Bool)

(declare-fun e!316938 () Bool)

(declare-fun tp!166852 () Bool)

(declare-fun tp!166853 () Bool)

(assert (=> b!527195 (= e!316938 (and tp!166852 tp!166853))))

(assert (=> b!526948 (= tp!166651 e!316938)))

(assert (= (and b!526948 ((_ is Cons!4955) (exprs!657 setElem!2520))) b!527195))

(declare-fun setRes!2553 () Bool)

(declare-fun setElem!2553 () Context!314)

(declare-fun tp!166854 () Bool)

(declare-fun setNonEmpty!2553 () Bool)

(declare-fun e!316939 () Bool)

(assert (=> setNonEmpty!2553 (= setRes!2553 (and tp!166854 (inv!6220 setElem!2553) e!316939))))

(declare-fun setRest!2553 () (InoxSet Context!314))

(assert (=> setNonEmpty!2553 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapValue!2318)))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2553 true) setRest!2553))))

(declare-fun b!527196 () Bool)

(declare-fun e!316940 () Bool)

(declare-fun tp!166855 () Bool)

(assert (=> b!527196 (= e!316940 (and setRes!2553 tp!166855))))

(declare-fun condSetEmpty!2553 () Bool)

(assert (=> b!527196 (= condSetEmpty!2553 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapValue!2318)))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526973 (= tp!166676 e!316940)))

(declare-fun setIsEmpty!2553 () Bool)

(assert (=> setIsEmpty!2553 setRes!2553))

(declare-fun b!527197 () Bool)

(declare-fun tp!166856 () Bool)

(assert (=> b!527197 (= e!316939 tp!166856)))

(assert (= (and b!527196 condSetEmpty!2553) setIsEmpty!2553))

(assert (= (and b!527196 (not condSetEmpty!2553)) setNonEmpty!2553))

(assert (= setNonEmpty!2553 b!527197))

(assert (= (and b!526973 ((_ is Cons!4956) (t!73576 mapValue!2318))) b!527196))

(declare-fun m!772958 () Bool)

(assert (=> setNonEmpty!2553 m!772958))

(declare-fun condSetEmpty!2554 () Bool)

(assert (=> setNonEmpty!2527 (= condSetEmpty!2554 (= setRest!2527 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2554 () Bool)

(assert (=> setNonEmpty!2527 (= tp!166683 setRes!2554)))

(declare-fun setIsEmpty!2554 () Bool)

(assert (=> setIsEmpty!2554 setRes!2554))

(declare-fun setElem!2554 () Context!314)

(declare-fun setNonEmpty!2554 () Bool)

(declare-fun tp!166858 () Bool)

(declare-fun e!316941 () Bool)

(assert (=> setNonEmpty!2554 (= setRes!2554 (and tp!166858 (inv!6220 setElem!2554) e!316941))))

(declare-fun setRest!2554 () (InoxSet Context!314))

(assert (=> setNonEmpty!2554 (= setRest!2527 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2554 true) setRest!2554))))

(declare-fun b!527198 () Bool)

(declare-fun tp!166857 () Bool)

(assert (=> b!527198 (= e!316941 tp!166857)))

(assert (= (and setNonEmpty!2527 condSetEmpty!2554) setIsEmpty!2554))

(assert (= (and setNonEmpty!2527 (not condSetEmpty!2554)) setNonEmpty!2554))

(assert (= setNonEmpty!2554 b!527198))

(declare-fun m!772960 () Bool)

(assert (=> setNonEmpty!2554 m!772960))

(declare-fun b!527199 () Bool)

(declare-fun e!316942 () Bool)

(declare-fun tp!166859 () Bool)

(declare-fun tp!166860 () Bool)

(assert (=> b!527199 (= e!316942 (and tp!166859 tp!166860))))

(assert (=> b!527007 (= tp!166727 e!316942)))

(assert (= (and b!527007 ((_ is Cons!4955) (exprs!657 setElem!2532))) b!527199))

(declare-fun b!527200 () Bool)

(declare-fun e!316943 () Bool)

(declare-fun tp!166861 () Bool)

(declare-fun tp!166862 () Bool)

(assert (=> b!527200 (= e!316943 (and tp!166861 tp!166862))))

(assert (=> b!527050 (= tp!166788 e!316943)))

(assert (= (and b!527050 ((_ is Cons!4955) (exprs!657 setElem!2542))) b!527200))

(declare-fun b!527201 () Bool)

(declare-fun e!316944 () Bool)

(declare-fun tp!166863 () Bool)

(declare-fun tp!166864 () Bool)

(assert (=> b!527201 (= e!316944 (and tp!166863 tp!166864))))

(assert (=> b!526972 (= tp!166678 e!316944)))

(assert (= (and b!526972 ((_ is Cons!4955) (exprs!657 setElem!2525))) b!527201))

(declare-fun b!527205 () Bool)

(declare-fun e!316945 () Bool)

(declare-fun tp!166868 () Bool)

(declare-fun tp!166866 () Bool)

(assert (=> b!527205 (= e!316945 (and tp!166868 tp!166866))))

(declare-fun b!527204 () Bool)

(declare-fun tp!166867 () Bool)

(assert (=> b!527204 (= e!316945 tp!166867)))

(declare-fun b!527203 () Bool)

(declare-fun tp!166869 () Bool)

(declare-fun tp!166865 () Bool)

(assert (=> b!527203 (= e!316945 (and tp!166869 tp!166865))))

(assert (=> b!527006 (= tp!166729 e!316945)))

(declare-fun b!527202 () Bool)

(assert (=> b!527202 (= e!316945 tp_is_empty!2797)))

(assert (= (and b!527006 ((_ is ElementMatch!1219) (_1!3307 (_1!3308 (h!10358 mapDefault!2321))))) b!527202))

(assert (= (and b!527006 ((_ is Concat!2135) (_1!3307 (_1!3308 (h!10358 mapDefault!2321))))) b!527203))

(assert (= (and b!527006 ((_ is Star!1219) (_1!3307 (_1!3308 (h!10358 mapDefault!2321))))) b!527204))

(assert (= (and b!527006 ((_ is Union!1219) (_1!3307 (_1!3308 (h!10358 mapDefault!2321))))) b!527205))

(declare-fun setIsEmpty!2555 () Bool)

(declare-fun setRes!2555 () Bool)

(assert (=> setIsEmpty!2555 setRes!2555))

(declare-fun b!527206 () Bool)

(declare-fun e!316947 () Bool)

(declare-fun tp!166874 () Bool)

(assert (=> b!527206 (= e!316947 tp!166874)))

(declare-fun e!316948 () Bool)

(assert (=> b!527006 (= tp!166725 e!316948)))

(declare-fun tp!166870 () Bool)

(declare-fun b!527207 () Bool)

(declare-fun tp!166872 () Bool)

(assert (=> b!527207 (= e!316948 (and tp!166872 (inv!6220 (_2!3307 (_1!3308 (h!10358 (t!73577 mapDefault!2321))))) e!316947 tp_is_empty!2797 setRes!2555 tp!166870))))

(declare-fun condSetEmpty!2555 () Bool)

(assert (=> b!527207 (= condSetEmpty!2555 (= (_2!3308 (h!10358 (t!73577 mapDefault!2321))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527208 () Bool)

(declare-fun e!316946 () Bool)

(declare-fun tp!166873 () Bool)

(assert (=> b!527208 (= e!316946 tp!166873)))

(declare-fun tp!166871 () Bool)

(declare-fun setElem!2555 () Context!314)

(declare-fun setNonEmpty!2555 () Bool)

(assert (=> setNonEmpty!2555 (= setRes!2555 (and tp!166871 (inv!6220 setElem!2555) e!316946))))

(declare-fun setRest!2555 () (InoxSet Context!314))

(assert (=> setNonEmpty!2555 (= (_2!3308 (h!10358 (t!73577 mapDefault!2321))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2555 true) setRest!2555))))

(assert (= b!527207 b!527206))

(assert (= (and b!527207 condSetEmpty!2555) setIsEmpty!2555))

(assert (= (and b!527207 (not condSetEmpty!2555)) setNonEmpty!2555))

(assert (= setNonEmpty!2555 b!527208))

(assert (= (and b!527006 ((_ is Cons!4957) (t!73577 mapDefault!2321))) b!527207))

(declare-fun m!772962 () Bool)

(assert (=> b!527207 m!772962))

(declare-fun m!772964 () Bool)

(assert (=> setNonEmpty!2555 m!772964))

(declare-fun b!527212 () Bool)

(declare-fun e!316949 () Bool)

(declare-fun tp!166878 () Bool)

(declare-fun tp!166876 () Bool)

(assert (=> b!527212 (= e!316949 (and tp!166878 tp!166876))))

(declare-fun b!527211 () Bool)

(declare-fun tp!166877 () Bool)

(assert (=> b!527211 (= e!316949 tp!166877)))

(declare-fun b!527210 () Bool)

(declare-fun tp!166879 () Bool)

(declare-fun tp!166875 () Bool)

(assert (=> b!527210 (= e!316949 (and tp!166879 tp!166875))))

(assert (=> b!526989 (= tp!166699 e!316949)))

(declare-fun b!527209 () Bool)

(assert (=> b!527209 (= e!316949 tp_is_empty!2797)))

(assert (= (and b!526989 ((_ is ElementMatch!1219) (regOne!2951 (regex!892 (h!10360 rules!1345))))) b!527209))

(assert (= (and b!526989 ((_ is Concat!2135) (regOne!2951 (regex!892 (h!10360 rules!1345))))) b!527210))

(assert (= (and b!526989 ((_ is Star!1219) (regOne!2951 (regex!892 (h!10360 rules!1345))))) b!527211))

(assert (= (and b!526989 ((_ is Union!1219) (regOne!2951 (regex!892 (h!10360 rules!1345))))) b!527212))

(declare-fun b!527216 () Bool)

(declare-fun e!316950 () Bool)

(declare-fun tp!166883 () Bool)

(declare-fun tp!166881 () Bool)

(assert (=> b!527216 (= e!316950 (and tp!166883 tp!166881))))

(declare-fun b!527215 () Bool)

(declare-fun tp!166882 () Bool)

(assert (=> b!527215 (= e!316950 tp!166882)))

(declare-fun b!527214 () Bool)

(declare-fun tp!166884 () Bool)

(declare-fun tp!166880 () Bool)

(assert (=> b!527214 (= e!316950 (and tp!166884 tp!166880))))

(assert (=> b!526989 (= tp!166697 e!316950)))

(declare-fun b!527213 () Bool)

(assert (=> b!527213 (= e!316950 tp_is_empty!2797)))

(assert (= (and b!526989 ((_ is ElementMatch!1219) (regTwo!2951 (regex!892 (h!10360 rules!1345))))) b!527213))

(assert (= (and b!526989 ((_ is Concat!2135) (regTwo!2951 (regex!892 (h!10360 rules!1345))))) b!527214))

(assert (= (and b!526989 ((_ is Star!1219) (regTwo!2951 (regex!892 (h!10360 rules!1345))))) b!527215))

(assert (= (and b!526989 ((_ is Union!1219) (regTwo!2951 (regex!892 (h!10360 rules!1345))))) b!527216))

(declare-fun setIsEmpty!2556 () Bool)

(declare-fun setRes!2556 () Bool)

(assert (=> setIsEmpty!2556 setRes!2556))

(declare-fun b!527217 () Bool)

(declare-fun e!316951 () Bool)

(declare-fun tp!166885 () Bool)

(assert (=> b!527217 (= e!316951 tp!166885)))

(declare-fun b!527218 () Bool)

(declare-fun tp!166886 () Bool)

(declare-fun e!316953 () Bool)

(assert (=> b!527218 (= e!316953 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (t!73580 mapDefault!2315))))) e!316951 tp_is_empty!2797 setRes!2556 tp!166886))))

(declare-fun condSetEmpty!2556 () Bool)

(assert (=> b!527218 (= condSetEmpty!2556 (= (_2!3310 (h!10361 (t!73580 mapDefault!2315))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526945 (= tp!166647 e!316953)))

(declare-fun b!527219 () Bool)

(declare-fun e!316952 () Bool)

(declare-fun tp!166887 () Bool)

(assert (=> b!527219 (= e!316952 tp!166887)))

(declare-fun setElem!2556 () Context!314)

(declare-fun tp!166888 () Bool)

(declare-fun setNonEmpty!2556 () Bool)

(assert (=> setNonEmpty!2556 (= setRes!2556 (and tp!166888 (inv!6220 setElem!2556) e!316952))))

(declare-fun setRest!2556 () (InoxSet Context!314))

(assert (=> setNonEmpty!2556 (= (_2!3310 (h!10361 (t!73580 mapDefault!2315))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2556 true) setRest!2556))))

(assert (= b!527218 b!527217))

(assert (= (and b!527218 condSetEmpty!2556) setIsEmpty!2556))

(assert (= (and b!527218 (not condSetEmpty!2556)) setNonEmpty!2556))

(assert (= setNonEmpty!2556 b!527219))

(assert (= (and b!526945 ((_ is Cons!4960) (t!73580 mapDefault!2315))) b!527218))

(declare-fun m!772966 () Bool)

(assert (=> b!527218 m!772966))

(declare-fun m!772968 () Bool)

(assert (=> setNonEmpty!2556 m!772968))

(declare-fun b!527220 () Bool)

(declare-fun e!316954 () Bool)

(declare-fun tp!166889 () Bool)

(declare-fun tp!166890 () Bool)

(assert (=> b!527220 (= e!316954 (and tp!166889 tp!166890))))

(assert (=> b!526971 (= tp!166677 e!316954)))

(assert (= (and b!526971 ((_ is Cons!4955) (exprs!657 setElem!2526))) b!527220))

(declare-fun tp!166896 () Bool)

(declare-fun tp!166898 () Bool)

(declare-fun mapValue!2322 () List!4967)

(declare-fun setRes!2557 () Bool)

(declare-fun b!527221 () Bool)

(declare-fun e!316958 () Bool)

(declare-fun e!316960 () Bool)

(assert (=> b!527221 (= e!316958 (and tp!166898 (inv!6220 (_2!3307 (_1!3308 (h!10358 mapValue!2322)))) e!316960 tp_is_empty!2797 setRes!2557 tp!166896))))

(declare-fun condSetEmpty!2558 () Bool)

(assert (=> b!527221 (= condSetEmpty!2558 (= (_2!3308 (h!10358 mapValue!2322)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527222 () Bool)

(declare-fun e!316956 () Bool)

(declare-fun tp!166894 () Bool)

(assert (=> b!527222 (= e!316956 tp!166894)))

(declare-fun mapNonEmpty!2322 () Bool)

(declare-fun mapRes!2322 () Bool)

(declare-fun tp!166899 () Bool)

(assert (=> mapNonEmpty!2322 (= mapRes!2322 (and tp!166899 e!316958))))

(declare-fun mapRest!2322 () (Array (_ BitVec 32) List!4967))

(declare-fun mapKey!2322 () (_ BitVec 32))

(assert (=> mapNonEmpty!2322 (= mapRest!2321 (store mapRest!2322 mapKey!2322 mapValue!2322))))

(declare-fun setIsEmpty!2557 () Bool)

(assert (=> setIsEmpty!2557 setRes!2557))

(declare-fun tp!166893 () Bool)

(declare-fun e!316955 () Bool)

(declare-fun tp!166897 () Bool)

(declare-fun setRes!2558 () Bool)

(declare-fun mapDefault!2322 () List!4967)

(declare-fun b!527223 () Bool)

(declare-fun e!316957 () Bool)

(assert (=> b!527223 (= e!316955 (and tp!166897 (inv!6220 (_2!3307 (_1!3308 (h!10358 mapDefault!2322)))) e!316957 tp_is_empty!2797 setRes!2558 tp!166893))))

(declare-fun condSetEmpty!2557 () Bool)

(assert (=> b!527223 (= condSetEmpty!2557 (= (_2!3308 (h!10358 mapDefault!2322)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun setNonEmpty!2557 () Bool)

(declare-fun setElem!2558 () Context!314)

(declare-fun tp!166901 () Bool)

(assert (=> setNonEmpty!2557 (= setRes!2557 (and tp!166901 (inv!6220 setElem!2558) e!316956))))

(declare-fun setRest!2558 () (InoxSet Context!314))

(assert (=> setNonEmpty!2557 (= (_2!3308 (h!10358 mapValue!2322)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2558 true) setRest!2558))))

(declare-fun condMapEmpty!2322 () Bool)

(assert (=> mapNonEmpty!2321 (= condMapEmpty!2322 (= mapRest!2321 ((as const (Array (_ BitVec 32) List!4967)) mapDefault!2322)))))

(assert (=> mapNonEmpty!2321 (= tp!166731 (and e!316955 mapRes!2322))))

(declare-fun mapIsEmpty!2322 () Bool)

(assert (=> mapIsEmpty!2322 mapRes!2322))

(declare-fun b!527224 () Bool)

(declare-fun e!316959 () Bool)

(declare-fun tp!166895 () Bool)

(assert (=> b!527224 (= e!316959 tp!166895)))

(declare-fun setNonEmpty!2558 () Bool)

(declare-fun tp!166892 () Bool)

(declare-fun setElem!2557 () Context!314)

(assert (=> setNonEmpty!2558 (= setRes!2558 (and tp!166892 (inv!6220 setElem!2557) e!316959))))

(declare-fun setRest!2557 () (InoxSet Context!314))

(assert (=> setNonEmpty!2558 (= (_2!3308 (h!10358 mapDefault!2322)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2557 true) setRest!2557))))

(declare-fun setIsEmpty!2558 () Bool)

(assert (=> setIsEmpty!2558 setRes!2558))

(declare-fun b!527225 () Bool)

(declare-fun tp!166900 () Bool)

(assert (=> b!527225 (= e!316957 tp!166900)))

(declare-fun b!527226 () Bool)

(declare-fun tp!166891 () Bool)

(assert (=> b!527226 (= e!316960 tp!166891)))

(assert (= (and mapNonEmpty!2321 condMapEmpty!2322) mapIsEmpty!2322))

(assert (= (and mapNonEmpty!2321 (not condMapEmpty!2322)) mapNonEmpty!2322))

(assert (= b!527221 b!527226))

(assert (= (and b!527221 condSetEmpty!2558) setIsEmpty!2557))

(assert (= (and b!527221 (not condSetEmpty!2558)) setNonEmpty!2557))

(assert (= setNonEmpty!2557 b!527222))

(assert (= (and mapNonEmpty!2322 ((_ is Cons!4957) mapValue!2322)) b!527221))

(assert (= b!527223 b!527225))

(assert (= (and b!527223 condSetEmpty!2557) setIsEmpty!2558))

(assert (= (and b!527223 (not condSetEmpty!2557)) setNonEmpty!2558))

(assert (= setNonEmpty!2558 b!527224))

(assert (= (and mapNonEmpty!2321 ((_ is Cons!4957) mapDefault!2322)) b!527223))

(declare-fun m!772970 () Bool)

(assert (=> b!527223 m!772970))

(declare-fun m!772972 () Bool)

(assert (=> mapNonEmpty!2322 m!772972))

(declare-fun m!772974 () Bool)

(assert (=> b!527221 m!772974))

(declare-fun m!772976 () Bool)

(assert (=> setNonEmpty!2558 m!772976))

(declare-fun m!772978 () Bool)

(assert (=> setNonEmpty!2557 m!772978))

(declare-fun b!527230 () Bool)

(declare-fun e!316961 () Bool)

(declare-fun tp!166905 () Bool)

(declare-fun tp!166903 () Bool)

(assert (=> b!527230 (= e!316961 (and tp!166905 tp!166903))))

(declare-fun b!527229 () Bool)

(declare-fun tp!166904 () Bool)

(assert (=> b!527229 (= e!316961 tp!166904)))

(declare-fun b!527228 () Bool)

(declare-fun tp!166906 () Bool)

(declare-fun tp!166902 () Bool)

(assert (=> b!527228 (= e!316961 (and tp!166906 tp!166902))))

(assert (=> b!526987 (= tp!166700 e!316961)))

(declare-fun b!527227 () Bool)

(assert (=> b!527227 (= e!316961 tp_is_empty!2797)))

(assert (= (and b!526987 ((_ is ElementMatch!1219) (regOne!2950 (regex!892 (h!10360 rules!1345))))) b!527227))

(assert (= (and b!526987 ((_ is Concat!2135) (regOne!2950 (regex!892 (h!10360 rules!1345))))) b!527228))

(assert (= (and b!526987 ((_ is Star!1219) (regOne!2950 (regex!892 (h!10360 rules!1345))))) b!527229))

(assert (= (and b!526987 ((_ is Union!1219) (regOne!2950 (regex!892 (h!10360 rules!1345))))) b!527230))

(declare-fun b!527234 () Bool)

(declare-fun e!316962 () Bool)

(declare-fun tp!166910 () Bool)

(declare-fun tp!166908 () Bool)

(assert (=> b!527234 (= e!316962 (and tp!166910 tp!166908))))

(declare-fun b!527233 () Bool)

(declare-fun tp!166909 () Bool)

(assert (=> b!527233 (= e!316962 tp!166909)))

(declare-fun b!527232 () Bool)

(declare-fun tp!166911 () Bool)

(declare-fun tp!166907 () Bool)

(assert (=> b!527232 (= e!316962 (and tp!166911 tp!166907))))

(assert (=> b!526987 (= tp!166696 e!316962)))

(declare-fun b!527231 () Bool)

(assert (=> b!527231 (= e!316962 tp_is_empty!2797)))

(assert (= (and b!526987 ((_ is ElementMatch!1219) (regTwo!2950 (regex!892 (h!10360 rules!1345))))) b!527231))

(assert (= (and b!526987 ((_ is Concat!2135) (regTwo!2950 (regex!892 (h!10360 rules!1345))))) b!527232))

(assert (= (and b!526987 ((_ is Star!1219) (regTwo!2950 (regex!892 (h!10360 rules!1345))))) b!527233))

(assert (= (and b!526987 ((_ is Union!1219) (regTwo!2950 (regex!892 (h!10360 rules!1345))))) b!527234))

(declare-fun condSetEmpty!2559 () Bool)

(assert (=> setNonEmpty!2518 (= condSetEmpty!2559 (= setRest!2518 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2559 () Bool)

(assert (=> setNonEmpty!2518 (= tp!166642 setRes!2559)))

(declare-fun setIsEmpty!2559 () Bool)

(assert (=> setIsEmpty!2559 setRes!2559))

(declare-fun setNonEmpty!2559 () Bool)

(declare-fun e!316963 () Bool)

(declare-fun setElem!2559 () Context!314)

(declare-fun tp!166913 () Bool)

(assert (=> setNonEmpty!2559 (= setRes!2559 (and tp!166913 (inv!6220 setElem!2559) e!316963))))

(declare-fun setRest!2559 () (InoxSet Context!314))

(assert (=> setNonEmpty!2559 (= setRest!2518 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2559 true) setRest!2559))))

(declare-fun b!527235 () Bool)

(declare-fun tp!166912 () Bool)

(assert (=> b!527235 (= e!316963 tp!166912)))

(assert (= (and setNonEmpty!2518 condSetEmpty!2559) setIsEmpty!2559))

(assert (= (and setNonEmpty!2518 (not condSetEmpty!2559)) setNonEmpty!2559))

(assert (= setNonEmpty!2559 b!527235))

(declare-fun m!772980 () Bool)

(assert (=> setNonEmpty!2559 m!772980))

(declare-fun b!527240 () Bool)

(declare-fun e!316966 () Bool)

(declare-fun tp!166916 () Bool)

(assert (=> b!527240 (= e!316966 (and tp_is_empty!2797 tp!166916))))

(assert (=> b!526959 (= tp!166660 e!316966)))

(assert (= (and b!526959 ((_ is Cons!4954) (innerList!1665 (xs!4244 (c!101075 input!747))))) b!527240))

(declare-fun b!527244 () Bool)

(declare-fun e!316967 () Bool)

(declare-fun tp!166920 () Bool)

(declare-fun tp!166918 () Bool)

(assert (=> b!527244 (= e!316967 (and tp!166920 tp!166918))))

(declare-fun b!527243 () Bool)

(declare-fun tp!166919 () Bool)

(assert (=> b!527243 (= e!316967 tp!166919)))

(declare-fun b!527242 () Bool)

(declare-fun tp!166921 () Bool)

(declare-fun tp!166917 () Bool)

(assert (=> b!527242 (= e!316967 (and tp!166921 tp!166917))))

(assert (=> b!527004 (= tp!166730 e!316967)))

(declare-fun b!527241 () Bool)

(assert (=> b!527241 (= e!316967 tp_is_empty!2797)))

(assert (= (and b!527004 ((_ is ElementMatch!1219) (_1!3307 (_1!3308 (h!10358 mapValue!2321))))) b!527241))

(assert (= (and b!527004 ((_ is Concat!2135) (_1!3307 (_1!3308 (h!10358 mapValue!2321))))) b!527242))

(assert (= (and b!527004 ((_ is Star!1219) (_1!3307 (_1!3308 (h!10358 mapValue!2321))))) b!527243))

(assert (= (and b!527004 ((_ is Union!1219) (_1!3307 (_1!3308 (h!10358 mapValue!2321))))) b!527244))

(declare-fun setIsEmpty!2560 () Bool)

(declare-fun setRes!2560 () Bool)

(assert (=> setIsEmpty!2560 setRes!2560))

(declare-fun b!527245 () Bool)

(declare-fun e!316969 () Bool)

(declare-fun tp!166926 () Bool)

(assert (=> b!527245 (= e!316969 tp!166926)))

(declare-fun e!316970 () Bool)

(assert (=> b!527004 (= tp!166728 e!316970)))

(declare-fun tp!166922 () Bool)

(declare-fun tp!166924 () Bool)

(declare-fun b!527246 () Bool)

(assert (=> b!527246 (= e!316970 (and tp!166924 (inv!6220 (_2!3307 (_1!3308 (h!10358 (t!73577 mapValue!2321))))) e!316969 tp_is_empty!2797 setRes!2560 tp!166922))))

(declare-fun condSetEmpty!2560 () Bool)

(assert (=> b!527246 (= condSetEmpty!2560 (= (_2!3308 (h!10358 (t!73577 mapValue!2321))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527247 () Bool)

(declare-fun e!316968 () Bool)

(declare-fun tp!166925 () Bool)

(assert (=> b!527247 (= e!316968 tp!166925)))

(declare-fun setNonEmpty!2560 () Bool)

(declare-fun setElem!2560 () Context!314)

(declare-fun tp!166923 () Bool)

(assert (=> setNonEmpty!2560 (= setRes!2560 (and tp!166923 (inv!6220 setElem!2560) e!316968))))

(declare-fun setRest!2560 () (InoxSet Context!314))

(assert (=> setNonEmpty!2560 (= (_2!3308 (h!10358 (t!73577 mapValue!2321))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2560 true) setRest!2560))))

(assert (= b!527246 b!527245))

(assert (= (and b!527246 condSetEmpty!2560) setIsEmpty!2560))

(assert (= (and b!527246 (not condSetEmpty!2560)) setNonEmpty!2560))

(assert (= setNonEmpty!2560 b!527247))

(assert (= (and b!527004 ((_ is Cons!4957) (t!73577 mapValue!2321))) b!527246))

(declare-fun m!772982 () Bool)

(assert (=> b!527246 m!772982))

(declare-fun m!772984 () Bool)

(assert (=> setNonEmpty!2560 m!772984))

(declare-fun b!527248 () Bool)

(declare-fun e!316971 () Bool)

(declare-fun tp!166927 () Bool)

(declare-fun tp!166928 () Bool)

(assert (=> b!527248 (= e!316971 (and tp!166927 tp!166928))))

(assert (=> b!526922 (= tp!166616 e!316971)))

(assert (= (and b!526922 ((_ is Cons!4955) (exprs!657 setElem!2512))) b!527248))

(declare-fun b!527249 () Bool)

(declare-fun e!316972 () Bool)

(declare-fun tp!166929 () Bool)

(declare-fun tp!166930 () Bool)

(assert (=> b!527249 (= e!316972 (and tp!166929 tp!166930))))

(assert (=> b!526943 (= tp!166645 e!316972)))

(assert (= (and b!526943 ((_ is Cons!4955) (exprs!657 (_1!3309 (_1!3310 (h!10361 mapDefault!2315)))))) b!527249))

(declare-fun condSetEmpty!2561 () Bool)

(assert (=> setNonEmpty!2513 (= condSetEmpty!2561 (= setRest!2513 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2561 () Bool)

(assert (=> setNonEmpty!2513 (= tp!166621 setRes!2561)))

(declare-fun setIsEmpty!2561 () Bool)

(assert (=> setIsEmpty!2561 setRes!2561))

(declare-fun tp!166932 () Bool)

(declare-fun setElem!2561 () Context!314)

(declare-fun setNonEmpty!2561 () Bool)

(declare-fun e!316973 () Bool)

(assert (=> setNonEmpty!2561 (= setRes!2561 (and tp!166932 (inv!6220 setElem!2561) e!316973))))

(declare-fun setRest!2561 () (InoxSet Context!314))

(assert (=> setNonEmpty!2561 (= setRest!2513 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2561 true) setRest!2561))))

(declare-fun b!527250 () Bool)

(declare-fun tp!166931 () Bool)

(assert (=> b!527250 (= e!316973 tp!166931)))

(assert (= (and setNonEmpty!2513 condSetEmpty!2561) setIsEmpty!2561))

(assert (= (and setNonEmpty!2513 (not condSetEmpty!2561)) setNonEmpty!2561))

(assert (= setNonEmpty!2561 b!527250))

(declare-fun m!772986 () Bool)

(assert (=> setNonEmpty!2561 m!772986))

(declare-fun e!316975 () Bool)

(declare-fun b!527251 () Bool)

(declare-fun tp!166935 () Bool)

(declare-fun tp!166933 () Bool)

(assert (=> b!527251 (= e!316975 (and (inv!6212 (left!4218 (left!4218 (c!101075 input!747)))) tp!166933 (inv!6212 (right!4548 (left!4218 (c!101075 input!747)))) tp!166935))))

(declare-fun b!527253 () Bool)

(declare-fun e!316974 () Bool)

(declare-fun tp!166934 () Bool)

(assert (=> b!527253 (= e!316974 tp!166934)))

(declare-fun b!527252 () Bool)

(assert (=> b!527252 (= e!316975 (and (inv!6221 (xs!4244 (left!4218 (c!101075 input!747)))) e!316974))))

(assert (=> b!526957 (= tp!166659 (and (inv!6212 (left!4218 (c!101075 input!747))) e!316975))))

(assert (= (and b!526957 ((_ is Node!1607) (left!4218 (c!101075 input!747)))) b!527251))

(assert (= b!527252 b!527253))

(assert (= (and b!526957 ((_ is Leaf!2557) (left!4218 (c!101075 input!747)))) b!527252))

(declare-fun m!772988 () Bool)

(assert (=> b!527251 m!772988))

(declare-fun m!772990 () Bool)

(assert (=> b!527251 m!772990))

(declare-fun m!772992 () Bool)

(assert (=> b!527252 m!772992))

(assert (=> b!526957 m!772701))

(declare-fun tp!166938 () Bool)

(declare-fun b!527254 () Bool)

(declare-fun tp!166936 () Bool)

(declare-fun e!316977 () Bool)

(assert (=> b!527254 (= e!316977 (and (inv!6212 (left!4218 (right!4548 (c!101075 input!747)))) tp!166936 (inv!6212 (right!4548 (right!4548 (c!101075 input!747)))) tp!166938))))

(declare-fun b!527256 () Bool)

(declare-fun e!316976 () Bool)

(declare-fun tp!166937 () Bool)

(assert (=> b!527256 (= e!316976 tp!166937)))

(declare-fun b!527255 () Bool)

(assert (=> b!527255 (= e!316977 (and (inv!6221 (xs!4244 (right!4548 (c!101075 input!747)))) e!316976))))

(assert (=> b!526957 (= tp!166661 (and (inv!6212 (right!4548 (c!101075 input!747))) e!316977))))

(assert (= (and b!526957 ((_ is Node!1607) (right!4548 (c!101075 input!747)))) b!527254))

(assert (= b!527255 b!527256))

(assert (= (and b!526957 ((_ is Leaf!2557) (right!4548 (c!101075 input!747)))) b!527255))

(declare-fun m!772994 () Bool)

(assert (=> b!527254 m!772994))

(declare-fun m!772996 () Bool)

(assert (=> b!527254 m!772996))

(declare-fun m!772998 () Bool)

(assert (=> b!527255 m!772998))

(assert (=> b!526957 m!772703))

(declare-fun b!527257 () Bool)

(declare-fun e!316978 () Bool)

(declare-fun tp!166939 () Bool)

(declare-fun tp!166940 () Bool)

(assert (=> b!527257 (= e!316978 (and tp!166939 tp!166940))))

(assert (=> b!526920 (= tp!166614 e!316978)))

(assert (= (and b!526920 ((_ is Cons!4955) (exprs!657 (_1!3309 (_1!3310 (h!10361 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))))) b!527257))

(declare-fun setIsEmpty!2562 () Bool)

(declare-fun setRes!2562 () Bool)

(assert (=> setIsEmpty!2562 setRes!2562))

(declare-fun b!527258 () Bool)

(declare-fun e!316979 () Bool)

(declare-fun tp!166941 () Bool)

(assert (=> b!527258 (= e!316979 tp!166941)))

(declare-fun tp!166942 () Bool)

(declare-fun b!527259 () Bool)

(declare-fun e!316981 () Bool)

(assert (=> b!527259 (= e!316981 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (t!73580 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))))) e!316979 tp_is_empty!2797 setRes!2562 tp!166942))))

(declare-fun condSetEmpty!2562 () Bool)

(assert (=> b!527259 (= condSetEmpty!2562 (= (_2!3310 (h!10361 (t!73580 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526924 (= tp!166619 e!316981)))

(declare-fun b!527260 () Bool)

(declare-fun e!316980 () Bool)

(declare-fun tp!166943 () Bool)

(assert (=> b!527260 (= e!316980 tp!166943)))

(declare-fun tp!166944 () Bool)

(declare-fun setNonEmpty!2562 () Bool)

(declare-fun setElem!2562 () Context!314)

(assert (=> setNonEmpty!2562 (= setRes!2562 (and tp!166944 (inv!6220 setElem!2562) e!316980))))

(declare-fun setRest!2562 () (InoxSet Context!314))

(assert (=> setNonEmpty!2562 (= (_2!3310 (h!10361 (t!73580 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2562 true) setRest!2562))))

(assert (= b!527259 b!527258))

(assert (= (and b!527259 condSetEmpty!2562) setIsEmpty!2562))

(assert (= (and b!527259 (not condSetEmpty!2562)) setNonEmpty!2562))

(assert (= setNonEmpty!2562 b!527260))

(assert (= (and b!526924 ((_ is Cons!4960) (t!73580 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))) b!527259))

(declare-fun m!773000 () Bool)

(assert (=> b!527259 m!773000))

(declare-fun m!773002 () Bool)

(assert (=> setNonEmpty!2562 m!773002))

(declare-fun condSetEmpty!2563 () Bool)

(assert (=> setNonEmpty!2540 (= condSetEmpty!2563 (= setRest!2540 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2563 () Bool)

(assert (=> setNonEmpty!2540 (= tp!166779 setRes!2563)))

(declare-fun setIsEmpty!2563 () Bool)

(assert (=> setIsEmpty!2563 setRes!2563))

(declare-fun setNonEmpty!2563 () Bool)

(declare-fun setElem!2563 () Context!314)

(declare-fun e!316982 () Bool)

(declare-fun tp!166946 () Bool)

(assert (=> setNonEmpty!2563 (= setRes!2563 (and tp!166946 (inv!6220 setElem!2563) e!316982))))

(declare-fun setRest!2563 () (InoxSet Context!314))

(assert (=> setNonEmpty!2563 (= setRest!2540 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2563 true) setRest!2563))))

(declare-fun b!527261 () Bool)

(declare-fun tp!166945 () Bool)

(assert (=> b!527261 (= e!316982 tp!166945)))

(assert (= (and setNonEmpty!2540 condSetEmpty!2563) setIsEmpty!2563))

(assert (= (and setNonEmpty!2540 (not condSetEmpty!2563)) setNonEmpty!2563))

(assert (= setNonEmpty!2563 b!527261))

(declare-fun m!773004 () Bool)

(assert (=> setNonEmpty!2563 m!773004))

(declare-fun b!527262 () Bool)

(declare-fun e!316983 () Bool)

(declare-fun tp!166947 () Bool)

(declare-fun tp!166948 () Bool)

(assert (=> b!527262 (= e!316983 (and tp!166947 tp!166948))))

(assert (=> b!526940 (= tp!166643 e!316983)))

(assert (= (and b!526940 ((_ is Cons!4955) (exprs!657 setElem!2518))) b!527262))

(declare-fun b!527266 () Bool)

(declare-fun e!316984 () Bool)

(declare-fun tp!166952 () Bool)

(declare-fun tp!166950 () Bool)

(assert (=> b!527266 (= e!316984 (and tp!166952 tp!166950))))

(declare-fun b!527265 () Bool)

(declare-fun tp!166951 () Bool)

(assert (=> b!527265 (= e!316984 tp!166951)))

(declare-fun b!527264 () Bool)

(declare-fun tp!166953 () Bool)

(declare-fun tp!166949 () Bool)

(assert (=> b!527264 (= e!316984 (and tp!166953 tp!166949))))

(assert (=> b!527045 (= tp!166780 e!316984)))

(declare-fun b!527263 () Bool)

(assert (=> b!527263 (= e!316984 tp_is_empty!2797)))

(assert (= (and b!527045 ((_ is ElementMatch!1219) (_1!3307 (_1!3308 (h!10358 mapDefault!2311))))) b!527263))

(assert (= (and b!527045 ((_ is Concat!2135) (_1!3307 (_1!3308 (h!10358 mapDefault!2311))))) b!527264))

(assert (= (and b!527045 ((_ is Star!1219) (_1!3307 (_1!3308 (h!10358 mapDefault!2311))))) b!527265))

(assert (= (and b!527045 ((_ is Union!1219) (_1!3307 (_1!3308 (h!10358 mapDefault!2311))))) b!527266))

(declare-fun setIsEmpty!2564 () Bool)

(declare-fun setRes!2564 () Bool)

(assert (=> setIsEmpty!2564 setRes!2564))

(declare-fun b!527267 () Bool)

(declare-fun e!316986 () Bool)

(declare-fun tp!166958 () Bool)

(assert (=> b!527267 (= e!316986 tp!166958)))

(declare-fun e!316987 () Bool)

(assert (=> b!527045 (= tp!166778 e!316987)))

(declare-fun tp!166954 () Bool)

(declare-fun tp!166956 () Bool)

(declare-fun b!527268 () Bool)

(assert (=> b!527268 (= e!316987 (and tp!166956 (inv!6220 (_2!3307 (_1!3308 (h!10358 (t!73577 mapDefault!2311))))) e!316986 tp_is_empty!2797 setRes!2564 tp!166954))))

(declare-fun condSetEmpty!2564 () Bool)

(assert (=> b!527268 (= condSetEmpty!2564 (= (_2!3308 (h!10358 (t!73577 mapDefault!2311))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun b!527269 () Bool)

(declare-fun e!316985 () Bool)

(declare-fun tp!166957 () Bool)

(assert (=> b!527269 (= e!316985 tp!166957)))

(declare-fun setElem!2564 () Context!314)

(declare-fun tp!166955 () Bool)

(declare-fun setNonEmpty!2564 () Bool)

(assert (=> setNonEmpty!2564 (= setRes!2564 (and tp!166955 (inv!6220 setElem!2564) e!316985))))

(declare-fun setRest!2564 () (InoxSet Context!314))

(assert (=> setNonEmpty!2564 (= (_2!3308 (h!10358 (t!73577 mapDefault!2311))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2564 true) setRest!2564))))

(assert (= b!527268 b!527267))

(assert (= (and b!527268 condSetEmpty!2564) setIsEmpty!2564))

(assert (= (and b!527268 (not condSetEmpty!2564)) setNonEmpty!2564))

(assert (= setNonEmpty!2564 b!527269))

(assert (= (and b!527045 ((_ is Cons!4957) (t!73577 mapDefault!2311))) b!527268))

(declare-fun m!773006 () Bool)

(assert (=> b!527268 m!773006))

(declare-fun m!773008 () Bool)

(assert (=> setNonEmpty!2564 m!773008))

(declare-fun b!527270 () Bool)

(declare-fun e!316988 () Bool)

(declare-fun tp!166959 () Bool)

(assert (=> b!527270 (= e!316988 (and tp_is_empty!2797 tp!166959))))

(assert (=> b!527043 (= tp!166776 e!316988)))

(assert (= (and b!527043 ((_ is Cons!4954) (innerList!1665 (xs!4244 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))))) b!527270))

(declare-fun b!527271 () Bool)

(declare-fun e!316989 () Bool)

(declare-fun tp!166960 () Bool)

(declare-fun tp!166961 () Bool)

(assert (=> b!527271 (= e!316989 (and tp!166960 tp!166961))))

(assert (=> b!527023 (= tp!166752 e!316989)))

(assert (= (and b!527023 ((_ is Cons!4955) (exprs!657 setElem!2537))) b!527271))

(declare-fun tp!166964 () Bool)

(declare-fun e!316991 () Bool)

(declare-fun b!527272 () Bool)

(declare-fun tp!166962 () Bool)

(assert (=> b!527272 (= e!316991 (and (inv!6212 (left!4218 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) tp!166962 (inv!6212 (right!4548 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) tp!166964))))

(declare-fun b!527274 () Bool)

(declare-fun e!316990 () Bool)

(declare-fun tp!166963 () Bool)

(assert (=> b!527274 (= e!316990 tp!166963)))

(declare-fun b!527273 () Bool)

(assert (=> b!527273 (= e!316991 (and (inv!6221 (xs!4244 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) e!316990))))

(assert (=> b!527041 (= tp!166775 (and (inv!6212 (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) e!316991))))

(assert (= (and b!527041 ((_ is Node!1607) (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) b!527272))

(assert (= b!527273 b!527274))

(assert (= (and b!527041 ((_ is Leaf!2557) (left!4218 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) b!527273))

(declare-fun m!773010 () Bool)

(assert (=> b!527272 m!773010))

(declare-fun m!773012 () Bool)

(assert (=> b!527272 m!773012))

(declare-fun m!773014 () Bool)

(assert (=> b!527273 m!773014))

(assert (=> b!527041 m!772745))

(declare-fun e!316993 () Bool)

(declare-fun tp!166965 () Bool)

(declare-fun tp!166967 () Bool)

(declare-fun b!527275 () Bool)

(assert (=> b!527275 (= e!316993 (and (inv!6212 (left!4218 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) tp!166965 (inv!6212 (right!4548 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) tp!166967))))

(declare-fun b!527277 () Bool)

(declare-fun e!316992 () Bool)

(declare-fun tp!166966 () Bool)

(assert (=> b!527277 (= e!316992 tp!166966)))

(declare-fun b!527276 () Bool)

(assert (=> b!527276 (= e!316993 (and (inv!6221 (xs!4244 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) e!316992))))

(assert (=> b!527041 (= tp!166777 (and (inv!6212 (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56)))) e!316993))))

(assert (= (and b!527041 ((_ is Node!1607) (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) b!527275))

(assert (= b!527276 b!527277))

(assert (= (and b!527041 ((_ is Leaf!2557) (right!4548 (c!101075 (totalInput!1748 cacheFurthestNullable!56))))) b!527276))

(declare-fun m!773016 () Bool)

(assert (=> b!527275 m!773016))

(declare-fun m!773018 () Bool)

(assert (=> b!527275 m!773018))

(declare-fun m!773020 () Bool)

(assert (=> b!527276 m!773020))

(assert (=> b!527041 m!772747))

(declare-fun b!527278 () Bool)

(declare-fun e!316994 () Bool)

(declare-fun tp!166968 () Bool)

(declare-fun tp!166969 () Bool)

(assert (=> b!527278 (= e!316994 (and tp!166968 tp!166969))))

(assert (=> b!527020 (= tp!166747 e!316994)))

(assert (= (and b!527020 ((_ is Cons!4955) (exprs!657 setElem!2536))) b!527278))

(declare-fun condSetEmpty!2565 () Bool)

(assert (=> setNonEmpty!2539 (= condSetEmpty!2565 (= setRest!2539 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2565 () Bool)

(assert (=> setNonEmpty!2539 (= tp!166762 setRes!2565)))

(declare-fun setIsEmpty!2565 () Bool)

(assert (=> setIsEmpty!2565 setRes!2565))

(declare-fun setElem!2565 () Context!314)

(declare-fun setNonEmpty!2565 () Bool)

(declare-fun e!316995 () Bool)

(declare-fun tp!166971 () Bool)

(assert (=> setNonEmpty!2565 (= setRes!2565 (and tp!166971 (inv!6220 setElem!2565) e!316995))))

(declare-fun setRest!2565 () (InoxSet Context!314))

(assert (=> setNonEmpty!2565 (= setRest!2539 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2565 true) setRest!2565))))

(declare-fun b!527279 () Bool)

(declare-fun tp!166970 () Bool)

(assert (=> b!527279 (= e!316995 tp!166970)))

(assert (= (and setNonEmpty!2539 condSetEmpty!2565) setIsEmpty!2565))

(assert (= (and setNonEmpty!2539 (not condSetEmpty!2565)) setNonEmpty!2565))

(assert (= setNonEmpty!2565 b!527279))

(declare-fun m!773022 () Bool)

(assert (=> setNonEmpty!2565 m!773022))

(declare-fun b!527280 () Bool)

(declare-fun e!316996 () Bool)

(declare-fun tp!166972 () Bool)

(declare-fun tp!166973 () Bool)

(assert (=> b!527280 (= e!316996 (and tp!166972 tp!166973))))

(assert (=> b!527048 (= tp!166785 e!316996)))

(assert (= (and b!527048 ((_ is Cons!4955) (exprs!657 setElem!2541))) b!527280))

(declare-fun b!527281 () Bool)

(declare-fun e!316997 () Bool)

(declare-fun tp!166974 () Bool)

(declare-fun tp!166975 () Bool)

(assert (=> b!527281 (= e!316997 (and tp!166974 tp!166975))))

(assert (=> b!527026 (= tp!166757 e!316997)))

(assert (= (and b!527026 ((_ is Cons!4955) (exprs!657 setElem!2538))) b!527281))

(declare-fun b!527285 () Bool)

(declare-fun e!316998 () Bool)

(declare-fun tp!166979 () Bool)

(declare-fun tp!166977 () Bool)

(assert (=> b!527285 (= e!316998 (and tp!166979 tp!166977))))

(declare-fun b!527284 () Bool)

(declare-fun tp!166978 () Bool)

(assert (=> b!527284 (= e!316998 tp!166978)))

(declare-fun b!527283 () Bool)

(declare-fun tp!166980 () Bool)

(declare-fun tp!166976 () Bool)

(assert (=> b!527283 (= e!316998 (and tp!166980 tp!166976))))

(assert (=> b!527039 (= tp!166774 e!316998)))

(declare-fun b!527282 () Bool)

(assert (=> b!527282 (= e!316998 tp_is_empty!2797)))

(assert (= (and b!527039 ((_ is ElementMatch!1219) (regex!892 (h!10360 (t!73579 rules!1345))))) b!527282))

(assert (= (and b!527039 ((_ is Concat!2135) (regex!892 (h!10360 (t!73579 rules!1345))))) b!527283))

(assert (= (and b!527039 ((_ is Star!1219) (regex!892 (h!10360 (t!73579 rules!1345))))) b!527284))

(assert (= (and b!527039 ((_ is Union!1219) (regex!892 (h!10360 (t!73579 rules!1345))))) b!527285))

(declare-fun condSetEmpty!2566 () Bool)

(assert (=> setNonEmpty!2526 (= condSetEmpty!2566 (= setRest!2525 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2566 () Bool)

(assert (=> setNonEmpty!2526 (= tp!166680 setRes!2566)))

(declare-fun setIsEmpty!2566 () Bool)

(assert (=> setIsEmpty!2566 setRes!2566))

(declare-fun e!316999 () Bool)

(declare-fun setElem!2566 () Context!314)

(declare-fun tp!166982 () Bool)

(declare-fun setNonEmpty!2566 () Bool)

(assert (=> setNonEmpty!2566 (= setRes!2566 (and tp!166982 (inv!6220 setElem!2566) e!316999))))

(declare-fun setRest!2566 () (InoxSet Context!314))

(assert (=> setNonEmpty!2566 (= setRest!2525 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2566 true) setRest!2566))))

(declare-fun b!527286 () Bool)

(declare-fun tp!166981 () Bool)

(assert (=> b!527286 (= e!316999 tp!166981)))

(assert (= (and setNonEmpty!2526 condSetEmpty!2566) setIsEmpty!2566))

(assert (= (and setNonEmpty!2526 (not condSetEmpty!2566)) setNonEmpty!2566))

(assert (= setNonEmpty!2566 b!527286))

(declare-fun m!773024 () Bool)

(assert (=> setNonEmpty!2566 m!773024))

(declare-fun b!527287 () Bool)

(declare-fun e!317000 () Bool)

(declare-fun tp!166983 () Bool)

(declare-fun tp!166984 () Bool)

(assert (=> b!527287 (= e!317000 (and tp!166983 tp!166984))))

(assert (=> b!527021 (= tp!166753 e!317000)))

(assert (= (and b!527021 ((_ is Cons!4955) (exprs!657 (_2!3307 (_1!3308 (h!10358 (zeroValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))))) b!527287))

(declare-fun b!527288 () Bool)

(declare-fun e!317001 () Bool)

(declare-fun tp!166985 () Bool)

(declare-fun tp!166986 () Bool)

(assert (=> b!527288 (= e!317001 (and tp!166985 tp!166986))))

(assert (=> b!527018 (= tp!166748 e!317001)))

(assert (= (and b!527018 ((_ is Cons!4955) (exprs!657 (_2!3307 (_1!3308 (h!10358 mapValue!2310)))))) b!527288))

(declare-fun setIsEmpty!2567 () Bool)

(declare-fun setRes!2567 () Bool)

(assert (=> setIsEmpty!2567 setRes!2567))

(declare-fun b!527289 () Bool)

(declare-fun e!317002 () Bool)

(declare-fun tp!166987 () Bool)

(assert (=> b!527289 (= e!317002 tp!166987)))

(declare-fun b!527290 () Bool)

(declare-fun e!317004 () Bool)

(declare-fun tp!166988 () Bool)

(assert (=> b!527290 (= e!317004 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (t!73580 mapDefault!2310))))) e!317002 tp_is_empty!2797 setRes!2567 tp!166988))))

(declare-fun condSetEmpty!2567 () Bool)

(assert (=> b!527290 (= condSetEmpty!2567 (= (_2!3310 (h!10361 (t!73580 mapDefault!2310))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!527028 (= tp!166760 e!317004)))

(declare-fun b!527291 () Bool)

(declare-fun e!317003 () Bool)

(declare-fun tp!166989 () Bool)

(assert (=> b!527291 (= e!317003 tp!166989)))

(declare-fun setNonEmpty!2567 () Bool)

(declare-fun tp!166990 () Bool)

(declare-fun setElem!2567 () Context!314)

(assert (=> setNonEmpty!2567 (= setRes!2567 (and tp!166990 (inv!6220 setElem!2567) e!317003))))

(declare-fun setRest!2567 () (InoxSet Context!314))

(assert (=> setNonEmpty!2567 (= (_2!3310 (h!10361 (t!73580 mapDefault!2310))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2567 true) setRest!2567))))

(assert (= b!527290 b!527289))

(assert (= (and b!527290 condSetEmpty!2567) setIsEmpty!2567))

(assert (= (and b!527290 (not condSetEmpty!2567)) setNonEmpty!2567))

(assert (= setNonEmpty!2567 b!527291))

(assert (= (and b!527028 ((_ is Cons!4960) (t!73580 mapDefault!2310))) b!527290))

(declare-fun m!773026 () Bool)

(assert (=> b!527290 m!773026))

(declare-fun m!773028 () Bool)

(assert (=> setNonEmpty!2567 m!773028))

(declare-fun b!527292 () Bool)

(declare-fun e!317005 () Bool)

(declare-fun tp!166991 () Bool)

(declare-fun tp!166992 () Bool)

(assert (=> b!527292 (= e!317005 (and tp!166991 tp!166992))))

(assert (=> b!527008 (= tp!166732 e!317005)))

(assert (= (and b!527008 ((_ is Cons!4955) (exprs!657 (_2!3307 (_1!3308 (h!10358 mapDefault!2321)))))) b!527292))

(declare-fun b!527293 () Bool)

(declare-fun e!317006 () Bool)

(declare-fun tp!166993 () Bool)

(declare-fun tp!166994 () Bool)

(assert (=> b!527293 (= e!317006 (and tp!166993 tp!166994))))

(assert (=> b!527024 (= tp!166758 e!317006)))

(assert (= (and b!527024 ((_ is Cons!4955) (exprs!657 (_2!3307 (_1!3308 (h!10358 (minValue!847 (v!16024 (underlying!1359 (v!16025 (underlying!1360 (cache!949 cacheDown!462)))))))))))) b!527293))

(declare-fun condSetEmpty!2568 () Bool)

(assert (=> setNonEmpty!2520 (= condSetEmpty!2568 (= setRest!2520 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2568 () Bool)

(assert (=> setNonEmpty!2520 (= tp!166652 setRes!2568)))

(declare-fun setIsEmpty!2568 () Bool)

(assert (=> setIsEmpty!2568 setRes!2568))

(declare-fun e!317007 () Bool)

(declare-fun tp!166996 () Bool)

(declare-fun setNonEmpty!2568 () Bool)

(declare-fun setElem!2568 () Context!314)

(assert (=> setNonEmpty!2568 (= setRes!2568 (and tp!166996 (inv!6220 setElem!2568) e!317007))))

(declare-fun setRest!2568 () (InoxSet Context!314))

(assert (=> setNonEmpty!2568 (= setRest!2520 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2568 true) setRest!2568))))

(declare-fun b!527294 () Bool)

(declare-fun tp!166995 () Bool)

(assert (=> b!527294 (= e!317007 tp!166995)))

(assert (= (and setNonEmpty!2520 condSetEmpty!2568) setIsEmpty!2568))

(assert (= (and setNonEmpty!2520 (not condSetEmpty!2568)) setNonEmpty!2568))

(assert (= setNonEmpty!2568 b!527294))

(declare-fun m!773030 () Bool)

(assert (=> setNonEmpty!2568 m!773030))

(declare-fun b!527295 () Bool)

(declare-fun e!317010 () Bool)

(declare-fun setRes!2569 () Bool)

(declare-fun tp!167003 () Bool)

(assert (=> b!527295 (= e!317010 (and setRes!2569 tp!167003))))

(declare-fun condSetEmpty!2570 () Bool)

(declare-fun mapDefault!2323 () List!4966)

(assert (=> b!527295 (= condSetEmpty!2570 (= (_1!3305 (_1!3306 (h!10357 mapDefault!2323))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun condMapEmpty!2323 () Bool)

(assert (=> mapNonEmpty!2318 (= condMapEmpty!2323 (= mapRest!2318 ((as const (Array (_ BitVec 32) List!4966)) mapDefault!2323)))))

(declare-fun mapRes!2323 () Bool)

(assert (=> mapNonEmpty!2318 (= tp!166681 (and e!317010 mapRes!2323))))

(declare-fun b!527296 () Bool)

(declare-fun e!317011 () Bool)

(declare-fun tp!166998 () Bool)

(assert (=> b!527296 (= e!317011 tp!166998)))

(declare-fun mapIsEmpty!2323 () Bool)

(assert (=> mapIsEmpty!2323 mapRes!2323))

(declare-fun b!527297 () Bool)

(declare-fun e!317009 () Bool)

(declare-fun tp!166999 () Bool)

(assert (=> b!527297 (= e!317009 tp!166999)))

(declare-fun setElem!2569 () Context!314)

(declare-fun setRes!2570 () Bool)

(declare-fun tp!167000 () Bool)

(declare-fun setNonEmpty!2569 () Bool)

(assert (=> setNonEmpty!2569 (= setRes!2570 (and tp!167000 (inv!6220 setElem!2569) e!317009))))

(declare-fun mapValue!2323 () List!4966)

(declare-fun setRest!2570 () (InoxSet Context!314))

(assert (=> setNonEmpty!2569 (= (_1!3305 (_1!3306 (h!10357 mapValue!2323))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2569 true) setRest!2570))))

(declare-fun setIsEmpty!2569 () Bool)

(assert (=> setIsEmpty!2569 setRes!2569))

(declare-fun b!527298 () Bool)

(declare-fun e!317008 () Bool)

(declare-fun tp!166997 () Bool)

(assert (=> b!527298 (= e!317008 (and setRes!2570 tp!166997))))

(declare-fun condSetEmpty!2569 () Bool)

(assert (=> b!527298 (= condSetEmpty!2569 (= (_1!3305 (_1!3306 (h!10357 mapValue!2323))) ((as const (Array Context!314 Bool)) false)))))

(declare-fun mapNonEmpty!2323 () Bool)

(declare-fun tp!167002 () Bool)

(assert (=> mapNonEmpty!2323 (= mapRes!2323 (and tp!167002 e!317008))))

(declare-fun mapRest!2323 () (Array (_ BitVec 32) List!4966))

(declare-fun mapKey!2323 () (_ BitVec 32))

(assert (=> mapNonEmpty!2323 (= mapRest!2318 (store mapRest!2323 mapKey!2323 mapValue!2323))))

(declare-fun setIsEmpty!2570 () Bool)

(assert (=> setIsEmpty!2570 setRes!2570))

(declare-fun setElem!2570 () Context!314)

(declare-fun setNonEmpty!2570 () Bool)

(declare-fun tp!167001 () Bool)

(assert (=> setNonEmpty!2570 (= setRes!2569 (and tp!167001 (inv!6220 setElem!2570) e!317011))))

(declare-fun setRest!2569 () (InoxSet Context!314))

(assert (=> setNonEmpty!2570 (= (_1!3305 (_1!3306 (h!10357 mapDefault!2323))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2570 true) setRest!2569))))

(assert (= (and mapNonEmpty!2318 condMapEmpty!2323) mapIsEmpty!2323))

(assert (= (and mapNonEmpty!2318 (not condMapEmpty!2323)) mapNonEmpty!2323))

(assert (= (and b!527298 condSetEmpty!2569) setIsEmpty!2570))

(assert (= (and b!527298 (not condSetEmpty!2569)) setNonEmpty!2569))

(assert (= setNonEmpty!2569 b!527297))

(assert (= (and mapNonEmpty!2323 ((_ is Cons!4956) mapValue!2323)) b!527298))

(assert (= (and b!527295 condSetEmpty!2570) setIsEmpty!2569))

(assert (= (and b!527295 (not condSetEmpty!2570)) setNonEmpty!2570))

(assert (= setNonEmpty!2570 b!527296))

(assert (= (and mapNonEmpty!2318 ((_ is Cons!4956) mapDefault!2323)) b!527295))

(declare-fun m!773032 () Bool)

(assert (=> setNonEmpty!2569 m!773032))

(declare-fun m!773034 () Bool)

(assert (=> mapNonEmpty!2323 m!773034))

(declare-fun m!773036 () Bool)

(assert (=> setNonEmpty!2570 m!773036))

(declare-fun b!527299 () Bool)

(declare-fun e!317012 () Bool)

(declare-fun tp!167004 () Bool)

(declare-fun tp!167005 () Bool)

(assert (=> b!527299 (= e!317012 (and tp!167004 tp!167005))))

(assert (=> b!526975 (= tp!166685 e!317012)))

(assert (= (and b!526975 ((_ is Cons!4955) (exprs!657 setElem!2527))) b!527299))

(declare-fun condSetEmpty!2571 () Bool)

(assert (=> setNonEmpty!2533 (= condSetEmpty!2571 (= setRest!2532 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2571 () Bool)

(assert (=> setNonEmpty!2533 (= tp!166724 setRes!2571)))

(declare-fun setIsEmpty!2571 () Bool)

(assert (=> setIsEmpty!2571 setRes!2571))

(declare-fun setNonEmpty!2571 () Bool)

(declare-fun tp!167007 () Bool)

(declare-fun setElem!2571 () Context!314)

(declare-fun e!317013 () Bool)

(assert (=> setNonEmpty!2571 (= setRes!2571 (and tp!167007 (inv!6220 setElem!2571) e!317013))))

(declare-fun setRest!2571 () (InoxSet Context!314))

(assert (=> setNonEmpty!2571 (= setRest!2532 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2571 true) setRest!2571))))

(declare-fun b!527300 () Bool)

(declare-fun tp!167006 () Bool)

(assert (=> b!527300 (= e!317013 tp!167006)))

(assert (= (and setNonEmpty!2533 condSetEmpty!2571) setIsEmpty!2571))

(assert (= (and setNonEmpty!2533 (not condSetEmpty!2571)) setNonEmpty!2571))

(assert (= setNonEmpty!2571 b!527300))

(declare-fun m!773038 () Bool)

(assert (=> setNonEmpty!2571 m!773038))

(declare-fun setIsEmpty!2572 () Bool)

(declare-fun setRes!2572 () Bool)

(assert (=> setIsEmpty!2572 setRes!2572))

(declare-fun b!527301 () Bool)

(declare-fun e!317014 () Bool)

(declare-fun tp!167008 () Bool)

(assert (=> b!527301 (= e!317014 tp!167008)))

(declare-fun tp!167009 () Bool)

(declare-fun b!527302 () Bool)

(declare-fun e!317016 () Bool)

(assert (=> b!527302 (= e!317016 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (t!73580 mapValue!2311))))) e!317014 tp_is_empty!2797 setRes!2572 tp!167009))))

(declare-fun condSetEmpty!2572 () Bool)

(assert (=> b!527302 (= condSetEmpty!2572 (= (_2!3310 (h!10361 (t!73580 mapValue!2311))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526947 (= tp!166650 e!317016)))

(declare-fun b!527303 () Bool)

(declare-fun e!317015 () Bool)

(declare-fun tp!167010 () Bool)

(assert (=> b!527303 (= e!317015 tp!167010)))

(declare-fun setNonEmpty!2572 () Bool)

(declare-fun setElem!2572 () Context!314)

(declare-fun tp!167011 () Bool)

(assert (=> setNonEmpty!2572 (= setRes!2572 (and tp!167011 (inv!6220 setElem!2572) e!317015))))

(declare-fun setRest!2572 () (InoxSet Context!314))

(assert (=> setNonEmpty!2572 (= (_2!3310 (h!10361 (t!73580 mapValue!2311))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2572 true) setRest!2572))))

(assert (= b!527302 b!527301))

(assert (= (and b!527302 condSetEmpty!2572) setIsEmpty!2572))

(assert (= (and b!527302 (not condSetEmpty!2572)) setNonEmpty!2572))

(assert (= setNonEmpty!2572 b!527303))

(assert (= (and b!526947 ((_ is Cons!4960) (t!73580 mapValue!2311))) b!527302))

(declare-fun m!773040 () Bool)

(assert (=> b!527302 m!773040))

(declare-fun m!773042 () Bool)

(assert (=> setNonEmpty!2572 m!773042))

(declare-fun b!527304 () Bool)

(declare-fun e!317017 () Bool)

(declare-fun tp!167012 () Bool)

(declare-fun tp!167013 () Bool)

(assert (=> b!527304 (= e!317017 (and tp!167012 tp!167013))))

(assert (=> b!526911 (= tp!166605 e!317017)))

(assert (= (and b!526911 ((_ is Cons!4955) (exprs!657 setElem!2509))) b!527304))

(declare-fun b!527305 () Bool)

(declare-fun e!317018 () Bool)

(declare-fun tp!167014 () Bool)

(declare-fun tp!167015 () Bool)

(assert (=> b!527305 (= e!317018 (and tp!167014 tp!167015))))

(assert (=> b!526946 (= tp!166649 e!317018)))

(assert (= (and b!526946 ((_ is Cons!4955) (exprs!657 (_1!3309 (_1!3310 (h!10361 mapValue!2311)))))) b!527305))

(declare-fun condSetEmpty!2573 () Bool)

(assert (=> setNonEmpty!2525 (= condSetEmpty!2573 (= setRest!2526 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2573 () Bool)

(assert (=> setNonEmpty!2525 (= tp!166679 setRes!2573)))

(declare-fun setIsEmpty!2573 () Bool)

(assert (=> setIsEmpty!2573 setRes!2573))

(declare-fun setNonEmpty!2573 () Bool)

(declare-fun setElem!2573 () Context!314)

(declare-fun tp!167017 () Bool)

(declare-fun e!317019 () Bool)

(assert (=> setNonEmpty!2573 (= setRes!2573 (and tp!167017 (inv!6220 setElem!2573) e!317019))))

(declare-fun setRest!2573 () (InoxSet Context!314))

(assert (=> setNonEmpty!2573 (= setRest!2526 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2573 true) setRest!2573))))

(declare-fun b!527306 () Bool)

(declare-fun tp!167016 () Bool)

(assert (=> b!527306 (= e!317019 tp!167016)))

(assert (= (and setNonEmpty!2525 condSetEmpty!2573) setIsEmpty!2573))

(assert (= (and setNonEmpty!2525 (not condSetEmpty!2573)) setNonEmpty!2573))

(assert (= setNonEmpty!2573 b!527306))

(declare-fun m!773044 () Bool)

(assert (=> setNonEmpty!2573 m!773044))

(declare-fun condSetEmpty!2574 () Bool)

(assert (=> setNonEmpty!2509 (= condSetEmpty!2574 (= setRest!2509 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2574 () Bool)

(assert (=> setNonEmpty!2509 (= tp!166603 setRes!2574)))

(declare-fun setIsEmpty!2574 () Bool)

(assert (=> setIsEmpty!2574 setRes!2574))

(declare-fun tp!167019 () Bool)

(declare-fun setElem!2574 () Context!314)

(declare-fun e!317020 () Bool)

(declare-fun setNonEmpty!2574 () Bool)

(assert (=> setNonEmpty!2574 (= setRes!2574 (and tp!167019 (inv!6220 setElem!2574) e!317020))))

(declare-fun setRest!2574 () (InoxSet Context!314))

(assert (=> setNonEmpty!2574 (= setRest!2509 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2574 true) setRest!2574))))

(declare-fun b!527307 () Bool)

(declare-fun tp!167018 () Bool)

(assert (=> b!527307 (= e!317020 tp!167018)))

(assert (= (and setNonEmpty!2509 condSetEmpty!2574) setIsEmpty!2574))

(assert (= (and setNonEmpty!2509 (not condSetEmpty!2574)) setNonEmpty!2574))

(assert (= setNonEmpty!2574 b!527307))

(declare-fun m!773046 () Bool)

(assert (=> setNonEmpty!2574 m!773046))

(declare-fun setNonEmpty!2575 () Bool)

(declare-fun e!317021 () Bool)

(declare-fun setRes!2575 () Bool)

(declare-fun setElem!2575 () Context!314)

(declare-fun tp!167020 () Bool)

(assert (=> setNonEmpty!2575 (= setRes!2575 (and tp!167020 (inv!6220 setElem!2575) e!317021))))

(declare-fun setRest!2575 () (InoxSet Context!314))

(assert (=> setNonEmpty!2575 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapValue!2312)))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2575 true) setRest!2575))))

(declare-fun b!527308 () Bool)

(declare-fun e!317022 () Bool)

(declare-fun tp!167021 () Bool)

(assert (=> b!527308 (= e!317022 (and setRes!2575 tp!167021))))

(declare-fun condSetEmpty!2575 () Bool)

(assert (=> b!527308 (= condSetEmpty!2575 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapValue!2312)))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526974 (= tp!166684 e!317022)))

(declare-fun setIsEmpty!2575 () Bool)

(assert (=> setIsEmpty!2575 setRes!2575))

(declare-fun b!527309 () Bool)

(declare-fun tp!167022 () Bool)

(assert (=> b!527309 (= e!317021 tp!167022)))

(assert (= (and b!527308 condSetEmpty!2575) setIsEmpty!2575))

(assert (= (and b!527308 (not condSetEmpty!2575)) setNonEmpty!2575))

(assert (= setNonEmpty!2575 b!527309))

(assert (= (and b!526974 ((_ is Cons!4956) (t!73576 mapValue!2312))) b!527308))

(declare-fun m!773048 () Bool)

(assert (=> setNonEmpty!2575 m!773048))

(declare-fun setIsEmpty!2576 () Bool)

(declare-fun setRes!2577 () Bool)

(assert (=> setIsEmpty!2576 setRes!2577))

(declare-fun b!527310 () Bool)

(declare-fun e!317027 () Bool)

(declare-fun tp!167026 () Bool)

(assert (=> b!527310 (= e!317027 tp!167026)))

(declare-fun mapIsEmpty!2324 () Bool)

(declare-fun mapRes!2324 () Bool)

(assert (=> mapIsEmpty!2324 mapRes!2324))

(declare-fun b!527311 () Bool)

(declare-fun e!317028 () Bool)

(declare-fun tp!167027 () Bool)

(assert (=> b!527311 (= e!317028 tp!167027)))

(declare-fun setIsEmpty!2577 () Bool)

(declare-fun setRes!2576 () Bool)

(assert (=> setIsEmpty!2577 setRes!2576))

(declare-fun b!527312 () Bool)

(declare-fun e!317026 () Bool)

(declare-fun tp!167029 () Bool)

(assert (=> b!527312 (= e!317026 tp!167029)))

(declare-fun b!527313 () Bool)

(declare-fun e!317023 () Bool)

(declare-fun tp!167028 () Bool)

(assert (=> b!527313 (= e!317023 tp!167028)))

(declare-fun e!317024 () Bool)

(declare-fun b!527314 () Bool)

(declare-fun tp!167031 () Bool)

(declare-fun mapValue!2324 () List!4970)

(assert (=> b!527314 (= e!317024 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 mapValue!2324)))) e!317026 tp_is_empty!2797 setRes!2577 tp!167031))))

(declare-fun condSetEmpty!2576 () Bool)

(assert (=> b!527314 (= condSetEmpty!2576 (= (_2!3310 (h!10361 mapValue!2324)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun condMapEmpty!2324 () Bool)

(declare-fun mapDefault!2324 () List!4970)

(assert (=> mapNonEmpty!2315 (= condMapEmpty!2324 (= mapRest!2315 ((as const (Array (_ BitVec 32) List!4970)) mapDefault!2324)))))

(declare-fun e!317025 () Bool)

(assert (=> mapNonEmpty!2315 (= tp!166641 (and e!317025 mapRes!2324))))

(declare-fun setElem!2577 () Context!314)

(declare-fun tp!167025 () Bool)

(declare-fun setNonEmpty!2576 () Bool)

(assert (=> setNonEmpty!2576 (= setRes!2577 (and tp!167025 (inv!6220 setElem!2577) e!317028))))

(declare-fun setRest!2576 () (InoxSet Context!314))

(assert (=> setNonEmpty!2576 (= (_2!3310 (h!10361 mapValue!2324)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2577 true) setRest!2576))))

(declare-fun tp!167023 () Bool)

(declare-fun setNonEmpty!2577 () Bool)

(declare-fun setElem!2576 () Context!314)

(assert (=> setNonEmpty!2577 (= setRes!2576 (and tp!167023 (inv!6220 setElem!2576) e!317027))))

(declare-fun setRest!2577 () (InoxSet Context!314))

(assert (=> setNonEmpty!2577 (= (_2!3310 (h!10361 mapDefault!2324)) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2576 true) setRest!2577))))

(declare-fun tp!167030 () Bool)

(declare-fun b!527315 () Bool)

(assert (=> b!527315 (= e!317025 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 mapDefault!2324)))) e!317023 tp_is_empty!2797 setRes!2576 tp!167030))))

(declare-fun condSetEmpty!2577 () Bool)

(assert (=> b!527315 (= condSetEmpty!2577 (= (_2!3310 (h!10361 mapDefault!2324)) ((as const (Array Context!314 Bool)) false)))))

(declare-fun mapNonEmpty!2324 () Bool)

(declare-fun tp!167024 () Bool)

(assert (=> mapNonEmpty!2324 (= mapRes!2324 (and tp!167024 e!317024))))

(declare-fun mapRest!2324 () (Array (_ BitVec 32) List!4970))

(declare-fun mapKey!2324 () (_ BitVec 32))

(assert (=> mapNonEmpty!2324 (= mapRest!2315 (store mapRest!2324 mapKey!2324 mapValue!2324))))

(assert (= (and mapNonEmpty!2315 condMapEmpty!2324) mapIsEmpty!2324))

(assert (= (and mapNonEmpty!2315 (not condMapEmpty!2324)) mapNonEmpty!2324))

(assert (= b!527314 b!527312))

(assert (= (and b!527314 condSetEmpty!2576) setIsEmpty!2576))

(assert (= (and b!527314 (not condSetEmpty!2576)) setNonEmpty!2576))

(assert (= setNonEmpty!2576 b!527311))

(assert (= (and mapNonEmpty!2324 ((_ is Cons!4960) mapValue!2324)) b!527314))

(assert (= b!527315 b!527313))

(assert (= (and b!527315 condSetEmpty!2577) setIsEmpty!2577))

(assert (= (and b!527315 (not condSetEmpty!2577)) setNonEmpty!2577))

(assert (= setNonEmpty!2577 b!527310))

(assert (= (and mapNonEmpty!2315 ((_ is Cons!4960) mapDefault!2324)) b!527315))

(declare-fun m!773050 () Bool)

(assert (=> setNonEmpty!2577 m!773050))

(declare-fun m!773052 () Bool)

(assert (=> mapNonEmpty!2324 m!773052))

(declare-fun m!773054 () Bool)

(assert (=> setNonEmpty!2576 m!773054))

(declare-fun m!773056 () Bool)

(assert (=> b!527315 m!773056))

(declare-fun m!773058 () Bool)

(assert (=> b!527314 m!773058))

(declare-fun condSetEmpty!2578 () Bool)

(assert (=> setNonEmpty!2542 (= condSetEmpty!2578 (= setRest!2542 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2578 () Bool)

(assert (=> setNonEmpty!2542 (= tp!166786 setRes!2578)))

(declare-fun setIsEmpty!2578 () Bool)

(assert (=> setIsEmpty!2578 setRes!2578))

(declare-fun setElem!2578 () Context!314)

(declare-fun e!317029 () Bool)

(declare-fun setNonEmpty!2578 () Bool)

(declare-fun tp!167033 () Bool)

(assert (=> setNonEmpty!2578 (= setRes!2578 (and tp!167033 (inv!6220 setElem!2578) e!317029))))

(declare-fun setRest!2578 () (InoxSet Context!314))

(assert (=> setNonEmpty!2578 (= setRest!2542 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2578 true) setRest!2578))))

(declare-fun b!527316 () Bool)

(declare-fun tp!167032 () Bool)

(assert (=> b!527316 (= e!317029 tp!167032)))

(assert (= (and setNonEmpty!2542 condSetEmpty!2578) setIsEmpty!2578))

(assert (= (and setNonEmpty!2542 (not condSetEmpty!2578)) setNonEmpty!2578))

(assert (= setNonEmpty!2578 b!527316))

(declare-fun m!773060 () Bool)

(assert (=> setNonEmpty!2578 m!773060))

(declare-fun condSetEmpty!2579 () Bool)

(assert (=> setNonEmpty!2532 (= condSetEmpty!2579 (= setRest!2533 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2579 () Bool)

(assert (=> setNonEmpty!2532 (= tp!166733 setRes!2579)))

(declare-fun setIsEmpty!2579 () Bool)

(assert (=> setIsEmpty!2579 setRes!2579))

(declare-fun tp!167035 () Bool)

(declare-fun setElem!2579 () Context!314)

(declare-fun e!317030 () Bool)

(declare-fun setNonEmpty!2579 () Bool)

(assert (=> setNonEmpty!2579 (= setRes!2579 (and tp!167035 (inv!6220 setElem!2579) e!317030))))

(declare-fun setRest!2579 () (InoxSet Context!314))

(assert (=> setNonEmpty!2579 (= setRest!2533 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2579 true) setRest!2579))))

(declare-fun b!527317 () Bool)

(declare-fun tp!167034 () Bool)

(assert (=> b!527317 (= e!317030 tp!167034)))

(assert (= (and setNonEmpty!2532 condSetEmpty!2579) setIsEmpty!2579))

(assert (= (and setNonEmpty!2532 (not condSetEmpty!2579)) setNonEmpty!2579))

(assert (= setNonEmpty!2579 b!527317))

(declare-fun m!773062 () Bool)

(assert (=> setNonEmpty!2579 m!773062))

(declare-fun setNonEmpty!2580 () Bool)

(declare-fun tp!167036 () Bool)

(declare-fun setElem!2580 () Context!314)

(declare-fun e!317031 () Bool)

(declare-fun setRes!2580 () Bool)

(assert (=> setNonEmpty!2580 (= setRes!2580 (and tp!167036 (inv!6220 setElem!2580) e!317031))))

(declare-fun setRest!2580 () (InoxSet Context!314))

(assert (=> setNonEmpty!2580 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapDefault!2312)))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2580 true) setRest!2580))))

(declare-fun b!527318 () Bool)

(declare-fun e!317032 () Bool)

(declare-fun tp!167037 () Bool)

(assert (=> b!527318 (= e!317032 (and setRes!2580 tp!167037))))

(declare-fun condSetEmpty!2580 () Bool)

(assert (=> b!527318 (= condSetEmpty!2580 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapDefault!2312)))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526910 (= tp!166604 e!317032)))

(declare-fun setIsEmpty!2580 () Bool)

(assert (=> setIsEmpty!2580 setRes!2580))

(declare-fun b!527319 () Bool)

(declare-fun tp!167038 () Bool)

(assert (=> b!527319 (= e!317031 tp!167038)))

(assert (= (and b!527318 condSetEmpty!2580) setIsEmpty!2580))

(assert (= (and b!527318 (not condSetEmpty!2580)) setNonEmpty!2580))

(assert (= setNonEmpty!2580 b!527319))

(assert (= (and b!526910 ((_ is Cons!4956) (t!73576 mapDefault!2312))) b!527318))

(declare-fun m!773064 () Bool)

(assert (=> setNonEmpty!2580 m!773064))

(declare-fun condSetEmpty!2581 () Bool)

(assert (=> setNonEmpty!2519 (= condSetEmpty!2581 (= setRest!2519 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2581 () Bool)

(assert (=> setNonEmpty!2519 (= tp!166640 setRes!2581)))

(declare-fun setIsEmpty!2581 () Bool)

(assert (=> setIsEmpty!2581 setRes!2581))

(declare-fun setElem!2581 () Context!314)

(declare-fun e!317033 () Bool)

(declare-fun tp!167040 () Bool)

(declare-fun setNonEmpty!2581 () Bool)

(assert (=> setNonEmpty!2581 (= setRes!2581 (and tp!167040 (inv!6220 setElem!2581) e!317033))))

(declare-fun setRest!2581 () (InoxSet Context!314))

(assert (=> setNonEmpty!2581 (= setRest!2519 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2581 true) setRest!2581))))

(declare-fun b!527320 () Bool)

(declare-fun tp!167039 () Bool)

(assert (=> b!527320 (= e!317033 tp!167039)))

(assert (= (and setNonEmpty!2519 condSetEmpty!2581) setIsEmpty!2581))

(assert (= (and setNonEmpty!2519 (not condSetEmpty!2581)) setNonEmpty!2581))

(assert (= setNonEmpty!2581 b!527320))

(declare-fun m!773066 () Bool)

(assert (=> setNonEmpty!2581 m!773066))

(declare-fun setNonEmpty!2582 () Bool)

(declare-fun e!317034 () Bool)

(declare-fun tp!167041 () Bool)

(declare-fun setRes!2582 () Bool)

(declare-fun setElem!2582 () Context!314)

(assert (=> setNonEmpty!2582 (= setRes!2582 (and tp!167041 (inv!6220 setElem!2582) e!317034))))

(declare-fun setRest!2582 () (InoxSet Context!314))

(assert (=> setNonEmpty!2582 (= (_1!3305 (_1!3306 (h!10357 (t!73576 (minValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56)))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2582 true) setRest!2582))))

(declare-fun b!527321 () Bool)

(declare-fun e!317035 () Bool)

(declare-fun tp!167042 () Bool)

(assert (=> b!527321 (= e!317035 (and setRes!2582 tp!167042))))

(declare-fun condSetEmpty!2582 () Bool)

(assert (=> b!527321 (= condSetEmpty!2582 (= (_1!3305 (_1!3306 (h!10357 (t!73576 (minValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56)))))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!527049 (= tp!166787 e!317035)))

(declare-fun setIsEmpty!2582 () Bool)

(assert (=> setIsEmpty!2582 setRes!2582))

(declare-fun b!527322 () Bool)

(declare-fun tp!167043 () Bool)

(assert (=> b!527322 (= e!317034 tp!167043)))

(assert (= (and b!527321 condSetEmpty!2582) setIsEmpty!2582))

(assert (= (and b!527321 (not condSetEmpty!2582)) setNonEmpty!2582))

(assert (= setNonEmpty!2582 b!527322))

(assert (= (and b!527049 ((_ is Cons!4956) (t!73576 (minValue!846 (v!16022 (underlying!1357 (v!16023 (underlying!1358 (cache!948 cacheFurthestNullable!56))))))))) b!527321))

(declare-fun m!773068 () Bool)

(assert (=> setNonEmpty!2582 m!773068))

(declare-fun b!527326 () Bool)

(declare-fun e!317036 () Bool)

(declare-fun tp!167047 () Bool)

(declare-fun tp!167045 () Bool)

(assert (=> b!527326 (= e!317036 (and tp!167047 tp!167045))))

(declare-fun b!527325 () Bool)

(declare-fun tp!167046 () Bool)

(assert (=> b!527325 (= e!317036 tp!167046)))

(declare-fun b!527324 () Bool)

(declare-fun tp!167048 () Bool)

(declare-fun tp!167044 () Bool)

(assert (=> b!527324 (= e!317036 (and tp!167048 tp!167044))))

(assert (=> b!526988 (= tp!166698 e!317036)))

(declare-fun b!527323 () Bool)

(assert (=> b!527323 (= e!317036 tp_is_empty!2797)))

(assert (= (and b!526988 ((_ is ElementMatch!1219) (reg!1548 (regex!892 (h!10360 rules!1345))))) b!527323))

(assert (= (and b!526988 ((_ is Concat!2135) (reg!1548 (regex!892 (h!10360 rules!1345))))) b!527324))

(assert (= (and b!526988 ((_ is Star!1219) (reg!1548 (regex!892 (h!10360 rules!1345))))) b!527325))

(assert (= (and b!526988 ((_ is Union!1219) (reg!1548 (regex!892 (h!10360 rules!1345))))) b!527326))

(declare-fun setRes!2583 () Bool)

(declare-fun tp!167049 () Bool)

(declare-fun e!317037 () Bool)

(declare-fun setNonEmpty!2583 () Bool)

(declare-fun setElem!2583 () Context!314)

(assert (=> setNonEmpty!2583 (= setRes!2583 (and tp!167049 (inv!6220 setElem!2583) e!317037))))

(declare-fun setRest!2583 () (InoxSet Context!314))

(assert (=> setNonEmpty!2583 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapDefault!2318)))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2583 true) setRest!2583))))

(declare-fun b!527327 () Bool)

(declare-fun e!317038 () Bool)

(declare-fun tp!167050 () Bool)

(assert (=> b!527327 (= e!317038 (and setRes!2583 tp!167050))))

(declare-fun condSetEmpty!2583 () Bool)

(assert (=> b!527327 (= condSetEmpty!2583 (= (_1!3305 (_1!3306 (h!10357 (t!73576 mapDefault!2318)))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526970 (= tp!166682 e!317038)))

(declare-fun setIsEmpty!2583 () Bool)

(assert (=> setIsEmpty!2583 setRes!2583))

(declare-fun b!527328 () Bool)

(declare-fun tp!167051 () Bool)

(assert (=> b!527328 (= e!317037 tp!167051)))

(assert (= (and b!527327 condSetEmpty!2583) setIsEmpty!2583))

(assert (= (and b!527327 (not condSetEmpty!2583)) setNonEmpty!2583))

(assert (= setNonEmpty!2583 b!527328))

(assert (= (and b!526970 ((_ is Cons!4956) (t!73576 mapDefault!2318))) b!527327))

(declare-fun m!773070 () Bool)

(assert (=> setNonEmpty!2583 m!773070))

(declare-fun condSetEmpty!2584 () Bool)

(assert (=> setNonEmpty!2512 (= condSetEmpty!2584 (= setRest!2512 ((as const (Array Context!314 Bool)) false)))))

(declare-fun setRes!2584 () Bool)

(assert (=> setNonEmpty!2512 (= tp!166617 setRes!2584)))

(declare-fun setIsEmpty!2584 () Bool)

(assert (=> setIsEmpty!2584 setRes!2584))

(declare-fun setElem!2584 () Context!314)

(declare-fun e!317039 () Bool)

(declare-fun tp!167053 () Bool)

(declare-fun setNonEmpty!2584 () Bool)

(assert (=> setNonEmpty!2584 (= setRes!2584 (and tp!167053 (inv!6220 setElem!2584) e!317039))))

(declare-fun setRest!2584 () (InoxSet Context!314))

(assert (=> setNonEmpty!2584 (= setRest!2512 ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2584 true) setRest!2584))))

(declare-fun b!527329 () Bool)

(declare-fun tp!167052 () Bool)

(assert (=> b!527329 (= e!317039 tp!167052)))

(assert (= (and setNonEmpty!2512 condSetEmpty!2584) setIsEmpty!2584))

(assert (= (and setNonEmpty!2512 (not condSetEmpty!2584)) setNonEmpty!2584))

(assert (= setNonEmpty!2584 b!527329))

(declare-fun m!773072 () Bool)

(assert (=> setNonEmpty!2584 m!773072))

(declare-fun setIsEmpty!2585 () Bool)

(declare-fun setRes!2585 () Bool)

(assert (=> setIsEmpty!2585 setRes!2585))

(declare-fun b!527330 () Bool)

(declare-fun e!317040 () Bool)

(declare-fun tp!167054 () Bool)

(assert (=> b!527330 (= e!317040 tp!167054)))

(declare-fun tp!167055 () Bool)

(declare-fun b!527331 () Bool)

(declare-fun e!317042 () Bool)

(assert (=> b!527331 (= e!317042 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (t!73580 mapValue!2315))))) e!317040 tp_is_empty!2797 setRes!2585 tp!167055))))

(declare-fun condSetEmpty!2585 () Bool)

(assert (=> b!527331 (= condSetEmpty!2585 (= (_2!3310 (h!10361 (t!73580 mapValue!2315))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526944 (= tp!166648 e!317042)))

(declare-fun b!527332 () Bool)

(declare-fun e!317041 () Bool)

(declare-fun tp!167056 () Bool)

(assert (=> b!527332 (= e!317041 tp!167056)))

(declare-fun setNonEmpty!2585 () Bool)

(declare-fun tp!167057 () Bool)

(declare-fun setElem!2585 () Context!314)

(assert (=> setNonEmpty!2585 (= setRes!2585 (and tp!167057 (inv!6220 setElem!2585) e!317041))))

(declare-fun setRest!2585 () (InoxSet Context!314))

(assert (=> setNonEmpty!2585 (= (_2!3310 (h!10361 (t!73580 mapValue!2315))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2585 true) setRest!2585))))

(assert (= b!527331 b!527330))

(assert (= (and b!527331 condSetEmpty!2585) setIsEmpty!2585))

(assert (= (and b!527331 (not condSetEmpty!2585)) setNonEmpty!2585))

(assert (= setNonEmpty!2585 b!527332))

(assert (= (and b!526944 ((_ is Cons!4960) (t!73580 mapValue!2315))) b!527331))

(declare-fun m!773074 () Bool)

(assert (=> b!527331 m!773074))

(declare-fun m!773076 () Bool)

(assert (=> setNonEmpty!2585 m!773076))

(declare-fun b!527333 () Bool)

(declare-fun e!317043 () Bool)

(declare-fun tp!167058 () Bool)

(declare-fun tp!167059 () Bool)

(assert (=> b!527333 (= e!317043 (and tp!167058 tp!167059))))

(assert (=> b!527005 (= tp!166726 e!317043)))

(assert (= (and b!527005 ((_ is Cons!4955) (exprs!657 setElem!2533))) b!527333))

(declare-fun setIsEmpty!2586 () Bool)

(declare-fun setRes!2586 () Bool)

(assert (=> setIsEmpty!2586 setRes!2586))

(declare-fun b!527334 () Bool)

(declare-fun e!317044 () Bool)

(declare-fun tp!167060 () Bool)

(assert (=> b!527334 (= e!317044 tp!167060)))

(declare-fun tp!167061 () Bool)

(declare-fun e!317046 () Bool)

(declare-fun b!527335 () Bool)

(assert (=> b!527335 (= e!317046 (and (inv!6220 (_1!3309 (_1!3310 (h!10361 (t!73580 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))))) e!317044 tp_is_empty!2797 setRes!2586 tp!167061))))

(declare-fun condSetEmpty!2586 () Bool)

(assert (=> b!527335 (= condSetEmpty!2586 (= (_2!3310 (h!10361 (t!73580 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))) ((as const (Array Context!314 Bool)) false)))))

(assert (=> b!526921 (= tp!166615 e!317046)))

(declare-fun b!527336 () Bool)

(declare-fun e!317045 () Bool)

(declare-fun tp!167062 () Bool)

(assert (=> b!527336 (= e!317045 tp!167062)))

(declare-fun setNonEmpty!2586 () Bool)

(declare-fun tp!167063 () Bool)

(declare-fun setElem!2586 () Context!314)

(assert (=> setNonEmpty!2586 (= setRes!2586 (and tp!167063 (inv!6220 setElem!2586) e!317045))))

(declare-fun setRest!2586 () (InoxSet Context!314))

(assert (=> setNonEmpty!2586 (= (_2!3310 (h!10361 (t!73580 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))) ((_ map or) (store ((as const (Array Context!314 Bool)) false) setElem!2586 true) setRest!2586))))

(assert (= b!527335 b!527334))

(assert (= (and b!527335 condSetEmpty!2586) setIsEmpty!2586))

(assert (= (and b!527335 (not condSetEmpty!2586)) setNonEmpty!2586))

(assert (= setNonEmpty!2586 b!527336))

(assert (= (and b!526921 ((_ is Cons!4960) (t!73580 (zeroValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449))))))))) b!527335))

(declare-fun m!773078 () Bool)

(assert (=> b!527335 m!773078))

(declare-fun m!773080 () Bool)

(assert (=> setNonEmpty!2586 m!773080))

(declare-fun b!527337 () Bool)

(declare-fun e!317047 () Bool)

(declare-fun tp!167064 () Bool)

(declare-fun tp!167065 () Bool)

(assert (=> b!527337 (= e!317047 (and tp!167064 tp!167065))))

(assert (=> b!526942 (= tp!166646 e!317047)))

(assert (= (and b!526942 ((_ is Cons!4955) (exprs!657 (_1!3309 (_1!3310 (h!10361 mapValue!2315)))))) b!527337))

(declare-fun b!527338 () Bool)

(declare-fun e!317048 () Bool)

(declare-fun tp!167066 () Bool)

(declare-fun tp!167067 () Bool)

(assert (=> b!527338 (= e!317048 (and tp!167066 tp!167067))))

(assert (=> b!526925 (= tp!166620 e!317048)))

(assert (= (and b!526925 ((_ is Cons!4955) (exprs!657 setElem!2513))) b!527338))

(declare-fun b!527339 () Bool)

(declare-fun e!317049 () Bool)

(declare-fun tp!167068 () Bool)

(declare-fun tp!167069 () Bool)

(assert (=> b!527339 (= e!317049 (and tp!167068 tp!167069))))

(assert (=> b!526941 (= tp!166644 e!317049)))

(assert (= (and b!526941 ((_ is Cons!4955) (exprs!657 setElem!2519))) b!527339))

(declare-fun b!527340 () Bool)

(declare-fun e!317050 () Bool)

(declare-fun tp!167070 () Bool)

(declare-fun tp!167071 () Bool)

(assert (=> b!527340 (= e!317050 (and tp!167070 tp!167071))))

(assert (=> b!526923 (= tp!166618 e!317050)))

(assert (= (and b!526923 ((_ is Cons!4955) (exprs!657 (_1!3309 (_1!3310 (h!10361 (minValue!848 (v!16026 (underlying!1361 (v!16027 (underlying!1362 (cache!950 cacheUp!449)))))))))))) b!527340))

(check-sat (not d!187564) (not b!527132) (not b!527230) (not setNonEmpty!2546) (not b!527220) (not b!527143) (not d!187550) (not b!526957) (not b!527205) (not b!527211) (not b!527095) b_and!51489 (not b!527260) (not d!187596) (not b!527130) (not b!527266) (not setNonEmpty!2583) (not d!187602) (not b!527210) (not d!187626) (not setNonEmpty!2572) (not b!527258) (not b_next!14015) (not d!187544) (not d!187630) (not d!187616) (not b!527248) (not b!527111) (not b!527108) (not b!527306) (not b!527319) (not b!527331) (not b!527294) (not b!527070) (not b!527215) (not b!527112) (not b!527316) b_and!51495 (not b!527274) (not d!187632) (not b!527200) (not setNonEmpty!2581) (not b!527252) (not b!527222) (not b!527240) (not b!527329) (not b!527336) (not b!527177) (not d!187570) (not b!527280) (not b!527216) (not setNonEmpty!2558) b_and!51487 (not b!527315) (not b!527170) (not setNonEmpty!2569) (not b!527288) (not d!187556) (not b!527265) (not b_next!14027) (not b!527272) (not d!187594) (not setNonEmpty!2576) (not b_next!14029) (not b!527187) (not d!187622) (not setNonEmpty!2566) (not b!527058) (not b!527339) (not b!527206) (not b!527179) (not d!187644) (not d!187604) (not b!527164) (not b!527114) (not b!527129) (not b!527256) (not b!527235) (not b_next!14017) (not b!527109) (not setNonEmpty!2565) (not b_next!14011) (not b_next!14013) (not d!187588) (not d!187540) (not b!527195) (not b!527321) (not d!187566) (not b!527289) (not b!527327) (not b!527253) (not setNonEmpty!2553) (not d!187620) (not b!527166) (not b!527135) (not b!527330) b_and!51491 (not setNonEmpty!2563) (not b!527194) (not b!527317) (not setNonEmpty!2570) b_and!51509 (not setNonEmpty!2580) (not b_next!14019) (not b!527328) (not d!187552) (not b!527318) (not setNonEmpty!2578) (not b!527324) (not b!527186) (not d!187586) (not b!527156) (not setNonEmpty!2567) (not setNonEmpty!2574) (not b!527161) (not b!527163) (not b!527338) (not b!527176) (not b!527174) (not b!527203) (not b!527242) (not b!527193) (not d!187576) (not d!187624) (not b!527283) (not b!527299) (not setNonEmpty!2550) (not b!527247) (not b!527264) (not b!527102) (not b!527276) (not b_next!14009) (not b!527133) (not b!527273) b_and!51507 (not b!527207) (not b!527245) (not b!527198) (not b!527326) (not b!527137) (not d!187580) (not b!527271) (not b!527335) (not setNonEmpty!2554) (not setNonEmpty!2545) (not b!527171) (not b!527146) (not setNonEmpty!2551) (not b!527334) (not b!527199) (not b!527233) (not b!527259) (not setNonEmpty!2555) (not setNonEmpty!2577) (not b!527261) (not b!527275) (not mapNonEmpty!2322) (not b!527141) (not b!527224) (not b!527249) (not b!527069) (not d!187628) (not d!187548) (not setNonEmpty!2556) (not b!527312) (not b!527084) (not b!527325) (not b!527136) (not b!527309) (not b!527340) b_and!51499 (not b!527303) (not b!527300) (not b!527292) (not setNonEmpty!2548) (not b!527232) (not d!187562) (not b!527333) (not b!527337) (not b!527285) (not b!527270) (not b!527310) (not b!527184) (not setNonEmpty!2573) (not d!187638) (not b!527140) (not b!527290) (not b!527243) (not d!187634) (not b!527314) (not b!527251) (not b!527255) (not b!527307) (not b!527269) (not b!527131) (not b!527229) (not b!527190) (not b!527267) (not b!527278) (not b!527305) (not d!187578) (not b!527223) (not b_next!14031) (not d!187542) (not b!527192) (not b!527219) (not b!527167) (not d!187636) (not d!187610) (not b!527298) (not b!527320) (not setNonEmpty!2562) (not setNonEmpty!2585) (not b!527284) b_and!51493 (not b!527196) (not b!527293) (not b!527168) (not setNonEmpty!2559) (not b!527281) (not b!527234) (not b!527134) (not b!527302) (not b!527257) (not b!527139) (not b!527188) (not b!527221) b_and!51503 (not b!527277) (not setNonEmpty!2579) (not d!187572) (not setNonEmpty!2561) (not b!527185) b_and!51505 (not d!187554) (not d!187618) (not b!527189) (not b!527093) (not setNonEmpty!2582) (not setNonEmpty!2575) (not b!527287) (not b!527322) (not b!527169) b_and!51497 (not b!527063) (not b!527296) (not b!527182) (not b!527304) (not b!527092) (not b!527332) (not d!187568) (not b!527197) (not b!527225) (not b!527217) (not b!527214) (not b!527204) (not b!527144) (not b!527279) (not b!527295) (not d!187614) tp_is_empty!2797 (not b!527175) (not b!527201) (not setNonEmpty!2586) (not b!527286) (not d!187558) (not setNonEmpty!2560) (not b!527254) (not mapNonEmpty!2324) (not b!527244) (not b!527162) (not b!527086) (not b!527101) (not setNonEmpty!2552) (not b_next!14021) (not setNonEmpty!2571) (not b_next!14023) (not b!527297) (not setNonEmpty!2568) (not d!187538) (not b!527291) (not b!527311) (not b!527268) (not b_next!14025) b_and!51501 (not mapNonEmpty!2323) (not b!527041) (not b!527147) (not b!527057) (not setNonEmpty!2549) (not b!527262) (not b!527218) (not setNonEmpty!2584) (not b!527172) (not b!527208) (not d!187640) (not d!187574) (not b!527178) (not b!527246) (not setNonEmpty!2557) (not b!527212) (not b!527308) (not b!527226) (not b!527301) (not d!187642) (not d!187584) (not setNonEmpty!2547) (not b!527181) (not b!527228) (not b!527313) (not b!527250) (not setNonEmpty!2564) (not d!187546) (not b!527183) (not b!527138))
(check-sat b_and!51489 (not b_next!14015) b_and!51495 b_and!51487 (not b_next!14027) (not b_next!14029) (not b_next!14017) b_and!51491 b_and!51499 (not b_next!14031) b_and!51493 b_and!51503 b_and!51505 b_and!51497 (not b_next!14021) (not b_next!14023) (not b_next!14011) (not b_next!14013) (not b_next!14019) b_and!51509 (not b_next!14009) b_and!51507 (not b_next!14025) b_and!51501)
