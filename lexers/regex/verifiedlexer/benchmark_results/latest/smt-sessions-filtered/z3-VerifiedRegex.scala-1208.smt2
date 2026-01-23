; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63478 () Bool)

(assert start!63478)

(declare-fun b!647342 () Bool)

(declare-fun b_free!18893 () Bool)

(declare-fun b_next!18949 () Bool)

(assert (=> b!647342 (= b_free!18893 (not b_next!18949))))

(declare-fun tp!199952 () Bool)

(declare-fun b_and!62687 () Bool)

(assert (=> b!647342 (= tp!199952 b_and!62687)))

(declare-fun b!647346 () Bool)

(declare-fun b_free!18895 () Bool)

(declare-fun b_next!18951 () Bool)

(assert (=> b!647346 (= b_free!18895 (not b_next!18951))))

(declare-fun tp!199957 () Bool)

(declare-fun b_and!62689 () Bool)

(assert (=> b!647346 (= tp!199957 b_and!62689)))

(declare-fun b!647355 () Bool)

(declare-fun b_free!18897 () Bool)

(declare-fun b_next!18953 () Bool)

(assert (=> b!647355 (= b_free!18897 (not b_next!18953))))

(declare-fun tp!199953 () Bool)

(declare-fun b_and!62691 () Bool)

(assert (=> b!647355 (= tp!199953 b_and!62691)))

(declare-fun b!647331 () Bool)

(declare-fun b_free!18899 () Bool)

(declare-fun b_next!18955 () Bool)

(assert (=> b!647331 (= b_free!18899 (not b_next!18955))))

(declare-fun tp!199954 () Bool)

(declare-fun b_and!62693 () Bool)

(assert (=> b!647331 (= tp!199954 b_and!62693)))

(declare-fun b!647329 () Bool)

(declare-fun e!397416 () Bool)

(declare-fun e!397404 () Bool)

(declare-datatypes ((Regex!1721 0))(
  ( (ElementMatch!1721 (c!117660 (_ BitVec 16))) (Concat!3141 (regOne!3954 Regex!1721) (regTwo!3954 Regex!1721)) (EmptyExpr!1721) (Star!1721 (reg!2050 Regex!1721)) (EmptyLang!1721) (Union!1721 (regOne!3955 Regex!1721) (regTwo!3955 Regex!1721)) )
))
(declare-datatypes ((List!6946 0))(
  ( (Nil!6932) (Cons!6932 (h!12333 Regex!1721) (t!85442 List!6946)) )
))
(declare-datatypes ((Context!414 0))(
  ( (Context!415 (exprs!707 List!6946)) )
))
(declare-datatypes ((tuple2!7498 0))(
  ( (tuple2!7499 (_1!4102 Context!414) (_2!4102 (_ BitVec 16))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7500 0))(
  ( (tuple2!7501 (_1!4103 tuple2!7498) (_2!4103 (InoxSet Context!414))) )
))
(declare-datatypes ((List!6947 0))(
  ( (Nil!6933) (Cons!6933 (h!12334 tuple2!7500) (t!85443 List!6947)) )
))
(declare-datatypes ((array!2589 0))(
  ( (array!2590 (arr!1173 (Array (_ BitVec 32) List!6947)) (size!5488 (_ BitVec 32))) )
))
(declare-datatypes ((array!2591 0))(
  ( (array!2592 (arr!1174 (Array (_ BitVec 32) (_ BitVec 64))) (size!5489 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1360 0))(
  ( (LongMapFixedSize!1361 (defaultEntry!1036 Int) (mask!2420 (_ BitVec 32)) (extraKeys!927 (_ BitVec 32)) (zeroValue!937 List!6947) (minValue!937 List!6947) (_size!1469 (_ BitVec 32)) (_keys!974 array!2591) (_values!959 array!2589) (_vacant!741 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2661 0))(
  ( (Cell!2662 (v!17140 LongMapFixedSize!1360)) )
))
(declare-datatypes ((MutLongMap!680 0))(
  ( (LongMap!680 (underlying!1543 Cell!2661)) (MutLongMapExt!679 (__x!4947 Int)) )
))
(declare-fun lt!277443 () MutLongMap!680)

(get-info :version)

(assert (=> b!647329 (= e!397416 (and e!397404 ((_ is LongMap!680) lt!277443)))))

(declare-datatypes ((Hashable!652 0))(
  ( (HashableExt!651 (__x!4948 Int)) )
))
(declare-datatypes ((Cell!2663 0))(
  ( (Cell!2664 (v!17141 MutLongMap!680)) )
))
(declare-datatypes ((MutableMap!652 0))(
  ( (MutableMapExt!651 (__x!4949 Int)) (HashMap!652 (underlying!1544 Cell!2663) (hashF!2560 Hashable!652) (_size!1470 (_ BitVec 32)) (defaultValue!803 Int)) )
))
(declare-datatypes ((CacheUp!312 0))(
  ( (CacheUp!313 (cache!1039 MutableMap!652)) )
))
(declare-fun cacheUp!351 () CacheUp!312)

(assert (=> b!647329 (= lt!277443 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))

(declare-fun b!647330 () Bool)

(declare-fun res!283517 () Bool)

(declare-fun e!397405 () Bool)

(assert (=> b!647330 (=> (not res!283517) (not e!397405))))

(declare-datatypes ((List!6948 0))(
  ( (Nil!6934) (Cons!6934 (h!12335 (_ BitVec 16)) (t!85444 List!6948)) )
))
(declare-datatypes ((TokenValue!1420 0))(
  ( (FloatLiteralValue!2840 (text!10385 List!6948)) (TokenValueExt!1419 (__x!4950 Int)) (Broken!7100 (value!44626 List!6948)) (Object!1433) (End!1420) (Def!1420) (Underscore!1420) (Match!1420) (Else!1420) (Error!1420) (Case!1420) (If!1420) (Extends!1420) (Abstract!1420) (Class!1420) (Val!1420) (DelimiterValue!2840 (del!1480 List!6948)) (KeywordValue!1426 (value!44627 List!6948)) (CommentValue!2840 (value!44628 List!6948)) (WhitespaceValue!2840 (value!44629 List!6948)) (IndentationValue!1420 (value!44630 List!6948)) (String!8837) (Int32!1420) (Broken!7101 (value!44631 List!6948)) (Boolean!1421) (Unit!12099) (OperatorValue!1423 (op!1480 List!6948)) (IdentifierValue!2840 (value!44632 List!6948)) (IdentifierValue!2841 (value!44633 List!6948)) (WhitespaceValue!2841 (value!44634 List!6948)) (True!2840) (False!2840) (Broken!7102 (value!44635 List!6948)) (Broken!7103 (value!44636 List!6948)) (True!2841) (RightBrace!1420) (RightBracket!1420) (Colon!1420) (Null!1420) (Comma!1420) (LeftBracket!1420) (False!2841) (LeftBrace!1420) (ImaginaryLiteralValue!1420 (text!10386 List!6948)) (StringLiteralValue!4260 (value!44637 List!6948)) (EOFValue!1420 (value!44638 List!6948)) (IdentValue!1420 (value!44639 List!6948)) (DelimiterValue!2841 (value!44640 List!6948)) (DedentValue!1420 (value!44641 List!6948)) (NewLineValue!1420 (value!44642 List!6948)) (IntegerValue!4260 (value!44643 (_ BitVec 32)) (text!10387 List!6948)) (IntegerValue!4261 (value!44644 Int) (text!10388 List!6948)) (Times!1420) (Or!1420) (Equal!1420) (Minus!1420) (Broken!7104 (value!44645 List!6948)) (And!1420) (Div!1420) (LessEqual!1420) (Mod!1420) (Concat!3142) (Not!1420) (Plus!1420) (SpaceValue!1420 (value!44646 List!6948)) (IntegerValue!4262 (value!44647 Int) (text!10389 List!6948)) (StringLiteralValue!4261 (text!10390 List!6948)) (FloatLiteralValue!2841 (text!10391 List!6948)) (BytesLiteralValue!1420 (value!44648 List!6948)) (CommentValue!2841 (value!44649 List!6948)) (StringLiteralValue!4262 (value!44650 List!6948)) (ErrorTokenValue!1420 (msg!1481 List!6948)) )
))
(declare-datatypes ((String!8838 0))(
  ( (String!8839 (value!44651 String)) )
))
(declare-datatypes ((IArray!4703 0))(
  ( (IArray!4704 (innerList!2409 List!6948)) )
))
(declare-datatypes ((Conc!2351 0))(
  ( (Node!2351 (left!5509 Conc!2351) (right!5839 Conc!2351) (csize!4932 Int) (cheight!2562 Int)) (Leaf!3560 (xs!4992 IArray!4703) (csize!4933 Int)) (Empty!2351) )
))
(declare-datatypes ((BalanceConc!4714 0))(
  ( (BalanceConc!4715 (c!117661 Conc!2351)) )
))
(declare-datatypes ((TokenValueInjection!2592 0))(
  ( (TokenValueInjection!2593 (toValue!2327 Int) (toChars!2186 Int)) )
))
(declare-datatypes ((Rule!2572 0))(
  ( (Rule!2573 (regex!1386 Regex!1721) (tag!1648 String!8838) (isSeparator!1386 Bool) (transformation!1386 TokenValueInjection!2592)) )
))
(declare-datatypes ((Token!2494 0))(
  ( (Token!2495 (value!44652 TokenValue!1420) (rule!2181 Rule!2572) (size!5490 Int) (originalCharacters!1418 List!6948)) )
))
(declare-datatypes ((List!6949 0))(
  ( (Nil!6935) (Cons!6935 (h!12336 Token!2494) (t!85445 List!6949)) )
))
(declare-datatypes ((IArray!4705 0))(
  ( (IArray!4706 (innerList!2410 List!6949)) )
))
(declare-datatypes ((Conc!2352 0))(
  ( (Node!2352 (left!5510 Conc!2352) (right!5840 Conc!2352) (csize!4934 Int) (cheight!2563 Int)) (Leaf!3561 (xs!4993 IArray!4705) (csize!4935 Int)) (Empty!2352) )
))
(declare-datatypes ((List!6950 0))(
  ( (Nil!6936) (Cons!6936 (h!12337 Rule!2572) (t!85446 List!6950)) )
))
(declare-datatypes ((BalanceConc!4716 0))(
  ( (BalanceConc!4717 (c!117662 Conc!2352)) )
))
(declare-datatypes ((PrintableTokens!152 0))(
  ( (PrintableTokens!153 (rules!8237 List!6950) (tokens!1225 BalanceConc!4716)) )
))
(declare-fun printableTokens!2 () PrintableTokens!152)

(declare-fun usesJsonRules!0 (PrintableTokens!152) Bool)

(assert (=> b!647330 (= res!283517 (usesJsonRules!0 printableTokens!2))))

(declare-fun tp!199947 () Bool)

(declare-fun e!397412 () Bool)

(declare-datatypes ((tuple3!604 0))(
  ( (tuple3!605 (_1!4104 Regex!1721) (_2!4104 Context!414) (_3!353 (_ BitVec 16))) )
))
(declare-datatypes ((tuple2!7502 0))(
  ( (tuple2!7503 (_1!4105 tuple3!604) (_2!4105 (InoxSet Context!414))) )
))
(declare-datatypes ((List!6951 0))(
  ( (Nil!6937) (Cons!6937 (h!12338 tuple2!7502) (t!85447 List!6951)) )
))
(declare-datatypes ((array!2593 0))(
  ( (array!2594 (arr!1175 (Array (_ BitVec 32) List!6951)) (size!5491 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1362 0))(
  ( (LongMapFixedSize!1363 (defaultEntry!1037 Int) (mask!2421 (_ BitVec 32)) (extraKeys!928 (_ BitVec 32)) (zeroValue!938 List!6951) (minValue!938 List!6951) (_size!1471 (_ BitVec 32)) (_keys!975 array!2591) (_values!960 array!2593) (_vacant!742 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2665 0))(
  ( (Cell!2666 (v!17142 LongMapFixedSize!1362)) )
))
(declare-datatypes ((MutLongMap!681 0))(
  ( (LongMap!681 (underlying!1545 Cell!2665)) (MutLongMapExt!680 (__x!4951 Int)) )
))
(declare-datatypes ((Cell!2667 0))(
  ( (Cell!2668 (v!17143 MutLongMap!681)) )
))
(declare-datatypes ((Hashable!653 0))(
  ( (HashableExt!652 (__x!4952 Int)) )
))
(declare-datatypes ((MutableMap!653 0))(
  ( (MutableMapExt!652 (__x!4953 Int)) (HashMap!653 (underlying!1546 Cell!2667) (hashF!2561 Hashable!653) (_size!1472 (_ BitVec 32)) (defaultValue!804 Int)) )
))
(declare-datatypes ((CacheDown!314 0))(
  ( (CacheDown!315 (cache!1040 MutableMap!653)) )
))
(declare-fun cacheDown!364 () CacheDown!314)

(declare-fun tp!199942 () Bool)

(declare-fun e!397401 () Bool)

(declare-fun array_inv!856 (array!2591) Bool)

(declare-fun array_inv!857 (array!2593) Bool)

(assert (=> b!647331 (= e!397412 (and tp!199954 tp!199947 tp!199942 (array_inv!856 (_keys!975 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) (array_inv!857 (_values!960 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) e!397401))))

(declare-fun b!647332 () Bool)

(declare-fun res!283516 () Bool)

(declare-fun e!397414 () Bool)

(assert (=> b!647332 (=> res!283516 e!397414)))

(declare-datatypes ((Option!1669 0))(
  ( (None!1668) (Some!1668 (v!17144 PrintableTokens!152)) )
))
(declare-datatypes ((tuple3!606 0))(
  ( (tuple3!607 (_1!4106 Option!1669) (_2!4106 CacheUp!312) (_3!354 CacheDown!314)) )
))
(declare-fun lt!277450 () tuple3!606)

(assert (=> b!647332 (= res!283516 (not (usesJsonRules!0 (v!17144 (_1!4106 lt!277450)))))))

(declare-fun b!647333 () Bool)

(declare-fun e!397402 () Bool)

(declare-fun tp!199950 () Bool)

(declare-fun inv!8767 (Conc!2352) Bool)

(assert (=> b!647333 (= e!397402 (and (inv!8767 (c!117662 (tokens!1225 printableTokens!2))) tp!199950))))

(declare-fun b!647334 () Bool)

(declare-fun res!283518 () Bool)

(assert (=> b!647334 (=> res!283518 e!397414)))

(declare-fun lt!277451 () tuple3!606)

(assert (=> b!647334 (= res!283518 (not (usesJsonRules!0 (v!17144 (_1!4106 lt!277451)))))))

(declare-fun b!647335 () Bool)

(declare-fun e!397420 () Bool)

(declare-fun e!397417 () Bool)

(assert (=> b!647335 (= e!397420 e!397417)))

(declare-fun b!647336 () Bool)

(declare-fun e!397407 () Bool)

(declare-fun tp!199945 () Bool)

(declare-fun mapRes!2702 () Bool)

(assert (=> b!647336 (= e!397407 (and tp!199945 mapRes!2702))))

(declare-fun condMapEmpty!2703 () Bool)

(declare-fun mapDefault!2703 () List!6947)

(assert (=> b!647336 (= condMapEmpty!2703 (= (arr!1173 (_values!959 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) ((as const (Array (_ BitVec 32) List!6947)) mapDefault!2703)))))

(declare-fun mapIsEmpty!2702 () Bool)

(declare-fun mapRes!2703 () Bool)

(assert (=> mapIsEmpty!2702 mapRes!2703))

(declare-fun b!647338 () Bool)

(declare-fun e!397410 () Bool)

(assert (=> b!647338 (= e!397410 e!397405)))

(declare-fun res!283515 () Bool)

(assert (=> b!647338 (=> (not res!283515) (not e!397405))))

(declare-fun lt!277449 () List!6950)

(declare-fun isEmpty!4734 (List!6950) Bool)

(assert (=> b!647338 (= res!283515 (not (isEmpty!4734 lt!277449)))))

(declare-datatypes ((JsonLexer!206 0))(
  ( (JsonLexer!207) )
))
(declare-fun rules!109 (JsonLexer!206) List!6950)

(assert (=> b!647338 (= lt!277449 (rules!109 JsonLexer!207))))

(declare-fun b!647339 () Bool)

(declare-fun e!397418 () Bool)

(declare-fun e!397425 () Bool)

(assert (=> b!647339 (= e!397418 e!397425)))

(declare-fun b!647340 () Bool)

(declare-fun res!283512 () Bool)

(declare-fun e!397406 () Bool)

(assert (=> b!647340 (=> res!283512 e!397406)))

(declare-fun lt!277455 () Option!1669)

(assert (=> b!647340 (= res!283512 (not (= lt!277449 (rules!8237 (v!17144 lt!277455)))))))

(declare-fun b!647341 () Bool)

(assert (=> b!647341 (= e!397404 e!397418)))

(declare-fun e!397408 () Bool)

(declare-fun e!397411 () Bool)

(assert (=> b!647342 (= e!397408 (and e!397411 tp!199952))))

(declare-fun b!647343 () Bool)

(declare-fun e!397421 () Bool)

(assert (=> b!647343 (= e!397406 e!397421)))

(declare-fun res!283522 () Bool)

(assert (=> b!647343 (=> res!283522 e!397421)))

(declare-datatypes ((tuple2!7504 0))(
  ( (tuple2!7505 (_1!4107 BalanceConc!4716) (_2!4107 BalanceConc!4714)) )
))
(declare-fun lt!277454 () tuple2!7504)

(declare-fun list!2952 (BalanceConc!4716) List!6949)

(assert (=> b!647343 (= res!283522 (not (= (list!2952 (_1!4107 lt!277454)) (list!2952 (tokens!1225 (v!17144 lt!277455))))))))

(declare-fun lt!277445 () BalanceConc!4714)

(declare-datatypes ((LexerInterface!1260 0))(
  ( (LexerInterfaceExt!1257 (__x!4954 Int)) (Lexer!1258) )
))
(declare-fun lex!583 (LexerInterface!1260 List!6950 BalanceConc!4714) tuple2!7504)

(assert (=> b!647343 (= lt!277454 (lex!583 Lexer!1258 lt!277449 lt!277445))))

(declare-fun b!647344 () Bool)

(declare-fun e!397403 () Bool)

(declare-fun e!397409 () Bool)

(assert (=> b!647344 (= e!397403 e!397409)))

(declare-fun res!283513 () Bool)

(assert (=> b!647344 (=> res!283513 e!397409)))

(assert (=> b!647344 (= res!283513 (not ((_ is Some!1668) lt!277455)))))

(declare-fun lt!277446 () Option!1669)

(declare-fun lt!277457 () tuple3!606)

(declare-fun encloseInSep!0 (PrintableTokens!152 PrintableTokens!152 PrintableTokens!152) Option!1669)

(assert (=> b!647344 (= lt!277455 (encloseInSep!0 (v!17144 lt!277446) (v!17144 (_1!4106 lt!277451)) (v!17144 (_1!4106 lt!277457))))))

(declare-fun mapNonEmpty!2702 () Bool)

(declare-fun tp!199949 () Bool)

(declare-fun tp!199943 () Bool)

(assert (=> mapNonEmpty!2702 (= mapRes!2702 (and tp!199949 tp!199943))))

(declare-fun mapKey!2702 () (_ BitVec 32))

(declare-fun mapValue!2702 () List!6947)

(declare-fun mapRest!2703 () (Array (_ BitVec 32) List!6947))

(assert (=> mapNonEmpty!2702 (= (arr!1173 (_values!959 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) (store mapRest!2703 mapKey!2702 mapValue!2702))))

(declare-fun b!647345 () Bool)

(assert (=> b!647345 (= e!397405 (not e!397414))))

(declare-fun res!283514 () Bool)

(assert (=> b!647345 (=> res!283514 e!397414)))

(assert (=> b!647345 (= res!283514 (or (not ((_ is Some!1668) (_1!4106 lt!277450))) (not ((_ is Some!1668) (_1!4106 lt!277451))) (not ((_ is Some!1668) (_1!4106 lt!277457)))))))

(declare-fun createRightBracketSeparator!0 (CacheUp!312 CacheDown!314) tuple3!606)

(assert (=> b!647345 (= lt!277457 (createRightBracketSeparator!0 (_2!4106 lt!277451) (_3!354 lt!277451)))))

(declare-fun createLeftBracketSeparator!0 (CacheUp!312 CacheDown!314) tuple3!606)

(assert (=> b!647345 (= lt!277451 (createLeftBracketSeparator!0 (_2!4106 lt!277450) (_3!354 lt!277450)))))

(declare-fun createCommaNewLineSeparator!0 (CacheUp!312 CacheDown!314) tuple3!606)

(assert (=> b!647345 (= lt!277450 (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364))))

(declare-datatypes ((tuple2!7506 0))(
  ( (tuple2!7507 (_1!4108 Int) (_2!4108 PrintableTokens!152)) )
))
(declare-datatypes ((List!6952 0))(
  ( (Nil!6938) (Cons!6938 (h!12339 tuple2!7506) (t!85448 List!6952)) )
))
(declare-datatypes ((IArray!4707 0))(
  ( (IArray!4708 (innerList!2411 List!6952)) )
))
(declare-datatypes ((Conc!2353 0))(
  ( (Node!2353 (left!5511 Conc!2353) (right!5841 Conc!2353) (csize!4936 Int) (cheight!2564 Int)) (Leaf!3562 (xs!4994 IArray!4707) (csize!4937 Int)) (Empty!2353) )
))
(declare-datatypes ((BalanceConc!4718 0))(
  ( (BalanceConc!4719 (c!117663 Conc!2353)) )
))
(declare-fun lt!277448 () BalanceConc!4718)

(declare-fun lambda!19611 () Int)

(declare-fun lambda!19612 () Int)

(declare-datatypes ((List!6953 0))(
  ( (Nil!6939) (Cons!6939 (h!12340 PrintableTokens!152) (t!85449 List!6953)) )
))
(declare-datatypes ((IArray!4709 0))(
  ( (IArray!4710 (innerList!2412 List!6953)) )
))
(declare-datatypes ((Conc!2354 0))(
  ( (Node!2354 (left!5512 Conc!2354) (right!5842 Conc!2354) (csize!4938 Int) (cheight!2565 Int)) (Leaf!3563 (xs!4995 IArray!4709) (csize!4939 Int)) (Empty!2354) )
))
(declare-datatypes ((BalanceConc!4720 0))(
  ( (BalanceConc!4721 (c!117664 Conc!2354)) )
))
(declare-fun forall!1803 (BalanceConc!4720 Int) Bool)

(declare-fun map!1540 (BalanceConc!4718 Int) BalanceConc!4720)

(assert (=> b!647345 (forall!1803 (map!1540 lt!277448 lambda!19611) lambda!19612)))

(declare-datatypes ((Unit!12100 0))(
  ( (Unit!12101) )
))
(declare-fun lt!277458 () Unit!12100)

(declare-fun lt!277456 () List!6952)

(declare-fun mapPred!65 (List!6952 Int Int) Unit!12100)

(assert (=> b!647345 (= lt!277458 (mapPred!65 lt!277456 lambda!19611 lambda!19612))))

(declare-fun lt!277461 () Unit!12100)

(declare-fun lemmaRemoveIdsPreservesRules!0 (List!6952) Unit!12100)

(assert (=> b!647345 (= lt!277461 (lemmaRemoveIdsPreservesRules!0 lt!277456))))

(declare-fun list!2953 (BalanceConc!4718) List!6952)

(assert (=> b!647345 (= lt!277456 (list!2953 lt!277448))))

(declare-fun lt!277447 () BalanceConc!4720)

(declare-fun lambda!19609 () Int)

(declare-fun sortObjectsByID!0 (BalanceConc!4718) BalanceConc!4718)

(declare-fun map!1541 (BalanceConc!4720 Int) BalanceConc!4718)

(assert (=> b!647345 (= lt!277448 (sortObjectsByID!0 (map!1541 lt!277447 lambda!19609)))))

(declare-fun lambda!19610 () Int)

(declare-fun lt!277452 () List!6953)

(declare-fun lt!277453 () Unit!12100)

(declare-fun mapPred!66 (List!6953 Int Int) Unit!12100)

(assert (=> b!647345 (= lt!277453 (mapPred!66 lt!277452 lambda!19609 lambda!19610))))

(declare-fun lt!277460 () Unit!12100)

(declare-fun lemmaAddIdsPreservesRules!0 (List!6953) Unit!12100)

(assert (=> b!647345 (= lt!277460 (lemmaAddIdsPreservesRules!0 lt!277452))))

(declare-fun list!2954 (BalanceConc!4720) List!6953)

(assert (=> b!647345 (= lt!277452 (list!2954 lt!277447))))

(declare-fun lt!277444 () Int)

(declare-datatypes ((List!6954 0))(
  ( (Nil!6940) (Cons!6940 (h!12341 Int) (t!85450 List!6954)) )
))
(declare-datatypes ((IArray!4711 0))(
  ( (IArray!4712 (innerList!2413 List!6954)) )
))
(declare-datatypes ((Conc!2355 0))(
  ( (Node!2355 (left!5513 Conc!2355) (right!5843 Conc!2355) (csize!4940 Int) (cheight!2566 Int)) (Leaf!3564 (xs!4996 IArray!4711) (csize!4941 Int)) (Empty!2355) )
))
(declare-datatypes ((BalanceConc!4722 0))(
  ( (BalanceConc!4723 (c!117665 Conc!2355)) )
))
(declare-fun slicesMulti!0 (PrintableTokens!152 Int BalanceConc!4722 BalanceConc!4720) BalanceConc!4720)

(declare-fun indicesOfOpenBraces!0 (BalanceConc!4716 Int Int BalanceConc!4722) BalanceConc!4722)

(assert (=> b!647345 (= lt!277447 (slicesMulti!0 printableTokens!2 lt!277444 (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 0 (BalanceConc!4723 Empty!2355)) (BalanceConc!4721 Empty!2354)))))

(assert (=> b!647346 (= e!397417 (and e!397416 tp!199957))))

(declare-fun mapNonEmpty!2703 () Bool)

(declare-fun tp!199944 () Bool)

(declare-fun tp!199956 () Bool)

(assert (=> mapNonEmpty!2703 (= mapRes!2703 (and tp!199944 tp!199956))))

(declare-fun mapRest!2702 () (Array (_ BitVec 32) List!6951))

(declare-fun mapValue!2703 () List!6951)

(declare-fun mapKey!2703 () (_ BitVec 32))

(assert (=> mapNonEmpty!2703 (= (arr!1175 (_values!960 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) (store mapRest!2702 mapKey!2703 mapValue!2703))))

(declare-fun b!647347 () Bool)

(declare-fun e!397423 () Bool)

(assert (=> b!647347 (= e!397423 e!397408)))

(declare-fun b!647348 () Bool)

(declare-fun res!283521 () Bool)

(assert (=> b!647348 (=> (not res!283521) (not e!397405))))

(declare-fun rulesInvariant!1195 (LexerInterface!1260 List!6950) Bool)

(assert (=> b!647348 (= res!283521 (rulesInvariant!1195 Lexer!1258 lt!277449))))

(declare-fun e!397413 () Bool)

(declare-fun b!647349 () Bool)

(declare-fun tp!199946 () Bool)

(declare-fun inv!8768 (BalanceConc!4716) Bool)

(assert (=> b!647349 (= e!397413 (and tp!199946 (inv!8768 (tokens!1225 printableTokens!2)) e!397402))))

(declare-fun b!647350 () Bool)

(declare-fun e!397424 () Bool)

(declare-fun lt!277459 () MutLongMap!681)

(assert (=> b!647350 (= e!397411 (and e!397424 ((_ is LongMap!681) lt!277459)))))

(assert (=> b!647350 (= lt!277459 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))

(declare-fun b!647351 () Bool)

(assert (=> b!647351 (= e!397414 e!397403)))

(declare-fun res!283520 () Bool)

(assert (=> b!647351 (=> res!283520 e!397403)))

(assert (=> b!647351 (= res!283520 (not ((_ is Some!1668) lt!277446)))))

(declare-fun recombineSlicesWithSep!0 (BalanceConc!4720 PrintableTokens!152 PrintableTokens!152) Option!1669)

(declare-fun emptyPrintableTokens!17 (List!6950) PrintableTokens!152)

(assert (=> b!647351 (= lt!277446 (recombineSlicesWithSep!0 (map!1540 lt!277448 lambda!19611) (v!17144 (_1!4106 lt!277450)) (emptyPrintableTokens!17 lt!277449)))))

(declare-fun b!647352 () Bool)

(declare-fun res!283511 () Bool)

(assert (=> b!647352 (=> res!283511 e!397414)))

(assert (=> b!647352 (= res!283511 (not (usesJsonRules!0 (v!17144 (_1!4106 lt!277457)))))))

(declare-fun b!647337 () Bool)

(declare-fun tp!199948 () Bool)

(assert (=> b!647337 (= e!397401 (and tp!199948 mapRes!2703))))

(declare-fun condMapEmpty!2702 () Bool)

(declare-fun mapDefault!2702 () List!6951)

(assert (=> b!647337 (= condMapEmpty!2702 (= (arr!1175 (_values!960 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) ((as const (Array (_ BitVec 32) List!6951)) mapDefault!2702)))))

(declare-fun res!283523 () Bool)

(assert (=> start!63478 (=> (not res!283523) (not e!397410))))

(assert (=> start!63478 (= res!283523 (> lt!277444 0))))

(declare-fun size!5492 (PrintableTokens!152) Int)

(assert (=> start!63478 (= lt!277444 (size!5492 printableTokens!2))))

(assert (=> start!63478 e!397410))

(declare-fun inv!8769 (PrintableTokens!152) Bool)

(assert (=> start!63478 (and (inv!8769 printableTokens!2) e!397413)))

(declare-fun inv!8770 (CacheDown!314) Bool)

(assert (=> start!63478 (and (inv!8770 cacheDown!364) e!397423)))

(declare-fun inv!8771 (CacheUp!312) Bool)

(assert (=> start!63478 (and (inv!8771 cacheUp!351) e!397420)))

(declare-fun b!647353 () Bool)

(declare-fun e!397422 () Bool)

(assert (=> b!647353 (= e!397424 e!397422)))

(declare-fun mapIsEmpty!2703 () Bool)

(assert (=> mapIsEmpty!2703 mapRes!2702))

(declare-fun b!647354 () Bool)

(assert (=> b!647354 (= e!397422 e!397412)))

(declare-fun tp!199955 () Bool)

(declare-fun tp!199951 () Bool)

(declare-fun array_inv!858 (array!2589) Bool)

(assert (=> b!647355 (= e!397425 (and tp!199953 tp!199951 tp!199955 (array_inv!856 (_keys!974 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) (array_inv!858 (_values!959 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) e!397407))))

(declare-fun b!647356 () Bool)

(declare-fun isEmpty!4735 (BalanceConc!4714) Bool)

(assert (=> b!647356 (= e!397421 (isEmpty!4735 (_2!4107 lt!277454)))))

(declare-fun b!647357 () Bool)

(assert (=> b!647357 (= e!397409 e!397406)))

(declare-fun res!283519 () Bool)

(assert (=> b!647357 (=> res!283519 e!397406)))

(assert (=> b!647357 (= res!283519 (not (usesJsonRules!0 (v!17144 lt!277455))))))

(declare-fun print!510 (PrintableTokens!152) BalanceConc!4714)

(assert (=> b!647357 (= lt!277445 (print!510 (v!17144 lt!277455)))))

(assert (= (and start!63478 res!283523) b!647338))

(assert (= (and b!647338 res!283515) b!647348))

(assert (= (and b!647348 res!283521) b!647330))

(assert (= (and b!647330 res!283517) b!647345))

(assert (= (and b!647345 (not res!283514)) b!647332))

(assert (= (and b!647332 (not res!283516)) b!647334))

(assert (= (and b!647334 (not res!283518)) b!647352))

(assert (= (and b!647352 (not res!283511)) b!647351))

(assert (= (and b!647351 (not res!283520)) b!647344))

(assert (= (and b!647344 (not res!283513)) b!647357))

(assert (= (and b!647357 (not res!283519)) b!647340))

(assert (= (and b!647340 (not res!283512)) b!647343))

(assert (= (and b!647343 (not res!283522)) b!647356))

(assert (= b!647349 b!647333))

(assert (= start!63478 b!647349))

(assert (= (and b!647337 condMapEmpty!2702) mapIsEmpty!2702))

(assert (= (and b!647337 (not condMapEmpty!2702)) mapNonEmpty!2703))

(assert (= b!647331 b!647337))

(assert (= b!647354 b!647331))

(assert (= b!647353 b!647354))

(assert (= (and b!647350 ((_ is LongMap!681) (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))) b!647353))

(assert (= b!647342 b!647350))

(assert (= (and b!647347 ((_ is HashMap!653) (cache!1040 cacheDown!364))) b!647342))

(assert (= start!63478 b!647347))

(assert (= (and b!647336 condMapEmpty!2703) mapIsEmpty!2703))

(assert (= (and b!647336 (not condMapEmpty!2703)) mapNonEmpty!2702))

(assert (= b!647355 b!647336))

(assert (= b!647339 b!647355))

(assert (= b!647341 b!647339))

(assert (= (and b!647329 ((_ is LongMap!680) (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))) b!647341))

(assert (= b!647346 b!647329))

(assert (= (and b!647335 ((_ is HashMap!652) (cache!1039 cacheUp!351))) b!647346))

(assert (= start!63478 b!647335))

(declare-fun m!917913 () Bool)

(assert (=> b!647349 m!917913))

(declare-fun m!917915 () Bool)

(assert (=> b!647333 m!917915))

(declare-fun m!917917 () Bool)

(assert (=> b!647348 m!917917))

(declare-fun m!917919 () Bool)

(assert (=> mapNonEmpty!2703 m!917919))

(declare-fun m!917921 () Bool)

(assert (=> b!647331 m!917921))

(declare-fun m!917923 () Bool)

(assert (=> b!647331 m!917923))

(declare-fun m!917925 () Bool)

(assert (=> start!63478 m!917925))

(declare-fun m!917927 () Bool)

(assert (=> start!63478 m!917927))

(declare-fun m!917929 () Bool)

(assert (=> start!63478 m!917929))

(declare-fun m!917931 () Bool)

(assert (=> start!63478 m!917931))

(declare-fun m!917933 () Bool)

(assert (=> b!647355 m!917933))

(declare-fun m!917935 () Bool)

(assert (=> b!647355 m!917935))

(declare-fun m!917937 () Bool)

(assert (=> mapNonEmpty!2702 m!917937))

(declare-fun m!917939 () Bool)

(assert (=> b!647338 m!917939))

(declare-fun m!917941 () Bool)

(assert (=> b!647338 m!917941))

(declare-fun m!917943 () Bool)

(assert (=> b!647334 m!917943))

(declare-fun m!917945 () Bool)

(assert (=> b!647332 m!917945))

(declare-fun m!917947 () Bool)

(assert (=> b!647356 m!917947))

(declare-fun m!917949 () Bool)

(assert (=> b!647345 m!917949))

(declare-fun m!917951 () Bool)

(assert (=> b!647345 m!917951))

(declare-fun m!917953 () Bool)

(assert (=> b!647345 m!917953))

(declare-fun m!917955 () Bool)

(assert (=> b!647345 m!917955))

(declare-fun m!917957 () Bool)

(assert (=> b!647345 m!917957))

(assert (=> b!647345 m!917951))

(declare-fun m!917959 () Bool)

(assert (=> b!647345 m!917959))

(declare-fun m!917961 () Bool)

(assert (=> b!647345 m!917961))

(declare-fun m!917963 () Bool)

(assert (=> b!647345 m!917963))

(declare-fun m!917965 () Bool)

(assert (=> b!647345 m!917965))

(assert (=> b!647345 m!917963))

(declare-fun m!917967 () Bool)

(assert (=> b!647345 m!917967))

(declare-fun m!917969 () Bool)

(assert (=> b!647345 m!917969))

(declare-fun m!917971 () Bool)

(assert (=> b!647345 m!917971))

(declare-fun m!917973 () Bool)

(assert (=> b!647345 m!917973))

(assert (=> b!647345 m!917971))

(declare-fun m!917975 () Bool)

(assert (=> b!647345 m!917975))

(declare-fun m!917977 () Bool)

(assert (=> b!647345 m!917977))

(declare-fun m!917979 () Bool)

(assert (=> b!647330 m!917979))

(declare-fun m!917981 () Bool)

(assert (=> b!647357 m!917981))

(declare-fun m!917983 () Bool)

(assert (=> b!647357 m!917983))

(assert (=> b!647351 m!917963))

(declare-fun m!917985 () Bool)

(assert (=> b!647351 m!917985))

(assert (=> b!647351 m!917963))

(assert (=> b!647351 m!917985))

(declare-fun m!917987 () Bool)

(assert (=> b!647351 m!917987))

(declare-fun m!917989 () Bool)

(assert (=> b!647352 m!917989))

(declare-fun m!917991 () Bool)

(assert (=> b!647343 m!917991))

(declare-fun m!917993 () Bool)

(assert (=> b!647343 m!917993))

(declare-fun m!917995 () Bool)

(assert (=> b!647343 m!917995))

(declare-fun m!917997 () Bool)

(assert (=> b!647344 m!917997))

(check-sat (not b!647337) (not mapNonEmpty!2702) (not b!647343) b_and!62691 (not b!647334) (not b!647331) (not b_next!18949) (not b!647355) (not b!647344) (not b_next!18951) (not b!647338) (not b!647357) (not b!647349) b_and!62689 (not b!647348) (not b_next!18953) b_and!62693 (not b!647332) (not b_next!18955) (not b!647333) (not b!647336) (not b!647352) (not start!63478) (not b!647330) (not mapNonEmpty!2703) (not b!647345) b_and!62687 (not b!647356) (not b!647351))
(check-sat (not b_next!18953) b_and!62691 (not b_next!18949) (not b_next!18951) b_and!62689 b_and!62687 b_and!62693 (not b_next!18955))
(get-model)

(declare-fun d!224259 () Bool)

(assert (=> d!224259 (= (usesJsonRules!0 (v!17144 (_1!4106 lt!277450))) (= (rules!8237 (v!17144 (_1!4106 lt!277450))) (rules!109 JsonLexer!207)))))

(declare-fun bs!84556 () Bool)

(assert (= bs!84556 d!224259))

(assert (=> bs!84556 m!917941))

(assert (=> b!647332 d!224259))

(declare-fun d!224261 () Bool)

(assert (=> d!224261 (= (array_inv!856 (_keys!975 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) (bvsge (size!5489 (_keys!975 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!647331 d!224261))

(declare-fun d!224263 () Bool)

(assert (=> d!224263 (= (array_inv!857 (_values!960 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) (bvsge (size!5491 (_values!960 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364))))))) #b00000000000000000000000000000000))))

(assert (=> b!647331 d!224263))

(declare-fun d!224265 () Bool)

(declare-fun isBalanced!628 (Conc!2352) Bool)

(assert (=> d!224265 (= (inv!8768 (tokens!1225 printableTokens!2)) (isBalanced!628 (c!117662 (tokens!1225 printableTokens!2))))))

(declare-fun bs!84557 () Bool)

(assert (= bs!84557 d!224265))

(declare-fun m!917999 () Bool)

(assert (=> bs!84557 m!917999))

(assert (=> b!647349 d!224265))

(declare-fun d!224267 () Bool)

(declare-fun res!283528 () Bool)

(declare-fun e!397428 () Bool)

(assert (=> d!224267 (=> (not res!283528) (not e!397428))))

(declare-fun rulesValid!511 (LexerInterface!1260 List!6950) Bool)

(assert (=> d!224267 (= res!283528 (rulesValid!511 Lexer!1258 lt!277449))))

(assert (=> d!224267 (= (rulesInvariant!1195 Lexer!1258 lt!277449) e!397428)))

(declare-fun b!647360 () Bool)

(declare-datatypes ((List!6955 0))(
  ( (Nil!6941) (Cons!6941 (h!12342 String!8838) (t!85497 List!6955)) )
))
(declare-fun noDuplicateTag!511 (LexerInterface!1260 List!6950 List!6955) Bool)

(assert (=> b!647360 (= e!397428 (noDuplicateTag!511 Lexer!1258 lt!277449 Nil!6941))))

(assert (= (and d!224267 res!283528) b!647360))

(declare-fun m!918001 () Bool)

(assert (=> d!224267 m!918001))

(declare-fun m!918003 () Bool)

(assert (=> b!647360 m!918003))

(assert (=> b!647348 d!224267))

(declare-fun d!224269 () Bool)

(assert (=> d!224269 (= (usesJsonRules!0 printableTokens!2) (= (rules!8237 printableTokens!2) (rules!109 JsonLexer!207)))))

(declare-fun bs!84558 () Bool)

(assert (= bs!84558 d!224269))

(assert (=> bs!84558 m!917941))

(assert (=> b!647330 d!224269))

(declare-fun d!224271 () Bool)

(assert (=> d!224271 (= (usesJsonRules!0 (v!17144 lt!277455)) (= (rules!8237 (v!17144 lt!277455)) (rules!109 JsonLexer!207)))))

(declare-fun bs!84559 () Bool)

(assert (= bs!84559 d!224271))

(assert (=> bs!84559 m!917941))

(assert (=> b!647357 d!224271))

(declare-fun d!224273 () Bool)

(declare-fun e!397431 () Bool)

(assert (=> d!224273 e!397431))

(declare-fun res!283531 () Bool)

(assert (=> d!224273 (=> (not res!283531) (not e!397431))))

(declare-fun lt!277466 () BalanceConc!4714)

(assert (=> d!224273 (= res!283531 (= (list!2952 (_1!4107 (lex!583 Lexer!1258 (rules!8237 (v!17144 lt!277455)) lt!277466))) (list!2952 (tokens!1225 (v!17144 lt!277455)))))))

(declare-fun print!511 (LexerInterface!1260 BalanceConc!4716) BalanceConc!4714)

(assert (=> d!224273 (= lt!277466 (print!511 Lexer!1258 (tokens!1225 (v!17144 lt!277455))))))

(declare-fun lt!277467 () Unit!12100)

(declare-fun theoremInvertabilityWhenTokenListSeparable!7 (LexerInterface!1260 List!6950 List!6949) Unit!12100)

(assert (=> d!224273 (= lt!277467 (theoremInvertabilityWhenTokenListSeparable!7 Lexer!1258 (rules!8237 (v!17144 lt!277455)) (list!2952 (tokens!1225 (v!17144 lt!277455)))))))

(assert (=> d!224273 (= (print!510 (v!17144 lt!277455)) lt!277466)))

(declare-fun b!647363 () Bool)

(declare-fun isEmpty!4736 (List!6948) Bool)

(declare-fun list!2955 (BalanceConc!4714) List!6948)

(assert (=> b!647363 (= e!397431 (isEmpty!4736 (list!2955 (_2!4107 (lex!583 Lexer!1258 (rules!8237 (v!17144 lt!277455)) lt!277466)))))))

(assert (= (and d!224273 res!283531) b!647363))

(declare-fun m!918005 () Bool)

(assert (=> d!224273 m!918005))

(assert (=> d!224273 m!917993))

(declare-fun m!918007 () Bool)

(assert (=> d!224273 m!918007))

(assert (=> d!224273 m!917993))

(declare-fun m!918009 () Bool)

(assert (=> d!224273 m!918009))

(declare-fun m!918011 () Bool)

(assert (=> d!224273 m!918011))

(assert (=> b!647363 m!918007))

(declare-fun m!918013 () Bool)

(assert (=> b!647363 m!918013))

(assert (=> b!647363 m!918013))

(declare-fun m!918015 () Bool)

(assert (=> b!647363 m!918015))

(assert (=> b!647357 d!224273))

(declare-fun d!224275 () Bool)

(assert (=> d!224275 (= (isEmpty!4734 lt!277449) ((_ is Nil!6936) lt!277449))))

(assert (=> b!647338 d!224275))

(declare-fun d!224277 () Bool)

(declare-fun whitespaceRule!0 (JsonLexer!206) Rule!2572)

(declare-fun integerLiteralRule!0 (JsonLexer!206) Rule!2572)

(declare-fun floatLiteralRule!0 (JsonLexer!206) Rule!2572)

(declare-fun trueRule!0 (JsonLexer!206) Rule!2572)

(declare-fun falseRule!0 (JsonLexer!206) Rule!2572)

(declare-fun nullRule!0 (JsonLexer!206) Rule!2572)

(declare-fun jsonstringRule!0 (JsonLexer!206) Rule!2572)

(declare-fun lBraceRule!0 (JsonLexer!206) Rule!2572)

(declare-fun rBraceRule!0 (JsonLexer!206) Rule!2572)

(declare-fun lBracketRule!0 (JsonLexer!206) Rule!2572)

(declare-fun rBracketRule!0 (JsonLexer!206) Rule!2572)

(declare-fun colonRule!0 (JsonLexer!206) Rule!2572)

(declare-fun commaRule!0 (JsonLexer!206) Rule!2572)

(declare-fun eofRule!0 (JsonLexer!206) Rule!2572)

(assert (=> d!224277 (= (rules!109 JsonLexer!207) (Cons!6936 (whitespaceRule!0 JsonLexer!207) (Cons!6936 (integerLiteralRule!0 JsonLexer!207) (Cons!6936 (floatLiteralRule!0 JsonLexer!207) (Cons!6936 (trueRule!0 JsonLexer!207) (Cons!6936 (falseRule!0 JsonLexer!207) (Cons!6936 (nullRule!0 JsonLexer!207) (Cons!6936 (jsonstringRule!0 JsonLexer!207) (Cons!6936 (lBraceRule!0 JsonLexer!207) (Cons!6936 (rBraceRule!0 JsonLexer!207) (Cons!6936 (lBracketRule!0 JsonLexer!207) (Cons!6936 (rBracketRule!0 JsonLexer!207) (Cons!6936 (colonRule!0 JsonLexer!207) (Cons!6936 (commaRule!0 JsonLexer!207) (Cons!6936 (eofRule!0 JsonLexer!207) Nil!6936)))))))))))))))))

(declare-fun bs!84560 () Bool)

(assert (= bs!84560 d!224277))

(declare-fun m!918017 () Bool)

(assert (=> bs!84560 m!918017))

(declare-fun m!918019 () Bool)

(assert (=> bs!84560 m!918019))

(declare-fun m!918021 () Bool)

(assert (=> bs!84560 m!918021))

(declare-fun m!918023 () Bool)

(assert (=> bs!84560 m!918023))

(declare-fun m!918025 () Bool)

(assert (=> bs!84560 m!918025))

(declare-fun m!918027 () Bool)

(assert (=> bs!84560 m!918027))

(declare-fun m!918029 () Bool)

(assert (=> bs!84560 m!918029))

(declare-fun m!918031 () Bool)

(assert (=> bs!84560 m!918031))

(declare-fun m!918033 () Bool)

(assert (=> bs!84560 m!918033))

(declare-fun m!918035 () Bool)

(assert (=> bs!84560 m!918035))

(declare-fun m!918037 () Bool)

(assert (=> bs!84560 m!918037))

(declare-fun m!918039 () Bool)

(assert (=> bs!84560 m!918039))

(declare-fun m!918041 () Bool)

(assert (=> bs!84560 m!918041))

(declare-fun m!918043 () Bool)

(assert (=> bs!84560 m!918043))

(assert (=> b!647338 d!224277))

(declare-fun d!224279 () Bool)

(declare-fun lt!277470 () Bool)

(assert (=> d!224279 (= lt!277470 (isEmpty!4736 (list!2955 (_2!4107 lt!277454))))))

(declare-fun isEmpty!4737 (Conc!2351) Bool)

(assert (=> d!224279 (= lt!277470 (isEmpty!4737 (c!117661 (_2!4107 lt!277454))))))

(assert (=> d!224279 (= (isEmpty!4735 (_2!4107 lt!277454)) lt!277470)))

(declare-fun bs!84561 () Bool)

(assert (= bs!84561 d!224279))

(declare-fun m!918045 () Bool)

(assert (=> bs!84561 m!918045))

(assert (=> bs!84561 m!918045))

(declare-fun m!918047 () Bool)

(assert (=> bs!84561 m!918047))

(declare-fun m!918049 () Bool)

(assert (=> bs!84561 m!918049))

(assert (=> b!647356 d!224279))

(declare-fun d!224281 () Bool)

(assert (=> d!224281 (= (array_inv!856 (_keys!974 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) (bvsge (size!5489 (_keys!974 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!647355 d!224281))

(declare-fun d!224283 () Bool)

(assert (=> d!224283 (= (array_inv!858 (_values!959 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) (bvsge (size!5488 (_values!959 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351))))))) #b00000000000000000000000000000000))))

(assert (=> b!647355 d!224283))

(declare-fun bs!84562 () Bool)

(declare-fun d!224285 () Bool)

(assert (= bs!84562 (and d!224285 b!647345)))

(declare-fun lambda!19615 () Int)

(assert (=> bs!84562 (not (= lambda!19615 lambda!19610))))

(assert (=> d!224285 true))

(declare-fun order!5209 () Int)

(declare-fun order!5211 () Int)

(declare-fun dynLambda!3780 (Int Int) Int)

(declare-fun dynLambda!3781 (Int Int) Int)

(assert (=> d!224285 (< (dynLambda!3780 order!5209 lambda!19611) (dynLambda!3781 order!5211 lambda!19615))))

(assert (=> d!224285 true))

(declare-fun order!5213 () Int)

(declare-fun dynLambda!3782 (Int Int) Int)

(assert (=> d!224285 (< (dynLambda!3782 order!5213 lambda!19612) (dynLambda!3781 order!5211 lambda!19615))))

(declare-fun forall!1804 (List!6953 Int) Bool)

(declare-fun map!1542 (List!6952 Int) List!6953)

(assert (=> d!224285 (forall!1804 (map!1542 lt!277456 lambda!19611) lambda!19612)))

(declare-fun lt!277473 () Unit!12100)

(declare-fun choose!4654 (List!6952 Int Int) Unit!12100)

(assert (=> d!224285 (= lt!277473 (choose!4654 lt!277456 lambda!19611 lambda!19612))))

(declare-fun forall!1805 (List!6952 Int) Bool)

(assert (=> d!224285 (forall!1805 lt!277456 lambda!19615)))

(assert (=> d!224285 (= (mapPred!65 lt!277456 lambda!19611 lambda!19612) lt!277473)))

(declare-fun bs!84563 () Bool)

(assert (= bs!84563 d!224285))

(declare-fun m!918051 () Bool)

(assert (=> bs!84563 m!918051))

(assert (=> bs!84563 m!918051))

(declare-fun m!918053 () Bool)

(assert (=> bs!84563 m!918053))

(declare-fun m!918055 () Bool)

(assert (=> bs!84563 m!918055))

(declare-fun m!918057 () Bool)

(assert (=> bs!84563 m!918057))

(assert (=> b!647345 d!224285))

(declare-fun d!224287 () Bool)

(declare-fun e!397434 () Bool)

(assert (=> d!224287 e!397434))

(declare-fun res!283534 () Bool)

(assert (=> d!224287 (=> (not res!283534) (not e!397434))))

(declare-fun lt!277476 () BalanceConc!4718)

(declare-fun map!1543 (List!6953 Int) List!6952)

(assert (=> d!224287 (= res!283534 (= (list!2953 lt!277476) (map!1543 (list!2954 lt!277447) lambda!19609)))))

(declare-fun map!1544 (Conc!2354 Int) Conc!2353)

(assert (=> d!224287 (= lt!277476 (BalanceConc!4719 (map!1544 (c!117664 lt!277447) lambda!19609)))))

(assert (=> d!224287 (= (map!1541 lt!277447 lambda!19609) lt!277476)))

(declare-fun b!647370 () Bool)

(declare-fun isBalanced!629 (Conc!2353) Bool)

(assert (=> b!647370 (= e!397434 (isBalanced!629 (map!1544 (c!117664 lt!277447) lambda!19609)))))

(assert (= (and d!224287 res!283534) b!647370))

(declare-fun m!918059 () Bool)

(assert (=> d!224287 m!918059))

(assert (=> d!224287 m!917975))

(assert (=> d!224287 m!917975))

(declare-fun m!918061 () Bool)

(assert (=> d!224287 m!918061))

(declare-fun m!918063 () Bool)

(assert (=> d!224287 m!918063))

(assert (=> b!647370 m!918063))

(assert (=> b!647370 m!918063))

(declare-fun m!918065 () Bool)

(assert (=> b!647370 m!918065))

(assert (=> b!647345 d!224287))

(declare-fun d!224289 () Bool)

(declare-fun e!397440 () Bool)

(assert (=> d!224289 e!397440))

(declare-fun res!283537 () Bool)

(assert (=> d!224289 (=> res!283537 e!397440)))

(declare-fun lt!277484 () tuple3!606)

(declare-fun isEmpty!4738 (Option!1669) Bool)

(assert (=> d!224289 (= res!283537 (isEmpty!4738 (_1!4106 lt!277484)))))

(declare-fun e!397439 () Option!1669)

(declare-datatypes ((tuple3!608 0))(
  ( (tuple3!609 (_1!4109 Bool) (_2!4109 CacheUp!312) (_3!355 CacheDown!314)) )
))
(declare-fun lt!277483 () tuple3!608)

(assert (=> d!224289 (= lt!277484 (tuple3!607 e!397439 (_2!4109 lt!277483) (_3!355 lt!277483)))))

(declare-fun c!117670 () Bool)

(assert (=> d!224289 (= c!117670 (not (_1!4109 lt!277483)))))

(declare-fun lt!277485 () BalanceConc!4716)

(declare-fun rulesProduceEachTokenIndividuallyMem!11 (LexerInterface!1260 List!6950 BalanceConc!4716 CacheUp!312 CacheDown!314) tuple3!608)

(assert (=> d!224289 (= lt!277483 (rulesProduceEachTokenIndividuallyMem!11 Lexer!1258 (rules!109 JsonLexer!207) lt!277485 (_2!4106 lt!277451) (_3!354 lt!277451)))))

(declare-fun singletonSeq!444 (Token!2494) BalanceConc!4716)

(declare-fun apply!1660 (TokenValueInjection!2592 BalanceConc!4714) TokenValue!1420)

(declare-datatypes ((KeywordValueInjection!50 0))(
  ( (KeywordValueInjection!51) )
))
(declare-fun injection!9 (KeywordValueInjection!50) TokenValueInjection!2592)

(declare-fun singletonSeq!445 ((_ BitVec 16)) BalanceConc!4714)

(assert (=> d!224289 (= lt!277485 (singletonSeq!444 (Token!2495 (apply!1660 (injection!9 KeywordValueInjection!51) (singletonSeq!445 #x005D)) (rBracketRule!0 JsonLexer!207) 1 (Cons!6934 #x005D Nil!6934))))))

(assert (=> d!224289 (not (isEmpty!4734 (rules!109 JsonLexer!207)))))

(assert (=> d!224289 (= (createRightBracketSeparator!0 (_2!4106 lt!277451) (_3!354 lt!277451)) lt!277484)))

(declare-fun b!647377 () Bool)

(assert (=> b!647377 (= e!397439 None!1668)))

(declare-fun b!647378 () Bool)

(declare-fun printableTokensFromTokens!14 (List!6950 BalanceConc!4716) Option!1669)

(assert (=> b!647378 (= e!397439 (printableTokensFromTokens!14 (rules!109 JsonLexer!207) lt!277485))))

(declare-fun b!647379 () Bool)

(declare-fun get!2493 (Option!1669) PrintableTokens!152)

(assert (=> b!647379 (= e!397440 (usesJsonRules!0 (get!2493 (_1!4106 lt!277484))))))

(assert (= (and d!224289 c!117670) b!647377))

(assert (= (and d!224289 (not c!117670)) b!647378))

(assert (= (and d!224289 (not res!283537)) b!647379))

(declare-fun m!918067 () Bool)

(assert (=> d!224289 m!918067))

(declare-fun m!918069 () Bool)

(assert (=> d!224289 m!918069))

(declare-fun m!918071 () Bool)

(assert (=> d!224289 m!918071))

(assert (=> d!224289 m!918069))

(assert (=> d!224289 m!917941))

(declare-fun m!918073 () Bool)

(assert (=> d!224289 m!918073))

(assert (=> d!224289 m!917941))

(declare-fun m!918075 () Bool)

(assert (=> d!224289 m!918075))

(assert (=> d!224289 m!918067))

(declare-fun m!918077 () Bool)

(assert (=> d!224289 m!918077))

(declare-fun m!918079 () Bool)

(assert (=> d!224289 m!918079))

(assert (=> d!224289 m!918041))

(assert (=> d!224289 m!917941))

(assert (=> b!647378 m!917941))

(assert (=> b!647378 m!917941))

(declare-fun m!918081 () Bool)

(assert (=> b!647378 m!918081))

(declare-fun m!918083 () Bool)

(assert (=> b!647379 m!918083))

(assert (=> b!647379 m!918083))

(declare-fun m!918085 () Bool)

(assert (=> b!647379 m!918085))

(assert (=> b!647345 d!224289))

(declare-fun bs!84564 () Bool)

(declare-fun d!224291 () Bool)

(assert (= bs!84564 (and d!224291 b!647345)))

(declare-fun lambda!19620 () Int)

(assert (=> bs!84564 (= lambda!19620 lambda!19612)))

(declare-fun lambda!19621 () Int)

(assert (=> bs!84564 (not (= lambda!19621 lambda!19612))))

(assert (=> d!224291 (not (= lambda!19621 lambda!19620))))

(assert (=> d!224291 (forall!1804 lt!277452 lambda!19621)))

(declare-fun lt!277490 () Unit!12100)

(declare-fun e!397443 () Unit!12100)

(assert (=> d!224291 (= lt!277490 e!397443)))

(declare-fun c!117673 () Bool)

(assert (=> d!224291 (= c!117673 ((_ is Nil!6939) lt!277452))))

(assert (=> d!224291 (forall!1804 lt!277452 lambda!19620)))

(assert (=> d!224291 (= (lemmaAddIdsPreservesRules!0 lt!277452) lt!277490)))

(declare-fun b!647384 () Bool)

(declare-fun Unit!12102 () Unit!12100)

(assert (=> b!647384 (= e!397443 Unit!12102)))

(declare-fun b!647385 () Bool)

(declare-fun Unit!12103 () Unit!12100)

(assert (=> b!647385 (= e!397443 Unit!12103)))

(declare-fun lt!277491 () Unit!12100)

(assert (=> b!647385 (= lt!277491 (lemmaAddIdsPreservesRules!0 (t!85449 lt!277452)))))

(assert (= (and d!224291 c!117673) b!647384))

(assert (= (and d!224291 (not c!117673)) b!647385))

(declare-fun m!918087 () Bool)

(assert (=> d!224291 m!918087))

(declare-fun m!918089 () Bool)

(assert (=> d!224291 m!918089))

(declare-fun m!918091 () Bool)

(assert (=> b!647385 m!918091))

(assert (=> b!647345 d!224291))

(declare-fun bs!84565 () Bool)

(declare-fun d!224293 () Bool)

(assert (= bs!84565 (and d!224293 b!647345)))

(declare-fun lambda!19624 () Int)

(assert (=> bs!84565 (not (= lambda!19624 lambda!19612))))

(declare-fun bs!84566 () Bool)

(assert (= bs!84566 (and d!224293 d!224291)))

(assert (=> bs!84566 (not (= lambda!19624 lambda!19620))))

(assert (=> bs!84566 (not (= lambda!19624 lambda!19621))))

(assert (=> d!224293 true))

(declare-fun order!5215 () Int)

(declare-fun dynLambda!3783 (Int Int) Int)

(assert (=> d!224293 (< (dynLambda!3783 order!5215 lambda!19609) (dynLambda!3782 order!5213 lambda!19624))))

(assert (=> d!224293 true))

(assert (=> d!224293 (< (dynLambda!3781 order!5211 lambda!19610) (dynLambda!3782 order!5213 lambda!19624))))

(assert (=> d!224293 (forall!1805 (map!1543 lt!277452 lambda!19609) lambda!19610)))

(declare-fun lt!277494 () Unit!12100)

(declare-fun choose!4655 (List!6953 Int Int) Unit!12100)

(assert (=> d!224293 (= lt!277494 (choose!4655 lt!277452 lambda!19609 lambda!19610))))

(assert (=> d!224293 (forall!1804 lt!277452 lambda!19624)))

(assert (=> d!224293 (= (mapPred!66 lt!277452 lambda!19609 lambda!19610) lt!277494)))

(declare-fun bs!84567 () Bool)

(assert (= bs!84567 d!224293))

(declare-fun m!918093 () Bool)

(assert (=> bs!84567 m!918093))

(assert (=> bs!84567 m!918093))

(declare-fun m!918095 () Bool)

(assert (=> bs!84567 m!918095))

(declare-fun m!918097 () Bool)

(assert (=> bs!84567 m!918097))

(declare-fun m!918099 () Bool)

(assert (=> bs!84567 m!918099))

(assert (=> b!647345 d!224293))

(declare-fun b!647406 () Bool)

(assert (=> b!647406 true))

(declare-fun bs!84568 () Bool)

(declare-fun d!224295 () Bool)

(assert (= bs!84568 (and d!224295 b!647406)))

(declare-fun lambda!19630 () Int)

(declare-fun lambda!19629 () Int)

(assert (=> bs!84568 (= lambda!19630 lambda!19629)))

(assert (=> d!224295 true))

(declare-fun lt!277503 () Unit!12100)

(declare-fun lemmaConcatPreservesForall!57 (List!6954 List!6954 Int) Unit!12100)

(declare-fun list!2956 (BalanceConc!4722) List!6954)

(assert (=> b!647406 (= lt!277503 (lemmaConcatPreservesForall!57 (list!2956 (BalanceConc!4723 Empty!2355)) (Cons!6940 0 Nil!6940) lambda!19629))))

(declare-fun e!397454 () BalanceConc!4722)

(declare-fun call!41976 () BalanceConc!4722)

(assert (=> b!647406 (= e!397454 call!41976)))

(declare-fun bm!41971 () Bool)

(declare-fun c!117682 () Bool)

(declare-fun c!117680 () Bool)

(assert (=> bm!41971 (= c!117682 c!117680)))

(declare-fun e!397458 () BalanceConc!4722)

(assert (=> bm!41971 (= call!41976 (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 (+ 0 1) e!397458))))

(declare-fun lt!277501 () BalanceConc!4722)

(declare-fun forall!1806 (BalanceConc!4722 Int) Bool)

(assert (=> d!224295 (forall!1806 lt!277501 lambda!19630)))

(declare-fun e!397456 () BalanceConc!4722)

(assert (=> d!224295 (= lt!277501 e!397456)))

(declare-fun c!117681 () Bool)

(declare-fun size!5495 (BalanceConc!4716) Int)

(assert (=> d!224295 (= c!117681 (>= 0 (size!5495 (tokens!1225 printableTokens!2))))))

(declare-fun e!397455 () Bool)

(assert (=> d!224295 e!397455))

(declare-fun res!283543 () Bool)

(assert (=> d!224295 (=> (not res!283543) (not e!397455))))

(assert (=> d!224295 (= res!283543 (>= 0 0))))

(assert (=> d!224295 (= (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 0 (BalanceConc!4723 Empty!2355)) lt!277501)))

(declare-fun b!647407 () Bool)

(assert (=> b!647407 (= e!397458 (BalanceConc!4723 Empty!2355))))

(declare-fun b!647408 () Bool)

(declare-fun e!397457 () Bool)

(declare-fun lt!277502 () Token!2494)

(declare-fun isKeywordValue!0 (Token!2494 TokenValue!1420) Bool)

(assert (=> b!647408 (= e!397457 (isKeywordValue!0 lt!277502 RightBrace!1420))))

(declare-fun b!647409 () Bool)

(declare-fun append!231 (BalanceConc!4722 Int) BalanceConc!4722)

(assert (=> b!647409 (= e!397458 (append!231 (BalanceConc!4723 Empty!2355) 0))))

(declare-fun b!647410 () Bool)

(assert (=> b!647410 (= e!397456 (BalanceConc!4723 Empty!2355))))

(declare-fun b!647411 () Bool)

(assert (=> b!647411 (= e!397456 e!397454)))

(declare-fun apply!1661 (BalanceConc!4716 Int) Token!2494)

(assert (=> b!647411 (= lt!277502 (apply!1661 (tokens!1225 printableTokens!2) 0))))

(declare-fun res!283542 () Bool)

(assert (=> b!647411 (= res!283542 (isKeywordValue!0 lt!277502 LeftBrace!1420))))

(assert (=> b!647411 (=> res!283542 e!397457)))

(assert (=> b!647411 (= c!117680 e!397457)))

(declare-fun b!647412 () Bool)

(assert (=> b!647412 (= e!397455 (<= 0 (size!5495 (tokens!1225 printableTokens!2))))))

(declare-fun b!647413 () Bool)

(assert (=> b!647413 (= e!397454 call!41976)))

(assert (= (and d!224295 res!283543) b!647412))

(assert (= (and d!224295 c!117681) b!647410))

(assert (= (and d!224295 (not c!117681)) b!647411))

(assert (= (and b!647411 (not res!283542)) b!647408))

(assert (= (and b!647411 c!117680) b!647406))

(assert (= (and b!647411 (not c!117680)) b!647413))

(assert (= (or b!647406 b!647413) bm!41971))

(assert (= (and bm!41971 c!117682) b!647409))

(assert (= (and bm!41971 (not c!117682)) b!647407))

(declare-fun m!918101 () Bool)

(assert (=> b!647411 m!918101))

(declare-fun m!918103 () Bool)

(assert (=> b!647411 m!918103))

(declare-fun m!918105 () Bool)

(assert (=> bm!41971 m!918105))

(declare-fun m!918107 () Bool)

(assert (=> d!224295 m!918107))

(declare-fun m!918109 () Bool)

(assert (=> d!224295 m!918109))

(declare-fun m!918111 () Bool)

(assert (=> b!647406 m!918111))

(assert (=> b!647406 m!918111))

(declare-fun m!918113 () Bool)

(assert (=> b!647406 m!918113))

(assert (=> b!647412 m!918109))

(declare-fun m!918115 () Bool)

(assert (=> b!647408 m!918115))

(declare-fun m!918117 () Bool)

(assert (=> b!647409 m!918117))

(assert (=> b!647345 d!224295))

(declare-fun d!224297 () Bool)

(declare-fun list!2957 (Conc!2354) List!6953)

(assert (=> d!224297 (= (list!2954 lt!277447) (list!2957 (c!117664 lt!277447)))))

(declare-fun bs!84569 () Bool)

(assert (= bs!84569 d!224297))

(declare-fun m!918119 () Bool)

(assert (=> bs!84569 m!918119))

(assert (=> b!647345 d!224297))

(declare-fun bs!84570 () Bool)

(declare-fun b!647426 () Bool)

(assert (= bs!84570 (and b!647426 b!647345)))

(declare-fun lambda!19635 () Int)

(assert (=> bs!84570 (= lambda!19635 lambda!19612)))

(declare-fun bs!84571 () Bool)

(assert (= bs!84571 (and b!647426 d!224291)))

(assert (=> bs!84571 (= lambda!19635 lambda!19620)))

(assert (=> bs!84571 (not (= lambda!19635 lambda!19621))))

(declare-fun bs!84572 () Bool)

(assert (= bs!84572 (and b!647426 d!224293)))

(assert (=> bs!84572 (not (= lambda!19635 lambda!19624))))

(declare-fun bs!84573 () Bool)

(declare-fun d!224299 () Bool)

(assert (= bs!84573 (and d!224299 b!647345)))

(declare-fun lambda!19636 () Int)

(assert (=> bs!84573 (= lambda!19636 lambda!19612)))

(declare-fun bs!84574 () Bool)

(assert (= bs!84574 (and d!224299 b!647426)))

(assert (=> bs!84574 (= lambda!19636 lambda!19635)))

(declare-fun bs!84575 () Bool)

(assert (= bs!84575 (and d!224299 d!224293)))

(assert (=> bs!84575 (not (= lambda!19636 lambda!19624))))

(declare-fun bs!84576 () Bool)

(assert (= bs!84576 (and d!224299 d!224291)))

(assert (=> bs!84576 (not (= lambda!19636 lambda!19621))))

(assert (=> bs!84576 (= lambda!19636 lambda!19620)))

(declare-fun b!647425 () Bool)

(declare-fun e!397464 () BalanceConc!4720)

(assert (=> b!647425 (= e!397464 (BalanceConc!4721 Empty!2354))))

(declare-fun lt!277515 () PrintableTokens!152)

(declare-fun tail!921 (BalanceConc!4722) BalanceConc!4722)

(declare-fun append!232 (BalanceConc!4720 PrintableTokens!152) BalanceConc!4720)

(assert (=> b!647426 (= e!397464 (slicesMulti!0 printableTokens!2 lt!277444 (tail!921 (tail!921 (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 0 (BalanceConc!4723 Empty!2355)))) (append!232 (BalanceConc!4721 Empty!2354) lt!277515)))))

(declare-fun lt!277517 () Int)

(declare-fun apply!1662 (BalanceConc!4722 Int) Int)

(assert (=> b!647426 (= lt!277517 (apply!1662 (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 0 (BalanceConc!4723 Empty!2355)) 0))))

(declare-fun lt!277518 () Int)

(assert (=> b!647426 (= lt!277518 (apply!1662 (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 0 (BalanceConc!4723 Empty!2355)) 1))))

(declare-fun c!117687 () Bool)

(assert (=> b!647426 (= c!117687 (<= lt!277517 lt!277518))))

(declare-fun e!397463 () PrintableTokens!152)

(assert (=> b!647426 (= lt!277515 e!397463)))

(declare-fun lt!277514 () Unit!12100)

(declare-fun lemmaConcatPreservesForall!58 (List!6953 List!6953 Int) Unit!12100)

(assert (=> b!647426 (= lt!277514 (lemmaConcatPreservesForall!58 (list!2954 (BalanceConc!4721 Empty!2354)) (Cons!6939 lt!277515 Nil!6939) lambda!19635))))

(declare-fun lt!277516 () BalanceConc!4720)

(assert (=> d!224299 (forall!1803 lt!277516 lambda!19636)))

(assert (=> d!224299 (= lt!277516 e!397464)))

(declare-fun c!117688 () Bool)

(declare-fun size!5496 (BalanceConc!4722) Int)

(assert (=> d!224299 (= c!117688 (>= (size!5496 (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 0 (BalanceConc!4723 Empty!2355))) 2))))

(assert (=> d!224299 (= (size!5492 printableTokens!2) lt!277444)))

(assert (=> d!224299 (= (slicesMulti!0 printableTokens!2 lt!277444 (indicesOfOpenBraces!0 (tokens!1225 printableTokens!2) lt!277444 0 (BalanceConc!4723 Empty!2355)) (BalanceConc!4721 Empty!2354)) lt!277516)))

(declare-fun b!647424 () Bool)

(declare-fun call!41979 () PrintableTokens!152)

(assert (=> b!647424 (= e!397463 call!41979)))

(declare-fun b!647427 () Bool)

(assert (=> b!647427 (= e!397463 call!41979)))

(declare-fun bm!41974 () Bool)

(declare-fun slice!48 (PrintableTokens!152 Int Int) PrintableTokens!152)

(assert (=> bm!41974 (= call!41979 (slice!48 printableTokens!2 (ite c!117687 lt!277517 lt!277518) (ite c!117687 (+ lt!277518 1) (+ lt!277517 1))))))

(assert (= (and d!224299 c!117688) b!647426))

(assert (= (and d!224299 (not c!117688)) b!647425))

(assert (= (and b!647426 c!117687) b!647424))

(assert (= (and b!647426 (not c!117687)) b!647427))

(assert (= (or b!647424 b!647427) bm!41974))

(assert (=> b!647426 m!917971))

(declare-fun m!918121 () Bool)

(assert (=> b!647426 m!918121))

(declare-fun m!918123 () Bool)

(assert (=> b!647426 m!918123))

(assert (=> b!647426 m!917971))

(declare-fun m!918125 () Bool)

(assert (=> b!647426 m!918125))

(declare-fun m!918127 () Bool)

(assert (=> b!647426 m!918127))

(assert (=> b!647426 m!918127))

(declare-fun m!918129 () Bool)

(assert (=> b!647426 m!918129))

(assert (=> b!647426 m!918121))

(declare-fun m!918131 () Bool)

(assert (=> b!647426 m!918131))

(assert (=> b!647426 m!918131))

(assert (=> b!647426 m!918123))

(declare-fun m!918133 () Bool)

(assert (=> b!647426 m!918133))

(assert (=> b!647426 m!917971))

(declare-fun m!918135 () Bool)

(assert (=> b!647426 m!918135))

(declare-fun m!918137 () Bool)

(assert (=> d!224299 m!918137))

(assert (=> d!224299 m!917971))

(declare-fun m!918139 () Bool)

(assert (=> d!224299 m!918139))

(assert (=> d!224299 m!917925))

(declare-fun m!918141 () Bool)

(assert (=> bm!41974 m!918141))

(assert (=> b!647345 d!224299))

(declare-fun bs!84577 () Bool)

(declare-fun b!647463 () Bool)

(assert (= bs!84577 (and b!647463 b!647345)))

(declare-fun lambda!19683 () Int)

(assert (=> bs!84577 (not (= lambda!19683 lambda!19610))))

(declare-fun bs!84578 () Bool)

(assert (= bs!84578 (and b!647463 d!224285)))

(assert (=> bs!84578 (not (= lambda!19683 lambda!19615))))

(declare-fun b!647471 () Bool)

(declare-fun e!397491 () Bool)

(assert (=> b!647471 (= e!397491 true)))

(declare-fun b!647470 () Bool)

(declare-fun e!397490 () Bool)

(assert (=> b!647470 (= e!397490 e!397491)))

(assert (=> b!647463 e!397490))

(assert (= b!647470 b!647471))

(assert (= b!647463 b!647470))

(declare-fun lambda!19684 () Int)

(assert (=> bs!84577 (not (= lambda!19684 lambda!19610))))

(assert (=> bs!84578 (not (= lambda!19684 lambda!19615))))

(assert (=> b!647463 (not (= lambda!19684 lambda!19683))))

(declare-fun b!647473 () Bool)

(declare-fun e!397493 () Bool)

(assert (=> b!647473 (= e!397493 true)))

(declare-fun b!647472 () Bool)

(declare-fun e!397492 () Bool)

(assert (=> b!647472 (= e!397492 e!397493)))

(assert (=> b!647463 e!397492))

(assert (= b!647472 b!647473))

(assert (= b!647463 b!647472))

(declare-fun lambda!19685 () Int)

(assert (=> bs!84577 (not (= lambda!19685 lambda!19610))))

(assert (=> bs!84578 (not (= lambda!19685 lambda!19615))))

(assert (=> b!647463 (not (= lambda!19685 lambda!19683))))

(assert (=> b!647463 (not (= lambda!19685 lambda!19684))))

(declare-fun b!647475 () Bool)

(declare-fun e!397495 () Bool)

(assert (=> b!647475 (= e!397495 true)))

(declare-fun b!647474 () Bool)

(declare-fun e!397494 () Bool)

(assert (=> b!647474 (= e!397494 e!397495)))

(assert (=> b!647463 e!397494))

(assert (= b!647474 b!647475))

(assert (= b!647463 b!647474))

(declare-fun lambda!19686 () Int)

(assert (=> b!647463 (not (= lambda!19686 lambda!19683))))

(assert (=> bs!84577 (= lambda!19686 lambda!19610)))

(assert (=> bs!84578 (not (= lambda!19686 lambda!19615))))

(assert (=> b!647463 (not (= lambda!19686 lambda!19685))))

(assert (=> b!647463 (not (= lambda!19686 lambda!19684))))

(declare-fun bs!84579 () Bool)

(declare-fun d!224301 () Bool)

(assert (= bs!84579 (and d!224301 b!647463)))

(declare-fun lambda!19687 () Int)

(assert (=> bs!84579 (= lambda!19687 lambda!19686)))

(assert (=> bs!84579 (not (= lambda!19687 lambda!19683))))

(declare-fun bs!84580 () Bool)

(assert (= bs!84580 (and d!224301 b!647345)))

(assert (=> bs!84580 (= lambda!19687 lambda!19610)))

(declare-fun bs!84581 () Bool)

(assert (= bs!84581 (and d!224301 d!224285)))

(assert (=> bs!84581 (not (= lambda!19687 lambda!19615))))

(assert (=> bs!84579 (not (= lambda!19687 lambda!19685))))

(assert (=> bs!84579 (not (= lambda!19687 lambda!19684))))

(declare-fun b!647452 () Bool)

(declare-fun e!397483 () Unit!12100)

(declare-fun Unit!12104 () Unit!12100)

(assert (=> b!647452 (= e!397483 Unit!12104)))

(declare-fun b!647453 () Bool)

(declare-fun e!397479 () BalanceConc!4718)

(assert (=> b!647453 (= e!397479 (map!1541 lt!277447 lambda!19609))))

(declare-fun b!647454 () Bool)

(declare-fun e!397480 () Bool)

(declare-fun lt!277602 () List!6952)

(declare-fun size!5497 (List!6952) Int)

(declare-fun filter!141 (List!6952 Int) List!6952)

(assert (=> b!647454 (= e!397480 (< (size!5497 (filter!141 lt!277602 lambda!19683)) (size!5497 lt!277602)))))

(declare-fun b!647455 () Bool)

(assert (=> b!647455 true))

(declare-fun lt!277592 () Unit!12100)

(declare-fun lt!277615 () tuple2!7506)

(declare-fun forallContained!467 (List!6952 Int tuple2!7506) Unit!12100)

(assert (=> b!647455 (= lt!277592 (forallContained!467 (list!2953 (map!1541 lt!277447 lambda!19609)) lambda!19683 lt!277615))))

(declare-fun e!397482 () Unit!12100)

(declare-fun err!708 () Unit!12100)

(assert (=> b!647455 (= e!397482 err!708)))

(declare-fun b!647456 () Bool)

(declare-fun e!397485 () Unit!12100)

(declare-fun Unit!12105 () Unit!12100)

(assert (=> b!647456 (= e!397485 Unit!12105)))

(declare-fun b!647457 () Bool)

(assert (=> b!647457 true))

(declare-fun lt!277609 () BalanceConc!4718)

(declare-fun lt!277626 () Unit!12100)

(assert (=> b!647457 (= lt!277626 (forallContained!467 (list!2953 lt!277609) lambda!19685 lt!277615))))

(declare-fun e!397481 () Unit!12100)

(declare-fun err!707 () Unit!12100)

(assert (=> b!647457 (= e!397481 err!707)))

(declare-fun lt!277610 () BalanceConc!4718)

(declare-fun forall!1807 (BalanceConc!4718 Int) Bool)

(assert (=> d!224301 (forall!1807 lt!277610 lambda!19687)))

(assert (=> d!224301 (= lt!277610 e!397479)))

(declare-fun c!117701 () Bool)

(declare-fun size!5498 (BalanceConc!4718) Int)

(assert (=> d!224301 (= c!117701 (<= (size!5498 (map!1541 lt!277447 lambda!19609)) 1))))

(assert (=> d!224301 (= (sortObjectsByID!0 (map!1541 lt!277447 lambda!19609)) lt!277610)))

(declare-fun b!647458 () Bool)

(assert (=> b!647458 true))

(declare-fun lt!277603 () BalanceConc!4718)

(declare-fun lt!277598 () Unit!12100)

(assert (=> b!647458 (= lt!277598 (forallContained!467 (list!2953 lt!277603) lambda!19683 lt!277615))))

(declare-fun err!709 () Unit!12100)

(assert (=> b!647458 (= e!397485 err!709)))

(declare-fun b!647459 () Bool)

(declare-fun Unit!12106 () Unit!12100)

(assert (=> b!647459 (= e!397482 Unit!12106)))

(declare-fun b!647460 () Bool)

(declare-fun Unit!12107 () Unit!12100)

(assert (=> b!647460 (= e!397481 Unit!12107)))

(declare-fun b!647461 () Bool)

(assert (=> b!647461 true))

(declare-fun lt!277595 () Unit!12100)

(assert (=> b!647461 (= lt!277595 (forallContained!467 (list!2953 (map!1541 lt!277447 lambda!19609)) lambda!19685 lt!277615))))

(declare-fun err!706 () Unit!12100)

(assert (=> b!647461 (= e!397483 err!706)))

(declare-fun b!647462 () Bool)

(declare-fun e!397484 () Bool)

(declare-fun lt!277620 () List!6952)

(assert (=> b!647462 (= e!397484 (< (size!5497 (filter!141 lt!277620 lambda!19685)) (size!5497 lt!277620)))))

(declare-fun lt!277600 () BalanceConc!4718)

(declare-fun ++!1862 (BalanceConc!4718 BalanceConc!4718) BalanceConc!4718)

(assert (=> b!647463 (= e!397479 (++!1862 (++!1862 (sortObjectsByID!0 lt!277603) lt!277600) (sortObjectsByID!0 lt!277609)))))

(declare-fun apply!1663 (BalanceConc!4718 Int) tuple2!7506)

(assert (=> b!647463 (= lt!277615 (apply!1663 (map!1541 lt!277447 lambda!19609) (ite (>= (size!5498 (map!1541 lt!277447 lambda!19609)) 0) (div (size!5498 (map!1541 lt!277447 lambda!19609)) 2) (- (div (- (size!5498 (map!1541 lt!277447 lambda!19609))) 2)))))))

(declare-fun filter!142 (BalanceConc!4718 Int) BalanceConc!4718)

(assert (=> b!647463 (= lt!277603 (filter!142 (map!1541 lt!277447 lambda!19609) lambda!19683))))

(assert (=> b!647463 (= lt!277600 (filter!142 (map!1541 lt!277447 lambda!19609) lambda!19684))))

(assert (=> b!647463 (= lt!277609 (filter!142 (map!1541 lt!277447 lambda!19609) lambda!19685))))

(declare-fun c!117700 () Bool)

(declare-fun contains!1545 (BalanceConc!4718 tuple2!7506) Bool)

(assert (=> b!647463 (= c!117700 (contains!1545 lt!277603 lt!277615))))

(declare-fun lt!277614 () Unit!12100)

(assert (=> b!647463 (= lt!277614 e!397485)))

(declare-fun c!117702 () Bool)

(assert (=> b!647463 (= c!117702 (forall!1807 (map!1541 lt!277447 lambda!19609) lambda!19683))))

(declare-fun lt!277623 () Unit!12100)

(assert (=> b!647463 (= lt!277623 e!397482)))

(assert (=> b!647463 (= lt!277602 (list!2953 (map!1541 lt!277447 lambda!19609)))))

(declare-fun lt!277597 () Unit!12100)

(declare-fun lemmaNotForallFilterShorter!15 (List!6952 Int) Unit!12100)

(assert (=> b!647463 (= lt!277597 (lemmaNotForallFilterShorter!15 lt!277602 lambda!19683))))

(declare-fun res!283548 () Bool)

(declare-fun isEmpty!4739 (List!6952) Bool)

(assert (=> b!647463 (= res!283548 (isEmpty!4739 lt!277602))))

(assert (=> b!647463 (=> res!283548 e!397480)))

(assert (=> b!647463 e!397480))

(declare-fun lt!277617 () Unit!12100)

(assert (=> b!647463 (= lt!277617 lt!277597)))

(declare-fun c!117699 () Bool)

(assert (=> b!647463 (= c!117699 (contains!1545 lt!277609 lt!277615))))

(declare-fun lt!277618 () Unit!12100)

(assert (=> b!647463 (= lt!277618 e!397481)))

(declare-fun c!117703 () Bool)

(assert (=> b!647463 (= c!117703 (forall!1807 (map!1541 lt!277447 lambda!19609) lambda!19685))))

(declare-fun lt!277622 () Unit!12100)

(assert (=> b!647463 (= lt!277622 e!397483)))

(assert (=> b!647463 (= lt!277620 (list!2953 (map!1541 lt!277447 lambda!19609)))))

(declare-fun lt!277596 () Unit!12100)

(assert (=> b!647463 (= lt!277596 (lemmaNotForallFilterShorter!15 lt!277620 lambda!19685))))

(declare-fun res!283549 () Bool)

(assert (=> b!647463 (= res!283549 (isEmpty!4739 lt!277620))))

(assert (=> b!647463 (=> res!283549 e!397484)))

(assert (=> b!647463 e!397484))

(declare-fun lt!277601 () Unit!12100)

(assert (=> b!647463 (= lt!277601 lt!277596)))

(declare-fun lt!277625 () Unit!12100)

(declare-fun filterSubseq!15 (List!6952 Int) Unit!12100)

(assert (=> b!647463 (= lt!277625 (filterSubseq!15 (list!2953 (map!1541 lt!277447 lambda!19609)) lambda!19683))))

(declare-fun lt!277619 () Unit!12100)

(assert (=> b!647463 (= lt!277619 (filterSubseq!15 (list!2953 (map!1541 lt!277447 lambda!19609)) lambda!19684))))

(declare-fun lt!277591 () Unit!12100)

(assert (=> b!647463 (= lt!277591 (filterSubseq!15 (list!2953 (map!1541 lt!277447 lambda!19609)) lambda!19685))))

(declare-fun lt!277604 () List!6952)

(assert (=> b!647463 (= lt!277604 (list!2953 (filter!142 (map!1541 lt!277447 lambda!19609) lambda!19683)))))

(declare-fun lt!277594 () List!6952)

(assert (=> b!647463 (= lt!277594 (list!2953 (map!1541 lt!277447 lambda!19609)))))

(declare-fun lt!277613 () Unit!12100)

(declare-fun lemmaForallSubseq!24 (List!6952 List!6952 Int) Unit!12100)

(assert (=> b!647463 (= lt!277613 (lemmaForallSubseq!24 lt!277604 lt!277594 lambda!19686))))

(assert (=> b!647463 (forall!1805 lt!277604 lambda!19686)))

(declare-fun lt!277606 () Unit!12100)

(assert (=> b!647463 (= lt!277606 lt!277613)))

(declare-fun lt!277612 () List!6952)

(assert (=> b!647463 (= lt!277612 (list!2953 (filter!142 (map!1541 lt!277447 lambda!19609) lambda!19684)))))

(declare-fun lt!277607 () List!6952)

(assert (=> b!647463 (= lt!277607 (list!2953 (map!1541 lt!277447 lambda!19609)))))

(declare-fun lt!277611 () Unit!12100)

(assert (=> b!647463 (= lt!277611 (lemmaForallSubseq!24 lt!277612 lt!277607 lambda!19686))))

(assert (=> b!647463 (forall!1805 lt!277612 lambda!19686)))

(declare-fun lt!277593 () Unit!12100)

(assert (=> b!647463 (= lt!277593 lt!277611)))

(declare-fun lt!277599 () List!6952)

(assert (=> b!647463 (= lt!277599 (list!2953 (filter!142 (map!1541 lt!277447 lambda!19609) lambda!19685)))))

(declare-fun lt!277608 () List!6952)

(assert (=> b!647463 (= lt!277608 (list!2953 (map!1541 lt!277447 lambda!19609)))))

(declare-fun lt!277624 () Unit!12100)

(assert (=> b!647463 (= lt!277624 (lemmaForallSubseq!24 lt!277599 lt!277608 lambda!19686))))

(assert (=> b!647463 (forall!1805 lt!277599 lambda!19686)))

(declare-fun lt!277605 () Unit!12100)

(assert (=> b!647463 (= lt!277605 lt!277624)))

(declare-fun lt!277616 () Unit!12100)

(declare-fun lemmaConcatPreservesForall!59 (List!6952 List!6952 Int) Unit!12100)

(assert (=> b!647463 (= lt!277616 (lemmaConcatPreservesForall!59 (list!2953 (sortObjectsByID!0 lt!277603)) (list!2953 lt!277600) lambda!19686))))

(declare-fun lt!277621 () Unit!12100)

(declare-fun ++!1863 (List!6952 List!6952) List!6952)

(assert (=> b!647463 (= lt!277621 (lemmaConcatPreservesForall!59 (++!1863 (list!2953 (sortObjectsByID!0 lt!277603)) (list!2953 lt!277600)) (list!2953 (sortObjectsByID!0 lt!277609)) lambda!19686))))

(assert (= (and d!224301 c!117701) b!647453))

(assert (= (and d!224301 (not c!117701)) b!647463))

(assert (= (and b!647463 c!117700) b!647458))

(assert (= (and b!647463 (not c!117700)) b!647456))

(assert (= (and b!647463 c!117702) b!647455))

(assert (= (and b!647463 (not c!117702)) b!647459))

(assert (= (and b!647463 (not res!283548)) b!647454))

(assert (= (and b!647463 c!117699) b!647457))

(assert (= (and b!647463 (not c!117699)) b!647460))

(assert (= (and b!647463 c!117703) b!647461))

(assert (= (and b!647463 (not c!117703)) b!647452))

(assert (= (and b!647463 (not res!283549)) b!647462))

(declare-fun m!918143 () Bool)

(assert (=> b!647458 m!918143))

(assert (=> b!647458 m!918143))

(declare-fun m!918145 () Bool)

(assert (=> b!647458 m!918145))

(assert (=> b!647455 m!917951))

(declare-fun m!918147 () Bool)

(assert (=> b!647455 m!918147))

(assert (=> b!647455 m!918147))

(declare-fun m!918149 () Bool)

(assert (=> b!647455 m!918149))

(assert (=> b!647461 m!917951))

(assert (=> b!647461 m!918147))

(assert (=> b!647461 m!918147))

(declare-fun m!918151 () Bool)

(assert (=> b!647461 m!918151))

(declare-fun m!918153 () Bool)

(assert (=> b!647457 m!918153))

(assert (=> b!647457 m!918153))

(declare-fun m!918155 () Bool)

(assert (=> b!647457 m!918155))

(declare-fun m!918157 () Bool)

(assert (=> d!224301 m!918157))

(assert (=> d!224301 m!917951))

(declare-fun m!918159 () Bool)

(assert (=> d!224301 m!918159))

(declare-fun m!918161 () Bool)

(assert (=> b!647454 m!918161))

(assert (=> b!647454 m!918161))

(declare-fun m!918163 () Bool)

(assert (=> b!647454 m!918163))

(declare-fun m!918165 () Bool)

(assert (=> b!647454 m!918165))

(declare-fun m!918167 () Bool)

(assert (=> b!647462 m!918167))

(assert (=> b!647462 m!918167))

(declare-fun m!918169 () Bool)

(assert (=> b!647462 m!918169))

(declare-fun m!918171 () Bool)

(assert (=> b!647462 m!918171))

(declare-fun m!918173 () Bool)

(assert (=> b!647463 m!918173))

(declare-fun m!918175 () Bool)

(assert (=> b!647463 m!918175))

(declare-fun m!918177 () Bool)

(assert (=> b!647463 m!918177))

(assert (=> b!647463 m!917951))

(declare-fun m!918179 () Bool)

(assert (=> b!647463 m!918179))

(declare-fun m!918181 () Bool)

(assert (=> b!647463 m!918181))

(assert (=> b!647463 m!918147))

(declare-fun m!918183 () Bool)

(assert (=> b!647463 m!918183))

(declare-fun m!918185 () Bool)

(assert (=> b!647463 m!918185))

(declare-fun m!918187 () Bool)

(assert (=> b!647463 m!918187))

(declare-fun m!918189 () Bool)

(assert (=> b!647463 m!918189))

(assert (=> b!647463 m!917951))

(assert (=> b!647463 m!918147))

(declare-fun m!918191 () Bool)

(assert (=> b!647463 m!918191))

(declare-fun m!918193 () Bool)

(assert (=> b!647463 m!918193))

(declare-fun m!918195 () Bool)

(assert (=> b!647463 m!918195))

(assert (=> b!647463 m!917951))

(declare-fun m!918197 () Bool)

(assert (=> b!647463 m!918197))

(declare-fun m!918199 () Bool)

(assert (=> b!647463 m!918199))

(declare-fun m!918201 () Bool)

(assert (=> b!647463 m!918201))

(assert (=> b!647463 m!918179))

(declare-fun m!918203 () Bool)

(assert (=> b!647463 m!918203))

(assert (=> b!647463 m!918181))

(declare-fun m!918205 () Bool)

(assert (=> b!647463 m!918205))

(assert (=> b!647463 m!917951))

(assert (=> b!647463 m!918159))

(assert (=> b!647463 m!918197))

(declare-fun m!918207 () Bool)

(assert (=> b!647463 m!918207))

(assert (=> b!647463 m!918177))

(assert (=> b!647463 m!918205))

(declare-fun m!918209 () Bool)

(assert (=> b!647463 m!918209))

(assert (=> b!647463 m!917951))

(declare-fun m!918211 () Bool)

(assert (=> b!647463 m!918211))

(declare-fun m!918213 () Bool)

(assert (=> b!647463 m!918213))

(assert (=> b!647463 m!917951))

(assert (=> b!647463 m!918211))

(assert (=> b!647463 m!918173))

(assert (=> b!647463 m!918175))

(declare-fun m!918215 () Bool)

(assert (=> b!647463 m!918215))

(assert (=> b!647463 m!918193))

(assert (=> b!647463 m!918173))

(assert (=> b!647463 m!918147))

(declare-fun m!918217 () Bool)

(assert (=> b!647463 m!918217))

(declare-fun m!918219 () Bool)

(assert (=> b!647463 m!918219))

(assert (=> b!647463 m!917951))

(declare-fun m!918221 () Bool)

(assert (=> b!647463 m!918221))

(declare-fun m!918223 () Bool)

(assert (=> b!647463 m!918223))

(declare-fun m!918225 () Bool)

(assert (=> b!647463 m!918225))

(assert (=> b!647463 m!917951))

(declare-fun m!918227 () Bool)

(assert (=> b!647463 m!918227))

(declare-fun m!918229 () Bool)

(assert (=> b!647463 m!918229))

(assert (=> b!647463 m!918175))

(assert (=> b!647463 m!918193))

(assert (=> b!647463 m!918211))

(declare-fun m!918231 () Bool)

(assert (=> b!647463 m!918231))

(declare-fun m!918233 () Bool)

(assert (=> b!647463 m!918233))

(assert (=> b!647463 m!917951))

(assert (=> b!647463 m!918197))

(assert (=> b!647463 m!917951))

(assert (=> b!647463 m!918179))

(assert (=> b!647463 m!917951))

(declare-fun m!918235 () Bool)

(assert (=> b!647463 m!918235))

(assert (=> b!647463 m!918195))

(assert (=> b!647463 m!918181))

(declare-fun m!918237 () Bool)

(assert (=> b!647463 m!918237))

(assert (=> b!647463 m!918147))

(declare-fun m!918239 () Bool)

(assert (=> b!647463 m!918239))

(assert (=> b!647345 d!224301))

(declare-fun d!224303 () Bool)

(declare-fun e!397498 () Bool)

(assert (=> d!224303 e!397498))

(declare-fun res!283552 () Bool)

(assert (=> d!224303 (=> (not res!283552) (not e!397498))))

(declare-fun lt!277629 () BalanceConc!4720)

(assert (=> d!224303 (= res!283552 (= (list!2954 lt!277629) (map!1542 (list!2953 lt!277448) lambda!19611)))))

(declare-fun map!1545 (Conc!2353 Int) Conc!2354)

(assert (=> d!224303 (= lt!277629 (BalanceConc!4721 (map!1545 (c!117663 lt!277448) lambda!19611)))))

(assert (=> d!224303 (= (map!1540 lt!277448 lambda!19611) lt!277629)))

(declare-fun b!647478 () Bool)

(declare-fun isBalanced!630 (Conc!2354) Bool)

(assert (=> b!647478 (= e!397498 (isBalanced!630 (map!1545 (c!117663 lt!277448) lambda!19611)))))

(assert (= (and d!224303 res!283552) b!647478))

(declare-fun m!918241 () Bool)

(assert (=> d!224303 m!918241))

(assert (=> d!224303 m!917961))

(assert (=> d!224303 m!917961))

(declare-fun m!918243 () Bool)

(assert (=> d!224303 m!918243))

(declare-fun m!918245 () Bool)

(assert (=> d!224303 m!918245))

(assert (=> b!647478 m!918245))

(assert (=> b!647478 m!918245))

(declare-fun m!918247 () Bool)

(assert (=> b!647478 m!918247))

(assert (=> b!647345 d!224303))

(declare-fun bs!84582 () Bool)

(declare-fun d!224305 () Bool)

(assert (= bs!84582 (and d!224305 b!647463)))

(declare-fun lambda!19692 () Int)

(assert (=> bs!84582 (= lambda!19692 lambda!19686)))

(declare-fun bs!84583 () Bool)

(assert (= bs!84583 (and d!224305 d!224301)))

(assert (=> bs!84583 (= lambda!19692 lambda!19687)))

(assert (=> bs!84582 (not (= lambda!19692 lambda!19683))))

(declare-fun bs!84584 () Bool)

(assert (= bs!84584 (and d!224305 b!647345)))

(assert (=> bs!84584 (= lambda!19692 lambda!19610)))

(declare-fun bs!84585 () Bool)

(assert (= bs!84585 (and d!224305 d!224285)))

(assert (=> bs!84585 (not (= lambda!19692 lambda!19615))))

(assert (=> bs!84582 (not (= lambda!19692 lambda!19685))))

(assert (=> bs!84582 (not (= lambda!19692 lambda!19684))))

(declare-fun lambda!19693 () Int)

(assert (=> bs!84582 (not (= lambda!19693 lambda!19686))))

(assert (=> bs!84583 (not (= lambda!19693 lambda!19687))))

(assert (=> bs!84582 (not (= lambda!19693 lambda!19683))))

(assert (=> d!224305 (not (= lambda!19693 lambda!19692))))

(assert (=> bs!84584 (not (= lambda!19693 lambda!19610))))

(assert (=> bs!84585 (not (= lambda!19693 lambda!19615))))

(assert (=> bs!84582 (not (= lambda!19693 lambda!19685))))

(assert (=> bs!84582 (not (= lambda!19693 lambda!19684))))

(assert (=> d!224305 (forall!1805 lt!277456 lambda!19693)))

(declare-fun lt!277634 () Unit!12100)

(declare-fun e!397501 () Unit!12100)

(assert (=> d!224305 (= lt!277634 e!397501)))

(declare-fun c!117707 () Bool)

(assert (=> d!224305 (= c!117707 ((_ is Nil!6938) lt!277456))))

(assert (=> d!224305 (forall!1805 lt!277456 lambda!19692)))

(assert (=> d!224305 (= (lemmaRemoveIdsPreservesRules!0 lt!277456) lt!277634)))

(declare-fun b!647483 () Bool)

(declare-fun Unit!12108 () Unit!12100)

(assert (=> b!647483 (= e!397501 Unit!12108)))

(declare-fun b!647484 () Bool)

(declare-fun Unit!12109 () Unit!12100)

(assert (=> b!647484 (= e!397501 Unit!12109)))

(declare-fun lt!277635 () Unit!12100)

(assert (=> b!647484 (= lt!277635 (lemmaRemoveIdsPreservesRules!0 (t!85448 lt!277456)))))

(assert (= (and d!224305 c!117707) b!647483))

(assert (= (and d!224305 (not c!117707)) b!647484))

(declare-fun m!918249 () Bool)

(assert (=> d!224305 m!918249))

(declare-fun m!918251 () Bool)

(assert (=> d!224305 m!918251))

(declare-fun m!918253 () Bool)

(assert (=> b!647484 m!918253))

(assert (=> b!647345 d!224305))

(declare-fun d!224307 () Bool)

(declare-fun e!397507 () Bool)

(assert (=> d!224307 e!397507))

(declare-fun res!283555 () Bool)

(assert (=> d!224307 (=> res!283555 e!397507)))

(declare-fun lt!277642 () tuple3!606)

(assert (=> d!224307 (= res!283555 (isEmpty!4738 (_1!4106 lt!277642)))))

(declare-fun e!397506 () Option!1669)

(declare-fun lt!277643 () tuple3!608)

(assert (=> d!224307 (= lt!277642 (tuple3!607 e!397506 (_2!4109 lt!277643) (_3!355 lt!277643)))))

(declare-fun c!117710 () Bool)

(assert (=> d!224307 (= c!117710 (not (_1!4109 lt!277643)))))

(declare-fun lt!277644 () BalanceConc!4716)

(assert (=> d!224307 (= lt!277643 (rulesProduceEachTokenIndividuallyMem!11 Lexer!1258 (rules!109 JsonLexer!207) lt!277644 cacheUp!351 cacheDown!364))))

(declare-fun ++!1864 (BalanceConc!4716 BalanceConc!4716) BalanceConc!4716)

(declare-datatypes ((WhitespaceValueInjection!46 0))(
  ( (WhitespaceValueInjection!47) )
))
(declare-fun injection!7 (WhitespaceValueInjection!46) TokenValueInjection!2592)

(assert (=> d!224307 (= lt!277644 (++!1864 (singletonSeq!444 (Token!2495 (apply!1660 (injection!9 KeywordValueInjection!51) (singletonSeq!445 #x002C)) (commaRule!0 JsonLexer!207) 1 (Cons!6934 #x002C Nil!6934))) (singletonSeq!444 (Token!2495 (apply!1660 (injection!7 WhitespaceValueInjection!47) (singletonSeq!445 #x000A)) (whitespaceRule!0 JsonLexer!207) 1 (Cons!6934 #x000A Nil!6934)))))))

(assert (=> d!224307 (not (isEmpty!4734 (rules!109 JsonLexer!207)))))

(assert (=> d!224307 (= (createCommaNewLineSeparator!0 cacheUp!351 cacheDown!364) lt!277642)))

(declare-fun b!647491 () Bool)

(assert (=> b!647491 (= e!397506 None!1668)))

(declare-fun b!647492 () Bool)

(assert (=> b!647492 (= e!397506 (printableTokensFromTokens!14 (rules!109 JsonLexer!207) lt!277644))))

(declare-fun b!647493 () Bool)

(assert (=> b!647493 (= e!397507 (usesJsonRules!0 (get!2493 (_1!4106 lt!277642))))))

(assert (= (and d!224307 c!117710) b!647491))

(assert (= (and d!224307 (not c!117710)) b!647492))

(assert (= (and d!224307 (not res!283555)) b!647493))

(assert (=> d!224307 m!918067))

(declare-fun m!918255 () Bool)

(assert (=> d!224307 m!918255))

(declare-fun m!918257 () Bool)

(assert (=> d!224307 m!918257))

(declare-fun m!918259 () Bool)

(assert (=> d!224307 m!918259))

(declare-fun m!918261 () Bool)

(assert (=> d!224307 m!918261))

(assert (=> d!224307 m!918255))

(declare-fun m!918263 () Bool)

(assert (=> d!224307 m!918263))

(declare-fun m!918265 () Bool)

(assert (=> d!224307 m!918265))

(declare-fun m!918267 () Bool)

(assert (=> d!224307 m!918267))

(assert (=> d!224307 m!918261))

(declare-fun m!918269 () Bool)

(assert (=> d!224307 m!918269))

(assert (=> d!224307 m!917941))

(assert (=> d!224307 m!918073))

(assert (=> d!224307 m!918035))

(assert (=> d!224307 m!917941))

(assert (=> d!224307 m!918039))

(assert (=> d!224307 m!918267))

(assert (=> d!224307 m!918067))

(assert (=> d!224307 m!918265))

(declare-fun m!918271 () Bool)

(assert (=> d!224307 m!918271))

(assert (=> d!224307 m!918257))

(assert (=> d!224307 m!917941))

(declare-fun m!918273 () Bool)

(assert (=> d!224307 m!918273))

(assert (=> b!647492 m!917941))

(assert (=> b!647492 m!917941))

(declare-fun m!918275 () Bool)

(assert (=> b!647492 m!918275))

(declare-fun m!918277 () Bool)

(assert (=> b!647493 m!918277))

(assert (=> b!647493 m!918277))

(declare-fun m!918279 () Bool)

(assert (=> b!647493 m!918279))

(assert (=> b!647345 d!224307))

(declare-fun d!224309 () Bool)

(declare-fun e!397512 () Bool)

(assert (=> d!224309 e!397512))

(declare-fun res!283558 () Bool)

(assert (=> d!224309 (=> res!283558 e!397512)))

(declare-fun lt!277653 () tuple3!606)

(assert (=> d!224309 (= res!283558 (isEmpty!4738 (_1!4106 lt!277653)))))

(declare-fun e!397513 () Option!1669)

(declare-fun lt!277651 () tuple3!608)

(assert (=> d!224309 (= lt!277653 (tuple3!607 e!397513 (_2!4109 lt!277651) (_3!355 lt!277651)))))

(declare-fun c!117713 () Bool)

(assert (=> d!224309 (= c!117713 (not (_1!4109 lt!277651)))))

(declare-fun lt!277652 () BalanceConc!4716)

(assert (=> d!224309 (= lt!277651 (rulesProduceEachTokenIndividuallyMem!11 Lexer!1258 (rules!109 JsonLexer!207) lt!277652 (_2!4106 lt!277450) (_3!354 lt!277450)))))

(assert (=> d!224309 (= lt!277652 (singletonSeq!444 (Token!2495 (apply!1660 (injection!9 KeywordValueInjection!51) (singletonSeq!445 #x005B)) (lBracketRule!0 JsonLexer!207) 1 (Cons!6934 #x005B Nil!6934))))))

(assert (=> d!224309 (not (isEmpty!4734 (rules!109 JsonLexer!207)))))

(assert (=> d!224309 (= (createLeftBracketSeparator!0 (_2!4106 lt!277450) (_3!354 lt!277450)) lt!277653)))

(declare-fun b!647500 () Bool)

(assert (=> b!647500 (= e!397513 None!1668)))

(declare-fun b!647501 () Bool)

(assert (=> b!647501 (= e!397513 (printableTokensFromTokens!14 (rules!109 JsonLexer!207) lt!277652))))

(declare-fun b!647502 () Bool)

(assert (=> b!647502 (= e!397512 (usesJsonRules!0 (get!2493 (_1!4106 lt!277653))))))

(assert (= (and d!224309 c!117713) b!647500))

(assert (= (and d!224309 (not c!117713)) b!647501))

(assert (= (and d!224309 (not res!283558)) b!647502))

(assert (=> d!224309 m!918067))

(assert (=> d!224309 m!918029))

(declare-fun m!918281 () Bool)

(assert (=> d!224309 m!918281))

(assert (=> d!224309 m!917941))

(assert (=> d!224309 m!918067))

(assert (=> d!224309 m!918281))

(declare-fun m!918283 () Bool)

(assert (=> d!224309 m!918283))

(assert (=> d!224309 m!917941))

(declare-fun m!918285 () Bool)

(assert (=> d!224309 m!918285))

(declare-fun m!918287 () Bool)

(assert (=> d!224309 m!918287))

(declare-fun m!918289 () Bool)

(assert (=> d!224309 m!918289))

(assert (=> d!224309 m!917941))

(assert (=> d!224309 m!918073))

(assert (=> b!647501 m!917941))

(assert (=> b!647501 m!917941))

(declare-fun m!918291 () Bool)

(assert (=> b!647501 m!918291))

(declare-fun m!918293 () Bool)

(assert (=> b!647502 m!918293))

(assert (=> b!647502 m!918293))

(declare-fun m!918295 () Bool)

(assert (=> b!647502 m!918295))

(assert (=> b!647345 d!224309))

(declare-fun d!224311 () Bool)

(declare-fun lt!277656 () Bool)

(assert (=> d!224311 (= lt!277656 (forall!1804 (list!2954 (map!1540 lt!277448 lambda!19611)) lambda!19612))))

(declare-fun forall!1808 (Conc!2354 Int) Bool)

(assert (=> d!224311 (= lt!277656 (forall!1808 (c!117664 (map!1540 lt!277448 lambda!19611)) lambda!19612))))

(assert (=> d!224311 (= (forall!1803 (map!1540 lt!277448 lambda!19611) lambda!19612) lt!277656)))

(declare-fun bs!84586 () Bool)

(assert (= bs!84586 d!224311))

(assert (=> bs!84586 m!917963))

(declare-fun m!918297 () Bool)

(assert (=> bs!84586 m!918297))

(assert (=> bs!84586 m!918297))

(declare-fun m!918299 () Bool)

(assert (=> bs!84586 m!918299))

(declare-fun m!918301 () Bool)

(assert (=> bs!84586 m!918301))

(assert (=> b!647345 d!224311))

(declare-fun d!224313 () Bool)

(declare-fun list!2958 (Conc!2353) List!6952)

(assert (=> d!224313 (= (list!2953 lt!277448) (list!2958 (c!117663 lt!277448)))))

(declare-fun bs!84587 () Bool)

(assert (= bs!84587 d!224313))

(declare-fun m!918303 () Bool)

(assert (=> bs!84587 m!918303))

(assert (=> b!647345 d!224313))

(declare-fun d!224315 () Bool)

(declare-fun e!397519 () Bool)

(assert (=> d!224315 e!397519))

(declare-fun res!283561 () Bool)

(assert (=> d!224315 (=> res!283561 e!397519)))

(declare-fun lt!277665 () Option!1669)

(assert (=> d!224315 (= res!283561 (isEmpty!4738 lt!277665))))

(declare-fun e!397518 () Option!1669)

(assert (=> d!224315 (= lt!277665 e!397518)))

(declare-fun c!117716 () Bool)

(declare-fun lt!277663 () Option!1669)

(assert (=> d!224315 (= c!117716 ((_ is Some!1668) lt!277663))))

(declare-fun append!233 (PrintableTokens!152 PrintableTokens!152) Option!1669)

(assert (=> d!224315 (= lt!277663 (append!233 (v!17144 (_1!4106 lt!277451)) (v!17144 lt!277446)))))

(assert (=> d!224315 (usesJsonRules!0 (v!17144 lt!277446))))

(assert (=> d!224315 (= (encloseInSep!0 (v!17144 lt!277446) (v!17144 (_1!4106 lt!277451)) (v!17144 (_1!4106 lt!277457))) lt!277665)))

(declare-fun b!647509 () Bool)

(declare-fun lt!277664 () Option!1669)

(assert (=> b!647509 (= e!397518 (ite ((_ is Some!1668) lt!277664) lt!277664 None!1668))))

(assert (=> b!647509 (= lt!277664 (append!233 (v!17144 lt!277663) (v!17144 (_1!4106 lt!277457))))))

(declare-fun b!647510 () Bool)

(assert (=> b!647510 (= e!397518 None!1668)))

(declare-fun b!647511 () Bool)

(assert (=> b!647511 (= e!397519 (usesJsonRules!0 (get!2493 lt!277665)))))

(assert (= (and d!224315 c!117716) b!647509))

(assert (= (and d!224315 (not c!117716)) b!647510))

(assert (= (and d!224315 (not res!283561)) b!647511))

(declare-fun m!918305 () Bool)

(assert (=> d!224315 m!918305))

(declare-fun m!918307 () Bool)

(assert (=> d!224315 m!918307))

(declare-fun m!918309 () Bool)

(assert (=> d!224315 m!918309))

(declare-fun m!918311 () Bool)

(assert (=> b!647509 m!918311))

(declare-fun m!918313 () Bool)

(assert (=> b!647511 m!918313))

(assert (=> b!647511 m!918313))

(declare-fun m!918315 () Bool)

(assert (=> b!647511 m!918315))

(assert (=> b!647344 d!224315))

(declare-fun d!224317 () Bool)

(assert (=> d!224317 (= (size!5492 printableTokens!2) (size!5495 (tokens!1225 printableTokens!2)))))

(declare-fun bs!84588 () Bool)

(assert (= bs!84588 d!224317))

(assert (=> bs!84588 m!918109))

(assert (=> start!63478 d!224317))

(declare-fun d!224319 () Bool)

(declare-fun res!283568 () Bool)

(declare-fun e!397522 () Bool)

(assert (=> d!224319 (=> (not res!283568) (not e!397522))))

(assert (=> d!224319 (= res!283568 (not (isEmpty!4734 (rules!8237 printableTokens!2))))))

(assert (=> d!224319 (= (inv!8769 printableTokens!2) e!397522)))

(declare-fun b!647518 () Bool)

(declare-fun res!283569 () Bool)

(assert (=> b!647518 (=> (not res!283569) (not e!397522))))

(assert (=> b!647518 (= res!283569 (rulesInvariant!1195 Lexer!1258 (rules!8237 printableTokens!2)))))

(declare-fun b!647519 () Bool)

(declare-fun res!283570 () Bool)

(assert (=> b!647519 (=> (not res!283570) (not e!397522))))

(declare-fun rulesProduceEachTokenIndividually!582 (LexerInterface!1260 List!6950 BalanceConc!4716) Bool)

(assert (=> b!647519 (= res!283570 (rulesProduceEachTokenIndividually!582 Lexer!1258 (rules!8237 printableTokens!2) (tokens!1225 printableTokens!2)))))

(declare-fun b!647520 () Bool)

(declare-fun separableTokens!32 (LexerInterface!1260 BalanceConc!4716 List!6950) Bool)

(assert (=> b!647520 (= e!397522 (separableTokens!32 Lexer!1258 (tokens!1225 printableTokens!2) (rules!8237 printableTokens!2)))))

(assert (= (and d!224319 res!283568) b!647518))

(assert (= (and b!647518 res!283569) b!647519))

(assert (= (and b!647519 res!283570) b!647520))

(declare-fun m!918317 () Bool)

(assert (=> d!224319 m!918317))

(declare-fun m!918319 () Bool)

(assert (=> b!647518 m!918319))

(declare-fun m!918321 () Bool)

(assert (=> b!647519 m!918321))

(declare-fun m!918323 () Bool)

(assert (=> b!647520 m!918323))

(assert (=> start!63478 d!224319))

(declare-fun d!224321 () Bool)

(declare-fun res!283573 () Bool)

(declare-fun e!397525 () Bool)

(assert (=> d!224321 (=> (not res!283573) (not e!397525))))

(assert (=> d!224321 (= res!283573 ((_ is HashMap!653) (cache!1040 cacheDown!364)))))

(assert (=> d!224321 (= (inv!8770 cacheDown!364) e!397525)))

(declare-fun b!647523 () Bool)

(declare-fun validCacheMapDown!49 (MutableMap!653) Bool)

(assert (=> b!647523 (= e!397525 (validCacheMapDown!49 (cache!1040 cacheDown!364)))))

(assert (= (and d!224321 res!283573) b!647523))

(declare-fun m!918325 () Bool)

(assert (=> b!647523 m!918325))

(assert (=> start!63478 d!224321))

(declare-fun d!224323 () Bool)

(declare-fun res!283576 () Bool)

(declare-fun e!397528 () Bool)

(assert (=> d!224323 (=> (not res!283576) (not e!397528))))

(assert (=> d!224323 (= res!283576 ((_ is HashMap!652) (cache!1039 cacheUp!351)))))

(assert (=> d!224323 (= (inv!8771 cacheUp!351) e!397528)))

(declare-fun b!647526 () Bool)

(declare-fun validCacheMapUp!49 (MutableMap!652) Bool)

(assert (=> b!647526 (= e!397528 (validCacheMapUp!49 (cache!1039 cacheUp!351)))))

(assert (= (and d!224323 res!283576) b!647526))

(declare-fun m!918327 () Bool)

(assert (=> b!647526 m!918327))

(assert (=> start!63478 d!224323))

(declare-fun d!224325 () Bool)

(assert (=> d!224325 (= (usesJsonRules!0 (v!17144 (_1!4106 lt!277457))) (= (rules!8237 (v!17144 (_1!4106 lt!277457))) (rules!109 JsonLexer!207)))))

(declare-fun bs!84589 () Bool)

(assert (= bs!84589 d!224325))

(assert (=> bs!84589 m!917941))

(assert (=> b!647352 d!224325))

(declare-fun d!224327 () Bool)

(assert (=> d!224327 (= (usesJsonRules!0 (v!17144 (_1!4106 lt!277451))) (= (rules!8237 (v!17144 (_1!4106 lt!277451))) (rules!109 JsonLexer!207)))))

(declare-fun bs!84590 () Bool)

(assert (= bs!84590 d!224327))

(assert (=> bs!84590 m!917941))

(assert (=> b!647334 d!224327))

(declare-fun d!224329 () Bool)

(declare-fun c!117719 () Bool)

(assert (=> d!224329 (= c!117719 ((_ is Node!2352) (c!117662 (tokens!1225 printableTokens!2))))))

(declare-fun e!397533 () Bool)

(assert (=> d!224329 (= (inv!8767 (c!117662 (tokens!1225 printableTokens!2))) e!397533)))

(declare-fun b!647533 () Bool)

(declare-fun inv!8772 (Conc!2352) Bool)

(assert (=> b!647533 (= e!397533 (inv!8772 (c!117662 (tokens!1225 printableTokens!2))))))

(declare-fun b!647534 () Bool)

(declare-fun e!397534 () Bool)

(assert (=> b!647534 (= e!397533 e!397534)))

(declare-fun res!283579 () Bool)

(assert (=> b!647534 (= res!283579 (not ((_ is Leaf!3561) (c!117662 (tokens!1225 printableTokens!2)))))))

(assert (=> b!647534 (=> res!283579 e!397534)))

(declare-fun b!647535 () Bool)

(declare-fun inv!8773 (Conc!2352) Bool)

(assert (=> b!647535 (= e!397534 (inv!8773 (c!117662 (tokens!1225 printableTokens!2))))))

(assert (= (and d!224329 c!117719) b!647533))

(assert (= (and d!224329 (not c!117719)) b!647534))

(assert (= (and b!647534 (not res!283579)) b!647535))

(declare-fun m!918329 () Bool)

(assert (=> b!647533 m!918329))

(declare-fun m!918331 () Bool)

(assert (=> b!647535 m!918331))

(assert (=> b!647333 d!224329))

(declare-fun d!224331 () Bool)

(declare-fun list!2959 (Conc!2352) List!6949)

(assert (=> d!224331 (= (list!2952 (_1!4107 lt!277454)) (list!2959 (c!117662 (_1!4107 lt!277454))))))

(declare-fun bs!84591 () Bool)

(assert (= bs!84591 d!224331))

(declare-fun m!918333 () Bool)

(assert (=> bs!84591 m!918333))

(assert (=> b!647343 d!224331))

(declare-fun d!224333 () Bool)

(assert (=> d!224333 (= (list!2952 (tokens!1225 (v!17144 lt!277455))) (list!2959 (c!117662 (tokens!1225 (v!17144 lt!277455)))))))

(declare-fun bs!84592 () Bool)

(assert (= bs!84592 d!224333))

(declare-fun m!918335 () Bool)

(assert (=> bs!84592 m!918335))

(assert (=> b!647343 d!224333))

(declare-fun e!397542 () Bool)

(declare-fun b!647546 () Bool)

(declare-fun lt!277668 () tuple2!7504)

(declare-datatypes ((tuple2!7508 0))(
  ( (tuple2!7509 (_1!4110 List!6949) (_2!4110 List!6948)) )
))
(declare-fun lexList!317 (LexerInterface!1260 List!6950 List!6948) tuple2!7508)

(assert (=> b!647546 (= e!397542 (= (list!2955 (_2!4107 lt!277668)) (_2!4110 (lexList!317 Lexer!1258 lt!277449 (list!2955 lt!277445)))))))

(declare-fun b!647547 () Bool)

(declare-fun e!397541 () Bool)

(declare-fun isEmpty!4740 (BalanceConc!4716) Bool)

(assert (=> b!647547 (= e!397541 (not (isEmpty!4740 (_1!4107 lt!277668))))))

(declare-fun b!647548 () Bool)

(declare-fun e!397543 () Bool)

(assert (=> b!647548 (= e!397543 e!397541)))

(declare-fun res!283588 () Bool)

(declare-fun size!5499 (BalanceConc!4714) Int)

(assert (=> b!647548 (= res!283588 (< (size!5499 (_2!4107 lt!277668)) (size!5499 lt!277445)))))

(assert (=> b!647548 (=> (not res!283588) (not e!397541))))

(declare-fun b!647550 () Bool)

(declare-fun res!283587 () Bool)

(assert (=> b!647550 (=> (not res!283587) (not e!397542))))

(assert (=> b!647550 (= res!283587 (= (list!2952 (_1!4107 lt!277668)) (_1!4110 (lexList!317 Lexer!1258 lt!277449 (list!2955 lt!277445)))))))

(declare-fun d!224335 () Bool)

(assert (=> d!224335 e!397542))

(declare-fun res!283586 () Bool)

(assert (=> d!224335 (=> (not res!283586) (not e!397542))))

(assert (=> d!224335 (= res!283586 e!397543)))

(declare-fun c!117722 () Bool)

(assert (=> d!224335 (= c!117722 (> (size!5495 (_1!4107 lt!277668)) 0))))

(declare-fun lexTailRecV2!279 (LexerInterface!1260 List!6950 BalanceConc!4714 BalanceConc!4714 BalanceConc!4714 BalanceConc!4716) tuple2!7504)

(assert (=> d!224335 (= lt!277668 (lexTailRecV2!279 Lexer!1258 lt!277449 lt!277445 (BalanceConc!4715 Empty!2351) lt!277445 (BalanceConc!4717 Empty!2352)))))

(assert (=> d!224335 (= (lex!583 Lexer!1258 lt!277449 lt!277445) lt!277668)))

(declare-fun b!647549 () Bool)

(assert (=> b!647549 (= e!397543 (= (_2!4107 lt!277668) lt!277445))))

(assert (= (and d!224335 c!117722) b!647548))

(assert (= (and d!224335 (not c!117722)) b!647549))

(assert (= (and b!647548 res!283588) b!647547))

(assert (= (and d!224335 res!283586) b!647550))

(assert (= (and b!647550 res!283587) b!647546))

(declare-fun m!918337 () Bool)

(assert (=> b!647550 m!918337))

(declare-fun m!918339 () Bool)

(assert (=> b!647550 m!918339))

(assert (=> b!647550 m!918339))

(declare-fun m!918341 () Bool)

(assert (=> b!647550 m!918341))

(declare-fun m!918343 () Bool)

(assert (=> b!647548 m!918343))

(declare-fun m!918345 () Bool)

(assert (=> b!647548 m!918345))

(declare-fun m!918347 () Bool)

(assert (=> b!647547 m!918347))

(declare-fun m!918349 () Bool)

(assert (=> d!224335 m!918349))

(declare-fun m!918351 () Bool)

(assert (=> d!224335 m!918351))

(declare-fun m!918353 () Bool)

(assert (=> b!647546 m!918353))

(assert (=> b!647546 m!918339))

(assert (=> b!647546 m!918339))

(assert (=> b!647546 m!918341))

(assert (=> b!647343 d!224335))

(declare-fun bs!84593 () Bool)

(declare-fun d!224337 () Bool)

(assert (= bs!84593 (and d!224337 b!647345)))

(declare-fun lambda!19696 () Int)

(assert (=> bs!84593 (= lambda!19696 lambda!19612)))

(declare-fun bs!84594 () Bool)

(assert (= bs!84594 (and d!224337 b!647426)))

(assert (=> bs!84594 (= lambda!19696 lambda!19635)))

(declare-fun bs!84595 () Bool)

(assert (= bs!84595 (and d!224337 d!224293)))

(assert (=> bs!84595 (not (= lambda!19696 lambda!19624))))

(declare-fun bs!84596 () Bool)

(assert (= bs!84596 (and d!224337 d!224299)))

(assert (=> bs!84596 (= lambda!19696 lambda!19636)))

(declare-fun bs!84597 () Bool)

(assert (= bs!84597 (and d!224337 d!224291)))

(assert (=> bs!84597 (not (= lambda!19696 lambda!19621))))

(assert (=> bs!84597 (= lambda!19696 lambda!19620)))

(declare-fun b!647573 () Bool)

(declare-fun e!397557 () Option!1669)

(assert (=> b!647573 (= e!397557 (Some!1668 (emptyPrintableTokens!17 lt!277449)))))

(declare-fun bm!41983 () Bool)

(declare-fun call!41990 () PrintableTokens!152)

(declare-fun head!1360 (BalanceConc!4720) PrintableTokens!152)

(assert (=> bm!41983 (= call!41990 (head!1360 (map!1540 lt!277448 lambda!19611)))))

(declare-fun b!647574 () Bool)

(declare-fun c!117734 () Bool)

(declare-fun lt!277678 () Option!1669)

(assert (=> b!647574 (= c!117734 ((_ is Some!1668) lt!277678))))

(declare-fun call!41988 () Option!1669)

(assert (=> b!647574 (= lt!277678 call!41988)))

(declare-fun e!397561 () Option!1669)

(declare-fun e!397556 () Option!1669)

(assert (=> b!647574 (= e!397561 e!397556)))

(declare-fun b!647575 () Bool)

(declare-fun e!397560 () Option!1669)

(assert (=> b!647575 (= e!397560 None!1668)))

(declare-fun b!647576 () Bool)

(declare-fun e!397558 () Bool)

(declare-fun lt!277680 () Option!1669)

(assert (=> b!647576 (= e!397558 (usesJsonRules!0 (get!2493 lt!277680)))))

(declare-fun bm!41984 () Bool)

(declare-fun call!41991 () BalanceConc!4720)

(declare-fun c!117737 () Bool)

(declare-fun lt!277677 () Option!1669)

(declare-fun call!41989 () Option!1669)

(assert (=> bm!41984 (= call!41989 (recombineSlicesWithSep!0 call!41991 (v!17144 (_1!4106 lt!277450)) (ite c!117737 (v!17144 lt!277678) (v!17144 lt!277677))))))

(assert (=> d!224337 e!397558))

(declare-fun res!283591 () Bool)

(assert (=> d!224337 (=> res!283591 e!397558)))

(assert (=> d!224337 (= res!283591 (isEmpty!4738 lt!277680))))

(assert (=> d!224337 (= lt!277680 e!397557)))

(declare-fun c!117735 () Bool)

(declare-fun isEmpty!4741 (BalanceConc!4720) Bool)

(assert (=> d!224337 (= c!117735 (isEmpty!4741 (map!1540 lt!277448 lambda!19611)))))

(assert (=> d!224337 (forall!1803 (map!1540 lt!277448 lambda!19611) lambda!19696)))

(assert (=> d!224337 (= (recombineSlicesWithSep!0 (map!1540 lt!277448 lambda!19611) (v!17144 (_1!4106 lt!277450)) (emptyPrintableTokens!17 lt!277449)) lt!277680)))

(declare-fun bm!41985 () Bool)

(declare-fun tail!922 (BalanceConc!4720) BalanceConc!4720)

(assert (=> bm!41985 (= call!41991 (tail!922 (map!1540 lt!277448 lambda!19611)))))

(declare-fun b!647577 () Bool)

(assert (=> b!647577 (= e!397557 e!397561)))

(declare-fun size!5500 (BalanceConc!4720) Int)

(assert (=> b!647577 (= c!117737 (= (size!5500 (map!1540 lt!277448 lambda!19611)) 1))))

(declare-fun b!647578 () Bool)

(assert (=> b!647578 (= e!397556 None!1668)))

(declare-fun b!647579 () Bool)

(declare-fun c!117736 () Bool)

(declare-fun lt!277679 () Option!1669)

(assert (=> b!647579 (= c!117736 ((_ is Some!1668) lt!277679))))

(assert (=> b!647579 (= lt!277679 (append!233 call!41990 (v!17144 (_1!4106 lt!277450))))))

(declare-fun e!397559 () Option!1669)

(assert (=> b!647579 (= e!397561 e!397559)))

(declare-fun b!647580 () Bool)

(assert (=> b!647580 (= e!397560 call!41989)))

(declare-fun b!647581 () Bool)

(assert (=> b!647581 (= e!397556 call!41989)))

(declare-fun b!647582 () Bool)

(assert (=> b!647582 (= e!397559 None!1668)))

(declare-fun bm!41986 () Bool)

(assert (=> bm!41986 (= call!41988 (append!233 (emptyPrintableTokens!17 lt!277449) (ite c!117737 call!41990 (v!17144 lt!277679))))))

(declare-fun b!647583 () Bool)

(assert (=> b!647583 (= e!397559 e!397560)))

(assert (=> b!647583 (= lt!277677 call!41988)))

(declare-fun c!117733 () Bool)

(assert (=> b!647583 (= c!117733 ((_ is Some!1668) lt!277677))))

(assert (= (and d!224337 c!117735) b!647573))

(assert (= (and d!224337 (not c!117735)) b!647577))

(assert (= (and b!647577 c!117737) b!647574))

(assert (= (and b!647577 (not c!117737)) b!647579))

(assert (= (and b!647574 c!117734) b!647581))

(assert (= (and b!647574 (not c!117734)) b!647578))

(assert (= (and b!647579 c!117736) b!647583))

(assert (= (and b!647579 (not c!117736)) b!647582))

(assert (= (and b!647583 c!117733) b!647580))

(assert (= (and b!647583 (not c!117733)) b!647575))

(assert (= (or b!647574 b!647579) bm!41983))

(assert (= (or b!647581 b!647580) bm!41985))

(assert (= (or b!647574 b!647583) bm!41986))

(assert (= (or b!647581 b!647580) bm!41984))

(assert (= (and d!224337 (not res!283591)) b!647576))

(assert (=> b!647577 m!917963))

(declare-fun m!918355 () Bool)

(assert (=> b!647577 m!918355))

(declare-fun m!918357 () Bool)

(assert (=> b!647579 m!918357))

(assert (=> bm!41986 m!917985))

(declare-fun m!918359 () Bool)

(assert (=> bm!41986 m!918359))

(declare-fun m!918361 () Bool)

(assert (=> d!224337 m!918361))

(assert (=> d!224337 m!917963))

(declare-fun m!918363 () Bool)

(assert (=> d!224337 m!918363))

(assert (=> d!224337 m!917963))

(declare-fun m!918365 () Bool)

(assert (=> d!224337 m!918365))

(declare-fun m!918367 () Bool)

(assert (=> b!647576 m!918367))

(assert (=> b!647576 m!918367))

(declare-fun m!918369 () Bool)

(assert (=> b!647576 m!918369))

(assert (=> bm!41983 m!917963))

(declare-fun m!918371 () Bool)

(assert (=> bm!41983 m!918371))

(assert (=> bm!41985 m!917963))

(declare-fun m!918373 () Bool)

(assert (=> bm!41985 m!918373))

(declare-fun m!918375 () Bool)

(assert (=> bm!41984 m!918375))

(assert (=> b!647351 d!224337))

(assert (=> b!647351 d!224303))

(declare-fun d!224339 () Bool)

(assert (=> d!224339 (isEmpty!4740 (BalanceConc!4717 Empty!2352))))

(assert (=> d!224339 (not (isEmpty!4734 lt!277449))))

(assert (=> d!224339 (= (emptyPrintableTokens!17 lt!277449) (PrintableTokens!153 lt!277449 (BalanceConc!4717 Empty!2352)))))

(declare-fun bs!84598 () Bool)

(assert (= bs!84598 d!224339))

(declare-fun m!918377 () Bool)

(assert (=> bs!84598 m!918377))

(assert (=> bs!84598 m!917939))

(assert (=> b!647351 d!224339))

(declare-fun setRes!3095 () Bool)

(declare-fun e!397570 () Bool)

(declare-fun tp!199962 () Bool)

(declare-fun b!647588 () Bool)

(declare-fun inv!8774 (Context!414) Bool)

(assert (=> b!647588 (= e!397570 (and (inv!8774 (_2!4104 (_1!4105 (h!12338 (zeroValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))))) setRes!3095 tp!199962))))

(declare-fun condSetEmpty!3095 () Bool)

(assert (=> b!647588 (= condSetEmpty!3095 (= (_2!4105 (h!12338 (zeroValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3095 () Bool)

(assert (=> setIsEmpty!3095 setRes!3095))

(declare-fun setNonEmpty!3095 () Bool)

(declare-fun tp!199963 () Bool)

(declare-fun setElem!3095 () Context!414)

(assert (=> setNonEmpty!3095 (= setRes!3095 (and tp!199963 (inv!8774 setElem!3095)))))

(declare-fun setRest!3095 () (InoxSet Context!414))

(assert (=> setNonEmpty!3095 (= (_2!4105 (h!12338 (zeroValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3095 true) setRest!3095))))

(assert (=> b!647331 (= tp!199947 e!397570)))

(assert (= (and b!647588 condSetEmpty!3095) setIsEmpty!3095))

(assert (= (and b!647588 (not condSetEmpty!3095)) setNonEmpty!3095))

(assert (= (and b!647331 ((_ is Cons!6937) (zeroValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))) b!647588))

(declare-fun m!918379 () Bool)

(assert (=> b!647588 m!918379))

(declare-fun m!918381 () Bool)

(assert (=> setNonEmpty!3095 m!918381))

(declare-fun setRes!3096 () Bool)

(declare-fun e!397573 () Bool)

(declare-fun tp!199964 () Bool)

(declare-fun b!647589 () Bool)

(assert (=> b!647589 (= e!397573 (and (inv!8774 (_2!4104 (_1!4105 (h!12338 (minValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))))) setRes!3096 tp!199964))))

(declare-fun condSetEmpty!3096 () Bool)

(assert (=> b!647589 (= condSetEmpty!3096 (= (_2!4105 (h!12338 (minValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3096 () Bool)

(assert (=> setIsEmpty!3096 setRes!3096))

(declare-fun setNonEmpty!3096 () Bool)

(declare-fun tp!199965 () Bool)

(declare-fun setElem!3096 () Context!414)

(assert (=> setNonEmpty!3096 (= setRes!3096 (and tp!199965 (inv!8774 setElem!3096)))))

(declare-fun setRest!3096 () (InoxSet Context!414))

(assert (=> setNonEmpty!3096 (= (_2!4105 (h!12338 (minValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3096 true) setRest!3096))))

(assert (=> b!647331 (= tp!199942 e!397573)))

(assert (= (and b!647589 condSetEmpty!3096) setIsEmpty!3096))

(assert (= (and b!647589 (not condSetEmpty!3096)) setNonEmpty!3096))

(assert (= (and b!647331 ((_ is Cons!6937) (minValue!938 (v!17142 (underlying!1545 (v!17143 (underlying!1546 (cache!1040 cacheDown!364)))))))) b!647589))

(declare-fun m!918383 () Bool)

(assert (=> b!647589 m!918383))

(declare-fun m!918385 () Bool)

(assert (=> setNonEmpty!3096 m!918385))

(declare-fun b!647600 () Bool)

(declare-fun b_free!18901 () Bool)

(declare-fun b_next!18957 () Bool)

(assert (=> b!647600 (= b_free!18901 (not b_next!18957))))

(declare-fun tp!199974 () Bool)

(declare-fun b_and!62695 () Bool)

(assert (=> b!647600 (= tp!199974 b_and!62695)))

(declare-fun b_free!18903 () Bool)

(declare-fun b_next!18959 () Bool)

(assert (=> b!647600 (= b_free!18903 (not b_next!18959))))

(declare-fun tp!199973 () Bool)

(declare-fun b_and!62697 () Bool)

(assert (=> b!647600 (= tp!199973 b_and!62697)))

(declare-fun e!397584 () Bool)

(assert (=> b!647600 (= e!397584 (and tp!199974 tp!199973))))

(declare-fun b!647599 () Bool)

(declare-fun e!397583 () Bool)

(declare-fun inv!8761 (String!8838) Bool)

(declare-fun inv!8775 (TokenValueInjection!2592) Bool)

(assert (=> b!647599 (= e!397583 (and (inv!8761 (tag!1648 (h!12337 (rules!8237 printableTokens!2)))) (inv!8775 (transformation!1386 (h!12337 (rules!8237 printableTokens!2)))) e!397584))))

(declare-fun b!647598 () Bool)

(declare-fun e!397585 () Bool)

(declare-fun tp!199972 () Bool)

(assert (=> b!647598 (= e!397585 (and e!397583 tp!199972))))

(assert (=> b!647349 (= tp!199946 e!397585)))

(assert (= b!647599 b!647600))

(assert (= b!647598 b!647599))

(assert (= (and b!647349 ((_ is Cons!6936) (rules!8237 printableTokens!2))) b!647598))

(declare-fun m!918387 () Bool)

(assert (=> b!647599 m!918387))

(declare-fun m!918389 () Bool)

(assert (=> b!647599 m!918389))

(declare-fun condMapEmpty!2706 () Bool)

(declare-fun mapDefault!2706 () List!6951)

(assert (=> mapNonEmpty!2703 (= condMapEmpty!2706 (= mapRest!2702 ((as const (Array (_ BitVec 32) List!6951)) mapDefault!2706)))))

(declare-fun e!397599 () Bool)

(declare-fun mapRes!2706 () Bool)

(assert (=> mapNonEmpty!2703 (= tp!199944 (and e!397599 mapRes!2706))))

(declare-fun mapIsEmpty!2706 () Bool)

(assert (=> mapIsEmpty!2706 mapRes!2706))

(declare-fun mapNonEmpty!2706 () Bool)

(declare-fun tp!199988 () Bool)

(declare-fun e!397603 () Bool)

(assert (=> mapNonEmpty!2706 (= mapRes!2706 (and tp!199988 e!397603))))

(declare-fun mapValue!2706 () List!6951)

(declare-fun mapRest!2706 () (Array (_ BitVec 32) List!6951))

(declare-fun mapKey!2706 () (_ BitVec 32))

(assert (=> mapNonEmpty!2706 (= mapRest!2702 (store mapRest!2706 mapKey!2706 mapValue!2706))))

(declare-fun setNonEmpty!3101 () Bool)

(declare-fun setRes!3101 () Bool)

(declare-fun tp!199987 () Bool)

(declare-fun setElem!3102 () Context!414)

(assert (=> setNonEmpty!3101 (= setRes!3101 (and tp!199987 (inv!8774 setElem!3102)))))

(declare-fun setRest!3101 () (InoxSet Context!414))

(assert (=> setNonEmpty!3101 (= (_2!4105 (h!12338 mapValue!2706)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3102 true) setRest!3101))))

(declare-fun setNonEmpty!3102 () Bool)

(declare-fun setRes!3102 () Bool)

(declare-fun tp!199989 () Bool)

(declare-fun setElem!3101 () Context!414)

(assert (=> setNonEmpty!3102 (= setRes!3102 (and tp!199989 (inv!8774 setElem!3101)))))

(declare-fun setRest!3102 () (InoxSet Context!414))

(assert (=> setNonEmpty!3102 (= (_2!4105 (h!12338 mapDefault!2706)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3101 true) setRest!3102))))

(declare-fun setIsEmpty!3101 () Bool)

(assert (=> setIsEmpty!3101 setRes!3101))

(declare-fun tp!199985 () Bool)

(declare-fun b!647607 () Bool)

(assert (=> b!647607 (= e!397599 (and (inv!8774 (_2!4104 (_1!4105 (h!12338 mapDefault!2706)))) setRes!3102 tp!199985))))

(declare-fun condSetEmpty!3101 () Bool)

(assert (=> b!647607 (= condSetEmpty!3101 (= (_2!4105 (h!12338 mapDefault!2706)) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3102 () Bool)

(assert (=> setIsEmpty!3102 setRes!3102))

(declare-fun tp!199986 () Bool)

(declare-fun b!647608 () Bool)

(assert (=> b!647608 (= e!397603 (and (inv!8774 (_2!4104 (_1!4105 (h!12338 mapValue!2706)))) setRes!3101 tp!199986))))

(declare-fun condSetEmpty!3102 () Bool)

(assert (=> b!647608 (= condSetEmpty!3102 (= (_2!4105 (h!12338 mapValue!2706)) ((as const (Array Context!414 Bool)) false)))))

(assert (= (and mapNonEmpty!2703 condMapEmpty!2706) mapIsEmpty!2706))

(assert (= (and mapNonEmpty!2703 (not condMapEmpty!2706)) mapNonEmpty!2706))

(assert (= (and b!647608 condSetEmpty!3102) setIsEmpty!3101))

(assert (= (and b!647608 (not condSetEmpty!3102)) setNonEmpty!3101))

(assert (= (and mapNonEmpty!2706 ((_ is Cons!6937) mapValue!2706)) b!647608))

(assert (= (and b!647607 condSetEmpty!3101) setIsEmpty!3102))

(assert (= (and b!647607 (not condSetEmpty!3101)) setNonEmpty!3102))

(assert (= (and mapNonEmpty!2703 ((_ is Cons!6937) mapDefault!2706)) b!647607))

(declare-fun m!918391 () Bool)

(assert (=> b!647608 m!918391))

(declare-fun m!918393 () Bool)

(assert (=> b!647607 m!918393))

(declare-fun m!918395 () Bool)

(assert (=> setNonEmpty!3101 m!918395))

(declare-fun m!918397 () Bool)

(assert (=> setNonEmpty!3102 m!918397))

(declare-fun m!918399 () Bool)

(assert (=> mapNonEmpty!2706 m!918399))

(declare-fun tp!199990 () Bool)

(declare-fun setRes!3103 () Bool)

(declare-fun e!397606 () Bool)

(declare-fun b!647609 () Bool)

(assert (=> b!647609 (= e!397606 (and (inv!8774 (_2!4104 (_1!4105 (h!12338 mapValue!2703)))) setRes!3103 tp!199990))))

(declare-fun condSetEmpty!3103 () Bool)

(assert (=> b!647609 (= condSetEmpty!3103 (= (_2!4105 (h!12338 mapValue!2703)) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3103 () Bool)

(assert (=> setIsEmpty!3103 setRes!3103))

(declare-fun setNonEmpty!3103 () Bool)

(declare-fun tp!199991 () Bool)

(declare-fun setElem!3103 () Context!414)

(assert (=> setNonEmpty!3103 (= setRes!3103 (and tp!199991 (inv!8774 setElem!3103)))))

(declare-fun setRest!3103 () (InoxSet Context!414))

(assert (=> setNonEmpty!3103 (= (_2!4105 (h!12338 mapValue!2703)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3103 true) setRest!3103))))

(assert (=> mapNonEmpty!2703 (= tp!199956 e!397606)))

(assert (= (and b!647609 condSetEmpty!3103) setIsEmpty!3103))

(assert (= (and b!647609 (not condSetEmpty!3103)) setNonEmpty!3103))

(assert (= (and mapNonEmpty!2703 ((_ is Cons!6937) mapValue!2703)) b!647609))

(declare-fun m!918401 () Bool)

(assert (=> b!647609 m!918401))

(declare-fun m!918403 () Bool)

(assert (=> setNonEmpty!3103 m!918403))

(declare-fun e!397615 () Bool)

(declare-fun setRes!3106 () Bool)

(declare-fun tp!199997 () Bool)

(declare-fun b!647614 () Bool)

(assert (=> b!647614 (= e!397615 (and (inv!8774 (_1!4102 (_1!4103 (h!12334 (zeroValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))))) setRes!3106 tp!199997))))

(declare-fun condSetEmpty!3106 () Bool)

(assert (=> b!647614 (= condSetEmpty!3106 (= (_2!4103 (h!12334 (zeroValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3106 () Bool)

(assert (=> setIsEmpty!3106 setRes!3106))

(declare-fun setNonEmpty!3106 () Bool)

(declare-fun tp!199996 () Bool)

(declare-fun setElem!3106 () Context!414)

(assert (=> setNonEmpty!3106 (= setRes!3106 (and tp!199996 (inv!8774 setElem!3106)))))

(declare-fun setRest!3106 () (InoxSet Context!414))

(assert (=> setNonEmpty!3106 (= (_2!4103 (h!12334 (zeroValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3106 true) setRest!3106))))

(assert (=> b!647355 (= tp!199951 e!397615)))

(assert (= (and b!647614 condSetEmpty!3106) setIsEmpty!3106))

(assert (= (and b!647614 (not condSetEmpty!3106)) setNonEmpty!3106))

(assert (= (and b!647355 ((_ is Cons!6933) (zeroValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))) b!647614))

(declare-fun m!918405 () Bool)

(assert (=> b!647614 m!918405))

(declare-fun m!918407 () Bool)

(assert (=> setNonEmpty!3106 m!918407))

(declare-fun e!397618 () Bool)

(declare-fun setRes!3107 () Bool)

(declare-fun b!647615 () Bool)

(declare-fun tp!199999 () Bool)

(assert (=> b!647615 (= e!397618 (and (inv!8774 (_1!4102 (_1!4103 (h!12334 (minValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))))) setRes!3107 tp!199999))))

(declare-fun condSetEmpty!3107 () Bool)

(assert (=> b!647615 (= condSetEmpty!3107 (= (_2!4103 (h!12334 (minValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3107 () Bool)

(assert (=> setIsEmpty!3107 setRes!3107))

(declare-fun setNonEmpty!3107 () Bool)

(declare-fun tp!199998 () Bool)

(declare-fun setElem!3107 () Context!414)

(assert (=> setNonEmpty!3107 (= setRes!3107 (and tp!199998 (inv!8774 setElem!3107)))))

(declare-fun setRest!3107 () (InoxSet Context!414))

(assert (=> setNonEmpty!3107 (= (_2!4103 (h!12334 (minValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3107 true) setRest!3107))))

(assert (=> b!647355 (= tp!199955 e!397618)))

(assert (= (and b!647615 condSetEmpty!3107) setIsEmpty!3107))

(assert (= (and b!647615 (not condSetEmpty!3107)) setNonEmpty!3107))

(assert (= (and b!647355 ((_ is Cons!6933) (minValue!937 (v!17140 (underlying!1543 (v!17141 (underlying!1544 (cache!1039 cacheUp!351)))))))) b!647615))

(declare-fun m!918409 () Bool)

(assert (=> b!647615 m!918409))

(declare-fun m!918411 () Bool)

(assert (=> setNonEmpty!3107 m!918411))

(declare-fun tp!200000 () Bool)

(declare-fun b!647616 () Bool)

(declare-fun e!397621 () Bool)

(declare-fun setRes!3108 () Bool)

(assert (=> b!647616 (= e!397621 (and (inv!8774 (_2!4104 (_1!4105 (h!12338 mapDefault!2702)))) setRes!3108 tp!200000))))

(declare-fun condSetEmpty!3108 () Bool)

(assert (=> b!647616 (= condSetEmpty!3108 (= (_2!4105 (h!12338 mapDefault!2702)) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3108 () Bool)

(assert (=> setIsEmpty!3108 setRes!3108))

(declare-fun setNonEmpty!3108 () Bool)

(declare-fun tp!200001 () Bool)

(declare-fun setElem!3108 () Context!414)

(assert (=> setNonEmpty!3108 (= setRes!3108 (and tp!200001 (inv!8774 setElem!3108)))))

(declare-fun setRest!3108 () (InoxSet Context!414))

(assert (=> setNonEmpty!3108 (= (_2!4105 (h!12338 mapDefault!2702)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3108 true) setRest!3108))))

(assert (=> b!647337 (= tp!199948 e!397621)))

(assert (= (and b!647616 condSetEmpty!3108) setIsEmpty!3108))

(assert (= (and b!647616 (not condSetEmpty!3108)) setNonEmpty!3108))

(assert (= (and b!647337 ((_ is Cons!6937) mapDefault!2702)) b!647616))

(declare-fun m!918413 () Bool)

(assert (=> b!647616 m!918413))

(declare-fun m!918415 () Bool)

(assert (=> setNonEmpty!3108 m!918415))

(declare-fun b!647617 () Bool)

(declare-fun setRes!3109 () Bool)

(declare-fun e!397624 () Bool)

(declare-fun tp!200003 () Bool)

(assert (=> b!647617 (= e!397624 (and (inv!8774 (_1!4102 (_1!4103 (h!12334 mapDefault!2703)))) setRes!3109 tp!200003))))

(declare-fun condSetEmpty!3109 () Bool)

(assert (=> b!647617 (= condSetEmpty!3109 (= (_2!4103 (h!12334 mapDefault!2703)) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3109 () Bool)

(assert (=> setIsEmpty!3109 setRes!3109))

(declare-fun setNonEmpty!3109 () Bool)

(declare-fun tp!200002 () Bool)

(declare-fun setElem!3109 () Context!414)

(assert (=> setNonEmpty!3109 (= setRes!3109 (and tp!200002 (inv!8774 setElem!3109)))))

(declare-fun setRest!3109 () (InoxSet Context!414))

(assert (=> setNonEmpty!3109 (= (_2!4103 (h!12334 mapDefault!2703)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3109 true) setRest!3109))))

(assert (=> b!647336 (= tp!199945 e!397624)))

(assert (= (and b!647617 condSetEmpty!3109) setIsEmpty!3109))

(assert (= (and b!647617 (not condSetEmpty!3109)) setNonEmpty!3109))

(assert (= (and b!647336 ((_ is Cons!6933) mapDefault!2703)) b!647617))

(declare-fun m!918417 () Bool)

(assert (=> b!647617 m!918417))

(declare-fun m!918419 () Bool)

(assert (=> setNonEmpty!3109 m!918419))

(declare-fun setRes!3114 () Bool)

(declare-fun mapDefault!2709 () List!6947)

(declare-fun b!647624 () Bool)

(declare-fun tp!200016 () Bool)

(declare-fun e!397638 () Bool)

(assert (=> b!647624 (= e!397638 (and (inv!8774 (_1!4102 (_1!4103 (h!12334 mapDefault!2709)))) setRes!3114 tp!200016))))

(declare-fun condSetEmpty!3114 () Bool)

(assert (=> b!647624 (= condSetEmpty!3114 (= (_2!4103 (h!12334 mapDefault!2709)) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3114 () Bool)

(assert (=> setIsEmpty!3114 setRes!3114))

(declare-fun mapIsEmpty!2709 () Bool)

(declare-fun mapRes!2709 () Bool)

(assert (=> mapIsEmpty!2709 mapRes!2709))

(declare-fun setNonEmpty!3114 () Bool)

(declare-fun setRes!3115 () Bool)

(declare-fun tp!200015 () Bool)

(declare-fun setElem!3114 () Context!414)

(assert (=> setNonEmpty!3114 (= setRes!3115 (and tp!200015 (inv!8774 setElem!3114)))))

(declare-fun mapValue!2709 () List!6947)

(declare-fun setRest!3114 () (InoxSet Context!414))

(assert (=> setNonEmpty!3114 (= (_2!4103 (h!12334 mapValue!2709)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3114 true) setRest!3114))))

(declare-fun condMapEmpty!2709 () Bool)

(assert (=> mapNonEmpty!2702 (= condMapEmpty!2709 (= mapRest!2703 ((as const (Array (_ BitVec 32) List!6947)) mapDefault!2709)))))

(assert (=> mapNonEmpty!2702 (= tp!199949 (and e!397638 mapRes!2709))))

(declare-fun setNonEmpty!3115 () Bool)

(declare-fun tp!200017 () Bool)

(declare-fun setElem!3115 () Context!414)

(assert (=> setNonEmpty!3115 (= setRes!3114 (and tp!200017 (inv!8774 setElem!3115)))))

(declare-fun setRest!3115 () (InoxSet Context!414))

(assert (=> setNonEmpty!3115 (= (_2!4103 (h!12334 mapDefault!2709)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3115 true) setRest!3115))))

(declare-fun setIsEmpty!3115 () Bool)

(assert (=> setIsEmpty!3115 setRes!3115))

(declare-fun e!397639 () Bool)

(declare-fun b!647625 () Bool)

(declare-fun tp!200018 () Bool)

(assert (=> b!647625 (= e!397639 (and (inv!8774 (_1!4102 (_1!4103 (h!12334 mapValue!2709)))) setRes!3115 tp!200018))))

(declare-fun condSetEmpty!3115 () Bool)

(assert (=> b!647625 (= condSetEmpty!3115 (= (_2!4103 (h!12334 mapValue!2709)) ((as const (Array Context!414 Bool)) false)))))

(declare-fun mapNonEmpty!2709 () Bool)

(declare-fun tp!200014 () Bool)

(assert (=> mapNonEmpty!2709 (= mapRes!2709 (and tp!200014 e!397639))))

(declare-fun mapRest!2709 () (Array (_ BitVec 32) List!6947))

(declare-fun mapKey!2709 () (_ BitVec 32))

(assert (=> mapNonEmpty!2709 (= mapRest!2703 (store mapRest!2709 mapKey!2709 mapValue!2709))))

(assert (= (and mapNonEmpty!2702 condMapEmpty!2709) mapIsEmpty!2709))

(assert (= (and mapNonEmpty!2702 (not condMapEmpty!2709)) mapNonEmpty!2709))

(assert (= (and b!647625 condSetEmpty!3115) setIsEmpty!3115))

(assert (= (and b!647625 (not condSetEmpty!3115)) setNonEmpty!3114))

(assert (= (and mapNonEmpty!2709 ((_ is Cons!6933) mapValue!2709)) b!647625))

(assert (= (and b!647624 condSetEmpty!3114) setIsEmpty!3114))

(assert (= (and b!647624 (not condSetEmpty!3114)) setNonEmpty!3115))

(assert (= (and mapNonEmpty!2702 ((_ is Cons!6933) mapDefault!2709)) b!647624))

(declare-fun m!918421 () Bool)

(assert (=> setNonEmpty!3114 m!918421))

(declare-fun m!918423 () Bool)

(assert (=> b!647624 m!918423))

(declare-fun m!918425 () Bool)

(assert (=> setNonEmpty!3115 m!918425))

(declare-fun m!918427 () Bool)

(assert (=> mapNonEmpty!2709 m!918427))

(declare-fun m!918429 () Bool)

(assert (=> b!647625 m!918429))

(declare-fun b!647626 () Bool)

(declare-fun tp!200020 () Bool)

(declare-fun e!397645 () Bool)

(declare-fun setRes!3116 () Bool)

(assert (=> b!647626 (= e!397645 (and (inv!8774 (_1!4102 (_1!4103 (h!12334 mapValue!2702)))) setRes!3116 tp!200020))))

(declare-fun condSetEmpty!3116 () Bool)

(assert (=> b!647626 (= condSetEmpty!3116 (= (_2!4103 (h!12334 mapValue!2702)) ((as const (Array Context!414 Bool)) false)))))

(declare-fun setIsEmpty!3116 () Bool)

(assert (=> setIsEmpty!3116 setRes!3116))

(declare-fun setNonEmpty!3116 () Bool)

(declare-fun tp!200019 () Bool)

(declare-fun setElem!3116 () Context!414)

(assert (=> setNonEmpty!3116 (= setRes!3116 (and tp!200019 (inv!8774 setElem!3116)))))

(declare-fun setRest!3116 () (InoxSet Context!414))

(assert (=> setNonEmpty!3116 (= (_2!4103 (h!12334 mapValue!2702)) ((_ map or) (store ((as const (Array Context!414 Bool)) false) setElem!3116 true) setRest!3116))))

(assert (=> mapNonEmpty!2702 (= tp!199943 e!397645)))

(assert (= (and b!647626 condSetEmpty!3116) setIsEmpty!3116))

(assert (= (and b!647626 (not condSetEmpty!3116)) setNonEmpty!3116))

(assert (= (and mapNonEmpty!2702 ((_ is Cons!6933) mapValue!2702)) b!647626))

(declare-fun m!918431 () Bool)

(assert (=> b!647626 m!918431))

(declare-fun m!918433 () Bool)

(assert (=> setNonEmpty!3116 m!918433))

(declare-fun tp!200027 () Bool)

(declare-fun tp!200029 () Bool)

(declare-fun e!397650 () Bool)

(declare-fun b!647635 () Bool)

(assert (=> b!647635 (= e!397650 (and (inv!8767 (left!5510 (c!117662 (tokens!1225 printableTokens!2)))) tp!200027 (inv!8767 (right!5840 (c!117662 (tokens!1225 printableTokens!2)))) tp!200029))))

(declare-fun b!647637 () Bool)

(declare-fun e!397651 () Bool)

(declare-fun tp!200028 () Bool)

(assert (=> b!647637 (= e!397651 tp!200028)))

(declare-fun b!647636 () Bool)

(declare-fun inv!8776 (IArray!4705) Bool)

(assert (=> b!647636 (= e!397650 (and (inv!8776 (xs!4993 (c!117662 (tokens!1225 printableTokens!2)))) e!397651))))

(assert (=> b!647333 (= tp!199950 (and (inv!8767 (c!117662 (tokens!1225 printableTokens!2))) e!397650))))

(assert (= (and b!647333 ((_ is Node!2352) (c!117662 (tokens!1225 printableTokens!2)))) b!647635))

(assert (= b!647636 b!647637))

(assert (= (and b!647333 ((_ is Leaf!3561) (c!117662 (tokens!1225 printableTokens!2)))) b!647636))

(declare-fun m!918435 () Bool)

(assert (=> b!647635 m!918435))

(declare-fun m!918437 () Bool)

(assert (=> b!647635 m!918437))

(declare-fun m!918439 () Bool)

(assert (=> b!647636 m!918439))

(assert (=> b!647333 m!917915))

(check-sat (not setNonEmpty!3114) (not b!647378) (not setNonEmpty!3103) (not b!647535) (not setNonEmpty!3109) (not b_next!18959) (not b!647475) (not setNonEmpty!3095) (not b!647579) (not d!224331) (not b!647411) (not b!647474) (not d!224311) (not setNonEmpty!3102) (not d!224289) (not d!224259) (not d!224277) (not setNonEmpty!3096) (not d!224309) (not b_next!18953) (not b!647461) (not b!647385) (not d!224271) (not d!224273) (not d!224319) (not d!224307) b_and!62691 (not d!224299) (not b!647523) (not b!647478) b_and!62693 (not b_next!18955) (not b!647412) (not b_next!18957) (not b!647635) (not b!647409) (not b!647462) (not b!647333) (not b!647616) (not b!647608) (not setNonEmpty!3106) (not b!647607) (not d!224339) (not b!647547) (not b!647518) (not b!647624) (not b!647626) (not b_next!18949) (not b!647509) (not d!224305) (not b!647454) (not d!224293) (not d!224267) (not mapNonEmpty!2709) (not d!224285) (not b!647426) (not mapNonEmpty!2706) (not bm!41971) (not b!647360) (not d!224269) (not b!647470) (not bm!41974) (not d!224325) (not setNonEmpty!3116) (not b!647370) (not d!224337) (not setNonEmpty!3115) (not b!647501) (not b!647599) (not bm!41985) (not bm!41986) (not b!647589) (not d!224315) (not d!224303) (not b!647519) (not b!647636) (not b!647502) (not b!647363) (not b!647484) (not b!647463) (not b!647533) b_and!62697 (not b_next!18951) (not b!647379) (not d!224279) (not b!647458) (not b!647598) (not b!647576) (not b!647615) (not d!224291) (not b!647408) (not b!647455) (not b!647526) (not b!647520) (not d!224317) (not b!647406) (not d!224301) (not b!647617) (not d!224327) (not d!224287) (not b!647548) (not setNonEmpty!3107) (not d!224313) (not b!647588) (not b!647609) (not b!647550) (not b!647637) (not b!647511) (not b!647473) (not d!224297) (not b!647472) (not d!224265) (not d!224333) (not setNonEmpty!3108) (not bm!41984) (not b!647492) b_and!62689 (not b!647457) (not d!224295) (not setNonEmpty!3101) (not b!647577) (not b!647614) b_and!62687 (not b!647546) (not d!224335) b_and!62695 (not b!647493) (not b!647625) (not bm!41983) (not b!647471))
(check-sat (not b_next!18959) (not b_next!18953) b_and!62691 (not b_next!18957) (not b_next!18949) b_and!62689 b_and!62693 (not b_next!18955) b_and!62697 (not b_next!18951) b_and!62687 b_and!62695)
