; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!206324 () Bool)

(assert start!206324)

(declare-fun b!2110248 () Bool)

(declare-fun b_free!60925 () Bool)

(declare-fun b_next!61629 () Bool)

(assert (=> b!2110248 (= b_free!60925 (not b_next!61629))))

(declare-fun tp!642039 () Bool)

(declare-fun b_and!170491 () Bool)

(assert (=> b!2110248 (= tp!642039 b_and!170491)))

(declare-fun b!2110245 () Bool)

(declare-fun b_free!60927 () Bool)

(declare-fun b_next!61631 () Bool)

(assert (=> b!2110245 (= b_free!60927 (not b_next!61631))))

(declare-fun tp!642022 () Bool)

(declare-fun b_and!170493 () Bool)

(assert (=> b!2110245 (= tp!642022 b_and!170493)))

(declare-fun b!2110264 () Bool)

(declare-fun b_free!60929 () Bool)

(declare-fun b_next!61633 () Bool)

(assert (=> b!2110264 (= b_free!60929 (not b_next!61633))))

(declare-fun tp!642030 () Bool)

(declare-fun b_and!170495 () Bool)

(assert (=> b!2110264 (= tp!642030 b_and!170495)))

(declare-fun b_free!60931 () Bool)

(declare-fun b_next!61635 () Bool)

(assert (=> b!2110264 (= b_free!60931 (not b_next!61635))))

(declare-fun tp!642037 () Bool)

(declare-fun b_and!170497 () Bool)

(assert (=> b!2110264 (= tp!642037 b_and!170497)))

(declare-fun b!2110251 () Bool)

(declare-fun b_free!60933 () Bool)

(declare-fun b_next!61637 () Bool)

(assert (=> b!2110251 (= b_free!60933 (not b_next!61637))))

(declare-fun tp!642031 () Bool)

(declare-fun b_and!170499 () Bool)

(assert (=> b!2110251 (= tp!642031 b_and!170499)))

(declare-fun b!2110260 () Bool)

(declare-fun b_free!60935 () Bool)

(declare-fun b_next!61639 () Bool)

(assert (=> b!2110260 (= b_free!60935 (not b_next!61639))))

(declare-fun tp!642026 () Bool)

(declare-fun b_and!170501 () Bool)

(assert (=> b!2110260 (= tp!642026 b_and!170501)))

(declare-fun b!2110242 () Bool)

(declare-fun e!1342121 () Bool)

(declare-fun e!1342130 () Bool)

(assert (=> b!2110242 (= e!1342121 e!1342130)))

(declare-datatypes ((List!23478 0))(
  ( (Nil!23394) (Cons!23394 (h!28795 (_ BitVec 16)) (t!195977 List!23478)) )
))
(declare-datatypes ((TokenValue!4299 0))(
  ( (FloatLiteralValue!8598 (text!30538 List!23478)) (TokenValueExt!4298 (__x!15070 Int)) (Broken!21495 (value!130252 List!23478)) (Object!4382) (End!4299) (Def!4299) (Underscore!4299) (Match!4299) (Else!4299) (Error!4299) (Case!4299) (If!4299) (Extends!4299) (Abstract!4299) (Class!4299) (Val!4299) (DelimiterValue!8598 (del!4359 List!23478)) (KeywordValue!4305 (value!130253 List!23478)) (CommentValue!8598 (value!130254 List!23478)) (WhitespaceValue!8598 (value!130255 List!23478)) (IndentationValue!4299 (value!130256 List!23478)) (String!26702) (Int32!4299) (Broken!21496 (value!130257 List!23478)) (Boolean!4300) (Unit!37503) (OperatorValue!4302 (op!4359 List!23478)) (IdentifierValue!8598 (value!130258 List!23478)) (IdentifierValue!8599 (value!130259 List!23478)) (WhitespaceValue!8599 (value!130260 List!23478)) (True!8598) (False!8598) (Broken!21497 (value!130261 List!23478)) (Broken!21498 (value!130262 List!23478)) (True!8599) (RightBrace!4299) (RightBracket!4299) (Colon!4299) (Null!4299) (Comma!4299) (LeftBracket!4299) (False!8599) (LeftBrace!4299) (ImaginaryLiteralValue!4299 (text!30539 List!23478)) (StringLiteralValue!12897 (value!130263 List!23478)) (EOFValue!4299 (value!130264 List!23478)) (IdentValue!4299 (value!130265 List!23478)) (DelimiterValue!8599 (value!130266 List!23478)) (DedentValue!4299 (value!130267 List!23478)) (NewLineValue!4299 (value!130268 List!23478)) (IntegerValue!12897 (value!130269 (_ BitVec 32)) (text!30540 List!23478)) (IntegerValue!12898 (value!130270 Int) (text!30541 List!23478)) (Times!4299) (Or!4299) (Equal!4299) (Minus!4299) (Broken!21499 (value!130271 List!23478)) (And!4299) (Div!4299) (LessEqual!4299) (Mod!4299) (Concat!9898) (Not!4299) (Plus!4299) (SpaceValue!4299 (value!130272 List!23478)) (IntegerValue!12899 (value!130273 Int) (text!30542 List!23478)) (StringLiteralValue!12898 (text!30543 List!23478)) (FloatLiteralValue!8599 (text!30544 List!23478)) (BytesLiteralValue!4299 (value!130274 List!23478)) (CommentValue!8599 (value!130275 List!23478)) (StringLiteralValue!12899 (value!130276 List!23478)) (ErrorTokenValue!4299 (msg!4360 List!23478)) )
))
(declare-datatypes ((C!11344 0))(
  ( (C!11345 (val!6658 Int)) )
))
(declare-datatypes ((List!23479 0))(
  ( (Nil!23395) (Cons!23395 (h!28796 C!11344) (t!195978 List!23479)) )
))
(declare-datatypes ((IArray!15493 0))(
  ( (IArray!15494 (innerList!7804 List!23479)) )
))
(declare-datatypes ((Conc!7744 0))(
  ( (Node!7744 (left!18194 Conc!7744) (right!18524 Conc!7744) (csize!15718 Int) (cheight!7955 Int)) (Leaf!11311 (xs!10686 IArray!15493) (csize!15719 Int)) (Empty!7744) )
))
(declare-datatypes ((BalanceConc!15250 0))(
  ( (BalanceConc!15251 (c!339045 Conc!7744)) )
))
(declare-datatypes ((String!26703 0))(
  ( (String!26704 (value!130277 String)) )
))
(declare-datatypes ((Regex!5599 0))(
  ( (ElementMatch!5599 (c!339046 C!11344)) (Concat!9899 (regOne!11710 Regex!5599) (regTwo!11710 Regex!5599)) (EmptyExpr!5599) (Star!5599 (reg!5928 Regex!5599)) (EmptyLang!5599) (Union!5599 (regOne!11711 Regex!5599) (regTwo!11711 Regex!5599)) )
))
(declare-datatypes ((TokenValueInjection!8182 0))(
  ( (TokenValueInjection!8183 (toValue!5874 Int) (toChars!5733 Int)) )
))
(declare-datatypes ((Rule!8126 0))(
  ( (Rule!8127 (regex!4163 Regex!5599) (tag!4653 String!26703) (isSeparator!4163 Bool) (transformation!4163 TokenValueInjection!8182)) )
))
(declare-fun rule!236 () Rule!8126)

(declare-fun e!1342119 () Bool)

(declare-fun e!1342138 () Bool)

(declare-fun tp!642025 () Bool)

(declare-fun b!2110243 () Bool)

(declare-fun inv!30953 (String!26703) Bool)

(declare-fun inv!30955 (TokenValueInjection!8182) Bool)

(assert (=> b!2110243 (= e!1342138 (and tp!642025 (inv!30953 (tag!4653 rule!236)) (inv!30955 (transformation!4163 rule!236)) e!1342119))))

(declare-fun b!2110244 () Bool)

(declare-fun e!1342123 () Bool)

(declare-fun e!1342127 () Bool)

(assert (=> b!2110244 (= e!1342123 e!1342127)))

(declare-fun e!1342128 () Bool)

(declare-fun tp!642038 () Bool)

(declare-datatypes ((Hashable!2214 0))(
  ( (HashableExt!2213 (__x!15071 Int)) )
))
(declare-datatypes ((List!23480 0))(
  ( (Nil!23396) (Cons!23396 (h!28797 Regex!5599) (t!195979 List!23480)) )
))
(declare-datatypes ((Context!2338 0))(
  ( (Context!2339 (exprs!1669 List!23480)) )
))
(declare-datatypes ((tuple3!2662 0))(
  ( (tuple3!2663 (_1!13166 Regex!5599) (_2!13166 Context!2338) (_3!1795 C!11344)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!22742 0))(
  ( (tuple2!22743 (_1!13167 tuple3!2662) (_2!13167 (InoxSet Context!2338))) )
))
(declare-datatypes ((List!23481 0))(
  ( (Nil!23397) (Cons!23397 (h!28798 tuple2!22742) (t!195980 List!23481)) )
))
(declare-datatypes ((array!7948 0))(
  ( (array!7949 (arr!3520 (Array (_ BitVec 32) (_ BitVec 64))) (size!18254 (_ BitVec 32))) )
))
(declare-datatypes ((array!7950 0))(
  ( (array!7951 (arr!3521 (Array (_ BitVec 32) List!23481)) (size!18255 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4600 0))(
  ( (LongMapFixedSize!4601 (defaultEntry!2665 Int) (mask!6415 (_ BitVec 32)) (extraKeys!2548 (_ BitVec 32)) (zeroValue!2558 List!23481) (minValue!2558 List!23481) (_size!4651 (_ BitVec 32)) (_keys!2597 array!7948) (_values!2580 array!7950) (_vacant!2361 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9025 0))(
  ( (Cell!9026 (v!27925 LongMapFixedSize!4600)) )
))
(declare-datatypes ((MutLongMap!2300 0))(
  ( (LongMap!2300 (underlying!4795 Cell!9025)) (MutLongMapExt!2299 (__x!15072 Int)) )
))
(declare-datatypes ((Cell!9027 0))(
  ( (Cell!9028 (v!27926 MutLongMap!2300)) )
))
(declare-datatypes ((MutableMap!2214 0))(
  ( (MutableMapExt!2213 (__x!15073 Int)) (HashMap!2214 (underlying!4796 Cell!9027) (hashF!4137 Hashable!2214) (_size!4652 (_ BitVec 32)) (defaultValue!2376 Int)) )
))
(declare-datatypes ((CacheDown!1512 0))(
  ( (CacheDown!1513 (cache!2595 MutableMap!2214)) )
))
(declare-fun cacheDown!753 () CacheDown!1512)

(declare-fun tp!642040 () Bool)

(declare-fun e!1342131 () Bool)

(declare-fun array_inv!2533 (array!7948) Bool)

(declare-fun array_inv!2534 (array!7950) Bool)

(assert (=> b!2110245 (= e!1342131 (and tp!642022 tp!642038 tp!642040 (array_inv!2533 (_keys!2597 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) (array_inv!2534 (_values!2580 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) e!1342128))))

(declare-fun b!2110246 () Bool)

(declare-fun e!1342132 () Bool)

(declare-fun totalInput!548 () BalanceConc!15250)

(declare-fun tp!642034 () Bool)

(declare-fun inv!30956 (Conc!7744) Bool)

(assert (=> b!2110246 (= e!1342132 (and (inv!30956 (c!339045 totalInput!548)) tp!642034))))

(declare-fun mapNonEmpty!11102 () Bool)

(declare-fun mapRes!11102 () Bool)

(declare-fun tp!642033 () Bool)

(declare-fun tp!642028 () Bool)

(assert (=> mapNonEmpty!11102 (= mapRes!11102 (and tp!642033 tp!642028))))

(declare-datatypes ((tuple2!22744 0))(
  ( (tuple2!22745 (_1!13168 Context!2338) (_2!13168 C!11344)) )
))
(declare-datatypes ((tuple2!22746 0))(
  ( (tuple2!22747 (_1!13169 tuple2!22744) (_2!13169 (InoxSet Context!2338))) )
))
(declare-datatypes ((List!23482 0))(
  ( (Nil!23398) (Cons!23398 (h!28799 tuple2!22746) (t!195981 List!23482)) )
))
(declare-datatypes ((array!7952 0))(
  ( (array!7953 (arr!3522 (Array (_ BitVec 32) List!23482)) (size!18256 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4602 0))(
  ( (LongMapFixedSize!4603 (defaultEntry!2666 Int) (mask!6416 (_ BitVec 32)) (extraKeys!2549 (_ BitVec 32)) (zeroValue!2559 List!23482) (minValue!2559 List!23482) (_size!4653 (_ BitVec 32)) (_keys!2598 array!7948) (_values!2581 array!7952) (_vacant!2362 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!9029 0))(
  ( (Cell!9030 (v!27927 LongMapFixedSize!4602)) )
))
(declare-datatypes ((MutLongMap!2301 0))(
  ( (LongMap!2301 (underlying!4797 Cell!9029)) (MutLongMapExt!2300 (__x!15074 Int)) )
))
(declare-datatypes ((Cell!9031 0))(
  ( (Cell!9032 (v!27928 MutLongMap!2301)) )
))
(declare-datatypes ((Hashable!2215 0))(
  ( (HashableExt!2214 (__x!15075 Int)) )
))
(declare-datatypes ((MutableMap!2215 0))(
  ( (MutableMapExt!2214 (__x!15076 Int)) (HashMap!2215 (underlying!4798 Cell!9031) (hashF!4138 Hashable!2215) (_size!4654 (_ BitVec 32)) (defaultValue!2377 Int)) )
))
(declare-datatypes ((CacheUp!1510 0))(
  ( (CacheUp!1511 (cache!2596 MutableMap!2215)) )
))
(declare-fun cacheUp!740 () CacheUp!1510)

(declare-fun mapValue!11103 () List!23482)

(declare-fun mapRest!11103 () (Array (_ BitVec 32) List!23482))

(declare-fun mapKey!11102 () (_ BitVec 32))

(assert (=> mapNonEmpty!11102 (= (arr!3522 (_values!2581 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) (store mapRest!11103 mapKey!11102 mapValue!11103))))

(declare-fun b!2110247 () Bool)

(declare-fun e!1342122 () Bool)

(assert (=> b!2110247 (= e!1342122 e!1342123)))

(declare-fun tp!642035 () Bool)

(declare-fun e!1342114 () Bool)

(declare-fun tp!642027 () Bool)

(declare-fun array_inv!2535 (array!7952) Bool)

(assert (=> b!2110248 (= e!1342127 (and tp!642039 tp!642027 tp!642035 (array_inv!2533 (_keys!2598 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) (array_inv!2535 (_values!2581 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) e!1342114))))

(declare-fun b!2110249 () Bool)

(declare-fun res!916663 () Bool)

(declare-fun e!1342118 () Bool)

(assert (=> b!2110249 (=> (not res!916663) (not e!1342118))))

(declare-fun valid!1815 (CacheUp!1510) Bool)

(assert (=> b!2110249 (= res!916663 (valid!1815 cacheUp!740))))

(declare-fun e!1342126 () Bool)

(declare-fun e!1342116 () Bool)

(assert (=> b!2110251 (= e!1342126 (and e!1342116 tp!642031))))

(declare-fun b!2110252 () Bool)

(assert (=> b!2110252 (= e!1342130 e!1342131)))

(declare-fun b!2110253 () Bool)

(declare-fun e!1342135 () Bool)

(declare-datatypes ((tuple2!22748 0))(
  ( (tuple2!22749 (_1!13170 List!23479) (_2!13170 List!23479)) )
))
(declare-fun lt!792017 () tuple2!22748)

(declare-fun matchR!2727 (Regex!5599 List!23479) Bool)

(assert (=> b!2110253 (= e!1342135 (matchR!2727 (regex!4163 rule!236) (_1!13170 lt!792017)))))

(declare-fun b!2110254 () Bool)

(declare-fun res!916667 () Bool)

(declare-fun e!1342133 () Bool)

(assert (=> b!2110254 (=> (not res!916667) (not e!1342133))))

(declare-datatypes ((tuple2!22750 0))(
  ( (tuple2!22751 (_1!13171 BalanceConc!15250) (_2!13171 BalanceConc!15250)) )
))
(declare-datatypes ((tuple3!2664 0))(
  ( (tuple3!2665 (_1!13172 tuple2!22750) (_2!13172 CacheUp!1510) (_3!1796 CacheDown!1512)) )
))
(declare-fun lt!792014 () tuple3!2664)

(declare-fun isEmpty!14299 (BalanceConc!15250) Bool)

(assert (=> b!2110254 (= res!916667 (not (isEmpty!14299 (_1!13171 (_1!13172 lt!792014)))))))

(declare-fun b!2110255 () Bool)

(declare-fun res!916670 () Bool)

(assert (=> b!2110255 (=> (not res!916670) (not e!1342118))))

(declare-datatypes ((LexerInterface!3760 0))(
  ( (LexerInterfaceExt!3757 (__x!15077 Int)) (Lexer!3758) )
))
(declare-fun thiss!16399 () LexerInterface!3760)

(declare-fun ruleValid!1285 (LexerInterface!3760 Rule!8126) Bool)

(assert (=> b!2110255 (= res!916670 (ruleValid!1285 thiss!16399 rule!236))))

(declare-fun b!2110256 () Bool)

(declare-fun e!1342115 () Bool)

(declare-fun lt!792013 () MutLongMap!2301)

(get-info :version)

(assert (=> b!2110256 (= e!1342115 (and e!1342122 ((_ is LongMap!2301) lt!792013)))))

(assert (=> b!2110256 (= lt!792013 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))

(declare-fun b!2110257 () Bool)

(declare-fun e!1342129 () Bool)

(assert (=> b!2110257 (= e!1342118 e!1342129)))

(declare-fun res!916664 () Bool)

(assert (=> b!2110257 (=> (not res!916664) (not e!1342129))))

(declare-fun lt!792012 () List!23479)

(declare-fun isSuffix!576 (List!23479 List!23479) Bool)

(declare-fun list!9471 (BalanceConc!15250) List!23479)

(assert (=> b!2110257 (= res!916664 (isSuffix!576 lt!792012 (list!9471 totalInput!548)))))

(declare-fun input!1654 () BalanceConc!15250)

(assert (=> b!2110257 (= lt!792012 (list!9471 input!1654))))

(declare-fun mapIsEmpty!11102 () Bool)

(declare-fun mapRes!11103 () Bool)

(assert (=> mapIsEmpty!11102 mapRes!11103))

(declare-fun mapIsEmpty!11103 () Bool)

(assert (=> mapIsEmpty!11103 mapRes!11102))

(declare-fun b!2110258 () Bool)

(declare-datatypes ((Token!7810 0))(
  ( (Token!7811 (value!130278 TokenValue!4299) (rule!6463 Rule!8126) (size!18257 Int) (originalCharacters!4936 List!23479)) )
))
(declare-fun inv!30957 (Token!7810) Bool)

(declare-fun apply!5900 (TokenValueInjection!8182 BalanceConc!15250) TokenValue!4299)

(declare-fun size!18258 (BalanceConc!15250) Int)

(assert (=> b!2110258 (= e!1342133 (not (inv!30957 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014)))))))))

(declare-datatypes ((Unit!37504 0))(
  ( (Unit!37505) )
))
(declare-fun lt!792018 () Unit!37504)

(declare-fun lemmaSemiInverse!990 (TokenValueInjection!8182 BalanceConc!15250) Unit!37504)

(assert (=> b!2110258 (= lt!792018 (lemmaSemiInverse!990 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))))))

(assert (=> b!2110258 e!1342135))

(declare-fun res!916665 () Bool)

(assert (=> b!2110258 (=> res!916665 e!1342135)))

(declare-fun isEmpty!14300 (List!23479) Bool)

(assert (=> b!2110258 (= res!916665 (isEmpty!14300 (_1!13170 lt!792017)))))

(declare-fun findLongestMatchInner!592 (Regex!5599 List!23479 Int List!23479 List!23479 Int) tuple2!22748)

(declare-fun size!18259 (List!23479) Int)

(assert (=> b!2110258 (= lt!792017 (findLongestMatchInner!592 (regex!4163 rule!236) Nil!23395 (size!18259 Nil!23395) lt!792012 lt!792012 (size!18259 lt!792012)))))

(declare-fun lt!792016 () Unit!37504)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!576 (Regex!5599 List!23479) Unit!37504)

(assert (=> b!2110258 (= lt!792016 (longestMatchIsAcceptedByMatchOrIsEmpty!576 (regex!4163 rule!236) lt!792012))))

(declare-fun res!916668 () Bool)

(assert (=> start!206324 (=> (not res!916668) (not e!1342118))))

(assert (=> start!206324 (= res!916668 ((_ is Lexer!3758) thiss!16399))))

(assert (=> start!206324 e!1342118))

(assert (=> start!206324 true))

(assert (=> start!206324 e!1342138))

(declare-fun e!1342134 () Bool)

(declare-fun inv!30958 (CacheDown!1512) Bool)

(assert (=> start!206324 (and (inv!30958 cacheDown!753) e!1342134)))

(declare-fun e!1342117 () Bool)

(declare-fun inv!30959 (BalanceConc!15250) Bool)

(assert (=> start!206324 (and (inv!30959 input!1654) e!1342117)))

(assert (=> start!206324 (and (inv!30959 totalInput!548) e!1342132)))

(declare-fun e!1342136 () Bool)

(declare-fun inv!30960 (CacheUp!1510) Bool)

(assert (=> start!206324 (and (inv!30960 cacheUp!740) e!1342136)))

(declare-fun b!2110250 () Bool)

(declare-fun e!1342124 () Bool)

(assert (=> b!2110250 (= e!1342136 e!1342124)))

(declare-fun b!2110259 () Bool)

(declare-fun res!916666 () Bool)

(assert (=> b!2110259 (=> (not res!916666) (not e!1342118))))

(declare-fun valid!1816 (CacheDown!1512) Bool)

(assert (=> b!2110259 (= res!916666 (valid!1816 cacheDown!753))))

(assert (=> b!2110260 (= e!1342124 (and e!1342115 tp!642026))))

(declare-fun b!2110261 () Bool)

(declare-fun tp!642023 () Bool)

(assert (=> b!2110261 (= e!1342128 (and tp!642023 mapRes!11103))))

(declare-fun condMapEmpty!11103 () Bool)

(declare-fun mapDefault!11103 () List!23481)

(assert (=> b!2110261 (= condMapEmpty!11103 (= (arr!3521 (_values!2580 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) ((as const (Array (_ BitVec 32) List!23481)) mapDefault!11103)))))

(declare-fun b!2110262 () Bool)

(declare-fun lt!792015 () MutLongMap!2300)

(assert (=> b!2110262 (= e!1342116 (and e!1342121 ((_ is LongMap!2300) lt!792015)))))

(assert (=> b!2110262 (= lt!792015 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))

(declare-fun mapNonEmpty!11103 () Bool)

(declare-fun tp!642029 () Bool)

(declare-fun tp!642036 () Bool)

(assert (=> mapNonEmpty!11103 (= mapRes!11103 (and tp!642029 tp!642036))))

(declare-fun mapValue!11102 () List!23481)

(declare-fun mapRest!11102 () (Array (_ BitVec 32) List!23481))

(declare-fun mapKey!11103 () (_ BitVec 32))

(assert (=> mapNonEmpty!11103 (= (arr!3521 (_values!2580 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) (store mapRest!11102 mapKey!11103 mapValue!11102))))

(declare-fun b!2110263 () Bool)

(declare-fun tp!642024 () Bool)

(assert (=> b!2110263 (= e!1342117 (and (inv!30956 (c!339045 input!1654)) tp!642024))))

(assert (=> b!2110264 (= e!1342119 (and tp!642030 tp!642037))))

(declare-fun b!2110265 () Bool)

(assert (=> b!2110265 (= e!1342129 e!1342133)))

(declare-fun res!916669 () Bool)

(assert (=> b!2110265 (=> (not res!916669) (not e!1342133))))

(declare-fun findLongestMatchWithZipperSequenceV2!68 (Regex!5599 BalanceConc!15250 BalanceConc!15250) tuple2!22750)

(assert (=> b!2110265 (= res!916669 (= (_1!13172 lt!792014) (findLongestMatchWithZipperSequenceV2!68 (regex!4163 rule!236) input!1654 totalInput!548)))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!42 (Regex!5599 BalanceConc!15250 BalanceConc!15250 CacheUp!1510 CacheDown!1512) tuple3!2664)

(assert (=> b!2110265 (= lt!792014 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!42 (regex!4163 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(declare-fun b!2110266 () Bool)

(declare-fun tp!642032 () Bool)

(assert (=> b!2110266 (= e!1342114 (and tp!642032 mapRes!11102))))

(declare-fun condMapEmpty!11102 () Bool)

(declare-fun mapDefault!11102 () List!23482)

(assert (=> b!2110266 (= condMapEmpty!11102 (= (arr!3522 (_values!2581 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) ((as const (Array (_ BitVec 32) List!23482)) mapDefault!11102)))))

(declare-fun b!2110267 () Bool)

(assert (=> b!2110267 (= e!1342134 e!1342126)))

(assert (= (and start!206324 res!916668) b!2110255))

(assert (= (and b!2110255 res!916670) b!2110249))

(assert (= (and b!2110249 res!916663) b!2110259))

(assert (= (and b!2110259 res!916666) b!2110257))

(assert (= (and b!2110257 res!916664) b!2110265))

(assert (= (and b!2110265 res!916669) b!2110254))

(assert (= (and b!2110254 res!916667) b!2110258))

(assert (= (and b!2110258 (not res!916665)) b!2110253))

(assert (= b!2110243 b!2110264))

(assert (= start!206324 b!2110243))

(assert (= (and b!2110261 condMapEmpty!11103) mapIsEmpty!11102))

(assert (= (and b!2110261 (not condMapEmpty!11103)) mapNonEmpty!11103))

(assert (= b!2110245 b!2110261))

(assert (= b!2110252 b!2110245))

(assert (= b!2110242 b!2110252))

(assert (= (and b!2110262 ((_ is LongMap!2300) (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))) b!2110242))

(assert (= b!2110251 b!2110262))

(assert (= (and b!2110267 ((_ is HashMap!2214) (cache!2595 cacheDown!753))) b!2110251))

(assert (= start!206324 b!2110267))

(assert (= start!206324 b!2110263))

(assert (= start!206324 b!2110246))

(assert (= (and b!2110266 condMapEmpty!11102) mapIsEmpty!11103))

(assert (= (and b!2110266 (not condMapEmpty!11102)) mapNonEmpty!11102))

(assert (= b!2110248 b!2110266))

(assert (= b!2110244 b!2110248))

(assert (= b!2110247 b!2110244))

(assert (= (and b!2110256 ((_ is LongMap!2301) (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))) b!2110247))

(assert (= b!2110260 b!2110256))

(assert (= (and b!2110250 ((_ is HashMap!2215) (cache!2596 cacheUp!740))) b!2110260))

(assert (= start!206324 b!2110250))

(declare-fun m!2567325 () Bool)

(assert (=> b!2110249 m!2567325))

(declare-fun m!2567327 () Bool)

(assert (=> b!2110253 m!2567327))

(declare-fun m!2567329 () Bool)

(assert (=> b!2110246 m!2567329))

(declare-fun m!2567331 () Bool)

(assert (=> b!2110258 m!2567331))

(declare-fun m!2567333 () Bool)

(assert (=> b!2110258 m!2567333))

(declare-fun m!2567335 () Bool)

(assert (=> b!2110258 m!2567335))

(declare-fun m!2567337 () Bool)

(assert (=> b!2110258 m!2567337))

(declare-fun m!2567339 () Bool)

(assert (=> b!2110258 m!2567339))

(declare-fun m!2567341 () Bool)

(assert (=> b!2110258 m!2567341))

(declare-fun m!2567343 () Bool)

(assert (=> b!2110258 m!2567343))

(assert (=> b!2110258 m!2567331))

(declare-fun m!2567345 () Bool)

(assert (=> b!2110258 m!2567345))

(declare-fun m!2567347 () Bool)

(assert (=> b!2110258 m!2567347))

(declare-fun m!2567349 () Bool)

(assert (=> b!2110258 m!2567349))

(assert (=> b!2110258 m!2567345))

(declare-fun m!2567351 () Bool)

(assert (=> b!2110257 m!2567351))

(assert (=> b!2110257 m!2567351))

(declare-fun m!2567353 () Bool)

(assert (=> b!2110257 m!2567353))

(declare-fun m!2567355 () Bool)

(assert (=> b!2110257 m!2567355))

(declare-fun m!2567357 () Bool)

(assert (=> b!2110254 m!2567357))

(declare-fun m!2567359 () Bool)

(assert (=> b!2110263 m!2567359))

(declare-fun m!2567361 () Bool)

(assert (=> b!2110248 m!2567361))

(declare-fun m!2567363 () Bool)

(assert (=> b!2110248 m!2567363))

(declare-fun m!2567365 () Bool)

(assert (=> b!2110255 m!2567365))

(declare-fun m!2567367 () Bool)

(assert (=> b!2110265 m!2567367))

(declare-fun m!2567369 () Bool)

(assert (=> b!2110265 m!2567369))

(declare-fun m!2567371 () Bool)

(assert (=> b!2110245 m!2567371))

(declare-fun m!2567373 () Bool)

(assert (=> b!2110245 m!2567373))

(declare-fun m!2567375 () Bool)

(assert (=> mapNonEmpty!11103 m!2567375))

(declare-fun m!2567377 () Bool)

(assert (=> start!206324 m!2567377))

(declare-fun m!2567379 () Bool)

(assert (=> start!206324 m!2567379))

(declare-fun m!2567381 () Bool)

(assert (=> start!206324 m!2567381))

(declare-fun m!2567383 () Bool)

(assert (=> start!206324 m!2567383))

(declare-fun m!2567385 () Bool)

(assert (=> b!2110243 m!2567385))

(declare-fun m!2567387 () Bool)

(assert (=> b!2110243 m!2567387))

(declare-fun m!2567389 () Bool)

(assert (=> b!2110259 m!2567389))

(declare-fun m!2567391 () Bool)

(assert (=> mapNonEmpty!11102 m!2567391))

(check-sat (not b!2110259) (not b!2110258) (not b!2110253) b_and!170501 b_and!170495 (not b_next!61631) (not mapNonEmpty!11102) b_and!170493 (not mapNonEmpty!11103) (not b!2110266) (not b_next!61637) (not b!2110261) (not b_next!61633) (not b!2110265) (not b_next!61635) (not b!2110245) (not b!2110249) (not b!2110246) (not b!2110248) b_and!170499 (not b_next!61639) (not b!2110254) (not b!2110257) (not b!2110255) b_and!170491 (not b!2110243) b_and!170497 (not start!206324) (not b!2110263) (not b_next!61629))
(check-sat (not b_next!61635) b_and!170499 (not b_next!61639) b_and!170501 b_and!170495 b_and!170491 b_and!170497 (not b_next!61631) (not b_next!61629) b_and!170493 (not b_next!61637) (not b_next!61633))
(get-model)

(declare-fun d!642225 () Bool)

(declare-fun lt!792021 () Bool)

(assert (=> d!642225 (= lt!792021 (isEmpty!14300 (list!9471 (_1!13171 (_1!13172 lt!792014)))))))

(declare-fun isEmpty!14301 (Conc!7744) Bool)

(assert (=> d!642225 (= lt!792021 (isEmpty!14301 (c!339045 (_1!13171 (_1!13172 lt!792014)))))))

(assert (=> d!642225 (= (isEmpty!14299 (_1!13171 (_1!13172 lt!792014))) lt!792021)))

(declare-fun bs!441047 () Bool)

(assert (= bs!441047 d!642225))

(assert (=> bs!441047 m!2567333))

(assert (=> bs!441047 m!2567333))

(declare-fun m!2567393 () Bool)

(assert (=> bs!441047 m!2567393))

(declare-fun m!2567395 () Bool)

(assert (=> bs!441047 m!2567395))

(assert (=> b!2110254 d!642225))

(declare-fun b!2110296 () Bool)

(declare-fun e!1342154 () Bool)

(declare-fun e!1342158 () Bool)

(assert (=> b!2110296 (= e!1342154 e!1342158)))

(declare-fun res!916695 () Bool)

(assert (=> b!2110296 (=> (not res!916695) (not e!1342158))))

(declare-fun lt!792024 () Bool)

(assert (=> b!2110296 (= res!916695 (not lt!792024))))

(declare-fun b!2110297 () Bool)

(declare-fun e!1342159 () Bool)

(declare-fun nullable!1676 (Regex!5599) Bool)

(assert (=> b!2110297 (= e!1342159 (nullable!1676 (regex!4163 rule!236)))))

(declare-fun b!2110298 () Bool)

(declare-fun res!916691 () Bool)

(assert (=> b!2110298 (=> res!916691 e!1342154)))

(declare-fun e!1342155 () Bool)

(assert (=> b!2110298 (= res!916691 e!1342155)))

(declare-fun res!916693 () Bool)

(assert (=> b!2110298 (=> (not res!916693) (not e!1342155))))

(assert (=> b!2110298 (= res!916693 lt!792024)))

(declare-fun b!2110299 () Bool)

(declare-fun e!1342153 () Bool)

(declare-fun call!128431 () Bool)

(assert (=> b!2110299 (= e!1342153 (= lt!792024 call!128431))))

(declare-fun b!2110300 () Bool)

(declare-fun res!916692 () Bool)

(assert (=> b!2110300 (=> (not res!916692) (not e!1342155))))

(assert (=> b!2110300 (= res!916692 (not call!128431))))

(declare-fun b!2110301 () Bool)

(declare-fun e!1342156 () Bool)

(assert (=> b!2110301 (= e!1342153 e!1342156)))

(declare-fun c!339054 () Bool)

(assert (=> b!2110301 (= c!339054 ((_ is EmptyLang!5599) (regex!4163 rule!236)))))

(declare-fun b!2110302 () Bool)

(declare-fun e!1342157 () Bool)

(assert (=> b!2110302 (= e!1342158 e!1342157)))

(declare-fun res!916689 () Bool)

(assert (=> b!2110302 (=> res!916689 e!1342157)))

(assert (=> b!2110302 (= res!916689 call!128431)))

(declare-fun b!2110303 () Bool)

(declare-fun derivativeStep!1428 (Regex!5599 C!11344) Regex!5599)

(declare-fun head!4632 (List!23479) C!11344)

(declare-fun tail!3104 (List!23479) List!23479)

(assert (=> b!2110303 (= e!1342159 (matchR!2727 (derivativeStep!1428 (regex!4163 rule!236) (head!4632 (_1!13170 lt!792017))) (tail!3104 (_1!13170 lt!792017))))))

(declare-fun b!2110305 () Bool)

(declare-fun res!916694 () Bool)

(assert (=> b!2110305 (=> (not res!916694) (not e!1342155))))

(assert (=> b!2110305 (= res!916694 (isEmpty!14300 (tail!3104 (_1!13170 lt!792017))))))

(declare-fun b!2110306 () Bool)

(assert (=> b!2110306 (= e!1342156 (not lt!792024))))

(declare-fun b!2110307 () Bool)

(assert (=> b!2110307 (= e!1342157 (not (= (head!4632 (_1!13170 lt!792017)) (c!339046 (regex!4163 rule!236)))))))

(declare-fun b!2110308 () Bool)

(assert (=> b!2110308 (= e!1342155 (= (head!4632 (_1!13170 lt!792017)) (c!339046 (regex!4163 rule!236))))))

(declare-fun b!2110309 () Bool)

(declare-fun res!916696 () Bool)

(assert (=> b!2110309 (=> res!916696 e!1342154)))

(assert (=> b!2110309 (= res!916696 (not ((_ is ElementMatch!5599) (regex!4163 rule!236))))))

(assert (=> b!2110309 (= e!1342156 e!1342154)))

(declare-fun bm!128426 () Bool)

(assert (=> bm!128426 (= call!128431 (isEmpty!14300 (_1!13170 lt!792017)))))

(declare-fun b!2110304 () Bool)

(declare-fun res!916690 () Bool)

(assert (=> b!2110304 (=> res!916690 e!1342157)))

(assert (=> b!2110304 (= res!916690 (not (isEmpty!14300 (tail!3104 (_1!13170 lt!792017)))))))

(declare-fun d!642227 () Bool)

(assert (=> d!642227 e!1342153))

(declare-fun c!339055 () Bool)

(assert (=> d!642227 (= c!339055 ((_ is EmptyExpr!5599) (regex!4163 rule!236)))))

(assert (=> d!642227 (= lt!792024 e!1342159)))

(declare-fun c!339053 () Bool)

(assert (=> d!642227 (= c!339053 (isEmpty!14300 (_1!13170 lt!792017)))))

(declare-fun validRegex!2203 (Regex!5599) Bool)

(assert (=> d!642227 (validRegex!2203 (regex!4163 rule!236))))

(assert (=> d!642227 (= (matchR!2727 (regex!4163 rule!236) (_1!13170 lt!792017)) lt!792024)))

(assert (= (and d!642227 c!339053) b!2110297))

(assert (= (and d!642227 (not c!339053)) b!2110303))

(assert (= (and d!642227 c!339055) b!2110299))

(assert (= (and d!642227 (not c!339055)) b!2110301))

(assert (= (and b!2110301 c!339054) b!2110306))

(assert (= (and b!2110301 (not c!339054)) b!2110309))

(assert (= (and b!2110309 (not res!916696)) b!2110298))

(assert (= (and b!2110298 res!916693) b!2110300))

(assert (= (and b!2110300 res!916692) b!2110305))

(assert (= (and b!2110305 res!916694) b!2110308))

(assert (= (and b!2110298 (not res!916691)) b!2110296))

(assert (= (and b!2110296 res!916695) b!2110302))

(assert (= (and b!2110302 (not res!916689)) b!2110304))

(assert (= (and b!2110304 (not res!916690)) b!2110307))

(assert (= (or b!2110299 b!2110300 b!2110302) bm!128426))

(declare-fun m!2567397 () Bool)

(assert (=> b!2110297 m!2567397))

(declare-fun m!2567399 () Bool)

(assert (=> b!2110307 m!2567399))

(declare-fun m!2567401 () Bool)

(assert (=> b!2110304 m!2567401))

(assert (=> b!2110304 m!2567401))

(declare-fun m!2567403 () Bool)

(assert (=> b!2110304 m!2567403))

(assert (=> b!2110308 m!2567399))

(assert (=> bm!128426 m!2567341))

(assert (=> b!2110305 m!2567401))

(assert (=> b!2110305 m!2567401))

(assert (=> b!2110305 m!2567403))

(assert (=> b!2110303 m!2567399))

(assert (=> b!2110303 m!2567399))

(declare-fun m!2567405 () Bool)

(assert (=> b!2110303 m!2567405))

(assert (=> b!2110303 m!2567401))

(assert (=> b!2110303 m!2567405))

(assert (=> b!2110303 m!2567401))

(declare-fun m!2567407 () Bool)

(assert (=> b!2110303 m!2567407))

(assert (=> d!642227 m!2567341))

(declare-fun m!2567409 () Bool)

(assert (=> d!642227 m!2567409))

(assert (=> b!2110253 d!642227))

(declare-fun d!642229 () Bool)

(declare-fun c!339058 () Bool)

(assert (=> d!642229 (= c!339058 ((_ is Node!7744) (c!339045 input!1654)))))

(declare-fun e!1342164 () Bool)

(assert (=> d!642229 (= (inv!30956 (c!339045 input!1654)) e!1342164)))

(declare-fun b!2110316 () Bool)

(declare-fun inv!30961 (Conc!7744) Bool)

(assert (=> b!2110316 (= e!1342164 (inv!30961 (c!339045 input!1654)))))

(declare-fun b!2110317 () Bool)

(declare-fun e!1342165 () Bool)

(assert (=> b!2110317 (= e!1342164 e!1342165)))

(declare-fun res!916699 () Bool)

(assert (=> b!2110317 (= res!916699 (not ((_ is Leaf!11311) (c!339045 input!1654))))))

(assert (=> b!2110317 (=> res!916699 e!1342165)))

(declare-fun b!2110318 () Bool)

(declare-fun inv!30962 (Conc!7744) Bool)

(assert (=> b!2110318 (= e!1342165 (inv!30962 (c!339045 input!1654)))))

(assert (= (and d!642229 c!339058) b!2110316))

(assert (= (and d!642229 (not c!339058)) b!2110317))

(assert (= (and b!2110317 (not res!916699)) b!2110318))

(declare-fun m!2567411 () Bool)

(assert (=> b!2110316 m!2567411))

(declare-fun m!2567413 () Bool)

(assert (=> b!2110318 m!2567413))

(assert (=> b!2110263 d!642229))

(declare-fun d!642231 () Bool)

(declare-fun res!916702 () Bool)

(declare-fun e!1342168 () Bool)

(assert (=> d!642231 (=> (not res!916702) (not e!1342168))))

(assert (=> d!642231 (= res!916702 ((_ is HashMap!2214) (cache!2595 cacheDown!753)))))

(assert (=> d!642231 (= (inv!30958 cacheDown!753) e!1342168)))

(declare-fun b!2110321 () Bool)

(declare-fun validCacheMapDown!231 (MutableMap!2214) Bool)

(assert (=> b!2110321 (= e!1342168 (validCacheMapDown!231 (cache!2595 cacheDown!753)))))

(assert (= (and d!642231 res!916702) b!2110321))

(declare-fun m!2567415 () Bool)

(assert (=> b!2110321 m!2567415))

(assert (=> start!206324 d!642231))

(declare-fun d!642233 () Bool)

(declare-fun isBalanced!2437 (Conc!7744) Bool)

(assert (=> d!642233 (= (inv!30959 input!1654) (isBalanced!2437 (c!339045 input!1654)))))

(declare-fun bs!441048 () Bool)

(assert (= bs!441048 d!642233))

(declare-fun m!2567417 () Bool)

(assert (=> bs!441048 m!2567417))

(assert (=> start!206324 d!642233))

(declare-fun d!642235 () Bool)

(assert (=> d!642235 (= (inv!30959 totalInput!548) (isBalanced!2437 (c!339045 totalInput!548)))))

(declare-fun bs!441049 () Bool)

(assert (= bs!441049 d!642235))

(declare-fun m!2567419 () Bool)

(assert (=> bs!441049 m!2567419))

(assert (=> start!206324 d!642235))

(declare-fun d!642237 () Bool)

(declare-fun res!916705 () Bool)

(declare-fun e!1342171 () Bool)

(assert (=> d!642237 (=> (not res!916705) (not e!1342171))))

(assert (=> d!642237 (= res!916705 ((_ is HashMap!2215) (cache!2596 cacheUp!740)))))

(assert (=> d!642237 (= (inv!30960 cacheUp!740) e!1342171)))

(declare-fun b!2110324 () Bool)

(declare-fun validCacheMapUp!233 (MutableMap!2215) Bool)

(assert (=> b!2110324 (= e!1342171 (validCacheMapUp!233 (cache!2596 cacheUp!740)))))

(assert (= (and d!642237 res!916705) b!2110324))

(declare-fun m!2567421 () Bool)

(assert (=> b!2110324 m!2567421))

(assert (=> start!206324 d!642237))

(declare-fun d!642239 () Bool)

(declare-fun res!916710 () Bool)

(declare-fun e!1342174 () Bool)

(assert (=> d!642239 (=> (not res!916710) (not e!1342174))))

(assert (=> d!642239 (= res!916710 (validRegex!2203 (regex!4163 rule!236)))))

(assert (=> d!642239 (= (ruleValid!1285 thiss!16399 rule!236) e!1342174)))

(declare-fun b!2110329 () Bool)

(declare-fun res!916711 () Bool)

(assert (=> b!2110329 (=> (not res!916711) (not e!1342174))))

(assert (=> b!2110329 (= res!916711 (not (nullable!1676 (regex!4163 rule!236))))))

(declare-fun b!2110330 () Bool)

(assert (=> b!2110330 (= e!1342174 (not (= (tag!4653 rule!236) (String!26704 ""))))))

(assert (= (and d!642239 res!916710) b!2110329))

(assert (= (and b!2110329 res!916711) b!2110330))

(assert (=> d!642239 m!2567409))

(assert (=> b!2110329 m!2567397))

(assert (=> b!2110255 d!642239))

(declare-fun d!642241 () Bool)

(assert (=> d!642241 (= (array_inv!2533 (_keys!2597 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) (bvsge (size!18254 (_keys!2597 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110245 d!642241))

(declare-fun d!642243 () Bool)

(assert (=> d!642243 (= (array_inv!2534 (_values!2580 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) (bvsge (size!18255 (_values!2580 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110245 d!642243))

(declare-fun d!642245 () Bool)

(assert (=> d!642245 (= (valid!1816 cacheDown!753) (validCacheMapDown!231 (cache!2595 cacheDown!753)))))

(declare-fun bs!441050 () Bool)

(assert (= bs!441050 d!642245))

(assert (=> bs!441050 m!2567415))

(assert (=> b!2110259 d!642245))

(declare-fun d!642247 () Bool)

(assert (=> d!642247 (= (inv!30953 (tag!4653 rule!236)) (= (mod (str.len (value!130277 (tag!4653 rule!236))) 2) 0))))

(assert (=> b!2110243 d!642247))

(declare-fun d!642249 () Bool)

(declare-fun res!916714 () Bool)

(declare-fun e!1342177 () Bool)

(assert (=> d!642249 (=> (not res!916714) (not e!1342177))))

(declare-fun semiInverseModEq!1663 (Int Int) Bool)

(assert (=> d!642249 (= res!916714 (semiInverseModEq!1663 (toChars!5733 (transformation!4163 rule!236)) (toValue!5874 (transformation!4163 rule!236))))))

(assert (=> d!642249 (= (inv!30955 (transformation!4163 rule!236)) e!1342177)))

(declare-fun b!2110333 () Bool)

(declare-fun equivClasses!1590 (Int Int) Bool)

(assert (=> b!2110333 (= e!1342177 (equivClasses!1590 (toChars!5733 (transformation!4163 rule!236)) (toValue!5874 (transformation!4163 rule!236))))))

(assert (= (and d!642249 res!916714) b!2110333))

(declare-fun m!2567423 () Bool)

(assert (=> d!642249 m!2567423))

(declare-fun m!2567425 () Bool)

(assert (=> b!2110333 m!2567425))

(assert (=> b!2110243 d!642249))

(declare-fun d!642251 () Bool)

(assert (=> d!642251 (= (array_inv!2533 (_keys!2598 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) (bvsge (size!18254 (_keys!2598 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110248 d!642251))

(declare-fun d!642253 () Bool)

(assert (=> d!642253 (= (array_inv!2535 (_values!2581 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) (bvsge (size!18256 (_values!2581 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740))))))) #b00000000000000000000000000000000))))

(assert (=> b!2110248 d!642253))

(declare-fun b!2110362 () Bool)

(declare-fun e!1342200 () tuple2!22748)

(assert (=> b!2110362 (= e!1342200 (tuple2!22749 Nil!23395 lt!792012))))

(declare-fun b!2110363 () Bool)

(declare-fun e!1342197 () tuple2!22748)

(declare-fun call!128453 () tuple2!22748)

(assert (=> b!2110363 (= e!1342197 call!128453)))

(declare-fun b!2110364 () Bool)

(declare-fun e!1342199 () tuple2!22748)

(declare-fun e!1342201 () tuple2!22748)

(assert (=> b!2110364 (= e!1342199 e!1342201)))

(declare-fun c!339075 () Bool)

(assert (=> b!2110364 (= c!339075 (= (size!18259 Nil!23395) (size!18259 lt!792012)))))

(declare-fun bm!128443 () Bool)

(declare-fun call!128452 () List!23479)

(assert (=> bm!128443 (= call!128452 (tail!3104 lt!792012))))

(declare-fun d!642255 () Bool)

(declare-fun e!1342195 () Bool)

(assert (=> d!642255 e!1342195))

(declare-fun res!916719 () Bool)

(assert (=> d!642255 (=> (not res!916719) (not e!1342195))))

(declare-fun lt!792102 () tuple2!22748)

(declare-fun ++!6309 (List!23479 List!23479) List!23479)

(assert (=> d!642255 (= res!916719 (= (++!6309 (_1!13170 lt!792102) (_2!13170 lt!792102)) lt!792012))))

(assert (=> d!642255 (= lt!792102 e!1342199)))

(declare-fun c!339072 () Bool)

(declare-fun lostCause!657 (Regex!5599) Bool)

(assert (=> d!642255 (= c!339072 (lostCause!657 (regex!4163 rule!236)))))

(declare-fun lt!792094 () Unit!37504)

(declare-fun Unit!37506 () Unit!37504)

(assert (=> d!642255 (= lt!792094 Unit!37506)))

(declare-fun getSuffix!1022 (List!23479 List!23479) List!23479)

(assert (=> d!642255 (= (getSuffix!1022 lt!792012 Nil!23395) lt!792012)))

(declare-fun lt!792081 () Unit!37504)

(declare-fun lt!792091 () Unit!37504)

(assert (=> d!642255 (= lt!792081 lt!792091)))

(declare-fun lt!792100 () List!23479)

(assert (=> d!642255 (= lt!792012 lt!792100)))

(declare-fun lemmaSamePrefixThenSameSuffix!942 (List!23479 List!23479 List!23479 List!23479 List!23479) Unit!37504)

(assert (=> d!642255 (= lt!792091 (lemmaSamePrefixThenSameSuffix!942 Nil!23395 lt!792012 Nil!23395 lt!792100 lt!792012))))

(assert (=> d!642255 (= lt!792100 (getSuffix!1022 lt!792012 Nil!23395))))

(declare-fun lt!792090 () Unit!37504)

(declare-fun lt!792099 () Unit!37504)

(assert (=> d!642255 (= lt!792090 lt!792099)))

(declare-fun isPrefix!2079 (List!23479 List!23479) Bool)

(assert (=> d!642255 (isPrefix!2079 Nil!23395 (++!6309 Nil!23395 lt!792012))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1362 (List!23479 List!23479) Unit!37504)

(assert (=> d!642255 (= lt!792099 (lemmaConcatTwoListThenFirstIsPrefix!1362 Nil!23395 lt!792012))))

(assert (=> d!642255 (validRegex!2203 (regex!4163 rule!236))))

(assert (=> d!642255 (= (findLongestMatchInner!592 (regex!4163 rule!236) Nil!23395 (size!18259 Nil!23395) lt!792012 lt!792012 (size!18259 lt!792012)) lt!792102)))

(declare-fun b!2110365 () Bool)

(declare-fun c!339076 () Bool)

(declare-fun call!128454 () Bool)

(assert (=> b!2110365 (= c!339076 call!128454)))

(declare-fun lt!792082 () Unit!37504)

(declare-fun lt!792087 () Unit!37504)

(assert (=> b!2110365 (= lt!792082 lt!792087)))

(assert (=> b!2110365 (= lt!792012 Nil!23395)))

(declare-fun call!128448 () Unit!37504)

(assert (=> b!2110365 (= lt!792087 call!128448)))

(declare-fun lt!792089 () Unit!37504)

(declare-fun lt!792104 () Unit!37504)

(assert (=> b!2110365 (= lt!792089 lt!792104)))

(declare-fun call!128455 () Bool)

(assert (=> b!2110365 call!128455))

(declare-fun call!128449 () Unit!37504)

(assert (=> b!2110365 (= lt!792104 call!128449)))

(declare-fun e!1342194 () tuple2!22748)

(assert (=> b!2110365 (= e!1342201 e!1342194)))

(declare-fun bm!128444 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!327 (List!23479 List!23479 List!23479) Unit!37504)

(assert (=> bm!128444 (= call!128448 (lemmaIsPrefixSameLengthThenSameList!327 lt!792012 Nil!23395 lt!792012))))

(declare-fun b!2110366 () Bool)

(declare-fun c!339074 () Bool)

(assert (=> b!2110366 (= c!339074 call!128454)))

(declare-fun lt!792097 () Unit!37504)

(declare-fun lt!792084 () Unit!37504)

(assert (=> b!2110366 (= lt!792097 lt!792084)))

(declare-fun lt!792096 () C!11344)

(declare-fun lt!792093 () List!23479)

(assert (=> b!2110366 (= (++!6309 (++!6309 Nil!23395 (Cons!23395 lt!792096 Nil!23395)) lt!792093) lt!792012)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!495 (List!23479 C!11344 List!23479 List!23479) Unit!37504)

(assert (=> b!2110366 (= lt!792084 (lemmaMoveElementToOtherListKeepsConcatEq!495 Nil!23395 lt!792096 lt!792093 lt!792012))))

(assert (=> b!2110366 (= lt!792093 (tail!3104 lt!792012))))

(assert (=> b!2110366 (= lt!792096 (head!4632 lt!792012))))

(declare-fun lt!792083 () Unit!37504)

(declare-fun lt!792098 () Unit!37504)

(assert (=> b!2110366 (= lt!792083 lt!792098)))

(assert (=> b!2110366 (isPrefix!2079 (++!6309 Nil!23395 (Cons!23395 (head!4632 (getSuffix!1022 lt!792012 Nil!23395)) Nil!23395)) lt!792012)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!367 (List!23479 List!23479) Unit!37504)

(assert (=> b!2110366 (= lt!792098 (lemmaAddHeadSuffixToPrefixStillPrefix!367 Nil!23395 lt!792012))))

(declare-fun lt!792107 () Unit!37504)

(declare-fun lt!792085 () Unit!37504)

(assert (=> b!2110366 (= lt!792107 lt!792085)))

(assert (=> b!2110366 (= lt!792085 (lemmaAddHeadSuffixToPrefixStillPrefix!367 Nil!23395 lt!792012))))

(declare-fun lt!792092 () List!23479)

(assert (=> b!2110366 (= lt!792092 (++!6309 Nil!23395 (Cons!23395 (head!4632 lt!792012) Nil!23395)))))

(declare-fun lt!792106 () Unit!37504)

(declare-fun e!1342196 () Unit!37504)

(assert (=> b!2110366 (= lt!792106 e!1342196)))

(declare-fun c!339071 () Bool)

(assert (=> b!2110366 (= c!339071 (= (size!18259 Nil!23395) (size!18259 lt!792012)))))

(declare-fun lt!792086 () Unit!37504)

(declare-fun lt!792101 () Unit!37504)

(assert (=> b!2110366 (= lt!792086 lt!792101)))

(assert (=> b!2110366 (<= (size!18259 Nil!23395) (size!18259 lt!792012))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!170 (List!23479 List!23479) Unit!37504)

(assert (=> b!2110366 (= lt!792101 (lemmaIsPrefixThenSmallerEqSize!170 Nil!23395 lt!792012))))

(assert (=> b!2110366 (= e!1342201 e!1342197)))

(declare-fun bm!128445 () Bool)

(declare-fun call!128450 () Regex!5599)

(declare-fun call!128451 () C!11344)

(assert (=> bm!128445 (= call!128450 (derivativeStep!1428 (regex!4163 rule!236) call!128451))))

(declare-fun bm!128446 () Bool)

(assert (=> bm!128446 (= call!128453 (findLongestMatchInner!592 call!128450 lt!792092 (+ (size!18259 Nil!23395) 1) call!128452 lt!792012 (size!18259 lt!792012)))))

(declare-fun b!2110367 () Bool)

(declare-fun Unit!37507 () Unit!37504)

(assert (=> b!2110367 (= e!1342196 Unit!37507)))

(declare-fun lt!792088 () Unit!37504)

(assert (=> b!2110367 (= lt!792088 call!128449)))

(assert (=> b!2110367 call!128455))

(declare-fun lt!792095 () Unit!37504)

(assert (=> b!2110367 (= lt!792095 lt!792088)))

(declare-fun lt!792105 () Unit!37504)

(assert (=> b!2110367 (= lt!792105 call!128448)))

(assert (=> b!2110367 (= lt!792012 Nil!23395)))

(declare-fun lt!792103 () Unit!37504)

(assert (=> b!2110367 (= lt!792103 lt!792105)))

(assert (=> b!2110367 false))

(declare-fun b!2110368 () Bool)

(assert (=> b!2110368 (= e!1342199 (tuple2!22749 Nil!23395 lt!792012))))

(declare-fun b!2110369 () Bool)

(assert (=> b!2110369 (= e!1342197 e!1342200)))

(declare-fun lt!792108 () tuple2!22748)

(assert (=> b!2110369 (= lt!792108 call!128453)))

(declare-fun c!339073 () Bool)

(assert (=> b!2110369 (= c!339073 (isEmpty!14300 (_1!13170 lt!792108)))))

(declare-fun b!2110370 () Bool)

(declare-fun Unit!37508 () Unit!37504)

(assert (=> b!2110370 (= e!1342196 Unit!37508)))

(declare-fun b!2110371 () Bool)

(assert (=> b!2110371 (= e!1342194 (tuple2!22749 Nil!23395 lt!792012))))

(declare-fun bm!128447 () Bool)

(assert (=> bm!128447 (= call!128455 (isPrefix!2079 lt!792012 lt!792012))))

(declare-fun b!2110372 () Bool)

(assert (=> b!2110372 (= e!1342194 (tuple2!22749 Nil!23395 Nil!23395))))

(declare-fun b!2110373 () Bool)

(declare-fun e!1342198 () Bool)

(assert (=> b!2110373 (= e!1342198 (>= (size!18259 (_1!13170 lt!792102)) (size!18259 Nil!23395)))))

(declare-fun bm!128448 () Bool)

(assert (=> bm!128448 (= call!128454 (nullable!1676 (regex!4163 rule!236)))))

(declare-fun bm!128449 () Bool)

(declare-fun lemmaIsPrefixRefl!1397 (List!23479 List!23479) Unit!37504)

(assert (=> bm!128449 (= call!128449 (lemmaIsPrefixRefl!1397 lt!792012 lt!792012))))

(declare-fun b!2110374 () Bool)

(assert (=> b!2110374 (= e!1342195 e!1342198)))

(declare-fun res!916720 () Bool)

(assert (=> b!2110374 (=> res!916720 e!1342198)))

(assert (=> b!2110374 (= res!916720 (isEmpty!14300 (_1!13170 lt!792102)))))

(declare-fun bm!128450 () Bool)

(assert (=> bm!128450 (= call!128451 (head!4632 lt!792012))))

(declare-fun b!2110375 () Bool)

(assert (=> b!2110375 (= e!1342200 lt!792108)))

(assert (= (and d!642255 c!339072) b!2110368))

(assert (= (and d!642255 (not c!339072)) b!2110364))

(assert (= (and b!2110364 c!339075) b!2110365))

(assert (= (and b!2110364 (not c!339075)) b!2110366))

(assert (= (and b!2110365 c!339076) b!2110372))

(assert (= (and b!2110365 (not c!339076)) b!2110371))

(assert (= (and b!2110366 c!339071) b!2110367))

(assert (= (and b!2110366 (not c!339071)) b!2110370))

(assert (= (and b!2110366 c!339074) b!2110369))

(assert (= (and b!2110366 (not c!339074)) b!2110363))

(assert (= (and b!2110369 c!339073) b!2110362))

(assert (= (and b!2110369 (not c!339073)) b!2110375))

(assert (= (or b!2110369 b!2110363) bm!128443))

(assert (= (or b!2110369 b!2110363) bm!128450))

(assert (= (or b!2110369 b!2110363) bm!128445))

(assert (= (or b!2110369 b!2110363) bm!128446))

(assert (= (or b!2110365 b!2110367) bm!128449))

(assert (= (or b!2110365 b!2110367) bm!128444))

(assert (= (or b!2110365 b!2110366) bm!128448))

(assert (= (or b!2110365 b!2110367) bm!128447))

(assert (= (and d!642255 res!916719) b!2110374))

(assert (= (and b!2110374 (not res!916720)) b!2110373))

(declare-fun m!2567427 () Bool)

(assert (=> bm!128449 m!2567427))

(declare-fun m!2567429 () Bool)

(assert (=> bm!128445 m!2567429))

(declare-fun m!2567431 () Bool)

(assert (=> bm!128444 m!2567431))

(declare-fun m!2567433 () Bool)

(assert (=> b!2110366 m!2567433))

(declare-fun m!2567435 () Bool)

(assert (=> b!2110366 m!2567435))

(declare-fun m!2567437 () Bool)

(assert (=> b!2110366 m!2567437))

(declare-fun m!2567439 () Bool)

(assert (=> b!2110366 m!2567439))

(declare-fun m!2567441 () Bool)

(assert (=> b!2110366 m!2567441))

(assert (=> b!2110366 m!2567433))

(declare-fun m!2567443 () Bool)

(assert (=> b!2110366 m!2567443))

(declare-fun m!2567445 () Bool)

(assert (=> b!2110366 m!2567445))

(declare-fun m!2567447 () Bool)

(assert (=> b!2110366 m!2567447))

(declare-fun m!2567449 () Bool)

(assert (=> b!2110366 m!2567449))

(declare-fun m!2567451 () Bool)

(assert (=> b!2110366 m!2567451))

(assert (=> b!2110366 m!2567331))

(assert (=> b!2110366 m!2567345))

(assert (=> b!2110366 m!2567437))

(declare-fun m!2567453 () Bool)

(assert (=> b!2110366 m!2567453))

(assert (=> b!2110366 m!2567451))

(declare-fun m!2567455 () Bool)

(assert (=> b!2110366 m!2567455))

(assert (=> bm!128448 m!2567397))

(declare-fun m!2567457 () Bool)

(assert (=> b!2110374 m!2567457))

(declare-fun m!2567459 () Bool)

(assert (=> b!2110369 m!2567459))

(declare-fun m!2567461 () Bool)

(assert (=> d!642255 m!2567461))

(declare-fun m!2567463 () Bool)

(assert (=> d!642255 m!2567463))

(declare-fun m!2567465 () Bool)

(assert (=> d!642255 m!2567465))

(declare-fun m!2567467 () Bool)

(assert (=> d!642255 m!2567467))

(assert (=> d!642255 m!2567465))

(assert (=> d!642255 m!2567437))

(declare-fun m!2567469 () Bool)

(assert (=> d!642255 m!2567469))

(declare-fun m!2567471 () Bool)

(assert (=> d!642255 m!2567471))

(assert (=> d!642255 m!2567409))

(assert (=> bm!128450 m!2567439))

(assert (=> bm!128443 m!2567445))

(declare-fun m!2567473 () Bool)

(assert (=> b!2110373 m!2567473))

(assert (=> b!2110373 m!2567331))

(assert (=> bm!128446 m!2567345))

(declare-fun m!2567475 () Bool)

(assert (=> bm!128446 m!2567475))

(declare-fun m!2567477 () Bool)

(assert (=> bm!128447 m!2567477))

(assert (=> b!2110258 d!642255))

(declare-fun d!642257 () Bool)

(declare-fun lt!792111 () Int)

(assert (=> d!642257 (>= lt!792111 0)))

(declare-fun e!1342204 () Int)

(assert (=> d!642257 (= lt!792111 e!1342204)))

(declare-fun c!339079 () Bool)

(assert (=> d!642257 (= c!339079 ((_ is Nil!23395) lt!792012))))

(assert (=> d!642257 (= (size!18259 lt!792012) lt!792111)))

(declare-fun b!2110380 () Bool)

(assert (=> b!2110380 (= e!1342204 0)))

(declare-fun b!2110381 () Bool)

(assert (=> b!2110381 (= e!1342204 (+ 1 (size!18259 (t!195978 lt!792012))))))

(assert (= (and d!642257 c!339079) b!2110380))

(assert (= (and d!642257 (not c!339079)) b!2110381))

(declare-fun m!2567479 () Bool)

(assert (=> b!2110381 m!2567479))

(assert (=> b!2110258 d!642257))

(declare-fun d!642259 () Bool)

(assert (=> d!642259 (= (isEmpty!14300 (_1!13170 lt!792017)) ((_ is Nil!23395) (_1!13170 lt!792017)))))

(assert (=> b!2110258 d!642259))

(declare-fun d!642261 () Bool)

(declare-fun lt!792114 () Int)

(assert (=> d!642261 (= lt!792114 (size!18259 (list!9471 (_1!13171 (_1!13172 lt!792014)))))))

(declare-fun size!18260 (Conc!7744) Int)

(assert (=> d!642261 (= lt!792114 (size!18260 (c!339045 (_1!13171 (_1!13172 lt!792014)))))))

(assert (=> d!642261 (= (size!18258 (_1!13171 (_1!13172 lt!792014))) lt!792114)))

(declare-fun bs!441051 () Bool)

(assert (= bs!441051 d!642261))

(assert (=> bs!441051 m!2567333))

(assert (=> bs!441051 m!2567333))

(declare-fun m!2567481 () Bool)

(assert (=> bs!441051 m!2567481))

(declare-fun m!2567483 () Bool)

(assert (=> bs!441051 m!2567483))

(assert (=> b!2110258 d!642261))

(declare-fun d!642263 () Bool)

(declare-fun dynLambda!11265 (Int BalanceConc!15250) TokenValue!4299)

(assert (=> d!642263 (= (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) (dynLambda!11265 (toValue!5874 (transformation!4163 rule!236)) (_1!13171 (_1!13172 lt!792014))))))

(declare-fun b_lambda!70351 () Bool)

(assert (=> (not b_lambda!70351) (not d!642263)))

(declare-fun t!195983 () Bool)

(declare-fun tb!132273 () Bool)

(assert (=> (and b!2110264 (= (toValue!5874 (transformation!4163 rule!236)) (toValue!5874 (transformation!4163 rule!236))) t!195983) tb!132273))

(declare-fun result!158612 () Bool)

(declare-fun inv!21 (TokenValue!4299) Bool)

(assert (=> tb!132273 (= result!158612 (inv!21 (dynLambda!11265 (toValue!5874 (transformation!4163 rule!236)) (_1!13171 (_1!13172 lt!792014)))))))

(declare-fun m!2567485 () Bool)

(assert (=> tb!132273 m!2567485))

(assert (=> d!642263 t!195983))

(declare-fun b_and!170503 () Bool)

(assert (= b_and!170495 (and (=> t!195983 result!158612) b_and!170503)))

(declare-fun m!2567487 () Bool)

(assert (=> d!642263 m!2567487))

(assert (=> b!2110258 d!642263))

(declare-fun d!642265 () Bool)

(declare-fun list!9472 (Conc!7744) List!23479)

(assert (=> d!642265 (= (list!9471 (_1!13171 (_1!13172 lt!792014))) (list!9472 (c!339045 (_1!13171 (_1!13172 lt!792014)))))))

(declare-fun bs!441052 () Bool)

(assert (= bs!441052 d!642265))

(declare-fun m!2567489 () Bool)

(assert (=> bs!441052 m!2567489))

(assert (=> b!2110258 d!642265))

(declare-fun d!642267 () Bool)

(declare-fun res!916725 () Bool)

(declare-fun e!1342210 () Bool)

(assert (=> d!642267 (=> (not res!916725) (not e!1342210))))

(assert (=> d!642267 (= res!916725 (not (isEmpty!14300 (originalCharacters!4936 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))))))))

(assert (=> d!642267 (= (inv!30957 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))) e!1342210)))

(declare-fun b!2110388 () Bool)

(declare-fun res!916726 () Bool)

(assert (=> b!2110388 (=> (not res!916726) (not e!1342210))))

(declare-fun dynLambda!11266 (Int TokenValue!4299) BalanceConc!15250)

(assert (=> b!2110388 (= res!916726 (= (originalCharacters!4936 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))) (list!9471 (dynLambda!11266 (toChars!5733 (transformation!4163 (rule!6463 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))))) (value!130278 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014)))))))))))

(declare-fun b!2110389 () Bool)

(assert (=> b!2110389 (= e!1342210 (= (size!18257 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))) (size!18259 (originalCharacters!4936 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))))))))

(assert (= (and d!642267 res!916725) b!2110388))

(assert (= (and b!2110388 res!916726) b!2110389))

(declare-fun b_lambda!70353 () Bool)

(assert (=> (not b_lambda!70353) (not b!2110388)))

(declare-fun tb!132275 () Bool)

(declare-fun t!195985 () Bool)

(assert (=> (and b!2110264 (= (toChars!5733 (transformation!4163 rule!236)) (toChars!5733 (transformation!4163 (rule!6463 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014)))))))) t!195985) tb!132275))

(declare-fun b!2110394 () Bool)

(declare-fun e!1342213 () Bool)

(declare-fun tp!642043 () Bool)

(assert (=> b!2110394 (= e!1342213 (and (inv!30956 (c!339045 (dynLambda!11266 (toChars!5733 (transformation!4163 (rule!6463 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))))) (value!130278 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014)))))))) tp!642043))))

(declare-fun result!158616 () Bool)

(assert (=> tb!132275 (= result!158616 (and (inv!30959 (dynLambda!11266 (toChars!5733 (transformation!4163 (rule!6463 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))))) (value!130278 (Token!7811 (apply!5900 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) rule!236 (size!18258 (_1!13171 (_1!13172 lt!792014))) (list!9471 (_1!13171 (_1!13172 lt!792014))))))) e!1342213))))

(assert (= tb!132275 b!2110394))

(declare-fun m!2567491 () Bool)

(assert (=> b!2110394 m!2567491))

(declare-fun m!2567493 () Bool)

(assert (=> tb!132275 m!2567493))

(assert (=> b!2110388 t!195985))

(declare-fun b_and!170505 () Bool)

(assert (= b_and!170497 (and (=> t!195985 result!158616) b_and!170505)))

(declare-fun m!2567495 () Bool)

(assert (=> d!642267 m!2567495))

(declare-fun m!2567497 () Bool)

(assert (=> b!2110388 m!2567497))

(assert (=> b!2110388 m!2567497))

(declare-fun m!2567499 () Bool)

(assert (=> b!2110388 m!2567499))

(declare-fun m!2567501 () Bool)

(assert (=> b!2110389 m!2567501))

(assert (=> b!2110258 d!642267))

(declare-fun b!2110399 () Bool)

(declare-fun e!1342216 () Bool)

(assert (=> b!2110399 (= e!1342216 true)))

(declare-fun d!642269 () Bool)

(assert (=> d!642269 e!1342216))

(assert (= d!642269 b!2110399))

(declare-fun order!14467 () Int)

(declare-fun lambda!78169 () Int)

(declare-fun order!14469 () Int)

(declare-fun dynLambda!11267 (Int Int) Int)

(declare-fun dynLambda!11268 (Int Int) Int)

(assert (=> b!2110399 (< (dynLambda!11267 order!14467 (toValue!5874 (transformation!4163 rule!236))) (dynLambda!11268 order!14469 lambda!78169))))

(declare-fun order!14471 () Int)

(declare-fun dynLambda!11269 (Int Int) Int)

(assert (=> b!2110399 (< (dynLambda!11269 order!14471 (toChars!5733 (transformation!4163 rule!236))) (dynLambda!11268 order!14469 lambda!78169))))

(assert (=> d!642269 (= (list!9471 (dynLambda!11266 (toChars!5733 (transformation!4163 rule!236)) (dynLambda!11265 (toValue!5874 (transformation!4163 rule!236)) (_1!13171 (_1!13172 lt!792014))))) (list!9471 (_1!13171 (_1!13172 lt!792014))))))

(declare-fun lt!792117 () Unit!37504)

(declare-fun ForallOf!478 (Int BalanceConc!15250) Unit!37504)

(assert (=> d!642269 (= lt!792117 (ForallOf!478 lambda!78169 (_1!13171 (_1!13172 lt!792014))))))

(assert (=> d!642269 (= (lemmaSemiInverse!990 (transformation!4163 rule!236) (_1!13171 (_1!13172 lt!792014))) lt!792117)))

(declare-fun b_lambda!70355 () Bool)

(assert (=> (not b_lambda!70355) (not d!642269)))

(declare-fun t!195987 () Bool)

(declare-fun tb!132277 () Bool)

(assert (=> (and b!2110264 (= (toChars!5733 (transformation!4163 rule!236)) (toChars!5733 (transformation!4163 rule!236))) t!195987) tb!132277))

(declare-fun e!1342217 () Bool)

(declare-fun tp!642044 () Bool)

(declare-fun b!2110400 () Bool)

(assert (=> b!2110400 (= e!1342217 (and (inv!30956 (c!339045 (dynLambda!11266 (toChars!5733 (transformation!4163 rule!236)) (dynLambda!11265 (toValue!5874 (transformation!4163 rule!236)) (_1!13171 (_1!13172 lt!792014)))))) tp!642044))))

(declare-fun result!158620 () Bool)

(assert (=> tb!132277 (= result!158620 (and (inv!30959 (dynLambda!11266 (toChars!5733 (transformation!4163 rule!236)) (dynLambda!11265 (toValue!5874 (transformation!4163 rule!236)) (_1!13171 (_1!13172 lt!792014))))) e!1342217))))

(assert (= tb!132277 b!2110400))

(declare-fun m!2567503 () Bool)

(assert (=> b!2110400 m!2567503))

(declare-fun m!2567505 () Bool)

(assert (=> tb!132277 m!2567505))

(assert (=> d!642269 t!195987))

(declare-fun b_and!170507 () Bool)

(assert (= b_and!170505 (and (=> t!195987 result!158620) b_and!170507)))

(declare-fun b_lambda!70357 () Bool)

(assert (=> (not b_lambda!70357) (not d!642269)))

(assert (=> d!642269 t!195983))

(declare-fun b_and!170509 () Bool)

(assert (= b_and!170503 (and (=> t!195983 result!158612) b_and!170509)))

(declare-fun m!2567507 () Bool)

(assert (=> d!642269 m!2567507))

(assert (=> d!642269 m!2567487))

(declare-fun m!2567509 () Bool)

(assert (=> d!642269 m!2567509))

(assert (=> d!642269 m!2567509))

(declare-fun m!2567511 () Bool)

(assert (=> d!642269 m!2567511))

(assert (=> d!642269 m!2567333))

(assert (=> d!642269 m!2567487))

(assert (=> b!2110258 d!642269))

(declare-fun d!642271 () Bool)

(declare-fun e!1342220 () Bool)

(assert (=> d!642271 e!1342220))

(declare-fun res!916729 () Bool)

(assert (=> d!642271 (=> res!916729 e!1342220)))

(assert (=> d!642271 (= res!916729 (isEmpty!14300 (_1!13170 (findLongestMatchInner!592 (regex!4163 rule!236) Nil!23395 (size!18259 Nil!23395) lt!792012 lt!792012 (size!18259 lt!792012)))))))

(declare-fun lt!792120 () Unit!37504)

(declare-fun choose!12639 (Regex!5599 List!23479) Unit!37504)

(assert (=> d!642271 (= lt!792120 (choose!12639 (regex!4163 rule!236) lt!792012))))

(assert (=> d!642271 (validRegex!2203 (regex!4163 rule!236))))

(assert (=> d!642271 (= (longestMatchIsAcceptedByMatchOrIsEmpty!576 (regex!4163 rule!236) lt!792012) lt!792120)))

(declare-fun b!2110403 () Bool)

(assert (=> b!2110403 (= e!1342220 (matchR!2727 (regex!4163 rule!236) (_1!13170 (findLongestMatchInner!592 (regex!4163 rule!236) Nil!23395 (size!18259 Nil!23395) lt!792012 lt!792012 (size!18259 lt!792012)))))))

(assert (= (and d!642271 (not res!916729)) b!2110403))

(assert (=> d!642271 m!2567409))

(assert (=> d!642271 m!2567331))

(declare-fun m!2567513 () Bool)

(assert (=> d!642271 m!2567513))

(assert (=> d!642271 m!2567345))

(declare-fun m!2567515 () Bool)

(assert (=> d!642271 m!2567515))

(assert (=> d!642271 m!2567331))

(assert (=> d!642271 m!2567345))

(assert (=> d!642271 m!2567347))

(assert (=> b!2110403 m!2567331))

(assert (=> b!2110403 m!2567345))

(assert (=> b!2110403 m!2567331))

(assert (=> b!2110403 m!2567345))

(assert (=> b!2110403 m!2567347))

(declare-fun m!2567517 () Bool)

(assert (=> b!2110403 m!2567517))

(assert (=> b!2110258 d!642271))

(declare-fun d!642273 () Bool)

(declare-fun lt!792121 () Int)

(assert (=> d!642273 (>= lt!792121 0)))

(declare-fun e!1342221 () Int)

(assert (=> d!642273 (= lt!792121 e!1342221)))

(declare-fun c!339081 () Bool)

(assert (=> d!642273 (= c!339081 ((_ is Nil!23395) Nil!23395))))

(assert (=> d!642273 (= (size!18259 Nil!23395) lt!792121)))

(declare-fun b!2110404 () Bool)

(assert (=> b!2110404 (= e!1342221 0)))

(declare-fun b!2110405 () Bool)

(assert (=> b!2110405 (= e!1342221 (+ 1 (size!18259 (t!195978 Nil!23395))))))

(assert (= (and d!642273 c!339081) b!2110404))

(assert (= (and d!642273 (not c!339081)) b!2110405))

(declare-fun m!2567519 () Bool)

(assert (=> b!2110405 m!2567519))

(assert (=> b!2110258 d!642273))

(declare-fun d!642275 () Bool)

(assert (=> d!642275 (= (valid!1815 cacheUp!740) (validCacheMapUp!233 (cache!2596 cacheUp!740)))))

(declare-fun bs!441053 () Bool)

(assert (= bs!441053 d!642275))

(assert (=> bs!441053 m!2567421))

(assert (=> b!2110249 d!642275))

(declare-fun d!642277 () Bool)

(declare-fun c!339082 () Bool)

(assert (=> d!642277 (= c!339082 ((_ is Node!7744) (c!339045 totalInput!548)))))

(declare-fun e!1342222 () Bool)

(assert (=> d!642277 (= (inv!30956 (c!339045 totalInput!548)) e!1342222)))

(declare-fun b!2110406 () Bool)

(assert (=> b!2110406 (= e!1342222 (inv!30961 (c!339045 totalInput!548)))))

(declare-fun b!2110407 () Bool)

(declare-fun e!1342223 () Bool)

(assert (=> b!2110407 (= e!1342222 e!1342223)))

(declare-fun res!916730 () Bool)

(assert (=> b!2110407 (= res!916730 (not ((_ is Leaf!11311) (c!339045 totalInput!548))))))

(assert (=> b!2110407 (=> res!916730 e!1342223)))

(declare-fun b!2110408 () Bool)

(assert (=> b!2110408 (= e!1342223 (inv!30962 (c!339045 totalInput!548)))))

(assert (= (and d!642277 c!339082) b!2110406))

(assert (= (and d!642277 (not c!339082)) b!2110407))

(assert (= (and b!2110407 (not res!916730)) b!2110408))

(declare-fun m!2567521 () Bool)

(assert (=> b!2110406 m!2567521))

(declare-fun m!2567523 () Bool)

(assert (=> b!2110408 m!2567523))

(assert (=> b!2110246 d!642277))

(declare-fun d!642279 () Bool)

(declare-fun lt!792124 () tuple2!22750)

(declare-fun findLongestMatch!500 (Regex!5599 List!23479) tuple2!22748)

(assert (=> d!642279 (= (tuple2!22749 (list!9471 (_1!13171 lt!792124)) (list!9471 (_2!13171 lt!792124))) (findLongestMatch!500 (regex!4163 rule!236) (list!9471 input!1654)))))

(declare-fun choose!12640 (Regex!5599 BalanceConc!15250 BalanceConc!15250) tuple2!22750)

(assert (=> d!642279 (= lt!792124 (choose!12640 (regex!4163 rule!236) input!1654 totalInput!548))))

(assert (=> d!642279 (validRegex!2203 (regex!4163 rule!236))))

(assert (=> d!642279 (= (findLongestMatchWithZipperSequenceV2!68 (regex!4163 rule!236) input!1654 totalInput!548) lt!792124)))

(declare-fun bs!441054 () Bool)

(assert (= bs!441054 d!642279))

(assert (=> bs!441054 m!2567409))

(assert (=> bs!441054 m!2567355))

(declare-fun m!2567525 () Bool)

(assert (=> bs!441054 m!2567525))

(declare-fun m!2567527 () Bool)

(assert (=> bs!441054 m!2567527))

(declare-fun m!2567529 () Bool)

(assert (=> bs!441054 m!2567529))

(assert (=> bs!441054 m!2567355))

(declare-fun m!2567531 () Bool)

(assert (=> bs!441054 m!2567531))

(assert (=> b!2110265 d!642279))

(declare-fun d!642281 () Bool)

(declare-fun e!1342226 () Bool)

(assert (=> d!642281 e!1342226))

(declare-fun res!916735 () Bool)

(assert (=> d!642281 (=> (not res!916735) (not e!1342226))))

(declare-fun lt!792127 () tuple3!2664)

(assert (=> d!642281 (= res!916735 (= (_1!13172 lt!792127) (findLongestMatchWithZipperSequenceV2!68 (regex!4163 rule!236) input!1654 totalInput!548)))))

(declare-fun choose!12641 (Regex!5599 BalanceConc!15250 BalanceConc!15250 CacheUp!1510 CacheDown!1512) tuple3!2664)

(assert (=> d!642281 (= lt!792127 (choose!12641 (regex!4163 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753))))

(assert (=> d!642281 (validRegex!2203 (regex!4163 rule!236))))

(assert (=> d!642281 (= (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!42 (regex!4163 rule!236) input!1654 totalInput!548 cacheUp!740 cacheDown!753) lt!792127)))

(declare-fun b!2110413 () Bool)

(declare-fun res!916736 () Bool)

(assert (=> b!2110413 (=> (not res!916736) (not e!1342226))))

(assert (=> b!2110413 (= res!916736 (valid!1816 (_3!1796 lt!792127)))))

(declare-fun b!2110414 () Bool)

(assert (=> b!2110414 (= e!1342226 (valid!1815 (_2!13172 lt!792127)))))

(assert (= (and d!642281 res!916735) b!2110413))

(assert (= (and b!2110413 res!916736) b!2110414))

(assert (=> d!642281 m!2567367))

(declare-fun m!2567533 () Bool)

(assert (=> d!642281 m!2567533))

(assert (=> d!642281 m!2567409))

(declare-fun m!2567535 () Bool)

(assert (=> b!2110413 m!2567535))

(declare-fun m!2567537 () Bool)

(assert (=> b!2110414 m!2567537))

(assert (=> b!2110265 d!642281))

(declare-fun d!642283 () Bool)

(declare-fun e!1342229 () Bool)

(assert (=> d!642283 e!1342229))

(declare-fun res!916739 () Bool)

(assert (=> d!642283 (=> res!916739 e!1342229)))

(declare-fun lt!792130 () Bool)

(assert (=> d!642283 (= res!916739 (not lt!792130))))

(declare-fun drop!1172 (List!23479 Int) List!23479)

(assert (=> d!642283 (= lt!792130 (= lt!792012 (drop!1172 (list!9471 totalInput!548) (- (size!18259 (list!9471 totalInput!548)) (size!18259 lt!792012)))))))

(assert (=> d!642283 (= (isSuffix!576 lt!792012 (list!9471 totalInput!548)) lt!792130)))

(declare-fun b!2110417 () Bool)

(assert (=> b!2110417 (= e!1342229 (>= (size!18259 (list!9471 totalInput!548)) (size!18259 lt!792012)))))

(assert (= (and d!642283 (not res!916739)) b!2110417))

(assert (=> d!642283 m!2567351))

(declare-fun m!2567539 () Bool)

(assert (=> d!642283 m!2567539))

(assert (=> d!642283 m!2567345))

(assert (=> d!642283 m!2567351))

(declare-fun m!2567541 () Bool)

(assert (=> d!642283 m!2567541))

(assert (=> b!2110417 m!2567351))

(assert (=> b!2110417 m!2567539))

(assert (=> b!2110417 m!2567345))

(assert (=> b!2110257 d!642283))

(declare-fun d!642285 () Bool)

(assert (=> d!642285 (= (list!9471 totalInput!548) (list!9472 (c!339045 totalInput!548)))))

(declare-fun bs!441055 () Bool)

(assert (= bs!441055 d!642285))

(declare-fun m!2567543 () Bool)

(assert (=> bs!441055 m!2567543))

(assert (=> b!2110257 d!642285))

(declare-fun d!642287 () Bool)

(assert (=> d!642287 (= (list!9471 input!1654) (list!9472 (c!339045 input!1654)))))

(declare-fun bs!441056 () Bool)

(assert (= bs!441056 d!642287))

(declare-fun m!2567545 () Bool)

(assert (=> bs!441056 m!2567545))

(assert (=> b!2110257 d!642287))

(declare-fun tp!642053 () Bool)

(declare-fun tp!642051 () Bool)

(declare-fun e!1342235 () Bool)

(declare-fun b!2110426 () Bool)

(assert (=> b!2110426 (= e!1342235 (and (inv!30956 (left!18194 (c!339045 input!1654))) tp!642051 (inv!30956 (right!18524 (c!339045 input!1654))) tp!642053))))

(declare-fun b!2110428 () Bool)

(declare-fun e!1342234 () Bool)

(declare-fun tp!642052 () Bool)

(assert (=> b!2110428 (= e!1342234 tp!642052)))

(declare-fun b!2110427 () Bool)

(declare-fun inv!30963 (IArray!15493) Bool)

(assert (=> b!2110427 (= e!1342235 (and (inv!30963 (xs!10686 (c!339045 input!1654))) e!1342234))))

(assert (=> b!2110263 (= tp!642024 (and (inv!30956 (c!339045 input!1654)) e!1342235))))

(assert (= (and b!2110263 ((_ is Node!7744) (c!339045 input!1654))) b!2110426))

(assert (= b!2110427 b!2110428))

(assert (= (and b!2110263 ((_ is Leaf!11311) (c!339045 input!1654))) b!2110427))

(declare-fun m!2567547 () Bool)

(assert (=> b!2110426 m!2567547))

(declare-fun m!2567549 () Bool)

(assert (=> b!2110426 m!2567549))

(declare-fun m!2567551 () Bool)

(assert (=> b!2110427 m!2567551))

(assert (=> b!2110263 m!2567359))

(declare-fun e!1342243 () Bool)

(assert (=> b!2110245 (= tp!642038 e!1342243)))

(declare-fun tp!642065 () Bool)

(declare-fun tp_is_empty!9389 () Bool)

(declare-fun tp!642064 () Bool)

(declare-fun setRes!14060 () Bool)

(declare-fun e!1342242 () Bool)

(declare-fun b!2110437 () Bool)

(declare-fun inv!30964 (Context!2338) Bool)

(assert (=> b!2110437 (= e!1342243 (and tp!642065 (inv!30964 (_2!13166 (_1!13167 (h!28798 (zeroValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))))) e!1342242 tp_is_empty!9389 setRes!14060 tp!642064))))

(declare-fun condSetEmpty!14060 () Bool)

(assert (=> b!2110437 (= condSetEmpty!14060 (= (_2!13167 (h!28798 (zeroValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun e!1342244 () Bool)

(declare-fun tp!642068 () Bool)

(declare-fun setNonEmpty!14060 () Bool)

(declare-fun setElem!14060 () Context!2338)

(assert (=> setNonEmpty!14060 (= setRes!14060 (and tp!642068 (inv!30964 setElem!14060) e!1342244))))

(declare-fun setRest!14060 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14060 (= (_2!13167 (h!28798 (zeroValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14060 true) setRest!14060))))

(declare-fun b!2110438 () Bool)

(declare-fun tp!642066 () Bool)

(assert (=> b!2110438 (= e!1342244 tp!642066)))

(declare-fun setIsEmpty!14060 () Bool)

(assert (=> setIsEmpty!14060 setRes!14060))

(declare-fun b!2110439 () Bool)

(declare-fun tp!642067 () Bool)

(assert (=> b!2110439 (= e!1342242 tp!642067)))

(assert (= b!2110437 b!2110439))

(assert (= (and b!2110437 condSetEmpty!14060) setIsEmpty!14060))

(assert (= (and b!2110437 (not condSetEmpty!14060)) setNonEmpty!14060))

(assert (= setNonEmpty!14060 b!2110438))

(assert (= (and b!2110245 ((_ is Cons!23397) (zeroValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))) b!2110437))

(declare-fun m!2567553 () Bool)

(assert (=> b!2110437 m!2567553))

(declare-fun m!2567555 () Bool)

(assert (=> setNonEmpty!14060 m!2567555))

(declare-fun e!1342246 () Bool)

(assert (=> b!2110245 (= tp!642040 e!1342246)))

(declare-fun e!1342245 () Bool)

(declare-fun tp!642070 () Bool)

(declare-fun tp!642069 () Bool)

(declare-fun b!2110440 () Bool)

(declare-fun setRes!14061 () Bool)

(assert (=> b!2110440 (= e!1342246 (and tp!642070 (inv!30964 (_2!13166 (_1!13167 (h!28798 (minValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))))) e!1342245 tp_is_empty!9389 setRes!14061 tp!642069))))

(declare-fun condSetEmpty!14061 () Bool)

(assert (=> b!2110440 (= condSetEmpty!14061 (= (_2!13167 (h!28798 (minValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun tp!642073 () Bool)

(declare-fun setNonEmpty!14061 () Bool)

(declare-fun setElem!14061 () Context!2338)

(declare-fun e!1342247 () Bool)

(assert (=> setNonEmpty!14061 (= setRes!14061 (and tp!642073 (inv!30964 setElem!14061) e!1342247))))

(declare-fun setRest!14061 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14061 (= (_2!13167 (h!28798 (minValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14061 true) setRest!14061))))

(declare-fun b!2110441 () Bool)

(declare-fun tp!642071 () Bool)

(assert (=> b!2110441 (= e!1342247 tp!642071)))

(declare-fun setIsEmpty!14061 () Bool)

(assert (=> setIsEmpty!14061 setRes!14061))

(declare-fun b!2110442 () Bool)

(declare-fun tp!642072 () Bool)

(assert (=> b!2110442 (= e!1342245 tp!642072)))

(assert (= b!2110440 b!2110442))

(assert (= (and b!2110440 condSetEmpty!14061) setIsEmpty!14061))

(assert (= (and b!2110440 (not condSetEmpty!14061)) setNonEmpty!14061))

(assert (= setNonEmpty!14061 b!2110441))

(assert (= (and b!2110245 ((_ is Cons!23397) (minValue!2558 (v!27925 (underlying!4795 (v!27926 (underlying!4796 (cache!2595 cacheDown!753)))))))) b!2110440))

(declare-fun m!2567557 () Bool)

(assert (=> b!2110440 m!2567557))

(declare-fun m!2567559 () Bool)

(assert (=> setNonEmpty!14061 m!2567559))

(declare-fun b!2110457 () Bool)

(declare-fun e!1342261 () Bool)

(declare-fun tp!642098 () Bool)

(assert (=> b!2110457 (= e!1342261 tp!642098)))

(declare-fun setIsEmpty!14066 () Bool)

(declare-fun setRes!14067 () Bool)

(assert (=> setIsEmpty!14066 setRes!14067))

(declare-fun b!2110458 () Bool)

(declare-fun e!1342265 () Bool)

(declare-fun tp!642097 () Bool)

(assert (=> b!2110458 (= e!1342265 tp!642097)))

(declare-fun setElem!14067 () Context!2338)

(declare-fun setNonEmpty!14066 () Bool)

(declare-fun e!1342264 () Bool)

(declare-fun setRes!14066 () Bool)

(declare-fun tp!642099 () Bool)

(assert (=> setNonEmpty!14066 (= setRes!14066 (and tp!642099 (inv!30964 setElem!14067) e!1342264))))

(declare-fun mapValue!11106 () List!23481)

(declare-fun setRest!14067 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14066 (= (_2!13167 (h!28798 mapValue!11106)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14067 true) setRest!14067))))

(declare-fun b!2110459 () Bool)

(declare-fun e!1342262 () Bool)

(declare-fun tp!642103 () Bool)

(assert (=> b!2110459 (= e!1342262 tp!642103)))

(declare-fun condMapEmpty!11106 () Bool)

(declare-fun mapDefault!11106 () List!23481)

(assert (=> mapNonEmpty!11103 (= condMapEmpty!11106 (= mapRest!11102 ((as const (Array (_ BitVec 32) List!23481)) mapDefault!11106)))))

(declare-fun e!1342260 () Bool)

(declare-fun mapRes!11106 () Bool)

(assert (=> mapNonEmpty!11103 (= tp!642029 (and e!1342260 mapRes!11106))))

(declare-fun tp!642096 () Bool)

(declare-fun b!2110460 () Bool)

(declare-fun tp!642102 () Bool)

(assert (=> b!2110460 (= e!1342260 (and tp!642096 (inv!30964 (_2!13166 (_1!13167 (h!28798 mapDefault!11106)))) e!1342262 tp_is_empty!9389 setRes!14067 tp!642102))))

(declare-fun condSetEmpty!14066 () Bool)

(assert (=> b!2110460 (= condSetEmpty!14066 (= (_2!13167 (h!28798 mapDefault!11106)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun setIsEmpty!14067 () Bool)

(assert (=> setIsEmpty!14067 setRes!14066))

(declare-fun mapIsEmpty!11106 () Bool)

(assert (=> mapIsEmpty!11106 mapRes!11106))

(declare-fun e!1342263 () Bool)

(declare-fun tp!642104 () Bool)

(declare-fun tp!642105 () Bool)

(declare-fun b!2110461 () Bool)

(assert (=> b!2110461 (= e!1342263 (and tp!642104 (inv!30964 (_2!13166 (_1!13167 (h!28798 mapValue!11106)))) e!1342261 tp_is_empty!9389 setRes!14066 tp!642105))))

(declare-fun condSetEmpty!14067 () Bool)

(assert (=> b!2110461 (= condSetEmpty!14067 (= (_2!13167 (h!28798 mapValue!11106)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun mapNonEmpty!11106 () Bool)

(declare-fun tp!642101 () Bool)

(assert (=> mapNonEmpty!11106 (= mapRes!11106 (and tp!642101 e!1342263))))

(declare-fun mapKey!11106 () (_ BitVec 32))

(declare-fun mapRest!11106 () (Array (_ BitVec 32) List!23481))

(assert (=> mapNonEmpty!11106 (= mapRest!11102 (store mapRest!11106 mapKey!11106 mapValue!11106))))

(declare-fun b!2110462 () Bool)

(declare-fun tp!642100 () Bool)

(assert (=> b!2110462 (= e!1342264 tp!642100)))

(declare-fun setNonEmpty!14067 () Bool)

(declare-fun tp!642106 () Bool)

(declare-fun setElem!14066 () Context!2338)

(assert (=> setNonEmpty!14067 (= setRes!14067 (and tp!642106 (inv!30964 setElem!14066) e!1342265))))

(declare-fun setRest!14066 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14067 (= (_2!13167 (h!28798 mapDefault!11106)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14066 true) setRest!14066))))

(assert (= (and mapNonEmpty!11103 condMapEmpty!11106) mapIsEmpty!11106))

(assert (= (and mapNonEmpty!11103 (not condMapEmpty!11106)) mapNonEmpty!11106))

(assert (= b!2110461 b!2110457))

(assert (= (and b!2110461 condSetEmpty!14067) setIsEmpty!14067))

(assert (= (and b!2110461 (not condSetEmpty!14067)) setNonEmpty!14066))

(assert (= setNonEmpty!14066 b!2110462))

(assert (= (and mapNonEmpty!11106 ((_ is Cons!23397) mapValue!11106)) b!2110461))

(assert (= b!2110460 b!2110459))

(assert (= (and b!2110460 condSetEmpty!14066) setIsEmpty!14066))

(assert (= (and b!2110460 (not condSetEmpty!14066)) setNonEmpty!14067))

(assert (= setNonEmpty!14067 b!2110458))

(assert (= (and mapNonEmpty!11103 ((_ is Cons!23397) mapDefault!11106)) b!2110460))

(declare-fun m!2567561 () Bool)

(assert (=> setNonEmpty!14066 m!2567561))

(declare-fun m!2567563 () Bool)

(assert (=> b!2110460 m!2567563))

(declare-fun m!2567565 () Bool)

(assert (=> mapNonEmpty!11106 m!2567565))

(declare-fun m!2567567 () Bool)

(assert (=> b!2110461 m!2567567))

(declare-fun m!2567569 () Bool)

(assert (=> setNonEmpty!14067 m!2567569))

(declare-fun e!1342267 () Bool)

(assert (=> mapNonEmpty!11103 (= tp!642036 e!1342267)))

(declare-fun b!2110463 () Bool)

(declare-fun setRes!14068 () Bool)

(declare-fun tp!642108 () Bool)

(declare-fun e!1342266 () Bool)

(declare-fun tp!642107 () Bool)

(assert (=> b!2110463 (= e!1342267 (and tp!642108 (inv!30964 (_2!13166 (_1!13167 (h!28798 mapValue!11102)))) e!1342266 tp_is_empty!9389 setRes!14068 tp!642107))))

(declare-fun condSetEmpty!14068 () Bool)

(assert (=> b!2110463 (= condSetEmpty!14068 (= (_2!13167 (h!28798 mapValue!11102)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun tp!642111 () Bool)

(declare-fun setNonEmpty!14068 () Bool)

(declare-fun e!1342268 () Bool)

(declare-fun setElem!14068 () Context!2338)

(assert (=> setNonEmpty!14068 (= setRes!14068 (and tp!642111 (inv!30964 setElem!14068) e!1342268))))

(declare-fun setRest!14068 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14068 (= (_2!13167 (h!28798 mapValue!11102)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14068 true) setRest!14068))))

(declare-fun b!2110464 () Bool)

(declare-fun tp!642109 () Bool)

(assert (=> b!2110464 (= e!1342268 tp!642109)))

(declare-fun setIsEmpty!14068 () Bool)

(assert (=> setIsEmpty!14068 setRes!14068))

(declare-fun b!2110465 () Bool)

(declare-fun tp!642110 () Bool)

(assert (=> b!2110465 (= e!1342266 tp!642110)))

(assert (= b!2110463 b!2110465))

(assert (= (and b!2110463 condSetEmpty!14068) setIsEmpty!14068))

(assert (= (and b!2110463 (not condSetEmpty!14068)) setNonEmpty!14068))

(assert (= setNonEmpty!14068 b!2110464))

(assert (= (and mapNonEmpty!11103 ((_ is Cons!23397) mapValue!11102)) b!2110463))

(declare-fun m!2567571 () Bool)

(assert (=> b!2110463 m!2567571))

(declare-fun m!2567573 () Bool)

(assert (=> setNonEmpty!14068 m!2567573))

(declare-fun b!2110477 () Bool)

(declare-fun e!1342271 () Bool)

(declare-fun tp!642124 () Bool)

(declare-fun tp!642122 () Bool)

(assert (=> b!2110477 (= e!1342271 (and tp!642124 tp!642122))))

(assert (=> b!2110243 (= tp!642025 e!1342271)))

(declare-fun b!2110478 () Bool)

(declare-fun tp!642126 () Bool)

(assert (=> b!2110478 (= e!1342271 tp!642126)))

(declare-fun b!2110476 () Bool)

(assert (=> b!2110476 (= e!1342271 tp_is_empty!9389)))

(declare-fun b!2110479 () Bool)

(declare-fun tp!642123 () Bool)

(declare-fun tp!642125 () Bool)

(assert (=> b!2110479 (= e!1342271 (and tp!642123 tp!642125))))

(assert (= (and b!2110243 ((_ is ElementMatch!5599) (regex!4163 rule!236))) b!2110476))

(assert (= (and b!2110243 ((_ is Concat!9899) (regex!4163 rule!236))) b!2110477))

(assert (= (and b!2110243 ((_ is Star!5599) (regex!4163 rule!236))) b!2110478))

(assert (= (and b!2110243 ((_ is Union!5599) (regex!4163 rule!236))) b!2110479))

(declare-fun e!1342273 () Bool)

(assert (=> b!2110261 (= tp!642023 e!1342273)))

(declare-fun e!1342272 () Bool)

(declare-fun tp!642128 () Bool)

(declare-fun setRes!14069 () Bool)

(declare-fun tp!642127 () Bool)

(declare-fun b!2110480 () Bool)

(assert (=> b!2110480 (= e!1342273 (and tp!642128 (inv!30964 (_2!13166 (_1!13167 (h!28798 mapDefault!11103)))) e!1342272 tp_is_empty!9389 setRes!14069 tp!642127))))

(declare-fun condSetEmpty!14069 () Bool)

(assert (=> b!2110480 (= condSetEmpty!14069 (= (_2!13167 (h!28798 mapDefault!11103)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun e!1342274 () Bool)

(declare-fun tp!642131 () Bool)

(declare-fun setNonEmpty!14069 () Bool)

(declare-fun setElem!14069 () Context!2338)

(assert (=> setNonEmpty!14069 (= setRes!14069 (and tp!642131 (inv!30964 setElem!14069) e!1342274))))

(declare-fun setRest!14069 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14069 (= (_2!13167 (h!28798 mapDefault!11103)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14069 true) setRest!14069))))

(declare-fun b!2110481 () Bool)

(declare-fun tp!642129 () Bool)

(assert (=> b!2110481 (= e!1342274 tp!642129)))

(declare-fun setIsEmpty!14069 () Bool)

(assert (=> setIsEmpty!14069 setRes!14069))

(declare-fun b!2110482 () Bool)

(declare-fun tp!642130 () Bool)

(assert (=> b!2110482 (= e!1342272 tp!642130)))

(assert (= b!2110480 b!2110482))

(assert (= (and b!2110480 condSetEmpty!14069) setIsEmpty!14069))

(assert (= (and b!2110480 (not condSetEmpty!14069)) setNonEmpty!14069))

(assert (= setNonEmpty!14069 b!2110481))

(assert (= (and b!2110261 ((_ is Cons!23397) mapDefault!11103)) b!2110480))

(declare-fun m!2567575 () Bool)

(assert (=> b!2110480 m!2567575))

(declare-fun m!2567577 () Bool)

(assert (=> setNonEmpty!14069 m!2567577))

(declare-fun setIsEmpty!14072 () Bool)

(declare-fun setRes!14072 () Bool)

(assert (=> setIsEmpty!14072 setRes!14072))

(declare-fun b!2110491 () Bool)

(declare-fun tp!642143 () Bool)

(declare-fun e!1342283 () Bool)

(declare-fun e!1342281 () Bool)

(assert (=> b!2110491 (= e!1342281 (and (inv!30964 (_1!13168 (_1!13169 (h!28799 (zeroValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))))) e!1342283 tp_is_empty!9389 setRes!14072 tp!642143))))

(declare-fun condSetEmpty!14072 () Bool)

(assert (=> b!2110491 (= condSetEmpty!14072 (= (_2!13169 (h!28799 (zeroValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun b!2110492 () Bool)

(declare-fun e!1342282 () Bool)

(declare-fun tp!642140 () Bool)

(assert (=> b!2110492 (= e!1342282 tp!642140)))

(assert (=> b!2110248 (= tp!642027 e!1342281)))

(declare-fun b!2110493 () Bool)

(declare-fun tp!642142 () Bool)

(assert (=> b!2110493 (= e!1342283 tp!642142)))

(declare-fun tp!642141 () Bool)

(declare-fun setNonEmpty!14072 () Bool)

(declare-fun setElem!14072 () Context!2338)

(assert (=> setNonEmpty!14072 (= setRes!14072 (and tp!642141 (inv!30964 setElem!14072) e!1342282))))

(declare-fun setRest!14072 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14072 (= (_2!13169 (h!28799 (zeroValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14072 true) setRest!14072))))

(assert (= b!2110491 b!2110493))

(assert (= (and b!2110491 condSetEmpty!14072) setIsEmpty!14072))

(assert (= (and b!2110491 (not condSetEmpty!14072)) setNonEmpty!14072))

(assert (= setNonEmpty!14072 b!2110492))

(assert (= (and b!2110248 ((_ is Cons!23398) (zeroValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))) b!2110491))

(declare-fun m!2567579 () Bool)

(assert (=> b!2110491 m!2567579))

(declare-fun m!2567581 () Bool)

(assert (=> setNonEmpty!14072 m!2567581))

(declare-fun setIsEmpty!14073 () Bool)

(declare-fun setRes!14073 () Bool)

(assert (=> setIsEmpty!14073 setRes!14073))

(declare-fun b!2110494 () Bool)

(declare-fun e!1342286 () Bool)

(declare-fun tp!642147 () Bool)

(declare-fun e!1342284 () Bool)

(assert (=> b!2110494 (= e!1342284 (and (inv!30964 (_1!13168 (_1!13169 (h!28799 (minValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))))) e!1342286 tp_is_empty!9389 setRes!14073 tp!642147))))

(declare-fun condSetEmpty!14073 () Bool)

(assert (=> b!2110494 (= condSetEmpty!14073 (= (_2!13169 (h!28799 (minValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun b!2110495 () Bool)

(declare-fun e!1342285 () Bool)

(declare-fun tp!642144 () Bool)

(assert (=> b!2110495 (= e!1342285 tp!642144)))

(assert (=> b!2110248 (= tp!642035 e!1342284)))

(declare-fun b!2110496 () Bool)

(declare-fun tp!642146 () Bool)

(assert (=> b!2110496 (= e!1342286 tp!642146)))

(declare-fun setNonEmpty!14073 () Bool)

(declare-fun tp!642145 () Bool)

(declare-fun setElem!14073 () Context!2338)

(assert (=> setNonEmpty!14073 (= setRes!14073 (and tp!642145 (inv!30964 setElem!14073) e!1342285))))

(declare-fun setRest!14073 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14073 (= (_2!13169 (h!28799 (minValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14073 true) setRest!14073))))

(assert (= b!2110494 b!2110496))

(assert (= (and b!2110494 condSetEmpty!14073) setIsEmpty!14073))

(assert (= (and b!2110494 (not condSetEmpty!14073)) setNonEmpty!14073))

(assert (= setNonEmpty!14073 b!2110495))

(assert (= (and b!2110248 ((_ is Cons!23398) (minValue!2559 (v!27927 (underlying!4797 (v!27928 (underlying!4798 (cache!2596 cacheUp!740)))))))) b!2110494))

(declare-fun m!2567583 () Bool)

(assert (=> b!2110494 m!2567583))

(declare-fun m!2567585 () Bool)

(assert (=> setNonEmpty!14073 m!2567585))

(declare-fun setIsEmpty!14074 () Bool)

(declare-fun setRes!14074 () Bool)

(assert (=> setIsEmpty!14074 setRes!14074))

(declare-fun b!2110497 () Bool)

(declare-fun tp!642151 () Bool)

(declare-fun e!1342287 () Bool)

(declare-fun e!1342289 () Bool)

(assert (=> b!2110497 (= e!1342287 (and (inv!30964 (_1!13168 (_1!13169 (h!28799 mapDefault!11102)))) e!1342289 tp_is_empty!9389 setRes!14074 tp!642151))))

(declare-fun condSetEmpty!14074 () Bool)

(assert (=> b!2110497 (= condSetEmpty!14074 (= (_2!13169 (h!28799 mapDefault!11102)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun b!2110498 () Bool)

(declare-fun e!1342288 () Bool)

(declare-fun tp!642148 () Bool)

(assert (=> b!2110498 (= e!1342288 tp!642148)))

(assert (=> b!2110266 (= tp!642032 e!1342287)))

(declare-fun b!2110499 () Bool)

(declare-fun tp!642150 () Bool)

(assert (=> b!2110499 (= e!1342289 tp!642150)))

(declare-fun setElem!14074 () Context!2338)

(declare-fun setNonEmpty!14074 () Bool)

(declare-fun tp!642149 () Bool)

(assert (=> setNonEmpty!14074 (= setRes!14074 (and tp!642149 (inv!30964 setElem!14074) e!1342288))))

(declare-fun setRest!14074 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14074 (= (_2!13169 (h!28799 mapDefault!11102)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14074 true) setRest!14074))))

(assert (= b!2110497 b!2110499))

(assert (= (and b!2110497 condSetEmpty!14074) setIsEmpty!14074))

(assert (= (and b!2110497 (not condSetEmpty!14074)) setNonEmpty!14074))

(assert (= setNonEmpty!14074 b!2110498))

(assert (= (and b!2110266 ((_ is Cons!23398) mapDefault!11102)) b!2110497))

(declare-fun m!2567587 () Bool)

(assert (=> b!2110497 m!2567587))

(declare-fun m!2567589 () Bool)

(assert (=> setNonEmpty!14074 m!2567589))

(declare-fun b!2110514 () Bool)

(declare-fun e!1342307 () Bool)

(declare-fun tp!642178 () Bool)

(assert (=> b!2110514 (= e!1342307 tp!642178)))

(declare-fun e!1342305 () Bool)

(declare-fun setRes!14079 () Bool)

(declare-fun tp!642175 () Bool)

(declare-fun b!2110515 () Bool)

(declare-fun e!1342302 () Bool)

(declare-fun mapValue!11109 () List!23482)

(assert (=> b!2110515 (= e!1342302 (and (inv!30964 (_1!13168 (_1!13169 (h!28799 mapValue!11109)))) e!1342305 tp_is_empty!9389 setRes!14079 tp!642175))))

(declare-fun condSetEmpty!14080 () Bool)

(assert (=> b!2110515 (= condSetEmpty!14080 (= (_2!13169 (h!28799 mapValue!11109)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun setIsEmpty!14079 () Bool)

(declare-fun setRes!14080 () Bool)

(assert (=> setIsEmpty!14079 setRes!14080))

(declare-fun setIsEmpty!14080 () Bool)

(assert (=> setIsEmpty!14080 setRes!14079))

(declare-fun b!2110516 () Bool)

(declare-fun tp!642170 () Bool)

(assert (=> b!2110516 (= e!1342305 tp!642170)))

(declare-fun mapDefault!11109 () List!23482)

(declare-fun e!1342303 () Bool)

(declare-fun b!2110517 () Bool)

(declare-fun tp!642173 () Bool)

(declare-fun e!1342306 () Bool)

(assert (=> b!2110517 (= e!1342306 (and (inv!30964 (_1!13168 (_1!13169 (h!28799 mapDefault!11109)))) e!1342303 tp_is_empty!9389 setRes!14080 tp!642173))))

(declare-fun condSetEmpty!14079 () Bool)

(assert (=> b!2110517 (= condSetEmpty!14079 (= (_2!13169 (h!28799 mapDefault!11109)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun b!2110518 () Bool)

(declare-fun tp!642176 () Bool)

(assert (=> b!2110518 (= e!1342303 tp!642176)))

(declare-fun mapIsEmpty!11109 () Bool)

(declare-fun mapRes!11109 () Bool)

(assert (=> mapIsEmpty!11109 mapRes!11109))

(declare-fun tp!642172 () Bool)

(declare-fun setNonEmpty!14079 () Bool)

(declare-fun e!1342304 () Bool)

(declare-fun setElem!14079 () Context!2338)

(assert (=> setNonEmpty!14079 (= setRes!14080 (and tp!642172 (inv!30964 setElem!14079) e!1342304))))

(declare-fun setRest!14080 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14079 (= (_2!13169 (h!28799 mapDefault!11109)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14079 true) setRest!14080))))

(declare-fun setNonEmpty!14080 () Bool)

(declare-fun tp!642174 () Bool)

(declare-fun setElem!14080 () Context!2338)

(assert (=> setNonEmpty!14080 (= setRes!14079 (and tp!642174 (inv!30964 setElem!14080) e!1342307))))

(declare-fun setRest!14079 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14080 (= (_2!13169 (h!28799 mapValue!11109)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14080 true) setRest!14079))))

(declare-fun b!2110519 () Bool)

(declare-fun tp!642171 () Bool)

(assert (=> b!2110519 (= e!1342304 tp!642171)))

(declare-fun mapNonEmpty!11109 () Bool)

(declare-fun tp!642177 () Bool)

(assert (=> mapNonEmpty!11109 (= mapRes!11109 (and tp!642177 e!1342302))))

(declare-fun mapRest!11109 () (Array (_ BitVec 32) List!23482))

(declare-fun mapKey!11109 () (_ BitVec 32))

(assert (=> mapNonEmpty!11109 (= mapRest!11103 (store mapRest!11109 mapKey!11109 mapValue!11109))))

(declare-fun condMapEmpty!11109 () Bool)

(assert (=> mapNonEmpty!11102 (= condMapEmpty!11109 (= mapRest!11103 ((as const (Array (_ BitVec 32) List!23482)) mapDefault!11109)))))

(assert (=> mapNonEmpty!11102 (= tp!642033 (and e!1342306 mapRes!11109))))

(assert (= (and mapNonEmpty!11102 condMapEmpty!11109) mapIsEmpty!11109))

(assert (= (and mapNonEmpty!11102 (not condMapEmpty!11109)) mapNonEmpty!11109))

(assert (= b!2110515 b!2110516))

(assert (= (and b!2110515 condSetEmpty!14080) setIsEmpty!14080))

(assert (= (and b!2110515 (not condSetEmpty!14080)) setNonEmpty!14080))

(assert (= setNonEmpty!14080 b!2110514))

(assert (= (and mapNonEmpty!11109 ((_ is Cons!23398) mapValue!11109)) b!2110515))

(assert (= b!2110517 b!2110518))

(assert (= (and b!2110517 condSetEmpty!14079) setIsEmpty!14079))

(assert (= (and b!2110517 (not condSetEmpty!14079)) setNonEmpty!14079))

(assert (= setNonEmpty!14079 b!2110519))

(assert (= (and mapNonEmpty!11102 ((_ is Cons!23398) mapDefault!11109)) b!2110517))

(declare-fun m!2567591 () Bool)

(assert (=> setNonEmpty!14079 m!2567591))

(declare-fun m!2567593 () Bool)

(assert (=> mapNonEmpty!11109 m!2567593))

(declare-fun m!2567595 () Bool)

(assert (=> setNonEmpty!14080 m!2567595))

(declare-fun m!2567597 () Bool)

(assert (=> b!2110515 m!2567597))

(declare-fun m!2567599 () Bool)

(assert (=> b!2110517 m!2567599))

(declare-fun setIsEmpty!14081 () Bool)

(declare-fun setRes!14081 () Bool)

(assert (=> setIsEmpty!14081 setRes!14081))

(declare-fun b!2110520 () Bool)

(declare-fun tp!642182 () Bool)

(declare-fun e!1342308 () Bool)

(declare-fun e!1342310 () Bool)

(assert (=> b!2110520 (= e!1342308 (and (inv!30964 (_1!13168 (_1!13169 (h!28799 mapValue!11103)))) e!1342310 tp_is_empty!9389 setRes!14081 tp!642182))))

(declare-fun condSetEmpty!14081 () Bool)

(assert (=> b!2110520 (= condSetEmpty!14081 (= (_2!13169 (h!28799 mapValue!11103)) ((as const (Array Context!2338 Bool)) false)))))

(declare-fun b!2110521 () Bool)

(declare-fun e!1342309 () Bool)

(declare-fun tp!642179 () Bool)

(assert (=> b!2110521 (= e!1342309 tp!642179)))

(assert (=> mapNonEmpty!11102 (= tp!642028 e!1342308)))

(declare-fun b!2110522 () Bool)

(declare-fun tp!642181 () Bool)

(assert (=> b!2110522 (= e!1342310 tp!642181)))

(declare-fun setNonEmpty!14081 () Bool)

(declare-fun setElem!14081 () Context!2338)

(declare-fun tp!642180 () Bool)

(assert (=> setNonEmpty!14081 (= setRes!14081 (and tp!642180 (inv!30964 setElem!14081) e!1342309))))

(declare-fun setRest!14081 () (InoxSet Context!2338))

(assert (=> setNonEmpty!14081 (= (_2!13169 (h!28799 mapValue!11103)) ((_ map or) (store ((as const (Array Context!2338 Bool)) false) setElem!14081 true) setRest!14081))))

(assert (= b!2110520 b!2110522))

(assert (= (and b!2110520 condSetEmpty!14081) setIsEmpty!14081))

(assert (= (and b!2110520 (not condSetEmpty!14081)) setNonEmpty!14081))

(assert (= setNonEmpty!14081 b!2110521))

(assert (= (and mapNonEmpty!11102 ((_ is Cons!23398) mapValue!11103)) b!2110520))

(declare-fun m!2567601 () Bool)

(assert (=> b!2110520 m!2567601))

(declare-fun m!2567603 () Bool)

(assert (=> setNonEmpty!14081 m!2567603))

(declare-fun tp!642185 () Bool)

(declare-fun tp!642183 () Bool)

(declare-fun e!1342312 () Bool)

(declare-fun b!2110523 () Bool)

(assert (=> b!2110523 (= e!1342312 (and (inv!30956 (left!18194 (c!339045 totalInput!548))) tp!642183 (inv!30956 (right!18524 (c!339045 totalInput!548))) tp!642185))))

(declare-fun b!2110525 () Bool)

(declare-fun e!1342311 () Bool)

(declare-fun tp!642184 () Bool)

(assert (=> b!2110525 (= e!1342311 tp!642184)))

(declare-fun b!2110524 () Bool)

(assert (=> b!2110524 (= e!1342312 (and (inv!30963 (xs!10686 (c!339045 totalInput!548))) e!1342311))))

(assert (=> b!2110246 (= tp!642034 (and (inv!30956 (c!339045 totalInput!548)) e!1342312))))

(assert (= (and b!2110246 ((_ is Node!7744) (c!339045 totalInput!548))) b!2110523))

(assert (= b!2110524 b!2110525))

(assert (= (and b!2110246 ((_ is Leaf!11311) (c!339045 totalInput!548))) b!2110524))

(declare-fun m!2567605 () Bool)

(assert (=> b!2110523 m!2567605))

(declare-fun m!2567607 () Bool)

(assert (=> b!2110523 m!2567607))

(declare-fun m!2567609 () Bool)

(assert (=> b!2110524 m!2567609))

(assert (=> b!2110246 m!2567329))

(declare-fun b_lambda!70359 () Bool)

(assert (= b_lambda!70357 (or (and b!2110264 b_free!60929) b_lambda!70359)))

(declare-fun b_lambda!70361 () Bool)

(assert (= b_lambda!70351 (or (and b!2110264 b_free!60929) b_lambda!70361)))

(declare-fun b_lambda!70363 () Bool)

(assert (= b_lambda!70355 (or (and b!2110264 b_free!60931) b_lambda!70363)))

(check-sat (not b!2110303) (not b!2110461) (not b!2110499) (not b_next!61635) (not b!2110523) (not b!2110388) (not setNonEmpty!14067) (not b!2110494) (not setNonEmpty!14061) (not bm!128449) (not b!2110515) (not setNonEmpty!14073) (not b_lambda!70361) (not b!2110462) (not b!2110246) b_and!170499 (not setNonEmpty!14074) (not mapNonEmpty!11109) (not b!2110497) b_and!170509 (not b!2110405) (not b!2110525) (not b_next!61639) (not b!2110366) (not b!2110413) (not setNonEmpty!14066) (not b!2110406) (not bm!128426) (not bm!128446) (not b!2110464) (not b!2110437) (not setNonEmpty!14081) (not b!2110438) (not d!642225) (not b!2110428) (not b!2110414) (not setNonEmpty!14079) (not b!2110374) b_and!170501 (not b!2110318) (not d!642287) (not d!642227) (not b!2110460) (not d!642285) (not tb!132273) (not b!2110480) (not b!2110316) (not b!2110495) (not d!642261) (not b!2110522) (not b!2110518) (not b!2110400) (not b!2110517) (not b!2110479) tp_is_empty!9389 (not b!2110308) (not b!2110463) (not d!642283) (not b!2110373) b_and!170491 (not d!642255) (not b!2110493) (not b!2110482) (not b_lambda!70363) (not bm!128444) (not d!642265) (not bm!128450) (not b!2110381) (not bm!128448) (not setNonEmpty!14080) (not bm!128445) (not b_next!61631) (not b!2110297) (not b!2110321) (not d!642281) (not b!2110417) (not b!2110524) (not d!642267) (not b!2110263) (not b_next!61629) (not setNonEmpty!14072) (not b!2110408) (not b!2110491) (not b!2110427) (not b!2110403) (not d!642245) (not d!642233) (not b!2110441) (not b!2110440) b_and!170493 b_and!170507 (not b!2110305) (not b!2110514) (not setNonEmpty!14068) (not tb!132275) (not b!2110333) (not b!2110324) (not d!642269) (not b!2110520) (not b!2110498) (not b!2110442) (not b!2110521) (not b_next!61637) (not b!2110457) (not tb!132277) (not b!2110458) (not b_lambda!70353) (not b!2110492) (not b!2110477) (not b!2110307) (not b!2110389) (not d!642249) (not b!2110516) (not setNonEmpty!14069) (not b!2110481) (not b!2110478) (not d!642275) (not b!2110426) (not b!2110496) (not b_next!61633) (not d!642239) (not b!2110465) (not b!2110459) (not d!642235) (not b!2110329) (not d!642271) (not b!2110369) (not b_lambda!70359) (not bm!128447) (not b!2110519) (not d!642279) (not b!2110304) (not b!2110439) (not setNonEmpty!14060) (not b!2110394) (not mapNonEmpty!11106) (not bm!128443))
(check-sat (not b_next!61635) b_and!170499 b_and!170509 (not b_next!61639) b_and!170501 b_and!170491 (not b_next!61631) (not b_next!61629) (not b_next!61637) (not b_next!61633) b_and!170493 b_and!170507)
