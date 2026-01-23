; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!376064 () Bool)

(assert start!376064)

(declare-fun b!3995590 () Bool)

(declare-fun b_free!110985 () Bool)

(declare-fun b_next!111689 () Bool)

(assert (=> b!3995590 (= b_free!110985 (not b_next!111689))))

(declare-fun tp!1216446 () Bool)

(declare-fun b_and!306895 () Bool)

(assert (=> b!3995590 (= tp!1216446 b_and!306895)))

(declare-fun b_free!110987 () Bool)

(declare-fun b_next!111691 () Bool)

(assert (=> b!3995590 (= b_free!110987 (not b_next!111691))))

(declare-fun tp!1216452 () Bool)

(declare-fun b_and!306897 () Bool)

(assert (=> b!3995590 (= tp!1216452 b_and!306897)))

(declare-fun b!3995568 () Bool)

(declare-fun b_free!110989 () Bool)

(declare-fun b_next!111693 () Bool)

(assert (=> b!3995568 (= b_free!110989 (not b_next!111693))))

(declare-fun tp!1216445 () Bool)

(declare-fun b_and!306899 () Bool)

(assert (=> b!3995568 (= tp!1216445 b_and!306899)))

(declare-fun b_free!110991 () Bool)

(declare-fun b_next!111695 () Bool)

(assert (=> b!3995568 (= b_free!110991 (not b_next!111695))))

(declare-fun tp!1216453 () Bool)

(declare-fun b_and!306901 () Bool)

(assert (=> b!3995568 (= tp!1216453 b_and!306901)))

(declare-fun b!3995552 () Bool)

(declare-fun res!1622423 () Bool)

(declare-fun e!2477081 () Bool)

(assert (=> b!3995552 (=> res!1622423 e!2477081)))

(declare-datatypes ((C!23536 0))(
  ( (C!23537 (val!13862 Int)) )
))
(declare-datatypes ((List!42856 0))(
  ( (Nil!42732) (Cons!42732 (h!48152 C!23536) (t!331991 List!42856)) )
))
(declare-fun lt!1410430 () List!42856)

(declare-fun lt!1410458 () List!42856)

(assert (=> b!3995552 (= res!1622423 (not (= lt!1410430 lt!1410458)))))

(declare-fun b!3995553 () Bool)

(declare-fun e!2477104 () Bool)

(declare-datatypes ((IArray!25967 0))(
  ( (IArray!25968 (innerList!13041 List!42856)) )
))
(declare-datatypes ((Conc!12981 0))(
  ( (Node!12981 (left!32272 Conc!12981) (right!32602 Conc!12981) (csize!26192 Int) (cheight!13192 Int)) (Leaf!20073 (xs!16287 IArray!25967) (csize!26193 Int)) (Empty!12981) )
))
(declare-datatypes ((BalanceConc!25556 0))(
  ( (BalanceConc!25557 (c!691320 Conc!12981)) )
))
(declare-datatypes ((String!48717 0))(
  ( (String!48718 (value!213553 String)) )
))
(declare-datatypes ((List!42857 0))(
  ( (Nil!42733) (Cons!42733 (h!48153 (_ BitVec 16)) (t!331992 List!42857)) )
))
(declare-datatypes ((TokenValue!7000 0))(
  ( (FloatLiteralValue!14000 (text!49445 List!42857)) (TokenValueExt!6999 (__x!26217 Int)) (Broken!35000 (value!213554 List!42857)) (Object!7123) (End!7000) (Def!7000) (Underscore!7000) (Match!7000) (Else!7000) (Error!7000) (Case!7000) (If!7000) (Extends!7000) (Abstract!7000) (Class!7000) (Val!7000) (DelimiterValue!14000 (del!7060 List!42857)) (KeywordValue!7006 (value!213555 List!42857)) (CommentValue!14000 (value!213556 List!42857)) (WhitespaceValue!14000 (value!213557 List!42857)) (IndentationValue!7000 (value!213558 List!42857)) (String!48719) (Int32!7000) (Broken!35001 (value!213559 List!42857)) (Boolean!7001) (Unit!61592) (OperatorValue!7003 (op!7060 List!42857)) (IdentifierValue!14000 (value!213560 List!42857)) (IdentifierValue!14001 (value!213561 List!42857)) (WhitespaceValue!14001 (value!213562 List!42857)) (True!14000) (False!14000) (Broken!35002 (value!213563 List!42857)) (Broken!35003 (value!213564 List!42857)) (True!14001) (RightBrace!7000) (RightBracket!7000) (Colon!7000) (Null!7000) (Comma!7000) (LeftBracket!7000) (False!14001) (LeftBrace!7000) (ImaginaryLiteralValue!7000 (text!49446 List!42857)) (StringLiteralValue!21000 (value!213565 List!42857)) (EOFValue!7000 (value!213566 List!42857)) (IdentValue!7000 (value!213567 List!42857)) (DelimiterValue!14001 (value!213568 List!42857)) (DedentValue!7000 (value!213569 List!42857)) (NewLineValue!7000 (value!213570 List!42857)) (IntegerValue!21000 (value!213571 (_ BitVec 32)) (text!49447 List!42857)) (IntegerValue!21001 (value!213572 Int) (text!49448 List!42857)) (Times!7000) (Or!7000) (Equal!7000) (Minus!7000) (Broken!35004 (value!213573 List!42857)) (And!7000) (Div!7000) (LessEqual!7000) (Mod!7000) (Concat!18675) (Not!7000) (Plus!7000) (SpaceValue!7000 (value!213574 List!42857)) (IntegerValue!21002 (value!213575 Int) (text!49449 List!42857)) (StringLiteralValue!21001 (text!49450 List!42857)) (FloatLiteralValue!14001 (text!49451 List!42857)) (BytesLiteralValue!7000 (value!213576 List!42857)) (CommentValue!14001 (value!213577 List!42857)) (StringLiteralValue!21002 (value!213578 List!42857)) (ErrorTokenValue!7000 (msg!7061 List!42857)) )
))
(declare-datatypes ((Regex!11675 0))(
  ( (ElementMatch!11675 (c!691321 C!23536)) (Concat!18676 (regOne!23862 Regex!11675) (regTwo!23862 Regex!11675)) (EmptyExpr!11675) (Star!11675 (reg!12004 Regex!11675)) (EmptyLang!11675) (Union!11675 (regOne!23863 Regex!11675) (regTwo!23863 Regex!11675)) )
))
(declare-datatypes ((TokenValueInjection!13428 0))(
  ( (TokenValueInjection!13429 (toValue!9258 Int) (toChars!9117 Int)) )
))
(declare-datatypes ((Rule!13340 0))(
  ( (Rule!13341 (regex!6770 Regex!11675) (tag!7630 String!48717) (isSeparator!6770 Bool) (transformation!6770 TokenValueInjection!13428)) )
))
(declare-datatypes ((Token!12678 0))(
  ( (Token!12679 (value!213579 TokenValue!7000) (rule!9796 Rule!13340) (size!31958 Int) (originalCharacters!7370 List!42856)) )
))
(declare-datatypes ((tuple2!41928 0))(
  ( (tuple2!41929 (_1!24098 Token!12678) (_2!24098 List!42856)) )
))
(declare-datatypes ((Option!9184 0))(
  ( (None!9183) (Some!9183 (v!39543 tuple2!41928)) )
))
(declare-fun lt!1410435 () Option!9184)

(declare-fun validRegex!5298 (Regex!11675) Bool)

(assert (=> b!3995553 (= e!2477104 (validRegex!5298 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun b!3995554 () Bool)

(declare-fun e!2477103 () Bool)

(declare-fun e!2477076 () Bool)

(assert (=> b!3995554 (= e!2477103 e!2477076)))

(declare-fun res!1622422 () Bool)

(assert (=> b!3995554 (=> res!1622422 e!2477076)))

(declare-fun lt!1410436 () List!42856)

(declare-fun lt!1410462 () List!42856)

(declare-fun lt!1410418 () List!42856)

(assert (=> b!3995554 (= res!1622422 (or (not (= lt!1410462 lt!1410418)) (not (= lt!1410462 lt!1410436))))))

(assert (=> b!3995554 (= lt!1410418 lt!1410436)))

(declare-fun lt!1410432 () List!42856)

(declare-fun lt!1410473 () List!42856)

(declare-fun ++!11172 (List!42856 List!42856) List!42856)

(assert (=> b!3995554 (= lt!1410436 (++!11172 lt!1410432 lt!1410473))))

(declare-fun lt!1410452 () List!42856)

(declare-fun suffix!1299 () List!42856)

(assert (=> b!3995554 (= lt!1410418 (++!11172 lt!1410452 suffix!1299))))

(declare-fun lt!1410476 () List!42856)

(assert (=> b!3995554 (= lt!1410473 (++!11172 lt!1410476 suffix!1299))))

(declare-datatypes ((Unit!61593 0))(
  ( (Unit!61594) )
))
(declare-fun lt!1410466 () Unit!61593)

(declare-fun lemmaConcatAssociativity!2492 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> b!3995554 (= lt!1410466 (lemmaConcatAssociativity!2492 lt!1410432 lt!1410476 suffix!1299))))

(declare-fun b!3995555 () Bool)

(declare-fun e!2477082 () Bool)

(declare-fun e!2477077 () Bool)

(assert (=> b!3995555 (= e!2477082 e!2477077)))

(declare-fun res!1622430 () Bool)

(assert (=> b!3995555 (=> res!1622430 e!2477077)))

(declare-fun isPrefix!3857 (List!42856 List!42856) Bool)

(assert (=> b!3995555 (= res!1622430 (not (isPrefix!3857 lt!1410432 lt!1410462)))))

(declare-fun prefix!494 () List!42856)

(assert (=> b!3995555 (isPrefix!3857 prefix!494 lt!1410462)))

(declare-fun lt!1410419 () Unit!61593)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2700 (List!42856 List!42856) Unit!61593)

(assert (=> b!3995555 (= lt!1410419 (lemmaConcatTwoListThenFirstIsPrefix!2700 prefix!494 suffix!1299))))

(declare-fun lt!1410421 () List!42856)

(assert (=> b!3995555 (isPrefix!3857 lt!1410432 lt!1410421)))

(declare-fun lt!1410459 () Unit!61593)

(declare-fun suffixResult!105 () List!42856)

(assert (=> b!3995555 (= lt!1410459 (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410432 suffixResult!105))))

(declare-fun b!3995556 () Bool)

(declare-fun e!2477094 () Bool)

(assert (=> b!3995556 (= e!2477094 (not e!2477082))))

(declare-fun res!1622420 () Bool)

(assert (=> b!3995556 (=> res!1622420 e!2477082)))

(assert (=> b!3995556 (= res!1622420 (not (= lt!1410421 lt!1410462)))))

(assert (=> b!3995556 (= lt!1410421 (++!11172 lt!1410432 suffixResult!105))))

(declare-fun lt!1410457 () Unit!61593)

(declare-fun token!484 () Token!12678)

(declare-fun lemmaInv!985 (TokenValueInjection!13428) Unit!61593)

(assert (=> b!3995556 (= lt!1410457 (lemmaInv!985 (transformation!6770 (rule!9796 token!484))))))

(declare-datatypes ((LexerInterface!6359 0))(
  ( (LexerInterfaceExt!6356 (__x!26218 Int)) (Lexer!6357) )
))
(declare-fun thiss!21717 () LexerInterface!6359)

(declare-fun ruleValid!2702 (LexerInterface!6359 Rule!13340) Bool)

(assert (=> b!3995556 (ruleValid!2702 thiss!21717 (rule!9796 token!484))))

(declare-fun lt!1410463 () Unit!61593)

(declare-datatypes ((List!42858 0))(
  ( (Nil!42734) (Cons!42734 (h!48154 Rule!13340) (t!331993 List!42858)) )
))
(declare-fun rules!2999 () List!42858)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1776 (LexerInterface!6359 Rule!13340 List!42858) Unit!61593)

(assert (=> b!3995556 (= lt!1410463 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1776 thiss!21717 (rule!9796 token!484) rules!2999))))

(declare-fun b!3995557 () Bool)

(declare-fun res!1622407 () Bool)

(declare-fun e!2477106 () Bool)

(assert (=> b!3995557 (=> res!1622407 e!2477106)))

(declare-fun lt!1410460 () List!42856)

(assert (=> b!3995557 (= res!1622407 (not (isPrefix!3857 lt!1410460 lt!1410458)))))

(declare-fun b!3995558 () Bool)

(declare-fun e!2477114 () Unit!61593)

(declare-fun Unit!61595 () Unit!61593)

(assert (=> b!3995558 (= e!2477114 Unit!61595)))

(declare-fun lt!1410445 () Unit!61593)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!424 (LexerInterface!6359 List!42858 Rule!13340 List!42856 List!42856 List!42856 Rule!13340) Unit!61593)

(assert (=> b!3995558 (= lt!1410445 (lemmaMaxPrefixOutputsMaxPrefix!424 thiss!21717 rules!2999 (rule!9796 (_1!24098 (v!39543 lt!1410435))) lt!1410460 lt!1410458 lt!1410432 (rule!9796 token!484)))))

(assert (=> b!3995558 false))

(declare-fun b!3995559 () Bool)

(declare-fun e!2477110 () Bool)

(assert (=> b!3995559 (= e!2477081 e!2477110)))

(declare-fun res!1622409 () Bool)

(assert (=> b!3995559 (=> res!1622409 e!2477110)))

(declare-fun lt!1410447 () List!42856)

(assert (=> b!3995559 (= res!1622409 (not (= lt!1410447 lt!1410458)))))

(declare-fun lt!1410427 () List!42856)

(assert (=> b!3995559 (= lt!1410447 (++!11172 lt!1410460 lt!1410427))))

(declare-fun getSuffix!2288 (List!42856 List!42856) List!42856)

(assert (=> b!3995559 (= lt!1410427 (getSuffix!2288 lt!1410458 lt!1410460))))

(declare-fun b!3995560 () Bool)

(declare-fun res!1622429 () Bool)

(declare-fun e!2477093 () Bool)

(assert (=> b!3995560 (=> (not res!1622429) (not e!2477093))))

(declare-fun newSuffix!27 () List!42856)

(assert (=> b!3995560 (= res!1622429 (isPrefix!3857 newSuffix!27 suffix!1299))))

(declare-fun b!3995561 () Bool)

(declare-fun e!2477080 () Bool)

(declare-fun e!2477111 () Bool)

(assert (=> b!3995561 (= e!2477080 e!2477111)))

(declare-fun res!1622410 () Bool)

(assert (=> b!3995561 (=> res!1622410 e!2477111)))

(declare-fun lt!1410444 () List!42856)

(assert (=> b!3995561 (= res!1622410 (not (= lt!1410444 suffix!1299)))))

(declare-fun lt!1410439 () List!42856)

(assert (=> b!3995561 (= lt!1410444 (++!11172 newSuffix!27 lt!1410439))))

(assert (=> b!3995561 (= lt!1410439 (getSuffix!2288 suffix!1299 newSuffix!27))))

(declare-fun e!2477100 () Bool)

(declare-fun lt!1410425 () Int)

(declare-fun b!3995562 () Bool)

(assert (=> b!3995562 (= e!2477100 (and (= (size!31958 token!484) lt!1410425) (= (originalCharacters!7370 token!484) lt!1410432)))))

(declare-fun b!3995563 () Bool)

(declare-fun e!2477083 () Bool)

(assert (=> b!3995563 (= e!2477111 e!2477083)))

(declare-fun res!1622419 () Bool)

(assert (=> b!3995563 (=> res!1622419 e!2477083)))

(declare-fun lt!1410468 () List!42856)

(assert (=> b!3995563 (= res!1622419 (not (= lt!1410468 lt!1410462)))))

(assert (=> b!3995563 (= lt!1410468 (++!11172 prefix!494 lt!1410444))))

(assert (=> b!3995563 (= lt!1410468 (++!11172 lt!1410458 lt!1410439))))

(declare-fun lt!1410472 () Unit!61593)

(assert (=> b!3995563 (= lt!1410472 (lemmaConcatAssociativity!2492 prefix!494 newSuffix!27 lt!1410439))))

(declare-fun b!3995564 () Bool)

(declare-fun e!2477107 () Bool)

(assert (=> b!3995564 (= e!2477093 e!2477107)))

(declare-fun res!1622413 () Bool)

(assert (=> b!3995564 (=> (not res!1622413) (not e!2477107))))

(declare-fun lt!1410431 () Int)

(assert (=> b!3995564 (= res!1622413 (>= lt!1410431 lt!1410425))))

(declare-fun size!31959 (List!42856) Int)

(assert (=> b!3995564 (= lt!1410425 (size!31959 lt!1410432))))

(assert (=> b!3995564 (= lt!1410431 (size!31959 prefix!494))))

(declare-fun list!15868 (BalanceConc!25556) List!42856)

(declare-fun charsOf!4586 (Token!12678) BalanceConc!25556)

(assert (=> b!3995564 (= lt!1410432 (list!15868 (charsOf!4586 token!484)))))

(declare-fun b!3995565 () Bool)

(declare-fun e!2477091 () Bool)

(declare-fun e!2477088 () Bool)

(assert (=> b!3995565 (= e!2477091 e!2477088)))

(declare-fun res!1622428 () Bool)

(assert (=> b!3995565 (=> res!1622428 e!2477088)))

(declare-fun lt!1410443 () List!42856)

(assert (=> b!3995565 (= res!1622428 (not (= lt!1410443 lt!1410462)))))

(declare-fun lt!1410453 () List!42856)

(assert (=> b!3995565 (= lt!1410443 (++!11172 lt!1410432 lt!1410453))))

(assert (=> b!3995565 (= lt!1410453 (getSuffix!2288 lt!1410462 lt!1410432))))

(assert (=> b!3995565 e!2477100))

(declare-fun res!1622405 () Bool)

(assert (=> b!3995565 (=> (not res!1622405) (not e!2477100))))

(assert (=> b!3995565 (= res!1622405 (isPrefix!3857 lt!1410462 lt!1410462))))

(declare-fun lt!1410481 () Unit!61593)

(declare-fun lemmaIsPrefixRefl!2449 (List!42856 List!42856) Unit!61593)

(assert (=> b!3995565 (= lt!1410481 (lemmaIsPrefixRefl!2449 lt!1410462 lt!1410462))))

(declare-fun b!3995566 () Bool)

(declare-fun e!2477097 () Bool)

(assert (=> b!3995566 (= e!2477097 e!2477094)))

(declare-fun res!1622424 () Bool)

(assert (=> b!3995566 (=> (not res!1622424) (not e!2477094))))

(declare-fun lt!1410461 () Option!9184)

(declare-fun maxPrefix!3657 (LexerInterface!6359 List!42858 List!42856) Option!9184)

(assert (=> b!3995566 (= res!1622424 (= (maxPrefix!3657 thiss!21717 rules!2999 lt!1410462) lt!1410461))))

(declare-fun lt!1410428 () tuple2!41928)

(assert (=> b!3995566 (= lt!1410461 (Some!9183 lt!1410428))))

(assert (=> b!3995566 (= lt!1410428 (tuple2!41929 token!484 suffixResult!105))))

(assert (=> b!3995566 (= lt!1410462 (++!11172 prefix!494 suffix!1299))))

(declare-fun b!3995567 () Bool)

(declare-fun e!2477099 () Bool)

(declare-fun tp_is_empty!20321 () Bool)

(declare-fun tp!1216451 () Bool)

(assert (=> b!3995567 (= e!2477099 (and tp_is_empty!20321 tp!1216451))))

(declare-fun e!2477112 () Bool)

(assert (=> b!3995568 (= e!2477112 (and tp!1216445 tp!1216453))))

(declare-fun b!3995569 () Bool)

(declare-fun e!2477101 () Unit!61593)

(declare-fun Unit!61596 () Unit!61593)

(assert (=> b!3995569 (= e!2477101 Unit!61596)))

(declare-fun lt!1410448 () Unit!61593)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!266 (LexerInterface!6359 List!42858 Rule!13340 List!42856 List!42856 Rule!13340) Unit!61593)

(assert (=> b!3995569 (= lt!1410448 (lemmaMaxPrefNoSmallerRuleMatches!266 thiss!21717 rules!2999 (rule!9796 token!484) lt!1410432 lt!1410462 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(declare-fun res!1622408 () Bool)

(declare-fun matchR!5652 (Regex!11675 List!42856) Bool)

(assert (=> b!3995569 (= res!1622408 (not (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410432)))))

(declare-fun e!2477108 () Bool)

(assert (=> b!3995569 (=> (not res!1622408) (not e!2477108))))

(assert (=> b!3995569 e!2477108))

(declare-fun b!3995570 () Bool)

(declare-fun e!2477098 () Bool)

(assert (=> b!3995570 (= e!2477098 e!2477091)))

(declare-fun res!1622412 () Bool)

(assert (=> b!3995570 (=> res!1622412 e!2477091)))

(assert (=> b!3995570 (= res!1622412 (not (matchR!5652 (regex!6770 (rule!9796 token!484)) lt!1410432)))))

(assert (=> b!3995570 (isPrefix!3857 lt!1410432 lt!1410458)))

(declare-fun lt!1410422 () Unit!61593)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!690 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> b!3995570 (= lt!1410422 (lemmaPrefixStaysPrefixWhenAddingToSuffix!690 lt!1410432 prefix!494 newSuffix!27))))

(declare-fun lt!1410451 () Unit!61593)

(assert (=> b!3995570 (= lt!1410451 (lemmaPrefixStaysPrefixWhenAddingToSuffix!690 lt!1410432 prefix!494 suffix!1299))))

(declare-fun b!3995571 () Bool)

(declare-fun e!2477078 () Bool)

(assert (=> b!3995571 (= e!2477078 e!2477080)))

(declare-fun res!1622418 () Bool)

(assert (=> b!3995571 (=> res!1622418 e!2477080)))

(declare-fun lt!1410465 () Option!9184)

(assert (=> b!3995571 (= res!1622418 (not (= lt!1410465 (Some!9183 (v!39543 lt!1410435)))))))

(declare-fun newSuffixResult!27 () List!42856)

(assert (=> b!3995571 (isPrefix!3857 lt!1410460 (++!11172 lt!1410460 newSuffixResult!27))))

(declare-fun lt!1410464 () Unit!61593)

(assert (=> b!3995571 (= lt!1410464 (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410460 newSuffixResult!27))))

(assert (=> b!3995571 (isPrefix!3857 lt!1410460 lt!1410430)))

(assert (=> b!3995571 (= lt!1410430 (++!11172 lt!1410460 (_2!24098 (v!39543 lt!1410435))))))

(declare-fun lt!1410450 () Unit!61593)

(assert (=> b!3995571 (= lt!1410450 (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410460 (_2!24098 (v!39543 lt!1410435))))))

(declare-fun lt!1410467 () Int)

(declare-fun lt!1410438 () TokenValue!7000)

(assert (=> b!3995571 (= lt!1410465 (Some!9183 (tuple2!41929 (Token!12679 lt!1410438 (rule!9796 (_1!24098 (v!39543 lt!1410435))) lt!1410467 lt!1410460) (_2!24098 (v!39543 lt!1410435)))))))

(declare-fun maxPrefixOneRule!2691 (LexerInterface!6359 Rule!13340 List!42856) Option!9184)

(assert (=> b!3995571 (= lt!1410465 (maxPrefixOneRule!2691 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))) lt!1410458))))

(assert (=> b!3995571 (= lt!1410467 (size!31959 lt!1410460))))

(declare-fun apply!9981 (TokenValueInjection!13428 BalanceConc!25556) TokenValue!7000)

(declare-fun seqFromList!5009 (List!42856) BalanceConc!25556)

(assert (=> b!3995571 (= lt!1410438 (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (seqFromList!5009 lt!1410460)))))

(declare-fun lt!1410420 () Unit!61593)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1513 (LexerInterface!6359 List!42858 List!42856 List!42856 List!42856 Rule!13340) Unit!61593)

(assert (=> b!3995571 (= lt!1410420 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1513 thiss!21717 rules!2999 lt!1410460 lt!1410458 (_2!24098 (v!39543 lt!1410435)) (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> b!3995571 (= lt!1410460 (list!15868 (charsOf!4586 (_1!24098 (v!39543 lt!1410435)))))))

(declare-fun lt!1410455 () Unit!61593)

(assert (=> b!3995571 (= lt!1410455 (lemmaInv!985 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(assert (=> b!3995571 (ruleValid!2702 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))

(declare-fun lt!1410440 () Unit!61593)

(assert (=> b!3995571 (= lt!1410440 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1776 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))) rules!2999))))

(declare-fun lt!1410424 () Unit!61593)

(declare-fun lemmaCharactersSize!1365 (Token!12678) Unit!61593)

(assert (=> b!3995571 (= lt!1410424 (lemmaCharactersSize!1365 token!484))))

(declare-fun lt!1410469 () Unit!61593)

(assert (=> b!3995571 (= lt!1410469 (lemmaCharactersSize!1365 (_1!24098 (v!39543 lt!1410435))))))

(declare-fun b!3995572 () Bool)

(declare-fun res!1622425 () Bool)

(assert (=> b!3995572 (=> (not res!1622425) (not e!2477100))))

(assert (=> b!3995572 (= res!1622425 (= (size!31958 token!484) (size!31959 (originalCharacters!7370 token!484))))))

(declare-fun b!3995573 () Bool)

(assert (=> b!3995573 (= e!2477110 e!2477106)))

(declare-fun res!1622427 () Bool)

(assert (=> b!3995573 (=> res!1622427 e!2477106)))

(assert (=> b!3995573 (= res!1622427 (not (= lt!1410425 lt!1410467)))))

(declare-fun lt!1410471 () Unit!61593)

(assert (=> b!3995573 (= lt!1410471 e!2477114)))

(declare-fun c!691319 () Bool)

(assert (=> b!3995573 (= c!691319 (< lt!1410467 lt!1410425))))

(declare-fun lt!1410434 () Unit!61593)

(declare-fun e!2477085 () Unit!61593)

(assert (=> b!3995573 (= lt!1410434 e!2477085)))

(declare-fun c!691318 () Bool)

(assert (=> b!3995573 (= c!691318 (> lt!1410467 lt!1410425))))

(assert (=> b!3995573 (= (_2!24098 (v!39543 lt!1410435)) lt!1410427)))

(declare-fun lt!1410423 () Unit!61593)

(declare-fun lemmaSamePrefixThenSameSuffix!2044 (List!42856 List!42856 List!42856 List!42856 List!42856) Unit!61593)

(assert (=> b!3995573 (= lt!1410423 (lemmaSamePrefixThenSameSuffix!2044 lt!1410460 (_2!24098 (v!39543 lt!1410435)) lt!1410460 lt!1410427 lt!1410458))))

(assert (=> b!3995573 (isPrefix!3857 lt!1410460 lt!1410447)))

(declare-fun lt!1410442 () Unit!61593)

(assert (=> b!3995573 (= lt!1410442 (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410460 lt!1410427))))

(declare-fun b!3995574 () Bool)

(declare-fun e!2477105 () Bool)

(declare-fun tp!1216450 () Bool)

(assert (=> b!3995574 (= e!2477105 (and tp_is_empty!20321 tp!1216450))))

(declare-fun b!3995575 () Bool)

(declare-fun Unit!61597 () Unit!61593)

(assert (=> b!3995575 (= e!2477085 Unit!61597)))

(declare-fun lt!1410480 () Unit!61593)

(assert (=> b!3995575 (= lt!1410480 (lemmaMaxPrefixOutputsMaxPrefix!424 thiss!21717 rules!2999 (rule!9796 token!484) lt!1410432 lt!1410462 lt!1410460 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(declare-fun res!1622401 () Bool)

(assert (=> b!3995575 (= res!1622401 (not (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410460)))))

(declare-fun e!2477096 () Bool)

(assert (=> b!3995575 (=> (not res!1622401) (not e!2477096))))

(assert (=> b!3995575 e!2477096))

(declare-fun b!3995576 () Bool)

(assert (=> b!3995576 (= e!2477107 e!2477097)))

(declare-fun res!1622426 () Bool)

(assert (=> b!3995576 (=> (not res!1622426) (not e!2477097))))

(declare-fun lt!1410475 () List!42856)

(assert (=> b!3995576 (= res!1622426 (= lt!1410475 lt!1410458))))

(assert (=> b!3995576 (= lt!1410458 (++!11172 prefix!494 newSuffix!27))))

(assert (=> b!3995576 (= lt!1410475 (++!11172 lt!1410432 newSuffixResult!27))))

(declare-fun b!3995577 () Bool)

(assert (=> b!3995577 (= e!2477106 e!2477104)))

(declare-fun res!1622414 () Bool)

(assert (=> b!3995577 (=> res!1622414 e!2477104)))

(declare-fun lt!1410456 () Int)

(declare-fun lt!1410479 () Int)

(assert (=> b!3995577 (= res!1622414 (<= lt!1410456 lt!1410479))))

(declare-fun lt!1410470 () Unit!61593)

(assert (=> b!3995577 (= lt!1410470 e!2477101)))

(declare-fun c!691317 () Bool)

(assert (=> b!3995577 (= c!691317 (< lt!1410456 lt!1410479))))

(declare-fun getIndex!540 (List!42858 Rule!13340) Int)

(assert (=> b!3995577 (= lt!1410479 (getIndex!540 rules!2999 (rule!9796 token!484)))))

(assert (=> b!3995577 (= lt!1410456 (getIndex!540 rules!2999 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> b!3995577 (= (_2!24098 (v!39543 lt!1410435)) newSuffixResult!27)))

(declare-fun lt!1410433 () Unit!61593)

(assert (=> b!3995577 (= lt!1410433 (lemmaSamePrefixThenSameSuffix!2044 lt!1410460 (_2!24098 (v!39543 lt!1410435)) lt!1410432 newSuffixResult!27 lt!1410458))))

(assert (=> b!3995577 (= lt!1410460 lt!1410432)))

(declare-fun lt!1410429 () Unit!61593)

(declare-fun lemmaIsPrefixSameLengthThenSameList!879 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> b!3995577 (= lt!1410429 (lemmaIsPrefixSameLengthThenSameList!879 lt!1410460 lt!1410432 lt!1410458))))

(declare-fun b!3995578 () Bool)

(assert (=> b!3995578 (= e!2477096 false)))

(declare-fun b!3995579 () Bool)

(declare-fun e!2477109 () Bool)

(declare-fun tp!1216454 () Bool)

(assert (=> b!3995579 (= e!2477109 (and tp_is_empty!20321 tp!1216454))))

(declare-fun b!3995580 () Bool)

(assert (=> b!3995580 (= e!2477077 e!2477103)))

(declare-fun res!1622421 () Bool)

(assert (=> b!3995580 (=> res!1622421 e!2477103)))

(assert (=> b!3995580 (= res!1622421 (not (= lt!1410452 prefix!494)))))

(assert (=> b!3995580 (= lt!1410452 (++!11172 lt!1410432 lt!1410476))))

(assert (=> b!3995580 (= lt!1410476 (getSuffix!2288 prefix!494 lt!1410432))))

(assert (=> b!3995580 (isPrefix!3857 lt!1410432 prefix!494)))

(declare-fun lt!1410449 () Unit!61593)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!435 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> b!3995580 (= lt!1410449 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!435 prefix!494 lt!1410432 lt!1410462))))

(declare-fun b!3995581 () Bool)

(assert (=> b!3995581 (= e!2477083 e!2477081)))

(declare-fun res!1622417 () Bool)

(assert (=> b!3995581 (=> res!1622417 e!2477081)))

(assert (=> b!3995581 (= res!1622417 (not (isPrefix!3857 lt!1410460 lt!1410462)))))

(assert (=> b!3995581 (isPrefix!3857 lt!1410460 lt!1410468)))

(declare-fun lt!1410454 () Unit!61593)

(assert (=> b!3995581 (= lt!1410454 (lemmaPrefixStaysPrefixWhenAddingToSuffix!690 lt!1410460 lt!1410458 lt!1410439))))

(declare-fun b!3995582 () Bool)

(declare-fun tp!1216442 () Bool)

(declare-fun e!2477089 () Bool)

(declare-fun e!2477090 () Bool)

(declare-fun inv!21 (TokenValue!7000) Bool)

(assert (=> b!3995582 (= e!2477089 (and (inv!21 (value!213579 token!484)) e!2477090 tp!1216442))))

(declare-fun b!3995583 () Bool)

(declare-fun e!2477079 () Bool)

(declare-fun tp!1216448 () Bool)

(assert (=> b!3995583 (= e!2477079 (and tp_is_empty!20321 tp!1216448))))

(declare-fun b!3995584 () Bool)

(assert (=> b!3995584 (= e!2477088 e!2477078)))

(declare-fun res!1622403 () Bool)

(assert (=> b!3995584 (=> res!1622403 e!2477078)))

(get-info :version)

(assert (=> b!3995584 (= res!1622403 (not ((_ is Some!9183) lt!1410435)))))

(assert (=> b!3995584 (= lt!1410435 (maxPrefix!3657 thiss!21717 rules!2999 lt!1410458))))

(declare-fun lt!1410446 () Token!12678)

(assert (=> b!3995584 (and (= suffixResult!105 lt!1410453) (= lt!1410428 (tuple2!41929 lt!1410446 lt!1410453)))))

(declare-fun lt!1410477 () Unit!61593)

(assert (=> b!3995584 (= lt!1410477 (lemmaSamePrefixThenSameSuffix!2044 lt!1410432 suffixResult!105 lt!1410432 lt!1410453 lt!1410462))))

(assert (=> b!3995584 (isPrefix!3857 lt!1410432 lt!1410443)))

(declare-fun lt!1410441 () Unit!61593)

(assert (=> b!3995584 (= lt!1410441 (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410432 lt!1410453))))

(declare-fun res!1622406 () Bool)

(assert (=> start!376064 (=> (not res!1622406) (not e!2477093))))

(assert (=> start!376064 (= res!1622406 ((_ is Lexer!6357) thiss!21717))))

(assert (=> start!376064 e!2477093))

(assert (=> start!376064 e!2477109))

(declare-fun inv!57074 (Token!12678) Bool)

(assert (=> start!376064 (and (inv!57074 token!484) e!2477089)))

(assert (=> start!376064 e!2477105))

(assert (=> start!376064 e!2477079))

(assert (=> start!376064 e!2477099))

(assert (=> start!376064 true))

(declare-fun e!2477095 () Bool)

(assert (=> start!376064 e!2477095))

(declare-fun e!2477092 () Bool)

(assert (=> start!376064 e!2477092))

(declare-fun b!3995585 () Bool)

(declare-fun tp!1216443 () Bool)

(assert (=> b!3995585 (= e!2477092 (and tp_is_empty!20321 tp!1216443))))

(declare-fun b!3995586 () Bool)

(declare-fun res!1622402 () Bool)

(assert (=> b!3995586 (=> (not res!1622402) (not e!2477093))))

(declare-fun rulesInvariant!5702 (LexerInterface!6359 List!42858) Bool)

(assert (=> b!3995586 (= res!1622402 (rulesInvariant!5702 thiss!21717 rules!2999))))

(declare-fun b!3995587 () Bool)

(declare-fun res!1622416 () Bool)

(assert (=> b!3995587 (=> (not res!1622416) (not e!2477100))))

(declare-fun lt!1410437 () TokenValue!7000)

(assert (=> b!3995587 (= res!1622416 (= (value!213579 token!484) lt!1410437))))

(declare-fun e!2477084 () Bool)

(declare-fun b!3995588 () Bool)

(declare-fun tp!1216447 () Bool)

(declare-fun inv!57071 (String!48717) Bool)

(declare-fun inv!57075 (TokenValueInjection!13428) Bool)

(assert (=> b!3995588 (= e!2477084 (and tp!1216447 (inv!57071 (tag!7630 (h!48154 rules!2999))) (inv!57075 (transformation!6770 (h!48154 rules!2999))) e!2477112))))

(declare-fun b!3995589 () Bool)

(declare-fun res!1622404 () Bool)

(assert (=> b!3995589 (=> (not res!1622404) (not e!2477093))))

(assert (=> b!3995589 (= res!1622404 (>= (size!31959 suffix!1299) (size!31959 newSuffix!27)))))

(declare-fun e!2477087 () Bool)

(assert (=> b!3995590 (= e!2477087 (and tp!1216446 tp!1216452))))

(declare-fun b!3995591 () Bool)

(declare-fun Unit!61598 () Unit!61593)

(assert (=> b!3995591 (= e!2477101 Unit!61598)))

(declare-fun b!3995592 () Bool)

(declare-fun tp!1216449 () Bool)

(assert (=> b!3995592 (= e!2477090 (and tp!1216449 (inv!57071 (tag!7630 (rule!9796 token!484))) (inv!57075 (transformation!6770 (rule!9796 token!484))) e!2477087))))

(declare-fun b!3995593 () Bool)

(declare-fun Unit!61599 () Unit!61593)

(assert (=> b!3995593 (= e!2477114 Unit!61599)))

(declare-fun b!3995594 () Bool)

(declare-fun res!1622415 () Bool)

(assert (=> b!3995594 (=> (not res!1622415) (not e!2477093))))

(declare-fun isEmpty!25540 (List!42858) Bool)

(assert (=> b!3995594 (= res!1622415 (not (isEmpty!25540 rules!2999)))))

(declare-fun b!3995595 () Bool)

(assert (=> b!3995595 (= e!2477108 false)))

(declare-fun b!3995596 () Bool)

(declare-fun tp!1216444 () Bool)

(assert (=> b!3995596 (= e!2477095 (and e!2477084 tp!1216444))))

(declare-fun b!3995597 () Bool)

(assert (=> b!3995597 (= e!2477076 e!2477098)))

(declare-fun res!1622411 () Bool)

(assert (=> b!3995597 (=> res!1622411 e!2477098)))

(declare-fun lt!1410417 () Option!9184)

(assert (=> b!3995597 (= res!1622411 (not (= lt!1410417 lt!1410461)))))

(assert (=> b!3995597 (= lt!1410417 (Some!9183 (tuple2!41929 lt!1410446 suffixResult!105)))))

(assert (=> b!3995597 (= lt!1410417 (maxPrefixOneRule!2691 thiss!21717 (rule!9796 token!484) lt!1410462))))

(assert (=> b!3995597 (= lt!1410446 (Token!12679 lt!1410437 (rule!9796 token!484) lt!1410425 lt!1410432))))

(assert (=> b!3995597 (= lt!1410437 (apply!9981 (transformation!6770 (rule!9796 token!484)) (seqFromList!5009 lt!1410432)))))

(declare-fun lt!1410478 () Unit!61593)

(assert (=> b!3995597 (= lt!1410478 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1513 thiss!21717 rules!2999 lt!1410432 lt!1410462 suffixResult!105 (rule!9796 token!484)))))

(assert (=> b!3995597 (= lt!1410473 suffixResult!105)))

(declare-fun lt!1410474 () Unit!61593)

(assert (=> b!3995597 (= lt!1410474 (lemmaSamePrefixThenSameSuffix!2044 lt!1410432 lt!1410473 lt!1410432 suffixResult!105 lt!1410462))))

(assert (=> b!3995597 (isPrefix!3857 lt!1410432 lt!1410436)))

(declare-fun lt!1410426 () Unit!61593)

(assert (=> b!3995597 (= lt!1410426 (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410432 lt!1410473))))

(declare-fun b!3995598 () Bool)

(declare-fun Unit!61600 () Unit!61593)

(assert (=> b!3995598 (= e!2477085 Unit!61600)))

(assert (= (and start!376064 res!1622406) b!3995594))

(assert (= (and b!3995594 res!1622415) b!3995586))

(assert (= (and b!3995586 res!1622402) b!3995589))

(assert (= (and b!3995589 res!1622404) b!3995560))

(assert (= (and b!3995560 res!1622429) b!3995564))

(assert (= (and b!3995564 res!1622413) b!3995576))

(assert (= (and b!3995576 res!1622426) b!3995566))

(assert (= (and b!3995566 res!1622424) b!3995556))

(assert (= (and b!3995556 (not res!1622420)) b!3995555))

(assert (= (and b!3995555 (not res!1622430)) b!3995580))

(assert (= (and b!3995580 (not res!1622421)) b!3995554))

(assert (= (and b!3995554 (not res!1622422)) b!3995597))

(assert (= (and b!3995597 (not res!1622411)) b!3995570))

(assert (= (and b!3995570 (not res!1622412)) b!3995565))

(assert (= (and b!3995565 res!1622405) b!3995587))

(assert (= (and b!3995587 res!1622416) b!3995572))

(assert (= (and b!3995572 res!1622425) b!3995562))

(assert (= (and b!3995565 (not res!1622428)) b!3995584))

(assert (= (and b!3995584 (not res!1622403)) b!3995571))

(assert (= (and b!3995571 (not res!1622418)) b!3995561))

(assert (= (and b!3995561 (not res!1622410)) b!3995563))

(assert (= (and b!3995563 (not res!1622419)) b!3995581))

(assert (= (and b!3995581 (not res!1622417)) b!3995552))

(assert (= (and b!3995552 (not res!1622423)) b!3995559))

(assert (= (and b!3995559 (not res!1622409)) b!3995573))

(assert (= (and b!3995573 c!691318) b!3995575))

(assert (= (and b!3995573 (not c!691318)) b!3995598))

(assert (= (and b!3995575 res!1622401) b!3995578))

(assert (= (and b!3995573 c!691319) b!3995558))

(assert (= (and b!3995573 (not c!691319)) b!3995593))

(assert (= (and b!3995573 (not res!1622427)) b!3995557))

(assert (= (and b!3995557 (not res!1622407)) b!3995577))

(assert (= (and b!3995577 c!691317) b!3995569))

(assert (= (and b!3995577 (not c!691317)) b!3995591))

(assert (= (and b!3995569 res!1622408) b!3995595))

(assert (= (and b!3995577 (not res!1622414)) b!3995553))

(assert (= (and start!376064 ((_ is Cons!42732) prefix!494)) b!3995579))

(assert (= b!3995592 b!3995590))

(assert (= b!3995582 b!3995592))

(assert (= start!376064 b!3995582))

(assert (= (and start!376064 ((_ is Cons!42732) suffixResult!105)) b!3995574))

(assert (= (and start!376064 ((_ is Cons!42732) suffix!1299)) b!3995583))

(assert (= (and start!376064 ((_ is Cons!42732) newSuffix!27)) b!3995567))

(assert (= b!3995588 b!3995568))

(assert (= b!3995596 b!3995588))

(assert (= (and start!376064 ((_ is Cons!42734) rules!2999)) b!3995596))

(assert (= (and start!376064 ((_ is Cons!42732) newSuffixResult!27)) b!3995585))

(declare-fun m!4575977 () Bool)

(assert (=> b!3995560 m!4575977))

(declare-fun m!4575979 () Bool)

(assert (=> b!3995565 m!4575979))

(declare-fun m!4575981 () Bool)

(assert (=> b!3995565 m!4575981))

(declare-fun m!4575983 () Bool)

(assert (=> b!3995565 m!4575983))

(declare-fun m!4575985 () Bool)

(assert (=> b!3995565 m!4575985))

(declare-fun m!4575987 () Bool)

(assert (=> b!3995581 m!4575987))

(declare-fun m!4575989 () Bool)

(assert (=> b!3995581 m!4575989))

(declare-fun m!4575991 () Bool)

(assert (=> b!3995581 m!4575991))

(declare-fun m!4575993 () Bool)

(assert (=> b!3995582 m!4575993))

(declare-fun m!4575995 () Bool)

(assert (=> b!3995594 m!4575995))

(declare-fun m!4575997 () Bool)

(assert (=> b!3995572 m!4575997))

(declare-fun m!4575999 () Bool)

(assert (=> start!376064 m!4575999))

(declare-fun m!4576001 () Bool)

(assert (=> b!3995592 m!4576001))

(declare-fun m!4576003 () Bool)

(assert (=> b!3995592 m!4576003))

(declare-fun m!4576005 () Bool)

(assert (=> b!3995556 m!4576005))

(declare-fun m!4576007 () Bool)

(assert (=> b!3995556 m!4576007))

(declare-fun m!4576009 () Bool)

(assert (=> b!3995556 m!4576009))

(declare-fun m!4576011 () Bool)

(assert (=> b!3995556 m!4576011))

(declare-fun m!4576013 () Bool)

(assert (=> b!3995589 m!4576013))

(declare-fun m!4576015 () Bool)

(assert (=> b!3995589 m!4576015))

(declare-fun m!4576017 () Bool)

(assert (=> b!3995575 m!4576017))

(declare-fun m!4576019 () Bool)

(assert (=> b!3995575 m!4576019))

(declare-fun m!4576021 () Bool)

(assert (=> b!3995563 m!4576021))

(declare-fun m!4576023 () Bool)

(assert (=> b!3995563 m!4576023))

(declare-fun m!4576025 () Bool)

(assert (=> b!3995563 m!4576025))

(declare-fun m!4576027 () Bool)

(assert (=> b!3995586 m!4576027))

(declare-fun m!4576029 () Bool)

(assert (=> b!3995571 m!4576029))

(declare-fun m!4576031 () Bool)

(assert (=> b!3995571 m!4576031))

(declare-fun m!4576033 () Bool)

(assert (=> b!3995571 m!4576033))

(declare-fun m!4576035 () Bool)

(assert (=> b!3995571 m!4576035))

(declare-fun m!4576037 () Bool)

(assert (=> b!3995571 m!4576037))

(declare-fun m!4576039 () Bool)

(assert (=> b!3995571 m!4576039))

(declare-fun m!4576041 () Bool)

(assert (=> b!3995571 m!4576041))

(declare-fun m!4576043 () Bool)

(assert (=> b!3995571 m!4576043))

(declare-fun m!4576045 () Bool)

(assert (=> b!3995571 m!4576045))

(declare-fun m!4576047 () Bool)

(assert (=> b!3995571 m!4576047))

(declare-fun m!4576049 () Bool)

(assert (=> b!3995571 m!4576049))

(declare-fun m!4576051 () Bool)

(assert (=> b!3995571 m!4576051))

(declare-fun m!4576053 () Bool)

(assert (=> b!3995571 m!4576053))

(declare-fun m!4576055 () Bool)

(assert (=> b!3995571 m!4576055))

(assert (=> b!3995571 m!4576041))

(declare-fun m!4576057 () Bool)

(assert (=> b!3995571 m!4576057))

(assert (=> b!3995571 m!4576049))

(assert (=> b!3995571 m!4576035))

(declare-fun m!4576059 () Bool)

(assert (=> b!3995571 m!4576059))

(declare-fun m!4576061 () Bool)

(assert (=> b!3995571 m!4576061))

(declare-fun m!4576063 () Bool)

(assert (=> b!3995571 m!4576063))

(declare-fun m!4576065 () Bool)

(assert (=> b!3995558 m!4576065))

(declare-fun m!4576067 () Bool)

(assert (=> b!3995580 m!4576067))

(declare-fun m!4576069 () Bool)

(assert (=> b!3995580 m!4576069))

(declare-fun m!4576071 () Bool)

(assert (=> b!3995580 m!4576071))

(declare-fun m!4576073 () Bool)

(assert (=> b!3995580 m!4576073))

(declare-fun m!4576075 () Bool)

(assert (=> b!3995569 m!4576075))

(declare-fun m!4576077 () Bool)

(assert (=> b!3995569 m!4576077))

(declare-fun m!4576079 () Bool)

(assert (=> b!3995553 m!4576079))

(declare-fun m!4576081 () Bool)

(assert (=> b!3995566 m!4576081))

(declare-fun m!4576083 () Bool)

(assert (=> b!3995566 m!4576083))

(declare-fun m!4576085 () Bool)

(assert (=> b!3995554 m!4576085))

(declare-fun m!4576087 () Bool)

(assert (=> b!3995554 m!4576087))

(declare-fun m!4576089 () Bool)

(assert (=> b!3995554 m!4576089))

(declare-fun m!4576091 () Bool)

(assert (=> b!3995554 m!4576091))

(declare-fun m!4576093 () Bool)

(assert (=> b!3995564 m!4576093))

(declare-fun m!4576095 () Bool)

(assert (=> b!3995564 m!4576095))

(declare-fun m!4576097 () Bool)

(assert (=> b!3995564 m!4576097))

(assert (=> b!3995564 m!4576097))

(declare-fun m!4576099 () Bool)

(assert (=> b!3995564 m!4576099))

(declare-fun m!4576101 () Bool)

(assert (=> b!3995573 m!4576101))

(declare-fun m!4576103 () Bool)

(assert (=> b!3995573 m!4576103))

(declare-fun m!4576105 () Bool)

(assert (=> b!3995573 m!4576105))

(declare-fun m!4576107 () Bool)

(assert (=> b!3995557 m!4576107))

(declare-fun m!4576109 () Bool)

(assert (=> b!3995570 m!4576109))

(declare-fun m!4576111 () Bool)

(assert (=> b!3995570 m!4576111))

(declare-fun m!4576113 () Bool)

(assert (=> b!3995570 m!4576113))

(declare-fun m!4576115 () Bool)

(assert (=> b!3995570 m!4576115))

(declare-fun m!4576117 () Bool)

(assert (=> b!3995584 m!4576117))

(declare-fun m!4576119 () Bool)

(assert (=> b!3995584 m!4576119))

(declare-fun m!4576121 () Bool)

(assert (=> b!3995584 m!4576121))

(declare-fun m!4576123 () Bool)

(assert (=> b!3995584 m!4576123))

(declare-fun m!4576125 () Bool)

(assert (=> b!3995559 m!4576125))

(declare-fun m!4576127 () Bool)

(assert (=> b!3995559 m!4576127))

(declare-fun m!4576129 () Bool)

(assert (=> b!3995588 m!4576129))

(declare-fun m!4576131 () Bool)

(assert (=> b!3995588 m!4576131))

(declare-fun m!4576133 () Bool)

(assert (=> b!3995576 m!4576133))

(declare-fun m!4576135 () Bool)

(assert (=> b!3995576 m!4576135))

(declare-fun m!4576137 () Bool)

(assert (=> b!3995577 m!4576137))

(declare-fun m!4576139 () Bool)

(assert (=> b!3995577 m!4576139))

(declare-fun m!4576141 () Bool)

(assert (=> b!3995577 m!4576141))

(declare-fun m!4576143 () Bool)

(assert (=> b!3995577 m!4576143))

(declare-fun m!4576145 () Bool)

(assert (=> b!3995561 m!4576145))

(declare-fun m!4576147 () Bool)

(assert (=> b!3995561 m!4576147))

(declare-fun m!4576149 () Bool)

(assert (=> b!3995555 m!4576149))

(declare-fun m!4576151 () Bool)

(assert (=> b!3995555 m!4576151))

(declare-fun m!4576153 () Bool)

(assert (=> b!3995555 m!4576153))

(declare-fun m!4576155 () Bool)

(assert (=> b!3995555 m!4576155))

(declare-fun m!4576157 () Bool)

(assert (=> b!3995555 m!4576157))

(declare-fun m!4576159 () Bool)

(assert (=> b!3995597 m!4576159))

(declare-fun m!4576161 () Bool)

(assert (=> b!3995597 m!4576161))

(declare-fun m!4576163 () Bool)

(assert (=> b!3995597 m!4576163))

(assert (=> b!3995597 m!4576161))

(declare-fun m!4576165 () Bool)

(assert (=> b!3995597 m!4576165))

(declare-fun m!4576167 () Bool)

(assert (=> b!3995597 m!4576167))

(declare-fun m!4576169 () Bool)

(assert (=> b!3995597 m!4576169))

(declare-fun m!4576171 () Bool)

(assert (=> b!3995597 m!4576171))

(check-sat (not b!3995596) (not b_next!111695) (not b!3995579) (not b!3995569) (not b!3995563) (not b!3995561) (not b!3995594) (not b!3995581) (not b!3995577) (not b!3995565) (not b!3995554) (not b!3995559) (not b!3995582) (not b!3995597) (not b!3995592) tp_is_empty!20321 (not b_next!111689) (not b!3995585) b_and!306895 (not b!3995571) (not b!3995574) (not b!3995567) (not b!3995573) (not b!3995560) (not b!3995556) (not b!3995580) (not b!3995564) (not b!3995588) (not b!3995558) (not b!3995589) (not start!376064) (not b!3995575) (not b!3995553) (not b!3995570) (not b!3995572) (not b!3995555) b_and!306901 (not b!3995583) (not b_next!111693) b_and!306899 (not b!3995586) b_and!306897 (not b!3995576) (not b_next!111691) (not b!3995584) (not b!3995566) (not b!3995557))
(check-sat (not b_next!111689) (not b_next!111695) b_and!306895 b_and!306901 (not b_next!111693) b_and!306899 b_and!306897 (not b_next!111691))
(get-model)

(declare-fun b!3995609 () Bool)

(declare-fun e!2477122 () Bool)

(declare-fun tail!6230 (List!42856) List!42856)

(assert (=> b!3995609 (= e!2477122 (isPrefix!3857 (tail!6230 lt!1410432) (tail!6230 lt!1410462)))))

(declare-fun b!3995610 () Bool)

(declare-fun e!2477121 () Bool)

(assert (=> b!3995610 (= e!2477121 (>= (size!31959 lt!1410462) (size!31959 lt!1410432)))))

(declare-fun b!3995607 () Bool)

(declare-fun e!2477123 () Bool)

(assert (=> b!3995607 (= e!2477123 e!2477122)))

(declare-fun res!1622445 () Bool)

(assert (=> b!3995607 (=> (not res!1622445) (not e!2477122))))

(assert (=> b!3995607 (= res!1622445 (not ((_ is Nil!42732) lt!1410462)))))

(declare-fun d!1182332 () Bool)

(assert (=> d!1182332 e!2477121))

(declare-fun res!1622444 () Bool)

(assert (=> d!1182332 (=> res!1622444 e!2477121)))

(declare-fun lt!1410484 () Bool)

(assert (=> d!1182332 (= res!1622444 (not lt!1410484))))

(assert (=> d!1182332 (= lt!1410484 e!2477123)))

(declare-fun res!1622446 () Bool)

(assert (=> d!1182332 (=> res!1622446 e!2477123)))

(assert (=> d!1182332 (= res!1622446 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182332 (= (isPrefix!3857 lt!1410432 lt!1410462) lt!1410484)))

(declare-fun b!3995608 () Bool)

(declare-fun res!1622443 () Bool)

(assert (=> b!3995608 (=> (not res!1622443) (not e!2477122))))

(declare-fun head!8498 (List!42856) C!23536)

(assert (=> b!3995608 (= res!1622443 (= (head!8498 lt!1410432) (head!8498 lt!1410462)))))

(assert (= (and d!1182332 (not res!1622446)) b!3995607))

(assert (= (and b!3995607 res!1622445) b!3995608))

(assert (= (and b!3995608 res!1622443) b!3995609))

(assert (= (and d!1182332 (not res!1622444)) b!3995610))

(declare-fun m!4576173 () Bool)

(assert (=> b!3995609 m!4576173))

(declare-fun m!4576175 () Bool)

(assert (=> b!3995609 m!4576175))

(assert (=> b!3995609 m!4576173))

(assert (=> b!3995609 m!4576175))

(declare-fun m!4576177 () Bool)

(assert (=> b!3995609 m!4576177))

(declare-fun m!4576179 () Bool)

(assert (=> b!3995610 m!4576179))

(assert (=> b!3995610 m!4576093))

(declare-fun m!4576181 () Bool)

(assert (=> b!3995608 m!4576181))

(declare-fun m!4576183 () Bool)

(assert (=> b!3995608 m!4576183))

(assert (=> b!3995555 d!1182332))

(declare-fun d!1182334 () Bool)

(assert (=> d!1182334 (isPrefix!3857 lt!1410432 (++!11172 lt!1410432 suffixResult!105))))

(declare-fun lt!1410487 () Unit!61593)

(declare-fun choose!24076 (List!42856 List!42856) Unit!61593)

(assert (=> d!1182334 (= lt!1410487 (choose!24076 lt!1410432 suffixResult!105))))

(assert (=> d!1182334 (= (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410432 suffixResult!105) lt!1410487)))

(declare-fun bs!588621 () Bool)

(assert (= bs!588621 d!1182334))

(assert (=> bs!588621 m!4576005))

(assert (=> bs!588621 m!4576005))

(declare-fun m!4576185 () Bool)

(assert (=> bs!588621 m!4576185))

(declare-fun m!4576187 () Bool)

(assert (=> bs!588621 m!4576187))

(assert (=> b!3995555 d!1182334))

(declare-fun b!3995613 () Bool)

(declare-fun e!2477125 () Bool)

(assert (=> b!3995613 (= e!2477125 (isPrefix!3857 (tail!6230 lt!1410432) (tail!6230 lt!1410421)))))

(declare-fun b!3995614 () Bool)

(declare-fun e!2477124 () Bool)

(assert (=> b!3995614 (= e!2477124 (>= (size!31959 lt!1410421) (size!31959 lt!1410432)))))

(declare-fun b!3995611 () Bool)

(declare-fun e!2477126 () Bool)

(assert (=> b!3995611 (= e!2477126 e!2477125)))

(declare-fun res!1622449 () Bool)

(assert (=> b!3995611 (=> (not res!1622449) (not e!2477125))))

(assert (=> b!3995611 (= res!1622449 (not ((_ is Nil!42732) lt!1410421)))))

(declare-fun d!1182336 () Bool)

(assert (=> d!1182336 e!2477124))

(declare-fun res!1622448 () Bool)

(assert (=> d!1182336 (=> res!1622448 e!2477124)))

(declare-fun lt!1410488 () Bool)

(assert (=> d!1182336 (= res!1622448 (not lt!1410488))))

(assert (=> d!1182336 (= lt!1410488 e!2477126)))

(declare-fun res!1622450 () Bool)

(assert (=> d!1182336 (=> res!1622450 e!2477126)))

(assert (=> d!1182336 (= res!1622450 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182336 (= (isPrefix!3857 lt!1410432 lt!1410421) lt!1410488)))

(declare-fun b!3995612 () Bool)

(declare-fun res!1622447 () Bool)

(assert (=> b!3995612 (=> (not res!1622447) (not e!2477125))))

(assert (=> b!3995612 (= res!1622447 (= (head!8498 lt!1410432) (head!8498 lt!1410421)))))

(assert (= (and d!1182336 (not res!1622450)) b!3995611))

(assert (= (and b!3995611 res!1622449) b!3995612))

(assert (= (and b!3995612 res!1622447) b!3995613))

(assert (= (and d!1182336 (not res!1622448)) b!3995614))

(assert (=> b!3995613 m!4576173))

(declare-fun m!4576189 () Bool)

(assert (=> b!3995613 m!4576189))

(assert (=> b!3995613 m!4576173))

(assert (=> b!3995613 m!4576189))

(declare-fun m!4576191 () Bool)

(assert (=> b!3995613 m!4576191))

(declare-fun m!4576193 () Bool)

(assert (=> b!3995614 m!4576193))

(assert (=> b!3995614 m!4576093))

(assert (=> b!3995612 m!4576181))

(declare-fun m!4576195 () Bool)

(assert (=> b!3995612 m!4576195))

(assert (=> b!3995555 d!1182336))

(declare-fun d!1182338 () Bool)

(assert (=> d!1182338 (isPrefix!3857 prefix!494 (++!11172 prefix!494 suffix!1299))))

(declare-fun lt!1410489 () Unit!61593)

(assert (=> d!1182338 (= lt!1410489 (choose!24076 prefix!494 suffix!1299))))

(assert (=> d!1182338 (= (lemmaConcatTwoListThenFirstIsPrefix!2700 prefix!494 suffix!1299) lt!1410489)))

(declare-fun bs!588622 () Bool)

(assert (= bs!588622 d!1182338))

(assert (=> bs!588622 m!4576083))

(assert (=> bs!588622 m!4576083))

(declare-fun m!4576197 () Bool)

(assert (=> bs!588622 m!4576197))

(declare-fun m!4576199 () Bool)

(assert (=> bs!588622 m!4576199))

(assert (=> b!3995555 d!1182338))

(declare-fun b!3995617 () Bool)

(declare-fun e!2477128 () Bool)

(assert (=> b!3995617 (= e!2477128 (isPrefix!3857 (tail!6230 prefix!494) (tail!6230 lt!1410462)))))

(declare-fun b!3995618 () Bool)

(declare-fun e!2477127 () Bool)

(assert (=> b!3995618 (= e!2477127 (>= (size!31959 lt!1410462) (size!31959 prefix!494)))))

(declare-fun b!3995615 () Bool)

(declare-fun e!2477129 () Bool)

(assert (=> b!3995615 (= e!2477129 e!2477128)))

(declare-fun res!1622453 () Bool)

(assert (=> b!3995615 (=> (not res!1622453) (not e!2477128))))

(assert (=> b!3995615 (= res!1622453 (not ((_ is Nil!42732) lt!1410462)))))

(declare-fun d!1182340 () Bool)

(assert (=> d!1182340 e!2477127))

(declare-fun res!1622452 () Bool)

(assert (=> d!1182340 (=> res!1622452 e!2477127)))

(declare-fun lt!1410490 () Bool)

(assert (=> d!1182340 (= res!1622452 (not lt!1410490))))

(assert (=> d!1182340 (= lt!1410490 e!2477129)))

(declare-fun res!1622454 () Bool)

(assert (=> d!1182340 (=> res!1622454 e!2477129)))

(assert (=> d!1182340 (= res!1622454 ((_ is Nil!42732) prefix!494))))

(assert (=> d!1182340 (= (isPrefix!3857 prefix!494 lt!1410462) lt!1410490)))

(declare-fun b!3995616 () Bool)

(declare-fun res!1622451 () Bool)

(assert (=> b!3995616 (=> (not res!1622451) (not e!2477128))))

(assert (=> b!3995616 (= res!1622451 (= (head!8498 prefix!494) (head!8498 lt!1410462)))))

(assert (= (and d!1182340 (not res!1622454)) b!3995615))

(assert (= (and b!3995615 res!1622453) b!3995616))

(assert (= (and b!3995616 res!1622451) b!3995617))

(assert (= (and d!1182340 (not res!1622452)) b!3995618))

(declare-fun m!4576201 () Bool)

(assert (=> b!3995617 m!4576201))

(assert (=> b!3995617 m!4576175))

(assert (=> b!3995617 m!4576201))

(assert (=> b!3995617 m!4576175))

(declare-fun m!4576203 () Bool)

(assert (=> b!3995617 m!4576203))

(assert (=> b!3995618 m!4576179))

(assert (=> b!3995618 m!4576095))

(declare-fun m!4576205 () Bool)

(assert (=> b!3995616 m!4576205))

(assert (=> b!3995616 m!4576183))

(assert (=> b!3995555 d!1182340))

(declare-fun b!3995629 () Bool)

(declare-fun res!1622459 () Bool)

(declare-fun e!2477134 () Bool)

(assert (=> b!3995629 (=> (not res!1622459) (not e!2477134))))

(declare-fun lt!1410493 () List!42856)

(assert (=> b!3995629 (= res!1622459 (= (size!31959 lt!1410493) (+ (size!31959 prefix!494) (size!31959 newSuffix!27))))))

(declare-fun b!3995630 () Bool)

(assert (=> b!3995630 (= e!2477134 (or (not (= newSuffix!27 Nil!42732)) (= lt!1410493 prefix!494)))))

(declare-fun b!3995627 () Bool)

(declare-fun e!2477135 () List!42856)

(assert (=> b!3995627 (= e!2477135 newSuffix!27)))

(declare-fun d!1182342 () Bool)

(assert (=> d!1182342 e!2477134))

(declare-fun res!1622460 () Bool)

(assert (=> d!1182342 (=> (not res!1622460) (not e!2477134))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6484 (List!42856) (InoxSet C!23536))

(assert (=> d!1182342 (= res!1622460 (= (content!6484 lt!1410493) ((_ map or) (content!6484 prefix!494) (content!6484 newSuffix!27))))))

(assert (=> d!1182342 (= lt!1410493 e!2477135)))

(declare-fun c!691324 () Bool)

(assert (=> d!1182342 (= c!691324 ((_ is Nil!42732) prefix!494))))

(assert (=> d!1182342 (= (++!11172 prefix!494 newSuffix!27) lt!1410493)))

(declare-fun b!3995628 () Bool)

(assert (=> b!3995628 (= e!2477135 (Cons!42732 (h!48152 prefix!494) (++!11172 (t!331991 prefix!494) newSuffix!27)))))

(assert (= (and d!1182342 c!691324) b!3995627))

(assert (= (and d!1182342 (not c!691324)) b!3995628))

(assert (= (and d!1182342 res!1622460) b!3995629))

(assert (= (and b!3995629 res!1622459) b!3995630))

(declare-fun m!4576207 () Bool)

(assert (=> b!3995629 m!4576207))

(assert (=> b!3995629 m!4576095))

(assert (=> b!3995629 m!4576015))

(declare-fun m!4576209 () Bool)

(assert (=> d!1182342 m!4576209))

(declare-fun m!4576211 () Bool)

(assert (=> d!1182342 m!4576211))

(declare-fun m!4576213 () Bool)

(assert (=> d!1182342 m!4576213))

(declare-fun m!4576215 () Bool)

(assert (=> b!3995628 m!4576215))

(assert (=> b!3995576 d!1182342))

(declare-fun b!3995633 () Bool)

(declare-fun res!1622461 () Bool)

(declare-fun e!2477136 () Bool)

(assert (=> b!3995633 (=> (not res!1622461) (not e!2477136))))

(declare-fun lt!1410494 () List!42856)

(assert (=> b!3995633 (= res!1622461 (= (size!31959 lt!1410494) (+ (size!31959 lt!1410432) (size!31959 newSuffixResult!27))))))

(declare-fun b!3995634 () Bool)

(assert (=> b!3995634 (= e!2477136 (or (not (= newSuffixResult!27 Nil!42732)) (= lt!1410494 lt!1410432)))))

(declare-fun b!3995631 () Bool)

(declare-fun e!2477137 () List!42856)

(assert (=> b!3995631 (= e!2477137 newSuffixResult!27)))

(declare-fun d!1182344 () Bool)

(assert (=> d!1182344 e!2477136))

(declare-fun res!1622462 () Bool)

(assert (=> d!1182344 (=> (not res!1622462) (not e!2477136))))

(assert (=> d!1182344 (= res!1622462 (= (content!6484 lt!1410494) ((_ map or) (content!6484 lt!1410432) (content!6484 newSuffixResult!27))))))

(assert (=> d!1182344 (= lt!1410494 e!2477137)))

(declare-fun c!691325 () Bool)

(assert (=> d!1182344 (= c!691325 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182344 (= (++!11172 lt!1410432 newSuffixResult!27) lt!1410494)))

(declare-fun b!3995632 () Bool)

(assert (=> b!3995632 (= e!2477137 (Cons!42732 (h!48152 lt!1410432) (++!11172 (t!331991 lt!1410432) newSuffixResult!27)))))

(assert (= (and d!1182344 c!691325) b!3995631))

(assert (= (and d!1182344 (not c!691325)) b!3995632))

(assert (= (and d!1182344 res!1622462) b!3995633))

(assert (= (and b!3995633 res!1622461) b!3995634))

(declare-fun m!4576217 () Bool)

(assert (=> b!3995633 m!4576217))

(assert (=> b!3995633 m!4576093))

(declare-fun m!4576219 () Bool)

(assert (=> b!3995633 m!4576219))

(declare-fun m!4576221 () Bool)

(assert (=> d!1182344 m!4576221))

(declare-fun m!4576223 () Bool)

(assert (=> d!1182344 m!4576223))

(declare-fun m!4576225 () Bool)

(assert (=> d!1182344 m!4576225))

(declare-fun m!4576227 () Bool)

(assert (=> b!3995632 m!4576227))

(assert (=> b!3995576 d!1182344))

(declare-fun b!3995646 () Bool)

(declare-fun e!2477143 () Int)

(assert (=> b!3995646 (= e!2477143 (- 1))))

(declare-fun b!3995643 () Bool)

(declare-fun e!2477144 () Int)

(assert (=> b!3995643 (= e!2477144 0)))

(declare-fun d!1182346 () Bool)

(declare-fun lt!1410497 () Int)

(assert (=> d!1182346 (>= lt!1410497 0)))

(assert (=> d!1182346 (= lt!1410497 e!2477144)))

(declare-fun c!691330 () Bool)

(assert (=> d!1182346 (= c!691330 (and ((_ is Cons!42734) rules!2999) (= (h!48154 rules!2999) (rule!9796 token!484))))))

(declare-fun contains!8502 (List!42858 Rule!13340) Bool)

(assert (=> d!1182346 (contains!8502 rules!2999 (rule!9796 token!484))))

(assert (=> d!1182346 (= (getIndex!540 rules!2999 (rule!9796 token!484)) lt!1410497)))

(declare-fun b!3995645 () Bool)

(assert (=> b!3995645 (= e!2477143 (+ 1 (getIndex!540 (t!331993 rules!2999) (rule!9796 token!484))))))

(declare-fun b!3995644 () Bool)

(assert (=> b!3995644 (= e!2477144 e!2477143)))

(declare-fun c!691331 () Bool)

(assert (=> b!3995644 (= c!691331 (and ((_ is Cons!42734) rules!2999) (not (= (h!48154 rules!2999) (rule!9796 token!484)))))))

(assert (= (and d!1182346 c!691330) b!3995643))

(assert (= (and d!1182346 (not c!691330)) b!3995644))

(assert (= (and b!3995644 c!691331) b!3995645))

(assert (= (and b!3995644 (not c!691331)) b!3995646))

(declare-fun m!4576229 () Bool)

(assert (=> d!1182346 m!4576229))

(declare-fun m!4576231 () Bool)

(assert (=> b!3995645 m!4576231))

(assert (=> b!3995577 d!1182346))

(declare-fun b!3995650 () Bool)

(declare-fun e!2477145 () Int)

(assert (=> b!3995650 (= e!2477145 (- 1))))

(declare-fun b!3995647 () Bool)

(declare-fun e!2477146 () Int)

(assert (=> b!3995647 (= e!2477146 0)))

(declare-fun d!1182348 () Bool)

(declare-fun lt!1410498 () Int)

(assert (=> d!1182348 (>= lt!1410498 0)))

(assert (=> d!1182348 (= lt!1410498 e!2477146)))

(declare-fun c!691332 () Bool)

(assert (=> d!1182348 (= c!691332 (and ((_ is Cons!42734) rules!2999) (= (h!48154 rules!2999) (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(assert (=> d!1182348 (contains!8502 rules!2999 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))

(assert (=> d!1182348 (= (getIndex!540 rules!2999 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410498)))

(declare-fun b!3995649 () Bool)

(assert (=> b!3995649 (= e!2477145 (+ 1 (getIndex!540 (t!331993 rules!2999) (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun b!3995648 () Bool)

(assert (=> b!3995648 (= e!2477146 e!2477145)))

(declare-fun c!691333 () Bool)

(assert (=> b!3995648 (= c!691333 (and ((_ is Cons!42734) rules!2999) (not (= (h!48154 rules!2999) (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(assert (= (and d!1182348 c!691332) b!3995647))

(assert (= (and d!1182348 (not c!691332)) b!3995648))

(assert (= (and b!3995648 c!691333) b!3995649))

(assert (= (and b!3995648 (not c!691333)) b!3995650))

(declare-fun m!4576233 () Bool)

(assert (=> d!1182348 m!4576233))

(declare-fun m!4576235 () Bool)

(assert (=> b!3995649 m!4576235))

(assert (=> b!3995577 d!1182348))

(declare-fun d!1182350 () Bool)

(assert (=> d!1182350 (= (_2!24098 (v!39543 lt!1410435)) newSuffixResult!27)))

(declare-fun lt!1410501 () Unit!61593)

(declare-fun choose!24077 (List!42856 List!42856 List!42856 List!42856 List!42856) Unit!61593)

(assert (=> d!1182350 (= lt!1410501 (choose!24077 lt!1410460 (_2!24098 (v!39543 lt!1410435)) lt!1410432 newSuffixResult!27 lt!1410458))))

(assert (=> d!1182350 (isPrefix!3857 lt!1410460 lt!1410458)))

(assert (=> d!1182350 (= (lemmaSamePrefixThenSameSuffix!2044 lt!1410460 (_2!24098 (v!39543 lt!1410435)) lt!1410432 newSuffixResult!27 lt!1410458) lt!1410501)))

(declare-fun bs!588623 () Bool)

(assert (= bs!588623 d!1182350))

(declare-fun m!4576237 () Bool)

(assert (=> bs!588623 m!4576237))

(assert (=> bs!588623 m!4576107))

(assert (=> b!3995577 d!1182350))

(declare-fun d!1182352 () Bool)

(assert (=> d!1182352 (= lt!1410460 lt!1410432)))

(declare-fun lt!1410504 () Unit!61593)

(declare-fun choose!24078 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> d!1182352 (= lt!1410504 (choose!24078 lt!1410460 lt!1410432 lt!1410458))))

(assert (=> d!1182352 (isPrefix!3857 lt!1410460 lt!1410458)))

(assert (=> d!1182352 (= (lemmaIsPrefixSameLengthThenSameList!879 lt!1410460 lt!1410432 lt!1410458) lt!1410504)))

(declare-fun bs!588624 () Bool)

(assert (= bs!588624 d!1182352))

(declare-fun m!4576239 () Bool)

(assert (=> bs!588624 m!4576239))

(assert (=> bs!588624 m!4576107))

(assert (=> b!3995577 d!1182352))

(declare-fun d!1182354 () Bool)

(assert (=> d!1182354 (not (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410460))))

(declare-fun lt!1410507 () Unit!61593)

(declare-fun choose!24079 (LexerInterface!6359 List!42858 Rule!13340 List!42856 List!42856 List!42856 Rule!13340) Unit!61593)

(assert (=> d!1182354 (= lt!1410507 (choose!24079 thiss!21717 rules!2999 (rule!9796 token!484) lt!1410432 lt!1410462 lt!1410460 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> d!1182354 (isPrefix!3857 lt!1410432 lt!1410462)))

(assert (=> d!1182354 (= (lemmaMaxPrefixOutputsMaxPrefix!424 thiss!21717 rules!2999 (rule!9796 token!484) lt!1410432 lt!1410462 lt!1410460 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410507)))

(declare-fun bs!588625 () Bool)

(assert (= bs!588625 d!1182354))

(assert (=> bs!588625 m!4576019))

(declare-fun m!4576241 () Bool)

(assert (=> bs!588625 m!4576241))

(assert (=> bs!588625 m!4576153))

(assert (=> b!3995575 d!1182354))

(declare-fun b!3995679 () Bool)

(declare-fun res!1622485 () Bool)

(declare-fun e!2477165 () Bool)

(assert (=> b!3995679 (=> (not res!1622485) (not e!2477165))))

(declare-fun isEmpty!25541 (List!42856) Bool)

(assert (=> b!3995679 (= res!1622485 (isEmpty!25541 (tail!6230 lt!1410460)))))

(declare-fun b!3995680 () Bool)

(assert (=> b!3995680 (= e!2477165 (= (head!8498 lt!1410460) (c!691321 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(declare-fun b!3995681 () Bool)

(declare-fun e!2477166 () Bool)

(declare-fun nullable!4097 (Regex!11675) Bool)

(assert (=> b!3995681 (= e!2477166 (nullable!4097 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun b!3995682 () Bool)

(declare-fun res!1622481 () Bool)

(declare-fun e!2477167 () Bool)

(assert (=> b!3995682 (=> res!1622481 e!2477167)))

(assert (=> b!3995682 (= res!1622481 e!2477165)))

(declare-fun res!1622484 () Bool)

(assert (=> b!3995682 (=> (not res!1622484) (not e!2477165))))

(declare-fun lt!1410510 () Bool)

(assert (=> b!3995682 (= res!1622484 lt!1410510)))

(declare-fun b!3995683 () Bool)

(declare-fun e!2477163 () Bool)

(assert (=> b!3995683 (= e!2477167 e!2477163)))

(declare-fun res!1622480 () Bool)

(assert (=> b!3995683 (=> (not res!1622480) (not e!2477163))))

(assert (=> b!3995683 (= res!1622480 (not lt!1410510))))

(declare-fun b!3995684 () Bool)

(declare-fun res!1622482 () Bool)

(declare-fun e!2477161 () Bool)

(assert (=> b!3995684 (=> res!1622482 e!2477161)))

(assert (=> b!3995684 (= res!1622482 (not (isEmpty!25541 (tail!6230 lt!1410460))))))

(declare-fun b!3995685 () Bool)

(assert (=> b!3995685 (= e!2477161 (not (= (head!8498 lt!1410460) (c!691321 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))))

(declare-fun b!3995686 () Bool)

(declare-fun e!2477162 () Bool)

(assert (=> b!3995686 (= e!2477162 (not lt!1410510))))

(declare-fun b!3995687 () Bool)

(declare-fun res!1622479 () Bool)

(assert (=> b!3995687 (=> (not res!1622479) (not e!2477165))))

(declare-fun call!285905 () Bool)

(assert (=> b!3995687 (= res!1622479 (not call!285905))))

(declare-fun b!3995688 () Bool)

(declare-fun e!2477164 () Bool)

(assert (=> b!3995688 (= e!2477164 e!2477162)))

(declare-fun c!691340 () Bool)

(assert (=> b!3995688 (= c!691340 ((_ is EmptyLang!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun d!1182356 () Bool)

(assert (=> d!1182356 e!2477164))

(declare-fun c!691342 () Bool)

(assert (=> d!1182356 (= c!691342 ((_ is EmptyExpr!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(assert (=> d!1182356 (= lt!1410510 e!2477166)))

(declare-fun c!691341 () Bool)

(assert (=> d!1182356 (= c!691341 (isEmpty!25541 lt!1410460))))

(assert (=> d!1182356 (validRegex!5298 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> d!1182356 (= (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410460) lt!1410510)))

(declare-fun b!3995689 () Bool)

(assert (=> b!3995689 (= e!2477164 (= lt!1410510 call!285905))))

(declare-fun b!3995690 () Bool)

(assert (=> b!3995690 (= e!2477163 e!2477161)))

(declare-fun res!1622483 () Bool)

(assert (=> b!3995690 (=> res!1622483 e!2477161)))

(assert (=> b!3995690 (= res!1622483 call!285905)))

(declare-fun b!3995691 () Bool)

(declare-fun derivativeStep!3508 (Regex!11675 C!23536) Regex!11675)

(assert (=> b!3995691 (= e!2477166 (matchR!5652 (derivativeStep!3508 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (head!8498 lt!1410460)) (tail!6230 lt!1410460)))))

(declare-fun bm!285900 () Bool)

(assert (=> bm!285900 (= call!285905 (isEmpty!25541 lt!1410460))))

(declare-fun b!3995692 () Bool)

(declare-fun res!1622486 () Bool)

(assert (=> b!3995692 (=> res!1622486 e!2477167)))

(assert (=> b!3995692 (= res!1622486 (not ((_ is ElementMatch!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(assert (=> b!3995692 (= e!2477162 e!2477167)))

(assert (= (and d!1182356 c!691341) b!3995681))

(assert (= (and d!1182356 (not c!691341)) b!3995691))

(assert (= (and d!1182356 c!691342) b!3995689))

(assert (= (and d!1182356 (not c!691342)) b!3995688))

(assert (= (and b!3995688 c!691340) b!3995686))

(assert (= (and b!3995688 (not c!691340)) b!3995692))

(assert (= (and b!3995692 (not res!1622486)) b!3995682))

(assert (= (and b!3995682 res!1622484) b!3995687))

(assert (= (and b!3995687 res!1622479) b!3995679))

(assert (= (and b!3995679 res!1622485) b!3995680))

(assert (= (and b!3995682 (not res!1622481)) b!3995683))

(assert (= (and b!3995683 res!1622480) b!3995690))

(assert (= (and b!3995690 (not res!1622483)) b!3995684))

(assert (= (and b!3995684 (not res!1622482)) b!3995685))

(assert (= (or b!3995689 b!3995687 b!3995690) bm!285900))

(declare-fun m!4576243 () Bool)

(assert (=> b!3995684 m!4576243))

(assert (=> b!3995684 m!4576243))

(declare-fun m!4576245 () Bool)

(assert (=> b!3995684 m!4576245))

(assert (=> b!3995679 m!4576243))

(assert (=> b!3995679 m!4576243))

(assert (=> b!3995679 m!4576245))

(declare-fun m!4576247 () Bool)

(assert (=> d!1182356 m!4576247))

(assert (=> d!1182356 m!4576079))

(declare-fun m!4576249 () Bool)

(assert (=> b!3995685 m!4576249))

(assert (=> b!3995691 m!4576249))

(assert (=> b!3995691 m!4576249))

(declare-fun m!4576251 () Bool)

(assert (=> b!3995691 m!4576251))

(assert (=> b!3995691 m!4576243))

(assert (=> b!3995691 m!4576251))

(assert (=> b!3995691 m!4576243))

(declare-fun m!4576253 () Bool)

(assert (=> b!3995691 m!4576253))

(assert (=> bm!285900 m!4576247))

(declare-fun m!4576255 () Bool)

(assert (=> b!3995681 m!4576255))

(assert (=> b!3995680 m!4576249))

(assert (=> b!3995575 d!1182356))

(declare-fun d!1182358 () Bool)

(assert (=> d!1182358 (= (maxPrefixOneRule!2691 thiss!21717 (rule!9796 token!484) lt!1410462) (Some!9183 (tuple2!41929 (Token!12679 (apply!9981 (transformation!6770 (rule!9796 token!484)) (seqFromList!5009 lt!1410432)) (rule!9796 token!484) (size!31959 lt!1410432) lt!1410432) suffixResult!105)))))

(declare-fun lt!1410513 () Unit!61593)

(declare-fun choose!24080 (LexerInterface!6359 List!42858 List!42856 List!42856 List!42856 Rule!13340) Unit!61593)

(assert (=> d!1182358 (= lt!1410513 (choose!24080 thiss!21717 rules!2999 lt!1410432 lt!1410462 suffixResult!105 (rule!9796 token!484)))))

(assert (=> d!1182358 (not (isEmpty!25540 rules!2999))))

(assert (=> d!1182358 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1513 thiss!21717 rules!2999 lt!1410432 lt!1410462 suffixResult!105 (rule!9796 token!484)) lt!1410513)))

(declare-fun bs!588626 () Bool)

(assert (= bs!588626 d!1182358))

(assert (=> bs!588626 m!4576161))

(assert (=> bs!588626 m!4576163))

(assert (=> bs!588626 m!4576169))

(assert (=> bs!588626 m!4576161))

(assert (=> bs!588626 m!4575995))

(assert (=> bs!588626 m!4576093))

(declare-fun m!4576257 () Bool)

(assert (=> bs!588626 m!4576257))

(assert (=> b!3995597 d!1182358))

(declare-fun d!1182360 () Bool)

(declare-fun fromListB!2299 (List!42856) BalanceConc!25556)

(assert (=> d!1182360 (= (seqFromList!5009 lt!1410432) (fromListB!2299 lt!1410432))))

(declare-fun bs!588627 () Bool)

(assert (= bs!588627 d!1182360))

(declare-fun m!4576259 () Bool)

(assert (=> bs!588627 m!4576259))

(assert (=> b!3995597 d!1182360))

(declare-fun b!3995695 () Bool)

(declare-fun e!2477169 () Bool)

(assert (=> b!3995695 (= e!2477169 (isPrefix!3857 (tail!6230 lt!1410432) (tail!6230 lt!1410436)))))

(declare-fun b!3995696 () Bool)

(declare-fun e!2477168 () Bool)

(assert (=> b!3995696 (= e!2477168 (>= (size!31959 lt!1410436) (size!31959 lt!1410432)))))

(declare-fun b!3995693 () Bool)

(declare-fun e!2477170 () Bool)

(assert (=> b!3995693 (= e!2477170 e!2477169)))

(declare-fun res!1622489 () Bool)

(assert (=> b!3995693 (=> (not res!1622489) (not e!2477169))))

(assert (=> b!3995693 (= res!1622489 (not ((_ is Nil!42732) lt!1410436)))))

(declare-fun d!1182362 () Bool)

(assert (=> d!1182362 e!2477168))

(declare-fun res!1622488 () Bool)

(assert (=> d!1182362 (=> res!1622488 e!2477168)))

(declare-fun lt!1410514 () Bool)

(assert (=> d!1182362 (= res!1622488 (not lt!1410514))))

(assert (=> d!1182362 (= lt!1410514 e!2477170)))

(declare-fun res!1622490 () Bool)

(assert (=> d!1182362 (=> res!1622490 e!2477170)))

(assert (=> d!1182362 (= res!1622490 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182362 (= (isPrefix!3857 lt!1410432 lt!1410436) lt!1410514)))

(declare-fun b!3995694 () Bool)

(declare-fun res!1622487 () Bool)

(assert (=> b!3995694 (=> (not res!1622487) (not e!2477169))))

(assert (=> b!3995694 (= res!1622487 (= (head!8498 lt!1410432) (head!8498 lt!1410436)))))

(assert (= (and d!1182362 (not res!1622490)) b!3995693))

(assert (= (and b!3995693 res!1622489) b!3995694))

(assert (= (and b!3995694 res!1622487) b!3995695))

(assert (= (and d!1182362 (not res!1622488)) b!3995696))

(assert (=> b!3995695 m!4576173))

(declare-fun m!4576261 () Bool)

(assert (=> b!3995695 m!4576261))

(assert (=> b!3995695 m!4576173))

(assert (=> b!3995695 m!4576261))

(declare-fun m!4576263 () Bool)

(assert (=> b!3995695 m!4576263))

(declare-fun m!4576265 () Bool)

(assert (=> b!3995696 m!4576265))

(assert (=> b!3995696 m!4576093))

(assert (=> b!3995694 m!4576181))

(declare-fun m!4576267 () Bool)

(assert (=> b!3995694 m!4576267))

(assert (=> b!3995597 d!1182362))

(declare-fun d!1182364 () Bool)

(assert (=> d!1182364 (= lt!1410473 suffixResult!105)))

(declare-fun lt!1410515 () Unit!61593)

(assert (=> d!1182364 (= lt!1410515 (choose!24077 lt!1410432 lt!1410473 lt!1410432 suffixResult!105 lt!1410462))))

(assert (=> d!1182364 (isPrefix!3857 lt!1410432 lt!1410462)))

(assert (=> d!1182364 (= (lemmaSamePrefixThenSameSuffix!2044 lt!1410432 lt!1410473 lt!1410432 suffixResult!105 lt!1410462) lt!1410515)))

(declare-fun bs!588628 () Bool)

(assert (= bs!588628 d!1182364))

(declare-fun m!4576269 () Bool)

(assert (=> bs!588628 m!4576269))

(assert (=> bs!588628 m!4576153))

(assert (=> b!3995597 d!1182364))

(declare-fun d!1182366 () Bool)

(assert (=> d!1182366 (isPrefix!3857 lt!1410432 (++!11172 lt!1410432 lt!1410473))))

(declare-fun lt!1410516 () Unit!61593)

(assert (=> d!1182366 (= lt!1410516 (choose!24076 lt!1410432 lt!1410473))))

(assert (=> d!1182366 (= (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410432 lt!1410473) lt!1410516)))

(declare-fun bs!588629 () Bool)

(assert (= bs!588629 d!1182366))

(assert (=> bs!588629 m!4576085))

(assert (=> bs!588629 m!4576085))

(declare-fun m!4576271 () Bool)

(assert (=> bs!588629 m!4576271))

(declare-fun m!4576273 () Bool)

(assert (=> bs!588629 m!4576273))

(assert (=> b!3995597 d!1182366))

(declare-fun d!1182368 () Bool)

(declare-fun dynLambda!18146 (Int BalanceConc!25556) TokenValue!7000)

(assert (=> d!1182368 (= (apply!9981 (transformation!6770 (rule!9796 token!484)) (seqFromList!5009 lt!1410432)) (dynLambda!18146 (toValue!9258 (transformation!6770 (rule!9796 token!484))) (seqFromList!5009 lt!1410432)))))

(declare-fun b_lambda!116623 () Bool)

(assert (=> (not b_lambda!116623) (not d!1182368)))

(declare-fun t!331995 () Bool)

(declare-fun tb!240397 () Bool)

(assert (=> (and b!3995590 (= (toValue!9258 (transformation!6770 (rule!9796 token!484))) (toValue!9258 (transformation!6770 (rule!9796 token!484)))) t!331995) tb!240397))

(declare-fun result!291318 () Bool)

(assert (=> tb!240397 (= result!291318 (inv!21 (dynLambda!18146 (toValue!9258 (transformation!6770 (rule!9796 token!484))) (seqFromList!5009 lt!1410432))))))

(declare-fun m!4576275 () Bool)

(assert (=> tb!240397 m!4576275))

(assert (=> d!1182368 t!331995))

(declare-fun b_and!306903 () Bool)

(assert (= b_and!306895 (and (=> t!331995 result!291318) b_and!306903)))

(declare-fun tb!240399 () Bool)

(declare-fun t!331997 () Bool)

(assert (=> (and b!3995568 (= (toValue!9258 (transformation!6770 (h!48154 rules!2999))) (toValue!9258 (transformation!6770 (rule!9796 token!484)))) t!331997) tb!240399))

(declare-fun result!291322 () Bool)

(assert (= result!291322 result!291318))

(assert (=> d!1182368 t!331997))

(declare-fun b_and!306905 () Bool)

(assert (= b_and!306899 (and (=> t!331997 result!291322) b_and!306905)))

(assert (=> d!1182368 m!4576161))

(declare-fun m!4576277 () Bool)

(assert (=> d!1182368 m!4576277))

(assert (=> b!3995597 d!1182368))

(declare-fun b!3995717 () Bool)

(declare-fun res!1622509 () Bool)

(declare-fun e!2477184 () Bool)

(assert (=> b!3995717 (=> (not res!1622509) (not e!2477184))))

(declare-fun lt!1410531 () Option!9184)

(declare-fun get!14058 (Option!9184) tuple2!41928)

(assert (=> b!3995717 (= res!1622509 (= (value!213579 (_1!24098 (get!14058 lt!1410531))) (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (get!14058 lt!1410531)))) (seqFromList!5009 (originalCharacters!7370 (_1!24098 (get!14058 lt!1410531)))))))))

(declare-fun b!3995718 () Bool)

(declare-fun e!2477185 () Option!9184)

(declare-datatypes ((tuple2!41930 0))(
  ( (tuple2!41931 (_1!24099 List!42856) (_2!24099 List!42856)) )
))
(declare-fun lt!1410528 () tuple2!41930)

(declare-fun size!31960 (BalanceConc!25556) Int)

(assert (=> b!3995718 (= e!2477185 (Some!9183 (tuple2!41929 (Token!12679 (apply!9981 (transformation!6770 (rule!9796 token!484)) (seqFromList!5009 (_1!24099 lt!1410528))) (rule!9796 token!484) (size!31960 (seqFromList!5009 (_1!24099 lt!1410528))) (_1!24099 lt!1410528)) (_2!24099 lt!1410528))))))

(declare-fun lt!1410529 () Unit!61593)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1314 (Regex!11675 List!42856) Unit!61593)

(assert (=> b!3995718 (= lt!1410529 (longestMatchIsAcceptedByMatchOrIsEmpty!1314 (regex!6770 (rule!9796 token!484)) lt!1410462))))

(declare-fun res!1622506 () Bool)

(declare-fun findLongestMatchInner!1341 (Regex!11675 List!42856 Int List!42856 List!42856 Int) tuple2!41930)

(assert (=> b!3995718 (= res!1622506 (isEmpty!25541 (_1!24099 (findLongestMatchInner!1341 (regex!6770 (rule!9796 token!484)) Nil!42732 (size!31959 Nil!42732) lt!1410462 lt!1410462 (size!31959 lt!1410462)))))))

(declare-fun e!2477183 () Bool)

(assert (=> b!3995718 (=> res!1622506 e!2477183)))

(assert (=> b!3995718 e!2477183))

(declare-fun lt!1410530 () Unit!61593)

(assert (=> b!3995718 (= lt!1410530 lt!1410529)))

(declare-fun lt!1410527 () Unit!61593)

(declare-fun lemmaSemiInverse!1859 (TokenValueInjection!13428 BalanceConc!25556) Unit!61593)

(assert (=> b!3995718 (= lt!1410527 (lemmaSemiInverse!1859 (transformation!6770 (rule!9796 token!484)) (seqFromList!5009 (_1!24099 lt!1410528))))))

(declare-fun b!3995719 () Bool)

(declare-fun res!1622511 () Bool)

(assert (=> b!3995719 (=> (not res!1622511) (not e!2477184))))

(assert (=> b!3995719 (= res!1622511 (= (++!11172 (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410531)))) (_2!24098 (get!14058 lt!1410531))) lt!1410462))))

(declare-fun b!3995720 () Bool)

(declare-fun e!2477182 () Bool)

(assert (=> b!3995720 (= e!2477182 e!2477184)))

(declare-fun res!1622508 () Bool)

(assert (=> b!3995720 (=> (not res!1622508) (not e!2477184))))

(assert (=> b!3995720 (= res!1622508 (matchR!5652 (regex!6770 (rule!9796 token!484)) (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410531))))))))

(declare-fun d!1182370 () Bool)

(assert (=> d!1182370 e!2477182))

(declare-fun res!1622507 () Bool)

(assert (=> d!1182370 (=> res!1622507 e!2477182)))

(declare-fun isEmpty!25542 (Option!9184) Bool)

(assert (=> d!1182370 (= res!1622507 (isEmpty!25542 lt!1410531))))

(assert (=> d!1182370 (= lt!1410531 e!2477185)))

(declare-fun c!691345 () Bool)

(assert (=> d!1182370 (= c!691345 (isEmpty!25541 (_1!24099 lt!1410528)))))

(declare-fun findLongestMatch!1254 (Regex!11675 List!42856) tuple2!41930)

(assert (=> d!1182370 (= lt!1410528 (findLongestMatch!1254 (regex!6770 (rule!9796 token!484)) lt!1410462))))

(assert (=> d!1182370 (ruleValid!2702 thiss!21717 (rule!9796 token!484))))

(assert (=> d!1182370 (= (maxPrefixOneRule!2691 thiss!21717 (rule!9796 token!484) lt!1410462) lt!1410531)))

(declare-fun b!3995721 () Bool)

(assert (=> b!3995721 (= e!2477183 (matchR!5652 (regex!6770 (rule!9796 token!484)) (_1!24099 (findLongestMatchInner!1341 (regex!6770 (rule!9796 token!484)) Nil!42732 (size!31959 Nil!42732) lt!1410462 lt!1410462 (size!31959 lt!1410462)))))))

(declare-fun b!3995722 () Bool)

(assert (=> b!3995722 (= e!2477184 (= (size!31958 (_1!24098 (get!14058 lt!1410531))) (size!31959 (originalCharacters!7370 (_1!24098 (get!14058 lt!1410531))))))))

(declare-fun b!3995723 () Bool)

(declare-fun res!1622505 () Bool)

(assert (=> b!3995723 (=> (not res!1622505) (not e!2477184))))

(assert (=> b!3995723 (= res!1622505 (= (rule!9796 (_1!24098 (get!14058 lt!1410531))) (rule!9796 token!484)))))

(declare-fun b!3995724 () Bool)

(assert (=> b!3995724 (= e!2477185 None!9183)))

(declare-fun b!3995725 () Bool)

(declare-fun res!1622510 () Bool)

(assert (=> b!3995725 (=> (not res!1622510) (not e!2477184))))

(assert (=> b!3995725 (= res!1622510 (< (size!31959 (_2!24098 (get!14058 lt!1410531))) (size!31959 lt!1410462)))))

(assert (= (and d!1182370 c!691345) b!3995724))

(assert (= (and d!1182370 (not c!691345)) b!3995718))

(assert (= (and b!3995718 (not res!1622506)) b!3995721))

(assert (= (and d!1182370 (not res!1622507)) b!3995720))

(assert (= (and b!3995720 res!1622508) b!3995719))

(assert (= (and b!3995719 res!1622511) b!3995725))

(assert (= (and b!3995725 res!1622510) b!3995723))

(assert (= (and b!3995723 res!1622505) b!3995717))

(assert (= (and b!3995717 res!1622509) b!3995722))

(declare-fun m!4576279 () Bool)

(assert (=> b!3995719 m!4576279))

(declare-fun m!4576281 () Bool)

(assert (=> b!3995719 m!4576281))

(assert (=> b!3995719 m!4576281))

(declare-fun m!4576283 () Bool)

(assert (=> b!3995719 m!4576283))

(assert (=> b!3995719 m!4576283))

(declare-fun m!4576285 () Bool)

(assert (=> b!3995719 m!4576285))

(declare-fun m!4576287 () Bool)

(assert (=> d!1182370 m!4576287))

(declare-fun m!4576289 () Bool)

(assert (=> d!1182370 m!4576289))

(declare-fun m!4576291 () Bool)

(assert (=> d!1182370 m!4576291))

(assert (=> d!1182370 m!4576009))

(assert (=> b!3995722 m!4576279))

(declare-fun m!4576293 () Bool)

(assert (=> b!3995722 m!4576293))

(assert (=> b!3995723 m!4576279))

(declare-fun m!4576295 () Bool)

(assert (=> b!3995718 m!4576295))

(declare-fun m!4576297 () Bool)

(assert (=> b!3995718 m!4576297))

(declare-fun m!4576299 () Bool)

(assert (=> b!3995718 m!4576299))

(assert (=> b!3995718 m!4576179))

(declare-fun m!4576301 () Bool)

(assert (=> b!3995718 m!4576301))

(assert (=> b!3995718 m!4576179))

(assert (=> b!3995718 m!4576295))

(assert (=> b!3995718 m!4576295))

(declare-fun m!4576303 () Bool)

(assert (=> b!3995718 m!4576303))

(declare-fun m!4576305 () Bool)

(assert (=> b!3995718 m!4576305))

(assert (=> b!3995718 m!4576295))

(declare-fun m!4576307 () Bool)

(assert (=> b!3995718 m!4576307))

(declare-fun m!4576309 () Bool)

(assert (=> b!3995718 m!4576309))

(assert (=> b!3995718 m!4576299))

(assert (=> b!3995721 m!4576299))

(assert (=> b!3995721 m!4576179))

(assert (=> b!3995721 m!4576299))

(assert (=> b!3995721 m!4576179))

(assert (=> b!3995721 m!4576301))

(declare-fun m!4576311 () Bool)

(assert (=> b!3995721 m!4576311))

(assert (=> b!3995725 m!4576279))

(declare-fun m!4576313 () Bool)

(assert (=> b!3995725 m!4576313))

(assert (=> b!3995725 m!4576179))

(assert (=> b!3995717 m!4576279))

(declare-fun m!4576315 () Bool)

(assert (=> b!3995717 m!4576315))

(assert (=> b!3995717 m!4576315))

(declare-fun m!4576317 () Bool)

(assert (=> b!3995717 m!4576317))

(assert (=> b!3995720 m!4576279))

(assert (=> b!3995720 m!4576281))

(assert (=> b!3995720 m!4576281))

(assert (=> b!3995720 m!4576283))

(assert (=> b!3995720 m!4576283))

(declare-fun m!4576319 () Bool)

(assert (=> b!3995720 m!4576319))

(assert (=> b!3995597 d!1182370))

(declare-fun b!3995728 () Bool)

(declare-fun res!1622512 () Bool)

(declare-fun e!2477186 () Bool)

(assert (=> b!3995728 (=> (not res!1622512) (not e!2477186))))

(declare-fun lt!1410532 () List!42856)

(assert (=> b!3995728 (= res!1622512 (= (size!31959 lt!1410532) (+ (size!31959 lt!1410432) (size!31959 lt!1410473))))))

(declare-fun b!3995729 () Bool)

(assert (=> b!3995729 (= e!2477186 (or (not (= lt!1410473 Nil!42732)) (= lt!1410532 lt!1410432)))))

(declare-fun b!3995726 () Bool)

(declare-fun e!2477187 () List!42856)

(assert (=> b!3995726 (= e!2477187 lt!1410473)))

(declare-fun d!1182372 () Bool)

(assert (=> d!1182372 e!2477186))

(declare-fun res!1622513 () Bool)

(assert (=> d!1182372 (=> (not res!1622513) (not e!2477186))))

(assert (=> d!1182372 (= res!1622513 (= (content!6484 lt!1410532) ((_ map or) (content!6484 lt!1410432) (content!6484 lt!1410473))))))

(assert (=> d!1182372 (= lt!1410532 e!2477187)))

(declare-fun c!691346 () Bool)

(assert (=> d!1182372 (= c!691346 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182372 (= (++!11172 lt!1410432 lt!1410473) lt!1410532)))

(declare-fun b!3995727 () Bool)

(assert (=> b!3995727 (= e!2477187 (Cons!42732 (h!48152 lt!1410432) (++!11172 (t!331991 lt!1410432) lt!1410473)))))

(assert (= (and d!1182372 c!691346) b!3995726))

(assert (= (and d!1182372 (not c!691346)) b!3995727))

(assert (= (and d!1182372 res!1622513) b!3995728))

(assert (= (and b!3995728 res!1622512) b!3995729))

(declare-fun m!4576321 () Bool)

(assert (=> b!3995728 m!4576321))

(assert (=> b!3995728 m!4576093))

(declare-fun m!4576323 () Bool)

(assert (=> b!3995728 m!4576323))

(declare-fun m!4576325 () Bool)

(assert (=> d!1182372 m!4576325))

(assert (=> d!1182372 m!4576223))

(declare-fun m!4576327 () Bool)

(assert (=> d!1182372 m!4576327))

(declare-fun m!4576329 () Bool)

(assert (=> b!3995727 m!4576329))

(assert (=> b!3995554 d!1182372))

(declare-fun b!3995732 () Bool)

(declare-fun res!1622514 () Bool)

(declare-fun e!2477188 () Bool)

(assert (=> b!3995732 (=> (not res!1622514) (not e!2477188))))

(declare-fun lt!1410533 () List!42856)

(assert (=> b!3995732 (= res!1622514 (= (size!31959 lt!1410533) (+ (size!31959 lt!1410452) (size!31959 suffix!1299))))))

(declare-fun b!3995733 () Bool)

(assert (=> b!3995733 (= e!2477188 (or (not (= suffix!1299 Nil!42732)) (= lt!1410533 lt!1410452)))))

(declare-fun b!3995730 () Bool)

(declare-fun e!2477189 () List!42856)

(assert (=> b!3995730 (= e!2477189 suffix!1299)))

(declare-fun d!1182374 () Bool)

(assert (=> d!1182374 e!2477188))

(declare-fun res!1622515 () Bool)

(assert (=> d!1182374 (=> (not res!1622515) (not e!2477188))))

(assert (=> d!1182374 (= res!1622515 (= (content!6484 lt!1410533) ((_ map or) (content!6484 lt!1410452) (content!6484 suffix!1299))))))

(assert (=> d!1182374 (= lt!1410533 e!2477189)))

(declare-fun c!691347 () Bool)

(assert (=> d!1182374 (= c!691347 ((_ is Nil!42732) lt!1410452))))

(assert (=> d!1182374 (= (++!11172 lt!1410452 suffix!1299) lt!1410533)))

(declare-fun b!3995731 () Bool)

(assert (=> b!3995731 (= e!2477189 (Cons!42732 (h!48152 lt!1410452) (++!11172 (t!331991 lt!1410452) suffix!1299)))))

(assert (= (and d!1182374 c!691347) b!3995730))

(assert (= (and d!1182374 (not c!691347)) b!3995731))

(assert (= (and d!1182374 res!1622515) b!3995732))

(assert (= (and b!3995732 res!1622514) b!3995733))

(declare-fun m!4576331 () Bool)

(assert (=> b!3995732 m!4576331))

(declare-fun m!4576333 () Bool)

(assert (=> b!3995732 m!4576333))

(assert (=> b!3995732 m!4576013))

(declare-fun m!4576335 () Bool)

(assert (=> d!1182374 m!4576335))

(declare-fun m!4576337 () Bool)

(assert (=> d!1182374 m!4576337))

(declare-fun m!4576339 () Bool)

(assert (=> d!1182374 m!4576339))

(declare-fun m!4576341 () Bool)

(assert (=> b!3995731 m!4576341))

(assert (=> b!3995554 d!1182374))

(declare-fun b!3995736 () Bool)

(declare-fun res!1622516 () Bool)

(declare-fun e!2477190 () Bool)

(assert (=> b!3995736 (=> (not res!1622516) (not e!2477190))))

(declare-fun lt!1410534 () List!42856)

(assert (=> b!3995736 (= res!1622516 (= (size!31959 lt!1410534) (+ (size!31959 lt!1410476) (size!31959 suffix!1299))))))

(declare-fun b!3995737 () Bool)

(assert (=> b!3995737 (= e!2477190 (or (not (= suffix!1299 Nil!42732)) (= lt!1410534 lt!1410476)))))

(declare-fun b!3995734 () Bool)

(declare-fun e!2477191 () List!42856)

(assert (=> b!3995734 (= e!2477191 suffix!1299)))

(declare-fun d!1182376 () Bool)

(assert (=> d!1182376 e!2477190))

(declare-fun res!1622517 () Bool)

(assert (=> d!1182376 (=> (not res!1622517) (not e!2477190))))

(assert (=> d!1182376 (= res!1622517 (= (content!6484 lt!1410534) ((_ map or) (content!6484 lt!1410476) (content!6484 suffix!1299))))))

(assert (=> d!1182376 (= lt!1410534 e!2477191)))

(declare-fun c!691348 () Bool)

(assert (=> d!1182376 (= c!691348 ((_ is Nil!42732) lt!1410476))))

(assert (=> d!1182376 (= (++!11172 lt!1410476 suffix!1299) lt!1410534)))

(declare-fun b!3995735 () Bool)

(assert (=> b!3995735 (= e!2477191 (Cons!42732 (h!48152 lt!1410476) (++!11172 (t!331991 lt!1410476) suffix!1299)))))

(assert (= (and d!1182376 c!691348) b!3995734))

(assert (= (and d!1182376 (not c!691348)) b!3995735))

(assert (= (and d!1182376 res!1622517) b!3995736))

(assert (= (and b!3995736 res!1622516) b!3995737))

(declare-fun m!4576343 () Bool)

(assert (=> b!3995736 m!4576343))

(declare-fun m!4576345 () Bool)

(assert (=> b!3995736 m!4576345))

(assert (=> b!3995736 m!4576013))

(declare-fun m!4576347 () Bool)

(assert (=> d!1182376 m!4576347))

(declare-fun m!4576349 () Bool)

(assert (=> d!1182376 m!4576349))

(assert (=> d!1182376 m!4576339))

(declare-fun m!4576351 () Bool)

(assert (=> b!3995735 m!4576351))

(assert (=> b!3995554 d!1182376))

(declare-fun d!1182378 () Bool)

(assert (=> d!1182378 (= (++!11172 (++!11172 lt!1410432 lt!1410476) suffix!1299) (++!11172 lt!1410432 (++!11172 lt!1410476 suffix!1299)))))

(declare-fun lt!1410537 () Unit!61593)

(declare-fun choose!24081 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> d!1182378 (= lt!1410537 (choose!24081 lt!1410432 lt!1410476 suffix!1299))))

(assert (=> d!1182378 (= (lemmaConcatAssociativity!2492 lt!1410432 lt!1410476 suffix!1299) lt!1410537)))

(declare-fun bs!588630 () Bool)

(assert (= bs!588630 d!1182378))

(declare-fun m!4576353 () Bool)

(assert (=> bs!588630 m!4576353))

(assert (=> bs!588630 m!4576089))

(declare-fun m!4576355 () Bool)

(assert (=> bs!588630 m!4576355))

(assert (=> bs!588630 m!4576089))

(assert (=> bs!588630 m!4576067))

(assert (=> bs!588630 m!4576067))

(declare-fun m!4576357 () Bool)

(assert (=> bs!588630 m!4576357))

(assert (=> b!3995554 d!1182378))

(declare-fun b!3995756 () Bool)

(declare-fun e!2477210 () Bool)

(declare-fun e!2477207 () Bool)

(assert (=> b!3995756 (= e!2477210 e!2477207)))

(declare-fun c!691354 () Bool)

(assert (=> b!3995756 (= c!691354 ((_ is Union!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun d!1182380 () Bool)

(declare-fun res!1622530 () Bool)

(declare-fun e!2477206 () Bool)

(assert (=> d!1182380 (=> res!1622530 e!2477206)))

(assert (=> d!1182380 (= res!1622530 ((_ is ElementMatch!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(assert (=> d!1182380 (= (validRegex!5298 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) e!2477206)))

(declare-fun b!3995757 () Bool)

(declare-fun e!2477209 () Bool)

(declare-fun call!285913 () Bool)

(assert (=> b!3995757 (= e!2477209 call!285913)))

(declare-fun bm!285907 () Bool)

(declare-fun c!691353 () Bool)

(declare-fun call!285912 () Bool)

(assert (=> bm!285907 (= call!285912 (validRegex!5298 (ite c!691353 (reg!12004 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (ite c!691354 (regTwo!23863 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (regTwo!23862 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))))

(declare-fun b!3995758 () Bool)

(declare-fun e!2477208 () Bool)

(assert (=> b!3995758 (= e!2477208 call!285912)))

(declare-fun b!3995759 () Bool)

(assert (=> b!3995759 (= e!2477206 e!2477210)))

(assert (=> b!3995759 (= c!691353 ((_ is Star!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun b!3995760 () Bool)

(declare-fun res!1622531 () Bool)

(assert (=> b!3995760 (=> (not res!1622531) (not e!2477209))))

(declare-fun call!285914 () Bool)

(assert (=> b!3995760 (= res!1622531 call!285914)))

(assert (=> b!3995760 (= e!2477207 e!2477209)))

(declare-fun bm!285908 () Bool)

(assert (=> bm!285908 (= call!285914 (validRegex!5298 (ite c!691354 (regOne!23863 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (regOne!23862 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))))

(declare-fun b!3995761 () Bool)

(declare-fun res!1622528 () Bool)

(declare-fun e!2477212 () Bool)

(assert (=> b!3995761 (=> res!1622528 e!2477212)))

(assert (=> b!3995761 (= res!1622528 (not ((_ is Concat!18676) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(assert (=> b!3995761 (= e!2477207 e!2477212)))

(declare-fun b!3995762 () Bool)

(assert (=> b!3995762 (= e!2477210 e!2477208)))

(declare-fun res!1622529 () Bool)

(assert (=> b!3995762 (= res!1622529 (not (nullable!4097 (reg!12004 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))))

(assert (=> b!3995762 (=> (not res!1622529) (not e!2477208))))

(declare-fun bm!285909 () Bool)

(assert (=> bm!285909 (= call!285913 call!285912)))

(declare-fun b!3995763 () Bool)

(declare-fun e!2477211 () Bool)

(assert (=> b!3995763 (= e!2477212 e!2477211)))

(declare-fun res!1622532 () Bool)

(assert (=> b!3995763 (=> (not res!1622532) (not e!2477211))))

(assert (=> b!3995763 (= res!1622532 call!285914)))

(declare-fun b!3995764 () Bool)

(assert (=> b!3995764 (= e!2477211 call!285913)))

(assert (= (and d!1182380 (not res!1622530)) b!3995759))

(assert (= (and b!3995759 c!691353) b!3995762))

(assert (= (and b!3995759 (not c!691353)) b!3995756))

(assert (= (and b!3995762 res!1622529) b!3995758))

(assert (= (and b!3995756 c!691354) b!3995760))

(assert (= (and b!3995756 (not c!691354)) b!3995761))

(assert (= (and b!3995760 res!1622531) b!3995757))

(assert (= (and b!3995761 (not res!1622528)) b!3995763))

(assert (= (and b!3995763 res!1622532) b!3995764))

(assert (= (or b!3995757 b!3995764) bm!285909))

(assert (= (or b!3995760 b!3995763) bm!285908))

(assert (= (or b!3995758 bm!285909) bm!285907))

(declare-fun m!4576359 () Bool)

(assert (=> bm!285907 m!4576359))

(declare-fun m!4576361 () Bool)

(assert (=> bm!285908 m!4576361))

(declare-fun m!4576363 () Bool)

(assert (=> b!3995762 m!4576363))

(assert (=> b!3995553 d!1182380))

(declare-fun d!1182382 () Bool)

(declare-fun lt!1410540 () Int)

(assert (=> d!1182382 (>= lt!1410540 0)))

(declare-fun e!2477215 () Int)

(assert (=> d!1182382 (= lt!1410540 e!2477215)))

(declare-fun c!691357 () Bool)

(assert (=> d!1182382 (= c!691357 ((_ is Nil!42732) (originalCharacters!7370 token!484)))))

(assert (=> d!1182382 (= (size!31959 (originalCharacters!7370 token!484)) lt!1410540)))

(declare-fun b!3995769 () Bool)

(assert (=> b!3995769 (= e!2477215 0)))

(declare-fun b!3995770 () Bool)

(assert (=> b!3995770 (= e!2477215 (+ 1 (size!31959 (t!331991 (originalCharacters!7370 token!484)))))))

(assert (= (and d!1182382 c!691357) b!3995769))

(assert (= (and d!1182382 (not c!691357)) b!3995770))

(declare-fun m!4576365 () Bool)

(assert (=> b!3995770 m!4576365))

(assert (=> b!3995572 d!1182382))

(declare-fun d!1182384 () Bool)

(assert (=> d!1182384 (= (_2!24098 (v!39543 lt!1410435)) lt!1410427)))

(declare-fun lt!1410541 () Unit!61593)

(assert (=> d!1182384 (= lt!1410541 (choose!24077 lt!1410460 (_2!24098 (v!39543 lt!1410435)) lt!1410460 lt!1410427 lt!1410458))))

(assert (=> d!1182384 (isPrefix!3857 lt!1410460 lt!1410458)))

(assert (=> d!1182384 (= (lemmaSamePrefixThenSameSuffix!2044 lt!1410460 (_2!24098 (v!39543 lt!1410435)) lt!1410460 lt!1410427 lt!1410458) lt!1410541)))

(declare-fun bs!588631 () Bool)

(assert (= bs!588631 d!1182384))

(declare-fun m!4576367 () Bool)

(assert (=> bs!588631 m!4576367))

(assert (=> bs!588631 m!4576107))

(assert (=> b!3995573 d!1182384))

(declare-fun b!3995773 () Bool)

(declare-fun e!2477217 () Bool)

(assert (=> b!3995773 (= e!2477217 (isPrefix!3857 (tail!6230 lt!1410460) (tail!6230 lt!1410447)))))

(declare-fun b!3995774 () Bool)

(declare-fun e!2477216 () Bool)

(assert (=> b!3995774 (= e!2477216 (>= (size!31959 lt!1410447) (size!31959 lt!1410460)))))

(declare-fun b!3995771 () Bool)

(declare-fun e!2477218 () Bool)

(assert (=> b!3995771 (= e!2477218 e!2477217)))

(declare-fun res!1622535 () Bool)

(assert (=> b!3995771 (=> (not res!1622535) (not e!2477217))))

(assert (=> b!3995771 (= res!1622535 (not ((_ is Nil!42732) lt!1410447)))))

(declare-fun d!1182386 () Bool)

(assert (=> d!1182386 e!2477216))

(declare-fun res!1622534 () Bool)

(assert (=> d!1182386 (=> res!1622534 e!2477216)))

(declare-fun lt!1410542 () Bool)

(assert (=> d!1182386 (= res!1622534 (not lt!1410542))))

(assert (=> d!1182386 (= lt!1410542 e!2477218)))

(declare-fun res!1622536 () Bool)

(assert (=> d!1182386 (=> res!1622536 e!2477218)))

(assert (=> d!1182386 (= res!1622536 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182386 (= (isPrefix!3857 lt!1410460 lt!1410447) lt!1410542)))

(declare-fun b!3995772 () Bool)

(declare-fun res!1622533 () Bool)

(assert (=> b!3995772 (=> (not res!1622533) (not e!2477217))))

(assert (=> b!3995772 (= res!1622533 (= (head!8498 lt!1410460) (head!8498 lt!1410447)))))

(assert (= (and d!1182386 (not res!1622536)) b!3995771))

(assert (= (and b!3995771 res!1622535) b!3995772))

(assert (= (and b!3995772 res!1622533) b!3995773))

(assert (= (and d!1182386 (not res!1622534)) b!3995774))

(assert (=> b!3995773 m!4576243))

(declare-fun m!4576369 () Bool)

(assert (=> b!3995773 m!4576369))

(assert (=> b!3995773 m!4576243))

(assert (=> b!3995773 m!4576369))

(declare-fun m!4576371 () Bool)

(assert (=> b!3995773 m!4576371))

(declare-fun m!4576373 () Bool)

(assert (=> b!3995774 m!4576373))

(assert (=> b!3995774 m!4576057))

(assert (=> b!3995772 m!4576249))

(declare-fun m!4576375 () Bool)

(assert (=> b!3995772 m!4576375))

(assert (=> b!3995573 d!1182386))

(declare-fun d!1182388 () Bool)

(assert (=> d!1182388 (isPrefix!3857 lt!1410460 (++!11172 lt!1410460 lt!1410427))))

(declare-fun lt!1410543 () Unit!61593)

(assert (=> d!1182388 (= lt!1410543 (choose!24076 lt!1410460 lt!1410427))))

(assert (=> d!1182388 (= (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410460 lt!1410427) lt!1410543)))

(declare-fun bs!588632 () Bool)

(assert (= bs!588632 d!1182388))

(assert (=> bs!588632 m!4576125))

(assert (=> bs!588632 m!4576125))

(declare-fun m!4576377 () Bool)

(assert (=> bs!588632 m!4576377))

(declare-fun m!4576379 () Bool)

(assert (=> bs!588632 m!4576379))

(assert (=> b!3995573 d!1182388))

(declare-fun d!1182390 () Bool)

(assert (=> d!1182390 (= (isEmpty!25540 rules!2999) ((_ is Nil!42734) rules!2999))))

(assert (=> b!3995594 d!1182390))

(declare-fun b!3995777 () Bool)

(declare-fun e!2477220 () Bool)

(assert (=> b!3995777 (= e!2477220 (isPrefix!3857 (tail!6230 newSuffix!27) (tail!6230 suffix!1299)))))

(declare-fun b!3995778 () Bool)

(declare-fun e!2477219 () Bool)

(assert (=> b!3995778 (= e!2477219 (>= (size!31959 suffix!1299) (size!31959 newSuffix!27)))))

(declare-fun b!3995775 () Bool)

(declare-fun e!2477221 () Bool)

(assert (=> b!3995775 (= e!2477221 e!2477220)))

(declare-fun res!1622541 () Bool)

(assert (=> b!3995775 (=> (not res!1622541) (not e!2477220))))

(assert (=> b!3995775 (= res!1622541 (not ((_ is Nil!42732) suffix!1299)))))

(declare-fun d!1182392 () Bool)

(assert (=> d!1182392 e!2477219))

(declare-fun res!1622540 () Bool)

(assert (=> d!1182392 (=> res!1622540 e!2477219)))

(declare-fun lt!1410544 () Bool)

(assert (=> d!1182392 (= res!1622540 (not lt!1410544))))

(assert (=> d!1182392 (= lt!1410544 e!2477221)))

(declare-fun res!1622542 () Bool)

(assert (=> d!1182392 (=> res!1622542 e!2477221)))

(assert (=> d!1182392 (= res!1622542 ((_ is Nil!42732) newSuffix!27))))

(assert (=> d!1182392 (= (isPrefix!3857 newSuffix!27 suffix!1299) lt!1410544)))

(declare-fun b!3995776 () Bool)

(declare-fun res!1622539 () Bool)

(assert (=> b!3995776 (=> (not res!1622539) (not e!2477220))))

(assert (=> b!3995776 (= res!1622539 (= (head!8498 newSuffix!27) (head!8498 suffix!1299)))))

(assert (= (and d!1182392 (not res!1622542)) b!3995775))

(assert (= (and b!3995775 res!1622541) b!3995776))

(assert (= (and b!3995776 res!1622539) b!3995777))

(assert (= (and d!1182392 (not res!1622540)) b!3995778))

(declare-fun m!4576381 () Bool)

(assert (=> b!3995777 m!4576381))

(declare-fun m!4576383 () Bool)

(assert (=> b!3995777 m!4576383))

(assert (=> b!3995777 m!4576381))

(assert (=> b!3995777 m!4576383))

(declare-fun m!4576385 () Bool)

(assert (=> b!3995777 m!4576385))

(assert (=> b!3995778 m!4576013))

(assert (=> b!3995778 m!4576015))

(declare-fun m!4576387 () Bool)

(assert (=> b!3995776 m!4576387))

(declare-fun m!4576389 () Bool)

(assert (=> b!3995776 m!4576389))

(assert (=> b!3995560 d!1182392))

(declare-fun b!3995781 () Bool)

(declare-fun res!1622545 () Bool)

(declare-fun e!2477222 () Bool)

(assert (=> b!3995781 (=> (not res!1622545) (not e!2477222))))

(declare-fun lt!1410545 () List!42856)

(assert (=> b!3995781 (= res!1622545 (= (size!31959 lt!1410545) (+ (size!31959 newSuffix!27) (size!31959 lt!1410439))))))

(declare-fun b!3995782 () Bool)

(assert (=> b!3995782 (= e!2477222 (or (not (= lt!1410439 Nil!42732)) (= lt!1410545 newSuffix!27)))))

(declare-fun b!3995779 () Bool)

(declare-fun e!2477223 () List!42856)

(assert (=> b!3995779 (= e!2477223 lt!1410439)))

(declare-fun d!1182394 () Bool)

(assert (=> d!1182394 e!2477222))

(declare-fun res!1622546 () Bool)

(assert (=> d!1182394 (=> (not res!1622546) (not e!2477222))))

(assert (=> d!1182394 (= res!1622546 (= (content!6484 lt!1410545) ((_ map or) (content!6484 newSuffix!27) (content!6484 lt!1410439))))))

(assert (=> d!1182394 (= lt!1410545 e!2477223)))

(declare-fun c!691358 () Bool)

(assert (=> d!1182394 (= c!691358 ((_ is Nil!42732) newSuffix!27))))

(assert (=> d!1182394 (= (++!11172 newSuffix!27 lt!1410439) lt!1410545)))

(declare-fun b!3995780 () Bool)

(assert (=> b!3995780 (= e!2477223 (Cons!42732 (h!48152 newSuffix!27) (++!11172 (t!331991 newSuffix!27) lt!1410439)))))

(assert (= (and d!1182394 c!691358) b!3995779))

(assert (= (and d!1182394 (not c!691358)) b!3995780))

(assert (= (and d!1182394 res!1622546) b!3995781))

(assert (= (and b!3995781 res!1622545) b!3995782))

(declare-fun m!4576391 () Bool)

(assert (=> b!3995781 m!4576391))

(assert (=> b!3995781 m!4576015))

(declare-fun m!4576393 () Bool)

(assert (=> b!3995781 m!4576393))

(declare-fun m!4576395 () Bool)

(assert (=> d!1182394 m!4576395))

(assert (=> d!1182394 m!4576213))

(declare-fun m!4576397 () Bool)

(assert (=> d!1182394 m!4576397))

(declare-fun m!4576399 () Bool)

(assert (=> b!3995780 m!4576399))

(assert (=> b!3995561 d!1182394))

(declare-fun d!1182396 () Bool)

(declare-fun lt!1410548 () List!42856)

(assert (=> d!1182396 (= (++!11172 newSuffix!27 lt!1410548) suffix!1299)))

(declare-fun e!2477226 () List!42856)

(assert (=> d!1182396 (= lt!1410548 e!2477226)))

(declare-fun c!691361 () Bool)

(assert (=> d!1182396 (= c!691361 ((_ is Cons!42732) newSuffix!27))))

(assert (=> d!1182396 (>= (size!31959 suffix!1299) (size!31959 newSuffix!27))))

(assert (=> d!1182396 (= (getSuffix!2288 suffix!1299 newSuffix!27) lt!1410548)))

(declare-fun b!3995787 () Bool)

(assert (=> b!3995787 (= e!2477226 (getSuffix!2288 (tail!6230 suffix!1299) (t!331991 newSuffix!27)))))

(declare-fun b!3995788 () Bool)

(assert (=> b!3995788 (= e!2477226 suffix!1299)))

(assert (= (and d!1182396 c!691361) b!3995787))

(assert (= (and d!1182396 (not c!691361)) b!3995788))

(declare-fun m!4576401 () Bool)

(assert (=> d!1182396 m!4576401))

(assert (=> d!1182396 m!4576013))

(assert (=> d!1182396 m!4576015))

(assert (=> b!3995787 m!4576383))

(assert (=> b!3995787 m!4576383))

(declare-fun m!4576403 () Bool)

(assert (=> b!3995787 m!4576403))

(assert (=> b!3995561 d!1182396))

(declare-fun b!3995799 () Bool)

(declare-fun e!2477235 () Bool)

(declare-fun inv!17 (TokenValue!7000) Bool)

(assert (=> b!3995799 (= e!2477235 (inv!17 (value!213579 token!484)))))

(declare-fun b!3995800 () Bool)

(declare-fun res!1622549 () Bool)

(declare-fun e!2477233 () Bool)

(assert (=> b!3995800 (=> res!1622549 e!2477233)))

(assert (=> b!3995800 (= res!1622549 (not ((_ is IntegerValue!21002) (value!213579 token!484))))))

(assert (=> b!3995800 (= e!2477235 e!2477233)))

(declare-fun b!3995801 () Bool)

(declare-fun e!2477234 () Bool)

(declare-fun inv!16 (TokenValue!7000) Bool)

(assert (=> b!3995801 (= e!2477234 (inv!16 (value!213579 token!484)))))

(declare-fun b!3995803 () Bool)

(declare-fun inv!15 (TokenValue!7000) Bool)

(assert (=> b!3995803 (= e!2477233 (inv!15 (value!213579 token!484)))))

(declare-fun d!1182398 () Bool)

(declare-fun c!691366 () Bool)

(assert (=> d!1182398 (= c!691366 ((_ is IntegerValue!21000) (value!213579 token!484)))))

(assert (=> d!1182398 (= (inv!21 (value!213579 token!484)) e!2477234)))

(declare-fun b!3995802 () Bool)

(assert (=> b!3995802 (= e!2477234 e!2477235)))

(declare-fun c!691367 () Bool)

(assert (=> b!3995802 (= c!691367 ((_ is IntegerValue!21001) (value!213579 token!484)))))

(assert (= (and d!1182398 c!691366) b!3995801))

(assert (= (and d!1182398 (not c!691366)) b!3995802))

(assert (= (and b!3995802 c!691367) b!3995799))

(assert (= (and b!3995802 (not c!691367)) b!3995800))

(assert (= (and b!3995800 (not res!1622549)) b!3995803))

(declare-fun m!4576405 () Bool)

(assert (=> b!3995799 m!4576405))

(declare-fun m!4576407 () Bool)

(assert (=> b!3995801 m!4576407))

(declare-fun m!4576409 () Bool)

(assert (=> b!3995803 m!4576409))

(assert (=> b!3995582 d!1182398))

(declare-fun b!3995806 () Bool)

(declare-fun res!1622550 () Bool)

(declare-fun e!2477236 () Bool)

(assert (=> b!3995806 (=> (not res!1622550) (not e!2477236))))

(declare-fun lt!1410549 () List!42856)

(assert (=> b!3995806 (= res!1622550 (= (size!31959 lt!1410549) (+ (size!31959 lt!1410460) (size!31959 lt!1410427))))))

(declare-fun b!3995807 () Bool)

(assert (=> b!3995807 (= e!2477236 (or (not (= lt!1410427 Nil!42732)) (= lt!1410549 lt!1410460)))))

(declare-fun b!3995804 () Bool)

(declare-fun e!2477237 () List!42856)

(assert (=> b!3995804 (= e!2477237 lt!1410427)))

(declare-fun d!1182400 () Bool)

(assert (=> d!1182400 e!2477236))

(declare-fun res!1622551 () Bool)

(assert (=> d!1182400 (=> (not res!1622551) (not e!2477236))))

(assert (=> d!1182400 (= res!1622551 (= (content!6484 lt!1410549) ((_ map or) (content!6484 lt!1410460) (content!6484 lt!1410427))))))

(assert (=> d!1182400 (= lt!1410549 e!2477237)))

(declare-fun c!691368 () Bool)

(assert (=> d!1182400 (= c!691368 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182400 (= (++!11172 lt!1410460 lt!1410427) lt!1410549)))

(declare-fun b!3995805 () Bool)

(assert (=> b!3995805 (= e!2477237 (Cons!42732 (h!48152 lt!1410460) (++!11172 (t!331991 lt!1410460) lt!1410427)))))

(assert (= (and d!1182400 c!691368) b!3995804))

(assert (= (and d!1182400 (not c!691368)) b!3995805))

(assert (= (and d!1182400 res!1622551) b!3995806))

(assert (= (and b!3995806 res!1622550) b!3995807))

(declare-fun m!4576411 () Bool)

(assert (=> b!3995806 m!4576411))

(assert (=> b!3995806 m!4576057))

(declare-fun m!4576413 () Bool)

(assert (=> b!3995806 m!4576413))

(declare-fun m!4576415 () Bool)

(assert (=> d!1182400 m!4576415))

(declare-fun m!4576417 () Bool)

(assert (=> d!1182400 m!4576417))

(declare-fun m!4576419 () Bool)

(assert (=> d!1182400 m!4576419))

(declare-fun m!4576421 () Bool)

(assert (=> b!3995805 m!4576421))

(assert (=> b!3995559 d!1182400))

(declare-fun d!1182402 () Bool)

(declare-fun lt!1410550 () List!42856)

(assert (=> d!1182402 (= (++!11172 lt!1410460 lt!1410550) lt!1410458)))

(declare-fun e!2477238 () List!42856)

(assert (=> d!1182402 (= lt!1410550 e!2477238)))

(declare-fun c!691369 () Bool)

(assert (=> d!1182402 (= c!691369 ((_ is Cons!42732) lt!1410460))))

(assert (=> d!1182402 (>= (size!31959 lt!1410458) (size!31959 lt!1410460))))

(assert (=> d!1182402 (= (getSuffix!2288 lt!1410458 lt!1410460) lt!1410550)))

(declare-fun b!3995808 () Bool)

(assert (=> b!3995808 (= e!2477238 (getSuffix!2288 (tail!6230 lt!1410458) (t!331991 lt!1410460)))))

(declare-fun b!3995809 () Bool)

(assert (=> b!3995809 (= e!2477238 lt!1410458)))

(assert (= (and d!1182402 c!691369) b!3995808))

(assert (= (and d!1182402 (not c!691369)) b!3995809))

(declare-fun m!4576423 () Bool)

(assert (=> d!1182402 m!4576423))

(declare-fun m!4576425 () Bool)

(assert (=> d!1182402 m!4576425))

(assert (=> d!1182402 m!4576057))

(declare-fun m!4576427 () Bool)

(assert (=> b!3995808 m!4576427))

(assert (=> b!3995808 m!4576427))

(declare-fun m!4576429 () Bool)

(assert (=> b!3995808 m!4576429))

(assert (=> b!3995559 d!1182402))

(declare-fun b!3995812 () Bool)

(declare-fun res!1622552 () Bool)

(declare-fun e!2477239 () Bool)

(assert (=> b!3995812 (=> (not res!1622552) (not e!2477239))))

(declare-fun lt!1410551 () List!42856)

(assert (=> b!3995812 (= res!1622552 (= (size!31959 lt!1410551) (+ (size!31959 lt!1410432) (size!31959 lt!1410476))))))

(declare-fun b!3995813 () Bool)

(assert (=> b!3995813 (= e!2477239 (or (not (= lt!1410476 Nil!42732)) (= lt!1410551 lt!1410432)))))

(declare-fun b!3995810 () Bool)

(declare-fun e!2477240 () List!42856)

(assert (=> b!3995810 (= e!2477240 lt!1410476)))

(declare-fun d!1182404 () Bool)

(assert (=> d!1182404 e!2477239))

(declare-fun res!1622553 () Bool)

(assert (=> d!1182404 (=> (not res!1622553) (not e!2477239))))

(assert (=> d!1182404 (= res!1622553 (= (content!6484 lt!1410551) ((_ map or) (content!6484 lt!1410432) (content!6484 lt!1410476))))))

(assert (=> d!1182404 (= lt!1410551 e!2477240)))

(declare-fun c!691370 () Bool)

(assert (=> d!1182404 (= c!691370 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182404 (= (++!11172 lt!1410432 lt!1410476) lt!1410551)))

(declare-fun b!3995811 () Bool)

(assert (=> b!3995811 (= e!2477240 (Cons!42732 (h!48152 lt!1410432) (++!11172 (t!331991 lt!1410432) lt!1410476)))))

(assert (= (and d!1182404 c!691370) b!3995810))

(assert (= (and d!1182404 (not c!691370)) b!3995811))

(assert (= (and d!1182404 res!1622553) b!3995812))

(assert (= (and b!3995812 res!1622552) b!3995813))

(declare-fun m!4576431 () Bool)

(assert (=> b!3995812 m!4576431))

(assert (=> b!3995812 m!4576093))

(assert (=> b!3995812 m!4576345))

(declare-fun m!4576433 () Bool)

(assert (=> d!1182404 m!4576433))

(assert (=> d!1182404 m!4576223))

(assert (=> d!1182404 m!4576349))

(declare-fun m!4576435 () Bool)

(assert (=> b!3995811 m!4576435))

(assert (=> b!3995580 d!1182404))

(declare-fun d!1182406 () Bool)

(declare-fun lt!1410552 () List!42856)

(assert (=> d!1182406 (= (++!11172 lt!1410432 lt!1410552) prefix!494)))

(declare-fun e!2477241 () List!42856)

(assert (=> d!1182406 (= lt!1410552 e!2477241)))

(declare-fun c!691371 () Bool)

(assert (=> d!1182406 (= c!691371 ((_ is Cons!42732) lt!1410432))))

(assert (=> d!1182406 (>= (size!31959 prefix!494) (size!31959 lt!1410432))))

(assert (=> d!1182406 (= (getSuffix!2288 prefix!494 lt!1410432) lt!1410552)))

(declare-fun b!3995814 () Bool)

(assert (=> b!3995814 (= e!2477241 (getSuffix!2288 (tail!6230 prefix!494) (t!331991 lt!1410432)))))

(declare-fun b!3995815 () Bool)

(assert (=> b!3995815 (= e!2477241 prefix!494)))

(assert (= (and d!1182406 c!691371) b!3995814))

(assert (= (and d!1182406 (not c!691371)) b!3995815))

(declare-fun m!4576437 () Bool)

(assert (=> d!1182406 m!4576437))

(assert (=> d!1182406 m!4576095))

(assert (=> d!1182406 m!4576093))

(assert (=> b!3995814 m!4576201))

(assert (=> b!3995814 m!4576201))

(declare-fun m!4576439 () Bool)

(assert (=> b!3995814 m!4576439))

(assert (=> b!3995580 d!1182406))

(declare-fun b!3995818 () Bool)

(declare-fun e!2477243 () Bool)

(assert (=> b!3995818 (= e!2477243 (isPrefix!3857 (tail!6230 lt!1410432) (tail!6230 prefix!494)))))

(declare-fun b!3995819 () Bool)

(declare-fun e!2477242 () Bool)

(assert (=> b!3995819 (= e!2477242 (>= (size!31959 prefix!494) (size!31959 lt!1410432)))))

(declare-fun b!3995816 () Bool)

(declare-fun e!2477244 () Bool)

(assert (=> b!3995816 (= e!2477244 e!2477243)))

(declare-fun res!1622556 () Bool)

(assert (=> b!3995816 (=> (not res!1622556) (not e!2477243))))

(assert (=> b!3995816 (= res!1622556 (not ((_ is Nil!42732) prefix!494)))))

(declare-fun d!1182408 () Bool)

(assert (=> d!1182408 e!2477242))

(declare-fun res!1622555 () Bool)

(assert (=> d!1182408 (=> res!1622555 e!2477242)))

(declare-fun lt!1410553 () Bool)

(assert (=> d!1182408 (= res!1622555 (not lt!1410553))))

(assert (=> d!1182408 (= lt!1410553 e!2477244)))

(declare-fun res!1622557 () Bool)

(assert (=> d!1182408 (=> res!1622557 e!2477244)))

(assert (=> d!1182408 (= res!1622557 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182408 (= (isPrefix!3857 lt!1410432 prefix!494) lt!1410553)))

(declare-fun b!3995817 () Bool)

(declare-fun res!1622554 () Bool)

(assert (=> b!3995817 (=> (not res!1622554) (not e!2477243))))

(assert (=> b!3995817 (= res!1622554 (= (head!8498 lt!1410432) (head!8498 prefix!494)))))

(assert (= (and d!1182408 (not res!1622557)) b!3995816))

(assert (= (and b!3995816 res!1622556) b!3995817))

(assert (= (and b!3995817 res!1622554) b!3995818))

(assert (= (and d!1182408 (not res!1622555)) b!3995819))

(assert (=> b!3995818 m!4576173))

(assert (=> b!3995818 m!4576201))

(assert (=> b!3995818 m!4576173))

(assert (=> b!3995818 m!4576201))

(declare-fun m!4576441 () Bool)

(assert (=> b!3995818 m!4576441))

(assert (=> b!3995819 m!4576095))

(assert (=> b!3995819 m!4576093))

(assert (=> b!3995817 m!4576181))

(assert (=> b!3995817 m!4576205))

(assert (=> b!3995580 d!1182408))

(declare-fun d!1182410 () Bool)

(assert (=> d!1182410 (isPrefix!3857 lt!1410432 prefix!494)))

(declare-fun lt!1410556 () Unit!61593)

(declare-fun choose!24084 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> d!1182410 (= lt!1410556 (choose!24084 prefix!494 lt!1410432 lt!1410462))))

(assert (=> d!1182410 (isPrefix!3857 prefix!494 lt!1410462)))

(assert (=> d!1182410 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!435 prefix!494 lt!1410432 lt!1410462) lt!1410556)))

(declare-fun bs!588633 () Bool)

(assert (= bs!588633 d!1182410))

(assert (=> bs!588633 m!4576071))

(declare-fun m!4576443 () Bool)

(assert (=> bs!588633 m!4576443))

(assert (=> bs!588633 m!4576149))

(assert (=> b!3995580 d!1182410))

(declare-fun d!1182414 () Bool)

(declare-fun res!1622562 () Bool)

(declare-fun e!2477247 () Bool)

(assert (=> d!1182414 (=> (not res!1622562) (not e!2477247))))

(assert (=> d!1182414 (= res!1622562 (not (isEmpty!25541 (originalCharacters!7370 token!484))))))

(assert (=> d!1182414 (= (inv!57074 token!484) e!2477247)))

(declare-fun b!3995824 () Bool)

(declare-fun res!1622563 () Bool)

(assert (=> b!3995824 (=> (not res!1622563) (not e!2477247))))

(declare-fun dynLambda!18147 (Int TokenValue!7000) BalanceConc!25556)

(assert (=> b!3995824 (= res!1622563 (= (originalCharacters!7370 token!484) (list!15868 (dynLambda!18147 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (value!213579 token!484)))))))

(declare-fun b!3995825 () Bool)

(assert (=> b!3995825 (= e!2477247 (= (size!31958 token!484) (size!31959 (originalCharacters!7370 token!484))))))

(assert (= (and d!1182414 res!1622562) b!3995824))

(assert (= (and b!3995824 res!1622563) b!3995825))

(declare-fun b_lambda!116625 () Bool)

(assert (=> (not b_lambda!116625) (not b!3995824)))

(declare-fun t!331999 () Bool)

(declare-fun tb!240401 () Bool)

(assert (=> (and b!3995590 (= (toChars!9117 (transformation!6770 (rule!9796 token!484))) (toChars!9117 (transformation!6770 (rule!9796 token!484)))) t!331999) tb!240401))

(declare-fun b!3995838 () Bool)

(declare-fun e!2477256 () Bool)

(declare-fun tp!1216457 () Bool)

(declare-fun inv!57076 (Conc!12981) Bool)

(assert (=> b!3995838 (= e!2477256 (and (inv!57076 (c!691320 (dynLambda!18147 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (value!213579 token!484)))) tp!1216457))))

(declare-fun result!291324 () Bool)

(declare-fun inv!57077 (BalanceConc!25556) Bool)

(assert (=> tb!240401 (= result!291324 (and (inv!57077 (dynLambda!18147 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (value!213579 token!484))) e!2477256))))

(assert (= tb!240401 b!3995838))

(declare-fun m!4576447 () Bool)

(assert (=> b!3995838 m!4576447))

(declare-fun m!4576449 () Bool)

(assert (=> tb!240401 m!4576449))

(assert (=> b!3995824 t!331999))

(declare-fun b_and!306907 () Bool)

(assert (= b_and!306897 (and (=> t!331999 result!291324) b_and!306907)))

(declare-fun tb!240403 () Bool)

(declare-fun t!332001 () Bool)

(assert (=> (and b!3995568 (= (toChars!9117 (transformation!6770 (h!48154 rules!2999))) (toChars!9117 (transformation!6770 (rule!9796 token!484)))) t!332001) tb!240403))

(declare-fun result!291328 () Bool)

(assert (= result!291328 result!291324))

(assert (=> b!3995824 t!332001))

(declare-fun b_and!306909 () Bool)

(assert (= b_and!306901 (and (=> t!332001 result!291328) b_and!306909)))

(declare-fun m!4576451 () Bool)

(assert (=> d!1182414 m!4576451))

(declare-fun m!4576453 () Bool)

(assert (=> b!3995824 m!4576453))

(assert (=> b!3995824 m!4576453))

(declare-fun m!4576455 () Bool)

(assert (=> b!3995824 m!4576455))

(assert (=> b!3995825 m!4575997))

(assert (=> start!376064 d!1182414))

(declare-fun b!3995841 () Bool)

(declare-fun e!2477258 () Bool)

(assert (=> b!3995841 (= e!2477258 (isPrefix!3857 (tail!6230 lt!1410460) (tail!6230 lt!1410462)))))

(declare-fun b!3995842 () Bool)

(declare-fun e!2477257 () Bool)

(assert (=> b!3995842 (= e!2477257 (>= (size!31959 lt!1410462) (size!31959 lt!1410460)))))

(declare-fun b!3995839 () Bool)

(declare-fun e!2477259 () Bool)

(assert (=> b!3995839 (= e!2477259 e!2477258)))

(declare-fun res!1622574 () Bool)

(assert (=> b!3995839 (=> (not res!1622574) (not e!2477258))))

(assert (=> b!3995839 (= res!1622574 (not ((_ is Nil!42732) lt!1410462)))))

(declare-fun d!1182418 () Bool)

(assert (=> d!1182418 e!2477257))

(declare-fun res!1622573 () Bool)

(assert (=> d!1182418 (=> res!1622573 e!2477257)))

(declare-fun lt!1410562 () Bool)

(assert (=> d!1182418 (= res!1622573 (not lt!1410562))))

(assert (=> d!1182418 (= lt!1410562 e!2477259)))

(declare-fun res!1622575 () Bool)

(assert (=> d!1182418 (=> res!1622575 e!2477259)))

(assert (=> d!1182418 (= res!1622575 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182418 (= (isPrefix!3857 lt!1410460 lt!1410462) lt!1410562)))

(declare-fun b!3995840 () Bool)

(declare-fun res!1622572 () Bool)

(assert (=> b!3995840 (=> (not res!1622572) (not e!2477258))))

(assert (=> b!3995840 (= res!1622572 (= (head!8498 lt!1410460) (head!8498 lt!1410462)))))

(assert (= (and d!1182418 (not res!1622575)) b!3995839))

(assert (= (and b!3995839 res!1622574) b!3995840))

(assert (= (and b!3995840 res!1622572) b!3995841))

(assert (= (and d!1182418 (not res!1622573)) b!3995842))

(assert (=> b!3995841 m!4576243))

(assert (=> b!3995841 m!4576175))

(assert (=> b!3995841 m!4576243))

(assert (=> b!3995841 m!4576175))

(declare-fun m!4576457 () Bool)

(assert (=> b!3995841 m!4576457))

(assert (=> b!3995842 m!4576179))

(assert (=> b!3995842 m!4576057))

(assert (=> b!3995840 m!4576249))

(assert (=> b!3995840 m!4576183))

(assert (=> b!3995581 d!1182418))

(declare-fun b!3995845 () Bool)

(declare-fun e!2477261 () Bool)

(assert (=> b!3995845 (= e!2477261 (isPrefix!3857 (tail!6230 lt!1410460) (tail!6230 lt!1410468)))))

(declare-fun b!3995846 () Bool)

(declare-fun e!2477260 () Bool)

(assert (=> b!3995846 (= e!2477260 (>= (size!31959 lt!1410468) (size!31959 lt!1410460)))))

(declare-fun b!3995843 () Bool)

(declare-fun e!2477262 () Bool)

(assert (=> b!3995843 (= e!2477262 e!2477261)))

(declare-fun res!1622578 () Bool)

(assert (=> b!3995843 (=> (not res!1622578) (not e!2477261))))

(assert (=> b!3995843 (= res!1622578 (not ((_ is Nil!42732) lt!1410468)))))

(declare-fun d!1182420 () Bool)

(assert (=> d!1182420 e!2477260))

(declare-fun res!1622577 () Bool)

(assert (=> d!1182420 (=> res!1622577 e!2477260)))

(declare-fun lt!1410563 () Bool)

(assert (=> d!1182420 (= res!1622577 (not lt!1410563))))

(assert (=> d!1182420 (= lt!1410563 e!2477262)))

(declare-fun res!1622579 () Bool)

(assert (=> d!1182420 (=> res!1622579 e!2477262)))

(assert (=> d!1182420 (= res!1622579 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182420 (= (isPrefix!3857 lt!1410460 lt!1410468) lt!1410563)))

(declare-fun b!3995844 () Bool)

(declare-fun res!1622576 () Bool)

(assert (=> b!3995844 (=> (not res!1622576) (not e!2477261))))

(assert (=> b!3995844 (= res!1622576 (= (head!8498 lt!1410460) (head!8498 lt!1410468)))))

(assert (= (and d!1182420 (not res!1622579)) b!3995843))

(assert (= (and b!3995843 res!1622578) b!3995844))

(assert (= (and b!3995844 res!1622576) b!3995845))

(assert (= (and d!1182420 (not res!1622577)) b!3995846))

(assert (=> b!3995845 m!4576243))

(declare-fun m!4576459 () Bool)

(assert (=> b!3995845 m!4576459))

(assert (=> b!3995845 m!4576243))

(assert (=> b!3995845 m!4576459))

(declare-fun m!4576461 () Bool)

(assert (=> b!3995845 m!4576461))

(declare-fun m!4576463 () Bool)

(assert (=> b!3995846 m!4576463))

(assert (=> b!3995846 m!4576057))

(assert (=> b!3995844 m!4576249))

(declare-fun m!4576465 () Bool)

(assert (=> b!3995844 m!4576465))

(assert (=> b!3995581 d!1182420))

(declare-fun d!1182422 () Bool)

(assert (=> d!1182422 (isPrefix!3857 lt!1410460 (++!11172 lt!1410458 lt!1410439))))

(declare-fun lt!1410570 () Unit!61593)

(declare-fun choose!24085 (List!42856 List!42856 List!42856) Unit!61593)

(assert (=> d!1182422 (= lt!1410570 (choose!24085 lt!1410460 lt!1410458 lt!1410439))))

(assert (=> d!1182422 (isPrefix!3857 lt!1410460 lt!1410458)))

(assert (=> d!1182422 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!690 lt!1410460 lt!1410458 lt!1410439) lt!1410570)))

(declare-fun bs!588636 () Bool)

(assert (= bs!588636 d!1182422))

(assert (=> bs!588636 m!4576023))

(assert (=> bs!588636 m!4576023))

(declare-fun m!4576483 () Bool)

(assert (=> bs!588636 m!4576483))

(declare-fun m!4576485 () Bool)

(assert (=> bs!588636 m!4576485))

(assert (=> bs!588636 m!4576107))

(assert (=> b!3995581 d!1182422))

(declare-fun d!1182428 () Bool)

(assert (=> d!1182428 (not (matchR!5652 (regex!6770 (rule!9796 token!484)) lt!1410432))))

(declare-fun lt!1410571 () Unit!61593)

(assert (=> d!1182428 (= lt!1410571 (choose!24079 thiss!21717 rules!2999 (rule!9796 (_1!24098 (v!39543 lt!1410435))) lt!1410460 lt!1410458 lt!1410432 (rule!9796 token!484)))))

(assert (=> d!1182428 (isPrefix!3857 lt!1410460 lt!1410458)))

(assert (=> d!1182428 (= (lemmaMaxPrefixOutputsMaxPrefix!424 thiss!21717 rules!2999 (rule!9796 (_1!24098 (v!39543 lt!1410435))) lt!1410460 lt!1410458 lt!1410432 (rule!9796 token!484)) lt!1410571)))

(declare-fun bs!588637 () Bool)

(assert (= bs!588637 d!1182428))

(assert (=> bs!588637 m!4576109))

(declare-fun m!4576487 () Bool)

(assert (=> bs!588637 m!4576487))

(assert (=> bs!588637 m!4576107))

(assert (=> b!3995558 d!1182428))

(declare-fun b!3995853 () Bool)

(declare-fun res!1622584 () Bool)

(declare-fun e!2477266 () Bool)

(assert (=> b!3995853 (=> (not res!1622584) (not e!2477266))))

(declare-fun lt!1410572 () List!42856)

(assert (=> b!3995853 (= res!1622584 (= (size!31959 lt!1410572) (+ (size!31959 lt!1410432) (size!31959 suffixResult!105))))))

(declare-fun b!3995854 () Bool)

(assert (=> b!3995854 (= e!2477266 (or (not (= suffixResult!105 Nil!42732)) (= lt!1410572 lt!1410432)))))

(declare-fun b!3995851 () Bool)

(declare-fun e!2477267 () List!42856)

(assert (=> b!3995851 (= e!2477267 suffixResult!105)))

(declare-fun d!1182430 () Bool)

(assert (=> d!1182430 e!2477266))

(declare-fun res!1622585 () Bool)

(assert (=> d!1182430 (=> (not res!1622585) (not e!2477266))))

(assert (=> d!1182430 (= res!1622585 (= (content!6484 lt!1410572) ((_ map or) (content!6484 lt!1410432) (content!6484 suffixResult!105))))))

(assert (=> d!1182430 (= lt!1410572 e!2477267)))

(declare-fun c!691372 () Bool)

(assert (=> d!1182430 (= c!691372 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182430 (= (++!11172 lt!1410432 suffixResult!105) lt!1410572)))

(declare-fun b!3995852 () Bool)

(assert (=> b!3995852 (= e!2477267 (Cons!42732 (h!48152 lt!1410432) (++!11172 (t!331991 lt!1410432) suffixResult!105)))))

(assert (= (and d!1182430 c!691372) b!3995851))

(assert (= (and d!1182430 (not c!691372)) b!3995852))

(assert (= (and d!1182430 res!1622585) b!3995853))

(assert (= (and b!3995853 res!1622584) b!3995854))

(declare-fun m!4576489 () Bool)

(assert (=> b!3995853 m!4576489))

(assert (=> b!3995853 m!4576093))

(declare-fun m!4576491 () Bool)

(assert (=> b!3995853 m!4576491))

(declare-fun m!4576493 () Bool)

(assert (=> d!1182430 m!4576493))

(assert (=> d!1182430 m!4576223))

(declare-fun m!4576495 () Bool)

(assert (=> d!1182430 m!4576495))

(declare-fun m!4576497 () Bool)

(assert (=> b!3995852 m!4576497))

(assert (=> b!3995556 d!1182430))

(declare-fun d!1182432 () Bool)

(declare-fun e!2477284 () Bool)

(assert (=> d!1182432 e!2477284))

(declare-fun res!1622598 () Bool)

(assert (=> d!1182432 (=> (not res!1622598) (not e!2477284))))

(declare-fun semiInverseModEq!2904 (Int Int) Bool)

(assert (=> d!1182432 (= res!1622598 (semiInverseModEq!2904 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (toValue!9258 (transformation!6770 (rule!9796 token!484)))))))

(declare-fun Unit!61601 () Unit!61593)

(assert (=> d!1182432 (= (lemmaInv!985 (transformation!6770 (rule!9796 token!484))) Unit!61601)))

(declare-fun b!3995875 () Bool)

(declare-fun equivClasses!2803 (Int Int) Bool)

(assert (=> b!3995875 (= e!2477284 (equivClasses!2803 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (toValue!9258 (transformation!6770 (rule!9796 token!484)))))))

(assert (= (and d!1182432 res!1622598) b!3995875))

(declare-fun m!4576499 () Bool)

(assert (=> d!1182432 m!4576499))

(declare-fun m!4576501 () Bool)

(assert (=> b!3995875 m!4576501))

(assert (=> b!3995556 d!1182432))

(declare-fun d!1182434 () Bool)

(declare-fun res!1622608 () Bool)

(declare-fun e!2477294 () Bool)

(assert (=> d!1182434 (=> (not res!1622608) (not e!2477294))))

(assert (=> d!1182434 (= res!1622608 (validRegex!5298 (regex!6770 (rule!9796 token!484))))))

(assert (=> d!1182434 (= (ruleValid!2702 thiss!21717 (rule!9796 token!484)) e!2477294)))

(declare-fun b!3995889 () Bool)

(declare-fun res!1622609 () Bool)

(assert (=> b!3995889 (=> (not res!1622609) (not e!2477294))))

(assert (=> b!3995889 (= res!1622609 (not (nullable!4097 (regex!6770 (rule!9796 token!484)))))))

(declare-fun b!3995890 () Bool)

(assert (=> b!3995890 (= e!2477294 (not (= (tag!7630 (rule!9796 token!484)) (String!48718 ""))))))

(assert (= (and d!1182434 res!1622608) b!3995889))

(assert (= (and b!3995889 res!1622609) b!3995890))

(declare-fun m!4576503 () Bool)

(assert (=> d!1182434 m!4576503))

(declare-fun m!4576505 () Bool)

(assert (=> b!3995889 m!4576505))

(assert (=> b!3995556 d!1182434))

(declare-fun d!1182436 () Bool)

(assert (=> d!1182436 (ruleValid!2702 thiss!21717 (rule!9796 token!484))))

(declare-fun lt!1410575 () Unit!61593)

(declare-fun choose!24086 (LexerInterface!6359 Rule!13340 List!42858) Unit!61593)

(assert (=> d!1182436 (= lt!1410575 (choose!24086 thiss!21717 (rule!9796 token!484) rules!2999))))

(assert (=> d!1182436 (contains!8502 rules!2999 (rule!9796 token!484))))

(assert (=> d!1182436 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1776 thiss!21717 (rule!9796 token!484) rules!2999) lt!1410575)))

(declare-fun bs!588638 () Bool)

(assert (= bs!588638 d!1182436))

(assert (=> bs!588638 m!4576009))

(declare-fun m!4576513 () Bool)

(assert (=> bs!588638 m!4576513))

(assert (=> bs!588638 m!4576229))

(assert (=> b!3995556 d!1182436))

(declare-fun b!3995903 () Bool)

(declare-fun e!2477302 () Bool)

(assert (=> b!3995903 (= e!2477302 (isPrefix!3857 (tail!6230 lt!1410460) (tail!6230 lt!1410458)))))

(declare-fun b!3995904 () Bool)

(declare-fun e!2477301 () Bool)

(assert (=> b!3995904 (= e!2477301 (>= (size!31959 lt!1410458) (size!31959 lt!1410460)))))

(declare-fun b!3995901 () Bool)

(declare-fun e!2477303 () Bool)

(assert (=> b!3995901 (= e!2477303 e!2477302)))

(declare-fun res!1622614 () Bool)

(assert (=> b!3995901 (=> (not res!1622614) (not e!2477302))))

(assert (=> b!3995901 (= res!1622614 (not ((_ is Nil!42732) lt!1410458)))))

(declare-fun d!1182440 () Bool)

(assert (=> d!1182440 e!2477301))

(declare-fun res!1622613 () Bool)

(assert (=> d!1182440 (=> res!1622613 e!2477301)))

(declare-fun lt!1410576 () Bool)

(assert (=> d!1182440 (= res!1622613 (not lt!1410576))))

(assert (=> d!1182440 (= lt!1410576 e!2477303)))

(declare-fun res!1622615 () Bool)

(assert (=> d!1182440 (=> res!1622615 e!2477303)))

(assert (=> d!1182440 (= res!1622615 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182440 (= (isPrefix!3857 lt!1410460 lt!1410458) lt!1410576)))

(declare-fun b!3995902 () Bool)

(declare-fun res!1622612 () Bool)

(assert (=> b!3995902 (=> (not res!1622612) (not e!2477302))))

(assert (=> b!3995902 (= res!1622612 (= (head!8498 lt!1410460) (head!8498 lt!1410458)))))

(assert (= (and d!1182440 (not res!1622615)) b!3995901))

(assert (= (and b!3995901 res!1622614) b!3995902))

(assert (= (and b!3995902 res!1622612) b!3995903))

(assert (= (and d!1182440 (not res!1622613)) b!3995904))

(assert (=> b!3995903 m!4576243))

(assert (=> b!3995903 m!4576427))

(assert (=> b!3995903 m!4576243))

(assert (=> b!3995903 m!4576427))

(declare-fun m!4576515 () Bool)

(assert (=> b!3995903 m!4576515))

(assert (=> b!3995904 m!4576425))

(assert (=> b!3995904 m!4576057))

(assert (=> b!3995902 m!4576249))

(declare-fun m!4576517 () Bool)

(assert (=> b!3995902 m!4576517))

(assert (=> b!3995557 d!1182440))

(declare-fun d!1182442 () Bool)

(declare-fun e!2477351 () Bool)

(assert (=> d!1182442 e!2477351))

(declare-fun res!1622673 () Bool)

(assert (=> d!1182442 (=> res!1622673 e!2477351)))

(declare-fun lt!1410609 () Option!9184)

(assert (=> d!1182442 (= res!1622673 (isEmpty!25542 lt!1410609))))

(declare-fun e!2477353 () Option!9184)

(assert (=> d!1182442 (= lt!1410609 e!2477353)))

(declare-fun c!691402 () Bool)

(assert (=> d!1182442 (= c!691402 (and ((_ is Cons!42734) rules!2999) ((_ is Nil!42734) (t!331993 rules!2999))))))

(declare-fun lt!1410611 () Unit!61593)

(declare-fun lt!1410612 () Unit!61593)

(assert (=> d!1182442 (= lt!1410611 lt!1410612)))

(assert (=> d!1182442 (isPrefix!3857 lt!1410462 lt!1410462)))

(assert (=> d!1182442 (= lt!1410612 (lemmaIsPrefixRefl!2449 lt!1410462 lt!1410462))))

(declare-fun rulesValidInductive!2464 (LexerInterface!6359 List!42858) Bool)

(assert (=> d!1182442 (rulesValidInductive!2464 thiss!21717 rules!2999)))

(assert (=> d!1182442 (= (maxPrefix!3657 thiss!21717 rules!2999 lt!1410462) lt!1410609)))

(declare-fun b!3995998 () Bool)

(declare-fun res!1622674 () Bool)

(declare-fun e!2477352 () Bool)

(assert (=> b!3995998 (=> (not res!1622674) (not e!2477352))))

(assert (=> b!3995998 (= res!1622674 (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (get!14058 lt!1410609)))) (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410609))))))))

(declare-fun b!3995999 () Bool)

(declare-fun res!1622677 () Bool)

(assert (=> b!3995999 (=> (not res!1622677) (not e!2477352))))

(assert (=> b!3995999 (= res!1622677 (= (++!11172 (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410609)))) (_2!24098 (get!14058 lt!1410609))) lt!1410462))))

(declare-fun b!3996000 () Bool)

(declare-fun res!1622676 () Bool)

(assert (=> b!3996000 (=> (not res!1622676) (not e!2477352))))

(assert (=> b!3996000 (= res!1622676 (= (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410609)))) (originalCharacters!7370 (_1!24098 (get!14058 lt!1410609)))))))

(declare-fun b!3996001 () Bool)

(declare-fun lt!1410613 () Option!9184)

(declare-fun lt!1410610 () Option!9184)

(assert (=> b!3996001 (= e!2477353 (ite (and ((_ is None!9183) lt!1410613) ((_ is None!9183) lt!1410610)) None!9183 (ite ((_ is None!9183) lt!1410610) lt!1410613 (ite ((_ is None!9183) lt!1410613) lt!1410610 (ite (>= (size!31958 (_1!24098 (v!39543 lt!1410613))) (size!31958 (_1!24098 (v!39543 lt!1410610)))) lt!1410613 lt!1410610)))))))

(declare-fun call!285928 () Option!9184)

(assert (=> b!3996001 (= lt!1410613 call!285928)))

(assert (=> b!3996001 (= lt!1410610 (maxPrefix!3657 thiss!21717 (t!331993 rules!2999) lt!1410462))))

(declare-fun b!3996002 () Bool)

(assert (=> b!3996002 (= e!2477352 (contains!8502 rules!2999 (rule!9796 (_1!24098 (get!14058 lt!1410609)))))))

(declare-fun b!3996003 () Bool)

(assert (=> b!3996003 (= e!2477351 e!2477352)))

(declare-fun res!1622672 () Bool)

(assert (=> b!3996003 (=> (not res!1622672) (not e!2477352))))

(declare-fun isDefined!7049 (Option!9184) Bool)

(assert (=> b!3996003 (= res!1622672 (isDefined!7049 lt!1410609))))

(declare-fun b!3996004 () Bool)

(assert (=> b!3996004 (= e!2477353 call!285928)))

(declare-fun b!3996005 () Bool)

(declare-fun res!1622675 () Bool)

(assert (=> b!3996005 (=> (not res!1622675) (not e!2477352))))

(assert (=> b!3996005 (= res!1622675 (< (size!31959 (_2!24098 (get!14058 lt!1410609))) (size!31959 lt!1410462)))))

(declare-fun b!3996006 () Bool)

(declare-fun res!1622671 () Bool)

(assert (=> b!3996006 (=> (not res!1622671) (not e!2477352))))

(assert (=> b!3996006 (= res!1622671 (= (value!213579 (_1!24098 (get!14058 lt!1410609))) (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (get!14058 lt!1410609)))) (seqFromList!5009 (originalCharacters!7370 (_1!24098 (get!14058 lt!1410609)))))))))

(declare-fun bm!285923 () Bool)

(assert (=> bm!285923 (= call!285928 (maxPrefixOneRule!2691 thiss!21717 (h!48154 rules!2999) lt!1410462))))

(assert (= (and d!1182442 c!691402) b!3996004))

(assert (= (and d!1182442 (not c!691402)) b!3996001))

(assert (= (or b!3996004 b!3996001) bm!285923))

(assert (= (and d!1182442 (not res!1622673)) b!3996003))

(assert (= (and b!3996003 res!1622672) b!3996000))

(assert (= (and b!3996000 res!1622676) b!3996005))

(assert (= (and b!3996005 res!1622675) b!3995999))

(assert (= (and b!3995999 res!1622677) b!3996006))

(assert (= (and b!3996006 res!1622671) b!3995998))

(assert (= (and b!3995998 res!1622674) b!3996002))

(declare-fun m!4576631 () Bool)

(assert (=> d!1182442 m!4576631))

(assert (=> d!1182442 m!4575983))

(assert (=> d!1182442 m!4575985))

(declare-fun m!4576633 () Bool)

(assert (=> d!1182442 m!4576633))

(declare-fun m!4576635 () Bool)

(assert (=> b!3996003 m!4576635))

(declare-fun m!4576639 () Bool)

(assert (=> b!3995999 m!4576639))

(declare-fun m!4576643 () Bool)

(assert (=> b!3995999 m!4576643))

(assert (=> b!3995999 m!4576643))

(declare-fun m!4576651 () Bool)

(assert (=> b!3995999 m!4576651))

(assert (=> b!3995999 m!4576651))

(declare-fun m!4576653 () Bool)

(assert (=> b!3995999 m!4576653))

(assert (=> b!3996005 m!4576639))

(declare-fun m!4576655 () Bool)

(assert (=> b!3996005 m!4576655))

(assert (=> b!3996005 m!4576179))

(assert (=> b!3996006 m!4576639))

(declare-fun m!4576657 () Bool)

(assert (=> b!3996006 m!4576657))

(assert (=> b!3996006 m!4576657))

(declare-fun m!4576661 () Bool)

(assert (=> b!3996006 m!4576661))

(assert (=> b!3995998 m!4576639))

(assert (=> b!3995998 m!4576643))

(assert (=> b!3995998 m!4576643))

(assert (=> b!3995998 m!4576651))

(assert (=> b!3995998 m!4576651))

(declare-fun m!4576673 () Bool)

(assert (=> b!3995998 m!4576673))

(assert (=> b!3996002 m!4576639))

(declare-fun m!4576675 () Bool)

(assert (=> b!3996002 m!4576675))

(declare-fun m!4576677 () Bool)

(assert (=> b!3996001 m!4576677))

(assert (=> b!3996000 m!4576639))

(assert (=> b!3996000 m!4576643))

(assert (=> b!3996000 m!4576643))

(assert (=> b!3996000 m!4576651))

(declare-fun m!4576685 () Bool)

(assert (=> bm!285923 m!4576685))

(assert (=> b!3995566 d!1182442))

(declare-fun b!3996035 () Bool)

(declare-fun res!1622694 () Bool)

(declare-fun e!2477368 () Bool)

(assert (=> b!3996035 (=> (not res!1622694) (not e!2477368))))

(declare-fun lt!1410618 () List!42856)

(assert (=> b!3996035 (= res!1622694 (= (size!31959 lt!1410618) (+ (size!31959 prefix!494) (size!31959 suffix!1299))))))

(declare-fun b!3996036 () Bool)

(assert (=> b!3996036 (= e!2477368 (or (not (= suffix!1299 Nil!42732)) (= lt!1410618 prefix!494)))))

(declare-fun b!3996033 () Bool)

(declare-fun e!2477369 () List!42856)

(assert (=> b!3996033 (= e!2477369 suffix!1299)))

(declare-fun d!1182476 () Bool)

(assert (=> d!1182476 e!2477368))

(declare-fun res!1622695 () Bool)

(assert (=> d!1182476 (=> (not res!1622695) (not e!2477368))))

(assert (=> d!1182476 (= res!1622695 (= (content!6484 lt!1410618) ((_ map or) (content!6484 prefix!494) (content!6484 suffix!1299))))))

(assert (=> d!1182476 (= lt!1410618 e!2477369)))

(declare-fun c!691408 () Bool)

(assert (=> d!1182476 (= c!691408 ((_ is Nil!42732) prefix!494))))

(assert (=> d!1182476 (= (++!11172 prefix!494 suffix!1299) lt!1410618)))

(declare-fun b!3996034 () Bool)

(assert (=> b!3996034 (= e!2477369 (Cons!42732 (h!48152 prefix!494) (++!11172 (t!331991 prefix!494) suffix!1299)))))

(assert (= (and d!1182476 c!691408) b!3996033))

(assert (= (and d!1182476 (not c!691408)) b!3996034))

(assert (= (and d!1182476 res!1622695) b!3996035))

(assert (= (and b!3996035 res!1622694) b!3996036))

(declare-fun m!4576699 () Bool)

(assert (=> b!3996035 m!4576699))

(assert (=> b!3996035 m!4576095))

(assert (=> b!3996035 m!4576013))

(declare-fun m!4576701 () Bool)

(assert (=> d!1182476 m!4576701))

(assert (=> d!1182476 m!4576211))

(assert (=> d!1182476 m!4576339))

(declare-fun m!4576703 () Bool)

(assert (=> b!3996034 m!4576703))

(assert (=> b!3995566 d!1182476))

(declare-fun d!1182482 () Bool)

(declare-fun lt!1410620 () Int)

(assert (=> d!1182482 (>= lt!1410620 0)))

(declare-fun e!2477370 () Int)

(assert (=> d!1182482 (= lt!1410620 e!2477370)))

(declare-fun c!691409 () Bool)

(assert (=> d!1182482 (= c!691409 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182482 (= (size!31959 lt!1410432) lt!1410620)))

(declare-fun b!3996037 () Bool)

(assert (=> b!3996037 (= e!2477370 0)))

(declare-fun b!3996038 () Bool)

(assert (=> b!3996038 (= e!2477370 (+ 1 (size!31959 (t!331991 lt!1410432))))))

(assert (= (and d!1182482 c!691409) b!3996037))

(assert (= (and d!1182482 (not c!691409)) b!3996038))

(declare-fun m!4576705 () Bool)

(assert (=> b!3996038 m!4576705))

(assert (=> b!3995564 d!1182482))

(declare-fun d!1182484 () Bool)

(declare-fun lt!1410621 () Int)

(assert (=> d!1182484 (>= lt!1410621 0)))

(declare-fun e!2477371 () Int)

(assert (=> d!1182484 (= lt!1410621 e!2477371)))

(declare-fun c!691410 () Bool)

(assert (=> d!1182484 (= c!691410 ((_ is Nil!42732) prefix!494))))

(assert (=> d!1182484 (= (size!31959 prefix!494) lt!1410621)))

(declare-fun b!3996039 () Bool)

(assert (=> b!3996039 (= e!2477371 0)))

(declare-fun b!3996040 () Bool)

(assert (=> b!3996040 (= e!2477371 (+ 1 (size!31959 (t!331991 prefix!494))))))

(assert (= (and d!1182484 c!691410) b!3996039))

(assert (= (and d!1182484 (not c!691410)) b!3996040))

(declare-fun m!4576707 () Bool)

(assert (=> b!3996040 m!4576707))

(assert (=> b!3995564 d!1182484))

(declare-fun d!1182486 () Bool)

(declare-fun list!15869 (Conc!12981) List!42856)

(assert (=> d!1182486 (= (list!15868 (charsOf!4586 token!484)) (list!15869 (c!691320 (charsOf!4586 token!484))))))

(declare-fun bs!588644 () Bool)

(assert (= bs!588644 d!1182486))

(declare-fun m!4576709 () Bool)

(assert (=> bs!588644 m!4576709))

(assert (=> b!3995564 d!1182486))

(declare-fun d!1182490 () Bool)

(declare-fun lt!1410624 () BalanceConc!25556)

(assert (=> d!1182490 (= (list!15868 lt!1410624) (originalCharacters!7370 token!484))))

(assert (=> d!1182490 (= lt!1410624 (dynLambda!18147 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (value!213579 token!484)))))

(assert (=> d!1182490 (= (charsOf!4586 token!484) lt!1410624)))

(declare-fun b_lambda!116627 () Bool)

(assert (=> (not b_lambda!116627) (not d!1182490)))

(assert (=> d!1182490 t!331999))

(declare-fun b_and!306911 () Bool)

(assert (= b_and!306907 (and (=> t!331999 result!291324) b_and!306911)))

(assert (=> d!1182490 t!332001))

(declare-fun b_and!306913 () Bool)

(assert (= b_and!306909 (and (=> t!332001 result!291328) b_and!306913)))

(declare-fun m!4576715 () Bool)

(assert (=> d!1182490 m!4576715))

(assert (=> d!1182490 m!4576453))

(assert (=> b!3995564 d!1182490))

(declare-fun b!3996050 () Bool)

(declare-fun res!1622701 () Bool)

(declare-fun e!2477377 () Bool)

(assert (=> b!3996050 (=> (not res!1622701) (not e!2477377))))

(declare-fun lt!1410626 () List!42856)

(assert (=> b!3996050 (= res!1622701 (= (size!31959 lt!1410626) (+ (size!31959 lt!1410432) (size!31959 lt!1410453))))))

(declare-fun b!3996051 () Bool)

(assert (=> b!3996051 (= e!2477377 (or (not (= lt!1410453 Nil!42732)) (= lt!1410626 lt!1410432)))))

(declare-fun b!3996048 () Bool)

(declare-fun e!2477378 () List!42856)

(assert (=> b!3996048 (= e!2477378 lt!1410453)))

(declare-fun d!1182494 () Bool)

(assert (=> d!1182494 e!2477377))

(declare-fun res!1622702 () Bool)

(assert (=> d!1182494 (=> (not res!1622702) (not e!2477377))))

(assert (=> d!1182494 (= res!1622702 (= (content!6484 lt!1410626) ((_ map or) (content!6484 lt!1410432) (content!6484 lt!1410453))))))

(assert (=> d!1182494 (= lt!1410626 e!2477378)))

(declare-fun c!691412 () Bool)

(assert (=> d!1182494 (= c!691412 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182494 (= (++!11172 lt!1410432 lt!1410453) lt!1410626)))

(declare-fun b!3996049 () Bool)

(assert (=> b!3996049 (= e!2477378 (Cons!42732 (h!48152 lt!1410432) (++!11172 (t!331991 lt!1410432) lt!1410453)))))

(assert (= (and d!1182494 c!691412) b!3996048))

(assert (= (and d!1182494 (not c!691412)) b!3996049))

(assert (= (and d!1182494 res!1622702) b!3996050))

(assert (= (and b!3996050 res!1622701) b!3996051))

(declare-fun m!4576725 () Bool)

(assert (=> b!3996050 m!4576725))

(assert (=> b!3996050 m!4576093))

(declare-fun m!4576729 () Bool)

(assert (=> b!3996050 m!4576729))

(declare-fun m!4576731 () Bool)

(assert (=> d!1182494 m!4576731))

(assert (=> d!1182494 m!4576223))

(declare-fun m!4576733 () Bool)

(assert (=> d!1182494 m!4576733))

(declare-fun m!4576735 () Bool)

(assert (=> b!3996049 m!4576735))

(assert (=> b!3995565 d!1182494))

(declare-fun d!1182498 () Bool)

(declare-fun lt!1410627 () List!42856)

(assert (=> d!1182498 (= (++!11172 lt!1410432 lt!1410627) lt!1410462)))

(declare-fun e!2477379 () List!42856)

(assert (=> d!1182498 (= lt!1410627 e!2477379)))

(declare-fun c!691413 () Bool)

(assert (=> d!1182498 (= c!691413 ((_ is Cons!42732) lt!1410432))))

(assert (=> d!1182498 (>= (size!31959 lt!1410462) (size!31959 lt!1410432))))

(assert (=> d!1182498 (= (getSuffix!2288 lt!1410462 lt!1410432) lt!1410627)))

(declare-fun b!3996052 () Bool)

(assert (=> b!3996052 (= e!2477379 (getSuffix!2288 (tail!6230 lt!1410462) (t!331991 lt!1410432)))))

(declare-fun b!3996053 () Bool)

(assert (=> b!3996053 (= e!2477379 lt!1410462)))

(assert (= (and d!1182498 c!691413) b!3996052))

(assert (= (and d!1182498 (not c!691413)) b!3996053))

(declare-fun m!4576737 () Bool)

(assert (=> d!1182498 m!4576737))

(assert (=> d!1182498 m!4576179))

(assert (=> d!1182498 m!4576093))

(assert (=> b!3996052 m!4576175))

(assert (=> b!3996052 m!4576175))

(declare-fun m!4576739 () Bool)

(assert (=> b!3996052 m!4576739))

(assert (=> b!3995565 d!1182498))

(declare-fun b!3996056 () Bool)

(declare-fun e!2477381 () Bool)

(assert (=> b!3996056 (= e!2477381 (isPrefix!3857 (tail!6230 lt!1410462) (tail!6230 lt!1410462)))))

(declare-fun b!3996057 () Bool)

(declare-fun e!2477380 () Bool)

(assert (=> b!3996057 (= e!2477380 (>= (size!31959 lt!1410462) (size!31959 lt!1410462)))))

(declare-fun b!3996054 () Bool)

(declare-fun e!2477382 () Bool)

(assert (=> b!3996054 (= e!2477382 e!2477381)))

(declare-fun res!1622705 () Bool)

(assert (=> b!3996054 (=> (not res!1622705) (not e!2477381))))

(assert (=> b!3996054 (= res!1622705 (not ((_ is Nil!42732) lt!1410462)))))

(declare-fun d!1182500 () Bool)

(assert (=> d!1182500 e!2477380))

(declare-fun res!1622704 () Bool)

(assert (=> d!1182500 (=> res!1622704 e!2477380)))

(declare-fun lt!1410628 () Bool)

(assert (=> d!1182500 (= res!1622704 (not lt!1410628))))

(assert (=> d!1182500 (= lt!1410628 e!2477382)))

(declare-fun res!1622706 () Bool)

(assert (=> d!1182500 (=> res!1622706 e!2477382)))

(assert (=> d!1182500 (= res!1622706 ((_ is Nil!42732) lt!1410462))))

(assert (=> d!1182500 (= (isPrefix!3857 lt!1410462 lt!1410462) lt!1410628)))

(declare-fun b!3996055 () Bool)

(declare-fun res!1622703 () Bool)

(assert (=> b!3996055 (=> (not res!1622703) (not e!2477381))))

(assert (=> b!3996055 (= res!1622703 (= (head!8498 lt!1410462) (head!8498 lt!1410462)))))

(assert (= (and d!1182500 (not res!1622706)) b!3996054))

(assert (= (and b!3996054 res!1622705) b!3996055))

(assert (= (and b!3996055 res!1622703) b!3996056))

(assert (= (and d!1182500 (not res!1622704)) b!3996057))

(assert (=> b!3996056 m!4576175))

(assert (=> b!3996056 m!4576175))

(assert (=> b!3996056 m!4576175))

(assert (=> b!3996056 m!4576175))

(declare-fun m!4576741 () Bool)

(assert (=> b!3996056 m!4576741))

(assert (=> b!3996057 m!4576179))

(assert (=> b!3996057 m!4576179))

(assert (=> b!3996055 m!4576183))

(assert (=> b!3996055 m!4576183))

(assert (=> b!3995565 d!1182500))

(declare-fun d!1182502 () Bool)

(assert (=> d!1182502 (isPrefix!3857 lt!1410462 lt!1410462)))

(declare-fun lt!1410631 () Unit!61593)

(declare-fun choose!24088 (List!42856 List!42856) Unit!61593)

(assert (=> d!1182502 (= lt!1410631 (choose!24088 lt!1410462 lt!1410462))))

(assert (=> d!1182502 (= (lemmaIsPrefixRefl!2449 lt!1410462 lt!1410462) lt!1410631)))

(declare-fun bs!588645 () Bool)

(assert (= bs!588645 d!1182502))

(assert (=> bs!588645 m!4575983))

(declare-fun m!4576743 () Bool)

(assert (=> bs!588645 m!4576743))

(assert (=> b!3995565 d!1182502))

(declare-fun d!1182504 () Bool)

(declare-fun res!1622716 () Bool)

(declare-fun e!2477390 () Bool)

(assert (=> d!1182504 (=> (not res!1622716) (not e!2477390))))

(declare-fun rulesValid!2638 (LexerInterface!6359 List!42858) Bool)

(assert (=> d!1182504 (= res!1622716 (rulesValid!2638 thiss!21717 rules!2999))))

(assert (=> d!1182504 (= (rulesInvariant!5702 thiss!21717 rules!2999) e!2477390)))

(declare-fun b!3996067 () Bool)

(declare-datatypes ((List!42859 0))(
  ( (Nil!42735) (Cons!42735 (h!48155 String!48717) (t!332042 List!42859)) )
))
(declare-fun noDuplicateTag!2639 (LexerInterface!6359 List!42858 List!42859) Bool)

(assert (=> b!3996067 (= e!2477390 (noDuplicateTag!2639 thiss!21717 rules!2999 Nil!42735))))

(assert (= (and d!1182504 res!1622716) b!3996067))

(declare-fun m!4576745 () Bool)

(assert (=> d!1182504 m!4576745))

(declare-fun m!4576747 () Bool)

(assert (=> b!3996067 m!4576747))

(assert (=> b!3995586 d!1182504))

(declare-fun b!3996072 () Bool)

(declare-fun res!1622719 () Bool)

(declare-fun e!2477392 () Bool)

(assert (=> b!3996072 (=> (not res!1622719) (not e!2477392))))

(declare-fun lt!1410632 () List!42856)

(assert (=> b!3996072 (= res!1622719 (= (size!31959 lt!1410632) (+ (size!31959 prefix!494) (size!31959 lt!1410444))))))

(declare-fun b!3996073 () Bool)

(assert (=> b!3996073 (= e!2477392 (or (not (= lt!1410444 Nil!42732)) (= lt!1410632 prefix!494)))))

(declare-fun b!3996070 () Bool)

(declare-fun e!2477393 () List!42856)

(assert (=> b!3996070 (= e!2477393 lt!1410444)))

(declare-fun d!1182508 () Bool)

(assert (=> d!1182508 e!2477392))

(declare-fun res!1622720 () Bool)

(assert (=> d!1182508 (=> (not res!1622720) (not e!2477392))))

(assert (=> d!1182508 (= res!1622720 (= (content!6484 lt!1410632) ((_ map or) (content!6484 prefix!494) (content!6484 lt!1410444))))))

(assert (=> d!1182508 (= lt!1410632 e!2477393)))

(declare-fun c!691414 () Bool)

(assert (=> d!1182508 (= c!691414 ((_ is Nil!42732) prefix!494))))

(assert (=> d!1182508 (= (++!11172 prefix!494 lt!1410444) lt!1410632)))

(declare-fun b!3996071 () Bool)

(assert (=> b!3996071 (= e!2477393 (Cons!42732 (h!48152 prefix!494) (++!11172 (t!331991 prefix!494) lt!1410444)))))

(assert (= (and d!1182508 c!691414) b!3996070))

(assert (= (and d!1182508 (not c!691414)) b!3996071))

(assert (= (and d!1182508 res!1622720) b!3996072))

(assert (= (and b!3996072 res!1622719) b!3996073))

(declare-fun m!4576753 () Bool)

(assert (=> b!3996072 m!4576753))

(assert (=> b!3996072 m!4576095))

(declare-fun m!4576755 () Bool)

(assert (=> b!3996072 m!4576755))

(declare-fun m!4576757 () Bool)

(assert (=> d!1182508 m!4576757))

(assert (=> d!1182508 m!4576211))

(declare-fun m!4576759 () Bool)

(assert (=> d!1182508 m!4576759))

(declare-fun m!4576761 () Bool)

(assert (=> b!3996071 m!4576761))

(assert (=> b!3995563 d!1182508))

(declare-fun b!3996076 () Bool)

(declare-fun res!1622721 () Bool)

(declare-fun e!2477394 () Bool)

(assert (=> b!3996076 (=> (not res!1622721) (not e!2477394))))

(declare-fun lt!1410633 () List!42856)

(assert (=> b!3996076 (= res!1622721 (= (size!31959 lt!1410633) (+ (size!31959 lt!1410458) (size!31959 lt!1410439))))))

(declare-fun b!3996077 () Bool)

(assert (=> b!3996077 (= e!2477394 (or (not (= lt!1410439 Nil!42732)) (= lt!1410633 lt!1410458)))))

(declare-fun b!3996074 () Bool)

(declare-fun e!2477395 () List!42856)

(assert (=> b!3996074 (= e!2477395 lt!1410439)))

(declare-fun d!1182512 () Bool)

(assert (=> d!1182512 e!2477394))

(declare-fun res!1622722 () Bool)

(assert (=> d!1182512 (=> (not res!1622722) (not e!2477394))))

(assert (=> d!1182512 (= res!1622722 (= (content!6484 lt!1410633) ((_ map or) (content!6484 lt!1410458) (content!6484 lt!1410439))))))

(assert (=> d!1182512 (= lt!1410633 e!2477395)))

(declare-fun c!691415 () Bool)

(assert (=> d!1182512 (= c!691415 ((_ is Nil!42732) lt!1410458))))

(assert (=> d!1182512 (= (++!11172 lt!1410458 lt!1410439) lt!1410633)))

(declare-fun b!3996075 () Bool)

(assert (=> b!3996075 (= e!2477395 (Cons!42732 (h!48152 lt!1410458) (++!11172 (t!331991 lt!1410458) lt!1410439)))))

(assert (= (and d!1182512 c!691415) b!3996074))

(assert (= (and d!1182512 (not c!691415)) b!3996075))

(assert (= (and d!1182512 res!1622722) b!3996076))

(assert (= (and b!3996076 res!1622721) b!3996077))

(declare-fun m!4576763 () Bool)

(assert (=> b!3996076 m!4576763))

(assert (=> b!3996076 m!4576425))

(assert (=> b!3996076 m!4576393))

(declare-fun m!4576765 () Bool)

(assert (=> d!1182512 m!4576765))

(declare-fun m!4576767 () Bool)

(assert (=> d!1182512 m!4576767))

(assert (=> d!1182512 m!4576397))

(declare-fun m!4576769 () Bool)

(assert (=> b!3996075 m!4576769))

(assert (=> b!3995563 d!1182512))

(declare-fun d!1182514 () Bool)

(assert (=> d!1182514 (= (++!11172 (++!11172 prefix!494 newSuffix!27) lt!1410439) (++!11172 prefix!494 (++!11172 newSuffix!27 lt!1410439)))))

(declare-fun lt!1410634 () Unit!61593)

(assert (=> d!1182514 (= lt!1410634 (choose!24081 prefix!494 newSuffix!27 lt!1410439))))

(assert (=> d!1182514 (= (lemmaConcatAssociativity!2492 prefix!494 newSuffix!27 lt!1410439) lt!1410634)))

(declare-fun bs!588646 () Bool)

(assert (= bs!588646 d!1182514))

(declare-fun m!4576771 () Bool)

(assert (=> bs!588646 m!4576771))

(assert (=> bs!588646 m!4576145))

(declare-fun m!4576773 () Bool)

(assert (=> bs!588646 m!4576773))

(assert (=> bs!588646 m!4576145))

(assert (=> bs!588646 m!4576133))

(assert (=> bs!588646 m!4576133))

(declare-fun m!4576775 () Bool)

(assert (=> bs!588646 m!4576775))

(assert (=> b!3995563 d!1182514))

(declare-fun d!1182516 () Bool)

(declare-fun e!2477396 () Bool)

(assert (=> d!1182516 e!2477396))

(declare-fun res!1622725 () Bool)

(assert (=> d!1182516 (=> res!1622725 e!2477396)))

(declare-fun lt!1410635 () Option!9184)

(assert (=> d!1182516 (= res!1622725 (isEmpty!25542 lt!1410635))))

(declare-fun e!2477398 () Option!9184)

(assert (=> d!1182516 (= lt!1410635 e!2477398)))

(declare-fun c!691416 () Bool)

(assert (=> d!1182516 (= c!691416 (and ((_ is Cons!42734) rules!2999) ((_ is Nil!42734) (t!331993 rules!2999))))))

(declare-fun lt!1410637 () Unit!61593)

(declare-fun lt!1410638 () Unit!61593)

(assert (=> d!1182516 (= lt!1410637 lt!1410638)))

(assert (=> d!1182516 (isPrefix!3857 lt!1410458 lt!1410458)))

(assert (=> d!1182516 (= lt!1410638 (lemmaIsPrefixRefl!2449 lt!1410458 lt!1410458))))

(assert (=> d!1182516 (rulesValidInductive!2464 thiss!21717 rules!2999)))

(assert (=> d!1182516 (= (maxPrefix!3657 thiss!21717 rules!2999 lt!1410458) lt!1410635)))

(declare-fun b!3996078 () Bool)

(declare-fun res!1622726 () Bool)

(declare-fun e!2477397 () Bool)

(assert (=> b!3996078 (=> (not res!1622726) (not e!2477397))))

(assert (=> b!3996078 (= res!1622726 (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (get!14058 lt!1410635)))) (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410635))))))))

(declare-fun b!3996079 () Bool)

(declare-fun res!1622729 () Bool)

(assert (=> b!3996079 (=> (not res!1622729) (not e!2477397))))

(assert (=> b!3996079 (= res!1622729 (= (++!11172 (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410635)))) (_2!24098 (get!14058 lt!1410635))) lt!1410458))))

(declare-fun b!3996080 () Bool)

(declare-fun res!1622728 () Bool)

(assert (=> b!3996080 (=> (not res!1622728) (not e!2477397))))

(assert (=> b!3996080 (= res!1622728 (= (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410635)))) (originalCharacters!7370 (_1!24098 (get!14058 lt!1410635)))))))

(declare-fun b!3996081 () Bool)

(declare-fun lt!1410639 () Option!9184)

(declare-fun lt!1410636 () Option!9184)

(assert (=> b!3996081 (= e!2477398 (ite (and ((_ is None!9183) lt!1410639) ((_ is None!9183) lt!1410636)) None!9183 (ite ((_ is None!9183) lt!1410636) lt!1410639 (ite ((_ is None!9183) lt!1410639) lt!1410636 (ite (>= (size!31958 (_1!24098 (v!39543 lt!1410639))) (size!31958 (_1!24098 (v!39543 lt!1410636)))) lt!1410639 lt!1410636)))))))

(declare-fun call!285930 () Option!9184)

(assert (=> b!3996081 (= lt!1410639 call!285930)))

(assert (=> b!3996081 (= lt!1410636 (maxPrefix!3657 thiss!21717 (t!331993 rules!2999) lt!1410458))))

(declare-fun b!3996082 () Bool)

(assert (=> b!3996082 (= e!2477397 (contains!8502 rules!2999 (rule!9796 (_1!24098 (get!14058 lt!1410635)))))))

(declare-fun b!3996083 () Bool)

(assert (=> b!3996083 (= e!2477396 e!2477397)))

(declare-fun res!1622724 () Bool)

(assert (=> b!3996083 (=> (not res!1622724) (not e!2477397))))

(assert (=> b!3996083 (= res!1622724 (isDefined!7049 lt!1410635))))

(declare-fun b!3996084 () Bool)

(assert (=> b!3996084 (= e!2477398 call!285930)))

(declare-fun b!3996085 () Bool)

(declare-fun res!1622727 () Bool)

(assert (=> b!3996085 (=> (not res!1622727) (not e!2477397))))

(assert (=> b!3996085 (= res!1622727 (< (size!31959 (_2!24098 (get!14058 lt!1410635))) (size!31959 lt!1410458)))))

(declare-fun b!3996086 () Bool)

(declare-fun res!1622723 () Bool)

(assert (=> b!3996086 (=> (not res!1622723) (not e!2477397))))

(assert (=> b!3996086 (= res!1622723 (= (value!213579 (_1!24098 (get!14058 lt!1410635))) (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (get!14058 lt!1410635)))) (seqFromList!5009 (originalCharacters!7370 (_1!24098 (get!14058 lt!1410635)))))))))

(declare-fun bm!285925 () Bool)

(assert (=> bm!285925 (= call!285930 (maxPrefixOneRule!2691 thiss!21717 (h!48154 rules!2999) lt!1410458))))

(assert (= (and d!1182516 c!691416) b!3996084))

(assert (= (and d!1182516 (not c!691416)) b!3996081))

(assert (= (or b!3996084 b!3996081) bm!285925))

(assert (= (and d!1182516 (not res!1622725)) b!3996083))

(assert (= (and b!3996083 res!1622724) b!3996080))

(assert (= (and b!3996080 res!1622728) b!3996085))

(assert (= (and b!3996085 res!1622727) b!3996079))

(assert (= (and b!3996079 res!1622729) b!3996086))

(assert (= (and b!3996086 res!1622723) b!3996078))

(assert (= (and b!3996078 res!1622726) b!3996082))

(declare-fun m!4576787 () Bool)

(assert (=> d!1182516 m!4576787))

(declare-fun m!4576789 () Bool)

(assert (=> d!1182516 m!4576789))

(declare-fun m!4576791 () Bool)

(assert (=> d!1182516 m!4576791))

(assert (=> d!1182516 m!4576633))

(declare-fun m!4576793 () Bool)

(assert (=> b!3996083 m!4576793))

(declare-fun m!4576795 () Bool)

(assert (=> b!3996079 m!4576795))

(declare-fun m!4576799 () Bool)

(assert (=> b!3996079 m!4576799))

(assert (=> b!3996079 m!4576799))

(declare-fun m!4576803 () Bool)

(assert (=> b!3996079 m!4576803))

(assert (=> b!3996079 m!4576803))

(declare-fun m!4576805 () Bool)

(assert (=> b!3996079 m!4576805))

(assert (=> b!3996085 m!4576795))

(declare-fun m!4576807 () Bool)

(assert (=> b!3996085 m!4576807))

(assert (=> b!3996085 m!4576425))

(assert (=> b!3996086 m!4576795))

(declare-fun m!4576809 () Bool)

(assert (=> b!3996086 m!4576809))

(assert (=> b!3996086 m!4576809))

(declare-fun m!4576813 () Bool)

(assert (=> b!3996086 m!4576813))

(assert (=> b!3996078 m!4576795))

(assert (=> b!3996078 m!4576799))

(assert (=> b!3996078 m!4576799))

(assert (=> b!3996078 m!4576803))

(assert (=> b!3996078 m!4576803))

(declare-fun m!4576815 () Bool)

(assert (=> b!3996078 m!4576815))

(assert (=> b!3996082 m!4576795))

(declare-fun m!4576817 () Bool)

(assert (=> b!3996082 m!4576817))

(declare-fun m!4576819 () Bool)

(assert (=> b!3996081 m!4576819))

(assert (=> b!3996080 m!4576795))

(assert (=> b!3996080 m!4576799))

(assert (=> b!3996080 m!4576799))

(assert (=> b!3996080 m!4576803))

(declare-fun m!4576821 () Bool)

(assert (=> bm!285925 m!4576821))

(assert (=> b!3995584 d!1182516))

(declare-fun d!1182526 () Bool)

(assert (=> d!1182526 (= suffixResult!105 lt!1410453)))

(declare-fun lt!1410646 () Unit!61593)

(assert (=> d!1182526 (= lt!1410646 (choose!24077 lt!1410432 suffixResult!105 lt!1410432 lt!1410453 lt!1410462))))

(assert (=> d!1182526 (isPrefix!3857 lt!1410432 lt!1410462)))

(assert (=> d!1182526 (= (lemmaSamePrefixThenSameSuffix!2044 lt!1410432 suffixResult!105 lt!1410432 lt!1410453 lt!1410462) lt!1410646)))

(declare-fun bs!588648 () Bool)

(assert (= bs!588648 d!1182526))

(declare-fun m!4576823 () Bool)

(assert (=> bs!588648 m!4576823))

(assert (=> bs!588648 m!4576153))

(assert (=> b!3995584 d!1182526))

(declare-fun b!3996099 () Bool)

(declare-fun e!2477406 () Bool)

(assert (=> b!3996099 (= e!2477406 (isPrefix!3857 (tail!6230 lt!1410432) (tail!6230 lt!1410443)))))

(declare-fun b!3996100 () Bool)

(declare-fun e!2477405 () Bool)

(assert (=> b!3996100 (= e!2477405 (>= (size!31959 lt!1410443) (size!31959 lt!1410432)))))

(declare-fun b!3996097 () Bool)

(declare-fun e!2477407 () Bool)

(assert (=> b!3996097 (= e!2477407 e!2477406)))

(declare-fun res!1622738 () Bool)

(assert (=> b!3996097 (=> (not res!1622738) (not e!2477406))))

(assert (=> b!3996097 (= res!1622738 (not ((_ is Nil!42732) lt!1410443)))))

(declare-fun d!1182528 () Bool)

(assert (=> d!1182528 e!2477405))

(declare-fun res!1622737 () Bool)

(assert (=> d!1182528 (=> res!1622737 e!2477405)))

(declare-fun lt!1410647 () Bool)

(assert (=> d!1182528 (= res!1622737 (not lt!1410647))))

(assert (=> d!1182528 (= lt!1410647 e!2477407)))

(declare-fun res!1622739 () Bool)

(assert (=> d!1182528 (=> res!1622739 e!2477407)))

(assert (=> d!1182528 (= res!1622739 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182528 (= (isPrefix!3857 lt!1410432 lt!1410443) lt!1410647)))

(declare-fun b!3996098 () Bool)

(declare-fun res!1622736 () Bool)

(assert (=> b!3996098 (=> (not res!1622736) (not e!2477406))))

(assert (=> b!3996098 (= res!1622736 (= (head!8498 lt!1410432) (head!8498 lt!1410443)))))

(assert (= (and d!1182528 (not res!1622739)) b!3996097))

(assert (= (and b!3996097 res!1622738) b!3996098))

(assert (= (and b!3996098 res!1622736) b!3996099))

(assert (= (and d!1182528 (not res!1622737)) b!3996100))

(assert (=> b!3996099 m!4576173))

(declare-fun m!4576825 () Bool)

(assert (=> b!3996099 m!4576825))

(assert (=> b!3996099 m!4576173))

(assert (=> b!3996099 m!4576825))

(declare-fun m!4576827 () Bool)

(assert (=> b!3996099 m!4576827))

(declare-fun m!4576829 () Bool)

(assert (=> b!3996100 m!4576829))

(assert (=> b!3996100 m!4576093))

(assert (=> b!3996098 m!4576181))

(declare-fun m!4576831 () Bool)

(assert (=> b!3996098 m!4576831))

(assert (=> b!3995584 d!1182528))

(declare-fun d!1182530 () Bool)

(assert (=> d!1182530 (isPrefix!3857 lt!1410432 (++!11172 lt!1410432 lt!1410453))))

(declare-fun lt!1410650 () Unit!61593)

(assert (=> d!1182530 (= lt!1410650 (choose!24076 lt!1410432 lt!1410453))))

(assert (=> d!1182530 (= (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410432 lt!1410453) lt!1410650)))

(declare-fun bs!588649 () Bool)

(assert (= bs!588649 d!1182530))

(assert (=> bs!588649 m!4575979))

(assert (=> bs!588649 m!4575979))

(declare-fun m!4576833 () Bool)

(assert (=> bs!588649 m!4576833))

(declare-fun m!4576835 () Bool)

(assert (=> bs!588649 m!4576835))

(assert (=> b!3995584 d!1182530))

(declare-fun b!3996103 () Bool)

(declare-fun e!2477409 () Bool)

(assert (=> b!3996103 (= e!2477409 (isPrefix!3857 (tail!6230 lt!1410460) (tail!6230 lt!1410430)))))

(declare-fun b!3996104 () Bool)

(declare-fun e!2477408 () Bool)

(assert (=> b!3996104 (= e!2477408 (>= (size!31959 lt!1410430) (size!31959 lt!1410460)))))

(declare-fun b!3996101 () Bool)

(declare-fun e!2477410 () Bool)

(assert (=> b!3996101 (= e!2477410 e!2477409)))

(declare-fun res!1622742 () Bool)

(assert (=> b!3996101 (=> (not res!1622742) (not e!2477409))))

(assert (=> b!3996101 (= res!1622742 (not ((_ is Nil!42732) lt!1410430)))))

(declare-fun d!1182532 () Bool)

(assert (=> d!1182532 e!2477408))

(declare-fun res!1622741 () Bool)

(assert (=> d!1182532 (=> res!1622741 e!2477408)))

(declare-fun lt!1410651 () Bool)

(assert (=> d!1182532 (= res!1622741 (not lt!1410651))))

(assert (=> d!1182532 (= lt!1410651 e!2477410)))

(declare-fun res!1622743 () Bool)

(assert (=> d!1182532 (=> res!1622743 e!2477410)))

(assert (=> d!1182532 (= res!1622743 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182532 (= (isPrefix!3857 lt!1410460 lt!1410430) lt!1410651)))

(declare-fun b!3996102 () Bool)

(declare-fun res!1622740 () Bool)

(assert (=> b!3996102 (=> (not res!1622740) (not e!2477409))))

(assert (=> b!3996102 (= res!1622740 (= (head!8498 lt!1410460) (head!8498 lt!1410430)))))

(assert (= (and d!1182532 (not res!1622743)) b!3996101))

(assert (= (and b!3996101 res!1622742) b!3996102))

(assert (= (and b!3996102 res!1622740) b!3996103))

(assert (= (and d!1182532 (not res!1622741)) b!3996104))

(assert (=> b!3996103 m!4576243))

(declare-fun m!4576837 () Bool)

(assert (=> b!3996103 m!4576837))

(assert (=> b!3996103 m!4576243))

(assert (=> b!3996103 m!4576837))

(declare-fun m!4576839 () Bool)

(assert (=> b!3996103 m!4576839))

(declare-fun m!4576841 () Bool)

(assert (=> b!3996104 m!4576841))

(assert (=> b!3996104 m!4576057))

(assert (=> b!3996102 m!4576249))

(declare-fun m!4576843 () Bool)

(assert (=> b!3996102 m!4576843))

(assert (=> b!3995571 d!1182532))

(declare-fun d!1182534 () Bool)

(assert (=> d!1182534 (= (maxPrefixOneRule!2691 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))) lt!1410458) (Some!9183 (tuple2!41929 (Token!12679 (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (seqFromList!5009 lt!1410460)) (rule!9796 (_1!24098 (v!39543 lt!1410435))) (size!31959 lt!1410460) lt!1410460) (_2!24098 (v!39543 lt!1410435)))))))

(declare-fun lt!1410654 () Unit!61593)

(assert (=> d!1182534 (= lt!1410654 (choose!24080 thiss!21717 rules!2999 lt!1410460 lt!1410458 (_2!24098 (v!39543 lt!1410435)) (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> d!1182534 (not (isEmpty!25540 rules!2999))))

(assert (=> d!1182534 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1513 thiss!21717 rules!2999 lt!1410460 lt!1410458 (_2!24098 (v!39543 lt!1410435)) (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410654)))

(declare-fun bs!588651 () Bool)

(assert (= bs!588651 d!1182534))

(assert (=> bs!588651 m!4576049))

(assert (=> bs!588651 m!4576051))

(assert (=> bs!588651 m!4576033))

(assert (=> bs!588651 m!4576049))

(assert (=> bs!588651 m!4575995))

(assert (=> bs!588651 m!4576057))

(declare-fun m!4576855 () Bool)

(assert (=> bs!588651 m!4576855))

(assert (=> b!3995571 d!1182534))

(declare-fun d!1182540 () Bool)

(assert (=> d!1182540 (isPrefix!3857 lt!1410460 (++!11172 lt!1410460 (_2!24098 (v!39543 lt!1410435))))))

(declare-fun lt!1410656 () Unit!61593)

(assert (=> d!1182540 (= lt!1410656 (choose!24076 lt!1410460 (_2!24098 (v!39543 lt!1410435))))))

(assert (=> d!1182540 (= (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410460 (_2!24098 (v!39543 lt!1410435))) lt!1410656)))

(declare-fun bs!588652 () Bool)

(assert (= bs!588652 d!1182540))

(assert (=> bs!588652 m!4576055))

(assert (=> bs!588652 m!4576055))

(declare-fun m!4576857 () Bool)

(assert (=> bs!588652 m!4576857))

(declare-fun m!4576859 () Bool)

(assert (=> bs!588652 m!4576859))

(assert (=> b!3995571 d!1182540))

(declare-fun b!3996115 () Bool)

(declare-fun res!1622748 () Bool)

(declare-fun e!2477415 () Bool)

(assert (=> b!3996115 (=> (not res!1622748) (not e!2477415))))

(declare-fun lt!1410657 () List!42856)

(assert (=> b!3996115 (= res!1622748 (= (size!31959 lt!1410657) (+ (size!31959 lt!1410460) (size!31959 (_2!24098 (v!39543 lt!1410435))))))))

(declare-fun b!3996116 () Bool)

(assert (=> b!3996116 (= e!2477415 (or (not (= (_2!24098 (v!39543 lt!1410435)) Nil!42732)) (= lt!1410657 lt!1410460)))))

(declare-fun b!3996113 () Bool)

(declare-fun e!2477416 () List!42856)

(assert (=> b!3996113 (= e!2477416 (_2!24098 (v!39543 lt!1410435)))))

(declare-fun d!1182542 () Bool)

(assert (=> d!1182542 e!2477415))

(declare-fun res!1622749 () Bool)

(assert (=> d!1182542 (=> (not res!1622749) (not e!2477415))))

(assert (=> d!1182542 (= res!1622749 (= (content!6484 lt!1410657) ((_ map or) (content!6484 lt!1410460) (content!6484 (_2!24098 (v!39543 lt!1410435))))))))

(assert (=> d!1182542 (= lt!1410657 e!2477416)))

(declare-fun c!691421 () Bool)

(assert (=> d!1182542 (= c!691421 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182542 (= (++!11172 lt!1410460 (_2!24098 (v!39543 lt!1410435))) lt!1410657)))

(declare-fun b!3996114 () Bool)

(assert (=> b!3996114 (= e!2477416 (Cons!42732 (h!48152 lt!1410460) (++!11172 (t!331991 lt!1410460) (_2!24098 (v!39543 lt!1410435)))))))

(assert (= (and d!1182542 c!691421) b!3996113))

(assert (= (and d!1182542 (not c!691421)) b!3996114))

(assert (= (and d!1182542 res!1622749) b!3996115))

(assert (= (and b!3996115 res!1622748) b!3996116))

(declare-fun m!4576871 () Bool)

(assert (=> b!3996115 m!4576871))

(assert (=> b!3996115 m!4576057))

(declare-fun m!4576873 () Bool)

(assert (=> b!3996115 m!4576873))

(declare-fun m!4576875 () Bool)

(assert (=> d!1182542 m!4576875))

(assert (=> d!1182542 m!4576417))

(declare-fun m!4576877 () Bool)

(assert (=> d!1182542 m!4576877))

(declare-fun m!4576879 () Bool)

(assert (=> b!3996114 m!4576879))

(assert (=> b!3995571 d!1182542))

(declare-fun d!1182546 () Bool)

(assert (=> d!1182546 (= (size!31958 token!484) (size!31959 (originalCharacters!7370 token!484)))))

(declare-fun Unit!61602 () Unit!61593)

(assert (=> d!1182546 (= (lemmaCharactersSize!1365 token!484) Unit!61602)))

(declare-fun bs!588653 () Bool)

(assert (= bs!588653 d!1182546))

(assert (=> bs!588653 m!4575997))

(assert (=> b!3995571 d!1182546))

(declare-fun d!1182548 () Bool)

(assert (=> d!1182548 (= (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (seqFromList!5009 lt!1410460)) (dynLambda!18146 (toValue!9258 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (seqFromList!5009 lt!1410460)))))

(declare-fun b_lambda!116629 () Bool)

(assert (=> (not b_lambda!116629) (not d!1182548)))

(declare-fun t!332003 () Bool)

(declare-fun tb!240405 () Bool)

(assert (=> (and b!3995590 (= (toValue!9258 (transformation!6770 (rule!9796 token!484))) (toValue!9258 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))) t!332003) tb!240405))

(declare-fun result!291330 () Bool)

(assert (=> tb!240405 (= result!291330 (inv!21 (dynLambda!18146 (toValue!9258 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (seqFromList!5009 lt!1410460))))))

(declare-fun m!4576881 () Bool)

(assert (=> tb!240405 m!4576881))

(assert (=> d!1182548 t!332003))

(declare-fun b_and!306915 () Bool)

(assert (= b_and!306903 (and (=> t!332003 result!291330) b_and!306915)))

(declare-fun tb!240407 () Bool)

(declare-fun t!332005 () Bool)

(assert (=> (and b!3995568 (= (toValue!9258 (transformation!6770 (h!48154 rules!2999))) (toValue!9258 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))) t!332005) tb!240407))

(declare-fun result!291332 () Bool)

(assert (= result!291332 result!291330))

(assert (=> d!1182548 t!332005))

(declare-fun b_and!306917 () Bool)

(assert (= b_and!306905 (and (=> t!332005 result!291332) b_and!306917)))

(assert (=> d!1182548 m!4576049))

(declare-fun m!4576883 () Bool)

(assert (=> d!1182548 m!4576883))

(assert (=> b!3995571 d!1182548))

(declare-fun d!1182550 () Bool)

(assert (=> d!1182550 (isPrefix!3857 lt!1410460 (++!11172 lt!1410460 newSuffixResult!27))))

(declare-fun lt!1410658 () Unit!61593)

(assert (=> d!1182550 (= lt!1410658 (choose!24076 lt!1410460 newSuffixResult!27))))

(assert (=> d!1182550 (= (lemmaConcatTwoListThenFirstIsPrefix!2700 lt!1410460 newSuffixResult!27) lt!1410658)))

(declare-fun bs!588654 () Bool)

(assert (= bs!588654 d!1182550))

(assert (=> bs!588654 m!4576041))

(assert (=> bs!588654 m!4576041))

(assert (=> bs!588654 m!4576043))

(declare-fun m!4576889 () Bool)

(assert (=> bs!588654 m!4576889))

(assert (=> b!3995571 d!1182550))

(declare-fun d!1182554 () Bool)

(declare-fun lt!1410659 () Int)

(assert (=> d!1182554 (>= lt!1410659 0)))

(declare-fun e!2477421 () Int)

(assert (=> d!1182554 (= lt!1410659 e!2477421)))

(declare-fun c!691422 () Bool)

(assert (=> d!1182554 (= c!691422 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182554 (= (size!31959 lt!1410460) lt!1410659)))

(declare-fun b!3996120 () Bool)

(assert (=> b!3996120 (= e!2477421 0)))

(declare-fun b!3996121 () Bool)

(assert (=> b!3996121 (= e!2477421 (+ 1 (size!31959 (t!331991 lt!1410460))))))

(assert (= (and d!1182554 c!691422) b!3996120))

(assert (= (and d!1182554 (not c!691422)) b!3996121))

(declare-fun m!4576891 () Bool)

(assert (=> b!3996121 m!4576891))

(assert (=> b!3995571 d!1182554))

(declare-fun b!3996122 () Bool)

(declare-fun res!1622757 () Bool)

(declare-fun e!2477424 () Bool)

(assert (=> b!3996122 (=> (not res!1622757) (not e!2477424))))

(declare-fun lt!1410664 () Option!9184)

(assert (=> b!3996122 (= res!1622757 (= (value!213579 (_1!24098 (get!14058 lt!1410664))) (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (get!14058 lt!1410664)))) (seqFromList!5009 (originalCharacters!7370 (_1!24098 (get!14058 lt!1410664)))))))))

(declare-fun b!3996123 () Bool)

(declare-fun e!2477425 () Option!9184)

(declare-fun lt!1410661 () tuple2!41930)

(assert (=> b!3996123 (= e!2477425 (Some!9183 (tuple2!41929 (Token!12679 (apply!9981 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (seqFromList!5009 (_1!24099 lt!1410661))) (rule!9796 (_1!24098 (v!39543 lt!1410435))) (size!31960 (seqFromList!5009 (_1!24099 lt!1410661))) (_1!24099 lt!1410661)) (_2!24099 lt!1410661))))))

(declare-fun lt!1410662 () Unit!61593)

(assert (=> b!3996123 (= lt!1410662 (longestMatchIsAcceptedByMatchOrIsEmpty!1314 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410458))))

(declare-fun res!1622754 () Bool)

(assert (=> b!3996123 (= res!1622754 (isEmpty!25541 (_1!24099 (findLongestMatchInner!1341 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) Nil!42732 (size!31959 Nil!42732) lt!1410458 lt!1410458 (size!31959 lt!1410458)))))))

(declare-fun e!2477423 () Bool)

(assert (=> b!3996123 (=> res!1622754 e!2477423)))

(assert (=> b!3996123 e!2477423))

(declare-fun lt!1410663 () Unit!61593)

(assert (=> b!3996123 (= lt!1410663 lt!1410662)))

(declare-fun lt!1410660 () Unit!61593)

(assert (=> b!3996123 (= lt!1410660 (lemmaSemiInverse!1859 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (seqFromList!5009 (_1!24099 lt!1410661))))))

(declare-fun b!3996124 () Bool)

(declare-fun res!1622759 () Bool)

(assert (=> b!3996124 (=> (not res!1622759) (not e!2477424))))

(assert (=> b!3996124 (= res!1622759 (= (++!11172 (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410664)))) (_2!24098 (get!14058 lt!1410664))) lt!1410458))))

(declare-fun b!3996125 () Bool)

(declare-fun e!2477422 () Bool)

(assert (=> b!3996125 (= e!2477422 e!2477424)))

(declare-fun res!1622756 () Bool)

(assert (=> b!3996125 (=> (not res!1622756) (not e!2477424))))

(assert (=> b!3996125 (= res!1622756 (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (list!15868 (charsOf!4586 (_1!24098 (get!14058 lt!1410664))))))))

(declare-fun d!1182556 () Bool)

(assert (=> d!1182556 e!2477422))

(declare-fun res!1622755 () Bool)

(assert (=> d!1182556 (=> res!1622755 e!2477422)))

(assert (=> d!1182556 (= res!1622755 (isEmpty!25542 lt!1410664))))

(assert (=> d!1182556 (= lt!1410664 e!2477425)))

(declare-fun c!691423 () Bool)

(assert (=> d!1182556 (= c!691423 (isEmpty!25541 (_1!24099 lt!1410661)))))

(assert (=> d!1182556 (= lt!1410661 (findLongestMatch!1254 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410458))))

(assert (=> d!1182556 (ruleValid!2702 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))

(assert (=> d!1182556 (= (maxPrefixOneRule!2691 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))) lt!1410458) lt!1410664)))

(declare-fun b!3996126 () Bool)

(assert (=> b!3996126 (= e!2477423 (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (_1!24099 (findLongestMatchInner!1341 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) Nil!42732 (size!31959 Nil!42732) lt!1410458 lt!1410458 (size!31959 lt!1410458)))))))

(declare-fun b!3996127 () Bool)

(assert (=> b!3996127 (= e!2477424 (= (size!31958 (_1!24098 (get!14058 lt!1410664))) (size!31959 (originalCharacters!7370 (_1!24098 (get!14058 lt!1410664))))))))

(declare-fun b!3996128 () Bool)

(declare-fun res!1622753 () Bool)

(assert (=> b!3996128 (=> (not res!1622753) (not e!2477424))))

(assert (=> b!3996128 (= res!1622753 (= (rule!9796 (_1!24098 (get!14058 lt!1410664))) (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(declare-fun b!3996129 () Bool)

(assert (=> b!3996129 (= e!2477425 None!9183)))

(declare-fun b!3996130 () Bool)

(declare-fun res!1622758 () Bool)

(assert (=> b!3996130 (=> (not res!1622758) (not e!2477424))))

(assert (=> b!3996130 (= res!1622758 (< (size!31959 (_2!24098 (get!14058 lt!1410664))) (size!31959 lt!1410458)))))

(assert (= (and d!1182556 c!691423) b!3996129))

(assert (= (and d!1182556 (not c!691423)) b!3996123))

(assert (= (and b!3996123 (not res!1622754)) b!3996126))

(assert (= (and d!1182556 (not res!1622755)) b!3996125))

(assert (= (and b!3996125 res!1622756) b!3996124))

(assert (= (and b!3996124 res!1622759) b!3996130))

(assert (= (and b!3996130 res!1622758) b!3996128))

(assert (= (and b!3996128 res!1622753) b!3996122))

(assert (= (and b!3996122 res!1622757) b!3996127))

(declare-fun m!4576893 () Bool)

(assert (=> b!3996124 m!4576893))

(declare-fun m!4576895 () Bool)

(assert (=> b!3996124 m!4576895))

(assert (=> b!3996124 m!4576895))

(declare-fun m!4576897 () Bool)

(assert (=> b!3996124 m!4576897))

(assert (=> b!3996124 m!4576897))

(declare-fun m!4576899 () Bool)

(assert (=> b!3996124 m!4576899))

(declare-fun m!4576901 () Bool)

(assert (=> d!1182556 m!4576901))

(declare-fun m!4576903 () Bool)

(assert (=> d!1182556 m!4576903))

(declare-fun m!4576905 () Bool)

(assert (=> d!1182556 m!4576905))

(assert (=> d!1182556 m!4576037))

(assert (=> b!3996127 m!4576893))

(declare-fun m!4576907 () Bool)

(assert (=> b!3996127 m!4576907))

(assert (=> b!3996128 m!4576893))

(declare-fun m!4576909 () Bool)

(assert (=> b!3996123 m!4576909))

(declare-fun m!4576911 () Bool)

(assert (=> b!3996123 m!4576911))

(assert (=> b!3996123 m!4576299))

(assert (=> b!3996123 m!4576425))

(declare-fun m!4576913 () Bool)

(assert (=> b!3996123 m!4576913))

(assert (=> b!3996123 m!4576425))

(assert (=> b!3996123 m!4576909))

(assert (=> b!3996123 m!4576909))

(declare-fun m!4576915 () Bool)

(assert (=> b!3996123 m!4576915))

(declare-fun m!4576917 () Bool)

(assert (=> b!3996123 m!4576917))

(assert (=> b!3996123 m!4576909))

(declare-fun m!4576919 () Bool)

(assert (=> b!3996123 m!4576919))

(declare-fun m!4576921 () Bool)

(assert (=> b!3996123 m!4576921))

(assert (=> b!3996123 m!4576299))

(assert (=> b!3996126 m!4576299))

(assert (=> b!3996126 m!4576425))

(assert (=> b!3996126 m!4576299))

(assert (=> b!3996126 m!4576425))

(assert (=> b!3996126 m!4576913))

(declare-fun m!4576923 () Bool)

(assert (=> b!3996126 m!4576923))

(assert (=> b!3996130 m!4576893))

(declare-fun m!4576925 () Bool)

(assert (=> b!3996130 m!4576925))

(assert (=> b!3996130 m!4576425))

(assert (=> b!3996122 m!4576893))

(declare-fun m!4576927 () Bool)

(assert (=> b!3996122 m!4576927))

(assert (=> b!3996122 m!4576927))

(declare-fun m!4576929 () Bool)

(assert (=> b!3996122 m!4576929))

(assert (=> b!3996125 m!4576893))

(assert (=> b!3996125 m!4576895))

(assert (=> b!3996125 m!4576895))

(assert (=> b!3996125 m!4576897))

(assert (=> b!3996125 m!4576897))

(declare-fun m!4576931 () Bool)

(assert (=> b!3996125 m!4576931))

(assert (=> b!3995571 d!1182556))

(declare-fun d!1182558 () Bool)

(assert (=> d!1182558 (= (list!15868 (charsOf!4586 (_1!24098 (v!39543 lt!1410435)))) (list!15869 (c!691320 (charsOf!4586 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun bs!588655 () Bool)

(assert (= bs!588655 d!1182558))

(declare-fun m!4576933 () Bool)

(assert (=> bs!588655 m!4576933))

(assert (=> b!3995571 d!1182558))

(declare-fun b!3996133 () Bool)

(declare-fun e!2477427 () Bool)

(assert (=> b!3996133 (= e!2477427 (isPrefix!3857 (tail!6230 lt!1410460) (tail!6230 (++!11172 lt!1410460 newSuffixResult!27))))))

(declare-fun b!3996134 () Bool)

(declare-fun e!2477426 () Bool)

(assert (=> b!3996134 (= e!2477426 (>= (size!31959 (++!11172 lt!1410460 newSuffixResult!27)) (size!31959 lt!1410460)))))

(declare-fun b!3996131 () Bool)

(declare-fun e!2477428 () Bool)

(assert (=> b!3996131 (= e!2477428 e!2477427)))

(declare-fun res!1622762 () Bool)

(assert (=> b!3996131 (=> (not res!1622762) (not e!2477427))))

(assert (=> b!3996131 (= res!1622762 (not ((_ is Nil!42732) (++!11172 lt!1410460 newSuffixResult!27))))))

(declare-fun d!1182560 () Bool)

(assert (=> d!1182560 e!2477426))

(declare-fun res!1622761 () Bool)

(assert (=> d!1182560 (=> res!1622761 e!2477426)))

(declare-fun lt!1410665 () Bool)

(assert (=> d!1182560 (= res!1622761 (not lt!1410665))))

(assert (=> d!1182560 (= lt!1410665 e!2477428)))

(declare-fun res!1622763 () Bool)

(assert (=> d!1182560 (=> res!1622763 e!2477428)))

(assert (=> d!1182560 (= res!1622763 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182560 (= (isPrefix!3857 lt!1410460 (++!11172 lt!1410460 newSuffixResult!27)) lt!1410665)))

(declare-fun b!3996132 () Bool)

(declare-fun res!1622760 () Bool)

(assert (=> b!3996132 (=> (not res!1622760) (not e!2477427))))

(assert (=> b!3996132 (= res!1622760 (= (head!8498 lt!1410460) (head!8498 (++!11172 lt!1410460 newSuffixResult!27))))))

(assert (= (and d!1182560 (not res!1622763)) b!3996131))

(assert (= (and b!3996131 res!1622762) b!3996132))

(assert (= (and b!3996132 res!1622760) b!3996133))

(assert (= (and d!1182560 (not res!1622761)) b!3996134))

(assert (=> b!3996133 m!4576243))

(assert (=> b!3996133 m!4576041))

(declare-fun m!4576935 () Bool)

(assert (=> b!3996133 m!4576935))

(assert (=> b!3996133 m!4576243))

(assert (=> b!3996133 m!4576935))

(declare-fun m!4576937 () Bool)

(assert (=> b!3996133 m!4576937))

(assert (=> b!3996134 m!4576041))

(declare-fun m!4576939 () Bool)

(assert (=> b!3996134 m!4576939))

(assert (=> b!3996134 m!4576057))

(assert (=> b!3996132 m!4576249))

(assert (=> b!3996132 m!4576041))

(declare-fun m!4576941 () Bool)

(assert (=> b!3996132 m!4576941))

(assert (=> b!3995571 d!1182560))

(declare-fun d!1182562 () Bool)

(assert (=> d!1182562 (ruleValid!2702 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))

(declare-fun lt!1410666 () Unit!61593)

(assert (=> d!1182562 (= lt!1410666 (choose!24086 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))) rules!2999))))

(assert (=> d!1182562 (contains!8502 rules!2999 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))

(assert (=> d!1182562 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1776 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435))) rules!2999) lt!1410666)))

(declare-fun bs!588656 () Bool)

(assert (= bs!588656 d!1182562))

(assert (=> bs!588656 m!4576037))

(declare-fun m!4576943 () Bool)

(assert (=> bs!588656 m!4576943))

(assert (=> bs!588656 m!4576233))

(assert (=> b!3995571 d!1182562))

(declare-fun d!1182564 () Bool)

(declare-fun e!2477429 () Bool)

(assert (=> d!1182564 e!2477429))

(declare-fun res!1622764 () Bool)

(assert (=> d!1182564 (=> (not res!1622764) (not e!2477429))))

(assert (=> d!1182564 (= res!1622764 (semiInverseModEq!2904 (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (toValue!9258 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(declare-fun Unit!61604 () Unit!61593)

(assert (=> d!1182564 (= (lemmaInv!985 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) Unit!61604)))

(declare-fun b!3996135 () Bool)

(assert (=> b!3996135 (= e!2477429 (equivClasses!2803 (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (toValue!9258 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(assert (= (and d!1182564 res!1622764) b!3996135))

(declare-fun m!4576945 () Bool)

(assert (=> d!1182564 m!4576945))

(declare-fun m!4576947 () Bool)

(assert (=> b!3996135 m!4576947))

(assert (=> b!3995571 d!1182564))

(declare-fun b!3996138 () Bool)

(declare-fun res!1622765 () Bool)

(declare-fun e!2477430 () Bool)

(assert (=> b!3996138 (=> (not res!1622765) (not e!2477430))))

(declare-fun lt!1410667 () List!42856)

(assert (=> b!3996138 (= res!1622765 (= (size!31959 lt!1410667) (+ (size!31959 lt!1410460) (size!31959 newSuffixResult!27))))))

(declare-fun b!3996139 () Bool)

(assert (=> b!3996139 (= e!2477430 (or (not (= newSuffixResult!27 Nil!42732)) (= lt!1410667 lt!1410460)))))

(declare-fun b!3996136 () Bool)

(declare-fun e!2477431 () List!42856)

(assert (=> b!3996136 (= e!2477431 newSuffixResult!27)))

(declare-fun d!1182566 () Bool)

(assert (=> d!1182566 e!2477430))

(declare-fun res!1622766 () Bool)

(assert (=> d!1182566 (=> (not res!1622766) (not e!2477430))))

(assert (=> d!1182566 (= res!1622766 (= (content!6484 lt!1410667) ((_ map or) (content!6484 lt!1410460) (content!6484 newSuffixResult!27))))))

(assert (=> d!1182566 (= lt!1410667 e!2477431)))

(declare-fun c!691424 () Bool)

(assert (=> d!1182566 (= c!691424 ((_ is Nil!42732) lt!1410460))))

(assert (=> d!1182566 (= (++!11172 lt!1410460 newSuffixResult!27) lt!1410667)))

(declare-fun b!3996137 () Bool)

(assert (=> b!3996137 (= e!2477431 (Cons!42732 (h!48152 lt!1410460) (++!11172 (t!331991 lt!1410460) newSuffixResult!27)))))

(assert (= (and d!1182566 c!691424) b!3996136))

(assert (= (and d!1182566 (not c!691424)) b!3996137))

(assert (= (and d!1182566 res!1622766) b!3996138))

(assert (= (and b!3996138 res!1622765) b!3996139))

(declare-fun m!4576949 () Bool)

(assert (=> b!3996138 m!4576949))

(assert (=> b!3996138 m!4576057))

(assert (=> b!3996138 m!4576219))

(declare-fun m!4576951 () Bool)

(assert (=> d!1182566 m!4576951))

(assert (=> d!1182566 m!4576417))

(assert (=> d!1182566 m!4576225))

(declare-fun m!4576953 () Bool)

(assert (=> b!3996137 m!4576953))

(assert (=> b!3995571 d!1182566))

(declare-fun d!1182568 () Bool)

(declare-fun res!1622767 () Bool)

(declare-fun e!2477432 () Bool)

(assert (=> d!1182568 (=> (not res!1622767) (not e!2477432))))

(assert (=> d!1182568 (= res!1622767 (validRegex!5298 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(assert (=> d!1182568 (= (ruleValid!2702 thiss!21717 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) e!2477432)))

(declare-fun b!3996140 () Bool)

(declare-fun res!1622768 () Bool)

(assert (=> b!3996140 (=> (not res!1622768) (not e!2477432))))

(assert (=> b!3996140 (= res!1622768 (not (nullable!4097 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(declare-fun b!3996141 () Bool)

(assert (=> b!3996141 (= e!2477432 (not (= (tag!7630 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (String!48718 ""))))))

(assert (= (and d!1182568 res!1622767) b!3996140))

(assert (= (and b!3996140 res!1622768) b!3996141))

(assert (=> d!1182568 m!4576079))

(assert (=> b!3996140 m!4576255))

(assert (=> b!3995571 d!1182568))

(declare-fun d!1182570 () Bool)

(declare-fun lt!1410668 () BalanceConc!25556)

(assert (=> d!1182570 (= (list!15868 lt!1410668) (originalCharacters!7370 (_1!24098 (v!39543 lt!1410435))))))

(assert (=> d!1182570 (= lt!1410668 (dynLambda!18147 (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (value!213579 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> d!1182570 (= (charsOf!4586 (_1!24098 (v!39543 lt!1410435))) lt!1410668)))

(declare-fun b_lambda!116631 () Bool)

(assert (=> (not b_lambda!116631) (not d!1182570)))

(declare-fun tb!240409 () Bool)

(declare-fun t!332007 () Bool)

(assert (=> (and b!3995590 (= (toChars!9117 (transformation!6770 (rule!9796 token!484))) (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))) t!332007) tb!240409))

(declare-fun b!3996142 () Bool)

(declare-fun e!2477433 () Bool)

(declare-fun tp!1216458 () Bool)

(assert (=> b!3996142 (= e!2477433 (and (inv!57076 (c!691320 (dynLambda!18147 (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (value!213579 (_1!24098 (v!39543 lt!1410435)))))) tp!1216458))))

(declare-fun result!291334 () Bool)

(assert (=> tb!240409 (= result!291334 (and (inv!57077 (dynLambda!18147 (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))) (value!213579 (_1!24098 (v!39543 lt!1410435))))) e!2477433))))

(assert (= tb!240409 b!3996142))

(declare-fun m!4576955 () Bool)

(assert (=> b!3996142 m!4576955))

(declare-fun m!4576957 () Bool)

(assert (=> tb!240409 m!4576957))

(assert (=> d!1182570 t!332007))

(declare-fun b_and!306919 () Bool)

(assert (= b_and!306911 (and (=> t!332007 result!291334) b_and!306919)))

(declare-fun t!332009 () Bool)

(declare-fun tb!240411 () Bool)

(assert (=> (and b!3995568 (= (toChars!9117 (transformation!6770 (h!48154 rules!2999))) (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))) t!332009) tb!240411))

(declare-fun result!291336 () Bool)

(assert (= result!291336 result!291334))

(assert (=> d!1182570 t!332009))

(declare-fun b_and!306921 () Bool)

(assert (= b_and!306913 (and (=> t!332009 result!291336) b_and!306921)))

(declare-fun m!4576959 () Bool)

(assert (=> d!1182570 m!4576959))

(declare-fun m!4576961 () Bool)

(assert (=> d!1182570 m!4576961))

(assert (=> b!3995571 d!1182570))

(declare-fun d!1182572 () Bool)

(assert (=> d!1182572 (= (size!31958 (_1!24098 (v!39543 lt!1410435))) (size!31959 (originalCharacters!7370 (_1!24098 (v!39543 lt!1410435)))))))

(declare-fun Unit!61605 () Unit!61593)

(assert (=> d!1182572 (= (lemmaCharactersSize!1365 (_1!24098 (v!39543 lt!1410435))) Unit!61605)))

(declare-fun bs!588657 () Bool)

(assert (= bs!588657 d!1182572))

(declare-fun m!4576963 () Bool)

(assert (=> bs!588657 m!4576963))

(assert (=> b!3995571 d!1182572))

(declare-fun d!1182574 () Bool)

(assert (=> d!1182574 (= (seqFromList!5009 lt!1410460) (fromListB!2299 lt!1410460))))

(declare-fun bs!588658 () Bool)

(assert (= bs!588658 d!1182574))

(declare-fun m!4576965 () Bool)

(assert (=> bs!588658 m!4576965))

(assert (=> b!3995571 d!1182574))

(declare-fun d!1182576 () Bool)

(assert (=> d!1182576 (= (inv!57071 (tag!7630 (rule!9796 token!484))) (= (mod (str.len (value!213553 (tag!7630 (rule!9796 token!484)))) 2) 0))))

(assert (=> b!3995592 d!1182576))

(declare-fun d!1182578 () Bool)

(declare-fun res!1622771 () Bool)

(declare-fun e!2477436 () Bool)

(assert (=> d!1182578 (=> (not res!1622771) (not e!2477436))))

(assert (=> d!1182578 (= res!1622771 (semiInverseModEq!2904 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (toValue!9258 (transformation!6770 (rule!9796 token!484)))))))

(assert (=> d!1182578 (= (inv!57075 (transformation!6770 (rule!9796 token!484))) e!2477436)))

(declare-fun b!3996145 () Bool)

(assert (=> b!3996145 (= e!2477436 (equivClasses!2803 (toChars!9117 (transformation!6770 (rule!9796 token!484))) (toValue!9258 (transformation!6770 (rule!9796 token!484)))))))

(assert (= (and d!1182578 res!1622771) b!3996145))

(assert (=> d!1182578 m!4576499))

(assert (=> b!3996145 m!4576501))

(assert (=> b!3995592 d!1182578))

(declare-fun b!3996146 () Bool)

(declare-fun res!1622778 () Bool)

(declare-fun e!2477441 () Bool)

(assert (=> b!3996146 (=> (not res!1622778) (not e!2477441))))

(assert (=> b!3996146 (= res!1622778 (isEmpty!25541 (tail!6230 lt!1410432)))))

(declare-fun b!3996147 () Bool)

(assert (=> b!3996147 (= e!2477441 (= (head!8498 lt!1410432) (c!691321 (regex!6770 (rule!9796 token!484)))))))

(declare-fun b!3996148 () Bool)

(declare-fun e!2477442 () Bool)

(assert (=> b!3996148 (= e!2477442 (nullable!4097 (regex!6770 (rule!9796 token!484))))))

(declare-fun b!3996149 () Bool)

(declare-fun res!1622774 () Bool)

(declare-fun e!2477443 () Bool)

(assert (=> b!3996149 (=> res!1622774 e!2477443)))

(assert (=> b!3996149 (= res!1622774 e!2477441)))

(declare-fun res!1622777 () Bool)

(assert (=> b!3996149 (=> (not res!1622777) (not e!2477441))))

(declare-fun lt!1410669 () Bool)

(assert (=> b!3996149 (= res!1622777 lt!1410669)))

(declare-fun b!3996150 () Bool)

(declare-fun e!2477439 () Bool)

(assert (=> b!3996150 (= e!2477443 e!2477439)))

(declare-fun res!1622773 () Bool)

(assert (=> b!3996150 (=> (not res!1622773) (not e!2477439))))

(assert (=> b!3996150 (= res!1622773 (not lt!1410669))))

(declare-fun b!3996151 () Bool)

(declare-fun res!1622775 () Bool)

(declare-fun e!2477437 () Bool)

(assert (=> b!3996151 (=> res!1622775 e!2477437)))

(assert (=> b!3996151 (= res!1622775 (not (isEmpty!25541 (tail!6230 lt!1410432))))))

(declare-fun b!3996152 () Bool)

(assert (=> b!3996152 (= e!2477437 (not (= (head!8498 lt!1410432) (c!691321 (regex!6770 (rule!9796 token!484))))))))

(declare-fun b!3996153 () Bool)

(declare-fun e!2477438 () Bool)

(assert (=> b!3996153 (= e!2477438 (not lt!1410669))))

(declare-fun b!3996154 () Bool)

(declare-fun res!1622772 () Bool)

(assert (=> b!3996154 (=> (not res!1622772) (not e!2477441))))

(declare-fun call!285931 () Bool)

(assert (=> b!3996154 (= res!1622772 (not call!285931))))

(declare-fun b!3996155 () Bool)

(declare-fun e!2477440 () Bool)

(assert (=> b!3996155 (= e!2477440 e!2477438)))

(declare-fun c!691425 () Bool)

(assert (=> b!3996155 (= c!691425 ((_ is EmptyLang!11675) (regex!6770 (rule!9796 token!484))))))

(declare-fun d!1182580 () Bool)

(assert (=> d!1182580 e!2477440))

(declare-fun c!691427 () Bool)

(assert (=> d!1182580 (= c!691427 ((_ is EmptyExpr!11675) (regex!6770 (rule!9796 token!484))))))

(assert (=> d!1182580 (= lt!1410669 e!2477442)))

(declare-fun c!691426 () Bool)

(assert (=> d!1182580 (= c!691426 (isEmpty!25541 lt!1410432))))

(assert (=> d!1182580 (validRegex!5298 (regex!6770 (rule!9796 token!484)))))

(assert (=> d!1182580 (= (matchR!5652 (regex!6770 (rule!9796 token!484)) lt!1410432) lt!1410669)))

(declare-fun b!3996156 () Bool)

(assert (=> b!3996156 (= e!2477440 (= lt!1410669 call!285931))))

(declare-fun b!3996157 () Bool)

(assert (=> b!3996157 (= e!2477439 e!2477437)))

(declare-fun res!1622776 () Bool)

(assert (=> b!3996157 (=> res!1622776 e!2477437)))

(assert (=> b!3996157 (= res!1622776 call!285931)))

(declare-fun b!3996158 () Bool)

(assert (=> b!3996158 (= e!2477442 (matchR!5652 (derivativeStep!3508 (regex!6770 (rule!9796 token!484)) (head!8498 lt!1410432)) (tail!6230 lt!1410432)))))

(declare-fun bm!285926 () Bool)

(assert (=> bm!285926 (= call!285931 (isEmpty!25541 lt!1410432))))

(declare-fun b!3996159 () Bool)

(declare-fun res!1622779 () Bool)

(assert (=> b!3996159 (=> res!1622779 e!2477443)))

(assert (=> b!3996159 (= res!1622779 (not ((_ is ElementMatch!11675) (regex!6770 (rule!9796 token!484)))))))

(assert (=> b!3996159 (= e!2477438 e!2477443)))

(assert (= (and d!1182580 c!691426) b!3996148))

(assert (= (and d!1182580 (not c!691426)) b!3996158))

(assert (= (and d!1182580 c!691427) b!3996156))

(assert (= (and d!1182580 (not c!691427)) b!3996155))

(assert (= (and b!3996155 c!691425) b!3996153))

(assert (= (and b!3996155 (not c!691425)) b!3996159))

(assert (= (and b!3996159 (not res!1622779)) b!3996149))

(assert (= (and b!3996149 res!1622777) b!3996154))

(assert (= (and b!3996154 res!1622772) b!3996146))

(assert (= (and b!3996146 res!1622778) b!3996147))

(assert (= (and b!3996149 (not res!1622774)) b!3996150))

(assert (= (and b!3996150 res!1622773) b!3996157))

(assert (= (and b!3996157 (not res!1622776)) b!3996151))

(assert (= (and b!3996151 (not res!1622775)) b!3996152))

(assert (= (or b!3996156 b!3996154 b!3996157) bm!285926))

(assert (=> b!3996151 m!4576173))

(assert (=> b!3996151 m!4576173))

(declare-fun m!4576967 () Bool)

(assert (=> b!3996151 m!4576967))

(assert (=> b!3996146 m!4576173))

(assert (=> b!3996146 m!4576173))

(assert (=> b!3996146 m!4576967))

(declare-fun m!4576969 () Bool)

(assert (=> d!1182580 m!4576969))

(assert (=> d!1182580 m!4576503))

(assert (=> b!3996152 m!4576181))

(assert (=> b!3996158 m!4576181))

(assert (=> b!3996158 m!4576181))

(declare-fun m!4576971 () Bool)

(assert (=> b!3996158 m!4576971))

(assert (=> b!3996158 m!4576173))

(assert (=> b!3996158 m!4576971))

(assert (=> b!3996158 m!4576173))

(declare-fun m!4576973 () Bool)

(assert (=> b!3996158 m!4576973))

(assert (=> bm!285926 m!4576969))

(assert (=> b!3996148 m!4576505))

(assert (=> b!3996147 m!4576181))

(assert (=> b!3995570 d!1182580))

(declare-fun b!3996162 () Bool)

(declare-fun e!2477445 () Bool)

(assert (=> b!3996162 (= e!2477445 (isPrefix!3857 (tail!6230 lt!1410432) (tail!6230 lt!1410458)))))

(declare-fun b!3996163 () Bool)

(declare-fun e!2477444 () Bool)

(assert (=> b!3996163 (= e!2477444 (>= (size!31959 lt!1410458) (size!31959 lt!1410432)))))

(declare-fun b!3996160 () Bool)

(declare-fun e!2477446 () Bool)

(assert (=> b!3996160 (= e!2477446 e!2477445)))

(declare-fun res!1622782 () Bool)

(assert (=> b!3996160 (=> (not res!1622782) (not e!2477445))))

(assert (=> b!3996160 (= res!1622782 (not ((_ is Nil!42732) lt!1410458)))))

(declare-fun d!1182582 () Bool)

(assert (=> d!1182582 e!2477444))

(declare-fun res!1622781 () Bool)

(assert (=> d!1182582 (=> res!1622781 e!2477444)))

(declare-fun lt!1410670 () Bool)

(assert (=> d!1182582 (= res!1622781 (not lt!1410670))))

(assert (=> d!1182582 (= lt!1410670 e!2477446)))

(declare-fun res!1622783 () Bool)

(assert (=> d!1182582 (=> res!1622783 e!2477446)))

(assert (=> d!1182582 (= res!1622783 ((_ is Nil!42732) lt!1410432))))

(assert (=> d!1182582 (= (isPrefix!3857 lt!1410432 lt!1410458) lt!1410670)))

(declare-fun b!3996161 () Bool)

(declare-fun res!1622780 () Bool)

(assert (=> b!3996161 (=> (not res!1622780) (not e!2477445))))

(assert (=> b!3996161 (= res!1622780 (= (head!8498 lt!1410432) (head!8498 lt!1410458)))))

(assert (= (and d!1182582 (not res!1622783)) b!3996160))

(assert (= (and b!3996160 res!1622782) b!3996161))

(assert (= (and b!3996161 res!1622780) b!3996162))

(assert (= (and d!1182582 (not res!1622781)) b!3996163))

(assert (=> b!3996162 m!4576173))

(assert (=> b!3996162 m!4576427))

(assert (=> b!3996162 m!4576173))

(assert (=> b!3996162 m!4576427))

(declare-fun m!4576975 () Bool)

(assert (=> b!3996162 m!4576975))

(assert (=> b!3996163 m!4576425))

(assert (=> b!3996163 m!4576093))

(assert (=> b!3996161 m!4576181))

(assert (=> b!3996161 m!4576517))

(assert (=> b!3995570 d!1182582))

(declare-fun d!1182584 () Bool)

(assert (=> d!1182584 (isPrefix!3857 lt!1410432 (++!11172 prefix!494 newSuffix!27))))

(declare-fun lt!1410671 () Unit!61593)

(assert (=> d!1182584 (= lt!1410671 (choose!24085 lt!1410432 prefix!494 newSuffix!27))))

(assert (=> d!1182584 (isPrefix!3857 lt!1410432 prefix!494)))

(assert (=> d!1182584 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!690 lt!1410432 prefix!494 newSuffix!27) lt!1410671)))

(declare-fun bs!588659 () Bool)

(assert (= bs!588659 d!1182584))

(assert (=> bs!588659 m!4576133))

(assert (=> bs!588659 m!4576133))

(declare-fun m!4576977 () Bool)

(assert (=> bs!588659 m!4576977))

(declare-fun m!4576979 () Bool)

(assert (=> bs!588659 m!4576979))

(assert (=> bs!588659 m!4576071))

(assert (=> b!3995570 d!1182584))

(declare-fun d!1182586 () Bool)

(assert (=> d!1182586 (isPrefix!3857 lt!1410432 (++!11172 prefix!494 suffix!1299))))

(declare-fun lt!1410672 () Unit!61593)

(assert (=> d!1182586 (= lt!1410672 (choose!24085 lt!1410432 prefix!494 suffix!1299))))

(assert (=> d!1182586 (isPrefix!3857 lt!1410432 prefix!494)))

(assert (=> d!1182586 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!690 lt!1410432 prefix!494 suffix!1299) lt!1410672)))

(declare-fun bs!588660 () Bool)

(assert (= bs!588660 d!1182586))

(assert (=> bs!588660 m!4576083))

(assert (=> bs!588660 m!4576083))

(declare-fun m!4576981 () Bool)

(assert (=> bs!588660 m!4576981))

(declare-fun m!4576983 () Bool)

(assert (=> bs!588660 m!4576983))

(assert (=> bs!588660 m!4576071))

(assert (=> b!3995570 d!1182586))

(declare-fun d!1182588 () Bool)

(assert (=> d!1182588 (not (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410432))))

(declare-fun lt!1410675 () Unit!61593)

(declare-fun choose!24092 (LexerInterface!6359 List!42858 Rule!13340 List!42856 List!42856 Rule!13340) Unit!61593)

(assert (=> d!1182588 (= lt!1410675 (choose!24092 thiss!21717 rules!2999 (rule!9796 token!484) lt!1410432 lt!1410462 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> d!1182588 (isPrefix!3857 lt!1410432 lt!1410462)))

(assert (=> d!1182588 (= (lemmaMaxPrefNoSmallerRuleMatches!266 thiss!21717 rules!2999 (rule!9796 token!484) lt!1410432 lt!1410462 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410675)))

(declare-fun bs!588661 () Bool)

(assert (= bs!588661 d!1182588))

(assert (=> bs!588661 m!4576077))

(declare-fun m!4576985 () Bool)

(assert (=> bs!588661 m!4576985))

(assert (=> bs!588661 m!4576153))

(assert (=> b!3995569 d!1182588))

(declare-fun b!3996164 () Bool)

(declare-fun res!1622790 () Bool)

(declare-fun e!2477451 () Bool)

(assert (=> b!3996164 (=> (not res!1622790) (not e!2477451))))

(assert (=> b!3996164 (= res!1622790 (isEmpty!25541 (tail!6230 lt!1410432)))))

(declare-fun b!3996165 () Bool)

(assert (=> b!3996165 (= e!2477451 (= (head!8498 lt!1410432) (c!691321 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(declare-fun b!3996166 () Bool)

(declare-fun e!2477452 () Bool)

(assert (=> b!3996166 (= e!2477452 (nullable!4097 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun b!3996167 () Bool)

(declare-fun res!1622786 () Bool)

(declare-fun e!2477453 () Bool)

(assert (=> b!3996167 (=> res!1622786 e!2477453)))

(assert (=> b!3996167 (= res!1622786 e!2477451)))

(declare-fun res!1622789 () Bool)

(assert (=> b!3996167 (=> (not res!1622789) (not e!2477451))))

(declare-fun lt!1410676 () Bool)

(assert (=> b!3996167 (= res!1622789 lt!1410676)))

(declare-fun b!3996168 () Bool)

(declare-fun e!2477449 () Bool)

(assert (=> b!3996168 (= e!2477453 e!2477449)))

(declare-fun res!1622785 () Bool)

(assert (=> b!3996168 (=> (not res!1622785) (not e!2477449))))

(assert (=> b!3996168 (= res!1622785 (not lt!1410676))))

(declare-fun b!3996169 () Bool)

(declare-fun res!1622787 () Bool)

(declare-fun e!2477447 () Bool)

(assert (=> b!3996169 (=> res!1622787 e!2477447)))

(assert (=> b!3996169 (= res!1622787 (not (isEmpty!25541 (tail!6230 lt!1410432))))))

(declare-fun b!3996170 () Bool)

(assert (=> b!3996170 (= e!2477447 (not (= (head!8498 lt!1410432) (c!691321 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))))

(declare-fun b!3996171 () Bool)

(declare-fun e!2477448 () Bool)

(assert (=> b!3996171 (= e!2477448 (not lt!1410676))))

(declare-fun b!3996172 () Bool)

(declare-fun res!1622784 () Bool)

(assert (=> b!3996172 (=> (not res!1622784) (not e!2477451))))

(declare-fun call!285932 () Bool)

(assert (=> b!3996172 (= res!1622784 (not call!285932))))

(declare-fun b!3996173 () Bool)

(declare-fun e!2477450 () Bool)

(assert (=> b!3996173 (= e!2477450 e!2477448)))

(declare-fun c!691428 () Bool)

(assert (=> b!3996173 (= c!691428 ((_ is EmptyLang!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(declare-fun d!1182590 () Bool)

(assert (=> d!1182590 e!2477450))

(declare-fun c!691430 () Bool)

(assert (=> d!1182590 (= c!691430 ((_ is EmptyExpr!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435))))))))

(assert (=> d!1182590 (= lt!1410676 e!2477452)))

(declare-fun c!691429 () Bool)

(assert (=> d!1182590 (= c!691429 (isEmpty!25541 lt!1410432))))

(assert (=> d!1182590 (validRegex!5298 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))

(assert (=> d!1182590 (= (matchR!5652 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) lt!1410432) lt!1410676)))

(declare-fun b!3996174 () Bool)

(assert (=> b!3996174 (= e!2477450 (= lt!1410676 call!285932))))

(declare-fun b!3996175 () Bool)

(assert (=> b!3996175 (= e!2477449 e!2477447)))

(declare-fun res!1622788 () Bool)

(assert (=> b!3996175 (=> res!1622788 e!2477447)))

(assert (=> b!3996175 (= res!1622788 call!285932)))

(declare-fun b!3996176 () Bool)

(assert (=> b!3996176 (= e!2477452 (matchR!5652 (derivativeStep!3508 (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))) (head!8498 lt!1410432)) (tail!6230 lt!1410432)))))

(declare-fun bm!285927 () Bool)

(assert (=> bm!285927 (= call!285932 (isEmpty!25541 lt!1410432))))

(declare-fun b!3996177 () Bool)

(declare-fun res!1622791 () Bool)

(assert (=> b!3996177 (=> res!1622791 e!2477453)))

(assert (=> b!3996177 (= res!1622791 (not ((_ is ElementMatch!11675) (regex!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))))))

(assert (=> b!3996177 (= e!2477448 e!2477453)))

(assert (= (and d!1182590 c!691429) b!3996166))

(assert (= (and d!1182590 (not c!691429)) b!3996176))

(assert (= (and d!1182590 c!691430) b!3996174))

(assert (= (and d!1182590 (not c!691430)) b!3996173))

(assert (= (and b!3996173 c!691428) b!3996171))

(assert (= (and b!3996173 (not c!691428)) b!3996177))

(assert (= (and b!3996177 (not res!1622791)) b!3996167))

(assert (= (and b!3996167 res!1622789) b!3996172))

(assert (= (and b!3996172 res!1622784) b!3996164))

(assert (= (and b!3996164 res!1622790) b!3996165))

(assert (= (and b!3996167 (not res!1622786)) b!3996168))

(assert (= (and b!3996168 res!1622785) b!3996175))

(assert (= (and b!3996175 (not res!1622788)) b!3996169))

(assert (= (and b!3996169 (not res!1622787)) b!3996170))

(assert (= (or b!3996174 b!3996172 b!3996175) bm!285927))

(assert (=> b!3996169 m!4576173))

(assert (=> b!3996169 m!4576173))

(assert (=> b!3996169 m!4576967))

(assert (=> b!3996164 m!4576173))

(assert (=> b!3996164 m!4576173))

(assert (=> b!3996164 m!4576967))

(assert (=> d!1182590 m!4576969))

(assert (=> d!1182590 m!4576079))

(assert (=> b!3996170 m!4576181))

(assert (=> b!3996176 m!4576181))

(assert (=> b!3996176 m!4576181))

(declare-fun m!4576987 () Bool)

(assert (=> b!3996176 m!4576987))

(assert (=> b!3996176 m!4576173))

(assert (=> b!3996176 m!4576987))

(assert (=> b!3996176 m!4576173))

(declare-fun m!4576989 () Bool)

(assert (=> b!3996176 m!4576989))

(assert (=> bm!285927 m!4576969))

(assert (=> b!3996166 m!4576255))

(assert (=> b!3996165 m!4576181))

(assert (=> b!3995569 d!1182590))

(declare-fun d!1182592 () Bool)

(assert (=> d!1182592 (= (inv!57071 (tag!7630 (h!48154 rules!2999))) (= (mod (str.len (value!213553 (tag!7630 (h!48154 rules!2999)))) 2) 0))))

(assert (=> b!3995588 d!1182592))

(declare-fun d!1182594 () Bool)

(declare-fun res!1622792 () Bool)

(declare-fun e!2477454 () Bool)

(assert (=> d!1182594 (=> (not res!1622792) (not e!2477454))))

(assert (=> d!1182594 (= res!1622792 (semiInverseModEq!2904 (toChars!9117 (transformation!6770 (h!48154 rules!2999))) (toValue!9258 (transformation!6770 (h!48154 rules!2999)))))))

(assert (=> d!1182594 (= (inv!57075 (transformation!6770 (h!48154 rules!2999))) e!2477454)))

(declare-fun b!3996178 () Bool)

(assert (=> b!3996178 (= e!2477454 (equivClasses!2803 (toChars!9117 (transformation!6770 (h!48154 rules!2999))) (toValue!9258 (transformation!6770 (h!48154 rules!2999)))))))

(assert (= (and d!1182594 res!1622792) b!3996178))

(declare-fun m!4576991 () Bool)

(assert (=> d!1182594 m!4576991))

(declare-fun m!4576993 () Bool)

(assert (=> b!3996178 m!4576993))

(assert (=> b!3995588 d!1182594))

(declare-fun d!1182596 () Bool)

(declare-fun lt!1410677 () Int)

(assert (=> d!1182596 (>= lt!1410677 0)))

(declare-fun e!2477455 () Int)

(assert (=> d!1182596 (= lt!1410677 e!2477455)))

(declare-fun c!691431 () Bool)

(assert (=> d!1182596 (= c!691431 ((_ is Nil!42732) suffix!1299))))

(assert (=> d!1182596 (= (size!31959 suffix!1299) lt!1410677)))

(declare-fun b!3996179 () Bool)

(assert (=> b!3996179 (= e!2477455 0)))

(declare-fun b!3996180 () Bool)

(assert (=> b!3996180 (= e!2477455 (+ 1 (size!31959 (t!331991 suffix!1299))))))

(assert (= (and d!1182596 c!691431) b!3996179))

(assert (= (and d!1182596 (not c!691431)) b!3996180))

(declare-fun m!4576995 () Bool)

(assert (=> b!3996180 m!4576995))

(assert (=> b!3995589 d!1182596))

(declare-fun d!1182598 () Bool)

(declare-fun lt!1410678 () Int)

(assert (=> d!1182598 (>= lt!1410678 0)))

(declare-fun e!2477456 () Int)

(assert (=> d!1182598 (= lt!1410678 e!2477456)))

(declare-fun c!691432 () Bool)

(assert (=> d!1182598 (= c!691432 ((_ is Nil!42732) newSuffix!27))))

(assert (=> d!1182598 (= (size!31959 newSuffix!27) lt!1410678)))

(declare-fun b!3996181 () Bool)

(assert (=> b!3996181 (= e!2477456 0)))

(declare-fun b!3996182 () Bool)

(assert (=> b!3996182 (= e!2477456 (+ 1 (size!31959 (t!331991 newSuffix!27))))))

(assert (= (and d!1182598 c!691432) b!3996181))

(assert (= (and d!1182598 (not c!691432)) b!3996182))

(declare-fun m!4576997 () Bool)

(assert (=> b!3996182 m!4576997))

(assert (=> b!3995589 d!1182598))

(declare-fun e!2477459 () Bool)

(assert (=> b!3995592 (= tp!1216449 e!2477459)))

(declare-fun b!3996194 () Bool)

(declare-fun tp!1216473 () Bool)

(declare-fun tp!1216471 () Bool)

(assert (=> b!3996194 (= e!2477459 (and tp!1216473 tp!1216471))))

(declare-fun b!3996193 () Bool)

(assert (=> b!3996193 (= e!2477459 tp_is_empty!20321)))

(declare-fun b!3996196 () Bool)

(declare-fun tp!1216470 () Bool)

(declare-fun tp!1216472 () Bool)

(assert (=> b!3996196 (= e!2477459 (and tp!1216470 tp!1216472))))

(declare-fun b!3996195 () Bool)

(declare-fun tp!1216469 () Bool)

(assert (=> b!3996195 (= e!2477459 tp!1216469)))

(assert (= (and b!3995592 ((_ is ElementMatch!11675) (regex!6770 (rule!9796 token!484)))) b!3996193))

(assert (= (and b!3995592 ((_ is Concat!18676) (regex!6770 (rule!9796 token!484)))) b!3996194))

(assert (= (and b!3995592 ((_ is Star!11675) (regex!6770 (rule!9796 token!484)))) b!3996195))

(assert (= (and b!3995592 ((_ is Union!11675) (regex!6770 (rule!9796 token!484)))) b!3996196))

(declare-fun b!3996201 () Bool)

(declare-fun e!2477462 () Bool)

(declare-fun tp!1216476 () Bool)

(assert (=> b!3996201 (= e!2477462 (and tp_is_empty!20321 tp!1216476))))

(assert (=> b!3995582 (= tp!1216442 e!2477462)))

(assert (= (and b!3995582 ((_ is Cons!42732) (originalCharacters!7370 token!484))) b!3996201))

(declare-fun b!3996212 () Bool)

(declare-fun b_free!110993 () Bool)

(declare-fun b_next!111697 () Bool)

(assert (=> b!3996212 (= b_free!110993 (not b_next!111697))))

(declare-fun tb!240413 () Bool)

(declare-fun t!332011 () Bool)

(assert (=> (and b!3996212 (= (toValue!9258 (transformation!6770 (h!48154 (t!331993 rules!2999)))) (toValue!9258 (transformation!6770 (rule!9796 token!484)))) t!332011) tb!240413))

(declare-fun result!291344 () Bool)

(assert (= result!291344 result!291318))

(assert (=> d!1182368 t!332011))

(declare-fun tb!240415 () Bool)

(declare-fun t!332013 () Bool)

(assert (=> (and b!3996212 (= (toValue!9258 (transformation!6770 (h!48154 (t!331993 rules!2999)))) (toValue!9258 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))) t!332013) tb!240415))

(declare-fun result!291346 () Bool)

(assert (= result!291346 result!291330))

(assert (=> d!1182548 t!332013))

(declare-fun b_and!306923 () Bool)

(declare-fun tp!1216487 () Bool)

(assert (=> b!3996212 (= tp!1216487 (and (=> t!332011 result!291344) (=> t!332013 result!291346) b_and!306923))))

(declare-fun b_free!110995 () Bool)

(declare-fun b_next!111699 () Bool)

(assert (=> b!3996212 (= b_free!110995 (not b_next!111699))))

(declare-fun t!332015 () Bool)

(declare-fun tb!240417 () Bool)

(assert (=> (and b!3996212 (= (toChars!9117 (transformation!6770 (h!48154 (t!331993 rules!2999)))) (toChars!9117 (transformation!6770 (rule!9796 token!484)))) t!332015) tb!240417))

(declare-fun result!291348 () Bool)

(assert (= result!291348 result!291324))

(assert (=> b!3995824 t!332015))

(assert (=> d!1182490 t!332015))

(declare-fun tb!240419 () Bool)

(declare-fun t!332017 () Bool)

(assert (=> (and b!3996212 (= (toChars!9117 (transformation!6770 (h!48154 (t!331993 rules!2999)))) (toChars!9117 (transformation!6770 (rule!9796 (_1!24098 (v!39543 lt!1410435)))))) t!332017) tb!240419))

(declare-fun result!291350 () Bool)

(assert (= result!291350 result!291334))

(assert (=> d!1182570 t!332017))

(declare-fun b_and!306925 () Bool)

(declare-fun tp!1216486 () Bool)

(assert (=> b!3996212 (= tp!1216486 (and (=> t!332015 result!291348) (=> t!332017 result!291350) b_and!306925))))

(declare-fun e!2477474 () Bool)

(assert (=> b!3996212 (= e!2477474 (and tp!1216487 tp!1216486))))

(declare-fun e!2477472 () Bool)

(declare-fun tp!1216485 () Bool)

(declare-fun b!3996211 () Bool)

(assert (=> b!3996211 (= e!2477472 (and tp!1216485 (inv!57071 (tag!7630 (h!48154 (t!331993 rules!2999)))) (inv!57075 (transformation!6770 (h!48154 (t!331993 rules!2999)))) e!2477474))))

(declare-fun b!3996210 () Bool)

(declare-fun e!2477473 () Bool)

(declare-fun tp!1216488 () Bool)

(assert (=> b!3996210 (= e!2477473 (and e!2477472 tp!1216488))))

(assert (=> b!3995596 (= tp!1216444 e!2477473)))

(assert (= b!3996211 b!3996212))

(assert (= b!3996210 b!3996211))

(assert (= (and b!3995596 ((_ is Cons!42734) (t!331993 rules!2999))) b!3996210))

(declare-fun m!4576999 () Bool)

(assert (=> b!3996211 m!4576999))

(declare-fun m!4577001 () Bool)

(assert (=> b!3996211 m!4577001))

(declare-fun b!3996217 () Bool)

(declare-fun e!2477477 () Bool)

(declare-fun tp!1216489 () Bool)

(assert (=> b!3996217 (= e!2477477 (and tp_is_empty!20321 tp!1216489))))

(assert (=> b!3995579 (= tp!1216454 e!2477477)))

(assert (= (and b!3995579 ((_ is Cons!42732) (t!331991 prefix!494))) b!3996217))

(declare-fun b!3996218 () Bool)

(declare-fun e!2477478 () Bool)

(declare-fun tp!1216490 () Bool)

(assert (=> b!3996218 (= e!2477478 (and tp_is_empty!20321 tp!1216490))))

(assert (=> b!3995585 (= tp!1216443 e!2477478)))

(assert (= (and b!3995585 ((_ is Cons!42732) (t!331991 newSuffixResult!27))) b!3996218))

(declare-fun b!3996219 () Bool)

(declare-fun e!2477479 () Bool)

(declare-fun tp!1216491 () Bool)

(assert (=> b!3996219 (= e!2477479 (and tp_is_empty!20321 tp!1216491))))

(assert (=> b!3995574 (= tp!1216450 e!2477479)))

(assert (= (and b!3995574 ((_ is Cons!42732) (t!331991 suffixResult!105))) b!3996219))

(declare-fun b!3996220 () Bool)

(declare-fun e!2477480 () Bool)

(declare-fun tp!1216492 () Bool)

(assert (=> b!3996220 (= e!2477480 (and tp_is_empty!20321 tp!1216492))))

(assert (=> b!3995583 (= tp!1216448 e!2477480)))

(assert (= (and b!3995583 ((_ is Cons!42732) (t!331991 suffix!1299))) b!3996220))

(declare-fun b!3996221 () Bool)

(declare-fun e!2477481 () Bool)

(declare-fun tp!1216493 () Bool)

(assert (=> b!3996221 (= e!2477481 (and tp_is_empty!20321 tp!1216493))))

(assert (=> b!3995567 (= tp!1216451 e!2477481)))

(assert (= (and b!3995567 ((_ is Cons!42732) (t!331991 newSuffix!27))) b!3996221))

(declare-fun e!2477482 () Bool)

(assert (=> b!3995588 (= tp!1216447 e!2477482)))

(declare-fun b!3996223 () Bool)

(declare-fun tp!1216498 () Bool)

(declare-fun tp!1216496 () Bool)

(assert (=> b!3996223 (= e!2477482 (and tp!1216498 tp!1216496))))

(declare-fun b!3996222 () Bool)

(assert (=> b!3996222 (= e!2477482 tp_is_empty!20321)))

(declare-fun b!3996225 () Bool)

(declare-fun tp!1216495 () Bool)

(declare-fun tp!1216497 () Bool)

(assert (=> b!3996225 (= e!2477482 (and tp!1216495 tp!1216497))))

(declare-fun b!3996224 () Bool)

(declare-fun tp!1216494 () Bool)

(assert (=> b!3996224 (= e!2477482 tp!1216494)))

(assert (= (and b!3995588 ((_ is ElementMatch!11675) (regex!6770 (h!48154 rules!2999)))) b!3996222))

(assert (= (and b!3995588 ((_ is Concat!18676) (regex!6770 (h!48154 rules!2999)))) b!3996223))

(assert (= (and b!3995588 ((_ is Star!11675) (regex!6770 (h!48154 rules!2999)))) b!3996224))

(assert (= (and b!3995588 ((_ is Union!11675) (regex!6770 (h!48154 rules!2999)))) b!3996225))

(declare-fun b_lambda!116633 () Bool)

(assert (= b_lambda!116623 (or (and b!3995590 b_free!110985) (and b!3995568 b_free!110989 (= (toValue!9258 (transformation!6770 (h!48154 rules!2999))) (toValue!9258 (transformation!6770 (rule!9796 token!484))))) (and b!3996212 b_free!110993 (= (toValue!9258 (transformation!6770 (h!48154 (t!331993 rules!2999)))) (toValue!9258 (transformation!6770 (rule!9796 token!484))))) b_lambda!116633)))

(declare-fun b_lambda!116635 () Bool)

(assert (= b_lambda!116627 (or (and b!3995590 b_free!110987) (and b!3995568 b_free!110991 (= (toChars!9117 (transformation!6770 (h!48154 rules!2999))) (toChars!9117 (transformation!6770 (rule!9796 token!484))))) (and b!3996212 b_free!110995 (= (toChars!9117 (transformation!6770 (h!48154 (t!331993 rules!2999)))) (toChars!9117 (transformation!6770 (rule!9796 token!484))))) b_lambda!116635)))

(declare-fun b_lambda!116637 () Bool)

(assert (= b_lambda!116625 (or (and b!3995590 b_free!110987) (and b!3995568 b_free!110991 (= (toChars!9117 (transformation!6770 (h!48154 rules!2999))) (toChars!9117 (transformation!6770 (rule!9796 token!484))))) (and b!3996212 b_free!110995 (= (toChars!9117 (transformation!6770 (h!48154 (t!331993 rules!2999)))) (toChars!9117 (transformation!6770 (rule!9796 token!484))))) b_lambda!116637)))

(check-sat (not b!3995694) (not d!1182400) (not d!1182526) (not d!1182574) (not d!1182562) (not b!3995695) (not b!3996122) (not d!1182366) (not d!1182434) (not b_lambda!116631) (not b!3995717) (not b!3996169) (not b!3996124) (not d!1182540) (not b!3995799) (not tb!240405) (not b!3995762) b_and!306917 (not b!3995773) (not b!3995649) (not d!1182364) (not b!3996210) (not b!3996006) (not b!3996040) (not b!3996180) (not b!3996145) (not b!3995735) (not b!3996052) (not b!3995727) (not b!3996072) (not d!1182546) (not b!3996152) (not b!3996055) (not b!3996034) (not b!3996125) (not b!3996121) (not b!3996170) (not b!3996035) tp_is_empty!20321 (not b_next!111689) (not tb!240409) b_and!306923 (not b!3996165) (not b!3995732) (not b!3995684) (not b!3995645) (not b!3996133) (not b!3996076) (not b!3995846) (not b!3996002) (not b!3995721) (not b!3996178) (not b!3995772) (not d!1182372) (not b_next!111695) (not d!1182338) (not d!1182378) (not b!3995728) (not b!3996217) (not b!3995812) (not d!1182356) (not b!3995998) (not d!1182384) (not b!3996164) (not b!3995999) (not d!1182558) (not b!3995696) (not b!3996182) (not b!3996162) (not bm!285927) (not b!3995780) (not b!3996140) (not b!3996082) (not b_lambda!116635) (not b!3996147) (not b!3996056) (not b!3996000) (not d!1182334) (not d!1182352) (not b!3995612) (not b!3996126) (not b!3996100) (not b!3995814) (not b!3995628) (not b!3996223) (not b!3996123) (not b!3996225) (not d!1182348) (not b_lambda!116637) (not tb!240397) (not b!3996137) (not d!1182570) (not bm!285926) (not b!3996104) (not b!3995609) (not b_lambda!116633) (not b!3996132) (not d!1182566) (not d!1182594) (not b!3996103) (not b!3995803) (not d!1182422) (not b!3996134) (not b!3995904) (not b!3996057) (not b!3996071) (not b!3995842) (not d!1182358) (not d!1182578) (not b!3996135) (not b!3996005) (not b!3996114) b_and!306915 (not b!3995616) (not b!3996127) (not d!1182436) (not b!3995720) (not d!1182590) (not b!3995805) (not d!1182476) (not b!3996142) (not d!1182432) (not b!3995838) (not d!1182556) (not d!1182490) (not b!3995736) (not d!1182514) (not b_next!111697) (not b!3996201) (not b!3995613) (not b!3995818) (not b!3995719) (not bm!285925) (not b!3996128) (not b!3995723) (not b!3995770) (not b!3996099) (not b!3995824) (not d!1182586) (not b!3995777) (not d!1182564) (not b!3996081) (not b!3996161) (not d!1182370) (not d!1182344) b_and!306919 (not b!3996219) (not b!3995902) (not b!3996049) (not b!3996148) (not b!3995680) (not b!3995618) (not b!3996195) (not b!3995853) (not b!3995731) (not d!1182512) (not d!1182486) (not b!3995903) (not b!3995845) (not b!3995806) (not bm!285923) (not b!3996220) (not b!3996218) (not d!1182442) (not b!3996196) (not d!1182414) (not d!1182516) (not d!1182354) (not b!3995632) (not d!1182580) (not b!3995691) (not b_lambda!116629) (not d!1182508) (not d!1182394) (not b!3995685) (not d!1182498) (not b!3996166) (not d!1182530) (not b!3996102) (not b_next!111699) (not b!3995776) (not b!3996075) (not b!3995817) (not b!3996130) b_and!306925 (not d!1182404) (not d!1182494) (not b!3995608) (not b!3995889) (not b!3996158) (not b!3996138) (not d!1182502) (not d!1182572) (not b!3995617) (not d!1182550) (not b!3995722) (not b!3996211) (not b!3995875) (not bm!285900) (not b!3995811) (not b_next!111693) (not b!3995801) (not b!3995681) (not b!3995808) (not b!3995825) (not b!3996080) (not b!3995841) (not d!1182346) (not b!3995774) (not d!1182350) (not b!3996050) (not d!1182360) (not b!3995614) (not d!1182388) (not d!1182568) (not b!3996224) (not d!1182410) (not b!3995840) (not b!3996078) (not b!3996146) (not b!3996194) (not b!3996085) (not d!1182542) (not b!3996176) (not d!1182534) (not tb!240401) (not b!3996098) (not d!1182584) (not d!1182376) (not b!3996003) (not b!3996163) (not b!3995610) (not b!3996001) (not b!3996221) (not b!3996038) (not d!1182428) (not d!1182396) (not b!3995844) (not b!3995778) (not b!3995679) (not b!3996086) (not b!3995725) (not b_next!111691) (not b!3995819) (not d!1182374) (not b!3996079) (not b!3995633) (not b!3995781) (not b!3995852) (not b!3996115) (not bm!285907) (not b!3996067) (not b!3995629) (not b!3995718) (not d!1182402) (not b!3995787) (not d!1182588) (not d!1182406) (not b!3996151) (not d!1182504) (not d!1182342) (not bm!285908) b_and!306921 (not d!1182430) (not b!3996083))
(check-sat b_and!306917 (not b_next!111695) b_and!306915 (not b_next!111697) b_and!306919 (not b_next!111693) (not b_next!111691) b_and!306921 (not b_next!111689) b_and!306923 b_and!306925 (not b_next!111699))
