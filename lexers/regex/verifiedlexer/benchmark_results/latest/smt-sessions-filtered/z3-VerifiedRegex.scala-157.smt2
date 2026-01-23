; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1814 () Bool)

(assert start!1814)

(declare-fun b!35133 () Bool)

(declare-fun b_free!465 () Bool)

(declare-fun b_next!465 () Bool)

(assert (=> b!35133 (= b_free!465 (not b_next!465))))

(declare-fun tp!24206 () Bool)

(declare-fun b_and!499 () Bool)

(assert (=> b!35133 (= tp!24206 b_and!499)))

(declare-fun b!35136 () Bool)

(declare-fun b_free!467 () Bool)

(declare-fun b_next!467 () Bool)

(assert (=> b!35136 (= b_free!467 (not b_next!467))))

(declare-fun tp!24204 () Bool)

(declare-fun b_and!501 () Bool)

(assert (=> b!35136 (= tp!24204 b_and!501)))

(declare-fun b!35149 () Bool)

(declare-fun b_free!469 () Bool)

(declare-fun b_next!469 () Bool)

(assert (=> b!35149 (= b_free!469 (not b_next!469))))

(declare-fun tp!24202 () Bool)

(declare-fun b_and!503 () Bool)

(assert (=> b!35149 (= tp!24202 b_and!503)))

(declare-fun b!35138 () Bool)

(declare-fun b_free!471 () Bool)

(declare-fun b_next!471 () Bool)

(assert (=> b!35138 (= b_free!471 (not b_next!471))))

(declare-fun tp!24195 () Bool)

(declare-fun b_and!505 () Bool)

(assert (=> b!35138 (= tp!24195 b_and!505)))

(declare-fun b!35128 () Bool)

(declare-fun res!27857 () Bool)

(declare-fun e!16673 () Bool)

(assert (=> b!35128 (=> (not res!27857) (not e!16673))))

(declare-datatypes ((Regex!159 0))(
  ( (ElementMatch!159 (c!15442 (_ BitVec 16))) (Concat!275 (regOne!830 Regex!159) (regTwo!830 Regex!159)) (EmptyExpr!159) (Star!159 (reg!488 Regex!159)) (EmptyLang!159) (Union!159 (regOne!831 Regex!159) (regTwo!831 Regex!159)) )
))
(declare-datatypes ((List!353 0))(
  ( (Nil!351) (Cons!351 (h!5747 Regex!159) (t!15159 List!353)) )
))
(declare-datatypes ((Context!82 0))(
  ( (Context!83 (exprs!541 List!353)) )
))
(declare-datatypes ((tuple3!92 0))(
  ( (tuple3!93 (_1!185 Regex!159) (_2!185 Context!82) (_3!48 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!274 0))(
  ( (tuple2!275 (_1!186 tuple3!92) (_2!186 (InoxSet Context!82))) )
))
(declare-datatypes ((List!354 0))(
  ( (Nil!352) (Cons!352 (h!5748 tuple2!274) (t!15160 List!354)) )
))
(declare-datatypes ((array!271 0))(
  ( (array!272 (arr!155 (Array (_ BitVec 32) List!354)) (size!401 (_ BitVec 32))) )
))
(declare-datatypes ((array!273 0))(
  ( (array!274 (arr!156 (Array (_ BitVec 32) (_ BitVec 64))) (size!402 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!164 0))(
  ( (LongMapFixedSize!165 (defaultEntry!420 Int) (mask!763 (_ BitVec 32)) (extraKeys!328 (_ BitVec 32)) (zeroValue!338 List!354) (minValue!338 List!354) (_size!296 (_ BitVec 32)) (_keys!373 array!273) (_values!360 array!271) (_vacant!142 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!317 0))(
  ( (Cell!318 (v!12125 LongMapFixedSize!164)) )
))
(declare-datatypes ((MutLongMap!82 0))(
  ( (LongMap!82 (underlying!359 Cell!317)) (MutLongMapExt!81 (__x!662 Int)) )
))
(declare-datatypes ((Cell!319 0))(
  ( (Cell!320 (v!12126 MutLongMap!82)) )
))
(declare-datatypes ((Hashable!78 0))(
  ( (HashableExt!77 (__x!663 Int)) )
))
(declare-datatypes ((MutableMap!78 0))(
  ( (MutableMapExt!77 (__x!664 Int)) (HashMap!78 (underlying!360 Cell!319) (hashF!1942 Hashable!78) (_size!297 (_ BitVec 32)) (defaultValue!226 Int)) )
))
(declare-datatypes ((CacheDown!70 0))(
  ( (CacheDown!71 (cache!557 MutableMap!78)) )
))
(declare-fun cacheDown!381 () CacheDown!70)

(declare-fun valid!89 (CacheDown!70) Bool)

(assert (=> b!35128 (= res!27857 (valid!89 cacheDown!381))))

(declare-fun b!35129 () Bool)

(declare-fun e!16657 () Bool)

(declare-fun e!16654 () Bool)

(assert (=> b!35129 (= e!16657 e!16654)))

(declare-fun b!35130 () Bool)

(declare-fun e!16670 () Bool)

(assert (=> b!35130 (= e!16673 e!16670)))

(declare-fun res!27853 () Bool)

(assert (=> b!35130 (=> (not res!27853) (not e!16670))))

(declare-datatypes ((tuple3!94 0))(
  ( (tuple3!95 (_1!187 (InoxSet Context!82)) (_2!187 Int) (_3!49 Int)) )
))
(declare-datatypes ((tuple2!276 0))(
  ( (tuple2!277 (_1!188 tuple3!94) (_2!188 Int)) )
))
(declare-datatypes ((List!355 0))(
  ( (Nil!353) (Cons!353 (h!5749 tuple2!276) (t!15161 List!355)) )
))
(declare-datatypes ((List!356 0))(
  ( (Nil!354) (Cons!354 (h!5750 (_ BitVec 16)) (t!15162 List!356)) )
))
(declare-datatypes ((IArray!109 0))(
  ( (IArray!110 (innerList!112 List!356)) )
))
(declare-datatypes ((Conc!54 0))(
  ( (Node!54 (left!409 Conc!54) (right!739 Conc!54) (csize!338 Int) (cheight!265 Int)) (Leaf!212 (xs!2633 IArray!109) (csize!339 Int)) (Empty!54) )
))
(declare-datatypes ((BalanceConc!108 0))(
  ( (BalanceConc!109 (c!15443 Conc!54)) )
))
(declare-datatypes ((array!275 0))(
  ( (array!276 (arr!157 (Array (_ BitVec 32) List!355)) (size!403 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!166 0))(
  ( (LongMapFixedSize!167 (defaultEntry!421 Int) (mask!764 (_ BitVec 32)) (extraKeys!329 (_ BitVec 32)) (zeroValue!339 List!355) (minValue!339 List!355) (_size!298 (_ BitVec 32)) (_keys!374 array!273) (_values!361 array!275) (_vacant!143 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!79 0))(
  ( (HashableExt!78 (__x!665 Int)) )
))
(declare-datatypes ((Cell!321 0))(
  ( (Cell!322 (v!12127 LongMapFixedSize!166)) )
))
(declare-datatypes ((MutLongMap!83 0))(
  ( (LongMap!83 (underlying!361 Cell!321)) (MutLongMapExt!82 (__x!666 Int)) )
))
(declare-datatypes ((Cell!323 0))(
  ( (Cell!324 (v!12128 MutLongMap!83)) )
))
(declare-datatypes ((MutableMap!79 0))(
  ( (MutableMapExt!78 (__x!667 Int)) (HashMap!79 (underlying!362 Cell!323) (hashF!1943 Hashable!79) (_size!299 (_ BitVec 32)) (defaultValue!227 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!18 0))(
  ( (CacheFurthestNullable!19 (cache!558 MutableMap!79) (totalInput!1482 BalanceConc!108)) )
))
(declare-fun lt!2814 () CacheFurthestNullable!18)

(declare-fun valid!90 (CacheFurthestNullable!18) Bool)

(assert (=> b!35130 (= res!27853 (valid!90 lt!2814))))

(declare-fun hashF!328 () Hashable!79)

(declare-fun lt!2812 () BalanceConc!108)

(declare-fun emptyFurthestNullableCache!6 (Hashable!79 BalanceConc!108 (_ BitVec 32)) CacheFurthestNullable!18)

(assert (=> b!35130 (= lt!2814 (emptyFurthestNullableCache!6 hashF!328 lt!2812 #b00000000000000000000000000010000))))

(declare-datatypes ((String!801 0))(
  ( (String!802 (value!6327 String)) )
))
(declare-fun path!6 () String!801)

(declare-fun openFile!0 (String!801) BalanceConc!108)

(assert (=> b!35130 (= lt!2812 (openFile!0 path!6))))

(declare-fun b!35131 () Bool)

(declare-fun res!27851 () Bool)

(declare-fun e!16671 () Bool)

(assert (=> b!35131 (=> (not res!27851) (not e!16671))))

(declare-datatypes ((tuple2!278 0))(
  ( (tuple2!279 (_1!189 Context!82) (_2!189 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!280 0))(
  ( (tuple2!281 (_1!190 tuple2!278) (_2!190 (InoxSet Context!82))) )
))
(declare-datatypes ((List!357 0))(
  ( (Nil!355) (Cons!355 (h!5751 tuple2!280) (t!15163 List!357)) )
))
(declare-datatypes ((TokenValue!116 0))(
  ( (FloatLiteralValue!232 (text!1257 List!356)) (TokenValueExt!115 (__x!668 Int)) (Broken!580 (value!6328 List!356)) (Object!117) (End!116) (Def!116) (Underscore!116) (Match!116) (Else!116) (Error!116) (Case!116) (If!116) (Extends!116) (Abstract!116) (Class!116) (Val!116) (DelimiterValue!232 (del!176 List!356)) (KeywordValue!122 (value!6329 List!356)) (CommentValue!232 (value!6330 List!356)) (WhitespaceValue!232 (value!6331 List!356)) (IndentationValue!116 (value!6332 List!356)) (String!803) (Int32!116) (Broken!581 (value!6333 List!356)) (Boolean!117) (Unit!185) (OperatorValue!119 (op!176 List!356)) (IdentifierValue!232 (value!6334 List!356)) (IdentifierValue!233 (value!6335 List!356)) (WhitespaceValue!233 (value!6336 List!356)) (True!232) (False!232) (Broken!582 (value!6337 List!356)) (Broken!583 (value!6338 List!356)) (True!233) (RightBrace!116) (RightBracket!116) (Colon!116) (Null!116) (Comma!116) (LeftBracket!116) (False!233) (LeftBrace!116) (ImaginaryLiteralValue!116 (text!1258 List!356)) (StringLiteralValue!348 (value!6339 List!356)) (EOFValue!116 (value!6340 List!356)) (IdentValue!116 (value!6341 List!356)) (DelimiterValue!233 (value!6342 List!356)) (DedentValue!116 (value!6343 List!356)) (NewLineValue!116 (value!6344 List!356)) (IntegerValue!348 (value!6345 (_ BitVec 32)) (text!1259 List!356)) (IntegerValue!349 (value!6346 Int) (text!1260 List!356)) (Times!116) (Or!116) (Equal!116) (Minus!116) (Broken!584 (value!6347 List!356)) (And!116) (Div!116) (LessEqual!116) (Mod!116) (Concat!276) (Not!116) (Plus!116) (SpaceValue!116 (value!6348 List!356)) (IntegerValue!350 (value!6349 Int) (text!1261 List!356)) (StringLiteralValue!349 (text!1262 List!356)) (FloatLiteralValue!233 (text!1263 List!356)) (BytesLiteralValue!116 (value!6350 List!356)) (CommentValue!233 (value!6351 List!356)) (StringLiteralValue!350 (value!6352 List!356)) (ErrorTokenValue!116 (msg!177 List!356)) )
))
(declare-datatypes ((TokenValueInjection!56 0))(
  ( (TokenValueInjection!57 (toValue!605 Int) (toChars!464 Int)) )
))
(declare-datatypes ((Rule!52 0))(
  ( (Rule!53 (regex!126 Regex!159) (tag!304 String!801) (isSeparator!126 Bool) (transformation!126 TokenValueInjection!56)) )
))
(declare-datatypes ((List!358 0))(
  ( (Nil!356) (Cons!356 (h!5752 Rule!52) (t!15164 List!358)) )
))
(declare-datatypes ((Token!30 0))(
  ( (Token!31 (value!6353 TokenValue!116) (rule!608 Rule!52) (size!404 Int) (originalCharacters!186 List!356)) )
))
(declare-datatypes ((List!359 0))(
  ( (Nil!357) (Cons!357 (h!5753 Token!30) (t!15165 List!359)) )
))
(declare-datatypes ((IArray!111 0))(
  ( (IArray!112 (innerList!113 List!359)) )
))
(declare-datatypes ((Conc!55 0))(
  ( (Node!55 (left!410 Conc!55) (right!740 Conc!55) (csize!340 Int) (cheight!266 Int)) (Leaf!213 (xs!2634 IArray!111) (csize!341 Int)) (Empty!55) )
))
(declare-datatypes ((BalanceConc!110 0))(
  ( (BalanceConc!111 (c!15444 Conc!55)) )
))
(declare-datatypes ((PrintableTokens!8 0))(
  ( (PrintableTokens!9 (rules!4756 List!358) (tokens!759 BalanceConc!110)) )
))
(declare-datatypes ((Hashable!80 0))(
  ( (HashableExt!79 (__x!669 Int)) )
))
(declare-datatypes ((array!277 0))(
  ( (array!278 (arr!158 (Array (_ BitVec 32) List!357)) (size!405 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!168 0))(
  ( (LongMapFixedSize!169 (defaultEntry!422 Int) (mask!765 (_ BitVec 32)) (extraKeys!330 (_ BitVec 32)) (zeroValue!340 List!357) (minValue!340 List!357) (_size!300 (_ BitVec 32)) (_keys!375 array!273) (_values!362 array!277) (_vacant!144 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!325 0))(
  ( (Cell!326 (v!12129 LongMapFixedSize!168)) )
))
(declare-datatypes ((MutLongMap!84 0))(
  ( (LongMap!84 (underlying!363 Cell!325)) (MutLongMapExt!83 (__x!670 Int)) )
))
(declare-datatypes ((Cell!327 0))(
  ( (Cell!328 (v!12130 MutLongMap!84)) )
))
(declare-datatypes ((MutableMap!80 0))(
  ( (MutableMapExt!79 (__x!671 Int)) (HashMap!80 (underlying!364 Cell!327) (hashF!1944 Hashable!80) (_size!301 (_ BitVec 32)) (defaultValue!228 Int)) )
))
(declare-datatypes ((CacheUp!68 0))(
  ( (CacheUp!69 (cache!559 MutableMap!80)) )
))
(declare-datatypes ((Option!43 0))(
  ( (None!42) (Some!42 (v!12131 PrintableTokens!8)) )
))
(declare-datatypes ((tuple4!4 0))(
  ( (tuple4!5 (_1!191 Option!43) (_2!191 CacheUp!68) (_3!50 CacheDown!70) (_4!2 CacheFurthestNullable!18)) )
))
(declare-fun lt!2810 () tuple4!4)

(declare-fun size!406 (PrintableTokens!8) Int)

(assert (=> b!35131 (= res!27851 (> (size!406 (v!12131 (_1!191 lt!2810))) 0))))

(declare-fun b!35132 () Bool)

(declare-fun e!16664 () Bool)

(assert (=> b!35132 (= e!16670 e!16664)))

(declare-fun res!27856 () Bool)

(assert (=> b!35132 (=> (not res!27856) (not e!16664))))

(declare-fun lt!2813 () List!358)

(declare-fun isEmpty!82 (List!358) Bool)

(assert (=> b!35132 (= res!27856 (not (isEmpty!82 lt!2813)))))

(declare-datatypes ((JsonLexer!14 0))(
  ( (JsonLexer!15) )
))
(declare-fun rules!109 (JsonLexer!14) List!358)

(assert (=> b!35132 (= lt!2813 (rules!109 JsonLexer!15))))

(declare-fun e!16656 () Bool)

(declare-fun e!16658 () Bool)

(assert (=> b!35133 (= e!16656 (and e!16658 tp!24206))))

(declare-fun b!35134 () Bool)

(assert (=> b!35134 (= e!16664 e!16671)))

(declare-fun res!27850 () Bool)

(assert (=> b!35134 (=> (not res!27850) (not e!16671))))

(get-info :version)

(assert (=> b!35134 (= res!27850 ((_ is Some!42) (_1!191 lt!2810)))))

(declare-fun cacheUp!368 () CacheUp!68)

(declare-fun lexAndCheckPrintable!0 (BalanceConc!108 CacheUp!68 CacheDown!70 CacheFurthestNullable!18) tuple4!4)

(assert (=> b!35134 (= lt!2810 (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814))))

(declare-fun b!35135 () Bool)

(declare-fun e!16666 () Bool)

(assert (=> b!35135 (= e!16666 e!16657)))

(declare-fun mapIsEmpty!280 () Bool)

(declare-fun mapRes!280 () Bool)

(assert (=> mapIsEmpty!280 mapRes!280))

(declare-fun mapIsEmpty!281 () Bool)

(declare-fun mapRes!281 () Bool)

(assert (=> mapIsEmpty!281 mapRes!281))

(declare-fun mapNonEmpty!280 () Bool)

(declare-fun tp!24205 () Bool)

(declare-fun tp!24199 () Bool)

(assert (=> mapNonEmpty!280 (= mapRes!280 (and tp!24205 tp!24199))))

(declare-fun mapKey!281 () (_ BitVec 32))

(declare-fun mapRest!280 () (Array (_ BitVec 32) List!354))

(declare-fun mapValue!280 () List!354)

(assert (=> mapNonEmpty!280 (= (arr!155 (_values!360 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) (store mapRest!280 mapKey!281 mapValue!280))))

(declare-fun e!16662 () Bool)

(declare-fun e!16661 () Bool)

(assert (=> b!35136 (= e!16662 (and e!16661 tp!24204))))

(declare-fun b!35137 () Bool)

(declare-fun e!16665 () Bool)

(declare-fun e!16660 () Bool)

(assert (=> b!35137 (= e!16665 e!16660)))

(declare-fun tp!24201 () Bool)

(declare-fun e!16668 () Bool)

(declare-fun e!16669 () Bool)

(declare-fun tp!24200 () Bool)

(declare-fun array_inv!88 (array!273) Bool)

(declare-fun array_inv!89 (array!271) Bool)

(assert (=> b!35138 (= e!16668 (and tp!24195 tp!24201 tp!24200 (array_inv!88 (_keys!373 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) (array_inv!89 (_values!360 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) e!16669))))

(declare-fun b!35139 () Bool)

(assert (=> b!35139 (= e!16660 e!16668)))

(declare-fun b!35140 () Bool)

(declare-fun res!27855 () Bool)

(assert (=> b!35140 (=> (not res!27855) (not e!16664))))

(declare-datatypes ((LexerInterface!25 0))(
  ( (LexerInterfaceExt!22 (__x!672 Int)) (Lexer!23) )
))
(declare-fun rulesInvariant!18 (LexerInterface!25 List!358) Bool)

(assert (=> b!35140 (= res!27855 (rulesInvariant!18 Lexer!23 lt!2813))))

(declare-fun b!35141 () Bool)

(declare-fun lt!2809 () MutLongMap!84)

(assert (=> b!35141 (= e!16661 (and e!16666 ((_ is LongMap!84) lt!2809)))))

(assert (=> b!35141 (= lt!2809 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))

(declare-fun b!35142 () Bool)

(declare-fun e!16653 () Bool)

(declare-fun tp!24203 () Bool)

(assert (=> b!35142 (= e!16653 (and tp!24203 mapRes!281))))

(declare-fun condMapEmpty!280 () Bool)

(declare-fun mapDefault!281 () List!357)

(assert (=> b!35142 (= condMapEmpty!280 (= (arr!158 (_values!362 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!357)) mapDefault!281)))))

(declare-fun b!35143 () Bool)

(declare-fun e!16672 () Bool)

(assert (=> b!35143 (= e!16672 e!16662)))

(declare-fun b!35144 () Bool)

(declare-fun res!27854 () Bool)

(assert (=> b!35144 (=> (not res!27854) (not e!16670))))

(assert (=> b!35144 (= res!27854 (= (totalInput!1482 lt!2814) lt!2812))))

(declare-fun b!35145 () Bool)

(declare-fun lt!2811 () MutLongMap!82)

(assert (=> b!35145 (= e!16658 (and e!16665 ((_ is LongMap!82) lt!2811)))))

(assert (=> b!35145 (= lt!2811 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))

(declare-fun b!35146 () Bool)

(declare-fun e!16663 () Bool)

(assert (=> b!35146 (= e!16663 e!16656)))

(declare-fun b!35147 () Bool)

(declare-fun usesJsonRules!0 (PrintableTokens!8) Bool)

(assert (=> b!35147 (= e!16671 (not (usesJsonRules!0 (v!12131 (_1!191 lt!2810)))))))

(declare-fun mapNonEmpty!281 () Bool)

(declare-fun tp!24193 () Bool)

(declare-fun tp!24197 () Bool)

(assert (=> mapNonEmpty!281 (= mapRes!281 (and tp!24193 tp!24197))))

(declare-fun mapKey!280 () (_ BitVec 32))

(declare-fun mapRest!281 () (Array (_ BitVec 32) List!357))

(declare-fun mapValue!281 () List!357)

(assert (=> mapNonEmpty!281 (= (arr!158 (_values!362 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) (store mapRest!281 mapKey!280 mapValue!281))))

(declare-fun b!35148 () Bool)

(declare-fun tp!24196 () Bool)

(assert (=> b!35148 (= e!16669 (and tp!24196 mapRes!280))))

(declare-fun condMapEmpty!281 () Bool)

(declare-fun mapDefault!280 () List!354)

(assert (=> b!35148 (= condMapEmpty!281 (= (arr!155 (_values!360 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!354)) mapDefault!280)))))

(declare-fun tp!24198 () Bool)

(declare-fun tp!24194 () Bool)

(declare-fun array_inv!90 (array!277) Bool)

(assert (=> b!35149 (= e!16654 (and tp!24202 tp!24194 tp!24198 (array_inv!88 (_keys!375 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) (array_inv!90 (_values!362 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) e!16653))))

(declare-fun res!27852 () Bool)

(assert (=> start!1814 (=> (not res!27852) (not e!16673))))

(declare-fun valid!91 (CacheUp!68) Bool)

(assert (=> start!1814 (= res!27852 (valid!91 cacheUp!368))))

(assert (=> start!1814 e!16673))

(declare-fun inv!662 (CacheUp!68) Bool)

(assert (=> start!1814 (and (inv!662 cacheUp!368) e!16672)))

(declare-fun inv!663 (CacheDown!70) Bool)

(assert (=> start!1814 (and (inv!663 cacheDown!381) e!16663)))

(assert (=> start!1814 true))

(declare-fun inv!661 (String!801) Bool)

(assert (=> start!1814 (inv!661 path!6)))

(assert (= (and start!1814 res!27852) b!35128))

(assert (= (and b!35128 res!27857) b!35130))

(assert (= (and b!35130 res!27853) b!35144))

(assert (= (and b!35144 res!27854) b!35132))

(assert (= (and b!35132 res!27856) b!35140))

(assert (= (and b!35140 res!27855) b!35134))

(assert (= (and b!35134 res!27850) b!35131))

(assert (= (and b!35131 res!27851) b!35147))

(assert (= (and b!35142 condMapEmpty!280) mapIsEmpty!281))

(assert (= (and b!35142 (not condMapEmpty!280)) mapNonEmpty!281))

(assert (= b!35149 b!35142))

(assert (= b!35129 b!35149))

(assert (= b!35135 b!35129))

(assert (= (and b!35141 ((_ is LongMap!84) (v!12130 (underlying!364 (cache!559 cacheUp!368))))) b!35135))

(assert (= b!35136 b!35141))

(assert (= (and b!35143 ((_ is HashMap!80) (cache!559 cacheUp!368))) b!35136))

(assert (= start!1814 b!35143))

(assert (= (and b!35148 condMapEmpty!281) mapIsEmpty!280))

(assert (= (and b!35148 (not condMapEmpty!281)) mapNonEmpty!280))

(assert (= b!35138 b!35148))

(assert (= b!35139 b!35138))

(assert (= b!35137 b!35139))

(assert (= (and b!35145 ((_ is LongMap!82) (v!12126 (underlying!360 (cache!557 cacheDown!381))))) b!35137))

(assert (= b!35133 b!35145))

(assert (= (and b!35146 ((_ is HashMap!78) (cache!557 cacheDown!381))) b!35133))

(assert (= start!1814 b!35146))

(declare-fun m!10869 () Bool)

(assert (=> start!1814 m!10869))

(declare-fun m!10871 () Bool)

(assert (=> start!1814 m!10871))

(declare-fun m!10873 () Bool)

(assert (=> start!1814 m!10873))

(declare-fun m!10875 () Bool)

(assert (=> start!1814 m!10875))

(declare-fun m!10877 () Bool)

(assert (=> b!35147 m!10877))

(declare-fun m!10879 () Bool)

(assert (=> b!35132 m!10879))

(declare-fun m!10881 () Bool)

(assert (=> b!35132 m!10881))

(declare-fun m!10883 () Bool)

(assert (=> b!35149 m!10883))

(declare-fun m!10885 () Bool)

(assert (=> b!35149 m!10885))

(declare-fun m!10887 () Bool)

(assert (=> b!35134 m!10887))

(declare-fun m!10889 () Bool)

(assert (=> mapNonEmpty!281 m!10889))

(declare-fun m!10891 () Bool)

(assert (=> b!35131 m!10891))

(declare-fun m!10893 () Bool)

(assert (=> b!35128 m!10893))

(declare-fun m!10895 () Bool)

(assert (=> b!35140 m!10895))

(declare-fun m!10897 () Bool)

(assert (=> mapNonEmpty!280 m!10897))

(declare-fun m!10899 () Bool)

(assert (=> b!35138 m!10899))

(declare-fun m!10901 () Bool)

(assert (=> b!35138 m!10901))

(declare-fun m!10903 () Bool)

(assert (=> b!35130 m!10903))

(declare-fun m!10905 () Bool)

(assert (=> b!35130 m!10905))

(declare-fun m!10907 () Bool)

(assert (=> b!35130 m!10907))

(check-sat (not b!35140) (not b!35128) (not b_next!467) (not b_next!471) (not b!35138) (not b_next!465) (not mapNonEmpty!281) (not mapNonEmpty!280) (not b!35131) (not b!35134) (not b!35148) (not b!35147) (not b!35149) b_and!499 b_and!503 (not b!35130) (not b!35132) b_and!501 (not b_next!469) (not start!1814) (not b!35142) b_and!505)
(check-sat b_and!499 (not b_next!467) b_and!503 (not b_next!471) b_and!501 (not b_next!469) b_and!505 (not b_next!465))
(get-model)

(declare-fun d!3650 () Bool)

(assert (=> d!3650 (= (array_inv!88 (_keys!375 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) (bvsge (size!402 (_keys!375 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) #b00000000000000000000000000000000))))

(assert (=> b!35149 d!3650))

(declare-fun d!3652 () Bool)

(assert (=> d!3652 (= (array_inv!90 (_values!362 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) (bvsge (size!405 (_values!362 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))) #b00000000000000000000000000000000))))

(assert (=> b!35149 d!3652))

(declare-fun d!3654 () Bool)

(assert (=> d!3654 (= (isEmpty!82 lt!2813) ((_ is Nil!356) lt!2813))))

(assert (=> b!35132 d!3654))

(declare-fun d!3656 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!14) Rule!52)

(declare-fun integerLiteralRule!0 (JsonLexer!14) Rule!52)

(declare-fun floatLiteralRule!0 (JsonLexer!14) Rule!52)

(declare-fun trueRule!0 (JsonLexer!14) Rule!52)

(declare-fun falseRule!0 (JsonLexer!14) Rule!52)

(declare-fun nullRule!0 (JsonLexer!14) Rule!52)

(declare-fun jsonstringRule!0 (JsonLexer!14) Rule!52)

(declare-fun lBraceRule!0 (JsonLexer!14) Rule!52)

(declare-fun rBraceRule!0 (JsonLexer!14) Rule!52)

(declare-fun lBracketRule!0 (JsonLexer!14) Rule!52)

(declare-fun rBracketRule!0 (JsonLexer!14) Rule!52)

(declare-fun colonRule!0 (JsonLexer!14) Rule!52)

(declare-fun commaRule!0 (JsonLexer!14) Rule!52)

(declare-fun eofRule!0 (JsonLexer!14) Rule!52)

(assert (=> d!3656 (= (rules!109 JsonLexer!15) (Cons!356 (whitespaceRule!0 JsonLexer!15) (Cons!356 (integerLiteralRule!0 JsonLexer!15) (Cons!356 (floatLiteralRule!0 JsonLexer!15) (Cons!356 (trueRule!0 JsonLexer!15) (Cons!356 (falseRule!0 JsonLexer!15) (Cons!356 (nullRule!0 JsonLexer!15) (Cons!356 (jsonstringRule!0 JsonLexer!15) (Cons!356 (lBraceRule!0 JsonLexer!15) (Cons!356 (rBraceRule!0 JsonLexer!15) (Cons!356 (lBracketRule!0 JsonLexer!15) (Cons!356 (rBracketRule!0 JsonLexer!15) (Cons!356 (colonRule!0 JsonLexer!15) (Cons!356 (commaRule!0 JsonLexer!15) (Cons!356 (eofRule!0 JsonLexer!15) Nil!356)))))))))))))))))

(declare-fun bs!4609 () Bool)

(assert (= bs!4609 d!3656))

(declare-fun m!10909 () Bool)

(assert (=> bs!4609 m!10909))

(declare-fun m!10911 () Bool)

(assert (=> bs!4609 m!10911))

(declare-fun m!10913 () Bool)

(assert (=> bs!4609 m!10913))

(declare-fun m!10915 () Bool)

(assert (=> bs!4609 m!10915))

(declare-fun m!10917 () Bool)

(assert (=> bs!4609 m!10917))

(declare-fun m!10919 () Bool)

(assert (=> bs!4609 m!10919))

(declare-fun m!10921 () Bool)

(assert (=> bs!4609 m!10921))

(declare-fun m!10923 () Bool)

(assert (=> bs!4609 m!10923))

(declare-fun m!10925 () Bool)

(assert (=> bs!4609 m!10925))

(declare-fun m!10927 () Bool)

(assert (=> bs!4609 m!10927))

(declare-fun m!10929 () Bool)

(assert (=> bs!4609 m!10929))

(declare-fun m!10931 () Bool)

(assert (=> bs!4609 m!10931))

(declare-fun m!10933 () Bool)

(assert (=> bs!4609 m!10933))

(declare-fun m!10935 () Bool)

(assert (=> bs!4609 m!10935))

(assert (=> b!35132 d!3656))

(declare-fun d!3658 () Bool)

(declare-fun res!27862 () Bool)

(declare-fun e!16676 () Bool)

(assert (=> d!3658 (=> (not res!27862) (not e!16676))))

(declare-fun rulesValid!7 (LexerInterface!25 List!358) Bool)

(assert (=> d!3658 (= res!27862 (rulesValid!7 Lexer!23 lt!2813))))

(assert (=> d!3658 (= (rulesInvariant!18 Lexer!23 lt!2813) e!16676)))

(declare-fun b!35152 () Bool)

(declare-datatypes ((List!360 0))(
  ( (Nil!358) (Cons!358 (h!5754 String!801) (t!15166 List!360)) )
))
(declare-fun noDuplicateTag!7 (LexerInterface!25 List!358 List!360) Bool)

(assert (=> b!35152 (= e!16676 (noDuplicateTag!7 Lexer!23 lt!2813 Nil!358))))

(assert (= (and d!3658 res!27862) b!35152))

(declare-fun m!10937 () Bool)

(assert (=> d!3658 m!10937))

(declare-fun m!10939 () Bool)

(assert (=> b!35152 m!10939))

(assert (=> b!35140 d!3658))

(declare-fun d!3660 () Bool)

(declare-fun validCacheMapUp!7 (MutableMap!80) Bool)

(assert (=> d!3660 (= (valid!91 cacheUp!368) (validCacheMapUp!7 (cache!559 cacheUp!368)))))

(declare-fun bs!4610 () Bool)

(assert (= bs!4610 d!3660))

(declare-fun m!10941 () Bool)

(assert (=> bs!4610 m!10941))

(assert (=> start!1814 d!3660))

(declare-fun d!3662 () Bool)

(declare-fun res!27865 () Bool)

(declare-fun e!16679 () Bool)

(assert (=> d!3662 (=> (not res!27865) (not e!16679))))

(assert (=> d!3662 (= res!27865 ((_ is HashMap!80) (cache!559 cacheUp!368)))))

(assert (=> d!3662 (= (inv!662 cacheUp!368) e!16679)))

(declare-fun b!35155 () Bool)

(assert (=> b!35155 (= e!16679 (validCacheMapUp!7 (cache!559 cacheUp!368)))))

(assert (= (and d!3662 res!27865) b!35155))

(assert (=> b!35155 m!10941))

(assert (=> start!1814 d!3662))

(declare-fun d!3664 () Bool)

(declare-fun res!27868 () Bool)

(declare-fun e!16682 () Bool)

(assert (=> d!3664 (=> (not res!27868) (not e!16682))))

(assert (=> d!3664 (= res!27868 ((_ is HashMap!78) (cache!557 cacheDown!381)))))

(assert (=> d!3664 (= (inv!663 cacheDown!381) e!16682)))

(declare-fun b!35158 () Bool)

(declare-fun validCacheMapDown!9 (MutableMap!78) Bool)

(assert (=> b!35158 (= e!16682 (validCacheMapDown!9 (cache!557 cacheDown!381)))))

(assert (= (and d!3664 res!27868) b!35158))

(declare-fun m!10943 () Bool)

(assert (=> b!35158 m!10943))

(assert (=> start!1814 d!3664))

(declare-fun d!3666 () Bool)

(assert (=> d!3666 (= (inv!661 path!6) (= (mod (str.len (value!6327 path!6)) 2) 0))))

(assert (=> start!1814 d!3666))

(declare-fun d!3668 () Bool)

(assert (=> d!3668 (= (valid!89 cacheDown!381) (validCacheMapDown!9 (cache!557 cacheDown!381)))))

(declare-fun bs!4611 () Bool)

(assert (= bs!4611 d!3668))

(assert (=> bs!4611 m!10943))

(assert (=> b!35128 d!3668))

(declare-fun d!3670 () Bool)

(assert (=> d!3670 (= (usesJsonRules!0 (v!12131 (_1!191 lt!2810))) (= (rules!4756 (v!12131 (_1!191 lt!2810))) (rules!109 JsonLexer!15)))))

(declare-fun bs!4612 () Bool)

(assert (= bs!4612 d!3670))

(assert (=> bs!4612 m!10881))

(assert (=> b!35147 d!3670))

(declare-fun d!3672 () Bool)

(declare-fun e!16685 () Bool)

(assert (=> d!3672 e!16685))

(declare-fun res!27871 () Bool)

(assert (=> d!3672 (=> res!27871 e!16685)))

(declare-fun lt!2826 () tuple4!4)

(declare-fun isEmpty!83 (Option!43) Bool)

(assert (=> d!3672 (= res!27871 (isEmpty!83 (_1!191 lt!2826)))))

(declare-datatypes ((tuple2!282 0))(
  ( (tuple2!283 (_1!192 BalanceConc!110) (_2!192 BalanceConc!108)) )
))
(declare-datatypes ((tuple4!6 0))(
  ( (tuple4!7 (_1!193 tuple2!282) (_2!193 CacheUp!68) (_3!51 CacheDown!70) (_4!3 CacheFurthestNullable!18)) )
))
(declare-fun lt!2824 () tuple4!6)

(declare-fun printableTokensFromTokens!1 (List!358 BalanceConc!110) Option!43)

(assert (=> d!3672 (= lt!2826 (tuple4!5 (printableTokensFromTokens!1 (rules!109 JsonLexer!15) (_1!192 (_1!193 lt!2824))) (_2!193 lt!2824) (_3!51 lt!2824) (_4!3 lt!2824)))))

(declare-datatypes ((Unit!186 0))(
  ( (Unit!187) )
))
(declare-fun lt!2823 () Unit!186)

(declare-fun lemmaInvariant!5 (CacheDown!70) Unit!186)

(assert (=> d!3672 (= lt!2823 (lemmaInvariant!5 (_3!51 lt!2824)))))

(declare-fun lt!2825 () Unit!186)

(declare-fun lemmaInvariant!6 (CacheUp!68) Unit!186)

(assert (=> d!3672 (= lt!2825 (lemmaInvariant!6 (_2!193 lt!2824)))))

(declare-fun lexMem!1 (LexerInterface!25 List!358 BalanceConc!108 CacheUp!68 CacheDown!70 CacheFurthestNullable!18) tuple4!6)

(assert (=> d!3672 (= lt!2824 (lexMem!1 Lexer!23 (rules!109 JsonLexer!15) lt!2812 cacheUp!368 cacheDown!381 lt!2814))))

(assert (=> d!3672 (not (isEmpty!82 (rules!109 JsonLexer!15)))))

(assert (=> d!3672 (= (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814) lt!2826)))

(declare-fun b!35161 () Bool)

(declare-fun get!178 (Option!43) PrintableTokens!8)

(assert (=> b!35161 (= e!16685 (usesJsonRules!0 (get!178 (_1!191 lt!2826))))))

(assert (= (and d!3672 (not res!27871)) b!35161))

(declare-fun m!10945 () Bool)

(assert (=> d!3672 m!10945))

(assert (=> d!3672 m!10881))

(declare-fun m!10947 () Bool)

(assert (=> d!3672 m!10947))

(declare-fun m!10949 () Bool)

(assert (=> d!3672 m!10949))

(assert (=> d!3672 m!10881))

(declare-fun m!10951 () Bool)

(assert (=> d!3672 m!10951))

(assert (=> d!3672 m!10881))

(declare-fun m!10953 () Bool)

(assert (=> d!3672 m!10953))

(declare-fun m!10955 () Bool)

(assert (=> d!3672 m!10955))

(assert (=> d!3672 m!10881))

(declare-fun m!10957 () Bool)

(assert (=> b!35161 m!10957))

(assert (=> b!35161 m!10957))

(declare-fun m!10959 () Bool)

(assert (=> b!35161 m!10959))

(assert (=> b!35134 d!3672))

(declare-fun d!3674 () Bool)

(declare-fun validCacheMapFurthestNullable!1 (MutableMap!79 BalanceConc!108) Bool)

(assert (=> d!3674 (= (valid!90 lt!2814) (validCacheMapFurthestNullable!1 (cache!558 lt!2814) (totalInput!1482 lt!2814)))))

(declare-fun bs!4613 () Bool)

(assert (= bs!4613 d!3674))

(declare-fun m!10961 () Bool)

(assert (=> bs!4613 m!10961))

(assert (=> b!35130 d!3674))

(declare-fun b!35178 () Bool)

(declare-fun e!16701 () Bool)

(declare-fun lt!2838 () MutLongMap!83)

(assert (=> b!35178 (= e!16701 ((_ is LongMap!83) lt!2838))))

(assert (=> b!35178 (= lt!2838 (v!12128 (underlying!362 (cache!558 (emptyFurthestNullableCache!6 hashF!328 lt!2812 #b00000000000000000000000000010000)))))))

(declare-fun b!35177 () Bool)

(declare-fun e!16700 () Bool)

(assert (=> b!35177 (= e!16700 e!16701)))

(declare-fun b!35176 () Bool)

(declare-fun e!16699 () Bool)

(assert (=> b!35176 (= e!16699 e!16700)))

(declare-fun d!3676 () Bool)

(assert (=> d!3676 (= true e!16699)))

(assert (= b!35177 b!35178))

(assert (= (and b!35176 ((_ is HashMap!79) (cache!558 (emptyFurthestNullableCache!6 hashF!328 lt!2812 #b00000000000000000000000000010000)))) b!35177))

(assert (= d!3676 b!35176))

(declare-fun b!35167 () Bool)

(assert (=> b!35167 true))

(declare-fun lt!2835 () CacheFurthestNullable!18)

(assert (=> d!3676 (valid!90 lt!2835)))

(declare-fun lt!2833 () MutableMap!79)

(assert (=> d!3676 (= lt!2835 (CacheFurthestNullable!19 lt!2833 lt!2812))))

(declare-fun lt!2834 () Unit!186)

(declare-fun Unit!188 () Unit!186)

(assert (=> d!3676 (= lt!2834 Unit!188)))

(declare-fun e!16692 () Bool)

(assert (=> d!3676 (= (validCacheMapFurthestNullable!1 lt!2833 lt!2812) e!16692)))

(declare-fun res!27877 () Bool)

(assert (=> d!3676 (=> (not res!27877) (not e!16692))))

(declare-fun valid!92 (MutableMap!79) Bool)

(assert (=> d!3676 (= res!27877 (valid!92 lt!2833))))

(declare-fun lambda!562 () Int)

(declare-fun getEmptyHashMap!3 (Int Hashable!79 (_ BitVec 32)) MutableMap!79)

(assert (=> d!3676 (= lt!2833 (getEmptyHashMap!3 lambda!562 hashF!328 #b00000000000000000000000000010000))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!3676 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!3676 (= (emptyFurthestNullableCache!6 hashF!328 lt!2812 #b00000000000000000000000000010000) lt!2835)))

(declare-fun b!35166 () Bool)

(declare-fun res!27876 () Bool)

(assert (=> b!35166 (=> (not res!27876) (not e!16692))))

(declare-fun invariantList!14 (List!355) Bool)

(declare-datatypes ((ListMap!29 0))(
  ( (ListMap!30 (toList!164 List!355)) )
))
(declare-fun map!201 (MutableMap!79) ListMap!29)

(assert (=> b!35166 (= res!27876 (invariantList!14 (toList!164 (map!201 lt!2833))))))

(declare-fun lambda!563 () Int)

(declare-fun forall!42 (List!355 Int) Bool)

(assert (=> b!35167 (= e!16692 (forall!42 (toList!164 (map!201 lt!2833)) lambda!563))))

(assert (= (and d!3676 res!27877) b!35166))

(assert (= (and b!35166 res!27876) b!35167))

(declare-fun m!10963 () Bool)

(assert (=> d!3676 m!10963))

(declare-fun m!10965 () Bool)

(assert (=> d!3676 m!10965))

(declare-fun m!10967 () Bool)

(assert (=> d!3676 m!10967))

(declare-fun m!10969 () Bool)

(assert (=> d!3676 m!10969))

(declare-fun m!10971 () Bool)

(assert (=> d!3676 m!10971))

(declare-fun m!10973 () Bool)

(assert (=> b!35166 m!10973))

(declare-fun m!10975 () Bool)

(assert (=> b!35166 m!10975))

(assert (=> b!35167 m!10973))

(declare-fun m!10977 () Bool)

(assert (=> b!35167 m!10977))

(assert (=> b!35130 d!3676))

(declare-fun d!3678 () Bool)

(declare-fun choose!360 (String!801) BalanceConc!108)

(assert (=> d!3678 (= (openFile!0 path!6) (choose!360 path!6))))

(declare-fun bs!4614 () Bool)

(assert (= bs!4614 d!3678))

(declare-fun m!10979 () Bool)

(assert (=> bs!4614 m!10979))

(assert (=> b!35130 d!3678))

(declare-fun d!3680 () Bool)

(assert (=> d!3680 (= (array_inv!88 (_keys!373 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) (bvsge (size!402 (_keys!373 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) #b00000000000000000000000000000000))))

(assert (=> b!35138 d!3680))

(declare-fun d!3682 () Bool)

(assert (=> d!3682 (= (array_inv!89 (_values!360 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) (bvsge (size!401 (_values!360 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))) #b00000000000000000000000000000000))))

(assert (=> b!35138 d!3682))

(declare-fun d!3684 () Bool)

(declare-fun size!407 (BalanceConc!110) Int)

(assert (=> d!3684 (= (size!406 (v!12131 (_1!191 lt!2810))) (size!407 (tokens!759 (v!12131 (_1!191 lt!2810)))))))

(declare-fun bs!4615 () Bool)

(assert (= bs!4615 d!3684))

(declare-fun m!10981 () Bool)

(assert (=> bs!4615 m!10981))

(assert (=> b!35131 d!3684))

(declare-fun tp!24212 () Bool)

(declare-fun b!35185 () Bool)

(declare-fun setRes!520 () Bool)

(declare-fun e!16708 () Bool)

(declare-fun inv!664 (Context!82) Bool)

(assert (=> b!35185 (= e!16708 (and (inv!664 (_1!189 (_1!190 (h!5751 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))))) setRes!520 tp!24212))))

(declare-fun condSetEmpty!520 () Bool)

(assert (=> b!35185 (= condSetEmpty!520 (= (_2!190 (h!5751 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!520 () Bool)

(assert (=> setIsEmpty!520 setRes!520))

(declare-fun setNonEmpty!520 () Bool)

(declare-fun tp!24211 () Bool)

(declare-fun setElem!520 () Context!82)

(assert (=> setNonEmpty!520 (= setRes!520 (and tp!24211 (inv!664 setElem!520)))))

(declare-fun setRest!520 () (InoxSet Context!82))

(assert (=> setNonEmpty!520 (= (_2!190 (h!5751 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!520 true) setRest!520))))

(assert (=> b!35149 (= tp!24194 e!16708)))

(assert (= (and b!35185 condSetEmpty!520) setIsEmpty!520))

(assert (= (and b!35185 (not condSetEmpty!520)) setNonEmpty!520))

(assert (= (and b!35149 ((_ is Cons!355) (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))) b!35185))

(declare-fun m!10983 () Bool)

(assert (=> b!35185 m!10983))

(declare-fun m!10985 () Bool)

(assert (=> setNonEmpty!520 m!10985))

(declare-fun tp!24214 () Bool)

(declare-fun e!16711 () Bool)

(declare-fun setRes!521 () Bool)

(declare-fun b!35186 () Bool)

(assert (=> b!35186 (= e!16711 (and (inv!664 (_1!189 (_1!190 (h!5751 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))))) setRes!521 tp!24214))))

(declare-fun condSetEmpty!521 () Bool)

(assert (=> b!35186 (= condSetEmpty!521 (= (_2!190 (h!5751 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!521 () Bool)

(assert (=> setIsEmpty!521 setRes!521))

(declare-fun setNonEmpty!521 () Bool)

(declare-fun tp!24213 () Bool)

(declare-fun setElem!521 () Context!82)

(assert (=> setNonEmpty!521 (= setRes!521 (and tp!24213 (inv!664 setElem!521)))))

(declare-fun setRest!521 () (InoxSet Context!82))

(assert (=> setNonEmpty!521 (= (_2!190 (h!5751 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!521 true) setRest!521))))

(assert (=> b!35149 (= tp!24198 e!16711)))

(assert (= (and b!35186 condSetEmpty!521) setIsEmpty!521))

(assert (= (and b!35186 (not condSetEmpty!521)) setNonEmpty!521))

(assert (= (and b!35149 ((_ is Cons!355) (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))) b!35186))

(declare-fun m!10987 () Bool)

(assert (=> b!35186 m!10987))

(declare-fun m!10989 () Bool)

(assert (=> setNonEmpty!521 m!10989))

(declare-fun mapIsEmpty!284 () Bool)

(declare-fun mapRes!284 () Bool)

(assert (=> mapIsEmpty!284 mapRes!284))

(declare-fun mapValue!284 () List!354)

(declare-fun setRes!527 () Bool)

(declare-fun e!16729 () Bool)

(declare-fun tp!24228 () Bool)

(declare-fun b!35193 () Bool)

(assert (=> b!35193 (= e!16729 (and (inv!664 (_2!185 (_1!186 (h!5748 mapValue!284)))) setRes!527 tp!24228))))

(declare-fun condSetEmpty!527 () Bool)

(assert (=> b!35193 (= condSetEmpty!527 (= (_2!186 (h!5748 mapValue!284)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun condMapEmpty!284 () Bool)

(declare-fun mapDefault!284 () List!354)

(assert (=> mapNonEmpty!280 (= condMapEmpty!284 (= mapRest!280 ((as const (Array (_ BitVec 32) List!354)) mapDefault!284)))))

(declare-fun e!16730 () Bool)

(assert (=> mapNonEmpty!280 (= tp!24205 (and e!16730 mapRes!284))))

(declare-fun setNonEmpty!526 () Bool)

(declare-fun setRes!526 () Bool)

(declare-fun tp!24226 () Bool)

(declare-fun setElem!526 () Context!82)

(assert (=> setNonEmpty!526 (= setRes!526 (and tp!24226 (inv!664 setElem!526)))))

(declare-fun setRest!527 () (InoxSet Context!82))

(assert (=> setNonEmpty!526 (= (_2!186 (h!5748 mapDefault!284)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!526 true) setRest!527))))

(declare-fun setNonEmpty!527 () Bool)

(declare-fun tp!24225 () Bool)

(declare-fun setElem!527 () Context!82)

(assert (=> setNonEmpty!527 (= setRes!527 (and tp!24225 (inv!664 setElem!527)))))

(declare-fun setRest!526 () (InoxSet Context!82))

(assert (=> setNonEmpty!527 (= (_2!186 (h!5748 mapValue!284)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!527 true) setRest!526))))

(declare-fun setIsEmpty!526 () Bool)

(assert (=> setIsEmpty!526 setRes!526))

(declare-fun mapNonEmpty!284 () Bool)

(declare-fun tp!24227 () Bool)

(assert (=> mapNonEmpty!284 (= mapRes!284 (and tp!24227 e!16729))))

(declare-fun mapKey!284 () (_ BitVec 32))

(declare-fun mapRest!284 () (Array (_ BitVec 32) List!354))

(assert (=> mapNonEmpty!284 (= mapRest!280 (store mapRest!284 mapKey!284 mapValue!284))))

(declare-fun b!35194 () Bool)

(declare-fun tp!24229 () Bool)

(assert (=> b!35194 (= e!16730 (and (inv!664 (_2!185 (_1!186 (h!5748 mapDefault!284)))) setRes!526 tp!24229))))

(declare-fun condSetEmpty!526 () Bool)

(assert (=> b!35194 (= condSetEmpty!526 (= (_2!186 (h!5748 mapDefault!284)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!527 () Bool)

(assert (=> setIsEmpty!527 setRes!527))

(assert (= (and mapNonEmpty!280 condMapEmpty!284) mapIsEmpty!284))

(assert (= (and mapNonEmpty!280 (not condMapEmpty!284)) mapNonEmpty!284))

(assert (= (and b!35193 condSetEmpty!527) setIsEmpty!527))

(assert (= (and b!35193 (not condSetEmpty!527)) setNonEmpty!527))

(assert (= (and mapNonEmpty!284 ((_ is Cons!352) mapValue!284)) b!35193))

(assert (= (and b!35194 condSetEmpty!526) setIsEmpty!526))

(assert (= (and b!35194 (not condSetEmpty!526)) setNonEmpty!526))

(assert (= (and mapNonEmpty!280 ((_ is Cons!352) mapDefault!284)) b!35194))

(declare-fun m!10991 () Bool)

(assert (=> b!35193 m!10991))

(declare-fun m!10993 () Bool)

(assert (=> setNonEmpty!526 m!10993))

(declare-fun m!10995 () Bool)

(assert (=> mapNonEmpty!284 m!10995))

(declare-fun m!10997 () Bool)

(assert (=> setNonEmpty!527 m!10997))

(declare-fun m!10999 () Bool)

(assert (=> b!35194 m!10999))

(declare-fun b!35199 () Bool)

(declare-fun tp!24235 () Bool)

(declare-fun e!16738 () Bool)

(declare-fun setRes!530 () Bool)

(assert (=> b!35199 (= e!16738 (and (inv!664 (_2!185 (_1!186 (h!5748 mapValue!280)))) setRes!530 tp!24235))))

(declare-fun condSetEmpty!530 () Bool)

(assert (=> b!35199 (= condSetEmpty!530 (= (_2!186 (h!5748 mapValue!280)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!530 () Bool)

(assert (=> setIsEmpty!530 setRes!530))

(declare-fun setNonEmpty!530 () Bool)

(declare-fun tp!24234 () Bool)

(declare-fun setElem!530 () Context!82)

(assert (=> setNonEmpty!530 (= setRes!530 (and tp!24234 (inv!664 setElem!530)))))

(declare-fun setRest!530 () (InoxSet Context!82))

(assert (=> setNonEmpty!530 (= (_2!186 (h!5748 mapValue!280)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!530 true) setRest!530))))

(assert (=> mapNonEmpty!280 (= tp!24199 e!16738)))

(assert (= (and b!35199 condSetEmpty!530) setIsEmpty!530))

(assert (= (and b!35199 (not condSetEmpty!530)) setNonEmpty!530))

(assert (= (and mapNonEmpty!280 ((_ is Cons!352) mapValue!280)) b!35199))

(declare-fun m!11001 () Bool)

(assert (=> b!35199 m!11001))

(declare-fun m!11003 () Bool)

(assert (=> setNonEmpty!530 m!11003))

(declare-fun tp!24237 () Bool)

(declare-fun b!35200 () Bool)

(declare-fun e!16741 () Bool)

(declare-fun setRes!531 () Bool)

(assert (=> b!35200 (= e!16741 (and (inv!664 (_1!189 (_1!190 (h!5751 mapDefault!281)))) setRes!531 tp!24237))))

(declare-fun condSetEmpty!531 () Bool)

(assert (=> b!35200 (= condSetEmpty!531 (= (_2!190 (h!5751 mapDefault!281)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!531 () Bool)

(assert (=> setIsEmpty!531 setRes!531))

(declare-fun setNonEmpty!531 () Bool)

(declare-fun tp!24236 () Bool)

(declare-fun setElem!531 () Context!82)

(assert (=> setNonEmpty!531 (= setRes!531 (and tp!24236 (inv!664 setElem!531)))))

(declare-fun setRest!531 () (InoxSet Context!82))

(assert (=> setNonEmpty!531 (= (_2!190 (h!5751 mapDefault!281)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!531 true) setRest!531))))

(assert (=> b!35142 (= tp!24203 e!16741)))

(assert (= (and b!35200 condSetEmpty!531) setIsEmpty!531))

(assert (= (and b!35200 (not condSetEmpty!531)) setNonEmpty!531))

(assert (= (and b!35142 ((_ is Cons!355) mapDefault!281)) b!35200))

(declare-fun m!11005 () Bool)

(assert (=> b!35200 m!11005))

(declare-fun m!11007 () Bool)

(assert (=> setNonEmpty!531 m!11007))

(declare-fun setIsEmpty!536 () Bool)

(declare-fun setRes!537 () Bool)

(assert (=> setIsEmpty!536 setRes!537))

(declare-fun setIsEmpty!537 () Bool)

(declare-fun setRes!536 () Bool)

(assert (=> setIsEmpty!537 setRes!536))

(declare-fun setNonEmpty!536 () Bool)

(declare-fun tp!24249 () Bool)

(declare-fun setElem!536 () Context!82)

(assert (=> setNonEmpty!536 (= setRes!536 (and tp!24249 (inv!664 setElem!536)))))

(declare-fun mapValue!287 () List!357)

(declare-fun setRest!537 () (InoxSet Context!82))

(assert (=> setNonEmpty!536 (= (_2!190 (h!5751 mapValue!287)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!536 true) setRest!537))))

(declare-fun mapNonEmpty!287 () Bool)

(declare-fun mapRes!287 () Bool)

(declare-fun tp!24250 () Bool)

(declare-fun e!16756 () Bool)

(assert (=> mapNonEmpty!287 (= mapRes!287 (and tp!24250 e!16756))))

(declare-fun mapRest!287 () (Array (_ BitVec 32) List!357))

(declare-fun mapKey!287 () (_ BitVec 32))

(assert (=> mapNonEmpty!287 (= mapRest!281 (store mapRest!287 mapKey!287 mapValue!287))))

(declare-fun condMapEmpty!287 () Bool)

(declare-fun mapDefault!287 () List!357)

(assert (=> mapNonEmpty!281 (= condMapEmpty!287 (= mapRest!281 ((as const (Array (_ BitVec 32) List!357)) mapDefault!287)))))

(declare-fun e!16761 () Bool)

(assert (=> mapNonEmpty!281 (= tp!24193 (and e!16761 mapRes!287))))

(declare-fun mapIsEmpty!287 () Bool)

(assert (=> mapIsEmpty!287 mapRes!287))

(declare-fun b!35207 () Bool)

(declare-fun tp!24248 () Bool)

(assert (=> b!35207 (= e!16756 (and (inv!664 (_1!189 (_1!190 (h!5751 mapValue!287)))) setRes!536 tp!24248))))

(declare-fun condSetEmpty!537 () Bool)

(assert (=> b!35207 (= condSetEmpty!537 (= (_2!190 (h!5751 mapValue!287)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun b!35208 () Bool)

(declare-fun tp!24251 () Bool)

(assert (=> b!35208 (= e!16761 (and (inv!664 (_1!189 (_1!190 (h!5751 mapDefault!287)))) setRes!537 tp!24251))))

(declare-fun condSetEmpty!536 () Bool)

(assert (=> b!35208 (= condSetEmpty!536 (= (_2!190 (h!5751 mapDefault!287)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setNonEmpty!537 () Bool)

(declare-fun tp!24252 () Bool)

(declare-fun setElem!537 () Context!82)

(assert (=> setNonEmpty!537 (= setRes!537 (and tp!24252 (inv!664 setElem!537)))))

(declare-fun setRest!536 () (InoxSet Context!82))

(assert (=> setNonEmpty!537 (= (_2!190 (h!5751 mapDefault!287)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!537 true) setRest!536))))

(assert (= (and mapNonEmpty!281 condMapEmpty!287) mapIsEmpty!287))

(assert (= (and mapNonEmpty!281 (not condMapEmpty!287)) mapNonEmpty!287))

(assert (= (and b!35207 condSetEmpty!537) setIsEmpty!537))

(assert (= (and b!35207 (not condSetEmpty!537)) setNonEmpty!536))

(assert (= (and mapNonEmpty!287 ((_ is Cons!355) mapValue!287)) b!35207))

(assert (= (and b!35208 condSetEmpty!536) setIsEmpty!536))

(assert (= (and b!35208 (not condSetEmpty!536)) setNonEmpty!537))

(assert (= (and mapNonEmpty!281 ((_ is Cons!355) mapDefault!287)) b!35208))

(declare-fun m!11009 () Bool)

(assert (=> b!35207 m!11009))

(declare-fun m!11011 () Bool)

(assert (=> setNonEmpty!537 m!11011))

(declare-fun m!11013 () Bool)

(assert (=> mapNonEmpty!287 m!11013))

(declare-fun m!11015 () Bool)

(assert (=> setNonEmpty!536 m!11015))

(declare-fun m!11017 () Bool)

(assert (=> b!35208 m!11017))

(declare-fun b!35209 () Bool)

(declare-fun e!16762 () Bool)

(declare-fun setRes!538 () Bool)

(declare-fun tp!24254 () Bool)

(assert (=> b!35209 (= e!16762 (and (inv!664 (_1!189 (_1!190 (h!5751 mapValue!281)))) setRes!538 tp!24254))))

(declare-fun condSetEmpty!538 () Bool)

(assert (=> b!35209 (= condSetEmpty!538 (= (_2!190 (h!5751 mapValue!281)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!538 () Bool)

(assert (=> setIsEmpty!538 setRes!538))

(declare-fun setNonEmpty!538 () Bool)

(declare-fun tp!24253 () Bool)

(declare-fun setElem!538 () Context!82)

(assert (=> setNonEmpty!538 (= setRes!538 (and tp!24253 (inv!664 setElem!538)))))

(declare-fun setRest!538 () (InoxSet Context!82))

(assert (=> setNonEmpty!538 (= (_2!190 (h!5751 mapValue!281)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!538 true) setRest!538))))

(assert (=> mapNonEmpty!281 (= tp!24197 e!16762)))

(assert (= (and b!35209 condSetEmpty!538) setIsEmpty!538))

(assert (= (and b!35209 (not condSetEmpty!538)) setNonEmpty!538))

(assert (= (and mapNonEmpty!281 ((_ is Cons!355) mapValue!281)) b!35209))

(declare-fun m!11019 () Bool)

(assert (=> b!35209 m!11019))

(declare-fun m!11021 () Bool)

(assert (=> setNonEmpty!538 m!11021))

(declare-fun setRes!539 () Bool)

(declare-fun tp!24256 () Bool)

(declare-fun b!35210 () Bool)

(declare-fun e!16765 () Bool)

(assert (=> b!35210 (= e!16765 (and (inv!664 (_2!185 (_1!186 (h!5748 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))))) setRes!539 tp!24256))))

(declare-fun condSetEmpty!539 () Bool)

(assert (=> b!35210 (= condSetEmpty!539 (= (_2!186 (h!5748 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!539 () Bool)

(assert (=> setIsEmpty!539 setRes!539))

(declare-fun setNonEmpty!539 () Bool)

(declare-fun tp!24255 () Bool)

(declare-fun setElem!539 () Context!82)

(assert (=> setNonEmpty!539 (= setRes!539 (and tp!24255 (inv!664 setElem!539)))))

(declare-fun setRest!539 () (InoxSet Context!82))

(assert (=> setNonEmpty!539 (= (_2!186 (h!5748 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!539 true) setRest!539))))

(assert (=> b!35138 (= tp!24201 e!16765)))

(assert (= (and b!35210 condSetEmpty!539) setIsEmpty!539))

(assert (= (and b!35210 (not condSetEmpty!539)) setNonEmpty!539))

(assert (= (and b!35138 ((_ is Cons!352) (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))) b!35210))

(declare-fun m!11023 () Bool)

(assert (=> b!35210 m!11023))

(declare-fun m!11025 () Bool)

(assert (=> setNonEmpty!539 m!11025))

(declare-fun tp!24258 () Bool)

(declare-fun e!16768 () Bool)

(declare-fun b!35211 () Bool)

(declare-fun setRes!540 () Bool)

(assert (=> b!35211 (= e!16768 (and (inv!664 (_2!185 (_1!186 (h!5748 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))))) setRes!540 tp!24258))))

(declare-fun condSetEmpty!540 () Bool)

(assert (=> b!35211 (= condSetEmpty!540 (= (_2!186 (h!5748 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!540 () Bool)

(assert (=> setIsEmpty!540 setRes!540))

(declare-fun setNonEmpty!540 () Bool)

(declare-fun tp!24257 () Bool)

(declare-fun setElem!540 () Context!82)

(assert (=> setNonEmpty!540 (= setRes!540 (and tp!24257 (inv!664 setElem!540)))))

(declare-fun setRest!540 () (InoxSet Context!82))

(assert (=> setNonEmpty!540 (= (_2!186 (h!5748 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!540 true) setRest!540))))

(assert (=> b!35138 (= tp!24200 e!16768)))

(assert (= (and b!35211 condSetEmpty!540) setIsEmpty!540))

(assert (= (and b!35211 (not condSetEmpty!540)) setNonEmpty!540))

(assert (= (and b!35138 ((_ is Cons!352) (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))) b!35211))

(declare-fun m!11027 () Bool)

(assert (=> b!35211 m!11027))

(declare-fun m!11029 () Bool)

(assert (=> setNonEmpty!540 m!11029))

(declare-fun tp!24260 () Bool)

(declare-fun setRes!541 () Bool)

(declare-fun b!35212 () Bool)

(declare-fun e!16771 () Bool)

(assert (=> b!35212 (= e!16771 (and (inv!664 (_2!185 (_1!186 (h!5748 mapDefault!280)))) setRes!541 tp!24260))))

(declare-fun condSetEmpty!541 () Bool)

(assert (=> b!35212 (= condSetEmpty!541 (= (_2!186 (h!5748 mapDefault!280)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!541 () Bool)

(assert (=> setIsEmpty!541 setRes!541))

(declare-fun setNonEmpty!541 () Bool)

(declare-fun tp!24259 () Bool)

(declare-fun setElem!541 () Context!82)

(assert (=> setNonEmpty!541 (= setRes!541 (and tp!24259 (inv!664 setElem!541)))))

(declare-fun setRest!541 () (InoxSet Context!82))

(assert (=> setNonEmpty!541 (= (_2!186 (h!5748 mapDefault!280)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!541 true) setRest!541))))

(assert (=> b!35148 (= tp!24196 e!16771)))

(assert (= (and b!35212 condSetEmpty!541) setIsEmpty!541))

(assert (= (and b!35212 (not condSetEmpty!541)) setNonEmpty!541))

(assert (= (and b!35148 ((_ is Cons!352) mapDefault!280)) b!35212))

(declare-fun m!11031 () Bool)

(assert (=> b!35212 m!11031))

(declare-fun m!11033 () Bool)

(assert (=> setNonEmpty!541 m!11033))

(check-sat b_and!499 (not mapNonEmpty!284) (not setNonEmpty!521) (not setNonEmpty!540) (not setNonEmpty!539) (not setNonEmpty!538) (not b_next!471) b_and!501 (not b_next!465) (not setNonEmpty!537) (not b!35193) (not d!3672) (not b!35209) (not b!35211) (not setNonEmpty!527) (not b_next!467) (not b!35208) (not setNonEmpty!536) (not d!3674) b_and!503 (not b!35166) (not b!35167) (not setNonEmpty!541) (not d!3658) (not b!35185) (not d!3660) (not d!3668) (not b_next!469) b_and!505 (not b!35199) (not b!35200) (not setNonEmpty!520) (not d!3670) (not d!3684) (not d!3676) (not setNonEmpty!530) (not d!3678) (not b!35161) (not b!35194) (not mapNonEmpty!287) (not d!3656) (not b!35158) (not b!35207) (not setNonEmpty!531) (not b!35152) (not setNonEmpty!526) (not b!35155) (not b!35186) (not b!35212) (not b!35210))
(check-sat b_and!499 (not b_next!467) b_and!503 (not b_next!471) b_and!501 (not b_next!469) b_and!505 (not b_next!465))
(get-model)

(declare-fun d!3686 () Bool)

(declare-fun lambda!566 () Int)

(declare-fun forall!43 (List!353 Int) Bool)

(assert (=> d!3686 (= (inv!664 setElem!526) (forall!43 (exprs!541 setElem!526) lambda!566))))

(declare-fun bs!4616 () Bool)

(assert (= bs!4616 d!3686))

(declare-fun m!11035 () Bool)

(assert (=> bs!4616 m!11035))

(assert (=> setNonEmpty!526 d!3686))

(declare-fun bs!4617 () Bool)

(declare-fun d!3688 () Bool)

(assert (= bs!4617 (and d!3688 d!3686)))

(declare-fun lambda!567 () Int)

(assert (=> bs!4617 (= lambda!567 lambda!566)))

(assert (=> d!3688 (= (inv!664 (_2!185 (_1!186 (h!5748 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))))) (forall!43 (exprs!541 (_2!185 (_1!186 (h!5748 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))))) lambda!567))))

(declare-fun bs!4618 () Bool)

(assert (= bs!4618 d!3688))

(declare-fun m!11037 () Bool)

(assert (=> bs!4618 m!11037))

(assert (=> b!35211 d!3688))

(declare-fun bs!4619 () Bool)

(declare-fun d!3690 () Bool)

(assert (= bs!4619 (and d!3690 d!3686)))

(declare-fun lambda!568 () Int)

(assert (=> bs!4619 (= lambda!568 lambda!566)))

(declare-fun bs!4620 () Bool)

(assert (= bs!4620 (and d!3690 d!3688)))

(assert (=> bs!4620 (= lambda!568 lambda!567)))

(assert (=> d!3690 (= (inv!664 (_2!185 (_1!186 (h!5748 mapValue!284)))) (forall!43 (exprs!541 (_2!185 (_1!186 (h!5748 mapValue!284)))) lambda!568))))

(declare-fun bs!4621 () Bool)

(assert (= bs!4621 d!3690))

(declare-fun m!11039 () Bool)

(assert (=> bs!4621 m!11039))

(assert (=> b!35193 d!3690))

(declare-fun d!3692 () Bool)

(declare-fun res!27910 () Bool)

(declare-fun e!16778 () Bool)

(assert (=> d!3692 (=> res!27910 e!16778)))

(assert (=> d!3692 (= res!27910 ((_ is Nil!356) lt!2813))))

(assert (=> d!3692 (= (noDuplicateTag!7 Lexer!23 lt!2813 Nil!358) e!16778)))

(declare-fun b!35217 () Bool)

(declare-fun e!16779 () Bool)

(assert (=> b!35217 (= e!16778 e!16779)))

(declare-fun res!27911 () Bool)

(assert (=> b!35217 (=> (not res!27911) (not e!16779))))

(declare-fun contains!27 (List!360 String!801) Bool)

(assert (=> b!35217 (= res!27911 (not (contains!27 Nil!358 (tag!304 (h!5752 lt!2813)))))))

(declare-fun b!35218 () Bool)

(assert (=> b!35218 (= e!16779 (noDuplicateTag!7 Lexer!23 (t!15164 lt!2813) (Cons!358 (tag!304 (h!5752 lt!2813)) Nil!358)))))

(assert (= (and d!3692 (not res!27910)) b!35217))

(assert (= (and b!35217 res!27911) b!35218))

(declare-fun m!11041 () Bool)

(assert (=> b!35217 m!11041))

(declare-fun m!11043 () Bool)

(assert (=> b!35218 m!11043))

(assert (=> b!35152 d!3692))

(declare-fun d!3694 () Bool)

(assert (=> d!3694 (= (usesJsonRules!0 (get!178 (_1!191 lt!2826))) (= (rules!4756 (get!178 (_1!191 lt!2826))) (rules!109 JsonLexer!15)))))

(declare-fun bs!4622 () Bool)

(assert (= bs!4622 d!3694))

(assert (=> bs!4622 m!10881))

(assert (=> b!35161 d!3694))

(declare-fun d!3696 () Bool)

(assert (=> d!3696 (= (get!178 (_1!191 lt!2826)) (v!12131 (_1!191 lt!2826)))))

(assert (=> b!35161 d!3696))

(declare-fun bs!4623 () Bool)

(declare-fun d!3698 () Bool)

(assert (= bs!4623 (and d!3698 d!3686)))

(declare-fun lambda!569 () Int)

(assert (=> bs!4623 (= lambda!569 lambda!566)))

(declare-fun bs!4624 () Bool)

(assert (= bs!4624 (and d!3698 d!3688)))

(assert (=> bs!4624 (= lambda!569 lambda!567)))

(declare-fun bs!4625 () Bool)

(assert (= bs!4625 (and d!3698 d!3690)))

(assert (=> bs!4625 (= lambda!569 lambda!568)))

(assert (=> d!3698 (= (inv!664 setElem!541) (forall!43 (exprs!541 setElem!541) lambda!569))))

(declare-fun bs!4626 () Bool)

(assert (= bs!4626 d!3698))

(declare-fun m!11045 () Bool)

(assert (=> bs!4626 m!11045))

(assert (=> setNonEmpty!541 d!3698))

(declare-fun d!3700 () Bool)

(declare-fun res!27918 () Bool)

(declare-fun e!16784 () Bool)

(assert (=> d!3700 (=> (not res!27918) (not e!16784))))

(declare-fun valid!93 (MutableMap!78) Bool)

(assert (=> d!3700 (= res!27918 (valid!93 (cache!557 cacheDown!381)))))

(assert (=> d!3700 (= (validCacheMapDown!9 (cache!557 cacheDown!381)) e!16784)))

(declare-fun b!35225 () Bool)

(declare-fun res!27919 () Bool)

(assert (=> b!35225 (=> (not res!27919) (not e!16784))))

(declare-fun invariantList!15 (List!354) Bool)

(declare-datatypes ((ListMap!31 0))(
  ( (ListMap!32 (toList!165 List!354)) )
))
(declare-fun map!202 (MutableMap!78) ListMap!31)

(assert (=> b!35225 (= res!27919 (invariantList!15 (toList!165 (map!202 (cache!557 cacheDown!381)))))))

(declare-fun b!35226 () Bool)

(declare-fun lambda!572 () Int)

(declare-fun forall!44 (List!354 Int) Bool)

(assert (=> b!35226 (= e!16784 (forall!44 (toList!165 (map!202 (cache!557 cacheDown!381))) lambda!572))))

(assert (= (and d!3700 res!27918) b!35225))

(assert (= (and b!35225 res!27919) b!35226))

(declare-fun m!11048 () Bool)

(assert (=> d!3700 m!11048))

(declare-fun m!11050 () Bool)

(assert (=> b!35225 m!11050))

(declare-fun m!11052 () Bool)

(assert (=> b!35225 m!11052))

(assert (=> b!35226 m!11050))

(declare-fun m!11054 () Bool)

(assert (=> b!35226 m!11054))

(assert (=> b!35158 d!3700))

(assert (=> d!3672 d!3656))

(declare-fun d!3702 () Bool)

(assert (=> d!3702 (= (isEmpty!82 (rules!109 JsonLexer!15)) ((_ is Nil!356) (rules!109 JsonLexer!15)))))

(assert (=> d!3672 d!3702))

(declare-fun d!3704 () Bool)

(assert (=> d!3704 (valid!89 (_3!51 lt!2824))))

(declare-fun Unit!189 () Unit!186)

(assert (=> d!3704 (= (lemmaInvariant!5 (_3!51 lt!2824)) Unit!189)))

(declare-fun bs!4627 () Bool)

(assert (= bs!4627 d!3704))

(declare-fun m!11056 () Bool)

(assert (=> bs!4627 m!11056))

(assert (=> d!3672 d!3704))

(declare-fun b!35238 () Bool)

(declare-fun res!27930 () Bool)

(declare-fun e!16787 () Bool)

(assert (=> b!35238 (=> (not res!27930) (not e!16787))))

(declare-fun lt!2843 () tuple4!6)

(assert (=> b!35238 (= res!27930 (valid!90 (_4!3 lt!2843)))))

(declare-fun b!35239 () Bool)

(declare-fun res!27931 () Bool)

(assert (=> b!35239 (=> (not res!27931) (not e!16787))))

(declare-fun list!115 (BalanceConc!108) List!356)

(declare-fun lex!6 (LexerInterface!25 List!358 BalanceConc!108) tuple2!282)

(assert (=> b!35239 (= res!27931 (= (list!115 (_2!192 (_1!193 lt!2843))) (list!115 (_2!192 (lex!6 Lexer!23 (rules!109 JsonLexer!15) lt!2812)))))))

(declare-fun b!35240 () Bool)

(declare-fun res!27932 () Bool)

(assert (=> b!35240 (=> (not res!27932) (not e!16787))))

(assert (=> b!35240 (= res!27932 (valid!91 (_2!193 lt!2843)))))

(declare-fun b!35241 () Bool)

(declare-fun res!27934 () Bool)

(assert (=> b!35241 (=> (not res!27934) (not e!16787))))

(assert (=> b!35241 (= res!27934 (valid!89 (_3!51 lt!2843)))))

(declare-fun d!3706 () Bool)

(assert (=> d!3706 e!16787))

(declare-fun res!27933 () Bool)

(assert (=> d!3706 (=> (not res!27933) (not e!16787))))

(declare-fun list!116 (BalanceConc!110) List!359)

(assert (=> d!3706 (= res!27933 (= (list!116 (_1!192 (_1!193 lt!2843))) (list!116 (_1!192 (lex!6 Lexer!23 (rules!109 JsonLexer!15) lt!2812)))))))

(declare-fun lt!2844 () tuple4!6)

(assert (=> d!3706 (= lt!2843 (tuple4!7 (_1!193 lt!2844) (_2!193 lt!2844) (_3!51 lt!2844) (_4!3 lt!2844)))))

(declare-fun lexTailRecV3Mem!1 (LexerInterface!25 List!358 BalanceConc!108 BalanceConc!108 BalanceConc!108 BalanceConc!110 CacheUp!68 CacheDown!70 CacheFurthestNullable!18) tuple4!6)

(assert (=> d!3706 (= lt!2844 (lexTailRecV3Mem!1 Lexer!23 (rules!109 JsonLexer!15) lt!2812 (BalanceConc!109 Empty!54) lt!2812 (BalanceConc!111 Empty!55) cacheUp!368 cacheDown!381 lt!2814))))

(assert (=> d!3706 (not (isEmpty!82 (rules!109 JsonLexer!15)))))

(assert (=> d!3706 (= (lexMem!1 Lexer!23 (rules!109 JsonLexer!15) lt!2812 cacheUp!368 cacheDown!381 lt!2814) lt!2843)))

(declare-fun b!35237 () Bool)

(assert (=> b!35237 (= e!16787 (= (totalInput!1482 (_4!3 lt!2843)) lt!2812))))

(assert (= (and d!3706 res!27933) b!35239))

(assert (= (and b!35239 res!27931) b!35238))

(assert (= (and b!35238 res!27930) b!35240))

(assert (= (and b!35240 res!27932) b!35241))

(assert (= (and b!35241 res!27934) b!35237))

(declare-fun m!11058 () Bool)

(assert (=> b!35240 m!11058))

(declare-fun m!11060 () Bool)

(assert (=> b!35238 m!11060))

(declare-fun m!11062 () Bool)

(assert (=> b!35241 m!11062))

(declare-fun m!11064 () Bool)

(assert (=> b!35239 m!11064))

(assert (=> b!35239 m!10881))

(declare-fun m!11066 () Bool)

(assert (=> b!35239 m!11066))

(declare-fun m!11068 () Bool)

(assert (=> b!35239 m!11068))

(assert (=> d!3706 m!10881))

(declare-fun m!11070 () Bool)

(assert (=> d!3706 m!11070))

(declare-fun m!11072 () Bool)

(assert (=> d!3706 m!11072))

(assert (=> d!3706 m!10881))

(assert (=> d!3706 m!10951))

(declare-fun m!11074 () Bool)

(assert (=> d!3706 m!11074))

(assert (=> d!3706 m!10881))

(assert (=> d!3706 m!11066))

(assert (=> d!3672 d!3706))

(declare-fun d!3708 () Bool)

(assert (=> d!3708 (= (isEmpty!83 (_1!191 lt!2826)) (not ((_ is Some!42) (_1!191 lt!2826))))))

(assert (=> d!3672 d!3708))

(declare-fun b!35253 () Bool)

(declare-fun e!16796 () Bool)

(declare-fun lt!2847 () Option!43)

(assert (=> b!35253 (= e!16796 (= (tokens!759 (get!178 lt!2847)) (_1!192 (_1!193 lt!2824))))))

(declare-fun b!35250 () Bool)

(declare-fun e!16794 () Option!43)

(assert (=> b!35250 (= e!16794 (Some!42 (PrintableTokens!9 (rules!109 JsonLexer!15) (_1!192 (_1!193 lt!2824)))))))

(declare-fun b!35251 () Bool)

(assert (=> b!35251 (= e!16794 None!42)))

(declare-fun b!35252 () Bool)

(declare-fun e!16795 () Bool)

(assert (=> b!35252 (= e!16795 e!16796)))

(declare-fun res!27939 () Bool)

(assert (=> b!35252 (=> (not res!27939) (not e!16796))))

(assert (=> b!35252 (= res!27939 (= (rules!4756 (get!178 lt!2847)) (rules!109 JsonLexer!15)))))

(declare-fun d!3710 () Bool)

(assert (=> d!3710 e!16795))

(declare-fun res!27940 () Bool)

(assert (=> d!3710 (=> res!27940 e!16795)))

(assert (=> d!3710 (= res!27940 (isEmpty!83 lt!2847))))

(assert (=> d!3710 (= lt!2847 e!16794)))

(declare-fun c!15447 () Bool)

(declare-fun separableTokens!3 (LexerInterface!25 BalanceConc!110 List!358) Bool)

(assert (=> d!3710 (= c!15447 (separableTokens!3 Lexer!23 (_1!192 (_1!193 lt!2824)) (rules!109 JsonLexer!15)))))

(assert (=> d!3710 (not (isEmpty!82 (rules!109 JsonLexer!15)))))

(assert (=> d!3710 (= (printableTokensFromTokens!1 (rules!109 JsonLexer!15) (_1!192 (_1!193 lt!2824))) lt!2847)))

(assert (= (and d!3710 c!15447) b!35250))

(assert (= (and d!3710 (not c!15447)) b!35251))

(assert (= (and d!3710 (not res!27940)) b!35252))

(assert (= (and b!35252 res!27939) b!35253))

(declare-fun m!11076 () Bool)

(assert (=> b!35253 m!11076))

(assert (=> b!35252 m!11076))

(declare-fun m!11078 () Bool)

(assert (=> d!3710 m!11078))

(assert (=> d!3710 m!10881))

(declare-fun m!11080 () Bool)

(assert (=> d!3710 m!11080))

(assert (=> d!3710 m!10881))

(assert (=> d!3710 m!10951))

(assert (=> d!3672 d!3710))

(declare-fun d!3712 () Bool)

(assert (=> d!3712 (valid!91 (_2!193 lt!2824))))

(declare-fun Unit!190 () Unit!186)

(assert (=> d!3712 (= (lemmaInvariant!6 (_2!193 lt!2824)) Unit!190)))

(declare-fun bs!4628 () Bool)

(assert (= bs!4628 d!3712))

(declare-fun m!11082 () Bool)

(assert (=> bs!4628 m!11082))

(assert (=> d!3672 d!3712))

(assert (=> d!3668 d!3700))

(declare-fun bs!4629 () Bool)

(declare-fun d!3714 () Bool)

(assert (= bs!4629 (and d!3714 d!3686)))

(declare-fun lambda!573 () Int)

(assert (=> bs!4629 (= lambda!573 lambda!566)))

(declare-fun bs!4630 () Bool)

(assert (= bs!4630 (and d!3714 d!3688)))

(assert (=> bs!4630 (= lambda!573 lambda!567)))

(declare-fun bs!4631 () Bool)

(assert (= bs!4631 (and d!3714 d!3690)))

(assert (=> bs!4631 (= lambda!573 lambda!568)))

(declare-fun bs!4632 () Bool)

(assert (= bs!4632 (and d!3714 d!3698)))

(assert (=> bs!4632 (= lambda!573 lambda!569)))

(assert (=> d!3714 (= (inv!664 (_2!185 (_1!186 (h!5748 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))))) (forall!43 (exprs!541 (_2!185 (_1!186 (h!5748 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381)))))))))) lambda!573))))

(declare-fun bs!4633 () Bool)

(assert (= bs!4633 d!3714))

(declare-fun m!11084 () Bool)

(assert (=> bs!4633 m!11084))

(assert (=> b!35210 d!3714))

(declare-fun d!3716 () Bool)

(declare-fun res!27945 () Bool)

(declare-fun e!16799 () Bool)

(assert (=> d!3716 (=> (not res!27945) (not e!16799))))

(declare-fun valid!94 (MutableMap!80) Bool)

(assert (=> d!3716 (= res!27945 (valid!94 (cache!559 cacheUp!368)))))

(assert (=> d!3716 (= (validCacheMapUp!7 (cache!559 cacheUp!368)) e!16799)))

(declare-fun b!35258 () Bool)

(declare-fun res!27946 () Bool)

(assert (=> b!35258 (=> (not res!27946) (not e!16799))))

(declare-fun invariantList!16 (List!357) Bool)

(declare-datatypes ((ListMap!33 0))(
  ( (ListMap!34 (toList!166 List!357)) )
))
(declare-fun map!203 (MutableMap!80) ListMap!33)

(assert (=> b!35258 (= res!27946 (invariantList!16 (toList!166 (map!203 (cache!559 cacheUp!368)))))))

(declare-fun b!35259 () Bool)

(declare-fun lambda!576 () Int)

(declare-fun forall!45 (List!357 Int) Bool)

(assert (=> b!35259 (= e!16799 (forall!45 (toList!166 (map!203 (cache!559 cacheUp!368))) lambda!576))))

(assert (= (and d!3716 res!27945) b!35258))

(assert (= (and b!35258 res!27946) b!35259))

(declare-fun m!11087 () Bool)

(assert (=> d!3716 m!11087))

(declare-fun m!11089 () Bool)

(assert (=> b!35258 m!11089))

(declare-fun m!11091 () Bool)

(assert (=> b!35258 m!11091))

(assert (=> b!35259 m!11089))

(declare-fun m!11093 () Bool)

(assert (=> b!35259 m!11093))

(assert (=> d!3660 d!3716))

(declare-fun bs!4634 () Bool)

(declare-fun d!3718 () Bool)

(assert (= bs!4634 (and d!3718 d!3690)))

(declare-fun lambda!577 () Int)

(assert (=> bs!4634 (= lambda!577 lambda!568)))

(declare-fun bs!4635 () Bool)

(assert (= bs!4635 (and d!3718 d!3714)))

(assert (=> bs!4635 (= lambda!577 lambda!573)))

(declare-fun bs!4636 () Bool)

(assert (= bs!4636 (and d!3718 d!3686)))

(assert (=> bs!4636 (= lambda!577 lambda!566)))

(declare-fun bs!4637 () Bool)

(assert (= bs!4637 (and d!3718 d!3688)))

(assert (=> bs!4637 (= lambda!577 lambda!567)))

(declare-fun bs!4638 () Bool)

(assert (= bs!4638 (and d!3718 d!3698)))

(assert (=> bs!4638 (= lambda!577 lambda!569)))

(assert (=> d!3718 (= (inv!664 (_2!185 (_1!186 (h!5748 mapDefault!284)))) (forall!43 (exprs!541 (_2!185 (_1!186 (h!5748 mapDefault!284)))) lambda!577))))

(declare-fun bs!4639 () Bool)

(assert (= bs!4639 d!3718))

(declare-fun m!11095 () Bool)

(assert (=> bs!4639 m!11095))

(assert (=> b!35194 d!3718))

(assert (=> b!35155 d!3716))

(declare-fun bs!4640 () Bool)

(declare-fun d!3720 () Bool)

(assert (= bs!4640 (and d!3720 d!3690)))

(declare-fun lambda!578 () Int)

(assert (=> bs!4640 (= lambda!578 lambda!568)))

(declare-fun bs!4641 () Bool)

(assert (= bs!4641 (and d!3720 d!3718)))

(assert (=> bs!4641 (= lambda!578 lambda!577)))

(declare-fun bs!4642 () Bool)

(assert (= bs!4642 (and d!3720 d!3714)))

(assert (=> bs!4642 (= lambda!578 lambda!573)))

(declare-fun bs!4643 () Bool)

(assert (= bs!4643 (and d!3720 d!3686)))

(assert (=> bs!4643 (= lambda!578 lambda!566)))

(declare-fun bs!4644 () Bool)

(assert (= bs!4644 (and d!3720 d!3688)))

(assert (=> bs!4644 (= lambda!578 lambda!567)))

(declare-fun bs!4645 () Bool)

(assert (= bs!4645 (and d!3720 d!3698)))

(assert (=> bs!4645 (= lambda!578 lambda!569)))

(assert (=> d!3720 (= (inv!664 setElem!521) (forall!43 (exprs!541 setElem!521) lambda!578))))

(declare-fun bs!4646 () Bool)

(assert (= bs!4646 d!3720))

(declare-fun m!11097 () Bool)

(assert (=> bs!4646 m!11097))

(assert (=> setNonEmpty!521 d!3720))

(declare-fun d!3722 () Bool)

(declare-fun lt!2850 () Int)

(declare-fun size!408 (List!359) Int)

(assert (=> d!3722 (= lt!2850 (size!408 (list!116 (tokens!759 (v!12131 (_1!191 lt!2810))))))))

(declare-fun size!409 (Conc!55) Int)

(assert (=> d!3722 (= lt!2850 (size!409 (c!15444 (tokens!759 (v!12131 (_1!191 lt!2810))))))))

(assert (=> d!3722 (= (size!407 (tokens!759 (v!12131 (_1!191 lt!2810)))) lt!2850)))

(declare-fun bs!4647 () Bool)

(assert (= bs!4647 d!3722))

(declare-fun m!11099 () Bool)

(assert (=> bs!4647 m!11099))

(assert (=> bs!4647 m!11099))

(declare-fun m!11101 () Bool)

(assert (=> bs!4647 m!11101))

(declare-fun m!11103 () Bool)

(assert (=> bs!4647 m!11103))

(assert (=> d!3684 d!3722))

(declare-fun d!3724 () Bool)

(declare-fun res!27951 () Bool)

(declare-fun e!16802 () Bool)

(assert (=> d!3724 (=> (not res!27951) (not e!16802))))

(declare-fun valid!95 (MutLongMap!83) Bool)

(assert (=> d!3724 (= res!27951 (valid!95 (v!12128 (underlying!362 lt!2833))))))

(assert (=> d!3724 (= (valid!92 lt!2833) e!16802)))

(declare-fun b!35264 () Bool)

(declare-fun res!27952 () Bool)

(assert (=> b!35264 (=> (not res!27952) (not e!16802))))

(declare-fun lambda!581 () Int)

(declare-datatypes ((tuple2!284 0))(
  ( (tuple2!285 (_1!194 (_ BitVec 64)) (_2!194 List!355)) )
))
(declare-datatypes ((List!361 0))(
  ( (Nil!359) (Cons!359 (h!5755 tuple2!284) (t!15167 List!361)) )
))
(declare-fun forall!46 (List!361 Int) Bool)

(declare-datatypes ((ListLongMap!15 0))(
  ( (ListLongMap!16 (toList!167 List!361)) )
))
(declare-fun map!204 (MutLongMap!83) ListLongMap!15)

(assert (=> b!35264 (= res!27952 (forall!46 (toList!167 (map!204 (v!12128 (underlying!362 lt!2833)))) lambda!581))))

(declare-fun b!35265 () Bool)

(declare-fun allKeysSameHashInMap!6 (ListLongMap!15 Hashable!79) Bool)

(assert (=> b!35265 (= e!16802 (allKeysSameHashInMap!6 (map!204 (v!12128 (underlying!362 lt!2833))) (hashF!1943 lt!2833)))))

(assert (= (and d!3724 res!27951) b!35264))

(assert (= (and b!35264 res!27952) b!35265))

(declare-fun m!11105 () Bool)

(assert (=> d!3724 m!11105))

(declare-fun m!11107 () Bool)

(assert (=> b!35264 m!11107))

(declare-fun m!11109 () Bool)

(assert (=> b!35264 m!11109))

(assert (=> b!35265 m!11107))

(assert (=> b!35265 m!11107))

(declare-fun m!11111 () Bool)

(assert (=> b!35265 m!11111))

(assert (=> d!3676 d!3724))

(declare-fun d!3726 () Bool)

(assert (=> d!3726 (= (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001)) true)))

(assert (=> d!3676 d!3726))

(declare-fun d!3728 () Bool)

(assert (=> d!3728 (= (valid!90 lt!2835) (validCacheMapFurthestNullable!1 (cache!558 lt!2835) (totalInput!1482 lt!2835)))))

(declare-fun bs!4648 () Bool)

(assert (= bs!4648 d!3728))

(declare-fun m!11113 () Bool)

(assert (=> bs!4648 m!11113))

(assert (=> d!3676 d!3728))

(declare-fun b!35279 () Bool)

(declare-fun e!16812 () Bool)

(declare-fun lt!2859 () MutLongMap!83)

(assert (=> b!35279 (= e!16812 ((_ is LongMap!83) lt!2859))))

(assert (=> b!35279 (= lt!2859 (v!12128 (underlying!362 (getEmptyHashMap!3 lambda!562 hashF!328 #b00000000000000000000000000010000))))))

(declare-fun b!35278 () Bool)

(declare-fun e!16811 () Bool)

(assert (=> b!35278 (= e!16811 e!16812)))

(declare-fun d!3730 () Bool)

(assert (=> d!3730 (= true e!16811)))

(assert (= b!35278 b!35279))

(assert (= (and d!3730 ((_ is HashMap!79) (getEmptyHashMap!3 lambda!562 hashF!328 #b00000000000000000000000000010000))) b!35278))

(declare-fun e!16806 () Bool)

(assert (=> d!3730 e!16806))

(declare-fun res!27958 () Bool)

(assert (=> d!3730 (=> (not res!27958) (not e!16806))))

(assert (=> d!3730 (= res!27958 true)))

(declare-fun lt!2855 () MutableMap!79)

(declare-fun lambda!586 () Int)

(declare-fun getEmptyLongMap!4 (Int (_ BitVec 32)) MutLongMap!83)

(assert (=> d!3730 (= lt!2855 (HashMap!79 (Cell!324 (getEmptyLongMap!4 lambda!586 #b00000000000000000000000000010000)) hashF!328 #b00000000000000000000000000000000 lambda!562))))

(declare-fun lt!2856 () MutableMap!79)

(assert (=> d!3730 (= lt!2856 (HashMap!79 (Cell!324 (getEmptyLongMap!4 lambda!586 #b00000000000000000000000000010000)) hashF!328 #b00000000000000000000000000000000 lambda!562))))

(assert (=> d!3730 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!3730 (= (getEmptyHashMap!3 lambda!562 hashF!328 #b00000000000000000000000000010000) lt!2856)))

(declare-fun b!35270 () Bool)

(declare-fun res!27957 () Bool)

(assert (=> b!35270 (=> (not res!27957) (not e!16806))))

(assert (=> b!35270 (= res!27957 (valid!92 lt!2856))))

(declare-fun b!35271 () Bool)

(declare-fun size!410 (MutableMap!79) (_ BitVec 32))

(assert (=> b!35271 (= e!16806 (= (size!410 lt!2856) #b00000000000000000000000000000000))))

(assert (= (and d!3730 res!27958) b!35270))

(assert (= (and b!35270 res!27957) b!35271))

(declare-fun m!11115 () Bool)

(assert (=> d!3730 m!11115))

(assert (=> d!3730 m!11115))

(assert (=> d!3730 m!10971))

(declare-fun m!11117 () Bool)

(assert (=> b!35270 m!11117))

(declare-fun m!11119 () Bool)

(assert (=> b!35271 m!11119))

(assert (=> d!3676 d!3730))

(declare-fun bs!4649 () Bool)

(declare-fun b!35285 () Bool)

(assert (= bs!4649 (and b!35285 b!35167)))

(declare-fun lambda!589 () Int)

(assert (=> bs!4649 (= lambda!589 lambda!563)))

(assert (=> b!35285 true))

(declare-fun d!3732 () Bool)

(declare-fun res!27963 () Bool)

(declare-fun e!16815 () Bool)

(assert (=> d!3732 (=> (not res!27963) (not e!16815))))

(assert (=> d!3732 (= res!27963 (valid!92 lt!2833))))

(assert (=> d!3732 (= (validCacheMapFurthestNullable!1 lt!2833 lt!2812) e!16815)))

(declare-fun b!35284 () Bool)

(declare-fun res!27964 () Bool)

(assert (=> b!35284 (=> (not res!27964) (not e!16815))))

(assert (=> b!35284 (= res!27964 (invariantList!14 (toList!164 (map!201 lt!2833))))))

(assert (=> b!35285 (= e!16815 (forall!42 (toList!164 (map!201 lt!2833)) lambda!589))))

(assert (= (and d!3732 res!27963) b!35284))

(assert (= (and b!35284 res!27964) b!35285))

(assert (=> d!3732 m!10963))

(assert (=> b!35284 m!10973))

(assert (=> b!35284 m!10975))

(assert (=> b!35285 m!10973))

(declare-fun m!11122 () Bool)

(assert (=> b!35285 m!11122))

(assert (=> d!3676 d!3732))

(declare-fun bs!4650 () Bool)

(declare-fun d!3734 () Bool)

(assert (= bs!4650 (and d!3734 d!3690)))

(declare-fun lambda!590 () Int)

(assert (=> bs!4650 (= lambda!590 lambda!568)))

(declare-fun bs!4651 () Bool)

(assert (= bs!4651 (and d!3734 d!3718)))

(assert (=> bs!4651 (= lambda!590 lambda!577)))

(declare-fun bs!4652 () Bool)

(assert (= bs!4652 (and d!3734 d!3714)))

(assert (=> bs!4652 (= lambda!590 lambda!573)))

(declare-fun bs!4653 () Bool)

(assert (= bs!4653 (and d!3734 d!3720)))

(assert (=> bs!4653 (= lambda!590 lambda!578)))

(declare-fun bs!4654 () Bool)

(assert (= bs!4654 (and d!3734 d!3686)))

(assert (=> bs!4654 (= lambda!590 lambda!566)))

(declare-fun bs!4655 () Bool)

(assert (= bs!4655 (and d!3734 d!3688)))

(assert (=> bs!4655 (= lambda!590 lambda!567)))

(declare-fun bs!4656 () Bool)

(assert (= bs!4656 (and d!3734 d!3698)))

(assert (=> bs!4656 (= lambda!590 lambda!569)))

(assert (=> d!3734 (= (inv!664 setElem!540) (forall!43 (exprs!541 setElem!540) lambda!590))))

(declare-fun bs!4657 () Bool)

(assert (= bs!4657 d!3734))

(declare-fun m!11124 () Bool)

(assert (=> bs!4657 m!11124))

(assert (=> setNonEmpty!540 d!3734))

(declare-fun bs!4658 () Bool)

(declare-fun d!3736 () Bool)

(assert (= bs!4658 (and d!3736 d!3690)))

(declare-fun lambda!591 () Int)

(assert (=> bs!4658 (= lambda!591 lambda!568)))

(declare-fun bs!4659 () Bool)

(assert (= bs!4659 (and d!3736 d!3734)))

(assert (=> bs!4659 (= lambda!591 lambda!590)))

(declare-fun bs!4660 () Bool)

(assert (= bs!4660 (and d!3736 d!3718)))

(assert (=> bs!4660 (= lambda!591 lambda!577)))

(declare-fun bs!4661 () Bool)

(assert (= bs!4661 (and d!3736 d!3714)))

(assert (=> bs!4661 (= lambda!591 lambda!573)))

(declare-fun bs!4662 () Bool)

(assert (= bs!4662 (and d!3736 d!3720)))

(assert (=> bs!4662 (= lambda!591 lambda!578)))

(declare-fun bs!4663 () Bool)

(assert (= bs!4663 (and d!3736 d!3686)))

(assert (=> bs!4663 (= lambda!591 lambda!566)))

(declare-fun bs!4664 () Bool)

(assert (= bs!4664 (and d!3736 d!3688)))

(assert (=> bs!4664 (= lambda!591 lambda!567)))

(declare-fun bs!4665 () Bool)

(assert (= bs!4665 (and d!3736 d!3698)))

(assert (=> bs!4665 (= lambda!591 lambda!569)))

(assert (=> d!3736 (= (inv!664 setElem!527) (forall!43 (exprs!541 setElem!527) lambda!591))))

(declare-fun bs!4666 () Bool)

(assert (= bs!4666 d!3736))

(declare-fun m!11126 () Bool)

(assert (=> bs!4666 m!11126))

(assert (=> setNonEmpty!527 d!3736))

(declare-fun bs!4667 () Bool)

(declare-fun d!3738 () Bool)

(assert (= bs!4667 (and d!3738 d!3690)))

(declare-fun lambda!592 () Int)

(assert (=> bs!4667 (= lambda!592 lambda!568)))

(declare-fun bs!4668 () Bool)

(assert (= bs!4668 (and d!3738 d!3734)))

(assert (=> bs!4668 (= lambda!592 lambda!590)))

(declare-fun bs!4669 () Bool)

(assert (= bs!4669 (and d!3738 d!3718)))

(assert (=> bs!4669 (= lambda!592 lambda!577)))

(declare-fun bs!4670 () Bool)

(assert (= bs!4670 (and d!3738 d!3714)))

(assert (=> bs!4670 (= lambda!592 lambda!573)))

(declare-fun bs!4671 () Bool)

(assert (= bs!4671 (and d!3738 d!3720)))

(assert (=> bs!4671 (= lambda!592 lambda!578)))

(declare-fun bs!4672 () Bool)

(assert (= bs!4672 (and d!3738 d!3736)))

(assert (=> bs!4672 (= lambda!592 lambda!591)))

(declare-fun bs!4673 () Bool)

(assert (= bs!4673 (and d!3738 d!3686)))

(assert (=> bs!4673 (= lambda!592 lambda!566)))

(declare-fun bs!4674 () Bool)

(assert (= bs!4674 (and d!3738 d!3688)))

(assert (=> bs!4674 (= lambda!592 lambda!567)))

(declare-fun bs!4675 () Bool)

(assert (= bs!4675 (and d!3738 d!3698)))

(assert (=> bs!4675 (= lambda!592 lambda!569)))

(assert (=> d!3738 (= (inv!664 (_1!189 (_1!190 (h!5751 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))))) (forall!43 (exprs!541 (_1!189 (_1!190 (h!5751 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))))) lambda!592))))

(declare-fun bs!4676 () Bool)

(assert (= bs!4676 d!3738))

(declare-fun m!11128 () Bool)

(assert (=> bs!4676 m!11128))

(assert (=> b!35186 d!3738))

(assert (=> d!3670 d!3656))

(declare-fun bs!4677 () Bool)

(declare-fun d!3740 () Bool)

(assert (= bs!4677 (and d!3740 d!3690)))

(declare-fun lambda!593 () Int)

(assert (=> bs!4677 (= lambda!593 lambda!568)))

(declare-fun bs!4678 () Bool)

(assert (= bs!4678 (and d!3740 d!3734)))

(assert (=> bs!4678 (= lambda!593 lambda!590)))

(declare-fun bs!4679 () Bool)

(assert (= bs!4679 (and d!3740 d!3738)))

(assert (=> bs!4679 (= lambda!593 lambda!592)))

(declare-fun bs!4680 () Bool)

(assert (= bs!4680 (and d!3740 d!3718)))

(assert (=> bs!4680 (= lambda!593 lambda!577)))

(declare-fun bs!4681 () Bool)

(assert (= bs!4681 (and d!3740 d!3714)))

(assert (=> bs!4681 (= lambda!593 lambda!573)))

(declare-fun bs!4682 () Bool)

(assert (= bs!4682 (and d!3740 d!3720)))

(assert (=> bs!4682 (= lambda!593 lambda!578)))

(declare-fun bs!4683 () Bool)

(assert (= bs!4683 (and d!3740 d!3736)))

(assert (=> bs!4683 (= lambda!593 lambda!591)))

(declare-fun bs!4684 () Bool)

(assert (= bs!4684 (and d!3740 d!3686)))

(assert (=> bs!4684 (= lambda!593 lambda!566)))

(declare-fun bs!4685 () Bool)

(assert (= bs!4685 (and d!3740 d!3688)))

(assert (=> bs!4685 (= lambda!593 lambda!567)))

(declare-fun bs!4686 () Bool)

(assert (= bs!4686 (and d!3740 d!3698)))

(assert (=> bs!4686 (= lambda!593 lambda!569)))

(assert (=> d!3740 (= (inv!664 (_1!189 (_1!190 (h!5751 mapDefault!287)))) (forall!43 (exprs!541 (_1!189 (_1!190 (h!5751 mapDefault!287)))) lambda!593))))

(declare-fun bs!4687 () Bool)

(assert (= bs!4687 d!3740))

(declare-fun m!11130 () Bool)

(assert (=> bs!4687 m!11130))

(assert (=> b!35208 d!3740))

(declare-fun bs!4688 () Bool)

(declare-fun d!3742 () Bool)

(assert (= bs!4688 (and d!3742 d!3690)))

(declare-fun lambda!594 () Int)

(assert (=> bs!4688 (= lambda!594 lambda!568)))

(declare-fun bs!4689 () Bool)

(assert (= bs!4689 (and d!3742 d!3740)))

(assert (=> bs!4689 (= lambda!594 lambda!593)))

(declare-fun bs!4690 () Bool)

(assert (= bs!4690 (and d!3742 d!3734)))

(assert (=> bs!4690 (= lambda!594 lambda!590)))

(declare-fun bs!4691 () Bool)

(assert (= bs!4691 (and d!3742 d!3738)))

(assert (=> bs!4691 (= lambda!594 lambda!592)))

(declare-fun bs!4692 () Bool)

(assert (= bs!4692 (and d!3742 d!3718)))

(assert (=> bs!4692 (= lambda!594 lambda!577)))

(declare-fun bs!4693 () Bool)

(assert (= bs!4693 (and d!3742 d!3714)))

(assert (=> bs!4693 (= lambda!594 lambda!573)))

(declare-fun bs!4694 () Bool)

(assert (= bs!4694 (and d!3742 d!3720)))

(assert (=> bs!4694 (= lambda!594 lambda!578)))

(declare-fun bs!4695 () Bool)

(assert (= bs!4695 (and d!3742 d!3736)))

(assert (=> bs!4695 (= lambda!594 lambda!591)))

(declare-fun bs!4696 () Bool)

(assert (= bs!4696 (and d!3742 d!3686)))

(assert (=> bs!4696 (= lambda!594 lambda!566)))

(declare-fun bs!4697 () Bool)

(assert (= bs!4697 (and d!3742 d!3688)))

(assert (=> bs!4697 (= lambda!594 lambda!567)))

(declare-fun bs!4698 () Bool)

(assert (= bs!4698 (and d!3742 d!3698)))

(assert (=> bs!4698 (= lambda!594 lambda!569)))

(assert (=> d!3742 (= (inv!664 (_1!189 (_1!190 (h!5751 mapValue!281)))) (forall!43 (exprs!541 (_1!189 (_1!190 (h!5751 mapValue!281)))) lambda!594))))

(declare-fun bs!4699 () Bool)

(assert (= bs!4699 d!3742))

(declare-fun m!11132 () Bool)

(assert (=> bs!4699 m!11132))

(assert (=> b!35209 d!3742))

(declare-fun bs!4700 () Bool)

(declare-fun d!3744 () Bool)

(assert (= bs!4700 (and d!3744 d!3690)))

(declare-fun lambda!595 () Int)

(assert (=> bs!4700 (= lambda!595 lambda!568)))

(declare-fun bs!4701 () Bool)

(assert (= bs!4701 (and d!3744 d!3740)))

(assert (=> bs!4701 (= lambda!595 lambda!593)))

(declare-fun bs!4702 () Bool)

(assert (= bs!4702 (and d!3744 d!3734)))

(assert (=> bs!4702 (= lambda!595 lambda!590)))

(declare-fun bs!4703 () Bool)

(assert (= bs!4703 (and d!3744 d!3738)))

(assert (=> bs!4703 (= lambda!595 lambda!592)))

(declare-fun bs!4704 () Bool)

(assert (= bs!4704 (and d!3744 d!3718)))

(assert (=> bs!4704 (= lambda!595 lambda!577)))

(declare-fun bs!4705 () Bool)

(assert (= bs!4705 (and d!3744 d!3742)))

(assert (=> bs!4705 (= lambda!595 lambda!594)))

(declare-fun bs!4706 () Bool)

(assert (= bs!4706 (and d!3744 d!3714)))

(assert (=> bs!4706 (= lambda!595 lambda!573)))

(declare-fun bs!4707 () Bool)

(assert (= bs!4707 (and d!3744 d!3720)))

(assert (=> bs!4707 (= lambda!595 lambda!578)))

(declare-fun bs!4708 () Bool)

(assert (= bs!4708 (and d!3744 d!3736)))

(assert (=> bs!4708 (= lambda!595 lambda!591)))

(declare-fun bs!4709 () Bool)

(assert (= bs!4709 (and d!3744 d!3686)))

(assert (=> bs!4709 (= lambda!595 lambda!566)))

(declare-fun bs!4710 () Bool)

(assert (= bs!4710 (and d!3744 d!3688)))

(assert (=> bs!4710 (= lambda!595 lambda!567)))

(declare-fun bs!4711 () Bool)

(assert (= bs!4711 (and d!3744 d!3698)))

(assert (=> bs!4711 (= lambda!595 lambda!569)))

(assert (=> d!3744 (= (inv!664 (_1!189 (_1!190 (h!5751 mapValue!287)))) (forall!43 (exprs!541 (_1!189 (_1!190 (h!5751 mapValue!287)))) lambda!595))))

(declare-fun bs!4712 () Bool)

(assert (= bs!4712 d!3744))

(declare-fun m!11134 () Bool)

(assert (=> bs!4712 m!11134))

(assert (=> b!35207 d!3744))

(declare-fun bs!4713 () Bool)

(declare-fun d!3746 () Bool)

(assert (= bs!4713 (and d!3746 d!3690)))

(declare-fun lambda!596 () Int)

(assert (=> bs!4713 (= lambda!596 lambda!568)))

(declare-fun bs!4714 () Bool)

(assert (= bs!4714 (and d!3746 d!3740)))

(assert (=> bs!4714 (= lambda!596 lambda!593)))

(declare-fun bs!4715 () Bool)

(assert (= bs!4715 (and d!3746 d!3744)))

(assert (=> bs!4715 (= lambda!596 lambda!595)))

(declare-fun bs!4716 () Bool)

(assert (= bs!4716 (and d!3746 d!3734)))

(assert (=> bs!4716 (= lambda!596 lambda!590)))

(declare-fun bs!4717 () Bool)

(assert (= bs!4717 (and d!3746 d!3738)))

(assert (=> bs!4717 (= lambda!596 lambda!592)))

(declare-fun bs!4718 () Bool)

(assert (= bs!4718 (and d!3746 d!3718)))

(assert (=> bs!4718 (= lambda!596 lambda!577)))

(declare-fun bs!4719 () Bool)

(assert (= bs!4719 (and d!3746 d!3742)))

(assert (=> bs!4719 (= lambda!596 lambda!594)))

(declare-fun bs!4720 () Bool)

(assert (= bs!4720 (and d!3746 d!3714)))

(assert (=> bs!4720 (= lambda!596 lambda!573)))

(declare-fun bs!4721 () Bool)

(assert (= bs!4721 (and d!3746 d!3720)))

(assert (=> bs!4721 (= lambda!596 lambda!578)))

(declare-fun bs!4722 () Bool)

(assert (= bs!4722 (and d!3746 d!3736)))

(assert (=> bs!4722 (= lambda!596 lambda!591)))

(declare-fun bs!4723 () Bool)

(assert (= bs!4723 (and d!3746 d!3686)))

(assert (=> bs!4723 (= lambda!596 lambda!566)))

(declare-fun bs!4724 () Bool)

(assert (= bs!4724 (and d!3746 d!3688)))

(assert (=> bs!4724 (= lambda!596 lambda!567)))

(declare-fun bs!4725 () Bool)

(assert (= bs!4725 (and d!3746 d!3698)))

(assert (=> bs!4725 (= lambda!596 lambda!569)))

(assert (=> d!3746 (= (inv!664 setElem!531) (forall!43 (exprs!541 setElem!531) lambda!596))))

(declare-fun bs!4726 () Bool)

(assert (= bs!4726 d!3746))

(declare-fun m!11136 () Bool)

(assert (=> bs!4726 m!11136))

(assert (=> setNonEmpty!531 d!3746))

(declare-fun d!3748 () Bool)

(assert (=> d!3748 true))

(declare-fun res!27967 () BalanceConc!108)

(declare-fun e!16818 () Bool)

(declare-fun inv!665 (BalanceConc!108) Bool)

(assert (=> d!3748 (and (inv!665 res!27967) e!16818)))

(assert (=> d!3748 (= (choose!360 path!6) res!27967)))

(declare-fun b!35288 () Bool)

(declare-fun tp!24263 () Bool)

(declare-fun inv!666 (Conc!54) Bool)

(assert (=> b!35288 (= e!16818 (and (inv!666 (c!15443 res!27967)) tp!24263))))

(assert (= d!3748 b!35288))

(declare-fun m!11138 () Bool)

(assert (=> d!3748 m!11138))

(declare-fun m!11140 () Bool)

(assert (=> b!35288 m!11140))

(assert (=> d!3678 d!3748))

(declare-fun bs!4727 () Bool)

(declare-fun d!3750 () Bool)

(assert (= bs!4727 (and d!3750 d!3690)))

(declare-fun lambda!597 () Int)

(assert (=> bs!4727 (= lambda!597 lambda!568)))

(declare-fun bs!4728 () Bool)

(assert (= bs!4728 (and d!3750 d!3740)))

(assert (=> bs!4728 (= lambda!597 lambda!593)))

(declare-fun bs!4729 () Bool)

(assert (= bs!4729 (and d!3750 d!3744)))

(assert (=> bs!4729 (= lambda!597 lambda!595)))

(declare-fun bs!4730 () Bool)

(assert (= bs!4730 (and d!3750 d!3734)))

(assert (=> bs!4730 (= lambda!597 lambda!590)))

(declare-fun bs!4731 () Bool)

(assert (= bs!4731 (and d!3750 d!3738)))

(assert (=> bs!4731 (= lambda!597 lambda!592)))

(declare-fun bs!4732 () Bool)

(assert (= bs!4732 (and d!3750 d!3718)))

(assert (=> bs!4732 (= lambda!597 lambda!577)))

(declare-fun bs!4733 () Bool)

(assert (= bs!4733 (and d!3750 d!3742)))

(assert (=> bs!4733 (= lambda!597 lambda!594)))

(declare-fun bs!4734 () Bool)

(assert (= bs!4734 (and d!3750 d!3714)))

(assert (=> bs!4734 (= lambda!597 lambda!573)))

(declare-fun bs!4735 () Bool)

(assert (= bs!4735 (and d!3750 d!3720)))

(assert (=> bs!4735 (= lambda!597 lambda!578)))

(declare-fun bs!4736 () Bool)

(assert (= bs!4736 (and d!3750 d!3736)))

(assert (=> bs!4736 (= lambda!597 lambda!591)))

(declare-fun bs!4737 () Bool)

(assert (= bs!4737 (and d!3750 d!3686)))

(assert (=> bs!4737 (= lambda!597 lambda!566)))

(declare-fun bs!4738 () Bool)

(assert (= bs!4738 (and d!3750 d!3688)))

(assert (=> bs!4738 (= lambda!597 lambda!567)))

(declare-fun bs!4739 () Bool)

(assert (= bs!4739 (and d!3750 d!3698)))

(assert (=> bs!4739 (= lambda!597 lambda!569)))

(declare-fun bs!4740 () Bool)

(assert (= bs!4740 (and d!3750 d!3746)))

(assert (=> bs!4740 (= lambda!597 lambda!596)))

(assert (=> d!3750 (= (inv!664 setElem!520) (forall!43 (exprs!541 setElem!520) lambda!597))))

(declare-fun bs!4741 () Bool)

(assert (= bs!4741 d!3750))

(declare-fun m!11142 () Bool)

(assert (=> bs!4741 m!11142))

(assert (=> setNonEmpty!520 d!3750))

(declare-fun bs!4742 () Bool)

(declare-fun d!3752 () Bool)

(assert (= bs!4742 (and d!3752 d!3690)))

(declare-fun lambda!598 () Int)

(assert (=> bs!4742 (= lambda!598 lambda!568)))

(declare-fun bs!4743 () Bool)

(assert (= bs!4743 (and d!3752 d!3740)))

(assert (=> bs!4743 (= lambda!598 lambda!593)))

(declare-fun bs!4744 () Bool)

(assert (= bs!4744 (and d!3752 d!3744)))

(assert (=> bs!4744 (= lambda!598 lambda!595)))

(declare-fun bs!4745 () Bool)

(assert (= bs!4745 (and d!3752 d!3734)))

(assert (=> bs!4745 (= lambda!598 lambda!590)))

(declare-fun bs!4746 () Bool)

(assert (= bs!4746 (and d!3752 d!3738)))

(assert (=> bs!4746 (= lambda!598 lambda!592)))

(declare-fun bs!4747 () Bool)

(assert (= bs!4747 (and d!3752 d!3718)))

(assert (=> bs!4747 (= lambda!598 lambda!577)))

(declare-fun bs!4748 () Bool)

(assert (= bs!4748 (and d!3752 d!3742)))

(assert (=> bs!4748 (= lambda!598 lambda!594)))

(declare-fun bs!4749 () Bool)

(assert (= bs!4749 (and d!3752 d!3714)))

(assert (=> bs!4749 (= lambda!598 lambda!573)))

(declare-fun bs!4750 () Bool)

(assert (= bs!4750 (and d!3752 d!3720)))

(assert (=> bs!4750 (= lambda!598 lambda!578)))

(declare-fun bs!4751 () Bool)

(assert (= bs!4751 (and d!3752 d!3736)))

(assert (=> bs!4751 (= lambda!598 lambda!591)))

(declare-fun bs!4752 () Bool)

(assert (= bs!4752 (and d!3752 d!3688)))

(assert (=> bs!4752 (= lambda!598 lambda!567)))

(declare-fun bs!4753 () Bool)

(assert (= bs!4753 (and d!3752 d!3698)))

(assert (=> bs!4753 (= lambda!598 lambda!569)))

(declare-fun bs!4754 () Bool)

(assert (= bs!4754 (and d!3752 d!3746)))

(assert (=> bs!4754 (= lambda!598 lambda!596)))

(declare-fun bs!4755 () Bool)

(assert (= bs!4755 (and d!3752 d!3750)))

(assert (=> bs!4755 (= lambda!598 lambda!597)))

(declare-fun bs!4756 () Bool)

(assert (= bs!4756 (and d!3752 d!3686)))

(assert (=> bs!4756 (= lambda!598 lambda!566)))

(assert (=> d!3752 (= (inv!664 (_1!189 (_1!190 (h!5751 mapDefault!281)))) (forall!43 (exprs!541 (_1!189 (_1!190 (h!5751 mapDefault!281)))) lambda!598))))

(declare-fun bs!4757 () Bool)

(assert (= bs!4757 d!3752))

(declare-fun m!11144 () Bool)

(assert (=> bs!4757 m!11144))

(assert (=> b!35200 d!3752))

(declare-fun d!3754 () Bool)

(assert (=> d!3754 true))

(declare-fun lt!2862 () Bool)

(declare-fun rulesValidInductive!6 (LexerInterface!25 List!358) Bool)

(assert (=> d!3754 (= lt!2862 (rulesValidInductive!6 Lexer!23 lt!2813))))

(declare-fun lambda!601 () Int)

(declare-fun forall!47 (List!358 Int) Bool)

(assert (=> d!3754 (= lt!2862 (forall!47 lt!2813 lambda!601))))

(assert (=> d!3754 (= (rulesValid!7 Lexer!23 lt!2813) lt!2862)))

(declare-fun bs!4758 () Bool)

(assert (= bs!4758 d!3754))

(declare-fun m!11146 () Bool)

(assert (=> bs!4758 m!11146))

(declare-fun m!11148 () Bool)

(assert (=> bs!4758 m!11148))

(assert (=> d!3658 d!3754))

(declare-fun bs!4759 () Bool)

(declare-fun d!3756 () Bool)

(assert (= bs!4759 (and d!3756 d!3690)))

(declare-fun lambda!602 () Int)

(assert (=> bs!4759 (= lambda!602 lambda!568)))

(declare-fun bs!4760 () Bool)

(assert (= bs!4760 (and d!3756 d!3740)))

(assert (=> bs!4760 (= lambda!602 lambda!593)))

(declare-fun bs!4761 () Bool)

(assert (= bs!4761 (and d!3756 d!3744)))

(assert (=> bs!4761 (= lambda!602 lambda!595)))

(declare-fun bs!4762 () Bool)

(assert (= bs!4762 (and d!3756 d!3734)))

(assert (=> bs!4762 (= lambda!602 lambda!590)))

(declare-fun bs!4763 () Bool)

(assert (= bs!4763 (and d!3756 d!3738)))

(assert (=> bs!4763 (= lambda!602 lambda!592)))

(declare-fun bs!4764 () Bool)

(assert (= bs!4764 (and d!3756 d!3718)))

(assert (=> bs!4764 (= lambda!602 lambda!577)))

(declare-fun bs!4765 () Bool)

(assert (= bs!4765 (and d!3756 d!3742)))

(assert (=> bs!4765 (= lambda!602 lambda!594)))

(declare-fun bs!4766 () Bool)

(assert (= bs!4766 (and d!3756 d!3714)))

(assert (=> bs!4766 (= lambda!602 lambda!573)))

(declare-fun bs!4767 () Bool)

(assert (= bs!4767 (and d!3756 d!3720)))

(assert (=> bs!4767 (= lambda!602 lambda!578)))

(declare-fun bs!4768 () Bool)

(assert (= bs!4768 (and d!3756 d!3736)))

(assert (=> bs!4768 (= lambda!602 lambda!591)))

(declare-fun bs!4769 () Bool)

(assert (= bs!4769 (and d!3756 d!3752)))

(assert (=> bs!4769 (= lambda!602 lambda!598)))

(declare-fun bs!4770 () Bool)

(assert (= bs!4770 (and d!3756 d!3688)))

(assert (=> bs!4770 (= lambda!602 lambda!567)))

(declare-fun bs!4771 () Bool)

(assert (= bs!4771 (and d!3756 d!3698)))

(assert (=> bs!4771 (= lambda!602 lambda!569)))

(declare-fun bs!4772 () Bool)

(assert (= bs!4772 (and d!3756 d!3746)))

(assert (=> bs!4772 (= lambda!602 lambda!596)))

(declare-fun bs!4773 () Bool)

(assert (= bs!4773 (and d!3756 d!3750)))

(assert (=> bs!4773 (= lambda!602 lambda!597)))

(declare-fun bs!4774 () Bool)

(assert (= bs!4774 (and d!3756 d!3686)))

(assert (=> bs!4774 (= lambda!602 lambda!566)))

(assert (=> d!3756 (= (inv!664 setElem!539) (forall!43 (exprs!541 setElem!539) lambda!602))))

(declare-fun bs!4775 () Bool)

(assert (= bs!4775 d!3756))

(declare-fun m!11150 () Bool)

(assert (=> bs!4775 m!11150))

(assert (=> setNonEmpty!539 d!3756))

(declare-fun bs!4776 () Bool)

(declare-fun d!3758 () Bool)

(assert (= bs!4776 (and d!3758 d!3690)))

(declare-fun lambda!603 () Int)

(assert (=> bs!4776 (= lambda!603 lambda!568)))

(declare-fun bs!4777 () Bool)

(assert (= bs!4777 (and d!3758 d!3756)))

(assert (=> bs!4777 (= lambda!603 lambda!602)))

(declare-fun bs!4778 () Bool)

(assert (= bs!4778 (and d!3758 d!3740)))

(assert (=> bs!4778 (= lambda!603 lambda!593)))

(declare-fun bs!4779 () Bool)

(assert (= bs!4779 (and d!3758 d!3744)))

(assert (=> bs!4779 (= lambda!603 lambda!595)))

(declare-fun bs!4780 () Bool)

(assert (= bs!4780 (and d!3758 d!3734)))

(assert (=> bs!4780 (= lambda!603 lambda!590)))

(declare-fun bs!4781 () Bool)

(assert (= bs!4781 (and d!3758 d!3738)))

(assert (=> bs!4781 (= lambda!603 lambda!592)))

(declare-fun bs!4782 () Bool)

(assert (= bs!4782 (and d!3758 d!3718)))

(assert (=> bs!4782 (= lambda!603 lambda!577)))

(declare-fun bs!4783 () Bool)

(assert (= bs!4783 (and d!3758 d!3742)))

(assert (=> bs!4783 (= lambda!603 lambda!594)))

(declare-fun bs!4784 () Bool)

(assert (= bs!4784 (and d!3758 d!3714)))

(assert (=> bs!4784 (= lambda!603 lambda!573)))

(declare-fun bs!4785 () Bool)

(assert (= bs!4785 (and d!3758 d!3720)))

(assert (=> bs!4785 (= lambda!603 lambda!578)))

(declare-fun bs!4786 () Bool)

(assert (= bs!4786 (and d!3758 d!3736)))

(assert (=> bs!4786 (= lambda!603 lambda!591)))

(declare-fun bs!4787 () Bool)

(assert (= bs!4787 (and d!3758 d!3752)))

(assert (=> bs!4787 (= lambda!603 lambda!598)))

(declare-fun bs!4788 () Bool)

(assert (= bs!4788 (and d!3758 d!3688)))

(assert (=> bs!4788 (= lambda!603 lambda!567)))

(declare-fun bs!4789 () Bool)

(assert (= bs!4789 (and d!3758 d!3698)))

(assert (=> bs!4789 (= lambda!603 lambda!569)))

(declare-fun bs!4790 () Bool)

(assert (= bs!4790 (and d!3758 d!3746)))

(assert (=> bs!4790 (= lambda!603 lambda!596)))

(declare-fun bs!4791 () Bool)

(assert (= bs!4791 (and d!3758 d!3750)))

(assert (=> bs!4791 (= lambda!603 lambda!597)))

(declare-fun bs!4792 () Bool)

(assert (= bs!4792 (and d!3758 d!3686)))

(assert (=> bs!4792 (= lambda!603 lambda!566)))

(assert (=> d!3758 (= (inv!664 setElem!536) (forall!43 (exprs!541 setElem!536) lambda!603))))

(declare-fun bs!4793 () Bool)

(assert (= bs!4793 d!3758))

(declare-fun m!11152 () Bool)

(assert (=> bs!4793 m!11152))

(assert (=> setNonEmpty!536 d!3758))

(declare-fun bs!4794 () Bool)

(declare-fun d!3760 () Bool)

(assert (= bs!4794 (and d!3760 d!3690)))

(declare-fun lambda!604 () Int)

(assert (=> bs!4794 (= lambda!604 lambda!568)))

(declare-fun bs!4795 () Bool)

(assert (= bs!4795 (and d!3760 d!3756)))

(assert (=> bs!4795 (= lambda!604 lambda!602)))

(declare-fun bs!4796 () Bool)

(assert (= bs!4796 (and d!3760 d!3740)))

(assert (=> bs!4796 (= lambda!604 lambda!593)))

(declare-fun bs!4797 () Bool)

(assert (= bs!4797 (and d!3760 d!3744)))

(assert (=> bs!4797 (= lambda!604 lambda!595)))

(declare-fun bs!4798 () Bool)

(assert (= bs!4798 (and d!3760 d!3734)))

(assert (=> bs!4798 (= lambda!604 lambda!590)))

(declare-fun bs!4799 () Bool)

(assert (= bs!4799 (and d!3760 d!3758)))

(assert (=> bs!4799 (= lambda!604 lambda!603)))

(declare-fun bs!4800 () Bool)

(assert (= bs!4800 (and d!3760 d!3738)))

(assert (=> bs!4800 (= lambda!604 lambda!592)))

(declare-fun bs!4801 () Bool)

(assert (= bs!4801 (and d!3760 d!3718)))

(assert (=> bs!4801 (= lambda!604 lambda!577)))

(declare-fun bs!4802 () Bool)

(assert (= bs!4802 (and d!3760 d!3742)))

(assert (=> bs!4802 (= lambda!604 lambda!594)))

(declare-fun bs!4803 () Bool)

(assert (= bs!4803 (and d!3760 d!3714)))

(assert (=> bs!4803 (= lambda!604 lambda!573)))

(declare-fun bs!4804 () Bool)

(assert (= bs!4804 (and d!3760 d!3720)))

(assert (=> bs!4804 (= lambda!604 lambda!578)))

(declare-fun bs!4805 () Bool)

(assert (= bs!4805 (and d!3760 d!3736)))

(assert (=> bs!4805 (= lambda!604 lambda!591)))

(declare-fun bs!4806 () Bool)

(assert (= bs!4806 (and d!3760 d!3752)))

(assert (=> bs!4806 (= lambda!604 lambda!598)))

(declare-fun bs!4807 () Bool)

(assert (= bs!4807 (and d!3760 d!3688)))

(assert (=> bs!4807 (= lambda!604 lambda!567)))

(declare-fun bs!4808 () Bool)

(assert (= bs!4808 (and d!3760 d!3698)))

(assert (=> bs!4808 (= lambda!604 lambda!569)))

(declare-fun bs!4809 () Bool)

(assert (= bs!4809 (and d!3760 d!3746)))

(assert (=> bs!4809 (= lambda!604 lambda!596)))

(declare-fun bs!4810 () Bool)

(assert (= bs!4810 (and d!3760 d!3750)))

(assert (=> bs!4810 (= lambda!604 lambda!597)))

(declare-fun bs!4811 () Bool)

(assert (= bs!4811 (and d!3760 d!3686)))

(assert (=> bs!4811 (= lambda!604 lambda!566)))

(assert (=> d!3760 (= (inv!664 (_1!189 (_1!190 (h!5751 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))))) (forall!43 (exprs!541 (_1!189 (_1!190 (h!5751 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368)))))))))) lambda!604))))

(declare-fun bs!4812 () Bool)

(assert (= bs!4812 d!3760))

(declare-fun m!11154 () Bool)

(assert (=> bs!4812 m!11154))

(assert (=> b!35185 d!3760))

(declare-fun d!3762 () Bool)

(declare-fun res!27972 () Bool)

(declare-fun e!16823 () Bool)

(assert (=> d!3762 (=> res!27972 e!16823)))

(assert (=> d!3762 (= res!27972 ((_ is Nil!353) (toList!164 (map!201 lt!2833))))))

(assert (=> d!3762 (= (forall!42 (toList!164 (map!201 lt!2833)) lambda!563) e!16823)))

(declare-fun b!35295 () Bool)

(declare-fun e!16824 () Bool)

(assert (=> b!35295 (= e!16823 e!16824)))

(declare-fun res!27973 () Bool)

(assert (=> b!35295 (=> (not res!27973) (not e!16824))))

(declare-fun dynLambda!46 (Int tuple2!276) Bool)

(assert (=> b!35295 (= res!27973 (dynLambda!46 lambda!563 (h!5749 (toList!164 (map!201 lt!2833)))))))

(declare-fun b!35296 () Bool)

(assert (=> b!35296 (= e!16824 (forall!42 (t!15161 (toList!164 (map!201 lt!2833))) lambda!563))))

(assert (= (and d!3762 (not res!27972)) b!35295))

(assert (= (and b!35295 res!27973) b!35296))

(declare-fun b_lambda!229 () Bool)

(assert (=> (not b_lambda!229) (not b!35295)))

(declare-fun m!11156 () Bool)

(assert (=> b!35295 m!11156))

(declare-fun m!11158 () Bool)

(assert (=> b!35296 m!11158))

(assert (=> b!35167 d!3762))

(declare-fun d!3764 () Bool)

(declare-fun lt!2865 () ListMap!29)

(assert (=> d!3764 (invariantList!14 (toList!164 lt!2865))))

(declare-fun extractMap!5 (List!361) ListMap!29)

(assert (=> d!3764 (= lt!2865 (extractMap!5 (toList!167 (map!204 (v!12128 (underlying!362 lt!2833))))))))

(assert (=> d!3764 (valid!92 lt!2833)))

(assert (=> d!3764 (= (map!201 lt!2833) lt!2865)))

(declare-fun bs!4813 () Bool)

(assert (= bs!4813 d!3764))

(declare-fun m!11160 () Bool)

(assert (=> bs!4813 m!11160))

(assert (=> bs!4813 m!11107))

(declare-fun m!11162 () Bool)

(assert (=> bs!4813 m!11162))

(assert (=> bs!4813 m!10963))

(assert (=> b!35167 d!3764))

(declare-fun d!3766 () Bool)

(declare-fun jsonStringRe!0 (JsonLexer!14) Regex!159)

(declare-datatypes ((StringLiteralValueInjection!32 0))(
  ( (StringLiteralValueInjection!33) )
))
(declare-fun injection!8 (StringLiteralValueInjection!32) TokenValueInjection!56)

(assert (=> d!3766 (= (jsonstringRule!0 JsonLexer!15) (Rule!53 (jsonStringRe!0 JsonLexer!15) (String!802 "ssttrriinnggLLiitteerraall") false (injection!8 StringLiteralValueInjection!33)))))

(declare-fun bs!4814 () Bool)

(assert (= bs!4814 d!3766))

(declare-fun m!11164 () Bool)

(assert (=> bs!4814 m!11164))

(declare-fun m!11166 () Bool)

(assert (=> bs!4814 m!11166))

(assert (=> d!3656 d!3766))

(declare-fun d!3768 () Bool)

(declare-fun falseRe!0 (JsonLexer!14) Regex!159)

(declare-datatypes ((KeywordValueInjection!12 0))(
  ( (KeywordValueInjection!13) )
))
(declare-fun injection!9 (KeywordValueInjection!12) TokenValueInjection!56)

(assert (=> d!3768 (= (falseRule!0 JsonLexer!15) (Rule!53 (falseRe!0 JsonLexer!15) (String!802 "ffaallsseeLLiitteerraall") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4815 () Bool)

(assert (= bs!4815 d!3768))

(declare-fun m!11168 () Bool)

(assert (=> bs!4815 m!11168))

(declare-fun m!11170 () Bool)

(assert (=> bs!4815 m!11170))

(assert (=> d!3656 d!3768))

(declare-fun d!3770 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3770 (= (lBracketRule!0 JsonLexer!15) (Rule!53 (lBracketRe!0 JsonLexer!15) (String!802 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4816 () Bool)

(assert (= bs!4816 d!3770))

(declare-fun m!11172 () Bool)

(assert (=> bs!4816 m!11172))

(assert (=> bs!4816 m!11170))

(assert (=> d!3656 d!3770))

(declare-fun d!3772 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3772 (= (rBracketRule!0 JsonLexer!15) (Rule!53 (rBracketRe!0 JsonLexer!15) (String!802 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4817 () Bool)

(assert (= bs!4817 d!3772))

(declare-fun m!11174 () Bool)

(assert (=> bs!4817 m!11174))

(assert (=> bs!4817 m!11170))

(assert (=> d!3656 d!3772))

(declare-fun d!3774 () Bool)

(declare-fun lBraceRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3774 (= (lBraceRule!0 JsonLexer!15) (Rule!53 (lBraceRe!0 JsonLexer!15) (String!802 "lleeffttBBrraaccee") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4818 () Bool)

(assert (= bs!4818 d!3774))

(declare-fun m!11176 () Bool)

(assert (=> bs!4818 m!11176))

(assert (=> bs!4818 m!11170))

(assert (=> d!3656 d!3774))

(declare-fun d!3776 () Bool)

(declare-fun nullRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3776 (= (nullRule!0 JsonLexer!15) (Rule!53 (nullRe!0 JsonLexer!15) (String!802 "nnuullllLLiitteerraall") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4819 () Bool)

(assert (= bs!4819 d!3776))

(declare-fun m!11178 () Bool)

(assert (=> bs!4819 m!11178))

(assert (=> bs!4819 m!11170))

(assert (=> d!3656 d!3776))

(declare-fun d!3778 () Bool)

(declare-fun commaRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3778 (= (commaRule!0 JsonLexer!15) (Rule!53 (commaRe!0 JsonLexer!15) (String!802 "ccoommmmaa") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4820 () Bool)

(assert (= bs!4820 d!3778))

(declare-fun m!11180 () Bool)

(assert (=> bs!4820 m!11180))

(assert (=> bs!4820 m!11170))

(assert (=> d!3656 d!3778))

(declare-fun d!3780 () Bool)

(declare-fun rBraceRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3780 (= (rBraceRule!0 JsonLexer!15) (Rule!53 (rBraceRe!0 JsonLexer!15) (String!802 "rriigghhttBBrraaccee") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4821 () Bool)

(assert (= bs!4821 d!3780))

(declare-fun m!11182 () Bool)

(assert (=> bs!4821 m!11182))

(assert (=> bs!4821 m!11170))

(assert (=> d!3656 d!3780))

(declare-fun d!3782 () Bool)

(declare-fun wsCharRe!0 (JsonLexer!14) Regex!159)

(declare-datatypes ((WhitespaceValueInjection!8 0))(
  ( (WhitespaceValueInjection!9) )
))
(declare-fun injection!7 (WhitespaceValueInjection!8) TokenValueInjection!56)

(assert (=> d!3782 (= (whitespaceRule!0 JsonLexer!15) (Rule!53 (wsCharRe!0 JsonLexer!15) (String!802 "wwhhiitteessppaaccee") true (injection!7 WhitespaceValueInjection!9)))))

(declare-fun bs!4822 () Bool)

(assert (= bs!4822 d!3782))

(declare-fun m!11184 () Bool)

(assert (=> bs!4822 m!11184))

(declare-fun m!11186 () Bool)

(assert (=> bs!4822 m!11186))

(assert (=> d!3656 d!3782))

(declare-fun d!3784 () Bool)

(declare-fun eofRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3784 (= (eofRule!0 JsonLexer!15) (Rule!53 (eofRe!0 JsonLexer!15) (String!802 "eeooff") false (injection!7 WhitespaceValueInjection!9)))))

(declare-fun bs!4823 () Bool)

(assert (= bs!4823 d!3784))

(declare-fun m!11188 () Bool)

(assert (=> bs!4823 m!11188))

(assert (=> bs!4823 m!11186))

(assert (=> d!3656 d!3784))

(declare-fun d!3786 () Bool)

(declare-fun trueRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3786 (= (trueRule!0 JsonLexer!15) (Rule!53 (trueRe!0 JsonLexer!15) (String!802 "ttrruueeLLiitteerraall") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4824 () Bool)

(assert (= bs!4824 d!3786))

(declare-fun m!11190 () Bool)

(assert (=> bs!4824 m!11190))

(assert (=> bs!4824 m!11170))

(assert (=> d!3656 d!3786))

(declare-fun d!3788 () Bool)

(declare-fun colonRe!0 (JsonLexer!14) Regex!159)

(assert (=> d!3788 (= (colonRule!0 JsonLexer!15) (Rule!53 (colonRe!0 JsonLexer!15) (String!802 "ccoolloonn") false (injection!9 KeywordValueInjection!13)))))

(declare-fun bs!4825 () Bool)

(assert (= bs!4825 d!3788))

(declare-fun m!11192 () Bool)

(assert (=> bs!4825 m!11192))

(assert (=> bs!4825 m!11170))

(assert (=> d!3656 d!3788))

(declare-fun d!3790 () Bool)

(declare-fun intRe!0 (JsonLexer!14) Regex!159)

(declare-datatypes ((IntegerValueInjection!12 0))(
  ( (IntegerValueInjection!13) )
))
(declare-fun injection!5 (IntegerValueInjection!12) TokenValueInjection!56)

(assert (=> d!3790 (= (integerLiteralRule!0 JsonLexer!15) (Rule!53 (intRe!0 JsonLexer!15) (String!802 "iinntteeggeerrLLiitteerraall") false (injection!5 IntegerValueInjection!13)))))

(declare-fun bs!4826 () Bool)

(assert (= bs!4826 d!3790))

(declare-fun m!11194 () Bool)

(assert (=> bs!4826 m!11194))

(declare-fun m!11196 () Bool)

(assert (=> bs!4826 m!11196))

(assert (=> d!3656 d!3790))

(declare-fun d!3792 () Bool)

(declare-fun floatRe!0 (JsonLexer!14) Regex!159)

(declare-datatypes ((FloatLiteralValueInjection!8 0))(
  ( (FloatLiteralValueInjection!9) )
))
(declare-fun injection!6 (FloatLiteralValueInjection!8) TokenValueInjection!56)

(assert (=> d!3792 (= (floatLiteralRule!0 JsonLexer!15) (Rule!53 (floatRe!0 JsonLexer!15) (String!802 "ffllooaattLLiitteerraall") false (injection!6 FloatLiteralValueInjection!9)))))

(declare-fun bs!4827 () Bool)

(assert (= bs!4827 d!3792))

(declare-fun m!11198 () Bool)

(assert (=> bs!4827 m!11198))

(declare-fun m!11200 () Bool)

(assert (=> bs!4827 m!11200))

(assert (=> d!3656 d!3792))

(declare-fun bs!4828 () Bool)

(declare-fun d!3794 () Bool)

(assert (= bs!4828 (and d!3794 d!3756)))

(declare-fun lambda!605 () Int)

(assert (=> bs!4828 (= lambda!605 lambda!602)))

(declare-fun bs!4829 () Bool)

(assert (= bs!4829 (and d!3794 d!3740)))

(assert (=> bs!4829 (= lambda!605 lambda!593)))

(declare-fun bs!4830 () Bool)

(assert (= bs!4830 (and d!3794 d!3744)))

(assert (=> bs!4830 (= lambda!605 lambda!595)))

(declare-fun bs!4831 () Bool)

(assert (= bs!4831 (and d!3794 d!3734)))

(assert (=> bs!4831 (= lambda!605 lambda!590)))

(declare-fun bs!4832 () Bool)

(assert (= bs!4832 (and d!3794 d!3758)))

(assert (=> bs!4832 (= lambda!605 lambda!603)))

(declare-fun bs!4833 () Bool)

(assert (= bs!4833 (and d!3794 d!3738)))

(assert (=> bs!4833 (= lambda!605 lambda!592)))

(declare-fun bs!4834 () Bool)

(assert (= bs!4834 (and d!3794 d!3718)))

(assert (=> bs!4834 (= lambda!605 lambda!577)))

(declare-fun bs!4835 () Bool)

(assert (= bs!4835 (and d!3794 d!3742)))

(assert (=> bs!4835 (= lambda!605 lambda!594)))

(declare-fun bs!4836 () Bool)

(assert (= bs!4836 (and d!3794 d!3714)))

(assert (=> bs!4836 (= lambda!605 lambda!573)))

(declare-fun bs!4837 () Bool)

(assert (= bs!4837 (and d!3794 d!3720)))

(assert (=> bs!4837 (= lambda!605 lambda!578)))

(declare-fun bs!4838 () Bool)

(assert (= bs!4838 (and d!3794 d!3736)))

(assert (=> bs!4838 (= lambda!605 lambda!591)))

(declare-fun bs!4839 () Bool)

(assert (= bs!4839 (and d!3794 d!3752)))

(assert (=> bs!4839 (= lambda!605 lambda!598)))

(declare-fun bs!4840 () Bool)

(assert (= bs!4840 (and d!3794 d!3760)))

(assert (=> bs!4840 (= lambda!605 lambda!604)))

(declare-fun bs!4841 () Bool)

(assert (= bs!4841 (and d!3794 d!3690)))

(assert (=> bs!4841 (= lambda!605 lambda!568)))

(declare-fun bs!4842 () Bool)

(assert (= bs!4842 (and d!3794 d!3688)))

(assert (=> bs!4842 (= lambda!605 lambda!567)))

(declare-fun bs!4843 () Bool)

(assert (= bs!4843 (and d!3794 d!3698)))

(assert (=> bs!4843 (= lambda!605 lambda!569)))

(declare-fun bs!4844 () Bool)

(assert (= bs!4844 (and d!3794 d!3746)))

(assert (=> bs!4844 (= lambda!605 lambda!596)))

(declare-fun bs!4845 () Bool)

(assert (= bs!4845 (and d!3794 d!3750)))

(assert (=> bs!4845 (= lambda!605 lambda!597)))

(declare-fun bs!4846 () Bool)

(assert (= bs!4846 (and d!3794 d!3686)))

(assert (=> bs!4846 (= lambda!605 lambda!566)))

(assert (=> d!3794 (= (inv!664 (_2!185 (_1!186 (h!5748 mapDefault!280)))) (forall!43 (exprs!541 (_2!185 (_1!186 (h!5748 mapDefault!280)))) lambda!605))))

(declare-fun bs!4847 () Bool)

(assert (= bs!4847 d!3794))

(declare-fun m!11202 () Bool)

(assert (=> bs!4847 m!11202))

(assert (=> b!35212 d!3794))

(declare-fun d!3796 () Bool)

(declare-fun noDuplicatedKeys!4 (List!355) Bool)

(assert (=> d!3796 (= (invariantList!14 (toList!164 (map!201 lt!2833))) (noDuplicatedKeys!4 (toList!164 (map!201 lt!2833))))))

(declare-fun bs!4848 () Bool)

(assert (= bs!4848 d!3796))

(declare-fun m!11204 () Bool)

(assert (=> bs!4848 m!11204))

(assert (=> b!35166 d!3796))

(assert (=> b!35166 d!3764))

(declare-fun bs!4849 () Bool)

(declare-fun b!35298 () Bool)

(assert (= bs!4849 (and b!35298 b!35167)))

(declare-fun lambda!606 () Int)

(assert (=> bs!4849 (= (= (totalInput!1482 lt!2814) lt!2812) (= lambda!606 lambda!563))))

(declare-fun bs!4850 () Bool)

(assert (= bs!4850 (and b!35298 b!35285)))

(assert (=> bs!4850 (= (= (totalInput!1482 lt!2814) lt!2812) (= lambda!606 lambda!589))))

(assert (=> b!35298 true))

(declare-fun d!3798 () Bool)

(declare-fun res!27974 () Bool)

(declare-fun e!16825 () Bool)

(assert (=> d!3798 (=> (not res!27974) (not e!16825))))

(assert (=> d!3798 (= res!27974 (valid!92 (cache!558 lt!2814)))))

(assert (=> d!3798 (= (validCacheMapFurthestNullable!1 (cache!558 lt!2814) (totalInput!1482 lt!2814)) e!16825)))

(declare-fun b!35297 () Bool)

(declare-fun res!27975 () Bool)

(assert (=> b!35297 (=> (not res!27975) (not e!16825))))

(assert (=> b!35297 (= res!27975 (invariantList!14 (toList!164 (map!201 (cache!558 lt!2814)))))))

(assert (=> b!35298 (= e!16825 (forall!42 (toList!164 (map!201 (cache!558 lt!2814))) lambda!606))))

(assert (= (and d!3798 res!27974) b!35297))

(assert (= (and b!35297 res!27975) b!35298))

(declare-fun m!11206 () Bool)

(assert (=> d!3798 m!11206))

(declare-fun m!11208 () Bool)

(assert (=> b!35297 m!11208))

(declare-fun m!11210 () Bool)

(assert (=> b!35297 m!11210))

(assert (=> b!35298 m!11208))

(declare-fun m!11212 () Bool)

(assert (=> b!35298 m!11212))

(assert (=> d!3674 d!3798))

(declare-fun bs!4851 () Bool)

(declare-fun d!3800 () Bool)

(assert (= bs!4851 (and d!3800 d!3756)))

(declare-fun lambda!607 () Int)

(assert (=> bs!4851 (= lambda!607 lambda!602)))

(declare-fun bs!4852 () Bool)

(assert (= bs!4852 (and d!3800 d!3794)))

(assert (=> bs!4852 (= lambda!607 lambda!605)))

(declare-fun bs!4853 () Bool)

(assert (= bs!4853 (and d!3800 d!3740)))

(assert (=> bs!4853 (= lambda!607 lambda!593)))

(declare-fun bs!4854 () Bool)

(assert (= bs!4854 (and d!3800 d!3744)))

(assert (=> bs!4854 (= lambda!607 lambda!595)))

(declare-fun bs!4855 () Bool)

(assert (= bs!4855 (and d!3800 d!3734)))

(assert (=> bs!4855 (= lambda!607 lambda!590)))

(declare-fun bs!4856 () Bool)

(assert (= bs!4856 (and d!3800 d!3758)))

(assert (=> bs!4856 (= lambda!607 lambda!603)))

(declare-fun bs!4857 () Bool)

(assert (= bs!4857 (and d!3800 d!3738)))

(assert (=> bs!4857 (= lambda!607 lambda!592)))

(declare-fun bs!4858 () Bool)

(assert (= bs!4858 (and d!3800 d!3718)))

(assert (=> bs!4858 (= lambda!607 lambda!577)))

(declare-fun bs!4859 () Bool)

(assert (= bs!4859 (and d!3800 d!3742)))

(assert (=> bs!4859 (= lambda!607 lambda!594)))

(declare-fun bs!4860 () Bool)

(assert (= bs!4860 (and d!3800 d!3714)))

(assert (=> bs!4860 (= lambda!607 lambda!573)))

(declare-fun bs!4861 () Bool)

(assert (= bs!4861 (and d!3800 d!3720)))

(assert (=> bs!4861 (= lambda!607 lambda!578)))

(declare-fun bs!4862 () Bool)

(assert (= bs!4862 (and d!3800 d!3736)))

(assert (=> bs!4862 (= lambda!607 lambda!591)))

(declare-fun bs!4863 () Bool)

(assert (= bs!4863 (and d!3800 d!3752)))

(assert (=> bs!4863 (= lambda!607 lambda!598)))

(declare-fun bs!4864 () Bool)

(assert (= bs!4864 (and d!3800 d!3760)))

(assert (=> bs!4864 (= lambda!607 lambda!604)))

(declare-fun bs!4865 () Bool)

(assert (= bs!4865 (and d!3800 d!3690)))

(assert (=> bs!4865 (= lambda!607 lambda!568)))

(declare-fun bs!4866 () Bool)

(assert (= bs!4866 (and d!3800 d!3688)))

(assert (=> bs!4866 (= lambda!607 lambda!567)))

(declare-fun bs!4867 () Bool)

(assert (= bs!4867 (and d!3800 d!3698)))

(assert (=> bs!4867 (= lambda!607 lambda!569)))

(declare-fun bs!4868 () Bool)

(assert (= bs!4868 (and d!3800 d!3746)))

(assert (=> bs!4868 (= lambda!607 lambda!596)))

(declare-fun bs!4869 () Bool)

(assert (= bs!4869 (and d!3800 d!3750)))

(assert (=> bs!4869 (= lambda!607 lambda!597)))

(declare-fun bs!4870 () Bool)

(assert (= bs!4870 (and d!3800 d!3686)))

(assert (=> bs!4870 (= lambda!607 lambda!566)))

(assert (=> d!3800 (= (inv!664 setElem!530) (forall!43 (exprs!541 setElem!530) lambda!607))))

(declare-fun bs!4871 () Bool)

(assert (= bs!4871 d!3800))

(declare-fun m!11214 () Bool)

(assert (=> bs!4871 m!11214))

(assert (=> setNonEmpty!530 d!3800))

(declare-fun bs!4872 () Bool)

(declare-fun d!3802 () Bool)

(assert (= bs!4872 (and d!3802 d!3756)))

(declare-fun lambda!608 () Int)

(assert (=> bs!4872 (= lambda!608 lambda!602)))

(declare-fun bs!4873 () Bool)

(assert (= bs!4873 (and d!3802 d!3794)))

(assert (=> bs!4873 (= lambda!608 lambda!605)))

(declare-fun bs!4874 () Bool)

(assert (= bs!4874 (and d!3802 d!3740)))

(assert (=> bs!4874 (= lambda!608 lambda!593)))

(declare-fun bs!4875 () Bool)

(assert (= bs!4875 (and d!3802 d!3800)))

(assert (=> bs!4875 (= lambda!608 lambda!607)))

(declare-fun bs!4876 () Bool)

(assert (= bs!4876 (and d!3802 d!3744)))

(assert (=> bs!4876 (= lambda!608 lambda!595)))

(declare-fun bs!4877 () Bool)

(assert (= bs!4877 (and d!3802 d!3734)))

(assert (=> bs!4877 (= lambda!608 lambda!590)))

(declare-fun bs!4878 () Bool)

(assert (= bs!4878 (and d!3802 d!3758)))

(assert (=> bs!4878 (= lambda!608 lambda!603)))

(declare-fun bs!4879 () Bool)

(assert (= bs!4879 (and d!3802 d!3738)))

(assert (=> bs!4879 (= lambda!608 lambda!592)))

(declare-fun bs!4880 () Bool)

(assert (= bs!4880 (and d!3802 d!3718)))

(assert (=> bs!4880 (= lambda!608 lambda!577)))

(declare-fun bs!4881 () Bool)

(assert (= bs!4881 (and d!3802 d!3742)))

(assert (=> bs!4881 (= lambda!608 lambda!594)))

(declare-fun bs!4882 () Bool)

(assert (= bs!4882 (and d!3802 d!3714)))

(assert (=> bs!4882 (= lambda!608 lambda!573)))

(declare-fun bs!4883 () Bool)

(assert (= bs!4883 (and d!3802 d!3720)))

(assert (=> bs!4883 (= lambda!608 lambda!578)))

(declare-fun bs!4884 () Bool)

(assert (= bs!4884 (and d!3802 d!3736)))

(assert (=> bs!4884 (= lambda!608 lambda!591)))

(declare-fun bs!4885 () Bool)

(assert (= bs!4885 (and d!3802 d!3752)))

(assert (=> bs!4885 (= lambda!608 lambda!598)))

(declare-fun bs!4886 () Bool)

(assert (= bs!4886 (and d!3802 d!3760)))

(assert (=> bs!4886 (= lambda!608 lambda!604)))

(declare-fun bs!4887 () Bool)

(assert (= bs!4887 (and d!3802 d!3690)))

(assert (=> bs!4887 (= lambda!608 lambda!568)))

(declare-fun bs!4888 () Bool)

(assert (= bs!4888 (and d!3802 d!3688)))

(assert (=> bs!4888 (= lambda!608 lambda!567)))

(declare-fun bs!4889 () Bool)

(assert (= bs!4889 (and d!3802 d!3698)))

(assert (=> bs!4889 (= lambda!608 lambda!569)))

(declare-fun bs!4890 () Bool)

(assert (= bs!4890 (and d!3802 d!3746)))

(assert (=> bs!4890 (= lambda!608 lambda!596)))

(declare-fun bs!4891 () Bool)

(assert (= bs!4891 (and d!3802 d!3750)))

(assert (=> bs!4891 (= lambda!608 lambda!597)))

(declare-fun bs!4892 () Bool)

(assert (= bs!4892 (and d!3802 d!3686)))

(assert (=> bs!4892 (= lambda!608 lambda!566)))

(assert (=> d!3802 (= (inv!664 (_2!185 (_1!186 (h!5748 mapValue!280)))) (forall!43 (exprs!541 (_2!185 (_1!186 (h!5748 mapValue!280)))) lambda!608))))

(declare-fun bs!4893 () Bool)

(assert (= bs!4893 d!3802))

(declare-fun m!11216 () Bool)

(assert (=> bs!4893 m!11216))

(assert (=> b!35199 d!3802))

(declare-fun bs!4894 () Bool)

(declare-fun d!3804 () Bool)

(assert (= bs!4894 (and d!3804 d!3756)))

(declare-fun lambda!609 () Int)

(assert (=> bs!4894 (= lambda!609 lambda!602)))

(declare-fun bs!4895 () Bool)

(assert (= bs!4895 (and d!3804 d!3794)))

(assert (=> bs!4895 (= lambda!609 lambda!605)))

(declare-fun bs!4896 () Bool)

(assert (= bs!4896 (and d!3804 d!3740)))

(assert (=> bs!4896 (= lambda!609 lambda!593)))

(declare-fun bs!4897 () Bool)

(assert (= bs!4897 (and d!3804 d!3800)))

(assert (=> bs!4897 (= lambda!609 lambda!607)))

(declare-fun bs!4898 () Bool)

(assert (= bs!4898 (and d!3804 d!3744)))

(assert (=> bs!4898 (= lambda!609 lambda!595)))

(declare-fun bs!4899 () Bool)

(assert (= bs!4899 (and d!3804 d!3734)))

(assert (=> bs!4899 (= lambda!609 lambda!590)))

(declare-fun bs!4900 () Bool)

(assert (= bs!4900 (and d!3804 d!3738)))

(assert (=> bs!4900 (= lambda!609 lambda!592)))

(declare-fun bs!4901 () Bool)

(assert (= bs!4901 (and d!3804 d!3718)))

(assert (=> bs!4901 (= lambda!609 lambda!577)))

(declare-fun bs!4902 () Bool)

(assert (= bs!4902 (and d!3804 d!3742)))

(assert (=> bs!4902 (= lambda!609 lambda!594)))

(declare-fun bs!4903 () Bool)

(assert (= bs!4903 (and d!3804 d!3714)))

(assert (=> bs!4903 (= lambda!609 lambda!573)))

(declare-fun bs!4904 () Bool)

(assert (= bs!4904 (and d!3804 d!3720)))

(assert (=> bs!4904 (= lambda!609 lambda!578)))

(declare-fun bs!4905 () Bool)

(assert (= bs!4905 (and d!3804 d!3736)))

(assert (=> bs!4905 (= lambda!609 lambda!591)))

(declare-fun bs!4906 () Bool)

(assert (= bs!4906 (and d!3804 d!3752)))

(assert (=> bs!4906 (= lambda!609 lambda!598)))

(declare-fun bs!4907 () Bool)

(assert (= bs!4907 (and d!3804 d!3760)))

(assert (=> bs!4907 (= lambda!609 lambda!604)))

(declare-fun bs!4908 () Bool)

(assert (= bs!4908 (and d!3804 d!3690)))

(assert (=> bs!4908 (= lambda!609 lambda!568)))

(declare-fun bs!4909 () Bool)

(assert (= bs!4909 (and d!3804 d!3688)))

(assert (=> bs!4909 (= lambda!609 lambda!567)))

(declare-fun bs!4910 () Bool)

(assert (= bs!4910 (and d!3804 d!3698)))

(assert (=> bs!4910 (= lambda!609 lambda!569)))

(declare-fun bs!4911 () Bool)

(assert (= bs!4911 (and d!3804 d!3746)))

(assert (=> bs!4911 (= lambda!609 lambda!596)))

(declare-fun bs!4912 () Bool)

(assert (= bs!4912 (and d!3804 d!3802)))

(assert (=> bs!4912 (= lambda!609 lambda!608)))

(declare-fun bs!4913 () Bool)

(assert (= bs!4913 (and d!3804 d!3758)))

(assert (=> bs!4913 (= lambda!609 lambda!603)))

(declare-fun bs!4914 () Bool)

(assert (= bs!4914 (and d!3804 d!3750)))

(assert (=> bs!4914 (= lambda!609 lambda!597)))

(declare-fun bs!4915 () Bool)

(assert (= bs!4915 (and d!3804 d!3686)))

(assert (=> bs!4915 (= lambda!609 lambda!566)))

(assert (=> d!3804 (= (inv!664 setElem!538) (forall!43 (exprs!541 setElem!538) lambda!609))))

(declare-fun bs!4916 () Bool)

(assert (= bs!4916 d!3804))

(declare-fun m!11218 () Bool)

(assert (=> bs!4916 m!11218))

(assert (=> setNonEmpty!538 d!3804))

(declare-fun bs!4917 () Bool)

(declare-fun d!3806 () Bool)

(assert (= bs!4917 (and d!3806 d!3756)))

(declare-fun lambda!610 () Int)

(assert (=> bs!4917 (= lambda!610 lambda!602)))

(declare-fun bs!4918 () Bool)

(assert (= bs!4918 (and d!3806 d!3794)))

(assert (=> bs!4918 (= lambda!610 lambda!605)))

(declare-fun bs!4919 () Bool)

(assert (= bs!4919 (and d!3806 d!3740)))

(assert (=> bs!4919 (= lambda!610 lambda!593)))

(declare-fun bs!4920 () Bool)

(assert (= bs!4920 (and d!3806 d!3800)))

(assert (=> bs!4920 (= lambda!610 lambda!607)))

(declare-fun bs!4921 () Bool)

(assert (= bs!4921 (and d!3806 d!3804)))

(assert (=> bs!4921 (= lambda!610 lambda!609)))

(declare-fun bs!4922 () Bool)

(assert (= bs!4922 (and d!3806 d!3744)))

(assert (=> bs!4922 (= lambda!610 lambda!595)))

(declare-fun bs!4923 () Bool)

(assert (= bs!4923 (and d!3806 d!3734)))

(assert (=> bs!4923 (= lambda!610 lambda!590)))

(declare-fun bs!4924 () Bool)

(assert (= bs!4924 (and d!3806 d!3738)))

(assert (=> bs!4924 (= lambda!610 lambda!592)))

(declare-fun bs!4925 () Bool)

(assert (= bs!4925 (and d!3806 d!3718)))

(assert (=> bs!4925 (= lambda!610 lambda!577)))

(declare-fun bs!4926 () Bool)

(assert (= bs!4926 (and d!3806 d!3742)))

(assert (=> bs!4926 (= lambda!610 lambda!594)))

(declare-fun bs!4927 () Bool)

(assert (= bs!4927 (and d!3806 d!3714)))

(assert (=> bs!4927 (= lambda!610 lambda!573)))

(declare-fun bs!4928 () Bool)

(assert (= bs!4928 (and d!3806 d!3720)))

(assert (=> bs!4928 (= lambda!610 lambda!578)))

(declare-fun bs!4929 () Bool)

(assert (= bs!4929 (and d!3806 d!3736)))

(assert (=> bs!4929 (= lambda!610 lambda!591)))

(declare-fun bs!4930 () Bool)

(assert (= bs!4930 (and d!3806 d!3752)))

(assert (=> bs!4930 (= lambda!610 lambda!598)))

(declare-fun bs!4931 () Bool)

(assert (= bs!4931 (and d!3806 d!3760)))

(assert (=> bs!4931 (= lambda!610 lambda!604)))

(declare-fun bs!4932 () Bool)

(assert (= bs!4932 (and d!3806 d!3690)))

(assert (=> bs!4932 (= lambda!610 lambda!568)))

(declare-fun bs!4933 () Bool)

(assert (= bs!4933 (and d!3806 d!3688)))

(assert (=> bs!4933 (= lambda!610 lambda!567)))

(declare-fun bs!4934 () Bool)

(assert (= bs!4934 (and d!3806 d!3698)))

(assert (=> bs!4934 (= lambda!610 lambda!569)))

(declare-fun bs!4935 () Bool)

(assert (= bs!4935 (and d!3806 d!3746)))

(assert (=> bs!4935 (= lambda!610 lambda!596)))

(declare-fun bs!4936 () Bool)

(assert (= bs!4936 (and d!3806 d!3802)))

(assert (=> bs!4936 (= lambda!610 lambda!608)))

(declare-fun bs!4937 () Bool)

(assert (= bs!4937 (and d!3806 d!3758)))

(assert (=> bs!4937 (= lambda!610 lambda!603)))

(declare-fun bs!4938 () Bool)

(assert (= bs!4938 (and d!3806 d!3750)))

(assert (=> bs!4938 (= lambda!610 lambda!597)))

(declare-fun bs!4939 () Bool)

(assert (= bs!4939 (and d!3806 d!3686)))

(assert (=> bs!4939 (= lambda!610 lambda!566)))

(assert (=> d!3806 (= (inv!664 setElem!537) (forall!43 (exprs!541 setElem!537) lambda!610))))

(declare-fun bs!4940 () Bool)

(assert (= bs!4940 d!3806))

(declare-fun m!11220 () Bool)

(assert (=> bs!4940 m!11220))

(assert (=> setNonEmpty!537 d!3806))

(declare-fun condSetEmpty!544 () Bool)

(assert (=> setNonEmpty!526 (= condSetEmpty!544 (= setRest!527 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!544 () Bool)

(assert (=> setNonEmpty!526 (= tp!24226 setRes!544)))

(declare-fun setIsEmpty!544 () Bool)

(assert (=> setIsEmpty!544 setRes!544))

(declare-fun setNonEmpty!544 () Bool)

(declare-fun tp!24266 () Bool)

(declare-fun setElem!544 () Context!82)

(assert (=> setNonEmpty!544 (= setRes!544 (and tp!24266 (inv!664 setElem!544)))))

(declare-fun setRest!544 () (InoxSet Context!82))

(assert (=> setNonEmpty!544 (= setRest!527 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!544 true) setRest!544))))

(assert (= (and setNonEmpty!526 condSetEmpty!544) setIsEmpty!544))

(assert (= (and setNonEmpty!526 (not condSetEmpty!544)) setNonEmpty!544))

(declare-fun m!11222 () Bool)

(assert (=> setNonEmpty!544 m!11222))

(declare-fun setRes!545 () Bool)

(declare-fun b!35301 () Bool)

(declare-fun e!16829 () Bool)

(declare-fun tp!24268 () Bool)

(assert (=> b!35301 (= e!16829 (and (inv!664 (_2!185 (_1!186 (h!5748 (t!15160 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))))) setRes!545 tp!24268))))

(declare-fun condSetEmpty!545 () Bool)

(assert (=> b!35301 (= condSetEmpty!545 (= (_2!186 (h!5748 (t!15160 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!545 () Bool)

(assert (=> setIsEmpty!545 setRes!545))

(declare-fun setNonEmpty!545 () Bool)

(declare-fun tp!24267 () Bool)

(declare-fun setElem!545 () Context!82)

(assert (=> setNonEmpty!545 (= setRes!545 (and tp!24267 (inv!664 setElem!545)))))

(declare-fun setRest!545 () (InoxSet Context!82))

(assert (=> setNonEmpty!545 (= (_2!186 (h!5748 (t!15160 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!545 true) setRest!545))))

(assert (=> b!35211 (= tp!24258 e!16829)))

(assert (= (and b!35301 condSetEmpty!545) setIsEmpty!545))

(assert (= (and b!35301 (not condSetEmpty!545)) setNonEmpty!545))

(assert (= (and b!35211 ((_ is Cons!352) (t!15160 (minValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))) b!35301))

(declare-fun m!11224 () Bool)

(assert (=> b!35301 m!11224))

(declare-fun m!11226 () Bool)

(assert (=> setNonEmpty!545 m!11226))

(declare-fun e!16832 () Bool)

(declare-fun tp!24270 () Bool)

(declare-fun setRes!546 () Bool)

(declare-fun b!35302 () Bool)

(assert (=> b!35302 (= e!16832 (and (inv!664 (_2!185 (_1!186 (h!5748 (t!15160 mapValue!284))))) setRes!546 tp!24270))))

(declare-fun condSetEmpty!546 () Bool)

(assert (=> b!35302 (= condSetEmpty!546 (= (_2!186 (h!5748 (t!15160 mapValue!284))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!546 () Bool)

(assert (=> setIsEmpty!546 setRes!546))

(declare-fun setNonEmpty!546 () Bool)

(declare-fun tp!24269 () Bool)

(declare-fun setElem!546 () Context!82)

(assert (=> setNonEmpty!546 (= setRes!546 (and tp!24269 (inv!664 setElem!546)))))

(declare-fun setRest!546 () (InoxSet Context!82))

(assert (=> setNonEmpty!546 (= (_2!186 (h!5748 (t!15160 mapValue!284))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!546 true) setRest!546))))

(assert (=> b!35193 (= tp!24228 e!16832)))

(assert (= (and b!35302 condSetEmpty!546) setIsEmpty!546))

(assert (= (and b!35302 (not condSetEmpty!546)) setNonEmpty!546))

(assert (= (and b!35193 ((_ is Cons!352) (t!15160 mapValue!284))) b!35302))

(declare-fun m!11228 () Bool)

(assert (=> b!35302 m!11228))

(declare-fun m!11230 () Bool)

(assert (=> setNonEmpty!546 m!11230))

(declare-fun condSetEmpty!547 () Bool)

(assert (=> setNonEmpty!541 (= condSetEmpty!547 (= setRest!541 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!547 () Bool)

(assert (=> setNonEmpty!541 (= tp!24259 setRes!547)))

(declare-fun setIsEmpty!547 () Bool)

(assert (=> setIsEmpty!547 setRes!547))

(declare-fun setNonEmpty!547 () Bool)

(declare-fun tp!24271 () Bool)

(declare-fun setElem!547 () Context!82)

(assert (=> setNonEmpty!547 (= setRes!547 (and tp!24271 (inv!664 setElem!547)))))

(declare-fun setRest!547 () (InoxSet Context!82))

(assert (=> setNonEmpty!547 (= setRest!541 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!547 true) setRest!547))))

(assert (= (and setNonEmpty!541 condSetEmpty!547) setIsEmpty!547))

(assert (= (and setNonEmpty!541 (not condSetEmpty!547)) setNonEmpty!547))

(declare-fun m!11232 () Bool)

(assert (=> setNonEmpty!547 m!11232))

(declare-fun e!16856 () Bool)

(declare-fun e!16859 () Bool)

(declare-fun e!16860 () Bool)

(assert (=> d!3672 (= true (and e!16856 e!16859 e!16860))))

(declare-fun b!35323 () Bool)

(declare-fun e!16858 () Bool)

(declare-fun lt!2874 () MutLongMap!84)

(assert (=> b!35323 (= e!16858 ((_ is LongMap!84) lt!2874))))

(assert (=> b!35323 (= lt!2874 (v!12130 (underlying!364 (cache!559 (_2!191 (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814))))))))

(declare-fun b!35324 () Bool)

(declare-fun e!16862 () Bool)

(assert (=> b!35324 (= e!16862 e!16858)))

(declare-fun b!35325 () Bool)

(declare-fun e!16854 () Bool)

(assert (=> b!35325 (= e!16860 e!16854)))

(declare-fun b!35326 () Bool)

(declare-fun e!16857 () Bool)

(assert (=> b!35326 (= e!16854 e!16857)))

(declare-fun b!35327 () Bool)

(declare-fun e!16861 () Bool)

(assert (=> b!35327 (= e!16859 e!16861)))

(declare-fun b!35328 () Bool)

(declare-fun e!16855 () Bool)

(declare-fun lt!2873 () MutLongMap!82)

(assert (=> b!35328 (= e!16855 ((_ is LongMap!82) lt!2873))))

(assert (=> b!35328 (= lt!2873 (v!12126 (underlying!360 (cache!557 (_3!50 (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814))))))))

(declare-fun b!35329 () Bool)

(assert (=> b!35329 (= e!16856 e!16862)))

(declare-fun b!35330 () Bool)

(declare-fun lt!2872 () MutLongMap!83)

(assert (=> b!35330 (= e!16857 ((_ is LongMap!83) lt!2872))))

(assert (=> b!35330 (= lt!2872 (v!12128 (underlying!362 (cache!558 (_4!2 (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814))))))))

(declare-fun b!35331 () Bool)

(assert (=> b!35331 (= e!16861 e!16855)))

(assert (= b!35324 b!35323))

(assert (= (and b!35329 ((_ is HashMap!80) (cache!559 (_2!191 (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814))))) b!35324))

(assert (= d!3672 b!35329))

(assert (= b!35331 b!35328))

(assert (= (and b!35327 ((_ is HashMap!78) (cache!557 (_3!50 (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814))))) b!35331))

(assert (= d!3672 b!35327))

(assert (= b!35326 b!35330))

(assert (= (and b!35325 ((_ is HashMap!79) (cache!558 (_4!2 (lexAndCheckPrintable!0 lt!2812 cacheUp!368 cacheDown!381 lt!2814))))) b!35326))

(assert (= d!3672 b!35325))

(declare-fun tp!24273 () Bool)

(declare-fun b!35332 () Bool)

(declare-fun e!16863 () Bool)

(declare-fun setRes!548 () Bool)

(assert (=> b!35332 (= e!16863 (and (inv!664 (_2!185 (_1!186 (h!5748 (t!15160 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))))) setRes!548 tp!24273))))

(declare-fun condSetEmpty!548 () Bool)

(assert (=> b!35332 (= condSetEmpty!548 (= (_2!186 (h!5748 (t!15160 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!548 () Bool)

(assert (=> setIsEmpty!548 setRes!548))

(declare-fun setNonEmpty!548 () Bool)

(declare-fun tp!24272 () Bool)

(declare-fun setElem!548 () Context!82)

(assert (=> setNonEmpty!548 (= setRes!548 (and tp!24272 (inv!664 setElem!548)))))

(declare-fun setRest!548 () (InoxSet Context!82))

(assert (=> setNonEmpty!548 (= (_2!186 (h!5748 (t!15160 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!548 true) setRest!548))))

(assert (=> b!35210 (= tp!24256 e!16863)))

(assert (= (and b!35332 condSetEmpty!548) setIsEmpty!548))

(assert (= (and b!35332 (not condSetEmpty!548)) setNonEmpty!548))

(assert (= (and b!35210 ((_ is Cons!352) (t!15160 (zeroValue!338 (v!12125 (underlying!359 (v!12126 (underlying!360 (cache!557 cacheDown!381))))))))) b!35332))

(declare-fun m!11234 () Bool)

(assert (=> b!35332 m!11234))

(declare-fun m!11236 () Bool)

(assert (=> setNonEmpty!548 m!11236))

(declare-fun e!16866 () Bool)

(declare-fun tp!24275 () Bool)

(declare-fun b!35333 () Bool)

(declare-fun setRes!549 () Bool)

(assert (=> b!35333 (= e!16866 (and (inv!664 (_2!185 (_1!186 (h!5748 (t!15160 mapDefault!284))))) setRes!549 tp!24275))))

(declare-fun condSetEmpty!549 () Bool)

(assert (=> b!35333 (= condSetEmpty!549 (= (_2!186 (h!5748 (t!15160 mapDefault!284))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!549 () Bool)

(assert (=> setIsEmpty!549 setRes!549))

(declare-fun setNonEmpty!549 () Bool)

(declare-fun tp!24274 () Bool)

(declare-fun setElem!549 () Context!82)

(assert (=> setNonEmpty!549 (= setRes!549 (and tp!24274 (inv!664 setElem!549)))))

(declare-fun setRest!549 () (InoxSet Context!82))

(assert (=> setNonEmpty!549 (= (_2!186 (h!5748 (t!15160 mapDefault!284))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!549 true) setRest!549))))

(assert (=> b!35194 (= tp!24229 e!16866)))

(assert (= (and b!35333 condSetEmpty!549) setIsEmpty!549))

(assert (= (and b!35333 (not condSetEmpty!549)) setNonEmpty!549))

(assert (= (and b!35194 ((_ is Cons!352) (t!15160 mapDefault!284))) b!35333))

(declare-fun m!11238 () Bool)

(assert (=> b!35333 m!11238))

(declare-fun m!11240 () Bool)

(assert (=> setNonEmpty!549 m!11240))

(declare-fun mapIsEmpty!288 () Bool)

(declare-fun mapRes!288 () Bool)

(assert (=> mapIsEmpty!288 mapRes!288))

(declare-fun mapValue!288 () List!354)

(declare-fun setRes!551 () Bool)

(declare-fun e!16872 () Bool)

(declare-fun b!35334 () Bool)

(declare-fun tp!24279 () Bool)

(assert (=> b!35334 (= e!16872 (and (inv!664 (_2!185 (_1!186 (h!5748 mapValue!288)))) setRes!551 tp!24279))))

(declare-fun condSetEmpty!551 () Bool)

(assert (=> b!35334 (= condSetEmpty!551 (= (_2!186 (h!5748 mapValue!288)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun condMapEmpty!288 () Bool)

(declare-fun mapDefault!288 () List!354)

(assert (=> mapNonEmpty!284 (= condMapEmpty!288 (= mapRest!284 ((as const (Array (_ BitVec 32) List!354)) mapDefault!288)))))

(declare-fun e!16873 () Bool)

(assert (=> mapNonEmpty!284 (= tp!24227 (and e!16873 mapRes!288))))

(declare-fun setNonEmpty!550 () Bool)

(declare-fun setRes!550 () Bool)

(declare-fun tp!24277 () Bool)

(declare-fun setElem!550 () Context!82)

(assert (=> setNonEmpty!550 (= setRes!550 (and tp!24277 (inv!664 setElem!550)))))

(declare-fun setRest!551 () (InoxSet Context!82))

(assert (=> setNonEmpty!550 (= (_2!186 (h!5748 mapDefault!288)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!550 true) setRest!551))))

(declare-fun setNonEmpty!551 () Bool)

(declare-fun tp!24276 () Bool)

(declare-fun setElem!551 () Context!82)

(assert (=> setNonEmpty!551 (= setRes!551 (and tp!24276 (inv!664 setElem!551)))))

(declare-fun setRest!550 () (InoxSet Context!82))

(assert (=> setNonEmpty!551 (= (_2!186 (h!5748 mapValue!288)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!551 true) setRest!550))))

(declare-fun setIsEmpty!550 () Bool)

(assert (=> setIsEmpty!550 setRes!550))

(declare-fun mapNonEmpty!288 () Bool)

(declare-fun tp!24278 () Bool)

(assert (=> mapNonEmpty!288 (= mapRes!288 (and tp!24278 e!16872))))

(declare-fun mapKey!288 () (_ BitVec 32))

(declare-fun mapRest!288 () (Array (_ BitVec 32) List!354))

(assert (=> mapNonEmpty!288 (= mapRest!284 (store mapRest!288 mapKey!288 mapValue!288))))

(declare-fun b!35335 () Bool)

(declare-fun tp!24280 () Bool)

(assert (=> b!35335 (= e!16873 (and (inv!664 (_2!185 (_1!186 (h!5748 mapDefault!288)))) setRes!550 tp!24280))))

(declare-fun condSetEmpty!550 () Bool)

(assert (=> b!35335 (= condSetEmpty!550 (= (_2!186 (h!5748 mapDefault!288)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!551 () Bool)

(assert (=> setIsEmpty!551 setRes!551))

(assert (= (and mapNonEmpty!284 condMapEmpty!288) mapIsEmpty!288))

(assert (= (and mapNonEmpty!284 (not condMapEmpty!288)) mapNonEmpty!288))

(assert (= (and b!35334 condSetEmpty!551) setIsEmpty!551))

(assert (= (and b!35334 (not condSetEmpty!551)) setNonEmpty!551))

(assert (= (and mapNonEmpty!288 ((_ is Cons!352) mapValue!288)) b!35334))

(assert (= (and b!35335 condSetEmpty!550) setIsEmpty!550))

(assert (= (and b!35335 (not condSetEmpty!550)) setNonEmpty!550))

(assert (= (and mapNonEmpty!284 ((_ is Cons!352) mapDefault!288)) b!35335))

(declare-fun m!11242 () Bool)

(assert (=> b!35334 m!11242))

(declare-fun m!11244 () Bool)

(assert (=> setNonEmpty!550 m!11244))

(declare-fun m!11246 () Bool)

(assert (=> mapNonEmpty!288 m!11246))

(declare-fun m!11248 () Bool)

(assert (=> setNonEmpty!551 m!11248))

(declare-fun m!11250 () Bool)

(assert (=> b!35335 m!11250))

(declare-fun condSetEmpty!552 () Bool)

(assert (=> setNonEmpty!521 (= condSetEmpty!552 (= setRest!521 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!552 () Bool)

(assert (=> setNonEmpty!521 (= tp!24213 setRes!552)))

(declare-fun setIsEmpty!552 () Bool)

(assert (=> setIsEmpty!552 setRes!552))

(declare-fun setNonEmpty!552 () Bool)

(declare-fun tp!24281 () Bool)

(declare-fun setElem!552 () Context!82)

(assert (=> setNonEmpty!552 (= setRes!552 (and tp!24281 (inv!664 setElem!552)))))

(declare-fun setRest!552 () (InoxSet Context!82))

(assert (=> setNonEmpty!552 (= setRest!521 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!552 true) setRest!552))))

(assert (= (and setNonEmpty!521 condSetEmpty!552) setIsEmpty!552))

(assert (= (and setNonEmpty!521 (not condSetEmpty!552)) setNonEmpty!552))

(declare-fun m!11252 () Bool)

(assert (=> setNonEmpty!552 m!11252))

(declare-fun condSetEmpty!553 () Bool)

(assert (=> setNonEmpty!540 (= condSetEmpty!553 (= setRest!540 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!553 () Bool)

(assert (=> setNonEmpty!540 (= tp!24257 setRes!553)))

(declare-fun setIsEmpty!553 () Bool)

(assert (=> setIsEmpty!553 setRes!553))

(declare-fun setNonEmpty!553 () Bool)

(declare-fun tp!24282 () Bool)

(declare-fun setElem!553 () Context!82)

(assert (=> setNonEmpty!553 (= setRes!553 (and tp!24282 (inv!664 setElem!553)))))

(declare-fun setRest!553 () (InoxSet Context!82))

(assert (=> setNonEmpty!553 (= setRest!540 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!553 true) setRest!553))))

(assert (= (and setNonEmpty!540 condSetEmpty!553) setIsEmpty!553))

(assert (= (and setNonEmpty!540 (not condSetEmpty!553)) setNonEmpty!553))

(declare-fun m!11254 () Bool)

(assert (=> setNonEmpty!553 m!11254))

(declare-fun condSetEmpty!554 () Bool)

(assert (=> setNonEmpty!527 (= condSetEmpty!554 (= setRest!526 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!554 () Bool)

(assert (=> setNonEmpty!527 (= tp!24225 setRes!554)))

(declare-fun setIsEmpty!554 () Bool)

(assert (=> setIsEmpty!554 setRes!554))

(declare-fun setNonEmpty!554 () Bool)

(declare-fun tp!24283 () Bool)

(declare-fun setElem!554 () Context!82)

(assert (=> setNonEmpty!554 (= setRes!554 (and tp!24283 (inv!664 setElem!554)))))

(declare-fun setRest!554 () (InoxSet Context!82))

(assert (=> setNonEmpty!554 (= setRest!526 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!554 true) setRest!554))))

(assert (= (and setNonEmpty!527 condSetEmpty!554) setIsEmpty!554))

(assert (= (and setNonEmpty!527 (not condSetEmpty!554)) setNonEmpty!554))

(declare-fun m!11256 () Bool)

(assert (=> setNonEmpty!554 m!11256))

(declare-fun b!35336 () Bool)

(declare-fun tp!24285 () Bool)

(declare-fun e!16878 () Bool)

(declare-fun setRes!555 () Bool)

(assert (=> b!35336 (= e!16878 (and (inv!664 (_1!189 (_1!190 (h!5751 (t!15163 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))))) setRes!555 tp!24285))))

(declare-fun condSetEmpty!555 () Bool)

(assert (=> b!35336 (= condSetEmpty!555 (= (_2!190 (h!5751 (t!15163 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!555 () Bool)

(assert (=> setIsEmpty!555 setRes!555))

(declare-fun setNonEmpty!555 () Bool)

(declare-fun tp!24284 () Bool)

(declare-fun setElem!555 () Context!82)

(assert (=> setNonEmpty!555 (= setRes!555 (and tp!24284 (inv!664 setElem!555)))))

(declare-fun setRest!555 () (InoxSet Context!82))

(assert (=> setNonEmpty!555 (= (_2!190 (h!5751 (t!15163 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!555 true) setRest!555))))

(assert (=> b!35186 (= tp!24214 e!16878)))

(assert (= (and b!35336 condSetEmpty!555) setIsEmpty!555))

(assert (= (and b!35336 (not condSetEmpty!555)) setNonEmpty!555))

(assert (= (and b!35186 ((_ is Cons!355) (t!15163 (minValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))) b!35336))

(declare-fun m!11258 () Bool)

(assert (=> b!35336 m!11258))

(declare-fun m!11260 () Bool)

(assert (=> setNonEmpty!555 m!11260))

(declare-fun setRes!556 () Bool)

(declare-fun b!35337 () Bool)

(declare-fun tp!24287 () Bool)

(declare-fun e!16881 () Bool)

(assert (=> b!35337 (= e!16881 (and (inv!664 (_1!189 (_1!190 (h!5751 (t!15163 mapDefault!287))))) setRes!556 tp!24287))))

(declare-fun condSetEmpty!556 () Bool)

(assert (=> b!35337 (= condSetEmpty!556 (= (_2!190 (h!5751 (t!15163 mapDefault!287))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!556 () Bool)

(assert (=> setIsEmpty!556 setRes!556))

(declare-fun setNonEmpty!556 () Bool)

(declare-fun tp!24286 () Bool)

(declare-fun setElem!556 () Context!82)

(assert (=> setNonEmpty!556 (= setRes!556 (and tp!24286 (inv!664 setElem!556)))))

(declare-fun setRest!556 () (InoxSet Context!82))

(assert (=> setNonEmpty!556 (= (_2!190 (h!5751 (t!15163 mapDefault!287))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!556 true) setRest!556))))

(assert (=> b!35208 (= tp!24251 e!16881)))

(assert (= (and b!35337 condSetEmpty!556) setIsEmpty!556))

(assert (= (and b!35337 (not condSetEmpty!556)) setNonEmpty!556))

(assert (= (and b!35208 ((_ is Cons!355) (t!15163 mapDefault!287))) b!35337))

(declare-fun m!11262 () Bool)

(assert (=> b!35337 m!11262))

(declare-fun m!11264 () Bool)

(assert (=> setNonEmpty!556 m!11264))

(declare-fun setRes!557 () Bool)

(declare-fun tp!24289 () Bool)

(declare-fun b!35338 () Bool)

(declare-fun e!16884 () Bool)

(assert (=> b!35338 (= e!16884 (and (inv!664 (_1!189 (_1!190 (h!5751 (t!15163 mapValue!281))))) setRes!557 tp!24289))))

(declare-fun condSetEmpty!557 () Bool)

(assert (=> b!35338 (= condSetEmpty!557 (= (_2!190 (h!5751 (t!15163 mapValue!281))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!557 () Bool)

(assert (=> setIsEmpty!557 setRes!557))

(declare-fun setNonEmpty!557 () Bool)

(declare-fun tp!24288 () Bool)

(declare-fun setElem!557 () Context!82)

(assert (=> setNonEmpty!557 (= setRes!557 (and tp!24288 (inv!664 setElem!557)))))

(declare-fun setRest!557 () (InoxSet Context!82))

(assert (=> setNonEmpty!557 (= (_2!190 (h!5751 (t!15163 mapValue!281))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!557 true) setRest!557))))

(assert (=> b!35209 (= tp!24254 e!16884)))

(assert (= (and b!35338 condSetEmpty!557) setIsEmpty!557))

(assert (= (and b!35338 (not condSetEmpty!557)) setNonEmpty!557))

(assert (= (and b!35209 ((_ is Cons!355) (t!15163 mapValue!281))) b!35338))

(declare-fun m!11266 () Bool)

(assert (=> b!35338 m!11266))

(declare-fun m!11268 () Bool)

(assert (=> setNonEmpty!557 m!11268))

(declare-fun e!16887 () Bool)

(declare-fun tp!24291 () Bool)

(declare-fun setRes!558 () Bool)

(declare-fun b!35339 () Bool)

(assert (=> b!35339 (= e!16887 (and (inv!664 (_1!189 (_1!190 (h!5751 (t!15163 mapValue!287))))) setRes!558 tp!24291))))

(declare-fun condSetEmpty!558 () Bool)

(assert (=> b!35339 (= condSetEmpty!558 (= (_2!190 (h!5751 (t!15163 mapValue!287))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!558 () Bool)

(assert (=> setIsEmpty!558 setRes!558))

(declare-fun setNonEmpty!558 () Bool)

(declare-fun tp!24290 () Bool)

(declare-fun setElem!558 () Context!82)

(assert (=> setNonEmpty!558 (= setRes!558 (and tp!24290 (inv!664 setElem!558)))))

(declare-fun setRest!558 () (InoxSet Context!82))

(assert (=> setNonEmpty!558 (= (_2!190 (h!5751 (t!15163 mapValue!287))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!558 true) setRest!558))))

(assert (=> b!35207 (= tp!24248 e!16887)))

(assert (= (and b!35339 condSetEmpty!558) setIsEmpty!558))

(assert (= (and b!35339 (not condSetEmpty!558)) setNonEmpty!558))

(assert (= (and b!35207 ((_ is Cons!355) (t!15163 mapValue!287))) b!35339))

(declare-fun m!11270 () Bool)

(assert (=> b!35339 m!11270))

(declare-fun m!11272 () Bool)

(assert (=> setNonEmpty!558 m!11272))

(declare-fun condSetEmpty!559 () Bool)

(assert (=> setNonEmpty!531 (= condSetEmpty!559 (= setRest!531 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!559 () Bool)

(assert (=> setNonEmpty!531 (= tp!24236 setRes!559)))

(declare-fun setIsEmpty!559 () Bool)

(assert (=> setIsEmpty!559 setRes!559))

(declare-fun setNonEmpty!559 () Bool)

(declare-fun tp!24292 () Bool)

(declare-fun setElem!559 () Context!82)

(assert (=> setNonEmpty!559 (= setRes!559 (and tp!24292 (inv!664 setElem!559)))))

(declare-fun setRest!559 () (InoxSet Context!82))

(assert (=> setNonEmpty!559 (= setRest!531 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!559 true) setRest!559))))

(assert (= (and setNonEmpty!531 condSetEmpty!559) setIsEmpty!559))

(assert (= (and setNonEmpty!531 (not condSetEmpty!559)) setNonEmpty!559))

(declare-fun m!11274 () Bool)

(assert (=> setNonEmpty!559 m!11274))

(declare-fun condSetEmpty!560 () Bool)

(assert (=> setNonEmpty!520 (= condSetEmpty!560 (= setRest!520 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!560 () Bool)

(assert (=> setNonEmpty!520 (= tp!24211 setRes!560)))

(declare-fun setIsEmpty!560 () Bool)

(assert (=> setIsEmpty!560 setRes!560))

(declare-fun setNonEmpty!560 () Bool)

(declare-fun tp!24293 () Bool)

(declare-fun setElem!560 () Context!82)

(assert (=> setNonEmpty!560 (= setRes!560 (and tp!24293 (inv!664 setElem!560)))))

(declare-fun setRest!560 () (InoxSet Context!82))

(assert (=> setNonEmpty!560 (= setRest!520 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!560 true) setRest!560))))

(assert (= (and setNonEmpty!520 condSetEmpty!560) setIsEmpty!560))

(assert (= (and setNonEmpty!520 (not condSetEmpty!560)) setNonEmpty!560))

(declare-fun m!11276 () Bool)

(assert (=> setNonEmpty!560 m!11276))

(declare-fun setIsEmpty!561 () Bool)

(declare-fun setRes!562 () Bool)

(assert (=> setIsEmpty!561 setRes!562))

(declare-fun setIsEmpty!562 () Bool)

(declare-fun setRes!561 () Bool)

(assert (=> setIsEmpty!562 setRes!561))

(declare-fun setNonEmpty!561 () Bool)

(declare-fun tp!24295 () Bool)

(declare-fun setElem!561 () Context!82)

(assert (=> setNonEmpty!561 (= setRes!561 (and tp!24295 (inv!664 setElem!561)))))

(declare-fun mapValue!289 () List!357)

(declare-fun setRest!562 () (InoxSet Context!82))

(assert (=> setNonEmpty!561 (= (_2!190 (h!5751 mapValue!289)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!561 true) setRest!562))))

(declare-fun mapNonEmpty!289 () Bool)

(declare-fun mapRes!289 () Bool)

(declare-fun tp!24296 () Bool)

(declare-fun e!16892 () Bool)

(assert (=> mapNonEmpty!289 (= mapRes!289 (and tp!24296 e!16892))))

(declare-fun mapRest!289 () (Array (_ BitVec 32) List!357))

(declare-fun mapKey!289 () (_ BitVec 32))

(assert (=> mapNonEmpty!289 (= mapRest!287 (store mapRest!289 mapKey!289 mapValue!289))))

(declare-fun condMapEmpty!289 () Bool)

(declare-fun mapDefault!289 () List!357)

(assert (=> mapNonEmpty!287 (= condMapEmpty!289 (= mapRest!287 ((as const (Array (_ BitVec 32) List!357)) mapDefault!289)))))

(declare-fun e!16897 () Bool)

(assert (=> mapNonEmpty!287 (= tp!24250 (and e!16897 mapRes!289))))

(declare-fun mapIsEmpty!289 () Bool)

(assert (=> mapIsEmpty!289 mapRes!289))

(declare-fun tp!24294 () Bool)

(declare-fun b!35340 () Bool)

(assert (=> b!35340 (= e!16892 (and (inv!664 (_1!189 (_1!190 (h!5751 mapValue!289)))) setRes!561 tp!24294))))

(declare-fun condSetEmpty!562 () Bool)

(assert (=> b!35340 (= condSetEmpty!562 (= (_2!190 (h!5751 mapValue!289)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun tp!24297 () Bool)

(declare-fun b!35341 () Bool)

(assert (=> b!35341 (= e!16897 (and (inv!664 (_1!189 (_1!190 (h!5751 mapDefault!289)))) setRes!562 tp!24297))))

(declare-fun condSetEmpty!561 () Bool)

(assert (=> b!35341 (= condSetEmpty!561 (= (_2!190 (h!5751 mapDefault!289)) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setNonEmpty!562 () Bool)

(declare-fun tp!24298 () Bool)

(declare-fun setElem!562 () Context!82)

(assert (=> setNonEmpty!562 (= setRes!562 (and tp!24298 (inv!664 setElem!562)))))

(declare-fun setRest!561 () (InoxSet Context!82))

(assert (=> setNonEmpty!562 (= (_2!190 (h!5751 mapDefault!289)) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!562 true) setRest!561))))

(assert (= (and mapNonEmpty!287 condMapEmpty!289) mapIsEmpty!289))

(assert (= (and mapNonEmpty!287 (not condMapEmpty!289)) mapNonEmpty!289))

(assert (= (and b!35340 condSetEmpty!562) setIsEmpty!562))

(assert (= (and b!35340 (not condSetEmpty!562)) setNonEmpty!561))

(assert (= (and mapNonEmpty!289 ((_ is Cons!355) mapValue!289)) b!35340))

(assert (= (and b!35341 condSetEmpty!561) setIsEmpty!561))

(assert (= (and b!35341 (not condSetEmpty!561)) setNonEmpty!562))

(assert (= (and mapNonEmpty!287 ((_ is Cons!355) mapDefault!289)) b!35341))

(declare-fun m!11278 () Bool)

(assert (=> b!35340 m!11278))

(declare-fun m!11280 () Bool)

(assert (=> setNonEmpty!562 m!11280))

(declare-fun m!11282 () Bool)

(assert (=> mapNonEmpty!289 m!11282))

(declare-fun m!11284 () Bool)

(assert (=> setNonEmpty!561 m!11284))

(declare-fun m!11286 () Bool)

(assert (=> b!35341 m!11286))

(declare-fun setRes!563 () Bool)

(declare-fun tp!24300 () Bool)

(declare-fun b!35342 () Bool)

(declare-fun e!16898 () Bool)

(assert (=> b!35342 (= e!16898 (and (inv!664 (_1!189 (_1!190 (h!5751 (t!15163 mapDefault!281))))) setRes!563 tp!24300))))

(declare-fun condSetEmpty!563 () Bool)

(assert (=> b!35342 (= condSetEmpty!563 (= (_2!190 (h!5751 (t!15163 mapDefault!281))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!563 () Bool)

(assert (=> setIsEmpty!563 setRes!563))

(declare-fun setNonEmpty!563 () Bool)

(declare-fun tp!24299 () Bool)

(declare-fun setElem!563 () Context!82)

(assert (=> setNonEmpty!563 (= setRes!563 (and tp!24299 (inv!664 setElem!563)))))

(declare-fun setRest!563 () (InoxSet Context!82))

(assert (=> setNonEmpty!563 (= (_2!190 (h!5751 (t!15163 mapDefault!281))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!563 true) setRest!563))))

(assert (=> b!35200 (= tp!24237 e!16898)))

(assert (= (and b!35342 condSetEmpty!563) setIsEmpty!563))

(assert (= (and b!35342 (not condSetEmpty!563)) setNonEmpty!563))

(assert (= (and b!35200 ((_ is Cons!355) (t!15163 mapDefault!281))) b!35342))

(declare-fun m!11288 () Bool)

(assert (=> b!35342 m!11288))

(declare-fun m!11290 () Bool)

(assert (=> setNonEmpty!563 m!11290))

(declare-fun condSetEmpty!564 () Bool)

(assert (=> setNonEmpty!539 (= condSetEmpty!564 (= setRest!539 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!564 () Bool)

(assert (=> setNonEmpty!539 (= tp!24255 setRes!564)))

(declare-fun setIsEmpty!564 () Bool)

(assert (=> setIsEmpty!564 setRes!564))

(declare-fun setNonEmpty!564 () Bool)

(declare-fun tp!24301 () Bool)

(declare-fun setElem!564 () Context!82)

(assert (=> setNonEmpty!564 (= setRes!564 (and tp!24301 (inv!664 setElem!564)))))

(declare-fun setRest!564 () (InoxSet Context!82))

(assert (=> setNonEmpty!564 (= setRest!539 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!564 true) setRest!564))))

(assert (= (and setNonEmpty!539 condSetEmpty!564) setIsEmpty!564))

(assert (= (and setNonEmpty!539 (not condSetEmpty!564)) setNonEmpty!564))

(declare-fun m!11292 () Bool)

(assert (=> setNonEmpty!564 m!11292))

(declare-fun condSetEmpty!565 () Bool)

(assert (=> setNonEmpty!536 (= condSetEmpty!565 (= setRest!537 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!565 () Bool)

(assert (=> setNonEmpty!536 (= tp!24249 setRes!565)))

(declare-fun setIsEmpty!565 () Bool)

(assert (=> setIsEmpty!565 setRes!565))

(declare-fun setNonEmpty!565 () Bool)

(declare-fun tp!24302 () Bool)

(declare-fun setElem!565 () Context!82)

(assert (=> setNonEmpty!565 (= setRes!565 (and tp!24302 (inv!664 setElem!565)))))

(declare-fun setRest!565 () (InoxSet Context!82))

(assert (=> setNonEmpty!565 (= setRest!537 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!565 true) setRest!565))))

(assert (= (and setNonEmpty!536 condSetEmpty!565) setIsEmpty!565))

(assert (= (and setNonEmpty!536 (not condSetEmpty!565)) setNonEmpty!565))

(declare-fun m!11294 () Bool)

(assert (=> setNonEmpty!565 m!11294))

(declare-fun e!16903 () Bool)

(declare-fun tp!24304 () Bool)

(declare-fun b!35343 () Bool)

(declare-fun setRes!566 () Bool)

(assert (=> b!35343 (= e!16903 (and (inv!664 (_1!189 (_1!190 (h!5751 (t!15163 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))))) setRes!566 tp!24304))))

(declare-fun condSetEmpty!566 () Bool)

(assert (=> b!35343 (= condSetEmpty!566 (= (_2!190 (h!5751 (t!15163 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!566 () Bool)

(assert (=> setIsEmpty!566 setRes!566))

(declare-fun setNonEmpty!566 () Bool)

(declare-fun tp!24303 () Bool)

(declare-fun setElem!566 () Context!82)

(assert (=> setNonEmpty!566 (= setRes!566 (and tp!24303 (inv!664 setElem!566)))))

(declare-fun setRest!566 () (InoxSet Context!82))

(assert (=> setNonEmpty!566 (= (_2!190 (h!5751 (t!15163 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!566 true) setRest!566))))

(assert (=> b!35185 (= tp!24212 e!16903)))

(assert (= (and b!35343 condSetEmpty!566) setIsEmpty!566))

(assert (= (and b!35343 (not condSetEmpty!566)) setNonEmpty!566))

(assert (= (and b!35185 ((_ is Cons!355) (t!15163 (zeroValue!340 (v!12129 (underlying!363 (v!12130 (underlying!364 (cache!559 cacheUp!368))))))))) b!35343))

(declare-fun m!11296 () Bool)

(assert (=> b!35343 m!11296))

(declare-fun m!11298 () Bool)

(assert (=> setNonEmpty!566 m!11298))

(declare-fun setRes!567 () Bool)

(declare-fun b!35344 () Bool)

(declare-fun e!16906 () Bool)

(declare-fun tp!24306 () Bool)

(assert (=> b!35344 (= e!16906 (and (inv!664 (_2!185 (_1!186 (h!5748 (t!15160 mapDefault!280))))) setRes!567 tp!24306))))

(declare-fun condSetEmpty!567 () Bool)

(assert (=> b!35344 (= condSetEmpty!567 (= (_2!186 (h!5748 (t!15160 mapDefault!280))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!567 () Bool)

(assert (=> setIsEmpty!567 setRes!567))

(declare-fun setNonEmpty!567 () Bool)

(declare-fun tp!24305 () Bool)

(declare-fun setElem!567 () Context!82)

(assert (=> setNonEmpty!567 (= setRes!567 (and tp!24305 (inv!664 setElem!567)))))

(declare-fun setRest!567 () (InoxSet Context!82))

(assert (=> setNonEmpty!567 (= (_2!186 (h!5748 (t!15160 mapDefault!280))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!567 true) setRest!567))))

(assert (=> b!35212 (= tp!24260 e!16906)))

(assert (= (and b!35344 condSetEmpty!567) setIsEmpty!567))

(assert (= (and b!35344 (not condSetEmpty!567)) setNonEmpty!567))

(assert (= (and b!35212 ((_ is Cons!352) (t!15160 mapDefault!280))) b!35344))

(declare-fun m!11300 () Bool)

(assert (=> b!35344 m!11300))

(declare-fun m!11302 () Bool)

(assert (=> setNonEmpty!567 m!11302))

(declare-fun condSetEmpty!568 () Bool)

(assert (=> setNonEmpty!530 (= condSetEmpty!568 (= setRest!530 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!568 () Bool)

(assert (=> setNonEmpty!530 (= tp!24234 setRes!568)))

(declare-fun setIsEmpty!568 () Bool)

(assert (=> setIsEmpty!568 setRes!568))

(declare-fun setNonEmpty!568 () Bool)

(declare-fun tp!24307 () Bool)

(declare-fun setElem!568 () Context!82)

(assert (=> setNonEmpty!568 (= setRes!568 (and tp!24307 (inv!664 setElem!568)))))

(declare-fun setRest!568 () (InoxSet Context!82))

(assert (=> setNonEmpty!568 (= setRest!530 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!568 true) setRest!568))))

(assert (= (and setNonEmpty!530 condSetEmpty!568) setIsEmpty!568))

(assert (= (and setNonEmpty!530 (not condSetEmpty!568)) setNonEmpty!568))

(declare-fun m!11304 () Bool)

(assert (=> setNonEmpty!568 m!11304))

(declare-fun tp!24309 () Bool)

(declare-fun b!35345 () Bool)

(declare-fun setRes!569 () Bool)

(declare-fun e!16910 () Bool)

(assert (=> b!35345 (= e!16910 (and (inv!664 (_2!185 (_1!186 (h!5748 (t!15160 mapValue!280))))) setRes!569 tp!24309))))

(declare-fun condSetEmpty!569 () Bool)

(assert (=> b!35345 (= condSetEmpty!569 (= (_2!186 (h!5748 (t!15160 mapValue!280))) ((as const (Array Context!82 Bool)) false)))))

(declare-fun setIsEmpty!569 () Bool)

(assert (=> setIsEmpty!569 setRes!569))

(declare-fun setNonEmpty!569 () Bool)

(declare-fun tp!24308 () Bool)

(declare-fun setElem!569 () Context!82)

(assert (=> setNonEmpty!569 (= setRes!569 (and tp!24308 (inv!664 setElem!569)))))

(declare-fun setRest!569 () (InoxSet Context!82))

(assert (=> setNonEmpty!569 (= (_2!186 (h!5748 (t!15160 mapValue!280))) ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!569 true) setRest!569))))

(assert (=> b!35199 (= tp!24235 e!16910)))

(assert (= (and b!35345 condSetEmpty!569) setIsEmpty!569))

(assert (= (and b!35345 (not condSetEmpty!569)) setNonEmpty!569))

(assert (= (and b!35199 ((_ is Cons!352) (t!15160 mapValue!280))) b!35345))

(declare-fun m!11306 () Bool)

(assert (=> b!35345 m!11306))

(declare-fun m!11308 () Bool)

(assert (=> setNonEmpty!569 m!11308))

(declare-fun condSetEmpty!570 () Bool)

(assert (=> setNonEmpty!538 (= condSetEmpty!570 (= setRest!538 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!570 () Bool)

(assert (=> setNonEmpty!538 (= tp!24253 setRes!570)))

(declare-fun setIsEmpty!570 () Bool)

(assert (=> setIsEmpty!570 setRes!570))

(declare-fun setNonEmpty!570 () Bool)

(declare-fun tp!24310 () Bool)

(declare-fun setElem!570 () Context!82)

(assert (=> setNonEmpty!570 (= setRes!570 (and tp!24310 (inv!664 setElem!570)))))

(declare-fun setRest!570 () (InoxSet Context!82))

(assert (=> setNonEmpty!570 (= setRest!538 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!570 true) setRest!570))))

(assert (= (and setNonEmpty!538 condSetEmpty!570) setIsEmpty!570))

(assert (= (and setNonEmpty!538 (not condSetEmpty!570)) setNonEmpty!570))

(declare-fun m!11310 () Bool)

(assert (=> setNonEmpty!570 m!11310))

(declare-fun condSetEmpty!571 () Bool)

(assert (=> setNonEmpty!537 (= condSetEmpty!571 (= setRest!536 ((as const (Array Context!82 Bool)) false)))))

(declare-fun setRes!571 () Bool)

(assert (=> setNonEmpty!537 (= tp!24252 setRes!571)))

(declare-fun setIsEmpty!571 () Bool)

(assert (=> setIsEmpty!571 setRes!571))

(declare-fun setNonEmpty!571 () Bool)

(declare-fun tp!24311 () Bool)

(declare-fun setElem!571 () Context!82)

(assert (=> setNonEmpty!571 (= setRes!571 (and tp!24311 (inv!664 setElem!571)))))

(declare-fun setRest!571 () (InoxSet Context!82))

(assert (=> setNonEmpty!571 (= setRest!536 ((_ map or) (store ((as const (Array Context!82 Bool)) false) setElem!571 true) setRest!571))))

(assert (= (and setNonEmpty!537 condSetEmpty!571) setIsEmpty!571))

(assert (= (and setNonEmpty!537 (not condSetEmpty!571)) setNonEmpty!571))

(declare-fun m!11312 () Bool)

(assert (=> setNonEmpty!571 m!11312))

(declare-fun b_lambda!231 () Bool)

(assert (= b_lambda!229 (or b!35167 b_lambda!231)))

(declare-fun bs!4941 () Bool)

(declare-fun d!3808 () Bool)

(assert (= bs!4941 (and d!3808 b!35167)))

(declare-fun validCacheMapFurthestNullableBody!1 (tuple2!276 BalanceConc!108) Bool)

(assert (=> bs!4941 (= (dynLambda!46 lambda!563 (h!5749 (toList!164 (map!201 lt!2833)))) (validCacheMapFurthestNullableBody!1 (h!5749 (toList!164 (map!201 lt!2833))) lt!2812))))

(declare-fun m!11314 () Bool)

(assert (=> bs!4941 m!11314))

(assert (=> b!35295 d!3808))

(check-sat (not b!35270) (not setNonEmpty!551) (not setNonEmpty!563) (not setNonEmpty!557) (not d!3782) (not d!3798) (not setNonEmpty!544) (not d!3770) (not b!35288) b_and!499 (not setNonEmpty!566) (not b!35226) (not b!35334) (not b_lambda!231) (not b!35265) (not d!3796) (not setNonEmpty!545) (not mapNonEmpty!288) (not d!3712) (not d!3718) (not b!35340) (not setNonEmpty!565) (not b_next!467) (not b!35342) (not d!3758) (not d!3784) (not setNonEmpty!546) (not setNonEmpty!558) (not d!3766) (not d!3716) b_and!503 (not d!3742) (not d!3694) (not setNonEmpty!564) (not mapNonEmpty!289) (not d!3748) (not d!3700) (not b!35259) (not d!3738) (not d!3794) (not d!3752) (not setNonEmpty!556) (not b!35333) (not b!35296) (not b!35239) (not d!3740) (not b_next!471) (not b!35335) (not b!35344) (not d!3688) (not setNonEmpty!549) (not b!35338) (not d!3772) b_and!501 (not b!35258) (not setNonEmpty!571) (not d!3768) (not setNonEmpty!547) (not d!3722) (not d!3744) (not b!35241) (not b_next!469) (not d!3706) (not setNonEmpty!567) (not setNonEmpty!552) (not setNonEmpty!555) (not d!3720) (not b!35343) (not d!3686) (not b!35284) b_and!505 (not d!3756) (not d!3724) (not b!35217) (not d!3732) (not b!35238) (not d!3804) (not b_next!465) (not b!35264) (not d!3690) (not b!35252) (not d!3792) (not setNonEmpty!568) (not d!3780) (not b!35339) (not setNonEmpty!570) (not b!35218) (not d!3788) (not setNonEmpty!553) (not b!35271) (not d!3806) (not d!3728) (not b!35240) (not b!35225) (not d!3698) (not d!3710) (not b!35302) (not b!35285) (not d!3790) (not d!3750) (not b!35345) (not d!3776) (not setNonEmpty!550) (not setNonEmpty!560) (not b!35336) (not d!3754) (not b!35301) (not b!35297) (not b!35341) (not d!3734) (not b!35332) (not setNonEmpty!561) (not d!3704) (not setNonEmpty!559) (not d!3774) (not d!3746) (not d!3764) (not setNonEmpty!548) (not d!3760) (not setNonEmpty!569) (not b!35337) (not setNonEmpty!562) (not d!3802) (not d!3730) (not d!3736) (not d!3800) (not d!3714) (not d!3786) (not b!35298) (not setNonEmpty!554) (not d!3778) (not bs!4941) (not b!35253))
(check-sat b_and!499 (not b_next!467) b_and!503 (not b_next!471) b_and!501 (not b_next!469) b_and!505 (not b_next!465))
