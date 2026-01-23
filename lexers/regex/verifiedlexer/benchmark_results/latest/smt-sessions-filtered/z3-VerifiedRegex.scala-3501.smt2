; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201716 () Bool)

(assert start!201716)

(declare-fun b!2050048 () Bool)

(declare-fun b_free!57701 () Bool)

(declare-fun b_next!58405 () Bool)

(assert (=> b!2050048 (= b_free!57701 (not b_next!58405))))

(declare-fun tp!611582 () Bool)

(declare-fun b_and!163681 () Bool)

(assert (=> b!2050048 (= tp!611582 b_and!163681)))

(declare-fun b_free!57703 () Bool)

(declare-fun b_next!58407 () Bool)

(assert (=> b!2050048 (= b_free!57703 (not b_next!58407))))

(declare-fun tp!611584 () Bool)

(declare-fun b_and!163683 () Bool)

(assert (=> b!2050048 (= tp!611584 b_and!163683)))

(declare-fun b!2050050 () Bool)

(declare-fun b_free!57705 () Bool)

(declare-fun b_next!58409 () Bool)

(assert (=> b!2050050 (= b_free!57705 (not b_next!58409))))

(declare-fun tp!611606 () Bool)

(declare-fun b_and!163685 () Bool)

(assert (=> b!2050050 (= tp!611606 b_and!163685)))

(declare-fun b!2050055 () Bool)

(declare-fun b_free!57707 () Bool)

(declare-fun b_next!58411 () Bool)

(assert (=> b!2050055 (= b_free!57707 (not b_next!58411))))

(declare-fun tp!611567 () Bool)

(declare-fun b_and!163687 () Bool)

(assert (=> b!2050055 (= tp!611567 b_and!163687)))

(declare-fun b!2050068 () Bool)

(declare-fun b_free!57709 () Bool)

(declare-fun b_next!58413 () Bool)

(assert (=> b!2050068 (= b_free!57709 (not b_next!58413))))

(declare-fun tp!611593 () Bool)

(declare-fun b_and!163689 () Bool)

(assert (=> b!2050068 (= tp!611593 b_and!163689)))

(declare-fun b_free!57711 () Bool)

(declare-fun b_next!58415 () Bool)

(assert (=> b!2050068 (= b_free!57711 (not b_next!58415))))

(declare-fun tp!611566 () Bool)

(declare-fun b_and!163691 () Bool)

(assert (=> b!2050068 (= tp!611566 b_and!163691)))

(declare-fun b!2050087 () Bool)

(declare-fun b_free!57713 () Bool)

(declare-fun b_next!58417 () Bool)

(assert (=> b!2050087 (= b_free!57713 (not b_next!58417))))

(declare-fun tp!611578 () Bool)

(declare-fun b_and!163693 () Bool)

(assert (=> b!2050087 (= tp!611578 b_and!163693)))

(declare-fun b!2050102 () Bool)

(declare-fun b_free!57715 () Bool)

(declare-fun b_next!58419 () Bool)

(assert (=> b!2050102 (= b_free!57715 (not b_next!58419))))

(declare-fun tp!611562 () Bool)

(declare-fun b_and!163695 () Bool)

(assert (=> b!2050102 (= tp!611562 b_and!163695)))

(declare-fun b!2050031 () Bool)

(declare-fun b_free!57717 () Bool)

(declare-fun b_next!58421 () Bool)

(assert (=> b!2050031 (= b_free!57717 (not b_next!58421))))

(declare-fun tp!611565 () Bool)

(declare-fun b_and!163697 () Bool)

(assert (=> b!2050031 (= tp!611565 b_and!163697)))

(declare-fun b!2050039 () Bool)

(declare-fun b_free!57719 () Bool)

(declare-fun b_next!58423 () Bool)

(assert (=> b!2050039 (= b_free!57719 (not b_next!58423))))

(declare-fun tp!611579 () Bool)

(declare-fun b_and!163699 () Bool)

(assert (=> b!2050039 (= tp!611579 b_and!163699)))

(declare-fun b_free!57721 () Bool)

(declare-fun b_next!58425 () Bool)

(assert (=> b!2050039 (= b_free!57721 (not b_next!58425))))

(declare-fun tp!611601 () Bool)

(declare-fun b_and!163701 () Bool)

(assert (=> b!2050039 (= tp!611601 b_and!163701)))

(declare-fun b!2050040 () Bool)

(declare-fun b_free!57723 () Bool)

(declare-fun b_next!58427 () Bool)

(assert (=> b!2050040 (= b_free!57723 (not b_next!58427))))

(declare-fun tp!611598 () Bool)

(declare-fun b_and!163703 () Bool)

(assert (=> b!2050040 (= tp!611598 b_and!163703)))

(declare-fun b!2050099 () Bool)

(declare-fun b_free!57725 () Bool)

(declare-fun b_next!58429 () Bool)

(assert (=> b!2050099 (= b_free!57725 (not b_next!58429))))

(declare-fun tp!611589 () Bool)

(declare-fun b_and!163705 () Bool)

(assert (=> b!2050099 (= tp!611589 b_and!163705)))

(declare-fun b!2050063 () Bool)

(declare-fun b_free!57727 () Bool)

(declare-fun b_next!58431 () Bool)

(assert (=> b!2050063 (= b_free!57727 (not b_next!58431))))

(declare-fun tp!611560 () Bool)

(declare-fun b_and!163707 () Bool)

(assert (=> b!2050063 (= tp!611560 b_and!163707)))

(declare-fun b!2050035 () Bool)

(declare-fun b_free!57729 () Bool)

(declare-fun b_next!58433 () Bool)

(assert (=> b!2050035 (= b_free!57729 (not b_next!58433))))

(declare-fun tp!611561 () Bool)

(declare-fun b_and!163709 () Bool)

(assert (=> b!2050035 (= tp!611561 b_and!163709)))

(declare-fun b_free!57731 () Bool)

(declare-fun b_next!58435 () Bool)

(assert (=> b!2050035 (= b_free!57731 (not b_next!58435))))

(declare-fun tp!611581 () Bool)

(declare-fun b_and!163711 () Bool)

(assert (=> b!2050035 (= tp!611581 b_and!163711)))

(declare-datatypes ((LexerInterface!3651 0))(
  ( (LexerInterfaceExt!3648 (__x!14095 Int)) (Lexer!3649) )
))
(declare-fun thiss!12889 () LexerInterface!3651)

(declare-datatypes ((List!22660 0))(
  ( (Nil!22576) (Cons!22576 (h!27977 (_ BitVec 16)) (t!191826 List!22660)) )
))
(declare-datatypes ((TokenValue!4177 0))(
  ( (FloatLiteralValue!8354 (text!29684 List!22660)) (TokenValueExt!4176 (__x!14096 Int)) (Broken!20885 (value!126795 List!22660)) (Object!4260) (End!4177) (Def!4177) (Underscore!4177) (Match!4177) (Else!4177) (Error!4177) (Case!4177) (If!4177) (Extends!4177) (Abstract!4177) (Class!4177) (Val!4177) (DelimiterValue!8354 (del!4237 List!22660)) (KeywordValue!4183 (value!126796 List!22660)) (CommentValue!8354 (value!126797 List!22660)) (WhitespaceValue!8354 (value!126798 List!22660)) (IndentationValue!4177 (value!126799 List!22660)) (String!26076) (Int32!4177) (Broken!20886 (value!126800 List!22660)) (Boolean!4178) (Unit!37082) (OperatorValue!4180 (op!4237 List!22660)) (IdentifierValue!8354 (value!126801 List!22660)) (IdentifierValue!8355 (value!126802 List!22660)) (WhitespaceValue!8355 (value!126803 List!22660)) (True!8354) (False!8354) (Broken!20887 (value!126804 List!22660)) (Broken!20888 (value!126805 List!22660)) (True!8355) (RightBrace!4177) (RightBracket!4177) (Colon!4177) (Null!4177) (Comma!4177) (LeftBracket!4177) (False!8355) (LeftBrace!4177) (ImaginaryLiteralValue!4177 (text!29685 List!22660)) (StringLiteralValue!12531 (value!126806 List!22660)) (EOFValue!4177 (value!126807 List!22660)) (IdentValue!4177 (value!126808 List!22660)) (DelimiterValue!8355 (value!126809 List!22660)) (DedentValue!4177 (value!126810 List!22660)) (NewLineValue!4177 (value!126811 List!22660)) (IntegerValue!12531 (value!126812 (_ BitVec 32)) (text!29686 List!22660)) (IntegerValue!12532 (value!126813 Int) (text!29687 List!22660)) (Times!4177) (Or!4177) (Equal!4177) (Minus!4177) (Broken!20889 (value!126814 List!22660)) (And!4177) (Div!4177) (LessEqual!4177) (Mod!4177) (Concat!9646) (Not!4177) (Plus!4177) (SpaceValue!4177 (value!126815 List!22660)) (IntegerValue!12533 (value!126816 Int) (text!29688 List!22660)) (StringLiteralValue!12532 (text!29689 List!22660)) (FloatLiteralValue!8355 (text!29690 List!22660)) (BytesLiteralValue!4177 (value!126817 List!22660)) (CommentValue!8355 (value!126818 List!22660)) (StringLiteralValue!12533 (value!126819 List!22660)) (ErrorTokenValue!4177 (msg!4238 List!22660)) )
))
(declare-datatypes ((C!11084 0))(
  ( (C!11085 (val!6528 Int)) )
))
(declare-datatypes ((List!22661 0))(
  ( (Nil!22577) (Cons!22577 (h!27978 C!11084) (t!191827 List!22661)) )
))
(declare-datatypes ((IArray!15115 0))(
  ( (IArray!15116 (innerList!7615 List!22661)) )
))
(declare-datatypes ((Conc!7555 0))(
  ( (Node!7555 (left!17868 Conc!7555) (right!18198 Conc!7555) (csize!15340 Int) (cheight!7766 Int)) (Leaf!11057 (xs!10463 IArray!15115) (csize!15341 Int)) (Empty!7555) )
))
(declare-datatypes ((BalanceConc!14872 0))(
  ( (BalanceConc!14873 (c!331495 Conc!7555)) )
))
(declare-datatypes ((String!26077 0))(
  ( (String!26078 (value!126820 String)) )
))
(declare-datatypes ((Regex!5469 0))(
  ( (ElementMatch!5469 (c!331496 C!11084)) (Concat!9647 (regOne!11450 Regex!5469) (regTwo!11450 Regex!5469)) (EmptyExpr!5469) (Star!5469 (reg!5798 Regex!5469)) (EmptyLang!5469) (Union!5469 (regOne!11451 Regex!5469) (regTwo!11451 Regex!5469)) )
))
(declare-datatypes ((TokenValueInjection!7938 0))(
  ( (TokenValueInjection!7939 (toValue!5724 Int) (toChars!5583 Int)) )
))
(declare-datatypes ((Rule!7882 0))(
  ( (Rule!7883 (regex!4041 Regex!5469) (tag!4531 String!26077) (isSeparator!4041 Bool) (transformation!4041 TokenValueInjection!7938)) )
))
(declare-datatypes ((List!22662 0))(
  ( (Nil!22578) (Cons!22578 (h!27979 Rule!7882) (t!191828 List!22662)) )
))
(declare-fun rules!1563 () List!22662)

(declare-fun totalInput!418 () BalanceConc!14872)

(declare-datatypes ((Token!7630 0))(
  ( (Token!7631 (value!126821 TokenValue!4177) (rule!6282 Rule!7882) (size!17632 Int) (originalCharacters!4846 List!22661)) )
))
(declare-datatypes ((tuple2!21358 0))(
  ( (tuple2!21359 (_1!12225 Token!7630) (_2!12225 BalanceConc!14872)) )
))
(declare-datatypes ((Option!4723 0))(
  ( (None!4722) (Some!4722 (v!27228 tuple2!21358)) )
))
(declare-fun call!125452 () Option!4723)

(declare-fun input!986 () BalanceConc!14872)

(declare-fun bm!125445 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!128 (LexerInterface!3651 Rule!7882 BalanceConc!14872 BalanceConc!14872) Option!4723)

(assert (=> bm!125445 (= call!125452 (maxPrefixOneRuleZipperSequenceV2!128 thiss!12889 (h!27979 rules!1563) input!986 totalInput!418))))

(declare-fun b!2050029 () Bool)

(declare-fun e!1296497 () Bool)

(declare-fun e!1296458 () Bool)

(assert (=> b!2050029 (= e!1296497 e!1296458)))

(declare-fun b!2050030 () Bool)

(declare-fun e!1296490 () Bool)

(declare-fun e!1296519 () Bool)

(assert (=> b!2050030 (= e!1296490 e!1296519)))

(declare-fun e!1296500 () Bool)

(declare-fun e!1296476 () Bool)

(assert (=> b!2050031 (= e!1296500 (and e!1296476 tp!611565))))

(declare-fun e!1296509 () Bool)

(declare-fun b!2050032 () Bool)

(declare-fun tp!611573 () Bool)

(declare-fun err!3303 () Option!4723)

(declare-fun e!1296499 () Bool)

(declare-fun inv!29941 (String!26077) Bool)

(declare-fun inv!29943 (TokenValueInjection!7938) Bool)

(assert (=> b!2050032 (= e!1296499 (and tp!611573 (inv!29941 (tag!4531 (rule!6282 (_1!12225 (v!27228 err!3303))))) (inv!29943 (transformation!4041 (rule!6282 (_1!12225 (v!27228 err!3303))))) e!1296509))))

(declare-fun b!2050033 () Bool)

(declare-datatypes ((Hashable!1966 0))(
  ( (HashableExt!1965 (__x!14097 Int)) )
))
(declare-datatypes ((List!22663 0))(
  ( (Nil!22579) (Cons!22579 (h!27980 Regex!5469) (t!191829 List!22663)) )
))
(declare-datatypes ((Context!2078 0))(
  ( (Context!2079 (exprs!1539 List!22663)) )
))
(declare-datatypes ((tuple2!21360 0))(
  ( (tuple2!21361 (_1!12226 Context!2078) (_2!12226 C!11084)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21362 0))(
  ( (tuple2!21363 (_1!12227 tuple2!21360) (_2!12227 (InoxSet Context!2078))) )
))
(declare-datatypes ((List!22664 0))(
  ( (Nil!22580) (Cons!22580 (h!27981 tuple2!21362) (t!191830 List!22664)) )
))
(declare-datatypes ((array!7069 0))(
  ( (array!7070 (arr!3142 (Array (_ BitVec 32) List!22664)) (size!17633 (_ BitVec 32))) )
))
(declare-datatypes ((array!7071 0))(
  ( (array!7072 (arr!3143 (Array (_ BitVec 32) (_ BitVec 64))) (size!17634 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4104 0))(
  ( (LongMapFixedSize!4105 (defaultEntry!2417 Int) (mask!6102 (_ BitVec 32)) (extraKeys!2300 (_ BitVec 32)) (zeroValue!2310 List!22664) (minValue!2310 List!22664) (_size!4155 (_ BitVec 32)) (_keys!2349 array!7071) (_values!2332 array!7069) (_vacant!2113 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8033 0))(
  ( (Cell!8034 (v!27229 LongMapFixedSize!4104)) )
))
(declare-datatypes ((MutLongMap!2052 0))(
  ( (LongMap!2052 (underlying!4299 Cell!8033)) (MutLongMapExt!2051 (__x!14098 Int)) )
))
(declare-datatypes ((Hashable!1967 0))(
  ( (HashableExt!1966 (__x!14099 Int)) )
))
(declare-datatypes ((Cell!8035 0))(
  ( (Cell!8036 (v!27230 MutLongMap!2052)) )
))
(declare-datatypes ((MutableMap!1966 0))(
  ( (MutableMapExt!1965 (__x!14100 Int)) (HashMap!1966 (underlying!4300 Cell!8035) (hashF!3889 Hashable!1967) (_size!4156 (_ BitVec 32)) (defaultValue!2128 Int)) )
))
(declare-datatypes ((CacheUp!1262 0))(
  ( (CacheUp!1263 (cache!2347 MutableMap!1966)) )
))
(declare-datatypes ((tuple3!2164 0))(
  ( (tuple3!2165 (_1!12228 Regex!5469) (_2!12228 Context!2078) (_3!1546 C!11084)) )
))
(declare-datatypes ((tuple2!21364 0))(
  ( (tuple2!21365 (_1!12229 tuple3!2164) (_2!12229 (InoxSet Context!2078))) )
))
(declare-datatypes ((List!22665 0))(
  ( (Nil!22581) (Cons!22581 (h!27982 tuple2!21364) (t!191831 List!22665)) )
))
(declare-datatypes ((array!7073 0))(
  ( (array!7074 (arr!3144 (Array (_ BitVec 32) List!22665)) (size!17635 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4106 0))(
  ( (LongMapFixedSize!4107 (defaultEntry!2418 Int) (mask!6103 (_ BitVec 32)) (extraKeys!2301 (_ BitVec 32)) (zeroValue!2311 List!22665) (minValue!2311 List!22665) (_size!4157 (_ BitVec 32)) (_keys!2350 array!7071) (_values!2333 array!7073) (_vacant!2114 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!8037 0))(
  ( (Cell!8038 (v!27231 LongMapFixedSize!4106)) )
))
(declare-datatypes ((MutLongMap!2053 0))(
  ( (LongMap!2053 (underlying!4301 Cell!8037)) (MutLongMapExt!2052 (__x!14101 Int)) )
))
(declare-datatypes ((Cell!8039 0))(
  ( (Cell!8040 (v!27232 MutLongMap!2053)) )
))
(declare-datatypes ((MutableMap!1967 0))(
  ( (MutableMapExt!1966 (__x!14102 Int)) (HashMap!1967 (underlying!4302 Cell!8039) (hashF!3890 Hashable!1966) (_size!4158 (_ BitVec 32)) (defaultValue!2129 Int)) )
))
(declare-datatypes ((CacheDown!1264 0))(
  ( (CacheDown!1265 (cache!2348 MutableMap!1967)) )
))
(declare-datatypes ((tuple3!2166 0))(
  ( (tuple3!2167 (_1!12230 Option!4723) (_2!12230 CacheUp!1262) (_3!1547 CacheDown!1264)) )
))
(declare-fun e!1296520 () tuple3!2166)

(declare-fun call!125451 () tuple3!2166)

(assert (=> b!2050033 (= e!1296520 call!125451)))

(declare-fun b!2050034 () Bool)

(declare-fun e!1296468 () Bool)

(declare-fun err!3304 () tuple3!2166)

(declare-fun tp!611588 () Bool)

(declare-fun inv!29944 (Conc!7555) Bool)

(assert (=> b!2050034 (= e!1296468 (and (inv!29944 (c!331495 (_2!12225 (v!27228 (_1!12230 err!3304))))) tp!611588))))

(declare-fun e!1296510 () Bool)

(assert (=> b!2050035 (= e!1296510 (and tp!611561 tp!611581))))

(declare-fun b!2050036 () Bool)

(declare-fun e!1296513 () Bool)

(declare-fun tp!611558 () Bool)

(declare-fun mapRes!9552 () Bool)

(assert (=> b!2050036 (= e!1296513 (and tp!611558 mapRes!9552))))

(declare-fun condMapEmpty!9553 () Bool)

(declare-fun cacheDown!575 () CacheDown!1264)

(declare-fun mapDefault!9550 () List!22665)

(assert (=> b!2050036 (= condMapEmpty!9553 (= (arr!3144 (_values!2333 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22665)) mapDefault!9550)))))

(declare-fun b!2050037 () Bool)

(declare-fun e!1296493 () Bool)

(declare-fun e!1296508 () Bool)

(assert (=> b!2050037 (= e!1296493 e!1296508)))

(declare-fun b!2050038 () Bool)

(declare-fun e!1296485 () Bool)

(declare-fun e!1296486 () Bool)

(assert (=> b!2050038 (= e!1296485 e!1296486)))

(declare-fun e!1296524 () Bool)

(assert (=> b!2050039 (= e!1296524 (and tp!611579 tp!611601))))

(declare-fun mapIsEmpty!9550 () Bool)

(declare-fun mapRes!9553 () Bool)

(assert (=> mapIsEmpty!9550 mapRes!9553))

(declare-fun e!1296470 () Bool)

(assert (=> b!2050040 (= e!1296508 (and e!1296470 tp!611598))))

(declare-fun b!2050041 () Bool)

(declare-fun res!897094 () Bool)

(declare-fun e!1296514 () Bool)

(assert (=> b!2050041 (=> (not res!897094) (not e!1296514))))

(declare-fun cacheUp!562 () CacheUp!1262)

(declare-fun valid!1627 (CacheUp!1262) Bool)

(assert (=> b!2050041 (= res!897094 (valid!1627 cacheUp!562))))

(declare-fun b!2050042 () Bool)

(declare-fun e!1296455 () Bool)

(declare-fun e!1296481 () Bool)

(assert (=> b!2050042 (= e!1296455 e!1296481)))

(declare-fun res!897100 () Bool)

(assert (=> b!2050042 (=> (not res!897100) (not e!1296481))))

(declare-datatypes ((List!22666 0))(
  ( (Nil!22582) (Cons!22582 (h!27983 Token!7630) (t!191832 List!22666)) )
))
(declare-datatypes ((IArray!15117 0))(
  ( (IArray!15118 (innerList!7616 List!22666)) )
))
(declare-datatypes ((Conc!7556 0))(
  ( (Node!7556 (left!17869 Conc!7556) (right!18199 Conc!7556) (csize!15342 Int) (cheight!7767 Int)) (Leaf!11058 (xs!10464 IArray!15117) (csize!15343 Int)) (Empty!7556) )
))
(declare-datatypes ((BalanceConc!14874 0))(
  ( (BalanceConc!14875 (c!331497 Conc!7556)) )
))
(declare-datatypes ((tuple2!21366 0))(
  ( (tuple2!21367 (_1!12231 BalanceConc!14874) (_2!12231 BalanceConc!14872)) )
))
(declare-fun lt!768520 () tuple2!21366)

(declare-fun acc!382 () BalanceConc!14874)

(declare-fun list!9228 (BalanceConc!14874) List!22666)

(assert (=> b!2050042 (= res!897100 (= (list!9228 (_1!12231 lt!768520)) (list!9228 acc!382)))))

(declare-fun treated!60 () BalanceConc!14872)

(declare-fun lexRec!454 (LexerInterface!3651 List!22662 BalanceConc!14872) tuple2!21366)

(assert (=> b!2050042 (= lt!768520 (lexRec!454 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2050043 () Bool)

(declare-fun e!1296472 () tuple3!2166)

(assert (=> b!2050043 (= e!1296520 e!1296472)))

(declare-fun c!331490 () Bool)

(get-info :version)

(assert (=> b!2050043 (= c!331490 ((_ is Cons!22578) rules!1563))))

(declare-fun mapIsEmpty!9551 () Bool)

(declare-fun mapRes!9550 () Bool)

(assert (=> mapIsEmpty!9551 mapRes!9550))

(declare-fun b!2050044 () Bool)

(declare-fun res!897102 () Bool)

(declare-fun e!1296527 () Bool)

(assert (=> b!2050044 (=> (not res!897102) (not e!1296527))))

(declare-fun rulesInvariant!3243 (LexerInterface!3651 List!22662) Bool)

(assert (=> b!2050044 (= res!897102 (rulesInvariant!3243 thiss!12889 rules!1563))))

(declare-fun b!2050045 () Bool)

(declare-fun e!1296487 () Bool)

(declare-fun tp!611580 () Bool)

(assert (=> b!2050045 (= e!1296487 (and (inv!29944 (c!331495 treated!60)) tp!611580))))

(declare-fun mapNonEmpty!9550 () Bool)

(declare-fun tp!611563 () Bool)

(declare-fun tp!611599 () Bool)

(assert (=> mapNonEmpty!9550 (= mapRes!9552 (and tp!611563 tp!611599))))

(declare-fun mapRest!9551 () (Array (_ BitVec 32) List!22665))

(declare-fun mapValue!9552 () List!22665)

(declare-fun mapKey!9551 () (_ BitVec 32))

(assert (=> mapNonEmpty!9550 (= (arr!3144 (_values!2333 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 cacheDown!575))))))) (store mapRest!9551 mapKey!9551 mapValue!9552))))

(declare-fun b!2050046 () Bool)

(declare-fun res!897096 () Bool)

(assert (=> b!2050046 (=> (not res!897096) (not e!1296514))))

(declare-fun lt!768512 () tuple2!21366)

(declare-fun lt!768523 () tuple2!21366)

(declare-fun list!9229 (BalanceConc!14872) List!22661)

(assert (=> b!2050046 (= res!897096 (= (list!9229 (_2!12231 lt!768512)) (list!9229 (_2!12231 lt!768523))))))

(declare-fun b!2050047 () Bool)

(assert (=> b!2050047 (= e!1296481 e!1296514)))

(declare-fun res!897092 () Bool)

(assert (=> b!2050047 (=> (not res!897092) (not e!1296514))))

(declare-fun ++!6122 (BalanceConc!14874 BalanceConc!14874) BalanceConc!14874)

(assert (=> b!2050047 (= res!897092 (= (list!9228 (_1!12231 lt!768512)) (list!9228 (++!6122 acc!382 (_1!12231 lt!768523)))))))

(assert (=> b!2050047 (= lt!768523 (lexRec!454 thiss!12889 rules!1563 input!986))))

(assert (=> b!2050047 (= lt!768512 (lexRec!454 thiss!12889 rules!1563 totalInput!418))))

(declare-fun e!1296518 () Bool)

(assert (=> b!2050048 (= e!1296518 (and tp!611582 tp!611584))))

(declare-fun b!2050049 () Bool)

(declare-fun e!1296507 () Bool)

(assert (=> b!2050049 (= e!1296458 e!1296507)))

(declare-fun tp!611583 () Bool)

(declare-fun tp!611568 () Bool)

(declare-fun e!1296503 () Bool)

(declare-fun array_inv!2251 (array!7071) Bool)

(declare-fun array_inv!2252 (array!7073) Bool)

(assert (=> b!2050050 (= e!1296507 (and tp!611606 tp!611583 tp!611568 (array_inv!2251 (_keys!2350 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 (_3!1547 err!3304)))))))) (array_inv!2252 (_values!2333 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 (_3!1547 err!3304)))))))) e!1296503))))

(declare-fun e!1296460 () Bool)

(declare-fun e!1296454 () Bool)

(declare-fun b!2050051 () Bool)

(declare-fun inv!29945 (Token!7630) Bool)

(declare-fun inv!29946 (BalanceConc!14872) Bool)

(assert (=> b!2050051 (= e!1296454 (and (inv!29945 (_1!12225 (v!27228 (_1!12230 err!3304)))) e!1296460 (inv!29946 (_2!12225 (v!27228 (_1!12230 err!3304)))) e!1296468))))

(declare-fun b!2050052 () Bool)

(declare-fun e!1296495 () Bool)

(declare-fun tp!611570 () Bool)

(assert (=> b!2050052 (= e!1296495 (and tp!611570 (inv!29941 (tag!4531 (rule!6282 (_1!12225 (v!27228 (_1!12230 err!3304)))))) (inv!29943 (transformation!4041 (rule!6282 (_1!12225 (v!27228 (_1!12230 err!3304)))))) e!1296518))))

(declare-fun b!2050053 () Bool)

(declare-fun lt!768516 () MutLongMap!2052)

(assert (=> b!2050053 (= e!1296470 (and e!1296485 ((_ is LongMap!2052) lt!768516)))))

(assert (=> b!2050053 (= lt!768516 (v!27230 (underlying!4300 (cache!2347 (_2!12230 err!3304)))))))

(declare-fun res!897101 () Bool)

(assert (=> start!201716 (=> (not res!897101) (not e!1296527))))

(assert (=> start!201716 (= res!897101 ((_ is Lexer!3649) thiss!12889))))

(assert (=> start!201716 e!1296527))

(declare-fun e!1296498 () Bool)

(declare-fun inv!29947 (CacheDown!1264) Bool)

(assert (=> start!201716 (and (inv!29947 cacheDown!575) e!1296498)))

(assert (=> start!201716 true))

(declare-fun e!1296471 () Bool)

(declare-fun inv!29948 (CacheUp!1262) Bool)

(assert (=> start!201716 (and (inv!29948 cacheUp!562) e!1296471)))

(declare-fun e!1296506 () Bool)

(assert (=> start!201716 e!1296506))

(declare-fun e!1296511 () Bool)

(assert (=> start!201716 (and (inv!29946 totalInput!418) e!1296511)))

(assert (=> start!201716 (and (inv!29946 treated!60) e!1296487)))

(declare-fun e!1296461 () Bool)

(assert (=> start!201716 (and (inv!29946 input!986) e!1296461)))

(declare-fun e!1296517 () Bool)

(declare-fun inv!29949 (BalanceConc!14874) Bool)

(assert (=> start!201716 (and (inv!29949 acc!382) e!1296517)))

(declare-fun call!125450 () Option!4723)

(declare-fun bm!125446 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!387 (LexerInterface!3651 Rule!7882 BalanceConc!14872) Option!4723)

(assert (=> bm!125446 (= call!125450 (maxPrefixOneRuleZipperSequence!387 thiss!12889 (h!27979 rules!1563) input!986))))

(declare-fun b!2050054 () Bool)

(declare-fun e!1296456 () Bool)

(declare-fun lt!768515 () MutLongMap!2053)

(assert (=> b!2050054 (= e!1296476 (and e!1296456 ((_ is LongMap!2053) lt!768515)))))

(assert (=> b!2050054 (= lt!768515 (v!27232 (underlying!4302 (cache!2348 cacheDown!575))))))

(declare-fun e!1296459 () Bool)

(assert (=> b!2050055 (= e!1296519 (and e!1296459 tp!611567))))

(declare-fun lt!768511 () Option!4723)

(declare-fun b!2050056 () Bool)

(declare-fun maxPrefixZipperSequence!797 (LexerInterface!3651 List!22662 BalanceConc!14872) Option!4723)

(assert (=> b!2050056 (= lt!768511 (maxPrefixZipperSequence!797 thiss!12889 (t!191828 rules!1563) input!986))))

(declare-fun lt!768503 () Option!4723)

(assert (=> b!2050056 (= lt!768503 call!125450)))

(declare-fun e!1296463 () Option!4723)

(assert (=> b!2050056 (= e!1296463 (ite (and ((_ is None!4722) lt!768503) ((_ is None!4722) lt!768511)) None!4722 (ite ((_ is None!4722) lt!768511) lt!768503 (ite ((_ is None!4722) lt!768503) lt!768511 (ite (>= (size!17632 (_1!12225 (v!27228 lt!768503))) (size!17632 (_1!12225 (v!27228 lt!768511)))) (Some!4722 (v!27228 lt!768503)) lt!768511)))))))

(declare-fun e!1296504 () Bool)

(declare-fun err!3305 () Option!4723)

(declare-fun tp!611595 () Bool)

(declare-fun b!2050057 () Bool)

(assert (=> b!2050057 (= e!1296504 (and tp!611595 (inv!29941 (tag!4531 (rule!6282 (_1!12225 (v!27228 err!3305))))) (inv!29943 (transformation!4041 (rule!6282 (_1!12225 (v!27228 err!3305))))) e!1296524))))

(declare-fun b!2050058 () Bool)

(declare-fun e!1296479 () Bool)

(declare-fun lt!768524 () Option!4723)

(assert (=> b!2050058 (= e!1296479 (= lt!768524 call!125452))))

(declare-fun b!2050059 () Bool)

(declare-fun tp!611608 () Bool)

(assert (=> b!2050059 (= e!1296461 (and (inv!29944 (c!331495 input!986)) tp!611608))))

(declare-fun b!2050060 () Bool)

(declare-fun tp!611587 () Bool)

(declare-fun inv!29950 (Conc!7556) Bool)

(assert (=> b!2050060 (= e!1296517 (and (inv!29950 (c!331497 acc!382)) tp!611587))))

(declare-fun b!2050061 () Bool)

(declare-fun e!1296469 () Bool)

(declare-fun tp!611569 () Bool)

(assert (=> b!2050061 (= e!1296469 (and (inv!29944 (c!331495 (_2!12225 (v!27228 err!3305)))) tp!611569))))

(declare-fun b!2050062 () Bool)

(declare-fun e!1296467 () Bool)

(declare-fun tp!611564 () Bool)

(assert (=> b!2050062 (= e!1296467 (and tp!611564 mapRes!9553))))

(declare-fun condMapEmpty!9551 () Bool)

(declare-fun mapDefault!9552 () List!22664)

(assert (=> b!2050062 (= condMapEmpty!9551 (= (arr!3142 (_values!2332 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 (_2!12230 err!3304)))))))) ((as const (Array (_ BitVec 32) List!22664)) mapDefault!9552)))))

(declare-fun tp!611571 () Bool)

(declare-fun tp!611559 () Bool)

(declare-fun e!1296483 () Bool)

(declare-fun array_inv!2253 (array!7069) Bool)

(assert (=> b!2050063 (= e!1296483 (and tp!611560 tp!611559 tp!611571 (array_inv!2251 (_keys!2349 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 (_2!12230 err!3304)))))))) (array_inv!2253 (_values!2332 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 (_2!12230 err!3304)))))))) e!1296467))))

(declare-fun b!2050064 () Bool)

(declare-fun res!897093 () Bool)

(assert (=> b!2050064 (=> (not res!897093) (not e!1296527))))

(declare-fun isEmpty!14005 (List!22662) Bool)

(assert (=> b!2050064 (= res!897093 (not (isEmpty!14005 rules!1563)))))

(declare-fun mapNonEmpty!9551 () Bool)

(declare-fun tp!611586 () Bool)

(declare-fun tp!611597 () Bool)

(assert (=> mapNonEmpty!9551 (= mapRes!9553 (and tp!611586 tp!611597))))

(declare-fun mapValue!9553 () List!22664)

(declare-fun mapKey!9550 () (_ BitVec 32))

(declare-fun mapRest!9552 () (Array (_ BitVec 32) List!22664))

(assert (=> mapNonEmpty!9551 (= (arr!3142 (_values!2332 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 (_2!12230 err!3304)))))))) (store mapRest!9552 mapKey!9550 mapValue!9553))))

(declare-fun b!2050065 () Bool)

(assert (=> b!2050065 true))

(declare-fun e!1296466 () Bool)

(assert (=> b!2050065 e!1296466))

(assert (=> b!2050065 (= e!1296463 err!3305)))

(declare-fun bm!125447 () Bool)

(declare-fun lt!768508 () tuple3!2166)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!16 (LexerInterface!3651 Rule!7882 BalanceConc!14872 BalanceConc!14872 CacheUp!1262 CacheDown!1264) tuple3!2166)

(assert (=> bm!125447 (= call!125451 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!16 thiss!12889 (h!27979 rules!1563) input!986 totalInput!418 (_2!12230 lt!768508) (_3!1547 lt!768508)))))

(declare-fun b!2050066 () Bool)

(declare-fun e!1296515 () Bool)

(declare-fun e!1296526 () Bool)

(assert (=> b!2050066 (= e!1296515 e!1296526)))

(declare-fun b!2050067 () Bool)

(declare-fun res!897090 () Bool)

(assert (=> b!2050067 (=> (not res!897090) (not e!1296481))))

(declare-fun isEmpty!14006 (List!22661) Bool)

(assert (=> b!2050067 (= res!897090 (isEmpty!14006 (list!9229 (_2!12231 lt!768520))))))

(assert (=> b!2050068 (= e!1296509 (and tp!611593 tp!611566))))

(declare-fun b!2050069 () Bool)

(declare-fun e!1296491 () Bool)

(assert (=> b!2050069 (= e!1296471 e!1296491)))

(declare-fun b!2050070 () Bool)

(declare-fun e!1296502 () Bool)

(declare-fun e!1296494 () Bool)

(assert (=> b!2050070 (= e!1296502 e!1296494)))

(declare-fun lt!768519 () Option!4723)

(declare-fun b!2050071 () Bool)

(declare-fun maxPrefixZipperSequenceV2!328 (LexerInterface!3651 List!22662 BalanceConc!14872 BalanceConc!14872) Option!4723)

(assert (=> b!2050071 (= lt!768519 (maxPrefixZipperSequenceV2!328 thiss!12889 (t!191828 rules!1563) input!986 totalInput!418))))

(declare-fun lt!768517 () Option!4723)

(assert (=> b!2050071 (= lt!768517 call!125452)))

(declare-fun e!1296464 () Option!4723)

(assert (=> b!2050071 (= e!1296464 (ite (and ((_ is None!4722) lt!768517) ((_ is None!4722) lt!768519)) None!4722 (ite ((_ is None!4722) lt!768519) lt!768517 (ite ((_ is None!4722) lt!768517) lt!768519 (ite (>= (size!17632 (_1!12225 (v!27228 lt!768517))) (size!17632 (_1!12225 (v!27228 lt!768519)))) (Some!4722 (v!27228 lt!768517)) lt!768519)))))))

(declare-fun b!2050072 () Bool)

(declare-fun lt!768514 () MutLongMap!2053)

(assert (=> b!2050072 (= e!1296459 (and e!1296497 ((_ is LongMap!2053) lt!768514)))))

(assert (=> b!2050072 (= lt!768514 (v!27232 (underlying!4302 (cache!2348 (_3!1547 err!3304)))))))

(declare-fun lt!768513 () tuple3!2166)

(declare-fun lt!768522 () tuple3!2166)

(declare-fun b!2050073 () Bool)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!28 (LexerInterface!3651 List!22662 BalanceConc!14872 BalanceConc!14872 CacheUp!1262 CacheDown!1264) tuple3!2166)

(assert (=> b!2050073 (= lt!768513 (maxPrefixZipperSequenceV2MemOnlyDeriv!28 thiss!12889 (t!191828 rules!1563) input!986 totalInput!418 (_2!12230 lt!768522) (_3!1547 lt!768522)))))

(assert (=> b!2050073 (= lt!768522 call!125451)))

(assert (=> b!2050073 (= e!1296472 (tuple3!2167 (ite (and ((_ is None!4722) (_1!12230 lt!768522)) ((_ is None!4722) (_1!12230 lt!768513))) None!4722 (ite ((_ is None!4722) (_1!12230 lt!768513)) (_1!12230 lt!768522) (ite ((_ is None!4722) (_1!12230 lt!768522)) (_1!12230 lt!768513) (ite (>= (size!17632 (_1!12225 (v!27228 (_1!12230 lt!768522)))) (size!17632 (_1!12225 (v!27228 (_1!12230 lt!768513))))) (Some!4722 (v!27228 (_1!12230 lt!768522))) (Some!4722 (v!27228 (_1!12230 lt!768513))))))) (_2!12230 lt!768513) (_3!1547 lt!768513)))))

(declare-fun b!2050074 () Bool)

(declare-fun e!1296478 () Bool)

(assert (=> b!2050074 (= e!1296466 (and (inv!29945 (_1!12225 (v!27228 err!3305))) e!1296478 (inv!29946 (_2!12225 (v!27228 err!3305))) e!1296469))))

(declare-fun b!2050075 () Bool)

(assert (=> b!2050075 true))

(assert (=> b!2050075 (and e!1296454 (inv!29948 (_2!12230 err!3304)) e!1296493 (inv!29947 (_3!1547 err!3304)) e!1296490)))

(assert (=> b!2050075 (= e!1296472 err!3304)))

(declare-fun b!2050076 () Bool)

(declare-fun tp!611594 () Bool)

(declare-fun e!1296482 () Bool)

(assert (=> b!2050076 (= e!1296482 (and tp!611594 (inv!29941 (tag!4531 (h!27979 rules!1563))) (inv!29943 (transformation!4041 (h!27979 rules!1563))) e!1296510))))

(declare-fun tp!611603 () Bool)

(declare-fun b!2050077 () Bool)

(declare-fun inv!21 (TokenValue!4177) Bool)

(assert (=> b!2050077 (= e!1296460 (and (inv!21 (value!126821 (_1!12225 (v!27228 (_1!12230 err!3304))))) e!1296495 tp!611603))))

(declare-fun b!2050078 () Bool)

(assert (=> b!2050078 (= e!1296498 e!1296500)))

(declare-fun b!2050079 () Bool)

(assert (=> b!2050079 (= e!1296486 e!1296483)))

(declare-fun e!1296525 () Bool)

(declare-fun e!1296505 () Bool)

(declare-fun e!1296475 () Bool)

(declare-fun b!2050080 () Bool)

(assert (=> b!2050080 (= e!1296505 (and (inv!29945 (_1!12225 (v!27228 err!3303))) e!1296525 (inv!29946 (_2!12225 (v!27228 err!3303))) e!1296475))))

(declare-fun mapIsEmpty!9552 () Bool)

(assert (=> mapIsEmpty!9552 mapRes!9552))

(declare-fun b!2050081 () Bool)

(declare-fun e!1296473 () Bool)

(declare-fun tp!611585 () Bool)

(assert (=> b!2050081 (= e!1296473 (and tp!611585 mapRes!9550))))

(declare-fun condMapEmpty!9552 () Bool)

(declare-fun mapDefault!9553 () List!22664)

(assert (=> b!2050081 (= condMapEmpty!9552 (= (arr!3142 (_values!2332 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22664)) mapDefault!9553)))))

(declare-fun b!2050082 () Bool)

(declare-fun tp!611572 () Bool)

(assert (=> b!2050082 (= e!1296506 (and e!1296482 tp!611572))))

(declare-fun b!2050083 () Bool)

(declare-fun res!897095 () Bool)

(assert (=> b!2050083 (=> (not res!897095) (not e!1296514))))

(declare-fun valid!1628 (CacheDown!1264) Bool)

(assert (=> b!2050083 (= res!897095 (valid!1628 cacheDown!575))))

(declare-fun b!2050084 () Bool)

(declare-fun e!1296474 () Bool)

(assert (=> b!2050084 (= e!1296474 true)))

(declare-datatypes ((tuple2!21368 0))(
  ( (tuple2!21369 (_1!12232 Token!7630) (_2!12232 List!22661)) )
))
(declare-datatypes ((Option!4724 0))(
  ( (None!4723) (Some!4723 (v!27233 tuple2!21368)) )
))
(declare-fun lt!768525 () Option!4724)

(declare-fun lt!768502 () List!22661)

(declare-fun maxPrefix!2053 (LexerInterface!3651 List!22662 List!22661) Option!4724)

(assert (=> b!2050084 (= lt!768525 (maxPrefix!2053 thiss!12889 rules!1563 lt!768502))))

(declare-fun e!1296516 () Bool)

(assert (=> b!2050084 e!1296516))

(declare-fun c!331493 () Bool)

(declare-fun lt!768527 () Bool)

(assert (=> b!2050084 (= c!331493 lt!768527)))

(declare-fun lt!768510 () Option!4723)

(assert (=> b!2050084 (= lt!768510 (maxPrefixZipperSequence!797 thiss!12889 rules!1563 input!986))))

(assert (=> b!2050084 e!1296479))

(declare-fun c!331494 () Bool)

(assert (=> b!2050084 (= c!331494 lt!768527)))

(assert (=> b!2050084 (= lt!768524 (maxPrefixZipperSequenceV2!328 thiss!12889 rules!1563 input!986 totalInput!418))))

(assert (=> b!2050084 (= lt!768527 (and ((_ is Cons!22578) rules!1563) ((_ is Nil!22578) (t!191828 rules!1563))))))

(declare-fun e!1296523 () Bool)

(assert (=> b!2050084 e!1296523))

(declare-fun res!897099 () Bool)

(assert (=> b!2050084 (=> (not res!897099) (not e!1296523))))

(declare-fun isPrefix!2007 (List!22661 List!22661) Bool)

(assert (=> b!2050084 (= res!897099 (isPrefix!2007 lt!768502 lt!768502))))

(declare-datatypes ((Unit!37083 0))(
  ( (Unit!37084) )
))
(declare-fun lt!768507 () Unit!37083)

(declare-fun lemmaIsPrefixRefl!1325 (List!22661 List!22661) Unit!37083)

(assert (=> b!2050084 (= lt!768507 (lemmaIsPrefixRefl!1325 lt!768502 lt!768502))))

(declare-fun lt!768526 () tuple3!2166)

(assert (=> b!2050084 (= lt!768526 (maxPrefixZipperSequenceV2MemOnlyDeriv!28 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12230 lt!768508) (_3!1547 lt!768508)))))

(declare-fun lt!768509 () tuple2!21366)

(assert (=> b!2050084 (= lt!768509 (lexRec!454 thiss!12889 rules!1563 (_2!12225 (v!27228 (_1!12230 lt!768508)))))))

(declare-fun b!2050085 () Bool)

(assert (=> b!2050085 (= e!1296516 (= lt!768510 call!125450))))

(declare-fun b!2050086 () Bool)

(declare-fun e!1296457 () Bool)

(assert (=> b!2050086 (= e!1296526 e!1296457)))

(declare-fun e!1296465 () Bool)

(assert (=> b!2050087 (= e!1296491 (and e!1296465 tp!611578))))

(declare-fun b!2050088 () Bool)

(assert (=> b!2050088 (= e!1296479 (= lt!768524 e!1296464))))

(declare-fun c!331491 () Bool)

(assert (=> b!2050088 (= c!331491 ((_ is Cons!22578) rules!1563))))

(declare-fun b!2050089 () Bool)

(assert (=> b!2050089 (= e!1296523 (= lt!768526 e!1296520))))

(declare-fun c!331489 () Bool)

(assert (=> b!2050089 (= c!331489 (and ((_ is Cons!22578) rules!1563) ((_ is Nil!22578) (t!191828 rules!1563))))))

(declare-fun mapIsEmpty!9553 () Bool)

(declare-fun mapRes!9551 () Bool)

(assert (=> mapIsEmpty!9553 mapRes!9551))

(declare-fun b!2050090 () Bool)

(declare-fun tp!611596 () Bool)

(assert (=> b!2050090 (= e!1296475 (and (inv!29944 (c!331495 (_2!12225 (v!27228 err!3303)))) tp!611596))))

(declare-fun tp!611607 () Bool)

(declare-fun b!2050091 () Bool)

(assert (=> b!2050091 (= e!1296525 (and (inv!21 (value!126821 (_1!12225 (v!27228 err!3303)))) e!1296499 tp!611607))))

(declare-fun b!2050092 () Bool)

(assert (=> b!2050092 (= e!1296456 e!1296502)))

(declare-fun b!2050093 () Bool)

(assert (=> b!2050093 (= e!1296516 (= lt!768510 e!1296463))))

(declare-fun c!331492 () Bool)

(assert (=> b!2050093 (= c!331492 ((_ is Cons!22578) rules!1563))))

(declare-fun mapNonEmpty!9552 () Bool)

(declare-fun tp!611604 () Bool)

(declare-fun tp!611600 () Bool)

(assert (=> mapNonEmpty!9552 (= mapRes!9550 (and tp!611604 tp!611600))))

(declare-fun mapRest!9553 () (Array (_ BitVec 32) List!22664))

(declare-fun mapValue!9551 () List!22664)

(declare-fun mapKey!9552 () (_ BitVec 32))

(assert (=> mapNonEmpty!9552 (= (arr!3142 (_values!2332 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 cacheUp!562))))))) (store mapRest!9553 mapKey!9552 mapValue!9551))))

(declare-fun b!2050094 () Bool)

(assert (=> b!2050094 true))

(assert (=> b!2050094 e!1296505))

(assert (=> b!2050094 (= e!1296464 err!3303)))

(declare-fun b!2050095 () Bool)

(declare-fun tp!611574 () Bool)

(assert (=> b!2050095 (= e!1296511 (and (inv!29944 (c!331495 totalInput!418)) tp!611574))))

(declare-fun b!2050096 () Bool)

(declare-fun tp!611602 () Bool)

(assert (=> b!2050096 (= e!1296503 (and tp!611602 mapRes!9551))))

(declare-fun condMapEmpty!9550 () Bool)

(declare-fun mapDefault!9551 () List!22665)

(assert (=> b!2050096 (= condMapEmpty!9550 (= (arr!3144 (_values!2333 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 (_3!1547 err!3304)))))))) ((as const (Array (_ BitVec 32) List!22665)) mapDefault!9551)))))

(declare-fun b!2050097 () Bool)

(declare-fun lt!768504 () MutLongMap!2052)

(assert (=> b!2050097 (= e!1296465 (and e!1296515 ((_ is LongMap!2052) lt!768504)))))

(assert (=> b!2050097 (= lt!768504 (v!27230 (underlying!4300 (cache!2347 cacheUp!562))))))

(declare-fun b!2050098 () Bool)

(declare-fun e!1296488 () Bool)

(assert (=> b!2050098 (= e!1296488 e!1296474)))

(declare-fun res!897091 () Bool)

(assert (=> b!2050098 (=> res!897091 e!1296474)))

(assert (=> b!2050098 (= res!897091 (not ((_ is Some!4722) (_1!12230 lt!768508))))))

(assert (=> b!2050098 (= lt!768508 (maxPrefixZipperSequenceV2MemOnlyDeriv!28 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun tp!611575 () Bool)

(declare-fun tp!611577 () Bool)

(assert (=> b!2050099 (= e!1296494 (and tp!611589 tp!611575 tp!611577 (array_inv!2251 (_keys!2350 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 cacheDown!575))))))) (array_inv!2252 (_values!2333 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 cacheDown!575))))))) e!1296513))))

(declare-fun b!2050100 () Bool)

(assert (=> b!2050100 (= e!1296527 e!1296455)))

(declare-fun res!897098 () Bool)

(assert (=> b!2050100 (=> (not res!897098) (not e!1296455))))

(declare-fun lt!768521 () List!22661)

(declare-fun lt!768505 () List!22661)

(assert (=> b!2050100 (= res!897098 (= lt!768521 lt!768505))))

(declare-fun lt!768518 () List!22661)

(declare-fun ++!6123 (List!22661 List!22661) List!22661)

(assert (=> b!2050100 (= lt!768505 (++!6123 lt!768518 lt!768502))))

(assert (=> b!2050100 (= lt!768521 (list!9229 totalInput!418))))

(assert (=> b!2050100 (= lt!768502 (list!9229 input!986))))

(assert (=> b!2050100 (= lt!768518 (list!9229 treated!60))))

(declare-fun b!2050101 () Bool)

(declare-fun tp!611576 () Bool)

(assert (=> b!2050101 (= e!1296478 (and (inv!21 (value!126821 (_1!12225 (v!27228 err!3305)))) e!1296504 tp!611576))))

(declare-fun tp!611605 () Bool)

(declare-fun tp!611592 () Bool)

(assert (=> b!2050102 (= e!1296457 (and tp!611562 tp!611605 tp!611592 (array_inv!2251 (_keys!2349 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 cacheUp!562))))))) (array_inv!2253 (_values!2332 (v!27229 (underlying!4299 (v!27230 (underlying!4300 (cache!2347 cacheUp!562))))))) e!1296473))))

(declare-fun b!2050103 () Bool)

(assert (=> b!2050103 (= e!1296514 (not e!1296488))))

(declare-fun res!897097 () Bool)

(assert (=> b!2050103 (=> res!897097 e!1296488)))

(declare-fun isSuffix!490 (List!22661 List!22661) Bool)

(assert (=> b!2050103 (= res!897097 (not (isSuffix!490 lt!768502 lt!768521)))))

(assert (=> b!2050103 (isSuffix!490 lt!768502 lt!768505)))

(declare-fun lt!768506 () Unit!37083)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!391 (List!22661 List!22661) Unit!37083)

(assert (=> b!2050103 (= lt!768506 (lemmaConcatTwoListThenFSndIsSuffix!391 lt!768518 lt!768502))))

(declare-fun mapNonEmpty!9553 () Bool)

(declare-fun tp!611591 () Bool)

(declare-fun tp!611590 () Bool)

(assert (=> mapNonEmpty!9553 (= mapRes!9551 (and tp!611591 tp!611590))))

(declare-fun mapValue!9550 () List!22665)

(declare-fun mapRest!9550 () (Array (_ BitVec 32) List!22665))

(declare-fun mapKey!9553 () (_ BitVec 32))

(assert (=> mapNonEmpty!9553 (= (arr!3144 (_values!2333 (v!27231 (underlying!4301 (v!27232 (underlying!4302 (cache!2348 (_3!1547 err!3304)))))))) (store mapRest!9550 mapKey!9553 mapValue!9550))))

(assert (= (and start!201716 res!897101) b!2050064))

(assert (= (and b!2050064 res!897093) b!2050044))

(assert (= (and b!2050044 res!897102) b!2050100))

(assert (= (and b!2050100 res!897098) b!2050042))

(assert (= (and b!2050042 res!897100) b!2050067))

(assert (= (and b!2050067 res!897090) b!2050047))

(assert (= (and b!2050047 res!897092) b!2050046))

(assert (= (and b!2050046 res!897096) b!2050041))

(assert (= (and b!2050041 res!897094) b!2050083))

(assert (= (and b!2050083 res!897095) b!2050103))

(assert (= (and b!2050103 (not res!897097)) b!2050098))

(assert (= (and b!2050098 (not res!897091)) b!2050084))

(assert (= (and b!2050084 res!897099) b!2050089))

(assert (= (and b!2050089 c!331489) b!2050033))

(assert (= (and b!2050089 (not c!331489)) b!2050043))

(assert (= (and b!2050043 c!331490) b!2050073))

(assert (= (and b!2050043 (not c!331490)) b!2050075))

(assert (= b!2050052 b!2050048))

(assert (= b!2050077 b!2050052))

(assert (= b!2050051 b!2050077))

(assert (= b!2050051 b!2050034))

(assert (= (and b!2050075 ((_ is Some!4722) (_1!12230 err!3304))) b!2050051))

(assert (= (and b!2050062 condMapEmpty!9551) mapIsEmpty!9550))

(assert (= (and b!2050062 (not condMapEmpty!9551)) mapNonEmpty!9551))

(assert (= b!2050063 b!2050062))

(assert (= b!2050079 b!2050063))

(assert (= b!2050038 b!2050079))

(assert (= (and b!2050053 ((_ is LongMap!2052) (v!27230 (underlying!4300 (cache!2347 (_2!12230 err!3304)))))) b!2050038))

(assert (= b!2050040 b!2050053))

(assert (= (and b!2050037 ((_ is HashMap!1966) (cache!2347 (_2!12230 err!3304)))) b!2050040))

(assert (= b!2050075 b!2050037))

(assert (= (and b!2050096 condMapEmpty!9550) mapIsEmpty!9553))

(assert (= (and b!2050096 (not condMapEmpty!9550)) mapNonEmpty!9553))

(assert (= b!2050050 b!2050096))

(assert (= b!2050049 b!2050050))

(assert (= b!2050029 b!2050049))

(assert (= (and b!2050072 ((_ is LongMap!2053) (v!27232 (underlying!4302 (cache!2348 (_3!1547 err!3304)))))) b!2050029))

(assert (= b!2050055 b!2050072))

(assert (= (and b!2050030 ((_ is HashMap!1967) (cache!2348 (_3!1547 err!3304)))) b!2050055))

(assert (= b!2050075 b!2050030))

(assert (= (or b!2050033 b!2050073) bm!125447))

(assert (= (and b!2050084 c!331494) b!2050058))

(assert (= (and b!2050084 (not c!331494)) b!2050088))

(assert (= (and b!2050088 c!331491) b!2050071))

(assert (= (and b!2050088 (not c!331491)) b!2050094))

(assert (= b!2050032 b!2050068))

(assert (= b!2050091 b!2050032))

(assert (= b!2050080 b!2050091))

(assert (= b!2050080 b!2050090))

(assert (= (and b!2050094 ((_ is Some!4722) err!3303)) b!2050080))

(assert (= (or b!2050058 b!2050071) bm!125445))

(assert (= (and b!2050084 c!331493) b!2050085))

(assert (= (and b!2050084 (not c!331493)) b!2050093))

(assert (= (and b!2050093 c!331492) b!2050056))

(assert (= (and b!2050093 (not c!331492)) b!2050065))

(assert (= b!2050057 b!2050039))

(assert (= b!2050101 b!2050057))

(assert (= b!2050074 b!2050101))

(assert (= b!2050074 b!2050061))

(assert (= (and b!2050065 ((_ is Some!4722) err!3305)) b!2050074))

(assert (= (or b!2050085 b!2050056) bm!125446))

(assert (= (and b!2050036 condMapEmpty!9553) mapIsEmpty!9552))

(assert (= (and b!2050036 (not condMapEmpty!9553)) mapNonEmpty!9550))

(assert (= b!2050099 b!2050036))

(assert (= b!2050070 b!2050099))

(assert (= b!2050092 b!2050070))

(assert (= (and b!2050054 ((_ is LongMap!2053) (v!27232 (underlying!4302 (cache!2348 cacheDown!575))))) b!2050092))

(assert (= b!2050031 b!2050054))

(assert (= (and b!2050078 ((_ is HashMap!1967) (cache!2348 cacheDown!575))) b!2050031))

(assert (= start!201716 b!2050078))

(assert (= (and b!2050081 condMapEmpty!9552) mapIsEmpty!9551))

(assert (= (and b!2050081 (not condMapEmpty!9552)) mapNonEmpty!9552))

(assert (= b!2050102 b!2050081))

(assert (= b!2050086 b!2050102))

(assert (= b!2050066 b!2050086))

(assert (= (and b!2050097 ((_ is LongMap!2052) (v!27230 (underlying!4300 (cache!2347 cacheUp!562))))) b!2050066))

(assert (= b!2050087 b!2050097))

(assert (= (and b!2050069 ((_ is HashMap!1966) (cache!2347 cacheUp!562))) b!2050087))

(assert (= start!201716 b!2050069))

(assert (= b!2050076 b!2050035))

(assert (= b!2050082 b!2050076))

(assert (= (and start!201716 ((_ is Cons!22578) rules!1563)) b!2050082))

(assert (= start!201716 b!2050095))

(assert (= start!201716 b!2050045))

(assert (= start!201716 b!2050059))

(assert (= start!201716 b!2050060))

(declare-fun m!2493151 () Bool)

(assert (=> mapNonEmpty!9550 m!2493151))

(declare-fun m!2493153 () Bool)

(assert (=> b!2050041 m!2493153))

(declare-fun m!2493155 () Bool)

(assert (=> mapNonEmpty!9553 m!2493155))

(declare-fun m!2493157 () Bool)

(assert (=> b!2050083 m!2493157))

(declare-fun m!2493159 () Bool)

(assert (=> b!2050100 m!2493159))

(declare-fun m!2493161 () Bool)

(assert (=> b!2050100 m!2493161))

(declare-fun m!2493163 () Bool)

(assert (=> b!2050100 m!2493163))

(declare-fun m!2493165 () Bool)

(assert (=> b!2050100 m!2493165))

(declare-fun m!2493167 () Bool)

(assert (=> bm!125446 m!2493167))

(declare-fun m!2493169 () Bool)

(assert (=> b!2050042 m!2493169))

(declare-fun m!2493171 () Bool)

(assert (=> b!2050042 m!2493171))

(declare-fun m!2493173 () Bool)

(assert (=> b!2050042 m!2493173))

(declare-fun m!2493175 () Bool)

(assert (=> b!2050044 m!2493175))

(declare-fun m!2493177 () Bool)

(assert (=> b!2050046 m!2493177))

(declare-fun m!2493179 () Bool)

(assert (=> b!2050046 m!2493179))

(declare-fun m!2493181 () Bool)

(assert (=> b!2050059 m!2493181))

(declare-fun m!2493183 () Bool)

(assert (=> b!2050045 m!2493183))

(declare-fun m!2493185 () Bool)

(assert (=> b!2050074 m!2493185))

(declare-fun m!2493187 () Bool)

(assert (=> b!2050074 m!2493187))

(declare-fun m!2493189 () Bool)

(assert (=> b!2050061 m!2493189))

(declare-fun m!2493191 () Bool)

(assert (=> b!2050076 m!2493191))

(declare-fun m!2493193 () Bool)

(assert (=> b!2050076 m!2493193))

(declare-fun m!2493195 () Bool)

(assert (=> b!2050063 m!2493195))

(declare-fun m!2493197 () Bool)

(assert (=> b!2050063 m!2493197))

(declare-fun m!2493199 () Bool)

(assert (=> b!2050099 m!2493199))

(declare-fun m!2493201 () Bool)

(assert (=> b!2050099 m!2493201))

(declare-fun m!2493203 () Bool)

(assert (=> b!2050103 m!2493203))

(declare-fun m!2493205 () Bool)

(assert (=> b!2050103 m!2493205))

(declare-fun m!2493207 () Bool)

(assert (=> b!2050103 m!2493207))

(declare-fun m!2493209 () Bool)

(assert (=> b!2050064 m!2493209))

(declare-fun m!2493211 () Bool)

(assert (=> b!2050101 m!2493211))

(declare-fun m!2493213 () Bool)

(assert (=> b!2050051 m!2493213))

(declare-fun m!2493215 () Bool)

(assert (=> b!2050051 m!2493215))

(declare-fun m!2493217 () Bool)

(assert (=> b!2050047 m!2493217))

(declare-fun m!2493219 () Bool)

(assert (=> b!2050047 m!2493219))

(assert (=> b!2050047 m!2493217))

(declare-fun m!2493221 () Bool)

(assert (=> b!2050047 m!2493221))

(declare-fun m!2493223 () Bool)

(assert (=> b!2050047 m!2493223))

(declare-fun m!2493225 () Bool)

(assert (=> b!2050047 m!2493225))

(declare-fun m!2493227 () Bool)

(assert (=> b!2050075 m!2493227))

(declare-fun m!2493229 () Bool)

(assert (=> b!2050075 m!2493229))

(declare-fun m!2493231 () Bool)

(assert (=> b!2050077 m!2493231))

(declare-fun m!2493233 () Bool)

(assert (=> b!2050073 m!2493233))

(declare-fun m!2493235 () Bool)

(assert (=> mapNonEmpty!9551 m!2493235))

(declare-fun m!2493237 () Bool)

(assert (=> b!2050050 m!2493237))

(declare-fun m!2493239 () Bool)

(assert (=> b!2050050 m!2493239))

(declare-fun m!2493241 () Bool)

(assert (=> b!2050056 m!2493241))

(declare-fun m!2493243 () Bool)

(assert (=> mapNonEmpty!9552 m!2493243))

(declare-fun m!2493245 () Bool)

(assert (=> b!2050060 m!2493245))

(declare-fun m!2493247 () Bool)

(assert (=> b!2050067 m!2493247))

(assert (=> b!2050067 m!2493247))

(declare-fun m!2493249 () Bool)

(assert (=> b!2050067 m!2493249))

(declare-fun m!2493251 () Bool)

(assert (=> bm!125447 m!2493251))

(declare-fun m!2493253 () Bool)

(assert (=> b!2050084 m!2493253))

(declare-fun m!2493255 () Bool)

(assert (=> b!2050084 m!2493255))

(declare-fun m!2493257 () Bool)

(assert (=> b!2050084 m!2493257))

(declare-fun m!2493259 () Bool)

(assert (=> b!2050084 m!2493259))

(declare-fun m!2493261 () Bool)

(assert (=> b!2050084 m!2493261))

(declare-fun m!2493263 () Bool)

(assert (=> b!2050084 m!2493263))

(declare-fun m!2493265 () Bool)

(assert (=> b!2050084 m!2493265))

(declare-fun m!2493267 () Bool)

(assert (=> b!2050090 m!2493267))

(declare-fun m!2493269 () Bool)

(assert (=> b!2050057 m!2493269))

(declare-fun m!2493271 () Bool)

(assert (=> b!2050057 m!2493271))

(declare-fun m!2493273 () Bool)

(assert (=> b!2050098 m!2493273))

(declare-fun m!2493275 () Bool)

(assert (=> b!2050071 m!2493275))

(declare-fun m!2493277 () Bool)

(assert (=> b!2050102 m!2493277))

(declare-fun m!2493279 () Bool)

(assert (=> b!2050102 m!2493279))

(declare-fun m!2493281 () Bool)

(assert (=> b!2050034 m!2493281))

(declare-fun m!2493283 () Bool)

(assert (=> b!2050080 m!2493283))

(declare-fun m!2493285 () Bool)

(assert (=> b!2050080 m!2493285))

(declare-fun m!2493287 () Bool)

(assert (=> b!2050052 m!2493287))

(declare-fun m!2493289 () Bool)

(assert (=> b!2050052 m!2493289))

(declare-fun m!2493291 () Bool)

(assert (=> b!2050091 m!2493291))

(declare-fun m!2493293 () Bool)

(assert (=> b!2050032 m!2493293))

(declare-fun m!2493295 () Bool)

(assert (=> b!2050032 m!2493295))

(declare-fun m!2493297 () Bool)

(assert (=> start!201716 m!2493297))

(declare-fun m!2493299 () Bool)

(assert (=> start!201716 m!2493299))

(declare-fun m!2493301 () Bool)

(assert (=> start!201716 m!2493301))

(declare-fun m!2493303 () Bool)

(assert (=> start!201716 m!2493303))

(declare-fun m!2493305 () Bool)

(assert (=> start!201716 m!2493305))

(declare-fun m!2493307 () Bool)

(assert (=> start!201716 m!2493307))

(declare-fun m!2493309 () Bool)

(assert (=> b!2050095 m!2493309))

(declare-fun m!2493311 () Bool)

(assert (=> bm!125445 m!2493311))

(check-sat (not b!2050099) (not b!2050051) (not b_next!58429) (not bm!125445) (not b_next!58433) b_and!163695 (not b!2050083) (not b_next!58407) (not b!2050076) b_and!163689 (not b!2050050) (not b!2050056) (not b_next!58425) b_and!163701 (not mapNonEmpty!9551) (not b_next!58409) (not b_next!58423) (not bm!125446) b_and!163693 b_and!163703 (not b!2050100) (not b!2050045) (not b!2050036) b_and!163705 (not b!2050095) (not b!2050057) b_and!163699 (not b_next!58421) b_and!163685 (not b_next!58411) (not b!2050034) (not b!2050042) (not mapNonEmpty!9552) b_and!163681 (not b_next!58417) (not b!2050084) (not b!2050091) (not b_next!58419) (not b_next!58427) (not b!2050077) (not b!2050090) b_and!163711 b_and!163691 (not b!2050071) (not b!2050103) (not b_next!58413) (not mapNonEmpty!9550) (not b!2050061) (not b!2050047) (not b!2050062) (not b!2050080) (not b!2050059) (not b!2050082) (not b!2050063) (not b_next!58415) (not b!2050101) (not b!2050046) (not b!2050032) (not b!2050041) (not b!2050102) (not b_next!58405) (not b!2050096) (not start!201716) b_and!163683 (not b!2050052) (not b!2050064) (not b!2050060) (not b!2050075) (not b!2050098) (not b_next!58435) (not b!2050081) (not b!2050067) (not bm!125447) b_and!163709 (not b_next!58431) (not b!2050073) (not b!2050074) (not b!2050044) b_and!163707 (not mapNonEmpty!9553) b_and!163687 b_and!163697)
(check-sat (not b_next!58407) (not b_next!58429) b_and!163705 b_and!163711 b_and!163691 (not b_next!58413) (not b_next!58415) (not b_next!58433) b_and!163695 (not b_next!58405) b_and!163683 (not b_next!58435) b_and!163707 b_and!163689 (not b_next!58425) b_and!163701 (not b_next!58409) (not b_next!58423) b_and!163693 b_and!163703 b_and!163699 (not b_next!58421) b_and!163685 (not b_next!58411) b_and!163681 (not b_next!58417) (not b_next!58419) (not b_next!58427) b_and!163709 (not b_next!58431) b_and!163687 b_and!163697)
