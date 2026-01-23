; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1970 () Bool)

(assert start!1970)

(declare-fun b!35781 () Bool)

(declare-fun b_free!513 () Bool)

(declare-fun b_next!513 () Bool)

(assert (=> b!35781 (= b_free!513 (not b_next!513))))

(declare-fun tp!24669 () Bool)

(declare-fun b_and!547 () Bool)

(assert (=> b!35781 (= tp!24669 b_and!547)))

(declare-fun b!35785 () Bool)

(declare-fun b_free!515 () Bool)

(declare-fun b_next!515 () Bool)

(assert (=> b!35785 (= b_free!515 (not b_next!515))))

(declare-fun tp!24661 () Bool)

(declare-fun b_and!549 () Bool)

(assert (=> b!35785 (= tp!24661 b_and!549)))

(declare-fun b!35774 () Bool)

(declare-fun b_free!517 () Bool)

(declare-fun b_next!517 () Bool)

(assert (=> b!35774 (= b_free!517 (not b_next!517))))

(declare-fun tp!24664 () Bool)

(declare-fun b_and!551 () Bool)

(assert (=> b!35774 (= tp!24664 b_and!551)))

(declare-fun b!35778 () Bool)

(declare-fun b_free!519 () Bool)

(declare-fun b_next!519 () Bool)

(assert (=> b!35778 (= b_free!519 (not b_next!519))))

(declare-fun tp!24671 () Bool)

(declare-fun b_and!553 () Bool)

(assert (=> b!35778 (= tp!24671 b_and!553)))

(declare-fun b!35768 () Bool)

(declare-fun e!17444 () Bool)

(declare-fun e!17434 () Bool)

(assert (=> b!35768 (= e!17444 e!17434)))

(declare-fun b!35769 () Bool)

(declare-fun e!17446 () Bool)

(declare-fun e!17437 () Bool)

(assert (=> b!35769 (= e!17446 e!17437)))

(declare-fun b!35770 () Bool)

(declare-fun res!28076 () Bool)

(declare-fun e!17447 () Bool)

(assert (=> b!35770 (=> (not res!28076) (not e!17447))))

(declare-datatypes ((Regex!165 0))(
  ( (ElementMatch!165 (c!15458 (_ BitVec 16))) (Concat!283 (regOne!842 Regex!165) (regTwo!842 Regex!165)) (EmptyExpr!165) (Star!165 (reg!494 Regex!165)) (EmptyLang!165) (Union!165 (regOne!843 Regex!165) (regTwo!843 Regex!165)) )
))
(declare-datatypes ((List!387 0))(
  ( (Nil!385) (Cons!385 (h!5781 Regex!165) (t!15223 List!387)) )
))
(declare-datatypes ((Context!94 0))(
  ( (Context!95 (exprs!547 List!387)) )
))
(declare-datatypes ((tuple2!324 0))(
  ( (tuple2!325 (_1!224 Context!94) (_2!224 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!326 0))(
  ( (tuple2!327 (_1!225 tuple2!324) (_2!225 (InoxSet Context!94))) )
))
(declare-datatypes ((List!388 0))(
  ( (Nil!386) (Cons!386 (h!5782 tuple2!326) (t!15224 List!388)) )
))
(declare-datatypes ((List!389 0))(
  ( (Nil!387) (Cons!387 (h!5783 (_ BitVec 16)) (t!15225 List!389)) )
))
(declare-datatypes ((IArray!123 0))(
  ( (IArray!124 (innerList!119 List!389)) )
))
(declare-datatypes ((Conc!61 0))(
  ( (Node!61 (left!425 Conc!61) (right!755 Conc!61) (csize!352 Int) (cheight!272 Int)) (Leaf!222 (xs!2640 IArray!123) (csize!353 Int)) (Empty!61) )
))
(declare-datatypes ((BalanceConc!122 0))(
  ( (BalanceConc!123 (c!15459 Conc!61)) )
))
(declare-datatypes ((String!827 0))(
  ( (String!828 (value!6394 String)) )
))
(declare-datatypes ((TokenValue!118 0))(
  ( (FloatLiteralValue!236 (text!1271 List!389)) (TokenValueExt!117 (__x!717 Int)) (Broken!590 (value!6395 List!389)) (Object!119) (End!118) (Def!118) (Underscore!118) (Match!118) (Else!118) (Error!118) (Case!118) (If!118) (Extends!118) (Abstract!118) (Class!118) (Val!118) (DelimiterValue!236 (del!178 List!389)) (KeywordValue!124 (value!6396 List!389)) (CommentValue!236 (value!6397 List!389)) (WhitespaceValue!236 (value!6398 List!389)) (IndentationValue!118 (value!6399 List!389)) (String!829) (Int32!118) (Broken!591 (value!6400 List!389)) (Boolean!119) (Unit!198) (OperatorValue!121 (op!178 List!389)) (IdentifierValue!236 (value!6401 List!389)) (IdentifierValue!237 (value!6402 List!389)) (WhitespaceValue!237 (value!6403 List!389)) (True!236) (False!236) (Broken!592 (value!6404 List!389)) (Broken!593 (value!6405 List!389)) (True!237) (RightBrace!118) (RightBracket!118) (Colon!118) (Null!118) (Comma!118) (LeftBracket!118) (False!237) (LeftBrace!118) (ImaginaryLiteralValue!118 (text!1272 List!389)) (StringLiteralValue!354 (value!6406 List!389)) (EOFValue!118 (value!6407 List!389)) (IdentValue!118 (value!6408 List!389)) (DelimiterValue!237 (value!6409 List!389)) (DedentValue!118 (value!6410 List!389)) (NewLineValue!118 (value!6411 List!389)) (IntegerValue!354 (value!6412 (_ BitVec 32)) (text!1273 List!389)) (IntegerValue!355 (value!6413 Int) (text!1274 List!389)) (Times!118) (Or!118) (Equal!118) (Minus!118) (Broken!594 (value!6414 List!389)) (And!118) (Div!118) (LessEqual!118) (Mod!118) (Concat!284) (Not!118) (Plus!118) (SpaceValue!118 (value!6415 List!389)) (IntegerValue!356 (value!6416 Int) (text!1275 List!389)) (StringLiteralValue!355 (text!1276 List!389)) (FloatLiteralValue!237 (text!1277 List!389)) (BytesLiteralValue!118 (value!6417 List!389)) (CommentValue!237 (value!6418 List!389)) (StringLiteralValue!356 (value!6419 List!389)) (ErrorTokenValue!118 (msg!179 List!389)) )
))
(declare-datatypes ((TokenValueInjection!60 0))(
  ( (TokenValueInjection!61 (toValue!607 Int) (toChars!466 Int)) )
))
(declare-datatypes ((Rule!56 0))(
  ( (Rule!57 (regex!128 Regex!165) (tag!306 String!827) (isSeparator!128 Bool) (transformation!128 TokenValueInjection!60)) )
))
(declare-datatypes ((List!390 0))(
  ( (Nil!388) (Cons!388 (h!5784 Rule!56) (t!15226 List!390)) )
))
(declare-datatypes ((Token!34 0))(
  ( (Token!35 (value!6420 TokenValue!118) (rule!610 Rule!56) (size!432 Int) (originalCharacters!188 List!389)) )
))
(declare-datatypes ((List!391 0))(
  ( (Nil!389) (Cons!389 (h!5785 Token!34) (t!15227 List!391)) )
))
(declare-datatypes ((IArray!125 0))(
  ( (IArray!126 (innerList!120 List!391)) )
))
(declare-datatypes ((Conc!62 0))(
  ( (Node!62 (left!426 Conc!62) (right!756 Conc!62) (csize!354 Int) (cheight!273 Int)) (Leaf!223 (xs!2641 IArray!125) (csize!355 Int)) (Empty!62) )
))
(declare-datatypes ((BalanceConc!124 0))(
  ( (BalanceConc!125 (c!15460 Conc!62)) )
))
(declare-datatypes ((PrintableTokens!12 0))(
  ( (PrintableTokens!13 (rules!4762 List!390) (tokens!762 BalanceConc!124)) )
))
(declare-datatypes ((Hashable!95 0))(
  ( (HashableExt!94 (__x!718 Int)) )
))
(declare-datatypes ((array!326 0))(
  ( (array!327 (arr!178 (Array (_ BitVec 32) List!388)) (size!433 (_ BitVec 32))) )
))
(declare-datatypes ((array!328 0))(
  ( (array!329 (arr!179 (Array (_ BitVec 32) (_ BitVec 64))) (size!434 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!198 0))(
  ( (LongMapFixedSize!199 (defaultEntry!437 Int) (mask!783 (_ BitVec 32)) (extraKeys!345 (_ BitVec 32)) (zeroValue!355 List!388) (minValue!355 List!388) (_size!330 (_ BitVec 32)) (_keys!390 array!328) (_values!377 array!326) (_vacant!159 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!385 0))(
  ( (Cell!386 (v!12165 LongMapFixedSize!198)) )
))
(declare-datatypes ((MutLongMap!99 0))(
  ( (LongMap!99 (underlying!393 Cell!385)) (MutLongMapExt!98 (__x!719 Int)) )
))
(declare-datatypes ((Cell!387 0))(
  ( (Cell!388 (v!12166 MutLongMap!99)) )
))
(declare-datatypes ((MutableMap!95 0))(
  ( (MutableMapExt!94 (__x!720 Int)) (HashMap!95 (underlying!394 Cell!387) (hashF!1963 Hashable!95) (_size!331 (_ BitVec 32)) (defaultValue!244 Int)) )
))
(declare-datatypes ((CacheUp!80 0))(
  ( (CacheUp!81 (cache!574 MutableMap!95)) )
))
(declare-datatypes ((tuple3!114 0))(
  ( (tuple3!115 (_1!226 Regex!165) (_2!226 Context!94) (_3!62 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!328 0))(
  ( (tuple2!329 (_1!227 tuple3!114) (_2!227 (InoxSet Context!94))) )
))
(declare-datatypes ((List!392 0))(
  ( (Nil!390) (Cons!390 (h!5786 tuple2!328) (t!15228 List!392)) )
))
(declare-datatypes ((array!330 0))(
  ( (array!331 (arr!180 (Array (_ BitVec 32) List!392)) (size!435 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!200 0))(
  ( (LongMapFixedSize!201 (defaultEntry!438 Int) (mask!784 (_ BitVec 32)) (extraKeys!346 (_ BitVec 32)) (zeroValue!356 List!392) (minValue!356 List!392) (_size!332 (_ BitVec 32)) (_keys!391 array!328) (_values!378 array!330) (_vacant!160 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!389 0))(
  ( (Cell!390 (v!12167 LongMapFixedSize!200)) )
))
(declare-datatypes ((MutLongMap!100 0))(
  ( (LongMap!100 (underlying!395 Cell!389)) (MutLongMapExt!99 (__x!721 Int)) )
))
(declare-datatypes ((Cell!391 0))(
  ( (Cell!392 (v!12168 MutLongMap!100)) )
))
(declare-datatypes ((Hashable!96 0))(
  ( (HashableExt!95 (__x!722 Int)) )
))
(declare-datatypes ((MutableMap!96 0))(
  ( (MutableMapExt!95 (__x!723 Int)) (HashMap!96 (underlying!396 Cell!391) (hashF!1964 Hashable!96) (_size!333 (_ BitVec 32)) (defaultValue!245 Int)) )
))
(declare-datatypes ((CacheDown!82 0))(
  ( (CacheDown!83 (cache!575 MutableMap!96)) )
))
(declare-datatypes ((tuple3!116 0))(
  ( (tuple3!117 (_1!228 (InoxSet Context!94)) (_2!228 Int) (_3!63 Int)) )
))
(declare-datatypes ((tuple2!330 0))(
  ( (tuple2!331 (_1!229 tuple3!116) (_2!229 Int)) )
))
(declare-datatypes ((List!393 0))(
  ( (Nil!391) (Cons!391 (h!5787 tuple2!330) (t!15229 List!393)) )
))
(declare-datatypes ((array!332 0))(
  ( (array!333 (arr!181 (Array (_ BitVec 32) List!393)) (size!436 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!202 0))(
  ( (LongMapFixedSize!203 (defaultEntry!439 Int) (mask!785 (_ BitVec 32)) (extraKeys!347 (_ BitVec 32)) (zeroValue!357 List!393) (minValue!357 List!393) (_size!334 (_ BitVec 32)) (_keys!392 array!328) (_values!379 array!332) (_vacant!161 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!97 0))(
  ( (HashableExt!96 (__x!724 Int)) )
))
(declare-datatypes ((Cell!393 0))(
  ( (Cell!394 (v!12169 LongMapFixedSize!202)) )
))
(declare-datatypes ((MutLongMap!101 0))(
  ( (LongMap!101 (underlying!397 Cell!393)) (MutLongMapExt!100 (__x!725 Int)) )
))
(declare-datatypes ((Cell!395 0))(
  ( (Cell!396 (v!12170 MutLongMap!101)) )
))
(declare-datatypes ((MutableMap!97 0))(
  ( (MutableMapExt!96 (__x!726 Int)) (HashMap!97 (underlying!398 Cell!395) (hashF!1965 Hashable!97) (_size!335 (_ BitVec 32)) (defaultValue!246 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!28 0))(
  ( (CacheFurthestNullable!29 (cache!576 MutableMap!97) (totalInput!1491 BalanceConc!122)) )
))
(declare-datatypes ((Option!45 0))(
  ( (None!44) (Some!44 (v!12171 PrintableTokens!12)) )
))
(declare-datatypes ((tuple4!10 0))(
  ( (tuple4!11 (_1!230 Option!45) (_2!230 CacheUp!80) (_3!64 CacheDown!82) (_4!5 CacheFurthestNullable!28)) )
))
(declare-fun lt!2976 () tuple4!10)

(declare-fun size!437 (PrintableTokens!12) Int)

(assert (=> b!35770 (= res!28076 (> (size!437 (v!12171 (_1!230 lt!2976))) 0))))

(declare-fun mapNonEmpty!336 () Bool)

(declare-fun mapRes!336 () Bool)

(declare-fun tp!24660 () Bool)

(declare-fun tp!24659 () Bool)

(assert (=> mapNonEmpty!336 (= mapRes!336 (and tp!24660 tp!24659))))

(declare-fun mapValue!337 () List!388)

(declare-fun mapKey!336 () (_ BitVec 32))

(declare-fun cacheUp!368 () CacheUp!80)

(declare-fun mapRest!336 () (Array (_ BitVec 32) List!388))

(assert (=> mapNonEmpty!336 (= (arr!178 (_values!377 (v!12165 (underlying!393 (v!12166 (underlying!394 (cache!574 cacheUp!368))))))) (store mapRest!336 mapKey!336 mapValue!337))))

(declare-fun b!35771 () Bool)

(declare-fun e!17441 () Bool)

(declare-fun e!17445 () Bool)

(assert (=> b!35771 (= e!17441 e!17445)))

(declare-fun res!28071 () Bool)

(assert (=> b!35771 (=> (not res!28071) (not e!17445))))

(declare-fun lt!2971 () CacheFurthestNullable!28)

(declare-fun valid!111 (CacheFurthestNullable!28) Bool)

(assert (=> b!35771 (= res!28071 (valid!111 lt!2971))))

(declare-fun hashF!328 () Hashable!97)

(declare-fun lt!2973 () BalanceConc!122)

(declare-fun emptyFurthestNullableCache!11 (Hashable!97 BalanceConc!122 (_ BitVec 32)) CacheFurthestNullable!28)

(assert (=> b!35771 (= lt!2971 (emptyFurthestNullableCache!11 hashF!328 lt!2973 #b00000000000000000000000000010000))))

(declare-fun path!6 () String!827)

(declare-fun openFile!0 (String!827) BalanceConc!122)

(assert (=> b!35771 (= lt!2973 (openFile!0 path!6))))

(declare-fun b!35772 () Bool)

(assert (=> b!35772 (= e!17447 false)))

(declare-datatypes ((tuple3!118 0))(
  ( (tuple3!119 (_1!231 Option!45) (_2!231 CacheUp!80) (_3!65 CacheDown!82)) )
))
(declare-fun lt!2970 () tuple3!118)

(declare-fun processJson!0 (PrintableTokens!12 CacheUp!80 CacheDown!82) tuple3!118)

(assert (=> b!35772 (= lt!2970 (processJson!0 (v!12171 (_1!230 lt!2976)) (_2!230 lt!2976) (_3!64 lt!2976)))))

(declare-fun b!35773 () Bool)

(declare-fun e!17430 () Bool)

(assert (=> b!35773 (= e!17430 e!17447)))

(declare-fun res!28077 () Bool)

(assert (=> b!35773 (=> (not res!28077) (not e!17447))))

(get-info :version)

(assert (=> b!35773 (= res!28077 ((_ is Some!44) (_1!230 lt!2976)))))

(declare-fun cacheDown!381 () CacheDown!82)

(declare-fun lexAndCheckPrintable!0 (BalanceConc!122 CacheUp!80 CacheDown!82 CacheFurthestNullable!28) tuple4!10)

(assert (=> b!35773 (= lt!2976 (lexAndCheckPrintable!0 lt!2973 cacheUp!368 cacheDown!381 lt!2971))))

(declare-fun e!17436 () Bool)

(declare-fun e!17438 () Bool)

(assert (=> b!35774 (= e!17436 (and e!17438 tp!24664))))

(declare-fun res!28072 () Bool)

(assert (=> start!1970 (=> (not res!28072) (not e!17441))))

(declare-fun valid!112 (CacheUp!80) Bool)

(assert (=> start!1970 (= res!28072 (valid!112 cacheUp!368))))

(assert (=> start!1970 e!17441))

(declare-fun e!17432 () Bool)

(declare-fun inv!688 (CacheUp!80) Bool)

(assert (=> start!1970 (and (inv!688 cacheUp!368) e!17432)))

(declare-fun e!17440 () Bool)

(declare-fun inv!689 (CacheDown!82) Bool)

(assert (=> start!1970 (and (inv!689 cacheDown!381) e!17440)))

(assert (=> start!1970 true))

(declare-fun inv!685 (String!827) Bool)

(assert (=> start!1970 (inv!685 path!6)))

(declare-fun b!35775 () Bool)

(declare-fun res!28075 () Bool)

(assert (=> b!35775 (=> (not res!28075) (not e!17441))))

(declare-fun valid!113 (CacheDown!82) Bool)

(assert (=> b!35775 (= res!28075 (valid!113 cacheDown!381))))

(declare-fun b!35776 () Bool)

(declare-fun lt!2974 () MutLongMap!99)

(assert (=> b!35776 (= e!17438 (and e!17446 ((_ is LongMap!99) lt!2974)))))

(assert (=> b!35776 (= lt!2974 (v!12166 (underlying!394 (cache!574 cacheUp!368))))))

(declare-fun b!35777 () Bool)

(declare-fun e!17433 () Bool)

(declare-fun tp!24663 () Bool)

(declare-fun mapRes!337 () Bool)

(assert (=> b!35777 (= e!17433 (and tp!24663 mapRes!337))))

(declare-fun condMapEmpty!336 () Bool)

(declare-fun mapDefault!336 () List!392)

(assert (=> b!35777 (= condMapEmpty!336 (= (arr!180 (_values!378 (v!12167 (underlying!395 (v!12168 (underlying!396 (cache!575 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!392)) mapDefault!336)))))

(declare-fun tp!24666 () Bool)

(declare-fun tp!24668 () Bool)

(declare-fun array_inv!101 (array!328) Bool)

(declare-fun array_inv!102 (array!330) Bool)

(assert (=> b!35778 (= e!17434 (and tp!24671 tp!24668 tp!24666 (array_inv!101 (_keys!391 (v!12167 (underlying!395 (v!12168 (underlying!396 (cache!575 cacheDown!381))))))) (array_inv!102 (_values!378 (v!12167 (underlying!395 (v!12168 (underlying!396 (cache!575 cacheDown!381))))))) e!17433))))

(declare-fun b!35779 () Bool)

(declare-fun e!17449 () Bool)

(assert (=> b!35779 (= e!17449 e!17444)))

(declare-fun mapIsEmpty!336 () Bool)

(assert (=> mapIsEmpty!336 mapRes!336))

(declare-fun b!35780 () Bool)

(declare-fun e!17431 () Bool)

(declare-fun lt!2975 () MutLongMap!100)

(assert (=> b!35780 (= e!17431 (and e!17449 ((_ is LongMap!100) lt!2975)))))

(assert (=> b!35780 (= lt!2975 (v!12168 (underlying!396 (cache!575 cacheDown!381))))))

(declare-fun tp!24658 () Bool)

(declare-fun e!17435 () Bool)

(declare-fun tp!24665 () Bool)

(declare-fun e!17448 () Bool)

(declare-fun array_inv!103 (array!326) Bool)

(assert (=> b!35781 (= e!17448 (and tp!24669 tp!24665 tp!24658 (array_inv!101 (_keys!390 (v!12165 (underlying!393 (v!12166 (underlying!394 (cache!574 cacheUp!368))))))) (array_inv!103 (_values!377 (v!12165 (underlying!393 (v!12166 (underlying!394 (cache!574 cacheUp!368))))))) e!17435))))

(declare-fun b!35782 () Bool)

(declare-fun res!28073 () Bool)

(assert (=> b!35782 (=> (not res!28073) (not e!17445))))

(assert (=> b!35782 (= res!28073 (= (totalInput!1491 lt!2971) lt!2973))))

(declare-fun mapNonEmpty!337 () Bool)

(declare-fun tp!24667 () Bool)

(declare-fun tp!24662 () Bool)

(assert (=> mapNonEmpty!337 (= mapRes!337 (and tp!24667 tp!24662))))

(declare-fun mapKey!337 () (_ BitVec 32))

(declare-fun mapValue!336 () List!392)

(declare-fun mapRest!337 () (Array (_ BitVec 32) List!392))

(assert (=> mapNonEmpty!337 (= (arr!180 (_values!378 (v!12167 (underlying!395 (v!12168 (underlying!396 (cache!575 cacheDown!381))))))) (store mapRest!337 mapKey!337 mapValue!336))))

(declare-fun b!35783 () Bool)

(declare-fun tp!24670 () Bool)

(assert (=> b!35783 (= e!17435 (and tp!24670 mapRes!336))))

(declare-fun condMapEmpty!337 () Bool)

(declare-fun mapDefault!337 () List!388)

(assert (=> b!35783 (= condMapEmpty!337 (= (arr!178 (_values!377 (v!12165 (underlying!393 (v!12166 (underlying!394 (cache!574 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!388)) mapDefault!337)))))

(declare-fun mapIsEmpty!337 () Bool)

(assert (=> mapIsEmpty!337 mapRes!337))

(declare-fun b!35784 () Bool)

(declare-fun e!17439 () Bool)

(assert (=> b!35784 (= e!17440 e!17439)))

(assert (=> b!35785 (= e!17439 (and e!17431 tp!24661))))

(declare-fun b!35786 () Bool)

(declare-fun res!28070 () Bool)

(assert (=> b!35786 (=> (not res!28070) (not e!17430))))

(declare-fun lt!2972 () List!390)

(declare-datatypes ((LexerInterface!27 0))(
  ( (LexerInterfaceExt!24 (__x!727 Int)) (Lexer!25) )
))
(declare-fun rulesInvariant!20 (LexerInterface!27 List!390) Bool)

(assert (=> b!35786 (= res!28070 (rulesInvariant!20 Lexer!25 lt!2972))))

(declare-fun b!35787 () Bool)

(assert (=> b!35787 (= e!17445 e!17430)))

(declare-fun res!28074 () Bool)

(assert (=> b!35787 (=> (not res!28074) (not e!17430))))

(declare-fun isEmpty!85 (List!390) Bool)

(assert (=> b!35787 (= res!28074 (not (isEmpty!85 lt!2972)))))

(declare-datatypes ((JsonLexer!18 0))(
  ( (JsonLexer!19) )
))
(declare-fun rules!109 (JsonLexer!18) List!390)

(assert (=> b!35787 (= lt!2972 (rules!109 JsonLexer!19))))

(declare-fun b!35788 () Bool)

(assert (=> b!35788 (= e!17432 e!17436)))

(declare-fun b!35789 () Bool)

(assert (=> b!35789 (= e!17437 e!17448)))

(assert (= (and start!1970 res!28072) b!35775))

(assert (= (and b!35775 res!28075) b!35771))

(assert (= (and b!35771 res!28071) b!35782))

(assert (= (and b!35782 res!28073) b!35787))

(assert (= (and b!35787 res!28074) b!35786))

(assert (= (and b!35786 res!28070) b!35773))

(assert (= (and b!35773 res!28077) b!35770))

(assert (= (and b!35770 res!28076) b!35772))

(assert (= (and b!35783 condMapEmpty!337) mapIsEmpty!336))

(assert (= (and b!35783 (not condMapEmpty!337)) mapNonEmpty!336))

(assert (= b!35781 b!35783))

(assert (= b!35789 b!35781))

(assert (= b!35769 b!35789))

(assert (= (and b!35776 ((_ is LongMap!99) (v!12166 (underlying!394 (cache!574 cacheUp!368))))) b!35769))

(assert (= b!35774 b!35776))

(assert (= (and b!35788 ((_ is HashMap!95) (cache!574 cacheUp!368))) b!35774))

(assert (= start!1970 b!35788))

(assert (= (and b!35777 condMapEmpty!336) mapIsEmpty!337))

(assert (= (and b!35777 (not condMapEmpty!336)) mapNonEmpty!337))

(assert (= b!35778 b!35777))

(assert (= b!35768 b!35778))

(assert (= b!35779 b!35768))

(assert (= (and b!35780 ((_ is LongMap!100) (v!12168 (underlying!396 (cache!575 cacheDown!381))))) b!35779))

(assert (= b!35785 b!35780))

(assert (= (and b!35784 ((_ is HashMap!96) (cache!575 cacheDown!381))) b!35785))

(assert (= start!1970 b!35784))

(declare-fun m!11620 () Bool)

(assert (=> b!35786 m!11620))

(declare-fun m!11622 () Bool)

(assert (=> b!35775 m!11622))

(declare-fun m!11624 () Bool)

(assert (=> b!35773 m!11624))

(declare-fun m!11626 () Bool)

(assert (=> mapNonEmpty!336 m!11626))

(declare-fun m!11628 () Bool)

(assert (=> b!35787 m!11628))

(declare-fun m!11630 () Bool)

(assert (=> b!35787 m!11630))

(declare-fun m!11632 () Bool)

(assert (=> b!35772 m!11632))

(declare-fun m!11634 () Bool)

(assert (=> b!35770 m!11634))

(declare-fun m!11636 () Bool)

(assert (=> b!35771 m!11636))

(declare-fun m!11638 () Bool)

(assert (=> b!35771 m!11638))

(declare-fun m!11640 () Bool)

(assert (=> b!35771 m!11640))

(declare-fun m!11642 () Bool)

(assert (=> b!35781 m!11642))

(declare-fun m!11644 () Bool)

(assert (=> b!35781 m!11644))

(declare-fun m!11646 () Bool)

(assert (=> mapNonEmpty!337 m!11646))

(declare-fun m!11648 () Bool)

(assert (=> b!35778 m!11648))

(declare-fun m!11650 () Bool)

(assert (=> b!35778 m!11650))

(declare-fun m!11652 () Bool)

(assert (=> start!1970 m!11652))

(declare-fun m!11654 () Bool)

(assert (=> start!1970 m!11654))

(declare-fun m!11656 () Bool)

(assert (=> start!1970 m!11656))

(declare-fun m!11658 () Bool)

(assert (=> start!1970 m!11658))

(check-sat (not b!35781) b_and!549 (not b_next!519) (not b_next!515) (not b!35773) (not b!35786) (not b!35783) b_and!553 (not start!1970) (not b_next!513) (not mapNonEmpty!336) (not b!35770) (not b!35777) (not b!35787) b_and!547 (not b_next!517) (not b!35778) b_and!551 (not b!35771) (not b!35772) (not b!35775) (not mapNonEmpty!337))
(check-sat b_and!549 (not b_next!519) (not b_next!515) b_and!551 b_and!553 (not b_next!513) b_and!547 (not b_next!517))
