; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64778 () Bool)

(assert start!64778)

(declare-fun b!662183 () Bool)

(declare-fun b_free!19149 () Bool)

(declare-fun b_next!19213 () Bool)

(assert (=> b!662183 (= b_free!19149 (not b_next!19213))))

(declare-fun tp!202133 () Bool)

(declare-fun b_and!62943 () Bool)

(assert (=> b!662183 (= tp!202133 b_and!62943)))

(declare-fun b!662182 () Bool)

(declare-fun b_free!19151 () Bool)

(declare-fun b_next!19215 () Bool)

(assert (=> b!662182 (= b_free!19151 (not b_next!19215))))

(declare-fun tp!202141 () Bool)

(declare-fun b_and!62945 () Bool)

(assert (=> b!662182 (= tp!202141 b_and!62945)))

(declare-fun b!662179 () Bool)

(declare-fun b_free!19153 () Bool)

(declare-fun b_next!19217 () Bool)

(assert (=> b!662179 (= b_free!19153 (not b_next!19217))))

(declare-fun tp!202138 () Bool)

(declare-fun b_and!62947 () Bool)

(assert (=> b!662179 (= tp!202138 b_and!62947)))

(declare-fun b!662177 () Bool)

(declare-fun b_free!19155 () Bool)

(declare-fun b_next!19219 () Bool)

(assert (=> b!662177 (= b_free!19155 (not b_next!19219))))

(declare-fun tp!202131 () Bool)

(declare-fun b_and!62949 () Bool)

(assert (=> b!662177 (= tp!202131 b_and!62949)))

(declare-fun b!662174 () Bool)

(declare-fun e!409733 () Bool)

(declare-fun e!409728 () Bool)

(assert (=> b!662174 (= e!409733 e!409728)))

(declare-fun b!662175 () Bool)

(declare-fun e!409724 () Bool)

(assert (=> b!662175 (= e!409724 false)))

(declare-datatypes ((Regex!1803 0))(
  ( (ElementMatch!1803 (c!119110 (_ BitVec 16))) (Concat!3305 (regOne!4118 Regex!1803) (regTwo!4118 Regex!1803)) (EmptyExpr!1803) (Star!1803 (reg!2132 Regex!1803)) (EmptyLang!1803) (Union!1803 (regOne!4119 Regex!1803) (regTwo!4119 Regex!1803)) )
))
(declare-datatypes ((List!7257 0))(
  ( (Nil!7243) (Cons!7243 (h!12644 Regex!1803) (t!86460 List!7257)) )
))
(declare-datatypes ((Context!430 0))(
  ( (Context!431 (exprs!715 List!7257)) )
))
(declare-datatypes ((tuple3!644 0))(
  ( (tuple3!645 (_1!4164 Regex!1803) (_2!4164 Context!430) (_3!373 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7582 0))(
  ( (tuple2!7583 (_1!4165 tuple3!644) (_2!4165 (InoxSet Context!430))) )
))
(declare-datatypes ((List!7258 0))(
  ( (Nil!7244) (Cons!7244 (h!12645 tuple2!7582) (t!86461 List!7258)) )
))
(declare-datatypes ((array!2643 0))(
  ( (array!2644 (arr!1197 (Array (_ BitVec 32) List!7258)) (size!5711 (_ BitVec 32))) )
))
(declare-datatypes ((array!2645 0))(
  ( (array!2646 (arr!1198 (Array (_ BitVec 32) (_ BitVec 64))) (size!5712 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1392 0))(
  ( (LongMapFixedSize!1393 (defaultEntry!1052 Int) (mask!2477 (_ BitVec 32)) (extraKeys!943 (_ BitVec 32)) (zeroValue!953 List!7258) (minValue!953 List!7258) (_size!1501 (_ BitVec 32)) (_keys!990 array!2645) (_values!975 array!2643) (_vacant!757 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2725 0))(
  ( (Cell!2726 (v!17377 LongMapFixedSize!1392)) )
))
(declare-datatypes ((MutLongMap!696 0))(
  ( (LongMap!696 (underlying!1575 Cell!2725)) (MutLongMapExt!695 (__x!5101 Int)) )
))
(declare-datatypes ((Cell!2727 0))(
  ( (Cell!2728 (v!17378 MutLongMap!696)) )
))
(declare-datatypes ((Hashable!668 0))(
  ( (HashableExt!667 (__x!5102 Int)) )
))
(declare-datatypes ((MutableMap!668 0))(
  ( (MutableMapExt!667 (__x!5103 Int)) (HashMap!668 (underlying!1576 Cell!2727) (hashF!2576 Hashable!668) (_size!1502 (_ BitVec 32)) (defaultValue!819 Int)) )
))
(declare-datatypes ((CacheDown!330 0))(
  ( (CacheDown!331 (cache!1055 MutableMap!668)) )
))
(declare-fun cacheDown!348 () CacheDown!330)

(declare-datatypes ((List!7259 0))(
  ( (Nil!7245) (Cons!7245 (h!12646 (_ BitVec 16)) (t!86462 List!7259)) )
))
(declare-datatypes ((TokenValue!1502 0))(
  ( (FloatLiteralValue!3004 (text!10959 List!7259)) (TokenValueExt!1501 (__x!5104 Int)) (Broken!7510 (value!46963 List!7259)) (Object!1515) (End!1502) (Def!1502) (Underscore!1502) (Match!1502) (Else!1502) (Error!1502) (Case!1502) (If!1502) (Extends!1502) (Abstract!1502) (Class!1502) (Val!1502) (DelimiterValue!3004 (del!1562 List!7259)) (KeywordValue!1508 (value!46964 List!7259)) (CommentValue!3004 (value!46965 List!7259)) (WhitespaceValue!3004 (value!46966 List!7259)) (IndentationValue!1502 (value!46967 List!7259)) (String!9247) (Int32!1502) (Broken!7511 (value!46968 List!7259)) (Boolean!1503) (Unit!12516) (OperatorValue!1505 (op!1562 List!7259)) (IdentifierValue!3004 (value!46969 List!7259)) (IdentifierValue!3005 (value!46970 List!7259)) (WhitespaceValue!3005 (value!46971 List!7259)) (True!3004) (False!3004) (Broken!7512 (value!46972 List!7259)) (Broken!7513 (value!46973 List!7259)) (True!3005) (RightBrace!1502) (RightBracket!1502) (Colon!1502) (Null!1502) (Comma!1502) (LeftBracket!1502) (False!3005) (LeftBrace!1502) (ImaginaryLiteralValue!1502 (text!10960 List!7259)) (StringLiteralValue!4506 (value!46974 List!7259)) (EOFValue!1502 (value!46975 List!7259)) (IdentValue!1502 (value!46976 List!7259)) (DelimiterValue!3005 (value!46977 List!7259)) (DedentValue!1502 (value!46978 List!7259)) (NewLineValue!1502 (value!46979 List!7259)) (IntegerValue!4506 (value!46980 (_ BitVec 32)) (text!10961 List!7259)) (IntegerValue!4507 (value!46981 Int) (text!10962 List!7259)) (Times!1502) (Or!1502) (Equal!1502) (Minus!1502) (Broken!7514 (value!46982 List!7259)) (And!1502) (Div!1502) (LessEqual!1502) (Mod!1502) (Concat!3306) (Not!1502) (Plus!1502) (SpaceValue!1502 (value!46983 List!7259)) (IntegerValue!4508 (value!46984 Int) (text!10963 List!7259)) (StringLiteralValue!4507 (text!10964 List!7259)) (FloatLiteralValue!3005 (text!10965 List!7259)) (BytesLiteralValue!1502 (value!46985 List!7259)) (CommentValue!3005 (value!46986 List!7259)) (StringLiteralValue!4508 (value!46987 List!7259)) (ErrorTokenValue!1502 (msg!1563 List!7259)) )
))
(declare-datatypes ((String!9248 0))(
  ( (String!9249 (value!46988 String)) )
))
(declare-datatypes ((IArray!5155 0))(
  ( (IArray!5156 (innerList!2635 List!7259)) )
))
(declare-datatypes ((Conc!2577 0))(
  ( (Node!2577 (left!5864 Conc!2577) (right!6194 Conc!2577) (csize!5384 Int) (cheight!2788 Int)) (Leaf!3827 (xs!5226 IArray!5155) (csize!5385 Int)) (Empty!2577) )
))
(declare-datatypes ((BalanceConc!5166 0))(
  ( (BalanceConc!5167 (c!119111 Conc!2577)) )
))
(declare-datatypes ((TokenValueInjection!2756 0))(
  ( (TokenValueInjection!2757 (toValue!2409 Int) (toChars!2268 Int)) )
))
(declare-datatypes ((Rule!2736 0))(
  ( (Rule!2737 (regex!1468 Regex!1803) (tag!1730 String!9248) (isSeparator!1468 Bool) (transformation!1468 TokenValueInjection!2756)) )
))
(declare-datatypes ((List!7260 0))(
  ( (Nil!7246) (Cons!7246 (h!12647 Rule!2736) (t!86463 List!7260)) )
))
(declare-fun lt!282168 () List!7260)

(declare-datatypes ((tuple2!7584 0))(
  ( (tuple2!7585 (_1!4166 Context!430) (_2!4166 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7586 0))(
  ( (tuple2!7587 (_1!4167 tuple2!7584) (_2!4167 (InoxSet Context!430))) )
))
(declare-datatypes ((List!7261 0))(
  ( (Nil!7247) (Cons!7247 (h!12648 tuple2!7586) (t!86464 List!7261)) )
))
(declare-datatypes ((Hashable!669 0))(
  ( (HashableExt!668 (__x!5105 Int)) )
))
(declare-datatypes ((array!2647 0))(
  ( (array!2648 (arr!1199 (Array (_ BitVec 32) List!7261)) (size!5713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1394 0))(
  ( (LongMapFixedSize!1395 (defaultEntry!1053 Int) (mask!2478 (_ BitVec 32)) (extraKeys!944 (_ BitVec 32)) (zeroValue!954 List!7261) (minValue!954 List!7261) (_size!1503 (_ BitVec 32)) (_keys!991 array!2645) (_values!976 array!2647) (_vacant!758 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2729 0))(
  ( (Cell!2730 (v!17379 LongMapFixedSize!1394)) )
))
(declare-datatypes ((MutLongMap!697 0))(
  ( (LongMap!697 (underlying!1577 Cell!2729)) (MutLongMapExt!696 (__x!5106 Int)) )
))
(declare-datatypes ((Cell!2731 0))(
  ( (Cell!2732 (v!17380 MutLongMap!697)) )
))
(declare-datatypes ((MutableMap!669 0))(
  ( (MutableMapExt!668 (__x!5107 Int)) (HashMap!669 (underlying!1578 Cell!2731) (hashF!2577 Hashable!669) (_size!1504 (_ BitVec 32)) (defaultValue!820 Int)) )
))
(declare-datatypes ((CacheUp!328 0))(
  ( (CacheUp!329 (cache!1056 MutableMap!669)) )
))
(declare-datatypes ((tuple3!646 0))(
  ( (tuple3!647 (_1!4168 Bool) (_2!4168 CacheUp!328) (_3!374 CacheDown!330)) )
))
(declare-fun lt!282171 () tuple3!646)

(declare-fun cacheUp!335 () CacheUp!328)

(declare-datatypes ((LexerInterface!1284 0))(
  ( (LexerInterfaceExt!1281 (__x!5108 Int)) (Lexer!1282) )
))
(declare-datatypes ((Token!2658 0))(
  ( (Token!2659 (value!46989 TokenValue!1502) (rule!2263 Rule!2736) (size!5714 Int) (originalCharacters!1500 List!7259)) )
))
(declare-datatypes ((List!7262 0))(
  ( (Nil!7248) (Cons!7248 (h!12649 Token!2658) (t!86465 List!7262)) )
))
(declare-datatypes ((IArray!5157 0))(
  ( (IArray!5158 (innerList!2636 List!7262)) )
))
(declare-datatypes ((Conc!2578 0))(
  ( (Node!2578 (left!5865 Conc!2578) (right!6195 Conc!2578) (csize!5386 Int) (cheight!2789 Int)) (Leaf!3828 (xs!5227 IArray!5157) (csize!5387 Int)) (Empty!2578) )
))
(declare-datatypes ((BalanceConc!5168 0))(
  ( (BalanceConc!5169 (c!119112 Conc!2578)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!14 (LexerInterface!1284 List!7260 BalanceConc!5168 CacheUp!328 CacheDown!330) tuple3!646)

(declare-fun singletonSeq!454 (Token!2658) BalanceConc!5168)

(declare-fun apply!1739 (TokenValueInjection!2756 BalanceConc!5166) TokenValue!1502)

(declare-datatypes ((KeywordValueInjection!60 0))(
  ( (KeywordValueInjection!61) )
))
(declare-fun injection!9 (KeywordValueInjection!60) TokenValueInjection!2756)

(declare-fun singletonSeq!455 ((_ BitVec 16)) BalanceConc!5166)

(declare-datatypes ((JsonLexer!242 0))(
  ( (JsonLexer!243) )
))
(declare-fun lBracketRule!0 (JsonLexer!242) Rule!2736)

(assert (=> b!662175 (= lt!282171 (rulesProduceEachTokenIndividuallyMem!14 Lexer!1282 lt!282168 (singletonSeq!454 (Token!2659 (apply!1739 (injection!9 KeywordValueInjection!61) (singletonSeq!455 #x005B)) (lBracketRule!0 JsonLexer!243) 1 (Cons!7245 #x005B Nil!7245))) cacheUp!335 cacheDown!348))))

(declare-fun b!662176 () Bool)

(declare-fun e!409723 () Bool)

(declare-fun tp!202134 () Bool)

(declare-fun mapRes!2764 () Bool)

(assert (=> b!662176 (= e!409723 (and tp!202134 mapRes!2764))))

(declare-fun condMapEmpty!2764 () Bool)

(declare-fun mapDefault!2764 () List!7258)

(assert (=> b!662176 (= condMapEmpty!2764 (= (arr!1197 (_values!975 (v!17377 (underlying!1575 (v!17378 (underlying!1576 (cache!1055 cacheDown!348))))))) ((as const (Array (_ BitVec 32) List!7258)) mapDefault!2764)))))

(declare-fun e!409732 () Bool)

(declare-fun tp!202135 () Bool)

(declare-fun tp!202132 () Bool)

(declare-fun e!409731 () Bool)

(declare-fun array_inv!873 (array!2645) Bool)

(declare-fun array_inv!874 (array!2647) Bool)

(assert (=> b!662177 (= e!409732 (and tp!202131 tp!202135 tp!202132 (array_inv!873 (_keys!991 (v!17379 (underlying!1577 (v!17380 (underlying!1578 (cache!1056 cacheUp!335))))))) (array_inv!874 (_values!976 (v!17379 (underlying!1577 (v!17380 (underlying!1578 (cache!1056 cacheUp!335))))))) e!409731))))

(declare-fun res!293724 () Bool)

(assert (=> start!64778 (=> (not res!293724) (not e!409724))))

(declare-fun isEmpty!4806 (List!7260) Bool)

(assert (=> start!64778 (= res!293724 (not (isEmpty!4806 lt!282168)))))

(declare-fun rules!109 (JsonLexer!242) List!7260)

(assert (=> start!64778 (= lt!282168 (rules!109 JsonLexer!243))))

(assert (=> start!64778 e!409724))

(declare-fun e!409727 () Bool)

(declare-fun inv!9315 (CacheUp!328) Bool)

(assert (=> start!64778 (and (inv!9315 cacheUp!335) e!409727)))

(declare-fun e!409720 () Bool)

(declare-fun inv!9316 (CacheDown!330) Bool)

(assert (=> start!64778 (and (inv!9316 cacheDown!348) e!409720)))

(declare-fun b!662178 () Bool)

(declare-fun res!293723 () Bool)

(assert (=> b!662178 (=> (not res!293723) (not e!409724))))

(declare-fun rulesInvariant!1219 (LexerInterface!1284 List!7260) Bool)

(assert (=> b!662178 (= res!293723 (rulesInvariant!1219 Lexer!1282 lt!282168))))

(declare-fun e!409729 () Bool)

(declare-fun e!409736 () Bool)

(assert (=> b!662179 (= e!409729 (and e!409736 tp!202138))))

(declare-fun mapIsEmpty!2764 () Bool)

(declare-fun mapRes!2765 () Bool)

(assert (=> mapIsEmpty!2764 mapRes!2765))

(declare-fun b!662180 () Bool)

(declare-fun e!409735 () Bool)

(declare-fun e!409730 () Bool)

(declare-fun lt!282170 () MutLongMap!696)

(get-info :version)

(assert (=> b!662180 (= e!409735 (and e!409730 ((_ is LongMap!696) lt!282170)))))

(assert (=> b!662180 (= lt!282170 (v!17378 (underlying!1576 (cache!1055 cacheDown!348))))))

(declare-fun b!662181 () Bool)

(declare-fun e!409725 () Bool)

(declare-fun e!409722 () Bool)

(assert (=> b!662181 (= e!409725 e!409722)))

(declare-fun tp!202143 () Bool)

(declare-fun tp!202144 () Bool)

(declare-fun array_inv!875 (array!2643) Bool)

(assert (=> b!662182 (= e!409722 (and tp!202141 tp!202144 tp!202143 (array_inv!873 (_keys!990 (v!17377 (underlying!1575 (v!17378 (underlying!1576 (cache!1055 cacheDown!348))))))) (array_inv!875 (_values!975 (v!17377 (underlying!1575 (v!17378 (underlying!1576 (cache!1055 cacheDown!348))))))) e!409723))))

(declare-fun mapNonEmpty!2764 () Bool)

(declare-fun tp!202140 () Bool)

(declare-fun tp!202139 () Bool)

(assert (=> mapNonEmpty!2764 (= mapRes!2765 (and tp!202140 tp!202139))))

(declare-fun mapKey!2765 () (_ BitVec 32))

(declare-fun mapRest!2765 () (Array (_ BitVec 32) List!7261))

(declare-fun mapValue!2764 () List!7261)

(assert (=> mapNonEmpty!2764 (= (arr!1199 (_values!976 (v!17379 (underlying!1577 (v!17380 (underlying!1578 (cache!1056 cacheUp!335))))))) (store mapRest!2765 mapKey!2765 mapValue!2764))))

(declare-fun e!409726 () Bool)

(assert (=> b!662183 (= e!409726 (and e!409735 tp!202133))))

(declare-fun mapIsEmpty!2765 () Bool)

(assert (=> mapIsEmpty!2765 mapRes!2764))

(declare-fun b!662184 () Bool)

(declare-fun lt!282169 () MutLongMap!697)

(assert (=> b!662184 (= e!409736 (and e!409733 ((_ is LongMap!697) lt!282169)))))

(assert (=> b!662184 (= lt!282169 (v!17380 (underlying!1578 (cache!1056 cacheUp!335))))))

(declare-fun b!662185 () Bool)

(assert (=> b!662185 (= e!409727 e!409729)))

(declare-fun b!662186 () Bool)

(assert (=> b!662186 (= e!409728 e!409732)))

(declare-fun b!662187 () Bool)

(assert (=> b!662187 (= e!409720 e!409726)))

(declare-fun mapNonEmpty!2765 () Bool)

(declare-fun tp!202142 () Bool)

(declare-fun tp!202136 () Bool)

(assert (=> mapNonEmpty!2765 (= mapRes!2764 (and tp!202142 tp!202136))))

(declare-fun mapRest!2764 () (Array (_ BitVec 32) List!7258))

(declare-fun mapKey!2764 () (_ BitVec 32))

(declare-fun mapValue!2765 () List!7258)

(assert (=> mapNonEmpty!2765 (= (arr!1197 (_values!975 (v!17377 (underlying!1575 (v!17378 (underlying!1576 (cache!1055 cacheDown!348))))))) (store mapRest!2764 mapKey!2764 mapValue!2765))))

(declare-fun b!662188 () Bool)

(declare-fun tp!202137 () Bool)

(assert (=> b!662188 (= e!409731 (and tp!202137 mapRes!2765))))

(declare-fun condMapEmpty!2765 () Bool)

(declare-fun mapDefault!2765 () List!7261)

(assert (=> b!662188 (= condMapEmpty!2765 (= (arr!1199 (_values!976 (v!17379 (underlying!1577 (v!17380 (underlying!1578 (cache!1056 cacheUp!335))))))) ((as const (Array (_ BitVec 32) List!7261)) mapDefault!2765)))))

(declare-fun b!662189 () Bool)

(assert (=> b!662189 (= e!409730 e!409725)))

(assert (= (and start!64778 res!293724) b!662178))

(assert (= (and b!662178 res!293723) b!662175))

(assert (= (and b!662188 condMapEmpty!2765) mapIsEmpty!2764))

(assert (= (and b!662188 (not condMapEmpty!2765)) mapNonEmpty!2764))

(assert (= b!662177 b!662188))

(assert (= b!662186 b!662177))

(assert (= b!662174 b!662186))

(assert (= (and b!662184 ((_ is LongMap!697) (v!17380 (underlying!1578 (cache!1056 cacheUp!335))))) b!662174))

(assert (= b!662179 b!662184))

(assert (= (and b!662185 ((_ is HashMap!669) (cache!1056 cacheUp!335))) b!662179))

(assert (= start!64778 b!662185))

(assert (= (and b!662176 condMapEmpty!2764) mapIsEmpty!2765))

(assert (= (and b!662176 (not condMapEmpty!2764)) mapNonEmpty!2765))

(assert (= b!662182 b!662176))

(assert (= b!662181 b!662182))

(assert (= b!662189 b!662181))

(assert (= (and b!662180 ((_ is LongMap!696) (v!17378 (underlying!1576 (cache!1055 cacheDown!348))))) b!662189))

(assert (= b!662183 b!662180))

(assert (= (and b!662187 ((_ is HashMap!668) (cache!1055 cacheDown!348))) b!662183))

(assert (= start!64778 b!662187))

(declare-fun m!928347 () Bool)

(assert (=> mapNonEmpty!2764 m!928347))

(declare-fun m!928349 () Bool)

(assert (=> start!64778 m!928349))

(declare-fun m!928351 () Bool)

(assert (=> start!64778 m!928351))

(declare-fun m!928353 () Bool)

(assert (=> start!64778 m!928353))

(declare-fun m!928355 () Bool)

(assert (=> start!64778 m!928355))

(declare-fun m!928357 () Bool)

(assert (=> b!662182 m!928357))

(declare-fun m!928359 () Bool)

(assert (=> b!662182 m!928359))

(declare-fun m!928361 () Bool)

(assert (=> mapNonEmpty!2765 m!928361))

(declare-fun m!928363 () Bool)

(assert (=> b!662177 m!928363))

(declare-fun m!928365 () Bool)

(assert (=> b!662177 m!928365))

(declare-fun m!928367 () Bool)

(assert (=> b!662175 m!928367))

(declare-fun m!928369 () Bool)

(assert (=> b!662175 m!928369))

(assert (=> b!662175 m!928367))

(declare-fun m!928371 () Bool)

(assert (=> b!662175 m!928371))

(declare-fun m!928373 () Bool)

(assert (=> b!662175 m!928373))

(assert (=> b!662175 m!928371))

(declare-fun m!928375 () Bool)

(assert (=> b!662175 m!928375))

(assert (=> b!662175 m!928375))

(declare-fun m!928377 () Bool)

(assert (=> b!662175 m!928377))

(declare-fun m!928379 () Bool)

(assert (=> b!662178 m!928379))

(check-sat (not b!662177) (not mapNonEmpty!2765) (not b!662188) (not b_next!19217) (not b!662175) (not b_next!19215) (not mapNonEmpty!2764) b_and!62943 (not b_next!19219) b_and!62947 b_and!62945 b_and!62949 (not b!662176) (not start!64778) (not b!662178) (not b!662182) (not b_next!19213))
(check-sat b_and!62949 (not b_next!19213) (not b_next!19217) (not b_next!19215) b_and!62943 (not b_next!19219) b_and!62947 b_and!62945)
