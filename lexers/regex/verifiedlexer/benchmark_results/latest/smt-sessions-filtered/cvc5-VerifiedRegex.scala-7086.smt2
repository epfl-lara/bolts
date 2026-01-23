; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!375650 () Bool)

(assert start!375650)

(declare-fun b!3991559 () Bool)

(declare-fun b_free!110873 () Bool)

(declare-fun b_next!111577 () Bool)

(assert (=> b!3991559 (= b_free!110873 (not b_next!111577))))

(declare-fun tp!1215755 () Bool)

(declare-fun b_and!306663 () Bool)

(assert (=> b!3991559 (= tp!1215755 b_and!306663)))

(declare-fun b_free!110875 () Bool)

(declare-fun b_next!111579 () Bool)

(assert (=> b!3991559 (= b_free!110875 (not b_next!111579))))

(declare-fun tp!1215756 () Bool)

(declare-fun b_and!306665 () Bool)

(assert (=> b!3991559 (= tp!1215756 b_and!306665)))

(declare-fun b!3991560 () Bool)

(declare-fun b_free!110877 () Bool)

(declare-fun b_next!111581 () Bool)

(assert (=> b!3991560 (= b_free!110877 (not b_next!111581))))

(declare-fun tp!1215751 () Bool)

(declare-fun b_and!306667 () Bool)

(assert (=> b!3991560 (= tp!1215751 b_and!306667)))

(declare-fun b_free!110879 () Bool)

(declare-fun b_next!111583 () Bool)

(assert (=> b!3991560 (= b_free!110879 (not b_next!111583))))

(declare-fun tp!1215759 () Bool)

(declare-fun b_and!306669 () Bool)

(assert (=> b!3991560 (= tp!1215759 b_and!306669)))

(declare-fun b!3991517 () Bool)

(declare-fun e!2474396 () Bool)

(declare-fun e!2474407 () Bool)

(assert (=> b!3991517 (= e!2474396 e!2474407)))

(declare-fun res!1620005 () Bool)

(assert (=> b!3991517 (=> res!1620005 e!2474407)))

(declare-datatypes ((C!23514 0))(
  ( (C!23515 (val!13851 Int)) )
))
(declare-datatypes ((List!42817 0))(
  ( (Nil!42693) (Cons!42693 (h!48113 C!23514) (t!331808 List!42817)) )
))
(declare-fun lt!1407472 () List!42817)

(declare-fun lt!1407442 () List!42817)

(declare-fun lt!1407482 () List!42817)

(assert (=> b!3991517 (= res!1620005 (or (not (= lt!1407442 lt!1407472)) (not (= lt!1407442 lt!1407482))))))

(assert (=> b!3991517 (= lt!1407472 lt!1407482)))

(declare-fun lt!1407485 () List!42817)

(declare-fun lt!1407487 () List!42817)

(declare-fun ++!11161 (List!42817 List!42817) List!42817)

(assert (=> b!3991517 (= lt!1407482 (++!11161 lt!1407485 lt!1407487))))

(declare-fun lt!1407486 () List!42817)

(declare-fun suffix!1299 () List!42817)

(assert (=> b!3991517 (= lt!1407472 (++!11161 lt!1407486 suffix!1299))))

(declare-fun lt!1407436 () List!42817)

(assert (=> b!3991517 (= lt!1407487 (++!11161 lt!1407436 suffix!1299))))

(declare-datatypes ((Unit!61477 0))(
  ( (Unit!61478) )
))
(declare-fun lt!1407479 () Unit!61477)

(declare-fun lemmaConcatAssociativity!2481 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> b!3991517 (= lt!1407479 (lemmaConcatAssociativity!2481 lt!1407485 lt!1407436 suffix!1299))))

(declare-fun tp!1215754 () Bool)

(declare-datatypes ((IArray!25945 0))(
  ( (IArray!25946 (innerList!13030 List!42817)) )
))
(declare-datatypes ((Conc!12970 0))(
  ( (Node!12970 (left!32256 Conc!12970) (right!32586 Conc!12970) (csize!26170 Int) (cheight!13181 Int)) (Leaf!20057 (xs!16276 IArray!25945) (csize!26171 Int)) (Empty!12970) )
))
(declare-datatypes ((BalanceConc!25534 0))(
  ( (BalanceConc!25535 (c!690783 Conc!12970)) )
))
(declare-datatypes ((List!42818 0))(
  ( (Nil!42694) (Cons!42694 (h!48114 (_ BitVec 16)) (t!331809 List!42818)) )
))
(declare-datatypes ((TokenValue!6989 0))(
  ( (FloatLiteralValue!13978 (text!49368 List!42818)) (TokenValueExt!6988 (__x!26195 Int)) (Broken!34945 (value!213241 List!42818)) (Object!7112) (End!6989) (Def!6989) (Underscore!6989) (Match!6989) (Else!6989) (Error!6989) (Case!6989) (If!6989) (Extends!6989) (Abstract!6989) (Class!6989) (Val!6989) (DelimiterValue!13978 (del!7049 List!42818)) (KeywordValue!6995 (value!213242 List!42818)) (CommentValue!13978 (value!213243 List!42818)) (WhitespaceValue!13978 (value!213244 List!42818)) (IndentationValue!6989 (value!213245 List!42818)) (String!48664) (Int32!6989) (Broken!34946 (value!213246 List!42818)) (Boolean!6990) (Unit!61479) (OperatorValue!6992 (op!7049 List!42818)) (IdentifierValue!13978 (value!213247 List!42818)) (IdentifierValue!13979 (value!213248 List!42818)) (WhitespaceValue!13979 (value!213249 List!42818)) (True!13978) (False!13978) (Broken!34947 (value!213250 List!42818)) (Broken!34948 (value!213251 List!42818)) (True!13979) (RightBrace!6989) (RightBracket!6989) (Colon!6989) (Null!6989) (Comma!6989) (LeftBracket!6989) (False!13979) (LeftBrace!6989) (ImaginaryLiteralValue!6989 (text!49369 List!42818)) (StringLiteralValue!20967 (value!213252 List!42818)) (EOFValue!6989 (value!213253 List!42818)) (IdentValue!6989 (value!213254 List!42818)) (DelimiterValue!13979 (value!213255 List!42818)) (DedentValue!6989 (value!213256 List!42818)) (NewLineValue!6989 (value!213257 List!42818)) (IntegerValue!20967 (value!213258 (_ BitVec 32)) (text!49370 List!42818)) (IntegerValue!20968 (value!213259 Int) (text!49371 List!42818)) (Times!6989) (Or!6989) (Equal!6989) (Minus!6989) (Broken!34949 (value!213260 List!42818)) (And!6989) (Div!6989) (LessEqual!6989) (Mod!6989) (Concat!18653) (Not!6989) (Plus!6989) (SpaceValue!6989 (value!213261 List!42818)) (IntegerValue!20969 (value!213262 Int) (text!49372 List!42818)) (StringLiteralValue!20968 (text!49373 List!42818)) (FloatLiteralValue!13979 (text!49374 List!42818)) (BytesLiteralValue!6989 (value!213263 List!42818)) (CommentValue!13979 (value!213264 List!42818)) (StringLiteralValue!20969 (value!213265 List!42818)) (ErrorTokenValue!6989 (msg!7050 List!42818)) )
))
(declare-datatypes ((Regex!11664 0))(
  ( (ElementMatch!11664 (c!690784 C!23514)) (Concat!18654 (regOne!23840 Regex!11664) (regTwo!23840 Regex!11664)) (EmptyExpr!11664) (Star!11664 (reg!11993 Regex!11664)) (EmptyLang!11664) (Union!11664 (regOne!23841 Regex!11664) (regTwo!23841 Regex!11664)) )
))
(declare-datatypes ((String!48665 0))(
  ( (String!48666 (value!213266 String)) )
))
(declare-datatypes ((TokenValueInjection!13406 0))(
  ( (TokenValueInjection!13407 (toValue!9247 Int) (toChars!9106 Int)) )
))
(declare-datatypes ((Rule!13318 0))(
  ( (Rule!13319 (regex!6759 Regex!11664) (tag!7619 String!48665) (isSeparator!6759 Bool) (transformation!6759 TokenValueInjection!13406)) )
))
(declare-datatypes ((Token!12656 0))(
  ( (Token!12657 (value!213267 TokenValue!6989) (rule!9779 Rule!13318) (size!31930 Int) (originalCharacters!7359 List!42817)) )
))
(declare-fun token!484 () Token!12656)

(declare-fun e!2474418 () Bool)

(declare-fun b!3991518 () Bool)

(declare-fun e!2474429 () Bool)

(declare-fun inv!21 (TokenValue!6989) Bool)

(assert (=> b!3991518 (= e!2474418 (and (inv!21 (value!213267 token!484)) e!2474429 tp!1215754))))

(declare-fun b!3991519 () Bool)

(declare-fun e!2474404 () Bool)

(declare-fun tp_is_empty!20299 () Bool)

(declare-fun tp!1215760 () Bool)

(assert (=> b!3991519 (= e!2474404 (and tp_is_empty!20299 tp!1215760))))

(declare-fun b!3991520 () Bool)

(declare-fun e!2474424 () Bool)

(declare-fun e!2474395 () Bool)

(assert (=> b!3991520 (= e!2474424 e!2474395)))

(declare-fun res!1620006 () Bool)

(assert (=> b!3991520 (=> res!1620006 e!2474395)))

(declare-datatypes ((tuple2!41894 0))(
  ( (tuple2!41895 (_1!24081 Token!12656) (_2!24081 List!42817)) )
))
(declare-datatypes ((Option!9173 0))(
  ( (None!9172) (Some!9172 (v!39528 tuple2!41894)) )
))
(declare-fun lt!1407489 () Option!9173)

(declare-fun lt!1407469 () Option!9173)

(assert (=> b!3991520 (= res!1620006 (not (= lt!1407489 (Some!9172 (v!39528 lt!1407469)))))))

(declare-fun lt!1407430 () List!42817)

(declare-fun newSuffixResult!27 () List!42817)

(declare-fun isPrefix!3846 (List!42817 List!42817) Bool)

(assert (=> b!3991520 (isPrefix!3846 lt!1407430 (++!11161 lt!1407430 newSuffixResult!27))))

(declare-fun lt!1407458 () Unit!61477)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2689 (List!42817 List!42817) Unit!61477)

(assert (=> b!3991520 (= lt!1407458 (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407430 newSuffixResult!27))))

(declare-fun lt!1407483 () List!42817)

(assert (=> b!3991520 (isPrefix!3846 lt!1407430 lt!1407483)))

(assert (=> b!3991520 (= lt!1407483 (++!11161 lt!1407430 (_2!24081 (v!39528 lt!1407469))))))

(declare-fun lt!1407435 () Unit!61477)

(assert (=> b!3991520 (= lt!1407435 (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407430 (_2!24081 (v!39528 lt!1407469))))))

(declare-fun lt!1407484 () Int)

(declare-fun lt!1407460 () TokenValue!6989)

(assert (=> b!3991520 (= lt!1407489 (Some!9172 (tuple2!41895 (Token!12657 lt!1407460 (rule!9779 (_1!24081 (v!39528 lt!1407469))) lt!1407484 lt!1407430) (_2!24081 (v!39528 lt!1407469)))))))

(declare-fun lt!1407439 () List!42817)

(declare-datatypes ((LexerInterface!6348 0))(
  ( (LexerInterfaceExt!6345 (__x!26196 Int)) (Lexer!6346) )
))
(declare-fun thiss!21717 () LexerInterface!6348)

(declare-fun maxPrefixOneRule!2680 (LexerInterface!6348 Rule!13318 List!42817) Option!9173)

(assert (=> b!3991520 (= lt!1407489 (maxPrefixOneRule!2680 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))) lt!1407439))))

(declare-fun size!31931 (List!42817) Int)

(assert (=> b!3991520 (= lt!1407484 (size!31931 lt!1407430))))

(declare-fun apply!9970 (TokenValueInjection!13406 BalanceConc!25534) TokenValue!6989)

(declare-fun seqFromList!4998 (List!42817) BalanceConc!25534)

(assert (=> b!3991520 (= lt!1407460 (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (seqFromList!4998 lt!1407430)))))

(declare-fun lt!1407451 () Unit!61477)

(declare-datatypes ((List!42819 0))(
  ( (Nil!42695) (Cons!42695 (h!48115 Rule!13318) (t!331810 List!42819)) )
))
(declare-fun rules!2999 () List!42819)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1502 (LexerInterface!6348 List!42819 List!42817 List!42817 List!42817 Rule!13318) Unit!61477)

(assert (=> b!3991520 (= lt!1407451 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1502 thiss!21717 rules!2999 lt!1407430 lt!1407439 (_2!24081 (v!39528 lt!1407469)) (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))

(declare-fun list!15851 (BalanceConc!25534) List!42817)

(declare-fun charsOf!4575 (Token!12656) BalanceConc!25534)

(assert (=> b!3991520 (= lt!1407430 (list!15851 (charsOf!4575 (_1!24081 (v!39528 lt!1407469)))))))

(declare-fun lt!1407444 () Unit!61477)

(declare-fun lemmaInv!974 (TokenValueInjection!13406) Unit!61477)

(assert (=> b!3991520 (= lt!1407444 (lemmaInv!974 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))

(declare-fun ruleValid!2691 (LexerInterface!6348 Rule!13318) Bool)

(assert (=> b!3991520 (ruleValid!2691 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))

(declare-fun lt!1407433 () Unit!61477)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1765 (LexerInterface!6348 Rule!13318 List!42819) Unit!61477)

(assert (=> b!3991520 (= lt!1407433 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1765 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))) rules!2999))))

(declare-fun lt!1407453 () Unit!61477)

(declare-fun lemmaCharactersSize!1354 (Token!12656) Unit!61477)

(assert (=> b!3991520 (= lt!1407453 (lemmaCharactersSize!1354 token!484))))

(declare-fun lt!1407449 () Unit!61477)

(assert (=> b!3991520 (= lt!1407449 (lemmaCharactersSize!1354 (_1!24081 (v!39528 lt!1407469))))))

(declare-fun b!3991521 () Bool)

(declare-fun e!2474416 () Bool)

(declare-fun e!2474417 () Bool)

(assert (=> b!3991521 (= e!2474416 e!2474417)))

(declare-fun res!1620014 () Bool)

(assert (=> b!3991521 (=> res!1620014 e!2474417)))

(declare-fun lt!1407454 () List!42817)

(assert (=> b!3991521 (= res!1620014 (not (= lt!1407454 lt!1407442)))))

(declare-fun lt!1407465 () List!42817)

(assert (=> b!3991521 (= lt!1407454 (++!11161 lt!1407485 lt!1407465))))

(declare-fun getSuffix!2277 (List!42817 List!42817) List!42817)

(assert (=> b!3991521 (= lt!1407465 (getSuffix!2277 lt!1407442 lt!1407485))))

(declare-fun e!2474428 () Bool)

(assert (=> b!3991521 e!2474428))

(declare-fun res!1620018 () Bool)

(assert (=> b!3991521 (=> (not res!1620018) (not e!2474428))))

(assert (=> b!3991521 (= res!1620018 (isPrefix!3846 lt!1407442 lt!1407442))))

(declare-fun lt!1407432 () Unit!61477)

(declare-fun lemmaIsPrefixRefl!2438 (List!42817 List!42817) Unit!61477)

(assert (=> b!3991521 (= lt!1407432 (lemmaIsPrefixRefl!2438 lt!1407442 lt!1407442))))

(declare-fun b!3991522 () Bool)

(declare-fun e!2474412 () Bool)

(declare-fun e!2474409 () Bool)

(assert (=> b!3991522 (= e!2474412 e!2474409)))

(declare-fun res!1620003 () Bool)

(assert (=> b!3991522 (=> res!1620003 e!2474409)))

(assert (=> b!3991522 (= res!1620003 (not (isPrefix!3846 lt!1407485 lt!1407442)))))

(declare-fun prefix!494 () List!42817)

(assert (=> b!3991522 (isPrefix!3846 prefix!494 lt!1407442)))

(declare-fun lt!1407461 () Unit!61477)

(assert (=> b!3991522 (= lt!1407461 (lemmaConcatTwoListThenFirstIsPrefix!2689 prefix!494 suffix!1299))))

(declare-fun lt!1407476 () List!42817)

(assert (=> b!3991522 (isPrefix!3846 lt!1407485 lt!1407476)))

(declare-fun lt!1407459 () Unit!61477)

(declare-fun suffixResult!105 () List!42817)

(assert (=> b!3991522 (= lt!1407459 (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407485 suffixResult!105))))

(declare-fun b!3991523 () Bool)

(declare-fun res!1620025 () Bool)

(declare-fun e!2474420 () Bool)

(assert (=> b!3991523 (=> res!1620025 e!2474420)))

(assert (=> b!3991523 (= res!1620025 (not (isPrefix!3846 lt!1407430 lt!1407439)))))

(declare-fun res!1620027 () Bool)

(declare-fun e!2474400 () Bool)

(assert (=> start!375650 (=> (not res!1620027) (not e!2474400))))

(assert (=> start!375650 (= res!1620027 (is-Lexer!6346 thiss!21717))))

(assert (=> start!375650 e!2474400))

(declare-fun e!2474419 () Bool)

(assert (=> start!375650 e!2474419))

(declare-fun inv!57025 (Token!12656) Bool)

(assert (=> start!375650 (and (inv!57025 token!484) e!2474418)))

(declare-fun e!2474421 () Bool)

(assert (=> start!375650 e!2474421))

(declare-fun e!2474410 () Bool)

(assert (=> start!375650 e!2474410))

(assert (=> start!375650 e!2474404))

(assert (=> start!375650 true))

(declare-fun e!2474431 () Bool)

(assert (=> start!375650 e!2474431))

(declare-fun e!2474397 () Bool)

(assert (=> start!375650 e!2474397))

(declare-fun tp!1215749 () Bool)

(declare-fun b!3991524 () Bool)

(declare-fun e!2474415 () Bool)

(declare-fun inv!57022 (String!48665) Bool)

(declare-fun inv!57026 (TokenValueInjection!13406) Bool)

(assert (=> b!3991524 (= e!2474429 (and tp!1215749 (inv!57022 (tag!7619 (rule!9779 token!484))) (inv!57026 (transformation!6759 (rule!9779 token!484))) e!2474415))))

(declare-fun b!3991525 () Bool)

(declare-fun res!1620024 () Bool)

(assert (=> b!3991525 (=> (not res!1620024) (not e!2474400))))

(declare-fun rulesInvariant!5691 (LexerInterface!6348 List!42819) Bool)

(assert (=> b!3991525 (= res!1620024 (rulesInvariant!5691 thiss!21717 rules!2999))))

(declare-fun b!3991526 () Bool)

(declare-fun e!2474426 () Bool)

(assert (=> b!3991526 (= e!2474395 e!2474426)))

(declare-fun res!1620016 () Bool)

(assert (=> b!3991526 (=> res!1620016 e!2474426)))

(declare-fun lt!1407445 () List!42817)

(assert (=> b!3991526 (= res!1620016 (not (= lt!1407445 suffix!1299)))))

(declare-fun newSuffix!27 () List!42817)

(declare-fun lt!1407466 () List!42817)

(assert (=> b!3991526 (= lt!1407445 (++!11161 newSuffix!27 lt!1407466))))

(assert (=> b!3991526 (= lt!1407466 (getSuffix!2277 suffix!1299 newSuffix!27))))

(declare-fun b!3991527 () Bool)

(declare-fun e!2474401 () Unit!61477)

(declare-fun Unit!61480 () Unit!61477)

(assert (=> b!3991527 (= e!2474401 Unit!61480)))

(declare-fun b!3991528 () Bool)

(declare-fun e!2474406 () Unit!61477)

(declare-fun Unit!61481 () Unit!61477)

(assert (=> b!3991528 (= e!2474406 Unit!61481)))

(declare-fun b!3991529 () Bool)

(declare-fun res!1620009 () Bool)

(assert (=> b!3991529 (=> (not res!1620009) (not e!2474400))))

(assert (=> b!3991529 (= res!1620009 (>= (size!31931 suffix!1299) (size!31931 newSuffix!27)))))

(declare-fun b!3991530 () Bool)

(declare-fun res!1620001 () Bool)

(assert (=> b!3991530 (=> (not res!1620001) (not e!2474428))))

(assert (=> b!3991530 (= res!1620001 (= (size!31930 token!484) (size!31931 (originalCharacters!7359 token!484))))))

(declare-fun b!3991531 () Bool)

(declare-fun e!2474408 () Bool)

(assert (=> b!3991531 (= e!2474408 e!2474420)))

(declare-fun res!1620021 () Bool)

(assert (=> b!3991531 (=> res!1620021 e!2474420)))

(declare-fun lt!1407471 () Int)

(assert (=> b!3991531 (= res!1620021 (not (= lt!1407471 lt!1407484)))))

(declare-fun lt!1407470 () Unit!61477)

(assert (=> b!3991531 (= lt!1407470 e!2474406)))

(declare-fun c!690781 () Bool)

(assert (=> b!3991531 (= c!690781 (< lt!1407484 lt!1407471))))

(declare-fun lt!1407446 () Unit!61477)

(assert (=> b!3991531 (= lt!1407446 e!2474401)))

(declare-fun c!690782 () Bool)

(assert (=> b!3991531 (= c!690782 (> lt!1407484 lt!1407471))))

(declare-fun lt!1407488 () List!42817)

(assert (=> b!3991531 (= (_2!24081 (v!39528 lt!1407469)) lt!1407488)))

(declare-fun lt!1407473 () Unit!61477)

(declare-fun lemmaSamePrefixThenSameSuffix!2033 (List!42817 List!42817 List!42817 List!42817 List!42817) Unit!61477)

(assert (=> b!3991531 (= lt!1407473 (lemmaSamePrefixThenSameSuffix!2033 lt!1407430 (_2!24081 (v!39528 lt!1407469)) lt!1407430 lt!1407488 lt!1407439))))

(declare-fun lt!1407447 () List!42817)

(assert (=> b!3991531 (isPrefix!3846 lt!1407430 lt!1407447)))

(declare-fun lt!1407475 () Unit!61477)

(assert (=> b!3991531 (= lt!1407475 (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407430 lt!1407488))))

(declare-fun b!3991532 () Bool)

(assert (=> b!3991532 (= e!2474428 (and (= (size!31930 token!484) lt!1407471) (= (originalCharacters!7359 token!484) lt!1407485)))))

(declare-fun b!3991533 () Bool)

(declare-fun e!2474430 () Bool)

(declare-fun e!2474422 () Bool)

(assert (=> b!3991533 (= e!2474430 e!2474422)))

(declare-fun res!1620007 () Bool)

(assert (=> b!3991533 (=> (not res!1620007) (not e!2474422))))

(declare-fun lt!1407467 () List!42817)

(assert (=> b!3991533 (= res!1620007 (= lt!1407467 lt!1407439))))

(assert (=> b!3991533 (= lt!1407439 (++!11161 prefix!494 newSuffix!27))))

(assert (=> b!3991533 (= lt!1407467 (++!11161 lt!1407485 newSuffixResult!27))))

(declare-fun b!3991534 () Bool)

(declare-fun e!2474399 () Bool)

(assert (=> b!3991534 (= e!2474426 e!2474399)))

(declare-fun res!1620004 () Bool)

(assert (=> b!3991534 (=> res!1620004 e!2474399)))

(declare-fun lt!1407437 () List!42817)

(assert (=> b!3991534 (= res!1620004 (not (= lt!1407437 lt!1407442)))))

(assert (=> b!3991534 (= lt!1407437 (++!11161 prefix!494 lt!1407445))))

(assert (=> b!3991534 (= lt!1407437 (++!11161 lt!1407439 lt!1407466))))

(declare-fun lt!1407477 () Unit!61477)

(assert (=> b!3991534 (= lt!1407477 (lemmaConcatAssociativity!2481 prefix!494 newSuffix!27 lt!1407466))))

(declare-fun b!3991535 () Bool)

(declare-fun res!1620023 () Bool)

(assert (=> b!3991535 (=> (not res!1620023) (not e!2474428))))

(declare-fun lt!1407428 () TokenValue!6989)

(assert (=> b!3991535 (= res!1620023 (= (value!213267 token!484) lt!1407428))))

(declare-fun b!3991536 () Bool)

(declare-fun tp!1215758 () Bool)

(assert (=> b!3991536 (= e!2474397 (and tp_is_empty!20299 tp!1215758))))

(declare-fun b!3991537 () Bool)

(assert (=> b!3991537 (= e!2474400 e!2474430)))

(declare-fun res!1620015 () Bool)

(assert (=> b!3991537 (=> (not res!1620015) (not e!2474430))))

(declare-fun lt!1407464 () Int)

(assert (=> b!3991537 (= res!1620015 (>= lt!1407464 lt!1407471))))

(assert (=> b!3991537 (= lt!1407471 (size!31931 lt!1407485))))

(assert (=> b!3991537 (= lt!1407464 (size!31931 prefix!494))))

(assert (=> b!3991537 (= lt!1407485 (list!15851 (charsOf!4575 token!484)))))

(declare-fun b!3991538 () Bool)

(declare-fun Unit!61482 () Unit!61477)

(assert (=> b!3991538 (= e!2474406 Unit!61482)))

(declare-fun lt!1407480 () Unit!61477)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!413 (LexerInterface!6348 List!42819 Rule!13318 List!42817 List!42817 List!42817 Rule!13318) Unit!61477)

(assert (=> b!3991538 (= lt!1407480 (lemmaMaxPrefixOutputsMaxPrefix!413 thiss!21717 rules!2999 (rule!9779 (_1!24081 (v!39528 lt!1407469))) lt!1407430 lt!1407439 lt!1407485 (rule!9779 token!484)))))

(assert (=> b!3991538 false))

(declare-fun b!3991539 () Bool)

(assert (=> b!3991539 (= e!2474409 e!2474396)))

(declare-fun res!1620026 () Bool)

(assert (=> b!3991539 (=> res!1620026 e!2474396)))

(assert (=> b!3991539 (= res!1620026 (not (= lt!1407486 prefix!494)))))

(assert (=> b!3991539 (= lt!1407486 (++!11161 lt!1407485 lt!1407436))))

(assert (=> b!3991539 (= lt!1407436 (getSuffix!2277 prefix!494 lt!1407485))))

(assert (=> b!3991539 (isPrefix!3846 lt!1407485 prefix!494)))

(declare-fun lt!1407450 () Unit!61477)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!424 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> b!3991539 (= lt!1407450 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!424 prefix!494 lt!1407485 lt!1407442))))

(declare-fun b!3991540 () Bool)

(declare-fun res!1620017 () Bool)

(assert (=> b!3991540 (=> (not res!1620017) (not e!2474400))))

(declare-fun isEmpty!25515 (List!42819) Bool)

(assert (=> b!3991540 (= res!1620017 (not (isEmpty!25515 rules!2999)))))

(declare-fun b!3991541 () Bool)

(declare-fun Unit!61483 () Unit!61477)

(assert (=> b!3991541 (= e!2474401 Unit!61483)))

(declare-fun lt!1407443 () Unit!61477)

(assert (=> b!3991541 (= lt!1407443 (lemmaMaxPrefixOutputsMaxPrefix!413 thiss!21717 rules!2999 (rule!9779 token!484) lt!1407485 lt!1407442 lt!1407430 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))

(declare-fun res!1620013 () Bool)

(declare-fun matchR!5641 (Regex!11664 List!42817) Bool)

(assert (=> b!3991541 (= res!1620013 (not (matchR!5641 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407430)))))

(declare-fun e!2474423 () Bool)

(assert (=> b!3991541 (=> (not res!1620013) (not e!2474423))))

(assert (=> b!3991541 e!2474423))

(declare-fun b!3991542 () Bool)

(declare-fun e!2474403 () Bool)

(assert (=> b!3991542 (= e!2474403 e!2474408)))

(declare-fun res!1620029 () Bool)

(assert (=> b!3991542 (=> res!1620029 e!2474408)))

(assert (=> b!3991542 (= res!1620029 (not (= lt!1407447 lt!1407439)))))

(assert (=> b!3991542 (= lt!1407447 (++!11161 lt!1407430 lt!1407488))))

(assert (=> b!3991542 (= lt!1407488 (getSuffix!2277 lt!1407439 lt!1407430))))

(declare-fun b!3991543 () Bool)

(assert (=> b!3991543 (= e!2474423 false)))

(declare-fun b!3991544 () Bool)

(declare-fun e!2474398 () Bool)

(assert (=> b!3991544 (= e!2474420 e!2474398)))

(declare-fun res!1620030 () Bool)

(assert (=> b!3991544 (=> res!1620030 e!2474398)))

(declare-fun getIndex!529 (List!42819 Rule!13318) Int)

(assert (=> b!3991544 (= res!1620030 (>= (getIndex!529 rules!2999 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (getIndex!529 rules!2999 (rule!9779 token!484))))))

(assert (=> b!3991544 (= (_2!24081 (v!39528 lt!1407469)) newSuffixResult!27)))

(declare-fun lt!1407456 () Unit!61477)

(assert (=> b!3991544 (= lt!1407456 (lemmaSamePrefixThenSameSuffix!2033 lt!1407430 (_2!24081 (v!39528 lt!1407469)) lt!1407485 newSuffixResult!27 lt!1407439))))

(assert (=> b!3991544 (= lt!1407430 lt!1407485)))

(declare-fun lt!1407457 () Unit!61477)

(declare-fun lemmaIsPrefixSameLengthThenSameList!868 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> b!3991544 (= lt!1407457 (lemmaIsPrefixSameLengthThenSameList!868 lt!1407430 lt!1407485 lt!1407439))))

(declare-fun b!3991545 () Bool)

(declare-fun validRegex!5291 (Regex!11664) Bool)

(assert (=> b!3991545 (= e!2474398 (validRegex!5291 (regex!6759 (rule!9779 token!484))))))

(declare-fun b!3991546 () Bool)

(declare-fun e!2474427 () Bool)

(assert (=> b!3991546 (= e!2474407 e!2474427)))

(declare-fun res!1620011 () Bool)

(assert (=> b!3991546 (=> res!1620011 e!2474427)))

(declare-fun lt!1407478 () Option!9173)

(declare-fun lt!1407463 () Option!9173)

(assert (=> b!3991546 (= res!1620011 (not (= lt!1407478 lt!1407463)))))

(declare-fun lt!1407474 () Token!12656)

(assert (=> b!3991546 (= lt!1407478 (Some!9172 (tuple2!41895 lt!1407474 suffixResult!105)))))

(assert (=> b!3991546 (= lt!1407478 (maxPrefixOneRule!2680 thiss!21717 (rule!9779 token!484) lt!1407442))))

(assert (=> b!3991546 (= lt!1407474 (Token!12657 lt!1407428 (rule!9779 token!484) lt!1407471 lt!1407485))))

(assert (=> b!3991546 (= lt!1407428 (apply!9970 (transformation!6759 (rule!9779 token!484)) (seqFromList!4998 lt!1407485)))))

(declare-fun lt!1407452 () Unit!61477)

(assert (=> b!3991546 (= lt!1407452 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1502 thiss!21717 rules!2999 lt!1407485 lt!1407442 suffixResult!105 (rule!9779 token!484)))))

(assert (=> b!3991546 (= lt!1407487 suffixResult!105)))

(declare-fun lt!1407468 () Unit!61477)

(assert (=> b!3991546 (= lt!1407468 (lemmaSamePrefixThenSameSuffix!2033 lt!1407485 lt!1407487 lt!1407485 suffixResult!105 lt!1407442))))

(assert (=> b!3991546 (isPrefix!3846 lt!1407485 lt!1407482)))

(declare-fun lt!1407448 () Unit!61477)

(assert (=> b!3991546 (= lt!1407448 (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407485 lt!1407487))))

(declare-fun b!3991547 () Bool)

(declare-fun res!1620022 () Bool)

(assert (=> b!3991547 (=> res!1620022 e!2474398)))

(declare-fun lt!1407441 () Option!9173)

(assert (=> b!3991547 (= res!1620022 (not (= lt!1407441 (Some!9172 (tuple2!41895 lt!1407474 lt!1407465)))))))

(declare-fun b!3991548 () Bool)

(assert (=> b!3991548 (= e!2474399 e!2474403)))

(declare-fun res!1620010 () Bool)

(assert (=> b!3991548 (=> res!1620010 e!2474403)))

(assert (=> b!3991548 (= res!1620010 (not (isPrefix!3846 lt!1407430 lt!1407442)))))

(assert (=> b!3991548 (isPrefix!3846 lt!1407430 lt!1407437)))

(declare-fun lt!1407434 () Unit!61477)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!679 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> b!3991548 (= lt!1407434 (lemmaPrefixStaysPrefixWhenAddingToSuffix!679 lt!1407430 lt!1407439 lt!1407466))))

(declare-fun b!3991549 () Bool)

(declare-fun e!2474405 () Bool)

(assert (=> b!3991549 (= e!2474422 e!2474405)))

(declare-fun res!1620012 () Bool)

(assert (=> b!3991549 (=> (not res!1620012) (not e!2474405))))

(assert (=> b!3991549 (= res!1620012 (= lt!1407441 lt!1407463))))

(declare-fun lt!1407455 () tuple2!41894)

(assert (=> b!3991549 (= lt!1407463 (Some!9172 lt!1407455))))

(declare-fun maxPrefix!3646 (LexerInterface!6348 List!42819 List!42817) Option!9173)

(assert (=> b!3991549 (= lt!1407441 (maxPrefix!3646 thiss!21717 rules!2999 lt!1407442))))

(assert (=> b!3991549 (= lt!1407455 (tuple2!41895 token!484 suffixResult!105))))

(assert (=> b!3991549 (= lt!1407442 (++!11161 prefix!494 suffix!1299))))

(declare-fun b!3991550 () Bool)

(declare-fun e!2474425 () Bool)

(declare-fun tp!1215757 () Bool)

(assert (=> b!3991550 (= e!2474431 (and e!2474425 tp!1215757))))

(declare-fun b!3991551 () Bool)

(assert (=> b!3991551 (= e!2474417 e!2474424)))

(declare-fun res!1620002 () Bool)

(assert (=> b!3991551 (=> res!1620002 e!2474424)))

(assert (=> b!3991551 (= res!1620002 (not (is-Some!9172 lt!1407469)))))

(assert (=> b!3991551 (= lt!1407469 (maxPrefix!3646 thiss!21717 rules!2999 lt!1407439))))

(assert (=> b!3991551 (and (= suffixResult!105 lt!1407465) (= lt!1407455 (tuple2!41895 lt!1407474 lt!1407465)))))

(declare-fun lt!1407438 () Unit!61477)

(assert (=> b!3991551 (= lt!1407438 (lemmaSamePrefixThenSameSuffix!2033 lt!1407485 suffixResult!105 lt!1407485 lt!1407465 lt!1407442))))

(assert (=> b!3991551 (isPrefix!3846 lt!1407485 lt!1407454)))

(declare-fun lt!1407431 () Unit!61477)

(assert (=> b!3991551 (= lt!1407431 (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407485 lt!1407465))))

(declare-fun b!3991552 () Bool)

(declare-fun tp!1215750 () Bool)

(assert (=> b!3991552 (= e!2474410 (and tp_is_empty!20299 tp!1215750))))

(declare-fun b!3991553 () Bool)

(assert (=> b!3991553 (= e!2474427 e!2474416)))

(declare-fun res!1620028 () Bool)

(assert (=> b!3991553 (=> res!1620028 e!2474416)))

(assert (=> b!3991553 (= res!1620028 (not (matchR!5641 (regex!6759 (rule!9779 token!484)) lt!1407485)))))

(assert (=> b!3991553 (isPrefix!3846 lt!1407485 lt!1407439)))

(declare-fun lt!1407462 () Unit!61477)

(assert (=> b!3991553 (= lt!1407462 (lemmaPrefixStaysPrefixWhenAddingToSuffix!679 lt!1407485 prefix!494 newSuffix!27))))

(declare-fun lt!1407481 () Unit!61477)

(assert (=> b!3991553 (= lt!1407481 (lemmaPrefixStaysPrefixWhenAddingToSuffix!679 lt!1407485 prefix!494 suffix!1299))))

(declare-fun b!3991554 () Bool)

(declare-fun tp!1215752 () Bool)

(assert (=> b!3991554 (= e!2474421 (and tp_is_empty!20299 tp!1215752))))

(declare-fun tp!1215753 () Bool)

(declare-fun b!3991555 () Bool)

(declare-fun e!2474402 () Bool)

(assert (=> b!3991555 (= e!2474425 (and tp!1215753 (inv!57022 (tag!7619 (h!48115 rules!2999))) (inv!57026 (transformation!6759 (h!48115 rules!2999))) e!2474402))))

(declare-fun b!3991556 () Bool)

(declare-fun tp!1215761 () Bool)

(assert (=> b!3991556 (= e!2474419 (and tp_is_empty!20299 tp!1215761))))

(declare-fun b!3991557 () Bool)

(assert (=> b!3991557 (= e!2474405 (not e!2474412))))

(declare-fun res!1620020 () Bool)

(assert (=> b!3991557 (=> res!1620020 e!2474412)))

(assert (=> b!3991557 (= res!1620020 (not (= lt!1407476 lt!1407442)))))

(assert (=> b!3991557 (= lt!1407476 (++!11161 lt!1407485 suffixResult!105))))

(declare-fun lt!1407440 () Unit!61477)

(assert (=> b!3991557 (= lt!1407440 (lemmaInv!974 (transformation!6759 (rule!9779 token!484))))))

(assert (=> b!3991557 (ruleValid!2691 thiss!21717 (rule!9779 token!484))))

(declare-fun lt!1407429 () Unit!61477)

(assert (=> b!3991557 (= lt!1407429 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1765 thiss!21717 (rule!9779 token!484) rules!2999))))

(declare-fun b!3991558 () Bool)

(declare-fun res!1620019 () Bool)

(assert (=> b!3991558 (=> res!1620019 e!2474403)))

(assert (=> b!3991558 (= res!1620019 (not (= lt!1407483 lt!1407439)))))

(assert (=> b!3991559 (= e!2474415 (and tp!1215755 tp!1215756))))

(assert (=> b!3991560 (= e!2474402 (and tp!1215751 tp!1215759))))

(declare-fun b!3991561 () Bool)

(declare-fun res!1620008 () Bool)

(assert (=> b!3991561 (=> (not res!1620008) (not e!2474400))))

(assert (=> b!3991561 (= res!1620008 (isPrefix!3846 newSuffix!27 suffix!1299))))

(assert (= (and start!375650 res!1620027) b!3991540))

(assert (= (and b!3991540 res!1620017) b!3991525))

(assert (= (and b!3991525 res!1620024) b!3991529))

(assert (= (and b!3991529 res!1620009) b!3991561))

(assert (= (and b!3991561 res!1620008) b!3991537))

(assert (= (and b!3991537 res!1620015) b!3991533))

(assert (= (and b!3991533 res!1620007) b!3991549))

(assert (= (and b!3991549 res!1620012) b!3991557))

(assert (= (and b!3991557 (not res!1620020)) b!3991522))

(assert (= (and b!3991522 (not res!1620003)) b!3991539))

(assert (= (and b!3991539 (not res!1620026)) b!3991517))

(assert (= (and b!3991517 (not res!1620005)) b!3991546))

(assert (= (and b!3991546 (not res!1620011)) b!3991553))

(assert (= (and b!3991553 (not res!1620028)) b!3991521))

(assert (= (and b!3991521 res!1620018) b!3991535))

(assert (= (and b!3991535 res!1620023) b!3991530))

(assert (= (and b!3991530 res!1620001) b!3991532))

(assert (= (and b!3991521 (not res!1620014)) b!3991551))

(assert (= (and b!3991551 (not res!1620002)) b!3991520))

(assert (= (and b!3991520 (not res!1620006)) b!3991526))

(assert (= (and b!3991526 (not res!1620016)) b!3991534))

(assert (= (and b!3991534 (not res!1620004)) b!3991548))

(assert (= (and b!3991548 (not res!1620010)) b!3991558))

(assert (= (and b!3991558 (not res!1620019)) b!3991542))

(assert (= (and b!3991542 (not res!1620029)) b!3991531))

(assert (= (and b!3991531 c!690782) b!3991541))

(assert (= (and b!3991531 (not c!690782)) b!3991527))

(assert (= (and b!3991541 res!1620013) b!3991543))

(assert (= (and b!3991531 c!690781) b!3991538))

(assert (= (and b!3991531 (not c!690781)) b!3991528))

(assert (= (and b!3991531 (not res!1620021)) b!3991523))

(assert (= (and b!3991523 (not res!1620025)) b!3991544))

(assert (= (and b!3991544 (not res!1620030)) b!3991547))

(assert (= (and b!3991547 (not res!1620022)) b!3991545))

(assert (= (and start!375650 (is-Cons!42693 prefix!494)) b!3991556))

(assert (= b!3991524 b!3991559))

(assert (= b!3991518 b!3991524))

(assert (= start!375650 b!3991518))

(assert (= (and start!375650 (is-Cons!42693 suffixResult!105)) b!3991554))

(assert (= (and start!375650 (is-Cons!42693 suffix!1299)) b!3991552))

(assert (= (and start!375650 (is-Cons!42693 newSuffix!27)) b!3991519))

(assert (= b!3991555 b!3991560))

(assert (= b!3991550 b!3991555))

(assert (= (and start!375650 (is-Cons!42695 rules!2999)) b!3991550))

(assert (= (and start!375650 (is-Cons!42693 newSuffixResult!27)) b!3991536))

(declare-fun m!4570265 () Bool)

(assert (=> b!3991541 m!4570265))

(declare-fun m!4570267 () Bool)

(assert (=> b!3991541 m!4570267))

(declare-fun m!4570269 () Bool)

(assert (=> b!3991548 m!4570269))

(declare-fun m!4570271 () Bool)

(assert (=> b!3991548 m!4570271))

(declare-fun m!4570273 () Bool)

(assert (=> b!3991548 m!4570273))

(declare-fun m!4570275 () Bool)

(assert (=> b!3991551 m!4570275))

(declare-fun m!4570277 () Bool)

(assert (=> b!3991551 m!4570277))

(declare-fun m!4570279 () Bool)

(assert (=> b!3991551 m!4570279))

(declare-fun m!4570281 () Bool)

(assert (=> b!3991551 m!4570281))

(declare-fun m!4570283 () Bool)

(assert (=> b!3991561 m!4570283))

(declare-fun m!4570285 () Bool)

(assert (=> b!3991522 m!4570285))

(declare-fun m!4570287 () Bool)

(assert (=> b!3991522 m!4570287))

(declare-fun m!4570289 () Bool)

(assert (=> b!3991522 m!4570289))

(declare-fun m!4570291 () Bool)

(assert (=> b!3991522 m!4570291))

(declare-fun m!4570293 () Bool)

(assert (=> b!3991522 m!4570293))

(declare-fun m!4570295 () Bool)

(assert (=> b!3991534 m!4570295))

(declare-fun m!4570297 () Bool)

(assert (=> b!3991534 m!4570297))

(declare-fun m!4570299 () Bool)

(assert (=> b!3991534 m!4570299))

(declare-fun m!4570301 () Bool)

(assert (=> b!3991523 m!4570301))

(declare-fun m!4570303 () Bool)

(assert (=> b!3991546 m!4570303))

(declare-fun m!4570305 () Bool)

(assert (=> b!3991546 m!4570305))

(declare-fun m!4570307 () Bool)

(assert (=> b!3991546 m!4570307))

(declare-fun m!4570309 () Bool)

(assert (=> b!3991546 m!4570309))

(declare-fun m!4570311 () Bool)

(assert (=> b!3991546 m!4570311))

(assert (=> b!3991546 m!4570309))

(declare-fun m!4570313 () Bool)

(assert (=> b!3991546 m!4570313))

(declare-fun m!4570315 () Bool)

(assert (=> b!3991546 m!4570315))

(declare-fun m!4570317 () Bool)

(assert (=> b!3991533 m!4570317))

(declare-fun m!4570319 () Bool)

(assert (=> b!3991533 m!4570319))

(declare-fun m!4570321 () Bool)

(assert (=> b!3991529 m!4570321))

(declare-fun m!4570323 () Bool)

(assert (=> b!3991529 m!4570323))

(declare-fun m!4570325 () Bool)

(assert (=> b!3991520 m!4570325))

(declare-fun m!4570327 () Bool)

(assert (=> b!3991520 m!4570327))

(declare-fun m!4570329 () Bool)

(assert (=> b!3991520 m!4570329))

(declare-fun m!4570331 () Bool)

(assert (=> b!3991520 m!4570331))

(declare-fun m!4570333 () Bool)

(assert (=> b!3991520 m!4570333))

(declare-fun m!4570335 () Bool)

(assert (=> b!3991520 m!4570335))

(declare-fun m!4570337 () Bool)

(assert (=> b!3991520 m!4570337))

(declare-fun m!4570339 () Bool)

(assert (=> b!3991520 m!4570339))

(declare-fun m!4570341 () Bool)

(assert (=> b!3991520 m!4570341))

(declare-fun m!4570343 () Bool)

(assert (=> b!3991520 m!4570343))

(declare-fun m!4570345 () Bool)

(assert (=> b!3991520 m!4570345))

(declare-fun m!4570347 () Bool)

(assert (=> b!3991520 m!4570347))

(declare-fun m!4570349 () Bool)

(assert (=> b!3991520 m!4570349))

(assert (=> b!3991520 m!4570339))

(assert (=> b!3991520 m!4570343))

(declare-fun m!4570351 () Bool)

(assert (=> b!3991520 m!4570351))

(declare-fun m!4570353 () Bool)

(assert (=> b!3991520 m!4570353))

(declare-fun m!4570355 () Bool)

(assert (=> b!3991520 m!4570355))

(declare-fun m!4570357 () Bool)

(assert (=> b!3991520 m!4570357))

(assert (=> b!3991520 m!4570349))

(declare-fun m!4570359 () Bool)

(assert (=> b!3991520 m!4570359))

(declare-fun m!4570361 () Bool)

(assert (=> b!3991518 m!4570361))

(declare-fun m!4570363 () Bool)

(assert (=> b!3991530 m!4570363))

(declare-fun m!4570365 () Bool)

(assert (=> b!3991542 m!4570365))

(declare-fun m!4570367 () Bool)

(assert (=> b!3991542 m!4570367))

(declare-fun m!4570369 () Bool)

(assert (=> start!375650 m!4570369))

(declare-fun m!4570371 () Bool)

(assert (=> b!3991557 m!4570371))

(declare-fun m!4570373 () Bool)

(assert (=> b!3991557 m!4570373))

(declare-fun m!4570375 () Bool)

(assert (=> b!3991557 m!4570375))

(declare-fun m!4570377 () Bool)

(assert (=> b!3991557 m!4570377))

(declare-fun m!4570379 () Bool)

(assert (=> b!3991553 m!4570379))

(declare-fun m!4570381 () Bool)

(assert (=> b!3991553 m!4570381))

(declare-fun m!4570383 () Bool)

(assert (=> b!3991553 m!4570383))

(declare-fun m!4570385 () Bool)

(assert (=> b!3991553 m!4570385))

(declare-fun m!4570387 () Bool)

(assert (=> b!3991540 m!4570387))

(declare-fun m!4570389 () Bool)

(assert (=> b!3991524 m!4570389))

(declare-fun m!4570391 () Bool)

(assert (=> b!3991524 m!4570391))

(declare-fun m!4570393 () Bool)

(assert (=> b!3991526 m!4570393))

(declare-fun m!4570395 () Bool)

(assert (=> b!3991526 m!4570395))

(declare-fun m!4570397 () Bool)

(assert (=> b!3991538 m!4570397))

(declare-fun m!4570399 () Bool)

(assert (=> b!3991545 m!4570399))

(declare-fun m!4570401 () Bool)

(assert (=> b!3991555 m!4570401))

(declare-fun m!4570403 () Bool)

(assert (=> b!3991555 m!4570403))

(declare-fun m!4570405 () Bool)

(assert (=> b!3991539 m!4570405))

(declare-fun m!4570407 () Bool)

(assert (=> b!3991539 m!4570407))

(declare-fun m!4570409 () Bool)

(assert (=> b!3991539 m!4570409))

(declare-fun m!4570411 () Bool)

(assert (=> b!3991539 m!4570411))

(declare-fun m!4570413 () Bool)

(assert (=> b!3991517 m!4570413))

(declare-fun m!4570415 () Bool)

(assert (=> b!3991517 m!4570415))

(declare-fun m!4570417 () Bool)

(assert (=> b!3991517 m!4570417))

(declare-fun m!4570419 () Bool)

(assert (=> b!3991517 m!4570419))

(declare-fun m!4570421 () Bool)

(assert (=> b!3991549 m!4570421))

(declare-fun m!4570423 () Bool)

(assert (=> b!3991549 m!4570423))

(declare-fun m!4570425 () Bool)

(assert (=> b!3991544 m!4570425))

(declare-fun m!4570427 () Bool)

(assert (=> b!3991544 m!4570427))

(declare-fun m!4570429 () Bool)

(assert (=> b!3991544 m!4570429))

(declare-fun m!4570431 () Bool)

(assert (=> b!3991544 m!4570431))

(declare-fun m!4570433 () Bool)

(assert (=> b!3991537 m!4570433))

(declare-fun m!4570435 () Bool)

(assert (=> b!3991537 m!4570435))

(declare-fun m!4570437 () Bool)

(assert (=> b!3991537 m!4570437))

(assert (=> b!3991537 m!4570437))

(declare-fun m!4570439 () Bool)

(assert (=> b!3991537 m!4570439))

(declare-fun m!4570441 () Bool)

(assert (=> b!3991531 m!4570441))

(declare-fun m!4570443 () Bool)

(assert (=> b!3991531 m!4570443))

(declare-fun m!4570445 () Bool)

(assert (=> b!3991531 m!4570445))

(declare-fun m!4570447 () Bool)

(assert (=> b!3991521 m!4570447))

(declare-fun m!4570449 () Bool)

(assert (=> b!3991521 m!4570449))

(declare-fun m!4570451 () Bool)

(assert (=> b!3991521 m!4570451))

(declare-fun m!4570453 () Bool)

(assert (=> b!3991521 m!4570453))

(declare-fun m!4570455 () Bool)

(assert (=> b!3991525 m!4570455))

(push 1)

(assert (not b!3991530))

(assert (not b!3991553))

(assert (not b!3991556))

(assert (not b!3991552))

(assert (not b!3991539))

(assert (not b!3991541))

(assert b_and!306669)

(assert (not b!3991519))

(assert (not b!3991546))

(assert (not b!3991531))

(assert (not b!3991561))

(assert (not b!3991520))

(assert (not b!3991545))

(assert (not b_next!111581))

(assert tp_is_empty!20299)

(assert (not b!3991523))

(assert (not b!3991538))

(assert (not b!3991517))

(assert (not start!375650))

(assert (not b!3991522))

(assert (not b!3991529))

(assert b_and!306665)

(assert (not b!3991551))

(assert (not b!3991554))

(assert (not b_next!111577))

(assert b_and!306667)

(assert (not b!3991544))

(assert (not b!3991549))

(assert (not b!3991534))

(assert (not b_next!111579))

(assert (not b!3991555))

(assert (not b!3991524))

(assert (not b!3991542))

(assert (not b!3991521))

(assert (not b!3991518))

(assert (not b!3991526))

(assert (not b!3991550))

(assert (not b!3991533))

(assert (not b!3991525))

(assert (not b_next!111583))

(assert (not b!3991540))

(assert (not b!3991536))

(assert (not b!3991537))

(assert (not b!3991557))

(assert b_and!306663)

(assert (not b!3991548))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!111581))

(assert b_and!306665)

(assert (not b_next!111579))

(assert b_and!306669)

(assert (not b_next!111583))

(assert b_and!306663)

(assert (not b_next!111577))

(assert b_and!306667)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3991760 () Bool)

(declare-fun e!2474573 () Option!9173)

(declare-fun call!285838 () Option!9173)

(assert (=> b!3991760 (= e!2474573 call!285838)))

(declare-fun b!3991761 () Bool)

(declare-fun res!1620175 () Bool)

(declare-fun e!2474575 () Bool)

(assert (=> b!3991761 (=> (not res!1620175) (not e!2474575))))

(declare-fun lt!1407694 () Option!9173)

(declare-fun get!14047 (Option!9173) tuple2!41894)

(assert (=> b!3991761 (= res!1620175 (< (size!31931 (_2!24081 (get!14047 lt!1407694))) (size!31931 lt!1407439)))))

(declare-fun b!3991762 () Bool)

(declare-fun res!1620173 () Bool)

(assert (=> b!3991762 (=> (not res!1620173) (not e!2474575))))

(assert (=> b!3991762 (= res!1620173 (= (++!11161 (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407694)))) (_2!24081 (get!14047 lt!1407694))) lt!1407439))))

(declare-fun b!3991763 () Bool)

(declare-fun lt!1407693 () Option!9173)

(declare-fun lt!1407692 () Option!9173)

(assert (=> b!3991763 (= e!2474573 (ite (and (is-None!9172 lt!1407693) (is-None!9172 lt!1407692)) None!9172 (ite (is-None!9172 lt!1407692) lt!1407693 (ite (is-None!9172 lt!1407693) lt!1407692 (ite (>= (size!31930 (_1!24081 (v!39528 lt!1407693))) (size!31930 (_1!24081 (v!39528 lt!1407692)))) lt!1407693 lt!1407692)))))))

(assert (=> b!3991763 (= lt!1407693 call!285838)))

(assert (=> b!3991763 (= lt!1407692 (maxPrefix!3646 thiss!21717 (t!331810 rules!2999) lt!1407439))))

(declare-fun b!3991764 () Bool)

(declare-fun e!2474574 () Bool)

(assert (=> b!3991764 (= e!2474574 e!2474575)))

(declare-fun res!1620171 () Bool)

(assert (=> b!3991764 (=> (not res!1620171) (not e!2474575))))

(declare-fun isDefined!7043 (Option!9173) Bool)

(assert (=> b!3991764 (= res!1620171 (isDefined!7043 lt!1407694))))

(declare-fun b!3991765 () Bool)

(declare-fun res!1620176 () Bool)

(assert (=> b!3991765 (=> (not res!1620176) (not e!2474575))))

(assert (=> b!3991765 (= res!1620176 (= (value!213267 (_1!24081 (get!14047 lt!1407694))) (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (get!14047 lt!1407694)))) (seqFromList!4998 (originalCharacters!7359 (_1!24081 (get!14047 lt!1407694)))))))))

(declare-fun b!3991766 () Bool)

(declare-fun res!1620174 () Bool)

(assert (=> b!3991766 (=> (not res!1620174) (not e!2474575))))

(assert (=> b!3991766 (= res!1620174 (matchR!5641 (regex!6759 (rule!9779 (_1!24081 (get!14047 lt!1407694)))) (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407694))))))))

(declare-fun d!1181159 () Bool)

(assert (=> d!1181159 e!2474574))

(declare-fun res!1620172 () Bool)

(assert (=> d!1181159 (=> res!1620172 e!2474574)))

(declare-fun isEmpty!25517 (Option!9173) Bool)

(assert (=> d!1181159 (= res!1620172 (isEmpty!25517 lt!1407694))))

(assert (=> d!1181159 (= lt!1407694 e!2474573)))

(declare-fun c!690805 () Bool)

(assert (=> d!1181159 (= c!690805 (and (is-Cons!42695 rules!2999) (is-Nil!42695 (t!331810 rules!2999))))))

(declare-fun lt!1407695 () Unit!61477)

(declare-fun lt!1407696 () Unit!61477)

(assert (=> d!1181159 (= lt!1407695 lt!1407696)))

(assert (=> d!1181159 (isPrefix!3846 lt!1407439 lt!1407439)))

(assert (=> d!1181159 (= lt!1407696 (lemmaIsPrefixRefl!2438 lt!1407439 lt!1407439))))

(declare-fun rulesValidInductive!2458 (LexerInterface!6348 List!42819) Bool)

(assert (=> d!1181159 (rulesValidInductive!2458 thiss!21717 rules!2999)))

(assert (=> d!1181159 (= (maxPrefix!3646 thiss!21717 rules!2999 lt!1407439) lt!1407694)))

(declare-fun bm!285833 () Bool)

(assert (=> bm!285833 (= call!285838 (maxPrefixOneRule!2680 thiss!21717 (h!48115 rules!2999) lt!1407439))))

(declare-fun b!3991767 () Bool)

(declare-fun contains!8494 (List!42819 Rule!13318) Bool)

(assert (=> b!3991767 (= e!2474575 (contains!8494 rules!2999 (rule!9779 (_1!24081 (get!14047 lt!1407694)))))))

(declare-fun b!3991768 () Bool)

(declare-fun res!1620170 () Bool)

(assert (=> b!3991768 (=> (not res!1620170) (not e!2474575))))

(assert (=> b!3991768 (= res!1620170 (= (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407694)))) (originalCharacters!7359 (_1!24081 (get!14047 lt!1407694)))))))

(assert (= (and d!1181159 c!690805) b!3991760))

(assert (= (and d!1181159 (not c!690805)) b!3991763))

(assert (= (or b!3991760 b!3991763) bm!285833))

(assert (= (and d!1181159 (not res!1620172)) b!3991764))

(assert (= (and b!3991764 res!1620171) b!3991768))

(assert (= (and b!3991768 res!1620170) b!3991761))

(assert (= (and b!3991761 res!1620175) b!3991762))

(assert (= (and b!3991762 res!1620173) b!3991765))

(assert (= (and b!3991765 res!1620176) b!3991766))

(assert (= (and b!3991766 res!1620174) b!3991767))

(declare-fun m!4570671 () Bool)

(assert (=> b!3991767 m!4570671))

(declare-fun m!4570673 () Bool)

(assert (=> b!3991767 m!4570673))

(declare-fun m!4570675 () Bool)

(assert (=> b!3991764 m!4570675))

(assert (=> b!3991765 m!4570671))

(declare-fun m!4570677 () Bool)

(assert (=> b!3991765 m!4570677))

(assert (=> b!3991765 m!4570677))

(declare-fun m!4570679 () Bool)

(assert (=> b!3991765 m!4570679))

(declare-fun m!4570681 () Bool)

(assert (=> bm!285833 m!4570681))

(assert (=> b!3991761 m!4570671))

(declare-fun m!4570683 () Bool)

(assert (=> b!3991761 m!4570683))

(declare-fun m!4570685 () Bool)

(assert (=> b!3991761 m!4570685))

(declare-fun m!4570687 () Bool)

(assert (=> d!1181159 m!4570687))

(declare-fun m!4570689 () Bool)

(assert (=> d!1181159 m!4570689))

(declare-fun m!4570691 () Bool)

(assert (=> d!1181159 m!4570691))

(declare-fun m!4570693 () Bool)

(assert (=> d!1181159 m!4570693))

(assert (=> b!3991766 m!4570671))

(declare-fun m!4570695 () Bool)

(assert (=> b!3991766 m!4570695))

(assert (=> b!3991766 m!4570695))

(declare-fun m!4570697 () Bool)

(assert (=> b!3991766 m!4570697))

(assert (=> b!3991766 m!4570697))

(declare-fun m!4570699 () Bool)

(assert (=> b!3991766 m!4570699))

(assert (=> b!3991768 m!4570671))

(assert (=> b!3991768 m!4570695))

(assert (=> b!3991768 m!4570695))

(assert (=> b!3991768 m!4570697))

(declare-fun m!4570701 () Bool)

(assert (=> b!3991763 m!4570701))

(assert (=> b!3991762 m!4570671))

(assert (=> b!3991762 m!4570695))

(assert (=> b!3991762 m!4570695))

(assert (=> b!3991762 m!4570697))

(assert (=> b!3991762 m!4570697))

(declare-fun m!4570707 () Bool)

(assert (=> b!3991762 m!4570707))

(assert (=> b!3991551 d!1181159))

(declare-fun d!1181169 () Bool)

(assert (=> d!1181169 (= suffixResult!105 lt!1407465)))

(declare-fun lt!1407702 () Unit!61477)

(declare-fun choose!24013 (List!42817 List!42817 List!42817 List!42817 List!42817) Unit!61477)

(assert (=> d!1181169 (= lt!1407702 (choose!24013 lt!1407485 suffixResult!105 lt!1407485 lt!1407465 lt!1407442))))

(assert (=> d!1181169 (isPrefix!3846 lt!1407485 lt!1407442)))

(assert (=> d!1181169 (= (lemmaSamePrefixThenSameSuffix!2033 lt!1407485 suffixResult!105 lt!1407485 lt!1407465 lt!1407442) lt!1407702)))

(declare-fun bs!588422 () Bool)

(assert (= bs!588422 d!1181169))

(declare-fun m!4570717 () Bool)

(assert (=> bs!588422 m!4570717))

(assert (=> bs!588422 m!4570285))

(assert (=> b!3991551 d!1181169))

(declare-fun b!3991789 () Bool)

(declare-fun e!2474593 () Bool)

(declare-fun e!2474592 () Bool)

(assert (=> b!3991789 (= e!2474593 e!2474592)))

(declare-fun res!1620198 () Bool)

(assert (=> b!3991789 (=> (not res!1620198) (not e!2474592))))

(assert (=> b!3991789 (= res!1620198 (not (is-Nil!42693 lt!1407454)))))

(declare-fun d!1181173 () Bool)

(declare-fun e!2474591 () Bool)

(assert (=> d!1181173 e!2474591))

(declare-fun res!1620197 () Bool)

(assert (=> d!1181173 (=> res!1620197 e!2474591)))

(declare-fun lt!1407705 () Bool)

(assert (=> d!1181173 (= res!1620197 (not lt!1407705))))

(assert (=> d!1181173 (= lt!1407705 e!2474593)))

(declare-fun res!1620199 () Bool)

(assert (=> d!1181173 (=> res!1620199 e!2474593)))

(assert (=> d!1181173 (= res!1620199 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181173 (= (isPrefix!3846 lt!1407485 lt!1407454) lt!1407705)))

(declare-fun b!3991792 () Bool)

(assert (=> b!3991792 (= e!2474591 (>= (size!31931 lt!1407454) (size!31931 lt!1407485)))))

(declare-fun b!3991791 () Bool)

(declare-fun tail!6225 (List!42817) List!42817)

(assert (=> b!3991791 (= e!2474592 (isPrefix!3846 (tail!6225 lt!1407485) (tail!6225 lt!1407454)))))

(declare-fun b!3991790 () Bool)

(declare-fun res!1620200 () Bool)

(assert (=> b!3991790 (=> (not res!1620200) (not e!2474592))))

(declare-fun head!8492 (List!42817) C!23514)

(assert (=> b!3991790 (= res!1620200 (= (head!8492 lt!1407485) (head!8492 lt!1407454)))))

(assert (= (and d!1181173 (not res!1620199)) b!3991789))

(assert (= (and b!3991789 res!1620198) b!3991790))

(assert (= (and b!3991790 res!1620200) b!3991791))

(assert (= (and d!1181173 (not res!1620197)) b!3991792))

(declare-fun m!4570719 () Bool)

(assert (=> b!3991792 m!4570719))

(assert (=> b!3991792 m!4570433))

(declare-fun m!4570721 () Bool)

(assert (=> b!3991791 m!4570721))

(declare-fun m!4570723 () Bool)

(assert (=> b!3991791 m!4570723))

(assert (=> b!3991791 m!4570721))

(assert (=> b!3991791 m!4570723))

(declare-fun m!4570725 () Bool)

(assert (=> b!3991791 m!4570725))

(declare-fun m!4570727 () Bool)

(assert (=> b!3991790 m!4570727))

(declare-fun m!4570729 () Bool)

(assert (=> b!3991790 m!4570729))

(assert (=> b!3991551 d!1181173))

(declare-fun d!1181175 () Bool)

(assert (=> d!1181175 (isPrefix!3846 lt!1407485 (++!11161 lt!1407485 lt!1407465))))

(declare-fun lt!1407708 () Unit!61477)

(declare-fun choose!24014 (List!42817 List!42817) Unit!61477)

(assert (=> d!1181175 (= lt!1407708 (choose!24014 lt!1407485 lt!1407465))))

(assert (=> d!1181175 (= (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407485 lt!1407465) lt!1407708)))

(declare-fun bs!588423 () Bool)

(assert (= bs!588423 d!1181175))

(assert (=> bs!588423 m!4570447))

(assert (=> bs!588423 m!4570447))

(declare-fun m!4570731 () Bool)

(assert (=> bs!588423 m!4570731))

(declare-fun m!4570733 () Bool)

(assert (=> bs!588423 m!4570733))

(assert (=> b!3991551 d!1181175))

(declare-fun d!1181177 () Bool)

(declare-fun lt!1407711 () Int)

(assert (=> d!1181177 (>= lt!1407711 0)))

(declare-fun e!2474596 () Int)

(assert (=> d!1181177 (= lt!1407711 e!2474596)))

(declare-fun c!690808 () Bool)

(assert (=> d!1181177 (= c!690808 (is-Nil!42693 suffix!1299))))

(assert (=> d!1181177 (= (size!31931 suffix!1299) lt!1407711)))

(declare-fun b!3991797 () Bool)

(assert (=> b!3991797 (= e!2474596 0)))

(declare-fun b!3991798 () Bool)

(assert (=> b!3991798 (= e!2474596 (+ 1 (size!31931 (t!331808 suffix!1299))))))

(assert (= (and d!1181177 c!690808) b!3991797))

(assert (= (and d!1181177 (not c!690808)) b!3991798))

(declare-fun m!4570735 () Bool)

(assert (=> b!3991798 m!4570735))

(assert (=> b!3991529 d!1181177))

(declare-fun d!1181179 () Bool)

(declare-fun lt!1407712 () Int)

(assert (=> d!1181179 (>= lt!1407712 0)))

(declare-fun e!2474597 () Int)

(assert (=> d!1181179 (= lt!1407712 e!2474597)))

(declare-fun c!690809 () Bool)

(assert (=> d!1181179 (= c!690809 (is-Nil!42693 newSuffix!27))))

(assert (=> d!1181179 (= (size!31931 newSuffix!27) lt!1407712)))

(declare-fun b!3991799 () Bool)

(assert (=> b!3991799 (= e!2474597 0)))

(declare-fun b!3991800 () Bool)

(assert (=> b!3991800 (= e!2474597 (+ 1 (size!31931 (t!331808 newSuffix!27))))))

(assert (= (and d!1181179 c!690809) b!3991799))

(assert (= (and d!1181179 (not c!690809)) b!3991800))

(declare-fun m!4570737 () Bool)

(assert (=> b!3991800 m!4570737))

(assert (=> b!3991529 d!1181179))

(declare-fun b!3991801 () Bool)

(declare-fun e!2474598 () Option!9173)

(declare-fun call!285839 () Option!9173)

(assert (=> b!3991801 (= e!2474598 call!285839)))

(declare-fun b!3991802 () Bool)

(declare-fun res!1620206 () Bool)

(declare-fun e!2474600 () Bool)

(assert (=> b!3991802 (=> (not res!1620206) (not e!2474600))))

(declare-fun lt!1407715 () Option!9173)

(assert (=> b!3991802 (= res!1620206 (< (size!31931 (_2!24081 (get!14047 lt!1407715))) (size!31931 lt!1407442)))))

(declare-fun b!3991803 () Bool)

(declare-fun res!1620204 () Bool)

(assert (=> b!3991803 (=> (not res!1620204) (not e!2474600))))

(assert (=> b!3991803 (= res!1620204 (= (++!11161 (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407715)))) (_2!24081 (get!14047 lt!1407715))) lt!1407442))))

(declare-fun b!3991804 () Bool)

(declare-fun lt!1407714 () Option!9173)

(declare-fun lt!1407713 () Option!9173)

(assert (=> b!3991804 (= e!2474598 (ite (and (is-None!9172 lt!1407714) (is-None!9172 lt!1407713)) None!9172 (ite (is-None!9172 lt!1407713) lt!1407714 (ite (is-None!9172 lt!1407714) lt!1407713 (ite (>= (size!31930 (_1!24081 (v!39528 lt!1407714))) (size!31930 (_1!24081 (v!39528 lt!1407713)))) lt!1407714 lt!1407713)))))))

(assert (=> b!3991804 (= lt!1407714 call!285839)))

(assert (=> b!3991804 (= lt!1407713 (maxPrefix!3646 thiss!21717 (t!331810 rules!2999) lt!1407442))))

(declare-fun b!3991805 () Bool)

(declare-fun e!2474599 () Bool)

(assert (=> b!3991805 (= e!2474599 e!2474600)))

(declare-fun res!1620202 () Bool)

(assert (=> b!3991805 (=> (not res!1620202) (not e!2474600))))

(assert (=> b!3991805 (= res!1620202 (isDefined!7043 lt!1407715))))

(declare-fun b!3991806 () Bool)

(declare-fun res!1620207 () Bool)

(assert (=> b!3991806 (=> (not res!1620207) (not e!2474600))))

(assert (=> b!3991806 (= res!1620207 (= (value!213267 (_1!24081 (get!14047 lt!1407715))) (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (get!14047 lt!1407715)))) (seqFromList!4998 (originalCharacters!7359 (_1!24081 (get!14047 lt!1407715)))))))))

(declare-fun b!3991807 () Bool)

(declare-fun res!1620205 () Bool)

(assert (=> b!3991807 (=> (not res!1620205) (not e!2474600))))

(assert (=> b!3991807 (= res!1620205 (matchR!5641 (regex!6759 (rule!9779 (_1!24081 (get!14047 lt!1407715)))) (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407715))))))))

(declare-fun d!1181181 () Bool)

(assert (=> d!1181181 e!2474599))

(declare-fun res!1620203 () Bool)

(assert (=> d!1181181 (=> res!1620203 e!2474599)))

(assert (=> d!1181181 (= res!1620203 (isEmpty!25517 lt!1407715))))

(assert (=> d!1181181 (= lt!1407715 e!2474598)))

(declare-fun c!690810 () Bool)

(assert (=> d!1181181 (= c!690810 (and (is-Cons!42695 rules!2999) (is-Nil!42695 (t!331810 rules!2999))))))

(declare-fun lt!1407716 () Unit!61477)

(declare-fun lt!1407717 () Unit!61477)

(assert (=> d!1181181 (= lt!1407716 lt!1407717)))

(assert (=> d!1181181 (isPrefix!3846 lt!1407442 lt!1407442)))

(assert (=> d!1181181 (= lt!1407717 (lemmaIsPrefixRefl!2438 lt!1407442 lt!1407442))))

(assert (=> d!1181181 (rulesValidInductive!2458 thiss!21717 rules!2999)))

(assert (=> d!1181181 (= (maxPrefix!3646 thiss!21717 rules!2999 lt!1407442) lt!1407715)))

(declare-fun bm!285834 () Bool)

(assert (=> bm!285834 (= call!285839 (maxPrefixOneRule!2680 thiss!21717 (h!48115 rules!2999) lt!1407442))))

(declare-fun b!3991808 () Bool)

(assert (=> b!3991808 (= e!2474600 (contains!8494 rules!2999 (rule!9779 (_1!24081 (get!14047 lt!1407715)))))))

(declare-fun b!3991809 () Bool)

(declare-fun res!1620201 () Bool)

(assert (=> b!3991809 (=> (not res!1620201) (not e!2474600))))

(assert (=> b!3991809 (= res!1620201 (= (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407715)))) (originalCharacters!7359 (_1!24081 (get!14047 lt!1407715)))))))

(assert (= (and d!1181181 c!690810) b!3991801))

(assert (= (and d!1181181 (not c!690810)) b!3991804))

(assert (= (or b!3991801 b!3991804) bm!285834))

(assert (= (and d!1181181 (not res!1620203)) b!3991805))

(assert (= (and b!3991805 res!1620202) b!3991809))

(assert (= (and b!3991809 res!1620201) b!3991802))

(assert (= (and b!3991802 res!1620206) b!3991803))

(assert (= (and b!3991803 res!1620204) b!3991806))

(assert (= (and b!3991806 res!1620207) b!3991807))

(assert (= (and b!3991807 res!1620205) b!3991808))

(declare-fun m!4570739 () Bool)

(assert (=> b!3991808 m!4570739))

(declare-fun m!4570741 () Bool)

(assert (=> b!3991808 m!4570741))

(declare-fun m!4570743 () Bool)

(assert (=> b!3991805 m!4570743))

(assert (=> b!3991806 m!4570739))

(declare-fun m!4570745 () Bool)

(assert (=> b!3991806 m!4570745))

(assert (=> b!3991806 m!4570745))

(declare-fun m!4570747 () Bool)

(assert (=> b!3991806 m!4570747))

(declare-fun m!4570749 () Bool)

(assert (=> bm!285834 m!4570749))

(assert (=> b!3991802 m!4570739))

(declare-fun m!4570751 () Bool)

(assert (=> b!3991802 m!4570751))

(declare-fun m!4570753 () Bool)

(assert (=> b!3991802 m!4570753))

(declare-fun m!4570755 () Bool)

(assert (=> d!1181181 m!4570755))

(assert (=> d!1181181 m!4570451))

(assert (=> d!1181181 m!4570453))

(assert (=> d!1181181 m!4570693))

(assert (=> b!3991807 m!4570739))

(declare-fun m!4570757 () Bool)

(assert (=> b!3991807 m!4570757))

(assert (=> b!3991807 m!4570757))

(declare-fun m!4570759 () Bool)

(assert (=> b!3991807 m!4570759))

(assert (=> b!3991807 m!4570759))

(declare-fun m!4570761 () Bool)

(assert (=> b!3991807 m!4570761))

(assert (=> b!3991809 m!4570739))

(assert (=> b!3991809 m!4570757))

(assert (=> b!3991809 m!4570757))

(assert (=> b!3991809 m!4570759))

(declare-fun m!4570763 () Bool)

(assert (=> b!3991804 m!4570763))

(assert (=> b!3991803 m!4570739))

(assert (=> b!3991803 m!4570757))

(assert (=> b!3991803 m!4570757))

(assert (=> b!3991803 m!4570759))

(assert (=> b!3991803 m!4570759))

(declare-fun m!4570765 () Bool)

(assert (=> b!3991803 m!4570765))

(assert (=> b!3991549 d!1181181))

(declare-fun b!3991818 () Bool)

(declare-fun e!2474605 () List!42817)

(assert (=> b!3991818 (= e!2474605 suffix!1299)))

(declare-fun d!1181183 () Bool)

(declare-fun e!2474606 () Bool)

(assert (=> d!1181183 e!2474606))

(declare-fun res!1620212 () Bool)

(assert (=> d!1181183 (=> (not res!1620212) (not e!2474606))))

(declare-fun lt!1407720 () List!42817)

(declare-fun content!6474 (List!42817) (Set C!23514))

(assert (=> d!1181183 (= res!1620212 (= (content!6474 lt!1407720) (set.union (content!6474 prefix!494) (content!6474 suffix!1299))))))

(assert (=> d!1181183 (= lt!1407720 e!2474605)))

(declare-fun c!690813 () Bool)

(assert (=> d!1181183 (= c!690813 (is-Nil!42693 prefix!494))))

(assert (=> d!1181183 (= (++!11161 prefix!494 suffix!1299) lt!1407720)))

(declare-fun b!3991820 () Bool)

(declare-fun res!1620213 () Bool)

(assert (=> b!3991820 (=> (not res!1620213) (not e!2474606))))

(assert (=> b!3991820 (= res!1620213 (= (size!31931 lt!1407720) (+ (size!31931 prefix!494) (size!31931 suffix!1299))))))

(declare-fun b!3991819 () Bool)

(assert (=> b!3991819 (= e!2474605 (Cons!42693 (h!48113 prefix!494) (++!11161 (t!331808 prefix!494) suffix!1299)))))

(declare-fun b!3991821 () Bool)

(assert (=> b!3991821 (= e!2474606 (or (not (= suffix!1299 Nil!42693)) (= lt!1407720 prefix!494)))))

(assert (= (and d!1181183 c!690813) b!3991818))

(assert (= (and d!1181183 (not c!690813)) b!3991819))

(assert (= (and d!1181183 res!1620212) b!3991820))

(assert (= (and b!3991820 res!1620213) b!3991821))

(declare-fun m!4570767 () Bool)

(assert (=> d!1181183 m!4570767))

(declare-fun m!4570769 () Bool)

(assert (=> d!1181183 m!4570769))

(declare-fun m!4570771 () Bool)

(assert (=> d!1181183 m!4570771))

(declare-fun m!4570773 () Bool)

(assert (=> b!3991820 m!4570773))

(assert (=> b!3991820 m!4570435))

(assert (=> b!3991820 m!4570321))

(declare-fun m!4570775 () Bool)

(assert (=> b!3991819 m!4570775))

(assert (=> b!3991549 d!1181183))

(declare-fun b!3991850 () Bool)

(declare-fun e!2474625 () Bool)

(declare-fun lt!1407723 () Bool)

(assert (=> b!3991850 (= e!2474625 (not lt!1407723))))

(declare-fun b!3991851 () Bool)

(declare-fun res!1620231 () Bool)

(declare-fun e!2474626 () Bool)

(assert (=> b!3991851 (=> (not res!1620231) (not e!2474626))))

(declare-fun isEmpty!25520 (List!42817) Bool)

(assert (=> b!3991851 (= res!1620231 (isEmpty!25520 (tail!6225 lt!1407485)))))

(declare-fun bm!285837 () Bool)

(declare-fun call!285842 () Bool)

(assert (=> bm!285837 (= call!285842 (isEmpty!25520 lt!1407485))))

(declare-fun b!3991853 () Bool)

(declare-fun e!2474621 () Bool)

(declare-fun nullable!4092 (Regex!11664) Bool)

(assert (=> b!3991853 (= e!2474621 (nullable!4092 (regex!6759 (rule!9779 token!484))))))

(declare-fun b!3991854 () Bool)

(declare-fun e!2474623 () Bool)

(assert (=> b!3991854 (= e!2474623 (not (= (head!8492 lt!1407485) (c!690784 (regex!6759 (rule!9779 token!484))))))))

(declare-fun b!3991855 () Bool)

(declare-fun derivativeStep!3503 (Regex!11664 C!23514) Regex!11664)

(assert (=> b!3991855 (= e!2474621 (matchR!5641 (derivativeStep!3503 (regex!6759 (rule!9779 token!484)) (head!8492 lt!1407485)) (tail!6225 lt!1407485)))))

(declare-fun b!3991856 () Bool)

(declare-fun res!1620235 () Bool)

(assert (=> b!3991856 (=> (not res!1620235) (not e!2474626))))

(assert (=> b!3991856 (= res!1620235 (not call!285842))))

(declare-fun b!3991857 () Bool)

(declare-fun res!1620234 () Bool)

(declare-fun e!2474627 () Bool)

(assert (=> b!3991857 (=> res!1620234 e!2474627)))

(assert (=> b!3991857 (= res!1620234 e!2474626)))

(declare-fun res!1620230 () Bool)

(assert (=> b!3991857 (=> (not res!1620230) (not e!2474626))))

(assert (=> b!3991857 (= res!1620230 lt!1407723)))

(declare-fun b!3991858 () Bool)

(declare-fun res!1620232 () Bool)

(assert (=> b!3991858 (=> res!1620232 e!2474623)))

(assert (=> b!3991858 (= res!1620232 (not (isEmpty!25520 (tail!6225 lt!1407485))))))

(declare-fun b!3991859 () Bool)

(declare-fun e!2474624 () Bool)

(assert (=> b!3991859 (= e!2474624 e!2474623)))

(declare-fun res!1620237 () Bool)

(assert (=> b!3991859 (=> res!1620237 e!2474623)))

(assert (=> b!3991859 (= res!1620237 call!285842)))

(declare-fun b!3991860 () Bool)

(declare-fun res!1620236 () Bool)

(assert (=> b!3991860 (=> res!1620236 e!2474627)))

(assert (=> b!3991860 (= res!1620236 (not (is-ElementMatch!11664 (regex!6759 (rule!9779 token!484)))))))

(assert (=> b!3991860 (= e!2474625 e!2474627)))

(declare-fun b!3991861 () Bool)

(declare-fun e!2474622 () Bool)

(assert (=> b!3991861 (= e!2474622 e!2474625)))

(declare-fun c!690822 () Bool)

(assert (=> b!3991861 (= c!690822 (is-EmptyLang!11664 (regex!6759 (rule!9779 token!484))))))

(declare-fun b!3991862 () Bool)

(assert (=> b!3991862 (= e!2474626 (= (head!8492 lt!1407485) (c!690784 (regex!6759 (rule!9779 token!484)))))))

(declare-fun b!3991863 () Bool)

(assert (=> b!3991863 (= e!2474622 (= lt!1407723 call!285842))))

(declare-fun d!1181185 () Bool)

(assert (=> d!1181185 e!2474622))

(declare-fun c!690821 () Bool)

(assert (=> d!1181185 (= c!690821 (is-EmptyExpr!11664 (regex!6759 (rule!9779 token!484))))))

(assert (=> d!1181185 (= lt!1407723 e!2474621)))

(declare-fun c!690820 () Bool)

(assert (=> d!1181185 (= c!690820 (isEmpty!25520 lt!1407485))))

(assert (=> d!1181185 (validRegex!5291 (regex!6759 (rule!9779 token!484)))))

(assert (=> d!1181185 (= (matchR!5641 (regex!6759 (rule!9779 token!484)) lt!1407485) lt!1407723)))

(declare-fun b!3991852 () Bool)

(assert (=> b!3991852 (= e!2474627 e!2474624)))

(declare-fun res!1620233 () Bool)

(assert (=> b!3991852 (=> (not res!1620233) (not e!2474624))))

(assert (=> b!3991852 (= res!1620233 (not lt!1407723))))

(assert (= (and d!1181185 c!690820) b!3991853))

(assert (= (and d!1181185 (not c!690820)) b!3991855))

(assert (= (and d!1181185 c!690821) b!3991863))

(assert (= (and d!1181185 (not c!690821)) b!3991861))

(assert (= (and b!3991861 c!690822) b!3991850))

(assert (= (and b!3991861 (not c!690822)) b!3991860))

(assert (= (and b!3991860 (not res!1620236)) b!3991857))

(assert (= (and b!3991857 res!1620230) b!3991856))

(assert (= (and b!3991856 res!1620235) b!3991851))

(assert (= (and b!3991851 res!1620231) b!3991862))

(assert (= (and b!3991857 (not res!1620234)) b!3991852))

(assert (= (and b!3991852 res!1620233) b!3991859))

(assert (= (and b!3991859 (not res!1620237)) b!3991858))

(assert (= (and b!3991858 (not res!1620232)) b!3991854))

(assert (= (or b!3991863 b!3991856 b!3991859) bm!285837))

(declare-fun m!4570777 () Bool)

(assert (=> d!1181185 m!4570777))

(assert (=> d!1181185 m!4570399))

(assert (=> b!3991854 m!4570727))

(assert (=> b!3991851 m!4570721))

(assert (=> b!3991851 m!4570721))

(declare-fun m!4570779 () Bool)

(assert (=> b!3991851 m!4570779))

(assert (=> b!3991858 m!4570721))

(assert (=> b!3991858 m!4570721))

(assert (=> b!3991858 m!4570779))

(assert (=> b!3991862 m!4570727))

(assert (=> bm!285837 m!4570777))

(assert (=> b!3991855 m!4570727))

(assert (=> b!3991855 m!4570727))

(declare-fun m!4570781 () Bool)

(assert (=> b!3991855 m!4570781))

(assert (=> b!3991855 m!4570721))

(assert (=> b!3991855 m!4570781))

(assert (=> b!3991855 m!4570721))

(declare-fun m!4570783 () Bool)

(assert (=> b!3991855 m!4570783))

(declare-fun m!4570785 () Bool)

(assert (=> b!3991853 m!4570785))

(assert (=> b!3991553 d!1181185))

(declare-fun b!3991864 () Bool)

(declare-fun e!2474630 () Bool)

(declare-fun e!2474629 () Bool)

(assert (=> b!3991864 (= e!2474630 e!2474629)))

(declare-fun res!1620239 () Bool)

(assert (=> b!3991864 (=> (not res!1620239) (not e!2474629))))

(assert (=> b!3991864 (= res!1620239 (not (is-Nil!42693 lt!1407439)))))

(declare-fun d!1181187 () Bool)

(declare-fun e!2474628 () Bool)

(assert (=> d!1181187 e!2474628))

(declare-fun res!1620238 () Bool)

(assert (=> d!1181187 (=> res!1620238 e!2474628)))

(declare-fun lt!1407724 () Bool)

(assert (=> d!1181187 (= res!1620238 (not lt!1407724))))

(assert (=> d!1181187 (= lt!1407724 e!2474630)))

(declare-fun res!1620240 () Bool)

(assert (=> d!1181187 (=> res!1620240 e!2474630)))

(assert (=> d!1181187 (= res!1620240 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181187 (= (isPrefix!3846 lt!1407485 lt!1407439) lt!1407724)))

(declare-fun b!3991867 () Bool)

(assert (=> b!3991867 (= e!2474628 (>= (size!31931 lt!1407439) (size!31931 lt!1407485)))))

(declare-fun b!3991866 () Bool)

(assert (=> b!3991866 (= e!2474629 (isPrefix!3846 (tail!6225 lt!1407485) (tail!6225 lt!1407439)))))

(declare-fun b!3991865 () Bool)

(declare-fun res!1620241 () Bool)

(assert (=> b!3991865 (=> (not res!1620241) (not e!2474629))))

(assert (=> b!3991865 (= res!1620241 (= (head!8492 lt!1407485) (head!8492 lt!1407439)))))

(assert (= (and d!1181187 (not res!1620240)) b!3991864))

(assert (= (and b!3991864 res!1620239) b!3991865))

(assert (= (and b!3991865 res!1620241) b!3991866))

(assert (= (and d!1181187 (not res!1620238)) b!3991867))

(assert (=> b!3991867 m!4570685))

(assert (=> b!3991867 m!4570433))

(assert (=> b!3991866 m!4570721))

(declare-fun m!4570787 () Bool)

(assert (=> b!3991866 m!4570787))

(assert (=> b!3991866 m!4570721))

(assert (=> b!3991866 m!4570787))

(declare-fun m!4570789 () Bool)

(assert (=> b!3991866 m!4570789))

(assert (=> b!3991865 m!4570727))

(declare-fun m!4570791 () Bool)

(assert (=> b!3991865 m!4570791))

(assert (=> b!3991553 d!1181187))

(declare-fun d!1181189 () Bool)

(assert (=> d!1181189 (isPrefix!3846 lt!1407485 (++!11161 prefix!494 newSuffix!27))))

(declare-fun lt!1407727 () Unit!61477)

(declare-fun choose!24015 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> d!1181189 (= lt!1407727 (choose!24015 lt!1407485 prefix!494 newSuffix!27))))

(assert (=> d!1181189 (isPrefix!3846 lt!1407485 prefix!494)))

(assert (=> d!1181189 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!679 lt!1407485 prefix!494 newSuffix!27) lt!1407727)))

(declare-fun bs!588424 () Bool)

(assert (= bs!588424 d!1181189))

(assert (=> bs!588424 m!4570317))

(assert (=> bs!588424 m!4570317))

(declare-fun m!4570793 () Bool)

(assert (=> bs!588424 m!4570793))

(declare-fun m!4570795 () Bool)

(assert (=> bs!588424 m!4570795))

(assert (=> bs!588424 m!4570409))

(assert (=> b!3991553 d!1181189))

(declare-fun d!1181191 () Bool)

(assert (=> d!1181191 (isPrefix!3846 lt!1407485 (++!11161 prefix!494 suffix!1299))))

(declare-fun lt!1407728 () Unit!61477)

(assert (=> d!1181191 (= lt!1407728 (choose!24015 lt!1407485 prefix!494 suffix!1299))))

(assert (=> d!1181191 (isPrefix!3846 lt!1407485 prefix!494)))

(assert (=> d!1181191 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!679 lt!1407485 prefix!494 suffix!1299) lt!1407728)))

(declare-fun bs!588425 () Bool)

(assert (= bs!588425 d!1181191))

(assert (=> bs!588425 m!4570423))

(assert (=> bs!588425 m!4570423))

(declare-fun m!4570797 () Bool)

(assert (=> bs!588425 m!4570797))

(declare-fun m!4570799 () Bool)

(assert (=> bs!588425 m!4570799))

(assert (=> bs!588425 m!4570409))

(assert (=> b!3991553 d!1181191))

(declare-fun d!1181193 () Bool)

(assert (=> d!1181193 (= (_2!24081 (v!39528 lt!1407469)) lt!1407488)))

(declare-fun lt!1407729 () Unit!61477)

(assert (=> d!1181193 (= lt!1407729 (choose!24013 lt!1407430 (_2!24081 (v!39528 lt!1407469)) lt!1407430 lt!1407488 lt!1407439))))

(assert (=> d!1181193 (isPrefix!3846 lt!1407430 lt!1407439)))

(assert (=> d!1181193 (= (lemmaSamePrefixThenSameSuffix!2033 lt!1407430 (_2!24081 (v!39528 lt!1407469)) lt!1407430 lt!1407488 lt!1407439) lt!1407729)))

(declare-fun bs!588426 () Bool)

(assert (= bs!588426 d!1181193))

(declare-fun m!4570801 () Bool)

(assert (=> bs!588426 m!4570801))

(assert (=> bs!588426 m!4570301))

(assert (=> b!3991531 d!1181193))

(declare-fun b!3991868 () Bool)

(declare-fun e!2474633 () Bool)

(declare-fun e!2474632 () Bool)

(assert (=> b!3991868 (= e!2474633 e!2474632)))

(declare-fun res!1620243 () Bool)

(assert (=> b!3991868 (=> (not res!1620243) (not e!2474632))))

(assert (=> b!3991868 (= res!1620243 (not (is-Nil!42693 lt!1407447)))))

(declare-fun d!1181195 () Bool)

(declare-fun e!2474631 () Bool)

(assert (=> d!1181195 e!2474631))

(declare-fun res!1620242 () Bool)

(assert (=> d!1181195 (=> res!1620242 e!2474631)))

(declare-fun lt!1407730 () Bool)

(assert (=> d!1181195 (= res!1620242 (not lt!1407730))))

(assert (=> d!1181195 (= lt!1407730 e!2474633)))

(declare-fun res!1620244 () Bool)

(assert (=> d!1181195 (=> res!1620244 e!2474633)))

(assert (=> d!1181195 (= res!1620244 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181195 (= (isPrefix!3846 lt!1407430 lt!1407447) lt!1407730)))

(declare-fun b!3991871 () Bool)

(assert (=> b!3991871 (= e!2474631 (>= (size!31931 lt!1407447) (size!31931 lt!1407430)))))

(declare-fun b!3991870 () Bool)

(assert (=> b!3991870 (= e!2474632 (isPrefix!3846 (tail!6225 lt!1407430) (tail!6225 lt!1407447)))))

(declare-fun b!3991869 () Bool)

(declare-fun res!1620245 () Bool)

(assert (=> b!3991869 (=> (not res!1620245) (not e!2474632))))

(assert (=> b!3991869 (= res!1620245 (= (head!8492 lt!1407430) (head!8492 lt!1407447)))))

(assert (= (and d!1181195 (not res!1620244)) b!3991868))

(assert (= (and b!3991868 res!1620243) b!3991869))

(assert (= (and b!3991869 res!1620245) b!3991870))

(assert (= (and d!1181195 (not res!1620242)) b!3991871))

(declare-fun m!4570803 () Bool)

(assert (=> b!3991871 m!4570803))

(assert (=> b!3991871 m!4570355))

(declare-fun m!4570805 () Bool)

(assert (=> b!3991870 m!4570805))

(declare-fun m!4570807 () Bool)

(assert (=> b!3991870 m!4570807))

(assert (=> b!3991870 m!4570805))

(assert (=> b!3991870 m!4570807))

(declare-fun m!4570809 () Bool)

(assert (=> b!3991870 m!4570809))

(declare-fun m!4570811 () Bool)

(assert (=> b!3991869 m!4570811))

(declare-fun m!4570813 () Bool)

(assert (=> b!3991869 m!4570813))

(assert (=> b!3991531 d!1181195))

(declare-fun d!1181197 () Bool)

(assert (=> d!1181197 (isPrefix!3846 lt!1407430 (++!11161 lt!1407430 lt!1407488))))

(declare-fun lt!1407731 () Unit!61477)

(assert (=> d!1181197 (= lt!1407731 (choose!24014 lt!1407430 lt!1407488))))

(assert (=> d!1181197 (= (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407430 lt!1407488) lt!1407731)))

(declare-fun bs!588427 () Bool)

(assert (= bs!588427 d!1181197))

(assert (=> bs!588427 m!4570365))

(assert (=> bs!588427 m!4570365))

(declare-fun m!4570815 () Bool)

(assert (=> bs!588427 m!4570815))

(declare-fun m!4570817 () Bool)

(assert (=> bs!588427 m!4570817))

(assert (=> b!3991531 d!1181197))

(declare-fun d!1181199 () Bool)

(declare-fun lt!1407732 () Int)

(assert (=> d!1181199 (>= lt!1407732 0)))

(declare-fun e!2474634 () Int)

(assert (=> d!1181199 (= lt!1407732 e!2474634)))

(declare-fun c!690823 () Bool)

(assert (=> d!1181199 (= c!690823 (is-Nil!42693 (originalCharacters!7359 token!484)))))

(assert (=> d!1181199 (= (size!31931 (originalCharacters!7359 token!484)) lt!1407732)))

(declare-fun b!3991872 () Bool)

(assert (=> b!3991872 (= e!2474634 0)))

(declare-fun b!3991873 () Bool)

(assert (=> b!3991873 (= e!2474634 (+ 1 (size!31931 (t!331808 (originalCharacters!7359 token!484)))))))

(assert (= (and d!1181199 c!690823) b!3991872))

(assert (= (and d!1181199 (not c!690823)) b!3991873))

(declare-fun m!4570819 () Bool)

(assert (=> b!3991873 m!4570819))

(assert (=> b!3991530 d!1181199))

(declare-fun b!3991874 () Bool)

(declare-fun e!2474635 () List!42817)

(assert (=> b!3991874 (= e!2474635 lt!1407445)))

(declare-fun d!1181201 () Bool)

(declare-fun e!2474636 () Bool)

(assert (=> d!1181201 e!2474636))

(declare-fun res!1620246 () Bool)

(assert (=> d!1181201 (=> (not res!1620246) (not e!2474636))))

(declare-fun lt!1407733 () List!42817)

(assert (=> d!1181201 (= res!1620246 (= (content!6474 lt!1407733) (set.union (content!6474 prefix!494) (content!6474 lt!1407445))))))

(assert (=> d!1181201 (= lt!1407733 e!2474635)))

(declare-fun c!690824 () Bool)

(assert (=> d!1181201 (= c!690824 (is-Nil!42693 prefix!494))))

(assert (=> d!1181201 (= (++!11161 prefix!494 lt!1407445) lt!1407733)))

(declare-fun b!3991876 () Bool)

(declare-fun res!1620247 () Bool)

(assert (=> b!3991876 (=> (not res!1620247) (not e!2474636))))

(assert (=> b!3991876 (= res!1620247 (= (size!31931 lt!1407733) (+ (size!31931 prefix!494) (size!31931 lt!1407445))))))

(declare-fun b!3991875 () Bool)

(assert (=> b!3991875 (= e!2474635 (Cons!42693 (h!48113 prefix!494) (++!11161 (t!331808 prefix!494) lt!1407445)))))

(declare-fun b!3991877 () Bool)

(assert (=> b!3991877 (= e!2474636 (or (not (= lt!1407445 Nil!42693)) (= lt!1407733 prefix!494)))))

(assert (= (and d!1181201 c!690824) b!3991874))

(assert (= (and d!1181201 (not c!690824)) b!3991875))

(assert (= (and d!1181201 res!1620246) b!3991876))

(assert (= (and b!3991876 res!1620247) b!3991877))

(declare-fun m!4570821 () Bool)

(assert (=> d!1181201 m!4570821))

(assert (=> d!1181201 m!4570769))

(declare-fun m!4570823 () Bool)

(assert (=> d!1181201 m!4570823))

(declare-fun m!4570825 () Bool)

(assert (=> b!3991876 m!4570825))

(assert (=> b!3991876 m!4570435))

(declare-fun m!4570827 () Bool)

(assert (=> b!3991876 m!4570827))

(declare-fun m!4570829 () Bool)

(assert (=> b!3991875 m!4570829))

(assert (=> b!3991534 d!1181201))

(declare-fun b!3991878 () Bool)

(declare-fun e!2474637 () List!42817)

(assert (=> b!3991878 (= e!2474637 lt!1407466)))

(declare-fun d!1181203 () Bool)

(declare-fun e!2474638 () Bool)

(assert (=> d!1181203 e!2474638))

(declare-fun res!1620248 () Bool)

(assert (=> d!1181203 (=> (not res!1620248) (not e!2474638))))

(declare-fun lt!1407734 () List!42817)

(assert (=> d!1181203 (= res!1620248 (= (content!6474 lt!1407734) (set.union (content!6474 lt!1407439) (content!6474 lt!1407466))))))

(assert (=> d!1181203 (= lt!1407734 e!2474637)))

(declare-fun c!690825 () Bool)

(assert (=> d!1181203 (= c!690825 (is-Nil!42693 lt!1407439))))

(assert (=> d!1181203 (= (++!11161 lt!1407439 lt!1407466) lt!1407734)))

(declare-fun b!3991880 () Bool)

(declare-fun res!1620249 () Bool)

(assert (=> b!3991880 (=> (not res!1620249) (not e!2474638))))

(assert (=> b!3991880 (= res!1620249 (= (size!31931 lt!1407734) (+ (size!31931 lt!1407439) (size!31931 lt!1407466))))))

(declare-fun b!3991879 () Bool)

(assert (=> b!3991879 (= e!2474637 (Cons!42693 (h!48113 lt!1407439) (++!11161 (t!331808 lt!1407439) lt!1407466)))))

(declare-fun b!3991881 () Bool)

(assert (=> b!3991881 (= e!2474638 (or (not (= lt!1407466 Nil!42693)) (= lt!1407734 lt!1407439)))))

(assert (= (and d!1181203 c!690825) b!3991878))

(assert (= (and d!1181203 (not c!690825)) b!3991879))

(assert (= (and d!1181203 res!1620248) b!3991880))

(assert (= (and b!3991880 res!1620249) b!3991881))

(declare-fun m!4570831 () Bool)

(assert (=> d!1181203 m!4570831))

(declare-fun m!4570833 () Bool)

(assert (=> d!1181203 m!4570833))

(declare-fun m!4570835 () Bool)

(assert (=> d!1181203 m!4570835))

(declare-fun m!4570837 () Bool)

(assert (=> b!3991880 m!4570837))

(assert (=> b!3991880 m!4570685))

(declare-fun m!4570839 () Bool)

(assert (=> b!3991880 m!4570839))

(declare-fun m!4570841 () Bool)

(assert (=> b!3991879 m!4570841))

(assert (=> b!3991534 d!1181203))

(declare-fun d!1181205 () Bool)

(assert (=> d!1181205 (= (++!11161 (++!11161 prefix!494 newSuffix!27) lt!1407466) (++!11161 prefix!494 (++!11161 newSuffix!27 lt!1407466)))))

(declare-fun lt!1407737 () Unit!61477)

(declare-fun choose!24019 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> d!1181205 (= lt!1407737 (choose!24019 prefix!494 newSuffix!27 lt!1407466))))

(assert (=> d!1181205 (= (lemmaConcatAssociativity!2481 prefix!494 newSuffix!27 lt!1407466) lt!1407737)))

(declare-fun bs!588428 () Bool)

(assert (= bs!588428 d!1181205))

(assert (=> bs!588428 m!4570317))

(declare-fun m!4570843 () Bool)

(assert (=> bs!588428 m!4570843))

(assert (=> bs!588428 m!4570393))

(declare-fun m!4570845 () Bool)

(assert (=> bs!588428 m!4570845))

(assert (=> bs!588428 m!4570317))

(assert (=> bs!588428 m!4570393))

(declare-fun m!4570847 () Bool)

(assert (=> bs!588428 m!4570847))

(assert (=> b!3991534 d!1181205))

(declare-fun d!1181207 () Bool)

(assert (=> d!1181207 (= (inv!57022 (tag!7619 (h!48115 rules!2999))) (= (mod (str.len (value!213266 (tag!7619 (h!48115 rules!2999)))) 2) 0))))

(assert (=> b!3991555 d!1181207))

(declare-fun d!1181209 () Bool)

(declare-fun res!1620252 () Bool)

(declare-fun e!2474641 () Bool)

(assert (=> d!1181209 (=> (not res!1620252) (not e!2474641))))

(declare-fun semiInverseModEq!2898 (Int Int) Bool)

(assert (=> d!1181209 (= res!1620252 (semiInverseModEq!2898 (toChars!9106 (transformation!6759 (h!48115 rules!2999))) (toValue!9247 (transformation!6759 (h!48115 rules!2999)))))))

(assert (=> d!1181209 (= (inv!57026 (transformation!6759 (h!48115 rules!2999))) e!2474641)))

(declare-fun b!3991884 () Bool)

(declare-fun equivClasses!2797 (Int Int) Bool)

(assert (=> b!3991884 (= e!2474641 (equivClasses!2797 (toChars!9106 (transformation!6759 (h!48115 rules!2999))) (toValue!9247 (transformation!6759 (h!48115 rules!2999)))))))

(assert (= (and d!1181209 res!1620252) b!3991884))

(declare-fun m!4570849 () Bool)

(assert (=> d!1181209 m!4570849))

(declare-fun m!4570851 () Bool)

(assert (=> b!3991884 m!4570851))

(assert (=> b!3991555 d!1181209))

(declare-fun b!3991885 () Bool)

(declare-fun e!2474642 () List!42817)

(assert (=> b!3991885 (= e!2474642 newSuffix!27)))

(declare-fun d!1181211 () Bool)

(declare-fun e!2474643 () Bool)

(assert (=> d!1181211 e!2474643))

(declare-fun res!1620253 () Bool)

(assert (=> d!1181211 (=> (not res!1620253) (not e!2474643))))

(declare-fun lt!1407738 () List!42817)

(assert (=> d!1181211 (= res!1620253 (= (content!6474 lt!1407738) (set.union (content!6474 prefix!494) (content!6474 newSuffix!27))))))

(assert (=> d!1181211 (= lt!1407738 e!2474642)))

(declare-fun c!690826 () Bool)

(assert (=> d!1181211 (= c!690826 (is-Nil!42693 prefix!494))))

(assert (=> d!1181211 (= (++!11161 prefix!494 newSuffix!27) lt!1407738)))

(declare-fun b!3991887 () Bool)

(declare-fun res!1620254 () Bool)

(assert (=> b!3991887 (=> (not res!1620254) (not e!2474643))))

(assert (=> b!3991887 (= res!1620254 (= (size!31931 lt!1407738) (+ (size!31931 prefix!494) (size!31931 newSuffix!27))))))

(declare-fun b!3991886 () Bool)

(assert (=> b!3991886 (= e!2474642 (Cons!42693 (h!48113 prefix!494) (++!11161 (t!331808 prefix!494) newSuffix!27)))))

(declare-fun b!3991888 () Bool)

(assert (=> b!3991888 (= e!2474643 (or (not (= newSuffix!27 Nil!42693)) (= lt!1407738 prefix!494)))))

(assert (= (and d!1181211 c!690826) b!3991885))

(assert (= (and d!1181211 (not c!690826)) b!3991886))

(assert (= (and d!1181211 res!1620253) b!3991887))

(assert (= (and b!3991887 res!1620254) b!3991888))

(declare-fun m!4570853 () Bool)

(assert (=> d!1181211 m!4570853))

(assert (=> d!1181211 m!4570769))

(declare-fun m!4570855 () Bool)

(assert (=> d!1181211 m!4570855))

(declare-fun m!4570857 () Bool)

(assert (=> b!3991887 m!4570857))

(assert (=> b!3991887 m!4570435))

(assert (=> b!3991887 m!4570323))

(declare-fun m!4570859 () Bool)

(assert (=> b!3991886 m!4570859))

(assert (=> b!3991533 d!1181211))

(declare-fun b!3991889 () Bool)

(declare-fun e!2474644 () List!42817)

(assert (=> b!3991889 (= e!2474644 newSuffixResult!27)))

(declare-fun d!1181213 () Bool)

(declare-fun e!2474645 () Bool)

(assert (=> d!1181213 e!2474645))

(declare-fun res!1620255 () Bool)

(assert (=> d!1181213 (=> (not res!1620255) (not e!2474645))))

(declare-fun lt!1407739 () List!42817)

(assert (=> d!1181213 (= res!1620255 (= (content!6474 lt!1407739) (set.union (content!6474 lt!1407485) (content!6474 newSuffixResult!27))))))

(assert (=> d!1181213 (= lt!1407739 e!2474644)))

(declare-fun c!690827 () Bool)

(assert (=> d!1181213 (= c!690827 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181213 (= (++!11161 lt!1407485 newSuffixResult!27) lt!1407739)))

(declare-fun b!3991891 () Bool)

(declare-fun res!1620256 () Bool)

(assert (=> b!3991891 (=> (not res!1620256) (not e!2474645))))

(assert (=> b!3991891 (= res!1620256 (= (size!31931 lt!1407739) (+ (size!31931 lt!1407485) (size!31931 newSuffixResult!27))))))

(declare-fun b!3991890 () Bool)

(assert (=> b!3991890 (= e!2474644 (Cons!42693 (h!48113 lt!1407485) (++!11161 (t!331808 lt!1407485) newSuffixResult!27)))))

(declare-fun b!3991892 () Bool)

(assert (=> b!3991892 (= e!2474645 (or (not (= newSuffixResult!27 Nil!42693)) (= lt!1407739 lt!1407485)))))

(assert (= (and d!1181213 c!690827) b!3991889))

(assert (= (and d!1181213 (not c!690827)) b!3991890))

(assert (= (and d!1181213 res!1620255) b!3991891))

(assert (= (and b!3991891 res!1620256) b!3991892))

(declare-fun m!4570861 () Bool)

(assert (=> d!1181213 m!4570861))

(declare-fun m!4570863 () Bool)

(assert (=> d!1181213 m!4570863))

(declare-fun m!4570865 () Bool)

(assert (=> d!1181213 m!4570865))

(declare-fun m!4570867 () Bool)

(assert (=> b!3991891 m!4570867))

(assert (=> b!3991891 m!4570433))

(declare-fun m!4570869 () Bool)

(assert (=> b!3991891 m!4570869))

(declare-fun m!4570871 () Bool)

(assert (=> b!3991890 m!4570871))

(assert (=> b!3991533 d!1181213))

(declare-fun d!1181215 () Bool)

(declare-fun lt!1407744 () Int)

(assert (=> d!1181215 (>= lt!1407744 0)))

(declare-fun e!2474648 () Int)

(assert (=> d!1181215 (= lt!1407744 e!2474648)))

(declare-fun c!690830 () Bool)

(assert (=> d!1181215 (= c!690830 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181215 (= (size!31931 lt!1407485) lt!1407744)))

(declare-fun b!3991897 () Bool)

(assert (=> b!3991897 (= e!2474648 0)))

(declare-fun b!3991898 () Bool)

(assert (=> b!3991898 (= e!2474648 (+ 1 (size!31931 (t!331808 lt!1407485))))))

(assert (= (and d!1181215 c!690830) b!3991897))

(assert (= (and d!1181215 (not c!690830)) b!3991898))

(declare-fun m!4570873 () Bool)

(assert (=> b!3991898 m!4570873))

(assert (=> b!3991537 d!1181215))

(declare-fun d!1181217 () Bool)

(declare-fun lt!1407749 () Int)

(assert (=> d!1181217 (>= lt!1407749 0)))

(declare-fun e!2474651 () Int)

(assert (=> d!1181217 (= lt!1407749 e!2474651)))

(declare-fun c!690831 () Bool)

(assert (=> d!1181217 (= c!690831 (is-Nil!42693 prefix!494))))

(assert (=> d!1181217 (= (size!31931 prefix!494) lt!1407749)))

(declare-fun b!3991901 () Bool)

(assert (=> b!3991901 (= e!2474651 0)))

(declare-fun b!3991902 () Bool)

(assert (=> b!3991902 (= e!2474651 (+ 1 (size!31931 (t!331808 prefix!494))))))

(assert (= (and d!1181217 c!690831) b!3991901))

(assert (= (and d!1181217 (not c!690831)) b!3991902))

(declare-fun m!4570875 () Bool)

(assert (=> b!3991902 m!4570875))

(assert (=> b!3991537 d!1181217))

(declare-fun d!1181219 () Bool)

(declare-fun list!15853 (Conc!12970) List!42817)

(assert (=> d!1181219 (= (list!15851 (charsOf!4575 token!484)) (list!15853 (c!690783 (charsOf!4575 token!484))))))

(declare-fun bs!588429 () Bool)

(assert (= bs!588429 d!1181219))

(declare-fun m!4570877 () Bool)

(assert (=> bs!588429 m!4570877))

(assert (=> b!3991537 d!1181219))

(declare-fun d!1181221 () Bool)

(declare-fun lt!1407754 () BalanceConc!25534)

(assert (=> d!1181221 (= (list!15851 lt!1407754) (originalCharacters!7359 token!484))))

(declare-fun dynLambda!18135 (Int TokenValue!6989) BalanceConc!25534)

(assert (=> d!1181221 (= lt!1407754 (dynLambda!18135 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (value!213267 token!484)))))

(assert (=> d!1181221 (= (charsOf!4575 token!484) lt!1407754)))

(declare-fun b_lambda!116527 () Bool)

(assert (=> (not b_lambda!116527) (not d!1181221)))

(declare-fun t!331815 () Bool)

(declare-fun tb!240253 () Bool)

(assert (=> (and b!3991559 (= (toChars!9106 (transformation!6759 (rule!9779 token!484))) (toChars!9106 (transformation!6759 (rule!9779 token!484)))) t!331815) tb!240253))

(declare-fun b!3991919 () Bool)

(declare-fun e!2474658 () Bool)

(declare-fun tp!1215803 () Bool)

(declare-fun inv!57029 (Conc!12970) Bool)

(assert (=> b!3991919 (= e!2474658 (and (inv!57029 (c!690783 (dynLambda!18135 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (value!213267 token!484)))) tp!1215803))))

(declare-fun result!291114 () Bool)

(declare-fun inv!57030 (BalanceConc!25534) Bool)

(assert (=> tb!240253 (= result!291114 (and (inv!57030 (dynLambda!18135 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (value!213267 token!484))) e!2474658))))

(assert (= tb!240253 b!3991919))

(declare-fun m!4570879 () Bool)

(assert (=> b!3991919 m!4570879))

(declare-fun m!4570881 () Bool)

(assert (=> tb!240253 m!4570881))

(assert (=> d!1181221 t!331815))

(declare-fun b_and!306679 () Bool)

(assert (= b_and!306665 (and (=> t!331815 result!291114) b_and!306679)))

(declare-fun t!331817 () Bool)

(declare-fun tb!240255 () Bool)

(assert (=> (and b!3991560 (= (toChars!9106 (transformation!6759 (h!48115 rules!2999))) (toChars!9106 (transformation!6759 (rule!9779 token!484)))) t!331817) tb!240255))

(declare-fun result!291118 () Bool)

(assert (= result!291118 result!291114))

(assert (=> d!1181221 t!331817))

(declare-fun b_and!306681 () Bool)

(assert (= b_and!306669 (and (=> t!331817 result!291118) b_and!306681)))

(declare-fun m!4570883 () Bool)

(assert (=> d!1181221 m!4570883))

(declare-fun m!4570885 () Bool)

(assert (=> d!1181221 m!4570885))

(assert (=> b!3991537 d!1181221))

(declare-fun b!3991920 () Bool)

(declare-fun e!2474659 () List!42817)

(assert (=> b!3991920 (= e!2474659 suffixResult!105)))

(declare-fun d!1181223 () Bool)

(declare-fun e!2474660 () Bool)

(assert (=> d!1181223 e!2474660))

(declare-fun res!1620271 () Bool)

(assert (=> d!1181223 (=> (not res!1620271) (not e!2474660))))

(declare-fun lt!1407755 () List!42817)

(assert (=> d!1181223 (= res!1620271 (= (content!6474 lt!1407755) (set.union (content!6474 lt!1407485) (content!6474 suffixResult!105))))))

(assert (=> d!1181223 (= lt!1407755 e!2474659)))

(declare-fun c!690832 () Bool)

(assert (=> d!1181223 (= c!690832 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181223 (= (++!11161 lt!1407485 suffixResult!105) lt!1407755)))

(declare-fun b!3991922 () Bool)

(declare-fun res!1620272 () Bool)

(assert (=> b!3991922 (=> (not res!1620272) (not e!2474660))))

(assert (=> b!3991922 (= res!1620272 (= (size!31931 lt!1407755) (+ (size!31931 lt!1407485) (size!31931 suffixResult!105))))))

(declare-fun b!3991921 () Bool)

(assert (=> b!3991921 (= e!2474659 (Cons!42693 (h!48113 lt!1407485) (++!11161 (t!331808 lt!1407485) suffixResult!105)))))

(declare-fun b!3991923 () Bool)

(assert (=> b!3991923 (= e!2474660 (or (not (= suffixResult!105 Nil!42693)) (= lt!1407755 lt!1407485)))))

(assert (= (and d!1181223 c!690832) b!3991920))

(assert (= (and d!1181223 (not c!690832)) b!3991921))

(assert (= (and d!1181223 res!1620271) b!3991922))

(assert (= (and b!3991922 res!1620272) b!3991923))

(declare-fun m!4570887 () Bool)

(assert (=> d!1181223 m!4570887))

(assert (=> d!1181223 m!4570863))

(declare-fun m!4570889 () Bool)

(assert (=> d!1181223 m!4570889))

(declare-fun m!4570891 () Bool)

(assert (=> b!3991922 m!4570891))

(assert (=> b!3991922 m!4570433))

(declare-fun m!4570893 () Bool)

(assert (=> b!3991922 m!4570893))

(declare-fun m!4570895 () Bool)

(assert (=> b!3991921 m!4570895))

(assert (=> b!3991557 d!1181223))

(declare-fun d!1181225 () Bool)

(declare-fun e!2474663 () Bool)

(assert (=> d!1181225 e!2474663))

(declare-fun res!1620275 () Bool)

(assert (=> d!1181225 (=> (not res!1620275) (not e!2474663))))

(assert (=> d!1181225 (= res!1620275 (semiInverseModEq!2898 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (toValue!9247 (transformation!6759 (rule!9779 token!484)))))))

(declare-fun Unit!61491 () Unit!61477)

(assert (=> d!1181225 (= (lemmaInv!974 (transformation!6759 (rule!9779 token!484))) Unit!61491)))

(declare-fun b!3991926 () Bool)

(assert (=> b!3991926 (= e!2474663 (equivClasses!2797 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (toValue!9247 (transformation!6759 (rule!9779 token!484)))))))

(assert (= (and d!1181225 res!1620275) b!3991926))

(declare-fun m!4570897 () Bool)

(assert (=> d!1181225 m!4570897))

(declare-fun m!4570899 () Bool)

(assert (=> b!3991926 m!4570899))

(assert (=> b!3991557 d!1181225))

(declare-fun d!1181227 () Bool)

(declare-fun res!1620287 () Bool)

(declare-fun e!2474670 () Bool)

(assert (=> d!1181227 (=> (not res!1620287) (not e!2474670))))

(assert (=> d!1181227 (= res!1620287 (validRegex!5291 (regex!6759 (rule!9779 token!484))))))

(assert (=> d!1181227 (= (ruleValid!2691 thiss!21717 (rule!9779 token!484)) e!2474670)))

(declare-fun b!3991940 () Bool)

(declare-fun res!1620288 () Bool)

(assert (=> b!3991940 (=> (not res!1620288) (not e!2474670))))

(assert (=> b!3991940 (= res!1620288 (not (nullable!4092 (regex!6759 (rule!9779 token!484)))))))

(declare-fun b!3991941 () Bool)

(assert (=> b!3991941 (= e!2474670 (not (= (tag!7619 (rule!9779 token!484)) (String!48666 ""))))))

(assert (= (and d!1181227 res!1620287) b!3991940))

(assert (= (and b!3991940 res!1620288) b!3991941))

(assert (=> d!1181227 m!4570399))

(assert (=> b!3991940 m!4570785))

(assert (=> b!3991557 d!1181227))

(declare-fun d!1181229 () Bool)

(assert (=> d!1181229 (ruleValid!2691 thiss!21717 (rule!9779 token!484))))

(declare-fun lt!1407763 () Unit!61477)

(declare-fun choose!24020 (LexerInterface!6348 Rule!13318 List!42819) Unit!61477)

(assert (=> d!1181229 (= lt!1407763 (choose!24020 thiss!21717 (rule!9779 token!484) rules!2999))))

(assert (=> d!1181229 (contains!8494 rules!2999 (rule!9779 token!484))))

(assert (=> d!1181229 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1765 thiss!21717 (rule!9779 token!484) rules!2999) lt!1407763)))

(declare-fun bs!588430 () Bool)

(assert (= bs!588430 d!1181229))

(assert (=> bs!588430 m!4570375))

(declare-fun m!4570945 () Bool)

(assert (=> bs!588430 m!4570945))

(declare-fun m!4570947 () Bool)

(assert (=> bs!588430 m!4570947))

(assert (=> b!3991557 d!1181229))

(declare-fun d!1181233 () Bool)

(assert (=> d!1181233 (= (isEmpty!25515 rules!2999) (is-Nil!42695 rules!2999))))

(assert (=> b!3991540 d!1181233))

(declare-fun b!3991952 () Bool)

(declare-fun e!2474679 () Bool)

(declare-fun inv!15 (TokenValue!6989) Bool)

(assert (=> b!3991952 (= e!2474679 (inv!15 (value!213267 token!484)))))

(declare-fun b!3991953 () Bool)

(declare-fun e!2474677 () Bool)

(declare-fun e!2474678 () Bool)

(assert (=> b!3991953 (= e!2474677 e!2474678)))

(declare-fun c!690839 () Bool)

(assert (=> b!3991953 (= c!690839 (is-IntegerValue!20968 (value!213267 token!484)))))

(declare-fun b!3991954 () Bool)

(declare-fun inv!16 (TokenValue!6989) Bool)

(assert (=> b!3991954 (= e!2474677 (inv!16 (value!213267 token!484)))))

(declare-fun b!3991955 () Bool)

(declare-fun inv!17 (TokenValue!6989) Bool)

(assert (=> b!3991955 (= e!2474678 (inv!17 (value!213267 token!484)))))

(declare-fun b!3991956 () Bool)

(declare-fun res!1620291 () Bool)

(assert (=> b!3991956 (=> res!1620291 e!2474679)))

(assert (=> b!3991956 (= res!1620291 (not (is-IntegerValue!20969 (value!213267 token!484))))))

(assert (=> b!3991956 (= e!2474678 e!2474679)))

(declare-fun d!1181235 () Bool)

(declare-fun c!690838 () Bool)

(assert (=> d!1181235 (= c!690838 (is-IntegerValue!20967 (value!213267 token!484)))))

(assert (=> d!1181235 (= (inv!21 (value!213267 token!484)) e!2474677)))

(assert (= (and d!1181235 c!690838) b!3991954))

(assert (= (and d!1181235 (not c!690838)) b!3991953))

(assert (= (and b!3991953 c!690839) b!3991955))

(assert (= (and b!3991953 (not c!690839)) b!3991956))

(assert (= (and b!3991956 (not res!1620291)) b!3991952))

(declare-fun m!4570953 () Bool)

(assert (=> b!3991952 m!4570953))

(declare-fun m!4570955 () Bool)

(assert (=> b!3991954 m!4570955))

(declare-fun m!4570957 () Bool)

(assert (=> b!3991955 m!4570957))

(assert (=> b!3991518 d!1181235))

(declare-fun b!3991957 () Bool)

(declare-fun e!2474682 () Bool)

(declare-fun e!2474681 () Bool)

(assert (=> b!3991957 (= e!2474682 e!2474681)))

(declare-fun res!1620293 () Bool)

(assert (=> b!3991957 (=> (not res!1620293) (not e!2474681))))

(assert (=> b!3991957 (= res!1620293 (not (is-Nil!42693 suffix!1299)))))

(declare-fun d!1181239 () Bool)

(declare-fun e!2474680 () Bool)

(assert (=> d!1181239 e!2474680))

(declare-fun res!1620292 () Bool)

(assert (=> d!1181239 (=> res!1620292 e!2474680)))

(declare-fun lt!1407767 () Bool)

(assert (=> d!1181239 (= res!1620292 (not lt!1407767))))

(assert (=> d!1181239 (= lt!1407767 e!2474682)))

(declare-fun res!1620294 () Bool)

(assert (=> d!1181239 (=> res!1620294 e!2474682)))

(assert (=> d!1181239 (= res!1620294 (is-Nil!42693 newSuffix!27))))

(assert (=> d!1181239 (= (isPrefix!3846 newSuffix!27 suffix!1299) lt!1407767)))

(declare-fun b!3991960 () Bool)

(assert (=> b!3991960 (= e!2474680 (>= (size!31931 suffix!1299) (size!31931 newSuffix!27)))))

(declare-fun b!3991959 () Bool)

(assert (=> b!3991959 (= e!2474681 (isPrefix!3846 (tail!6225 newSuffix!27) (tail!6225 suffix!1299)))))

(declare-fun b!3991958 () Bool)

(declare-fun res!1620295 () Bool)

(assert (=> b!3991958 (=> (not res!1620295) (not e!2474681))))

(assert (=> b!3991958 (= res!1620295 (= (head!8492 newSuffix!27) (head!8492 suffix!1299)))))

(assert (= (and d!1181239 (not res!1620294)) b!3991957))

(assert (= (and b!3991957 res!1620293) b!3991958))

(assert (= (and b!3991958 res!1620295) b!3991959))

(assert (= (and d!1181239 (not res!1620292)) b!3991960))

(assert (=> b!3991960 m!4570321))

(assert (=> b!3991960 m!4570323))

(declare-fun m!4570959 () Bool)

(assert (=> b!3991959 m!4570959))

(declare-fun m!4570961 () Bool)

(assert (=> b!3991959 m!4570961))

(assert (=> b!3991959 m!4570959))

(assert (=> b!3991959 m!4570961))

(declare-fun m!4570963 () Bool)

(assert (=> b!3991959 m!4570963))

(declare-fun m!4570965 () Bool)

(assert (=> b!3991958 m!4570965))

(declare-fun m!4570967 () Bool)

(assert (=> b!3991958 m!4570967))

(assert (=> b!3991561 d!1181239))

(declare-fun b!3991961 () Bool)

(declare-fun e!2474683 () List!42817)

(assert (=> b!3991961 (= e!2474683 lt!1407436)))

(declare-fun d!1181241 () Bool)

(declare-fun e!2474684 () Bool)

(assert (=> d!1181241 e!2474684))

(declare-fun res!1620296 () Bool)

(assert (=> d!1181241 (=> (not res!1620296) (not e!2474684))))

(declare-fun lt!1407768 () List!42817)

(assert (=> d!1181241 (= res!1620296 (= (content!6474 lt!1407768) (set.union (content!6474 lt!1407485) (content!6474 lt!1407436))))))

(assert (=> d!1181241 (= lt!1407768 e!2474683)))

(declare-fun c!690840 () Bool)

(assert (=> d!1181241 (= c!690840 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181241 (= (++!11161 lt!1407485 lt!1407436) lt!1407768)))

(declare-fun b!3991963 () Bool)

(declare-fun res!1620297 () Bool)

(assert (=> b!3991963 (=> (not res!1620297) (not e!2474684))))

(assert (=> b!3991963 (= res!1620297 (= (size!31931 lt!1407768) (+ (size!31931 lt!1407485) (size!31931 lt!1407436))))))

(declare-fun b!3991962 () Bool)

(assert (=> b!3991962 (= e!2474683 (Cons!42693 (h!48113 lt!1407485) (++!11161 (t!331808 lt!1407485) lt!1407436)))))

(declare-fun b!3991964 () Bool)

(assert (=> b!3991964 (= e!2474684 (or (not (= lt!1407436 Nil!42693)) (= lt!1407768 lt!1407485)))))

(assert (= (and d!1181241 c!690840) b!3991961))

(assert (= (and d!1181241 (not c!690840)) b!3991962))

(assert (= (and d!1181241 res!1620296) b!3991963))

(assert (= (and b!3991963 res!1620297) b!3991964))

(declare-fun m!4570969 () Bool)

(assert (=> d!1181241 m!4570969))

(assert (=> d!1181241 m!4570863))

(declare-fun m!4570971 () Bool)

(assert (=> d!1181241 m!4570971))

(declare-fun m!4570973 () Bool)

(assert (=> b!3991963 m!4570973))

(assert (=> b!3991963 m!4570433))

(declare-fun m!4570975 () Bool)

(assert (=> b!3991963 m!4570975))

(declare-fun m!4570977 () Bool)

(assert (=> b!3991962 m!4570977))

(assert (=> b!3991539 d!1181241))

(declare-fun d!1181243 () Bool)

(declare-fun lt!1407771 () List!42817)

(assert (=> d!1181243 (= (++!11161 lt!1407485 lt!1407771) prefix!494)))

(declare-fun e!2474687 () List!42817)

(assert (=> d!1181243 (= lt!1407771 e!2474687)))

(declare-fun c!690843 () Bool)

(assert (=> d!1181243 (= c!690843 (is-Cons!42693 lt!1407485))))

(assert (=> d!1181243 (>= (size!31931 prefix!494) (size!31931 lt!1407485))))

(assert (=> d!1181243 (= (getSuffix!2277 prefix!494 lt!1407485) lt!1407771)))

(declare-fun b!3991969 () Bool)

(assert (=> b!3991969 (= e!2474687 (getSuffix!2277 (tail!6225 prefix!494) (t!331808 lt!1407485)))))

(declare-fun b!3991970 () Bool)

(assert (=> b!3991970 (= e!2474687 prefix!494)))

(assert (= (and d!1181243 c!690843) b!3991969))

(assert (= (and d!1181243 (not c!690843)) b!3991970))

(declare-fun m!4570979 () Bool)

(assert (=> d!1181243 m!4570979))

(assert (=> d!1181243 m!4570435))

(assert (=> d!1181243 m!4570433))

(declare-fun m!4570981 () Bool)

(assert (=> b!3991969 m!4570981))

(assert (=> b!3991969 m!4570981))

(declare-fun m!4570983 () Bool)

(assert (=> b!3991969 m!4570983))

(assert (=> b!3991539 d!1181243))

(declare-fun b!3991971 () Bool)

(declare-fun e!2474690 () Bool)

(declare-fun e!2474689 () Bool)

(assert (=> b!3991971 (= e!2474690 e!2474689)))

(declare-fun res!1620299 () Bool)

(assert (=> b!3991971 (=> (not res!1620299) (not e!2474689))))

(assert (=> b!3991971 (= res!1620299 (not (is-Nil!42693 prefix!494)))))

(declare-fun d!1181245 () Bool)

(declare-fun e!2474688 () Bool)

(assert (=> d!1181245 e!2474688))

(declare-fun res!1620298 () Bool)

(assert (=> d!1181245 (=> res!1620298 e!2474688)))

(declare-fun lt!1407772 () Bool)

(assert (=> d!1181245 (= res!1620298 (not lt!1407772))))

(assert (=> d!1181245 (= lt!1407772 e!2474690)))

(declare-fun res!1620300 () Bool)

(assert (=> d!1181245 (=> res!1620300 e!2474690)))

(assert (=> d!1181245 (= res!1620300 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181245 (= (isPrefix!3846 lt!1407485 prefix!494) lt!1407772)))

(declare-fun b!3991974 () Bool)

(assert (=> b!3991974 (= e!2474688 (>= (size!31931 prefix!494) (size!31931 lt!1407485)))))

(declare-fun b!3991973 () Bool)

(assert (=> b!3991973 (= e!2474689 (isPrefix!3846 (tail!6225 lt!1407485) (tail!6225 prefix!494)))))

(declare-fun b!3991972 () Bool)

(declare-fun res!1620301 () Bool)

(assert (=> b!3991972 (=> (not res!1620301) (not e!2474689))))

(assert (=> b!3991972 (= res!1620301 (= (head!8492 lt!1407485) (head!8492 prefix!494)))))

(assert (= (and d!1181245 (not res!1620300)) b!3991971))

(assert (= (and b!3991971 res!1620299) b!3991972))

(assert (= (and b!3991972 res!1620301) b!3991973))

(assert (= (and d!1181245 (not res!1620298)) b!3991974))

(assert (=> b!3991974 m!4570435))

(assert (=> b!3991974 m!4570433))

(assert (=> b!3991973 m!4570721))

(assert (=> b!3991973 m!4570981))

(assert (=> b!3991973 m!4570721))

(assert (=> b!3991973 m!4570981))

(declare-fun m!4570985 () Bool)

(assert (=> b!3991973 m!4570985))

(assert (=> b!3991972 m!4570727))

(declare-fun m!4570987 () Bool)

(assert (=> b!3991972 m!4570987))

(assert (=> b!3991539 d!1181245))

(declare-fun d!1181247 () Bool)

(assert (=> d!1181247 (isPrefix!3846 lt!1407485 prefix!494)))

(declare-fun lt!1407775 () Unit!61477)

(declare-fun choose!24022 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> d!1181247 (= lt!1407775 (choose!24022 prefix!494 lt!1407485 lt!1407442))))

(assert (=> d!1181247 (isPrefix!3846 prefix!494 lt!1407442)))

(assert (=> d!1181247 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!424 prefix!494 lt!1407485 lt!1407442) lt!1407775)))

(declare-fun bs!588432 () Bool)

(assert (= bs!588432 d!1181247))

(assert (=> bs!588432 m!4570409))

(declare-fun m!4570989 () Bool)

(assert (=> bs!588432 m!4570989))

(assert (=> bs!588432 m!4570291))

(assert (=> b!3991539 d!1181247))

(declare-fun d!1181249 () Bool)

(assert (=> d!1181249 (not (matchR!5641 (regex!6759 (rule!9779 token!484)) lt!1407485))))

(declare-fun lt!1407781 () Unit!61477)

(declare-fun choose!24023 (LexerInterface!6348 List!42819 Rule!13318 List!42817 List!42817 List!42817 Rule!13318) Unit!61477)

(assert (=> d!1181249 (= lt!1407781 (choose!24023 thiss!21717 rules!2999 (rule!9779 (_1!24081 (v!39528 lt!1407469))) lt!1407430 lt!1407439 lt!1407485 (rule!9779 token!484)))))

(assert (=> d!1181249 (isPrefix!3846 lt!1407430 lt!1407439)))

(assert (=> d!1181249 (= (lemmaMaxPrefixOutputsMaxPrefix!413 thiss!21717 rules!2999 (rule!9779 (_1!24081 (v!39528 lt!1407469))) lt!1407430 lt!1407439 lt!1407485 (rule!9779 token!484)) lt!1407781)))

(declare-fun bs!588434 () Bool)

(assert (= bs!588434 d!1181249))

(assert (=> bs!588434 m!4570379))

(declare-fun m!4570993 () Bool)

(assert (=> bs!588434 m!4570993))

(assert (=> bs!588434 m!4570301))

(assert (=> b!3991538 d!1181249))

(declare-fun b!3991975 () Bool)

(declare-fun e!2474691 () List!42817)

(assert (=> b!3991975 (= e!2474691 lt!1407487)))

(declare-fun d!1181253 () Bool)

(declare-fun e!2474692 () Bool)

(assert (=> d!1181253 e!2474692))

(declare-fun res!1620302 () Bool)

(assert (=> d!1181253 (=> (not res!1620302) (not e!2474692))))

(declare-fun lt!1407782 () List!42817)

(assert (=> d!1181253 (= res!1620302 (= (content!6474 lt!1407782) (set.union (content!6474 lt!1407485) (content!6474 lt!1407487))))))

(assert (=> d!1181253 (= lt!1407782 e!2474691)))

(declare-fun c!690844 () Bool)

(assert (=> d!1181253 (= c!690844 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181253 (= (++!11161 lt!1407485 lt!1407487) lt!1407782)))

(declare-fun b!3991977 () Bool)

(declare-fun res!1620303 () Bool)

(assert (=> b!3991977 (=> (not res!1620303) (not e!2474692))))

(assert (=> b!3991977 (= res!1620303 (= (size!31931 lt!1407782) (+ (size!31931 lt!1407485) (size!31931 lt!1407487))))))

(declare-fun b!3991976 () Bool)

(assert (=> b!3991976 (= e!2474691 (Cons!42693 (h!48113 lt!1407485) (++!11161 (t!331808 lt!1407485) lt!1407487)))))

(declare-fun b!3991978 () Bool)

(assert (=> b!3991978 (= e!2474692 (or (not (= lt!1407487 Nil!42693)) (= lt!1407782 lt!1407485)))))

(assert (= (and d!1181253 c!690844) b!3991975))

(assert (= (and d!1181253 (not c!690844)) b!3991976))

(assert (= (and d!1181253 res!1620302) b!3991977))

(assert (= (and b!3991977 res!1620303) b!3991978))

(declare-fun m!4570995 () Bool)

(assert (=> d!1181253 m!4570995))

(assert (=> d!1181253 m!4570863))

(declare-fun m!4570997 () Bool)

(assert (=> d!1181253 m!4570997))

(declare-fun m!4570999 () Bool)

(assert (=> b!3991977 m!4570999))

(assert (=> b!3991977 m!4570433))

(declare-fun m!4571001 () Bool)

(assert (=> b!3991977 m!4571001))

(declare-fun m!4571003 () Bool)

(assert (=> b!3991976 m!4571003))

(assert (=> b!3991517 d!1181253))

(declare-fun b!3991979 () Bool)

(declare-fun e!2474693 () List!42817)

(assert (=> b!3991979 (= e!2474693 suffix!1299)))

(declare-fun d!1181255 () Bool)

(declare-fun e!2474694 () Bool)

(assert (=> d!1181255 e!2474694))

(declare-fun res!1620304 () Bool)

(assert (=> d!1181255 (=> (not res!1620304) (not e!2474694))))

(declare-fun lt!1407783 () List!42817)

(assert (=> d!1181255 (= res!1620304 (= (content!6474 lt!1407783) (set.union (content!6474 lt!1407486) (content!6474 suffix!1299))))))

(assert (=> d!1181255 (= lt!1407783 e!2474693)))

(declare-fun c!690845 () Bool)

(assert (=> d!1181255 (= c!690845 (is-Nil!42693 lt!1407486))))

(assert (=> d!1181255 (= (++!11161 lt!1407486 suffix!1299) lt!1407783)))

(declare-fun b!3991981 () Bool)

(declare-fun res!1620305 () Bool)

(assert (=> b!3991981 (=> (not res!1620305) (not e!2474694))))

(assert (=> b!3991981 (= res!1620305 (= (size!31931 lt!1407783) (+ (size!31931 lt!1407486) (size!31931 suffix!1299))))))

(declare-fun b!3991980 () Bool)

(assert (=> b!3991980 (= e!2474693 (Cons!42693 (h!48113 lt!1407486) (++!11161 (t!331808 lt!1407486) suffix!1299)))))

(declare-fun b!3991982 () Bool)

(assert (=> b!3991982 (= e!2474694 (or (not (= suffix!1299 Nil!42693)) (= lt!1407783 lt!1407486)))))

(assert (= (and d!1181255 c!690845) b!3991979))

(assert (= (and d!1181255 (not c!690845)) b!3991980))

(assert (= (and d!1181255 res!1620304) b!3991981))

(assert (= (and b!3991981 res!1620305) b!3991982))

(declare-fun m!4571005 () Bool)

(assert (=> d!1181255 m!4571005))

(declare-fun m!4571007 () Bool)

(assert (=> d!1181255 m!4571007))

(assert (=> d!1181255 m!4570771))

(declare-fun m!4571009 () Bool)

(assert (=> b!3991981 m!4571009))

(declare-fun m!4571013 () Bool)

(assert (=> b!3991981 m!4571013))

(assert (=> b!3991981 m!4570321))

(declare-fun m!4571015 () Bool)

(assert (=> b!3991980 m!4571015))

(assert (=> b!3991517 d!1181255))

(declare-fun b!3991983 () Bool)

(declare-fun e!2474695 () List!42817)

(assert (=> b!3991983 (= e!2474695 suffix!1299)))

(declare-fun d!1181259 () Bool)

(declare-fun e!2474696 () Bool)

(assert (=> d!1181259 e!2474696))

(declare-fun res!1620306 () Bool)

(assert (=> d!1181259 (=> (not res!1620306) (not e!2474696))))

(declare-fun lt!1407784 () List!42817)

(assert (=> d!1181259 (= res!1620306 (= (content!6474 lt!1407784) (set.union (content!6474 lt!1407436) (content!6474 suffix!1299))))))

(assert (=> d!1181259 (= lt!1407784 e!2474695)))

(declare-fun c!690846 () Bool)

(assert (=> d!1181259 (= c!690846 (is-Nil!42693 lt!1407436))))

(assert (=> d!1181259 (= (++!11161 lt!1407436 suffix!1299) lt!1407784)))

(declare-fun b!3991985 () Bool)

(declare-fun res!1620307 () Bool)

(assert (=> b!3991985 (=> (not res!1620307) (not e!2474696))))

(assert (=> b!3991985 (= res!1620307 (= (size!31931 lt!1407784) (+ (size!31931 lt!1407436) (size!31931 suffix!1299))))))

(declare-fun b!3991984 () Bool)

(assert (=> b!3991984 (= e!2474695 (Cons!42693 (h!48113 lt!1407436) (++!11161 (t!331808 lt!1407436) suffix!1299)))))

(declare-fun b!3991986 () Bool)

(assert (=> b!3991986 (= e!2474696 (or (not (= suffix!1299 Nil!42693)) (= lt!1407784 lt!1407436)))))

(assert (= (and d!1181259 c!690846) b!3991983))

(assert (= (and d!1181259 (not c!690846)) b!3991984))

(assert (= (and d!1181259 res!1620306) b!3991985))

(assert (= (and b!3991985 res!1620307) b!3991986))

(declare-fun m!4571017 () Bool)

(assert (=> d!1181259 m!4571017))

(assert (=> d!1181259 m!4570971))

(assert (=> d!1181259 m!4570771))

(declare-fun m!4571019 () Bool)

(assert (=> b!3991985 m!4571019))

(assert (=> b!3991985 m!4570975))

(assert (=> b!3991985 m!4570321))

(declare-fun m!4571021 () Bool)

(assert (=> b!3991984 m!4571021))

(assert (=> b!3991517 d!1181259))

(declare-fun d!1181261 () Bool)

(assert (=> d!1181261 (= (++!11161 (++!11161 lt!1407485 lt!1407436) suffix!1299) (++!11161 lt!1407485 (++!11161 lt!1407436 suffix!1299)))))

(declare-fun lt!1407785 () Unit!61477)

(assert (=> d!1181261 (= lt!1407785 (choose!24019 lt!1407485 lt!1407436 suffix!1299))))

(assert (=> d!1181261 (= (lemmaConcatAssociativity!2481 lt!1407485 lt!1407436 suffix!1299) lt!1407785)))

(declare-fun bs!588436 () Bool)

(assert (= bs!588436 d!1181261))

(assert (=> bs!588436 m!4570405))

(declare-fun m!4571023 () Bool)

(assert (=> bs!588436 m!4571023))

(assert (=> bs!588436 m!4570417))

(declare-fun m!4571025 () Bool)

(assert (=> bs!588436 m!4571025))

(assert (=> bs!588436 m!4570405))

(assert (=> bs!588436 m!4570417))

(declare-fun m!4571027 () Bool)

(assert (=> bs!588436 m!4571027))

(assert (=> b!3991517 d!1181261))

(declare-fun b!3991987 () Bool)

(declare-fun e!2474697 () List!42817)

(assert (=> b!3991987 (= e!2474697 lt!1407488)))

(declare-fun d!1181263 () Bool)

(declare-fun e!2474698 () Bool)

(assert (=> d!1181263 e!2474698))

(declare-fun res!1620308 () Bool)

(assert (=> d!1181263 (=> (not res!1620308) (not e!2474698))))

(declare-fun lt!1407786 () List!42817)

(assert (=> d!1181263 (= res!1620308 (= (content!6474 lt!1407786) (set.union (content!6474 lt!1407430) (content!6474 lt!1407488))))))

(assert (=> d!1181263 (= lt!1407786 e!2474697)))

(declare-fun c!690847 () Bool)

(assert (=> d!1181263 (= c!690847 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181263 (= (++!11161 lt!1407430 lt!1407488) lt!1407786)))

(declare-fun b!3991989 () Bool)

(declare-fun res!1620309 () Bool)

(assert (=> b!3991989 (=> (not res!1620309) (not e!2474698))))

(assert (=> b!3991989 (= res!1620309 (= (size!31931 lt!1407786) (+ (size!31931 lt!1407430) (size!31931 lt!1407488))))))

(declare-fun b!3991988 () Bool)

(assert (=> b!3991988 (= e!2474697 (Cons!42693 (h!48113 lt!1407430) (++!11161 (t!331808 lt!1407430) lt!1407488)))))

(declare-fun b!3991990 () Bool)

(assert (=> b!3991990 (= e!2474698 (or (not (= lt!1407488 Nil!42693)) (= lt!1407786 lt!1407430)))))

(assert (= (and d!1181263 c!690847) b!3991987))

(assert (= (and d!1181263 (not c!690847)) b!3991988))

(assert (= (and d!1181263 res!1620308) b!3991989))

(assert (= (and b!3991989 res!1620309) b!3991990))

(declare-fun m!4571029 () Bool)

(assert (=> d!1181263 m!4571029))

(declare-fun m!4571031 () Bool)

(assert (=> d!1181263 m!4571031))

(declare-fun m!4571033 () Bool)

(assert (=> d!1181263 m!4571033))

(declare-fun m!4571035 () Bool)

(assert (=> b!3991989 m!4571035))

(assert (=> b!3991989 m!4570355))

(declare-fun m!4571037 () Bool)

(assert (=> b!3991989 m!4571037))

(declare-fun m!4571039 () Bool)

(assert (=> b!3991988 m!4571039))

(assert (=> b!3991542 d!1181263))

(declare-fun d!1181265 () Bool)

(declare-fun lt!1407787 () List!42817)

(assert (=> d!1181265 (= (++!11161 lt!1407430 lt!1407787) lt!1407439)))

(declare-fun e!2474701 () List!42817)

(assert (=> d!1181265 (= lt!1407787 e!2474701)))

(declare-fun c!690848 () Bool)

(assert (=> d!1181265 (= c!690848 (is-Cons!42693 lt!1407430))))

(assert (=> d!1181265 (>= (size!31931 lt!1407439) (size!31931 lt!1407430))))

(assert (=> d!1181265 (= (getSuffix!2277 lt!1407439 lt!1407430) lt!1407787)))

(declare-fun b!3991993 () Bool)

(assert (=> b!3991993 (= e!2474701 (getSuffix!2277 (tail!6225 lt!1407439) (t!331808 lt!1407430)))))

(declare-fun b!3991994 () Bool)

(assert (=> b!3991994 (= e!2474701 lt!1407439)))

(assert (= (and d!1181265 c!690848) b!3991993))

(assert (= (and d!1181265 (not c!690848)) b!3991994))

(declare-fun m!4571043 () Bool)

(assert (=> d!1181265 m!4571043))

(assert (=> d!1181265 m!4570685))

(assert (=> d!1181265 m!4570355))

(assert (=> b!3991993 m!4570787))

(assert (=> b!3991993 m!4570787))

(declare-fun m!4571045 () Bool)

(assert (=> b!3991993 m!4571045))

(assert (=> b!3991542 d!1181265))

(declare-fun b!3991995 () Bool)

(declare-fun e!2474703 () List!42817)

(assert (=> b!3991995 (= e!2474703 lt!1407465)))

(declare-fun d!1181267 () Bool)

(declare-fun e!2474704 () Bool)

(assert (=> d!1181267 e!2474704))

(declare-fun res!1620310 () Bool)

(assert (=> d!1181267 (=> (not res!1620310) (not e!2474704))))

(declare-fun lt!1407788 () List!42817)

(assert (=> d!1181267 (= res!1620310 (= (content!6474 lt!1407788) (set.union (content!6474 lt!1407485) (content!6474 lt!1407465))))))

(assert (=> d!1181267 (= lt!1407788 e!2474703)))

(declare-fun c!690849 () Bool)

(assert (=> d!1181267 (= c!690849 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181267 (= (++!11161 lt!1407485 lt!1407465) lt!1407788)))

(declare-fun b!3991997 () Bool)

(declare-fun res!1620311 () Bool)

(assert (=> b!3991997 (=> (not res!1620311) (not e!2474704))))

(assert (=> b!3991997 (= res!1620311 (= (size!31931 lt!1407788) (+ (size!31931 lt!1407485) (size!31931 lt!1407465))))))

(declare-fun b!3991996 () Bool)

(assert (=> b!3991996 (= e!2474703 (Cons!42693 (h!48113 lt!1407485) (++!11161 (t!331808 lt!1407485) lt!1407465)))))

(declare-fun b!3991998 () Bool)

(assert (=> b!3991998 (= e!2474704 (or (not (= lt!1407465 Nil!42693)) (= lt!1407788 lt!1407485)))))

(assert (= (and d!1181267 c!690849) b!3991995))

(assert (= (and d!1181267 (not c!690849)) b!3991996))

(assert (= (and d!1181267 res!1620310) b!3991997))

(assert (= (and b!3991997 res!1620311) b!3991998))

(declare-fun m!4571049 () Bool)

(assert (=> d!1181267 m!4571049))

(assert (=> d!1181267 m!4570863))

(declare-fun m!4571051 () Bool)

(assert (=> d!1181267 m!4571051))

(declare-fun m!4571053 () Bool)

(assert (=> b!3991997 m!4571053))

(assert (=> b!3991997 m!4570433))

(declare-fun m!4571055 () Bool)

(assert (=> b!3991997 m!4571055))

(declare-fun m!4571057 () Bool)

(assert (=> b!3991996 m!4571057))

(assert (=> b!3991521 d!1181267))

(declare-fun d!1181271 () Bool)

(declare-fun lt!1407789 () List!42817)

(assert (=> d!1181271 (= (++!11161 lt!1407485 lt!1407789) lt!1407442)))

(declare-fun e!2474705 () List!42817)

(assert (=> d!1181271 (= lt!1407789 e!2474705)))

(declare-fun c!690850 () Bool)

(assert (=> d!1181271 (= c!690850 (is-Cons!42693 lt!1407485))))

(assert (=> d!1181271 (>= (size!31931 lt!1407442) (size!31931 lt!1407485))))

(assert (=> d!1181271 (= (getSuffix!2277 lt!1407442 lt!1407485) lt!1407789)))

(declare-fun b!3991999 () Bool)

(assert (=> b!3991999 (= e!2474705 (getSuffix!2277 (tail!6225 lt!1407442) (t!331808 lt!1407485)))))

(declare-fun b!3992000 () Bool)

(assert (=> b!3992000 (= e!2474705 lt!1407442)))

(assert (= (and d!1181271 c!690850) b!3991999))

(assert (= (and d!1181271 (not c!690850)) b!3992000))

(declare-fun m!4571059 () Bool)

(assert (=> d!1181271 m!4571059))

(assert (=> d!1181271 m!4570753))

(assert (=> d!1181271 m!4570433))

(declare-fun m!4571061 () Bool)

(assert (=> b!3991999 m!4571061))

(assert (=> b!3991999 m!4571061))

(declare-fun m!4571063 () Bool)

(assert (=> b!3991999 m!4571063))

(assert (=> b!3991521 d!1181271))

(declare-fun b!3992001 () Bool)

(declare-fun e!2474708 () Bool)

(declare-fun e!2474707 () Bool)

(assert (=> b!3992001 (= e!2474708 e!2474707)))

(declare-fun res!1620313 () Bool)

(assert (=> b!3992001 (=> (not res!1620313) (not e!2474707))))

(assert (=> b!3992001 (= res!1620313 (not (is-Nil!42693 lt!1407442)))))

(declare-fun d!1181273 () Bool)

(declare-fun e!2474706 () Bool)

(assert (=> d!1181273 e!2474706))

(declare-fun res!1620312 () Bool)

(assert (=> d!1181273 (=> res!1620312 e!2474706)))

(declare-fun lt!1407790 () Bool)

(assert (=> d!1181273 (= res!1620312 (not lt!1407790))))

(assert (=> d!1181273 (= lt!1407790 e!2474708)))

(declare-fun res!1620314 () Bool)

(assert (=> d!1181273 (=> res!1620314 e!2474708)))

(assert (=> d!1181273 (= res!1620314 (is-Nil!42693 lt!1407442))))

(assert (=> d!1181273 (= (isPrefix!3846 lt!1407442 lt!1407442) lt!1407790)))

(declare-fun b!3992004 () Bool)

(assert (=> b!3992004 (= e!2474706 (>= (size!31931 lt!1407442) (size!31931 lt!1407442)))))

(declare-fun b!3992003 () Bool)

(assert (=> b!3992003 (= e!2474707 (isPrefix!3846 (tail!6225 lt!1407442) (tail!6225 lt!1407442)))))

(declare-fun b!3992002 () Bool)

(declare-fun res!1620315 () Bool)

(assert (=> b!3992002 (=> (not res!1620315) (not e!2474707))))

(assert (=> b!3992002 (= res!1620315 (= (head!8492 lt!1407442) (head!8492 lt!1407442)))))

(assert (= (and d!1181273 (not res!1620314)) b!3992001))

(assert (= (and b!3992001 res!1620313) b!3992002))

(assert (= (and b!3992002 res!1620315) b!3992003))

(assert (= (and d!1181273 (not res!1620312)) b!3992004))

(assert (=> b!3992004 m!4570753))

(assert (=> b!3992004 m!4570753))

(assert (=> b!3992003 m!4571061))

(assert (=> b!3992003 m!4571061))

(assert (=> b!3992003 m!4571061))

(assert (=> b!3992003 m!4571061))

(declare-fun m!4571065 () Bool)

(assert (=> b!3992003 m!4571065))

(declare-fun m!4571067 () Bool)

(assert (=> b!3992002 m!4571067))

(assert (=> b!3992002 m!4571067))

(assert (=> b!3991521 d!1181273))

(declare-fun d!1181275 () Bool)

(assert (=> d!1181275 (isPrefix!3846 lt!1407442 lt!1407442)))

(declare-fun lt!1407796 () Unit!61477)

(declare-fun choose!24026 (List!42817 List!42817) Unit!61477)

(assert (=> d!1181275 (= lt!1407796 (choose!24026 lt!1407442 lt!1407442))))

(assert (=> d!1181275 (= (lemmaIsPrefixRefl!2438 lt!1407442 lt!1407442) lt!1407796)))

(declare-fun bs!588438 () Bool)

(assert (= bs!588438 d!1181275))

(assert (=> bs!588438 m!4570451))

(declare-fun m!4571071 () Bool)

(assert (=> bs!588438 m!4571071))

(assert (=> b!3991521 d!1181275))

(declare-fun b!3992141 () Bool)

(declare-fun res!1620393 () Bool)

(declare-fun e!2474786 () Bool)

(assert (=> b!3992141 (=> (not res!1620393) (not e!2474786))))

(declare-fun lt!1407846 () Option!9173)

(assert (=> b!3992141 (= res!1620393 (= (value!213267 (_1!24081 (get!14047 lt!1407846))) (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (get!14047 lt!1407846)))) (seqFromList!4998 (originalCharacters!7359 (_1!24081 (get!14047 lt!1407846)))))))))

(declare-fun b!3992142 () Bool)

(declare-fun res!1620391 () Bool)

(assert (=> b!3992142 (=> (not res!1620391) (not e!2474786))))

(assert (=> b!3992142 (= res!1620391 (< (size!31931 (_2!24081 (get!14047 lt!1407846))) (size!31931 lt!1407439)))))

(declare-fun b!3992143 () Bool)

(declare-fun e!2474785 () Option!9173)

(declare-datatypes ((tuple2!41900 0))(
  ( (tuple2!41901 (_1!24084 List!42817) (_2!24084 List!42817)) )
))
(declare-fun lt!1407844 () tuple2!41900)

(declare-fun size!31935 (BalanceConc!25534) Int)

(assert (=> b!3992143 (= e!2474785 (Some!9172 (tuple2!41895 (Token!12657 (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (seqFromList!4998 (_1!24084 lt!1407844))) (rule!9779 (_1!24081 (v!39528 lt!1407469))) (size!31935 (seqFromList!4998 (_1!24084 lt!1407844))) (_1!24084 lt!1407844)) (_2!24084 lt!1407844))))))

(declare-fun lt!1407845 () Unit!61477)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1309 (Regex!11664 List!42817) Unit!61477)

(assert (=> b!3992143 (= lt!1407845 (longestMatchIsAcceptedByMatchOrIsEmpty!1309 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407439))))

(declare-fun res!1620397 () Bool)

(declare-fun findLongestMatchInner!1336 (Regex!11664 List!42817 Int List!42817 List!42817 Int) tuple2!41900)

(assert (=> b!3992143 (= res!1620397 (isEmpty!25520 (_1!24084 (findLongestMatchInner!1336 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) Nil!42693 (size!31931 Nil!42693) lt!1407439 lt!1407439 (size!31931 lt!1407439)))))))

(declare-fun e!2474784 () Bool)

(assert (=> b!3992143 (=> res!1620397 e!2474784)))

(assert (=> b!3992143 e!2474784))

(declare-fun lt!1407847 () Unit!61477)

(assert (=> b!3992143 (= lt!1407847 lt!1407845)))

(declare-fun lt!1407848 () Unit!61477)

(declare-fun lemmaSemiInverse!1852 (TokenValueInjection!13406 BalanceConc!25534) Unit!61477)

(assert (=> b!3992143 (= lt!1407848 (lemmaSemiInverse!1852 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (seqFromList!4998 (_1!24084 lt!1407844))))))

(declare-fun b!3992144 () Bool)

(assert (=> b!3992144 (= e!2474784 (matchR!5641 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (_1!24084 (findLongestMatchInner!1336 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) Nil!42693 (size!31931 Nil!42693) lt!1407439 lt!1407439 (size!31931 lt!1407439)))))))

(declare-fun b!3992145 () Bool)

(declare-fun e!2474787 () Bool)

(assert (=> b!3992145 (= e!2474787 e!2474786)))

(declare-fun res!1620395 () Bool)

(assert (=> b!3992145 (=> (not res!1620395) (not e!2474786))))

(assert (=> b!3992145 (= res!1620395 (matchR!5641 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407846))))))))

(declare-fun b!3992146 () Bool)

(declare-fun res!1620392 () Bool)

(assert (=> b!3992146 (=> (not res!1620392) (not e!2474786))))

(assert (=> b!3992146 (= res!1620392 (= (++!11161 (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407846)))) (_2!24081 (get!14047 lt!1407846))) lt!1407439))))

(declare-fun b!3992147 () Bool)

(assert (=> b!3992147 (= e!2474786 (= (size!31930 (_1!24081 (get!14047 lt!1407846))) (size!31931 (originalCharacters!7359 (_1!24081 (get!14047 lt!1407846))))))))

(declare-fun b!3992148 () Bool)

(declare-fun res!1620396 () Bool)

(assert (=> b!3992148 (=> (not res!1620396) (not e!2474786))))

(assert (=> b!3992148 (= res!1620396 (= (rule!9779 (_1!24081 (get!14047 lt!1407846))) (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))

(declare-fun d!1181279 () Bool)

(assert (=> d!1181279 e!2474787))

(declare-fun res!1620394 () Bool)

(assert (=> d!1181279 (=> res!1620394 e!2474787)))

(assert (=> d!1181279 (= res!1620394 (isEmpty!25517 lt!1407846))))

(assert (=> d!1181279 (= lt!1407846 e!2474785)))

(declare-fun c!690879 () Bool)

(assert (=> d!1181279 (= c!690879 (isEmpty!25520 (_1!24084 lt!1407844)))))

(declare-fun findLongestMatch!1249 (Regex!11664 List!42817) tuple2!41900)

(assert (=> d!1181279 (= lt!1407844 (findLongestMatch!1249 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407439))))

(assert (=> d!1181279 (ruleValid!2691 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))

(assert (=> d!1181279 (= (maxPrefixOneRule!2680 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))) lt!1407439) lt!1407846)))

(declare-fun b!3992149 () Bool)

(assert (=> b!3992149 (= e!2474785 None!9172)))

(assert (= (and d!1181279 c!690879) b!3992149))

(assert (= (and d!1181279 (not c!690879)) b!3992143))

(assert (= (and b!3992143 (not res!1620397)) b!3992144))

(assert (= (and d!1181279 (not res!1620394)) b!3992145))

(assert (= (and b!3992145 res!1620395) b!3992146))

(assert (= (and b!3992146 res!1620392) b!3992142))

(assert (= (and b!3992142 res!1620391) b!3992148))

(assert (= (and b!3992148 res!1620396) b!3992141))

(assert (= (and b!3992141 res!1620393) b!3992147))

(declare-fun m!4571249 () Bool)

(assert (=> b!3992142 m!4571249))

(declare-fun m!4571251 () Bool)

(assert (=> b!3992142 m!4571251))

(assert (=> b!3992142 m!4570685))

(declare-fun m!4571253 () Bool)

(assert (=> d!1181279 m!4571253))

(declare-fun m!4571255 () Bool)

(assert (=> d!1181279 m!4571255))

(declare-fun m!4571257 () Bool)

(assert (=> d!1181279 m!4571257))

(assert (=> d!1181279 m!4570347))

(declare-fun m!4571259 () Bool)

(assert (=> b!3992144 m!4571259))

(assert (=> b!3992144 m!4570685))

(assert (=> b!3992144 m!4571259))

(assert (=> b!3992144 m!4570685))

(declare-fun m!4571261 () Bool)

(assert (=> b!3992144 m!4571261))

(declare-fun m!4571263 () Bool)

(assert (=> b!3992144 m!4571263))

(assert (=> b!3992147 m!4571249))

(declare-fun m!4571265 () Bool)

(assert (=> b!3992147 m!4571265))

(declare-fun m!4571267 () Bool)

(assert (=> b!3992143 m!4571267))

(declare-fun m!4571269 () Bool)

(assert (=> b!3992143 m!4571269))

(assert (=> b!3992143 m!4571267))

(declare-fun m!4571271 () Bool)

(assert (=> b!3992143 m!4571271))

(assert (=> b!3992143 m!4570685))

(assert (=> b!3992143 m!4571259))

(assert (=> b!3992143 m!4570685))

(assert (=> b!3992143 m!4571261))

(assert (=> b!3992143 m!4571267))

(assert (=> b!3992143 m!4571267))

(declare-fun m!4571273 () Bool)

(assert (=> b!3992143 m!4571273))

(assert (=> b!3992143 m!4571259))

(declare-fun m!4571275 () Bool)

(assert (=> b!3992143 m!4571275))

(declare-fun m!4571277 () Bool)

(assert (=> b!3992143 m!4571277))

(assert (=> b!3992141 m!4571249))

(declare-fun m!4571279 () Bool)

(assert (=> b!3992141 m!4571279))

(assert (=> b!3992141 m!4571279))

(declare-fun m!4571281 () Bool)

(assert (=> b!3992141 m!4571281))

(assert (=> b!3992148 m!4571249))

(assert (=> b!3992145 m!4571249))

(declare-fun m!4571283 () Bool)

(assert (=> b!3992145 m!4571283))

(assert (=> b!3992145 m!4571283))

(declare-fun m!4571285 () Bool)

(assert (=> b!3992145 m!4571285))

(assert (=> b!3992145 m!4571285))

(declare-fun m!4571287 () Bool)

(assert (=> b!3992145 m!4571287))

(assert (=> b!3992146 m!4571249))

(assert (=> b!3992146 m!4571283))

(assert (=> b!3992146 m!4571283))

(assert (=> b!3992146 m!4571285))

(assert (=> b!3992146 m!4571285))

(declare-fun m!4571289 () Bool)

(assert (=> b!3992146 m!4571289))

(assert (=> b!3991520 d!1181279))

(declare-fun d!1181341 () Bool)

(declare-fun fromListB!2294 (List!42817) BalanceConc!25534)

(assert (=> d!1181341 (= (seqFromList!4998 lt!1407430) (fromListB!2294 lt!1407430))))

(declare-fun bs!588447 () Bool)

(assert (= bs!588447 d!1181341))

(declare-fun m!4571291 () Bool)

(assert (=> bs!588447 m!4571291))

(assert (=> b!3991520 d!1181341))

(declare-fun b!3992150 () Bool)

(declare-fun e!2474788 () List!42817)

(assert (=> b!3992150 (= e!2474788 (_2!24081 (v!39528 lt!1407469)))))

(declare-fun d!1181343 () Bool)

(declare-fun e!2474789 () Bool)

(assert (=> d!1181343 e!2474789))

(declare-fun res!1620398 () Bool)

(assert (=> d!1181343 (=> (not res!1620398) (not e!2474789))))

(declare-fun lt!1407849 () List!42817)

(assert (=> d!1181343 (= res!1620398 (= (content!6474 lt!1407849) (set.union (content!6474 lt!1407430) (content!6474 (_2!24081 (v!39528 lt!1407469))))))))

(assert (=> d!1181343 (= lt!1407849 e!2474788)))

(declare-fun c!690880 () Bool)

(assert (=> d!1181343 (= c!690880 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181343 (= (++!11161 lt!1407430 (_2!24081 (v!39528 lt!1407469))) lt!1407849)))

(declare-fun b!3992152 () Bool)

(declare-fun res!1620399 () Bool)

(assert (=> b!3992152 (=> (not res!1620399) (not e!2474789))))

(assert (=> b!3992152 (= res!1620399 (= (size!31931 lt!1407849) (+ (size!31931 lt!1407430) (size!31931 (_2!24081 (v!39528 lt!1407469))))))))

(declare-fun b!3992151 () Bool)

(assert (=> b!3992151 (= e!2474788 (Cons!42693 (h!48113 lt!1407430) (++!11161 (t!331808 lt!1407430) (_2!24081 (v!39528 lt!1407469)))))))

(declare-fun b!3992153 () Bool)

(assert (=> b!3992153 (= e!2474789 (or (not (= (_2!24081 (v!39528 lt!1407469)) Nil!42693)) (= lt!1407849 lt!1407430)))))

(assert (= (and d!1181343 c!690880) b!3992150))

(assert (= (and d!1181343 (not c!690880)) b!3992151))

(assert (= (and d!1181343 res!1620398) b!3992152))

(assert (= (and b!3992152 res!1620399) b!3992153))

(declare-fun m!4571293 () Bool)

(assert (=> d!1181343 m!4571293))

(assert (=> d!1181343 m!4571031))

(declare-fun m!4571295 () Bool)

(assert (=> d!1181343 m!4571295))

(declare-fun m!4571297 () Bool)

(assert (=> b!3992152 m!4571297))

(assert (=> b!3992152 m!4570355))

(declare-fun m!4571299 () Bool)

(assert (=> b!3992152 m!4571299))

(declare-fun m!4571301 () Bool)

(assert (=> b!3992151 m!4571301))

(assert (=> b!3991520 d!1181343))

(declare-fun d!1181345 () Bool)

(assert (=> d!1181345 (= (list!15851 (charsOf!4575 (_1!24081 (v!39528 lt!1407469)))) (list!15853 (c!690783 (charsOf!4575 (_1!24081 (v!39528 lt!1407469))))))))

(declare-fun bs!588448 () Bool)

(assert (= bs!588448 d!1181345))

(declare-fun m!4571303 () Bool)

(assert (=> bs!588448 m!4571303))

(assert (=> b!3991520 d!1181345))

(declare-fun d!1181347 () Bool)

(declare-fun res!1620400 () Bool)

(declare-fun e!2474790 () Bool)

(assert (=> d!1181347 (=> (not res!1620400) (not e!2474790))))

(assert (=> d!1181347 (= res!1620400 (validRegex!5291 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))

(assert (=> d!1181347 (= (ruleValid!2691 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) e!2474790)))

(declare-fun b!3992154 () Bool)

(declare-fun res!1620401 () Bool)

(assert (=> b!3992154 (=> (not res!1620401) (not e!2474790))))

(assert (=> b!3992154 (= res!1620401 (not (nullable!4092 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))))

(declare-fun b!3992155 () Bool)

(assert (=> b!3992155 (= e!2474790 (not (= (tag!7619 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (String!48666 ""))))))

(assert (= (and d!1181347 res!1620400) b!3992154))

(assert (= (and b!3992154 res!1620401) b!3992155))

(declare-fun m!4571305 () Bool)

(assert (=> d!1181347 m!4571305))

(declare-fun m!4571307 () Bool)

(assert (=> b!3992154 m!4571307))

(assert (=> b!3991520 d!1181347))

(declare-fun d!1181349 () Bool)

(assert (=> d!1181349 (= (size!31930 (_1!24081 (v!39528 lt!1407469))) (size!31931 (originalCharacters!7359 (_1!24081 (v!39528 lt!1407469)))))))

(declare-fun Unit!61492 () Unit!61477)

(assert (=> d!1181349 (= (lemmaCharactersSize!1354 (_1!24081 (v!39528 lt!1407469))) Unit!61492)))

(declare-fun bs!588449 () Bool)

(assert (= bs!588449 d!1181349))

(declare-fun m!4571309 () Bool)

(assert (=> bs!588449 m!4571309))

(assert (=> b!3991520 d!1181349))

(declare-fun b!3992156 () Bool)

(declare-fun e!2474791 () List!42817)

(assert (=> b!3992156 (= e!2474791 newSuffixResult!27)))

(declare-fun d!1181351 () Bool)

(declare-fun e!2474792 () Bool)

(assert (=> d!1181351 e!2474792))

(declare-fun res!1620402 () Bool)

(assert (=> d!1181351 (=> (not res!1620402) (not e!2474792))))

(declare-fun lt!1407850 () List!42817)

(assert (=> d!1181351 (= res!1620402 (= (content!6474 lt!1407850) (set.union (content!6474 lt!1407430) (content!6474 newSuffixResult!27))))))

(assert (=> d!1181351 (= lt!1407850 e!2474791)))

(declare-fun c!690881 () Bool)

(assert (=> d!1181351 (= c!690881 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181351 (= (++!11161 lt!1407430 newSuffixResult!27) lt!1407850)))

(declare-fun b!3992158 () Bool)

(declare-fun res!1620403 () Bool)

(assert (=> b!3992158 (=> (not res!1620403) (not e!2474792))))

(assert (=> b!3992158 (= res!1620403 (= (size!31931 lt!1407850) (+ (size!31931 lt!1407430) (size!31931 newSuffixResult!27))))))

(declare-fun b!3992157 () Bool)

(assert (=> b!3992157 (= e!2474791 (Cons!42693 (h!48113 lt!1407430) (++!11161 (t!331808 lt!1407430) newSuffixResult!27)))))

(declare-fun b!3992159 () Bool)

(assert (=> b!3992159 (= e!2474792 (or (not (= newSuffixResult!27 Nil!42693)) (= lt!1407850 lt!1407430)))))

(assert (= (and d!1181351 c!690881) b!3992156))

(assert (= (and d!1181351 (not c!690881)) b!3992157))

(assert (= (and d!1181351 res!1620402) b!3992158))

(assert (= (and b!3992158 res!1620403) b!3992159))

(declare-fun m!4571311 () Bool)

(assert (=> d!1181351 m!4571311))

(assert (=> d!1181351 m!4571031))

(assert (=> d!1181351 m!4570865))

(declare-fun m!4571313 () Bool)

(assert (=> b!3992158 m!4571313))

(assert (=> b!3992158 m!4570355))

(assert (=> b!3992158 m!4570869))

(declare-fun m!4571315 () Bool)

(assert (=> b!3992157 m!4571315))

(assert (=> b!3991520 d!1181351))

(declare-fun d!1181353 () Bool)

(declare-fun lt!1407851 () BalanceConc!25534)

(assert (=> d!1181353 (= (list!15851 lt!1407851) (originalCharacters!7359 (_1!24081 (v!39528 lt!1407469))))))

(assert (=> d!1181353 (= lt!1407851 (dynLambda!18135 (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) (value!213267 (_1!24081 (v!39528 lt!1407469)))))))

(assert (=> d!1181353 (= (charsOf!4575 (_1!24081 (v!39528 lt!1407469))) lt!1407851)))

(declare-fun b_lambda!116533 () Bool)

(assert (=> (not b_lambda!116533) (not d!1181353)))

(declare-fun tb!240265 () Bool)

(declare-fun t!331827 () Bool)

(assert (=> (and b!3991559 (= (toChars!9106 (transformation!6759 (rule!9779 token!484))) (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))) t!331827) tb!240265))

(declare-fun b!3992160 () Bool)

(declare-fun e!2474793 () Bool)

(declare-fun tp!1215807 () Bool)

(assert (=> b!3992160 (= e!2474793 (and (inv!57029 (c!690783 (dynLambda!18135 (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) (value!213267 (_1!24081 (v!39528 lt!1407469)))))) tp!1215807))))

(declare-fun result!291132 () Bool)

(assert (=> tb!240265 (= result!291132 (and (inv!57030 (dynLambda!18135 (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) (value!213267 (_1!24081 (v!39528 lt!1407469))))) e!2474793))))

(assert (= tb!240265 b!3992160))

(declare-fun m!4571317 () Bool)

(assert (=> b!3992160 m!4571317))

(declare-fun m!4571319 () Bool)

(assert (=> tb!240265 m!4571319))

(assert (=> d!1181353 t!331827))

(declare-fun b_and!306691 () Bool)

(assert (= b_and!306679 (and (=> t!331827 result!291132) b_and!306691)))

(declare-fun t!331829 () Bool)

(declare-fun tb!240267 () Bool)

(assert (=> (and b!3991560 (= (toChars!9106 (transformation!6759 (h!48115 rules!2999))) (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))) t!331829) tb!240267))

(declare-fun result!291134 () Bool)

(assert (= result!291134 result!291132))

(assert (=> d!1181353 t!331829))

(declare-fun b_and!306693 () Bool)

(assert (= b_and!306681 (and (=> t!331829 result!291134) b_and!306693)))

(declare-fun m!4571321 () Bool)

(assert (=> d!1181353 m!4571321))

(declare-fun m!4571323 () Bool)

(assert (=> d!1181353 m!4571323))

(assert (=> b!3991520 d!1181353))

(declare-fun d!1181355 () Bool)

(declare-fun e!2474794 () Bool)

(assert (=> d!1181355 e!2474794))

(declare-fun res!1620404 () Bool)

(assert (=> d!1181355 (=> (not res!1620404) (not e!2474794))))

(assert (=> d!1181355 (= res!1620404 (semiInverseModEq!2898 (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) (toValue!9247 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))))

(declare-fun Unit!61494 () Unit!61477)

(assert (=> d!1181355 (= (lemmaInv!974 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) Unit!61494)))

(declare-fun b!3992161 () Bool)

(assert (=> b!3992161 (= e!2474794 (equivClasses!2797 (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) (toValue!9247 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))))

(assert (= (and d!1181355 res!1620404) b!3992161))

(declare-fun m!4571325 () Bool)

(assert (=> d!1181355 m!4571325))

(declare-fun m!4571327 () Bool)

(assert (=> b!3992161 m!4571327))

(assert (=> b!3991520 d!1181355))

(declare-fun d!1181357 () Bool)

(assert (=> d!1181357 (= (maxPrefixOneRule!2680 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))) lt!1407439) (Some!9172 (tuple2!41895 (Token!12657 (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (seqFromList!4998 lt!1407430)) (rule!9779 (_1!24081 (v!39528 lt!1407469))) (size!31931 lt!1407430) lt!1407430) (_2!24081 (v!39528 lt!1407469)))))))

(declare-fun lt!1407864 () Unit!61477)

(declare-fun choose!24028 (LexerInterface!6348 List!42819 List!42817 List!42817 List!42817 Rule!13318) Unit!61477)

(assert (=> d!1181357 (= lt!1407864 (choose!24028 thiss!21717 rules!2999 lt!1407430 lt!1407439 (_2!24081 (v!39528 lt!1407469)) (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))

(assert (=> d!1181357 (not (isEmpty!25515 rules!2999))))

(assert (=> d!1181357 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1502 thiss!21717 rules!2999 lt!1407430 lt!1407439 (_2!24081 (v!39528 lt!1407469)) (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407864)))

(declare-fun bs!588450 () Bool)

(assert (= bs!588450 d!1181357))

(assert (=> bs!588450 m!4570387))

(assert (=> bs!588450 m!4570343))

(assert (=> bs!588450 m!4570357))

(assert (=> bs!588450 m!4570343))

(assert (=> bs!588450 m!4570345))

(assert (=> bs!588450 m!4570355))

(declare-fun m!4571329 () Bool)

(assert (=> bs!588450 m!4571329))

(assert (=> b!3991520 d!1181357))

(declare-fun d!1181359 () Bool)

(declare-fun dynLambda!18137 (Int BalanceConc!25534) TokenValue!6989)

(assert (=> d!1181359 (= (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (seqFromList!4998 lt!1407430)) (dynLambda!18137 (toValue!9247 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) (seqFromList!4998 lt!1407430)))))

(declare-fun b_lambda!116535 () Bool)

(assert (=> (not b_lambda!116535) (not d!1181359)))

(declare-fun tb!240269 () Bool)

(declare-fun t!331831 () Bool)

(assert (=> (and b!3991559 (= (toValue!9247 (transformation!6759 (rule!9779 token!484))) (toValue!9247 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))) t!331831) tb!240269))

(declare-fun result!291136 () Bool)

(assert (=> tb!240269 (= result!291136 (inv!21 (dynLambda!18137 (toValue!9247 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))) (seqFromList!4998 lt!1407430))))))

(declare-fun m!4571331 () Bool)

(assert (=> tb!240269 m!4571331))

(assert (=> d!1181359 t!331831))

(declare-fun b_and!306695 () Bool)

(assert (= b_and!306663 (and (=> t!331831 result!291136) b_and!306695)))

(declare-fun tb!240271 () Bool)

(declare-fun t!331833 () Bool)

(assert (=> (and b!3991560 (= (toValue!9247 (transformation!6759 (h!48115 rules!2999))) (toValue!9247 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))) t!331833) tb!240271))

(declare-fun result!291140 () Bool)

(assert (= result!291140 result!291136))

(assert (=> d!1181359 t!331833))

(declare-fun b_and!306697 () Bool)

(assert (= b_and!306667 (and (=> t!331833 result!291140) b_and!306697)))

(assert (=> d!1181359 m!4570343))

(declare-fun m!4571333 () Bool)

(assert (=> d!1181359 m!4571333))

(assert (=> b!3991520 d!1181359))

(declare-fun b!3992191 () Bool)

(declare-fun e!2474809 () Bool)

(declare-fun e!2474808 () Bool)

(assert (=> b!3992191 (= e!2474809 e!2474808)))

(declare-fun res!1620427 () Bool)

(assert (=> b!3992191 (=> (not res!1620427) (not e!2474808))))

(assert (=> b!3992191 (= res!1620427 (not (is-Nil!42693 (++!11161 lt!1407430 newSuffixResult!27))))))

(declare-fun d!1181361 () Bool)

(declare-fun e!2474807 () Bool)

(assert (=> d!1181361 e!2474807))

(declare-fun res!1620426 () Bool)

(assert (=> d!1181361 (=> res!1620426 e!2474807)))

(declare-fun lt!1407870 () Bool)

(assert (=> d!1181361 (= res!1620426 (not lt!1407870))))

(assert (=> d!1181361 (= lt!1407870 e!2474809)))

(declare-fun res!1620428 () Bool)

(assert (=> d!1181361 (=> res!1620428 e!2474809)))

(assert (=> d!1181361 (= res!1620428 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181361 (= (isPrefix!3846 lt!1407430 (++!11161 lt!1407430 newSuffixResult!27)) lt!1407870)))

(declare-fun b!3992194 () Bool)

(assert (=> b!3992194 (= e!2474807 (>= (size!31931 (++!11161 lt!1407430 newSuffixResult!27)) (size!31931 lt!1407430)))))

(declare-fun b!3992193 () Bool)

(assert (=> b!3992193 (= e!2474808 (isPrefix!3846 (tail!6225 lt!1407430) (tail!6225 (++!11161 lt!1407430 newSuffixResult!27))))))

(declare-fun b!3992192 () Bool)

(declare-fun res!1620429 () Bool)

(assert (=> b!3992192 (=> (not res!1620429) (not e!2474808))))

(assert (=> b!3992192 (= res!1620429 (= (head!8492 lt!1407430) (head!8492 (++!11161 lt!1407430 newSuffixResult!27))))))

(assert (= (and d!1181361 (not res!1620428)) b!3992191))

(assert (= (and b!3992191 res!1620427) b!3992192))

(assert (= (and b!3992192 res!1620429) b!3992193))

(assert (= (and d!1181361 (not res!1620426)) b!3992194))

(assert (=> b!3992194 m!4570349))

(declare-fun m!4571335 () Bool)

(assert (=> b!3992194 m!4571335))

(assert (=> b!3992194 m!4570355))

(assert (=> b!3992193 m!4570805))

(assert (=> b!3992193 m!4570349))

(declare-fun m!4571337 () Bool)

(assert (=> b!3992193 m!4571337))

(assert (=> b!3992193 m!4570805))

(assert (=> b!3992193 m!4571337))

(declare-fun m!4571339 () Bool)

(assert (=> b!3992193 m!4571339))

(assert (=> b!3992192 m!4570811))

(assert (=> b!3992192 m!4570349))

(declare-fun m!4571341 () Bool)

(assert (=> b!3992192 m!4571341))

(assert (=> b!3991520 d!1181361))

(declare-fun d!1181363 () Bool)

(assert (=> d!1181363 (isPrefix!3846 lt!1407430 (++!11161 lt!1407430 newSuffixResult!27))))

(declare-fun lt!1407871 () Unit!61477)

(assert (=> d!1181363 (= lt!1407871 (choose!24014 lt!1407430 newSuffixResult!27))))

(assert (=> d!1181363 (= (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407430 newSuffixResult!27) lt!1407871)))

(declare-fun bs!588451 () Bool)

(assert (= bs!588451 d!1181363))

(assert (=> bs!588451 m!4570349))

(assert (=> bs!588451 m!4570349))

(assert (=> bs!588451 m!4570359))

(declare-fun m!4571343 () Bool)

(assert (=> bs!588451 m!4571343))

(assert (=> b!3991520 d!1181363))

(declare-fun d!1181365 () Bool)

(assert (=> d!1181365 (= (size!31930 token!484) (size!31931 (originalCharacters!7359 token!484)))))

(declare-fun Unit!61495 () Unit!61477)

(assert (=> d!1181365 (= (lemmaCharactersSize!1354 token!484) Unit!61495)))

(declare-fun bs!588452 () Bool)

(assert (= bs!588452 d!1181365))

(assert (=> bs!588452 m!4570363))

(assert (=> b!3991520 d!1181365))

(declare-fun b!3992195 () Bool)

(declare-fun e!2474812 () Bool)

(declare-fun e!2474811 () Bool)

(assert (=> b!3992195 (= e!2474812 e!2474811)))

(declare-fun res!1620431 () Bool)

(assert (=> b!3992195 (=> (not res!1620431) (not e!2474811))))

(assert (=> b!3992195 (= res!1620431 (not (is-Nil!42693 lt!1407483)))))

(declare-fun d!1181367 () Bool)

(declare-fun e!2474810 () Bool)

(assert (=> d!1181367 e!2474810))

(declare-fun res!1620430 () Bool)

(assert (=> d!1181367 (=> res!1620430 e!2474810)))

(declare-fun lt!1407872 () Bool)

(assert (=> d!1181367 (= res!1620430 (not lt!1407872))))

(assert (=> d!1181367 (= lt!1407872 e!2474812)))

(declare-fun res!1620432 () Bool)

(assert (=> d!1181367 (=> res!1620432 e!2474812)))

(assert (=> d!1181367 (= res!1620432 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181367 (= (isPrefix!3846 lt!1407430 lt!1407483) lt!1407872)))

(declare-fun b!3992198 () Bool)

(assert (=> b!3992198 (= e!2474810 (>= (size!31931 lt!1407483) (size!31931 lt!1407430)))))

(declare-fun b!3992197 () Bool)

(assert (=> b!3992197 (= e!2474811 (isPrefix!3846 (tail!6225 lt!1407430) (tail!6225 lt!1407483)))))

(declare-fun b!3992196 () Bool)

(declare-fun res!1620433 () Bool)

(assert (=> b!3992196 (=> (not res!1620433) (not e!2474811))))

(assert (=> b!3992196 (= res!1620433 (= (head!8492 lt!1407430) (head!8492 lt!1407483)))))

(assert (= (and d!1181367 (not res!1620432)) b!3992195))

(assert (= (and b!3992195 res!1620431) b!3992196))

(assert (= (and b!3992196 res!1620433) b!3992197))

(assert (= (and d!1181367 (not res!1620430)) b!3992198))

(declare-fun m!4571361 () Bool)

(assert (=> b!3992198 m!4571361))

(assert (=> b!3992198 m!4570355))

(assert (=> b!3992197 m!4570805))

(declare-fun m!4571365 () Bool)

(assert (=> b!3992197 m!4571365))

(assert (=> b!3992197 m!4570805))

(assert (=> b!3992197 m!4571365))

(declare-fun m!4571369 () Bool)

(assert (=> b!3992197 m!4571369))

(assert (=> b!3992196 m!4570811))

(declare-fun m!4571371 () Bool)

(assert (=> b!3992196 m!4571371))

(assert (=> b!3991520 d!1181367))

(declare-fun d!1181369 () Bool)

(assert (=> d!1181369 (isPrefix!3846 lt!1407430 (++!11161 lt!1407430 (_2!24081 (v!39528 lt!1407469))))))

(declare-fun lt!1407873 () Unit!61477)

(assert (=> d!1181369 (= lt!1407873 (choose!24014 lt!1407430 (_2!24081 (v!39528 lt!1407469))))))

(assert (=> d!1181369 (= (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407430 (_2!24081 (v!39528 lt!1407469))) lt!1407873)))

(declare-fun bs!588453 () Bool)

(assert (= bs!588453 d!1181369))

(assert (=> bs!588453 m!4570351))

(assert (=> bs!588453 m!4570351))

(declare-fun m!4571377 () Bool)

(assert (=> bs!588453 m!4571377))

(declare-fun m!4571379 () Bool)

(assert (=> bs!588453 m!4571379))

(assert (=> b!3991520 d!1181369))

(declare-fun d!1181371 () Bool)

(assert (=> d!1181371 (ruleValid!2691 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))

(declare-fun lt!1407874 () Unit!61477)

(assert (=> d!1181371 (= lt!1407874 (choose!24020 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))) rules!2999))))

(assert (=> d!1181371 (contains!8494 rules!2999 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))

(assert (=> d!1181371 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1765 thiss!21717 (rule!9779 (_1!24081 (v!39528 lt!1407469))) rules!2999) lt!1407874)))

(declare-fun bs!588454 () Bool)

(assert (= bs!588454 d!1181371))

(assert (=> bs!588454 m!4570347))

(declare-fun m!4571385 () Bool)

(assert (=> bs!588454 m!4571385))

(declare-fun m!4571387 () Bool)

(assert (=> bs!588454 m!4571387))

(assert (=> b!3991520 d!1181371))

(declare-fun d!1181375 () Bool)

(declare-fun lt!1407875 () Int)

(assert (=> d!1181375 (>= lt!1407875 0)))

(declare-fun e!2474813 () Int)

(assert (=> d!1181375 (= lt!1407875 e!2474813)))

(declare-fun c!690885 () Bool)

(assert (=> d!1181375 (= c!690885 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181375 (= (size!31931 lt!1407430) lt!1407875)))

(declare-fun b!3992199 () Bool)

(assert (=> b!3992199 (= e!2474813 0)))

(declare-fun b!3992200 () Bool)

(assert (=> b!3992200 (= e!2474813 (+ 1 (size!31931 (t!331808 lt!1407430))))))

(assert (= (and d!1181375 c!690885) b!3992199))

(assert (= (and d!1181375 (not c!690885)) b!3992200))

(declare-fun m!4571389 () Bool)

(assert (=> b!3992200 m!4571389))

(assert (=> b!3991520 d!1181375))

(declare-fun d!1181377 () Bool)

(assert (=> d!1181377 (not (matchR!5641 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407430))))

(declare-fun lt!1407877 () Unit!61477)

(assert (=> d!1181377 (= lt!1407877 (choose!24023 thiss!21717 rules!2999 (rule!9779 token!484) lt!1407485 lt!1407442 lt!1407430 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))

(assert (=> d!1181377 (isPrefix!3846 lt!1407485 lt!1407442)))

(assert (=> d!1181377 (= (lemmaMaxPrefixOutputsMaxPrefix!413 thiss!21717 rules!2999 (rule!9779 token!484) lt!1407485 lt!1407442 lt!1407430 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407877)))

(declare-fun bs!588455 () Bool)

(assert (= bs!588455 d!1181377))

(assert (=> bs!588455 m!4570267))

(declare-fun m!4571397 () Bool)

(assert (=> bs!588455 m!4571397))

(assert (=> bs!588455 m!4570285))

(assert (=> b!3991541 d!1181377))

(declare-fun b!3992207 () Bool)

(declare-fun e!2474821 () Bool)

(declare-fun lt!1407879 () Bool)

(assert (=> b!3992207 (= e!2474821 (not lt!1407879))))

(declare-fun b!3992208 () Bool)

(declare-fun res!1620437 () Bool)

(declare-fun e!2474822 () Bool)

(assert (=> b!3992208 (=> (not res!1620437) (not e!2474822))))

(assert (=> b!3992208 (= res!1620437 (isEmpty!25520 (tail!6225 lt!1407430)))))

(declare-fun bm!285842 () Bool)

(declare-fun call!285847 () Bool)

(assert (=> bm!285842 (= call!285847 (isEmpty!25520 lt!1407430))))

(declare-fun b!3992210 () Bool)

(declare-fun e!2474817 () Bool)

(assert (=> b!3992210 (= e!2474817 (nullable!4092 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))

(declare-fun b!3992211 () Bool)

(declare-fun e!2474819 () Bool)

(assert (=> b!3992211 (= e!2474819 (not (= (head!8492 lt!1407430) (c!690784 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))))

(declare-fun b!3992212 () Bool)

(assert (=> b!3992212 (= e!2474817 (matchR!5641 (derivativeStep!3503 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) (head!8492 lt!1407430)) (tail!6225 lt!1407430)))))

(declare-fun b!3992213 () Bool)

(declare-fun res!1620441 () Bool)

(assert (=> b!3992213 (=> (not res!1620441) (not e!2474822))))

(assert (=> b!3992213 (= res!1620441 (not call!285847))))

(declare-fun b!3992214 () Bool)

(declare-fun res!1620440 () Bool)

(declare-fun e!2474823 () Bool)

(assert (=> b!3992214 (=> res!1620440 e!2474823)))

(assert (=> b!3992214 (= res!1620440 e!2474822)))

(declare-fun res!1620436 () Bool)

(assert (=> b!3992214 (=> (not res!1620436) (not e!2474822))))

(assert (=> b!3992214 (= res!1620436 lt!1407879)))

(declare-fun b!3992215 () Bool)

(declare-fun res!1620438 () Bool)

(assert (=> b!3992215 (=> res!1620438 e!2474819)))

(assert (=> b!3992215 (= res!1620438 (not (isEmpty!25520 (tail!6225 lt!1407430))))))

(declare-fun b!3992216 () Bool)

(declare-fun e!2474820 () Bool)

(assert (=> b!3992216 (= e!2474820 e!2474819)))

(declare-fun res!1620443 () Bool)

(assert (=> b!3992216 (=> res!1620443 e!2474819)))

(assert (=> b!3992216 (= res!1620443 call!285847)))

(declare-fun b!3992217 () Bool)

(declare-fun res!1620442 () Bool)

(assert (=> b!3992217 (=> res!1620442 e!2474823)))

(assert (=> b!3992217 (= res!1620442 (not (is-ElementMatch!11664 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))))

(assert (=> b!3992217 (= e!2474821 e!2474823)))

(declare-fun b!3992218 () Bool)

(declare-fun e!2474818 () Bool)

(assert (=> b!3992218 (= e!2474818 e!2474821)))

(declare-fun c!690890 () Bool)

(assert (=> b!3992218 (= c!690890 (is-EmptyLang!11664 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))

(declare-fun b!3992219 () Bool)

(assert (=> b!3992219 (= e!2474822 (= (head!8492 lt!1407430) (c!690784 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))))

(declare-fun b!3992220 () Bool)

(assert (=> b!3992220 (= e!2474818 (= lt!1407879 call!285847))))

(declare-fun d!1181381 () Bool)

(assert (=> d!1181381 e!2474818))

(declare-fun c!690889 () Bool)

(assert (=> d!1181381 (= c!690889 (is-EmptyExpr!11664 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))

(assert (=> d!1181381 (= lt!1407879 e!2474817)))

(declare-fun c!690888 () Bool)

(assert (=> d!1181381 (= c!690888 (isEmpty!25520 lt!1407430))))

(assert (=> d!1181381 (validRegex!5291 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))

(assert (=> d!1181381 (= (matchR!5641 (regex!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407430) lt!1407879)))

(declare-fun b!3992209 () Bool)

(assert (=> b!3992209 (= e!2474823 e!2474820)))

(declare-fun res!1620439 () Bool)

(assert (=> b!3992209 (=> (not res!1620439) (not e!2474820))))

(assert (=> b!3992209 (= res!1620439 (not lt!1407879))))

(assert (= (and d!1181381 c!690888) b!3992210))

(assert (= (and d!1181381 (not c!690888)) b!3992212))

(assert (= (and d!1181381 c!690889) b!3992220))

(assert (= (and d!1181381 (not c!690889)) b!3992218))

(assert (= (and b!3992218 c!690890) b!3992207))

(assert (= (and b!3992218 (not c!690890)) b!3992217))

(assert (= (and b!3992217 (not res!1620442)) b!3992214))

(assert (= (and b!3992214 res!1620436) b!3992213))

(assert (= (and b!3992213 res!1620441) b!3992208))

(assert (= (and b!3992208 res!1620437) b!3992219))

(assert (= (and b!3992214 (not res!1620440)) b!3992209))

(assert (= (and b!3992209 res!1620439) b!3992216))

(assert (= (and b!3992216 (not res!1620443)) b!3992215))

(assert (= (and b!3992215 (not res!1620438)) b!3992211))

(assert (= (or b!3992220 b!3992213 b!3992216) bm!285842))

(declare-fun m!4571413 () Bool)

(assert (=> d!1181381 m!4571413))

(assert (=> d!1181381 m!4571305))

(assert (=> b!3992211 m!4570811))

(assert (=> b!3992208 m!4570805))

(assert (=> b!3992208 m!4570805))

(declare-fun m!4571415 () Bool)

(assert (=> b!3992208 m!4571415))

(assert (=> b!3992215 m!4570805))

(assert (=> b!3992215 m!4570805))

(assert (=> b!3992215 m!4571415))

(assert (=> b!3992219 m!4570811))

(assert (=> bm!285842 m!4571413))

(assert (=> b!3992212 m!4570811))

(assert (=> b!3992212 m!4570811))

(declare-fun m!4571425 () Bool)

(assert (=> b!3992212 m!4571425))

(assert (=> b!3992212 m!4570805))

(assert (=> b!3992212 m!4571425))

(assert (=> b!3992212 m!4570805))

(declare-fun m!4571431 () Bool)

(assert (=> b!3992212 m!4571431))

(assert (=> b!3992210 m!4571307))

(assert (=> b!3991541 d!1181381))

(declare-fun d!1181391 () Bool)

(assert (=> d!1181391 (= (inv!57022 (tag!7619 (rule!9779 token!484))) (= (mod (str.len (value!213266 (tag!7619 (rule!9779 token!484)))) 2) 0))))

(assert (=> b!3991524 d!1181391))

(declare-fun d!1181393 () Bool)

(declare-fun res!1620448 () Bool)

(declare-fun e!2474829 () Bool)

(assert (=> d!1181393 (=> (not res!1620448) (not e!2474829))))

(assert (=> d!1181393 (= res!1620448 (semiInverseModEq!2898 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (toValue!9247 (transformation!6759 (rule!9779 token!484)))))))

(assert (=> d!1181393 (= (inv!57026 (transformation!6759 (rule!9779 token!484))) e!2474829)))

(declare-fun b!3992231 () Bool)

(assert (=> b!3992231 (= e!2474829 (equivClasses!2797 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (toValue!9247 (transformation!6759 (rule!9779 token!484)))))))

(assert (= (and d!1181393 res!1620448) b!3992231))

(assert (=> d!1181393 m!4570897))

(assert (=> b!3992231 m!4570899))

(assert (=> b!3991524 d!1181393))

(declare-fun d!1181397 () Bool)

(declare-fun res!1620461 () Bool)

(declare-fun e!2474838 () Bool)

(assert (=> d!1181397 (=> (not res!1620461) (not e!2474838))))

(assert (=> d!1181397 (= res!1620461 (not (isEmpty!25520 (originalCharacters!7359 token!484))))))

(assert (=> d!1181397 (= (inv!57025 token!484) e!2474838)))

(declare-fun b!3992244 () Bool)

(declare-fun res!1620462 () Bool)

(assert (=> b!3992244 (=> (not res!1620462) (not e!2474838))))

(assert (=> b!3992244 (= res!1620462 (= (originalCharacters!7359 token!484) (list!15851 (dynLambda!18135 (toChars!9106 (transformation!6759 (rule!9779 token!484))) (value!213267 token!484)))))))

(declare-fun b!3992245 () Bool)

(assert (=> b!3992245 (= e!2474838 (= (size!31930 token!484) (size!31931 (originalCharacters!7359 token!484))))))

(assert (= (and d!1181397 res!1620461) b!3992244))

(assert (= (and b!3992244 res!1620462) b!3992245))

(declare-fun b_lambda!116537 () Bool)

(assert (=> (not b_lambda!116537) (not b!3992244)))

(assert (=> b!3992244 t!331815))

(declare-fun b_and!306699 () Bool)

(assert (= b_and!306691 (and (=> t!331815 result!291114) b_and!306699)))

(assert (=> b!3992244 t!331817))

(declare-fun b_and!306701 () Bool)

(assert (= b_and!306693 (and (=> t!331817 result!291118) b_and!306701)))

(declare-fun m!4571451 () Bool)

(assert (=> d!1181397 m!4571451))

(assert (=> b!3992244 m!4570885))

(assert (=> b!3992244 m!4570885))

(declare-fun m!4571453 () Bool)

(assert (=> b!3992244 m!4571453))

(assert (=> b!3992245 m!4570363))

(assert (=> start!375650 d!1181397))

(declare-fun b!3992285 () Bool)

(declare-fun e!2474866 () Bool)

(declare-fun e!2474869 () Bool)

(assert (=> b!3992285 (= e!2474866 e!2474869)))

(declare-fun res!1620476 () Bool)

(assert (=> b!3992285 (=> (not res!1620476) (not e!2474869))))

(declare-fun call!285854 () Bool)

(assert (=> b!3992285 (= res!1620476 call!285854)))

(declare-fun c!690908 () Bool)

(declare-fun bm!285849 () Bool)

(declare-fun c!690909 () Bool)

(declare-fun call!285856 () Bool)

(assert (=> bm!285849 (= call!285856 (validRegex!5291 (ite c!690908 (reg!11993 (regex!6759 (rule!9779 token!484))) (ite c!690909 (regOne!23841 (regex!6759 (rule!9779 token!484))) (regOne!23840 (regex!6759 (rule!9779 token!484)))))))))

(declare-fun bm!285850 () Bool)

(declare-fun call!285855 () Bool)

(assert (=> bm!285850 (= call!285855 (validRegex!5291 (ite c!690909 (regTwo!23841 (regex!6759 (rule!9779 token!484))) (regTwo!23840 (regex!6759 (rule!9779 token!484))))))))

(declare-fun b!3992286 () Bool)

(declare-fun e!2474867 () Bool)

(assert (=> b!3992286 (= e!2474867 call!285855)))

(declare-fun d!1181403 () Bool)

(declare-fun res!1620474 () Bool)

(declare-fun e!2474865 () Bool)

(assert (=> d!1181403 (=> res!1620474 e!2474865)))

(assert (=> d!1181403 (= res!1620474 (is-ElementMatch!11664 (regex!6759 (rule!9779 token!484))))))

(assert (=> d!1181403 (= (validRegex!5291 (regex!6759 (rule!9779 token!484))) e!2474865)))

(declare-fun b!3992287 () Bool)

(declare-fun res!1620475 () Bool)

(assert (=> b!3992287 (=> res!1620475 e!2474866)))

(assert (=> b!3992287 (= res!1620475 (not (is-Concat!18654 (regex!6759 (rule!9779 token!484)))))))

(declare-fun e!2474870 () Bool)

(assert (=> b!3992287 (= e!2474870 e!2474866)))

(declare-fun b!3992288 () Bool)

(declare-fun e!2474871 () Bool)

(assert (=> b!3992288 (= e!2474871 e!2474870)))

(assert (=> b!3992288 (= c!690909 (is-Union!11664 (regex!6759 (rule!9779 token!484))))))

(declare-fun bm!285851 () Bool)

(assert (=> bm!285851 (= call!285854 call!285856)))

(declare-fun b!3992289 () Bool)

(declare-fun e!2474868 () Bool)

(assert (=> b!3992289 (= e!2474868 call!285856)))

(declare-fun b!3992290 () Bool)

(assert (=> b!3992290 (= e!2474869 call!285855)))

(declare-fun b!3992291 () Bool)

(assert (=> b!3992291 (= e!2474871 e!2474868)))

(declare-fun res!1620477 () Bool)

(assert (=> b!3992291 (= res!1620477 (not (nullable!4092 (reg!11993 (regex!6759 (rule!9779 token!484))))))))

(assert (=> b!3992291 (=> (not res!1620477) (not e!2474868))))

(declare-fun b!3992292 () Bool)

(declare-fun res!1620478 () Bool)

(assert (=> b!3992292 (=> (not res!1620478) (not e!2474867))))

(assert (=> b!3992292 (= res!1620478 call!285854)))

(assert (=> b!3992292 (= e!2474870 e!2474867)))

(declare-fun b!3992293 () Bool)

(assert (=> b!3992293 (= e!2474865 e!2474871)))

(assert (=> b!3992293 (= c!690908 (is-Star!11664 (regex!6759 (rule!9779 token!484))))))

(assert (= (and d!1181403 (not res!1620474)) b!3992293))

(assert (= (and b!3992293 c!690908) b!3992291))

(assert (= (and b!3992293 (not c!690908)) b!3992288))

(assert (= (and b!3992291 res!1620477) b!3992289))

(assert (= (and b!3992288 c!690909) b!3992292))

(assert (= (and b!3992288 (not c!690909)) b!3992287))

(assert (= (and b!3992292 res!1620478) b!3992286))

(assert (= (and b!3992287 (not res!1620475)) b!3992285))

(assert (= (and b!3992285 res!1620476) b!3992290))

(assert (= (or b!3992286 b!3992290) bm!285850))

(assert (= (or b!3992292 b!3992285) bm!285851))

(assert (= (or b!3992289 bm!285851) bm!285849))

(declare-fun m!4571471 () Bool)

(assert (=> bm!285849 m!4571471))

(declare-fun m!4571473 () Bool)

(assert (=> bm!285850 m!4571473))

(declare-fun m!4571475 () Bool)

(assert (=> b!3992291 m!4571475))

(assert (=> b!3991545 d!1181403))

(declare-fun b!3992317 () Bool)

(declare-fun e!2474886 () Int)

(assert (=> b!3992317 (= e!2474886 (- 1))))

(declare-fun b!3992315 () Bool)

(declare-fun e!2474885 () Int)

(assert (=> b!3992315 (= e!2474885 e!2474886)))

(declare-fun c!690915 () Bool)

(assert (=> b!3992315 (= c!690915 (and (is-Cons!42695 rules!2999) (not (= (h!48115 rules!2999) (rule!9779 (_1!24081 (v!39528 lt!1407469)))))))))

(declare-fun b!3992314 () Bool)

(assert (=> b!3992314 (= e!2474885 0)))

(declare-fun b!3992316 () Bool)

(assert (=> b!3992316 (= e!2474886 (+ 1 (getIndex!529 (t!331810 rules!2999) (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))

(declare-fun d!1181423 () Bool)

(declare-fun lt!1407904 () Int)

(assert (=> d!1181423 (>= lt!1407904 0)))

(assert (=> d!1181423 (= lt!1407904 e!2474885)))

(declare-fun c!690916 () Bool)

(assert (=> d!1181423 (= c!690916 (and (is-Cons!42695 rules!2999) (= (h!48115 rules!2999) (rule!9779 (_1!24081 (v!39528 lt!1407469))))))))

(assert (=> d!1181423 (contains!8494 rules!2999 (rule!9779 (_1!24081 (v!39528 lt!1407469))))))

(assert (=> d!1181423 (= (getIndex!529 rules!2999 (rule!9779 (_1!24081 (v!39528 lt!1407469)))) lt!1407904)))

(assert (= (and d!1181423 c!690916) b!3992314))

(assert (= (and d!1181423 (not c!690916)) b!3992315))

(assert (= (and b!3992315 c!690915) b!3992316))

(assert (= (and b!3992315 (not c!690915)) b!3992317))

(declare-fun m!4571509 () Bool)

(assert (=> b!3992316 m!4571509))

(assert (=> d!1181423 m!4571387))

(assert (=> b!3991544 d!1181423))

(declare-fun b!3992321 () Bool)

(declare-fun e!2474889 () Int)

(assert (=> b!3992321 (= e!2474889 (- 1))))

(declare-fun b!3992319 () Bool)

(declare-fun e!2474888 () Int)

(assert (=> b!3992319 (= e!2474888 e!2474889)))

(declare-fun c!690917 () Bool)

(assert (=> b!3992319 (= c!690917 (and (is-Cons!42695 rules!2999) (not (= (h!48115 rules!2999) (rule!9779 token!484)))))))

(declare-fun b!3992318 () Bool)

(assert (=> b!3992318 (= e!2474888 0)))

(declare-fun b!3992320 () Bool)

(assert (=> b!3992320 (= e!2474889 (+ 1 (getIndex!529 (t!331810 rules!2999) (rule!9779 token!484))))))

(declare-fun d!1181435 () Bool)

(declare-fun lt!1407905 () Int)

(assert (=> d!1181435 (>= lt!1407905 0)))

(assert (=> d!1181435 (= lt!1407905 e!2474888)))

(declare-fun c!690918 () Bool)

(assert (=> d!1181435 (= c!690918 (and (is-Cons!42695 rules!2999) (= (h!48115 rules!2999) (rule!9779 token!484))))))

(assert (=> d!1181435 (contains!8494 rules!2999 (rule!9779 token!484))))

(assert (=> d!1181435 (= (getIndex!529 rules!2999 (rule!9779 token!484)) lt!1407905)))

(assert (= (and d!1181435 c!690918) b!3992318))

(assert (= (and d!1181435 (not c!690918)) b!3992319))

(assert (= (and b!3992319 c!690917) b!3992320))

(assert (= (and b!3992319 (not c!690917)) b!3992321))

(declare-fun m!4571515 () Bool)

(assert (=> b!3992320 m!4571515))

(assert (=> d!1181435 m!4570947))

(assert (=> b!3991544 d!1181435))

(declare-fun d!1181441 () Bool)

(assert (=> d!1181441 (= (_2!24081 (v!39528 lt!1407469)) newSuffixResult!27)))

(declare-fun lt!1407907 () Unit!61477)

(assert (=> d!1181441 (= lt!1407907 (choose!24013 lt!1407430 (_2!24081 (v!39528 lt!1407469)) lt!1407485 newSuffixResult!27 lt!1407439))))

(assert (=> d!1181441 (isPrefix!3846 lt!1407430 lt!1407439)))

(assert (=> d!1181441 (= (lemmaSamePrefixThenSameSuffix!2033 lt!1407430 (_2!24081 (v!39528 lt!1407469)) lt!1407485 newSuffixResult!27 lt!1407439) lt!1407907)))

(declare-fun bs!588462 () Bool)

(assert (= bs!588462 d!1181441))

(declare-fun m!4571517 () Bool)

(assert (=> bs!588462 m!4571517))

(assert (=> bs!588462 m!4570301))

(assert (=> b!3991544 d!1181441))

(declare-fun d!1181443 () Bool)

(assert (=> d!1181443 (= lt!1407430 lt!1407485)))

(declare-fun lt!1407911 () Unit!61477)

(declare-fun choose!24029 (List!42817 List!42817 List!42817) Unit!61477)

(assert (=> d!1181443 (= lt!1407911 (choose!24029 lt!1407430 lt!1407485 lt!1407439))))

(assert (=> d!1181443 (isPrefix!3846 lt!1407430 lt!1407439)))

(assert (=> d!1181443 (= (lemmaIsPrefixSameLengthThenSameList!868 lt!1407430 lt!1407485 lt!1407439) lt!1407911)))

(declare-fun bs!588465 () Bool)

(assert (= bs!588465 d!1181443))

(declare-fun m!4571529 () Bool)

(assert (=> bs!588465 m!4571529))

(assert (=> bs!588465 m!4570301))

(assert (=> b!3991544 d!1181443))

(declare-fun b!3992332 () Bool)

(declare-fun e!2474897 () Bool)

(declare-fun e!2474896 () Bool)

(assert (=> b!3992332 (= e!2474897 e!2474896)))

(declare-fun res!1620497 () Bool)

(assert (=> b!3992332 (=> (not res!1620497) (not e!2474896))))

(assert (=> b!3992332 (= res!1620497 (not (is-Nil!42693 lt!1407439)))))

(declare-fun d!1181451 () Bool)

(declare-fun e!2474895 () Bool)

(assert (=> d!1181451 e!2474895))

(declare-fun res!1620496 () Bool)

(assert (=> d!1181451 (=> res!1620496 e!2474895)))

(declare-fun lt!1407917 () Bool)

(assert (=> d!1181451 (= res!1620496 (not lt!1407917))))

(assert (=> d!1181451 (= lt!1407917 e!2474897)))

(declare-fun res!1620498 () Bool)

(assert (=> d!1181451 (=> res!1620498 e!2474897)))

(assert (=> d!1181451 (= res!1620498 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181451 (= (isPrefix!3846 lt!1407430 lt!1407439) lt!1407917)))

(declare-fun b!3992335 () Bool)

(assert (=> b!3992335 (= e!2474895 (>= (size!31931 lt!1407439) (size!31931 lt!1407430)))))

(declare-fun b!3992334 () Bool)

(assert (=> b!3992334 (= e!2474896 (isPrefix!3846 (tail!6225 lt!1407430) (tail!6225 lt!1407439)))))

(declare-fun b!3992333 () Bool)

(declare-fun res!1620499 () Bool)

(assert (=> b!3992333 (=> (not res!1620499) (not e!2474896))))

(assert (=> b!3992333 (= res!1620499 (= (head!8492 lt!1407430) (head!8492 lt!1407439)))))

(assert (= (and d!1181451 (not res!1620498)) b!3992332))

(assert (= (and b!3992332 res!1620497) b!3992333))

(assert (= (and b!3992333 res!1620499) b!3992334))

(assert (= (and d!1181451 (not res!1620496)) b!3992335))

(assert (=> b!3992335 m!4570685))

(assert (=> b!3992335 m!4570355))

(assert (=> b!3992334 m!4570805))

(assert (=> b!3992334 m!4570787))

(assert (=> b!3992334 m!4570805))

(assert (=> b!3992334 m!4570787))

(declare-fun m!4571531 () Bool)

(assert (=> b!3992334 m!4571531))

(assert (=> b!3992333 m!4570811))

(assert (=> b!3992333 m!4570791))

(assert (=> b!3991523 d!1181451))

(declare-fun b!3992336 () Bool)

(declare-fun e!2474900 () Bool)

(declare-fun e!2474899 () Bool)

(assert (=> b!3992336 (= e!2474900 e!2474899)))

(declare-fun res!1620501 () Bool)

(assert (=> b!3992336 (=> (not res!1620501) (not e!2474899))))

(assert (=> b!3992336 (= res!1620501 (not (is-Nil!42693 lt!1407476)))))

(declare-fun d!1181453 () Bool)

(declare-fun e!2474898 () Bool)

(assert (=> d!1181453 e!2474898))

(declare-fun res!1620500 () Bool)

(assert (=> d!1181453 (=> res!1620500 e!2474898)))

(declare-fun lt!1407918 () Bool)

(assert (=> d!1181453 (= res!1620500 (not lt!1407918))))

(assert (=> d!1181453 (= lt!1407918 e!2474900)))

(declare-fun res!1620502 () Bool)

(assert (=> d!1181453 (=> res!1620502 e!2474900)))

(assert (=> d!1181453 (= res!1620502 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181453 (= (isPrefix!3846 lt!1407485 lt!1407476) lt!1407918)))

(declare-fun b!3992339 () Bool)

(assert (=> b!3992339 (= e!2474898 (>= (size!31931 lt!1407476) (size!31931 lt!1407485)))))

(declare-fun b!3992338 () Bool)

(assert (=> b!3992338 (= e!2474899 (isPrefix!3846 (tail!6225 lt!1407485) (tail!6225 lt!1407476)))))

(declare-fun b!3992337 () Bool)

(declare-fun res!1620503 () Bool)

(assert (=> b!3992337 (=> (not res!1620503) (not e!2474899))))

(assert (=> b!3992337 (= res!1620503 (= (head!8492 lt!1407485) (head!8492 lt!1407476)))))

(assert (= (and d!1181453 (not res!1620502)) b!3992336))

(assert (= (and b!3992336 res!1620501) b!3992337))

(assert (= (and b!3992337 res!1620503) b!3992338))

(assert (= (and d!1181453 (not res!1620500)) b!3992339))

(declare-fun m!4571533 () Bool)

(assert (=> b!3992339 m!4571533))

(assert (=> b!3992339 m!4570433))

(assert (=> b!3992338 m!4570721))

(declare-fun m!4571535 () Bool)

(assert (=> b!3992338 m!4571535))

(assert (=> b!3992338 m!4570721))

(assert (=> b!3992338 m!4571535))

(declare-fun m!4571537 () Bool)

(assert (=> b!3992338 m!4571537))

(assert (=> b!3992337 m!4570727))

(declare-fun m!4571539 () Bool)

(assert (=> b!3992337 m!4571539))

(assert (=> b!3991522 d!1181453))

(declare-fun b!3992340 () Bool)

(declare-fun e!2474903 () Bool)

(declare-fun e!2474902 () Bool)

(assert (=> b!3992340 (= e!2474903 e!2474902)))

(declare-fun res!1620505 () Bool)

(assert (=> b!3992340 (=> (not res!1620505) (not e!2474902))))

(assert (=> b!3992340 (= res!1620505 (not (is-Nil!42693 lt!1407442)))))

(declare-fun d!1181455 () Bool)

(declare-fun e!2474901 () Bool)

(assert (=> d!1181455 e!2474901))

(declare-fun res!1620504 () Bool)

(assert (=> d!1181455 (=> res!1620504 e!2474901)))

(declare-fun lt!1407919 () Bool)

(assert (=> d!1181455 (= res!1620504 (not lt!1407919))))

(assert (=> d!1181455 (= lt!1407919 e!2474903)))

(declare-fun res!1620506 () Bool)

(assert (=> d!1181455 (=> res!1620506 e!2474903)))

(assert (=> d!1181455 (= res!1620506 (is-Nil!42693 prefix!494))))

(assert (=> d!1181455 (= (isPrefix!3846 prefix!494 lt!1407442) lt!1407919)))

(declare-fun b!3992343 () Bool)

(assert (=> b!3992343 (= e!2474901 (>= (size!31931 lt!1407442) (size!31931 prefix!494)))))

(declare-fun b!3992342 () Bool)

(assert (=> b!3992342 (= e!2474902 (isPrefix!3846 (tail!6225 prefix!494) (tail!6225 lt!1407442)))))

(declare-fun b!3992341 () Bool)

(declare-fun res!1620507 () Bool)

(assert (=> b!3992341 (=> (not res!1620507) (not e!2474902))))

(assert (=> b!3992341 (= res!1620507 (= (head!8492 prefix!494) (head!8492 lt!1407442)))))

(assert (= (and d!1181455 (not res!1620506)) b!3992340))

(assert (= (and b!3992340 res!1620505) b!3992341))

(assert (= (and b!3992341 res!1620507) b!3992342))

(assert (= (and d!1181455 (not res!1620504)) b!3992343))

(assert (=> b!3992343 m!4570753))

(assert (=> b!3992343 m!4570435))

(assert (=> b!3992342 m!4570981))

(assert (=> b!3992342 m!4571061))

(assert (=> b!3992342 m!4570981))

(assert (=> b!3992342 m!4571061))

(declare-fun m!4571541 () Bool)

(assert (=> b!3992342 m!4571541))

(assert (=> b!3992341 m!4570987))

(assert (=> b!3992341 m!4571067))

(assert (=> b!3991522 d!1181455))

(declare-fun b!3992344 () Bool)

(declare-fun e!2474906 () Bool)

(declare-fun e!2474905 () Bool)

(assert (=> b!3992344 (= e!2474906 e!2474905)))

(declare-fun res!1620509 () Bool)

(assert (=> b!3992344 (=> (not res!1620509) (not e!2474905))))

(assert (=> b!3992344 (= res!1620509 (not (is-Nil!42693 lt!1407442)))))

(declare-fun d!1181457 () Bool)

(declare-fun e!2474904 () Bool)

(assert (=> d!1181457 e!2474904))

(declare-fun res!1620508 () Bool)

(assert (=> d!1181457 (=> res!1620508 e!2474904)))

(declare-fun lt!1407920 () Bool)

(assert (=> d!1181457 (= res!1620508 (not lt!1407920))))

(assert (=> d!1181457 (= lt!1407920 e!2474906)))

(declare-fun res!1620510 () Bool)

(assert (=> d!1181457 (=> res!1620510 e!2474906)))

(assert (=> d!1181457 (= res!1620510 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181457 (= (isPrefix!3846 lt!1407485 lt!1407442) lt!1407920)))

(declare-fun b!3992347 () Bool)

(assert (=> b!3992347 (= e!2474904 (>= (size!31931 lt!1407442) (size!31931 lt!1407485)))))

(declare-fun b!3992346 () Bool)

(assert (=> b!3992346 (= e!2474905 (isPrefix!3846 (tail!6225 lt!1407485) (tail!6225 lt!1407442)))))

(declare-fun b!3992345 () Bool)

(declare-fun res!1620511 () Bool)

(assert (=> b!3992345 (=> (not res!1620511) (not e!2474905))))

(assert (=> b!3992345 (= res!1620511 (= (head!8492 lt!1407485) (head!8492 lt!1407442)))))

(assert (= (and d!1181457 (not res!1620510)) b!3992344))

(assert (= (and b!3992344 res!1620509) b!3992345))

(assert (= (and b!3992345 res!1620511) b!3992346))

(assert (= (and d!1181457 (not res!1620508)) b!3992347))

(assert (=> b!3992347 m!4570753))

(assert (=> b!3992347 m!4570433))

(assert (=> b!3992346 m!4570721))

(assert (=> b!3992346 m!4571061))

(assert (=> b!3992346 m!4570721))

(assert (=> b!3992346 m!4571061))

(declare-fun m!4571549 () Bool)

(assert (=> b!3992346 m!4571549))

(assert (=> b!3992345 m!4570727))

(assert (=> b!3992345 m!4571067))

(assert (=> b!3991522 d!1181457))

(declare-fun d!1181459 () Bool)

(assert (=> d!1181459 (isPrefix!3846 prefix!494 (++!11161 prefix!494 suffix!1299))))

(declare-fun lt!1407921 () Unit!61477)

(assert (=> d!1181459 (= lt!1407921 (choose!24014 prefix!494 suffix!1299))))

(assert (=> d!1181459 (= (lemmaConcatTwoListThenFirstIsPrefix!2689 prefix!494 suffix!1299) lt!1407921)))

(declare-fun bs!588466 () Bool)

(assert (= bs!588466 d!1181459))

(assert (=> bs!588466 m!4570423))

(assert (=> bs!588466 m!4570423))

(declare-fun m!4571555 () Bool)

(assert (=> bs!588466 m!4571555))

(declare-fun m!4571559 () Bool)

(assert (=> bs!588466 m!4571559))

(assert (=> b!3991522 d!1181459))

(declare-fun d!1181461 () Bool)

(assert (=> d!1181461 (isPrefix!3846 lt!1407485 (++!11161 lt!1407485 suffixResult!105))))

(declare-fun lt!1407922 () Unit!61477)

(assert (=> d!1181461 (= lt!1407922 (choose!24014 lt!1407485 suffixResult!105))))

(assert (=> d!1181461 (= (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407485 suffixResult!105) lt!1407922)))

(declare-fun bs!588467 () Bool)

(assert (= bs!588467 d!1181461))

(assert (=> bs!588467 m!4570371))

(assert (=> bs!588467 m!4570371))

(declare-fun m!4571567 () Bool)

(assert (=> bs!588467 m!4571567))

(declare-fun m!4571569 () Bool)

(assert (=> bs!588467 m!4571569))

(assert (=> b!3991522 d!1181461))

(declare-fun b!3992348 () Bool)

(declare-fun e!2474909 () Bool)

(declare-fun e!2474908 () Bool)

(assert (=> b!3992348 (= e!2474909 e!2474908)))

(declare-fun res!1620513 () Bool)

(assert (=> b!3992348 (=> (not res!1620513) (not e!2474908))))

(assert (=> b!3992348 (= res!1620513 (not (is-Nil!42693 lt!1407442)))))

(declare-fun d!1181463 () Bool)

(declare-fun e!2474907 () Bool)

(assert (=> d!1181463 e!2474907))

(declare-fun res!1620512 () Bool)

(assert (=> d!1181463 (=> res!1620512 e!2474907)))

(declare-fun lt!1407923 () Bool)

(assert (=> d!1181463 (= res!1620512 (not lt!1407923))))

(assert (=> d!1181463 (= lt!1407923 e!2474909)))

(declare-fun res!1620514 () Bool)

(assert (=> d!1181463 (=> res!1620514 e!2474909)))

(assert (=> d!1181463 (= res!1620514 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181463 (= (isPrefix!3846 lt!1407430 lt!1407442) lt!1407923)))

(declare-fun b!3992351 () Bool)

(assert (=> b!3992351 (= e!2474907 (>= (size!31931 lt!1407442) (size!31931 lt!1407430)))))

(declare-fun b!3992350 () Bool)

(assert (=> b!3992350 (= e!2474908 (isPrefix!3846 (tail!6225 lt!1407430) (tail!6225 lt!1407442)))))

(declare-fun b!3992349 () Bool)

(declare-fun res!1620515 () Bool)

(assert (=> b!3992349 (=> (not res!1620515) (not e!2474908))))

(assert (=> b!3992349 (= res!1620515 (= (head!8492 lt!1407430) (head!8492 lt!1407442)))))

(assert (= (and d!1181463 (not res!1620514)) b!3992348))

(assert (= (and b!3992348 res!1620513) b!3992349))

(assert (= (and b!3992349 res!1620515) b!3992350))

(assert (= (and d!1181463 (not res!1620512)) b!3992351))

(assert (=> b!3992351 m!4570753))

(assert (=> b!3992351 m!4570355))

(assert (=> b!3992350 m!4570805))

(assert (=> b!3992350 m!4571061))

(assert (=> b!3992350 m!4570805))

(assert (=> b!3992350 m!4571061))

(declare-fun m!4571587 () Bool)

(assert (=> b!3992350 m!4571587))

(assert (=> b!3992349 m!4570811))

(assert (=> b!3992349 m!4571067))

(assert (=> b!3991548 d!1181463))

(declare-fun b!3992352 () Bool)

(declare-fun e!2474912 () Bool)

(declare-fun e!2474911 () Bool)

(assert (=> b!3992352 (= e!2474912 e!2474911)))

(declare-fun res!1620517 () Bool)

(assert (=> b!3992352 (=> (not res!1620517) (not e!2474911))))

(assert (=> b!3992352 (= res!1620517 (not (is-Nil!42693 lt!1407437)))))

(declare-fun d!1181465 () Bool)

(declare-fun e!2474910 () Bool)

(assert (=> d!1181465 e!2474910))

(declare-fun res!1620516 () Bool)

(assert (=> d!1181465 (=> res!1620516 e!2474910)))

(declare-fun lt!1407924 () Bool)

(assert (=> d!1181465 (= res!1620516 (not lt!1407924))))

(assert (=> d!1181465 (= lt!1407924 e!2474912)))

(declare-fun res!1620518 () Bool)

(assert (=> d!1181465 (=> res!1620518 e!2474912)))

(assert (=> d!1181465 (= res!1620518 (is-Nil!42693 lt!1407430))))

(assert (=> d!1181465 (= (isPrefix!3846 lt!1407430 lt!1407437) lt!1407924)))

(declare-fun b!3992355 () Bool)

(assert (=> b!3992355 (= e!2474910 (>= (size!31931 lt!1407437) (size!31931 lt!1407430)))))

(declare-fun b!3992354 () Bool)

(assert (=> b!3992354 (= e!2474911 (isPrefix!3846 (tail!6225 lt!1407430) (tail!6225 lt!1407437)))))

(declare-fun b!3992353 () Bool)

(declare-fun res!1620519 () Bool)

(assert (=> b!3992353 (=> (not res!1620519) (not e!2474911))))

(assert (=> b!3992353 (= res!1620519 (= (head!8492 lt!1407430) (head!8492 lt!1407437)))))

(assert (= (and d!1181465 (not res!1620518)) b!3992352))

(assert (= (and b!3992352 res!1620517) b!3992353))

(assert (= (and b!3992353 res!1620519) b!3992354))

(assert (= (and d!1181465 (not res!1620516)) b!3992355))

(declare-fun m!4571593 () Bool)

(assert (=> b!3992355 m!4571593))

(assert (=> b!3992355 m!4570355))

(assert (=> b!3992354 m!4570805))

(declare-fun m!4571597 () Bool)

(assert (=> b!3992354 m!4571597))

(assert (=> b!3992354 m!4570805))

(assert (=> b!3992354 m!4571597))

(declare-fun m!4571599 () Bool)

(assert (=> b!3992354 m!4571599))

(assert (=> b!3992353 m!4570811))

(declare-fun m!4571601 () Bool)

(assert (=> b!3992353 m!4571601))

(assert (=> b!3991548 d!1181465))

(declare-fun d!1181469 () Bool)

(assert (=> d!1181469 (isPrefix!3846 lt!1407430 (++!11161 lt!1407439 lt!1407466))))

(declare-fun lt!1407926 () Unit!61477)

(assert (=> d!1181469 (= lt!1407926 (choose!24015 lt!1407430 lt!1407439 lt!1407466))))

(assert (=> d!1181469 (isPrefix!3846 lt!1407430 lt!1407439)))

(assert (=> d!1181469 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!679 lt!1407430 lt!1407439 lt!1407466) lt!1407926)))

(declare-fun bs!588468 () Bool)

(assert (= bs!588468 d!1181469))

(assert (=> bs!588468 m!4570297))

(assert (=> bs!588468 m!4570297))

(declare-fun m!4571603 () Bool)

(assert (=> bs!588468 m!4571603))

(declare-fun m!4571605 () Bool)

(assert (=> bs!588468 m!4571605))

(assert (=> bs!588468 m!4570301))

(assert (=> b!3991548 d!1181469))

(declare-fun b!3992360 () Bool)

(declare-fun e!2474915 () List!42817)

(assert (=> b!3992360 (= e!2474915 lt!1407466)))

(declare-fun d!1181471 () Bool)

(declare-fun e!2474916 () Bool)

(assert (=> d!1181471 e!2474916))

(declare-fun res!1620522 () Bool)

(assert (=> d!1181471 (=> (not res!1620522) (not e!2474916))))

(declare-fun lt!1407927 () List!42817)

(assert (=> d!1181471 (= res!1620522 (= (content!6474 lt!1407927) (set.union (content!6474 newSuffix!27) (content!6474 lt!1407466))))))

(assert (=> d!1181471 (= lt!1407927 e!2474915)))

(declare-fun c!690921 () Bool)

(assert (=> d!1181471 (= c!690921 (is-Nil!42693 newSuffix!27))))

(assert (=> d!1181471 (= (++!11161 newSuffix!27 lt!1407466) lt!1407927)))

(declare-fun b!3992362 () Bool)

(declare-fun res!1620523 () Bool)

(assert (=> b!3992362 (=> (not res!1620523) (not e!2474916))))

(assert (=> b!3992362 (= res!1620523 (= (size!31931 lt!1407927) (+ (size!31931 newSuffix!27) (size!31931 lt!1407466))))))

(declare-fun b!3992361 () Bool)

(assert (=> b!3992361 (= e!2474915 (Cons!42693 (h!48113 newSuffix!27) (++!11161 (t!331808 newSuffix!27) lt!1407466)))))

(declare-fun b!3992363 () Bool)

(assert (=> b!3992363 (= e!2474916 (or (not (= lt!1407466 Nil!42693)) (= lt!1407927 newSuffix!27)))))

(assert (= (and d!1181471 c!690921) b!3992360))

(assert (= (and d!1181471 (not c!690921)) b!3992361))

(assert (= (and d!1181471 res!1620522) b!3992362))

(assert (= (and b!3992362 res!1620523) b!3992363))

(declare-fun m!4571615 () Bool)

(assert (=> d!1181471 m!4571615))

(assert (=> d!1181471 m!4570855))

(assert (=> d!1181471 m!4570835))

(declare-fun m!4571617 () Bool)

(assert (=> b!3992362 m!4571617))

(assert (=> b!3992362 m!4570323))

(assert (=> b!3992362 m!4570839))

(declare-fun m!4571619 () Bool)

(assert (=> b!3992361 m!4571619))

(assert (=> b!3991526 d!1181471))

(declare-fun d!1181477 () Bool)

(declare-fun lt!1407930 () List!42817)

(assert (=> d!1181477 (= (++!11161 newSuffix!27 lt!1407930) suffix!1299)))

(declare-fun e!2474918 () List!42817)

(assert (=> d!1181477 (= lt!1407930 e!2474918)))

(declare-fun c!690923 () Bool)

(assert (=> d!1181477 (= c!690923 (is-Cons!42693 newSuffix!27))))

(assert (=> d!1181477 (>= (size!31931 suffix!1299) (size!31931 newSuffix!27))))

(assert (=> d!1181477 (= (getSuffix!2277 suffix!1299 newSuffix!27) lt!1407930)))

(declare-fun b!3992366 () Bool)

(assert (=> b!3992366 (= e!2474918 (getSuffix!2277 (tail!6225 suffix!1299) (t!331808 newSuffix!27)))))

(declare-fun b!3992367 () Bool)

(assert (=> b!3992367 (= e!2474918 suffix!1299)))

(assert (= (and d!1181477 c!690923) b!3992366))

(assert (= (and d!1181477 (not c!690923)) b!3992367))

(declare-fun m!4571623 () Bool)

(assert (=> d!1181477 m!4571623))

(assert (=> d!1181477 m!4570321))

(assert (=> d!1181477 m!4570323))

(assert (=> b!3992366 m!4570961))

(assert (=> b!3992366 m!4570961))

(declare-fun m!4571625 () Bool)

(assert (=> b!3992366 m!4571625))

(assert (=> b!3991526 d!1181477))

(declare-fun d!1181479 () Bool)

(assert (=> d!1181479 (= lt!1407487 suffixResult!105)))

(declare-fun lt!1407931 () Unit!61477)

(assert (=> d!1181479 (= lt!1407931 (choose!24013 lt!1407485 lt!1407487 lt!1407485 suffixResult!105 lt!1407442))))

(assert (=> d!1181479 (isPrefix!3846 lt!1407485 lt!1407442)))

(assert (=> d!1181479 (= (lemmaSamePrefixThenSameSuffix!2033 lt!1407485 lt!1407487 lt!1407485 suffixResult!105 lt!1407442) lt!1407931)))

(declare-fun bs!588470 () Bool)

(assert (= bs!588470 d!1181479))

(declare-fun m!4571627 () Bool)

(assert (=> bs!588470 m!4571627))

(assert (=> bs!588470 m!4570285))

(assert (=> b!3991546 d!1181479))

(declare-fun d!1181485 () Bool)

(assert (=> d!1181485 (= (apply!9970 (transformation!6759 (rule!9779 token!484)) (seqFromList!4998 lt!1407485)) (dynLambda!18137 (toValue!9247 (transformation!6759 (rule!9779 token!484))) (seqFromList!4998 lt!1407485)))))

(declare-fun b_lambda!116545 () Bool)

(assert (=> (not b_lambda!116545) (not d!1181485)))

(declare-fun t!331843 () Bool)

(declare-fun tb!240281 () Bool)

(assert (=> (and b!3991559 (= (toValue!9247 (transformation!6759 (rule!9779 token!484))) (toValue!9247 (transformation!6759 (rule!9779 token!484)))) t!331843) tb!240281))

(declare-fun result!291150 () Bool)

(assert (=> tb!240281 (= result!291150 (inv!21 (dynLambda!18137 (toValue!9247 (transformation!6759 (rule!9779 token!484))) (seqFromList!4998 lt!1407485))))))

(declare-fun m!4571633 () Bool)

(assert (=> tb!240281 m!4571633))

(assert (=> d!1181485 t!331843))

(declare-fun b_and!306715 () Bool)

(assert (= b_and!306695 (and (=> t!331843 result!291150) b_and!306715)))

(declare-fun tb!240283 () Bool)

(declare-fun t!331845 () Bool)

(assert (=> (and b!3991560 (= (toValue!9247 (transformation!6759 (h!48115 rules!2999))) (toValue!9247 (transformation!6759 (rule!9779 token!484)))) t!331845) tb!240283))

(declare-fun result!291152 () Bool)

(assert (= result!291152 result!291150))

(assert (=> d!1181485 t!331845))

(declare-fun b_and!306717 () Bool)

(assert (= b_and!306697 (and (=> t!331845 result!291152) b_and!306717)))

(assert (=> d!1181485 m!4570309))

(declare-fun m!4571639 () Bool)

(assert (=> d!1181485 m!4571639))

(assert (=> b!3991546 d!1181485))

(declare-fun b!3992371 () Bool)

(declare-fun res!1620529 () Bool)

(declare-fun e!2474924 () Bool)

(assert (=> b!3992371 (=> (not res!1620529) (not e!2474924))))

(declare-fun lt!1407935 () Option!9173)

(assert (=> b!3992371 (= res!1620529 (= (value!213267 (_1!24081 (get!14047 lt!1407935))) (apply!9970 (transformation!6759 (rule!9779 (_1!24081 (get!14047 lt!1407935)))) (seqFromList!4998 (originalCharacters!7359 (_1!24081 (get!14047 lt!1407935)))))))))

(declare-fun b!3992372 () Bool)

(declare-fun res!1620527 () Bool)

(assert (=> b!3992372 (=> (not res!1620527) (not e!2474924))))

(assert (=> b!3992372 (= res!1620527 (< (size!31931 (_2!24081 (get!14047 lt!1407935))) (size!31931 lt!1407442)))))

(declare-fun b!3992373 () Bool)

(declare-fun e!2474923 () Option!9173)

(declare-fun lt!1407933 () tuple2!41900)

(assert (=> b!3992373 (= e!2474923 (Some!9172 (tuple2!41895 (Token!12657 (apply!9970 (transformation!6759 (rule!9779 token!484)) (seqFromList!4998 (_1!24084 lt!1407933))) (rule!9779 token!484) (size!31935 (seqFromList!4998 (_1!24084 lt!1407933))) (_1!24084 lt!1407933)) (_2!24084 lt!1407933))))))

(declare-fun lt!1407934 () Unit!61477)

(assert (=> b!3992373 (= lt!1407934 (longestMatchIsAcceptedByMatchOrIsEmpty!1309 (regex!6759 (rule!9779 token!484)) lt!1407442))))

(declare-fun res!1620533 () Bool)

(assert (=> b!3992373 (= res!1620533 (isEmpty!25520 (_1!24084 (findLongestMatchInner!1336 (regex!6759 (rule!9779 token!484)) Nil!42693 (size!31931 Nil!42693) lt!1407442 lt!1407442 (size!31931 lt!1407442)))))))

(declare-fun e!2474922 () Bool)

(assert (=> b!3992373 (=> res!1620533 e!2474922)))

(assert (=> b!3992373 e!2474922))

(declare-fun lt!1407936 () Unit!61477)

(assert (=> b!3992373 (= lt!1407936 lt!1407934)))

(declare-fun lt!1407937 () Unit!61477)

(assert (=> b!3992373 (= lt!1407937 (lemmaSemiInverse!1852 (transformation!6759 (rule!9779 token!484)) (seqFromList!4998 (_1!24084 lt!1407933))))))

(declare-fun b!3992374 () Bool)

(assert (=> b!3992374 (= e!2474922 (matchR!5641 (regex!6759 (rule!9779 token!484)) (_1!24084 (findLongestMatchInner!1336 (regex!6759 (rule!9779 token!484)) Nil!42693 (size!31931 Nil!42693) lt!1407442 lt!1407442 (size!31931 lt!1407442)))))))

(declare-fun b!3992375 () Bool)

(declare-fun e!2474925 () Bool)

(assert (=> b!3992375 (= e!2474925 e!2474924)))

(declare-fun res!1620531 () Bool)

(assert (=> b!3992375 (=> (not res!1620531) (not e!2474924))))

(assert (=> b!3992375 (= res!1620531 (matchR!5641 (regex!6759 (rule!9779 token!484)) (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407935))))))))

(declare-fun b!3992376 () Bool)

(declare-fun res!1620528 () Bool)

(assert (=> b!3992376 (=> (not res!1620528) (not e!2474924))))

(assert (=> b!3992376 (= res!1620528 (= (++!11161 (list!15851 (charsOf!4575 (_1!24081 (get!14047 lt!1407935)))) (_2!24081 (get!14047 lt!1407935))) lt!1407442))))

(declare-fun b!3992377 () Bool)

(assert (=> b!3992377 (= e!2474924 (= (size!31930 (_1!24081 (get!14047 lt!1407935))) (size!31931 (originalCharacters!7359 (_1!24081 (get!14047 lt!1407935))))))))

(declare-fun b!3992378 () Bool)

(declare-fun res!1620532 () Bool)

(assert (=> b!3992378 (=> (not res!1620532) (not e!2474924))))

(assert (=> b!3992378 (= res!1620532 (= (rule!9779 (_1!24081 (get!14047 lt!1407935))) (rule!9779 token!484)))))

(declare-fun d!1181491 () Bool)

(assert (=> d!1181491 e!2474925))

(declare-fun res!1620530 () Bool)

(assert (=> d!1181491 (=> res!1620530 e!2474925)))

(assert (=> d!1181491 (= res!1620530 (isEmpty!25517 lt!1407935))))

(assert (=> d!1181491 (= lt!1407935 e!2474923)))

(declare-fun c!690924 () Bool)

(assert (=> d!1181491 (= c!690924 (isEmpty!25520 (_1!24084 lt!1407933)))))

(assert (=> d!1181491 (= lt!1407933 (findLongestMatch!1249 (regex!6759 (rule!9779 token!484)) lt!1407442))))

(assert (=> d!1181491 (ruleValid!2691 thiss!21717 (rule!9779 token!484))))

(assert (=> d!1181491 (= (maxPrefixOneRule!2680 thiss!21717 (rule!9779 token!484) lt!1407442) lt!1407935)))

(declare-fun b!3992379 () Bool)

(assert (=> b!3992379 (= e!2474923 None!9172)))

(assert (= (and d!1181491 c!690924) b!3992379))

(assert (= (and d!1181491 (not c!690924)) b!3992373))

(assert (= (and b!3992373 (not res!1620533)) b!3992374))

(assert (= (and d!1181491 (not res!1620530)) b!3992375))

(assert (= (and b!3992375 res!1620531) b!3992376))

(assert (= (and b!3992376 res!1620528) b!3992372))

(assert (= (and b!3992372 res!1620527) b!3992378))

(assert (= (and b!3992378 res!1620532) b!3992371))

(assert (= (and b!3992371 res!1620529) b!3992377))

(declare-fun m!4571665 () Bool)

(assert (=> b!3992372 m!4571665))

(declare-fun m!4571667 () Bool)

(assert (=> b!3992372 m!4571667))

(assert (=> b!3992372 m!4570753))

(declare-fun m!4571669 () Bool)

(assert (=> d!1181491 m!4571669))

(declare-fun m!4571671 () Bool)

(assert (=> d!1181491 m!4571671))

(declare-fun m!4571673 () Bool)

(assert (=> d!1181491 m!4571673))

(assert (=> d!1181491 m!4570375))

(assert (=> b!3992374 m!4571259))

(assert (=> b!3992374 m!4570753))

(assert (=> b!3992374 m!4571259))

(assert (=> b!3992374 m!4570753))

(declare-fun m!4571675 () Bool)

(assert (=> b!3992374 m!4571675))

(declare-fun m!4571677 () Bool)

(assert (=> b!3992374 m!4571677))

(assert (=> b!3992377 m!4571665))

(declare-fun m!4571679 () Bool)

(assert (=> b!3992377 m!4571679))

(declare-fun m!4571681 () Bool)

(assert (=> b!3992373 m!4571681))

(declare-fun m!4571683 () Bool)

(assert (=> b!3992373 m!4571683))

(assert (=> b!3992373 m!4571681))

(declare-fun m!4571685 () Bool)

(assert (=> b!3992373 m!4571685))

(assert (=> b!3992373 m!4570753))

(assert (=> b!3992373 m!4571259))

(assert (=> b!3992373 m!4570753))

(assert (=> b!3992373 m!4571675))

(assert (=> b!3992373 m!4571681))

(assert (=> b!3992373 m!4571681))

(declare-fun m!4571687 () Bool)

(assert (=> b!3992373 m!4571687))

(assert (=> b!3992373 m!4571259))

(declare-fun m!4571689 () Bool)

(assert (=> b!3992373 m!4571689))

(declare-fun m!4571691 () Bool)

(assert (=> b!3992373 m!4571691))

(assert (=> b!3992371 m!4571665))

(declare-fun m!4571693 () Bool)

(assert (=> b!3992371 m!4571693))

(assert (=> b!3992371 m!4571693))

(declare-fun m!4571695 () Bool)

(assert (=> b!3992371 m!4571695))

(assert (=> b!3992378 m!4571665))

(assert (=> b!3992375 m!4571665))

(declare-fun m!4571697 () Bool)

(assert (=> b!3992375 m!4571697))

(assert (=> b!3992375 m!4571697))

(declare-fun m!4571699 () Bool)

(assert (=> b!3992375 m!4571699))

(assert (=> b!3992375 m!4571699))

(declare-fun m!4571701 () Bool)

(assert (=> b!3992375 m!4571701))

(assert (=> b!3992376 m!4571665))

(assert (=> b!3992376 m!4571697))

(assert (=> b!3992376 m!4571697))

(assert (=> b!3992376 m!4571699))

(assert (=> b!3992376 m!4571699))

(declare-fun m!4571703 () Bool)

(assert (=> b!3992376 m!4571703))

(assert (=> b!3991546 d!1181491))

(declare-fun d!1181505 () Bool)

(assert (=> d!1181505 (= (seqFromList!4998 lt!1407485) (fromListB!2294 lt!1407485))))

(declare-fun bs!588475 () Bool)

(assert (= bs!588475 d!1181505))

(declare-fun m!4571707 () Bool)

(assert (=> bs!588475 m!4571707))

(assert (=> b!3991546 d!1181505))

(declare-fun b!3992394 () Bool)

(declare-fun e!2474937 () Bool)

(declare-fun e!2474936 () Bool)

(assert (=> b!3992394 (= e!2474937 e!2474936)))

(declare-fun res!1620545 () Bool)

(assert (=> b!3992394 (=> (not res!1620545) (not e!2474936))))

(assert (=> b!3992394 (= res!1620545 (not (is-Nil!42693 lt!1407482)))))

(declare-fun d!1181507 () Bool)

(declare-fun e!2474935 () Bool)

(assert (=> d!1181507 e!2474935))

(declare-fun res!1620544 () Bool)

(assert (=> d!1181507 (=> res!1620544 e!2474935)))

(declare-fun lt!1407946 () Bool)

(assert (=> d!1181507 (= res!1620544 (not lt!1407946))))

(assert (=> d!1181507 (= lt!1407946 e!2474937)))

(declare-fun res!1620546 () Bool)

(assert (=> d!1181507 (=> res!1620546 e!2474937)))

(assert (=> d!1181507 (= res!1620546 (is-Nil!42693 lt!1407485))))

(assert (=> d!1181507 (= (isPrefix!3846 lt!1407485 lt!1407482) lt!1407946)))

(declare-fun b!3992397 () Bool)

(assert (=> b!3992397 (= e!2474935 (>= (size!31931 lt!1407482) (size!31931 lt!1407485)))))

(declare-fun b!3992396 () Bool)

(assert (=> b!3992396 (= e!2474936 (isPrefix!3846 (tail!6225 lt!1407485) (tail!6225 lt!1407482)))))

(declare-fun b!3992395 () Bool)

(declare-fun res!1620547 () Bool)

(assert (=> b!3992395 (=> (not res!1620547) (not e!2474936))))

(assert (=> b!3992395 (= res!1620547 (= (head!8492 lt!1407485) (head!8492 lt!1407482)))))

(assert (= (and d!1181507 (not res!1620546)) b!3992394))

(assert (= (and b!3992394 res!1620545) b!3992395))

(assert (= (and b!3992395 res!1620547) b!3992396))

(assert (= (and d!1181507 (not res!1620544)) b!3992397))

(declare-fun m!4571711 () Bool)

(assert (=> b!3992397 m!4571711))

(assert (=> b!3992397 m!4570433))

(assert (=> b!3992396 m!4570721))

(declare-fun m!4571713 () Bool)

(assert (=> b!3992396 m!4571713))

(assert (=> b!3992396 m!4570721))

(assert (=> b!3992396 m!4571713))

(declare-fun m!4571715 () Bool)

(assert (=> b!3992396 m!4571715))

(assert (=> b!3992395 m!4570727))

(declare-fun m!4571717 () Bool)

(assert (=> b!3992395 m!4571717))

(assert (=> b!3991546 d!1181507))

(declare-fun d!1181511 () Bool)

(assert (=> d!1181511 (isPrefix!3846 lt!1407485 (++!11161 lt!1407485 lt!1407487))))

(declare-fun lt!1407948 () Unit!61477)

(assert (=> d!1181511 (= lt!1407948 (choose!24014 lt!1407485 lt!1407487))))

(assert (=> d!1181511 (= (lemmaConcatTwoListThenFirstIsPrefix!2689 lt!1407485 lt!1407487) lt!1407948)))

(declare-fun bs!588476 () Bool)

(assert (= bs!588476 d!1181511))

(assert (=> bs!588476 m!4570413))

(assert (=> bs!588476 m!4570413))

(declare-fun m!4571719 () Bool)

(assert (=> bs!588476 m!4571719))

(declare-fun m!4571721 () Bool)

(assert (=> bs!588476 m!4571721))

(assert (=> b!3991546 d!1181511))

(declare-fun d!1181513 () Bool)

(assert (=> d!1181513 (= (maxPrefixOneRule!2680 thiss!21717 (rule!9779 token!484) lt!1407442) (Some!9172 (tuple2!41895 (Token!12657 (apply!9970 (transformation!6759 (rule!9779 token!484)) (seqFromList!4998 lt!1407485)) (rule!9779 token!484) (size!31931 lt!1407485) lt!1407485) suffixResult!105)))))

(declare-fun lt!1407949 () Unit!61477)

(assert (=> d!1181513 (= lt!1407949 (choose!24028 thiss!21717 rules!2999 lt!1407485 lt!1407442 suffixResult!105 (rule!9779 token!484)))))

(assert (=> d!1181513 (not (isEmpty!25515 rules!2999))))

(assert (=> d!1181513 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1502 thiss!21717 rules!2999 lt!1407485 lt!1407442 suffixResult!105 (rule!9779 token!484)) lt!1407949)))

(declare-fun bs!588478 () Bool)

(assert (= bs!588478 d!1181513))

(assert (=> bs!588478 m!4570387))

(assert (=> bs!588478 m!4570309))

(assert (=> bs!588478 m!4570303))

(assert (=> bs!588478 m!4570309))

(assert (=> bs!588478 m!4570313))

(assert (=> bs!588478 m!4570433))

(declare-fun m!4571729 () Bool)

(assert (=> bs!588478 m!4571729))

(assert (=> b!3991546 d!1181513))

(declare-fun d!1181519 () Bool)

(declare-fun res!1620558 () Bool)

(declare-fun e!2474946 () Bool)

(assert (=> d!1181519 (=> (not res!1620558) (not e!2474946))))

(declare-fun rulesValid!2633 (LexerInterface!6348 List!42819) Bool)

(assert (=> d!1181519 (= res!1620558 (rulesValid!2633 thiss!21717 rules!2999))))

(assert (=> d!1181519 (= (rulesInvariant!5691 thiss!21717 rules!2999) e!2474946)))

(declare-fun b!3992408 () Bool)

(declare-datatypes ((List!42824 0))(
  ( (Nil!42700) (Cons!42700 (h!48120 String!48665) (t!331863 List!42824)) )
))
(declare-fun noDuplicateTag!2634 (LexerInterface!6348 List!42819 List!42824) Bool)

(assert (=> b!3992408 (= e!2474946 (noDuplicateTag!2634 thiss!21717 rules!2999 Nil!42700))))

(assert (= (and d!1181519 res!1620558) b!3992408))

(declare-fun m!4571743 () Bool)

(assert (=> d!1181519 m!4571743))

(declare-fun m!4571745 () Bool)

(assert (=> b!3992408 m!4571745))

(assert (=> b!3991525 d!1181519))

(declare-fun e!2474963 () Bool)

(assert (=> b!3991524 (= tp!1215749 e!2474963)))

(declare-fun b!3992439 () Bool)

(declare-fun tp!1215821 () Bool)

(assert (=> b!3992439 (= e!2474963 tp!1215821)))

(declare-fun b!3992438 () Bool)

(declare-fun tp!1215819 () Bool)

(declare-fun tp!1215820 () Bool)

(assert (=> b!3992438 (= e!2474963 (and tp!1215819 tp!1215820))))

(declare-fun b!3992437 () Bool)

(assert (=> b!3992437 (= e!2474963 tp_is_empty!20299)))

(declare-fun b!3992440 () Bool)

(declare-fun tp!1215822 () Bool)

(declare-fun tp!1215823 () Bool)

(assert (=> b!3992440 (= e!2474963 (and tp!1215822 tp!1215823))))

(assert (= (and b!3991524 (is-ElementMatch!11664 (regex!6759 (rule!9779 token!484)))) b!3992437))

(assert (= (and b!3991524 (is-Concat!18654 (regex!6759 (rule!9779 token!484)))) b!3992438))

(assert (= (and b!3991524 (is-Star!11664 (regex!6759 (rule!9779 token!484)))) b!3992439))

(assert (= (and b!3991524 (is-Union!11664 (regex!6759 (rule!9779 token!484)))) b!3992440))

(declare-fun b!3992445 () Bool)

(declare-fun e!2474966 () Bool)

(declare-fun tp!1215826 () Bool)

(assert (=> b!3992445 (= e!2474966 (and tp_is_empty!20299 tp!1215826))))

(assert (=> b!3991556 (= tp!1215761 e!2474966)))

(assert (= (and b!3991556 (is-Cons!42693 (t!331808 prefix!494))) b!3992445))

(declare-fun b!3992446 () Bool)

(declare-fun e!2474967 () Bool)

(declare-fun tp!1215827 () Bool)

(assert (=> b!3992446 (= e!2474967 (and tp_is_empty!20299 tp!1215827))))

(assert (=> b!3991519 (= tp!1215760 e!2474967)))

(assert (= (and b!3991519 (is-Cons!42693 (t!331808 newSuffix!27))) b!3992446))

(declare-fun b!3992447 () Bool)

(declare-fun e!2474968 () Bool)

(declare-fun tp!1215828 () Bool)

(assert (=> b!3992447 (= e!2474968 (and tp_is_empty!20299 tp!1215828))))

(assert (=> b!3991518 (= tp!1215754 e!2474968)))

(assert (= (and b!3991518 (is-Cons!42693 (originalCharacters!7359 token!484))) b!3992447))

(declare-fun b!3992458 () Bool)

(declare-fun b_free!110889 () Bool)

(declare-fun b_next!111593 () Bool)

(assert (=> b!3992458 (= b_free!110889 (not b_next!111593))))

(declare-fun t!331847 () Bool)

(declare-fun tb!240285 () Bool)

(assert (=> (and b!3992458 (= (toValue!9247 (transformation!6759 (h!48115 (t!331810 rules!2999)))) (toValue!9247 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))) t!331847) tb!240285))

(declare-fun result!291160 () Bool)

(assert (= result!291160 result!291136))

(assert (=> d!1181359 t!331847))

(declare-fun tb!240287 () Bool)

(declare-fun t!331849 () Bool)

(assert (=> (and b!3992458 (= (toValue!9247 (transformation!6759 (h!48115 (t!331810 rules!2999)))) (toValue!9247 (transformation!6759 (rule!9779 token!484)))) t!331849) tb!240287))

(declare-fun result!291162 () Bool)

(assert (= result!291162 result!291150))

(assert (=> d!1181485 t!331849))

(declare-fun tp!1215839 () Bool)

(declare-fun b_and!306719 () Bool)

(assert (=> b!3992458 (= tp!1215839 (and (=> t!331847 result!291160) (=> t!331849 result!291162) b_and!306719))))

(declare-fun b_free!110891 () Bool)

(declare-fun b_next!111595 () Bool)

(assert (=> b!3992458 (= b_free!110891 (not b_next!111595))))

(declare-fun tb!240289 () Bool)

(declare-fun t!331851 () Bool)

(assert (=> (and b!3992458 (= (toChars!9106 (transformation!6759 (h!48115 (t!331810 rules!2999)))) (toChars!9106 (transformation!6759 (rule!9779 token!484)))) t!331851) tb!240289))

(declare-fun result!291164 () Bool)

(assert (= result!291164 result!291114))

(assert (=> d!1181221 t!331851))

(declare-fun tb!240291 () Bool)

(declare-fun t!331853 () Bool)

(assert (=> (and b!3992458 (= (toChars!9106 (transformation!6759 (h!48115 (t!331810 rules!2999)))) (toChars!9106 (transformation!6759 (rule!9779 (_1!24081 (v!39528 lt!1407469)))))) t!331853) tb!240291))

(declare-fun result!291166 () Bool)

(assert (= result!291166 result!291132))

(assert (=> d!1181353 t!331853))

(assert (=> b!3992244 t!331851))

(declare-fun tp!1215838 () Bool)

(declare-fun b_and!306721 () Bool)

(assert (=> b!3992458 (= tp!1215838 (and (=> t!331851 result!291164) (=> t!331853 result!291166) b_and!306721))))

(declare-fun e!2474977 () Bool)

(assert (=> b!3992458 (= e!2474977 (and tp!1215839 tp!1215838))))

(declare-fun b!3992457 () Bool)

(declare-fun tp!1215840 () Bool)

(declare-fun e!2474979 () Bool)

(assert (=> b!3992457 (= e!2474979 (and tp!1215840 (inv!57022 (tag!7619 (h!48115 (t!331810 rules!2999)))) (inv!57026 (transformation!6759 (h!48115 (t!331810 rules!2999)))) e!2474977))))

(declare-fun b!3992456 () Bool)

(declare-fun e!2474980 () Bool)

(declare-fun tp!1215837 () Bool)

(assert (=> b!3992456 (= e!2474980 (and e!2474979 tp!1215837))))

(assert (=> b!3991550 (= tp!1215757 e!2474980)))

(assert (= b!3992457 b!3992458))

(assert (= b!3992456 b!3992457))

(assert (= (and b!3991550 (is-Cons!42695 (t!331810 rules!2999))) b!3992456))

(declare-fun m!4571753 () Bool)

(assert (=> b!3992457 m!4571753))

(declare-fun m!4571755 () Bool)

(assert (=> b!3992457 m!4571755))

(declare-fun e!2474990 () Bool)

(assert (=> b!3991555 (= tp!1215753 e!2474990)))

(declare-fun b!3992474 () Bool)

(declare-fun tp!1215843 () Bool)

(assert (=> b!3992474 (= e!2474990 tp!1215843)))

(declare-fun b!3992473 () Bool)

(declare-fun tp!1215841 () Bool)

(declare-fun tp!1215842 () Bool)

(assert (=> b!3992473 (= e!2474990 (and tp!1215841 tp!1215842))))

(declare-fun b!3992472 () Bool)

(assert (=> b!3992472 (= e!2474990 tp_is_empty!20299)))

(declare-fun b!3992475 () Bool)

(declare-fun tp!1215844 () Bool)

(declare-fun tp!1215845 () Bool)

(assert (=> b!3992475 (= e!2474990 (and tp!1215844 tp!1215845))))

(assert (= (and b!3991555 (is-ElementMatch!11664 (regex!6759 (h!48115 rules!2999)))) b!3992472))

(assert (= (and b!3991555 (is-Concat!18654 (regex!6759 (h!48115 rules!2999)))) b!3992473))

(assert (= (and b!3991555 (is-Star!11664 (regex!6759 (h!48115 rules!2999)))) b!3992474))

(assert (= (and b!3991555 (is-Union!11664 (regex!6759 (h!48115 rules!2999)))) b!3992475))

(declare-fun b!3992476 () Bool)

(declare-fun e!2474991 () Bool)

(declare-fun tp!1215846 () Bool)

(assert (=> b!3992476 (= e!2474991 (and tp_is_empty!20299 tp!1215846))))

(assert (=> b!3991554 (= tp!1215752 e!2474991)))

(assert (= (and b!3991554 (is-Cons!42693 (t!331808 suffixResult!105))) b!3992476))

(declare-fun b!3992477 () Bool)

(declare-fun e!2474992 () Bool)

(declare-fun tp!1215847 () Bool)

(assert (=> b!3992477 (= e!2474992 (and tp_is_empty!20299 tp!1215847))))

(assert (=> b!3991536 (= tp!1215758 e!2474992)))

(assert (= (and b!3991536 (is-Cons!42693 (t!331808 newSuffixResult!27))) b!3992477))

(declare-fun b!3992478 () Bool)

(declare-fun e!2474993 () Bool)

(declare-fun tp!1215848 () Bool)

(assert (=> b!3992478 (= e!2474993 (and tp_is_empty!20299 tp!1215848))))

(assert (=> b!3991552 (= tp!1215750 e!2474993)))

(assert (= (and b!3991552 (is-Cons!42693 (t!331808 suffix!1299))) b!3992478))

(declare-fun b_lambda!116547 () Bool)

(assert (= b_lambda!116545 (or (and b!3991559 b_free!110873) (and b!3991560 b_free!110877 (= (toValue!9247 (transformation!6759 (h!48115 rules!2999))) (toValue!9247 (transformation!6759 (rule!9779 token!484))))) (and b!3992458 b_free!110889 (= (toValue!9247 (transformation!6759 (h!48115 (t!331810 rules!2999)))) (toValue!9247 (transformation!6759 (rule!9779 token!484))))) b_lambda!116547)))

(declare-fun b_lambda!116549 () Bool)

(assert (= b_lambda!116527 (or (and b!3991559 b_free!110875) (and b!3991560 b_free!110879 (= (toChars!9106 (transformation!6759 (h!48115 rules!2999))) (toChars!9106 (transformation!6759 (rule!9779 token!484))))) (and b!3992458 b_free!110891 (= (toChars!9106 (transformation!6759 (h!48115 (t!331810 rules!2999)))) (toChars!9106 (transformation!6759 (rule!9779 token!484))))) b_lambda!116549)))

(declare-fun b_lambda!116551 () Bool)

(assert (= b_lambda!116537 (or (and b!3991559 b_free!110875) (and b!3991560 b_free!110879 (= (toChars!9106 (transformation!6759 (h!48115 rules!2999))) (toChars!9106 (transformation!6759 (rule!9779 token!484))))) (and b!3992458 b_free!110891 (= (toChars!9106 (transformation!6759 (h!48115 (t!331810 rules!2999)))) (toChars!9106 (transformation!6759 (rule!9779 token!484))))) b_lambda!116551)))

(push 1)

(assert (not bm!285849))

(assert (not d!1181241))

(assert (not d!1181443))

(assert (not b!3992231))

(assert (not b!3991977))

(assert (not b!3991973))

(assert (not d!1181229))

(assert (not b!3991766))

(assert (not b!3992215))

(assert (not b!3992333))

(assert (not d!1181275))

(assert (not d!1181461))

(assert (not b!3992337))

(assert (not b!3992194))

(assert (not b!3991980))

(assert (not d!1181381))

(assert (not b!3992212))

(assert (not b!3991853))

(assert b_and!306699)

(assert (not b!3991984))

(assert (not b!3992341))

(assert (not b!3992244))

(assert (not b!3991955))

(assert (not b!3991865))

(assert (not b!3992473))

(assert tp_is_empty!20299)

(assert (not d!1181349))

(assert (not b!3992151))

(assert (not b!3991969))

(assert (not b_next!111581))

(assert (not b!3992196))

(assert (not b!3992144))

(assert (not b!3992193))

(assert (not b!3991851))

(assert (not b!3991886))

(assert (not b!3991972))

(assert (not b!3991804))

(assert (not d!1181459))

(assert (not b!3992343))

(assert (not d!1181441))

(assert (not b!3992346))

(assert (not b!3992476))

(assert (not b_lambda!116551))

(assert (not tb!240253))

(assert (not b!3991997))

(assert (not d!1181247))

(assert (not b!3992147))

(assert (not b!3992353))

(assert (not b!3991981))

(assert (not b!3991952))

(assert (not b!3991890))

(assert (not b!3991805))

(assert (not d!1181243))

(assert (not tb!240265))

(assert (not d!1181175))

(assert (not b!3992335))

(assert (not d!1181353))

(assert (not b!3992158))

(assert (not d!1181471))

(assert (not b!3992397))

(assert (not b!3991761))

(assert (not b!3992351))

(assert (not b!3992146))

(assert (not d!1181477))

(assert (not b!3992395))

(assert (not d!1181191))

(assert (not d!1181227))

(assert (not d!1181255))

(assert (not b!3991898))

(assert (not b!3992003))

(assert (not b!3992366))

(assert (not d!1181193))

(assert (not b!3991884))

(assert (not d!1181263))

(assert (not b!3991854))

(assert (not b!3992245))

(assert (not b!3991871))

(assert (not b!3991791))

(assert (not d!1181511))

(assert (not b_next!111577))

(assert (not b!3992439))

(assert (not b!3992004))

(assert (not b!3992475))

(assert (not b!3991959))

(assert (not b!3991802))

(assert (not d!1181479))

(assert (not d!1181209))

(assert (not b!3992408))

(assert (not b!3991807))

(assert (not b_next!111579))

(assert (not b!3991866))

(assert (not b!3991764))

(assert (not b!3991919))

(assert (not b!3991763))

(assert (not b!3991809))

(assert (not d!1181271))

(assert (not b!3992148))

(assert (not b!3992342))

(assert (not b!3992396))

(assert (not b!3991940))

(assert (not b!3992372))

(assert (not b!3992152))

(assert (not b!3992374))

(assert (not tb!240281))

(assert (not d!1181253))

(assert (not b!3992143))

(assert (not d!1181377))

(assert (not d!1181355))

(assert (not b!3991976))

(assert (not b!3992200))

(assert (not b!3992445))

(assert (not b!3991867))

(assert (not b!3991790))

(assert (not b!3992371))

(assert (not bm!285834))

(assert (not d!1181211))

(assert (not d!1181265))

(assert (not b!3992002))

(assert (not b!3991762))

(assert (not d!1181249))

(assert (not d!1181423))

(assert (not d!1181219))

(assert (not b!3992350))

(assert (not d!1181397))

(assert (not b!3992375))

(assert (not b!3991768))

(assert (not b!3991996))

(assert (not b!3991855))

(assert b_and!306721)

(assert (not b_lambda!116547))

(assert (not b!3992291))

(assert (not b!3992361))

(assert (not bm!285850))

(assert (not b!3992320))

(assert (not d!1181261))

(assert (not b!3992474))

(assert (not b!3991989))

(assert b_and!306715)

(assert (not b!3992154))

(assert (not d!1181259))

(assert (not b!3992347))

(assert (not bm!285837))

(assert (not b!3991765))

(assert (not b!3991875))

(assert (not d!1181469))

(assert (not d!1181341))

(assert (not d!1181197))

(assert (not b!3992373))

(assert (not b!3992141))

(assert (not b!3992211))

(assert (not b!3992219))

(assert (not d!1181213))

(assert (not d!1181345))

(assert (not b!3991862))

(assert (not d!1181369))

(assert (not d!1181279))

(assert (not bm!285842))

(assert (not b!3992478))

(assert (not b!3991958))

(assert (not b_next!111595))

(assert (not d!1181435))

(assert (not b!3992477))

(assert (not d!1181223))

(assert (not b!3992440))

(assert (not d!1181357))

(assert (not b_lambda!116533))

(assert (not d!1181351))

(assert b_and!306717)

(assert (not b!3991880))

(assert (not d!1181183))

(assert (not b!3992157))

(assert (not b!3991792))

(assert (not b!3992376))

(assert (not b!3991902))

(assert (not d!1181393))

(assert (not b!3991808))

(assert (not b!3992145))

(assert (not b!3991806))

(assert (not bm!285833))

(assert (not b!3991922))

(assert (not d!1181189))

(assert (not d!1181159))

(assert (not d!1181185))

(assert (not d!1181513))

(assert (not b!3991879))

(assert (not b!3992339))

(assert (not b!3991891))

(assert (not b!3992161))

(assert (not d!1181347))

(assert b_and!306701)

(assert (not d!1181343))

(assert (not b!3992457))

(assert (not b!3991873))

(assert (not b!3992316))

(assert (not b!3992192))

(assert (not b!3992160))

(assert (not b!3992198))

(assert (not b!3992345))

(assert (not b!3991985))

(assert (not b!3991820))

(assert (not d!1181221))

(assert (not b!3992354))

(assert (not b!3992355))

(assert (not b!3991803))

(assert (not b_next!111583))

(assert (not b_lambda!116549))

(assert (not b!3992362))

(assert (not b!3991798))

(assert (not b!3991963))

(assert (not b!3991767))

(assert (not b!3992338))

(assert (not b!3991988))

(assert (not b!3992349))

(assert (not b!3992438))

(assert (not d!1181169))

(assert (not b!3992446))

(assert (not d!1181203))

(assert (not b!3991974))

(assert (not d!1181225))

(assert (not b!3991800))

(assert (not b!3991887))

(assert (not b!3991960))

(assert (not b!3992456))

(assert (not d!1181505))

(assert (not d!1181519))

(assert (not b!3991876))

(assert (not b!3991962))

(assert (not d!1181267))

(assert (not b!3991819))

(assert (not b!3991954))

(assert (not b!3991870))

(assert (not b!3992142))

(assert (not d!1181363))

(assert (not b!3992447))

(assert (not b_next!111593))

(assert (not d!1181201))

(assert (not d!1181491))

(assert (not d!1181205))

(assert (not d!1181371))

(assert (not b!3991921))

(assert b_and!306719)

(assert (not b!3991926))

(assert (not b!3991993))

(assert (not b!3992377))

(assert (not b!3992197))

(assert (not b!3992378))

(assert (not b!3992208))

(assert (not b!3992334))

(assert (not b!3991858))

(assert (not d!1181365))

(assert (not tb!240269))

(assert (not b!3991999))

(assert (not d!1181181))

(assert (not b_lambda!116535))

(assert (not b!3992210))

(assert (not b!3991869))

(check-sat)

(pop 1)

(push 1)

(assert b_and!306699)

(assert (not b_next!111581))

(assert (not b_next!111577))

(assert (not b_next!111579))

(assert b_and!306721)

(assert b_and!306715)

(assert (not b_next!111595))

(assert b_and!306717)

(assert b_and!306701)

(assert (not b_next!111583))

(assert (not b_next!111593))

(assert b_and!306719)

(check-sat)

(pop 1)

