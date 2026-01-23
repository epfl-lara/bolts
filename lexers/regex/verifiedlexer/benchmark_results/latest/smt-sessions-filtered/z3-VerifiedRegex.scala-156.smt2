; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1810 () Bool)

(assert start!1810)

(declare-fun b!35010 () Bool)

(declare-fun b_free!449 () Bool)

(declare-fun b_next!449 () Bool)

(assert (=> b!35010 (= b_free!449 (not b_next!449))))

(declare-fun tp!24110 () Bool)

(declare-fun b_and!483 () Bool)

(assert (=> b!35010 (= tp!24110 b_and!483)))

(declare-fun b!34999 () Bool)

(declare-fun b_free!451 () Bool)

(declare-fun b_next!451 () Bool)

(assert (=> b!34999 (= b_free!451 (not b_next!451))))

(declare-fun tp!24120 () Bool)

(declare-fun b_and!485 () Bool)

(assert (=> b!34999 (= tp!24120 b_and!485)))

(declare-fun b!35012 () Bool)

(declare-fun b_free!453 () Bool)

(declare-fun b_next!453 () Bool)

(assert (=> b!35012 (= b_free!453 (not b_next!453))))

(declare-fun tp!24111 () Bool)

(declare-fun b_and!487 () Bool)

(assert (=> b!35012 (= tp!24111 b_and!487)))

(declare-fun b!35017 () Bool)

(declare-fun b_free!455 () Bool)

(declare-fun b_next!455 () Bool)

(assert (=> b!35017 (= b_free!455 (not b_next!455))))

(declare-fun tp!24121 () Bool)

(declare-fun b_and!489 () Bool)

(assert (=> b!35017 (= tp!24121 b_and!489)))

(declare-fun b!34997 () Bool)

(declare-fun res!27804 () Bool)

(declare-fun e!16528 () Bool)

(assert (=> b!34997 (=> (not res!27804) (not e!16528))))

(declare-datatypes ((Regex!157 0))(
  ( (ElementMatch!157 (c!15436 (_ BitVec 16))) (Concat!271 (regOne!826 Regex!157) (regTwo!826 Regex!157)) (EmptyExpr!157) (Star!157 (reg!486 Regex!157)) (EmptyLang!157) (Union!157 (regOne!827 Regex!157) (regTwo!827 Regex!157)) )
))
(declare-datatypes ((List!339 0))(
  ( (Nil!337) (Cons!337 (h!5733 Regex!157) (t!15115 List!339)) )
))
(declare-datatypes ((Context!78 0))(
  ( (Context!79 (exprs!539 List!339)) )
))
(declare-datatypes ((tuple3!84 0))(
  ( (tuple3!85 (_1!171 Regex!157) (_2!171 Context!78) (_3!42 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!258 0))(
  ( (tuple2!259 (_1!172 tuple3!84) (_2!172 (InoxSet Context!78))) )
))
(declare-datatypes ((List!340 0))(
  ( (Nil!338) (Cons!338 (h!5734 tuple2!258) (t!15116 List!340)) )
))
(declare-datatypes ((array!255 0))(
  ( (array!256 (arr!147 (Array (_ BitVec 32) List!340)) (size!390 (_ BitVec 32))) )
))
(declare-datatypes ((array!257 0))(
  ( (array!258 (arr!148 (Array (_ BitVec 32) (_ BitVec 64))) (size!391 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!152 0))(
  ( (LongMapFixedSize!153 (defaultEntry!414 Int) (mask!756 (_ BitVec 32)) (extraKeys!322 (_ BitVec 32)) (zeroValue!332 List!340) (minValue!332 List!340) (_size!284 (_ BitVec 32)) (_keys!367 array!257) (_values!354 array!255) (_vacant!136 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!293 0))(
  ( (Cell!294 (v!12111 LongMapFixedSize!152)) )
))
(declare-datatypes ((MutLongMap!76 0))(
  ( (LongMap!76 (underlying!347 Cell!293)) (MutLongMapExt!75 (__x!641 Int)) )
))
(declare-datatypes ((Cell!295 0))(
  ( (Cell!296 (v!12112 MutLongMap!76)) )
))
(declare-datatypes ((Hashable!72 0))(
  ( (HashableExt!71 (__x!642 Int)) )
))
(declare-datatypes ((MutableMap!72 0))(
  ( (MutableMapExt!71 (__x!643 Int)) (HashMap!72 (underlying!348 Cell!295) (hashF!1936 Hashable!72) (_size!285 (_ BitVec 32)) (defaultValue!220 Int)) )
))
(declare-datatypes ((CacheDown!66 0))(
  ( (CacheDown!67 (cache!551 MutableMap!72)) )
))
(declare-fun cacheDown!381 () CacheDown!66)

(declare-fun valid!85 (CacheDown!66) Bool)

(assert (=> b!34997 (= res!27804 (valid!85 cacheDown!381))))

(declare-fun b!34998 () Bool)

(declare-fun e!16527 () Bool)

(declare-fun e!16538 () Bool)

(assert (=> b!34998 (= e!16527 e!16538)))

(declare-fun res!27807 () Bool)

(assert (=> b!34998 (=> (not res!27807) (not e!16538))))

(declare-datatypes ((tuple2!260 0))(
  ( (tuple2!261 (_1!173 Context!78) (_2!173 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!262 0))(
  ( (tuple2!263 (_1!174 tuple2!260) (_2!174 (InoxSet Context!78))) )
))
(declare-datatypes ((List!341 0))(
  ( (Nil!339) (Cons!339 (h!5735 tuple2!262) (t!15117 List!341)) )
))
(declare-datatypes ((List!342 0))(
  ( (Nil!340) (Cons!340 (h!5736 (_ BitVec 16)) (t!15118 List!342)) )
))
(declare-datatypes ((IArray!101 0))(
  ( (IArray!102 (innerList!108 List!342)) )
))
(declare-datatypes ((Conc!50 0))(
  ( (Node!50 (left!404 Conc!50) (right!734 Conc!50) (csize!330 Int) (cheight!261 Int)) (Leaf!207 (xs!2629 IArray!101) (csize!331 Int)) (Empty!50) )
))
(declare-datatypes ((BalanceConc!100 0))(
  ( (BalanceConc!101 (c!15437 Conc!50)) )
))
(declare-datatypes ((String!791 0))(
  ( (String!792 (value!6270 String)) )
))
(declare-datatypes ((TokenValue!114 0))(
  ( (FloatLiteralValue!228 (text!1243 List!342)) (TokenValueExt!113 (__x!644 Int)) (Broken!570 (value!6271 List!342)) (Object!115) (End!114) (Def!114) (Underscore!114) (Match!114) (Else!114) (Error!114) (Case!114) (If!114) (Extends!114) (Abstract!114) (Class!114) (Val!114) (DelimiterValue!228 (del!174 List!342)) (KeywordValue!120 (value!6272 List!342)) (CommentValue!228 (value!6273 List!342)) (WhitespaceValue!228 (value!6274 List!342)) (IndentationValue!114 (value!6275 List!342)) (String!793) (Int32!114) (Broken!571 (value!6276 List!342)) (Boolean!115) (Unit!183) (OperatorValue!117 (op!174 List!342)) (IdentifierValue!228 (value!6277 List!342)) (IdentifierValue!229 (value!6278 List!342)) (WhitespaceValue!229 (value!6279 List!342)) (True!228) (False!228) (Broken!572 (value!6280 List!342)) (Broken!573 (value!6281 List!342)) (True!229) (RightBrace!114) (RightBracket!114) (Colon!114) (Null!114) (Comma!114) (LeftBracket!114) (False!229) (LeftBrace!114) (ImaginaryLiteralValue!114 (text!1244 List!342)) (StringLiteralValue!342 (value!6282 List!342)) (EOFValue!114 (value!6283 List!342)) (IdentValue!114 (value!6284 List!342)) (DelimiterValue!229 (value!6285 List!342)) (DedentValue!114 (value!6286 List!342)) (NewLineValue!114 (value!6287 List!342)) (IntegerValue!342 (value!6288 (_ BitVec 32)) (text!1245 List!342)) (IntegerValue!343 (value!6289 Int) (text!1246 List!342)) (Times!114) (Or!114) (Equal!114) (Minus!114) (Broken!574 (value!6290 List!342)) (And!114) (Div!114) (LessEqual!114) (Mod!114) (Concat!272) (Not!114) (Plus!114) (SpaceValue!114 (value!6291 List!342)) (IntegerValue!344 (value!6292 Int) (text!1247 List!342)) (StringLiteralValue!343 (text!1248 List!342)) (FloatLiteralValue!229 (text!1249 List!342)) (BytesLiteralValue!114 (value!6293 List!342)) (CommentValue!229 (value!6294 List!342)) (StringLiteralValue!344 (value!6295 List!342)) (ErrorTokenValue!114 (msg!175 List!342)) )
))
(declare-datatypes ((TokenValueInjection!52 0))(
  ( (TokenValueInjection!53 (toValue!603 Int) (toChars!462 Int)) )
))
(declare-datatypes ((Rule!48 0))(
  ( (Rule!49 (regex!124 Regex!157) (tag!302 String!791) (isSeparator!124 Bool) (transformation!124 TokenValueInjection!52)) )
))
(declare-datatypes ((List!343 0))(
  ( (Nil!341) (Cons!341 (h!5737 Rule!48) (t!15119 List!343)) )
))
(declare-datatypes ((Token!26 0))(
  ( (Token!27 (value!6296 TokenValue!114) (rule!606 Rule!48) (size!392 Int) (originalCharacters!184 List!342)) )
))
(declare-datatypes ((List!344 0))(
  ( (Nil!342) (Cons!342 (h!5738 Token!26) (t!15120 List!344)) )
))
(declare-datatypes ((IArray!103 0))(
  ( (IArray!104 (innerList!109 List!344)) )
))
(declare-datatypes ((Conc!51 0))(
  ( (Node!51 (left!405 Conc!51) (right!735 Conc!51) (csize!332 Int) (cheight!262 Int)) (Leaf!208 (xs!2630 IArray!103) (csize!333 Int)) (Empty!51) )
))
(declare-datatypes ((BalanceConc!102 0))(
  ( (BalanceConc!103 (c!15438 Conc!51)) )
))
(declare-datatypes ((PrintableTokens!4 0))(
  ( (PrintableTokens!5 (rules!4754 List!343) (tokens!757 BalanceConc!102)) )
))
(declare-datatypes ((Hashable!73 0))(
  ( (HashableExt!72 (__x!645 Int)) )
))
(declare-datatypes ((array!259 0))(
  ( (array!260 (arr!149 (Array (_ BitVec 32) List!341)) (size!393 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!154 0))(
  ( (LongMapFixedSize!155 (defaultEntry!415 Int) (mask!757 (_ BitVec 32)) (extraKeys!323 (_ BitVec 32)) (zeroValue!333 List!341) (minValue!333 List!341) (_size!286 (_ BitVec 32)) (_keys!368 array!257) (_values!355 array!259) (_vacant!137 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!297 0))(
  ( (Cell!298 (v!12113 LongMapFixedSize!154)) )
))
(declare-datatypes ((MutLongMap!77 0))(
  ( (LongMap!77 (underlying!349 Cell!297)) (MutLongMapExt!76 (__x!646 Int)) )
))
(declare-datatypes ((Cell!299 0))(
  ( (Cell!300 (v!12114 MutLongMap!77)) )
))
(declare-datatypes ((MutableMap!73 0))(
  ( (MutableMapExt!72 (__x!647 Int)) (HashMap!73 (underlying!350 Cell!299) (hashF!1937 Hashable!73) (_size!287 (_ BitVec 32)) (defaultValue!221 Int)) )
))
(declare-datatypes ((CacheUp!64 0))(
  ( (CacheUp!65 (cache!552 MutableMap!73)) )
))
(declare-datatypes ((tuple3!86 0))(
  ( (tuple3!87 (_1!175 (InoxSet Context!78)) (_2!175 Int) (_3!43 Int)) )
))
(declare-datatypes ((tuple2!264 0))(
  ( (tuple2!265 (_1!176 tuple3!86) (_2!176 Int)) )
))
(declare-datatypes ((List!345 0))(
  ( (Nil!343) (Cons!343 (h!5739 tuple2!264) (t!15121 List!345)) )
))
(declare-datatypes ((array!261 0))(
  ( (array!262 (arr!150 (Array (_ BitVec 32) List!345)) (size!394 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!156 0))(
  ( (LongMapFixedSize!157 (defaultEntry!416 Int) (mask!758 (_ BitVec 32)) (extraKeys!324 (_ BitVec 32)) (zeroValue!334 List!345) (minValue!334 List!345) (_size!288 (_ BitVec 32)) (_keys!369 array!257) (_values!356 array!261) (_vacant!138 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!74 0))(
  ( (HashableExt!73 (__x!648 Int)) )
))
(declare-datatypes ((Cell!301 0))(
  ( (Cell!302 (v!12115 LongMapFixedSize!156)) )
))
(declare-datatypes ((MutLongMap!78 0))(
  ( (LongMap!78 (underlying!351 Cell!301)) (MutLongMapExt!77 (__x!649 Int)) )
))
(declare-datatypes ((Cell!303 0))(
  ( (Cell!304 (v!12116 MutLongMap!78)) )
))
(declare-datatypes ((MutableMap!74 0))(
  ( (MutableMapExt!73 (__x!650 Int)) (HashMap!74 (underlying!352 Cell!303) (hashF!1938 Hashable!74) (_size!289 (_ BitVec 32)) (defaultValue!222 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!14 0))(
  ( (CacheFurthestNullable!15 (cache!553 MutableMap!74) (totalInput!1480 BalanceConc!100)) )
))
(declare-datatypes ((Option!41 0))(
  ( (None!40) (Some!40 (v!12117 PrintableTokens!4)) )
))
(declare-datatypes ((tuple4!0 0))(
  ( (tuple4!1 (_1!177 Option!41) (_2!177 CacheUp!64) (_3!44 CacheDown!66) (_4!0 CacheFurthestNullable!14)) )
))
(declare-fun lt!2773 () tuple4!0)

(get-info :version)

(assert (=> b!34998 (= res!27807 ((_ is Some!40) (_1!177 lt!2773)))))

(declare-fun lt!2777 () CacheFurthestNullable!14)

(declare-fun cacheUp!368 () CacheUp!64)

(declare-fun lt!2775 () BalanceConc!100)

(declare-fun lexAndCheckPrintable!0 (BalanceConc!100 CacheUp!64 CacheDown!66 CacheFurthestNullable!14) tuple4!0)

(assert (=> b!34998 (= lt!2773 (lexAndCheckPrintable!0 lt!2775 cacheUp!368 cacheDown!381 lt!2777))))

(declare-fun tp!24109 () Bool)

(declare-fun tp!24115 () Bool)

(declare-fun e!16547 () Bool)

(declare-fun e!16544 () Bool)

(declare-fun array_inv!83 (array!257) Bool)

(declare-fun array_inv!84 (array!255) Bool)

(assert (=> b!34999 (= e!16547 (and tp!24120 tp!24109 tp!24115 (array_inv!83 (_keys!367 (v!12111 (underlying!347 (v!12112 (underlying!348 (cache!551 cacheDown!381))))))) (array_inv!84 (_values!354 (v!12111 (underlying!347 (v!12112 (underlying!348 (cache!551 cacheDown!381))))))) e!16544))))

(declare-fun b!35000 () Bool)

(declare-fun e!16545 () Bool)

(declare-fun e!16543 () Bool)

(assert (=> b!35000 (= e!16545 e!16543)))

(declare-fun b!35001 () Bool)

(declare-fun e!16531 () Bool)

(declare-fun tp!24116 () Bool)

(declare-fun mapRes!269 () Bool)

(assert (=> b!35001 (= e!16531 (and tp!24116 mapRes!269))))

(declare-fun condMapEmpty!268 () Bool)

(declare-fun mapDefault!268 () List!341)

(assert (=> b!35001 (= condMapEmpty!268 (= (arr!149 (_values!355 (v!12113 (underlying!349 (v!12114 (underlying!350 (cache!552 cacheUp!368))))))) ((as const (Array (_ BitVec 32) List!341)) mapDefault!268)))))

(declare-fun mapIsEmpty!268 () Bool)

(assert (=> mapIsEmpty!268 mapRes!269))

(declare-fun b!35002 () Bool)

(declare-fun e!16534 () Bool)

(assert (=> b!35002 (= e!16534 e!16547)))

(declare-fun mapNonEmpty!268 () Bool)

(declare-fun mapRes!268 () Bool)

(declare-fun tp!24122 () Bool)

(declare-fun tp!24117 () Bool)

(assert (=> mapNonEmpty!268 (= mapRes!268 (and tp!24122 tp!24117))))

(declare-fun mapRest!268 () (Array (_ BitVec 32) List!340))

(declare-fun mapValue!268 () List!340)

(declare-fun mapKey!268 () (_ BitVec 32))

(assert (=> mapNonEmpty!268 (= (arr!147 (_values!354 (v!12111 (underlying!347 (v!12112 (underlying!348 (cache!551 cacheDown!381))))))) (store mapRest!268 mapKey!268 mapValue!268))))

(declare-fun b!35003 () Bool)

(declare-fun e!16539 () Bool)

(assert (=> b!35003 (= e!16539 e!16534)))

(declare-fun b!35004 () Bool)

(declare-fun e!16536 () Bool)

(declare-fun lt!2778 () MutLongMap!77)

(assert (=> b!35004 (= e!16536 (and e!16545 ((_ is LongMap!77) lt!2778)))))

(assert (=> b!35004 (= lt!2778 (v!12114 (underlying!350 (cache!552 cacheUp!368))))))

(declare-fun b!35005 () Bool)

(declare-fun e!16529 () Bool)

(assert (=> b!35005 (= e!16528 e!16529)))

(declare-fun res!27805 () Bool)

(assert (=> b!35005 (=> (not res!27805) (not e!16529))))

(declare-fun valid!86 (CacheFurthestNullable!14) Bool)

(assert (=> b!35005 (= res!27805 (valid!86 lt!2777))))

(declare-fun hashF!328 () Hashable!74)

(declare-fun emptyFurthestNullableCache!5 (Hashable!74 BalanceConc!100 (_ BitVec 32)) CacheFurthestNullable!14)

(assert (=> b!35005 (= lt!2777 (emptyFurthestNullableCache!5 hashF!328 lt!2775 #b00000000000000000000000000010000))))

(declare-fun path!6 () String!791)

(declare-fun openFile!0 (String!791) BalanceConc!100)

(assert (=> b!35005 (= lt!2775 (openFile!0 path!6))))

(declare-fun b!35006 () Bool)

(declare-fun res!27803 () Bool)

(assert (=> b!35006 (=> (not res!27803) (not e!16529))))

(assert (=> b!35006 (= res!27803 (= (totalInput!1480 lt!2777) lt!2775))))

(declare-fun b!35007 () Bool)

(declare-fun e!16541 () Bool)

(assert (=> b!35007 (= e!16543 e!16541)))

(declare-fun b!35008 () Bool)

(declare-fun e!16530 () Bool)

(declare-fun lt!2772 () MutLongMap!76)

(assert (=> b!35008 (= e!16530 (and e!16539 ((_ is LongMap!76) lt!2772)))))

(assert (=> b!35008 (= lt!2772 (v!12112 (underlying!348 (cache!551 cacheDown!381))))))

(declare-fun b!35009 () Bool)

(declare-fun e!16546 () Bool)

(declare-fun e!16540 () Bool)

(assert (=> b!35009 (= e!16546 e!16540)))

(declare-fun e!16542 () Bool)

(assert (=> b!35010 (= e!16542 (and e!16536 tp!24110))))

(declare-fun mapNonEmpty!269 () Bool)

(declare-fun tp!24113 () Bool)

(declare-fun tp!24118 () Bool)

(assert (=> mapNonEmpty!269 (= mapRes!269 (and tp!24113 tp!24118))))

(declare-fun mapRest!269 () (Array (_ BitVec 32) List!341))

(declare-fun mapValue!269 () List!341)

(declare-fun mapKey!269 () (_ BitVec 32))

(assert (=> mapNonEmpty!269 (= (arr!149 (_values!355 (v!12113 (underlying!349 (v!12114 (underlying!350 (cache!552 cacheUp!368))))))) (store mapRest!269 mapKey!269 mapValue!269))))

(declare-fun b!35011 () Bool)

(assert (=> b!35011 (= e!16529 e!16527)))

(declare-fun res!27808 () Bool)

(assert (=> b!35011 (=> (not res!27808) (not e!16527))))

(declare-fun lt!2776 () List!343)

(declare-fun isEmpty!81 (List!343) Bool)

(assert (=> b!35011 (= res!27808 (not (isEmpty!81 lt!2776)))))

(declare-datatypes ((JsonLexer!12 0))(
  ( (JsonLexer!13) )
))
(declare-fun rules!109 (JsonLexer!12) List!343)

(assert (=> b!35011 (= lt!2776 (rules!109 JsonLexer!13))))

(declare-fun tp!24112 () Bool)

(declare-fun tp!24119 () Bool)

(declare-fun array_inv!85 (array!259) Bool)

(assert (=> b!35012 (= e!16541 (and tp!24111 tp!24112 tp!24119 (array_inv!83 (_keys!368 (v!12113 (underlying!349 (v!12114 (underlying!350 (cache!552 cacheUp!368))))))) (array_inv!85 (_values!355 (v!12113 (underlying!349 (v!12114 (underlying!350 (cache!552 cacheUp!368))))))) e!16531))))

(declare-fun res!27806 () Bool)

(assert (=> start!1810 (=> (not res!27806) (not e!16528))))

(declare-fun valid!87 (CacheUp!64) Bool)

(assert (=> start!1810 (= res!27806 (valid!87 cacheUp!368))))

(assert (=> start!1810 e!16528))

(declare-fun e!16533 () Bool)

(declare-fun inv!657 (CacheUp!64) Bool)

(assert (=> start!1810 (and (inv!657 cacheUp!368) e!16533)))

(declare-fun inv!658 (CacheDown!66) Bool)

(assert (=> start!1810 (and (inv!658 cacheDown!381) e!16546)))

(assert (=> start!1810 true))

(declare-fun inv!654 (String!791) Bool)

(assert (=> start!1810 (inv!654 path!6)))

(declare-fun b!35013 () Bool)

(assert (=> b!35013 (= e!16533 e!16542)))

(declare-fun b!35014 () Bool)

(declare-fun res!27809 () Bool)

(assert (=> b!35014 (=> (not res!27809) (not e!16527))))

(declare-datatypes ((LexerInterface!24 0))(
  ( (LexerInterfaceExt!21 (__x!651 Int)) (Lexer!22) )
))
(declare-fun rulesInvariant!17 (LexerInterface!24 List!343) Bool)

(assert (=> b!35014 (= res!27809 (rulesInvariant!17 Lexer!22 lt!2776))))

(declare-fun b!35015 () Bool)

(declare-fun tp!24114 () Bool)

(assert (=> b!35015 (= e!16544 (and tp!24114 mapRes!268))))

(declare-fun condMapEmpty!269 () Bool)

(declare-fun mapDefault!269 () List!340)

(assert (=> b!35015 (= condMapEmpty!269 (= (arr!147 (_values!354 (v!12111 (underlying!347 (v!12112 (underlying!348 (cache!551 cacheDown!381))))))) ((as const (Array (_ BitVec 32) List!340)) mapDefault!269)))))

(declare-fun mapIsEmpty!269 () Bool)

(assert (=> mapIsEmpty!269 mapRes!268))

(declare-fun b!35016 () Bool)

(assert (=> b!35016 (= e!16538 false)))

(declare-fun lt!2774 () Int)

(declare-fun size!395 (PrintableTokens!4) Int)

(assert (=> b!35016 (= lt!2774 (size!395 (v!12117 (_1!177 lt!2773))))))

(assert (=> b!35017 (= e!16540 (and e!16530 tp!24121))))

(assert (= (and start!1810 res!27806) b!34997))

(assert (= (and b!34997 res!27804) b!35005))

(assert (= (and b!35005 res!27805) b!35006))

(assert (= (and b!35006 res!27803) b!35011))

(assert (= (and b!35011 res!27808) b!35014))

(assert (= (and b!35014 res!27809) b!34998))

(assert (= (and b!34998 res!27807) b!35016))

(assert (= (and b!35001 condMapEmpty!268) mapIsEmpty!268))

(assert (= (and b!35001 (not condMapEmpty!268)) mapNonEmpty!269))

(assert (= b!35012 b!35001))

(assert (= b!35007 b!35012))

(assert (= b!35000 b!35007))

(assert (= (and b!35004 ((_ is LongMap!77) (v!12114 (underlying!350 (cache!552 cacheUp!368))))) b!35000))

(assert (= b!35010 b!35004))

(assert (= (and b!35013 ((_ is HashMap!73) (cache!552 cacheUp!368))) b!35010))

(assert (= start!1810 b!35013))

(assert (= (and b!35015 condMapEmpty!269) mapIsEmpty!269))

(assert (= (and b!35015 (not condMapEmpty!269)) mapNonEmpty!268))

(assert (= b!34999 b!35015))

(assert (= b!35002 b!34999))

(assert (= b!35003 b!35002))

(assert (= (and b!35008 ((_ is LongMap!76) (v!12112 (underlying!348 (cache!551 cacheDown!381))))) b!35003))

(assert (= b!35017 b!35008))

(assert (= (and b!35009 ((_ is HashMap!72) (cache!551 cacheDown!381))) b!35017))

(assert (= start!1810 b!35009))

(declare-fun m!10791 () Bool)

(assert (=> b!34999 m!10791))

(declare-fun m!10793 () Bool)

(assert (=> b!34999 m!10793))

(declare-fun m!10795 () Bool)

(assert (=> b!35011 m!10795))

(declare-fun m!10797 () Bool)

(assert (=> b!35011 m!10797))

(declare-fun m!10799 () Bool)

(assert (=> mapNonEmpty!269 m!10799))

(declare-fun m!10801 () Bool)

(assert (=> b!34997 m!10801))

(declare-fun m!10803 () Bool)

(assert (=> b!34998 m!10803))

(declare-fun m!10805 () Bool)

(assert (=> b!35012 m!10805))

(declare-fun m!10807 () Bool)

(assert (=> b!35012 m!10807))

(declare-fun m!10809 () Bool)

(assert (=> mapNonEmpty!268 m!10809))

(declare-fun m!10811 () Bool)

(assert (=> start!1810 m!10811))

(declare-fun m!10813 () Bool)

(assert (=> start!1810 m!10813))

(declare-fun m!10815 () Bool)

(assert (=> start!1810 m!10815))

(declare-fun m!10817 () Bool)

(assert (=> start!1810 m!10817))

(declare-fun m!10819 () Bool)

(assert (=> b!35014 m!10819))

(declare-fun m!10821 () Bool)

(assert (=> b!35005 m!10821))

(declare-fun m!10823 () Bool)

(assert (=> b!35005 m!10823))

(declare-fun m!10825 () Bool)

(assert (=> b!35005 m!10825))

(declare-fun m!10827 () Bool)

(assert (=> b!35016 m!10827))

(check-sat (not b_next!451) (not b!34999) (not b!35014) (not b!35016) b_and!489 b_and!485 b_and!487 (not b!34998) b_and!483 (not mapNonEmpty!268) (not b_next!455) (not mapNonEmpty!269) (not b!35011) (not b_next!449) (not b!35015) (not b_next!453) (not b!35001) (not b!34997) (not start!1810) (not b!35012) (not b!35005))
(check-sat (not b_next!451) (not b_next!449) b_and!489 b_and!485 b_and!487 b_and!483 (not b_next!453) (not b_next!455))
