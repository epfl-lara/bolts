; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1546 () Bool)

(assert start!1546)

(declare-fun b!33460 () Bool)

(declare-fun b_free!289 () Bool)

(declare-fun b_next!289 () Bool)

(assert (=> b!33460 (= b_free!289 (not b_next!289))))

(declare-fun tp!23175 () Bool)

(declare-fun b_and!289 () Bool)

(assert (=> b!33460 (= tp!23175 b_and!289)))

(declare-fun b!33457 () Bool)

(declare-fun b_free!291 () Bool)

(declare-fun b_next!291 () Bool)

(assert (=> b!33457 (= b_free!291 (not b_next!291))))

(declare-fun tp!23188 () Bool)

(declare-fun b_and!291 () Bool)

(assert (=> b!33457 (= tp!23188 b_and!291)))

(declare-fun b!33468 () Bool)

(declare-fun b_free!293 () Bool)

(declare-fun b_next!293 () Bool)

(assert (=> b!33468 (= b_free!293 (not b_next!293))))

(declare-fun tp!23187 () Bool)

(declare-fun b_and!293 () Bool)

(assert (=> b!33468 (= tp!23187 b_and!293)))

(declare-fun b!33462 () Bool)

(declare-fun b_free!295 () Bool)

(declare-fun b_next!295 () Bool)

(assert (=> b!33462 (= b_free!295 (not b_next!295))))

(declare-fun tp!23177 () Bool)

(declare-fun b_and!295 () Bool)

(assert (=> b!33462 (= tp!23177 b_and!295)))

(declare-fun b_free!297 () Bool)

(declare-fun b_next!297 () Bool)

(assert (=> b!33462 (= b_free!297 (not b_next!297))))

(declare-fun tp!23191 () Bool)

(declare-fun b_and!297 () Bool)

(assert (=> b!33462 (= tp!23191 b_and!297)))

(declare-fun b!33467 () Bool)

(declare-fun b_free!299 () Bool)

(declare-fun b_next!299 () Bool)

(assert (=> b!33467 (= b_free!299 (not b_next!299))))

(declare-fun tp!23193 () Bool)

(declare-fun b_and!299 () Bool)

(assert (=> b!33467 (= tp!23193 b_and!299)))

(declare-fun b!33450 () Bool)

(declare-fun res!27219 () Bool)

(declare-fun e!15195 () Bool)

(assert (=> b!33450 (=> res!27219 e!15195)))

(declare-datatypes ((C!1360 0))(
  ( (C!1361 (val!171 Int)) )
))
(declare-datatypes ((Regex!143 0))(
  ( (ElementMatch!143 (c!15290 C!1360)) (Concat!252 (regOne!798 Regex!143) (regTwo!798 Regex!143)) (EmptyExpr!143) (Star!143 (reg!472 Regex!143)) (EmptyLang!143) (Union!143 (regOne!799 Regex!143) (regTwo!799 Regex!143)) )
))
(declare-datatypes ((List!270 0))(
  ( (Nil!268) (Cons!268 (h!5664 Regex!143) (t!14862 List!270)) )
))
(declare-datatypes ((Context!50 0))(
  ( (Context!51 (exprs!525 List!270)) )
))
(declare-datatypes ((tuple3!46 0))(
  ( (tuple3!47 (_1!106 Regex!143) (_2!106 Context!50) (_3!23 C!1360)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!166 0))(
  ( (tuple2!167 (_1!107 tuple3!46) (_2!107 (InoxSet Context!50))) )
))
(declare-datatypes ((List!271 0))(
  ( (Nil!269) (Cons!269 (h!5665 tuple2!166) (t!14863 List!271)) )
))
(declare-datatypes ((tuple2!168 0))(
  ( (tuple2!169 (_1!108 Context!50) (_2!108 C!1360)) )
))
(declare-datatypes ((tuple2!170 0))(
  ( (tuple2!171 (_1!109 tuple2!168) (_2!109 (InoxSet Context!50))) )
))
(declare-datatypes ((List!272 0))(
  ( (Nil!270) (Cons!270 (h!5666 tuple2!170) (t!14864 List!272)) )
))
(declare-datatypes ((array!148 0))(
  ( (array!149 (arr!96 (Array (_ BitVec 32) (_ BitVec 64))) (size!329 (_ BitVec 32))) )
))
(declare-datatypes ((array!150 0))(
  ( (array!151 (arr!97 (Array (_ BitVec 32) List!272)) (size!330 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!86 0))(
  ( (LongMapFixedSize!87 (defaultEntry!376 Int) (mask!695 (_ BitVec 32)) (extraKeys!288 (_ BitVec 32)) (zeroValue!298 List!272) (minValue!298 List!272) (_size!222 (_ BitVec 32)) (_keys!331 array!148) (_values!320 array!150) (_vacant!103 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!169 0))(
  ( (Cell!170 (v!12048 LongMapFixedSize!86)) )
))
(declare-datatypes ((MutLongMap!43 0))(
  ( (LongMap!43 (underlying!285 Cell!169)) (MutLongMapExt!42 (__x!541 Int)) )
))
(declare-datatypes ((Cell!171 0))(
  ( (Cell!172 (v!12049 MutLongMap!43)) )
))
(declare-datatypes ((List!273 0))(
  ( (Nil!271) (Cons!271 (h!5667 (_ BitVec 16)) (t!14865 List!273)) )
))
(declare-datatypes ((TokenValue!109 0))(
  ( (FloatLiteralValue!218 (text!1208 List!273)) (TokenValueExt!108 (__x!542 Int)) (Broken!545 (value!6074 List!273)) (Object!110) (End!109) (Def!109) (Underscore!109) (Match!109) (Else!109) (Error!109) (Case!109) (If!109) (Extends!109) (Abstract!109) (Class!109) (Val!109) (DelimiterValue!218 (del!169 List!273)) (KeywordValue!115 (value!6075 List!273)) (CommentValue!218 (value!6076 List!273)) (WhitespaceValue!218 (value!6077 List!273)) (IndentationValue!109 (value!6078 List!273)) (String!688) (Int32!109) (Broken!546 (value!6079 List!273)) (Boolean!110) (Unit!122) (OperatorValue!112 (op!169 List!273)) (IdentifierValue!218 (value!6080 List!273)) (IdentifierValue!219 (value!6081 List!273)) (WhitespaceValue!219 (value!6082 List!273)) (True!218) (False!218) (Broken!547 (value!6083 List!273)) (Broken!548 (value!6084 List!273)) (True!219) (RightBrace!109) (RightBracket!109) (Colon!109) (Null!109) (Comma!109) (LeftBracket!109) (False!219) (LeftBrace!109) (ImaginaryLiteralValue!109 (text!1209 List!273)) (StringLiteralValue!327 (value!6085 List!273)) (EOFValue!109 (value!6086 List!273)) (IdentValue!109 (value!6087 List!273)) (DelimiterValue!219 (value!6088 List!273)) (DedentValue!109 (value!6089 List!273)) (NewLineValue!109 (value!6090 List!273)) (IntegerValue!327 (value!6091 (_ BitVec 32)) (text!1210 List!273)) (IntegerValue!328 (value!6092 Int) (text!1211 List!273)) (Times!109) (Or!109) (Equal!109) (Minus!109) (Broken!549 (value!6093 List!273)) (And!109) (Div!109) (LessEqual!109) (Mod!109) (Concat!253) (Not!109) (Plus!109) (SpaceValue!109 (value!6094 List!273)) (IntegerValue!329 (value!6095 Int) (text!1212 List!273)) (StringLiteralValue!328 (text!1213 List!273)) (FloatLiteralValue!219 (text!1214 List!273)) (BytesLiteralValue!109 (value!6096 List!273)) (CommentValue!219 (value!6097 List!273)) (StringLiteralValue!329 (value!6098 List!273)) (ErrorTokenValue!109 (msg!170 List!273)) )
))
(declare-datatypes ((String!689 0))(
  ( (String!690 (value!6099 String)) )
))
(declare-datatypes ((List!274 0))(
  ( (Nil!272) (Cons!272 (h!5668 C!1360) (t!14866 List!274)) )
))
(declare-datatypes ((IArray!85 0))(
  ( (IArray!86 (innerList!100 List!274)) )
))
(declare-datatypes ((Conc!42 0))(
  ( (Node!42 (left!371 Conc!42) (right!701 Conc!42) (csize!314 Int) (cheight!253 Int)) (Leaf!178 (xs!2621 IArray!85) (csize!315 Int)) (Empty!42) )
))
(declare-datatypes ((BalanceConc!84 0))(
  ( (BalanceConc!85 (c!15291 Conc!42)) )
))
(declare-datatypes ((TokenValueInjection!42 0))(
  ( (TokenValueInjection!43 (toValue!598 Int) (toChars!457 Int)) )
))
(declare-datatypes ((Rule!38 0))(
  ( (Rule!39 (regex!119 Regex!143) (tag!297 String!689) (isSeparator!119 Bool) (transformation!119 TokenValueInjection!42)) )
))
(declare-datatypes ((Token!24 0))(
  ( (Token!25 (value!6100 TokenValue!109) (rule!605 Rule!38) (size!331 Int) (originalCharacters!183 List!274)) )
))
(declare-datatypes ((List!275 0))(
  ( (Nil!273) (Cons!273 (h!5669 Token!24) (t!14867 List!275)) )
))
(declare-datatypes ((IArray!87 0))(
  ( (IArray!88 (innerList!101 List!275)) )
))
(declare-datatypes ((Conc!43 0))(
  ( (Node!43 (left!372 Conc!43) (right!702 Conc!43) (csize!316 Int) (cheight!254 Int)) (Leaf!179 (xs!2622 IArray!87) (csize!317 Int)) (Empty!43) )
))
(declare-datatypes ((BalanceConc!86 0))(
  ( (BalanceConc!87 (c!15292 Conc!43)) )
))
(declare-datatypes ((tuple2!172 0))(
  ( (tuple2!173 (_1!110 BalanceConc!86) (_2!110 BalanceConc!84)) )
))
(declare-datatypes ((Hashable!43 0))(
  ( (HashableExt!42 (__x!543 Int)) )
))
(declare-datatypes ((MutableMap!43 0))(
  ( (MutableMapExt!42 (__x!544 Int)) (HashMap!43 (underlying!286 Cell!171) (hashF!1903 Hashable!43) (_size!223 (_ BitVec 32)) (defaultValue!189 Int)) )
))
(declare-datatypes ((CacheUp!40 0))(
  ( (CacheUp!41 (cache!522 MutableMap!43)) )
))
(declare-datatypes ((Hashable!44 0))(
  ( (HashableExt!43 (__x!545 Int)) )
))
(declare-datatypes ((array!152 0))(
  ( (array!153 (arr!98 (Array (_ BitVec 32) List!271)) (size!332 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!88 0))(
  ( (LongMapFixedSize!89 (defaultEntry!377 Int) (mask!696 (_ BitVec 32)) (extraKeys!289 (_ BitVec 32)) (zeroValue!299 List!271) (minValue!299 List!271) (_size!224 (_ BitVec 32)) (_keys!332 array!148) (_values!321 array!152) (_vacant!104 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!173 0))(
  ( (Cell!174 (v!12050 LongMapFixedSize!88)) )
))
(declare-datatypes ((MutLongMap!44 0))(
  ( (LongMap!44 (underlying!287 Cell!173)) (MutLongMapExt!43 (__x!546 Int)) )
))
(declare-datatypes ((Cell!175 0))(
  ( (Cell!176 (v!12051 MutLongMap!44)) )
))
(declare-datatypes ((MutableMap!44 0))(
  ( (MutableMapExt!43 (__x!547 Int)) (HashMap!44 (underlying!288 Cell!175) (hashF!1904 Hashable!44) (_size!225 (_ BitVec 32)) (defaultValue!190 Int)) )
))
(declare-datatypes ((CacheDown!42 0))(
  ( (CacheDown!43 (cache!523 MutableMap!44)) )
))
(declare-datatypes ((tuple3!48 0))(
  ( (tuple3!49 (_1!111 tuple2!172) (_2!111 CacheUp!40) (_3!24 CacheDown!42)) )
))
(declare-fun lt!1910 () tuple3!48)

(declare-fun lt!1909 () tuple2!172)

(declare-fun list!111 (BalanceConc!84) List!274)

(assert (=> b!33450 (= res!27219 (not (= (list!111 (_2!110 (_1!111 lt!1910))) (list!111 (_2!110 lt!1909)))))))

(declare-fun b!33451 () Bool)

(declare-fun e!15211 () Bool)

(declare-fun e!15199 () Bool)

(assert (=> b!33451 (= e!15211 e!15199)))

(declare-fun b!33452 () Bool)

(declare-fun e!15213 () Bool)

(assert (=> b!33452 (= e!15213 e!15195)))

(declare-fun res!27217 () Bool)

(assert (=> b!33452 (=> res!27217 e!15195)))

(declare-fun list!112 (BalanceConc!86) List!275)

(assert (=> b!33452 (= res!27217 (not (= (list!112 (_1!110 (_1!111 lt!1910))) (list!112 (_1!110 lt!1909)))))))

(declare-datatypes ((List!276 0))(
  ( (Nil!274) (Cons!274 (h!5670 Rule!38) (t!14868 List!276)) )
))
(declare-fun rules!1369 () List!276)

(declare-fun input!768 () BalanceConc!84)

(declare-datatypes ((LexerInterface!20 0))(
  ( (LexerInterfaceExt!17 (__x!548 Int)) (Lexer!18) )
))
(declare-fun thiss!12222 () LexerInterface!20)

(declare-fun lex!5 (LexerInterface!20 List!276 BalanceConc!84) tuple2!172)

(assert (=> b!33452 (= lt!1909 (lex!5 thiss!12222 rules!1369 input!768))))

(declare-fun cacheUp!472 () CacheUp!40)

(declare-fun cacheDown!485 () CacheDown!42)

(declare-fun lexTailRecV2MemOnlyDeriv!4 (LexerInterface!20 List!276 BalanceConc!84 BalanceConc!84 BalanceConc!84 BalanceConc!86 CacheUp!40 CacheDown!42) tuple3!48)

(assert (=> b!33452 (= lt!1910 (lexTailRecV2MemOnlyDeriv!4 thiss!12222 rules!1369 input!768 (BalanceConc!85 Empty!42) input!768 (BalanceConc!87 Empty!43) cacheUp!472 cacheDown!485))))

(declare-fun mapIsEmpty!175 () Bool)

(declare-fun mapRes!175 () Bool)

(assert (=> mapIsEmpty!175 mapRes!175))

(declare-fun b!33453 () Bool)

(declare-fun e!15194 () Bool)

(declare-fun lt!1911 () MutLongMap!43)

(get-info :version)

(assert (=> b!33453 (= e!15194 (and e!15211 ((_ is LongMap!43) lt!1911)))))

(assert (=> b!33453 (= lt!1911 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))

(declare-fun b!33454 () Bool)

(declare-fun res!27212 () Bool)

(assert (=> b!33454 (=> (not res!27212) (not e!15213))))

(declare-fun rulesInvariant!13 (LexerInterface!20 List!276) Bool)

(assert (=> b!33454 (= res!27212 (rulesInvariant!13 thiss!12222 rules!1369))))

(declare-fun b!33455 () Bool)

(declare-fun res!27218 () Bool)

(assert (=> b!33455 (=> (not res!27218) (not e!15213))))

(declare-fun isEmpty!76 (List!276) Bool)

(assert (=> b!33455 (= res!27218 (not (isEmpty!76 rules!1369)))))

(declare-fun b!33456 () Bool)

(declare-fun e!15201 () Bool)

(declare-fun e!15214 () Bool)

(assert (=> b!33456 (= e!15201 e!15214)))

(declare-fun e!15204 () Bool)

(declare-fun tp!23179 () Bool)

(declare-fun tp!23186 () Bool)

(declare-fun array_inv!49 (array!148) Bool)

(declare-fun array_inv!50 (array!152) Bool)

(assert (=> b!33457 (= e!15214 (and tp!23188 tp!23186 tp!23179 (array_inv!49 (_keys!332 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) (array_inv!50 (_values!321 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) e!15204))))

(declare-fun b!33458 () Bool)

(declare-fun res!27213 () Bool)

(assert (=> b!33458 (=> (not res!27213) (not e!15213))))

(declare-fun valid!54 (CacheUp!40) Bool)

(assert (=> b!33458 (= res!27213 (valid!54 cacheUp!472))))

(declare-fun e!15206 () Bool)

(declare-fun e!15208 () Bool)

(declare-fun b!33459 () Bool)

(declare-fun tp!23176 () Bool)

(declare-fun inv!569 (String!689) Bool)

(declare-fun inv!571 (TokenValueInjection!42) Bool)

(assert (=> b!33459 (= e!15208 (and tp!23176 (inv!569 (tag!297 (h!5670 rules!1369))) (inv!571 (transformation!119 (h!5670 rules!1369))) e!15206))))

(declare-fun tp!23189 () Bool)

(declare-fun tp!23185 () Bool)

(declare-fun e!15209 () Bool)

(declare-fun e!15197 () Bool)

(declare-fun array_inv!51 (array!150) Bool)

(assert (=> b!33460 (= e!15209 (and tp!23175 tp!23189 tp!23185 (array_inv!49 (_keys!331 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) (array_inv!51 (_values!320 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) e!15197))))

(declare-fun mapIsEmpty!176 () Bool)

(declare-fun mapRes!176 () Bool)

(assert (=> mapIsEmpty!176 mapRes!176))

(declare-fun b!33461 () Bool)

(declare-fun e!15207 () Bool)

(declare-fun tp!23178 () Bool)

(assert (=> b!33461 (= e!15207 (and e!15208 tp!23178))))

(assert (=> b!33462 (= e!15206 (and tp!23177 tp!23191))))

(declare-fun b!33463 () Bool)

(declare-fun e!15198 () Bool)

(declare-fun e!15196 () Bool)

(assert (=> b!33463 (= e!15198 e!15196)))

(declare-fun b!33464 () Bool)

(declare-fun e!15203 () Bool)

(declare-fun e!15202 () Bool)

(assert (=> b!33464 (= e!15203 e!15202)))

(declare-fun b!33465 () Bool)

(declare-fun e!15193 () Bool)

(assert (=> b!33465 (= e!15193 e!15201)))

(declare-fun b!33466 () Bool)

(declare-fun res!27214 () Bool)

(assert (=> b!33466 (=> (not res!27214) (not e!15213))))

(declare-fun valid!55 (CacheDown!42) Bool)

(assert (=> b!33466 (= res!27214 (valid!55 cacheDown!485))))

(declare-fun mapNonEmpty!175 () Bool)

(declare-fun tp!23181 () Bool)

(declare-fun tp!23192 () Bool)

(assert (=> mapNonEmpty!175 (= mapRes!175 (and tp!23181 tp!23192))))

(declare-fun mapRest!175 () (Array (_ BitVec 32) List!272))

(declare-fun mapKey!176 () (_ BitVec 32))

(declare-fun mapValue!175 () List!272)

(assert (=> mapNonEmpty!175 (= (arr!97 (_values!320 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) (store mapRest!175 mapKey!176 mapValue!175))))

(declare-fun mapNonEmpty!176 () Bool)

(declare-fun tp!23180 () Bool)

(declare-fun tp!23182 () Bool)

(assert (=> mapNonEmpty!176 (= mapRes!176 (and tp!23180 tp!23182))))

(declare-fun mapKey!175 () (_ BitVec 32))

(declare-fun mapValue!176 () List!271)

(declare-fun mapRest!176 () (Array (_ BitVec 32) List!271))

(assert (=> mapNonEmpty!176 (= (arr!98 (_values!321 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) (store mapRest!176 mapKey!175 mapValue!176))))

(declare-fun e!15215 () Bool)

(assert (=> b!33467 (= e!15202 (and e!15215 tp!23193))))

(assert (=> b!33468 (= e!15196 (and e!15194 tp!23187))))

(declare-fun b!33469 () Bool)

(declare-fun lt!1908 () MutLongMap!44)

(assert (=> b!33469 (= e!15215 (and e!15193 ((_ is LongMap!44) lt!1908)))))

(assert (=> b!33469 (= lt!1908 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))

(declare-fun b!33470 () Bool)

(declare-fun tp!23190 () Bool)

(assert (=> b!33470 (= e!15197 (and tp!23190 mapRes!175))))

(declare-fun condMapEmpty!175 () Bool)

(declare-fun mapDefault!175 () List!272)

(assert (=> b!33470 (= condMapEmpty!175 (= (arr!97 (_values!320 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) ((as const (Array (_ BitVec 32) List!272)) mapDefault!175)))))

(declare-fun b!33471 () Bool)

(declare-fun tp!23183 () Bool)

(assert (=> b!33471 (= e!15204 (and tp!23183 mapRes!176))))

(declare-fun condMapEmpty!176 () Bool)

(declare-fun mapDefault!176 () List!271)

(assert (=> b!33471 (= condMapEmpty!176 (= (arr!98 (_values!321 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) ((as const (Array (_ BitVec 32) List!271)) mapDefault!176)))))

(declare-fun b!33472 () Bool)

(assert (=> b!33472 (= e!15195 (not (valid!55 (_3!24 lt!1910))))))

(declare-fun res!27216 () Bool)

(assert (=> start!1546 (=> (not res!27216) (not e!15213))))

(assert (=> start!1546 (= res!27216 ((_ is Lexer!18) thiss!12222))))

(assert (=> start!1546 e!15213))

(declare-fun e!15210 () Bool)

(declare-fun inv!572 (BalanceConc!84) Bool)

(assert (=> start!1546 (and (inv!572 input!768) e!15210)))

(declare-fun inv!573 (CacheUp!40) Bool)

(assert (=> start!1546 (and (inv!573 cacheUp!472) e!15198)))

(assert (=> start!1546 true))

(declare-fun inv!574 (CacheDown!42) Bool)

(assert (=> start!1546 (and (inv!574 cacheDown!485) e!15203)))

(assert (=> start!1546 e!15207))

(declare-fun b!33473 () Bool)

(assert (=> b!33473 (= e!15199 e!15209)))

(declare-fun b!33474 () Bool)

(declare-fun tp!23184 () Bool)

(declare-fun inv!575 (Conc!42) Bool)

(assert (=> b!33474 (= e!15210 (and (inv!575 (c!15291 input!768)) tp!23184))))

(declare-fun b!33475 () Bool)

(declare-fun res!27215 () Bool)

(assert (=> b!33475 (=> res!27215 e!15195)))

(assert (=> b!33475 (= res!27215 (not (valid!54 (_2!111 lt!1910))))))

(assert (= (and start!1546 res!27216) b!33455))

(assert (= (and b!33455 res!27218) b!33454))

(assert (= (and b!33454 res!27212) b!33458))

(assert (= (and b!33458 res!27213) b!33466))

(assert (= (and b!33466 res!27214) b!33452))

(assert (= (and b!33452 (not res!27217)) b!33450))

(assert (= (and b!33450 (not res!27219)) b!33475))

(assert (= (and b!33475 (not res!27215)) b!33472))

(assert (= start!1546 b!33474))

(assert (= (and b!33470 condMapEmpty!175) mapIsEmpty!175))

(assert (= (and b!33470 (not condMapEmpty!175)) mapNonEmpty!175))

(assert (= b!33460 b!33470))

(assert (= b!33473 b!33460))

(assert (= b!33451 b!33473))

(assert (= (and b!33453 ((_ is LongMap!43) (v!12049 (underlying!286 (cache!522 cacheUp!472))))) b!33451))

(assert (= b!33468 b!33453))

(assert (= (and b!33463 ((_ is HashMap!43) (cache!522 cacheUp!472))) b!33468))

(assert (= start!1546 b!33463))

(assert (= (and b!33471 condMapEmpty!176) mapIsEmpty!176))

(assert (= (and b!33471 (not condMapEmpty!176)) mapNonEmpty!176))

(assert (= b!33457 b!33471))

(assert (= b!33456 b!33457))

(assert (= b!33465 b!33456))

(assert (= (and b!33469 ((_ is LongMap!44) (v!12051 (underlying!288 (cache!523 cacheDown!485))))) b!33465))

(assert (= b!33467 b!33469))

(assert (= (and b!33464 ((_ is HashMap!44) (cache!523 cacheDown!485))) b!33467))

(assert (= start!1546 b!33464))

(assert (= b!33459 b!33462))

(assert (= b!33461 b!33459))

(assert (= (and start!1546 ((_ is Cons!274) rules!1369)) b!33461))

(declare-fun m!9311 () Bool)

(assert (=> b!33457 m!9311))

(declare-fun m!9313 () Bool)

(assert (=> b!33457 m!9313))

(declare-fun m!9315 () Bool)

(assert (=> b!33454 m!9315))

(declare-fun m!9317 () Bool)

(assert (=> b!33460 m!9317))

(declare-fun m!9319 () Bool)

(assert (=> b!33460 m!9319))

(declare-fun m!9321 () Bool)

(assert (=> b!33459 m!9321))

(declare-fun m!9323 () Bool)

(assert (=> b!33459 m!9323))

(declare-fun m!9325 () Bool)

(assert (=> b!33474 m!9325))

(declare-fun m!9327 () Bool)

(assert (=> start!1546 m!9327))

(declare-fun m!9329 () Bool)

(assert (=> start!1546 m!9329))

(declare-fun m!9331 () Bool)

(assert (=> start!1546 m!9331))

(declare-fun m!9333 () Bool)

(assert (=> mapNonEmpty!176 m!9333))

(declare-fun m!9335 () Bool)

(assert (=> b!33466 m!9335))

(declare-fun m!9337 () Bool)

(assert (=> b!33472 m!9337))

(declare-fun m!9339 () Bool)

(assert (=> b!33458 m!9339))

(declare-fun m!9341 () Bool)

(assert (=> b!33455 m!9341))

(declare-fun m!9343 () Bool)

(assert (=> b!33450 m!9343))

(declare-fun m!9345 () Bool)

(assert (=> b!33450 m!9345))

(declare-fun m!9347 () Bool)

(assert (=> b!33475 m!9347))

(declare-fun m!9349 () Bool)

(assert (=> mapNonEmpty!175 m!9349))

(declare-fun m!9351 () Bool)

(assert (=> b!33452 m!9351))

(declare-fun m!9353 () Bool)

(assert (=> b!33452 m!9353))

(declare-fun m!9355 () Bool)

(assert (=> b!33452 m!9355))

(declare-fun m!9357 () Bool)

(assert (=> b!33452 m!9357))

(check-sat (not b!33472) b_and!291 (not mapNonEmpty!176) b_and!293 (not b_next!289) b_and!289 (not start!1546) (not b!33460) (not b_next!295) (not b!33466) (not b!33470) (not b!33461) (not b!33450) (not b!33455) (not b!33457) b_and!295 (not b!33454) b_and!299 (not b_next!299) (not b!33452) b_and!297 (not mapNonEmpty!175) (not b_next!293) (not b!33459) (not b_next!291) (not b!33475) (not b!33471) (not b!33474) (not b!33458) (not b_next!297))
(check-sat (not b_next!295) b_and!291 b_and!293 (not b_next!289) (not b_next!299) b_and!289 b_and!297 (not b_next!297) b_and!295 b_and!299 (not b_next!293) (not b_next!291))
(get-model)

(declare-fun d!3356 () Bool)

(declare-fun list!113 (Conc!43) List!275)

(assert (=> d!3356 (= (list!112 (_1!110 (_1!111 lt!1910))) (list!113 (c!15292 (_1!110 (_1!111 lt!1910)))))))

(declare-fun bs!4486 () Bool)

(assert (= bs!4486 d!3356))

(declare-fun m!9359 () Bool)

(assert (=> bs!4486 m!9359))

(assert (=> b!33452 d!3356))

(declare-fun d!3358 () Bool)

(assert (=> d!3358 (= (list!112 (_1!110 lt!1909)) (list!113 (c!15292 (_1!110 lt!1909))))))

(declare-fun bs!4487 () Bool)

(assert (= bs!4487 d!3358))

(declare-fun m!9361 () Bool)

(assert (=> bs!4487 m!9361))

(assert (=> b!33452 d!3358))

(declare-fun d!3360 () Bool)

(declare-fun e!15224 () Bool)

(assert (=> d!3360 e!15224))

(declare-fun res!27226 () Bool)

(assert (=> d!3360 (=> (not res!27226) (not e!15224))))

(declare-fun e!15223 () Bool)

(assert (=> d!3360 (= res!27226 e!15223)))

(declare-fun c!15296 () Bool)

(declare-fun lt!1914 () tuple2!172)

(declare-fun size!333 (BalanceConc!86) Int)

(assert (=> d!3360 (= c!15296 (> (size!333 (_1!110 lt!1914)) 0))))

(declare-fun lexTailRecV2!1 (LexerInterface!20 List!276 BalanceConc!84 BalanceConc!84 BalanceConc!84 BalanceConc!86) tuple2!172)

(assert (=> d!3360 (= lt!1914 (lexTailRecV2!1 thiss!12222 rules!1369 input!768 (BalanceConc!85 Empty!42) input!768 (BalanceConc!87 Empty!43)))))

(assert (=> d!3360 (= (lex!5 thiss!12222 rules!1369 input!768) lt!1914)))

(declare-fun b!33486 () Bool)

(declare-datatypes ((tuple2!174 0))(
  ( (tuple2!175 (_1!112 List!275) (_2!112 List!274)) )
))
(declare-fun lexList!4 (LexerInterface!20 List!276 List!274) tuple2!174)

(assert (=> b!33486 (= e!15224 (= (list!111 (_2!110 lt!1914)) (_2!112 (lexList!4 thiss!12222 rules!1369 (list!111 input!768)))))))

(declare-fun b!33487 () Bool)

(declare-fun res!27228 () Bool)

(assert (=> b!33487 (=> (not res!27228) (not e!15224))))

(assert (=> b!33487 (= res!27228 (= (list!112 (_1!110 lt!1914)) (_1!112 (lexList!4 thiss!12222 rules!1369 (list!111 input!768)))))))

(declare-fun b!33488 () Bool)

(declare-fun e!15222 () Bool)

(assert (=> b!33488 (= e!15223 e!15222)))

(declare-fun res!27227 () Bool)

(declare-fun size!334 (BalanceConc!84) Int)

(assert (=> b!33488 (= res!27227 (< (size!334 (_2!110 lt!1914)) (size!334 input!768)))))

(assert (=> b!33488 (=> (not res!27227) (not e!15222))))

(declare-fun b!33489 () Bool)

(declare-fun isEmpty!77 (BalanceConc!86) Bool)

(assert (=> b!33489 (= e!15222 (not (isEmpty!77 (_1!110 lt!1914))))))

(declare-fun b!33490 () Bool)

(assert (=> b!33490 (= e!15223 (= (_2!110 lt!1914) input!768))))

(assert (= (and d!3360 c!15296) b!33488))

(assert (= (and d!3360 (not c!15296)) b!33490))

(assert (= (and b!33488 res!27227) b!33489))

(assert (= (and d!3360 res!27226) b!33487))

(assert (= (and b!33487 res!27228) b!33486))

(declare-fun m!9363 () Bool)

(assert (=> d!3360 m!9363))

(declare-fun m!9365 () Bool)

(assert (=> d!3360 m!9365))

(declare-fun m!9367 () Bool)

(assert (=> b!33488 m!9367))

(declare-fun m!9369 () Bool)

(assert (=> b!33488 m!9369))

(declare-fun m!9371 () Bool)

(assert (=> b!33486 m!9371))

(declare-fun m!9373 () Bool)

(assert (=> b!33486 m!9373))

(assert (=> b!33486 m!9373))

(declare-fun m!9375 () Bool)

(assert (=> b!33486 m!9375))

(declare-fun m!9377 () Bool)

(assert (=> b!33489 m!9377))

(declare-fun m!9379 () Bool)

(assert (=> b!33487 m!9379))

(assert (=> b!33487 m!9373))

(assert (=> b!33487 m!9373))

(assert (=> b!33487 m!9375))

(assert (=> b!33452 d!3360))

(declare-fun b!33519 () Bool)

(declare-fun e!15244 () tuple3!48)

(declare-datatypes ((tuple2!176 0))(
  ( (tuple2!177 (_1!113 Token!24) (_2!113 BalanceConc!84)) )
))
(declare-datatypes ((Option!40 0))(
  ( (None!39) (Some!39 (v!12052 tuple2!176)) )
))
(declare-datatypes ((tuple3!50 0))(
  ( (tuple3!51 (_1!114 Option!40) (_2!114 CacheUp!40) (_3!25 CacheDown!42)) )
))
(declare-fun lt!2044 () tuple3!50)

(assert (=> b!33519 (= e!15244 (tuple3!49 (tuple2!173 (BalanceConc!87 Empty!43) input!768) (_2!114 lt!2044) (_3!25 lt!2044)))))

(declare-fun lt!2084 () Option!40)

(declare-fun b!33520 () Bool)

(declare-fun maxPrefixZipperSequenceV2!1 (LexerInterface!20 List!276 BalanceConc!84 BalanceConc!84) Option!40)

(assert (=> b!33520 (= lt!2084 (maxPrefixZipperSequenceV2!1 thiss!12222 (t!14868 rules!1369) input!768 input!768))))

(declare-fun lt!2039 () Option!40)

(declare-fun call!2631 () Option!40)

(assert (=> b!33520 (= lt!2039 call!2631)))

(declare-fun e!15242 () Option!40)

(assert (=> b!33520 (= e!15242 (ite (and ((_ is None!39) lt!2039) ((_ is None!39) lt!2084)) None!39 (ite ((_ is None!39) lt!2084) lt!2039 (ite ((_ is None!39) lt!2039) lt!2084 (ite (>= (size!331 (_1!113 (v!12052 lt!2039))) (size!331 (_1!113 (v!12052 lt!2084)))) lt!2039 lt!2084)))))))

(declare-fun b!33521 () Bool)

(declare-fun lt!2067 () tuple3!50)

(declare-fun call!2632 () tuple3!50)

(assert (=> b!33521 (= lt!2067 call!2632)))

(declare-fun e!15240 () tuple3!50)

(assert (=> b!33521 (= e!15240 (tuple3!51 (_1!114 lt!2067) (_2!114 lt!2067) (_3!25 lt!2067)))))

(declare-fun b!33522 () Bool)

(declare-fun lt!2078 () tuple3!48)

(assert (=> b!33522 (= e!15244 (tuple3!49 (_1!111 lt!2078) (_2!111 lt!2078) (_3!24 lt!2078)))))

(declare-fun lt!2071 () tuple2!172)

(declare-fun lexRec!6 (LexerInterface!20 List!276 BalanceConc!84) tuple2!172)

(assert (=> b!33522 (= lt!2071 (lexRec!6 thiss!12222 rules!1369 (_2!113 (v!12052 (_1!114 lt!2044)))))))

(declare-fun lt!2061 () tuple3!50)

(declare-fun maxPrefixZipperSequenceV2MemOnlyDeriv!1 (LexerInterface!20 List!276 BalanceConc!84 BalanceConc!84 CacheUp!40 CacheDown!42) tuple3!50)

(assert (=> b!33522 (= lt!2061 (maxPrefixZipperSequenceV2MemOnlyDeriv!1 thiss!12222 rules!1369 input!768 input!768 (_2!114 lt!2044) (_3!25 lt!2044)))))

(declare-fun lt!2045 () List!274)

(assert (=> b!33522 (= lt!2045 (list!111 input!768))))

(declare-fun lt!2091 () List!274)

(assert (=> b!33522 (= lt!2091 (list!111 input!768))))

(declare-datatypes ((Unit!123 0))(
  ( (Unit!124) )
))
(declare-fun lt!2086 () Unit!123)

(declare-fun lemmaIsPrefixRefl!4 (List!274 List!274) Unit!123)

(assert (=> b!33522 (= lt!2086 (lemmaIsPrefixRefl!4 lt!2045 lt!2091))))

(declare-fun isPrefix!4 (List!274 List!274) Bool)

(assert (=> b!33522 (isPrefix!4 lt!2045 lt!2091)))

(declare-fun lt!2058 () Unit!123)

(assert (=> b!33522 (= lt!2058 lt!2086)))

(declare-fun c!15314 () Bool)

(assert (=> b!33522 (= c!15314 (and ((_ is Cons!274) rules!1369) ((_ is Nil!274) (t!14868 rules!1369))))))

(assert (=> b!33522 (= (maxPrefixZipperSequenceV2MemOnlyDeriv!1 thiss!12222 rules!1369 input!768 input!768 (_2!114 lt!2044) (_3!25 lt!2044)) e!15240)))

(declare-fun lt!2081 () Unit!123)

(declare-fun Unit!125 () Unit!123)

(assert (=> b!33522 (= lt!2081 Unit!125)))

(declare-fun lt!2092 () List!274)

(assert (=> b!33522 (= lt!2092 (list!111 input!768))))

(declare-fun lt!2048 () List!274)

(assert (=> b!33522 (= lt!2048 (list!111 input!768))))

(declare-fun lt!2051 () Unit!123)

(assert (=> b!33522 (= lt!2051 (lemmaIsPrefixRefl!4 lt!2092 lt!2048))))

(assert (=> b!33522 (isPrefix!4 lt!2092 lt!2048)))

(declare-fun lt!2054 () Unit!123)

(assert (=> b!33522 (= lt!2054 lt!2051)))

(declare-fun c!15311 () Bool)

(assert (=> b!33522 (= c!15311 (and ((_ is Cons!274) rules!1369) ((_ is Nil!274) (t!14868 rules!1369))))))

(assert (=> b!33522 (= (maxPrefixZipperSequenceV2!1 thiss!12222 rules!1369 input!768 input!768) e!15242)))

(declare-fun lt!2057 () Unit!123)

(declare-fun Unit!126 () Unit!123)

(assert (=> b!33522 (= lt!2057 Unit!126)))

(declare-fun lt!2049 () List!274)

(assert (=> b!33522 (= lt!2049 (list!111 input!768))))

(declare-fun lt!2047 () List!274)

(assert (=> b!33522 (= lt!2047 (list!111 input!768))))

(declare-fun lt!2089 () Unit!123)

(assert (=> b!33522 (= lt!2089 (lemmaIsPrefixRefl!4 lt!2049 lt!2047))))

(assert (=> b!33522 (isPrefix!4 lt!2049 lt!2047)))

(declare-fun lt!2041 () Unit!123)

(assert (=> b!33522 (= lt!2041 lt!2089)))

(declare-fun c!15312 () Bool)

(assert (=> b!33522 (= c!15312 (and ((_ is Cons!274) rules!1369) ((_ is Nil!274) (t!14868 rules!1369))))))

(declare-fun e!15243 () Option!40)

(declare-fun maxPrefixZipperSequence!4 (LexerInterface!20 List!276 BalanceConc!84) Option!40)

(assert (=> b!33522 (= (maxPrefixZipperSequence!4 thiss!12222 rules!1369 input!768) e!15243)))

(declare-fun lt!2038 () Unit!123)

(declare-fun Unit!127 () Unit!123)

(assert (=> b!33522 (= lt!2038 Unit!127)))

(declare-fun lt!2090 () List!274)

(assert (=> b!33522 (= lt!2090 (list!111 (BalanceConc!85 Empty!42)))))

(declare-fun lt!2083 () List!274)

(declare-fun charsOf!2 (Token!24) BalanceConc!84)

(assert (=> b!33522 (= lt!2083 (list!111 (charsOf!2 (_1!113 (v!12052 (_1!114 lt!2044))))))))

(declare-fun lt!2064 () List!274)

(assert (=> b!33522 (= lt!2064 (list!111 (_2!113 (v!12052 (_1!114 lt!2044)))))))

(declare-fun lt!2056 () Unit!123)

(declare-fun lemmaConcatAssociativity!6 (List!274 List!274 List!274) Unit!123)

(assert (=> b!33522 (= lt!2056 (lemmaConcatAssociativity!6 lt!2090 lt!2083 lt!2064))))

(declare-fun ++!50 (List!274 List!274) List!274)

(assert (=> b!33522 (= (++!50 (++!50 lt!2090 lt!2083) lt!2064) (++!50 lt!2090 (++!50 lt!2083 lt!2064)))))

(declare-fun lt!2063 () Unit!123)

(assert (=> b!33522 (= lt!2063 lt!2056)))

(declare-fun lt!2040 () Option!40)

(assert (=> b!33522 (= lt!2040 (maxPrefixZipperSequence!4 thiss!12222 rules!1369 input!768))))

(declare-fun c!15310 () Bool)

(assert (=> b!33522 (= c!15310 ((_ is Some!39) lt!2040))))

(declare-fun e!15241 () tuple2!172)

(assert (=> b!33522 (= (lexRec!6 thiss!12222 rules!1369 input!768) e!15241)))

(declare-fun lt!2055 () Unit!123)

(declare-fun Unit!128 () Unit!123)

(assert (=> b!33522 (= lt!2055 Unit!128)))

(declare-fun lt!2053 () tuple2!174)

(assert (=> b!33522 (= lt!2053 (lexList!4 thiss!12222 rules!1369 (list!111 input!768)))))

(declare-fun lt!2043 () List!275)

(assert (=> b!33522 (= lt!2043 (list!112 (BalanceConc!87 Empty!43)))))

(declare-fun lt!2094 () List!275)

(assert (=> b!33522 (= lt!2094 (Cons!273 (_1!113 (v!12052 (_1!114 lt!2044))) Nil!273))))

(declare-fun lt!2085 () List!275)

(assert (=> b!33522 (= lt!2085 (list!112 (_1!110 lt!2071)))))

(declare-fun lt!2077 () Unit!123)

(declare-fun lemmaConcatAssociativity!7 (List!275 List!275 List!275) Unit!123)

(assert (=> b!33522 (= lt!2077 (lemmaConcatAssociativity!7 lt!2043 lt!2094 lt!2085))))

(declare-fun ++!51 (List!275 List!275) List!275)

(assert (=> b!33522 (= (++!51 (++!51 lt!2043 lt!2094) lt!2085) (++!51 lt!2043 (++!51 lt!2094 lt!2085)))))

(declare-fun lt!2093 () Unit!123)

(assert (=> b!33522 (= lt!2093 lt!2077)))

(declare-fun lt!2073 () List!274)

(assert (=> b!33522 (= lt!2073 (++!50 (list!111 (BalanceConc!85 Empty!42)) (list!111 (charsOf!2 (_1!113 (v!12052 (_1!114 lt!2044)))))))))

(declare-fun lt!2075 () List!275)

(declare-fun append!5 (BalanceConc!86 Token!24) BalanceConc!86)

(assert (=> b!33522 (= lt!2075 (list!112 (append!5 (BalanceConc!87 Empty!43) (_1!113 (v!12052 (_1!114 lt!2044))))))))

(declare-fun lt!2052 () List!274)

(assert (=> b!33522 (= lt!2052 (list!111 (_2!113 (v!12052 (_1!114 lt!2044)))))))

(declare-fun lt!2082 () List!275)

(assert (=> b!33522 (= lt!2082 (list!112 (append!5 (BalanceConc!87 Empty!43) (_1!113 (v!12052 (_1!114 lt!2044))))))))

(declare-fun lt!2066 () Unit!123)

(declare-fun lemmaLexThenLexPrefix!1 (LexerInterface!20 List!276 List!274 List!274 List!275 List!275 List!274) Unit!123)

(assert (=> b!33522 (= lt!2066 (lemmaLexThenLexPrefix!1 thiss!12222 rules!1369 lt!2073 lt!2052 lt!2082 (list!112 (_1!110 lt!2071)) (list!111 (_2!110 lt!2071))))))

(assert (=> b!33522 (= (lexList!4 thiss!12222 rules!1369 lt!2073) (tuple2!175 lt!2082 Nil!272))))

(declare-fun lt!2068 () Unit!123)

(assert (=> b!33522 (= lt!2068 lt!2066)))

(declare-fun lt!2036 () BalanceConc!84)

(declare-fun ++!52 (BalanceConc!84 BalanceConc!84) BalanceConc!84)

(assert (=> b!33522 (= lt!2036 (++!52 (BalanceConc!85 Empty!42) (charsOf!2 (_1!113 (v!12052 (_1!114 lt!2044))))))))

(declare-fun lt!2042 () Option!40)

(assert (=> b!33522 (= lt!2042 (maxPrefixZipperSequence!4 thiss!12222 rules!1369 lt!2036))))

(declare-fun c!15313 () Bool)

(assert (=> b!33522 (= c!15313 ((_ is Some!39) lt!2042))))

(declare-fun e!15239 () tuple2!172)

(assert (=> b!33522 (= (lexRec!6 thiss!12222 rules!1369 (++!52 (BalanceConc!85 Empty!42) (charsOf!2 (_1!113 (v!12052 (_1!114 lt!2044)))))) e!15239)))

(declare-fun lt!2080 () Unit!123)

(declare-fun Unit!129 () Unit!123)

(assert (=> b!33522 (= lt!2080 Unit!129)))

(declare-fun lt!2050 () BalanceConc!84)

(assert (=> b!33522 (= lt!2050 (++!52 (BalanceConc!85 Empty!42) (charsOf!2 (_1!113 (v!12052 (_1!114 lt!2044))))))))

(declare-fun lt!2074 () List!274)

(assert (=> b!33522 (= lt!2074 (list!111 lt!2050))))

(declare-fun lt!2035 () List!274)

(assert (=> b!33522 (= lt!2035 (list!111 (_2!113 (v!12052 (_1!114 lt!2044)))))))

(declare-fun lt!2070 () Unit!123)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!1 (List!274 List!274) Unit!123)

(assert (=> b!33522 (= lt!2070 (lemmaConcatTwoListThenFSndIsSuffix!1 lt!2074 lt!2035))))

(declare-fun isSuffix!1 (List!274 List!274) Bool)

(assert (=> b!33522 (isSuffix!1 lt!2035 (++!50 lt!2074 lt!2035))))

(declare-fun lt!2087 () Unit!123)

(assert (=> b!33522 (= lt!2087 lt!2070)))

(assert (=> b!33522 (= lt!2078 (lexTailRecV2MemOnlyDeriv!4 thiss!12222 rules!1369 input!768 lt!2050 (_2!113 (v!12052 (_1!114 lt!2044))) (append!5 (BalanceConc!87 Empty!43) (_1!113 (v!12052 (_1!114 lt!2044)))) (_2!114 lt!2061) (_3!25 lt!2061)))))

(declare-fun b!33523 () Bool)

(declare-fun lt!2072 () tuple2!172)

(assert (=> b!33523 (= lt!2072 (lexRec!6 thiss!12222 rules!1369 (_2!113 (v!12052 lt!2040))))))

(declare-fun prepend!10 (BalanceConc!86 Token!24) BalanceConc!86)

(assert (=> b!33523 (= e!15241 (tuple2!173 (prepend!10 (_1!110 lt!2072) (_1!113 (v!12052 lt!2040))) (_2!110 lt!2072)))))

(declare-fun bm!2626 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!1 (LexerInterface!20 Rule!38 BalanceConc!84 BalanceConc!84) Option!40)

(assert (=> bm!2626 (= call!2631 (maxPrefixOneRuleZipperSequenceV2!1 thiss!12222 (h!5670 rules!1369) input!768 input!768))))

(declare-fun bm!2627 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!1 (LexerInterface!20 Rule!38 BalanceConc!84 BalanceConc!84 CacheUp!40 CacheDown!42) tuple3!50)

(assert (=> bm!2627 (= call!2632 (maxPrefixOneRuleZipperSequenceV2MemOnlyDeriv!1 thiss!12222 (h!5670 rules!1369) input!768 input!768 (_2!114 lt!2044) (_3!25 lt!2044)))))

(declare-fun b!33525 () Bool)

(declare-fun e!15245 () Bool)

(declare-fun lt!2088 () tuple3!48)

(assert (=> b!33525 (= e!15245 (valid!55 (_3!24 lt!2088)))))

(declare-fun lt!2046 () Option!40)

(declare-fun b!33526 () Bool)

(assert (=> b!33526 (= lt!2046 (maxPrefixZipperSequence!4 thiss!12222 (t!14868 rules!1369) input!768))))

(declare-fun lt!2076 () Option!40)

(declare-fun call!2633 () Option!40)

(assert (=> b!33526 (= lt!2076 call!2633)))

(assert (=> b!33526 (= e!15243 (ite (and ((_ is None!39) lt!2076) ((_ is None!39) lt!2046)) None!39 (ite ((_ is None!39) lt!2046) lt!2076 (ite ((_ is None!39) lt!2076) lt!2046 (ite (>= (size!331 (_1!113 (v!12052 lt!2076))) (size!331 (_1!113 (v!12052 lt!2046)))) lt!2076 lt!2046)))))))

(declare-fun b!33527 () Bool)

(assert (=> b!33527 (= e!15239 (tuple2!173 (BalanceConc!87 Empty!43) lt!2036))))

(declare-fun b!33528 () Bool)

(declare-fun res!27234 () Bool)

(assert (=> b!33528 (=> (not res!27234) (not e!15245))))

(assert (=> b!33528 (= res!27234 (valid!54 (_2!111 lt!2088)))))

(declare-fun lt!2060 () tuple2!172)

(declare-fun b!33529 () Bool)

(assert (=> b!33529 (= lt!2060 (lexRec!6 thiss!12222 rules!1369 (_2!113 (v!12052 lt!2042))))))

(assert (=> b!33529 (= e!15239 (tuple2!173 (prepend!10 (_1!110 lt!2060) (_1!113 (v!12052 lt!2042))) (_2!110 lt!2060)))))

(declare-fun b!33530 () Bool)

(assert (=> b!33530 (= e!15242 call!2631)))

(declare-fun bm!2628 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!4 (LexerInterface!20 Rule!38 BalanceConc!84) Option!40)

(assert (=> bm!2628 (= call!2633 (maxPrefixOneRuleZipperSequence!4 thiss!12222 (h!5670 rules!1369) input!768))))

(declare-fun b!33531 () Bool)

(assert (=> b!33531 (= e!15243 call!2633)))

(declare-fun b!33532 () Bool)

(assert (=> b!33532 (= e!15241 (tuple2!173 (BalanceConc!87 Empty!43) input!768))))

(declare-fun d!3362 () Bool)

(assert (=> d!3362 e!15245))

(declare-fun res!27233 () Bool)

(assert (=> d!3362 (=> (not res!27233) (not e!15245))))

(assert (=> d!3362 (= res!27233 (= (_1!111 lt!2088) (lexTailRecV2!1 thiss!12222 rules!1369 input!768 (BalanceConc!85 Empty!42) input!768 (BalanceConc!87 Empty!43))))))

(assert (=> d!3362 (= lt!2088 e!15244)))

(declare-fun c!15309 () Bool)

(assert (=> d!3362 (= c!15309 ((_ is Some!39) (_1!114 lt!2044)))))

(assert (=> d!3362 (= lt!2044 (maxPrefixZipperSequenceV2MemOnlyDeriv!1 thiss!12222 rules!1369 input!768 input!768 cacheUp!472 cacheDown!485))))

(declare-fun lt!2079 () Unit!123)

(declare-fun lt!2069 () Unit!123)

(assert (=> d!3362 (= lt!2079 lt!2069)))

(declare-fun lt!2065 () List!274)

(declare-fun lt!2062 () List!274)

(assert (=> d!3362 (isSuffix!1 lt!2065 (++!50 lt!2062 lt!2065))))

(assert (=> d!3362 (= lt!2069 (lemmaConcatTwoListThenFSndIsSuffix!1 lt!2062 lt!2065))))

(assert (=> d!3362 (= lt!2065 (list!111 input!768))))

(assert (=> d!3362 (= lt!2062 (list!111 (BalanceConc!85 Empty!42)))))

(assert (=> d!3362 (= (lexTailRecV2MemOnlyDeriv!4 thiss!12222 rules!1369 input!768 (BalanceConc!85 Empty!42) input!768 (BalanceConc!87 Empty!43) cacheUp!472 cacheDown!485) lt!2088)))

(declare-fun lt!2059 () tuple3!50)

(declare-fun lt!2037 () tuple3!50)

(declare-fun b!33524 () Bool)

(assert (=> b!33524 (= lt!2037 (maxPrefixZipperSequenceV2MemOnlyDeriv!1 thiss!12222 (t!14868 rules!1369) input!768 input!768 (_2!114 lt!2059) (_3!25 lt!2059)))))

(assert (=> b!33524 (= lt!2059 call!2632)))

(assert (=> b!33524 (= e!15240 (tuple3!51 (ite (and ((_ is None!39) (_1!114 lt!2059)) ((_ is None!39) (_1!114 lt!2037))) None!39 (ite ((_ is None!39) (_1!114 lt!2037)) (_1!114 lt!2059) (ite ((_ is None!39) (_1!114 lt!2059)) (_1!114 lt!2037) (ite (>= (size!331 (_1!113 (v!12052 (_1!114 lt!2059)))) (size!331 (_1!113 (v!12052 (_1!114 lt!2037))))) (_1!114 lt!2059) (_1!114 lt!2037))))) (_2!114 lt!2037) (_3!25 lt!2037)))))

(assert (= (and d!3362 c!15309) b!33522))

(assert (= (and d!3362 (not c!15309)) b!33519))

(assert (= (and b!33522 c!15314) b!33521))

(assert (= (and b!33522 (not c!15314)) b!33524))

(assert (= (or b!33521 b!33524) bm!2627))

(assert (= (and b!33522 c!15311) b!33530))

(assert (= (and b!33522 (not c!15311)) b!33520))

(assert (= (or b!33530 b!33520) bm!2626))

(assert (= (and b!33522 c!15312) b!33531))

(assert (= (and b!33522 (not c!15312)) b!33526))

(assert (= (or b!33531 b!33526) bm!2628))

(assert (= (and b!33522 c!15310) b!33523))

(assert (= (and b!33522 (not c!15310)) b!33532))

(assert (= (and b!33522 c!15313) b!33529))

(assert (= (and b!33522 (not c!15313)) b!33527))

(assert (= (and d!3362 res!27233) b!33528))

(assert (= (and b!33528 res!27234) b!33525))

(declare-fun m!9381 () Bool)

(assert (=> b!33528 m!9381))

(declare-fun m!9383 () Bool)

(assert (=> b!33523 m!9383))

(declare-fun m!9385 () Bool)

(assert (=> b!33523 m!9385))

(declare-fun m!9387 () Bool)

(assert (=> d!3362 m!9387))

(declare-fun m!9389 () Bool)

(assert (=> d!3362 m!9389))

(assert (=> d!3362 m!9387))

(declare-fun m!9391 () Bool)

(assert (=> d!3362 m!9391))

(declare-fun m!9393 () Bool)

(assert (=> d!3362 m!9393))

(declare-fun m!9395 () Bool)

(assert (=> d!3362 m!9395))

(assert (=> d!3362 m!9373))

(assert (=> d!3362 m!9365))

(declare-fun m!9397 () Bool)

(assert (=> b!33524 m!9397))

(declare-fun m!9399 () Bool)

(assert (=> b!33520 m!9399))

(declare-fun m!9401 () Bool)

(assert (=> b!33529 m!9401))

(declare-fun m!9403 () Bool)

(assert (=> b!33529 m!9403))

(declare-fun m!9405 () Bool)

(assert (=> b!33526 m!9405))

(declare-fun m!9407 () Bool)

(assert (=> b!33525 m!9407))

(declare-fun m!9409 () Bool)

(assert (=> bm!2628 m!9409))

(declare-fun m!9411 () Bool)

(assert (=> bm!2626 m!9411))

(declare-fun m!9413 () Bool)

(assert (=> bm!2627 m!9413))

(declare-fun m!9415 () Bool)

(assert (=> b!33522 m!9415))

(declare-fun m!9417 () Bool)

(assert (=> b!33522 m!9417))

(declare-fun m!9419 () Bool)

(assert (=> b!33522 m!9419))

(declare-fun m!9421 () Bool)

(assert (=> b!33522 m!9421))

(declare-fun m!9423 () Bool)

(assert (=> b!33522 m!9423))

(declare-fun m!9425 () Bool)

(assert (=> b!33522 m!9425))

(declare-fun m!9427 () Bool)

(assert (=> b!33522 m!9427))

(declare-fun m!9429 () Bool)

(assert (=> b!33522 m!9429))

(declare-fun m!9431 () Bool)

(assert (=> b!33522 m!9431))

(declare-fun m!9433 () Bool)

(assert (=> b!33522 m!9433))

(declare-fun m!9435 () Bool)

(assert (=> b!33522 m!9435))

(assert (=> b!33522 m!9427))

(declare-fun m!9437 () Bool)

(assert (=> b!33522 m!9437))

(declare-fun m!9439 () Bool)

(assert (=> b!33522 m!9439))

(declare-fun m!9441 () Bool)

(assert (=> b!33522 m!9441))

(declare-fun m!9443 () Bool)

(assert (=> b!33522 m!9443))

(declare-fun m!9445 () Bool)

(assert (=> b!33522 m!9445))

(assert (=> b!33522 m!9435))

(declare-fun m!9447 () Bool)

(assert (=> b!33522 m!9447))

(declare-fun m!9449 () Bool)

(assert (=> b!33522 m!9449))

(declare-fun m!9451 () Bool)

(assert (=> b!33522 m!9451))

(declare-fun m!9453 () Bool)

(assert (=> b!33522 m!9453))

(assert (=> b!33522 m!9373))

(assert (=> b!33522 m!9423))

(declare-fun m!9455 () Bool)

(assert (=> b!33522 m!9455))

(declare-fun m!9457 () Bool)

(assert (=> b!33522 m!9457))

(assert (=> b!33522 m!9415))

(declare-fun m!9459 () Bool)

(assert (=> b!33522 m!9459))

(declare-fun m!9461 () Bool)

(assert (=> b!33522 m!9461))

(assert (=> b!33522 m!9435))

(declare-fun m!9463 () Bool)

(assert (=> b!33522 m!9463))

(assert (=> b!33522 m!9437))

(declare-fun m!9465 () Bool)

(assert (=> b!33522 m!9465))

(assert (=> b!33522 m!9373))

(assert (=> b!33522 m!9375))

(assert (=> b!33522 m!9433))

(assert (=> b!33522 m!9457))

(declare-fun m!9467 () Bool)

(assert (=> b!33522 m!9467))

(declare-fun m!9469 () Bool)

(assert (=> b!33522 m!9469))

(assert (=> b!33522 m!9447))

(declare-fun m!9471 () Bool)

(assert (=> b!33522 m!9471))

(declare-fun m!9473 () Bool)

(assert (=> b!33522 m!9473))

(assert (=> b!33522 m!9393))

(assert (=> b!33522 m!9463))

(declare-fun m!9475 () Bool)

(assert (=> b!33522 m!9475))

(declare-fun m!9477 () Bool)

(assert (=> b!33522 m!9477))

(declare-fun m!9479 () Bool)

(assert (=> b!33522 m!9479))

(declare-fun m!9481 () Bool)

(assert (=> b!33522 m!9481))

(declare-fun m!9483 () Bool)

(assert (=> b!33522 m!9483))

(assert (=> b!33522 m!9443))

(declare-fun m!9485 () Bool)

(assert (=> b!33522 m!9485))

(assert (=> b!33522 m!9443))

(declare-fun m!9487 () Bool)

(assert (=> b!33522 m!9487))

(declare-fun m!9489 () Bool)

(assert (=> b!33522 m!9489))

(assert (=> b!33522 m!9431))

(declare-fun m!9491 () Bool)

(assert (=> b!33522 m!9491))

(declare-fun m!9493 () Bool)

(assert (=> b!33522 m!9493))

(assert (=> b!33522 m!9393))

(assert (=> b!33452 d!3362))

(declare-fun d!3364 () Bool)

(declare-fun isBalanced!14 (Conc!42) Bool)

(assert (=> d!3364 (= (inv!572 input!768) (isBalanced!14 (c!15291 input!768)))))

(declare-fun bs!4488 () Bool)

(assert (= bs!4488 d!3364))

(declare-fun m!9495 () Bool)

(assert (=> bs!4488 m!9495))

(assert (=> start!1546 d!3364))

(declare-fun d!3366 () Bool)

(declare-fun res!27237 () Bool)

(declare-fun e!15248 () Bool)

(assert (=> d!3366 (=> (not res!27237) (not e!15248))))

(assert (=> d!3366 (= res!27237 ((_ is HashMap!43) (cache!522 cacheUp!472)))))

(assert (=> d!3366 (= (inv!573 cacheUp!472) e!15248)))

(declare-fun b!33535 () Bool)

(declare-fun validCacheMapUp!6 (MutableMap!43) Bool)

(assert (=> b!33535 (= e!15248 (validCacheMapUp!6 (cache!522 cacheUp!472)))))

(assert (= (and d!3366 res!27237) b!33535))

(declare-fun m!9497 () Bool)

(assert (=> b!33535 m!9497))

(assert (=> start!1546 d!3366))

(declare-fun d!3368 () Bool)

(declare-fun res!27240 () Bool)

(declare-fun e!15251 () Bool)

(assert (=> d!3368 (=> (not res!27240) (not e!15251))))

(assert (=> d!3368 (= res!27240 ((_ is HashMap!44) (cache!523 cacheDown!485)))))

(assert (=> d!3368 (= (inv!574 cacheDown!485) e!15251)))

(declare-fun b!33538 () Bool)

(declare-fun validCacheMapDown!6 (MutableMap!44) Bool)

(assert (=> b!33538 (= e!15251 (validCacheMapDown!6 (cache!523 cacheDown!485)))))

(assert (= (and d!3368 res!27240) b!33538))

(declare-fun m!9499 () Bool)

(assert (=> b!33538 m!9499))

(assert (=> start!1546 d!3368))

(declare-fun d!3370 () Bool)

(assert (=> d!3370 (= (valid!55 (_3!24 lt!1910)) (validCacheMapDown!6 (cache!523 (_3!24 lt!1910))))))

(declare-fun bs!4489 () Bool)

(assert (= bs!4489 d!3370))

(declare-fun m!9501 () Bool)

(assert (=> bs!4489 m!9501))

(assert (=> b!33472 d!3370))

(declare-fun d!3372 () Bool)

(declare-fun res!27243 () Bool)

(declare-fun e!15254 () Bool)

(assert (=> d!3372 (=> (not res!27243) (not e!15254))))

(declare-fun rulesValid!6 (LexerInterface!20 List!276) Bool)

(assert (=> d!3372 (= res!27243 (rulesValid!6 thiss!12222 rules!1369))))

(assert (=> d!3372 (= (rulesInvariant!13 thiss!12222 rules!1369) e!15254)))

(declare-fun b!33541 () Bool)

(declare-datatypes ((List!277 0))(
  ( (Nil!275) (Cons!275 (h!5671 String!689) (t!14869 List!277)) )
))
(declare-fun noDuplicateTag!6 (LexerInterface!20 List!276 List!277) Bool)

(assert (=> b!33541 (= e!15254 (noDuplicateTag!6 thiss!12222 rules!1369 Nil!275))))

(assert (= (and d!3372 res!27243) b!33541))

(declare-fun m!9503 () Bool)

(assert (=> d!3372 m!9503))

(declare-fun m!9505 () Bool)

(assert (=> b!33541 m!9505))

(assert (=> b!33454 d!3372))

(declare-fun d!3374 () Bool)

(assert (=> d!3374 (= (isEmpty!76 rules!1369) ((_ is Nil!274) rules!1369))))

(assert (=> b!33455 d!3374))

(declare-fun d!3376 () Bool)

(declare-fun c!15317 () Bool)

(assert (=> d!3376 (= c!15317 ((_ is Node!42) (c!15291 input!768)))))

(declare-fun e!15259 () Bool)

(assert (=> d!3376 (= (inv!575 (c!15291 input!768)) e!15259)))

(declare-fun b!33548 () Bool)

(declare-fun inv!576 (Conc!42) Bool)

(assert (=> b!33548 (= e!15259 (inv!576 (c!15291 input!768)))))

(declare-fun b!33549 () Bool)

(declare-fun e!15260 () Bool)

(assert (=> b!33549 (= e!15259 e!15260)))

(declare-fun res!27246 () Bool)

(assert (=> b!33549 (= res!27246 (not ((_ is Leaf!178) (c!15291 input!768))))))

(assert (=> b!33549 (=> res!27246 e!15260)))

(declare-fun b!33550 () Bool)

(declare-fun inv!577 (Conc!42) Bool)

(assert (=> b!33550 (= e!15260 (inv!577 (c!15291 input!768)))))

(assert (= (and d!3376 c!15317) b!33548))

(assert (= (and d!3376 (not c!15317)) b!33549))

(assert (= (and b!33549 (not res!27246)) b!33550))

(declare-fun m!9507 () Bool)

(assert (=> b!33548 m!9507))

(declare-fun m!9509 () Bool)

(assert (=> b!33550 m!9509))

(assert (=> b!33474 d!3376))

(declare-fun d!3378 () Bool)

(assert (=> d!3378 (= (valid!55 cacheDown!485) (validCacheMapDown!6 (cache!523 cacheDown!485)))))

(declare-fun bs!4490 () Bool)

(assert (= bs!4490 d!3378))

(assert (=> bs!4490 m!9499))

(assert (=> b!33466 d!3378))

(declare-fun d!3380 () Bool)

(assert (=> d!3380 (= (valid!54 (_2!111 lt!1910)) (validCacheMapUp!6 (cache!522 (_2!111 lt!1910))))))

(declare-fun bs!4491 () Bool)

(assert (= bs!4491 d!3380))

(declare-fun m!9511 () Bool)

(assert (=> bs!4491 m!9511))

(assert (=> b!33475 d!3380))

(declare-fun d!3382 () Bool)

(assert (=> d!3382 (= (array_inv!49 (_keys!332 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) (bvsge (size!329 (_keys!332 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!33457 d!3382))

(declare-fun d!3384 () Bool)

(assert (=> d!3384 (= (array_inv!50 (_values!321 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) (bvsge (size!332 (_values!321 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485))))))) #b00000000000000000000000000000000))))

(assert (=> b!33457 d!3384))

(declare-fun d!3386 () Bool)

(assert (=> d!3386 (= (valid!54 cacheUp!472) (validCacheMapUp!6 (cache!522 cacheUp!472)))))

(declare-fun bs!4492 () Bool)

(assert (= bs!4492 d!3386))

(assert (=> bs!4492 m!9497))

(assert (=> b!33458 d!3386))

(declare-fun d!3388 () Bool)

(assert (=> d!3388 (= (inv!569 (tag!297 (h!5670 rules!1369))) (= (mod (str.len (value!6099 (tag!297 (h!5670 rules!1369)))) 2) 0))))

(assert (=> b!33459 d!3388))

(declare-fun d!3390 () Bool)

(declare-fun res!27249 () Bool)

(declare-fun e!15263 () Bool)

(assert (=> d!3390 (=> (not res!27249) (not e!15263))))

(declare-fun semiInverseModEq!14 (Int Int) Bool)

(assert (=> d!3390 (= res!27249 (semiInverseModEq!14 (toChars!457 (transformation!119 (h!5670 rules!1369))) (toValue!598 (transformation!119 (h!5670 rules!1369)))))))

(assert (=> d!3390 (= (inv!571 (transformation!119 (h!5670 rules!1369))) e!15263)))

(declare-fun b!33553 () Bool)

(declare-fun equivClasses!10 (Int Int) Bool)

(assert (=> b!33553 (= e!15263 (equivClasses!10 (toChars!457 (transformation!119 (h!5670 rules!1369))) (toValue!598 (transformation!119 (h!5670 rules!1369)))))))

(assert (= (and d!3390 res!27249) b!33553))

(declare-fun m!9513 () Bool)

(assert (=> d!3390 m!9513))

(declare-fun m!9515 () Bool)

(assert (=> b!33553 m!9515))

(assert (=> b!33459 d!3390))

(declare-fun d!3392 () Bool)

(declare-fun list!114 (Conc!42) List!274)

(assert (=> d!3392 (= (list!111 (_2!110 (_1!111 lt!1910))) (list!114 (c!15291 (_2!110 (_1!111 lt!1910)))))))

(declare-fun bs!4493 () Bool)

(assert (= bs!4493 d!3392))

(declare-fun m!9517 () Bool)

(assert (=> bs!4493 m!9517))

(assert (=> b!33450 d!3392))

(declare-fun d!3394 () Bool)

(assert (=> d!3394 (= (list!111 (_2!110 lt!1909)) (list!114 (c!15291 (_2!110 lt!1909))))))

(declare-fun bs!4494 () Bool)

(assert (= bs!4494 d!3394))

(declare-fun m!9519 () Bool)

(assert (=> bs!4494 m!9519))

(assert (=> b!33450 d!3394))

(declare-fun d!3396 () Bool)

(assert (=> d!3396 (= (array_inv!49 (_keys!331 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) (bvsge (size!329 (_keys!331 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!33460 d!3396))

(declare-fun d!3398 () Bool)

(assert (=> d!3398 (= (array_inv!51 (_values!320 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) (bvsge (size!330 (_values!320 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472))))))) #b00000000000000000000000000000000))))

(assert (=> b!33460 d!3398))

(declare-fun b!33562 () Bool)

(declare-fun e!15268 () Bool)

(declare-fun tp!23202 () Bool)

(declare-fun tp!23200 () Bool)

(assert (=> b!33562 (= e!15268 (and (inv!575 (left!371 (c!15291 input!768))) tp!23200 (inv!575 (right!701 (c!15291 input!768))) tp!23202))))

(declare-fun b!33564 () Bool)

(declare-fun e!15269 () Bool)

(declare-fun tp!23201 () Bool)

(assert (=> b!33564 (= e!15269 tp!23201)))

(declare-fun b!33563 () Bool)

(declare-fun inv!578 (IArray!85) Bool)

(assert (=> b!33563 (= e!15268 (and (inv!578 (xs!2621 (c!15291 input!768))) e!15269))))

(assert (=> b!33474 (= tp!23184 (and (inv!575 (c!15291 input!768)) e!15268))))

(assert (= (and b!33474 ((_ is Node!42) (c!15291 input!768))) b!33562))

(assert (= b!33563 b!33564))

(assert (= (and b!33474 ((_ is Leaf!178) (c!15291 input!768))) b!33563))

(declare-fun m!9521 () Bool)

(assert (=> b!33562 m!9521))

(declare-fun m!9523 () Bool)

(assert (=> b!33562 m!9523))

(declare-fun m!9525 () Bool)

(assert (=> b!33563 m!9525))

(assert (=> b!33474 m!9325))

(declare-fun b!33575 () Bool)

(declare-fun b_free!301 () Bool)

(declare-fun b_next!301 () Bool)

(assert (=> b!33575 (= b_free!301 (not b_next!301))))

(declare-fun tp!23213 () Bool)

(declare-fun b_and!301 () Bool)

(assert (=> b!33575 (= tp!23213 b_and!301)))

(declare-fun b_free!303 () Bool)

(declare-fun b_next!303 () Bool)

(assert (=> b!33575 (= b_free!303 (not b_next!303))))

(declare-fun tp!23214 () Bool)

(declare-fun b_and!303 () Bool)

(assert (=> b!33575 (= tp!23214 b_and!303)))

(declare-fun e!15281 () Bool)

(assert (=> b!33575 (= e!15281 (and tp!23213 tp!23214))))

(declare-fun e!15278 () Bool)

(declare-fun tp!23211 () Bool)

(declare-fun b!33574 () Bool)

(assert (=> b!33574 (= e!15278 (and tp!23211 (inv!569 (tag!297 (h!5670 (t!14868 rules!1369)))) (inv!571 (transformation!119 (h!5670 (t!14868 rules!1369)))) e!15281))))

(declare-fun b!33573 () Bool)

(declare-fun e!15279 () Bool)

(declare-fun tp!23212 () Bool)

(assert (=> b!33573 (= e!15279 (and e!15278 tp!23212))))

(assert (=> b!33461 (= tp!23178 e!15279)))

(assert (= b!33574 b!33575))

(assert (= b!33573 b!33574))

(assert (= (and b!33461 ((_ is Cons!274) (t!14868 rules!1369))) b!33573))

(declare-fun m!9527 () Bool)

(assert (=> b!33574 m!9527))

(declare-fun m!9529 () Bool)

(assert (=> b!33574 m!9529))

(declare-fun e!15290 () Bool)

(assert (=> b!33457 (= tp!23186 e!15290)))

(declare-fun setIsEmpty!320 () Bool)

(declare-fun setRes!320 () Bool)

(assert (=> setIsEmpty!320 setRes!320))

(declare-fun b!33584 () Bool)

(declare-fun e!15288 () Bool)

(declare-fun tp!23227 () Bool)

(assert (=> b!33584 (= e!15288 tp!23227)))

(declare-fun tp!23228 () Bool)

(declare-fun setElem!320 () Context!50)

(declare-fun e!15289 () Bool)

(declare-fun setNonEmpty!320 () Bool)

(declare-fun inv!579 (Context!50) Bool)

(assert (=> setNonEmpty!320 (= setRes!320 (and tp!23228 (inv!579 setElem!320) e!15289))))

(declare-fun setRest!320 () (InoxSet Context!50))

(assert (=> setNonEmpty!320 (= (_2!107 (h!5665 (zeroValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!320 true) setRest!320))))

(declare-fun b!33585 () Bool)

(declare-fun tp!23229 () Bool)

(assert (=> b!33585 (= e!15289 tp!23229)))

(declare-fun tp!23225 () Bool)

(declare-fun b!33586 () Bool)

(declare-fun tp!23226 () Bool)

(declare-fun tp_is_empty!299 () Bool)

(assert (=> b!33586 (= e!15290 (and tp!23226 (inv!579 (_2!106 (_1!107 (h!5665 (zeroValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))))) e!15288 tp_is_empty!299 setRes!320 tp!23225))))

(declare-fun condSetEmpty!320 () Bool)

(assert (=> b!33586 (= condSetEmpty!320 (= (_2!107 (h!5665 (zeroValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))) ((as const (Array Context!50 Bool)) false)))))

(assert (= b!33586 b!33584))

(assert (= (and b!33586 condSetEmpty!320) setIsEmpty!320))

(assert (= (and b!33586 (not condSetEmpty!320)) setNonEmpty!320))

(assert (= setNonEmpty!320 b!33585))

(assert (= (and b!33457 ((_ is Cons!269) (zeroValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))) b!33586))

(declare-fun m!9531 () Bool)

(assert (=> setNonEmpty!320 m!9531))

(declare-fun m!9533 () Bool)

(assert (=> b!33586 m!9533))

(declare-fun e!15293 () Bool)

(assert (=> b!33457 (= tp!23179 e!15293)))

(declare-fun setIsEmpty!321 () Bool)

(declare-fun setRes!321 () Bool)

(assert (=> setIsEmpty!321 setRes!321))

(declare-fun b!33587 () Bool)

(declare-fun e!15291 () Bool)

(declare-fun tp!23232 () Bool)

(assert (=> b!33587 (= e!15291 tp!23232)))

(declare-fun setElem!321 () Context!50)

(declare-fun setNonEmpty!321 () Bool)

(declare-fun tp!23233 () Bool)

(declare-fun e!15292 () Bool)

(assert (=> setNonEmpty!321 (= setRes!321 (and tp!23233 (inv!579 setElem!321) e!15292))))

(declare-fun setRest!321 () (InoxSet Context!50))

(assert (=> setNonEmpty!321 (= (_2!107 (h!5665 (minValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!321 true) setRest!321))))

(declare-fun b!33588 () Bool)

(declare-fun tp!23234 () Bool)

(assert (=> b!33588 (= e!15292 tp!23234)))

(declare-fun tp!23231 () Bool)

(declare-fun tp!23230 () Bool)

(declare-fun b!33589 () Bool)

(assert (=> b!33589 (= e!15293 (and tp!23231 (inv!579 (_2!106 (_1!107 (h!5665 (minValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))))) e!15291 tp_is_empty!299 setRes!321 tp!23230))))

(declare-fun condSetEmpty!321 () Bool)

(assert (=> b!33589 (= condSetEmpty!321 (= (_2!107 (h!5665 (minValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))) ((as const (Array Context!50 Bool)) false)))))

(assert (= b!33589 b!33587))

(assert (= (and b!33589 condSetEmpty!321) setIsEmpty!321))

(assert (= (and b!33589 (not condSetEmpty!321)) setNonEmpty!321))

(assert (= setNonEmpty!321 b!33588))

(assert (= (and b!33457 ((_ is Cons!269) (minValue!299 (v!12050 (underlying!287 (v!12051 (underlying!288 (cache!523 cacheDown!485)))))))) b!33589))

(declare-fun m!9535 () Bool)

(assert (=> setNonEmpty!321 m!9535))

(declare-fun m!9537 () Bool)

(assert (=> b!33589 m!9537))

(declare-fun b!33598 () Bool)

(declare-fun e!15302 () Bool)

(declare-fun tp!23246 () Bool)

(assert (=> b!33598 (= e!15302 tp!23246)))

(declare-fun b!33599 () Bool)

(declare-fun e!15300 () Bool)

(declare-fun setRes!324 () Bool)

(declare-fun tp!23244 () Bool)

(assert (=> b!33599 (= e!15300 (and (inv!579 (_1!108 (_1!109 (h!5666 mapDefault!175)))) e!15302 tp_is_empty!299 setRes!324 tp!23244))))

(declare-fun condSetEmpty!324 () Bool)

(assert (=> b!33599 (= condSetEmpty!324 (= (_2!109 (h!5666 mapDefault!175)) ((as const (Array Context!50 Bool)) false)))))

(declare-fun e!15301 () Bool)

(declare-fun setElem!324 () Context!50)

(declare-fun setNonEmpty!324 () Bool)

(declare-fun tp!23245 () Bool)

(assert (=> setNonEmpty!324 (= setRes!324 (and tp!23245 (inv!579 setElem!324) e!15301))))

(declare-fun setRest!324 () (InoxSet Context!50))

(assert (=> setNonEmpty!324 (= (_2!109 (h!5666 mapDefault!175)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!324 true) setRest!324))))

(declare-fun b!33600 () Bool)

(declare-fun tp!23243 () Bool)

(assert (=> b!33600 (= e!15301 tp!23243)))

(declare-fun setIsEmpty!324 () Bool)

(assert (=> setIsEmpty!324 setRes!324))

(assert (=> b!33470 (= tp!23190 e!15300)))

(assert (= b!33599 b!33598))

(assert (= (and b!33599 condSetEmpty!324) setIsEmpty!324))

(assert (= (and b!33599 (not condSetEmpty!324)) setNonEmpty!324))

(assert (= setNonEmpty!324 b!33600))

(assert (= (and b!33470 ((_ is Cons!270) mapDefault!175)) b!33599))

(declare-fun m!9539 () Bool)

(assert (=> b!33599 m!9539))

(declare-fun m!9541 () Bool)

(assert (=> setNonEmpty!324 m!9541))

(declare-fun e!15320 () Bool)

(declare-fun setElem!330 () Context!50)

(declare-fun tp!23266 () Bool)

(declare-fun setRes!330 () Bool)

(declare-fun setNonEmpty!329 () Bool)

(assert (=> setNonEmpty!329 (= setRes!330 (and tp!23266 (inv!579 setElem!330) e!15320))))

(declare-fun mapValue!179 () List!272)

(declare-fun setRest!330 () (InoxSet Context!50))

(assert (=> setNonEmpty!329 (= (_2!109 (h!5666 mapValue!179)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!330 true) setRest!330))))

(declare-fun b!33615 () Bool)

(declare-fun tp!23265 () Bool)

(assert (=> b!33615 (= e!15320 tp!23265)))

(declare-fun mapNonEmpty!179 () Bool)

(declare-fun mapRes!179 () Bool)

(declare-fun tp!23269 () Bool)

(declare-fun e!15317 () Bool)

(assert (=> mapNonEmpty!179 (= mapRes!179 (and tp!23269 e!15317))))

(declare-fun mapRest!179 () (Array (_ BitVec 32) List!272))

(declare-fun mapKey!179 () (_ BitVec 32))

(assert (=> mapNonEmpty!179 (= mapRest!175 (store mapRest!179 mapKey!179 mapValue!179))))

(declare-fun b!33616 () Bool)

(declare-fun e!15316 () Bool)

(declare-fun tp!23268 () Bool)

(assert (=> b!33616 (= e!15316 tp!23268)))

(declare-fun b!33617 () Bool)

(declare-fun e!15315 () Bool)

(declare-fun tp!23273 () Bool)

(assert (=> b!33617 (= e!15315 tp!23273)))

(declare-fun setIsEmpty!329 () Bool)

(assert (=> setIsEmpty!329 setRes!330))

(declare-fun e!15319 () Bool)

(declare-fun setRes!329 () Bool)

(declare-fun mapDefault!179 () List!272)

(declare-fun tp!23267 () Bool)

(declare-fun b!33618 () Bool)

(declare-fun e!15318 () Bool)

(assert (=> b!33618 (= e!15319 (and (inv!579 (_1!108 (_1!109 (h!5666 mapDefault!179)))) e!15318 tp_is_empty!299 setRes!329 tp!23267))))

(declare-fun condSetEmpty!329 () Bool)

(assert (=> b!33618 (= condSetEmpty!329 (= (_2!109 (h!5666 mapDefault!179)) ((as const (Array Context!50 Bool)) false)))))

(declare-fun tp!23271 () Bool)

(declare-fun b!33619 () Bool)

(assert (=> b!33619 (= e!15317 (and (inv!579 (_1!108 (_1!109 (h!5666 mapValue!179)))) e!15315 tp_is_empty!299 setRes!330 tp!23271))))

(declare-fun condSetEmpty!330 () Bool)

(assert (=> b!33619 (= condSetEmpty!330 (= (_2!109 (h!5666 mapValue!179)) ((as const (Array Context!50 Bool)) false)))))

(declare-fun b!33620 () Bool)

(declare-fun tp!23272 () Bool)

(assert (=> b!33620 (= e!15318 tp!23272)))

(declare-fun mapIsEmpty!179 () Bool)

(assert (=> mapIsEmpty!179 mapRes!179))

(declare-fun setIsEmpty!330 () Bool)

(assert (=> setIsEmpty!330 setRes!329))

(declare-fun tp!23270 () Bool)

(declare-fun setElem!329 () Context!50)

(declare-fun setNonEmpty!330 () Bool)

(assert (=> setNonEmpty!330 (= setRes!329 (and tp!23270 (inv!579 setElem!329) e!15316))))

(declare-fun setRest!329 () (InoxSet Context!50))

(assert (=> setNonEmpty!330 (= (_2!109 (h!5666 mapDefault!179)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!329 true) setRest!329))))

(declare-fun condMapEmpty!179 () Bool)

(assert (=> mapNonEmpty!175 (= condMapEmpty!179 (= mapRest!175 ((as const (Array (_ BitVec 32) List!272)) mapDefault!179)))))

(assert (=> mapNonEmpty!175 (= tp!23181 (and e!15319 mapRes!179))))

(assert (= (and mapNonEmpty!175 condMapEmpty!179) mapIsEmpty!179))

(assert (= (and mapNonEmpty!175 (not condMapEmpty!179)) mapNonEmpty!179))

(assert (= b!33619 b!33617))

(assert (= (and b!33619 condSetEmpty!330) setIsEmpty!329))

(assert (= (and b!33619 (not condSetEmpty!330)) setNonEmpty!329))

(assert (= setNonEmpty!329 b!33615))

(assert (= (and mapNonEmpty!179 ((_ is Cons!270) mapValue!179)) b!33619))

(assert (= b!33618 b!33620))

(assert (= (and b!33618 condSetEmpty!329) setIsEmpty!330))

(assert (= (and b!33618 (not condSetEmpty!329)) setNonEmpty!330))

(assert (= setNonEmpty!330 b!33616))

(assert (= (and mapNonEmpty!175 ((_ is Cons!270) mapDefault!179)) b!33618))

(declare-fun m!9543 () Bool)

(assert (=> mapNonEmpty!179 m!9543))

(declare-fun m!9545 () Bool)

(assert (=> b!33619 m!9545))

(declare-fun m!9547 () Bool)

(assert (=> b!33618 m!9547))

(declare-fun m!9549 () Bool)

(assert (=> setNonEmpty!329 m!9549))

(declare-fun m!9551 () Bool)

(assert (=> setNonEmpty!330 m!9551))

(declare-fun b!33621 () Bool)

(declare-fun e!15323 () Bool)

(declare-fun tp!23277 () Bool)

(assert (=> b!33621 (= e!15323 tp!23277)))

(declare-fun b!33622 () Bool)

(declare-fun setRes!331 () Bool)

(declare-fun e!15321 () Bool)

(declare-fun tp!23275 () Bool)

(assert (=> b!33622 (= e!15321 (and (inv!579 (_1!108 (_1!109 (h!5666 mapValue!175)))) e!15323 tp_is_empty!299 setRes!331 tp!23275))))

(declare-fun condSetEmpty!331 () Bool)

(assert (=> b!33622 (= condSetEmpty!331 (= (_2!109 (h!5666 mapValue!175)) ((as const (Array Context!50 Bool)) false)))))

(declare-fun setNonEmpty!331 () Bool)

(declare-fun tp!23276 () Bool)

(declare-fun setElem!331 () Context!50)

(declare-fun e!15322 () Bool)

(assert (=> setNonEmpty!331 (= setRes!331 (and tp!23276 (inv!579 setElem!331) e!15322))))

(declare-fun setRest!331 () (InoxSet Context!50))

(assert (=> setNonEmpty!331 (= (_2!109 (h!5666 mapValue!175)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!331 true) setRest!331))))

(declare-fun b!33623 () Bool)

(declare-fun tp!23274 () Bool)

(assert (=> b!33623 (= e!15322 tp!23274)))

(declare-fun setIsEmpty!331 () Bool)

(assert (=> setIsEmpty!331 setRes!331))

(assert (=> mapNonEmpty!175 (= tp!23192 e!15321)))

(assert (= b!33622 b!33621))

(assert (= (and b!33622 condSetEmpty!331) setIsEmpty!331))

(assert (= (and b!33622 (not condSetEmpty!331)) setNonEmpty!331))

(assert (= setNonEmpty!331 b!33623))

(assert (= (and mapNonEmpty!175 ((_ is Cons!270) mapValue!175)) b!33622))

(declare-fun m!9553 () Bool)

(assert (=> b!33622 m!9553))

(declare-fun m!9555 () Bool)

(assert (=> setNonEmpty!331 m!9555))

(declare-fun e!15326 () Bool)

(assert (=> b!33471 (= tp!23183 e!15326)))

(declare-fun setIsEmpty!332 () Bool)

(declare-fun setRes!332 () Bool)

(assert (=> setIsEmpty!332 setRes!332))

(declare-fun b!33624 () Bool)

(declare-fun e!15324 () Bool)

(declare-fun tp!23280 () Bool)

(assert (=> b!33624 (= e!15324 tp!23280)))

(declare-fun e!15325 () Bool)

(declare-fun tp!23281 () Bool)

(declare-fun setElem!332 () Context!50)

(declare-fun setNonEmpty!332 () Bool)

(assert (=> setNonEmpty!332 (= setRes!332 (and tp!23281 (inv!579 setElem!332) e!15325))))

(declare-fun setRest!332 () (InoxSet Context!50))

(assert (=> setNonEmpty!332 (= (_2!107 (h!5665 mapDefault!176)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!332 true) setRest!332))))

(declare-fun b!33625 () Bool)

(declare-fun tp!23282 () Bool)

(assert (=> b!33625 (= e!15325 tp!23282)))

(declare-fun tp!23278 () Bool)

(declare-fun tp!23279 () Bool)

(declare-fun b!33626 () Bool)

(assert (=> b!33626 (= e!15326 (and tp!23279 (inv!579 (_2!106 (_1!107 (h!5665 mapDefault!176)))) e!15324 tp_is_empty!299 setRes!332 tp!23278))))

(declare-fun condSetEmpty!332 () Bool)

(assert (=> b!33626 (= condSetEmpty!332 (= (_2!107 (h!5665 mapDefault!176)) ((as const (Array Context!50 Bool)) false)))))

(assert (= b!33626 b!33624))

(assert (= (and b!33626 condSetEmpty!332) setIsEmpty!332))

(assert (= (and b!33626 (not condSetEmpty!332)) setNonEmpty!332))

(assert (= setNonEmpty!332 b!33625))

(assert (= (and b!33471 ((_ is Cons!269) mapDefault!176)) b!33626))

(declare-fun m!9557 () Bool)

(assert (=> setNonEmpty!332 m!9557))

(declare-fun m!9559 () Bool)

(assert (=> b!33626 m!9559))

(declare-fun mapNonEmpty!182 () Bool)

(declare-fun mapRes!182 () Bool)

(declare-fun tp!23312 () Bool)

(declare-fun e!15342 () Bool)

(assert (=> mapNonEmpty!182 (= mapRes!182 (and tp!23312 e!15342))))

(declare-fun mapKey!182 () (_ BitVec 32))

(declare-fun mapRest!182 () (Array (_ BitVec 32) List!271))

(declare-fun mapValue!182 () List!271)

(assert (=> mapNonEmpty!182 (= mapRest!176 (store mapRest!182 mapKey!182 mapValue!182))))

(declare-fun b!33641 () Bool)

(declare-fun e!15344 () Bool)

(declare-fun tp!23305 () Bool)

(assert (=> b!33641 (= e!15344 tp!23305)))

(declare-fun b!33642 () Bool)

(declare-fun e!15340 () Bool)

(declare-fun tp!23315 () Bool)

(assert (=> b!33642 (= e!15340 tp!23315)))

(declare-fun b!33643 () Bool)

(declare-fun e!15339 () Bool)

(declare-fun tp!23309 () Bool)

(assert (=> b!33643 (= e!15339 tp!23309)))

(declare-fun b!33644 () Bool)

(declare-fun e!15343 () Bool)

(declare-fun tp!23307 () Bool)

(declare-fun tp!23308 () Bool)

(declare-fun setRes!338 () Bool)

(assert (=> b!33644 (= e!15342 (and tp!23307 (inv!579 (_2!106 (_1!107 (h!5665 mapValue!182)))) e!15343 tp_is_empty!299 setRes!338 tp!23308))))

(declare-fun condSetEmpty!337 () Bool)

(assert (=> b!33644 (= condSetEmpty!337 (= (_2!107 (h!5665 mapValue!182)) ((as const (Array Context!50 Bool)) false)))))

(declare-fun setIsEmpty!337 () Bool)

(declare-fun setRes!337 () Bool)

(assert (=> setIsEmpty!337 setRes!337))

(declare-fun condMapEmpty!182 () Bool)

(declare-fun mapDefault!182 () List!271)

(assert (=> mapNonEmpty!176 (= condMapEmpty!182 (= mapRest!176 ((as const (Array (_ BitVec 32) List!271)) mapDefault!182)))))

(declare-fun e!15341 () Bool)

(assert (=> mapNonEmpty!176 (= tp!23180 (and e!15341 mapRes!182))))

(declare-fun setIsEmpty!338 () Bool)

(assert (=> setIsEmpty!338 setRes!338))

(declare-fun setNonEmpty!337 () Bool)

(declare-fun setElem!337 () Context!50)

(declare-fun tp!23314 () Bool)

(assert (=> setNonEmpty!337 (= setRes!338 (and tp!23314 (inv!579 setElem!337) e!15344))))

(declare-fun setRest!338 () (InoxSet Context!50))

(assert (=> setNonEmpty!337 (= (_2!107 (h!5665 mapValue!182)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!337 true) setRest!338))))

(declare-fun tp!23311 () Bool)

(declare-fun setElem!338 () Context!50)

(declare-fun setNonEmpty!338 () Bool)

(assert (=> setNonEmpty!338 (= setRes!337 (and tp!23311 (inv!579 setElem!338) e!15340))))

(declare-fun setRest!337 () (InoxSet Context!50))

(assert (=> setNonEmpty!338 (= (_2!107 (h!5665 mapDefault!182)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!338 true) setRest!337))))

(declare-fun mapIsEmpty!182 () Bool)

(assert (=> mapIsEmpty!182 mapRes!182))

(declare-fun tp!23306 () Bool)

(declare-fun b!33645 () Bool)

(declare-fun tp!23313 () Bool)

(assert (=> b!33645 (= e!15341 (and tp!23313 (inv!579 (_2!106 (_1!107 (h!5665 mapDefault!182)))) e!15339 tp_is_empty!299 setRes!337 tp!23306))))

(declare-fun condSetEmpty!338 () Bool)

(assert (=> b!33645 (= condSetEmpty!338 (= (_2!107 (h!5665 mapDefault!182)) ((as const (Array Context!50 Bool)) false)))))

(declare-fun b!33646 () Bool)

(declare-fun tp!23310 () Bool)

(assert (=> b!33646 (= e!15343 tp!23310)))

(assert (= (and mapNonEmpty!176 condMapEmpty!182) mapIsEmpty!182))

(assert (= (and mapNonEmpty!176 (not condMapEmpty!182)) mapNonEmpty!182))

(assert (= b!33644 b!33646))

(assert (= (and b!33644 condSetEmpty!337) setIsEmpty!338))

(assert (= (and b!33644 (not condSetEmpty!337)) setNonEmpty!337))

(assert (= setNonEmpty!337 b!33641))

(assert (= (and mapNonEmpty!182 ((_ is Cons!269) mapValue!182)) b!33644))

(assert (= b!33645 b!33643))

(assert (= (and b!33645 condSetEmpty!338) setIsEmpty!337))

(assert (= (and b!33645 (not condSetEmpty!338)) setNonEmpty!338))

(assert (= setNonEmpty!338 b!33642))

(assert (= (and mapNonEmpty!176 ((_ is Cons!269) mapDefault!182)) b!33645))

(declare-fun m!9561 () Bool)

(assert (=> setNonEmpty!337 m!9561))

(declare-fun m!9563 () Bool)

(assert (=> mapNonEmpty!182 m!9563))

(declare-fun m!9565 () Bool)

(assert (=> setNonEmpty!338 m!9565))

(declare-fun m!9567 () Bool)

(assert (=> b!33645 m!9567))

(declare-fun m!9569 () Bool)

(assert (=> b!33644 m!9569))

(declare-fun e!15347 () Bool)

(assert (=> mapNonEmpty!176 (= tp!23182 e!15347)))

(declare-fun setIsEmpty!339 () Bool)

(declare-fun setRes!339 () Bool)

(assert (=> setIsEmpty!339 setRes!339))

(declare-fun b!33647 () Bool)

(declare-fun e!15345 () Bool)

(declare-fun tp!23318 () Bool)

(assert (=> b!33647 (= e!15345 tp!23318)))

(declare-fun tp!23319 () Bool)

(declare-fun e!15346 () Bool)

(declare-fun setNonEmpty!339 () Bool)

(declare-fun setElem!339 () Context!50)

(assert (=> setNonEmpty!339 (= setRes!339 (and tp!23319 (inv!579 setElem!339) e!15346))))

(declare-fun setRest!339 () (InoxSet Context!50))

(assert (=> setNonEmpty!339 (= (_2!107 (h!5665 mapValue!176)) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!339 true) setRest!339))))

(declare-fun b!33648 () Bool)

(declare-fun tp!23320 () Bool)

(assert (=> b!33648 (= e!15346 tp!23320)))

(declare-fun tp!23316 () Bool)

(declare-fun tp!23317 () Bool)

(declare-fun b!33649 () Bool)

(assert (=> b!33649 (= e!15347 (and tp!23317 (inv!579 (_2!106 (_1!107 (h!5665 mapValue!176)))) e!15345 tp_is_empty!299 setRes!339 tp!23316))))

(declare-fun condSetEmpty!339 () Bool)

(assert (=> b!33649 (= condSetEmpty!339 (= (_2!107 (h!5665 mapValue!176)) ((as const (Array Context!50 Bool)) false)))))

(assert (= b!33649 b!33647))

(assert (= (and b!33649 condSetEmpty!339) setIsEmpty!339))

(assert (= (and b!33649 (not condSetEmpty!339)) setNonEmpty!339))

(assert (= setNonEmpty!339 b!33648))

(assert (= (and mapNonEmpty!176 ((_ is Cons!269) mapValue!176)) b!33649))

(declare-fun m!9571 () Bool)

(assert (=> setNonEmpty!339 m!9571))

(declare-fun m!9573 () Bool)

(assert (=> b!33649 m!9573))

(declare-fun b!33662 () Bool)

(declare-fun e!15350 () Bool)

(declare-fun tp!23332 () Bool)

(assert (=> b!33662 (= e!15350 tp!23332)))

(declare-fun b!33660 () Bool)

(assert (=> b!33660 (= e!15350 tp_is_empty!299)))

(declare-fun b!33663 () Bool)

(declare-fun tp!23335 () Bool)

(declare-fun tp!23334 () Bool)

(assert (=> b!33663 (= e!15350 (and tp!23335 tp!23334))))

(declare-fun b!33661 () Bool)

(declare-fun tp!23331 () Bool)

(declare-fun tp!23333 () Bool)

(assert (=> b!33661 (= e!15350 (and tp!23331 tp!23333))))

(assert (=> b!33459 (= tp!23176 e!15350)))

(assert (= (and b!33459 ((_ is ElementMatch!143) (regex!119 (h!5670 rules!1369)))) b!33660))

(assert (= (and b!33459 ((_ is Concat!252) (regex!119 (h!5670 rules!1369)))) b!33661))

(assert (= (and b!33459 ((_ is Star!143) (regex!119 (h!5670 rules!1369)))) b!33662))

(assert (= (and b!33459 ((_ is Union!143) (regex!119 (h!5670 rules!1369)))) b!33663))

(declare-fun b!33664 () Bool)

(declare-fun e!15353 () Bool)

(declare-fun tp!23339 () Bool)

(assert (=> b!33664 (= e!15353 tp!23339)))

(declare-fun setRes!340 () Bool)

(declare-fun e!15351 () Bool)

(declare-fun b!33665 () Bool)

(declare-fun tp!23337 () Bool)

(assert (=> b!33665 (= e!15351 (and (inv!579 (_1!108 (_1!109 (h!5666 (zeroValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))))) e!15353 tp_is_empty!299 setRes!340 tp!23337))))

(declare-fun condSetEmpty!340 () Bool)

(assert (=> b!33665 (= condSetEmpty!340 (= (_2!109 (h!5666 (zeroValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))) ((as const (Array Context!50 Bool)) false)))))

(declare-fun tp!23338 () Bool)

(declare-fun setNonEmpty!340 () Bool)

(declare-fun setElem!340 () Context!50)

(declare-fun e!15352 () Bool)

(assert (=> setNonEmpty!340 (= setRes!340 (and tp!23338 (inv!579 setElem!340) e!15352))))

(declare-fun setRest!340 () (InoxSet Context!50))

(assert (=> setNonEmpty!340 (= (_2!109 (h!5666 (zeroValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!340 true) setRest!340))))

(declare-fun b!33666 () Bool)

(declare-fun tp!23336 () Bool)

(assert (=> b!33666 (= e!15352 tp!23336)))

(declare-fun setIsEmpty!340 () Bool)

(assert (=> setIsEmpty!340 setRes!340))

(assert (=> b!33460 (= tp!23189 e!15351)))

(assert (= b!33665 b!33664))

(assert (= (and b!33665 condSetEmpty!340) setIsEmpty!340))

(assert (= (and b!33665 (not condSetEmpty!340)) setNonEmpty!340))

(assert (= setNonEmpty!340 b!33666))

(assert (= (and b!33460 ((_ is Cons!270) (zeroValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))) b!33665))

(declare-fun m!9575 () Bool)

(assert (=> b!33665 m!9575))

(declare-fun m!9577 () Bool)

(assert (=> setNonEmpty!340 m!9577))

(declare-fun b!33667 () Bool)

(declare-fun e!15356 () Bool)

(declare-fun tp!23343 () Bool)

(assert (=> b!33667 (= e!15356 tp!23343)))

(declare-fun setRes!341 () Bool)

(declare-fun tp!23341 () Bool)

(declare-fun e!15354 () Bool)

(declare-fun b!33668 () Bool)

(assert (=> b!33668 (= e!15354 (and (inv!579 (_1!108 (_1!109 (h!5666 (minValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))))) e!15356 tp_is_empty!299 setRes!341 tp!23341))))

(declare-fun condSetEmpty!341 () Bool)

(assert (=> b!33668 (= condSetEmpty!341 (= (_2!109 (h!5666 (minValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))) ((as const (Array Context!50 Bool)) false)))))

(declare-fun setElem!341 () Context!50)

(declare-fun setNonEmpty!341 () Bool)

(declare-fun tp!23342 () Bool)

(declare-fun e!15355 () Bool)

(assert (=> setNonEmpty!341 (= setRes!341 (and tp!23342 (inv!579 setElem!341) e!15355))))

(declare-fun setRest!341 () (InoxSet Context!50))

(assert (=> setNonEmpty!341 (= (_2!109 (h!5666 (minValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))) ((_ map or) (store ((as const (Array Context!50 Bool)) false) setElem!341 true) setRest!341))))

(declare-fun b!33669 () Bool)

(declare-fun tp!23340 () Bool)

(assert (=> b!33669 (= e!15355 tp!23340)))

(declare-fun setIsEmpty!341 () Bool)

(assert (=> setIsEmpty!341 setRes!341))

(assert (=> b!33460 (= tp!23185 e!15354)))

(assert (= b!33668 b!33667))

(assert (= (and b!33668 condSetEmpty!341) setIsEmpty!341))

(assert (= (and b!33668 (not condSetEmpty!341)) setNonEmpty!341))

(assert (= setNonEmpty!341 b!33669))

(assert (= (and b!33460 ((_ is Cons!270) (minValue!298 (v!12048 (underlying!285 (v!12049 (underlying!286 (cache!522 cacheUp!472)))))))) b!33668))

(declare-fun m!9579 () Bool)

(assert (=> b!33668 m!9579))

(declare-fun m!9581 () Bool)

(assert (=> setNonEmpty!341 m!9581))

(check-sat (not b!33598) (not setNonEmpty!329) (not b!33564) (not d!3370) (not b!33520) (not b!33529) (not d!3394) (not setNonEmpty!321) (not b!33586) (not b!33647) (not b!33623) (not d!3358) (not b_next!295) (not b!33489) (not b!33486) (not d!3386) (not d!3390) b_and!291 (not bm!2627) (not d!3372) (not b!33622) (not b!33487) (not b!33648) (not b!33667) b_and!301 (not setNonEmpty!324) (not b!33525) (not b!33669) (not b!33624) (not b!33618) (not bm!2626) (not b!33526) (not b!33625) (not d!3380) b_and!293 (not setNonEmpty!320) (not b!33548) (not b!33488) (not b!33643) (not setNonEmpty!330) (not b!33617) (not b!33538) (not setNonEmpty!339) (not b!33646) (not b!33541) b_and!295 b_and!299 (not setNonEmpty!340) (not d!3360) (not b_next!289) (not b!33585) (not d!3364) (not b!33589) (not b!33666) (not b!33535) (not b!33550) (not setNonEmpty!341) (not b_next!303) (not b_next!301) (not b!33621) (not b!33668) (not b!33523) (not b!33587) (not b!33553) (not b_next!299) (not b!33562) (not b!33528) (not b!33664) (not b!33588) (not b!33599) (not setNonEmpty!338) b_and!289 (not b!33574) (not setNonEmpty!331) b_and!297 (not bm!2628) (not b!33615) (not b!33600) (not b!33573) (not b!33661) (not b_next!291) (not b_next!293) (not b!33563) (not b!33616) (not b!33620) tp_is_empty!299 (not b!33642) (not setNonEmpty!337) (not b!33522) (not b!33649) (not b!33665) (not b!33584) (not b!33626) (not b!33641) (not d!3392) (not b!33644) (not b!33645) b_and!303 (not d!3362) (not setNonEmpty!332) (not b!33619) (not mapNonEmpty!179) (not b!33524) (not d!3356) (not b!33663) (not b!33474) (not mapNonEmpty!182) (not b_next!297) (not b!33662) (not d!3378))
(check-sat (not b_next!295) b_and!291 b_and!301 b_and!293 (not b_next!289) (not b_next!299) b_and!289 b_and!297 b_and!303 (not b_next!297) b_and!295 b_and!299 (not b_next!303) (not b_next!301) (not b_next!293) (not b_next!291))
