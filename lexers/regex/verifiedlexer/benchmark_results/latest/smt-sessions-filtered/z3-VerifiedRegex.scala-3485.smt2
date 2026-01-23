; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201260 () Bool)

(assert start!201260)

(declare-fun b!2042473 () Bool)

(declare-fun b_free!56981 () Bool)

(declare-fun b_next!57685 () Bool)

(assert (=> b!2042473 (= b_free!56981 (not b_next!57685))))

(declare-fun tp!606624 () Bool)

(declare-fun b_and!162921 () Bool)

(assert (=> b!2042473 (= tp!606624 b_and!162921)))

(declare-fun b!2042451 () Bool)

(declare-fun b_free!56983 () Bool)

(declare-fun b_next!57687 () Bool)

(assert (=> b!2042451 (= b_free!56983 (not b_next!57687))))

(declare-fun tp!606622 () Bool)

(declare-fun b_and!162923 () Bool)

(assert (=> b!2042451 (= tp!606622 b_and!162923)))

(declare-fun b!2042472 () Bool)

(declare-fun b_free!56985 () Bool)

(declare-fun b_next!57689 () Bool)

(assert (=> b!2042472 (= b_free!56985 (not b_next!57689))))

(declare-fun tp!606613 () Bool)

(declare-fun b_and!162925 () Bool)

(assert (=> b!2042472 (= tp!606613 b_and!162925)))

(declare-fun b!2042462 () Bool)

(declare-fun b_free!56987 () Bool)

(declare-fun b_next!57691 () Bool)

(assert (=> b!2042462 (= b_free!56987 (not b_next!57691))))

(declare-fun tp!606615 () Bool)

(declare-fun b_and!162927 () Bool)

(assert (=> b!2042462 (= tp!606615 b_and!162927)))

(declare-fun b!2042481 () Bool)

(declare-fun b_free!56989 () Bool)

(declare-fun b_next!57693 () Bool)

(assert (=> b!2042481 (= b_free!56989 (not b_next!57693))))

(declare-fun tp!606617 () Bool)

(declare-fun b_and!162929 () Bool)

(assert (=> b!2042481 (= tp!606617 b_and!162929)))

(declare-fun b_free!56991 () Bool)

(declare-fun b_next!57695 () Bool)

(assert (=> b!2042481 (= b_free!56991 (not b_next!57695))))

(declare-fun tp!606611 () Bool)

(declare-fun b_and!162931 () Bool)

(assert (=> b!2042481 (= tp!606611 b_and!162931)))

(declare-fun e!1289761 () Bool)

(declare-fun tp!606628 () Bool)

(declare-fun tp!606627 () Bool)

(declare-datatypes ((C!11020 0))(
  ( (C!11021 (val!6496 Int)) )
))
(declare-datatypes ((Regex!5437 0))(
  ( (ElementMatch!5437 (c!330872 C!11020)) (Concat!9583 (regOne!11386 Regex!5437) (regTwo!11386 Regex!5437)) (EmptyExpr!5437) (Star!5437 (reg!5766 Regex!5437)) (EmptyLang!5437) (Union!5437 (regOne!11387 Regex!5437) (regTwo!11387 Regex!5437)) )
))
(declare-datatypes ((List!22441 0))(
  ( (Nil!22357) (Cons!22357 (h!27758 Regex!5437) (t!191555 List!22441)) )
))
(declare-datatypes ((Context!2014 0))(
  ( (Context!2015 (exprs!1507 List!22441)) )
))
(declare-datatypes ((Hashable!1905 0))(
  ( (HashableExt!1904 (__x!13853 Int)) )
))
(declare-datatypes ((tuple3!2038 0))(
  ( (tuple3!2039 (_1!12000 Regex!5437) (_2!12000 Context!2014) (_3!1483 C!11020)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21034 0))(
  ( (tuple2!21035 (_1!12001 tuple3!2038) (_2!12001 (InoxSet Context!2014))) )
))
(declare-datatypes ((List!22442 0))(
  ( (Nil!22358) (Cons!22358 (h!27759 tuple2!21034) (t!191556 List!22442)) )
))
(declare-datatypes ((array!6862 0))(
  ( (array!6863 (arr!3049 (Array (_ BitVec 32) (_ BitVec 64))) (size!17488 (_ BitVec 32))) )
))
(declare-datatypes ((array!6864 0))(
  ( (array!6865 (arr!3050 (Array (_ BitVec 32) List!22442)) (size!17489 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3982 0))(
  ( (LongMapFixedSize!3983 (defaultEntry!2356 Int) (mask!6025 (_ BitVec 32)) (extraKeys!2239 (_ BitVec 32)) (zeroValue!2249 List!22442) (minValue!2249 List!22442) (_size!4033 (_ BitVec 32)) (_keys!2288 array!6862) (_values!2271 array!6864) (_vacant!2052 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7789 0))(
  ( (Cell!7790 (v!27075 LongMapFixedSize!3982)) )
))
(declare-datatypes ((MutLongMap!1991 0))(
  ( (LongMap!1991 (underlying!4177 Cell!7789)) (MutLongMapExt!1990 (__x!13854 Int)) )
))
(declare-datatypes ((Cell!7791 0))(
  ( (Cell!7792 (v!27076 MutLongMap!1991)) )
))
(declare-datatypes ((MutableMap!1905 0))(
  ( (MutableMapExt!1904 (__x!13855 Int)) (HashMap!1905 (underlying!4178 Cell!7791) (hashF!3828 Hashable!1905) (_size!4034 (_ BitVec 32)) (defaultValue!2067 Int)) )
))
(declare-datatypes ((CacheDown!1202 0))(
  ( (CacheDown!1203 (cache!2286 MutableMap!1905)) )
))
(declare-fun cacheDown!575 () CacheDown!1202)

(declare-fun e!1289771 () Bool)

(declare-fun array_inv!2190 (array!6862) Bool)

(declare-fun array_inv!2191 (array!6864) Bool)

(assert (=> b!2042451 (= e!1289771 (and tp!606622 tp!606627 tp!606628 (array_inv!2190 (_keys!2288 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) (array_inv!2191 (_values!2271 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) e!1289761))))

(declare-fun b!2042452 () Bool)

(declare-fun e!1289770 () Bool)

(declare-fun e!1289783 () Bool)

(assert (=> b!2042452 (= e!1289770 e!1289783)))

(declare-fun res!895086 () Bool)

(assert (=> b!2042452 (=> (not res!895086) (not e!1289783))))

(declare-datatypes ((List!22443 0))(
  ( (Nil!22359) (Cons!22359 (h!27760 C!11020) (t!191557 List!22443)) )
))
(declare-fun lt!766012 () List!22443)

(declare-fun lt!766015 () List!22443)

(assert (=> b!2042452 (= res!895086 (= lt!766012 lt!766015))))

(declare-fun lt!766011 () List!22443)

(declare-fun lt!766010 () List!22443)

(declare-fun ++!6072 (List!22443 List!22443) List!22443)

(assert (=> b!2042452 (= lt!766015 (++!6072 lt!766011 lt!766010))))

(declare-datatypes ((IArray!14997 0))(
  ( (IArray!14998 (innerList!7556 List!22443)) )
))
(declare-datatypes ((Conc!7496 0))(
  ( (Node!7496 (left!17779 Conc!7496) (right!18109 Conc!7496) (csize!15222 Int) (cheight!7707 Int)) (Leaf!10982 (xs!10404 IArray!14997) (csize!15223 Int)) (Empty!7496) )
))
(declare-datatypes ((BalanceConc!14754 0))(
  ( (BalanceConc!14755 (c!330873 Conc!7496)) )
))
(declare-fun totalInput!418 () BalanceConc!14754)

(declare-fun list!9167 (BalanceConc!14754) List!22443)

(assert (=> b!2042452 (= lt!766012 (list!9167 totalInput!418))))

(declare-fun input!986 () BalanceConc!14754)

(assert (=> b!2042452 (= lt!766010 (list!9167 input!986))))

(declare-fun treated!60 () BalanceConc!14754)

(assert (=> b!2042452 (= lt!766011 (list!9167 treated!60))))

(declare-fun b!2042453 () Bool)

(declare-fun e!1289773 () Bool)

(declare-fun e!1289767 () Bool)

(assert (=> b!2042453 (= e!1289773 e!1289767)))

(declare-fun res!895084 () Bool)

(assert (=> b!2042453 (=> (not res!895084) (not e!1289767))))

(declare-datatypes ((List!22444 0))(
  ( (Nil!22360) (Cons!22360 (h!27761 (_ BitVec 16)) (t!191558 List!22444)) )
))
(declare-datatypes ((TokenValue!4146 0))(
  ( (FloatLiteralValue!8292 (text!29467 List!22444)) (TokenValueExt!4145 (__x!13856 Int)) (Broken!20730 (value!125911 List!22444)) (Object!4229) (End!4146) (Def!4146) (Underscore!4146) (Match!4146) (Else!4146) (Error!4146) (Case!4146) (If!4146) (Extends!4146) (Abstract!4146) (Class!4146) (Val!4146) (DelimiterValue!8292 (del!4206 List!22444)) (KeywordValue!4152 (value!125912 List!22444)) (CommentValue!8292 (value!125913 List!22444)) (WhitespaceValue!8292 (value!125914 List!22444)) (IndentationValue!4146 (value!125915 List!22444)) (String!25919) (Int32!4146) (Broken!20731 (value!125916 List!22444)) (Boolean!4147) (Unit!37007) (OperatorValue!4149 (op!4206 List!22444)) (IdentifierValue!8292 (value!125917 List!22444)) (IdentifierValue!8293 (value!125918 List!22444)) (WhitespaceValue!8293 (value!125919 List!22444)) (True!8292) (False!8292) (Broken!20732 (value!125920 List!22444)) (Broken!20733 (value!125921 List!22444)) (True!8293) (RightBrace!4146) (RightBracket!4146) (Colon!4146) (Null!4146) (Comma!4146) (LeftBracket!4146) (False!8293) (LeftBrace!4146) (ImaginaryLiteralValue!4146 (text!29468 List!22444)) (StringLiteralValue!12438 (value!125922 List!22444)) (EOFValue!4146 (value!125923 List!22444)) (IdentValue!4146 (value!125924 List!22444)) (DelimiterValue!8293 (value!125925 List!22444)) (DedentValue!4146 (value!125926 List!22444)) (NewLineValue!4146 (value!125927 List!22444)) (IntegerValue!12438 (value!125928 (_ BitVec 32)) (text!29469 List!22444)) (IntegerValue!12439 (value!125929 Int) (text!29470 List!22444)) (Times!4146) (Or!4146) (Equal!4146) (Minus!4146) (Broken!20734 (value!125930 List!22444)) (And!4146) (Div!4146) (LessEqual!4146) (Mod!4146) (Concat!9584) (Not!4146) (Plus!4146) (SpaceValue!4146 (value!125931 List!22444)) (IntegerValue!12440 (value!125932 Int) (text!29471 List!22444)) (StringLiteralValue!12439 (text!29472 List!22444)) (FloatLiteralValue!8293 (text!29473 List!22444)) (BytesLiteralValue!4146 (value!125933 List!22444)) (CommentValue!8293 (value!125934 List!22444)) (StringLiteralValue!12440 (value!125935 List!22444)) (ErrorTokenValue!4146 (msg!4207 List!22444)) )
))
(declare-datatypes ((String!25920 0))(
  ( (String!25921 (value!125936 String)) )
))
(declare-datatypes ((TokenValueInjection!7876 0))(
  ( (TokenValueInjection!7877 (toValue!5693 Int) (toChars!5552 Int)) )
))
(declare-datatypes ((Rule!7820 0))(
  ( (Rule!7821 (regex!4010 Regex!5437) (tag!4500 String!25920) (isSeparator!4010 Bool) (transformation!4010 TokenValueInjection!7876)) )
))
(declare-datatypes ((Token!7570 0))(
  ( (Token!7571 (value!125937 TokenValue!4146) (rule!6246 Rule!7820) (size!17490 Int) (originalCharacters!4816 List!22443)) )
))
(declare-datatypes ((List!22445 0))(
  ( (Nil!22361) (Cons!22361 (h!27762 Token!7570) (t!191559 List!22445)) )
))
(declare-datatypes ((IArray!14999 0))(
  ( (IArray!15000 (innerList!7557 List!22445)) )
))
(declare-datatypes ((Conc!7497 0))(
  ( (Node!7497 (left!17780 Conc!7497) (right!18110 Conc!7497) (csize!15224 Int) (cheight!7708 Int)) (Leaf!10983 (xs!10405 IArray!14999) (csize!15225 Int)) (Empty!7497) )
))
(declare-datatypes ((BalanceConc!14756 0))(
  ( (BalanceConc!14757 (c!330874 Conc!7497)) )
))
(declare-datatypes ((tuple2!21036 0))(
  ( (tuple2!21037 (_1!12002 BalanceConc!14756) (_2!12002 BalanceConc!14754)) )
))
(declare-fun lt!766013 () tuple2!21036)

(declare-fun acc!382 () BalanceConc!14756)

(declare-fun lt!766006 () tuple2!21036)

(declare-fun list!9168 (BalanceConc!14756) List!22445)

(declare-fun ++!6073 (BalanceConc!14756 BalanceConc!14756) BalanceConc!14756)

(assert (=> b!2042453 (= res!895084 (= (list!9168 (_1!12002 lt!766013)) (list!9168 (++!6073 acc!382 (_1!12002 lt!766006)))))))

(declare-datatypes ((List!22446 0))(
  ( (Nil!22362) (Cons!22362 (h!27763 Rule!7820) (t!191560 List!22446)) )
))
(declare-fun rules!1563 () List!22446)

(declare-datatypes ((LexerInterface!3623 0))(
  ( (LexerInterfaceExt!3620 (__x!13857 Int)) (Lexer!3621) )
))
(declare-fun thiss!12889 () LexerInterface!3623)

(declare-fun lexRec!428 (LexerInterface!3623 List!22446 BalanceConc!14754) tuple2!21036)

(assert (=> b!2042453 (= lt!766006 (lexRec!428 thiss!12889 rules!1563 input!986))))

(assert (=> b!2042453 (= lt!766013 (lexRec!428 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2042455 () Bool)

(declare-fun e!1289759 () Bool)

(declare-fun e!1289785 () Bool)

(declare-fun lt!766007 () MutLongMap!1991)

(get-info :version)

(assert (=> b!2042455 (= e!1289759 (and e!1289785 ((_ is LongMap!1991) lt!766007)))))

(assert (=> b!2042455 (= lt!766007 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))

(declare-fun b!2042456 () Bool)

(declare-fun tp!606625 () Bool)

(declare-fun mapRes!9193 () Bool)

(assert (=> b!2042456 (= e!1289761 (and tp!606625 mapRes!9193))))

(declare-fun condMapEmpty!9193 () Bool)

(declare-fun mapDefault!9192 () List!22442)

(assert (=> b!2042456 (= condMapEmpty!9193 (= (arr!3050 (_values!2271 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22442)) mapDefault!9192)))))

(declare-fun b!2042457 () Bool)

(declare-fun e!1289775 () Bool)

(declare-fun rulesValidInductive!1392 (LexerInterface!3623 List!22446) Bool)

(assert (=> b!2042457 (= e!1289775 (rulesValidInductive!1392 thiss!12889 rules!1563))))

(declare-fun lt!766009 () tuple2!21036)

(declare-datatypes ((tuple2!21038 0))(
  ( (tuple2!21039 (_1!12003 Context!2014) (_2!12003 C!11020)) )
))
(declare-datatypes ((tuple2!21040 0))(
  ( (tuple2!21041 (_1!12004 tuple2!21038) (_2!12004 (InoxSet Context!2014))) )
))
(declare-datatypes ((List!22447 0))(
  ( (Nil!22363) (Cons!22363 (h!27764 tuple2!21040) (t!191561 List!22447)) )
))
(declare-datatypes ((array!6866 0))(
  ( (array!6867 (arr!3051 (Array (_ BitVec 32) List!22447)) (size!17491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3984 0))(
  ( (LongMapFixedSize!3985 (defaultEntry!2357 Int) (mask!6026 (_ BitVec 32)) (extraKeys!2240 (_ BitVec 32)) (zeroValue!2250 List!22447) (minValue!2250 List!22447) (_size!4035 (_ BitVec 32)) (_keys!2289 array!6862) (_values!2272 array!6866) (_vacant!2053 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7793 0))(
  ( (Cell!7794 (v!27077 LongMapFixedSize!3984)) )
))
(declare-datatypes ((MutLongMap!1992 0))(
  ( (LongMap!1992 (underlying!4179 Cell!7793)) (MutLongMapExt!1991 (__x!13858 Int)) )
))
(declare-datatypes ((Hashable!1906 0))(
  ( (HashableExt!1905 (__x!13859 Int)) )
))
(declare-datatypes ((Cell!7795 0))(
  ( (Cell!7796 (v!27078 MutLongMap!1992)) )
))
(declare-datatypes ((MutableMap!1906 0))(
  ( (MutableMapExt!1905 (__x!13860 Int)) (HashMap!1906 (underlying!4180 Cell!7795) (hashF!3829 Hashable!1906) (_size!4036 (_ BitVec 32)) (defaultValue!2068 Int)) )
))
(declare-datatypes ((CacheUp!1202 0))(
  ( (CacheUp!1203 (cache!2287 MutableMap!1906)) )
))
(declare-datatypes ((tuple2!21042 0))(
  ( (tuple2!21043 (_1!12005 Token!7570) (_2!12005 BalanceConc!14754)) )
))
(declare-datatypes ((Option!4692 0))(
  ( (None!4691) (Some!4691 (v!27079 tuple2!21042)) )
))
(declare-datatypes ((tuple3!2040 0))(
  ( (tuple3!2041 (_1!12006 Option!4692) (_2!12006 CacheUp!1202) (_3!1484 CacheDown!1202)) )
))
(declare-fun lt!766014 () tuple3!2040)

(assert (=> b!2042457 (= lt!766009 (lexRec!428 thiss!12889 rules!1563 (_2!12005 (v!27079 (_1!12006 lt!766014)))))))

(declare-fun b!2042458 () Bool)

(declare-fun e!1289782 () Bool)

(assert (=> b!2042458 (= e!1289767 (not e!1289782))))

(declare-fun res!895082 () Bool)

(assert (=> b!2042458 (=> res!895082 e!1289782)))

(declare-fun isSuffix!471 (List!22443 List!22443) Bool)

(assert (=> b!2042458 (= res!895082 (not (isSuffix!471 lt!766010 lt!766012)))))

(assert (=> b!2042458 (isSuffix!471 lt!766010 lt!766015)))

(declare-datatypes ((Unit!37008 0))(
  ( (Unit!37009) )
))
(declare-fun lt!766016 () Unit!37008)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!372 (List!22443 List!22443) Unit!37008)

(assert (=> b!2042458 (= lt!766016 (lemmaConcatTwoListThenFSndIsSuffix!372 lt!766011 lt!766010))))

(declare-fun b!2042459 () Bool)

(declare-fun res!895089 () Bool)

(assert (=> b!2042459 (=> (not res!895089) (not e!1289767))))

(assert (=> b!2042459 (= res!895089 (= (list!9167 (_2!12002 lt!766013)) (list!9167 (_2!12002 lt!766006))))))

(declare-fun b!2042460 () Bool)

(assert (=> b!2042460 (= e!1289783 e!1289773)))

(declare-fun res!895090 () Bool)

(assert (=> b!2042460 (=> (not res!895090) (not e!1289773))))

(declare-fun lt!766008 () tuple2!21036)

(assert (=> b!2042460 (= res!895090 (= (list!9168 (_1!12002 lt!766008)) (list!9168 acc!382)))))

(assert (=> b!2042460 (= lt!766008 (lexRec!428 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2042461 () Bool)

(declare-fun e!1289758 () Bool)

(declare-fun tp!606614 () Bool)

(declare-fun inv!29694 (Conc!7497) Bool)

(assert (=> b!2042461 (= e!1289758 (and (inv!29694 (c!330874 acc!382)) tp!606614))))

(declare-fun mapIsEmpty!9192 () Bool)

(assert (=> mapIsEmpty!9192 mapRes!9193))

(declare-fun mapNonEmpty!9192 () Bool)

(declare-fun mapRes!9192 () Bool)

(declare-fun tp!606629 () Bool)

(declare-fun tp!606618 () Bool)

(assert (=> mapNonEmpty!9192 (= mapRes!9192 (and tp!606629 tp!606618))))

(declare-fun mapKey!9193 () (_ BitVec 32))

(declare-fun mapValue!9193 () List!22447)

(declare-fun cacheUp!562 () CacheUp!1202)

(declare-fun mapRest!9193 () (Array (_ BitVec 32) List!22447))

(assert (=> mapNonEmpty!9192 (= (arr!3051 (_values!2272 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) (store mapRest!9193 mapKey!9193 mapValue!9193))))

(declare-fun mapNonEmpty!9193 () Bool)

(declare-fun tp!606616 () Bool)

(declare-fun tp!606620 () Bool)

(assert (=> mapNonEmpty!9193 (= mapRes!9193 (and tp!606616 tp!606620))))

(declare-fun mapRest!9192 () (Array (_ BitVec 32) List!22442))

(declare-fun mapKey!9192 () (_ BitVec 32))

(declare-fun mapValue!9192 () List!22442)

(assert (=> mapNonEmpty!9193 (= (arr!3050 (_values!2271 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) (store mapRest!9192 mapKey!9192 mapValue!9192))))

(declare-fun tp!606610 () Bool)

(declare-fun tp!606623 () Bool)

(declare-fun e!1289762 () Bool)

(declare-fun e!1289779 () Bool)

(declare-fun array_inv!2192 (array!6866) Bool)

(assert (=> b!2042462 (= e!1289779 (and tp!606615 tp!606623 tp!606610 (array_inv!2190 (_keys!2289 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) (array_inv!2192 (_values!2272 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) e!1289762))))

(declare-fun b!2042463 () Bool)

(declare-fun e!1289769 () Bool)

(declare-fun e!1289765 () Bool)

(assert (=> b!2042463 (= e!1289769 e!1289765)))

(declare-fun b!2042454 () Bool)

(declare-fun e!1289780 () Bool)

(declare-fun e!1289784 () Bool)

(assert (=> b!2042454 (= e!1289780 e!1289784)))

(declare-fun res!895088 () Bool)

(assert (=> start!201260 (=> (not res!895088) (not e!1289770))))

(assert (=> start!201260 (= res!895088 ((_ is Lexer!3621) thiss!12889))))

(assert (=> start!201260 e!1289770))

(declare-fun e!1289763 () Bool)

(declare-fun inv!29695 (CacheDown!1202) Bool)

(assert (=> start!201260 (and (inv!29695 cacheDown!575) e!1289763)))

(assert (=> start!201260 true))

(declare-fun inv!29696 (CacheUp!1202) Bool)

(assert (=> start!201260 (and (inv!29696 cacheUp!562) e!1289769)))

(declare-fun e!1289766 () Bool)

(assert (=> start!201260 e!1289766))

(declare-fun e!1289774 () Bool)

(declare-fun inv!29697 (BalanceConc!14754) Bool)

(assert (=> start!201260 (and (inv!29697 totalInput!418) e!1289774)))

(declare-fun e!1289781 () Bool)

(assert (=> start!201260 (and (inv!29697 treated!60) e!1289781)))

(declare-fun e!1289786 () Bool)

(assert (=> start!201260 (and (inv!29697 input!986) e!1289786)))

(declare-fun inv!29698 (BalanceConc!14756) Bool)

(assert (=> start!201260 (and (inv!29698 acc!382) e!1289758)))

(declare-fun b!2042464 () Bool)

(assert (=> b!2042464 (= e!1289782 e!1289775)))

(declare-fun res!895085 () Bool)

(assert (=> b!2042464 (=> res!895085 e!1289775)))

(assert (=> b!2042464 (= res!895085 (not ((_ is Some!4691) (_1!12006 lt!766014))))))

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!4 (LexerInterface!3623 List!22446 BalanceConc!14754 BalanceConc!14754 CacheUp!1202 CacheDown!1202) tuple3!2040)

(assert (=> b!2042464 (= lt!766014 (maxPrefixZipperSequenceV2MemOnlyDeriv!4 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2042465 () Bool)

(declare-fun tp!606630 () Bool)

(assert (=> b!2042465 (= e!1289762 (and tp!606630 mapRes!9192))))

(declare-fun condMapEmpty!9192 () Bool)

(declare-fun mapDefault!9193 () List!22447)

(assert (=> b!2042465 (= condMapEmpty!9192 (= (arr!3051 (_values!2272 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22447)) mapDefault!9193)))))

(declare-fun b!2042466 () Bool)

(declare-fun e!1289776 () Bool)

(assert (=> b!2042466 (= e!1289763 e!1289776)))

(declare-fun b!2042467 () Bool)

(declare-fun res!895091 () Bool)

(assert (=> b!2042467 (=> (not res!895091) (not e!1289767))))

(declare-fun valid!1588 (CacheUp!1202) Bool)

(assert (=> b!2042467 (= res!895091 (valid!1588 cacheUp!562))))

(declare-fun b!2042468 () Bool)

(declare-fun e!1289760 () Bool)

(assert (=> b!2042468 (= e!1289760 e!1289771)))

(declare-fun b!2042469 () Bool)

(assert (=> b!2042469 (= e!1289784 e!1289779)))

(declare-fun b!2042470 () Bool)

(declare-fun e!1289772 () Bool)

(declare-fun tp!606621 () Bool)

(assert (=> b!2042470 (= e!1289766 (and e!1289772 tp!606621))))

(declare-fun b!2042471 () Bool)

(assert (=> b!2042471 (= e!1289785 e!1289760)))

(assert (=> b!2042472 (= e!1289776 (and e!1289759 tp!606613))))

(declare-fun e!1289778 () Bool)

(assert (=> b!2042473 (= e!1289765 (and e!1289778 tp!606624))))

(declare-fun b!2042474 () Bool)

(declare-fun res!895092 () Bool)

(assert (=> b!2042474 (=> (not res!895092) (not e!1289767))))

(declare-fun valid!1589 (CacheDown!1202) Bool)

(assert (=> b!2042474 (= res!895092 (valid!1589 cacheDown!575))))

(declare-fun mapIsEmpty!9193 () Bool)

(assert (=> mapIsEmpty!9193 mapRes!9192))

(declare-fun b!2042475 () Bool)

(declare-fun e!1289757 () Bool)

(declare-fun tp!606631 () Bool)

(declare-fun inv!29692 (String!25920) Bool)

(declare-fun inv!29699 (TokenValueInjection!7876) Bool)

(assert (=> b!2042475 (= e!1289772 (and tp!606631 (inv!29692 (tag!4500 (h!27763 rules!1563))) (inv!29699 (transformation!4010 (h!27763 rules!1563))) e!1289757))))

(declare-fun b!2042476 () Bool)

(declare-fun tp!606612 () Bool)

(declare-fun inv!29700 (Conc!7496) Bool)

(assert (=> b!2042476 (= e!1289774 (and (inv!29700 (c!330873 totalInput!418)) tp!606612))))

(declare-fun b!2042477 () Bool)

(declare-fun res!895093 () Bool)

(assert (=> b!2042477 (=> (not res!895093) (not e!1289770))))

(declare-fun rulesInvariant!3227 (LexerInterface!3623 List!22446) Bool)

(assert (=> b!2042477 (= res!895093 (rulesInvariant!3227 thiss!12889 rules!1563))))

(declare-fun b!2042478 () Bool)

(declare-fun tp!606619 () Bool)

(assert (=> b!2042478 (= e!1289781 (and (inv!29700 (c!330873 treated!60)) tp!606619))))

(declare-fun b!2042479 () Bool)

(declare-fun res!895087 () Bool)

(assert (=> b!2042479 (=> (not res!895087) (not e!1289773))))

(declare-fun isEmpty!13958 (List!22443) Bool)

(assert (=> b!2042479 (= res!895087 (isEmpty!13958 (list!9167 (_2!12002 lt!766008))))))

(declare-fun b!2042480 () Bool)

(declare-fun tp!606626 () Bool)

(assert (=> b!2042480 (= e!1289786 (and (inv!29700 (c!330873 input!986)) tp!606626))))

(assert (=> b!2042481 (= e!1289757 (and tp!606617 tp!606611))))

(declare-fun b!2042482 () Bool)

(declare-fun res!895083 () Bool)

(assert (=> b!2042482 (=> (not res!895083) (not e!1289770))))

(declare-fun isEmpty!13959 (List!22446) Bool)

(assert (=> b!2042482 (= res!895083 (not (isEmpty!13959 rules!1563)))))

(declare-fun b!2042483 () Bool)

(declare-fun lt!766017 () MutLongMap!1992)

(assert (=> b!2042483 (= e!1289778 (and e!1289780 ((_ is LongMap!1992) lt!766017)))))

(assert (=> b!2042483 (= lt!766017 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))

(assert (= (and start!201260 res!895088) b!2042482))

(assert (= (and b!2042482 res!895083) b!2042477))

(assert (= (and b!2042477 res!895093) b!2042452))

(assert (= (and b!2042452 res!895086) b!2042460))

(assert (= (and b!2042460 res!895090) b!2042479))

(assert (= (and b!2042479 res!895087) b!2042453))

(assert (= (and b!2042453 res!895084) b!2042459))

(assert (= (and b!2042459 res!895089) b!2042467))

(assert (= (and b!2042467 res!895091) b!2042474))

(assert (= (and b!2042474 res!895092) b!2042458))

(assert (= (and b!2042458 (not res!895082)) b!2042464))

(assert (= (and b!2042464 (not res!895085)) b!2042457))

(assert (= (and b!2042456 condMapEmpty!9193) mapIsEmpty!9192))

(assert (= (and b!2042456 (not condMapEmpty!9193)) mapNonEmpty!9193))

(assert (= b!2042451 b!2042456))

(assert (= b!2042468 b!2042451))

(assert (= b!2042471 b!2042468))

(assert (= (and b!2042455 ((_ is LongMap!1991) (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))) b!2042471))

(assert (= b!2042472 b!2042455))

(assert (= (and b!2042466 ((_ is HashMap!1905) (cache!2286 cacheDown!575))) b!2042472))

(assert (= start!201260 b!2042466))

(assert (= (and b!2042465 condMapEmpty!9192) mapIsEmpty!9193))

(assert (= (and b!2042465 (not condMapEmpty!9192)) mapNonEmpty!9192))

(assert (= b!2042462 b!2042465))

(assert (= b!2042469 b!2042462))

(assert (= b!2042454 b!2042469))

(assert (= (and b!2042483 ((_ is LongMap!1992) (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))) b!2042454))

(assert (= b!2042473 b!2042483))

(assert (= (and b!2042463 ((_ is HashMap!1906) (cache!2287 cacheUp!562))) b!2042473))

(assert (= start!201260 b!2042463))

(assert (= b!2042475 b!2042481))

(assert (= b!2042470 b!2042475))

(assert (= (and start!201260 ((_ is Cons!22362) rules!1563)) b!2042470))

(assert (= start!201260 b!2042476))

(assert (= start!201260 b!2042478))

(assert (= start!201260 b!2042480))

(assert (= start!201260 b!2042461))

(declare-fun m!2486443 () Bool)

(assert (=> b!2042479 m!2486443))

(assert (=> b!2042479 m!2486443))

(declare-fun m!2486445 () Bool)

(assert (=> b!2042479 m!2486445))

(declare-fun m!2486447 () Bool)

(assert (=> b!2042478 m!2486447))

(declare-fun m!2486449 () Bool)

(assert (=> b!2042477 m!2486449))

(declare-fun m!2486451 () Bool)

(assert (=> start!201260 m!2486451))

(declare-fun m!2486453 () Bool)

(assert (=> start!201260 m!2486453))

(declare-fun m!2486455 () Bool)

(assert (=> start!201260 m!2486455))

(declare-fun m!2486457 () Bool)

(assert (=> start!201260 m!2486457))

(declare-fun m!2486459 () Bool)

(assert (=> start!201260 m!2486459))

(declare-fun m!2486461 () Bool)

(assert (=> start!201260 m!2486461))

(declare-fun m!2486463 () Bool)

(assert (=> mapNonEmpty!9192 m!2486463))

(declare-fun m!2486465 () Bool)

(assert (=> b!2042476 m!2486465))

(declare-fun m!2486467 () Bool)

(assert (=> b!2042464 m!2486467))

(declare-fun m!2486469 () Bool)

(assert (=> b!2042467 m!2486469))

(declare-fun m!2486471 () Bool)

(assert (=> b!2042460 m!2486471))

(declare-fun m!2486473 () Bool)

(assert (=> b!2042460 m!2486473))

(declare-fun m!2486475 () Bool)

(assert (=> b!2042460 m!2486475))

(declare-fun m!2486477 () Bool)

(assert (=> b!2042451 m!2486477))

(declare-fun m!2486479 () Bool)

(assert (=> b!2042451 m!2486479))

(declare-fun m!2486481 () Bool)

(assert (=> b!2042459 m!2486481))

(declare-fun m!2486483 () Bool)

(assert (=> b!2042459 m!2486483))

(declare-fun m!2486485 () Bool)

(assert (=> b!2042457 m!2486485))

(declare-fun m!2486487 () Bool)

(assert (=> b!2042457 m!2486487))

(declare-fun m!2486489 () Bool)

(assert (=> b!2042461 m!2486489))

(declare-fun m!2486491 () Bool)

(assert (=> b!2042458 m!2486491))

(declare-fun m!2486493 () Bool)

(assert (=> b!2042458 m!2486493))

(declare-fun m!2486495 () Bool)

(assert (=> b!2042458 m!2486495))

(declare-fun m!2486497 () Bool)

(assert (=> b!2042475 m!2486497))

(declare-fun m!2486499 () Bool)

(assert (=> b!2042475 m!2486499))

(declare-fun m!2486501 () Bool)

(assert (=> b!2042480 m!2486501))

(declare-fun m!2486503 () Bool)

(assert (=> mapNonEmpty!9193 m!2486503))

(declare-fun m!2486505 () Bool)

(assert (=> b!2042453 m!2486505))

(declare-fun m!2486507 () Bool)

(assert (=> b!2042453 m!2486507))

(assert (=> b!2042453 m!2486505))

(declare-fun m!2486509 () Bool)

(assert (=> b!2042453 m!2486509))

(declare-fun m!2486511 () Bool)

(assert (=> b!2042453 m!2486511))

(declare-fun m!2486513 () Bool)

(assert (=> b!2042453 m!2486513))

(declare-fun m!2486515 () Bool)

(assert (=> b!2042474 m!2486515))

(declare-fun m!2486517 () Bool)

(assert (=> b!2042462 m!2486517))

(declare-fun m!2486519 () Bool)

(assert (=> b!2042462 m!2486519))

(declare-fun m!2486521 () Bool)

(assert (=> b!2042452 m!2486521))

(declare-fun m!2486523 () Bool)

(assert (=> b!2042452 m!2486523))

(declare-fun m!2486525 () Bool)

(assert (=> b!2042452 m!2486525))

(declare-fun m!2486527 () Bool)

(assert (=> b!2042452 m!2486527))

(declare-fun m!2486529 () Bool)

(assert (=> b!2042482 m!2486529))

(check-sat (not b!2042461) (not b!2042464) b_and!162931 (not start!201260) b_and!162929 (not b_next!57695) (not b!2042482) b_and!162921 (not b!2042480) (not b_next!57691) b_and!162927 (not b!2042474) (not b!2042462) (not b!2042457) (not b_next!57693) b_and!162923 (not b!2042477) (not b!2042451) (not b!2042476) (not b!2042458) (not b!2042475) (not b!2042470) (not b!2042479) (not b_next!57687) (not b!2042459) (not b!2042465) (not b!2042478) (not mapNonEmpty!9193) (not b_next!57685) (not b!2042456) (not b!2042460) (not b!2042453) (not mapNonEmpty!9192) (not b!2042467) b_and!162925 (not b!2042452) (not b_next!57689))
(check-sat (not b_next!57693) b_and!162923 b_and!162931 b_and!162929 (not b_next!57695) b_and!162921 (not b_next!57687) (not b_next!57685) (not b_next!57691) b_and!162927 b_and!162925 (not b_next!57689))
(get-model)

(declare-fun d!625308 () Bool)

(assert (=> d!625308 true))

(declare-fun lt!766020 () Bool)

(declare-fun lambda!76689 () Int)

(declare-fun forall!4765 (List!22446 Int) Bool)

(assert (=> d!625308 (= lt!766020 (forall!4765 rules!1563 lambda!76689))))

(declare-fun e!1289791 () Bool)

(assert (=> d!625308 (= lt!766020 e!1289791)))

(declare-fun res!895101 () Bool)

(assert (=> d!625308 (=> res!895101 e!1289791)))

(assert (=> d!625308 (= res!895101 (not ((_ is Cons!22362) rules!1563)))))

(assert (=> d!625308 (= (rulesValidInductive!1392 thiss!12889 rules!1563) lt!766020)))

(declare-fun b!2042488 () Bool)

(declare-fun e!1289792 () Bool)

(assert (=> b!2042488 (= e!1289791 e!1289792)))

(declare-fun res!895100 () Bool)

(assert (=> b!2042488 (=> (not res!895100) (not e!1289792))))

(declare-fun ruleValid!1227 (LexerInterface!3623 Rule!7820) Bool)

(assert (=> b!2042488 (= res!895100 (ruleValid!1227 thiss!12889 (h!27763 rules!1563)))))

(declare-fun b!2042489 () Bool)

(assert (=> b!2042489 (= e!1289792 (rulesValidInductive!1392 thiss!12889 (t!191560 rules!1563)))))

(assert (= (and d!625308 (not res!895101)) b!2042488))

(assert (= (and b!2042488 res!895100) b!2042489))

(declare-fun m!2486531 () Bool)

(assert (=> d!625308 m!2486531))

(declare-fun m!2486533 () Bool)

(assert (=> b!2042488 m!2486533))

(declare-fun m!2486535 () Bool)

(assert (=> b!2042489 m!2486535))

(assert (=> b!2042457 d!625308))

(declare-fun b!2042506 () Bool)

(declare-fun res!895110 () Bool)

(declare-fun e!1289801 () Bool)

(assert (=> b!2042506 (=> (not res!895110) (not e!1289801))))

(declare-fun lt!766028 () tuple2!21036)

(declare-datatypes ((tuple2!21044 0))(
  ( (tuple2!21045 (_1!12007 List!22445) (_2!12007 List!22443)) )
))
(declare-fun lexList!987 (LexerInterface!3623 List!22446 List!22443) tuple2!21044)

(assert (=> b!2042506 (= res!895110 (= (list!9168 (_1!12002 lt!766028)) (_1!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 (_2!12005 (v!27079 (_1!12006 lt!766014))))))))))

(declare-fun b!2042507 () Bool)

(declare-fun e!1289803 () Bool)

(declare-fun e!1289802 () Bool)

(assert (=> b!2042507 (= e!1289803 e!1289802)))

(declare-fun res!895109 () Bool)

(declare-fun size!17492 (BalanceConc!14754) Int)

(assert (=> b!2042507 (= res!895109 (< (size!17492 (_2!12002 lt!766028)) (size!17492 (_2!12005 (v!27079 (_1!12006 lt!766014))))))))

(assert (=> b!2042507 (=> (not res!895109) (not e!1289802))))

(declare-fun b!2042508 () Bool)

(declare-fun isEmpty!13960 (BalanceConc!14756) Bool)

(assert (=> b!2042508 (= e!1289802 (not (isEmpty!13960 (_1!12002 lt!766028))))))

(declare-fun b!2042509 () Bool)

(declare-fun e!1289804 () tuple2!21036)

(assert (=> b!2042509 (= e!1289804 (tuple2!21037 (BalanceConc!14757 Empty!7497) (_2!12005 (v!27079 (_1!12006 lt!766014)))))))

(declare-fun b!2042510 () Bool)

(declare-fun lt!766027 () tuple2!21036)

(declare-fun lt!766029 () Option!4692)

(declare-fun prepend!909 (BalanceConc!14756 Token!7570) BalanceConc!14756)

(assert (=> b!2042510 (= e!1289804 (tuple2!21037 (prepend!909 (_1!12002 lt!766027) (_1!12005 (v!27079 lt!766029))) (_2!12002 lt!766027)))))

(assert (=> b!2042510 (= lt!766027 (lexRec!428 thiss!12889 rules!1563 (_2!12005 (v!27079 lt!766029))))))

(declare-fun d!625310 () Bool)

(assert (=> d!625310 e!1289801))

(declare-fun res!895108 () Bool)

(assert (=> d!625310 (=> (not res!895108) (not e!1289801))))

(assert (=> d!625310 (= res!895108 e!1289803)))

(declare-fun c!330881 () Bool)

(declare-fun size!17493 (BalanceConc!14756) Int)

(assert (=> d!625310 (= c!330881 (> (size!17493 (_1!12002 lt!766028)) 0))))

(assert (=> d!625310 (= lt!766028 e!1289804)))

(declare-fun c!330880 () Bool)

(assert (=> d!625310 (= c!330880 ((_ is Some!4691) lt!766029))))

(declare-fun maxPrefixZipperSequence!787 (LexerInterface!3623 List!22446 BalanceConc!14754) Option!4692)

(assert (=> d!625310 (= lt!766029 (maxPrefixZipperSequence!787 thiss!12889 rules!1563 (_2!12005 (v!27079 (_1!12006 lt!766014)))))))

(assert (=> d!625310 (= (lexRec!428 thiss!12889 rules!1563 (_2!12005 (v!27079 (_1!12006 lt!766014)))) lt!766028)))

(declare-fun b!2042511 () Bool)

(assert (=> b!2042511 (= e!1289801 (= (list!9167 (_2!12002 lt!766028)) (_2!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 (_2!12005 (v!27079 (_1!12006 lt!766014))))))))))

(declare-fun b!2042512 () Bool)

(assert (=> b!2042512 (= e!1289803 (= (list!9167 (_2!12002 lt!766028)) (list!9167 (_2!12005 (v!27079 (_1!12006 lt!766014))))))))

(assert (= (and d!625310 c!330880) b!2042510))

(assert (= (and d!625310 (not c!330880)) b!2042509))

(assert (= (and d!625310 c!330881) b!2042507))

(assert (= (and d!625310 (not c!330881)) b!2042512))

(assert (= (and b!2042507 res!895109) b!2042508))

(assert (= (and d!625310 res!895108) b!2042506))

(assert (= (and b!2042506 res!895110) b!2042511))

(declare-fun m!2486537 () Bool)

(assert (=> b!2042507 m!2486537))

(declare-fun m!2486539 () Bool)

(assert (=> b!2042507 m!2486539))

(declare-fun m!2486541 () Bool)

(assert (=> b!2042512 m!2486541))

(declare-fun m!2486543 () Bool)

(assert (=> b!2042512 m!2486543))

(declare-fun m!2486545 () Bool)

(assert (=> b!2042508 m!2486545))

(declare-fun m!2486547 () Bool)

(assert (=> d!625310 m!2486547))

(declare-fun m!2486549 () Bool)

(assert (=> d!625310 m!2486549))

(assert (=> b!2042511 m!2486541))

(assert (=> b!2042511 m!2486543))

(assert (=> b!2042511 m!2486543))

(declare-fun m!2486551 () Bool)

(assert (=> b!2042511 m!2486551))

(declare-fun m!2486553 () Bool)

(assert (=> b!2042510 m!2486553))

(declare-fun m!2486555 () Bool)

(assert (=> b!2042510 m!2486555))

(declare-fun m!2486557 () Bool)

(assert (=> b!2042506 m!2486557))

(assert (=> b!2042506 m!2486543))

(assert (=> b!2042506 m!2486543))

(assert (=> b!2042506 m!2486551))

(assert (=> b!2042457 d!625310))

(declare-fun b!2042521 () Bool)

(declare-fun e!1289809 () tuple3!2040)

(declare-fun lt!766050 () tuple3!2040)

(assert (=> b!2042521 (= e!1289809 (tuple3!2041 (_1!12006 lt!766050) (_2!12006 lt!766050) (_3!1484 lt!766050)))))

(declare-fun call!125288 () tuple3!2040)

(assert (=> b!2042521 (= lt!766050 call!125288)))

(declare-fun bm!125283 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!2 (LexerInterface!3623 Rule!7820 BalanceConc!14754 BalanceConc!14754 CacheUp!1202 CacheDown!1202) tuple3!2040)

(assert (=> bm!125283 (= call!125288 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!2 thiss!12889 (h!27763 rules!1563) input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun d!625312 () Bool)

(declare-fun e!1289810 () Bool)

(assert (=> d!625312 e!1289810))

(declare-fun res!895116 () Bool)

(assert (=> d!625312 (=> (not res!895116) (not e!1289810))))

(declare-fun lt!766052 () tuple3!2040)

(declare-fun maxPrefixZipperSequenceV2!314 (LexerInterface!3623 List!22446 BalanceConc!14754 BalanceConc!14754) Option!4692)

(assert (=> d!625312 (= res!895116 (= (_1!12006 lt!766052) (maxPrefixZipperSequenceV2!314 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625312 (= lt!766052 e!1289809)))

(declare-fun c!330884 () Bool)

(assert (=> d!625312 (= c!330884 (and ((_ is Cons!22362) rules!1563) ((_ is Nil!22362) (t!191560 rules!1563))))))

(declare-fun lt!766048 () Unit!37008)

(declare-fun lt!766046 () Unit!37008)

(assert (=> d!625312 (= lt!766048 lt!766046)))

(declare-fun lt!766051 () List!22443)

(declare-fun lt!766053 () List!22443)

(declare-fun isPrefix!1991 (List!22443 List!22443) Bool)

(assert (=> d!625312 (isPrefix!1991 lt!766051 lt!766053)))

(declare-fun lemmaIsPrefixRefl!1309 (List!22443 List!22443) Unit!37008)

(assert (=> d!625312 (= lt!766046 (lemmaIsPrefixRefl!1309 lt!766051 lt!766053))))

(assert (=> d!625312 (= lt!766053 (list!9167 input!986))))

(assert (=> d!625312 (= lt!766051 (list!9167 input!986))))

(assert (=> d!625312 (rulesValidInductive!1392 thiss!12889 rules!1563)))

(assert (=> d!625312 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!4 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575) lt!766052)))

(declare-fun b!2042522 () Bool)

(assert (=> b!2042522 (= e!1289810 (valid!1589 (_3!1484 lt!766052)))))

(declare-fun b!2042523 () Bool)

(declare-fun lt!766047 () tuple3!2040)

(declare-fun lt!766049 () tuple3!2040)

(assert (=> b!2042523 (= e!1289809 (tuple3!2041 (ite (and ((_ is None!4691) (_1!12006 lt!766047)) ((_ is None!4691) (_1!12006 lt!766049))) None!4691 (ite ((_ is None!4691) (_1!12006 lt!766049)) (_1!12006 lt!766047) (ite ((_ is None!4691) (_1!12006 lt!766047)) (_1!12006 lt!766049) (ite (>= (size!17490 (_1!12005 (v!27079 (_1!12006 lt!766047)))) (size!17490 (_1!12005 (v!27079 (_1!12006 lt!766049))))) (_1!12006 lt!766047) (_1!12006 lt!766049))))) (_2!12006 lt!766049) (_3!1484 lt!766049)))))

(assert (=> b!2042523 (= lt!766047 call!125288)))

(assert (=> b!2042523 (= lt!766049 (maxPrefixZipperSequenceV2MemOnlyDeriv!4 thiss!12889 (t!191560 rules!1563) input!986 totalInput!418 (_2!12006 lt!766047) (_3!1484 lt!766047)))))

(declare-fun b!2042524 () Bool)

(declare-fun res!895115 () Bool)

(assert (=> b!2042524 (=> (not res!895115) (not e!1289810))))

(assert (=> b!2042524 (= res!895115 (valid!1588 (_2!12006 lt!766052)))))

(assert (= (and d!625312 c!330884) b!2042521))

(assert (= (and d!625312 (not c!330884)) b!2042523))

(assert (= (or b!2042521 b!2042523) bm!125283))

(assert (= (and d!625312 res!895116) b!2042524))

(assert (= (and b!2042524 res!895115) b!2042522))

(declare-fun m!2486559 () Bool)

(assert (=> bm!125283 m!2486559))

(declare-fun m!2486561 () Bool)

(assert (=> b!2042522 m!2486561))

(declare-fun m!2486563 () Bool)

(assert (=> b!2042524 m!2486563))

(declare-fun m!2486565 () Bool)

(assert (=> b!2042523 m!2486565))

(declare-fun m!2486567 () Bool)

(assert (=> d!625312 m!2486567))

(declare-fun m!2486569 () Bool)

(assert (=> d!625312 m!2486569))

(declare-fun m!2486571 () Bool)

(assert (=> d!625312 m!2486571))

(assert (=> d!625312 m!2486485))

(assert (=> d!625312 m!2486525))

(assert (=> b!2042464 d!625312))

(declare-fun d!625314 () Bool)

(declare-fun c!330887 () Bool)

(assert (=> d!625314 (= c!330887 ((_ is Node!7496) (c!330873 totalInput!418)))))

(declare-fun e!1289815 () Bool)

(assert (=> d!625314 (= (inv!29700 (c!330873 totalInput!418)) e!1289815)))

(declare-fun b!2042531 () Bool)

(declare-fun inv!29701 (Conc!7496) Bool)

(assert (=> b!2042531 (= e!1289815 (inv!29701 (c!330873 totalInput!418)))))

(declare-fun b!2042532 () Bool)

(declare-fun e!1289816 () Bool)

(assert (=> b!2042532 (= e!1289815 e!1289816)))

(declare-fun res!895119 () Bool)

(assert (=> b!2042532 (= res!895119 (not ((_ is Leaf!10982) (c!330873 totalInput!418))))))

(assert (=> b!2042532 (=> res!895119 e!1289816)))

(declare-fun b!2042533 () Bool)

(declare-fun inv!29702 (Conc!7496) Bool)

(assert (=> b!2042533 (= e!1289816 (inv!29702 (c!330873 totalInput!418)))))

(assert (= (and d!625314 c!330887) b!2042531))

(assert (= (and d!625314 (not c!330887)) b!2042532))

(assert (= (and b!2042532 (not res!895119)) b!2042533))

(declare-fun m!2486573 () Bool)

(assert (=> b!2042531 m!2486573))

(declare-fun m!2486575 () Bool)

(assert (=> b!2042533 m!2486575))

(assert (=> b!2042476 d!625314))

(declare-fun d!625316 () Bool)

(declare-fun e!1289819 () Bool)

(assert (=> d!625316 e!1289819))

(declare-fun res!895122 () Bool)

(assert (=> d!625316 (=> res!895122 e!1289819)))

(declare-fun lt!766056 () Bool)

(assert (=> d!625316 (= res!895122 (not lt!766056))))

(declare-fun drop!1125 (List!22443 Int) List!22443)

(declare-fun size!17494 (List!22443) Int)

(assert (=> d!625316 (= lt!766056 (= lt!766010 (drop!1125 lt!766012 (- (size!17494 lt!766012) (size!17494 lt!766010)))))))

(assert (=> d!625316 (= (isSuffix!471 lt!766010 lt!766012) lt!766056)))

(declare-fun b!2042536 () Bool)

(assert (=> b!2042536 (= e!1289819 (>= (size!17494 lt!766012) (size!17494 lt!766010)))))

(assert (= (and d!625316 (not res!895122)) b!2042536))

(declare-fun m!2486577 () Bool)

(assert (=> d!625316 m!2486577))

(declare-fun m!2486579 () Bool)

(assert (=> d!625316 m!2486579))

(declare-fun m!2486581 () Bool)

(assert (=> d!625316 m!2486581))

(assert (=> b!2042536 m!2486577))

(assert (=> b!2042536 m!2486579))

(assert (=> b!2042458 d!625316))

(declare-fun d!625318 () Bool)

(declare-fun e!1289820 () Bool)

(assert (=> d!625318 e!1289820))

(declare-fun res!895123 () Bool)

(assert (=> d!625318 (=> res!895123 e!1289820)))

(declare-fun lt!766057 () Bool)

(assert (=> d!625318 (= res!895123 (not lt!766057))))

(assert (=> d!625318 (= lt!766057 (= lt!766010 (drop!1125 lt!766015 (- (size!17494 lt!766015) (size!17494 lt!766010)))))))

(assert (=> d!625318 (= (isSuffix!471 lt!766010 lt!766015) lt!766057)))

(declare-fun b!2042537 () Bool)

(assert (=> b!2042537 (= e!1289820 (>= (size!17494 lt!766015) (size!17494 lt!766010)))))

(assert (= (and d!625318 (not res!895123)) b!2042537))

(declare-fun m!2486583 () Bool)

(assert (=> d!625318 m!2486583))

(assert (=> d!625318 m!2486579))

(declare-fun m!2486585 () Bool)

(assert (=> d!625318 m!2486585))

(assert (=> b!2042537 m!2486583))

(assert (=> b!2042537 m!2486579))

(assert (=> b!2042458 d!625318))

(declare-fun d!625320 () Bool)

(assert (=> d!625320 (isSuffix!471 lt!766010 (++!6072 lt!766011 lt!766010))))

(declare-fun lt!766060 () Unit!37008)

(declare-fun choose!12460 (List!22443 List!22443) Unit!37008)

(assert (=> d!625320 (= lt!766060 (choose!12460 lt!766011 lt!766010))))

(assert (=> d!625320 (= (lemmaConcatTwoListThenFSndIsSuffix!372 lt!766011 lt!766010) lt!766060)))

(declare-fun bs!421870 () Bool)

(assert (= bs!421870 d!625320))

(assert (=> bs!421870 m!2486521))

(assert (=> bs!421870 m!2486521))

(declare-fun m!2486587 () Bool)

(assert (=> bs!421870 m!2486587))

(declare-fun m!2486589 () Bool)

(assert (=> bs!421870 m!2486589))

(assert (=> b!2042458 d!625320))

(declare-fun d!625322 () Bool)

(assert (=> d!625322 (= (inv!29692 (tag!4500 (h!27763 rules!1563))) (= (mod (str.len (value!125936 (tag!4500 (h!27763 rules!1563)))) 2) 0))))

(assert (=> b!2042475 d!625322))

(declare-fun d!625324 () Bool)

(declare-fun res!895126 () Bool)

(declare-fun e!1289823 () Bool)

(assert (=> d!625324 (=> (not res!895126) (not e!1289823))))

(declare-fun semiInverseModEq!1615 (Int Int) Bool)

(assert (=> d!625324 (= res!895126 (semiInverseModEq!1615 (toChars!5552 (transformation!4010 (h!27763 rules!1563))) (toValue!5693 (transformation!4010 (h!27763 rules!1563)))))))

(assert (=> d!625324 (= (inv!29699 (transformation!4010 (h!27763 rules!1563))) e!1289823)))

(declare-fun b!2042540 () Bool)

(declare-fun equivClasses!1542 (Int Int) Bool)

(assert (=> b!2042540 (= e!1289823 (equivClasses!1542 (toChars!5552 (transformation!4010 (h!27763 rules!1563))) (toValue!5693 (transformation!4010 (h!27763 rules!1563)))))))

(assert (= (and d!625324 res!895126) b!2042540))

(declare-fun m!2486591 () Bool)

(assert (=> d!625324 m!2486591))

(declare-fun m!2486593 () Bool)

(assert (=> b!2042540 m!2486593))

(assert (=> b!2042475 d!625324))

(declare-fun d!625326 () Bool)

(declare-fun list!9169 (Conc!7497) List!22445)

(assert (=> d!625326 (= (list!9168 (_1!12002 lt!766008)) (list!9169 (c!330874 (_1!12002 lt!766008))))))

(declare-fun bs!421871 () Bool)

(assert (= bs!421871 d!625326))

(declare-fun m!2486595 () Bool)

(assert (=> bs!421871 m!2486595))

(assert (=> b!2042460 d!625326))

(declare-fun d!625328 () Bool)

(assert (=> d!625328 (= (list!9168 acc!382) (list!9169 (c!330874 acc!382)))))

(declare-fun bs!421872 () Bool)

(assert (= bs!421872 d!625328))

(declare-fun m!2486597 () Bool)

(assert (=> bs!421872 m!2486597))

(assert (=> b!2042460 d!625328))

(declare-fun b!2042541 () Bool)

(declare-fun res!895129 () Bool)

(declare-fun e!1289824 () Bool)

(assert (=> b!2042541 (=> (not res!895129) (not e!1289824))))

(declare-fun lt!766062 () tuple2!21036)

(assert (=> b!2042541 (= res!895129 (= (list!9168 (_1!12002 lt!766062)) (_1!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 treated!60)))))))

(declare-fun b!2042542 () Bool)

(declare-fun e!1289826 () Bool)

(declare-fun e!1289825 () Bool)

(assert (=> b!2042542 (= e!1289826 e!1289825)))

(declare-fun res!895128 () Bool)

(assert (=> b!2042542 (= res!895128 (< (size!17492 (_2!12002 lt!766062)) (size!17492 treated!60)))))

(assert (=> b!2042542 (=> (not res!895128) (not e!1289825))))

(declare-fun b!2042543 () Bool)

(assert (=> b!2042543 (= e!1289825 (not (isEmpty!13960 (_1!12002 lt!766062))))))

(declare-fun b!2042544 () Bool)

(declare-fun e!1289827 () tuple2!21036)

(assert (=> b!2042544 (= e!1289827 (tuple2!21037 (BalanceConc!14757 Empty!7497) treated!60))))

(declare-fun b!2042545 () Bool)

(declare-fun lt!766061 () tuple2!21036)

(declare-fun lt!766063 () Option!4692)

(assert (=> b!2042545 (= e!1289827 (tuple2!21037 (prepend!909 (_1!12002 lt!766061) (_1!12005 (v!27079 lt!766063))) (_2!12002 lt!766061)))))

(assert (=> b!2042545 (= lt!766061 (lexRec!428 thiss!12889 rules!1563 (_2!12005 (v!27079 lt!766063))))))

(declare-fun d!625330 () Bool)

(assert (=> d!625330 e!1289824))

(declare-fun res!895127 () Bool)

(assert (=> d!625330 (=> (not res!895127) (not e!1289824))))

(assert (=> d!625330 (= res!895127 e!1289826)))

(declare-fun c!330889 () Bool)

(assert (=> d!625330 (= c!330889 (> (size!17493 (_1!12002 lt!766062)) 0))))

(assert (=> d!625330 (= lt!766062 e!1289827)))

(declare-fun c!330888 () Bool)

(assert (=> d!625330 (= c!330888 ((_ is Some!4691) lt!766063))))

(assert (=> d!625330 (= lt!766063 (maxPrefixZipperSequence!787 thiss!12889 rules!1563 treated!60))))

(assert (=> d!625330 (= (lexRec!428 thiss!12889 rules!1563 treated!60) lt!766062)))

(declare-fun b!2042546 () Bool)

(assert (=> b!2042546 (= e!1289824 (= (list!9167 (_2!12002 lt!766062)) (_2!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 treated!60)))))))

(declare-fun b!2042547 () Bool)

(assert (=> b!2042547 (= e!1289826 (= (list!9167 (_2!12002 lt!766062)) (list!9167 treated!60)))))

(assert (= (and d!625330 c!330888) b!2042545))

(assert (= (and d!625330 (not c!330888)) b!2042544))

(assert (= (and d!625330 c!330889) b!2042542))

(assert (= (and d!625330 (not c!330889)) b!2042547))

(assert (= (and b!2042542 res!895128) b!2042543))

(assert (= (and d!625330 res!895127) b!2042541))

(assert (= (and b!2042541 res!895129) b!2042546))

(declare-fun m!2486599 () Bool)

(assert (=> b!2042542 m!2486599))

(declare-fun m!2486601 () Bool)

(assert (=> b!2042542 m!2486601))

(declare-fun m!2486603 () Bool)

(assert (=> b!2042547 m!2486603))

(assert (=> b!2042547 m!2486527))

(declare-fun m!2486605 () Bool)

(assert (=> b!2042543 m!2486605))

(declare-fun m!2486607 () Bool)

(assert (=> d!625330 m!2486607))

(declare-fun m!2486609 () Bool)

(assert (=> d!625330 m!2486609))

(assert (=> b!2042546 m!2486603))

(assert (=> b!2042546 m!2486527))

(assert (=> b!2042546 m!2486527))

(declare-fun m!2486611 () Bool)

(assert (=> b!2042546 m!2486611))

(declare-fun m!2486613 () Bool)

(assert (=> b!2042545 m!2486613))

(declare-fun m!2486615 () Bool)

(assert (=> b!2042545 m!2486615))

(declare-fun m!2486617 () Bool)

(assert (=> b!2042541 m!2486617))

(assert (=> b!2042541 m!2486527))

(assert (=> b!2042541 m!2486527))

(assert (=> b!2042541 m!2486611))

(assert (=> b!2042460 d!625330))

(declare-fun d!625332 () Bool)

(declare-fun res!895132 () Bool)

(declare-fun e!1289830 () Bool)

(assert (=> d!625332 (=> (not res!895132) (not e!1289830))))

(declare-fun rulesValid!1502 (LexerInterface!3623 List!22446) Bool)

(assert (=> d!625332 (= res!895132 (rulesValid!1502 thiss!12889 rules!1563))))

(assert (=> d!625332 (= (rulesInvariant!3227 thiss!12889 rules!1563) e!1289830)))

(declare-fun b!2042550 () Bool)

(declare-datatypes ((List!22448 0))(
  ( (Nil!22364) (Cons!22364 (h!27765 String!25920) (t!191562 List!22448)) )
))
(declare-fun noDuplicateTag!1500 (LexerInterface!3623 List!22446 List!22448) Bool)

(assert (=> b!2042550 (= e!1289830 (noDuplicateTag!1500 thiss!12889 rules!1563 Nil!22364))))

(assert (= (and d!625332 res!895132) b!2042550))

(declare-fun m!2486619 () Bool)

(assert (=> d!625332 m!2486619))

(declare-fun m!2486621 () Bool)

(assert (=> b!2042550 m!2486621))

(assert (=> b!2042477 d!625332))

(declare-fun d!625334 () Bool)

(declare-fun validCacheMapUp!185 (MutableMap!1906) Bool)

(assert (=> d!625334 (= (valid!1588 cacheUp!562) (validCacheMapUp!185 (cache!2287 cacheUp!562)))))

(declare-fun bs!421873 () Bool)

(assert (= bs!421873 d!625334))

(declare-fun m!2486623 () Bool)

(assert (=> bs!421873 m!2486623))

(assert (=> b!2042467 d!625334))

(declare-fun d!625336 () Bool)

(declare-fun list!9170 (Conc!7496) List!22443)

(assert (=> d!625336 (= (list!9167 (_2!12002 lt!766013)) (list!9170 (c!330873 (_2!12002 lt!766013))))))

(declare-fun bs!421874 () Bool)

(assert (= bs!421874 d!625336))

(declare-fun m!2486625 () Bool)

(assert (=> bs!421874 m!2486625))

(assert (=> b!2042459 d!625336))

(declare-fun d!625338 () Bool)

(assert (=> d!625338 (= (list!9167 (_2!12002 lt!766006)) (list!9170 (c!330873 (_2!12002 lt!766006))))))

(declare-fun bs!421875 () Bool)

(assert (= bs!421875 d!625338))

(declare-fun m!2486627 () Bool)

(assert (=> bs!421875 m!2486627))

(assert (=> b!2042459 d!625338))

(declare-fun d!625340 () Bool)

(declare-fun c!330892 () Bool)

(assert (=> d!625340 (= c!330892 ((_ is Node!7497) (c!330874 acc!382)))))

(declare-fun e!1289835 () Bool)

(assert (=> d!625340 (= (inv!29694 (c!330874 acc!382)) e!1289835)))

(declare-fun b!2042557 () Bool)

(declare-fun inv!29703 (Conc!7497) Bool)

(assert (=> b!2042557 (= e!1289835 (inv!29703 (c!330874 acc!382)))))

(declare-fun b!2042558 () Bool)

(declare-fun e!1289836 () Bool)

(assert (=> b!2042558 (= e!1289835 e!1289836)))

(declare-fun res!895135 () Bool)

(assert (=> b!2042558 (= res!895135 (not ((_ is Leaf!10983) (c!330874 acc!382))))))

(assert (=> b!2042558 (=> res!895135 e!1289836)))

(declare-fun b!2042559 () Bool)

(declare-fun inv!29704 (Conc!7497) Bool)

(assert (=> b!2042559 (= e!1289836 (inv!29704 (c!330874 acc!382)))))

(assert (= (and d!625340 c!330892) b!2042557))

(assert (= (and d!625340 (not c!330892)) b!2042558))

(assert (= (and b!2042558 (not res!895135)) b!2042559))

(declare-fun m!2486629 () Bool)

(assert (=> b!2042557 m!2486629))

(declare-fun m!2486631 () Bool)

(assert (=> b!2042559 m!2486631))

(assert (=> b!2042461 d!625340))

(declare-fun d!625342 () Bool)

(declare-fun c!330893 () Bool)

(assert (=> d!625342 (= c!330893 ((_ is Node!7496) (c!330873 treated!60)))))

(declare-fun e!1289837 () Bool)

(assert (=> d!625342 (= (inv!29700 (c!330873 treated!60)) e!1289837)))

(declare-fun b!2042560 () Bool)

(assert (=> b!2042560 (= e!1289837 (inv!29701 (c!330873 treated!60)))))

(declare-fun b!2042561 () Bool)

(declare-fun e!1289838 () Bool)

(assert (=> b!2042561 (= e!1289837 e!1289838)))

(declare-fun res!895136 () Bool)

(assert (=> b!2042561 (= res!895136 (not ((_ is Leaf!10982) (c!330873 treated!60))))))

(assert (=> b!2042561 (=> res!895136 e!1289838)))

(declare-fun b!2042562 () Bool)

(assert (=> b!2042562 (= e!1289838 (inv!29702 (c!330873 treated!60)))))

(assert (= (and d!625342 c!330893) b!2042560))

(assert (= (and d!625342 (not c!330893)) b!2042561))

(assert (= (and b!2042561 (not res!895136)) b!2042562))

(declare-fun m!2486633 () Bool)

(assert (=> b!2042560 m!2486633))

(declare-fun m!2486635 () Bool)

(assert (=> b!2042562 m!2486635))

(assert (=> b!2042478 d!625342))

(declare-fun d!625344 () Bool)

(declare-fun c!330894 () Bool)

(assert (=> d!625344 (= c!330894 ((_ is Node!7496) (c!330873 input!986)))))

(declare-fun e!1289839 () Bool)

(assert (=> d!625344 (= (inv!29700 (c!330873 input!986)) e!1289839)))

(declare-fun b!2042563 () Bool)

(assert (=> b!2042563 (= e!1289839 (inv!29701 (c!330873 input!986)))))

(declare-fun b!2042564 () Bool)

(declare-fun e!1289840 () Bool)

(assert (=> b!2042564 (= e!1289839 e!1289840)))

(declare-fun res!895137 () Bool)

(assert (=> b!2042564 (= res!895137 (not ((_ is Leaf!10982) (c!330873 input!986))))))

(assert (=> b!2042564 (=> res!895137 e!1289840)))

(declare-fun b!2042565 () Bool)

(assert (=> b!2042565 (= e!1289840 (inv!29702 (c!330873 input!986)))))

(assert (= (and d!625344 c!330894) b!2042563))

(assert (= (and d!625344 (not c!330894)) b!2042564))

(assert (= (and b!2042564 (not res!895137)) b!2042565))

(declare-fun m!2486637 () Bool)

(assert (=> b!2042563 m!2486637))

(declare-fun m!2486639 () Bool)

(assert (=> b!2042565 m!2486639))

(assert (=> b!2042480 d!625344))

(declare-fun b!2042574 () Bool)

(declare-fun e!1289845 () List!22443)

(assert (=> b!2042574 (= e!1289845 lt!766010)))

(declare-fun lt!766066 () List!22443)

(declare-fun e!1289846 () Bool)

(declare-fun b!2042577 () Bool)

(assert (=> b!2042577 (= e!1289846 (or (not (= lt!766010 Nil!22359)) (= lt!766066 lt!766011)))))

(declare-fun b!2042575 () Bool)

(assert (=> b!2042575 (= e!1289845 (Cons!22359 (h!27760 lt!766011) (++!6072 (t!191557 lt!766011) lt!766010)))))

(declare-fun d!625346 () Bool)

(assert (=> d!625346 e!1289846))

(declare-fun res!895142 () Bool)

(assert (=> d!625346 (=> (not res!895142) (not e!1289846))))

(declare-fun content!3316 (List!22443) (InoxSet C!11020))

(assert (=> d!625346 (= res!895142 (= (content!3316 lt!766066) ((_ map or) (content!3316 lt!766011) (content!3316 lt!766010))))))

(assert (=> d!625346 (= lt!766066 e!1289845)))

(declare-fun c!330897 () Bool)

(assert (=> d!625346 (= c!330897 ((_ is Nil!22359) lt!766011))))

(assert (=> d!625346 (= (++!6072 lt!766011 lt!766010) lt!766066)))

(declare-fun b!2042576 () Bool)

(declare-fun res!895143 () Bool)

(assert (=> b!2042576 (=> (not res!895143) (not e!1289846))))

(assert (=> b!2042576 (= res!895143 (= (size!17494 lt!766066) (+ (size!17494 lt!766011) (size!17494 lt!766010))))))

(assert (= (and d!625346 c!330897) b!2042574))

(assert (= (and d!625346 (not c!330897)) b!2042575))

(assert (= (and d!625346 res!895142) b!2042576))

(assert (= (and b!2042576 res!895143) b!2042577))

(declare-fun m!2486641 () Bool)

(assert (=> b!2042575 m!2486641))

(declare-fun m!2486643 () Bool)

(assert (=> d!625346 m!2486643))

(declare-fun m!2486645 () Bool)

(assert (=> d!625346 m!2486645))

(declare-fun m!2486647 () Bool)

(assert (=> d!625346 m!2486647))

(declare-fun m!2486649 () Bool)

(assert (=> b!2042576 m!2486649))

(declare-fun m!2486651 () Bool)

(assert (=> b!2042576 m!2486651))

(assert (=> b!2042576 m!2486579))

(assert (=> b!2042452 d!625346))

(declare-fun d!625348 () Bool)

(assert (=> d!625348 (= (list!9167 totalInput!418) (list!9170 (c!330873 totalInput!418)))))

(declare-fun bs!421876 () Bool)

(assert (= bs!421876 d!625348))

(declare-fun m!2486653 () Bool)

(assert (=> bs!421876 m!2486653))

(assert (=> b!2042452 d!625348))

(declare-fun d!625350 () Bool)

(assert (=> d!625350 (= (list!9167 input!986) (list!9170 (c!330873 input!986)))))

(declare-fun bs!421877 () Bool)

(assert (= bs!421877 d!625350))

(declare-fun m!2486655 () Bool)

(assert (=> bs!421877 m!2486655))

(assert (=> b!2042452 d!625350))

(declare-fun d!625352 () Bool)

(assert (=> d!625352 (= (list!9167 treated!60) (list!9170 (c!330873 treated!60)))))

(declare-fun bs!421878 () Bool)

(assert (= bs!421878 d!625352))

(declare-fun m!2486657 () Bool)

(assert (=> bs!421878 m!2486657))

(assert (=> b!2042452 d!625352))

(declare-fun d!625354 () Bool)

(assert (=> d!625354 (= (isEmpty!13958 (list!9167 (_2!12002 lt!766008))) ((_ is Nil!22359) (list!9167 (_2!12002 lt!766008))))))

(assert (=> b!2042479 d!625354))

(declare-fun d!625356 () Bool)

(assert (=> d!625356 (= (list!9167 (_2!12002 lt!766008)) (list!9170 (c!330873 (_2!12002 lt!766008))))))

(declare-fun bs!421879 () Bool)

(assert (= bs!421879 d!625356))

(declare-fun m!2486659 () Bool)

(assert (=> bs!421879 m!2486659))

(assert (=> b!2042479 d!625356))

(declare-fun d!625358 () Bool)

(assert (=> d!625358 (= (array_inv!2190 (_keys!2288 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) (bvsge (size!17488 (_keys!2288 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2042451 d!625358))

(declare-fun d!625360 () Bool)

(assert (=> d!625360 (= (array_inv!2191 (_values!2271 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) (bvsge (size!17489 (_values!2271 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2042451 d!625360))

(declare-fun d!625362 () Bool)

(declare-fun isBalanced!2356 (Conc!7496) Bool)

(assert (=> d!625362 (= (inv!29697 input!986) (isBalanced!2356 (c!330873 input!986)))))

(declare-fun bs!421880 () Bool)

(assert (= bs!421880 d!625362))

(declare-fun m!2486661 () Bool)

(assert (=> bs!421880 m!2486661))

(assert (=> start!201260 d!625362))

(declare-fun d!625364 () Bool)

(declare-fun res!895146 () Bool)

(declare-fun e!1289849 () Bool)

(assert (=> d!625364 (=> (not res!895146) (not e!1289849))))

(assert (=> d!625364 (= res!895146 ((_ is HashMap!1906) (cache!2287 cacheUp!562)))))

(assert (=> d!625364 (= (inv!29696 cacheUp!562) e!1289849)))

(declare-fun b!2042580 () Bool)

(assert (=> b!2042580 (= e!1289849 (validCacheMapUp!185 (cache!2287 cacheUp!562)))))

(assert (= (and d!625364 res!895146) b!2042580))

(assert (=> b!2042580 m!2486623))

(assert (=> start!201260 d!625364))

(declare-fun d!625366 () Bool)

(declare-fun isBalanced!2357 (Conc!7497) Bool)

(assert (=> d!625366 (= (inv!29698 acc!382) (isBalanced!2357 (c!330874 acc!382)))))

(declare-fun bs!421881 () Bool)

(assert (= bs!421881 d!625366))

(declare-fun m!2486663 () Bool)

(assert (=> bs!421881 m!2486663))

(assert (=> start!201260 d!625366))

(declare-fun d!625368 () Bool)

(declare-fun res!895149 () Bool)

(declare-fun e!1289852 () Bool)

(assert (=> d!625368 (=> (not res!895149) (not e!1289852))))

(assert (=> d!625368 (= res!895149 ((_ is HashMap!1905) (cache!2286 cacheDown!575)))))

(assert (=> d!625368 (= (inv!29695 cacheDown!575) e!1289852)))

(declare-fun b!2042583 () Bool)

(declare-fun validCacheMapDown!183 (MutableMap!1905) Bool)

(assert (=> b!2042583 (= e!1289852 (validCacheMapDown!183 (cache!2286 cacheDown!575)))))

(assert (= (and d!625368 res!895149) b!2042583))

(declare-fun m!2486665 () Bool)

(assert (=> b!2042583 m!2486665))

(assert (=> start!201260 d!625368))

(declare-fun d!625370 () Bool)

(assert (=> d!625370 (= (inv!29697 totalInput!418) (isBalanced!2356 (c!330873 totalInput!418)))))

(declare-fun bs!421882 () Bool)

(assert (= bs!421882 d!625370))

(declare-fun m!2486667 () Bool)

(assert (=> bs!421882 m!2486667))

(assert (=> start!201260 d!625370))

(declare-fun d!625372 () Bool)

(assert (=> d!625372 (= (inv!29697 treated!60) (isBalanced!2356 (c!330873 treated!60)))))

(declare-fun bs!421883 () Bool)

(assert (= bs!421883 d!625372))

(declare-fun m!2486669 () Bool)

(assert (=> bs!421883 m!2486669))

(assert (=> start!201260 d!625372))

(declare-fun d!625374 () Bool)

(assert (=> d!625374 (= (list!9168 (_1!12002 lt!766013)) (list!9169 (c!330874 (_1!12002 lt!766013))))))

(declare-fun bs!421884 () Bool)

(assert (= bs!421884 d!625374))

(declare-fun m!2486671 () Bool)

(assert (=> bs!421884 m!2486671))

(assert (=> b!2042453 d!625374))

(declare-fun b!2042584 () Bool)

(declare-fun res!895152 () Bool)

(declare-fun e!1289853 () Bool)

(assert (=> b!2042584 (=> (not res!895152) (not e!1289853))))

(declare-fun lt!766068 () tuple2!21036)

(assert (=> b!2042584 (= res!895152 (= (list!9168 (_1!12002 lt!766068)) (_1!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 totalInput!418)))))))

(declare-fun b!2042585 () Bool)

(declare-fun e!1289855 () Bool)

(declare-fun e!1289854 () Bool)

(assert (=> b!2042585 (= e!1289855 e!1289854)))

(declare-fun res!895151 () Bool)

(assert (=> b!2042585 (= res!895151 (< (size!17492 (_2!12002 lt!766068)) (size!17492 totalInput!418)))))

(assert (=> b!2042585 (=> (not res!895151) (not e!1289854))))

(declare-fun b!2042586 () Bool)

(assert (=> b!2042586 (= e!1289854 (not (isEmpty!13960 (_1!12002 lt!766068))))))

(declare-fun b!2042587 () Bool)

(declare-fun e!1289856 () tuple2!21036)

(assert (=> b!2042587 (= e!1289856 (tuple2!21037 (BalanceConc!14757 Empty!7497) totalInput!418))))

(declare-fun b!2042588 () Bool)

(declare-fun lt!766067 () tuple2!21036)

(declare-fun lt!766069 () Option!4692)

(assert (=> b!2042588 (= e!1289856 (tuple2!21037 (prepend!909 (_1!12002 lt!766067) (_1!12005 (v!27079 lt!766069))) (_2!12002 lt!766067)))))

(assert (=> b!2042588 (= lt!766067 (lexRec!428 thiss!12889 rules!1563 (_2!12005 (v!27079 lt!766069))))))

(declare-fun d!625376 () Bool)

(assert (=> d!625376 e!1289853))

(declare-fun res!895150 () Bool)

(assert (=> d!625376 (=> (not res!895150) (not e!1289853))))

(assert (=> d!625376 (= res!895150 e!1289855)))

(declare-fun c!330899 () Bool)

(assert (=> d!625376 (= c!330899 (> (size!17493 (_1!12002 lt!766068)) 0))))

(assert (=> d!625376 (= lt!766068 e!1289856)))

(declare-fun c!330898 () Bool)

(assert (=> d!625376 (= c!330898 ((_ is Some!4691) lt!766069))))

(assert (=> d!625376 (= lt!766069 (maxPrefixZipperSequence!787 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!625376 (= (lexRec!428 thiss!12889 rules!1563 totalInput!418) lt!766068)))

(declare-fun b!2042589 () Bool)

(assert (=> b!2042589 (= e!1289853 (= (list!9167 (_2!12002 lt!766068)) (_2!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 totalInput!418)))))))

(declare-fun b!2042590 () Bool)

(assert (=> b!2042590 (= e!1289855 (= (list!9167 (_2!12002 lt!766068)) (list!9167 totalInput!418)))))

(assert (= (and d!625376 c!330898) b!2042588))

(assert (= (and d!625376 (not c!330898)) b!2042587))

(assert (= (and d!625376 c!330899) b!2042585))

(assert (= (and d!625376 (not c!330899)) b!2042590))

(assert (= (and b!2042585 res!895151) b!2042586))

(assert (= (and d!625376 res!895150) b!2042584))

(assert (= (and b!2042584 res!895152) b!2042589))

(declare-fun m!2486673 () Bool)

(assert (=> b!2042585 m!2486673))

(declare-fun m!2486675 () Bool)

(assert (=> b!2042585 m!2486675))

(declare-fun m!2486677 () Bool)

(assert (=> b!2042590 m!2486677))

(assert (=> b!2042590 m!2486523))

(declare-fun m!2486679 () Bool)

(assert (=> b!2042586 m!2486679))

(declare-fun m!2486681 () Bool)

(assert (=> d!625376 m!2486681))

(declare-fun m!2486683 () Bool)

(assert (=> d!625376 m!2486683))

(assert (=> b!2042589 m!2486677))

(assert (=> b!2042589 m!2486523))

(assert (=> b!2042589 m!2486523))

(declare-fun m!2486685 () Bool)

(assert (=> b!2042589 m!2486685))

(declare-fun m!2486687 () Bool)

(assert (=> b!2042588 m!2486687))

(declare-fun m!2486689 () Bool)

(assert (=> b!2042588 m!2486689))

(declare-fun m!2486691 () Bool)

(assert (=> b!2042584 m!2486691))

(assert (=> b!2042584 m!2486523))

(assert (=> b!2042584 m!2486523))

(assert (=> b!2042584 m!2486685))

(assert (=> b!2042453 d!625376))

(declare-fun b!2042591 () Bool)

(declare-fun res!895155 () Bool)

(declare-fun e!1289857 () Bool)

(assert (=> b!2042591 (=> (not res!895155) (not e!1289857))))

(declare-fun lt!766071 () tuple2!21036)

(assert (=> b!2042591 (= res!895155 (= (list!9168 (_1!12002 lt!766071)) (_1!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 input!986)))))))

(declare-fun b!2042592 () Bool)

(declare-fun e!1289859 () Bool)

(declare-fun e!1289858 () Bool)

(assert (=> b!2042592 (= e!1289859 e!1289858)))

(declare-fun res!895154 () Bool)

(assert (=> b!2042592 (= res!895154 (< (size!17492 (_2!12002 lt!766071)) (size!17492 input!986)))))

(assert (=> b!2042592 (=> (not res!895154) (not e!1289858))))

(declare-fun b!2042593 () Bool)

(assert (=> b!2042593 (= e!1289858 (not (isEmpty!13960 (_1!12002 lt!766071))))))

(declare-fun b!2042594 () Bool)

(declare-fun e!1289860 () tuple2!21036)

(assert (=> b!2042594 (= e!1289860 (tuple2!21037 (BalanceConc!14757 Empty!7497) input!986))))

(declare-fun b!2042595 () Bool)

(declare-fun lt!766070 () tuple2!21036)

(declare-fun lt!766072 () Option!4692)

(assert (=> b!2042595 (= e!1289860 (tuple2!21037 (prepend!909 (_1!12002 lt!766070) (_1!12005 (v!27079 lt!766072))) (_2!12002 lt!766070)))))

(assert (=> b!2042595 (= lt!766070 (lexRec!428 thiss!12889 rules!1563 (_2!12005 (v!27079 lt!766072))))))

(declare-fun d!625378 () Bool)

(assert (=> d!625378 e!1289857))

(declare-fun res!895153 () Bool)

(assert (=> d!625378 (=> (not res!895153) (not e!1289857))))

(assert (=> d!625378 (= res!895153 e!1289859)))

(declare-fun c!330901 () Bool)

(assert (=> d!625378 (= c!330901 (> (size!17493 (_1!12002 lt!766071)) 0))))

(assert (=> d!625378 (= lt!766071 e!1289860)))

(declare-fun c!330900 () Bool)

(assert (=> d!625378 (= c!330900 ((_ is Some!4691) lt!766072))))

(assert (=> d!625378 (= lt!766072 (maxPrefixZipperSequence!787 thiss!12889 rules!1563 input!986))))

(assert (=> d!625378 (= (lexRec!428 thiss!12889 rules!1563 input!986) lt!766071)))

(declare-fun b!2042596 () Bool)

(assert (=> b!2042596 (= e!1289857 (= (list!9167 (_2!12002 lt!766071)) (_2!12007 (lexList!987 thiss!12889 rules!1563 (list!9167 input!986)))))))

(declare-fun b!2042597 () Bool)

(assert (=> b!2042597 (= e!1289859 (= (list!9167 (_2!12002 lt!766071)) (list!9167 input!986)))))

(assert (= (and d!625378 c!330900) b!2042595))

(assert (= (and d!625378 (not c!330900)) b!2042594))

(assert (= (and d!625378 c!330901) b!2042592))

(assert (= (and d!625378 (not c!330901)) b!2042597))

(assert (= (and b!2042592 res!895154) b!2042593))

(assert (= (and d!625378 res!895153) b!2042591))

(assert (= (and b!2042591 res!895155) b!2042596))

(declare-fun m!2486693 () Bool)

(assert (=> b!2042592 m!2486693))

(declare-fun m!2486695 () Bool)

(assert (=> b!2042592 m!2486695))

(declare-fun m!2486697 () Bool)

(assert (=> b!2042597 m!2486697))

(assert (=> b!2042597 m!2486525))

(declare-fun m!2486699 () Bool)

(assert (=> b!2042593 m!2486699))

(declare-fun m!2486701 () Bool)

(assert (=> d!625378 m!2486701))

(declare-fun m!2486703 () Bool)

(assert (=> d!625378 m!2486703))

(assert (=> b!2042596 m!2486697))

(assert (=> b!2042596 m!2486525))

(assert (=> b!2042596 m!2486525))

(declare-fun m!2486705 () Bool)

(assert (=> b!2042596 m!2486705))

(declare-fun m!2486707 () Bool)

(assert (=> b!2042595 m!2486707))

(declare-fun m!2486709 () Bool)

(assert (=> b!2042595 m!2486709))

(declare-fun m!2486711 () Bool)

(assert (=> b!2042591 m!2486711))

(assert (=> b!2042591 m!2486525))

(assert (=> b!2042591 m!2486525))

(assert (=> b!2042591 m!2486705))

(assert (=> b!2042453 d!625378))

(declare-fun d!625380 () Bool)

(declare-fun e!1289863 () Bool)

(assert (=> d!625380 e!1289863))

(declare-fun res!895164 () Bool)

(assert (=> d!625380 (=> (not res!895164) (not e!1289863))))

(declare-fun appendAssocInst!548 (Conc!7497 Conc!7497) Bool)

(assert (=> d!625380 (= res!895164 (appendAssocInst!548 (c!330874 acc!382) (c!330874 (_1!12002 lt!766006))))))

(declare-fun lt!766075 () BalanceConc!14756)

(declare-fun ++!6074 (Conc!7497 Conc!7497) Conc!7497)

(assert (=> d!625380 (= lt!766075 (BalanceConc!14757 (++!6074 (c!330874 acc!382) (c!330874 (_1!12002 lt!766006)))))))

(assert (=> d!625380 (= (++!6073 acc!382 (_1!12002 lt!766006)) lt!766075)))

(declare-fun b!2042606 () Bool)

(declare-fun res!895167 () Bool)

(assert (=> b!2042606 (=> (not res!895167) (not e!1289863))))

(assert (=> b!2042606 (= res!895167 (isBalanced!2357 (++!6074 (c!330874 acc!382) (c!330874 (_1!12002 lt!766006)))))))

(declare-fun b!2042608 () Bool)

(declare-fun res!895165 () Bool)

(assert (=> b!2042608 (=> (not res!895165) (not e!1289863))))

(declare-fun height!1176 (Conc!7497) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2042608 (= res!895165 (>= (height!1176 (++!6074 (c!330874 acc!382) (c!330874 (_1!12002 lt!766006)))) (max!0 (height!1176 (c!330874 acc!382)) (height!1176 (c!330874 (_1!12002 lt!766006))))))))

(declare-fun b!2042609 () Bool)

(declare-fun ++!6075 (List!22445 List!22445) List!22445)

(assert (=> b!2042609 (= e!1289863 (= (list!9168 lt!766075) (++!6075 (list!9168 acc!382) (list!9168 (_1!12002 lt!766006)))))))

(declare-fun b!2042607 () Bool)

(declare-fun res!895166 () Bool)

(assert (=> b!2042607 (=> (not res!895166) (not e!1289863))))

(assert (=> b!2042607 (= res!895166 (<= (height!1176 (++!6074 (c!330874 acc!382) (c!330874 (_1!12002 lt!766006)))) (+ (max!0 (height!1176 (c!330874 acc!382)) (height!1176 (c!330874 (_1!12002 lt!766006)))) 1)))))

(assert (= (and d!625380 res!895164) b!2042606))

(assert (= (and b!2042606 res!895167) b!2042607))

(assert (= (and b!2042607 res!895166) b!2042608))

(assert (= (and b!2042608 res!895165) b!2042609))

(declare-fun m!2486713 () Bool)

(assert (=> b!2042608 m!2486713))

(declare-fun m!2486715 () Bool)

(assert (=> b!2042608 m!2486715))

(declare-fun m!2486717 () Bool)

(assert (=> b!2042608 m!2486717))

(declare-fun m!2486719 () Bool)

(assert (=> b!2042608 m!2486719))

(assert (=> b!2042608 m!2486713))

(assert (=> b!2042608 m!2486719))

(declare-fun m!2486721 () Bool)

(assert (=> b!2042608 m!2486721))

(assert (=> b!2042608 m!2486715))

(declare-fun m!2486723 () Bool)

(assert (=> b!2042609 m!2486723))

(assert (=> b!2042609 m!2486473))

(declare-fun m!2486725 () Bool)

(assert (=> b!2042609 m!2486725))

(assert (=> b!2042609 m!2486473))

(assert (=> b!2042609 m!2486725))

(declare-fun m!2486727 () Bool)

(assert (=> b!2042609 m!2486727))

(assert (=> b!2042606 m!2486715))

(assert (=> b!2042606 m!2486715))

(declare-fun m!2486729 () Bool)

(assert (=> b!2042606 m!2486729))

(assert (=> b!2042607 m!2486713))

(assert (=> b!2042607 m!2486715))

(assert (=> b!2042607 m!2486717))

(assert (=> b!2042607 m!2486719))

(assert (=> b!2042607 m!2486713))

(assert (=> b!2042607 m!2486719))

(assert (=> b!2042607 m!2486721))

(assert (=> b!2042607 m!2486715))

(declare-fun m!2486731 () Bool)

(assert (=> d!625380 m!2486731))

(assert (=> d!625380 m!2486715))

(assert (=> b!2042453 d!625380))

(declare-fun d!625382 () Bool)

(assert (=> d!625382 (= (list!9168 (++!6073 acc!382 (_1!12002 lt!766006))) (list!9169 (c!330874 (++!6073 acc!382 (_1!12002 lt!766006)))))))

(declare-fun bs!421885 () Bool)

(assert (= bs!421885 d!625382))

(declare-fun m!2486733 () Bool)

(assert (=> bs!421885 m!2486733))

(assert (=> b!2042453 d!625382))

(declare-fun d!625384 () Bool)

(assert (=> d!625384 (= (array_inv!2190 (_keys!2289 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) (bvsge (size!17488 (_keys!2289 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2042462 d!625384))

(declare-fun d!625386 () Bool)

(assert (=> d!625386 (= (array_inv!2192 (_values!2272 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) (bvsge (size!17491 (_values!2272 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2042462 d!625386))

(declare-fun d!625388 () Bool)

(assert (=> d!625388 (= (isEmpty!13959 rules!1563) ((_ is Nil!22362) rules!1563))))

(assert (=> b!2042482 d!625388))

(declare-fun d!625390 () Bool)

(assert (=> d!625390 (= (valid!1589 cacheDown!575) (validCacheMapDown!183 (cache!2286 cacheDown!575)))))

(declare-fun bs!421886 () Bool)

(assert (= bs!421886 d!625390))

(assert (=> bs!421886 m!2486665))

(assert (=> b!2042474 d!625390))

(declare-fun e!1289872 () Bool)

(assert (=> b!2042465 (= tp!606630 e!1289872)))

(declare-fun setIsEmpty!11788 () Bool)

(declare-fun setRes!11788 () Bool)

(assert (=> setIsEmpty!11788 setRes!11788))

(declare-fun b!2042618 () Bool)

(declare-fun e!1289870 () Bool)

(declare-fun tp!606643 () Bool)

(assert (=> b!2042618 (= e!1289870 tp!606643)))

(declare-fun b!2042619 () Bool)

(declare-fun tp!606642 () Bool)

(declare-fun tp_is_empty!9293 () Bool)

(declare-fun inv!29705 (Context!2014) Bool)

(assert (=> b!2042619 (= e!1289872 (and (inv!29705 (_1!12003 (_1!12004 (h!27764 mapDefault!9193)))) e!1289870 tp_is_empty!9293 setRes!11788 tp!606642))))

(declare-fun condSetEmpty!11788 () Bool)

(assert (=> b!2042619 (= condSetEmpty!11788 (= (_2!12004 (h!27764 mapDefault!9193)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun setNonEmpty!11788 () Bool)

(declare-fun tp!606641 () Bool)

(declare-fun setElem!11788 () Context!2014)

(declare-fun e!1289871 () Bool)

(assert (=> setNonEmpty!11788 (= setRes!11788 (and tp!606641 (inv!29705 setElem!11788) e!1289871))))

(declare-fun setRest!11788 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11788 (= (_2!12004 (h!27764 mapDefault!9193)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11788 true) setRest!11788))))

(declare-fun b!2042620 () Bool)

(declare-fun tp!606640 () Bool)

(assert (=> b!2042620 (= e!1289871 tp!606640)))

(assert (= b!2042619 b!2042618))

(assert (= (and b!2042619 condSetEmpty!11788) setIsEmpty!11788))

(assert (= (and b!2042619 (not condSetEmpty!11788)) setNonEmpty!11788))

(assert (= setNonEmpty!11788 b!2042620))

(assert (= (and b!2042465 ((_ is Cons!22363) mapDefault!9193)) b!2042619))

(declare-fun m!2486735 () Bool)

(assert (=> b!2042619 m!2486735))

(declare-fun m!2486737 () Bool)

(assert (=> setNonEmpty!11788 m!2486737))

(declare-fun b!2042629 () Bool)

(declare-fun tp!606651 () Bool)

(declare-fun e!1289878 () Bool)

(declare-fun tp!606652 () Bool)

(assert (=> b!2042629 (= e!1289878 (and (inv!29700 (left!17779 (c!330873 totalInput!418))) tp!606652 (inv!29700 (right!18109 (c!330873 totalInput!418))) tp!606651))))

(declare-fun b!2042631 () Bool)

(declare-fun e!1289877 () Bool)

(declare-fun tp!606650 () Bool)

(assert (=> b!2042631 (= e!1289877 tp!606650)))

(declare-fun b!2042630 () Bool)

(declare-fun inv!29706 (IArray!14997) Bool)

(assert (=> b!2042630 (= e!1289878 (and (inv!29706 (xs!10404 (c!330873 totalInput!418))) e!1289877))))

(assert (=> b!2042476 (= tp!606612 (and (inv!29700 (c!330873 totalInput!418)) e!1289878))))

(assert (= (and b!2042476 ((_ is Node!7496) (c!330873 totalInput!418))) b!2042629))

(assert (= b!2042630 b!2042631))

(assert (= (and b!2042476 ((_ is Leaf!10982) (c!330873 totalInput!418))) b!2042630))

(declare-fun m!2486739 () Bool)

(assert (=> b!2042629 m!2486739))

(declare-fun m!2486741 () Bool)

(assert (=> b!2042629 m!2486741))

(declare-fun m!2486743 () Bool)

(assert (=> b!2042630 m!2486743))

(assert (=> b!2042476 m!2486465))

(declare-fun b!2042644 () Bool)

(declare-fun e!1289881 () Bool)

(declare-fun tp!606666 () Bool)

(assert (=> b!2042644 (= e!1289881 tp!606666)))

(assert (=> b!2042475 (= tp!606631 e!1289881)))

(declare-fun b!2042643 () Bool)

(declare-fun tp!606667 () Bool)

(declare-fun tp!606665 () Bool)

(assert (=> b!2042643 (= e!1289881 (and tp!606667 tp!606665))))

(declare-fun b!2042642 () Bool)

(assert (=> b!2042642 (= e!1289881 tp_is_empty!9293)))

(declare-fun b!2042645 () Bool)

(declare-fun tp!606663 () Bool)

(declare-fun tp!606664 () Bool)

(assert (=> b!2042645 (= e!1289881 (and tp!606663 tp!606664))))

(assert (= (and b!2042475 ((_ is ElementMatch!5437) (regex!4010 (h!27763 rules!1563)))) b!2042642))

(assert (= (and b!2042475 ((_ is Concat!9583) (regex!4010 (h!27763 rules!1563)))) b!2042643))

(assert (= (and b!2042475 ((_ is Star!5437) (regex!4010 (h!27763 rules!1563)))) b!2042644))

(assert (= (and b!2042475 ((_ is Union!5437) (regex!4010 (h!27763 rules!1563)))) b!2042645))

(declare-fun b!2042654 () Bool)

(declare-fun tp!606674 () Bool)

(declare-fun e!1289886 () Bool)

(declare-fun tp!606676 () Bool)

(assert (=> b!2042654 (= e!1289886 (and (inv!29694 (left!17780 (c!330874 acc!382))) tp!606674 (inv!29694 (right!18110 (c!330874 acc!382))) tp!606676))))

(declare-fun b!2042656 () Bool)

(declare-fun e!1289887 () Bool)

(declare-fun tp!606675 () Bool)

(assert (=> b!2042656 (= e!1289887 tp!606675)))

(declare-fun b!2042655 () Bool)

(declare-fun inv!29707 (IArray!14999) Bool)

(assert (=> b!2042655 (= e!1289886 (and (inv!29707 (xs!10405 (c!330874 acc!382))) e!1289887))))

(assert (=> b!2042461 (= tp!606614 (and (inv!29694 (c!330874 acc!382)) e!1289886))))

(assert (= (and b!2042461 ((_ is Node!7497) (c!330874 acc!382))) b!2042654))

(assert (= b!2042655 b!2042656))

(assert (= (and b!2042461 ((_ is Leaf!10983) (c!330874 acc!382))) b!2042655))

(declare-fun m!2486745 () Bool)

(assert (=> b!2042654 m!2486745))

(declare-fun m!2486747 () Bool)

(assert (=> b!2042654 m!2486747))

(declare-fun m!2486749 () Bool)

(assert (=> b!2042655 m!2486749))

(assert (=> b!2042461 m!2486489))

(declare-fun b!2042657 () Bool)

(declare-fun e!1289889 () Bool)

(declare-fun tp!606679 () Bool)

(declare-fun tp!606678 () Bool)

(assert (=> b!2042657 (= e!1289889 (and (inv!29700 (left!17779 (c!330873 treated!60))) tp!606679 (inv!29700 (right!18109 (c!330873 treated!60))) tp!606678))))

(declare-fun b!2042659 () Bool)

(declare-fun e!1289888 () Bool)

(declare-fun tp!606677 () Bool)

(assert (=> b!2042659 (= e!1289888 tp!606677)))

(declare-fun b!2042658 () Bool)

(assert (=> b!2042658 (= e!1289889 (and (inv!29706 (xs!10404 (c!330873 treated!60))) e!1289888))))

(assert (=> b!2042478 (= tp!606619 (and (inv!29700 (c!330873 treated!60)) e!1289889))))

(assert (= (and b!2042478 ((_ is Node!7496) (c!330873 treated!60))) b!2042657))

(assert (= b!2042658 b!2042659))

(assert (= (and b!2042478 ((_ is Leaf!10982) (c!330873 treated!60))) b!2042658))

(declare-fun m!2486751 () Bool)

(assert (=> b!2042657 m!2486751))

(declare-fun m!2486753 () Bool)

(assert (=> b!2042657 m!2486753))

(declare-fun m!2486755 () Bool)

(assert (=> b!2042658 m!2486755))

(assert (=> b!2042478 m!2486447))

(declare-fun e!1289891 () Bool)

(declare-fun tp!606682 () Bool)

(declare-fun tp!606681 () Bool)

(declare-fun b!2042660 () Bool)

(assert (=> b!2042660 (= e!1289891 (and (inv!29700 (left!17779 (c!330873 input!986))) tp!606682 (inv!29700 (right!18109 (c!330873 input!986))) tp!606681))))

(declare-fun b!2042662 () Bool)

(declare-fun e!1289890 () Bool)

(declare-fun tp!606680 () Bool)

(assert (=> b!2042662 (= e!1289890 tp!606680)))

(declare-fun b!2042661 () Bool)

(assert (=> b!2042661 (= e!1289891 (and (inv!29706 (xs!10404 (c!330873 input!986))) e!1289890))))

(assert (=> b!2042480 (= tp!606626 (and (inv!29700 (c!330873 input!986)) e!1289891))))

(assert (= (and b!2042480 ((_ is Node!7496) (c!330873 input!986))) b!2042660))

(assert (= b!2042661 b!2042662))

(assert (= (and b!2042480 ((_ is Leaf!10982) (c!330873 input!986))) b!2042661))

(declare-fun m!2486757 () Bool)

(assert (=> b!2042660 m!2486757))

(declare-fun m!2486759 () Bool)

(assert (=> b!2042660 m!2486759))

(declare-fun m!2486761 () Bool)

(assert (=> b!2042661 m!2486761))

(assert (=> b!2042480 m!2486501))

(declare-fun b!2042673 () Bool)

(declare-fun b_free!56993 () Bool)

(declare-fun b_next!57697 () Bool)

(assert (=> b!2042673 (= b_free!56993 (not b_next!57697))))

(declare-fun tp!606691 () Bool)

(declare-fun b_and!162933 () Bool)

(assert (=> b!2042673 (= tp!606691 b_and!162933)))

(declare-fun b_free!56995 () Bool)

(declare-fun b_next!57699 () Bool)

(assert (=> b!2042673 (= b_free!56995 (not b_next!57699))))

(declare-fun tp!606692 () Bool)

(declare-fun b_and!162935 () Bool)

(assert (=> b!2042673 (= tp!606692 b_and!162935)))

(declare-fun e!1289901 () Bool)

(assert (=> b!2042673 (= e!1289901 (and tp!606691 tp!606692))))

(declare-fun e!1289903 () Bool)

(declare-fun b!2042672 () Bool)

(declare-fun tp!606693 () Bool)

(assert (=> b!2042672 (= e!1289903 (and tp!606693 (inv!29692 (tag!4500 (h!27763 (t!191560 rules!1563)))) (inv!29699 (transformation!4010 (h!27763 (t!191560 rules!1563)))) e!1289901))))

(declare-fun b!2042671 () Bool)

(declare-fun e!1289902 () Bool)

(declare-fun tp!606694 () Bool)

(assert (=> b!2042671 (= e!1289902 (and e!1289903 tp!606694))))

(assert (=> b!2042470 (= tp!606621 e!1289902)))

(assert (= b!2042672 b!2042673))

(assert (= b!2042671 b!2042672))

(assert (= (and b!2042470 ((_ is Cons!22362) (t!191560 rules!1563))) b!2042671))

(declare-fun m!2486763 () Bool)

(assert (=> b!2042672 m!2486763))

(declare-fun m!2486765 () Bool)

(assert (=> b!2042672 m!2486765))

(declare-fun b!2042682 () Bool)

(declare-fun e!1289912 () Bool)

(declare-fun tp!606705 () Bool)

(assert (=> b!2042682 (= e!1289912 tp!606705)))

(declare-fun setRes!11791 () Bool)

(declare-fun e!1289910 () Bool)

(declare-fun tp!606708 () Bool)

(declare-fun tp!606706 () Bool)

(declare-fun b!2042683 () Bool)

(assert (=> b!2042683 (= e!1289910 (and tp!606708 (inv!29705 (_2!12000 (_1!12001 (h!27759 (zeroValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))))) e!1289912 tp_is_empty!9293 setRes!11791 tp!606706))))

(declare-fun condSetEmpty!11791 () Bool)

(assert (=> b!2042683 (= condSetEmpty!11791 (= (_2!12001 (h!27759 (zeroValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun b!2042684 () Bool)

(declare-fun e!1289911 () Bool)

(declare-fun tp!606707 () Bool)

(assert (=> b!2042684 (= e!1289911 tp!606707)))

(declare-fun setIsEmpty!11791 () Bool)

(assert (=> setIsEmpty!11791 setRes!11791))

(declare-fun tp!606709 () Bool)

(declare-fun setNonEmpty!11791 () Bool)

(declare-fun setElem!11791 () Context!2014)

(assert (=> setNonEmpty!11791 (= setRes!11791 (and tp!606709 (inv!29705 setElem!11791) e!1289911))))

(declare-fun setRest!11791 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11791 (= (_2!12001 (h!27759 (zeroValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11791 true) setRest!11791))))

(assert (=> b!2042451 (= tp!606627 e!1289910)))

(assert (= b!2042683 b!2042682))

(assert (= (and b!2042683 condSetEmpty!11791) setIsEmpty!11791))

(assert (= (and b!2042683 (not condSetEmpty!11791)) setNonEmpty!11791))

(assert (= setNonEmpty!11791 b!2042684))

(assert (= (and b!2042451 ((_ is Cons!22358) (zeroValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))) b!2042683))

(declare-fun m!2486767 () Bool)

(assert (=> b!2042683 m!2486767))

(declare-fun m!2486769 () Bool)

(assert (=> setNonEmpty!11791 m!2486769))

(declare-fun b!2042685 () Bool)

(declare-fun e!1289915 () Bool)

(declare-fun tp!606710 () Bool)

(assert (=> b!2042685 (= e!1289915 tp!606710)))

(declare-fun setRes!11792 () Bool)

(declare-fun tp!606713 () Bool)

(declare-fun e!1289913 () Bool)

(declare-fun tp!606711 () Bool)

(declare-fun b!2042686 () Bool)

(assert (=> b!2042686 (= e!1289913 (and tp!606713 (inv!29705 (_2!12000 (_1!12001 (h!27759 (minValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))))) e!1289915 tp_is_empty!9293 setRes!11792 tp!606711))))

(declare-fun condSetEmpty!11792 () Bool)

(assert (=> b!2042686 (= condSetEmpty!11792 (= (_2!12001 (h!27759 (minValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun b!2042687 () Bool)

(declare-fun e!1289914 () Bool)

(declare-fun tp!606712 () Bool)

(assert (=> b!2042687 (= e!1289914 tp!606712)))

(declare-fun setIsEmpty!11792 () Bool)

(assert (=> setIsEmpty!11792 setRes!11792))

(declare-fun setNonEmpty!11792 () Bool)

(declare-fun setElem!11792 () Context!2014)

(declare-fun tp!606714 () Bool)

(assert (=> setNonEmpty!11792 (= setRes!11792 (and tp!606714 (inv!29705 setElem!11792) e!1289914))))

(declare-fun setRest!11792 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11792 (= (_2!12001 (h!27759 (minValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11792 true) setRest!11792))))

(assert (=> b!2042451 (= tp!606628 e!1289913)))

(assert (= b!2042686 b!2042685))

(assert (= (and b!2042686 condSetEmpty!11792) setIsEmpty!11792))

(assert (= (and b!2042686 (not condSetEmpty!11792)) setNonEmpty!11792))

(assert (= setNonEmpty!11792 b!2042687))

(assert (= (and b!2042451 ((_ is Cons!22358) (minValue!2249 (v!27075 (underlying!4177 (v!27076 (underlying!4178 (cache!2286 cacheDown!575)))))))) b!2042686))

(declare-fun m!2486771 () Bool)

(assert (=> b!2042686 m!2486771))

(declare-fun m!2486773 () Bool)

(assert (=> setNonEmpty!11792 m!2486773))

(declare-fun mapIsEmpty!9196 () Bool)

(declare-fun mapRes!9196 () Bool)

(assert (=> mapIsEmpty!9196 mapRes!9196))

(declare-fun setIsEmpty!11797 () Bool)

(declare-fun setRes!11797 () Bool)

(assert (=> setIsEmpty!11797 setRes!11797))

(declare-fun b!2042702 () Bool)

(declare-fun e!1289929 () Bool)

(declare-fun tp!606745 () Bool)

(assert (=> b!2042702 (= e!1289929 tp!606745)))

(declare-fun mapNonEmpty!9196 () Bool)

(declare-fun tp!606743 () Bool)

(declare-fun e!1289933 () Bool)

(assert (=> mapNonEmpty!9196 (= mapRes!9196 (and tp!606743 e!1289933))))

(declare-fun mapRest!9196 () (Array (_ BitVec 32) List!22442))

(declare-fun mapKey!9196 () (_ BitVec 32))

(declare-fun mapValue!9196 () List!22442)

(assert (=> mapNonEmpty!9196 (= mapRest!9192 (store mapRest!9196 mapKey!9196 mapValue!9196))))

(declare-fun setRes!11798 () Bool)

(declare-fun tp!606740 () Bool)

(declare-fun setNonEmpty!11797 () Bool)

(declare-fun setElem!11798 () Context!2014)

(declare-fun e!1289930 () Bool)

(assert (=> setNonEmpty!11797 (= setRes!11798 (and tp!606740 (inv!29705 setElem!11798) e!1289930))))

(declare-fun mapDefault!9196 () List!22442)

(declare-fun setRest!11798 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11797 (= (_2!12001 (h!27759 mapDefault!9196)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11798 true) setRest!11798))))

(declare-fun b!2042703 () Bool)

(declare-fun tp!606746 () Bool)

(declare-fun tp!606738 () Bool)

(assert (=> b!2042703 (= e!1289933 (and tp!606738 (inv!29705 (_2!12000 (_1!12001 (h!27759 mapValue!9196)))) e!1289929 tp_is_empty!9293 setRes!11797 tp!606746))))

(declare-fun condSetEmpty!11797 () Bool)

(assert (=> b!2042703 (= condSetEmpty!11797 (= (_2!12001 (h!27759 mapValue!9196)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun b!2042704 () Bool)

(declare-fun e!1289928 () Bool)

(declare-fun tp!606737 () Bool)

(assert (=> b!2042704 (= e!1289928 tp!606737)))

(declare-fun e!1289931 () Bool)

(declare-fun tp!606744 () Bool)

(declare-fun tp!606747 () Bool)

(declare-fun b!2042705 () Bool)

(assert (=> b!2042705 (= e!1289931 (and tp!606747 (inv!29705 (_2!12000 (_1!12001 (h!27759 mapDefault!9196)))) e!1289928 tp_is_empty!9293 setRes!11798 tp!606744))))

(declare-fun condSetEmpty!11798 () Bool)

(assert (=> b!2042705 (= condSetEmpty!11798 (= (_2!12001 (h!27759 mapDefault!9196)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun b!2042706 () Bool)

(declare-fun e!1289932 () Bool)

(declare-fun tp!606739 () Bool)

(assert (=> b!2042706 (= e!1289932 tp!606739)))

(declare-fun b!2042707 () Bool)

(declare-fun tp!606742 () Bool)

(assert (=> b!2042707 (= e!1289930 tp!606742)))

(declare-fun tp!606741 () Bool)

(declare-fun setElem!11797 () Context!2014)

(declare-fun setNonEmpty!11798 () Bool)

(assert (=> setNonEmpty!11798 (= setRes!11797 (and tp!606741 (inv!29705 setElem!11797) e!1289932))))

(declare-fun setRest!11797 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11798 (= (_2!12001 (h!27759 mapValue!9196)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11797 true) setRest!11797))))

(declare-fun condMapEmpty!9196 () Bool)

(assert (=> mapNonEmpty!9193 (= condMapEmpty!9196 (= mapRest!9192 ((as const (Array (_ BitVec 32) List!22442)) mapDefault!9196)))))

(assert (=> mapNonEmpty!9193 (= tp!606616 (and e!1289931 mapRes!9196))))

(declare-fun setIsEmpty!11798 () Bool)

(assert (=> setIsEmpty!11798 setRes!11798))

(assert (= (and mapNonEmpty!9193 condMapEmpty!9196) mapIsEmpty!9196))

(assert (= (and mapNonEmpty!9193 (not condMapEmpty!9196)) mapNonEmpty!9196))

(assert (= b!2042703 b!2042702))

(assert (= (and b!2042703 condSetEmpty!11797) setIsEmpty!11797))

(assert (= (and b!2042703 (not condSetEmpty!11797)) setNonEmpty!11798))

(assert (= setNonEmpty!11798 b!2042706))

(assert (= (and mapNonEmpty!9196 ((_ is Cons!22358) mapValue!9196)) b!2042703))

(assert (= b!2042705 b!2042704))

(assert (= (and b!2042705 condSetEmpty!11798) setIsEmpty!11798))

(assert (= (and b!2042705 (not condSetEmpty!11798)) setNonEmpty!11797))

(assert (= setNonEmpty!11797 b!2042707))

(assert (= (and mapNonEmpty!9193 ((_ is Cons!22358) mapDefault!9196)) b!2042705))

(declare-fun m!2486775 () Bool)

(assert (=> setNonEmpty!11797 m!2486775))

(declare-fun m!2486777 () Bool)

(assert (=> setNonEmpty!11798 m!2486777))

(declare-fun m!2486779 () Bool)

(assert (=> mapNonEmpty!9196 m!2486779))

(declare-fun m!2486781 () Bool)

(assert (=> b!2042703 m!2486781))

(declare-fun m!2486783 () Bool)

(assert (=> b!2042705 m!2486783))

(declare-fun b!2042708 () Bool)

(declare-fun e!1289936 () Bool)

(declare-fun tp!606748 () Bool)

(assert (=> b!2042708 (= e!1289936 tp!606748)))

(declare-fun e!1289934 () Bool)

(declare-fun setRes!11799 () Bool)

(declare-fun tp!606751 () Bool)

(declare-fun tp!606749 () Bool)

(declare-fun b!2042709 () Bool)

(assert (=> b!2042709 (= e!1289934 (and tp!606751 (inv!29705 (_2!12000 (_1!12001 (h!27759 mapValue!9192)))) e!1289936 tp_is_empty!9293 setRes!11799 tp!606749))))

(declare-fun condSetEmpty!11799 () Bool)

(assert (=> b!2042709 (= condSetEmpty!11799 (= (_2!12001 (h!27759 mapValue!9192)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun b!2042710 () Bool)

(declare-fun e!1289935 () Bool)

(declare-fun tp!606750 () Bool)

(assert (=> b!2042710 (= e!1289935 tp!606750)))

(declare-fun setIsEmpty!11799 () Bool)

(assert (=> setIsEmpty!11799 setRes!11799))

(declare-fun setNonEmpty!11799 () Bool)

(declare-fun tp!606752 () Bool)

(declare-fun setElem!11799 () Context!2014)

(assert (=> setNonEmpty!11799 (= setRes!11799 (and tp!606752 (inv!29705 setElem!11799) e!1289935))))

(declare-fun setRest!11799 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11799 (= (_2!12001 (h!27759 mapValue!9192)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11799 true) setRest!11799))))

(assert (=> mapNonEmpty!9193 (= tp!606620 e!1289934)))

(assert (= b!2042709 b!2042708))

(assert (= (and b!2042709 condSetEmpty!11799) setIsEmpty!11799))

(assert (= (and b!2042709 (not condSetEmpty!11799)) setNonEmpty!11799))

(assert (= setNonEmpty!11799 b!2042710))

(assert (= (and mapNonEmpty!9193 ((_ is Cons!22358) mapValue!9192)) b!2042709))

(declare-fun m!2486785 () Bool)

(assert (=> b!2042709 m!2486785))

(declare-fun m!2486787 () Bool)

(assert (=> setNonEmpty!11799 m!2486787))

(declare-fun setIsEmpty!11804 () Bool)

(declare-fun setRes!11805 () Bool)

(assert (=> setIsEmpty!11804 setRes!11805))

(declare-fun mapNonEmpty!9199 () Bool)

(declare-fun mapRes!9199 () Bool)

(declare-fun tp!606779 () Bool)

(declare-fun e!1289952 () Bool)

(assert (=> mapNonEmpty!9199 (= mapRes!9199 (and tp!606779 e!1289952))))

(declare-fun mapRest!9199 () (Array (_ BitVec 32) List!22447))

(declare-fun mapKey!9199 () (_ BitVec 32))

(declare-fun mapValue!9199 () List!22447)

(assert (=> mapNonEmpty!9199 (= mapRest!9193 (store mapRest!9199 mapKey!9199 mapValue!9199))))

(declare-fun b!2042725 () Bool)

(declare-fun e!1289953 () Bool)

(declare-fun tp!606778 () Bool)

(assert (=> b!2042725 (= e!1289953 tp!606778)))

(declare-fun tp!606777 () Bool)

(declare-fun mapDefault!9199 () List!22447)

(declare-fun e!1289954 () Bool)

(declare-fun b!2042726 () Bool)

(assert (=> b!2042726 (= e!1289954 (and (inv!29705 (_1!12003 (_1!12004 (h!27764 mapDefault!9199)))) e!1289953 tp_is_empty!9293 setRes!11805 tp!606777))))

(declare-fun condSetEmpty!11805 () Bool)

(assert (=> b!2042726 (= condSetEmpty!11805 (= (_2!12004 (h!27764 mapDefault!9199)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun setElem!11805 () Context!2014)

(declare-fun setNonEmpty!11804 () Bool)

(declare-fun e!1289950 () Bool)

(declare-fun tp!606775 () Bool)

(declare-fun setRes!11804 () Bool)

(assert (=> setNonEmpty!11804 (= setRes!11804 (and tp!606775 (inv!29705 setElem!11805) e!1289950))))

(declare-fun setRest!11805 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11804 (= (_2!12004 (h!27764 mapValue!9199)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11805 true) setRest!11805))))

(declare-fun b!2042727 () Bool)

(declare-fun e!1289951 () Bool)

(declare-fun tp!606771 () Bool)

(assert (=> b!2042727 (= e!1289951 tp!606771)))

(declare-fun b!2042729 () Bool)

(declare-fun e!1289949 () Bool)

(declare-fun tp!606772 () Bool)

(assert (=> b!2042729 (= e!1289949 tp!606772)))

(declare-fun setIsEmpty!11805 () Bool)

(assert (=> setIsEmpty!11805 setRes!11804))

(declare-fun mapIsEmpty!9199 () Bool)

(assert (=> mapIsEmpty!9199 mapRes!9199))

(declare-fun b!2042730 () Bool)

(declare-fun tp!606773 () Bool)

(assert (=> b!2042730 (= e!1289950 tp!606773)))

(declare-fun setElem!11804 () Context!2014)

(declare-fun setNonEmpty!11805 () Bool)

(declare-fun tp!606774 () Bool)

(assert (=> setNonEmpty!11805 (= setRes!11805 (and tp!606774 (inv!29705 setElem!11804) e!1289951))))

(declare-fun setRest!11804 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11805 (= (_2!12004 (h!27764 mapDefault!9199)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11804 true) setRest!11804))))

(declare-fun b!2042728 () Bool)

(declare-fun tp!606776 () Bool)

(assert (=> b!2042728 (= e!1289952 (and (inv!29705 (_1!12003 (_1!12004 (h!27764 mapValue!9199)))) e!1289949 tp_is_empty!9293 setRes!11804 tp!606776))))

(declare-fun condSetEmpty!11804 () Bool)

(assert (=> b!2042728 (= condSetEmpty!11804 (= (_2!12004 (h!27764 mapValue!9199)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun condMapEmpty!9199 () Bool)

(assert (=> mapNonEmpty!9192 (= condMapEmpty!9199 (= mapRest!9193 ((as const (Array (_ BitVec 32) List!22447)) mapDefault!9199)))))

(assert (=> mapNonEmpty!9192 (= tp!606629 (and e!1289954 mapRes!9199))))

(assert (= (and mapNonEmpty!9192 condMapEmpty!9199) mapIsEmpty!9199))

(assert (= (and mapNonEmpty!9192 (not condMapEmpty!9199)) mapNonEmpty!9199))

(assert (= b!2042728 b!2042729))

(assert (= (and b!2042728 condSetEmpty!11804) setIsEmpty!11805))

(assert (= (and b!2042728 (not condSetEmpty!11804)) setNonEmpty!11804))

(assert (= setNonEmpty!11804 b!2042730))

(assert (= (and mapNonEmpty!9199 ((_ is Cons!22363) mapValue!9199)) b!2042728))

(assert (= b!2042726 b!2042725))

(assert (= (and b!2042726 condSetEmpty!11805) setIsEmpty!11804))

(assert (= (and b!2042726 (not condSetEmpty!11805)) setNonEmpty!11805))

(assert (= setNonEmpty!11805 b!2042727))

(assert (= (and mapNonEmpty!9192 ((_ is Cons!22363) mapDefault!9199)) b!2042726))

(declare-fun m!2486789 () Bool)

(assert (=> b!2042726 m!2486789))

(declare-fun m!2486791 () Bool)

(assert (=> setNonEmpty!11804 m!2486791))

(declare-fun m!2486793 () Bool)

(assert (=> b!2042728 m!2486793))

(declare-fun m!2486795 () Bool)

(assert (=> setNonEmpty!11805 m!2486795))

(declare-fun m!2486797 () Bool)

(assert (=> mapNonEmpty!9199 m!2486797))

(declare-fun e!1289957 () Bool)

(assert (=> mapNonEmpty!9192 (= tp!606618 e!1289957)))

(declare-fun setIsEmpty!11806 () Bool)

(declare-fun setRes!11806 () Bool)

(assert (=> setIsEmpty!11806 setRes!11806))

(declare-fun b!2042731 () Bool)

(declare-fun e!1289955 () Bool)

(declare-fun tp!606783 () Bool)

(assert (=> b!2042731 (= e!1289955 tp!606783)))

(declare-fun tp!606782 () Bool)

(declare-fun b!2042732 () Bool)

(assert (=> b!2042732 (= e!1289957 (and (inv!29705 (_1!12003 (_1!12004 (h!27764 mapValue!9193)))) e!1289955 tp_is_empty!9293 setRes!11806 tp!606782))))

(declare-fun condSetEmpty!11806 () Bool)

(assert (=> b!2042732 (= condSetEmpty!11806 (= (_2!12004 (h!27764 mapValue!9193)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun setNonEmpty!11806 () Bool)

(declare-fun e!1289956 () Bool)

(declare-fun setElem!11806 () Context!2014)

(declare-fun tp!606781 () Bool)

(assert (=> setNonEmpty!11806 (= setRes!11806 (and tp!606781 (inv!29705 setElem!11806) e!1289956))))

(declare-fun setRest!11806 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11806 (= (_2!12004 (h!27764 mapValue!9193)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11806 true) setRest!11806))))

(declare-fun b!2042733 () Bool)

(declare-fun tp!606780 () Bool)

(assert (=> b!2042733 (= e!1289956 tp!606780)))

(assert (= b!2042732 b!2042731))

(assert (= (and b!2042732 condSetEmpty!11806) setIsEmpty!11806))

(assert (= (and b!2042732 (not condSetEmpty!11806)) setNonEmpty!11806))

(assert (= setNonEmpty!11806 b!2042733))

(assert (= (and mapNonEmpty!9192 ((_ is Cons!22363) mapValue!9193)) b!2042732))

(declare-fun m!2486799 () Bool)

(assert (=> b!2042732 m!2486799))

(declare-fun m!2486801 () Bool)

(assert (=> setNonEmpty!11806 m!2486801))

(declare-fun e!1289960 () Bool)

(assert (=> b!2042462 (= tp!606623 e!1289960)))

(declare-fun setIsEmpty!11807 () Bool)

(declare-fun setRes!11807 () Bool)

(assert (=> setIsEmpty!11807 setRes!11807))

(declare-fun b!2042734 () Bool)

(declare-fun e!1289958 () Bool)

(declare-fun tp!606787 () Bool)

(assert (=> b!2042734 (= e!1289958 tp!606787)))

(declare-fun tp!606786 () Bool)

(declare-fun b!2042735 () Bool)

(assert (=> b!2042735 (= e!1289960 (and (inv!29705 (_1!12003 (_1!12004 (h!27764 (zeroValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))))) e!1289958 tp_is_empty!9293 setRes!11807 tp!606786))))

(declare-fun condSetEmpty!11807 () Bool)

(assert (=> b!2042735 (= condSetEmpty!11807 (= (_2!12004 (h!27764 (zeroValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun tp!606785 () Bool)

(declare-fun setElem!11807 () Context!2014)

(declare-fun setNonEmpty!11807 () Bool)

(declare-fun e!1289959 () Bool)

(assert (=> setNonEmpty!11807 (= setRes!11807 (and tp!606785 (inv!29705 setElem!11807) e!1289959))))

(declare-fun setRest!11807 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11807 (= (_2!12004 (h!27764 (zeroValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11807 true) setRest!11807))))

(declare-fun b!2042736 () Bool)

(declare-fun tp!606784 () Bool)

(assert (=> b!2042736 (= e!1289959 tp!606784)))

(assert (= b!2042735 b!2042734))

(assert (= (and b!2042735 condSetEmpty!11807) setIsEmpty!11807))

(assert (= (and b!2042735 (not condSetEmpty!11807)) setNonEmpty!11807))

(assert (= setNonEmpty!11807 b!2042736))

(assert (= (and b!2042462 ((_ is Cons!22363) (zeroValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))) b!2042735))

(declare-fun m!2486803 () Bool)

(assert (=> b!2042735 m!2486803))

(declare-fun m!2486805 () Bool)

(assert (=> setNonEmpty!11807 m!2486805))

(declare-fun e!1289963 () Bool)

(assert (=> b!2042462 (= tp!606610 e!1289963)))

(declare-fun setIsEmpty!11808 () Bool)

(declare-fun setRes!11808 () Bool)

(assert (=> setIsEmpty!11808 setRes!11808))

(declare-fun b!2042737 () Bool)

(declare-fun e!1289961 () Bool)

(declare-fun tp!606791 () Bool)

(assert (=> b!2042737 (= e!1289961 tp!606791)))

(declare-fun tp!606790 () Bool)

(declare-fun b!2042738 () Bool)

(assert (=> b!2042738 (= e!1289963 (and (inv!29705 (_1!12003 (_1!12004 (h!27764 (minValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))))) e!1289961 tp_is_empty!9293 setRes!11808 tp!606790))))

(declare-fun condSetEmpty!11808 () Bool)

(assert (=> b!2042738 (= condSetEmpty!11808 (= (_2!12004 (h!27764 (minValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun tp!606789 () Bool)

(declare-fun setElem!11808 () Context!2014)

(declare-fun e!1289962 () Bool)

(declare-fun setNonEmpty!11808 () Bool)

(assert (=> setNonEmpty!11808 (= setRes!11808 (and tp!606789 (inv!29705 setElem!11808) e!1289962))))

(declare-fun setRest!11808 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11808 (= (_2!12004 (h!27764 (minValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11808 true) setRest!11808))))

(declare-fun b!2042739 () Bool)

(declare-fun tp!606788 () Bool)

(assert (=> b!2042739 (= e!1289962 tp!606788)))

(assert (= b!2042738 b!2042737))

(assert (= (and b!2042738 condSetEmpty!11808) setIsEmpty!11808))

(assert (= (and b!2042738 (not condSetEmpty!11808)) setNonEmpty!11808))

(assert (= setNonEmpty!11808 b!2042739))

(assert (= (and b!2042462 ((_ is Cons!22363) (minValue!2250 (v!27077 (underlying!4179 (v!27078 (underlying!4180 (cache!2287 cacheUp!562)))))))) b!2042738))

(declare-fun m!2486807 () Bool)

(assert (=> b!2042738 m!2486807))

(declare-fun m!2486809 () Bool)

(assert (=> setNonEmpty!11808 m!2486809))

(declare-fun b!2042740 () Bool)

(declare-fun e!1289966 () Bool)

(declare-fun tp!606792 () Bool)

(assert (=> b!2042740 (= e!1289966 tp!606792)))

(declare-fun e!1289964 () Bool)

(declare-fun b!2042741 () Bool)

(declare-fun tp!606793 () Bool)

(declare-fun tp!606795 () Bool)

(declare-fun setRes!11809 () Bool)

(assert (=> b!2042741 (= e!1289964 (and tp!606795 (inv!29705 (_2!12000 (_1!12001 (h!27759 mapDefault!9192)))) e!1289966 tp_is_empty!9293 setRes!11809 tp!606793))))

(declare-fun condSetEmpty!11809 () Bool)

(assert (=> b!2042741 (= condSetEmpty!11809 (= (_2!12001 (h!27759 mapDefault!9192)) ((as const (Array Context!2014 Bool)) false)))))

(declare-fun b!2042742 () Bool)

(declare-fun e!1289965 () Bool)

(declare-fun tp!606794 () Bool)

(assert (=> b!2042742 (= e!1289965 tp!606794)))

(declare-fun setIsEmpty!11809 () Bool)

(assert (=> setIsEmpty!11809 setRes!11809))

(declare-fun setElem!11809 () Context!2014)

(declare-fun setNonEmpty!11809 () Bool)

(declare-fun tp!606796 () Bool)

(assert (=> setNonEmpty!11809 (= setRes!11809 (and tp!606796 (inv!29705 setElem!11809) e!1289965))))

(declare-fun setRest!11809 () (InoxSet Context!2014))

(assert (=> setNonEmpty!11809 (= (_2!12001 (h!27759 mapDefault!9192)) ((_ map or) (store ((as const (Array Context!2014 Bool)) false) setElem!11809 true) setRest!11809))))

(assert (=> b!2042456 (= tp!606625 e!1289964)))

(assert (= b!2042741 b!2042740))

(assert (= (and b!2042741 condSetEmpty!11809) setIsEmpty!11809))

(assert (= (and b!2042741 (not condSetEmpty!11809)) setNonEmpty!11809))

(assert (= setNonEmpty!11809 b!2042742))

(assert (= (and b!2042456 ((_ is Cons!22358) mapDefault!9192)) b!2042741))

(declare-fun m!2486811 () Bool)

(assert (=> b!2042741 m!2486811))

(declare-fun m!2486813 () Bool)

(assert (=> setNonEmpty!11809 m!2486813))

(check-sat (not b!2042656) (not b!2042658) (not b!2042643) (not setNonEmpty!11799) (not d!625352) (not d!625382) (not setNonEmpty!11809) (not b!2042461) (not b!2042709) (not b!2042488) (not setNonEmpty!11805) (not b!2042705) (not b!2042543) (not b!2042660) (not b!2042684) (not b!2042733) (not d!625374) (not b!2042682) (not d!625318) (not b!2042731) (not b!2042562) (not d!625330) (not b!2042531) (not b_next!57693) (not b!2042489) (not b!2042685) (not b!2042560) (not d!625336) (not b!2042708) b_and!162923 (not b!2042644) (not b!2042703) (not b!2042704) (not b!2042508) (not mapNonEmpty!9199) (not b!2042476) (not b!2042585) (not b!2042583) (not d!625328) (not b!2042645) (not d!625310) (not b!2042559) (not b!2042725) (not d!625370) (not b!2042545) b_and!162931 (not d!625334) (not d!625362) (not b!2042735) b_and!162935 (not setNonEmpty!11792) (not b!2042661) (not d!625316) (not d!625346) (not b!2042740) (not b!2042671) (not b!2042608) (not b!2042655) b_and!162929 (not d!625378) (not b!2042706) (not b!2042609) (not b!2042591) (not b_next!57695) (not d!625366) (not b!2042596) (not b!2042533) (not b!2042619) (not b!2042728) (not b!2042741) (not b!2042659) (not b!2042683) (not bm!125283) (not b!2042512) (not b!2042524) (not d!625350) (not b!2042730) (not b!2042620) (not d!625376) (not b!2042686) (not b!2042565) b_and!162921 (not b!2042597) (not b!2042662) (not setNonEmpty!11798) (not d!625390) (not b!2042687) (not b!2042742) (not d!625332) (not setNonEmpty!11797) (not d!625312) (not b!2042734) (not setNonEmpty!11808) (not b!2042575) (not b!2042732) (not b!2042702) (not setNonEmpty!11806) (not b_next!57687) (not b!2042607) (not b!2042631) (not d!625338) (not setNonEmpty!11788) (not b!2042606) (not b!2042546) (not d!625372) (not b!2042595) (not d!625348) (not b!2042584) (not b!2042726) (not b!2042629) (not setNonEmpty!11807) (not b!2042480) (not b!2042563) (not d!625324) (not b!2042557) (not b!2042593) b_and!162933 (not b!2042547) (not b!2042618) (not b!2042478) (not setNonEmpty!11804) (not b!2042588) (not b!2042738) (not b!2042510) (not b!2042576) (not b!2042586) (not b!2042541) (not b!2042589) (not b_next!57685) (not d!625356) (not b!2042506) (not d!625320) (not b!2042707) (not b!2042511) (not d!625326) (not d!625380) (not b!2042737) (not b!2042550) (not b!2042536) (not mapNonEmpty!9196) (not b!2042592) (not b_next!57691) (not b!2042654) (not b!2042522) (not b_next!57699) (not b!2042630) (not b!2042729) (not d!625308) (not setNonEmpty!11791) (not b!2042523) (not b!2042657) b_and!162925 (not b!2042710) (not b!2042727) (not b_next!57689) (not b!2042537) (not b!2042540) (not b!2042507) (not b!2042672) (not b!2042542) tp_is_empty!9293 b_and!162927 (not b!2042590) (not b!2042580) (not b_next!57697) (not b!2042739) (not b!2042736))
(check-sat (not b_next!57693) b_and!162923 b_and!162931 b_and!162935 b_and!162929 (not b_next!57695) b_and!162921 (not b_next!57687) b_and!162933 (not b_next!57685) (not b_next!57691) (not b_next!57699) b_and!162927 (not b_next!57697) b_and!162925 (not b_next!57689))
