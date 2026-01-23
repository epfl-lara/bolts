; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!159318 () Bool)

(assert start!159318)

(declare-fun b!1653718 () Bool)

(declare-fun b_free!44951 () Bool)

(declare-fun b_next!45655 () Bool)

(assert (=> b!1653718 (= b_free!44951 (not b_next!45655))))

(declare-fun tp!478297 () Bool)

(declare-fun b_and!117421 () Bool)

(assert (=> b!1653718 (= tp!478297 b_and!117421)))

(declare-fun b_free!44953 () Bool)

(declare-fun b_next!45657 () Bool)

(assert (=> b!1653718 (= b_free!44953 (not b_next!45657))))

(declare-fun tp!478296 () Bool)

(declare-fun b_and!117423 () Bool)

(assert (=> b!1653718 (= tp!478296 b_and!117423)))

(declare-fun b!1653720 () Bool)

(declare-fun b_free!44955 () Bool)

(declare-fun b_next!45659 () Bool)

(assert (=> b!1653720 (= b_free!44955 (not b_next!45659))))

(declare-fun tp!478294 () Bool)

(declare-fun b_and!117425 () Bool)

(assert (=> b!1653720 (= tp!478294 b_and!117425)))

(declare-fun b_free!44957 () Bool)

(declare-fun b_next!45661 () Bool)

(assert (=> b!1653720 (= b_free!44957 (not b_next!45661))))

(declare-fun tp!478299 () Bool)

(declare-fun b_and!117427 () Bool)

(assert (=> b!1653720 (= tp!478299 b_and!117427)))

(declare-fun b!1653695 () Bool)

(declare-fun e!1060442 () Bool)

(declare-fun e!1060451 () Bool)

(assert (=> b!1653695 (= e!1060442 e!1060451)))

(declare-fun res!741379 () Bool)

(assert (=> b!1653695 (=> res!741379 e!1060451)))

(declare-datatypes ((C!9268 0))(
  ( (C!9269 (val!5230 Int)) )
))
(declare-datatypes ((List!18323 0))(
  ( (Nil!18253) (Cons!18253 (h!23654 C!9268) (t!151118 List!18323)) )
))
(declare-fun lt!615443 () List!18323)

(declare-datatypes ((List!18324 0))(
  ( (Nil!18254) (Cons!18254 (h!23655 (_ BitVec 16)) (t!151119 List!18324)) )
))
(declare-datatypes ((TokenValue!3309 0))(
  ( (FloatLiteralValue!6618 (text!23608 List!18324)) (TokenValueExt!3308 (__x!11920 Int)) (Broken!16545 (value!101388 List!18324)) (Object!3378) (End!3309) (Def!3309) (Underscore!3309) (Match!3309) (Else!3309) (Error!3309) (Case!3309) (If!3309) (Extends!3309) (Abstract!3309) (Class!3309) (Val!3309) (DelimiterValue!6618 (del!3369 List!18324)) (KeywordValue!3315 (value!101389 List!18324)) (CommentValue!6618 (value!101390 List!18324)) (WhitespaceValue!6618 (value!101391 List!18324)) (IndentationValue!3309 (value!101392 List!18324)) (String!20876) (Int32!3309) (Broken!16546 (value!101393 List!18324)) (Boolean!3310) (Unit!30516) (OperatorValue!3312 (op!3369 List!18324)) (IdentifierValue!6618 (value!101394 List!18324)) (IdentifierValue!6619 (value!101395 List!18324)) (WhitespaceValue!6619 (value!101396 List!18324)) (True!6618) (False!6618) (Broken!16547 (value!101397 List!18324)) (Broken!16548 (value!101398 List!18324)) (True!6619) (RightBrace!3309) (RightBracket!3309) (Colon!3309) (Null!3309) (Comma!3309) (LeftBracket!3309) (False!6619) (LeftBrace!3309) (ImaginaryLiteralValue!3309 (text!23609 List!18324)) (StringLiteralValue!9927 (value!101399 List!18324)) (EOFValue!3309 (value!101400 List!18324)) (IdentValue!3309 (value!101401 List!18324)) (DelimiterValue!6619 (value!101402 List!18324)) (DedentValue!3309 (value!101403 List!18324)) (NewLineValue!3309 (value!101404 List!18324)) (IntegerValue!9927 (value!101405 (_ BitVec 32)) (text!23610 List!18324)) (IntegerValue!9928 (value!101406 Int) (text!23611 List!18324)) (Times!3309) (Or!3309) (Equal!3309) (Minus!3309) (Broken!16549 (value!101407 List!18324)) (And!3309) (Div!3309) (LessEqual!3309) (Mod!3309) (Concat!7856) (Not!3309) (Plus!3309) (SpaceValue!3309 (value!101408 List!18324)) (IntegerValue!9929 (value!101409 Int) (text!23612 List!18324)) (StringLiteralValue!9928 (text!23613 List!18324)) (FloatLiteralValue!6619 (text!23614 List!18324)) (BytesLiteralValue!3309 (value!101410 List!18324)) (CommentValue!6619 (value!101411 List!18324)) (StringLiteralValue!9929 (value!101412 List!18324)) (ErrorTokenValue!3309 (msg!3370 List!18324)) )
))
(declare-datatypes ((IArray!12177 0))(
  ( (IArray!12178 (innerList!6146 List!18323)) )
))
(declare-datatypes ((Conc!6086 0))(
  ( (Node!6086 (left!14621 Conc!6086) (right!14951 Conc!6086) (csize!12402 Int) (cheight!6297 Int)) (Leaf!8916 (xs!8926 IArray!12177) (csize!12403 Int)) (Empty!6086) )
))
(declare-datatypes ((BalanceConc!12116 0))(
  ( (BalanceConc!12117 (c!268993 Conc!6086)) )
))
(declare-datatypes ((Regex!4547 0))(
  ( (ElementMatch!4547 (c!268994 C!9268)) (Concat!7857 (regOne!9606 Regex!4547) (regTwo!9606 Regex!4547)) (EmptyExpr!4547) (Star!4547 (reg!4876 Regex!4547)) (EmptyLang!4547) (Union!4547 (regOne!9607 Regex!4547) (regTwo!9607 Regex!4547)) )
))
(declare-datatypes ((String!20877 0))(
  ( (String!20878 (value!101413 String)) )
))
(declare-datatypes ((TokenValueInjection!6278 0))(
  ( (TokenValueInjection!6279 (toValue!4670 Int) (toChars!4529 Int)) )
))
(declare-datatypes ((Rule!6238 0))(
  ( (Rule!6239 (regex!3219 Regex!4547) (tag!3501 String!20877) (isSeparator!3219 Bool) (transformation!3219 TokenValueInjection!6278)) )
))
(declare-datatypes ((Token!6004 0))(
  ( (Token!6005 (value!101414 TokenValue!3309) (rule!5085 Rule!6238) (size!14528 Int) (originalCharacters!4033 List!18323)) )
))
(declare-datatypes ((List!18325 0))(
  ( (Nil!18255) (Cons!18255 (h!23656 Token!6004) (t!151120 List!18325)) )
))
(declare-fun tokens!457 () List!18325)

(declare-fun lt!615426 () Regex!4547)

(declare-fun prefixMatch!464 (Regex!4547 List!18323) Bool)

(declare-fun ++!4945 (List!18323 List!18323) List!18323)

(assert (=> b!1653695 (= res!741379 (prefixMatch!464 lt!615426 (++!4945 (originalCharacters!4033 (h!23656 tokens!457)) lt!615443)))))

(declare-fun e!1060460 () Bool)

(assert (=> b!1653695 e!1060460))

(declare-fun res!741371 () Bool)

(assert (=> b!1653695 (=> (not res!741371) (not e!1060460))))

(declare-datatypes ((tuple2!17946 0))(
  ( (tuple2!17947 (_1!10375 Token!6004) (_2!10375 List!18323)) )
))
(declare-fun lt!615436 () tuple2!17946)

(assert (=> b!1653695 (= res!741371 (= (_1!10375 lt!615436) (h!23656 tokens!457)))))

(declare-datatypes ((Option!3477 0))(
  ( (None!3476) (Some!3476 (v!24661 tuple2!17946)) )
))
(declare-fun lt!615429 () Option!3477)

(declare-fun get!5321 (Option!3477) tuple2!17946)

(assert (=> b!1653695 (= lt!615436 (get!5321 lt!615429))))

(declare-fun isDefined!2832 (Option!3477) Bool)

(assert (=> b!1653695 (isDefined!2832 lt!615429)))

(declare-datatypes ((List!18326 0))(
  ( (Nil!18256) (Cons!18256 (h!23657 Rule!6238) (t!151121 List!18326)) )
))
(declare-fun rules!1846 () List!18326)

(declare-datatypes ((LexerInterface!2848 0))(
  ( (LexerInterfaceExt!2845 (__x!11921 Int)) (Lexer!2846) )
))
(declare-fun thiss!17113 () LexerInterface!2848)

(declare-fun lt!615428 () List!18323)

(declare-fun maxPrefix!1410 (LexerInterface!2848 List!18326 List!18323) Option!3477)

(assert (=> b!1653695 (= lt!615429 (maxPrefix!1410 thiss!17113 rules!1846 lt!615428))))

(assert (=> b!1653695 (isDefined!2832 (maxPrefix!1410 thiss!17113 rules!1846 (originalCharacters!4033 (h!23656 tokens!457))))))

(declare-fun b!1653696 () Bool)

(declare-fun e!1060448 () Bool)

(assert (=> b!1653696 (= e!1060448 e!1060442)))

(declare-fun res!741375 () Bool)

(assert (=> b!1653696 (=> res!741375 e!1060442)))

(declare-datatypes ((tuple2!17948 0))(
  ( (tuple2!17949 (_1!10376 Token!6004) (_2!10376 BalanceConc!12116)) )
))
(declare-datatypes ((Option!3478 0))(
  ( (None!3477) (Some!3477 (v!24662 tuple2!17948)) )
))
(declare-fun isDefined!2833 (Option!3478) Bool)

(declare-fun maxPrefixZipperSequence!725 (LexerInterface!2848 List!18326 BalanceConc!12116) Option!3478)

(declare-fun seqFromList!2177 (List!18323) BalanceConc!12116)

(assert (=> b!1653696 (= res!741375 (not (isDefined!2833 (maxPrefixZipperSequence!725 thiss!17113 rules!1846 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))))

(declare-fun lt!615430 () List!18323)

(assert (=> b!1653696 (= lt!615430 lt!615443)))

(declare-fun lt!615446 () BalanceConc!12116)

(declare-fun head!3656 (BalanceConc!12116) C!9268)

(assert (=> b!1653696 (= lt!615443 (Cons!18253 (head!3656 lt!615446) Nil!18253))))

(declare-fun e!1060447 () Bool)

(assert (=> b!1653696 e!1060447))

(declare-fun res!741368 () Bool)

(assert (=> b!1653696 (=> (not res!741368) (not e!1060447))))

(assert (=> b!1653696 (= res!741368 (= lt!615428 (originalCharacters!4033 (h!23656 tokens!457))))))

(declare-fun b!1653697 () Bool)

(declare-fun res!741378 () Bool)

(assert (=> b!1653697 (=> (not res!741378) (not e!1060460))))

(declare-fun isEmpty!11289 (List!18323) Bool)

(assert (=> b!1653697 (= res!741378 (isEmpty!11289 (_2!10375 lt!615436)))))

(declare-fun b!1653698 () Bool)

(declare-fun e!1060455 () Bool)

(declare-fun e!1060445 () Bool)

(assert (=> b!1653698 (= e!1060455 (not e!1060445))))

(declare-fun res!741373 () Bool)

(assert (=> b!1653698 (=> res!741373 e!1060445)))

(declare-fun lt!615431 () List!18325)

(assert (=> b!1653698 (= res!741373 (not (= lt!615431 (t!151120 tokens!457))))))

(declare-datatypes ((IArray!12179 0))(
  ( (IArray!12180 (innerList!6147 List!18325)) )
))
(declare-datatypes ((Conc!6087 0))(
  ( (Node!6087 (left!14622 Conc!6087) (right!14952 Conc!6087) (csize!12404 Int) (cheight!6298 Int)) (Leaf!8917 (xs!8927 IArray!12179) (csize!12405 Int)) (Empty!6087) )
))
(declare-datatypes ((BalanceConc!12118 0))(
  ( (BalanceConc!12119 (c!268995 Conc!6087)) )
))
(declare-datatypes ((tuple2!17950 0))(
  ( (tuple2!17951 (_1!10377 BalanceConc!12118) (_2!10377 BalanceConc!12116)) )
))
(declare-fun lt!615445 () tuple2!17950)

(declare-fun list!7269 (BalanceConc!12118) List!18325)

(assert (=> b!1653698 (= lt!615431 (list!7269 (_1!10377 lt!615445)))))

(declare-datatypes ((Unit!30517 0))(
  ( (Unit!30518) )
))
(declare-fun lt!615442 () Unit!30517)

(declare-fun theoremInvertabilityWhenTokenListSeparable!291 (LexerInterface!2848 List!18326 List!18325) Unit!30517)

(assert (=> b!1653698 (= lt!615442 (theoremInvertabilityWhenTokenListSeparable!291 thiss!17113 rules!1846 (t!151120 tokens!457)))))

(declare-fun lt!615450 () List!18323)

(declare-fun isPrefix!1477 (List!18323 List!18323) Bool)

(assert (=> b!1653698 (isPrefix!1477 lt!615428 lt!615450)))

(declare-fun lt!615447 () Unit!30517)

(declare-fun lt!615440 () List!18323)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1002 (List!18323 List!18323) Unit!30517)

(assert (=> b!1653698 (= lt!615447 (lemmaConcatTwoListThenFirstIsPrefix!1002 lt!615428 lt!615440))))

(declare-fun b!1653699 () Bool)

(declare-fun res!741366 () Bool)

(declare-fun e!1060453 () Bool)

(assert (=> b!1653699 (=> (not res!741366) (not e!1060453))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!541 (LexerInterface!2848 List!18325 List!18326) Bool)

(assert (=> b!1653699 (= res!741366 (tokensListTwoByTwoPredicateSeparableList!541 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1653700 () Bool)

(declare-fun res!741374 () Bool)

(assert (=> b!1653700 (=> (not res!741374) (not e!1060453))))

(get-info :version)

(assert (=> b!1653700 (= res!741374 (and (not ((_ is Nil!18255) tokens!457)) (not ((_ is Nil!18255) (t!151120 tokens!457)))))))

(declare-fun b!1653701 () Bool)

(declare-fun head!3657 (List!18323) C!9268)

(assert (=> b!1653701 (= e!1060447 (= lt!615430 (Cons!18253 (head!3657 lt!615440) Nil!18253)))))

(declare-fun b!1653702 () Bool)

(declare-fun e!1060457 () Bool)

(declare-fun e!1060462 () Bool)

(declare-fun tp!478298 () Bool)

(assert (=> b!1653702 (= e!1060457 (and e!1060462 tp!478298))))

(declare-fun res!741359 () Bool)

(assert (=> start!159318 (=> (not res!741359) (not e!1060453))))

(assert (=> start!159318 (= res!741359 ((_ is Lexer!2846) thiss!17113))))

(assert (=> start!159318 e!1060453))

(assert (=> start!159318 true))

(assert (=> start!159318 e!1060457))

(declare-fun e!1060450 () Bool)

(assert (=> start!159318 e!1060450))

(declare-fun b!1653703 () Bool)

(declare-fun e!1060454 () Bool)

(assert (=> b!1653703 (= e!1060454 e!1060448)))

(declare-fun res!741372 () Bool)

(assert (=> b!1653703 (=> res!741372 e!1060448)))

(assert (=> b!1653703 (= res!741372 (prefixMatch!464 lt!615426 (++!4945 lt!615428 lt!615430)))))

(declare-fun lt!615451 () BalanceConc!12116)

(declare-fun list!7270 (BalanceConc!12116) List!18323)

(assert (=> b!1653703 (= lt!615430 (list!7270 lt!615451))))

(declare-fun b!1653704 () Bool)

(declare-fun res!741369 () Bool)

(declare-fun e!1060446 () Bool)

(assert (=> b!1653704 (=> res!741369 e!1060446)))

(declare-fun isEmpty!11290 (BalanceConc!12118) Bool)

(declare-fun lex!1332 (LexerInterface!2848 List!18326 BalanceConc!12116) tuple2!17950)

(assert (=> b!1653704 (= res!741369 (isEmpty!11290 (_1!10377 (lex!1332 thiss!17113 rules!1846 (seqFromList!2177 lt!615428)))))))

(declare-fun b!1653705 () Bool)

(declare-fun res!741364 () Bool)

(assert (=> b!1653705 (=> (not res!741364) (not e!1060453))))

(declare-fun rulesProduceEachTokenIndividuallyList!1050 (LexerInterface!2848 List!18326 List!18325) Bool)

(assert (=> b!1653705 (= res!741364 (rulesProduceEachTokenIndividuallyList!1050 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!478295 () Bool)

(declare-fun e!1060444 () Bool)

(declare-fun e!1060456 () Bool)

(declare-fun b!1653706 () Bool)

(declare-fun inv!21 (TokenValue!3309) Bool)

(assert (=> b!1653706 (= e!1060456 (and (inv!21 (value!101414 (h!23656 tokens!457))) e!1060444 tp!478295))))

(declare-fun b!1653707 () Bool)

(declare-fun res!741361 () Bool)

(assert (=> b!1653707 (=> (not res!741361) (not e!1060453))))

(declare-fun isEmpty!11291 (List!18326) Bool)

(assert (=> b!1653707 (= res!741361 (not (isEmpty!11291 rules!1846)))))

(declare-fun e!1060459 () Bool)

(declare-fun b!1653708 () Bool)

(declare-fun tp!478301 () Bool)

(declare-fun inv!23608 (String!20877) Bool)

(declare-fun inv!23611 (TokenValueInjection!6278) Bool)

(assert (=> b!1653708 (= e!1060462 (and tp!478301 (inv!23608 (tag!3501 (h!23657 rules!1846))) (inv!23611 (transformation!3219 (h!23657 rules!1846))) e!1060459))))

(declare-fun tp!478300 () Bool)

(declare-fun b!1653709 () Bool)

(declare-fun inv!23612 (Token!6004) Bool)

(assert (=> b!1653709 (= e!1060450 (and (inv!23612 (h!23656 tokens!457)) e!1060456 tp!478300))))

(declare-fun b!1653710 () Bool)

(declare-fun res!741367 () Bool)

(assert (=> b!1653710 (=> (not res!741367) (not e!1060447))))

(assert (=> b!1653710 (= res!741367 (= lt!615430 (Cons!18253 (head!3657 (originalCharacters!4033 (h!23656 (t!151120 tokens!457)))) Nil!18253)))))

(declare-fun b!1653711 () Bool)

(declare-fun e!1060452 () Bool)

(assert (=> b!1653711 (= e!1060452 e!1060446)))

(declare-fun res!741376 () Bool)

(assert (=> b!1653711 (=> res!741376 e!1060446)))

(declare-fun lt!615454 () List!18323)

(declare-fun lt!615439 () List!18323)

(assert (=> b!1653711 (= res!741376 (or (not (= lt!615454 lt!615439)) (not (= lt!615439 lt!615428)) (not (= lt!615454 lt!615428))))))

(declare-fun printList!961 (LexerInterface!2848 List!18325) List!18323)

(assert (=> b!1653711 (= lt!615439 (printList!961 thiss!17113 (Cons!18255 (h!23656 tokens!457) Nil!18255)))))

(declare-fun lt!615437 () BalanceConc!12116)

(assert (=> b!1653711 (= lt!615454 (list!7270 lt!615437))))

(declare-fun lt!615432 () BalanceConc!12118)

(declare-fun printTailRec!899 (LexerInterface!2848 BalanceConc!12118 Int BalanceConc!12116) BalanceConc!12116)

(assert (=> b!1653711 (= lt!615437 (printTailRec!899 thiss!17113 lt!615432 0 (BalanceConc!12117 Empty!6086)))))

(declare-fun print!1379 (LexerInterface!2848 BalanceConc!12118) BalanceConc!12116)

(assert (=> b!1653711 (= lt!615437 (print!1379 thiss!17113 lt!615432))))

(declare-fun singletonSeq!1710 (Token!6004) BalanceConc!12118)

(assert (=> b!1653711 (= lt!615432 (singletonSeq!1710 (h!23656 tokens!457)))))

(declare-fun lt!615444 () Option!3477)

(declare-fun lt!615441 () List!18323)

(assert (=> b!1653711 (= lt!615444 (maxPrefix!1410 thiss!17113 rules!1846 lt!615441))))

(declare-fun b!1653712 () Bool)

(assert (=> b!1653712 (= e!1060453 e!1060455)))

(declare-fun res!741360 () Bool)

(assert (=> b!1653712 (=> (not res!741360) (not e!1060455))))

(assert (=> b!1653712 (= res!741360 (= lt!615441 lt!615450))))

(assert (=> b!1653712 (= lt!615450 (++!4945 lt!615428 lt!615440))))

(declare-fun lt!615449 () BalanceConc!12116)

(assert (=> b!1653712 (= lt!615441 (list!7270 lt!615449))))

(assert (=> b!1653712 (= lt!615440 (list!7270 lt!615446))))

(declare-fun lt!615433 () BalanceConc!12116)

(assert (=> b!1653712 (= lt!615428 (list!7270 lt!615433))))

(declare-fun charsOf!1868 (Token!6004) BalanceConc!12116)

(assert (=> b!1653712 (= lt!615433 (charsOf!1868 (h!23656 tokens!457)))))

(assert (=> b!1653712 (= lt!615445 (lex!1332 thiss!17113 rules!1846 lt!615446))))

(declare-fun lt!615452 () BalanceConc!12118)

(assert (=> b!1653712 (= lt!615446 (print!1379 thiss!17113 lt!615452))))

(declare-fun seqFromList!2178 (List!18325) BalanceConc!12118)

(assert (=> b!1653712 (= lt!615452 (seqFromList!2178 (t!151120 tokens!457)))))

(assert (=> b!1653712 (= lt!615449 (print!1379 thiss!17113 (seqFromList!2178 tokens!457)))))

(declare-fun b!1653713 () Bool)

(declare-fun res!741358 () Bool)

(assert (=> b!1653713 (=> res!741358 e!1060451)))

(assert (=> b!1653713 (= res!741358 (prefixMatch!464 lt!615426 (++!4945 lt!615428 lt!615443)))))

(declare-fun b!1653714 () Bool)

(declare-fun e!1060441 () Bool)

(assert (=> b!1653714 (= e!1060446 e!1060441)))

(declare-fun res!741370 () Bool)

(assert (=> b!1653714 (=> res!741370 e!1060441)))

(assert (=> b!1653714 (= res!741370 (not (isDefined!2832 lt!615444)))))

(declare-fun lt!615438 () Unit!30517)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!416 (LexerInterface!2848 List!18326 List!18323 List!18323) Unit!30517)

(assert (=> b!1653714 (= lt!615438 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!416 thiss!17113 rules!1846 lt!615428 lt!615440))))

(declare-fun b!1653715 () Bool)

(declare-fun lt!615434 () tuple2!17946)

(assert (=> b!1653715 (= e!1060451 (or (not (= (_1!10375 lt!615434) (h!23656 tokens!457))) (= (_2!10375 lt!615434) lt!615440)))))

(assert (=> b!1653715 (= lt!615434 (get!5321 lt!615444))))

(declare-fun lt!615453 () Unit!30517)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!174 (LexerInterface!2848 List!18326 Token!6004 Rule!6238 List!18323) Unit!30517)

(assert (=> b!1653715 (= lt!615453 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!174 thiss!17113 rules!1846 (h!23656 tokens!457) (rule!5085 (h!23656 tokens!457)) lt!615440))))

(declare-fun b!1653716 () Bool)

(declare-fun tp!478302 () Bool)

(declare-fun e!1060443 () Bool)

(assert (=> b!1653716 (= e!1060444 (and tp!478302 (inv!23608 (tag!3501 (rule!5085 (h!23656 tokens!457)))) (inv!23611 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) e!1060443))))

(declare-fun b!1653717 () Bool)

(declare-fun matchR!2040 (Regex!4547 List!18323) Bool)

(assert (=> b!1653717 (= e!1060460 (matchR!2040 (regex!3219 (rule!5085 (h!23656 tokens!457))) lt!615428))))

(assert (=> b!1653718 (= e!1060459 (and tp!478297 tp!478296))))

(declare-fun b!1653719 () Bool)

(declare-fun res!741357 () Bool)

(assert (=> b!1653719 (=> res!741357 e!1060446)))

(declare-fun rulesProduceIndividualToken!1496 (LexerInterface!2848 List!18326 Token!6004) Bool)

(assert (=> b!1653719 (= res!741357 (not (rulesProduceIndividualToken!1496 thiss!17113 rules!1846 (h!23656 tokens!457))))))

(assert (=> b!1653720 (= e!1060443 (and tp!478294 tp!478299))))

(declare-fun b!1653721 () Bool)

(assert (=> b!1653721 (= e!1060445 e!1060452)))

(declare-fun res!741362 () Bool)

(assert (=> b!1653721 (=> res!741362 e!1060452)))

(declare-fun lt!615448 () List!18325)

(declare-fun lt!615435 () List!18325)

(assert (=> b!1653721 (= res!741362 (or (not (= lt!615431 lt!615448)) (not (= lt!615448 lt!615435))))))

(assert (=> b!1653721 (= lt!615448 (list!7269 lt!615452))))

(assert (=> b!1653721 (= lt!615431 lt!615435)))

(declare-fun prepend!787 (BalanceConc!12118 Token!6004) BalanceConc!12118)

(assert (=> b!1653721 (= lt!615435 (list!7269 (prepend!787 (seqFromList!2178 (t!151120 (t!151120 tokens!457))) (h!23656 (t!151120 tokens!457)))))))

(declare-fun lt!615427 () Unit!30517)

(declare-fun seqFromListBHdTlConstructive!294 (Token!6004 List!18325 BalanceConc!12118) Unit!30517)

(assert (=> b!1653721 (= lt!615427 (seqFromListBHdTlConstructive!294 (h!23656 (t!151120 tokens!457)) (t!151120 (t!151120 tokens!457)) (_1!10377 lt!615445)))))

(declare-fun b!1653722 () Bool)

(declare-fun res!741377 () Bool)

(assert (=> b!1653722 (=> (not res!741377) (not e!1060453))))

(declare-fun rulesInvariant!2517 (LexerInterface!2848 List!18326) Bool)

(assert (=> b!1653722 (= res!741377 (rulesInvariant!2517 thiss!17113 rules!1846))))

(declare-fun b!1653723 () Bool)

(assert (=> b!1653723 (= e!1060441 e!1060454)))

(declare-fun res!741363 () Bool)

(assert (=> b!1653723 (=> res!741363 e!1060454)))

(declare-fun prefixMatchZipperSequence!633 (Regex!4547 BalanceConc!12116) Bool)

(declare-fun ++!4946 (BalanceConc!12116 BalanceConc!12116) BalanceConc!12116)

(assert (=> b!1653723 (= res!741363 (prefixMatchZipperSequence!633 lt!615426 (++!4946 lt!615433 lt!615451)))))

(declare-fun singletonSeq!1711 (C!9268) BalanceConc!12116)

(declare-fun apply!4830 (BalanceConc!12116 Int) C!9268)

(assert (=> b!1653723 (= lt!615451 (singletonSeq!1711 (apply!4830 (charsOf!1868 (h!23656 (t!151120 tokens!457))) 0)))))

(declare-fun rulesRegex!603 (LexerInterface!2848 List!18326) Regex!4547)

(assert (=> b!1653723 (= lt!615426 (rulesRegex!603 thiss!17113 rules!1846))))

(declare-fun b!1653724 () Bool)

(declare-fun res!741365 () Bool)

(assert (=> b!1653724 (=> res!741365 e!1060452)))

(declare-fun separableTokensPredicate!788 (LexerInterface!2848 Token!6004 Token!6004 List!18326) Bool)

(assert (=> b!1653724 (= res!741365 (not (separableTokensPredicate!788 thiss!17113 (h!23656 tokens!457) (h!23656 (t!151120 tokens!457)) rules!1846)))))

(assert (= (and start!159318 res!741359) b!1653707))

(assert (= (and b!1653707 res!741361) b!1653722))

(assert (= (and b!1653722 res!741377) b!1653705))

(assert (= (and b!1653705 res!741364) b!1653699))

(assert (= (and b!1653699 res!741366) b!1653700))

(assert (= (and b!1653700 res!741374) b!1653712))

(assert (= (and b!1653712 res!741360) b!1653698))

(assert (= (and b!1653698 (not res!741373)) b!1653721))

(assert (= (and b!1653721 (not res!741362)) b!1653724))

(assert (= (and b!1653724 (not res!741365)) b!1653711))

(assert (= (and b!1653711 (not res!741376)) b!1653719))

(assert (= (and b!1653719 (not res!741357)) b!1653704))

(assert (= (and b!1653704 (not res!741369)) b!1653714))

(assert (= (and b!1653714 (not res!741370)) b!1653723))

(assert (= (and b!1653723 (not res!741363)) b!1653703))

(assert (= (and b!1653703 (not res!741372)) b!1653696))

(assert (= (and b!1653696 res!741368) b!1653710))

(assert (= (and b!1653710 res!741367) b!1653701))

(assert (= (and b!1653696 (not res!741375)) b!1653695))

(assert (= (and b!1653695 res!741371) b!1653697))

(assert (= (and b!1653697 res!741378) b!1653717))

(assert (= (and b!1653695 (not res!741379)) b!1653713))

(assert (= (and b!1653713 (not res!741358)) b!1653715))

(assert (= b!1653708 b!1653718))

(assert (= b!1653702 b!1653708))

(assert (= (and start!159318 ((_ is Cons!18256) rules!1846)) b!1653702))

(assert (= b!1653716 b!1653720))

(assert (= b!1653706 b!1653716))

(assert (= b!1653709 b!1653706))

(assert (= (and start!159318 ((_ is Cons!18255) tokens!457)) b!1653709))

(declare-fun m!2005897 () Bool)

(assert (=> b!1653705 m!2005897))

(declare-fun m!2005899 () Bool)

(assert (=> b!1653711 m!2005899))

(declare-fun m!2005901 () Bool)

(assert (=> b!1653711 m!2005901))

(declare-fun m!2005903 () Bool)

(assert (=> b!1653711 m!2005903))

(declare-fun m!2005905 () Bool)

(assert (=> b!1653711 m!2005905))

(declare-fun m!2005907 () Bool)

(assert (=> b!1653711 m!2005907))

(declare-fun m!2005909 () Bool)

(assert (=> b!1653711 m!2005909))

(declare-fun m!2005911 () Bool)

(assert (=> b!1653717 m!2005911))

(declare-fun m!2005913 () Bool)

(assert (=> b!1653709 m!2005913))

(declare-fun m!2005915 () Bool)

(assert (=> b!1653695 m!2005915))

(declare-fun m!2005917 () Bool)

(assert (=> b!1653695 m!2005917))

(declare-fun m!2005919 () Bool)

(assert (=> b!1653695 m!2005919))

(assert (=> b!1653695 m!2005917))

(declare-fun m!2005921 () Bool)

(assert (=> b!1653695 m!2005921))

(declare-fun m!2005923 () Bool)

(assert (=> b!1653695 m!2005923))

(declare-fun m!2005925 () Bool)

(assert (=> b!1653695 m!2005925))

(declare-fun m!2005927 () Bool)

(assert (=> b!1653695 m!2005927))

(assert (=> b!1653695 m!2005925))

(declare-fun m!2005929 () Bool)

(assert (=> b!1653724 m!2005929))

(declare-fun m!2005931 () Bool)

(assert (=> b!1653698 m!2005931))

(declare-fun m!2005933 () Bool)

(assert (=> b!1653698 m!2005933))

(declare-fun m!2005935 () Bool)

(assert (=> b!1653698 m!2005935))

(declare-fun m!2005937 () Bool)

(assert (=> b!1653698 m!2005937))

(declare-fun m!2005939 () Bool)

(assert (=> b!1653707 m!2005939))

(declare-fun m!2005941 () Bool)

(assert (=> b!1653714 m!2005941))

(declare-fun m!2005943 () Bool)

(assert (=> b!1653714 m!2005943))

(declare-fun m!2005945 () Bool)

(assert (=> b!1653713 m!2005945))

(assert (=> b!1653713 m!2005945))

(declare-fun m!2005947 () Bool)

(assert (=> b!1653713 m!2005947))

(declare-fun m!2005949 () Bool)

(assert (=> b!1653697 m!2005949))

(declare-fun m!2005951 () Bool)

(assert (=> b!1653706 m!2005951))

(declare-fun m!2005953 () Bool)

(assert (=> b!1653723 m!2005953))

(declare-fun m!2005955 () Bool)

(assert (=> b!1653723 m!2005955))

(declare-fun m!2005957 () Bool)

(assert (=> b!1653723 m!2005957))

(declare-fun m!2005959 () Bool)

(assert (=> b!1653723 m!2005959))

(assert (=> b!1653723 m!2005959))

(declare-fun m!2005961 () Bool)

(assert (=> b!1653723 m!2005961))

(declare-fun m!2005963 () Bool)

(assert (=> b!1653723 m!2005963))

(assert (=> b!1653723 m!2005955))

(assert (=> b!1653723 m!2005963))

(declare-fun m!2005965 () Bool)

(assert (=> b!1653716 m!2005965))

(declare-fun m!2005967 () Bool)

(assert (=> b!1653716 m!2005967))

(declare-fun m!2005969 () Bool)

(assert (=> b!1653719 m!2005969))

(declare-fun m!2005971 () Bool)

(assert (=> b!1653721 m!2005971))

(declare-fun m!2005973 () Bool)

(assert (=> b!1653721 m!2005973))

(declare-fun m!2005975 () Bool)

(assert (=> b!1653721 m!2005975))

(declare-fun m!2005977 () Bool)

(assert (=> b!1653721 m!2005977))

(declare-fun m!2005979 () Bool)

(assert (=> b!1653721 m!2005979))

(assert (=> b!1653721 m!2005975))

(assert (=> b!1653721 m!2005977))

(declare-fun m!2005981 () Bool)

(assert (=> b!1653699 m!2005981))

(declare-fun m!2005983 () Bool)

(assert (=> b!1653696 m!2005983))

(assert (=> b!1653696 m!2005983))

(declare-fun m!2005985 () Bool)

(assert (=> b!1653696 m!2005985))

(assert (=> b!1653696 m!2005985))

(declare-fun m!2005987 () Bool)

(assert (=> b!1653696 m!2005987))

(declare-fun m!2005989 () Bool)

(assert (=> b!1653696 m!2005989))

(declare-fun m!2005991 () Bool)

(assert (=> b!1653715 m!2005991))

(declare-fun m!2005993 () Bool)

(assert (=> b!1653715 m!2005993))

(declare-fun m!2005995 () Bool)

(assert (=> b!1653710 m!2005995))

(declare-fun m!2005997 () Bool)

(assert (=> b!1653701 m!2005997))

(declare-fun m!2005999 () Bool)

(assert (=> b!1653703 m!2005999))

(assert (=> b!1653703 m!2005999))

(declare-fun m!2006001 () Bool)

(assert (=> b!1653703 m!2006001))

(declare-fun m!2006003 () Bool)

(assert (=> b!1653703 m!2006003))

(declare-fun m!2006005 () Bool)

(assert (=> b!1653708 m!2006005))

(declare-fun m!2006007 () Bool)

(assert (=> b!1653708 m!2006007))

(declare-fun m!2006009 () Bool)

(assert (=> b!1653704 m!2006009))

(assert (=> b!1653704 m!2006009))

(declare-fun m!2006011 () Bool)

(assert (=> b!1653704 m!2006011))

(declare-fun m!2006013 () Bool)

(assert (=> b!1653704 m!2006013))

(declare-fun m!2006015 () Bool)

(assert (=> b!1653712 m!2006015))

(declare-fun m!2006017 () Bool)

(assert (=> b!1653712 m!2006017))

(declare-fun m!2006019 () Bool)

(assert (=> b!1653712 m!2006019))

(declare-fun m!2006021 () Bool)

(assert (=> b!1653712 m!2006021))

(declare-fun m!2006023 () Bool)

(assert (=> b!1653712 m!2006023))

(declare-fun m!2006025 () Bool)

(assert (=> b!1653712 m!2006025))

(declare-fun m!2006027 () Bool)

(assert (=> b!1653712 m!2006027))

(declare-fun m!2006029 () Bool)

(assert (=> b!1653712 m!2006029))

(declare-fun m!2006031 () Bool)

(assert (=> b!1653712 m!2006031))

(declare-fun m!2006033 () Bool)

(assert (=> b!1653712 m!2006033))

(assert (=> b!1653712 m!2006023))

(declare-fun m!2006035 () Bool)

(assert (=> b!1653722 m!2006035))

(check-sat (not b!1653717) (not b!1653696) (not b!1653704) (not b!1653714) (not b!1653699) (not b!1653701) (not b!1653712) (not b!1653707) (not b!1653708) b_and!117427 (not b!1653721) (not b_next!45659) (not b_next!45661) b_and!117423 b_and!117425 (not b!1653710) (not b!1653702) (not b!1653713) (not b_next!45657) (not b!1653719) (not b!1653706) (not b_next!45655) (not b!1653723) (not b!1653698) (not b!1653711) (not b!1653697) (not b!1653715) (not b!1653724) (not b!1653716) (not b!1653695) (not b!1653703) (not b!1653709) (not b!1653722) b_and!117421 (not b!1653705))
(check-sat (not b_next!45659) b_and!117425 (not b_next!45657) (not b_next!45655) b_and!117427 b_and!117421 (not b_next!45661) b_and!117423)
(get-model)

(declare-fun d!498816 () Bool)

(assert (=> d!498816 (= (isEmpty!11291 rules!1846) ((_ is Nil!18256) rules!1846))))

(assert (=> b!1653707 d!498816))

(declare-fun d!498818 () Bool)

(assert (=> d!498818 (= (inv!23608 (tag!3501 (h!23657 rules!1846))) (= (mod (str.len (value!101413 (tag!3501 (h!23657 rules!1846)))) 2) 0))))

(assert (=> b!1653708 d!498818))

(declare-fun d!498820 () Bool)

(declare-fun res!741388 () Bool)

(declare-fun e!1060465 () Bool)

(assert (=> d!498820 (=> (not res!741388) (not e!1060465))))

(declare-fun semiInverseModEq!1245 (Int Int) Bool)

(assert (=> d!498820 (= res!741388 (semiInverseModEq!1245 (toChars!4529 (transformation!3219 (h!23657 rules!1846))) (toValue!4670 (transformation!3219 (h!23657 rules!1846)))))))

(assert (=> d!498820 (= (inv!23611 (transformation!3219 (h!23657 rules!1846))) e!1060465)))

(declare-fun b!1653727 () Bool)

(declare-fun equivClasses!1186 (Int Int) Bool)

(assert (=> b!1653727 (= e!1060465 (equivClasses!1186 (toChars!4529 (transformation!3219 (h!23657 rules!1846))) (toValue!4670 (transformation!3219 (h!23657 rules!1846)))))))

(assert (= (and d!498820 res!741388) b!1653727))

(declare-fun m!2006037 () Bool)

(assert (=> d!498820 m!2006037))

(declare-fun m!2006039 () Bool)

(assert (=> b!1653727 m!2006039))

(assert (=> b!1653708 d!498820))

(declare-fun d!498822 () Bool)

(assert (=> d!498822 (= (head!3657 (originalCharacters!4033 (h!23656 (t!151120 tokens!457)))) (h!23654 (originalCharacters!4033 (h!23656 (t!151120 tokens!457)))))))

(assert (=> b!1653710 d!498822))

(declare-fun d!498824 () Bool)

(declare-fun res!741393 () Bool)

(declare-fun e!1060468 () Bool)

(assert (=> d!498824 (=> (not res!741393) (not e!1060468))))

(assert (=> d!498824 (= res!741393 (not (isEmpty!11289 (originalCharacters!4033 (h!23656 tokens!457)))))))

(assert (=> d!498824 (= (inv!23612 (h!23656 tokens!457)) e!1060468)))

(declare-fun b!1653732 () Bool)

(declare-fun res!741394 () Bool)

(assert (=> b!1653732 (=> (not res!741394) (not e!1060468))))

(declare-fun dynLambda!8184 (Int TokenValue!3309) BalanceConc!12116)

(assert (=> b!1653732 (= res!741394 (= (originalCharacters!4033 (h!23656 tokens!457)) (list!7270 (dynLambda!8184 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (value!101414 (h!23656 tokens!457))))))))

(declare-fun b!1653733 () Bool)

(declare-fun size!14529 (List!18323) Int)

(assert (=> b!1653733 (= e!1060468 (= (size!14528 (h!23656 tokens!457)) (size!14529 (originalCharacters!4033 (h!23656 tokens!457)))))))

(assert (= (and d!498824 res!741393) b!1653732))

(assert (= (and b!1653732 res!741394) b!1653733))

(declare-fun b_lambda!51953 () Bool)

(assert (=> (not b_lambda!51953) (not b!1653732)))

(declare-fun tb!94703 () Bool)

(declare-fun t!151123 () Bool)

(assert (=> (and b!1653718 (= (toChars!4529 (transformation!3219 (h!23657 rules!1846))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457))))) t!151123) tb!94703))

(declare-fun b!1653738 () Bool)

(declare-fun e!1060471 () Bool)

(declare-fun tp!478305 () Bool)

(declare-fun inv!23613 (Conc!6086) Bool)

(assert (=> b!1653738 (= e!1060471 (and (inv!23613 (c!268993 (dynLambda!8184 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (value!101414 (h!23656 tokens!457))))) tp!478305))))

(declare-fun result!114422 () Bool)

(declare-fun inv!23614 (BalanceConc!12116) Bool)

(assert (=> tb!94703 (= result!114422 (and (inv!23614 (dynLambda!8184 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (value!101414 (h!23656 tokens!457)))) e!1060471))))

(assert (= tb!94703 b!1653738))

(declare-fun m!2006041 () Bool)

(assert (=> b!1653738 m!2006041))

(declare-fun m!2006043 () Bool)

(assert (=> tb!94703 m!2006043))

(assert (=> b!1653732 t!151123))

(declare-fun b_and!117429 () Bool)

(assert (= b_and!117423 (and (=> t!151123 result!114422) b_and!117429)))

(declare-fun t!151125 () Bool)

(declare-fun tb!94705 () Bool)

(assert (=> (and b!1653720 (= (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457))))) t!151125) tb!94705))

(declare-fun result!114426 () Bool)

(assert (= result!114426 result!114422))

(assert (=> b!1653732 t!151125))

(declare-fun b_and!117431 () Bool)

(assert (= b_and!117427 (and (=> t!151125 result!114426) b_and!117431)))

(declare-fun m!2006045 () Bool)

(assert (=> d!498824 m!2006045))

(declare-fun m!2006047 () Bool)

(assert (=> b!1653732 m!2006047))

(assert (=> b!1653732 m!2006047))

(declare-fun m!2006049 () Bool)

(assert (=> b!1653732 m!2006049))

(declare-fun m!2006051 () Bool)

(assert (=> b!1653733 m!2006051))

(assert (=> b!1653709 d!498824))

(declare-fun d!498826 () Bool)

(declare-fun list!7271 (Conc!6086) List!18323)

(assert (=> d!498826 (= (list!7270 lt!615437) (list!7271 (c!268993 lt!615437)))))

(declare-fun bs!396712 () Bool)

(assert (= bs!396712 d!498826))

(declare-fun m!2006053 () Bool)

(assert (=> bs!396712 m!2006053))

(assert (=> b!1653711 d!498826))

(declare-fun d!498828 () Bool)

(declare-fun lt!615457 () BalanceConc!12116)

(assert (=> d!498828 (= (list!7270 lt!615457) (printList!961 thiss!17113 (list!7269 lt!615432)))))

(assert (=> d!498828 (= lt!615457 (printTailRec!899 thiss!17113 lt!615432 0 (BalanceConc!12117 Empty!6086)))))

(assert (=> d!498828 (= (print!1379 thiss!17113 lt!615432) lt!615457)))

(declare-fun bs!396713 () Bool)

(assert (= bs!396713 d!498828))

(declare-fun m!2006055 () Bool)

(assert (=> bs!396713 m!2006055))

(declare-fun m!2006057 () Bool)

(assert (=> bs!396713 m!2006057))

(assert (=> bs!396713 m!2006057))

(declare-fun m!2006059 () Bool)

(assert (=> bs!396713 m!2006059))

(assert (=> bs!396713 m!2005903))

(assert (=> b!1653711 d!498828))

(declare-fun b!1653757 () Bool)

(declare-fun res!741418 () Bool)

(declare-fun e!1060478 () Bool)

(assert (=> b!1653757 (=> (not res!741418) (not e!1060478))))

(declare-fun lt!615471 () Option!3477)

(declare-fun apply!4831 (TokenValueInjection!6278 BalanceConc!12116) TokenValue!3309)

(assert (=> b!1653757 (= res!741418 (= (value!101414 (_1!10375 (get!5321 lt!615471))) (apply!4831 (transformation!3219 (rule!5085 (_1!10375 (get!5321 lt!615471)))) (seqFromList!2177 (originalCharacters!4033 (_1!10375 (get!5321 lt!615471)))))))))

(declare-fun b!1653758 () Bool)

(declare-fun res!741415 () Bool)

(assert (=> b!1653758 (=> (not res!741415) (not e!1060478))))

(assert (=> b!1653758 (= res!741415 (matchR!2040 (regex!3219 (rule!5085 (_1!10375 (get!5321 lt!615471)))) (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!615471))))))))

(declare-fun b!1653759 () Bool)

(declare-fun res!741413 () Bool)

(assert (=> b!1653759 (=> (not res!741413) (not e!1060478))))

(assert (=> b!1653759 (= res!741413 (= (++!4945 (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!615471)))) (_2!10375 (get!5321 lt!615471))) lt!615441))))

(declare-fun bm!106056 () Bool)

(declare-fun call!106061 () Option!3477)

(declare-fun maxPrefixOneRule!814 (LexerInterface!2848 Rule!6238 List!18323) Option!3477)

(assert (=> bm!106056 (= call!106061 (maxPrefixOneRule!814 thiss!17113 (h!23657 rules!1846) lt!615441))))

(declare-fun b!1653760 () Bool)

(declare-fun e!1060480 () Option!3477)

(declare-fun lt!615469 () Option!3477)

(declare-fun lt!615470 () Option!3477)

(assert (=> b!1653760 (= e!1060480 (ite (and ((_ is None!3476) lt!615469) ((_ is None!3476) lt!615470)) None!3476 (ite ((_ is None!3476) lt!615470) lt!615469 (ite ((_ is None!3476) lt!615469) lt!615470 (ite (>= (size!14528 (_1!10375 (v!24661 lt!615469))) (size!14528 (_1!10375 (v!24661 lt!615470)))) lt!615469 lt!615470)))))))

(assert (=> b!1653760 (= lt!615469 call!106061)))

(assert (=> b!1653760 (= lt!615470 (maxPrefix!1410 thiss!17113 (t!151121 rules!1846) lt!615441))))

(declare-fun d!498830 () Bool)

(declare-fun e!1060479 () Bool)

(assert (=> d!498830 e!1060479))

(declare-fun res!741417 () Bool)

(assert (=> d!498830 (=> res!741417 e!1060479)))

(declare-fun isEmpty!11292 (Option!3477) Bool)

(assert (=> d!498830 (= res!741417 (isEmpty!11292 lt!615471))))

(assert (=> d!498830 (= lt!615471 e!1060480)))

(declare-fun c!268998 () Bool)

(assert (=> d!498830 (= c!268998 (and ((_ is Cons!18256) rules!1846) ((_ is Nil!18256) (t!151121 rules!1846))))))

(declare-fun lt!615468 () Unit!30517)

(declare-fun lt!615472 () Unit!30517)

(assert (=> d!498830 (= lt!615468 lt!615472)))

(assert (=> d!498830 (isPrefix!1477 lt!615441 lt!615441)))

(declare-fun lemmaIsPrefixRefl!999 (List!18323 List!18323) Unit!30517)

(assert (=> d!498830 (= lt!615472 (lemmaIsPrefixRefl!999 lt!615441 lt!615441))))

(declare-fun rulesValidInductive!1021 (LexerInterface!2848 List!18326) Bool)

(assert (=> d!498830 (rulesValidInductive!1021 thiss!17113 rules!1846)))

(assert (=> d!498830 (= (maxPrefix!1410 thiss!17113 rules!1846 lt!615441) lt!615471)))

(declare-fun b!1653761 () Bool)

(declare-fun contains!3183 (List!18326 Rule!6238) Bool)

(assert (=> b!1653761 (= e!1060478 (contains!3183 rules!1846 (rule!5085 (_1!10375 (get!5321 lt!615471)))))))

(declare-fun b!1653762 () Bool)

(declare-fun res!741416 () Bool)

(assert (=> b!1653762 (=> (not res!741416) (not e!1060478))))

(assert (=> b!1653762 (= res!741416 (= (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!615471)))) (originalCharacters!4033 (_1!10375 (get!5321 lt!615471)))))))

(declare-fun b!1653763 () Bool)

(declare-fun res!741412 () Bool)

(assert (=> b!1653763 (=> (not res!741412) (not e!1060478))))

(assert (=> b!1653763 (= res!741412 (< (size!14529 (_2!10375 (get!5321 lt!615471))) (size!14529 lt!615441)))))

(declare-fun b!1653764 () Bool)

(assert (=> b!1653764 (= e!1060479 e!1060478)))

(declare-fun res!741414 () Bool)

(assert (=> b!1653764 (=> (not res!741414) (not e!1060478))))

(assert (=> b!1653764 (= res!741414 (isDefined!2832 lt!615471))))

(declare-fun b!1653765 () Bool)

(assert (=> b!1653765 (= e!1060480 call!106061)))

(assert (= (and d!498830 c!268998) b!1653765))

(assert (= (and d!498830 (not c!268998)) b!1653760))

(assert (= (or b!1653765 b!1653760) bm!106056))

(assert (= (and d!498830 (not res!741417)) b!1653764))

(assert (= (and b!1653764 res!741414) b!1653762))

(assert (= (and b!1653762 res!741416) b!1653763))

(assert (= (and b!1653763 res!741412) b!1653759))

(assert (= (and b!1653759 res!741413) b!1653757))

(assert (= (and b!1653757 res!741418) b!1653758))

(assert (= (and b!1653758 res!741415) b!1653761))

(declare-fun m!2006061 () Bool)

(assert (=> b!1653757 m!2006061))

(declare-fun m!2006063 () Bool)

(assert (=> b!1653757 m!2006063))

(assert (=> b!1653757 m!2006063))

(declare-fun m!2006065 () Bool)

(assert (=> b!1653757 m!2006065))

(assert (=> b!1653761 m!2006061))

(declare-fun m!2006067 () Bool)

(assert (=> b!1653761 m!2006067))

(declare-fun m!2006069 () Bool)

(assert (=> b!1653764 m!2006069))

(assert (=> b!1653758 m!2006061))

(declare-fun m!2006071 () Bool)

(assert (=> b!1653758 m!2006071))

(assert (=> b!1653758 m!2006071))

(declare-fun m!2006073 () Bool)

(assert (=> b!1653758 m!2006073))

(assert (=> b!1653758 m!2006073))

(declare-fun m!2006075 () Bool)

(assert (=> b!1653758 m!2006075))

(declare-fun m!2006077 () Bool)

(assert (=> b!1653760 m!2006077))

(assert (=> b!1653762 m!2006061))

(assert (=> b!1653762 m!2006071))

(assert (=> b!1653762 m!2006071))

(assert (=> b!1653762 m!2006073))

(assert (=> b!1653763 m!2006061))

(declare-fun m!2006079 () Bool)

(assert (=> b!1653763 m!2006079))

(declare-fun m!2006081 () Bool)

(assert (=> b!1653763 m!2006081))

(assert (=> b!1653759 m!2006061))

(assert (=> b!1653759 m!2006071))

(assert (=> b!1653759 m!2006071))

(assert (=> b!1653759 m!2006073))

(assert (=> b!1653759 m!2006073))

(declare-fun m!2006083 () Bool)

(assert (=> b!1653759 m!2006083))

(declare-fun m!2006085 () Bool)

(assert (=> bm!106056 m!2006085))

(declare-fun m!2006087 () Bool)

(assert (=> d!498830 m!2006087))

(declare-fun m!2006089 () Bool)

(assert (=> d!498830 m!2006089))

(declare-fun m!2006091 () Bool)

(assert (=> d!498830 m!2006091))

(declare-fun m!2006093 () Bool)

(assert (=> d!498830 m!2006093))

(assert (=> b!1653711 d!498830))

(declare-fun d!498834 () Bool)

(declare-fun c!269001 () Bool)

(assert (=> d!498834 (= c!269001 ((_ is Cons!18255) (Cons!18255 (h!23656 tokens!457) Nil!18255)))))

(declare-fun e!1060483 () List!18323)

(assert (=> d!498834 (= (printList!961 thiss!17113 (Cons!18255 (h!23656 tokens!457) Nil!18255)) e!1060483)))

(declare-fun b!1653770 () Bool)

(assert (=> b!1653770 (= e!1060483 (++!4945 (list!7270 (charsOf!1868 (h!23656 (Cons!18255 (h!23656 tokens!457) Nil!18255)))) (printList!961 thiss!17113 (t!151120 (Cons!18255 (h!23656 tokens!457) Nil!18255)))))))

(declare-fun b!1653771 () Bool)

(assert (=> b!1653771 (= e!1060483 Nil!18253)))

(assert (= (and d!498834 c!269001) b!1653770))

(assert (= (and d!498834 (not c!269001)) b!1653771))

(declare-fun m!2006095 () Bool)

(assert (=> b!1653770 m!2006095))

(assert (=> b!1653770 m!2006095))

(declare-fun m!2006097 () Bool)

(assert (=> b!1653770 m!2006097))

(declare-fun m!2006099 () Bool)

(assert (=> b!1653770 m!2006099))

(assert (=> b!1653770 m!2006097))

(assert (=> b!1653770 m!2006099))

(declare-fun m!2006101 () Bool)

(assert (=> b!1653770 m!2006101))

(assert (=> b!1653711 d!498834))

(declare-fun d!498836 () Bool)

(declare-fun e!1060486 () Bool)

(assert (=> d!498836 e!1060486))

(declare-fun res!741421 () Bool)

(assert (=> d!498836 (=> (not res!741421) (not e!1060486))))

(declare-fun lt!615475 () BalanceConc!12118)

(assert (=> d!498836 (= res!741421 (= (list!7269 lt!615475) (Cons!18255 (h!23656 tokens!457) Nil!18255)))))

(declare-fun singleton!741 (Token!6004) BalanceConc!12118)

(assert (=> d!498836 (= lt!615475 (singleton!741 (h!23656 tokens!457)))))

(assert (=> d!498836 (= (singletonSeq!1710 (h!23656 tokens!457)) lt!615475)))

(declare-fun b!1653774 () Bool)

(declare-fun isBalanced!1867 (Conc!6087) Bool)

(assert (=> b!1653774 (= e!1060486 (isBalanced!1867 (c!268995 lt!615475)))))

(assert (= (and d!498836 res!741421) b!1653774))

(declare-fun m!2006103 () Bool)

(assert (=> d!498836 m!2006103))

(declare-fun m!2006105 () Bool)

(assert (=> d!498836 m!2006105))

(declare-fun m!2006107 () Bool)

(assert (=> b!1653774 m!2006107))

(assert (=> b!1653711 d!498836))

(declare-fun d!498838 () Bool)

(declare-fun lt!615492 () BalanceConc!12116)

(declare-fun printListTailRec!396 (LexerInterface!2848 List!18325 List!18323) List!18323)

(declare-fun dropList!679 (BalanceConc!12118 Int) List!18325)

(assert (=> d!498838 (= (list!7270 lt!615492) (printListTailRec!396 thiss!17113 (dropList!679 lt!615432 0) (list!7270 (BalanceConc!12117 Empty!6086))))))

(declare-fun e!1060491 () BalanceConc!12116)

(assert (=> d!498838 (= lt!615492 e!1060491)))

(declare-fun c!269004 () Bool)

(declare-fun size!14530 (BalanceConc!12118) Int)

(assert (=> d!498838 (= c!269004 (>= 0 (size!14530 lt!615432)))))

(declare-fun e!1060492 () Bool)

(assert (=> d!498838 e!1060492))

(declare-fun res!741424 () Bool)

(assert (=> d!498838 (=> (not res!741424) (not e!1060492))))

(assert (=> d!498838 (= res!741424 (>= 0 0))))

(assert (=> d!498838 (= (printTailRec!899 thiss!17113 lt!615432 0 (BalanceConc!12117 Empty!6086)) lt!615492)))

(declare-fun b!1653781 () Bool)

(assert (=> b!1653781 (= e!1060492 (<= 0 (size!14530 lt!615432)))))

(declare-fun b!1653782 () Bool)

(assert (=> b!1653782 (= e!1060491 (BalanceConc!12117 Empty!6086))))

(declare-fun b!1653783 () Bool)

(declare-fun apply!4832 (BalanceConc!12118 Int) Token!6004)

(assert (=> b!1653783 (= e!1060491 (printTailRec!899 thiss!17113 lt!615432 (+ 0 1) (++!4946 (BalanceConc!12117 Empty!6086) (charsOf!1868 (apply!4832 lt!615432 0)))))))

(declare-fun lt!615494 () List!18325)

(assert (=> b!1653783 (= lt!615494 (list!7269 lt!615432))))

(declare-fun lt!615493 () Unit!30517)

(declare-fun lemmaDropApply!603 (List!18325 Int) Unit!30517)

(assert (=> b!1653783 (= lt!615493 (lemmaDropApply!603 lt!615494 0))))

(declare-fun head!3658 (List!18325) Token!6004)

(declare-fun drop!917 (List!18325 Int) List!18325)

(declare-fun apply!4833 (List!18325 Int) Token!6004)

(assert (=> b!1653783 (= (head!3658 (drop!917 lt!615494 0)) (apply!4833 lt!615494 0))))

(declare-fun lt!615490 () Unit!30517)

(assert (=> b!1653783 (= lt!615490 lt!615493)))

(declare-fun lt!615491 () List!18325)

(assert (=> b!1653783 (= lt!615491 (list!7269 lt!615432))))

(declare-fun lt!615495 () Unit!30517)

(declare-fun lemmaDropTail!583 (List!18325 Int) Unit!30517)

(assert (=> b!1653783 (= lt!615495 (lemmaDropTail!583 lt!615491 0))))

(declare-fun tail!2451 (List!18325) List!18325)

(assert (=> b!1653783 (= (tail!2451 (drop!917 lt!615491 0)) (drop!917 lt!615491 (+ 0 1)))))

(declare-fun lt!615496 () Unit!30517)

(assert (=> b!1653783 (= lt!615496 lt!615495)))

(assert (= (and d!498838 res!741424) b!1653781))

(assert (= (and d!498838 c!269004) b!1653782))

(assert (= (and d!498838 (not c!269004)) b!1653783))

(declare-fun m!2006109 () Bool)

(assert (=> d!498838 m!2006109))

(assert (=> d!498838 m!2006109))

(declare-fun m!2006111 () Bool)

(assert (=> d!498838 m!2006111))

(declare-fun m!2006113 () Bool)

(assert (=> d!498838 m!2006113))

(assert (=> d!498838 m!2006111))

(declare-fun m!2006115 () Bool)

(assert (=> d!498838 m!2006115))

(declare-fun m!2006117 () Bool)

(assert (=> d!498838 m!2006117))

(assert (=> b!1653781 m!2006117))

(declare-fun m!2006119 () Bool)

(assert (=> b!1653783 m!2006119))

(declare-fun m!2006121 () Bool)

(assert (=> b!1653783 m!2006121))

(declare-fun m!2006123 () Bool)

(assert (=> b!1653783 m!2006123))

(assert (=> b!1653783 m!2006119))

(declare-fun m!2006125 () Bool)

(assert (=> b!1653783 m!2006125))

(declare-fun m!2006127 () Bool)

(assert (=> b!1653783 m!2006127))

(declare-fun m!2006129 () Bool)

(assert (=> b!1653783 m!2006129))

(assert (=> b!1653783 m!2006121))

(declare-fun m!2006131 () Bool)

(assert (=> b!1653783 m!2006131))

(declare-fun m!2006133 () Bool)

(assert (=> b!1653783 m!2006133))

(assert (=> b!1653783 m!2006127))

(assert (=> b!1653783 m!2006129))

(declare-fun m!2006135 () Bool)

(assert (=> b!1653783 m!2006135))

(declare-fun m!2006137 () Bool)

(assert (=> b!1653783 m!2006137))

(declare-fun m!2006139 () Bool)

(assert (=> b!1653783 m!2006139))

(assert (=> b!1653783 m!2006139))

(declare-fun m!2006141 () Bool)

(assert (=> b!1653783 m!2006141))

(assert (=> b!1653783 m!2006057))

(assert (=> b!1653711 d!498838))

(declare-fun d!498840 () Bool)

(declare-fun lt!615497 () BalanceConc!12116)

(assert (=> d!498840 (= (list!7270 lt!615497) (printList!961 thiss!17113 (list!7269 (seqFromList!2178 tokens!457))))))

(assert (=> d!498840 (= lt!615497 (printTailRec!899 thiss!17113 (seqFromList!2178 tokens!457) 0 (BalanceConc!12117 Empty!6086)))))

(assert (=> d!498840 (= (print!1379 thiss!17113 (seqFromList!2178 tokens!457)) lt!615497)))

(declare-fun bs!396714 () Bool)

(assert (= bs!396714 d!498840))

(declare-fun m!2006143 () Bool)

(assert (=> bs!396714 m!2006143))

(assert (=> bs!396714 m!2006023))

(declare-fun m!2006145 () Bool)

(assert (=> bs!396714 m!2006145))

(assert (=> bs!396714 m!2006145))

(declare-fun m!2006147 () Bool)

(assert (=> bs!396714 m!2006147))

(assert (=> bs!396714 m!2006023))

(declare-fun m!2006149 () Bool)

(assert (=> bs!396714 m!2006149))

(assert (=> b!1653712 d!498840))

(declare-fun d!498842 () Bool)

(assert (=> d!498842 (= (list!7270 lt!615446) (list!7271 (c!268993 lt!615446)))))

(declare-fun bs!396715 () Bool)

(assert (= bs!396715 d!498842))

(declare-fun m!2006151 () Bool)

(assert (=> bs!396715 m!2006151))

(assert (=> b!1653712 d!498842))

(declare-fun d!498844 () Bool)

(declare-fun lt!615498 () BalanceConc!12116)

(assert (=> d!498844 (= (list!7270 lt!615498) (printList!961 thiss!17113 (list!7269 lt!615452)))))

(assert (=> d!498844 (= lt!615498 (printTailRec!899 thiss!17113 lt!615452 0 (BalanceConc!12117 Empty!6086)))))

(assert (=> d!498844 (= (print!1379 thiss!17113 lt!615452) lt!615498)))

(declare-fun bs!396716 () Bool)

(assert (= bs!396716 d!498844))

(declare-fun m!2006153 () Bool)

(assert (=> bs!396716 m!2006153))

(assert (=> bs!396716 m!2005973))

(assert (=> bs!396716 m!2005973))

(declare-fun m!2006155 () Bool)

(assert (=> bs!396716 m!2006155))

(declare-fun m!2006157 () Bool)

(assert (=> bs!396716 m!2006157))

(assert (=> b!1653712 d!498844))

(declare-fun d!498846 () Bool)

(assert (=> d!498846 (= (list!7270 lt!615433) (list!7271 (c!268993 lt!615433)))))

(declare-fun bs!396717 () Bool)

(assert (= bs!396717 d!498846))

(declare-fun m!2006159 () Bool)

(assert (=> bs!396717 m!2006159))

(assert (=> b!1653712 d!498846))

(declare-fun d!498848 () Bool)

(declare-fun lt!615501 () BalanceConc!12116)

(assert (=> d!498848 (= (list!7270 lt!615501) (originalCharacters!4033 (h!23656 tokens!457)))))

(assert (=> d!498848 (= lt!615501 (dynLambda!8184 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (value!101414 (h!23656 tokens!457))))))

(assert (=> d!498848 (= (charsOf!1868 (h!23656 tokens!457)) lt!615501)))

(declare-fun b_lambda!51955 () Bool)

(assert (=> (not b_lambda!51955) (not d!498848)))

(assert (=> d!498848 t!151123))

(declare-fun b_and!117433 () Bool)

(assert (= b_and!117429 (and (=> t!151123 result!114422) b_and!117433)))

(assert (=> d!498848 t!151125))

(declare-fun b_and!117435 () Bool)

(assert (= b_and!117431 (and (=> t!151125 result!114426) b_and!117435)))

(declare-fun m!2006161 () Bool)

(assert (=> d!498848 m!2006161))

(assert (=> d!498848 m!2006047))

(assert (=> b!1653712 d!498848))

(declare-fun b!1653803 () Bool)

(declare-fun e!1060505 () Bool)

(declare-fun e!1060507 () Bool)

(assert (=> b!1653803 (= e!1060505 e!1060507)))

(declare-fun res!741441 () Bool)

(declare-fun lt!615513 () tuple2!17950)

(declare-fun size!14532 (BalanceConc!12116) Int)

(assert (=> b!1653803 (= res!741441 (< (size!14532 (_2!10377 lt!615513)) (size!14532 lt!615446)))))

(assert (=> b!1653803 (=> (not res!741441) (not e!1060507))))

(declare-fun b!1653804 () Bool)

(assert (=> b!1653804 (= e!1060505 (= (_2!10377 lt!615513) lt!615446))))

(declare-fun b!1653805 () Bool)

(declare-fun e!1060506 () Bool)

(declare-datatypes ((tuple2!17952 0))(
  ( (tuple2!17953 (_1!10378 List!18325) (_2!10378 List!18323)) )
))
(declare-fun lexList!874 (LexerInterface!2848 List!18326 List!18323) tuple2!17952)

(assert (=> b!1653805 (= e!1060506 (= (list!7270 (_2!10377 lt!615513)) (_2!10378 (lexList!874 thiss!17113 rules!1846 (list!7270 lt!615446)))))))

(declare-fun b!1653806 () Bool)

(assert (=> b!1653806 (= e!1060507 (not (isEmpty!11290 (_1!10377 lt!615513))))))

(declare-fun b!1653807 () Bool)

(declare-fun res!741442 () Bool)

(assert (=> b!1653807 (=> (not res!741442) (not e!1060506))))

(assert (=> b!1653807 (= res!741442 (= (list!7269 (_1!10377 lt!615513)) (_1!10378 (lexList!874 thiss!17113 rules!1846 (list!7270 lt!615446)))))))

(declare-fun d!498850 () Bool)

(assert (=> d!498850 e!1060506))

(declare-fun res!741440 () Bool)

(assert (=> d!498850 (=> (not res!741440) (not e!1060506))))

(assert (=> d!498850 (= res!741440 e!1060505)))

(declare-fun c!269007 () Bool)

(assert (=> d!498850 (= c!269007 (> (size!14530 (_1!10377 lt!615513)) 0))))

(declare-fun lexTailRecV2!597 (LexerInterface!2848 List!18326 BalanceConc!12116 BalanceConc!12116 BalanceConc!12116 BalanceConc!12118) tuple2!17950)

(assert (=> d!498850 (= lt!615513 (lexTailRecV2!597 thiss!17113 rules!1846 lt!615446 (BalanceConc!12117 Empty!6086) lt!615446 (BalanceConc!12119 Empty!6087)))))

(assert (=> d!498850 (= (lex!1332 thiss!17113 rules!1846 lt!615446) lt!615513)))

(assert (= (and d!498850 c!269007) b!1653803))

(assert (= (and d!498850 (not c!269007)) b!1653804))

(assert (= (and b!1653803 res!741441) b!1653806))

(assert (= (and d!498850 res!741440) b!1653807))

(assert (= (and b!1653807 res!741442) b!1653805))

(declare-fun m!2006189 () Bool)

(assert (=> b!1653805 m!2006189))

(assert (=> b!1653805 m!2006031))

(assert (=> b!1653805 m!2006031))

(declare-fun m!2006191 () Bool)

(assert (=> b!1653805 m!2006191))

(declare-fun m!2006193 () Bool)

(assert (=> b!1653803 m!2006193))

(declare-fun m!2006195 () Bool)

(assert (=> b!1653803 m!2006195))

(declare-fun m!2006197 () Bool)

(assert (=> b!1653807 m!2006197))

(assert (=> b!1653807 m!2006031))

(assert (=> b!1653807 m!2006031))

(assert (=> b!1653807 m!2006191))

(declare-fun m!2006199 () Bool)

(assert (=> d!498850 m!2006199))

(declare-fun m!2006201 () Bool)

(assert (=> d!498850 m!2006201))

(declare-fun m!2006203 () Bool)

(assert (=> b!1653806 m!2006203))

(assert (=> b!1653712 d!498850))

(declare-fun d!498858 () Bool)

(declare-fun fromListB!972 (List!18325) BalanceConc!12118)

(assert (=> d!498858 (= (seqFromList!2178 tokens!457) (fromListB!972 tokens!457))))

(declare-fun bs!396720 () Bool)

(assert (= bs!396720 d!498858))

(declare-fun m!2006205 () Bool)

(assert (=> bs!396720 m!2006205))

(assert (=> b!1653712 d!498858))

(declare-fun d!498860 () Bool)

(assert (=> d!498860 (= (seqFromList!2178 (t!151120 tokens!457)) (fromListB!972 (t!151120 tokens!457)))))

(declare-fun bs!396721 () Bool)

(assert (= bs!396721 d!498860))

(declare-fun m!2006207 () Bool)

(assert (=> bs!396721 m!2006207))

(assert (=> b!1653712 d!498860))

(declare-fun d!498862 () Bool)

(assert (=> d!498862 (= (list!7270 lt!615449) (list!7271 (c!268993 lt!615449)))))

(declare-fun bs!396722 () Bool)

(assert (= bs!396722 d!498862))

(declare-fun m!2006209 () Bool)

(assert (=> bs!396722 m!2006209))

(assert (=> b!1653712 d!498862))

(declare-fun d!498864 () Bool)

(declare-fun e!1060512 () Bool)

(assert (=> d!498864 e!1060512))

(declare-fun res!741447 () Bool)

(assert (=> d!498864 (=> (not res!741447) (not e!1060512))))

(declare-fun lt!615516 () List!18323)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2538 (List!18323) (InoxSet C!9268))

(assert (=> d!498864 (= res!741447 (= (content!2538 lt!615516) ((_ map or) (content!2538 lt!615428) (content!2538 lt!615440))))))

(declare-fun e!1060513 () List!18323)

(assert (=> d!498864 (= lt!615516 e!1060513)))

(declare-fun c!269010 () Bool)

(assert (=> d!498864 (= c!269010 ((_ is Nil!18253) lt!615428))))

(assert (=> d!498864 (= (++!4945 lt!615428 lt!615440) lt!615516)))

(declare-fun b!1653817 () Bool)

(assert (=> b!1653817 (= e!1060513 (Cons!18253 (h!23654 lt!615428) (++!4945 (t!151118 lt!615428) lt!615440)))))

(declare-fun b!1653816 () Bool)

(assert (=> b!1653816 (= e!1060513 lt!615440)))

(declare-fun b!1653818 () Bool)

(declare-fun res!741448 () Bool)

(assert (=> b!1653818 (=> (not res!741448) (not e!1060512))))

(assert (=> b!1653818 (= res!741448 (= (size!14529 lt!615516) (+ (size!14529 lt!615428) (size!14529 lt!615440))))))

(declare-fun b!1653819 () Bool)

(assert (=> b!1653819 (= e!1060512 (or (not (= lt!615440 Nil!18253)) (= lt!615516 lt!615428)))))

(assert (= (and d!498864 c!269010) b!1653816))

(assert (= (and d!498864 (not c!269010)) b!1653817))

(assert (= (and d!498864 res!741447) b!1653818))

(assert (= (and b!1653818 res!741448) b!1653819))

(declare-fun m!2006211 () Bool)

(assert (=> d!498864 m!2006211))

(declare-fun m!2006213 () Bool)

(assert (=> d!498864 m!2006213))

(declare-fun m!2006215 () Bool)

(assert (=> d!498864 m!2006215))

(declare-fun m!2006217 () Bool)

(assert (=> b!1653817 m!2006217))

(declare-fun m!2006219 () Bool)

(assert (=> b!1653818 m!2006219))

(declare-fun m!2006221 () Bool)

(assert (=> b!1653818 m!2006221))

(declare-fun m!2006223 () Bool)

(assert (=> b!1653818 m!2006223))

(assert (=> b!1653712 d!498864))

(declare-fun d!498866 () Bool)

(assert (=> d!498866 (= (isDefined!2832 lt!615444) (not (isEmpty!11292 lt!615444)))))

(declare-fun bs!396723 () Bool)

(assert (= bs!396723 d!498866))

(declare-fun m!2006225 () Bool)

(assert (=> bs!396723 m!2006225))

(assert (=> b!1653714 d!498866))

(declare-fun b!1653907 () Bool)

(declare-fun e!1060558 () Unit!30517)

(declare-fun Unit!30519 () Unit!30517)

(assert (=> b!1653907 (= e!1060558 Unit!30519)))

(declare-fun lt!615616 () List!18323)

(assert (=> b!1653907 (= lt!615616 (++!4945 lt!615428 lt!615440))))

(declare-fun lt!615612 () Unit!30517)

(declare-fun lt!615611 () Token!6004)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!213 (LexerInterface!2848 Rule!6238 List!18326 List!18323) Unit!30517)

(assert (=> b!1653907 (= lt!615612 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!213 thiss!17113 (rule!5085 lt!615611) rules!1846 lt!615616))))

(assert (=> b!1653907 (isEmpty!11292 (maxPrefixOneRule!814 thiss!17113 (rule!5085 lt!615611) lt!615616))))

(declare-fun lt!615602 () Unit!30517)

(assert (=> b!1653907 (= lt!615602 lt!615612)))

(declare-fun lt!615601 () List!18323)

(assert (=> b!1653907 (= lt!615601 (list!7270 (charsOf!1868 lt!615611)))))

(declare-fun lt!615607 () Unit!30517)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!209 (LexerInterface!2848 Rule!6238 List!18323 List!18323) Unit!30517)

(assert (=> b!1653907 (= lt!615607 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!209 thiss!17113 (rule!5085 lt!615611) lt!615601 (++!4945 lt!615428 lt!615440)))))

(assert (=> b!1653907 (not (matchR!2040 (regex!3219 (rule!5085 lt!615611)) lt!615601))))

(declare-fun lt!615615 () Unit!30517)

(assert (=> b!1653907 (= lt!615615 lt!615607)))

(assert (=> b!1653907 false))

(declare-fun b!1653908 () Bool)

(declare-fun Unit!30520 () Unit!30517)

(assert (=> b!1653908 (= e!1060558 Unit!30520)))

(declare-fun e!1060557 () Bool)

(declare-fun b!1653906 () Bool)

(declare-datatypes ((Option!3479 0))(
  ( (None!3478) (Some!3478 (v!24669 Rule!6238)) )
))
(declare-fun get!5322 (Option!3479) Rule!6238)

(declare-fun getRuleFromTag!319 (LexerInterface!2848 List!18326 String!20877) Option!3479)

(assert (=> b!1653906 (= e!1060557 (= (rule!5085 lt!615611) (get!5322 (getRuleFromTag!319 thiss!17113 rules!1846 (tag!3501 (rule!5085 lt!615611))))))))

(declare-fun b!1653905 () Bool)

(declare-fun res!741496 () Bool)

(assert (=> b!1653905 (=> (not res!741496) (not e!1060557))))

(assert (=> b!1653905 (= res!741496 (matchR!2040 (regex!3219 (get!5322 (getRuleFromTag!319 thiss!17113 rules!1846 (tag!3501 (rule!5085 lt!615611))))) (list!7270 (charsOf!1868 lt!615611))))))

(declare-fun d!498868 () Bool)

(assert (=> d!498868 (isDefined!2832 (maxPrefix!1410 thiss!17113 rules!1846 (++!4945 lt!615428 lt!615440)))))

(declare-fun lt!615604 () Unit!30517)

(assert (=> d!498868 (= lt!615604 e!1060558)))

(declare-fun c!269028 () Bool)

(assert (=> d!498868 (= c!269028 (isEmpty!11292 (maxPrefix!1410 thiss!17113 rules!1846 (++!4945 lt!615428 lt!615440))))))

(declare-fun lt!615617 () Unit!30517)

(declare-fun lt!615613 () Unit!30517)

(assert (=> d!498868 (= lt!615617 lt!615613)))

(assert (=> d!498868 e!1060557))

(declare-fun res!741495 () Bool)

(assert (=> d!498868 (=> (not res!741495) (not e!1060557))))

(declare-fun isDefined!2834 (Option!3479) Bool)

(assert (=> d!498868 (= res!741495 (isDefined!2834 (getRuleFromTag!319 thiss!17113 rules!1846 (tag!3501 (rule!5085 lt!615611)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!319 (LexerInterface!2848 List!18326 List!18323 Token!6004) Unit!30517)

(assert (=> d!498868 (= lt!615613 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!319 thiss!17113 rules!1846 lt!615428 lt!615611))))

(declare-fun lt!615603 () Unit!30517)

(declare-fun lt!615606 () Unit!30517)

(assert (=> d!498868 (= lt!615603 lt!615606)))

(declare-fun lt!615608 () List!18323)

(assert (=> d!498868 (isPrefix!1477 lt!615608 (++!4945 lt!615428 lt!615440))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!205 (List!18323 List!18323 List!18323) Unit!30517)

(assert (=> d!498868 (= lt!615606 (lemmaPrefixStaysPrefixWhenAddingToSuffix!205 lt!615608 lt!615428 lt!615440))))

(assert (=> d!498868 (= lt!615608 (list!7270 (charsOf!1868 lt!615611)))))

(declare-fun lt!615609 () Unit!30517)

(declare-fun lt!615610 () Unit!30517)

(assert (=> d!498868 (= lt!615609 lt!615610)))

(declare-fun lt!615614 () List!18323)

(declare-fun lt!615605 () List!18323)

(assert (=> d!498868 (isPrefix!1477 lt!615614 (++!4945 lt!615614 lt!615605))))

(assert (=> d!498868 (= lt!615610 (lemmaConcatTwoListThenFirstIsPrefix!1002 lt!615614 lt!615605))))

(assert (=> d!498868 (= lt!615605 (_2!10375 (get!5321 (maxPrefix!1410 thiss!17113 rules!1846 lt!615428))))))

(assert (=> d!498868 (= lt!615614 (list!7270 (charsOf!1868 lt!615611)))))

(assert (=> d!498868 (= lt!615611 (head!3658 (list!7269 (_1!10377 (lex!1332 thiss!17113 rules!1846 (seqFromList!2177 lt!615428))))))))

(assert (=> d!498868 (not (isEmpty!11291 rules!1846))))

(assert (=> d!498868 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!416 thiss!17113 rules!1846 lt!615428 lt!615440) lt!615604)))

(assert (= (and d!498868 res!741495) b!1653905))

(assert (= (and b!1653905 res!741496) b!1653906))

(assert (= (and d!498868 c!269028) b!1653907))

(assert (= (and d!498868 (not c!269028)) b!1653908))

(declare-fun m!2006371 () Bool)

(assert (=> b!1653907 m!2006371))

(assert (=> b!1653907 m!2006371))

(declare-fun m!2006373 () Bool)

(assert (=> b!1653907 m!2006373))

(declare-fun m!2006375 () Bool)

(assert (=> b!1653907 m!2006375))

(declare-fun m!2006377 () Bool)

(assert (=> b!1653907 m!2006377))

(declare-fun m!2006379 () Bool)

(assert (=> b!1653907 m!2006379))

(assert (=> b!1653907 m!2006033))

(declare-fun m!2006381 () Bool)

(assert (=> b!1653907 m!2006381))

(assert (=> b!1653907 m!2006377))

(assert (=> b!1653907 m!2006033))

(declare-fun m!2006383 () Bool)

(assert (=> b!1653907 m!2006383))

(declare-fun m!2006385 () Bool)

(assert (=> b!1653906 m!2006385))

(assert (=> b!1653906 m!2006385))

(declare-fun m!2006387 () Bool)

(assert (=> b!1653906 m!2006387))

(assert (=> b!1653905 m!2006371))

(assert (=> b!1653905 m!2006371))

(assert (=> b!1653905 m!2006373))

(assert (=> b!1653905 m!2006385))

(assert (=> b!1653905 m!2006385))

(assert (=> b!1653905 m!2006387))

(assert (=> b!1653905 m!2006373))

(declare-fun m!2006389 () Bool)

(assert (=> b!1653905 m!2006389))

(assert (=> d!498868 m!2006371))

(assert (=> d!498868 m!2006009))

(declare-fun m!2006391 () Bool)

(assert (=> d!498868 m!2006391))

(declare-fun m!2006393 () Bool)

(assert (=> d!498868 m!2006393))

(declare-fun m!2006395 () Bool)

(assert (=> d!498868 m!2006395))

(assert (=> d!498868 m!2006385))

(assert (=> d!498868 m!2005915))

(assert (=> d!498868 m!2006385))

(declare-fun m!2006397 () Bool)

(assert (=> d!498868 m!2006397))

(assert (=> d!498868 m!2006033))

(declare-fun m!2006399 () Bool)

(assert (=> d!498868 m!2006399))

(assert (=> d!498868 m!2006399))

(declare-fun m!2006401 () Bool)

(assert (=> d!498868 m!2006401))

(declare-fun m!2006403 () Bool)

(assert (=> d!498868 m!2006403))

(assert (=> d!498868 m!2006399))

(declare-fun m!2006405 () Bool)

(assert (=> d!498868 m!2006405))

(declare-fun m!2006407 () Bool)

(assert (=> d!498868 m!2006407))

(assert (=> d!498868 m!2006033))

(declare-fun m!2006409 () Bool)

(assert (=> d!498868 m!2006409))

(assert (=> d!498868 m!2005915))

(declare-fun m!2006411 () Bool)

(assert (=> d!498868 m!2006411))

(assert (=> d!498868 m!2006371))

(assert (=> d!498868 m!2006373))

(assert (=> d!498868 m!2006009))

(assert (=> d!498868 m!2006011))

(assert (=> d!498868 m!2006391))

(declare-fun m!2006413 () Bool)

(assert (=> d!498868 m!2006413))

(assert (=> d!498868 m!2005939))

(assert (=> d!498868 m!2006393))

(assert (=> d!498868 m!2006033))

(declare-fun m!2006415 () Bool)

(assert (=> d!498868 m!2006415))

(assert (=> b!1653714 d!498868))

(declare-fun d!498902 () Bool)

(declare-fun c!269031 () Bool)

(assert (=> d!498902 (= c!269031 (isEmpty!11289 (++!4945 lt!615428 lt!615443)))))

(declare-fun e!1060561 () Bool)

(assert (=> d!498902 (= (prefixMatch!464 lt!615426 (++!4945 lt!615428 lt!615443)) e!1060561)))

(declare-fun b!1653913 () Bool)

(declare-fun lostCause!463 (Regex!4547) Bool)

(assert (=> b!1653913 (= e!1060561 (not (lostCause!463 lt!615426)))))

(declare-fun b!1653914 () Bool)

(declare-fun derivativeStep!1113 (Regex!4547 C!9268) Regex!4547)

(declare-fun tail!2452 (List!18323) List!18323)

(assert (=> b!1653914 (= e!1060561 (prefixMatch!464 (derivativeStep!1113 lt!615426 (head!3657 (++!4945 lt!615428 lt!615443))) (tail!2452 (++!4945 lt!615428 lt!615443))))))

(assert (= (and d!498902 c!269031) b!1653913))

(assert (= (and d!498902 (not c!269031)) b!1653914))

(assert (=> d!498902 m!2005945))

(declare-fun m!2006417 () Bool)

(assert (=> d!498902 m!2006417))

(declare-fun m!2006419 () Bool)

(assert (=> b!1653913 m!2006419))

(assert (=> b!1653914 m!2005945))

(declare-fun m!2006421 () Bool)

(assert (=> b!1653914 m!2006421))

(assert (=> b!1653914 m!2006421))

(declare-fun m!2006423 () Bool)

(assert (=> b!1653914 m!2006423))

(assert (=> b!1653914 m!2005945))

(declare-fun m!2006425 () Bool)

(assert (=> b!1653914 m!2006425))

(assert (=> b!1653914 m!2006423))

(assert (=> b!1653914 m!2006425))

(declare-fun m!2006427 () Bool)

(assert (=> b!1653914 m!2006427))

(assert (=> b!1653713 d!498902))

(declare-fun d!498904 () Bool)

(declare-fun e!1060562 () Bool)

(assert (=> d!498904 e!1060562))

(declare-fun res!741497 () Bool)

(assert (=> d!498904 (=> (not res!741497) (not e!1060562))))

(declare-fun lt!615618 () List!18323)

(assert (=> d!498904 (= res!741497 (= (content!2538 lt!615618) ((_ map or) (content!2538 lt!615428) (content!2538 lt!615443))))))

(declare-fun e!1060563 () List!18323)

(assert (=> d!498904 (= lt!615618 e!1060563)))

(declare-fun c!269032 () Bool)

(assert (=> d!498904 (= c!269032 ((_ is Nil!18253) lt!615428))))

(assert (=> d!498904 (= (++!4945 lt!615428 lt!615443) lt!615618)))

(declare-fun b!1653916 () Bool)

(assert (=> b!1653916 (= e!1060563 (Cons!18253 (h!23654 lt!615428) (++!4945 (t!151118 lt!615428) lt!615443)))))

(declare-fun b!1653915 () Bool)

(assert (=> b!1653915 (= e!1060563 lt!615443)))

(declare-fun b!1653917 () Bool)

(declare-fun res!741498 () Bool)

(assert (=> b!1653917 (=> (not res!741498) (not e!1060562))))

(assert (=> b!1653917 (= res!741498 (= (size!14529 lt!615618) (+ (size!14529 lt!615428) (size!14529 lt!615443))))))

(declare-fun b!1653918 () Bool)

(assert (=> b!1653918 (= e!1060562 (or (not (= lt!615443 Nil!18253)) (= lt!615618 lt!615428)))))

(assert (= (and d!498904 c!269032) b!1653915))

(assert (= (and d!498904 (not c!269032)) b!1653916))

(assert (= (and d!498904 res!741497) b!1653917))

(assert (= (and b!1653917 res!741498) b!1653918))

(declare-fun m!2006429 () Bool)

(assert (=> d!498904 m!2006429))

(assert (=> d!498904 m!2006213))

(declare-fun m!2006431 () Bool)

(assert (=> d!498904 m!2006431))

(declare-fun m!2006433 () Bool)

(assert (=> b!1653916 m!2006433))

(declare-fun m!2006435 () Bool)

(assert (=> b!1653917 m!2006435))

(assert (=> b!1653917 m!2006221))

(declare-fun m!2006437 () Bool)

(assert (=> b!1653917 m!2006437))

(assert (=> b!1653713 d!498904))

(declare-fun d!498906 () Bool)

(assert (=> d!498906 (= (get!5321 lt!615444) (v!24661 lt!615444))))

(assert (=> b!1653715 d!498906))

(declare-fun b!1654137 () Bool)

(declare-fun e!1060695 () Unit!30517)

(declare-fun Unit!30521 () Unit!30517)

(assert (=> b!1654137 (= e!1060695 Unit!30521)))

(declare-fun e!1060690 () Bool)

(declare-fun lt!616015 () Token!6004)

(declare-fun b!1654138 () Bool)

(assert (=> b!1654138 (= e!1060690 (= (rule!5085 lt!616015) (get!5322 (getRuleFromTag!319 thiss!17113 rules!1846 (tag!3501 (rule!5085 lt!616015))))))))

(declare-fun b!1654139 () Bool)

(declare-fun e!1060694 () Unit!30517)

(declare-fun Unit!30522 () Unit!30517)

(assert (=> b!1654139 (= e!1060694 Unit!30522)))

(declare-fun b!1654140 () Bool)

(declare-fun e!1060691 () Unit!30517)

(declare-fun Unit!30523 () Unit!30517)

(assert (=> b!1654140 (= e!1060691 Unit!30523)))

(declare-fun lt!616061 () List!18323)

(declare-fun lt!616012 () Unit!30517)

(declare-fun lt!616073 () List!18323)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!57 (LexerInterface!2848 List!18326 List!18323 Token!6004 Rule!6238 List!18323) Unit!30517)

(assert (=> b!1654140 (= lt!616012 (lemmaMaxPrefixThenMatchesRulesRegex!57 thiss!17113 rules!1846 lt!616061 lt!616015 (rule!5085 lt!616015) lt!616073))))

(assert (=> b!1654140 (matchR!2040 (rulesRegex!603 thiss!17113 rules!1846) (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616047 () Unit!30517)

(assert (=> b!1654140 (= lt!616047 lt!616012)))

(declare-fun lt!616054 () List!18323)

(assert (=> b!1654140 (= lt!616054 (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(declare-fun lt!616037 () List!18323)

(assert (=> b!1654140 (= lt!616037 (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(declare-fun lt!616019 () List!18323)

(declare-fun getSuffix!727 (List!18323 List!18323) List!18323)

(assert (=> b!1654140 (= lt!616019 (getSuffix!727 lt!616061 (list!7270 (charsOf!1868 (h!23656 tokens!457)))))))

(declare-fun lt!616032 () Unit!30517)

(declare-fun lemmaSamePrefixThenSameSuffix!679 (List!18323 List!18323 List!18323 List!18323 List!18323) Unit!30517)

(assert (=> b!1654140 (= lt!616032 (lemmaSamePrefixThenSameSuffix!679 lt!616054 lt!615440 lt!616037 lt!616019 lt!616061))))

(assert (=> b!1654140 (= lt!615440 lt!616019)))

(declare-fun lt!616039 () Unit!30517)

(assert (=> b!1654140 (= lt!616039 lt!616032)))

(declare-fun lt!616020 () List!18323)

(assert (=> b!1654140 (= lt!616020 (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(declare-fun lt!616033 () Unit!30517)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!170 (List!18323 List!18323) Unit!30517)

(assert (=> b!1654140 (= lt!616033 (lemmaAddHeadSuffixToPrefixStillPrefix!170 lt!616020 lt!616061))))

(assert (=> b!1654140 (isPrefix!1477 (++!4945 lt!616020 (Cons!18253 (head!3657 (getSuffix!727 lt!616061 lt!616020)) Nil!18253)) lt!616061)))

(declare-fun lt!616024 () Unit!30517)

(assert (=> b!1654140 (= lt!616024 lt!616033)))

(declare-fun lt!616035 () List!18323)

(assert (=> b!1654140 (= lt!616035 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616028 () List!18323)

(assert (=> b!1654140 (= lt!616028 (++!4945 (list!7270 (charsOf!1868 (h!23656 tokens!457))) (Cons!18253 (head!3657 lt!615440) Nil!18253)))))

(declare-fun lt!616046 () Unit!30517)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!56 (List!18323 List!18323 List!18323) Unit!30517)

(assert (=> b!1654140 (= lt!616046 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!56 lt!616035 lt!616028 lt!616061))))

(assert (=> b!1654140 (isPrefix!1477 lt!616028 lt!616035)))

(declare-fun lt!616022 () Unit!30517)

(assert (=> b!1654140 (= lt!616022 lt!616046)))

(declare-fun lt!616056 () Regex!4547)

(assert (=> b!1654140 (= lt!616056 (rulesRegex!603 thiss!17113 rules!1846))))

(declare-fun lt!616025 () List!18323)

(assert (=> b!1654140 (= lt!616025 (++!4945 (list!7270 (charsOf!1868 (h!23656 tokens!457))) (Cons!18253 (head!3657 lt!615440) Nil!18253)))))

(declare-fun lt!616070 () List!18323)

(assert (=> b!1654140 (= lt!616070 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616042 () Unit!30517)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!57 (Regex!4547 List!18323 List!18323) Unit!30517)

(assert (=> b!1654140 (= lt!616042 (lemmaNotPrefixMatchThenCannotMatchLonger!57 lt!616056 lt!616025 lt!616070))))

(assert (=> b!1654140 (not (matchR!2040 lt!616056 lt!616070))))

(declare-fun lt!616059 () Unit!30517)

(assert (=> b!1654140 (= lt!616059 lt!616042)))

(assert (=> b!1654140 false))

(declare-fun b!1654141 () Bool)

(declare-fun Unit!30524 () Unit!30517)

(assert (=> b!1654141 (= e!1060691 Unit!30524)))

(declare-fun b!1654142 () Bool)

(declare-fun e!1060693 () Unit!30517)

(declare-fun Unit!30525 () Unit!30517)

(assert (=> b!1654142 (= e!1060693 Unit!30525)))

(declare-fun b!1654144 () Bool)

(declare-fun res!741627 () Bool)

(assert (=> b!1654144 (=> (not res!741627) (not e!1060690))))

(assert (=> b!1654144 (= res!741627 (matchR!2040 (regex!3219 (get!5322 (getRuleFromTag!319 thiss!17113 rules!1846 (tag!3501 (rule!5085 lt!616015))))) (list!7270 (charsOf!1868 lt!616015))))))

(declare-fun b!1654145 () Bool)

(declare-fun e!1060689 () Unit!30517)

(declare-fun Unit!30526 () Unit!30517)

(assert (=> b!1654145 (= e!1060689 Unit!30526)))

(declare-fun lt!616014 () List!18323)

(assert (=> b!1654145 (= lt!616014 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616007 () List!18323)

(assert (=> b!1654145 (= lt!616007 (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(declare-fun lt!616053 () Unit!30517)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!147 (LexerInterface!2848 List!18326 Rule!6238 List!18323 List!18323 List!18323 Rule!6238) Unit!30517)

(assert (=> b!1654145 (= lt!616053 (lemmaMaxPrefixOutputsMaxPrefix!147 thiss!17113 rules!1846 (rule!5085 lt!616015) lt!616014 lt!616061 lt!616007 (rule!5085 (h!23656 tokens!457))))))

(assert (=> b!1654145 (not (matchR!2040 (regex!3219 (rule!5085 (h!23656 tokens!457))) lt!616007))))

(declare-fun lt!616067 () Unit!30517)

(assert (=> b!1654145 (= lt!616067 lt!616053)))

(assert (=> b!1654145 false))

(declare-fun b!1654146 () Bool)

(assert (=> b!1654146 false))

(declare-fun lt!616004 () Unit!30517)

(declare-fun lt!616072 () Unit!30517)

(assert (=> b!1654146 (= lt!616004 lt!616072)))

(declare-fun lt!616064 () List!18323)

(assert (=> b!1654146 (not (matchR!2040 (regex!3219 (rule!5085 lt!616015)) lt!616064))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!97 (LexerInterface!2848 List!18326 Rule!6238 List!18323 List!18323 Rule!6238) Unit!30517)

(assert (=> b!1654146 (= lt!616072 (lemmaMaxPrefNoSmallerRuleMatches!97 thiss!17113 rules!1846 (rule!5085 (h!23656 tokens!457)) lt!616064 (list!7270 (charsOf!1868 (h!23656 tokens!457))) (rule!5085 lt!616015)))))

(assert (=> b!1654146 (= lt!616064 (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(declare-fun Unit!30527 () Unit!30517)

(assert (=> b!1654146 (= e!1060694 Unit!30527)))

(declare-fun b!1654147 () Bool)

(declare-fun Unit!30528 () Unit!30517)

(assert (=> b!1654147 (= e!1060689 Unit!30528)))

(declare-fun b!1654148 () Bool)

(declare-fun e!1060692 () Unit!30517)

(declare-fun Unit!30529 () Unit!30517)

(assert (=> b!1654148 (= e!1060692 Unit!30529)))

(declare-fun b!1654149 () Bool)

(declare-fun Unit!30530 () Unit!30517)

(assert (=> b!1654149 (= e!1060692 Unit!30530)))

(declare-fun c!269082 () Bool)

(declare-fun getIndex!125 (List!18326 Rule!6238) Int)

(assert (=> b!1654149 (= c!269082 (< (getIndex!125 rules!1846 (rule!5085 (h!23656 tokens!457))) (getIndex!125 rules!1846 (rule!5085 lt!616015))))))

(declare-fun lt!616055 () Unit!30517)

(assert (=> b!1654149 (= lt!616055 e!1060695)))

(declare-fun c!269086 () Bool)

(assert (=> b!1654149 (= c!269086 (< (getIndex!125 rules!1846 (rule!5085 lt!616015)) (getIndex!125 rules!1846 (rule!5085 (h!23656 tokens!457)))))))

(declare-fun lt!616010 () Unit!30517)

(assert (=> b!1654149 (= lt!616010 e!1060694)))

(declare-fun c!269085 () Bool)

(assert (=> b!1654149 (= c!269085 (= (getIndex!125 rules!1846 (rule!5085 lt!616015)) (getIndex!125 rules!1846 (rule!5085 (h!23656 tokens!457)))))))

(declare-fun lt!616029 () Unit!30517)

(assert (=> b!1654149 (= lt!616029 e!1060693)))

(assert (=> b!1654149 false))

(declare-fun b!1654150 () Bool)

(assert (=> b!1654150 false))

(declare-fun lt!616036 () Unit!30517)

(declare-fun lt!616040 () Unit!30517)

(assert (=> b!1654150 (= lt!616036 lt!616040)))

(declare-fun lt!616049 () List!18323)

(assert (=> b!1654150 (not (matchR!2040 (regex!3219 (rule!5085 (h!23656 tokens!457))) lt!616049))))

(assert (=> b!1654150 (= lt!616040 (lemmaMaxPrefNoSmallerRuleMatches!97 thiss!17113 rules!1846 (rule!5085 lt!616015) lt!616049 lt!616061 (rule!5085 (h!23656 tokens!457))))))

(assert (=> b!1654150 (= lt!616049 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun Unit!30531 () Unit!30517)

(assert (=> b!1654150 (= e!1060695 Unit!30531)))

(declare-fun b!1654143 () Bool)

(assert (=> b!1654143 false))

(declare-fun lt!616016 () Unit!30517)

(declare-fun lt!616006 () Unit!30517)

(assert (=> b!1654143 (= lt!616016 lt!616006)))

(assert (=> b!1654143 (= (rule!5085 lt!616015) (rule!5085 (h!23656 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!73 (List!18326 Rule!6238 Rule!6238) Unit!30517)

(assert (=> b!1654143 (= lt!616006 (lemmaSameIndexThenSameElement!73 rules!1846 (rule!5085 lt!616015) (rule!5085 (h!23656 tokens!457))))))

(declare-fun Unit!30532 () Unit!30517)

(assert (=> b!1654143 (= e!1060693 Unit!30532)))

(declare-fun d!498908 () Bool)

(assert (=> d!498908 (= (maxPrefix!1410 thiss!17113 rules!1846 (++!4945 (list!7270 (charsOf!1868 (h!23656 tokens!457))) lt!615440)) (Some!3476 (tuple2!17947 (h!23656 tokens!457) lt!615440)))))

(declare-fun lt!616026 () Unit!30517)

(declare-fun Unit!30533 () Unit!30517)

(assert (=> d!498908 (= lt!616026 Unit!30533)))

(declare-fun lt!616068 () Unit!30517)

(assert (=> d!498908 (= lt!616068 e!1060692)))

(declare-fun c!269083 () Bool)

(assert (=> d!498908 (= c!269083 (not (= (rule!5085 lt!616015) (rule!5085 (h!23656 tokens!457)))))))

(declare-fun lt!616045 () Unit!30517)

(declare-fun lt!616052 () Unit!30517)

(assert (=> d!498908 (= lt!616045 lt!616052)))

(assert (=> d!498908 (= lt!615440 lt!616073)))

(assert (=> d!498908 (= lt!616052 (lemmaSamePrefixThenSameSuffix!679 (list!7270 (charsOf!1868 (h!23656 tokens!457))) lt!615440 (list!7270 (charsOf!1868 (h!23656 tokens!457))) lt!616073 lt!616061))))

(declare-fun lt!616023 () Unit!30517)

(declare-fun lt!616008 () Unit!30517)

(assert (=> d!498908 (= lt!616023 lt!616008)))

(declare-fun lt!616027 () List!18323)

(declare-fun lt!616044 () List!18323)

(assert (=> d!498908 (= lt!616027 lt!616044)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!180 (List!18323 List!18323 List!18323) Unit!30517)

(assert (=> d!498908 (= lt!616008 (lemmaIsPrefixSameLengthThenSameList!180 lt!616027 lt!616044 lt!616061))))

(assert (=> d!498908 (= lt!616044 (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(assert (=> d!498908 (= lt!616027 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616005 () Unit!30517)

(assert (=> d!498908 (= lt!616005 e!1060689)))

(declare-fun c!269084 () Bool)

(assert (=> d!498908 (= c!269084 (< (size!14532 (charsOf!1868 lt!616015)) (size!14532 (charsOf!1868 (h!23656 tokens!457)))))))

(declare-fun lt!616066 () Unit!30517)

(assert (=> d!498908 (= lt!616066 e!1060691)))

(declare-fun c!269081 () Bool)

(assert (=> d!498908 (= c!269081 (> (size!14532 (charsOf!1868 lt!616015)) (size!14532 (charsOf!1868 (h!23656 tokens!457)))))))

(declare-fun lt!616030 () Unit!30517)

(declare-fun lt!616048 () Unit!30517)

(assert (=> d!498908 (= lt!616030 lt!616048)))

(assert (=> d!498908 (matchR!2040 (rulesRegex!603 thiss!17113 rules!1846) (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(assert (=> d!498908 (= lt!616048 (lemmaMaxPrefixThenMatchesRulesRegex!57 thiss!17113 rules!1846 (list!7270 (charsOf!1868 (h!23656 tokens!457))) (h!23656 tokens!457) (rule!5085 (h!23656 tokens!457)) Nil!18253))))

(declare-fun lt!616038 () Unit!30517)

(declare-fun lt!616009 () Unit!30517)

(assert (=> d!498908 (= lt!616038 lt!616009)))

(declare-fun lt!616063 () List!18323)

(assert (=> d!498908 (= lt!616073 lt!616063)))

(declare-fun lt!616060 () List!18323)

(declare-fun lt!616051 () List!18323)

(assert (=> d!498908 (= lt!616009 (lemmaSamePrefixThenSameSuffix!679 lt!616060 lt!616073 lt!616051 lt!616063 lt!616061))))

(assert (=> d!498908 (= lt!616063 (getSuffix!727 lt!616061 (list!7270 (charsOf!1868 lt!616015))))))

(assert (=> d!498908 (= lt!616051 (list!7270 (charsOf!1868 lt!616015)))))

(assert (=> d!498908 (= lt!616060 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616062 () Unit!30517)

(declare-fun lt!616071 () Unit!30517)

(assert (=> d!498908 (= lt!616062 lt!616071)))

(declare-fun lt!616043 () List!18323)

(assert (=> d!498908 (= (maxPrefixOneRule!814 thiss!17113 (rule!5085 lt!616015) lt!616061) (Some!3476 (tuple2!17947 (Token!6005 (apply!4831 (transformation!3219 (rule!5085 lt!616015)) (seqFromList!2177 lt!616043)) (rule!5085 lt!616015) (size!14529 lt!616043) lt!616043) lt!616073)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!246 (LexerInterface!2848 List!18326 List!18323 List!18323 List!18323 Rule!6238) Unit!30517)

(assert (=> d!498908 (= lt!616071 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!246 thiss!17113 rules!1846 lt!616043 lt!616061 lt!616073 (rule!5085 lt!616015)))))

(assert (=> d!498908 (= lt!616043 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616013 () Unit!30517)

(declare-fun lemmaCharactersSize!352 (Token!6004) Unit!30517)

(assert (=> d!498908 (= lt!616013 (lemmaCharactersSize!352 lt!616015))))

(declare-fun lt!616018 () Unit!30517)

(declare-fun lemmaEqSameImage!205 (TokenValueInjection!6278 BalanceConc!12116 BalanceConc!12116) Unit!30517)

(assert (=> d!498908 (= lt!616018 (lemmaEqSameImage!205 (transformation!3219 (rule!5085 lt!616015)) (charsOf!1868 lt!616015) (seqFromList!2177 (originalCharacters!4033 lt!616015))))))

(declare-fun lt!616031 () Unit!30517)

(declare-fun lemmaSemiInverse!420 (TokenValueInjection!6278 BalanceConc!12116) Unit!30517)

(assert (=> d!498908 (= lt!616031 (lemmaSemiInverse!420 (transformation!3219 (rule!5085 lt!616015)) (charsOf!1868 lt!616015)))))

(declare-fun lt!616050 () Unit!30517)

(declare-fun lemmaInv!485 (TokenValueInjection!6278) Unit!30517)

(assert (=> d!498908 (= lt!616050 (lemmaInv!485 (transformation!3219 (rule!5085 lt!616015))))))

(declare-fun lt!616058 () Unit!30517)

(declare-fun lt!616017 () Unit!30517)

(assert (=> d!498908 (= lt!616058 lt!616017)))

(declare-fun lt!616041 () List!18323)

(assert (=> d!498908 (isPrefix!1477 lt!616041 (++!4945 lt!616041 lt!616073))))

(assert (=> d!498908 (= lt!616017 (lemmaConcatTwoListThenFirstIsPrefix!1002 lt!616041 lt!616073))))

(assert (=> d!498908 (= lt!616041 (list!7270 (charsOf!1868 lt!616015)))))

(declare-fun lt!616034 () Unit!30517)

(declare-fun lt!616011 () Unit!30517)

(assert (=> d!498908 (= lt!616034 lt!616011)))

(assert (=> d!498908 e!1060690))

(declare-fun res!741626 () Bool)

(assert (=> d!498908 (=> (not res!741626) (not e!1060690))))

(assert (=> d!498908 (= res!741626 (isDefined!2834 (getRuleFromTag!319 thiss!17113 rules!1846 (tag!3501 (rule!5085 lt!616015)))))))

(assert (=> d!498908 (= lt!616011 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!319 thiss!17113 rules!1846 lt!616061 lt!616015))))

(declare-fun lt!616003 () Option!3477)

(assert (=> d!498908 (= lt!616073 (_2!10375 (get!5321 lt!616003)))))

(assert (=> d!498908 (= lt!616015 (_1!10375 (get!5321 lt!616003)))))

(declare-fun lt!616069 () Unit!30517)

(assert (=> d!498908 (= lt!616069 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!416 thiss!17113 rules!1846 (list!7270 (charsOf!1868 (h!23656 tokens!457))) lt!615440))))

(assert (=> d!498908 (= lt!616003 (maxPrefix!1410 thiss!17113 rules!1846 lt!616061))))

(declare-fun lt!616065 () Unit!30517)

(declare-fun lt!616021 () Unit!30517)

(assert (=> d!498908 (= lt!616065 lt!616021)))

(declare-fun lt!616057 () List!18323)

(assert (=> d!498908 (isPrefix!1477 lt!616057 (++!4945 lt!616057 lt!615440))))

(assert (=> d!498908 (= lt!616021 (lemmaConcatTwoListThenFirstIsPrefix!1002 lt!616057 lt!615440))))

(assert (=> d!498908 (= lt!616057 (list!7270 (charsOf!1868 (h!23656 tokens!457))))))

(assert (=> d!498908 (= lt!616061 (++!4945 (list!7270 (charsOf!1868 (h!23656 tokens!457))) lt!615440))))

(assert (=> d!498908 (not (isEmpty!11291 rules!1846))))

(assert (=> d!498908 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!174 thiss!17113 rules!1846 (h!23656 tokens!457) (rule!5085 (h!23656 tokens!457)) lt!615440) lt!616026)))

(assert (= (and d!498908 res!741626) b!1654144))

(assert (= (and b!1654144 res!741627) b!1654138))

(assert (= (and d!498908 c!269081) b!1654140))

(assert (= (and d!498908 (not c!269081)) b!1654141))

(assert (= (and d!498908 c!269084) b!1654145))

(assert (= (and d!498908 (not c!269084)) b!1654147))

(assert (= (and d!498908 c!269083) b!1654149))

(assert (= (and d!498908 (not c!269083)) b!1654148))

(assert (= (and b!1654149 c!269082) b!1654150))

(assert (= (and b!1654149 (not c!269082)) b!1654137))

(assert (= (and b!1654149 c!269086) b!1654146))

(assert (= (and b!1654149 (not c!269086)) b!1654139))

(assert (= (and b!1654149 c!269085) b!1654143))

(assert (= (and b!1654149 (not c!269085)) b!1654142))

(declare-fun m!2006863 () Bool)

(assert (=> d!498908 m!2006863))

(declare-fun m!2006865 () Bool)

(assert (=> d!498908 m!2006865))

(declare-fun m!2006867 () Bool)

(assert (=> d!498908 m!2006867))

(declare-fun m!2006869 () Bool)

(assert (=> d!498908 m!2006869))

(declare-fun m!2006871 () Bool)

(assert (=> d!498908 m!2006871))

(assert (=> d!498908 m!2006863))

(declare-fun m!2006873 () Bool)

(assert (=> d!498908 m!2006873))

(assert (=> d!498908 m!2006019))

(assert (=> d!498908 m!2006865))

(assert (=> d!498908 m!2006869))

(declare-fun m!2006875 () Bool)

(assert (=> d!498908 m!2006875))

(declare-fun m!2006877 () Bool)

(assert (=> d!498908 m!2006877))

(declare-fun m!2006879 () Bool)

(assert (=> d!498908 m!2006879))

(declare-fun m!2006881 () Bool)

(assert (=> d!498908 m!2006881))

(declare-fun m!2006883 () Bool)

(assert (=> d!498908 m!2006883))

(assert (=> d!498908 m!2006871))

(assert (=> d!498908 m!2006865))

(assert (=> d!498908 m!2006865))

(declare-fun m!2006885 () Bool)

(assert (=> d!498908 m!2006885))

(declare-fun m!2006887 () Bool)

(assert (=> d!498908 m!2006887))

(declare-fun m!2006889 () Bool)

(assert (=> d!498908 m!2006889))

(assert (=> d!498908 m!2006871))

(assert (=> d!498908 m!2006879))

(declare-fun m!2006891 () Bool)

(assert (=> d!498908 m!2006891))

(declare-fun m!2006893 () Bool)

(assert (=> d!498908 m!2006893))

(declare-fun m!2006895 () Bool)

(assert (=> d!498908 m!2006895))

(assert (=> d!498908 m!2006883))

(declare-fun m!2006897 () Bool)

(assert (=> d!498908 m!2006897))

(declare-fun m!2006899 () Bool)

(assert (=> d!498908 m!2006899))

(assert (=> d!498908 m!2006893))

(assert (=> d!498908 m!2005953))

(declare-fun m!2006901 () Bool)

(assert (=> d!498908 m!2006901))

(assert (=> d!498908 m!2006871))

(declare-fun m!2006903 () Bool)

(assert (=> d!498908 m!2006903))

(declare-fun m!2006905 () Bool)

(assert (=> d!498908 m!2006905))

(declare-fun m!2006907 () Bool)

(assert (=> d!498908 m!2006907))

(assert (=> d!498908 m!2006019))

(assert (=> d!498908 m!2006019))

(declare-fun m!2006909 () Bool)

(assert (=> d!498908 m!2006909))

(assert (=> d!498908 m!2005953))

(assert (=> d!498908 m!2006865))

(declare-fun m!2006911 () Bool)

(assert (=> d!498908 m!2006911))

(declare-fun m!2006913 () Bool)

(assert (=> d!498908 m!2006913))

(declare-fun m!2006915 () Bool)

(assert (=> d!498908 m!2006915))

(declare-fun m!2006917 () Bool)

(assert (=> d!498908 m!2006917))

(declare-fun m!2006919 () Bool)

(assert (=> d!498908 m!2006919))

(assert (=> d!498908 m!2005939))

(assert (=> d!498908 m!2006865))

(declare-fun m!2006921 () Bool)

(assert (=> d!498908 m!2006921))

(assert (=> d!498908 m!2006865))

(assert (=> d!498908 m!2006915))

(declare-fun m!2006923 () Bool)

(assert (=> d!498908 m!2006923))

(assert (=> d!498908 m!2006871))

(declare-fun m!2006925 () Bool)

(assert (=> d!498908 m!2006925))

(assert (=> d!498908 m!2006887))

(declare-fun m!2006927 () Bool)

(assert (=> d!498908 m!2006927))

(declare-fun m!2006929 () Bool)

(assert (=> d!498908 m!2006929))

(declare-fun m!2006931 () Bool)

(assert (=> d!498908 m!2006931))

(declare-fun m!2006933 () Bool)

(assert (=> b!1654140 m!2006933))

(declare-fun m!2006935 () Bool)

(assert (=> b!1654140 m!2006935))

(assert (=> b!1654140 m!2005997))

(declare-fun m!2006937 () Bool)

(assert (=> b!1654140 m!2006937))

(declare-fun m!2006939 () Bool)

(assert (=> b!1654140 m!2006939))

(assert (=> b!1654140 m!2006871))

(assert (=> b!1654140 m!2005953))

(assert (=> b!1654140 m!2006879))

(declare-fun m!2006941 () Bool)

(assert (=> b!1654140 m!2006941))

(declare-fun m!2006943 () Bool)

(assert (=> b!1654140 m!2006943))

(declare-fun m!2006945 () Bool)

(assert (=> b!1654140 m!2006945))

(declare-fun m!2006947 () Bool)

(assert (=> b!1654140 m!2006947))

(declare-fun m!2006949 () Bool)

(assert (=> b!1654140 m!2006949))

(assert (=> b!1654140 m!2006871))

(assert (=> b!1654140 m!2006879))

(declare-fun m!2006951 () Bool)

(assert (=> b!1654140 m!2006951))

(assert (=> b!1654140 m!2006951))

(declare-fun m!2006953 () Bool)

(assert (=> b!1654140 m!2006953))

(assert (=> b!1654140 m!2005953))

(assert (=> b!1654140 m!2006019))

(assert (=> b!1654140 m!2006865))

(assert (=> b!1654140 m!2006933))

(declare-fun m!2006955 () Bool)

(assert (=> b!1654140 m!2006955))

(assert (=> b!1654140 m!2006865))

(declare-fun m!2006957 () Bool)

(assert (=> b!1654140 m!2006957))

(assert (=> b!1654140 m!2006865))

(declare-fun m!2006959 () Bool)

(assert (=> b!1654140 m!2006959))

(assert (=> b!1654140 m!2006019))

(declare-fun m!2006961 () Bool)

(assert (=> b!1654150 m!2006961))

(declare-fun m!2006963 () Bool)

(assert (=> b!1654150 m!2006963))

(assert (=> b!1654150 m!2006871))

(assert (=> b!1654150 m!2006871))

(assert (=> b!1654150 m!2006879))

(declare-fun m!2006965 () Bool)

(assert (=> b!1654146 m!2006965))

(assert (=> b!1654146 m!2006019))

(assert (=> b!1654146 m!2006019))

(assert (=> b!1654146 m!2006865))

(assert (=> b!1654146 m!2006865))

(declare-fun m!2006967 () Bool)

(assert (=> b!1654146 m!2006967))

(assert (=> b!1654144 m!2006869))

(assert (=> b!1654144 m!2006871))

(assert (=> b!1654144 m!2006871))

(assert (=> b!1654144 m!2006879))

(assert (=> b!1654144 m!2006879))

(declare-fun m!2006969 () Bool)

(assert (=> b!1654144 m!2006969))

(assert (=> b!1654144 m!2006869))

(declare-fun m!2006971 () Bool)

(assert (=> b!1654144 m!2006971))

(assert (=> b!1654138 m!2006869))

(assert (=> b!1654138 m!2006869))

(assert (=> b!1654138 m!2006971))

(assert (=> b!1654145 m!2006019))

(assert (=> b!1654145 m!2006865))

(assert (=> b!1654145 m!2006871))

(assert (=> b!1654145 m!2006871))

(assert (=> b!1654145 m!2006879))

(declare-fun m!2006973 () Bool)

(assert (=> b!1654145 m!2006973))

(declare-fun m!2006975 () Bool)

(assert (=> b!1654145 m!2006975))

(assert (=> b!1654145 m!2006019))

(declare-fun m!2006977 () Bool)

(assert (=> b!1654143 m!2006977))

(declare-fun m!2006979 () Bool)

(assert (=> b!1654149 m!2006979))

(declare-fun m!2006981 () Bool)

(assert (=> b!1654149 m!2006981))

(assert (=> b!1653715 d!498908))

(declare-fun b!1654151 () Bool)

(declare-fun res!741634 () Bool)

(declare-fun e!1060696 () Bool)

(assert (=> b!1654151 (=> (not res!741634) (not e!1060696))))

(declare-fun lt!616077 () Option!3477)

(assert (=> b!1654151 (= res!741634 (= (value!101414 (_1!10375 (get!5321 lt!616077))) (apply!4831 (transformation!3219 (rule!5085 (_1!10375 (get!5321 lt!616077)))) (seqFromList!2177 (originalCharacters!4033 (_1!10375 (get!5321 lt!616077)))))))))

(declare-fun b!1654152 () Bool)

(declare-fun res!741631 () Bool)

(assert (=> b!1654152 (=> (not res!741631) (not e!1060696))))

(assert (=> b!1654152 (= res!741631 (matchR!2040 (regex!3219 (rule!5085 (_1!10375 (get!5321 lt!616077)))) (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!616077))))))))

(declare-fun b!1654153 () Bool)

(declare-fun res!741629 () Bool)

(assert (=> b!1654153 (=> (not res!741629) (not e!1060696))))

(assert (=> b!1654153 (= res!741629 (= (++!4945 (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!616077)))) (_2!10375 (get!5321 lt!616077))) (originalCharacters!4033 (h!23656 tokens!457))))))

(declare-fun bm!106068 () Bool)

(declare-fun call!106073 () Option!3477)

(assert (=> bm!106068 (= call!106073 (maxPrefixOneRule!814 thiss!17113 (h!23657 rules!1846) (originalCharacters!4033 (h!23656 tokens!457))))))

(declare-fun b!1654154 () Bool)

(declare-fun e!1060698 () Option!3477)

(declare-fun lt!616075 () Option!3477)

(declare-fun lt!616076 () Option!3477)

(assert (=> b!1654154 (= e!1060698 (ite (and ((_ is None!3476) lt!616075) ((_ is None!3476) lt!616076)) None!3476 (ite ((_ is None!3476) lt!616076) lt!616075 (ite ((_ is None!3476) lt!616075) lt!616076 (ite (>= (size!14528 (_1!10375 (v!24661 lt!616075))) (size!14528 (_1!10375 (v!24661 lt!616076)))) lt!616075 lt!616076)))))))

(assert (=> b!1654154 (= lt!616075 call!106073)))

(assert (=> b!1654154 (= lt!616076 (maxPrefix!1410 thiss!17113 (t!151121 rules!1846) (originalCharacters!4033 (h!23656 tokens!457))))))

(declare-fun d!498990 () Bool)

(declare-fun e!1060697 () Bool)

(assert (=> d!498990 e!1060697))

(declare-fun res!741633 () Bool)

(assert (=> d!498990 (=> res!741633 e!1060697)))

(assert (=> d!498990 (= res!741633 (isEmpty!11292 lt!616077))))

(assert (=> d!498990 (= lt!616077 e!1060698)))

(declare-fun c!269087 () Bool)

(assert (=> d!498990 (= c!269087 (and ((_ is Cons!18256) rules!1846) ((_ is Nil!18256) (t!151121 rules!1846))))))

(declare-fun lt!616074 () Unit!30517)

(declare-fun lt!616078 () Unit!30517)

(assert (=> d!498990 (= lt!616074 lt!616078)))

(assert (=> d!498990 (isPrefix!1477 (originalCharacters!4033 (h!23656 tokens!457)) (originalCharacters!4033 (h!23656 tokens!457)))))

(assert (=> d!498990 (= lt!616078 (lemmaIsPrefixRefl!999 (originalCharacters!4033 (h!23656 tokens!457)) (originalCharacters!4033 (h!23656 tokens!457))))))

(assert (=> d!498990 (rulesValidInductive!1021 thiss!17113 rules!1846)))

(assert (=> d!498990 (= (maxPrefix!1410 thiss!17113 rules!1846 (originalCharacters!4033 (h!23656 tokens!457))) lt!616077)))

(declare-fun b!1654155 () Bool)

(assert (=> b!1654155 (= e!1060696 (contains!3183 rules!1846 (rule!5085 (_1!10375 (get!5321 lt!616077)))))))

(declare-fun b!1654156 () Bool)

(declare-fun res!741632 () Bool)

(assert (=> b!1654156 (=> (not res!741632) (not e!1060696))))

(assert (=> b!1654156 (= res!741632 (= (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!616077)))) (originalCharacters!4033 (_1!10375 (get!5321 lt!616077)))))))

(declare-fun b!1654157 () Bool)

(declare-fun res!741628 () Bool)

(assert (=> b!1654157 (=> (not res!741628) (not e!1060696))))

(assert (=> b!1654157 (= res!741628 (< (size!14529 (_2!10375 (get!5321 lt!616077))) (size!14529 (originalCharacters!4033 (h!23656 tokens!457)))))))

(declare-fun b!1654158 () Bool)

(assert (=> b!1654158 (= e!1060697 e!1060696)))

(declare-fun res!741630 () Bool)

(assert (=> b!1654158 (=> (not res!741630) (not e!1060696))))

(assert (=> b!1654158 (= res!741630 (isDefined!2832 lt!616077))))

(declare-fun b!1654159 () Bool)

(assert (=> b!1654159 (= e!1060698 call!106073)))

(assert (= (and d!498990 c!269087) b!1654159))

(assert (= (and d!498990 (not c!269087)) b!1654154))

(assert (= (or b!1654159 b!1654154) bm!106068))

(assert (= (and d!498990 (not res!741633)) b!1654158))

(assert (= (and b!1654158 res!741630) b!1654156))

(assert (= (and b!1654156 res!741632) b!1654157))

(assert (= (and b!1654157 res!741628) b!1654153))

(assert (= (and b!1654153 res!741629) b!1654151))

(assert (= (and b!1654151 res!741634) b!1654152))

(assert (= (and b!1654152 res!741631) b!1654155))

(declare-fun m!2006983 () Bool)

(assert (=> b!1654151 m!2006983))

(declare-fun m!2006985 () Bool)

(assert (=> b!1654151 m!2006985))

(assert (=> b!1654151 m!2006985))

(declare-fun m!2006987 () Bool)

(assert (=> b!1654151 m!2006987))

(assert (=> b!1654155 m!2006983))

(declare-fun m!2006989 () Bool)

(assert (=> b!1654155 m!2006989))

(declare-fun m!2006991 () Bool)

(assert (=> b!1654158 m!2006991))

(assert (=> b!1654152 m!2006983))

(declare-fun m!2006993 () Bool)

(assert (=> b!1654152 m!2006993))

(assert (=> b!1654152 m!2006993))

(declare-fun m!2006995 () Bool)

(assert (=> b!1654152 m!2006995))

(assert (=> b!1654152 m!2006995))

(declare-fun m!2006997 () Bool)

(assert (=> b!1654152 m!2006997))

(declare-fun m!2006999 () Bool)

(assert (=> b!1654154 m!2006999))

(assert (=> b!1654156 m!2006983))

(assert (=> b!1654156 m!2006993))

(assert (=> b!1654156 m!2006993))

(assert (=> b!1654156 m!2006995))

(assert (=> b!1654157 m!2006983))

(declare-fun m!2007001 () Bool)

(assert (=> b!1654157 m!2007001))

(assert (=> b!1654157 m!2006051))

(assert (=> b!1654153 m!2006983))

(assert (=> b!1654153 m!2006993))

(assert (=> b!1654153 m!2006993))

(assert (=> b!1654153 m!2006995))

(assert (=> b!1654153 m!2006995))

(declare-fun m!2007003 () Bool)

(assert (=> b!1654153 m!2007003))

(declare-fun m!2007005 () Bool)

(assert (=> bm!106068 m!2007005))

(declare-fun m!2007007 () Bool)

(assert (=> d!498990 m!2007007))

(declare-fun m!2007009 () Bool)

(assert (=> d!498990 m!2007009))

(declare-fun m!2007011 () Bool)

(assert (=> d!498990 m!2007011))

(assert (=> d!498990 m!2006093))

(assert (=> b!1653695 d!498990))

(declare-fun d!498992 () Bool)

(assert (=> d!498992 (= (isDefined!2832 (maxPrefix!1410 thiss!17113 rules!1846 (originalCharacters!4033 (h!23656 tokens!457)))) (not (isEmpty!11292 (maxPrefix!1410 thiss!17113 rules!1846 (originalCharacters!4033 (h!23656 tokens!457))))))))

(declare-fun bs!396745 () Bool)

(assert (= bs!396745 d!498992))

(assert (=> bs!396745 m!2005917))

(declare-fun m!2007013 () Bool)

(assert (=> bs!396745 m!2007013))

(assert (=> b!1653695 d!498992))

(declare-fun d!498994 () Bool)

(declare-fun e!1060699 () Bool)

(assert (=> d!498994 e!1060699))

(declare-fun res!741635 () Bool)

(assert (=> d!498994 (=> (not res!741635) (not e!1060699))))

(declare-fun lt!616079 () List!18323)

(assert (=> d!498994 (= res!741635 (= (content!2538 lt!616079) ((_ map or) (content!2538 (originalCharacters!4033 (h!23656 tokens!457))) (content!2538 lt!615443))))))

(declare-fun e!1060700 () List!18323)

(assert (=> d!498994 (= lt!616079 e!1060700)))

(declare-fun c!269088 () Bool)

(assert (=> d!498994 (= c!269088 ((_ is Nil!18253) (originalCharacters!4033 (h!23656 tokens!457))))))

(assert (=> d!498994 (= (++!4945 (originalCharacters!4033 (h!23656 tokens!457)) lt!615443) lt!616079)))

(declare-fun b!1654161 () Bool)

(assert (=> b!1654161 (= e!1060700 (Cons!18253 (h!23654 (originalCharacters!4033 (h!23656 tokens!457))) (++!4945 (t!151118 (originalCharacters!4033 (h!23656 tokens!457))) lt!615443)))))

(declare-fun b!1654160 () Bool)

(assert (=> b!1654160 (= e!1060700 lt!615443)))

(declare-fun b!1654162 () Bool)

(declare-fun res!741636 () Bool)

(assert (=> b!1654162 (=> (not res!741636) (not e!1060699))))

(assert (=> b!1654162 (= res!741636 (= (size!14529 lt!616079) (+ (size!14529 (originalCharacters!4033 (h!23656 tokens!457))) (size!14529 lt!615443))))))

(declare-fun b!1654163 () Bool)

(assert (=> b!1654163 (= e!1060699 (or (not (= lt!615443 Nil!18253)) (= lt!616079 (originalCharacters!4033 (h!23656 tokens!457)))))))

(assert (= (and d!498994 c!269088) b!1654160))

(assert (= (and d!498994 (not c!269088)) b!1654161))

(assert (= (and d!498994 res!741635) b!1654162))

(assert (= (and b!1654162 res!741636) b!1654163))

(declare-fun m!2007015 () Bool)

(assert (=> d!498994 m!2007015))

(declare-fun m!2007017 () Bool)

(assert (=> d!498994 m!2007017))

(assert (=> d!498994 m!2006431))

(declare-fun m!2007019 () Bool)

(assert (=> b!1654161 m!2007019))

(declare-fun m!2007021 () Bool)

(assert (=> b!1654162 m!2007021))

(assert (=> b!1654162 m!2006051))

(assert (=> b!1654162 m!2006437))

(assert (=> b!1653695 d!498994))

(declare-fun d!498996 () Bool)

(declare-fun c!269089 () Bool)

(assert (=> d!498996 (= c!269089 (isEmpty!11289 (++!4945 (originalCharacters!4033 (h!23656 tokens!457)) lt!615443)))))

(declare-fun e!1060701 () Bool)

(assert (=> d!498996 (= (prefixMatch!464 lt!615426 (++!4945 (originalCharacters!4033 (h!23656 tokens!457)) lt!615443)) e!1060701)))

(declare-fun b!1654164 () Bool)

(assert (=> b!1654164 (= e!1060701 (not (lostCause!463 lt!615426)))))

(declare-fun b!1654165 () Bool)

(assert (=> b!1654165 (= e!1060701 (prefixMatch!464 (derivativeStep!1113 lt!615426 (head!3657 (++!4945 (originalCharacters!4033 (h!23656 tokens!457)) lt!615443))) (tail!2452 (++!4945 (originalCharacters!4033 (h!23656 tokens!457)) lt!615443))))))

(assert (= (and d!498996 c!269089) b!1654164))

(assert (= (and d!498996 (not c!269089)) b!1654165))

(assert (=> d!498996 m!2005925))

(declare-fun m!2007023 () Bool)

(assert (=> d!498996 m!2007023))

(assert (=> b!1654164 m!2006419))

(assert (=> b!1654165 m!2005925))

(declare-fun m!2007025 () Bool)

(assert (=> b!1654165 m!2007025))

(assert (=> b!1654165 m!2007025))

(declare-fun m!2007027 () Bool)

(assert (=> b!1654165 m!2007027))

(assert (=> b!1654165 m!2005925))

(declare-fun m!2007029 () Bool)

(assert (=> b!1654165 m!2007029))

(assert (=> b!1654165 m!2007027))

(assert (=> b!1654165 m!2007029))

(declare-fun m!2007031 () Bool)

(assert (=> b!1654165 m!2007031))

(assert (=> b!1653695 d!498996))

(declare-fun d!498998 () Bool)

(assert (=> d!498998 (= (get!5321 lt!615429) (v!24661 lt!615429))))

(assert (=> b!1653695 d!498998))

(declare-fun d!499000 () Bool)

(assert (=> d!499000 (= (isDefined!2832 lt!615429) (not (isEmpty!11292 lt!615429)))))

(declare-fun bs!396746 () Bool)

(assert (= bs!396746 d!499000))

(declare-fun m!2007033 () Bool)

(assert (=> bs!396746 m!2007033))

(assert (=> b!1653695 d!499000))

(declare-fun b!1654166 () Bool)

(declare-fun res!741643 () Bool)

(declare-fun e!1060702 () Bool)

(assert (=> b!1654166 (=> (not res!741643) (not e!1060702))))

(declare-fun lt!616083 () Option!3477)

(assert (=> b!1654166 (= res!741643 (= (value!101414 (_1!10375 (get!5321 lt!616083))) (apply!4831 (transformation!3219 (rule!5085 (_1!10375 (get!5321 lt!616083)))) (seqFromList!2177 (originalCharacters!4033 (_1!10375 (get!5321 lt!616083)))))))))

(declare-fun b!1654167 () Bool)

(declare-fun res!741640 () Bool)

(assert (=> b!1654167 (=> (not res!741640) (not e!1060702))))

(assert (=> b!1654167 (= res!741640 (matchR!2040 (regex!3219 (rule!5085 (_1!10375 (get!5321 lt!616083)))) (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!616083))))))))

(declare-fun b!1654168 () Bool)

(declare-fun res!741638 () Bool)

(assert (=> b!1654168 (=> (not res!741638) (not e!1060702))))

(assert (=> b!1654168 (= res!741638 (= (++!4945 (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!616083)))) (_2!10375 (get!5321 lt!616083))) lt!615428))))

(declare-fun bm!106069 () Bool)

(declare-fun call!106074 () Option!3477)

(assert (=> bm!106069 (= call!106074 (maxPrefixOneRule!814 thiss!17113 (h!23657 rules!1846) lt!615428))))

(declare-fun b!1654169 () Bool)

(declare-fun e!1060704 () Option!3477)

(declare-fun lt!616081 () Option!3477)

(declare-fun lt!616082 () Option!3477)

(assert (=> b!1654169 (= e!1060704 (ite (and ((_ is None!3476) lt!616081) ((_ is None!3476) lt!616082)) None!3476 (ite ((_ is None!3476) lt!616082) lt!616081 (ite ((_ is None!3476) lt!616081) lt!616082 (ite (>= (size!14528 (_1!10375 (v!24661 lt!616081))) (size!14528 (_1!10375 (v!24661 lt!616082)))) lt!616081 lt!616082)))))))

(assert (=> b!1654169 (= lt!616081 call!106074)))

(assert (=> b!1654169 (= lt!616082 (maxPrefix!1410 thiss!17113 (t!151121 rules!1846) lt!615428))))

(declare-fun d!499002 () Bool)

(declare-fun e!1060703 () Bool)

(assert (=> d!499002 e!1060703))

(declare-fun res!741642 () Bool)

(assert (=> d!499002 (=> res!741642 e!1060703)))

(assert (=> d!499002 (= res!741642 (isEmpty!11292 lt!616083))))

(assert (=> d!499002 (= lt!616083 e!1060704)))

(declare-fun c!269090 () Bool)

(assert (=> d!499002 (= c!269090 (and ((_ is Cons!18256) rules!1846) ((_ is Nil!18256) (t!151121 rules!1846))))))

(declare-fun lt!616080 () Unit!30517)

(declare-fun lt!616084 () Unit!30517)

(assert (=> d!499002 (= lt!616080 lt!616084)))

(assert (=> d!499002 (isPrefix!1477 lt!615428 lt!615428)))

(assert (=> d!499002 (= lt!616084 (lemmaIsPrefixRefl!999 lt!615428 lt!615428))))

(assert (=> d!499002 (rulesValidInductive!1021 thiss!17113 rules!1846)))

(assert (=> d!499002 (= (maxPrefix!1410 thiss!17113 rules!1846 lt!615428) lt!616083)))

(declare-fun b!1654170 () Bool)

(assert (=> b!1654170 (= e!1060702 (contains!3183 rules!1846 (rule!5085 (_1!10375 (get!5321 lt!616083)))))))

(declare-fun b!1654171 () Bool)

(declare-fun res!741641 () Bool)

(assert (=> b!1654171 (=> (not res!741641) (not e!1060702))))

(assert (=> b!1654171 (= res!741641 (= (list!7270 (charsOf!1868 (_1!10375 (get!5321 lt!616083)))) (originalCharacters!4033 (_1!10375 (get!5321 lt!616083)))))))

(declare-fun b!1654172 () Bool)

(declare-fun res!741637 () Bool)

(assert (=> b!1654172 (=> (not res!741637) (not e!1060702))))

(assert (=> b!1654172 (= res!741637 (< (size!14529 (_2!10375 (get!5321 lt!616083))) (size!14529 lt!615428)))))

(declare-fun b!1654173 () Bool)

(assert (=> b!1654173 (= e!1060703 e!1060702)))

(declare-fun res!741639 () Bool)

(assert (=> b!1654173 (=> (not res!741639) (not e!1060702))))

(assert (=> b!1654173 (= res!741639 (isDefined!2832 lt!616083))))

(declare-fun b!1654174 () Bool)

(assert (=> b!1654174 (= e!1060704 call!106074)))

(assert (= (and d!499002 c!269090) b!1654174))

(assert (= (and d!499002 (not c!269090)) b!1654169))

(assert (= (or b!1654174 b!1654169) bm!106069))

(assert (= (and d!499002 (not res!741642)) b!1654173))

(assert (= (and b!1654173 res!741639) b!1654171))

(assert (= (and b!1654171 res!741641) b!1654172))

(assert (= (and b!1654172 res!741637) b!1654168))

(assert (= (and b!1654168 res!741638) b!1654166))

(assert (= (and b!1654166 res!741643) b!1654167))

(assert (= (and b!1654167 res!741640) b!1654170))

(declare-fun m!2007035 () Bool)

(assert (=> b!1654166 m!2007035))

(declare-fun m!2007037 () Bool)

(assert (=> b!1654166 m!2007037))

(assert (=> b!1654166 m!2007037))

(declare-fun m!2007039 () Bool)

(assert (=> b!1654166 m!2007039))

(assert (=> b!1654170 m!2007035))

(declare-fun m!2007041 () Bool)

(assert (=> b!1654170 m!2007041))

(declare-fun m!2007043 () Bool)

(assert (=> b!1654173 m!2007043))

(assert (=> b!1654167 m!2007035))

(declare-fun m!2007045 () Bool)

(assert (=> b!1654167 m!2007045))

(assert (=> b!1654167 m!2007045))

(declare-fun m!2007047 () Bool)

(assert (=> b!1654167 m!2007047))

(assert (=> b!1654167 m!2007047))

(declare-fun m!2007049 () Bool)

(assert (=> b!1654167 m!2007049))

(declare-fun m!2007051 () Bool)

(assert (=> b!1654169 m!2007051))

(assert (=> b!1654171 m!2007035))

(assert (=> b!1654171 m!2007045))

(assert (=> b!1654171 m!2007045))

(assert (=> b!1654171 m!2007047))

(assert (=> b!1654172 m!2007035))

(declare-fun m!2007053 () Bool)

(assert (=> b!1654172 m!2007053))

(assert (=> b!1654172 m!2006221))

(assert (=> b!1654168 m!2007035))

(assert (=> b!1654168 m!2007045))

(assert (=> b!1654168 m!2007045))

(assert (=> b!1654168 m!2007047))

(assert (=> b!1654168 m!2007047))

(declare-fun m!2007055 () Bool)

(assert (=> b!1654168 m!2007055))

(declare-fun m!2007057 () Bool)

(assert (=> bm!106069 m!2007057))

(declare-fun m!2007059 () Bool)

(assert (=> d!499002 m!2007059))

(declare-fun m!2007061 () Bool)

(assert (=> d!499002 m!2007061))

(declare-fun m!2007063 () Bool)

(assert (=> d!499002 m!2007063))

(assert (=> d!499002 m!2006093))

(assert (=> b!1653695 d!499002))

(declare-fun d!499004 () Bool)

(assert (=> d!499004 (= (inv!23608 (tag!3501 (rule!5085 (h!23656 tokens!457)))) (= (mod (str.len (value!101413 (tag!3501 (rule!5085 (h!23656 tokens!457))))) 2) 0))))

(assert (=> b!1653716 d!499004))

(declare-fun d!499006 () Bool)

(declare-fun res!741644 () Bool)

(declare-fun e!1060705 () Bool)

(assert (=> d!499006 (=> (not res!741644) (not e!1060705))))

(assert (=> d!499006 (= res!741644 (semiInverseModEq!1245 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (toValue!4670 (transformation!3219 (rule!5085 (h!23656 tokens!457))))))))

(assert (=> d!499006 (= (inv!23611 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) e!1060705)))

(declare-fun b!1654175 () Bool)

(assert (=> b!1654175 (= e!1060705 (equivClasses!1186 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (toValue!4670 (transformation!3219 (rule!5085 (h!23656 tokens!457))))))))

(assert (= (and d!499006 res!741644) b!1654175))

(declare-fun m!2007065 () Bool)

(assert (=> d!499006 m!2007065))

(declare-fun m!2007067 () Bool)

(assert (=> b!1654175 m!2007067))

(assert (=> b!1653716 d!499006))

(declare-fun d!499008 () Bool)

(declare-fun isEmpty!11297 (Option!3478) Bool)

(assert (=> d!499008 (= (isDefined!2833 (maxPrefixZipperSequence!725 thiss!17113 rules!1846 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457))))) (not (isEmpty!11297 (maxPrefixZipperSequence!725 thiss!17113 rules!1846 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))))

(declare-fun bs!396747 () Bool)

(assert (= bs!396747 d!499008))

(assert (=> bs!396747 m!2005985))

(declare-fun m!2007069 () Bool)

(assert (=> bs!396747 m!2007069))

(assert (=> b!1653696 d!499008))

(declare-fun call!106077 () Option!3478)

(declare-fun bm!106072 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!339 (LexerInterface!2848 Rule!6238 BalanceConc!12116) Option!3478)

(assert (=> bm!106072 (= call!106077 (maxPrefixOneRuleZipperSequence!339 thiss!17113 (h!23657 rules!1846) (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))

(declare-fun e!1060721 () Bool)

(declare-fun b!1654192 () Bool)

(declare-fun lt!616105 () Option!3478)

(declare-fun get!5324 (Option!3478) tuple2!17948)

(declare-fun maxPrefixZipper!345 (LexerInterface!2848 List!18326 List!18323) Option!3477)

(assert (=> b!1654192 (= e!1060721 (= (list!7270 (_2!10376 (get!5324 lt!616105))) (_2!10375 (get!5321 (maxPrefixZipper!345 thiss!17113 rules!1846 (list!7270 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))))))

(declare-fun b!1654193 () Bool)

(declare-fun e!1060719 () Bool)

(assert (=> b!1654193 (= e!1060719 e!1060721)))

(declare-fun res!741658 () Bool)

(assert (=> b!1654193 (=> (not res!741658) (not e!1060721))))

(assert (=> b!1654193 (= res!741658 (= (_1!10376 (get!5324 lt!616105)) (_1!10375 (get!5321 (maxPrefixZipper!345 thiss!17113 rules!1846 (list!7270 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))))))

(declare-fun b!1654195 () Bool)

(declare-fun e!1060722 () Bool)

(declare-fun e!1060723 () Bool)

(assert (=> b!1654195 (= e!1060722 e!1060723)))

(declare-fun res!741662 () Bool)

(assert (=> b!1654195 (=> (not res!741662) (not e!1060723))))

(assert (=> b!1654195 (= res!741662 (= (_1!10376 (get!5324 lt!616105)) (_1!10375 (get!5321 (maxPrefix!1410 thiss!17113 rules!1846 (list!7270 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))))))

(declare-fun b!1654196 () Bool)

(declare-fun e!1060718 () Bool)

(assert (=> b!1654196 (= e!1060718 e!1060722)))

(declare-fun res!741659 () Bool)

(assert (=> b!1654196 (=> res!741659 e!1060722)))

(assert (=> b!1654196 (= res!741659 (not (isDefined!2833 lt!616105)))))

(declare-fun b!1654197 () Bool)

(declare-fun res!741660 () Bool)

(assert (=> b!1654197 (=> (not res!741660) (not e!1060718))))

(assert (=> b!1654197 (= res!741660 e!1060719)))

(declare-fun res!741657 () Bool)

(assert (=> b!1654197 (=> res!741657 e!1060719)))

(assert (=> b!1654197 (= res!741657 (not (isDefined!2833 lt!616105)))))

(declare-fun b!1654198 () Bool)

(declare-fun e!1060720 () Option!3478)

(assert (=> b!1654198 (= e!1060720 call!106077)))

(declare-fun b!1654199 () Bool)

(declare-fun lt!616102 () Option!3478)

(declare-fun lt!616104 () Option!3478)

(assert (=> b!1654199 (= e!1060720 (ite (and ((_ is None!3477) lt!616102) ((_ is None!3477) lt!616104)) None!3477 (ite ((_ is None!3477) lt!616104) lt!616102 (ite ((_ is None!3477) lt!616102) lt!616104 (ite (>= (size!14528 (_1!10376 (v!24662 lt!616102))) (size!14528 (_1!10376 (v!24662 lt!616104)))) lt!616102 lt!616104)))))))

(assert (=> b!1654199 (= lt!616102 call!106077)))

(assert (=> b!1654199 (= lt!616104 (maxPrefixZipperSequence!725 thiss!17113 (t!151121 rules!1846) (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))

(declare-fun b!1654194 () Bool)

(assert (=> b!1654194 (= e!1060723 (= (list!7270 (_2!10376 (get!5324 lt!616105))) (_2!10375 (get!5321 (maxPrefix!1410 thiss!17113 rules!1846 (list!7270 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))))))

(declare-fun d!499010 () Bool)

(assert (=> d!499010 e!1060718))

(declare-fun res!741661 () Bool)

(assert (=> d!499010 (=> (not res!741661) (not e!1060718))))

(assert (=> d!499010 (= res!741661 (= (isDefined!2833 lt!616105) (isDefined!2832 (maxPrefixZipper!345 thiss!17113 rules!1846 (list!7270 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457))))))))))

(assert (=> d!499010 (= lt!616105 e!1060720)))

(declare-fun c!269093 () Bool)

(assert (=> d!499010 (= c!269093 (and ((_ is Cons!18256) rules!1846) ((_ is Nil!18256) (t!151121 rules!1846))))))

(declare-fun lt!616101 () Unit!30517)

(declare-fun lt!616099 () Unit!30517)

(assert (=> d!499010 (= lt!616101 lt!616099)))

(declare-fun lt!616103 () List!18323)

(declare-fun lt!616100 () List!18323)

(assert (=> d!499010 (isPrefix!1477 lt!616103 lt!616100)))

(assert (=> d!499010 (= lt!616099 (lemmaIsPrefixRefl!999 lt!616103 lt!616100))))

(assert (=> d!499010 (= lt!616100 (list!7270 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))

(assert (=> d!499010 (= lt!616103 (list!7270 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))))))

(assert (=> d!499010 (rulesValidInductive!1021 thiss!17113 rules!1846)))

(assert (=> d!499010 (= (maxPrefixZipperSequence!725 thiss!17113 rules!1846 (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457)))) lt!616105)))

(assert (= (and d!499010 c!269093) b!1654198))

(assert (= (and d!499010 (not c!269093)) b!1654199))

(assert (= (or b!1654198 b!1654199) bm!106072))

(assert (= (and d!499010 res!741661) b!1654197))

(assert (= (and b!1654197 (not res!741657)) b!1654193))

(assert (= (and b!1654193 res!741658) b!1654192))

(assert (= (and b!1654197 res!741660) b!1654196))

(assert (= (and b!1654196 (not res!741659)) b!1654195))

(assert (= (and b!1654195 res!741662) b!1654194))

(declare-fun m!2007071 () Bool)

(assert (=> b!1654193 m!2007071))

(assert (=> b!1654193 m!2005983))

(declare-fun m!2007073 () Bool)

(assert (=> b!1654193 m!2007073))

(assert (=> b!1654193 m!2007073))

(declare-fun m!2007075 () Bool)

(assert (=> b!1654193 m!2007075))

(assert (=> b!1654193 m!2007075))

(declare-fun m!2007077 () Bool)

(assert (=> b!1654193 m!2007077))

(assert (=> d!499010 m!2005983))

(assert (=> d!499010 m!2007073))

(declare-fun m!2007079 () Bool)

(assert (=> d!499010 m!2007079))

(declare-fun m!2007081 () Bool)

(assert (=> d!499010 m!2007081))

(assert (=> d!499010 m!2007073))

(assert (=> d!499010 m!2007075))

(assert (=> d!499010 m!2007075))

(declare-fun m!2007083 () Bool)

(assert (=> d!499010 m!2007083))

(assert (=> d!499010 m!2006093))

(declare-fun m!2007085 () Bool)

(assert (=> d!499010 m!2007085))

(assert (=> b!1654197 m!2007081))

(assert (=> bm!106072 m!2005983))

(declare-fun m!2007087 () Bool)

(assert (=> bm!106072 m!2007087))

(declare-fun m!2007089 () Bool)

(assert (=> b!1654192 m!2007089))

(assert (=> b!1654192 m!2005983))

(assert (=> b!1654192 m!2007073))

(assert (=> b!1654192 m!2007073))

(assert (=> b!1654192 m!2007075))

(assert (=> b!1654192 m!2007071))

(assert (=> b!1654192 m!2007075))

(assert (=> b!1654192 m!2007077))

(assert (=> b!1654195 m!2007071))

(assert (=> b!1654195 m!2005983))

(assert (=> b!1654195 m!2007073))

(assert (=> b!1654195 m!2007073))

(declare-fun m!2007091 () Bool)

(assert (=> b!1654195 m!2007091))

(assert (=> b!1654195 m!2007091))

(declare-fun m!2007093 () Bool)

(assert (=> b!1654195 m!2007093))

(assert (=> b!1654199 m!2005983))

(declare-fun m!2007095 () Bool)

(assert (=> b!1654199 m!2007095))

(assert (=> b!1654194 m!2007089))

(assert (=> b!1654194 m!2005983))

(assert (=> b!1654194 m!2007073))

(assert (=> b!1654194 m!2007073))

(assert (=> b!1654194 m!2007091))

(assert (=> b!1654194 m!2007091))

(assert (=> b!1654194 m!2007093))

(assert (=> b!1654194 m!2007071))

(assert (=> b!1654196 m!2007081))

(assert (=> b!1653696 d!499010))

(declare-fun d!499012 () Bool)

(declare-fun fromListB!975 (List!18323) BalanceConc!12116)

(assert (=> d!499012 (= (seqFromList!2177 (originalCharacters!4033 (h!23656 tokens!457))) (fromListB!975 (originalCharacters!4033 (h!23656 tokens!457))))))

(declare-fun bs!396748 () Bool)

(assert (= bs!396748 d!499012))

(declare-fun m!2007097 () Bool)

(assert (=> bs!396748 m!2007097))

(assert (=> b!1653696 d!499012))

(declare-fun d!499014 () Bool)

(declare-fun lt!616108 () C!9268)

(assert (=> d!499014 (= lt!616108 (head!3657 (list!7270 lt!615446)))))

(declare-fun head!3660 (Conc!6086) C!9268)

(assert (=> d!499014 (= lt!616108 (head!3660 (c!268993 lt!615446)))))

(declare-fun isEmpty!11298 (BalanceConc!12116) Bool)

(assert (=> d!499014 (not (isEmpty!11298 lt!615446))))

(assert (=> d!499014 (= (head!3656 lt!615446) lt!616108)))

(declare-fun bs!396749 () Bool)

(assert (= bs!396749 d!499014))

(assert (=> bs!396749 m!2006031))

(assert (=> bs!396749 m!2006031))

(declare-fun m!2007099 () Bool)

(assert (=> bs!396749 m!2007099))

(declare-fun m!2007101 () Bool)

(assert (=> bs!396749 m!2007101))

(declare-fun m!2007103 () Bool)

(assert (=> bs!396749 m!2007103))

(assert (=> b!1653696 d!499014))

(declare-fun b!1654228 () Bool)

(declare-fun res!741685 () Bool)

(declare-fun e!1060741 () Bool)

(assert (=> b!1654228 (=> res!741685 e!1060741)))

(assert (=> b!1654228 (= res!741685 (not (isEmpty!11289 (tail!2452 lt!615428))))))

(declare-fun b!1654229 () Bool)

(declare-fun e!1060744 () Bool)

(declare-fun lt!616111 () Bool)

(declare-fun call!106080 () Bool)

(assert (=> b!1654229 (= e!1060744 (= lt!616111 call!106080))))

(declare-fun b!1654230 () Bool)

(declare-fun res!741679 () Bool)

(declare-fun e!1060739 () Bool)

(assert (=> b!1654230 (=> (not res!741679) (not e!1060739))))

(assert (=> b!1654230 (= res!741679 (not call!106080))))

(declare-fun b!1654232 () Bool)

(declare-fun res!741682 () Bool)

(declare-fun e!1060738 () Bool)

(assert (=> b!1654232 (=> res!741682 e!1060738)))

(assert (=> b!1654232 (= res!741682 e!1060739)))

(declare-fun res!741683 () Bool)

(assert (=> b!1654232 (=> (not res!741683) (not e!1060739))))

(assert (=> b!1654232 (= res!741683 lt!616111)))

(declare-fun b!1654233 () Bool)

(declare-fun e!1060740 () Bool)

(assert (=> b!1654233 (= e!1060738 e!1060740)))

(declare-fun res!741684 () Bool)

(assert (=> b!1654233 (=> (not res!741684) (not e!1060740))))

(assert (=> b!1654233 (= res!741684 (not lt!616111))))

(declare-fun b!1654234 () Bool)

(assert (=> b!1654234 (= e!1060739 (= (head!3657 lt!615428) (c!268994 (regex!3219 (rule!5085 (h!23656 tokens!457))))))))

(declare-fun b!1654235 () Bool)

(declare-fun e!1060743 () Bool)

(declare-fun nullable!1346 (Regex!4547) Bool)

(assert (=> b!1654235 (= e!1060743 (nullable!1346 (regex!3219 (rule!5085 (h!23656 tokens!457)))))))

(declare-fun b!1654236 () Bool)

(declare-fun res!741681 () Bool)

(assert (=> b!1654236 (=> res!741681 e!1060738)))

(assert (=> b!1654236 (= res!741681 (not ((_ is ElementMatch!4547) (regex!3219 (rule!5085 (h!23656 tokens!457))))))))

(declare-fun e!1060742 () Bool)

(assert (=> b!1654236 (= e!1060742 e!1060738)))

(declare-fun bm!106075 () Bool)

(assert (=> bm!106075 (= call!106080 (isEmpty!11289 lt!615428))))

(declare-fun b!1654237 () Bool)

(assert (=> b!1654237 (= e!1060741 (not (= (head!3657 lt!615428) (c!268994 (regex!3219 (rule!5085 (h!23656 tokens!457)))))))))

(declare-fun b!1654238 () Bool)

(assert (=> b!1654238 (= e!1060744 e!1060742)))

(declare-fun c!269102 () Bool)

(assert (=> b!1654238 (= c!269102 ((_ is EmptyLang!4547) (regex!3219 (rule!5085 (h!23656 tokens!457)))))))

(declare-fun d!499016 () Bool)

(assert (=> d!499016 e!1060744))

(declare-fun c!269100 () Bool)

(assert (=> d!499016 (= c!269100 ((_ is EmptyExpr!4547) (regex!3219 (rule!5085 (h!23656 tokens!457)))))))

(assert (=> d!499016 (= lt!616111 e!1060743)))

(declare-fun c!269101 () Bool)

(assert (=> d!499016 (= c!269101 (isEmpty!11289 lt!615428))))

(declare-fun validRegex!1811 (Regex!4547) Bool)

(assert (=> d!499016 (validRegex!1811 (regex!3219 (rule!5085 (h!23656 tokens!457))))))

(assert (=> d!499016 (= (matchR!2040 (regex!3219 (rule!5085 (h!23656 tokens!457))) lt!615428) lt!616111)))

(declare-fun b!1654231 () Bool)

(assert (=> b!1654231 (= e!1060742 (not lt!616111))))

(declare-fun b!1654239 () Bool)

(declare-fun res!741686 () Bool)

(assert (=> b!1654239 (=> (not res!741686) (not e!1060739))))

(assert (=> b!1654239 (= res!741686 (isEmpty!11289 (tail!2452 lt!615428)))))

(declare-fun b!1654240 () Bool)

(assert (=> b!1654240 (= e!1060740 e!1060741)))

(declare-fun res!741680 () Bool)

(assert (=> b!1654240 (=> res!741680 e!1060741)))

(assert (=> b!1654240 (= res!741680 call!106080)))

(declare-fun b!1654241 () Bool)

(assert (=> b!1654241 (= e!1060743 (matchR!2040 (derivativeStep!1113 (regex!3219 (rule!5085 (h!23656 tokens!457))) (head!3657 lt!615428)) (tail!2452 lt!615428)))))

(assert (= (and d!499016 c!269101) b!1654235))

(assert (= (and d!499016 (not c!269101)) b!1654241))

(assert (= (and d!499016 c!269100) b!1654229))

(assert (= (and d!499016 (not c!269100)) b!1654238))

(assert (= (and b!1654238 c!269102) b!1654231))

(assert (= (and b!1654238 (not c!269102)) b!1654236))

(assert (= (and b!1654236 (not res!741681)) b!1654232))

(assert (= (and b!1654232 res!741683) b!1654230))

(assert (= (and b!1654230 res!741679) b!1654239))

(assert (= (and b!1654239 res!741686) b!1654234))

(assert (= (and b!1654232 (not res!741682)) b!1654233))

(assert (= (and b!1654233 res!741684) b!1654240))

(assert (= (and b!1654240 (not res!741680)) b!1654228))

(assert (= (and b!1654228 (not res!741685)) b!1654237))

(assert (= (or b!1654229 b!1654230 b!1654240) bm!106075))

(declare-fun m!2007105 () Bool)

(assert (=> b!1654234 m!2007105))

(declare-fun m!2007107 () Bool)

(assert (=> bm!106075 m!2007107))

(declare-fun m!2007109 () Bool)

(assert (=> b!1654239 m!2007109))

(assert (=> b!1654239 m!2007109))

(declare-fun m!2007111 () Bool)

(assert (=> b!1654239 m!2007111))

(assert (=> b!1654241 m!2007105))

(assert (=> b!1654241 m!2007105))

(declare-fun m!2007113 () Bool)

(assert (=> b!1654241 m!2007113))

(assert (=> b!1654241 m!2007109))

(assert (=> b!1654241 m!2007113))

(assert (=> b!1654241 m!2007109))

(declare-fun m!2007115 () Bool)

(assert (=> b!1654241 m!2007115))

(assert (=> b!1654237 m!2007105))

(assert (=> b!1654228 m!2007109))

(assert (=> b!1654228 m!2007109))

(assert (=> b!1654228 m!2007111))

(assert (=> d!499016 m!2007107))

(declare-fun m!2007117 () Bool)

(assert (=> d!499016 m!2007117))

(declare-fun m!2007119 () Bool)

(assert (=> b!1654235 m!2007119))

(assert (=> b!1653717 d!499016))

(declare-fun d!499018 () Bool)

(declare-fun list!7274 (Conc!6087) List!18325)

(assert (=> d!499018 (= (list!7269 (_1!10377 lt!615445)) (list!7274 (c!268995 (_1!10377 lt!615445))))))

(declare-fun bs!396750 () Bool)

(assert (= bs!396750 d!499018))

(declare-fun m!2007121 () Bool)

(assert (=> bs!396750 m!2007121))

(assert (=> b!1653698 d!499018))

(declare-fun d!499020 () Bool)

(declare-fun e!1060750 () Bool)

(assert (=> d!499020 e!1060750))

(declare-fun res!741689 () Bool)

(assert (=> d!499020 (=> (not res!741689) (not e!1060750))))

(assert (=> d!499020 (= res!741689 (= (list!7269 (_1!10377 (lex!1332 thiss!17113 rules!1846 (print!1379 thiss!17113 (seqFromList!2178 (t!151120 tokens!457)))))) (t!151120 tokens!457)))))

(declare-fun lt!616168 () Unit!30517)

(declare-fun e!1060749 () Unit!30517)

(assert (=> d!499020 (= lt!616168 e!1060749)))

(declare-fun c!269105 () Bool)

(assert (=> d!499020 (= c!269105 (or ((_ is Nil!18255) (t!151120 tokens!457)) ((_ is Nil!18255) (t!151120 (t!151120 tokens!457)))))))

(assert (=> d!499020 (not (isEmpty!11291 rules!1846))))

(assert (=> d!499020 (= (theoremInvertabilityWhenTokenListSeparable!291 thiss!17113 rules!1846 (t!151120 tokens!457)) lt!616168)))

(declare-fun b!1654248 () Bool)

(declare-fun Unit!30550 () Unit!30517)

(assert (=> b!1654248 (= e!1060749 Unit!30550)))

(declare-fun b!1654249 () Bool)

(declare-fun Unit!30551 () Unit!30517)

(assert (=> b!1654249 (= e!1060749 Unit!30551)))

(declare-fun lt!616185 () BalanceConc!12116)

(assert (=> b!1654249 (= lt!616185 (print!1379 thiss!17113 (seqFromList!2178 (t!151120 tokens!457))))))

(declare-fun lt!616164 () BalanceConc!12116)

(assert (=> b!1654249 (= lt!616164 (print!1379 thiss!17113 (seqFromList!2178 (t!151120 (t!151120 tokens!457)))))))

(declare-fun lt!616189 () tuple2!17950)

(assert (=> b!1654249 (= lt!616189 (lex!1332 thiss!17113 rules!1846 lt!616164))))

(declare-fun lt!616171 () List!18323)

(assert (=> b!1654249 (= lt!616171 (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457)))))))

(declare-fun lt!616176 () List!18323)

(assert (=> b!1654249 (= lt!616176 (list!7270 lt!616164))))

(declare-fun lt!616177 () Unit!30517)

(assert (=> b!1654249 (= lt!616177 (lemmaConcatTwoListThenFirstIsPrefix!1002 lt!616171 lt!616176))))

(assert (=> b!1654249 (isPrefix!1477 lt!616171 (++!4945 lt!616171 lt!616176))))

(declare-fun lt!616186 () Unit!30517)

(assert (=> b!1654249 (= lt!616186 lt!616177)))

(declare-fun lt!616165 () Unit!30517)

(assert (=> b!1654249 (= lt!616165 (theoremInvertabilityWhenTokenListSeparable!291 thiss!17113 rules!1846 (t!151120 (t!151120 tokens!457))))))

(declare-fun lt!616169 () Unit!30517)

(assert (=> b!1654249 (= lt!616169 (seqFromListBHdTlConstructive!294 (h!23656 (t!151120 (t!151120 tokens!457))) (t!151120 (t!151120 (t!151120 tokens!457))) (_1!10377 lt!616189)))))

(assert (=> b!1654249 (= (list!7269 (_1!10377 lt!616189)) (list!7269 (prepend!787 (seqFromList!2178 (t!151120 (t!151120 (t!151120 tokens!457)))) (h!23656 (t!151120 (t!151120 tokens!457))))))))

(declare-fun lt!616172 () Unit!30517)

(assert (=> b!1654249 (= lt!616172 lt!616169)))

(declare-fun lt!616181 () Option!3477)

(assert (=> b!1654249 (= lt!616181 (maxPrefix!1410 thiss!17113 rules!1846 (list!7270 lt!616185)))))

(assert (=> b!1654249 (= (print!1379 thiss!17113 (singletonSeq!1710 (h!23656 (t!151120 tokens!457)))) (printTailRec!899 thiss!17113 (singletonSeq!1710 (h!23656 (t!151120 tokens!457))) 0 (BalanceConc!12117 Empty!6086)))))

(declare-fun lt!616180 () Unit!30517)

(declare-fun Unit!30552 () Unit!30517)

(assert (=> b!1654249 (= lt!616180 Unit!30552)))

(declare-fun lt!616175 () Unit!30517)

(assert (=> b!1654249 (= lt!616175 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!416 thiss!17113 rules!1846 (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457)))) (list!7270 lt!616164)))))

(assert (=> b!1654249 (= (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457)))) (originalCharacters!4033 (h!23656 (t!151120 tokens!457))))))

(declare-fun lt!616178 () Unit!30517)

(declare-fun Unit!30553 () Unit!30517)

(assert (=> b!1654249 (= lt!616178 Unit!30553)))

(assert (=> b!1654249 (= (list!7270 (singletonSeq!1711 (apply!4830 (charsOf!1868 (h!23656 (t!151120 (t!151120 tokens!457)))) 0))) (Cons!18253 (head!3657 (originalCharacters!4033 (h!23656 (t!151120 (t!151120 tokens!457))))) Nil!18253))))

(declare-fun lt!616182 () Unit!30517)

(declare-fun Unit!30554 () Unit!30517)

(assert (=> b!1654249 (= lt!616182 Unit!30554)))

(assert (=> b!1654249 (= (list!7270 (singletonSeq!1711 (apply!4830 (charsOf!1868 (h!23656 (t!151120 (t!151120 tokens!457)))) 0))) (Cons!18253 (head!3657 (list!7270 lt!616164)) Nil!18253))))

(declare-fun lt!616167 () Unit!30517)

(declare-fun Unit!30555 () Unit!30517)

(assert (=> b!1654249 (= lt!616167 Unit!30555)))

(assert (=> b!1654249 (= (list!7270 (singletonSeq!1711 (apply!4830 (charsOf!1868 (h!23656 (t!151120 (t!151120 tokens!457)))) 0))) (Cons!18253 (head!3656 lt!616164) Nil!18253))))

(declare-fun lt!616170 () Unit!30517)

(declare-fun Unit!30556 () Unit!30517)

(assert (=> b!1654249 (= lt!616170 Unit!30556)))

(assert (=> b!1654249 (isDefined!2832 (maxPrefix!1410 thiss!17113 rules!1846 (originalCharacters!4033 (h!23656 (t!151120 tokens!457)))))))

(declare-fun lt!616187 () Unit!30517)

(declare-fun Unit!30557 () Unit!30517)

(assert (=> b!1654249 (= lt!616187 Unit!30557)))

(assert (=> b!1654249 (isDefined!2832 (maxPrefix!1410 thiss!17113 rules!1846 (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457))))))))

(declare-fun lt!616166 () Unit!30517)

(declare-fun Unit!30558 () Unit!30517)

(assert (=> b!1654249 (= lt!616166 Unit!30558)))

(declare-fun lt!616188 () Unit!30517)

(declare-fun Unit!30559 () Unit!30517)

(assert (=> b!1654249 (= lt!616188 Unit!30559)))

(assert (=> b!1654249 (= (_1!10375 (get!5321 (maxPrefix!1410 thiss!17113 rules!1846 (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457))))))) (h!23656 (t!151120 tokens!457)))))

(declare-fun lt!616183 () Unit!30517)

(declare-fun Unit!30560 () Unit!30517)

(assert (=> b!1654249 (= lt!616183 Unit!30560)))

(assert (=> b!1654249 (isEmpty!11289 (_2!10375 (get!5321 (maxPrefix!1410 thiss!17113 rules!1846 (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457))))))))))

(declare-fun lt!616184 () Unit!30517)

(declare-fun Unit!30561 () Unit!30517)

(assert (=> b!1654249 (= lt!616184 Unit!30561)))

(assert (=> b!1654249 (matchR!2040 (regex!3219 (rule!5085 (h!23656 (t!151120 tokens!457)))) (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457)))))))

(declare-fun lt!616173 () Unit!30517)

(declare-fun Unit!30562 () Unit!30517)

(assert (=> b!1654249 (= lt!616173 Unit!30562)))

(assert (=> b!1654249 (= (rule!5085 (h!23656 (t!151120 tokens!457))) (rule!5085 (h!23656 (t!151120 tokens!457))))))

(declare-fun lt!616179 () Unit!30517)

(declare-fun Unit!30563 () Unit!30517)

(assert (=> b!1654249 (= lt!616179 Unit!30563)))

(declare-fun lt!616174 () Unit!30517)

(assert (=> b!1654249 (= lt!616174 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!174 thiss!17113 rules!1846 (h!23656 (t!151120 tokens!457)) (rule!5085 (h!23656 (t!151120 tokens!457))) (list!7270 lt!616164)))))

(declare-fun b!1654250 () Bool)

(assert (=> b!1654250 (= e!1060750 (isEmpty!11298 (_2!10377 (lex!1332 thiss!17113 rules!1846 (print!1379 thiss!17113 (seqFromList!2178 (t!151120 tokens!457)))))))))

(assert (= (and d!499020 c!269105) b!1654248))

(assert (= (and d!499020 (not c!269105)) b!1654249))

(assert (= (and d!499020 res!741689) b!1654250))

(assert (=> d!499020 m!2005939))

(declare-fun m!2007123 () Bool)

(assert (=> d!499020 m!2007123))

(assert (=> d!499020 m!2006021))

(assert (=> d!499020 m!2006021))

(declare-fun m!2007125 () Bool)

(assert (=> d!499020 m!2007125))

(assert (=> d!499020 m!2007125))

(declare-fun m!2007127 () Bool)

(assert (=> d!499020 m!2007127))

(declare-fun m!2007129 () Bool)

(assert (=> b!1654249 m!2007129))

(declare-fun m!2007131 () Bool)

(assert (=> b!1654249 m!2007131))

(declare-fun m!2007133 () Bool)

(assert (=> b!1654249 m!2007133))

(declare-fun m!2007135 () Bool)

(assert (=> b!1654249 m!2007135))

(declare-fun m!2007137 () Bool)

(assert (=> b!1654249 m!2007137))

(assert (=> b!1654249 m!2006021))

(declare-fun m!2007139 () Bool)

(assert (=> b!1654249 m!2007139))

(declare-fun m!2007141 () Bool)

(assert (=> b!1654249 m!2007141))

(declare-fun m!2007143 () Bool)

(assert (=> b!1654249 m!2007143))

(declare-fun m!2007145 () Bool)

(assert (=> b!1654249 m!2007145))

(declare-fun m!2007147 () Bool)

(assert (=> b!1654249 m!2007147))

(declare-fun m!2007149 () Bool)

(assert (=> b!1654249 m!2007149))

(declare-fun m!2007151 () Bool)

(assert (=> b!1654249 m!2007151))

(declare-fun m!2007153 () Bool)

(assert (=> b!1654249 m!2007153))

(declare-fun m!2007155 () Bool)

(assert (=> b!1654249 m!2007155))

(declare-fun m!2007157 () Bool)

(assert (=> b!1654249 m!2007157))

(declare-fun m!2007159 () Bool)

(assert (=> b!1654249 m!2007159))

(declare-fun m!2007161 () Bool)

(assert (=> b!1654249 m!2007161))

(assert (=> b!1654249 m!2007159))

(assert (=> b!1654249 m!2007139))

(declare-fun m!2007163 () Bool)

(assert (=> b!1654249 m!2007163))

(assert (=> b!1654249 m!2005963))

(assert (=> b!1654249 m!2007151))

(declare-fun m!2007165 () Bool)

(assert (=> b!1654249 m!2007165))

(declare-fun m!2007167 () Bool)

(assert (=> b!1654249 m!2007167))

(declare-fun m!2007169 () Bool)

(assert (=> b!1654249 m!2007169))

(declare-fun m!2007171 () Bool)

(assert (=> b!1654249 m!2007171))

(assert (=> b!1654249 m!2005963))

(assert (=> b!1654249 m!2007159))

(assert (=> b!1654249 m!2007139))

(assert (=> b!1654249 m!2007171))

(declare-fun m!2007173 () Bool)

(assert (=> b!1654249 m!2007173))

(declare-fun m!2007175 () Bool)

(assert (=> b!1654249 m!2007175))

(declare-fun m!2007177 () Bool)

(assert (=> b!1654249 m!2007177))

(assert (=> b!1654249 m!2007145))

(declare-fun m!2007179 () Bool)

(assert (=> b!1654249 m!2007179))

(assert (=> b!1654249 m!2007137))

(declare-fun m!2007181 () Bool)

(assert (=> b!1654249 m!2007181))

(assert (=> b!1654249 m!2007159))

(declare-fun m!2007183 () Bool)

(assert (=> b!1654249 m!2007183))

(assert (=> b!1654249 m!2007133))

(assert (=> b!1654249 m!2007143))

(assert (=> b!1654249 m!2007135))

(assert (=> b!1654249 m!2007129))

(assert (=> b!1654249 m!2007183))

(declare-fun m!2007185 () Bool)

(assert (=> b!1654249 m!2007185))

(assert (=> b!1654249 m!2006021))

(assert (=> b!1654249 m!2007125))

(assert (=> b!1654249 m!2007183))

(declare-fun m!2007187 () Bool)

(assert (=> b!1654249 m!2007187))

(assert (=> b!1654249 m!2007139))

(declare-fun m!2007189 () Bool)

(assert (=> b!1654249 m!2007189))

(assert (=> b!1654249 m!2005975))

(declare-fun m!2007191 () Bool)

(assert (=> b!1654249 m!2007191))

(assert (=> b!1654249 m!2007171))

(declare-fun m!2007193 () Bool)

(assert (=> b!1654249 m!2007193))

(assert (=> b!1654249 m!2007155))

(declare-fun m!2007195 () Bool)

(assert (=> b!1654249 m!2007195))

(assert (=> b!1654249 m!2005975))

(assert (=> b!1654250 m!2006021))

(assert (=> b!1654250 m!2006021))

(assert (=> b!1654250 m!2007125))

(assert (=> b!1654250 m!2007125))

(assert (=> b!1654250 m!2007127))

(declare-fun m!2007197 () Bool)

(assert (=> b!1654250 m!2007197))

(assert (=> b!1653698 d!499020))

(declare-fun d!499022 () Bool)

(declare-fun e!1060757 () Bool)

(assert (=> d!499022 e!1060757))

(declare-fun res!741698 () Bool)

(assert (=> d!499022 (=> res!741698 e!1060757)))

(declare-fun lt!616192 () Bool)

(assert (=> d!499022 (= res!741698 (not lt!616192))))

(declare-fun e!1060758 () Bool)

(assert (=> d!499022 (= lt!616192 e!1060758)))

(declare-fun res!741700 () Bool)

(assert (=> d!499022 (=> res!741700 e!1060758)))

(assert (=> d!499022 (= res!741700 ((_ is Nil!18253) lt!615428))))

(assert (=> d!499022 (= (isPrefix!1477 lt!615428 lt!615450) lt!616192)))

(declare-fun b!1654260 () Bool)

(declare-fun res!741699 () Bool)

(declare-fun e!1060759 () Bool)

(assert (=> b!1654260 (=> (not res!741699) (not e!1060759))))

(assert (=> b!1654260 (= res!741699 (= (head!3657 lt!615428) (head!3657 lt!615450)))))

(declare-fun b!1654261 () Bool)

(assert (=> b!1654261 (= e!1060759 (isPrefix!1477 (tail!2452 lt!615428) (tail!2452 lt!615450)))))

(declare-fun b!1654262 () Bool)

(assert (=> b!1654262 (= e!1060757 (>= (size!14529 lt!615450) (size!14529 lt!615428)))))

(declare-fun b!1654259 () Bool)

(assert (=> b!1654259 (= e!1060758 e!1060759)))

(declare-fun res!741701 () Bool)

(assert (=> b!1654259 (=> (not res!741701) (not e!1060759))))

(assert (=> b!1654259 (= res!741701 (not ((_ is Nil!18253) lt!615450)))))

(assert (= (and d!499022 (not res!741700)) b!1654259))

(assert (= (and b!1654259 res!741701) b!1654260))

(assert (= (and b!1654260 res!741699) b!1654261))

(assert (= (and d!499022 (not res!741698)) b!1654262))

(assert (=> b!1654260 m!2007105))

(declare-fun m!2007199 () Bool)

(assert (=> b!1654260 m!2007199))

(assert (=> b!1654261 m!2007109))

(declare-fun m!2007201 () Bool)

(assert (=> b!1654261 m!2007201))

(assert (=> b!1654261 m!2007109))

(assert (=> b!1654261 m!2007201))

(declare-fun m!2007203 () Bool)

(assert (=> b!1654261 m!2007203))

(declare-fun m!2007205 () Bool)

(assert (=> b!1654262 m!2007205))

(assert (=> b!1654262 m!2006221))

(assert (=> b!1653698 d!499022))

(declare-fun d!499024 () Bool)

(assert (=> d!499024 (isPrefix!1477 lt!615428 (++!4945 lt!615428 lt!615440))))

(declare-fun lt!616195 () Unit!30517)

(declare-fun choose!9937 (List!18323 List!18323) Unit!30517)

(assert (=> d!499024 (= lt!616195 (choose!9937 lt!615428 lt!615440))))

(assert (=> d!499024 (= (lemmaConcatTwoListThenFirstIsPrefix!1002 lt!615428 lt!615440) lt!616195)))

(declare-fun bs!396751 () Bool)

(assert (= bs!396751 d!499024))

(assert (=> bs!396751 m!2006033))

(assert (=> bs!396751 m!2006033))

(declare-fun m!2007207 () Bool)

(assert (=> bs!396751 m!2007207))

(declare-fun m!2007209 () Bool)

(assert (=> bs!396751 m!2007209))

(assert (=> b!1653698 d!499024))

(declare-fun d!499026 () Bool)

(declare-fun lt!616200 () Bool)

(declare-fun e!1060765 () Bool)

(assert (=> d!499026 (= lt!616200 e!1060765)))

(declare-fun res!741708 () Bool)

(assert (=> d!499026 (=> (not res!741708) (not e!1060765))))

(assert (=> d!499026 (= res!741708 (= (list!7269 (_1!10377 (lex!1332 thiss!17113 rules!1846 (print!1379 thiss!17113 (singletonSeq!1710 (h!23656 tokens!457)))))) (list!7269 (singletonSeq!1710 (h!23656 tokens!457)))))))

(declare-fun e!1060764 () Bool)

(assert (=> d!499026 (= lt!616200 e!1060764)))

(declare-fun res!741710 () Bool)

(assert (=> d!499026 (=> (not res!741710) (not e!1060764))))

(declare-fun lt!616201 () tuple2!17950)

(assert (=> d!499026 (= res!741710 (= (size!14530 (_1!10377 lt!616201)) 1))))

(assert (=> d!499026 (= lt!616201 (lex!1332 thiss!17113 rules!1846 (print!1379 thiss!17113 (singletonSeq!1710 (h!23656 tokens!457)))))))

(assert (=> d!499026 (not (isEmpty!11291 rules!1846))))

(assert (=> d!499026 (= (rulesProduceIndividualToken!1496 thiss!17113 rules!1846 (h!23656 tokens!457)) lt!616200)))

(declare-fun b!1654269 () Bool)

(declare-fun res!741709 () Bool)

(assert (=> b!1654269 (=> (not res!741709) (not e!1060764))))

(assert (=> b!1654269 (= res!741709 (= (apply!4832 (_1!10377 lt!616201) 0) (h!23656 tokens!457)))))

(declare-fun b!1654270 () Bool)

(assert (=> b!1654270 (= e!1060764 (isEmpty!11298 (_2!10377 lt!616201)))))

(declare-fun b!1654271 () Bool)

(assert (=> b!1654271 (= e!1060765 (isEmpty!11298 (_2!10377 (lex!1332 thiss!17113 rules!1846 (print!1379 thiss!17113 (singletonSeq!1710 (h!23656 tokens!457)))))))))

(assert (= (and d!499026 res!741710) b!1654269))

(assert (= (and b!1654269 res!741709) b!1654270))

(assert (= (and d!499026 res!741708) b!1654271))

(declare-fun m!2007211 () Bool)

(assert (=> d!499026 m!2007211))

(declare-fun m!2007213 () Bool)

(assert (=> d!499026 m!2007213))

(assert (=> d!499026 m!2005907))

(assert (=> d!499026 m!2005907))

(assert (=> d!499026 m!2007211))

(declare-fun m!2007215 () Bool)

(assert (=> d!499026 m!2007215))

(declare-fun m!2007217 () Bool)

(assert (=> d!499026 m!2007217))

(assert (=> d!499026 m!2005907))

(declare-fun m!2007219 () Bool)

(assert (=> d!499026 m!2007219))

(assert (=> d!499026 m!2005939))

(declare-fun m!2007221 () Bool)

(assert (=> b!1654269 m!2007221))

(declare-fun m!2007223 () Bool)

(assert (=> b!1654270 m!2007223))

(assert (=> b!1654271 m!2005907))

(assert (=> b!1654271 m!2005907))

(assert (=> b!1654271 m!2007211))

(assert (=> b!1654271 m!2007211))

(assert (=> b!1654271 m!2007213))

(declare-fun m!2007225 () Bool)

(assert (=> b!1654271 m!2007225))

(assert (=> b!1653719 d!499026))

(declare-fun d!499028 () Bool)

(assert (=> d!499028 (= (isEmpty!11289 (_2!10375 lt!615436)) ((_ is Nil!18253) (_2!10375 lt!615436)))))

(assert (=> b!1653697 d!499028))

(declare-fun d!499030 () Bool)

(declare-fun res!741716 () Bool)

(declare-fun e!1060770 () Bool)

(assert (=> d!499030 (=> res!741716 e!1060770)))

(assert (=> d!499030 (= res!741716 (or (not ((_ is Cons!18255) tokens!457)) (not ((_ is Cons!18255) (t!151120 tokens!457)))))))

(assert (=> d!499030 (= (tokensListTwoByTwoPredicateSeparableList!541 thiss!17113 tokens!457 rules!1846) e!1060770)))

(declare-fun b!1654276 () Bool)

(declare-fun e!1060771 () Bool)

(assert (=> b!1654276 (= e!1060770 e!1060771)))

(declare-fun res!741715 () Bool)

(assert (=> b!1654276 (=> (not res!741715) (not e!1060771))))

(assert (=> b!1654276 (= res!741715 (separableTokensPredicate!788 thiss!17113 (h!23656 tokens!457) (h!23656 (t!151120 tokens!457)) rules!1846))))

(declare-fun lt!616218 () Unit!30517)

(declare-fun Unit!30564 () Unit!30517)

(assert (=> b!1654276 (= lt!616218 Unit!30564)))

(assert (=> b!1654276 (> (size!14532 (charsOf!1868 (h!23656 (t!151120 tokens!457)))) 0)))

(declare-fun lt!616217 () Unit!30517)

(declare-fun Unit!30565 () Unit!30517)

(assert (=> b!1654276 (= lt!616217 Unit!30565)))

(assert (=> b!1654276 (rulesProduceIndividualToken!1496 thiss!17113 rules!1846 (h!23656 (t!151120 tokens!457)))))

(declare-fun lt!616219 () Unit!30517)

(declare-fun Unit!30566 () Unit!30517)

(assert (=> b!1654276 (= lt!616219 Unit!30566)))

(assert (=> b!1654276 (rulesProduceIndividualToken!1496 thiss!17113 rules!1846 (h!23656 tokens!457))))

(declare-fun lt!616220 () Unit!30517)

(declare-fun lt!616216 () Unit!30517)

(assert (=> b!1654276 (= lt!616220 lt!616216)))

(assert (=> b!1654276 (rulesProduceIndividualToken!1496 thiss!17113 rules!1846 (h!23656 (t!151120 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!609 (LexerInterface!2848 List!18326 List!18325 Token!6004) Unit!30517)

(assert (=> b!1654276 (= lt!616216 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!609 thiss!17113 rules!1846 tokens!457 (h!23656 (t!151120 tokens!457))))))

(declare-fun lt!616222 () Unit!30517)

(declare-fun lt!616221 () Unit!30517)

(assert (=> b!1654276 (= lt!616222 lt!616221)))

(assert (=> b!1654276 (rulesProduceIndividualToken!1496 thiss!17113 rules!1846 (h!23656 tokens!457))))

(assert (=> b!1654276 (= lt!616221 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!609 thiss!17113 rules!1846 tokens!457 (h!23656 tokens!457)))))

(declare-fun b!1654277 () Bool)

(assert (=> b!1654277 (= e!1060771 (tokensListTwoByTwoPredicateSeparableList!541 thiss!17113 (Cons!18255 (h!23656 (t!151120 tokens!457)) (t!151120 (t!151120 tokens!457))) rules!1846))))

(assert (= (and d!499030 (not res!741716)) b!1654276))

(assert (= (and b!1654276 res!741715) b!1654277))

(declare-fun m!2007227 () Bool)

(assert (=> b!1654276 m!2007227))

(declare-fun m!2007229 () Bool)

(assert (=> b!1654276 m!2007229))

(assert (=> b!1654276 m!2005963))

(assert (=> b!1654276 m!2005963))

(declare-fun m!2007231 () Bool)

(assert (=> b!1654276 m!2007231))

(assert (=> b!1654276 m!2005929))

(declare-fun m!2007233 () Bool)

(assert (=> b!1654276 m!2007233))

(assert (=> b!1654276 m!2005969))

(declare-fun m!2007235 () Bool)

(assert (=> b!1654277 m!2007235))

(assert (=> b!1653699 d!499030))

(declare-fun d!499032 () Bool)

(declare-fun res!741719 () Bool)

(declare-fun e!1060774 () Bool)

(assert (=> d!499032 (=> (not res!741719) (not e!1060774))))

(declare-fun rulesValid!1174 (LexerInterface!2848 List!18326) Bool)

(assert (=> d!499032 (= res!741719 (rulesValid!1174 thiss!17113 rules!1846))))

(assert (=> d!499032 (= (rulesInvariant!2517 thiss!17113 rules!1846) e!1060774)))

(declare-fun b!1654280 () Bool)

(declare-datatypes ((List!18328 0))(
  ( (Nil!18258) (Cons!18258 (h!23659 String!20877) (t!151165 List!18328)) )
))
(declare-fun noDuplicateTag!1174 (LexerInterface!2848 List!18326 List!18328) Bool)

(assert (=> b!1654280 (= e!1060774 (noDuplicateTag!1174 thiss!17113 rules!1846 Nil!18258))))

(assert (= (and d!499032 res!741719) b!1654280))

(declare-fun m!2007237 () Bool)

(assert (=> d!499032 m!2007237))

(declare-fun m!2007239 () Bool)

(assert (=> b!1654280 m!2007239))

(assert (=> b!1653722 d!499032))

(declare-fun d!499034 () Bool)

(declare-fun e!1060777 () Bool)

(assert (=> d!499034 e!1060777))

(declare-fun res!741722 () Bool)

(assert (=> d!499034 (=> (not res!741722) (not e!1060777))))

(declare-fun prepend!788 (Conc!6087 Token!6004) Conc!6087)

(assert (=> d!499034 (= res!741722 (isBalanced!1867 (prepend!788 (c!268995 (seqFromList!2178 (t!151120 (t!151120 tokens!457)))) (h!23656 (t!151120 tokens!457)))))))

(declare-fun lt!616225 () BalanceConc!12118)

(assert (=> d!499034 (= lt!616225 (BalanceConc!12119 (prepend!788 (c!268995 (seqFromList!2178 (t!151120 (t!151120 tokens!457)))) (h!23656 (t!151120 tokens!457)))))))

(assert (=> d!499034 (= (prepend!787 (seqFromList!2178 (t!151120 (t!151120 tokens!457))) (h!23656 (t!151120 tokens!457))) lt!616225)))

(declare-fun b!1654283 () Bool)

(assert (=> b!1654283 (= e!1060777 (= (list!7269 lt!616225) (Cons!18255 (h!23656 (t!151120 tokens!457)) (list!7269 (seqFromList!2178 (t!151120 (t!151120 tokens!457)))))))))

(assert (= (and d!499034 res!741722) b!1654283))

(declare-fun m!2007241 () Bool)

(assert (=> d!499034 m!2007241))

(assert (=> d!499034 m!2007241))

(declare-fun m!2007243 () Bool)

(assert (=> d!499034 m!2007243))

(declare-fun m!2007245 () Bool)

(assert (=> b!1654283 m!2007245))

(assert (=> b!1654283 m!2005975))

(declare-fun m!2007247 () Bool)

(assert (=> b!1654283 m!2007247))

(assert (=> b!1653721 d!499034))

(declare-fun d!499036 () Bool)

(assert (=> d!499036 (= (list!7269 (prepend!787 (seqFromList!2178 (t!151120 (t!151120 tokens!457))) (h!23656 (t!151120 tokens!457)))) (list!7274 (c!268995 (prepend!787 (seqFromList!2178 (t!151120 (t!151120 tokens!457))) (h!23656 (t!151120 tokens!457))))))))

(declare-fun bs!396752 () Bool)

(assert (= bs!396752 d!499036))

(declare-fun m!2007249 () Bool)

(assert (=> bs!396752 m!2007249))

(assert (=> b!1653721 d!499036))

(declare-fun d!499038 () Bool)

(assert (=> d!499038 (= (list!7269 (_1!10377 lt!615445)) (list!7269 (prepend!787 (seqFromList!2178 (t!151120 (t!151120 tokens!457))) (h!23656 (t!151120 tokens!457)))))))

(declare-fun lt!616228 () Unit!30517)

(declare-fun choose!9938 (Token!6004 List!18325 BalanceConc!12118) Unit!30517)

(assert (=> d!499038 (= lt!616228 (choose!9938 (h!23656 (t!151120 tokens!457)) (t!151120 (t!151120 tokens!457)) (_1!10377 lt!615445)))))

(declare-fun $colon$colon!373 (List!18325 Token!6004) List!18325)

(assert (=> d!499038 (= (list!7269 (_1!10377 lt!615445)) (list!7269 (seqFromList!2178 ($colon$colon!373 (t!151120 (t!151120 tokens!457)) (h!23656 (t!151120 tokens!457))))))))

(assert (=> d!499038 (= (seqFromListBHdTlConstructive!294 (h!23656 (t!151120 tokens!457)) (t!151120 (t!151120 tokens!457)) (_1!10377 lt!615445)) lt!616228)))

(declare-fun bs!396753 () Bool)

(assert (= bs!396753 d!499038))

(declare-fun m!2007251 () Bool)

(assert (=> bs!396753 m!2007251))

(assert (=> bs!396753 m!2005975))

(assert (=> bs!396753 m!2005977))

(assert (=> bs!396753 m!2007251))

(declare-fun m!2007253 () Bool)

(assert (=> bs!396753 m!2007253))

(assert (=> bs!396753 m!2005975))

(declare-fun m!2007255 () Bool)

(assert (=> bs!396753 m!2007255))

(assert (=> bs!396753 m!2005977))

(assert (=> bs!396753 m!2005979))

(assert (=> bs!396753 m!2005931))

(assert (=> bs!396753 m!2007253))

(declare-fun m!2007257 () Bool)

(assert (=> bs!396753 m!2007257))

(assert (=> b!1653721 d!499038))

(declare-fun d!499040 () Bool)

(assert (=> d!499040 (= (seqFromList!2178 (t!151120 (t!151120 tokens!457))) (fromListB!972 (t!151120 (t!151120 tokens!457))))))

(declare-fun bs!396754 () Bool)

(assert (= bs!396754 d!499040))

(declare-fun m!2007259 () Bool)

(assert (=> bs!396754 m!2007259))

(assert (=> b!1653721 d!499040))

(declare-fun d!499042 () Bool)

(assert (=> d!499042 (= (list!7269 lt!615452) (list!7274 (c!268995 lt!615452)))))

(declare-fun bs!396755 () Bool)

(assert (= bs!396755 d!499042))

(declare-fun m!2007261 () Bool)

(assert (=> bs!396755 m!2007261))

(assert (=> b!1653721 d!499042))

(declare-fun d!499044 () Bool)

(declare-fun e!1060780 () Bool)

(assert (=> d!499044 e!1060780))

(declare-fun res!741725 () Bool)

(assert (=> d!499044 (=> (not res!741725) (not e!1060780))))

(declare-fun lt!616231 () BalanceConc!12116)

(assert (=> d!499044 (= res!741725 (= (list!7270 lt!616231) (Cons!18253 (apply!4830 (charsOf!1868 (h!23656 (t!151120 tokens!457))) 0) Nil!18253)))))

(declare-fun singleton!743 (C!9268) BalanceConc!12116)

(assert (=> d!499044 (= lt!616231 (singleton!743 (apply!4830 (charsOf!1868 (h!23656 (t!151120 tokens!457))) 0)))))

(assert (=> d!499044 (= (singletonSeq!1711 (apply!4830 (charsOf!1868 (h!23656 (t!151120 tokens!457))) 0)) lt!616231)))

(declare-fun b!1654286 () Bool)

(declare-fun isBalanced!1869 (Conc!6086) Bool)

(assert (=> b!1654286 (= e!1060780 (isBalanced!1869 (c!268993 lt!616231)))))

(assert (= (and d!499044 res!741725) b!1654286))

(declare-fun m!2007263 () Bool)

(assert (=> d!499044 m!2007263))

(assert (=> d!499044 m!2005955))

(declare-fun m!2007265 () Bool)

(assert (=> d!499044 m!2007265))

(declare-fun m!2007267 () Bool)

(assert (=> b!1654286 m!2007267))

(assert (=> b!1653723 d!499044))

(declare-fun b!1654297 () Bool)

(declare-fun res!741734 () Bool)

(declare-fun e!1060783 () Bool)

(assert (=> b!1654297 (=> (not res!741734) (not e!1060783))))

(declare-fun height!946 (Conc!6086) Int)

(declare-fun ++!4947 (Conc!6086 Conc!6086) Conc!6086)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1654297 (= res!741734 (>= (height!946 (++!4947 (c!268993 lt!615433) (c!268993 lt!615451))) (max!0 (height!946 (c!268993 lt!615433)) (height!946 (c!268993 lt!615451)))))))

(declare-fun b!1654295 () Bool)

(declare-fun res!741736 () Bool)

(assert (=> b!1654295 (=> (not res!741736) (not e!1060783))))

(assert (=> b!1654295 (= res!741736 (isBalanced!1869 (++!4947 (c!268993 lt!615433) (c!268993 lt!615451))))))

(declare-fun b!1654298 () Bool)

(declare-fun lt!616234 () BalanceConc!12116)

(assert (=> b!1654298 (= e!1060783 (= (list!7270 lt!616234) (++!4945 (list!7270 lt!615433) (list!7270 lt!615451))))))

(declare-fun d!499046 () Bool)

(assert (=> d!499046 e!1060783))

(declare-fun res!741735 () Bool)

(assert (=> d!499046 (=> (not res!741735) (not e!1060783))))

(declare-fun appendAssocInst!466 (Conc!6086 Conc!6086) Bool)

(assert (=> d!499046 (= res!741735 (appendAssocInst!466 (c!268993 lt!615433) (c!268993 lt!615451)))))

(assert (=> d!499046 (= lt!616234 (BalanceConc!12117 (++!4947 (c!268993 lt!615433) (c!268993 lt!615451))))))

(assert (=> d!499046 (= (++!4946 lt!615433 lt!615451) lt!616234)))

(declare-fun b!1654296 () Bool)

(declare-fun res!741737 () Bool)

(assert (=> b!1654296 (=> (not res!741737) (not e!1060783))))

(assert (=> b!1654296 (= res!741737 (<= (height!946 (++!4947 (c!268993 lt!615433) (c!268993 lt!615451))) (+ (max!0 (height!946 (c!268993 lt!615433)) (height!946 (c!268993 lt!615451))) 1)))))

(assert (= (and d!499046 res!741735) b!1654295))

(assert (= (and b!1654295 res!741736) b!1654296))

(assert (= (and b!1654296 res!741737) b!1654297))

(assert (= (and b!1654297 res!741734) b!1654298))

(declare-fun m!2007269 () Bool)

(assert (=> b!1654296 m!2007269))

(declare-fun m!2007271 () Bool)

(assert (=> b!1654296 m!2007271))

(declare-fun m!2007273 () Bool)

(assert (=> b!1654296 m!2007273))

(declare-fun m!2007275 () Bool)

(assert (=> b!1654296 m!2007275))

(assert (=> b!1654296 m!2007269))

(declare-fun m!2007277 () Bool)

(assert (=> b!1654296 m!2007277))

(assert (=> b!1654296 m!2007271))

(assert (=> b!1654296 m!2007275))

(assert (=> b!1654295 m!2007271))

(assert (=> b!1654295 m!2007271))

(declare-fun m!2007279 () Bool)

(assert (=> b!1654295 m!2007279))

(declare-fun m!2007281 () Bool)

(assert (=> b!1654298 m!2007281))

(assert (=> b!1654298 m!2006029))

(assert (=> b!1654298 m!2006003))

(assert (=> b!1654298 m!2006029))

(assert (=> b!1654298 m!2006003))

(declare-fun m!2007283 () Bool)

(assert (=> b!1654298 m!2007283))

(declare-fun m!2007285 () Bool)

(assert (=> d!499046 m!2007285))

(assert (=> d!499046 m!2007271))

(assert (=> b!1654297 m!2007269))

(assert (=> b!1654297 m!2007271))

(assert (=> b!1654297 m!2007273))

(assert (=> b!1654297 m!2007275))

(assert (=> b!1654297 m!2007269))

(assert (=> b!1654297 m!2007277))

(assert (=> b!1654297 m!2007271))

(assert (=> b!1654297 m!2007275))

(assert (=> b!1653723 d!499046))

(declare-fun d!499048 () Bool)

(declare-fun lt!616263 () Bool)

(assert (=> d!499048 (= lt!616263 (prefixMatch!464 lt!615426 (list!7270 (++!4946 lt!615433 lt!615451))))))

(declare-datatypes ((List!18329 0))(
  ( (Nil!18259) (Cons!18259 (h!23660 Regex!4547) (t!151166 List!18329)) )
))
(declare-datatypes ((Context!1796 0))(
  ( (Context!1797 (exprs!1398 List!18329)) )
))
(declare-fun prefixMatchZipperSequence!634 ((InoxSet Context!1796) BalanceConc!12116 Int) Bool)

(declare-fun focus!204 (Regex!4547) (InoxSet Context!1796))

(assert (=> d!499048 (= lt!616263 (prefixMatchZipperSequence!634 (focus!204 lt!615426) (++!4946 lt!615433 lt!615451) 0))))

(declare-fun lt!616258 () Unit!30517)

(declare-fun lt!616259 () Unit!30517)

(assert (=> d!499048 (= lt!616258 lt!616259)))

(declare-fun lt!616262 () List!18323)

(declare-fun lt!616264 () (InoxSet Context!1796))

(declare-fun prefixMatchZipper!183 ((InoxSet Context!1796) List!18323) Bool)

(assert (=> d!499048 (= (prefixMatch!464 lt!615426 lt!616262) (prefixMatchZipper!183 lt!616264 lt!616262))))

(declare-datatypes ((List!18330 0))(
  ( (Nil!18260) (Cons!18260 (h!23661 Context!1796) (t!151167 List!18330)) )
))
(declare-fun lt!616260 () List!18330)

(declare-fun prefixMatchZipperRegexEquiv!183 ((InoxSet Context!1796) List!18330 Regex!4547 List!18323) Unit!30517)

(assert (=> d!499048 (= lt!616259 (prefixMatchZipperRegexEquiv!183 lt!616264 lt!616260 lt!615426 lt!616262))))

(assert (=> d!499048 (= lt!616262 (list!7270 (++!4946 lt!615433 lt!615451)))))

(declare-fun toList!944 ((InoxSet Context!1796)) List!18330)

(assert (=> d!499048 (= lt!616260 (toList!944 (focus!204 lt!615426)))))

(assert (=> d!499048 (= lt!616264 (focus!204 lt!615426))))

(declare-fun lt!616256 () Unit!30517)

(declare-fun lt!616261 () Unit!30517)

(assert (=> d!499048 (= lt!616256 lt!616261)))

(declare-fun lt!616257 () (InoxSet Context!1796))

(declare-fun lt!616255 () Int)

(declare-fun dropList!681 (BalanceConc!12116 Int) List!18323)

(assert (=> d!499048 (= (prefixMatchZipper!183 lt!616257 (dropList!681 (++!4946 lt!615433 lt!615451) lt!616255)) (prefixMatchZipperSequence!634 lt!616257 (++!4946 lt!615433 lt!615451) lt!616255))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!183 ((InoxSet Context!1796) BalanceConc!12116 Int) Unit!30517)

(assert (=> d!499048 (= lt!616261 (lemmaprefixMatchZipperSequenceEquivalent!183 lt!616257 (++!4946 lt!615433 lt!615451) lt!616255))))

(assert (=> d!499048 (= lt!616255 0)))

(assert (=> d!499048 (= lt!616257 (focus!204 lt!615426))))

(assert (=> d!499048 (validRegex!1811 lt!615426)))

(assert (=> d!499048 (= (prefixMatchZipperSequence!633 lt!615426 (++!4946 lt!615433 lt!615451)) lt!616263)))

(declare-fun bs!396756 () Bool)

(assert (= bs!396756 d!499048))

(assert (=> bs!396756 m!2005959))

(declare-fun m!2007287 () Bool)

(assert (=> bs!396756 m!2007287))

(declare-fun m!2007289 () Bool)

(assert (=> bs!396756 m!2007289))

(assert (=> bs!396756 m!2005959))

(declare-fun m!2007291 () Bool)

(assert (=> bs!396756 m!2007291))

(assert (=> bs!396756 m!2005959))

(declare-fun m!2007293 () Bool)

(assert (=> bs!396756 m!2007293))

(declare-fun m!2007295 () Bool)

(assert (=> bs!396756 m!2007295))

(assert (=> bs!396756 m!2005959))

(declare-fun m!2007297 () Bool)

(assert (=> bs!396756 m!2007297))

(assert (=> bs!396756 m!2007289))

(assert (=> bs!396756 m!2005959))

(declare-fun m!2007299 () Bool)

(assert (=> bs!396756 m!2007299))

(assert (=> bs!396756 m!2007293))

(declare-fun m!2007301 () Bool)

(assert (=> bs!396756 m!2007301))

(assert (=> bs!396756 m!2007289))

(declare-fun m!2007303 () Bool)

(assert (=> bs!396756 m!2007303))

(assert (=> bs!396756 m!2007299))

(declare-fun m!2007305 () Bool)

(assert (=> bs!396756 m!2007305))

(declare-fun m!2007307 () Bool)

(assert (=> bs!396756 m!2007307))

(declare-fun m!2007309 () Bool)

(assert (=> bs!396756 m!2007309))

(declare-fun m!2007311 () Bool)

(assert (=> bs!396756 m!2007311))

(assert (=> b!1653723 d!499048))

(declare-fun d!499050 () Bool)

(declare-fun lt!616267 () C!9268)

(declare-fun apply!4837 (List!18323 Int) C!9268)

(assert (=> d!499050 (= lt!616267 (apply!4837 (list!7270 (charsOf!1868 (h!23656 (t!151120 tokens!457)))) 0))))

(declare-fun apply!4838 (Conc!6086 Int) C!9268)

(assert (=> d!499050 (= lt!616267 (apply!4838 (c!268993 (charsOf!1868 (h!23656 (t!151120 tokens!457)))) 0))))

(declare-fun e!1060786 () Bool)

(assert (=> d!499050 e!1060786))

(declare-fun res!741740 () Bool)

(assert (=> d!499050 (=> (not res!741740) (not e!1060786))))

(assert (=> d!499050 (= res!741740 (<= 0 0))))

(assert (=> d!499050 (= (apply!4830 (charsOf!1868 (h!23656 (t!151120 tokens!457))) 0) lt!616267)))

(declare-fun b!1654301 () Bool)

(assert (=> b!1654301 (= e!1060786 (< 0 (size!14532 (charsOf!1868 (h!23656 (t!151120 tokens!457))))))))

(assert (= (and d!499050 res!741740) b!1654301))

(assert (=> d!499050 m!2005963))

(assert (=> d!499050 m!2007159))

(assert (=> d!499050 m!2007159))

(declare-fun m!2007313 () Bool)

(assert (=> d!499050 m!2007313))

(declare-fun m!2007315 () Bool)

(assert (=> d!499050 m!2007315))

(assert (=> b!1654301 m!2005963))

(assert (=> b!1654301 m!2007231))

(assert (=> b!1653723 d!499050))

(declare-fun d!499052 () Bool)

(declare-fun lt!616270 () Unit!30517)

(declare-fun lemma!269 (List!18326 LexerInterface!2848 List!18326) Unit!30517)

(assert (=> d!499052 (= lt!616270 (lemma!269 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67740 () Int)

(declare-fun generalisedUnion!277 (List!18329) Regex!4547)

(declare-fun map!3758 (List!18326 Int) List!18329)

(assert (=> d!499052 (= (rulesRegex!603 thiss!17113 rules!1846) (generalisedUnion!277 (map!3758 rules!1846 lambda!67740)))))

(declare-fun bs!396757 () Bool)

(assert (= bs!396757 d!499052))

(declare-fun m!2007317 () Bool)

(assert (=> bs!396757 m!2007317))

(declare-fun m!2007319 () Bool)

(assert (=> bs!396757 m!2007319))

(assert (=> bs!396757 m!2007319))

(declare-fun m!2007321 () Bool)

(assert (=> bs!396757 m!2007321))

(assert (=> b!1653723 d!499052))

(declare-fun d!499054 () Bool)

(declare-fun lt!616271 () BalanceConc!12116)

(assert (=> d!499054 (= (list!7270 lt!616271) (originalCharacters!4033 (h!23656 (t!151120 tokens!457))))))

(assert (=> d!499054 (= lt!616271 (dynLambda!8184 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) (value!101414 (h!23656 (t!151120 tokens!457)))))))

(assert (=> d!499054 (= (charsOf!1868 (h!23656 (t!151120 tokens!457))) lt!616271)))

(declare-fun b_lambda!51963 () Bool)

(assert (=> (not b_lambda!51963) (not d!499054)))

(declare-fun t!151141 () Bool)

(declare-fun tb!94715 () Bool)

(assert (=> (and b!1653718 (= (toChars!4529 (transformation!3219 (h!23657 rules!1846))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457)))))) t!151141) tb!94715))

(declare-fun b!1654302 () Bool)

(declare-fun e!1060787 () Bool)

(declare-fun tp!478310 () Bool)

(assert (=> b!1654302 (= e!1060787 (and (inv!23613 (c!268993 (dynLambda!8184 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) (value!101414 (h!23656 (t!151120 tokens!457)))))) tp!478310))))

(declare-fun result!114438 () Bool)

(assert (=> tb!94715 (= result!114438 (and (inv!23614 (dynLambda!8184 (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) (value!101414 (h!23656 (t!151120 tokens!457))))) e!1060787))))

(assert (= tb!94715 b!1654302))

(declare-fun m!2007323 () Bool)

(assert (=> b!1654302 m!2007323))

(declare-fun m!2007325 () Bool)

(assert (=> tb!94715 m!2007325))

(assert (=> d!499054 t!151141))

(declare-fun b_and!117449 () Bool)

(assert (= b_and!117433 (and (=> t!151141 result!114438) b_and!117449)))

(declare-fun t!151143 () Bool)

(declare-fun tb!94717 () Bool)

(assert (=> (and b!1653720 (= (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457)))))) t!151143) tb!94717))

(declare-fun result!114440 () Bool)

(assert (= result!114440 result!114438))

(assert (=> d!499054 t!151143))

(declare-fun b_and!117451 () Bool)

(assert (= b_and!117435 (and (=> t!151143 result!114440) b_and!117451)))

(declare-fun m!2007327 () Bool)

(assert (=> d!499054 m!2007327))

(declare-fun m!2007329 () Bool)

(assert (=> d!499054 m!2007329))

(assert (=> b!1653723 d!499054))

(declare-fun d!499056 () Bool)

(assert (=> d!499056 (= (head!3657 lt!615440) (h!23654 lt!615440))))

(assert (=> b!1653701 d!499056))

(declare-fun d!499058 () Bool)

(declare-fun c!269110 () Bool)

(assert (=> d!499058 (= c!269110 (isEmpty!11289 (++!4945 lt!615428 lt!615430)))))

(declare-fun e!1060788 () Bool)

(assert (=> d!499058 (= (prefixMatch!464 lt!615426 (++!4945 lt!615428 lt!615430)) e!1060788)))

(declare-fun b!1654303 () Bool)

(assert (=> b!1654303 (= e!1060788 (not (lostCause!463 lt!615426)))))

(declare-fun b!1654304 () Bool)

(assert (=> b!1654304 (= e!1060788 (prefixMatch!464 (derivativeStep!1113 lt!615426 (head!3657 (++!4945 lt!615428 lt!615430))) (tail!2452 (++!4945 lt!615428 lt!615430))))))

(assert (= (and d!499058 c!269110) b!1654303))

(assert (= (and d!499058 (not c!269110)) b!1654304))

(assert (=> d!499058 m!2005999))

(declare-fun m!2007331 () Bool)

(assert (=> d!499058 m!2007331))

(assert (=> b!1654303 m!2006419))

(assert (=> b!1654304 m!2005999))

(declare-fun m!2007333 () Bool)

(assert (=> b!1654304 m!2007333))

(assert (=> b!1654304 m!2007333))

(declare-fun m!2007335 () Bool)

(assert (=> b!1654304 m!2007335))

(assert (=> b!1654304 m!2005999))

(declare-fun m!2007337 () Bool)

(assert (=> b!1654304 m!2007337))

(assert (=> b!1654304 m!2007335))

(assert (=> b!1654304 m!2007337))

(declare-fun m!2007339 () Bool)

(assert (=> b!1654304 m!2007339))

(assert (=> b!1653703 d!499058))

(declare-fun d!499060 () Bool)

(declare-fun e!1060789 () Bool)

(assert (=> d!499060 e!1060789))

(declare-fun res!741741 () Bool)

(assert (=> d!499060 (=> (not res!741741) (not e!1060789))))

(declare-fun lt!616272 () List!18323)

(assert (=> d!499060 (= res!741741 (= (content!2538 lt!616272) ((_ map or) (content!2538 lt!615428) (content!2538 lt!615430))))))

(declare-fun e!1060790 () List!18323)

(assert (=> d!499060 (= lt!616272 e!1060790)))

(declare-fun c!269111 () Bool)

(assert (=> d!499060 (= c!269111 ((_ is Nil!18253) lt!615428))))

(assert (=> d!499060 (= (++!4945 lt!615428 lt!615430) lt!616272)))

(declare-fun b!1654306 () Bool)

(assert (=> b!1654306 (= e!1060790 (Cons!18253 (h!23654 lt!615428) (++!4945 (t!151118 lt!615428) lt!615430)))))

(declare-fun b!1654305 () Bool)

(assert (=> b!1654305 (= e!1060790 lt!615430)))

(declare-fun b!1654307 () Bool)

(declare-fun res!741742 () Bool)

(assert (=> b!1654307 (=> (not res!741742) (not e!1060789))))

(assert (=> b!1654307 (= res!741742 (= (size!14529 lt!616272) (+ (size!14529 lt!615428) (size!14529 lt!615430))))))

(declare-fun b!1654308 () Bool)

(assert (=> b!1654308 (= e!1060789 (or (not (= lt!615430 Nil!18253)) (= lt!616272 lt!615428)))))

(assert (= (and d!499060 c!269111) b!1654305))

(assert (= (and d!499060 (not c!269111)) b!1654306))

(assert (= (and d!499060 res!741741) b!1654307))

(assert (= (and b!1654307 res!741742) b!1654308))

(declare-fun m!2007341 () Bool)

(assert (=> d!499060 m!2007341))

(assert (=> d!499060 m!2006213))

(declare-fun m!2007343 () Bool)

(assert (=> d!499060 m!2007343))

(declare-fun m!2007345 () Bool)

(assert (=> b!1654306 m!2007345))

(declare-fun m!2007347 () Bool)

(assert (=> b!1654307 m!2007347))

(assert (=> b!1654307 m!2006221))

(declare-fun m!2007349 () Bool)

(assert (=> b!1654307 m!2007349))

(assert (=> b!1653703 d!499060))

(declare-fun d!499062 () Bool)

(assert (=> d!499062 (= (list!7270 lt!615451) (list!7271 (c!268993 lt!615451)))))

(declare-fun bs!396758 () Bool)

(assert (= bs!396758 d!499062))

(declare-fun m!2007351 () Bool)

(assert (=> bs!396758 m!2007351))

(assert (=> b!1653703 d!499062))

(declare-fun d!499064 () Bool)

(assert (=> d!499064 (= (separableTokensPredicate!788 thiss!17113 (h!23656 tokens!457) (h!23656 (t!151120 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!633 (rulesRegex!603 thiss!17113 rules!1846) (++!4946 (charsOf!1868 (h!23656 tokens!457)) (singletonSeq!1711 (apply!4830 (charsOf!1868 (h!23656 (t!151120 tokens!457))) 0))))))))

(declare-fun bs!396759 () Bool)

(assert (= bs!396759 d!499064))

(assert (=> bs!396759 m!2005955))

(assert (=> bs!396759 m!2005957))

(assert (=> bs!396759 m!2006019))

(assert (=> bs!396759 m!2006019))

(assert (=> bs!396759 m!2005957))

(declare-fun m!2007353 () Bool)

(assert (=> bs!396759 m!2007353))

(assert (=> bs!396759 m!2005953))

(assert (=> bs!396759 m!2007353))

(declare-fun m!2007355 () Bool)

(assert (=> bs!396759 m!2007355))

(assert (=> bs!396759 m!2005963))

(assert (=> bs!396759 m!2005955))

(assert (=> bs!396759 m!2005963))

(assert (=> bs!396759 m!2005953))

(assert (=> b!1653724 d!499064))

(declare-fun lt!616311 () Bool)

(declare-fun d!499066 () Bool)

(declare-fun isEmpty!11300 (List!18325) Bool)

(assert (=> d!499066 (= lt!616311 (isEmpty!11300 (list!7269 (_1!10377 (lex!1332 thiss!17113 rules!1846 (seqFromList!2177 lt!615428))))))))

(declare-fun isEmpty!11301 (Conc!6087) Bool)

(assert (=> d!499066 (= lt!616311 (isEmpty!11301 (c!268995 (_1!10377 (lex!1332 thiss!17113 rules!1846 (seqFromList!2177 lt!615428))))))))

(assert (=> d!499066 (= (isEmpty!11290 (_1!10377 (lex!1332 thiss!17113 rules!1846 (seqFromList!2177 lt!615428)))) lt!616311)))

(declare-fun bs!396760 () Bool)

(assert (= bs!396760 d!499066))

(assert (=> bs!396760 m!2006391))

(assert (=> bs!396760 m!2006391))

(declare-fun m!2007357 () Bool)

(assert (=> bs!396760 m!2007357))

(declare-fun m!2007359 () Bool)

(assert (=> bs!396760 m!2007359))

(assert (=> b!1653704 d!499066))

(declare-fun b!1654313 () Bool)

(declare-fun e!1060793 () Bool)

(declare-fun e!1060795 () Bool)

(assert (=> b!1654313 (= e!1060793 e!1060795)))

(declare-fun res!741748 () Bool)

(declare-fun lt!616313 () tuple2!17950)

(assert (=> b!1654313 (= res!741748 (< (size!14532 (_2!10377 lt!616313)) (size!14532 (seqFromList!2177 lt!615428))))))

(assert (=> b!1654313 (=> (not res!741748) (not e!1060795))))

(declare-fun b!1654314 () Bool)

(assert (=> b!1654314 (= e!1060793 (= (_2!10377 lt!616313) (seqFromList!2177 lt!615428)))))

(declare-fun e!1060794 () Bool)

(declare-fun b!1654315 () Bool)

(assert (=> b!1654315 (= e!1060794 (= (list!7270 (_2!10377 lt!616313)) (_2!10378 (lexList!874 thiss!17113 rules!1846 (list!7270 (seqFromList!2177 lt!615428))))))))

(declare-fun b!1654316 () Bool)

(assert (=> b!1654316 (= e!1060795 (not (isEmpty!11290 (_1!10377 lt!616313))))))

(declare-fun b!1654317 () Bool)

(declare-fun res!741749 () Bool)

(assert (=> b!1654317 (=> (not res!741749) (not e!1060794))))

(assert (=> b!1654317 (= res!741749 (= (list!7269 (_1!10377 lt!616313)) (_1!10378 (lexList!874 thiss!17113 rules!1846 (list!7270 (seqFromList!2177 lt!615428))))))))

(declare-fun d!499068 () Bool)

(assert (=> d!499068 e!1060794))

(declare-fun res!741747 () Bool)

(assert (=> d!499068 (=> (not res!741747) (not e!1060794))))

(assert (=> d!499068 (= res!741747 e!1060793)))

(declare-fun c!269112 () Bool)

(assert (=> d!499068 (= c!269112 (> (size!14530 (_1!10377 lt!616313)) 0))))

(assert (=> d!499068 (= lt!616313 (lexTailRecV2!597 thiss!17113 rules!1846 (seqFromList!2177 lt!615428) (BalanceConc!12117 Empty!6086) (seqFromList!2177 lt!615428) (BalanceConc!12119 Empty!6087)))))

(assert (=> d!499068 (= (lex!1332 thiss!17113 rules!1846 (seqFromList!2177 lt!615428)) lt!616313)))

(assert (= (and d!499068 c!269112) b!1654313))

(assert (= (and d!499068 (not c!269112)) b!1654314))

(assert (= (and b!1654313 res!741748) b!1654316))

(assert (= (and d!499068 res!741747) b!1654317))

(assert (= (and b!1654317 res!741749) b!1654315))

(declare-fun m!2007361 () Bool)

(assert (=> b!1654315 m!2007361))

(assert (=> b!1654315 m!2006009))

(declare-fun m!2007363 () Bool)

(assert (=> b!1654315 m!2007363))

(assert (=> b!1654315 m!2007363))

(declare-fun m!2007365 () Bool)

(assert (=> b!1654315 m!2007365))

(declare-fun m!2007367 () Bool)

(assert (=> b!1654313 m!2007367))

(assert (=> b!1654313 m!2006009))

(declare-fun m!2007369 () Bool)

(assert (=> b!1654313 m!2007369))

(declare-fun m!2007371 () Bool)

(assert (=> b!1654317 m!2007371))

(assert (=> b!1654317 m!2006009))

(assert (=> b!1654317 m!2007363))

(assert (=> b!1654317 m!2007363))

(assert (=> b!1654317 m!2007365))

(declare-fun m!2007373 () Bool)

(assert (=> d!499068 m!2007373))

(assert (=> d!499068 m!2006009))

(assert (=> d!499068 m!2006009))

(declare-fun m!2007375 () Bool)

(assert (=> d!499068 m!2007375))

(declare-fun m!2007377 () Bool)

(assert (=> b!1654316 m!2007377))

(assert (=> b!1653704 d!499068))

(declare-fun d!499070 () Bool)

(assert (=> d!499070 (= (seqFromList!2177 lt!615428) (fromListB!975 lt!615428))))

(declare-fun bs!396761 () Bool)

(assert (= bs!396761 d!499070))

(declare-fun m!2007379 () Bool)

(assert (=> bs!396761 m!2007379))

(assert (=> b!1653704 d!499070))

(declare-fun b!1654336 () Bool)

(declare-fun e!1060808 () Bool)

(declare-fun inv!15 (TokenValue!3309) Bool)

(assert (=> b!1654336 (= e!1060808 (inv!15 (value!101414 (h!23656 tokens!457))))))

(declare-fun b!1654337 () Bool)

(declare-fun e!1060807 () Bool)

(declare-fun inv!16 (TokenValue!3309) Bool)

(assert (=> b!1654337 (= e!1060807 (inv!16 (value!101414 (h!23656 tokens!457))))))

(declare-fun d!499072 () Bool)

(declare-fun c!269121 () Bool)

(assert (=> d!499072 (= c!269121 ((_ is IntegerValue!9927) (value!101414 (h!23656 tokens!457))))))

(assert (=> d!499072 (= (inv!21 (value!101414 (h!23656 tokens!457))) e!1060807)))

(declare-fun b!1654338 () Bool)

(declare-fun e!1060806 () Bool)

(assert (=> b!1654338 (= e!1060807 e!1060806)))

(declare-fun c!269122 () Bool)

(assert (=> b!1654338 (= c!269122 ((_ is IntegerValue!9928) (value!101414 (h!23656 tokens!457))))))

(declare-fun b!1654339 () Bool)

(declare-fun inv!17 (TokenValue!3309) Bool)

(assert (=> b!1654339 (= e!1060806 (inv!17 (value!101414 (h!23656 tokens!457))))))

(declare-fun b!1654340 () Bool)

(declare-fun res!741752 () Bool)

(assert (=> b!1654340 (=> res!741752 e!1060808)))

(assert (=> b!1654340 (= res!741752 (not ((_ is IntegerValue!9929) (value!101414 (h!23656 tokens!457)))))))

(assert (=> b!1654340 (= e!1060806 e!1060808)))

(assert (= (and d!499072 c!269121) b!1654337))

(assert (= (and d!499072 (not c!269121)) b!1654338))

(assert (= (and b!1654338 c!269122) b!1654339))

(assert (= (and b!1654338 (not c!269122)) b!1654340))

(assert (= (and b!1654340 (not res!741752)) b!1654336))

(declare-fun m!2007381 () Bool)

(assert (=> b!1654336 m!2007381))

(declare-fun m!2007383 () Bool)

(assert (=> b!1654337 m!2007383))

(declare-fun m!2007385 () Bool)

(assert (=> b!1654339 m!2007385))

(assert (=> b!1653706 d!499072))

(declare-fun b!1654397 () Bool)

(declare-fun e!1060845 () Bool)

(assert (=> b!1654397 (= e!1060845 true)))

(declare-fun b!1654396 () Bool)

(declare-fun e!1060844 () Bool)

(assert (=> b!1654396 (= e!1060844 e!1060845)))

(declare-fun b!1654395 () Bool)

(declare-fun e!1060843 () Bool)

(assert (=> b!1654395 (= e!1060843 e!1060844)))

(declare-fun d!499074 () Bool)

(assert (=> d!499074 e!1060843))

(assert (= b!1654396 b!1654397))

(assert (= b!1654395 b!1654396))

(assert (= (and d!499074 ((_ is Cons!18256) rules!1846)) b!1654395))

(declare-fun order!10899 () Int)

(declare-fun lambda!67743 () Int)

(declare-fun order!10897 () Int)

(declare-fun dynLambda!8186 (Int Int) Int)

(declare-fun dynLambda!8187 (Int Int) Int)

(assert (=> b!1654397 (< (dynLambda!8186 order!10897 (toValue!4670 (transformation!3219 (h!23657 rules!1846)))) (dynLambda!8187 order!10899 lambda!67743))))

(declare-fun order!10901 () Int)

(declare-fun dynLambda!8188 (Int Int) Int)

(assert (=> b!1654397 (< (dynLambda!8188 order!10901 (toChars!4529 (transformation!3219 (h!23657 rules!1846)))) (dynLambda!8187 order!10899 lambda!67743))))

(assert (=> d!499074 true))

(declare-fun lt!616495 () Bool)

(declare-fun forall!4153 (List!18325 Int) Bool)

(assert (=> d!499074 (= lt!616495 (forall!4153 tokens!457 lambda!67743))))

(declare-fun e!1060835 () Bool)

(assert (=> d!499074 (= lt!616495 e!1060835)))

(declare-fun res!741766 () Bool)

(assert (=> d!499074 (=> res!741766 e!1060835)))

(assert (=> d!499074 (= res!741766 (not ((_ is Cons!18255) tokens!457)))))

(assert (=> d!499074 (not (isEmpty!11291 rules!1846))))

(assert (=> d!499074 (= (rulesProduceEachTokenIndividuallyList!1050 thiss!17113 rules!1846 tokens!457) lt!616495)))

(declare-fun b!1654385 () Bool)

(declare-fun e!1060836 () Bool)

(assert (=> b!1654385 (= e!1060835 e!1060836)))

(declare-fun res!741765 () Bool)

(assert (=> b!1654385 (=> (not res!741765) (not e!1060836))))

(assert (=> b!1654385 (= res!741765 (rulesProduceIndividualToken!1496 thiss!17113 rules!1846 (h!23656 tokens!457)))))

(declare-fun b!1654386 () Bool)

(assert (=> b!1654386 (= e!1060836 (rulesProduceEachTokenIndividuallyList!1050 thiss!17113 rules!1846 (t!151120 tokens!457)))))

(assert (= (and d!499074 (not res!741766)) b!1654385))

(assert (= (and b!1654385 res!741765) b!1654386))

(declare-fun m!2007523 () Bool)

(assert (=> d!499074 m!2007523))

(assert (=> d!499074 m!2005939))

(assert (=> b!1654385 m!2005969))

(declare-fun m!2007525 () Bool)

(assert (=> b!1654386 m!2007525))

(assert (=> b!1653705 d!499074))

(declare-fun b!1654410 () Bool)

(declare-fun b_free!44959 () Bool)

(declare-fun b_next!45663 () Bool)

(assert (=> b!1654410 (= b_free!44959 (not b_next!45663))))

(declare-fun tp!478320 () Bool)

(declare-fun b_and!117453 () Bool)

(assert (=> b!1654410 (= tp!478320 b_and!117453)))

(declare-fun b_free!44961 () Bool)

(declare-fun b_next!45665 () Bool)

(assert (=> b!1654410 (= b_free!44961 (not b_next!45665))))

(declare-fun t!151149 () Bool)

(declare-fun tb!94719 () Bool)

(assert (=> (and b!1654410 (= (toChars!4529 (transformation!3219 (h!23657 (t!151121 rules!1846)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457))))) t!151149) tb!94719))

(declare-fun result!114444 () Bool)

(assert (= result!114444 result!114422))

(assert (=> b!1653732 t!151149))

(assert (=> d!498848 t!151149))

(declare-fun t!151151 () Bool)

(declare-fun tb!94721 () Bool)

(assert (=> (and b!1654410 (= (toChars!4529 (transformation!3219 (h!23657 (t!151121 rules!1846)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457)))))) t!151151) tb!94721))

(declare-fun result!114446 () Bool)

(assert (= result!114446 result!114438))

(assert (=> d!499054 t!151151))

(declare-fun tp!478322 () Bool)

(declare-fun b_and!117455 () Bool)

(assert (=> b!1654410 (= tp!478322 (and (=> t!151149 result!114444) (=> t!151151 result!114446) b_and!117455))))

(declare-fun e!1060856 () Bool)

(assert (=> b!1654410 (= e!1060856 (and tp!478320 tp!478322))))

(declare-fun e!1060855 () Bool)

(declare-fun b!1654409 () Bool)

(declare-fun tp!478319 () Bool)

(assert (=> b!1654409 (= e!1060855 (and tp!478319 (inv!23608 (tag!3501 (h!23657 (t!151121 rules!1846)))) (inv!23611 (transformation!3219 (h!23657 (t!151121 rules!1846)))) e!1060856))))

(declare-fun b!1654408 () Bool)

(declare-fun e!1060854 () Bool)

(declare-fun tp!478321 () Bool)

(assert (=> b!1654408 (= e!1060854 (and e!1060855 tp!478321))))

(assert (=> b!1653702 (= tp!478298 e!1060854)))

(assert (= b!1654409 b!1654410))

(assert (= b!1654408 b!1654409))

(assert (= (and b!1653702 ((_ is Cons!18256) (t!151121 rules!1846))) b!1654408))

(declare-fun m!2007527 () Bool)

(assert (=> b!1654409 m!2007527))

(declare-fun m!2007529 () Bool)

(assert (=> b!1654409 m!2007529))

(declare-fun b!1654424 () Bool)

(declare-fun e!1060860 () Bool)

(declare-fun tp!478335 () Bool)

(declare-fun tp!478337 () Bool)

(assert (=> b!1654424 (= e!1060860 (and tp!478335 tp!478337))))

(declare-fun b!1654422 () Bool)

(declare-fun tp!478336 () Bool)

(declare-fun tp!478334 () Bool)

(assert (=> b!1654422 (= e!1060860 (and tp!478336 tp!478334))))

(declare-fun b!1654421 () Bool)

(declare-fun tp_is_empty!7371 () Bool)

(assert (=> b!1654421 (= e!1060860 tp_is_empty!7371)))

(declare-fun b!1654423 () Bool)

(declare-fun tp!478333 () Bool)

(assert (=> b!1654423 (= e!1060860 tp!478333)))

(assert (=> b!1653708 (= tp!478301 e!1060860)))

(assert (= (and b!1653708 ((_ is ElementMatch!4547) (regex!3219 (h!23657 rules!1846)))) b!1654421))

(assert (= (and b!1653708 ((_ is Concat!7857) (regex!3219 (h!23657 rules!1846)))) b!1654422))

(assert (= (and b!1653708 ((_ is Star!4547) (regex!3219 (h!23657 rules!1846)))) b!1654423))

(assert (= (and b!1653708 ((_ is Union!4547) (regex!3219 (h!23657 rules!1846)))) b!1654424))

(declare-fun b!1654438 () Bool)

(declare-fun b_free!44963 () Bool)

(declare-fun b_next!45667 () Bool)

(assert (=> b!1654438 (= b_free!44963 (not b_next!45667))))

(declare-fun tp!478352 () Bool)

(declare-fun b_and!117457 () Bool)

(assert (=> b!1654438 (= tp!478352 b_and!117457)))

(declare-fun b_free!44965 () Bool)

(declare-fun b_next!45669 () Bool)

(assert (=> b!1654438 (= b_free!44965 (not b_next!45669))))

(declare-fun t!151153 () Bool)

(declare-fun tb!94723 () Bool)

(assert (=> (and b!1654438 (= (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457))))) t!151153) tb!94723))

(declare-fun result!114452 () Bool)

(assert (= result!114452 result!114422))

(assert (=> b!1653732 t!151153))

(assert (=> d!498848 t!151153))

(declare-fun t!151155 () Bool)

(declare-fun tb!94725 () Bool)

(assert (=> (and b!1654438 (= (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457)))))) t!151155) tb!94725))

(declare-fun result!114454 () Bool)

(assert (= result!114454 result!114438))

(assert (=> d!499054 t!151155))

(declare-fun tp!478348 () Bool)

(declare-fun b_and!117459 () Bool)

(assert (=> b!1654438 (= tp!478348 (and (=> t!151153 result!114452) (=> t!151155 result!114454) b_and!117459))))

(declare-fun e!1060874 () Bool)

(assert (=> b!1653709 (= tp!478300 e!1060874)))

(declare-fun e!1060878 () Bool)

(assert (=> b!1654438 (= e!1060878 (and tp!478352 tp!478348))))

(declare-fun e!1060877 () Bool)

(declare-fun tp!478351 () Bool)

(declare-fun b!1654437 () Bool)

(assert (=> b!1654437 (= e!1060877 (and tp!478351 (inv!23608 (tag!3501 (rule!5085 (h!23656 (t!151120 tokens!457))))) (inv!23611 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) e!1060878))))

(declare-fun b!1654435 () Bool)

(declare-fun tp!478350 () Bool)

(declare-fun e!1060873 () Bool)

(assert (=> b!1654435 (= e!1060874 (and (inv!23612 (h!23656 (t!151120 tokens!457))) e!1060873 tp!478350))))

(declare-fun tp!478349 () Bool)

(declare-fun b!1654436 () Bool)

(assert (=> b!1654436 (= e!1060873 (and (inv!21 (value!101414 (h!23656 (t!151120 tokens!457)))) e!1060877 tp!478349))))

(assert (= b!1654437 b!1654438))

(assert (= b!1654436 b!1654437))

(assert (= b!1654435 b!1654436))

(assert (= (and b!1653709 ((_ is Cons!18255) (t!151120 tokens!457))) b!1654435))

(declare-fun m!2007531 () Bool)

(assert (=> b!1654437 m!2007531))

(declare-fun m!2007533 () Bool)

(assert (=> b!1654437 m!2007533))

(declare-fun m!2007535 () Bool)

(assert (=> b!1654435 m!2007535))

(declare-fun m!2007537 () Bool)

(assert (=> b!1654436 m!2007537))

(declare-fun b!1654443 () Bool)

(declare-fun e!1060881 () Bool)

(declare-fun tp!478355 () Bool)

(assert (=> b!1654443 (= e!1060881 (and tp_is_empty!7371 tp!478355))))

(assert (=> b!1653706 (= tp!478295 e!1060881)))

(assert (= (and b!1653706 ((_ is Cons!18253) (originalCharacters!4033 (h!23656 tokens!457)))) b!1654443))

(declare-fun b!1654447 () Bool)

(declare-fun e!1060882 () Bool)

(declare-fun tp!478358 () Bool)

(declare-fun tp!478360 () Bool)

(assert (=> b!1654447 (= e!1060882 (and tp!478358 tp!478360))))

(declare-fun b!1654445 () Bool)

(declare-fun tp!478359 () Bool)

(declare-fun tp!478357 () Bool)

(assert (=> b!1654445 (= e!1060882 (and tp!478359 tp!478357))))

(declare-fun b!1654444 () Bool)

(assert (=> b!1654444 (= e!1060882 tp_is_empty!7371)))

(declare-fun b!1654446 () Bool)

(declare-fun tp!478356 () Bool)

(assert (=> b!1654446 (= e!1060882 tp!478356)))

(assert (=> b!1653716 (= tp!478302 e!1060882)))

(assert (= (and b!1653716 ((_ is ElementMatch!4547) (regex!3219 (rule!5085 (h!23656 tokens!457))))) b!1654444))

(assert (= (and b!1653716 ((_ is Concat!7857) (regex!3219 (rule!5085 (h!23656 tokens!457))))) b!1654445))

(assert (= (and b!1653716 ((_ is Star!4547) (regex!3219 (rule!5085 (h!23656 tokens!457))))) b!1654446))

(assert (= (and b!1653716 ((_ is Union!4547) (regex!3219 (rule!5085 (h!23656 tokens!457))))) b!1654447))

(declare-fun b_lambda!51965 () Bool)

(assert (= b_lambda!51955 (or (and b!1653718 b_free!44953 (= (toChars!4529 (transformation!3219 (h!23657 rules!1846))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))))) (and b!1653720 b_free!44957) (and b!1654410 b_free!44961 (= (toChars!4529 (transformation!3219 (h!23657 (t!151121 rules!1846)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))))) (and b!1654438 b_free!44965 (= (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))))) b_lambda!51965)))

(declare-fun b_lambda!51967 () Bool)

(assert (= b_lambda!51963 (or (and b!1653718 b_free!44953 (= (toChars!4529 (transformation!3219 (h!23657 rules!1846))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))))) (and b!1653720 b_free!44957 (= (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))))) (and b!1654410 b_free!44961 (= (toChars!4529 (transformation!3219 (h!23657 (t!151121 rules!1846)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))))) (and b!1654438 b_free!44965) b_lambda!51967)))

(declare-fun b_lambda!51969 () Bool)

(assert (= b_lambda!51953 (or (and b!1653718 b_free!44953 (= (toChars!4529 (transformation!3219 (h!23657 rules!1846))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))))) (and b!1653720 b_free!44957) (and b!1654410 b_free!44961 (= (toChars!4529 (transformation!3219 (h!23657 (t!151121 rules!1846)))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))))) (and b!1654438 b_free!44965 (= (toChars!4529 (transformation!3219 (rule!5085 (h!23656 (t!151120 tokens!457))))) (toChars!4529 (transformation!3219 (rule!5085 (h!23656 tokens!457)))))) b_lambda!51969)))

(check-sat (not d!498820) (not b!1654234) (not b!1654171) (not d!498908) (not b_next!45659) (not b!1654283) (not d!498824) (not d!498996) (not b!1654150) (not d!499074) (not b!1654422) (not b!1654306) (not b!1654301) (not d!498828) (not b!1654304) (not b!1653817) (not b!1653781) (not d!499046) (not d!498844) (not d!498830) (not b!1653917) (not d!499068) (not b!1653762) (not b!1653738) (not b!1654269) (not d!499016) (not b_next!45661) b_and!117457 (not tb!94715) (not b!1654262) (not b!1653764) (not b!1653906) (not d!498990) b_and!117459 (not d!499020) (not b!1654315) (not b_next!45667) (not b!1654169) (not b!1654197) (not b!1654143) (not b!1654298) (not b!1654154) (not b!1653905) (not b!1653807) (not b!1654277) (not b!1653806) (not d!499006) (not b_next!45665) (not d!498902) b_and!117425 (not b!1654395) (not b!1654447) (not b!1654161) (not d!499042) (not d!499050) (not d!499058) (not b!1654149) (not b!1654239) (not d!498868) (not b!1654146) (not b!1654270) (not b_next!45657) (not b!1654155) (not b!1654261) (not b!1653763) (not b!1654446) (not b!1654445) (not b_next!45655) (not d!499014) (not d!498826) (not b!1654297) (not b!1654271) (not b!1654235) (not d!498842) (not d!498992) (not b!1654140) (not b!1653758) (not b!1653770) (not d!499040) (not b!1654158) (not b!1654260) (not b!1654437) (not b!1653913) (not b!1654386) (not b!1654409) (not d!499048) (not d!499036) (not d!499026) (not d!498850) (not d!498866) (not b!1653759) (not b!1654424) (not b!1653907) (not b!1654295) (not b!1654436) (not d!498858) (not b!1654156) b_and!117455 (not d!499000) (not b!1653803) (not b!1654194) (not b!1653774) (not b!1654317) (not b!1654313) (not b!1654316) (not b!1653727) (not d!498840) (not b!1654237) (not b!1653761) (not d!499052) (not d!499002) (not b!1654339) (not b!1654296) (not d!499008) (not b!1654166) (not b!1654170) (not b!1654175) (not d!498860) (not d!498846) (not b!1654443) (not d!498836) (not d!499060) (not d!498994) (not b!1654276) (not b!1654196) (not b!1654241) (not b!1654307) (not b!1654337) (not b!1654167) (not b!1654423) (not bm!106056) (not b_lambda!51969) (not b!1653732) (not b!1653914) (not b!1653757) (not b!1654286) (not d!499032) (not d!499038) b_and!117453 (not d!499012) (not b!1654336) (not b!1653805) b_and!117451 (not b!1654228) (not b!1654192) b_and!117449 (not b!1654199) (not b!1653733) (not d!498904) (not d!499064) (not b!1653783) (not b!1654168) (not b!1654195) (not b_lambda!51965) (not d!499066) (not b!1654302) (not bm!106072) (not b!1654152) (not b!1654151) (not d!499044) (not b!1654144) (not d!499062) (not bm!106068) (not d!498838) (not d!499018) (not d!499070) (not b!1654165) (not b!1654162) (not b!1654173) (not tb!94703) (not b!1654280) (not b!1654435) (not b!1654249) (not bm!106075) (not b!1654138) (not b!1654250) tp_is_empty!7371 (not b!1654303) (not d!499024) (not d!498864) (not b!1653818) (not b_lambda!51967) (not b_next!45663) (not b!1654153) (not b!1654145) (not b!1654193) (not b!1653916) (not b!1654408) (not b!1654157) (not d!499054) (not d!498862) (not b!1654172) (not d!499034) (not bm!106069) (not b!1654164) (not d!499010) (not b!1653760) (not b_next!45669) b_and!117421 (not d!498848) (not b!1654385))
(check-sat (not b_next!45659) (not b_next!45665) b_and!117425 (not b_next!45657) (not b_next!45655) b_and!117455 b_and!117453 b_and!117451 b_and!117449 (not b_next!45663) (not b_next!45661) b_and!117457 b_and!117459 (not b_next!45667) (not b_next!45669) b_and!117421)
