; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62284 () Bool)

(assert start!62284)

(declare-fun b!636231 () Bool)

(declare-fun b_free!18669 () Bool)

(declare-fun b_next!18693 () Bool)

(assert (=> b!636231 (= b_free!18669 (not b_next!18693))))

(declare-fun tp!198073 () Bool)

(declare-fun b_and!62463 () Bool)

(assert (=> b!636231 (= tp!198073 b_and!62463)))

(declare-fun b!636225 () Bool)

(declare-fun b_free!18671 () Bool)

(declare-fun b_next!18695 () Bool)

(assert (=> b!636225 (= b_free!18671 (not b_next!18695))))

(declare-fun tp!198077 () Bool)

(declare-fun b_and!62465 () Bool)

(assert (=> b!636225 (= tp!198077 b_and!62465)))

(declare-fun b!636241 () Bool)

(declare-fun b_free!18673 () Bool)

(declare-fun b_next!18697 () Bool)

(assert (=> b!636241 (= b_free!18673 (not b_next!18697))))

(declare-fun tp!198084 () Bool)

(declare-fun b_and!62467 () Bool)

(assert (=> b!636241 (= tp!198084 b_and!62467)))

(declare-fun b!636245 () Bool)

(declare-fun b_free!18675 () Bool)

(declare-fun b_next!18699 () Bool)

(assert (=> b!636245 (= b_free!18675 (not b_next!18699))))

(declare-fun tp!198070 () Bool)

(declare-fun b_and!62469 () Bool)

(assert (=> b!636245 (= tp!198070 b_and!62469)))

(declare-fun e!387412 () Bool)

(declare-fun e!387421 () Bool)

(assert (=> b!636225 (= e!387412 (and e!387421 tp!198077))))

(declare-fun b!636226 () Bool)

(declare-fun res!276395 () Bool)

(declare-fun e!387404 () Bool)

(assert (=> b!636226 (=> (not res!276395) (not e!387404))))

(declare-datatypes ((List!6777 0))(
  ( (Nil!6763) (Cons!6763 (h!12164 (_ BitVec 16)) (t!84221 List!6777)) )
))
(declare-datatypes ((TokenValue!1400 0))(
  ( (FloatLiteralValue!2800 (text!10245 List!6777)) (TokenValueExt!1399 (__x!4796 Int)) (Broken!7000 (value!44056 List!6777)) (Object!1413) (End!1400) (Def!1400) (Underscore!1400) (Match!1400) (Else!1400) (Error!1400) (Case!1400) (If!1400) (Extends!1400) (Abstract!1400) (Class!1400) (Val!1400) (DelimiterValue!2800 (del!1460 List!6777)) (KeywordValue!1406 (value!44057 List!6777)) (CommentValue!2800 (value!44058 List!6777)) (WhitespaceValue!2800 (value!44059 List!6777)) (IndentationValue!1400 (value!44060 List!6777)) (String!8737) (Int32!1400) (Broken!7001 (value!44061 List!6777)) (Boolean!1401) (Unit!11805) (OperatorValue!1403 (op!1460 List!6777)) (IdentifierValue!2800 (value!44062 List!6777)) (IdentifierValue!2801 (value!44063 List!6777)) (WhitespaceValue!2801 (value!44064 List!6777)) (True!2800) (False!2800) (Broken!7002 (value!44065 List!6777)) (Broken!7003 (value!44066 List!6777)) (True!2801) (RightBrace!1400) (RightBracket!1400) (Colon!1400) (Null!1400) (Comma!1400) (LeftBracket!1400) (False!2801) (LeftBrace!1400) (ImaginaryLiteralValue!1400 (text!10246 List!6777)) (StringLiteralValue!4200 (value!44067 List!6777)) (EOFValue!1400 (value!44068 List!6777)) (IdentValue!1400 (value!44069 List!6777)) (DelimiterValue!2801 (value!44070 List!6777)) (DedentValue!1400 (value!44071 List!6777)) (NewLineValue!1400 (value!44072 List!6777)) (IntegerValue!4200 (value!44073 (_ BitVec 32)) (text!10247 List!6777)) (IntegerValue!4201 (value!44074 Int) (text!10248 List!6777)) (Times!1400) (Or!1400) (Equal!1400) (Minus!1400) (Broken!7004 (value!44075 List!6777)) (And!1400) (Div!1400) (LessEqual!1400) (Mod!1400) (Concat!3101) (Not!1400) (Plus!1400) (SpaceValue!1400 (value!44076 List!6777)) (IntegerValue!4202 (value!44077 Int) (text!10249 List!6777)) (StringLiteralValue!4201 (text!10250 List!6777)) (FloatLiteralValue!2801 (text!10251 List!6777)) (BytesLiteralValue!1400 (value!44078 List!6777)) (CommentValue!2801 (value!44079 List!6777)) (StringLiteralValue!4202 (value!44080 List!6777)) (ErrorTokenValue!1400 (msg!1461 List!6777)) )
))
(declare-datatypes ((Regex!1701 0))(
  ( (ElementMatch!1701 (c!116527 (_ BitVec 16))) (Concat!3102 (regOne!3914 Regex!1701) (regTwo!3914 Regex!1701)) (EmptyExpr!1701) (Star!1701 (reg!2030 Regex!1701)) (EmptyLang!1701) (Union!1701 (regOne!3915 Regex!1701) (regTwo!3915 Regex!1701)) )
))
(declare-datatypes ((String!8738 0))(
  ( (String!8739 (value!44081 String)) )
))
(declare-datatypes ((IArray!4539 0))(
  ( (IArray!4540 (innerList!2327 List!6777)) )
))
(declare-datatypes ((Conc!2269 0))(
  ( (Node!2269 (left!5401 Conc!2269) (right!5731 Conc!2269) (csize!4768 Int) (cheight!2480 Int)) (Leaf!3468 (xs!4910 IArray!4539) (csize!4769 Int)) (Empty!2269) )
))
(declare-datatypes ((BalanceConc!4550 0))(
  ( (BalanceConc!4551 (c!116528 Conc!2269)) )
))
(declare-datatypes ((TokenValueInjection!2552 0))(
  ( (TokenValueInjection!2553 (toValue!2307 Int) (toChars!2166 Int)) )
))
(declare-datatypes ((Rule!2532 0))(
  ( (Rule!2533 (regex!1366 Regex!1701) (tag!1628 String!8738) (isSeparator!1366 Bool) (transformation!1366 TokenValueInjection!2552)) )
))
(declare-datatypes ((List!6778 0))(
  ( (Nil!6764) (Cons!6764 (h!12165 Rule!2532) (t!84222 List!6778)) )
))
(declare-fun lt!272064 () List!6778)

(declare-datatypes ((LexerInterface!1246 0))(
  ( (LexerInterfaceExt!1243 (__x!4797 Int)) (Lexer!1244) )
))
(declare-fun rulesInvariant!1181 (LexerInterface!1246 List!6778) Bool)

(assert (=> b!636226 (= res!276395 (rulesInvariant!1181 Lexer!1244 lt!272064))))

(declare-fun b!636227 () Bool)

(declare-fun e!387419 () Bool)

(declare-datatypes ((List!6779 0))(
  ( (Nil!6765) (Cons!6765 (h!12166 Regex!1701) (t!84223 List!6779)) )
))
(declare-datatypes ((Context!374 0))(
  ( (Context!375 (exprs!687 List!6779)) )
))
(declare-datatypes ((tuple2!7330 0))(
  ( (tuple2!7331 (_1!3967 Context!374) (_2!3967 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7332 0))(
  ( (tuple2!7333 (_1!3968 tuple2!7330) (_2!3968 (InoxSet Context!374))) )
))
(declare-datatypes ((List!6780 0))(
  ( (Nil!6766) (Cons!6766 (h!12167 tuple2!7332) (t!84224 List!6780)) )
))
(declare-datatypes ((Token!2454 0))(
  ( (Token!2455 (value!44082 TokenValue!1400) (rule!2161 Rule!2532) (size!5311 Int) (originalCharacters!1398 List!6777)) )
))
(declare-datatypes ((Hashable!613 0))(
  ( (HashableExt!612 (__x!4798 Int)) )
))
(declare-datatypes ((array!2447 0))(
  ( (array!2448 (arr!1114 (Array (_ BitVec 32) List!6780)) (size!5312 (_ BitVec 32))) )
))
(declare-datatypes ((array!2449 0))(
  ( (array!2450 (arr!1115 (Array (_ BitVec 32) (_ BitVec 64))) (size!5313 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1282 0))(
  ( (LongMapFixedSize!1283 (defaultEntry!997 Int) (mask!2371 (_ BitVec 32)) (extraKeys!888 (_ BitVec 32)) (zeroValue!898 List!6780) (minValue!898 List!6780) (_size!1391 (_ BitVec 32)) (_keys!935 array!2449) (_values!920 array!2447) (_vacant!702 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2505 0))(
  ( (Cell!2506 (v!16846 LongMapFixedSize!1282)) )
))
(declare-datatypes ((MutLongMap!641 0))(
  ( (LongMap!641 (underlying!1465 Cell!2505)) (MutLongMapExt!640 (__x!4799 Int)) )
))
(declare-datatypes ((Cell!2507 0))(
  ( (Cell!2508 (v!16847 MutLongMap!641)) )
))
(declare-datatypes ((MutableMap!613 0))(
  ( (MutableMapExt!612 (__x!4800 Int)) (HashMap!613 (underlying!1466 Cell!2507) (hashF!2521 Hashable!613) (_size!1392 (_ BitVec 32)) (defaultValue!764 Int)) )
))
(declare-datatypes ((CacheUp!274 0))(
  ( (CacheUp!275 (cache!1000 MutableMap!613)) )
))
(declare-datatypes ((tuple3!502 0))(
  ( (tuple3!503 (_1!3969 Regex!1701) (_2!3969 Context!374) (_3!302 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7334 0))(
  ( (tuple2!7335 (_1!3970 tuple3!502) (_2!3970 (InoxSet Context!374))) )
))
(declare-datatypes ((List!6781 0))(
  ( (Nil!6767) (Cons!6767 (h!12168 tuple2!7334) (t!84225 List!6781)) )
))
(declare-datatypes ((array!2451 0))(
  ( (array!2452 (arr!1116 (Array (_ BitVec 32) List!6781)) (size!5314 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1284 0))(
  ( (LongMapFixedSize!1285 (defaultEntry!998 Int) (mask!2372 (_ BitVec 32)) (extraKeys!889 (_ BitVec 32)) (zeroValue!899 List!6781) (minValue!899 List!6781) (_size!1393 (_ BitVec 32)) (_keys!936 array!2449) (_values!921 array!2451) (_vacant!703 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2509 0))(
  ( (Cell!2510 (v!16848 LongMapFixedSize!1284)) )
))
(declare-datatypes ((MutLongMap!642 0))(
  ( (LongMap!642 (underlying!1467 Cell!2509)) (MutLongMapExt!641 (__x!4801 Int)) )
))
(declare-datatypes ((Cell!2511 0))(
  ( (Cell!2512 (v!16849 MutLongMap!642)) )
))
(declare-datatypes ((Hashable!614 0))(
  ( (HashableExt!613 (__x!4802 Int)) )
))
(declare-datatypes ((MutableMap!614 0))(
  ( (MutableMapExt!613 (__x!4803 Int)) (HashMap!614 (underlying!1468 Cell!2511) (hashF!2522 Hashable!614) (_size!1394 (_ BitVec 32)) (defaultValue!765 Int)) )
))
(declare-datatypes ((CacheDown!274 0))(
  ( (CacheDown!275 (cache!1001 MutableMap!614)) )
))
(declare-datatypes ((List!6782 0))(
  ( (Nil!6768) (Cons!6768 (h!12169 Token!2454) (t!84226 List!6782)) )
))
(declare-datatypes ((IArray!4541 0))(
  ( (IArray!4542 (innerList!2328 List!6782)) )
))
(declare-datatypes ((Conc!2270 0))(
  ( (Node!2270 (left!5402 Conc!2270) (right!5732 Conc!2270) (csize!4770 Int) (cheight!2481 Int)) (Leaf!3469 (xs!4911 IArray!4541) (csize!4771 Int)) (Empty!2270) )
))
(declare-datatypes ((BalanceConc!4552 0))(
  ( (BalanceConc!4553 (c!116529 Conc!2270)) )
))
(declare-datatypes ((PrintableTokens!112 0))(
  ( (PrintableTokens!113 (rules!8185 List!6778) (tokens!1193 BalanceConc!4552)) )
))
(declare-datatypes ((Option!1649 0))(
  ( (None!1648) (Some!1648 (v!16850 PrintableTokens!112)) )
))
(declare-datatypes ((tuple3!504 0))(
  ( (tuple3!505 (_1!3971 Option!1649) (_2!3971 CacheUp!274) (_3!303 CacheDown!274)) )
))
(declare-fun lt!272041 () tuple3!504)

(get-info :version)

(declare-fun createRightBracketSeparator!0 (CacheUp!274 CacheDown!274) tuple3!504)

(assert (=> b!636227 (= e!387419 ((_ is Some!1648) (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041)))))))

(declare-fun lt!272044 () Option!1649)

(assert (=> b!636227 (= lt!272044 (_1!3971 lt!272041))))

(declare-fun lt!272054 () Option!1649)

(declare-fun lt!272058 () tuple3!504)

(assert (=> b!636227 (= lt!272054 (_1!3971 lt!272058))))

(declare-fun b!636228 () Bool)

(declare-fun e!387416 () Bool)

(declare-fun e!387414 () Bool)

(assert (=> b!636228 (= e!387416 e!387414)))

(declare-fun b!636229 () Bool)

(declare-fun e!387417 () Option!1649)

(assert (=> b!636229 (= e!387417 None!1648)))

(declare-fun b!636230 () Bool)

(declare-fun e!387423 () Bool)

(declare-fun printableTokens!2 () PrintableTokens!112)

(declare-fun tp!198072 () Bool)

(declare-fun inv!8611 (Conc!2270) Bool)

(assert (=> b!636230 (= e!387423 (and (inv!8611 (c!116529 (tokens!1193 printableTokens!2))) tp!198072))))

(declare-fun tp!198083 () Bool)

(declare-fun cacheUp!351 () CacheUp!274)

(declare-fun e!387422 () Bool)

(declare-fun tp!198085 () Bool)

(declare-fun e!387406 () Bool)

(declare-fun array_inv!810 (array!2449) Bool)

(declare-fun array_inv!811 (array!2447) Bool)

(assert (=> b!636231 (= e!387422 (and tp!198073 tp!198083 tp!198085 (array_inv!810 (_keys!935 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) (array_inv!811 (_values!920 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) e!387406))))

(declare-fun b!636232 () Bool)

(declare-fun e!387424 () Bool)

(declare-fun lt!272052 () Option!1649)

(declare-fun isDefined!1424 (Option!1649) Bool)

(assert (=> b!636232 (= e!387424 (isDefined!1424 lt!272052))))

(declare-fun mapNonEmpty!2526 () Bool)

(declare-fun mapRes!2526 () Bool)

(declare-fun tp!198074 () Bool)

(declare-fun tp!198082 () Bool)

(assert (=> mapNonEmpty!2526 (= mapRes!2526 (and tp!198074 tp!198082))))

(declare-fun mapKey!2526 () (_ BitVec 32))

(declare-fun mapValue!2526 () List!6780)

(declare-fun mapRest!2526 () (Array (_ BitVec 32) List!6780))

(assert (=> mapNonEmpty!2526 (= (arr!1114 (_values!920 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) (store mapRest!2526 mapKey!2526 mapValue!2526))))

(declare-fun b!636233 () Bool)

(declare-fun e!387409 () Bool)

(declare-fun e!387407 () Bool)

(assert (=> b!636233 (= e!387409 e!387407)))

(declare-fun b!636234 () Bool)

(declare-fun lt!272042 () Option!1649)

(assert (=> b!636234 (= e!387417 lt!272042)))

(declare-fun lt!272053 () BalanceConc!4550)

(declare-fun print!495 (PrintableTokens!112) BalanceConc!4550)

(assert (=> b!636234 (= lt!272053 (print!495 (v!16850 lt!272042)))))

(declare-fun mapNonEmpty!2527 () Bool)

(declare-fun mapRes!2527 () Bool)

(declare-fun tp!198080 () Bool)

(declare-fun tp!198078 () Bool)

(assert (=> mapNonEmpty!2527 (= mapRes!2527 (and tp!198080 tp!198078))))

(declare-fun mapValue!2527 () List!6781)

(declare-fun mapRest!2527 () (Array (_ BitVec 32) List!6781))

(declare-fun cacheDown!364 () CacheDown!274)

(declare-fun mapKey!2527 () (_ BitVec 32))

(assert (=> mapNonEmpty!2527 (= (arr!1116 (_values!921 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) (store mapRest!2527 mapKey!2527 mapValue!2527))))

(declare-fun b!636235 () Bool)

(declare-fun e!387402 () Bool)

(declare-fun lt!272043 () MutLongMap!641)

(assert (=> b!636235 (= e!387421 (and e!387402 ((_ is LongMap!641) lt!272043)))))

(assert (=> b!636235 (= lt!272043 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))

(declare-fun b!636236 () Bool)

(declare-fun e!387420 () Bool)

(assert (=> b!636236 (= e!387407 e!387420)))

(declare-fun mapIsEmpty!2526 () Bool)

(assert (=> mapIsEmpty!2526 mapRes!2527))

(declare-fun b!636237 () Bool)

(declare-fun e!387415 () Bool)

(declare-fun tp!198071 () Bool)

(assert (=> b!636237 (= e!387415 (and tp!198071 mapRes!2527))))

(declare-fun condMapEmpty!2527 () Bool)

(declare-fun mapDefault!2527 () List!6781)

(assert (=> b!636237 (= condMapEmpty!2527 (= (arr!1116 (_values!921 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6781)) mapDefault!2527)))))

(declare-fun b!636238 () Bool)

(declare-fun e!387410 () Bool)

(assert (=> b!636238 (= e!387410 e!387412)))

(declare-fun b!636239 () Bool)

(declare-fun res!276398 () Bool)

(assert (=> b!636239 (=> (not res!276398) (not e!387404))))

(declare-fun usesJsonRules!0 (PrintableTokens!112) Bool)

(assert (=> b!636239 (= res!276398 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!636240 () Bool)

(declare-fun e!387413 () Option!1649)

(assert (=> b!636240 (= e!387413 None!1648)))

(declare-fun tp!198079 () Bool)

(declare-fun tp!198075 () Bool)

(declare-fun array_inv!812 (array!2451) Bool)

(assert (=> b!636241 (= e!387420 (and tp!198084 tp!198079 tp!198075 (array_inv!810 (_keys!936 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) (array_inv!812 (_values!921 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) e!387415))))

(declare-fun res!276397 () Bool)

(declare-fun e!387408 () Bool)

(assert (=> start!62284 (=> (not res!276397) (not e!387408))))

(declare-fun lt!272049 () Int)

(assert (=> start!62284 (= res!276397 (> lt!272049 0))))

(declare-fun size!5315 (PrintableTokens!112) Int)

(assert (=> start!62284 (= lt!272049 (size!5315 printableTokens!2))))

(assert (=> start!62284 e!387408))

(declare-fun e!387401 () Bool)

(declare-fun inv!8612 (PrintableTokens!112) Bool)

(assert (=> start!62284 (and (inv!8612 printableTokens!2) e!387401)))

(declare-fun inv!8613 (CacheDown!274) Bool)

(assert (=> start!62284 (and (inv!8613 cacheDown!364) e!387416)))

(declare-fun inv!8614 (CacheUp!274) Bool)

(assert (=> start!62284 (and (inv!8614 cacheUp!351) e!387410)))

(declare-fun b!636242 () Bool)

(assert (=> b!636242 (= e!387408 e!387404)))

(declare-fun res!276396 () Bool)

(assert (=> b!636242 (=> (not res!276396) (not e!387404))))

(declare-fun isEmpty!4662 (List!6778) Bool)

(assert (=> b!636242 (= res!276396 (not (isEmpty!4662 lt!272064)))))

(declare-datatypes ((JsonLexer!176 0))(
  ( (JsonLexer!177) )
))
(declare-fun rules!109 (JsonLexer!176) List!6778)

(assert (=> b!636242 (= lt!272064 (rules!109 JsonLexer!177))))

(declare-fun b!636243 () Bool)

(declare-fun e!387403 () Bool)

(assert (=> b!636243 (= e!387403 e!387422)))

(declare-fun b!636244 () Bool)

(declare-fun tp!198081 () Bool)

(declare-fun inv!8615 (BalanceConc!4552) Bool)

(assert (=> b!636244 (= e!387401 (and tp!198081 (inv!8615 (tokens!1193 printableTokens!2)) e!387423))))

(declare-fun e!387411 () Bool)

(assert (=> b!636245 (= e!387414 (and e!387411 tp!198070))))

(declare-fun b!636246 () Bool)

(declare-fun e!387405 () Option!1649)

(assert (=> b!636246 (= e!387405 None!1648)))

(declare-fun b!636247 () Bool)

(declare-fun c!116525 () Bool)

(assert (=> b!636247 (= c!116525 ((_ is Some!1648) lt!272042))))

(declare-fun lt!272051 () Option!1649)

(declare-fun encloseInSep!0 (PrintableTokens!112 PrintableTokens!112 PrintableTokens!112) Option!1649)

(assert (=> b!636247 (= lt!272042 (encloseInSep!0 (v!16850 lt!272051) (v!16850 (_1!3971 lt!272041)) (v!16850 (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041))))))))

(declare-fun lt!272059 () Option!1649)

(assert (=> b!636247 (= lt!272059 (_1!3971 lt!272041))))

(declare-fun lt!272057 () Option!1649)

(assert (=> b!636247 (= lt!272057 (_1!3971 lt!272058))))

(declare-fun lt!272036 () Option!1649)

(assert (=> b!636247 (= lt!272036 (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041))))))

(declare-fun lt!272047 () Option!1649)

(assert (=> b!636247 (= lt!272047 (_1!3971 lt!272058))))

(assert (=> b!636247 (= e!387413 e!387417)))

(declare-fun b!636248 () Bool)

(assert (=> b!636248 (= e!387405 e!387413)))

(declare-fun lt!272048 () Option!1649)

(assert (=> b!636248 (= lt!272048 (_1!3971 lt!272041))))

(declare-fun lt!272063 () Option!1649)

(assert (=> b!636248 (= lt!272063 (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041))))))

(declare-datatypes ((tuple2!7336 0))(
  ( (tuple2!7337 (_1!3972 Int) (_2!3972 PrintableTokens!112)) )
))
(declare-datatypes ((List!6783 0))(
  ( (Nil!6769) (Cons!6769 (h!12170 tuple2!7336) (t!84227 List!6783)) )
))
(declare-datatypes ((IArray!4543 0))(
  ( (IArray!4544 (innerList!2329 List!6783)) )
))
(declare-datatypes ((Conc!2271 0))(
  ( (Node!2271 (left!5403 Conc!2271) (right!5733 Conc!2271) (csize!4772 Int) (cheight!2482 Int)) (Leaf!3470 (xs!4912 IArray!4543) (csize!4773 Int)) (Empty!2271) )
))
(declare-datatypes ((BalanceConc!4554 0))(
  ( (BalanceConc!4555 (c!116530 Conc!2271)) )
))
(declare-fun lt!272040 () BalanceConc!4554)

(declare-fun lambda!18063 () Int)

(declare-datatypes ((List!6784 0))(
  ( (Nil!6770) (Cons!6770 (h!12171 PrintableTokens!112) (t!84228 List!6784)) )
))
(declare-datatypes ((IArray!4545 0))(
  ( (IArray!4546 (innerList!2330 List!6784)) )
))
(declare-datatypes ((Conc!2272 0))(
  ( (Node!2272 (left!5404 Conc!2272) (right!5734 Conc!2272) (csize!4774 Int) (cheight!2483 Int)) (Leaf!3471 (xs!4913 IArray!4545) (csize!4775 Int)) (Empty!2272) )
))
(declare-datatypes ((BalanceConc!4556 0))(
  ( (BalanceConc!4557 (c!116531 Conc!2272)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4556 PrintableTokens!112 PrintableTokens!112) Option!1649)

(declare-fun map!1454 (BalanceConc!4554 Int) BalanceConc!4556)

(declare-fun emptyPrintableTokens!9 (List!6778) PrintableTokens!112)

(assert (=> b!636248 (= lt!272051 (recombineSlicesWithSep!0 (map!1454 lt!272040 lambda!18063) (v!16850 (_1!3971 lt!272058)) (emptyPrintableTokens!9 lt!272064)))))

(declare-fun c!116524 () Bool)

(assert (=> b!636248 (= c!116524 ((_ is Some!1648) lt!272051))))

(declare-fun b!636249 () Bool)

(assert (=> b!636249 (= e!387402 e!387403)))

(declare-fun b!636250 () Bool)

(declare-fun lt!272046 () MutLongMap!642)

(assert (=> b!636250 (= e!387411 (and e!387409 ((_ is LongMap!642) lt!272046)))))

(assert (=> b!636250 (= lt!272046 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))

(declare-fun mapIsEmpty!2527 () Bool)

(assert (=> mapIsEmpty!2527 mapRes!2526))

(declare-fun b!636251 () Bool)

(assert (=> b!636251 (= e!387404 (not e!387424))))

(declare-fun res!276399 () Bool)

(assert (=> b!636251 (=> res!276399 e!387424)))

(declare-fun isEmpty!4663 (Option!1649) Bool)

(assert (=> b!636251 (= res!276399 (isEmpty!4663 lt!272052))))

(assert (=> b!636251 (= lt!272052 e!387405)))

(declare-fun c!116526 () Bool)

(assert (=> b!636251 (= c!116526 e!387419)))

(declare-fun res!276401 () Bool)

(assert (=> b!636251 (=> (not res!276401) (not e!387419))))

(assert (=> b!636251 (= res!276401 ((_ is Some!1648) (_1!3971 lt!272058)))))

(declare-fun lt!272065 () Option!1649)

(assert (=> b!636251 (= lt!272065 (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041))))))

(declare-fun lt!272066 () Option!1649)

(assert (=> b!636251 (= lt!272066 (_1!3971 lt!272041))))

(declare-datatypes ((tuple3!506 0))(
  ( (tuple3!507 (_1!3973 Option!1649) (_2!3973 Option!1649) (_3!304 Option!1649)) )
))
(declare-fun lt!272061 () tuple3!506)

(assert (=> b!636251 (= lt!272061 (tuple3!507 (_1!3971 lt!272058) (_1!3971 lt!272041) (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041)))))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!274 CacheDown!274) tuple3!504)

(assert (=> b!636251 (= lt!272041 (createLeftBracketSeparator!0 (_2!3971 lt!272058) (_3!303 lt!272058)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!274 CacheDown!274) tuple3!504)

(assert (=> b!636251 (= lt!272058 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!18064 () Int)

(declare-fun forall!1709 (BalanceConc!4556 Int) Bool)

(assert (=> b!636251 (forall!1709 (map!1454 lt!272040 lambda!18063) lambda!18064)))

(declare-datatypes ((Unit!11806 0))(
  ( (Unit!11807) )
))
(declare-fun lt!272038 () Unit!11806)

(declare-fun lt!272060 () List!6783)

(declare-fun mapPred!37 (List!6783 Int Int) Unit!11806)

(assert (=> b!636251 (= lt!272038 (mapPred!37 lt!272060 lambda!18063 lambda!18064))))

(declare-fun lt!272039 () Unit!11806)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6783) Unit!11806)

(assert (=> b!636251 (= lt!272039 (lemmaRemoveIdsPreservesRules!0 lt!272060))))

(declare-fun list!2862 (BalanceConc!4554) List!6783)

(assert (=> b!636251 (= lt!272060 (list!2862 lt!272040))))

(declare-fun lt!272045 () BalanceConc!4556)

(declare-fun lambda!18061 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4554) BalanceConc!4554)

(declare-fun map!1455 (BalanceConc!4556 Int) BalanceConc!4554)

(assert (=> b!636251 (= lt!272040 (sortObjectsByID!0 (map!1455 lt!272045 lambda!18061)))))

(declare-fun lt!272037 () List!6784)

(declare-fun lt!272050 () Unit!11806)

(declare-fun lambda!18062 () Int)

(declare-fun mapPred!38 (List!6784 Int Int) Unit!11806)

(assert (=> b!636251 (= lt!272050 (mapPred!38 lt!272037 lambda!18061 lambda!18062))))

(declare-fun lt!272062 () Unit!11806)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6784) Unit!11806)

(assert (=> b!636251 (= lt!272062 (lemmaAddIdsPreservesRules!0 lt!272037))))

(declare-fun list!2863 (BalanceConc!4556) List!6784)

(assert (=> b!636251 (= lt!272037 (list!2863 lt!272045))))

(declare-datatypes ((List!6785 0))(
  ( (Nil!6771) (Cons!6771 (h!12172 Int) (t!84229 List!6785)) )
))
(declare-datatypes ((IArray!4547 0))(
  ( (IArray!4548 (innerList!2331 List!6785)) )
))
(declare-datatypes ((Conc!2273 0))(
  ( (Node!2273 (left!5405 Conc!2273) (right!5735 Conc!2273) (csize!4776 Int) (cheight!2484 Int)) (Leaf!3472 (xs!4914 IArray!4547) (csize!4777 Int)) (Empty!2273) )
))
(declare-datatypes ((BalanceConc!4558 0))(
  ( (BalanceConc!4559 (c!116532 Conc!2273)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!112 Int BalanceConc!4558 BalanceConc!4556) BalanceConc!4556)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4552 Int Int BalanceConc!4558) BalanceConc!4558)

(assert (=> b!636251 (= lt!272045 (slicesMulti!0 printableTokens!2 lt!272049 (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 0 (BalanceConc!4559 Empty!2273)) (BalanceConc!4557 Empty!2272)))))

(declare-fun b!636252 () Bool)

(declare-fun res!276400 () Bool)

(assert (=> b!636252 (=> (not res!276400) (not e!387419))))

(assert (=> b!636252 (= res!276400 ((_ is Some!1648) (_1!3971 lt!272041)))))

(declare-fun lt!272055 () Option!1649)

(assert (=> b!636252 (= lt!272055 (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041))))))

(declare-fun lt!272056 () Option!1649)

(assert (=> b!636252 (= lt!272056 (_1!3971 lt!272058))))

(declare-fun b!636253 () Bool)

(declare-fun tp!198076 () Bool)

(assert (=> b!636253 (= e!387406 (and tp!198076 mapRes!2526))))

(declare-fun condMapEmpty!2526 () Bool)

(declare-fun mapDefault!2526 () List!6780)

(assert (=> b!636253 (= condMapEmpty!2526 (= (arr!1114 (_values!920 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6780)) mapDefault!2526)))))

(assert (= (and start!62284 res!276397) b!636242))

(assert (= (and b!636242 res!276396) b!636226))

(assert (= (and b!636226 res!276395) b!636239))

(assert (= (and b!636239 res!276398) b!636251))

(assert (= (and b!636251 res!276401) b!636252))

(assert (= (and b!636252 res!276400) b!636227))

(assert (= (and b!636251 c!116526) b!636248))

(assert (= (and b!636251 (not c!116526)) b!636246))

(assert (= (and b!636248 c!116524) b!636247))

(assert (= (and b!636248 (not c!116524)) b!636240))

(assert (= (and b!636247 c!116525) b!636234))

(assert (= (and b!636247 (not c!116525)) b!636229))

(assert (= (and b!636251 (not res!276399)) b!636232))

(assert (= b!636244 b!636230))

(assert (= start!62284 b!636244))

(assert (= (and b!636237 condMapEmpty!2527) mapIsEmpty!2526))

(assert (= (and b!636237 (not condMapEmpty!2527)) mapNonEmpty!2527))

(assert (= b!636241 b!636237))

(assert (= b!636236 b!636241))

(assert (= b!636233 b!636236))

(assert (= (and b!636250 ((_ is LongMap!642) (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))) b!636233))

(assert (= b!636245 b!636250))

(assert (= (and b!636228 ((_ is HashMap!614) (cache!1001 cacheDown!364))) b!636245))

(assert (= start!62284 b!636228))

(assert (= (and b!636253 condMapEmpty!2526) mapIsEmpty!2527))

(assert (= (and b!636253 (not condMapEmpty!2526)) mapNonEmpty!2526))

(assert (= b!636231 b!636253))

(assert (= b!636243 b!636231))

(assert (= b!636249 b!636243))

(assert (= (and b!636235 ((_ is LongMap!641) (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))) b!636249))

(assert (= b!636225 b!636235))

(assert (= (and b!636238 ((_ is HashMap!613) (cache!1000 cacheUp!351))) b!636225))

(assert (= start!62284 b!636238))

(declare-fun m!906931 () Bool)

(assert (=> b!636244 m!906931))

(declare-fun m!906933 () Bool)

(assert (=> mapNonEmpty!2527 m!906933))

(declare-fun m!906935 () Bool)

(assert (=> b!636241 m!906935))

(declare-fun m!906937 () Bool)

(assert (=> b!636241 m!906937))

(declare-fun m!906939 () Bool)

(assert (=> b!636226 m!906939))

(declare-fun m!906941 () Bool)

(assert (=> b!636227 m!906941))

(assert (=> b!636252 m!906941))

(declare-fun m!906943 () Bool)

(assert (=> mapNonEmpty!2526 m!906943))

(declare-fun m!906945 () Bool)

(assert (=> b!636239 m!906945))

(declare-fun m!906947 () Bool)

(assert (=> b!636251 m!906947))

(declare-fun m!906949 () Bool)

(assert (=> b!636251 m!906949))

(declare-fun m!906951 () Bool)

(assert (=> b!636251 m!906951))

(assert (=> b!636251 m!906949))

(declare-fun m!906953 () Bool)

(assert (=> b!636251 m!906953))

(declare-fun m!906955 () Bool)

(assert (=> b!636251 m!906955))

(declare-fun m!906957 () Bool)

(assert (=> b!636251 m!906957))

(declare-fun m!906959 () Bool)

(assert (=> b!636251 m!906959))

(assert (=> b!636251 m!906941))

(declare-fun m!906961 () Bool)

(assert (=> b!636251 m!906961))

(declare-fun m!906963 () Bool)

(assert (=> b!636251 m!906963))

(declare-fun m!906965 () Bool)

(assert (=> b!636251 m!906965))

(declare-fun m!906967 () Bool)

(assert (=> b!636251 m!906967))

(declare-fun m!906969 () Bool)

(assert (=> b!636251 m!906969))

(declare-fun m!906971 () Bool)

(assert (=> b!636251 m!906971))

(assert (=> b!636251 m!906955))

(declare-fun m!906973 () Bool)

(assert (=> b!636251 m!906973))

(assert (=> b!636251 m!906971))

(declare-fun m!906975 () Bool)

(assert (=> b!636251 m!906975))

(declare-fun m!906977 () Bool)

(assert (=> b!636231 m!906977))

(declare-fun m!906979 () Bool)

(assert (=> b!636231 m!906979))

(declare-fun m!906981 () Bool)

(assert (=> b!636232 m!906981))

(declare-fun m!906983 () Bool)

(assert (=> b!636230 m!906983))

(assert (=> b!636248 m!906941))

(assert (=> b!636248 m!906949))

(declare-fun m!906985 () Bool)

(assert (=> b!636248 m!906985))

(assert (=> b!636248 m!906949))

(assert (=> b!636248 m!906985))

(declare-fun m!906987 () Bool)

(assert (=> b!636248 m!906987))

(declare-fun m!906989 () Bool)

(assert (=> start!62284 m!906989))

(declare-fun m!906991 () Bool)

(assert (=> start!62284 m!906991))

(declare-fun m!906993 () Bool)

(assert (=> start!62284 m!906993))

(declare-fun m!906995 () Bool)

(assert (=> start!62284 m!906995))

(assert (=> b!636247 m!906941))

(declare-fun m!906997 () Bool)

(assert (=> b!636247 m!906997))

(declare-fun m!906999 () Bool)

(assert (=> b!636234 m!906999))

(declare-fun m!907001 () Bool)

(assert (=> b!636242 m!907001))

(declare-fun m!907003 () Bool)

(assert (=> b!636242 m!907003))

(check-sat (not b_next!18697) (not b!636231) (not b!636226) b_and!62463 (not start!62284) (not b!636253) (not b!636230) (not b!636251) (not b!636252) (not b_next!18695) (not b_next!18699) (not b!636234) (not b!636241) b_and!62469 (not b_next!18693) (not mapNonEmpty!2526) (not b!636244) (not b!636232) (not b!636248) b_and!62467 (not b!636239) (not mapNonEmpty!2527) (not b!636237) (not b!636227) (not b!636247) b_and!62465 (not b!636242))
(check-sat (not b_next!18697) b_and!62467 b_and!62463 (not b_next!18695) (not b_next!18699) b_and!62465 b_and!62469 (not b_next!18693))
(get-model)

(declare-fun d!221995 () Bool)

(assert (=> d!221995 (= (array_inv!810 (_keys!936 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) (bvsge (size!5313 (_keys!936 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!636241 d!221995))

(declare-fun d!221997 () Bool)

(assert (=> d!221997 (= (array_inv!812 (_values!921 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) (bvsge (size!5314 (_values!921 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!636241 d!221997))

(declare-fun lt!272069 () Bool)

(declare-fun d!221999 () Bool)

(declare-fun forall!1710 (List!6784 Int) Bool)

(assert (=> d!221999 (= lt!272069 (forall!1710 (list!2863 (map!1454 lt!272040 lambda!18063)) lambda!18064))))

(declare-fun forall!1711 (Conc!2272 Int) Bool)

(assert (=> d!221999 (= lt!272069 (forall!1711 (c!116531 (map!1454 lt!272040 lambda!18063)) lambda!18064))))

(assert (=> d!221999 (= (forall!1709 (map!1454 lt!272040 lambda!18063) lambda!18064) lt!272069)))

(declare-fun bs!75600 () Bool)

(assert (= bs!75600 d!221999))

(assert (=> bs!75600 m!906949))

(declare-fun m!907005 () Bool)

(assert (=> bs!75600 m!907005))

(assert (=> bs!75600 m!907005))

(declare-fun m!907007 () Bool)

(assert (=> bs!75600 m!907007))

(declare-fun m!907009 () Bool)

(assert (=> bs!75600 m!907009))

(assert (=> b!636251 d!221999))

(declare-fun b!636277 () Bool)

(assert (=> b!636277 true))

(declare-fun bs!75601 () Bool)

(declare-fun d!222001 () Bool)

(assert (= bs!75601 (and d!222001 b!636277)))

(declare-fun lambda!18070 () Int)

(declare-fun lambda!18069 () Int)

(assert (=> bs!75601 (= lambda!18070 lambda!18069)))

(assert (=> d!222001 true))

(declare-fun b!636270 () Bool)

(declare-fun e!387438 () Bool)

(declare-fun lt!272078 () Token!2454)

(declare-fun isKeywordValue!0 (Token!2454 TokenValue!1400) Bool)

(assert (=> b!636270 (= e!387438 (isKeywordValue!0 lt!272078 RightBrace!1400))))

(declare-fun b!636271 () Bool)

(declare-fun e!387436 () Bool)

(declare-fun size!5318 (BalanceConc!4552) Int)

(assert (=> b!636271 (= e!387436 (<= 0 (size!5318 (tokens!1193 printableTokens!2))))))

(declare-fun bm!41601 () Bool)

(declare-fun c!116541 () Bool)

(declare-fun c!116539 () Bool)

(assert (=> bm!41601 (= c!116541 c!116539)))

(declare-fun call!41606 () BalanceConc!4558)

(declare-fun e!387440 () BalanceConc!4558)

(assert (=> bm!41601 (= call!41606 (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 (+ 0 1) e!387440))))

(declare-fun b!636272 () Bool)

(declare-fun e!387439 () BalanceConc!4558)

(declare-fun e!387437 () BalanceConc!4558)

(assert (=> b!636272 (= e!387439 e!387437)))

(declare-fun apply!1603 (BalanceConc!4552 Int) Token!2454)

(assert (=> b!636272 (= lt!272078 (apply!1603 (tokens!1193 printableTokens!2) 0))))

(declare-fun res!276410 () Bool)

(assert (=> b!636272 (= res!276410 (isKeywordValue!0 lt!272078 LeftBrace!1400))))

(assert (=> b!636272 (=> res!276410 e!387438)))

(assert (=> b!636272 (= c!116539 e!387438)))

(declare-fun b!636273 () Bool)

(assert (=> b!636273 (= e!387440 (BalanceConc!4559 Empty!2273))))

(declare-fun b!636274 () Bool)

(declare-fun append!202 (BalanceConc!4558 Int) BalanceConc!4558)

(assert (=> b!636274 (= e!387440 (append!202 (BalanceConc!4559 Empty!2273) 0))))

(declare-fun b!636275 () Bool)

(assert (=> b!636275 (= e!387437 call!41606)))

(declare-fun b!636276 () Bool)

(assert (=> b!636276 (= e!387439 (BalanceConc!4559 Empty!2273))))

(declare-fun lt!272077 () BalanceConc!4558)

(declare-fun forall!1712 (BalanceConc!4558 Int) Bool)

(assert (=> d!222001 (forall!1712 lt!272077 lambda!18070)))

(assert (=> d!222001 (= lt!272077 e!387439)))

(declare-fun c!116540 () Bool)

(assert (=> d!222001 (= c!116540 (>= 0 (size!5318 (tokens!1193 printableTokens!2))))))

(assert (=> d!222001 e!387436))

(declare-fun res!276411 () Bool)

(assert (=> d!222001 (=> (not res!276411) (not e!387436))))

(assert (=> d!222001 (= res!276411 (>= 0 0))))

(assert (=> d!222001 (= (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 0 (BalanceConc!4559 Empty!2273)) lt!272077)))

(declare-fun lt!272076 () Unit!11806)

(declare-fun lemmaConcatPreservesForall!33 (List!6785 List!6785 Int) Unit!11806)

(declare-fun list!2864 (BalanceConc!4558) List!6785)

(assert (=> b!636277 (= lt!272076 (lemmaConcatPreservesForall!33 (list!2864 (BalanceConc!4559 Empty!2273)) (Cons!6771 0 Nil!6771) lambda!18069))))

(assert (=> b!636277 (= e!387437 call!41606)))

(assert (= (and d!222001 res!276411) b!636271))

(assert (= (and d!222001 c!116540) b!636276))

(assert (= (and d!222001 (not c!116540)) b!636272))

(assert (= (and b!636272 (not res!276410)) b!636270))

(assert (= (and b!636272 c!116539) b!636277))

(assert (= (and b!636272 (not c!116539)) b!636275))

(assert (= (or b!636277 b!636275) bm!41601))

(assert (= (and bm!41601 c!116541) b!636274))

(assert (= (and bm!41601 (not c!116541)) b!636273))

(declare-fun m!907011 () Bool)

(assert (=> bm!41601 m!907011))

(declare-fun m!907013 () Bool)

(assert (=> b!636272 m!907013))

(declare-fun m!907015 () Bool)

(assert (=> b!636272 m!907015))

(declare-fun m!907017 () Bool)

(assert (=> d!222001 m!907017))

(declare-fun m!907019 () Bool)

(assert (=> d!222001 m!907019))

(declare-fun m!907021 () Bool)

(assert (=> b!636270 m!907021))

(assert (=> b!636271 m!907019))

(declare-fun m!907023 () Bool)

(assert (=> b!636274 m!907023))

(declare-fun m!907025 () Bool)

(assert (=> b!636277 m!907025))

(assert (=> b!636277 m!907025))

(declare-fun m!907027 () Bool)

(assert (=> b!636277 m!907027))

(assert (=> b!636251 d!222001))

(declare-fun bs!75602 () Bool)

(declare-fun b!636291 () Bool)

(assert (= bs!75602 (and b!636291 b!636251)))

(declare-fun lambda!18075 () Int)

(assert (=> bs!75602 (= lambda!18075 lambda!18064)))

(declare-fun bs!75603 () Bool)

(declare-fun d!222003 () Bool)

(assert (= bs!75603 (and d!222003 b!636251)))

(declare-fun lambda!18076 () Int)

(assert (=> bs!75603 (= lambda!18076 lambda!18064)))

(declare-fun bs!75604 () Bool)

(assert (= bs!75604 (and d!222003 b!636291)))

(assert (=> bs!75604 (= lambda!18076 lambda!18075)))

(declare-fun b!636288 () Bool)

(declare-fun e!387445 () PrintableTokens!112)

(declare-fun call!41609 () PrintableTokens!112)

(assert (=> b!636288 (= e!387445 call!41609)))

(declare-fun lt!272089 () Int)

(declare-fun bm!41604 () Bool)

(declare-fun lt!272091 () Int)

(declare-fun c!116547 () Bool)

(declare-fun slice!32 (PrintableTokens!112 Int Int) PrintableTokens!112)

(assert (=> bm!41604 (= call!41609 (slice!32 printableTokens!2 (ite c!116547 lt!272089 lt!272091) (ite c!116547 (+ lt!272091 1) (+ lt!272089 1))))))

(declare-fun lt!272090 () BalanceConc!4556)

(assert (=> d!222003 (forall!1709 lt!272090 lambda!18076)))

(declare-fun e!387446 () BalanceConc!4556)

(assert (=> d!222003 (= lt!272090 e!387446)))

(declare-fun c!116546 () Bool)

(declare-fun size!5319 (BalanceConc!4558) Int)

(assert (=> d!222003 (= c!116546 (>= (size!5319 (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 0 (BalanceConc!4559 Empty!2273))) 2))))

(assert (=> d!222003 (= (size!5315 printableTokens!2) lt!272049)))

(assert (=> d!222003 (= (slicesMulti!0 printableTokens!2 lt!272049 (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 0 (BalanceConc!4559 Empty!2273)) (BalanceConc!4557 Empty!2272)) lt!272090)))

(declare-fun b!636289 () Bool)

(assert (=> b!636289 (= e!387446 (BalanceConc!4557 Empty!2272))))

(declare-fun b!636290 () Bool)

(assert (=> b!636290 (= e!387445 call!41609)))

(declare-fun lt!272093 () PrintableTokens!112)

(declare-fun tail!890 (BalanceConc!4558) BalanceConc!4558)

(declare-fun append!203 (BalanceConc!4556 PrintableTokens!112) BalanceConc!4556)

(assert (=> b!636291 (= e!387446 (slicesMulti!0 printableTokens!2 lt!272049 (tail!890 (tail!890 (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 0 (BalanceConc!4559 Empty!2273)))) (append!203 (BalanceConc!4557 Empty!2272) lt!272093)))))

(declare-fun apply!1604 (BalanceConc!4558 Int) Int)

(assert (=> b!636291 (= lt!272089 (apply!1604 (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 0 (BalanceConc!4559 Empty!2273)) 0))))

(assert (=> b!636291 (= lt!272091 (apply!1604 (indicesOfOpenBraces!0 (tokens!1193 printableTokens!2) lt!272049 0 (BalanceConc!4559 Empty!2273)) 1))))

(assert (=> b!636291 (= c!116547 (<= lt!272089 lt!272091))))

(assert (=> b!636291 (= lt!272093 e!387445)))

(declare-fun lt!272092 () Unit!11806)

(declare-fun lemmaConcatPreservesForall!34 (List!6784 List!6784 Int) Unit!11806)

(assert (=> b!636291 (= lt!272092 (lemmaConcatPreservesForall!34 (list!2863 (BalanceConc!4557 Empty!2272)) (Cons!6770 lt!272093 Nil!6770) lambda!18075))))

(assert (= (and d!222003 c!116546) b!636291))

(assert (= (and d!222003 (not c!116546)) b!636289))

(assert (= (and b!636291 c!116547) b!636290))

(assert (= (and b!636291 (not c!116547)) b!636288))

(assert (= (or b!636290 b!636288) bm!41604))

(declare-fun m!907029 () Bool)

(assert (=> bm!41604 m!907029))

(declare-fun m!907031 () Bool)

(assert (=> d!222003 m!907031))

(assert (=> d!222003 m!906971))

(declare-fun m!907033 () Bool)

(assert (=> d!222003 m!907033))

(assert (=> d!222003 m!906989))

(declare-fun m!907035 () Bool)

(assert (=> b!636291 m!907035))

(assert (=> b!636291 m!906971))

(declare-fun m!907037 () Bool)

(assert (=> b!636291 m!907037))

(assert (=> b!636291 m!907037))

(declare-fun m!907039 () Bool)

(assert (=> b!636291 m!907039))

(declare-fun m!907041 () Bool)

(assert (=> b!636291 m!907041))

(assert (=> b!636291 m!906971))

(declare-fun m!907043 () Bool)

(assert (=> b!636291 m!907043))

(assert (=> b!636291 m!907039))

(assert (=> b!636291 m!907041))

(declare-fun m!907045 () Bool)

(assert (=> b!636291 m!907045))

(assert (=> b!636291 m!907035))

(declare-fun m!907047 () Bool)

(assert (=> b!636291 m!907047))

(assert (=> b!636291 m!906971))

(declare-fun m!907049 () Bool)

(assert (=> b!636291 m!907049))

(assert (=> b!636251 d!222003))

(declare-fun bs!75605 () Bool)

(declare-fun d!222005 () Bool)

(assert (= bs!75605 (and d!222005 b!636251)))

(declare-fun lambda!18081 () Int)

(assert (=> bs!75605 (= lambda!18081 lambda!18064)))

(declare-fun bs!75606 () Bool)

(assert (= bs!75606 (and d!222005 b!636291)))

(assert (=> bs!75606 (= lambda!18081 lambda!18075)))

(declare-fun bs!75607 () Bool)

(assert (= bs!75607 (and d!222005 d!222003)))

(assert (=> bs!75607 (= lambda!18081 lambda!18076)))

(declare-fun lambda!18082 () Int)

(assert (=> bs!75605 (not (= lambda!18082 lambda!18064))))

(assert (=> bs!75606 (not (= lambda!18082 lambda!18075))))

(assert (=> bs!75607 (not (= lambda!18082 lambda!18076))))

(assert (=> d!222005 (not (= lambda!18082 lambda!18081))))

(assert (=> d!222005 (forall!1710 lt!272037 lambda!18082)))

(declare-fun lt!272098 () Unit!11806)

(declare-fun e!387449 () Unit!11806)

(assert (=> d!222005 (= lt!272098 e!387449)))

(declare-fun c!116550 () Bool)

(assert (=> d!222005 (= c!116550 ((_ is Nil!6770) lt!272037))))

(assert (=> d!222005 (forall!1710 lt!272037 lambda!18081)))

(assert (=> d!222005 (= (lemmaAddIdsPreservesRules!0 lt!272037) lt!272098)))

(declare-fun b!636296 () Bool)

(declare-fun Unit!11808 () Unit!11806)

(assert (=> b!636296 (= e!387449 Unit!11808)))

(declare-fun b!636297 () Bool)

(declare-fun Unit!11809 () Unit!11806)

(assert (=> b!636297 (= e!387449 Unit!11809)))

(declare-fun lt!272099 () Unit!11806)

(assert (=> b!636297 (= lt!272099 (lemmaAddIdsPreservesRules!0 (t!84228 lt!272037)))))

(assert (= (and d!222005 c!116550) b!636296))

(assert (= (and d!222005 (not c!116550)) b!636297))

(declare-fun m!907051 () Bool)

(assert (=> d!222005 m!907051))

(declare-fun m!907053 () Bool)

(assert (=> d!222005 m!907053))

(declare-fun m!907055 () Bool)

(assert (=> b!636297 m!907055))

(assert (=> b!636251 d!222005))

(declare-fun d!222007 () Bool)

(declare-fun list!2865 (Conc!2272) List!6784)

(assert (=> d!222007 (= (list!2863 lt!272045) (list!2865 (c!116531 lt!272045)))))

(declare-fun bs!75608 () Bool)

(assert (= bs!75608 d!222007))

(declare-fun m!907057 () Bool)

(assert (=> bs!75608 m!907057))

(assert (=> b!636251 d!222007))

(declare-fun bs!75609 () Bool)

(declare-fun d!222009 () Bool)

(assert (= bs!75609 (and d!222009 b!636251)))

(declare-fun lambda!18087 () Int)

(assert (=> bs!75609 (= lambda!18087 lambda!18062)))

(declare-fun lambda!18088 () Int)

(assert (=> bs!75609 (not (= lambda!18088 lambda!18062))))

(assert (=> d!222009 (not (= lambda!18088 lambda!18087))))

(declare-fun forall!1713 (List!6783 Int) Bool)

(assert (=> d!222009 (forall!1713 lt!272060 lambda!18088)))

(declare-fun lt!272104 () Unit!11806)

(declare-fun e!387452 () Unit!11806)

(assert (=> d!222009 (= lt!272104 e!387452)))

(declare-fun c!116553 () Bool)

(assert (=> d!222009 (= c!116553 ((_ is Nil!6769) lt!272060))))

(assert (=> d!222009 (forall!1713 lt!272060 lambda!18087)))

(assert (=> d!222009 (= (lemmaRemoveIdsPreservesRules!0 lt!272060) lt!272104)))

(declare-fun b!636302 () Bool)

(declare-fun Unit!11810 () Unit!11806)

(assert (=> b!636302 (= e!387452 Unit!11810)))

(declare-fun b!636303 () Bool)

(declare-fun Unit!11811 () Unit!11806)

(assert (=> b!636303 (= e!387452 Unit!11811)))

(declare-fun lt!272105 () Unit!11806)

(assert (=> b!636303 (= lt!272105 (lemmaRemoveIdsPreservesRules!0 (t!84227 lt!272060)))))

(assert (= (and d!222009 c!116553) b!636302))

(assert (= (and d!222009 (not c!116553)) b!636303))

(declare-fun m!907059 () Bool)

(assert (=> d!222009 m!907059))

(declare-fun m!907061 () Bool)

(assert (=> d!222009 m!907061))

(declare-fun m!907063 () Bool)

(assert (=> b!636303 m!907063))

(assert (=> b!636251 d!222009))

(declare-fun d!222011 () Bool)

(declare-fun list!2866 (Conc!2271) List!6783)

(assert (=> d!222011 (= (list!2862 lt!272040) (list!2866 (c!116530 lt!272040)))))

(declare-fun bs!75610 () Bool)

(assert (= bs!75610 d!222011))

(declare-fun m!907065 () Bool)

(assert (=> bs!75610 m!907065))

(assert (=> b!636251 d!222011))

(declare-fun d!222013 () Bool)

(declare-fun e!387455 () Bool)

(assert (=> d!222013 e!387455))

(declare-fun res!276414 () Bool)

(assert (=> d!222013 (=> (not res!276414) (not e!387455))))

(declare-fun lt!272108 () BalanceConc!4556)

(declare-fun map!1456 (List!6783 Int) List!6784)

(assert (=> d!222013 (= res!276414 (= (list!2863 lt!272108) (map!1456 (list!2862 lt!272040) lambda!18063)))))

(declare-fun map!1457 (Conc!2271 Int) Conc!2272)

(assert (=> d!222013 (= lt!272108 (BalanceConc!4557 (map!1457 (c!116530 lt!272040) lambda!18063)))))

(assert (=> d!222013 (= (map!1454 lt!272040 lambda!18063) lt!272108)))

(declare-fun b!636306 () Bool)

(declare-fun isBalanced!596 (Conc!2272) Bool)

(assert (=> b!636306 (= e!387455 (isBalanced!596 (map!1457 (c!116530 lt!272040) lambda!18063)))))

(assert (= (and d!222013 res!276414) b!636306))

(declare-fun m!907067 () Bool)

(assert (=> d!222013 m!907067))

(assert (=> d!222013 m!906965))

(assert (=> d!222013 m!906965))

(declare-fun m!907069 () Bool)

(assert (=> d!222013 m!907069))

(declare-fun m!907071 () Bool)

(assert (=> d!222013 m!907071))

(assert (=> b!636306 m!907071))

(assert (=> b!636306 m!907071))

(declare-fun m!907073 () Bool)

(assert (=> b!636306 m!907073))

(assert (=> b!636251 d!222013))

(declare-fun bs!75611 () Bool)

(declare-fun b!636332 () Bool)

(assert (= bs!75611 (and b!636332 b!636251)))

(declare-fun lambda!18135 () Int)

(assert (=> bs!75611 (not (= lambda!18135 lambda!18062))))

(declare-fun bs!75612 () Bool)

(assert (= bs!75612 (and b!636332 d!222009)))

(assert (=> bs!75612 (not (= lambda!18135 lambda!18087))))

(assert (=> bs!75612 (not (= lambda!18135 lambda!18088))))

(declare-fun b!636350 () Bool)

(declare-fun e!387482 () Bool)

(assert (=> b!636350 (= e!387482 true)))

(declare-fun b!636349 () Bool)

(declare-fun e!387481 () Bool)

(assert (=> b!636349 (= e!387481 e!387482)))

(assert (=> b!636332 e!387481))

(assert (= b!636349 b!636350))

(assert (= b!636332 b!636349))

(declare-fun lambda!18136 () Int)

(assert (=> bs!75611 (not (= lambda!18136 lambda!18062))))

(assert (=> bs!75612 (not (= lambda!18136 lambda!18087))))

(assert (=> bs!75612 (not (= lambda!18136 lambda!18088))))

(assert (=> b!636332 (not (= lambda!18136 lambda!18135))))

(declare-fun b!636352 () Bool)

(declare-fun e!387484 () Bool)

(assert (=> b!636352 (= e!387484 true)))

(declare-fun b!636351 () Bool)

(declare-fun e!387483 () Bool)

(assert (=> b!636351 (= e!387483 e!387484)))

(assert (=> b!636332 e!387483))

(assert (= b!636351 b!636352))

(assert (= b!636332 b!636351))

(declare-fun lambda!18137 () Int)

(assert (=> bs!75612 (not (= lambda!18137 lambda!18087))))

(assert (=> bs!75612 (not (= lambda!18137 lambda!18088))))

(assert (=> bs!75611 (not (= lambda!18137 lambda!18062))))

(assert (=> b!636332 (not (= lambda!18137 lambda!18136))))

(assert (=> b!636332 (not (= lambda!18137 lambda!18135))))

(declare-fun b!636354 () Bool)

(declare-fun e!387486 () Bool)

(assert (=> b!636354 (= e!387486 true)))

(declare-fun b!636353 () Bool)

(declare-fun e!387485 () Bool)

(assert (=> b!636353 (= e!387485 e!387486)))

(assert (=> b!636332 e!387485))

(assert (= b!636353 b!636354))

(assert (= b!636332 b!636353))

(declare-fun lambda!18138 () Int)

(assert (=> bs!75612 (= lambda!18138 lambda!18087)))

(assert (=> bs!75612 (not (= lambda!18138 lambda!18088))))

(assert (=> bs!75611 (= lambda!18138 lambda!18062)))

(assert (=> b!636332 (not (= lambda!18138 lambda!18136))))

(assert (=> b!636332 (not (= lambda!18138 lambda!18137))))

(assert (=> b!636332 (not (= lambda!18138 lambda!18135))))

(declare-fun bs!75613 () Bool)

(declare-fun d!222015 () Bool)

(assert (= bs!75613 (and d!222015 d!222009)))

(declare-fun lambda!18139 () Int)

(assert (=> bs!75613 (= lambda!18139 lambda!18087)))

(assert (=> bs!75613 (not (= lambda!18139 lambda!18088))))

(declare-fun bs!75614 () Bool)

(assert (= bs!75614 (and d!222015 b!636251)))

(assert (=> bs!75614 (= lambda!18139 lambda!18062)))

(declare-fun bs!75615 () Bool)

(assert (= bs!75615 (and d!222015 b!636332)))

(assert (=> bs!75615 (not (= lambda!18139 lambda!18136))))

(assert (=> bs!75615 (= lambda!18139 lambda!18138)))

(assert (=> bs!75615 (not (= lambda!18139 lambda!18137))))

(assert (=> bs!75615 (not (= lambda!18139 lambda!18135))))

(declare-fun b!636331 () Bool)

(assert (=> b!636331 true))

(declare-fun lt!272191 () Unit!11806)

(declare-fun lt!272206 () tuple2!7336)

(declare-fun forallContained!459 (List!6783 Int tuple2!7336) Unit!11806)

(assert (=> b!636331 (= lt!272191 (forallContained!459 (list!2862 (map!1455 lt!272045 lambda!18061)) lambda!18137 lt!272206))))

(declare-fun e!387475 () Unit!11806)

(declare-fun err!580 () Unit!11806)

(assert (=> b!636331 (= e!387475 err!580)))

(declare-fun lt!272216 () BalanceConc!4554)

(declare-fun e!387470 () BalanceConc!4554)

(declare-fun lt!272198 () BalanceConc!4554)

(declare-fun lt!272205 () BalanceConc!4554)

(declare-fun ++!1817 (BalanceConc!4554 BalanceConc!4554) BalanceConc!4554)

(assert (=> b!636332 (= e!387470 (++!1817 (++!1817 (sortObjectsByID!0 lt!272216) lt!272205) (sortObjectsByID!0 lt!272198)))))

(declare-fun apply!1605 (BalanceConc!4554 Int) tuple2!7336)

(declare-fun size!5320 (BalanceConc!4554) Int)

(assert (=> b!636332 (= lt!272206 (apply!1605 (map!1455 lt!272045 lambda!18061) (ite (>= (size!5320 (map!1455 lt!272045 lambda!18061)) 0) (div (size!5320 (map!1455 lt!272045 lambda!18061)) 2) (- (div (- (size!5320 (map!1455 lt!272045 lambda!18061))) 2)))))))

(declare-fun filter!121 (BalanceConc!4554 Int) BalanceConc!4554)

(assert (=> b!636332 (= lt!272216 (filter!121 (map!1455 lt!272045 lambda!18061) lambda!18135))))

(assert (=> b!636332 (= lt!272205 (filter!121 (map!1455 lt!272045 lambda!18061) lambda!18136))))

(assert (=> b!636332 (= lt!272198 (filter!121 (map!1455 lt!272045 lambda!18061) lambda!18137))))

(declare-fun c!116567 () Bool)

(declare-fun contains!1525 (BalanceConc!4554 tuple2!7336) Bool)

(assert (=> b!636332 (= c!116567 (contains!1525 lt!272216 lt!272206))))

(declare-fun lt!272181 () Unit!11806)

(declare-fun e!387476 () Unit!11806)

(assert (=> b!636332 (= lt!272181 e!387476)))

(declare-fun c!116566 () Bool)

(declare-fun forall!1714 (BalanceConc!4554 Int) Bool)

(assert (=> b!636332 (= c!116566 (forall!1714 (map!1455 lt!272045 lambda!18061) lambda!18135))))

(declare-fun lt!272195 () Unit!11806)

(declare-fun e!387473 () Unit!11806)

(assert (=> b!636332 (= lt!272195 e!387473)))

(declare-fun lt!272211 () List!6783)

(assert (=> b!636332 (= lt!272211 (list!2862 (map!1455 lt!272045 lambda!18061)))))

(declare-fun lt!272201 () Unit!11806)

(declare-fun lemmaNotForallFilterShorter!7 (List!6783 Int) Unit!11806)

(assert (=> b!636332 (= lt!272201 (lemmaNotForallFilterShorter!7 lt!272211 lambda!18135))))

(declare-fun res!276419 () Bool)

(declare-fun isEmpty!4664 (List!6783) Bool)

(assert (=> b!636332 (= res!276419 (isEmpty!4664 lt!272211))))

(declare-fun e!387472 () Bool)

(assert (=> b!636332 (=> res!276419 e!387472)))

(assert (=> b!636332 e!387472))

(declare-fun lt!272202 () Unit!11806)

(assert (=> b!636332 (= lt!272202 lt!272201)))

(declare-fun c!116568 () Bool)

(assert (=> b!636332 (= c!116568 (contains!1525 lt!272198 lt!272206))))

(declare-fun lt!272213 () Unit!11806)

(declare-fun e!387474 () Unit!11806)

(assert (=> b!636332 (= lt!272213 e!387474)))

(declare-fun c!116565 () Bool)

(assert (=> b!636332 (= c!116565 (forall!1714 (map!1455 lt!272045 lambda!18061) lambda!18137))))

(declare-fun lt!272188 () Unit!11806)

(assert (=> b!636332 (= lt!272188 e!387475)))

(declare-fun lt!272194 () List!6783)

(assert (=> b!636332 (= lt!272194 (list!2862 (map!1455 lt!272045 lambda!18061)))))

(declare-fun lt!272200 () Unit!11806)

(assert (=> b!636332 (= lt!272200 (lemmaNotForallFilterShorter!7 lt!272194 lambda!18137))))

(declare-fun res!276420 () Bool)

(assert (=> b!636332 (= res!276420 (isEmpty!4664 lt!272194))))

(declare-fun e!387471 () Bool)

(assert (=> b!636332 (=> res!276420 e!387471)))

(assert (=> b!636332 e!387471))

(declare-fun lt!272190 () Unit!11806)

(assert (=> b!636332 (= lt!272190 lt!272200)))

(declare-fun lt!272192 () Unit!11806)

(declare-fun filterSubseq!7 (List!6783 Int) Unit!11806)

(assert (=> b!636332 (= lt!272192 (filterSubseq!7 (list!2862 (map!1455 lt!272045 lambda!18061)) lambda!18135))))

(declare-fun lt!272183 () Unit!11806)

(assert (=> b!636332 (= lt!272183 (filterSubseq!7 (list!2862 (map!1455 lt!272045 lambda!18061)) lambda!18136))))

(declare-fun lt!272197 () Unit!11806)

(assert (=> b!636332 (= lt!272197 (filterSubseq!7 (list!2862 (map!1455 lt!272045 lambda!18061)) lambda!18137))))

(declare-fun lt!272182 () List!6783)

(assert (=> b!636332 (= lt!272182 (list!2862 (filter!121 (map!1455 lt!272045 lambda!18061) lambda!18135)))))

(declare-fun lt!272196 () List!6783)

(assert (=> b!636332 (= lt!272196 (list!2862 (map!1455 lt!272045 lambda!18061)))))

(declare-fun lt!272185 () Unit!11806)

(declare-fun lemmaForallSubseq!12 (List!6783 List!6783 Int) Unit!11806)

(assert (=> b!636332 (= lt!272185 (lemmaForallSubseq!12 lt!272182 lt!272196 lambda!18138))))

(assert (=> b!636332 (forall!1713 lt!272182 lambda!18138)))

(declare-fun lt!272210 () Unit!11806)

(assert (=> b!636332 (= lt!272210 lt!272185)))

(declare-fun lt!272203 () List!6783)

(assert (=> b!636332 (= lt!272203 (list!2862 (filter!121 (map!1455 lt!272045 lambda!18061) lambda!18136)))))

(declare-fun lt!272207 () List!6783)

(assert (=> b!636332 (= lt!272207 (list!2862 (map!1455 lt!272045 lambda!18061)))))

(declare-fun lt!272209 () Unit!11806)

(assert (=> b!636332 (= lt!272209 (lemmaForallSubseq!12 lt!272203 lt!272207 lambda!18138))))

(assert (=> b!636332 (forall!1713 lt!272203 lambda!18138)))

(declare-fun lt!272186 () Unit!11806)

(assert (=> b!636332 (= lt!272186 lt!272209)))

(declare-fun lt!272193 () List!6783)

(assert (=> b!636332 (= lt!272193 (list!2862 (filter!121 (map!1455 lt!272045 lambda!18061) lambda!18137)))))

(declare-fun lt!272189 () List!6783)

(assert (=> b!636332 (= lt!272189 (list!2862 (map!1455 lt!272045 lambda!18061)))))

(declare-fun lt!272214 () Unit!11806)

(assert (=> b!636332 (= lt!272214 (lemmaForallSubseq!12 lt!272193 lt!272189 lambda!18138))))

(assert (=> b!636332 (forall!1713 lt!272193 lambda!18138)))

(declare-fun lt!272215 () Unit!11806)

(assert (=> b!636332 (= lt!272215 lt!272214)))

(declare-fun lt!272208 () Unit!11806)

(declare-fun lemmaConcatPreservesForall!35 (List!6783 List!6783 Int) Unit!11806)

(assert (=> b!636332 (= lt!272208 (lemmaConcatPreservesForall!35 (list!2862 (sortObjectsByID!0 lt!272216)) (list!2862 lt!272205) lambda!18138))))

(declare-fun lt!272187 () Unit!11806)

(declare-fun ++!1818 (List!6783 List!6783) List!6783)

(assert (=> b!636332 (= lt!272187 (lemmaConcatPreservesForall!35 (++!1818 (list!2862 (sortObjectsByID!0 lt!272216)) (list!2862 lt!272205)) (list!2862 (sortObjectsByID!0 lt!272198)) lambda!18138))))

(declare-fun lt!272199 () BalanceConc!4554)

(assert (=> d!222015 (forall!1714 lt!272199 lambda!18139)))

(assert (=> d!222015 (= lt!272199 e!387470)))

(declare-fun c!116569 () Bool)

(assert (=> d!222015 (= c!116569 (<= (size!5320 (map!1455 lt!272045 lambda!18061)) 1))))

(assert (=> d!222015 (= (sortObjectsByID!0 (map!1455 lt!272045 lambda!18061)) lt!272199)))

(declare-fun b!636333 () Bool)

(declare-fun size!5321 (List!6783) Int)

(declare-fun filter!122 (List!6783 Int) List!6783)

(assert (=> b!636333 (= e!387471 (< (size!5321 (filter!122 lt!272194 lambda!18137)) (size!5321 lt!272194)))))

(declare-fun b!636334 () Bool)

(declare-fun Unit!11812 () Unit!11806)

(assert (=> b!636334 (= e!387475 Unit!11812)))

(declare-fun b!636335 () Bool)

(declare-fun Unit!11813 () Unit!11806)

(assert (=> b!636335 (= e!387474 Unit!11813)))

(declare-fun b!636336 () Bool)

(assert (=> b!636336 true))

(declare-fun lt!272204 () Unit!11806)

(assert (=> b!636336 (= lt!272204 (forallContained!459 (list!2862 lt!272216) lambda!18135 lt!272206))))

(declare-fun err!578 () Unit!11806)

(assert (=> b!636336 (= e!387476 err!578)))

(declare-fun b!636337 () Bool)

(declare-fun Unit!11814 () Unit!11806)

(assert (=> b!636337 (= e!387473 Unit!11814)))

(declare-fun b!636338 () Bool)

(assert (=> b!636338 true))

(declare-fun lt!272212 () Unit!11806)

(assert (=> b!636338 (= lt!272212 (forallContained!459 (list!2862 lt!272198) lambda!18137 lt!272206))))

(declare-fun err!579 () Unit!11806)

(assert (=> b!636338 (= e!387474 err!579)))

(declare-fun b!636339 () Bool)

(declare-fun Unit!11815 () Unit!11806)

(assert (=> b!636339 (= e!387476 Unit!11815)))

(declare-fun b!636340 () Bool)

(assert (=> b!636340 (= e!387472 (< (size!5321 (filter!122 lt!272211 lambda!18135)) (size!5321 lt!272211)))))

(declare-fun b!636341 () Bool)

(assert (=> b!636341 true))

(declare-fun lt!272184 () Unit!11806)

(assert (=> b!636341 (= lt!272184 (forallContained!459 (list!2862 (map!1455 lt!272045 lambda!18061)) lambda!18135 lt!272206))))

(declare-fun err!581 () Unit!11806)

(assert (=> b!636341 (= e!387473 err!581)))

(declare-fun b!636342 () Bool)

(assert (=> b!636342 (= e!387470 (map!1455 lt!272045 lambda!18061))))

(assert (= (and d!222015 c!116569) b!636342))

(assert (= (and d!222015 (not c!116569)) b!636332))

(assert (= (and b!636332 c!116567) b!636336))

(assert (= (and b!636332 (not c!116567)) b!636339))

(assert (= (and b!636332 c!116566) b!636341))

(assert (= (and b!636332 (not c!116566)) b!636337))

(assert (= (and b!636332 (not res!276419)) b!636340))

(assert (= (and b!636332 c!116568) b!636338))

(assert (= (and b!636332 (not c!116568)) b!636335))

(assert (= (and b!636332 c!116565) b!636331))

(assert (= (and b!636332 (not c!116565)) b!636334))

(assert (= (and b!636332 (not res!276420)) b!636333))

(declare-fun m!907075 () Bool)

(assert (=> d!222015 m!907075))

(assert (=> d!222015 m!906955))

(declare-fun m!907077 () Bool)

(assert (=> d!222015 m!907077))

(declare-fun m!907079 () Bool)

(assert (=> b!636338 m!907079))

(assert (=> b!636338 m!907079))

(declare-fun m!907081 () Bool)

(assert (=> b!636338 m!907081))

(assert (=> b!636331 m!906955))

(declare-fun m!907083 () Bool)

(assert (=> b!636331 m!907083))

(assert (=> b!636331 m!907083))

(declare-fun m!907085 () Bool)

(assert (=> b!636331 m!907085))

(declare-fun m!907087 () Bool)

(assert (=> b!636332 m!907087))

(declare-fun m!907089 () Bool)

(assert (=> b!636332 m!907089))

(declare-fun m!907091 () Bool)

(assert (=> b!636332 m!907091))

(declare-fun m!907093 () Bool)

(assert (=> b!636332 m!907093))

(declare-fun m!907095 () Bool)

(assert (=> b!636332 m!907095))

(declare-fun m!907097 () Bool)

(assert (=> b!636332 m!907097))

(declare-fun m!907099 () Bool)

(assert (=> b!636332 m!907099))

(declare-fun m!907101 () Bool)

(assert (=> b!636332 m!907101))

(declare-fun m!907103 () Bool)

(assert (=> b!636332 m!907103))

(declare-fun m!907105 () Bool)

(assert (=> b!636332 m!907105))

(declare-fun m!907107 () Bool)

(assert (=> b!636332 m!907107))

(assert (=> b!636332 m!907089))

(declare-fun m!907109 () Bool)

(assert (=> b!636332 m!907109))

(declare-fun m!907111 () Bool)

(assert (=> b!636332 m!907111))

(declare-fun m!907113 () Bool)

(assert (=> b!636332 m!907113))

(assert (=> b!636332 m!907083))

(declare-fun m!907115 () Bool)

(assert (=> b!636332 m!907115))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907101))

(assert (=> b!636332 m!907109))

(declare-fun m!907117 () Bool)

(assert (=> b!636332 m!907117))

(declare-fun m!907119 () Bool)

(assert (=> b!636332 m!907119))

(assert (=> b!636332 m!907109))

(assert (=> b!636332 m!907117))

(declare-fun m!907121 () Bool)

(assert (=> b!636332 m!907121))

(assert (=> b!636332 m!907121))

(declare-fun m!907123 () Bool)

(assert (=> b!636332 m!907123))

(declare-fun m!907125 () Bool)

(assert (=> b!636332 m!907125))

(declare-fun m!907127 () Bool)

(assert (=> b!636332 m!907127))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907105))

(declare-fun m!907129 () Bool)

(assert (=> b!636332 m!907129))

(assert (=> b!636332 m!907083))

(declare-fun m!907131 () Bool)

(assert (=> b!636332 m!907131))

(assert (=> b!636332 m!906955))

(declare-fun m!907133 () Bool)

(assert (=> b!636332 m!907133))

(assert (=> b!636332 m!906955))

(declare-fun m!907135 () Bool)

(assert (=> b!636332 m!907135))

(declare-fun m!907137 () Bool)

(assert (=> b!636332 m!907137))

(declare-fun m!907139 () Bool)

(assert (=> b!636332 m!907139))

(assert (=> b!636332 m!907117))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907111))

(assert (=> b!636332 m!906955))

(declare-fun m!907141 () Bool)

(assert (=> b!636332 m!907141))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907083))

(assert (=> b!636332 m!907091))

(assert (=> b!636332 m!907139))

(declare-fun m!907143 () Bool)

(assert (=> b!636332 m!907143))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907077))

(declare-fun m!907145 () Bool)

(assert (=> b!636332 m!907145))

(assert (=> b!636332 m!907083))

(declare-fun m!907147 () Bool)

(assert (=> b!636332 m!907147))

(assert (=> b!636332 m!907139))

(assert (=> b!636332 m!907123))

(declare-fun m!907149 () Bool)

(assert (=> b!636332 m!907149))

(assert (=> b!636332 m!907089))

(declare-fun m!907151 () Bool)

(assert (=> b!636332 m!907151))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907101))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907111))

(assert (=> b!636332 m!906955))

(assert (=> b!636332 m!907105))

(declare-fun m!907153 () Bool)

(assert (=> b!636332 m!907153))

(declare-fun m!907155 () Bool)

(assert (=> b!636336 m!907155))

(assert (=> b!636336 m!907155))

(declare-fun m!907157 () Bool)

(assert (=> b!636336 m!907157))

(declare-fun m!907159 () Bool)

(assert (=> b!636333 m!907159))

(assert (=> b!636333 m!907159))

(declare-fun m!907161 () Bool)

(assert (=> b!636333 m!907161))

(declare-fun m!907163 () Bool)

(assert (=> b!636333 m!907163))

(declare-fun m!907165 () Bool)

(assert (=> b!636340 m!907165))

(assert (=> b!636340 m!907165))

(declare-fun m!907167 () Bool)

(assert (=> b!636340 m!907167))

(declare-fun m!907169 () Bool)

(assert (=> b!636340 m!907169))

(assert (=> b!636341 m!906955))

(assert (=> b!636341 m!907083))

(assert (=> b!636341 m!907083))

(declare-fun m!907171 () Bool)

(assert (=> b!636341 m!907171))

(assert (=> b!636251 d!222015))

(declare-fun d!222017 () Bool)

(declare-fun e!387491 () Bool)

(assert (=> d!222017 e!387491))

(declare-fun res!276423 () Bool)

(assert (=> d!222017 (=> res!276423 e!387491)))

(declare-fun lt!272224 () tuple3!504)

(assert (=> d!222017 (= res!276423 (isEmpty!4663 (_1!3971 lt!272224)))))

(declare-fun e!387492 () Option!1649)

(declare-datatypes ((tuple3!508 0))(
  ( (tuple3!509 (_1!3974 Bool) (_2!3974 CacheUp!274) (_3!305 CacheDown!274)) )
))
(declare-fun lt!272225 () tuple3!508)

(assert (=> d!222017 (= lt!272224 (tuple3!505 e!387492 (_2!3974 lt!272225) (_3!305 lt!272225)))))

(declare-fun c!116572 () Bool)

(assert (=> d!222017 (= c!116572 (not (_1!3974 lt!272225)))))

(declare-fun lt!272223 () BalanceConc!4552)

(declare-fun rulesProduceEachTokenIndividuallyMem!3 (LexerInterface!1246 List!6778 BalanceConc!4552 CacheUp!274 CacheDown!274) tuple3!508)

(assert (=> d!222017 (= lt!272225 (rulesProduceEachTokenIndividuallyMem!3 Lexer!1244 (rules!109 JsonLexer!177) lt!272223 (_2!3971 lt!272041) (_3!303 lt!272041)))))

(declare-fun singletonSeq!428 (Token!2454) BalanceConc!4552)

(declare-fun apply!1606 (TokenValueInjection!2552 BalanceConc!4550) TokenValue!1400)

(declare-datatypes ((KeywordValueInjection!34 0))(
  ( (KeywordValueInjection!35) )
))
(declare-fun injection!9 (KeywordValueInjection!34) TokenValueInjection!2552)

(declare-fun singletonSeq!429 ((_ BitVec 16)) BalanceConc!4550)

(declare-fun rBracketRule!0 (JsonLexer!176) Rule!2532)

(assert (=> d!222017 (= lt!272223 (singletonSeq!428 (Token!2455 (apply!1606 (injection!9 KeywordValueInjection!35) (singletonSeq!429 #x005D)) (rBracketRule!0 JsonLexer!177) 1 (Cons!6763 #x005D Nil!6763))))))

(assert (=> d!222017 (not (isEmpty!4662 (rules!109 JsonLexer!177)))))

(assert (=> d!222017 (= (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041)) lt!272224)))

(declare-fun b!636361 () Bool)

(assert (=> b!636361 (= e!387492 None!1648)))

(declare-fun b!636362 () Bool)

(declare-fun printableTokensFromTokens!6 (List!6778 BalanceConc!4552) Option!1649)

(assert (=> b!636362 (= e!387492 (printableTokensFromTokens!6 (rules!109 JsonLexer!177) lt!272223))))

(declare-fun b!636363 () Bool)

(declare-fun get!2471 (Option!1649) PrintableTokens!112)

(assert (=> b!636363 (= e!387491 (usesJsonRules!0 (get!2471 (_1!3971 lt!272224))))))

(assert (= (and d!222017 c!116572) b!636361))

(assert (= (and d!222017 (not c!116572)) b!636362))

(assert (= (and d!222017 (not res!276423)) b!636363))

(declare-fun m!907173 () Bool)

(assert (=> d!222017 m!907173))

(assert (=> d!222017 m!907173))

(declare-fun m!907175 () Bool)

(assert (=> d!222017 m!907175))

(declare-fun m!907177 () Bool)

(assert (=> d!222017 m!907177))

(assert (=> d!222017 m!907175))

(assert (=> d!222017 m!907003))

(declare-fun m!907179 () Bool)

(assert (=> d!222017 m!907179))

(assert (=> d!222017 m!907003))

(declare-fun m!907181 () Bool)

(assert (=> d!222017 m!907181))

(declare-fun m!907183 () Bool)

(assert (=> d!222017 m!907183))

(declare-fun m!907185 () Bool)

(assert (=> d!222017 m!907185))

(declare-fun m!907187 () Bool)

(assert (=> d!222017 m!907187))

(assert (=> d!222017 m!907003))

(assert (=> b!636362 m!907003))

(assert (=> b!636362 m!907003))

(declare-fun m!907189 () Bool)

(assert (=> b!636362 m!907189))

(declare-fun m!907191 () Bool)

(assert (=> b!636363 m!907191))

(assert (=> b!636363 m!907191))

(declare-fun m!907193 () Bool)

(assert (=> b!636363 m!907193))

(assert (=> b!636251 d!222017))

(declare-fun bs!75616 () Bool)

(declare-fun d!222019 () Bool)

(assert (= bs!75616 (and d!222019 d!222009)))

(declare-fun lambda!18142 () Int)

(assert (=> bs!75616 (not (= lambda!18142 lambda!18087))))

(declare-fun bs!75617 () Bool)

(assert (= bs!75617 (and d!222019 b!636251)))

(assert (=> bs!75617 (not (= lambda!18142 lambda!18062))))

(declare-fun bs!75618 () Bool)

(assert (= bs!75618 (and d!222019 b!636332)))

(assert (=> bs!75618 (not (= lambda!18142 lambda!18136))))

(assert (=> bs!75618 (not (= lambda!18142 lambda!18138))))

(assert (=> bs!75618 (not (= lambda!18142 lambda!18137))))

(assert (=> bs!75618 (not (= lambda!18142 lambda!18135))))

(assert (=> bs!75616 (not (= lambda!18142 lambda!18088))))

(declare-fun bs!75619 () Bool)

(assert (= bs!75619 (and d!222019 d!222015)))

(assert (=> bs!75619 (not (= lambda!18142 lambda!18139))))

(assert (=> d!222019 true))

(declare-fun order!5121 () Int)

(declare-fun order!5123 () Int)

(declare-fun dynLambda!3716 (Int Int) Int)

(declare-fun dynLambda!3717 (Int Int) Int)

(assert (=> d!222019 (< (dynLambda!3716 order!5121 lambda!18063) (dynLambda!3717 order!5123 lambda!18142))))

(assert (=> d!222019 true))

(declare-fun order!5125 () Int)

(declare-fun dynLambda!3718 (Int Int) Int)

(assert (=> d!222019 (< (dynLambda!3718 order!5125 lambda!18064) (dynLambda!3717 order!5123 lambda!18142))))

(assert (=> d!222019 (forall!1710 (map!1456 lt!272060 lambda!18063) lambda!18064)))

(declare-fun lt!272228 () Unit!11806)

(declare-fun choose!4610 (List!6783 Int Int) Unit!11806)

(assert (=> d!222019 (= lt!272228 (choose!4610 lt!272060 lambda!18063 lambda!18064))))

(assert (=> d!222019 (forall!1713 lt!272060 lambda!18142)))

(assert (=> d!222019 (= (mapPred!37 lt!272060 lambda!18063 lambda!18064) lt!272228)))

(declare-fun bs!75620 () Bool)

(assert (= bs!75620 d!222019))

(declare-fun m!907195 () Bool)

(assert (=> bs!75620 m!907195))

(assert (=> bs!75620 m!907195))

(declare-fun m!907197 () Bool)

(assert (=> bs!75620 m!907197))

(declare-fun m!907199 () Bool)

(assert (=> bs!75620 m!907199))

(declare-fun m!907201 () Bool)

(assert (=> bs!75620 m!907201))

(assert (=> b!636251 d!222019))

(declare-fun d!222021 () Bool)

(declare-fun e!387495 () Bool)

(assert (=> d!222021 e!387495))

(declare-fun res!276426 () Bool)

(assert (=> d!222021 (=> (not res!276426) (not e!387495))))

(declare-fun lt!272231 () BalanceConc!4554)

(declare-fun map!1458 (List!6784 Int) List!6783)

(assert (=> d!222021 (= res!276426 (= (list!2862 lt!272231) (map!1458 (list!2863 lt!272045) lambda!18061)))))

(declare-fun map!1459 (Conc!2272 Int) Conc!2271)

(assert (=> d!222021 (= lt!272231 (BalanceConc!4555 (map!1459 (c!116531 lt!272045) lambda!18061)))))

(assert (=> d!222021 (= (map!1455 lt!272045 lambda!18061) lt!272231)))

(declare-fun b!636370 () Bool)

(declare-fun isBalanced!597 (Conc!2271) Bool)

(assert (=> b!636370 (= e!387495 (isBalanced!597 (map!1459 (c!116531 lt!272045) lambda!18061)))))

(assert (= (and d!222021 res!276426) b!636370))

(declare-fun m!907203 () Bool)

(assert (=> d!222021 m!907203))

(assert (=> d!222021 m!906959))

(assert (=> d!222021 m!906959))

(declare-fun m!907205 () Bool)

(assert (=> d!222021 m!907205))

(declare-fun m!907207 () Bool)

(assert (=> d!222021 m!907207))

(assert (=> b!636370 m!907207))

(assert (=> b!636370 m!907207))

(declare-fun m!907209 () Bool)

(assert (=> b!636370 m!907209))

(assert (=> b!636251 d!222021))

(declare-fun d!222023 () Bool)

(declare-fun e!387500 () Bool)

(assert (=> d!222023 e!387500))

(declare-fun res!276429 () Bool)

(assert (=> d!222023 (=> res!276429 e!387500)))

(declare-fun lt!272238 () tuple3!504)

(assert (=> d!222023 (= res!276429 (isEmpty!4663 (_1!3971 lt!272238)))))

(declare-fun e!387501 () Option!1649)

(declare-fun lt!272240 () tuple3!508)

(assert (=> d!222023 (= lt!272238 (tuple3!505 e!387501 (_2!3974 lt!272240) (_3!305 lt!272240)))))

(declare-fun c!116576 () Bool)

(assert (=> d!222023 (= c!116576 (not (_1!3974 lt!272240)))))

(declare-fun lt!272239 () BalanceConc!4552)

(assert (=> d!222023 (= lt!272240 (rulesProduceEachTokenIndividuallyMem!3 Lexer!1244 (rules!109 JsonLexer!177) lt!272239 cacheUp!351 cacheDown!364))))

(declare-fun ++!1819 (BalanceConc!4552 BalanceConc!4552) BalanceConc!4552)

(declare-fun commaRule!0 (JsonLexer!176) Rule!2532)

(declare-datatypes ((WhitespaceValueInjection!30 0))(
  ( (WhitespaceValueInjection!31) )
))
(declare-fun injection!7 (WhitespaceValueInjection!30) TokenValueInjection!2552)

(declare-fun whitespaceRule!0 (JsonLexer!176) Rule!2532)

(assert (=> d!222023 (= lt!272239 (++!1819 (singletonSeq!428 (Token!2455 (apply!1606 (injection!9 KeywordValueInjection!35) (singletonSeq!429 #x002C)) (commaRule!0 JsonLexer!177) 1 (Cons!6763 #x002C Nil!6763))) (singletonSeq!428 (Token!2455 (apply!1606 (injection!7 WhitespaceValueInjection!31) (singletonSeq!429 #x000A)) (whitespaceRule!0 JsonLexer!177) 1 (Cons!6763 #x000A Nil!6763)))))))

(assert (=> d!222023 (not (isEmpty!4662 (rules!109 JsonLexer!177)))))

(assert (=> d!222023 (= (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364) lt!272238)))

(declare-fun b!636377 () Bool)

(assert (=> b!636377 (= e!387501 None!1648)))

(declare-fun b!636378 () Bool)

(assert (=> b!636378 (= e!387501 (printableTokensFromTokens!6 (rules!109 JsonLexer!177) lt!272239))))

(declare-fun b!636379 () Bool)

(assert (=> b!636379 (= e!387500 (usesJsonRules!0 (get!2471 (_1!3971 lt!272238))))))

(assert (= (and d!222023 c!116576) b!636377))

(assert (= (and d!222023 (not c!116576)) b!636378))

(assert (= (and d!222023 (not res!276429)) b!636379))

(assert (=> d!222023 m!907173))

(declare-fun m!907211 () Bool)

(assert (=> d!222023 m!907211))

(declare-fun m!907213 () Bool)

(assert (=> d!222023 m!907213))

(declare-fun m!907215 () Bool)

(assert (=> d!222023 m!907215))

(declare-fun m!907217 () Bool)

(assert (=> d!222023 m!907217))

(assert (=> d!222023 m!907211))

(assert (=> d!222023 m!907003))

(declare-fun m!907219 () Bool)

(assert (=> d!222023 m!907219))

(declare-fun m!907221 () Bool)

(assert (=> d!222023 m!907221))

(declare-fun m!907223 () Bool)

(assert (=> d!222023 m!907223))

(assert (=> d!222023 m!907217))

(declare-fun m!907225 () Bool)

(assert (=> d!222023 m!907225))

(assert (=> d!222023 m!907003))

(assert (=> d!222023 m!907179))

(declare-fun m!907227 () Bool)

(assert (=> d!222023 m!907227))

(assert (=> d!222023 m!907213))

(declare-fun m!907229 () Bool)

(assert (=> d!222023 m!907229))

(assert (=> d!222023 m!907223))

(assert (=> d!222023 m!907173))

(assert (=> d!222023 m!907221))

(declare-fun m!907231 () Bool)

(assert (=> d!222023 m!907231))

(declare-fun m!907233 () Bool)

(assert (=> d!222023 m!907233))

(assert (=> d!222023 m!907003))

(assert (=> b!636378 m!907003))

(assert (=> b!636378 m!907003))

(declare-fun m!907235 () Bool)

(assert (=> b!636378 m!907235))

(declare-fun m!907237 () Bool)

(assert (=> b!636379 m!907237))

(assert (=> b!636379 m!907237))

(declare-fun m!907239 () Bool)

(assert (=> b!636379 m!907239))

(assert (=> b!636251 d!222023))

(declare-fun d!222025 () Bool)

(declare-fun e!387507 () Bool)

(assert (=> d!222025 e!387507))

(declare-fun res!276432 () Bool)

(assert (=> d!222025 (=> res!276432 e!387507)))

(declare-fun lt!272247 () tuple3!504)

(assert (=> d!222025 (= res!276432 (isEmpty!4663 (_1!3971 lt!272247)))))

(declare-fun e!387506 () Option!1649)

(declare-fun lt!272249 () tuple3!508)

(assert (=> d!222025 (= lt!272247 (tuple3!505 e!387506 (_2!3974 lt!272249) (_3!305 lt!272249)))))

(declare-fun c!116579 () Bool)

(assert (=> d!222025 (= c!116579 (not (_1!3974 lt!272249)))))

(declare-fun lt!272248 () BalanceConc!4552)

(assert (=> d!222025 (= lt!272249 (rulesProduceEachTokenIndividuallyMem!3 Lexer!1244 (rules!109 JsonLexer!177) lt!272248 (_2!3971 lt!272058) (_3!303 lt!272058)))))

(declare-fun lBracketRule!0 (JsonLexer!176) Rule!2532)

(assert (=> d!222025 (= lt!272248 (singletonSeq!428 (Token!2455 (apply!1606 (injection!9 KeywordValueInjection!35) (singletonSeq!429 #x005B)) (lBracketRule!0 JsonLexer!177) 1 (Cons!6763 #x005B Nil!6763))))))

(assert (=> d!222025 (not (isEmpty!4662 (rules!109 JsonLexer!177)))))

(assert (=> d!222025 (= (createLeftBracketSeparator!0 (_2!3971 lt!272058) (_3!303 lt!272058)) lt!272247)))

(declare-fun b!636386 () Bool)

(assert (=> b!636386 (= e!387506 None!1648)))

(declare-fun b!636387 () Bool)

(assert (=> b!636387 (= e!387506 (printableTokensFromTokens!6 (rules!109 JsonLexer!177) lt!272248))))

(declare-fun b!636388 () Bool)

(assert (=> b!636388 (= e!387507 (usesJsonRules!0 (get!2471 (_1!3971 lt!272247))))))

(assert (= (and d!222025 c!116579) b!636386))

(assert (= (and d!222025 (not c!116579)) b!636387))

(assert (= (and d!222025 (not res!276432)) b!636388))

(assert (=> d!222025 m!907173))

(declare-fun m!907241 () Bool)

(assert (=> d!222025 m!907241))

(declare-fun m!907243 () Bool)

(assert (=> d!222025 m!907243))

(assert (=> d!222025 m!907173))

(declare-fun m!907245 () Bool)

(assert (=> d!222025 m!907245))

(declare-fun m!907247 () Bool)

(assert (=> d!222025 m!907247))

(assert (=> d!222025 m!907245))

(assert (=> d!222025 m!907003))

(declare-fun m!907249 () Bool)

(assert (=> d!222025 m!907249))

(assert (=> d!222025 m!907003))

(declare-fun m!907251 () Bool)

(assert (=> d!222025 m!907251))

(assert (=> d!222025 m!907003))

(assert (=> d!222025 m!907179))

(assert (=> b!636387 m!907003))

(assert (=> b!636387 m!907003))

(declare-fun m!907253 () Bool)

(assert (=> b!636387 m!907253))

(declare-fun m!907255 () Bool)

(assert (=> b!636388 m!907255))

(assert (=> b!636388 m!907255))

(declare-fun m!907257 () Bool)

(assert (=> b!636388 m!907257))

(assert (=> b!636251 d!222025))

(declare-fun d!222027 () Bool)

(assert (=> d!222027 (= (isEmpty!4663 lt!272052) (not ((_ is Some!1648) lt!272052)))))

(assert (=> b!636251 d!222027))

(declare-fun bs!75621 () Bool)

(declare-fun d!222029 () Bool)

(assert (= bs!75621 (and d!222029 d!222005)))

(declare-fun lambda!18145 () Int)

(assert (=> bs!75621 (not (= lambda!18145 lambda!18082))))

(declare-fun bs!75622 () Bool)

(assert (= bs!75622 (and d!222029 b!636251)))

(assert (=> bs!75622 (not (= lambda!18145 lambda!18064))))

(assert (=> bs!75621 (not (= lambda!18145 lambda!18081))))

(declare-fun bs!75623 () Bool)

(assert (= bs!75623 (and d!222029 b!636291)))

(assert (=> bs!75623 (not (= lambda!18145 lambda!18075))))

(declare-fun bs!75624 () Bool)

(assert (= bs!75624 (and d!222029 d!222003)))

(assert (=> bs!75624 (not (= lambda!18145 lambda!18076))))

(assert (=> d!222029 true))

(declare-fun order!5127 () Int)

(declare-fun dynLambda!3719 (Int Int) Int)

(assert (=> d!222029 (< (dynLambda!3719 order!5127 lambda!18061) (dynLambda!3718 order!5125 lambda!18145))))

(assert (=> d!222029 true))

(assert (=> d!222029 (< (dynLambda!3717 order!5123 lambda!18062) (dynLambda!3718 order!5125 lambda!18145))))

(assert (=> d!222029 (forall!1713 (map!1458 lt!272037 lambda!18061) lambda!18062)))

(declare-fun lt!272252 () Unit!11806)

(declare-fun choose!4611 (List!6784 Int Int) Unit!11806)

(assert (=> d!222029 (= lt!272252 (choose!4611 lt!272037 lambda!18061 lambda!18062))))

(assert (=> d!222029 (forall!1710 lt!272037 lambda!18145)))

(assert (=> d!222029 (= (mapPred!38 lt!272037 lambda!18061 lambda!18062) lt!272252)))

(declare-fun bs!75625 () Bool)

(assert (= bs!75625 d!222029))

(declare-fun m!907259 () Bool)

(assert (=> bs!75625 m!907259))

(assert (=> bs!75625 m!907259))

(declare-fun m!907261 () Bool)

(assert (=> bs!75625 m!907261))

(declare-fun m!907263 () Bool)

(assert (=> bs!75625 m!907263))

(declare-fun m!907265 () Bool)

(assert (=> bs!75625 m!907265))

(assert (=> b!636251 d!222029))

(assert (=> b!636252 d!222017))

(declare-fun d!222031 () Bool)

(assert (=> d!222031 (= (isEmpty!4662 lt!272064) ((_ is Nil!6764) lt!272064))))

(assert (=> b!636242 d!222031))

(declare-fun d!222033 () Bool)

(declare-fun integerLiteralRule!0 (JsonLexer!176) Rule!2532)

(declare-fun floatLiteralRule!0 (JsonLexer!176) Rule!2532)

(declare-fun trueRule!0 (JsonLexer!176) Rule!2532)

(declare-fun falseRule!0 (JsonLexer!176) Rule!2532)

(declare-fun nullRule!0 (JsonLexer!176) Rule!2532)

(declare-fun jsonstringRule!0 (JsonLexer!176) Rule!2532)

(declare-fun lBraceRule!0 (JsonLexer!176) Rule!2532)

(declare-fun rBraceRule!0 (JsonLexer!176) Rule!2532)

(declare-fun colonRule!0 (JsonLexer!176) Rule!2532)

(declare-fun eofRule!0 (JsonLexer!176) Rule!2532)

(assert (=> d!222033 (= (rules!109 JsonLexer!177) (Cons!6764 (whitespaceRule!0 JsonLexer!177) (Cons!6764 (integerLiteralRule!0 JsonLexer!177) (Cons!6764 (floatLiteralRule!0 JsonLexer!177) (Cons!6764 (trueRule!0 JsonLexer!177) (Cons!6764 (falseRule!0 JsonLexer!177) (Cons!6764 (nullRule!0 JsonLexer!177) (Cons!6764 (jsonstringRule!0 JsonLexer!177) (Cons!6764 (lBraceRule!0 JsonLexer!177) (Cons!6764 (rBraceRule!0 JsonLexer!177) (Cons!6764 (lBracketRule!0 JsonLexer!177) (Cons!6764 (rBracketRule!0 JsonLexer!177) (Cons!6764 (colonRule!0 JsonLexer!177) (Cons!6764 (commaRule!0 JsonLexer!177) (Cons!6764 (eofRule!0 JsonLexer!177) Nil!6764)))))))))))))))))

(declare-fun bs!75626 () Bool)

(assert (= bs!75626 d!222033))

(declare-fun m!907267 () Bool)

(assert (=> bs!75626 m!907267))

(assert (=> bs!75626 m!907241))

(assert (=> bs!75626 m!907229))

(assert (=> bs!75626 m!907227))

(declare-fun m!907269 () Bool)

(assert (=> bs!75626 m!907269))

(declare-fun m!907271 () Bool)

(assert (=> bs!75626 m!907271))

(declare-fun m!907273 () Bool)

(assert (=> bs!75626 m!907273))

(declare-fun m!907275 () Bool)

(assert (=> bs!75626 m!907275))

(declare-fun m!907277 () Bool)

(assert (=> bs!75626 m!907277))

(assert (=> bs!75626 m!907187))

(declare-fun m!907279 () Bool)

(assert (=> bs!75626 m!907279))

(declare-fun m!907281 () Bool)

(assert (=> bs!75626 m!907281))

(declare-fun m!907283 () Bool)

(assert (=> bs!75626 m!907283))

(declare-fun m!907285 () Bool)

(assert (=> bs!75626 m!907285))

(assert (=> b!636242 d!222033))

(declare-fun d!222035 () Bool)

(assert (=> d!222035 (= (size!5315 printableTokens!2) (size!5318 (tokens!1193 printableTokens!2)))))

(declare-fun bs!75627 () Bool)

(assert (= bs!75627 d!222035))

(assert (=> bs!75627 m!907019))

(assert (=> start!62284 d!222035))

(declare-fun d!222037 () Bool)

(declare-fun res!276439 () Bool)

(declare-fun e!387510 () Bool)

(assert (=> d!222037 (=> (not res!276439) (not e!387510))))

(assert (=> d!222037 (= res!276439 (not (isEmpty!4662 (rules!8185 printableTokens!2))))))

(assert (=> d!222037 (= (inv!8612 printableTokens!2) e!387510)))

(declare-fun b!636399 () Bool)

(declare-fun res!276440 () Bool)

(assert (=> b!636399 (=> (not res!276440) (not e!387510))))

(assert (=> b!636399 (= res!276440 (rulesInvariant!1181 Lexer!1244 (rules!8185 printableTokens!2)))))

(declare-fun b!636400 () Bool)

(declare-fun res!276441 () Bool)

(assert (=> b!636400 (=> (not res!276441) (not e!387510))))

(declare-fun rulesProduceEachTokenIndividually!574 (LexerInterface!1246 List!6778 BalanceConc!4552) Bool)

(assert (=> b!636400 (= res!276441 (rulesProduceEachTokenIndividually!574 Lexer!1244 (rules!8185 printableTokens!2) (tokens!1193 printableTokens!2)))))

(declare-fun b!636401 () Bool)

(declare-fun separableTokens!24 (LexerInterface!1246 BalanceConc!4552 List!6778) Bool)

(assert (=> b!636401 (= e!387510 (separableTokens!24 Lexer!1244 (tokens!1193 printableTokens!2) (rules!8185 printableTokens!2)))))

(assert (= (and d!222037 res!276439) b!636399))

(assert (= (and b!636399 res!276440) b!636400))

(assert (= (and b!636400 res!276441) b!636401))

(declare-fun m!907287 () Bool)

(assert (=> d!222037 m!907287))

(declare-fun m!907289 () Bool)

(assert (=> b!636399 m!907289))

(declare-fun m!907291 () Bool)

(assert (=> b!636400 m!907291))

(declare-fun m!907293 () Bool)

(assert (=> b!636401 m!907293))

(assert (=> start!62284 d!222037))

(declare-fun d!222039 () Bool)

(declare-fun res!276444 () Bool)

(declare-fun e!387513 () Bool)

(assert (=> d!222039 (=> (not res!276444) (not e!387513))))

(assert (=> d!222039 (= res!276444 ((_ is HashMap!614) (cache!1001 cacheDown!364)))))

(assert (=> d!222039 (= (inv!8613 cacheDown!364) e!387513)))

(declare-fun b!636404 () Bool)

(declare-fun validCacheMapDown!41 (MutableMap!614) Bool)

(assert (=> b!636404 (= e!387513 (validCacheMapDown!41 (cache!1001 cacheDown!364)))))

(assert (= (and d!222039 res!276444) b!636404))

(declare-fun m!907295 () Bool)

(assert (=> b!636404 m!907295))

(assert (=> start!62284 d!222039))

(declare-fun d!222041 () Bool)

(declare-fun res!276447 () Bool)

(declare-fun e!387516 () Bool)

(assert (=> d!222041 (=> (not res!276447) (not e!387516))))

(assert (=> d!222041 (= res!276447 ((_ is HashMap!613) (cache!1000 cacheUp!351)))))

(assert (=> d!222041 (= (inv!8614 cacheUp!351) e!387516)))

(declare-fun b!636407 () Bool)

(declare-fun validCacheMapUp!41 (MutableMap!613) Bool)

(assert (=> b!636407 (= e!387516 (validCacheMapUp!41 (cache!1000 cacheUp!351)))))

(assert (= (and d!222041 res!276447) b!636407))

(declare-fun m!907297 () Bool)

(assert (=> b!636407 m!907297))

(assert (=> start!62284 d!222041))

(declare-fun d!222043 () Bool)

(declare-fun c!116582 () Bool)

(assert (=> d!222043 (= c!116582 ((_ is Node!2270) (c!116529 (tokens!1193 printableTokens!2))))))

(declare-fun e!387521 () Bool)

(assert (=> d!222043 (= (inv!8611 (c!116529 (tokens!1193 printableTokens!2))) e!387521)))

(declare-fun b!636414 () Bool)

(declare-fun inv!8616 (Conc!2270) Bool)

(assert (=> b!636414 (= e!387521 (inv!8616 (c!116529 (tokens!1193 printableTokens!2))))))

(declare-fun b!636415 () Bool)

(declare-fun e!387522 () Bool)

(assert (=> b!636415 (= e!387521 e!387522)))

(declare-fun res!276450 () Bool)

(assert (=> b!636415 (= res!276450 (not ((_ is Leaf!3469) (c!116529 (tokens!1193 printableTokens!2)))))))

(assert (=> b!636415 (=> res!276450 e!387522)))

(declare-fun b!636416 () Bool)

(declare-fun inv!8617 (Conc!2270) Bool)

(assert (=> b!636416 (= e!387522 (inv!8617 (c!116529 (tokens!1193 printableTokens!2))))))

(assert (= (and d!222043 c!116582) b!636414))

(assert (= (and d!222043 (not c!116582)) b!636415))

(assert (= (and b!636415 (not res!276450)) b!636416))

(declare-fun m!907299 () Bool)

(assert (=> b!636414 m!907299))

(declare-fun m!907301 () Bool)

(assert (=> b!636416 m!907301))

(assert (=> b!636230 d!222043))

(assert (=> b!636248 d!222017))

(declare-fun bs!75628 () Bool)

(declare-fun d!222045 () Bool)

(assert (= bs!75628 (and d!222045 d!222005)))

(declare-fun lambda!18148 () Int)

(assert (=> bs!75628 (not (= lambda!18148 lambda!18082))))

(declare-fun bs!75629 () Bool)

(assert (= bs!75629 (and d!222045 d!222029)))

(assert (=> bs!75629 (not (= lambda!18148 lambda!18145))))

(declare-fun bs!75630 () Bool)

(assert (= bs!75630 (and d!222045 b!636251)))

(assert (=> bs!75630 (= lambda!18148 lambda!18064)))

(assert (=> bs!75628 (= lambda!18148 lambda!18081)))

(declare-fun bs!75631 () Bool)

(assert (= bs!75631 (and d!222045 b!636291)))

(assert (=> bs!75631 (= lambda!18148 lambda!18075)))

(declare-fun bs!75632 () Bool)

(assert (= bs!75632 (and d!222045 d!222003)))

(assert (=> bs!75632 (= lambda!18148 lambda!18076)))

(declare-fun b!636440 () Bool)

(declare-fun e!387539 () Option!1649)

(declare-fun call!41620 () Option!1649)

(assert (=> b!636440 (= e!387539 call!41620)))

(declare-fun b!636441 () Bool)

(declare-fun e!387538 () Option!1649)

(declare-fun e!387536 () Option!1649)

(assert (=> b!636441 (= e!387538 e!387536)))

(declare-fun c!116597 () Bool)

(declare-fun size!5322 (BalanceConc!4556) Int)

(assert (=> b!636441 (= c!116597 (= (size!5322 (map!1454 lt!272040 lambda!18063)) 1))))

(declare-fun b!636442 () Bool)

(assert (=> b!636442 (= e!387539 None!1648)))

(declare-fun b!636443 () Bool)

(declare-fun e!387540 () Bool)

(declare-fun lt!272262 () Option!1649)

(assert (=> b!636443 (= e!387540 (usesJsonRules!0 (get!2471 lt!272262)))))

(declare-fun lt!272263 () Option!1649)

(declare-fun bm!41613 () Bool)

(declare-fun call!41618 () PrintableTokens!112)

(declare-fun call!41619 () Option!1649)

(declare-fun append!204 (PrintableTokens!112 PrintableTokens!112) Option!1649)

(assert (=> bm!41613 (= call!41619 (append!204 (emptyPrintableTokens!9 lt!272064) (ite c!116597 call!41618 (v!16850 lt!272263))))))

(declare-fun bm!41614 () Bool)

(declare-fun head!1343 (BalanceConc!4556) PrintableTokens!112)

(assert (=> bm!41614 (= call!41618 (head!1343 (map!1454 lt!272040 lambda!18063)))))

(declare-fun b!636444 () Bool)

(assert (=> b!636444 (= e!387538 (Some!1648 (emptyPrintableTokens!9 lt!272064)))))

(declare-fun bm!41615 () Bool)

(declare-fun call!41621 () BalanceConc!4556)

(declare-fun tail!891 (BalanceConc!4556) BalanceConc!4556)

(assert (=> bm!41615 (= call!41621 (tail!891 (map!1454 lt!272040 lambda!18063)))))

(declare-fun b!636445 () Bool)

(declare-fun c!116593 () Bool)

(declare-fun lt!272261 () Option!1649)

(assert (=> b!636445 (= c!116593 ((_ is Some!1648) lt!272261))))

(assert (=> b!636445 (= lt!272261 call!41619)))

(declare-fun e!387535 () Option!1649)

(assert (=> b!636445 (= e!387536 e!387535)))

(declare-fun b!636446 () Bool)

(declare-fun e!387537 () Option!1649)

(assert (=> b!636446 (= e!387537 e!387539)))

(declare-fun lt!272264 () Option!1649)

(assert (=> b!636446 (= lt!272264 call!41619)))

(declare-fun c!116596 () Bool)

(assert (=> b!636446 (= c!116596 ((_ is Some!1648) lt!272264))))

(assert (=> d!222045 e!387540))

(declare-fun res!276453 () Bool)

(assert (=> d!222045 (=> res!276453 e!387540)))

(assert (=> d!222045 (= res!276453 (isEmpty!4663 lt!272262))))

(assert (=> d!222045 (= lt!272262 e!387538)))

(declare-fun c!116594 () Bool)

(declare-fun isEmpty!4665 (BalanceConc!4556) Bool)

(assert (=> d!222045 (= c!116594 (isEmpty!4665 (map!1454 lt!272040 lambda!18063)))))

(assert (=> d!222045 (forall!1709 (map!1454 lt!272040 lambda!18063) lambda!18148)))

(assert (=> d!222045 (= (recombineSlicesWithSep!0 (map!1454 lt!272040 lambda!18063) (v!16850 (_1!3971 lt!272058)) (emptyPrintableTokens!9 lt!272064)) lt!272262)))

(declare-fun b!636439 () Bool)

(assert (=> b!636439 (= e!387535 call!41620)))

(declare-fun b!636447 () Bool)

(assert (=> b!636447 (= e!387537 None!1648)))

(declare-fun b!636448 () Bool)

(assert (=> b!636448 (= e!387535 None!1648)))

(declare-fun bm!41616 () Bool)

(assert (=> bm!41616 (= call!41620 (recombineSlicesWithSep!0 call!41621 (v!16850 (_1!3971 lt!272058)) (ite c!116597 (v!16850 lt!272261) (v!16850 lt!272264))))))

(declare-fun b!636449 () Bool)

(declare-fun c!116595 () Bool)

(assert (=> b!636449 (= c!116595 ((_ is Some!1648) lt!272263))))

(assert (=> b!636449 (= lt!272263 (append!204 call!41618 (v!16850 (_1!3971 lt!272058))))))

(assert (=> b!636449 (= e!387536 e!387537)))

(assert (= (and d!222045 c!116594) b!636444))

(assert (= (and d!222045 (not c!116594)) b!636441))

(assert (= (and b!636441 c!116597) b!636445))

(assert (= (and b!636441 (not c!116597)) b!636449))

(assert (= (and b!636445 c!116593) b!636439))

(assert (= (and b!636445 (not c!116593)) b!636448))

(assert (= (and b!636449 c!116595) b!636446))

(assert (= (and b!636449 (not c!116595)) b!636447))

(assert (= (and b!636446 c!116596) b!636440))

(assert (= (and b!636446 (not c!116596)) b!636442))

(assert (= (or b!636445 b!636449) bm!41614))

(assert (= (or b!636439 b!636440) bm!41615))

(assert (= (or b!636445 b!636446) bm!41613))

(assert (= (or b!636439 b!636440) bm!41616))

(assert (= (and d!222045 (not res!276453)) b!636443))

(assert (=> bm!41613 m!906985))

(declare-fun m!907303 () Bool)

(assert (=> bm!41613 m!907303))

(declare-fun m!907305 () Bool)

(assert (=> b!636449 m!907305))

(declare-fun m!907307 () Bool)

(assert (=> b!636443 m!907307))

(assert (=> b!636443 m!907307))

(declare-fun m!907309 () Bool)

(assert (=> b!636443 m!907309))

(assert (=> b!636441 m!906949))

(declare-fun m!907311 () Bool)

(assert (=> b!636441 m!907311))

(declare-fun m!907313 () Bool)

(assert (=> d!222045 m!907313))

(assert (=> d!222045 m!906949))

(declare-fun m!907315 () Bool)

(assert (=> d!222045 m!907315))

(assert (=> d!222045 m!906949))

(declare-fun m!907317 () Bool)

(assert (=> d!222045 m!907317))

(assert (=> bm!41614 m!906949))

(declare-fun m!907319 () Bool)

(assert (=> bm!41614 m!907319))

(assert (=> bm!41615 m!906949))

(declare-fun m!907321 () Bool)

(assert (=> bm!41615 m!907321))

(declare-fun m!907323 () Bool)

(assert (=> bm!41616 m!907323))

(assert (=> b!636248 d!222045))

(assert (=> b!636248 d!222013))

(declare-fun d!222047 () Bool)

(declare-fun isEmpty!4666 (BalanceConc!4552) Bool)

(assert (=> d!222047 (isEmpty!4666 (BalanceConc!4553 Empty!2270))))

(assert (=> d!222047 (not (isEmpty!4662 lt!272064))))

(assert (=> d!222047 (= (emptyPrintableTokens!9 lt!272064) (PrintableTokens!113 lt!272064 (BalanceConc!4553 Empty!2270)))))

(declare-fun bs!75633 () Bool)

(assert (= bs!75633 d!222047))

(declare-fun m!907325 () Bool)

(assert (=> bs!75633 m!907325))

(assert (=> bs!75633 m!907001))

(assert (=> b!636248 d!222047))

(declare-fun d!222049 () Bool)

(assert (=> d!222049 (= (usesJsonRules!0 printableTokens!2) (= (rules!8185 printableTokens!2) (rules!109 JsonLexer!177)))))

(declare-fun bs!75634 () Bool)

(assert (= bs!75634 d!222049))

(assert (=> bs!75634 m!907003))

(assert (=> b!636239 d!222049))

(declare-fun d!222051 () Bool)

(assert (=> d!222051 (= (array_inv!810 (_keys!935 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) (bvsge (size!5313 (_keys!935 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!636231 d!222051))

(declare-fun d!222053 () Bool)

(assert (=> d!222053 (= (array_inv!811 (_values!920 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) (bvsge (size!5312 (_values!920 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!636231 d!222053))

(declare-fun d!222055 () Bool)

(assert (=> d!222055 (= (isDefined!1424 lt!272052) (not (isEmpty!4663 lt!272052)))))

(declare-fun bs!75635 () Bool)

(assert (= bs!75635 d!222055))

(assert (=> bs!75635 m!906951))

(assert (=> b!636232 d!222055))

(assert (=> b!636227 d!222017))

(declare-fun d!222057 () Bool)

(declare-fun e!387546 () Bool)

(assert (=> d!222057 e!387546))

(declare-fun res!276456 () Bool)

(assert (=> d!222057 (=> res!276456 e!387546)))

(declare-fun lt!272273 () Option!1649)

(assert (=> d!222057 (= res!276456 (isEmpty!4663 lt!272273))))

(declare-fun e!387545 () Option!1649)

(assert (=> d!222057 (= lt!272273 e!387545)))

(declare-fun c!116600 () Bool)

(declare-fun lt!272271 () Option!1649)

(assert (=> d!222057 (= c!116600 ((_ is Some!1648) lt!272271))))

(assert (=> d!222057 (= lt!272271 (append!204 (v!16850 (_1!3971 lt!272041)) (v!16850 lt!272051)))))

(assert (=> d!222057 (usesJsonRules!0 (v!16850 lt!272051))))

(assert (=> d!222057 (= (encloseInSep!0 (v!16850 lt!272051) (v!16850 (_1!3971 lt!272041)) (v!16850 (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041))))) lt!272273)))

(declare-fun b!636456 () Bool)

(declare-fun lt!272272 () Option!1649)

(assert (=> b!636456 (= e!387545 (ite ((_ is Some!1648) lt!272272) lt!272272 None!1648))))

(assert (=> b!636456 (= lt!272272 (append!204 (v!16850 lt!272271) (v!16850 (_1!3971 (createRightBracketSeparator!0 (_2!3971 lt!272041) (_3!303 lt!272041))))))))

(declare-fun b!636457 () Bool)

(assert (=> b!636457 (= e!387545 None!1648)))

(declare-fun b!636458 () Bool)

(assert (=> b!636458 (= e!387546 (usesJsonRules!0 (get!2471 lt!272273)))))

(assert (= (and d!222057 c!116600) b!636456))

(assert (= (and d!222057 (not c!116600)) b!636457))

(assert (= (and d!222057 (not res!276456)) b!636458))

(declare-fun m!907327 () Bool)

(assert (=> d!222057 m!907327))

(declare-fun m!907329 () Bool)

(assert (=> d!222057 m!907329))

(declare-fun m!907331 () Bool)

(assert (=> d!222057 m!907331))

(declare-fun m!907333 () Bool)

(assert (=> b!636456 m!907333))

(declare-fun m!907335 () Bool)

(assert (=> b!636458 m!907335))

(assert (=> b!636458 m!907335))

(declare-fun m!907337 () Bool)

(assert (=> b!636458 m!907337))

(assert (=> b!636247 d!222057))

(assert (=> b!636247 d!222017))

(declare-fun d!222059 () Bool)

(declare-fun e!387549 () Bool)

(assert (=> d!222059 e!387549))

(declare-fun res!276459 () Bool)

(assert (=> d!222059 (=> (not res!276459) (not e!387549))))

(declare-fun lt!272278 () BalanceConc!4550)

(declare-fun list!2867 (BalanceConc!4552) List!6782)

(declare-datatypes ((tuple2!7338 0))(
  ( (tuple2!7339 (_1!3975 BalanceConc!4552) (_2!3975 BalanceConc!4550)) )
))
(declare-fun lex!576 (LexerInterface!1246 List!6778 BalanceConc!4550) tuple2!7338)

(assert (=> d!222059 (= res!276459 (= (list!2867 (_1!3975 (lex!576 Lexer!1244 (rules!8185 (v!16850 lt!272042)) lt!272278))) (list!2867 (tokens!1193 (v!16850 lt!272042)))))))

(declare-fun print!496 (LexerInterface!1246 BalanceConc!4552) BalanceConc!4550)

(assert (=> d!222059 (= lt!272278 (print!496 Lexer!1244 (tokens!1193 (v!16850 lt!272042))))))

(declare-fun lt!272279 () Unit!11806)

(declare-fun theoremInvertabilityWhenTokenListSeparable!2 (LexerInterface!1246 List!6778 List!6782) Unit!11806)

(assert (=> d!222059 (= lt!272279 (theoremInvertabilityWhenTokenListSeparable!2 Lexer!1244 (rules!8185 (v!16850 lt!272042)) (list!2867 (tokens!1193 (v!16850 lt!272042)))))))

(assert (=> d!222059 (= (print!495 (v!16850 lt!272042)) lt!272278)))

(declare-fun b!636461 () Bool)

(declare-fun isEmpty!4667 (List!6777) Bool)

(declare-fun list!2868 (BalanceConc!4550) List!6777)

(assert (=> b!636461 (= e!387549 (isEmpty!4667 (list!2868 (_2!3975 (lex!576 Lexer!1244 (rules!8185 (v!16850 lt!272042)) lt!272278)))))))

(assert (= (and d!222059 res!276459) b!636461))

(declare-fun m!907339 () Bool)

(assert (=> d!222059 m!907339))

(declare-fun m!907341 () Bool)

(assert (=> d!222059 m!907341))

(declare-fun m!907343 () Bool)

(assert (=> d!222059 m!907343))

(declare-fun m!907345 () Bool)

(assert (=> d!222059 m!907345))

(declare-fun m!907347 () Bool)

(assert (=> d!222059 m!907347))

(assert (=> d!222059 m!907343))

(assert (=> b!636461 m!907347))

(declare-fun m!907349 () Bool)

(assert (=> b!636461 m!907349))

(assert (=> b!636461 m!907349))

(declare-fun m!907351 () Bool)

(assert (=> b!636461 m!907351))

(assert (=> b!636234 d!222059))

(declare-fun d!222061 () Bool)

(declare-fun res!276462 () Bool)

(declare-fun e!387552 () Bool)

(assert (=> d!222061 (=> (not res!276462) (not e!387552))))

(declare-fun rulesValid!503 (LexerInterface!1246 List!6778) Bool)

(assert (=> d!222061 (= res!276462 (rulesValid!503 Lexer!1244 lt!272064))))

(assert (=> d!222061 (= (rulesInvariant!1181 Lexer!1244 lt!272064) e!387552)))

(declare-fun b!636464 () Bool)

(declare-datatypes ((List!6786 0))(
  ( (Nil!6772) (Cons!6772 (h!12173 String!8738) (t!84276 List!6786)) )
))
(declare-fun noDuplicateTag!503 (LexerInterface!1246 List!6778 List!6786) Bool)

(assert (=> b!636464 (= e!387552 (noDuplicateTag!503 Lexer!1244 lt!272064 Nil!6772))))

(assert (= (and d!222061 res!276462) b!636464))

(declare-fun m!907353 () Bool)

(assert (=> d!222061 m!907353))

(declare-fun m!907355 () Bool)

(assert (=> b!636464 m!907355))

(assert (=> b!636226 d!222061))

(declare-fun d!222063 () Bool)

(declare-fun isBalanced!598 (Conc!2270) Bool)

(assert (=> d!222063 (= (inv!8615 (tokens!1193 printableTokens!2)) (isBalanced!598 (c!116529 (tokens!1193 printableTokens!2))))))

(declare-fun bs!75636 () Bool)

(assert (= bs!75636 d!222063))

(declare-fun m!907357 () Bool)

(assert (=> bs!75636 m!907357))

(assert (=> b!636244 d!222063))

(declare-fun e!387560 () Bool)

(declare-fun b!636469 () Bool)

(declare-fun tp!198090 () Bool)

(declare-fun setRes!2783 () Bool)

(declare-fun inv!8618 (Context!374) Bool)

(assert (=> b!636469 (= e!387560 (and (inv!8618 (_2!3969 (_1!3970 (h!12168 (zeroValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))))) setRes!2783 tp!198090))))

(declare-fun condSetEmpty!2783 () Bool)

(assert (=> b!636469 (= condSetEmpty!2783 (= (_2!3970 (h!12168 (zeroValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2783 () Bool)

(assert (=> setIsEmpty!2783 setRes!2783))

(declare-fun setNonEmpty!2783 () Bool)

(declare-fun tp!198091 () Bool)

(declare-fun setElem!2783 () Context!374)

(assert (=> setNonEmpty!2783 (= setRes!2783 (and tp!198091 (inv!8618 setElem!2783)))))

(declare-fun setRest!2783 () (InoxSet Context!374))

(assert (=> setNonEmpty!2783 (= (_2!3970 (h!12168 (zeroValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2783 true) setRest!2783))))

(assert (=> b!636241 (= tp!198079 e!387560)))

(assert (= (and b!636469 condSetEmpty!2783) setIsEmpty!2783))

(assert (= (and b!636469 (not condSetEmpty!2783)) setNonEmpty!2783))

(assert (= (and b!636241 ((_ is Cons!6767) (zeroValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))) b!636469))

(declare-fun m!907359 () Bool)

(assert (=> b!636469 m!907359))

(declare-fun m!907361 () Bool)

(assert (=> setNonEmpty!2783 m!907361))

(declare-fun tp!198092 () Bool)

(declare-fun setRes!2784 () Bool)

(declare-fun e!387563 () Bool)

(declare-fun b!636470 () Bool)

(assert (=> b!636470 (= e!387563 (and (inv!8618 (_2!3969 (_1!3970 (h!12168 (minValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))))) setRes!2784 tp!198092))))

(declare-fun condSetEmpty!2784 () Bool)

(assert (=> b!636470 (= condSetEmpty!2784 (= (_2!3970 (h!12168 (minValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2784 () Bool)

(assert (=> setIsEmpty!2784 setRes!2784))

(declare-fun setNonEmpty!2784 () Bool)

(declare-fun tp!198093 () Bool)

(declare-fun setElem!2784 () Context!374)

(assert (=> setNonEmpty!2784 (= setRes!2784 (and tp!198093 (inv!8618 setElem!2784)))))

(declare-fun setRest!2784 () (InoxSet Context!374))

(assert (=> setNonEmpty!2784 (= (_2!3970 (h!12168 (minValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2784 true) setRest!2784))))

(assert (=> b!636241 (= tp!198075 e!387563)))

(assert (= (and b!636470 condSetEmpty!2784) setIsEmpty!2784))

(assert (= (and b!636470 (not condSetEmpty!2784)) setNonEmpty!2784))

(assert (= (and b!636241 ((_ is Cons!6767) (minValue!899 (v!16848 (underlying!1467 (v!16849 (underlying!1468 (cache!1001 cacheDown!364)))))))) b!636470))

(declare-fun m!907363 () Bool)

(assert (=> b!636470 m!907363))

(declare-fun m!907365 () Bool)

(assert (=> setNonEmpty!2784 m!907365))

(declare-fun b!636477 () Bool)

(declare-fun e!387581 () Bool)

(declare-fun setRes!2790 () Bool)

(declare-fun tp!198107 () Bool)

(declare-fun mapValue!2530 () List!6780)

(assert (=> b!636477 (= e!387581 (and (inv!8618 (_1!3967 (_1!3968 (h!12167 mapValue!2530)))) setRes!2790 tp!198107))))

(declare-fun condSetEmpty!2790 () Bool)

(assert (=> b!636477 (= condSetEmpty!2790 (= (_2!3968 (h!12167 mapValue!2530)) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setNonEmpty!2789 () Bool)

(declare-fun setRes!2789 () Bool)

(declare-fun tp!198106 () Bool)

(declare-fun setElem!2789 () Context!374)

(assert (=> setNonEmpty!2789 (= setRes!2789 (and tp!198106 (inv!8618 setElem!2789)))))

(declare-fun mapDefault!2530 () List!6780)

(declare-fun setRest!2790 () (InoxSet Context!374))

(assert (=> setNonEmpty!2789 (= (_2!3968 (h!12167 mapDefault!2530)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2789 true) setRest!2790))))

(declare-fun setIsEmpty!2789 () Bool)

(assert (=> setIsEmpty!2789 setRes!2790))

(declare-fun mapNonEmpty!2530 () Bool)

(declare-fun mapRes!2530 () Bool)

(declare-fun tp!198105 () Bool)

(assert (=> mapNonEmpty!2530 (= mapRes!2530 (and tp!198105 e!387581))))

(declare-fun mapKey!2530 () (_ BitVec 32))

(declare-fun mapRest!2530 () (Array (_ BitVec 32) List!6780))

(assert (=> mapNonEmpty!2530 (= mapRest!2526 (store mapRest!2530 mapKey!2530 mapValue!2530))))

(declare-fun mapIsEmpty!2530 () Bool)

(assert (=> mapIsEmpty!2530 mapRes!2530))

(declare-fun condMapEmpty!2530 () Bool)

(assert (=> mapNonEmpty!2526 (= condMapEmpty!2530 (= mapRest!2526 ((as const (Array (_ BitVec 32) List!6780)) mapDefault!2530)))))

(declare-fun e!387580 () Bool)

(assert (=> mapNonEmpty!2526 (= tp!198074 (and e!387580 mapRes!2530))))

(declare-fun tp!198104 () Bool)

(declare-fun b!636478 () Bool)

(assert (=> b!636478 (= e!387580 (and (inv!8618 (_1!3967 (_1!3968 (h!12167 mapDefault!2530)))) setRes!2789 tp!198104))))

(declare-fun condSetEmpty!2789 () Bool)

(assert (=> b!636478 (= condSetEmpty!2789 (= (_2!3968 (h!12167 mapDefault!2530)) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setNonEmpty!2790 () Bool)

(declare-fun tp!198108 () Bool)

(declare-fun setElem!2790 () Context!374)

(assert (=> setNonEmpty!2790 (= setRes!2790 (and tp!198108 (inv!8618 setElem!2790)))))

(declare-fun setRest!2789 () (InoxSet Context!374))

(assert (=> setNonEmpty!2790 (= (_2!3968 (h!12167 mapValue!2530)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2790 true) setRest!2789))))

(declare-fun setIsEmpty!2790 () Bool)

(assert (=> setIsEmpty!2790 setRes!2789))

(assert (= (and mapNonEmpty!2526 condMapEmpty!2530) mapIsEmpty!2530))

(assert (= (and mapNonEmpty!2526 (not condMapEmpty!2530)) mapNonEmpty!2530))

(assert (= (and b!636477 condSetEmpty!2790) setIsEmpty!2789))

(assert (= (and b!636477 (not condSetEmpty!2790)) setNonEmpty!2790))

(assert (= (and mapNonEmpty!2530 ((_ is Cons!6766) mapValue!2530)) b!636477))

(assert (= (and b!636478 condSetEmpty!2789) setIsEmpty!2790))

(assert (= (and b!636478 (not condSetEmpty!2789)) setNonEmpty!2789))

(assert (= (and mapNonEmpty!2526 ((_ is Cons!6766) mapDefault!2530)) b!636478))

(declare-fun m!907367 () Bool)

(assert (=> setNonEmpty!2789 m!907367))

(declare-fun m!907369 () Bool)

(assert (=> b!636477 m!907369))

(declare-fun m!907371 () Bool)

(assert (=> b!636478 m!907371))

(declare-fun m!907373 () Bool)

(assert (=> mapNonEmpty!2530 m!907373))

(declare-fun m!907375 () Bool)

(assert (=> setNonEmpty!2790 m!907375))

(declare-fun e!387591 () Bool)

(declare-fun b!636483 () Bool)

(declare-fun setRes!2793 () Bool)

(declare-fun tp!198114 () Bool)

(assert (=> b!636483 (= e!387591 (and (inv!8618 (_1!3967 (_1!3968 (h!12167 mapValue!2526)))) setRes!2793 tp!198114))))

(declare-fun condSetEmpty!2793 () Bool)

(assert (=> b!636483 (= condSetEmpty!2793 (= (_2!3968 (h!12167 mapValue!2526)) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2793 () Bool)

(assert (=> setIsEmpty!2793 setRes!2793))

(declare-fun setNonEmpty!2793 () Bool)

(declare-fun tp!198113 () Bool)

(declare-fun setElem!2793 () Context!374)

(assert (=> setNonEmpty!2793 (= setRes!2793 (and tp!198113 (inv!8618 setElem!2793)))))

(declare-fun setRest!2793 () (InoxSet Context!374))

(assert (=> setNonEmpty!2793 (= (_2!3968 (h!12167 mapValue!2526)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2793 true) setRest!2793))))

(assert (=> mapNonEmpty!2526 (= tp!198082 e!387591)))

(assert (= (and b!636483 condSetEmpty!2793) setIsEmpty!2793))

(assert (= (and b!636483 (not condSetEmpty!2793)) setNonEmpty!2793))

(assert (= (and mapNonEmpty!2526 ((_ is Cons!6766) mapValue!2526)) b!636483))

(declare-fun m!907377 () Bool)

(assert (=> b!636483 m!907377))

(declare-fun m!907379 () Bool)

(assert (=> setNonEmpty!2793 m!907379))

(declare-fun tp!198121 () Bool)

(declare-fun tp!198123 () Bool)

(declare-fun b!636492 () Bool)

(declare-fun e!387597 () Bool)

(assert (=> b!636492 (= e!387597 (and (inv!8611 (left!5402 (c!116529 (tokens!1193 printableTokens!2)))) tp!198123 (inv!8611 (right!5732 (c!116529 (tokens!1193 printableTokens!2)))) tp!198121))))

(declare-fun b!636494 () Bool)

(declare-fun e!387596 () Bool)

(declare-fun tp!198122 () Bool)

(assert (=> b!636494 (= e!387596 tp!198122)))

(declare-fun b!636493 () Bool)

(declare-fun inv!8619 (IArray!4541) Bool)

(assert (=> b!636493 (= e!387597 (and (inv!8619 (xs!4911 (c!116529 (tokens!1193 printableTokens!2)))) e!387596))))

(assert (=> b!636230 (= tp!198072 (and (inv!8611 (c!116529 (tokens!1193 printableTokens!2))) e!387597))))

(assert (= (and b!636230 ((_ is Node!2270) (c!116529 (tokens!1193 printableTokens!2)))) b!636492))

(assert (= b!636493 b!636494))

(assert (= (and b!636230 ((_ is Leaf!3469) (c!116529 (tokens!1193 printableTokens!2)))) b!636493))

(declare-fun m!907381 () Bool)

(assert (=> b!636492 m!907381))

(declare-fun m!907383 () Bool)

(assert (=> b!636492 m!907383))

(declare-fun m!907385 () Bool)

(assert (=> b!636493 m!907385))

(assert (=> b!636230 m!906983))

(declare-fun setRes!2794 () Bool)

(declare-fun tp!198125 () Bool)

(declare-fun e!387600 () Bool)

(declare-fun b!636495 () Bool)

(assert (=> b!636495 (= e!387600 (and (inv!8618 (_1!3967 (_1!3968 (h!12167 (zeroValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))))) setRes!2794 tp!198125))))

(declare-fun condSetEmpty!2794 () Bool)

(assert (=> b!636495 (= condSetEmpty!2794 (= (_2!3968 (h!12167 (zeroValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2794 () Bool)

(assert (=> setIsEmpty!2794 setRes!2794))

(declare-fun setNonEmpty!2794 () Bool)

(declare-fun tp!198124 () Bool)

(declare-fun setElem!2794 () Context!374)

(assert (=> setNonEmpty!2794 (= setRes!2794 (and tp!198124 (inv!8618 setElem!2794)))))

(declare-fun setRest!2794 () (InoxSet Context!374))

(assert (=> setNonEmpty!2794 (= (_2!3968 (h!12167 (zeroValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2794 true) setRest!2794))))

(assert (=> b!636231 (= tp!198083 e!387600)))

(assert (= (and b!636495 condSetEmpty!2794) setIsEmpty!2794))

(assert (= (and b!636495 (not condSetEmpty!2794)) setNonEmpty!2794))

(assert (= (and b!636231 ((_ is Cons!6766) (zeroValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))) b!636495))

(declare-fun m!907387 () Bool)

(assert (=> b!636495 m!907387))

(declare-fun m!907389 () Bool)

(assert (=> setNonEmpty!2794 m!907389))

(declare-fun e!387603 () Bool)

(declare-fun tp!198127 () Bool)

(declare-fun setRes!2795 () Bool)

(declare-fun b!636496 () Bool)

(assert (=> b!636496 (= e!387603 (and (inv!8618 (_1!3967 (_1!3968 (h!12167 (minValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))))) setRes!2795 tp!198127))))

(declare-fun condSetEmpty!2795 () Bool)

(assert (=> b!636496 (= condSetEmpty!2795 (= (_2!3968 (h!12167 (minValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2795 () Bool)

(assert (=> setIsEmpty!2795 setRes!2795))

(declare-fun setNonEmpty!2795 () Bool)

(declare-fun tp!198126 () Bool)

(declare-fun setElem!2795 () Context!374)

(assert (=> setNonEmpty!2795 (= setRes!2795 (and tp!198126 (inv!8618 setElem!2795)))))

(declare-fun setRest!2795 () (InoxSet Context!374))

(assert (=> setNonEmpty!2795 (= (_2!3968 (h!12167 (minValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2795 true) setRest!2795))))

(assert (=> b!636231 (= tp!198085 e!387603)))

(assert (= (and b!636496 condSetEmpty!2795) setIsEmpty!2795))

(assert (= (and b!636496 (not condSetEmpty!2795)) setNonEmpty!2795))

(assert (= (and b!636231 ((_ is Cons!6766) (minValue!898 (v!16846 (underlying!1465 (v!16847 (underlying!1466 (cache!1000 cacheUp!351)))))))) b!636496))

(declare-fun m!907391 () Bool)

(assert (=> b!636496 m!907391))

(declare-fun m!907393 () Bool)

(assert (=> setNonEmpty!2795 m!907393))

(declare-fun b!636497 () Bool)

(declare-fun setRes!2796 () Bool)

(declare-fun tp!198128 () Bool)

(declare-fun e!387605 () Bool)

(assert (=> b!636497 (= e!387605 (and (inv!8618 (_2!3969 (_1!3970 (h!12168 mapDefault!2527)))) setRes!2796 tp!198128))))

(declare-fun condSetEmpty!2796 () Bool)

(assert (=> b!636497 (= condSetEmpty!2796 (= (_2!3970 (h!12168 mapDefault!2527)) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2796 () Bool)

(assert (=> setIsEmpty!2796 setRes!2796))

(declare-fun setNonEmpty!2796 () Bool)

(declare-fun tp!198129 () Bool)

(declare-fun setElem!2796 () Context!374)

(assert (=> setNonEmpty!2796 (= setRes!2796 (and tp!198129 (inv!8618 setElem!2796)))))

(declare-fun setRest!2796 () (InoxSet Context!374))

(assert (=> setNonEmpty!2796 (= (_2!3970 (h!12168 mapDefault!2527)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2796 true) setRest!2796))))

(assert (=> b!636237 (= tp!198071 e!387605)))

(assert (= (and b!636497 condSetEmpty!2796) setIsEmpty!2796))

(assert (= (and b!636497 (not condSetEmpty!2796)) setNonEmpty!2796))

(assert (= (and b!636237 ((_ is Cons!6767) mapDefault!2527)) b!636497))

(declare-fun m!907395 () Bool)

(assert (=> b!636497 m!907395))

(declare-fun m!907397 () Bool)

(assert (=> setNonEmpty!2796 m!907397))

(declare-fun setNonEmpty!2801 () Bool)

(declare-fun setRes!2801 () Bool)

(declare-fun tp!198140 () Bool)

(declare-fun setElem!2802 () Context!374)

(assert (=> setNonEmpty!2801 (= setRes!2801 (and tp!198140 (inv!8618 setElem!2802)))))

(declare-fun mapDefault!2533 () List!6781)

(declare-fun setRest!2801 () (InoxSet Context!374))

(assert (=> setNonEmpty!2801 (= (_2!3970 (h!12168 mapDefault!2533)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2802 true) setRest!2801))))

(declare-fun mapIsEmpty!2533 () Bool)

(declare-fun mapRes!2533 () Bool)

(assert (=> mapIsEmpty!2533 mapRes!2533))

(declare-fun setNonEmpty!2802 () Bool)

(declare-fun setRes!2802 () Bool)

(declare-fun tp!198142 () Bool)

(declare-fun setElem!2801 () Context!374)

(assert (=> setNonEmpty!2802 (= setRes!2802 (and tp!198142 (inv!8618 setElem!2801)))))

(declare-fun mapValue!2533 () List!6781)

(declare-fun setRest!2802 () (InoxSet Context!374))

(assert (=> setNonEmpty!2802 (= (_2!3970 (h!12168 mapValue!2533)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2801 true) setRest!2802))))

(declare-fun setIsEmpty!2801 () Bool)

(assert (=> setIsEmpty!2801 setRes!2802))

(declare-fun setIsEmpty!2802 () Bool)

(assert (=> setIsEmpty!2802 setRes!2801))

(declare-fun mapNonEmpty!2533 () Bool)

(declare-fun tp!198141 () Bool)

(declare-fun e!387619 () Bool)

(assert (=> mapNonEmpty!2533 (= mapRes!2533 (and tp!198141 e!387619))))

(declare-fun mapKey!2533 () (_ BitVec 32))

(declare-fun mapRest!2533 () (Array (_ BitVec 32) List!6781))

(assert (=> mapNonEmpty!2533 (= mapRest!2527 (store mapRest!2533 mapKey!2533 mapValue!2533))))

(declare-fun tp!198143 () Bool)

(declare-fun e!387620 () Bool)

(declare-fun b!636504 () Bool)

(assert (=> b!636504 (= e!387620 (and (inv!8618 (_2!3969 (_1!3970 (h!12168 mapDefault!2533)))) setRes!2801 tp!198143))))

(declare-fun condSetEmpty!2802 () Bool)

(assert (=> b!636504 (= condSetEmpty!2802 (= (_2!3970 (h!12168 mapDefault!2533)) ((as const (Array Context!374 Bool)) false)))))

(declare-fun condMapEmpty!2533 () Bool)

(assert (=> mapNonEmpty!2527 (= condMapEmpty!2533 (= mapRest!2527 ((as const (Array (_ BitVec 32) List!6781)) mapDefault!2533)))))

(assert (=> mapNonEmpty!2527 (= tp!198080 (and e!387620 mapRes!2533))))

(declare-fun tp!198144 () Bool)

(declare-fun b!636505 () Bool)

(assert (=> b!636505 (= e!387619 (and (inv!8618 (_2!3969 (_1!3970 (h!12168 mapValue!2533)))) setRes!2802 tp!198144))))

(declare-fun condSetEmpty!2801 () Bool)

(assert (=> b!636505 (= condSetEmpty!2801 (= (_2!3970 (h!12168 mapValue!2533)) ((as const (Array Context!374 Bool)) false)))))

(assert (= (and mapNonEmpty!2527 condMapEmpty!2533) mapIsEmpty!2533))

(assert (= (and mapNonEmpty!2527 (not condMapEmpty!2533)) mapNonEmpty!2533))

(assert (= (and b!636505 condSetEmpty!2801) setIsEmpty!2801))

(assert (= (and b!636505 (not condSetEmpty!2801)) setNonEmpty!2802))

(assert (= (and mapNonEmpty!2533 ((_ is Cons!6767) mapValue!2533)) b!636505))

(assert (= (and b!636504 condSetEmpty!2802) setIsEmpty!2802))

(assert (= (and b!636504 (not condSetEmpty!2802)) setNonEmpty!2801))

(assert (= (and mapNonEmpty!2527 ((_ is Cons!6767) mapDefault!2533)) b!636504))

(declare-fun m!907399 () Bool)

(assert (=> setNonEmpty!2802 m!907399))

(declare-fun m!907401 () Bool)

(assert (=> b!636505 m!907401))

(declare-fun m!907403 () Bool)

(assert (=> mapNonEmpty!2533 m!907403))

(declare-fun m!907405 () Bool)

(assert (=> setNonEmpty!2801 m!907405))

(declare-fun m!907407 () Bool)

(assert (=> b!636504 m!907407))

(declare-fun b!636506 () Bool)

(declare-fun tp!198145 () Bool)

(declare-fun setRes!2803 () Bool)

(declare-fun e!387626 () Bool)

(assert (=> b!636506 (= e!387626 (and (inv!8618 (_2!3969 (_1!3970 (h!12168 mapValue!2527)))) setRes!2803 tp!198145))))

(declare-fun condSetEmpty!2803 () Bool)

(assert (=> b!636506 (= condSetEmpty!2803 (= (_2!3970 (h!12168 mapValue!2527)) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2803 () Bool)

(assert (=> setIsEmpty!2803 setRes!2803))

(declare-fun setNonEmpty!2803 () Bool)

(declare-fun tp!198146 () Bool)

(declare-fun setElem!2803 () Context!374)

(assert (=> setNonEmpty!2803 (= setRes!2803 (and tp!198146 (inv!8618 setElem!2803)))))

(declare-fun setRest!2803 () (InoxSet Context!374))

(assert (=> setNonEmpty!2803 (= (_2!3970 (h!12168 mapValue!2527)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2803 true) setRest!2803))))

(assert (=> mapNonEmpty!2527 (= tp!198078 e!387626)))

(assert (= (and b!636506 condSetEmpty!2803) setIsEmpty!2803))

(assert (= (and b!636506 (not condSetEmpty!2803)) setNonEmpty!2803))

(assert (= (and mapNonEmpty!2527 ((_ is Cons!6767) mapValue!2527)) b!636506))

(declare-fun m!907409 () Bool)

(assert (=> b!636506 m!907409))

(declare-fun m!907411 () Bool)

(assert (=> setNonEmpty!2803 m!907411))

(declare-fun b!636507 () Bool)

(declare-fun e!387630 () Bool)

(declare-fun setRes!2804 () Bool)

(declare-fun tp!198148 () Bool)

(assert (=> b!636507 (= e!387630 (and (inv!8618 (_1!3967 (_1!3968 (h!12167 mapDefault!2526)))) setRes!2804 tp!198148))))

(declare-fun condSetEmpty!2804 () Bool)

(assert (=> b!636507 (= condSetEmpty!2804 (= (_2!3968 (h!12167 mapDefault!2526)) ((as const (Array Context!374 Bool)) false)))))

(declare-fun setIsEmpty!2804 () Bool)

(assert (=> setIsEmpty!2804 setRes!2804))

(declare-fun setNonEmpty!2804 () Bool)

(declare-fun tp!198147 () Bool)

(declare-fun setElem!2804 () Context!374)

(assert (=> setNonEmpty!2804 (= setRes!2804 (and tp!198147 (inv!8618 setElem!2804)))))

(declare-fun setRest!2804 () (InoxSet Context!374))

(assert (=> setNonEmpty!2804 (= (_2!3968 (h!12167 mapDefault!2526)) ((_ map or) (store ((as const (Array Context!374 Bool)) false) setElem!2804 true) setRest!2804))))

(assert (=> b!636253 (= tp!198076 e!387630)))

(assert (= (and b!636507 condSetEmpty!2804) setIsEmpty!2804))

(assert (= (and b!636507 (not condSetEmpty!2804)) setNonEmpty!2804))

(assert (= (and b!636253 ((_ is Cons!6766) mapDefault!2526)) b!636507))

(declare-fun m!907413 () Bool)

(assert (=> b!636507 m!907413))

(declare-fun m!907415 () Bool)

(assert (=> setNonEmpty!2804 m!907415))

(declare-fun b!636518 () Bool)

(declare-fun b_free!18677 () Bool)

(declare-fun b_next!18701 () Bool)

(assert (=> b!636518 (= b_free!18677 (not b_next!18701))))

(declare-fun tp!198156 () Bool)

(declare-fun b_and!62471 () Bool)

(assert (=> b!636518 (= tp!198156 b_and!62471)))

(declare-fun b_free!18679 () Bool)

(declare-fun b_next!18703 () Bool)

(assert (=> b!636518 (= b_free!18679 (not b_next!18703))))

(declare-fun tp!198155 () Bool)

(declare-fun b_and!62473 () Bool)

(assert (=> b!636518 (= tp!198155 b_and!62473)))

(declare-fun e!387641 () Bool)

(assert (=> b!636518 (= e!387641 (and tp!198156 tp!198155))))

(declare-fun b!636517 () Bool)

(declare-fun e!387640 () Bool)

(declare-fun inv!8608 (String!8738) Bool)

(declare-fun inv!8620 (TokenValueInjection!2552) Bool)

(assert (=> b!636517 (= e!387640 (and (inv!8608 (tag!1628 (h!12165 (rules!8185 printableTokens!2)))) (inv!8620 (transformation!1366 (h!12165 (rules!8185 printableTokens!2)))) e!387641))))

(declare-fun b!636516 () Bool)

(declare-fun e!387639 () Bool)

(declare-fun tp!198157 () Bool)

(assert (=> b!636516 (= e!387639 (and e!387640 tp!198157))))

(assert (=> b!636244 (= tp!198081 e!387639)))

(assert (= b!636517 b!636518))

(assert (= b!636516 b!636517))

(assert (= (and b!636244 ((_ is Cons!6764) (rules!8185 printableTokens!2))) b!636516))

(declare-fun m!907417 () Bool)

(assert (=> b!636517 m!907417))

(declare-fun m!907419 () Bool)

(assert (=> b!636517 m!907419))

(check-sat (not b!636456) (not b!636272) (not b!636370) (not d!222029) (not d!222063) (not d!222061) (not d!222007) (not b!636494) (not setNonEmpty!2803) (not b!636517) (not b_next!18697) (not setNonEmpty!2789) (not b!636333) (not b!636332) (not b!636399) (not b!636271) (not b!636496) b_and!62467 (not setNonEmpty!2790) (not bm!41601) (not b!636277) (not d!222049) (not mapNonEmpty!2533) (not d!222045) b_and!62463 (not d!222005) (not b!636477) (not d!222017) (not b!636378) (not b!636493) (not b!636388) (not b!636478) b_and!62471 (not b!636505) (not b!636331) (not b!636230) (not b!636306) (not b!636297) (not setNonEmpty!2784) (not d!222055) (not b!636350) (not b!636274) (not d!222019) (not setNonEmpty!2795) (not b!636416) (not b!636516) (not d!222059) (not mapNonEmpty!2530) (not b!636379) (not setNonEmpty!2794) (not b!636401) (not b!636470) (not b!636270) b_and!62473 (not d!222021) (not bm!41616) (not b_next!18695) (not d!222033) (not d!222037) (not b!636354) (not b!636363) (not bm!41614) (not b_next!18699) (not d!222009) b_and!62465 (not b!636414) (not b!636349) (not b!636469) (not setNonEmpty!2793) (not b!636407) (not b_next!18701) (not b!636495) (not setNonEmpty!2796) (not b!636443) (not b!636492) (not d!222023) (not b!636449) (not d!222001) (not setNonEmpty!2783) (not bm!41604) (not b!636400) (not b!636351) (not b!636362) (not b!636340) (not b!636507) (not b!636303) (not b!636338) (not b!636336) (not d!222013) (not b!636341) (not b!636353) (not d!222057) (not d!222015) (not b_next!18703) (not b!636483) (not b!636458) (not d!222003) (not b!636404) (not d!222035) b_and!62469 (not setNonEmpty!2804) (not bm!41613) (not b!636464) (not b_next!18693) (not b!636441) (not b!636387) (not b!636352) (not d!222025) (not setNonEmpty!2801) (not b!636461) (not bm!41615) (not b!636291) (not d!222011) (not b!636497) (not setNonEmpty!2802) (not d!221999) (not d!222047) (not b!636504) (not b!636506))
(check-sat (not b_next!18697) b_and!62467 b_and!62463 b_and!62471 b_and!62473 (not b_next!18695) (not b_next!18699) b_and!62465 (not b_next!18701) (not b_next!18703) b_and!62469 (not b_next!18693))
