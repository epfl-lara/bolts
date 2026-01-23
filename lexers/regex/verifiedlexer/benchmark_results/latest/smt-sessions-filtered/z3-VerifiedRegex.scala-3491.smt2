; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201434 () Bool)

(assert start!201434)

(declare-fun b!2044459 () Bool)

(declare-fun b_free!57137 () Bool)

(declare-fun b_next!57841 () Bool)

(assert (=> b!2044459 (= b_free!57137 (not b_next!57841))))

(declare-fun tp!607905 () Bool)

(declare-fun b_and!163077 () Bool)

(assert (=> b!2044459 (= tp!607905 b_and!163077)))

(declare-fun b!2044461 () Bool)

(declare-fun b_free!57139 () Bool)

(declare-fun b_next!57843 () Bool)

(assert (=> b!2044461 (= b_free!57139 (not b_next!57843))))

(declare-fun tp!607918 () Bool)

(declare-fun b_and!163079 () Bool)

(assert (=> b!2044461 (= tp!607918 b_and!163079)))

(declare-fun b_free!57141 () Bool)

(declare-fun b_next!57845 () Bool)

(assert (=> b!2044461 (= b_free!57141 (not b_next!57845))))

(declare-fun tp!607917 () Bool)

(declare-fun b_and!163081 () Bool)

(assert (=> b!2044461 (= tp!607917 b_and!163081)))

(declare-fun b!2044476 () Bool)

(declare-fun b_free!57143 () Bool)

(declare-fun b_next!57847 () Bool)

(assert (=> b!2044476 (= b_free!57143 (not b_next!57847))))

(declare-fun tp!607916 () Bool)

(declare-fun b_and!163083 () Bool)

(assert (=> b!2044476 (= tp!607916 b_and!163083)))

(declare-fun b!2044452 () Bool)

(declare-fun b_free!57145 () Bool)

(declare-fun b_next!57849 () Bool)

(assert (=> b!2044452 (= b_free!57145 (not b_next!57849))))

(declare-fun tp!607915 () Bool)

(declare-fun b_and!163085 () Bool)

(assert (=> b!2044452 (= tp!607915 b_and!163085)))

(declare-fun b!2044471 () Bool)

(declare-fun b_free!57147 () Bool)

(declare-fun b_next!57851 () Bool)

(assert (=> b!2044471 (= b_free!57147 (not b_next!57851))))

(declare-fun tp!607912 () Bool)

(declare-fun b_and!163087 () Bool)

(assert (=> b!2044471 (= tp!607912 b_and!163087)))

(declare-fun b!2044442 () Bool)

(declare-fun e!1291425 () Bool)

(declare-fun e!1291429 () Bool)

(assert (=> b!2044442 (= e!1291425 e!1291429)))

(declare-fun res!895769 () Bool)

(assert (=> b!2044442 (=> (not res!895769) (not e!1291429))))

(declare-datatypes ((List!22522 0))(
  ( (Nil!22438) (Cons!22438 (h!27839 (_ BitVec 16)) (t!191636 List!22522)) )
))
(declare-datatypes ((TokenValue!4157 0))(
  ( (FloatLiteralValue!8314 (text!29544 List!22522)) (TokenValueExt!4156 (__x!13941 Int)) (Broken!20785 (value!126226 List!22522)) (Object!4240) (End!4157) (Def!4157) (Underscore!4157) (Match!4157) (Else!4157) (Error!4157) (Case!4157) (If!4157) (Extends!4157) (Abstract!4157) (Class!4157) (Val!4157) (DelimiterValue!8314 (del!4217 List!22522)) (KeywordValue!4163 (value!126227 List!22522)) (CommentValue!8314 (value!126228 List!22522)) (WhitespaceValue!8314 (value!126229 List!22522)) (IndentationValue!4157 (value!126230 List!22522)) (String!25976) (Int32!4157) (Broken!20786 (value!126231 List!22522)) (Boolean!4158) (Unit!37034) (OperatorValue!4160 (op!4217 List!22522)) (IdentifierValue!8314 (value!126232 List!22522)) (IdentifierValue!8315 (value!126233 List!22522)) (WhitespaceValue!8315 (value!126234 List!22522)) (True!8314) (False!8314) (Broken!20787 (value!126235 List!22522)) (Broken!20788 (value!126236 List!22522)) (True!8315) (RightBrace!4157) (RightBracket!4157) (Colon!4157) (Null!4157) (Comma!4157) (LeftBracket!4157) (False!8315) (LeftBrace!4157) (ImaginaryLiteralValue!4157 (text!29545 List!22522)) (StringLiteralValue!12471 (value!126237 List!22522)) (EOFValue!4157 (value!126238 List!22522)) (IdentValue!4157 (value!126239 List!22522)) (DelimiterValue!8315 (value!126240 List!22522)) (DedentValue!4157 (value!126241 List!22522)) (NewLineValue!4157 (value!126242 List!22522)) (IntegerValue!12471 (value!126243 (_ BitVec 32)) (text!29546 List!22522)) (IntegerValue!12472 (value!126244 Int) (text!29547 List!22522)) (Times!4157) (Or!4157) (Equal!4157) (Minus!4157) (Broken!20789 (value!126245 List!22522)) (And!4157) (Div!4157) (LessEqual!4157) (Mod!4157) (Concat!9606) (Not!4157) (Plus!4157) (SpaceValue!4157 (value!126246 List!22522)) (IntegerValue!12473 (value!126247 Int) (text!29548 List!22522)) (StringLiteralValue!12472 (text!29549 List!22522)) (FloatLiteralValue!8315 (text!29550 List!22522)) (BytesLiteralValue!4157 (value!126248 List!22522)) (CommentValue!8315 (value!126249 List!22522)) (StringLiteralValue!12473 (value!126250 List!22522)) (ErrorTokenValue!4157 (msg!4218 List!22522)) )
))
(declare-datatypes ((C!11044 0))(
  ( (C!11045 (val!6508 Int)) )
))
(declare-datatypes ((Regex!5449 0))(
  ( (ElementMatch!5449 (c!330997 C!11044)) (Concat!9607 (regOne!11410 Regex!5449) (regTwo!11410 Regex!5449)) (EmptyExpr!5449) (Star!5449 (reg!5778 Regex!5449)) (EmptyLang!5449) (Union!5449 (regOne!11411 Regex!5449) (regTwo!11411 Regex!5449)) )
))
(declare-datatypes ((String!25977 0))(
  ( (String!25978 (value!126251 String)) )
))
(declare-datatypes ((List!22523 0))(
  ( (Nil!22439) (Cons!22439 (h!27840 C!11044) (t!191637 List!22523)) )
))
(declare-datatypes ((IArray!15041 0))(
  ( (IArray!15042 (innerList!7578 List!22523)) )
))
(declare-datatypes ((Conc!7518 0))(
  ( (Node!7518 (left!17813 Conc!7518) (right!18143 Conc!7518) (csize!15266 Int) (cheight!7729 Int)) (Leaf!11010 (xs!10426 IArray!15041) (csize!15267 Int)) (Empty!7518) )
))
(declare-datatypes ((BalanceConc!14798 0))(
  ( (BalanceConc!14799 (c!330998 Conc!7518)) )
))
(declare-datatypes ((TokenValueInjection!7898 0))(
  ( (TokenValueInjection!7899 (toValue!5704 Int) (toChars!5563 Int)) )
))
(declare-datatypes ((Rule!7842 0))(
  ( (Rule!7843 (regex!4021 Regex!5449) (tag!4511 String!25977) (isSeparator!4021 Bool) (transformation!4021 TokenValueInjection!7898)) )
))
(declare-datatypes ((Token!7592 0))(
  ( (Token!7593 (value!126252 TokenValue!4157) (rule!6257 Rule!7842) (size!17542 Int) (originalCharacters!4827 List!22523)) )
))
(declare-datatypes ((List!22524 0))(
  ( (Nil!22440) (Cons!22440 (h!27841 Token!7592) (t!191638 List!22524)) )
))
(declare-datatypes ((IArray!15043 0))(
  ( (IArray!15044 (innerList!7579 List!22524)) )
))
(declare-datatypes ((Conc!7519 0))(
  ( (Node!7519 (left!17814 Conc!7519) (right!18144 Conc!7519) (csize!15268 Int) (cheight!7730 Int)) (Leaf!11011 (xs!10427 IArray!15043) (csize!15269 Int)) (Empty!7519) )
))
(declare-datatypes ((BalanceConc!14800 0))(
  ( (BalanceConc!14801 (c!330999 Conc!7519)) )
))
(declare-datatypes ((tuple2!21146 0))(
  ( (tuple2!21147 (_1!12078 BalanceConc!14800) (_2!12078 BalanceConc!14798)) )
))
(declare-fun lt!766665 () tuple2!21146)

(declare-fun lt!766667 () tuple2!21146)

(declare-fun acc!382 () BalanceConc!14800)

(declare-fun list!9193 (BalanceConc!14800) List!22524)

(declare-fun ++!6093 (BalanceConc!14800 BalanceConc!14800) BalanceConc!14800)

(assert (=> b!2044442 (= res!895769 (= (list!9193 (_1!12078 lt!766665)) (list!9193 (++!6093 acc!382 (_1!12078 lt!766667)))))))

(declare-datatypes ((LexerInterface!3634 0))(
  ( (LexerInterfaceExt!3631 (__x!13942 Int)) (Lexer!3632) )
))
(declare-fun thiss!12889 () LexerInterface!3634)

(declare-datatypes ((List!22525 0))(
  ( (Nil!22441) (Cons!22441 (h!27842 Rule!7842) (t!191639 List!22525)) )
))
(declare-fun rules!1563 () List!22525)

(declare-fun input!986 () BalanceConc!14798)

(declare-fun lexRec!439 (LexerInterface!3634 List!22525 BalanceConc!14798) tuple2!21146)

(assert (=> b!2044442 (= lt!766667 (lexRec!439 thiss!12889 rules!1563 input!986))))

(declare-fun totalInput!418 () BalanceConc!14798)

(assert (=> b!2044442 (= lt!766665 (lexRec!439 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2044443 () Bool)

(declare-fun e!1291417 () Bool)

(declare-fun tp!607902 () Bool)

(declare-fun inv!29785 (Conc!7518) Bool)

(assert (=> b!2044443 (= e!1291417 (and (inv!29785 (c!330998 totalInput!418)) tp!607902))))

(declare-fun e!1291431 () Bool)

(declare-fun e!1291413 () Bool)

(declare-fun b!2044444 () Bool)

(declare-fun tp!607909 () Bool)

(declare-fun inv!29784 (String!25977) Bool)

(declare-fun inv!29786 (TokenValueInjection!7898) Bool)

(assert (=> b!2044444 (= e!1291413 (and tp!607909 (inv!29784 (tag!4511 (h!27842 rules!1563))) (inv!29786 (transformation!4021 (h!27842 rules!1563))) e!1291431))))

(declare-fun mapNonEmpty!9282 () Bool)

(declare-fun mapRes!9283 () Bool)

(declare-fun tp!607898 () Bool)

(declare-fun tp!607901 () Bool)

(assert (=> mapNonEmpty!9282 (= mapRes!9283 (and tp!607898 tp!607901))))

(declare-fun mapKey!9283 () (_ BitVec 32))

(declare-datatypes ((List!22526 0))(
  ( (Nil!22442) (Cons!22442 (h!27843 Regex!5449) (t!191640 List!22526)) )
))
(declare-datatypes ((Context!2038 0))(
  ( (Context!2039 (exprs!1519 List!22526)) )
))
(declare-datatypes ((tuple2!21148 0))(
  ( (tuple2!21149 (_1!12079 Context!2038) (_2!12079 C!11044)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21150 0))(
  ( (tuple2!21151 (_1!12080 tuple2!21148) (_2!12080 (InoxSet Context!2038))) )
))
(declare-datatypes ((List!22527 0))(
  ( (Nil!22443) (Cons!22443 (h!27844 tuple2!21150) (t!191641 List!22527)) )
))
(declare-fun mapValue!9283 () List!22527)

(declare-fun mapRest!9283 () (Array (_ BitVec 32) List!22527))

(declare-datatypes ((array!6939 0))(
  ( (array!6940 (arr!3083 (Array (_ BitVec 32) List!22527)) (size!17543 (_ BitVec 32))) )
))
(declare-datatypes ((array!6941 0))(
  ( (array!6942 (arr!3084 (Array (_ BitVec 32) (_ BitVec 64))) (size!17544 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4026 0))(
  ( (LongMapFixedSize!4027 (defaultEntry!2378 Int) (mask!6053 (_ BitVec 32)) (extraKeys!2261 (_ BitVec 32)) (zeroValue!2271 List!22527) (minValue!2271 List!22527) (_size!4077 (_ BitVec 32)) (_keys!2310 array!6941) (_values!2293 array!6939) (_vacant!2074 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7877 0))(
  ( (Cell!7878 (v!27129 LongMapFixedSize!4026)) )
))
(declare-datatypes ((MutLongMap!2013 0))(
  ( (LongMap!2013 (underlying!4221 Cell!7877)) (MutLongMapExt!2012 (__x!13943 Int)) )
))
(declare-datatypes ((Hashable!1927 0))(
  ( (HashableExt!1926 (__x!13944 Int)) )
))
(declare-datatypes ((Cell!7879 0))(
  ( (Cell!7880 (v!27130 MutLongMap!2013)) )
))
(declare-datatypes ((MutableMap!1927 0))(
  ( (MutableMapExt!1926 (__x!13945 Int)) (HashMap!1927 (underlying!4222 Cell!7879) (hashF!3850 Hashable!1927) (_size!4078 (_ BitVec 32)) (defaultValue!2089 Int)) )
))
(declare-datatypes ((CacheUp!1222 0))(
  ( (CacheUp!1223 (cache!2308 MutableMap!1927)) )
))
(declare-fun cacheUp!562 () CacheUp!1222)

(assert (=> mapNonEmpty!9282 (= (arr!3083 (_values!2293 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) (store mapRest!9283 mapKey!9283 mapValue!9283))))

(declare-fun b!2044445 () Bool)

(declare-fun e!1291424 () Bool)

(declare-fun treated!60 () BalanceConc!14798)

(declare-fun tp!607904 () Bool)

(assert (=> b!2044445 (= e!1291424 (and (inv!29785 (c!330998 treated!60)) tp!607904))))

(declare-fun mapIsEmpty!9282 () Bool)

(declare-fun mapRes!9282 () Bool)

(assert (=> mapIsEmpty!9282 mapRes!9282))

(declare-fun b!2044446 () Bool)

(declare-fun e!1291427 () Bool)

(declare-fun e!1291404 () Bool)

(assert (=> b!2044446 (= e!1291427 e!1291404)))

(declare-fun res!895768 () Bool)

(assert (=> b!2044446 (=> res!895768 e!1291404)))

(declare-datatypes ((Hashable!1928 0))(
  ( (HashableExt!1927 (__x!13946 Int)) )
))
(declare-datatypes ((tuple2!21152 0))(
  ( (tuple2!21153 (_1!12081 Token!7592) (_2!12081 BalanceConc!14798)) )
))
(declare-datatypes ((Option!4702 0))(
  ( (None!4701) (Some!4701 (v!27131 tuple2!21152)) )
))
(declare-datatypes ((tuple3!2082 0))(
  ( (tuple3!2083 (_1!12082 Regex!5449) (_2!12082 Context!2038) (_3!1505 C!11044)) )
))
(declare-datatypes ((tuple2!21154 0))(
  ( (tuple2!21155 (_1!12083 tuple3!2082) (_2!12083 (InoxSet Context!2038))) )
))
(declare-datatypes ((List!22528 0))(
  ( (Nil!22444) (Cons!22444 (h!27845 tuple2!21154) (t!191642 List!22528)) )
))
(declare-datatypes ((array!6943 0))(
  ( (array!6944 (arr!3085 (Array (_ BitVec 32) List!22528)) (size!17545 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4028 0))(
  ( (LongMapFixedSize!4029 (defaultEntry!2379 Int) (mask!6054 (_ BitVec 32)) (extraKeys!2262 (_ BitVec 32)) (zeroValue!2272 List!22528) (minValue!2272 List!22528) (_size!4079 (_ BitVec 32)) (_keys!2311 array!6941) (_values!2294 array!6943) (_vacant!2075 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7881 0))(
  ( (Cell!7882 (v!27132 LongMapFixedSize!4028)) )
))
(declare-datatypes ((MutLongMap!2014 0))(
  ( (LongMap!2014 (underlying!4223 Cell!7881)) (MutLongMapExt!2013 (__x!13947 Int)) )
))
(declare-datatypes ((Cell!7883 0))(
  ( (Cell!7884 (v!27133 MutLongMap!2014)) )
))
(declare-datatypes ((MutableMap!1928 0))(
  ( (MutableMapExt!1927 (__x!13948 Int)) (HashMap!1928 (underlying!4224 Cell!7883) (hashF!3851 Hashable!1928) (_size!4080 (_ BitVec 32)) (defaultValue!2090 Int)) )
))
(declare-datatypes ((CacheDown!1226 0))(
  ( (CacheDown!1227 (cache!2309 MutableMap!1928)) )
))
(declare-datatypes ((tuple3!2084 0))(
  ( (tuple3!2085 (_1!12084 Option!4702) (_2!12084 CacheUp!1222) (_3!1506 CacheDown!1226)) )
))
(declare-fun lt!766663 () tuple3!2084)

(get-info :version)

(assert (=> b!2044446 (= res!895768 (not ((_ is Some!4701) (_1!12084 lt!766663))))))

(declare-fun cacheDown!575 () CacheDown!1226)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!13 (LexerInterface!3634 List!22525 BalanceConc!14798 BalanceConc!14798 CacheUp!1222 CacheDown!1226) tuple3!2084)

(assert (=> b!2044446 (= lt!766663 (maxPrefixZipperSequenceV2MemOnlyDeriv!13 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2044447 () Bool)

(declare-fun e!1291409 () Bool)

(declare-fun e!1291408 () Bool)

(assert (=> b!2044447 (= e!1291409 e!1291408)))

(declare-fun b!2044448 () Bool)

(declare-fun e!1291403 () Bool)

(declare-fun e!1291407 () Bool)

(assert (=> b!2044448 (= e!1291403 e!1291407)))

(declare-fun res!895772 () Bool)

(assert (=> b!2044448 (=> (not res!895772) (not e!1291407))))

(declare-fun valid!1605 (CacheUp!1222) Bool)

(assert (=> b!2044448 (= res!895772 (valid!1605 (_2!12084 lt!766663)))))

(declare-fun mapNonEmpty!9283 () Bool)

(declare-fun tp!607910 () Bool)

(declare-fun tp!607900 () Bool)

(assert (=> mapNonEmpty!9283 (= mapRes!9282 (and tp!607910 tp!607900))))

(declare-fun mapValue!9282 () List!22528)

(declare-fun mapRest!9282 () (Array (_ BitVec 32) List!22528))

(declare-fun mapKey!9282 () (_ BitVec 32))

(assert (=> mapNonEmpty!9283 (= (arr!3085 (_values!2294 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) (store mapRest!9282 mapKey!9282 mapValue!9282))))

(declare-fun b!2044449 () Bool)

(declare-fun e!1291410 () Bool)

(declare-fun e!1291420 () Bool)

(declare-fun lt!766660 () MutLongMap!2013)

(assert (=> b!2044449 (= e!1291410 (and e!1291420 ((_ is LongMap!2013) lt!766660)))))

(assert (=> b!2044449 (= lt!766660 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))

(declare-fun b!2044450 () Bool)

(declare-fun e!1291406 () Bool)

(declare-fun e!1291428 () Bool)

(declare-fun lt!766661 () MutLongMap!2014)

(assert (=> b!2044450 (= e!1291406 (and e!1291428 ((_ is LongMap!2014) lt!766661)))))

(assert (=> b!2044450 (= lt!766661 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))

(declare-fun b!2044451 () Bool)

(assert (=> b!2044451 (= e!1291404 e!1291403)))

(declare-fun res!895770 () Bool)

(assert (=> b!2044451 (=> res!895770 e!1291403)))

(declare-fun rulesValidInductive!1399 (LexerInterface!3634 List!22525) Bool)

(assert (=> b!2044451 (= res!895770 (not (rulesValidInductive!1399 thiss!12889 rules!1563)))))

(declare-fun lt!766656 () tuple3!2084)

(assert (=> b!2044451 (= lt!766656 (maxPrefixZipperSequenceV2MemOnlyDeriv!13 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12084 lt!766663) (_3!1506 lt!766663)))))

(declare-fun lt!766657 () tuple2!21146)

(assert (=> b!2044451 (= lt!766657 (lexRec!439 thiss!12889 rules!1563 (_2!12081 (v!27131 (_1!12084 lt!766663)))))))

(declare-fun tp!607899 () Bool)

(declare-fun e!1291422 () Bool)

(declare-fun tp!607914 () Bool)

(declare-fun array_inv!2214 (array!6941) Bool)

(declare-fun array_inv!2215 (array!6939) Bool)

(assert (=> b!2044452 (= e!1291408 (and tp!607915 tp!607899 tp!607914 (array_inv!2214 (_keys!2310 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) (array_inv!2215 (_values!2293 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) e!1291422))))

(declare-fun b!2044453 () Bool)

(declare-fun e!1291401 () Bool)

(declare-fun e!1291415 () Bool)

(assert (=> b!2044453 (= e!1291401 e!1291415)))

(declare-fun b!2044454 () Bool)

(assert (=> b!2044454 (= e!1291429 (not e!1291427))))

(declare-fun res!895765 () Bool)

(assert (=> b!2044454 (=> res!895765 e!1291427)))

(declare-fun lt!766662 () List!22523)

(declare-fun lt!766664 () List!22523)

(declare-fun isSuffix!479 (List!22523 List!22523) Bool)

(assert (=> b!2044454 (= res!895765 (not (isSuffix!479 lt!766662 lt!766664)))))

(declare-fun lt!766658 () List!22523)

(assert (=> b!2044454 (isSuffix!479 lt!766662 lt!766658)))

(declare-datatypes ((Unit!37035 0))(
  ( (Unit!37036) )
))
(declare-fun lt!766659 () Unit!37035)

(declare-fun lt!766655 () List!22523)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!380 (List!22523 List!22523) Unit!37035)

(assert (=> b!2044454 (= lt!766659 (lemmaConcatTwoListThenFSndIsSuffix!380 lt!766655 lt!766662))))

(declare-fun b!2044455 () Bool)

(assert (=> b!2044455 (= e!1291428 e!1291401)))

(declare-fun b!2044456 () Bool)

(declare-fun res!895762 () Bool)

(assert (=> b!2044456 (=> (not res!895762) (not e!1291429))))

(declare-fun list!9194 (BalanceConc!14798) List!22523)

(assert (=> b!2044456 (= res!895762 (= (list!9194 (_2!12078 lt!766665)) (list!9194 (_2!12078 lt!766667))))))

(declare-fun b!2044457 () Bool)

(declare-fun res!895773 () Bool)

(assert (=> b!2044457 (=> (not res!895773) (not e!1291425))))

(declare-fun lt!766666 () tuple2!21146)

(declare-fun isEmpty!13977 (List!22523) Bool)

(assert (=> b!2044457 (= res!895773 (isEmpty!13977 (list!9194 (_2!12078 lt!766666))))))

(declare-fun b!2044458 () Bool)

(declare-fun tp!607911 () Bool)

(assert (=> b!2044458 (= e!1291422 (and tp!607911 mapRes!9283))))

(declare-fun condMapEmpty!9283 () Bool)

(declare-fun mapDefault!9283 () List!22527)

(assert (=> b!2044458 (= condMapEmpty!9283 (= (arr!3083 (_values!2293 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22527)) mapDefault!9283)))))

(declare-fun tp!607908 () Bool)

(declare-fun e!1291405 () Bool)

(declare-fun tp!607903 () Bool)

(declare-fun array_inv!2216 (array!6943) Bool)

(assert (=> b!2044459 (= e!1291415 (and tp!607905 tp!607903 tp!607908 (array_inv!2214 (_keys!2311 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) (array_inv!2216 (_values!2294 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) e!1291405))))

(declare-fun b!2044460 () Bool)

(declare-fun e!1291402 () Bool)

(declare-fun tp!607906 () Bool)

(assert (=> b!2044460 (= e!1291402 (and (inv!29785 (c!330998 input!986)) tp!607906))))

(declare-fun mapIsEmpty!9283 () Bool)

(assert (=> mapIsEmpty!9283 mapRes!9283))

(assert (=> b!2044461 (= e!1291431 (and tp!607918 tp!607917))))

(declare-fun b!2044462 () Bool)

(declare-fun e!1291412 () Bool)

(declare-fun tp!607913 () Bool)

(declare-fun inv!29787 (Conc!7519) Bool)

(assert (=> b!2044462 (= e!1291412 (and (inv!29787 (c!330999 acc!382)) tp!607913))))

(declare-fun b!2044463 () Bool)

(declare-fun e!1291423 () Bool)

(declare-fun e!1291416 () Bool)

(assert (=> b!2044463 (= e!1291423 e!1291416)))

(declare-fun res!895764 () Bool)

(assert (=> b!2044463 (=> (not res!895764) (not e!1291416))))

(assert (=> b!2044463 (= res!895764 (= lt!766664 lt!766658))))

(declare-fun ++!6094 (List!22523 List!22523) List!22523)

(assert (=> b!2044463 (= lt!766658 (++!6094 lt!766655 lt!766662))))

(assert (=> b!2044463 (= lt!766664 (list!9194 totalInput!418))))

(assert (=> b!2044463 (= lt!766662 (list!9194 input!986))))

(assert (=> b!2044463 (= lt!766655 (list!9194 treated!60))))

(declare-fun b!2044464 () Bool)

(declare-fun tp!607897 () Bool)

(assert (=> b!2044464 (= e!1291405 (and tp!607897 mapRes!9282))))

(declare-fun condMapEmpty!9282 () Bool)

(declare-fun mapDefault!9282 () List!22528)

(assert (=> b!2044464 (= condMapEmpty!9282 (= (arr!3085 (_values!2294 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22528)) mapDefault!9282)))))

(declare-fun b!2044465 () Bool)

(declare-fun e!1291426 () Bool)

(declare-fun e!1291418 () Bool)

(assert (=> b!2044465 (= e!1291426 e!1291418)))

(declare-fun res!895763 () Bool)

(assert (=> start!201434 (=> (not res!895763) (not e!1291423))))

(assert (=> start!201434 (= res!895763 ((_ is Lexer!3632) thiss!12889))))

(assert (=> start!201434 e!1291423))

(declare-fun e!1291430 () Bool)

(declare-fun inv!29788 (CacheDown!1226) Bool)

(assert (=> start!201434 (and (inv!29788 cacheDown!575) e!1291430)))

(assert (=> start!201434 true))

(declare-fun inv!29789 (CacheUp!1222) Bool)

(assert (=> start!201434 (and (inv!29789 cacheUp!562) e!1291426)))

(declare-fun e!1291411 () Bool)

(assert (=> start!201434 e!1291411))

(declare-fun inv!29790 (BalanceConc!14798) Bool)

(assert (=> start!201434 (and (inv!29790 totalInput!418) e!1291417)))

(assert (=> start!201434 (and (inv!29790 treated!60) e!1291424)))

(assert (=> start!201434 (and (inv!29790 input!986) e!1291402)))

(declare-fun inv!29791 (BalanceConc!14800) Bool)

(assert (=> start!201434 (and (inv!29791 acc!382) e!1291412)))

(declare-fun b!2044466 () Bool)

(declare-fun res!895761 () Bool)

(assert (=> b!2044466 (=> (not res!895761) (not e!1291429))))

(declare-fun valid!1606 (CacheDown!1226) Bool)

(assert (=> b!2044466 (= res!895761 (valid!1606 cacheDown!575))))

(declare-fun b!2044467 () Bool)

(declare-fun res!895766 () Bool)

(assert (=> b!2044467 (=> (not res!895766) (not e!1291423))))

(declare-fun rulesInvariant!3233 (LexerInterface!3634 List!22525) Bool)

(assert (=> b!2044467 (= res!895766 (rulesInvariant!3233 thiss!12889 rules!1563))))

(declare-fun b!2044468 () Bool)

(assert (=> b!2044468 (= e!1291407 (valid!1606 (_3!1506 lt!766663)))))

(declare-fun b!2044469 () Bool)

(assert (=> b!2044469 (= e!1291416 e!1291425)))

(declare-fun res!895760 () Bool)

(assert (=> b!2044469 (=> (not res!895760) (not e!1291425))))

(assert (=> b!2044469 (= res!895760 (= (list!9193 (_1!12078 lt!766666)) (list!9193 acc!382)))))

(assert (=> b!2044469 (= lt!766666 (lexRec!439 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2044470 () Bool)

(declare-fun tp!607907 () Bool)

(assert (=> b!2044470 (= e!1291411 (and e!1291413 tp!607907))))

(assert (=> b!2044471 (= e!1291418 (and e!1291410 tp!607912))))

(declare-fun b!2044472 () Bool)

(declare-fun res!895767 () Bool)

(assert (=> b!2044472 (=> (not res!895767) (not e!1291429))))

(assert (=> b!2044472 (= res!895767 (valid!1605 cacheUp!562))))

(declare-fun b!2044473 () Bool)

(declare-fun e!1291419 () Bool)

(assert (=> b!2044473 (= e!1291430 e!1291419)))

(declare-fun b!2044474 () Bool)

(assert (=> b!2044474 (= e!1291420 e!1291409)))

(declare-fun b!2044475 () Bool)

(declare-fun res!895771 () Bool)

(assert (=> b!2044475 (=> (not res!895771) (not e!1291423))))

(declare-fun isEmpty!13978 (List!22525) Bool)

(assert (=> b!2044475 (= res!895771 (not (isEmpty!13978 rules!1563)))))

(assert (=> b!2044476 (= e!1291419 (and e!1291406 tp!607916))))

(assert (= (and start!201434 res!895763) b!2044475))

(assert (= (and b!2044475 res!895771) b!2044467))

(assert (= (and b!2044467 res!895766) b!2044463))

(assert (= (and b!2044463 res!895764) b!2044469))

(assert (= (and b!2044469 res!895760) b!2044457))

(assert (= (and b!2044457 res!895773) b!2044442))

(assert (= (and b!2044442 res!895769) b!2044456))

(assert (= (and b!2044456 res!895762) b!2044472))

(assert (= (and b!2044472 res!895767) b!2044466))

(assert (= (and b!2044466 res!895761) b!2044454))

(assert (= (and b!2044454 (not res!895765)) b!2044446))

(assert (= (and b!2044446 (not res!895768)) b!2044451))

(assert (= (and b!2044451 (not res!895770)) b!2044448))

(assert (= (and b!2044448 res!895772) b!2044468))

(assert (= (and b!2044464 condMapEmpty!9282) mapIsEmpty!9282))

(assert (= (and b!2044464 (not condMapEmpty!9282)) mapNonEmpty!9283))

(assert (= b!2044459 b!2044464))

(assert (= b!2044453 b!2044459))

(assert (= b!2044455 b!2044453))

(assert (= (and b!2044450 ((_ is LongMap!2014) (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))) b!2044455))

(assert (= b!2044476 b!2044450))

(assert (= (and b!2044473 ((_ is HashMap!1928) (cache!2309 cacheDown!575))) b!2044476))

(assert (= start!201434 b!2044473))

(assert (= (and b!2044458 condMapEmpty!9283) mapIsEmpty!9283))

(assert (= (and b!2044458 (not condMapEmpty!9283)) mapNonEmpty!9282))

(assert (= b!2044452 b!2044458))

(assert (= b!2044447 b!2044452))

(assert (= b!2044474 b!2044447))

(assert (= (and b!2044449 ((_ is LongMap!2013) (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))) b!2044474))

(assert (= b!2044471 b!2044449))

(assert (= (and b!2044465 ((_ is HashMap!1927) (cache!2308 cacheUp!562))) b!2044471))

(assert (= start!201434 b!2044465))

(assert (= b!2044444 b!2044461))

(assert (= b!2044470 b!2044444))

(assert (= (and start!201434 ((_ is Cons!22441) rules!1563)) b!2044470))

(assert (= start!201434 b!2044443))

(assert (= start!201434 b!2044445))

(assert (= start!201434 b!2044460))

(assert (= start!201434 b!2044462))

(declare-fun m!2488389 () Bool)

(assert (=> b!2044452 m!2488389))

(declare-fun m!2488391 () Bool)

(assert (=> b!2044452 m!2488391))

(declare-fun m!2488393 () Bool)

(assert (=> b!2044462 m!2488393))

(declare-fun m!2488395 () Bool)

(assert (=> mapNonEmpty!9282 m!2488395))

(declare-fun m!2488397 () Bool)

(assert (=> b!2044468 m!2488397))

(declare-fun m!2488399 () Bool)

(assert (=> b!2044475 m!2488399))

(declare-fun m!2488401 () Bool)

(assert (=> b!2044445 m!2488401))

(declare-fun m!2488403 () Bool)

(assert (=> b!2044472 m!2488403))

(declare-fun m!2488405 () Bool)

(assert (=> b!2044451 m!2488405))

(declare-fun m!2488407 () Bool)

(assert (=> b!2044451 m!2488407))

(declare-fun m!2488409 () Bool)

(assert (=> b!2044451 m!2488409))

(declare-fun m!2488411 () Bool)

(assert (=> b!2044467 m!2488411))

(declare-fun m!2488413 () Bool)

(assert (=> b!2044454 m!2488413))

(declare-fun m!2488415 () Bool)

(assert (=> b!2044454 m!2488415))

(declare-fun m!2488417 () Bool)

(assert (=> b!2044454 m!2488417))

(declare-fun m!2488419 () Bool)

(assert (=> b!2044446 m!2488419))

(declare-fun m!2488421 () Bool)

(assert (=> b!2044448 m!2488421))

(declare-fun m!2488423 () Bool)

(assert (=> b!2044463 m!2488423))

(declare-fun m!2488425 () Bool)

(assert (=> b!2044463 m!2488425))

(declare-fun m!2488427 () Bool)

(assert (=> b!2044463 m!2488427))

(declare-fun m!2488429 () Bool)

(assert (=> b!2044463 m!2488429))

(declare-fun m!2488431 () Bool)

(assert (=> b!2044444 m!2488431))

(declare-fun m!2488433 () Bool)

(assert (=> b!2044444 m!2488433))

(declare-fun m!2488435 () Bool)

(assert (=> b!2044459 m!2488435))

(declare-fun m!2488437 () Bool)

(assert (=> b!2044459 m!2488437))

(declare-fun m!2488439 () Bool)

(assert (=> b!2044460 m!2488439))

(declare-fun m!2488441 () Bool)

(assert (=> b!2044456 m!2488441))

(declare-fun m!2488443 () Bool)

(assert (=> b!2044456 m!2488443))

(declare-fun m!2488445 () Bool)

(assert (=> b!2044457 m!2488445))

(assert (=> b!2044457 m!2488445))

(declare-fun m!2488447 () Bool)

(assert (=> b!2044457 m!2488447))

(declare-fun m!2488449 () Bool)

(assert (=> b!2044469 m!2488449))

(declare-fun m!2488451 () Bool)

(assert (=> b!2044469 m!2488451))

(declare-fun m!2488453 () Bool)

(assert (=> b!2044469 m!2488453))

(declare-fun m!2488455 () Bool)

(assert (=> mapNonEmpty!9283 m!2488455))

(declare-fun m!2488457 () Bool)

(assert (=> b!2044442 m!2488457))

(declare-fun m!2488459 () Bool)

(assert (=> b!2044442 m!2488459))

(declare-fun m!2488461 () Bool)

(assert (=> b!2044442 m!2488461))

(declare-fun m!2488463 () Bool)

(assert (=> b!2044442 m!2488463))

(assert (=> b!2044442 m!2488457))

(declare-fun m!2488465 () Bool)

(assert (=> b!2044442 m!2488465))

(declare-fun m!2488467 () Bool)

(assert (=> start!201434 m!2488467))

(declare-fun m!2488469 () Bool)

(assert (=> start!201434 m!2488469))

(declare-fun m!2488471 () Bool)

(assert (=> start!201434 m!2488471))

(declare-fun m!2488473 () Bool)

(assert (=> start!201434 m!2488473))

(declare-fun m!2488475 () Bool)

(assert (=> start!201434 m!2488475))

(declare-fun m!2488477 () Bool)

(assert (=> start!201434 m!2488477))

(declare-fun m!2488479 () Bool)

(assert (=> b!2044466 m!2488479))

(declare-fun m!2488481 () Bool)

(assert (=> b!2044443 m!2488481))

(check-sat (not mapNonEmpty!9282) b_and!163079 (not b!2044463) (not b_next!57843) (not start!201434) (not b!2044446) (not b!2044469) (not b!2044468) b_and!163077 (not b!2044456) b_and!163083 (not b!2044445) (not b!2044442) (not b!2044444) (not b_next!57841) (not b!2044459) (not b!2044475) (not b!2044470) (not b_next!57847) (not b!2044466) (not b!2044462) (not b!2044448) (not b!2044464) (not b!2044472) (not b_next!57851) (not b!2044452) (not b_next!57845) (not b!2044467) b_and!163085 b_and!163087 (not b!2044460) (not b_next!57849) (not b!2044451) (not mapNonEmpty!9283) (not b!2044457) (not b!2044458) (not b!2044443) b_and!163081 (not b!2044454))
(check-sat b_and!163083 (not b_next!57841) (not b_next!57847) b_and!163079 (not b_next!57843) b_and!163085 b_and!163081 b_and!163077 (not b_next!57851) (not b_next!57845) b_and!163087 (not b_next!57849))
(get-model)

(declare-fun d!625572 () Bool)

(declare-fun c!331002 () Bool)

(assert (=> d!625572 (= c!331002 ((_ is Node!7518) (c!330998 treated!60)))))

(declare-fun e!1291437 () Bool)

(assert (=> d!625572 (= (inv!29785 (c!330998 treated!60)) e!1291437)))

(declare-fun b!2044483 () Bool)

(declare-fun inv!29792 (Conc!7518) Bool)

(assert (=> b!2044483 (= e!1291437 (inv!29792 (c!330998 treated!60)))))

(declare-fun b!2044484 () Bool)

(declare-fun e!1291438 () Bool)

(assert (=> b!2044484 (= e!1291437 e!1291438)))

(declare-fun res!895778 () Bool)

(assert (=> b!2044484 (= res!895778 (not ((_ is Leaf!11010) (c!330998 treated!60))))))

(assert (=> b!2044484 (=> res!895778 e!1291438)))

(declare-fun b!2044485 () Bool)

(declare-fun inv!29793 (Conc!7518) Bool)

(assert (=> b!2044485 (= e!1291438 (inv!29793 (c!330998 treated!60)))))

(assert (= (and d!625572 c!331002) b!2044483))

(assert (= (and d!625572 (not c!331002)) b!2044484))

(assert (= (and b!2044484 (not res!895778)) b!2044485))

(declare-fun m!2488483 () Bool)

(assert (=> b!2044483 m!2488483))

(declare-fun m!2488485 () Bool)

(assert (=> b!2044485 m!2488485))

(assert (=> b!2044445 d!625572))

(declare-fun b!2044495 () Bool)

(declare-fun e!1291443 () List!22523)

(assert (=> b!2044495 (= e!1291443 (Cons!22439 (h!27840 lt!766655) (++!6094 (t!191637 lt!766655) lt!766662)))))

(declare-fun d!625574 () Bool)

(declare-fun e!1291444 () Bool)

(assert (=> d!625574 e!1291444))

(declare-fun res!895784 () Bool)

(assert (=> d!625574 (=> (not res!895784) (not e!1291444))))

(declare-fun lt!766670 () List!22523)

(declare-fun content!3319 (List!22523) (InoxSet C!11044))

(assert (=> d!625574 (= res!895784 (= (content!3319 lt!766670) ((_ map or) (content!3319 lt!766655) (content!3319 lt!766662))))))

(assert (=> d!625574 (= lt!766670 e!1291443)))

(declare-fun c!331005 () Bool)

(assert (=> d!625574 (= c!331005 ((_ is Nil!22439) lt!766655))))

(assert (=> d!625574 (= (++!6094 lt!766655 lt!766662) lt!766670)))

(declare-fun b!2044494 () Bool)

(assert (=> b!2044494 (= e!1291443 lt!766662)))

(declare-fun b!2044496 () Bool)

(declare-fun res!895783 () Bool)

(assert (=> b!2044496 (=> (not res!895783) (not e!1291444))))

(declare-fun size!17546 (List!22523) Int)

(assert (=> b!2044496 (= res!895783 (= (size!17546 lt!766670) (+ (size!17546 lt!766655) (size!17546 lt!766662))))))

(declare-fun b!2044497 () Bool)

(assert (=> b!2044497 (= e!1291444 (or (not (= lt!766662 Nil!22439)) (= lt!766670 lt!766655)))))

(assert (= (and d!625574 c!331005) b!2044494))

(assert (= (and d!625574 (not c!331005)) b!2044495))

(assert (= (and d!625574 res!895784) b!2044496))

(assert (= (and b!2044496 res!895783) b!2044497))

(declare-fun m!2488487 () Bool)

(assert (=> b!2044495 m!2488487))

(declare-fun m!2488489 () Bool)

(assert (=> d!625574 m!2488489))

(declare-fun m!2488491 () Bool)

(assert (=> d!625574 m!2488491))

(declare-fun m!2488493 () Bool)

(assert (=> d!625574 m!2488493))

(declare-fun m!2488495 () Bool)

(assert (=> b!2044496 m!2488495))

(declare-fun m!2488497 () Bool)

(assert (=> b!2044496 m!2488497))

(declare-fun m!2488499 () Bool)

(assert (=> b!2044496 m!2488499))

(assert (=> b!2044463 d!625574))

(declare-fun d!625576 () Bool)

(declare-fun list!9195 (Conc!7518) List!22523)

(assert (=> d!625576 (= (list!9194 totalInput!418) (list!9195 (c!330998 totalInput!418)))))

(declare-fun bs!421935 () Bool)

(assert (= bs!421935 d!625576))

(declare-fun m!2488501 () Bool)

(assert (=> bs!421935 m!2488501))

(assert (=> b!2044463 d!625576))

(declare-fun d!625578 () Bool)

(assert (=> d!625578 (= (list!9194 input!986) (list!9195 (c!330998 input!986)))))

(declare-fun bs!421936 () Bool)

(assert (= bs!421936 d!625578))

(declare-fun m!2488503 () Bool)

(assert (=> bs!421936 m!2488503))

(assert (=> b!2044463 d!625578))

(declare-fun d!625580 () Bool)

(assert (=> d!625580 (= (list!9194 treated!60) (list!9195 (c!330998 treated!60)))))

(declare-fun bs!421937 () Bool)

(assert (= bs!421937 d!625580))

(declare-fun m!2488505 () Bool)

(assert (=> bs!421937 m!2488505))

(assert (=> b!2044463 d!625580))

(declare-fun d!625582 () Bool)

(assert (=> d!625582 (= (inv!29784 (tag!4511 (h!27842 rules!1563))) (= (mod (str.len (value!126251 (tag!4511 (h!27842 rules!1563)))) 2) 0))))

(assert (=> b!2044444 d!625582))

(declare-fun d!625584 () Bool)

(declare-fun res!895787 () Bool)

(declare-fun e!1291447 () Bool)

(assert (=> d!625584 (=> (not res!895787) (not e!1291447))))

(declare-fun semiInverseModEq!1618 (Int Int) Bool)

(assert (=> d!625584 (= res!895787 (semiInverseModEq!1618 (toChars!5563 (transformation!4021 (h!27842 rules!1563))) (toValue!5704 (transformation!4021 (h!27842 rules!1563)))))))

(assert (=> d!625584 (= (inv!29786 (transformation!4021 (h!27842 rules!1563))) e!1291447)))

(declare-fun b!2044500 () Bool)

(declare-fun equivClasses!1545 (Int Int) Bool)

(assert (=> b!2044500 (= e!1291447 (equivClasses!1545 (toChars!5563 (transformation!4021 (h!27842 rules!1563))) (toValue!5704 (transformation!4021 (h!27842 rules!1563)))))))

(assert (= (and d!625584 res!895787) b!2044500))

(declare-fun m!2488507 () Bool)

(assert (=> d!625584 m!2488507))

(declare-fun m!2488509 () Bool)

(assert (=> b!2044500 m!2488509))

(assert (=> b!2044444 d!625584))

(declare-fun d!625586 () Bool)

(declare-fun validCacheMapUp!188 (MutableMap!1927) Bool)

(assert (=> d!625586 (= (valid!1605 cacheUp!562) (validCacheMapUp!188 (cache!2308 cacheUp!562)))))

(declare-fun bs!421938 () Bool)

(assert (= bs!421938 d!625586))

(declare-fun m!2488511 () Bool)

(assert (=> bs!421938 m!2488511))

(assert (=> b!2044472 d!625586))

(declare-fun d!625588 () Bool)

(declare-fun c!331008 () Bool)

(assert (=> d!625588 (= c!331008 ((_ is Node!7519) (c!330999 acc!382)))))

(declare-fun e!1291452 () Bool)

(assert (=> d!625588 (= (inv!29787 (c!330999 acc!382)) e!1291452)))

(declare-fun b!2044507 () Bool)

(declare-fun inv!29794 (Conc!7519) Bool)

(assert (=> b!2044507 (= e!1291452 (inv!29794 (c!330999 acc!382)))))

(declare-fun b!2044508 () Bool)

(declare-fun e!1291453 () Bool)

(assert (=> b!2044508 (= e!1291452 e!1291453)))

(declare-fun res!895790 () Bool)

(assert (=> b!2044508 (= res!895790 (not ((_ is Leaf!11011) (c!330999 acc!382))))))

(assert (=> b!2044508 (=> res!895790 e!1291453)))

(declare-fun b!2044509 () Bool)

(declare-fun inv!29795 (Conc!7519) Bool)

(assert (=> b!2044509 (= e!1291453 (inv!29795 (c!330999 acc!382)))))

(assert (= (and d!625588 c!331008) b!2044507))

(assert (= (and d!625588 (not c!331008)) b!2044508))

(assert (= (and b!2044508 (not res!895790)) b!2044509))

(declare-fun m!2488513 () Bool)

(assert (=> b!2044507 m!2488513))

(declare-fun m!2488515 () Bool)

(assert (=> b!2044509 m!2488515))

(assert (=> b!2044462 d!625588))

(declare-fun d!625590 () Bool)

(assert (=> d!625590 (= (array_inv!2214 (_keys!2310 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) (bvsge (size!17544 (_keys!2310 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2044452 d!625590))

(declare-fun d!625592 () Bool)

(assert (=> d!625592 (= (array_inv!2215 (_values!2293 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) (bvsge (size!17543 (_values!2293 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2044452 d!625592))

(declare-fun b!2044518 () Bool)

(declare-fun e!1291459 () Bool)

(declare-fun lt!766693 () tuple3!2084)

(assert (=> b!2044518 (= e!1291459 (valid!1606 (_3!1506 lt!766693)))))

(declare-fun b!2044520 () Bool)

(declare-fun res!895796 () Bool)

(assert (=> b!2044520 (=> (not res!895796) (not e!1291459))))

(assert (=> b!2044520 (= res!895796 (valid!1605 (_2!12084 lt!766693)))))

(declare-fun b!2044521 () Bool)

(declare-fun e!1291458 () tuple3!2084)

(declare-fun lt!766691 () tuple3!2084)

(assert (=> b!2044521 (= e!1291458 (tuple3!2085 (_1!12084 lt!766691) (_2!12084 lt!766691) (_3!1506 lt!766691)))))

(declare-fun call!125298 () tuple3!2084)

(assert (=> b!2044521 (= lt!766691 call!125298)))

(declare-fun bm!125293 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!5 (LexerInterface!3634 Rule!7842 BalanceConc!14798 BalanceConc!14798 CacheUp!1222 CacheDown!1226) tuple3!2084)

(assert (=> bm!125293 (= call!125298 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!5 thiss!12889 (h!27842 rules!1563) input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2044519 () Bool)

(declare-fun lt!766694 () tuple3!2084)

(declare-fun lt!766692 () tuple3!2084)

(assert (=> b!2044519 (= e!1291458 (tuple3!2085 (ite (and ((_ is None!4701) (_1!12084 lt!766694)) ((_ is None!4701) (_1!12084 lt!766692))) None!4701 (ite ((_ is None!4701) (_1!12084 lt!766692)) (_1!12084 lt!766694) (ite ((_ is None!4701) (_1!12084 lt!766694)) (_1!12084 lt!766692) (ite (>= (size!17542 (_1!12081 (v!27131 (_1!12084 lt!766694)))) (size!17542 (_1!12081 (v!27131 (_1!12084 lt!766692))))) (_1!12084 lt!766694) (_1!12084 lt!766692))))) (_2!12084 lt!766692) (_3!1506 lt!766692)))))

(assert (=> b!2044519 (= lt!766694 call!125298)))

(assert (=> b!2044519 (= lt!766692 (maxPrefixZipperSequenceV2MemOnlyDeriv!13 thiss!12889 (t!191639 rules!1563) input!986 totalInput!418 (_2!12084 lt!766694) (_3!1506 lt!766694)))))

(declare-fun d!625594 () Bool)

(assert (=> d!625594 e!1291459))

(declare-fun res!895795 () Bool)

(assert (=> d!625594 (=> (not res!895795) (not e!1291459))))

(declare-fun maxPrefixZipperSequenceV2!317 (LexerInterface!3634 List!22525 BalanceConc!14798 BalanceConc!14798) Option!4702)

(assert (=> d!625594 (= res!895795 (= (_1!12084 lt!766693) (maxPrefixZipperSequenceV2!317 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625594 (= lt!766693 e!1291458)))

(declare-fun c!331011 () Bool)

(assert (=> d!625594 (= c!331011 (and ((_ is Cons!22441) rules!1563) ((_ is Nil!22441) (t!191639 rules!1563))))))

(declare-fun lt!766687 () Unit!37035)

(declare-fun lt!766689 () Unit!37035)

(assert (=> d!625594 (= lt!766687 lt!766689)))

(declare-fun lt!766688 () List!22523)

(declare-fun lt!766690 () List!22523)

(declare-fun isPrefix!1994 (List!22523 List!22523) Bool)

(assert (=> d!625594 (isPrefix!1994 lt!766688 lt!766690)))

(declare-fun lemmaIsPrefixRefl!1312 (List!22523 List!22523) Unit!37035)

(assert (=> d!625594 (= lt!766689 (lemmaIsPrefixRefl!1312 lt!766688 lt!766690))))

(assert (=> d!625594 (= lt!766690 (list!9194 input!986))))

(assert (=> d!625594 (= lt!766688 (list!9194 input!986))))

(assert (=> d!625594 (rulesValidInductive!1399 thiss!12889 rules!1563)))

(assert (=> d!625594 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!13 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575) lt!766693)))

(assert (= (and d!625594 c!331011) b!2044521))

(assert (= (and d!625594 (not c!331011)) b!2044519))

(assert (= (or b!2044521 b!2044519) bm!125293))

(assert (= (and d!625594 res!895795) b!2044520))

(assert (= (and b!2044520 res!895796) b!2044518))

(declare-fun m!2488517 () Bool)

(assert (=> b!2044519 m!2488517))

(declare-fun m!2488519 () Bool)

(assert (=> bm!125293 m!2488519))

(declare-fun m!2488521 () Bool)

(assert (=> b!2044520 m!2488521))

(declare-fun m!2488523 () Bool)

(assert (=> d!625594 m!2488523))

(declare-fun m!2488525 () Bool)

(assert (=> d!625594 m!2488525))

(declare-fun m!2488527 () Bool)

(assert (=> d!625594 m!2488527))

(assert (=> d!625594 m!2488427))

(assert (=> d!625594 m!2488405))

(declare-fun m!2488529 () Bool)

(assert (=> b!2044518 m!2488529))

(assert (=> b!2044446 d!625594))

(declare-fun d!625596 () Bool)

(declare-fun validCacheMapDown!186 (MutableMap!1928) Bool)

(assert (=> d!625596 (= (valid!1606 cacheDown!575) (validCacheMapDown!186 (cache!2309 cacheDown!575)))))

(declare-fun bs!421939 () Bool)

(assert (= bs!421939 d!625596))

(declare-fun m!2488531 () Bool)

(assert (=> bs!421939 m!2488531))

(assert (=> b!2044466 d!625596))

(declare-fun d!625598 () Bool)

(assert (=> d!625598 (= (list!9194 (_2!12078 lt!766665)) (list!9195 (c!330998 (_2!12078 lt!766665))))))

(declare-fun bs!421940 () Bool)

(assert (= bs!421940 d!625598))

(declare-fun m!2488533 () Bool)

(assert (=> bs!421940 m!2488533))

(assert (=> b!2044456 d!625598))

(declare-fun d!625600 () Bool)

(assert (=> d!625600 (= (list!9194 (_2!12078 lt!766667)) (list!9195 (c!330998 (_2!12078 lt!766667))))))

(declare-fun bs!421941 () Bool)

(assert (= bs!421941 d!625600))

(declare-fun m!2488535 () Bool)

(assert (=> bs!421941 m!2488535))

(assert (=> b!2044456 d!625600))

(declare-fun d!625602 () Bool)

(declare-fun isBalanced!2362 (Conc!7518) Bool)

(assert (=> d!625602 (= (inv!29790 input!986) (isBalanced!2362 (c!330998 input!986)))))

(declare-fun bs!421942 () Bool)

(assert (= bs!421942 d!625602))

(declare-fun m!2488537 () Bool)

(assert (=> bs!421942 m!2488537))

(assert (=> start!201434 d!625602))

(declare-fun d!625604 () Bool)

(declare-fun res!895799 () Bool)

(declare-fun e!1291462 () Bool)

(assert (=> d!625604 (=> (not res!895799) (not e!1291462))))

(assert (=> d!625604 (= res!895799 ((_ is HashMap!1927) (cache!2308 cacheUp!562)))))

(assert (=> d!625604 (= (inv!29789 cacheUp!562) e!1291462)))

(declare-fun b!2044524 () Bool)

(assert (=> b!2044524 (= e!1291462 (validCacheMapUp!188 (cache!2308 cacheUp!562)))))

(assert (= (and d!625604 res!895799) b!2044524))

(assert (=> b!2044524 m!2488511))

(assert (=> start!201434 d!625604))

(declare-fun d!625606 () Bool)

(declare-fun isBalanced!2363 (Conc!7519) Bool)

(assert (=> d!625606 (= (inv!29791 acc!382) (isBalanced!2363 (c!330999 acc!382)))))

(declare-fun bs!421943 () Bool)

(assert (= bs!421943 d!625606))

(declare-fun m!2488539 () Bool)

(assert (=> bs!421943 m!2488539))

(assert (=> start!201434 d!625606))

(declare-fun d!625608 () Bool)

(declare-fun res!895802 () Bool)

(declare-fun e!1291465 () Bool)

(assert (=> d!625608 (=> (not res!895802) (not e!1291465))))

(assert (=> d!625608 (= res!895802 ((_ is HashMap!1928) (cache!2309 cacheDown!575)))))

(assert (=> d!625608 (= (inv!29788 cacheDown!575) e!1291465)))

(declare-fun b!2044527 () Bool)

(assert (=> b!2044527 (= e!1291465 (validCacheMapDown!186 (cache!2309 cacheDown!575)))))

(assert (= (and d!625608 res!895802) b!2044527))

(assert (=> b!2044527 m!2488531))

(assert (=> start!201434 d!625608))

(declare-fun d!625610 () Bool)

(assert (=> d!625610 (= (inv!29790 totalInput!418) (isBalanced!2362 (c!330998 totalInput!418)))))

(declare-fun bs!421944 () Bool)

(assert (= bs!421944 d!625610))

(declare-fun m!2488541 () Bool)

(assert (=> bs!421944 m!2488541))

(assert (=> start!201434 d!625610))

(declare-fun d!625612 () Bool)

(assert (=> d!625612 (= (inv!29790 treated!60) (isBalanced!2362 (c!330998 treated!60)))))

(declare-fun bs!421945 () Bool)

(assert (= bs!421945 d!625612))

(declare-fun m!2488543 () Bool)

(assert (=> bs!421945 m!2488543))

(assert (=> start!201434 d!625612))

(declare-fun d!625614 () Bool)

(declare-fun e!1291468 () Bool)

(assert (=> d!625614 e!1291468))

(declare-fun res!895805 () Bool)

(assert (=> d!625614 (=> res!895805 e!1291468)))

(declare-fun lt!766697 () Bool)

(assert (=> d!625614 (= res!895805 (not lt!766697))))

(declare-fun drop!1128 (List!22523 Int) List!22523)

(assert (=> d!625614 (= lt!766697 (= lt!766662 (drop!1128 lt!766664 (- (size!17546 lt!766664) (size!17546 lt!766662)))))))

(assert (=> d!625614 (= (isSuffix!479 lt!766662 lt!766664) lt!766697)))

(declare-fun b!2044530 () Bool)

(assert (=> b!2044530 (= e!1291468 (>= (size!17546 lt!766664) (size!17546 lt!766662)))))

(assert (= (and d!625614 (not res!895805)) b!2044530))

(declare-fun m!2488545 () Bool)

(assert (=> d!625614 m!2488545))

(assert (=> d!625614 m!2488499))

(declare-fun m!2488547 () Bool)

(assert (=> d!625614 m!2488547))

(assert (=> b!2044530 m!2488545))

(assert (=> b!2044530 m!2488499))

(assert (=> b!2044454 d!625614))

(declare-fun d!625616 () Bool)

(declare-fun e!1291469 () Bool)

(assert (=> d!625616 e!1291469))

(declare-fun res!895806 () Bool)

(assert (=> d!625616 (=> res!895806 e!1291469)))

(declare-fun lt!766698 () Bool)

(assert (=> d!625616 (= res!895806 (not lt!766698))))

(assert (=> d!625616 (= lt!766698 (= lt!766662 (drop!1128 lt!766658 (- (size!17546 lt!766658) (size!17546 lt!766662)))))))

(assert (=> d!625616 (= (isSuffix!479 lt!766662 lt!766658) lt!766698)))

(declare-fun b!2044531 () Bool)

(assert (=> b!2044531 (= e!1291469 (>= (size!17546 lt!766658) (size!17546 lt!766662)))))

(assert (= (and d!625616 (not res!895806)) b!2044531))

(declare-fun m!2488549 () Bool)

(assert (=> d!625616 m!2488549))

(assert (=> d!625616 m!2488499))

(declare-fun m!2488551 () Bool)

(assert (=> d!625616 m!2488551))

(assert (=> b!2044531 m!2488549))

(assert (=> b!2044531 m!2488499))

(assert (=> b!2044454 d!625616))

(declare-fun d!625618 () Bool)

(assert (=> d!625618 (isSuffix!479 lt!766662 (++!6094 lt!766655 lt!766662))))

(declare-fun lt!766701 () Unit!37035)

(declare-fun choose!12463 (List!22523 List!22523) Unit!37035)

(assert (=> d!625618 (= lt!766701 (choose!12463 lt!766655 lt!766662))))

(assert (=> d!625618 (= (lemmaConcatTwoListThenFSndIsSuffix!380 lt!766655 lt!766662) lt!766701)))

(declare-fun bs!421946 () Bool)

(assert (= bs!421946 d!625618))

(assert (=> bs!421946 m!2488423))

(assert (=> bs!421946 m!2488423))

(declare-fun m!2488553 () Bool)

(assert (=> bs!421946 m!2488553))

(declare-fun m!2488555 () Bool)

(assert (=> bs!421946 m!2488555))

(assert (=> b!2044454 d!625618))

(declare-fun d!625620 () Bool)

(assert (=> d!625620 (= (isEmpty!13978 rules!1563) ((_ is Nil!22441) rules!1563))))

(assert (=> b!2044475 d!625620))

(declare-fun d!625622 () Bool)

(assert (=> d!625622 (= (valid!1606 (_3!1506 lt!766663)) (validCacheMapDown!186 (cache!2309 (_3!1506 lt!766663))))))

(declare-fun bs!421947 () Bool)

(assert (= bs!421947 d!625622))

(declare-fun m!2488557 () Bool)

(assert (=> bs!421947 m!2488557))

(assert (=> b!2044468 d!625622))

(declare-fun d!625624 () Bool)

(assert (=> d!625624 (= (array_inv!2214 (_keys!2311 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) (bvsge (size!17544 (_keys!2311 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2044459 d!625624))

(declare-fun d!625626 () Bool)

(assert (=> d!625626 (= (array_inv!2216 (_values!2294 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) (bvsge (size!17545 (_values!2294 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2044459 d!625626))

(declare-fun d!625628 () Bool)

(assert (=> d!625628 (= (isEmpty!13977 (list!9194 (_2!12078 lt!766666))) ((_ is Nil!22439) (list!9194 (_2!12078 lt!766666))))))

(assert (=> b!2044457 d!625628))

(declare-fun d!625630 () Bool)

(assert (=> d!625630 (= (list!9194 (_2!12078 lt!766666)) (list!9195 (c!330998 (_2!12078 lt!766666))))))

(declare-fun bs!421948 () Bool)

(assert (= bs!421948 d!625630))

(declare-fun m!2488559 () Bool)

(assert (=> bs!421948 m!2488559))

(assert (=> b!2044457 d!625630))

(declare-fun d!625632 () Bool)

(assert (=> d!625632 (= (valid!1605 (_2!12084 lt!766663)) (validCacheMapUp!188 (cache!2308 (_2!12084 lt!766663))))))

(declare-fun bs!421949 () Bool)

(assert (= bs!421949 d!625632))

(declare-fun m!2488561 () Bool)

(assert (=> bs!421949 m!2488561))

(assert (=> b!2044448 d!625632))

(declare-fun d!625634 () Bool)

(declare-fun res!895809 () Bool)

(declare-fun e!1291472 () Bool)

(assert (=> d!625634 (=> (not res!895809) (not e!1291472))))

(declare-fun rulesValid!1505 (LexerInterface!3634 List!22525) Bool)

(assert (=> d!625634 (= res!895809 (rulesValid!1505 thiss!12889 rules!1563))))

(assert (=> d!625634 (= (rulesInvariant!3233 thiss!12889 rules!1563) e!1291472)))

(declare-fun b!2044534 () Bool)

(declare-datatypes ((List!22529 0))(
  ( (Nil!22445) (Cons!22445 (h!27846 String!25977) (t!191643 List!22529)) )
))
(declare-fun noDuplicateTag!1503 (LexerInterface!3634 List!22525 List!22529) Bool)

(assert (=> b!2044534 (= e!1291472 (noDuplicateTag!1503 thiss!12889 rules!1563 Nil!22445))))

(assert (= (and d!625634 res!895809) b!2044534))

(declare-fun m!2488563 () Bool)

(assert (=> d!625634 m!2488563))

(declare-fun m!2488565 () Bool)

(assert (=> b!2044534 m!2488565))

(assert (=> b!2044467 d!625634))

(declare-fun d!625636 () Bool)

(assert (=> d!625636 true))

(declare-fun lt!766704 () Bool)

(declare-fun lambda!76698 () Int)

(declare-fun forall!4768 (List!22525 Int) Bool)

(assert (=> d!625636 (= lt!766704 (forall!4768 rules!1563 lambda!76698))))

(declare-fun e!1291478 () Bool)

(assert (=> d!625636 (= lt!766704 e!1291478)))

(declare-fun res!895814 () Bool)

(assert (=> d!625636 (=> res!895814 e!1291478)))

(assert (=> d!625636 (= res!895814 (not ((_ is Cons!22441) rules!1563)))))

(assert (=> d!625636 (= (rulesValidInductive!1399 thiss!12889 rules!1563) lt!766704)))

(declare-fun b!2044539 () Bool)

(declare-fun e!1291477 () Bool)

(assert (=> b!2044539 (= e!1291478 e!1291477)))

(declare-fun res!895815 () Bool)

(assert (=> b!2044539 (=> (not res!895815) (not e!1291477))))

(declare-fun ruleValid!1230 (LexerInterface!3634 Rule!7842) Bool)

(assert (=> b!2044539 (= res!895815 (ruleValid!1230 thiss!12889 (h!27842 rules!1563)))))

(declare-fun b!2044540 () Bool)

(assert (=> b!2044540 (= e!1291477 (rulesValidInductive!1399 thiss!12889 (t!191639 rules!1563)))))

(assert (= (and d!625636 (not res!895814)) b!2044539))

(assert (= (and b!2044539 res!895815) b!2044540))

(declare-fun m!2488567 () Bool)

(assert (=> d!625636 m!2488567))

(declare-fun m!2488569 () Bool)

(assert (=> b!2044539 m!2488569))

(declare-fun m!2488571 () Bool)

(assert (=> b!2044540 m!2488571))

(assert (=> b!2044451 d!625636))

(declare-fun b!2044543 () Bool)

(declare-fun e!1291480 () Bool)

(declare-fun lt!766711 () tuple3!2084)

(assert (=> b!2044543 (= e!1291480 (valid!1606 (_3!1506 lt!766711)))))

(declare-fun b!2044545 () Bool)

(declare-fun res!895817 () Bool)

(assert (=> b!2044545 (=> (not res!895817) (not e!1291480))))

(assert (=> b!2044545 (= res!895817 (valid!1605 (_2!12084 lt!766711)))))

(declare-fun b!2044546 () Bool)

(declare-fun e!1291479 () tuple3!2084)

(declare-fun lt!766709 () tuple3!2084)

(assert (=> b!2044546 (= e!1291479 (tuple3!2085 (_1!12084 lt!766709) (_2!12084 lt!766709) (_3!1506 lt!766709)))))

(declare-fun call!125299 () tuple3!2084)

(assert (=> b!2044546 (= lt!766709 call!125299)))

(declare-fun bm!125294 () Bool)

(assert (=> bm!125294 (= call!125299 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!5 thiss!12889 (h!27842 rules!1563) input!986 totalInput!418 (_2!12084 lt!766663) (_3!1506 lt!766663)))))

(declare-fun b!2044544 () Bool)

(declare-fun lt!766712 () tuple3!2084)

(declare-fun lt!766710 () tuple3!2084)

(assert (=> b!2044544 (= e!1291479 (tuple3!2085 (ite (and ((_ is None!4701) (_1!12084 lt!766712)) ((_ is None!4701) (_1!12084 lt!766710))) None!4701 (ite ((_ is None!4701) (_1!12084 lt!766710)) (_1!12084 lt!766712) (ite ((_ is None!4701) (_1!12084 lt!766712)) (_1!12084 lt!766710) (ite (>= (size!17542 (_1!12081 (v!27131 (_1!12084 lt!766712)))) (size!17542 (_1!12081 (v!27131 (_1!12084 lt!766710))))) (_1!12084 lt!766712) (_1!12084 lt!766710))))) (_2!12084 lt!766710) (_3!1506 lt!766710)))))

(assert (=> b!2044544 (= lt!766712 call!125299)))

(assert (=> b!2044544 (= lt!766710 (maxPrefixZipperSequenceV2MemOnlyDeriv!13 thiss!12889 (t!191639 rules!1563) input!986 totalInput!418 (_2!12084 lt!766712) (_3!1506 lt!766712)))))

(declare-fun d!625638 () Bool)

(assert (=> d!625638 e!1291480))

(declare-fun res!895816 () Bool)

(assert (=> d!625638 (=> (not res!895816) (not e!1291480))))

(assert (=> d!625638 (= res!895816 (= (_1!12084 lt!766711) (maxPrefixZipperSequenceV2!317 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625638 (= lt!766711 e!1291479)))

(declare-fun c!331012 () Bool)

(assert (=> d!625638 (= c!331012 (and ((_ is Cons!22441) rules!1563) ((_ is Nil!22441) (t!191639 rules!1563))))))

(declare-fun lt!766705 () Unit!37035)

(declare-fun lt!766707 () Unit!37035)

(assert (=> d!625638 (= lt!766705 lt!766707)))

(declare-fun lt!766706 () List!22523)

(declare-fun lt!766708 () List!22523)

(assert (=> d!625638 (isPrefix!1994 lt!766706 lt!766708)))

(assert (=> d!625638 (= lt!766707 (lemmaIsPrefixRefl!1312 lt!766706 lt!766708))))

(assert (=> d!625638 (= lt!766708 (list!9194 input!986))))

(assert (=> d!625638 (= lt!766706 (list!9194 input!986))))

(assert (=> d!625638 (rulesValidInductive!1399 thiss!12889 rules!1563)))

(assert (=> d!625638 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!13 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12084 lt!766663) (_3!1506 lt!766663)) lt!766711)))

(assert (= (and d!625638 c!331012) b!2044546))

(assert (= (and d!625638 (not c!331012)) b!2044544))

(assert (= (or b!2044546 b!2044544) bm!125294))

(assert (= (and d!625638 res!895816) b!2044545))

(assert (= (and b!2044545 res!895817) b!2044543))

(declare-fun m!2488573 () Bool)

(assert (=> b!2044544 m!2488573))

(declare-fun m!2488575 () Bool)

(assert (=> bm!125294 m!2488575))

(declare-fun m!2488577 () Bool)

(assert (=> b!2044545 m!2488577))

(declare-fun m!2488579 () Bool)

(assert (=> d!625638 m!2488579))

(declare-fun m!2488581 () Bool)

(assert (=> d!625638 m!2488581))

(assert (=> d!625638 m!2488527))

(assert (=> d!625638 m!2488427))

(assert (=> d!625638 m!2488405))

(declare-fun m!2488583 () Bool)

(assert (=> b!2044543 m!2488583))

(assert (=> b!2044451 d!625638))

(declare-fun b!2044561 () Bool)

(declare-fun e!1291489 () tuple2!21146)

(assert (=> b!2044561 (= e!1291489 (tuple2!21147 (BalanceConc!14801 Empty!7519) (_2!12081 (v!27131 (_1!12084 lt!766663)))))))

(declare-fun b!2044562 () Bool)

(declare-fun e!1291492 () Bool)

(declare-fun e!1291491 () Bool)

(assert (=> b!2044562 (= e!1291492 e!1291491)))

(declare-fun res!895826 () Bool)

(declare-fun lt!766719 () tuple2!21146)

(declare-fun size!17547 (BalanceConc!14798) Int)

(assert (=> b!2044562 (= res!895826 (< (size!17547 (_2!12078 lt!766719)) (size!17547 (_2!12081 (v!27131 (_1!12084 lt!766663))))))))

(assert (=> b!2044562 (=> (not res!895826) (not e!1291491))))

(declare-fun d!625640 () Bool)

(declare-fun e!1291490 () Bool)

(assert (=> d!625640 e!1291490))

(declare-fun res!895825 () Bool)

(assert (=> d!625640 (=> (not res!895825) (not e!1291490))))

(assert (=> d!625640 (= res!895825 e!1291492)))

(declare-fun c!331018 () Bool)

(declare-fun size!17548 (BalanceConc!14800) Int)

(assert (=> d!625640 (= c!331018 (> (size!17548 (_1!12078 lt!766719)) 0))))

(assert (=> d!625640 (= lt!766719 e!1291489)))

(declare-fun c!331019 () Bool)

(declare-fun lt!766720 () Option!4702)

(assert (=> d!625640 (= c!331019 ((_ is Some!4701) lt!766720))))

(declare-fun maxPrefixZipperSequence!790 (LexerInterface!3634 List!22525 BalanceConc!14798) Option!4702)

(assert (=> d!625640 (= lt!766720 (maxPrefixZipperSequence!790 thiss!12889 rules!1563 (_2!12081 (v!27131 (_1!12084 lt!766663)))))))

(assert (=> d!625640 (= (lexRec!439 thiss!12889 rules!1563 (_2!12081 (v!27131 (_1!12084 lt!766663)))) lt!766719)))

(declare-fun b!2044563 () Bool)

(declare-datatypes ((tuple2!21156 0))(
  ( (tuple2!21157 (_1!12085 List!22524) (_2!12085 List!22523)) )
))
(declare-fun lexList!990 (LexerInterface!3634 List!22525 List!22523) tuple2!21156)

(assert (=> b!2044563 (= e!1291490 (= (list!9194 (_2!12078 lt!766719)) (_2!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 (_2!12081 (v!27131 (_1!12084 lt!766663))))))))))

(declare-fun b!2044564 () Bool)

(declare-fun res!895824 () Bool)

(assert (=> b!2044564 (=> (not res!895824) (not e!1291490))))

(assert (=> b!2044564 (= res!895824 (= (list!9193 (_1!12078 lt!766719)) (_1!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 (_2!12081 (v!27131 (_1!12084 lt!766663))))))))))

(declare-fun b!2044565 () Bool)

(declare-fun lt!766721 () tuple2!21146)

(declare-fun prepend!912 (BalanceConc!14800 Token!7592) BalanceConc!14800)

(assert (=> b!2044565 (= e!1291489 (tuple2!21147 (prepend!912 (_1!12078 lt!766721) (_1!12081 (v!27131 lt!766720))) (_2!12078 lt!766721)))))

(assert (=> b!2044565 (= lt!766721 (lexRec!439 thiss!12889 rules!1563 (_2!12081 (v!27131 lt!766720))))))

(declare-fun b!2044566 () Bool)

(assert (=> b!2044566 (= e!1291492 (= (list!9194 (_2!12078 lt!766719)) (list!9194 (_2!12081 (v!27131 (_1!12084 lt!766663))))))))

(declare-fun b!2044567 () Bool)

(declare-fun isEmpty!13979 (BalanceConc!14800) Bool)

(assert (=> b!2044567 (= e!1291491 (not (isEmpty!13979 (_1!12078 lt!766719))))))

(assert (= (and d!625640 c!331019) b!2044565))

(assert (= (and d!625640 (not c!331019)) b!2044561))

(assert (= (and d!625640 c!331018) b!2044562))

(assert (= (and d!625640 (not c!331018)) b!2044566))

(assert (= (and b!2044562 res!895826) b!2044567))

(assert (= (and d!625640 res!895825) b!2044564))

(assert (= (and b!2044564 res!895824) b!2044563))

(declare-fun m!2488585 () Bool)

(assert (=> b!2044563 m!2488585))

(declare-fun m!2488587 () Bool)

(assert (=> b!2044563 m!2488587))

(assert (=> b!2044563 m!2488587))

(declare-fun m!2488589 () Bool)

(assert (=> b!2044563 m!2488589))

(declare-fun m!2488591 () Bool)

(assert (=> b!2044567 m!2488591))

(assert (=> b!2044566 m!2488585))

(assert (=> b!2044566 m!2488587))

(declare-fun m!2488593 () Bool)

(assert (=> b!2044562 m!2488593))

(declare-fun m!2488595 () Bool)

(assert (=> b!2044562 m!2488595))

(declare-fun m!2488597 () Bool)

(assert (=> b!2044565 m!2488597))

(declare-fun m!2488599 () Bool)

(assert (=> b!2044565 m!2488599))

(declare-fun m!2488601 () Bool)

(assert (=> d!625640 m!2488601))

(declare-fun m!2488603 () Bool)

(assert (=> d!625640 m!2488603))

(declare-fun m!2488605 () Bool)

(assert (=> b!2044564 m!2488605))

(assert (=> b!2044564 m!2488587))

(assert (=> b!2044564 m!2488587))

(assert (=> b!2044564 m!2488589))

(assert (=> b!2044451 d!625640))

(declare-fun d!625642 () Bool)

(declare-fun c!331020 () Bool)

(assert (=> d!625642 (= c!331020 ((_ is Node!7518) (c!330998 totalInput!418)))))

(declare-fun e!1291493 () Bool)

(assert (=> d!625642 (= (inv!29785 (c!330998 totalInput!418)) e!1291493)))

(declare-fun b!2044568 () Bool)

(assert (=> b!2044568 (= e!1291493 (inv!29792 (c!330998 totalInput!418)))))

(declare-fun b!2044569 () Bool)

(declare-fun e!1291494 () Bool)

(assert (=> b!2044569 (= e!1291493 e!1291494)))

(declare-fun res!895827 () Bool)

(assert (=> b!2044569 (= res!895827 (not ((_ is Leaf!11010) (c!330998 totalInput!418))))))

(assert (=> b!2044569 (=> res!895827 e!1291494)))

(declare-fun b!2044570 () Bool)

(assert (=> b!2044570 (= e!1291494 (inv!29793 (c!330998 totalInput!418)))))

(assert (= (and d!625642 c!331020) b!2044568))

(assert (= (and d!625642 (not c!331020)) b!2044569))

(assert (= (and b!2044569 (not res!895827)) b!2044570))

(declare-fun m!2488607 () Bool)

(assert (=> b!2044568 m!2488607))

(declare-fun m!2488609 () Bool)

(assert (=> b!2044570 m!2488609))

(assert (=> b!2044443 d!625642))

(declare-fun d!625644 () Bool)

(declare-fun list!9196 (Conc!7519) List!22524)

(assert (=> d!625644 (= (list!9193 (_1!12078 lt!766666)) (list!9196 (c!330999 (_1!12078 lt!766666))))))

(declare-fun bs!421950 () Bool)

(assert (= bs!421950 d!625644))

(declare-fun m!2488611 () Bool)

(assert (=> bs!421950 m!2488611))

(assert (=> b!2044469 d!625644))

(declare-fun d!625646 () Bool)

(assert (=> d!625646 (= (list!9193 acc!382) (list!9196 (c!330999 acc!382)))))

(declare-fun bs!421951 () Bool)

(assert (= bs!421951 d!625646))

(declare-fun m!2488613 () Bool)

(assert (=> bs!421951 m!2488613))

(assert (=> b!2044469 d!625646))

(declare-fun b!2044571 () Bool)

(declare-fun e!1291495 () tuple2!21146)

(assert (=> b!2044571 (= e!1291495 (tuple2!21147 (BalanceConc!14801 Empty!7519) treated!60))))

(declare-fun b!2044572 () Bool)

(declare-fun e!1291498 () Bool)

(declare-fun e!1291497 () Bool)

(assert (=> b!2044572 (= e!1291498 e!1291497)))

(declare-fun res!895830 () Bool)

(declare-fun lt!766722 () tuple2!21146)

(assert (=> b!2044572 (= res!895830 (< (size!17547 (_2!12078 lt!766722)) (size!17547 treated!60)))))

(assert (=> b!2044572 (=> (not res!895830) (not e!1291497))))

(declare-fun d!625648 () Bool)

(declare-fun e!1291496 () Bool)

(assert (=> d!625648 e!1291496))

(declare-fun res!895829 () Bool)

(assert (=> d!625648 (=> (not res!895829) (not e!1291496))))

(assert (=> d!625648 (= res!895829 e!1291498)))

(declare-fun c!331021 () Bool)

(assert (=> d!625648 (= c!331021 (> (size!17548 (_1!12078 lt!766722)) 0))))

(assert (=> d!625648 (= lt!766722 e!1291495)))

(declare-fun c!331022 () Bool)

(declare-fun lt!766723 () Option!4702)

(assert (=> d!625648 (= c!331022 ((_ is Some!4701) lt!766723))))

(assert (=> d!625648 (= lt!766723 (maxPrefixZipperSequence!790 thiss!12889 rules!1563 treated!60))))

(assert (=> d!625648 (= (lexRec!439 thiss!12889 rules!1563 treated!60) lt!766722)))

(declare-fun b!2044573 () Bool)

(assert (=> b!2044573 (= e!1291496 (= (list!9194 (_2!12078 lt!766722)) (_2!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 treated!60)))))))

(declare-fun b!2044574 () Bool)

(declare-fun res!895828 () Bool)

(assert (=> b!2044574 (=> (not res!895828) (not e!1291496))))

(assert (=> b!2044574 (= res!895828 (= (list!9193 (_1!12078 lt!766722)) (_1!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 treated!60)))))))

(declare-fun b!2044575 () Bool)

(declare-fun lt!766724 () tuple2!21146)

(assert (=> b!2044575 (= e!1291495 (tuple2!21147 (prepend!912 (_1!12078 lt!766724) (_1!12081 (v!27131 lt!766723))) (_2!12078 lt!766724)))))

(assert (=> b!2044575 (= lt!766724 (lexRec!439 thiss!12889 rules!1563 (_2!12081 (v!27131 lt!766723))))))

(declare-fun b!2044576 () Bool)

(assert (=> b!2044576 (= e!1291498 (= (list!9194 (_2!12078 lt!766722)) (list!9194 treated!60)))))

(declare-fun b!2044577 () Bool)

(assert (=> b!2044577 (= e!1291497 (not (isEmpty!13979 (_1!12078 lt!766722))))))

(assert (= (and d!625648 c!331022) b!2044575))

(assert (= (and d!625648 (not c!331022)) b!2044571))

(assert (= (and d!625648 c!331021) b!2044572))

(assert (= (and d!625648 (not c!331021)) b!2044576))

(assert (= (and b!2044572 res!895830) b!2044577))

(assert (= (and d!625648 res!895829) b!2044574))

(assert (= (and b!2044574 res!895828) b!2044573))

(declare-fun m!2488615 () Bool)

(assert (=> b!2044573 m!2488615))

(assert (=> b!2044573 m!2488429))

(assert (=> b!2044573 m!2488429))

(declare-fun m!2488617 () Bool)

(assert (=> b!2044573 m!2488617))

(declare-fun m!2488619 () Bool)

(assert (=> b!2044577 m!2488619))

(assert (=> b!2044576 m!2488615))

(assert (=> b!2044576 m!2488429))

(declare-fun m!2488621 () Bool)

(assert (=> b!2044572 m!2488621))

(declare-fun m!2488623 () Bool)

(assert (=> b!2044572 m!2488623))

(declare-fun m!2488625 () Bool)

(assert (=> b!2044575 m!2488625))

(declare-fun m!2488627 () Bool)

(assert (=> b!2044575 m!2488627))

(declare-fun m!2488629 () Bool)

(assert (=> d!625648 m!2488629))

(declare-fun m!2488631 () Bool)

(assert (=> d!625648 m!2488631))

(declare-fun m!2488633 () Bool)

(assert (=> b!2044574 m!2488633))

(assert (=> b!2044574 m!2488429))

(assert (=> b!2044574 m!2488429))

(assert (=> b!2044574 m!2488617))

(assert (=> b!2044469 d!625648))

(declare-fun b!2044578 () Bool)

(declare-fun e!1291499 () tuple2!21146)

(assert (=> b!2044578 (= e!1291499 (tuple2!21147 (BalanceConc!14801 Empty!7519) totalInput!418))))

(declare-fun b!2044579 () Bool)

(declare-fun e!1291502 () Bool)

(declare-fun e!1291501 () Bool)

(assert (=> b!2044579 (= e!1291502 e!1291501)))

(declare-fun res!895833 () Bool)

(declare-fun lt!766725 () tuple2!21146)

(assert (=> b!2044579 (= res!895833 (< (size!17547 (_2!12078 lt!766725)) (size!17547 totalInput!418)))))

(assert (=> b!2044579 (=> (not res!895833) (not e!1291501))))

(declare-fun d!625650 () Bool)

(declare-fun e!1291500 () Bool)

(assert (=> d!625650 e!1291500))

(declare-fun res!895832 () Bool)

(assert (=> d!625650 (=> (not res!895832) (not e!1291500))))

(assert (=> d!625650 (= res!895832 e!1291502)))

(declare-fun c!331023 () Bool)

(assert (=> d!625650 (= c!331023 (> (size!17548 (_1!12078 lt!766725)) 0))))

(assert (=> d!625650 (= lt!766725 e!1291499)))

(declare-fun c!331024 () Bool)

(declare-fun lt!766726 () Option!4702)

(assert (=> d!625650 (= c!331024 ((_ is Some!4701) lt!766726))))

(assert (=> d!625650 (= lt!766726 (maxPrefixZipperSequence!790 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!625650 (= (lexRec!439 thiss!12889 rules!1563 totalInput!418) lt!766725)))

(declare-fun b!2044580 () Bool)

(assert (=> b!2044580 (= e!1291500 (= (list!9194 (_2!12078 lt!766725)) (_2!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 totalInput!418)))))))

(declare-fun b!2044581 () Bool)

(declare-fun res!895831 () Bool)

(assert (=> b!2044581 (=> (not res!895831) (not e!1291500))))

(assert (=> b!2044581 (= res!895831 (= (list!9193 (_1!12078 lt!766725)) (_1!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 totalInput!418)))))))

(declare-fun b!2044582 () Bool)

(declare-fun lt!766727 () tuple2!21146)

(assert (=> b!2044582 (= e!1291499 (tuple2!21147 (prepend!912 (_1!12078 lt!766727) (_1!12081 (v!27131 lt!766726))) (_2!12078 lt!766727)))))

(assert (=> b!2044582 (= lt!766727 (lexRec!439 thiss!12889 rules!1563 (_2!12081 (v!27131 lt!766726))))))

(declare-fun b!2044583 () Bool)

(assert (=> b!2044583 (= e!1291502 (= (list!9194 (_2!12078 lt!766725)) (list!9194 totalInput!418)))))

(declare-fun b!2044584 () Bool)

(assert (=> b!2044584 (= e!1291501 (not (isEmpty!13979 (_1!12078 lt!766725))))))

(assert (= (and d!625650 c!331024) b!2044582))

(assert (= (and d!625650 (not c!331024)) b!2044578))

(assert (= (and d!625650 c!331023) b!2044579))

(assert (= (and d!625650 (not c!331023)) b!2044583))

(assert (= (and b!2044579 res!895833) b!2044584))

(assert (= (and d!625650 res!895832) b!2044581))

(assert (= (and b!2044581 res!895831) b!2044580))

(declare-fun m!2488635 () Bool)

(assert (=> b!2044580 m!2488635))

(assert (=> b!2044580 m!2488425))

(assert (=> b!2044580 m!2488425))

(declare-fun m!2488637 () Bool)

(assert (=> b!2044580 m!2488637))

(declare-fun m!2488639 () Bool)

(assert (=> b!2044584 m!2488639))

(assert (=> b!2044583 m!2488635))

(assert (=> b!2044583 m!2488425))

(declare-fun m!2488641 () Bool)

(assert (=> b!2044579 m!2488641))

(declare-fun m!2488643 () Bool)

(assert (=> b!2044579 m!2488643))

(declare-fun m!2488645 () Bool)

(assert (=> b!2044582 m!2488645))

(declare-fun m!2488647 () Bool)

(assert (=> b!2044582 m!2488647))

(declare-fun m!2488649 () Bool)

(assert (=> d!625650 m!2488649))

(declare-fun m!2488651 () Bool)

(assert (=> d!625650 m!2488651))

(declare-fun m!2488653 () Bool)

(assert (=> b!2044581 m!2488653))

(assert (=> b!2044581 m!2488425))

(assert (=> b!2044581 m!2488425))

(assert (=> b!2044581 m!2488637))

(assert (=> b!2044442 d!625650))

(declare-fun b!2044585 () Bool)

(declare-fun e!1291503 () tuple2!21146)

(assert (=> b!2044585 (= e!1291503 (tuple2!21147 (BalanceConc!14801 Empty!7519) input!986))))

(declare-fun b!2044586 () Bool)

(declare-fun e!1291506 () Bool)

(declare-fun e!1291505 () Bool)

(assert (=> b!2044586 (= e!1291506 e!1291505)))

(declare-fun res!895836 () Bool)

(declare-fun lt!766728 () tuple2!21146)

(assert (=> b!2044586 (= res!895836 (< (size!17547 (_2!12078 lt!766728)) (size!17547 input!986)))))

(assert (=> b!2044586 (=> (not res!895836) (not e!1291505))))

(declare-fun d!625652 () Bool)

(declare-fun e!1291504 () Bool)

(assert (=> d!625652 e!1291504))

(declare-fun res!895835 () Bool)

(assert (=> d!625652 (=> (not res!895835) (not e!1291504))))

(assert (=> d!625652 (= res!895835 e!1291506)))

(declare-fun c!331025 () Bool)

(assert (=> d!625652 (= c!331025 (> (size!17548 (_1!12078 lt!766728)) 0))))

(assert (=> d!625652 (= lt!766728 e!1291503)))

(declare-fun c!331026 () Bool)

(declare-fun lt!766729 () Option!4702)

(assert (=> d!625652 (= c!331026 ((_ is Some!4701) lt!766729))))

(assert (=> d!625652 (= lt!766729 (maxPrefixZipperSequence!790 thiss!12889 rules!1563 input!986))))

(assert (=> d!625652 (= (lexRec!439 thiss!12889 rules!1563 input!986) lt!766728)))

(declare-fun b!2044587 () Bool)

(assert (=> b!2044587 (= e!1291504 (= (list!9194 (_2!12078 lt!766728)) (_2!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 input!986)))))))

(declare-fun b!2044588 () Bool)

(declare-fun res!895834 () Bool)

(assert (=> b!2044588 (=> (not res!895834) (not e!1291504))))

(assert (=> b!2044588 (= res!895834 (= (list!9193 (_1!12078 lt!766728)) (_1!12085 (lexList!990 thiss!12889 rules!1563 (list!9194 input!986)))))))

(declare-fun b!2044589 () Bool)

(declare-fun lt!766730 () tuple2!21146)

(assert (=> b!2044589 (= e!1291503 (tuple2!21147 (prepend!912 (_1!12078 lt!766730) (_1!12081 (v!27131 lt!766729))) (_2!12078 lt!766730)))))

(assert (=> b!2044589 (= lt!766730 (lexRec!439 thiss!12889 rules!1563 (_2!12081 (v!27131 lt!766729))))))

(declare-fun b!2044590 () Bool)

(assert (=> b!2044590 (= e!1291506 (= (list!9194 (_2!12078 lt!766728)) (list!9194 input!986)))))

(declare-fun b!2044591 () Bool)

(assert (=> b!2044591 (= e!1291505 (not (isEmpty!13979 (_1!12078 lt!766728))))))

(assert (= (and d!625652 c!331026) b!2044589))

(assert (= (and d!625652 (not c!331026)) b!2044585))

(assert (= (and d!625652 c!331025) b!2044586))

(assert (= (and d!625652 (not c!331025)) b!2044590))

(assert (= (and b!2044586 res!895836) b!2044591))

(assert (= (and d!625652 res!895835) b!2044588))

(assert (= (and b!2044588 res!895834) b!2044587))

(declare-fun m!2488655 () Bool)

(assert (=> b!2044587 m!2488655))

(assert (=> b!2044587 m!2488427))

(assert (=> b!2044587 m!2488427))

(declare-fun m!2488657 () Bool)

(assert (=> b!2044587 m!2488657))

(declare-fun m!2488659 () Bool)

(assert (=> b!2044591 m!2488659))

(assert (=> b!2044590 m!2488655))

(assert (=> b!2044590 m!2488427))

(declare-fun m!2488661 () Bool)

(assert (=> b!2044586 m!2488661))

(declare-fun m!2488663 () Bool)

(assert (=> b!2044586 m!2488663))

(declare-fun m!2488665 () Bool)

(assert (=> b!2044589 m!2488665))

(declare-fun m!2488667 () Bool)

(assert (=> b!2044589 m!2488667))

(declare-fun m!2488669 () Bool)

(assert (=> d!625652 m!2488669))

(declare-fun m!2488671 () Bool)

(assert (=> d!625652 m!2488671))

(declare-fun m!2488673 () Bool)

(assert (=> b!2044588 m!2488673))

(assert (=> b!2044588 m!2488427))

(assert (=> b!2044588 m!2488427))

(assert (=> b!2044588 m!2488657))

(assert (=> b!2044442 d!625652))

(declare-fun d!625654 () Bool)

(assert (=> d!625654 (= (list!9193 (_1!12078 lt!766665)) (list!9196 (c!330999 (_1!12078 lt!766665))))))

(declare-fun bs!421952 () Bool)

(assert (= bs!421952 d!625654))

(declare-fun m!2488675 () Bool)

(assert (=> bs!421952 m!2488675))

(assert (=> b!2044442 d!625654))

(declare-fun d!625656 () Bool)

(assert (=> d!625656 (= (list!9193 (++!6093 acc!382 (_1!12078 lt!766667))) (list!9196 (c!330999 (++!6093 acc!382 (_1!12078 lt!766667)))))))

(declare-fun bs!421953 () Bool)

(assert (= bs!421953 d!625656))

(declare-fun m!2488677 () Bool)

(assert (=> bs!421953 m!2488677))

(assert (=> b!2044442 d!625656))

(declare-fun d!625658 () Bool)

(declare-fun e!1291509 () Bool)

(assert (=> d!625658 e!1291509))

(declare-fun res!895847 () Bool)

(assert (=> d!625658 (=> (not res!895847) (not e!1291509))))

(declare-fun appendAssocInst!551 (Conc!7519 Conc!7519) Bool)

(assert (=> d!625658 (= res!895847 (appendAssocInst!551 (c!330999 acc!382) (c!330999 (_1!12078 lt!766667))))))

(declare-fun lt!766733 () BalanceConc!14800)

(declare-fun ++!6095 (Conc!7519 Conc!7519) Conc!7519)

(assert (=> d!625658 (= lt!766733 (BalanceConc!14801 (++!6095 (c!330999 acc!382) (c!330999 (_1!12078 lt!766667)))))))

(assert (=> d!625658 (= (++!6093 acc!382 (_1!12078 lt!766667)) lt!766733)))

(declare-fun b!2044600 () Bool)

(declare-fun res!895848 () Bool)

(assert (=> b!2044600 (=> (not res!895848) (not e!1291509))))

(assert (=> b!2044600 (= res!895848 (isBalanced!2363 (++!6095 (c!330999 acc!382) (c!330999 (_1!12078 lt!766667)))))))

(declare-fun b!2044601 () Bool)

(declare-fun res!895845 () Bool)

(assert (=> b!2044601 (=> (not res!895845) (not e!1291509))))

(declare-fun height!1179 (Conc!7519) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2044601 (= res!895845 (<= (height!1179 (++!6095 (c!330999 acc!382) (c!330999 (_1!12078 lt!766667)))) (+ (max!0 (height!1179 (c!330999 acc!382)) (height!1179 (c!330999 (_1!12078 lt!766667)))) 1)))))

(declare-fun b!2044602 () Bool)

(declare-fun res!895846 () Bool)

(assert (=> b!2044602 (=> (not res!895846) (not e!1291509))))

(assert (=> b!2044602 (= res!895846 (>= (height!1179 (++!6095 (c!330999 acc!382) (c!330999 (_1!12078 lt!766667)))) (max!0 (height!1179 (c!330999 acc!382)) (height!1179 (c!330999 (_1!12078 lt!766667))))))))

(declare-fun b!2044603 () Bool)

(declare-fun ++!6096 (List!22524 List!22524) List!22524)

(assert (=> b!2044603 (= e!1291509 (= (list!9193 lt!766733) (++!6096 (list!9193 acc!382) (list!9193 (_1!12078 lt!766667)))))))

(assert (= (and d!625658 res!895847) b!2044600))

(assert (= (and b!2044600 res!895848) b!2044601))

(assert (= (and b!2044601 res!895845) b!2044602))

(assert (= (and b!2044602 res!895846) b!2044603))

(declare-fun m!2488679 () Bool)

(assert (=> b!2044600 m!2488679))

(assert (=> b!2044600 m!2488679))

(declare-fun m!2488681 () Bool)

(assert (=> b!2044600 m!2488681))

(declare-fun m!2488683 () Bool)

(assert (=> b!2044602 m!2488683))

(declare-fun m!2488685 () Bool)

(assert (=> b!2044602 m!2488685))

(declare-fun m!2488687 () Bool)

(assert (=> b!2044602 m!2488687))

(assert (=> b!2044602 m!2488679))

(declare-fun m!2488689 () Bool)

(assert (=> b!2044602 m!2488689))

(assert (=> b!2044602 m!2488685))

(assert (=> b!2044602 m!2488679))

(assert (=> b!2044602 m!2488683))

(assert (=> b!2044601 m!2488683))

(assert (=> b!2044601 m!2488685))

(assert (=> b!2044601 m!2488687))

(assert (=> b!2044601 m!2488679))

(assert (=> b!2044601 m!2488689))

(assert (=> b!2044601 m!2488685))

(assert (=> b!2044601 m!2488679))

(assert (=> b!2044601 m!2488683))

(declare-fun m!2488691 () Bool)

(assert (=> d!625658 m!2488691))

(assert (=> d!625658 m!2488679))

(declare-fun m!2488693 () Bool)

(assert (=> b!2044603 m!2488693))

(assert (=> b!2044603 m!2488451))

(declare-fun m!2488695 () Bool)

(assert (=> b!2044603 m!2488695))

(assert (=> b!2044603 m!2488451))

(assert (=> b!2044603 m!2488695))

(declare-fun m!2488697 () Bool)

(assert (=> b!2044603 m!2488697))

(assert (=> b!2044442 d!625658))

(declare-fun d!625660 () Bool)

(declare-fun c!331030 () Bool)

(assert (=> d!625660 (= c!331030 ((_ is Node!7518) (c!330998 input!986)))))

(declare-fun e!1291510 () Bool)

(assert (=> d!625660 (= (inv!29785 (c!330998 input!986)) e!1291510)))

(declare-fun b!2044604 () Bool)

(assert (=> b!2044604 (= e!1291510 (inv!29792 (c!330998 input!986)))))

(declare-fun b!2044605 () Bool)

(declare-fun e!1291511 () Bool)

(assert (=> b!2044605 (= e!1291510 e!1291511)))

(declare-fun res!895849 () Bool)

(assert (=> b!2044605 (= res!895849 (not ((_ is Leaf!11010) (c!330998 input!986))))))

(assert (=> b!2044605 (=> res!895849 e!1291511)))

(declare-fun b!2044606 () Bool)

(assert (=> b!2044606 (= e!1291511 (inv!29793 (c!330998 input!986)))))

(assert (= (and d!625660 c!331030) b!2044604))

(assert (= (and d!625660 (not c!331030)) b!2044605))

(assert (= (and b!2044605 (not res!895849)) b!2044606))

(declare-fun m!2488699 () Bool)

(assert (=> b!2044604 m!2488699))

(declare-fun m!2488701 () Bool)

(assert (=> b!2044606 m!2488701))

(assert (=> b!2044460 d!625660))

(declare-fun b!2044621 () Bool)

(declare-fun e!1291524 () Bool)

(declare-fun tp!607939 () Bool)

(assert (=> b!2044621 (= e!1291524 tp!607939)))

(declare-fun tp_is_empty!9299 () Bool)

(declare-fun e!1291526 () Bool)

(declare-fun mapDefault!9286 () List!22527)

(declare-fun b!2044622 () Bool)

(declare-fun e!1291525 () Bool)

(declare-fun setRes!11863 () Bool)

(declare-fun tp!607940 () Bool)

(declare-fun inv!29796 (Context!2038) Bool)

(assert (=> b!2044622 (= e!1291525 (and (inv!29796 (_1!12079 (_1!12080 (h!27844 mapDefault!9286)))) e!1291526 tp_is_empty!9299 setRes!11863 tp!607940))))

(declare-fun condSetEmpty!11862 () Bool)

(assert (=> b!2044622 (= condSetEmpty!11862 (= (_2!12080 (h!27844 mapDefault!9286)) ((as const (Array Context!2038 Bool)) false)))))

(declare-fun e!1291529 () Bool)

(declare-fun b!2044623 () Bool)

(declare-fun e!1291528 () Bool)

(declare-fun setRes!11862 () Bool)

(declare-fun tp!607945 () Bool)

(declare-fun mapValue!9286 () List!22527)

(assert (=> b!2044623 (= e!1291529 (and (inv!29796 (_1!12079 (_1!12080 (h!27844 mapValue!9286)))) e!1291528 tp_is_empty!9299 setRes!11862 tp!607945))))

(declare-fun condSetEmpty!11863 () Bool)

(assert (=> b!2044623 (= condSetEmpty!11863 (= (_2!12080 (h!27844 mapValue!9286)) ((as const (Array Context!2038 Bool)) false)))))

(declare-fun setIsEmpty!11862 () Bool)

(assert (=> setIsEmpty!11862 setRes!11862))

(declare-fun b!2044624 () Bool)

(declare-fun tp!607941 () Bool)

(assert (=> b!2044624 (= e!1291528 tp!607941)))

(declare-fun mapIsEmpty!9286 () Bool)

(declare-fun mapRes!9286 () Bool)

(assert (=> mapIsEmpty!9286 mapRes!9286))

(declare-fun b!2044625 () Bool)

(declare-fun tp!607937 () Bool)

(assert (=> b!2044625 (= e!1291526 tp!607937)))

(declare-fun b!2044626 () Bool)

(declare-fun e!1291527 () Bool)

(declare-fun tp!607943 () Bool)

(assert (=> b!2044626 (= e!1291527 tp!607943)))

(declare-fun tp!607944 () Bool)

(declare-fun setElem!11862 () Context!2038)

(declare-fun setNonEmpty!11862 () Bool)

(assert (=> setNonEmpty!11862 (= setRes!11863 (and tp!607944 (inv!29796 setElem!11862) e!1291527))))

(declare-fun setRest!11863 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11862 (= (_2!12080 (h!27844 mapDefault!9286)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11862 true) setRest!11863))))

(declare-fun mapNonEmpty!9286 () Bool)

(declare-fun tp!607942 () Bool)

(assert (=> mapNonEmpty!9286 (= mapRes!9286 (and tp!607942 e!1291529))))

(declare-fun mapKey!9286 () (_ BitVec 32))

(declare-fun mapRest!9286 () (Array (_ BitVec 32) List!22527))

(assert (=> mapNonEmpty!9286 (= mapRest!9283 (store mapRest!9286 mapKey!9286 mapValue!9286))))

(declare-fun tp!607938 () Bool)

(declare-fun setElem!11863 () Context!2038)

(declare-fun setNonEmpty!11863 () Bool)

(assert (=> setNonEmpty!11863 (= setRes!11862 (and tp!607938 (inv!29796 setElem!11863) e!1291524))))

(declare-fun setRest!11862 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11863 (= (_2!12080 (h!27844 mapValue!9286)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11863 true) setRest!11862))))

(declare-fun condMapEmpty!9286 () Bool)

(assert (=> mapNonEmpty!9282 (= condMapEmpty!9286 (= mapRest!9283 ((as const (Array (_ BitVec 32) List!22527)) mapDefault!9286)))))

(assert (=> mapNonEmpty!9282 (= tp!607898 (and e!1291525 mapRes!9286))))

(declare-fun setIsEmpty!11863 () Bool)

(assert (=> setIsEmpty!11863 setRes!11863))

(assert (= (and mapNonEmpty!9282 condMapEmpty!9286) mapIsEmpty!9286))

(assert (= (and mapNonEmpty!9282 (not condMapEmpty!9286)) mapNonEmpty!9286))

(assert (= b!2044623 b!2044624))

(assert (= (and b!2044623 condSetEmpty!11863) setIsEmpty!11862))

(assert (= (and b!2044623 (not condSetEmpty!11863)) setNonEmpty!11863))

(assert (= setNonEmpty!11863 b!2044621))

(assert (= (and mapNonEmpty!9286 ((_ is Cons!22443) mapValue!9286)) b!2044623))

(assert (= b!2044622 b!2044625))

(assert (= (and b!2044622 condSetEmpty!11862) setIsEmpty!11863))

(assert (= (and b!2044622 (not condSetEmpty!11862)) setNonEmpty!11862))

(assert (= setNonEmpty!11862 b!2044626))

(assert (= (and mapNonEmpty!9282 ((_ is Cons!22443) mapDefault!9286)) b!2044622))

(declare-fun m!2488703 () Bool)

(assert (=> b!2044622 m!2488703))

(declare-fun m!2488705 () Bool)

(assert (=> b!2044623 m!2488705))

(declare-fun m!2488707 () Bool)

(assert (=> mapNonEmpty!9286 m!2488707))

(declare-fun m!2488709 () Bool)

(assert (=> setNonEmpty!11863 m!2488709))

(declare-fun m!2488711 () Bool)

(assert (=> setNonEmpty!11862 m!2488711))

(declare-fun e!1291538 () Bool)

(declare-fun tp!607954 () Bool)

(declare-fun setElem!11866 () Context!2038)

(declare-fun setRes!11866 () Bool)

(declare-fun setNonEmpty!11866 () Bool)

(assert (=> setNonEmpty!11866 (= setRes!11866 (and tp!607954 (inv!29796 setElem!11866) e!1291538))))

(declare-fun setRest!11866 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11866 (= (_2!12080 (h!27844 mapValue!9283)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11866 true) setRest!11866))))

(declare-fun setIsEmpty!11866 () Bool)

(assert (=> setIsEmpty!11866 setRes!11866))

(declare-fun tp!607957 () Bool)

(declare-fun e!1291536 () Bool)

(declare-fun b!2044635 () Bool)

(declare-fun e!1291537 () Bool)

(assert (=> b!2044635 (= e!1291537 (and (inv!29796 (_1!12079 (_1!12080 (h!27844 mapValue!9283)))) e!1291536 tp_is_empty!9299 setRes!11866 tp!607957))))

(declare-fun condSetEmpty!11866 () Bool)

(assert (=> b!2044635 (= condSetEmpty!11866 (= (_2!12080 (h!27844 mapValue!9283)) ((as const (Array Context!2038 Bool)) false)))))

(assert (=> mapNonEmpty!9282 (= tp!607901 e!1291537)))

(declare-fun b!2044636 () Bool)

(declare-fun tp!607955 () Bool)

(assert (=> b!2044636 (= e!1291538 tp!607955)))

(declare-fun b!2044637 () Bool)

(declare-fun tp!607956 () Bool)

(assert (=> b!2044637 (= e!1291536 tp!607956)))

(assert (= b!2044635 b!2044637))

(assert (= (and b!2044635 condSetEmpty!11866) setIsEmpty!11866))

(assert (= (and b!2044635 (not condSetEmpty!11866)) setNonEmpty!11866))

(assert (= setNonEmpty!11866 b!2044636))

(assert (= (and mapNonEmpty!9282 ((_ is Cons!22443) mapValue!9283)) b!2044635))

(declare-fun m!2488713 () Bool)

(assert (=> setNonEmpty!11866 m!2488713))

(declare-fun m!2488715 () Bool)

(assert (=> b!2044635 m!2488715))

(declare-fun e!1291543 () Bool)

(declare-fun tp!607964 () Bool)

(declare-fun tp!607965 () Bool)

(declare-fun b!2044646 () Bool)

(assert (=> b!2044646 (= e!1291543 (and (inv!29785 (left!17813 (c!330998 treated!60))) tp!607964 (inv!29785 (right!18143 (c!330998 treated!60))) tp!607965))))

(declare-fun b!2044648 () Bool)

(declare-fun e!1291544 () Bool)

(declare-fun tp!607966 () Bool)

(assert (=> b!2044648 (= e!1291544 tp!607966)))

(declare-fun b!2044647 () Bool)

(declare-fun inv!29797 (IArray!15041) Bool)

(assert (=> b!2044647 (= e!1291543 (and (inv!29797 (xs!10426 (c!330998 treated!60))) e!1291544))))

(assert (=> b!2044445 (= tp!607904 (and (inv!29785 (c!330998 treated!60)) e!1291543))))

(assert (= (and b!2044445 ((_ is Node!7518) (c!330998 treated!60))) b!2044646))

(assert (= b!2044647 b!2044648))

(assert (= (and b!2044445 ((_ is Leaf!11010) (c!330998 treated!60))) b!2044647))

(declare-fun m!2488717 () Bool)

(assert (=> b!2044646 m!2488717))

(declare-fun m!2488719 () Bool)

(assert (=> b!2044646 m!2488719))

(declare-fun m!2488721 () Bool)

(assert (=> b!2044647 m!2488721))

(assert (=> b!2044445 m!2488401))

(declare-fun b!2044662 () Bool)

(declare-fun e!1291547 () Bool)

(declare-fun tp!607978 () Bool)

(declare-fun tp!607977 () Bool)

(assert (=> b!2044662 (= e!1291547 (and tp!607978 tp!607977))))

(declare-fun b!2044661 () Bool)

(declare-fun tp!607979 () Bool)

(assert (=> b!2044661 (= e!1291547 tp!607979)))

(assert (=> b!2044444 (= tp!607909 e!1291547)))

(declare-fun b!2044660 () Bool)

(declare-fun tp!607981 () Bool)

(declare-fun tp!607980 () Bool)

(assert (=> b!2044660 (= e!1291547 (and tp!607981 tp!607980))))

(declare-fun b!2044659 () Bool)

(assert (=> b!2044659 (= e!1291547 tp_is_empty!9299)))

(assert (= (and b!2044444 ((_ is ElementMatch!5449) (regex!4021 (h!27842 rules!1563)))) b!2044659))

(assert (= (and b!2044444 ((_ is Concat!9607) (regex!4021 (h!27842 rules!1563)))) b!2044660))

(assert (= (and b!2044444 ((_ is Star!5449) (regex!4021 (h!27842 rules!1563)))) b!2044661))

(assert (= (and b!2044444 ((_ is Union!5449) (regex!4021 (h!27842 rules!1563)))) b!2044662))

(declare-fun e!1291553 () Bool)

(declare-fun b!2044671 () Bool)

(declare-fun tp!607990 () Bool)

(declare-fun tp!607988 () Bool)

(assert (=> b!2044671 (= e!1291553 (and (inv!29787 (left!17814 (c!330999 acc!382))) tp!607990 (inv!29787 (right!18144 (c!330999 acc!382))) tp!607988))))

(declare-fun b!2044673 () Bool)

(declare-fun e!1291552 () Bool)

(declare-fun tp!607989 () Bool)

(assert (=> b!2044673 (= e!1291552 tp!607989)))

(declare-fun b!2044672 () Bool)

(declare-fun inv!29798 (IArray!15043) Bool)

(assert (=> b!2044672 (= e!1291553 (and (inv!29798 (xs!10427 (c!330999 acc!382))) e!1291552))))

(assert (=> b!2044462 (= tp!607913 (and (inv!29787 (c!330999 acc!382)) e!1291553))))

(assert (= (and b!2044462 ((_ is Node!7519) (c!330999 acc!382))) b!2044671))

(assert (= b!2044672 b!2044673))

(assert (= (and b!2044462 ((_ is Leaf!11011) (c!330999 acc!382))) b!2044672))

(declare-fun m!2488723 () Bool)

(assert (=> b!2044671 m!2488723))

(declare-fun m!2488725 () Bool)

(assert (=> b!2044671 m!2488725))

(declare-fun m!2488727 () Bool)

(assert (=> b!2044672 m!2488727))

(assert (=> b!2044462 m!2488393))

(declare-fun setElem!11867 () Context!2038)

(declare-fun tp!607991 () Bool)

(declare-fun setNonEmpty!11867 () Bool)

(declare-fun setRes!11867 () Bool)

(declare-fun e!1291556 () Bool)

(assert (=> setNonEmpty!11867 (= setRes!11867 (and tp!607991 (inv!29796 setElem!11867) e!1291556))))

(declare-fun setRest!11867 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11867 (= (_2!12080 (h!27844 (zeroValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11867 true) setRest!11867))))

(declare-fun setIsEmpty!11867 () Bool)

(assert (=> setIsEmpty!11867 setRes!11867))

(declare-fun tp!607994 () Bool)

(declare-fun e!1291554 () Bool)

(declare-fun b!2044674 () Bool)

(declare-fun e!1291555 () Bool)

(assert (=> b!2044674 (= e!1291555 (and (inv!29796 (_1!12079 (_1!12080 (h!27844 (zeroValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))))) e!1291554 tp_is_empty!9299 setRes!11867 tp!607994))))

(declare-fun condSetEmpty!11867 () Bool)

(assert (=> b!2044674 (= condSetEmpty!11867 (= (_2!12080 (h!27844 (zeroValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))) ((as const (Array Context!2038 Bool)) false)))))

(assert (=> b!2044452 (= tp!607899 e!1291555)))

(declare-fun b!2044675 () Bool)

(declare-fun tp!607992 () Bool)

(assert (=> b!2044675 (= e!1291556 tp!607992)))

(declare-fun b!2044676 () Bool)

(declare-fun tp!607993 () Bool)

(assert (=> b!2044676 (= e!1291554 tp!607993)))

(assert (= b!2044674 b!2044676))

(assert (= (and b!2044674 condSetEmpty!11867) setIsEmpty!11867))

(assert (= (and b!2044674 (not condSetEmpty!11867)) setNonEmpty!11867))

(assert (= setNonEmpty!11867 b!2044675))

(assert (= (and b!2044452 ((_ is Cons!22443) (zeroValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))) b!2044674))

(declare-fun m!2488729 () Bool)

(assert (=> setNonEmpty!11867 m!2488729))

(declare-fun m!2488731 () Bool)

(assert (=> b!2044674 m!2488731))

(declare-fun setRes!11868 () Bool)

(declare-fun e!1291559 () Bool)

(declare-fun setElem!11868 () Context!2038)

(declare-fun setNonEmpty!11868 () Bool)

(declare-fun tp!607995 () Bool)

(assert (=> setNonEmpty!11868 (= setRes!11868 (and tp!607995 (inv!29796 setElem!11868) e!1291559))))

(declare-fun setRest!11868 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11868 (= (_2!12080 (h!27844 (minValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11868 true) setRest!11868))))

(declare-fun setIsEmpty!11868 () Bool)

(assert (=> setIsEmpty!11868 setRes!11868))

(declare-fun e!1291558 () Bool)

(declare-fun b!2044677 () Bool)

(declare-fun tp!607998 () Bool)

(declare-fun e!1291557 () Bool)

(assert (=> b!2044677 (= e!1291558 (and (inv!29796 (_1!12079 (_1!12080 (h!27844 (minValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))))) e!1291557 tp_is_empty!9299 setRes!11868 tp!607998))))

(declare-fun condSetEmpty!11868 () Bool)

(assert (=> b!2044677 (= condSetEmpty!11868 (= (_2!12080 (h!27844 (minValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))) ((as const (Array Context!2038 Bool)) false)))))

(assert (=> b!2044452 (= tp!607914 e!1291558)))

(declare-fun b!2044678 () Bool)

(declare-fun tp!607996 () Bool)

(assert (=> b!2044678 (= e!1291559 tp!607996)))

(declare-fun b!2044679 () Bool)

(declare-fun tp!607997 () Bool)

(assert (=> b!2044679 (= e!1291557 tp!607997)))

(assert (= b!2044677 b!2044679))

(assert (= (and b!2044677 condSetEmpty!11868) setIsEmpty!11868))

(assert (= (and b!2044677 (not condSetEmpty!11868)) setNonEmpty!11868))

(assert (= setNonEmpty!11868 b!2044678))

(assert (= (and b!2044452 ((_ is Cons!22443) (minValue!2271 (v!27129 (underlying!4221 (v!27130 (underlying!4222 (cache!2308 cacheUp!562)))))))) b!2044677))

(declare-fun m!2488733 () Bool)

(assert (=> setNonEmpty!11868 m!2488733))

(declare-fun m!2488735 () Bool)

(assert (=> b!2044677 m!2488735))

(declare-fun b!2044688 () Bool)

(declare-fun e!1291566 () Bool)

(declare-fun tp!608013 () Bool)

(assert (=> b!2044688 (= e!1291566 tp!608013)))

(declare-fun b!2044689 () Bool)

(declare-fun e!1291568 () Bool)

(declare-fun tp!608011 () Bool)

(assert (=> b!2044689 (= e!1291568 tp!608011)))

(declare-fun setRes!11871 () Bool)

(declare-fun setElem!11871 () Context!2038)

(declare-fun tp!608012 () Bool)

(declare-fun setNonEmpty!11871 () Bool)

(assert (=> setNonEmpty!11871 (= setRes!11871 (and tp!608012 (inv!29796 setElem!11871) e!1291566))))

(declare-fun setRest!11871 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11871 (= (_2!12083 (h!27845 mapDefault!9282)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11871 true) setRest!11871))))

(declare-fun setIsEmpty!11871 () Bool)

(assert (=> setIsEmpty!11871 setRes!11871))

(declare-fun e!1291567 () Bool)

(assert (=> b!2044464 (= tp!607897 e!1291567)))

(declare-fun b!2044690 () Bool)

(declare-fun tp!608009 () Bool)

(declare-fun tp!608010 () Bool)

(assert (=> b!2044690 (= e!1291567 (and tp!608009 (inv!29796 (_2!12082 (_1!12083 (h!27845 mapDefault!9282)))) e!1291568 tp_is_empty!9299 setRes!11871 tp!608010))))

(declare-fun condSetEmpty!11871 () Bool)

(assert (=> b!2044690 (= condSetEmpty!11871 (= (_2!12083 (h!27845 mapDefault!9282)) ((as const (Array Context!2038 Bool)) false)))))

(assert (= b!2044690 b!2044689))

(assert (= (and b!2044690 condSetEmpty!11871) setIsEmpty!11871))

(assert (= (and b!2044690 (not condSetEmpty!11871)) setNonEmpty!11871))

(assert (= setNonEmpty!11871 b!2044688))

(assert (= (and b!2044464 ((_ is Cons!22444) mapDefault!9282)) b!2044690))

(declare-fun m!2488737 () Bool)

(assert (=> setNonEmpty!11871 m!2488737))

(declare-fun m!2488739 () Bool)

(assert (=> b!2044690 m!2488739))

(declare-fun setRes!11872 () Bool)

(declare-fun setNonEmpty!11872 () Bool)

(declare-fun e!1291571 () Bool)

(declare-fun tp!608014 () Bool)

(declare-fun setElem!11872 () Context!2038)

(assert (=> setNonEmpty!11872 (= setRes!11872 (and tp!608014 (inv!29796 setElem!11872) e!1291571))))

(declare-fun setRest!11872 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11872 (= (_2!12080 (h!27844 mapDefault!9283)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11872 true) setRest!11872))))

(declare-fun setIsEmpty!11872 () Bool)

(assert (=> setIsEmpty!11872 setRes!11872))

(declare-fun e!1291569 () Bool)

(declare-fun e!1291570 () Bool)

(declare-fun tp!608017 () Bool)

(declare-fun b!2044691 () Bool)

(assert (=> b!2044691 (= e!1291570 (and (inv!29796 (_1!12079 (_1!12080 (h!27844 mapDefault!9283)))) e!1291569 tp_is_empty!9299 setRes!11872 tp!608017))))

(declare-fun condSetEmpty!11872 () Bool)

(assert (=> b!2044691 (= condSetEmpty!11872 (= (_2!12080 (h!27844 mapDefault!9283)) ((as const (Array Context!2038 Bool)) false)))))

(assert (=> b!2044458 (= tp!607911 e!1291570)))

(declare-fun b!2044692 () Bool)

(declare-fun tp!608015 () Bool)

(assert (=> b!2044692 (= e!1291571 tp!608015)))

(declare-fun b!2044693 () Bool)

(declare-fun tp!608016 () Bool)

(assert (=> b!2044693 (= e!1291569 tp!608016)))

(assert (= b!2044691 b!2044693))

(assert (= (and b!2044691 condSetEmpty!11872) setIsEmpty!11872))

(assert (= (and b!2044691 (not condSetEmpty!11872)) setNonEmpty!11872))

(assert (= setNonEmpty!11872 b!2044692))

(assert (= (and b!2044458 ((_ is Cons!22443) mapDefault!9283)) b!2044691))

(declare-fun m!2488741 () Bool)

(assert (=> setNonEmpty!11872 m!2488741))

(declare-fun m!2488743 () Bool)

(assert (=> b!2044691 m!2488743))

(declare-fun b!2044694 () Bool)

(declare-fun e!1291572 () Bool)

(declare-fun tp!608022 () Bool)

(assert (=> b!2044694 (= e!1291572 tp!608022)))

(declare-fun b!2044695 () Bool)

(declare-fun e!1291574 () Bool)

(declare-fun tp!608020 () Bool)

(assert (=> b!2044695 (= e!1291574 tp!608020)))

(declare-fun setElem!11873 () Context!2038)

(declare-fun tp!608021 () Bool)

(declare-fun setNonEmpty!11873 () Bool)

(declare-fun setRes!11873 () Bool)

(assert (=> setNonEmpty!11873 (= setRes!11873 (and tp!608021 (inv!29796 setElem!11873) e!1291572))))

(declare-fun setRest!11873 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11873 (= (_2!12083 (h!27845 (zeroValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11873 true) setRest!11873))))

(declare-fun setIsEmpty!11873 () Bool)

(assert (=> setIsEmpty!11873 setRes!11873))

(declare-fun e!1291573 () Bool)

(assert (=> b!2044459 (= tp!607903 e!1291573)))

(declare-fun b!2044696 () Bool)

(declare-fun tp!608019 () Bool)

(declare-fun tp!608018 () Bool)

(assert (=> b!2044696 (= e!1291573 (and tp!608018 (inv!29796 (_2!12082 (_1!12083 (h!27845 (zeroValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))))) e!1291574 tp_is_empty!9299 setRes!11873 tp!608019))))

(declare-fun condSetEmpty!11873 () Bool)

(assert (=> b!2044696 (= condSetEmpty!11873 (= (_2!12083 (h!27845 (zeroValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))) ((as const (Array Context!2038 Bool)) false)))))

(assert (= b!2044696 b!2044695))

(assert (= (and b!2044696 condSetEmpty!11873) setIsEmpty!11873))

(assert (= (and b!2044696 (not condSetEmpty!11873)) setNonEmpty!11873))

(assert (= setNonEmpty!11873 b!2044694))

(assert (= (and b!2044459 ((_ is Cons!22444) (zeroValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))) b!2044696))

(declare-fun m!2488745 () Bool)

(assert (=> setNonEmpty!11873 m!2488745))

(declare-fun m!2488747 () Bool)

(assert (=> b!2044696 m!2488747))

(declare-fun b!2044697 () Bool)

(declare-fun e!1291575 () Bool)

(declare-fun tp!608027 () Bool)

(assert (=> b!2044697 (= e!1291575 tp!608027)))

(declare-fun b!2044698 () Bool)

(declare-fun e!1291577 () Bool)

(declare-fun tp!608025 () Bool)

(assert (=> b!2044698 (= e!1291577 tp!608025)))

(declare-fun setNonEmpty!11874 () Bool)

(declare-fun tp!608026 () Bool)

(declare-fun setElem!11874 () Context!2038)

(declare-fun setRes!11874 () Bool)

(assert (=> setNonEmpty!11874 (= setRes!11874 (and tp!608026 (inv!29796 setElem!11874) e!1291575))))

(declare-fun setRest!11874 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11874 (= (_2!12083 (h!27845 (minValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11874 true) setRest!11874))))

(declare-fun setIsEmpty!11874 () Bool)

(assert (=> setIsEmpty!11874 setRes!11874))

(declare-fun e!1291576 () Bool)

(assert (=> b!2044459 (= tp!607908 e!1291576)))

(declare-fun b!2044699 () Bool)

(declare-fun tp!608023 () Bool)

(declare-fun tp!608024 () Bool)

(assert (=> b!2044699 (= e!1291576 (and tp!608023 (inv!29796 (_2!12082 (_1!12083 (h!27845 (minValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))))) e!1291577 tp_is_empty!9299 setRes!11874 tp!608024))))

(declare-fun condSetEmpty!11874 () Bool)

(assert (=> b!2044699 (= condSetEmpty!11874 (= (_2!12083 (h!27845 (minValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))) ((as const (Array Context!2038 Bool)) false)))))

(assert (= b!2044699 b!2044698))

(assert (= (and b!2044699 condSetEmpty!11874) setIsEmpty!11874))

(assert (= (and b!2044699 (not condSetEmpty!11874)) setNonEmpty!11874))

(assert (= setNonEmpty!11874 b!2044697))

(assert (= (and b!2044459 ((_ is Cons!22444) (minValue!2272 (v!27132 (underlying!4223 (v!27133 (underlying!4224 (cache!2309 cacheDown!575)))))))) b!2044699))

(declare-fun m!2488749 () Bool)

(assert (=> setNonEmpty!11874 m!2488749))

(declare-fun m!2488751 () Bool)

(assert (=> b!2044699 m!2488751))

(declare-fun setIsEmpty!11879 () Bool)

(declare-fun setRes!11880 () Bool)

(assert (=> setIsEmpty!11879 setRes!11880))

(declare-fun setNonEmpty!11879 () Bool)

(declare-fun setElem!11879 () Context!2038)

(declare-fun tp!608054 () Bool)

(declare-fun e!1291590 () Bool)

(assert (=> setNonEmpty!11879 (= setRes!11880 (and tp!608054 (inv!29796 setElem!11879) e!1291590))))

(declare-fun mapDefault!9289 () List!22528)

(declare-fun setRest!11879 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11879 (= (_2!12083 (h!27845 mapDefault!9289)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11879 true) setRest!11879))))

(declare-fun b!2044714 () Bool)

(declare-fun tp!608057 () Bool)

(assert (=> b!2044714 (= e!1291590 tp!608057)))

(declare-fun e!1291591 () Bool)

(declare-fun tp!608052 () Bool)

(declare-fun tp!608055 () Bool)

(declare-fun e!1291595 () Bool)

(declare-fun b!2044715 () Bool)

(assert (=> b!2044715 (= e!1291595 (and tp!608055 (inv!29796 (_2!12082 (_1!12083 (h!27845 mapDefault!9289)))) e!1291591 tp_is_empty!9299 setRes!11880 tp!608052))))

(declare-fun condSetEmpty!11879 () Bool)

(assert (=> b!2044715 (= condSetEmpty!11879 (= (_2!12083 (h!27845 mapDefault!9289)) ((as const (Array Context!2038 Bool)) false)))))

(declare-fun b!2044716 () Bool)

(declare-fun e!1291592 () Bool)

(declare-fun tp!608059 () Bool)

(assert (=> b!2044716 (= e!1291592 tp!608059)))

(declare-fun mapIsEmpty!9289 () Bool)

(declare-fun mapRes!9289 () Bool)

(assert (=> mapIsEmpty!9289 mapRes!9289))

(declare-fun b!2044718 () Bool)

(declare-fun e!1291594 () Bool)

(declare-fun tp!608056 () Bool)

(declare-fun setRes!11879 () Bool)

(declare-fun mapValue!9289 () List!22528)

(declare-fun tp!608058 () Bool)

(assert (=> b!2044718 (= e!1291594 (and tp!608056 (inv!29796 (_2!12082 (_1!12083 (h!27845 mapValue!9289)))) e!1291592 tp_is_empty!9299 setRes!11879 tp!608058))))

(declare-fun condSetEmpty!11880 () Bool)

(assert (=> b!2044718 (= condSetEmpty!11880 (= (_2!12083 (h!27845 mapValue!9289)) ((as const (Array Context!2038 Bool)) false)))))

(declare-fun tp!608060 () Bool)

(declare-fun setNonEmpty!11880 () Bool)

(declare-fun e!1291593 () Bool)

(declare-fun setElem!11880 () Context!2038)

(assert (=> setNonEmpty!11880 (= setRes!11879 (and tp!608060 (inv!29796 setElem!11880) e!1291593))))

(declare-fun setRest!11880 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11880 (= (_2!12083 (h!27845 mapValue!9289)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11880 true) setRest!11880))))

(declare-fun mapNonEmpty!9289 () Bool)

(declare-fun tp!608051 () Bool)

(assert (=> mapNonEmpty!9289 (= mapRes!9289 (and tp!608051 e!1291594))))

(declare-fun mapRest!9289 () (Array (_ BitVec 32) List!22528))

(declare-fun mapKey!9289 () (_ BitVec 32))

(assert (=> mapNonEmpty!9289 (= mapRest!9282 (store mapRest!9289 mapKey!9289 mapValue!9289))))

(declare-fun setIsEmpty!11880 () Bool)

(assert (=> setIsEmpty!11880 setRes!11879))

(declare-fun b!2044719 () Bool)

(declare-fun tp!608053 () Bool)

(assert (=> b!2044719 (= e!1291591 tp!608053)))

(declare-fun condMapEmpty!9289 () Bool)

(assert (=> mapNonEmpty!9283 (= condMapEmpty!9289 (= mapRest!9282 ((as const (Array (_ BitVec 32) List!22528)) mapDefault!9289)))))

(assert (=> mapNonEmpty!9283 (= tp!607910 (and e!1291595 mapRes!9289))))

(declare-fun b!2044717 () Bool)

(declare-fun tp!608050 () Bool)

(assert (=> b!2044717 (= e!1291593 tp!608050)))

(assert (= (and mapNonEmpty!9283 condMapEmpty!9289) mapIsEmpty!9289))

(assert (= (and mapNonEmpty!9283 (not condMapEmpty!9289)) mapNonEmpty!9289))

(assert (= b!2044718 b!2044716))

(assert (= (and b!2044718 condSetEmpty!11880) setIsEmpty!11880))

(assert (= (and b!2044718 (not condSetEmpty!11880)) setNonEmpty!11880))

(assert (= setNonEmpty!11880 b!2044717))

(assert (= (and mapNonEmpty!9289 ((_ is Cons!22444) mapValue!9289)) b!2044718))

(assert (= b!2044715 b!2044719))

(assert (= (and b!2044715 condSetEmpty!11879) setIsEmpty!11879))

(assert (= (and b!2044715 (not condSetEmpty!11879)) setNonEmpty!11879))

(assert (= setNonEmpty!11879 b!2044714))

(assert (= (and mapNonEmpty!9283 ((_ is Cons!22444) mapDefault!9289)) b!2044715))

(declare-fun m!2488753 () Bool)

(assert (=> mapNonEmpty!9289 m!2488753))

(declare-fun m!2488755 () Bool)

(assert (=> b!2044715 m!2488755))

(declare-fun m!2488757 () Bool)

(assert (=> setNonEmpty!11879 m!2488757))

(declare-fun m!2488759 () Bool)

(assert (=> b!2044718 m!2488759))

(declare-fun m!2488761 () Bool)

(assert (=> setNonEmpty!11880 m!2488761))

(declare-fun b!2044720 () Bool)

(declare-fun e!1291596 () Bool)

(declare-fun tp!608065 () Bool)

(assert (=> b!2044720 (= e!1291596 tp!608065)))

(declare-fun b!2044721 () Bool)

(declare-fun e!1291598 () Bool)

(declare-fun tp!608063 () Bool)

(assert (=> b!2044721 (= e!1291598 tp!608063)))

(declare-fun tp!608064 () Bool)

(declare-fun setRes!11881 () Bool)

(declare-fun setElem!11881 () Context!2038)

(declare-fun setNonEmpty!11881 () Bool)

(assert (=> setNonEmpty!11881 (= setRes!11881 (and tp!608064 (inv!29796 setElem!11881) e!1291596))))

(declare-fun setRest!11881 () (InoxSet Context!2038))

(assert (=> setNonEmpty!11881 (= (_2!12083 (h!27845 mapValue!9282)) ((_ map or) (store ((as const (Array Context!2038 Bool)) false) setElem!11881 true) setRest!11881))))

(declare-fun setIsEmpty!11881 () Bool)

(assert (=> setIsEmpty!11881 setRes!11881))

(declare-fun e!1291597 () Bool)

(assert (=> mapNonEmpty!9283 (= tp!607900 e!1291597)))

(declare-fun tp!608062 () Bool)

(declare-fun b!2044722 () Bool)

(declare-fun tp!608061 () Bool)

(assert (=> b!2044722 (= e!1291597 (and tp!608061 (inv!29796 (_2!12082 (_1!12083 (h!27845 mapValue!9282)))) e!1291598 tp_is_empty!9299 setRes!11881 tp!608062))))

(declare-fun condSetEmpty!11881 () Bool)

(assert (=> b!2044722 (= condSetEmpty!11881 (= (_2!12083 (h!27845 mapValue!9282)) ((as const (Array Context!2038 Bool)) false)))))

(assert (= b!2044722 b!2044721))

(assert (= (and b!2044722 condSetEmpty!11881) setIsEmpty!11881))

(assert (= (and b!2044722 (not condSetEmpty!11881)) setNonEmpty!11881))

(assert (= setNonEmpty!11881 b!2044720))

(assert (= (and mapNonEmpty!9283 ((_ is Cons!22444) mapValue!9282)) b!2044722))

(declare-fun m!2488763 () Bool)

(assert (=> setNonEmpty!11881 m!2488763))

(declare-fun m!2488765 () Bool)

(assert (=> b!2044722 m!2488765))

(declare-fun tp!608066 () Bool)

(declare-fun b!2044723 () Bool)

(declare-fun tp!608067 () Bool)

(declare-fun e!1291599 () Bool)

(assert (=> b!2044723 (= e!1291599 (and (inv!29785 (left!17813 (c!330998 totalInput!418))) tp!608066 (inv!29785 (right!18143 (c!330998 totalInput!418))) tp!608067))))

(declare-fun b!2044725 () Bool)

(declare-fun e!1291600 () Bool)

(declare-fun tp!608068 () Bool)

(assert (=> b!2044725 (= e!1291600 tp!608068)))

(declare-fun b!2044724 () Bool)

(assert (=> b!2044724 (= e!1291599 (and (inv!29797 (xs!10426 (c!330998 totalInput!418))) e!1291600))))

(assert (=> b!2044443 (= tp!607902 (and (inv!29785 (c!330998 totalInput!418)) e!1291599))))

(assert (= (and b!2044443 ((_ is Node!7518) (c!330998 totalInput!418))) b!2044723))

(assert (= b!2044724 b!2044725))

(assert (= (and b!2044443 ((_ is Leaf!11010) (c!330998 totalInput!418))) b!2044724))

(declare-fun m!2488767 () Bool)

(assert (=> b!2044723 m!2488767))

(declare-fun m!2488769 () Bool)

(assert (=> b!2044723 m!2488769))

(declare-fun m!2488771 () Bool)

(assert (=> b!2044724 m!2488771))

(assert (=> b!2044443 m!2488481))

(declare-fun b!2044736 () Bool)

(declare-fun b_free!57149 () Bool)

(declare-fun b_next!57853 () Bool)

(assert (=> b!2044736 (= b_free!57149 (not b_next!57853))))

(declare-fun tp!608079 () Bool)

(declare-fun b_and!163089 () Bool)

(assert (=> b!2044736 (= tp!608079 b_and!163089)))

(declare-fun b_free!57151 () Bool)

(declare-fun b_next!57855 () Bool)

(assert (=> b!2044736 (= b_free!57151 (not b_next!57855))))

(declare-fun tp!608077 () Bool)

(declare-fun b_and!163091 () Bool)

(assert (=> b!2044736 (= tp!608077 b_and!163091)))

(declare-fun e!1291609 () Bool)

(assert (=> b!2044736 (= e!1291609 (and tp!608079 tp!608077))))

(declare-fun tp!608080 () Bool)

(declare-fun b!2044735 () Bool)

(declare-fun e!1291610 () Bool)

(assert (=> b!2044735 (= e!1291610 (and tp!608080 (inv!29784 (tag!4511 (h!27842 (t!191639 rules!1563)))) (inv!29786 (transformation!4021 (h!27842 (t!191639 rules!1563)))) e!1291609))))

(declare-fun b!2044734 () Bool)

(declare-fun e!1291611 () Bool)

(declare-fun tp!608078 () Bool)

(assert (=> b!2044734 (= e!1291611 (and e!1291610 tp!608078))))

(assert (=> b!2044470 (= tp!607907 e!1291611)))

(assert (= b!2044735 b!2044736))

(assert (= b!2044734 b!2044735))

(assert (= (and b!2044470 ((_ is Cons!22441) (t!191639 rules!1563))) b!2044734))

(declare-fun m!2488773 () Bool)

(assert (=> b!2044735 m!2488773))

(declare-fun m!2488775 () Bool)

(assert (=> b!2044735 m!2488775))

(declare-fun tp!608082 () Bool)

(declare-fun e!1291613 () Bool)

(declare-fun b!2044737 () Bool)

(declare-fun tp!608081 () Bool)

(assert (=> b!2044737 (= e!1291613 (and (inv!29785 (left!17813 (c!330998 input!986))) tp!608081 (inv!29785 (right!18143 (c!330998 input!986))) tp!608082))))

(declare-fun b!2044739 () Bool)

(declare-fun e!1291614 () Bool)

(declare-fun tp!608083 () Bool)

(assert (=> b!2044739 (= e!1291614 tp!608083)))

(declare-fun b!2044738 () Bool)

(assert (=> b!2044738 (= e!1291613 (and (inv!29797 (xs!10426 (c!330998 input!986))) e!1291614))))

(assert (=> b!2044460 (= tp!607906 (and (inv!29785 (c!330998 input!986)) e!1291613))))

(assert (= (and b!2044460 ((_ is Node!7518) (c!330998 input!986))) b!2044737))

(assert (= b!2044738 b!2044739))

(assert (= (and b!2044460 ((_ is Leaf!11010) (c!330998 input!986))) b!2044738))

(declare-fun m!2488777 () Bool)

(assert (=> b!2044737 m!2488777))

(declare-fun m!2488779 () Bool)

(assert (=> b!2044737 m!2488779))

(declare-fun m!2488781 () Bool)

(assert (=> b!2044738 m!2488781))

(assert (=> b!2044460 m!2488439))

(check-sat (not b!2044483) (not b!2044527) (not b!2044689) (not b!2044496) (not b!2044602) (not b!2044588) (not d!625618) (not b!2044531) (not d!625594) (not b!2044518) (not setNonEmpty!11873) (not b!2044662) b_and!163083 (not b!2044445) (not setNonEmpty!11862) (not b!2044576) (not d!625580) (not b!2044671) (not b!2044724) (not b!2044623) (not b!2044694) (not b!2044737) (not bm!125293) (not b!2044725) (not d!625614) (not d!625602) (not d!625638) (not b!2044582) (not b!2044507) (not b!2044735) (not b!2044660) (not b!2044738) (not b!2044524) (not b!2044688) tp_is_empty!9299 (not d!625652) (not b_next!57841) (not b!2044573) (not b!2044539) (not b!2044734) (not b!2044603) (not b!2044675) (not b!2044720) (not b!2044677) (not setNonEmpty!11872) (not setNonEmpty!11871) (not b!2044721) (not setNonEmpty!11874) (not b!2044589) (not b!2044572) (not b!2044676) (not b_next!57847) (not b!2044562) (not b!2044697) (not b!2044534) (not setNonEmpty!11867) b_and!163079 (not d!625574) (not b!2044715) (not b_next!57853) (not b!2044530) (not b!2044622) (not d!625646) (not b!2044543) (not d!625650) (not d!625632) b_and!163091 (not b!2044716) (not b!2044679) (not b!2044520) (not b!2044462) (not b!2044637) (not b!2044570) (not b!2044718) (not mapNonEmpty!9289) (not d!625654) (not b_next!57843) (not d!625586) (not b!2044646) (not b!2044601) (not b!2044587) (not d!625648) (not b!2044545) (not b!2044500) (not b!2044661) (not b!2044565) (not d!625658) b_and!163089 (not d!625606) (not mapNonEmpty!9286) (not b_next!57851) (not b_next!57845) (not b!2044580) (not b!2044648) (not b!2044693) (not b!2044574) (not b_next!57855) (not d!625600) (not b!2044696) (not b!2044699) (not b!2044568) (not b!2044624) (not b!2044584) (not d!625612) (not d!625598) (not b!2044698) (not setNonEmpty!11863) b_and!163085 (not b!2044719) (not b!2044590) (not setNonEmpty!11879) (not b!2044674) (not b!2044739) (not d!625610) (not d!625644) b_and!163087 (not d!625578) (not d!625636) (not setNonEmpty!11868) (not b!2044460) (not b_next!57849) (not b!2044678) (not b!2044672) (not b!2044714) (not b!2044600) (not d!625576) (not b!2044583) (not d!625630) (not b!2044636) (not b!2044567) (not setNonEmpty!11880) (not b!2044691) (not b!2044717) (not b!2044566) (not d!625656) (not b!2044581) (not b!2044540) (not d!625616) (not b!2044626) (not b!2044723) (not b!2044690) (not b!2044625) (not b!2044591) (not bm!125294) (not d!625584) (not b!2044621) (not b!2044695) (not b!2044443) b_and!163081 (not b!2044692) (not b!2044586) (not setNonEmpty!11866) (not b!2044579) (not d!625640) (not b!2044647) (not b!2044564) (not b!2044673) (not d!625596) (not b!2044519) (not b!2044722) (not setNonEmpty!11881) (not d!625634) (not b!2044635) (not b!2044563) (not d!625622) b_and!163077 (not b!2044575) (not b!2044577) (not b!2044509) (not b!2044495) (not b!2044544) (not b!2044606) (not b!2044604) (not b!2044485))
(check-sat b_and!163083 (not b_next!57841) (not b_next!57847) b_and!163079 (not b_next!57853) b_and!163091 (not b_next!57843) (not b_next!57855) b_and!163085 b_and!163081 b_and!163077 b_and!163089 (not b_next!57851) (not b_next!57845) b_and!163087 (not b_next!57849))
