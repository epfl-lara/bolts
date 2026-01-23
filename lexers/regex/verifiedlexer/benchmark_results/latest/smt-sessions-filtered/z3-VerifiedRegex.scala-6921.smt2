; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!364920 () Bool)

(assert start!364920)

(declare-fun b!3897434 () Bool)

(declare-fun b_free!105489 () Bool)

(declare-fun b_next!106193 () Bool)

(assert (=> b!3897434 (= b_free!105489 (not b_next!106193))))

(declare-fun tp!1185938 () Bool)

(declare-fun b_and!294223 () Bool)

(assert (=> b!3897434 (= tp!1185938 b_and!294223)))

(declare-fun b_free!105491 () Bool)

(declare-fun b_next!106195 () Bool)

(assert (=> b!3897434 (= b_free!105491 (not b_next!106195))))

(declare-fun tp!1185939 () Bool)

(declare-fun b_and!294225 () Bool)

(assert (=> b!3897434 (= tp!1185939 b_and!294225)))

(declare-fun b!3897440 () Bool)

(declare-fun b_free!105493 () Bool)

(declare-fun b_next!106197 () Bool)

(assert (=> b!3897440 (= b_free!105493 (not b_next!106197))))

(declare-fun tp!1185926 () Bool)

(declare-fun b_and!294227 () Bool)

(assert (=> b!3897440 (= tp!1185926 b_and!294227)))

(declare-fun b_free!105495 () Bool)

(declare-fun b_next!106199 () Bool)

(assert (=> b!3897440 (= b_free!105495 (not b_next!106199))))

(declare-fun tp!1185929 () Bool)

(declare-fun b_and!294229 () Bool)

(assert (=> b!3897440 (= tp!1185929 b_and!294229)))

(declare-fun b!3897452 () Bool)

(declare-fun b_free!105497 () Bool)

(declare-fun b_next!106201 () Bool)

(assert (=> b!3897452 (= b_free!105497 (not b_next!106201))))

(declare-fun tp!1185943 () Bool)

(declare-fun b_and!294231 () Bool)

(assert (=> b!3897452 (= tp!1185943 b_and!294231)))

(declare-fun b_free!105499 () Bool)

(declare-fun b_next!106203 () Bool)

(assert (=> b!3897452 (= b_free!105499 (not b_next!106203))))

(declare-fun tp!1185927 () Bool)

(declare-fun b_and!294233 () Bool)

(assert (=> b!3897452 (= tp!1185927 b_and!294233)))

(declare-fun b!3897428 () Bool)

(declare-fun b_free!105501 () Bool)

(declare-fun b_next!106205 () Bool)

(assert (=> b!3897428 (= b_free!105501 (not b_next!106205))))

(declare-fun tp!1185932 () Bool)

(declare-fun b_and!294235 () Bool)

(assert (=> b!3897428 (= tp!1185932 b_and!294235)))

(declare-fun b_free!105503 () Bool)

(declare-fun b_next!106207 () Bool)

(assert (=> b!3897428 (= b_free!105503 (not b_next!106207))))

(declare-fun tp!1185937 () Bool)

(declare-fun b_and!294237 () Bool)

(assert (=> b!3897428 (= tp!1185937 b_and!294237)))

(declare-fun b!3897417 () Bool)

(declare-fun res!1576666 () Bool)

(declare-fun e!2409701 () Bool)

(assert (=> b!3897417 (=> (not res!1576666) (not e!2409701))))

(declare-datatypes ((C!22856 0))(
  ( (C!22857 (val!13522 Int)) )
))
(declare-datatypes ((List!41470 0))(
  ( (Nil!41346) (Cons!41346 (h!46766 C!22856) (t!318997 List!41470)) )
))
(declare-fun prefix!426 () List!41470)

(declare-fun isEmpty!24572 (List!41470) Bool)

(assert (=> b!3897417 (= res!1576666 (not (isEmpty!24572 prefix!426)))))

(declare-fun e!2409695 () Bool)

(declare-fun b!3897418 () Bool)

(declare-fun tp!1185935 () Bool)

(declare-fun e!2409692 () Bool)

(declare-datatypes ((List!41471 0))(
  ( (Nil!41347) (Cons!41347 (h!46767 (_ BitVec 16)) (t!318998 List!41471)) )
))
(declare-datatypes ((TokenValue!6660 0))(
  ( (FloatLiteralValue!13320 (text!47065 List!41471)) (TokenValueExt!6659 (__x!25537 Int)) (Broken!33300 (value!203863 List!41471)) (Object!6783) (End!6660) (Def!6660) (Underscore!6660) (Match!6660) (Else!6660) (Error!6660) (Case!6660) (If!6660) (Extends!6660) (Abstract!6660) (Class!6660) (Val!6660) (DelimiterValue!13320 (del!6720 List!41471)) (KeywordValue!6666 (value!203864 List!41471)) (CommentValue!13320 (value!203865 List!41471)) (WhitespaceValue!13320 (value!203866 List!41471)) (IndentationValue!6660 (value!203867 List!41471)) (String!47017) (Int32!6660) (Broken!33301 (value!203868 List!41471)) (Boolean!6661) (Unit!59467) (OperatorValue!6663 (op!6720 List!41471)) (IdentifierValue!13320 (value!203869 List!41471)) (IdentifierValue!13321 (value!203870 List!41471)) (WhitespaceValue!13321 (value!203871 List!41471)) (True!13320) (False!13320) (Broken!33302 (value!203872 List!41471)) (Broken!33303 (value!203873 List!41471)) (True!13321) (RightBrace!6660) (RightBracket!6660) (Colon!6660) (Null!6660) (Comma!6660) (LeftBracket!6660) (False!13321) (LeftBrace!6660) (ImaginaryLiteralValue!6660 (text!47066 List!41471)) (StringLiteralValue!19980 (value!203874 List!41471)) (EOFValue!6660 (value!203875 List!41471)) (IdentValue!6660 (value!203876 List!41471)) (DelimiterValue!13321 (value!203877 List!41471)) (DedentValue!6660 (value!203878 List!41471)) (NewLineValue!6660 (value!203879 List!41471)) (IntegerValue!19980 (value!203880 (_ BitVec 32)) (text!47067 List!41471)) (IntegerValue!19981 (value!203881 Int) (text!47068 List!41471)) (Times!6660) (Or!6660) (Equal!6660) (Minus!6660) (Broken!33304 (value!203882 List!41471)) (And!6660) (Div!6660) (LessEqual!6660) (Mod!6660) (Concat!17995) (Not!6660) (Plus!6660) (SpaceValue!6660 (value!203883 List!41471)) (IntegerValue!19982 (value!203884 Int) (text!47069 List!41471)) (StringLiteralValue!19981 (text!47070 List!41471)) (FloatLiteralValue!13321 (text!47071 List!41471)) (BytesLiteralValue!6660 (value!203885 List!41471)) (CommentValue!13321 (value!203886 List!41471)) (StringLiteralValue!19982 (value!203887 List!41471)) (ErrorTokenValue!6660 (msg!6721 List!41471)) )
))
(declare-datatypes ((Regex!11335 0))(
  ( (ElementMatch!11335 (c!677552 C!22856)) (Concat!17996 (regOne!23182 Regex!11335) (regTwo!23182 Regex!11335)) (EmptyExpr!11335) (Star!11335 (reg!11664 Regex!11335)) (EmptyLang!11335) (Union!11335 (regOne!23183 Regex!11335) (regTwo!23183 Regex!11335)) )
))
(declare-datatypes ((String!47018 0))(
  ( (String!47019 (value!203888 String)) )
))
(declare-datatypes ((IArray!25287 0))(
  ( (IArray!25288 (innerList!12701 List!41470)) )
))
(declare-datatypes ((Conc!12641 0))(
  ( (Node!12641 (left!31690 Conc!12641) (right!32020 Conc!12641) (csize!25512 Int) (cheight!12852 Int)) (Leaf!19563 (xs!15947 IArray!25287) (csize!25513 Int)) (Empty!12641) )
))
(declare-datatypes ((BalanceConc!24876 0))(
  ( (BalanceConc!24877 (c!677553 Conc!12641)) )
))
(declare-datatypes ((TokenValueInjection!12748 0))(
  ( (TokenValueInjection!12749 (toValue!8866 Int) (toChars!8725 Int)) )
))
(declare-datatypes ((Rule!12660 0))(
  ( (Rule!12661 (regex!6430 Regex!11335) (tag!7290 String!47018) (isSeparator!6430 Bool) (transformation!6430 TokenValueInjection!12748)) )
))
(declare-datatypes ((Token!11998 0))(
  ( (Token!11999 (value!203889 TokenValue!6660) (rule!9332 Rule!12660) (size!31041 Int) (originalCharacters!7030 List!41470)) )
))
(declare-datatypes ((List!41472 0))(
  ( (Nil!41348) (Cons!41348 (h!46768 Token!11998) (t!318999 List!41472)) )
))
(declare-fun suffixTokens!72 () List!41472)

(declare-fun inv!21 (TokenValue!6660) Bool)

(assert (=> b!3897418 (= e!2409692 (and (inv!21 (value!203889 (h!46768 suffixTokens!72))) e!2409695 tp!1185935))))

(declare-fun b!3897419 () Bool)

(declare-fun tp!1185941 () Bool)

(declare-fun e!2409690 () Bool)

(declare-fun inv!55509 (Token!11998) Bool)

(assert (=> b!3897419 (= e!2409690 (and (inv!55509 (h!46768 suffixTokens!72)) e!2409692 tp!1185941))))

(declare-fun b!3897420 () Bool)

(declare-datatypes ((tuple2!40582 0))(
  ( (tuple2!40583 (_1!23425 Token!11998) (_2!23425 List!41470)) )
))
(declare-datatypes ((Option!8850 0))(
  ( (None!8849) (Some!8849 (v!39161 tuple2!40582)) )
))
(declare-fun e!2409712 () Option!8850)

(declare-fun e!2409716 () Option!8850)

(assert (=> b!3897420 (= e!2409712 e!2409716)))

(declare-fun c!677551 () Bool)

(declare-datatypes ((List!41473 0))(
  ( (Nil!41349) (Cons!41349 (h!46769 Rule!12660) (t!319000 List!41473)) )
))
(declare-fun rules!2768 () List!41473)

(get-info :version)

(assert (=> b!3897420 (= c!677551 ((_ is Cons!41349) rules!2768))))

(declare-fun call!283720 () Option!8850)

(declare-datatypes ((LexerInterface!6019 0))(
  ( (LexerInterfaceExt!6016 (__x!25538 Int)) (Lexer!6017) )
))
(declare-fun thiss!20629 () LexerInterface!6019)

(declare-fun lt!1357640 () List!41470)

(declare-fun bm!283715 () Bool)

(declare-fun maxPrefixOneRule!2399 (LexerInterface!6019 Rule!12660 List!41470) Option!8850)

(assert (=> bm!283715 (= call!283720 (maxPrefixOneRule!2399 thiss!20629 (h!46769 rules!2768) lt!1357640))))

(declare-fun b!3897421 () Bool)

(declare-fun e!2409704 () Bool)

(declare-fun tp_is_empty!19641 () Bool)

(declare-fun tp!1185931 () Bool)

(assert (=> b!3897421 (= e!2409704 (and tp_is_empty!19641 tp!1185931))))

(declare-fun lt!1357642 () Option!8850)

(declare-fun b!3897422 () Bool)

(declare-fun maxPrefix!3323 (LexerInterface!6019 List!41473 List!41470) Option!8850)

(assert (=> b!3897422 (= lt!1357642 (maxPrefix!3323 thiss!20629 (t!319000 rules!2768) lt!1357640))))

(declare-fun lt!1357646 () Option!8850)

(assert (=> b!3897422 (= lt!1357646 call!283720)))

(assert (=> b!3897422 (= e!2409716 (ite (and ((_ is None!8849) lt!1357646) ((_ is None!8849) lt!1357642)) None!8849 (ite ((_ is None!8849) lt!1357642) lt!1357646 (ite ((_ is None!8849) lt!1357646) lt!1357642 (ite (>= (size!31041 (_1!23425 (v!39161 lt!1357646))) (size!31041 (_1!23425 (v!39161 lt!1357642)))) (Some!8849 (v!39161 lt!1357646)) lt!1357642)))))))

(declare-fun b!3897423 () Bool)

(declare-fun e!2409699 () Bool)

(declare-fun e!2409684 () Bool)

(declare-fun tp!1185933 () Bool)

(assert (=> b!3897423 (= e!2409699 (and e!2409684 tp!1185933))))

(declare-fun e!2409706 () Bool)

(declare-fun b!3897424 () Bool)

(declare-fun tp!1185936 () Bool)

(declare-fun inv!55506 (String!47018) Bool)

(declare-fun inv!55510 (TokenValueInjection!12748) Bool)

(assert (=> b!3897424 (= e!2409695 (and tp!1185936 (inv!55506 (tag!7290 (rule!9332 (h!46768 suffixTokens!72)))) (inv!55510 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) e!2409706))))

(declare-fun tp!1185924 () Bool)

(declare-fun prefixTokens!80 () List!41472)

(declare-fun e!2409702 () Bool)

(declare-fun b!3897425 () Bool)

(declare-fun e!2409703 () Bool)

(assert (=> b!3897425 (= e!2409702 (and tp!1185924 (inv!55506 (tag!7290 (rule!9332 (h!46768 prefixTokens!80)))) (inv!55510 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) e!2409703))))

(declare-fun b!3897426 () Bool)

(declare-fun e!2409685 () Bool)

(declare-fun e!2409715 () Bool)

(assert (=> b!3897426 (= e!2409685 e!2409715)))

(declare-fun res!1576669 () Bool)

(assert (=> b!3897426 (=> (not res!1576669) (not e!2409715))))

(declare-fun lt!1357634 () Option!8850)

(assert (=> b!3897426 (= res!1576669 ((_ is Some!8849) lt!1357634))))

(assert (=> b!3897426 (= lt!1357634 (maxPrefix!3323 thiss!20629 rules!2768 lt!1357640))))

(declare-fun err!4369 () Option!8850)

(declare-fun tp!1185930 () Bool)

(declare-fun b!3897427 () Bool)

(declare-fun e!2409717 () Bool)

(declare-fun e!2409705 () Bool)

(assert (=> b!3897427 (= e!2409717 (and tp!1185930 (inv!55506 (tag!7290 (rule!9332 (_1!23425 (v!39161 err!4369))))) (inv!55510 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) e!2409705))))

(assert (=> b!3897428 (= e!2409705 (and tp!1185932 tp!1185937))))

(declare-fun b!3897429 () Bool)

(declare-fun e!2409709 () Bool)

(assert (=> b!3897429 (= e!2409715 (not e!2409709))))

(declare-fun res!1576670 () Bool)

(assert (=> b!3897429 (=> res!1576670 e!2409709)))

(declare-fun lt!1357636 () List!41470)

(assert (=> b!3897429 (= res!1576670 (not (= lt!1357636 lt!1357640)))))

(declare-datatypes ((tuple2!40584 0))(
  ( (tuple2!40585 (_1!23426 List!41472) (_2!23426 List!41470)) )
))
(declare-fun lt!1357641 () tuple2!40584)

(declare-fun lexList!1787 (LexerInterface!6019 List!41473 List!41470) tuple2!40584)

(assert (=> b!3897429 (= lt!1357641 (lexList!1787 thiss!20629 rules!2768 (_2!23425 (v!39161 lt!1357634))))))

(declare-fun lt!1357639 () List!41470)

(declare-fun lt!1357638 () Int)

(declare-fun lt!1357647 () List!41470)

(declare-fun lt!1357648 () TokenValue!6660)

(assert (=> b!3897429 (and (= (size!31041 (_1!23425 (v!39161 lt!1357634))) lt!1357638) (= (originalCharacters!7030 (_1!23425 (v!39161 lt!1357634))) lt!1357647) (= (tuple2!40583 (_1!23425 (v!39161 lt!1357634)) (_2!23425 (v!39161 lt!1357634))) (tuple2!40583 (Token!11999 lt!1357648 (rule!9332 (_1!23425 (v!39161 lt!1357634))) lt!1357638 lt!1357647) lt!1357639)))))

(declare-fun size!31042 (List!41470) Int)

(assert (=> b!3897429 (= lt!1357638 (size!31042 lt!1357647))))

(declare-fun e!2409691 () Bool)

(assert (=> b!3897429 e!2409691))

(declare-fun res!1576662 () Bool)

(assert (=> b!3897429 (=> (not res!1576662) (not e!2409691))))

(assert (=> b!3897429 (= res!1576662 (= (value!203889 (_1!23425 (v!39161 lt!1357634))) lt!1357648))))

(declare-fun apply!9669 (TokenValueInjection!12748 BalanceConc!24876) TokenValue!6660)

(declare-fun seqFromList!4697 (List!41470) BalanceConc!24876)

(assert (=> b!3897429 (= lt!1357648 (apply!9669 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))) (seqFromList!4697 lt!1357647)))))

(assert (=> b!3897429 (= (_2!23425 (v!39161 lt!1357634)) lt!1357639)))

(declare-datatypes ((Unit!59468 0))(
  ( (Unit!59469) )
))
(declare-fun lt!1357650 () Unit!59468)

(declare-fun lemmaSamePrefixThenSameSuffix!1746 (List!41470 List!41470 List!41470 List!41470 List!41470) Unit!59468)

(assert (=> b!3897429 (= lt!1357650 (lemmaSamePrefixThenSameSuffix!1746 lt!1357647 (_2!23425 (v!39161 lt!1357634)) lt!1357647 lt!1357639 lt!1357640))))

(declare-fun getSuffix!1980 (List!41470 List!41470) List!41470)

(assert (=> b!3897429 (= lt!1357639 (getSuffix!1980 lt!1357640 lt!1357647))))

(declare-fun isPrefix!3525 (List!41470 List!41470) Bool)

(assert (=> b!3897429 (isPrefix!3525 lt!1357647 lt!1357636)))

(declare-fun ++!10617 (List!41470 List!41470) List!41470)

(assert (=> b!3897429 (= lt!1357636 (++!10617 lt!1357647 (_2!23425 (v!39161 lt!1357634))))))

(declare-fun lt!1357644 () Unit!59468)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2388 (List!41470 List!41470) Unit!59468)

(assert (=> b!3897429 (= lt!1357644 (lemmaConcatTwoListThenFirstIsPrefix!2388 lt!1357647 (_2!23425 (v!39161 lt!1357634))))))

(declare-fun list!15366 (BalanceConc!24876) List!41470)

(declare-fun charsOf!4254 (Token!11998) BalanceConc!24876)

(assert (=> b!3897429 (= lt!1357647 (list!15366 (charsOf!4254 (_1!23425 (v!39161 lt!1357634)))))))

(declare-fun ruleValid!2378 (LexerInterface!6019 Rule!12660) Bool)

(assert (=> b!3897429 (ruleValid!2378 thiss!20629 (rule!9332 (_1!23425 (v!39161 lt!1357634))))))

(declare-fun lt!1357652 () Unit!59468)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1458 (LexerInterface!6019 Rule!12660 List!41473) Unit!59468)

(assert (=> b!3897429 (= lt!1357652 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1458 thiss!20629 (rule!9332 (_1!23425 (v!39161 lt!1357634))) rules!2768))))

(declare-fun lt!1357643 () Unit!59468)

(declare-fun lemmaCharactersSize!1087 (Token!11998) Unit!59468)

(assert (=> b!3897429 (= lt!1357643 (lemmaCharactersSize!1087 (_1!23425 (v!39161 lt!1357634))))))

(declare-fun b!3897430 () Bool)

(declare-fun e!2409711 () Bool)

(declare-fun e!2409708 () Bool)

(assert (=> b!3897430 (= e!2409711 e!2409708)))

(declare-fun res!1576661 () Bool)

(assert (=> b!3897430 (=> res!1576661 e!2409708)))

(assert (=> b!3897430 (= res!1576661 (not (= lt!1357634 (Some!8849 (tuple2!40583 (_1!23425 (v!39161 lt!1357634)) (_2!23425 (v!39161 lt!1357634)))))))))

(declare-fun e!2409689 () Bool)

(assert (=> b!3897430 e!2409689))

(declare-fun res!1576667 () Bool)

(assert (=> b!3897430 (=> (not res!1576667) (not e!2409689))))

(assert (=> b!3897430 (= res!1576667 (isPrefix!3525 lt!1357640 lt!1357640))))

(declare-fun lt!1357649 () Unit!59468)

(declare-fun lemmaIsPrefixRefl!2232 (List!41470 List!41470) Unit!59468)

(assert (=> b!3897430 (= lt!1357649 (lemmaIsPrefixRefl!2232 lt!1357640 lt!1357640))))

(declare-fun lt!1357635 () tuple2!40584)

(assert (=> b!3897430 (= lt!1357635 (tuple2!40585 (Cons!41348 (_1!23425 (v!39161 lt!1357634)) (_1!23426 lt!1357641)) (_2!23426 lt!1357641)))))

(declare-fun b!3897431 () Bool)

(assert (=> b!3897431 (= e!2409691 (= (size!31041 (_1!23425 (v!39161 lt!1357634))) (size!31042 (originalCharacters!7030 (_1!23425 (v!39161 lt!1357634))))))))

(declare-fun tp!1185942 () Bool)

(declare-fun b!3897432 () Bool)

(declare-fun e!2409693 () Bool)

(assert (=> b!3897432 (= e!2409693 (and (inv!21 (value!203889 (h!46768 prefixTokens!80))) e!2409702 tp!1185942))))

(declare-fun b!3897433 () Bool)

(declare-fun e!2409713 () Bool)

(declare-fun tp!1185928 () Bool)

(assert (=> b!3897433 (= e!2409713 (and tp_is_empty!19641 tp!1185928))))

(declare-fun e!2409696 () Bool)

(assert (=> b!3897434 (= e!2409696 (and tp!1185938 tp!1185939))))

(declare-fun b!3897435 () Bool)

(declare-fun e!2409700 () Bool)

(declare-fun tp!1185940 () Bool)

(assert (=> b!3897435 (= e!2409700 (and tp_is_empty!19641 tp!1185940))))

(declare-fun b!3897436 () Bool)

(declare-fun res!1576664 () Bool)

(assert (=> b!3897436 (=> (not res!1576664) (not e!2409701))))

(declare-fun rulesInvariant!5362 (LexerInterface!6019 List!41473) Bool)

(assert (=> b!3897436 (= res!1576664 (rulesInvariant!5362 thiss!20629 rules!2768))))

(declare-fun b!3897437 () Bool)

(assert (=> b!3897437 (= e!2409689 (= lt!1357634 e!2409712))))

(declare-fun c!677550 () Bool)

(assert (=> b!3897437 (= c!677550 (and ((_ is Cons!41349) rules!2768) ((_ is Nil!41349) (t!319000 rules!2768))))))

(declare-fun b!3897438 () Bool)

(assert (=> b!3897438 (= e!2409712 call!283720)))

(declare-fun b!3897439 () Bool)

(assert (=> b!3897439 (= e!2409701 e!2409685)))

(declare-fun res!1576657 () Bool)

(assert (=> b!3897439 (=> (not res!1576657) (not e!2409685))))

(declare-fun suffixResult!91 () List!41470)

(declare-fun lt!1357651 () List!41472)

(assert (=> b!3897439 (= res!1576657 (= lt!1357635 (tuple2!40585 lt!1357651 suffixResult!91)))))

(assert (=> b!3897439 (= lt!1357635 (lexList!1787 thiss!20629 rules!2768 lt!1357640))))

(declare-fun ++!10618 (List!41472 List!41472) List!41472)

(assert (=> b!3897439 (= lt!1357651 (++!10618 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!41470)

(assert (=> b!3897439 (= lt!1357640 (++!10617 prefix!426 suffix!1176))))

(assert (=> b!3897440 (= e!2409703 (and tp!1185926 tp!1185929))))

(declare-fun b!3897441 () Bool)

(declare-fun e!2409686 () Bool)

(assert (=> b!3897441 (= e!2409708 e!2409686)))

(declare-fun res!1576659 () Bool)

(assert (=> b!3897441 (=> res!1576659 e!2409686)))

(declare-fun lt!1357645 () List!41472)

(declare-fun lt!1357653 () List!41472)

(assert (=> b!3897441 (= res!1576659 (or (not (= lt!1357651 (_1!23426 lt!1357635))) (not (= lt!1357651 lt!1357645)) (not (= prefixTokens!80 lt!1357653)) (not (= prefix!426 lt!1357647))))))

(assert (=> b!3897441 (= lt!1357647 prefix!426)))

(declare-fun lt!1357637 () Unit!59468)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!502 (List!41470 List!41470 List!41470 List!41470) Unit!59468)

(assert (=> b!3897441 (= lt!1357637 (lemmaConcatSameAndSameSizesThenSameLists!502 lt!1357647 (_2!23425 (v!39161 lt!1357634)) prefix!426 suffix!1176))))

(declare-fun res!1576665 () Bool)

(assert (=> start!364920 (=> (not res!1576665) (not e!2409701))))

(assert (=> start!364920 (= res!1576665 ((_ is Lexer!6017) thiss!20629))))

(assert (=> start!364920 e!2409701))

(assert (=> start!364920 e!2409713))

(assert (=> start!364920 true))

(assert (=> start!364920 e!2409704))

(assert (=> start!364920 e!2409699))

(declare-fun e!2409694 () Bool)

(assert (=> start!364920 e!2409694))

(assert (=> start!364920 e!2409690))

(assert (=> start!364920 e!2409700))

(declare-fun tp!1185925 () Bool)

(declare-fun b!3897442 () Bool)

(declare-fun e!2409714 () Bool)

(declare-fun e!2409710 () Bool)

(assert (=> b!3897442 (= e!2409710 (and (inv!55509 (_1!23425 (v!39161 err!4369))) e!2409714 tp!1185925))))

(declare-fun b!3897443 () Bool)

(declare-fun res!1576658 () Bool)

(assert (=> b!3897443 (=> (not res!1576658) (not e!2409701))))

(declare-fun isEmpty!24573 (List!41473) Bool)

(assert (=> b!3897443 (= res!1576658 (not (isEmpty!24573 rules!2768)))))

(declare-fun b!3897444 () Bool)

(declare-fun tp!1185923 () Bool)

(assert (=> b!3897444 (= e!2409714 (and (inv!21 (value!203889 (_1!23425 (v!39161 err!4369)))) e!2409717 tp!1185923))))

(declare-fun b!3897445 () Bool)

(assert (=> b!3897445 true))

(assert (=> b!3897445 e!2409710))

(assert (=> b!3897445 (= e!2409716 err!4369)))

(declare-fun b!3897446 () Bool)

(assert (=> b!3897446 (= e!2409709 e!2409711)))

(declare-fun res!1576660 () Bool)

(assert (=> b!3897446 (=> res!1576660 e!2409711)))

(assert (=> b!3897446 (= res!1576660 (or (not (= lt!1357635 (tuple2!40585 lt!1357645 (_2!23426 lt!1357641)))) (not (= lt!1357641 (tuple2!40585 (_1!23426 lt!1357641) (_2!23426 lt!1357641)))) (not (= (_2!23425 (v!39161 lt!1357634)) suffix!1176))))))

(assert (=> b!3897446 (= lt!1357645 (++!10618 lt!1357653 (_1!23426 lt!1357641)))))

(assert (=> b!3897446 (= lt!1357653 (Cons!41348 (_1!23425 (v!39161 lt!1357634)) Nil!41348))))

(declare-fun b!3897447 () Bool)

(declare-fun res!1576663 () Bool)

(assert (=> b!3897447 (=> (not res!1576663) (not e!2409685))))

(assert (=> b!3897447 (= res!1576663 (= (lexList!1787 thiss!20629 rules!2768 suffix!1176) (tuple2!40585 suffixTokens!72 suffixResult!91)))))

(declare-fun tp!1185944 () Bool)

(declare-fun b!3897448 () Bool)

(assert (=> b!3897448 (= e!2409684 (and tp!1185944 (inv!55506 (tag!7290 (h!46769 rules!2768))) (inv!55510 (transformation!6430 (h!46769 rules!2768))) e!2409696))))

(declare-fun b!3897449 () Bool)

(declare-fun tp!1185934 () Bool)

(assert (=> b!3897449 (= e!2409694 (and (inv!55509 (h!46768 prefixTokens!80)) e!2409693 tp!1185934))))

(declare-fun b!3897450 () Bool)

(declare-fun res!1576668 () Bool)

(assert (=> b!3897450 (=> (not res!1576668) (not e!2409701))))

(declare-fun isEmpty!24574 (List!41472) Bool)

(assert (=> b!3897450 (= res!1576668 (not (isEmpty!24574 prefixTokens!80)))))

(declare-fun b!3897451 () Bool)

(assert (=> b!3897451 (= e!2409686 (isPrefix!3525 Nil!41346 suffix!1176))))

(assert (=> b!3897452 (= e!2409706 (and tp!1185943 tp!1185927))))

(assert (= (and start!364920 res!1576665) b!3897443))

(assert (= (and b!3897443 res!1576658) b!3897436))

(assert (= (and b!3897436 res!1576664) b!3897450))

(assert (= (and b!3897450 res!1576668) b!3897417))

(assert (= (and b!3897417 res!1576666) b!3897439))

(assert (= (and b!3897439 res!1576657) b!3897447))

(assert (= (and b!3897447 res!1576663) b!3897426))

(assert (= (and b!3897426 res!1576669) b!3897429))

(assert (= (and b!3897429 res!1576662) b!3897431))

(assert (= (and b!3897429 (not res!1576670)) b!3897446))

(assert (= (and b!3897446 (not res!1576660)) b!3897430))

(assert (= (and b!3897430 res!1576667) b!3897437))

(assert (= (and b!3897437 c!677550) b!3897438))

(assert (= (and b!3897437 (not c!677550)) b!3897420))

(assert (= (and b!3897420 c!677551) b!3897422))

(assert (= (and b!3897420 (not c!677551)) b!3897445))

(assert (= b!3897427 b!3897428))

(assert (= b!3897444 b!3897427))

(assert (= b!3897442 b!3897444))

(assert (= (and b!3897445 ((_ is Some!8849) err!4369)) b!3897442))

(assert (= (or b!3897438 b!3897422) bm!283715))

(assert (= (and b!3897430 (not res!1576661)) b!3897441))

(assert (= (and b!3897441 (not res!1576659)) b!3897451))

(assert (= (and start!364920 ((_ is Cons!41346) suffixResult!91)) b!3897433))

(assert (= (and start!364920 ((_ is Cons!41346) suffix!1176)) b!3897421))

(assert (= b!3897448 b!3897434))

(assert (= b!3897423 b!3897448))

(assert (= (and start!364920 ((_ is Cons!41349) rules!2768)) b!3897423))

(assert (= b!3897425 b!3897440))

(assert (= b!3897432 b!3897425))

(assert (= b!3897449 b!3897432))

(assert (= (and start!364920 ((_ is Cons!41348) prefixTokens!80)) b!3897449))

(assert (= b!3897424 b!3897452))

(assert (= b!3897418 b!3897424))

(assert (= b!3897419 b!3897418))

(assert (= (and start!364920 ((_ is Cons!41348) suffixTokens!72)) b!3897419))

(assert (= (and start!364920 ((_ is Cons!41346) prefix!426)) b!3897435))

(declare-fun m!4456351 () Bool)

(assert (=> b!3897439 m!4456351))

(declare-fun m!4456353 () Bool)

(assert (=> b!3897439 m!4456353))

(declare-fun m!4456355 () Bool)

(assert (=> b!3897439 m!4456355))

(declare-fun m!4456357 () Bool)

(assert (=> b!3897430 m!4456357))

(declare-fun m!4456359 () Bool)

(assert (=> b!3897430 m!4456359))

(declare-fun m!4456361 () Bool)

(assert (=> b!3897424 m!4456361))

(declare-fun m!4456363 () Bool)

(assert (=> b!3897424 m!4456363))

(declare-fun m!4456365 () Bool)

(assert (=> b!3897443 m!4456365))

(declare-fun m!4456367 () Bool)

(assert (=> b!3897432 m!4456367))

(declare-fun m!4456369 () Bool)

(assert (=> bm!283715 m!4456369))

(declare-fun m!4456371 () Bool)

(assert (=> b!3897422 m!4456371))

(declare-fun m!4456373 () Bool)

(assert (=> b!3897426 m!4456373))

(declare-fun m!4456375 () Bool)

(assert (=> b!3897417 m!4456375))

(declare-fun m!4456377 () Bool)

(assert (=> b!3897418 m!4456377))

(declare-fun m!4456379 () Bool)

(assert (=> b!3897427 m!4456379))

(declare-fun m!4456381 () Bool)

(assert (=> b!3897427 m!4456381))

(declare-fun m!4456383 () Bool)

(assert (=> b!3897447 m!4456383))

(declare-fun m!4456385 () Bool)

(assert (=> b!3897436 m!4456385))

(declare-fun m!4456387 () Bool)

(assert (=> b!3897451 m!4456387))

(declare-fun m!4456389 () Bool)

(assert (=> b!3897444 m!4456389))

(declare-fun m!4456391 () Bool)

(assert (=> b!3897429 m!4456391))

(declare-fun m!4456393 () Bool)

(assert (=> b!3897429 m!4456393))

(declare-fun m!4456395 () Bool)

(assert (=> b!3897429 m!4456395))

(declare-fun m!4456397 () Bool)

(assert (=> b!3897429 m!4456397))

(declare-fun m!4456399 () Bool)

(assert (=> b!3897429 m!4456399))

(assert (=> b!3897429 m!4456395))

(declare-fun m!4456401 () Bool)

(assert (=> b!3897429 m!4456401))

(declare-fun m!4456403 () Bool)

(assert (=> b!3897429 m!4456403))

(declare-fun m!4456405 () Bool)

(assert (=> b!3897429 m!4456405))

(declare-fun m!4456407 () Bool)

(assert (=> b!3897429 m!4456407))

(declare-fun m!4456409 () Bool)

(assert (=> b!3897429 m!4456409))

(assert (=> b!3897429 m!4456399))

(declare-fun m!4456411 () Bool)

(assert (=> b!3897429 m!4456411))

(declare-fun m!4456413 () Bool)

(assert (=> b!3897429 m!4456413))

(declare-fun m!4456415 () Bool)

(assert (=> b!3897429 m!4456415))

(declare-fun m!4456417 () Bool)

(assert (=> b!3897429 m!4456417))

(declare-fun m!4456419 () Bool)

(assert (=> b!3897419 m!4456419))

(declare-fun m!4456421 () Bool)

(assert (=> b!3897442 m!4456421))

(declare-fun m!4456423 () Bool)

(assert (=> b!3897441 m!4456423))

(declare-fun m!4456425 () Bool)

(assert (=> b!3897446 m!4456425))

(declare-fun m!4456427 () Bool)

(assert (=> b!3897425 m!4456427))

(declare-fun m!4456429 () Bool)

(assert (=> b!3897425 m!4456429))

(declare-fun m!4456431 () Bool)

(assert (=> b!3897431 m!4456431))

(declare-fun m!4456433 () Bool)

(assert (=> b!3897448 m!4456433))

(declare-fun m!4456435 () Bool)

(assert (=> b!3897448 m!4456435))

(declare-fun m!4456437 () Bool)

(assert (=> b!3897449 m!4456437))

(declare-fun m!4456439 () Bool)

(assert (=> b!3897450 m!4456439))

(check-sat (not b!3897436) (not b_next!106197) (not b_next!106195) (not b!3897447) b_and!294229 (not b_next!106205) (not b!3897426) (not b!3897450) (not b!3897439) (not b!3897441) (not b!3897443) (not b!3897421) b_and!294223 (not b!3897423) (not b_next!106203) b_and!294231 b_and!294233 (not b!3897449) (not b!3897429) (not b!3897435) (not b!3897419) (not b!3897448) (not b!3897451) (not b_next!106193) (not b_next!106199) (not bm!283715) (not b_next!106207) (not b!3897424) b_and!294237 (not b!3897432) (not b!3897446) (not b!3897433) (not b!3897444) tp_is_empty!19641 (not b!3897427) b_and!294227 (not b_next!106201) b_and!294235 (not b!3897425) (not b!3897430) (not b!3897442) (not b!3897422) (not b!3897431) (not b!3897418) (not b!3897417) b_and!294225)
(check-sat (not b_next!106197) (not b_next!106195) b_and!294229 (not b_next!106205) (not b_next!106193) (not b_next!106199) (not b_next!106207) b_and!294237 b_and!294227 b_and!294225 b_and!294223 (not b_next!106203) b_and!294231 b_and!294233 (not b_next!106201) b_and!294235)
(get-model)

(declare-fun d!1154846 () Bool)

(declare-fun lt!1357678 () Int)

(assert (=> d!1154846 (>= lt!1357678 0)))

(declare-fun e!2409771 () Int)

(assert (=> d!1154846 (= lt!1357678 e!2409771)))

(declare-fun c!677574 () Bool)

(assert (=> d!1154846 (= c!677574 ((_ is Nil!41346) (originalCharacters!7030 (_1!23425 (v!39161 lt!1357634)))))))

(assert (=> d!1154846 (= (size!31042 (originalCharacters!7030 (_1!23425 (v!39161 lt!1357634)))) lt!1357678)))

(declare-fun b!3897538 () Bool)

(assert (=> b!3897538 (= e!2409771 0)))

(declare-fun b!3897539 () Bool)

(assert (=> b!3897539 (= e!2409771 (+ 1 (size!31042 (t!318997 (originalCharacters!7030 (_1!23425 (v!39161 lt!1357634)))))))))

(assert (= (and d!1154846 c!677574) b!3897538))

(assert (= (and d!1154846 (not c!677574)) b!3897539))

(declare-fun m!4456525 () Bool)

(assert (=> b!3897539 m!4456525))

(assert (=> b!3897431 d!1154846))

(declare-fun b!3897548 () Bool)

(declare-fun e!2409780 () Bool)

(declare-fun e!2409778 () Bool)

(assert (=> b!3897548 (= e!2409780 e!2409778)))

(declare-fun res!1576726 () Bool)

(assert (=> b!3897548 (=> (not res!1576726) (not e!2409778))))

(assert (=> b!3897548 (= res!1576726 (not ((_ is Nil!41346) lt!1357640)))))

(declare-fun d!1154848 () Bool)

(declare-fun e!2409779 () Bool)

(assert (=> d!1154848 e!2409779))

(declare-fun res!1576725 () Bool)

(assert (=> d!1154848 (=> res!1576725 e!2409779)))

(declare-fun lt!1357681 () Bool)

(assert (=> d!1154848 (= res!1576725 (not lt!1357681))))

(assert (=> d!1154848 (= lt!1357681 e!2409780)))

(declare-fun res!1576724 () Bool)

(assert (=> d!1154848 (=> res!1576724 e!2409780)))

(assert (=> d!1154848 (= res!1576724 ((_ is Nil!41346) lt!1357640))))

(assert (=> d!1154848 (= (isPrefix!3525 lt!1357640 lt!1357640) lt!1357681)))

(declare-fun b!3897549 () Bool)

(declare-fun res!1576727 () Bool)

(assert (=> b!3897549 (=> (not res!1576727) (not e!2409778))))

(declare-fun head!8244 (List!41470) C!22856)

(assert (=> b!3897549 (= res!1576727 (= (head!8244 lt!1357640) (head!8244 lt!1357640)))))

(declare-fun b!3897550 () Bool)

(declare-fun tail!5961 (List!41470) List!41470)

(assert (=> b!3897550 (= e!2409778 (isPrefix!3525 (tail!5961 lt!1357640) (tail!5961 lt!1357640)))))

(declare-fun b!3897551 () Bool)

(assert (=> b!3897551 (= e!2409779 (>= (size!31042 lt!1357640) (size!31042 lt!1357640)))))

(assert (= (and d!1154848 (not res!1576724)) b!3897548))

(assert (= (and b!3897548 res!1576726) b!3897549))

(assert (= (and b!3897549 res!1576727) b!3897550))

(assert (= (and d!1154848 (not res!1576725)) b!3897551))

(declare-fun m!4456527 () Bool)

(assert (=> b!3897549 m!4456527))

(assert (=> b!3897549 m!4456527))

(declare-fun m!4456529 () Bool)

(assert (=> b!3897550 m!4456529))

(assert (=> b!3897550 m!4456529))

(assert (=> b!3897550 m!4456529))

(assert (=> b!3897550 m!4456529))

(declare-fun m!4456531 () Bool)

(assert (=> b!3897550 m!4456531))

(declare-fun m!4456533 () Bool)

(assert (=> b!3897551 m!4456533))

(assert (=> b!3897551 m!4456533))

(assert (=> b!3897430 d!1154848))

(declare-fun d!1154850 () Bool)

(assert (=> d!1154850 (isPrefix!3525 lt!1357640 lt!1357640)))

(declare-fun lt!1357684 () Unit!59468)

(declare-fun choose!23047 (List!41470 List!41470) Unit!59468)

(assert (=> d!1154850 (= lt!1357684 (choose!23047 lt!1357640 lt!1357640))))

(assert (=> d!1154850 (= (lemmaIsPrefixRefl!2232 lt!1357640 lt!1357640) lt!1357684)))

(declare-fun bs!584760 () Bool)

(assert (= bs!584760 d!1154850))

(assert (=> bs!584760 m!4456357))

(declare-fun m!4456535 () Bool)

(assert (=> bs!584760 m!4456535))

(assert (=> b!3897430 d!1154850))

(declare-fun b!3897552 () Bool)

(declare-fun e!2409783 () Bool)

(declare-fun e!2409781 () Bool)

(assert (=> b!3897552 (= e!2409783 e!2409781)))

(declare-fun res!1576730 () Bool)

(assert (=> b!3897552 (=> (not res!1576730) (not e!2409781))))

(assert (=> b!3897552 (= res!1576730 (not ((_ is Nil!41346) suffix!1176)))))

(declare-fun d!1154852 () Bool)

(declare-fun e!2409782 () Bool)

(assert (=> d!1154852 e!2409782))

(declare-fun res!1576729 () Bool)

(assert (=> d!1154852 (=> res!1576729 e!2409782)))

(declare-fun lt!1357685 () Bool)

(assert (=> d!1154852 (= res!1576729 (not lt!1357685))))

(assert (=> d!1154852 (= lt!1357685 e!2409783)))

(declare-fun res!1576728 () Bool)

(assert (=> d!1154852 (=> res!1576728 e!2409783)))

(assert (=> d!1154852 (= res!1576728 ((_ is Nil!41346) Nil!41346))))

(assert (=> d!1154852 (= (isPrefix!3525 Nil!41346 suffix!1176) lt!1357685)))

(declare-fun b!3897553 () Bool)

(declare-fun res!1576731 () Bool)

(assert (=> b!3897553 (=> (not res!1576731) (not e!2409781))))

(assert (=> b!3897553 (= res!1576731 (= (head!8244 Nil!41346) (head!8244 suffix!1176)))))

(declare-fun b!3897554 () Bool)

(assert (=> b!3897554 (= e!2409781 (isPrefix!3525 (tail!5961 Nil!41346) (tail!5961 suffix!1176)))))

(declare-fun b!3897555 () Bool)

(assert (=> b!3897555 (= e!2409782 (>= (size!31042 suffix!1176) (size!31042 Nil!41346)))))

(assert (= (and d!1154852 (not res!1576728)) b!3897552))

(assert (= (and b!3897552 res!1576730) b!3897553))

(assert (= (and b!3897553 res!1576731) b!3897554))

(assert (= (and d!1154852 (not res!1576729)) b!3897555))

(declare-fun m!4456537 () Bool)

(assert (=> b!3897553 m!4456537))

(declare-fun m!4456539 () Bool)

(assert (=> b!3897553 m!4456539))

(declare-fun m!4456541 () Bool)

(assert (=> b!3897554 m!4456541))

(declare-fun m!4456543 () Bool)

(assert (=> b!3897554 m!4456543))

(assert (=> b!3897554 m!4456541))

(assert (=> b!3897554 m!4456543))

(declare-fun m!4456545 () Bool)

(assert (=> b!3897554 m!4456545))

(declare-fun m!4456547 () Bool)

(assert (=> b!3897555 m!4456547))

(declare-fun m!4456549 () Bool)

(assert (=> b!3897555 m!4456549))

(assert (=> b!3897451 d!1154852))

(declare-fun d!1154854 () Bool)

(declare-fun lt!1357698 () List!41470)

(assert (=> d!1154854 (= (++!10617 lt!1357647 lt!1357698) lt!1357640)))

(declare-fun e!2409794 () List!41470)

(assert (=> d!1154854 (= lt!1357698 e!2409794)))

(declare-fun c!677579 () Bool)

(assert (=> d!1154854 (= c!677579 ((_ is Cons!41346) lt!1357647))))

(assert (=> d!1154854 (>= (size!31042 lt!1357640) (size!31042 lt!1357647))))

(assert (=> d!1154854 (= (getSuffix!1980 lt!1357640 lt!1357647) lt!1357698)))

(declare-fun b!3897578 () Bool)

(assert (=> b!3897578 (= e!2409794 (getSuffix!1980 (tail!5961 lt!1357640) (t!318997 lt!1357647)))))

(declare-fun b!3897579 () Bool)

(assert (=> b!3897579 (= e!2409794 lt!1357640)))

(assert (= (and d!1154854 c!677579) b!3897578))

(assert (= (and d!1154854 (not c!677579)) b!3897579))

(declare-fun m!4456551 () Bool)

(assert (=> d!1154854 m!4456551))

(assert (=> d!1154854 m!4456533))

(assert (=> d!1154854 m!4456403))

(assert (=> b!3897578 m!4456529))

(assert (=> b!3897578 m!4456529))

(declare-fun m!4456553 () Bool)

(assert (=> b!3897578 m!4456553))

(assert (=> b!3897429 d!1154854))

(declare-fun d!1154856 () Bool)

(assert (=> d!1154856 (isPrefix!3525 lt!1357647 (++!10617 lt!1357647 (_2!23425 (v!39161 lt!1357634))))))

(declare-fun lt!1357706 () Unit!59468)

(declare-fun choose!23048 (List!41470 List!41470) Unit!59468)

(assert (=> d!1154856 (= lt!1357706 (choose!23048 lt!1357647 (_2!23425 (v!39161 lt!1357634))))))

(assert (=> d!1154856 (= (lemmaConcatTwoListThenFirstIsPrefix!2388 lt!1357647 (_2!23425 (v!39161 lt!1357634))) lt!1357706)))

(declare-fun bs!584761 () Bool)

(assert (= bs!584761 d!1154856))

(assert (=> bs!584761 m!4456409))

(assert (=> bs!584761 m!4456409))

(declare-fun m!4456565 () Bool)

(assert (=> bs!584761 m!4456565))

(declare-fun m!4456569 () Bool)

(assert (=> bs!584761 m!4456569))

(assert (=> b!3897429 d!1154856))

(declare-fun b!3897652 () Bool)

(declare-fun e!2409830 () Bool)

(declare-fun lt!1357739 () tuple2!40584)

(assert (=> b!3897652 (= e!2409830 (not (isEmpty!24574 (_1!23426 lt!1357739))))))

(declare-fun b!3897653 () Bool)

(declare-fun e!2409828 () Bool)

(assert (=> b!3897653 (= e!2409828 e!2409830)))

(declare-fun res!1576790 () Bool)

(assert (=> b!3897653 (= res!1576790 (< (size!31042 (_2!23426 lt!1357739)) (size!31042 (_2!23425 (v!39161 lt!1357634)))))))

(assert (=> b!3897653 (=> (not res!1576790) (not e!2409830))))

(declare-fun d!1154858 () Bool)

(assert (=> d!1154858 e!2409828))

(declare-fun c!677595 () Bool)

(declare-fun size!31045 (List!41472) Int)

(assert (=> d!1154858 (= c!677595 (> (size!31045 (_1!23426 lt!1357739)) 0))))

(declare-fun e!2409829 () tuple2!40584)

(assert (=> d!1154858 (= lt!1357739 e!2409829)))

(declare-fun c!677594 () Bool)

(declare-fun lt!1357738 () Option!8850)

(assert (=> d!1154858 (= c!677594 ((_ is Some!8849) lt!1357738))))

(assert (=> d!1154858 (= lt!1357738 (maxPrefix!3323 thiss!20629 rules!2768 (_2!23425 (v!39161 lt!1357634))))))

(assert (=> d!1154858 (= (lexList!1787 thiss!20629 rules!2768 (_2!23425 (v!39161 lt!1357634))) lt!1357739)))

(declare-fun b!3897654 () Bool)

(assert (=> b!3897654 (= e!2409828 (= (_2!23426 lt!1357739) (_2!23425 (v!39161 lt!1357634))))))

(declare-fun b!3897655 () Bool)

(declare-fun lt!1357737 () tuple2!40584)

(assert (=> b!3897655 (= e!2409829 (tuple2!40585 (Cons!41348 (_1!23425 (v!39161 lt!1357738)) (_1!23426 lt!1357737)) (_2!23426 lt!1357737)))))

(assert (=> b!3897655 (= lt!1357737 (lexList!1787 thiss!20629 rules!2768 (_2!23425 (v!39161 lt!1357738))))))

(declare-fun b!3897656 () Bool)

(assert (=> b!3897656 (= e!2409829 (tuple2!40585 Nil!41348 (_2!23425 (v!39161 lt!1357634))))))

(assert (= (and d!1154858 c!677594) b!3897655))

(assert (= (and d!1154858 (not c!677594)) b!3897656))

(assert (= (and d!1154858 c!677595) b!3897653))

(assert (= (and d!1154858 (not c!677595)) b!3897654))

(assert (= (and b!3897653 res!1576790) b!3897652))

(declare-fun m!4456685 () Bool)

(assert (=> b!3897652 m!4456685))

(declare-fun m!4456687 () Bool)

(assert (=> b!3897653 m!4456687))

(declare-fun m!4456689 () Bool)

(assert (=> b!3897653 m!4456689))

(declare-fun m!4456691 () Bool)

(assert (=> d!1154858 m!4456691))

(declare-fun m!4456693 () Bool)

(assert (=> d!1154858 m!4456693))

(declare-fun m!4456695 () Bool)

(assert (=> b!3897655 m!4456695))

(assert (=> b!3897429 d!1154858))

(declare-fun b!3897686 () Bool)

(declare-fun e!2409846 () List!41470)

(assert (=> b!3897686 (= e!2409846 (Cons!41346 (h!46766 lt!1357647) (++!10617 (t!318997 lt!1357647) (_2!23425 (v!39161 lt!1357634)))))))

(declare-fun e!2409847 () Bool)

(declare-fun b!3897688 () Bool)

(declare-fun lt!1357752 () List!41470)

(assert (=> b!3897688 (= e!2409847 (or (not (= (_2!23425 (v!39161 lt!1357634)) Nil!41346)) (= lt!1357752 lt!1357647)))))

(declare-fun d!1154874 () Bool)

(assert (=> d!1154874 e!2409847))

(declare-fun res!1576803 () Bool)

(assert (=> d!1154874 (=> (not res!1576803) (not e!2409847))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6182 (List!41470) (InoxSet C!22856))

(assert (=> d!1154874 (= res!1576803 (= (content!6182 lt!1357752) ((_ map or) (content!6182 lt!1357647) (content!6182 (_2!23425 (v!39161 lt!1357634))))))))

(assert (=> d!1154874 (= lt!1357752 e!2409846)))

(declare-fun c!677604 () Bool)

(assert (=> d!1154874 (= c!677604 ((_ is Nil!41346) lt!1357647))))

(assert (=> d!1154874 (= (++!10617 lt!1357647 (_2!23425 (v!39161 lt!1357634))) lt!1357752)))

(declare-fun b!3897685 () Bool)

(assert (=> b!3897685 (= e!2409846 (_2!23425 (v!39161 lt!1357634)))))

(declare-fun b!3897687 () Bool)

(declare-fun res!1576804 () Bool)

(assert (=> b!3897687 (=> (not res!1576804) (not e!2409847))))

(assert (=> b!3897687 (= res!1576804 (= (size!31042 lt!1357752) (+ (size!31042 lt!1357647) (size!31042 (_2!23425 (v!39161 lt!1357634))))))))

(assert (= (and d!1154874 c!677604) b!3897685))

(assert (= (and d!1154874 (not c!677604)) b!3897686))

(assert (= (and d!1154874 res!1576803) b!3897687))

(assert (= (and b!3897687 res!1576804) b!3897688))

(declare-fun m!4456733 () Bool)

(assert (=> b!3897686 m!4456733))

(declare-fun m!4456735 () Bool)

(assert (=> d!1154874 m!4456735))

(declare-fun m!4456737 () Bool)

(assert (=> d!1154874 m!4456737))

(declare-fun m!4456739 () Bool)

(assert (=> d!1154874 m!4456739))

(declare-fun m!4456741 () Bool)

(assert (=> b!3897687 m!4456741))

(assert (=> b!3897687 m!4456403))

(assert (=> b!3897687 m!4456689))

(assert (=> b!3897429 d!1154874))

(declare-fun d!1154890 () Bool)

(declare-fun res!1576811 () Bool)

(declare-fun e!2409853 () Bool)

(assert (=> d!1154890 (=> (not res!1576811) (not e!2409853))))

(declare-fun validRegex!5151 (Regex!11335) Bool)

(assert (=> d!1154890 (= res!1576811 (validRegex!5151 (regex!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634))))))))

(assert (=> d!1154890 (= (ruleValid!2378 thiss!20629 (rule!9332 (_1!23425 (v!39161 lt!1357634)))) e!2409853)))

(declare-fun b!3897698 () Bool)

(declare-fun res!1576812 () Bool)

(assert (=> b!3897698 (=> (not res!1576812) (not e!2409853))))

(declare-fun nullable!3952 (Regex!11335) Bool)

(assert (=> b!3897698 (= res!1576812 (not (nullable!3952 (regex!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))))))

(declare-fun b!3897699 () Bool)

(assert (=> b!3897699 (= e!2409853 (not (= (tag!7290 (rule!9332 (_1!23425 (v!39161 lt!1357634)))) (String!47019 ""))))))

(assert (= (and d!1154890 res!1576811) b!3897698))

(assert (= (and b!3897698 res!1576812) b!3897699))

(declare-fun m!4456761 () Bool)

(assert (=> d!1154890 m!4456761))

(declare-fun m!4456763 () Bool)

(assert (=> b!3897698 m!4456763))

(assert (=> b!3897429 d!1154890))

(declare-fun d!1154896 () Bool)

(declare-fun list!15367 (Conc!12641) List!41470)

(assert (=> d!1154896 (= (list!15366 (charsOf!4254 (_1!23425 (v!39161 lt!1357634)))) (list!15367 (c!677553 (charsOf!4254 (_1!23425 (v!39161 lt!1357634))))))))

(declare-fun bs!584766 () Bool)

(assert (= bs!584766 d!1154896))

(declare-fun m!4456783 () Bool)

(assert (=> bs!584766 m!4456783))

(assert (=> b!3897429 d!1154896))

(declare-fun d!1154904 () Bool)

(declare-fun lt!1357766 () BalanceConc!24876)

(assert (=> d!1154904 (= (list!15366 lt!1357766) (originalCharacters!7030 (_1!23425 (v!39161 lt!1357634))))))

(declare-fun dynLambda!17748 (Int TokenValue!6660) BalanceConc!24876)

(assert (=> d!1154904 (= lt!1357766 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634))))) (value!203889 (_1!23425 (v!39161 lt!1357634)))))))

(assert (=> d!1154904 (= (charsOf!4254 (_1!23425 (v!39161 lt!1357634))) lt!1357766)))

(declare-fun b_lambda!113821 () Bool)

(assert (=> (not b_lambda!113821) (not d!1154904)))

(declare-fun t!319026 () Bool)

(declare-fun tb!228841 () Bool)

(assert (=> (and b!3897434 (= (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319026) tb!228841))

(declare-fun b!3897720 () Bool)

(declare-fun e!2409865 () Bool)

(declare-fun tp!1185952 () Bool)

(declare-fun inv!55513 (Conc!12641) Bool)

(assert (=> b!3897720 (= e!2409865 (and (inv!55513 (c!677553 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634))))) (value!203889 (_1!23425 (v!39161 lt!1357634)))))) tp!1185952))))

(declare-fun result!277996 () Bool)

(declare-fun inv!55514 (BalanceConc!24876) Bool)

(assert (=> tb!228841 (= result!277996 (and (inv!55514 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634))))) (value!203889 (_1!23425 (v!39161 lt!1357634))))) e!2409865))))

(assert (= tb!228841 b!3897720))

(declare-fun m!4456793 () Bool)

(assert (=> b!3897720 m!4456793))

(declare-fun m!4456795 () Bool)

(assert (=> tb!228841 m!4456795))

(assert (=> d!1154904 t!319026))

(declare-fun b_and!294263 () Bool)

(assert (= b_and!294225 (and (=> t!319026 result!277996) b_and!294263)))

(declare-fun t!319028 () Bool)

(declare-fun tb!228843 () Bool)

(assert (=> (and b!3897440 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319028) tb!228843))

(declare-fun result!278000 () Bool)

(assert (= result!278000 result!277996))

(assert (=> d!1154904 t!319028))

(declare-fun b_and!294265 () Bool)

(assert (= b_and!294229 (and (=> t!319028 result!278000) b_and!294265)))

(declare-fun tb!228845 () Bool)

(declare-fun t!319030 () Bool)

(assert (=> (and b!3897452 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319030) tb!228845))

(declare-fun result!278002 () Bool)

(assert (= result!278002 result!277996))

(assert (=> d!1154904 t!319030))

(declare-fun b_and!294267 () Bool)

(assert (= b_and!294233 (and (=> t!319030 result!278002) b_and!294267)))

(declare-fun tb!228847 () Bool)

(declare-fun t!319032 () Bool)

(assert (=> (and b!3897428 (= (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319032) tb!228847))

(declare-fun result!278004 () Bool)

(assert (= result!278004 result!277996))

(assert (=> d!1154904 t!319032))

(declare-fun b_and!294269 () Bool)

(assert (= b_and!294237 (and (=> t!319032 result!278004) b_and!294269)))

(declare-fun m!4456797 () Bool)

(assert (=> d!1154904 m!4456797))

(declare-fun m!4456799 () Bool)

(assert (=> d!1154904 m!4456799))

(assert (=> b!3897429 d!1154904))

(declare-fun d!1154910 () Bool)

(declare-fun lt!1357767 () Int)

(assert (=> d!1154910 (>= lt!1357767 0)))

(declare-fun e!2409866 () Int)

(assert (=> d!1154910 (= lt!1357767 e!2409866)))

(declare-fun c!677609 () Bool)

(assert (=> d!1154910 (= c!677609 ((_ is Nil!41346) lt!1357647))))

(assert (=> d!1154910 (= (size!31042 lt!1357647) lt!1357767)))

(declare-fun b!3897721 () Bool)

(assert (=> b!3897721 (= e!2409866 0)))

(declare-fun b!3897722 () Bool)

(assert (=> b!3897722 (= e!2409866 (+ 1 (size!31042 (t!318997 lt!1357647))))))

(assert (= (and d!1154910 c!677609) b!3897721))

(assert (= (and d!1154910 (not c!677609)) b!3897722))

(declare-fun m!4456801 () Bool)

(assert (=> b!3897722 m!4456801))

(assert (=> b!3897429 d!1154910))

(declare-fun d!1154912 () Bool)

(declare-fun fromListB!2163 (List!41470) BalanceConc!24876)

(assert (=> d!1154912 (= (seqFromList!4697 lt!1357647) (fromListB!2163 lt!1357647))))

(declare-fun bs!584769 () Bool)

(assert (= bs!584769 d!1154912))

(declare-fun m!4456807 () Bool)

(assert (=> bs!584769 m!4456807))

(assert (=> b!3897429 d!1154912))

(declare-fun d!1154918 () Bool)

(assert (=> d!1154918 (= (_2!23425 (v!39161 lt!1357634)) lt!1357639)))

(declare-fun lt!1357773 () Unit!59468)

(declare-fun choose!23051 (List!41470 List!41470 List!41470 List!41470 List!41470) Unit!59468)

(assert (=> d!1154918 (= lt!1357773 (choose!23051 lt!1357647 (_2!23425 (v!39161 lt!1357634)) lt!1357647 lt!1357639 lt!1357640))))

(assert (=> d!1154918 (isPrefix!3525 lt!1357647 lt!1357640)))

(assert (=> d!1154918 (= (lemmaSamePrefixThenSameSuffix!1746 lt!1357647 (_2!23425 (v!39161 lt!1357634)) lt!1357647 lt!1357639 lt!1357640) lt!1357773)))

(declare-fun bs!584770 () Bool)

(assert (= bs!584770 d!1154918))

(declare-fun m!4456835 () Bool)

(assert (=> bs!584770 m!4456835))

(declare-fun m!4456837 () Bool)

(assert (=> bs!584770 m!4456837))

(assert (=> b!3897429 d!1154918))

(declare-fun d!1154936 () Bool)

(declare-fun dynLambda!17749 (Int BalanceConc!24876) TokenValue!6660)

(assert (=> d!1154936 (= (apply!9669 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))) (seqFromList!4697 lt!1357647)) (dynLambda!17749 (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634))))) (seqFromList!4697 lt!1357647)))))

(declare-fun b_lambda!113827 () Bool)

(assert (=> (not b_lambda!113827) (not d!1154936)))

(declare-fun tb!228865 () Bool)

(declare-fun t!319050 () Bool)

(assert (=> (and b!3897434 (= (toValue!8866 (transformation!6430 (h!46769 rules!2768))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319050) tb!228865))

(declare-fun result!278024 () Bool)

(assert (=> tb!228865 (= result!278024 (inv!21 (dynLambda!17749 (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634))))) (seqFromList!4697 lt!1357647))))))

(declare-fun m!4456841 () Bool)

(assert (=> tb!228865 m!4456841))

(assert (=> d!1154936 t!319050))

(declare-fun b_and!294287 () Bool)

(assert (= b_and!294223 (and (=> t!319050 result!278024) b_and!294287)))

(declare-fun tb!228867 () Bool)

(declare-fun t!319052 () Bool)

(assert (=> (and b!3897440 (= (toValue!8866 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319052) tb!228867))

(declare-fun result!278028 () Bool)

(assert (= result!278028 result!278024))

(assert (=> d!1154936 t!319052))

(declare-fun b_and!294289 () Bool)

(assert (= b_and!294227 (and (=> t!319052 result!278028) b_and!294289)))

(declare-fun tb!228869 () Bool)

(declare-fun t!319054 () Bool)

(assert (=> (and b!3897452 (= (toValue!8866 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319054) tb!228869))

(declare-fun result!278030 () Bool)

(assert (= result!278030 result!278024))

(assert (=> d!1154936 t!319054))

(declare-fun b_and!294291 () Bool)

(assert (= b_and!294231 (and (=> t!319054 result!278030) b_and!294291)))

(declare-fun tb!228871 () Bool)

(declare-fun t!319056 () Bool)

(assert (=> (and b!3897428 (= (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319056) tb!228871))

(declare-fun result!278034 () Bool)

(assert (= result!278034 result!278024))

(assert (=> d!1154936 t!319056))

(declare-fun b_and!294293 () Bool)

(assert (= b_and!294235 (and (=> t!319056 result!278034) b_and!294293)))

(assert (=> d!1154936 m!4456395))

(declare-fun m!4456847 () Bool)

(assert (=> d!1154936 m!4456847))

(assert (=> b!3897429 d!1154936))

(declare-fun d!1154942 () Bool)

(assert (=> d!1154942 (= (size!31041 (_1!23425 (v!39161 lt!1357634))) (size!31042 (originalCharacters!7030 (_1!23425 (v!39161 lt!1357634)))))))

(declare-fun Unit!59470 () Unit!59468)

(assert (=> d!1154942 (= (lemmaCharactersSize!1087 (_1!23425 (v!39161 lt!1357634))) Unit!59470)))

(declare-fun bs!584772 () Bool)

(assert (= bs!584772 d!1154942))

(assert (=> bs!584772 m!4456431))

(assert (=> b!3897429 d!1154942))

(declare-fun d!1154944 () Bool)

(assert (=> d!1154944 (ruleValid!2378 thiss!20629 (rule!9332 (_1!23425 (v!39161 lt!1357634))))))

(declare-fun lt!1357779 () Unit!59468)

(declare-fun choose!23052 (LexerInterface!6019 Rule!12660 List!41473) Unit!59468)

(assert (=> d!1154944 (= lt!1357779 (choose!23052 thiss!20629 (rule!9332 (_1!23425 (v!39161 lt!1357634))) rules!2768))))

(declare-fun contains!8309 (List!41473 Rule!12660) Bool)

(assert (=> d!1154944 (contains!8309 rules!2768 (rule!9332 (_1!23425 (v!39161 lt!1357634))))))

(assert (=> d!1154944 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1458 thiss!20629 (rule!9332 (_1!23425 (v!39161 lt!1357634))) rules!2768) lt!1357779)))

(declare-fun bs!584773 () Bool)

(assert (= bs!584773 d!1154944))

(assert (=> bs!584773 m!4456391))

(declare-fun m!4456857 () Bool)

(assert (=> bs!584773 m!4456857))

(declare-fun m!4456859 () Bool)

(assert (=> bs!584773 m!4456859))

(assert (=> b!3897429 d!1154944))

(declare-fun b!3897781 () Bool)

(declare-fun e!2409917 () Bool)

(declare-fun e!2409915 () Bool)

(assert (=> b!3897781 (= e!2409917 e!2409915)))

(declare-fun res!1576830 () Bool)

(assert (=> b!3897781 (=> (not res!1576830) (not e!2409915))))

(assert (=> b!3897781 (= res!1576830 (not ((_ is Nil!41346) lt!1357636)))))

(declare-fun d!1154946 () Bool)

(declare-fun e!2409916 () Bool)

(assert (=> d!1154946 e!2409916))

(declare-fun res!1576829 () Bool)

(assert (=> d!1154946 (=> res!1576829 e!2409916)))

(declare-fun lt!1357780 () Bool)

(assert (=> d!1154946 (= res!1576829 (not lt!1357780))))

(assert (=> d!1154946 (= lt!1357780 e!2409917)))

(declare-fun res!1576828 () Bool)

(assert (=> d!1154946 (=> res!1576828 e!2409917)))

(assert (=> d!1154946 (= res!1576828 ((_ is Nil!41346) lt!1357647))))

(assert (=> d!1154946 (= (isPrefix!3525 lt!1357647 lt!1357636) lt!1357780)))

(declare-fun b!3897782 () Bool)

(declare-fun res!1576831 () Bool)

(assert (=> b!3897782 (=> (not res!1576831) (not e!2409915))))

(assert (=> b!3897782 (= res!1576831 (= (head!8244 lt!1357647) (head!8244 lt!1357636)))))

(declare-fun b!3897783 () Bool)

(assert (=> b!3897783 (= e!2409915 (isPrefix!3525 (tail!5961 lt!1357647) (tail!5961 lt!1357636)))))

(declare-fun b!3897784 () Bool)

(assert (=> b!3897784 (= e!2409916 (>= (size!31042 lt!1357636) (size!31042 lt!1357647)))))

(assert (= (and d!1154946 (not res!1576828)) b!3897781))

(assert (= (and b!3897781 res!1576830) b!3897782))

(assert (= (and b!3897782 res!1576831) b!3897783))

(assert (= (and d!1154946 (not res!1576829)) b!3897784))

(declare-fun m!4456861 () Bool)

(assert (=> b!3897782 m!4456861))

(declare-fun m!4456863 () Bool)

(assert (=> b!3897782 m!4456863))

(declare-fun m!4456865 () Bool)

(assert (=> b!3897783 m!4456865))

(declare-fun m!4456867 () Bool)

(assert (=> b!3897783 m!4456867))

(assert (=> b!3897783 m!4456865))

(assert (=> b!3897783 m!4456867))

(declare-fun m!4456869 () Bool)

(assert (=> b!3897783 m!4456869))

(declare-fun m!4456871 () Bool)

(assert (=> b!3897784 m!4456871))

(assert (=> b!3897784 m!4456403))

(assert (=> b!3897429 d!1154946))

(declare-fun d!1154948 () Bool)

(assert (=> d!1154948 (= (isEmpty!24574 prefixTokens!80) ((_ is Nil!41348) prefixTokens!80))))

(assert (=> b!3897450 d!1154948))

(declare-fun d!1154950 () Bool)

(declare-fun res!1576836 () Bool)

(declare-fun e!2409936 () Bool)

(assert (=> d!1154950 (=> (not res!1576836) (not e!2409936))))

(assert (=> d!1154950 (= res!1576836 (not (isEmpty!24572 (originalCharacters!7030 (h!46768 prefixTokens!80)))))))

(assert (=> d!1154950 (= (inv!55509 (h!46768 prefixTokens!80)) e!2409936)))

(declare-fun b!3897811 () Bool)

(declare-fun res!1576837 () Bool)

(assert (=> b!3897811 (=> (not res!1576837) (not e!2409936))))

(assert (=> b!3897811 (= res!1576837 (= (originalCharacters!7030 (h!46768 prefixTokens!80)) (list!15366 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (value!203889 (h!46768 prefixTokens!80))))))))

(declare-fun b!3897812 () Bool)

(assert (=> b!3897812 (= e!2409936 (= (size!31041 (h!46768 prefixTokens!80)) (size!31042 (originalCharacters!7030 (h!46768 prefixTokens!80)))))))

(assert (= (and d!1154950 res!1576836) b!3897811))

(assert (= (and b!3897811 res!1576837) b!3897812))

(declare-fun b_lambda!113835 () Bool)

(assert (=> (not b_lambda!113835) (not b!3897811)))

(declare-fun t!319088 () Bool)

(declare-fun tb!228903 () Bool)

(assert (=> (and b!3897434 (= (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))) t!319088) tb!228903))

(declare-fun b!3897813 () Bool)

(declare-fun e!2409937 () Bool)

(declare-fun tp!1186025 () Bool)

(assert (=> b!3897813 (= e!2409937 (and (inv!55513 (c!677553 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (value!203889 (h!46768 prefixTokens!80))))) tp!1186025))))

(declare-fun result!278072 () Bool)

(assert (=> tb!228903 (= result!278072 (and (inv!55514 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (value!203889 (h!46768 prefixTokens!80)))) e!2409937))))

(assert (= tb!228903 b!3897813))

(declare-fun m!4456885 () Bool)

(assert (=> b!3897813 m!4456885))

(declare-fun m!4456887 () Bool)

(assert (=> tb!228903 m!4456887))

(assert (=> b!3897811 t!319088))

(declare-fun b_and!294307 () Bool)

(assert (= b_and!294263 (and (=> t!319088 result!278072) b_and!294307)))

(declare-fun t!319090 () Bool)

(declare-fun tb!228905 () Bool)

(assert (=> (and b!3897440 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))) t!319090) tb!228905))

(declare-fun result!278074 () Bool)

(assert (= result!278074 result!278072))

(assert (=> b!3897811 t!319090))

(declare-fun b_and!294309 () Bool)

(assert (= b_and!294265 (and (=> t!319090 result!278074) b_and!294309)))

(declare-fun tb!228907 () Bool)

(declare-fun t!319092 () Bool)

(assert (=> (and b!3897452 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))) t!319092) tb!228907))

(declare-fun result!278076 () Bool)

(assert (= result!278076 result!278072))

(assert (=> b!3897811 t!319092))

(declare-fun b_and!294311 () Bool)

(assert (= b_and!294267 (and (=> t!319092 result!278076) b_and!294311)))

(declare-fun t!319094 () Bool)

(declare-fun tb!228909 () Bool)

(assert (=> (and b!3897428 (= (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))) t!319094) tb!228909))

(declare-fun result!278078 () Bool)

(assert (= result!278078 result!278072))

(assert (=> b!3897811 t!319094))

(declare-fun b_and!294313 () Bool)

(assert (= b_and!294269 (and (=> t!319094 result!278078) b_and!294313)))

(declare-fun m!4456889 () Bool)

(assert (=> d!1154950 m!4456889))

(declare-fun m!4456891 () Bool)

(assert (=> b!3897811 m!4456891))

(assert (=> b!3897811 m!4456891))

(declare-fun m!4456893 () Bool)

(assert (=> b!3897811 m!4456893))

(declare-fun m!4456895 () Bool)

(assert (=> b!3897812 m!4456895))

(assert (=> b!3897449 d!1154950))

(declare-fun d!1154952 () Bool)

(assert (=> d!1154952 (= (inv!55506 (tag!7290 (rule!9332 (_1!23425 (v!39161 err!4369))))) (= (mod (str.len (value!203888 (tag!7290 (rule!9332 (_1!23425 (v!39161 err!4369)))))) 2) 0))))

(assert (=> b!3897427 d!1154952))

(declare-fun d!1154954 () Bool)

(declare-fun res!1576840 () Bool)

(declare-fun e!2409940 () Bool)

(assert (=> d!1154954 (=> (not res!1576840) (not e!2409940))))

(declare-fun semiInverseModEq!2753 (Int Int) Bool)

(assert (=> d!1154954 (= res!1576840 (semiInverseModEq!2753 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))))))

(assert (=> d!1154954 (= (inv!55510 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) e!2409940)))

(declare-fun b!3897816 () Bool)

(declare-fun equivClasses!2652 (Int Int) Bool)

(assert (=> b!3897816 (= e!2409940 (equivClasses!2652 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))))))

(assert (= (and d!1154954 res!1576840) b!3897816))

(declare-fun m!4456897 () Bool)

(assert (=> d!1154954 m!4456897))

(declare-fun m!4456899 () Bool)

(assert (=> b!3897816 m!4456899))

(assert (=> b!3897427 d!1154954))

(declare-fun d!1154956 () Bool)

(assert (=> d!1154956 (= (inv!55506 (tag!7290 (h!46769 rules!2768))) (= (mod (str.len (value!203888 (tag!7290 (h!46769 rules!2768)))) 2) 0))))

(assert (=> b!3897448 d!1154956))

(declare-fun d!1154958 () Bool)

(declare-fun res!1576841 () Bool)

(declare-fun e!2409941 () Bool)

(assert (=> d!1154958 (=> (not res!1576841) (not e!2409941))))

(assert (=> d!1154958 (= res!1576841 (semiInverseModEq!2753 (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toValue!8866 (transformation!6430 (h!46769 rules!2768)))))))

(assert (=> d!1154958 (= (inv!55510 (transformation!6430 (h!46769 rules!2768))) e!2409941)))

(declare-fun b!3897817 () Bool)

(assert (=> b!3897817 (= e!2409941 (equivClasses!2652 (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toValue!8866 (transformation!6430 (h!46769 rules!2768)))))))

(assert (= (and d!1154958 res!1576841) b!3897817))

(declare-fun m!4456901 () Bool)

(assert (=> d!1154958 m!4456901))

(declare-fun m!4456903 () Bool)

(assert (=> b!3897817 m!4456903))

(assert (=> b!3897448 d!1154958))

(declare-fun b!3897836 () Bool)

(declare-fun res!1576860 () Bool)

(declare-fun e!2409950 () Bool)

(assert (=> b!3897836 (=> (not res!1576860) (not e!2409950))))

(declare-fun lt!1357793 () Option!8850)

(declare-fun get!13671 (Option!8850) tuple2!40582)

(assert (=> b!3897836 (= res!1576860 (< (size!31042 (_2!23425 (get!13671 lt!1357793))) (size!31042 lt!1357640)))))

(declare-fun b!3897837 () Bool)

(assert (=> b!3897837 (= e!2409950 (contains!8309 rules!2768 (rule!9332 (_1!23425 (get!13671 lt!1357793)))))))

(declare-fun b!3897838 () Bool)

(declare-fun res!1576856 () Bool)

(assert (=> b!3897838 (=> (not res!1576856) (not e!2409950))))

(assert (=> b!3897838 (= res!1576856 (= (++!10617 (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357793)))) (_2!23425 (get!13671 lt!1357793))) lt!1357640))))

(declare-fun d!1154960 () Bool)

(declare-fun e!2409948 () Bool)

(assert (=> d!1154960 e!2409948))

(declare-fun res!1576859 () Bool)

(assert (=> d!1154960 (=> res!1576859 e!2409948)))

(declare-fun isEmpty!24576 (Option!8850) Bool)

(assert (=> d!1154960 (= res!1576859 (isEmpty!24576 lt!1357793))))

(declare-fun e!2409949 () Option!8850)

(assert (=> d!1154960 (= lt!1357793 e!2409949)))

(declare-fun c!677614 () Bool)

(assert (=> d!1154960 (= c!677614 (and ((_ is Cons!41349) rules!2768) ((_ is Nil!41349) (t!319000 rules!2768))))))

(declare-fun lt!1357792 () Unit!59468)

(declare-fun lt!1357795 () Unit!59468)

(assert (=> d!1154960 (= lt!1357792 lt!1357795)))

(assert (=> d!1154960 (isPrefix!3525 lt!1357640 lt!1357640)))

(assert (=> d!1154960 (= lt!1357795 (lemmaIsPrefixRefl!2232 lt!1357640 lt!1357640))))

(declare-fun rulesValidInductive!2302 (LexerInterface!6019 List!41473) Bool)

(assert (=> d!1154960 (rulesValidInductive!2302 thiss!20629 rules!2768)))

(assert (=> d!1154960 (= (maxPrefix!3323 thiss!20629 rules!2768 lt!1357640) lt!1357793)))

(declare-fun bm!283722 () Bool)

(declare-fun call!283727 () Option!8850)

(assert (=> bm!283722 (= call!283727 (maxPrefixOneRule!2399 thiss!20629 (h!46769 rules!2768) lt!1357640))))

(declare-fun b!3897839 () Bool)

(declare-fun res!1576858 () Bool)

(assert (=> b!3897839 (=> (not res!1576858) (not e!2409950))))

(declare-fun matchR!5430 (Regex!11335 List!41470) Bool)

(assert (=> b!3897839 (= res!1576858 (matchR!5430 (regex!6430 (rule!9332 (_1!23425 (get!13671 lt!1357793)))) (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357793))))))))

(declare-fun b!3897840 () Bool)

(declare-fun res!1576857 () Bool)

(assert (=> b!3897840 (=> (not res!1576857) (not e!2409950))))

(assert (=> b!3897840 (= res!1576857 (= (value!203889 (_1!23425 (get!13671 lt!1357793))) (apply!9669 (transformation!6430 (rule!9332 (_1!23425 (get!13671 lt!1357793)))) (seqFromList!4697 (originalCharacters!7030 (_1!23425 (get!13671 lt!1357793)))))))))

(declare-fun b!3897841 () Bool)

(declare-fun res!1576862 () Bool)

(assert (=> b!3897841 (=> (not res!1576862) (not e!2409950))))

(assert (=> b!3897841 (= res!1576862 (= (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357793)))) (originalCharacters!7030 (_1!23425 (get!13671 lt!1357793)))))))

(declare-fun b!3897842 () Bool)

(assert (=> b!3897842 (= e!2409949 call!283727)))

(declare-fun b!3897843 () Bool)

(declare-fun lt!1357794 () Option!8850)

(declare-fun lt!1357791 () Option!8850)

(assert (=> b!3897843 (= e!2409949 (ite (and ((_ is None!8849) lt!1357794) ((_ is None!8849) lt!1357791)) None!8849 (ite ((_ is None!8849) lt!1357791) lt!1357794 (ite ((_ is None!8849) lt!1357794) lt!1357791 (ite (>= (size!31041 (_1!23425 (v!39161 lt!1357794))) (size!31041 (_1!23425 (v!39161 lt!1357791)))) lt!1357794 lt!1357791)))))))

(assert (=> b!3897843 (= lt!1357794 call!283727)))

(assert (=> b!3897843 (= lt!1357791 (maxPrefix!3323 thiss!20629 (t!319000 rules!2768) lt!1357640))))

(declare-fun b!3897844 () Bool)

(assert (=> b!3897844 (= e!2409948 e!2409950)))

(declare-fun res!1576861 () Bool)

(assert (=> b!3897844 (=> (not res!1576861) (not e!2409950))))

(declare-fun isDefined!6901 (Option!8850) Bool)

(assert (=> b!3897844 (= res!1576861 (isDefined!6901 lt!1357793))))

(assert (= (and d!1154960 c!677614) b!3897842))

(assert (= (and d!1154960 (not c!677614)) b!3897843))

(assert (= (or b!3897842 b!3897843) bm!283722))

(assert (= (and d!1154960 (not res!1576859)) b!3897844))

(assert (= (and b!3897844 res!1576861) b!3897841))

(assert (= (and b!3897841 res!1576862) b!3897836))

(assert (= (and b!3897836 res!1576860) b!3897838))

(assert (= (and b!3897838 res!1576856) b!3897840))

(assert (= (and b!3897840 res!1576857) b!3897839))

(assert (= (and b!3897839 res!1576858) b!3897837))

(declare-fun m!4456905 () Bool)

(assert (=> b!3897837 m!4456905))

(declare-fun m!4456907 () Bool)

(assert (=> b!3897837 m!4456907))

(assert (=> b!3897839 m!4456905))

(declare-fun m!4456909 () Bool)

(assert (=> b!3897839 m!4456909))

(assert (=> b!3897839 m!4456909))

(declare-fun m!4456911 () Bool)

(assert (=> b!3897839 m!4456911))

(assert (=> b!3897839 m!4456911))

(declare-fun m!4456913 () Bool)

(assert (=> b!3897839 m!4456913))

(assert (=> b!3897843 m!4456371))

(assert (=> b!3897840 m!4456905))

(declare-fun m!4456915 () Bool)

(assert (=> b!3897840 m!4456915))

(assert (=> b!3897840 m!4456915))

(declare-fun m!4456917 () Bool)

(assert (=> b!3897840 m!4456917))

(assert (=> b!3897838 m!4456905))

(assert (=> b!3897838 m!4456909))

(assert (=> b!3897838 m!4456909))

(assert (=> b!3897838 m!4456911))

(assert (=> b!3897838 m!4456911))

(declare-fun m!4456919 () Bool)

(assert (=> b!3897838 m!4456919))

(declare-fun m!4456921 () Bool)

(assert (=> b!3897844 m!4456921))

(assert (=> b!3897836 m!4456905))

(declare-fun m!4456923 () Bool)

(assert (=> b!3897836 m!4456923))

(assert (=> b!3897836 m!4456533))

(assert (=> bm!283722 m!4456369))

(declare-fun m!4456925 () Bool)

(assert (=> d!1154960 m!4456925))

(assert (=> d!1154960 m!4456357))

(assert (=> d!1154960 m!4456359))

(declare-fun m!4456927 () Bool)

(assert (=> d!1154960 m!4456927))

(assert (=> b!3897841 m!4456905))

(assert (=> b!3897841 m!4456909))

(assert (=> b!3897841 m!4456909))

(assert (=> b!3897841 m!4456911))

(assert (=> b!3897426 d!1154960))

(declare-fun b!3897845 () Bool)

(declare-fun e!2409953 () Bool)

(declare-fun lt!1357798 () tuple2!40584)

(assert (=> b!3897845 (= e!2409953 (not (isEmpty!24574 (_1!23426 lt!1357798))))))

(declare-fun b!3897846 () Bool)

(declare-fun e!2409951 () Bool)

(assert (=> b!3897846 (= e!2409951 e!2409953)))

(declare-fun res!1576863 () Bool)

(assert (=> b!3897846 (= res!1576863 (< (size!31042 (_2!23426 lt!1357798)) (size!31042 suffix!1176)))))

(assert (=> b!3897846 (=> (not res!1576863) (not e!2409953))))

(declare-fun d!1154962 () Bool)

(assert (=> d!1154962 e!2409951))

(declare-fun c!677616 () Bool)

(assert (=> d!1154962 (= c!677616 (> (size!31045 (_1!23426 lt!1357798)) 0))))

(declare-fun e!2409952 () tuple2!40584)

(assert (=> d!1154962 (= lt!1357798 e!2409952)))

(declare-fun c!677615 () Bool)

(declare-fun lt!1357797 () Option!8850)

(assert (=> d!1154962 (= c!677615 ((_ is Some!8849) lt!1357797))))

(assert (=> d!1154962 (= lt!1357797 (maxPrefix!3323 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1154962 (= (lexList!1787 thiss!20629 rules!2768 suffix!1176) lt!1357798)))

(declare-fun b!3897847 () Bool)

(assert (=> b!3897847 (= e!2409951 (= (_2!23426 lt!1357798) suffix!1176))))

(declare-fun b!3897848 () Bool)

(declare-fun lt!1357796 () tuple2!40584)

(assert (=> b!3897848 (= e!2409952 (tuple2!40585 (Cons!41348 (_1!23425 (v!39161 lt!1357797)) (_1!23426 lt!1357796)) (_2!23426 lt!1357796)))))

(assert (=> b!3897848 (= lt!1357796 (lexList!1787 thiss!20629 rules!2768 (_2!23425 (v!39161 lt!1357797))))))

(declare-fun b!3897849 () Bool)

(assert (=> b!3897849 (= e!2409952 (tuple2!40585 Nil!41348 suffix!1176))))

(assert (= (and d!1154962 c!677615) b!3897848))

(assert (= (and d!1154962 (not c!677615)) b!3897849))

(assert (= (and d!1154962 c!677616) b!3897846))

(assert (= (and d!1154962 (not c!677616)) b!3897847))

(assert (= (and b!3897846 res!1576863) b!3897845))

(declare-fun m!4456929 () Bool)

(assert (=> b!3897845 m!4456929))

(declare-fun m!4456931 () Bool)

(assert (=> b!3897846 m!4456931))

(assert (=> b!3897846 m!4456547))

(declare-fun m!4456933 () Bool)

(assert (=> d!1154962 m!4456933))

(declare-fun m!4456935 () Bool)

(assert (=> d!1154962 m!4456935))

(declare-fun m!4456937 () Bool)

(assert (=> b!3897848 m!4456937))

(assert (=> b!3897447 d!1154962))

(declare-fun d!1154964 () Bool)

(assert (=> d!1154964 (= (inv!55506 (tag!7290 (rule!9332 (h!46768 prefixTokens!80)))) (= (mod (str.len (value!203888 (tag!7290 (rule!9332 (h!46768 prefixTokens!80))))) 2) 0))))

(assert (=> b!3897425 d!1154964))

(declare-fun d!1154966 () Bool)

(declare-fun res!1576864 () Bool)

(declare-fun e!2409954 () Bool)

(assert (=> d!1154966 (=> (not res!1576864) (not e!2409954))))

(assert (=> d!1154966 (= res!1576864 (semiInverseModEq!2753 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toValue!8866 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))))))

(assert (=> d!1154966 (= (inv!55510 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) e!2409954)))

(declare-fun b!3897850 () Bool)

(assert (=> b!3897850 (= e!2409954 (equivClasses!2652 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toValue!8866 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))))))

(assert (= (and d!1154966 res!1576864) b!3897850))

(declare-fun m!4456939 () Bool)

(assert (=> d!1154966 m!4456939))

(declare-fun m!4456941 () Bool)

(assert (=> b!3897850 m!4456941))

(assert (=> b!3897425 d!1154966))

(declare-fun b!3897859 () Bool)

(declare-fun e!2409959 () List!41472)

(assert (=> b!3897859 (= e!2409959 (_1!23426 lt!1357641))))

(declare-fun d!1154968 () Bool)

(declare-fun e!2409960 () Bool)

(assert (=> d!1154968 e!2409960))

(declare-fun res!1576870 () Bool)

(assert (=> d!1154968 (=> (not res!1576870) (not e!2409960))))

(declare-fun lt!1357801 () List!41472)

(declare-fun content!6183 (List!41472) (InoxSet Token!11998))

(assert (=> d!1154968 (= res!1576870 (= (content!6183 lt!1357801) ((_ map or) (content!6183 lt!1357653) (content!6183 (_1!23426 lt!1357641)))))))

(assert (=> d!1154968 (= lt!1357801 e!2409959)))

(declare-fun c!677619 () Bool)

(assert (=> d!1154968 (= c!677619 ((_ is Nil!41348) lt!1357653))))

(assert (=> d!1154968 (= (++!10618 lt!1357653 (_1!23426 lt!1357641)) lt!1357801)))

(declare-fun b!3897861 () Bool)

(declare-fun res!1576869 () Bool)

(assert (=> b!3897861 (=> (not res!1576869) (not e!2409960))))

(assert (=> b!3897861 (= res!1576869 (= (size!31045 lt!1357801) (+ (size!31045 lt!1357653) (size!31045 (_1!23426 lt!1357641)))))))

(declare-fun b!3897860 () Bool)

(assert (=> b!3897860 (= e!2409959 (Cons!41348 (h!46768 lt!1357653) (++!10618 (t!318999 lt!1357653) (_1!23426 lt!1357641))))))

(declare-fun b!3897862 () Bool)

(assert (=> b!3897862 (= e!2409960 (or (not (= (_1!23426 lt!1357641) Nil!41348)) (= lt!1357801 lt!1357653)))))

(assert (= (and d!1154968 c!677619) b!3897859))

(assert (= (and d!1154968 (not c!677619)) b!3897860))

(assert (= (and d!1154968 res!1576870) b!3897861))

(assert (= (and b!3897861 res!1576869) b!3897862))

(declare-fun m!4456943 () Bool)

(assert (=> d!1154968 m!4456943))

(declare-fun m!4456945 () Bool)

(assert (=> d!1154968 m!4456945))

(declare-fun m!4456947 () Bool)

(assert (=> d!1154968 m!4456947))

(declare-fun m!4456949 () Bool)

(assert (=> b!3897861 m!4456949))

(declare-fun m!4456951 () Bool)

(assert (=> b!3897861 m!4456951))

(declare-fun m!4456953 () Bool)

(assert (=> b!3897861 m!4456953))

(declare-fun m!4456955 () Bool)

(assert (=> b!3897860 m!4456955))

(assert (=> b!3897446 d!1154968))

(declare-fun d!1154970 () Bool)

(assert (=> d!1154970 (= (inv!55506 (tag!7290 (rule!9332 (h!46768 suffixTokens!72)))) (= (mod (str.len (value!203888 (tag!7290 (rule!9332 (h!46768 suffixTokens!72))))) 2) 0))))

(assert (=> b!3897424 d!1154970))

(declare-fun d!1154972 () Bool)

(declare-fun res!1576871 () Bool)

(declare-fun e!2409961 () Bool)

(assert (=> d!1154972 (=> (not res!1576871) (not e!2409961))))

(assert (=> d!1154972 (= res!1576871 (semiInverseModEq!2753 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toValue!8866 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))))))

(assert (=> d!1154972 (= (inv!55510 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) e!2409961)))

(declare-fun b!3897863 () Bool)

(assert (=> b!3897863 (= e!2409961 (equivClasses!2652 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toValue!8866 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))))))

(assert (= (and d!1154972 res!1576871) b!3897863))

(declare-fun m!4456957 () Bool)

(assert (=> d!1154972 m!4456957))

(declare-fun m!4456959 () Bool)

(assert (=> b!3897863 m!4456959))

(assert (=> b!3897424 d!1154972))

(declare-fun b!3897874 () Bool)

(declare-fun e!2409969 () Bool)

(declare-fun inv!17 (TokenValue!6660) Bool)

(assert (=> b!3897874 (= e!2409969 (inv!17 (value!203889 (_1!23425 (v!39161 err!4369)))))))

(declare-fun b!3897875 () Bool)

(declare-fun res!1576874 () Bool)

(declare-fun e!2409970 () Bool)

(assert (=> b!3897875 (=> res!1576874 e!2409970)))

(assert (=> b!3897875 (= res!1576874 (not ((_ is IntegerValue!19982) (value!203889 (_1!23425 (v!39161 err!4369))))))))

(assert (=> b!3897875 (= e!2409969 e!2409970)))

(declare-fun b!3897876 () Bool)

(declare-fun e!2409968 () Bool)

(declare-fun inv!16 (TokenValue!6660) Bool)

(assert (=> b!3897876 (= e!2409968 (inv!16 (value!203889 (_1!23425 (v!39161 err!4369)))))))

(declare-fun b!3897877 () Bool)

(declare-fun inv!15 (TokenValue!6660) Bool)

(assert (=> b!3897877 (= e!2409970 (inv!15 (value!203889 (_1!23425 (v!39161 err!4369)))))))

(declare-fun b!3897878 () Bool)

(assert (=> b!3897878 (= e!2409968 e!2409969)))

(declare-fun c!677625 () Bool)

(assert (=> b!3897878 (= c!677625 ((_ is IntegerValue!19981) (value!203889 (_1!23425 (v!39161 err!4369)))))))

(declare-fun d!1154974 () Bool)

(declare-fun c!677624 () Bool)

(assert (=> d!1154974 (= c!677624 ((_ is IntegerValue!19980) (value!203889 (_1!23425 (v!39161 err!4369)))))))

(assert (=> d!1154974 (= (inv!21 (value!203889 (_1!23425 (v!39161 err!4369)))) e!2409968)))

(assert (= (and d!1154974 c!677624) b!3897876))

(assert (= (and d!1154974 (not c!677624)) b!3897878))

(assert (= (and b!3897878 c!677625) b!3897874))

(assert (= (and b!3897878 (not c!677625)) b!3897875))

(assert (= (and b!3897875 (not res!1576874)) b!3897877))

(declare-fun m!4456961 () Bool)

(assert (=> b!3897874 m!4456961))

(declare-fun m!4456963 () Bool)

(assert (=> b!3897876 m!4456963))

(declare-fun m!4456965 () Bool)

(assert (=> b!3897877 m!4456965))

(assert (=> b!3897444 d!1154974))

(declare-fun b!3897879 () Bool)

(declare-fun res!1576879 () Bool)

(declare-fun e!2409973 () Bool)

(assert (=> b!3897879 (=> (not res!1576879) (not e!2409973))))

(declare-fun lt!1357804 () Option!8850)

(assert (=> b!3897879 (= res!1576879 (< (size!31042 (_2!23425 (get!13671 lt!1357804))) (size!31042 lt!1357640)))))

(declare-fun b!3897880 () Bool)

(assert (=> b!3897880 (= e!2409973 (contains!8309 (t!319000 rules!2768) (rule!9332 (_1!23425 (get!13671 lt!1357804)))))))

(declare-fun b!3897881 () Bool)

(declare-fun res!1576875 () Bool)

(assert (=> b!3897881 (=> (not res!1576875) (not e!2409973))))

(assert (=> b!3897881 (= res!1576875 (= (++!10617 (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357804)))) (_2!23425 (get!13671 lt!1357804))) lt!1357640))))

(declare-fun d!1154976 () Bool)

(declare-fun e!2409971 () Bool)

(assert (=> d!1154976 e!2409971))

(declare-fun res!1576878 () Bool)

(assert (=> d!1154976 (=> res!1576878 e!2409971)))

(assert (=> d!1154976 (= res!1576878 (isEmpty!24576 lt!1357804))))

(declare-fun e!2409972 () Option!8850)

(assert (=> d!1154976 (= lt!1357804 e!2409972)))

(declare-fun c!677626 () Bool)

(assert (=> d!1154976 (= c!677626 (and ((_ is Cons!41349) (t!319000 rules!2768)) ((_ is Nil!41349) (t!319000 (t!319000 rules!2768)))))))

(declare-fun lt!1357803 () Unit!59468)

(declare-fun lt!1357806 () Unit!59468)

(assert (=> d!1154976 (= lt!1357803 lt!1357806)))

(assert (=> d!1154976 (isPrefix!3525 lt!1357640 lt!1357640)))

(assert (=> d!1154976 (= lt!1357806 (lemmaIsPrefixRefl!2232 lt!1357640 lt!1357640))))

(assert (=> d!1154976 (rulesValidInductive!2302 thiss!20629 (t!319000 rules!2768))))

(assert (=> d!1154976 (= (maxPrefix!3323 thiss!20629 (t!319000 rules!2768) lt!1357640) lt!1357804)))

(declare-fun call!283728 () Option!8850)

(declare-fun bm!283723 () Bool)

(assert (=> bm!283723 (= call!283728 (maxPrefixOneRule!2399 thiss!20629 (h!46769 (t!319000 rules!2768)) lt!1357640))))

(declare-fun b!3897882 () Bool)

(declare-fun res!1576877 () Bool)

(assert (=> b!3897882 (=> (not res!1576877) (not e!2409973))))

(assert (=> b!3897882 (= res!1576877 (matchR!5430 (regex!6430 (rule!9332 (_1!23425 (get!13671 lt!1357804)))) (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357804))))))))

(declare-fun b!3897883 () Bool)

(declare-fun res!1576876 () Bool)

(assert (=> b!3897883 (=> (not res!1576876) (not e!2409973))))

(assert (=> b!3897883 (= res!1576876 (= (value!203889 (_1!23425 (get!13671 lt!1357804))) (apply!9669 (transformation!6430 (rule!9332 (_1!23425 (get!13671 lt!1357804)))) (seqFromList!4697 (originalCharacters!7030 (_1!23425 (get!13671 lt!1357804)))))))))

(declare-fun b!3897884 () Bool)

(declare-fun res!1576881 () Bool)

(assert (=> b!3897884 (=> (not res!1576881) (not e!2409973))))

(assert (=> b!3897884 (= res!1576881 (= (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357804)))) (originalCharacters!7030 (_1!23425 (get!13671 lt!1357804)))))))

(declare-fun b!3897885 () Bool)

(assert (=> b!3897885 (= e!2409972 call!283728)))

(declare-fun b!3897886 () Bool)

(declare-fun lt!1357805 () Option!8850)

(declare-fun lt!1357802 () Option!8850)

(assert (=> b!3897886 (= e!2409972 (ite (and ((_ is None!8849) lt!1357805) ((_ is None!8849) lt!1357802)) None!8849 (ite ((_ is None!8849) lt!1357802) lt!1357805 (ite ((_ is None!8849) lt!1357805) lt!1357802 (ite (>= (size!31041 (_1!23425 (v!39161 lt!1357805))) (size!31041 (_1!23425 (v!39161 lt!1357802)))) lt!1357805 lt!1357802)))))))

(assert (=> b!3897886 (= lt!1357805 call!283728)))

(assert (=> b!3897886 (= lt!1357802 (maxPrefix!3323 thiss!20629 (t!319000 (t!319000 rules!2768)) lt!1357640))))

(declare-fun b!3897887 () Bool)

(assert (=> b!3897887 (= e!2409971 e!2409973)))

(declare-fun res!1576880 () Bool)

(assert (=> b!3897887 (=> (not res!1576880) (not e!2409973))))

(assert (=> b!3897887 (= res!1576880 (isDefined!6901 lt!1357804))))

(assert (= (and d!1154976 c!677626) b!3897885))

(assert (= (and d!1154976 (not c!677626)) b!3897886))

(assert (= (or b!3897885 b!3897886) bm!283723))

(assert (= (and d!1154976 (not res!1576878)) b!3897887))

(assert (= (and b!3897887 res!1576880) b!3897884))

(assert (= (and b!3897884 res!1576881) b!3897879))

(assert (= (and b!3897879 res!1576879) b!3897881))

(assert (= (and b!3897881 res!1576875) b!3897883))

(assert (= (and b!3897883 res!1576876) b!3897882))

(assert (= (and b!3897882 res!1576877) b!3897880))

(declare-fun m!4456967 () Bool)

(assert (=> b!3897880 m!4456967))

(declare-fun m!4456969 () Bool)

(assert (=> b!3897880 m!4456969))

(assert (=> b!3897882 m!4456967))

(declare-fun m!4456971 () Bool)

(assert (=> b!3897882 m!4456971))

(assert (=> b!3897882 m!4456971))

(declare-fun m!4456973 () Bool)

(assert (=> b!3897882 m!4456973))

(assert (=> b!3897882 m!4456973))

(declare-fun m!4456975 () Bool)

(assert (=> b!3897882 m!4456975))

(declare-fun m!4456977 () Bool)

(assert (=> b!3897886 m!4456977))

(assert (=> b!3897883 m!4456967))

(declare-fun m!4456979 () Bool)

(assert (=> b!3897883 m!4456979))

(assert (=> b!3897883 m!4456979))

(declare-fun m!4456981 () Bool)

(assert (=> b!3897883 m!4456981))

(assert (=> b!3897881 m!4456967))

(assert (=> b!3897881 m!4456971))

(assert (=> b!3897881 m!4456971))

(assert (=> b!3897881 m!4456973))

(assert (=> b!3897881 m!4456973))

(declare-fun m!4456983 () Bool)

(assert (=> b!3897881 m!4456983))

(declare-fun m!4456985 () Bool)

(assert (=> b!3897887 m!4456985))

(assert (=> b!3897879 m!4456967))

(declare-fun m!4456987 () Bool)

(assert (=> b!3897879 m!4456987))

(assert (=> b!3897879 m!4456533))

(declare-fun m!4456989 () Bool)

(assert (=> bm!283723 m!4456989))

(declare-fun m!4456991 () Bool)

(assert (=> d!1154976 m!4456991))

(assert (=> d!1154976 m!4456357))

(assert (=> d!1154976 m!4456359))

(declare-fun m!4456993 () Bool)

(assert (=> d!1154976 m!4456993))

(assert (=> b!3897884 m!4456967))

(assert (=> b!3897884 m!4456971))

(assert (=> b!3897884 m!4456971))

(assert (=> b!3897884 m!4456973))

(assert (=> b!3897422 d!1154976))

(declare-fun d!1154978 () Bool)

(assert (=> d!1154978 (= (isEmpty!24573 rules!2768) ((_ is Nil!41349) rules!2768))))

(assert (=> b!3897443 d!1154978))

(declare-fun d!1154980 () Bool)

(declare-fun res!1576882 () Bool)

(declare-fun e!2409974 () Bool)

(assert (=> d!1154980 (=> (not res!1576882) (not e!2409974))))

(assert (=> d!1154980 (= res!1576882 (not (isEmpty!24572 (originalCharacters!7030 (_1!23425 (v!39161 err!4369))))))))

(assert (=> d!1154980 (= (inv!55509 (_1!23425 (v!39161 err!4369))) e!2409974)))

(declare-fun b!3897888 () Bool)

(declare-fun res!1576883 () Bool)

(assert (=> b!3897888 (=> (not res!1576883) (not e!2409974))))

(assert (=> b!3897888 (= res!1576883 (= (originalCharacters!7030 (_1!23425 (v!39161 err!4369))) (list!15366 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (value!203889 (_1!23425 (v!39161 err!4369)))))))))

(declare-fun b!3897889 () Bool)

(assert (=> b!3897889 (= e!2409974 (= (size!31041 (_1!23425 (v!39161 err!4369))) (size!31042 (originalCharacters!7030 (_1!23425 (v!39161 err!4369))))))))

(assert (= (and d!1154980 res!1576882) b!3897888))

(assert (= (and b!3897888 res!1576883) b!3897889))

(declare-fun b_lambda!113837 () Bool)

(assert (=> (not b_lambda!113837) (not b!3897888)))

(declare-fun tb!228911 () Bool)

(declare-fun t!319096 () Bool)

(assert (=> (and b!3897434 (= (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) t!319096) tb!228911))

(declare-fun b!3897890 () Bool)

(declare-fun e!2409975 () Bool)

(declare-fun tp!1186026 () Bool)

(assert (=> b!3897890 (= e!2409975 (and (inv!55513 (c!677553 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (value!203889 (_1!23425 (v!39161 err!4369)))))) tp!1186026))))

(declare-fun result!278080 () Bool)

(assert (=> tb!228911 (= result!278080 (and (inv!55514 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (value!203889 (_1!23425 (v!39161 err!4369))))) e!2409975))))

(assert (= tb!228911 b!3897890))

(declare-fun m!4456995 () Bool)

(assert (=> b!3897890 m!4456995))

(declare-fun m!4456997 () Bool)

(assert (=> tb!228911 m!4456997))

(assert (=> b!3897888 t!319096))

(declare-fun b_and!294315 () Bool)

(assert (= b_and!294307 (and (=> t!319096 result!278080) b_and!294315)))

(declare-fun tb!228913 () Bool)

(declare-fun t!319098 () Bool)

(assert (=> (and b!3897440 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) t!319098) tb!228913))

(declare-fun result!278082 () Bool)

(assert (= result!278082 result!278080))

(assert (=> b!3897888 t!319098))

(declare-fun b_and!294317 () Bool)

(assert (= b_and!294309 (and (=> t!319098 result!278082) b_and!294317)))

(declare-fun tb!228915 () Bool)

(declare-fun t!319100 () Bool)

(assert (=> (and b!3897452 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) t!319100) tb!228915))

(declare-fun result!278084 () Bool)

(assert (= result!278084 result!278080))

(assert (=> b!3897888 t!319100))

(declare-fun b_and!294319 () Bool)

(assert (= b_and!294311 (and (=> t!319100 result!278084) b_and!294319)))

(declare-fun t!319102 () Bool)

(declare-fun tb!228917 () Bool)

(assert (=> (and b!3897428 (= (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) t!319102) tb!228917))

(declare-fun result!278086 () Bool)

(assert (= result!278086 result!278080))

(assert (=> b!3897888 t!319102))

(declare-fun b_and!294321 () Bool)

(assert (= b_and!294313 (and (=> t!319102 result!278086) b_and!294321)))

(declare-fun m!4456999 () Bool)

(assert (=> d!1154980 m!4456999))

(declare-fun m!4457001 () Bool)

(assert (=> b!3897888 m!4457001))

(assert (=> b!3897888 m!4457001))

(declare-fun m!4457003 () Bool)

(assert (=> b!3897888 m!4457003))

(declare-fun m!4457005 () Bool)

(assert (=> b!3897889 m!4457005))

(assert (=> b!3897442 d!1154980))

(declare-fun b!3897909 () Bool)

(declare-fun e!2409986 () Option!8850)

(declare-datatypes ((tuple2!40588 0))(
  ( (tuple2!40589 (_1!23428 List!41470) (_2!23428 List!41470)) )
))
(declare-fun lt!1357817 () tuple2!40588)

(declare-fun size!31046 (BalanceConc!24876) Int)

(assert (=> b!3897909 (= e!2409986 (Some!8849 (tuple2!40583 (Token!11999 (apply!9669 (transformation!6430 (h!46769 rules!2768)) (seqFromList!4697 (_1!23428 lt!1357817))) (h!46769 rules!2768) (size!31046 (seqFromList!4697 (_1!23428 lt!1357817))) (_1!23428 lt!1357817)) (_2!23428 lt!1357817))))))

(declare-fun lt!1357820 () Unit!59468)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1191 (Regex!11335 List!41470) Unit!59468)

(assert (=> b!3897909 (= lt!1357820 (longestMatchIsAcceptedByMatchOrIsEmpty!1191 (regex!6430 (h!46769 rules!2768)) lt!1357640))))

(declare-fun res!1576900 () Bool)

(declare-fun findLongestMatchInner!1218 (Regex!11335 List!41470 Int List!41470 List!41470 Int) tuple2!40588)

(assert (=> b!3897909 (= res!1576900 (isEmpty!24572 (_1!23428 (findLongestMatchInner!1218 (regex!6430 (h!46769 rules!2768)) Nil!41346 (size!31042 Nil!41346) lt!1357640 lt!1357640 (size!31042 lt!1357640)))))))

(declare-fun e!2409984 () Bool)

(assert (=> b!3897909 (=> res!1576900 e!2409984)))

(assert (=> b!3897909 e!2409984))

(declare-fun lt!1357821 () Unit!59468)

(assert (=> b!3897909 (= lt!1357821 lt!1357820)))

(declare-fun lt!1357819 () Unit!59468)

(declare-fun lemmaSemiInverse!1724 (TokenValueInjection!12748 BalanceConc!24876) Unit!59468)

(assert (=> b!3897909 (= lt!1357819 (lemmaSemiInverse!1724 (transformation!6430 (h!46769 rules!2768)) (seqFromList!4697 (_1!23428 lt!1357817))))))

(declare-fun b!3897910 () Bool)

(declare-fun e!2409987 () Bool)

(declare-fun e!2409985 () Bool)

(assert (=> b!3897910 (= e!2409987 e!2409985)))

(declare-fun res!1576899 () Bool)

(assert (=> b!3897910 (=> (not res!1576899) (not e!2409985))))

(declare-fun lt!1357818 () Option!8850)

(assert (=> b!3897910 (= res!1576899 (matchR!5430 (regex!6430 (h!46769 rules!2768)) (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357818))))))))

(declare-fun b!3897911 () Bool)

(assert (=> b!3897911 (= e!2409984 (matchR!5430 (regex!6430 (h!46769 rules!2768)) (_1!23428 (findLongestMatchInner!1218 (regex!6430 (h!46769 rules!2768)) Nil!41346 (size!31042 Nil!41346) lt!1357640 lt!1357640 (size!31042 lt!1357640)))))))

(declare-fun b!3897912 () Bool)

(assert (=> b!3897912 (= e!2409986 None!8849)))

(declare-fun d!1154982 () Bool)

(assert (=> d!1154982 e!2409987))

(declare-fun res!1576903 () Bool)

(assert (=> d!1154982 (=> res!1576903 e!2409987)))

(assert (=> d!1154982 (= res!1576903 (isEmpty!24576 lt!1357818))))

(assert (=> d!1154982 (= lt!1357818 e!2409986)))

(declare-fun c!677629 () Bool)

(assert (=> d!1154982 (= c!677629 (isEmpty!24572 (_1!23428 lt!1357817)))))

(declare-fun findLongestMatch!1131 (Regex!11335 List!41470) tuple2!40588)

(assert (=> d!1154982 (= lt!1357817 (findLongestMatch!1131 (regex!6430 (h!46769 rules!2768)) lt!1357640))))

(assert (=> d!1154982 (ruleValid!2378 thiss!20629 (h!46769 rules!2768))))

(assert (=> d!1154982 (= (maxPrefixOneRule!2399 thiss!20629 (h!46769 rules!2768) lt!1357640) lt!1357818)))

(declare-fun b!3897913 () Bool)

(assert (=> b!3897913 (= e!2409985 (= (size!31041 (_1!23425 (get!13671 lt!1357818))) (size!31042 (originalCharacters!7030 (_1!23425 (get!13671 lt!1357818))))))))

(declare-fun b!3897914 () Bool)

(declare-fun res!1576898 () Bool)

(assert (=> b!3897914 (=> (not res!1576898) (not e!2409985))))

(assert (=> b!3897914 (= res!1576898 (= (rule!9332 (_1!23425 (get!13671 lt!1357818))) (h!46769 rules!2768)))))

(declare-fun b!3897915 () Bool)

(declare-fun res!1576902 () Bool)

(assert (=> b!3897915 (=> (not res!1576902) (not e!2409985))))

(assert (=> b!3897915 (= res!1576902 (= (++!10617 (list!15366 (charsOf!4254 (_1!23425 (get!13671 lt!1357818)))) (_2!23425 (get!13671 lt!1357818))) lt!1357640))))

(declare-fun b!3897916 () Bool)

(declare-fun res!1576904 () Bool)

(assert (=> b!3897916 (=> (not res!1576904) (not e!2409985))))

(assert (=> b!3897916 (= res!1576904 (< (size!31042 (_2!23425 (get!13671 lt!1357818))) (size!31042 lt!1357640)))))

(declare-fun b!3897917 () Bool)

(declare-fun res!1576901 () Bool)

(assert (=> b!3897917 (=> (not res!1576901) (not e!2409985))))

(assert (=> b!3897917 (= res!1576901 (= (value!203889 (_1!23425 (get!13671 lt!1357818))) (apply!9669 (transformation!6430 (rule!9332 (_1!23425 (get!13671 lt!1357818)))) (seqFromList!4697 (originalCharacters!7030 (_1!23425 (get!13671 lt!1357818)))))))))

(assert (= (and d!1154982 c!677629) b!3897912))

(assert (= (and d!1154982 (not c!677629)) b!3897909))

(assert (= (and b!3897909 (not res!1576900)) b!3897911))

(assert (= (and d!1154982 (not res!1576903)) b!3897910))

(assert (= (and b!3897910 res!1576899) b!3897915))

(assert (= (and b!3897915 res!1576902) b!3897916))

(assert (= (and b!3897916 res!1576904) b!3897914))

(assert (= (and b!3897914 res!1576898) b!3897917))

(assert (= (and b!3897917 res!1576901) b!3897913))

(declare-fun m!4457007 () Bool)

(assert (=> b!3897910 m!4457007))

(declare-fun m!4457009 () Bool)

(assert (=> b!3897910 m!4457009))

(assert (=> b!3897910 m!4457009))

(declare-fun m!4457011 () Bool)

(assert (=> b!3897910 m!4457011))

(assert (=> b!3897910 m!4457011))

(declare-fun m!4457013 () Bool)

(assert (=> b!3897910 m!4457013))

(assert (=> b!3897909 m!4456533))

(declare-fun m!4457015 () Bool)

(assert (=> b!3897909 m!4457015))

(declare-fun m!4457017 () Bool)

(assert (=> b!3897909 m!4457017))

(declare-fun m!4457019 () Bool)

(assert (=> b!3897909 m!4457019))

(assert (=> b!3897909 m!4456549))

(assert (=> b!3897909 m!4456533))

(declare-fun m!4457021 () Bool)

(assert (=> b!3897909 m!4457021))

(assert (=> b!3897909 m!4457017))

(declare-fun m!4457023 () Bool)

(assert (=> b!3897909 m!4457023))

(assert (=> b!3897909 m!4457017))

(declare-fun m!4457025 () Bool)

(assert (=> b!3897909 m!4457025))

(assert (=> b!3897909 m!4457017))

(declare-fun m!4457027 () Bool)

(assert (=> b!3897909 m!4457027))

(assert (=> b!3897909 m!4456549))

(assert (=> b!3897911 m!4456549))

(assert (=> b!3897911 m!4456533))

(assert (=> b!3897911 m!4456549))

(assert (=> b!3897911 m!4456533))

(assert (=> b!3897911 m!4457021))

(declare-fun m!4457029 () Bool)

(assert (=> b!3897911 m!4457029))

(assert (=> b!3897913 m!4457007))

(declare-fun m!4457031 () Bool)

(assert (=> b!3897913 m!4457031))

(assert (=> b!3897914 m!4457007))

(declare-fun m!4457033 () Bool)

(assert (=> d!1154982 m!4457033))

(declare-fun m!4457035 () Bool)

(assert (=> d!1154982 m!4457035))

(declare-fun m!4457037 () Bool)

(assert (=> d!1154982 m!4457037))

(declare-fun m!4457039 () Bool)

(assert (=> d!1154982 m!4457039))

(assert (=> b!3897915 m!4457007))

(assert (=> b!3897915 m!4457009))

(assert (=> b!3897915 m!4457009))

(assert (=> b!3897915 m!4457011))

(assert (=> b!3897915 m!4457011))

(declare-fun m!4457041 () Bool)

(assert (=> b!3897915 m!4457041))

(assert (=> b!3897916 m!4457007))

(declare-fun m!4457043 () Bool)

(assert (=> b!3897916 m!4457043))

(assert (=> b!3897916 m!4456533))

(assert (=> b!3897917 m!4457007))

(declare-fun m!4457045 () Bool)

(assert (=> b!3897917 m!4457045))

(assert (=> b!3897917 m!4457045))

(declare-fun m!4457047 () Bool)

(assert (=> b!3897917 m!4457047))

(assert (=> bm!283715 d!1154982))

(declare-fun d!1154984 () Bool)

(assert (=> d!1154984 (and (= lt!1357647 prefix!426) (= (_2!23425 (v!39161 lt!1357634)) suffix!1176))))

(declare-fun lt!1357824 () Unit!59468)

(declare-fun choose!23055 (List!41470 List!41470 List!41470 List!41470) Unit!59468)

(assert (=> d!1154984 (= lt!1357824 (choose!23055 lt!1357647 (_2!23425 (v!39161 lt!1357634)) prefix!426 suffix!1176))))

(assert (=> d!1154984 (= (++!10617 lt!1357647 (_2!23425 (v!39161 lt!1357634))) (++!10617 prefix!426 suffix!1176))))

(assert (=> d!1154984 (= (lemmaConcatSameAndSameSizesThenSameLists!502 lt!1357647 (_2!23425 (v!39161 lt!1357634)) prefix!426 suffix!1176) lt!1357824)))

(declare-fun bs!584774 () Bool)

(assert (= bs!584774 d!1154984))

(declare-fun m!4457049 () Bool)

(assert (=> bs!584774 m!4457049))

(assert (=> bs!584774 m!4456409))

(assert (=> bs!584774 m!4456355))

(assert (=> b!3897441 d!1154984))

(declare-fun d!1154986 () Bool)

(declare-fun res!1576905 () Bool)

(declare-fun e!2409988 () Bool)

(assert (=> d!1154986 (=> (not res!1576905) (not e!2409988))))

(assert (=> d!1154986 (= res!1576905 (not (isEmpty!24572 (originalCharacters!7030 (h!46768 suffixTokens!72)))))))

(assert (=> d!1154986 (= (inv!55509 (h!46768 suffixTokens!72)) e!2409988)))

(declare-fun b!3897918 () Bool)

(declare-fun res!1576906 () Bool)

(assert (=> b!3897918 (=> (not res!1576906) (not e!2409988))))

(assert (=> b!3897918 (= res!1576906 (= (originalCharacters!7030 (h!46768 suffixTokens!72)) (list!15366 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (value!203889 (h!46768 suffixTokens!72))))))))

(declare-fun b!3897919 () Bool)

(assert (=> b!3897919 (= e!2409988 (= (size!31041 (h!46768 suffixTokens!72)) (size!31042 (originalCharacters!7030 (h!46768 suffixTokens!72)))))))

(assert (= (and d!1154986 res!1576905) b!3897918))

(assert (= (and b!3897918 res!1576906) b!3897919))

(declare-fun b_lambda!113839 () Bool)

(assert (=> (not b_lambda!113839) (not b!3897918)))

(declare-fun tb!228919 () Bool)

(declare-fun t!319104 () Bool)

(assert (=> (and b!3897434 (= (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))) t!319104) tb!228919))

(declare-fun b!3897920 () Bool)

(declare-fun e!2409989 () Bool)

(declare-fun tp!1186027 () Bool)

(assert (=> b!3897920 (= e!2409989 (and (inv!55513 (c!677553 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (value!203889 (h!46768 suffixTokens!72))))) tp!1186027))))

(declare-fun result!278088 () Bool)

(assert (=> tb!228919 (= result!278088 (and (inv!55514 (dynLambda!17748 (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (value!203889 (h!46768 suffixTokens!72)))) e!2409989))))

(assert (= tb!228919 b!3897920))

(declare-fun m!4457051 () Bool)

(assert (=> b!3897920 m!4457051))

(declare-fun m!4457053 () Bool)

(assert (=> tb!228919 m!4457053))

(assert (=> b!3897918 t!319104))

(declare-fun b_and!294323 () Bool)

(assert (= b_and!294315 (and (=> t!319104 result!278088) b_and!294323)))

(declare-fun t!319106 () Bool)

(declare-fun tb!228921 () Bool)

(assert (=> (and b!3897440 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))) t!319106) tb!228921))

(declare-fun result!278090 () Bool)

(assert (= result!278090 result!278088))

(assert (=> b!3897918 t!319106))

(declare-fun b_and!294325 () Bool)

(assert (= b_and!294317 (and (=> t!319106 result!278090) b_and!294325)))

(declare-fun t!319108 () Bool)

(declare-fun tb!228923 () Bool)

(assert (=> (and b!3897452 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))) t!319108) tb!228923))

(declare-fun result!278092 () Bool)

(assert (= result!278092 result!278088))

(assert (=> b!3897918 t!319108))

(declare-fun b_and!294327 () Bool)

(assert (= b_and!294319 (and (=> t!319108 result!278092) b_and!294327)))

(declare-fun t!319110 () Bool)

(declare-fun tb!228925 () Bool)

(assert (=> (and b!3897428 (= (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))) t!319110) tb!228925))

(declare-fun result!278094 () Bool)

(assert (= result!278094 result!278088))

(assert (=> b!3897918 t!319110))

(declare-fun b_and!294329 () Bool)

(assert (= b_and!294321 (and (=> t!319110 result!278094) b_and!294329)))

(declare-fun m!4457055 () Bool)

(assert (=> d!1154986 m!4457055))

(declare-fun m!4457057 () Bool)

(assert (=> b!3897918 m!4457057))

(assert (=> b!3897918 m!4457057))

(declare-fun m!4457059 () Bool)

(assert (=> b!3897918 m!4457059))

(declare-fun m!4457061 () Bool)

(assert (=> b!3897919 m!4457061))

(assert (=> b!3897419 d!1154986))

(declare-fun b!3897921 () Bool)

(declare-fun e!2409992 () Bool)

(declare-fun lt!1357827 () tuple2!40584)

(assert (=> b!3897921 (= e!2409992 (not (isEmpty!24574 (_1!23426 lt!1357827))))))

(declare-fun b!3897922 () Bool)

(declare-fun e!2409990 () Bool)

(assert (=> b!3897922 (= e!2409990 e!2409992)))

(declare-fun res!1576907 () Bool)

(assert (=> b!3897922 (= res!1576907 (< (size!31042 (_2!23426 lt!1357827)) (size!31042 lt!1357640)))))

(assert (=> b!3897922 (=> (not res!1576907) (not e!2409992))))

(declare-fun d!1154988 () Bool)

(assert (=> d!1154988 e!2409990))

(declare-fun c!677631 () Bool)

(assert (=> d!1154988 (= c!677631 (> (size!31045 (_1!23426 lt!1357827)) 0))))

(declare-fun e!2409991 () tuple2!40584)

(assert (=> d!1154988 (= lt!1357827 e!2409991)))

(declare-fun c!677630 () Bool)

(declare-fun lt!1357826 () Option!8850)

(assert (=> d!1154988 (= c!677630 ((_ is Some!8849) lt!1357826))))

(assert (=> d!1154988 (= lt!1357826 (maxPrefix!3323 thiss!20629 rules!2768 lt!1357640))))

(assert (=> d!1154988 (= (lexList!1787 thiss!20629 rules!2768 lt!1357640) lt!1357827)))

(declare-fun b!3897923 () Bool)

(assert (=> b!3897923 (= e!2409990 (= (_2!23426 lt!1357827) lt!1357640))))

(declare-fun b!3897924 () Bool)

(declare-fun lt!1357825 () tuple2!40584)

(assert (=> b!3897924 (= e!2409991 (tuple2!40585 (Cons!41348 (_1!23425 (v!39161 lt!1357826)) (_1!23426 lt!1357825)) (_2!23426 lt!1357825)))))

(assert (=> b!3897924 (= lt!1357825 (lexList!1787 thiss!20629 rules!2768 (_2!23425 (v!39161 lt!1357826))))))

(declare-fun b!3897925 () Bool)

(assert (=> b!3897925 (= e!2409991 (tuple2!40585 Nil!41348 lt!1357640))))

(assert (= (and d!1154988 c!677630) b!3897924))

(assert (= (and d!1154988 (not c!677630)) b!3897925))

(assert (= (and d!1154988 c!677631) b!3897922))

(assert (= (and d!1154988 (not c!677631)) b!3897923))

(assert (= (and b!3897922 res!1576907) b!3897921))

(declare-fun m!4457063 () Bool)

(assert (=> b!3897921 m!4457063))

(declare-fun m!4457065 () Bool)

(assert (=> b!3897922 m!4457065))

(assert (=> b!3897922 m!4456533))

(declare-fun m!4457067 () Bool)

(assert (=> d!1154988 m!4457067))

(assert (=> d!1154988 m!4456373))

(declare-fun m!4457069 () Bool)

(assert (=> b!3897924 m!4457069))

(assert (=> b!3897439 d!1154988))

(declare-fun b!3897926 () Bool)

(declare-fun e!2409993 () List!41472)

(assert (=> b!3897926 (= e!2409993 suffixTokens!72)))

(declare-fun d!1154990 () Bool)

(declare-fun e!2409994 () Bool)

(assert (=> d!1154990 e!2409994))

(declare-fun res!1576909 () Bool)

(assert (=> d!1154990 (=> (not res!1576909) (not e!2409994))))

(declare-fun lt!1357828 () List!41472)

(assert (=> d!1154990 (= res!1576909 (= (content!6183 lt!1357828) ((_ map or) (content!6183 prefixTokens!80) (content!6183 suffixTokens!72))))))

(assert (=> d!1154990 (= lt!1357828 e!2409993)))

(declare-fun c!677632 () Bool)

(assert (=> d!1154990 (= c!677632 ((_ is Nil!41348) prefixTokens!80))))

(assert (=> d!1154990 (= (++!10618 prefixTokens!80 suffixTokens!72) lt!1357828)))

(declare-fun b!3897928 () Bool)

(declare-fun res!1576908 () Bool)

(assert (=> b!3897928 (=> (not res!1576908) (not e!2409994))))

(assert (=> b!3897928 (= res!1576908 (= (size!31045 lt!1357828) (+ (size!31045 prefixTokens!80) (size!31045 suffixTokens!72))))))

(declare-fun b!3897927 () Bool)

(assert (=> b!3897927 (= e!2409993 (Cons!41348 (h!46768 prefixTokens!80) (++!10618 (t!318999 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3897929 () Bool)

(assert (=> b!3897929 (= e!2409994 (or (not (= suffixTokens!72 Nil!41348)) (= lt!1357828 prefixTokens!80)))))

(assert (= (and d!1154990 c!677632) b!3897926))

(assert (= (and d!1154990 (not c!677632)) b!3897927))

(assert (= (and d!1154990 res!1576909) b!3897928))

(assert (= (and b!3897928 res!1576908) b!3897929))

(declare-fun m!4457071 () Bool)

(assert (=> d!1154990 m!4457071))

(declare-fun m!4457073 () Bool)

(assert (=> d!1154990 m!4457073))

(declare-fun m!4457075 () Bool)

(assert (=> d!1154990 m!4457075))

(declare-fun m!4457077 () Bool)

(assert (=> b!3897928 m!4457077))

(declare-fun m!4457079 () Bool)

(assert (=> b!3897928 m!4457079))

(declare-fun m!4457081 () Bool)

(assert (=> b!3897928 m!4457081))

(declare-fun m!4457083 () Bool)

(assert (=> b!3897927 m!4457083))

(assert (=> b!3897439 d!1154990))

(declare-fun b!3897931 () Bool)

(declare-fun e!2409995 () List!41470)

(assert (=> b!3897931 (= e!2409995 (Cons!41346 (h!46766 prefix!426) (++!10617 (t!318997 prefix!426) suffix!1176)))))

(declare-fun e!2409996 () Bool)

(declare-fun b!3897933 () Bool)

(declare-fun lt!1357829 () List!41470)

(assert (=> b!3897933 (= e!2409996 (or (not (= suffix!1176 Nil!41346)) (= lt!1357829 prefix!426)))))

(declare-fun d!1154992 () Bool)

(assert (=> d!1154992 e!2409996))

(declare-fun res!1576910 () Bool)

(assert (=> d!1154992 (=> (not res!1576910) (not e!2409996))))

(assert (=> d!1154992 (= res!1576910 (= (content!6182 lt!1357829) ((_ map or) (content!6182 prefix!426) (content!6182 suffix!1176))))))

(assert (=> d!1154992 (= lt!1357829 e!2409995)))

(declare-fun c!677633 () Bool)

(assert (=> d!1154992 (= c!677633 ((_ is Nil!41346) prefix!426))))

(assert (=> d!1154992 (= (++!10617 prefix!426 suffix!1176) lt!1357829)))

(declare-fun b!3897930 () Bool)

(assert (=> b!3897930 (= e!2409995 suffix!1176)))

(declare-fun b!3897932 () Bool)

(declare-fun res!1576911 () Bool)

(assert (=> b!3897932 (=> (not res!1576911) (not e!2409996))))

(assert (=> b!3897932 (= res!1576911 (= (size!31042 lt!1357829) (+ (size!31042 prefix!426) (size!31042 suffix!1176))))))

(assert (= (and d!1154992 c!677633) b!3897930))

(assert (= (and d!1154992 (not c!677633)) b!3897931))

(assert (= (and d!1154992 res!1576910) b!3897932))

(assert (= (and b!3897932 res!1576911) b!3897933))

(declare-fun m!4457085 () Bool)

(assert (=> b!3897931 m!4457085))

(declare-fun m!4457087 () Bool)

(assert (=> d!1154992 m!4457087))

(declare-fun m!4457089 () Bool)

(assert (=> d!1154992 m!4457089))

(declare-fun m!4457091 () Bool)

(assert (=> d!1154992 m!4457091))

(declare-fun m!4457093 () Bool)

(assert (=> b!3897932 m!4457093))

(declare-fun m!4457095 () Bool)

(assert (=> b!3897932 m!4457095))

(assert (=> b!3897932 m!4456547))

(assert (=> b!3897439 d!1154992))

(declare-fun b!3897934 () Bool)

(declare-fun e!2409998 () Bool)

(assert (=> b!3897934 (= e!2409998 (inv!17 (value!203889 (h!46768 suffixTokens!72))))))

(declare-fun b!3897935 () Bool)

(declare-fun res!1576912 () Bool)

(declare-fun e!2409999 () Bool)

(assert (=> b!3897935 (=> res!1576912 e!2409999)))

(assert (=> b!3897935 (= res!1576912 (not ((_ is IntegerValue!19982) (value!203889 (h!46768 suffixTokens!72)))))))

(assert (=> b!3897935 (= e!2409998 e!2409999)))

(declare-fun b!3897936 () Bool)

(declare-fun e!2409997 () Bool)

(assert (=> b!3897936 (= e!2409997 (inv!16 (value!203889 (h!46768 suffixTokens!72))))))

(declare-fun b!3897937 () Bool)

(assert (=> b!3897937 (= e!2409999 (inv!15 (value!203889 (h!46768 suffixTokens!72))))))

(declare-fun b!3897938 () Bool)

(assert (=> b!3897938 (= e!2409997 e!2409998)))

(declare-fun c!677635 () Bool)

(assert (=> b!3897938 (= c!677635 ((_ is IntegerValue!19981) (value!203889 (h!46768 suffixTokens!72))))))

(declare-fun d!1154994 () Bool)

(declare-fun c!677634 () Bool)

(assert (=> d!1154994 (= c!677634 ((_ is IntegerValue!19980) (value!203889 (h!46768 suffixTokens!72))))))

(assert (=> d!1154994 (= (inv!21 (value!203889 (h!46768 suffixTokens!72))) e!2409997)))

(assert (= (and d!1154994 c!677634) b!3897936))

(assert (= (and d!1154994 (not c!677634)) b!3897938))

(assert (= (and b!3897938 c!677635) b!3897934))

(assert (= (and b!3897938 (not c!677635)) b!3897935))

(assert (= (and b!3897935 (not res!1576912)) b!3897937))

(declare-fun m!4457097 () Bool)

(assert (=> b!3897934 m!4457097))

(declare-fun m!4457099 () Bool)

(assert (=> b!3897936 m!4457099))

(declare-fun m!4457101 () Bool)

(assert (=> b!3897937 m!4457101))

(assert (=> b!3897418 d!1154994))

(declare-fun d!1154996 () Bool)

(assert (=> d!1154996 (= (isEmpty!24572 prefix!426) ((_ is Nil!41346) prefix!426))))

(assert (=> b!3897417 d!1154996))

(declare-fun d!1154998 () Bool)

(declare-fun res!1576915 () Bool)

(declare-fun e!2410002 () Bool)

(assert (=> d!1154998 (=> (not res!1576915) (not e!2410002))))

(declare-fun rulesValid!2488 (LexerInterface!6019 List!41473) Bool)

(assert (=> d!1154998 (= res!1576915 (rulesValid!2488 thiss!20629 rules!2768))))

(assert (=> d!1154998 (= (rulesInvariant!5362 thiss!20629 rules!2768) e!2410002)))

(declare-fun b!3897941 () Bool)

(declare-datatypes ((List!41475 0))(
  ( (Nil!41351) (Cons!41351 (h!46771 String!47018) (t!319142 List!41475)) )
))
(declare-fun noDuplicateTag!2489 (LexerInterface!6019 List!41473 List!41475) Bool)

(assert (=> b!3897941 (= e!2410002 (noDuplicateTag!2489 thiss!20629 rules!2768 Nil!41351))))

(assert (= (and d!1154998 res!1576915) b!3897941))

(declare-fun m!4457103 () Bool)

(assert (=> d!1154998 m!4457103))

(declare-fun m!4457105 () Bool)

(assert (=> b!3897941 m!4457105))

(assert (=> b!3897436 d!1154998))

(declare-fun b!3897942 () Bool)

(declare-fun e!2410004 () Bool)

(assert (=> b!3897942 (= e!2410004 (inv!17 (value!203889 (h!46768 prefixTokens!80))))))

(declare-fun b!3897943 () Bool)

(declare-fun res!1576916 () Bool)

(declare-fun e!2410005 () Bool)

(assert (=> b!3897943 (=> res!1576916 e!2410005)))

(assert (=> b!3897943 (= res!1576916 (not ((_ is IntegerValue!19982) (value!203889 (h!46768 prefixTokens!80)))))))

(assert (=> b!3897943 (= e!2410004 e!2410005)))

(declare-fun b!3897944 () Bool)

(declare-fun e!2410003 () Bool)

(assert (=> b!3897944 (= e!2410003 (inv!16 (value!203889 (h!46768 prefixTokens!80))))))

(declare-fun b!3897945 () Bool)

(assert (=> b!3897945 (= e!2410005 (inv!15 (value!203889 (h!46768 prefixTokens!80))))))

(declare-fun b!3897946 () Bool)

(assert (=> b!3897946 (= e!2410003 e!2410004)))

(declare-fun c!677637 () Bool)

(assert (=> b!3897946 (= c!677637 ((_ is IntegerValue!19981) (value!203889 (h!46768 prefixTokens!80))))))

(declare-fun d!1155000 () Bool)

(declare-fun c!677636 () Bool)

(assert (=> d!1155000 (= c!677636 ((_ is IntegerValue!19980) (value!203889 (h!46768 prefixTokens!80))))))

(assert (=> d!1155000 (= (inv!21 (value!203889 (h!46768 prefixTokens!80))) e!2410003)))

(assert (= (and d!1155000 c!677636) b!3897944))

(assert (= (and d!1155000 (not c!677636)) b!3897946))

(assert (= (and b!3897946 c!677637) b!3897942))

(assert (= (and b!3897946 (not c!677637)) b!3897943))

(assert (= (and b!3897943 (not res!1576916)) b!3897945))

(declare-fun m!4457107 () Bool)

(assert (=> b!3897942 m!4457107))

(declare-fun m!4457109 () Bool)

(assert (=> b!3897944 m!4457109))

(declare-fun m!4457111 () Bool)

(assert (=> b!3897945 m!4457111))

(assert (=> b!3897432 d!1155000))

(declare-fun b!3897951 () Bool)

(declare-fun e!2410008 () Bool)

(declare-fun tp!1186030 () Bool)

(assert (=> b!3897951 (= e!2410008 (and tp_is_empty!19641 tp!1186030))))

(assert (=> b!3897442 (= tp!1185925 e!2410008)))

(assert (= (and b!3897442 ((_ is Cons!41346) (_2!23425 (v!39161 err!4369)))) b!3897951))

(declare-fun b!3897965 () Bool)

(declare-fun b_free!105517 () Bool)

(declare-fun b_next!106221 () Bool)

(assert (=> b!3897965 (= b_free!105517 (not b_next!106221))))

(declare-fun tb!228927 () Bool)

(declare-fun t!319112 () Bool)

(assert (=> (and b!3897965 (= (toValue!8866 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319112) tb!228927))

(declare-fun result!278100 () Bool)

(assert (= result!278100 result!278024))

(assert (=> d!1154936 t!319112))

(declare-fun b_and!294331 () Bool)

(declare-fun tp!1186041 () Bool)

(assert (=> b!3897965 (= tp!1186041 (and (=> t!319112 result!278100) b_and!294331))))

(declare-fun b_free!105519 () Bool)

(declare-fun b_next!106223 () Bool)

(assert (=> b!3897965 (= b_free!105519 (not b_next!106223))))

(declare-fun tb!228929 () Bool)

(declare-fun t!319114 () Bool)

(assert (=> (and b!3897965 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319114) tb!228929))

(declare-fun result!278102 () Bool)

(assert (= result!278102 result!277996))

(assert (=> d!1154904 t!319114))

(declare-fun t!319116 () Bool)

(declare-fun tb!228931 () Bool)

(assert (=> (and b!3897965 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))) t!319116) tb!228931))

(declare-fun result!278104 () Bool)

(assert (= result!278104 result!278072))

(assert (=> b!3897811 t!319116))

(declare-fun tb!228933 () Bool)

(declare-fun t!319118 () Bool)

(assert (=> (and b!3897965 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) t!319118) tb!228933))

(declare-fun result!278106 () Bool)

(assert (= result!278106 result!278080))

(assert (=> b!3897888 t!319118))

(declare-fun t!319120 () Bool)

(declare-fun tb!228935 () Bool)

(assert (=> (and b!3897965 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))) t!319120) tb!228935))

(declare-fun result!278108 () Bool)

(assert (= result!278108 result!278088))

(assert (=> b!3897918 t!319120))

(declare-fun b_and!294333 () Bool)

(declare-fun tp!1186043 () Bool)

(assert (=> b!3897965 (= tp!1186043 (and (=> t!319114 result!278102) (=> t!319116 result!278104) (=> t!319118 result!278106) (=> t!319120 result!278108) b_and!294333))))

(declare-fun e!2410025 () Bool)

(declare-fun b!3897963 () Bool)

(declare-fun e!2410023 () Bool)

(declare-fun tp!1186045 () Bool)

(assert (=> b!3897963 (= e!2410025 (and (inv!21 (value!203889 (h!46768 (t!318999 suffixTokens!72)))) e!2410023 tp!1186045))))

(declare-fun e!2410021 () Bool)

(assert (=> b!3897419 (= tp!1185941 e!2410021)))

(declare-fun b!3897962 () Bool)

(declare-fun tp!1186042 () Bool)

(assert (=> b!3897962 (= e!2410021 (and (inv!55509 (h!46768 (t!318999 suffixTokens!72))) e!2410025 tp!1186042))))

(declare-fun e!2410024 () Bool)

(assert (=> b!3897965 (= e!2410024 (and tp!1186041 tp!1186043))))

(declare-fun b!3897964 () Bool)

(declare-fun tp!1186044 () Bool)

(assert (=> b!3897964 (= e!2410023 (and tp!1186044 (inv!55506 (tag!7290 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (inv!55510 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) e!2410024))))

(assert (= b!3897964 b!3897965))

(assert (= b!3897963 b!3897964))

(assert (= b!3897962 b!3897963))

(assert (= (and b!3897419 ((_ is Cons!41348) (t!318999 suffixTokens!72))) b!3897962))

(declare-fun m!4457113 () Bool)

(assert (=> b!3897963 m!4457113))

(declare-fun m!4457115 () Bool)

(assert (=> b!3897962 m!4457115))

(declare-fun m!4457117 () Bool)

(assert (=> b!3897964 m!4457117))

(declare-fun m!4457119 () Bool)

(assert (=> b!3897964 m!4457119))

(declare-fun b!3897966 () Bool)

(declare-fun e!2410027 () Bool)

(declare-fun tp!1186046 () Bool)

(assert (=> b!3897966 (= e!2410027 (and tp_is_empty!19641 tp!1186046))))

(assert (=> b!3897418 (= tp!1185935 e!2410027)))

(assert (= (and b!3897418 ((_ is Cons!41346) (originalCharacters!7030 (h!46768 suffixTokens!72)))) b!3897966))

(declare-fun b!3897970 () Bool)

(declare-fun b_free!105521 () Bool)

(declare-fun b_next!106225 () Bool)

(assert (=> b!3897970 (= b_free!105521 (not b_next!106225))))

(declare-fun tb!228937 () Bool)

(declare-fun t!319123 () Bool)

(assert (=> (and b!3897970 (= (toValue!8866 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319123) tb!228937))

(declare-fun result!278110 () Bool)

(assert (= result!278110 result!278024))

(assert (=> d!1154936 t!319123))

(declare-fun b_and!294335 () Bool)

(declare-fun tp!1186047 () Bool)

(assert (=> b!3897970 (= tp!1186047 (and (=> t!319123 result!278110) b_and!294335))))

(declare-fun b_free!105523 () Bool)

(declare-fun b_next!106227 () Bool)

(assert (=> b!3897970 (= b_free!105523 (not b_next!106227))))

(declare-fun t!319125 () Bool)

(declare-fun tb!228939 () Bool)

(assert (=> (and b!3897970 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319125) tb!228939))

(declare-fun result!278112 () Bool)

(assert (= result!278112 result!277996))

(assert (=> d!1154904 t!319125))

(declare-fun t!319127 () Bool)

(declare-fun tb!228941 () Bool)

(assert (=> (and b!3897970 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))) t!319127) tb!228941))

(declare-fun result!278114 () Bool)

(assert (= result!278114 result!278072))

(assert (=> b!3897811 t!319127))

(declare-fun tb!228943 () Bool)

(declare-fun t!319129 () Bool)

(assert (=> (and b!3897970 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) t!319129) tb!228943))

(declare-fun result!278116 () Bool)

(assert (= result!278116 result!278080))

(assert (=> b!3897888 t!319129))

(declare-fun tb!228945 () Bool)

(declare-fun t!319131 () Bool)

(assert (=> (and b!3897970 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))) t!319131) tb!228945))

(declare-fun result!278118 () Bool)

(assert (= result!278118 result!278088))

(assert (=> b!3897918 t!319131))

(declare-fun tp!1186049 () Bool)

(declare-fun b_and!294337 () Bool)

(assert (=> b!3897970 (= tp!1186049 (and (=> t!319125 result!278112) (=> t!319127 result!278114) (=> t!319129 result!278116) (=> t!319131 result!278118) b_and!294337))))

(declare-fun b!3897968 () Bool)

(declare-fun e!2410030 () Bool)

(declare-fun tp!1186051 () Bool)

(declare-fun e!2410032 () Bool)

(assert (=> b!3897968 (= e!2410032 (and (inv!21 (value!203889 (h!46768 (t!318999 prefixTokens!80)))) e!2410030 tp!1186051))))

(declare-fun e!2410028 () Bool)

(assert (=> b!3897449 (= tp!1185934 e!2410028)))

(declare-fun b!3897967 () Bool)

(declare-fun tp!1186048 () Bool)

(assert (=> b!3897967 (= e!2410028 (and (inv!55509 (h!46768 (t!318999 prefixTokens!80))) e!2410032 tp!1186048))))

(declare-fun e!2410031 () Bool)

(assert (=> b!3897970 (= e!2410031 (and tp!1186047 tp!1186049))))

(declare-fun tp!1186050 () Bool)

(declare-fun b!3897969 () Bool)

(assert (=> b!3897969 (= e!2410030 (and tp!1186050 (inv!55506 (tag!7290 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (inv!55510 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) e!2410031))))

(assert (= b!3897969 b!3897970))

(assert (= b!3897968 b!3897969))

(assert (= b!3897967 b!3897968))

(assert (= (and b!3897449 ((_ is Cons!41348) (t!318999 prefixTokens!80))) b!3897967))

(declare-fun m!4457121 () Bool)

(assert (=> b!3897968 m!4457121))

(declare-fun m!4457123 () Bool)

(assert (=> b!3897967 m!4457123))

(declare-fun m!4457125 () Bool)

(assert (=> b!3897969 m!4457125))

(declare-fun m!4457127 () Bool)

(assert (=> b!3897969 m!4457127))

(declare-fun b!3897982 () Bool)

(declare-fun e!2410036 () Bool)

(declare-fun tp!1186065 () Bool)

(declare-fun tp!1186063 () Bool)

(assert (=> b!3897982 (= e!2410036 (and tp!1186065 tp!1186063))))

(declare-fun b!3897981 () Bool)

(assert (=> b!3897981 (= e!2410036 tp_is_empty!19641)))

(declare-fun b!3897984 () Bool)

(declare-fun tp!1186066 () Bool)

(declare-fun tp!1186064 () Bool)

(assert (=> b!3897984 (= e!2410036 (and tp!1186066 tp!1186064))))

(assert (=> b!3897427 (= tp!1185930 e!2410036)))

(declare-fun b!3897983 () Bool)

(declare-fun tp!1186062 () Bool)

(assert (=> b!3897983 (= e!2410036 tp!1186062)))

(assert (= (and b!3897427 ((_ is ElementMatch!11335) (regex!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) b!3897981))

(assert (= (and b!3897427 ((_ is Concat!17996) (regex!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) b!3897982))

(assert (= (and b!3897427 ((_ is Star!11335) (regex!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) b!3897983))

(assert (= (and b!3897427 ((_ is Union!11335) (regex!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) b!3897984))

(declare-fun b!3897986 () Bool)

(declare-fun e!2410037 () Bool)

(declare-fun tp!1186070 () Bool)

(declare-fun tp!1186068 () Bool)

(assert (=> b!3897986 (= e!2410037 (and tp!1186070 tp!1186068))))

(declare-fun b!3897985 () Bool)

(assert (=> b!3897985 (= e!2410037 tp_is_empty!19641)))

(declare-fun b!3897988 () Bool)

(declare-fun tp!1186071 () Bool)

(declare-fun tp!1186069 () Bool)

(assert (=> b!3897988 (= e!2410037 (and tp!1186071 tp!1186069))))

(assert (=> b!3897448 (= tp!1185944 e!2410037)))

(declare-fun b!3897987 () Bool)

(declare-fun tp!1186067 () Bool)

(assert (=> b!3897987 (= e!2410037 tp!1186067)))

(assert (= (and b!3897448 ((_ is ElementMatch!11335) (regex!6430 (h!46769 rules!2768)))) b!3897985))

(assert (= (and b!3897448 ((_ is Concat!17996) (regex!6430 (h!46769 rules!2768)))) b!3897986))

(assert (= (and b!3897448 ((_ is Star!11335) (regex!6430 (h!46769 rules!2768)))) b!3897987))

(assert (= (and b!3897448 ((_ is Union!11335) (regex!6430 (h!46769 rules!2768)))) b!3897988))

(declare-fun b!3897990 () Bool)

(declare-fun e!2410038 () Bool)

(declare-fun tp!1186075 () Bool)

(declare-fun tp!1186073 () Bool)

(assert (=> b!3897990 (= e!2410038 (and tp!1186075 tp!1186073))))

(declare-fun b!3897989 () Bool)

(assert (=> b!3897989 (= e!2410038 tp_is_empty!19641)))

(declare-fun b!3897992 () Bool)

(declare-fun tp!1186076 () Bool)

(declare-fun tp!1186074 () Bool)

(assert (=> b!3897992 (= e!2410038 (and tp!1186076 tp!1186074))))

(assert (=> b!3897425 (= tp!1185924 e!2410038)))

(declare-fun b!3897991 () Bool)

(declare-fun tp!1186072 () Bool)

(assert (=> b!3897991 (= e!2410038 tp!1186072)))

(assert (= (and b!3897425 ((_ is ElementMatch!11335) (regex!6430 (rule!9332 (h!46768 prefixTokens!80))))) b!3897989))

(assert (= (and b!3897425 ((_ is Concat!17996) (regex!6430 (rule!9332 (h!46768 prefixTokens!80))))) b!3897990))

(assert (= (and b!3897425 ((_ is Star!11335) (regex!6430 (rule!9332 (h!46768 prefixTokens!80))))) b!3897991))

(assert (= (and b!3897425 ((_ is Union!11335) (regex!6430 (rule!9332 (h!46768 prefixTokens!80))))) b!3897992))

(declare-fun b!3897993 () Bool)

(declare-fun e!2410039 () Bool)

(declare-fun tp!1186077 () Bool)

(assert (=> b!3897993 (= e!2410039 (and tp_is_empty!19641 tp!1186077))))

(assert (=> b!3897435 (= tp!1185940 e!2410039)))

(assert (= (and b!3897435 ((_ is Cons!41346) (t!318997 prefix!426))) b!3897993))

(declare-fun b!3897995 () Bool)

(declare-fun e!2410040 () Bool)

(declare-fun tp!1186081 () Bool)

(declare-fun tp!1186079 () Bool)

(assert (=> b!3897995 (= e!2410040 (and tp!1186081 tp!1186079))))

(declare-fun b!3897994 () Bool)

(assert (=> b!3897994 (= e!2410040 tp_is_empty!19641)))

(declare-fun b!3897997 () Bool)

(declare-fun tp!1186082 () Bool)

(declare-fun tp!1186080 () Bool)

(assert (=> b!3897997 (= e!2410040 (and tp!1186082 tp!1186080))))

(assert (=> b!3897424 (= tp!1185936 e!2410040)))

(declare-fun b!3897996 () Bool)

(declare-fun tp!1186078 () Bool)

(assert (=> b!3897996 (= e!2410040 tp!1186078)))

(assert (= (and b!3897424 ((_ is ElementMatch!11335) (regex!6430 (rule!9332 (h!46768 suffixTokens!72))))) b!3897994))

(assert (= (and b!3897424 ((_ is Concat!17996) (regex!6430 (rule!9332 (h!46768 suffixTokens!72))))) b!3897995))

(assert (= (and b!3897424 ((_ is Star!11335) (regex!6430 (rule!9332 (h!46768 suffixTokens!72))))) b!3897996))

(assert (= (and b!3897424 ((_ is Union!11335) (regex!6430 (rule!9332 (h!46768 suffixTokens!72))))) b!3897997))

(declare-fun b!3898008 () Bool)

(declare-fun b_free!105525 () Bool)

(declare-fun b_next!106229 () Bool)

(assert (=> b!3898008 (= b_free!105525 (not b_next!106229))))

(declare-fun tb!228947 () Bool)

(declare-fun t!319133 () Bool)

(assert (=> (and b!3898008 (= (toValue!8866 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toValue!8866 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319133) tb!228947))

(declare-fun result!278124 () Bool)

(assert (= result!278124 result!278024))

(assert (=> d!1154936 t!319133))

(declare-fun b_and!294339 () Bool)

(declare-fun tp!1186093 () Bool)

(assert (=> b!3898008 (= tp!1186093 (and (=> t!319133 result!278124) b_and!294339))))

(declare-fun b_free!105527 () Bool)

(declare-fun b_next!106231 () Bool)

(assert (=> b!3898008 (= b_free!105527 (not b_next!106231))))

(declare-fun t!319135 () Bool)

(declare-fun tb!228949 () Bool)

(assert (=> (and b!3898008 (= (toChars!8725 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 lt!1357634)))))) t!319135) tb!228949))

(declare-fun result!278126 () Bool)

(assert (= result!278126 result!277996))

(assert (=> d!1154904 t!319135))

(declare-fun t!319137 () Bool)

(declare-fun tb!228951 () Bool)

(assert (=> (and b!3898008 (= (toChars!8725 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80))))) t!319137) tb!228951))

(declare-fun result!278128 () Bool)

(assert (= result!278128 result!278072))

(assert (=> b!3897811 t!319137))

(declare-fun tb!228953 () Bool)

(declare-fun t!319139 () Bool)

(assert (=> (and b!3898008 (= (toChars!8725 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369)))))) t!319139) tb!228953))

(declare-fun result!278130 () Bool)

(assert (= result!278130 result!278080))

(assert (=> b!3897888 t!319139))

(declare-fun t!319141 () Bool)

(declare-fun tb!228955 () Bool)

(assert (=> (and b!3898008 (= (toChars!8725 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72))))) t!319141) tb!228955))

(declare-fun result!278132 () Bool)

(assert (= result!278132 result!278088))

(assert (=> b!3897918 t!319141))

(declare-fun b_and!294341 () Bool)

(declare-fun tp!1186092 () Bool)

(assert (=> b!3898008 (= tp!1186092 (and (=> t!319135 result!278126) (=> t!319137 result!278128) (=> t!319139 result!278130) (=> t!319141 result!278132) b_and!294341))))

(declare-fun e!2410052 () Bool)

(assert (=> b!3898008 (= e!2410052 (and tp!1186093 tp!1186092))))

(declare-fun e!2410049 () Bool)

(declare-fun tp!1186094 () Bool)

(declare-fun b!3898007 () Bool)

(assert (=> b!3898007 (= e!2410049 (and tp!1186094 (inv!55506 (tag!7290 (h!46769 (t!319000 rules!2768)))) (inv!55510 (transformation!6430 (h!46769 (t!319000 rules!2768)))) e!2410052))))

(declare-fun b!3898006 () Bool)

(declare-fun e!2410050 () Bool)

(declare-fun tp!1186091 () Bool)

(assert (=> b!3898006 (= e!2410050 (and e!2410049 tp!1186091))))

(assert (=> b!3897423 (= tp!1185933 e!2410050)))

(assert (= b!3898007 b!3898008))

(assert (= b!3898006 b!3898007))

(assert (= (and b!3897423 ((_ is Cons!41349) (t!319000 rules!2768))) b!3898006))

(declare-fun m!4457129 () Bool)

(assert (=> b!3898007 m!4457129))

(declare-fun m!4457131 () Bool)

(assert (=> b!3898007 m!4457131))

(declare-fun b!3898009 () Bool)

(declare-fun e!2410053 () Bool)

(declare-fun tp!1186095 () Bool)

(assert (=> b!3898009 (= e!2410053 (and tp_is_empty!19641 tp!1186095))))

(assert (=> b!3897444 (= tp!1185923 e!2410053)))

(assert (= (and b!3897444 ((_ is Cons!41346) (originalCharacters!7030 (_1!23425 (v!39161 err!4369))))) b!3898009))

(declare-fun b!3898010 () Bool)

(declare-fun e!2410054 () Bool)

(declare-fun tp!1186096 () Bool)

(assert (=> b!3898010 (= e!2410054 (and tp_is_empty!19641 tp!1186096))))

(assert (=> b!3897433 (= tp!1185928 e!2410054)))

(assert (= (and b!3897433 ((_ is Cons!41346) (t!318997 suffixResult!91))) b!3898010))

(declare-fun b!3898011 () Bool)

(declare-fun e!2410055 () Bool)

(declare-fun tp!1186097 () Bool)

(assert (=> b!3898011 (= e!2410055 (and tp_is_empty!19641 tp!1186097))))

(assert (=> b!3897432 (= tp!1185942 e!2410055)))

(assert (= (and b!3897432 ((_ is Cons!41346) (originalCharacters!7030 (h!46768 prefixTokens!80)))) b!3898011))

(declare-fun b!3898012 () Bool)

(declare-fun e!2410056 () Bool)

(declare-fun tp!1186098 () Bool)

(assert (=> b!3898012 (= e!2410056 (and tp_is_empty!19641 tp!1186098))))

(assert (=> b!3897421 (= tp!1185931 e!2410056)))

(assert (= (and b!3897421 ((_ is Cons!41346) (t!318997 suffix!1176))) b!3898012))

(declare-fun b_lambda!113841 () Bool)

(assert (= b_lambda!113835 (or (and b!3897434 b_free!105491 (= (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))))) (and b!3897970 b_free!105523 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))))) (and b!3897440 b_free!105495) (and b!3897965 b_free!105519 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))))) (and b!3897452 b_free!105499 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))))) (and b!3898008 b_free!105527 (= (toChars!8725 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))))) (and b!3897428 b_free!105503 (= (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))))) b_lambda!113841)))

(declare-fun b_lambda!113843 () Bool)

(assert (= b_lambda!113839 (or (and b!3897434 b_free!105491 (= (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))))) (and b!3897970 b_free!105523 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))))) (and b!3897428 b_free!105503 (= (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))))) (and b!3898008 b_free!105527 (= (toChars!8725 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))))) (and b!3897452 b_free!105499) (and b!3897440 b_free!105495 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))))) (and b!3897965 b_free!105519 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))))) b_lambda!113843)))

(declare-fun b_lambda!113845 () Bool)

(assert (= b_lambda!113837 (or (and b!3897965 b_free!105519 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 suffixTokens!72))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))))) (and b!3897970 b_free!105523 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 (t!318999 prefixTokens!80))))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))))) (and b!3898008 b_free!105527 (= (toChars!8725 (transformation!6430 (h!46769 (t!319000 rules!2768)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))))) (and b!3897452 b_free!105499 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 suffixTokens!72)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))))) (and b!3897434 b_free!105491 (= (toChars!8725 (transformation!6430 (h!46769 rules!2768))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))))) (and b!3897428 b_free!105503) (and b!3897440 b_free!105495 (= (toChars!8725 (transformation!6430 (rule!9332 (h!46768 prefixTokens!80)))) (toChars!8725 (transformation!6430 (rule!9332 (_1!23425 (v!39161 err!4369))))))) b_lambda!113845)))

(check-sat (not b!3897964) (not d!1154896) (not b!3897838) (not b!3897886) b_and!294329 (not b_next!106223) (not b!3897990) (not b!3897966) (not b_lambda!113841) (not bm!283723) (not d!1154968) (not b!3897698) (not b_next!106203) (not b!3897837) (not b!3897861) b_and!294331 (not b!3897877) (not d!1154858) (not b!3897917) (not b!3897984) b_and!294327 (not b!3897555) (not b!3898011) (not b!3897997) (not b_next!106229) (not b!3897816) (not d!1154976) (not b!3897924) (not b_next!106197) (not b_next!106221) (not b!3897874) (not b!3897928) b_and!294335 (not b_lambda!113845) (not b_next!106195) (not d!1154954) b_and!294339 (not b!3897941) (not b!3897963) (not b!3897888) (not b!3897811) (not b!3897918) (not b!3897983) (not b_next!106227) (not d!1154972) (not b!3897784) (not b!3897722) (not b!3897817) (not b!3897880) (not b!3897549) (not b!3897921) (not b!3897843) (not b!3897782) b_and!294323 (not b!3897996) (not b!3897969) (not d!1154998) (not b!3897920) (not b!3897845) (not b!3897890) (not b!3897836) (not b!3897653) (not b_lambda!113821) (not b!3898012) (not b!3897846) (not b_next!106205) b_and!294291 (not b!3897840) (not b_lambda!113843) (not b!3897554) (not b!3897848) (not b!3897951) (not b!3897982) (not b!3897841) (not b!3897839) (not b_next!106193) b_and!294337 (not b_next!106199) (not b!3897919) (not b!3897962) (not b_next!106231) (not b!3897889) (not b!3897944) (not b!3897720) (not b_lambda!113827) (not b_next!106207) (not b!3897967) (not b!3897936) (not d!1154856) (not d!1154904) (not b!3897879) (not b!3897914) (not b!3897945) (not b!3897844) (not b!3897988) (not tb!228919) (not d!1154874) b_and!294325 (not d!1154988) b_and!294333 (not d!1154944) (not d!1154950) (not bm!283722) (not b!3898006) (not b!3897812) (not d!1154958) b_and!294287 (not d!1154912) (not b_next!106225) (not b!3897652) (not b!3897942) (not b!3897927) (not b!3897813) tp_is_empty!19641 (not d!1154962) b_and!294289 (not b!3897783) (not b!3897922) (not d!1154986) (not b!3897876) (not d!1154990) (not d!1154850) (not d!1154854) (not b!3897687) (not b!3897686) (not d!1154980) (not tb!228841) (not b!3898010) (not b!3897909) (not b!3897539) (not b!3897987) (not b!3897911) (not b!3897860) (not b!3897910) (not b!3897916) (not b_next!106201) (not b!3897913) (not b!3897550) (not b!3897937) (not b!3897992) (not d!1154982) (not b!3897883) b_and!294293 (not d!1154966) (not b!3897932) (not b!3897934) (not d!1154984) (not b!3897884) (not d!1154918) (not b!3897993) (not b!3897995) (not b!3897850) (not b!3897551) (not tb!228911) (not b!3897655) (not b!3897553) (not b!3897882) (not d!1154890) (not b!3897915) (not d!1154960) (not d!1154992) (not b!3897881) (not b!3898007) (not b!3897863) (not b!3897887) (not b!3897968) (not b!3897991) (not b!3897578) (not d!1154942) (not tb!228865) b_and!294341 (not tb!228903) (not b!3897986) (not b!3897931) (not b!3898009))
(check-sat b_and!294329 (not b_next!106223) b_and!294327 (not b_next!106229) b_and!294323 (not b_next!106207) b_and!294289 (not b_next!106201) b_and!294293 b_and!294341 (not b_next!106203) b_and!294331 (not b_next!106197) (not b_next!106221) b_and!294335 (not b_next!106195) b_and!294339 (not b_next!106227) (not b_next!106205) b_and!294291 (not b_next!106193) b_and!294337 (not b_next!106199) (not b_next!106231) b_and!294325 b_and!294333 b_and!294287 (not b_next!106225))
