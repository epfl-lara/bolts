; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62438 () Bool)

(assert start!62438)

(declare-fun b!637314 () Bool)

(declare-fun b_free!18725 () Bool)

(declare-fun b_next!18749 () Bool)

(assert (=> b!637314 (= b_free!18725 (not b_next!18749))))

(declare-fun tp!198506 () Bool)

(declare-fun b_and!62519 () Bool)

(assert (=> b!637314 (= tp!198506 b_and!62519)))

(declare-fun b!637306 () Bool)

(declare-fun b_free!18727 () Bool)

(declare-fun b_next!18751 () Bool)

(assert (=> b!637306 (= b_free!18727 (not b_next!18751))))

(declare-fun tp!198512 () Bool)

(declare-fun b_and!62521 () Bool)

(assert (=> b!637306 (= tp!198512 b_and!62521)))

(declare-fun b!637326 () Bool)

(declare-fun b_free!18729 () Bool)

(declare-fun b_next!18753 () Bool)

(assert (=> b!637326 (= b_free!18729 (not b_next!18753))))

(declare-fun tp!198508 () Bool)

(declare-fun b_and!62523 () Bool)

(assert (=> b!637326 (= tp!198508 b_and!62523)))

(declare-fun b!637327 () Bool)

(declare-fun b_free!18731 () Bool)

(declare-fun b_next!18755 () Bool)

(assert (=> b!637327 (= b_free!18731 (not b_next!18755))))

(declare-fun tp!198517 () Bool)

(declare-fun b_and!62525 () Bool)

(assert (=> b!637327 (= tp!198517 b_and!62525)))

(declare-fun b!637299 () Bool)

(declare-datatypes ((List!6827 0))(
  ( (Nil!6813) (Cons!6813 (h!12214 (_ BitVec 16)) (t!84501 List!6827)) )
))
(declare-datatypes ((TokenValue!1406 0))(
  ( (FloatLiteralValue!2812 (text!10287 List!6827)) (TokenValueExt!1405 (__x!4843 Int)) (Broken!7030 (value!44227 List!6827)) (Object!1419) (End!1406) (Def!1406) (Underscore!1406) (Match!1406) (Else!1406) (Error!1406) (Case!1406) (If!1406) (Extends!1406) (Abstract!1406) (Class!1406) (Val!1406) (DelimiterValue!2812 (del!1466 List!6827)) (KeywordValue!1412 (value!44228 List!6827)) (CommentValue!2812 (value!44229 List!6827)) (WhitespaceValue!2812 (value!44230 List!6827)) (IndentationValue!1406 (value!44231 List!6827)) (String!8767) (Int32!1406) (Broken!7031 (value!44232 List!6827)) (Boolean!1407) (Unit!11835) (OperatorValue!1409 (op!1466 List!6827)) (IdentifierValue!2812 (value!44233 List!6827)) (IdentifierValue!2813 (value!44234 List!6827)) (WhitespaceValue!2813 (value!44235 List!6827)) (True!2812) (False!2812) (Broken!7032 (value!44236 List!6827)) (Broken!7033 (value!44237 List!6827)) (True!2813) (RightBrace!1406) (RightBracket!1406) (Colon!1406) (Null!1406) (Comma!1406) (LeftBracket!1406) (False!2813) (LeftBrace!1406) (ImaginaryLiteralValue!1406 (text!10288 List!6827)) (StringLiteralValue!4218 (value!44238 List!6827)) (EOFValue!1406 (value!44239 List!6827)) (IdentValue!1406 (value!44240 List!6827)) (DelimiterValue!2813 (value!44241 List!6827)) (DedentValue!1406 (value!44242 List!6827)) (NewLineValue!1406 (value!44243 List!6827)) (IntegerValue!4218 (value!44244 (_ BitVec 32)) (text!10289 List!6827)) (IntegerValue!4219 (value!44245 Int) (text!10290 List!6827)) (Times!1406) (Or!1406) (Equal!1406) (Minus!1406) (Broken!7034 (value!44246 List!6827)) (And!1406) (Div!1406) (LessEqual!1406) (Mod!1406) (Concat!3113) (Not!1406) (Plus!1406) (SpaceValue!1406 (value!44247 List!6827)) (IntegerValue!4220 (value!44248 Int) (text!10291 List!6827)) (StringLiteralValue!4219 (text!10292 List!6827)) (FloatLiteralValue!2813 (text!10293 List!6827)) (BytesLiteralValue!1406 (value!44249 List!6827)) (CommentValue!2813 (value!44250 List!6827)) (StringLiteralValue!4220 (value!44251 List!6827)) (ErrorTokenValue!1406 (msg!1467 List!6827)) )
))
(declare-datatypes ((Regex!1707 0))(
  ( (ElementMatch!1707 (c!116752 (_ BitVec 16))) (Concat!3114 (regOne!3926 Regex!1707) (regTwo!3926 Regex!1707)) (EmptyExpr!1707) (Star!1707 (reg!2036 Regex!1707)) (EmptyLang!1707) (Union!1707 (regOne!3927 Regex!1707) (regTwo!3927 Regex!1707)) )
))
(declare-datatypes ((String!8768 0))(
  ( (String!8769 (value!44252 String)) )
))
(declare-datatypes ((IArray!4587 0))(
  ( (IArray!4588 (innerList!2351 List!6827)) )
))
(declare-datatypes ((Conc!2293 0))(
  ( (Node!2293 (left!5432 Conc!2293) (right!5762 Conc!2293) (csize!4816 Int) (cheight!2504 Int)) (Leaf!3495 (xs!4934 IArray!4587) (csize!4817 Int)) (Empty!2293) )
))
(declare-datatypes ((BalanceConc!4598 0))(
  ( (BalanceConc!4599 (c!116753 Conc!2293)) )
))
(declare-datatypes ((TokenValueInjection!2564 0))(
  ( (TokenValueInjection!2565 (toValue!2313 Int) (toChars!2172 Int)) )
))
(declare-datatypes ((Rule!2544 0))(
  ( (Rule!2545 (regex!1372 Regex!1707) (tag!1634 String!8768) (isSeparator!1372 Bool) (transformation!1372 TokenValueInjection!2564)) )
))
(declare-datatypes ((Token!2466 0))(
  ( (Token!2467 (value!44253 TokenValue!1406) (rule!2167 Rule!2544) (size!5354 Int) (originalCharacters!1404 List!6827)) )
))
(declare-datatypes ((List!6828 0))(
  ( (Nil!6814) (Cons!6814 (h!12215 Token!2466) (t!84502 List!6828)) )
))
(declare-datatypes ((IArray!4589 0))(
  ( (IArray!4590 (innerList!2352 List!6828)) )
))
(declare-datatypes ((Conc!2294 0))(
  ( (Node!2294 (left!5433 Conc!2294) (right!5763 Conc!2294) (csize!4818 Int) (cheight!2505 Int)) (Leaf!3496 (xs!4935 IArray!4589) (csize!4819 Int)) (Empty!2294) )
))
(declare-datatypes ((List!6829 0))(
  ( (Nil!6815) (Cons!6815 (h!12216 Rule!2544) (t!84503 List!6829)) )
))
(declare-datatypes ((BalanceConc!4600 0))(
  ( (BalanceConc!4601 (c!116754 Conc!2294)) )
))
(declare-datatypes ((PrintableTokens!124 0))(
  ( (PrintableTokens!125 (rules!8196 List!6829) (tokens!1199 BalanceConc!4600)) )
))
(declare-datatypes ((Option!1655 0))(
  ( (None!1654) (Some!1654 (v!16896 PrintableTokens!124)) )
))
(declare-fun e!388388 () Option!1655)

(assert (=> b!637299 (= e!388388 None!1654)))

(declare-fun b!637300 () Bool)

(declare-fun e!388380 () Bool)

(declare-fun e!388391 () Bool)

(assert (=> b!637300 (= e!388380 e!388391)))

(declare-fun b!637301 () Bool)

(declare-fun e!388383 () Bool)

(declare-fun printableTokens!2 () PrintableTokens!124)

(declare-fun tp!198511 () Bool)

(declare-fun inv!8651 (Conc!2294) Bool)

(assert (=> b!637301 (= e!388383 (and (inv!8651 (c!116754 (tokens!1199 printableTokens!2))) tp!198511))))

(declare-fun mapNonEmpty!2574 () Bool)

(declare-fun mapRes!2575 () Bool)

(declare-fun tp!198502 () Bool)

(declare-fun tp!198516 () Bool)

(assert (=> mapNonEmpty!2574 (= mapRes!2575 (and tp!198502 tp!198516))))

(declare-datatypes ((List!6830 0))(
  ( (Nil!6816) (Cons!6816 (h!12217 Regex!1707) (t!84504 List!6830)) )
))
(declare-datatypes ((Context!386 0))(
  ( (Context!387 (exprs!693 List!6830)) )
))
(declare-datatypes ((tuple2!7382 0))(
  ( (tuple2!7383 (_1!4010 Context!386) (_2!4010 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7384 0))(
  ( (tuple2!7385 (_1!4011 tuple2!7382) (_2!4011 (InoxSet Context!386))) )
))
(declare-datatypes ((List!6831 0))(
  ( (Nil!6817) (Cons!6817 (h!12218 tuple2!7384) (t!84505 List!6831)) )
))
(declare-fun mapRest!2575 () (Array (_ BitVec 32) List!6831))

(declare-fun mapValue!2575 () List!6831)

(declare-datatypes ((Hashable!625 0))(
  ( (HashableExt!624 (__x!4844 Int)) )
))
(declare-datatypes ((array!2489 0))(
  ( (array!2490 (arr!1132 (Array (_ BitVec 32) List!6831)) (size!5355 (_ BitVec 32))) )
))
(declare-datatypes ((array!2491 0))(
  ( (array!2492 (arr!1133 (Array (_ BitVec 32) (_ BitVec 64))) (size!5356 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1306 0))(
  ( (LongMapFixedSize!1307 (defaultEntry!1009 Int) (mask!2386 (_ BitVec 32)) (extraKeys!900 (_ BitVec 32)) (zeroValue!910 List!6831) (minValue!910 List!6831) (_size!1415 (_ BitVec 32)) (_keys!947 array!2491) (_values!932 array!2489) (_vacant!714 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2553 0))(
  ( (Cell!2554 (v!16897 LongMapFixedSize!1306)) )
))
(declare-datatypes ((MutLongMap!653 0))(
  ( (LongMap!653 (underlying!1489 Cell!2553)) (MutLongMapExt!652 (__x!4845 Int)) )
))
(declare-datatypes ((Cell!2555 0))(
  ( (Cell!2556 (v!16898 MutLongMap!653)) )
))
(declare-datatypes ((MutableMap!625 0))(
  ( (MutableMapExt!624 (__x!4846 Int)) (HashMap!625 (underlying!1490 Cell!2555) (hashF!2533 Hashable!625) (_size!1416 (_ BitVec 32)) (defaultValue!776 Int)) )
))
(declare-datatypes ((CacheUp!286 0))(
  ( (CacheUp!287 (cache!1012 MutableMap!625)) )
))
(declare-fun cacheUp!351 () CacheUp!286)

(declare-fun mapKey!2574 () (_ BitVec 32))

(assert (=> mapNonEmpty!2574 (= (arr!1132 (_values!932 (v!16897 (underlying!1489 (v!16898 (underlying!1490 (cache!1012 cacheUp!351))))))) (store mapRest!2575 mapKey!2574 mapValue!2575))))

(declare-fun b!637302 () Bool)

(declare-fun e!388392 () Bool)

(declare-fun lt!273071 () MutLongMap!653)

(get-info :version)

(assert (=> b!637302 (= e!388392 (and e!388380 ((_ is LongMap!653) lt!273071)))))

(assert (=> b!637302 (= lt!273071 (v!16898 (underlying!1490 (cache!1012 cacheUp!351))))))

(declare-fun b!637303 () Bool)

(declare-fun e!388382 () Option!1655)

(assert (=> b!637303 (= e!388382 None!1654)))

(declare-fun b!637304 () Bool)

(declare-fun e!388381 () Bool)

(declare-fun tp!198507 () Bool)

(assert (=> b!637304 (= e!388381 (and tp!198507 mapRes!2575))))

(declare-fun condMapEmpty!2574 () Bool)

(declare-fun mapDefault!2574 () List!6831)

(assert (=> b!637304 (= condMapEmpty!2574 (= (arr!1132 (_values!932 (v!16897 (underlying!1489 (v!16898 (underlying!1490 (cache!1012 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6831)) mapDefault!2574)))))

(declare-fun b!637305 () Bool)

(declare-fun e!388393 () Bool)

(declare-fun e!388377 () Bool)

(assert (=> b!637305 (= e!388393 e!388377)))

(declare-fun mapIsEmpty!2574 () Bool)

(assert (=> mapIsEmpty!2574 mapRes!2575))

(declare-fun e!388390 () Bool)

(assert (=> b!637306 (= e!388390 (and e!388392 tp!198512))))

(declare-fun b!637307 () Bool)

(declare-fun lt!273068 () Option!1655)

(assert (=> b!637307 (= e!388388 lt!273068)))

(declare-fun lt!273073 () BalanceConc!4598)

(declare-fun print!502 (PrintableTokens!124) BalanceConc!4598)

(assert (=> b!637307 (= lt!273073 (print!502 (v!16896 lt!273068)))))

(declare-fun b!637309 () Bool)

(declare-fun res!276664 () Bool)

(declare-fun e!388373 () Bool)

(assert (=> b!637309 (=> (not res!276664) (not e!388373))))

(declare-datatypes ((tuple3!536 0))(
  ( (tuple3!537 (_1!4012 Regex!1707) (_2!4012 Context!386) (_3!319 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7386 0))(
  ( (tuple2!7387 (_1!4013 tuple3!536) (_2!4013 (InoxSet Context!386))) )
))
(declare-datatypes ((List!6832 0))(
  ( (Nil!6818) (Cons!6818 (h!12219 tuple2!7386) (t!84506 List!6832)) )
))
(declare-datatypes ((array!2493 0))(
  ( (array!2494 (arr!1134 (Array (_ BitVec 32) List!6832)) (size!5357 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1308 0))(
  ( (LongMapFixedSize!1309 (defaultEntry!1010 Int) (mask!2387 (_ BitVec 32)) (extraKeys!901 (_ BitVec 32)) (zeroValue!911 List!6832) (minValue!911 List!6832) (_size!1417 (_ BitVec 32)) (_keys!948 array!2491) (_values!933 array!2493) (_vacant!715 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2557 0))(
  ( (Cell!2558 (v!16899 LongMapFixedSize!1308)) )
))
(declare-datatypes ((MutLongMap!654 0))(
  ( (LongMap!654 (underlying!1491 Cell!2557)) (MutLongMapExt!653 (__x!4847 Int)) )
))
(declare-datatypes ((Cell!2559 0))(
  ( (Cell!2560 (v!16900 MutLongMap!654)) )
))
(declare-datatypes ((Hashable!626 0))(
  ( (HashableExt!625 (__x!4848 Int)) )
))
(declare-datatypes ((MutableMap!626 0))(
  ( (MutableMapExt!625 (__x!4849 Int)) (HashMap!626 (underlying!1492 Cell!2559) (hashF!2534 Hashable!626) (_size!1418 (_ BitVec 32)) (defaultValue!777 Int)) )
))
(declare-datatypes ((CacheDown!286 0))(
  ( (CacheDown!287 (cache!1013 MutableMap!626)) )
))
(declare-datatypes ((tuple3!538 0))(
  ( (tuple3!539 (_1!4014 Option!1655) (_2!4014 CacheUp!286) (_3!320 CacheDown!286)) )
))
(declare-fun lt!273058 () tuple3!538)

(assert (=> b!637309 (= res!276664 ((_ is Some!1654) (_1!4014 lt!273058)))))

(declare-fun lt!273079 () Option!1655)

(declare-fun createRightBracketSeparator!0 (CacheUp!286 CacheDown!286) tuple3!538)

(assert (=> b!637309 (= lt!273079 (_1!4014 (createRightBracketSeparator!0 (_2!4014 lt!273058) (_3!320 lt!273058))))))

(declare-fun lt!273061 () Option!1655)

(declare-fun lt!273064 () tuple3!538)

(assert (=> b!637309 (= lt!273061 (_1!4014 lt!273064))))

(declare-fun b!637310 () Bool)

(declare-fun e!388385 () Bool)

(declare-fun e!388376 () Bool)

(assert (=> b!637310 (= e!388385 e!388376)))

(declare-fun res!276665 () Bool)

(assert (=> b!637310 (=> (not res!276665) (not e!388376))))

(declare-fun lt!273065 () List!6829)

(declare-fun isEmpty!4679 (List!6829) Bool)

(assert (=> b!637310 (= res!276665 (not (isEmpty!4679 lt!273065)))))

(declare-datatypes ((JsonLexer!186 0))(
  ( (JsonLexer!187) )
))
(declare-fun rules!109 (JsonLexer!186) List!6829)

(assert (=> b!637310 (= lt!273065 (rules!109 JsonLexer!187))))

(declare-fun b!637311 () Bool)

(declare-fun res!276659 () Bool)

(assert (=> b!637311 (=> (not res!276659) (not e!388376))))

(declare-fun usesJsonRules!0 (PrintableTokens!124) Bool)

(assert (=> b!637311 (= res!276659 (usesJsonRules!0 printableTokens!2))))

(declare-fun b!637312 () Bool)

(declare-fun c!116750 () Bool)

(assert (=> b!637312 (= c!116750 ((_ is Some!1654) lt!273068))))

(declare-fun lt!273059 () Option!1655)

(declare-fun encloseInSep!0 (PrintableTokens!124 PrintableTokens!124 PrintableTokens!124) Option!1655)

(assert (=> b!637312 (= lt!273068 (encloseInSep!0 (v!16896 lt!273059) (v!16896 (_1!4014 lt!273058)) (v!16896 (_1!4014 (createRightBracketSeparator!0 (_2!4014 lt!273058) (_3!320 lt!273058))))))))

(declare-fun lt!273063 () Option!1655)

(assert (=> b!637312 (= lt!273063 (_1!4014 lt!273058))))

(declare-fun lt!273057 () Option!1655)

(assert (=> b!637312 (= lt!273057 (_1!4014 lt!273064))))

(declare-fun lt!273062 () Option!1655)

(assert (=> b!637312 (= lt!273062 (_1!4014 (createRightBracketSeparator!0 (_2!4014 lt!273058) (_3!320 lt!273058))))))

(declare-fun lt!273069 () Option!1655)

(assert (=> b!637312 (= lt!273069 (_1!4014 lt!273064))))

(declare-fun e!388384 () Option!1655)

(assert (=> b!637312 (= e!388384 e!388388)))

(declare-fun b!637313 () Bool)

(declare-fun e!388394 () Bool)

(declare-fun e!388389 () Bool)

(assert (=> b!637313 (= e!388394 e!388389)))

(declare-fun mapIsEmpty!2575 () Bool)

(declare-fun mapRes!2574 () Bool)

(assert (=> mapIsEmpty!2575 mapRes!2574))

(declare-fun e!388396 () Bool)

(assert (=> b!637314 (= e!388377 (and e!388396 tp!198506))))

(declare-fun b!637315 () Bool)

(declare-fun e!388397 () Bool)

(assert (=> b!637315 (= e!388391 e!388397)))

(declare-fun b!637316 () Bool)

(declare-fun e!388387 () Bool)

(assert (=> b!637316 (= e!388387 true)))

(declare-fun lt!273054 () List!6828)

(declare-fun lt!273085 () PrintableTokens!124)

(declare-fun list!2882 (BalanceConc!4600) List!6828)

(assert (=> b!637316 (= lt!273054 (list!2882 (tokens!1199 lt!273085)))))

(declare-fun lt!273053 () List!6828)

(declare-datatypes ((tuple2!7388 0))(
  ( (tuple2!7389 (_1!4015 BalanceConc!4600) (_2!4015 BalanceConc!4598)) )
))
(declare-datatypes ((LexerInterface!1251 0))(
  ( (LexerInterfaceExt!1248 (__x!4850 Int)) (Lexer!1249) )
))
(declare-fun lex!579 (LexerInterface!1251 List!6829 BalanceConc!4598) tuple2!7388)

(assert (=> b!637316 (= lt!273053 (list!2882 (_1!4015 (lex!579 Lexer!1249 lt!273065 (print!502 lt!273085)))))))

(declare-fun lt!273067 () Option!1655)

(declare-fun get!2478 (Option!1655) PrintableTokens!124)

(assert (=> b!637316 (= lt!273085 (get!2478 lt!273067))))

(declare-fun e!388375 () Bool)

(declare-fun b!637317 () Bool)

(declare-fun tp!198514 () Bool)

(declare-fun inv!8652 (BalanceConc!4600) Bool)

(assert (=> b!637317 (= e!388375 (and tp!198514 (inv!8652 (tokens!1199 printableTokens!2)) e!388383))))

(declare-fun mapNonEmpty!2575 () Bool)

(declare-fun tp!198503 () Bool)

(declare-fun tp!198510 () Bool)

(assert (=> mapNonEmpty!2575 (= mapRes!2574 (and tp!198503 tp!198510))))

(declare-fun mapValue!2574 () List!6832)

(declare-fun cacheDown!364 () CacheDown!286)

(declare-fun mapRest!2574 () (Array (_ BitVec 32) List!6832))

(declare-fun mapKey!2575 () (_ BitVec 32))

(assert (=> mapNonEmpty!2575 (= (arr!1134 (_values!933 (v!16899 (underlying!1491 (v!16900 (underlying!1492 (cache!1013 cacheDown!364))))))) (store mapRest!2574 mapKey!2575 mapValue!2574))))

(declare-fun res!276660 () Bool)

(assert (=> start!62438 (=> (not res!276660) (not e!388385))))

(declare-fun lt!273076 () Int)

(assert (=> start!62438 (= res!276660 (> lt!273076 0))))

(declare-fun size!5358 (PrintableTokens!124) Int)

(assert (=> start!62438 (= lt!273076 (size!5358 printableTokens!2))))

(assert (=> start!62438 e!388385))

(declare-fun inv!8653 (PrintableTokens!124) Bool)

(assert (=> start!62438 (and (inv!8653 printableTokens!2) e!388375)))

(declare-fun inv!8654 (CacheDown!286) Bool)

(assert (=> start!62438 (and (inv!8654 cacheDown!364) e!388393)))

(declare-fun e!388379 () Bool)

(declare-fun inv!8655 (CacheUp!286) Bool)

(assert (=> start!62438 (and (inv!8655 cacheUp!351) e!388379)))

(declare-fun b!637308 () Bool)

(declare-fun e!388378 () Bool)

(declare-fun lt!273080 () MutLongMap!654)

(assert (=> b!637308 (= e!388396 (and e!388378 ((_ is LongMap!654) lt!273080)))))

(assert (=> b!637308 (= lt!273080 (v!16900 (underlying!1492 (cache!1013 cacheDown!364))))))

(declare-fun b!637318 () Bool)

(assert (=> b!637318 (= e!388382 e!388384)))

(declare-fun lt!273084 () Option!1655)

(assert (=> b!637318 (= lt!273084 (_1!4014 lt!273058))))

(declare-fun lt!273060 () Option!1655)

(assert (=> b!637318 (= lt!273060 (_1!4014 (createRightBracketSeparator!0 (_2!4014 lt!273058) (_3!320 lt!273058))))))

(declare-fun lambda!18351 () Int)

(declare-datatypes ((tuple2!7390 0))(
  ( (tuple2!7391 (_1!4016 Int) (_2!4016 PrintableTokens!124)) )
))
(declare-datatypes ((List!6833 0))(
  ( (Nil!6819) (Cons!6819 (h!12220 tuple2!7390) (t!84507 List!6833)) )
))
(declare-datatypes ((IArray!4591 0))(
  ( (IArray!4592 (innerList!2353 List!6833)) )
))
(declare-datatypes ((Conc!2295 0))(
  ( (Node!2295 (left!5434 Conc!2295) (right!5764 Conc!2295) (csize!4820 Int) (cheight!2506 Int)) (Leaf!3497 (xs!4936 IArray!4591) (csize!4821 Int)) (Empty!2295) )
))
(declare-datatypes ((BalanceConc!4602 0))(
  ( (BalanceConc!4603 (c!116755 Conc!2295)) )
))
(declare-fun lt!273072 () BalanceConc!4602)

(declare-datatypes ((List!6834 0))(
  ( (Nil!6820) (Cons!6820 (h!12221 PrintableTokens!124) (t!84508 List!6834)) )
))
(declare-datatypes ((IArray!4593 0))(
  ( (IArray!4594 (innerList!2354 List!6834)) )
))
(declare-datatypes ((Conc!2296 0))(
  ( (Node!2296 (left!5435 Conc!2296) (right!5765 Conc!2296) (csize!4822 Int) (cheight!2507 Int)) (Leaf!3498 (xs!4937 IArray!4593) (csize!4823 Int)) (Empty!2296) )
))
(declare-datatypes ((BalanceConc!4604 0))(
  ( (BalanceConc!4605 (c!116756 Conc!2296)) )
))
(declare-fun recombineSlicesWithSep!0 (BalanceConc!4604 PrintableTokens!124 PrintableTokens!124) Option!1655)

(declare-fun map!1473 (BalanceConc!4602 Int) BalanceConc!4604)

(declare-fun emptyPrintableTokens!13 (List!6829) PrintableTokens!124)

(assert (=> b!637318 (= lt!273059 (recombineSlicesWithSep!0 (map!1473 lt!273072 lambda!18351) (v!16896 (_1!4014 lt!273064)) (emptyPrintableTokens!13 lt!273065)))))

(declare-fun c!116751 () Bool)

(assert (=> b!637318 (= c!116751 ((_ is Some!1654) lt!273059))))

(declare-fun b!637319 () Bool)

(declare-fun res!276663 () Bool)

(assert (=> b!637319 (=> (not res!276663) (not e!388376))))

(declare-fun rulesInvariant!1186 (LexerInterface!1251 List!6829) Bool)

(assert (=> b!637319 (= res!276663 (rulesInvariant!1186 Lexer!1249 lt!273065))))

(declare-fun b!637320 () Bool)

(assert (=> b!637320 (= e!388373 ((_ is Some!1654) (_1!4014 (createRightBracketSeparator!0 (_2!4014 lt!273058) (_3!320 lt!273058)))))))

(declare-fun lt!273066 () Option!1655)

(assert (=> b!637320 (= lt!273066 (_1!4014 lt!273058))))

(declare-fun lt!273078 () Option!1655)

(assert (=> b!637320 (= lt!273078 (_1!4014 lt!273064))))

(declare-fun b!637321 () Bool)

(assert (=> b!637321 (= e!388384 None!1654)))

(declare-fun b!637322 () Bool)

(assert (=> b!637322 (= e!388378 e!388394)))

(declare-fun b!637323 () Bool)

(declare-fun e!388395 () Bool)

(declare-fun tp!198515 () Bool)

(assert (=> b!637323 (= e!388395 (and tp!198515 mapRes!2574))))

(declare-fun condMapEmpty!2575 () Bool)

(declare-fun mapDefault!2575 () List!6832)

(assert (=> b!637323 (= condMapEmpty!2575 (= (arr!1134 (_values!933 (v!16899 (underlying!1491 (v!16900 (underlying!1492 (cache!1013 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6832)) mapDefault!2575)))))

(declare-fun b!637324 () Bool)

(assert (=> b!637324 (= e!388379 e!388390)))

(declare-fun b!637325 () Bool)

(assert (=> b!637325 (= e!388376 (not e!388387))))

(declare-fun res!276662 () Bool)

(assert (=> b!637325 (=> res!276662 e!388387)))

(declare-fun isEmpty!4680 (Option!1655) Bool)

(assert (=> b!637325 (= res!276662 (isEmpty!4680 lt!273067))))

(assert (=> b!637325 (= lt!273067 e!388382)))

(declare-fun c!116749 () Bool)

(assert (=> b!637325 (= c!116749 e!388373)))

(declare-fun res!276661 () Bool)

(assert (=> b!637325 (=> (not res!276661) (not e!388373))))

(assert (=> b!637325 (= res!276661 ((_ is Some!1654) (_1!4014 lt!273064)))))

(declare-fun lt!273056 () Option!1655)

(assert (=> b!637325 (= lt!273056 (_1!4014 (createRightBracketSeparator!0 (_2!4014 lt!273058) (_3!320 lt!273058))))))

(declare-fun lt!273055 () Option!1655)

(assert (=> b!637325 (= lt!273055 (_1!4014 lt!273058))))

(declare-datatypes ((tuple3!540 0))(
  ( (tuple3!541 (_1!4017 Option!1655) (_2!4017 Option!1655) (_3!321 Option!1655)) )
))
(declare-fun lt!273075 () tuple3!540)

(assert (=> b!637325 (= lt!273075 (tuple3!541 (_1!4014 lt!273064) (_1!4014 lt!273058) (_1!4014 (createRightBracketSeparator!0 (_2!4014 lt!273058) (_3!320 lt!273058)))))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!286 CacheDown!286) tuple3!538)

(assert (=> b!637325 (= lt!273058 (createLeftBracketSeparator!0 (_2!4014 lt!273064) (_3!320 lt!273064)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!286 CacheDown!286) tuple3!538)

(assert (=> b!637325 (= lt!273064 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-fun lambda!18352 () Int)

(declare-fun forall!1723 (BalanceConc!4604 Int) Bool)

(assert (=> b!637325 (forall!1723 (map!1473 lt!273072 lambda!18351) lambda!18352)))

(declare-datatypes ((Unit!11836 0))(
  ( (Unit!11837) )
))
(declare-fun lt!273083 () Unit!11836)

(declare-fun lt!273077 () List!6833)

(declare-fun mapPred!45 (List!6833 Int Int) Unit!11836)

(assert (=> b!637325 (= lt!273083 (mapPred!45 lt!273077 lambda!18351 lambda!18352))))

(declare-fun lt!273074 () Unit!11836)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6833) Unit!11836)

(assert (=> b!637325 (= lt!273074 (lemmaRemoveIdsPreservesRules!0 lt!273077))))

(declare-fun list!2883 (BalanceConc!4602) List!6833)

(assert (=> b!637325 (= lt!273077 (list!2883 lt!273072))))

(declare-fun lt!273052 () BalanceConc!4604)

(declare-fun lambda!18349 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4602) BalanceConc!4602)

(declare-fun map!1474 (BalanceConc!4604 Int) BalanceConc!4602)

(assert (=> b!637325 (= lt!273072 (sortObjectsByID!0 (map!1474 lt!273052 lambda!18349)))))

(declare-fun lt!273070 () List!6834)

(declare-fun lt!273081 () Unit!11836)

(declare-fun lambda!18350 () Int)

(declare-fun mapPred!46 (List!6834 Int Int) Unit!11836)

(assert (=> b!637325 (= lt!273081 (mapPred!46 lt!273070 lambda!18349 lambda!18350))))

(declare-fun lt!273082 () Unit!11836)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6834) Unit!11836)

(assert (=> b!637325 (= lt!273082 (lemmaAddIdsPreservesRules!0 lt!273070))))

(declare-fun list!2884 (BalanceConc!4604) List!6834)

(assert (=> b!637325 (= lt!273070 (list!2884 lt!273052))))

(declare-datatypes ((List!6835 0))(
  ( (Nil!6821) (Cons!6821 (h!12222 Int) (t!84509 List!6835)) )
))
(declare-datatypes ((IArray!4595 0))(
  ( (IArray!4596 (innerList!2355 List!6835)) )
))
(declare-datatypes ((Conc!2297 0))(
  ( (Node!2297 (left!5436 Conc!2297) (right!5766 Conc!2297) (csize!4824 Int) (cheight!2508 Int)) (Leaf!3499 (xs!4938 IArray!4595) (csize!4825 Int)) (Empty!2297) )
))
(declare-datatypes ((BalanceConc!4606 0))(
  ( (BalanceConc!4607 (c!116757 Conc!2297)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!124 Int BalanceConc!4606 BalanceConc!4604) BalanceConc!4604)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4600 Int Int BalanceConc!4606) BalanceConc!4606)

(assert (=> b!637325 (= lt!273052 (slicesMulti!0 printableTokens!2 lt!273076 (indicesOfOpenBraces!0 (tokens!1199 printableTokens!2) lt!273076 0 (BalanceConc!4607 Empty!2297)) (BalanceConc!4605 Empty!2296)))))

(declare-fun tp!198504 () Bool)

(declare-fun tp!198505 () Bool)

(declare-fun array_inv!825 (array!2491) Bool)

(declare-fun array_inv!826 (array!2489) Bool)

(assert (=> b!637326 (= e!388397 (and tp!198508 tp!198505 tp!198504 (array_inv!825 (_keys!947 (v!16897 (underlying!1489 (v!16898 (underlying!1490 (cache!1012 cacheUp!351))))))) (array_inv!826 (_values!932 (v!16897 (underlying!1489 (v!16898 (underlying!1490 (cache!1012 cacheUp!351))))))) e!388381))))

(declare-fun tp!198513 () Bool)

(declare-fun tp!198509 () Bool)

(declare-fun array_inv!827 (array!2493) Bool)

(assert (=> b!637327 (= e!388389 (and tp!198517 tp!198513 tp!198509 (array_inv!825 (_keys!948 (v!16899 (underlying!1491 (v!16900 (underlying!1492 (cache!1013 cacheDown!364))))))) (array_inv!827 (_values!933 (v!16899 (underlying!1491 (v!16900 (underlying!1492 (cache!1013 cacheDown!364))))))) e!388395))))

(assert (= (and start!62438 res!276660) b!637310))

(assert (= (and b!637310 res!276665) b!637319))

(assert (= (and b!637319 res!276663) b!637311))

(assert (= (and b!637311 res!276659) b!637325))

(assert (= (and b!637325 res!276661) b!637309))

(assert (= (and b!637309 res!276664) b!637320))

(assert (= (and b!637325 c!116749) b!637318))

(assert (= (and b!637325 (not c!116749)) b!637303))

(assert (= (and b!637318 c!116751) b!637312))

(assert (= (and b!637318 (not c!116751)) b!637321))

(assert (= (and b!637312 c!116750) b!637307))

(assert (= (and b!637312 (not c!116750)) b!637299))

(assert (= (and b!637325 (not res!276662)) b!637316))

(assert (= b!637317 b!637301))

(assert (= start!62438 b!637317))

(assert (= (and b!637323 condMapEmpty!2575) mapIsEmpty!2575))

(assert (= (and b!637323 (not condMapEmpty!2575)) mapNonEmpty!2575))

(assert (= b!637327 b!637323))

(assert (= b!637313 b!637327))

(assert (= b!637322 b!637313))

(assert (= (and b!637308 ((_ is LongMap!654) (v!16900 (underlying!1492 (cache!1013 cacheDown!364))))) b!637322))

(assert (= b!637314 b!637308))

(assert (= (and b!637305 ((_ is HashMap!626) (cache!1013 cacheDown!364))) b!637314))

(assert (= start!62438 b!637305))

(assert (= (and b!637304 condMapEmpty!2574) mapIsEmpty!2574))

(assert (= (and b!637304 (not condMapEmpty!2574)) mapNonEmpty!2574))

(assert (= b!637326 b!637304))

(assert (= b!637315 b!637326))

(assert (= b!637300 b!637315))

(assert (= (and b!637302 ((_ is LongMap!653) (v!16898 (underlying!1490 (cache!1012 cacheUp!351))))) b!637300))

(assert (= b!637306 b!637302))

(assert (= (and b!637324 ((_ is HashMap!625) (cache!1012 cacheUp!351))) b!637306))

(assert (= start!62438 b!637324))

(declare-fun m!908273 () Bool)

(assert (=> b!637327 m!908273))

(declare-fun m!908275 () Bool)

(assert (=> b!637327 m!908275))

(declare-fun m!908277 () Bool)

(assert (=> b!637318 m!908277))

(declare-fun m!908279 () Bool)

(assert (=> b!637318 m!908279))

(declare-fun m!908281 () Bool)

(assert (=> b!637318 m!908281))

(assert (=> b!637318 m!908279))

(assert (=> b!637318 m!908281))

(declare-fun m!908283 () Bool)

(assert (=> b!637318 m!908283))

(assert (=> b!637309 m!908277))

(declare-fun m!908285 () Bool)

(assert (=> b!637311 m!908285))

(declare-fun m!908287 () Bool)

(assert (=> b!637316 m!908287))

(declare-fun m!908289 () Bool)

(assert (=> b!637316 m!908289))

(declare-fun m!908291 () Bool)

(assert (=> b!637316 m!908291))

(assert (=> b!637316 m!908287))

(declare-fun m!908293 () Bool)

(assert (=> b!637316 m!908293))

(declare-fun m!908295 () Bool)

(assert (=> b!637316 m!908295))

(assert (=> b!637312 m!908277))

(declare-fun m!908297 () Bool)

(assert (=> b!637312 m!908297))

(declare-fun m!908299 () Bool)

(assert (=> b!637319 m!908299))

(assert (=> b!637320 m!908277))

(declare-fun m!908301 () Bool)

(assert (=> b!637326 m!908301))

(declare-fun m!908303 () Bool)

(assert (=> b!637326 m!908303))

(declare-fun m!908305 () Bool)

(assert (=> b!637301 m!908305))

(declare-fun m!908307 () Bool)

(assert (=> b!637317 m!908307))

(declare-fun m!908309 () Bool)

(assert (=> mapNonEmpty!2574 m!908309))

(declare-fun m!908311 () Bool)

(assert (=> start!62438 m!908311))

(declare-fun m!908313 () Bool)

(assert (=> start!62438 m!908313))

(declare-fun m!908315 () Bool)

(assert (=> start!62438 m!908315))

(declare-fun m!908317 () Bool)

(assert (=> start!62438 m!908317))

(declare-fun m!908319 () Bool)

(assert (=> mapNonEmpty!2575 m!908319))

(declare-fun m!908321 () Bool)

(assert (=> b!637325 m!908321))

(declare-fun m!908323 () Bool)

(assert (=> b!637325 m!908323))

(declare-fun m!908325 () Bool)

(assert (=> b!637325 m!908325))

(assert (=> b!637325 m!908325))

(declare-fun m!908327 () Bool)

(assert (=> b!637325 m!908327))

(declare-fun m!908329 () Bool)

(assert (=> b!637325 m!908329))

(declare-fun m!908331 () Bool)

(assert (=> b!637325 m!908331))

(assert (=> b!637325 m!908277))

(assert (=> b!637325 m!908329))

(declare-fun m!908333 () Bool)

(assert (=> b!637325 m!908333))

(declare-fun m!908335 () Bool)

(assert (=> b!637325 m!908335))

(declare-fun m!908337 () Bool)

(assert (=> b!637325 m!908337))

(declare-fun m!908339 () Bool)

(assert (=> b!637325 m!908339))

(declare-fun m!908341 () Bool)

(assert (=> b!637325 m!908341))

(declare-fun m!908343 () Bool)

(assert (=> b!637325 m!908343))

(assert (=> b!637325 m!908279))

(assert (=> b!637325 m!908279))

(declare-fun m!908345 () Bool)

(assert (=> b!637325 m!908345))

(declare-fun m!908347 () Bool)

(assert (=> b!637325 m!908347))

(declare-fun m!908349 () Bool)

(assert (=> b!637307 m!908349))

(declare-fun m!908351 () Bool)

(assert (=> b!637310 m!908351))

(declare-fun m!908353 () Bool)

(assert (=> b!637310 m!908353))

(check-sat (not b!637318) (not b!637326) b_and!62519 (not b_next!18755) (not b_next!18751) b_and!62525 (not b!637307) (not b!637323) (not b_next!18753) (not b_next!18749) (not b!637304) (not mapNonEmpty!2575) (not b!637312) b_and!62523 (not b!637316) (not b!637327) (not b!637320) (not b!637319) (not start!62438) b_and!62521 (not b!637317) (not b!637325) (not mapNonEmpty!2574) (not b!637309) (not b!637301) (not b!637311) (not b!637310))
(check-sat b_and!62523 b_and!62521 b_and!62519 (not b_next!18755) (not b_next!18751) b_and!62525 (not b_next!18753) (not b_next!18749))
