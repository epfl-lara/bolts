; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201560 () Bool)

(assert start!201560)

(declare-fun b!2046484 () Bool)

(declare-fun b_free!57329 () Bool)

(declare-fun b_next!58033 () Bool)

(assert (=> b!2046484 (= b_free!57329 (not b_next!58033))))

(declare-fun tp!609311 () Bool)

(declare-fun b_and!163273 () Bool)

(assert (=> b!2046484 (= tp!609311 b_and!163273)))

(declare-fun b!2046515 () Bool)

(declare-fun b_free!57331 () Bool)

(declare-fun b_next!58035 () Bool)

(assert (=> b!2046515 (= b_free!57331 (not b_next!58035))))

(declare-fun tp!609322 () Bool)

(declare-fun b_and!163275 () Bool)

(assert (=> b!2046515 (= tp!609322 b_and!163275)))

(declare-fun b!2046533 () Bool)

(declare-fun b_free!57333 () Bool)

(declare-fun b_next!58037 () Bool)

(assert (=> b!2046533 (= b_free!57333 (not b_next!58037))))

(declare-fun tp!609328 () Bool)

(declare-fun b_and!163277 () Bool)

(assert (=> b!2046533 (= tp!609328 b_and!163277)))

(declare-fun b!2046470 () Bool)

(declare-fun b_free!57335 () Bool)

(declare-fun b_next!58039 () Bool)

(assert (=> b!2046470 (= b_free!57335 (not b_next!58039))))

(declare-fun tp!609295 () Bool)

(declare-fun b_and!163279 () Bool)

(assert (=> b!2046470 (= tp!609295 b_and!163279)))

(declare-fun b!2046487 () Bool)

(declare-fun b_free!57337 () Bool)

(declare-fun b_next!58041 () Bool)

(assert (=> b!2046487 (= b_free!57337 (not b_next!58041))))

(declare-fun tp!609321 () Bool)

(declare-fun b_and!163281 () Bool)

(assert (=> b!2046487 (= tp!609321 b_and!163281)))

(declare-fun b_free!57339 () Bool)

(declare-fun b_next!58043 () Bool)

(assert (=> b!2046487 (= b_free!57339 (not b_next!58043))))

(declare-fun tp!609287 () Bool)

(declare-fun b_and!163283 () Bool)

(assert (=> b!2046487 (= tp!609287 b_and!163283)))

(declare-fun b!2046494 () Bool)

(declare-fun b_free!57341 () Bool)

(declare-fun b_next!58045 () Bool)

(assert (=> b!2046494 (= b_free!57341 (not b_next!58045))))

(declare-fun tp!609302 () Bool)

(declare-fun b_and!163285 () Bool)

(assert (=> b!2046494 (= tp!609302 b_and!163285)))

(declare-fun b_free!57343 () Bool)

(declare-fun b_next!58047 () Bool)

(assert (=> b!2046494 (= b_free!57343 (not b_next!58047))))

(declare-fun tp!609300 () Bool)

(declare-fun b_and!163287 () Bool)

(assert (=> b!2046494 (= tp!609300 b_and!163287)))

(declare-fun b!2046514 () Bool)

(declare-fun b_free!57345 () Bool)

(declare-fun b_next!58049 () Bool)

(assert (=> b!2046514 (= b_free!57345 (not b_next!58049))))

(declare-fun tp!609305 () Bool)

(declare-fun b_and!163289 () Bool)

(assert (=> b!2046514 (= tp!609305 b_and!163289)))

(declare-fun b!2046488 () Bool)

(declare-fun b_free!57347 () Bool)

(declare-fun b_next!58051 () Bool)

(assert (=> b!2046488 (= b_free!57347 (not b_next!58051))))

(declare-fun tp!609296 () Bool)

(declare-fun b_and!163291 () Bool)

(assert (=> b!2046488 (= tp!609296 b_and!163291)))

(declare-fun b!2046504 () Bool)

(declare-fun b_free!57349 () Bool)

(declare-fun b_next!58053 () Bool)

(assert (=> b!2046504 (= b_free!57349 (not b_next!58053))))

(declare-fun tp!609327 () Bool)

(declare-fun b_and!163293 () Bool)

(assert (=> b!2046504 (= tp!609327 b_and!163293)))

(declare-fun b_free!57351 () Bool)

(declare-fun b_next!58055 () Bool)

(assert (=> b!2046504 (= b_free!57351 (not b_next!58055))))

(declare-fun tp!609318 () Bool)

(declare-fun b_and!163295 () Bool)

(assert (=> b!2046504 (= tp!609318 b_and!163295)))

(declare-fun b!2046525 () Bool)

(declare-fun b_free!57353 () Bool)

(declare-fun b_next!58057 () Bool)

(assert (=> b!2046525 (= b_free!57353 (not b_next!58057))))

(declare-fun tp!609290 () Bool)

(declare-fun b_and!163297 () Bool)

(assert (=> b!2046525 (= tp!609290 b_and!163297)))

(declare-fun b!2046509 () Bool)

(declare-fun b_free!57355 () Bool)

(declare-fun b_next!58059 () Bool)

(assert (=> b!2046509 (= b_free!57355 (not b_next!58059))))

(declare-fun tp!609316 () Bool)

(declare-fun b_and!163299 () Bool)

(assert (=> b!2046509 (= tp!609316 b_and!163299)))

(declare-fun e!1293245 () Bool)

(declare-fun e!1293232 () Bool)

(declare-fun tp!609297 () Bool)

(declare-datatypes ((C!11060 0))(
  ( (C!11061 (val!6516 Int)) )
))
(declare-datatypes ((Regex!5457 0))(
  ( (ElementMatch!5457 (c!331152 C!11060)) (Concat!9622 (regOne!11426 Regex!5457) (regTwo!11426 Regex!5457)) (EmptyExpr!5457) (Star!5457 (reg!5786 Regex!5457)) (EmptyLang!5457) (Union!5457 (regOne!11427 Regex!5457) (regTwo!11427 Regex!5457)) )
))
(declare-datatypes ((List!22576 0))(
  ( (Nil!22492) (Cons!22492 (h!27893 Regex!5457) (t!191696 List!22576)) )
))
(declare-datatypes ((Context!2054 0))(
  ( (Context!2055 (exprs!1527 List!22576)) )
))
(declare-datatypes ((Hashable!1942 0))(
  ( (HashableExt!1941 (__x!14000 Int)) )
))
(declare-datatypes ((tuple3!2112 0))(
  ( (tuple3!2113 (_1!12133 Regex!5457) (_2!12133 Context!2054) (_3!1520 C!11060)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21226 0))(
  ( (tuple2!21227 (_1!12134 tuple3!2112) (_2!12134 (InoxSet Context!2054))) )
))
(declare-datatypes ((List!22577 0))(
  ( (Nil!22493) (Cons!22493 (h!27894 tuple2!21226) (t!191697 List!22577)) )
))
(declare-datatypes ((array!6991 0))(
  ( (array!6992 (arr!3106 (Array (_ BitVec 32) (_ BitVec 64))) (size!17578 (_ BitVec 32))) )
))
(declare-datatypes ((array!6993 0))(
  ( (array!6994 (arr!3107 (Array (_ BitVec 32) List!22577)) (size!17579 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4056 0))(
  ( (LongMapFixedSize!4057 (defaultEntry!2393 Int) (mask!6072 (_ BitVec 32)) (extraKeys!2276 (_ BitVec 32)) (zeroValue!2286 List!22577) (minValue!2286 List!22577) (_size!4107 (_ BitVec 32)) (_keys!2325 array!6991) (_values!2308 array!6993) (_vacant!2089 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7937 0))(
  ( (Cell!7938 (v!27166 LongMapFixedSize!4056)) )
))
(declare-datatypes ((MutLongMap!2028 0))(
  ( (LongMap!2028 (underlying!4251 Cell!7937)) (MutLongMapExt!2027 (__x!14001 Int)) )
))
(declare-datatypes ((Cell!7939 0))(
  ( (Cell!7940 (v!27167 MutLongMap!2028)) )
))
(declare-datatypes ((MutableMap!1942 0))(
  ( (MutableMapExt!1941 (__x!14002 Int)) (HashMap!1942 (underlying!4252 Cell!7939) (hashF!3865 Hashable!1942) (_size!4108 (_ BitVec 32)) (defaultValue!2104 Int)) )
))
(declare-datatypes ((CacheDown!1240 0))(
  ( (CacheDown!1241 (cache!2323 MutableMap!1942)) )
))
(declare-fun cacheDown!575 () CacheDown!1240)

(declare-fun tp!609329 () Bool)

(declare-fun array_inv!2230 (array!6991) Bool)

(declare-fun array_inv!2231 (array!6993) Bool)

(assert (=> b!2046470 (= e!1293232 (and tp!609295 tp!609329 tp!609297 (array_inv!2230 (_keys!2325 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 cacheDown!575))))))) (array_inv!2231 (_values!2308 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 cacheDown!575))))))) e!1293245))))

(declare-fun mapIsEmpty!9390 () Bool)

(declare-fun mapRes!9393 () Bool)

(assert (=> mapIsEmpty!9390 mapRes!9393))

(declare-fun b!2046471 () Bool)

(assert (=> b!2046471 true))

(declare-fun e!1293246 () Bool)

(assert (=> b!2046471 e!1293246))

(declare-datatypes ((List!22578 0))(
  ( (Nil!22494) (Cons!22494 (h!27895 (_ BitVec 16)) (t!191698 List!22578)) )
))
(declare-datatypes ((TokenValue!4165 0))(
  ( (FloatLiteralValue!8330 (text!29600 List!22578)) (TokenValueExt!4164 (__x!14003 Int)) (Broken!20825 (value!126453 List!22578)) (Object!4248) (End!4165) (Def!4165) (Underscore!4165) (Match!4165) (Else!4165) (Error!4165) (Case!4165) (If!4165) (Extends!4165) (Abstract!4165) (Class!4165) (Val!4165) (DelimiterValue!8330 (del!4225 List!22578)) (KeywordValue!4171 (value!126454 List!22578)) (CommentValue!8330 (value!126455 List!22578)) (WhitespaceValue!8330 (value!126456 List!22578)) (IndentationValue!4165 (value!126457 List!22578)) (String!26016) (Int32!4165) (Broken!20826 (value!126458 List!22578)) (Boolean!4166) (Unit!37054) (OperatorValue!4168 (op!4225 List!22578)) (IdentifierValue!8330 (value!126459 List!22578)) (IdentifierValue!8331 (value!126460 List!22578)) (WhitespaceValue!8331 (value!126461 List!22578)) (True!8330) (False!8330) (Broken!20827 (value!126462 List!22578)) (Broken!20828 (value!126463 List!22578)) (True!8331) (RightBrace!4165) (RightBracket!4165) (Colon!4165) (Null!4165) (Comma!4165) (LeftBracket!4165) (False!8331) (LeftBrace!4165) (ImaginaryLiteralValue!4165 (text!29601 List!22578)) (StringLiteralValue!12495 (value!126464 List!22578)) (EOFValue!4165 (value!126465 List!22578)) (IdentValue!4165 (value!126466 List!22578)) (DelimiterValue!8331 (value!126467 List!22578)) (DedentValue!4165 (value!126468 List!22578)) (NewLineValue!4165 (value!126469 List!22578)) (IntegerValue!12495 (value!126470 (_ BitVec 32)) (text!29602 List!22578)) (IntegerValue!12496 (value!126471 Int) (text!29603 List!22578)) (Times!4165) (Or!4165) (Equal!4165) (Minus!4165) (Broken!20829 (value!126472 List!22578)) (And!4165) (Div!4165) (LessEqual!4165) (Mod!4165) (Concat!9623) (Not!4165) (Plus!4165) (SpaceValue!4165 (value!126473 List!22578)) (IntegerValue!12497 (value!126474 Int) (text!29604 List!22578)) (StringLiteralValue!12496 (text!29605 List!22578)) (FloatLiteralValue!8331 (text!29606 List!22578)) (BytesLiteralValue!4165 (value!126475 List!22578)) (CommentValue!8331 (value!126476 List!22578)) (StringLiteralValue!12497 (value!126477 List!22578)) (ErrorTokenValue!4165 (msg!4226 List!22578)) )
))
(declare-datatypes ((List!22579 0))(
  ( (Nil!22495) (Cons!22495 (h!27896 C!11060) (t!191699 List!22579)) )
))
(declare-datatypes ((IArray!15069 0))(
  ( (IArray!15070 (innerList!7592 List!22579)) )
))
(declare-datatypes ((String!26017 0))(
  ( (String!26018 (value!126478 String)) )
))
(declare-datatypes ((Conc!7532 0))(
  ( (Node!7532 (left!17835 Conc!7532) (right!18165 Conc!7532) (csize!15294 Int) (cheight!7743 Int)) (Leaf!11028 (xs!10440 IArray!15069) (csize!15295 Int)) (Empty!7532) )
))
(declare-datatypes ((BalanceConc!14826 0))(
  ( (BalanceConc!14827 (c!331153 Conc!7532)) )
))
(declare-datatypes ((TokenValueInjection!7914 0))(
  ( (TokenValueInjection!7915 (toValue!5712 Int) (toChars!5571 Int)) )
))
(declare-datatypes ((Rule!7858 0))(
  ( (Rule!7859 (regex!4029 Regex!5457) (tag!4519 String!26017) (isSeparator!4029 Bool) (transformation!4029 TokenValueInjection!7914)) )
))
(declare-datatypes ((Token!7606 0))(
  ( (Token!7607 (value!126479 TokenValue!4165) (rule!6265 Rule!7858) (size!17580 Int) (originalCharacters!4834 List!22579)) )
))
(declare-datatypes ((tuple2!21228 0))(
  ( (tuple2!21229 (_1!12135 Token!7606) (_2!12135 BalanceConc!14826)) )
))
(declare-datatypes ((Option!4709 0))(
  ( (None!4708) (Some!4708 (v!27168 tuple2!21228)) )
))
(declare-fun e!1293274 () Option!4709)

(declare-fun err!3176 () Option!4709)

(assert (=> b!2046471 (= e!1293274 err!3176)))

(declare-fun tp!609312 () Bool)

(declare-fun e!1293231 () Bool)

(declare-fun e!1293212 () Bool)

(declare-fun b!2046472 () Bool)

(declare-fun inv!29847 (String!26017) Bool)

(declare-fun inv!29848 (TokenValueInjection!7914) Bool)

(assert (=> b!2046472 (= e!1293231 (and tp!609312 (inv!29847 (tag!4519 (rule!6265 (_1!12135 (v!27168 err!3176))))) (inv!29848 (transformation!4029 (rule!6265 (_1!12135 (v!27168 err!3176))))) e!1293212))))

(declare-fun b!2046473 () Bool)

(declare-fun e!1293262 () Bool)

(assert (=> b!2046473 (= e!1293262 true)))

(declare-fun e!1293263 () Bool)

(assert (=> b!2046473 e!1293263))

(declare-fun c!331150 () Bool)

(declare-datatypes ((List!22580 0))(
  ( (Nil!22496) (Cons!22496 (h!27897 Rule!7858) (t!191700 List!22580)) )
))
(declare-fun rules!1563 () List!22580)

(get-info :version)

(assert (=> b!2046473 (= c!331150 (and ((_ is Cons!22496) rules!1563) ((_ is Nil!22496) (t!191700 rules!1563))))))

(declare-fun lt!767282 () Option!4709)

(declare-datatypes ((LexerInterface!3640 0))(
  ( (LexerInterfaceExt!3637 (__x!14004 Int)) (Lexer!3638) )
))
(declare-fun thiss!12889 () LexerInterface!3640)

(declare-fun totalInput!418 () BalanceConc!14826)

(declare-fun input!986 () BalanceConc!14826)

(declare-fun maxPrefixZipperSequenceV2!319 (LexerInterface!3640 List!22580 BalanceConc!14826 BalanceConc!14826) Option!4709)

(assert (=> b!2046473 (= lt!767282 (maxPrefixZipperSequenceV2!319 thiss!12889 rules!1563 input!986 totalInput!418))))

(declare-fun e!1293242 () Bool)

(assert (=> b!2046473 e!1293242))

(declare-fun res!896264 () Bool)

(assert (=> b!2046473 (=> (not res!896264) (not e!1293242))))

(declare-fun lt!767271 () List!22579)

(declare-fun isPrefix!1999 (List!22579 List!22579) Bool)

(assert (=> b!2046473 (= res!896264 (isPrefix!1999 lt!767271 lt!767271))))

(declare-datatypes ((Unit!37055 0))(
  ( (Unit!37056) )
))
(declare-fun lt!767281 () Unit!37055)

(declare-fun lemmaIsPrefixRefl!1317 (List!22579 List!22579) Unit!37055)

(assert (=> b!2046473 (= lt!767281 (lemmaIsPrefixRefl!1317 lt!767271 lt!767271))))

(declare-datatypes ((tuple2!21230 0))(
  ( (tuple2!21231 (_1!12136 Context!2054) (_2!12136 C!11060)) )
))
(declare-datatypes ((tuple2!21232 0))(
  ( (tuple2!21233 (_1!12137 tuple2!21230) (_2!12137 (InoxSet Context!2054))) )
))
(declare-datatypes ((List!22581 0))(
  ( (Nil!22497) (Cons!22497 (h!27898 tuple2!21232) (t!191701 List!22581)) )
))
(declare-datatypes ((Hashable!1943 0))(
  ( (HashableExt!1942 (__x!14005 Int)) )
))
(declare-datatypes ((array!6995 0))(
  ( (array!6996 (arr!3108 (Array (_ BitVec 32) List!22581)) (size!17581 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4058 0))(
  ( (LongMapFixedSize!4059 (defaultEntry!2394 Int) (mask!6073 (_ BitVec 32)) (extraKeys!2277 (_ BitVec 32)) (zeroValue!2287 List!22581) (minValue!2287 List!22581) (_size!4109 (_ BitVec 32)) (_keys!2326 array!6991) (_values!2309 array!6995) (_vacant!2090 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7941 0))(
  ( (Cell!7942 (v!27169 LongMapFixedSize!4058)) )
))
(declare-datatypes ((MutLongMap!2029 0))(
  ( (LongMap!2029 (underlying!4253 Cell!7941)) (MutLongMapExt!2028 (__x!14006 Int)) )
))
(declare-datatypes ((Cell!7943 0))(
  ( (Cell!7944 (v!27170 MutLongMap!2029)) )
))
(declare-datatypes ((MutableMap!1943 0))(
  ( (MutableMapExt!1942 (__x!14007 Int)) (HashMap!1943 (underlying!4254 Cell!7943) (hashF!3866 Hashable!1943) (_size!4110 (_ BitVec 32)) (defaultValue!2105 Int)) )
))
(declare-datatypes ((CacheUp!1238 0))(
  ( (CacheUp!1239 (cache!2324 MutableMap!1943)) )
))
(declare-datatypes ((tuple3!2114 0))(
  ( (tuple3!2115 (_1!12138 Option!4709) (_2!12138 CacheUp!1238) (_3!1521 CacheDown!1240)) )
))
(declare-fun lt!767269 () tuple3!2114)

(declare-fun lt!767284 () tuple3!2114)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!18 (LexerInterface!3640 List!22580 BalanceConc!14826 BalanceConc!14826 CacheUp!1238 CacheDown!1240) tuple3!2114)

(assert (=> b!2046473 (= lt!767269 (maxPrefixZipperSequenceV2MemOnlyDeriv!18 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12138 lt!767284) (_3!1521 lt!767284)))))

(declare-datatypes ((List!22582 0))(
  ( (Nil!22498) (Cons!22498 (h!27899 Token!7606) (t!191702 List!22582)) )
))
(declare-datatypes ((IArray!15071 0))(
  ( (IArray!15072 (innerList!7593 List!22582)) )
))
(declare-datatypes ((Conc!7533 0))(
  ( (Node!7533 (left!17836 Conc!7533) (right!18166 Conc!7533) (csize!15296 Int) (cheight!7744 Int)) (Leaf!11029 (xs!10441 IArray!15071) (csize!15297 Int)) (Empty!7533) )
))
(declare-datatypes ((BalanceConc!14828 0))(
  ( (BalanceConc!14829 (c!331154 Conc!7533)) )
))
(declare-datatypes ((tuple2!21234 0))(
  ( (tuple2!21235 (_1!12139 BalanceConc!14828) (_2!12139 BalanceConc!14826)) )
))
(declare-fun lt!767273 () tuple2!21234)

(declare-fun lexRec!445 (LexerInterface!3640 List!22580 BalanceConc!14826) tuple2!21234)

(assert (=> b!2046473 (= lt!767273 (lexRec!445 thiss!12889 rules!1563 (_2!12135 (v!27168 (_1!12138 lt!767284)))))))

(declare-fun lt!767283 () tuple3!2114)

(declare-fun b!2046474 () Bool)

(declare-fun lt!767267 () tuple3!2114)

(assert (=> b!2046474 (= lt!767267 (maxPrefixZipperSequenceV2MemOnlyDeriv!18 thiss!12889 (t!191700 rules!1563) input!986 totalInput!418 (_2!12138 lt!767283) (_3!1521 lt!767283)))))

(declare-fun call!125333 () tuple3!2114)

(assert (=> b!2046474 (= lt!767283 call!125333)))

(declare-fun e!1293248 () tuple3!2114)

(assert (=> b!2046474 (= e!1293248 (tuple3!2115 (ite (and ((_ is None!4708) (_1!12138 lt!767283)) ((_ is None!4708) (_1!12138 lt!767267))) None!4708 (ite ((_ is None!4708) (_1!12138 lt!767267)) (_1!12138 lt!767283) (ite ((_ is None!4708) (_1!12138 lt!767283)) (_1!12138 lt!767267) (ite (>= (size!17580 (_1!12135 (v!27168 (_1!12138 lt!767283)))) (size!17580 (_1!12135 (v!27168 (_1!12138 lt!767267))))) (Some!4708 (v!27168 (_1!12138 lt!767283))) (Some!4708 (v!27168 (_1!12138 lt!767267))))))) (_2!12138 lt!767267) (_3!1521 lt!767267)))))

(declare-fun b!2046475 () Bool)

(declare-fun e!1293257 () Bool)

(declare-fun tp!609325 () Bool)

(declare-fun inv!29849 (Conc!7532) Bool)

(assert (=> b!2046475 (= e!1293257 (and (inv!29849 (c!331153 totalInput!418)) tp!609325))))

(declare-fun call!125334 () Option!4709)

(declare-fun bm!125328 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!121 (LexerInterface!3640 Rule!7858 BalanceConc!14826 BalanceConc!14826) Option!4709)

(assert (=> bm!125328 (= call!125334 (maxPrefixOneRuleZipperSequenceV2!121 thiss!12889 (h!27897 rules!1563) input!986 totalInput!418))))

(declare-fun mapNonEmpty!9390 () Bool)

(declare-fun mapRes!9392 () Bool)

(declare-fun tp!609306 () Bool)

(declare-fun tp!609293 () Bool)

(assert (=> mapNonEmpty!9390 (= mapRes!9392 (and tp!609306 tp!609293))))

(declare-fun mapValue!9391 () List!22577)

(declare-fun err!3177 () tuple3!2114)

(declare-fun mapKey!9390 () (_ BitVec 32))

(declare-fun mapRest!9391 () (Array (_ BitVec 32) List!22577))

(assert (=> mapNonEmpty!9390 (= (arr!3107 (_values!2308 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 (_3!1521 err!3177)))))))) (store mapRest!9391 mapKey!9390 mapValue!9391))))

(declare-fun b!2046476 () Bool)

(declare-fun res!896274 () Bool)

(declare-fun e!1293254 () Bool)

(assert (=> b!2046476 (=> (not res!896274) (not e!1293254))))

(declare-fun rulesInvariant!3237 (LexerInterface!3640 List!22580) Bool)

(assert (=> b!2046476 (= res!896274 (rulesInvariant!3237 thiss!12889 rules!1563))))

(declare-fun b!2046477 () Bool)

(declare-fun res!896269 () Bool)

(assert (=> b!2046477 (=> (not res!896269) (not e!1293254))))

(declare-fun isEmpty!13988 (List!22580) Bool)

(assert (=> b!2046477 (= res!896269 (not (isEmpty!13988 rules!1563)))))

(declare-fun b!2046478 () Bool)

(declare-fun e!1293226 () Bool)

(declare-fun tp!609315 () Bool)

(assert (=> b!2046478 (= e!1293226 (and tp!609315 mapRes!9393))))

(declare-fun condMapEmpty!9390 () Bool)

(declare-fun mapDefault!9391 () List!22581)

(assert (=> b!2046478 (= condMapEmpty!9390 (= (arr!3108 (_values!2309 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 (_2!12138 err!3177)))))))) ((as const (Array (_ BitVec 32) List!22581)) mapDefault!9391)))))

(declare-fun b!2046479 () Bool)

(declare-fun res!896266 () Bool)

(declare-fun e!1293213 () Bool)

(assert (=> b!2046479 (=> (not res!896266) (not e!1293213))))

(declare-fun valid!1614 (CacheDown!1240) Bool)

(assert (=> b!2046479 (= res!896266 (valid!1614 cacheDown!575))))

(declare-fun b!2046480 () Bool)

(declare-fun e!1293222 () Bool)

(declare-fun e!1293217 () Bool)

(declare-fun lt!767276 () MutLongMap!2029)

(assert (=> b!2046480 (= e!1293222 (and e!1293217 ((_ is LongMap!2029) lt!767276)))))

(declare-fun cacheUp!562 () CacheUp!1238)

(assert (=> b!2046480 (= lt!767276 (v!27170 (underlying!4254 (cache!2324 cacheUp!562))))))

(declare-fun b!2046481 () Bool)

(declare-fun res!896272 () Bool)

(declare-fun e!1293276 () Bool)

(assert (=> b!2046481 (=> (not res!896272) (not e!1293276))))

(declare-fun lt!767285 () tuple2!21234)

(declare-fun isEmpty!13989 (List!22579) Bool)

(declare-fun list!9208 (BalanceConc!14826) List!22579)

(assert (=> b!2046481 (= res!896272 (isEmpty!13989 (list!9208 (_2!12139 lt!767285))))))

(declare-fun b!2046482 () Bool)

(declare-fun e!1293215 () Bool)

(assert (=> b!2046482 (= e!1293213 (not e!1293215))))

(declare-fun res!896265 () Bool)

(assert (=> b!2046482 (=> res!896265 e!1293215)))

(declare-fun lt!767279 () List!22579)

(declare-fun isSuffix!484 (List!22579 List!22579) Bool)

(assert (=> b!2046482 (= res!896265 (not (isSuffix!484 lt!767271 lt!767279)))))

(declare-fun lt!767270 () List!22579)

(assert (=> b!2046482 (isSuffix!484 lt!767271 lt!767270)))

(declare-fun lt!767287 () Unit!37055)

(declare-fun lt!767278 () List!22579)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!385 (List!22579 List!22579) Unit!37055)

(assert (=> b!2046482 (= lt!767287 (lemmaConcatTwoListThenFSndIsSuffix!385 lt!767278 lt!767271))))

(declare-fun b!2046483 () Bool)

(declare-fun e!1293267 () Bool)

(declare-fun e!1293235 () Bool)

(assert (=> b!2046483 (= e!1293267 e!1293235)))

(declare-fun e!1293252 () Bool)

(declare-fun tp!609303 () Bool)

(declare-fun tp!609326 () Bool)

(declare-fun e!1293236 () Bool)

(assert (=> b!2046484 (= e!1293252 (and tp!609311 tp!609303 tp!609326 (array_inv!2230 (_keys!2325 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 (_3!1521 err!3177)))))))) (array_inv!2231 (_values!2308 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 (_3!1521 err!3177)))))))) e!1293236))))

(declare-fun b!2046485 () Bool)

(declare-fun res!896273 () Bool)

(assert (=> b!2046485 (=> (not res!896273) (not e!1293213))))

(declare-fun lt!767286 () tuple2!21234)

(declare-fun lt!767274 () tuple2!21234)

(assert (=> b!2046485 (= res!896273 (= (list!9208 (_2!12139 lt!767286)) (list!9208 (_2!12139 lt!767274))))))

(declare-fun b!2046486 () Bool)

(declare-fun e!1293249 () Bool)

(assert (=> b!2046486 (= e!1293249 e!1293252)))

(assert (=> b!2046487 (= e!1293212 (and tp!609321 tp!609287))))

(declare-fun e!1293229 () Bool)

(declare-fun e!1293241 () Bool)

(assert (=> b!2046488 (= e!1293229 (and e!1293241 tp!609296))))

(declare-fun b!2046489 () Bool)

(declare-fun tp!609313 () Bool)

(assert (=> b!2046489 (= e!1293236 (and tp!609313 mapRes!9392))))

(declare-fun condMapEmpty!9392 () Bool)

(declare-fun mapDefault!9393 () List!22577)

(assert (=> b!2046489 (= condMapEmpty!9392 (= (arr!3107 (_values!2308 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 (_3!1521 err!3177)))))))) ((as const (Array (_ BitVec 32) List!22577)) mapDefault!9393)))))

(declare-fun b!2046490 () Bool)

(declare-fun e!1293266 () Bool)

(declare-fun e!1293238 () Bool)

(declare-fun lt!767280 () MutLongMap!2028)

(assert (=> b!2046490 (= e!1293266 (and e!1293238 ((_ is LongMap!2028) lt!767280)))))

(assert (=> b!2046490 (= lt!767280 (v!27167 (underlying!4252 (cache!2323 cacheDown!575))))))

(declare-fun b!2046491 () Bool)

(declare-fun e!1293253 () Bool)

(declare-fun tp!609323 () Bool)

(assert (=> b!2046491 (= e!1293253 (and (inv!29849 (c!331153 (_2!12135 (v!27168 (_1!12138 err!3177))))) tp!609323))))

(declare-fun b!2046492 () Bool)

(assert (=> b!2046492 (= e!1293263 (= lt!767282 e!1293274))))

(declare-fun c!331148 () Bool)

(assert (=> b!2046492 (= c!331148 ((_ is Cons!22496) rules!1563))))

(declare-fun e!1293275 () Bool)

(declare-fun e!1293256 () Bool)

(declare-fun b!2046493 () Bool)

(declare-fun inv!29850 (Token!7606) Bool)

(declare-fun inv!29851 (BalanceConc!14826) Bool)

(assert (=> b!2046493 (= e!1293275 (and (inv!29850 (_1!12135 (v!27168 (_1!12138 err!3177)))) e!1293256 (inv!29851 (_2!12135 (v!27168 (_1!12138 err!3177)))) e!1293253))))

(declare-fun e!1293271 () Bool)

(assert (=> b!2046494 (= e!1293271 (and tp!609302 tp!609300))))

(declare-fun lt!767268 () Option!4709)

(declare-fun b!2046495 () Bool)

(assert (=> b!2046495 (= lt!767268 (maxPrefixZipperSequenceV2!319 thiss!12889 (t!191700 rules!1563) input!986 totalInput!418))))

(declare-fun lt!767275 () Option!4709)

(assert (=> b!2046495 (= lt!767275 call!125334)))

(assert (=> b!2046495 (= e!1293274 (ite (and ((_ is None!4708) lt!767275) ((_ is None!4708) lt!767268)) None!4708 (ite ((_ is None!4708) lt!767268) lt!767275 (ite ((_ is None!4708) lt!767275) lt!767268 (ite (>= (size!17580 (_1!12135 (v!27168 lt!767275))) (size!17580 (_1!12135 (v!27168 lt!767268)))) (Some!4708 (v!27168 lt!767275)) lt!767268)))))))

(declare-fun e!1293239 () Bool)

(declare-fun b!2046496 () Bool)

(declare-fun e!1293224 () Bool)

(assert (=> b!2046496 (= e!1293246 (and (inv!29850 (_1!12135 (v!27168 err!3176))) e!1293239 (inv!29851 (_2!12135 (v!27168 err!3176))) e!1293224))))

(declare-fun b!2046497 () Bool)

(declare-fun e!1293219 () Bool)

(declare-fun treated!60 () BalanceConc!14826)

(declare-fun tp!609307 () Bool)

(assert (=> b!2046497 (= e!1293219 (and (inv!29849 (c!331153 treated!60)) tp!609307))))

(declare-fun b!2046498 () Bool)

(declare-fun e!1293269 () Bool)

(declare-fun tp!609298 () Bool)

(assert (=> b!2046498 (= e!1293269 (and (inv!29849 (c!331153 input!986)) tp!609298))))

(declare-fun b!2046499 () Bool)

(declare-fun e!1293259 () Bool)

(declare-fun e!1293221 () Bool)

(declare-fun lt!767272 () MutLongMap!2029)

(assert (=> b!2046499 (= e!1293259 (and e!1293221 ((_ is LongMap!2029) lt!767272)))))

(assert (=> b!2046499 (= lt!767272 (v!27170 (underlying!4254 (cache!2324 (_2!12138 err!3177)))))))

(declare-fun b!2046500 () Bool)

(declare-fun tp!609291 () Bool)

(declare-fun inv!21 (TokenValue!4165) Bool)

(assert (=> b!2046500 (= e!1293239 (and (inv!21 (value!126479 (_1!12135 (v!27168 err!3176)))) e!1293231 tp!609291))))

(declare-fun e!1293264 () Bool)

(declare-fun tp!609299 () Bool)

(declare-fun b!2046501 () Bool)

(assert (=> b!2046501 (= e!1293264 (and tp!609299 (inv!29847 (tag!4519 (rule!6265 (_1!12135 (v!27168 (_1!12138 err!3177)))))) (inv!29848 (transformation!4029 (rule!6265 (_1!12135 (v!27168 (_1!12138 err!3177)))))) e!1293271))))

(declare-fun b!2046502 () Bool)

(declare-fun e!1293228 () tuple3!2114)

(assert (=> b!2046502 (= e!1293228 e!1293248)))

(declare-fun c!331149 () Bool)

(assert (=> b!2046502 (= c!331149 ((_ is Cons!22496) rules!1563))))

(declare-fun b!2046503 () Bool)

(declare-fun e!1293218 () Bool)

(assert (=> b!2046503 (= e!1293218 e!1293276)))

(declare-fun res!896275 () Bool)

(assert (=> b!2046503 (=> (not res!896275) (not e!1293276))))

(declare-fun acc!382 () BalanceConc!14828)

(declare-fun list!9209 (BalanceConc!14828) List!22582)

(assert (=> b!2046503 (= res!896275 (= (list!9209 (_1!12139 lt!767285)) (list!9209 acc!382)))))

(assert (=> b!2046503 (= lt!767285 (lexRec!445 thiss!12889 rules!1563 treated!60))))

(declare-fun e!1293244 () Bool)

(assert (=> b!2046504 (= e!1293244 (and tp!609327 tp!609318))))

(declare-fun mapIsEmpty!9392 () Bool)

(declare-fun mapRes!9390 () Bool)

(assert (=> mapIsEmpty!9392 mapRes!9390))

(declare-fun b!2046505 () Bool)

(declare-fun tp!609301 () Bool)

(assert (=> b!2046505 (= e!1293224 (and (inv!29849 (c!331153 (_2!12135 (v!27168 err!3176)))) tp!609301))))

(declare-fun b!2046506 () Bool)

(declare-fun tp!609292 () Bool)

(assert (=> b!2046506 (= e!1293256 (and (inv!21 (value!126479 (_1!12135 (v!27168 (_1!12138 err!3177))))) e!1293264 tp!609292))))

(declare-fun b!2046507 () Bool)

(assert (=> b!2046507 (= e!1293242 (= lt!767269 e!1293228))))

(declare-fun c!331151 () Bool)

(assert (=> b!2046507 (= c!331151 (and ((_ is Cons!22496) rules!1563) ((_ is Nil!22496) (t!191700 rules!1563))))))

(declare-fun b!2046508 () Bool)

(assert (=> b!2046508 (= e!1293221 e!1293267)))

(declare-fun e!1293247 () Bool)

(assert (=> b!2046509 (= e!1293247 (and e!1293266 tp!609316))))

(declare-fun b!2046510 () Bool)

(declare-fun res!896270 () Bool)

(assert (=> b!2046510 (=> (not res!896270) (not e!1293213))))

(declare-fun valid!1615 (CacheUp!1238) Bool)

(assert (=> b!2046510 (= res!896270 (valid!1615 cacheUp!562))))

(declare-fun b!2046511 () Bool)

(declare-fun e!1293234 () Bool)

(declare-fun tp!609331 () Bool)

(declare-fun inv!29852 (Conc!7533) Bool)

(assert (=> b!2046511 (= e!1293234 (and (inv!29852 (c!331154 acc!382)) tp!609331))))

(declare-fun b!2046512 () Bool)

(assert (=> b!2046512 (= e!1293263 (= lt!767282 call!125334))))

(declare-fun b!2046513 () Bool)

(assert (=> b!2046513 true))

(declare-fun e!1293255 () Bool)

(declare-fun e!1293216 () Bool)

(declare-fun inv!29853 (CacheUp!1238) Bool)

(declare-fun inv!29854 (CacheDown!1240) Bool)

(assert (=> b!2046513 (and e!1293275 (inv!29853 (_2!12138 err!3177)) e!1293255 (inv!29854 (_3!1521 err!3177)) e!1293216)))

(assert (=> b!2046513 (= e!1293248 err!3177)))

(declare-fun tp!609317 () Bool)

(declare-fun tp!609304 () Bool)

(declare-fun array_inv!2232 (array!6995) Bool)

(assert (=> b!2046514 (= e!1293235 (and tp!609305 tp!609304 tp!609317 (array_inv!2230 (_keys!2326 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 (_2!12138 err!3177)))))))) (array_inv!2232 (_values!2309 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 (_2!12138 err!3177)))))))) e!1293226))))

(declare-fun mapNonEmpty!9391 () Bool)

(declare-fun mapRes!9391 () Bool)

(declare-fun tp!609288 () Bool)

(declare-fun tp!609320 () Bool)

(assert (=> mapNonEmpty!9391 (= mapRes!9391 (and tp!609288 tp!609320))))

(declare-fun mapRest!9393 () (Array (_ BitVec 32) List!22581))

(declare-fun mapValue!9392 () List!22581)

(declare-fun mapKey!9393 () (_ BitVec 32))

(assert (=> mapNonEmpty!9391 (= (arr!3108 (_values!2309 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 cacheUp!562))))))) (store mapRest!9393 mapKey!9393 mapValue!9392))))

(declare-fun e!1293268 () Bool)

(assert (=> b!2046515 (= e!1293268 (and e!1293222 tp!609322))))

(declare-fun bm!125329 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!9 (LexerInterface!3640 Rule!7858 BalanceConc!14826 BalanceConc!14826 CacheUp!1238 CacheDown!1240) tuple3!2114)

(assert (=> bm!125329 (= call!125333 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!9 thiss!12889 (h!27897 rules!1563) input!986 totalInput!418 (_2!12138 lt!767284) (_3!1521 lt!767284)))))

(declare-fun b!2046516 () Bool)

(declare-fun e!1293270 () Bool)

(declare-fun e!1293223 () Bool)

(assert (=> b!2046516 (= e!1293270 e!1293223)))

(declare-fun b!2046517 () Bool)

(assert (=> b!2046517 (= e!1293217 e!1293270)))

(declare-fun b!2046518 () Bool)

(declare-fun e!1293225 () Bool)

(declare-fun tp!609324 () Bool)

(assert (=> b!2046518 (= e!1293225 (and tp!609324 mapRes!9391))))

(declare-fun condMapEmpty!9391 () Bool)

(declare-fun mapDefault!9392 () List!22581)

(assert (=> b!2046518 (= condMapEmpty!9391 (= (arr!3108 (_values!2309 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22581)) mapDefault!9392)))))

(declare-fun b!2046519 () Bool)

(declare-fun e!1293272 () Bool)

(declare-fun lt!767277 () MutLongMap!2028)

(assert (=> b!2046519 (= e!1293241 (and e!1293272 ((_ is LongMap!2028) lt!767277)))))

(assert (=> b!2046519 (= lt!767277 (v!27167 (underlying!4252 (cache!2323 (_3!1521 err!3177)))))))

(declare-fun b!2046520 () Bool)

(declare-fun e!1293261 () Bool)

(assert (=> b!2046520 (= e!1293261 e!1293247)))

(declare-fun b!2046521 () Bool)

(declare-fun e!1293214 () Bool)

(assert (=> b!2046521 (= e!1293214 e!1293232)))

(declare-fun b!2046522 () Bool)

(declare-fun tp!609294 () Bool)

(assert (=> b!2046522 (= e!1293245 (and tp!609294 mapRes!9390))))

(declare-fun condMapEmpty!9393 () Bool)

(declare-fun mapDefault!9390 () List!22577)

(assert (=> b!2046522 (= condMapEmpty!9393 (= (arr!3107 (_values!2308 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22577)) mapDefault!9390)))))

(declare-fun b!2046523 () Bool)

(declare-fun e!1293233 () Bool)

(declare-fun e!1293251 () Bool)

(declare-fun tp!609310 () Bool)

(assert (=> b!2046523 (= e!1293233 (and e!1293251 tp!609310))))

(declare-fun b!2046524 () Bool)

(assert (=> b!2046524 (= e!1293228 call!125333)))

(declare-fun tp!609308 () Bool)

(declare-fun tp!609314 () Bool)

(assert (=> b!2046525 (= e!1293223 (and tp!609290 tp!609308 tp!609314 (array_inv!2230 (_keys!2326 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 cacheUp!562))))))) (array_inv!2232 (_values!2309 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 cacheUp!562))))))) e!1293225))))

(declare-fun b!2046526 () Bool)

(assert (=> b!2046526 (= e!1293238 e!1293214)))

(declare-fun b!2046527 () Bool)

(assert (=> b!2046527 (= e!1293216 e!1293229)))

(declare-fun b!2046528 () Bool)

(assert (=> b!2046528 (= e!1293215 e!1293262)))

(declare-fun res!896271 () Bool)

(assert (=> b!2046528 (=> res!896271 e!1293262)))

(assert (=> b!2046528 (= res!896271 (not ((_ is Some!4708) (_1!12138 lt!767284))))))

(assert (=> b!2046528 (= lt!767284 (maxPrefixZipperSequenceV2MemOnlyDeriv!18 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2046529 () Bool)

(declare-fun tp!609330 () Bool)

(assert (=> b!2046529 (= e!1293251 (and tp!609330 (inv!29847 (tag!4519 (h!27897 rules!1563))) (inv!29848 (transformation!4029 (h!27897 rules!1563))) e!1293244))))

(declare-fun b!2046530 () Bool)

(assert (=> b!2046530 (= e!1293254 e!1293218)))

(declare-fun res!896263 () Bool)

(assert (=> b!2046530 (=> (not res!896263) (not e!1293218))))

(assert (=> b!2046530 (= res!896263 (= lt!767279 lt!767270))))

(declare-fun ++!6106 (List!22579 List!22579) List!22579)

(assert (=> b!2046530 (= lt!767270 (++!6106 lt!767278 lt!767271))))

(assert (=> b!2046530 (= lt!767279 (list!9208 totalInput!418))))

(assert (=> b!2046530 (= lt!767271 (list!9208 input!986))))

(assert (=> b!2046530 (= lt!767278 (list!9208 treated!60))))

(declare-fun mapIsEmpty!9393 () Bool)

(assert (=> mapIsEmpty!9393 mapRes!9391))

(declare-fun mapIsEmpty!9391 () Bool)

(assert (=> mapIsEmpty!9391 mapRes!9392))

(declare-fun res!896267 () Bool)

(assert (=> start!201560 (=> (not res!896267) (not e!1293254))))

(assert (=> start!201560 (= res!896267 ((_ is Lexer!3638) thiss!12889))))

(assert (=> start!201560 e!1293254))

(assert (=> start!201560 (and (inv!29854 cacheDown!575) e!1293261)))

(assert (=> start!201560 true))

(declare-fun e!1293250 () Bool)

(assert (=> start!201560 (and (inv!29853 cacheUp!562) e!1293250)))

(assert (=> start!201560 e!1293233))

(assert (=> start!201560 (and (inv!29851 totalInput!418) e!1293257)))

(assert (=> start!201560 (and (inv!29851 treated!60) e!1293219)))

(assert (=> start!201560 (and (inv!29851 input!986) e!1293269)))

(declare-fun inv!29855 (BalanceConc!14828) Bool)

(assert (=> start!201560 (and (inv!29855 acc!382) e!1293234)))

(declare-fun b!2046531 () Bool)

(assert (=> b!2046531 (= e!1293250 e!1293268)))

(declare-fun b!2046532 () Bool)

(assert (=> b!2046532 (= e!1293276 e!1293213)))

(declare-fun res!896268 () Bool)

(assert (=> b!2046532 (=> (not res!896268) (not e!1293213))))

(declare-fun ++!6107 (BalanceConc!14828 BalanceConc!14828) BalanceConc!14828)

(assert (=> b!2046532 (= res!896268 (= (list!9209 (_1!12139 lt!767286)) (list!9209 (++!6107 acc!382 (_1!12139 lt!767274)))))))

(assert (=> b!2046532 (= lt!767274 (lexRec!445 thiss!12889 rules!1563 input!986))))

(assert (=> b!2046532 (= lt!767286 (lexRec!445 thiss!12889 rules!1563 totalInput!418))))

(declare-fun mapNonEmpty!9392 () Bool)

(declare-fun tp!609319 () Bool)

(declare-fun tp!609332 () Bool)

(assert (=> mapNonEmpty!9392 (= mapRes!9390 (and tp!609319 tp!609332))))

(declare-fun mapKey!9392 () (_ BitVec 32))

(declare-fun mapValue!9390 () List!22577)

(declare-fun mapRest!9390 () (Array (_ BitVec 32) List!22577))

(assert (=> mapNonEmpty!9392 (= (arr!3107 (_values!2308 (v!27166 (underlying!4251 (v!27167 (underlying!4252 (cache!2323 cacheDown!575))))))) (store mapRest!9390 mapKey!9392 mapValue!9390))))

(declare-fun mapNonEmpty!9393 () Bool)

(declare-fun tp!609289 () Bool)

(declare-fun tp!609309 () Bool)

(assert (=> mapNonEmpty!9393 (= mapRes!9393 (and tp!609289 tp!609309))))

(declare-fun mapKey!9391 () (_ BitVec 32))

(declare-fun mapRest!9392 () (Array (_ BitVec 32) List!22581))

(declare-fun mapValue!9393 () List!22581)

(assert (=> mapNonEmpty!9393 (= (arr!3108 (_values!2309 (v!27169 (underlying!4253 (v!27170 (underlying!4254 (cache!2324 (_2!12138 err!3177)))))))) (store mapRest!9392 mapKey!9391 mapValue!9393))))

(declare-fun e!1293240 () Bool)

(assert (=> b!2046533 (= e!1293240 (and e!1293259 tp!609328))))

(declare-fun b!2046534 () Bool)

(assert (=> b!2046534 (= e!1293272 e!1293249)))

(declare-fun b!2046535 () Bool)

(assert (=> b!2046535 (= e!1293255 e!1293240)))

(assert (= (and start!201560 res!896267) b!2046477))

(assert (= (and b!2046477 res!896269) b!2046476))

(assert (= (and b!2046476 res!896274) b!2046530))

(assert (= (and b!2046530 res!896263) b!2046503))

(assert (= (and b!2046503 res!896275) b!2046481))

(assert (= (and b!2046481 res!896272) b!2046532))

(assert (= (and b!2046532 res!896268) b!2046485))

(assert (= (and b!2046485 res!896273) b!2046510))

(assert (= (and b!2046510 res!896270) b!2046479))

(assert (= (and b!2046479 res!896266) b!2046482))

(assert (= (and b!2046482 (not res!896265)) b!2046528))

(assert (= (and b!2046528 (not res!896271)) b!2046473))

(assert (= (and b!2046473 res!896264) b!2046507))

(assert (= (and b!2046507 c!331151) b!2046524))

(assert (= (and b!2046507 (not c!331151)) b!2046502))

(assert (= (and b!2046502 c!331149) b!2046474))

(assert (= (and b!2046502 (not c!331149)) b!2046513))

(assert (= b!2046501 b!2046494))

(assert (= b!2046506 b!2046501))

(assert (= b!2046493 b!2046506))

(assert (= b!2046493 b!2046491))

(assert (= (and b!2046513 ((_ is Some!4708) (_1!12138 err!3177))) b!2046493))

(assert (= (and b!2046478 condMapEmpty!9390) mapIsEmpty!9390))

(assert (= (and b!2046478 (not condMapEmpty!9390)) mapNonEmpty!9393))

(assert (= b!2046514 b!2046478))

(assert (= b!2046483 b!2046514))

(assert (= b!2046508 b!2046483))

(assert (= (and b!2046499 ((_ is LongMap!2029) (v!27170 (underlying!4254 (cache!2324 (_2!12138 err!3177)))))) b!2046508))

(assert (= b!2046533 b!2046499))

(assert (= (and b!2046535 ((_ is HashMap!1943) (cache!2324 (_2!12138 err!3177)))) b!2046533))

(assert (= b!2046513 b!2046535))

(assert (= (and b!2046489 condMapEmpty!9392) mapIsEmpty!9391))

(assert (= (and b!2046489 (not condMapEmpty!9392)) mapNonEmpty!9390))

(assert (= b!2046484 b!2046489))

(assert (= b!2046486 b!2046484))

(assert (= b!2046534 b!2046486))

(assert (= (and b!2046519 ((_ is LongMap!2028) (v!27167 (underlying!4252 (cache!2323 (_3!1521 err!3177)))))) b!2046534))

(assert (= b!2046488 b!2046519))

(assert (= (and b!2046527 ((_ is HashMap!1942) (cache!2323 (_3!1521 err!3177)))) b!2046488))

(assert (= b!2046513 b!2046527))

(assert (= (or b!2046524 b!2046474) bm!125329))

(assert (= (and b!2046473 c!331150) b!2046512))

(assert (= (and b!2046473 (not c!331150)) b!2046492))

(assert (= (and b!2046492 c!331148) b!2046495))

(assert (= (and b!2046492 (not c!331148)) b!2046471))

(assert (= b!2046472 b!2046487))

(assert (= b!2046500 b!2046472))

(assert (= b!2046496 b!2046500))

(assert (= b!2046496 b!2046505))

(assert (= (and b!2046471 ((_ is Some!4708) err!3176)) b!2046496))

(assert (= (or b!2046512 b!2046495) bm!125328))

(assert (= (and b!2046522 condMapEmpty!9393) mapIsEmpty!9392))

(assert (= (and b!2046522 (not condMapEmpty!9393)) mapNonEmpty!9392))

(assert (= b!2046470 b!2046522))

(assert (= b!2046521 b!2046470))

(assert (= b!2046526 b!2046521))

(assert (= (and b!2046490 ((_ is LongMap!2028) (v!27167 (underlying!4252 (cache!2323 cacheDown!575))))) b!2046526))

(assert (= b!2046509 b!2046490))

(assert (= (and b!2046520 ((_ is HashMap!1942) (cache!2323 cacheDown!575))) b!2046509))

(assert (= start!201560 b!2046520))

(assert (= (and b!2046518 condMapEmpty!9391) mapIsEmpty!9393))

(assert (= (and b!2046518 (not condMapEmpty!9391)) mapNonEmpty!9391))

(assert (= b!2046525 b!2046518))

(assert (= b!2046516 b!2046525))

(assert (= b!2046517 b!2046516))

(assert (= (and b!2046480 ((_ is LongMap!2029) (v!27170 (underlying!4254 (cache!2324 cacheUp!562))))) b!2046517))

(assert (= b!2046515 b!2046480))

(assert (= (and b!2046531 ((_ is HashMap!1943) (cache!2324 cacheUp!562))) b!2046515))

(assert (= start!201560 b!2046531))

(assert (= b!2046529 b!2046504))

(assert (= b!2046523 b!2046529))

(assert (= (and start!201560 ((_ is Cons!22496) rules!1563)) b!2046523))

(assert (= start!201560 b!2046475))

(assert (= start!201560 b!2046497))

(assert (= start!201560 b!2046498))

(assert (= start!201560 b!2046511))

(declare-fun m!2490113 () Bool)

(assert (=> b!2046532 m!2490113))

(declare-fun m!2490115 () Bool)

(assert (=> b!2046532 m!2490115))

(assert (=> b!2046532 m!2490113))

(declare-fun m!2490117 () Bool)

(assert (=> b!2046532 m!2490117))

(declare-fun m!2490119 () Bool)

(assert (=> b!2046532 m!2490119))

(declare-fun m!2490121 () Bool)

(assert (=> b!2046532 m!2490121))

(declare-fun m!2490123 () Bool)

(assert (=> b!2046501 m!2490123))

(declare-fun m!2490125 () Bool)

(assert (=> b!2046501 m!2490125))

(declare-fun m!2490127 () Bool)

(assert (=> b!2046479 m!2490127))

(declare-fun m!2490129 () Bool)

(assert (=> b!2046481 m!2490129))

(assert (=> b!2046481 m!2490129))

(declare-fun m!2490131 () Bool)

(assert (=> b!2046481 m!2490131))

(declare-fun m!2490133 () Bool)

(assert (=> b!2046475 m!2490133))

(declare-fun m!2490135 () Bool)

(assert (=> b!2046510 m!2490135))

(declare-fun m!2490137 () Bool)

(assert (=> b!2046513 m!2490137))

(declare-fun m!2490139 () Bool)

(assert (=> b!2046513 m!2490139))

(declare-fun m!2490141 () Bool)

(assert (=> b!2046495 m!2490141))

(declare-fun m!2490143 () Bool)

(assert (=> b!2046484 m!2490143))

(declare-fun m!2490145 () Bool)

(assert (=> b!2046484 m!2490145))

(declare-fun m!2490147 () Bool)

(assert (=> b!2046472 m!2490147))

(declare-fun m!2490149 () Bool)

(assert (=> b!2046472 m!2490149))

(declare-fun m!2490151 () Bool)

(assert (=> b!2046497 m!2490151))

(declare-fun m!2490153 () Bool)

(assert (=> b!2046470 m!2490153))

(declare-fun m!2490155 () Bool)

(assert (=> b!2046470 m!2490155))

(declare-fun m!2490157 () Bool)

(assert (=> b!2046511 m!2490157))

(declare-fun m!2490159 () Bool)

(assert (=> b!2046476 m!2490159))

(declare-fun m!2490161 () Bool)

(assert (=> b!2046493 m!2490161))

(declare-fun m!2490163 () Bool)

(assert (=> b!2046493 m!2490163))

(declare-fun m!2490165 () Bool)

(assert (=> b!2046485 m!2490165))

(declare-fun m!2490167 () Bool)

(assert (=> b!2046485 m!2490167))

(declare-fun m!2490169 () Bool)

(assert (=> b!2046500 m!2490169))

(declare-fun m!2490171 () Bool)

(assert (=> b!2046530 m!2490171))

(declare-fun m!2490173 () Bool)

(assert (=> b!2046530 m!2490173))

(declare-fun m!2490175 () Bool)

(assert (=> b!2046530 m!2490175))

(declare-fun m!2490177 () Bool)

(assert (=> b!2046530 m!2490177))

(declare-fun m!2490179 () Bool)

(assert (=> mapNonEmpty!9390 m!2490179))

(declare-fun m!2490181 () Bool)

(assert (=> b!2046491 m!2490181))

(declare-fun m!2490183 () Bool)

(assert (=> b!2046529 m!2490183))

(declare-fun m!2490185 () Bool)

(assert (=> b!2046529 m!2490185))

(declare-fun m!2490187 () Bool)

(assert (=> b!2046506 m!2490187))

(declare-fun m!2490189 () Bool)

(assert (=> mapNonEmpty!9392 m!2490189))

(declare-fun m!2490191 () Bool)

(assert (=> b!2046477 m!2490191))

(declare-fun m!2490193 () Bool)

(assert (=> b!2046514 m!2490193))

(declare-fun m!2490195 () Bool)

(assert (=> b!2046514 m!2490195))

(declare-fun m!2490197 () Bool)

(assert (=> bm!125328 m!2490197))

(declare-fun m!2490199 () Bool)

(assert (=> b!2046496 m!2490199))

(declare-fun m!2490201 () Bool)

(assert (=> b!2046496 m!2490201))

(declare-fun m!2490203 () Bool)

(assert (=> b!2046503 m!2490203))

(declare-fun m!2490205 () Bool)

(assert (=> b!2046503 m!2490205))

(declare-fun m!2490207 () Bool)

(assert (=> b!2046503 m!2490207))

(declare-fun m!2490209 () Bool)

(assert (=> b!2046473 m!2490209))

(declare-fun m!2490211 () Bool)

(assert (=> b!2046473 m!2490211))

(declare-fun m!2490213 () Bool)

(assert (=> b!2046473 m!2490213))

(declare-fun m!2490215 () Bool)

(assert (=> b!2046473 m!2490215))

(declare-fun m!2490217 () Bool)

(assert (=> b!2046473 m!2490217))

(declare-fun m!2490219 () Bool)

(assert (=> b!2046498 m!2490219))

(declare-fun m!2490221 () Bool)

(assert (=> bm!125329 m!2490221))

(declare-fun m!2490223 () Bool)

(assert (=> b!2046482 m!2490223))

(declare-fun m!2490225 () Bool)

(assert (=> b!2046482 m!2490225))

(declare-fun m!2490227 () Bool)

(assert (=> b!2046482 m!2490227))

(declare-fun m!2490229 () Bool)

(assert (=> mapNonEmpty!9391 m!2490229))

(declare-fun m!2490231 () Bool)

(assert (=> start!201560 m!2490231))

(declare-fun m!2490233 () Bool)

(assert (=> start!201560 m!2490233))

(declare-fun m!2490235 () Bool)

(assert (=> start!201560 m!2490235))

(declare-fun m!2490237 () Bool)

(assert (=> start!201560 m!2490237))

(declare-fun m!2490239 () Bool)

(assert (=> start!201560 m!2490239))

(declare-fun m!2490241 () Bool)

(assert (=> start!201560 m!2490241))

(declare-fun m!2490243 () Bool)

(assert (=> b!2046474 m!2490243))

(declare-fun m!2490245 () Bool)

(assert (=> b!2046528 m!2490245))

(declare-fun m!2490247 () Bool)

(assert (=> b!2046525 m!2490247))

(declare-fun m!2490249 () Bool)

(assert (=> b!2046525 m!2490249))

(declare-fun m!2490251 () Bool)

(assert (=> mapNonEmpty!9393 m!2490251))

(declare-fun m!2490253 () Bool)

(assert (=> b!2046505 m!2490253))

(check-sat (not b!2046479) (not b!2046496) (not mapNonEmpty!9392) (not b!2046484) (not b!2046478) (not b_next!58055) (not b!2046481) b_and!163295 (not b_next!58059) b_and!163297 (not b_next!58035) (not b!2046503) (not b!2046528) (not b!2046470) (not b_next!58037) (not b_next!58057) (not b!2046493) (not mapNonEmpty!9393) (not b!2046532) (not b_next!58043) (not b_next!58047) (not b!2046498) (not b_next!58051) b_and!163293 (not b!2046530) (not b!2046473) (not bm!125329) b_and!163289 (not b!2046489) b_and!163291 (not b_next!58053) (not b!2046491) (not b!2046506) (not b!2046505) (not b!2046501) b_and!163299 (not b_next!58039) (not b!2046510) b_and!163281 b_and!163285 (not b!2046511) (not b!2046482) (not b!2046495) (not b!2046514) (not b!2046476) (not b!2046525) (not b!2046518) (not b!2046513) (not b!2046529) (not b!2046477) b_and!163279 (not b_next!58045) (not b!2046472) (not mapNonEmpty!9391) b_and!163283 b_and!163277 (not b_next!58033) (not b_next!58049) (not b!2046485) (not b!2046475) (not b!2046497) (not bm!125328) (not b_next!58041) (not b!2046474) b_and!163275 b_and!163273 (not mapNonEmpty!9390) (not b!2046523) (not b!2046500) (not b!2046522) b_and!163287 (not start!201560))
(check-sat (not b_next!58035) b_and!163289 b_and!163299 b_and!163285 (not b_next!58041) (not b_next!58055) b_and!163287 b_and!163295 (not b_next!58059) b_and!163297 (not b_next!58037) (not b_next!58057) (not b_next!58043) (not b_next!58047) (not b_next!58051) b_and!163293 b_and!163291 (not b_next!58053) (not b_next!58039) b_and!163281 b_and!163279 (not b_next!58045) b_and!163283 b_and!163277 (not b_next!58033) (not b_next!58049) b_and!163275 b_and!163273)
