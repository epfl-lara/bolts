; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!201492 () Bool)

(assert start!201492)

(declare-fun b!2045390 () Bool)

(declare-fun b_free!57225 () Bool)

(declare-fun b_next!57929 () Bool)

(assert (=> b!2045390 (= b_free!57225 (not b_next!57929))))

(declare-fun tp!608539 () Bool)

(declare-fun b_and!163165 () Bool)

(assert (=> b!2045390 (= tp!608539 b_and!163165)))

(declare-fun b!2045379 () Bool)

(declare-fun b_free!57227 () Bool)

(declare-fun b_next!57931 () Bool)

(assert (=> b!2045379 (= b_free!57227 (not b_next!57931))))

(declare-fun tp!608538 () Bool)

(declare-fun b_and!163167 () Bool)

(assert (=> b!2045379 (= tp!608538 b_and!163167)))

(declare-fun b_free!57229 () Bool)

(declare-fun b_next!57933 () Bool)

(assert (=> b!2045379 (= b_free!57229 (not b_next!57933))))

(declare-fun tp!608568 () Bool)

(declare-fun b_and!163169 () Bool)

(assert (=> b!2045379 (= tp!608568 b_and!163169)))

(declare-fun b!2045381 () Bool)

(declare-fun b_free!57231 () Bool)

(declare-fun b_next!57935 () Bool)

(assert (=> b!2045381 (= b_free!57231 (not b_next!57935))))

(declare-fun tp!608569 () Bool)

(declare-fun b_and!163171 () Bool)

(assert (=> b!2045381 (= tp!608569 b_and!163171)))

(declare-fun b!2045368 () Bool)

(declare-fun b_free!57233 () Bool)

(declare-fun b_next!57937 () Bool)

(assert (=> b!2045368 (= b_free!57233 (not b_next!57937))))

(declare-fun tp!608575 () Bool)

(declare-fun b_and!163173 () Bool)

(assert (=> b!2045368 (= tp!608575 b_and!163173)))

(declare-fun b!2045413 () Bool)

(declare-fun b_free!57235 () Bool)

(declare-fun b_next!57939 () Bool)

(assert (=> b!2045413 (= b_free!57235 (not b_next!57939))))

(declare-fun tp!608544 () Bool)

(declare-fun b_and!163175 () Bool)

(assert (=> b!2045413 (= tp!608544 b_and!163175)))

(declare-fun b_free!57237 () Bool)

(declare-fun b_next!57941 () Bool)

(assert (=> b!2045413 (= b_free!57237 (not b_next!57941))))

(declare-fun tp!608573 () Bool)

(declare-fun b_and!163177 () Bool)

(assert (=> b!2045413 (= tp!608573 b_and!163177)))

(declare-fun b!2045402 () Bool)

(declare-fun b_free!57239 () Bool)

(declare-fun b_next!57943 () Bool)

(assert (=> b!2045402 (= b_free!57239 (not b_next!57943))))

(declare-fun tp!608567 () Bool)

(declare-fun b_and!163179 () Bool)

(assert (=> b!2045402 (= tp!608567 b_and!163179)))

(declare-fun b!2045373 () Bool)

(declare-fun b_free!57241 () Bool)

(declare-fun b_next!57945 () Bool)

(assert (=> b!2045373 (= b_free!57241 (not b_next!57945))))

(declare-fun tp!608548 () Bool)

(declare-fun b_and!163181 () Bool)

(assert (=> b!2045373 (= tp!608548 b_and!163181)))

(declare-fun b!2045419 () Bool)

(declare-fun b_free!57243 () Bool)

(declare-fun b_next!57947 () Bool)

(assert (=> b!2045419 (= b_free!57243 (not b_next!57947))))

(declare-fun tp!608541 () Bool)

(declare-fun b_and!163183 () Bool)

(assert (=> b!2045419 (= tp!608541 b_and!163183)))

(declare-fun b!2045391 () Bool)

(declare-fun b_free!57245 () Bool)

(declare-fun b_next!57949 () Bool)

(assert (=> b!2045391 (= b_free!57245 (not b_next!57949))))

(declare-fun tp!608570 () Bool)

(declare-fun b_and!163185 () Bool)

(assert (=> b!2045391 (= tp!608570 b_and!163185)))

(declare-fun b!2045397 () Bool)

(declare-fun b_free!57247 () Bool)

(declare-fun b_next!57951 () Bool)

(assert (=> b!2045397 (= b_free!57247 (not b_next!57951))))

(declare-fun tp!608549 () Bool)

(declare-fun b_and!163187 () Bool)

(assert (=> b!2045397 (= tp!608549 b_and!163187)))

(declare-fun b!2045367 () Bool)

(declare-fun e!1292231 () Bool)

(declare-fun e!1292238 () Bool)

(assert (=> b!2045367 (= e!1292231 e!1292238)))

(declare-fun res!896002 () Bool)

(assert (=> b!2045367 (=> res!896002 e!1292238)))

(declare-datatypes ((List!22547 0))(
  ( (Nil!22463) (Cons!22463 (h!27864 (_ BitVec 16)) (t!191661 List!22547)) )
))
(declare-datatypes ((TokenValue!4161 0))(
  ( (FloatLiteralValue!8322 (text!29572 List!22547)) (TokenValueExt!4160 (__x!13968 Int)) (Broken!20805 (value!126339 List!22547)) (Object!4244) (End!4161) (Def!4161) (Underscore!4161) (Match!4161) (Else!4161) (Error!4161) (Case!4161) (If!4161) (Extends!4161) (Abstract!4161) (Class!4161) (Val!4161) (DelimiterValue!8322 (del!4221 List!22547)) (KeywordValue!4167 (value!126340 List!22547)) (CommentValue!8322 (value!126341 List!22547)) (WhitespaceValue!8322 (value!126342 List!22547)) (IndentationValue!4161 (value!126343 List!22547)) (String!25996) (Int32!4161) (Broken!20806 (value!126344 List!22547)) (Boolean!4162) (Unit!37042) (OperatorValue!4164 (op!4221 List!22547)) (IdentifierValue!8322 (value!126345 List!22547)) (IdentifierValue!8323 (value!126346 List!22547)) (WhitespaceValue!8323 (value!126347 List!22547)) (True!8322) (False!8322) (Broken!20807 (value!126348 List!22547)) (Broken!20808 (value!126349 List!22547)) (True!8323) (RightBrace!4161) (RightBracket!4161) (Colon!4161) (Null!4161) (Comma!4161) (LeftBracket!4161) (False!8323) (LeftBrace!4161) (ImaginaryLiteralValue!4161 (text!29573 List!22547)) (StringLiteralValue!12483 (value!126350 List!22547)) (EOFValue!4161 (value!126351 List!22547)) (IdentValue!4161 (value!126352 List!22547)) (DelimiterValue!8323 (value!126353 List!22547)) (DedentValue!4161 (value!126354 List!22547)) (NewLineValue!4161 (value!126355 List!22547)) (IntegerValue!12483 (value!126356 (_ BitVec 32)) (text!29574 List!22547)) (IntegerValue!12484 (value!126357 Int) (text!29575 List!22547)) (Times!4161) (Or!4161) (Equal!4161) (Minus!4161) (Broken!20809 (value!126358 List!22547)) (And!4161) (Div!4161) (LessEqual!4161) (Mod!4161) (Concat!9614) (Not!4161) (Plus!4161) (SpaceValue!4161 (value!126359 List!22547)) (IntegerValue!12485 (value!126360 Int) (text!29576 List!22547)) (StringLiteralValue!12484 (text!29577 List!22547)) (FloatLiteralValue!8323 (text!29578 List!22547)) (BytesLiteralValue!4161 (value!126361 List!22547)) (CommentValue!8323 (value!126362 List!22547)) (StringLiteralValue!12485 (value!126363 List!22547)) (ErrorTokenValue!4161 (msg!4222 List!22547)) )
))
(declare-datatypes ((Hashable!1934 0))(
  ( (HashableExt!1933 (__x!13969 Int)) )
))
(declare-datatypes ((C!11052 0))(
  ( (C!11053 (val!6512 Int)) )
))
(declare-datatypes ((Regex!5453 0))(
  ( (ElementMatch!5453 (c!331062 C!11052)) (Concat!9615 (regOne!11418 Regex!5453) (regTwo!11418 Regex!5453)) (EmptyExpr!5453) (Star!5453 (reg!5782 Regex!5453)) (EmptyLang!5453) (Union!5453 (regOne!11419 Regex!5453) (regTwo!11419 Regex!5453)) )
))
(declare-datatypes ((List!22548 0))(
  ( (Nil!22464) (Cons!22464 (h!27865 Regex!5453) (t!191662 List!22548)) )
))
(declare-datatypes ((Context!2046 0))(
  ( (Context!2047 (exprs!1523 List!22548)) )
))
(declare-datatypes ((tuple2!21180 0))(
  ( (tuple2!21181 (_1!12101 Context!2046) (_2!12101 C!11052)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!21182 0))(
  ( (tuple2!21183 (_1!12102 tuple2!21180) (_2!12102 (InoxSet Context!2046))) )
))
(declare-datatypes ((List!22549 0))(
  ( (Nil!22465) (Cons!22465 (h!27866 tuple2!21182) (t!191663 List!22549)) )
))
(declare-datatypes ((array!6964 0))(
  ( (array!6965 (arr!3094 (Array (_ BitVec 32) List!22549)) (size!17559 (_ BitVec 32))) )
))
(declare-datatypes ((array!6966 0))(
  ( (array!6967 (arr!3095 (Array (_ BitVec 32) (_ BitVec 64))) (size!17560 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4040 0))(
  ( (LongMapFixedSize!4041 (defaultEntry!2385 Int) (mask!6062 (_ BitVec 32)) (extraKeys!2268 (_ BitVec 32)) (zeroValue!2278 List!22549) (minValue!2278 List!22549) (_size!4091 (_ BitVec 32)) (_keys!2317 array!6966) (_values!2300 array!6964) (_vacant!2081 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7905 0))(
  ( (Cell!7906 (v!27146 LongMapFixedSize!4040)) )
))
(declare-datatypes ((MutLongMap!2020 0))(
  ( (LongMap!2020 (underlying!4235 Cell!7905)) (MutLongMapExt!2019 (__x!13970 Int)) )
))
(declare-datatypes ((List!22550 0))(
  ( (Nil!22466) (Cons!22466 (h!27867 C!11052) (t!191664 List!22550)) )
))
(declare-datatypes ((IArray!15053 0))(
  ( (IArray!15054 (innerList!7584 List!22550)) )
))
(declare-datatypes ((Conc!7524 0))(
  ( (Node!7524 (left!17823 Conc!7524) (right!18153 Conc!7524) (csize!15278 Int) (cheight!7735 Int)) (Leaf!11018 (xs!10432 IArray!15053) (csize!15279 Int)) (Empty!7524) )
))
(declare-datatypes ((BalanceConc!14810 0))(
  ( (BalanceConc!14811 (c!331063 Conc!7524)) )
))
(declare-datatypes ((TokenValueInjection!7906 0))(
  ( (TokenValueInjection!7907 (toValue!5708 Int) (toChars!5567 Int)) )
))
(declare-datatypes ((Hashable!1935 0))(
  ( (HashableExt!1934 (__x!13971 Int)) )
))
(declare-datatypes ((Cell!7907 0))(
  ( (Cell!7908 (v!27147 MutLongMap!2020)) )
))
(declare-datatypes ((MutableMap!1934 0))(
  ( (MutableMapExt!1933 (__x!13972 Int)) (HashMap!1934 (underlying!4236 Cell!7907) (hashF!3857 Hashable!1935) (_size!4092 (_ BitVec 32)) (defaultValue!2096 Int)) )
))
(declare-datatypes ((CacheUp!1230 0))(
  ( (CacheUp!1231 (cache!2315 MutableMap!1934)) )
))
(declare-datatypes ((String!25997 0))(
  ( (String!25998 (value!126364 String)) )
))
(declare-datatypes ((Rule!7850 0))(
  ( (Rule!7851 (regex!4025 Regex!5453) (tag!4515 String!25997) (isSeparator!4025 Bool) (transformation!4025 TokenValueInjection!7906)) )
))
(declare-datatypes ((Token!7598 0))(
  ( (Token!7599 (value!126365 TokenValue!4161) (rule!6260 Rule!7850) (size!17561 Int) (originalCharacters!4830 List!22550)) )
))
(declare-datatypes ((tuple2!21184 0))(
  ( (tuple2!21185 (_1!12103 Token!7598) (_2!12103 BalanceConc!14810)) )
))
(declare-datatypes ((Option!4705 0))(
  ( (None!4704) (Some!4704 (v!27148 tuple2!21184)) )
))
(declare-datatypes ((tuple3!2094 0))(
  ( (tuple3!2095 (_1!12104 Regex!5453) (_2!12104 Context!2046) (_3!1511 C!11052)) )
))
(declare-datatypes ((tuple2!21186 0))(
  ( (tuple2!21187 (_1!12105 tuple3!2094) (_2!12105 (InoxSet Context!2046))) )
))
(declare-datatypes ((List!22551 0))(
  ( (Nil!22467) (Cons!22467 (h!27868 tuple2!21186) (t!191665 List!22551)) )
))
(declare-datatypes ((array!6968 0))(
  ( (array!6969 (arr!3096 (Array (_ BitVec 32) List!22551)) (size!17562 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4042 0))(
  ( (LongMapFixedSize!4043 (defaultEntry!2386 Int) (mask!6063 (_ BitVec 32)) (extraKeys!2269 (_ BitVec 32)) (zeroValue!2279 List!22551) (minValue!2279 List!22551) (_size!4093 (_ BitVec 32)) (_keys!2318 array!6966) (_values!2301 array!6968) (_vacant!2082 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7909 0))(
  ( (Cell!7910 (v!27149 LongMapFixedSize!4042)) )
))
(declare-datatypes ((MutLongMap!2021 0))(
  ( (LongMap!2021 (underlying!4237 Cell!7909)) (MutLongMapExt!2020 (__x!13973 Int)) )
))
(declare-datatypes ((Cell!7911 0))(
  ( (Cell!7912 (v!27150 MutLongMap!2021)) )
))
(declare-datatypes ((MutableMap!1935 0))(
  ( (MutableMapExt!1934 (__x!13974 Int)) (HashMap!1935 (underlying!4238 Cell!7911) (hashF!3858 Hashable!1934) (_size!4094 (_ BitVec 32)) (defaultValue!2097 Int)) )
))
(declare-datatypes ((CacheDown!1232 0))(
  ( (CacheDown!1233 (cache!2316 MutableMap!1935)) )
))
(declare-datatypes ((tuple3!2096 0))(
  ( (tuple3!2097 (_1!12106 Option!4705) (_2!12106 CacheUp!1230) (_3!1512 CacheDown!1232)) )
))
(declare-fun lt!766949 () tuple3!2096)

(get-info :version)

(assert (=> b!2045367 (= res!896002 (not ((_ is Some!4704) (_1!12106 lt!766949))))))

(declare-fun cacheDown!575 () CacheDown!1232)

(declare-datatypes ((LexerInterface!3636 0))(
  ( (LexerInterfaceExt!3633 (__x!13975 Int)) (Lexer!3634) )
))
(declare-fun thiss!12889 () LexerInterface!3636)

(declare-fun cacheUp!562 () CacheUp!1230)

(declare-datatypes ((List!22552 0))(
  ( (Nil!22468) (Cons!22468 (h!27869 Rule!7850) (t!191666 List!22552)) )
))
(declare-fun rules!1563 () List!22552)

(declare-fun totalInput!418 () BalanceConc!14810)

(declare-fun input!986 () BalanceConc!14810)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!15 (LexerInterface!3636 List!22552 BalanceConc!14810 BalanceConc!14810 CacheUp!1230 CacheDown!1232) tuple3!2096)

(assert (=> b!2045367 (= lt!766949 (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun e!1292233 () Bool)

(declare-fun e!1292258 () Bool)

(declare-fun tp!608555 () Bool)

(declare-fun tp!608571 () Bool)

(declare-fun err!3153 () tuple3!2096)

(declare-fun array_inv!2220 (array!6966) Bool)

(declare-fun array_inv!2221 (array!6964) Bool)

(assert (=> b!2045368 (= e!1292233 (and tp!608575 tp!608555 tp!608571 (array_inv!2220 (_keys!2317 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) (array_inv!2221 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) e!1292258))))

(declare-fun b!2045369 () Bool)

(declare-fun e!1292283 () Bool)

(declare-fun e!1292259 () Bool)

(assert (=> b!2045369 (= e!1292283 e!1292259)))

(declare-fun res!895997 () Bool)

(assert (=> b!2045369 (=> (not res!895997) (not e!1292259))))

(declare-datatypes ((List!22553 0))(
  ( (Nil!22469) (Cons!22469 (h!27870 Token!7598) (t!191667 List!22553)) )
))
(declare-datatypes ((IArray!15055 0))(
  ( (IArray!15056 (innerList!7585 List!22553)) )
))
(declare-datatypes ((Conc!7525 0))(
  ( (Node!7525 (left!17824 Conc!7525) (right!18154 Conc!7525) (csize!15280 Int) (cheight!7736 Int)) (Leaf!11019 (xs!10433 IArray!15055) (csize!15281 Int)) (Empty!7525) )
))
(declare-datatypes ((BalanceConc!14812 0))(
  ( (BalanceConc!14813 (c!331064 Conc!7525)) )
))
(declare-datatypes ((tuple2!21188 0))(
  ( (tuple2!21189 (_1!12107 BalanceConc!14812) (_2!12107 BalanceConc!14810)) )
))
(declare-fun lt!766934 () tuple2!21188)

(declare-fun acc!382 () BalanceConc!14812)

(declare-fun list!9199 (BalanceConc!14812) List!22553)

(assert (=> b!2045369 (= res!895997 (= (list!9199 (_1!12107 lt!766934)) (list!9199 acc!382)))))

(declare-fun treated!60 () BalanceConc!14810)

(declare-fun lexRec!441 (LexerInterface!3636 List!22552 BalanceConc!14810) tuple2!21188)

(assert (=> b!2045369 (= lt!766934 (lexRec!441 thiss!12889 rules!1563 treated!60))))

(declare-fun b!2045370 () Bool)

(declare-fun e!1292280 () Bool)

(declare-fun tp!608547 () Bool)

(declare-fun inv!29814 (Conc!7524) Bool)

(assert (=> b!2045370 (= e!1292280 (and (inv!29814 (c!331063 totalInput!418)) tp!608547))))

(declare-fun b!2045372 () Bool)

(declare-fun res!896005 () Bool)

(declare-fun e!1292247 () Bool)

(assert (=> b!2045372 (=> (not res!896005) (not e!1292247))))

(declare-fun valid!1609 (CacheUp!1230) Bool)

(assert (=> b!2045372 (= res!896005 (valid!1609 cacheUp!562))))

(declare-fun e!1292256 () Bool)

(declare-fun e!1292272 () Bool)

(assert (=> b!2045373 (= e!1292256 (and e!1292272 tp!608548))))

(declare-fun b!2045374 () Bool)

(declare-fun e!1292267 () Bool)

(declare-fun e!1292257 () Bool)

(assert (=> b!2045374 (= e!1292267 e!1292257)))

(declare-fun b!2045375 () Bool)

(assert (=> b!2045375 true))

(declare-fun e!1292265 () Bool)

(declare-fun e!1292284 () Bool)

(declare-fun inv!29815 (CacheUp!1230) Bool)

(declare-fun inv!29816 (CacheDown!1232) Bool)

(assert (=> b!2045375 (and e!1292265 (inv!29815 (_2!12106 err!3153)) e!1292267 (inv!29816 (_3!1512 err!3153)) e!1292284)))

(declare-fun e!1292242 () tuple3!2096)

(assert (=> b!2045375 (= e!1292242 err!3153)))

(declare-fun b!2045376 () Bool)

(declare-fun e!1292240 () tuple3!2096)

(assert (=> b!2045376 (= e!1292240 e!1292242)))

(declare-fun c!331060 () Bool)

(assert (=> b!2045376 (= c!331060 ((_ is Cons!22468) rules!1563))))

(declare-fun mapNonEmpty!9334 () Bool)

(declare-fun mapRes!9334 () Bool)

(declare-fun tp!608543 () Bool)

(declare-fun tp!608540 () Bool)

(assert (=> mapNonEmpty!9334 (= mapRes!9334 (and tp!608543 tp!608540))))

(declare-fun mapKey!9337 () (_ BitVec 32))

(declare-fun mapRest!9334 () (Array (_ BitVec 32) List!22551))

(declare-fun mapValue!9336 () List!22551)

(assert (=> mapNonEmpty!9334 (= (arr!3096 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) (store mapRest!9334 mapKey!9337 mapValue!9336))))

(declare-fun b!2045377 () Bool)

(declare-fun res!895996 () Bool)

(assert (=> b!2045377 (=> (not res!895996) (not e!1292259))))

(declare-fun isEmpty!13982 (List!22550) Bool)

(declare-fun list!9200 (BalanceConc!14810) List!22550)

(assert (=> b!2045377 (= res!895996 (isEmpty!13982 (list!9200 (_2!12107 lt!766934))))))

(declare-fun mapNonEmpty!9335 () Bool)

(declare-fun mapRes!9336 () Bool)

(declare-fun tp!608574 () Bool)

(declare-fun tp!608558 () Bool)

(assert (=> mapNonEmpty!9335 (= mapRes!9336 (and tp!608574 tp!608558))))

(declare-fun mapValue!9334 () List!22549)

(declare-fun mapRest!9337 () (Array (_ BitVec 32) List!22549))

(declare-fun mapKey!9335 () (_ BitVec 32))

(assert (=> mapNonEmpty!9335 (= (arr!3094 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) (store mapRest!9337 mapKey!9335 mapValue!9334))))

(declare-fun b!2045378 () Bool)

(declare-fun e!1292270 () Bool)

(assert (=> b!2045378 (= e!1292284 e!1292270)))

(declare-fun e!1292235 () Bool)

(assert (=> b!2045379 (= e!1292235 (and tp!608538 tp!608568))))

(declare-fun b!2045380 () Bool)

(declare-fun e!1292253 () Bool)

(assert (=> b!2045380 (= e!1292253 e!1292283)))

(declare-fun res!896001 () Bool)

(assert (=> b!2045380 (=> (not res!896001) (not e!1292283))))

(declare-fun lt!766939 () List!22550)

(declare-fun lt!766943 () List!22550)

(assert (=> b!2045380 (= res!896001 (= lt!766939 lt!766943))))

(declare-fun lt!766948 () List!22550)

(declare-fun lt!766944 () List!22550)

(declare-fun ++!6099 (List!22550 List!22550) List!22550)

(assert (=> b!2045380 (= lt!766943 (++!6099 lt!766948 lt!766944))))

(assert (=> b!2045380 (= lt!766939 (list!9200 totalInput!418))))

(assert (=> b!2045380 (= lt!766944 (list!9200 input!986))))

(assert (=> b!2045380 (= lt!766948 (list!9200 treated!60))))

(declare-fun e!1292250 () Bool)

(assert (=> b!2045381 (= e!1292270 (and e!1292250 tp!608569))))

(declare-fun mapIsEmpty!9334 () Bool)

(declare-fun mapRes!9337 () Bool)

(assert (=> mapIsEmpty!9334 mapRes!9337))

(declare-fun b!2045382 () Bool)

(declare-fun e!1292261 () Bool)

(declare-fun lt!766936 () MutLongMap!2020)

(assert (=> b!2045382 (= e!1292272 (and e!1292261 ((_ is LongMap!2020) lt!766936)))))

(assert (=> b!2045382 (= lt!766936 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))

(declare-fun b!2045383 () Bool)

(declare-fun e!1292248 () Bool)

(declare-fun lt!766933 () MutLongMap!2021)

(assert (=> b!2045383 (= e!1292250 (and e!1292248 ((_ is LongMap!2021) lt!766933)))))

(assert (=> b!2045383 (= lt!766933 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))

(declare-fun b!2045384 () Bool)

(declare-fun e!1292278 () Bool)

(declare-fun e!1292260 () Bool)

(assert (=> b!2045384 (= e!1292278 e!1292260)))

(declare-fun bm!125306 () Bool)

(declare-fun call!125311 () tuple3!2096)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!7 (LexerInterface!3636 Rule!7850 BalanceConc!14810 BalanceConc!14810 CacheUp!1230 CacheDown!1232) tuple3!2096)

(assert (=> bm!125306 (= call!125311 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!7 thiss!12889 (h!27869 rules!1563) input!986 totalInput!418 (_2!12106 lt!766949) (_3!1512 lt!766949)))))

(declare-fun b!2045385 () Bool)

(assert (=> b!2045385 (= e!1292240 call!125311)))

(declare-fun mapNonEmpty!9336 () Bool)

(declare-fun mapRes!9335 () Bool)

(declare-fun tp!608542 () Bool)

(declare-fun tp!608566 () Bool)

(assert (=> mapNonEmpty!9336 (= mapRes!9335 (and tp!608542 tp!608566))))

(declare-fun mapRest!9336 () (Array (_ BitVec 32) List!22551))

(declare-fun mapValue!9337 () List!22551)

(declare-fun mapKey!9336 () (_ BitVec 32))

(assert (=> mapNonEmpty!9336 (= (arr!3096 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) (store mapRest!9336 mapKey!9336 mapValue!9337))))

(declare-fun b!2045386 () Bool)

(declare-fun e!1292282 () Bool)

(declare-fun e!1292249 () Bool)

(declare-fun tp!608560 () Bool)

(assert (=> b!2045386 (= e!1292282 (and e!1292249 tp!608560))))

(declare-fun b!2045387 () Bool)

(declare-fun e!1292266 () Bool)

(declare-fun tp!608565 () Bool)

(assert (=> b!2045387 (= e!1292266 (and (inv!29814 (c!331063 input!986)) tp!608565))))

(declare-fun b!2045388 () Bool)

(declare-fun e!1292274 () Bool)

(assert (=> b!2045388 (= e!1292274 e!1292256)))

(declare-fun b!2045389 () Bool)

(declare-fun e!1292241 () Bool)

(declare-fun e!1292251 () Bool)

(assert (=> b!2045389 (= e!1292241 e!1292251)))

(declare-fun mapIsEmpty!9335 () Bool)

(assert (=> mapIsEmpty!9335 mapRes!9336))

(declare-fun b!2045371 () Bool)

(declare-fun e!1292239 () Bool)

(assert (=> b!2045371 (= e!1292261 e!1292239)))

(declare-fun res!895994 () Bool)

(assert (=> start!201492 (=> (not res!895994) (not e!1292253))))

(assert (=> start!201492 (= res!895994 ((_ is Lexer!3634) thiss!12889))))

(assert (=> start!201492 e!1292253))

(assert (=> start!201492 (and (inv!29816 cacheDown!575) e!1292278)))

(assert (=> start!201492 true))

(assert (=> start!201492 (and (inv!29815 cacheUp!562) e!1292274)))

(assert (=> start!201492 e!1292282))

(declare-fun inv!29817 (BalanceConc!14810) Bool)

(assert (=> start!201492 (and (inv!29817 totalInput!418) e!1292280)))

(declare-fun e!1292254 () Bool)

(assert (=> start!201492 (and (inv!29817 treated!60) e!1292254)))

(assert (=> start!201492 (and (inv!29817 input!986) e!1292266)))

(declare-fun e!1292269 () Bool)

(declare-fun inv!29818 (BalanceConc!14812) Bool)

(assert (=> start!201492 (and (inv!29818 acc!382) e!1292269)))

(declare-fun tp!608564 () Bool)

(declare-fun tp!608536 () Bool)

(declare-fun e!1292245 () Bool)

(declare-fun array_inv!2222 (array!6968) Bool)

(assert (=> b!2045390 (= e!1292251 (and tp!608539 tp!608564 tp!608536 (array_inv!2220 (_keys!2318 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) (array_inv!2222 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) e!1292245))))

(declare-fun mapIsEmpty!9336 () Bool)

(assert (=> mapIsEmpty!9336 mapRes!9335))

(declare-fun tp!608537 () Bool)

(declare-fun e!1292246 () Bool)

(declare-fun tp!608546 () Bool)

(declare-fun e!1292281 () Bool)

(assert (=> b!2045391 (= e!1292281 (and tp!608570 tp!608546 tp!608537 (array_inv!2220 (_keys!2317 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) (array_inv!2221 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) e!1292246))))

(declare-fun b!2045392 () Bool)

(declare-fun e!1292255 () Bool)

(declare-fun e!1292232 () Bool)

(declare-fun lt!766941 () MutLongMap!2021)

(assert (=> b!2045392 (= e!1292255 (and e!1292232 ((_ is LongMap!2021) lt!766941)))))

(assert (=> b!2045392 (= lt!766941 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))

(declare-fun b!2045393 () Bool)

(declare-fun e!1292271 () Bool)

(declare-fun e!1292237 () Bool)

(assert (=> b!2045393 (= e!1292271 e!1292237)))

(declare-fun b!2045394 () Bool)

(declare-fun tp!608535 () Bool)

(assert (=> b!2045394 (= e!1292254 (and (inv!29814 (c!331063 treated!60)) tp!608535))))

(declare-fun e!1292244 () Bool)

(declare-fun b!2045395 () Bool)

(declare-fun e!1292243 () Bool)

(declare-fun inv!29819 (Token!7598) Bool)

(assert (=> b!2045395 (= e!1292265 (and (inv!29819 (_1!12103 (v!27148 (_1!12106 err!3153)))) e!1292244 (inv!29817 (_2!12103 (v!27148 (_1!12106 err!3153)))) e!1292243))))

(declare-fun b!2045396 () Bool)

(declare-fun e!1292277 () Bool)

(declare-fun e!1292268 () Bool)

(assert (=> b!2045396 (= e!1292277 e!1292268)))

(declare-fun tp!608553 () Bool)

(declare-fun e!1292285 () Bool)

(declare-fun tp!608572 () Bool)

(assert (=> b!2045397 (= e!1292237 (and tp!608549 tp!608553 tp!608572 (array_inv!2220 (_keys!2318 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) (array_inv!2222 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) e!1292285))))

(declare-fun b!2045398 () Bool)

(declare-fun tp!608551 () Bool)

(declare-fun e!1292264 () Bool)

(declare-fun inv!29812 (String!25997) Bool)

(declare-fun inv!29820 (TokenValueInjection!7906) Bool)

(assert (=> b!2045398 (= e!1292264 (and tp!608551 (inv!29812 (tag!4515 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (inv!29820 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) e!1292235))))

(declare-fun b!2045399 () Bool)

(declare-fun res!896003 () Bool)

(assert (=> b!2045399 (=> (not res!896003) (not e!1292253))))

(declare-fun isEmpty!13983 (List!22552) Bool)

(assert (=> b!2045399 (= res!896003 (not (isEmpty!13983 rules!1563)))))

(declare-fun b!2045400 () Bool)

(declare-fun tp!608563 () Bool)

(assert (=> b!2045400 (= e!1292243 (and (inv!29814 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153))))) tp!608563))))

(declare-fun b!2045401 () Bool)

(declare-fun res!896004 () Bool)

(assert (=> b!2045401 (=> (not res!896004) (not e!1292247))))

(declare-fun lt!766947 () tuple2!21188)

(declare-fun lt!766946 () tuple2!21188)

(assert (=> b!2045401 (= res!896004 (= (list!9200 (_2!12107 lt!766947)) (list!9200 (_2!12107 lt!766946))))))

(assert (=> b!2045402 (= e!1292260 (and e!1292255 tp!608567))))

(declare-fun b!2045403 () Bool)

(declare-fun tp!608556 () Bool)

(assert (=> b!2045403 (= e!1292245 (and tp!608556 mapRes!9335))))

(declare-fun condMapEmpty!9337 () Bool)

(declare-fun mapDefault!9336 () List!22551)

(assert (=> b!2045403 (= condMapEmpty!9337 (= (arr!3096 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) ((as const (Array (_ BitVec 32) List!22551)) mapDefault!9336)))))

(declare-fun b!2045404 () Bool)

(assert (=> b!2045404 (= e!1292248 e!1292271)))

(declare-fun mapIsEmpty!9337 () Bool)

(assert (=> mapIsEmpty!9337 mapRes!9334))

(declare-fun tp!608552 () Bool)

(declare-fun b!2045405 () Bool)

(declare-fun inv!21 (TokenValue!4161) Bool)

(assert (=> b!2045405 (= e!1292244 (and (inv!21 (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))) e!1292264 tp!608552))))

(declare-fun b!2045406 () Bool)

(assert (=> b!2045406 (= e!1292247 (not e!1292231))))

(declare-fun res!896000 () Bool)

(assert (=> b!2045406 (=> res!896000 e!1292231)))

(declare-fun isSuffix!481 (List!22550 List!22550) Bool)

(assert (=> b!2045406 (= res!896000 (not (isSuffix!481 lt!766944 lt!766939)))))

(assert (=> b!2045406 (isSuffix!481 lt!766944 lt!766943)))

(declare-datatypes ((Unit!37043 0))(
  ( (Unit!37044) )
))
(declare-fun lt!766940 () Unit!37043)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!382 (List!22550 List!22550) Unit!37043)

(assert (=> b!2045406 (= lt!766940 (lemmaConcatTwoListThenFSndIsSuffix!382 lt!766948 lt!766944))))

(declare-fun b!2045407 () Bool)

(declare-fun tp!608545 () Bool)

(assert (=> b!2045407 (= e!1292258 (and tp!608545 mapRes!9337))))

(declare-fun condMapEmpty!9335 () Bool)

(declare-fun mapDefault!9334 () List!22549)

(assert (=> b!2045407 (= condMapEmpty!9335 (= (arr!3094 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) ((as const (Array (_ BitVec 32) List!22549)) mapDefault!9334)))))

(declare-fun b!2045408 () Bool)

(declare-fun tp!608562 () Bool)

(assert (=> b!2045408 (= e!1292285 (and tp!608562 mapRes!9334))))

(declare-fun condMapEmpty!9336 () Bool)

(declare-fun mapDefault!9335 () List!22551)

(assert (=> b!2045408 (= condMapEmpty!9336 (= (arr!3096 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) ((as const (Array (_ BitVec 32) List!22551)) mapDefault!9335)))))

(declare-fun e!1292252 () Bool)

(declare-fun b!2045409 () Bool)

(declare-fun tp!608550 () Bool)

(assert (=> b!2045409 (= e!1292249 (and tp!608550 (inv!29812 (tag!4515 (h!27869 rules!1563))) (inv!29820 (transformation!4025 (h!27869 rules!1563))) e!1292252))))

(declare-fun b!2045410 () Bool)

(declare-fun e!1292234 () Bool)

(declare-fun lt!766945 () tuple3!2096)

(assert (=> b!2045410 (= e!1292234 (= lt!766945 e!1292240))))

(declare-fun c!331061 () Bool)

(assert (=> b!2045410 (= c!331061 (and ((_ is Cons!22468) rules!1563) ((_ is Nil!22468) (t!191666 rules!1563))))))

(declare-fun b!2045411 () Bool)

(declare-fun rulesValidInductive!1400 (LexerInterface!3636 List!22552) Bool)

(assert (=> b!2045411 (= e!1292238 (rulesValidInductive!1400 thiss!12889 rules!1563))))

(assert (=> b!2045411 e!1292234))

(declare-fun res!895999 () Bool)

(assert (=> b!2045411 (=> (not res!895999) (not e!1292234))))

(declare-fun isPrefix!1996 (List!22550 List!22550) Bool)

(assert (=> b!2045411 (= res!895999 (isPrefix!1996 lt!766944 lt!766944))))

(declare-fun lt!766932 () Unit!37043)

(declare-fun lemmaIsPrefixRefl!1314 (List!22550 List!22550) Unit!37043)

(assert (=> b!2045411 (= lt!766932 (lemmaIsPrefixRefl!1314 lt!766944 lt!766944))))

(assert (=> b!2045411 (= lt!766945 (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12106 lt!766949) (_3!1512 lt!766949)))))

(declare-fun lt!766938 () tuple2!21188)

(assert (=> b!2045411 (= lt!766938 (lexRec!441 thiss!12889 rules!1563 (_2!12103 (v!27148 (_1!12106 lt!766949)))))))

(declare-fun b!2045412 () Bool)

(assert (=> b!2045412 (= e!1292232 e!1292241)))

(assert (=> b!2045413 (= e!1292252 (and tp!608544 tp!608573))))

(declare-fun b!2045414 () Bool)

(declare-fun res!895998 () Bool)

(assert (=> b!2045414 (=> (not res!895998) (not e!1292247))))

(declare-fun valid!1610 (CacheDown!1232) Bool)

(assert (=> b!2045414 (= res!895998 (valid!1610 cacheDown!575))))

(declare-fun lt!766942 () tuple3!2096)

(declare-fun b!2045415 () Bool)

(declare-fun lt!766937 () tuple3!2096)

(assert (=> b!2045415 (= lt!766942 (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 (t!191666 rules!1563) input!986 totalInput!418 (_2!12106 lt!766937) (_3!1512 lt!766937)))))

(assert (=> b!2045415 (= lt!766937 call!125311)))

(assert (=> b!2045415 (= e!1292242 (tuple3!2097 (ite (and ((_ is None!4704) (_1!12106 lt!766937)) ((_ is None!4704) (_1!12106 lt!766942))) None!4704 (ite ((_ is None!4704) (_1!12106 lt!766942)) (_1!12106 lt!766937) (ite ((_ is None!4704) (_1!12106 lt!766937)) (_1!12106 lt!766942) (ite (>= (size!17561 (_1!12103 (v!27148 (_1!12106 lt!766937)))) (size!17561 (_1!12103 (v!27148 (_1!12106 lt!766942))))) (Some!4704 (v!27148 (_1!12106 lt!766937))) (Some!4704 (v!27148 (_1!12106 lt!766942))))))) (_2!12106 lt!766942) (_3!1512 lt!766942)))))

(declare-fun b!2045416 () Bool)

(declare-fun tp!608561 () Bool)

(declare-fun inv!29821 (Conc!7525) Bool)

(assert (=> b!2045416 (= e!1292269 (and (inv!29821 (c!331064 acc!382)) tp!608561))))

(declare-fun mapNonEmpty!9337 () Bool)

(declare-fun tp!608559 () Bool)

(declare-fun tp!608557 () Bool)

(assert (=> mapNonEmpty!9337 (= mapRes!9337 (and tp!608559 tp!608557))))

(declare-fun mapRest!9335 () (Array (_ BitVec 32) List!22549))

(declare-fun mapKey!9334 () (_ BitVec 32))

(declare-fun mapValue!9335 () List!22549)

(assert (=> mapNonEmpty!9337 (= (arr!3094 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) (store mapRest!9335 mapKey!9334 mapValue!9335))))

(declare-fun b!2045417 () Bool)

(assert (=> b!2045417 (= e!1292259 e!1292247)))

(declare-fun res!895995 () Bool)

(assert (=> b!2045417 (=> (not res!895995) (not e!1292247))))

(declare-fun ++!6100 (BalanceConc!14812 BalanceConc!14812) BalanceConc!14812)

(assert (=> b!2045417 (= res!895995 (= (list!9199 (_1!12107 lt!766947)) (list!9199 (++!6100 acc!382 (_1!12107 lt!766946)))))))

(assert (=> b!2045417 (= lt!766946 (lexRec!441 thiss!12889 rules!1563 input!986))))

(assert (=> b!2045417 (= lt!766947 (lexRec!441 thiss!12889 rules!1563 totalInput!418))))

(declare-fun b!2045418 () Bool)

(declare-fun res!895993 () Bool)

(assert (=> b!2045418 (=> (not res!895993) (not e!1292253))))

(declare-fun rulesInvariant!3235 (LexerInterface!3636 List!22552) Bool)

(assert (=> b!2045418 (= res!895993 (rulesInvariant!3235 thiss!12889 rules!1563))))

(declare-fun e!1292273 () Bool)

(assert (=> b!2045419 (= e!1292257 (and e!1292273 tp!608541))))

(declare-fun b!2045420 () Bool)

(assert (=> b!2045420 (= e!1292239 e!1292281)))

(declare-fun b!2045421 () Bool)

(declare-fun lt!766935 () MutLongMap!2020)

(assert (=> b!2045421 (= e!1292273 (and e!1292277 ((_ is LongMap!2020) lt!766935)))))

(assert (=> b!2045421 (= lt!766935 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))

(declare-fun b!2045422 () Bool)

(assert (=> b!2045422 (= e!1292268 e!1292233)))

(declare-fun b!2045423 () Bool)

(declare-fun tp!608554 () Bool)

(assert (=> b!2045423 (= e!1292246 (and tp!608554 mapRes!9336))))

(declare-fun condMapEmpty!9334 () Bool)

(declare-fun mapDefault!9337 () List!22549)

(assert (=> b!2045423 (= condMapEmpty!9334 (= (arr!3094 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) ((as const (Array (_ BitVec 32) List!22549)) mapDefault!9337)))))

(assert (= (and start!201492 res!895994) b!2045399))

(assert (= (and b!2045399 res!896003) b!2045418))

(assert (= (and b!2045418 res!895993) b!2045380))

(assert (= (and b!2045380 res!896001) b!2045369))

(assert (= (and b!2045369 res!895997) b!2045377))

(assert (= (and b!2045377 res!895996) b!2045417))

(assert (= (and b!2045417 res!895995) b!2045401))

(assert (= (and b!2045401 res!896004) b!2045372))

(assert (= (and b!2045372 res!896005) b!2045414))

(assert (= (and b!2045414 res!895998) b!2045406))

(assert (= (and b!2045406 (not res!896000)) b!2045367))

(assert (= (and b!2045367 (not res!896002)) b!2045411))

(assert (= (and b!2045411 res!895999) b!2045410))

(assert (= (and b!2045410 c!331061) b!2045385))

(assert (= (and b!2045410 (not c!331061)) b!2045376))

(assert (= (and b!2045376 c!331060) b!2045415))

(assert (= (and b!2045376 (not c!331060)) b!2045375))

(assert (= b!2045398 b!2045379))

(assert (= b!2045405 b!2045398))

(assert (= b!2045395 b!2045405))

(assert (= b!2045395 b!2045400))

(assert (= (and b!2045375 ((_ is Some!4704) (_1!12106 err!3153))) b!2045395))

(assert (= (and b!2045407 condMapEmpty!9335) mapIsEmpty!9334))

(assert (= (and b!2045407 (not condMapEmpty!9335)) mapNonEmpty!9337))

(assert (= b!2045368 b!2045407))

(assert (= b!2045422 b!2045368))

(assert (= b!2045396 b!2045422))

(assert (= (and b!2045421 ((_ is LongMap!2020) (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))) b!2045396))

(assert (= b!2045419 b!2045421))

(assert (= (and b!2045374 ((_ is HashMap!1934) (cache!2315 (_2!12106 err!3153)))) b!2045419))

(assert (= b!2045375 b!2045374))

(assert (= (and b!2045408 condMapEmpty!9336) mapIsEmpty!9337))

(assert (= (and b!2045408 (not condMapEmpty!9336)) mapNonEmpty!9334))

(assert (= b!2045397 b!2045408))

(assert (= b!2045393 b!2045397))

(assert (= b!2045404 b!2045393))

(assert (= (and b!2045383 ((_ is LongMap!2021) (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))) b!2045404))

(assert (= b!2045381 b!2045383))

(assert (= (and b!2045378 ((_ is HashMap!1935) (cache!2316 (_3!1512 err!3153)))) b!2045381))

(assert (= b!2045375 b!2045378))

(assert (= (or b!2045385 b!2045415) bm!125306))

(assert (= (and b!2045403 condMapEmpty!9337) mapIsEmpty!9336))

(assert (= (and b!2045403 (not condMapEmpty!9337)) mapNonEmpty!9336))

(assert (= b!2045390 b!2045403))

(assert (= b!2045389 b!2045390))

(assert (= b!2045412 b!2045389))

(assert (= (and b!2045392 ((_ is LongMap!2021) (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))) b!2045412))

(assert (= b!2045402 b!2045392))

(assert (= (and b!2045384 ((_ is HashMap!1935) (cache!2316 cacheDown!575))) b!2045402))

(assert (= start!201492 b!2045384))

(assert (= (and b!2045423 condMapEmpty!9334) mapIsEmpty!9335))

(assert (= (and b!2045423 (not condMapEmpty!9334)) mapNonEmpty!9335))

(assert (= b!2045391 b!2045423))

(assert (= b!2045420 b!2045391))

(assert (= b!2045371 b!2045420))

(assert (= (and b!2045382 ((_ is LongMap!2020) (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))) b!2045371))

(assert (= b!2045373 b!2045382))

(assert (= (and b!2045388 ((_ is HashMap!1934) (cache!2315 cacheUp!562))) b!2045373))

(assert (= start!201492 b!2045388))

(assert (= b!2045409 b!2045413))

(assert (= b!2045386 b!2045409))

(assert (= (and start!201492 ((_ is Cons!22468) rules!1563)) b!2045386))

(assert (= start!201492 b!2045370))

(assert (= start!201492 b!2045394))

(assert (= start!201492 b!2045387))

(assert (= start!201492 b!2045416))

(declare-fun m!2489157 () Bool)

(assert (=> b!2045416 m!2489157))

(declare-fun m!2489159 () Bool)

(assert (=> b!2045390 m!2489159))

(declare-fun m!2489161 () Bool)

(assert (=> b!2045390 m!2489161))

(declare-fun m!2489163 () Bool)

(assert (=> b!2045406 m!2489163))

(declare-fun m!2489165 () Bool)

(assert (=> b!2045406 m!2489165))

(declare-fun m!2489167 () Bool)

(assert (=> b!2045406 m!2489167))

(declare-fun m!2489169 () Bool)

(assert (=> b!2045369 m!2489169))

(declare-fun m!2489171 () Bool)

(assert (=> b!2045369 m!2489171))

(declare-fun m!2489173 () Bool)

(assert (=> b!2045369 m!2489173))

(declare-fun m!2489175 () Bool)

(assert (=> b!2045380 m!2489175))

(declare-fun m!2489177 () Bool)

(assert (=> b!2045380 m!2489177))

(declare-fun m!2489179 () Bool)

(assert (=> b!2045380 m!2489179))

(declare-fun m!2489181 () Bool)

(assert (=> b!2045380 m!2489181))

(declare-fun m!2489183 () Bool)

(assert (=> b!2045414 m!2489183))

(declare-fun m!2489185 () Bool)

(assert (=> start!201492 m!2489185))

(declare-fun m!2489187 () Bool)

(assert (=> start!201492 m!2489187))

(declare-fun m!2489189 () Bool)

(assert (=> start!201492 m!2489189))

(declare-fun m!2489191 () Bool)

(assert (=> start!201492 m!2489191))

(declare-fun m!2489193 () Bool)

(assert (=> start!201492 m!2489193))

(declare-fun m!2489195 () Bool)

(assert (=> start!201492 m!2489195))

(declare-fun m!2489197 () Bool)

(assert (=> b!2045394 m!2489197))

(declare-fun m!2489199 () Bool)

(assert (=> b!2045391 m!2489199))

(declare-fun m!2489201 () Bool)

(assert (=> b!2045391 m!2489201))

(declare-fun m!2489203 () Bool)

(assert (=> b!2045417 m!2489203))

(declare-fun m!2489205 () Bool)

(assert (=> b!2045417 m!2489205))

(declare-fun m!2489207 () Bool)

(assert (=> b!2045417 m!2489207))

(declare-fun m!2489209 () Bool)

(assert (=> b!2045417 m!2489209))

(assert (=> b!2045417 m!2489203))

(declare-fun m!2489211 () Bool)

(assert (=> b!2045417 m!2489211))

(declare-fun m!2489213 () Bool)

(assert (=> b!2045405 m!2489213))

(declare-fun m!2489215 () Bool)

(assert (=> b!2045418 m!2489215))

(declare-fun m!2489217 () Bool)

(assert (=> b!2045395 m!2489217))

(declare-fun m!2489219 () Bool)

(assert (=> b!2045395 m!2489219))

(declare-fun m!2489221 () Bool)

(assert (=> b!2045372 m!2489221))

(declare-fun m!2489223 () Bool)

(assert (=> b!2045387 m!2489223))

(declare-fun m!2489225 () Bool)

(assert (=> mapNonEmpty!9336 m!2489225))

(declare-fun m!2489227 () Bool)

(assert (=> b!2045399 m!2489227))

(declare-fun m!2489229 () Bool)

(assert (=> b!2045370 m!2489229))

(declare-fun m!2489231 () Bool)

(assert (=> b!2045411 m!2489231))

(declare-fun m!2489233 () Bool)

(assert (=> b!2045411 m!2489233))

(declare-fun m!2489235 () Bool)

(assert (=> b!2045411 m!2489235))

(declare-fun m!2489237 () Bool)

(assert (=> b!2045411 m!2489237))

(declare-fun m!2489239 () Bool)

(assert (=> b!2045411 m!2489239))

(declare-fun m!2489241 () Bool)

(assert (=> b!2045367 m!2489241))

(declare-fun m!2489243 () Bool)

(assert (=> b!2045401 m!2489243))

(declare-fun m!2489245 () Bool)

(assert (=> b!2045401 m!2489245))

(declare-fun m!2489247 () Bool)

(assert (=> b!2045398 m!2489247))

(declare-fun m!2489249 () Bool)

(assert (=> b!2045398 m!2489249))

(declare-fun m!2489251 () Bool)

(assert (=> b!2045375 m!2489251))

(declare-fun m!2489253 () Bool)

(assert (=> b!2045375 m!2489253))

(declare-fun m!2489255 () Bool)

(assert (=> b!2045400 m!2489255))

(declare-fun m!2489257 () Bool)

(assert (=> mapNonEmpty!9337 m!2489257))

(declare-fun m!2489259 () Bool)

(assert (=> b!2045415 m!2489259))

(declare-fun m!2489261 () Bool)

(assert (=> b!2045368 m!2489261))

(declare-fun m!2489263 () Bool)

(assert (=> b!2045368 m!2489263))

(declare-fun m!2489265 () Bool)

(assert (=> bm!125306 m!2489265))

(declare-fun m!2489267 () Bool)

(assert (=> b!2045409 m!2489267))

(declare-fun m!2489269 () Bool)

(assert (=> b!2045409 m!2489269))

(declare-fun m!2489271 () Bool)

(assert (=> mapNonEmpty!9335 m!2489271))

(declare-fun m!2489273 () Bool)

(assert (=> mapNonEmpty!9334 m!2489273))

(declare-fun m!2489275 () Bool)

(assert (=> b!2045377 m!2489275))

(assert (=> b!2045377 m!2489275))

(declare-fun m!2489277 () Bool)

(assert (=> b!2045377 m!2489277))

(declare-fun m!2489279 () Bool)

(assert (=> b!2045397 m!2489279))

(declare-fun m!2489281 () Bool)

(assert (=> b!2045397 m!2489281))

(check-sat (not b!2045386) (not b_next!57951) (not b!2045401) b_and!163165 (not b_next!57933) (not b!2045380) (not start!201492) (not mapNonEmpty!9336) (not b!2045369) (not b!2045391) (not b!2045372) (not b_next!57947) (not b!2045407) (not b!2045423) (not mapNonEmpty!9335) (not b_next!57949) (not b!2045367) b_and!163183 (not b!2045408) (not b!2045416) (not b_next!57945) (not b!2045399) (not b_next!57935) (not b!2045387) (not b!2045409) (not b!2045417) (not mapNonEmpty!9337) (not b!2045397) (not b!2045418) (not b!2045368) (not b!2045377) (not b!2045403) (not b!2045394) (not b_next!57937) (not bm!125306) (not b!2045406) b_and!163177 (not b!2045398) (not b_next!57941) (not b_next!57931) (not mapNonEmpty!9334) (not b_next!57939) b_and!163179 b_and!163171 (not b!2045400) (not b!2045370) b_and!163175 (not b_next!57943) (not b!2045405) b_and!163169 (not b!2045375) (not b!2045411) (not b!2045390) (not b!2045395) b_and!163181 b_and!163187 b_and!163167 (not b_next!57929) b_and!163173 (not b!2045414) b_and!163185 (not b!2045415))
(check-sat (not b_next!57947) (not b_next!57949) b_and!163183 (not b_next!57945) (not b_next!57935) (not b_next!57937) b_and!163177 b_and!163171 (not b_next!57951) b_and!163165 b_and!163169 b_and!163181 (not b_next!57933) b_and!163185 (not b_next!57941) (not b_next!57931) (not b_next!57939) b_and!163179 b_and!163175 (not b_next!57943) b_and!163187 b_and!163167 (not b_next!57929) b_and!163173)
(get-model)

(declare-fun d!625664 () Bool)

(declare-fun c!331067 () Bool)

(assert (=> d!625664 (= c!331067 ((_ is Node!7525) (c!331064 acc!382)))))

(declare-fun e!1292291 () Bool)

(assert (=> d!625664 (= (inv!29821 (c!331064 acc!382)) e!1292291)))

(declare-fun b!2045430 () Bool)

(declare-fun inv!29822 (Conc!7525) Bool)

(assert (=> b!2045430 (= e!1292291 (inv!29822 (c!331064 acc!382)))))

(declare-fun b!2045431 () Bool)

(declare-fun e!1292292 () Bool)

(assert (=> b!2045431 (= e!1292291 e!1292292)))

(declare-fun res!896012 () Bool)

(assert (=> b!2045431 (= res!896012 (not ((_ is Leaf!11019) (c!331064 acc!382))))))

(assert (=> b!2045431 (=> res!896012 e!1292292)))

(declare-fun b!2045432 () Bool)

(declare-fun inv!29823 (Conc!7525) Bool)

(assert (=> b!2045432 (= e!1292292 (inv!29823 (c!331064 acc!382)))))

(assert (= (and d!625664 c!331067) b!2045430))

(assert (= (and d!625664 (not c!331067)) b!2045431))

(assert (= (and b!2045431 (not res!896012)) b!2045432))

(declare-fun m!2489283 () Bool)

(assert (=> b!2045430 m!2489283))

(declare-fun m!2489285 () Bool)

(assert (=> b!2045432 m!2489285))

(assert (=> b!2045416 d!625664))

(declare-fun d!625666 () Bool)

(declare-fun isBalanced!2364 (Conc!7524) Bool)

(assert (=> d!625666 (= (inv!29817 input!986) (isBalanced!2364 (c!331063 input!986)))))

(declare-fun bs!421958 () Bool)

(assert (= bs!421958 d!625666))

(declare-fun m!2489287 () Bool)

(assert (=> bs!421958 m!2489287))

(assert (=> start!201492 d!625666))

(declare-fun d!625668 () Bool)

(declare-fun res!896015 () Bool)

(declare-fun e!1292295 () Bool)

(assert (=> d!625668 (=> (not res!896015) (not e!1292295))))

(assert (=> d!625668 (= res!896015 ((_ is HashMap!1934) (cache!2315 cacheUp!562)))))

(assert (=> d!625668 (= (inv!29815 cacheUp!562) e!1292295)))

(declare-fun b!2045435 () Bool)

(declare-fun validCacheMapUp!189 (MutableMap!1934) Bool)

(assert (=> b!2045435 (= e!1292295 (validCacheMapUp!189 (cache!2315 cacheUp!562)))))

(assert (= (and d!625668 res!896015) b!2045435))

(declare-fun m!2489289 () Bool)

(assert (=> b!2045435 m!2489289))

(assert (=> start!201492 d!625668))

(declare-fun d!625670 () Bool)

(declare-fun isBalanced!2365 (Conc!7525) Bool)

(assert (=> d!625670 (= (inv!29818 acc!382) (isBalanced!2365 (c!331064 acc!382)))))

(declare-fun bs!421959 () Bool)

(assert (= bs!421959 d!625670))

(declare-fun m!2489291 () Bool)

(assert (=> bs!421959 m!2489291))

(assert (=> start!201492 d!625670))

(declare-fun d!625672 () Bool)

(declare-fun res!896018 () Bool)

(declare-fun e!1292298 () Bool)

(assert (=> d!625672 (=> (not res!896018) (not e!1292298))))

(assert (=> d!625672 (= res!896018 ((_ is HashMap!1935) (cache!2316 cacheDown!575)))))

(assert (=> d!625672 (= (inv!29816 cacheDown!575) e!1292298)))

(declare-fun b!2045438 () Bool)

(declare-fun validCacheMapDown!187 (MutableMap!1935) Bool)

(assert (=> b!2045438 (= e!1292298 (validCacheMapDown!187 (cache!2316 cacheDown!575)))))

(assert (= (and d!625672 res!896018) b!2045438))

(declare-fun m!2489293 () Bool)

(assert (=> b!2045438 m!2489293))

(assert (=> start!201492 d!625672))

(declare-fun d!625674 () Bool)

(assert (=> d!625674 (= (inv!29817 totalInput!418) (isBalanced!2364 (c!331063 totalInput!418)))))

(declare-fun bs!421960 () Bool)

(assert (= bs!421960 d!625674))

(declare-fun m!2489295 () Bool)

(assert (=> bs!421960 m!2489295))

(assert (=> start!201492 d!625674))

(declare-fun d!625676 () Bool)

(assert (=> d!625676 (= (inv!29817 treated!60) (isBalanced!2364 (c!331063 treated!60)))))

(declare-fun bs!421961 () Bool)

(assert (= bs!421961 d!625676))

(declare-fun m!2489297 () Bool)

(assert (=> bs!421961 m!2489297))

(assert (=> start!201492 d!625676))

(declare-fun d!625678 () Bool)

(declare-fun res!896023 () Bool)

(declare-fun e!1292301 () Bool)

(assert (=> d!625678 (=> (not res!896023) (not e!1292301))))

(assert (=> d!625678 (= res!896023 (not (isEmpty!13982 (originalCharacters!4830 (_1!12103 (v!27148 (_1!12106 err!3153)))))))))

(assert (=> d!625678 (= (inv!29819 (_1!12103 (v!27148 (_1!12106 err!3153)))) e!1292301)))

(declare-fun b!2045443 () Bool)

(declare-fun res!896024 () Bool)

(assert (=> b!2045443 (=> (not res!896024) (not e!1292301))))

(declare-fun dynLambda!11116 (Int TokenValue!4161) BalanceConc!14810)

(assert (=> b!2045443 (= res!896024 (= (originalCharacters!4830 (_1!12103 (v!27148 (_1!12106 err!3153)))) (list!9200 (dynLambda!11116 (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))))))))

(declare-fun b!2045444 () Bool)

(declare-fun size!17563 (List!22550) Int)

(assert (=> b!2045444 (= e!1292301 (= (size!17561 (_1!12103 (v!27148 (_1!12106 err!3153)))) (size!17563 (originalCharacters!4830 (_1!12103 (v!27148 (_1!12106 err!3153)))))))))

(assert (= (and d!625678 res!896023) b!2045443))

(assert (= (and b!2045443 res!896024) b!2045444))

(declare-fun b_lambda!69057 () Bool)

(assert (=> (not b_lambda!69057) (not b!2045443)))

(declare-fun t!191669 () Bool)

(declare-fun tb!128981 () Bool)

(assert (=> (and b!2045379 (= (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) t!191669) tb!128981))

(declare-fun b!2045449 () Bool)

(declare-fun e!1292304 () Bool)

(declare-fun tp!608578 () Bool)

(assert (=> b!2045449 (= e!1292304 (and (inv!29814 (c!331063 (dynLambda!11116 (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))))) tp!608578))))

(declare-fun result!154404 () Bool)

(assert (=> tb!128981 (= result!154404 (and (inv!29817 (dynLambda!11116 (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153)))))) e!1292304))))

(assert (= tb!128981 b!2045449))

(declare-fun m!2489299 () Bool)

(assert (=> b!2045449 m!2489299))

(declare-fun m!2489301 () Bool)

(assert (=> tb!128981 m!2489301))

(assert (=> b!2045443 t!191669))

(declare-fun b_and!163189 () Bool)

(assert (= b_and!163169 (and (=> t!191669 result!154404) b_and!163189)))

(declare-fun t!191671 () Bool)

(declare-fun tb!128983 () Bool)

(assert (=> (and b!2045413 (= (toChars!5567 (transformation!4025 (h!27869 rules!1563))) (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) t!191671) tb!128983))

(declare-fun result!154408 () Bool)

(assert (= result!154408 result!154404))

(assert (=> b!2045443 t!191671))

(declare-fun b_and!163191 () Bool)

(assert (= b_and!163177 (and (=> t!191671 result!154408) b_and!163191)))

(declare-fun m!2489303 () Bool)

(assert (=> d!625678 m!2489303))

(declare-fun m!2489305 () Bool)

(assert (=> b!2045443 m!2489305))

(assert (=> b!2045443 m!2489305))

(declare-fun m!2489307 () Bool)

(assert (=> b!2045443 m!2489307))

(declare-fun m!2489309 () Bool)

(assert (=> b!2045444 m!2489309))

(assert (=> b!2045395 d!625678))

(declare-fun d!625680 () Bool)

(assert (=> d!625680 (= (inv!29817 (_2!12103 (v!27148 (_1!12106 err!3153)))) (isBalanced!2364 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153))))))))

(declare-fun bs!421962 () Bool)

(assert (= bs!421962 d!625680))

(declare-fun m!2489311 () Bool)

(assert (=> bs!421962 m!2489311))

(assert (=> b!2045395 d!625680))

(declare-fun b!2045458 () Bool)

(declare-fun e!1292310 () tuple3!2096)

(declare-fun lt!766968 () tuple3!2096)

(declare-fun lt!766967 () tuple3!2096)

(assert (=> b!2045458 (= e!1292310 (tuple3!2097 (ite (and ((_ is None!4704) (_1!12106 lt!766968)) ((_ is None!4704) (_1!12106 lt!766967))) None!4704 (ite ((_ is None!4704) (_1!12106 lt!766967)) (_1!12106 lt!766968) (ite ((_ is None!4704) (_1!12106 lt!766968)) (_1!12106 lt!766967) (ite (>= (size!17561 (_1!12103 (v!27148 (_1!12106 lt!766968)))) (size!17561 (_1!12103 (v!27148 (_1!12106 lt!766967))))) (_1!12106 lt!766968) (_1!12106 lt!766967))))) (_2!12106 lt!766967) (_3!1512 lt!766967)))))

(declare-fun call!125314 () tuple3!2096)

(assert (=> b!2045458 (= lt!766968 call!125314)))

(assert (=> b!2045458 (= lt!766967 (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 (t!191666 (t!191666 rules!1563)) input!986 totalInput!418 (_2!12106 lt!766968) (_3!1512 lt!766968)))))

(declare-fun bm!125309 () Bool)

(assert (=> bm!125309 (= call!125314 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!7 thiss!12889 (h!27869 (t!191666 rules!1563)) input!986 totalInput!418 (_2!12106 lt!766937) (_3!1512 lt!766937)))))

(declare-fun b!2045459 () Bool)

(declare-fun res!896030 () Bool)

(declare-fun e!1292309 () Bool)

(assert (=> b!2045459 (=> (not res!896030) (not e!1292309))))

(declare-fun lt!766971 () tuple3!2096)

(assert (=> b!2045459 (= res!896030 (valid!1609 (_2!12106 lt!766971)))))

(declare-fun b!2045460 () Bool)

(declare-fun lt!766969 () tuple3!2096)

(assert (=> b!2045460 (= e!1292310 (tuple3!2097 (_1!12106 lt!766969) (_2!12106 lt!766969) (_3!1512 lt!766969)))))

(assert (=> b!2045460 (= lt!766969 call!125314)))

(declare-fun d!625682 () Bool)

(assert (=> d!625682 e!1292309))

(declare-fun res!896029 () Bool)

(assert (=> d!625682 (=> (not res!896029) (not e!1292309))))

(declare-fun maxPrefixZipperSequenceV2!318 (LexerInterface!3636 List!22552 BalanceConc!14810 BalanceConc!14810) Option!4705)

(assert (=> d!625682 (= res!896029 (= (_1!12106 lt!766971) (maxPrefixZipperSequenceV2!318 thiss!12889 (t!191666 rules!1563) input!986 totalInput!418)))))

(assert (=> d!625682 (= lt!766971 e!1292310)))

(declare-fun c!331070 () Bool)

(assert (=> d!625682 (= c!331070 (and ((_ is Cons!22468) (t!191666 rules!1563)) ((_ is Nil!22468) (t!191666 (t!191666 rules!1563)))))))

(declare-fun lt!766972 () Unit!37043)

(declare-fun lt!766973 () Unit!37043)

(assert (=> d!625682 (= lt!766972 lt!766973)))

(declare-fun lt!766970 () List!22550)

(declare-fun lt!766966 () List!22550)

(assert (=> d!625682 (isPrefix!1996 lt!766970 lt!766966)))

(assert (=> d!625682 (= lt!766973 (lemmaIsPrefixRefl!1314 lt!766970 lt!766966))))

(assert (=> d!625682 (= lt!766966 (list!9200 input!986))))

(assert (=> d!625682 (= lt!766970 (list!9200 input!986))))

(assert (=> d!625682 (rulesValidInductive!1400 thiss!12889 (t!191666 rules!1563))))

(assert (=> d!625682 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 (t!191666 rules!1563) input!986 totalInput!418 (_2!12106 lt!766937) (_3!1512 lt!766937)) lt!766971)))

(declare-fun b!2045461 () Bool)

(assert (=> b!2045461 (= e!1292309 (valid!1610 (_3!1512 lt!766971)))))

(assert (= (and d!625682 c!331070) b!2045460))

(assert (= (and d!625682 (not c!331070)) b!2045458))

(assert (= (or b!2045460 b!2045458) bm!125309))

(assert (= (and d!625682 res!896029) b!2045459))

(assert (= (and b!2045459 res!896030) b!2045461))

(declare-fun m!2489313 () Bool)

(assert (=> b!2045461 m!2489313))

(declare-fun m!2489315 () Bool)

(assert (=> d!625682 m!2489315))

(declare-fun m!2489317 () Bool)

(assert (=> d!625682 m!2489317))

(assert (=> d!625682 m!2489179))

(declare-fun m!2489319 () Bool)

(assert (=> d!625682 m!2489319))

(declare-fun m!2489321 () Bool)

(assert (=> d!625682 m!2489321))

(declare-fun m!2489323 () Bool)

(assert (=> bm!125309 m!2489323))

(declare-fun m!2489325 () Bool)

(assert (=> b!2045459 m!2489325))

(declare-fun m!2489327 () Bool)

(assert (=> b!2045458 m!2489327))

(assert (=> b!2045415 d!625682))

(declare-fun d!625684 () Bool)

(declare-fun c!331073 () Bool)

(assert (=> d!625684 (= c!331073 ((_ is Node!7524) (c!331063 treated!60)))))

(declare-fun e!1292315 () Bool)

(assert (=> d!625684 (= (inv!29814 (c!331063 treated!60)) e!1292315)))

(declare-fun b!2045468 () Bool)

(declare-fun inv!29824 (Conc!7524) Bool)

(assert (=> b!2045468 (= e!1292315 (inv!29824 (c!331063 treated!60)))))

(declare-fun b!2045469 () Bool)

(declare-fun e!1292316 () Bool)

(assert (=> b!2045469 (= e!1292315 e!1292316)))

(declare-fun res!896033 () Bool)

(assert (=> b!2045469 (= res!896033 (not ((_ is Leaf!11018) (c!331063 treated!60))))))

(assert (=> b!2045469 (=> res!896033 e!1292316)))

(declare-fun b!2045470 () Bool)

(declare-fun inv!29825 (Conc!7524) Bool)

(assert (=> b!2045470 (= e!1292316 (inv!29825 (c!331063 treated!60)))))

(assert (= (and d!625684 c!331073) b!2045468))

(assert (= (and d!625684 (not c!331073)) b!2045469))

(assert (= (and b!2045469 (not res!896033)) b!2045470))

(declare-fun m!2489329 () Bool)

(assert (=> b!2045468 m!2489329))

(declare-fun m!2489331 () Bool)

(assert (=> b!2045470 m!2489331))

(assert (=> b!2045394 d!625684))

(declare-fun d!625686 () Bool)

(assert (=> d!625686 (= (valid!1610 cacheDown!575) (validCacheMapDown!187 (cache!2316 cacheDown!575)))))

(declare-fun bs!421963 () Bool)

(assert (= bs!421963 d!625686))

(assert (=> bs!421963 m!2489293))

(assert (=> b!2045414 d!625686))

(declare-fun d!625688 () Bool)

(assert (=> d!625688 (= (isEmpty!13982 (list!9200 (_2!12107 lt!766934))) ((_ is Nil!22466) (list!9200 (_2!12107 lt!766934))))))

(assert (=> b!2045377 d!625688))

(declare-fun d!625690 () Bool)

(declare-fun list!9201 (Conc!7524) List!22550)

(assert (=> d!625690 (= (list!9200 (_2!12107 lt!766934)) (list!9201 (c!331063 (_2!12107 lt!766934))))))

(declare-fun bs!421964 () Bool)

(assert (= bs!421964 d!625690))

(declare-fun m!2489333 () Bool)

(assert (=> bs!421964 m!2489333))

(assert (=> b!2045377 d!625690))

(declare-fun d!625692 () Bool)

(assert (=> d!625692 (= (array_inv!2220 (_keys!2317 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) (bvsge (size!17560 (_keys!2317 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045391 d!625692))

(declare-fun d!625694 () Bool)

(assert (=> d!625694 (= (array_inv!2221 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) (bvsge (size!17559 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045391 d!625694))

(declare-fun d!625696 () Bool)

(declare-fun e!1292325 () Bool)

(assert (=> d!625696 e!1292325))

(declare-fun res!896043 () Bool)

(assert (=> d!625696 (=> res!896043 e!1292325)))

(declare-fun lt!766976 () Bool)

(assert (=> d!625696 (= res!896043 (not lt!766976))))

(declare-fun e!1292323 () Bool)

(assert (=> d!625696 (= lt!766976 e!1292323)))

(declare-fun res!896042 () Bool)

(assert (=> d!625696 (=> res!896042 e!1292323)))

(assert (=> d!625696 (= res!896042 ((_ is Nil!22466) lt!766944))))

(assert (=> d!625696 (= (isPrefix!1996 lt!766944 lt!766944) lt!766976)))

(declare-fun b!2045479 () Bool)

(declare-fun e!1292324 () Bool)

(assert (=> b!2045479 (= e!1292323 e!1292324)))

(declare-fun res!896045 () Bool)

(assert (=> b!2045479 (=> (not res!896045) (not e!1292324))))

(assert (=> b!2045479 (= res!896045 (not ((_ is Nil!22466) lt!766944)))))

(declare-fun b!2045481 () Bool)

(declare-fun tail!3067 (List!22550) List!22550)

(assert (=> b!2045481 (= e!1292324 (isPrefix!1996 (tail!3067 lt!766944) (tail!3067 lt!766944)))))

(declare-fun b!2045482 () Bool)

(assert (=> b!2045482 (= e!1292325 (>= (size!17563 lt!766944) (size!17563 lt!766944)))))

(declare-fun b!2045480 () Bool)

(declare-fun res!896044 () Bool)

(assert (=> b!2045480 (=> (not res!896044) (not e!1292324))))

(declare-fun head!4595 (List!22550) C!11052)

(assert (=> b!2045480 (= res!896044 (= (head!4595 lt!766944) (head!4595 lt!766944)))))

(assert (= (and d!625696 (not res!896042)) b!2045479))

(assert (= (and b!2045479 res!896045) b!2045480))

(assert (= (and b!2045480 res!896044) b!2045481))

(assert (= (and d!625696 (not res!896043)) b!2045482))

(declare-fun m!2489335 () Bool)

(assert (=> b!2045481 m!2489335))

(assert (=> b!2045481 m!2489335))

(assert (=> b!2045481 m!2489335))

(assert (=> b!2045481 m!2489335))

(declare-fun m!2489337 () Bool)

(assert (=> b!2045481 m!2489337))

(declare-fun m!2489339 () Bool)

(assert (=> b!2045482 m!2489339))

(assert (=> b!2045482 m!2489339))

(declare-fun m!2489341 () Bool)

(assert (=> b!2045480 m!2489341))

(assert (=> b!2045480 m!2489341))

(assert (=> b!2045411 d!625696))

(declare-fun d!625698 () Bool)

(assert (=> d!625698 true))

(declare-fun lt!766979 () Bool)

(declare-fun lambda!76701 () Int)

(declare-fun forall!4769 (List!22552 Int) Bool)

(assert (=> d!625698 (= lt!766979 (forall!4769 rules!1563 lambda!76701))))

(declare-fun e!1292330 () Bool)

(assert (=> d!625698 (= lt!766979 e!1292330)))

(declare-fun res!896050 () Bool)

(assert (=> d!625698 (=> res!896050 e!1292330)))

(assert (=> d!625698 (= res!896050 (not ((_ is Cons!22468) rules!1563)))))

(assert (=> d!625698 (= (rulesValidInductive!1400 thiss!12889 rules!1563) lt!766979)))

(declare-fun b!2045487 () Bool)

(declare-fun e!1292331 () Bool)

(assert (=> b!2045487 (= e!1292330 e!1292331)))

(declare-fun res!896051 () Bool)

(assert (=> b!2045487 (=> (not res!896051) (not e!1292331))))

(declare-fun ruleValid!1231 (LexerInterface!3636 Rule!7850) Bool)

(assert (=> b!2045487 (= res!896051 (ruleValid!1231 thiss!12889 (h!27869 rules!1563)))))

(declare-fun b!2045488 () Bool)

(assert (=> b!2045488 (= e!1292331 (rulesValidInductive!1400 thiss!12889 (t!191666 rules!1563)))))

(assert (= (and d!625698 (not res!896050)) b!2045487))

(assert (= (and b!2045487 res!896051) b!2045488))

(declare-fun m!2489343 () Bool)

(assert (=> d!625698 m!2489343))

(declare-fun m!2489345 () Bool)

(assert (=> b!2045487 m!2489345))

(assert (=> b!2045488 m!2489321))

(assert (=> b!2045411 d!625698))

(declare-fun b!2045491 () Bool)

(declare-fun e!1292333 () tuple3!2096)

(declare-fun lt!766982 () tuple3!2096)

(declare-fun lt!766981 () tuple3!2096)

(assert (=> b!2045491 (= e!1292333 (tuple3!2097 (ite (and ((_ is None!4704) (_1!12106 lt!766982)) ((_ is None!4704) (_1!12106 lt!766981))) None!4704 (ite ((_ is None!4704) (_1!12106 lt!766981)) (_1!12106 lt!766982) (ite ((_ is None!4704) (_1!12106 lt!766982)) (_1!12106 lt!766981) (ite (>= (size!17561 (_1!12103 (v!27148 (_1!12106 lt!766982)))) (size!17561 (_1!12103 (v!27148 (_1!12106 lt!766981))))) (_1!12106 lt!766982) (_1!12106 lt!766981))))) (_2!12106 lt!766981) (_3!1512 lt!766981)))))

(declare-fun call!125315 () tuple3!2096)

(assert (=> b!2045491 (= lt!766982 call!125315)))

(assert (=> b!2045491 (= lt!766981 (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 (t!191666 rules!1563) input!986 totalInput!418 (_2!12106 lt!766982) (_3!1512 lt!766982)))))

(declare-fun bm!125310 () Bool)

(assert (=> bm!125310 (= call!125315 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!7 thiss!12889 (h!27869 rules!1563) input!986 totalInput!418 (_2!12106 lt!766949) (_3!1512 lt!766949)))))

(declare-fun b!2045492 () Bool)

(declare-fun res!896053 () Bool)

(declare-fun e!1292332 () Bool)

(assert (=> b!2045492 (=> (not res!896053) (not e!1292332))))

(declare-fun lt!766985 () tuple3!2096)

(assert (=> b!2045492 (= res!896053 (valid!1609 (_2!12106 lt!766985)))))

(declare-fun b!2045493 () Bool)

(declare-fun lt!766983 () tuple3!2096)

(assert (=> b!2045493 (= e!1292333 (tuple3!2097 (_1!12106 lt!766983) (_2!12106 lt!766983) (_3!1512 lt!766983)))))

(assert (=> b!2045493 (= lt!766983 call!125315)))

(declare-fun d!625700 () Bool)

(assert (=> d!625700 e!1292332))

(declare-fun res!896052 () Bool)

(assert (=> d!625700 (=> (not res!896052) (not e!1292332))))

(assert (=> d!625700 (= res!896052 (= (_1!12106 lt!766985) (maxPrefixZipperSequenceV2!318 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625700 (= lt!766985 e!1292333)))

(declare-fun c!331074 () Bool)

(assert (=> d!625700 (= c!331074 (and ((_ is Cons!22468) rules!1563) ((_ is Nil!22468) (t!191666 rules!1563))))))

(declare-fun lt!766986 () Unit!37043)

(declare-fun lt!766987 () Unit!37043)

(assert (=> d!625700 (= lt!766986 lt!766987)))

(declare-fun lt!766984 () List!22550)

(declare-fun lt!766980 () List!22550)

(assert (=> d!625700 (isPrefix!1996 lt!766984 lt!766980)))

(assert (=> d!625700 (= lt!766987 (lemmaIsPrefixRefl!1314 lt!766984 lt!766980))))

(assert (=> d!625700 (= lt!766980 (list!9200 input!986))))

(assert (=> d!625700 (= lt!766984 (list!9200 input!986))))

(assert (=> d!625700 (rulesValidInductive!1400 thiss!12889 rules!1563)))

(assert (=> d!625700 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 rules!1563 input!986 totalInput!418 (_2!12106 lt!766949) (_3!1512 lt!766949)) lt!766985)))

(declare-fun b!2045494 () Bool)

(assert (=> b!2045494 (= e!1292332 (valid!1610 (_3!1512 lt!766985)))))

(assert (= (and d!625700 c!331074) b!2045493))

(assert (= (and d!625700 (not c!331074)) b!2045491))

(assert (= (or b!2045493 b!2045491) bm!125310))

(assert (= (and d!625700 res!896052) b!2045492))

(assert (= (and b!2045492 res!896053) b!2045494))

(declare-fun m!2489347 () Bool)

(assert (=> b!2045494 m!2489347))

(declare-fun m!2489349 () Bool)

(assert (=> d!625700 m!2489349))

(declare-fun m!2489351 () Bool)

(assert (=> d!625700 m!2489351))

(assert (=> d!625700 m!2489179))

(declare-fun m!2489353 () Bool)

(assert (=> d!625700 m!2489353))

(assert (=> d!625700 m!2489233))

(assert (=> bm!125310 m!2489265))

(declare-fun m!2489355 () Bool)

(assert (=> b!2045492 m!2489355))

(declare-fun m!2489357 () Bool)

(assert (=> b!2045491 m!2489357))

(assert (=> b!2045411 d!625700))

(declare-fun b!2045509 () Bool)

(declare-fun e!1292343 () Bool)

(declare-fun e!1292342 () Bool)

(assert (=> b!2045509 (= e!1292343 e!1292342)))

(declare-fun res!896061 () Bool)

(declare-fun lt!766996 () tuple2!21188)

(declare-fun size!17564 (BalanceConc!14810) Int)

(assert (=> b!2045509 (= res!896061 (< (size!17564 (_2!12107 lt!766996)) (size!17564 (_2!12103 (v!27148 (_1!12106 lt!766949))))))))

(assert (=> b!2045509 (=> (not res!896061) (not e!1292342))))

(declare-fun b!2045510 () Bool)

(declare-fun e!1292345 () tuple2!21188)

(assert (=> b!2045510 (= e!1292345 (tuple2!21189 (BalanceConc!14813 Empty!7525) (_2!12103 (v!27148 (_1!12106 lt!766949)))))))

(declare-fun b!2045511 () Bool)

(assert (=> b!2045511 (= e!1292343 (= (list!9200 (_2!12107 lt!766996)) (list!9200 (_2!12103 (v!27148 (_1!12106 lt!766949))))))))

(declare-fun d!625702 () Bool)

(declare-fun e!1292344 () Bool)

(assert (=> d!625702 e!1292344))

(declare-fun res!896060 () Bool)

(assert (=> d!625702 (=> (not res!896060) (not e!1292344))))

(assert (=> d!625702 (= res!896060 e!1292343)))

(declare-fun c!331081 () Bool)

(declare-fun size!17565 (BalanceConc!14812) Int)

(assert (=> d!625702 (= c!331081 (> (size!17565 (_1!12107 lt!766996)) 0))))

(assert (=> d!625702 (= lt!766996 e!1292345)))

(declare-fun c!331080 () Bool)

(declare-fun lt!766995 () Option!4705)

(assert (=> d!625702 (= c!331080 ((_ is Some!4704) lt!766995))))

(declare-fun maxPrefixZipperSequence!791 (LexerInterface!3636 List!22552 BalanceConc!14810) Option!4705)

(assert (=> d!625702 (= lt!766995 (maxPrefixZipperSequence!791 thiss!12889 rules!1563 (_2!12103 (v!27148 (_1!12106 lt!766949)))))))

(assert (=> d!625702 (= (lexRec!441 thiss!12889 rules!1563 (_2!12103 (v!27148 (_1!12106 lt!766949)))) lt!766996)))

(declare-fun b!2045512 () Bool)

(declare-fun isEmpty!13984 (BalanceConc!14812) Bool)

(assert (=> b!2045512 (= e!1292342 (not (isEmpty!13984 (_1!12107 lt!766996))))))

(declare-fun b!2045513 () Bool)

(declare-fun lt!766994 () tuple2!21188)

(declare-fun prepend!913 (BalanceConc!14812 Token!7598) BalanceConc!14812)

(assert (=> b!2045513 (= e!1292345 (tuple2!21189 (prepend!913 (_1!12107 lt!766994) (_1!12103 (v!27148 lt!766995))) (_2!12107 lt!766994)))))

(assert (=> b!2045513 (= lt!766994 (lexRec!441 thiss!12889 rules!1563 (_2!12103 (v!27148 lt!766995))))))

(declare-fun b!2045514 () Bool)

(declare-fun res!896062 () Bool)

(assert (=> b!2045514 (=> (not res!896062) (not e!1292344))))

(declare-datatypes ((tuple2!21190 0))(
  ( (tuple2!21191 (_1!12108 List!22553) (_2!12108 List!22550)) )
))
(declare-fun lexList!991 (LexerInterface!3636 List!22552 List!22550) tuple2!21190)

(assert (=> b!2045514 (= res!896062 (= (list!9199 (_1!12107 lt!766996)) (_1!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 (_2!12103 (v!27148 (_1!12106 lt!766949))))))))))

(declare-fun b!2045515 () Bool)

(assert (=> b!2045515 (= e!1292344 (= (list!9200 (_2!12107 lt!766996)) (_2!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 (_2!12103 (v!27148 (_1!12106 lt!766949))))))))))

(assert (= (and d!625702 c!331080) b!2045513))

(assert (= (and d!625702 (not c!331080)) b!2045510))

(assert (= (and d!625702 c!331081) b!2045509))

(assert (= (and d!625702 (not c!331081)) b!2045511))

(assert (= (and b!2045509 res!896061) b!2045512))

(assert (= (and d!625702 res!896060) b!2045514))

(assert (= (and b!2045514 res!896062) b!2045515))

(declare-fun m!2489359 () Bool)

(assert (=> b!2045512 m!2489359))

(declare-fun m!2489361 () Bool)

(assert (=> b!2045513 m!2489361))

(declare-fun m!2489363 () Bool)

(assert (=> b!2045513 m!2489363))

(declare-fun m!2489365 () Bool)

(assert (=> d!625702 m!2489365))

(declare-fun m!2489367 () Bool)

(assert (=> d!625702 m!2489367))

(declare-fun m!2489369 () Bool)

(assert (=> b!2045515 m!2489369))

(declare-fun m!2489371 () Bool)

(assert (=> b!2045515 m!2489371))

(assert (=> b!2045515 m!2489371))

(declare-fun m!2489373 () Bool)

(assert (=> b!2045515 m!2489373))

(assert (=> b!2045511 m!2489369))

(assert (=> b!2045511 m!2489371))

(declare-fun m!2489375 () Bool)

(assert (=> b!2045509 m!2489375))

(declare-fun m!2489377 () Bool)

(assert (=> b!2045509 m!2489377))

(declare-fun m!2489379 () Bool)

(assert (=> b!2045514 m!2489379))

(assert (=> b!2045514 m!2489371))

(assert (=> b!2045514 m!2489371))

(assert (=> b!2045514 m!2489373))

(assert (=> b!2045411 d!625702))

(declare-fun d!625704 () Bool)

(assert (=> d!625704 (isPrefix!1996 lt!766944 lt!766944)))

(declare-fun lt!766999 () Unit!37043)

(declare-fun choose!12464 (List!22550 List!22550) Unit!37043)

(assert (=> d!625704 (= lt!766999 (choose!12464 lt!766944 lt!766944))))

(assert (=> d!625704 (= (lemmaIsPrefixRefl!1314 lt!766944 lt!766944) lt!766999)))

(declare-fun bs!421965 () Bool)

(assert (= bs!421965 d!625704))

(assert (=> bs!421965 m!2489231))

(declare-fun m!2489381 () Bool)

(assert (=> bs!421965 m!2489381))

(assert (=> b!2045411 d!625704))

(declare-fun d!625706 () Bool)

(assert (=> d!625706 (= (list!9200 (_2!12107 lt!766947)) (list!9201 (c!331063 (_2!12107 lt!766947))))))

(declare-fun bs!421966 () Bool)

(assert (= bs!421966 d!625706))

(declare-fun m!2489383 () Bool)

(assert (=> bs!421966 m!2489383))

(assert (=> b!2045401 d!625706))

(declare-fun d!625708 () Bool)

(assert (=> d!625708 (= (list!9200 (_2!12107 lt!766946)) (list!9201 (c!331063 (_2!12107 lt!766946))))))

(declare-fun bs!421967 () Bool)

(assert (= bs!421967 d!625708))

(declare-fun m!2489385 () Bool)

(assert (=> bs!421967 m!2489385))

(assert (=> b!2045401 d!625708))

(declare-fun d!625710 () Bool)

(declare-fun c!331082 () Bool)

(assert (=> d!625710 (= c!331082 ((_ is Node!7524) (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153))))))))

(declare-fun e!1292346 () Bool)

(assert (=> d!625710 (= (inv!29814 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153))))) e!1292346)))

(declare-fun b!2045516 () Bool)

(assert (=> b!2045516 (= e!1292346 (inv!29824 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153))))))))

(declare-fun b!2045517 () Bool)

(declare-fun e!1292347 () Bool)

(assert (=> b!2045517 (= e!1292346 e!1292347)))

(declare-fun res!896063 () Bool)

(assert (=> b!2045517 (= res!896063 (not ((_ is Leaf!11018) (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153)))))))))

(assert (=> b!2045517 (=> res!896063 e!1292347)))

(declare-fun b!2045518 () Bool)

(assert (=> b!2045518 (= e!1292347 (inv!29825 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153))))))))

(assert (= (and d!625710 c!331082) b!2045516))

(assert (= (and d!625710 (not c!331082)) b!2045517))

(assert (= (and b!2045517 (not res!896063)) b!2045518))

(declare-fun m!2489387 () Bool)

(assert (=> b!2045516 m!2489387))

(declare-fun m!2489389 () Bool)

(assert (=> b!2045518 m!2489389))

(assert (=> b!2045400 d!625710))

(declare-fun d!625712 () Bool)

(assert (=> d!625712 (= (isEmpty!13983 rules!1563) ((_ is Nil!22468) rules!1563))))

(assert (=> b!2045399 d!625712))

(declare-fun d!625714 () Bool)

(declare-fun res!896066 () Bool)

(declare-fun e!1292350 () Bool)

(assert (=> d!625714 (=> (not res!896066) (not e!1292350))))

(declare-fun rulesValid!1506 (LexerInterface!3636 List!22552) Bool)

(assert (=> d!625714 (= res!896066 (rulesValid!1506 thiss!12889 rules!1563))))

(assert (=> d!625714 (= (rulesInvariant!3235 thiss!12889 rules!1563) e!1292350)))

(declare-fun b!2045521 () Bool)

(declare-datatypes ((List!22554 0))(
  ( (Nil!22470) (Cons!22470 (h!27871 String!25997) (t!191674 List!22554)) )
))
(declare-fun noDuplicateTag!1504 (LexerInterface!3636 List!22552 List!22554) Bool)

(assert (=> b!2045521 (= e!1292350 (noDuplicateTag!1504 thiss!12889 rules!1563 Nil!22470))))

(assert (= (and d!625714 res!896066) b!2045521))

(declare-fun m!2489391 () Bool)

(assert (=> d!625714 m!2489391))

(declare-fun m!2489393 () Bool)

(assert (=> b!2045521 m!2489393))

(assert (=> b!2045418 d!625714))

(declare-fun d!625716 () Bool)

(assert (=> d!625716 (= (inv!29812 (tag!4515 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (= (mod (str.len (value!126364 (tag!4515 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) 2) 0))))

(assert (=> b!2045398 d!625716))

(declare-fun d!625718 () Bool)

(declare-fun res!896069 () Bool)

(declare-fun e!1292353 () Bool)

(assert (=> d!625718 (=> (not res!896069) (not e!1292353))))

(declare-fun semiInverseModEq!1619 (Int Int) Bool)

(assert (=> d!625718 (= res!896069 (semiInverseModEq!1619 (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (toValue!5708 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))))))

(assert (=> d!625718 (= (inv!29820 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) e!1292353)))

(declare-fun b!2045524 () Bool)

(declare-fun equivClasses!1546 (Int Int) Bool)

(assert (=> b!2045524 (= e!1292353 (equivClasses!1546 (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))) (toValue!5708 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))))))

(assert (= (and d!625718 res!896069) b!2045524))

(declare-fun m!2489395 () Bool)

(assert (=> d!625718 m!2489395))

(declare-fun m!2489397 () Bool)

(assert (=> b!2045524 m!2489397))

(assert (=> b!2045398 d!625718))

(declare-fun b!2045525 () Bool)

(declare-fun e!1292355 () Bool)

(declare-fun e!1292354 () Bool)

(assert (=> b!2045525 (= e!1292355 e!1292354)))

(declare-fun res!896071 () Bool)

(declare-fun lt!767002 () tuple2!21188)

(assert (=> b!2045525 (= res!896071 (< (size!17564 (_2!12107 lt!767002)) (size!17564 totalInput!418)))))

(assert (=> b!2045525 (=> (not res!896071) (not e!1292354))))

(declare-fun b!2045526 () Bool)

(declare-fun e!1292357 () tuple2!21188)

(assert (=> b!2045526 (= e!1292357 (tuple2!21189 (BalanceConc!14813 Empty!7525) totalInput!418))))

(declare-fun b!2045527 () Bool)

(assert (=> b!2045527 (= e!1292355 (= (list!9200 (_2!12107 lt!767002)) (list!9200 totalInput!418)))))

(declare-fun d!625720 () Bool)

(declare-fun e!1292356 () Bool)

(assert (=> d!625720 e!1292356))

(declare-fun res!896070 () Bool)

(assert (=> d!625720 (=> (not res!896070) (not e!1292356))))

(assert (=> d!625720 (= res!896070 e!1292355)))

(declare-fun c!331084 () Bool)

(assert (=> d!625720 (= c!331084 (> (size!17565 (_1!12107 lt!767002)) 0))))

(assert (=> d!625720 (= lt!767002 e!1292357)))

(declare-fun c!331083 () Bool)

(declare-fun lt!767001 () Option!4705)

(assert (=> d!625720 (= c!331083 ((_ is Some!4704) lt!767001))))

(assert (=> d!625720 (= lt!767001 (maxPrefixZipperSequence!791 thiss!12889 rules!1563 totalInput!418))))

(assert (=> d!625720 (= (lexRec!441 thiss!12889 rules!1563 totalInput!418) lt!767002)))

(declare-fun b!2045528 () Bool)

(assert (=> b!2045528 (= e!1292354 (not (isEmpty!13984 (_1!12107 lt!767002))))))

(declare-fun b!2045529 () Bool)

(declare-fun lt!767000 () tuple2!21188)

(assert (=> b!2045529 (= e!1292357 (tuple2!21189 (prepend!913 (_1!12107 lt!767000) (_1!12103 (v!27148 lt!767001))) (_2!12107 lt!767000)))))

(assert (=> b!2045529 (= lt!767000 (lexRec!441 thiss!12889 rules!1563 (_2!12103 (v!27148 lt!767001))))))

(declare-fun b!2045530 () Bool)

(declare-fun res!896072 () Bool)

(assert (=> b!2045530 (=> (not res!896072) (not e!1292356))))

(assert (=> b!2045530 (= res!896072 (= (list!9199 (_1!12107 lt!767002)) (_1!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 totalInput!418)))))))

(declare-fun b!2045531 () Bool)

(assert (=> b!2045531 (= e!1292356 (= (list!9200 (_2!12107 lt!767002)) (_2!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 totalInput!418)))))))

(assert (= (and d!625720 c!331083) b!2045529))

(assert (= (and d!625720 (not c!331083)) b!2045526))

(assert (= (and d!625720 c!331084) b!2045525))

(assert (= (and d!625720 (not c!331084)) b!2045527))

(assert (= (and b!2045525 res!896071) b!2045528))

(assert (= (and d!625720 res!896070) b!2045530))

(assert (= (and b!2045530 res!896072) b!2045531))

(declare-fun m!2489399 () Bool)

(assert (=> b!2045528 m!2489399))

(declare-fun m!2489401 () Bool)

(assert (=> b!2045529 m!2489401))

(declare-fun m!2489403 () Bool)

(assert (=> b!2045529 m!2489403))

(declare-fun m!2489405 () Bool)

(assert (=> d!625720 m!2489405))

(declare-fun m!2489407 () Bool)

(assert (=> d!625720 m!2489407))

(declare-fun m!2489409 () Bool)

(assert (=> b!2045531 m!2489409))

(assert (=> b!2045531 m!2489177))

(assert (=> b!2045531 m!2489177))

(declare-fun m!2489411 () Bool)

(assert (=> b!2045531 m!2489411))

(assert (=> b!2045527 m!2489409))

(assert (=> b!2045527 m!2489177))

(declare-fun m!2489413 () Bool)

(assert (=> b!2045525 m!2489413))

(declare-fun m!2489415 () Bool)

(assert (=> b!2045525 m!2489415))

(declare-fun m!2489417 () Bool)

(assert (=> b!2045530 m!2489417))

(assert (=> b!2045530 m!2489177))

(assert (=> b!2045530 m!2489177))

(assert (=> b!2045530 m!2489411))

(assert (=> b!2045417 d!625720))

(declare-fun d!625722 () Bool)

(declare-fun e!1292360 () Bool)

(assert (=> d!625722 e!1292360))

(declare-fun res!896083 () Bool)

(assert (=> d!625722 (=> (not res!896083) (not e!1292360))))

(declare-fun appendAssocInst!552 (Conc!7525 Conc!7525) Bool)

(assert (=> d!625722 (= res!896083 (appendAssocInst!552 (c!331064 acc!382) (c!331064 (_1!12107 lt!766946))))))

(declare-fun lt!767005 () BalanceConc!14812)

(declare-fun ++!6101 (Conc!7525 Conc!7525) Conc!7525)

(assert (=> d!625722 (= lt!767005 (BalanceConc!14813 (++!6101 (c!331064 acc!382) (c!331064 (_1!12107 lt!766946)))))))

(assert (=> d!625722 (= (++!6100 acc!382 (_1!12107 lt!766946)) lt!767005)))

(declare-fun b!2045541 () Bool)

(declare-fun res!896082 () Bool)

(assert (=> b!2045541 (=> (not res!896082) (not e!1292360))))

(declare-fun height!1180 (Conc!7525) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2045541 (= res!896082 (<= (height!1180 (++!6101 (c!331064 acc!382) (c!331064 (_1!12107 lt!766946)))) (+ (max!0 (height!1180 (c!331064 acc!382)) (height!1180 (c!331064 (_1!12107 lt!766946)))) 1)))))

(declare-fun b!2045540 () Bool)

(declare-fun res!896081 () Bool)

(assert (=> b!2045540 (=> (not res!896081) (not e!1292360))))

(assert (=> b!2045540 (= res!896081 (isBalanced!2365 (++!6101 (c!331064 acc!382) (c!331064 (_1!12107 lt!766946)))))))

(declare-fun b!2045542 () Bool)

(declare-fun res!896084 () Bool)

(assert (=> b!2045542 (=> (not res!896084) (not e!1292360))))

(assert (=> b!2045542 (= res!896084 (>= (height!1180 (++!6101 (c!331064 acc!382) (c!331064 (_1!12107 lt!766946)))) (max!0 (height!1180 (c!331064 acc!382)) (height!1180 (c!331064 (_1!12107 lt!766946))))))))

(declare-fun b!2045543 () Bool)

(declare-fun ++!6102 (List!22553 List!22553) List!22553)

(assert (=> b!2045543 (= e!1292360 (= (list!9199 lt!767005) (++!6102 (list!9199 acc!382) (list!9199 (_1!12107 lt!766946)))))))

(assert (= (and d!625722 res!896083) b!2045540))

(assert (= (and b!2045540 res!896081) b!2045541))

(assert (= (and b!2045541 res!896082) b!2045542))

(assert (= (and b!2045542 res!896084) b!2045543))

(declare-fun m!2489419 () Bool)

(assert (=> b!2045543 m!2489419))

(assert (=> b!2045543 m!2489171))

(declare-fun m!2489421 () Bool)

(assert (=> b!2045543 m!2489421))

(assert (=> b!2045543 m!2489171))

(assert (=> b!2045543 m!2489421))

(declare-fun m!2489423 () Bool)

(assert (=> b!2045543 m!2489423))

(declare-fun m!2489425 () Bool)

(assert (=> b!2045540 m!2489425))

(assert (=> b!2045540 m!2489425))

(declare-fun m!2489427 () Bool)

(assert (=> b!2045540 m!2489427))

(declare-fun m!2489429 () Bool)

(assert (=> b!2045541 m!2489429))

(assert (=> b!2045541 m!2489425))

(declare-fun m!2489431 () Bool)

(assert (=> b!2045541 m!2489431))

(assert (=> b!2045541 m!2489431))

(assert (=> b!2045541 m!2489429))

(declare-fun m!2489433 () Bool)

(assert (=> b!2045541 m!2489433))

(assert (=> b!2045541 m!2489425))

(declare-fun m!2489435 () Bool)

(assert (=> b!2045541 m!2489435))

(declare-fun m!2489437 () Bool)

(assert (=> d!625722 m!2489437))

(assert (=> d!625722 m!2489425))

(assert (=> b!2045542 m!2489429))

(assert (=> b!2045542 m!2489425))

(assert (=> b!2045542 m!2489431))

(assert (=> b!2045542 m!2489431))

(assert (=> b!2045542 m!2489429))

(assert (=> b!2045542 m!2489433))

(assert (=> b!2045542 m!2489425))

(assert (=> b!2045542 m!2489435))

(assert (=> b!2045417 d!625722))

(declare-fun b!2045544 () Bool)

(declare-fun e!1292362 () Bool)

(declare-fun e!1292361 () Bool)

(assert (=> b!2045544 (= e!1292362 e!1292361)))

(declare-fun res!896086 () Bool)

(declare-fun lt!767008 () tuple2!21188)

(assert (=> b!2045544 (= res!896086 (< (size!17564 (_2!12107 lt!767008)) (size!17564 input!986)))))

(assert (=> b!2045544 (=> (not res!896086) (not e!1292361))))

(declare-fun b!2045545 () Bool)

(declare-fun e!1292364 () tuple2!21188)

(assert (=> b!2045545 (= e!1292364 (tuple2!21189 (BalanceConc!14813 Empty!7525) input!986))))

(declare-fun b!2045546 () Bool)

(assert (=> b!2045546 (= e!1292362 (= (list!9200 (_2!12107 lt!767008)) (list!9200 input!986)))))

(declare-fun d!625724 () Bool)

(declare-fun e!1292363 () Bool)

(assert (=> d!625724 e!1292363))

(declare-fun res!896085 () Bool)

(assert (=> d!625724 (=> (not res!896085) (not e!1292363))))

(assert (=> d!625724 (= res!896085 e!1292362)))

(declare-fun c!331089 () Bool)

(assert (=> d!625724 (= c!331089 (> (size!17565 (_1!12107 lt!767008)) 0))))

(assert (=> d!625724 (= lt!767008 e!1292364)))

(declare-fun c!331088 () Bool)

(declare-fun lt!767007 () Option!4705)

(assert (=> d!625724 (= c!331088 ((_ is Some!4704) lt!767007))))

(assert (=> d!625724 (= lt!767007 (maxPrefixZipperSequence!791 thiss!12889 rules!1563 input!986))))

(assert (=> d!625724 (= (lexRec!441 thiss!12889 rules!1563 input!986) lt!767008)))

(declare-fun b!2045547 () Bool)

(assert (=> b!2045547 (= e!1292361 (not (isEmpty!13984 (_1!12107 lt!767008))))))

(declare-fun b!2045548 () Bool)

(declare-fun lt!767006 () tuple2!21188)

(assert (=> b!2045548 (= e!1292364 (tuple2!21189 (prepend!913 (_1!12107 lt!767006) (_1!12103 (v!27148 lt!767007))) (_2!12107 lt!767006)))))

(assert (=> b!2045548 (= lt!767006 (lexRec!441 thiss!12889 rules!1563 (_2!12103 (v!27148 lt!767007))))))

(declare-fun b!2045549 () Bool)

(declare-fun res!896087 () Bool)

(assert (=> b!2045549 (=> (not res!896087) (not e!1292363))))

(assert (=> b!2045549 (= res!896087 (= (list!9199 (_1!12107 lt!767008)) (_1!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 input!986)))))))

(declare-fun b!2045550 () Bool)

(assert (=> b!2045550 (= e!1292363 (= (list!9200 (_2!12107 lt!767008)) (_2!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 input!986)))))))

(assert (= (and d!625724 c!331088) b!2045548))

(assert (= (and d!625724 (not c!331088)) b!2045545))

(assert (= (and d!625724 c!331089) b!2045544))

(assert (= (and d!625724 (not c!331089)) b!2045546))

(assert (= (and b!2045544 res!896086) b!2045547))

(assert (= (and d!625724 res!896085) b!2045549))

(assert (= (and b!2045549 res!896087) b!2045550))

(declare-fun m!2489439 () Bool)

(assert (=> b!2045547 m!2489439))

(declare-fun m!2489441 () Bool)

(assert (=> b!2045548 m!2489441))

(declare-fun m!2489443 () Bool)

(assert (=> b!2045548 m!2489443))

(declare-fun m!2489445 () Bool)

(assert (=> d!625724 m!2489445))

(declare-fun m!2489447 () Bool)

(assert (=> d!625724 m!2489447))

(declare-fun m!2489449 () Bool)

(assert (=> b!2045550 m!2489449))

(assert (=> b!2045550 m!2489179))

(assert (=> b!2045550 m!2489179))

(declare-fun m!2489451 () Bool)

(assert (=> b!2045550 m!2489451))

(assert (=> b!2045546 m!2489449))

(assert (=> b!2045546 m!2489179))

(declare-fun m!2489453 () Bool)

(assert (=> b!2045544 m!2489453))

(declare-fun m!2489455 () Bool)

(assert (=> b!2045544 m!2489455))

(declare-fun m!2489457 () Bool)

(assert (=> b!2045549 m!2489457))

(assert (=> b!2045549 m!2489179))

(assert (=> b!2045549 m!2489179))

(assert (=> b!2045549 m!2489451))

(assert (=> b!2045417 d!625724))

(declare-fun d!625726 () Bool)

(declare-fun list!9202 (Conc!7525) List!22553)

(assert (=> d!625726 (= (list!9199 (_1!12107 lt!766947)) (list!9202 (c!331064 (_1!12107 lt!766947))))))

(declare-fun bs!421968 () Bool)

(assert (= bs!421968 d!625726))

(declare-fun m!2489459 () Bool)

(assert (=> bs!421968 m!2489459))

(assert (=> b!2045417 d!625726))

(declare-fun d!625728 () Bool)

(assert (=> d!625728 (= (list!9199 (++!6100 acc!382 (_1!12107 lt!766946))) (list!9202 (c!331064 (++!6100 acc!382 (_1!12107 lt!766946)))))))

(declare-fun bs!421969 () Bool)

(assert (= bs!421969 d!625728))

(declare-fun m!2489461 () Bool)

(assert (=> bs!421969 m!2489461))

(assert (=> b!2045417 d!625728))

(declare-fun d!625730 () Bool)

(assert (=> d!625730 (= (array_inv!2220 (_keys!2318 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) (bvsge (size!17560 (_keys!2318 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045397 d!625730))

(declare-fun d!625732 () Bool)

(assert (=> d!625732 (= (array_inv!2222 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) (bvsge (size!17562 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045397 d!625732))

(declare-fun d!625734 () Bool)

(declare-fun e!1292369 () Bool)

(assert (=> d!625734 e!1292369))

(declare-fun res!896092 () Bool)

(assert (=> d!625734 (=> (not res!896092) (not e!1292369))))

(declare-fun lt!767011 () List!22550)

(declare-fun content!3320 (List!22550) (InoxSet C!11052))

(assert (=> d!625734 (= res!896092 (= (content!3320 lt!767011) ((_ map or) (content!3320 lt!766948) (content!3320 lt!766944))))))

(declare-fun e!1292370 () List!22550)

(assert (=> d!625734 (= lt!767011 e!1292370)))

(declare-fun c!331092 () Bool)

(assert (=> d!625734 (= c!331092 ((_ is Nil!22466) lt!766948))))

(assert (=> d!625734 (= (++!6099 lt!766948 lt!766944) lt!767011)))

(declare-fun b!2045562 () Bool)

(assert (=> b!2045562 (= e!1292369 (or (not (= lt!766944 Nil!22466)) (= lt!767011 lt!766948)))))

(declare-fun b!2045560 () Bool)

(assert (=> b!2045560 (= e!1292370 (Cons!22466 (h!27867 lt!766948) (++!6099 (t!191664 lt!766948) lt!766944)))))

(declare-fun b!2045559 () Bool)

(assert (=> b!2045559 (= e!1292370 lt!766944)))

(declare-fun b!2045561 () Bool)

(declare-fun res!896093 () Bool)

(assert (=> b!2045561 (=> (not res!896093) (not e!1292369))))

(assert (=> b!2045561 (= res!896093 (= (size!17563 lt!767011) (+ (size!17563 lt!766948) (size!17563 lt!766944))))))

(assert (= (and d!625734 c!331092) b!2045559))

(assert (= (and d!625734 (not c!331092)) b!2045560))

(assert (= (and d!625734 res!896092) b!2045561))

(assert (= (and b!2045561 res!896093) b!2045562))

(declare-fun m!2489463 () Bool)

(assert (=> d!625734 m!2489463))

(declare-fun m!2489465 () Bool)

(assert (=> d!625734 m!2489465))

(declare-fun m!2489467 () Bool)

(assert (=> d!625734 m!2489467))

(declare-fun m!2489469 () Bool)

(assert (=> b!2045560 m!2489469))

(declare-fun m!2489471 () Bool)

(assert (=> b!2045561 m!2489471))

(declare-fun m!2489473 () Bool)

(assert (=> b!2045561 m!2489473))

(assert (=> b!2045561 m!2489339))

(assert (=> b!2045380 d!625734))

(declare-fun d!625736 () Bool)

(assert (=> d!625736 (= (list!9200 totalInput!418) (list!9201 (c!331063 totalInput!418)))))

(declare-fun bs!421970 () Bool)

(assert (= bs!421970 d!625736))

(declare-fun m!2489475 () Bool)

(assert (=> bs!421970 m!2489475))

(assert (=> b!2045380 d!625736))

(declare-fun d!625738 () Bool)

(assert (=> d!625738 (= (list!9200 input!986) (list!9201 (c!331063 input!986)))))

(declare-fun bs!421971 () Bool)

(assert (= bs!421971 d!625738))

(declare-fun m!2489477 () Bool)

(assert (=> bs!421971 m!2489477))

(assert (=> b!2045380 d!625738))

(declare-fun d!625740 () Bool)

(assert (=> d!625740 (= (list!9200 treated!60) (list!9201 (c!331063 treated!60)))))

(declare-fun bs!421972 () Bool)

(assert (= bs!421972 d!625740))

(declare-fun m!2489479 () Bool)

(assert (=> bs!421972 m!2489479))

(assert (=> b!2045380 d!625740))

(declare-fun d!625742 () Bool)

(declare-fun c!331093 () Bool)

(assert (=> d!625742 (= c!331093 ((_ is Node!7524) (c!331063 input!986)))))

(declare-fun e!1292371 () Bool)

(assert (=> d!625742 (= (inv!29814 (c!331063 input!986)) e!1292371)))

(declare-fun b!2045563 () Bool)

(assert (=> b!2045563 (= e!1292371 (inv!29824 (c!331063 input!986)))))

(declare-fun b!2045564 () Bool)

(declare-fun e!1292372 () Bool)

(assert (=> b!2045564 (= e!1292371 e!1292372)))

(declare-fun res!896094 () Bool)

(assert (=> b!2045564 (= res!896094 (not ((_ is Leaf!11018) (c!331063 input!986))))))

(assert (=> b!2045564 (=> res!896094 e!1292372)))

(declare-fun b!2045565 () Bool)

(assert (=> b!2045565 (= e!1292372 (inv!29825 (c!331063 input!986)))))

(assert (= (and d!625742 c!331093) b!2045563))

(assert (= (and d!625742 (not c!331093)) b!2045564))

(assert (= (and b!2045564 (not res!896094)) b!2045565))

(declare-fun m!2489481 () Bool)

(assert (=> b!2045563 m!2489481))

(declare-fun m!2489483 () Bool)

(assert (=> b!2045565 m!2489483))

(assert (=> b!2045387 d!625742))

(declare-fun b!2045576 () Bool)

(declare-fun e!1292379 () Bool)

(declare-fun inv!16 (TokenValue!4161) Bool)

(assert (=> b!2045576 (= e!1292379 (inv!16 (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))))))

(declare-fun b!2045577 () Bool)

(declare-fun res!896097 () Bool)

(declare-fun e!1292381 () Bool)

(assert (=> b!2045577 (=> res!896097 e!1292381)))

(assert (=> b!2045577 (= res!896097 (not ((_ is IntegerValue!12485) (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153)))))))))

(declare-fun e!1292380 () Bool)

(assert (=> b!2045577 (= e!1292380 e!1292381)))

(declare-fun d!625744 () Bool)

(declare-fun c!331099 () Bool)

(assert (=> d!625744 (= c!331099 ((_ is IntegerValue!12483) (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))))))

(assert (=> d!625744 (= (inv!21 (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))) e!1292379)))

(declare-fun b!2045578 () Bool)

(declare-fun inv!15 (TokenValue!4161) Bool)

(assert (=> b!2045578 (= e!1292381 (inv!15 (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))))))

(declare-fun b!2045579 () Bool)

(assert (=> b!2045579 (= e!1292379 e!1292380)))

(declare-fun c!331098 () Bool)

(assert (=> b!2045579 (= c!331098 ((_ is IntegerValue!12484) (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))))))

(declare-fun b!2045580 () Bool)

(declare-fun inv!17 (TokenValue!4161) Bool)

(assert (=> b!2045580 (= e!1292380 (inv!17 (value!126365 (_1!12103 (v!27148 (_1!12106 err!3153))))))))

(assert (= (and d!625744 c!331099) b!2045576))

(assert (= (and d!625744 (not c!331099)) b!2045579))

(assert (= (and b!2045579 c!331098) b!2045580))

(assert (= (and b!2045579 (not c!331098)) b!2045577))

(assert (= (and b!2045577 (not res!896097)) b!2045578))

(declare-fun m!2489485 () Bool)

(assert (=> b!2045576 m!2489485))

(declare-fun m!2489487 () Bool)

(assert (=> b!2045578 m!2489487))

(declare-fun m!2489489 () Bool)

(assert (=> b!2045580 m!2489489))

(assert (=> b!2045405 d!625744))

(declare-fun d!625746 () Bool)

(declare-fun c!331100 () Bool)

(assert (=> d!625746 (= c!331100 ((_ is Node!7524) (c!331063 totalInput!418)))))

(declare-fun e!1292382 () Bool)

(assert (=> d!625746 (= (inv!29814 (c!331063 totalInput!418)) e!1292382)))

(declare-fun b!2045581 () Bool)

(assert (=> b!2045581 (= e!1292382 (inv!29824 (c!331063 totalInput!418)))))

(declare-fun b!2045582 () Bool)

(declare-fun e!1292383 () Bool)

(assert (=> b!2045582 (= e!1292382 e!1292383)))

(declare-fun res!896098 () Bool)

(assert (=> b!2045582 (= res!896098 (not ((_ is Leaf!11018) (c!331063 totalInput!418))))))

(assert (=> b!2045582 (=> res!896098 e!1292383)))

(declare-fun b!2045583 () Bool)

(assert (=> b!2045583 (= e!1292383 (inv!29825 (c!331063 totalInput!418)))))

(assert (= (and d!625746 c!331100) b!2045581))

(assert (= (and d!625746 (not c!331100)) b!2045582))

(assert (= (and b!2045582 (not res!896098)) b!2045583))

(declare-fun m!2489491 () Bool)

(assert (=> b!2045581 m!2489491))

(declare-fun m!2489493 () Bool)

(assert (=> b!2045583 m!2489493))

(assert (=> b!2045370 d!625746))

(declare-fun d!625748 () Bool)

(assert (=> d!625748 (= (list!9199 (_1!12107 lt!766934)) (list!9202 (c!331064 (_1!12107 lt!766934))))))

(declare-fun bs!421973 () Bool)

(assert (= bs!421973 d!625748))

(declare-fun m!2489495 () Bool)

(assert (=> bs!421973 m!2489495))

(assert (=> b!2045369 d!625748))

(declare-fun d!625750 () Bool)

(assert (=> d!625750 (= (list!9199 acc!382) (list!9202 (c!331064 acc!382)))))

(declare-fun bs!421974 () Bool)

(assert (= bs!421974 d!625750))

(declare-fun m!2489497 () Bool)

(assert (=> bs!421974 m!2489497))

(assert (=> b!2045369 d!625750))

(declare-fun b!2045584 () Bool)

(declare-fun e!1292385 () Bool)

(declare-fun e!1292384 () Bool)

(assert (=> b!2045584 (= e!1292385 e!1292384)))

(declare-fun res!896100 () Bool)

(declare-fun lt!767014 () tuple2!21188)

(assert (=> b!2045584 (= res!896100 (< (size!17564 (_2!12107 lt!767014)) (size!17564 treated!60)))))

(assert (=> b!2045584 (=> (not res!896100) (not e!1292384))))

(declare-fun b!2045585 () Bool)

(declare-fun e!1292387 () tuple2!21188)

(assert (=> b!2045585 (= e!1292387 (tuple2!21189 (BalanceConc!14813 Empty!7525) treated!60))))

(declare-fun b!2045586 () Bool)

(assert (=> b!2045586 (= e!1292385 (= (list!9200 (_2!12107 lt!767014)) (list!9200 treated!60)))))

(declare-fun d!625752 () Bool)

(declare-fun e!1292386 () Bool)

(assert (=> d!625752 e!1292386))

(declare-fun res!896099 () Bool)

(assert (=> d!625752 (=> (not res!896099) (not e!1292386))))

(assert (=> d!625752 (= res!896099 e!1292385)))

(declare-fun c!331102 () Bool)

(assert (=> d!625752 (= c!331102 (> (size!17565 (_1!12107 lt!767014)) 0))))

(assert (=> d!625752 (= lt!767014 e!1292387)))

(declare-fun c!331101 () Bool)

(declare-fun lt!767013 () Option!4705)

(assert (=> d!625752 (= c!331101 ((_ is Some!4704) lt!767013))))

(assert (=> d!625752 (= lt!767013 (maxPrefixZipperSequence!791 thiss!12889 rules!1563 treated!60))))

(assert (=> d!625752 (= (lexRec!441 thiss!12889 rules!1563 treated!60) lt!767014)))

(declare-fun b!2045587 () Bool)

(assert (=> b!2045587 (= e!1292384 (not (isEmpty!13984 (_1!12107 lt!767014))))))

(declare-fun b!2045588 () Bool)

(declare-fun lt!767012 () tuple2!21188)

(assert (=> b!2045588 (= e!1292387 (tuple2!21189 (prepend!913 (_1!12107 lt!767012) (_1!12103 (v!27148 lt!767013))) (_2!12107 lt!767012)))))

(assert (=> b!2045588 (= lt!767012 (lexRec!441 thiss!12889 rules!1563 (_2!12103 (v!27148 lt!767013))))))

(declare-fun b!2045589 () Bool)

(declare-fun res!896101 () Bool)

(assert (=> b!2045589 (=> (not res!896101) (not e!1292386))))

(assert (=> b!2045589 (= res!896101 (= (list!9199 (_1!12107 lt!767014)) (_1!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 treated!60)))))))

(declare-fun b!2045590 () Bool)

(assert (=> b!2045590 (= e!1292386 (= (list!9200 (_2!12107 lt!767014)) (_2!12108 (lexList!991 thiss!12889 rules!1563 (list!9200 treated!60)))))))

(assert (= (and d!625752 c!331101) b!2045588))

(assert (= (and d!625752 (not c!331101)) b!2045585))

(assert (= (and d!625752 c!331102) b!2045584))

(assert (= (and d!625752 (not c!331102)) b!2045586))

(assert (= (and b!2045584 res!896100) b!2045587))

(assert (= (and d!625752 res!896099) b!2045589))

(assert (= (and b!2045589 res!896101) b!2045590))

(declare-fun m!2489499 () Bool)

(assert (=> b!2045587 m!2489499))

(declare-fun m!2489501 () Bool)

(assert (=> b!2045588 m!2489501))

(declare-fun m!2489503 () Bool)

(assert (=> b!2045588 m!2489503))

(declare-fun m!2489505 () Bool)

(assert (=> d!625752 m!2489505))

(declare-fun m!2489507 () Bool)

(assert (=> d!625752 m!2489507))

(declare-fun m!2489509 () Bool)

(assert (=> b!2045590 m!2489509))

(assert (=> b!2045590 m!2489181))

(assert (=> b!2045590 m!2489181))

(declare-fun m!2489511 () Bool)

(assert (=> b!2045590 m!2489511))

(assert (=> b!2045586 m!2489509))

(assert (=> b!2045586 m!2489181))

(declare-fun m!2489513 () Bool)

(assert (=> b!2045584 m!2489513))

(declare-fun m!2489515 () Bool)

(assert (=> b!2045584 m!2489515))

(declare-fun m!2489517 () Bool)

(assert (=> b!2045589 m!2489517))

(assert (=> b!2045589 m!2489181))

(assert (=> b!2045589 m!2489181))

(assert (=> b!2045589 m!2489511))

(assert (=> b!2045369 d!625752))

(declare-fun d!625754 () Bool)

(assert (=> d!625754 (= (array_inv!2220 (_keys!2317 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) (bvsge (size!17560 (_keys!2317 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045368 d!625754))

(declare-fun d!625756 () Bool)

(assert (=> d!625756 (= (array_inv!2221 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) (bvsge (size!17559 (_values!2300 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153)))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045368 d!625756))

(declare-fun b!2045591 () Bool)

(declare-fun e!1292389 () tuple3!2096)

(declare-fun lt!767017 () tuple3!2096)

(declare-fun lt!767016 () tuple3!2096)

(assert (=> b!2045591 (= e!1292389 (tuple3!2097 (ite (and ((_ is None!4704) (_1!12106 lt!767017)) ((_ is None!4704) (_1!12106 lt!767016))) None!4704 (ite ((_ is None!4704) (_1!12106 lt!767016)) (_1!12106 lt!767017) (ite ((_ is None!4704) (_1!12106 lt!767017)) (_1!12106 lt!767016) (ite (>= (size!17561 (_1!12103 (v!27148 (_1!12106 lt!767017)))) (size!17561 (_1!12103 (v!27148 (_1!12106 lt!767016))))) (_1!12106 lt!767017) (_1!12106 lt!767016))))) (_2!12106 lt!767016) (_3!1512 lt!767016)))))

(declare-fun call!125316 () tuple3!2096)

(assert (=> b!2045591 (= lt!767017 call!125316)))

(assert (=> b!2045591 (= lt!767016 (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 (t!191666 rules!1563) input!986 totalInput!418 (_2!12106 lt!767017) (_3!1512 lt!767017)))))

(declare-fun bm!125311 () Bool)

(assert (=> bm!125311 (= call!125316 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!7 thiss!12889 (h!27869 rules!1563) input!986 totalInput!418 cacheUp!562 cacheDown!575))))

(declare-fun b!2045592 () Bool)

(declare-fun res!896103 () Bool)

(declare-fun e!1292388 () Bool)

(assert (=> b!2045592 (=> (not res!896103) (not e!1292388))))

(declare-fun lt!767020 () tuple3!2096)

(assert (=> b!2045592 (= res!896103 (valid!1609 (_2!12106 lt!767020)))))

(declare-fun b!2045593 () Bool)

(declare-fun lt!767018 () tuple3!2096)

(assert (=> b!2045593 (= e!1292389 (tuple3!2097 (_1!12106 lt!767018) (_2!12106 lt!767018) (_3!1512 lt!767018)))))

(assert (=> b!2045593 (= lt!767018 call!125316)))

(declare-fun d!625758 () Bool)

(assert (=> d!625758 e!1292388))

(declare-fun res!896102 () Bool)

(assert (=> d!625758 (=> (not res!896102) (not e!1292388))))

(assert (=> d!625758 (= res!896102 (= (_1!12106 lt!767020) (maxPrefixZipperSequenceV2!318 thiss!12889 rules!1563 input!986 totalInput!418)))))

(assert (=> d!625758 (= lt!767020 e!1292389)))

(declare-fun c!331103 () Bool)

(assert (=> d!625758 (= c!331103 (and ((_ is Cons!22468) rules!1563) ((_ is Nil!22468) (t!191666 rules!1563))))))

(declare-fun lt!767021 () Unit!37043)

(declare-fun lt!767022 () Unit!37043)

(assert (=> d!625758 (= lt!767021 lt!767022)))

(declare-fun lt!767019 () List!22550)

(declare-fun lt!767015 () List!22550)

(assert (=> d!625758 (isPrefix!1996 lt!767019 lt!767015)))

(assert (=> d!625758 (= lt!767022 (lemmaIsPrefixRefl!1314 lt!767019 lt!767015))))

(assert (=> d!625758 (= lt!767015 (list!9200 input!986))))

(assert (=> d!625758 (= lt!767019 (list!9200 input!986))))

(assert (=> d!625758 (rulesValidInductive!1400 thiss!12889 rules!1563)))

(assert (=> d!625758 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!15 thiss!12889 rules!1563 input!986 totalInput!418 cacheUp!562 cacheDown!575) lt!767020)))

(declare-fun b!2045594 () Bool)

(assert (=> b!2045594 (= e!1292388 (valid!1610 (_3!1512 lt!767020)))))

(assert (= (and d!625758 c!331103) b!2045593))

(assert (= (and d!625758 (not c!331103)) b!2045591))

(assert (= (or b!2045593 b!2045591) bm!125311))

(assert (= (and d!625758 res!896102) b!2045592))

(assert (= (and b!2045592 res!896103) b!2045594))

(declare-fun m!2489519 () Bool)

(assert (=> b!2045594 m!2489519))

(declare-fun m!2489521 () Bool)

(assert (=> d!625758 m!2489521))

(declare-fun m!2489523 () Bool)

(assert (=> d!625758 m!2489523))

(assert (=> d!625758 m!2489179))

(assert (=> d!625758 m!2489353))

(assert (=> d!625758 m!2489233))

(declare-fun m!2489525 () Bool)

(assert (=> bm!125311 m!2489525))

(declare-fun m!2489527 () Bool)

(assert (=> b!2045592 m!2489527))

(declare-fun m!2489529 () Bool)

(assert (=> b!2045591 m!2489529))

(assert (=> b!2045367 d!625758))

(declare-fun d!625760 () Bool)

(declare-fun e!1292396 () Bool)

(assert (=> d!625760 e!1292396))

(declare-fun res!896112 () Bool)

(assert (=> d!625760 (=> (not res!896112) (not e!1292396))))

(declare-fun lt!767035 () tuple3!2096)

(declare-fun maxPrefixOneRuleZipperSequenceV2!120 (LexerInterface!3636 Rule!7850 BalanceConc!14810 BalanceConc!14810) Option!4705)

(assert (=> d!625760 (= res!896112 (= (_1!12106 lt!767035) (maxPrefixOneRuleZipperSequenceV2!120 thiss!12889 (h!27869 rules!1563) input!986 totalInput!418)))))

(declare-fun e!1292398 () Option!4705)

(declare-datatypes ((tuple2!21192 0))(
  ( (tuple2!21193 (_1!12109 BalanceConc!14810) (_2!12109 BalanceConc!14810)) )
))
(declare-datatypes ((tuple3!2098 0))(
  ( (tuple3!2099 (_1!12110 tuple2!21192) (_2!12110 CacheUp!1230) (_3!1513 CacheDown!1232)) )
))
(declare-fun lt!767037 () tuple3!2098)

(assert (=> d!625760 (= lt!767035 (tuple3!2097 e!1292398 (_2!12110 lt!767037) (_3!1513 lt!767037)))))

(declare-fun c!331106 () Bool)

(declare-fun isEmpty!13985 (BalanceConc!14810) Bool)

(assert (=> d!625760 (= c!331106 (isEmpty!13985 (_1!12109 (_1!12110 lt!767037))))))

(declare-fun findLongestMatchWithZipperSequenceV2MemOnlyDeriv!1 (Regex!5453 BalanceConc!14810 BalanceConc!14810 CacheUp!1230 CacheDown!1232) tuple3!2098)

(assert (=> d!625760 (= lt!767037 (findLongestMatchWithZipperSequenceV2MemOnlyDeriv!1 (regex!4025 (h!27869 rules!1563)) input!986 totalInput!418 (_2!12106 lt!766949) (_3!1512 lt!766949)))))

(assert (=> d!625760 (ruleValid!1231 thiss!12889 (h!27869 rules!1563))))

(assert (=> d!625760 (= (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!7 thiss!12889 (h!27869 rules!1563) input!986 totalInput!418 (_2!12106 lt!766949) (_3!1512 lt!766949)) lt!767035)))

(declare-fun b!2045605 () Bool)

(assert (=> b!2045605 (= e!1292396 (valid!1610 (_3!1512 lt!767035)))))

(declare-fun b!2045606 () Bool)

(declare-fun e!1292397 () Bool)

(declare-fun lt!767038 () List!22550)

(declare-fun matchR!2692 (Regex!5453 List!22550) Bool)

(declare-datatypes ((tuple2!21194 0))(
  ( (tuple2!21195 (_1!12111 List!22550) (_2!12111 List!22550)) )
))
(declare-fun findLongestMatchInner!558 (Regex!5453 List!22550 Int List!22550 List!22550 Int) tuple2!21194)

(assert (=> b!2045606 (= e!1292397 (matchR!2692 (regex!4025 (h!27869 rules!1563)) (_1!12111 (findLongestMatchInner!558 (regex!4025 (h!27869 rules!1563)) Nil!22466 (size!17563 Nil!22466) lt!767038 lt!767038 (size!17563 lt!767038)))))))

(declare-fun b!2045607 () Bool)

(assert (=> b!2045607 (= e!1292398 None!4704)))

(declare-fun b!2045608 () Bool)

(declare-fun res!896111 () Bool)

(assert (=> b!2045608 (=> (not res!896111) (not e!1292396))))

(assert (=> b!2045608 (= res!896111 (valid!1609 (_2!12106 lt!767035)))))

(declare-fun b!2045609 () Bool)

(declare-fun apply!5866 (TokenValueInjection!7906 BalanceConc!14810) TokenValue!4161)

(assert (=> b!2045609 (= e!1292398 (Some!4704 (tuple2!21185 (Token!7599 (apply!5866 (transformation!4025 (h!27869 rules!1563)) (_1!12109 (_1!12110 lt!767037))) (h!27869 rules!1563) (size!17564 (_1!12109 (_1!12110 lt!767037))) (list!9200 (_1!12109 (_1!12110 lt!767037)))) (_2!12109 (_1!12110 lt!767037)))))))

(assert (=> b!2045609 (= lt!767038 (list!9200 input!986))))

(declare-fun lt!767036 () Unit!37043)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!542 (Regex!5453 List!22550) Unit!37043)

(assert (=> b!2045609 (= lt!767036 (longestMatchIsAcceptedByMatchOrIsEmpty!542 (regex!4025 (h!27869 rules!1563)) lt!767038))))

(declare-fun res!896110 () Bool)

(assert (=> b!2045609 (= res!896110 (isEmpty!13982 (_1!12111 (findLongestMatchInner!558 (regex!4025 (h!27869 rules!1563)) Nil!22466 (size!17563 Nil!22466) lt!767038 lt!767038 (size!17563 lt!767038)))))))

(assert (=> b!2045609 (=> res!896110 e!1292397)))

(assert (=> b!2045609 e!1292397))

(declare-fun lt!767039 () Unit!37043)

(assert (=> b!2045609 (= lt!767039 lt!767036)))

(declare-fun lt!767040 () Unit!37043)

(declare-fun lemmaSemiInverse!956 (TokenValueInjection!7906 BalanceConc!14810) Unit!37043)

(assert (=> b!2045609 (= lt!767040 (lemmaSemiInverse!956 (transformation!4025 (h!27869 rules!1563)) (_1!12109 (_1!12110 lt!767037))))))

(assert (= (and d!625760 c!331106) b!2045607))

(assert (= (and d!625760 (not c!331106)) b!2045609))

(assert (= (and b!2045609 (not res!896110)) b!2045606))

(assert (= (and d!625760 res!896112) b!2045608))

(assert (= (and b!2045608 res!896111) b!2045605))

(declare-fun m!2489531 () Bool)

(assert (=> b!2045608 m!2489531))

(declare-fun m!2489533 () Bool)

(assert (=> d!625760 m!2489533))

(declare-fun m!2489535 () Bool)

(assert (=> d!625760 m!2489535))

(declare-fun m!2489537 () Bool)

(assert (=> d!625760 m!2489537))

(assert (=> d!625760 m!2489345))

(declare-fun m!2489539 () Bool)

(assert (=> b!2045605 m!2489539))

(declare-fun m!2489541 () Bool)

(assert (=> b!2045606 m!2489541))

(declare-fun m!2489543 () Bool)

(assert (=> b!2045606 m!2489543))

(assert (=> b!2045606 m!2489541))

(assert (=> b!2045606 m!2489543))

(declare-fun m!2489545 () Bool)

(assert (=> b!2045606 m!2489545))

(declare-fun m!2489547 () Bool)

(assert (=> b!2045606 m!2489547))

(declare-fun m!2489549 () Bool)

(assert (=> b!2045609 m!2489549))

(declare-fun m!2489551 () Bool)

(assert (=> b!2045609 m!2489551))

(assert (=> b!2045609 m!2489543))

(declare-fun m!2489553 () Bool)

(assert (=> b!2045609 m!2489553))

(declare-fun m!2489555 () Bool)

(assert (=> b!2045609 m!2489555))

(assert (=> b!2045609 m!2489179))

(assert (=> b!2045609 m!2489541))

(assert (=> b!2045609 m!2489543))

(assert (=> b!2045609 m!2489545))

(declare-fun m!2489557 () Bool)

(assert (=> b!2045609 m!2489557))

(declare-fun m!2489559 () Bool)

(assert (=> b!2045609 m!2489559))

(assert (=> b!2045609 m!2489541))

(assert (=> bm!125306 d!625760))

(declare-fun d!625762 () Bool)

(declare-fun res!896113 () Bool)

(declare-fun e!1292399 () Bool)

(assert (=> d!625762 (=> (not res!896113) (not e!1292399))))

(assert (=> d!625762 (= res!896113 ((_ is HashMap!1934) (cache!2315 (_2!12106 err!3153))))))

(assert (=> d!625762 (= (inv!29815 (_2!12106 err!3153)) e!1292399)))

(declare-fun b!2045610 () Bool)

(assert (=> b!2045610 (= e!1292399 (validCacheMapUp!189 (cache!2315 (_2!12106 err!3153))))))

(assert (= (and d!625762 res!896113) b!2045610))

(declare-fun m!2489561 () Bool)

(assert (=> b!2045610 m!2489561))

(assert (=> b!2045375 d!625762))

(declare-fun d!625764 () Bool)

(declare-fun res!896114 () Bool)

(declare-fun e!1292400 () Bool)

(assert (=> d!625764 (=> (not res!896114) (not e!1292400))))

(assert (=> d!625764 (= res!896114 ((_ is HashMap!1935) (cache!2316 (_3!1512 err!3153))))))

(assert (=> d!625764 (= (inv!29816 (_3!1512 err!3153)) e!1292400)))

(declare-fun b!2045611 () Bool)

(assert (=> b!2045611 (= e!1292400 (validCacheMapDown!187 (cache!2316 (_3!1512 err!3153))))))

(assert (= (and d!625764 res!896114) b!2045611))

(declare-fun m!2489563 () Bool)

(assert (=> b!2045611 m!2489563))

(assert (=> b!2045375 d!625764))

(declare-fun d!625766 () Bool)

(assert (=> d!625766 (= (array_inv!2220 (_keys!2318 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) (bvsge (size!17560 (_keys!2318 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045390 d!625766))

(declare-fun d!625768 () Bool)

(assert (=> d!625768 (= (array_inv!2222 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) (bvsge (size!17562 (_values!2301 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575))))))) #b00000000000000000000000000000000))))

(assert (=> b!2045390 d!625768))

(declare-fun d!625770 () Bool)

(assert (=> d!625770 (= (inv!29812 (tag!4515 (h!27869 rules!1563))) (= (mod (str.len (value!126364 (tag!4515 (h!27869 rules!1563)))) 2) 0))))

(assert (=> b!2045409 d!625770))

(declare-fun d!625772 () Bool)

(declare-fun res!896115 () Bool)

(declare-fun e!1292401 () Bool)

(assert (=> d!625772 (=> (not res!896115) (not e!1292401))))

(assert (=> d!625772 (= res!896115 (semiInverseModEq!1619 (toChars!5567 (transformation!4025 (h!27869 rules!1563))) (toValue!5708 (transformation!4025 (h!27869 rules!1563)))))))

(assert (=> d!625772 (= (inv!29820 (transformation!4025 (h!27869 rules!1563))) e!1292401)))

(declare-fun b!2045612 () Bool)

(assert (=> b!2045612 (= e!1292401 (equivClasses!1546 (toChars!5567 (transformation!4025 (h!27869 rules!1563))) (toValue!5708 (transformation!4025 (h!27869 rules!1563)))))))

(assert (= (and d!625772 res!896115) b!2045612))

(declare-fun m!2489565 () Bool)

(assert (=> d!625772 m!2489565))

(declare-fun m!2489567 () Bool)

(assert (=> b!2045612 m!2489567))

(assert (=> b!2045409 d!625772))

(declare-fun d!625774 () Bool)

(assert (=> d!625774 (= (valid!1609 cacheUp!562) (validCacheMapUp!189 (cache!2315 cacheUp!562)))))

(declare-fun bs!421975 () Bool)

(assert (= bs!421975 d!625774))

(assert (=> bs!421975 m!2489289))

(assert (=> b!2045372 d!625774))

(declare-fun d!625776 () Bool)

(declare-fun e!1292404 () Bool)

(assert (=> d!625776 e!1292404))

(declare-fun res!896118 () Bool)

(assert (=> d!625776 (=> res!896118 e!1292404)))

(declare-fun lt!767043 () Bool)

(assert (=> d!625776 (= res!896118 (not lt!767043))))

(declare-fun drop!1129 (List!22550 Int) List!22550)

(assert (=> d!625776 (= lt!767043 (= lt!766944 (drop!1129 lt!766939 (- (size!17563 lt!766939) (size!17563 lt!766944)))))))

(assert (=> d!625776 (= (isSuffix!481 lt!766944 lt!766939) lt!767043)))

(declare-fun b!2045615 () Bool)

(assert (=> b!2045615 (= e!1292404 (>= (size!17563 lt!766939) (size!17563 lt!766944)))))

(assert (= (and d!625776 (not res!896118)) b!2045615))

(declare-fun m!2489569 () Bool)

(assert (=> d!625776 m!2489569))

(assert (=> d!625776 m!2489339))

(declare-fun m!2489571 () Bool)

(assert (=> d!625776 m!2489571))

(assert (=> b!2045615 m!2489569))

(assert (=> b!2045615 m!2489339))

(assert (=> b!2045406 d!625776))

(declare-fun d!625778 () Bool)

(declare-fun e!1292405 () Bool)

(assert (=> d!625778 e!1292405))

(declare-fun res!896119 () Bool)

(assert (=> d!625778 (=> res!896119 e!1292405)))

(declare-fun lt!767044 () Bool)

(assert (=> d!625778 (= res!896119 (not lt!767044))))

(assert (=> d!625778 (= lt!767044 (= lt!766944 (drop!1129 lt!766943 (- (size!17563 lt!766943) (size!17563 lt!766944)))))))

(assert (=> d!625778 (= (isSuffix!481 lt!766944 lt!766943) lt!767044)))

(declare-fun b!2045616 () Bool)

(assert (=> b!2045616 (= e!1292405 (>= (size!17563 lt!766943) (size!17563 lt!766944)))))

(assert (= (and d!625778 (not res!896119)) b!2045616))

(declare-fun m!2489573 () Bool)

(assert (=> d!625778 m!2489573))

(assert (=> d!625778 m!2489339))

(declare-fun m!2489575 () Bool)

(assert (=> d!625778 m!2489575))

(assert (=> b!2045616 m!2489573))

(assert (=> b!2045616 m!2489339))

(assert (=> b!2045406 d!625778))

(declare-fun d!625780 () Bool)

(assert (=> d!625780 (isSuffix!481 lt!766944 (++!6099 lt!766948 lt!766944))))

(declare-fun lt!767047 () Unit!37043)

(declare-fun choose!12465 (List!22550 List!22550) Unit!37043)

(assert (=> d!625780 (= lt!767047 (choose!12465 lt!766948 lt!766944))))

(assert (=> d!625780 (= (lemmaConcatTwoListThenFSndIsSuffix!382 lt!766948 lt!766944) lt!767047)))

(declare-fun bs!421976 () Bool)

(assert (= bs!421976 d!625780))

(assert (=> bs!421976 m!2489175))

(assert (=> bs!421976 m!2489175))

(declare-fun m!2489577 () Bool)

(assert (=> bs!421976 m!2489577))

(declare-fun m!2489579 () Bool)

(assert (=> bs!421976 m!2489579))

(assert (=> b!2045406 d!625780))

(declare-fun e!1292410 () Bool)

(declare-fun tp!608587 () Bool)

(declare-fun tp!608585 () Bool)

(declare-fun b!2045625 () Bool)

(assert (=> b!2045625 (= e!1292410 (and (inv!29821 (left!17824 (c!331064 acc!382))) tp!608587 (inv!29821 (right!18154 (c!331064 acc!382))) tp!608585))))

(declare-fun b!2045627 () Bool)

(declare-fun e!1292411 () Bool)

(declare-fun tp!608586 () Bool)

(assert (=> b!2045627 (= e!1292411 tp!608586)))

(declare-fun b!2045626 () Bool)

(declare-fun inv!29826 (IArray!15055) Bool)

(assert (=> b!2045626 (= e!1292410 (and (inv!29826 (xs!10433 (c!331064 acc!382))) e!1292411))))

(assert (=> b!2045416 (= tp!608561 (and (inv!29821 (c!331064 acc!382)) e!1292410))))

(assert (= (and b!2045416 ((_ is Node!7525) (c!331064 acc!382))) b!2045625))

(assert (= b!2045626 b!2045627))

(assert (= (and b!2045416 ((_ is Leaf!11019) (c!331064 acc!382))) b!2045626))

(declare-fun m!2489581 () Bool)

(assert (=> b!2045625 m!2489581))

(declare-fun m!2489583 () Bool)

(assert (=> b!2045625 m!2489583))

(declare-fun m!2489585 () Bool)

(assert (=> b!2045626 m!2489585))

(assert (=> b!2045416 m!2489157))

(declare-fun tp!608594 () Bool)

(declare-fun tp!608595 () Bool)

(declare-fun b!2045636 () Bool)

(declare-fun e!1292416 () Bool)

(assert (=> b!2045636 (= e!1292416 (and (inv!29814 (left!17823 (c!331063 treated!60))) tp!608594 (inv!29814 (right!18153 (c!331063 treated!60))) tp!608595))))

(declare-fun b!2045638 () Bool)

(declare-fun e!1292417 () Bool)

(declare-fun tp!608596 () Bool)

(assert (=> b!2045638 (= e!1292417 tp!608596)))

(declare-fun b!2045637 () Bool)

(declare-fun inv!29827 (IArray!15053) Bool)

(assert (=> b!2045637 (= e!1292416 (and (inv!29827 (xs!10432 (c!331063 treated!60))) e!1292417))))

(assert (=> b!2045394 (= tp!608535 (and (inv!29814 (c!331063 treated!60)) e!1292416))))

(assert (= (and b!2045394 ((_ is Node!7524) (c!331063 treated!60))) b!2045636))

(assert (= b!2045637 b!2045638))

(assert (= (and b!2045394 ((_ is Leaf!11018) (c!331063 treated!60))) b!2045637))

(declare-fun m!2489587 () Bool)

(assert (=> b!2045636 m!2489587))

(declare-fun m!2489589 () Bool)

(assert (=> b!2045636 m!2489589))

(declare-fun m!2489591 () Bool)

(assert (=> b!2045637 m!2489591))

(assert (=> b!2045394 m!2489197))

(declare-fun condMapEmpty!9340 () Bool)

(declare-fun mapDefault!9340 () List!22549)

(assert (=> mapNonEmpty!9335 (= condMapEmpty!9340 (= mapRest!9337 ((as const (Array (_ BitVec 32) List!22549)) mapDefault!9340)))))

(declare-fun e!1292432 () Bool)

(declare-fun mapRes!9340 () Bool)

(assert (=> mapNonEmpty!9335 (= tp!608574 (and e!1292432 mapRes!9340))))

(declare-fun mapIsEmpty!9340 () Bool)

(assert (=> mapIsEmpty!9340 mapRes!9340))

(declare-fun tp!608620 () Bool)

(declare-fun e!1292434 () Bool)

(declare-fun e!1292435 () Bool)

(declare-fun setRes!11886 () Bool)

(declare-fun tp_is_empty!9301 () Bool)

(declare-fun mapValue!9340 () List!22549)

(declare-fun b!2045653 () Bool)

(declare-fun inv!29828 (Context!2046) Bool)

(assert (=> b!2045653 (= e!1292434 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapValue!9340)))) e!1292435 tp_is_empty!9301 setRes!11886 tp!608620))))

(declare-fun condSetEmpty!11887 () Bool)

(assert (=> b!2045653 (= condSetEmpty!11887 (= (_2!12102 (h!27866 mapValue!9340)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun setElem!11887 () Context!2046)

(declare-fun e!1292430 () Bool)

(declare-fun setNonEmpty!11886 () Bool)

(declare-fun tp!608617 () Bool)

(assert (=> setNonEmpty!11886 (= setRes!11886 (and tp!608617 (inv!29828 setElem!11887) e!1292430))))

(declare-fun setRest!11887 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11886 (= (_2!12102 (h!27866 mapValue!9340)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11887 true) setRest!11887))))

(declare-fun b!2045654 () Bool)

(declare-fun e!1292431 () Bool)

(declare-fun tp!608615 () Bool)

(assert (=> b!2045654 (= e!1292431 tp!608615)))

(declare-fun setNonEmpty!11887 () Bool)

(declare-fun setRes!11887 () Bool)

(declare-fun e!1292433 () Bool)

(declare-fun tp!608622 () Bool)

(declare-fun setElem!11886 () Context!2046)

(assert (=> setNonEmpty!11887 (= setRes!11887 (and tp!608622 (inv!29828 setElem!11886) e!1292433))))

(declare-fun setRest!11886 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11887 (= (_2!12102 (h!27866 mapDefault!9340)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11886 true) setRest!11886))))

(declare-fun setIsEmpty!11886 () Bool)

(assert (=> setIsEmpty!11886 setRes!11886))

(declare-fun setIsEmpty!11887 () Bool)

(assert (=> setIsEmpty!11887 setRes!11887))

(declare-fun b!2045655 () Bool)

(declare-fun tp!608621 () Bool)

(assert (=> b!2045655 (= e!1292430 tp!608621)))

(declare-fun mapNonEmpty!9340 () Bool)

(declare-fun tp!608623 () Bool)

(assert (=> mapNonEmpty!9340 (= mapRes!9340 (and tp!608623 e!1292434))))

(declare-fun mapKey!9340 () (_ BitVec 32))

(declare-fun mapRest!9340 () (Array (_ BitVec 32) List!22549))

(assert (=> mapNonEmpty!9340 (= mapRest!9337 (store mapRest!9340 mapKey!9340 mapValue!9340))))

(declare-fun b!2045656 () Bool)

(declare-fun tp!608619 () Bool)

(assert (=> b!2045656 (= e!1292435 tp!608619)))

(declare-fun b!2045657 () Bool)

(declare-fun tp!608618 () Bool)

(assert (=> b!2045657 (= e!1292432 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapDefault!9340)))) e!1292431 tp_is_empty!9301 setRes!11887 tp!608618))))

(declare-fun condSetEmpty!11886 () Bool)

(assert (=> b!2045657 (= condSetEmpty!11886 (= (_2!12102 (h!27866 mapDefault!9340)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun b!2045658 () Bool)

(declare-fun tp!608616 () Bool)

(assert (=> b!2045658 (= e!1292433 tp!608616)))

(assert (= (and mapNonEmpty!9335 condMapEmpty!9340) mapIsEmpty!9340))

(assert (= (and mapNonEmpty!9335 (not condMapEmpty!9340)) mapNonEmpty!9340))

(assert (= b!2045653 b!2045656))

(assert (= (and b!2045653 condSetEmpty!11887) setIsEmpty!11886))

(assert (= (and b!2045653 (not condSetEmpty!11887)) setNonEmpty!11886))

(assert (= setNonEmpty!11886 b!2045655))

(assert (= (and mapNonEmpty!9340 ((_ is Cons!22465) mapValue!9340)) b!2045653))

(assert (= b!2045657 b!2045654))

(assert (= (and b!2045657 condSetEmpty!11886) setIsEmpty!11887))

(assert (= (and b!2045657 (not condSetEmpty!11886)) setNonEmpty!11887))

(assert (= setNonEmpty!11887 b!2045658))

(assert (= (and mapNonEmpty!9335 ((_ is Cons!22465) mapDefault!9340)) b!2045657))

(declare-fun m!2489593 () Bool)

(assert (=> setNonEmpty!11886 m!2489593))

(declare-fun m!2489595 () Bool)

(assert (=> b!2045653 m!2489595))

(declare-fun m!2489597 () Bool)

(assert (=> mapNonEmpty!9340 m!2489597))

(declare-fun m!2489599 () Bool)

(assert (=> setNonEmpty!11887 m!2489599))

(declare-fun m!2489601 () Bool)

(assert (=> b!2045657 m!2489601))

(declare-fun tp!608632 () Bool)

(declare-fun e!1292444 () Bool)

(declare-fun b!2045667 () Bool)

(declare-fun setRes!11890 () Bool)

(declare-fun e!1292442 () Bool)

(assert (=> b!2045667 (= e!1292442 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapValue!9334)))) e!1292444 tp_is_empty!9301 setRes!11890 tp!608632))))

(declare-fun condSetEmpty!11890 () Bool)

(assert (=> b!2045667 (= condSetEmpty!11890 (= (_2!12102 (h!27866 mapValue!9334)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> mapNonEmpty!9335 (= tp!608558 e!1292442)))

(declare-fun b!2045668 () Bool)

(declare-fun e!1292443 () Bool)

(declare-fun tp!608635 () Bool)

(assert (=> b!2045668 (= e!1292443 tp!608635)))

(declare-fun b!2045669 () Bool)

(declare-fun tp!608633 () Bool)

(assert (=> b!2045669 (= e!1292444 tp!608633)))

(declare-fun setIsEmpty!11890 () Bool)

(assert (=> setIsEmpty!11890 setRes!11890))

(declare-fun tp!608634 () Bool)

(declare-fun setElem!11890 () Context!2046)

(declare-fun setNonEmpty!11890 () Bool)

(assert (=> setNonEmpty!11890 (= setRes!11890 (and tp!608634 (inv!29828 setElem!11890) e!1292443))))

(declare-fun setRest!11890 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11890 (= (_2!12102 (h!27866 mapValue!9334)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11890 true) setRest!11890))))

(assert (= b!2045667 b!2045669))

(assert (= (and b!2045667 condSetEmpty!11890) setIsEmpty!11890))

(assert (= (and b!2045667 (not condSetEmpty!11890)) setNonEmpty!11890))

(assert (= setNonEmpty!11890 b!2045668))

(assert (= (and mapNonEmpty!9335 ((_ is Cons!22465) mapValue!9334)) b!2045667))

(declare-fun m!2489603 () Bool)

(assert (=> b!2045667 m!2489603))

(declare-fun m!2489605 () Bool)

(assert (=> setNonEmpty!11890 m!2489605))

(declare-fun setRes!11895 () Bool)

(declare-fun tp!608661 () Bool)

(declare-fun b!2045684 () Bool)

(declare-fun e!1292460 () Bool)

(declare-fun tp!608665 () Bool)

(declare-fun mapValue!9343 () List!22551)

(declare-fun e!1292457 () Bool)

(assert (=> b!2045684 (= e!1292460 (and tp!608665 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapValue!9343)))) e!1292457 tp_is_empty!9301 setRes!11895 tp!608661))))

(declare-fun condSetEmpty!11895 () Bool)

(assert (=> b!2045684 (= condSetEmpty!11895 (= (_2!12105 (h!27868 mapValue!9343)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun setElem!11896 () Context!2046)

(declare-fun tp!608663 () Bool)

(declare-fun setNonEmpty!11895 () Bool)

(declare-fun e!1292458 () Bool)

(assert (=> setNonEmpty!11895 (= setRes!11895 (and tp!608663 (inv!29828 setElem!11896) e!1292458))))

(declare-fun setRest!11895 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11895 (= (_2!12105 (h!27868 mapValue!9343)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11896 true) setRest!11895))))

(declare-fun b!2045685 () Bool)

(declare-fun tp!608660 () Bool)

(assert (=> b!2045685 (= e!1292457 tp!608660)))

(declare-fun setIsEmpty!11895 () Bool)

(declare-fun setRes!11896 () Bool)

(assert (=> setIsEmpty!11895 setRes!11896))

(declare-fun b!2045686 () Bool)

(declare-fun e!1292462 () Bool)

(declare-fun tp!608667 () Bool)

(assert (=> b!2045686 (= e!1292462 tp!608667)))

(declare-fun mapNonEmpty!9343 () Bool)

(declare-fun mapRes!9343 () Bool)

(declare-fun tp!608666 () Bool)

(assert (=> mapNonEmpty!9343 (= mapRes!9343 (and tp!608666 e!1292460))))

(declare-fun mapKey!9343 () (_ BitVec 32))

(declare-fun mapRest!9343 () (Array (_ BitVec 32) List!22551))

(assert (=> mapNonEmpty!9343 (= mapRest!9334 (store mapRest!9343 mapKey!9343 mapValue!9343))))

(declare-fun b!2045687 () Bool)

(declare-fun e!1292461 () Bool)

(declare-fun tp!608664 () Bool)

(assert (=> b!2045687 (= e!1292461 tp!608664)))

(declare-fun setIsEmpty!11896 () Bool)

(assert (=> setIsEmpty!11896 setRes!11895))

(declare-fun setElem!11895 () Context!2046)

(declare-fun tp!608658 () Bool)

(declare-fun setNonEmpty!11896 () Bool)

(assert (=> setNonEmpty!11896 (= setRes!11896 (and tp!608658 (inv!29828 setElem!11895) e!1292462))))

(declare-fun mapDefault!9343 () List!22551)

(declare-fun setRest!11896 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11896 (= (_2!12105 (h!27868 mapDefault!9343)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11895 true) setRest!11896))))

(declare-fun condMapEmpty!9343 () Bool)

(assert (=> mapNonEmpty!9334 (= condMapEmpty!9343 (= mapRest!9334 ((as const (Array (_ BitVec 32) List!22551)) mapDefault!9343)))))

(declare-fun e!1292459 () Bool)

(assert (=> mapNonEmpty!9334 (= tp!608543 (and e!1292459 mapRes!9343))))

(declare-fun tp!608668 () Bool)

(declare-fun tp!608662 () Bool)

(declare-fun b!2045688 () Bool)

(assert (=> b!2045688 (= e!1292459 (and tp!608662 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapDefault!9343)))) e!1292461 tp_is_empty!9301 setRes!11896 tp!608668))))

(declare-fun condSetEmpty!11896 () Bool)

(assert (=> b!2045688 (= condSetEmpty!11896 (= (_2!12105 (h!27868 mapDefault!9343)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun b!2045689 () Bool)

(declare-fun tp!608659 () Bool)

(assert (=> b!2045689 (= e!1292458 tp!608659)))

(declare-fun mapIsEmpty!9343 () Bool)

(assert (=> mapIsEmpty!9343 mapRes!9343))

(assert (= (and mapNonEmpty!9334 condMapEmpty!9343) mapIsEmpty!9343))

(assert (= (and mapNonEmpty!9334 (not condMapEmpty!9343)) mapNonEmpty!9343))

(assert (= b!2045684 b!2045685))

(assert (= (and b!2045684 condSetEmpty!11895) setIsEmpty!11896))

(assert (= (and b!2045684 (not condSetEmpty!11895)) setNonEmpty!11895))

(assert (= setNonEmpty!11895 b!2045689))

(assert (= (and mapNonEmpty!9343 ((_ is Cons!22467) mapValue!9343)) b!2045684))

(assert (= b!2045688 b!2045687))

(assert (= (and b!2045688 condSetEmpty!11896) setIsEmpty!11895))

(assert (= (and b!2045688 (not condSetEmpty!11896)) setNonEmpty!11896))

(assert (= setNonEmpty!11896 b!2045686))

(assert (= (and mapNonEmpty!9334 ((_ is Cons!22467) mapDefault!9343)) b!2045688))

(declare-fun m!2489607 () Bool)

(assert (=> b!2045684 m!2489607))

(declare-fun m!2489609 () Bool)

(assert (=> mapNonEmpty!9343 m!2489609))

(declare-fun m!2489611 () Bool)

(assert (=> setNonEmpty!11896 m!2489611))

(declare-fun m!2489613 () Bool)

(assert (=> b!2045688 m!2489613))

(declare-fun m!2489615 () Bool)

(assert (=> setNonEmpty!11895 m!2489615))

(declare-fun setIsEmpty!11899 () Bool)

(declare-fun setRes!11899 () Bool)

(assert (=> setIsEmpty!11899 setRes!11899))

(declare-fun b!2045698 () Bool)

(declare-fun e!1292470 () Bool)

(declare-fun tp!608683 () Bool)

(assert (=> b!2045698 (= e!1292470 tp!608683)))

(declare-fun b!2045699 () Bool)

(declare-fun e!1292469 () Bool)

(declare-fun tp!608682 () Bool)

(assert (=> b!2045699 (= e!1292469 tp!608682)))

(declare-fun setNonEmpty!11899 () Bool)

(declare-fun setElem!11899 () Context!2046)

(declare-fun tp!608680 () Bool)

(assert (=> setNonEmpty!11899 (= setRes!11899 (and tp!608680 (inv!29828 setElem!11899) e!1292470))))

(declare-fun setRest!11899 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11899 (= (_2!12105 (h!27868 mapValue!9336)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11899 true) setRest!11899))))

(declare-fun tp!608681 () Bool)

(declare-fun e!1292471 () Bool)

(declare-fun tp!608679 () Bool)

(declare-fun b!2045700 () Bool)

(assert (=> b!2045700 (= e!1292471 (and tp!608681 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapValue!9336)))) e!1292469 tp_is_empty!9301 setRes!11899 tp!608679))))

(declare-fun condSetEmpty!11899 () Bool)

(assert (=> b!2045700 (= condSetEmpty!11899 (= (_2!12105 (h!27868 mapValue!9336)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> mapNonEmpty!9334 (= tp!608540 e!1292471)))

(assert (= b!2045700 b!2045699))

(assert (= (and b!2045700 condSetEmpty!11899) setIsEmpty!11899))

(assert (= (and b!2045700 (not condSetEmpty!11899)) setNonEmpty!11899))

(assert (= setNonEmpty!11899 b!2045698))

(assert (= (and mapNonEmpty!9334 ((_ is Cons!22467) mapValue!9336)) b!2045700))

(declare-fun m!2489617 () Bool)

(assert (=> setNonEmpty!11899 m!2489617))

(declare-fun m!2489619 () Bool)

(assert (=> b!2045700 m!2489619))

(declare-fun setRes!11900 () Bool)

(declare-fun b!2045701 () Bool)

(declare-fun tp!608684 () Bool)

(declare-fun e!1292472 () Bool)

(declare-fun e!1292474 () Bool)

(assert (=> b!2045701 (= e!1292472 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))))) e!1292474 tp_is_empty!9301 setRes!11900 tp!608684))))

(declare-fun condSetEmpty!11900 () Bool)

(assert (=> b!2045701 (= condSetEmpty!11900 (= (_2!12102 (h!27866 (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045391 (= tp!608546 e!1292472)))

(declare-fun b!2045702 () Bool)

(declare-fun e!1292473 () Bool)

(declare-fun tp!608687 () Bool)

(assert (=> b!2045702 (= e!1292473 tp!608687)))

(declare-fun b!2045703 () Bool)

(declare-fun tp!608685 () Bool)

(assert (=> b!2045703 (= e!1292474 tp!608685)))

(declare-fun setIsEmpty!11900 () Bool)

(assert (=> setIsEmpty!11900 setRes!11900))

(declare-fun tp!608686 () Bool)

(declare-fun setNonEmpty!11900 () Bool)

(declare-fun setElem!11900 () Context!2046)

(assert (=> setNonEmpty!11900 (= setRes!11900 (and tp!608686 (inv!29828 setElem!11900) e!1292473))))

(declare-fun setRest!11900 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11900 (= (_2!12102 (h!27866 (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11900 true) setRest!11900))))

(assert (= b!2045701 b!2045703))

(assert (= (and b!2045701 condSetEmpty!11900) setIsEmpty!11900))

(assert (= (and b!2045701 (not condSetEmpty!11900)) setNonEmpty!11900))

(assert (= setNonEmpty!11900 b!2045702))

(assert (= (and b!2045391 ((_ is Cons!22465) (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))) b!2045701))

(declare-fun m!2489621 () Bool)

(assert (=> b!2045701 m!2489621))

(declare-fun m!2489623 () Bool)

(assert (=> setNonEmpty!11900 m!2489623))

(declare-fun e!1292477 () Bool)

(declare-fun tp!608688 () Bool)

(declare-fun e!1292475 () Bool)

(declare-fun setRes!11901 () Bool)

(declare-fun b!2045704 () Bool)

(assert (=> b!2045704 (= e!1292475 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))))) e!1292477 tp_is_empty!9301 setRes!11901 tp!608688))))

(declare-fun condSetEmpty!11901 () Bool)

(assert (=> b!2045704 (= condSetEmpty!11901 (= (_2!12102 (h!27866 (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045391 (= tp!608537 e!1292475)))

(declare-fun b!2045705 () Bool)

(declare-fun e!1292476 () Bool)

(declare-fun tp!608691 () Bool)

(assert (=> b!2045705 (= e!1292476 tp!608691)))

(declare-fun b!2045706 () Bool)

(declare-fun tp!608689 () Bool)

(assert (=> b!2045706 (= e!1292477 tp!608689)))

(declare-fun setIsEmpty!11901 () Bool)

(assert (=> setIsEmpty!11901 setRes!11901))

(declare-fun setNonEmpty!11901 () Bool)

(declare-fun tp!608690 () Bool)

(declare-fun setElem!11901 () Context!2046)

(assert (=> setNonEmpty!11901 (= setRes!11901 (and tp!608690 (inv!29828 setElem!11901) e!1292476))))

(declare-fun setRest!11901 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11901 (= (_2!12102 (h!27866 (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11901 true) setRest!11901))))

(assert (= b!2045704 b!2045706))

(assert (= (and b!2045704 condSetEmpty!11901) setIsEmpty!11901))

(assert (= (and b!2045704 (not condSetEmpty!11901)) setNonEmpty!11901))

(assert (= setNonEmpty!11901 b!2045705))

(assert (= (and b!2045391 ((_ is Cons!22465) (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 cacheUp!562)))))))) b!2045704))

(declare-fun m!2489625 () Bool)

(assert (=> b!2045704 m!2489625))

(declare-fun m!2489627 () Bool)

(assert (=> setNonEmpty!11901 m!2489627))

(declare-fun tp!608693 () Bool)

(declare-fun e!1292478 () Bool)

(declare-fun b!2045707 () Bool)

(declare-fun tp!608692 () Bool)

(assert (=> b!2045707 (= e!1292478 (and (inv!29814 (left!17823 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153)))))) tp!608692 (inv!29814 (right!18153 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153)))))) tp!608693))))

(declare-fun b!2045709 () Bool)

(declare-fun e!1292479 () Bool)

(declare-fun tp!608694 () Bool)

(assert (=> b!2045709 (= e!1292479 tp!608694)))

(declare-fun b!2045708 () Bool)

(assert (=> b!2045708 (= e!1292478 (and (inv!29827 (xs!10432 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153)))))) e!1292479))))

(assert (=> b!2045400 (= tp!608563 (and (inv!29814 (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153))))) e!1292478))))

(assert (= (and b!2045400 ((_ is Node!7524) (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153)))))) b!2045707))

(assert (= b!2045708 b!2045709))

(assert (= (and b!2045400 ((_ is Leaf!11018) (c!331063 (_2!12103 (v!27148 (_1!12106 err!3153)))))) b!2045708))

(declare-fun m!2489629 () Bool)

(assert (=> b!2045707 m!2489629))

(declare-fun m!2489631 () Bool)

(assert (=> b!2045707 m!2489631))

(declare-fun m!2489633 () Bool)

(assert (=> b!2045708 m!2489633))

(assert (=> b!2045400 m!2489255))

(declare-fun b!2045722 () Bool)

(declare-fun e!1292482 () Bool)

(declare-fun tp!608709 () Bool)

(assert (=> b!2045722 (= e!1292482 tp!608709)))

(declare-fun b!2045723 () Bool)

(declare-fun tp!608706 () Bool)

(declare-fun tp!608705 () Bool)

(assert (=> b!2045723 (= e!1292482 (and tp!608706 tp!608705))))

(assert (=> b!2045398 (= tp!608551 e!1292482)))

(declare-fun b!2045720 () Bool)

(assert (=> b!2045720 (= e!1292482 tp_is_empty!9301)))

(declare-fun b!2045721 () Bool)

(declare-fun tp!608707 () Bool)

(declare-fun tp!608708 () Bool)

(assert (=> b!2045721 (= e!1292482 (and tp!608707 tp!608708))))

(assert (= (and b!2045398 ((_ is ElementMatch!5453) (regex!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) b!2045720))

(assert (= (and b!2045398 ((_ is Concat!9615) (regex!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) b!2045721))

(assert (= (and b!2045398 ((_ is Star!5453) (regex!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) b!2045722))

(assert (= (and b!2045398 ((_ is Union!5453) (regex!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) b!2045723))

(declare-fun setIsEmpty!11902 () Bool)

(declare-fun setRes!11902 () Bool)

(assert (=> setIsEmpty!11902 setRes!11902))

(declare-fun b!2045724 () Bool)

(declare-fun e!1292484 () Bool)

(declare-fun tp!608714 () Bool)

(assert (=> b!2045724 (= e!1292484 tp!608714)))

(declare-fun b!2045725 () Bool)

(declare-fun e!1292483 () Bool)

(declare-fun tp!608713 () Bool)

(assert (=> b!2045725 (= e!1292483 tp!608713)))

(declare-fun setNonEmpty!11902 () Bool)

(declare-fun setElem!11902 () Context!2046)

(declare-fun tp!608711 () Bool)

(assert (=> setNonEmpty!11902 (= setRes!11902 (and tp!608711 (inv!29828 setElem!11902) e!1292484))))

(declare-fun setRest!11902 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11902 (= (_2!12105 (h!27868 (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11902 true) setRest!11902))))

(declare-fun tp!608712 () Bool)

(declare-fun e!1292485 () Bool)

(declare-fun b!2045726 () Bool)

(declare-fun tp!608710 () Bool)

(assert (=> b!2045726 (= e!1292485 (and tp!608712 (inv!29828 (_2!12104 (_1!12105 (h!27868 (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))))) e!1292483 tp_is_empty!9301 setRes!11902 tp!608710))))

(declare-fun condSetEmpty!11902 () Bool)

(assert (=> b!2045726 (= condSetEmpty!11902 (= (_2!12105 (h!27868 (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045397 (= tp!608553 e!1292485)))

(assert (= b!2045726 b!2045725))

(assert (= (and b!2045726 condSetEmpty!11902) setIsEmpty!11902))

(assert (= (and b!2045726 (not condSetEmpty!11902)) setNonEmpty!11902))

(assert (= setNonEmpty!11902 b!2045724))

(assert (= (and b!2045397 ((_ is Cons!22467) (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))) b!2045726))

(declare-fun m!2489635 () Bool)

(assert (=> setNonEmpty!11902 m!2489635))

(declare-fun m!2489637 () Bool)

(assert (=> b!2045726 m!2489637))

(declare-fun setIsEmpty!11903 () Bool)

(declare-fun setRes!11903 () Bool)

(assert (=> setIsEmpty!11903 setRes!11903))

(declare-fun b!2045727 () Bool)

(declare-fun e!1292487 () Bool)

(declare-fun tp!608719 () Bool)

(assert (=> b!2045727 (= e!1292487 tp!608719)))

(declare-fun b!2045728 () Bool)

(declare-fun e!1292486 () Bool)

(declare-fun tp!608718 () Bool)

(assert (=> b!2045728 (= e!1292486 tp!608718)))

(declare-fun setNonEmpty!11903 () Bool)

(declare-fun tp!608716 () Bool)

(declare-fun setElem!11903 () Context!2046)

(assert (=> setNonEmpty!11903 (= setRes!11903 (and tp!608716 (inv!29828 setElem!11903) e!1292487))))

(declare-fun setRest!11903 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11903 (= (_2!12105 (h!27868 (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11903 true) setRest!11903))))

(declare-fun b!2045729 () Bool)

(declare-fun e!1292488 () Bool)

(declare-fun tp!608715 () Bool)

(declare-fun tp!608717 () Bool)

(assert (=> b!2045729 (= e!1292488 (and tp!608717 (inv!29828 (_2!12104 (_1!12105 (h!27868 (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))))) e!1292486 tp_is_empty!9301 setRes!11903 tp!608715))))

(declare-fun condSetEmpty!11903 () Bool)

(assert (=> b!2045729 (= condSetEmpty!11903 (= (_2!12105 (h!27868 (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045397 (= tp!608572 e!1292488)))

(assert (= b!2045729 b!2045728))

(assert (= (and b!2045729 condSetEmpty!11903) setIsEmpty!11903))

(assert (= (and b!2045729 (not condSetEmpty!11903)) setNonEmpty!11903))

(assert (= setNonEmpty!11903 b!2045727))

(assert (= (and b!2045397 ((_ is Cons!22467) (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 (_3!1512 err!3153))))))))) b!2045729))

(declare-fun m!2489639 () Bool)

(assert (=> setNonEmpty!11903 m!2489639))

(declare-fun m!2489641 () Bool)

(assert (=> b!2045729 m!2489641))

(declare-fun condMapEmpty!9344 () Bool)

(declare-fun mapDefault!9344 () List!22549)

(assert (=> mapNonEmpty!9337 (= condMapEmpty!9344 (= mapRest!9335 ((as const (Array (_ BitVec 32) List!22549)) mapDefault!9344)))))

(declare-fun e!1292491 () Bool)

(declare-fun mapRes!9344 () Bool)

(assert (=> mapNonEmpty!9337 (= tp!608559 (and e!1292491 mapRes!9344))))

(declare-fun mapIsEmpty!9344 () Bool)

(assert (=> mapIsEmpty!9344 mapRes!9344))

(declare-fun setRes!11904 () Bool)

(declare-fun tp!608725 () Bool)

(declare-fun e!1292493 () Bool)

(declare-fun mapValue!9344 () List!22549)

(declare-fun e!1292494 () Bool)

(declare-fun b!2045730 () Bool)

(assert (=> b!2045730 (= e!1292493 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapValue!9344)))) e!1292494 tp_is_empty!9301 setRes!11904 tp!608725))))

(declare-fun condSetEmpty!11905 () Bool)

(assert (=> b!2045730 (= condSetEmpty!11905 (= (_2!12102 (h!27866 mapValue!9344)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun tp!608722 () Bool)

(declare-fun setNonEmpty!11904 () Bool)

(declare-fun setElem!11905 () Context!2046)

(declare-fun e!1292489 () Bool)

(assert (=> setNonEmpty!11904 (= setRes!11904 (and tp!608722 (inv!29828 setElem!11905) e!1292489))))

(declare-fun setRest!11905 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11904 (= (_2!12102 (h!27866 mapValue!9344)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11905 true) setRest!11905))))

(declare-fun b!2045731 () Bool)

(declare-fun e!1292490 () Bool)

(declare-fun tp!608720 () Bool)

(assert (=> b!2045731 (= e!1292490 tp!608720)))

(declare-fun setNonEmpty!11905 () Bool)

(declare-fun e!1292492 () Bool)

(declare-fun tp!608727 () Bool)

(declare-fun setRes!11905 () Bool)

(declare-fun setElem!11904 () Context!2046)

(assert (=> setNonEmpty!11905 (= setRes!11905 (and tp!608727 (inv!29828 setElem!11904) e!1292492))))

(declare-fun setRest!11904 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11905 (= (_2!12102 (h!27866 mapDefault!9344)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11904 true) setRest!11904))))

(declare-fun setIsEmpty!11904 () Bool)

(assert (=> setIsEmpty!11904 setRes!11904))

(declare-fun setIsEmpty!11905 () Bool)

(assert (=> setIsEmpty!11905 setRes!11905))

(declare-fun b!2045732 () Bool)

(declare-fun tp!608726 () Bool)

(assert (=> b!2045732 (= e!1292489 tp!608726)))

(declare-fun mapNonEmpty!9344 () Bool)

(declare-fun tp!608728 () Bool)

(assert (=> mapNonEmpty!9344 (= mapRes!9344 (and tp!608728 e!1292493))))

(declare-fun mapRest!9344 () (Array (_ BitVec 32) List!22549))

(declare-fun mapKey!9344 () (_ BitVec 32))

(assert (=> mapNonEmpty!9344 (= mapRest!9335 (store mapRest!9344 mapKey!9344 mapValue!9344))))

(declare-fun b!2045733 () Bool)

(declare-fun tp!608724 () Bool)

(assert (=> b!2045733 (= e!1292494 tp!608724)))

(declare-fun b!2045734 () Bool)

(declare-fun tp!608723 () Bool)

(assert (=> b!2045734 (= e!1292491 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapDefault!9344)))) e!1292490 tp_is_empty!9301 setRes!11905 tp!608723))))

(declare-fun condSetEmpty!11904 () Bool)

(assert (=> b!2045734 (= condSetEmpty!11904 (= (_2!12102 (h!27866 mapDefault!9344)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun b!2045735 () Bool)

(declare-fun tp!608721 () Bool)

(assert (=> b!2045735 (= e!1292492 tp!608721)))

(assert (= (and mapNonEmpty!9337 condMapEmpty!9344) mapIsEmpty!9344))

(assert (= (and mapNonEmpty!9337 (not condMapEmpty!9344)) mapNonEmpty!9344))

(assert (= b!2045730 b!2045733))

(assert (= (and b!2045730 condSetEmpty!11905) setIsEmpty!11904))

(assert (= (and b!2045730 (not condSetEmpty!11905)) setNonEmpty!11904))

(assert (= setNonEmpty!11904 b!2045732))

(assert (= (and mapNonEmpty!9344 ((_ is Cons!22465) mapValue!9344)) b!2045730))

(assert (= b!2045734 b!2045731))

(assert (= (and b!2045734 condSetEmpty!11904) setIsEmpty!11905))

(assert (= (and b!2045734 (not condSetEmpty!11904)) setNonEmpty!11905))

(assert (= setNonEmpty!11905 b!2045735))

(assert (= (and mapNonEmpty!9337 ((_ is Cons!22465) mapDefault!9344)) b!2045734))

(declare-fun m!2489643 () Bool)

(assert (=> setNonEmpty!11904 m!2489643))

(declare-fun m!2489645 () Bool)

(assert (=> b!2045730 m!2489645))

(declare-fun m!2489647 () Bool)

(assert (=> mapNonEmpty!9344 m!2489647))

(declare-fun m!2489649 () Bool)

(assert (=> setNonEmpty!11905 m!2489649))

(declare-fun m!2489651 () Bool)

(assert (=> b!2045734 m!2489651))

(declare-fun tp!608729 () Bool)

(declare-fun e!1292497 () Bool)

(declare-fun setRes!11906 () Bool)

(declare-fun e!1292495 () Bool)

(declare-fun b!2045736 () Bool)

(assert (=> b!2045736 (= e!1292495 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapValue!9335)))) e!1292497 tp_is_empty!9301 setRes!11906 tp!608729))))

(declare-fun condSetEmpty!11906 () Bool)

(assert (=> b!2045736 (= condSetEmpty!11906 (= (_2!12102 (h!27866 mapValue!9335)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> mapNonEmpty!9337 (= tp!608557 e!1292495)))

(declare-fun b!2045737 () Bool)

(declare-fun e!1292496 () Bool)

(declare-fun tp!608732 () Bool)

(assert (=> b!2045737 (= e!1292496 tp!608732)))

(declare-fun b!2045738 () Bool)

(declare-fun tp!608730 () Bool)

(assert (=> b!2045738 (= e!1292497 tp!608730)))

(declare-fun setIsEmpty!11906 () Bool)

(assert (=> setIsEmpty!11906 setRes!11906))

(declare-fun tp!608731 () Bool)

(declare-fun setElem!11906 () Context!2046)

(declare-fun setNonEmpty!11906 () Bool)

(assert (=> setNonEmpty!11906 (= setRes!11906 (and tp!608731 (inv!29828 setElem!11906) e!1292496))))

(declare-fun setRest!11906 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11906 (= (_2!12102 (h!27866 mapValue!9335)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11906 true) setRest!11906))))

(assert (= b!2045736 b!2045738))

(assert (= (and b!2045736 condSetEmpty!11906) setIsEmpty!11906))

(assert (= (and b!2045736 (not condSetEmpty!11906)) setNonEmpty!11906))

(assert (= setNonEmpty!11906 b!2045737))

(assert (= (and mapNonEmpty!9337 ((_ is Cons!22465) mapValue!9335)) b!2045736))

(declare-fun m!2489653 () Bool)

(assert (=> b!2045736 m!2489653))

(declare-fun m!2489655 () Bool)

(assert (=> setNonEmpty!11906 m!2489655))

(declare-fun e!1292498 () Bool)

(declare-fun b!2045739 () Bool)

(declare-fun tp!608733 () Bool)

(declare-fun tp!608734 () Bool)

(assert (=> b!2045739 (= e!1292498 (and (inv!29814 (left!17823 (c!331063 input!986))) tp!608733 (inv!29814 (right!18153 (c!331063 input!986))) tp!608734))))

(declare-fun b!2045741 () Bool)

(declare-fun e!1292499 () Bool)

(declare-fun tp!608735 () Bool)

(assert (=> b!2045741 (= e!1292499 tp!608735)))

(declare-fun b!2045740 () Bool)

(assert (=> b!2045740 (= e!1292498 (and (inv!29827 (xs!10432 (c!331063 input!986))) e!1292499))))

(assert (=> b!2045387 (= tp!608565 (and (inv!29814 (c!331063 input!986)) e!1292498))))

(assert (= (and b!2045387 ((_ is Node!7524) (c!331063 input!986))) b!2045739))

(assert (= b!2045740 b!2045741))

(assert (= (and b!2045387 ((_ is Leaf!11018) (c!331063 input!986))) b!2045740))

(declare-fun m!2489657 () Bool)

(assert (=> b!2045739 m!2489657))

(declare-fun m!2489659 () Bool)

(assert (=> b!2045739 m!2489659))

(declare-fun m!2489661 () Bool)

(assert (=> b!2045740 m!2489661))

(assert (=> b!2045387 m!2489223))

(declare-fun b!2045746 () Bool)

(declare-fun e!1292502 () Bool)

(declare-fun tp!608738 () Bool)

(assert (=> b!2045746 (= e!1292502 (and tp_is_empty!9301 tp!608738))))

(assert (=> b!2045405 (= tp!608552 e!1292502)))

(assert (= (and b!2045405 ((_ is Cons!22466) (originalCharacters!4830 (_1!12103 (v!27148 (_1!12106 err!3153)))))) b!2045746))

(declare-fun b!2045747 () Bool)

(declare-fun tp!608739 () Bool)

(declare-fun tp!608740 () Bool)

(declare-fun e!1292503 () Bool)

(assert (=> b!2045747 (= e!1292503 (and (inv!29814 (left!17823 (c!331063 totalInput!418))) tp!608739 (inv!29814 (right!18153 (c!331063 totalInput!418))) tp!608740))))

(declare-fun b!2045749 () Bool)

(declare-fun e!1292504 () Bool)

(declare-fun tp!608741 () Bool)

(assert (=> b!2045749 (= e!1292504 tp!608741)))

(declare-fun b!2045748 () Bool)

(assert (=> b!2045748 (= e!1292503 (and (inv!29827 (xs!10432 (c!331063 totalInput!418))) e!1292504))))

(assert (=> b!2045370 (= tp!608547 (and (inv!29814 (c!331063 totalInput!418)) e!1292503))))

(assert (= (and b!2045370 ((_ is Node!7524) (c!331063 totalInput!418))) b!2045747))

(assert (= b!2045748 b!2045749))

(assert (= (and b!2045370 ((_ is Leaf!11018) (c!331063 totalInput!418))) b!2045748))

(declare-fun m!2489663 () Bool)

(assert (=> b!2045747 m!2489663))

(declare-fun m!2489665 () Bool)

(assert (=> b!2045747 m!2489665))

(declare-fun m!2489667 () Bool)

(assert (=> b!2045748 m!2489667))

(assert (=> b!2045370 m!2489229))

(declare-fun b!2045760 () Bool)

(declare-fun b_free!57249 () Bool)

(declare-fun b_next!57953 () Bool)

(assert (=> b!2045760 (= b_free!57249 (not b_next!57953))))

(declare-fun tp!608753 () Bool)

(declare-fun b_and!163193 () Bool)

(assert (=> b!2045760 (= tp!608753 b_and!163193)))

(declare-fun b_free!57251 () Bool)

(declare-fun b_next!57955 () Bool)

(assert (=> b!2045760 (= b_free!57251 (not b_next!57955))))

(declare-fun t!191673 () Bool)

(declare-fun tb!128985 () Bool)

(assert (=> (and b!2045760 (= (toChars!5567 (transformation!4025 (h!27869 (t!191666 rules!1563)))) (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153))))))) t!191673) tb!128985))

(declare-fun result!154428 () Bool)

(assert (= result!154428 result!154404))

(assert (=> b!2045443 t!191673))

(declare-fun b_and!163195 () Bool)

(declare-fun tp!608752 () Bool)

(assert (=> b!2045760 (= tp!608752 (and (=> t!191673 result!154428) b_and!163195))))

(declare-fun e!1292515 () Bool)

(assert (=> b!2045760 (= e!1292515 (and tp!608753 tp!608752))))

(declare-fun b!2045759 () Bool)

(declare-fun e!1292516 () Bool)

(declare-fun tp!608751 () Bool)

(assert (=> b!2045759 (= e!1292516 (and tp!608751 (inv!29812 (tag!4515 (h!27869 (t!191666 rules!1563)))) (inv!29820 (transformation!4025 (h!27869 (t!191666 rules!1563)))) e!1292515))))

(declare-fun b!2045758 () Bool)

(declare-fun e!1292513 () Bool)

(declare-fun tp!608750 () Bool)

(assert (=> b!2045758 (= e!1292513 (and e!1292516 tp!608750))))

(assert (=> b!2045386 (= tp!608560 e!1292513)))

(assert (= b!2045759 b!2045760))

(assert (= b!2045758 b!2045759))

(assert (= (and b!2045386 ((_ is Cons!22468) (t!191666 rules!1563))) b!2045758))

(declare-fun m!2489669 () Bool)

(assert (=> b!2045759 m!2489669))

(declare-fun m!2489671 () Bool)

(assert (=> b!2045759 m!2489671))

(declare-fun e!1292520 () Bool)

(declare-fun tp!608757 () Bool)

(declare-fun b!2045761 () Bool)

(declare-fun e!1292517 () Bool)

(declare-fun mapValue!9345 () List!22551)

(declare-fun setRes!11907 () Bool)

(declare-fun tp!608761 () Bool)

(assert (=> b!2045761 (= e!1292520 (and tp!608761 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapValue!9345)))) e!1292517 tp_is_empty!9301 setRes!11907 tp!608757))))

(declare-fun condSetEmpty!11907 () Bool)

(assert (=> b!2045761 (= condSetEmpty!11907 (= (_2!12105 (h!27868 mapValue!9345)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun e!1292518 () Bool)

(declare-fun tp!608759 () Bool)

(declare-fun setNonEmpty!11907 () Bool)

(declare-fun setElem!11908 () Context!2046)

(assert (=> setNonEmpty!11907 (= setRes!11907 (and tp!608759 (inv!29828 setElem!11908) e!1292518))))

(declare-fun setRest!11907 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11907 (= (_2!12105 (h!27868 mapValue!9345)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11908 true) setRest!11907))))

(declare-fun b!2045762 () Bool)

(declare-fun tp!608756 () Bool)

(assert (=> b!2045762 (= e!1292517 tp!608756)))

(declare-fun setIsEmpty!11907 () Bool)

(declare-fun setRes!11908 () Bool)

(assert (=> setIsEmpty!11907 setRes!11908))

(declare-fun b!2045763 () Bool)

(declare-fun e!1292522 () Bool)

(declare-fun tp!608763 () Bool)

(assert (=> b!2045763 (= e!1292522 tp!608763)))

(declare-fun mapNonEmpty!9345 () Bool)

(declare-fun mapRes!9345 () Bool)

(declare-fun tp!608762 () Bool)

(assert (=> mapNonEmpty!9345 (= mapRes!9345 (and tp!608762 e!1292520))))

(declare-fun mapKey!9345 () (_ BitVec 32))

(declare-fun mapRest!9345 () (Array (_ BitVec 32) List!22551))

(assert (=> mapNonEmpty!9345 (= mapRest!9336 (store mapRest!9345 mapKey!9345 mapValue!9345))))

(declare-fun b!2045764 () Bool)

(declare-fun e!1292521 () Bool)

(declare-fun tp!608760 () Bool)

(assert (=> b!2045764 (= e!1292521 tp!608760)))

(declare-fun setIsEmpty!11908 () Bool)

(assert (=> setIsEmpty!11908 setRes!11907))

(declare-fun setElem!11907 () Context!2046)

(declare-fun setNonEmpty!11908 () Bool)

(declare-fun tp!608754 () Bool)

(assert (=> setNonEmpty!11908 (= setRes!11908 (and tp!608754 (inv!29828 setElem!11907) e!1292522))))

(declare-fun mapDefault!9345 () List!22551)

(declare-fun setRest!11908 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11908 (= (_2!12105 (h!27868 mapDefault!9345)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11907 true) setRest!11908))))

(declare-fun condMapEmpty!9345 () Bool)

(assert (=> mapNonEmpty!9336 (= condMapEmpty!9345 (= mapRest!9336 ((as const (Array (_ BitVec 32) List!22551)) mapDefault!9345)))))

(declare-fun e!1292519 () Bool)

(assert (=> mapNonEmpty!9336 (= tp!608542 (and e!1292519 mapRes!9345))))

(declare-fun tp!608758 () Bool)

(declare-fun tp!608764 () Bool)

(declare-fun b!2045765 () Bool)

(assert (=> b!2045765 (= e!1292519 (and tp!608758 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapDefault!9345)))) e!1292521 tp_is_empty!9301 setRes!11908 tp!608764))))

(declare-fun condSetEmpty!11908 () Bool)

(assert (=> b!2045765 (= condSetEmpty!11908 (= (_2!12105 (h!27868 mapDefault!9345)) ((as const (Array Context!2046 Bool)) false)))))

(declare-fun b!2045766 () Bool)

(declare-fun tp!608755 () Bool)

(assert (=> b!2045766 (= e!1292518 tp!608755)))

(declare-fun mapIsEmpty!9345 () Bool)

(assert (=> mapIsEmpty!9345 mapRes!9345))

(assert (= (and mapNonEmpty!9336 condMapEmpty!9345) mapIsEmpty!9345))

(assert (= (and mapNonEmpty!9336 (not condMapEmpty!9345)) mapNonEmpty!9345))

(assert (= b!2045761 b!2045762))

(assert (= (and b!2045761 condSetEmpty!11907) setIsEmpty!11908))

(assert (= (and b!2045761 (not condSetEmpty!11907)) setNonEmpty!11907))

(assert (= setNonEmpty!11907 b!2045766))

(assert (= (and mapNonEmpty!9345 ((_ is Cons!22467) mapValue!9345)) b!2045761))

(assert (= b!2045765 b!2045764))

(assert (= (and b!2045765 condSetEmpty!11908) setIsEmpty!11907))

(assert (= (and b!2045765 (not condSetEmpty!11908)) setNonEmpty!11908))

(assert (= setNonEmpty!11908 b!2045763))

(assert (= (and mapNonEmpty!9336 ((_ is Cons!22467) mapDefault!9345)) b!2045765))

(declare-fun m!2489673 () Bool)

(assert (=> b!2045761 m!2489673))

(declare-fun m!2489675 () Bool)

(assert (=> mapNonEmpty!9345 m!2489675))

(declare-fun m!2489677 () Bool)

(assert (=> setNonEmpty!11908 m!2489677))

(declare-fun m!2489679 () Bool)

(assert (=> b!2045765 m!2489679))

(declare-fun m!2489681 () Bool)

(assert (=> setNonEmpty!11907 m!2489681))

(declare-fun setIsEmpty!11909 () Bool)

(declare-fun setRes!11909 () Bool)

(assert (=> setIsEmpty!11909 setRes!11909))

(declare-fun b!2045767 () Bool)

(declare-fun e!1292524 () Bool)

(declare-fun tp!608769 () Bool)

(assert (=> b!2045767 (= e!1292524 tp!608769)))

(declare-fun b!2045768 () Bool)

(declare-fun e!1292523 () Bool)

(declare-fun tp!608768 () Bool)

(assert (=> b!2045768 (= e!1292523 tp!608768)))

(declare-fun tp!608766 () Bool)

(declare-fun setNonEmpty!11909 () Bool)

(declare-fun setElem!11909 () Context!2046)

(assert (=> setNonEmpty!11909 (= setRes!11909 (and tp!608766 (inv!29828 setElem!11909) e!1292524))))

(declare-fun setRest!11909 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11909 (= (_2!12105 (h!27868 mapValue!9337)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11909 true) setRest!11909))))

(declare-fun b!2045769 () Bool)

(declare-fun tp!608765 () Bool)

(declare-fun e!1292525 () Bool)

(declare-fun tp!608767 () Bool)

(assert (=> b!2045769 (= e!1292525 (and tp!608767 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapValue!9337)))) e!1292523 tp_is_empty!9301 setRes!11909 tp!608765))))

(declare-fun condSetEmpty!11909 () Bool)

(assert (=> b!2045769 (= condSetEmpty!11909 (= (_2!12105 (h!27868 mapValue!9337)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> mapNonEmpty!9336 (= tp!608566 e!1292525)))

(assert (= b!2045769 b!2045768))

(assert (= (and b!2045769 condSetEmpty!11909) setIsEmpty!11909))

(assert (= (and b!2045769 (not condSetEmpty!11909)) setNonEmpty!11909))

(assert (= setNonEmpty!11909 b!2045767))

(assert (= (and mapNonEmpty!9336 ((_ is Cons!22467) mapValue!9337)) b!2045769))

(declare-fun m!2489683 () Bool)

(assert (=> setNonEmpty!11909 m!2489683))

(declare-fun m!2489685 () Bool)

(assert (=> b!2045769 m!2489685))

(declare-fun e!1292526 () Bool)

(declare-fun setRes!11910 () Bool)

(declare-fun tp!608770 () Bool)

(declare-fun e!1292528 () Bool)

(declare-fun b!2045770 () Bool)

(assert (=> b!2045770 (= e!1292526 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))))) e!1292528 tp_is_empty!9301 setRes!11910 tp!608770))))

(declare-fun condSetEmpty!11910 () Bool)

(assert (=> b!2045770 (= condSetEmpty!11910 (= (_2!12102 (h!27866 (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045368 (= tp!608555 e!1292526)))

(declare-fun b!2045771 () Bool)

(declare-fun e!1292527 () Bool)

(declare-fun tp!608773 () Bool)

(assert (=> b!2045771 (= e!1292527 tp!608773)))

(declare-fun b!2045772 () Bool)

(declare-fun tp!608771 () Bool)

(assert (=> b!2045772 (= e!1292528 tp!608771)))

(declare-fun setIsEmpty!11910 () Bool)

(assert (=> setIsEmpty!11910 setRes!11910))

(declare-fun tp!608772 () Bool)

(declare-fun setNonEmpty!11910 () Bool)

(declare-fun setElem!11910 () Context!2046)

(assert (=> setNonEmpty!11910 (= setRes!11910 (and tp!608772 (inv!29828 setElem!11910) e!1292527))))

(declare-fun setRest!11910 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11910 (= (_2!12102 (h!27866 (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11910 true) setRest!11910))))

(assert (= b!2045770 b!2045772))

(assert (= (and b!2045770 condSetEmpty!11910) setIsEmpty!11910))

(assert (= (and b!2045770 (not condSetEmpty!11910)) setNonEmpty!11910))

(assert (= setNonEmpty!11910 b!2045771))

(assert (= (and b!2045368 ((_ is Cons!22465) (zeroValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))) b!2045770))

(declare-fun m!2489687 () Bool)

(assert (=> b!2045770 m!2489687))

(declare-fun m!2489689 () Bool)

(assert (=> setNonEmpty!11910 m!2489689))

(declare-fun e!1292531 () Bool)

(declare-fun e!1292529 () Bool)

(declare-fun setRes!11911 () Bool)

(declare-fun b!2045773 () Bool)

(declare-fun tp!608774 () Bool)

(assert (=> b!2045773 (= e!1292529 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))))) e!1292531 tp_is_empty!9301 setRes!11911 tp!608774))))

(declare-fun condSetEmpty!11911 () Bool)

(assert (=> b!2045773 (= condSetEmpty!11911 (= (_2!12102 (h!27866 (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045368 (= tp!608571 e!1292529)))

(declare-fun b!2045774 () Bool)

(declare-fun e!1292530 () Bool)

(declare-fun tp!608777 () Bool)

(assert (=> b!2045774 (= e!1292530 tp!608777)))

(declare-fun b!2045775 () Bool)

(declare-fun tp!608775 () Bool)

(assert (=> b!2045775 (= e!1292531 tp!608775)))

(declare-fun setIsEmpty!11911 () Bool)

(assert (=> setIsEmpty!11911 setRes!11911))

(declare-fun setNonEmpty!11911 () Bool)

(declare-fun tp!608776 () Bool)

(declare-fun setElem!11911 () Context!2046)

(assert (=> setNonEmpty!11911 (= setRes!11911 (and tp!608776 (inv!29828 setElem!11911) e!1292530))))

(declare-fun setRest!11911 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11911 (= (_2!12102 (h!27866 (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11911 true) setRest!11911))))

(assert (= b!2045773 b!2045775))

(assert (= (and b!2045773 condSetEmpty!11911) setIsEmpty!11911))

(assert (= (and b!2045773 (not condSetEmpty!11911)) setNonEmpty!11911))

(assert (= setNonEmpty!11911 b!2045774))

(assert (= (and b!2045368 ((_ is Cons!22465) (minValue!2278 (v!27146 (underlying!4235 (v!27147 (underlying!4236 (cache!2315 (_2!12106 err!3153))))))))) b!2045773))

(declare-fun m!2489691 () Bool)

(assert (=> b!2045773 m!2489691))

(declare-fun m!2489693 () Bool)

(assert (=> setNonEmpty!11911 m!2489693))

(declare-fun tp!608778 () Bool)

(declare-fun e!1292532 () Bool)

(declare-fun setRes!11912 () Bool)

(declare-fun e!1292534 () Bool)

(declare-fun b!2045776 () Bool)

(assert (=> b!2045776 (= e!1292532 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapDefault!9337)))) e!1292534 tp_is_empty!9301 setRes!11912 tp!608778))))

(declare-fun condSetEmpty!11912 () Bool)

(assert (=> b!2045776 (= condSetEmpty!11912 (= (_2!12102 (h!27866 mapDefault!9337)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045423 (= tp!608554 e!1292532)))

(declare-fun b!2045777 () Bool)

(declare-fun e!1292533 () Bool)

(declare-fun tp!608781 () Bool)

(assert (=> b!2045777 (= e!1292533 tp!608781)))

(declare-fun b!2045778 () Bool)

(declare-fun tp!608779 () Bool)

(assert (=> b!2045778 (= e!1292534 tp!608779)))

(declare-fun setIsEmpty!11912 () Bool)

(assert (=> setIsEmpty!11912 setRes!11912))

(declare-fun setElem!11912 () Context!2046)

(declare-fun tp!608780 () Bool)

(declare-fun setNonEmpty!11912 () Bool)

(assert (=> setNonEmpty!11912 (= setRes!11912 (and tp!608780 (inv!29828 setElem!11912) e!1292533))))

(declare-fun setRest!11912 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11912 (= (_2!12102 (h!27866 mapDefault!9337)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11912 true) setRest!11912))))

(assert (= b!2045776 b!2045778))

(assert (= (and b!2045776 condSetEmpty!11912) setIsEmpty!11912))

(assert (= (and b!2045776 (not condSetEmpty!11912)) setNonEmpty!11912))

(assert (= setNonEmpty!11912 b!2045777))

(assert (= (and b!2045423 ((_ is Cons!22465) mapDefault!9337)) b!2045776))

(declare-fun m!2489695 () Bool)

(assert (=> b!2045776 m!2489695))

(declare-fun m!2489697 () Bool)

(assert (=> setNonEmpty!11912 m!2489697))

(declare-fun setIsEmpty!11913 () Bool)

(declare-fun setRes!11913 () Bool)

(assert (=> setIsEmpty!11913 setRes!11913))

(declare-fun b!2045779 () Bool)

(declare-fun e!1292536 () Bool)

(declare-fun tp!608786 () Bool)

(assert (=> b!2045779 (= e!1292536 tp!608786)))

(declare-fun b!2045780 () Bool)

(declare-fun e!1292535 () Bool)

(declare-fun tp!608785 () Bool)

(assert (=> b!2045780 (= e!1292535 tp!608785)))

(declare-fun tp!608783 () Bool)

(declare-fun setElem!11913 () Context!2046)

(declare-fun setNonEmpty!11913 () Bool)

(assert (=> setNonEmpty!11913 (= setRes!11913 (and tp!608783 (inv!29828 setElem!11913) e!1292536))))

(declare-fun setRest!11913 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11913 (= (_2!12105 (h!27868 mapDefault!9336)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11913 true) setRest!11913))))

(declare-fun tp!608782 () Bool)

(declare-fun tp!608784 () Bool)

(declare-fun e!1292537 () Bool)

(declare-fun b!2045781 () Bool)

(assert (=> b!2045781 (= e!1292537 (and tp!608784 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapDefault!9336)))) e!1292535 tp_is_empty!9301 setRes!11913 tp!608782))))

(declare-fun condSetEmpty!11913 () Bool)

(assert (=> b!2045781 (= condSetEmpty!11913 (= (_2!12105 (h!27868 mapDefault!9336)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045403 (= tp!608556 e!1292537)))

(assert (= b!2045781 b!2045780))

(assert (= (and b!2045781 condSetEmpty!11913) setIsEmpty!11913))

(assert (= (and b!2045781 (not condSetEmpty!11913)) setNonEmpty!11913))

(assert (= setNonEmpty!11913 b!2045779))

(assert (= (and b!2045403 ((_ is Cons!22467) mapDefault!9336)) b!2045781))

(declare-fun m!2489699 () Bool)

(assert (=> setNonEmpty!11913 m!2489699))

(declare-fun m!2489701 () Bool)

(assert (=> b!2045781 m!2489701))

(declare-fun setIsEmpty!11914 () Bool)

(declare-fun setRes!11914 () Bool)

(assert (=> setIsEmpty!11914 setRes!11914))

(declare-fun b!2045782 () Bool)

(declare-fun e!1292539 () Bool)

(declare-fun tp!608791 () Bool)

(assert (=> b!2045782 (= e!1292539 tp!608791)))

(declare-fun b!2045783 () Bool)

(declare-fun e!1292538 () Bool)

(declare-fun tp!608790 () Bool)

(assert (=> b!2045783 (= e!1292538 tp!608790)))

(declare-fun setElem!11914 () Context!2046)

(declare-fun tp!608788 () Bool)

(declare-fun setNonEmpty!11914 () Bool)

(assert (=> setNonEmpty!11914 (= setRes!11914 (and tp!608788 (inv!29828 setElem!11914) e!1292539))))

(declare-fun setRest!11914 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11914 (= (_2!12105 (h!27868 (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11914 true) setRest!11914))))

(declare-fun e!1292540 () Bool)

(declare-fun tp!608787 () Bool)

(declare-fun tp!608789 () Bool)

(declare-fun b!2045784 () Bool)

(assert (=> b!2045784 (= e!1292540 (and tp!608789 (inv!29828 (_2!12104 (_1!12105 (h!27868 (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))))) e!1292538 tp_is_empty!9301 setRes!11914 tp!608787))))

(declare-fun condSetEmpty!11914 () Bool)

(assert (=> b!2045784 (= condSetEmpty!11914 (= (_2!12105 (h!27868 (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045390 (= tp!608564 e!1292540)))

(assert (= b!2045784 b!2045783))

(assert (= (and b!2045784 condSetEmpty!11914) setIsEmpty!11914))

(assert (= (and b!2045784 (not condSetEmpty!11914)) setNonEmpty!11914))

(assert (= setNonEmpty!11914 b!2045782))

(assert (= (and b!2045390 ((_ is Cons!22467) (zeroValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))) b!2045784))

(declare-fun m!2489703 () Bool)

(assert (=> setNonEmpty!11914 m!2489703))

(declare-fun m!2489705 () Bool)

(assert (=> b!2045784 m!2489705))

(declare-fun setIsEmpty!11915 () Bool)

(declare-fun setRes!11915 () Bool)

(assert (=> setIsEmpty!11915 setRes!11915))

(declare-fun b!2045785 () Bool)

(declare-fun e!1292542 () Bool)

(declare-fun tp!608796 () Bool)

(assert (=> b!2045785 (= e!1292542 tp!608796)))

(declare-fun b!2045786 () Bool)

(declare-fun e!1292541 () Bool)

(declare-fun tp!608795 () Bool)

(assert (=> b!2045786 (= e!1292541 tp!608795)))

(declare-fun setElem!11915 () Context!2046)

(declare-fun setNonEmpty!11915 () Bool)

(declare-fun tp!608793 () Bool)

(assert (=> setNonEmpty!11915 (= setRes!11915 (and tp!608793 (inv!29828 setElem!11915) e!1292542))))

(declare-fun setRest!11915 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11915 (= (_2!12105 (h!27868 (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11915 true) setRest!11915))))

(declare-fun e!1292543 () Bool)

(declare-fun tp!608794 () Bool)

(declare-fun tp!608792 () Bool)

(declare-fun b!2045787 () Bool)

(assert (=> b!2045787 (= e!1292543 (and tp!608794 (inv!29828 (_2!12104 (_1!12105 (h!27868 (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))))) e!1292541 tp_is_empty!9301 setRes!11915 tp!608792))))

(declare-fun condSetEmpty!11915 () Bool)

(assert (=> b!2045787 (= condSetEmpty!11915 (= (_2!12105 (h!27868 (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045390 (= tp!608536 e!1292543)))

(assert (= b!2045787 b!2045786))

(assert (= (and b!2045787 condSetEmpty!11915) setIsEmpty!11915))

(assert (= (and b!2045787 (not condSetEmpty!11915)) setNonEmpty!11915))

(assert (= setNonEmpty!11915 b!2045785))

(assert (= (and b!2045390 ((_ is Cons!22467) (minValue!2279 (v!27149 (underlying!4237 (v!27150 (underlying!4238 (cache!2316 cacheDown!575)))))))) b!2045787))

(declare-fun m!2489707 () Bool)

(assert (=> setNonEmpty!11915 m!2489707))

(declare-fun m!2489709 () Bool)

(assert (=> b!2045787 m!2489709))

(declare-fun b!2045790 () Bool)

(declare-fun e!1292544 () Bool)

(declare-fun tp!608801 () Bool)

(assert (=> b!2045790 (= e!1292544 tp!608801)))

(declare-fun b!2045791 () Bool)

(declare-fun tp!608798 () Bool)

(declare-fun tp!608797 () Bool)

(assert (=> b!2045791 (= e!1292544 (and tp!608798 tp!608797))))

(assert (=> b!2045409 (= tp!608550 e!1292544)))

(declare-fun b!2045788 () Bool)

(assert (=> b!2045788 (= e!1292544 tp_is_empty!9301)))

(declare-fun b!2045789 () Bool)

(declare-fun tp!608799 () Bool)

(declare-fun tp!608800 () Bool)

(assert (=> b!2045789 (= e!1292544 (and tp!608799 tp!608800))))

(assert (= (and b!2045409 ((_ is ElementMatch!5453) (regex!4025 (h!27869 rules!1563)))) b!2045788))

(assert (= (and b!2045409 ((_ is Concat!9615) (regex!4025 (h!27869 rules!1563)))) b!2045789))

(assert (= (and b!2045409 ((_ is Star!5453) (regex!4025 (h!27869 rules!1563)))) b!2045790))

(assert (= (and b!2045409 ((_ is Union!5453) (regex!4025 (h!27869 rules!1563)))) b!2045791))

(declare-fun setIsEmpty!11916 () Bool)

(declare-fun setRes!11916 () Bool)

(assert (=> setIsEmpty!11916 setRes!11916))

(declare-fun b!2045792 () Bool)

(declare-fun e!1292546 () Bool)

(declare-fun tp!608806 () Bool)

(assert (=> b!2045792 (= e!1292546 tp!608806)))

(declare-fun b!2045793 () Bool)

(declare-fun e!1292545 () Bool)

(declare-fun tp!608805 () Bool)

(assert (=> b!2045793 (= e!1292545 tp!608805)))

(declare-fun tp!608803 () Bool)

(declare-fun setNonEmpty!11916 () Bool)

(declare-fun setElem!11916 () Context!2046)

(assert (=> setNonEmpty!11916 (= setRes!11916 (and tp!608803 (inv!29828 setElem!11916) e!1292546))))

(declare-fun setRest!11916 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11916 (= (_2!12105 (h!27868 mapDefault!9335)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11916 true) setRest!11916))))

(declare-fun tp!608802 () Bool)

(declare-fun b!2045794 () Bool)

(declare-fun tp!608804 () Bool)

(declare-fun e!1292547 () Bool)

(assert (=> b!2045794 (= e!1292547 (and tp!608804 (inv!29828 (_2!12104 (_1!12105 (h!27868 mapDefault!9335)))) e!1292545 tp_is_empty!9301 setRes!11916 tp!608802))))

(declare-fun condSetEmpty!11916 () Bool)

(assert (=> b!2045794 (= condSetEmpty!11916 (= (_2!12105 (h!27868 mapDefault!9335)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045408 (= tp!608562 e!1292547)))

(assert (= b!2045794 b!2045793))

(assert (= (and b!2045794 condSetEmpty!11916) setIsEmpty!11916))

(assert (= (and b!2045794 (not condSetEmpty!11916)) setNonEmpty!11916))

(assert (= setNonEmpty!11916 b!2045792))

(assert (= (and b!2045408 ((_ is Cons!22467) mapDefault!9335)) b!2045794))

(declare-fun m!2489711 () Bool)

(assert (=> setNonEmpty!11916 m!2489711))

(declare-fun m!2489713 () Bool)

(assert (=> b!2045794 m!2489713))

(declare-fun e!1292548 () Bool)

(declare-fun setRes!11917 () Bool)

(declare-fun tp!608807 () Bool)

(declare-fun b!2045795 () Bool)

(declare-fun e!1292550 () Bool)

(assert (=> b!2045795 (= e!1292548 (and (inv!29828 (_1!12101 (_1!12102 (h!27866 mapDefault!9334)))) e!1292550 tp_is_empty!9301 setRes!11917 tp!608807))))

(declare-fun condSetEmpty!11917 () Bool)

(assert (=> b!2045795 (= condSetEmpty!11917 (= (_2!12102 (h!27866 mapDefault!9334)) ((as const (Array Context!2046 Bool)) false)))))

(assert (=> b!2045407 (= tp!608545 e!1292548)))

(declare-fun b!2045796 () Bool)

(declare-fun e!1292549 () Bool)

(declare-fun tp!608810 () Bool)

(assert (=> b!2045796 (= e!1292549 tp!608810)))

(declare-fun b!2045797 () Bool)

(declare-fun tp!608808 () Bool)

(assert (=> b!2045797 (= e!1292550 tp!608808)))

(declare-fun setIsEmpty!11917 () Bool)

(assert (=> setIsEmpty!11917 setRes!11917))

(declare-fun setElem!11917 () Context!2046)

(declare-fun setNonEmpty!11917 () Bool)

(declare-fun tp!608809 () Bool)

(assert (=> setNonEmpty!11917 (= setRes!11917 (and tp!608809 (inv!29828 setElem!11917) e!1292549))))

(declare-fun setRest!11917 () (InoxSet Context!2046))

(assert (=> setNonEmpty!11917 (= (_2!12102 (h!27866 mapDefault!9334)) ((_ map or) (store ((as const (Array Context!2046 Bool)) false) setElem!11917 true) setRest!11917))))

(assert (= b!2045795 b!2045797))

(assert (= (and b!2045795 condSetEmpty!11917) setIsEmpty!11917))

(assert (= (and b!2045795 (not condSetEmpty!11917)) setNonEmpty!11917))

(assert (= setNonEmpty!11917 b!2045796))

(assert (= (and b!2045407 ((_ is Cons!22465) mapDefault!9334)) b!2045795))

(declare-fun m!2489715 () Bool)

(assert (=> b!2045795 m!2489715))

(declare-fun m!2489717 () Bool)

(assert (=> setNonEmpty!11917 m!2489717))

(declare-fun b_lambda!69059 () Bool)

(assert (= b_lambda!69057 (or (and b!2045379 b_free!57229) (and b!2045413 b_free!57237 (= (toChars!5567 (transformation!4025 (h!27869 rules!1563))) (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))))) (and b!2045760 b_free!57251 (= (toChars!5567 (transformation!4025 (h!27869 (t!191666 rules!1563)))) (toChars!5567 (transformation!4025 (rule!6260 (_1!12103 (v!27148 (_1!12106 err!3153)))))))) b_lambda!69059)))

(check-sat (not b!2045731) (not b!2045758) (not b!2045515) (not b!2045790) (not b!2045605) (not mapNonEmpty!9343) (not b!2045492) (not b!2045513) (not b!2045749) (not b!2045774) (not b!2045729) (not b!2045771) (not b!2045737) (not b!2045734) (not b!2045524) (not b!2045705) (not b!2045689) (not b!2045765) (not b!2045549) (not b!2045461) (not b!2045773) (not mapNonEmpty!9340) (not d!625752) (not b!2045544) (not b!2045561) (not mapNonEmpty!9344) (not b_next!57947) (not setNonEmpty!11901) (not setNonEmpty!11886) (not b!2045578) (not b!2045786) (not b!2045728) (not b!2045654) (not b!2045797) (not tb!128981) (not setNonEmpty!11913) (not d!625724) (not d!625760) (not b!2045435) (not b_next!57949) (not b!2045560) (not b!2045480) (not b!2045759) (not d!625682) b_and!163183 (not b!2045722) (not mapNonEmpty!9345) (not b!2045563) (not b!2045638) (not b!2045591) (not setNonEmpty!11905) (not b!2045542) (not b!2045768) (not b!2045531) (not d!625670) (not b!2045550) (not b!2045514) (not b!2045416) (not setNonEmpty!11912) (not b!2045767) (not bm!125311) (not b_next!57945) (not b!2045781) (not d!625704) (not b!2045511) (not b!2045668) (not d!625666) (not b!2045616) (not b!2045527) (not d!625678) (not bm!125310) (not b!2045387) (not b!2045772) (not d!625774) (not setNonEmpty!11907) (not b!2045528) (not b_next!57935) (not b!2045704) (not d!625758) (not b!2045789) (not d!625738) (not d!625680) (not b!2045685) (not b!2045667) (not b!2045430) (not b!2045530) (not b!2045594) (not b!2045735) (not setNonEmpty!11899) (not b!2045782) (not b!2045727) (not b!2045791) (not b!2045516) (not b!2045723) (not b!2045703) (not b!2045626) (not b!2045762) (not b!2045746) (not b!2045769) (not b_next!57937) (not b!2045792) (not b!2045487) (not b!2045394) (not b_next!57953) (not b!2045795) (not d!625714) (not b!2045733) (not b!2045459) (not b!2045592) (not b!2045543) (not b!2045491) (not b!2045656) (not b!2045780) (not setNonEmpty!11916) (not b!2045529) (not b!2045740) (not d!625720) (not b!2045458) (not b!2045540) (not b!2045432) (not b!2045776) (not setNonEmpty!11908) (not b!2045565) (not b_next!57941) (not b!2045449) (not b_next!57931) (not b!2045738) (not setNonEmpty!11909) (not b!2045438) (not b!2045777) (not b!2045698) (not b_next!57939) b_and!163179 (not b!2045615) (not b!2045610) (not b!2045525) (not b!2045658) (not b!2045509) (not b!2045761) (not setNonEmpty!11903) (not b!2045587) (not d!625740) b_and!163195 (not d!625734) b_and!163171 (not b!2045611) (not b!2045400) tp_is_empty!9301 (not b!2045625) (not d!625686) (not b!2045725) (not b!2045747) (not b_next!57951) (not setNonEmpty!11896) (not b!2045739) (not b!2045700) (not d!625718) (not b!2045794) (not setNonEmpty!11910) (not b!2045796) (not setNonEmpty!11906) (not d!625700) (not d!625702) (not b!2045546) (not d!625674) (not b!2045370) (not b!2045581) b_and!163175 (not b_next!57943) (not setNonEmpty!11911) (not b!2045688) (not b!2045521) (not b_next!57955) (not b!2045783) (not b!2045627) (not setNonEmpty!11887) (not b!2045468) (not b!2045590) (not b!2045785) (not d!625722) (not b!2045736) (not b!2045583) (not setNonEmpty!11895) (not b!2045606) b_and!163165 (not b!2045655) (not b!2045687) b_and!163189 (not d!625780) (not b!2045787) (not d!625676) (not b!2045748) (not b!2045657) (not b!2045586) (not d!625778) (not b!2045726) (not b!2045770) (not b!2045699) (not b!2045701) (not d!625748) (not b!2045488) (not b!2045636) (not b!2045707) (not setNonEmpty!11900) (not b!2045494) (not d!625772) (not setNonEmpty!11917) (not b!2045669) (not d!625776) (not b!2045547) (not setNonEmpty!11890) (not b!2045518) (not b!2045708) (not b!2045609) (not b!2045741) (not b!2045766) b_and!163193 b_and!163181 (not d!625728) b_and!163191 (not b!2045637) (not b!2045653) (not b!2045730) (not b!2045724) (not b!2045512) (not bm!125309) (not b!2045443) (not b!2045721) (not b_next!57933) (not b!2045576) (not b!2045588) (not setNonEmpty!11914) (not setNonEmpty!11904) b_and!163187 (not b!2045793) b_and!163167 (not d!625690) (not b!2045580) (not b!2045706) (not b!2045482) (not b!2045702) (not b!2045608) (not b!2045541) (not b!2045612) (not b!2045763) (not d!625698) (not b!2045548) (not b!2045584) (not d!625736) (not b_lambda!69059) (not d!625708) (not b!2045784) (not d!625750) (not b_next!57929) b_and!163173 (not b!2045470) (not b!2045779) (not b!2045732) (not b!2045684) (not b!2045778) (not setNonEmpty!11915) (not b!2045775) (not b!2045686) (not b!2045709) (not b!2045444) (not b!2045481) (not b!2045764) b_and!163185 (not d!625726) (not setNonEmpty!11902) (not d!625706) (not b!2045589))
(check-sat (not b_next!57947) (not b_next!57949) b_and!163183 (not b_next!57945) (not b_next!57935) (not b_next!57937) (not b_next!57953) (not b_next!57951) b_and!163191 (not b_next!57933) b_and!163185 (not b_next!57941) (not b_next!57931) (not b_next!57939) b_and!163179 b_and!163171 b_and!163195 b_and!163175 (not b_next!57943) (not b_next!57955) b_and!163165 b_and!163189 b_and!163193 b_and!163181 b_and!163187 b_and!163167 (not b_next!57929) b_and!163173)
