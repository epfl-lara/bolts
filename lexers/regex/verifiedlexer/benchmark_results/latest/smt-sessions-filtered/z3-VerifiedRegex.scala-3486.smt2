; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201314 () Bool)

(assert start!201314)

(declare-fun b!2042935 () Bool)

(declare-fun b_free!57009 () Bool)

(declare-fun b_next!57713 () Bool)

(assert (=> b!2042935 (= b_free!57009 (not b_next!57713))))

(declare-fun tp!606922 () Bool)

(declare-fun b_and!162949 () Bool)

(assert (=> b!2042935 (= tp!606922 b_and!162949)))

(declare-fun b_free!57011 () Bool)

(declare-fun b_next!57715 () Bool)

(assert (=> b!2042935 (= b_free!57011 (not b_next!57715))))

(declare-fun tp!606928 () Bool)

(declare-fun b_and!162951 () Bool)

(assert (=> b!2042935 (= tp!606928 b_and!162951)))

(declare-fun b!2042931 () Bool)

(declare-fun b_free!57013 () Bool)

(declare-fun b_next!57717 () Bool)

(assert (=> b!2042931 (= b_free!57013 (not b_next!57717))))

(declare-fun tp!606913 () Bool)

(declare-fun b_and!162953 () Bool)

(assert (=> b!2042931 (= tp!606913 b_and!162953)))

(declare-fun b!2042934 () Bool)

(declare-fun b_free!57015 () Bool)

(declare-fun b_next!57719 () Bool)

(assert (=> b!2042934 (= b_free!57015 (not b_next!57719))))

(declare-fun tp!606914 () Bool)

(declare-fun b_and!162955 () Bool)

(assert (=> b!2042934 (= tp!606914 b_and!162955)))

(declare-fun b!2042937 () Bool)

(declare-fun b_free!57017 () Bool)

(declare-fun b_next!57721 () Bool)

(assert (=> b!2042937 (= b_free!57017 (not b_next!57721))))

(declare-fun tp!606919 () Bool)

(declare-fun b_and!162957 () Bool)

(assert (=> b!2042937 (= tp!606919 b_and!162957)))

(declare-fun b!2042917 () Bool)

(declare-fun b_free!57019 () Bool)

(declare-fun b_next!57723 () Bool)

(assert (=> b!2042917 (= b_free!57019 (not b_next!57723))))

(declare-fun tp!606912 () Bool)

(declare-fun b_and!162959 () Bool)

(assert (=> b!2042917 (= tp!606912 b_and!162959)))

(declare-fun b!2042908 () Bool)

(declare-fun e!1290119 () Bool)

(declare-fun e!1290139 () Bool)

(assert (=> b!2042908 (= e!1290119 e!1290139)))

(declare-fun res!895228 () Bool)

(assert (=> b!2042908 (=> (not res!895228) (not e!1290139))))

(declare-datatypes ((C!11024 0))(
  ( (C!11025 (val!6498 Int)) )
))
(declare-datatypes ((List!22451 0))(
  ( (Nil!22367) (Cons!22367 (h!27768 C!11024) (t!191565 List!22451)) )
))
(declare-fun lt!766143 () List!22451)

(declare-fun lt!766150 () List!22451)

(assert (=> b!2042908 (= res!895228 (= lt!766143 lt!766150))))

(declare-fun lt!766141 () List!22451)

(declare-fun lt!766149 () List!22451)

(declare-fun ++!6076 (List!22451 List!22451) List!22451)

(assert (=> b!2042908 (= lt!766150 (++!6076 lt!766141 lt!766149))))

(declare-datatypes ((IArray!15001 0))(
  ( (IArray!15002 (innerList!7558 List!22451)) )
))
(declare-datatypes ((Conc!7498 0))(
  ( (Node!7498 (left!17784 Conc!7498) (right!18114 Conc!7498) (csize!15226 Int) (cheight!7709 Int)) (Leaf!10985 (xs!10406 IArray!15001) (csize!15227 Int)) (Empty!7498) )
))
(declare-datatypes ((BalanceConc!14758 0))(
  ( (BalanceConc!14759 (c!330906 Conc!7498)) )
))
(declare-fun totalInput!418 () BalanceConc!14758)

(declare-fun list!9171 (BalanceConc!14758) List!22451)

(assert (=> b!2042908 (= lt!766143 (list!9171 totalInput!418))))

(declare-fun input!986 () BalanceConc!14758)

(assert (=> b!2042908 (= lt!766149 (list!9171 input!986))))

(declare-fun treated!60 () BalanceConc!14758)

(assert (=> b!2042908 (= lt!766141 (list!9171 treated!60))))

(declare-fun mapNonEmpty!9210 () Bool)

(declare-fun mapRes!9210 () Bool)

(declare-fun tp!606916 () Bool)

(declare-fun tp!606907 () Bool)

(assert (=> mapNonEmpty!9210 (= mapRes!9210 (and tp!606916 tp!606907))))

(declare-datatypes ((Regex!5439 0))(
  ( (ElementMatch!5439 (c!330907 C!11024)) (Concat!9586 (regOne!11390 Regex!5439) (regTwo!11390 Regex!5439)) (EmptyExpr!5439) (Star!5439 (reg!5768 Regex!5439)) (EmptyLang!5439) (Union!5439 (regOne!11391 Regex!5439) (regTwo!11391 Regex!5439)) )
))
(declare-datatypes ((List!22452 0))(
  ( (Nil!22368) (Cons!22368 (h!27769 Regex!5439) (t!191566 List!22452)) )
))
(declare-datatypes ((Context!2018 0))(
  ( (Context!2019 (exprs!1509 List!22452)) )
))
(declare-datatypes ((tuple2!21048 0))(
  ( (tuple2!21049 (_1!12010 Context!2018) (_2!12010 C!11024)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21050 0))(
  ( (tuple2!21051 (_1!12011 tuple2!21048) (_2!12011 (InoxSet Context!2018))) )
))
(declare-datatypes ((List!22453 0))(
  ( (Nil!22369) (Cons!22369 (h!27770 tuple2!21050) (t!191567 List!22453)) )
))
(declare-fun mapValue!9210 () List!22453)

(declare-datatypes ((array!6875 0))(
  ( (array!6876 (arr!3054 (Array (_ BitVec 32) List!22453)) (size!17497 (_ BitVec 32))) )
))
(declare-datatypes ((array!6877 0))(
  ( (array!6878 (arr!3055 (Array (_ BitVec 32) (_ BitVec 64))) (size!17498 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3988 0))(
  ( (LongMapFixedSize!3989 (defaultEntry!2359 Int) (mask!6029 (_ BitVec 32)) (extraKeys!2242 (_ BitVec 32)) (zeroValue!2252 List!22453) (minValue!2252 List!22453) (_size!4039 (_ BitVec 32)) (_keys!2291 array!6877) (_values!2274 array!6875) (_vacant!2055 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7801 0))(
  ( (Cell!7802 (v!27082 LongMapFixedSize!3988)) )
))
(declare-datatypes ((MutLongMap!1994 0))(
  ( (LongMap!1994 (underlying!4183 Cell!7801)) (MutLongMapExt!1993 (__x!13864 Int)) )
))
(declare-datatypes ((Hashable!1908 0))(
  ( (HashableExt!1907 (__x!13865 Int)) )
))
(declare-datatypes ((Cell!7803 0))(
  ( (Cell!7804 (v!27083 MutLongMap!1994)) )
))
(declare-datatypes ((MutableMap!1908 0))(
  ( (MutableMapExt!1907 (__x!13866 Int)) (HashMap!1908 (underlying!4184 Cell!7803) (hashF!3831 Hashable!1908) (_size!4040 (_ BitVec 32)) (defaultValue!2070 Int)) )
))
(declare-datatypes ((CacheUp!1204 0))(
  ( (CacheUp!1205 (cache!2289 MutableMap!1908)) )
))
(declare-fun cacheUp!562 () CacheUp!1204)

(declare-fun mapKey!9210 () (_ BitVec 32))

(declare-fun mapRest!9211 () (Array (_ BitVec 32) List!22453))

(assert (=> mapNonEmpty!9210 (= (arr!3054 (_values!2274 (v!27082 (underlying!4183 (v!27083 (underlying!4184 (cache!2289 cacheUp!562))))))) (store mapRest!9211 mapKey!9210 mapValue!9210))))

(declare-fun b!2042909 () Bool)

(declare-fun e!1290120 () Bool)

(declare-fun e!1290144 () Bool)

(assert (=> b!2042909 (= e!1290120 e!1290144)))

(declare-fun b!2042910 () Bool)

(declare-fun e!1290125 () Bool)

(assert (=> b!2042910 (= e!1290125 true)))

(declare-fun lt!766151 () Bool)

(declare-datatypes ((LexerInterface!3624 0))(
  ( (LexerInterfaceExt!3621 (__x!13867 Int)) (Lexer!3622) )
))
(declare-fun thiss!12889 () LexerInterface!3624)

(declare-datatypes ((List!22454 0))(
  ( (Nil!22370) (Cons!22370 (h!27771 (_ BitVec 16)) (t!191568 List!22454)) )
))
(declare-datatypes ((TokenValue!4147 0))(
  ( (FloatLiteralValue!8294 (text!29474 List!22454)) (TokenValueExt!4146 (__x!13868 Int)) (Broken!20735 (value!125941 List!22454)) (Object!4230) (End!4147) (Def!4147) (Underscore!4147) (Match!4147) (Else!4147) (Error!4147) (Case!4147) (If!4147) (Extends!4147) (Abstract!4147) (Class!4147) (Val!4147) (DelimiterValue!8294 (del!4207 List!22454)) (KeywordValue!4153 (value!125942 List!22454)) (CommentValue!8294 (value!125943 List!22454)) (WhitespaceValue!8294 (value!125944 List!22454)) (IndentationValue!4147 (value!125945 List!22454)) (String!25926) (Int32!4147) (Broken!20736 (value!125946 List!22454)) (Boolean!4148) (Unit!37010) (OperatorValue!4150 (op!4207 List!22454)) (IdentifierValue!8294 (value!125947 List!22454)) (IdentifierValue!8295 (value!125948 List!22454)) (WhitespaceValue!8295 (value!125949 List!22454)) (True!8294) (False!8294) (Broken!20737 (value!125950 List!22454)) (Broken!20738 (value!125951 List!22454)) (True!8295) (RightBrace!4147) (RightBracket!4147) (Colon!4147) (Null!4147) (Comma!4147) (LeftBracket!4147) (False!8295) (LeftBrace!4147) (ImaginaryLiteralValue!4147 (text!29475 List!22454)) (StringLiteralValue!12441 (value!125952 List!22454)) (EOFValue!4147 (value!125953 List!22454)) (IdentValue!4147 (value!125954 List!22454)) (DelimiterValue!8295 (value!125955 List!22454)) (DedentValue!4147 (value!125956 List!22454)) (NewLineValue!4147 (value!125957 List!22454)) (IntegerValue!12441 (value!125958 (_ BitVec 32)) (text!29476 List!22454)) (IntegerValue!12442 (value!125959 Int) (text!29477 List!22454)) (Times!4147) (Or!4147) (Equal!4147) (Minus!4147) (Broken!20739 (value!125960 List!22454)) (And!4147) (Div!4147) (LessEqual!4147) (Mod!4147) (Concat!9587) (Not!4147) (Plus!4147) (SpaceValue!4147 (value!125961 List!22454)) (IntegerValue!12443 (value!125962 Int) (text!29478 List!22454)) (StringLiteralValue!12442 (text!29479 List!22454)) (FloatLiteralValue!8295 (text!29480 List!22454)) (BytesLiteralValue!4147 (value!125963 List!22454)) (CommentValue!8295 (value!125964 List!22454)) (StringLiteralValue!12443 (value!125965 List!22454)) (ErrorTokenValue!4147 (msg!4208 List!22454)) )
))
(declare-datatypes ((String!25927 0))(
  ( (String!25928 (value!125966 String)) )
))
(declare-datatypes ((TokenValueInjection!7878 0))(
  ( (TokenValueInjection!7879 (toValue!5694 Int) (toChars!5553 Int)) )
))
(declare-datatypes ((Rule!7822 0))(
  ( (Rule!7823 (regex!4011 Regex!5439) (tag!4501 String!25927) (isSeparator!4011 Bool) (transformation!4011 TokenValueInjection!7878)) )
))
(declare-datatypes ((List!22455 0))(
  ( (Nil!22371) (Cons!22371 (h!27772 Rule!7822) (t!191569 List!22455)) )
))
(declare-fun rules!1563 () List!22455)

(declare-fun rulesValidInductive!1393 (LexerInterface!3624 List!22455) Bool)

(assert (=> b!2042910 (= lt!766151 (rulesValidInductive!1393 thiss!12889 rules!1563))))

(declare-datatypes ((Hashable!1909 0))(
  ( (HashableExt!1908 (__x!13869 Int)) )
))
(declare-datatypes ((Token!7572 0))(
  ( (Token!7573 (value!125967 TokenValue!4147) (rule!6247 Rule!7822) (size!17499 Int) (originalCharacters!4817 List!22451)) )
))
(declare-datatypes ((tuple2!21052 0))(
  ( (tuple2!21053 (_1!12012 Token!7572) (_2!12012 BalanceConc!14758)) )
))
(declare-datatypes ((Option!4693 0))(
  ( (None!4692) (Some!4692 (v!27084 tuple2!21052)) )
))
(declare-datatypes ((tuple3!2044 0))(
  ( (tuple3!2045 (_1!12013 Regex!5439) (_2!12013 Context!2018) (_3!1486 C!11024)) )
))
(declare-datatypes ((tuple2!21054 0))(
  ( (tuple2!21055 (_1!12014 tuple3!2044) (_2!12014 (InoxSet Context!2018))) )
))
(declare-datatypes ((List!22456 0))(
  ( (Nil!22372) (Cons!22372 (h!27773 tuple2!21054) (t!191570 List!22456)) )
))
(declare-datatypes ((array!6879 0))(
  ( (array!6880 (arr!3056 (Array (_ BitVec 32) List!22456)) (size!17500 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3990 0))(
  ( (LongMapFixedSize!3991 (defaultEntry!2360 Int) (mask!6030 (_ BitVec 32)) (extraKeys!2243 (_ BitVec 32)) (zeroValue!2253 List!22456) (minValue!2253 List!22456) (_size!4041 (_ BitVec 32)) (_keys!2292 array!6877) (_values!2275 array!6879) (_vacant!2056 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7805 0))(
  ( (Cell!7806 (v!27085 LongMapFixedSize!3990)) )
))
(declare-datatypes ((MutLongMap!1995 0))(
  ( (LongMap!1995 (underlying!4185 Cell!7805)) (MutLongMapExt!1994 (__x!13870 Int)) )
))
(declare-datatypes ((Cell!7807 0))(
  ( (Cell!7808 (v!27086 MutLongMap!1995)) )
))
(declare-datatypes ((MutableMap!1909 0))(
  ( (MutableMapExt!1908 (__x!13871 Int)) (HashMap!1909 (underlying!4186 Cell!7807) (hashF!3832 Hashable!1909) (_size!4042 (_ BitVec 32)) (defaultValue!2071 Int)) )
))
(declare-datatypes ((CacheDown!1206 0))(
  ( (CacheDown!1207 (cache!2290 MutableMap!1909)) )
))
(declare-datatypes ((tuple3!2046 0))(
  ( (tuple3!2047 (_1!12015 Option!4693) (_2!12015 CacheUp!1204) (_3!1487 CacheDown!1206)) )
))
(declare-fun lt!766144 () tuple3!2046)

(declare-datatypes ((List!22457 0))(
  ( (Nil!22373) (Cons!22373 (h!27774 Token!7572) (t!191571 List!22457)) )
))
(declare-datatypes ((IArray!15003 0))(
  ( (IArray!15004 (innerList!7559 List!22457)) )
))
(declare-datatypes ((Conc!7499 0))(
  ( (Node!7499 (left!17785 Conc!7499) (right!18115 Conc!7499) (csize!15228 Int) (cheight!7710 Int)) (Leaf!10986 (xs!10407 IArray!15003) (csize!15229 Int)) (Empty!7499) )
))
(declare-datatypes ((BalanceConc!14760 0))(
  ( (BalanceConc!14761 (c!330908 Conc!7499)) )
))
(declare-datatypes ((tuple2!21056 0))(
  ( (tuple2!21057 (_1!12016 BalanceConc!14760) (_2!12016 BalanceConc!14758)) )
))
(declare-fun lt!766148 () tuple2!21056)

(declare-fun lexRec!429 (LexerInterface!3624 List!22455 BalanceConc!14758) tuple2!21056)

(assert (=> b!2042910 (= lt!766148 (lexRec!429 thiss!12889 rules!1563 (_2!12012 (v!27084 (_1!12015 lt!766144)))))))

(declare-fun res!895232 () Bool)

(assert (=> start!201314 (=> (not res!895232) (not e!1290119))))

(get-info :version)

(assert (=> start!201314 (= res!895232 ((_ is Lexer!3622) thiss!12889))))

(assert (=> start!201314 e!1290119))

(declare-fun cacheDown!575 () CacheDown!1206)

(declare-fun e!1290136 () Bool)

(declare-fun inv!29711 (CacheDown!1206) Bool)

(assert (=> start!201314 (and (inv!29711 cacheDown!575) e!1290136)))

(assert (=> start!201314 true))

(declare-fun e!1290140 () Bool)

(declare-fun inv!29712 (CacheUp!1204) Bool)

(assert (=> start!201314 (and (inv!29712 cacheUp!562) e!1290140)))

(declare-fun e!1290138 () Bool)

(assert (=> start!201314 e!1290138))

(declare-fun e!1290134 () Bool)

(declare-fun inv!29713 (BalanceConc!14758) Bool)

(assert (=> start!201314 (and (inv!29713 totalInput!418) e!1290134)))

(declare-fun e!1290127 () Bool)

(assert (=> start!201314 (and (inv!29713 treated!60) e!1290127)))

(declare-fun e!1290141 () Bool)

(assert (=> start!201314 (and (inv!29713 input!986) e!1290141)))

(declare-fun acc!382 () BalanceConc!14760)

(declare-fun e!1290128 () Bool)

(declare-fun inv!29714 (BalanceConc!14760) Bool)

(assert (=> start!201314 (and (inv!29714 acc!382) e!1290128)))

(declare-fun b!2042911 () Bool)

(declare-fun e!1290129 () Bool)

(assert (=> b!2042911 (= e!1290140 e!1290129)))

(declare-fun b!2042912 () Bool)

(declare-fun tp!606909 () Bool)

(declare-fun inv!29715 (Conc!7499) Bool)

(assert (=> b!2042912 (= e!1290128 (and (inv!29715 (c!330908 acc!382)) tp!606909))))

(declare-fun mapIsEmpty!9210 () Bool)

(assert (=> mapIsEmpty!9210 mapRes!9210))

(declare-fun b!2042913 () Bool)

(declare-fun res!895235 () Bool)

(assert (=> b!2042913 (=> (not res!895235) (not e!1290119))))

(declare-fun isEmpty!13961 (List!22455) Bool)

(assert (=> b!2042913 (= res!895235 (not (isEmpty!13961 rules!1563)))))

(declare-fun b!2042914 () Bool)

(declare-fun e!1290130 () Bool)

(declare-fun tp!606910 () Bool)

(assert (=> b!2042914 (= e!1290138 (and e!1290130 tp!606910))))

(declare-fun b!2042915 () Bool)

(declare-fun e!1290118 () Bool)

(assert (=> b!2042915 (= e!1290118 e!1290125)))

(declare-fun res!895239 () Bool)

(assert (=> b!2042915 (=> res!895239 e!1290125)))

(assert (=> b!2042915 (= res!895239 (not ((_ is Some!4692) (_1!12015 lt!766144))))))

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!5 (LexerInterface!3624 List!22455 BalanceConc!14758 BalanceConc!14758 CacheUp!1204 CacheDown!1206) tuple3!2046)

(assert (=> b!2042915 (= lt!766144 (maxPrefixZipperSequenceV2MemOnlyDeriv!5 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2042916 () Bool)

(declare-fun e!1290133 () Bool)

(assert (=> b!2042916 (= e!1290133 e!1290120)))

(declare-fun e!1290137 () Bool)

(declare-fun e!1290123 () Bool)

(assert (=> b!2042917 (= e!1290137 (and e!1290123 tp!606912))))

(declare-fun b!2042918 () Bool)

(declare-fun e!1290143 () Bool)

(declare-fun e!1290124 () Bool)

(assert (=> b!2042918 (= e!1290143 e!1290124)))

(declare-fun b!2042919 () Bool)

(assert (=> b!2042919 (= e!1290136 e!1290137)))

(declare-fun b!2042920 () Bool)

(declare-fun e!1290132 () Bool)

(declare-fun tp!606918 () Bool)

(declare-fun mapRes!9211 () Bool)

(assert (=> b!2042920 (= e!1290132 (and tp!606918 mapRes!9211))))

(declare-fun condMapEmpty!9211 () Bool)

(declare-fun mapDefault!9211 () List!22456)

(assert (=> b!2042920 (= condMapEmpty!9211 (= (arr!3056 (_values!2275 (v!27085 (underlying!4185 (v!27086 (underlying!4186 (cache!2290 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22456)) mapDefault!9211)))))

(declare-fun mapNonEmpty!9211 () Bool)

(declare-fun tp!606927 () Bool)

(declare-fun tp!606926 () Bool)

(assert (=> mapNonEmpty!9211 (= mapRes!9211 (and tp!606927 tp!606926))))

(declare-fun mapKey!9211 () (_ BitVec 32))

(declare-fun mapRest!9210 () (Array (_ BitVec 32) List!22456))

(declare-fun mapValue!9211 () List!22456)

(assert (=> mapNonEmpty!9211 (= (arr!3056 (_values!2275 (v!27085 (underlying!4185 (v!27086 (underlying!4186 (cache!2290 cacheDown!575))))))) (store mapRest!9210 mapKey!9211 mapValue!9211))))

(declare-fun b!2042921 () Bool)

(declare-fun res!895229 () Bool)

(declare-fun e!1290145 () Bool)

(assert (=> b!2042921 (=> (not res!895229) (not e!1290145))))

(declare-fun valid!1590 (CacheDown!1206) Bool)

(assert (=> b!2042921 (= res!895229 (valid!1590 cacheDown!575))))

(declare-fun b!2042922 () Bool)

(declare-fun e!1290126 () Bool)

(declare-fun lt!766147 () MutLongMap!1995)

(assert (=> b!2042922 (= e!1290123 (and e!1290126 ((_ is LongMap!1995) lt!766147)))))

(assert (=> b!2042922 (= lt!766147 (v!27086 (underlying!4186 (cache!2290 cacheDown!575))))))

(declare-fun b!2042923 () Bool)

(assert (=> b!2042923 (= e!1290145 (not e!1290118))))

(declare-fun res!895233 () Bool)

(assert (=> b!2042923 (=> res!895233 e!1290118)))

(declare-fun isSuffix!472 (List!22451 List!22451) Bool)

(assert (=> b!2042923 (= res!895233 (not (isSuffix!472 lt!766149 lt!766143)))))

(assert (=> b!2042923 (isSuffix!472 lt!766149 lt!766150)))

(declare-datatypes ((Unit!37011 0))(
  ( (Unit!37012) )
))
(declare-fun lt!766145 () Unit!37011)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!373 (List!22451 List!22451) Unit!37011)

(assert (=> b!2042923 (= lt!766145 (lemmaConcatTwoListThenFSndIsSuffix!373 lt!766141 lt!766149))))

(declare-fun b!2042924 () Bool)

(assert (=> b!2042924 (= e!1290126 e!1290143)))

(declare-fun b!2042925 () Bool)

(declare-fun tp!606915 () Bool)

(declare-fun inv!29716 (Conc!7498) Bool)

(assert (=> b!2042925 (= e!1290141 (and (inv!29716 (c!330906 input!986)) tp!606915))))

(declare-fun b!2042926 () Bool)

(declare-fun res!895234 () Bool)

(declare-fun e!1290142 () Bool)

(assert (=> b!2042926 (=> (not res!895234) (not e!1290142))))

(declare-fun lt!766153 () tuple2!21056)

(declare-fun isEmpty!13962 (List!22451) Bool)

(assert (=> b!2042926 (= res!895234 (isEmpty!13962 (list!9171 (_2!12016 lt!766153))))))

(declare-fun b!2042927 () Bool)

(declare-fun res!895230 () Bool)

(assert (=> b!2042927 (=> (not res!895230) (not e!1290119))))

(declare-fun rulesInvariant!3228 (LexerInterface!3624 List!22455) Bool)

(assert (=> b!2042927 (= res!895230 (rulesInvariant!3228 thiss!12889 rules!1563))))

(declare-fun b!2042928 () Bool)

(declare-fun tp!606908 () Bool)

(assert (=> b!2042928 (= e!1290134 (and (inv!29716 (c!330906 totalInput!418)) tp!606908))))

(declare-fun b!2042929 () Bool)

(assert (=> b!2042929 (= e!1290142 e!1290145)))

(declare-fun res!895237 () Bool)

(assert (=> b!2042929 (=> (not res!895237) (not e!1290145))))

(declare-fun lt!766152 () tuple2!21056)

(declare-fun lt!766142 () tuple2!21056)

(declare-fun list!9172 (BalanceConc!14760) List!22457)

(declare-fun ++!6077 (BalanceConc!14760 BalanceConc!14760) BalanceConc!14760)

(assert (=> b!2042929 (= res!895237 (= (list!9172 (_1!12016 lt!766142)) (list!9172 (++!6077 acc!382 (_1!12016 lt!766152)))))))

(assert (=> b!2042929 (= lt!766152 (lexRec!429 thiss!12889 rules!1563 input!986))))

(assert (=> b!2042929 (= lt!766142 (lexRec!429 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2042930 () Bool)

(declare-fun res!895238 () Bool)

(assert (=> b!2042930 (=> (not res!895238) (not e!1290145))))

(declare-fun valid!1591 (CacheUp!1204) Bool)

(assert (=> b!2042930 (= res!895238 (valid!1591 cacheUp!562))))

(declare-fun e!1290146 () Bool)

(assert (=> b!2042931 (= e!1290129 (and e!1290146 tp!606913))))

(declare-fun b!2042932 () Bool)

(declare-fun tp!606925 () Bool)

(assert (=> b!2042932 (= e!1290127 (and (inv!29716 (c!330906 treated!60)) tp!606925))))

(declare-fun b!2042933 () Bool)

(declare-fun res!895236 () Bool)

(assert (=> b!2042933 (=> (not res!895236) (not e!1290145))))

(assert (=> b!2042933 (= res!895236 (= (list!9171 (_2!12016 lt!766142)) (list!9171 (_2!12016 lt!766152))))))

(declare-fun tp!606920 () Bool)

(declare-fun tp!606911 () Bool)

(declare-fun array_inv!2193 (array!6877) Bool)

(declare-fun array_inv!2194 (array!6879) Bool)

(assert (=> b!2042934 (= e!1290124 (and tp!606914 tp!606911 tp!606920 (array_inv!2193 (_keys!2292 (v!27085 (underlying!4185 (v!27086 (underlying!4186 (cache!2290 cacheDown!575))))))) (array_inv!2194 (_values!2275 (v!27085 (underlying!4185 (v!27086 (underlying!4186 (cache!2290 cacheDown!575))))))) e!1290132))))

(declare-fun e!1290122 () Bool)

(assert (=> b!2042935 (= e!1290122 (and tp!606922 tp!606928))))

(declare-fun tp!606923 () Bool)

(declare-fun b!2042936 () Bool)

(declare-fun inv!29710 (String!25927) Bool)

(declare-fun inv!29717 (TokenValueInjection!7878) Bool)

(assert (=> b!2042936 (= e!1290130 (and tp!606923 (inv!29710 (tag!4501 (h!27772 rules!1563))) (inv!29717 (transformation!4011 (h!27772 rules!1563))) e!1290122))))

(declare-fun tp!606917 () Bool)

(declare-fun e!1290131 () Bool)

(declare-fun tp!606924 () Bool)

(declare-fun array_inv!2195 (array!6875) Bool)

(assert (=> b!2042937 (= e!1290144 (and tp!606919 tp!606924 tp!606917 (array_inv!2193 (_keys!2291 (v!27082 (underlying!4183 (v!27083 (underlying!4184 (cache!2289 cacheUp!562))))))) (array_inv!2195 (_values!2274 (v!27082 (underlying!4183 (v!27083 (underlying!4184 (cache!2289 cacheUp!562))))))) e!1290131))))

(declare-fun mapIsEmpty!9211 () Bool)

(assert (=> mapIsEmpty!9211 mapRes!9211))

(declare-fun b!2042938 () Bool)

(declare-fun tp!606921 () Bool)

(assert (=> b!2042938 (= e!1290131 (and tp!606921 mapRes!9210))))

(declare-fun condMapEmpty!9210 () Bool)

(declare-fun mapDefault!9210 () List!22453)

(assert (=> b!2042938 (= condMapEmpty!9210 (= (arr!3054 (_values!2274 (v!27082 (underlying!4183 (v!27083 (underlying!4184 (cache!2289 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22453)) mapDefault!9210)))))

(declare-fun b!2042939 () Bool)

(declare-fun lt!766146 () MutLongMap!1994)

(assert (=> b!2042939 (= e!1290146 (and e!1290133 ((_ is LongMap!1994) lt!766146)))))

(assert (=> b!2042939 (= lt!766146 (v!27083 (underlying!4184 (cache!2289 cacheUp!562))))))

(declare-fun b!2042940 () Bool)

(assert (=> b!2042940 (= e!1290139 e!1290142)))

(declare-fun res!895231 () Bool)

(assert (=> b!2042940 (=> (not res!895231) (not e!1290142))))

(assert (=> b!2042940 (= res!895231 (= (list!9172 (_1!12016 lt!766153)) (list!9172 acc!382)))))

(assert (=> b!2042940 (= lt!766153 (lexRec!429 thiss!12889 rules!1563 treated!60))))

(assert (= (and start!201314 res!895232) b!2042913))

(assert (= (and b!2042913 res!895235) b!2042927))

(assert (= (and b!2042927 res!895230) b!2042908))

(assert (= (and b!2042908 res!895228) b!2042940))

(assert (= (and b!2042940 res!895231) b!2042926))

(assert (= (and b!2042926 res!895234) b!2042929))

(assert (= (and b!2042929 res!895237) b!2042933))

(assert (= (and b!2042933 res!895236) b!2042930))

(assert (= (and b!2042930 res!895238) b!2042921))

(assert (= (and b!2042921 res!895229) b!2042923))

(assert (= (and b!2042923 (not res!895233)) b!2042915))

(assert (= (and b!2042915 (not res!895239)) b!2042910))

(assert (= (and b!2042920 condMapEmpty!9211) mapIsEmpty!9211))

(assert (= (and b!2042920 (not condMapEmpty!9211)) mapNonEmpty!9211))

(assert (= b!2042934 b!2042920))

(assert (= b!2042918 b!2042934))

(assert (= b!2042924 b!2042918))

(assert (= (and b!2042922 ((_ is LongMap!1995) (v!27086 (underlying!4186 (cache!2290 cacheDown!575))))) b!2042924))

(assert (= b!2042917 b!2042922))

(assert (= (and b!2042919 ((_ is HashMap!1909) (cache!2290 cacheDown!575))) b!2042917))

(assert (= start!201314 b!2042919))

(assert (= (and b!2042938 condMapEmpty!9210) mapIsEmpty!9210))

(assert (= (and b!2042938 (not condMapEmpty!9210)) mapNonEmpty!9210))

(assert (= b!2042937 b!2042938))

(assert (= b!2042909 b!2042937))

(assert (= b!2042916 b!2042909))

(assert (= (and b!2042939 ((_ is LongMap!1994) (v!27083 (underlying!4184 (cache!2289 cacheUp!562))))) b!2042916))

(assert (= b!2042931 b!2042939))

(assert (= (and b!2042911 ((_ is HashMap!1908) (cache!2289 cacheUp!562))) b!2042931))

(assert (= start!201314 b!2042911))

(assert (= b!2042936 b!2042935))

(assert (= b!2042914 b!2042936))

(assert (= (and start!201314 ((_ is Cons!22371) rules!1563)) b!2042914))

(assert (= start!201314 b!2042928))

(assert (= start!201314 b!2042932))

(assert (= start!201314 b!2042925))

(assert (= start!201314 b!2042912))

(declare-fun m!2486903 () Bool)

(assert (=> b!2042926 m!2486903))

(assert (=> b!2042926 m!2486903))

(declare-fun m!2486905 () Bool)

(assert (=> b!2042926 m!2486905))

(declare-fun m!2486907 () Bool)

(assert (=> start!201314 m!2486907))

(declare-fun m!2486909 () Bool)

(assert (=> start!201314 m!2486909))

(declare-fun m!2486911 () Bool)

(assert (=> start!201314 m!2486911))

(declare-fun m!2486913 () Bool)

(assert (=> start!201314 m!2486913))

(declare-fun m!2486915 () Bool)

(assert (=> start!201314 m!2486915))

(declare-fun m!2486917 () Bool)

(assert (=> start!201314 m!2486917))

(declare-fun m!2486919 () Bool)

(assert (=> b!2042928 m!2486919))

(declare-fun m!2486921 () Bool)

(assert (=> b!2042927 m!2486921))

(declare-fun m!2486923 () Bool)

(assert (=> b!2042915 m!2486923))

(declare-fun m!2486925 () Bool)

(assert (=> mapNonEmpty!9210 m!2486925))

(declare-fun m!2486927 () Bool)

(assert (=> b!2042929 m!2486927))

(declare-fun m!2486929 () Bool)

(assert (=> b!2042929 m!2486929))

(declare-fun m!2486931 () Bool)

(assert (=> b!2042929 m!2486931))

(declare-fun m!2486933 () Bool)

(assert (=> b!2042929 m!2486933))

(assert (=> b!2042929 m!2486929))

(declare-fun m!2486935 () Bool)

(assert (=> b!2042929 m!2486935))

(declare-fun m!2486937 () Bool)

(assert (=> b!2042913 m!2486937))

(declare-fun m!2486939 () Bool)

(assert (=> mapNonEmpty!9211 m!2486939))

(declare-fun m!2486941 () Bool)

(assert (=> b!2042923 m!2486941))

(declare-fun m!2486943 () Bool)

(assert (=> b!2042923 m!2486943))

(declare-fun m!2486945 () Bool)

(assert (=> b!2042923 m!2486945))

(declare-fun m!2486947 () Bool)

(assert (=> b!2042934 m!2486947))

(declare-fun m!2486949 () Bool)

(assert (=> b!2042934 m!2486949))

(declare-fun m!2486951 () Bool)

(assert (=> b!2042912 m!2486951))

(declare-fun m!2486953 () Bool)

(assert (=> b!2042930 m!2486953))

(declare-fun m!2486955 () Bool)

(assert (=> b!2042925 m!2486955))

(declare-fun m!2486957 () Bool)

(assert (=> b!2042910 m!2486957))

(declare-fun m!2486959 () Bool)

(assert (=> b!2042910 m!2486959))

(declare-fun m!2486961 () Bool)

(assert (=> b!2042932 m!2486961))

(declare-fun m!2486963 () Bool)

(assert (=> b!2042921 m!2486963))

(declare-fun m!2486965 () Bool)

(assert (=> b!2042940 m!2486965))

(declare-fun m!2486967 () Bool)

(assert (=> b!2042940 m!2486967))

(declare-fun m!2486969 () Bool)

(assert (=> b!2042940 m!2486969))

(declare-fun m!2486971 () Bool)

(assert (=> b!2042937 m!2486971))

(declare-fun m!2486973 () Bool)

(assert (=> b!2042937 m!2486973))

(declare-fun m!2486975 () Bool)

(assert (=> b!2042908 m!2486975))

(declare-fun m!2486977 () Bool)

(assert (=> b!2042908 m!2486977))

(declare-fun m!2486979 () Bool)

(assert (=> b!2042908 m!2486979))

(declare-fun m!2486981 () Bool)

(assert (=> b!2042908 m!2486981))

(declare-fun m!2486983 () Bool)

(assert (=> b!2042933 m!2486983))

(declare-fun m!2486985 () Bool)

(assert (=> b!2042933 m!2486985))

(declare-fun m!2486987 () Bool)

(assert (=> b!2042936 m!2486987))

(declare-fun m!2486989 () Bool)

(assert (=> b!2042936 m!2486989))

(check-sat (not b!2042938) (not b!2042914) (not b!2042937) (not b_next!57717) (not b!2042928) (not b!2042923) (not b!2042936) (not b!2042926) (not b!2042934) (not b_next!57723) (not b_next!57719) (not b_next!57713) b_and!162949 (not b!2042933) (not b!2042930) b_and!162957 b_and!162959 (not mapNonEmpty!9210) (not b!2042913) (not b!2042915) (not b!2042920) (not b!2042910) (not b!2042940) (not b_next!57721) (not b!2042921) (not b!2042908) (not b!2042932) (not b!2042912) b_and!162955 (not b_next!57715) (not b!2042925) (not start!201314) b_and!162951 (not mapNonEmpty!9211) (not b!2042929) (not b!2042927) b_and!162953)
(check-sat (not b_next!57721) b_and!162955 (not b_next!57717) (not b_next!57715) (not b_next!57723) b_and!162951 (not b_next!57719) (not b_next!57713) b_and!162953 b_and!162949 b_and!162957 b_and!162959)
