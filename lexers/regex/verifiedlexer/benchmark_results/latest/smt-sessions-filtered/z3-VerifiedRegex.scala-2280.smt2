; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111280 () Bool)

(assert start!111280)

(declare-fun b!1259273 () Bool)

(declare-fun b_free!29815 () Bool)

(declare-fun b_next!30519 () Bool)

(assert (=> b!1259273 (= b_free!29815 (not b_next!30519))))

(declare-fun tp!371276 () Bool)

(declare-fun b_and!84959 () Bool)

(assert (=> b!1259273 (= tp!371276 b_and!84959)))

(declare-fun b!1259278 () Bool)

(declare-fun b_free!29817 () Bool)

(declare-fun b_next!30521 () Bool)

(assert (=> b!1259278 (= b_free!29817 (not b_next!30521))))

(declare-fun tp!371275 () Bool)

(declare-fun b_and!84961 () Bool)

(assert (=> b!1259278 (= tp!371275 b_and!84961)))

(declare-fun b!1259277 () Bool)

(declare-fun b_free!29819 () Bool)

(declare-fun b_next!30523 () Bool)

(assert (=> b!1259277 (= b_free!29819 (not b_next!30523))))

(declare-fun tp!371277 () Bool)

(declare-fun b_and!84963 () Bool)

(assert (=> b!1259277 (= tp!371277 b_and!84963)))

(declare-fun b!1259272 () Bool)

(declare-fun b_free!29821 () Bool)

(declare-fun b_next!30525 () Bool)

(assert (=> b!1259272 (= b_free!29821 (not b_next!30525))))

(declare-fun tp!371273 () Bool)

(declare-fun b_and!84965 () Bool)

(assert (=> b!1259272 (= tp!371273 b_and!84965)))

(declare-fun mapIsEmpty!6363 () Bool)

(declare-fun mapRes!6363 () Bool)

(assert (=> mapIsEmpty!6363 mapRes!6363))

(declare-fun tp!371280 () Bool)

(declare-fun tp!371282 () Bool)

(declare-datatypes ((Regex!3483 0))(
  ( (ElementMatch!3483 (c!209083 (_ BitVec 16))) (Concat!5743 (regOne!7478 Regex!3483) (regTwo!7478 Regex!3483)) (EmptyExpr!3483) (Star!3483 (reg!3812 Regex!3483)) (EmptyLang!3483) (Union!3483 (regOne!7479 Regex!3483) (regTwo!7479 Regex!3483)) )
))
(declare-datatypes ((List!12698 0))(
  ( (Nil!12632) (Cons!12632 (h!18033 Regex!3483) (t!116124 List!12698)) )
))
(declare-datatypes ((Context!1090 0))(
  ( (Context!1091 (exprs!1045 List!12698)) )
))
(declare-datatypes ((tuple3!1140 0))(
  ( (tuple3!1141 (_1!7130 Regex!3483) (_2!7130 Context!1090) (_3!861 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!12538 0))(
  ( (tuple2!12539 (_1!7131 tuple3!1140) (_2!7131 (InoxSet Context!1090))) )
))
(declare-datatypes ((List!12699 0))(
  ( (Nil!12633) (Cons!12633 (h!18034 tuple2!12538) (t!116125 List!12699)) )
))
(declare-datatypes ((array!4710 0))(
  ( (array!4711 (arr!2099 (Array (_ BitVec 32) List!12699)) (size!10003 (_ BitVec 32))) )
))
(declare-datatypes ((array!4712 0))(
  ( (array!4713 (arr!2100 (Array (_ BitVec 32) (_ BitVec 64))) (size!10004 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2652 0))(
  ( (LongMapFixedSize!2653 (defaultEntry!1686 Int) (mask!4150 (_ BitVec 32)) (extraKeys!1573 (_ BitVec 32)) (zeroValue!1583 List!12699) (minValue!1583 List!12699) (_size!2733 (_ BitVec 32)) (_keys!1620 array!4712) (_values!1605 array!4710) (_vacant!1387 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5189 0))(
  ( (Cell!5190 (v!20874 LongMapFixedSize!2652)) )
))
(declare-datatypes ((MutLongMap!1326 0))(
  ( (LongMap!1326 (underlying!2859 Cell!5189)) (MutLongMapExt!1325 (__x!8274 Int)) )
))
(declare-datatypes ((Cell!5191 0))(
  ( (Cell!5192 (v!20875 MutLongMap!1326)) )
))
(declare-datatypes ((Hashable!1270 0))(
  ( (HashableExt!1269 (__x!8275 Int)) )
))
(declare-datatypes ((MutableMap!1270 0))(
  ( (MutableMapExt!1269 (__x!8276 Int)) (HashMap!1270 (underlying!2860 Cell!5191) (hashF!3189 Hashable!1270) (_size!2734 (_ BitVec 32)) (defaultValue!1430 Int)) )
))
(declare-datatypes ((CacheDown!742 0))(
  ( (CacheDown!743 (cache!1651 MutableMap!1270)) )
))
(declare-fun cacheDown!356 () CacheDown!742)

(declare-fun e!801937 () Bool)

(declare-fun e!801932 () Bool)

(declare-fun array_inv!1527 (array!4712) Bool)

(declare-fun array_inv!1528 (array!4710) Bool)

(assert (=> b!1259272 (= e!801937 (and tp!371273 tp!371282 tp!371280 (array_inv!1527 (_keys!1620 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) (array_inv!1528 (_values!1605 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) e!801932))))

(declare-fun e!801933 () Bool)

(declare-fun e!801928 () Bool)

(assert (=> b!1259273 (= e!801933 (and e!801928 tp!371276))))

(declare-fun b!1259274 () Bool)

(declare-datatypes ((List!12700 0))(
  ( (Nil!12634) (Cons!12634 (h!18035 (_ BitVec 16)) (t!116126 List!12700)) )
))
(declare-datatypes ((TokenValue!2260 0))(
  ( (FloatLiteralValue!4520 (text!16265 List!12700)) (TokenValueExt!2259 (__x!8277 Int)) (Broken!11300 (value!71142 List!12700)) (Object!2325) (End!2260) (Def!2260) (Underscore!2260) (Match!2260) (Else!2260) (Error!2260) (Case!2260) (If!2260) (Extends!2260) (Abstract!2260) (Class!2260) (Val!2260) (DelimiterValue!4520 (del!2320 List!12700)) (KeywordValue!2266 (value!71143 List!12700)) (CommentValue!4520 (value!71144 List!12700)) (WhitespaceValue!4520 (value!71145 List!12700)) (IndentationValue!2260 (value!71146 List!12700)) (String!15533) (Int32!2260) (Broken!11301 (value!71147 List!12700)) (Boolean!2261) (Unit!18896) (OperatorValue!2263 (op!2320 List!12700)) (IdentifierValue!4520 (value!71148 List!12700)) (IdentifierValue!4521 (value!71149 List!12700)) (WhitespaceValue!4521 (value!71150 List!12700)) (True!4520) (False!4520) (Broken!11302 (value!71151 List!12700)) (Broken!11303 (value!71152 List!12700)) (True!4521) (RightBrace!2260) (RightBracket!2260) (Colon!2260) (Null!2260) (Comma!2260) (LeftBracket!2260) (False!4521) (LeftBrace!2260) (ImaginaryLiteralValue!2260 (text!16266 List!12700)) (StringLiteralValue!6780 (value!71153 List!12700)) (EOFValue!2260 (value!71154 List!12700)) (IdentValue!2260 (value!71155 List!12700)) (DelimiterValue!4521 (value!71156 List!12700)) (DedentValue!2260 (value!71157 List!12700)) (NewLineValue!2260 (value!71158 List!12700)) (IntegerValue!6780 (value!71159 (_ BitVec 32)) (text!16267 List!12700)) (IntegerValue!6781 (value!71160 Int) (text!16268 List!12700)) (Times!2260) (Or!2260) (Equal!2260) (Minus!2260) (Broken!11304 (value!71161 List!12700)) (And!2260) (Div!2260) (LessEqual!2260) (Mod!2260) (Concat!5744) (Not!2260) (Plus!2260) (SpaceValue!2260 (value!71162 List!12700)) (IntegerValue!6782 (value!71163 Int) (text!16269 List!12700)) (StringLiteralValue!6781 (text!16270 List!12700)) (FloatLiteralValue!4521 (text!16271 List!12700)) (BytesLiteralValue!2260 (value!71164 List!12700)) (CommentValue!4521 (value!71165 List!12700)) (StringLiteralValue!6782 (value!71166 List!12700)) (ErrorTokenValue!2260 (msg!2321 List!12700)) )
))
(declare-datatypes ((String!15534 0))(
  ( (String!15535 (value!71167 String)) )
))
(declare-datatypes ((IArray!8309 0))(
  ( (IArray!8310 (innerList!4212 List!12700)) )
))
(declare-datatypes ((Conc!4152 0))(
  ( (Node!4152 (left!10932 Conc!4152) (right!11262 Conc!4152) (csize!8534 Int) (cheight!4363 Int)) (Leaf!6433 (xs!6863 IArray!8309) (csize!8535 Int)) (Empty!4152) )
))
(declare-datatypes ((BalanceConc!8244 0))(
  ( (BalanceConc!8245 (c!209084 Conc!4152)) )
))
(declare-datatypes ((TokenValueInjection!4180 0))(
  ( (TokenValueInjection!4181 (toValue!3333 Int) (toChars!3192 Int)) )
))
(declare-datatypes ((Rule!4140 0))(
  ( (Rule!4141 (regex!2170 Regex!3483) (tag!2432 String!15534) (isSeparator!2170 Bool) (transformation!2170 TokenValueInjection!4180)) )
))
(declare-datatypes ((Token!4002 0))(
  ( (Token!4003 (value!71168 TokenValue!2260) (rule!3601 Rule!4140) (size!10005 Int) (originalCharacters!2724 List!12700)) )
))
(declare-datatypes ((List!12701 0))(
  ( (Nil!12635) (Cons!12635 (h!18036 Token!4002) (t!116127 List!12701)) )
))
(declare-datatypes ((IArray!8311 0))(
  ( (IArray!8312 (innerList!4213 List!12701)) )
))
(declare-datatypes ((Conc!4153 0))(
  ( (Node!4153 (left!10933 Conc!4153) (right!11263 Conc!4153) (csize!8536 Int) (cheight!4364 Int)) (Leaf!6434 (xs!6864 IArray!8311) (csize!8537 Int)) (Empty!4153) )
))
(declare-datatypes ((List!12702 0))(
  ( (Nil!12636) (Cons!12636 (h!18037 Rule!4140) (t!116128 List!12702)) )
))
(declare-datatypes ((BalanceConc!8246 0))(
  ( (BalanceConc!8247 (c!209085 Conc!4153)) )
))
(declare-datatypes ((PrintableTokens!748 0))(
  ( (PrintableTokens!749 (rules!9944 List!12702) (tokens!1698 BalanceConc!8246)) )
))
(declare-datatypes ((Option!2530 0))(
  ( (None!2529) (Some!2529 (v!20876 PrintableTokens!748)) )
))
(declare-fun e!801940 () Option!2530)

(declare-fun lt!421292 () List!12702)

(declare-fun lt!421293 () BalanceConc!8246)

(declare-fun printableTokensFromTokens!23 (List!12702 BalanceConc!8246) Option!2530)

(assert (=> b!1259274 (= e!801940 (printableTokensFromTokens!23 lt!421292 lt!421293))))

(declare-fun b!1259275 () Bool)

(declare-fun e!801934 () Bool)

(declare-fun e!801923 () Bool)

(assert (=> b!1259275 (= e!801934 e!801923)))

(declare-fun res!557382 () Bool)

(assert (=> b!1259275 (=> (not res!557382) (not e!801923))))

(declare-fun lt!421291 () Option!2530)

(declare-fun isEmpty!7514 (Option!2530) Bool)

(assert (=> b!1259275 (= res!557382 (not (isEmpty!7514 lt!421291)))))

(assert (=> b!1259275 (= lt!421291 e!801940)))

(declare-datatypes ((Hashable!1271 0))(
  ( (HashableExt!1270 (__x!8278 Int)) )
))
(declare-datatypes ((tuple2!12540 0))(
  ( (tuple2!12541 (_1!7132 Context!1090) (_2!7132 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!12542 0))(
  ( (tuple2!12543 (_1!7133 tuple2!12540) (_2!7133 (InoxSet Context!1090))) )
))
(declare-datatypes ((List!12703 0))(
  ( (Nil!12637) (Cons!12637 (h!18038 tuple2!12542) (t!116129 List!12703)) )
))
(declare-datatypes ((array!4714 0))(
  ( (array!4715 (arr!2101 (Array (_ BitVec 32) List!12703)) (size!10006 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2654 0))(
  ( (LongMapFixedSize!2655 (defaultEntry!1687 Int) (mask!4151 (_ BitVec 32)) (extraKeys!1574 (_ BitVec 32)) (zeroValue!1584 List!12703) (minValue!1584 List!12703) (_size!2735 (_ BitVec 32)) (_keys!1621 array!4712) (_values!1606 array!4714) (_vacant!1388 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5193 0))(
  ( (Cell!5194 (v!20877 LongMapFixedSize!2654)) )
))
(declare-datatypes ((MutLongMap!1327 0))(
  ( (LongMap!1327 (underlying!2861 Cell!5193)) (MutLongMapExt!1326 (__x!8279 Int)) )
))
(declare-datatypes ((Cell!5195 0))(
  ( (Cell!5196 (v!20878 MutLongMap!1327)) )
))
(declare-datatypes ((MutableMap!1271 0))(
  ( (MutableMapExt!1270 (__x!8280 Int)) (HashMap!1271 (underlying!2862 Cell!5195) (hashF!3190 Hashable!1271) (_size!2736 (_ BitVec 32)) (defaultValue!1431 Int)) )
))
(declare-datatypes ((CacheUp!740 0))(
  ( (CacheUp!741 (cache!1652 MutableMap!1271)) )
))
(declare-fun cacheUp!343 () CacheUp!740)

(declare-fun c!209082 () Bool)

(declare-datatypes ((tuple3!1142 0))(
  ( (tuple3!1143 (_1!7134 Bool) (_2!7134 CacheUp!740) (_3!862 CacheDown!742)) )
))
(declare-datatypes ((LexerInterface!1865 0))(
  ( (LexerInterfaceExt!1862 (__x!8281 Int)) (Lexer!1863) )
))
(declare-fun rulesProduceEachTokenIndividuallyMem!33 (LexerInterface!1865 List!12702 BalanceConc!8246 CacheUp!740 CacheDown!742) tuple3!1142)

(assert (=> b!1259275 (= c!209082 (not (_1!7134 (rulesProduceEachTokenIndividuallyMem!33 Lexer!1863 lt!421292 lt!421293 cacheUp!343 cacheDown!356))))))

(declare-fun singletonSeq!764 (Token!4002) BalanceConc!8246)

(declare-fun apply!2709 (TokenValueInjection!4180 BalanceConc!8244) TokenValue!2260)

(declare-datatypes ((KeywordValueInjection!158 0))(
  ( (KeywordValueInjection!159) )
))
(declare-fun injection!9 (KeywordValueInjection!158) TokenValueInjection!4180)

(declare-fun singletonSeq!765 ((_ BitVec 16)) BalanceConc!8244)

(declare-datatypes ((JsonLexer!356 0))(
  ( (JsonLexer!357) )
))
(declare-fun rBracketRule!0 (JsonLexer!356) Rule!4140)

(assert (=> b!1259275 (= lt!421293 (singletonSeq!764 (Token!4003 (apply!2709 (injection!9 KeywordValueInjection!159) (singletonSeq!765 #x005D)) (rBracketRule!0 JsonLexer!357) 1 (Cons!12634 #x005D Nil!12634))))))

(declare-fun b!1259276 () Bool)

(declare-fun e!801925 () Bool)

(declare-fun lt!421294 () MutLongMap!1326)

(get-info :version)

(assert (=> b!1259276 (= e!801928 (and e!801925 ((_ is LongMap!1326) lt!421294)))))

(assert (=> b!1259276 (= lt!421294 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))

(declare-fun e!801930 () Bool)

(declare-fun e!801931 () Bool)

(assert (=> b!1259277 (= e!801930 (and e!801931 tp!371277))))

(declare-fun mapNonEmpty!6363 () Bool)

(declare-fun mapRes!6364 () Bool)

(declare-fun tp!371270 () Bool)

(declare-fun tp!371281 () Bool)

(assert (=> mapNonEmpty!6363 (= mapRes!6364 (and tp!371270 tp!371281))))

(declare-fun mapRest!6364 () (Array (_ BitVec 32) List!12703))

(declare-fun mapKey!6364 () (_ BitVec 32))

(declare-fun mapValue!6364 () List!12703)

(assert (=> mapNonEmpty!6363 (= (arr!2101 (_values!1606 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) (store mapRest!6364 mapKey!6364 mapValue!6364))))

(declare-fun tp!371274 () Bool)

(declare-fun e!801922 () Bool)

(declare-fun e!801926 () Bool)

(declare-fun tp!371279 () Bool)

(declare-fun array_inv!1529 (array!4714) Bool)

(assert (=> b!1259278 (= e!801922 (and tp!371275 tp!371279 tp!371274 (array_inv!1527 (_keys!1621 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) (array_inv!1529 (_values!1606 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) e!801926))))

(declare-fun b!1259279 () Bool)

(declare-fun e!801939 () Bool)

(declare-fun e!801938 () Bool)

(assert (=> b!1259279 (= e!801939 e!801938)))

(declare-fun b!1259280 () Bool)

(assert (=> b!1259280 (= e!801938 e!801922)))

(declare-fun b!1259281 () Bool)

(declare-fun lt!421290 () MutLongMap!1327)

(assert (=> b!1259281 (= e!801931 (and e!801939 ((_ is LongMap!1327) lt!421290)))))

(assert (=> b!1259281 (= lt!421290 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))

(declare-fun b!1259282 () Bool)

(declare-fun res!557383 () Bool)

(assert (=> b!1259282 (=> (not res!557383) (not e!801934))))

(declare-fun rulesInvariant!1738 (LexerInterface!1865 List!12702) Bool)

(assert (=> b!1259282 (= res!557383 (rulesInvariant!1738 Lexer!1863 lt!421292))))

(declare-fun b!1259283 () Bool)

(declare-fun isDefined!2165 (Option!2530) Bool)

(assert (=> b!1259283 (= e!801923 (not (isDefined!2165 lt!421291)))))

(declare-fun b!1259284 () Bool)

(declare-fun tp!371271 () Bool)

(assert (=> b!1259284 (= e!801926 (and tp!371271 mapRes!6364))))

(declare-fun condMapEmpty!6363 () Bool)

(declare-fun mapDefault!6363 () List!12703)

(assert (=> b!1259284 (= condMapEmpty!6363 (= (arr!2101 (_values!1606 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) ((as const (Array (_ BitVec 32) List!12703)) mapDefault!6363)))))

(declare-fun res!557381 () Bool)

(assert (=> start!111280 (=> (not res!557381) (not e!801934))))

(declare-fun isEmpty!7515 (List!12702) Bool)

(assert (=> start!111280 (= res!557381 (not (isEmpty!7515 lt!421292)))))

(declare-fun rules!109 (JsonLexer!356) List!12702)

(assert (=> start!111280 (= lt!421292 (rules!109 JsonLexer!357))))

(assert (=> start!111280 e!801934))

(declare-fun e!801924 () Bool)

(declare-fun inv!17022 (CacheUp!740) Bool)

(assert (=> start!111280 (and (inv!17022 cacheUp!343) e!801924)))

(declare-fun e!801927 () Bool)

(declare-fun inv!17023 (CacheDown!742) Bool)

(assert (=> start!111280 (and (inv!17023 cacheDown!356) e!801927)))

(declare-fun mapNonEmpty!6364 () Bool)

(declare-fun tp!371278 () Bool)

(declare-fun tp!371269 () Bool)

(assert (=> mapNonEmpty!6364 (= mapRes!6363 (and tp!371278 tp!371269))))

(declare-fun mapKey!6363 () (_ BitVec 32))

(declare-fun mapValue!6363 () List!12699)

(declare-fun mapRest!6363 () (Array (_ BitVec 32) List!12699))

(assert (=> mapNonEmpty!6364 (= (arr!2099 (_values!1605 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) (store mapRest!6363 mapKey!6363 mapValue!6363))))

(declare-fun b!1259285 () Bool)

(assert (=> b!1259285 (= e!801940 None!2529)))

(declare-fun b!1259286 () Bool)

(assert (=> b!1259286 (= e!801927 e!801933)))

(declare-fun b!1259287 () Bool)

(declare-fun e!801936 () Bool)

(assert (=> b!1259287 (= e!801936 e!801937)))

(declare-fun mapIsEmpty!6364 () Bool)

(assert (=> mapIsEmpty!6364 mapRes!6364))

(declare-fun b!1259288 () Bool)

(assert (=> b!1259288 (= e!801924 e!801930)))

(declare-fun b!1259289 () Bool)

(assert (=> b!1259289 (= e!801925 e!801936)))

(declare-fun b!1259290 () Bool)

(declare-fun tp!371272 () Bool)

(assert (=> b!1259290 (= e!801932 (and tp!371272 mapRes!6363))))

(declare-fun condMapEmpty!6364 () Bool)

(declare-fun mapDefault!6364 () List!12699)

(assert (=> b!1259290 (= condMapEmpty!6364 (= (arr!2099 (_values!1605 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) ((as const (Array (_ BitVec 32) List!12699)) mapDefault!6364)))))

(assert (= (and start!111280 res!557381) b!1259282))

(assert (= (and b!1259282 res!557383) b!1259275))

(assert (= (and b!1259275 c!209082) b!1259285))

(assert (= (and b!1259275 (not c!209082)) b!1259274))

(assert (= (and b!1259275 res!557382) b!1259283))

(assert (= (and b!1259284 condMapEmpty!6363) mapIsEmpty!6364))

(assert (= (and b!1259284 (not condMapEmpty!6363)) mapNonEmpty!6363))

(assert (= b!1259278 b!1259284))

(assert (= b!1259280 b!1259278))

(assert (= b!1259279 b!1259280))

(assert (= (and b!1259281 ((_ is LongMap!1327) (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))) b!1259279))

(assert (= b!1259277 b!1259281))

(assert (= (and b!1259288 ((_ is HashMap!1271) (cache!1652 cacheUp!343))) b!1259277))

(assert (= start!111280 b!1259288))

(assert (= (and b!1259290 condMapEmpty!6364) mapIsEmpty!6363))

(assert (= (and b!1259290 (not condMapEmpty!6364)) mapNonEmpty!6364))

(assert (= b!1259272 b!1259290))

(assert (= b!1259287 b!1259272))

(assert (= b!1259289 b!1259287))

(assert (= (and b!1259276 ((_ is LongMap!1326) (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))) b!1259289))

(assert (= b!1259273 b!1259276))

(assert (= (and b!1259286 ((_ is HashMap!1270) (cache!1651 cacheDown!356))) b!1259273))

(assert (= start!111280 b!1259286))

(declare-fun m!1417709 () Bool)

(assert (=> b!1259278 m!1417709))

(declare-fun m!1417711 () Bool)

(assert (=> b!1259278 m!1417711))

(declare-fun m!1417713 () Bool)

(assert (=> b!1259275 m!1417713))

(assert (=> b!1259275 m!1417713))

(declare-fun m!1417715 () Bool)

(assert (=> b!1259275 m!1417715))

(declare-fun m!1417717 () Bool)

(assert (=> b!1259275 m!1417717))

(declare-fun m!1417719 () Bool)

(assert (=> b!1259275 m!1417719))

(assert (=> b!1259275 m!1417715))

(declare-fun m!1417721 () Bool)

(assert (=> b!1259275 m!1417721))

(declare-fun m!1417723 () Bool)

(assert (=> b!1259275 m!1417723))

(declare-fun m!1417725 () Bool)

(assert (=> b!1259275 m!1417725))

(declare-fun m!1417727 () Bool)

(assert (=> b!1259282 m!1417727))

(declare-fun m!1417729 () Bool)

(assert (=> mapNonEmpty!6364 m!1417729))

(declare-fun m!1417731 () Bool)

(assert (=> mapNonEmpty!6363 m!1417731))

(declare-fun m!1417733 () Bool)

(assert (=> b!1259272 m!1417733))

(declare-fun m!1417735 () Bool)

(assert (=> b!1259272 m!1417735))

(declare-fun m!1417737 () Bool)

(assert (=> b!1259274 m!1417737))

(declare-fun m!1417739 () Bool)

(assert (=> start!111280 m!1417739))

(declare-fun m!1417741 () Bool)

(assert (=> start!111280 m!1417741))

(declare-fun m!1417743 () Bool)

(assert (=> start!111280 m!1417743))

(declare-fun m!1417745 () Bool)

(assert (=> start!111280 m!1417745))

(declare-fun m!1417747 () Bool)

(assert (=> b!1259283 m!1417747))

(check-sat (not b!1259278) (not b!1259283) (not start!111280) (not mapNonEmpty!6364) b_and!84965 (not b!1259284) (not b_next!30523) (not mapNonEmpty!6363) b_and!84961 (not b_next!30521) b_and!84959 (not b!1259272) (not b!1259282) (not b!1259275) (not b!1259290) (not b_next!30519) (not b!1259274) b_and!84963 (not b_next!30525))
(check-sat b_and!84965 (not b_next!30523) (not b_next!30519) b_and!84961 (not b_next!30521) b_and!84959 b_and!84963 (not b_next!30525))
(get-model)

(declare-fun d!355891 () Bool)

(assert (=> d!355891 (= (array_inv!1527 (_keys!1620 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) (bvsge (size!10004 (_keys!1620 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259272 d!355891))

(declare-fun d!355893 () Bool)

(assert (=> d!355893 (= (array_inv!1528 (_values!1605 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) (bvsge (size!10003 (_values!1605 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259272 d!355893))

(declare-fun d!355895 () Bool)

(declare-fun res!557386 () Bool)

(declare-fun e!801943 () Bool)

(assert (=> d!355895 (=> (not res!557386) (not e!801943))))

(declare-fun rulesValid!788 (LexerInterface!1865 List!12702) Bool)

(assert (=> d!355895 (= res!557386 (rulesValid!788 Lexer!1863 lt!421292))))

(assert (=> d!355895 (= (rulesInvariant!1738 Lexer!1863 lt!421292) e!801943)))

(declare-fun b!1259293 () Bool)

(declare-datatypes ((List!12704 0))(
  ( (Nil!12638) (Cons!12638 (h!18039 String!15534) (t!116146 List!12704)) )
))
(declare-fun noDuplicateTag!788 (LexerInterface!1865 List!12702 List!12704) Bool)

(assert (=> b!1259293 (= e!801943 (noDuplicateTag!788 Lexer!1863 lt!421292 Nil!12638))))

(assert (= (and d!355895 res!557386) b!1259293))

(declare-fun m!1417749 () Bool)

(assert (=> d!355895 m!1417749))

(declare-fun m!1417751 () Bool)

(assert (=> b!1259293 m!1417751))

(assert (=> b!1259282 d!355895))

(declare-fun d!355897 () Bool)

(assert (=> d!355897 (= (isEmpty!7515 lt!421292) ((_ is Nil!12636) lt!421292))))

(assert (=> start!111280 d!355897))

(declare-fun d!355899 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!356) Rule!4140)

(declare-fun integerLiteralRule!0 (JsonLexer!356) Rule!4140)

(declare-fun floatLiteralRule!0 (JsonLexer!356) Rule!4140)

(declare-fun trueRule!0 (JsonLexer!356) Rule!4140)

(declare-fun falseRule!0 (JsonLexer!356) Rule!4140)

(declare-fun nullRule!0 (JsonLexer!356) Rule!4140)

(declare-fun jsonstringRule!0 (JsonLexer!356) Rule!4140)

(declare-fun lBraceRule!0 (JsonLexer!356) Rule!4140)

(declare-fun rBraceRule!0 (JsonLexer!356) Rule!4140)

(declare-fun lBracketRule!0 (JsonLexer!356) Rule!4140)

(declare-fun colonRule!0 (JsonLexer!356) Rule!4140)

(declare-fun commaRule!0 (JsonLexer!356) Rule!4140)

(declare-fun eofRule!0 (JsonLexer!356) Rule!4140)

(assert (=> d!355899 (= (rules!109 JsonLexer!357) (Cons!12636 (whitespaceRule!0 JsonLexer!357) (Cons!12636 (integerLiteralRule!0 JsonLexer!357) (Cons!12636 (floatLiteralRule!0 JsonLexer!357) (Cons!12636 (trueRule!0 JsonLexer!357) (Cons!12636 (falseRule!0 JsonLexer!357) (Cons!12636 (nullRule!0 JsonLexer!357) (Cons!12636 (jsonstringRule!0 JsonLexer!357) (Cons!12636 (lBraceRule!0 JsonLexer!357) (Cons!12636 (rBraceRule!0 JsonLexer!357) (Cons!12636 (lBracketRule!0 JsonLexer!357) (Cons!12636 (rBracketRule!0 JsonLexer!357) (Cons!12636 (colonRule!0 JsonLexer!357) (Cons!12636 (commaRule!0 JsonLexer!357) (Cons!12636 (eofRule!0 JsonLexer!357) Nil!12636)))))))))))))))))

(declare-fun bs!291364 () Bool)

(assert (= bs!291364 d!355899))

(declare-fun m!1417753 () Bool)

(assert (=> bs!291364 m!1417753))

(declare-fun m!1417755 () Bool)

(assert (=> bs!291364 m!1417755))

(declare-fun m!1417757 () Bool)

(assert (=> bs!291364 m!1417757))

(declare-fun m!1417759 () Bool)

(assert (=> bs!291364 m!1417759))

(declare-fun m!1417761 () Bool)

(assert (=> bs!291364 m!1417761))

(declare-fun m!1417763 () Bool)

(assert (=> bs!291364 m!1417763))

(declare-fun m!1417765 () Bool)

(assert (=> bs!291364 m!1417765))

(declare-fun m!1417767 () Bool)

(assert (=> bs!291364 m!1417767))

(declare-fun m!1417769 () Bool)

(assert (=> bs!291364 m!1417769))

(declare-fun m!1417771 () Bool)

(assert (=> bs!291364 m!1417771))

(declare-fun m!1417773 () Bool)

(assert (=> bs!291364 m!1417773))

(declare-fun m!1417775 () Bool)

(assert (=> bs!291364 m!1417775))

(declare-fun m!1417777 () Bool)

(assert (=> bs!291364 m!1417777))

(assert (=> bs!291364 m!1417725))

(assert (=> start!111280 d!355899))

(declare-fun d!355901 () Bool)

(declare-fun res!557389 () Bool)

(declare-fun e!801946 () Bool)

(assert (=> d!355901 (=> (not res!557389) (not e!801946))))

(assert (=> d!355901 (= res!557389 ((_ is HashMap!1271) (cache!1652 cacheUp!343)))))

(assert (=> d!355901 (= (inv!17022 cacheUp!343) e!801946)))

(declare-fun b!1259296 () Bool)

(declare-fun validCacheMapUp!120 (MutableMap!1271) Bool)

(assert (=> b!1259296 (= e!801946 (validCacheMapUp!120 (cache!1652 cacheUp!343)))))

(assert (= (and d!355901 res!557389) b!1259296))

(declare-fun m!1417779 () Bool)

(assert (=> b!1259296 m!1417779))

(assert (=> start!111280 d!355901))

(declare-fun d!355903 () Bool)

(declare-fun res!557392 () Bool)

(declare-fun e!801949 () Bool)

(assert (=> d!355903 (=> (not res!557392) (not e!801949))))

(assert (=> d!355903 (= res!557392 ((_ is HashMap!1270) (cache!1651 cacheDown!356)))))

(assert (=> d!355903 (= (inv!17023 cacheDown!356) e!801949)))

(declare-fun b!1259299 () Bool)

(declare-fun validCacheMapDown!120 (MutableMap!1270) Bool)

(assert (=> b!1259299 (= e!801949 (validCacheMapDown!120 (cache!1651 cacheDown!356)))))

(assert (= (and d!355903 res!557392) b!1259299))

(declare-fun m!1417781 () Bool)

(assert (=> b!1259299 m!1417781))

(assert (=> start!111280 d!355903))

(declare-fun b!1259311 () Bool)

(declare-fun e!801958 () Bool)

(declare-fun lt!421297 () Option!2530)

(declare-fun get!4174 (Option!2530) PrintableTokens!748)

(assert (=> b!1259311 (= e!801958 (= (tokens!1698 (get!4174 lt!421297)) lt!421293))))

(declare-fun b!1259309 () Bool)

(declare-fun e!801957 () Option!2530)

(assert (=> b!1259309 (= e!801957 None!2529)))

(declare-fun d!355905 () Bool)

(declare-fun e!801956 () Bool)

(assert (=> d!355905 e!801956))

(declare-fun res!557398 () Bool)

(assert (=> d!355905 (=> res!557398 e!801956)))

(assert (=> d!355905 (= res!557398 (isEmpty!7514 lt!421297))))

(assert (=> d!355905 (= lt!421297 e!801957)))

(declare-fun c!209088 () Bool)

(declare-fun separableTokens!161 (LexerInterface!1865 BalanceConc!8246 List!12702) Bool)

(assert (=> d!355905 (= c!209088 (separableTokens!161 Lexer!1863 lt!421293 lt!421292))))

(assert (=> d!355905 (not (isEmpty!7515 lt!421292))))

(assert (=> d!355905 (= (printableTokensFromTokens!23 lt!421292 lt!421293) lt!421297)))

(declare-fun b!1259310 () Bool)

(assert (=> b!1259310 (= e!801956 e!801958)))

(declare-fun res!557397 () Bool)

(assert (=> b!1259310 (=> (not res!557397) (not e!801958))))

(assert (=> b!1259310 (= res!557397 (= (rules!9944 (get!4174 lt!421297)) lt!421292))))

(declare-fun b!1259308 () Bool)

(assert (=> b!1259308 (= e!801957 (Some!2529 (PrintableTokens!749 lt!421292 lt!421293)))))

(assert (= (and d!355905 c!209088) b!1259308))

(assert (= (and d!355905 (not c!209088)) b!1259309))

(assert (= (and d!355905 (not res!557398)) b!1259310))

(assert (= (and b!1259310 res!557397) b!1259311))

(declare-fun m!1417783 () Bool)

(assert (=> b!1259311 m!1417783))

(declare-fun m!1417785 () Bool)

(assert (=> d!355905 m!1417785))

(declare-fun m!1417787 () Bool)

(assert (=> d!355905 m!1417787))

(assert (=> d!355905 m!1417739))

(assert (=> b!1259310 m!1417783))

(assert (=> b!1259274 d!355905))

(declare-fun d!355907 () Bool)

(declare-fun e!801961 () Bool)

(assert (=> d!355907 e!801961))

(declare-fun res!557401 () Bool)

(assert (=> d!355907 (=> (not res!557401) (not e!801961))))

(declare-fun lt!421300 () BalanceConc!8244)

(declare-fun list!4714 (BalanceConc!8244) List!12700)

(assert (=> d!355907 (= res!557401 (= (list!4714 lt!421300) (Cons!12634 #x005D Nil!12634)))))

(declare-fun singleton!323 ((_ BitVec 16)) BalanceConc!8244)

(assert (=> d!355907 (= lt!421300 (singleton!323 #x005D))))

(assert (=> d!355907 (= (singletonSeq!765 #x005D) lt!421300)))

(declare-fun b!1259314 () Bool)

(declare-fun isBalanced!1213 (Conc!4152) Bool)

(assert (=> b!1259314 (= e!801961 (isBalanced!1213 (c!209084 lt!421300)))))

(assert (= (and d!355907 res!557401) b!1259314))

(declare-fun m!1417789 () Bool)

(assert (=> d!355907 m!1417789))

(declare-fun m!1417791 () Bool)

(assert (=> d!355907 m!1417791))

(declare-fun m!1417793 () Bool)

(assert (=> b!1259314 m!1417793))

(assert (=> b!1259275 d!355907))

(declare-fun d!355909 () Bool)

(assert (=> d!355909 true))

(assert (=> d!355909 true))

(assert (=> d!355909 true))

(assert (=> d!355909 true))

(declare-fun b!1259337 () Bool)

(declare-fun e!801976 () Bool)

(declare-fun x!246038 () BalanceConc!8244)

(declare-fun tp!371289 () Bool)

(declare-fun inv!17024 (Conc!4152) Bool)

(assert (=> b!1259337 (= e!801976 (and (inv!17024 (c!209084 x!246038)) tp!371289))))

(declare-fun inst!964 () Bool)

(declare-fun inv!17025 (BalanceConc!8244) Bool)

(declare-fun toCharacters!4 (KeywordValueInjection!158 TokenValue!2260) BalanceConc!8244)

(declare-fun toValue!11 (KeywordValueInjection!158 BalanceConc!8244) TokenValue!2260)

(assert (=> d!355909 (= inst!964 (=> (and (inv!17025 x!246038) e!801976) (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 x!246038))))))

(assert (= d!355909 b!1259337))

(declare-fun m!1417795 () Bool)

(assert (=> b!1259337 m!1417795))

(declare-fun m!1417797 () Bool)

(assert (=> d!355909 m!1417797))

(declare-fun m!1417799 () Bool)

(assert (=> d!355909 m!1417799))

(declare-fun m!1417801 () Bool)

(assert (=> d!355909 m!1417801))

(declare-fun m!1417803 () Bool)

(assert (=> d!355909 m!1417803))

(assert (=> d!355909 m!1417797))

(assert (=> d!355909 m!1417799))

(declare-fun m!1417805 () Bool)

(assert (=> d!355909 m!1417805))

(declare-fun res!557410 () Bool)

(declare-fun e!801977 () Bool)

(assert (=> d!355909 (=> res!557410 e!801977)))

(declare-fun x!246039 () BalanceConc!8244)

(declare-fun x!246040 () BalanceConc!8244)

(assert (=> d!355909 (= res!557410 (not (= (list!4714 x!246039) (list!4714 x!246040))))))

(declare-fun inst!965 () Bool)

(declare-fun e!801978 () Bool)

(declare-fun e!801979 () Bool)

(assert (=> d!355909 (= inst!965 (=> (and (inv!17025 x!246039) e!801979 (inv!17025 x!246040) e!801978) e!801977))))

(declare-fun b!1259338 () Bool)

(assert (=> b!1259338 (= e!801977 (= (toValue!11 KeywordValueInjection!159 x!246039) (toValue!11 KeywordValueInjection!159 x!246040)))))

(declare-fun b!1259339 () Bool)

(declare-fun tp!371291 () Bool)

(assert (=> b!1259339 (= e!801979 (and (inv!17024 (c!209084 x!246039)) tp!371291))))

(declare-fun b!1259340 () Bool)

(declare-fun tp!371290 () Bool)

(assert (=> b!1259340 (= e!801978 (and (inv!17024 (c!209084 x!246040)) tp!371290))))

(assert (= (and d!355909 (not res!557410)) b!1259338))

(assert (= d!355909 b!1259339))

(assert (= d!355909 b!1259340))

(declare-fun m!1417807 () Bool)

(assert (=> d!355909 m!1417807))

(declare-fun m!1417809 () Bool)

(assert (=> d!355909 m!1417809))

(declare-fun m!1417811 () Bool)

(assert (=> d!355909 m!1417811))

(declare-fun m!1417813 () Bool)

(assert (=> d!355909 m!1417813))

(declare-fun m!1417815 () Bool)

(assert (=> b!1259338 m!1417815))

(declare-fun m!1417817 () Bool)

(assert (=> b!1259338 m!1417817))

(declare-fun m!1417819 () Bool)

(assert (=> b!1259339 m!1417819))

(declare-fun m!1417821 () Bool)

(assert (=> b!1259340 m!1417821))

(declare-fun bs!291365 () Bool)

(declare-fun neg-inst!965 () Bool)

(declare-fun s!183887 () Bool)

(assert (= bs!291365 (and neg-inst!965 s!183887)))

(assert (=> bs!291365 (=> true (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 x!246038)))))

(assert (=> m!1417805 m!1417797))

(assert (=> m!1417805 m!1417799))

(assert (=> m!1417805 m!1417801))

(assert (=> m!1417805 s!183887))

(assert (=> m!1417797 s!183887))

(declare-fun bs!291366 () Bool)

(assert (= bs!291366 (and neg-inst!965 d!355909)))

(assert (=> bs!291366 (= true inst!964)))

(declare-fun bs!291367 () Bool)

(declare-fun neg-inst!964 () Bool)

(declare-fun s!183889 () Bool)

(assert (= bs!291367 (and neg-inst!964 s!183889)))

(declare-fun res!557411 () Bool)

(declare-fun e!801980 () Bool)

(assert (=> bs!291367 (=> res!557411 e!801980)))

(assert (=> bs!291367 (= res!557411 (not (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))))))))

(assert (=> bs!291367 (=> true e!801980)))

(declare-fun b!1259341 () Bool)

(assert (=> b!1259341 (= e!801980 (= (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038)))))))

(assert (= (and bs!291367 (not res!557411)) b!1259341))

(assert (=> m!1417801 s!183889))

(assert (=> m!1417801 s!183889))

(declare-fun bs!291368 () Bool)

(declare-fun s!183891 () Bool)

(assert (= bs!291368 (and neg-inst!964 s!183891)))

(declare-fun res!557412 () Bool)

(declare-fun e!801981 () Bool)

(assert (=> bs!291368 (=> res!557412 e!801981)))

(assert (=> bs!291368 (= res!557412 (not (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 x!246038))))))

(assert (=> bs!291368 (=> true e!801981)))

(declare-fun b!1259342 () Bool)

(assert (=> b!1259342 (= e!801981 (= (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (toValue!11 KeywordValueInjection!159 x!246038)))))

(assert (= (and bs!291368 (not res!557412)) b!1259342))

(declare-fun bs!291369 () Bool)

(assert (= bs!291369 (and m!1417805 m!1417801)))

(assert (=> bs!291369 m!1417801))

(assert (=> bs!291369 m!1417805))

(assert (=> bs!291369 s!183891))

(declare-fun bs!291370 () Bool)

(declare-fun s!183893 () Bool)

(assert (= bs!291370 (and neg-inst!964 s!183893)))

(declare-fun res!557413 () Bool)

(declare-fun e!801982 () Bool)

(assert (=> bs!291370 (=> res!557413 e!801982)))

(assert (=> bs!291370 (= res!557413 (not (= (list!4714 x!246038) (list!4714 x!246038))))))

(assert (=> bs!291370 (=> true e!801982)))

(declare-fun b!1259343 () Bool)

(assert (=> b!1259343 (= e!801982 (= (toValue!11 KeywordValueInjection!159 x!246038) (toValue!11 KeywordValueInjection!159 x!246038)))))

(assert (= (and bs!291370 (not res!557413)) b!1259343))

(assert (=> m!1417805 s!183893))

(declare-fun bs!291371 () Bool)

(declare-fun s!183895 () Bool)

(assert (= bs!291371 (and neg-inst!964 s!183895)))

(declare-fun res!557414 () Bool)

(declare-fun e!801983 () Bool)

(assert (=> bs!291371 (=> res!557414 e!801983)))

(assert (=> bs!291371 (= res!557414 (not (= (list!4714 x!246038) (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))))))))

(assert (=> bs!291371 (=> true e!801983)))

(declare-fun b!1259344 () Bool)

(assert (=> b!1259344 (= e!801983 (= (toValue!11 KeywordValueInjection!159 x!246038) (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038)))))))

(assert (= (and bs!291371 (not res!557414)) b!1259344))

(assert (=> bs!291369 m!1417805))

(assert (=> bs!291369 m!1417801))

(assert (=> bs!291369 s!183895))

(assert (=> m!1417805 s!183893))

(declare-fun bs!291372 () Bool)

(declare-fun s!183897 () Bool)

(assert (= bs!291372 (and neg-inst!964 s!183897)))

(declare-fun res!557415 () Bool)

(declare-fun e!801984 () Bool)

(assert (=> bs!291372 (=> res!557415 e!801984)))

(assert (=> bs!291372 (= res!557415 (not (= (list!4714 x!246038) (list!4714 x!246040))))))

(assert (=> bs!291372 (=> true e!801984)))

(declare-fun b!1259345 () Bool)

(assert (=> b!1259345 (= e!801984 (= (toValue!11 KeywordValueInjection!159 x!246038) (toValue!11 KeywordValueInjection!159 x!246040)))))

(assert (= (and bs!291372 (not res!557415)) b!1259345))

(declare-fun bs!291373 () Bool)

(assert (= bs!291373 (and m!1417817 m!1417805)))

(assert (=> bs!291373 m!1417805))

(assert (=> bs!291373 m!1417809))

(assert (=> bs!291373 s!183897))

(declare-fun bs!291374 () Bool)

(declare-fun s!183899 () Bool)

(assert (= bs!291374 (and neg-inst!964 s!183899)))

(declare-fun res!557416 () Bool)

(declare-fun e!801985 () Bool)

(assert (=> bs!291374 (=> res!557416 e!801985)))

(assert (=> bs!291374 (= res!557416 (not (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 x!246040))))))

(assert (=> bs!291374 (=> true e!801985)))

(declare-fun b!1259346 () Bool)

(assert (=> b!1259346 (= e!801985 (= (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (toValue!11 KeywordValueInjection!159 x!246040)))))

(assert (= (and bs!291374 (not res!557416)) b!1259346))

(declare-fun bs!291375 () Bool)

(assert (= bs!291375 (and m!1417817 m!1417801)))

(assert (=> bs!291375 m!1417801))

(assert (=> bs!291375 m!1417809))

(assert (=> bs!291375 s!183899))

(declare-fun bs!291376 () Bool)

(declare-fun s!183901 () Bool)

(assert (= bs!291376 (and neg-inst!964 s!183901)))

(declare-fun res!557417 () Bool)

(declare-fun e!801986 () Bool)

(assert (=> bs!291376 (=> res!557417 e!801986)))

(assert (=> bs!291376 (= res!557417 (not (= (list!4714 x!246040) (list!4714 x!246040))))))

(assert (=> bs!291376 (=> true e!801986)))

(declare-fun b!1259347 () Bool)

(assert (=> b!1259347 (= e!801986 (= (toValue!11 KeywordValueInjection!159 x!246040) (toValue!11 KeywordValueInjection!159 x!246040)))))

(assert (= (and bs!291376 (not res!557417)) b!1259347))

(assert (=> m!1417817 m!1417809))

(assert (=> m!1417817 m!1417809))

(assert (=> m!1417817 s!183901))

(declare-fun bs!291377 () Bool)

(declare-fun s!183903 () Bool)

(assert (= bs!291377 (and neg-inst!964 s!183903)))

(declare-fun res!557418 () Bool)

(declare-fun e!801987 () Bool)

(assert (=> bs!291377 (=> res!557418 e!801987)))

(assert (=> bs!291377 (= res!557418 (not (= (list!4714 x!246040) (list!4714 x!246038))))))

(assert (=> bs!291377 (=> true e!801987)))

(declare-fun b!1259348 () Bool)

(assert (=> b!1259348 (= e!801987 (= (toValue!11 KeywordValueInjection!159 x!246040) (toValue!11 KeywordValueInjection!159 x!246038)))))

(assert (= (and bs!291377 (not res!557418)) b!1259348))

(assert (=> bs!291373 m!1417809))

(assert (=> bs!291373 m!1417805))

(assert (=> bs!291373 s!183903))

(declare-fun bs!291378 () Bool)

(declare-fun s!183905 () Bool)

(assert (= bs!291378 (and neg-inst!964 s!183905)))

(declare-fun res!557419 () Bool)

(declare-fun e!801988 () Bool)

(assert (=> bs!291378 (=> res!557419 e!801988)))

(assert (=> bs!291378 (= res!557419 (not (= (list!4714 x!246040) (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))))))))

(assert (=> bs!291378 (=> true e!801988)))

(declare-fun b!1259349 () Bool)

(assert (=> b!1259349 (= e!801988 (= (toValue!11 KeywordValueInjection!159 x!246040) (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038)))))))

(assert (= (and bs!291378 (not res!557419)) b!1259349))

(assert (=> bs!291375 m!1417809))

(assert (=> bs!291375 m!1417801))

(assert (=> bs!291375 s!183905))

(assert (=> m!1417817 s!183901))

(declare-fun bs!291379 () Bool)

(declare-fun s!183907 () Bool)

(assert (= bs!291379 (and neg-inst!964 s!183907)))

(declare-fun res!557420 () Bool)

(declare-fun e!801989 () Bool)

(assert (=> bs!291379 (=> res!557420 e!801989)))

(assert (=> bs!291379 (= res!557420 (not (= (list!4714 x!246038) (list!4714 x!246039))))))

(assert (=> bs!291379 (=> true e!801989)))

(declare-fun b!1259350 () Bool)

(assert (=> b!1259350 (= e!801989 (= (toValue!11 KeywordValueInjection!159 x!246038) (toValue!11 KeywordValueInjection!159 x!246039)))))

(assert (= (and bs!291379 (not res!557420)) b!1259350))

(declare-fun bs!291380 () Bool)

(assert (= bs!291380 (and m!1417807 m!1417805)))

(assert (=> bs!291380 m!1417805))

(assert (=> bs!291380 m!1417807))

(assert (=> bs!291380 s!183907))

(declare-fun bs!291381 () Bool)

(declare-fun s!183909 () Bool)

(assert (= bs!291381 (and neg-inst!964 s!183909)))

(declare-fun res!557421 () Bool)

(declare-fun e!801990 () Bool)

(assert (=> bs!291381 (=> res!557421 e!801990)))

(assert (=> bs!291381 (= res!557421 (not (= (list!4714 x!246040) (list!4714 x!246039))))))

(assert (=> bs!291381 (=> true e!801990)))

(declare-fun b!1259351 () Bool)

(assert (=> b!1259351 (= e!801990 (= (toValue!11 KeywordValueInjection!159 x!246040) (toValue!11 KeywordValueInjection!159 x!246039)))))

(assert (= (and bs!291381 (not res!557421)) b!1259351))

(declare-fun bs!291382 () Bool)

(assert (= bs!291382 (and m!1417807 m!1417817)))

(assert (=> bs!291382 m!1417809))

(assert (=> bs!291382 m!1417807))

(assert (=> bs!291382 s!183909))

(declare-fun bs!291383 () Bool)

(declare-fun s!183911 () Bool)

(assert (= bs!291383 (and neg-inst!964 s!183911)))

(declare-fun res!557422 () Bool)

(declare-fun e!801991 () Bool)

(assert (=> bs!291383 (=> res!557422 e!801991)))

(assert (=> bs!291383 (= res!557422 (not (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 x!246039))))))

(assert (=> bs!291383 (=> true e!801991)))

(declare-fun b!1259352 () Bool)

(assert (=> b!1259352 (= e!801991 (= (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (toValue!11 KeywordValueInjection!159 x!246039)))))

(assert (= (and bs!291383 (not res!557422)) b!1259352))

(declare-fun bs!291384 () Bool)

(assert (= bs!291384 (and m!1417807 m!1417801)))

(assert (=> bs!291384 m!1417801))

(assert (=> bs!291384 m!1417807))

(assert (=> bs!291384 s!183911))

(declare-fun bs!291385 () Bool)

(declare-fun s!183913 () Bool)

(assert (= bs!291385 (and neg-inst!964 s!183913)))

(declare-fun res!557423 () Bool)

(declare-fun e!801992 () Bool)

(assert (=> bs!291385 (=> res!557423 e!801992)))

(assert (=> bs!291385 (= res!557423 (not (= (list!4714 x!246039) (list!4714 x!246039))))))

(assert (=> bs!291385 (=> true e!801992)))

(declare-fun b!1259353 () Bool)

(assert (=> b!1259353 (= e!801992 (= (toValue!11 KeywordValueInjection!159 x!246039) (toValue!11 KeywordValueInjection!159 x!246039)))))

(assert (= (and bs!291385 (not res!557423)) b!1259353))

(assert (=> m!1417807 s!183913))

(declare-fun bs!291386 () Bool)

(declare-fun s!183915 () Bool)

(assert (= bs!291386 (and neg-inst!964 s!183915)))

(declare-fun res!557424 () Bool)

(declare-fun e!801993 () Bool)

(assert (=> bs!291386 (=> res!557424 e!801993)))

(assert (=> bs!291386 (= res!557424 (not (= (list!4714 x!246039) (list!4714 x!246038))))))

(assert (=> bs!291386 (=> true e!801993)))

(declare-fun b!1259354 () Bool)

(assert (=> b!1259354 (= e!801993 (= (toValue!11 KeywordValueInjection!159 x!246039) (toValue!11 KeywordValueInjection!159 x!246038)))))

(assert (= (and bs!291386 (not res!557424)) b!1259354))

(assert (=> bs!291380 m!1417807))

(assert (=> bs!291380 m!1417805))

(assert (=> bs!291380 s!183915))

(declare-fun bs!291387 () Bool)

(declare-fun s!183917 () Bool)

(assert (= bs!291387 (and neg-inst!964 s!183917)))

(declare-fun res!557425 () Bool)

(declare-fun e!801994 () Bool)

(assert (=> bs!291387 (=> res!557425 e!801994)))

(assert (=> bs!291387 (= res!557425 (not (= (list!4714 x!246039) (list!4714 x!246040))))))

(assert (=> bs!291387 (=> true e!801994)))

(declare-fun b!1259355 () Bool)

(assert (=> b!1259355 (= e!801994 (= (toValue!11 KeywordValueInjection!159 x!246039) (toValue!11 KeywordValueInjection!159 x!246040)))))

(assert (= (and bs!291387 (not res!557425)) b!1259355))

(assert (=> bs!291382 m!1417807))

(assert (=> bs!291382 m!1417809))

(assert (=> bs!291382 s!183917))

(declare-fun bs!291388 () Bool)

(declare-fun s!183919 () Bool)

(assert (= bs!291388 (and neg-inst!964 s!183919)))

(declare-fun res!557426 () Bool)

(declare-fun e!801995 () Bool)

(assert (=> bs!291388 (=> res!557426 e!801995)))

(assert (=> bs!291388 (= res!557426 (not (= (list!4714 x!246039) (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))))))))

(assert (=> bs!291388 (=> true e!801995)))

(declare-fun b!1259356 () Bool)

(assert (=> b!1259356 (= e!801995 (= (toValue!11 KeywordValueInjection!159 x!246039) (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038)))))))

(assert (= (and bs!291388 (not res!557426)) b!1259356))

(assert (=> bs!291384 m!1417807))

(assert (=> bs!291384 m!1417801))

(assert (=> bs!291384 s!183919))

(assert (=> m!1417807 s!183913))

(declare-fun bs!291389 () Bool)

(assert (= bs!291389 (and m!1417809 m!1417807)))

(assert (=> bs!291389 s!183917))

(declare-fun bs!291390 () Bool)

(assert (= bs!291390 (and m!1417809 m!1417817)))

(assert (=> bs!291390 s!183901))

(declare-fun bs!291391 () Bool)

(assert (= bs!291391 (and m!1417809 m!1417801)))

(assert (=> bs!291391 s!183899))

(assert (=> m!1417809 s!183901))

(declare-fun bs!291392 () Bool)

(assert (= bs!291392 (and m!1417809 m!1417805)))

(assert (=> bs!291392 s!183897))

(assert (=> bs!291392 s!183903))

(assert (=> bs!291390 s!183901))

(assert (=> bs!291389 s!183909))

(assert (=> m!1417809 s!183901))

(assert (=> bs!291391 s!183905))

(assert (=> m!1417815 s!183913))

(declare-fun bs!291393 () Bool)

(assert (= bs!291393 (and m!1417815 m!1417807)))

(assert (=> bs!291393 s!183913))

(declare-fun bs!291394 () Bool)

(assert (= bs!291394 (and m!1417815 m!1417805)))

(assert (=> bs!291394 s!183907))

(declare-fun bs!291395 () Bool)

(assert (= bs!291395 (and m!1417815 m!1417801)))

(assert (=> bs!291395 s!183911))

(declare-fun bs!291396 () Bool)

(assert (= bs!291396 (and m!1417815 m!1417817 m!1417809)))

(assert (=> bs!291396 s!183909))

(assert (=> bs!291396 s!183917))

(assert (=> m!1417815 s!183913))

(assert (=> bs!291393 s!183913))

(assert (=> bs!291395 s!183919))

(assert (=> bs!291394 s!183915))

(declare-fun bs!291397 () Bool)

(assert (= bs!291397 (and m!1417797 m!1417805)))

(assert (=> bs!291397 s!183893))

(declare-fun bs!291398 () Bool)

(assert (= bs!291398 (and m!1417797 m!1417817 m!1417809)))

(assert (=> bs!291398 s!183903))

(declare-fun bs!291399 () Bool)

(assert (= bs!291399 (and m!1417797 m!1417801)))

(assert (=> bs!291399 s!183891))

(assert (=> m!1417797 s!183893))

(declare-fun bs!291400 () Bool)

(assert (= bs!291400 (and m!1417797 m!1417807 m!1417815)))

(assert (=> bs!291400 s!183915))

(assert (=> bs!291397 s!183893))

(assert (=> bs!291398 s!183897))

(assert (=> m!1417797 s!183893))

(assert (=> bs!291400 s!183907))

(assert (=> bs!291399 s!183895))

(declare-fun bs!291401 () Bool)

(declare-fun s!183921 () Bool)

(assert (= bs!291401 (and neg-inst!964 s!183921)))

(declare-fun res!557427 () Bool)

(declare-fun e!801996 () Bool)

(assert (=> bs!291401 (=> res!557427 e!801996)))

(assert (=> bs!291401 (= res!557427 (not (= (list!4714 lt!421300) (list!4714 lt!421300))))))

(assert (=> bs!291401 (=> true e!801996)))

(declare-fun b!1259357 () Bool)

(assert (=> b!1259357 (= e!801996 (= (toValue!11 KeywordValueInjection!159 lt!421300) (toValue!11 KeywordValueInjection!159 lt!421300)))))

(assert (= (and bs!291401 (not res!557427)) b!1259357))

(assert (=> m!1417789 s!183921))

(declare-fun bs!291402 () Bool)

(declare-fun s!183923 () Bool)

(assert (= bs!291402 (and neg-inst!964 s!183923)))

(declare-fun res!557428 () Bool)

(declare-fun e!801997 () Bool)

(assert (=> bs!291402 (=> res!557428 e!801997)))

(assert (=> bs!291402 (= res!557428 (not (= (list!4714 x!246040) (list!4714 lt!421300))))))

(assert (=> bs!291402 (=> true e!801997)))

(declare-fun b!1259358 () Bool)

(assert (=> b!1259358 (= e!801997 (= (toValue!11 KeywordValueInjection!159 x!246040) (toValue!11 KeywordValueInjection!159 lt!421300)))))

(assert (= (and bs!291402 (not res!557428)) b!1259358))

(declare-fun bs!291403 () Bool)

(assert (= bs!291403 (and m!1417789 m!1417817 m!1417809)))

(assert (=> bs!291403 m!1417809))

(assert (=> bs!291403 m!1417789))

(assert (=> bs!291403 s!183923))

(declare-fun bs!291404 () Bool)

(declare-fun s!183925 () Bool)

(assert (= bs!291404 (and neg-inst!964 s!183925)))

(declare-fun res!557429 () Bool)

(declare-fun e!801998 () Bool)

(assert (=> bs!291404 (=> res!557429 e!801998)))

(assert (=> bs!291404 (= res!557429 (not (= (list!4714 x!246039) (list!4714 lt!421300))))))

(assert (=> bs!291404 (=> true e!801998)))

(declare-fun b!1259359 () Bool)

(assert (=> b!1259359 (= e!801998 (= (toValue!11 KeywordValueInjection!159 x!246039) (toValue!11 KeywordValueInjection!159 lt!421300)))))

(assert (= (and bs!291404 (not res!557429)) b!1259359))

(declare-fun bs!291405 () Bool)

(assert (= bs!291405 (and m!1417789 m!1417807 m!1417815)))

(assert (=> bs!291405 m!1417807))

(assert (=> bs!291405 m!1417789))

(assert (=> bs!291405 s!183925))

(declare-fun bs!291406 () Bool)

(declare-fun s!183927 () Bool)

(assert (= bs!291406 (and neg-inst!964 s!183927)))

(declare-fun res!557430 () Bool)

(declare-fun e!801999 () Bool)

(assert (=> bs!291406 (=> res!557430 e!801999)))

(assert (=> bs!291406 (= res!557430 (not (= (list!4714 x!246038) (list!4714 lt!421300))))))

(assert (=> bs!291406 (=> true e!801999)))

(declare-fun b!1259360 () Bool)

(assert (=> b!1259360 (= e!801999 (= (toValue!11 KeywordValueInjection!159 x!246038) (toValue!11 KeywordValueInjection!159 lt!421300)))))

(assert (= (and bs!291406 (not res!557430)) b!1259360))

(declare-fun bs!291407 () Bool)

(assert (= bs!291407 (and m!1417789 m!1417805 m!1417797)))

(assert (=> bs!291407 m!1417805))

(assert (=> bs!291407 m!1417789))

(assert (=> bs!291407 s!183927))

(declare-fun bs!291408 () Bool)

(declare-fun s!183929 () Bool)

(assert (= bs!291408 (and neg-inst!964 s!183929)))

(declare-fun res!557431 () Bool)

(declare-fun e!802000 () Bool)

(assert (=> bs!291408 (=> res!557431 e!802000)))

(assert (=> bs!291408 (= res!557431 (not (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 lt!421300))))))

(assert (=> bs!291408 (=> true e!802000)))

(declare-fun b!1259361 () Bool)

(assert (=> b!1259361 (= e!802000 (= (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (toValue!11 KeywordValueInjection!159 lt!421300)))))

(assert (= (and bs!291408 (not res!557431)) b!1259361))

(declare-fun bs!291409 () Bool)

(assert (= bs!291409 (and m!1417789 m!1417801)))

(assert (=> bs!291409 m!1417801))

(assert (=> bs!291409 m!1417789))

(assert (=> bs!291409 s!183929))

(assert (=> m!1417789 s!183921))

(declare-fun bs!291410 () Bool)

(declare-fun s!183931 () Bool)

(assert (= bs!291410 (and neg-inst!964 s!183931)))

(declare-fun res!557432 () Bool)

(declare-fun e!802001 () Bool)

(assert (=> bs!291410 (=> res!557432 e!802001)))

(assert (=> bs!291410 (= res!557432 (not (= (list!4714 lt!421300) (list!4714 x!246039))))))

(assert (=> bs!291410 (=> true e!802001)))

(declare-fun b!1259362 () Bool)

(assert (=> b!1259362 (= e!802001 (= (toValue!11 KeywordValueInjection!159 lt!421300) (toValue!11 KeywordValueInjection!159 x!246039)))))

(assert (= (and bs!291410 (not res!557432)) b!1259362))

(assert (=> bs!291405 m!1417789))

(assert (=> bs!291405 m!1417807))

(assert (=> bs!291405 s!183931))

(declare-fun bs!291411 () Bool)

(declare-fun s!183933 () Bool)

(assert (= bs!291411 (and neg-inst!964 s!183933)))

(declare-fun res!557433 () Bool)

(declare-fun e!802002 () Bool)

(assert (=> bs!291411 (=> res!557433 e!802002)))

(assert (=> bs!291411 (= res!557433 (not (= (list!4714 lt!421300) (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))))))))

(assert (=> bs!291411 (=> true e!802002)))

(declare-fun b!1259363 () Bool)

(assert (=> b!1259363 (= e!802002 (= (toValue!11 KeywordValueInjection!159 lt!421300) (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038)))))))

(assert (= (and bs!291411 (not res!557433)) b!1259363))

(assert (=> bs!291409 m!1417789))

(assert (=> bs!291409 m!1417801))

(assert (=> bs!291409 s!183933))

(declare-fun bs!291412 () Bool)

(declare-fun s!183935 () Bool)

(assert (= bs!291412 (and neg-inst!964 s!183935)))

(declare-fun res!557434 () Bool)

(declare-fun e!802003 () Bool)

(assert (=> bs!291412 (=> res!557434 e!802003)))

(assert (=> bs!291412 (= res!557434 (not (= (list!4714 lt!421300) (list!4714 x!246038))))))

(assert (=> bs!291412 (=> true e!802003)))

(declare-fun b!1259364 () Bool)

(assert (=> b!1259364 (= e!802003 (= (toValue!11 KeywordValueInjection!159 lt!421300) (toValue!11 KeywordValueInjection!159 x!246038)))))

(assert (= (and bs!291412 (not res!557434)) b!1259364))

(assert (=> bs!291407 m!1417789))

(assert (=> bs!291407 m!1417805))

(assert (=> bs!291407 s!183935))

(declare-fun bs!291413 () Bool)

(declare-fun s!183937 () Bool)

(assert (= bs!291413 (and neg-inst!964 s!183937)))

(declare-fun res!557435 () Bool)

(declare-fun e!802004 () Bool)

(assert (=> bs!291413 (=> res!557435 e!802004)))

(assert (=> bs!291413 (= res!557435 (not (= (list!4714 lt!421300) (list!4714 x!246040))))))

(assert (=> bs!291413 (=> true e!802004)))

(declare-fun b!1259365 () Bool)

(assert (=> b!1259365 (= e!802004 (= (toValue!11 KeywordValueInjection!159 lt!421300) (toValue!11 KeywordValueInjection!159 x!246040)))))

(assert (= (and bs!291413 (not res!557435)) b!1259365))

(assert (=> bs!291403 m!1417789))

(assert (=> bs!291403 m!1417809))

(assert (=> bs!291403 s!183937))

(declare-fun bs!291414 () Bool)

(assert (= bs!291414 (and neg-inst!964 d!355909)))

(assert (=> bs!291414 (= true inst!965)))

(declare-datatypes ((Unit!18897 0))(
  ( (Unit!18898) )
))
(declare-fun lt!421310 () Unit!18897)

(declare-fun Unit!18899 () Unit!18897)

(assert (=> d!355909 (= lt!421310 Unit!18899)))

(declare-fun lambda!49924 () Int)

(declare-fun lambda!49925 () Int)

(declare-fun lambda!49926 () Int)

(declare-fun equivClasses!776 (Int Int) Bool)

(declare-fun Forall2!387 (Int) Bool)

(assert (=> d!355909 (= (equivClasses!776 lambda!49924 lambda!49925) (Forall2!387 lambda!49926))))

(declare-fun lt!421309 () Unit!18897)

(declare-fun Unit!18900 () Unit!18897)

(assert (=> d!355909 (= lt!421309 Unit!18900)))

(assert (=> d!355909 (= (Forall2!387 lambda!49926) inst!965)))

(declare-fun lt!421311 () Unit!18897)

(declare-fun Unit!18901 () Unit!18897)

(assert (=> d!355909 (= lt!421311 Unit!18901)))

(declare-fun lambda!49923 () Int)

(declare-fun semiInverseModEq!817 (Int Int) Bool)

(declare-fun Forall!485 (Int) Bool)

(assert (=> d!355909 (= (semiInverseModEq!817 lambda!49924 lambda!49925) (Forall!485 lambda!49923))))

(declare-fun lt!421312 () Unit!18897)

(declare-fun Unit!18902 () Unit!18897)

(assert (=> d!355909 (= lt!421312 Unit!18902)))

(assert (=> d!355909 (= (Forall!485 lambda!49923) inst!964)))

(assert (=> d!355909 (= (injection!9 KeywordValueInjection!159) (TokenValueInjection!4181 lambda!49925 lambda!49924))))

(assert (= neg-inst!965 inst!964))

(assert (= neg-inst!964 inst!965))

(declare-fun m!1417823 () Bool)

(assert (=> d!355909 m!1417823))

(declare-fun m!1417825 () Bool)

(assert (=> d!355909 m!1417825))

(declare-fun m!1417827 () Bool)

(assert (=> d!355909 m!1417827))

(assert (=> d!355909 m!1417823))

(declare-fun m!1417829 () Bool)

(assert (=> d!355909 m!1417829))

(assert (=> d!355909 m!1417827))

(assert (=> b!1259275 d!355909))

(declare-fun d!355911 () Bool)

(declare-fun rBracketRe!0 (JsonLexer!356) Regex!3483)

(assert (=> d!355911 (= (rBracketRule!0 JsonLexer!357) (Rule!4141 (rBracketRe!0 JsonLexer!357) (String!15535 "rriigghhttBBrraacckkeett") false (injection!9 KeywordValueInjection!159)))))

(declare-fun bs!291415 () Bool)

(assert (= bs!291415 d!355911))

(declare-fun m!1417831 () Bool)

(assert (=> bs!291415 m!1417831))

(assert (=> bs!291415 m!1417713))

(assert (=> b!1259275 d!355911))

(declare-fun d!355913 () Bool)

(declare-fun dynLambda!5514 (Int BalanceConc!8244) TokenValue!2260)

(assert (=> d!355913 (= (apply!2709 (injection!9 KeywordValueInjection!159) (singletonSeq!765 #x005D)) (dynLambda!5514 (toValue!3333 (injection!9 KeywordValueInjection!159)) (singletonSeq!765 #x005D)))))

(declare-fun b_lambda!36507 () Bool)

(assert (=> (not b_lambda!36507) (not d!355913)))

(declare-fun bs!291416 () Bool)

(assert (= bs!291416 d!355913))

(assert (=> bs!291416 m!1417715))

(declare-fun m!1417833 () Bool)

(assert (=> bs!291416 m!1417833))

(assert (=> b!1259275 d!355913))

(declare-fun b!1259382 () Bool)

(declare-fun e!802016 () Bool)

(assert (=> b!1259382 (= e!802016 true)))

(declare-fun b!1259381 () Bool)

(declare-fun e!802015 () Bool)

(assert (=> b!1259381 (= e!802015 e!802016)))

(declare-fun b!1259380 () Bool)

(declare-fun e!802014 () Bool)

(assert (=> b!1259380 (= e!802014 e!802015)))

(declare-fun d!355915 () Bool)

(assert (=> d!355915 e!802014))

(assert (= b!1259381 b!1259382))

(assert (= b!1259380 b!1259381))

(assert (= (and d!355915 ((_ is Cons!12636) lt!421292)) b!1259380))

(declare-fun order!7691 () Int)

(declare-fun order!7693 () Int)

(declare-fun lambda!49929 () Int)

(declare-fun dynLambda!5515 (Int Int) Int)

(declare-fun dynLambda!5516 (Int Int) Int)

(assert (=> b!1259382 (< (dynLambda!5515 order!7691 (toValue!3333 (transformation!2170 (h!18037 lt!421292)))) (dynLambda!5516 order!7693 lambda!49929))))

(declare-fun order!7695 () Int)

(declare-fun dynLambda!5517 (Int Int) Int)

(assert (=> b!1259382 (< (dynLambda!5517 order!7695 (toChars!3192 (transformation!2170 (h!18037 lt!421292)))) (dynLambda!5516 order!7693 lambda!49929))))

(assert (=> d!355915 true))

(declare-fun lt!421321 () tuple3!1142)

(declare-fun forall!3205 (BalanceConc!8246 Int) Bool)

(assert (=> d!355915 (= (_1!7134 lt!421321) (forall!3205 lt!421293 lambda!49929))))

(declare-fun e!802007 () tuple3!1142)

(assert (=> d!355915 (= lt!421321 e!802007)))

(declare-fun c!209098 () Bool)

(declare-fun isEmpty!7516 (BalanceConc!8246) Bool)

(assert (=> d!355915 (= c!209098 (isEmpty!7516 lt!421293))))

(assert (=> d!355915 (not (isEmpty!7515 lt!421292))))

(assert (=> d!355915 (= (rulesProduceEachTokenIndividuallyMem!33 Lexer!1863 lt!421292 lt!421293 cacheUp!343 cacheDown!356) lt!421321)))

(declare-fun b!1259370 () Bool)

(assert (=> b!1259370 (= e!802007 (tuple3!1143 true cacheUp!343 cacheDown!356))))

(declare-fun b!1259371 () Bool)

(declare-fun lt!421320 () tuple3!1142)

(declare-fun lt!421319 () tuple3!1142)

(assert (=> b!1259371 (= e!802007 (tuple3!1143 (and (_1!7134 lt!421320) (_1!7134 lt!421319)) (_2!7134 lt!421319) (_3!862 lt!421319)))))

(declare-fun rulesProduceIndividualTokenMem!17 (LexerInterface!1865 List!12702 Token!4002 CacheUp!740 CacheDown!742) tuple3!1142)

(declare-fun head!2176 (BalanceConc!8246) Token!4002)

(assert (=> b!1259371 (= lt!421320 (rulesProduceIndividualTokenMem!17 Lexer!1863 lt!421292 (head!2176 lt!421293) cacheUp!343 cacheDown!356))))

(declare-fun tail!1808 (BalanceConc!8246) BalanceConc!8246)

(assert (=> b!1259371 (= lt!421319 (rulesProduceEachTokenIndividuallyMem!33 Lexer!1863 lt!421292 (tail!1808 lt!421293) (_2!7134 lt!421320) (_3!862 lt!421320)))))

(assert (= (and d!355915 c!209098) b!1259370))

(assert (= (and d!355915 (not c!209098)) b!1259371))

(declare-fun m!1417835 () Bool)

(assert (=> d!355915 m!1417835))

(declare-fun m!1417837 () Bool)

(assert (=> d!355915 m!1417837))

(assert (=> d!355915 m!1417739))

(declare-fun m!1417839 () Bool)

(assert (=> b!1259371 m!1417839))

(assert (=> b!1259371 m!1417839))

(declare-fun m!1417841 () Bool)

(assert (=> b!1259371 m!1417841))

(declare-fun m!1417843 () Bool)

(assert (=> b!1259371 m!1417843))

(assert (=> b!1259371 m!1417843))

(declare-fun m!1417845 () Bool)

(assert (=> b!1259371 m!1417845))

(assert (=> b!1259275 d!355915))

(declare-fun d!355917 () Bool)

(assert (=> d!355917 (= (isEmpty!7514 lt!421291) (not ((_ is Some!2529) lt!421291)))))

(assert (=> b!1259275 d!355917))

(declare-fun d!355919 () Bool)

(declare-fun e!802019 () Bool)

(assert (=> d!355919 e!802019))

(declare-fun res!557438 () Bool)

(assert (=> d!355919 (=> (not res!557438) (not e!802019))))

(declare-fun lt!421324 () BalanceConc!8246)

(declare-fun list!4715 (BalanceConc!8246) List!12701)

(assert (=> d!355919 (= res!557438 (= (list!4715 lt!421324) (Cons!12635 (Token!4003 (apply!2709 (injection!9 KeywordValueInjection!159) (singletonSeq!765 #x005D)) (rBracketRule!0 JsonLexer!357) 1 (Cons!12634 #x005D Nil!12634)) Nil!12635)))))

(declare-fun singleton!324 (Token!4002) BalanceConc!8246)

(assert (=> d!355919 (= lt!421324 (singleton!324 (Token!4003 (apply!2709 (injection!9 KeywordValueInjection!159) (singletonSeq!765 #x005D)) (rBracketRule!0 JsonLexer!357) 1 (Cons!12634 #x005D Nil!12634))))))

(assert (=> d!355919 (= (singletonSeq!764 (Token!4003 (apply!2709 (injection!9 KeywordValueInjection!159) (singletonSeq!765 #x005D)) (rBracketRule!0 JsonLexer!357) 1 (Cons!12634 #x005D Nil!12634))) lt!421324)))

(declare-fun b!1259387 () Bool)

(declare-fun isBalanced!1214 (Conc!4153) Bool)

(assert (=> b!1259387 (= e!802019 (isBalanced!1214 (c!209085 lt!421324)))))

(assert (= (and d!355919 res!557438) b!1259387))

(declare-fun m!1417847 () Bool)

(assert (=> d!355919 m!1417847))

(declare-fun m!1417849 () Bool)

(assert (=> d!355919 m!1417849))

(declare-fun m!1417851 () Bool)

(assert (=> b!1259387 m!1417851))

(assert (=> b!1259275 d!355919))

(declare-fun d!355921 () Bool)

(assert (=> d!355921 (= (isDefined!2165 lt!421291) (not (isEmpty!7514 lt!421291)))))

(declare-fun bs!291417 () Bool)

(assert (= bs!291417 d!355921))

(assert (=> bs!291417 m!1417721))

(assert (=> b!1259283 d!355921))

(declare-fun d!355923 () Bool)

(assert (=> d!355923 (= (array_inv!1527 (_keys!1621 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) (bvsge (size!10004 (_keys!1621 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259278 d!355923))

(declare-fun d!355925 () Bool)

(assert (=> d!355925 (= (array_inv!1529 (_values!1606 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) (bvsge (size!10006 (_values!1606 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343))))))) #b00000000000000000000000000000000))))

(assert (=> b!1259278 d!355925))

(declare-fun b!1259392 () Bool)

(declare-fun e!802027 () Bool)

(declare-fun tp!371297 () Bool)

(declare-fun setRes!8048 () Bool)

(declare-fun inv!17026 (Context!1090) Bool)

(assert (=> b!1259392 (= e!802027 (and (inv!17026 (_2!7130 (_1!7131 (h!18034 mapDefault!6364)))) setRes!8048 tp!371297))))

(declare-fun condSetEmpty!8048 () Bool)

(assert (=> b!1259392 (= condSetEmpty!8048 (= (_2!7131 (h!18034 mapDefault!6364)) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8048 () Bool)

(assert (=> setIsEmpty!8048 setRes!8048))

(declare-fun setNonEmpty!8048 () Bool)

(declare-fun tp!371296 () Bool)

(declare-fun setElem!8048 () Context!1090)

(assert (=> setNonEmpty!8048 (= setRes!8048 (and tp!371296 (inv!17026 setElem!8048)))))

(declare-fun setRest!8048 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8048 (= (_2!7131 (h!18034 mapDefault!6364)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8048 true) setRest!8048))))

(assert (=> b!1259290 (= tp!371272 e!802027)))

(assert (= (and b!1259392 condSetEmpty!8048) setIsEmpty!8048))

(assert (= (and b!1259392 (not condSetEmpty!8048)) setNonEmpty!8048))

(assert (= (and b!1259290 ((_ is Cons!12633) mapDefault!6364)) b!1259392))

(declare-fun m!1417853 () Bool)

(assert (=> b!1259392 m!1417853))

(declare-fun m!1417855 () Bool)

(assert (=> setNonEmpty!8048 m!1417855))

(declare-fun e!802030 () Bool)

(declare-fun b!1259393 () Bool)

(declare-fun tp!371299 () Bool)

(declare-fun setRes!8049 () Bool)

(assert (=> b!1259393 (= e!802030 (and (inv!17026 (_2!7130 (_1!7131 (h!18034 (zeroValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))))) setRes!8049 tp!371299))))

(declare-fun condSetEmpty!8049 () Bool)

(assert (=> b!1259393 (= condSetEmpty!8049 (= (_2!7131 (h!18034 (zeroValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8049 () Bool)

(assert (=> setIsEmpty!8049 setRes!8049))

(declare-fun setNonEmpty!8049 () Bool)

(declare-fun tp!371298 () Bool)

(declare-fun setElem!8049 () Context!1090)

(assert (=> setNonEmpty!8049 (= setRes!8049 (and tp!371298 (inv!17026 setElem!8049)))))

(declare-fun setRest!8049 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8049 (= (_2!7131 (h!18034 (zeroValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8049 true) setRest!8049))))

(assert (=> b!1259272 (= tp!371282 e!802030)))

(assert (= (and b!1259393 condSetEmpty!8049) setIsEmpty!8049))

(assert (= (and b!1259393 (not condSetEmpty!8049)) setNonEmpty!8049))

(assert (= (and b!1259272 ((_ is Cons!12633) (zeroValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))) b!1259393))

(declare-fun m!1417857 () Bool)

(assert (=> b!1259393 m!1417857))

(declare-fun m!1417859 () Bool)

(assert (=> setNonEmpty!8049 m!1417859))

(declare-fun b!1259394 () Bool)

(declare-fun e!802033 () Bool)

(declare-fun setRes!8050 () Bool)

(declare-fun tp!371301 () Bool)

(assert (=> b!1259394 (= e!802033 (and (inv!17026 (_2!7130 (_1!7131 (h!18034 (minValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))))) setRes!8050 tp!371301))))

(declare-fun condSetEmpty!8050 () Bool)

(assert (=> b!1259394 (= condSetEmpty!8050 (= (_2!7131 (h!18034 (minValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8050 () Bool)

(assert (=> setIsEmpty!8050 setRes!8050))

(declare-fun setNonEmpty!8050 () Bool)

(declare-fun tp!371300 () Bool)

(declare-fun setElem!8050 () Context!1090)

(assert (=> setNonEmpty!8050 (= setRes!8050 (and tp!371300 (inv!17026 setElem!8050)))))

(declare-fun setRest!8050 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8050 (= (_2!7131 (h!18034 (minValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8050 true) setRest!8050))))

(assert (=> b!1259272 (= tp!371280 e!802033)))

(assert (= (and b!1259394 condSetEmpty!8050) setIsEmpty!8050))

(assert (= (and b!1259394 (not condSetEmpty!8050)) setNonEmpty!8050))

(assert (= (and b!1259272 ((_ is Cons!12633) (minValue!1583 (v!20874 (underlying!2859 (v!20875 (underlying!2860 (cache!1651 cacheDown!356)))))))) b!1259394))

(declare-fun m!1417861 () Bool)

(assert (=> b!1259394 m!1417861))

(declare-fun m!1417863 () Bool)

(assert (=> setNonEmpty!8050 m!1417863))

(declare-fun e!802051 () Bool)

(declare-fun mapDefault!6367 () List!12699)

(declare-fun tp!371315 () Bool)

(declare-fun b!1259401 () Bool)

(declare-fun setRes!8056 () Bool)

(assert (=> b!1259401 (= e!802051 (and (inv!17026 (_2!7130 (_1!7131 (h!18034 mapDefault!6367)))) setRes!8056 tp!371315))))

(declare-fun condSetEmpty!8056 () Bool)

(assert (=> b!1259401 (= condSetEmpty!8056 (= (_2!7131 (h!18034 mapDefault!6367)) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8055 () Bool)

(declare-fun setRes!8055 () Bool)

(assert (=> setIsEmpty!8055 setRes!8055))

(declare-fun mapIsEmpty!6367 () Bool)

(declare-fun mapRes!6367 () Bool)

(assert (=> mapIsEmpty!6367 mapRes!6367))

(declare-fun setIsEmpty!8056 () Bool)

(assert (=> setIsEmpty!8056 setRes!8056))

(declare-fun e!802048 () Bool)

(declare-fun tp!371316 () Bool)

(declare-fun mapValue!6367 () List!12699)

(declare-fun b!1259402 () Bool)

(assert (=> b!1259402 (= e!802048 (and (inv!17026 (_2!7130 (_1!7131 (h!18034 mapValue!6367)))) setRes!8055 tp!371316))))

(declare-fun condSetEmpty!8055 () Bool)

(assert (=> b!1259402 (= condSetEmpty!8055 (= (_2!7131 (h!18034 mapValue!6367)) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setNonEmpty!8056 () Bool)

(declare-fun tp!371313 () Bool)

(declare-fun setElem!8055 () Context!1090)

(assert (=> setNonEmpty!8056 (= setRes!8056 (and tp!371313 (inv!17026 setElem!8055)))))

(declare-fun setRest!8056 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8056 (= (_2!7131 (h!18034 mapDefault!6367)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8055 true) setRest!8056))))

(declare-fun mapNonEmpty!6367 () Bool)

(declare-fun tp!371314 () Bool)

(assert (=> mapNonEmpty!6367 (= mapRes!6367 (and tp!371314 e!802048))))

(declare-fun mapRest!6367 () (Array (_ BitVec 32) List!12699))

(declare-fun mapKey!6367 () (_ BitVec 32))

(assert (=> mapNonEmpty!6367 (= mapRest!6363 (store mapRest!6367 mapKey!6367 mapValue!6367))))

(declare-fun condMapEmpty!6367 () Bool)

(assert (=> mapNonEmpty!6364 (= condMapEmpty!6367 (= mapRest!6363 ((as const (Array (_ BitVec 32) List!12699)) mapDefault!6367)))))

(assert (=> mapNonEmpty!6364 (= tp!371278 (and e!802051 mapRes!6367))))

(declare-fun setNonEmpty!8055 () Bool)

(declare-fun tp!371312 () Bool)

(declare-fun setElem!8056 () Context!1090)

(assert (=> setNonEmpty!8055 (= setRes!8055 (and tp!371312 (inv!17026 setElem!8056)))))

(declare-fun setRest!8055 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8055 (= (_2!7131 (h!18034 mapValue!6367)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8056 true) setRest!8055))))

(assert (= (and mapNonEmpty!6364 condMapEmpty!6367) mapIsEmpty!6367))

(assert (= (and mapNonEmpty!6364 (not condMapEmpty!6367)) mapNonEmpty!6367))

(assert (= (and b!1259402 condSetEmpty!8055) setIsEmpty!8055))

(assert (= (and b!1259402 (not condSetEmpty!8055)) setNonEmpty!8055))

(assert (= (and mapNonEmpty!6367 ((_ is Cons!12633) mapValue!6367)) b!1259402))

(assert (= (and b!1259401 condSetEmpty!8056) setIsEmpty!8056))

(assert (= (and b!1259401 (not condSetEmpty!8056)) setNonEmpty!8056))

(assert (= (and mapNonEmpty!6364 ((_ is Cons!12633) mapDefault!6367)) b!1259401))

(declare-fun m!1417865 () Bool)

(assert (=> setNonEmpty!8055 m!1417865))

(declare-fun m!1417867 () Bool)

(assert (=> mapNonEmpty!6367 m!1417867))

(declare-fun m!1417869 () Bool)

(assert (=> b!1259401 m!1417869))

(declare-fun m!1417871 () Bool)

(assert (=> setNonEmpty!8056 m!1417871))

(declare-fun m!1417873 () Bool)

(assert (=> b!1259402 m!1417873))

(declare-fun setRes!8057 () Bool)

(declare-fun tp!371318 () Bool)

(declare-fun b!1259403 () Bool)

(declare-fun e!802054 () Bool)

(assert (=> b!1259403 (= e!802054 (and (inv!17026 (_2!7130 (_1!7131 (h!18034 mapValue!6363)))) setRes!8057 tp!371318))))

(declare-fun condSetEmpty!8057 () Bool)

(assert (=> b!1259403 (= condSetEmpty!8057 (= (_2!7131 (h!18034 mapValue!6363)) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8057 () Bool)

(assert (=> setIsEmpty!8057 setRes!8057))

(declare-fun setNonEmpty!8057 () Bool)

(declare-fun tp!371317 () Bool)

(declare-fun setElem!8057 () Context!1090)

(assert (=> setNonEmpty!8057 (= setRes!8057 (and tp!371317 (inv!17026 setElem!8057)))))

(declare-fun setRest!8057 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8057 (= (_2!7131 (h!18034 mapValue!6363)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8057 true) setRest!8057))))

(assert (=> mapNonEmpty!6364 (= tp!371269 e!802054)))

(assert (= (and b!1259403 condSetEmpty!8057) setIsEmpty!8057))

(assert (= (and b!1259403 (not condSetEmpty!8057)) setNonEmpty!8057))

(assert (= (and mapNonEmpty!6364 ((_ is Cons!12633) mapValue!6363)) b!1259403))

(declare-fun m!1417875 () Bool)

(assert (=> b!1259403 m!1417875))

(declare-fun m!1417877 () Bool)

(assert (=> setNonEmpty!8057 m!1417877))

(declare-fun b!1259408 () Bool)

(declare-fun e!802063 () Bool)

(declare-fun tp!371323 () Bool)

(declare-fun setRes!8060 () Bool)

(assert (=> b!1259408 (= e!802063 (and (inv!17026 (_1!7132 (_1!7133 (h!18038 mapDefault!6363)))) setRes!8060 tp!371323))))

(declare-fun condSetEmpty!8060 () Bool)

(assert (=> b!1259408 (= condSetEmpty!8060 (= (_2!7133 (h!18038 mapDefault!6363)) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8060 () Bool)

(assert (=> setIsEmpty!8060 setRes!8060))

(declare-fun setNonEmpty!8060 () Bool)

(declare-fun tp!371324 () Bool)

(declare-fun setElem!8060 () Context!1090)

(assert (=> setNonEmpty!8060 (= setRes!8060 (and tp!371324 (inv!17026 setElem!8060)))))

(declare-fun setRest!8060 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8060 (= (_2!7133 (h!18038 mapDefault!6363)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8060 true) setRest!8060))))

(assert (=> b!1259284 (= tp!371271 e!802063)))

(assert (= (and b!1259408 condSetEmpty!8060) setIsEmpty!8060))

(assert (= (and b!1259408 (not condSetEmpty!8060)) setNonEmpty!8060))

(assert (= (and b!1259284 ((_ is Cons!12637) mapDefault!6363)) b!1259408))

(declare-fun m!1417879 () Bool)

(assert (=> b!1259408 m!1417879))

(declare-fun m!1417881 () Bool)

(assert (=> setNonEmpty!8060 m!1417881))

(declare-fun mapNonEmpty!6370 () Bool)

(declare-fun mapRes!6370 () Bool)

(declare-fun tp!371337 () Bool)

(declare-fun e!802079 () Bool)

(assert (=> mapNonEmpty!6370 (= mapRes!6370 (and tp!371337 e!802079))))

(declare-fun mapRest!6370 () (Array (_ BitVec 32) List!12703))

(declare-fun mapValue!6370 () List!12703)

(declare-fun mapKey!6370 () (_ BitVec 32))

(assert (=> mapNonEmpty!6370 (= mapRest!6364 (store mapRest!6370 mapKey!6370 mapValue!6370))))

(declare-fun setNonEmpty!8065 () Bool)

(declare-fun setRes!8066 () Bool)

(declare-fun tp!371339 () Bool)

(declare-fun setElem!8066 () Context!1090)

(assert (=> setNonEmpty!8065 (= setRes!8066 (and tp!371339 (inv!17026 setElem!8066)))))

(declare-fun mapDefault!6370 () List!12703)

(declare-fun setRest!8065 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8065 (= (_2!7133 (h!18038 mapDefault!6370)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8066 true) setRest!8065))))

(declare-fun mapIsEmpty!6370 () Bool)

(assert (=> mapIsEmpty!6370 mapRes!6370))

(declare-fun setNonEmpty!8066 () Bool)

(declare-fun setRes!8065 () Bool)

(declare-fun tp!371338 () Bool)

(declare-fun setElem!8065 () Context!1090)

(assert (=> setNonEmpty!8066 (= setRes!8065 (and tp!371338 (inv!17026 setElem!8065)))))

(declare-fun setRest!8066 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8066 (= (_2!7133 (h!18038 mapValue!6370)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8065 true) setRest!8066))))

(declare-fun setIsEmpty!8066 () Bool)

(assert (=> setIsEmpty!8066 setRes!8065))

(declare-fun setIsEmpty!8065 () Bool)

(assert (=> setIsEmpty!8065 setRes!8066))

(declare-fun condMapEmpty!6370 () Bool)

(assert (=> mapNonEmpty!6363 (= condMapEmpty!6370 (= mapRest!6364 ((as const (Array (_ BitVec 32) List!12703)) mapDefault!6370)))))

(declare-fun e!802080 () Bool)

(assert (=> mapNonEmpty!6363 (= tp!371270 (and e!802080 mapRes!6370))))

(declare-fun b!1259415 () Bool)

(declare-fun tp!371336 () Bool)

(assert (=> b!1259415 (= e!802079 (and (inv!17026 (_1!7132 (_1!7133 (h!18038 mapValue!6370)))) setRes!8065 tp!371336))))

(declare-fun condSetEmpty!8066 () Bool)

(assert (=> b!1259415 (= condSetEmpty!8066 (= (_2!7133 (h!18038 mapValue!6370)) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun b!1259416 () Bool)

(declare-fun tp!371335 () Bool)

(assert (=> b!1259416 (= e!802080 (and (inv!17026 (_1!7132 (_1!7133 (h!18038 mapDefault!6370)))) setRes!8066 tp!371335))))

(declare-fun condSetEmpty!8065 () Bool)

(assert (=> b!1259416 (= condSetEmpty!8065 (= (_2!7133 (h!18038 mapDefault!6370)) ((as const (Array Context!1090 Bool)) false)))))

(assert (= (and mapNonEmpty!6363 condMapEmpty!6370) mapIsEmpty!6370))

(assert (= (and mapNonEmpty!6363 (not condMapEmpty!6370)) mapNonEmpty!6370))

(assert (= (and b!1259415 condSetEmpty!8066) setIsEmpty!8066))

(assert (= (and b!1259415 (not condSetEmpty!8066)) setNonEmpty!8066))

(assert (= (and mapNonEmpty!6370 ((_ is Cons!12637) mapValue!6370)) b!1259415))

(assert (= (and b!1259416 condSetEmpty!8065) setIsEmpty!8065))

(assert (= (and b!1259416 (not condSetEmpty!8065)) setNonEmpty!8065))

(assert (= (and mapNonEmpty!6363 ((_ is Cons!12637) mapDefault!6370)) b!1259416))

(declare-fun m!1417883 () Bool)

(assert (=> b!1259415 m!1417883))

(declare-fun m!1417885 () Bool)

(assert (=> b!1259416 m!1417885))

(declare-fun m!1417887 () Bool)

(assert (=> setNonEmpty!8066 m!1417887))

(declare-fun m!1417889 () Bool)

(assert (=> mapNonEmpty!6370 m!1417889))

(declare-fun m!1417891 () Bool)

(assert (=> setNonEmpty!8065 m!1417891))

(declare-fun e!802084 () Bool)

(declare-fun b!1259417 () Bool)

(declare-fun tp!371340 () Bool)

(declare-fun setRes!8067 () Bool)

(assert (=> b!1259417 (= e!802084 (and (inv!17026 (_1!7132 (_1!7133 (h!18038 mapValue!6364)))) setRes!8067 tp!371340))))

(declare-fun condSetEmpty!8067 () Bool)

(assert (=> b!1259417 (= condSetEmpty!8067 (= (_2!7133 (h!18038 mapValue!6364)) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8067 () Bool)

(assert (=> setIsEmpty!8067 setRes!8067))

(declare-fun setNonEmpty!8067 () Bool)

(declare-fun tp!371341 () Bool)

(declare-fun setElem!8067 () Context!1090)

(assert (=> setNonEmpty!8067 (= setRes!8067 (and tp!371341 (inv!17026 setElem!8067)))))

(declare-fun setRest!8067 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8067 (= (_2!7133 (h!18038 mapValue!6364)) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8067 true) setRest!8067))))

(assert (=> mapNonEmpty!6363 (= tp!371281 e!802084)))

(assert (= (and b!1259417 condSetEmpty!8067) setIsEmpty!8067))

(assert (= (and b!1259417 (not condSetEmpty!8067)) setNonEmpty!8067))

(assert (= (and mapNonEmpty!6363 ((_ is Cons!12637) mapValue!6364)) b!1259417))

(declare-fun m!1417893 () Bool)

(assert (=> b!1259417 m!1417893))

(declare-fun m!1417895 () Bool)

(assert (=> setNonEmpty!8067 m!1417895))

(declare-fun tp!371342 () Bool)

(declare-fun e!802087 () Bool)

(declare-fun setRes!8068 () Bool)

(declare-fun b!1259418 () Bool)

(assert (=> b!1259418 (= e!802087 (and (inv!17026 (_1!7132 (_1!7133 (h!18038 (zeroValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))))) setRes!8068 tp!371342))))

(declare-fun condSetEmpty!8068 () Bool)

(assert (=> b!1259418 (= condSetEmpty!8068 (= (_2!7133 (h!18038 (zeroValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8068 () Bool)

(assert (=> setIsEmpty!8068 setRes!8068))

(declare-fun setNonEmpty!8068 () Bool)

(declare-fun tp!371343 () Bool)

(declare-fun setElem!8068 () Context!1090)

(assert (=> setNonEmpty!8068 (= setRes!8068 (and tp!371343 (inv!17026 setElem!8068)))))

(declare-fun setRest!8068 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8068 (= (_2!7133 (h!18038 (zeroValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8068 true) setRest!8068))))

(assert (=> b!1259278 (= tp!371279 e!802087)))

(assert (= (and b!1259418 condSetEmpty!8068) setIsEmpty!8068))

(assert (= (and b!1259418 (not condSetEmpty!8068)) setNonEmpty!8068))

(assert (= (and b!1259278 ((_ is Cons!12637) (zeroValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))) b!1259418))

(declare-fun m!1417897 () Bool)

(assert (=> b!1259418 m!1417897))

(declare-fun m!1417899 () Bool)

(assert (=> setNonEmpty!8068 m!1417899))

(declare-fun tp!371344 () Bool)

(declare-fun setRes!8069 () Bool)

(declare-fun b!1259419 () Bool)

(declare-fun e!802090 () Bool)

(assert (=> b!1259419 (= e!802090 (and (inv!17026 (_1!7132 (_1!7133 (h!18038 (minValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))))) setRes!8069 tp!371344))))

(declare-fun condSetEmpty!8069 () Bool)

(assert (=> b!1259419 (= condSetEmpty!8069 (= (_2!7133 (h!18038 (minValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))) ((as const (Array Context!1090 Bool)) false)))))

(declare-fun setIsEmpty!8069 () Bool)

(assert (=> setIsEmpty!8069 setRes!8069))

(declare-fun setNonEmpty!8069 () Bool)

(declare-fun tp!371345 () Bool)

(declare-fun setElem!8069 () Context!1090)

(assert (=> setNonEmpty!8069 (= setRes!8069 (and tp!371345 (inv!17026 setElem!8069)))))

(declare-fun setRest!8069 () (InoxSet Context!1090))

(assert (=> setNonEmpty!8069 (= (_2!7133 (h!18038 (minValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))) ((_ map or) (store ((as const (Array Context!1090 Bool)) false) setElem!8069 true) setRest!8069))))

(assert (=> b!1259278 (= tp!371274 e!802090)))

(assert (= (and b!1259419 condSetEmpty!8069) setIsEmpty!8069))

(assert (= (and b!1259419 (not condSetEmpty!8069)) setNonEmpty!8069))

(assert (= (and b!1259278 ((_ is Cons!12637) (minValue!1584 (v!20877 (underlying!2861 (v!20878 (underlying!2862 (cache!1652 cacheUp!343)))))))) b!1259419))

(declare-fun m!1417901 () Bool)

(assert (=> b!1259419 m!1417901))

(declare-fun m!1417903 () Bool)

(assert (=> setNonEmpty!8069 m!1417903))

(declare-fun b_lambda!36509 () Bool)

(assert (= b_lambda!36507 (or d!355909 b_lambda!36509)))

(declare-fun bs!291418 () Bool)

(declare-fun d!355927 () Bool)

(assert (= bs!291418 (and d!355927 d!355909)))

(assert (=> bs!291418 (= (dynLambda!5514 lambda!49925 (singletonSeq!765 #x005D)) (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D)))))

(assert (=> bs!291418 m!1417715))

(declare-fun bs!291419 () Bool)

(declare-fun s!183939 () Bool)

(assert (= bs!291419 (and neg-inst!964 s!183939)))

(declare-fun res!557439 () Bool)

(declare-fun e!802092 () Bool)

(assert (=> bs!291419 (=> res!557439 e!802092)))

(assert (=> bs!291419 (= res!557439 (not (= (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (list!4714 (singletonSeq!765 #x005D)))))))

(assert (=> bs!291419 (=> true e!802092)))

(declare-fun b!1259420 () Bool)

(assert (=> b!1259420 (= e!802092 (= (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))) (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D))))))

(assert (= (and bs!291419 (not res!557439)) b!1259420))

(declare-fun bs!291420 () Bool)

(declare-fun m!1417905 () Bool)

(assert (= bs!291420 (and m!1417905 m!1417801)))

(assert (=> bs!291420 m!1417801))

(declare-fun bs!291421 () Bool)

(declare-fun s!183941 () Bool)

(assert (= bs!291421 (and neg-inst!964 s!183941)))

(declare-fun res!557440 () Bool)

(declare-fun e!802093 () Bool)

(assert (=> bs!291421 (=> res!557440 e!802093)))

(assert (=> bs!291421 (= res!557440 (not (= (list!4714 x!246038) (list!4714 (singletonSeq!765 #x005D)))))))

(assert (=> bs!291421 (=> true e!802093)))

(declare-fun b!1259421 () Bool)

(assert (=> b!1259421 (= e!802093 (= (toValue!11 KeywordValueInjection!159 x!246038) (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D))))))

(assert (= (and bs!291421 (not res!557440)) b!1259421))

(declare-fun bs!291422 () Bool)

(declare-fun m!1417907 () Bool)

(assert (= bs!291422 (and m!1417907 m!1417805 m!1417797)))

(assert (=> bs!291422 m!1417805))

(assert (=> bs!291422 m!1417907))

(assert (=> bs!291422 s!183941))

(declare-fun bs!291423 () Bool)

(declare-fun s!183943 () Bool)

(assert (= bs!291423 (and neg-inst!964 s!183943)))

(declare-fun res!557441 () Bool)

(declare-fun e!802094 () Bool)

(assert (=> bs!291423 (=> res!557441 e!802094)))

(assert (=> bs!291423 (= res!557441 (not (= (list!4714 lt!421300) (list!4714 (singletonSeq!765 #x005D)))))))

(assert (=> bs!291423 (=> true e!802094)))

(declare-fun b!1259422 () Bool)

(assert (=> b!1259422 (= e!802094 (= (toValue!11 KeywordValueInjection!159 lt!421300) (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D))))))

(assert (= (and bs!291423 (not res!557441)) b!1259422))

(declare-fun bs!291424 () Bool)

(assert (= bs!291424 (and m!1417907 m!1417789)))

(assert (=> bs!291424 m!1417789))

(assert (=> bs!291424 m!1417907))

(assert (=> bs!291424 s!183943))

(declare-fun bs!291425 () Bool)

(declare-fun s!183945 () Bool)

(assert (= bs!291425 (and neg-inst!964 s!183945)))

(declare-fun res!557442 () Bool)

(declare-fun e!802095 () Bool)

(assert (=> bs!291425 (=> res!557442 e!802095)))

(assert (=> bs!291425 (= res!557442 (not (= (list!4714 x!246039) (list!4714 (singletonSeq!765 #x005D)))))))

(assert (=> bs!291425 (=> true e!802095)))

(declare-fun b!1259423 () Bool)

(assert (=> b!1259423 (= e!802095 (= (toValue!11 KeywordValueInjection!159 x!246039) (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D))))))

(assert (= (and bs!291425 (not res!557442)) b!1259423))

(declare-fun bs!291426 () Bool)

(assert (= bs!291426 (and m!1417907 m!1417807 m!1417815)))

(assert (=> bs!291426 m!1417807))

(assert (=> bs!291426 m!1417907))

(assert (=> bs!291426 s!183945))

(declare-fun bs!291427 () Bool)

(assert (= bs!291427 (and m!1417907 m!1417801)))

(assert (=> bs!291427 s!183939))

(declare-fun bs!291428 () Bool)

(declare-fun s!183947 () Bool)

(assert (= bs!291428 (and neg-inst!964 s!183947)))

(declare-fun res!557443 () Bool)

(declare-fun e!802096 () Bool)

(assert (=> bs!291428 (=> res!557443 e!802096)))

(assert (=> bs!291428 (= res!557443 (not (= (list!4714 (singletonSeq!765 #x005D)) (list!4714 (singletonSeq!765 #x005D)))))))

(assert (=> bs!291428 (=> true e!802096)))

(declare-fun b!1259424 () Bool)

(assert (=> b!1259424 (= e!802096 (= (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D)) (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D))))))

(assert (= (and bs!291428 (not res!557443)) b!1259424))

(assert (=> m!1417907 s!183947))

(declare-fun bs!291429 () Bool)

(declare-fun s!183949 () Bool)

(assert (= bs!291429 (and neg-inst!964 s!183949)))

(declare-fun res!557444 () Bool)

(declare-fun e!802097 () Bool)

(assert (=> bs!291429 (=> res!557444 e!802097)))

(assert (=> bs!291429 (= res!557444 (not (= (list!4714 x!246040) (list!4714 (singletonSeq!765 #x005D)))))))

(assert (=> bs!291429 (=> true e!802097)))

(declare-fun b!1259425 () Bool)

(assert (=> b!1259425 (= e!802097 (= (toValue!11 KeywordValueInjection!159 x!246040) (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D))))))

(assert (= (and bs!291429 (not res!557444)) b!1259425))

(declare-fun bs!291430 () Bool)

(assert (= bs!291430 (and m!1417907 m!1417817 m!1417809)))

(assert (=> bs!291430 m!1417809))

(assert (=> bs!291430 m!1417907))

(assert (=> bs!291430 s!183949))

(declare-fun bs!291431 () Bool)

(assert (= bs!291431 (and m!1417907 m!1417905)))

(assert (=> bs!291431 s!183947))

(declare-fun bs!291432 () Bool)

(declare-fun s!183951 () Bool)

(assert (= bs!291432 (and neg-inst!964 s!183951)))

(declare-fun res!557445 () Bool)

(declare-fun e!802098 () Bool)

(assert (=> bs!291432 (=> res!557445 e!802098)))

(assert (=> bs!291432 (= res!557445 (not (= (list!4714 (singletonSeq!765 #x005D)) (list!4714 x!246038))))))

(assert (=> bs!291432 (=> true e!802098)))

(declare-fun b!1259426 () Bool)

(assert (=> b!1259426 (= e!802098 (= (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D)) (toValue!11 KeywordValueInjection!159 x!246038)))))

(assert (= (and bs!291432 (not res!557445)) b!1259426))

(assert (=> bs!291422 m!1417907))

(assert (=> bs!291422 m!1417805))

(assert (=> bs!291422 s!183951))

(assert (=> bs!291431 s!183947))

(declare-fun bs!291433 () Bool)

(declare-fun s!183953 () Bool)

(assert (= bs!291433 (and neg-inst!964 s!183953)))

(declare-fun res!557446 () Bool)

(declare-fun e!802099 () Bool)

(assert (=> bs!291433 (=> res!557446 e!802099)))

(assert (=> bs!291433 (= res!557446 (not (= (list!4714 (singletonSeq!765 #x005D)) (list!4714 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038))))))))

(assert (=> bs!291433 (=> true e!802099)))

(declare-fun b!1259427 () Bool)

(assert (=> b!1259427 (= e!802099 (= (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D)) (toValue!11 KeywordValueInjection!159 (toCharacters!4 KeywordValueInjection!159 (toValue!11 KeywordValueInjection!159 x!246038)))))))

(assert (= (and bs!291433 (not res!557446)) b!1259427))

(assert (=> bs!291427 m!1417907))

(assert (=> bs!291427 m!1417801))

(assert (=> bs!291427 s!183953))

(declare-fun bs!291434 () Bool)

(declare-fun s!183955 () Bool)

(assert (= bs!291434 (and neg-inst!964 s!183955)))

(declare-fun res!557447 () Bool)

(declare-fun e!802100 () Bool)

(assert (=> bs!291434 (=> res!557447 e!802100)))

(assert (=> bs!291434 (= res!557447 (not (= (list!4714 (singletonSeq!765 #x005D)) (list!4714 x!246040))))))

(assert (=> bs!291434 (=> true e!802100)))

(declare-fun b!1259428 () Bool)

(assert (=> b!1259428 (= e!802100 (= (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D)) (toValue!11 KeywordValueInjection!159 x!246040)))))

(assert (= (and bs!291434 (not res!557447)) b!1259428))

(assert (=> bs!291430 m!1417907))

(assert (=> bs!291430 m!1417809))

(assert (=> bs!291430 s!183955))

(declare-fun bs!291435 () Bool)

(declare-fun s!183957 () Bool)

(assert (= bs!291435 (and neg-inst!964 s!183957)))

(declare-fun res!557448 () Bool)

(declare-fun e!802101 () Bool)

(assert (=> bs!291435 (=> res!557448 e!802101)))

(assert (=> bs!291435 (= res!557448 (not (= (list!4714 (singletonSeq!765 #x005D)) (list!4714 lt!421300))))))

(assert (=> bs!291435 (=> true e!802101)))

(declare-fun b!1259429 () Bool)

(assert (=> b!1259429 (= e!802101 (= (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D)) (toValue!11 KeywordValueInjection!159 lt!421300)))))

(assert (= (and bs!291435 (not res!557448)) b!1259429))

(assert (=> bs!291424 m!1417907))

(assert (=> bs!291424 m!1417789))

(assert (=> bs!291424 s!183957))

(assert (=> m!1417907 s!183947))

(declare-fun bs!291436 () Bool)

(declare-fun s!183959 () Bool)

(assert (= bs!291436 (and neg-inst!964 s!183959)))

(declare-fun res!557449 () Bool)

(declare-fun e!802102 () Bool)

(assert (=> bs!291436 (=> res!557449 e!802102)))

(assert (=> bs!291436 (= res!557449 (not (= (list!4714 (singletonSeq!765 #x005D)) (list!4714 x!246039))))))

(assert (=> bs!291436 (=> true e!802102)))

(declare-fun b!1259430 () Bool)

(assert (=> b!1259430 (= e!802102 (= (toValue!11 KeywordValueInjection!159 (singletonSeq!765 #x005D)) (toValue!11 KeywordValueInjection!159 x!246039)))))

(assert (= (and bs!291436 (not res!557449)) b!1259430))

(assert (=> bs!291426 m!1417907))

(assert (=> bs!291426 m!1417807))

(assert (=> bs!291426 s!183959))

(assert (=> bs!291420 m!1417907))

(assert (=> bs!291420 s!183939))

(declare-fun bs!291437 () Bool)

(assert (= bs!291437 (and m!1417905 m!1417817 m!1417809)))

(assert (=> bs!291437 s!183949))

(declare-fun bs!291438 () Bool)

(assert (= bs!291438 (and m!1417905 m!1417805 m!1417797)))

(assert (=> bs!291438 s!183941))

(declare-fun bs!291439 () Bool)

(assert (= bs!291439 (and m!1417905 m!1417789)))

(assert (=> bs!291439 s!183943))

(declare-fun bs!291440 () Bool)

(assert (= bs!291440 (and m!1417905 m!1417807 m!1417815)))

(assert (=> bs!291440 s!183945))

(declare-fun bs!291441 () Bool)

(assert (= bs!291441 m!1417905))

(assert (=> bs!291441 s!183947))

(assert (=> bs!291437 s!183955))

(assert (=> bs!291420 s!183953))

(assert (=> bs!291438 s!183951))

(assert (=> bs!291441 s!183947))

(assert (=> bs!291440 s!183959))

(assert (=> bs!291439 s!183957))

(assert (=> bs!291418 m!1417905))

(assert (=> d!355913 d!355927))

(check-sat (not b!1259337) (not b!1259358) (not b!1259357) (not bs!291421) (not b!1259424) (not b_next!30521) b_and!84959 (not bs!291402) (not b!1259356) (not b!1259401) (not b!1259415) (not b!1259310) (not b!1259362) (not b!1259421) (not b!1259350) (not setNonEmpty!8049) (not b!1259347) (not bs!291388) (not b!1259430) (not b!1259345) (not b!1259355) (not b!1259380) (not b!1259359) (not setNonEmpty!8066) (not bs!291418) (not b!1259363) (not b!1259340) (not b!1259346) (not b!1259408) (not bs!291428) (not b!1259299) (not b!1259364) (not d!355909) (not bs!291377) (not bs!291381) (not bs!291411) (not mapNonEmpty!6370) (not bs!291383) (not d!355915) (not b!1259293) (not b!1259314) (not b!1259342) (not bs!291408) (not b!1259387) (not bs!291433) (not b!1259349) (not bs!291376) (not bs!291372) (not bs!291371) (not b!1259343) (not b!1259425) (not bs!291423) (not bs!291432) (not bs!291367) (not b!1259296) (not d!355907) (not d!355905) (not b!1259428) (not b!1259348) (not b!1259311) (not bs!291370) (not b!1259360) (not b!1259393) (not bs!291385) (not d!355911) (not b!1259344) (not b!1259339) (not b!1259353) (not b!1259352) (not bs!291401) (not b!1259354) (not b!1259422) (not b!1259426) b_and!84965 (not bs!291374) (not b!1259371) (not b!1259429) (not bs!291413) (not b!1259365) (not b!1259338) (not b_lambda!36509) (not bs!291365) (not d!355895) (not b!1259420) (not bs!291386) (not d!355899) (not bs!291429) (not b_next!30523) (not bs!291387) (not b!1259402) (not b!1259419) (not setNonEmpty!8056) (not setNonEmpty!8068) (not setNonEmpty!8060) (not d!355919) (not bs!291368) (not bs!291412) (not b!1259361) (not setNonEmpty!8067) (not b!1259351) (not bs!291379) (not b!1259394) (not setNonEmpty!8069) (not bs!291436) (not b!1259427) (not b!1259418) (not bs!291425) (not b!1259392) (not d!355921) (not b_next!30519) (not setNonEmpty!8048) b_and!84963 (not b!1259416) (not bs!291410) (not bs!291378) (not bs!291434) (not bs!291435) (not bs!291404) (not b_next!30525) (not setNonEmpty!8055) (not b!1259417) (not mapNonEmpty!6367) (not b!1259341) (not setNonEmpty!8050) (not setNonEmpty!8057) (not b!1259403) b_and!84961 (not b!1259423) (not setNonEmpty!8065) (not bs!291406) (not bs!291419))
(check-sat b_and!84965 (not b_next!30523) (not b_next!30519) b_and!84961 (not b_next!30521) b_and!84959 b_and!84963 (not b_next!30525))
