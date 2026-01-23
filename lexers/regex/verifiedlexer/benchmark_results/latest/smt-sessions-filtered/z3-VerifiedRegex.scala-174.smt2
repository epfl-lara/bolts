; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2176 () Bool)

(assert start!2176)

(declare-fun b!38577 () Bool)

(declare-fun b_free!645 () Bool)

(declare-fun b_next!645 () Bool)

(assert (=> b!38577 (= b_free!645 (not b_next!645))))

(declare-fun tp!26815 () Bool)

(declare-fun b_and!679 () Bool)

(assert (=> b!38577 (= tp!26815 b_and!679)))

(declare-fun b!38580 () Bool)

(declare-fun b_free!647 () Bool)

(declare-fun b_next!647 () Bool)

(assert (=> b!38580 (= b_free!647 (not b_next!647))))

(declare-fun tp!26809 () Bool)

(declare-fun b_and!681 () Bool)

(assert (=> b!38580 (= tp!26809 b_and!681)))

(declare-fun b!38574 () Bool)

(declare-fun b_free!649 () Bool)

(declare-fun b_next!649 () Bool)

(assert (=> b!38574 (= b_free!649 (not b_next!649))))

(declare-fun tp!26816 () Bool)

(declare-fun b_and!683 () Bool)

(assert (=> b!38574 (= tp!26816 b_and!683)))

(declare-fun b!38564 () Bool)

(declare-fun b_free!651 () Bool)

(declare-fun b_next!651 () Bool)

(assert (=> b!38564 (= b_free!651 (not b_next!651))))

(declare-fun tp!26825 () Bool)

(declare-fun b_and!685 () Bool)

(assert (=> b!38564 (= tp!26825 b_and!685)))

(declare-fun b!38590 () Bool)

(declare-fun b_free!653 () Bool)

(declare-fun b_next!653 () Bool)

(assert (=> b!38590 (= b_free!653 (not b_next!653))))

(declare-fun tp!26819 () Bool)

(declare-fun b_and!687 () Bool)

(assert (=> b!38590 (= tp!26819 b_and!687)))

(declare-fun b!38583 () Bool)

(declare-fun b_free!655 () Bool)

(declare-fun b_next!655 () Bool)

(assert (=> b!38583 (= b_free!655 (not b_next!655))))

(declare-fun tp!26810 () Bool)

(declare-fun b_and!689 () Bool)

(assert (=> b!38583 (= tp!26810 b_and!689)))

(declare-fun b!38563 () Bool)

(declare-fun e!19264 () Bool)

(declare-datatypes ((List!448 0))(
  ( (Nil!446) (Cons!446 (h!5842 (_ BitVec 16)) (t!15374 List!448)) )
))
(declare-datatypes ((IArray!135 0))(
  ( (IArray!136 (innerList!125 List!448)) )
))
(declare-datatypes ((Conc!67 0))(
  ( (Node!67 (left!445 Conc!67) (right!775 Conc!67) (csize!364 Int) (cheight!278 Int)) (Leaf!242 (xs!2646 IArray!135) (csize!365 Int)) (Empty!67) )
))
(declare-datatypes ((BalanceConc!134 0))(
  ( (BalanceConc!135 (c!15742 Conc!67)) )
))
(declare-fun input!525 () BalanceConc!134)

(declare-fun tp!26822 () Bool)

(declare-fun inv!755 (Conc!67) Bool)

(assert (=> b!38563 (= e!19264 (and (inv!755 (c!15742 input!525)) tp!26822))))

(declare-fun tp!26823 () Bool)

(declare-fun e!19254 () Bool)

(declare-datatypes ((Regex!193 0))(
  ( (ElementMatch!193 (c!15743 (_ BitVec 16))) (Concat!315 (regOne!898 Regex!193) (regTwo!898 Regex!193)) (EmptyExpr!193) (Star!193 (reg!522 Regex!193)) (EmptyLang!193) (Union!193 (regOne!899 Regex!193) (regTwo!899 Regex!193)) )
))
(declare-datatypes ((List!449 0))(
  ( (Nil!447) (Cons!447 (h!5843 Regex!193) (t!15375 List!449)) )
))
(declare-datatypes ((Context!102 0))(
  ( (Context!103 (exprs!551 List!449)) )
))
(declare-datatypes ((tuple3!126 0))(
  ( (tuple3!127 (_1!306 Regex!193) (_2!306 Context!102) (_3!69 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!474 0))(
  ( (tuple2!475 (_1!307 tuple3!126) (_2!307 (InoxSet Context!102))) )
))
(declare-datatypes ((List!450 0))(
  ( (Nil!448) (Cons!448 (h!5844 tuple2!474) (t!15376 List!450)) )
))
(declare-datatypes ((array!454 0))(
  ( (array!455 (arr!234 (Array (_ BitVec 32) List!450)) (size!493 (_ BitVec 32))) )
))
(declare-datatypes ((array!456 0))(
  ( (array!457 (arr!235 (Array (_ BitVec 32) (_ BitVec 64))) (size!494 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!258 0))(
  ( (LongMapFixedSize!259 (defaultEntry!467 Int) (mask!827 (_ BitVec 32)) (extraKeys!375 (_ BitVec 32)) (zeroValue!385 List!450) (minValue!385 List!450) (_size!390 (_ BitVec 32)) (_keys!420 array!456) (_values!407 array!454) (_vacant!189 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!505 0))(
  ( (Cell!506 (v!12231 LongMapFixedSize!258)) )
))
(declare-datatypes ((MutLongMap!129 0))(
  ( (LongMap!129 (underlying!453 Cell!505)) (MutLongMapExt!128 (__x!813 Int)) )
))
(declare-datatypes ((Cell!507 0))(
  ( (Cell!508 (v!12232 MutLongMap!129)) )
))
(declare-datatypes ((Hashable!125 0))(
  ( (HashableExt!124 (__x!814 Int)) )
))
(declare-datatypes ((MutableMap!125 0))(
  ( (MutableMapExt!124 (__x!815 Int)) (HashMap!125 (underlying!454 Cell!507) (hashF!1993 Hashable!125) (_size!391 (_ BitVec 32)) (defaultValue!274 Int)) )
))
(declare-datatypes ((CacheDown!86 0))(
  ( (CacheDown!87 (cache!610 MutableMap!125)) )
))
(declare-fun cacheDown!333 () CacheDown!86)

(declare-fun tp!26817 () Bool)

(declare-fun e!19253 () Bool)

(declare-fun array_inv!146 (array!456) Bool)

(declare-fun array_inv!147 (array!454) Bool)

(assert (=> b!38564 (= e!19253 (and tp!26825 tp!26817 tp!26823 (array_inv!146 (_keys!420 (v!12231 (underlying!453 (v!12232 (underlying!454 (cache!610 cacheDown!333))))))) (array_inv!147 (_values!407 (v!12231 (underlying!453 (v!12232 (underlying!454 (cache!610 cacheDown!333))))))) e!19254))))

(declare-fun mapIsEmpty!463 () Bool)

(declare-fun mapRes!465 () Bool)

(assert (=> mapIsEmpty!463 mapRes!465))

(declare-fun res!28587 () Bool)

(declare-fun e!19259 () Bool)

(assert (=> start!2176 (=> (not res!28587) (not e!19259))))

(declare-datatypes ((TokenValue!122 0))(
  ( (FloatLiteralValue!244 (text!1299 List!448)) (TokenValueExt!121 (__x!816 Int)) (Broken!610 (value!6541 List!448)) (Object!123) (End!122) (Def!122) (Underscore!122) (Match!122) (Else!122) (Error!122) (Case!122) (If!122) (Extends!122) (Abstract!122) (Class!122) (Val!122) (DelimiterValue!244 (del!182 List!448)) (KeywordValue!128 (value!6542 List!448)) (CommentValue!244 (value!6543 List!448)) (WhitespaceValue!244 (value!6544 List!448)) (IndentationValue!122 (value!6545 List!448)) (String!895) (Int32!122) (Broken!611 (value!6546 List!448)) (Boolean!123) (Unit!214) (OperatorValue!125 (op!182 List!448)) (IdentifierValue!244 (value!6547 List!448)) (IdentifierValue!245 (value!6548 List!448)) (WhitespaceValue!245 (value!6549 List!448)) (True!244) (False!244) (Broken!612 (value!6550 List!448)) (Broken!613 (value!6551 List!448)) (True!245) (RightBrace!122) (RightBracket!122) (Colon!122) (Null!122) (Comma!122) (LeftBracket!122) (False!245) (LeftBrace!122) (ImaginaryLiteralValue!122 (text!1300 List!448)) (StringLiteralValue!366 (value!6552 List!448)) (EOFValue!122 (value!6553 List!448)) (IdentValue!122 (value!6554 List!448)) (DelimiterValue!245 (value!6555 List!448)) (DedentValue!122 (value!6556 List!448)) (NewLineValue!122 (value!6557 List!448)) (IntegerValue!366 (value!6558 (_ BitVec 32)) (text!1301 List!448)) (IntegerValue!367 (value!6559 Int) (text!1302 List!448)) (Times!122) (Or!122) (Equal!122) (Minus!122) (Broken!614 (value!6560 List!448)) (And!122) (Div!122) (LessEqual!122) (Mod!122) (Concat!316) (Not!122) (Plus!122) (SpaceValue!122 (value!6561 List!448)) (IntegerValue!368 (value!6562 Int) (text!1303 List!448)) (StringLiteralValue!367 (text!1304 List!448)) (FloatLiteralValue!245 (text!1305 List!448)) (BytesLiteralValue!122 (value!6563 List!448)) (CommentValue!245 (value!6564 List!448)) (StringLiteralValue!368 (value!6565 List!448)) (ErrorTokenValue!122 (msg!183 List!448)) )
))
(declare-datatypes ((String!896 0))(
  ( (String!897 (value!6566 String)) )
))
(declare-datatypes ((TokenValueInjection!68 0))(
  ( (TokenValueInjection!69 (toValue!611 Int) (toChars!470 Int)) )
))
(declare-datatypes ((Rule!64 0))(
  ( (Rule!65 (regex!132 Regex!193) (tag!310 String!896) (isSeparator!132 Bool) (transformation!132 TokenValueInjection!68)) )
))
(declare-datatypes ((List!451 0))(
  ( (Nil!449) (Cons!449 (h!5845 Rule!64) (t!15377 List!451)) )
))
(declare-fun lt!3403 () List!451)

(declare-fun isEmpty!101 (List!451) Bool)

(assert (=> start!2176 (= res!28587 (not (isEmpty!101 lt!3403)))))

(declare-datatypes ((JsonLexer!26 0))(
  ( (JsonLexer!27) )
))
(declare-fun rules!109 (JsonLexer!26) List!451)

(assert (=> start!2176 (= lt!3403 (rules!109 JsonLexer!27))))

(assert (=> start!2176 e!19259))

(declare-fun e!19249 () Bool)

(declare-fun inv!756 (CacheDown!86) Bool)

(assert (=> start!2176 (and (inv!756 cacheDown!333) e!19249)))

(declare-fun inv!757 (BalanceConc!134) Bool)

(assert (=> start!2176 (and (inv!757 input!525) e!19264)))

(declare-datatypes ((tuple3!128 0))(
  ( (tuple3!129 (_1!308 (InoxSet Context!102)) (_2!308 Int) (_3!70 Int)) )
))
(declare-datatypes ((tuple2!476 0))(
  ( (tuple2!477 (_1!309 tuple3!128) (_2!309 Int)) )
))
(declare-datatypes ((List!452 0))(
  ( (Nil!450) (Cons!450 (h!5846 tuple2!476) (t!15378 List!452)) )
))
(declare-datatypes ((array!458 0))(
  ( (array!459 (arr!236 (Array (_ BitVec 32) List!452)) (size!495 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!260 0))(
  ( (LongMapFixedSize!261 (defaultEntry!468 Int) (mask!828 (_ BitVec 32)) (extraKeys!376 (_ BitVec 32)) (zeroValue!386 List!452) (minValue!386 List!452) (_size!392 (_ BitVec 32)) (_keys!421 array!456) (_values!408 array!458) (_vacant!190 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!126 0))(
  ( (HashableExt!125 (__x!817 Int)) )
))
(declare-datatypes ((Cell!509 0))(
  ( (Cell!510 (v!12233 LongMapFixedSize!260)) )
))
(declare-datatypes ((MutLongMap!130 0))(
  ( (LongMap!130 (underlying!455 Cell!509)) (MutLongMapExt!129 (__x!818 Int)) )
))
(declare-datatypes ((Cell!511 0))(
  ( (Cell!512 (v!12234 MutLongMap!130)) )
))
(declare-datatypes ((MutableMap!126 0))(
  ( (MutableMapExt!125 (__x!819 Int)) (HashMap!126 (underlying!456 Cell!511) (hashF!1994 Hashable!126) (_size!393 (_ BitVec 32)) (defaultValue!275 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!34 0))(
  ( (CacheFurthestNullable!35 (cache!611 MutableMap!126) (totalInput!1494 BalanceConc!134)) )
))
(declare-fun cacheFurthestNullable!45 () CacheFurthestNullable!34)

(declare-fun e!19245 () Bool)

(declare-fun inv!758 (CacheFurthestNullable!34) Bool)

(assert (=> start!2176 (and (inv!758 cacheFurthestNullable!45) e!19245)))

(declare-datatypes ((Hashable!127 0))(
  ( (HashableExt!126 (__x!820 Int)) )
))
(declare-datatypes ((tuple2!478 0))(
  ( (tuple2!479 (_1!310 Context!102) (_2!310 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!480 0))(
  ( (tuple2!481 (_1!311 tuple2!478) (_2!311 (InoxSet Context!102))) )
))
(declare-datatypes ((List!453 0))(
  ( (Nil!451) (Cons!451 (h!5847 tuple2!480) (t!15379 List!453)) )
))
(declare-datatypes ((array!460 0))(
  ( (array!461 (arr!237 (Array (_ BitVec 32) List!453)) (size!496 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!262 0))(
  ( (LongMapFixedSize!263 (defaultEntry!469 Int) (mask!829 (_ BitVec 32)) (extraKeys!377 (_ BitVec 32)) (zeroValue!387 List!453) (minValue!387 List!453) (_size!394 (_ BitVec 32)) (_keys!422 array!456) (_values!409 array!460) (_vacant!191 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!513 0))(
  ( (Cell!514 (v!12235 LongMapFixedSize!262)) )
))
(declare-datatypes ((MutLongMap!131 0))(
  ( (LongMap!131 (underlying!457 Cell!513)) (MutLongMapExt!130 (__x!821 Int)) )
))
(declare-datatypes ((Cell!515 0))(
  ( (Cell!516 (v!12236 MutLongMap!131)) )
))
(declare-datatypes ((MutableMap!127 0))(
  ( (MutableMapExt!126 (__x!822 Int)) (HashMap!127 (underlying!458 Cell!515) (hashF!1995 Hashable!127) (_size!395 (_ BitVec 32)) (defaultValue!276 Int)) )
))
(declare-datatypes ((CacheUp!86 0))(
  ( (CacheUp!87 (cache!612 MutableMap!127)) )
))
(declare-fun cacheUp!320 () CacheUp!86)

(declare-fun e!19252 () Bool)

(declare-fun inv!759 (CacheUp!86) Bool)

(assert (=> start!2176 (and (inv!759 cacheUp!320) e!19252)))

(declare-fun b!38565 () Bool)

(declare-fun e!19244 () Bool)

(declare-fun e!19256 () Bool)

(assert (=> b!38565 (= e!19244 e!19256)))

(declare-fun e!19242 () Bool)

(declare-fun b!38566 () Bool)

(declare-fun e!19241 () Bool)

(assert (=> b!38566 (= e!19245 (and e!19241 (inv!757 (totalInput!1494 cacheFurthestNullable!45)) e!19242))))

(declare-fun b!38567 () Bool)

(declare-fun e!19246 () Bool)

(declare-fun tp!26811 () Bool)

(assert (=> b!38567 (= e!19246 (and tp!26811 mapRes!465))))

(declare-fun condMapEmpty!465 () Bool)

(declare-fun mapDefault!463 () List!453)

(assert (=> b!38567 (= condMapEmpty!465 (= (arr!237 (_values!409 (v!12235 (underlying!457 (v!12236 (underlying!458 (cache!612 cacheUp!320))))))) ((as const (Array (_ BitVec 32) List!453)) mapDefault!463)))))

(declare-fun b!38568 () Bool)

(declare-fun e!19262 () Bool)

(declare-fun lt!3399 () MutLongMap!130)

(get-info :version)

(assert (=> b!38568 (= e!19262 (and e!19244 ((_ is LongMap!130) lt!3399)))))

(assert (=> b!38568 (= lt!3399 (v!12234 (underlying!456 (cache!611 cacheFurthestNullable!45))))))

(declare-fun b!38569 () Bool)

(declare-fun res!28589 () Bool)

(assert (=> b!38569 (=> (not res!28589) (not e!19259))))

(declare-fun valid!136 (CacheUp!86) Bool)

(assert (=> b!38569 (= res!28589 (valid!136 cacheUp!320))))

(declare-fun b!38570 () Bool)

(declare-fun e!19261 () Bool)

(assert (=> b!38570 (= e!19261 e!19253)))

(declare-fun b!38571 () Bool)

(declare-fun e!19260 () Bool)

(declare-fun tp!26827 () Bool)

(declare-fun mapRes!464 () Bool)

(assert (=> b!38571 (= e!19260 (and tp!26827 mapRes!464))))

(declare-fun condMapEmpty!464 () Bool)

(declare-fun mapDefault!464 () List!452)

(assert (=> b!38571 (= condMapEmpty!464 (= (arr!236 (_values!408 (v!12233 (underlying!455 (v!12234 (underlying!456 (cache!611 cacheFurthestNullable!45))))))) ((as const (Array (_ BitVec 32) List!452)) mapDefault!464)))))

(declare-fun b!38572 () Bool)

(declare-fun res!28588 () Bool)

(assert (=> b!38572 (=> (not res!28588) (not e!19259))))

(declare-fun valid!137 (CacheFurthestNullable!34) Bool)

(assert (=> b!38572 (= res!28588 (valid!137 cacheFurthestNullable!45))))

(declare-fun b!38573 () Bool)

(declare-fun res!28585 () Bool)

(assert (=> b!38573 (=> (not res!28585) (not e!19259))))

(assert (=> b!38573 (= res!28585 (= (totalInput!1494 cacheFurthestNullable!45) input!525))))

(declare-fun e!19247 () Bool)

(declare-fun e!19239 () Bool)

(assert (=> b!38574 (= e!19247 (and e!19239 tp!26816))))

(declare-fun b!38575 () Bool)

(assert (=> b!38575 (= e!19252 e!19247)))

(declare-fun b!38576 () Bool)

(declare-fun e!19250 () Bool)

(assert (=> b!38576 (= e!19249 e!19250)))

(assert (=> b!38577 (= e!19241 (and e!19262 tp!26815))))

(declare-fun b!38578 () Bool)

(declare-fun tp!26824 () Bool)

(declare-fun mapRes!463 () Bool)

(assert (=> b!38578 (= e!19254 (and tp!26824 mapRes!463))))

(declare-fun condMapEmpty!463 () Bool)

(declare-fun mapDefault!465 () List!450)

(assert (=> b!38578 (= condMapEmpty!463 (= (arr!234 (_values!407 (v!12231 (underlying!453 (v!12232 (underlying!454 (cache!610 cacheDown!333))))))) ((as const (Array (_ BitVec 32) List!450)) mapDefault!465)))))

(declare-fun b!38579 () Bool)

(declare-fun e!19263 () Bool)

(declare-fun e!19255 () Bool)

(declare-fun lt!3402 () MutLongMap!129)

(assert (=> b!38579 (= e!19263 (and e!19255 ((_ is LongMap!129) lt!3402)))))

(assert (=> b!38579 (= lt!3402 (v!12232 (underlying!454 (cache!610 cacheDown!333))))))

(declare-fun e!19258 () Bool)

(declare-fun tp!26818 () Bool)

(declare-fun tp!26813 () Bool)

(declare-fun array_inv!148 (array!458) Bool)

(assert (=> b!38580 (= e!19258 (and tp!26809 tp!26818 tp!26813 (array_inv!146 (_keys!421 (v!12233 (underlying!455 (v!12234 (underlying!456 (cache!611 cacheFurthestNullable!45))))))) (array_inv!148 (_values!408 (v!12233 (underlying!455 (v!12234 (underlying!456 (cache!611 cacheFurthestNullable!45))))))) e!19260))))

(declare-fun mapNonEmpty!463 () Bool)

(declare-fun tp!26826 () Bool)

(declare-fun tp!26830 () Bool)

(assert (=> mapNonEmpty!463 (= mapRes!464 (and tp!26826 tp!26830))))

(declare-fun mapKey!465 () (_ BitVec 32))

(declare-fun mapRest!465 () (Array (_ BitVec 32) List!452))

(declare-fun mapValue!465 () List!452)

(assert (=> mapNonEmpty!463 (= (arr!236 (_values!408 (v!12233 (underlying!455 (v!12234 (underlying!456 (cache!611 cacheFurthestNullable!45))))))) (store mapRest!465 mapKey!465 mapValue!465))))

(declare-fun b!38581 () Bool)

(assert (=> b!38581 (= e!19259 false)))

(declare-datatypes ((Unit!215 0))(
  ( (Unit!216) )
))
(declare-fun lt!3397 () Unit!215)

(declare-datatypes ((Token!36 0))(
  ( (Token!37 (value!6567 TokenValue!122) (rule!611 Rule!64) (size!497 Int) (originalCharacters!189 List!448)) )
))
(declare-datatypes ((List!454 0))(
  ( (Nil!452) (Cons!452 (h!5848 Token!36) (t!15380 List!454)) )
))
(declare-datatypes ((IArray!137 0))(
  ( (IArray!138 (innerList!126 List!454)) )
))
(declare-datatypes ((Conc!68 0))(
  ( (Node!68 (left!446 Conc!68) (right!776 Conc!68) (csize!366 Int) (cheight!279 Int)) (Leaf!243 (xs!2647 IArray!137) (csize!367 Int)) (Empty!68) )
))
(declare-datatypes ((BalanceConc!136 0))(
  ( (BalanceConc!137 (c!15744 Conc!68)) )
))
(declare-datatypes ((tuple2!482 0))(
  ( (tuple2!483 (_1!312 BalanceConc!136) (_2!312 BalanceConc!134)) )
))
(declare-datatypes ((tuple4!12 0))(
  ( (tuple4!13 (_1!313 tuple2!482) (_2!313 CacheUp!86) (_3!71 CacheDown!86) (_4!6 CacheFurthestNullable!34)) )
))
(declare-fun lt!3398 () tuple4!12)

(declare-fun lemmaInvariant!7 (CacheDown!86) Unit!215)

(assert (=> b!38581 (= lt!3397 (lemmaInvariant!7 (_3!71 lt!3398)))))

(declare-fun lt!3401 () Unit!215)

(declare-fun lemmaInvariant!8 (CacheUp!86) Unit!215)

(assert (=> b!38581 (= lt!3401 (lemmaInvariant!8 (_2!313 lt!3398)))))

(declare-datatypes ((LexerInterface!29 0))(
  ( (LexerInterfaceExt!26 (__x!823 Int)) (Lexer!27) )
))
(declare-fun lexMem!2 (LexerInterface!29 List!451 BalanceConc!134 CacheUp!86 CacheDown!86 CacheFurthestNullable!34) tuple4!12)

(assert (=> b!38581 (= lt!3398 (lexMem!2 Lexer!27 lt!3403 input!525 cacheUp!320 cacheDown!333 cacheFurthestNullable!45))))

(declare-fun b!38582 () Bool)

(assert (=> b!38582 (= e!19255 e!19261)))

(declare-fun mapIsEmpty!464 () Bool)

(assert (=> mapIsEmpty!464 mapRes!463))

(declare-fun tp!26820 () Bool)

(declare-fun tp!26829 () Bool)

(declare-fun e!19251 () Bool)

(declare-fun array_inv!149 (array!460) Bool)

(assert (=> b!38583 (= e!19251 (and tp!26810 tp!26820 tp!26829 (array_inv!146 (_keys!422 (v!12235 (underlying!457 (v!12236 (underlying!458 (cache!612 cacheUp!320))))))) (array_inv!149 (_values!409 (v!12235 (underlying!457 (v!12236 (underlying!458 (cache!612 cacheUp!320))))))) e!19246))))

(declare-fun b!38584 () Bool)

(declare-fun res!28584 () Bool)

(assert (=> b!38584 (=> (not res!28584) (not e!19259))))

(declare-fun rulesInvariant!22 (LexerInterface!29 List!451) Bool)

(assert (=> b!38584 (= res!28584 (rulesInvariant!22 Lexer!27 lt!3403))))

(declare-fun b!38585 () Bool)

(declare-fun e!19248 () Bool)

(declare-fun lt!3400 () MutLongMap!131)

(assert (=> b!38585 (= e!19239 (and e!19248 ((_ is LongMap!131) lt!3400)))))

(assert (=> b!38585 (= lt!3400 (v!12236 (underlying!458 (cache!612 cacheUp!320))))))

(declare-fun mapNonEmpty!464 () Bool)

(declare-fun tp!26828 () Bool)

(declare-fun tp!26831 () Bool)

(assert (=> mapNonEmpty!464 (= mapRes!465 (and tp!26828 tp!26831))))

(declare-fun mapKey!464 () (_ BitVec 32))

(declare-fun mapValue!464 () List!453)

(declare-fun mapRest!464 () (Array (_ BitVec 32) List!453))

(assert (=> mapNonEmpty!464 (= (arr!237 (_values!409 (v!12235 (underlying!457 (v!12236 (underlying!458 (cache!612 cacheUp!320))))))) (store mapRest!464 mapKey!464 mapValue!464))))

(declare-fun mapIsEmpty!465 () Bool)

(assert (=> mapIsEmpty!465 mapRes!464))

(declare-fun b!38586 () Bool)

(assert (=> b!38586 (= e!19256 e!19258)))

(declare-fun b!38587 () Bool)

(declare-fun e!19257 () Bool)

(assert (=> b!38587 (= e!19248 e!19257)))

(declare-fun b!38588 () Bool)

(assert (=> b!38588 (= e!19257 e!19251)))

(declare-fun b!38589 () Bool)

(declare-fun res!28586 () Bool)

(assert (=> b!38589 (=> (not res!28586) (not e!19259))))

(declare-fun valid!138 (CacheDown!86) Bool)

(assert (=> b!38589 (= res!28586 (valid!138 cacheDown!333))))

(assert (=> b!38590 (= e!19250 (and e!19263 tp!26819))))

(declare-fun mapNonEmpty!465 () Bool)

(declare-fun tp!26814 () Bool)

(declare-fun tp!26821 () Bool)

(assert (=> mapNonEmpty!465 (= mapRes!463 (and tp!26814 tp!26821))))

(declare-fun mapValue!463 () List!450)

(declare-fun mapRest!463 () (Array (_ BitVec 32) List!450))

(declare-fun mapKey!463 () (_ BitVec 32))

(assert (=> mapNonEmpty!465 (= (arr!234 (_values!407 (v!12231 (underlying!453 (v!12232 (underlying!454 (cache!610 cacheDown!333))))))) (store mapRest!463 mapKey!463 mapValue!463))))

(declare-fun b!38591 () Bool)

(declare-fun tp!26812 () Bool)

(assert (=> b!38591 (= e!19242 (and (inv!755 (c!15742 (totalInput!1494 cacheFurthestNullable!45))) tp!26812))))

(assert (= (and start!2176 res!28587) b!38584))

(assert (= (and b!38584 res!28584) b!38569))

(assert (= (and b!38569 res!28589) b!38589))

(assert (= (and b!38589 res!28586) b!38572))

(assert (= (and b!38572 res!28588) b!38573))

(assert (= (and b!38573 res!28585) b!38581))

(assert (= (and b!38578 condMapEmpty!463) mapIsEmpty!464))

(assert (= (and b!38578 (not condMapEmpty!463)) mapNonEmpty!465))

(assert (= b!38564 b!38578))

(assert (= b!38570 b!38564))

(assert (= b!38582 b!38570))

(assert (= (and b!38579 ((_ is LongMap!129) (v!12232 (underlying!454 (cache!610 cacheDown!333))))) b!38582))

(assert (= b!38590 b!38579))

(assert (= (and b!38576 ((_ is HashMap!125) (cache!610 cacheDown!333))) b!38590))

(assert (= start!2176 b!38576))

(assert (= start!2176 b!38563))

(assert (= (and b!38571 condMapEmpty!464) mapIsEmpty!465))

(assert (= (and b!38571 (not condMapEmpty!464)) mapNonEmpty!463))

(assert (= b!38580 b!38571))

(assert (= b!38586 b!38580))

(assert (= b!38565 b!38586))

(assert (= (and b!38568 ((_ is LongMap!130) (v!12234 (underlying!456 (cache!611 cacheFurthestNullable!45))))) b!38565))

(assert (= b!38577 b!38568))

(assert (= (and b!38566 ((_ is HashMap!126) (cache!611 cacheFurthestNullable!45))) b!38577))

(assert (= b!38566 b!38591))

(assert (= start!2176 b!38566))

(assert (= (and b!38567 condMapEmpty!465) mapIsEmpty!463))

(assert (= (and b!38567 (not condMapEmpty!465)) mapNonEmpty!464))

(assert (= b!38583 b!38567))

(assert (= b!38588 b!38583))

(assert (= b!38587 b!38588))

(assert (= (and b!38585 ((_ is LongMap!131) (v!12236 (underlying!458 (cache!612 cacheUp!320))))) b!38587))

(assert (= b!38574 b!38585))

(assert (= (and b!38575 ((_ is HashMap!127) (cache!612 cacheUp!320))) b!38574))

(assert (= start!2176 b!38575))

(declare-fun m!12592 () Bool)

(assert (=> mapNonEmpty!465 m!12592))

(declare-fun m!12594 () Bool)

(assert (=> b!38583 m!12594))

(declare-fun m!12596 () Bool)

(assert (=> b!38583 m!12596))

(declare-fun m!12598 () Bool)

(assert (=> mapNonEmpty!463 m!12598))

(declare-fun m!12600 () Bool)

(assert (=> b!38566 m!12600))

(declare-fun m!12602 () Bool)

(assert (=> b!38564 m!12602))

(declare-fun m!12604 () Bool)

(assert (=> b!38564 m!12604))

(declare-fun m!12606 () Bool)

(assert (=> b!38563 m!12606))

(declare-fun m!12608 () Bool)

(assert (=> b!38584 m!12608))

(declare-fun m!12610 () Bool)

(assert (=> mapNonEmpty!464 m!12610))

(declare-fun m!12612 () Bool)

(assert (=> b!38569 m!12612))

(declare-fun m!12614 () Bool)

(assert (=> b!38572 m!12614))

(declare-fun m!12616 () Bool)

(assert (=> b!38581 m!12616))

(declare-fun m!12618 () Bool)

(assert (=> b!38581 m!12618))

(declare-fun m!12620 () Bool)

(assert (=> b!38581 m!12620))

(declare-fun m!12622 () Bool)

(assert (=> b!38580 m!12622))

(declare-fun m!12624 () Bool)

(assert (=> b!38580 m!12624))

(declare-fun m!12626 () Bool)

(assert (=> start!2176 m!12626))

(declare-fun m!12628 () Bool)

(assert (=> start!2176 m!12628))

(declare-fun m!12630 () Bool)

(assert (=> start!2176 m!12630))

(declare-fun m!12632 () Bool)

(assert (=> start!2176 m!12632))

(declare-fun m!12634 () Bool)

(assert (=> start!2176 m!12634))

(declare-fun m!12636 () Bool)

(assert (=> start!2176 m!12636))

(declare-fun m!12638 () Bool)

(assert (=> b!38589 m!12638))

(declare-fun m!12640 () Bool)

(assert (=> b!38591 m!12640))

(check-sat (not b!38572) (not b!38567) b_and!679 (not b_next!647) (not b!38569) b_and!685 (not mapNonEmpty!465) (not b!38589) (not b!38580) (not mapNonEmpty!463) (not b_next!649) (not b_next!655) (not mapNonEmpty!464) (not b_next!645) (not b!38564) (not start!2176) (not b!38591) (not b!38571) (not b!38578) (not b!38583) (not b_next!651) b_and!681 (not b_next!653) b_and!689 b_and!683 (not b!38563) (not b!38584) b_and!687 (not b!38566) (not b!38581))
(check-sat (not b_next!645) b_and!679 (not b_next!647) b_and!685 (not b_next!651) (not b_next!649) (not b_next!655) b_and!687 b_and!681 (not b_next!653) b_and!689 b_and!683)
