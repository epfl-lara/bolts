; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2274 () Bool)

(assert start!2274)

(declare-fun b!41184 () Bool)

(declare-fun b_free!909 () Bool)

(declare-fun b_next!909 () Bool)

(assert (=> b!41184 (= b_free!909 (not b_next!909))))

(declare-fun tp!28417 () Bool)

(declare-fun b_and!943 () Bool)

(assert (=> b!41184 (= tp!28417 b_and!943)))

(declare-fun b!41174 () Bool)

(declare-fun b_free!911 () Bool)

(declare-fun b_next!911 () Bool)

(assert (=> b!41174 (= b_free!911 (not b_next!911))))

(declare-fun tp!28435 () Bool)

(declare-fun b_and!945 () Bool)

(assert (=> b!41174 (= tp!28435 b_and!945)))

(declare-fun b!41168 () Bool)

(declare-fun b_free!913 () Bool)

(declare-fun b_next!913 () Bool)

(assert (=> b!41168 (= b_free!913 (not b_next!913))))

(declare-fun tp!28430 () Bool)

(declare-fun b_and!947 () Bool)

(assert (=> b!41168 (= tp!28430 b_and!947)))

(declare-fun b!41190 () Bool)

(declare-fun b_free!915 () Bool)

(declare-fun b_next!915 () Bool)

(assert (=> b!41190 (= b_free!915 (not b_next!915))))

(declare-fun tp!28428 () Bool)

(declare-fun b_and!949 () Bool)

(assert (=> b!41190 (= tp!28428 b_and!949)))

(declare-fun b!41173 () Bool)

(declare-fun b_free!917 () Bool)

(declare-fun b_next!917 () Bool)

(assert (=> b!41173 (= b_free!917 (not b_next!917))))

(declare-fun tp!28434 () Bool)

(declare-fun b_and!951 () Bool)

(assert (=> b!41173 (= tp!28434 b_and!951)))

(declare-fun b!41180 () Bool)

(declare-fun b_free!919 () Bool)

(declare-fun b_next!919 () Bool)

(assert (=> b!41180 (= b_free!919 (not b_next!919))))

(declare-fun tp!28431 () Bool)

(declare-fun b_and!953 () Bool)

(assert (=> b!41180 (= tp!28431 b_and!953)))

(declare-fun b!41211 () Bool)

(declare-fun e!21522 () Bool)

(assert (=> b!41211 (= e!21522 true)))

(declare-fun b!41210 () Bool)

(declare-fun e!21521 () Bool)

(assert (=> b!41210 (= e!21521 e!21522)))

(declare-fun b!41209 () Bool)

(declare-fun e!21520 () Bool)

(assert (=> b!41209 (= e!21520 e!21521)))

(declare-fun b!41191 () Bool)

(assert (=> b!41191 e!21520))

(assert (= b!41210 b!41211))

(assert (= b!41209 b!41210))

(declare-datatypes ((List!587 0))(
  ( (Nil!585) (Cons!585 (h!5981 (_ BitVec 16)) (t!16039 List!587)) )
))
(declare-datatypes ((TokenValue!141 0))(
  ( (FloatLiteralValue!282 (text!1432 List!587)) (TokenValueExt!140 (__x!1026 Int)) (Broken!705 (value!7085 List!587)) (Object!142) (End!141) (Def!141) (Underscore!141) (Match!141) (Else!141) (Error!141) (Case!141) (If!141) (Extends!141) (Abstract!141) (Class!141) (Val!141) (DelimiterValue!282 (del!201 List!587)) (KeywordValue!147 (value!7086 List!587)) (CommentValue!282 (value!7087 List!587)) (WhitespaceValue!282 (value!7088 List!587)) (IndentationValue!141 (value!7089 List!587)) (String!996) (Int32!141) (Broken!706 (value!7090 List!587)) (Boolean!142) (Unit!261) (OperatorValue!144 (op!201 List!587)) (IdentifierValue!282 (value!7091 List!587)) (IdentifierValue!283 (value!7092 List!587)) (WhitespaceValue!283 (value!7093 List!587)) (True!282) (False!282) (Broken!707 (value!7094 List!587)) (Broken!708 (value!7095 List!587)) (True!283) (RightBrace!141) (RightBracket!141) (Colon!141) (Null!141) (Comma!141) (LeftBracket!141) (False!283) (LeftBrace!141) (ImaginaryLiteralValue!141 (text!1433 List!587)) (StringLiteralValue!423 (value!7096 List!587)) (EOFValue!141 (value!7097 List!587)) (IdentValue!141 (value!7098 List!587)) (DelimiterValue!283 (value!7099 List!587)) (DedentValue!141 (value!7100 List!587)) (NewLineValue!141 (value!7101 List!587)) (IntegerValue!423 (value!7102 (_ BitVec 32)) (text!1434 List!587)) (IntegerValue!424 (value!7103 Int) (text!1435 List!587)) (Times!141) (Or!141) (Equal!141) (Minus!141) (Broken!709 (value!7104 List!587)) (And!141) (Div!141) (LessEqual!141) (Mod!141) (Concat!356) (Not!141) (Plus!141) (SpaceValue!141 (value!7105 List!587)) (IntegerValue!425 (value!7106 Int) (text!1436 List!587)) (StringLiteralValue!424 (text!1437 List!587)) (FloatLiteralValue!283 (text!1438 List!587)) (BytesLiteralValue!141 (value!7107 List!587)) (CommentValue!283 (value!7108 List!587)) (StringLiteralValue!425 (value!7109 List!587)) (ErrorTokenValue!141 (msg!202 List!587)) )
))
(declare-datatypes ((Regex!215 0))(
  ( (ElementMatch!215 (c!15830 (_ BitVec 16))) (Concat!357 (regOne!942 Regex!215) (regTwo!942 Regex!215)) (EmptyExpr!215) (Star!215 (reg!544 Regex!215)) (EmptyLang!215) (Union!215 (regOne!943 Regex!215) (regTwo!943 Regex!215)) )
))
(declare-datatypes ((String!997 0))(
  ( (String!998 (value!7110 String)) )
))
(declare-datatypes ((IArray!211 0))(
  ( (IArray!212 (innerList!163 List!587)) )
))
(declare-datatypes ((Conc!105 0))(
  ( (Node!105 (left!514 Conc!105) (right!844 Conc!105) (csize!440 Int) (cheight!316 Int)) (Leaf!291 (xs!2684 IArray!211) (csize!441 Int)) (Empty!105) )
))
(declare-datatypes ((BalanceConc!210 0))(
  ( (BalanceConc!211 (c!15831 Conc!105)) )
))
(declare-datatypes ((TokenValueInjection!106 0))(
  ( (TokenValueInjection!107 (toValue!630 Int) (toChars!489 Int)) )
))
(declare-datatypes ((Rule!102 0))(
  ( (Rule!103 (regex!151 Regex!215) (tag!329 String!997) (isSeparator!151 Bool) (transformation!151 TokenValueInjection!106)) )
))
(declare-datatypes ((List!588 0))(
  ( (Nil!586) (Cons!586 (h!5982 Rule!102) (t!16040 List!588)) )
))
(declare-fun lt!4359 () List!588)

(get-info :version)

(assert (= (and b!41191 ((_ is Cons!586) lt!4359)) b!41209))

(declare-fun order!115 () Int)

(declare-fun lambda!693 () Int)

(declare-fun order!117 () Int)

(declare-fun dynLambda!75 (Int Int) Int)

(declare-fun dynLambda!76 (Int Int) Int)

(assert (=> b!41211 (< (dynLambda!75 order!115 (toValue!630 (transformation!151 (h!5982 lt!4359)))) (dynLambda!76 order!117 lambda!693))))

(declare-fun order!119 () Int)

(declare-fun dynLambda!77 (Int Int) Int)

(assert (=> b!41211 (< (dynLambda!77 order!119 (toChars!489 (transformation!151 (h!5982 lt!4359)))) (dynLambda!76 order!117 lambda!693))))

(declare-fun b!41158 () Bool)

(declare-fun e!21484 () Bool)

(declare-fun e!21513 () Bool)

(assert (=> b!41158 (= e!21484 e!21513)))

(declare-fun mapIsEmpty!670 () Bool)

(declare-fun mapRes!670 () Bool)

(assert (=> mapIsEmpty!670 mapRes!670))

(declare-fun b!41159 () Bool)

(declare-fun e!21491 () Bool)

(declare-fun e!21509 () Bool)

(assert (=> b!41159 (= e!21491 e!21509)))

(declare-fun b!41160 () Bool)

(declare-fun e!21485 () Bool)

(declare-fun e!21505 () Bool)

(assert (=> b!41160 (= e!21485 e!21505)))

(declare-fun b!41161 () Bool)

(declare-fun e!21490 () Bool)

(declare-fun e!21496 () Bool)

(assert (=> b!41161 (= e!21490 e!21496)))

(declare-fun b!41162 () Bool)

(declare-fun e!21498 () Bool)

(declare-datatypes ((Token!70 0))(
  ( (Token!71 (value!7111 TokenValue!141) (rule!628 Rule!102) (size!593 Int) (originalCharacters!206 List!587)) )
))
(declare-datatypes ((List!589 0))(
  ( (Nil!587) (Cons!587 (h!5983 Token!70) (t!16041 List!589)) )
))
(declare-datatypes ((IArray!213 0))(
  ( (IArray!214 (innerList!164 List!589)) )
))
(declare-datatypes ((Conc!106 0))(
  ( (Node!106 (left!515 Conc!106) (right!845 Conc!106) (csize!442 Int) (cheight!317 Int)) (Leaf!292 (xs!2685 IArray!213) (csize!443 Int)) (Empty!106) )
))
(declare-datatypes ((BalanceConc!212 0))(
  ( (BalanceConc!213 (c!15832 Conc!106)) )
))
(declare-datatypes ((PrintableTokens!14 0))(
  ( (PrintableTokens!15 (rules!4767 List!588) (tokens!763 BalanceConc!212)) )
))
(declare-datatypes ((Option!51 0))(
  ( (None!50) (Some!50 (v!12349 PrintableTokens!14)) )
))
(declare-fun lt!4348 () Option!51)

(declare-fun isDefined!7 (Option!51) Bool)

(assert (=> b!41162 (= e!21498 (not (isDefined!7 lt!4348)))))

(declare-fun b!41163 () Bool)

(declare-fun e!21495 () Bool)

(declare-fun input!525 () BalanceConc!210)

(declare-fun tp!28433 () Bool)

(declare-fun inv!867 (Conc!105) Bool)

(assert (=> b!41163 (= e!21495 (and (inv!867 (c!15831 input!525)) tp!28433))))

(declare-fun b!41164 () Bool)

(declare-fun res!29479 () Bool)

(declare-fun e!21486 () Bool)

(assert (=> b!41164 (=> (not res!29479) (not e!21486))))

(declare-fun lt!4347 () List!589)

(declare-datatypes ((LexerInterface!46 0))(
  ( (LexerInterfaceExt!43 (__x!1027 Int)) (Lexer!44) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!8 (LexerInterface!46 List!588 List!589) Bool)

(assert (=> b!41164 (= res!29479 (rulesProduceEachTokenIndividuallyList!8 Lexer!44 lt!4359 lt!4347))))

(declare-fun b!41165 () Bool)

(declare-fun e!21510 () Bool)

(declare-fun tp!28425 () Bool)

(declare-fun mapRes!671 () Bool)

(assert (=> b!41165 (= e!21510 (and tp!28425 mapRes!671))))

(declare-fun condMapEmpty!670 () Bool)

(declare-datatypes ((List!590 0))(
  ( (Nil!588) (Cons!588 (h!5984 Regex!215) (t!16042 List!590)) )
))
(declare-datatypes ((Context!146 0))(
  ( (Context!147 (exprs!573 List!590)) )
))
(declare-datatypes ((tuple3!206 0))(
  ( (tuple3!207 (_1!458 Regex!215) (_2!458 Context!146) (_3!125 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!666 0))(
  ( (tuple2!667 (_1!459 tuple3!206) (_2!459 (InoxSet Context!146))) )
))
(declare-datatypes ((List!591 0))(
  ( (Nil!589) (Cons!589 (h!5985 tuple2!666) (t!16043 List!591)) )
))
(declare-datatypes ((array!620 0))(
  ( (array!621 (arr!315 (Array (_ BitVec 32) List!591)) (size!594 (_ BitVec 32))) )
))
(declare-datatypes ((array!622 0))(
  ( (array!623 (arr!316 (Array (_ BitVec 32) (_ BitVec 64))) (size!595 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!376 0))(
  ( (LongMapFixedSize!377 (defaultEntry!526 Int) (mask!897 (_ BitVec 32)) (extraKeys!434 (_ BitVec 32)) (zeroValue!444 List!591) (minValue!444 List!591) (_size!508 (_ BitVec 32)) (_keys!479 array!622) (_values!466 array!620) (_vacant!248 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!741 0))(
  ( (Cell!742 (v!12350 LongMapFixedSize!376)) )
))
(declare-datatypes ((MutLongMap!188 0))(
  ( (LongMap!188 (underlying!571 Cell!741)) (MutLongMapExt!187 (__x!1028 Int)) )
))
(declare-datatypes ((Cell!743 0))(
  ( (Cell!744 (v!12351 MutLongMap!188)) )
))
(declare-datatypes ((Hashable!184 0))(
  ( (HashableExt!183 (__x!1029 Int)) )
))
(declare-datatypes ((MutableMap!184 0))(
  ( (MutableMapExt!183 (__x!1030 Int)) (HashMap!184 (underlying!572 Cell!743) (hashF!2052 Hashable!184) (_size!509 (_ BitVec 32)) (defaultValue!333 Int)) )
))
(declare-datatypes ((CacheDown!126 0))(
  ( (CacheDown!127 (cache!669 MutableMap!184)) )
))
(declare-fun cacheDown!333 () CacheDown!126)

(declare-fun mapDefault!670 () List!591)

(assert (=> b!41165 (= condMapEmpty!670 (= (arr!315 (_values!466 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!591)) mapDefault!670)))))

(declare-fun b!41166 () Bool)

(declare-fun res!29481 () Bool)

(assert (=> b!41166 (=> (not res!29481) (not e!21486))))

(declare-datatypes ((tuple2!668 0))(
  ( (tuple2!669 (_1!460 Context!146) (_2!460 (_ BitVec 16))) )
))
(declare-datatypes ((Hashable!185 0))(
  ( (HashableExt!184 (__x!1031 Int)) )
))
(declare-datatypes ((tuple2!670 0))(
  ( (tuple2!671 (_1!461 tuple2!668) (_2!461 (InoxSet Context!146))) )
))
(declare-datatypes ((List!592 0))(
  ( (Nil!590) (Cons!590 (h!5986 tuple2!670) (t!16044 List!592)) )
))
(declare-datatypes ((array!624 0))(
  ( (array!625 (arr!317 (Array (_ BitVec 32) List!592)) (size!596 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!378 0))(
  ( (LongMapFixedSize!379 (defaultEntry!527 Int) (mask!898 (_ BitVec 32)) (extraKeys!435 (_ BitVec 32)) (zeroValue!445 List!592) (minValue!445 List!592) (_size!510 (_ BitVec 32)) (_keys!480 array!622) (_values!467 array!624) (_vacant!249 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!745 0))(
  ( (Cell!746 (v!12352 LongMapFixedSize!378)) )
))
(declare-datatypes ((MutLongMap!189 0))(
  ( (LongMap!189 (underlying!573 Cell!745)) (MutLongMapExt!188 (__x!1032 Int)) )
))
(declare-datatypes ((Cell!747 0))(
  ( (Cell!748 (v!12353 MutLongMap!189)) )
))
(declare-datatypes ((MutableMap!185 0))(
  ( (MutableMapExt!184 (__x!1033 Int)) (HashMap!185 (underlying!574 Cell!747) (hashF!2053 Hashable!185) (_size!511 (_ BitVec 32)) (defaultValue!334 Int)) )
))
(declare-datatypes ((CacheUp!124 0))(
  ( (CacheUp!125 (cache!670 MutableMap!185)) )
))
(declare-datatypes ((tuple2!672 0))(
  ( (tuple2!673 (_1!462 BalanceConc!212) (_2!462 BalanceConc!210)) )
))
(declare-datatypes ((tuple3!208 0))(
  ( (tuple3!209 (_1!463 (InoxSet Context!146)) (_2!463 Int) (_3!126 Int)) )
))
(declare-datatypes ((tuple2!674 0))(
  ( (tuple2!675 (_1!464 tuple3!208) (_2!464 Int)) )
))
(declare-datatypes ((List!593 0))(
  ( (Nil!591) (Cons!591 (h!5987 tuple2!674) (t!16045 List!593)) )
))
(declare-datatypes ((array!626 0))(
  ( (array!627 (arr!318 (Array (_ BitVec 32) List!593)) (size!597 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!380 0))(
  ( (LongMapFixedSize!381 (defaultEntry!528 Int) (mask!899 (_ BitVec 32)) (extraKeys!436 (_ BitVec 32)) (zeroValue!446 List!593) (minValue!446 List!593) (_size!512 (_ BitVec 32)) (_keys!481 array!622) (_values!468 array!626) (_vacant!250 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!186 0))(
  ( (HashableExt!185 (__x!1034 Int)) )
))
(declare-datatypes ((Cell!749 0))(
  ( (Cell!750 (v!12354 LongMapFixedSize!380)) )
))
(declare-datatypes ((MutLongMap!190 0))(
  ( (LongMap!190 (underlying!575 Cell!749)) (MutLongMapExt!189 (__x!1035 Int)) )
))
(declare-datatypes ((Cell!751 0))(
  ( (Cell!752 (v!12355 MutLongMap!190)) )
))
(declare-datatypes ((MutableMap!186 0))(
  ( (MutableMapExt!185 (__x!1036 Int)) (HashMap!186 (underlying!576 Cell!751) (hashF!2054 Hashable!186) (_size!513 (_ BitVec 32)) (defaultValue!335 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!74 0))(
  ( (CacheFurthestNullable!75 (cache!671 MutableMap!186) (totalInput!1514 BalanceConc!210)) )
))
(declare-datatypes ((tuple4!44 0))(
  ( (tuple4!45 (_1!465 tuple2!672) (_2!465 CacheUp!124) (_3!127 CacheDown!126) (_4!22 CacheFurthestNullable!74)) )
))
(declare-fun lt!4346 () tuple4!44)

(declare-fun valid!178 (CacheDown!126) Bool)

(assert (=> b!41166 (= res!29481 (valid!178 (_3!127 lt!4346)))))

(declare-fun res!29489 () Bool)

(declare-fun e!21488 () Bool)

(assert (=> start!2274 (=> (not res!29489) (not e!21488))))

(declare-fun isEmpty!116 (List!588) Bool)

(assert (=> start!2274 (= res!29489 (not (isEmpty!116 lt!4359)))))

(declare-datatypes ((JsonLexer!54 0))(
  ( (JsonLexer!55) )
))
(declare-fun rules!109 (JsonLexer!54) List!588)

(assert (=> start!2274 (= lt!4359 (rules!109 JsonLexer!55))))

(assert (=> start!2274 e!21488))

(declare-fun inv!868 (CacheDown!126) Bool)

(assert (=> start!2274 (and (inv!868 cacheDown!333) e!21491)))

(declare-fun inv!869 (BalanceConc!210) Bool)

(assert (=> start!2274 (and (inv!869 input!525) e!21495)))

(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!74)

(declare-fun e!21497 () Bool)

(declare-fun inv!870 (CacheFurthestNullable!74) Bool)

(assert (=> start!2274 (and (inv!870 cacheFurthestNullable!45) e!21497)))

(declare-fun cacheUp!320 () CacheUp!124)

(declare-fun inv!871 (CacheUp!124) Bool)

(assert (=> start!2274 (and (inv!871 cacheUp!320) e!21484)))

(declare-fun b!41167 () Bool)

(declare-fun e!21506 () Bool)

(declare-fun tp!28427 () Bool)

(assert (=> b!41167 (= e!21506 (and (inv!867 (c!15831 (totalInput!1514 cacheFurthestNullable!45))) tp!28427))))

(declare-fun e!21501 () Bool)

(declare-fun e!21483 () Bool)

(assert (=> b!41168 (= e!21501 (and e!21483 tp!28430))))

(declare-fun b!41169 () Bool)

(declare-fun e!21482 () Bool)

(declare-fun tp!28423 () Bool)

(assert (=> b!41169 (= e!21482 (and tp!28423 mapRes!670))))

(declare-fun condMapEmpty!672 () Bool)

(declare-fun mapDefault!671 () List!593)

(assert (=> b!41169 (= condMapEmpty!672 (= (arr!318 (_values!468 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!593)) mapDefault!671)))))

(declare-fun b!41170 () Bool)

(declare-fun e!21507 () Bool)

(declare-fun e!21500 () Bool)

(assert (=> b!41170 (= e!21507 e!21500)))

(declare-fun b!41171 () Bool)

(declare-fun lt!4354 () MutLongMap!190)

(assert (=> b!41171 (= e!21483 (and e!21485 ((_ is LongMap!190) lt!4354)))))

(assert (=> b!41171 (= lt!4354 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))

(declare-fun b!41172 () Bool)

(declare-fun res!29483 () Bool)

(assert (=> b!41172 (=> (not res!29483) (not e!21488))))

(assert (=> b!41172 (= res!29483 (valid!178 cacheDown!333))))

(declare-fun tp!28418 () Bool)

(declare-fun tp!28437 () Bool)

(declare-fun array_inv!205 (array!622) Bool)

(declare-fun array_inv!206 (array!620) Bool)

(assert (=> b!41173 (= e!21496 (and tp!28434 tp!28418 tp!28437 (array_inv!205 (_keys!479 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) (array_inv!206 (_values!466 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) e!21510))))

(declare-fun tp!28416 () Bool)

(declare-fun tp!28419 () Bool)

(declare-fun e!21494 () Bool)

(declare-fun array_inv!207 (array!626) Bool)

(assert (=> b!41174 (= e!21494 (and tp!28435 tp!28416 tp!28419 (array_inv!205 (_keys!481 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) (array_inv!207 (_values!468 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) e!21482))))

(declare-fun b!41175 () Bool)

(declare-fun e!21503 () Bool)

(assert (=> b!41175 (= e!21488 e!21503)))

(declare-fun res!29480 () Bool)

(assert (=> b!41175 (=> (not res!29480) (not e!21503))))

(declare-fun lt!4349 () List!589)

(assert (=> b!41175 (= res!29480 (= lt!4347 lt!4349))))

(declare-fun lt!4351 () tuple2!672)

(declare-fun list!146 (BalanceConc!212) List!589)

(assert (=> b!41175 (= lt!4349 (list!146 (_1!462 lt!4351)))))

(assert (=> b!41175 (= lt!4347 (list!146 (_1!462 (_1!465 lt!4346))))))

(declare-fun lex!20 (LexerInterface!46 List!588 BalanceConc!210) tuple2!672)

(assert (=> b!41175 (= lt!4351 (lex!20 Lexer!44 lt!4359 input!525))))

(declare-datatypes ((Unit!262 0))(
  ( (Unit!263) )
))
(declare-fun lt!4358 () Unit!262)

(declare-fun lemmaInvariant!33 (CacheDown!126) Unit!262)

(assert (=> b!41175 (= lt!4358 (lemmaInvariant!33 (_3!127 lt!4346)))))

(declare-fun lt!4355 () Unit!262)

(declare-fun lemmaInvariant!34 (CacheUp!124) Unit!262)

(assert (=> b!41175 (= lt!4355 (lemmaInvariant!34 (_2!465 lt!4346)))))

(declare-fun lexMem!15 (LexerInterface!46 List!588 BalanceConc!210 CacheUp!124 CacheDown!126 CacheFurthestNullable!74) tuple4!44)

(assert (=> b!41175 (= lt!4346 (lexMem!15 Lexer!44 lt!4359 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!41176 () Bool)

(declare-fun res!29492 () Bool)

(assert (=> b!41176 (=> (not res!29492) (not e!21486))))

(declare-fun lt!4353 () List!587)

(declare-fun lt!4352 () tuple2!672)

(declare-fun list!147 (BalanceConc!210) List!587)

(assert (=> b!41176 (= res!29492 (= lt!4353 (list!147 (_2!462 lt!4352))))))

(declare-fun b!41177 () Bool)

(assert (=> b!41177 (= e!21486 e!21498)))

(declare-fun res!29486 () Bool)

(assert (=> b!41177 (=> (not res!29486) (not e!21498))))

(declare-fun isEmpty!117 (Option!51) Bool)

(assert (=> b!41177 (= res!29486 (not (isEmpty!117 lt!4348)))))

(declare-fun printableTokensFromTokens!2 (List!588 BalanceConc!212) Option!51)

(assert (=> b!41177 (= lt!4348 (printableTokensFromTokens!2 lt!4359 (_1!462 (_1!465 lt!4346))))))

(declare-fun b!41178 () Bool)

(declare-fun res!29488 () Bool)

(assert (=> b!41178 (=> (not res!29488) (not e!21486))))

(assert (=> b!41178 (= res!29488 (= (totalInput!1514 (_4!22 lt!4346)) input!525))))

(declare-fun b!41179 () Bool)

(declare-fun e!21489 () Bool)

(declare-fun lt!4357 () MutLongMap!189)

(assert (=> b!41179 (= e!21489 (and e!21507 ((_ is LongMap!189) lt!4357)))))

(assert (=> b!41179 (= lt!4357 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))

(declare-fun mapNonEmpty!670 () Bool)

(declare-fun mapRes!672 () Bool)

(declare-fun tp!28424 () Bool)

(declare-fun tp!28421 () Bool)

(assert (=> mapNonEmpty!670 (= mapRes!672 (and tp!28424 tp!28421))))

(declare-fun mapValue!671 () List!592)

(declare-fun mapRest!671 () (Array (_ BitVec 32) List!592))

(declare-fun mapKey!672 () (_ BitVec 32))

(assert (=> mapNonEmpty!670 (= (arr!317 (_values!467 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) (store mapRest!671 mapKey!672 mapValue!671))))

(assert (=> b!41180 (= e!21513 (and e!21489 tp!28431))))

(declare-fun b!41181 () Bool)

(declare-fun e!21508 () Bool)

(assert (=> b!41181 (= e!21503 e!21508)))

(declare-fun res!29496 () Bool)

(assert (=> b!41181 (=> (not res!29496) (not e!21508))))

(declare-fun lt!4350 () List!587)

(assert (=> b!41181 (= res!29496 (= lt!4350 lt!4353))))

(assert (=> b!41181 (= lt!4353 (list!147 (_2!462 lt!4351)))))

(assert (=> b!41181 (= lt!4350 (list!147 (_2!462 (_1!465 lt!4346))))))

(declare-fun mapNonEmpty!671 () Bool)

(declare-fun tp!28420 () Bool)

(declare-fun tp!28426 () Bool)

(assert (=> mapNonEmpty!671 (= mapRes!670 (and tp!28420 tp!28426))))

(declare-fun mapValue!672 () List!593)

(declare-fun mapKey!671 () (_ BitVec 32))

(declare-fun mapRest!672 () (Array (_ BitVec 32) List!593))

(assert (=> mapNonEmpty!671 (= (arr!318 (_values!468 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) (store mapRest!672 mapKey!671 mapValue!672))))

(declare-fun b!41182 () Bool)

(declare-fun res!29493 () Bool)

(assert (=> b!41182 (=> (not res!29493) (not e!21486))))

(declare-fun lt!4361 () List!587)

(declare-fun lexThenRulesProduceEachTokenIndividually!12 (LexerInterface!46 List!588 List!587) Bool)

(assert (=> b!41182 (= res!29493 (lexThenRulesProduceEachTokenIndividually!12 Lexer!44 lt!4359 lt!4361))))

(declare-fun b!41183 () Bool)

(assert (=> b!41183 (= e!21505 e!21494)))

(declare-fun mapIsEmpty!671 () Bool)

(assert (=> mapIsEmpty!671 mapRes!672))

(declare-fun e!21504 () Bool)

(assert (=> b!41184 (= e!21509 (and e!21504 tp!28417))))

(declare-fun b!41185 () Bool)

(declare-fun e!21511 () Bool)

(assert (=> b!41185 (= e!21511 e!21486)))

(declare-fun res!29484 () Bool)

(assert (=> b!41185 (=> (not res!29484) (not e!21486))))

(assert (=> b!41185 (= res!29484 (= lt!4349 (list!146 (_1!462 lt!4352))))))

(declare-fun lt!4356 () BalanceConc!210)

(assert (=> b!41185 (= lt!4352 (lex!20 Lexer!44 lt!4359 lt!4356))))

(declare-fun b!41186 () Bool)

(declare-fun res!29487 () Bool)

(assert (=> b!41186 (=> (not res!29487) (not e!21486))))

(declare-fun forall!62 (BalanceConc!212 Int) Bool)

(assert (=> b!41186 (= res!29487 (forall!62 (_1!462 (_1!465 lt!4346)) lambda!693))))

(declare-fun b!41187 () Bool)

(declare-fun e!21493 () Bool)

(assert (=> b!41187 (= e!21500 e!21493)))

(declare-fun b!41188 () Bool)

(declare-fun res!29495 () Bool)

(assert (=> b!41188 (=> (not res!29495) (not e!21486))))

(declare-fun valid!179 (CacheFurthestNullable!74) Bool)

(assert (=> b!41188 (= res!29495 (valid!179 (_4!22 lt!4346)))))

(declare-fun b!41189 () Bool)

(declare-fun e!21487 () Bool)

(declare-fun tp!28432 () Bool)

(assert (=> b!41189 (= e!21487 (and tp!28432 mapRes!672))))

(declare-fun condMapEmpty!671 () Bool)

(declare-fun mapDefault!672 () List!592)

(assert (=> b!41189 (= condMapEmpty!671 (= (arr!317 (_values!467 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!592)) mapDefault!672)))))

(declare-fun tp!28436 () Bool)

(declare-fun tp!28438 () Bool)

(declare-fun array_inv!208 (array!624) Bool)

(assert (=> b!41190 (= e!21493 (and tp!28428 tp!28438 tp!28436 (array_inv!205 (_keys!480 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) (array_inv!208 (_values!467 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) e!21487))))

(declare-fun res!29494 () Bool)

(assert (=> b!41191 (=> (not res!29494) (not e!21486))))

(declare-fun forall!63 (List!589 Int) Bool)

(assert (=> b!41191 (= res!29494 (forall!63 lt!4347 lambda!693))))

(declare-fun b!41192 () Bool)

(declare-fun res!29485 () Bool)

(assert (=> b!41192 (=> (not res!29485) (not e!21488))))

(assert (=> b!41192 (= res!29485 (= (totalInput!1514 cacheFurthestNullable!45) input!525))))

(declare-fun b!41193 () Bool)

(declare-fun res!29482 () Bool)

(assert (=> b!41193 (=> (not res!29482) (not e!21488))))

(declare-fun valid!180 (CacheUp!124) Bool)

(assert (=> b!41193 (= res!29482 (valid!180 cacheUp!320))))

(declare-fun b!41194 () Bool)

(declare-fun e!21499 () Bool)

(declare-fun lt!4360 () MutLongMap!188)

(assert (=> b!41194 (= e!21504 (and e!21499 ((_ is LongMap!188) lt!4360)))))

(assert (=> b!41194 (= lt!4360 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))

(declare-fun b!41195 () Bool)

(declare-fun res!29497 () Bool)

(assert (=> b!41195 (=> (not res!29497) (not e!21488))))

(assert (=> b!41195 (= res!29497 (valid!179 cacheFurthestNullable!45))))

(declare-fun b!41196 () Bool)

(assert (=> b!41196 (= e!21497 (and e!21501 (inv!869 (totalInput!1514 cacheFurthestNullable!45)) e!21506))))

(declare-fun mapIsEmpty!672 () Bool)

(assert (=> mapIsEmpty!672 mapRes!671))

(declare-fun b!41197 () Bool)

(declare-fun res!29491 () Bool)

(assert (=> b!41197 (=> (not res!29491) (not e!21488))))

(declare-fun rulesInvariant!37 (LexerInterface!46 List!588) Bool)

(assert (=> b!41197 (= res!29491 (rulesInvariant!37 Lexer!44 lt!4359))))

(declare-fun b!41198 () Bool)

(assert (=> b!41198 (= e!21508 e!21511)))

(declare-fun res!29498 () Bool)

(assert (=> b!41198 (=> (not res!29498) (not e!21511))))

(assert (=> b!41198 (= res!29498 (= (list!147 lt!4356) lt!4361))))

(declare-fun seqFromList!19 (List!587) BalanceConc!210)

(assert (=> b!41198 (= lt!4356 (seqFromList!19 lt!4361))))

(assert (=> b!41198 (= lt!4361 (list!147 input!525))))

(declare-fun b!41199 () Bool)

(assert (=> b!41199 (= e!21499 e!21490)))

(declare-fun b!41200 () Bool)

(declare-fun res!29490 () Bool)

(assert (=> b!41200 (=> (not res!29490) (not e!21486))))

(assert (=> b!41200 (= res!29490 (valid!180 (_2!465 lt!4346)))))

(declare-fun mapNonEmpty!672 () Bool)

(declare-fun tp!28429 () Bool)

(declare-fun tp!28422 () Bool)

(assert (=> mapNonEmpty!672 (= mapRes!671 (and tp!28429 tp!28422))))

(declare-fun mapKey!670 () (_ BitVec 32))

(declare-fun mapRest!670 () (Array (_ BitVec 32) List!591))

(declare-fun mapValue!670 () List!591)

(assert (=> mapNonEmpty!672 (= (arr!315 (_values!466 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) (store mapRest!670 mapKey!670 mapValue!670))))

(assert (= (and start!2274 res!29489) b!41197))

(assert (= (and b!41197 res!29491) b!41193))

(assert (= (and b!41193 res!29482) b!41172))

(assert (= (and b!41172 res!29483) b!41195))

(assert (= (and b!41195 res!29497) b!41192))

(assert (= (and b!41192 res!29485) b!41175))

(assert (= (and b!41175 res!29480) b!41181))

(assert (= (and b!41181 res!29496) b!41198))

(assert (= (and b!41198 res!29498) b!41185))

(assert (= (and b!41185 res!29484) b!41176))

(assert (= (and b!41176 res!29492) b!41182))

(assert (= (and b!41182 res!29493) b!41191))

(assert (= (and b!41191 res!29494) b!41186))

(assert (= (and b!41186 res!29487) b!41164))

(assert (= (and b!41164 res!29479) b!41200))

(assert (= (and b!41200 res!29490) b!41166))

(assert (= (and b!41166 res!29481) b!41188))

(assert (= (and b!41188 res!29495) b!41178))

(assert (= (and b!41178 res!29488) b!41177))

(assert (= (and b!41177 res!29486) b!41162))

(assert (= (and b!41165 condMapEmpty!670) mapIsEmpty!672))

(assert (= (and b!41165 (not condMapEmpty!670)) mapNonEmpty!672))

(assert (= b!41173 b!41165))

(assert (= b!41161 b!41173))

(assert (= b!41199 b!41161))

(assert (= (and b!41194 ((_ is LongMap!188) (v!12351 (underlying!572 (cache!669 cacheDown!333))))) b!41199))

(assert (= b!41184 b!41194))

(assert (= (and b!41159 ((_ is HashMap!184) (cache!669 cacheDown!333))) b!41184))

(assert (= start!2274 b!41159))

(assert (= start!2274 b!41163))

(assert (= (and b!41169 condMapEmpty!672) mapIsEmpty!670))

(assert (= (and b!41169 (not condMapEmpty!672)) mapNonEmpty!671))

(assert (= b!41174 b!41169))

(assert (= b!41183 b!41174))

(assert (= b!41160 b!41183))

(assert (= (and b!41171 ((_ is LongMap!190) (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))) b!41160))

(assert (= b!41168 b!41171))

(assert (= (and b!41196 ((_ is HashMap!186) (cache!671 cacheFurthestNullable!45))) b!41168))

(assert (= b!41196 b!41167))

(assert (= start!2274 b!41196))

(assert (= (and b!41189 condMapEmpty!671) mapIsEmpty!671))

(assert (= (and b!41189 (not condMapEmpty!671)) mapNonEmpty!670))

(assert (= b!41190 b!41189))

(assert (= b!41187 b!41190))

(assert (= b!41170 b!41187))

(assert (= (and b!41179 ((_ is LongMap!189) (v!12353 (underlying!574 (cache!670 cacheUp!320))))) b!41170))

(assert (= b!41180 b!41179))

(assert (= (and b!41158 ((_ is HashMap!185) (cache!670 cacheUp!320))) b!41180))

(assert (= start!2274 b!41158))

(declare-fun m!14462 () Bool)

(assert (=> b!41197 m!14462))

(declare-fun m!14464 () Bool)

(assert (=> b!41191 m!14464))

(declare-fun m!14466 () Bool)

(assert (=> b!41164 m!14466))

(declare-fun m!14468 () Bool)

(assert (=> b!41174 m!14468))

(declare-fun m!14470 () Bool)

(assert (=> b!41174 m!14470))

(declare-fun m!14472 () Bool)

(assert (=> b!41198 m!14472))

(declare-fun m!14474 () Bool)

(assert (=> b!41198 m!14474))

(declare-fun m!14476 () Bool)

(assert (=> b!41198 m!14476))

(declare-fun m!14478 () Bool)

(assert (=> b!41186 m!14478))

(declare-fun m!14480 () Bool)

(assert (=> b!41172 m!14480))

(declare-fun m!14482 () Bool)

(assert (=> b!41175 m!14482))

(declare-fun m!14484 () Bool)

(assert (=> b!41175 m!14484))

(declare-fun m!14486 () Bool)

(assert (=> b!41175 m!14486))

(declare-fun m!14488 () Bool)

(assert (=> b!41175 m!14488))

(declare-fun m!14490 () Bool)

(assert (=> b!41175 m!14490))

(declare-fun m!14492 () Bool)

(assert (=> b!41175 m!14492))

(declare-fun m!14494 () Bool)

(assert (=> mapNonEmpty!670 m!14494))

(declare-fun m!14496 () Bool)

(assert (=> b!41182 m!14496))

(declare-fun m!14498 () Bool)

(assert (=> mapNonEmpty!672 m!14498))

(declare-fun m!14500 () Bool)

(assert (=> b!41193 m!14500))

(declare-fun m!14502 () Bool)

(assert (=> start!2274 m!14502))

(declare-fun m!14504 () Bool)

(assert (=> start!2274 m!14504))

(declare-fun m!14506 () Bool)

(assert (=> start!2274 m!14506))

(declare-fun m!14508 () Bool)

(assert (=> start!2274 m!14508))

(declare-fun m!14510 () Bool)

(assert (=> start!2274 m!14510))

(declare-fun m!14512 () Bool)

(assert (=> start!2274 m!14512))

(declare-fun m!14514 () Bool)

(assert (=> b!41188 m!14514))

(declare-fun m!14516 () Bool)

(assert (=> b!41176 m!14516))

(declare-fun m!14518 () Bool)

(assert (=> b!41163 m!14518))

(declare-fun m!14520 () Bool)

(assert (=> b!41181 m!14520))

(declare-fun m!14522 () Bool)

(assert (=> b!41181 m!14522))

(declare-fun m!14524 () Bool)

(assert (=> b!41200 m!14524))

(declare-fun m!14526 () Bool)

(assert (=> b!41195 m!14526))

(declare-fun m!14528 () Bool)

(assert (=> b!41185 m!14528))

(declare-fun m!14530 () Bool)

(assert (=> b!41185 m!14530))

(declare-fun m!14532 () Bool)

(assert (=> b!41167 m!14532))

(declare-fun m!14534 () Bool)

(assert (=> b!41166 m!14534))

(declare-fun m!14536 () Bool)

(assert (=> b!41190 m!14536))

(declare-fun m!14538 () Bool)

(assert (=> b!41190 m!14538))

(declare-fun m!14540 () Bool)

(assert (=> mapNonEmpty!671 m!14540))

(declare-fun m!14542 () Bool)

(assert (=> b!41177 m!14542))

(declare-fun m!14544 () Bool)

(assert (=> b!41177 m!14544))

(declare-fun m!14546 () Bool)

(assert (=> b!41196 m!14546))

(declare-fun m!14548 () Bool)

(assert (=> b!41173 m!14548))

(declare-fun m!14550 () Bool)

(assert (=> b!41173 m!14550))

(declare-fun m!14552 () Bool)

(assert (=> b!41162 m!14552))

(check-sat b_and!947 (not mapNonEmpty!670) (not b!41200) (not b!41196) (not b!41162) (not b!41198) (not b!41172) (not b!41181) (not b!41177) (not start!2274) (not b_next!913) (not b!41190) (not b!41191) b_and!949 (not b!41185) (not b!41193) (not b!41169) (not b!41186) (not b!41173) (not b!41195) (not b!41166) (not b_next!911) (not b!41165) b_and!951 (not b!41167) (not b_next!909) (not mapNonEmpty!671) (not b!41175) (not b_next!919) (not b_next!917) (not b!41164) (not b!41176) b_and!943 (not b!41189) b_and!953 (not b!41197) (not b!41182) (not mapNonEmpty!672) (not b_next!915) (not b!41188) (not b!41174) (not b!41209) b_and!945 (not b!41163))
(check-sat b_and!947 b_and!949 (not b_next!911) b_and!951 (not b_next!909) (not b_next!915) (not b_next!913) b_and!945 (not b_next!919) (not b_next!917) b_and!943 b_and!953)
(get-model)

(declare-fun d!4162 () Bool)

(declare-fun list!148 (Conc!105) List!587)

(assert (=> d!4162 (= (list!147 (_2!462 lt!4351)) (list!148 (c!15831 (_2!462 lt!4351))))))

(declare-fun bs!5055 () Bool)

(assert (= bs!5055 d!4162))

(declare-fun m!14554 () Bool)

(assert (=> bs!5055 m!14554))

(assert (=> b!41181 d!4162))

(declare-fun d!4164 () Bool)

(assert (=> d!4164 (= (list!147 (_2!462 (_1!465 lt!4346))) (list!148 (c!15831 (_2!462 (_1!465 lt!4346)))))))

(declare-fun bs!5056 () Bool)

(assert (= bs!5056 d!4164))

(declare-fun m!14556 () Bool)

(assert (=> bs!5056 m!14556))

(assert (=> b!41181 d!4164))

(declare-fun d!4166 () Bool)

(declare-fun validCacheMapUp!11 (MutableMap!185) Bool)

(assert (=> d!4166 (= (valid!180 (_2!465 lt!4346)) (validCacheMapUp!11 (cache!670 (_2!465 lt!4346))))))

(declare-fun bs!5057 () Bool)

(assert (= bs!5057 d!4166))

(declare-fun m!14558 () Bool)

(assert (=> bs!5057 m!14558))

(assert (=> b!41200 d!4166))

(declare-fun d!4168 () Bool)

(assert (=> d!4168 (= (list!147 lt!4356) (list!148 (c!15831 lt!4356)))))

(declare-fun bs!5058 () Bool)

(assert (= bs!5058 d!4168))

(declare-fun m!14560 () Bool)

(assert (=> bs!5058 m!14560))

(assert (=> b!41198 d!4168))

(declare-fun d!4170 () Bool)

(declare-fun fromListB!3 (List!587) BalanceConc!210)

(assert (=> d!4170 (= (seqFromList!19 lt!4361) (fromListB!3 lt!4361))))

(declare-fun bs!5059 () Bool)

(assert (= bs!5059 d!4170))

(declare-fun m!14562 () Bool)

(assert (=> bs!5059 m!14562))

(assert (=> b!41198 d!4170))

(declare-fun d!4172 () Bool)

(assert (=> d!4172 (= (list!147 input!525) (list!148 (c!15831 input!525)))))

(declare-fun bs!5060 () Bool)

(assert (= bs!5060 d!4172))

(declare-fun m!14564 () Bool)

(assert (=> bs!5060 m!14564))

(assert (=> b!41198 d!4172))

(declare-fun d!4174 () Bool)

(declare-fun c!15835 () Bool)

(assert (=> d!4174 (= c!15835 ((_ is Node!105) (c!15831 input!525)))))

(declare-fun e!21527 () Bool)

(assert (=> d!4174 (= (inv!867 (c!15831 input!525)) e!21527)))

(declare-fun b!41218 () Bool)

(declare-fun inv!872 (Conc!105) Bool)

(assert (=> b!41218 (= e!21527 (inv!872 (c!15831 input!525)))))

(declare-fun b!41219 () Bool)

(declare-fun e!21528 () Bool)

(assert (=> b!41219 (= e!21527 e!21528)))

(declare-fun res!29503 () Bool)

(assert (=> b!41219 (= res!29503 (not ((_ is Leaf!291) (c!15831 input!525))))))

(assert (=> b!41219 (=> res!29503 e!21528)))

(declare-fun b!41220 () Bool)

(declare-fun inv!873 (Conc!105) Bool)

(assert (=> b!41220 (= e!21528 (inv!873 (c!15831 input!525)))))

(assert (= (and d!4174 c!15835) b!41218))

(assert (= (and d!4174 (not c!15835)) b!41219))

(assert (= (and b!41219 (not res!29503)) b!41220))

(declare-fun m!14566 () Bool)

(assert (=> b!41218 m!14566))

(declare-fun m!14568 () Bool)

(assert (=> b!41220 m!14568))

(assert (=> b!41163 d!4174))

(declare-fun bs!5061 () Bool)

(declare-fun d!4176 () Bool)

(assert (= bs!5061 (and d!4176 b!41191)))

(declare-fun lambda!696 () Int)

(assert (=> bs!5061 (= lambda!696 lambda!693)))

(declare-fun b!41229 () Bool)

(declare-fun e!21537 () Bool)

(assert (=> b!41229 (= e!21537 true)))

(declare-fun b!41228 () Bool)

(declare-fun e!21536 () Bool)

(assert (=> b!41228 (= e!21536 e!21537)))

(declare-fun b!41227 () Bool)

(declare-fun e!21535 () Bool)

(assert (=> b!41227 (= e!21535 e!21536)))

(assert (=> d!4176 e!21535))

(assert (= b!41228 b!41229))

(assert (= b!41227 b!41228))

(assert (= (and d!4176 ((_ is Cons!586) lt!4359)) b!41227))

(assert (=> b!41229 (< (dynLambda!75 order!115 (toValue!630 (transformation!151 (h!5982 lt!4359)))) (dynLambda!76 order!117 lambda!696))))

(assert (=> b!41229 (< (dynLambda!77 order!119 (toChars!489 (transformation!151 (h!5982 lt!4359)))) (dynLambda!76 order!117 lambda!696))))

(assert (=> d!4176 true))

(declare-fun lt!4364 () Bool)

(assert (=> d!4176 (= lt!4364 (forall!63 lt!4347 lambda!696))))

(declare-fun e!21534 () Bool)

(assert (=> d!4176 (= lt!4364 e!21534)))

(declare-fun res!29509 () Bool)

(assert (=> d!4176 (=> res!29509 e!21534)))

(assert (=> d!4176 (= res!29509 (not ((_ is Cons!587) lt!4347)))))

(assert (=> d!4176 (not (isEmpty!116 lt!4359))))

(assert (=> d!4176 (= (rulesProduceEachTokenIndividuallyList!8 Lexer!44 lt!4359 lt!4347) lt!4364)))

(declare-fun b!41225 () Bool)

(declare-fun e!21533 () Bool)

(assert (=> b!41225 (= e!21534 e!21533)))

(declare-fun res!29508 () Bool)

(assert (=> b!41225 (=> (not res!29508) (not e!21533))))

(declare-fun rulesProduceIndividualToken!4 (LexerInterface!46 List!588 Token!70) Bool)

(assert (=> b!41225 (= res!29508 (rulesProduceIndividualToken!4 Lexer!44 lt!4359 (h!5983 lt!4347)))))

(declare-fun b!41226 () Bool)

(assert (=> b!41226 (= e!21533 (rulesProduceEachTokenIndividuallyList!8 Lexer!44 lt!4359 (t!16041 lt!4347)))))

(assert (= (and d!4176 (not res!29509)) b!41225))

(assert (= (and b!41225 res!29508) b!41226))

(declare-fun m!14570 () Bool)

(assert (=> d!4176 m!14570))

(assert (=> d!4176 m!14504))

(declare-fun m!14572 () Bool)

(assert (=> b!41225 m!14572))

(declare-fun m!14574 () Bool)

(assert (=> b!41226 m!14574))

(assert (=> b!41164 d!4176))

(declare-fun d!4178 () Bool)

(assert (=> d!4178 (= (isDefined!7 lt!4348) (not (isEmpty!117 lt!4348)))))

(declare-fun bs!5062 () Bool)

(assert (= bs!5062 d!4178))

(assert (=> bs!5062 m!14542))

(assert (=> b!41162 d!4178))

(declare-fun d!4180 () Bool)

(declare-fun e!21547 () Bool)

(assert (=> d!4180 e!21547))

(declare-fun res!29523 () Bool)

(assert (=> d!4180 (=> (not res!29523) (not e!21547))))

(declare-fun lt!4376 () Bool)

(assert (=> d!4180 (= res!29523 lt!4376)))

(declare-fun e!21549 () Bool)

(assert (=> d!4180 (= lt!4376 e!21549)))

(declare-fun res!29520 () Bool)

(assert (=> d!4180 (=> res!29520 e!21549)))

(declare-fun e!21546 () Bool)

(assert (=> d!4180 (= res!29520 (not e!21546))))

(declare-fun res!29522 () Bool)

(assert (=> d!4180 (=> (not res!29522) (not e!21546))))

(assert (=> d!4180 (= res!29522 (not (isEmpty!116 lt!4359)))))

(assert (=> d!4180 (= (lexThenRulesProduceEachTokenIndividually!12 Lexer!44 lt!4359 lt!4361) lt!4376)))

(declare-fun b!41242 () Bool)

(declare-fun lt!4375 () tuple2!672)

(assert (=> b!41242 (= e!21549 (rulesProduceEachTokenIndividuallyList!8 Lexer!44 lt!4359 (list!146 (_1!462 lt!4375))))))

(declare-fun lt!4378 () Unit!262)

(declare-fun lt!4379 () Unit!262)

(assert (=> b!41242 (= lt!4378 lt!4379)))

(declare-fun lt!4377 () List!589)

(declare-fun rulesProduceEachTokenIndividually!2 (LexerInterface!46 List!588 BalanceConc!212) Bool)

(declare-fun seqFromList!20 (List!589) BalanceConc!212)

(assert (=> b!41242 (rulesProduceEachTokenIndividually!2 Lexer!44 lt!4359 (seqFromList!20 lt!4377))))

(declare-fun lemmaLexThenRulesProducesEachTokenIndividually!2 (LexerInterface!46 List!588 List!587 List!589) Unit!262)

(assert (=> b!41242 (= lt!4379 (lemmaLexThenRulesProducesEachTokenIndividually!2 Lexer!44 lt!4359 lt!4361 lt!4377))))

(assert (=> b!41242 (= lt!4377 (list!146 (_1!462 lt!4375)))))

(assert (=> b!41242 (= lt!4375 (lex!20 Lexer!44 lt!4359 (seqFromList!19 lt!4361)))))

(declare-fun b!41243 () Bool)

(declare-fun res!29524 () Bool)

(declare-fun e!21548 () Bool)

(assert (=> b!41243 (=> res!29524 e!21548)))

(declare-fun rulesInvariant!38 (LexerInterface!46 List!588) Bool)

(assert (=> b!41243 (= res!29524 (not (rulesInvariant!38 Lexer!44 lt!4359)))))

(declare-fun b!41244 () Bool)

(assert (=> b!41244 (= e!21547 e!21548)))

(declare-fun res!29521 () Bool)

(assert (=> b!41244 (=> res!29521 e!21548)))

(assert (=> b!41244 (= res!29521 (isEmpty!116 lt!4359))))

(declare-fun b!41245 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!9 (LexerInterface!46 List!588 List!589) Bool)

(declare-fun lex!21 (LexerInterface!46 List!588 BalanceConc!210) tuple2!672)

(assert (=> b!41245 (= e!21548 (rulesProduceEachTokenIndividuallyList!9 Lexer!44 lt!4359 (list!146 (_1!462 (lex!21 Lexer!44 lt!4359 (seqFromList!19 lt!4361))))))))

(declare-fun b!41246 () Bool)

(assert (=> b!41246 (= e!21546 (rulesInvariant!37 Lexer!44 lt!4359))))

(assert (= (and d!4180 res!29522) b!41246))

(assert (= (and d!4180 (not res!29520)) b!41242))

(assert (= (and d!4180 res!29523) b!41244))

(assert (= (and b!41244 (not res!29521)) b!41243))

(assert (= (and b!41243 (not res!29524)) b!41245))

(assert (=> b!41246 m!14462))

(assert (=> b!41245 m!14474))

(assert (=> b!41245 m!14474))

(declare-fun m!14576 () Bool)

(assert (=> b!41245 m!14576))

(declare-fun m!14578 () Bool)

(assert (=> b!41245 m!14578))

(assert (=> b!41245 m!14578))

(declare-fun m!14580 () Bool)

(assert (=> b!41245 m!14580))

(assert (=> d!4180 m!14504))

(declare-fun m!14582 () Bool)

(assert (=> b!41243 m!14582))

(assert (=> b!41244 m!14504))

(declare-fun m!14584 () Bool)

(assert (=> b!41242 m!14584))

(assert (=> b!41242 m!14474))

(declare-fun m!14586 () Bool)

(assert (=> b!41242 m!14586))

(assert (=> b!41242 m!14474))

(declare-fun m!14588 () Bool)

(assert (=> b!41242 m!14588))

(assert (=> b!41242 m!14584))

(declare-fun m!14590 () Bool)

(assert (=> b!41242 m!14590))

(declare-fun m!14592 () Bool)

(assert (=> b!41242 m!14592))

(assert (=> b!41242 m!14586))

(declare-fun m!14594 () Bool)

(assert (=> b!41242 m!14594))

(assert (=> b!41182 d!4180))

(declare-fun d!4182 () Bool)

(declare-fun validCacheMapDown!13 (MutableMap!184) Bool)

(assert (=> d!4182 (= (valid!178 (_3!127 lt!4346)) (validCacheMapDown!13 (cache!669 (_3!127 lt!4346))))))

(declare-fun bs!5063 () Bool)

(assert (= bs!5063 d!4182))

(declare-fun m!14596 () Bool)

(assert (=> bs!5063 m!14596))

(assert (=> b!41166 d!4182))

(declare-fun d!4184 () Bool)

(declare-fun list!149 (Conc!106) List!589)

(assert (=> d!4184 (= (list!146 (_1!462 lt!4352)) (list!149 (c!15832 (_1!462 lt!4352))))))

(declare-fun bs!5064 () Bool)

(assert (= bs!5064 d!4184))

(declare-fun m!14598 () Bool)

(assert (=> bs!5064 m!14598))

(assert (=> b!41185 d!4184))

(declare-fun b!41257 () Bool)

(declare-fun res!29531 () Bool)

(declare-fun e!21558 () Bool)

(assert (=> b!41257 (=> (not res!29531) (not e!21558))))

(declare-fun lt!4382 () tuple2!672)

(declare-datatypes ((tuple2!676 0))(
  ( (tuple2!677 (_1!466 List!589) (_2!466 List!587)) )
))
(declare-fun lexList!6 (LexerInterface!46 List!588 List!587) tuple2!676)

(assert (=> b!41257 (= res!29531 (= (list!146 (_1!462 lt!4382)) (_1!466 (lexList!6 Lexer!44 lt!4359 (list!147 lt!4356)))))))

(declare-fun b!41258 () Bool)

(declare-fun e!21557 () Bool)

(declare-fun isEmpty!118 (BalanceConc!212) Bool)

(assert (=> b!41258 (= e!21557 (not (isEmpty!118 (_1!462 lt!4382))))))

(declare-fun b!41259 () Bool)

(assert (=> b!41259 (= e!21558 (= (list!147 (_2!462 lt!4382)) (_2!466 (lexList!6 Lexer!44 lt!4359 (list!147 lt!4356)))))))

(declare-fun b!41260 () Bool)

(declare-fun e!21556 () Bool)

(assert (=> b!41260 (= e!21556 e!21557)))

(declare-fun res!29533 () Bool)

(declare-fun size!598 (BalanceConc!210) Int)

(assert (=> b!41260 (= res!29533 (< (size!598 (_2!462 lt!4382)) (size!598 lt!4356)))))

(assert (=> b!41260 (=> (not res!29533) (not e!21557))))

(declare-fun d!4186 () Bool)

(assert (=> d!4186 e!21558))

(declare-fun res!29532 () Bool)

(assert (=> d!4186 (=> (not res!29532) (not e!21558))))

(assert (=> d!4186 (= res!29532 e!21556)))

(declare-fun c!15838 () Bool)

(declare-fun size!599 (BalanceConc!212) Int)

(assert (=> d!4186 (= c!15838 (> (size!599 (_1!462 lt!4382)) 0))))

(declare-fun lexTailRecV2!3 (LexerInterface!46 List!588 BalanceConc!210 BalanceConc!210 BalanceConc!210 BalanceConc!212) tuple2!672)

(assert (=> d!4186 (= lt!4382 (lexTailRecV2!3 Lexer!44 lt!4359 lt!4356 (BalanceConc!211 Empty!105) lt!4356 (BalanceConc!213 Empty!106)))))

(assert (=> d!4186 (= (lex!20 Lexer!44 lt!4359 lt!4356) lt!4382)))

(declare-fun b!41261 () Bool)

(assert (=> b!41261 (= e!21556 (= (_2!462 lt!4382) lt!4356))))

(assert (= (and d!4186 c!15838) b!41260))

(assert (= (and d!4186 (not c!15838)) b!41261))

(assert (= (and b!41260 res!29533) b!41258))

(assert (= (and d!4186 res!29532) b!41257))

(assert (= (and b!41257 res!29531) b!41259))

(declare-fun m!14600 () Bool)

(assert (=> b!41258 m!14600))

(declare-fun m!14602 () Bool)

(assert (=> d!4186 m!14602))

(declare-fun m!14604 () Bool)

(assert (=> d!4186 m!14604))

(declare-fun m!14606 () Bool)

(assert (=> b!41260 m!14606))

(declare-fun m!14608 () Bool)

(assert (=> b!41260 m!14608))

(declare-fun m!14610 () Bool)

(assert (=> b!41257 m!14610))

(assert (=> b!41257 m!14472))

(assert (=> b!41257 m!14472))

(declare-fun m!14612 () Bool)

(assert (=> b!41257 m!14612))

(declare-fun m!14614 () Bool)

(assert (=> b!41259 m!14614))

(assert (=> b!41259 m!14472))

(assert (=> b!41259 m!14472))

(assert (=> b!41259 m!14612))

(assert (=> b!41185 d!4186))

(declare-fun d!4188 () Bool)

(declare-fun c!15839 () Bool)

(assert (=> d!4188 (= c!15839 ((_ is Node!105) (c!15831 (totalInput!1514 cacheFurthestNullable!45))))))

(declare-fun e!21559 () Bool)

(assert (=> d!4188 (= (inv!867 (c!15831 (totalInput!1514 cacheFurthestNullable!45))) e!21559)))

(declare-fun b!41262 () Bool)

(assert (=> b!41262 (= e!21559 (inv!872 (c!15831 (totalInput!1514 cacheFurthestNullable!45))))))

(declare-fun b!41263 () Bool)

(declare-fun e!21560 () Bool)

(assert (=> b!41263 (= e!21559 e!21560)))

(declare-fun res!29534 () Bool)

(assert (=> b!41263 (= res!29534 (not ((_ is Leaf!291) (c!15831 (totalInput!1514 cacheFurthestNullable!45)))))))

(assert (=> b!41263 (=> res!29534 e!21560)))

(declare-fun b!41264 () Bool)

(assert (=> b!41264 (= e!21560 (inv!873 (c!15831 (totalInput!1514 cacheFurthestNullable!45))))))

(assert (= (and d!4188 c!15839) b!41262))

(assert (= (and d!4188 (not c!15839)) b!41263))

(assert (= (and b!41263 (not res!29534)) b!41264))

(declare-fun m!14616 () Bool)

(assert (=> b!41262 m!14616))

(declare-fun m!14618 () Bool)

(assert (=> b!41264 m!14618))

(assert (=> b!41167 d!4188))

(declare-fun d!4190 () Bool)

(declare-fun lt!4385 () Bool)

(assert (=> d!4190 (= lt!4385 (forall!63 (list!146 (_1!462 (_1!465 lt!4346))) lambda!693))))

(declare-fun forall!64 (Conc!106 Int) Bool)

(assert (=> d!4190 (= lt!4385 (forall!64 (c!15832 (_1!462 (_1!465 lt!4346))) lambda!693))))

(assert (=> d!4190 (= (forall!62 (_1!462 (_1!465 lt!4346)) lambda!693) lt!4385)))

(declare-fun bs!5065 () Bool)

(assert (= bs!5065 d!4190))

(assert (=> bs!5065 m!14488))

(assert (=> bs!5065 m!14488))

(declare-fun m!14620 () Bool)

(assert (=> bs!5065 m!14620))

(declare-fun m!14622 () Bool)

(assert (=> bs!5065 m!14622))

(assert (=> b!41186 d!4190))

(declare-fun d!4192 () Bool)

(assert (=> d!4192 (= (array_inv!205 (_keys!480 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) (bvsge (size!595 (_keys!480 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!41190 d!4192))

(declare-fun d!4194 () Bool)

(assert (=> d!4194 (= (array_inv!208 (_values!467 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) (bvsge (size!596 (_values!467 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320))))))) #b00000000000000000000000000000000))))

(assert (=> b!41190 d!4194))

(declare-fun d!4196 () Bool)

(assert (=> d!4196 (= (valid!178 cacheDown!333) (validCacheMapDown!13 (cache!669 cacheDown!333)))))

(declare-fun bs!5066 () Bool)

(assert (= bs!5066 d!4196))

(declare-fun m!14624 () Bool)

(assert (=> bs!5066 m!14624))

(assert (=> b!41172 d!4196))

(declare-fun d!4198 () Bool)

(declare-fun validCacheMapFurthestNullable!5 (MutableMap!186 BalanceConc!210) Bool)

(assert (=> d!4198 (= (valid!179 (_4!22 lt!4346)) (validCacheMapFurthestNullable!5 (cache!671 (_4!22 lt!4346)) (totalInput!1514 (_4!22 lt!4346))))))

(declare-fun bs!5067 () Bool)

(assert (= bs!5067 d!4198))

(declare-fun m!14626 () Bool)

(assert (=> bs!5067 m!14626))

(assert (=> b!41188 d!4198))

(declare-fun d!4200 () Bool)

(assert (=> d!4200 (= (array_inv!205 (_keys!481 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) (bvsge (size!595 (_keys!481 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!41174 d!4200))

(declare-fun d!4202 () Bool)

(assert (=> d!4202 (= (array_inv!207 (_values!468 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) (bvsge (size!597 (_values!468 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))) #b00000000000000000000000000000000))))

(assert (=> b!41174 d!4202))

(declare-fun d!4204 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!54) Rule!102)

(declare-fun integerLiteralRule!0 (JsonLexer!54) Rule!102)

(declare-fun floatLiteralRule!0 (JsonLexer!54) Rule!102)

(declare-fun trueRule!0 (JsonLexer!54) Rule!102)

(declare-fun falseRule!0 (JsonLexer!54) Rule!102)

(declare-fun nullRule!0 (JsonLexer!54) Rule!102)

(declare-fun jsonstringRule!0 (JsonLexer!54) Rule!102)

(declare-fun lBraceRule!0 (JsonLexer!54) Rule!102)

(declare-fun rBraceRule!0 (JsonLexer!54) Rule!102)

(declare-fun lBracketRule!0 (JsonLexer!54) Rule!102)

(declare-fun rBracketRule!0 (JsonLexer!54) Rule!102)

(declare-fun colonRule!0 (JsonLexer!54) Rule!102)

(declare-fun commaRule!0 (JsonLexer!54) Rule!102)

(declare-fun eofRule!0 (JsonLexer!54) Rule!102)

(assert (=> d!4204 (= (rules!109 JsonLexer!55) (Cons!586 (whitespaceRule!0 JsonLexer!55) (Cons!586 (integerLiteralRule!0 JsonLexer!55) (Cons!586 (floatLiteralRule!0 JsonLexer!55) (Cons!586 (trueRule!0 JsonLexer!55) (Cons!586 (falseRule!0 JsonLexer!55) (Cons!586 (nullRule!0 JsonLexer!55) (Cons!586 (jsonstringRule!0 JsonLexer!55) (Cons!586 (lBraceRule!0 JsonLexer!55) (Cons!586 (rBraceRule!0 JsonLexer!55) (Cons!586 (lBracketRule!0 JsonLexer!55) (Cons!586 (rBracketRule!0 JsonLexer!55) (Cons!586 (colonRule!0 JsonLexer!55) (Cons!586 (commaRule!0 JsonLexer!55) (Cons!586 (eofRule!0 JsonLexer!55) Nil!586)))))))))))))))))

(declare-fun bs!5068 () Bool)

(assert (= bs!5068 d!4204))

(declare-fun m!14628 () Bool)

(assert (=> bs!5068 m!14628))

(declare-fun m!14630 () Bool)

(assert (=> bs!5068 m!14630))

(declare-fun m!14632 () Bool)

(assert (=> bs!5068 m!14632))

(declare-fun m!14634 () Bool)

(assert (=> bs!5068 m!14634))

(declare-fun m!14636 () Bool)

(assert (=> bs!5068 m!14636))

(declare-fun m!14638 () Bool)

(assert (=> bs!5068 m!14638))

(declare-fun m!14640 () Bool)

(assert (=> bs!5068 m!14640))

(declare-fun m!14642 () Bool)

(assert (=> bs!5068 m!14642))

(declare-fun m!14644 () Bool)

(assert (=> bs!5068 m!14644))

(declare-fun m!14646 () Bool)

(assert (=> bs!5068 m!14646))

(declare-fun m!14648 () Bool)

(assert (=> bs!5068 m!14648))

(declare-fun m!14650 () Bool)

(assert (=> bs!5068 m!14650))

(declare-fun m!14652 () Bool)

(assert (=> bs!5068 m!14652))

(declare-fun m!14654 () Bool)

(assert (=> bs!5068 m!14654))

(assert (=> start!2274 d!4204))

(declare-fun d!4206 () Bool)

(declare-fun res!29537 () Bool)

(declare-fun e!21563 () Bool)

(assert (=> d!4206 (=> (not res!29537) (not e!21563))))

(assert (=> d!4206 (= res!29537 ((_ is HashMap!184) (cache!669 cacheDown!333)))))

(assert (=> d!4206 (= (inv!868 cacheDown!333) e!21563)))

(declare-fun b!41267 () Bool)

(assert (=> b!41267 (= e!21563 (validCacheMapDown!13 (cache!669 cacheDown!333)))))

(assert (= (and d!4206 res!29537) b!41267))

(assert (=> b!41267 m!14624))

(assert (=> start!2274 d!4206))

(declare-fun d!4208 () Bool)

(declare-fun isBalanced!16 (Conc!105) Bool)

(assert (=> d!4208 (= (inv!869 input!525) (isBalanced!16 (c!15831 input!525)))))

(declare-fun bs!5069 () Bool)

(assert (= bs!5069 d!4208))

(declare-fun m!14656 () Bool)

(assert (=> bs!5069 m!14656))

(assert (=> start!2274 d!4208))

(declare-fun d!4210 () Bool)

(assert (=> d!4210 (= (isEmpty!116 lt!4359) ((_ is Nil!586) lt!4359))))

(assert (=> start!2274 d!4210))

(declare-fun d!4212 () Bool)

(declare-fun res!29540 () Bool)

(declare-fun e!21566 () Bool)

(assert (=> d!4212 (=> (not res!29540) (not e!21566))))

(assert (=> d!4212 (= res!29540 ((_ is HashMap!186) (cache!671 cacheFurthestNullable!45)))))

(assert (=> d!4212 (= (inv!870 cacheFurthestNullable!45) e!21566)))

(declare-fun b!41270 () Bool)

(assert (=> b!41270 (= e!21566 (validCacheMapFurthestNullable!5 (cache!671 cacheFurthestNullable!45) (totalInput!1514 cacheFurthestNullable!45)))))

(assert (= (and d!4212 res!29540) b!41270))

(declare-fun m!14658 () Bool)

(assert (=> b!41270 m!14658))

(assert (=> start!2274 d!4212))

(declare-fun d!4214 () Bool)

(declare-fun res!29543 () Bool)

(declare-fun e!21569 () Bool)

(assert (=> d!4214 (=> (not res!29543) (not e!21569))))

(assert (=> d!4214 (= res!29543 ((_ is HashMap!185) (cache!670 cacheUp!320)))))

(assert (=> d!4214 (= (inv!871 cacheUp!320) e!21569)))

(declare-fun b!41273 () Bool)

(assert (=> b!41273 (= e!21569 (validCacheMapUp!11 (cache!670 cacheUp!320)))))

(assert (= (and d!4214 res!29543) b!41273))

(declare-fun m!14660 () Bool)

(assert (=> b!41273 m!14660))

(assert (=> start!2274 d!4214))

(declare-fun d!4216 () Bool)

(assert (=> d!4216 (= (valid!180 cacheUp!320) (validCacheMapUp!11 (cache!670 cacheUp!320)))))

(declare-fun bs!5070 () Bool)

(assert (= bs!5070 d!4216))

(assert (=> bs!5070 m!14660))

(assert (=> b!41193 d!4216))

(declare-fun d!4218 () Bool)

(declare-fun res!29548 () Bool)

(declare-fun e!21574 () Bool)

(assert (=> d!4218 (=> res!29548 e!21574)))

(assert (=> d!4218 (= res!29548 ((_ is Nil!587) lt!4347))))

(assert (=> d!4218 (= (forall!63 lt!4347 lambda!693) e!21574)))

(declare-fun b!41278 () Bool)

(declare-fun e!21575 () Bool)

(assert (=> b!41278 (= e!21574 e!21575)))

(declare-fun res!29549 () Bool)

(assert (=> b!41278 (=> (not res!29549) (not e!21575))))

(declare-fun dynLambda!78 (Int Token!70) Bool)

(assert (=> b!41278 (= res!29549 (dynLambda!78 lambda!693 (h!5983 lt!4347)))))

(declare-fun b!41279 () Bool)

(assert (=> b!41279 (= e!21575 (forall!63 (t!16041 lt!4347) lambda!693))))

(assert (= (and d!4218 (not res!29548)) b!41278))

(assert (= (and b!41278 res!29549) b!41279))

(declare-fun b_lambda!237 () Bool)

(assert (=> (not b_lambda!237) (not b!41278)))

(declare-fun m!14662 () Bool)

(assert (=> b!41278 m!14662))

(declare-fun m!14664 () Bool)

(assert (=> b!41279 m!14664))

(assert (=> b!41191 d!4218))

(declare-fun d!4220 () Bool)

(assert (=> d!4220 (= (array_inv!205 (_keys!479 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) (bvsge (size!595 (_keys!479 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!41173 d!4220))

(declare-fun d!4222 () Bool)

(assert (=> d!4222 (= (array_inv!206 (_values!466 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) (bvsge (size!594 (_values!466 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333))))))) #b00000000000000000000000000000000))))

(assert (=> b!41173 d!4222))

(declare-fun d!4224 () Bool)

(assert (=> d!4224 (= (valid!179 cacheFurthestNullable!45) (validCacheMapFurthestNullable!5 (cache!671 cacheFurthestNullable!45) (totalInput!1514 cacheFurthestNullable!45)))))

(declare-fun bs!5071 () Bool)

(assert (= bs!5071 d!4224))

(assert (=> bs!5071 m!14658))

(assert (=> b!41195 d!4224))

(declare-fun d!4226 () Bool)

(assert (=> d!4226 (= (isEmpty!117 lt!4348) (not ((_ is Some!50) lt!4348)))))

(assert (=> b!41177 d!4226))

(declare-fun b!41290 () Bool)

(declare-fun e!21582 () Bool)

(declare-fun e!21584 () Bool)

(assert (=> b!41290 (= e!21582 e!21584)))

(declare-fun res!29555 () Bool)

(assert (=> b!41290 (=> (not res!29555) (not e!21584))))

(declare-fun lt!4388 () Option!51)

(declare-fun get!214 (Option!51) PrintableTokens!14)

(assert (=> b!41290 (= res!29555 (= (rules!4767 (get!214 lt!4388)) lt!4359))))

(declare-fun b!41291 () Bool)

(assert (=> b!41291 (= e!21584 (= (tokens!763 (get!214 lt!4388)) (_1!462 (_1!465 lt!4346))))))

(declare-fun b!41288 () Bool)

(declare-fun e!21583 () Option!51)

(assert (=> b!41288 (= e!21583 (Some!50 (PrintableTokens!15 lt!4359 (_1!462 (_1!465 lt!4346)))))))

(declare-fun b!41289 () Bool)

(assert (=> b!41289 (= e!21583 None!50)))

(declare-fun d!4228 () Bool)

(assert (=> d!4228 e!21582))

(declare-fun res!29554 () Bool)

(assert (=> d!4228 (=> res!29554 e!21582)))

(assert (=> d!4228 (= res!29554 (isEmpty!117 lt!4388))))

(assert (=> d!4228 (= lt!4388 e!21583)))

(declare-fun c!15842 () Bool)

(declare-fun separableTokens!4 (LexerInterface!46 BalanceConc!212 List!588) Bool)

(assert (=> d!4228 (= c!15842 (separableTokens!4 Lexer!44 (_1!462 (_1!465 lt!4346)) lt!4359))))

(assert (=> d!4228 (not (isEmpty!116 lt!4359))))

(assert (=> d!4228 (= (printableTokensFromTokens!2 lt!4359 (_1!462 (_1!465 lt!4346))) lt!4388)))

(assert (= (and d!4228 c!15842) b!41288))

(assert (= (and d!4228 (not c!15842)) b!41289))

(assert (= (and d!4228 (not res!29554)) b!41290))

(assert (= (and b!41290 res!29555) b!41291))

(declare-fun m!14666 () Bool)

(assert (=> b!41290 m!14666))

(assert (=> b!41291 m!14666))

(declare-fun m!14668 () Bool)

(assert (=> d!4228 m!14668))

(declare-fun m!14670 () Bool)

(assert (=> d!4228 m!14670))

(assert (=> d!4228 m!14504))

(assert (=> b!41177 d!4228))

(declare-fun d!4230 () Bool)

(assert (=> d!4230 (= (list!146 (_1!462 lt!4351)) (list!149 (c!15832 (_1!462 lt!4351))))))

(declare-fun bs!5072 () Bool)

(assert (= bs!5072 d!4230))

(declare-fun m!14672 () Bool)

(assert (=> bs!5072 m!14672))

(assert (=> b!41175 d!4230))

(declare-fun d!4232 () Bool)

(assert (=> d!4232 (= (list!146 (_1!462 (_1!465 lt!4346))) (list!149 (c!15832 (_1!462 (_1!465 lt!4346)))))))

(declare-fun bs!5073 () Bool)

(assert (= bs!5073 d!4232))

(declare-fun m!14674 () Bool)

(assert (=> bs!5073 m!14674))

(assert (=> b!41175 d!4232))

(declare-fun d!4234 () Bool)

(assert (=> d!4234 (valid!180 (_2!465 lt!4346))))

(declare-fun Unit!264 () Unit!262)

(assert (=> d!4234 (= (lemmaInvariant!34 (_2!465 lt!4346)) Unit!264)))

(declare-fun bs!5074 () Bool)

(assert (= bs!5074 d!4234))

(assert (=> bs!5074 m!14524))

(assert (=> b!41175 d!4234))

(declare-fun b!41302 () Bool)

(declare-fun e!21587 () Bool)

(declare-fun lt!4394 () tuple4!44)

(assert (=> b!41302 (= e!21587 (= (totalInput!1514 (_4!22 lt!4394)) input!525))))

(declare-fun b!41303 () Bool)

(declare-fun res!29569 () Bool)

(assert (=> b!41303 (=> (not res!29569) (not e!21587))))

(assert (=> b!41303 (= res!29569 (valid!180 (_2!465 lt!4394)))))

(declare-fun b!41304 () Bool)

(declare-fun res!29566 () Bool)

(assert (=> b!41304 (=> (not res!29566) (not e!21587))))

(assert (=> b!41304 (= res!29566 (valid!178 (_3!127 lt!4394)))))

(declare-fun b!41305 () Bool)

(declare-fun res!29570 () Bool)

(assert (=> b!41305 (=> (not res!29570) (not e!21587))))

(assert (=> b!41305 (= res!29570 (= (list!147 (_2!462 (_1!465 lt!4394))) (list!147 (_2!462 (lex!20 Lexer!44 lt!4359 input!525)))))))

(declare-fun b!41306 () Bool)

(declare-fun res!29568 () Bool)

(assert (=> b!41306 (=> (not res!29568) (not e!21587))))

(assert (=> b!41306 (= res!29568 (valid!179 (_4!22 lt!4394)))))

(declare-fun d!4236 () Bool)

(assert (=> d!4236 e!21587))

(declare-fun res!29567 () Bool)

(assert (=> d!4236 (=> (not res!29567) (not e!21587))))

(assert (=> d!4236 (= res!29567 (= (list!146 (_1!462 (_1!465 lt!4394))) (list!146 (_1!462 (lex!20 Lexer!44 lt!4359 input!525)))))))

(declare-fun lt!4393 () tuple4!44)

(assert (=> d!4236 (= lt!4394 (tuple4!45 (_1!465 lt!4393) (_2!465 lt!4393) (_3!127 lt!4393) (_4!22 lt!4393)))))

(declare-fun lexTailRecV3Mem!3 (LexerInterface!46 List!588 BalanceConc!210 BalanceConc!210 BalanceConc!210 BalanceConc!212 CacheUp!124 CacheDown!126 CacheFurthestNullable!74) tuple4!44)

(assert (=> d!4236 (= lt!4393 (lexTailRecV3Mem!3 Lexer!44 lt!4359 input!525 (BalanceConc!211 Empty!105) input!525 (BalanceConc!213 Empty!106) cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(assert (=> d!4236 (not (isEmpty!116 lt!4359))))

(assert (=> d!4236 (= (lexMem!15 Lexer!44 lt!4359 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45) lt!4394)))

(assert (= (and d!4236 res!29567) b!41305))

(assert (= (and b!41305 res!29570) b!41306))

(assert (= (and b!41306 res!29568) b!41303))

(assert (= (and b!41303 res!29569) b!41304))

(assert (= (and b!41304 res!29566) b!41302))

(declare-fun m!14676 () Bool)

(assert (=> b!41305 m!14676))

(assert (=> b!41305 m!14484))

(declare-fun m!14678 () Bool)

(assert (=> b!41305 m!14678))

(declare-fun m!14680 () Bool)

(assert (=> b!41304 m!14680))

(declare-fun m!14682 () Bool)

(assert (=> d!4236 m!14682))

(assert (=> d!4236 m!14484))

(assert (=> d!4236 m!14504))

(declare-fun m!14684 () Bool)

(assert (=> d!4236 m!14684))

(declare-fun m!14686 () Bool)

(assert (=> d!4236 m!14686))

(declare-fun m!14688 () Bool)

(assert (=> b!41306 m!14688))

(declare-fun m!14690 () Bool)

(assert (=> b!41303 m!14690))

(assert (=> b!41175 d!4236))

(declare-fun d!4238 () Bool)

(assert (=> d!4238 (valid!178 (_3!127 lt!4346))))

(declare-fun Unit!265 () Unit!262)

(assert (=> d!4238 (= (lemmaInvariant!33 (_3!127 lt!4346)) Unit!265)))

(declare-fun bs!5075 () Bool)

(assert (= bs!5075 d!4238))

(assert (=> bs!5075 m!14534))

(assert (=> b!41175 d!4238))

(declare-fun b!41307 () Bool)

(declare-fun res!29571 () Bool)

(declare-fun e!21590 () Bool)

(assert (=> b!41307 (=> (not res!29571) (not e!21590))))

(declare-fun lt!4395 () tuple2!672)

(assert (=> b!41307 (= res!29571 (= (list!146 (_1!462 lt!4395)) (_1!466 (lexList!6 Lexer!44 lt!4359 (list!147 input!525)))))))

(declare-fun b!41308 () Bool)

(declare-fun e!21589 () Bool)

(assert (=> b!41308 (= e!21589 (not (isEmpty!118 (_1!462 lt!4395))))))

(declare-fun b!41309 () Bool)

(assert (=> b!41309 (= e!21590 (= (list!147 (_2!462 lt!4395)) (_2!466 (lexList!6 Lexer!44 lt!4359 (list!147 input!525)))))))

(declare-fun b!41310 () Bool)

(declare-fun e!21588 () Bool)

(assert (=> b!41310 (= e!21588 e!21589)))

(declare-fun res!29573 () Bool)

(assert (=> b!41310 (= res!29573 (< (size!598 (_2!462 lt!4395)) (size!598 input!525)))))

(assert (=> b!41310 (=> (not res!29573) (not e!21589))))

(declare-fun d!4240 () Bool)

(assert (=> d!4240 e!21590))

(declare-fun res!29572 () Bool)

(assert (=> d!4240 (=> (not res!29572) (not e!21590))))

(assert (=> d!4240 (= res!29572 e!21588)))

(declare-fun c!15843 () Bool)

(assert (=> d!4240 (= c!15843 (> (size!599 (_1!462 lt!4395)) 0))))

(assert (=> d!4240 (= lt!4395 (lexTailRecV2!3 Lexer!44 lt!4359 input!525 (BalanceConc!211 Empty!105) input!525 (BalanceConc!213 Empty!106)))))

(assert (=> d!4240 (= (lex!20 Lexer!44 lt!4359 input!525) lt!4395)))

(declare-fun b!41311 () Bool)

(assert (=> b!41311 (= e!21588 (= (_2!462 lt!4395) input!525))))

(assert (= (and d!4240 c!15843) b!41310))

(assert (= (and d!4240 (not c!15843)) b!41311))

(assert (= (and b!41310 res!29573) b!41308))

(assert (= (and d!4240 res!29572) b!41307))

(assert (= (and b!41307 res!29571) b!41309))

(declare-fun m!14692 () Bool)

(assert (=> b!41308 m!14692))

(declare-fun m!14694 () Bool)

(assert (=> d!4240 m!14694))

(declare-fun m!14696 () Bool)

(assert (=> d!4240 m!14696))

(declare-fun m!14698 () Bool)

(assert (=> b!41310 m!14698))

(declare-fun m!14700 () Bool)

(assert (=> b!41310 m!14700))

(declare-fun m!14702 () Bool)

(assert (=> b!41307 m!14702))

(assert (=> b!41307 m!14476))

(assert (=> b!41307 m!14476))

(declare-fun m!14704 () Bool)

(assert (=> b!41307 m!14704))

(declare-fun m!14706 () Bool)

(assert (=> b!41309 m!14706))

(assert (=> b!41309 m!14476))

(assert (=> b!41309 m!14476))

(assert (=> b!41309 m!14704))

(assert (=> b!41175 d!4240))

(declare-fun d!4242 () Bool)

(assert (=> d!4242 (= (list!147 (_2!462 lt!4352)) (list!148 (c!15831 (_2!462 lt!4352))))))

(declare-fun bs!5076 () Bool)

(assert (= bs!5076 d!4242))

(declare-fun m!14708 () Bool)

(assert (=> bs!5076 m!14708))

(assert (=> b!41176 d!4242))

(declare-fun d!4244 () Bool)

(declare-fun res!29576 () Bool)

(declare-fun e!21593 () Bool)

(assert (=> d!4244 (=> (not res!29576) (not e!21593))))

(declare-fun rulesValid!9 (LexerInterface!46 List!588) Bool)

(assert (=> d!4244 (= res!29576 (rulesValid!9 Lexer!44 lt!4359))))

(assert (=> d!4244 (= (rulesInvariant!37 Lexer!44 lt!4359) e!21593)))

(declare-fun b!41314 () Bool)

(declare-datatypes ((List!594 0))(
  ( (Nil!592) (Cons!592 (h!5988 String!997) (t!16048 List!594)) )
))
(declare-fun noDuplicateTag!9 (LexerInterface!46 List!588 List!594) Bool)

(assert (=> b!41314 (= e!21593 (noDuplicateTag!9 Lexer!44 lt!4359 Nil!592))))

(assert (= (and d!4244 res!29576) b!41314))

(declare-fun m!14710 () Bool)

(assert (=> d!4244 m!14710))

(declare-fun m!14712 () Bool)

(assert (=> b!41314 m!14712))

(assert (=> b!41197 d!4244))

(declare-fun d!4246 () Bool)

(assert (=> d!4246 (= (inv!869 (totalInput!1514 cacheFurthestNullable!45)) (isBalanced!16 (c!15831 (totalInput!1514 cacheFurthestNullable!45))))))

(declare-fun bs!5077 () Bool)

(assert (= bs!5077 d!4246))

(declare-fun m!14714 () Bool)

(assert (=> bs!5077 m!14714))

(assert (=> b!41196 d!4246))

(declare-fun tp!28443 () Bool)

(declare-fun setRes!658 () Bool)

(declare-fun e!21601 () Bool)

(declare-fun b!41319 () Bool)

(declare-fun inv!874 (Context!146) Bool)

(assert (=> b!41319 (= e!21601 (and (inv!874 (_1!460 (_1!461 (h!5986 (zeroValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))))) setRes!658 tp!28443))))

(declare-fun condSetEmpty!658 () Bool)

(assert (=> b!41319 (= condSetEmpty!658 (= (_2!461 (h!5986 (zeroValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!658 () Bool)

(assert (=> setIsEmpty!658 setRes!658))

(declare-fun setNonEmpty!658 () Bool)

(declare-fun tp!28444 () Bool)

(declare-fun setElem!658 () Context!146)

(assert (=> setNonEmpty!658 (= setRes!658 (and tp!28444 (inv!874 setElem!658)))))

(declare-fun setRest!658 () (InoxSet Context!146))

(assert (=> setNonEmpty!658 (= (_2!461 (h!5986 (zeroValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!658 true) setRest!658))))

(assert (=> b!41190 (= tp!28438 e!21601)))

(assert (= (and b!41319 condSetEmpty!658) setIsEmpty!658))

(assert (= (and b!41319 (not condSetEmpty!658)) setNonEmpty!658))

(assert (= (and b!41190 ((_ is Cons!590) (zeroValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))) b!41319))

(declare-fun m!14716 () Bool)

(assert (=> b!41319 m!14716))

(declare-fun m!14718 () Bool)

(assert (=> setNonEmpty!658 m!14718))

(declare-fun e!21604 () Bool)

(declare-fun setRes!659 () Bool)

(declare-fun b!41320 () Bool)

(declare-fun tp!28445 () Bool)

(assert (=> b!41320 (= e!21604 (and (inv!874 (_1!460 (_1!461 (h!5986 (minValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))))) setRes!659 tp!28445))))

(declare-fun condSetEmpty!659 () Bool)

(assert (=> b!41320 (= condSetEmpty!659 (= (_2!461 (h!5986 (minValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!659 () Bool)

(assert (=> setIsEmpty!659 setRes!659))

(declare-fun setNonEmpty!659 () Bool)

(declare-fun tp!28446 () Bool)

(declare-fun setElem!659 () Context!146)

(assert (=> setNonEmpty!659 (= setRes!659 (and tp!28446 (inv!874 setElem!659)))))

(declare-fun setRest!659 () (InoxSet Context!146))

(assert (=> setNonEmpty!659 (= (_2!461 (h!5986 (minValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!659 true) setRest!659))))

(assert (=> b!41190 (= tp!28436 e!21604)))

(assert (= (and b!41320 condSetEmpty!659) setIsEmpty!659))

(assert (= (and b!41320 (not condSetEmpty!659)) setNonEmpty!659))

(assert (= (and b!41190 ((_ is Cons!590) (minValue!445 (v!12352 (underlying!573 (v!12353 (underlying!574 (cache!670 cacheUp!320)))))))) b!41320))

(declare-fun m!14720 () Bool)

(assert (=> b!41320 m!14720))

(declare-fun m!14722 () Bool)

(assert (=> setNonEmpty!659 m!14722))

(declare-fun setRes!660 () Bool)

(declare-fun b!41321 () Bool)

(declare-fun e!21607 () Bool)

(declare-fun tp!28447 () Bool)

(assert (=> b!41321 (= e!21607 (and (inv!874 (_1!460 (_1!461 (h!5986 mapDefault!672)))) setRes!660 tp!28447))))

(declare-fun condSetEmpty!660 () Bool)

(assert (=> b!41321 (= condSetEmpty!660 (= (_2!461 (h!5986 mapDefault!672)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!660 () Bool)

(assert (=> setIsEmpty!660 setRes!660))

(declare-fun setNonEmpty!660 () Bool)

(declare-fun tp!28448 () Bool)

(declare-fun setElem!660 () Context!146)

(assert (=> setNonEmpty!660 (= setRes!660 (and tp!28448 (inv!874 setElem!660)))))

(declare-fun setRest!660 () (InoxSet Context!146))

(assert (=> setNonEmpty!660 (= (_2!461 (h!5986 mapDefault!672)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!660 true) setRest!660))))

(assert (=> b!41189 (= tp!28432 e!21607)))

(assert (= (and b!41321 condSetEmpty!660) setIsEmpty!660))

(assert (= (and b!41321 (not condSetEmpty!660)) setNonEmpty!660))

(assert (= (and b!41189 ((_ is Cons!590) mapDefault!672)) b!41321))

(declare-fun m!14724 () Bool)

(assert (=> b!41321 m!14724))

(declare-fun m!14726 () Bool)

(assert (=> setNonEmpty!660 m!14726))

(declare-fun tp!28453 () Bool)

(declare-fun e!21613 () Bool)

(declare-fun b!41328 () Bool)

(declare-fun tp!28454 () Bool)

(assert (=> b!41328 (= e!21613 (and (inv!867 (left!514 (c!15831 input!525))) tp!28453 (inv!867 (right!844 (c!15831 input!525))) tp!28454))))

(declare-fun b!41329 () Bool)

(declare-fun inv!875 (IArray!211) Bool)

(assert (=> b!41329 (= e!21613 (inv!875 (xs!2684 (c!15831 input!525))))))

(assert (=> b!41163 (= tp!28433 (and (inv!867 (c!15831 input!525)) e!21613))))

(assert (= (and b!41163 ((_ is Node!105) (c!15831 input!525))) b!41328))

(assert (= (and b!41163 ((_ is Leaf!291) (c!15831 input!525))) b!41329))

(declare-fun m!14728 () Bool)

(assert (=> b!41328 m!14728))

(declare-fun m!14730 () Bool)

(assert (=> b!41328 m!14730))

(declare-fun m!14732 () Bool)

(assert (=> b!41329 m!14732))

(assert (=> b!41163 m!14518))

(declare-fun b!41334 () Bool)

(declare-fun e!21620 () Bool)

(declare-fun setRes!663 () Bool)

(declare-fun tp!28460 () Bool)

(assert (=> b!41334 (= e!21620 (and setRes!663 tp!28460))))

(declare-fun condSetEmpty!663 () Bool)

(assert (=> b!41334 (= condSetEmpty!663 (= (_1!463 (_1!464 (h!5987 (zeroValue!446 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!663 () Bool)

(assert (=> setIsEmpty!663 setRes!663))

(declare-fun setNonEmpty!663 () Bool)

(declare-fun tp!28459 () Bool)

(declare-fun setElem!663 () Context!146)

(assert (=> setNonEmpty!663 (= setRes!663 (and tp!28459 (inv!874 setElem!663)))))

(declare-fun setRest!663 () (InoxSet Context!146))

(assert (=> setNonEmpty!663 (= (_1!463 (_1!464 (h!5987 (zeroValue!446 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!663 true) setRest!663))))

(assert (=> b!41174 (= tp!28416 e!21620)))

(assert (= (and b!41334 condSetEmpty!663) setIsEmpty!663))

(assert (= (and b!41334 (not condSetEmpty!663)) setNonEmpty!663))

(assert (= (and b!41174 ((_ is Cons!591) (zeroValue!446 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45)))))))) b!41334))

(declare-fun m!14734 () Bool)

(assert (=> setNonEmpty!663 m!14734))

(declare-fun b!41335 () Bool)

(declare-fun e!21622 () Bool)

(declare-fun setRes!664 () Bool)

(declare-fun tp!28462 () Bool)

(assert (=> b!41335 (= e!21622 (and setRes!664 tp!28462))))

(declare-fun condSetEmpty!664 () Bool)

(assert (=> b!41335 (= condSetEmpty!664 (= (_1!463 (_1!464 (h!5987 (minValue!446 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!664 () Bool)

(assert (=> setIsEmpty!664 setRes!664))

(declare-fun setNonEmpty!664 () Bool)

(declare-fun tp!28461 () Bool)

(declare-fun setElem!664 () Context!146)

(assert (=> setNonEmpty!664 (= setRes!664 (and tp!28461 (inv!874 setElem!664)))))

(declare-fun setRest!664 () (InoxSet Context!146))

(assert (=> setNonEmpty!664 (= (_1!463 (_1!464 (h!5987 (minValue!446 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45))))))))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!664 true) setRest!664))))

(assert (=> b!41174 (= tp!28419 e!21622)))

(assert (= (and b!41335 condSetEmpty!664) setIsEmpty!664))

(assert (= (and b!41335 (not condSetEmpty!664)) setNonEmpty!664))

(assert (= (and b!41174 ((_ is Cons!591) (minValue!446 (v!12354 (underlying!575 (v!12355 (underlying!576 (cache!671 cacheFurthestNullable!45)))))))) b!41335))

(declare-fun m!14736 () Bool)

(assert (=> setNonEmpty!664 m!14736))

(declare-fun setNonEmpty!669 () Bool)

(declare-fun setRes!670 () Bool)

(declare-fun tp!28476 () Bool)

(declare-fun setElem!669 () Context!146)

(assert (=> setNonEmpty!669 (= setRes!670 (and tp!28476 (inv!874 setElem!669)))))

(declare-fun mapValue!675 () List!593)

(declare-fun setRest!669 () (InoxSet Context!146))

(assert (=> setNonEmpty!669 (= (_1!463 (_1!464 (h!5987 mapValue!675))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!669 true) setRest!669))))

(declare-fun b!41342 () Bool)

(declare-fun e!21634 () Bool)

(declare-fun tp!28477 () Bool)

(assert (=> b!41342 (= e!21634 (and setRes!670 tp!28477))))

(declare-fun condSetEmpty!670 () Bool)

(assert (=> b!41342 (= condSetEmpty!670 (= (_1!463 (_1!464 (h!5987 mapValue!675))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun mapNonEmpty!675 () Bool)

(declare-fun mapRes!675 () Bool)

(declare-fun tp!28475 () Bool)

(assert (=> mapNonEmpty!675 (= mapRes!675 (and tp!28475 e!21634))))

(declare-fun mapRest!675 () (Array (_ BitVec 32) List!593))

(declare-fun mapKey!675 () (_ BitVec 32))

(assert (=> mapNonEmpty!675 (= mapRest!672 (store mapRest!675 mapKey!675 mapValue!675))))

(declare-fun condMapEmpty!675 () Bool)

(declare-fun mapDefault!675 () List!593)

(assert (=> mapNonEmpty!671 (= condMapEmpty!675 (= mapRest!672 ((as const (Array (_ BitVec 32) List!593)) mapDefault!675)))))

(declare-fun e!21632 () Bool)

(assert (=> mapNonEmpty!671 (= tp!28420 (and e!21632 mapRes!675))))

(declare-fun b!41343 () Bool)

(declare-fun setRes!669 () Bool)

(declare-fun tp!28473 () Bool)

(assert (=> b!41343 (= e!21632 (and setRes!669 tp!28473))))

(declare-fun condSetEmpty!669 () Bool)

(assert (=> b!41343 (= condSetEmpty!669 (= (_1!463 (_1!464 (h!5987 mapDefault!675))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!669 () Bool)

(assert (=> setIsEmpty!669 setRes!669))

(declare-fun setNonEmpty!670 () Bool)

(declare-fun tp!28474 () Bool)

(declare-fun setElem!670 () Context!146)

(assert (=> setNonEmpty!670 (= setRes!669 (and tp!28474 (inv!874 setElem!670)))))

(declare-fun setRest!670 () (InoxSet Context!146))

(assert (=> setNonEmpty!670 (= (_1!463 (_1!464 (h!5987 mapDefault!675))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!670 true) setRest!670))))

(declare-fun mapIsEmpty!675 () Bool)

(assert (=> mapIsEmpty!675 mapRes!675))

(declare-fun setIsEmpty!670 () Bool)

(assert (=> setIsEmpty!670 setRes!670))

(assert (= (and mapNonEmpty!671 condMapEmpty!675) mapIsEmpty!675))

(assert (= (and mapNonEmpty!671 (not condMapEmpty!675)) mapNonEmpty!675))

(assert (= (and b!41342 condSetEmpty!670) setIsEmpty!670))

(assert (= (and b!41342 (not condSetEmpty!670)) setNonEmpty!669))

(assert (= (and mapNonEmpty!675 ((_ is Cons!591) mapValue!675)) b!41342))

(assert (= (and b!41343 condSetEmpty!669) setIsEmpty!669))

(assert (= (and b!41343 (not condSetEmpty!669)) setNonEmpty!670))

(assert (= (and mapNonEmpty!671 ((_ is Cons!591) mapDefault!675)) b!41343))

(declare-fun m!14738 () Bool)

(assert (=> setNonEmpty!669 m!14738))

(declare-fun m!14740 () Bool)

(assert (=> mapNonEmpty!675 m!14740))

(declare-fun m!14742 () Bool)

(assert (=> setNonEmpty!670 m!14742))

(declare-fun b!41344 () Bool)

(declare-fun e!21636 () Bool)

(declare-fun setRes!671 () Bool)

(declare-fun tp!28479 () Bool)

(assert (=> b!41344 (= e!21636 (and setRes!671 tp!28479))))

(declare-fun condSetEmpty!671 () Bool)

(assert (=> b!41344 (= condSetEmpty!671 (= (_1!463 (_1!464 (h!5987 mapValue!672))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!671 () Bool)

(assert (=> setIsEmpty!671 setRes!671))

(declare-fun setNonEmpty!671 () Bool)

(declare-fun tp!28478 () Bool)

(declare-fun setElem!671 () Context!146)

(assert (=> setNonEmpty!671 (= setRes!671 (and tp!28478 (inv!874 setElem!671)))))

(declare-fun setRest!671 () (InoxSet Context!146))

(assert (=> setNonEmpty!671 (= (_1!463 (_1!464 (h!5987 mapValue!672))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!671 true) setRest!671))))

(assert (=> mapNonEmpty!671 (= tp!28426 e!21636)))

(assert (= (and b!41344 condSetEmpty!671) setIsEmpty!671))

(assert (= (and b!41344 (not condSetEmpty!671)) setNonEmpty!671))

(assert (= (and mapNonEmpty!671 ((_ is Cons!591) mapValue!672)) b!41344))

(declare-fun m!14744 () Bool)

(assert (=> setNonEmpty!671 m!14744))

(declare-fun setIsEmpty!676 () Bool)

(declare-fun setRes!677 () Bool)

(assert (=> setIsEmpty!676 setRes!677))

(declare-fun condMapEmpty!678 () Bool)

(declare-fun mapDefault!678 () List!591)

(assert (=> mapNonEmpty!672 (= condMapEmpty!678 (= mapRest!670 ((as const (Array (_ BitVec 32) List!591)) mapDefault!678)))))

(declare-fun e!21651 () Bool)

(declare-fun mapRes!678 () Bool)

(assert (=> mapNonEmpty!672 (= tp!28429 (and e!21651 mapRes!678))))

(declare-fun setIsEmpty!677 () Bool)

(declare-fun setRes!676 () Bool)

(assert (=> setIsEmpty!677 setRes!676))

(declare-fun tp!28492 () Bool)

(declare-fun b!41351 () Bool)

(assert (=> b!41351 (= e!21651 (and (inv!874 (_2!458 (_1!459 (h!5985 mapDefault!678)))) setRes!676 tp!28492))))

(declare-fun condSetEmpty!676 () Bool)

(assert (=> b!41351 (= condSetEmpty!676 (= (_2!459 (h!5985 mapDefault!678)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun mapNonEmpty!678 () Bool)

(declare-fun tp!28493 () Bool)

(declare-fun e!21653 () Bool)

(assert (=> mapNonEmpty!678 (= mapRes!678 (and tp!28493 e!21653))))

(declare-fun mapValue!678 () List!591)

(declare-fun mapKey!678 () (_ BitVec 32))

(declare-fun mapRest!678 () (Array (_ BitVec 32) List!591))

(assert (=> mapNonEmpty!678 (= mapRest!670 (store mapRest!678 mapKey!678 mapValue!678))))

(declare-fun mapIsEmpty!678 () Bool)

(assert (=> mapIsEmpty!678 mapRes!678))

(declare-fun setNonEmpty!676 () Bool)

(declare-fun tp!28490 () Bool)

(declare-fun setElem!676 () Context!146)

(assert (=> setNonEmpty!676 (= setRes!676 (and tp!28490 (inv!874 setElem!676)))))

(declare-fun setRest!676 () (InoxSet Context!146))

(assert (=> setNonEmpty!676 (= (_2!459 (h!5985 mapDefault!678)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!676 true) setRest!676))))

(declare-fun b!41352 () Bool)

(declare-fun tp!28491 () Bool)

(assert (=> b!41352 (= e!21653 (and (inv!874 (_2!458 (_1!459 (h!5985 mapValue!678)))) setRes!677 tp!28491))))

(declare-fun condSetEmpty!677 () Bool)

(assert (=> b!41352 (= condSetEmpty!677 (= (_2!459 (h!5985 mapValue!678)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setNonEmpty!677 () Bool)

(declare-fun tp!28494 () Bool)

(declare-fun setElem!677 () Context!146)

(assert (=> setNonEmpty!677 (= setRes!677 (and tp!28494 (inv!874 setElem!677)))))

(declare-fun setRest!677 () (InoxSet Context!146))

(assert (=> setNonEmpty!677 (= (_2!459 (h!5985 mapValue!678)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!677 true) setRest!677))))

(assert (= (and mapNonEmpty!672 condMapEmpty!678) mapIsEmpty!678))

(assert (= (and mapNonEmpty!672 (not condMapEmpty!678)) mapNonEmpty!678))

(assert (= (and b!41352 condSetEmpty!677) setIsEmpty!676))

(assert (= (and b!41352 (not condSetEmpty!677)) setNonEmpty!677))

(assert (= (and mapNonEmpty!678 ((_ is Cons!589) mapValue!678)) b!41352))

(assert (= (and b!41351 condSetEmpty!676) setIsEmpty!677))

(assert (= (and b!41351 (not condSetEmpty!676)) setNonEmpty!676))

(assert (= (and mapNonEmpty!672 ((_ is Cons!589) mapDefault!678)) b!41351))

(declare-fun m!14746 () Bool)

(assert (=> setNonEmpty!677 m!14746))

(declare-fun m!14748 () Bool)

(assert (=> setNonEmpty!676 m!14748))

(declare-fun m!14750 () Bool)

(assert (=> b!41352 m!14750))

(declare-fun m!14752 () Bool)

(assert (=> mapNonEmpty!678 m!14752))

(declare-fun m!14754 () Bool)

(assert (=> b!41351 m!14754))

(declare-fun b!41357 () Bool)

(declare-fun tp!28500 () Bool)

(declare-fun e!21663 () Bool)

(declare-fun setRes!680 () Bool)

(assert (=> b!41357 (= e!21663 (and (inv!874 (_2!458 (_1!459 (h!5985 mapValue!670)))) setRes!680 tp!28500))))

(declare-fun condSetEmpty!680 () Bool)

(assert (=> b!41357 (= condSetEmpty!680 (= (_2!459 (h!5985 mapValue!670)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!680 () Bool)

(assert (=> setIsEmpty!680 setRes!680))

(declare-fun setNonEmpty!680 () Bool)

(declare-fun tp!28499 () Bool)

(declare-fun setElem!680 () Context!146)

(assert (=> setNonEmpty!680 (= setRes!680 (and tp!28499 (inv!874 setElem!680)))))

(declare-fun setRest!680 () (InoxSet Context!146))

(assert (=> setNonEmpty!680 (= (_2!459 (h!5985 mapValue!670)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!680 true) setRest!680))))

(assert (=> mapNonEmpty!672 (= tp!28422 e!21663)))

(assert (= (and b!41357 condSetEmpty!680) setIsEmpty!680))

(assert (= (and b!41357 (not condSetEmpty!680)) setNonEmpty!680))

(assert (= (and mapNonEmpty!672 ((_ is Cons!589) mapValue!670)) b!41357))

(declare-fun m!14756 () Bool)

(assert (=> b!41357 m!14756))

(declare-fun m!14758 () Bool)

(assert (=> setNonEmpty!680 m!14758))

(declare-fun e!21666 () Bool)

(declare-fun b!41358 () Bool)

(declare-fun tp!28502 () Bool)

(declare-fun setRes!681 () Bool)

(assert (=> b!41358 (= e!21666 (and (inv!874 (_2!458 (_1!459 (h!5985 (zeroValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))))) setRes!681 tp!28502))))

(declare-fun condSetEmpty!681 () Bool)

(assert (=> b!41358 (= condSetEmpty!681 (= (_2!459 (h!5985 (zeroValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!681 () Bool)

(assert (=> setIsEmpty!681 setRes!681))

(declare-fun setNonEmpty!681 () Bool)

(declare-fun tp!28501 () Bool)

(declare-fun setElem!681 () Context!146)

(assert (=> setNonEmpty!681 (= setRes!681 (and tp!28501 (inv!874 setElem!681)))))

(declare-fun setRest!681 () (InoxSet Context!146))

(assert (=> setNonEmpty!681 (= (_2!459 (h!5985 (zeroValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!681 true) setRest!681))))

(assert (=> b!41173 (= tp!28418 e!21666)))

(assert (= (and b!41358 condSetEmpty!681) setIsEmpty!681))

(assert (= (and b!41358 (not condSetEmpty!681)) setNonEmpty!681))

(assert (= (and b!41173 ((_ is Cons!589) (zeroValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))) b!41358))

(declare-fun m!14760 () Bool)

(assert (=> b!41358 m!14760))

(declare-fun m!14762 () Bool)

(assert (=> setNonEmpty!681 m!14762))

(declare-fun b!41359 () Bool)

(declare-fun setRes!682 () Bool)

(declare-fun tp!28504 () Bool)

(declare-fun e!21669 () Bool)

(assert (=> b!41359 (= e!21669 (and (inv!874 (_2!458 (_1!459 (h!5985 (minValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))))) setRes!682 tp!28504))))

(declare-fun condSetEmpty!682 () Bool)

(assert (=> b!41359 (= condSetEmpty!682 (= (_2!459 (h!5985 (minValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!682 () Bool)

(assert (=> setIsEmpty!682 setRes!682))

(declare-fun setNonEmpty!682 () Bool)

(declare-fun tp!28503 () Bool)

(declare-fun setElem!682 () Context!146)

(assert (=> setNonEmpty!682 (= setRes!682 (and tp!28503 (inv!874 setElem!682)))))

(declare-fun setRest!682 () (InoxSet Context!146))

(assert (=> setNonEmpty!682 (= (_2!459 (h!5985 (minValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!682 true) setRest!682))))

(assert (=> b!41173 (= tp!28437 e!21669)))

(assert (= (and b!41359 condSetEmpty!682) setIsEmpty!682))

(assert (= (and b!41359 (not condSetEmpty!682)) setNonEmpty!682))

(assert (= (and b!41173 ((_ is Cons!589) (minValue!444 (v!12350 (underlying!571 (v!12351 (underlying!572 (cache!669 cacheDown!333)))))))) b!41359))

(declare-fun m!14764 () Bool)

(assert (=> b!41359 m!14764))

(declare-fun m!14766 () Bool)

(assert (=> setNonEmpty!682 m!14766))

(declare-fun b!41362 () Bool)

(declare-fun e!21672 () Bool)

(assert (=> b!41362 (= e!21672 true)))

(declare-fun b!41361 () Bool)

(declare-fun e!21671 () Bool)

(assert (=> b!41361 (= e!21671 e!21672)))

(declare-fun b!41360 () Bool)

(declare-fun e!21670 () Bool)

(assert (=> b!41360 (= e!21670 e!21671)))

(assert (=> b!41209 e!21670))

(assert (= b!41361 b!41362))

(assert (= b!41360 b!41361))

(assert (= (and b!41209 ((_ is Cons!586) (t!16040 lt!4359))) b!41360))

(assert (=> b!41362 (< (dynLambda!75 order!115 (toValue!630 (transformation!151 (h!5982 (t!16040 lt!4359))))) (dynLambda!76 order!117 lambda!693))))

(assert (=> b!41362 (< (dynLambda!77 order!119 (toChars!489 (transformation!151 (h!5982 (t!16040 lt!4359))))) (dynLambda!76 order!117 lambda!693))))

(declare-fun b!41363 () Bool)

(declare-fun e!21675 () Bool)

(declare-fun tp!28506 () Bool)

(declare-fun setRes!683 () Bool)

(assert (=> b!41363 (= e!21675 (and (inv!874 (_2!458 (_1!459 (h!5985 mapDefault!670)))) setRes!683 tp!28506))))

(declare-fun condSetEmpty!683 () Bool)

(assert (=> b!41363 (= condSetEmpty!683 (= (_2!459 (h!5985 mapDefault!670)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!683 () Bool)

(assert (=> setIsEmpty!683 setRes!683))

(declare-fun setNonEmpty!683 () Bool)

(declare-fun tp!28505 () Bool)

(declare-fun setElem!683 () Context!146)

(assert (=> setNonEmpty!683 (= setRes!683 (and tp!28505 (inv!874 setElem!683)))))

(declare-fun setRest!683 () (InoxSet Context!146))

(assert (=> setNonEmpty!683 (= (_2!459 (h!5985 mapDefault!670)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!683 true) setRest!683))))

(assert (=> b!41165 (= tp!28425 e!21675)))

(assert (= (and b!41363 condSetEmpty!683) setIsEmpty!683))

(assert (= (and b!41363 (not condSetEmpty!683)) setNonEmpty!683))

(assert (= (and b!41165 ((_ is Cons!589) mapDefault!670)) b!41363))

(declare-fun m!14768 () Bool)

(assert (=> b!41363 m!14768))

(declare-fun m!14770 () Bool)

(assert (=> setNonEmpty!683 m!14770))

(declare-fun b!41364 () Bool)

(declare-fun e!21677 () Bool)

(declare-fun setRes!684 () Bool)

(declare-fun tp!28508 () Bool)

(assert (=> b!41364 (= e!21677 (and setRes!684 tp!28508))))

(declare-fun condSetEmpty!684 () Bool)

(assert (=> b!41364 (= condSetEmpty!684 (= (_1!463 (_1!464 (h!5987 mapDefault!671))) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!684 () Bool)

(assert (=> setIsEmpty!684 setRes!684))

(declare-fun setNonEmpty!684 () Bool)

(declare-fun tp!28507 () Bool)

(declare-fun setElem!684 () Context!146)

(assert (=> setNonEmpty!684 (= setRes!684 (and tp!28507 (inv!874 setElem!684)))))

(declare-fun setRest!684 () (InoxSet Context!146))

(assert (=> setNonEmpty!684 (= (_1!463 (_1!464 (h!5987 mapDefault!671))) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!684 true) setRest!684))))

(assert (=> b!41169 (= tp!28423 e!21677)))

(assert (= (and b!41364 condSetEmpty!684) setIsEmpty!684))

(assert (= (and b!41364 (not condSetEmpty!684)) setNonEmpty!684))

(assert (= (and b!41169 ((_ is Cons!591) mapDefault!671)) b!41364))

(declare-fun m!14772 () Bool)

(assert (=> setNonEmpty!684 m!14772))

(declare-fun setIsEmpty!689 () Bool)

(declare-fun setRes!690 () Bool)

(assert (=> setIsEmpty!689 setRes!690))

(declare-fun mapNonEmpty!681 () Bool)

(declare-fun mapRes!681 () Bool)

(declare-fun tp!28519 () Bool)

(declare-fun e!21695 () Bool)

(assert (=> mapNonEmpty!681 (= mapRes!681 (and tp!28519 e!21695))))

(declare-fun mapRest!681 () (Array (_ BitVec 32) List!592))

(declare-fun mapKey!681 () (_ BitVec 32))

(declare-fun mapValue!681 () List!592)

(assert (=> mapNonEmpty!681 (= mapRest!671 (store mapRest!681 mapKey!681 mapValue!681))))

(declare-fun setIsEmpty!690 () Bool)

(declare-fun setRes!689 () Bool)

(assert (=> setIsEmpty!690 setRes!689))

(declare-fun mapIsEmpty!681 () Bool)

(assert (=> mapIsEmpty!681 mapRes!681))

(declare-fun condMapEmpty!681 () Bool)

(declare-fun mapDefault!681 () List!592)

(assert (=> mapNonEmpty!670 (= condMapEmpty!681 (= mapRest!671 ((as const (Array (_ BitVec 32) List!592)) mapDefault!681)))))

(declare-fun e!21694 () Bool)

(assert (=> mapNonEmpty!670 (= tp!28424 (and e!21694 mapRes!681))))

(declare-fun tp!28522 () Bool)

(declare-fun b!41371 () Bool)

(assert (=> b!41371 (= e!21694 (and (inv!874 (_1!460 (_1!461 (h!5986 mapDefault!681)))) setRes!689 tp!28522))))

(declare-fun condSetEmpty!690 () Bool)

(assert (=> b!41371 (= condSetEmpty!690 (= (_2!461 (h!5986 mapDefault!681)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun b!41372 () Bool)

(declare-fun tp!28520 () Bool)

(assert (=> b!41372 (= e!21695 (and (inv!874 (_1!460 (_1!461 (h!5986 mapValue!681)))) setRes!690 tp!28520))))

(declare-fun condSetEmpty!689 () Bool)

(assert (=> b!41372 (= condSetEmpty!689 (= (_2!461 (h!5986 mapValue!681)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setNonEmpty!689 () Bool)

(declare-fun tp!28523 () Bool)

(declare-fun setElem!690 () Context!146)

(assert (=> setNonEmpty!689 (= setRes!689 (and tp!28523 (inv!874 setElem!690)))))

(declare-fun setRest!690 () (InoxSet Context!146))

(assert (=> setNonEmpty!689 (= (_2!461 (h!5986 mapDefault!681)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!690 true) setRest!690))))

(declare-fun setNonEmpty!690 () Bool)

(declare-fun tp!28521 () Bool)

(declare-fun setElem!689 () Context!146)

(assert (=> setNonEmpty!690 (= setRes!690 (and tp!28521 (inv!874 setElem!689)))))

(declare-fun setRest!689 () (InoxSet Context!146))

(assert (=> setNonEmpty!690 (= (_2!461 (h!5986 mapValue!681)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!689 true) setRest!689))))

(assert (= (and mapNonEmpty!670 condMapEmpty!681) mapIsEmpty!681))

(assert (= (and mapNonEmpty!670 (not condMapEmpty!681)) mapNonEmpty!681))

(assert (= (and b!41372 condSetEmpty!689) setIsEmpty!689))

(assert (= (and b!41372 (not condSetEmpty!689)) setNonEmpty!690))

(assert (= (and mapNonEmpty!681 ((_ is Cons!590) mapValue!681)) b!41372))

(assert (= (and b!41371 condSetEmpty!690) setIsEmpty!690))

(assert (= (and b!41371 (not condSetEmpty!690)) setNonEmpty!689))

(assert (= (and mapNonEmpty!670 ((_ is Cons!590) mapDefault!681)) b!41371))

(declare-fun m!14774 () Bool)

(assert (=> b!41372 m!14774))

(declare-fun m!14776 () Bool)

(assert (=> setNonEmpty!689 m!14776))

(declare-fun m!14778 () Bool)

(assert (=> b!41371 m!14778))

(declare-fun m!14780 () Bool)

(assert (=> setNonEmpty!690 m!14780))

(declare-fun m!14782 () Bool)

(assert (=> mapNonEmpty!681 m!14782))

(declare-fun tp!28524 () Bool)

(declare-fun b!41373 () Bool)

(declare-fun setRes!691 () Bool)

(declare-fun e!21697 () Bool)

(assert (=> b!41373 (= e!21697 (and (inv!874 (_1!460 (_1!461 (h!5986 mapValue!671)))) setRes!691 tp!28524))))

(declare-fun condSetEmpty!691 () Bool)

(assert (=> b!41373 (= condSetEmpty!691 (= (_2!461 (h!5986 mapValue!671)) ((as const (Array Context!146 Bool)) false)))))

(declare-fun setIsEmpty!691 () Bool)

(assert (=> setIsEmpty!691 setRes!691))

(declare-fun setNonEmpty!691 () Bool)

(declare-fun tp!28525 () Bool)

(declare-fun setElem!691 () Context!146)

(assert (=> setNonEmpty!691 (= setRes!691 (and tp!28525 (inv!874 setElem!691)))))

(declare-fun setRest!691 () (InoxSet Context!146))

(assert (=> setNonEmpty!691 (= (_2!461 (h!5986 mapValue!671)) ((_ map or) (store ((as const (Array Context!146 Bool)) false) setElem!691 true) setRest!691))))

(assert (=> mapNonEmpty!670 (= tp!28421 e!21697)))

(assert (= (and b!41373 condSetEmpty!691) setIsEmpty!691))

(assert (= (and b!41373 (not condSetEmpty!691)) setNonEmpty!691))

(assert (= (and mapNonEmpty!670 ((_ is Cons!590) mapValue!671)) b!41373))

(declare-fun m!14784 () Bool)

(assert (=> b!41373 m!14784))

(declare-fun m!14786 () Bool)

(assert (=> setNonEmpty!691 m!14786))

(declare-fun b!41374 () Bool)

(declare-fun tp!28527 () Bool)

(declare-fun e!21699 () Bool)

(declare-fun tp!28526 () Bool)

(assert (=> b!41374 (= e!21699 (and (inv!867 (left!514 (c!15831 (totalInput!1514 cacheFurthestNullable!45)))) tp!28526 (inv!867 (right!844 (c!15831 (totalInput!1514 cacheFurthestNullable!45)))) tp!28527))))

(declare-fun b!41375 () Bool)

(assert (=> b!41375 (= e!21699 (inv!875 (xs!2684 (c!15831 (totalInput!1514 cacheFurthestNullable!45)))))))

(assert (=> b!41167 (= tp!28427 (and (inv!867 (c!15831 (totalInput!1514 cacheFurthestNullable!45))) e!21699))))

(assert (= (and b!41167 ((_ is Node!105) (c!15831 (totalInput!1514 cacheFurthestNullable!45)))) b!41374))

(assert (= (and b!41167 ((_ is Leaf!291) (c!15831 (totalInput!1514 cacheFurthestNullable!45)))) b!41375))

(declare-fun m!14788 () Bool)

(assert (=> b!41374 m!14788))

(declare-fun m!14790 () Bool)

(assert (=> b!41374 m!14790))

(declare-fun m!14792 () Bool)

(assert (=> b!41375 m!14792))

(assert (=> b!41167 m!14532))

(declare-fun b_lambda!239 () Bool)

(assert (= b_lambda!237 (or b!41191 b_lambda!239)))

(declare-fun bs!5078 () Bool)

(declare-fun d!4248 () Bool)

(assert (= bs!5078 (and d!4248 b!41191)))

(assert (=> bs!5078 (= (dynLambda!78 lambda!693 (h!5983 lt!4347)) (rulesProduceIndividualToken!4 Lexer!44 lt!4359 (h!5983 lt!4347)))))

(assert (=> bs!5078 m!14572))

(assert (=> b!41278 d!4248))

(check-sat (not b!41264) (not b!41291) b_and!947 (not b!41372) b_and!949 (not setNonEmpty!671) (not b!41273) (not d!4162) (not bs!5078) (not b!41358) (not b!41218) (not b!41225) (not b!41342) (not d!4234) (not d!4166) (not setNonEmpty!660) (not d!4198) (not d!4244) (not b!41335) (not b!41258) (not d!4242) (not b!41320) (not b!41307) (not b!41363) (not b!41226) (not d!4184) (not b!41244) (not setNonEmpty!684) (not b!41246) (not b!41344) (not d!4186) (not setNonEmpty!677) (not setNonEmpty!689) (not b!41304) (not d!4170) (not d!4168) (not setNonEmpty!683) (not b_next!911) (not d!4180) (not d!4182) (not setNonEmpty!670) (not b!41270) (not b!41352) (not setNonEmpty!682) (not b!41227) (not b!41257) (not b!41310) (not setNonEmpty!659) (not b!41262) (not b!41303) b_and!951 (not b_lambda!239) (not b!41167) (not d!4236) (not b!41357) (not d!4228) (not b!41371) (not b!41242) (not d!4232) (not b_next!909) (not d!4164) (not b!41375) (not b!41328) (not d!4224) (not b!41359) (not d!4208) (not b_next!919) (not b!41220) (not b!41305) (not b_next!917) (not d!4246) (not b!41259) (not b!41329) (not b!41351) (not b!41343) (not setNonEmpty!690) (not b!41321) (not b!41364) (not setNonEmpty!680) (not b!41306) (not b!41334) (not d!4178) (not b!41245) b_and!943 b_and!953 (not setNonEmpty!669) (not b!41360) (not setNonEmpty!658) (not d!4216) (not b!41314) (not b!41373) (not b_next!915) (not b!41260) (not d!4196) (not d!4204) (not setNonEmpty!681) (not b_next!913) (not setNonEmpty!663) (not d!4230) (not b!41308) (not setNonEmpty!664) (not mapNonEmpty!675) (not mapNonEmpty!681) (not d!4176) (not setNonEmpty!691) (not d!4240) (not b!41267) (not b!41374) (not b!41309) (not b!41279) (not d!4238) (not b!41290) (not d!4190) (not b!41319) b_and!945 (not b!41163) (not setNonEmpty!676) (not b!41243) (not mapNonEmpty!678) (not d!4172))
(check-sat b_and!947 b_and!949 (not b_next!911) b_and!951 (not b_next!909) (not b_next!915) (not b_next!913) b_and!945 (not b_next!919) (not b_next!917) b_and!943 b_and!953)
