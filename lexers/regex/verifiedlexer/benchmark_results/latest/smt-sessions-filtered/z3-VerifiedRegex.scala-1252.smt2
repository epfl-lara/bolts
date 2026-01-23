; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64944 () Bool)

(assert start!64944)

(declare-fun b!663116 () Bool)

(declare-fun b_free!19197 () Bool)

(declare-fun b_next!19261 () Bool)

(assert (=> b!663116 (= b_free!19197 (not b_next!19261))))

(declare-fun tp!202578 () Bool)

(declare-fun b_and!62991 () Bool)

(assert (=> b!663116 (= tp!202578 b_and!62991)))

(declare-fun b!663107 () Bool)

(declare-fun b_free!19199 () Bool)

(declare-fun b_next!19263 () Bool)

(assert (=> b!663107 (= b_free!19199 (not b_next!19263))))

(declare-fun tp!202572 () Bool)

(declare-fun b_and!62993 () Bool)

(assert (=> b!663107 (= tp!202572 b_and!62993)))

(declare-fun b!663099 () Bool)

(declare-fun b_free!19201 () Bool)

(declare-fun b_next!19265 () Bool)

(assert (=> b!663099 (= b_free!19201 (not b_next!19265))))

(declare-fun tp!202567 () Bool)

(declare-fun b_and!62995 () Bool)

(assert (=> b!663099 (= tp!202567 b_and!62995)))

(declare-fun b!663113 () Bool)

(declare-fun b_free!19203 () Bool)

(declare-fun b_next!19267 () Bool)

(assert (=> b!663113 (= b_free!19203 (not b_next!19267))))

(declare-fun tp!202573 () Bool)

(declare-fun b_and!62997 () Bool)

(assert (=> b!663113 (= tp!202573 b_and!62997)))

(declare-fun e!410637 () Bool)

(declare-fun e!410645 () Bool)

(assert (=> b!663099 (= e!410637 (and e!410645 tp!202567))))

(declare-fun mapIsEmpty!2814 () Bool)

(declare-fun mapRes!2815 () Bool)

(assert (=> mapIsEmpty!2814 mapRes!2815))

(declare-fun b!663100 () Bool)

(declare-fun e!410631 () Bool)

(declare-fun tp!202571 () Bool)

(declare-fun mapRes!2814 () Bool)

(assert (=> b!663100 (= e!410631 (and tp!202571 mapRes!2814))))

(declare-fun condMapEmpty!2814 () Bool)

(declare-datatypes ((Hashable!679 0))(
  ( (HashableExt!678 (__x!5143 Int)) )
))
(declare-datatypes ((Regex!1809 0))(
  ( (ElementMatch!1809 (c!119231 (_ BitVec 16))) (Concat!3316 (regOne!4130 Regex!1809) (regTwo!4130 Regex!1809)) (EmptyExpr!1809) (Star!1809 (reg!2138 Regex!1809)) (EmptyLang!1809) (Union!1809 (regOne!4131 Regex!1809) (regTwo!4131 Regex!1809)) )
))
(declare-datatypes ((List!7291 0))(
  ( (Nil!7277) (Cons!7277 (h!12678 Regex!1809) (t!86636 List!7291)) )
))
(declare-datatypes ((Context!442 0))(
  ( (Context!443 (exprs!721 List!7291)) )
))
(declare-datatypes ((tuple2!7616 0))(
  ( (tuple2!7617 (_1!4191 Context!442) (_2!4191 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7618 0))(
  ( (tuple2!7619 (_1!4192 tuple2!7616) (_2!4192 (InoxSet Context!442))) )
))
(declare-datatypes ((List!7292 0))(
  ( (Nil!7278) (Cons!7278 (h!12679 tuple2!7618) (t!86637 List!7292)) )
))
(declare-datatypes ((array!2683 0))(
  ( (array!2684 (arr!1214 (Array (_ BitVec 32) List!7292)) (size!5734 (_ BitVec 32))) )
))
(declare-datatypes ((array!2685 0))(
  ( (array!2686 (arr!1215 (Array (_ BitVec 32) (_ BitVec 64))) (size!5735 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1414 0))(
  ( (LongMapFixedSize!1415 (defaultEntry!1063 Int) (mask!2491 (_ BitVec 32)) (extraKeys!954 (_ BitVec 32)) (zeroValue!964 List!7292) (minValue!964 List!7292) (_size!1523 (_ BitVec 32)) (_keys!1001 array!2685) (_values!986 array!2683) (_vacant!768 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2769 0))(
  ( (Cell!2770 (v!17400 LongMapFixedSize!1414)) )
))
(declare-datatypes ((MutLongMap!707 0))(
  ( (LongMap!707 (underlying!1597 Cell!2769)) (MutLongMapExt!706 (__x!5144 Int)) )
))
(declare-datatypes ((Cell!2771 0))(
  ( (Cell!2772 (v!17401 MutLongMap!707)) )
))
(declare-datatypes ((MutableMap!679 0))(
  ( (MutableMapExt!678 (__x!5145 Int)) (HashMap!679 (underlying!1598 Cell!2771) (hashF!2587 Hashable!679) (_size!1524 (_ BitVec 32)) (defaultValue!830 Int)) )
))
(declare-datatypes ((CacheUp!338 0))(
  ( (CacheUp!339 (cache!1066 MutableMap!679)) )
))
(declare-fun cacheUp!335 () CacheUp!338)

(declare-fun mapDefault!2814 () List!7292)

(assert (=> b!663100 (= condMapEmpty!2814 (= (arr!1214 (_values!986 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) ((as const (Array (_ BitVec 32) List!7292)) mapDefault!2814)))))

(declare-fun b!663101 () Bool)

(declare-fun e!410634 () Bool)

(declare-fun e!410629 () Bool)

(assert (=> b!663101 (= e!410634 e!410629)))

(declare-fun b!663102 () Bool)

(declare-fun e!410646 () Bool)

(assert (=> b!663102 (= e!410646 e!410637)))

(declare-fun b!663103 () Bool)

(declare-fun e!410633 () Bool)

(declare-fun tp!202576 () Bool)

(assert (=> b!663103 (= e!410633 (and tp!202576 mapRes!2815))))

(declare-fun condMapEmpty!2815 () Bool)

(declare-datatypes ((tuple3!664 0))(
  ( (tuple3!665 (_1!4193 Regex!1809) (_2!4193 Context!442) (_3!383 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7620 0))(
  ( (tuple2!7621 (_1!4194 tuple3!664) (_2!4194 (InoxSet Context!442))) )
))
(declare-datatypes ((List!7293 0))(
  ( (Nil!7279) (Cons!7279 (h!12680 tuple2!7620) (t!86638 List!7293)) )
))
(declare-datatypes ((array!2687 0))(
  ( (array!2688 (arr!1216 (Array (_ BitVec 32) List!7293)) (size!5736 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1416 0))(
  ( (LongMapFixedSize!1417 (defaultEntry!1064 Int) (mask!2492 (_ BitVec 32)) (extraKeys!955 (_ BitVec 32)) (zeroValue!965 List!7293) (minValue!965 List!7293) (_size!1525 (_ BitVec 32)) (_keys!1002 array!2685) (_values!987 array!2687) (_vacant!769 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2773 0))(
  ( (Cell!2774 (v!17402 LongMapFixedSize!1416)) )
))
(declare-datatypes ((MutLongMap!708 0))(
  ( (LongMap!708 (underlying!1599 Cell!2773)) (MutLongMapExt!707 (__x!5146 Int)) )
))
(declare-datatypes ((Cell!2775 0))(
  ( (Cell!2776 (v!17403 MutLongMap!708)) )
))
(declare-datatypes ((Hashable!680 0))(
  ( (HashableExt!679 (__x!5147 Int)) )
))
(declare-datatypes ((MutableMap!680 0))(
  ( (MutableMapExt!679 (__x!5148 Int)) (HashMap!680 (underlying!1600 Cell!2775) (hashF!2588 Hashable!680) (_size!1526 (_ BitVec 32)) (defaultValue!831 Int)) )
))
(declare-datatypes ((CacheDown!342 0))(
  ( (CacheDown!343 (cache!1067 MutableMap!680)) )
))
(declare-fun cacheDown!348 () CacheDown!342)

(declare-fun mapDefault!2815 () List!7293)

(assert (=> b!663103 (= condMapEmpty!2815 (= (arr!1216 (_values!987 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) ((as const (Array (_ BitVec 32) List!7293)) mapDefault!2815)))))

(declare-fun b!663105 () Bool)

(declare-fun e!410632 () Bool)

(declare-datatypes ((List!7294 0))(
  ( (Nil!7280) (Cons!7280 (h!12681 (_ BitVec 16)) (t!86639 List!7294)) )
))
(declare-datatypes ((TokenValue!1507 0))(
  ( (FloatLiteralValue!3014 (text!10994 List!7294)) (TokenValueExt!1506 (__x!5149 Int)) (Broken!7535 (value!47107 List!7294)) (Object!1520) (End!1507) (Def!1507) (Underscore!1507) (Match!1507) (Else!1507) (Error!1507) (Case!1507) (If!1507) (Extends!1507) (Abstract!1507) (Class!1507) (Val!1507) (DelimiterValue!3014 (del!1567 List!7294)) (KeywordValue!1513 (value!47108 List!7294)) (CommentValue!3014 (value!47109 List!7294)) (WhitespaceValue!3014 (value!47110 List!7294)) (IndentationValue!1507 (value!47111 List!7294)) (String!9274) (Int32!1507) (Broken!7536 (value!47112 List!7294)) (Boolean!1508) (Unit!12533) (OperatorValue!1510 (op!1567 List!7294)) (IdentifierValue!3014 (value!47113 List!7294)) (IdentifierValue!3015 (value!47114 List!7294)) (WhitespaceValue!3015 (value!47115 List!7294)) (True!3014) (False!3014) (Broken!7537 (value!47116 List!7294)) (Broken!7538 (value!47117 List!7294)) (True!3015) (RightBrace!1507) (RightBracket!1507) (Colon!1507) (Null!1507) (Comma!1507) (LeftBracket!1507) (False!3015) (LeftBrace!1507) (ImaginaryLiteralValue!1507 (text!10995 List!7294)) (StringLiteralValue!4521 (value!47118 List!7294)) (EOFValue!1507 (value!47119 List!7294)) (IdentValue!1507 (value!47120 List!7294)) (DelimiterValue!3015 (value!47121 List!7294)) (DedentValue!1507 (value!47122 List!7294)) (NewLineValue!1507 (value!47123 List!7294)) (IntegerValue!4521 (value!47124 (_ BitVec 32)) (text!10996 List!7294)) (IntegerValue!4522 (value!47125 Int) (text!10997 List!7294)) (Times!1507) (Or!1507) (Equal!1507) (Minus!1507) (Broken!7539 (value!47126 List!7294)) (And!1507) (Div!1507) (LessEqual!1507) (Mod!1507) (Concat!3317) (Not!1507) (Plus!1507) (SpaceValue!1507 (value!47127 List!7294)) (IntegerValue!4523 (value!47128 Int) (text!10998 List!7294)) (StringLiteralValue!4522 (text!10999 List!7294)) (FloatLiteralValue!3015 (text!11000 List!7294)) (BytesLiteralValue!1507 (value!47129 List!7294)) (CommentValue!3015 (value!47130 List!7294)) (StringLiteralValue!4523 (value!47131 List!7294)) (ErrorTokenValue!1507 (msg!1568 List!7294)) )
))
(declare-datatypes ((String!9275 0))(
  ( (String!9276 (value!47132 String)) )
))
(declare-datatypes ((IArray!5175 0))(
  ( (IArray!5176 (innerList!2645 List!7294)) )
))
(declare-datatypes ((Conc!2587 0))(
  ( (Node!2587 (left!5881 Conc!2587) (right!6211 Conc!2587) (csize!5404 Int) (cheight!2798 Int)) (Leaf!3840 (xs!5236 IArray!5175) (csize!5405 Int)) (Empty!2587) )
))
(declare-datatypes ((BalanceConc!5186 0))(
  ( (BalanceConc!5187 (c!119232 Conc!2587)) )
))
(declare-datatypes ((TokenValueInjection!2766 0))(
  ( (TokenValueInjection!2767 (toValue!2416 Int) (toChars!2275 Int)) )
))
(declare-datatypes ((Rule!2746 0))(
  ( (Rule!2747 (regex!1473 Regex!1809) (tag!1735 String!9275) (isSeparator!1473 Bool) (transformation!1473 TokenValueInjection!2766)) )
))
(declare-datatypes ((Token!2668 0))(
  ( (Token!2669 (value!47133 TokenValue!1507) (rule!2268 Rule!2746) (size!5737 Int) (originalCharacters!1505 List!7294)) )
))
(declare-datatypes ((List!7295 0))(
  ( (Nil!7281) (Cons!7281 (h!12682 Token!2668) (t!86640 List!7295)) )
))
(declare-datatypes ((IArray!5177 0))(
  ( (IArray!5178 (innerList!2646 List!7295)) )
))
(declare-datatypes ((Conc!2588 0))(
  ( (Node!2588 (left!5882 Conc!2588) (right!6212 Conc!2588) (csize!5406 Int) (cheight!2799 Int)) (Leaf!3841 (xs!5237 IArray!5177) (csize!5407 Int)) (Empty!2588) )
))
(declare-datatypes ((List!7296 0))(
  ( (Nil!7282) (Cons!7282 (h!12683 Rule!2746) (t!86641 List!7296)) )
))
(declare-datatypes ((BalanceConc!5188 0))(
  ( (BalanceConc!5189 (c!119233 Conc!2588)) )
))
(declare-datatypes ((PrintableTokens!236 0))(
  ( (PrintableTokens!237 (rules!8320 List!7296) (tokens!1293 BalanceConc!5188)) )
))
(declare-datatypes ((Option!1697 0))(
  ( (None!1696) (Some!1696 (v!17404 PrintableTokens!236)) )
))
(declare-fun lt!282395 () Option!1697)

(declare-fun isDefined!1431 (Option!1697) Bool)

(assert (=> b!663105 (= e!410632 (not (isDefined!1431 lt!282395)))))

(declare-fun b!663106 () Bool)

(declare-fun e!410641 () Bool)

(declare-fun e!410642 () Bool)

(declare-fun lt!282396 () MutLongMap!707)

(get-info :version)

(assert (=> b!663106 (= e!410641 (and e!410642 ((_ is LongMap!707) lt!282396)))))

(assert (=> b!663106 (= lt!282396 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))

(declare-fun tp!202568 () Bool)

(declare-fun tp!202577 () Bool)

(declare-fun e!410628 () Bool)

(declare-fun array_inv!886 (array!2685) Bool)

(declare-fun array_inv!887 (array!2683) Bool)

(assert (=> b!663107 (= e!410628 (and tp!202572 tp!202577 tp!202568 (array_inv!886 (_keys!1001 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) (array_inv!887 (_values!986 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) e!410631))))

(declare-fun b!663108 () Bool)

(declare-fun e!410639 () Bool)

(declare-fun lt!282394 () MutLongMap!708)

(assert (=> b!663108 (= e!410645 (and e!410639 ((_ is LongMap!708) lt!282394)))))

(assert (=> b!663108 (= lt!282394 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))

(declare-fun b!663109 () Bool)

(declare-fun res!294069 () Bool)

(declare-fun e!410640 () Bool)

(assert (=> b!663109 (=> (not res!294069) (not e!410640))))

(declare-fun lt!282392 () List!7296)

(declare-datatypes ((LexerInterface!1288 0))(
  ( (LexerInterfaceExt!1285 (__x!5150 Int)) (Lexer!1286) )
))
(declare-fun rulesInvariant!1223 (LexerInterface!1288 List!7296) Bool)

(assert (=> b!663109 (= res!294069 (rulesInvariant!1223 Lexer!1286 lt!282392))))

(declare-fun b!663110 () Bool)

(declare-fun e!410636 () Option!1697)

(assert (=> b!663110 (= e!410636 None!1696)))

(declare-fun b!663111 () Bool)

(assert (=> b!663111 (= e!410640 e!410632)))

(declare-fun res!294068 () Bool)

(assert (=> b!663111 (=> (not res!294068) (not e!410632))))

(declare-fun isEmpty!4816 (Option!1697) Bool)

(assert (=> b!663111 (= res!294068 (not (isEmpty!4816 lt!282395)))))

(assert (=> b!663111 (= lt!282395 e!410636)))

(declare-fun c!119230 () Bool)

(declare-fun lt!282393 () BalanceConc!5188)

(declare-datatypes ((tuple3!666 0))(
  ( (tuple3!667 (_1!4195 Bool) (_2!4195 CacheUp!338) (_3!384 CacheDown!342)) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!17 (LexerInterface!1288 List!7296 BalanceConc!5188 CacheUp!338 CacheDown!342) tuple3!666)

(assert (=> b!663111 (= c!119230 (not (_1!4195 (rulesProduceEachTokenIndividuallyMem!17 Lexer!1286 lt!282392 lt!282393 cacheUp!335 cacheDown!348))))))

(declare-fun singletonSeq!460 (Token!2668) BalanceConc!5188)

(declare-fun apply!1743 (TokenValueInjection!2766 BalanceConc!5186) TokenValue!1507)

(declare-datatypes ((KeywordValueInjection!66 0))(
  ( (KeywordValueInjection!67) )
))
(declare-fun injection!9 (KeywordValueInjection!66) TokenValueInjection!2766)

(declare-fun singletonSeq!461 ((_ BitVec 16)) BalanceConc!5186)

(declare-datatypes ((JsonLexer!250 0))(
  ( (JsonLexer!251) )
))
(declare-fun lBracketRule!0 (JsonLexer!250) Rule!2746)

(assert (=> b!663111 (= lt!282393 (singletonSeq!460 (Token!2669 (apply!1743 (injection!9 KeywordValueInjection!67) (singletonSeq!461 #x005B)) (lBracketRule!0 JsonLexer!251) 1 (Cons!7280 #x005B Nil!7280))))))

(declare-fun b!663112 () Bool)

(declare-fun e!410644 () Bool)

(declare-fun e!410635 () Bool)

(assert (=> b!663112 (= e!410644 e!410635)))

(declare-fun mapNonEmpty!2814 () Bool)

(declare-fun tp!202569 () Bool)

(declare-fun tp!202580 () Bool)

(assert (=> mapNonEmpty!2814 (= mapRes!2814 (and tp!202569 tp!202580))))

(declare-fun mapKey!2814 () (_ BitVec 32))

(declare-fun mapValue!2814 () List!7292)

(declare-fun mapRest!2814 () (Array (_ BitVec 32) List!7292))

(assert (=> mapNonEmpty!2814 (= (arr!1214 (_values!986 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) (store mapRest!2814 mapKey!2814 mapValue!2814))))

(declare-fun mapNonEmpty!2815 () Bool)

(declare-fun tp!202575 () Bool)

(declare-fun tp!202570 () Bool)

(assert (=> mapNonEmpty!2815 (= mapRes!2815 (and tp!202575 tp!202570))))

(declare-fun mapKey!2815 () (_ BitVec 32))

(declare-fun mapValue!2815 () List!7293)

(declare-fun mapRest!2815 () (Array (_ BitVec 32) List!7293))

(assert (=> mapNonEmpty!2815 (= (arr!1216 (_values!987 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) (store mapRest!2815 mapKey!2815 mapValue!2815))))

(declare-fun mapIsEmpty!2815 () Bool)

(assert (=> mapIsEmpty!2815 mapRes!2814))

(assert (=> b!663113 (= e!410635 (and e!410641 tp!202573))))

(declare-fun b!663114 () Bool)

(declare-fun printableTokensFromTokens!17 (List!7296 BalanceConc!5188) Option!1697)

(assert (=> b!663114 (= e!410636 (printableTokensFromTokens!17 lt!282392 lt!282393))))

(declare-fun res!294067 () Bool)

(assert (=> start!64944 (=> (not res!294067) (not e!410640))))

(declare-fun isEmpty!4817 (List!7296) Bool)

(assert (=> start!64944 (= res!294067 (not (isEmpty!4817 lt!282392)))))

(declare-fun rules!109 (JsonLexer!250) List!7296)

(assert (=> start!64944 (= lt!282392 (rules!109 JsonLexer!251))))

(assert (=> start!64944 e!410640))

(declare-fun inv!9341 (CacheDown!342) Bool)

(assert (=> start!64944 (and (inv!9341 cacheDown!348) e!410646)))

(declare-fun inv!9342 (CacheUp!338) Bool)

(assert (=> start!64944 (and (inv!9342 cacheUp!335) e!410644)))

(declare-fun b!663104 () Bool)

(declare-fun e!410643 () Bool)

(assert (=> b!663104 (= e!410642 e!410643)))

(declare-fun b!663115 () Bool)

(assert (=> b!663115 (= e!410639 e!410634)))

(declare-fun tp!202579 () Bool)

(declare-fun tp!202574 () Bool)

(declare-fun array_inv!888 (array!2687) Bool)

(assert (=> b!663116 (= e!410629 (and tp!202578 tp!202579 tp!202574 (array_inv!886 (_keys!1002 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) (array_inv!888 (_values!987 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) e!410633))))

(declare-fun b!663117 () Bool)

(assert (=> b!663117 (= e!410643 e!410628)))

(assert (= (and start!64944 res!294067) b!663109))

(assert (= (and b!663109 res!294069) b!663111))

(assert (= (and b!663111 c!119230) b!663110))

(assert (= (and b!663111 (not c!119230)) b!663114))

(assert (= (and b!663111 res!294068) b!663105))

(assert (= (and b!663103 condMapEmpty!2815) mapIsEmpty!2814))

(assert (= (and b!663103 (not condMapEmpty!2815)) mapNonEmpty!2815))

(assert (= b!663116 b!663103))

(assert (= b!663101 b!663116))

(assert (= b!663115 b!663101))

(assert (= (and b!663108 ((_ is LongMap!708) (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))) b!663115))

(assert (= b!663099 b!663108))

(assert (= (and b!663102 ((_ is HashMap!680) (cache!1067 cacheDown!348))) b!663099))

(assert (= start!64944 b!663102))

(assert (= (and b!663100 condMapEmpty!2814) mapIsEmpty!2815))

(assert (= (and b!663100 (not condMapEmpty!2814)) mapNonEmpty!2814))

(assert (= b!663107 b!663100))

(assert (= b!663117 b!663107))

(assert (= b!663104 b!663117))

(assert (= (and b!663106 ((_ is LongMap!707) (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))) b!663104))

(assert (= b!663113 b!663106))

(assert (= (and b!663112 ((_ is HashMap!679) (cache!1066 cacheUp!335))) b!663113))

(assert (= start!64944 b!663112))

(declare-fun m!929445 () Bool)

(assert (=> b!663111 m!929445))

(declare-fun m!929447 () Bool)

(assert (=> b!663111 m!929447))

(declare-fun m!929449 () Bool)

(assert (=> b!663111 m!929449))

(declare-fun m!929451 () Bool)

(assert (=> b!663111 m!929451))

(declare-fun m!929453 () Bool)

(assert (=> b!663111 m!929453))

(assert (=> b!663111 m!929445))

(assert (=> b!663111 m!929451))

(declare-fun m!929455 () Bool)

(assert (=> b!663111 m!929455))

(declare-fun m!929457 () Bool)

(assert (=> b!663111 m!929457))

(declare-fun m!929459 () Bool)

(assert (=> b!663114 m!929459))

(declare-fun m!929461 () Bool)

(assert (=> mapNonEmpty!2814 m!929461))

(declare-fun m!929463 () Bool)

(assert (=> b!663116 m!929463))

(declare-fun m!929465 () Bool)

(assert (=> b!663116 m!929465))

(declare-fun m!929467 () Bool)

(assert (=> start!64944 m!929467))

(declare-fun m!929469 () Bool)

(assert (=> start!64944 m!929469))

(declare-fun m!929471 () Bool)

(assert (=> start!64944 m!929471))

(declare-fun m!929473 () Bool)

(assert (=> start!64944 m!929473))

(declare-fun m!929475 () Bool)

(assert (=> b!663105 m!929475))

(declare-fun m!929477 () Bool)

(assert (=> mapNonEmpty!2815 m!929477))

(declare-fun m!929479 () Bool)

(assert (=> b!663109 m!929479))

(declare-fun m!929481 () Bool)

(assert (=> b!663107 m!929481))

(declare-fun m!929483 () Bool)

(assert (=> b!663107 m!929483))

(check-sat (not b_next!19265) b_and!62997 (not b!663116) (not b_next!19263) (not b!663100) (not start!64944) (not b!663114) (not b!663107) (not b!663109) b_and!62991 (not b_next!19261) (not b_next!19267) (not b!663105) b_and!62993 (not mapNonEmpty!2814) (not b!663103) (not mapNonEmpty!2815) (not b!663111) b_and!62995)
(check-sat (not b_next!19265) (not b_next!19267) b_and!62993 b_and!62997 b_and!62995 (not b_next!19263) b_and!62991 (not b_next!19261))
(get-model)

(declare-fun d!226543 () Bool)

(assert (=> d!226543 (= (array_inv!886 (_keys!1001 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) (bvsge (size!5735 (_keys!1001 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!663107 d!226543))

(declare-fun d!226545 () Bool)

(assert (=> d!226545 (= (array_inv!887 (_values!986 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) (bvsge (size!5734 (_values!986 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335))))))) #b00000000000000000000000000000000))))

(assert (=> b!663107 d!226545))

(declare-fun b!663128 () Bool)

(declare-fun e!410654 () Bool)

(declare-fun e!410653 () Bool)

(assert (=> b!663128 (= e!410654 e!410653)))

(declare-fun res!294074 () Bool)

(assert (=> b!663128 (=> (not res!294074) (not e!410653))))

(declare-fun lt!282399 () Option!1697)

(declare-fun get!2550 (Option!1697) PrintableTokens!236)

(assert (=> b!663128 (= res!294074 (= (rules!8320 (get!2550 lt!282399)) lt!282392))))

(declare-fun b!663129 () Bool)

(assert (=> b!663129 (= e!410653 (= (tokens!1293 (get!2550 lt!282399)) lt!282393))))

(declare-fun b!663127 () Bool)

(declare-fun e!410655 () Option!1697)

(assert (=> b!663127 (= e!410655 None!1696)))

(declare-fun d!226547 () Bool)

(assert (=> d!226547 e!410654))

(declare-fun res!294075 () Bool)

(assert (=> d!226547 (=> res!294075 e!410654)))

(assert (=> d!226547 (= res!294075 (isEmpty!4816 lt!282399))))

(assert (=> d!226547 (= lt!282399 e!410655)))

(declare-fun c!119236 () Bool)

(declare-fun separableTokens!49 (LexerInterface!1288 BalanceConc!5188 List!7296) Bool)

(assert (=> d!226547 (= c!119236 (separableTokens!49 Lexer!1286 lt!282393 lt!282392))))

(assert (=> d!226547 (not (isEmpty!4817 lt!282392))))

(assert (=> d!226547 (= (printableTokensFromTokens!17 lt!282392 lt!282393) lt!282399)))

(declare-fun b!663126 () Bool)

(assert (=> b!663126 (= e!410655 (Some!1696 (PrintableTokens!237 lt!282392 lt!282393)))))

(assert (= (and d!226547 c!119236) b!663126))

(assert (= (and d!226547 (not c!119236)) b!663127))

(assert (= (and d!226547 (not res!294075)) b!663128))

(assert (= (and b!663128 res!294074) b!663129))

(declare-fun m!929485 () Bool)

(assert (=> b!663128 m!929485))

(assert (=> b!663129 m!929485))

(declare-fun m!929487 () Bool)

(assert (=> d!226547 m!929487))

(declare-fun m!929489 () Bool)

(assert (=> d!226547 m!929489))

(assert (=> d!226547 m!929467))

(assert (=> b!663114 d!226547))

(declare-fun d!226549 () Bool)

(assert (=> d!226549 (= (isEmpty!4816 lt!282395) (not ((_ is Some!1696) lt!282395)))))

(assert (=> b!663111 d!226549))

(declare-fun b!663146 () Bool)

(declare-fun e!410667 () Bool)

(assert (=> b!663146 (= e!410667 true)))

(declare-fun b!663145 () Bool)

(declare-fun e!410666 () Bool)

(assert (=> b!663145 (= e!410666 e!410667)))

(declare-fun b!663144 () Bool)

(declare-fun e!410665 () Bool)

(assert (=> b!663144 (= e!410665 e!410666)))

(declare-fun d!226551 () Bool)

(assert (=> d!226551 e!410665))

(assert (= b!663145 b!663146))

(assert (= b!663144 b!663145))

(assert (= (and d!226551 ((_ is Cons!7282) lt!282392)) b!663144))

(declare-fun order!5277 () Int)

(declare-fun order!5275 () Int)

(declare-fun lambda!20650 () Int)

(declare-fun dynLambda!3831 (Int Int) Int)

(declare-fun dynLambda!3832 (Int Int) Int)

(assert (=> b!663146 (< (dynLambda!3831 order!5275 (toValue!2416 (transformation!1473 (h!12683 lt!282392)))) (dynLambda!3832 order!5277 lambda!20650))))

(declare-fun order!5279 () Int)

(declare-fun dynLambda!3833 (Int Int) Int)

(assert (=> b!663146 (< (dynLambda!3833 order!5279 (toChars!2275 (transformation!1473 (h!12683 lt!282392)))) (dynLambda!3832 order!5277 lambda!20650))))

(assert (=> d!226551 true))

(declare-fun lt!282406 () tuple3!666)

(declare-fun forall!1924 (BalanceConc!5188 Int) Bool)

(assert (=> d!226551 (= (_1!4195 lt!282406) (forall!1924 lt!282393 lambda!20650))))

(declare-fun e!410658 () tuple3!666)

(assert (=> d!226551 (= lt!282406 e!410658)))

(declare-fun c!119239 () Bool)

(declare-fun isEmpty!4818 (BalanceConc!5188) Bool)

(assert (=> d!226551 (= c!119239 (isEmpty!4818 lt!282393))))

(assert (=> d!226551 (not (isEmpty!4817 lt!282392))))

(assert (=> d!226551 (= (rulesProduceEachTokenIndividuallyMem!17 Lexer!1286 lt!282392 lt!282393 cacheUp!335 cacheDown!348) lt!282406)))

(declare-fun b!663134 () Bool)

(assert (=> b!663134 (= e!410658 (tuple3!667 true cacheUp!335 cacheDown!348))))

(declare-fun b!663135 () Bool)

(declare-fun lt!282408 () tuple3!666)

(declare-fun lt!282407 () tuple3!666)

(assert (=> b!663135 (= e!410658 (tuple3!667 (and (_1!4195 lt!282408) (_1!4195 lt!282407)) (_2!4195 lt!282407) (_3!384 lt!282407)))))

(declare-fun rulesProduceIndividualTokenMem!9 (LexerInterface!1288 List!7296 Token!2668 CacheUp!338 CacheDown!342) tuple3!666)

(declare-fun head!1384 (BalanceConc!5188) Token!2668)

(assert (=> b!663135 (= lt!282408 (rulesProduceIndividualTokenMem!9 Lexer!1286 lt!282392 (head!1384 lt!282393) cacheUp!335 cacheDown!348))))

(declare-fun tail!942 (BalanceConc!5188) BalanceConc!5188)

(assert (=> b!663135 (= lt!282407 (rulesProduceEachTokenIndividuallyMem!17 Lexer!1286 lt!282392 (tail!942 lt!282393) (_2!4195 lt!282408) (_3!384 lt!282408)))))

(assert (= (and d!226551 c!119239) b!663134))

(assert (= (and d!226551 (not c!119239)) b!663135))

(declare-fun m!929491 () Bool)

(assert (=> d!226551 m!929491))

(declare-fun m!929493 () Bool)

(assert (=> d!226551 m!929493))

(assert (=> d!226551 m!929467))

(declare-fun m!929495 () Bool)

(assert (=> b!663135 m!929495))

(assert (=> b!663135 m!929495))

(declare-fun m!929497 () Bool)

(assert (=> b!663135 m!929497))

(declare-fun m!929499 () Bool)

(assert (=> b!663135 m!929499))

(assert (=> b!663135 m!929499))

(declare-fun m!929501 () Bool)

(assert (=> b!663135 m!929501))

(assert (=> b!663111 d!226551))

(declare-fun d!226553 () Bool)

(assert (=> d!226553 true))

(assert (=> d!226553 true))

(assert (=> d!226553 true))

(assert (=> d!226553 true))

(declare-fun b!663171 () Bool)

(declare-fun e!410682 () Bool)

(declare-fun x!146869 () BalanceConc!5186)

(declare-fun tp!202587 () Bool)

(declare-fun inv!9343 (Conc!2587) Bool)

(assert (=> b!663171 (= e!410682 (and (inv!9343 (c!119232 x!146869)) tp!202587))))

(declare-fun inst!352 () Bool)

(declare-fun inv!9344 (BalanceConc!5186) Bool)

(declare-fun list!3067 (BalanceConc!5186) List!7294)

(declare-fun toCharacters!4 (KeywordValueInjection!66 TokenValue!1507) BalanceConc!5186)

(declare-fun toValue!11 (KeywordValueInjection!66 BalanceConc!5186) TokenValue!1507)

(assert (=> d!226553 (= inst!352 (=> (and (inv!9344 x!146869) e!410682) (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 x!146869))))))

(assert (= d!226553 b!663171))

(declare-fun m!929503 () Bool)

(assert (=> b!663171 m!929503))

(declare-fun m!929505 () Bool)

(assert (=> d!226553 m!929505))

(declare-fun m!929507 () Bool)

(assert (=> d!226553 m!929507))

(assert (=> d!226553 m!929505))

(declare-fun m!929509 () Bool)

(assert (=> d!226553 m!929509))

(declare-fun m!929511 () Bool)

(assert (=> d!226553 m!929511))

(assert (=> d!226553 m!929507))

(declare-fun m!929513 () Bool)

(assert (=> d!226553 m!929513))

(declare-fun res!294084 () Bool)

(declare-fun e!410683 () Bool)

(assert (=> d!226553 (=> res!294084 e!410683)))

(declare-fun x!146870 () BalanceConc!5186)

(declare-fun x!146871 () BalanceConc!5186)

(assert (=> d!226553 (= res!294084 (not (= (list!3067 x!146870) (list!3067 x!146871))))))

(declare-fun inst!353 () Bool)

(declare-fun e!410685 () Bool)

(declare-fun e!410684 () Bool)

(assert (=> d!226553 (= inst!353 (=> (and (inv!9344 x!146870) e!410684 (inv!9344 x!146871) e!410685) e!410683))))

(declare-fun b!663172 () Bool)

(assert (=> b!663172 (= e!410683 (= (toValue!11 KeywordValueInjection!67 x!146870) (toValue!11 KeywordValueInjection!67 x!146871)))))

(declare-fun b!663173 () Bool)

(declare-fun tp!202588 () Bool)

(assert (=> b!663173 (= e!410684 (and (inv!9343 (c!119232 x!146870)) tp!202588))))

(declare-fun b!663174 () Bool)

(declare-fun tp!202589 () Bool)

(assert (=> b!663174 (= e!410685 (and (inv!9343 (c!119232 x!146871)) tp!202589))))

(assert (= (and d!226553 (not res!294084)) b!663172))

(assert (= d!226553 b!663173))

(assert (= d!226553 b!663174))

(declare-fun m!929515 () Bool)

(assert (=> d!226553 m!929515))

(declare-fun m!929517 () Bool)

(assert (=> d!226553 m!929517))

(declare-fun m!929519 () Bool)

(assert (=> d!226553 m!929519))

(declare-fun m!929521 () Bool)

(assert (=> d!226553 m!929521))

(declare-fun m!929523 () Bool)

(assert (=> b!663172 m!929523))

(declare-fun m!929525 () Bool)

(assert (=> b!663172 m!929525))

(declare-fun m!929527 () Bool)

(assert (=> b!663173 m!929527))

(declare-fun m!929529 () Bool)

(assert (=> b!663174 m!929529))

(declare-fun bs!95091 () Bool)

(declare-fun neg-inst!353 () Bool)

(declare-fun s!44941 () Bool)

(assert (= bs!95091 (and neg-inst!353 s!44941)))

(assert (=> bs!95091 (=> true (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 x!146869)))))

(assert (=> m!929505 m!929507))

(assert (=> m!929505 m!929513))

(assert (=> m!929505 m!929511))

(assert (=> m!929505 s!44941))

(assert (=> m!929511 s!44941))

(declare-fun bs!95092 () Bool)

(assert (= bs!95092 (and neg-inst!353 d!226553)))

(assert (=> bs!95092 (= true inst!352)))

(declare-fun bs!95093 () Bool)

(declare-fun neg-inst!352 () Bool)

(declare-fun s!44943 () Bool)

(assert (= bs!95093 (and neg-inst!352 s!44943)))

(declare-fun res!294085 () Bool)

(declare-fun e!410686 () Bool)

(assert (=> bs!95093 (=> res!294085 e!410686)))

(assert (=> bs!95093 (= res!294085 (not (= (list!3067 x!146870) (list!3067 x!146870))))))

(assert (=> bs!95093 (=> true e!410686)))

(declare-fun b!663175 () Bool)

(assert (=> b!663175 (= e!410686 (= (toValue!11 KeywordValueInjection!67 x!146870) (toValue!11 KeywordValueInjection!67 x!146870)))))

(assert (= (and bs!95093 (not res!294085)) b!663175))

(assert (=> m!929523 m!929515))

(assert (=> m!929523 m!929515))

(assert (=> m!929523 s!44943))

(assert (=> m!929523 s!44943))

(declare-fun bs!95094 () Bool)

(declare-fun s!44945 () Bool)

(assert (= bs!95094 (and neg-inst!352 s!44945)))

(declare-fun res!294086 () Bool)

(declare-fun e!410687 () Bool)

(assert (=> bs!95094 (=> res!294086 e!410687)))

(assert (=> bs!95094 (= res!294086 (not (= (list!3067 x!146869) (list!3067 x!146870))))))

(assert (=> bs!95094 (=> true e!410687)))

(declare-fun b!663176 () Bool)

(assert (=> b!663176 (= e!410687 (= (toValue!11 KeywordValueInjection!67 x!146869) (toValue!11 KeywordValueInjection!67 x!146870)))))

(assert (= (and bs!95094 (not res!294086)) b!663176))

(declare-fun bs!95095 () Bool)

(assert (= bs!95095 (and m!929505 m!929523)))

(assert (=> bs!95095 m!929511))

(assert (=> bs!95095 m!929515))

(assert (=> bs!95095 s!44945))

(declare-fun bs!95096 () Bool)

(declare-fun s!44947 () Bool)

(assert (= bs!95096 (and neg-inst!352 s!44947)))

(declare-fun res!294087 () Bool)

(declare-fun e!410688 () Bool)

(assert (=> bs!95096 (=> res!294087 e!410688)))

(assert (=> bs!95096 (= res!294087 (not (= (list!3067 x!146869) (list!3067 x!146869))))))

(assert (=> bs!95096 (=> true e!410688)))

(declare-fun b!663177 () Bool)

(assert (=> b!663177 (= e!410688 (= (toValue!11 KeywordValueInjection!67 x!146869) (toValue!11 KeywordValueInjection!67 x!146869)))))

(assert (= (and bs!95096 (not res!294087)) b!663177))

(assert (=> m!929505 m!929511))

(assert (=> m!929505 m!929511))

(assert (=> m!929505 s!44947))

(declare-fun bs!95097 () Bool)

(declare-fun s!44949 () Bool)

(assert (= bs!95097 (and neg-inst!352 s!44949)))

(declare-fun res!294088 () Bool)

(declare-fun e!410689 () Bool)

(assert (=> bs!95097 (=> res!294088 e!410689)))

(assert (=> bs!95097 (= res!294088 (not (= (list!3067 x!146870) (list!3067 x!146869))))))

(assert (=> bs!95097 (=> true e!410689)))

(declare-fun b!663178 () Bool)

(assert (=> b!663178 (= e!410689 (= (toValue!11 KeywordValueInjection!67 x!146870) (toValue!11 KeywordValueInjection!67 x!146869)))))

(assert (= (and bs!95097 (not res!294088)) b!663178))

(assert (=> bs!95095 m!929515))

(assert (=> bs!95095 m!929511))

(assert (=> bs!95095 s!44949))

(assert (=> m!929505 s!44947))

(declare-fun bs!95098 () Bool)

(declare-fun s!44951 () Bool)

(assert (= bs!95098 (and neg-inst!352 s!44951)))

(declare-fun res!294089 () Bool)

(declare-fun e!410690 () Bool)

(assert (=> bs!95098 (=> res!294089 e!410690)))

(assert (=> bs!95098 (= res!294089 (not (= (list!3067 x!146871) (list!3067 x!146870))))))

(assert (=> bs!95098 (=> true e!410690)))

(declare-fun b!663179 () Bool)

(assert (=> b!663179 (= e!410690 (= (toValue!11 KeywordValueInjection!67 x!146871) (toValue!11 KeywordValueInjection!67 x!146870)))))

(assert (= (and bs!95098 (not res!294089)) b!663179))

(declare-fun bs!95099 () Bool)

(assert (= bs!95099 (and m!929517 m!929523)))

(assert (=> bs!95099 m!929517))

(assert (=> bs!95099 m!929515))

(assert (=> bs!95099 s!44951))

(declare-fun bs!95100 () Bool)

(declare-fun s!44953 () Bool)

(assert (= bs!95100 (and neg-inst!352 s!44953)))

(declare-fun res!294090 () Bool)

(declare-fun e!410691 () Bool)

(assert (=> bs!95100 (=> res!294090 e!410691)))

(assert (=> bs!95100 (= res!294090 (not (= (list!3067 x!146871) (list!3067 x!146869))))))

(assert (=> bs!95100 (=> true e!410691)))

(declare-fun b!663180 () Bool)

(assert (=> b!663180 (= e!410691 (= (toValue!11 KeywordValueInjection!67 x!146871) (toValue!11 KeywordValueInjection!67 x!146869)))))

(assert (= (and bs!95100 (not res!294090)) b!663180))

(declare-fun bs!95101 () Bool)

(assert (= bs!95101 (and m!929517 m!929505)))

(assert (=> bs!95101 m!929517))

(assert (=> bs!95101 m!929511))

(assert (=> bs!95101 s!44953))

(declare-fun bs!95102 () Bool)

(declare-fun s!44955 () Bool)

(assert (= bs!95102 (and neg-inst!352 s!44955)))

(declare-fun res!294091 () Bool)

(declare-fun e!410692 () Bool)

(assert (=> bs!95102 (=> res!294091 e!410692)))

(assert (=> bs!95102 (= res!294091 (not (= (list!3067 x!146871) (list!3067 x!146871))))))

(assert (=> bs!95102 (=> true e!410692)))

(declare-fun b!663181 () Bool)

(assert (=> b!663181 (= e!410692 (= (toValue!11 KeywordValueInjection!67 x!146871) (toValue!11 KeywordValueInjection!67 x!146871)))))

(assert (= (and bs!95102 (not res!294091)) b!663181))

(assert (=> m!929517 s!44955))

(declare-fun bs!95103 () Bool)

(declare-fun s!44957 () Bool)

(assert (= bs!95103 (and neg-inst!352 s!44957)))

(declare-fun res!294092 () Bool)

(declare-fun e!410693 () Bool)

(assert (=> bs!95103 (=> res!294092 e!410693)))

(assert (=> bs!95103 (= res!294092 (not (= (list!3067 x!146870) (list!3067 x!146871))))))

(assert (=> bs!95103 (=> true e!410693)))

(declare-fun b!663182 () Bool)

(assert (=> b!663182 (= e!410693 (= (toValue!11 KeywordValueInjection!67 x!146870) (toValue!11 KeywordValueInjection!67 x!146871)))))

(assert (= (and bs!95103 (not res!294092)) b!663182))

(assert (=> bs!95099 m!929515))

(assert (=> bs!95099 m!929517))

(assert (=> bs!95099 s!44957))

(declare-fun bs!95104 () Bool)

(declare-fun s!44959 () Bool)

(assert (= bs!95104 (and neg-inst!352 s!44959)))

(declare-fun res!294093 () Bool)

(declare-fun e!410694 () Bool)

(assert (=> bs!95104 (=> res!294093 e!410694)))

(assert (=> bs!95104 (= res!294093 (not (= (list!3067 x!146869) (list!3067 x!146871))))))

(assert (=> bs!95104 (=> true e!410694)))

(declare-fun b!663183 () Bool)

(assert (=> b!663183 (= e!410694 (= (toValue!11 KeywordValueInjection!67 x!146869) (toValue!11 KeywordValueInjection!67 x!146871)))))

(assert (= (and bs!95104 (not res!294093)) b!663183))

(assert (=> bs!95101 m!929511))

(assert (=> bs!95101 m!929517))

(assert (=> bs!95101 s!44959))

(assert (=> m!929517 s!44955))

(declare-fun bs!95105 () Bool)

(assert (= bs!95105 (and m!929511 m!929523)))

(assert (=> bs!95105 s!44945))

(declare-fun bs!95106 () Bool)

(assert (= bs!95106 (and m!929511 m!929505)))

(assert (=> bs!95106 s!44947))

(declare-fun bs!95107 () Bool)

(assert (= bs!95107 (and m!929511 m!929517)))

(assert (=> bs!95107 s!44959))

(assert (=> m!929511 s!44947))

(assert (=> bs!95105 s!44949))

(assert (=> bs!95106 s!44947))

(assert (=> bs!95107 s!44953))

(assert (=> m!929511 s!44947))

(declare-fun bs!95108 () Bool)

(assert (= bs!95108 (and m!929515 m!929523)))

(assert (=> bs!95108 s!44943))

(declare-fun bs!95109 () Bool)

(assert (= bs!95109 (and m!929515 m!929505 m!929511)))

(assert (=> bs!95109 s!44949))

(declare-fun bs!95110 () Bool)

(assert (= bs!95110 (and m!929515 m!929517)))

(assert (=> bs!95110 s!44957))

(assert (=> m!929515 s!44943))

(assert (=> bs!95108 s!44943))

(assert (=> bs!95109 s!44945))

(assert (=> bs!95110 s!44951))

(assert (=> m!929515 s!44943))

(declare-fun bs!95111 () Bool)

(assert (= bs!95111 (and m!929525 m!929523 m!929515)))

(assert (=> bs!95111 s!44951))

(declare-fun bs!95112 () Bool)

(assert (= bs!95112 (and m!929525 m!929505 m!929511)))

(assert (=> bs!95112 s!44953))

(declare-fun bs!95113 () Bool)

(assert (= bs!95113 (and m!929525 m!929517)))

(assert (=> bs!95113 s!44955))

(assert (=> m!929525 s!44955))

(assert (=> bs!95111 s!44957))

(assert (=> bs!95112 s!44959))

(assert (=> bs!95113 s!44955))

(assert (=> m!929525 s!44955))

(declare-fun bs!95114 () Bool)

(declare-fun s!44961 () Bool)

(assert (= bs!95114 (and neg-inst!352 s!44961)))

(declare-fun res!294094 () Bool)

(declare-fun e!410695 () Bool)

(assert (=> bs!95114 (=> res!294094 e!410695)))

(assert (=> bs!95114 (= res!294094 (not (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 x!146870))))))

(assert (=> bs!95114 (=> true e!410695)))

(declare-fun b!663184 () Bool)

(assert (=> b!663184 (= e!410695 (= (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (toValue!11 KeywordValueInjection!67 x!146870)))))

(assert (= (and bs!95114 (not res!294094)) b!663184))

(declare-fun bs!95115 () Bool)

(assert (= bs!95115 (and m!929513 m!929523 m!929515)))

(assert (=> bs!95115 m!929513))

(assert (=> bs!95115 m!929515))

(assert (=> bs!95115 s!44961))

(declare-fun bs!95116 () Bool)

(declare-fun s!44963 () Bool)

(assert (= bs!95116 (and neg-inst!352 s!44963)))

(declare-fun res!294095 () Bool)

(declare-fun e!410696 () Bool)

(assert (=> bs!95116 (=> res!294095 e!410696)))

(assert (=> bs!95116 (= res!294095 (not (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 x!146869))))))

(assert (=> bs!95116 (=> true e!410696)))

(declare-fun b!663185 () Bool)

(assert (=> b!663185 (= e!410696 (= (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (toValue!11 KeywordValueInjection!67 x!146869)))))

(assert (= (and bs!95116 (not res!294095)) b!663185))

(declare-fun bs!95117 () Bool)

(assert (= bs!95117 (and m!929513 m!929505 m!929511)))

(assert (=> bs!95117 m!929513))

(assert (=> bs!95117 m!929511))

(assert (=> bs!95117 s!44963))

(declare-fun bs!95118 () Bool)

(declare-fun s!44965 () Bool)

(assert (= bs!95118 (and neg-inst!352 s!44965)))

(declare-fun res!294096 () Bool)

(declare-fun e!410697 () Bool)

(assert (=> bs!95118 (=> res!294096 e!410697)))

(assert (=> bs!95118 (= res!294096 (not (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 x!146871))))))

(assert (=> bs!95118 (=> true e!410697)))

(declare-fun b!663186 () Bool)

(assert (=> b!663186 (= e!410697 (= (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (toValue!11 KeywordValueInjection!67 x!146871)))))

(assert (= (and bs!95118 (not res!294096)) b!663186))

(declare-fun bs!95119 () Bool)

(assert (= bs!95119 (and m!929513 m!929517 m!929525)))

(assert (=> bs!95119 m!929513))

(assert (=> bs!95119 m!929517))

(assert (=> bs!95119 s!44965))

(declare-fun bs!95120 () Bool)

(declare-fun s!44967 () Bool)

(assert (= bs!95120 (and neg-inst!352 s!44967)))

(declare-fun res!294097 () Bool)

(declare-fun e!410698 () Bool)

(assert (=> bs!95120 (=> res!294097 e!410698)))

(assert (=> bs!95120 (= res!294097 (not (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))))))))

(assert (=> bs!95120 (=> true e!410698)))

(declare-fun b!663187 () Bool)

(assert (=> b!663187 (= e!410698 (= (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869)))))))

(assert (= (and bs!95120 (not res!294097)) b!663187))

(assert (=> m!929513 s!44967))

(declare-fun bs!95121 () Bool)

(declare-fun s!44969 () Bool)

(assert (= bs!95121 (and neg-inst!352 s!44969)))

(declare-fun res!294098 () Bool)

(declare-fun e!410699 () Bool)

(assert (=> bs!95121 (=> res!294098 e!410699)))

(assert (=> bs!95121 (= res!294098 (not (= (list!3067 x!146870) (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))))))))

(assert (=> bs!95121 (=> true e!410699)))

(declare-fun b!663188 () Bool)

(assert (=> b!663188 (= e!410699 (= (toValue!11 KeywordValueInjection!67 x!146870) (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869)))))))

(assert (= (and bs!95121 (not res!294098)) b!663188))

(assert (=> bs!95115 m!929515))

(assert (=> bs!95115 m!929513))

(assert (=> bs!95115 s!44969))

(declare-fun bs!95122 () Bool)

(declare-fun s!44971 () Bool)

(assert (= bs!95122 (and neg-inst!352 s!44971)))

(declare-fun res!294099 () Bool)

(declare-fun e!410700 () Bool)

(assert (=> bs!95122 (=> res!294099 e!410700)))

(assert (=> bs!95122 (= res!294099 (not (= (list!3067 x!146869) (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))))))))

(assert (=> bs!95122 (=> true e!410700)))

(declare-fun b!663189 () Bool)

(assert (=> b!663189 (= e!410700 (= (toValue!11 KeywordValueInjection!67 x!146869) (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869)))))))

(assert (= (and bs!95122 (not res!294099)) b!663189))

(assert (=> bs!95117 m!929511))

(assert (=> bs!95117 m!929513))

(assert (=> bs!95117 s!44971))

(declare-fun bs!95123 () Bool)

(declare-fun s!44973 () Bool)

(assert (= bs!95123 (and neg-inst!352 s!44973)))

(declare-fun res!294100 () Bool)

(declare-fun e!410701 () Bool)

(assert (=> bs!95123 (=> res!294100 e!410701)))

(assert (=> bs!95123 (= res!294100 (not (= (list!3067 x!146871) (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))))))))

(assert (=> bs!95123 (=> true e!410701)))

(declare-fun b!663190 () Bool)

(assert (=> b!663190 (= e!410701 (= (toValue!11 KeywordValueInjection!67 x!146871) (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869)))))))

(assert (= (and bs!95123 (not res!294100)) b!663190))

(assert (=> bs!95119 m!929517))

(assert (=> bs!95119 m!929513))

(assert (=> bs!95119 s!44973))

(assert (=> m!929513 s!44967))

(declare-fun bs!95124 () Bool)

(assert (= bs!95124 (and neg-inst!352 d!226553)))

(assert (=> bs!95124 (= true inst!353)))

(declare-datatypes ((Unit!12534 0))(
  ( (Unit!12535) )
))
(declare-fun lt!282420 () Unit!12534)

(declare-fun Unit!12536 () Unit!12534)

(assert (=> d!226553 (= lt!282420 Unit!12536)))

(declare-fun lambda!20672 () Int)

(declare-fun lambda!20673 () Int)

(declare-fun lambda!20674 () Int)

(declare-fun equivClasses!532 (Int Int) Bool)

(declare-fun Forall2!260 (Int) Bool)

(assert (=> d!226553 (= (equivClasses!532 lambda!20672 lambda!20673) (Forall2!260 lambda!20674))))

(declare-fun lt!282419 () Unit!12534)

(declare-fun Unit!12537 () Unit!12534)

(assert (=> d!226553 (= lt!282419 Unit!12537)))

(assert (=> d!226553 (= (Forall2!260 lambda!20674) inst!353)))

(declare-fun lt!282417 () Unit!12534)

(declare-fun Unit!12538 () Unit!12534)

(assert (=> d!226553 (= lt!282417 Unit!12538)))

(declare-fun lambda!20671 () Int)

(declare-fun semiInverseModEq!553 (Int Int) Bool)

(declare-fun Forall!338 (Int) Bool)

(assert (=> d!226553 (= (semiInverseModEq!553 lambda!20672 lambda!20673) (Forall!338 lambda!20671))))

(declare-fun lt!282418 () Unit!12534)

(declare-fun Unit!12539 () Unit!12534)

(assert (=> d!226553 (= lt!282418 Unit!12539)))

(assert (=> d!226553 (= (Forall!338 lambda!20671) inst!352)))

(assert (=> d!226553 (= (injection!9 KeywordValueInjection!67) (TokenValueInjection!2767 lambda!20673 lambda!20672))))

(assert (= neg-inst!353 inst!352))

(assert (= neg-inst!352 inst!353))

(declare-fun m!929531 () Bool)

(assert (=> d!226553 m!929531))

(assert (=> d!226553 m!929531))

(declare-fun m!929533 () Bool)

(assert (=> d!226553 m!929533))

(declare-fun m!929535 () Bool)

(assert (=> d!226553 m!929535))

(declare-fun m!929537 () Bool)

(assert (=> d!226553 m!929537))

(assert (=> d!226553 m!929535))

(assert (=> b!663111 d!226553))

(declare-fun d!226555 () Bool)

(declare-fun lBracketRe!0 (JsonLexer!250) Regex!1809)

(assert (=> d!226555 (= (lBracketRule!0 JsonLexer!251) (Rule!2747 (lBracketRe!0 JsonLexer!251) (String!9276 "lleeffttBBrraacckkeett") false (injection!9 KeywordValueInjection!67)))))

(declare-fun bs!95125 () Bool)

(assert (= bs!95125 d!226555))

(declare-fun m!929539 () Bool)

(assert (=> bs!95125 m!929539))

(assert (=> bs!95125 m!929445))

(assert (=> b!663111 d!226555))

(declare-fun d!226557 () Bool)

(declare-fun dynLambda!3834 (Int BalanceConc!5186) TokenValue!1507)

(assert (=> d!226557 (= (apply!1743 (injection!9 KeywordValueInjection!67) (singletonSeq!461 #x005B)) (dynLambda!3834 (toValue!2416 (injection!9 KeywordValueInjection!67)) (singletonSeq!461 #x005B)))))

(declare-fun b_lambda!25789 () Bool)

(assert (=> (not b_lambda!25789) (not d!226557)))

(declare-fun bs!95126 () Bool)

(assert (= bs!95126 d!226557))

(assert (=> bs!95126 m!929451))

(declare-fun m!929541 () Bool)

(assert (=> bs!95126 m!929541))

(assert (=> b!663111 d!226557))

(declare-fun d!226559 () Bool)

(declare-fun e!410704 () Bool)

(assert (=> d!226559 e!410704))

(declare-fun res!294103 () Bool)

(assert (=> d!226559 (=> (not res!294103) (not e!410704))))

(declare-fun lt!282423 () BalanceConc!5186)

(assert (=> d!226559 (= res!294103 (= (list!3067 lt!282423) (Cons!7280 #x005B Nil!7280)))))

(declare-fun singleton!221 ((_ BitVec 16)) BalanceConc!5186)

(assert (=> d!226559 (= lt!282423 (singleton!221 #x005B))))

(assert (=> d!226559 (= (singletonSeq!461 #x005B) lt!282423)))

(declare-fun b!663193 () Bool)

(declare-fun isBalanced!677 (Conc!2587) Bool)

(assert (=> b!663193 (= e!410704 (isBalanced!677 (c!119232 lt!282423)))))

(assert (= (and d!226559 res!294103) b!663193))

(declare-fun bs!95127 () Bool)

(declare-fun s!44975 () Bool)

(assert (= bs!95127 (and neg-inst!352 s!44975)))

(declare-fun res!294104 () Bool)

(declare-fun e!410705 () Bool)

(assert (=> bs!95127 (=> res!294104 e!410705)))

(assert (=> bs!95127 (= res!294104 (not (= (list!3067 lt!282423) (list!3067 x!146870))))))

(assert (=> bs!95127 (=> true e!410705)))

(declare-fun b!663194 () Bool)

(assert (=> b!663194 (= e!410705 (= (toValue!11 KeywordValueInjection!67 lt!282423) (toValue!11 KeywordValueInjection!67 x!146870)))))

(assert (= (and bs!95127 (not res!294104)) b!663194))

(declare-fun bs!95128 () Bool)

(declare-fun m!929543 () Bool)

(assert (= bs!95128 (and m!929543 m!929523 m!929515)))

(assert (=> bs!95128 m!929543))

(assert (=> bs!95128 m!929515))

(assert (=> bs!95128 s!44975))

(declare-fun bs!95129 () Bool)

(declare-fun s!44977 () Bool)

(assert (= bs!95129 (and neg-inst!352 s!44977)))

(declare-fun res!294105 () Bool)

(declare-fun e!410706 () Bool)

(assert (=> bs!95129 (=> res!294105 e!410706)))

(assert (=> bs!95129 (= res!294105 (not (= (list!3067 lt!282423) (list!3067 x!146871))))))

(assert (=> bs!95129 (=> true e!410706)))

(declare-fun b!663195 () Bool)

(assert (=> b!663195 (= e!410706 (= (toValue!11 KeywordValueInjection!67 lt!282423) (toValue!11 KeywordValueInjection!67 x!146871)))))

(assert (= (and bs!95129 (not res!294105)) b!663195))

(declare-fun bs!95130 () Bool)

(assert (= bs!95130 (and m!929543 m!929517 m!929525)))

(assert (=> bs!95130 m!929543))

(assert (=> bs!95130 m!929517))

(assert (=> bs!95130 s!44977))

(declare-fun bs!95131 () Bool)

(declare-fun s!44979 () Bool)

(assert (= bs!95131 (and neg-inst!352 s!44979)))

(declare-fun res!294106 () Bool)

(declare-fun e!410707 () Bool)

(assert (=> bs!95131 (=> res!294106 e!410707)))

(assert (=> bs!95131 (= res!294106 (not (= (list!3067 lt!282423) (list!3067 x!146869))))))

(assert (=> bs!95131 (=> true e!410707)))

(declare-fun b!663196 () Bool)

(assert (=> b!663196 (= e!410707 (= (toValue!11 KeywordValueInjection!67 lt!282423) (toValue!11 KeywordValueInjection!67 x!146869)))))

(assert (= (and bs!95131 (not res!294106)) b!663196))

(declare-fun bs!95132 () Bool)

(assert (= bs!95132 (and m!929543 m!929505 m!929511)))

(assert (=> bs!95132 m!929543))

(assert (=> bs!95132 m!929511))

(assert (=> bs!95132 s!44979))

(declare-fun bs!95133 () Bool)

(declare-fun s!44981 () Bool)

(assert (= bs!95133 (and neg-inst!352 s!44981)))

(declare-fun res!294107 () Bool)

(declare-fun e!410708 () Bool)

(assert (=> bs!95133 (=> res!294107 e!410708)))

(assert (=> bs!95133 (= res!294107 (not (= (list!3067 lt!282423) (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))))))))

(assert (=> bs!95133 (=> true e!410708)))

(declare-fun b!663197 () Bool)

(assert (=> b!663197 (= e!410708 (= (toValue!11 KeywordValueInjection!67 lt!282423) (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869)))))))

(assert (= (and bs!95133 (not res!294107)) b!663197))

(declare-fun bs!95134 () Bool)

(assert (= bs!95134 (and m!929543 m!929513)))

(assert (=> bs!95134 m!929543))

(assert (=> bs!95134 m!929513))

(assert (=> bs!95134 s!44981))

(declare-fun bs!95135 () Bool)

(declare-fun s!44983 () Bool)

(assert (= bs!95135 (and neg-inst!352 s!44983)))

(declare-fun res!294108 () Bool)

(declare-fun e!410709 () Bool)

(assert (=> bs!95135 (=> res!294108 e!410709)))

(assert (=> bs!95135 (= res!294108 (not (= (list!3067 lt!282423) (list!3067 lt!282423))))))

(assert (=> bs!95135 (=> true e!410709)))

(declare-fun b!663198 () Bool)

(assert (=> b!663198 (= e!410709 (= (toValue!11 KeywordValueInjection!67 lt!282423) (toValue!11 KeywordValueInjection!67 lt!282423)))))

(assert (= (and bs!95135 (not res!294108)) b!663198))

(assert (=> m!929543 s!44983))

(declare-fun bs!95136 () Bool)

(declare-fun s!44985 () Bool)

(assert (= bs!95136 (and neg-inst!352 s!44985)))

(declare-fun res!294109 () Bool)

(declare-fun e!410710 () Bool)

(assert (=> bs!95136 (=> res!294109 e!410710)))

(assert (=> bs!95136 (= res!294109 (not (= (list!3067 x!146871) (list!3067 lt!282423))))))

(assert (=> bs!95136 (=> true e!410710)))

(declare-fun b!663199 () Bool)

(assert (=> b!663199 (= e!410710 (= (toValue!11 KeywordValueInjection!67 x!146871) (toValue!11 KeywordValueInjection!67 lt!282423)))))

(assert (= (and bs!95136 (not res!294109)) b!663199))

(assert (=> bs!95130 m!929517))

(assert (=> bs!95130 m!929543))

(assert (=> bs!95130 s!44985))

(declare-fun bs!95137 () Bool)

(declare-fun s!44987 () Bool)

(assert (= bs!95137 (and neg-inst!352 s!44987)))

(declare-fun res!294110 () Bool)

(declare-fun e!410711 () Bool)

(assert (=> bs!95137 (=> res!294110 e!410711)))

(assert (=> bs!95137 (= res!294110 (not (= (list!3067 x!146870) (list!3067 lt!282423))))))

(assert (=> bs!95137 (=> true e!410711)))

(declare-fun b!663200 () Bool)

(assert (=> b!663200 (= e!410711 (= (toValue!11 KeywordValueInjection!67 x!146870) (toValue!11 KeywordValueInjection!67 lt!282423)))))

(assert (= (and bs!95137 (not res!294110)) b!663200))

(assert (=> bs!95128 m!929515))

(assert (=> bs!95128 m!929543))

(assert (=> bs!95128 s!44987))

(declare-fun bs!95138 () Bool)

(declare-fun s!44989 () Bool)

(assert (= bs!95138 (and neg-inst!352 s!44989)))

(declare-fun res!294111 () Bool)

(declare-fun e!410712 () Bool)

(assert (=> bs!95138 (=> res!294111 e!410712)))

(assert (=> bs!95138 (= res!294111 (not (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 lt!282423))))))

(assert (=> bs!95138 (=> true e!410712)))

(declare-fun b!663201 () Bool)

(assert (=> b!663201 (= e!410712 (= (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (toValue!11 KeywordValueInjection!67 lt!282423)))))

(assert (= (and bs!95138 (not res!294111)) b!663201))

(assert (=> bs!95134 m!929513))

(assert (=> bs!95134 m!929543))

(assert (=> bs!95134 s!44989))

(declare-fun bs!95139 () Bool)

(declare-fun s!44991 () Bool)

(assert (= bs!95139 (and neg-inst!352 s!44991)))

(declare-fun res!294112 () Bool)

(declare-fun e!410713 () Bool)

(assert (=> bs!95139 (=> res!294112 e!410713)))

(assert (=> bs!95139 (= res!294112 (not (= (list!3067 x!146869) (list!3067 lt!282423))))))

(assert (=> bs!95139 (=> true e!410713)))

(declare-fun b!663202 () Bool)

(assert (=> b!663202 (= e!410713 (= (toValue!11 KeywordValueInjection!67 x!146869) (toValue!11 KeywordValueInjection!67 lt!282423)))))

(assert (= (and bs!95139 (not res!294112)) b!663202))

(assert (=> bs!95132 m!929511))

(assert (=> bs!95132 m!929543))

(assert (=> bs!95132 s!44991))

(assert (=> m!929543 s!44983))

(assert (=> d!226559 m!929543))

(declare-fun m!929545 () Bool)

(assert (=> d!226559 m!929545))

(declare-fun m!929547 () Bool)

(assert (=> b!663193 m!929547))

(assert (=> b!663111 d!226559))

(declare-fun d!226561 () Bool)

(declare-fun e!410716 () Bool)

(assert (=> d!226561 e!410716))

(declare-fun res!294115 () Bool)

(assert (=> d!226561 (=> (not res!294115) (not e!410716))))

(declare-fun lt!282426 () BalanceConc!5188)

(declare-fun list!3068 (BalanceConc!5188) List!7295)

(assert (=> d!226561 (= res!294115 (= (list!3068 lt!282426) (Cons!7281 (Token!2669 (apply!1743 (injection!9 KeywordValueInjection!67) (singletonSeq!461 #x005B)) (lBracketRule!0 JsonLexer!251) 1 (Cons!7280 #x005B Nil!7280)) Nil!7281)))))

(declare-fun singleton!222 (Token!2668) BalanceConc!5188)

(assert (=> d!226561 (= lt!282426 (singleton!222 (Token!2669 (apply!1743 (injection!9 KeywordValueInjection!67) (singletonSeq!461 #x005B)) (lBracketRule!0 JsonLexer!251) 1 (Cons!7280 #x005B Nil!7280))))))

(assert (=> d!226561 (= (singletonSeq!460 (Token!2669 (apply!1743 (injection!9 KeywordValueInjection!67) (singletonSeq!461 #x005B)) (lBracketRule!0 JsonLexer!251) 1 (Cons!7280 #x005B Nil!7280))) lt!282426)))

(declare-fun b!663205 () Bool)

(declare-fun isBalanced!678 (Conc!2588) Bool)

(assert (=> b!663205 (= e!410716 (isBalanced!678 (c!119233 lt!282426)))))

(assert (= (and d!226561 res!294115) b!663205))

(declare-fun m!929549 () Bool)

(assert (=> d!226561 m!929549))

(declare-fun m!929551 () Bool)

(assert (=> d!226561 m!929551))

(declare-fun m!929553 () Bool)

(assert (=> b!663205 m!929553))

(assert (=> b!663111 d!226561))

(declare-fun d!226563 () Bool)

(assert (=> d!226563 (= (isDefined!1431 lt!282395) (not (isEmpty!4816 lt!282395)))))

(declare-fun bs!95140 () Bool)

(assert (= bs!95140 d!226563))

(assert (=> bs!95140 m!929449))

(assert (=> b!663105 d!226563))

(declare-fun d!226565 () Bool)

(declare-fun res!294118 () Bool)

(declare-fun e!410719 () Bool)

(assert (=> d!226565 (=> (not res!294118) (not e!410719))))

(declare-fun rulesValid!518 (LexerInterface!1288 List!7296) Bool)

(assert (=> d!226565 (= res!294118 (rulesValid!518 Lexer!1286 lt!282392))))

(assert (=> d!226565 (= (rulesInvariant!1223 Lexer!1286 lt!282392) e!410719)))

(declare-fun b!663208 () Bool)

(declare-datatypes ((List!7297 0))(
  ( (Nil!7283) (Cons!7283 (h!12684 String!9275) (t!86658 List!7297)) )
))
(declare-fun noDuplicateTag!518 (LexerInterface!1288 List!7296 List!7297) Bool)

(assert (=> b!663208 (= e!410719 (noDuplicateTag!518 Lexer!1286 lt!282392 Nil!7283))))

(assert (= (and d!226565 res!294118) b!663208))

(declare-fun m!929555 () Bool)

(assert (=> d!226565 m!929555))

(declare-fun m!929557 () Bool)

(assert (=> b!663208 m!929557))

(assert (=> b!663109 d!226565))

(declare-fun d!226567 () Bool)

(assert (=> d!226567 (= (isEmpty!4817 lt!282392) ((_ is Nil!7282) lt!282392))))

(assert (=> start!64944 d!226567))

(declare-fun d!226569 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!250) Rule!2746)

(declare-fun integerLiteralRule!0 (JsonLexer!250) Rule!2746)

(declare-fun floatLiteralRule!0 (JsonLexer!250) Rule!2746)

(declare-fun trueRule!0 (JsonLexer!250) Rule!2746)

(declare-fun falseRule!0 (JsonLexer!250) Rule!2746)

(declare-fun nullRule!0 (JsonLexer!250) Rule!2746)

(declare-fun jsonstringRule!0 (JsonLexer!250) Rule!2746)

(declare-fun lBraceRule!0 (JsonLexer!250) Rule!2746)

(declare-fun rBraceRule!0 (JsonLexer!250) Rule!2746)

(declare-fun rBracketRule!0 (JsonLexer!250) Rule!2746)

(declare-fun colonRule!0 (JsonLexer!250) Rule!2746)

(declare-fun commaRule!0 (JsonLexer!250) Rule!2746)

(declare-fun eofRule!0 (JsonLexer!250) Rule!2746)

(assert (=> d!226569 (= (rules!109 JsonLexer!251) (Cons!7282 (whitespaceRule!0 JsonLexer!251) (Cons!7282 (integerLiteralRule!0 JsonLexer!251) (Cons!7282 (floatLiteralRule!0 JsonLexer!251) (Cons!7282 (trueRule!0 JsonLexer!251) (Cons!7282 (falseRule!0 JsonLexer!251) (Cons!7282 (nullRule!0 JsonLexer!251) (Cons!7282 (jsonstringRule!0 JsonLexer!251) (Cons!7282 (lBraceRule!0 JsonLexer!251) (Cons!7282 (rBraceRule!0 JsonLexer!251) (Cons!7282 (lBracketRule!0 JsonLexer!251) (Cons!7282 (rBracketRule!0 JsonLexer!251) (Cons!7282 (colonRule!0 JsonLexer!251) (Cons!7282 (commaRule!0 JsonLexer!251) (Cons!7282 (eofRule!0 JsonLexer!251) Nil!7282)))))))))))))))))

(declare-fun bs!95141 () Bool)

(assert (= bs!95141 d!226569))

(declare-fun m!929559 () Bool)

(assert (=> bs!95141 m!929559))

(declare-fun m!929561 () Bool)

(assert (=> bs!95141 m!929561))

(assert (=> bs!95141 m!929447))

(declare-fun m!929563 () Bool)

(assert (=> bs!95141 m!929563))

(declare-fun m!929565 () Bool)

(assert (=> bs!95141 m!929565))

(declare-fun m!929567 () Bool)

(assert (=> bs!95141 m!929567))

(declare-fun m!929569 () Bool)

(assert (=> bs!95141 m!929569))

(declare-fun m!929571 () Bool)

(assert (=> bs!95141 m!929571))

(declare-fun m!929573 () Bool)

(assert (=> bs!95141 m!929573))

(declare-fun m!929575 () Bool)

(assert (=> bs!95141 m!929575))

(declare-fun m!929577 () Bool)

(assert (=> bs!95141 m!929577))

(declare-fun m!929579 () Bool)

(assert (=> bs!95141 m!929579))

(declare-fun m!929581 () Bool)

(assert (=> bs!95141 m!929581))

(declare-fun m!929583 () Bool)

(assert (=> bs!95141 m!929583))

(assert (=> start!64944 d!226569))

(declare-fun d!226571 () Bool)

(declare-fun res!294121 () Bool)

(declare-fun e!410722 () Bool)

(assert (=> d!226571 (=> (not res!294121) (not e!410722))))

(assert (=> d!226571 (= res!294121 ((_ is HashMap!680) (cache!1067 cacheDown!348)))))

(assert (=> d!226571 (= (inv!9341 cacheDown!348) e!410722)))

(declare-fun b!663211 () Bool)

(declare-fun validCacheMapDown!53 (MutableMap!680) Bool)

(assert (=> b!663211 (= e!410722 (validCacheMapDown!53 (cache!1067 cacheDown!348)))))

(assert (= (and d!226571 res!294121) b!663211))

(declare-fun m!929585 () Bool)

(assert (=> b!663211 m!929585))

(assert (=> start!64944 d!226571))

(declare-fun d!226573 () Bool)

(declare-fun res!294124 () Bool)

(declare-fun e!410725 () Bool)

(assert (=> d!226573 (=> (not res!294124) (not e!410725))))

(assert (=> d!226573 (= res!294124 ((_ is HashMap!679) (cache!1066 cacheUp!335)))))

(assert (=> d!226573 (= (inv!9342 cacheUp!335) e!410725)))

(declare-fun b!663214 () Bool)

(declare-fun validCacheMapUp!53 (MutableMap!679) Bool)

(assert (=> b!663214 (= e!410725 (validCacheMapUp!53 (cache!1066 cacheUp!335)))))

(assert (= (and d!226573 res!294124) b!663214))

(declare-fun m!929587 () Bool)

(assert (=> b!663214 m!929587))

(assert (=> start!64944 d!226573))

(declare-fun d!226575 () Bool)

(assert (=> d!226575 (= (array_inv!886 (_keys!1002 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) (bvsge (size!5735 (_keys!1002 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!663116 d!226575))

(declare-fun d!226577 () Bool)

(assert (=> d!226577 (= (array_inv!888 (_values!987 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) (bvsge (size!5736 (_values!987 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348))))))) #b00000000000000000000000000000000))))

(assert (=> b!663116 d!226577))

(declare-fun mapIsEmpty!2818 () Bool)

(declare-fun mapRes!2818 () Bool)

(assert (=> mapIsEmpty!2818 mapRes!2818))

(declare-fun mapNonEmpty!2818 () Bool)

(declare-fun tp!202604 () Bool)

(declare-fun e!410739 () Bool)

(assert (=> mapNonEmpty!2818 (= mapRes!2818 (and tp!202604 e!410739))))

(declare-fun mapValue!2818 () List!7292)

(declare-fun mapRest!2818 () (Array (_ BitVec 32) List!7292))

(declare-fun mapKey!2818 () (_ BitVec 32))

(assert (=> mapNonEmpty!2818 (= mapRest!2814 (store mapRest!2818 mapKey!2818 mapValue!2818))))

(declare-fun setIsEmpty!3253 () Bool)

(declare-fun setRes!3254 () Bool)

(assert (=> setIsEmpty!3253 setRes!3254))

(declare-fun tp!202603 () Bool)

(declare-fun b!663222 () Bool)

(declare-fun inv!9345 (Context!442) Bool)

(assert (=> b!663222 (= e!410739 (and (inv!9345 (_1!4191 (_1!4192 (h!12679 mapValue!2818)))) setRes!3254 tp!202603))))

(declare-fun condSetEmpty!3253 () Bool)

(assert (=> b!663222 (= condSetEmpty!3253 (= (_2!4192 (h!12679 mapValue!2818)) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setNonEmpty!3253 () Bool)

(declare-fun tp!202602 () Bool)

(declare-fun setElem!3254 () Context!442)

(assert (=> setNonEmpty!3253 (= setRes!3254 (and tp!202602 (inv!9345 setElem!3254)))))

(declare-fun setRest!3254 () (InoxSet Context!442))

(assert (=> setNonEmpty!3253 (= (_2!4192 (h!12679 mapValue!2818)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3254 true) setRest!3254))))

(declare-fun setNonEmpty!3254 () Bool)

(declare-fun setRes!3253 () Bool)

(declare-fun tp!202601 () Bool)

(declare-fun setElem!3253 () Context!442)

(assert (=> setNonEmpty!3254 (= setRes!3253 (and tp!202601 (inv!9345 setElem!3253)))))

(declare-fun mapDefault!2818 () List!7292)

(declare-fun setRest!3253 () (InoxSet Context!442))

(assert (=> setNonEmpty!3254 (= (_2!4192 (h!12679 mapDefault!2818)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3253 true) setRest!3253))))

(declare-fun setIsEmpty!3254 () Bool)

(assert (=> setIsEmpty!3254 setRes!3253))

(declare-fun condMapEmpty!2818 () Bool)

(assert (=> mapNonEmpty!2814 (= condMapEmpty!2818 (= mapRest!2814 ((as const (Array (_ BitVec 32) List!7292)) mapDefault!2818)))))

(declare-fun e!410738 () Bool)

(assert (=> mapNonEmpty!2814 (= tp!202569 (and e!410738 mapRes!2818))))

(declare-fun b!663221 () Bool)

(declare-fun tp!202600 () Bool)

(assert (=> b!663221 (= e!410738 (and (inv!9345 (_1!4191 (_1!4192 (h!12679 mapDefault!2818)))) setRes!3253 tp!202600))))

(declare-fun condSetEmpty!3254 () Bool)

(assert (=> b!663221 (= condSetEmpty!3254 (= (_2!4192 (h!12679 mapDefault!2818)) ((as const (Array Context!442 Bool)) false)))))

(assert (= (and mapNonEmpty!2814 condMapEmpty!2818) mapIsEmpty!2818))

(assert (= (and mapNonEmpty!2814 (not condMapEmpty!2818)) mapNonEmpty!2818))

(assert (= (and b!663222 condSetEmpty!3253) setIsEmpty!3253))

(assert (= (and b!663222 (not condSetEmpty!3253)) setNonEmpty!3253))

(assert (= (and mapNonEmpty!2818 ((_ is Cons!7278) mapValue!2818)) b!663222))

(assert (= (and b!663221 condSetEmpty!3254) setIsEmpty!3254))

(assert (= (and b!663221 (not condSetEmpty!3254)) setNonEmpty!3254))

(assert (= (and mapNonEmpty!2814 ((_ is Cons!7278) mapDefault!2818)) b!663221))

(declare-fun m!929589 () Bool)

(assert (=> b!663222 m!929589))

(declare-fun m!929591 () Bool)

(assert (=> setNonEmpty!3253 m!929591))

(declare-fun m!929593 () Bool)

(assert (=> mapNonEmpty!2818 m!929593))

(declare-fun m!929595 () Bool)

(assert (=> setNonEmpty!3254 m!929595))

(declare-fun m!929597 () Bool)

(assert (=> b!663221 m!929597))

(declare-fun b!663227 () Bool)

(declare-fun e!410752 () Bool)

(declare-fun setRes!3257 () Bool)

(declare-fun tp!202609 () Bool)

(assert (=> b!663227 (= e!410752 (and (inv!9345 (_1!4191 (_1!4192 (h!12679 mapValue!2814)))) setRes!3257 tp!202609))))

(declare-fun condSetEmpty!3257 () Bool)

(assert (=> b!663227 (= condSetEmpty!3257 (= (_2!4192 (h!12679 mapValue!2814)) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3257 () Bool)

(assert (=> setIsEmpty!3257 setRes!3257))

(declare-fun setNonEmpty!3257 () Bool)

(declare-fun tp!202610 () Bool)

(declare-fun setElem!3257 () Context!442)

(assert (=> setNonEmpty!3257 (= setRes!3257 (and tp!202610 (inv!9345 setElem!3257)))))

(declare-fun setRest!3257 () (InoxSet Context!442))

(assert (=> setNonEmpty!3257 (= (_2!4192 (h!12679 mapValue!2814)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3257 true) setRest!3257))))

(assert (=> mapNonEmpty!2814 (= tp!202580 e!410752)))

(assert (= (and b!663227 condSetEmpty!3257) setIsEmpty!3257))

(assert (= (and b!663227 (not condSetEmpty!3257)) setNonEmpty!3257))

(assert (= (and mapNonEmpty!2814 ((_ is Cons!7278) mapValue!2814)) b!663227))

(declare-fun m!929599 () Bool)

(assert (=> b!663227 m!929599))

(declare-fun m!929601 () Bool)

(assert (=> setNonEmpty!3257 m!929601))

(declare-fun e!410755 () Bool)

(declare-fun tp!202611 () Bool)

(declare-fun b!663228 () Bool)

(declare-fun setRes!3258 () Bool)

(assert (=> b!663228 (= e!410755 (and (inv!9345 (_1!4191 (_1!4192 (h!12679 (zeroValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))))) setRes!3258 tp!202611))))

(declare-fun condSetEmpty!3258 () Bool)

(assert (=> b!663228 (= condSetEmpty!3258 (= (_2!4192 (h!12679 (zeroValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3258 () Bool)

(assert (=> setIsEmpty!3258 setRes!3258))

(declare-fun setNonEmpty!3258 () Bool)

(declare-fun tp!202612 () Bool)

(declare-fun setElem!3258 () Context!442)

(assert (=> setNonEmpty!3258 (= setRes!3258 (and tp!202612 (inv!9345 setElem!3258)))))

(declare-fun setRest!3258 () (InoxSet Context!442))

(assert (=> setNonEmpty!3258 (= (_2!4192 (h!12679 (zeroValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3258 true) setRest!3258))))

(assert (=> b!663107 (= tp!202577 e!410755)))

(assert (= (and b!663228 condSetEmpty!3258) setIsEmpty!3258))

(assert (= (and b!663228 (not condSetEmpty!3258)) setNonEmpty!3258))

(assert (= (and b!663107 ((_ is Cons!7278) (zeroValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))) b!663228))

(declare-fun m!929603 () Bool)

(assert (=> b!663228 m!929603))

(declare-fun m!929605 () Bool)

(assert (=> setNonEmpty!3258 m!929605))

(declare-fun b!663229 () Bool)

(declare-fun setRes!3259 () Bool)

(declare-fun tp!202613 () Bool)

(declare-fun e!410758 () Bool)

(assert (=> b!663229 (= e!410758 (and (inv!9345 (_1!4191 (_1!4192 (h!12679 (minValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))))) setRes!3259 tp!202613))))

(declare-fun condSetEmpty!3259 () Bool)

(assert (=> b!663229 (= condSetEmpty!3259 (= (_2!4192 (h!12679 (minValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3259 () Bool)

(assert (=> setIsEmpty!3259 setRes!3259))

(declare-fun setNonEmpty!3259 () Bool)

(declare-fun tp!202614 () Bool)

(declare-fun setElem!3259 () Context!442)

(assert (=> setNonEmpty!3259 (= setRes!3259 (and tp!202614 (inv!9345 setElem!3259)))))

(declare-fun setRest!3259 () (InoxSet Context!442))

(assert (=> setNonEmpty!3259 (= (_2!4192 (h!12679 (minValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3259 true) setRest!3259))))

(assert (=> b!663107 (= tp!202568 e!410758)))

(assert (= (and b!663229 condSetEmpty!3259) setIsEmpty!3259))

(assert (= (and b!663229 (not condSetEmpty!3259)) setNonEmpty!3259))

(assert (= (and b!663107 ((_ is Cons!7278) (minValue!964 (v!17400 (underlying!1597 (v!17401 (underlying!1598 (cache!1066 cacheUp!335)))))))) b!663229))

(declare-fun m!929607 () Bool)

(assert (=> b!663229 m!929607))

(declare-fun m!929609 () Bool)

(assert (=> setNonEmpty!3259 m!929609))

(declare-fun tp!202615 () Bool)

(declare-fun b!663230 () Bool)

(declare-fun setRes!3260 () Bool)

(declare-fun e!410761 () Bool)

(assert (=> b!663230 (= e!410761 (and (inv!9345 (_1!4191 (_1!4192 (h!12679 mapDefault!2814)))) setRes!3260 tp!202615))))

(declare-fun condSetEmpty!3260 () Bool)

(assert (=> b!663230 (= condSetEmpty!3260 (= (_2!4192 (h!12679 mapDefault!2814)) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3260 () Bool)

(assert (=> setIsEmpty!3260 setRes!3260))

(declare-fun setNonEmpty!3260 () Bool)

(declare-fun tp!202616 () Bool)

(declare-fun setElem!3260 () Context!442)

(assert (=> setNonEmpty!3260 (= setRes!3260 (and tp!202616 (inv!9345 setElem!3260)))))

(declare-fun setRest!3260 () (InoxSet Context!442))

(assert (=> setNonEmpty!3260 (= (_2!4192 (h!12679 mapDefault!2814)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3260 true) setRest!3260))))

(assert (=> b!663100 (= tp!202571 e!410761)))

(assert (= (and b!663230 condSetEmpty!3260) setIsEmpty!3260))

(assert (= (and b!663230 (not condSetEmpty!3260)) setNonEmpty!3260))

(assert (= (and b!663100 ((_ is Cons!7278) mapDefault!2814)) b!663230))

(declare-fun m!929611 () Bool)

(assert (=> b!663230 m!929611))

(declare-fun m!929613 () Bool)

(assert (=> setNonEmpty!3260 m!929613))

(declare-fun setNonEmpty!3265 () Bool)

(declare-fun setRes!3265 () Bool)

(declare-fun tp!202629 () Bool)

(declare-fun setElem!3266 () Context!442)

(assert (=> setNonEmpty!3265 (= setRes!3265 (and tp!202629 (inv!9345 setElem!3266)))))

(declare-fun mapDefault!2821 () List!7293)

(declare-fun setRest!3265 () (InoxSet Context!442))

(assert (=> setNonEmpty!3265 (= (_2!4194 (h!12680 mapDefault!2821)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3266 true) setRest!3265))))

(declare-fun mapNonEmpty!2821 () Bool)

(declare-fun mapRes!2821 () Bool)

(declare-fun tp!202628 () Bool)

(declare-fun e!410774 () Bool)

(assert (=> mapNonEmpty!2821 (= mapRes!2821 (and tp!202628 e!410774))))

(declare-fun mapKey!2821 () (_ BitVec 32))

(declare-fun mapRest!2821 () (Array (_ BitVec 32) List!7293))

(declare-fun mapValue!2821 () List!7293)

(assert (=> mapNonEmpty!2821 (= mapRest!2815 (store mapRest!2821 mapKey!2821 mapValue!2821))))

(declare-fun setNonEmpty!3266 () Bool)

(declare-fun setRes!3266 () Bool)

(declare-fun tp!202630 () Bool)

(declare-fun setElem!3265 () Context!442)

(assert (=> setNonEmpty!3266 (= setRes!3266 (and tp!202630 (inv!9345 setElem!3265)))))

(declare-fun setRest!3266 () (InoxSet Context!442))

(assert (=> setNonEmpty!3266 (= (_2!4194 (h!12680 mapValue!2821)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3265 true) setRest!3266))))

(declare-fun condMapEmpty!2821 () Bool)

(assert (=> mapNonEmpty!2815 (= condMapEmpty!2821 (= mapRest!2815 ((as const (Array (_ BitVec 32) List!7293)) mapDefault!2821)))))

(declare-fun e!410775 () Bool)

(assert (=> mapNonEmpty!2815 (= tp!202575 (and e!410775 mapRes!2821))))

(declare-fun b!663237 () Bool)

(declare-fun tp!202631 () Bool)

(assert (=> b!663237 (= e!410774 (and (inv!9345 (_2!4193 (_1!4194 (h!12680 mapValue!2821)))) setRes!3266 tp!202631))))

(declare-fun condSetEmpty!3265 () Bool)

(assert (=> b!663237 (= condSetEmpty!3265 (= (_2!4194 (h!12680 mapValue!2821)) ((as const (Array Context!442 Bool)) false)))))

(declare-fun tp!202627 () Bool)

(declare-fun b!663238 () Bool)

(assert (=> b!663238 (= e!410775 (and (inv!9345 (_2!4193 (_1!4194 (h!12680 mapDefault!2821)))) setRes!3265 tp!202627))))

(declare-fun condSetEmpty!3266 () Bool)

(assert (=> b!663238 (= condSetEmpty!3266 (= (_2!4194 (h!12680 mapDefault!2821)) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3265 () Bool)

(assert (=> setIsEmpty!3265 setRes!3265))

(declare-fun setIsEmpty!3266 () Bool)

(assert (=> setIsEmpty!3266 setRes!3266))

(declare-fun mapIsEmpty!2821 () Bool)

(assert (=> mapIsEmpty!2821 mapRes!2821))

(assert (= (and mapNonEmpty!2815 condMapEmpty!2821) mapIsEmpty!2821))

(assert (= (and mapNonEmpty!2815 (not condMapEmpty!2821)) mapNonEmpty!2821))

(assert (= (and b!663237 condSetEmpty!3265) setIsEmpty!3266))

(assert (= (and b!663237 (not condSetEmpty!3265)) setNonEmpty!3266))

(assert (= (and mapNonEmpty!2821 ((_ is Cons!7279) mapValue!2821)) b!663237))

(assert (= (and b!663238 condSetEmpty!3266) setIsEmpty!3265))

(assert (= (and b!663238 (not condSetEmpty!3266)) setNonEmpty!3265))

(assert (= (and mapNonEmpty!2815 ((_ is Cons!7279) mapDefault!2821)) b!663238))

(declare-fun m!929615 () Bool)

(assert (=> mapNonEmpty!2821 m!929615))

(declare-fun m!929617 () Bool)

(assert (=> setNonEmpty!3266 m!929617))

(declare-fun m!929619 () Bool)

(assert (=> setNonEmpty!3265 m!929619))

(declare-fun m!929621 () Bool)

(assert (=> b!663237 m!929621))

(declare-fun m!929623 () Bool)

(assert (=> b!663238 m!929623))

(declare-fun e!410787 () Bool)

(declare-fun b!663243 () Bool)

(declare-fun tp!202637 () Bool)

(declare-fun setRes!3269 () Bool)

(assert (=> b!663243 (= e!410787 (and (inv!9345 (_2!4193 (_1!4194 (h!12680 mapValue!2815)))) setRes!3269 tp!202637))))

(declare-fun condSetEmpty!3269 () Bool)

(assert (=> b!663243 (= condSetEmpty!3269 (= (_2!4194 (h!12680 mapValue!2815)) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3269 () Bool)

(assert (=> setIsEmpty!3269 setRes!3269))

(declare-fun setNonEmpty!3269 () Bool)

(declare-fun tp!202636 () Bool)

(declare-fun setElem!3269 () Context!442)

(assert (=> setNonEmpty!3269 (= setRes!3269 (and tp!202636 (inv!9345 setElem!3269)))))

(declare-fun setRest!3269 () (InoxSet Context!442))

(assert (=> setNonEmpty!3269 (= (_2!4194 (h!12680 mapValue!2815)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3269 true) setRest!3269))))

(assert (=> mapNonEmpty!2815 (= tp!202570 e!410787)))

(assert (= (and b!663243 condSetEmpty!3269) setIsEmpty!3269))

(assert (= (and b!663243 (not condSetEmpty!3269)) setNonEmpty!3269))

(assert (= (and mapNonEmpty!2815 ((_ is Cons!7279) mapValue!2815)) b!663243))

(declare-fun m!929625 () Bool)

(assert (=> b!663243 m!929625))

(declare-fun m!929627 () Bool)

(assert (=> setNonEmpty!3269 m!929627))

(declare-fun e!410790 () Bool)

(declare-fun b!663244 () Bool)

(declare-fun tp!202639 () Bool)

(declare-fun setRes!3270 () Bool)

(assert (=> b!663244 (= e!410790 (and (inv!9345 (_2!4193 (_1!4194 (h!12680 mapDefault!2815)))) setRes!3270 tp!202639))))

(declare-fun condSetEmpty!3270 () Bool)

(assert (=> b!663244 (= condSetEmpty!3270 (= (_2!4194 (h!12680 mapDefault!2815)) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3270 () Bool)

(assert (=> setIsEmpty!3270 setRes!3270))

(declare-fun setNonEmpty!3270 () Bool)

(declare-fun tp!202638 () Bool)

(declare-fun setElem!3270 () Context!442)

(assert (=> setNonEmpty!3270 (= setRes!3270 (and tp!202638 (inv!9345 setElem!3270)))))

(declare-fun setRest!3270 () (InoxSet Context!442))

(assert (=> setNonEmpty!3270 (= (_2!4194 (h!12680 mapDefault!2815)) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3270 true) setRest!3270))))

(assert (=> b!663103 (= tp!202576 e!410790)))

(assert (= (and b!663244 condSetEmpty!3270) setIsEmpty!3270))

(assert (= (and b!663244 (not condSetEmpty!3270)) setNonEmpty!3270))

(assert (= (and b!663103 ((_ is Cons!7279) mapDefault!2815)) b!663244))

(declare-fun m!929629 () Bool)

(assert (=> b!663244 m!929629))

(declare-fun m!929631 () Bool)

(assert (=> setNonEmpty!3270 m!929631))

(declare-fun e!410793 () Bool)

(declare-fun tp!202641 () Bool)

(declare-fun setRes!3271 () Bool)

(declare-fun b!663245 () Bool)

(assert (=> b!663245 (= e!410793 (and (inv!9345 (_2!4193 (_1!4194 (h!12680 (zeroValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))))) setRes!3271 tp!202641))))

(declare-fun condSetEmpty!3271 () Bool)

(assert (=> b!663245 (= condSetEmpty!3271 (= (_2!4194 (h!12680 (zeroValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3271 () Bool)

(assert (=> setIsEmpty!3271 setRes!3271))

(declare-fun setNonEmpty!3271 () Bool)

(declare-fun tp!202640 () Bool)

(declare-fun setElem!3271 () Context!442)

(assert (=> setNonEmpty!3271 (= setRes!3271 (and tp!202640 (inv!9345 setElem!3271)))))

(declare-fun setRest!3271 () (InoxSet Context!442))

(assert (=> setNonEmpty!3271 (= (_2!4194 (h!12680 (zeroValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3271 true) setRest!3271))))

(assert (=> b!663116 (= tp!202579 e!410793)))

(assert (= (and b!663245 condSetEmpty!3271) setIsEmpty!3271))

(assert (= (and b!663245 (not condSetEmpty!3271)) setNonEmpty!3271))

(assert (= (and b!663116 ((_ is Cons!7279) (zeroValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))) b!663245))

(declare-fun m!929633 () Bool)

(assert (=> b!663245 m!929633))

(declare-fun m!929635 () Bool)

(assert (=> setNonEmpty!3271 m!929635))

(declare-fun b!663246 () Bool)

(declare-fun tp!202643 () Bool)

(declare-fun setRes!3272 () Bool)

(declare-fun e!410796 () Bool)

(assert (=> b!663246 (= e!410796 (and (inv!9345 (_2!4193 (_1!4194 (h!12680 (minValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))))) setRes!3272 tp!202643))))

(declare-fun condSetEmpty!3272 () Bool)

(assert (=> b!663246 (= condSetEmpty!3272 (= (_2!4194 (h!12680 (minValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))) ((as const (Array Context!442 Bool)) false)))))

(declare-fun setIsEmpty!3272 () Bool)

(assert (=> setIsEmpty!3272 setRes!3272))

(declare-fun setNonEmpty!3272 () Bool)

(declare-fun tp!202642 () Bool)

(declare-fun setElem!3272 () Context!442)

(assert (=> setNonEmpty!3272 (= setRes!3272 (and tp!202642 (inv!9345 setElem!3272)))))

(declare-fun setRest!3272 () (InoxSet Context!442))

(assert (=> setNonEmpty!3272 (= (_2!4194 (h!12680 (minValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))) ((_ map or) (store ((as const (Array Context!442 Bool)) false) setElem!3272 true) setRest!3272))))

(assert (=> b!663116 (= tp!202574 e!410796)))

(assert (= (and b!663246 condSetEmpty!3272) setIsEmpty!3272))

(assert (= (and b!663246 (not condSetEmpty!3272)) setNonEmpty!3272))

(assert (= (and b!663116 ((_ is Cons!7279) (minValue!965 (v!17402 (underlying!1599 (v!17403 (underlying!1600 (cache!1067 cacheDown!348)))))))) b!663246))

(declare-fun m!929637 () Bool)

(assert (=> b!663246 m!929637))

(declare-fun m!929639 () Bool)

(assert (=> setNonEmpty!3272 m!929639))

(declare-fun b_lambda!25791 () Bool)

(assert (= b_lambda!25789 (or d!226553 b_lambda!25791)))

(declare-fun bs!95142 () Bool)

(declare-fun d!226579 () Bool)

(assert (= bs!95142 (and d!226579 d!226553)))

(assert (=> bs!95142 (= (dynLambda!3834 lambda!20673 (singletonSeq!461 #x005B)) (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B)))))

(assert (=> bs!95142 m!929451))

(declare-fun bs!95143 () Bool)

(declare-fun s!44993 () Bool)

(assert (= bs!95143 (and neg-inst!352 s!44993)))

(declare-fun res!294125 () Bool)

(declare-fun e!410798 () Bool)

(assert (=> bs!95143 (=> res!294125 e!410798)))

(assert (=> bs!95143 (= res!294125 (not (= (list!3067 (singletonSeq!461 #x005B)) (list!3067 x!146871))))))

(assert (=> bs!95143 (=> true e!410798)))

(declare-fun b!663247 () Bool)

(assert (=> b!663247 (= e!410798 (= (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B)) (toValue!11 KeywordValueInjection!67 x!146871)))))

(assert (= (and bs!95143 (not res!294125)) b!663247))

(declare-fun bs!95144 () Bool)

(declare-fun s!44995 () Bool)

(assert (= bs!95144 (and neg-inst!352 s!44995)))

(declare-fun res!294126 () Bool)

(declare-fun e!410799 () Bool)

(assert (=> bs!95144 (=> res!294126 e!410799)))

(assert (=> bs!95144 (= res!294126 (not (= (list!3067 (singletonSeq!461 #x005B)) (list!3067 x!146870))))))

(assert (=> bs!95144 (=> true e!410799)))

(declare-fun b!663248 () Bool)

(assert (=> b!663248 (= e!410799 (= (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B)) (toValue!11 KeywordValueInjection!67 x!146870)))))

(assert (= (and bs!95144 (not res!294126)) b!663248))

(declare-fun bs!95145 () Bool)

(declare-fun m!929643 () Bool)

(assert (= bs!95145 (and m!929643 m!929523 m!929515)))

(assert (=> bs!95145 m!929643))

(assert (=> bs!95145 m!929515))

(assert (=> bs!95145 s!44995))

(declare-fun bs!95146 () Bool)

(assert (= bs!95146 (and m!929643 m!929517 m!929525)))

(assert (=> bs!95146 s!44993))

(declare-fun bs!95147 () Bool)

(declare-fun s!44997 () Bool)

(assert (= bs!95147 (and neg-inst!352 s!44997)))

(declare-fun res!294127 () Bool)

(declare-fun e!410800 () Bool)

(assert (=> bs!95147 (=> res!294127 e!410800)))

(assert (=> bs!95147 (= res!294127 (not (= (list!3067 (singletonSeq!461 #x005B)) (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))))))))

(assert (=> bs!95147 (=> true e!410800)))

(declare-fun b!663249 () Bool)

(assert (=> b!663249 (= e!410800 (= (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B)) (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869)))))))

(assert (= (and bs!95147 (not res!294127)) b!663249))

(declare-fun bs!95148 () Bool)

(assert (= bs!95148 (and m!929643 m!929513)))

(assert (=> bs!95148 m!929643))

(assert (=> bs!95148 m!929513))

(assert (=> bs!95148 s!44997))

(declare-fun bs!95149 () Bool)

(declare-fun s!44999 () Bool)

(assert (= bs!95149 (and neg-inst!352 s!44999)))

(declare-fun res!294128 () Bool)

(declare-fun e!410801 () Bool)

(assert (=> bs!95149 (=> res!294128 e!410801)))

(assert (=> bs!95149 (= res!294128 (not (= (list!3067 (singletonSeq!461 #x005B)) (list!3067 (singletonSeq!461 #x005B)))))))

(assert (=> bs!95149 (=> true e!410801)))

(declare-fun b!663250 () Bool)

(assert (=> b!663250 (= e!410801 (= (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B)) (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B))))))

(assert (= (and bs!95149 (not res!294128)) b!663250))

(assert (=> m!929643 s!44999))

(declare-fun bs!95150 () Bool)

(declare-fun s!45001 () Bool)

(assert (= bs!95150 (and neg-inst!352 s!45001)))

(declare-fun res!294129 () Bool)

(declare-fun e!410802 () Bool)

(assert (=> bs!95150 (=> res!294129 e!410802)))

(assert (=> bs!95150 (= res!294129 (not (= (list!3067 (singletonSeq!461 #x005B)) (list!3067 x!146869))))))

(assert (=> bs!95150 (=> true e!410802)))

(declare-fun b!663251 () Bool)

(assert (=> b!663251 (= e!410802 (= (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B)) (toValue!11 KeywordValueInjection!67 x!146869)))))

(assert (= (and bs!95150 (not res!294129)) b!663251))

(declare-fun bs!95151 () Bool)

(assert (= bs!95151 (and m!929643 m!929505 m!929511)))

(assert (=> bs!95151 m!929643))

(assert (=> bs!95151 m!929511))

(assert (=> bs!95151 s!45001))

(declare-fun bs!95152 () Bool)

(declare-fun m!929641 () Bool)

(assert (= bs!95152 (and m!929643 m!929641)))

(assert (=> bs!95152 s!44999))

(declare-fun bs!95153 () Bool)

(declare-fun s!45003 () Bool)

(assert (= bs!95153 (and neg-inst!352 s!45003)))

(declare-fun res!294130 () Bool)

(declare-fun e!410803 () Bool)

(assert (=> bs!95153 (=> res!294130 e!410803)))

(assert (=> bs!95153 (= res!294130 (not (= (list!3067 (singletonSeq!461 #x005B)) (list!3067 lt!282423))))))

(assert (=> bs!95153 (=> true e!410803)))

(declare-fun b!663252 () Bool)

(assert (=> b!663252 (= e!410803 (= (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B)) (toValue!11 KeywordValueInjection!67 lt!282423)))))

(assert (= (and bs!95153 (not res!294130)) b!663252))

(declare-fun bs!95154 () Bool)

(assert (= bs!95154 (and m!929643 m!929543)))

(assert (=> bs!95154 m!929643))

(assert (=> bs!95154 m!929543))

(assert (=> bs!95154 s!45003))

(declare-fun bs!95155 () Bool)

(declare-fun s!45005 () Bool)

(assert (= bs!95155 (and neg-inst!352 s!45005)))

(declare-fun res!294131 () Bool)

(declare-fun e!410804 () Bool)

(assert (=> bs!95155 (=> res!294131 e!410804)))

(assert (=> bs!95155 (= res!294131 (not (= (list!3067 lt!282423) (list!3067 (singletonSeq!461 #x005B)))))))

(assert (=> bs!95155 (=> true e!410804)))

(declare-fun b!663253 () Bool)

(assert (=> b!663253 (= e!410804 (= (toValue!11 KeywordValueInjection!67 lt!282423) (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B))))))

(assert (= (and bs!95155 (not res!294131)) b!663253))

(assert (=> bs!95154 m!929543))

(assert (=> bs!95154 m!929643))

(assert (=> bs!95154 s!45005))

(declare-fun bs!95156 () Bool)

(declare-fun s!45007 () Bool)

(assert (= bs!95156 (and neg-inst!352 s!45007)))

(declare-fun res!294132 () Bool)

(declare-fun e!410805 () Bool)

(assert (=> bs!95156 (=> res!294132 e!410805)))

(assert (=> bs!95156 (= res!294132 (not (= (list!3067 x!146870) (list!3067 (singletonSeq!461 #x005B)))))))

(assert (=> bs!95156 (=> true e!410805)))

(declare-fun b!663254 () Bool)

(assert (=> b!663254 (= e!410805 (= (toValue!11 KeywordValueInjection!67 x!146870) (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B))))))

(assert (= (and bs!95156 (not res!294132)) b!663254))

(assert (=> bs!95145 m!929515))

(assert (=> bs!95145 m!929643))

(assert (=> bs!95145 s!45007))

(assert (=> m!929643 s!44999))

(declare-fun bs!95157 () Bool)

(declare-fun s!45009 () Bool)

(assert (= bs!95157 (and neg-inst!352 s!45009)))

(declare-fun res!294133 () Bool)

(declare-fun e!410806 () Bool)

(assert (=> bs!95157 (=> res!294133 e!410806)))

(assert (=> bs!95157 (= res!294133 (not (= (list!3067 x!146871) (list!3067 (singletonSeq!461 #x005B)))))))

(assert (=> bs!95157 (=> true e!410806)))

(declare-fun b!663255 () Bool)

(assert (=> b!663255 (= e!410806 (= (toValue!11 KeywordValueInjection!67 x!146871) (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B))))))

(assert (= (and bs!95157 (not res!294133)) b!663255))

(assert (=> bs!95146 m!929517))

(assert (=> bs!95146 m!929643))

(assert (=> bs!95146 s!45009))

(declare-fun bs!95158 () Bool)

(declare-fun s!45011 () Bool)

(assert (= bs!95158 (and neg-inst!352 s!45011)))

(declare-fun res!294134 () Bool)

(declare-fun e!410807 () Bool)

(assert (=> bs!95158 (=> res!294134 e!410807)))

(assert (=> bs!95158 (= res!294134 (not (= (list!3067 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (list!3067 (singletonSeq!461 #x005B)))))))

(assert (=> bs!95158 (=> true e!410807)))

(declare-fun b!663256 () Bool)

(assert (=> b!663256 (= e!410807 (= (toValue!11 KeywordValueInjection!67 (toCharacters!4 KeywordValueInjection!67 (toValue!11 KeywordValueInjection!67 x!146869))) (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B))))))

(assert (= (and bs!95158 (not res!294134)) b!663256))

(assert (=> bs!95148 m!929513))

(assert (=> bs!95148 m!929643))

(assert (=> bs!95148 s!45011))

(assert (=> bs!95152 s!44999))

(declare-fun bs!95159 () Bool)

(declare-fun s!45013 () Bool)

(assert (= bs!95159 (and neg-inst!352 s!45013)))

(declare-fun res!294135 () Bool)

(declare-fun e!410808 () Bool)

(assert (=> bs!95159 (=> res!294135 e!410808)))

(assert (=> bs!95159 (= res!294135 (not (= (list!3067 x!146869) (list!3067 (singletonSeq!461 #x005B)))))))

(assert (=> bs!95159 (=> true e!410808)))

(declare-fun b!663257 () Bool)

(assert (=> b!663257 (= e!410808 (= (toValue!11 KeywordValueInjection!67 x!146869) (toValue!11 KeywordValueInjection!67 (singletonSeq!461 #x005B))))))

(assert (= (and bs!95159 (not res!294135)) b!663257))

(assert (=> bs!95151 m!929511))

(assert (=> bs!95151 m!929643))

(assert (=> bs!95151 s!45013))

(declare-fun bs!95160 () Bool)

(assert (= bs!95160 (and m!929641 m!929517 m!929525)))

(assert (=> bs!95160 m!929643))

(assert (=> bs!95160 m!929517))

(assert (=> bs!95160 s!44993))

(declare-fun bs!95161 () Bool)

(assert (= bs!95161 (and m!929641 m!929523 m!929515)))

(assert (=> bs!95161 s!44995))

(declare-fun bs!95162 () Bool)

(assert (= bs!95162 (and m!929641 m!929543)))

(assert (=> bs!95162 s!45003))

(declare-fun bs!95163 () Bool)

(assert (= bs!95163 (and m!929641 m!929505 m!929511)))

(assert (=> bs!95163 s!45001))

(declare-fun bs!95164 () Bool)

(assert (= bs!95164 m!929641))

(assert (=> bs!95164 s!44999))

(declare-fun bs!95165 () Bool)

(assert (= bs!95165 (and m!929641 m!929513)))

(assert (=> bs!95165 s!44997))

(assert (=> bs!95165 s!45011))

(assert (=> bs!95164 s!44999))

(assert (=> bs!95162 s!45005))

(assert (=> bs!95163 s!45013))

(assert (=> bs!95161 s!45007))

(assert (=> bs!95160 s!45009))

(assert (=> bs!95142 m!929641))

(assert (=> d!226557 d!226579))

(check-sat (not b_next!19263) (not b_next!19265) (not b!663208) (not bs!95116) (not bs!95153) (not bs!95158) (not b!663227) (not d!226551) (not b!663252) (not b!663198) (not setNonEmpty!3271) (not bs!95139) (not d!226569) (not bs!95120) (not bs!95133) (not bs!95100) (not b!663221) (not b!663214) (not b!663237) (not b!663243) (not bs!95144) (not b!663187) (not bs!95159) (not setNonEmpty!3258) (not b!663250) (not d!226559) (not b!663179) (not b!663128) (not b!663256) (not b!663195) (not d!226561) (not b!663197) (not b!663177) (not bs!95114) (not b!663193) (not setNonEmpty!3257) (not bs!95118) (not b!663244) (not b!663202) (not b!663211) (not bs!95138) (not d!226553) (not bs!95150) (not b!663176) (not bs!95093) (not b!663255) (not b_lambda!25791) (not b_next!19261) (not b!663196) (not setNonEmpty!3266) b_and!62991 (not bs!95157) (not bs!95137) (not b!663205) (not b!663199) (not b!663200) (not setNonEmpty!3259) (not b!663230) (not b!663175) (not setNonEmpty!3265) (not setNonEmpty!3254) (not b!663181) (not b_next!19267) (not d!226547) (not bs!95094) (not b!663247) (not d!226563) b_and!62993 (not bs!95129) (not bs!95142) (not bs!95136) (not bs!95156) (not bs!95091) (not b!663257) (not b!663189) (not b!663135) (not bs!95123) (not b!663194) b_and!62997 (not b!663129) (not b!663246) (not b!663183) (not bs!95096) (not setNonEmpty!3272) (not mapNonEmpty!2821) (not b!663178) (not b!663201) (not bs!95097) (not b!663254) (not b!663249) (not bs!95102) (not b!663180) (not b!663188) (not b!663190) (not b!663171) (not setNonEmpty!3270) (not setNonEmpty!3269) (not setNonEmpty!3260) (not bs!95147) b_and!62995 (not b!663245) (not b!663251) (not b!663228) (not bs!95121) (not b!663144) (not b!663184) (not d!226555) (not b!663248) (not bs!95103) (not bs!95131) (not d!226565) (not b!663174) (not bs!95127) (not b!663222) (not b!663186) (not bs!95135) (not mapNonEmpty!2818) (not b!663185) (not bs!95122) (not bs!95149) (not bs!95098) (not setNonEmpty!3253) (not bs!95104) (not bs!95155) (not b!663182) (not b!663229) (not b!663173) (not b!663238) (not bs!95143) (not b!663172) (not b!663253))
(check-sat (not b_next!19265) (not b_next!19267) b_and!62993 b_and!62997 b_and!62995 (not b_next!19263) b_and!62991 (not b_next!19261))
