; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!383142 () Bool)

(assert start!383142)

(declare-fun b!4062127 () Bool)

(declare-fun b_free!112993 () Bool)

(declare-fun b_next!113697 () Bool)

(assert (=> b!4062127 (= b_free!112993 (not b_next!113697))))

(declare-fun tp!1230265 () Bool)

(declare-fun b_and!312315 () Bool)

(assert (=> b!4062127 (= tp!1230265 b_and!312315)))

(declare-fun b_free!112995 () Bool)

(declare-fun b_next!113699 () Bool)

(assert (=> b!4062127 (= b_free!112995 (not b_next!113699))))

(declare-fun tp!1230272 () Bool)

(declare-fun b_and!312317 () Bool)

(assert (=> b!4062127 (= tp!1230272 b_and!312317)))

(declare-fun b!4062136 () Bool)

(declare-fun b_free!112997 () Bool)

(declare-fun b_next!113701 () Bool)

(assert (=> b!4062136 (= b_free!112997 (not b_next!113701))))

(declare-fun tp!1230268 () Bool)

(declare-fun b_and!312319 () Bool)

(assert (=> b!4062136 (= tp!1230268 b_and!312319)))

(declare-fun b_free!112999 () Bool)

(declare-fun b_next!113703 () Bool)

(assert (=> b!4062136 (= b_free!112999 (not b_next!113703))))

(declare-fun tp!1230273 () Bool)

(declare-fun b_and!312321 () Bool)

(assert (=> b!4062136 (= tp!1230273 b_and!312321)))

(declare-fun tp!1230267 () Bool)

(declare-fun b!4062101 () Bool)

(declare-fun e!2520710 () Bool)

(declare-datatypes ((C!23926 0))(
  ( (C!23927 (val!14057 Int)) )
))
(declare-datatypes ((List!43516 0))(
  ( (Nil!43392) (Cons!43392 (h!48812 C!23926) (t!336675 List!43516)) )
))
(declare-datatypes ((IArray!26357 0))(
  ( (IArray!26358 (innerList!13236 List!43516)) )
))
(declare-datatypes ((Conc!13176 0))(
  ( (Node!13176 (left!32653 Conc!13176) (right!32983 Conc!13176) (csize!26582 Int) (cheight!13387 Int)) (Leaf!20366 (xs!16482 IArray!26357) (csize!26583 Int)) (Empty!13176) )
))
(declare-datatypes ((BalanceConc!25946 0))(
  ( (BalanceConc!25947 (c!701556 Conc!13176)) )
))
(declare-datatypes ((List!43517 0))(
  ( (Nil!43393) (Cons!43393 (h!48813 (_ BitVec 16)) (t!336676 List!43517)) )
))
(declare-datatypes ((TokenValue!7195 0))(
  ( (FloatLiteralValue!14390 (text!50810 List!43517)) (TokenValueExt!7194 (__x!26607 Int)) (Broken!35975 (value!219112 List!43517)) (Object!7318) (End!7195) (Def!7195) (Underscore!7195) (Match!7195) (Else!7195) (Error!7195) (Case!7195) (If!7195) (Extends!7195) (Abstract!7195) (Class!7195) (Val!7195) (DelimiterValue!14390 (del!7255 List!43517)) (KeywordValue!7201 (value!219113 List!43517)) (CommentValue!14390 (value!219114 List!43517)) (WhitespaceValue!14390 (value!219115 List!43517)) (IndentationValue!7195 (value!219116 List!43517)) (String!49694) (Int32!7195) (Broken!35976 (value!219117 List!43517)) (Boolean!7196) (Unit!62827) (OperatorValue!7198 (op!7255 List!43517)) (IdentifierValue!14390 (value!219118 List!43517)) (IdentifierValue!14391 (value!219119 List!43517)) (WhitespaceValue!14391 (value!219120 List!43517)) (True!14390) (False!14390) (Broken!35977 (value!219121 List!43517)) (Broken!35978 (value!219122 List!43517)) (True!14391) (RightBrace!7195) (RightBracket!7195) (Colon!7195) (Null!7195) (Comma!7195) (LeftBracket!7195) (False!14391) (LeftBrace!7195) (ImaginaryLiteralValue!7195 (text!50811 List!43517)) (StringLiteralValue!21585 (value!219123 List!43517)) (EOFValue!7195 (value!219124 List!43517)) (IdentValue!7195 (value!219125 List!43517)) (DelimiterValue!14391 (value!219126 List!43517)) (DedentValue!7195 (value!219127 List!43517)) (NewLineValue!7195 (value!219128 List!43517)) (IntegerValue!21585 (value!219129 (_ BitVec 32)) (text!50812 List!43517)) (IntegerValue!21586 (value!219130 Int) (text!50813 List!43517)) (Times!7195) (Or!7195) (Equal!7195) (Minus!7195) (Broken!35979 (value!219131 List!43517)) (And!7195) (Div!7195) (LessEqual!7195) (Mod!7195) (Concat!19065) (Not!7195) (Plus!7195) (SpaceValue!7195 (value!219132 List!43517)) (IntegerValue!21587 (value!219133 Int) (text!50814 List!43517)) (StringLiteralValue!21586 (text!50815 List!43517)) (FloatLiteralValue!14391 (text!50816 List!43517)) (BytesLiteralValue!7195 (value!219134 List!43517)) (CommentValue!14391 (value!219135 List!43517)) (StringLiteralValue!21587 (value!219136 List!43517)) (ErrorTokenValue!7195 (msg!7256 List!43517)) )
))
(declare-datatypes ((String!49695 0))(
  ( (String!49696 (value!219137 String)) )
))
(declare-datatypes ((Regex!11870 0))(
  ( (ElementMatch!11870 (c!701557 C!23926)) (Concat!19066 (regOne!24252 Regex!11870) (regTwo!24252 Regex!11870)) (EmptyExpr!11870) (Star!11870 (reg!12199 Regex!11870)) (EmptyLang!11870) (Union!11870 (regOne!24253 Regex!11870) (regTwo!24253 Regex!11870)) )
))
(declare-datatypes ((TokenValueInjection!13818 0))(
  ( (TokenValueInjection!13819 (toValue!9525 Int) (toChars!9384 Int)) )
))
(declare-datatypes ((Rule!13730 0))(
  ( (Rule!13731 (regex!6965 Regex!11870) (tag!7825 String!49695) (isSeparator!6965 Bool) (transformation!6965 TokenValueInjection!13818)) )
))
(declare-datatypes ((List!43518 0))(
  ( (Nil!43394) (Cons!43394 (h!48814 Rule!13730) (t!336677 List!43518)) )
))
(declare-fun rules!2999 () List!43518)

(declare-fun e!2520728 () Bool)

(declare-fun inv!58010 (String!49695) Bool)

(declare-fun inv!58013 (TokenValueInjection!13818) Bool)

(assert (=> b!4062101 (= e!2520710 (and tp!1230267 (inv!58010 (tag!7825 (h!48814 rules!2999))) (inv!58013 (transformation!6965 (h!48814 rules!2999))) e!2520728))))

(declare-fun b!4062102 () Bool)

(declare-fun res!1657047 () Bool)

(declare-fun e!2520705 () Bool)

(assert (=> b!4062102 (=> (not res!1657047) (not e!2520705))))

(declare-datatypes ((Token!13068 0))(
  ( (Token!13069 (value!219138 TokenValue!7195) (rule!10059 Rule!13730) (size!32443 Int) (originalCharacters!7565 List!43516)) )
))
(declare-fun token!484 () Token!13068)

(declare-fun lt!1451479 () TokenValue!7195)

(assert (=> b!4062102 (= res!1657047 (= (value!219138 token!484) lt!1451479))))

(declare-fun b!4062103 () Bool)

(declare-fun e!2520729 () Bool)

(declare-fun e!2520706 () Bool)

(assert (=> b!4062103 (= e!2520729 e!2520706)))

(declare-fun res!1657043 () Bool)

(assert (=> b!4062103 (=> (not res!1657043) (not e!2520706))))

(declare-fun lt!1451490 () List!43516)

(declare-datatypes ((LexerInterface!6554 0))(
  ( (LexerInterfaceExt!6551 (__x!26608 Int)) (Lexer!6552) )
))
(declare-fun thiss!21717 () LexerInterface!6554)

(declare-datatypes ((tuple2!42452 0))(
  ( (tuple2!42453 (_1!24360 Token!13068) (_2!24360 List!43516)) )
))
(declare-datatypes ((Option!9379 0))(
  ( (None!9378) (Some!9378 (v!39800 tuple2!42452)) )
))
(declare-fun lt!1451437 () Option!9379)

(declare-fun maxPrefix!3852 (LexerInterface!6554 List!43518 List!43516) Option!9379)

(assert (=> b!4062103 (= res!1657043 (= (maxPrefix!3852 thiss!21717 rules!2999 lt!1451490) lt!1451437))))

(declare-fun lt!1451480 () tuple2!42452)

(assert (=> b!4062103 (= lt!1451437 (Some!9378 lt!1451480))))

(declare-fun suffixResult!105 () List!43516)

(assert (=> b!4062103 (= lt!1451480 (tuple2!42453 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!43516)

(declare-fun suffix!1299 () List!43516)

(declare-fun ++!11367 (List!43516 List!43516) List!43516)

(assert (=> b!4062103 (= lt!1451490 (++!11367 prefix!494 suffix!1299))))

(declare-fun b!4062104 () Bool)

(declare-fun e!2520719 () Bool)

(declare-fun e!2520735 () Bool)

(assert (=> b!4062104 (= e!2520719 e!2520735)))

(declare-fun res!1657042 () Bool)

(assert (=> b!4062104 (=> res!1657042 e!2520735)))

(declare-fun lt!1451483 () List!43516)

(declare-fun isPrefix!4052 (List!43516 List!43516) Bool)

(assert (=> b!4062104 (= res!1657042 (not (isPrefix!4052 lt!1451483 lt!1451490)))))

(assert (=> b!4062104 (isPrefix!4052 prefix!494 lt!1451490)))

(declare-datatypes ((Unit!62828 0))(
  ( (Unit!62829) )
))
(declare-fun lt!1451443 () Unit!62828)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2887 (List!43516 List!43516) Unit!62828)

(assert (=> b!4062104 (= lt!1451443 (lemmaConcatTwoListThenFirstIsPrefix!2887 prefix!494 suffix!1299))))

(declare-fun lt!1451474 () List!43516)

(assert (=> b!4062104 (isPrefix!4052 lt!1451483 lt!1451474)))

(declare-fun lt!1451478 () Unit!62828)

(assert (=> b!4062104 (= lt!1451478 (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451483 suffixResult!105))))

(declare-fun b!4062105 () Bool)

(assert (=> b!4062105 (= e!2520706 (not e!2520719))))

(declare-fun res!1657049 () Bool)

(assert (=> b!4062105 (=> res!1657049 e!2520719)))

(assert (=> b!4062105 (= res!1657049 (not (= lt!1451474 lt!1451490)))))

(assert (=> b!4062105 (= lt!1451474 (++!11367 lt!1451483 suffixResult!105))))

(declare-fun lt!1451444 () Unit!62828)

(declare-fun lemmaInv!1174 (TokenValueInjection!13818) Unit!62828)

(assert (=> b!4062105 (= lt!1451444 (lemmaInv!1174 (transformation!6965 (rule!10059 token!484))))))

(declare-fun ruleValid!2895 (LexerInterface!6554 Rule!13730) Bool)

(assert (=> b!4062105 (ruleValid!2895 thiss!21717 (rule!10059 token!484))))

(declare-fun lt!1451492 () Unit!62828)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1965 (LexerInterface!6554 Rule!13730 List!43518) Unit!62828)

(assert (=> b!4062105 (= lt!1451492 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1965 thiss!21717 (rule!10059 token!484) rules!2999))))

(declare-fun b!4062106 () Bool)

(declare-fun e!2520724 () Bool)

(declare-fun e!2520712 () Bool)

(assert (=> b!4062106 (= e!2520724 e!2520712)))

(declare-fun res!1657041 () Bool)

(assert (=> b!4062106 (=> res!1657041 e!2520712)))

(declare-fun lt!1451475 () Int)

(declare-fun lt!1451471 () Int)

(assert (=> b!4062106 (= res!1657041 (<= lt!1451475 lt!1451471))))

(declare-fun lt!1451463 () Unit!62828)

(declare-fun e!2520704 () Unit!62828)

(assert (=> b!4062106 (= lt!1451463 e!2520704)))

(declare-fun c!701554 () Bool)

(assert (=> b!4062106 (= c!701554 (< lt!1451475 lt!1451471))))

(declare-fun getIndex!577 (List!43518 Rule!13730) Int)

(assert (=> b!4062106 (= lt!1451471 (getIndex!577 rules!2999 (rule!10059 token!484)))))

(declare-fun lt!1451450 () Option!9379)

(assert (=> b!4062106 (= lt!1451475 (getIndex!577 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun newSuffixResult!27 () List!43516)

(assert (=> b!4062106 (= (_2!24360 (v!39800 lt!1451450)) newSuffixResult!27)))

(declare-fun lt!1451473 () List!43516)

(declare-fun lt!1451496 () Unit!62828)

(declare-fun lt!1451489 () List!43516)

(declare-fun lemmaSamePrefixThenSameSuffix!2213 (List!43516 List!43516 List!43516 List!43516 List!43516) Unit!62828)

(assert (=> b!4062106 (= lt!1451496 (lemmaSamePrefixThenSameSuffix!2213 lt!1451473 (_2!24360 (v!39800 lt!1451450)) lt!1451483 newSuffixResult!27 lt!1451489))))

(assert (=> b!4062106 (= lt!1451473 lt!1451483)))

(declare-fun lt!1451460 () Unit!62828)

(declare-fun lemmaIsPrefixSameLengthThenSameList!942 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> b!4062106 (= lt!1451460 (lemmaIsPrefixSameLengthThenSameList!942 lt!1451473 lt!1451483 lt!1451489))))

(declare-fun b!4062107 () Bool)

(declare-fun e!2520727 () Bool)

(declare-fun e!2520725 () Bool)

(assert (=> b!4062107 (= e!2520727 e!2520725)))

(declare-fun res!1657038 () Bool)

(assert (=> b!4062107 (=> res!1657038 e!2520725)))

(declare-fun matchR!5823 (Regex!11870 List!43516) Bool)

(assert (=> b!4062107 (= res!1657038 (not (matchR!5823 (regex!6965 (rule!10059 token!484)) lt!1451483)))))

(assert (=> b!4062107 (isPrefix!4052 lt!1451483 lt!1451489)))

(declare-fun newSuffix!27 () List!43516)

(declare-fun lt!1451436 () Unit!62828)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!845 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> b!4062107 (= lt!1451436 (lemmaPrefixStaysPrefixWhenAddingToSuffix!845 lt!1451483 prefix!494 newSuffix!27))))

(declare-fun lt!1451477 () Unit!62828)

(assert (=> b!4062107 (= lt!1451477 (lemmaPrefixStaysPrefixWhenAddingToSuffix!845 lt!1451483 prefix!494 suffix!1299))))

(declare-fun b!4062108 () Bool)

(declare-fun contains!8633 (List!43518 Rule!13730) Bool)

(assert (=> b!4062108 (= e!2520712 (contains!8633 rules!2999 (rule!10059 token!484)))))

(declare-fun res!1657039 () Bool)

(declare-fun e!2520714 () Bool)

(assert (=> start!383142 (=> (not res!1657039) (not e!2520714))))

(assert (=> start!383142 (= res!1657039 (is-Lexer!6552 thiss!21717))))

(assert (=> start!383142 e!2520714))

(declare-fun e!2520734 () Bool)

(assert (=> start!383142 e!2520734))

(declare-fun e!2520721 () Bool)

(declare-fun inv!58014 (Token!13068) Bool)

(assert (=> start!383142 (and (inv!58014 token!484) e!2520721)))

(declare-fun e!2520717 () Bool)

(assert (=> start!383142 e!2520717))

(declare-fun e!2520703 () Bool)

(assert (=> start!383142 e!2520703))

(declare-fun e!2520737 () Bool)

(assert (=> start!383142 e!2520737))

(assert (=> start!383142 true))

(declare-fun e!2520715 () Bool)

(assert (=> start!383142 e!2520715))

(declare-fun e!2520740 () Bool)

(assert (=> start!383142 e!2520740))

(declare-fun b!4062109 () Bool)

(declare-fun e!2520716 () Bool)

(assert (=> b!4062109 (= e!2520716 false)))

(declare-fun b!4062110 () Bool)

(declare-fun tp_is_empty!20711 () Bool)

(declare-fun tp!1230277 () Bool)

(assert (=> b!4062110 (= e!2520734 (and tp_is_empty!20711 tp!1230277))))

(declare-fun b!4062111 () Bool)

(declare-fun res!1657062 () Bool)

(assert (=> b!4062111 (=> (not res!1657062) (not e!2520714))))

(declare-fun isEmpty!25894 (List!43518) Bool)

(assert (=> b!4062111 (= res!1657062 (not (isEmpty!25894 rules!2999)))))

(declare-fun b!4062112 () Bool)

(declare-fun tp!1230270 () Bool)

(assert (=> b!4062112 (= e!2520737 (and tp_is_empty!20711 tp!1230270))))

(declare-fun b!4062113 () Bool)

(declare-fun tp!1230275 () Bool)

(assert (=> b!4062113 (= e!2520703 (and tp_is_empty!20711 tp!1230275))))

(declare-fun b!4062114 () Bool)

(declare-fun e!2520708 () Bool)

(declare-fun e!2520707 () Bool)

(assert (=> b!4062114 (= e!2520708 e!2520707)))

(declare-fun res!1657034 () Bool)

(assert (=> b!4062114 (=> res!1657034 e!2520707)))

(declare-fun lt!1451482 () Option!9379)

(assert (=> b!4062114 (= res!1657034 (not (= lt!1451482 (Some!9378 (v!39800 lt!1451450)))))))

(assert (=> b!4062114 (isPrefix!4052 lt!1451473 (++!11367 lt!1451473 newSuffixResult!27))))

(declare-fun lt!1451457 () Unit!62828)

(assert (=> b!4062114 (= lt!1451457 (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451473 newSuffixResult!27))))

(declare-fun lt!1451488 () List!43516)

(assert (=> b!4062114 (isPrefix!4052 lt!1451473 lt!1451488)))

(assert (=> b!4062114 (= lt!1451488 (++!11367 lt!1451473 (_2!24360 (v!39800 lt!1451450))))))

(declare-fun lt!1451454 () Unit!62828)

(assert (=> b!4062114 (= lt!1451454 (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451473 (_2!24360 (v!39800 lt!1451450))))))

(declare-fun lt!1451476 () TokenValue!7195)

(declare-fun lt!1451468 () Int)

(assert (=> b!4062114 (= lt!1451482 (Some!9378 (tuple2!42453 (Token!13069 lt!1451476 (rule!10059 (_1!24360 (v!39800 lt!1451450))) lt!1451468 lt!1451473) (_2!24360 (v!39800 lt!1451450)))))))

(declare-fun maxPrefixOneRule!2864 (LexerInterface!6554 Rule!13730 List!43516) Option!9379)

(assert (=> b!4062114 (= lt!1451482 (maxPrefixOneRule!2864 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))) lt!1451489))))

(declare-fun size!32444 (List!43516) Int)

(assert (=> b!4062114 (= lt!1451468 (size!32444 lt!1451473))))

(declare-fun apply!10154 (TokenValueInjection!13818 BalanceConc!25946) TokenValue!7195)

(declare-fun seqFromList!5182 (List!43516) BalanceConc!25946)

(assert (=> b!4062114 (= lt!1451476 (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (seqFromList!5182 lt!1451473)))))

(declare-fun lt!1451466 () Unit!62828)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1670 (LexerInterface!6554 List!43518 List!43516 List!43516 List!43516 Rule!13730) Unit!62828)

(assert (=> b!4062114 (= lt!1451466 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1670 thiss!21717 rules!2999 lt!1451473 lt!1451489 (_2!24360 (v!39800 lt!1451450)) (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun list!16175 (BalanceConc!25946) List!43516)

(declare-fun charsOf!4781 (Token!13068) BalanceConc!25946)

(assert (=> b!4062114 (= lt!1451473 (list!16175 (charsOf!4781 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun lt!1451434 () Unit!62828)

(assert (=> b!4062114 (= lt!1451434 (lemmaInv!1174 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(assert (=> b!4062114 (ruleValid!2895 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))

(declare-fun lt!1451452 () Unit!62828)

(assert (=> b!4062114 (= lt!1451452 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1965 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))) rules!2999))))

(declare-fun lt!1451485 () Unit!62828)

(declare-fun lemmaCharactersSize!1484 (Token!13068) Unit!62828)

(assert (=> b!4062114 (= lt!1451485 (lemmaCharactersSize!1484 token!484))))

(declare-fun lt!1451487 () Unit!62828)

(assert (=> b!4062114 (= lt!1451487 (lemmaCharactersSize!1484 (_1!24360 (v!39800 lt!1451450))))))

(declare-fun b!4062115 () Bool)

(declare-fun res!1657053 () Bool)

(assert (=> b!4062115 (=> (not res!1657053) (not e!2520714))))

(assert (=> b!4062115 (= res!1657053 (>= (size!32444 suffix!1299) (size!32444 newSuffix!27)))))

(declare-fun b!4062116 () Bool)

(declare-fun e!2520741 () Bool)

(declare-fun tp!1230274 () Bool)

(declare-fun inv!21 (TokenValue!7195) Bool)

(assert (=> b!4062116 (= e!2520721 (and (inv!21 (value!219138 token!484)) e!2520741 tp!1230274))))

(declare-fun b!4062117 () Bool)

(declare-fun tp!1230271 () Bool)

(assert (=> b!4062117 (= e!2520740 (and tp_is_empty!20711 tp!1230271))))

(declare-fun b!4062118 () Bool)

(declare-fun e!2520733 () Unit!62828)

(declare-fun Unit!62830 () Unit!62828)

(assert (=> b!4062118 (= e!2520733 Unit!62830)))

(declare-fun lt!1451435 () Unit!62828)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!491 (LexerInterface!6554 List!43518 Rule!13730 List!43516 List!43516 List!43516 Rule!13730) Unit!62828)

(assert (=> b!4062118 (= lt!1451435 (lemmaMaxPrefixOutputsMaxPrefix!491 thiss!21717 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450))) lt!1451473 lt!1451489 lt!1451483 (rule!10059 token!484)))))

(assert (=> b!4062118 false))

(declare-fun b!4062119 () Bool)

(declare-fun tp!1230269 () Bool)

(assert (=> b!4062119 (= e!2520717 (and tp_is_empty!20711 tp!1230269))))

(declare-fun b!4062120 () Bool)

(declare-fun e!2520723 () Bool)

(assert (=> b!4062120 (= e!2520735 e!2520723)))

(declare-fun res!1657033 () Bool)

(assert (=> b!4062120 (=> res!1657033 e!2520723)))

(declare-fun lt!1451451 () List!43516)

(assert (=> b!4062120 (= res!1657033 (not (= lt!1451451 prefix!494)))))

(declare-fun lt!1451433 () List!43516)

(assert (=> b!4062120 (= lt!1451451 (++!11367 lt!1451483 lt!1451433))))

(declare-fun getSuffix!2469 (List!43516 List!43516) List!43516)

(assert (=> b!4062120 (= lt!1451433 (getSuffix!2469 prefix!494 lt!1451483))))

(assert (=> b!4062120 (isPrefix!4052 lt!1451483 prefix!494)))

(declare-fun lt!1451456 () Unit!62828)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!616 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> b!4062120 (= lt!1451456 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!616 prefix!494 lt!1451483 lt!1451490))))

(declare-fun b!4062121 () Bool)

(declare-fun res!1657060 () Bool)

(declare-fun e!2520731 () Bool)

(assert (=> b!4062121 (=> res!1657060 e!2520731)))

(assert (=> b!4062121 (= res!1657060 (not (= lt!1451488 lt!1451489)))))

(declare-fun b!4062122 () Bool)

(declare-fun e!2520718 () Bool)

(assert (=> b!4062122 (= e!2520718 e!2520727)))

(declare-fun res!1657059 () Bool)

(assert (=> b!4062122 (=> res!1657059 e!2520727)))

(declare-fun lt!1451442 () Option!9379)

(assert (=> b!4062122 (= res!1657059 (not (= lt!1451442 lt!1451437)))))

(declare-fun lt!1451445 () Token!13068)

(assert (=> b!4062122 (= lt!1451442 (Some!9378 (tuple2!42453 lt!1451445 suffixResult!105)))))

(assert (=> b!4062122 (= lt!1451442 (maxPrefixOneRule!2864 thiss!21717 (rule!10059 token!484) lt!1451490))))

(declare-fun lt!1451439 () Int)

(assert (=> b!4062122 (= lt!1451445 (Token!13069 lt!1451479 (rule!10059 token!484) lt!1451439 lt!1451483))))

(assert (=> b!4062122 (= lt!1451479 (apply!10154 (transformation!6965 (rule!10059 token!484)) (seqFromList!5182 lt!1451483)))))

(declare-fun lt!1451461 () Unit!62828)

(assert (=> b!4062122 (= lt!1451461 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1670 thiss!21717 rules!2999 lt!1451483 lt!1451490 suffixResult!105 (rule!10059 token!484)))))

(declare-fun lt!1451484 () List!43516)

(assert (=> b!4062122 (= lt!1451484 suffixResult!105)))

(declare-fun lt!1451440 () Unit!62828)

(assert (=> b!4062122 (= lt!1451440 (lemmaSamePrefixThenSameSuffix!2213 lt!1451483 lt!1451484 lt!1451483 suffixResult!105 lt!1451490))))

(declare-fun lt!1451453 () List!43516)

(assert (=> b!4062122 (isPrefix!4052 lt!1451483 lt!1451453)))

(declare-fun lt!1451449 () Unit!62828)

(assert (=> b!4062122 (= lt!1451449 (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451483 lt!1451484))))

(declare-fun b!4062123 () Bool)

(declare-fun e!2520739 () Bool)

(assert (=> b!4062123 (= e!2520739 e!2520729)))

(declare-fun res!1657052 () Bool)

(assert (=> b!4062123 (=> (not res!1657052) (not e!2520729))))

(declare-fun lt!1451472 () List!43516)

(assert (=> b!4062123 (= res!1657052 (= lt!1451472 lt!1451489))))

(assert (=> b!4062123 (= lt!1451489 (++!11367 prefix!494 newSuffix!27))))

(assert (=> b!4062123 (= lt!1451472 (++!11367 lt!1451483 newSuffixResult!27))))

(declare-fun b!4062124 () Bool)

(declare-fun res!1657032 () Bool)

(assert (=> b!4062124 (=> res!1657032 e!2520724)))

(assert (=> b!4062124 (= res!1657032 (not (isPrefix!4052 lt!1451473 lt!1451489)))))

(declare-fun b!4062125 () Bool)

(declare-fun e!2520713 () Bool)

(assert (=> b!4062125 (= e!2520713 e!2520708)))

(declare-fun res!1657035 () Bool)

(assert (=> b!4062125 (=> res!1657035 e!2520708)))

(assert (=> b!4062125 (= res!1657035 (not (is-Some!9378 lt!1451450)))))

(assert (=> b!4062125 (= lt!1451450 (maxPrefix!3852 thiss!21717 rules!2999 lt!1451489))))

(declare-fun lt!1451438 () List!43516)

(assert (=> b!4062125 (and (= suffixResult!105 lt!1451438) (= lt!1451480 (tuple2!42453 lt!1451445 lt!1451438)))))

(declare-fun lt!1451462 () Unit!62828)

(assert (=> b!4062125 (= lt!1451462 (lemmaSamePrefixThenSameSuffix!2213 lt!1451483 suffixResult!105 lt!1451483 lt!1451438 lt!1451490))))

(declare-fun lt!1451495 () List!43516)

(assert (=> b!4062125 (isPrefix!4052 lt!1451483 lt!1451495)))

(declare-fun lt!1451464 () Unit!62828)

(assert (=> b!4062125 (= lt!1451464 (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451483 lt!1451438))))

(declare-fun b!4062126 () Bool)

(declare-fun e!2520720 () Unit!62828)

(declare-fun Unit!62831 () Unit!62828)

(assert (=> b!4062126 (= e!2520720 Unit!62831)))

(declare-fun e!2520730 () Bool)

(assert (=> b!4062127 (= e!2520730 (and tp!1230265 tp!1230272))))

(declare-fun b!4062128 () Bool)

(declare-fun res!1657036 () Bool)

(assert (=> b!4062128 (=> res!1657036 e!2520712)))

(assert (=> b!4062128 (= res!1657036 (not (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451473)))))

(declare-fun b!4062129 () Bool)

(assert (=> b!4062129 (= e!2520725 e!2520713)))

(declare-fun res!1657050 () Bool)

(assert (=> b!4062129 (=> res!1657050 e!2520713)))

(assert (=> b!4062129 (= res!1657050 (not (= lt!1451495 lt!1451490)))))

(assert (=> b!4062129 (= lt!1451495 (++!11367 lt!1451483 lt!1451438))))

(assert (=> b!4062129 (= lt!1451438 (getSuffix!2469 lt!1451490 lt!1451483))))

(assert (=> b!4062129 e!2520705))

(declare-fun res!1657054 () Bool)

(assert (=> b!4062129 (=> (not res!1657054) (not e!2520705))))

(assert (=> b!4062129 (= res!1657054 (isPrefix!4052 lt!1451490 lt!1451490))))

(declare-fun lt!1451467 () Unit!62828)

(declare-fun lemmaIsPrefixRefl!2619 (List!43516 List!43516) Unit!62828)

(assert (=> b!4062129 (= lt!1451467 (lemmaIsPrefixRefl!2619 lt!1451490 lt!1451490))))

(declare-fun b!4062130 () Bool)

(declare-fun res!1657040 () Bool)

(assert (=> b!4062130 (=> (not res!1657040) (not e!2520714))))

(declare-fun rulesInvariant!5897 (LexerInterface!6554 List!43518) Bool)

(assert (=> b!4062130 (= res!1657040 (rulesInvariant!5897 thiss!21717 rules!2999))))

(declare-fun b!4062131 () Bool)

(declare-fun res!1657044 () Bool)

(assert (=> b!4062131 (=> res!1657044 e!2520712)))

(assert (=> b!4062131 (= res!1657044 (not (contains!8633 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun b!4062132 () Bool)

(declare-fun Unit!62832 () Unit!62828)

(assert (=> b!4062132 (= e!2520704 Unit!62832)))

(declare-fun b!4062133 () Bool)

(declare-fun e!2520711 () Bool)

(assert (=> b!4062133 (= e!2520711 false)))

(declare-fun b!4062134 () Bool)

(declare-fun Unit!62833 () Unit!62828)

(assert (=> b!4062134 (= e!2520733 Unit!62833)))

(declare-fun b!4062135 () Bool)

(declare-fun e!2520709 () Bool)

(assert (=> b!4062135 (= e!2520731 e!2520709)))

(declare-fun res!1657063 () Bool)

(assert (=> b!4062135 (=> res!1657063 e!2520709)))

(declare-fun lt!1451493 () List!43516)

(assert (=> b!4062135 (= res!1657063 (not (= lt!1451493 lt!1451489)))))

(declare-fun lt!1451469 () List!43516)

(assert (=> b!4062135 (= lt!1451493 (++!11367 lt!1451473 lt!1451469))))

(assert (=> b!4062135 (= lt!1451469 (getSuffix!2469 lt!1451489 lt!1451473))))

(assert (=> b!4062136 (= e!2520728 (and tp!1230268 tp!1230273))))

(declare-fun b!4062137 () Bool)

(declare-fun Unit!62834 () Unit!62828)

(assert (=> b!4062137 (= e!2520704 Unit!62834)))

(declare-fun lt!1451486 () Unit!62828)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!293 (LexerInterface!6554 List!43518 Rule!13730 List!43516 List!43516 Rule!13730) Unit!62828)

(assert (=> b!4062137 (= lt!1451486 (lemmaMaxPrefNoSmallerRuleMatches!293 thiss!21717 rules!2999 (rule!10059 token!484) lt!1451483 lt!1451490 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun res!1657055 () Bool)

(assert (=> b!4062137 (= res!1657055 (not (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451483)))))

(assert (=> b!4062137 (=> (not res!1657055) (not e!2520716))))

(assert (=> b!4062137 e!2520716))

(declare-fun b!4062138 () Bool)

(declare-fun tp!1230266 () Bool)

(assert (=> b!4062138 (= e!2520741 (and tp!1230266 (inv!58010 (tag!7825 (rule!10059 token!484))) (inv!58013 (transformation!6965 (rule!10059 token!484))) e!2520730))))

(declare-fun b!4062139 () Bool)

(assert (=> b!4062139 (= e!2520723 e!2520718)))

(declare-fun res!1657048 () Bool)

(assert (=> b!4062139 (=> res!1657048 e!2520718)))

(declare-fun lt!1451446 () List!43516)

(assert (=> b!4062139 (= res!1657048 (or (not (= lt!1451490 lt!1451446)) (not (= lt!1451490 lt!1451453))))))

(assert (=> b!4062139 (= lt!1451446 lt!1451453)))

(assert (=> b!4062139 (= lt!1451453 (++!11367 lt!1451483 lt!1451484))))

(assert (=> b!4062139 (= lt!1451446 (++!11367 lt!1451451 suffix!1299))))

(assert (=> b!4062139 (= lt!1451484 (++!11367 lt!1451433 suffix!1299))))

(declare-fun lt!1451458 () Unit!62828)

(declare-fun lemmaConcatAssociativity!2669 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> b!4062139 (= lt!1451458 (lemmaConcatAssociativity!2669 lt!1451483 lt!1451433 suffix!1299))))

(declare-fun b!4062140 () Bool)

(declare-fun Unit!62835 () Unit!62828)

(assert (=> b!4062140 (= e!2520720 Unit!62835)))

(declare-fun lt!1451455 () Unit!62828)

(assert (=> b!4062140 (= lt!1451455 (lemmaMaxPrefixOutputsMaxPrefix!491 thiss!21717 rules!2999 (rule!10059 token!484) lt!1451483 lt!1451490 lt!1451473 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun res!1657058 () Bool)

(assert (=> b!4062140 (= res!1657058 (not (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451473)))))

(assert (=> b!4062140 (=> (not res!1657058) (not e!2520711))))

(assert (=> b!4062140 e!2520711))

(declare-fun b!4062141 () Bool)

(declare-fun tp!1230276 () Bool)

(assert (=> b!4062141 (= e!2520715 (and e!2520710 tp!1230276))))

(declare-fun b!4062142 () Bool)

(declare-fun e!2520722 () Bool)

(assert (=> b!4062142 (= e!2520707 e!2520722)))

(declare-fun res!1657056 () Bool)

(assert (=> b!4062142 (=> res!1657056 e!2520722)))

(declare-fun lt!1451459 () List!43516)

(assert (=> b!4062142 (= res!1657056 (not (= lt!1451459 suffix!1299)))))

(declare-fun lt!1451432 () List!43516)

(assert (=> b!4062142 (= lt!1451459 (++!11367 newSuffix!27 lt!1451432))))

(assert (=> b!4062142 (= lt!1451432 (getSuffix!2469 suffix!1299 newSuffix!27))))

(declare-fun b!4062143 () Bool)

(assert (=> b!4062143 (= e!2520714 e!2520739)))

(declare-fun res!1657061 () Bool)

(assert (=> b!4062143 (=> (not res!1657061) (not e!2520739))))

(declare-fun lt!1451481 () Int)

(assert (=> b!4062143 (= res!1657061 (>= lt!1451481 lt!1451439))))

(assert (=> b!4062143 (= lt!1451439 (size!32444 lt!1451483))))

(assert (=> b!4062143 (= lt!1451481 (size!32444 prefix!494))))

(assert (=> b!4062143 (= lt!1451483 (list!16175 (charsOf!4781 token!484)))))

(declare-fun b!4062144 () Bool)

(declare-fun e!2520726 () Bool)

(assert (=> b!4062144 (= e!2520726 e!2520731)))

(declare-fun res!1657037 () Bool)

(assert (=> b!4062144 (=> res!1657037 e!2520731)))

(assert (=> b!4062144 (= res!1657037 (not (isPrefix!4052 lt!1451473 lt!1451490)))))

(declare-fun lt!1451470 () List!43516)

(assert (=> b!4062144 (isPrefix!4052 lt!1451473 lt!1451470)))

(declare-fun lt!1451465 () Unit!62828)

(assert (=> b!4062144 (= lt!1451465 (lemmaPrefixStaysPrefixWhenAddingToSuffix!845 lt!1451473 lt!1451489 lt!1451432))))

(declare-fun b!4062145 () Bool)

(declare-fun res!1657045 () Bool)

(assert (=> b!4062145 (=> (not res!1657045) (not e!2520714))))

(assert (=> b!4062145 (= res!1657045 (isPrefix!4052 newSuffix!27 suffix!1299))))

(declare-fun b!4062146 () Bool)

(assert (=> b!4062146 (= e!2520709 e!2520724)))

(declare-fun res!1657051 () Bool)

(assert (=> b!4062146 (=> res!1657051 e!2520724)))

(assert (=> b!4062146 (= res!1657051 (not (= lt!1451439 lt!1451468)))))

(declare-fun lt!1451448 () Unit!62828)

(assert (=> b!4062146 (= lt!1451448 e!2520733)))

(declare-fun c!701555 () Bool)

(assert (=> b!4062146 (= c!701555 (< lt!1451468 lt!1451439))))

(declare-fun lt!1451494 () Unit!62828)

(assert (=> b!4062146 (= lt!1451494 e!2520720)))

(declare-fun c!701553 () Bool)

(assert (=> b!4062146 (= c!701553 (> lt!1451468 lt!1451439))))

(assert (=> b!4062146 (= (_2!24360 (v!39800 lt!1451450)) lt!1451469)))

(declare-fun lt!1451491 () Unit!62828)

(assert (=> b!4062146 (= lt!1451491 (lemmaSamePrefixThenSameSuffix!2213 lt!1451473 (_2!24360 (v!39800 lt!1451450)) lt!1451473 lt!1451469 lt!1451489))))

(assert (=> b!4062146 (isPrefix!4052 lt!1451473 lt!1451493)))

(declare-fun lt!1451447 () Unit!62828)

(assert (=> b!4062146 (= lt!1451447 (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451473 lt!1451469))))

(declare-fun b!4062147 () Bool)

(assert (=> b!4062147 (= e!2520705 (and (= (size!32443 token!484) lt!1451439) (= (originalCharacters!7565 token!484) lt!1451483)))))

(declare-fun b!4062148 () Bool)

(assert (=> b!4062148 (= e!2520722 e!2520726)))

(declare-fun res!1657046 () Bool)

(assert (=> b!4062148 (=> res!1657046 e!2520726)))

(assert (=> b!4062148 (= res!1657046 (not (= lt!1451470 lt!1451490)))))

(assert (=> b!4062148 (= lt!1451470 (++!11367 prefix!494 lt!1451459))))

(assert (=> b!4062148 (= lt!1451470 (++!11367 lt!1451489 lt!1451432))))

(declare-fun lt!1451441 () Unit!62828)

(assert (=> b!4062148 (= lt!1451441 (lemmaConcatAssociativity!2669 prefix!494 newSuffix!27 lt!1451432))))

(declare-fun b!4062149 () Bool)

(declare-fun res!1657057 () Bool)

(assert (=> b!4062149 (=> (not res!1657057) (not e!2520705))))

(assert (=> b!4062149 (= res!1657057 (= (size!32443 token!484) (size!32444 (originalCharacters!7565 token!484))))))

(assert (= (and start!383142 res!1657039) b!4062111))

(assert (= (and b!4062111 res!1657062) b!4062130))

(assert (= (and b!4062130 res!1657040) b!4062115))

(assert (= (and b!4062115 res!1657053) b!4062145))

(assert (= (and b!4062145 res!1657045) b!4062143))

(assert (= (and b!4062143 res!1657061) b!4062123))

(assert (= (and b!4062123 res!1657052) b!4062103))

(assert (= (and b!4062103 res!1657043) b!4062105))

(assert (= (and b!4062105 (not res!1657049)) b!4062104))

(assert (= (and b!4062104 (not res!1657042)) b!4062120))

(assert (= (and b!4062120 (not res!1657033)) b!4062139))

(assert (= (and b!4062139 (not res!1657048)) b!4062122))

(assert (= (and b!4062122 (not res!1657059)) b!4062107))

(assert (= (and b!4062107 (not res!1657038)) b!4062129))

(assert (= (and b!4062129 res!1657054) b!4062102))

(assert (= (and b!4062102 res!1657047) b!4062149))

(assert (= (and b!4062149 res!1657057) b!4062147))

(assert (= (and b!4062129 (not res!1657050)) b!4062125))

(assert (= (and b!4062125 (not res!1657035)) b!4062114))

(assert (= (and b!4062114 (not res!1657034)) b!4062142))

(assert (= (and b!4062142 (not res!1657056)) b!4062148))

(assert (= (and b!4062148 (not res!1657046)) b!4062144))

(assert (= (and b!4062144 (not res!1657037)) b!4062121))

(assert (= (and b!4062121 (not res!1657060)) b!4062135))

(assert (= (and b!4062135 (not res!1657063)) b!4062146))

(assert (= (and b!4062146 c!701553) b!4062140))

(assert (= (and b!4062146 (not c!701553)) b!4062126))

(assert (= (and b!4062140 res!1657058) b!4062133))

(assert (= (and b!4062146 c!701555) b!4062118))

(assert (= (and b!4062146 (not c!701555)) b!4062134))

(assert (= (and b!4062146 (not res!1657051)) b!4062124))

(assert (= (and b!4062124 (not res!1657032)) b!4062106))

(assert (= (and b!4062106 c!701554) b!4062137))

(assert (= (and b!4062106 (not c!701554)) b!4062132))

(assert (= (and b!4062137 res!1657055) b!4062109))

(assert (= (and b!4062106 (not res!1657041)) b!4062128))

(assert (= (and b!4062128 (not res!1657036)) b!4062131))

(assert (= (and b!4062131 (not res!1657044)) b!4062108))

(assert (= (and start!383142 (is-Cons!43392 prefix!494)) b!4062110))

(assert (= b!4062138 b!4062127))

(assert (= b!4062116 b!4062138))

(assert (= start!383142 b!4062116))

(assert (= (and start!383142 (is-Cons!43392 suffixResult!105)) b!4062119))

(assert (= (and start!383142 (is-Cons!43392 suffix!1299)) b!4062113))

(assert (= (and start!383142 (is-Cons!43392 newSuffix!27)) b!4062112))

(assert (= b!4062101 b!4062136))

(assert (= b!4062141 b!4062101))

(assert (= (and start!383142 (is-Cons!43394 rules!2999)) b!4062141))

(assert (= (and start!383142 (is-Cons!43392 newSuffixResult!27)) b!4062117))

(declare-fun m!4668321 () Bool)

(assert (=> b!4062146 m!4668321))

(declare-fun m!4668323 () Bool)

(assert (=> b!4062146 m!4668323))

(declare-fun m!4668325 () Bool)

(assert (=> b!4062146 m!4668325))

(declare-fun m!4668327 () Bool)

(assert (=> b!4062108 m!4668327))

(declare-fun m!4668329 () Bool)

(assert (=> b!4062148 m!4668329))

(declare-fun m!4668331 () Bool)

(assert (=> b!4062148 m!4668331))

(declare-fun m!4668333 () Bool)

(assert (=> b!4062148 m!4668333))

(declare-fun m!4668335 () Bool)

(assert (=> b!4062139 m!4668335))

(declare-fun m!4668337 () Bool)

(assert (=> b!4062139 m!4668337))

(declare-fun m!4668339 () Bool)

(assert (=> b!4062139 m!4668339))

(declare-fun m!4668341 () Bool)

(assert (=> b!4062139 m!4668341))

(declare-fun m!4668343 () Bool)

(assert (=> b!4062123 m!4668343))

(declare-fun m!4668345 () Bool)

(assert (=> b!4062123 m!4668345))

(declare-fun m!4668347 () Bool)

(assert (=> b!4062138 m!4668347))

(declare-fun m!4668349 () Bool)

(assert (=> b!4062138 m!4668349))

(declare-fun m!4668351 () Bool)

(assert (=> b!4062149 m!4668351))

(declare-fun m!4668353 () Bool)

(assert (=> b!4062114 m!4668353))

(declare-fun m!4668355 () Bool)

(assert (=> b!4062114 m!4668355))

(declare-fun m!4668357 () Bool)

(assert (=> b!4062114 m!4668357))

(declare-fun m!4668359 () Bool)

(assert (=> b!4062114 m!4668359))

(declare-fun m!4668361 () Bool)

(assert (=> b!4062114 m!4668361))

(declare-fun m!4668363 () Bool)

(assert (=> b!4062114 m!4668363))

(declare-fun m!4668365 () Bool)

(assert (=> b!4062114 m!4668365))

(declare-fun m!4668367 () Bool)

(assert (=> b!4062114 m!4668367))

(declare-fun m!4668369 () Bool)

(assert (=> b!4062114 m!4668369))

(declare-fun m!4668371 () Bool)

(assert (=> b!4062114 m!4668371))

(assert (=> b!4062114 m!4668363))

(declare-fun m!4668373 () Bool)

(assert (=> b!4062114 m!4668373))

(declare-fun m!4668375 () Bool)

(assert (=> b!4062114 m!4668375))

(declare-fun m!4668377 () Bool)

(assert (=> b!4062114 m!4668377))

(declare-fun m!4668379 () Bool)

(assert (=> b!4062114 m!4668379))

(declare-fun m!4668381 () Bool)

(assert (=> b!4062114 m!4668381))

(declare-fun m!4668383 () Bool)

(assert (=> b!4062114 m!4668383))

(assert (=> b!4062114 m!4668375))

(declare-fun m!4668385 () Bool)

(assert (=> b!4062114 m!4668385))

(declare-fun m!4668387 () Bool)

(assert (=> b!4062114 m!4668387))

(assert (=> b!4062114 m!4668367))

(declare-fun m!4668389 () Bool)

(assert (=> b!4062103 m!4668389))

(declare-fun m!4668391 () Bool)

(assert (=> b!4062103 m!4668391))

(declare-fun m!4668393 () Bool)

(assert (=> b!4062142 m!4668393))

(declare-fun m!4668395 () Bool)

(assert (=> b!4062142 m!4668395))

(declare-fun m!4668397 () Bool)

(assert (=> b!4062116 m!4668397))

(declare-fun m!4668399 () Bool)

(assert (=> b!4062124 m!4668399))

(declare-fun m!4668401 () Bool)

(assert (=> b!4062145 m!4668401))

(declare-fun m!4668403 () Bool)

(assert (=> b!4062131 m!4668403))

(declare-fun m!4668405 () Bool)

(assert (=> b!4062104 m!4668405))

(declare-fun m!4668407 () Bool)

(assert (=> b!4062104 m!4668407))

(declare-fun m!4668409 () Bool)

(assert (=> b!4062104 m!4668409))

(declare-fun m!4668411 () Bool)

(assert (=> b!4062104 m!4668411))

(declare-fun m!4668413 () Bool)

(assert (=> b!4062104 m!4668413))

(declare-fun m!4668415 () Bool)

(assert (=> b!4062101 m!4668415))

(declare-fun m!4668417 () Bool)

(assert (=> b!4062101 m!4668417))

(declare-fun m!4668419 () Bool)

(assert (=> b!4062107 m!4668419))

(declare-fun m!4668421 () Bool)

(assert (=> b!4062107 m!4668421))

(declare-fun m!4668423 () Bool)

(assert (=> b!4062107 m!4668423))

(declare-fun m!4668425 () Bool)

(assert (=> b!4062107 m!4668425))

(declare-fun m!4668427 () Bool)

(assert (=> b!4062137 m!4668427))

(declare-fun m!4668429 () Bool)

(assert (=> b!4062137 m!4668429))

(declare-fun m!4668431 () Bool)

(assert (=> b!4062144 m!4668431))

(declare-fun m!4668433 () Bool)

(assert (=> b!4062144 m!4668433))

(declare-fun m!4668435 () Bool)

(assert (=> b!4062144 m!4668435))

(declare-fun m!4668437 () Bool)

(assert (=> b!4062128 m!4668437))

(declare-fun m!4668439 () Bool)

(assert (=> b!4062130 m!4668439))

(declare-fun m!4668441 () Bool)

(assert (=> b!4062111 m!4668441))

(declare-fun m!4668443 () Bool)

(assert (=> b!4062140 m!4668443))

(assert (=> b!4062140 m!4668437))

(declare-fun m!4668445 () Bool)

(assert (=> b!4062125 m!4668445))

(declare-fun m!4668447 () Bool)

(assert (=> b!4062125 m!4668447))

(declare-fun m!4668449 () Bool)

(assert (=> b!4062125 m!4668449))

(declare-fun m!4668451 () Bool)

(assert (=> b!4062125 m!4668451))

(declare-fun m!4668453 () Bool)

(assert (=> b!4062122 m!4668453))

(assert (=> b!4062122 m!4668453))

(declare-fun m!4668455 () Bool)

(assert (=> b!4062122 m!4668455))

(declare-fun m!4668457 () Bool)

(assert (=> b!4062122 m!4668457))

(declare-fun m!4668459 () Bool)

(assert (=> b!4062122 m!4668459))

(declare-fun m!4668461 () Bool)

(assert (=> b!4062122 m!4668461))

(declare-fun m!4668463 () Bool)

(assert (=> b!4062122 m!4668463))

(declare-fun m!4668465 () Bool)

(assert (=> b!4062122 m!4668465))

(declare-fun m!4668467 () Bool)

(assert (=> start!383142 m!4668467))

(declare-fun m!4668469 () Bool)

(assert (=> b!4062129 m!4668469))

(declare-fun m!4668471 () Bool)

(assert (=> b!4062129 m!4668471))

(declare-fun m!4668473 () Bool)

(assert (=> b!4062129 m!4668473))

(declare-fun m!4668475 () Bool)

(assert (=> b!4062129 m!4668475))

(declare-fun m!4668477 () Bool)

(assert (=> b!4062135 m!4668477))

(declare-fun m!4668479 () Bool)

(assert (=> b!4062135 m!4668479))

(declare-fun m!4668481 () Bool)

(assert (=> b!4062143 m!4668481))

(declare-fun m!4668483 () Bool)

(assert (=> b!4062143 m!4668483))

(declare-fun m!4668485 () Bool)

(assert (=> b!4062143 m!4668485))

(assert (=> b!4062143 m!4668485))

(declare-fun m!4668487 () Bool)

(assert (=> b!4062143 m!4668487))

(declare-fun m!4668489 () Bool)

(assert (=> b!4062118 m!4668489))

(declare-fun m!4668491 () Bool)

(assert (=> b!4062105 m!4668491))

(declare-fun m!4668493 () Bool)

(assert (=> b!4062105 m!4668493))

(declare-fun m!4668495 () Bool)

(assert (=> b!4062105 m!4668495))

(declare-fun m!4668497 () Bool)

(assert (=> b!4062105 m!4668497))

(declare-fun m!4668499 () Bool)

(assert (=> b!4062120 m!4668499))

(declare-fun m!4668501 () Bool)

(assert (=> b!4062120 m!4668501))

(declare-fun m!4668503 () Bool)

(assert (=> b!4062120 m!4668503))

(declare-fun m!4668505 () Bool)

(assert (=> b!4062120 m!4668505))

(declare-fun m!4668507 () Bool)

(assert (=> b!4062106 m!4668507))

(declare-fun m!4668509 () Bool)

(assert (=> b!4062106 m!4668509))

(declare-fun m!4668511 () Bool)

(assert (=> b!4062106 m!4668511))

(declare-fun m!4668513 () Bool)

(assert (=> b!4062106 m!4668513))

(declare-fun m!4668515 () Bool)

(assert (=> b!4062115 m!4668515))

(declare-fun m!4668517 () Bool)

(assert (=> b!4062115 m!4668517))

(push 1)

(assert (not b!4062142))

(assert tp_is_empty!20711)

(assert (not b!4062111))

(assert (not b!4062116))

(assert (not b!4062105))

(assert (not b!4062145))

(assert (not b!4062129))

(assert (not b!4062119))

(assert (not b!4062113))

(assert (not b!4062106))

(assert (not b!4062140))

(assert (not b!4062131))

(assert (not b!4062128))

(assert (not b!4062143))

(assert (not b!4062123))

(assert (not b_next!113699))

(assert (not b!4062149))

(assert (not b!4062124))

(assert (not b_next!113701))

(assert (not b!4062115))

(assert (not start!383142))

(assert b_and!312319)

(assert (not b!4062125))

(assert (not b!4062148))

(assert (not b!4062120))

(assert (not b!4062135))

(assert (not b!4062130))

(assert (not b!4062138))

(assert b_and!312315)

(assert (not b!4062117))

(assert (not b_next!113697))

(assert (not b!4062101))

(assert (not b!4062144))

(assert (not b!4062139))

(assert (not b!4062118))

(assert (not b!4062108))

(assert (not b!4062107))

(assert b_and!312321)

(assert (not b!4062122))

(assert (not b!4062146))

(assert (not b_next!113703))

(assert (not b!4062112))

(assert (not b!4062104))

(assert (not b!4062114))

(assert (not b!4062103))

(assert b_and!312317)

(assert (not b!4062141))

(assert (not b!4062110))

(assert (not b!4062137))

(check-sat)

(pop 1)

(push 1)

(assert b_and!312319)

(assert b_and!312315)

(assert (not b_next!113697))

(assert b_and!312317)

(assert (not b_next!113699))

(assert (not b_next!113701))

(assert b_and!312321)

(assert (not b_next!113703))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1207550 () Bool)

(declare-fun lt!1451694 () Bool)

(declare-fun content!6620 (List!43518) (Set Rule!13730))

(assert (=> d!1207550 (= lt!1451694 (set.member (rule!10059 (_1!24360 (v!39800 lt!1451450))) (content!6620 rules!2999)))))

(declare-fun e!2520864 () Bool)

(assert (=> d!1207550 (= lt!1451694 e!2520864)))

(declare-fun res!1657173 () Bool)

(assert (=> d!1207550 (=> (not res!1657173) (not e!2520864))))

(assert (=> d!1207550 (= res!1657173 (is-Cons!43394 rules!2999))))

(assert (=> d!1207550 (= (contains!8633 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451694)))

(declare-fun b!4062301 () Bool)

(declare-fun e!2520863 () Bool)

(assert (=> b!4062301 (= e!2520864 e!2520863)))

(declare-fun res!1657172 () Bool)

(assert (=> b!4062301 (=> res!1657172 e!2520863)))

(assert (=> b!4062301 (= res!1657172 (= (h!48814 rules!2999) (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun b!4062302 () Bool)

(assert (=> b!4062302 (= e!2520863 (contains!8633 (t!336677 rules!2999) (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(assert (= (and d!1207550 res!1657173) b!4062301))

(assert (= (and b!4062301 (not res!1657172)) b!4062302))

(declare-fun m!4668717 () Bool)

(assert (=> d!1207550 m!4668717))

(declare-fun m!4668719 () Bool)

(assert (=> d!1207550 m!4668719))

(declare-fun m!4668721 () Bool)

(assert (=> b!4062302 m!4668721))

(assert (=> b!4062131 d!1207550))

(declare-fun d!1207552 () Bool)

(declare-fun lt!1451695 () Bool)

(assert (=> d!1207552 (= lt!1451695 (set.member (rule!10059 token!484) (content!6620 rules!2999)))))

(declare-fun e!2520866 () Bool)

(assert (=> d!1207552 (= lt!1451695 e!2520866)))

(declare-fun res!1657175 () Bool)

(assert (=> d!1207552 (=> (not res!1657175) (not e!2520866))))

(assert (=> d!1207552 (= res!1657175 (is-Cons!43394 rules!2999))))

(assert (=> d!1207552 (= (contains!8633 rules!2999 (rule!10059 token!484)) lt!1451695)))

(declare-fun b!4062303 () Bool)

(declare-fun e!2520865 () Bool)

(assert (=> b!4062303 (= e!2520866 e!2520865)))

(declare-fun res!1657174 () Bool)

(assert (=> b!4062303 (=> res!1657174 e!2520865)))

(assert (=> b!4062303 (= res!1657174 (= (h!48814 rules!2999) (rule!10059 token!484)))))

(declare-fun b!4062304 () Bool)

(assert (=> b!4062304 (= e!2520865 (contains!8633 (t!336677 rules!2999) (rule!10059 token!484)))))

(assert (= (and d!1207552 res!1657175) b!4062303))

(assert (= (and b!4062303 (not res!1657174)) b!4062304))

(assert (=> d!1207552 m!4668717))

(declare-fun m!4668723 () Bool)

(assert (=> d!1207552 m!4668723))

(declare-fun m!4668725 () Bool)

(assert (=> b!4062304 m!4668725))

(assert (=> b!4062108 d!1207552))

(declare-fun d!1207554 () Bool)

(declare-fun res!1657178 () Bool)

(declare-fun e!2520869 () Bool)

(assert (=> d!1207554 (=> (not res!1657178) (not e!2520869))))

(declare-fun rulesValid!2713 (LexerInterface!6554 List!43518) Bool)

(assert (=> d!1207554 (= res!1657178 (rulesValid!2713 thiss!21717 rules!2999))))

(assert (=> d!1207554 (= (rulesInvariant!5897 thiss!21717 rules!2999) e!2520869)))

(declare-fun b!4062307 () Bool)

(declare-datatypes ((List!43522 0))(
  ( (Nil!43398) (Cons!43398 (h!48818 String!49695) (t!336709 List!43522)) )
))
(declare-fun noDuplicateTag!2714 (LexerInterface!6554 List!43518 List!43522) Bool)

(assert (=> b!4062307 (= e!2520869 (noDuplicateTag!2714 thiss!21717 rules!2999 Nil!43398))))

(assert (= (and d!1207554 res!1657178) b!4062307))

(declare-fun m!4668727 () Bool)

(assert (=> d!1207554 m!4668727))

(declare-fun m!4668729 () Bool)

(assert (=> b!4062307 m!4668729))

(assert (=> b!4062130 d!1207554))

(declare-fun d!1207556 () Bool)

(declare-fun e!2520886 () Bool)

(assert (=> d!1207556 e!2520886))

(declare-fun c!701576 () Bool)

(assert (=> d!1207556 (= c!701576 (is-EmptyExpr!11870 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun lt!1451698 () Bool)

(declare-fun e!2520888 () Bool)

(assert (=> d!1207556 (= lt!1451698 e!2520888)))

(declare-fun c!701577 () Bool)

(declare-fun isEmpty!25896 (List!43516) Bool)

(assert (=> d!1207556 (= c!701577 (isEmpty!25896 lt!1451473))))

(declare-fun validRegex!5371 (Regex!11870) Bool)

(assert (=> d!1207556 (validRegex!5371 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(assert (=> d!1207556 (= (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451473) lt!1451698)))

(declare-fun bm!288234 () Bool)

(declare-fun call!288239 () Bool)

(assert (=> bm!288234 (= call!288239 (isEmpty!25896 lt!1451473))))

(declare-fun b!4062336 () Bool)

(declare-fun res!1657201 () Bool)

(declare-fun e!2520885 () Bool)

(assert (=> b!4062336 (=> res!1657201 e!2520885)))

(declare-fun e!2520887 () Bool)

(assert (=> b!4062336 (= res!1657201 e!2520887)))

(declare-fun res!1657195 () Bool)

(assert (=> b!4062336 (=> (not res!1657195) (not e!2520887))))

(assert (=> b!4062336 (= res!1657195 lt!1451698)))

(declare-fun b!4062337 () Bool)

(declare-fun res!1657197 () Bool)

(assert (=> b!4062337 (=> res!1657197 e!2520885)))

(assert (=> b!4062337 (= res!1657197 (not (is-ElementMatch!11870 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(declare-fun e!2520884 () Bool)

(assert (=> b!4062337 (= e!2520884 e!2520885)))

(declare-fun b!4062338 () Bool)

(assert (=> b!4062338 (= e!2520886 (= lt!1451698 call!288239))))

(declare-fun b!4062339 () Bool)

(declare-fun res!1657200 () Bool)

(declare-fun e!2520890 () Bool)

(assert (=> b!4062339 (=> res!1657200 e!2520890)))

(declare-fun tail!6306 (List!43516) List!43516)

(assert (=> b!4062339 (= res!1657200 (not (isEmpty!25896 (tail!6306 lt!1451473))))))

(declare-fun b!4062340 () Bool)

(declare-fun e!2520889 () Bool)

(assert (=> b!4062340 (= e!2520885 e!2520889)))

(declare-fun res!1657198 () Bool)

(assert (=> b!4062340 (=> (not res!1657198) (not e!2520889))))

(assert (=> b!4062340 (= res!1657198 (not lt!1451698))))

(declare-fun b!4062341 () Bool)

(declare-fun nullable!4171 (Regex!11870) Bool)

(assert (=> b!4062341 (= e!2520888 (nullable!4171 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun b!4062342 () Bool)

(assert (=> b!4062342 (= e!2520889 e!2520890)))

(declare-fun res!1657199 () Bool)

(assert (=> b!4062342 (=> res!1657199 e!2520890)))

(assert (=> b!4062342 (= res!1657199 call!288239)))

(declare-fun b!4062343 () Bool)

(declare-fun head!8574 (List!43516) C!23926)

(assert (=> b!4062343 (= e!2520890 (not (= (head!8574 lt!1451473) (c!701557 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))))

(declare-fun b!4062344 () Bool)

(declare-fun res!1657202 () Bool)

(assert (=> b!4062344 (=> (not res!1657202) (not e!2520887))))

(assert (=> b!4062344 (= res!1657202 (not call!288239))))

(declare-fun b!4062345 () Bool)

(assert (=> b!4062345 (= e!2520886 e!2520884)))

(declare-fun c!701578 () Bool)

(assert (=> b!4062345 (= c!701578 (is-EmptyLang!11870 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun b!4062346 () Bool)

(assert (=> b!4062346 (= e!2520887 (= (head!8574 lt!1451473) (c!701557 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(declare-fun b!4062347 () Bool)

(declare-fun derivativeStep!3576 (Regex!11870 C!23926) Regex!11870)

(assert (=> b!4062347 (= e!2520888 (matchR!5823 (derivativeStep!3576 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (head!8574 lt!1451473)) (tail!6306 lt!1451473)))))

(declare-fun b!4062348 () Bool)

(assert (=> b!4062348 (= e!2520884 (not lt!1451698))))

(declare-fun b!4062349 () Bool)

(declare-fun res!1657196 () Bool)

(assert (=> b!4062349 (=> (not res!1657196) (not e!2520887))))

(assert (=> b!4062349 (= res!1657196 (isEmpty!25896 (tail!6306 lt!1451473)))))

(assert (= (and d!1207556 c!701577) b!4062341))

(assert (= (and d!1207556 (not c!701577)) b!4062347))

(assert (= (and d!1207556 c!701576) b!4062338))

(assert (= (and d!1207556 (not c!701576)) b!4062345))

(assert (= (and b!4062345 c!701578) b!4062348))

(assert (= (and b!4062345 (not c!701578)) b!4062337))

(assert (= (and b!4062337 (not res!1657197)) b!4062336))

(assert (= (and b!4062336 res!1657195) b!4062344))

(assert (= (and b!4062344 res!1657202) b!4062349))

(assert (= (and b!4062349 res!1657196) b!4062346))

(assert (= (and b!4062336 (not res!1657201)) b!4062340))

(assert (= (and b!4062340 res!1657198) b!4062342))

(assert (= (and b!4062342 (not res!1657199)) b!4062339))

(assert (= (and b!4062339 (not res!1657200)) b!4062343))

(assert (= (or b!4062338 b!4062342 b!4062344) bm!288234))

(declare-fun m!4668731 () Bool)

(assert (=> b!4062341 m!4668731))

(declare-fun m!4668733 () Bool)

(assert (=> b!4062349 m!4668733))

(assert (=> b!4062349 m!4668733))

(declare-fun m!4668735 () Bool)

(assert (=> b!4062349 m!4668735))

(declare-fun m!4668737 () Bool)

(assert (=> b!4062347 m!4668737))

(assert (=> b!4062347 m!4668737))

(declare-fun m!4668739 () Bool)

(assert (=> b!4062347 m!4668739))

(assert (=> b!4062347 m!4668733))

(assert (=> b!4062347 m!4668739))

(assert (=> b!4062347 m!4668733))

(declare-fun m!4668741 () Bool)

(assert (=> b!4062347 m!4668741))

(declare-fun m!4668743 () Bool)

(assert (=> bm!288234 m!4668743))

(assert (=> b!4062343 m!4668737))

(assert (=> b!4062346 m!4668737))

(assert (=> d!1207556 m!4668743))

(declare-fun m!4668745 () Bool)

(assert (=> d!1207556 m!4668745))

(assert (=> b!4062339 m!4668733))

(assert (=> b!4062339 m!4668733))

(assert (=> b!4062339 m!4668735))

(assert (=> b!4062128 d!1207556))

(declare-fun d!1207558 () Bool)

(declare-fun e!2520893 () Bool)

(assert (=> d!1207558 e!2520893))

(declare-fun c!701579 () Bool)

(assert (=> d!1207558 (= c!701579 (is-EmptyExpr!11870 (regex!6965 (rule!10059 token!484))))))

(declare-fun lt!1451699 () Bool)

(declare-fun e!2520895 () Bool)

(assert (=> d!1207558 (= lt!1451699 e!2520895)))

(declare-fun c!701580 () Bool)

(assert (=> d!1207558 (= c!701580 (isEmpty!25896 lt!1451483))))

(assert (=> d!1207558 (validRegex!5371 (regex!6965 (rule!10059 token!484)))))

(assert (=> d!1207558 (= (matchR!5823 (regex!6965 (rule!10059 token!484)) lt!1451483) lt!1451699)))

(declare-fun bm!288235 () Bool)

(declare-fun call!288240 () Bool)

(assert (=> bm!288235 (= call!288240 (isEmpty!25896 lt!1451483))))

(declare-fun b!4062350 () Bool)

(declare-fun res!1657209 () Bool)

(declare-fun e!2520892 () Bool)

(assert (=> b!4062350 (=> res!1657209 e!2520892)))

(declare-fun e!2520894 () Bool)

(assert (=> b!4062350 (= res!1657209 e!2520894)))

(declare-fun res!1657203 () Bool)

(assert (=> b!4062350 (=> (not res!1657203) (not e!2520894))))

(assert (=> b!4062350 (= res!1657203 lt!1451699)))

(declare-fun b!4062351 () Bool)

(declare-fun res!1657205 () Bool)

(assert (=> b!4062351 (=> res!1657205 e!2520892)))

(assert (=> b!4062351 (= res!1657205 (not (is-ElementMatch!11870 (regex!6965 (rule!10059 token!484)))))))

(declare-fun e!2520891 () Bool)

(assert (=> b!4062351 (= e!2520891 e!2520892)))

(declare-fun b!4062352 () Bool)

(assert (=> b!4062352 (= e!2520893 (= lt!1451699 call!288240))))

(declare-fun b!4062353 () Bool)

(declare-fun res!1657208 () Bool)

(declare-fun e!2520897 () Bool)

(assert (=> b!4062353 (=> res!1657208 e!2520897)))

(assert (=> b!4062353 (= res!1657208 (not (isEmpty!25896 (tail!6306 lt!1451483))))))

(declare-fun b!4062354 () Bool)

(declare-fun e!2520896 () Bool)

(assert (=> b!4062354 (= e!2520892 e!2520896)))

(declare-fun res!1657206 () Bool)

(assert (=> b!4062354 (=> (not res!1657206) (not e!2520896))))

(assert (=> b!4062354 (= res!1657206 (not lt!1451699))))

(declare-fun b!4062355 () Bool)

(assert (=> b!4062355 (= e!2520895 (nullable!4171 (regex!6965 (rule!10059 token!484))))))

(declare-fun b!4062356 () Bool)

(assert (=> b!4062356 (= e!2520896 e!2520897)))

(declare-fun res!1657207 () Bool)

(assert (=> b!4062356 (=> res!1657207 e!2520897)))

(assert (=> b!4062356 (= res!1657207 call!288240)))

(declare-fun b!4062357 () Bool)

(assert (=> b!4062357 (= e!2520897 (not (= (head!8574 lt!1451483) (c!701557 (regex!6965 (rule!10059 token!484))))))))

(declare-fun b!4062358 () Bool)

(declare-fun res!1657210 () Bool)

(assert (=> b!4062358 (=> (not res!1657210) (not e!2520894))))

(assert (=> b!4062358 (= res!1657210 (not call!288240))))

(declare-fun b!4062359 () Bool)

(assert (=> b!4062359 (= e!2520893 e!2520891)))

(declare-fun c!701581 () Bool)

(assert (=> b!4062359 (= c!701581 (is-EmptyLang!11870 (regex!6965 (rule!10059 token!484))))))

(declare-fun b!4062360 () Bool)

(assert (=> b!4062360 (= e!2520894 (= (head!8574 lt!1451483) (c!701557 (regex!6965 (rule!10059 token!484)))))))

(declare-fun b!4062361 () Bool)

(assert (=> b!4062361 (= e!2520895 (matchR!5823 (derivativeStep!3576 (regex!6965 (rule!10059 token!484)) (head!8574 lt!1451483)) (tail!6306 lt!1451483)))))

(declare-fun b!4062362 () Bool)

(assert (=> b!4062362 (= e!2520891 (not lt!1451699))))

(declare-fun b!4062363 () Bool)

(declare-fun res!1657204 () Bool)

(assert (=> b!4062363 (=> (not res!1657204) (not e!2520894))))

(assert (=> b!4062363 (= res!1657204 (isEmpty!25896 (tail!6306 lt!1451483)))))

(assert (= (and d!1207558 c!701580) b!4062355))

(assert (= (and d!1207558 (not c!701580)) b!4062361))

(assert (= (and d!1207558 c!701579) b!4062352))

(assert (= (and d!1207558 (not c!701579)) b!4062359))

(assert (= (and b!4062359 c!701581) b!4062362))

(assert (= (and b!4062359 (not c!701581)) b!4062351))

(assert (= (and b!4062351 (not res!1657205)) b!4062350))

(assert (= (and b!4062350 res!1657203) b!4062358))

(assert (= (and b!4062358 res!1657210) b!4062363))

(assert (= (and b!4062363 res!1657204) b!4062360))

(assert (= (and b!4062350 (not res!1657209)) b!4062354))

(assert (= (and b!4062354 res!1657206) b!4062356))

(assert (= (and b!4062356 (not res!1657207)) b!4062353))

(assert (= (and b!4062353 (not res!1657208)) b!4062357))

(assert (= (or b!4062352 b!4062356 b!4062358) bm!288235))

(declare-fun m!4668747 () Bool)

(assert (=> b!4062355 m!4668747))

(declare-fun m!4668749 () Bool)

(assert (=> b!4062363 m!4668749))

(assert (=> b!4062363 m!4668749))

(declare-fun m!4668751 () Bool)

(assert (=> b!4062363 m!4668751))

(declare-fun m!4668753 () Bool)

(assert (=> b!4062361 m!4668753))

(assert (=> b!4062361 m!4668753))

(declare-fun m!4668755 () Bool)

(assert (=> b!4062361 m!4668755))

(assert (=> b!4062361 m!4668749))

(assert (=> b!4062361 m!4668755))

(assert (=> b!4062361 m!4668749))

(declare-fun m!4668757 () Bool)

(assert (=> b!4062361 m!4668757))

(declare-fun m!4668759 () Bool)

(assert (=> bm!288235 m!4668759))

(assert (=> b!4062357 m!4668753))

(assert (=> b!4062360 m!4668753))

(assert (=> d!1207558 m!4668759))

(declare-fun m!4668761 () Bool)

(assert (=> d!1207558 m!4668761))

(assert (=> b!4062353 m!4668749))

(assert (=> b!4062353 m!4668749))

(assert (=> b!4062353 m!4668751))

(assert (=> b!4062107 d!1207558))

(declare-fun b!4062373 () Bool)

(declare-fun res!1657219 () Bool)

(declare-fun e!2520906 () Bool)

(assert (=> b!4062373 (=> (not res!1657219) (not e!2520906))))

(assert (=> b!4062373 (= res!1657219 (= (head!8574 lt!1451483) (head!8574 lt!1451489)))))

(declare-fun d!1207560 () Bool)

(declare-fun e!2520904 () Bool)

(assert (=> d!1207560 e!2520904))

(declare-fun res!1657220 () Bool)

(assert (=> d!1207560 (=> res!1657220 e!2520904)))

(declare-fun lt!1451702 () Bool)

(assert (=> d!1207560 (= res!1657220 (not lt!1451702))))

(declare-fun e!2520905 () Bool)

(assert (=> d!1207560 (= lt!1451702 e!2520905)))

(declare-fun res!1657221 () Bool)

(assert (=> d!1207560 (=> res!1657221 e!2520905)))

(assert (=> d!1207560 (= res!1657221 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207560 (= (isPrefix!4052 lt!1451483 lt!1451489) lt!1451702)))

(declare-fun b!4062374 () Bool)

(assert (=> b!4062374 (= e!2520906 (isPrefix!4052 (tail!6306 lt!1451483) (tail!6306 lt!1451489)))))

(declare-fun b!4062375 () Bool)

(assert (=> b!4062375 (= e!2520904 (>= (size!32444 lt!1451489) (size!32444 lt!1451483)))))

(declare-fun b!4062372 () Bool)

(assert (=> b!4062372 (= e!2520905 e!2520906)))

(declare-fun res!1657222 () Bool)

(assert (=> b!4062372 (=> (not res!1657222) (not e!2520906))))

(assert (=> b!4062372 (= res!1657222 (not (is-Nil!43392 lt!1451489)))))

(assert (= (and d!1207560 (not res!1657221)) b!4062372))

(assert (= (and b!4062372 res!1657222) b!4062373))

(assert (= (and b!4062373 res!1657219) b!4062374))

(assert (= (and d!1207560 (not res!1657220)) b!4062375))

(assert (=> b!4062373 m!4668753))

(declare-fun m!4668763 () Bool)

(assert (=> b!4062373 m!4668763))

(assert (=> b!4062374 m!4668749))

(declare-fun m!4668765 () Bool)

(assert (=> b!4062374 m!4668765))

(assert (=> b!4062374 m!4668749))

(assert (=> b!4062374 m!4668765))

(declare-fun m!4668767 () Bool)

(assert (=> b!4062374 m!4668767))

(declare-fun m!4668769 () Bool)

(assert (=> b!4062375 m!4668769))

(assert (=> b!4062375 m!4668481))

(assert (=> b!4062107 d!1207560))

(declare-fun d!1207562 () Bool)

(assert (=> d!1207562 (isPrefix!4052 lt!1451483 (++!11367 prefix!494 newSuffix!27))))

(declare-fun lt!1451705 () Unit!62828)

(declare-fun choose!24699 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> d!1207562 (= lt!1451705 (choose!24699 lt!1451483 prefix!494 newSuffix!27))))

(assert (=> d!1207562 (isPrefix!4052 lt!1451483 prefix!494)))

(assert (=> d!1207562 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!845 lt!1451483 prefix!494 newSuffix!27) lt!1451705)))

(declare-fun bs!592177 () Bool)

(assert (= bs!592177 d!1207562))

(assert (=> bs!592177 m!4668343))

(assert (=> bs!592177 m!4668343))

(declare-fun m!4668771 () Bool)

(assert (=> bs!592177 m!4668771))

(declare-fun m!4668773 () Bool)

(assert (=> bs!592177 m!4668773))

(assert (=> bs!592177 m!4668503))

(assert (=> b!4062107 d!1207562))

(declare-fun d!1207564 () Bool)

(assert (=> d!1207564 (isPrefix!4052 lt!1451483 (++!11367 prefix!494 suffix!1299))))

(declare-fun lt!1451706 () Unit!62828)

(assert (=> d!1207564 (= lt!1451706 (choose!24699 lt!1451483 prefix!494 suffix!1299))))

(assert (=> d!1207564 (isPrefix!4052 lt!1451483 prefix!494)))

(assert (=> d!1207564 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!845 lt!1451483 prefix!494 suffix!1299) lt!1451706)))

(declare-fun bs!592178 () Bool)

(assert (= bs!592178 d!1207564))

(assert (=> bs!592178 m!4668391))

(assert (=> bs!592178 m!4668391))

(declare-fun m!4668775 () Bool)

(assert (=> bs!592178 m!4668775))

(declare-fun m!4668777 () Bool)

(assert (=> bs!592178 m!4668777))

(assert (=> bs!592178 m!4668503))

(assert (=> b!4062107 d!1207564))

(declare-fun b!4062386 () Bool)

(declare-fun res!1657227 () Bool)

(declare-fun e!2520911 () Bool)

(assert (=> b!4062386 (=> (not res!1657227) (not e!2520911))))

(declare-fun lt!1451709 () List!43516)

(assert (=> b!4062386 (= res!1657227 (= (size!32444 lt!1451709) (+ (size!32444 lt!1451483) (size!32444 lt!1451438))))))

(declare-fun b!4062384 () Bool)

(declare-fun e!2520912 () List!43516)

(assert (=> b!4062384 (= e!2520912 lt!1451438)))

(declare-fun b!4062387 () Bool)

(assert (=> b!4062387 (= e!2520911 (or (not (= lt!1451438 Nil!43392)) (= lt!1451709 lt!1451483)))))

(declare-fun d!1207566 () Bool)

(assert (=> d!1207566 e!2520911))

(declare-fun res!1657228 () Bool)

(assert (=> d!1207566 (=> (not res!1657228) (not e!2520911))))

(declare-fun content!6621 (List!43516) (Set C!23926))

(assert (=> d!1207566 (= res!1657228 (= (content!6621 lt!1451709) (set.union (content!6621 lt!1451483) (content!6621 lt!1451438))))))

(assert (=> d!1207566 (= lt!1451709 e!2520912)))

(declare-fun c!701584 () Bool)

(assert (=> d!1207566 (= c!701584 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207566 (= (++!11367 lt!1451483 lt!1451438) lt!1451709)))

(declare-fun b!4062385 () Bool)

(assert (=> b!4062385 (= e!2520912 (Cons!43392 (h!48812 lt!1451483) (++!11367 (t!336675 lt!1451483) lt!1451438)))))

(assert (= (and d!1207566 c!701584) b!4062384))

(assert (= (and d!1207566 (not c!701584)) b!4062385))

(assert (= (and d!1207566 res!1657228) b!4062386))

(assert (= (and b!4062386 res!1657227) b!4062387))

(declare-fun m!4668779 () Bool)

(assert (=> b!4062386 m!4668779))

(assert (=> b!4062386 m!4668481))

(declare-fun m!4668781 () Bool)

(assert (=> b!4062386 m!4668781))

(declare-fun m!4668783 () Bool)

(assert (=> d!1207566 m!4668783))

(declare-fun m!4668785 () Bool)

(assert (=> d!1207566 m!4668785))

(declare-fun m!4668787 () Bool)

(assert (=> d!1207566 m!4668787))

(declare-fun m!4668789 () Bool)

(assert (=> b!4062385 m!4668789))

(assert (=> b!4062129 d!1207566))

(declare-fun d!1207568 () Bool)

(declare-fun lt!1451712 () List!43516)

(assert (=> d!1207568 (= (++!11367 lt!1451483 lt!1451712) lt!1451490)))

(declare-fun e!2520915 () List!43516)

(assert (=> d!1207568 (= lt!1451712 e!2520915)))

(declare-fun c!701587 () Bool)

(assert (=> d!1207568 (= c!701587 (is-Cons!43392 lt!1451483))))

(assert (=> d!1207568 (>= (size!32444 lt!1451490) (size!32444 lt!1451483))))

(assert (=> d!1207568 (= (getSuffix!2469 lt!1451490 lt!1451483) lt!1451712)))

(declare-fun b!4062392 () Bool)

(assert (=> b!4062392 (= e!2520915 (getSuffix!2469 (tail!6306 lt!1451490) (t!336675 lt!1451483)))))

(declare-fun b!4062393 () Bool)

(assert (=> b!4062393 (= e!2520915 lt!1451490)))

(assert (= (and d!1207568 c!701587) b!4062392))

(assert (= (and d!1207568 (not c!701587)) b!4062393))

(declare-fun m!4668791 () Bool)

(assert (=> d!1207568 m!4668791))

(declare-fun m!4668793 () Bool)

(assert (=> d!1207568 m!4668793))

(assert (=> d!1207568 m!4668481))

(declare-fun m!4668795 () Bool)

(assert (=> b!4062392 m!4668795))

(assert (=> b!4062392 m!4668795))

(declare-fun m!4668797 () Bool)

(assert (=> b!4062392 m!4668797))

(assert (=> b!4062129 d!1207568))

(declare-fun b!4062395 () Bool)

(declare-fun res!1657229 () Bool)

(declare-fun e!2520918 () Bool)

(assert (=> b!4062395 (=> (not res!1657229) (not e!2520918))))

(assert (=> b!4062395 (= res!1657229 (= (head!8574 lt!1451490) (head!8574 lt!1451490)))))

(declare-fun d!1207570 () Bool)

(declare-fun e!2520916 () Bool)

(assert (=> d!1207570 e!2520916))

(declare-fun res!1657230 () Bool)

(assert (=> d!1207570 (=> res!1657230 e!2520916)))

(declare-fun lt!1451713 () Bool)

(assert (=> d!1207570 (= res!1657230 (not lt!1451713))))

(declare-fun e!2520917 () Bool)

(assert (=> d!1207570 (= lt!1451713 e!2520917)))

(declare-fun res!1657231 () Bool)

(assert (=> d!1207570 (=> res!1657231 e!2520917)))

(assert (=> d!1207570 (= res!1657231 (is-Nil!43392 lt!1451490))))

(assert (=> d!1207570 (= (isPrefix!4052 lt!1451490 lt!1451490) lt!1451713)))

(declare-fun b!4062396 () Bool)

(assert (=> b!4062396 (= e!2520918 (isPrefix!4052 (tail!6306 lt!1451490) (tail!6306 lt!1451490)))))

(declare-fun b!4062397 () Bool)

(assert (=> b!4062397 (= e!2520916 (>= (size!32444 lt!1451490) (size!32444 lt!1451490)))))

(declare-fun b!4062394 () Bool)

(assert (=> b!4062394 (= e!2520917 e!2520918)))

(declare-fun res!1657232 () Bool)

(assert (=> b!4062394 (=> (not res!1657232) (not e!2520918))))

(assert (=> b!4062394 (= res!1657232 (not (is-Nil!43392 lt!1451490)))))

(assert (= (and d!1207570 (not res!1657231)) b!4062394))

(assert (= (and b!4062394 res!1657232) b!4062395))

(assert (= (and b!4062395 res!1657229) b!4062396))

(assert (= (and d!1207570 (not res!1657230)) b!4062397))

(declare-fun m!4668799 () Bool)

(assert (=> b!4062395 m!4668799))

(assert (=> b!4062395 m!4668799))

(assert (=> b!4062396 m!4668795))

(assert (=> b!4062396 m!4668795))

(assert (=> b!4062396 m!4668795))

(assert (=> b!4062396 m!4668795))

(declare-fun m!4668801 () Bool)

(assert (=> b!4062396 m!4668801))

(assert (=> b!4062397 m!4668793))

(assert (=> b!4062397 m!4668793))

(assert (=> b!4062129 d!1207570))

(declare-fun d!1207572 () Bool)

(assert (=> d!1207572 (isPrefix!4052 lt!1451490 lt!1451490)))

(declare-fun lt!1451716 () Unit!62828)

(declare-fun choose!24700 (List!43516 List!43516) Unit!62828)

(assert (=> d!1207572 (= lt!1451716 (choose!24700 lt!1451490 lt!1451490))))

(assert (=> d!1207572 (= (lemmaIsPrefixRefl!2619 lt!1451490 lt!1451490) lt!1451716)))

(declare-fun bs!592179 () Bool)

(assert (= bs!592179 d!1207572))

(assert (=> bs!592179 m!4668473))

(declare-fun m!4668803 () Bool)

(assert (=> bs!592179 m!4668803))

(assert (=> b!4062129 d!1207572))

(declare-fun b!4062400 () Bool)

(declare-fun res!1657233 () Bool)

(declare-fun e!2520919 () Bool)

(assert (=> b!4062400 (=> (not res!1657233) (not e!2520919))))

(declare-fun lt!1451717 () List!43516)

(assert (=> b!4062400 (= res!1657233 (= (size!32444 lt!1451717) (+ (size!32444 prefix!494) (size!32444 lt!1451459))))))

(declare-fun b!4062398 () Bool)

(declare-fun e!2520920 () List!43516)

(assert (=> b!4062398 (= e!2520920 lt!1451459)))

(declare-fun b!4062401 () Bool)

(assert (=> b!4062401 (= e!2520919 (or (not (= lt!1451459 Nil!43392)) (= lt!1451717 prefix!494)))))

(declare-fun d!1207574 () Bool)

(assert (=> d!1207574 e!2520919))

(declare-fun res!1657234 () Bool)

(assert (=> d!1207574 (=> (not res!1657234) (not e!2520919))))

(assert (=> d!1207574 (= res!1657234 (= (content!6621 lt!1451717) (set.union (content!6621 prefix!494) (content!6621 lt!1451459))))))

(assert (=> d!1207574 (= lt!1451717 e!2520920)))

(declare-fun c!701588 () Bool)

(assert (=> d!1207574 (= c!701588 (is-Nil!43392 prefix!494))))

(assert (=> d!1207574 (= (++!11367 prefix!494 lt!1451459) lt!1451717)))

(declare-fun b!4062399 () Bool)

(assert (=> b!4062399 (= e!2520920 (Cons!43392 (h!48812 prefix!494) (++!11367 (t!336675 prefix!494) lt!1451459)))))

(assert (= (and d!1207574 c!701588) b!4062398))

(assert (= (and d!1207574 (not c!701588)) b!4062399))

(assert (= (and d!1207574 res!1657234) b!4062400))

(assert (= (and b!4062400 res!1657233) b!4062401))

(declare-fun m!4668805 () Bool)

(assert (=> b!4062400 m!4668805))

(assert (=> b!4062400 m!4668483))

(declare-fun m!4668807 () Bool)

(assert (=> b!4062400 m!4668807))

(declare-fun m!4668809 () Bool)

(assert (=> d!1207574 m!4668809))

(declare-fun m!4668811 () Bool)

(assert (=> d!1207574 m!4668811))

(declare-fun m!4668813 () Bool)

(assert (=> d!1207574 m!4668813))

(declare-fun m!4668815 () Bool)

(assert (=> b!4062399 m!4668815))

(assert (=> b!4062148 d!1207574))

(declare-fun b!4062404 () Bool)

(declare-fun res!1657235 () Bool)

(declare-fun e!2520921 () Bool)

(assert (=> b!4062404 (=> (not res!1657235) (not e!2520921))))

(declare-fun lt!1451718 () List!43516)

(assert (=> b!4062404 (= res!1657235 (= (size!32444 lt!1451718) (+ (size!32444 lt!1451489) (size!32444 lt!1451432))))))

(declare-fun b!4062402 () Bool)

(declare-fun e!2520922 () List!43516)

(assert (=> b!4062402 (= e!2520922 lt!1451432)))

(declare-fun b!4062405 () Bool)

(assert (=> b!4062405 (= e!2520921 (or (not (= lt!1451432 Nil!43392)) (= lt!1451718 lt!1451489)))))

(declare-fun d!1207576 () Bool)

(assert (=> d!1207576 e!2520921))

(declare-fun res!1657236 () Bool)

(assert (=> d!1207576 (=> (not res!1657236) (not e!2520921))))

(assert (=> d!1207576 (= res!1657236 (= (content!6621 lt!1451718) (set.union (content!6621 lt!1451489) (content!6621 lt!1451432))))))

(assert (=> d!1207576 (= lt!1451718 e!2520922)))

(declare-fun c!701589 () Bool)

(assert (=> d!1207576 (= c!701589 (is-Nil!43392 lt!1451489))))

(assert (=> d!1207576 (= (++!11367 lt!1451489 lt!1451432) lt!1451718)))

(declare-fun b!4062403 () Bool)

(assert (=> b!4062403 (= e!2520922 (Cons!43392 (h!48812 lt!1451489) (++!11367 (t!336675 lt!1451489) lt!1451432)))))

(assert (= (and d!1207576 c!701589) b!4062402))

(assert (= (and d!1207576 (not c!701589)) b!4062403))

(assert (= (and d!1207576 res!1657236) b!4062404))

(assert (= (and b!4062404 res!1657235) b!4062405))

(declare-fun m!4668817 () Bool)

(assert (=> b!4062404 m!4668817))

(assert (=> b!4062404 m!4668769))

(declare-fun m!4668819 () Bool)

(assert (=> b!4062404 m!4668819))

(declare-fun m!4668821 () Bool)

(assert (=> d!1207576 m!4668821))

(declare-fun m!4668823 () Bool)

(assert (=> d!1207576 m!4668823))

(declare-fun m!4668825 () Bool)

(assert (=> d!1207576 m!4668825))

(declare-fun m!4668827 () Bool)

(assert (=> b!4062403 m!4668827))

(assert (=> b!4062148 d!1207576))

(declare-fun d!1207578 () Bool)

(assert (=> d!1207578 (= (++!11367 (++!11367 prefix!494 newSuffix!27) lt!1451432) (++!11367 prefix!494 (++!11367 newSuffix!27 lt!1451432)))))

(declare-fun lt!1451721 () Unit!62828)

(declare-fun choose!24701 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> d!1207578 (= lt!1451721 (choose!24701 prefix!494 newSuffix!27 lt!1451432))))

(assert (=> d!1207578 (= (lemmaConcatAssociativity!2669 prefix!494 newSuffix!27 lt!1451432) lt!1451721)))

(declare-fun bs!592180 () Bool)

(assert (= bs!592180 d!1207578))

(assert (=> bs!592180 m!4668393))

(declare-fun m!4668829 () Bool)

(assert (=> bs!592180 m!4668829))

(assert (=> bs!592180 m!4668393))

(assert (=> bs!592180 m!4668343))

(assert (=> bs!592180 m!4668343))

(declare-fun m!4668831 () Bool)

(assert (=> bs!592180 m!4668831))

(declare-fun m!4668833 () Bool)

(assert (=> bs!592180 m!4668833))

(assert (=> b!4062148 d!1207578))

(declare-fun b!4062415 () Bool)

(declare-fun e!2520929 () Int)

(declare-fun e!2520928 () Int)

(assert (=> b!4062415 (= e!2520929 e!2520928)))

(declare-fun c!701595 () Bool)

(assert (=> b!4062415 (= c!701595 (and (is-Cons!43394 rules!2999) (not (= (h!48814 rules!2999) (rule!10059 token!484)))))))

(declare-fun b!4062417 () Bool)

(assert (=> b!4062417 (= e!2520928 (- 1))))

(declare-fun b!4062416 () Bool)

(assert (=> b!4062416 (= e!2520928 (+ 1 (getIndex!577 (t!336677 rules!2999) (rule!10059 token!484))))))

(declare-fun b!4062414 () Bool)

(assert (=> b!4062414 (= e!2520929 0)))

(declare-fun d!1207582 () Bool)

(declare-fun lt!1451724 () Int)

(assert (=> d!1207582 (>= lt!1451724 0)))

(assert (=> d!1207582 (= lt!1451724 e!2520929)))

(declare-fun c!701594 () Bool)

(assert (=> d!1207582 (= c!701594 (and (is-Cons!43394 rules!2999) (= (h!48814 rules!2999) (rule!10059 token!484))))))

(assert (=> d!1207582 (contains!8633 rules!2999 (rule!10059 token!484))))

(assert (=> d!1207582 (= (getIndex!577 rules!2999 (rule!10059 token!484)) lt!1451724)))

(assert (= (and d!1207582 c!701594) b!4062414))

(assert (= (and d!1207582 (not c!701594)) b!4062415))

(assert (= (and b!4062415 c!701595) b!4062416))

(assert (= (and b!4062415 (not c!701595)) b!4062417))

(declare-fun m!4668835 () Bool)

(assert (=> b!4062416 m!4668835))

(assert (=> d!1207582 m!4668327))

(assert (=> b!4062106 d!1207582))

(declare-fun b!4062419 () Bool)

(declare-fun e!2520931 () Int)

(declare-fun e!2520930 () Int)

(assert (=> b!4062419 (= e!2520931 e!2520930)))

(declare-fun c!701597 () Bool)

(assert (=> b!4062419 (= c!701597 (and (is-Cons!43394 rules!2999) (not (= (h!48814 rules!2999) (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(declare-fun b!4062421 () Bool)

(assert (=> b!4062421 (= e!2520930 (- 1))))

(declare-fun b!4062420 () Bool)

(assert (=> b!4062420 (= e!2520930 (+ 1 (getIndex!577 (t!336677 rules!2999) (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun b!4062418 () Bool)

(assert (=> b!4062418 (= e!2520931 0)))

(declare-fun d!1207584 () Bool)

(declare-fun lt!1451725 () Int)

(assert (=> d!1207584 (>= lt!1451725 0)))

(assert (=> d!1207584 (= lt!1451725 e!2520931)))

(declare-fun c!701596 () Bool)

(assert (=> d!1207584 (= c!701596 (and (is-Cons!43394 rules!2999) (= (h!48814 rules!2999) (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(assert (=> d!1207584 (contains!8633 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))

(assert (=> d!1207584 (= (getIndex!577 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451725)))

(assert (= (and d!1207584 c!701596) b!4062418))

(assert (= (and d!1207584 (not c!701596)) b!4062419))

(assert (= (and b!4062419 c!701597) b!4062420))

(assert (= (and b!4062419 (not c!701597)) b!4062421))

(declare-fun m!4668837 () Bool)

(assert (=> b!4062420 m!4668837))

(assert (=> d!1207584 m!4668403))

(assert (=> b!4062106 d!1207584))

(declare-fun d!1207586 () Bool)

(assert (=> d!1207586 (= (_2!24360 (v!39800 lt!1451450)) newSuffixResult!27)))

(declare-fun lt!1451728 () Unit!62828)

(declare-fun choose!24702 (List!43516 List!43516 List!43516 List!43516 List!43516) Unit!62828)

(assert (=> d!1207586 (= lt!1451728 (choose!24702 lt!1451473 (_2!24360 (v!39800 lt!1451450)) lt!1451483 newSuffixResult!27 lt!1451489))))

(assert (=> d!1207586 (isPrefix!4052 lt!1451473 lt!1451489)))

(assert (=> d!1207586 (= (lemmaSamePrefixThenSameSuffix!2213 lt!1451473 (_2!24360 (v!39800 lt!1451450)) lt!1451483 newSuffixResult!27 lt!1451489) lt!1451728)))

(declare-fun bs!592181 () Bool)

(assert (= bs!592181 d!1207586))

(declare-fun m!4668839 () Bool)

(assert (=> bs!592181 m!4668839))

(assert (=> bs!592181 m!4668399))

(assert (=> b!4062106 d!1207586))

(declare-fun d!1207588 () Bool)

(assert (=> d!1207588 (= lt!1451473 lt!1451483)))

(declare-fun lt!1451731 () Unit!62828)

(declare-fun choose!24703 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> d!1207588 (= lt!1451731 (choose!24703 lt!1451473 lt!1451483 lt!1451489))))

(assert (=> d!1207588 (isPrefix!4052 lt!1451473 lt!1451489)))

(assert (=> d!1207588 (= (lemmaIsPrefixSameLengthThenSameList!942 lt!1451473 lt!1451483 lt!1451489) lt!1451731)))

(declare-fun bs!592182 () Bool)

(assert (= bs!592182 d!1207588))

(declare-fun m!4668841 () Bool)

(assert (=> bs!592182 m!4668841))

(assert (=> bs!592182 m!4668399))

(assert (=> b!4062106 d!1207588))

(declare-fun d!1207590 () Bool)

(declare-fun lt!1451734 () Int)

(assert (=> d!1207590 (>= lt!1451734 0)))

(declare-fun e!2520934 () Int)

(assert (=> d!1207590 (= lt!1451734 e!2520934)))

(declare-fun c!701600 () Bool)

(assert (=> d!1207590 (= c!701600 (is-Nil!43392 (originalCharacters!7565 token!484)))))

(assert (=> d!1207590 (= (size!32444 (originalCharacters!7565 token!484)) lt!1451734)))

(declare-fun b!4062426 () Bool)

(assert (=> b!4062426 (= e!2520934 0)))

(declare-fun b!4062427 () Bool)

(assert (=> b!4062427 (= e!2520934 (+ 1 (size!32444 (t!336675 (originalCharacters!7565 token!484)))))))

(assert (= (and d!1207590 c!701600) b!4062426))

(assert (= (and d!1207590 (not c!701600)) b!4062427))

(declare-fun m!4668843 () Bool)

(assert (=> b!4062427 m!4668843))

(assert (=> b!4062149 d!1207590))

(declare-fun d!1207592 () Bool)

(declare-fun lt!1451735 () Int)

(assert (=> d!1207592 (>= lt!1451735 0)))

(declare-fun e!2520935 () Int)

(assert (=> d!1207592 (= lt!1451735 e!2520935)))

(declare-fun c!701601 () Bool)

(assert (=> d!1207592 (= c!701601 (is-Nil!43392 suffix!1299))))

(assert (=> d!1207592 (= (size!32444 suffix!1299) lt!1451735)))

(declare-fun b!4062428 () Bool)

(assert (=> b!4062428 (= e!2520935 0)))

(declare-fun b!4062429 () Bool)

(assert (=> b!4062429 (= e!2520935 (+ 1 (size!32444 (t!336675 suffix!1299))))))

(assert (= (and d!1207592 c!701601) b!4062428))

(assert (= (and d!1207592 (not c!701601)) b!4062429))

(declare-fun m!4668845 () Bool)

(assert (=> b!4062429 m!4668845))

(assert (=> b!4062115 d!1207592))

(declare-fun d!1207594 () Bool)

(declare-fun lt!1451736 () Int)

(assert (=> d!1207594 (>= lt!1451736 0)))

(declare-fun e!2520936 () Int)

(assert (=> d!1207594 (= lt!1451736 e!2520936)))

(declare-fun c!701602 () Bool)

(assert (=> d!1207594 (= c!701602 (is-Nil!43392 newSuffix!27))))

(assert (=> d!1207594 (= (size!32444 newSuffix!27) lt!1451736)))

(declare-fun b!4062430 () Bool)

(assert (=> b!4062430 (= e!2520936 0)))

(declare-fun b!4062431 () Bool)

(assert (=> b!4062431 (= e!2520936 (+ 1 (size!32444 (t!336675 newSuffix!27))))))

(assert (= (and d!1207594 c!701602) b!4062430))

(assert (= (and d!1207594 (not c!701602)) b!4062431))

(declare-fun m!4668847 () Bool)

(assert (=> b!4062431 m!4668847))

(assert (=> b!4062115 d!1207594))

(declare-fun d!1207596 () Bool)

(assert (=> d!1207596 (not (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451483))))

(declare-fun lt!1451739 () Unit!62828)

(declare-fun choose!24704 (LexerInterface!6554 List!43518 Rule!13730 List!43516 List!43516 Rule!13730) Unit!62828)

(assert (=> d!1207596 (= lt!1451739 (choose!24704 thiss!21717 rules!2999 (rule!10059 token!484) lt!1451483 lt!1451490 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(assert (=> d!1207596 (isPrefix!4052 lt!1451483 lt!1451490)))

(assert (=> d!1207596 (= (lemmaMaxPrefNoSmallerRuleMatches!293 thiss!21717 rules!2999 (rule!10059 token!484) lt!1451483 lt!1451490 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451739)))

(declare-fun bs!592183 () Bool)

(assert (= bs!592183 d!1207596))

(assert (=> bs!592183 m!4668429))

(declare-fun m!4668849 () Bool)

(assert (=> bs!592183 m!4668849))

(assert (=> bs!592183 m!4668405))

(assert (=> b!4062137 d!1207596))

(declare-fun d!1207598 () Bool)

(declare-fun e!2520939 () Bool)

(assert (=> d!1207598 e!2520939))

(declare-fun c!701603 () Bool)

(assert (=> d!1207598 (= c!701603 (is-EmptyExpr!11870 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun lt!1451740 () Bool)

(declare-fun e!2520941 () Bool)

(assert (=> d!1207598 (= lt!1451740 e!2520941)))

(declare-fun c!701604 () Bool)

(assert (=> d!1207598 (= c!701604 (isEmpty!25896 lt!1451483))))

(assert (=> d!1207598 (validRegex!5371 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(assert (=> d!1207598 (= (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451483) lt!1451740)))

(declare-fun bm!288236 () Bool)

(declare-fun call!288241 () Bool)

(assert (=> bm!288236 (= call!288241 (isEmpty!25896 lt!1451483))))

(declare-fun b!4062432 () Bool)

(declare-fun res!1657243 () Bool)

(declare-fun e!2520938 () Bool)

(assert (=> b!4062432 (=> res!1657243 e!2520938)))

(declare-fun e!2520940 () Bool)

(assert (=> b!4062432 (= res!1657243 e!2520940)))

(declare-fun res!1657237 () Bool)

(assert (=> b!4062432 (=> (not res!1657237) (not e!2520940))))

(assert (=> b!4062432 (= res!1657237 lt!1451740)))

(declare-fun b!4062433 () Bool)

(declare-fun res!1657239 () Bool)

(assert (=> b!4062433 (=> res!1657239 e!2520938)))

(assert (=> b!4062433 (= res!1657239 (not (is-ElementMatch!11870 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(declare-fun e!2520937 () Bool)

(assert (=> b!4062433 (= e!2520937 e!2520938)))

(declare-fun b!4062434 () Bool)

(assert (=> b!4062434 (= e!2520939 (= lt!1451740 call!288241))))

(declare-fun b!4062435 () Bool)

(declare-fun res!1657242 () Bool)

(declare-fun e!2520943 () Bool)

(assert (=> b!4062435 (=> res!1657242 e!2520943)))

(assert (=> b!4062435 (= res!1657242 (not (isEmpty!25896 (tail!6306 lt!1451483))))))

(declare-fun b!4062436 () Bool)

(declare-fun e!2520942 () Bool)

(assert (=> b!4062436 (= e!2520938 e!2520942)))

(declare-fun res!1657240 () Bool)

(assert (=> b!4062436 (=> (not res!1657240) (not e!2520942))))

(assert (=> b!4062436 (= res!1657240 (not lt!1451740))))

(declare-fun b!4062437 () Bool)

(assert (=> b!4062437 (= e!2520941 (nullable!4171 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun b!4062438 () Bool)

(assert (=> b!4062438 (= e!2520942 e!2520943)))

(declare-fun res!1657241 () Bool)

(assert (=> b!4062438 (=> res!1657241 e!2520943)))

(assert (=> b!4062438 (= res!1657241 call!288241)))

(declare-fun b!4062439 () Bool)

(assert (=> b!4062439 (= e!2520943 (not (= (head!8574 lt!1451483) (c!701557 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))))

(declare-fun b!4062440 () Bool)

(declare-fun res!1657244 () Bool)

(assert (=> b!4062440 (=> (not res!1657244) (not e!2520940))))

(assert (=> b!4062440 (= res!1657244 (not call!288241))))

(declare-fun b!4062441 () Bool)

(assert (=> b!4062441 (= e!2520939 e!2520937)))

(declare-fun c!701605 () Bool)

(assert (=> b!4062441 (= c!701605 (is-EmptyLang!11870 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun b!4062442 () Bool)

(assert (=> b!4062442 (= e!2520940 (= (head!8574 lt!1451483) (c!701557 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(declare-fun b!4062443 () Bool)

(assert (=> b!4062443 (= e!2520941 (matchR!5823 (derivativeStep!3576 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (head!8574 lt!1451483)) (tail!6306 lt!1451483)))))

(declare-fun b!4062444 () Bool)

(assert (=> b!4062444 (= e!2520937 (not lt!1451740))))

(declare-fun b!4062445 () Bool)

(declare-fun res!1657238 () Bool)

(assert (=> b!4062445 (=> (not res!1657238) (not e!2520940))))

(assert (=> b!4062445 (= res!1657238 (isEmpty!25896 (tail!6306 lt!1451483)))))

(assert (= (and d!1207598 c!701604) b!4062437))

(assert (= (and d!1207598 (not c!701604)) b!4062443))

(assert (= (and d!1207598 c!701603) b!4062434))

(assert (= (and d!1207598 (not c!701603)) b!4062441))

(assert (= (and b!4062441 c!701605) b!4062444))

(assert (= (and b!4062441 (not c!701605)) b!4062433))

(assert (= (and b!4062433 (not res!1657239)) b!4062432))

(assert (= (and b!4062432 res!1657237) b!4062440))

(assert (= (and b!4062440 res!1657244) b!4062445))

(assert (= (and b!4062445 res!1657238) b!4062442))

(assert (= (and b!4062432 (not res!1657243)) b!4062436))

(assert (= (and b!4062436 res!1657240) b!4062438))

(assert (= (and b!4062438 (not res!1657241)) b!4062435))

(assert (= (and b!4062435 (not res!1657242)) b!4062439))

(assert (= (or b!4062434 b!4062438 b!4062440) bm!288236))

(assert (=> b!4062437 m!4668731))

(assert (=> b!4062445 m!4668749))

(assert (=> b!4062445 m!4668749))

(assert (=> b!4062445 m!4668751))

(assert (=> b!4062443 m!4668753))

(assert (=> b!4062443 m!4668753))

(declare-fun m!4668851 () Bool)

(assert (=> b!4062443 m!4668851))

(assert (=> b!4062443 m!4668749))

(assert (=> b!4062443 m!4668851))

(assert (=> b!4062443 m!4668749))

(declare-fun m!4668853 () Bool)

(assert (=> b!4062443 m!4668853))

(assert (=> bm!288236 m!4668759))

(assert (=> b!4062439 m!4668753))

(assert (=> b!4062442 m!4668753))

(assert (=> d!1207598 m!4668759))

(assert (=> d!1207598 m!4668745))

(assert (=> b!4062435 m!4668749))

(assert (=> b!4062435 m!4668749))

(assert (=> b!4062435 m!4668751))

(assert (=> b!4062137 d!1207598))

(declare-fun b!4062448 () Bool)

(declare-fun res!1657245 () Bool)

(declare-fun e!2520944 () Bool)

(assert (=> b!4062448 (=> (not res!1657245) (not e!2520944))))

(declare-fun lt!1451741 () List!43516)

(assert (=> b!4062448 (= res!1657245 (= (size!32444 lt!1451741) (+ (size!32444 lt!1451473) (size!32444 lt!1451469))))))

(declare-fun b!4062446 () Bool)

(declare-fun e!2520945 () List!43516)

(assert (=> b!4062446 (= e!2520945 lt!1451469)))

(declare-fun b!4062449 () Bool)

(assert (=> b!4062449 (= e!2520944 (or (not (= lt!1451469 Nil!43392)) (= lt!1451741 lt!1451473)))))

(declare-fun d!1207600 () Bool)

(assert (=> d!1207600 e!2520944))

(declare-fun res!1657246 () Bool)

(assert (=> d!1207600 (=> (not res!1657246) (not e!2520944))))

(assert (=> d!1207600 (= res!1657246 (= (content!6621 lt!1451741) (set.union (content!6621 lt!1451473) (content!6621 lt!1451469))))))

(assert (=> d!1207600 (= lt!1451741 e!2520945)))

(declare-fun c!701606 () Bool)

(assert (=> d!1207600 (= c!701606 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207600 (= (++!11367 lt!1451473 lt!1451469) lt!1451741)))

(declare-fun b!4062447 () Bool)

(assert (=> b!4062447 (= e!2520945 (Cons!43392 (h!48812 lt!1451473) (++!11367 (t!336675 lt!1451473) lt!1451469)))))

(assert (= (and d!1207600 c!701606) b!4062446))

(assert (= (and d!1207600 (not c!701606)) b!4062447))

(assert (= (and d!1207600 res!1657246) b!4062448))

(assert (= (and b!4062448 res!1657245) b!4062449))

(declare-fun m!4668855 () Bool)

(assert (=> b!4062448 m!4668855))

(assert (=> b!4062448 m!4668379))

(declare-fun m!4668857 () Bool)

(assert (=> b!4062448 m!4668857))

(declare-fun m!4668859 () Bool)

(assert (=> d!1207600 m!4668859))

(declare-fun m!4668861 () Bool)

(assert (=> d!1207600 m!4668861))

(declare-fun m!4668863 () Bool)

(assert (=> d!1207600 m!4668863))

(declare-fun m!4668865 () Bool)

(assert (=> b!4062447 m!4668865))

(assert (=> b!4062135 d!1207600))

(declare-fun d!1207602 () Bool)

(declare-fun lt!1451742 () List!43516)

(assert (=> d!1207602 (= (++!11367 lt!1451473 lt!1451742) lt!1451489)))

(declare-fun e!2520946 () List!43516)

(assert (=> d!1207602 (= lt!1451742 e!2520946)))

(declare-fun c!701607 () Bool)

(assert (=> d!1207602 (= c!701607 (is-Cons!43392 lt!1451473))))

(assert (=> d!1207602 (>= (size!32444 lt!1451489) (size!32444 lt!1451473))))

(assert (=> d!1207602 (= (getSuffix!2469 lt!1451489 lt!1451473) lt!1451742)))

(declare-fun b!4062450 () Bool)

(assert (=> b!4062450 (= e!2520946 (getSuffix!2469 (tail!6306 lt!1451489) (t!336675 lt!1451473)))))

(declare-fun b!4062451 () Bool)

(assert (=> b!4062451 (= e!2520946 lt!1451489)))

(assert (= (and d!1207602 c!701607) b!4062450))

(assert (= (and d!1207602 (not c!701607)) b!4062451))

(declare-fun m!4668867 () Bool)

(assert (=> d!1207602 m!4668867))

(assert (=> d!1207602 m!4668769))

(assert (=> d!1207602 m!4668379))

(assert (=> b!4062450 m!4668765))

(assert (=> b!4062450 m!4668765))

(declare-fun m!4668869 () Bool)

(assert (=> b!4062450 m!4668869))

(assert (=> b!4062135 d!1207602))

(declare-fun d!1207604 () Bool)

(declare-fun lt!1451743 () Int)

(assert (=> d!1207604 (>= lt!1451743 0)))

(declare-fun e!2520947 () Int)

(assert (=> d!1207604 (= lt!1451743 e!2520947)))

(declare-fun c!701608 () Bool)

(assert (=> d!1207604 (= c!701608 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207604 (= (size!32444 lt!1451473) lt!1451743)))

(declare-fun b!4062452 () Bool)

(assert (=> b!4062452 (= e!2520947 0)))

(declare-fun b!4062453 () Bool)

(assert (=> b!4062453 (= e!2520947 (+ 1 (size!32444 (t!336675 lt!1451473))))))

(assert (= (and d!1207604 c!701608) b!4062452))

(assert (= (and d!1207604 (not c!701608)) b!4062453))

(declare-fun m!4668871 () Bool)

(assert (=> b!4062453 m!4668871))

(assert (=> b!4062114 d!1207604))

(declare-fun d!1207606 () Bool)

(assert (=> d!1207606 (= (size!32443 (_1!24360 (v!39800 lt!1451450))) (size!32444 (originalCharacters!7565 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun Unit!62845 () Unit!62828)

(assert (=> d!1207606 (= (lemmaCharactersSize!1484 (_1!24360 (v!39800 lt!1451450))) Unit!62845)))

(declare-fun bs!592184 () Bool)

(assert (= bs!592184 d!1207606))

(declare-fun m!4668873 () Bool)

(assert (=> bs!592184 m!4668873))

(assert (=> b!4062114 d!1207606))

(declare-fun d!1207608 () Bool)

(assert (=> d!1207608 (= (size!32443 token!484) (size!32444 (originalCharacters!7565 token!484)))))

(declare-fun Unit!62846 () Unit!62828)

(assert (=> d!1207608 (= (lemmaCharactersSize!1484 token!484) Unit!62846)))

(declare-fun bs!592185 () Bool)

(assert (= bs!592185 d!1207608))

(assert (=> bs!592185 m!4668351))

(assert (=> b!4062114 d!1207608))

(declare-fun d!1207610 () Bool)

(declare-fun e!2520950 () Bool)

(assert (=> d!1207610 e!2520950))

(declare-fun res!1657249 () Bool)

(assert (=> d!1207610 (=> (not res!1657249) (not e!2520950))))

(declare-fun semiInverseModEq!2979 (Int Int) Bool)

(assert (=> d!1207610 (= res!1657249 (semiInverseModEq!2979 (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) (toValue!9525 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(declare-fun Unit!62847 () Unit!62828)

(assert (=> d!1207610 (= (lemmaInv!1174 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) Unit!62847)))

(declare-fun b!4062456 () Bool)

(declare-fun equivClasses!2878 (Int Int) Bool)

(assert (=> b!4062456 (= e!2520950 (equivClasses!2878 (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) (toValue!9525 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(assert (= (and d!1207610 res!1657249) b!4062456))

(declare-fun m!4668875 () Bool)

(assert (=> d!1207610 m!4668875))

(declare-fun m!4668877 () Bool)

(assert (=> b!4062456 m!4668877))

(assert (=> b!4062114 d!1207610))

(declare-fun d!1207612 () Bool)

(declare-fun lt!1451746 () BalanceConc!25946)

(assert (=> d!1207612 (= (list!16175 lt!1451746) (originalCharacters!7565 (_1!24360 (v!39800 lt!1451450))))))

(declare-fun dynLambda!18439 (Int TokenValue!7195) BalanceConc!25946)

(assert (=> d!1207612 (= lt!1451746 (dynLambda!18439 (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) (value!219138 (_1!24360 (v!39800 lt!1451450)))))))

(assert (=> d!1207612 (= (charsOf!4781 (_1!24360 (v!39800 lt!1451450))) lt!1451746)))

(declare-fun b_lambda!118711 () Bool)

(assert (=> (not b_lambda!118711) (not d!1207612)))

(declare-fun t!336682 () Bool)

(declare-fun tb!244385 () Bool)

(assert (=> (and b!4062127 (= (toChars!9384 (transformation!6965 (rule!10059 token!484))) (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))) t!336682) tb!244385))

(declare-fun b!4062461 () Bool)

(declare-fun e!2520953 () Bool)

(declare-fun tp!1230319 () Bool)

(declare-fun inv!58017 (Conc!13176) Bool)

(assert (=> b!4062461 (= e!2520953 (and (inv!58017 (c!701556 (dynLambda!18439 (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) (value!219138 (_1!24360 (v!39800 lt!1451450)))))) tp!1230319))))

(declare-fun result!296122 () Bool)

(declare-fun inv!58018 (BalanceConc!25946) Bool)

(assert (=> tb!244385 (= result!296122 (and (inv!58018 (dynLambda!18439 (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) (value!219138 (_1!24360 (v!39800 lt!1451450))))) e!2520953))))

(assert (= tb!244385 b!4062461))

(declare-fun m!4668879 () Bool)

(assert (=> b!4062461 m!4668879))

(declare-fun m!4668881 () Bool)

(assert (=> tb!244385 m!4668881))

(assert (=> d!1207612 t!336682))

(declare-fun b_and!312331 () Bool)

(assert (= b_and!312317 (and (=> t!336682 result!296122) b_and!312331)))

(declare-fun tb!244387 () Bool)

(declare-fun t!336684 () Bool)

(assert (=> (and b!4062136 (= (toChars!9384 (transformation!6965 (h!48814 rules!2999))) (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))) t!336684) tb!244387))

(declare-fun result!296126 () Bool)

(assert (= result!296126 result!296122))

(assert (=> d!1207612 t!336684))

(declare-fun b_and!312333 () Bool)

(assert (= b_and!312321 (and (=> t!336684 result!296126) b_and!312333)))

(declare-fun m!4668883 () Bool)

(assert (=> d!1207612 m!4668883))

(declare-fun m!4668885 () Bool)

(assert (=> d!1207612 m!4668885))

(assert (=> b!4062114 d!1207612))

(declare-fun d!1207614 () Bool)

(declare-fun fromListB!2365 (List!43516) BalanceConc!25946)

(assert (=> d!1207614 (= (seqFromList!5182 lt!1451473) (fromListB!2365 lt!1451473))))

(declare-fun bs!592186 () Bool)

(assert (= bs!592186 d!1207614))

(declare-fun m!4668887 () Bool)

(assert (=> bs!592186 m!4668887))

(assert (=> b!4062114 d!1207614))

(declare-fun d!1207616 () Bool)

(declare-fun res!1657254 () Bool)

(declare-fun e!2520956 () Bool)

(assert (=> d!1207616 (=> (not res!1657254) (not e!2520956))))

(assert (=> d!1207616 (= res!1657254 (validRegex!5371 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))))

(assert (=> d!1207616 (= (ruleValid!2895 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) e!2520956)))

(declare-fun b!4062466 () Bool)

(declare-fun res!1657255 () Bool)

(assert (=> b!4062466 (=> (not res!1657255) (not e!2520956))))

(assert (=> b!4062466 (= res!1657255 (not (nullable!4171 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))))

(declare-fun b!4062467 () Bool)

(assert (=> b!4062467 (= e!2520956 (not (= (tag!7825 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (String!49696 ""))))))

(assert (= (and d!1207616 res!1657254) b!4062466))

(assert (= (and b!4062466 res!1657255) b!4062467))

(assert (=> d!1207616 m!4668745))

(assert (=> b!4062466 m!4668731))

(assert (=> b!4062114 d!1207616))

(declare-fun d!1207618 () Bool)

(declare-fun dynLambda!18440 (Int BalanceConc!25946) TokenValue!7195)

(assert (=> d!1207618 (= (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (seqFromList!5182 lt!1451473)) (dynLambda!18440 (toValue!9525 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) (seqFromList!5182 lt!1451473)))))

(declare-fun b_lambda!118713 () Bool)

(assert (=> (not b_lambda!118713) (not d!1207618)))

(declare-fun t!336686 () Bool)

(declare-fun tb!244389 () Bool)

(assert (=> (and b!4062127 (= (toValue!9525 (transformation!6965 (rule!10059 token!484))) (toValue!9525 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))) t!336686) tb!244389))

(declare-fun result!296128 () Bool)

(assert (=> tb!244389 (= result!296128 (inv!21 (dynLambda!18440 (toValue!9525 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450))))) (seqFromList!5182 lt!1451473))))))

(declare-fun m!4668889 () Bool)

(assert (=> tb!244389 m!4668889))

(assert (=> d!1207618 t!336686))

(declare-fun b_and!312335 () Bool)

(assert (= b_and!312315 (and (=> t!336686 result!296128) b_and!312335)))

(declare-fun t!336688 () Bool)

(declare-fun tb!244391 () Bool)

(assert (=> (and b!4062136 (= (toValue!9525 (transformation!6965 (h!48814 rules!2999))) (toValue!9525 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))) t!336688) tb!244391))

(declare-fun result!296132 () Bool)

(assert (= result!296132 result!296128))

(assert (=> d!1207618 t!336688))

(declare-fun b_and!312337 () Bool)

(assert (= b_and!312319 (and (=> t!336688 result!296132) b_and!312337)))

(assert (=> d!1207618 m!4668367))

(declare-fun m!4668891 () Bool)

(assert (=> d!1207618 m!4668891))

(assert (=> b!4062114 d!1207618))

(declare-fun d!1207620 () Bool)

(assert (=> d!1207620 (isPrefix!4052 lt!1451473 (++!11367 lt!1451473 newSuffixResult!27))))

(declare-fun lt!1451749 () Unit!62828)

(declare-fun choose!24705 (List!43516 List!43516) Unit!62828)

(assert (=> d!1207620 (= lt!1451749 (choose!24705 lt!1451473 newSuffixResult!27))))

(assert (=> d!1207620 (= (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451473 newSuffixResult!27) lt!1451749)))

(declare-fun bs!592187 () Bool)

(assert (= bs!592187 d!1207620))

(assert (=> bs!592187 m!4668375))

(assert (=> bs!592187 m!4668375))

(assert (=> bs!592187 m!4668377))

(declare-fun m!4668893 () Bool)

(assert (=> bs!592187 m!4668893))

(assert (=> b!4062114 d!1207620))

(declare-fun d!1207622 () Bool)

(assert (=> d!1207622 (isPrefix!4052 lt!1451473 (++!11367 lt!1451473 (_2!24360 (v!39800 lt!1451450))))))

(declare-fun lt!1451750 () Unit!62828)

(assert (=> d!1207622 (= lt!1451750 (choose!24705 lt!1451473 (_2!24360 (v!39800 lt!1451450))))))

(assert (=> d!1207622 (= (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451473 (_2!24360 (v!39800 lt!1451450))) lt!1451750)))

(declare-fun bs!592188 () Bool)

(assert (= bs!592188 d!1207622))

(assert (=> bs!592188 m!4668353))

(assert (=> bs!592188 m!4668353))

(declare-fun m!4668895 () Bool)

(assert (=> bs!592188 m!4668895))

(declare-fun m!4668897 () Bool)

(assert (=> bs!592188 m!4668897))

(assert (=> b!4062114 d!1207622))

(declare-fun b!4062471 () Bool)

(declare-fun res!1657256 () Bool)

(declare-fun e!2520962 () Bool)

(assert (=> b!4062471 (=> (not res!1657256) (not e!2520962))))

(assert (=> b!4062471 (= res!1657256 (= (head!8574 lt!1451473) (head!8574 (++!11367 lt!1451473 newSuffixResult!27))))))

(declare-fun d!1207624 () Bool)

(declare-fun e!2520960 () Bool)

(assert (=> d!1207624 e!2520960))

(declare-fun res!1657257 () Bool)

(assert (=> d!1207624 (=> res!1657257 e!2520960)))

(declare-fun lt!1451751 () Bool)

(assert (=> d!1207624 (= res!1657257 (not lt!1451751))))

(declare-fun e!2520961 () Bool)

(assert (=> d!1207624 (= lt!1451751 e!2520961)))

(declare-fun res!1657258 () Bool)

(assert (=> d!1207624 (=> res!1657258 e!2520961)))

(assert (=> d!1207624 (= res!1657258 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207624 (= (isPrefix!4052 lt!1451473 (++!11367 lt!1451473 newSuffixResult!27)) lt!1451751)))

(declare-fun b!4062472 () Bool)

(assert (=> b!4062472 (= e!2520962 (isPrefix!4052 (tail!6306 lt!1451473) (tail!6306 (++!11367 lt!1451473 newSuffixResult!27))))))

(declare-fun b!4062473 () Bool)

(assert (=> b!4062473 (= e!2520960 (>= (size!32444 (++!11367 lt!1451473 newSuffixResult!27)) (size!32444 lt!1451473)))))

(declare-fun b!4062470 () Bool)

(assert (=> b!4062470 (= e!2520961 e!2520962)))

(declare-fun res!1657259 () Bool)

(assert (=> b!4062470 (=> (not res!1657259) (not e!2520962))))

(assert (=> b!4062470 (= res!1657259 (not (is-Nil!43392 (++!11367 lt!1451473 newSuffixResult!27))))))

(assert (= (and d!1207624 (not res!1657258)) b!4062470))

(assert (= (and b!4062470 res!1657259) b!4062471))

(assert (= (and b!4062471 res!1657256) b!4062472))

(assert (= (and d!1207624 (not res!1657257)) b!4062473))

(assert (=> b!4062471 m!4668737))

(assert (=> b!4062471 m!4668375))

(declare-fun m!4668899 () Bool)

(assert (=> b!4062471 m!4668899))

(assert (=> b!4062472 m!4668733))

(assert (=> b!4062472 m!4668375))

(declare-fun m!4668901 () Bool)

(assert (=> b!4062472 m!4668901))

(assert (=> b!4062472 m!4668733))

(assert (=> b!4062472 m!4668901))

(declare-fun m!4668903 () Bool)

(assert (=> b!4062472 m!4668903))

(assert (=> b!4062473 m!4668375))

(declare-fun m!4668905 () Bool)

(assert (=> b!4062473 m!4668905))

(assert (=> b!4062473 m!4668379))

(assert (=> b!4062114 d!1207624))

(declare-fun b!4062476 () Bool)

(declare-fun res!1657260 () Bool)

(declare-fun e!2520963 () Bool)

(assert (=> b!4062476 (=> (not res!1657260) (not e!2520963))))

(declare-fun lt!1451752 () List!43516)

(assert (=> b!4062476 (= res!1657260 (= (size!32444 lt!1451752) (+ (size!32444 lt!1451473) (size!32444 newSuffixResult!27))))))

(declare-fun b!4062474 () Bool)

(declare-fun e!2520964 () List!43516)

(assert (=> b!4062474 (= e!2520964 newSuffixResult!27)))

(declare-fun b!4062477 () Bool)

(assert (=> b!4062477 (= e!2520963 (or (not (= newSuffixResult!27 Nil!43392)) (= lt!1451752 lt!1451473)))))

(declare-fun d!1207626 () Bool)

(assert (=> d!1207626 e!2520963))

(declare-fun res!1657261 () Bool)

(assert (=> d!1207626 (=> (not res!1657261) (not e!2520963))))

(assert (=> d!1207626 (= res!1657261 (= (content!6621 lt!1451752) (set.union (content!6621 lt!1451473) (content!6621 newSuffixResult!27))))))

(assert (=> d!1207626 (= lt!1451752 e!2520964)))

(declare-fun c!701609 () Bool)

(assert (=> d!1207626 (= c!701609 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207626 (= (++!11367 lt!1451473 newSuffixResult!27) lt!1451752)))

(declare-fun b!4062475 () Bool)

(assert (=> b!4062475 (= e!2520964 (Cons!43392 (h!48812 lt!1451473) (++!11367 (t!336675 lt!1451473) newSuffixResult!27)))))

(assert (= (and d!1207626 c!701609) b!4062474))

(assert (= (and d!1207626 (not c!701609)) b!4062475))

(assert (= (and d!1207626 res!1657261) b!4062476))

(assert (= (and b!4062476 res!1657260) b!4062477))

(declare-fun m!4668907 () Bool)

(assert (=> b!4062476 m!4668907))

(assert (=> b!4062476 m!4668379))

(declare-fun m!4668909 () Bool)

(assert (=> b!4062476 m!4668909))

(declare-fun m!4668911 () Bool)

(assert (=> d!1207626 m!4668911))

(assert (=> d!1207626 m!4668861))

(declare-fun m!4668913 () Bool)

(assert (=> d!1207626 m!4668913))

(declare-fun m!4668915 () Bool)

(assert (=> b!4062475 m!4668915))

(assert (=> b!4062114 d!1207626))

(declare-fun b!4062531 () Bool)

(declare-fun e!2520987 () Bool)

(declare-fun lt!1451780 () Option!9379)

(declare-fun get!14233 (Option!9379) tuple2!42452)

(assert (=> b!4062531 (= e!2520987 (= (size!32443 (_1!24360 (get!14233 lt!1451780))) (size!32444 (originalCharacters!7565 (_1!24360 (get!14233 lt!1451780))))))))

(declare-fun d!1207628 () Bool)

(declare-fun e!2520989 () Bool)

(assert (=> d!1207628 e!2520989))

(declare-fun res!1657304 () Bool)

(assert (=> d!1207628 (=> res!1657304 e!2520989)))

(declare-fun isEmpty!25897 (Option!9379) Bool)

(assert (=> d!1207628 (= res!1657304 (isEmpty!25897 lt!1451780))))

(declare-fun e!2520988 () Option!9379)

(assert (=> d!1207628 (= lt!1451780 e!2520988)))

(declare-fun c!701617 () Bool)

(declare-datatypes ((tuple2!42456 0))(
  ( (tuple2!42457 (_1!24362 List!43516) (_2!24362 List!43516)) )
))
(declare-fun lt!1451783 () tuple2!42456)

(assert (=> d!1207628 (= c!701617 (isEmpty!25896 (_1!24362 lt!1451783)))))

(declare-fun findLongestMatch!1321 (Regex!11870 List!43516) tuple2!42456)

(assert (=> d!1207628 (= lt!1451783 (findLongestMatch!1321 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451489))))

(assert (=> d!1207628 (ruleValid!2895 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))

(assert (=> d!1207628 (= (maxPrefixOneRule!2864 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))) lt!1451489) lt!1451780)))

(declare-fun b!4062532 () Bool)

(declare-fun res!1657306 () Bool)

(assert (=> b!4062532 (=> (not res!1657306) (not e!2520987))))

(assert (=> b!4062532 (= res!1657306 (= (++!11367 (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451780)))) (_2!24360 (get!14233 lt!1451780))) lt!1451489))))

(declare-fun b!4062533 () Bool)

(declare-fun res!1657301 () Bool)

(assert (=> b!4062533 (=> (not res!1657301) (not e!2520987))))

(assert (=> b!4062533 (= res!1657301 (= (rule!10059 (_1!24360 (get!14233 lt!1451780))) (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(declare-fun b!4062534 () Bool)

(declare-fun res!1657303 () Bool)

(assert (=> b!4062534 (=> (not res!1657303) (not e!2520987))))

(assert (=> b!4062534 (= res!1657303 (= (value!219138 (_1!24360 (get!14233 lt!1451780))) (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (get!14233 lt!1451780)))) (seqFromList!5182 (originalCharacters!7565 (_1!24360 (get!14233 lt!1451780)))))))))

(declare-fun b!4062535 () Bool)

(declare-fun res!1657302 () Bool)

(assert (=> b!4062535 (=> (not res!1657302) (not e!2520987))))

(assert (=> b!4062535 (= res!1657302 (< (size!32444 (_2!24360 (get!14233 lt!1451780))) (size!32444 lt!1451489)))))

(declare-fun b!4062536 () Bool)

(assert (=> b!4062536 (= e!2520989 e!2520987)))

(declare-fun res!1657305 () Bool)

(assert (=> b!4062536 (=> (not res!1657305) (not e!2520987))))

(assert (=> b!4062536 (= res!1657305 (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451780))))))))

(declare-fun b!4062537 () Bool)

(assert (=> b!4062537 (= e!2520988 None!9378)))

(declare-fun b!4062538 () Bool)

(declare-fun size!32447 (BalanceConc!25946) Int)

(assert (=> b!4062538 (= e!2520988 (Some!9378 (tuple2!42453 (Token!13069 (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (seqFromList!5182 (_1!24362 lt!1451783))) (rule!10059 (_1!24360 (v!39800 lt!1451450))) (size!32447 (seqFromList!5182 (_1!24362 lt!1451783))) (_1!24362 lt!1451783)) (_2!24362 lt!1451783))))))

(declare-fun lt!1451784 () Unit!62828)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1381 (Regex!11870 List!43516) Unit!62828)

(assert (=> b!4062538 (= lt!1451784 (longestMatchIsAcceptedByMatchOrIsEmpty!1381 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451489))))

(declare-fun res!1657307 () Bool)

(declare-fun findLongestMatchInner!1408 (Regex!11870 List!43516 Int List!43516 List!43516 Int) tuple2!42456)

(assert (=> b!4062538 (= res!1657307 (isEmpty!25896 (_1!24362 (findLongestMatchInner!1408 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) Nil!43392 (size!32444 Nil!43392) lt!1451489 lt!1451489 (size!32444 lt!1451489)))))))

(declare-fun e!2520986 () Bool)

(assert (=> b!4062538 (=> res!1657307 e!2520986)))

(assert (=> b!4062538 e!2520986))

(declare-fun lt!1451781 () Unit!62828)

(assert (=> b!4062538 (= lt!1451781 lt!1451784)))

(declare-fun lt!1451782 () Unit!62828)

(declare-fun lemmaSemiInverse!1936 (TokenValueInjection!13818 BalanceConc!25946) Unit!62828)

(assert (=> b!4062538 (= lt!1451782 (lemmaSemiInverse!1936 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (seqFromList!5182 (_1!24362 lt!1451783))))))

(declare-fun b!4062539 () Bool)

(assert (=> b!4062539 (= e!2520986 (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (_1!24362 (findLongestMatchInner!1408 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) Nil!43392 (size!32444 Nil!43392) lt!1451489 lt!1451489 (size!32444 lt!1451489)))))))

(assert (= (and d!1207628 c!701617) b!4062537))

(assert (= (and d!1207628 (not c!701617)) b!4062538))

(assert (= (and b!4062538 (not res!1657307)) b!4062539))

(assert (= (and d!1207628 (not res!1657304)) b!4062536))

(assert (= (and b!4062536 res!1657305) b!4062532))

(assert (= (and b!4062532 res!1657306) b!4062535))

(assert (= (and b!4062535 res!1657302) b!4062533))

(assert (= (and b!4062533 res!1657301) b!4062534))

(assert (= (and b!4062534 res!1657303) b!4062531))

(declare-fun m!4668947 () Bool)

(assert (=> b!4062531 m!4668947))

(declare-fun m!4668949 () Bool)

(assert (=> b!4062531 m!4668949))

(declare-fun m!4668951 () Bool)

(assert (=> d!1207628 m!4668951))

(declare-fun m!4668953 () Bool)

(assert (=> d!1207628 m!4668953))

(declare-fun m!4668955 () Bool)

(assert (=> d!1207628 m!4668955))

(assert (=> d!1207628 m!4668371))

(assert (=> b!4062534 m!4668947))

(declare-fun m!4668957 () Bool)

(assert (=> b!4062534 m!4668957))

(assert (=> b!4062534 m!4668957))

(declare-fun m!4668959 () Bool)

(assert (=> b!4062534 m!4668959))

(declare-fun m!4668963 () Bool)

(assert (=> b!4062538 m!4668963))

(assert (=> b!4062538 m!4668963))

(declare-fun m!4668967 () Bool)

(assert (=> b!4062538 m!4668967))

(declare-fun m!4668971 () Bool)

(assert (=> b!4062538 m!4668971))

(assert (=> b!4062538 m!4668769))

(declare-fun m!4668975 () Bool)

(assert (=> b!4062538 m!4668975))

(assert (=> b!4062538 m!4668963))

(declare-fun m!4668979 () Bool)

(assert (=> b!4062538 m!4668979))

(declare-fun m!4668981 () Bool)

(assert (=> b!4062538 m!4668981))

(assert (=> b!4062538 m!4668769))

(assert (=> b!4062538 m!4668971))

(assert (=> b!4062538 m!4668963))

(declare-fun m!4668983 () Bool)

(assert (=> b!4062538 m!4668983))

(declare-fun m!4668985 () Bool)

(assert (=> b!4062538 m!4668985))

(assert (=> b!4062539 m!4668971))

(assert (=> b!4062539 m!4668769))

(assert (=> b!4062539 m!4668971))

(assert (=> b!4062539 m!4668769))

(assert (=> b!4062539 m!4668975))

(declare-fun m!4668987 () Bool)

(assert (=> b!4062539 m!4668987))

(assert (=> b!4062533 m!4668947))

(assert (=> b!4062532 m!4668947))

(declare-fun m!4668989 () Bool)

(assert (=> b!4062532 m!4668989))

(assert (=> b!4062532 m!4668989))

(declare-fun m!4668991 () Bool)

(assert (=> b!4062532 m!4668991))

(assert (=> b!4062532 m!4668991))

(declare-fun m!4668993 () Bool)

(assert (=> b!4062532 m!4668993))

(assert (=> b!4062536 m!4668947))

(assert (=> b!4062536 m!4668989))

(assert (=> b!4062536 m!4668989))

(assert (=> b!4062536 m!4668991))

(assert (=> b!4062536 m!4668991))

(declare-fun m!4668995 () Bool)

(assert (=> b!4062536 m!4668995))

(assert (=> b!4062535 m!4668947))

(declare-fun m!4668997 () Bool)

(assert (=> b!4062535 m!4668997))

(assert (=> b!4062535 m!4668769))

(assert (=> b!4062114 d!1207628))

(declare-fun b!4062546 () Bool)

(declare-fun res!1657310 () Bool)

(declare-fun e!2520992 () Bool)

(assert (=> b!4062546 (=> (not res!1657310) (not e!2520992))))

(declare-fun lt!1451786 () List!43516)

(assert (=> b!4062546 (= res!1657310 (= (size!32444 lt!1451786) (+ (size!32444 lt!1451473) (size!32444 (_2!24360 (v!39800 lt!1451450))))))))

(declare-fun b!4062544 () Bool)

(declare-fun e!2520993 () List!43516)

(assert (=> b!4062544 (= e!2520993 (_2!24360 (v!39800 lt!1451450)))))

(declare-fun b!4062547 () Bool)

(assert (=> b!4062547 (= e!2520992 (or (not (= (_2!24360 (v!39800 lt!1451450)) Nil!43392)) (= lt!1451786 lt!1451473)))))

(declare-fun d!1207634 () Bool)

(assert (=> d!1207634 e!2520992))

(declare-fun res!1657311 () Bool)

(assert (=> d!1207634 (=> (not res!1657311) (not e!2520992))))

(assert (=> d!1207634 (= res!1657311 (= (content!6621 lt!1451786) (set.union (content!6621 lt!1451473) (content!6621 (_2!24360 (v!39800 lt!1451450))))))))

(assert (=> d!1207634 (= lt!1451786 e!2520993)))

(declare-fun c!701619 () Bool)

(assert (=> d!1207634 (= c!701619 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207634 (= (++!11367 lt!1451473 (_2!24360 (v!39800 lt!1451450))) lt!1451786)))

(declare-fun b!4062545 () Bool)

(assert (=> b!4062545 (= e!2520993 (Cons!43392 (h!48812 lt!1451473) (++!11367 (t!336675 lt!1451473) (_2!24360 (v!39800 lt!1451450)))))))

(assert (= (and d!1207634 c!701619) b!4062544))

(assert (= (and d!1207634 (not c!701619)) b!4062545))

(assert (= (and d!1207634 res!1657311) b!4062546))

(assert (= (and b!4062546 res!1657310) b!4062547))

(declare-fun m!4668999 () Bool)

(assert (=> b!4062546 m!4668999))

(assert (=> b!4062546 m!4668379))

(declare-fun m!4669001 () Bool)

(assert (=> b!4062546 m!4669001))

(declare-fun m!4669003 () Bool)

(assert (=> d!1207634 m!4669003))

(assert (=> d!1207634 m!4668861))

(declare-fun m!4669005 () Bool)

(assert (=> d!1207634 m!4669005))

(declare-fun m!4669007 () Bool)

(assert (=> b!4062545 m!4669007))

(assert (=> b!4062114 d!1207634))

(declare-fun d!1207636 () Bool)

(assert (=> d!1207636 (ruleValid!2895 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))

(declare-fun lt!1451789 () Unit!62828)

(declare-fun choose!24706 (LexerInterface!6554 Rule!13730 List!43518) Unit!62828)

(assert (=> d!1207636 (= lt!1451789 (choose!24706 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))) rules!2999))))

(assert (=> d!1207636 (contains!8633 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450))))))

(assert (=> d!1207636 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1965 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))) rules!2999) lt!1451789)))

(declare-fun bs!592189 () Bool)

(assert (= bs!592189 d!1207636))

(assert (=> bs!592189 m!4668371))

(declare-fun m!4669009 () Bool)

(assert (=> bs!592189 m!4669009))

(assert (=> bs!592189 m!4668403))

(assert (=> b!4062114 d!1207636))

(declare-fun d!1207638 () Bool)

(assert (=> d!1207638 (= (maxPrefixOneRule!2864 thiss!21717 (rule!10059 (_1!24360 (v!39800 lt!1451450))) lt!1451489) (Some!9378 (tuple2!42453 (Token!13069 (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) (seqFromList!5182 lt!1451473)) (rule!10059 (_1!24360 (v!39800 lt!1451450))) (size!32444 lt!1451473) lt!1451473) (_2!24360 (v!39800 lt!1451450)))))))

(declare-fun lt!1451795 () Unit!62828)

(declare-fun choose!24707 (LexerInterface!6554 List!43518 List!43516 List!43516 List!43516 Rule!13730) Unit!62828)

(assert (=> d!1207638 (= lt!1451795 (choose!24707 thiss!21717 rules!2999 lt!1451473 lt!1451489 (_2!24360 (v!39800 lt!1451450)) (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(assert (=> d!1207638 (not (isEmpty!25894 rules!2999))))

(assert (=> d!1207638 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1670 thiss!21717 rules!2999 lt!1451473 lt!1451489 (_2!24360 (v!39800 lt!1451450)) (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451795)))

(declare-fun bs!592190 () Bool)

(assert (= bs!592190 d!1207638))

(declare-fun m!4669023 () Bool)

(assert (=> bs!592190 m!4669023))

(assert (=> bs!592190 m!4668441))

(assert (=> bs!592190 m!4668367))

(assert (=> bs!592190 m!4668369))

(assert (=> bs!592190 m!4668361))

(assert (=> bs!592190 m!4668367))

(assert (=> bs!592190 m!4668379))

(assert (=> b!4062114 d!1207638))

(declare-fun d!1207644 () Bool)

(declare-fun list!16177 (Conc!13176) List!43516)

(assert (=> d!1207644 (= (list!16175 (charsOf!4781 (_1!24360 (v!39800 lt!1451450)))) (list!16177 (c!701556 (charsOf!4781 (_1!24360 (v!39800 lt!1451450))))))))

(declare-fun bs!592191 () Bool)

(assert (= bs!592191 d!1207644))

(declare-fun m!4669025 () Bool)

(assert (=> bs!592191 m!4669025))

(assert (=> b!4062114 d!1207644))

(declare-fun b!4062566 () Bool)

(declare-fun res!1657318 () Bool)

(declare-fun e!2521005 () Bool)

(assert (=> b!4062566 (=> (not res!1657318) (not e!2521005))))

(assert (=> b!4062566 (= res!1657318 (= (head!8574 lt!1451473) (head!8574 lt!1451488)))))

(declare-fun d!1207646 () Bool)

(declare-fun e!2521003 () Bool)

(assert (=> d!1207646 e!2521003))

(declare-fun res!1657319 () Bool)

(assert (=> d!1207646 (=> res!1657319 e!2521003)))

(declare-fun lt!1451798 () Bool)

(assert (=> d!1207646 (= res!1657319 (not lt!1451798))))

(declare-fun e!2521004 () Bool)

(assert (=> d!1207646 (= lt!1451798 e!2521004)))

(declare-fun res!1657320 () Bool)

(assert (=> d!1207646 (=> res!1657320 e!2521004)))

(assert (=> d!1207646 (= res!1657320 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207646 (= (isPrefix!4052 lt!1451473 lt!1451488) lt!1451798)))

(declare-fun b!4062567 () Bool)

(assert (=> b!4062567 (= e!2521005 (isPrefix!4052 (tail!6306 lt!1451473) (tail!6306 lt!1451488)))))

(declare-fun b!4062568 () Bool)

(assert (=> b!4062568 (= e!2521003 (>= (size!32444 lt!1451488) (size!32444 lt!1451473)))))

(declare-fun b!4062565 () Bool)

(assert (=> b!4062565 (= e!2521004 e!2521005)))

(declare-fun res!1657321 () Bool)

(assert (=> b!4062565 (=> (not res!1657321) (not e!2521005))))

(assert (=> b!4062565 (= res!1657321 (not (is-Nil!43392 lt!1451488)))))

(assert (= (and d!1207646 (not res!1657320)) b!4062565))

(assert (= (and b!4062565 res!1657321) b!4062566))

(assert (= (and b!4062566 res!1657318) b!4062567))

(assert (= (and d!1207646 (not res!1657319)) b!4062568))

(assert (=> b!4062566 m!4668737))

(declare-fun m!4669027 () Bool)

(assert (=> b!4062566 m!4669027))

(assert (=> b!4062567 m!4668733))

(declare-fun m!4669029 () Bool)

(assert (=> b!4062567 m!4669029))

(assert (=> b!4062567 m!4668733))

(assert (=> b!4062567 m!4669029))

(declare-fun m!4669031 () Bool)

(assert (=> b!4062567 m!4669031))

(declare-fun m!4669033 () Bool)

(assert (=> b!4062568 m!4669033))

(assert (=> b!4062568 m!4668379))

(assert (=> b!4062114 d!1207646))

(declare-fun d!1207648 () Bool)

(assert (=> d!1207648 (= (isEmpty!25894 rules!2999) (is-Nil!43394 rules!2999))))

(assert (=> b!4062111 d!1207648))

(declare-fun b!4062571 () Bool)

(declare-fun res!1657322 () Bool)

(declare-fun e!2521006 () Bool)

(assert (=> b!4062571 (=> (not res!1657322) (not e!2521006))))

(declare-fun lt!1451800 () List!43516)

(assert (=> b!4062571 (= res!1657322 (= (size!32444 lt!1451800) (+ (size!32444 lt!1451483) (size!32444 lt!1451433))))))

(declare-fun b!4062569 () Bool)

(declare-fun e!2521007 () List!43516)

(assert (=> b!4062569 (= e!2521007 lt!1451433)))

(declare-fun b!4062572 () Bool)

(assert (=> b!4062572 (= e!2521006 (or (not (= lt!1451433 Nil!43392)) (= lt!1451800 lt!1451483)))))

(declare-fun d!1207650 () Bool)

(assert (=> d!1207650 e!2521006))

(declare-fun res!1657323 () Bool)

(assert (=> d!1207650 (=> (not res!1657323) (not e!2521006))))

(assert (=> d!1207650 (= res!1657323 (= (content!6621 lt!1451800) (set.union (content!6621 lt!1451483) (content!6621 lt!1451433))))))

(assert (=> d!1207650 (= lt!1451800 e!2521007)))

(declare-fun c!701623 () Bool)

(assert (=> d!1207650 (= c!701623 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207650 (= (++!11367 lt!1451483 lt!1451433) lt!1451800)))

(declare-fun b!4062570 () Bool)

(assert (=> b!4062570 (= e!2521007 (Cons!43392 (h!48812 lt!1451483) (++!11367 (t!336675 lt!1451483) lt!1451433)))))

(assert (= (and d!1207650 c!701623) b!4062569))

(assert (= (and d!1207650 (not c!701623)) b!4062570))

(assert (= (and d!1207650 res!1657323) b!4062571))

(assert (= (and b!4062571 res!1657322) b!4062572))

(declare-fun m!4669037 () Bool)

(assert (=> b!4062571 m!4669037))

(assert (=> b!4062571 m!4668481))

(declare-fun m!4669039 () Bool)

(assert (=> b!4062571 m!4669039))

(declare-fun m!4669041 () Bool)

(assert (=> d!1207650 m!4669041))

(assert (=> d!1207650 m!4668785))

(declare-fun m!4669043 () Bool)

(assert (=> d!1207650 m!4669043))

(declare-fun m!4669045 () Bool)

(assert (=> b!4062570 m!4669045))

(assert (=> b!4062120 d!1207650))

(declare-fun d!1207654 () Bool)

(declare-fun lt!1451801 () List!43516)

(assert (=> d!1207654 (= (++!11367 lt!1451483 lt!1451801) prefix!494)))

(declare-fun e!2521008 () List!43516)

(assert (=> d!1207654 (= lt!1451801 e!2521008)))

(declare-fun c!701624 () Bool)

(assert (=> d!1207654 (= c!701624 (is-Cons!43392 lt!1451483))))

(assert (=> d!1207654 (>= (size!32444 prefix!494) (size!32444 lt!1451483))))

(assert (=> d!1207654 (= (getSuffix!2469 prefix!494 lt!1451483) lt!1451801)))

(declare-fun b!4062573 () Bool)

(assert (=> b!4062573 (= e!2521008 (getSuffix!2469 (tail!6306 prefix!494) (t!336675 lt!1451483)))))

(declare-fun b!4062574 () Bool)

(assert (=> b!4062574 (= e!2521008 prefix!494)))

(assert (= (and d!1207654 c!701624) b!4062573))

(assert (= (and d!1207654 (not c!701624)) b!4062574))

(declare-fun m!4669047 () Bool)

(assert (=> d!1207654 m!4669047))

(assert (=> d!1207654 m!4668483))

(assert (=> d!1207654 m!4668481))

(declare-fun m!4669049 () Bool)

(assert (=> b!4062573 m!4669049))

(assert (=> b!4062573 m!4669049))

(declare-fun m!4669051 () Bool)

(assert (=> b!4062573 m!4669051))

(assert (=> b!4062120 d!1207654))

(declare-fun b!4062576 () Bool)

(declare-fun res!1657324 () Bool)

(declare-fun e!2521011 () Bool)

(assert (=> b!4062576 (=> (not res!1657324) (not e!2521011))))

(assert (=> b!4062576 (= res!1657324 (= (head!8574 lt!1451483) (head!8574 prefix!494)))))

(declare-fun d!1207656 () Bool)

(declare-fun e!2521009 () Bool)

(assert (=> d!1207656 e!2521009))

(declare-fun res!1657325 () Bool)

(assert (=> d!1207656 (=> res!1657325 e!2521009)))

(declare-fun lt!1451802 () Bool)

(assert (=> d!1207656 (= res!1657325 (not lt!1451802))))

(declare-fun e!2521010 () Bool)

(assert (=> d!1207656 (= lt!1451802 e!2521010)))

(declare-fun res!1657326 () Bool)

(assert (=> d!1207656 (=> res!1657326 e!2521010)))

(assert (=> d!1207656 (= res!1657326 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207656 (= (isPrefix!4052 lt!1451483 prefix!494) lt!1451802)))

(declare-fun b!4062577 () Bool)

(assert (=> b!4062577 (= e!2521011 (isPrefix!4052 (tail!6306 lt!1451483) (tail!6306 prefix!494)))))

(declare-fun b!4062578 () Bool)

(assert (=> b!4062578 (= e!2521009 (>= (size!32444 prefix!494) (size!32444 lt!1451483)))))

(declare-fun b!4062575 () Bool)

(assert (=> b!4062575 (= e!2521010 e!2521011)))

(declare-fun res!1657327 () Bool)

(assert (=> b!4062575 (=> (not res!1657327) (not e!2521011))))

(assert (=> b!4062575 (= res!1657327 (not (is-Nil!43392 prefix!494)))))

(assert (= (and d!1207656 (not res!1657326)) b!4062575))

(assert (= (and b!4062575 res!1657327) b!4062576))

(assert (= (and b!4062576 res!1657324) b!4062577))

(assert (= (and d!1207656 (not res!1657325)) b!4062578))

(assert (=> b!4062576 m!4668753))

(declare-fun m!4669053 () Bool)

(assert (=> b!4062576 m!4669053))

(assert (=> b!4062577 m!4668749))

(assert (=> b!4062577 m!4669049))

(assert (=> b!4062577 m!4668749))

(assert (=> b!4062577 m!4669049))

(declare-fun m!4669055 () Bool)

(assert (=> b!4062577 m!4669055))

(assert (=> b!4062578 m!4668483))

(assert (=> b!4062578 m!4668481))

(assert (=> b!4062120 d!1207656))

(declare-fun d!1207658 () Bool)

(assert (=> d!1207658 (isPrefix!4052 lt!1451483 prefix!494)))

(declare-fun lt!1451805 () Unit!62828)

(declare-fun choose!24709 (List!43516 List!43516 List!43516) Unit!62828)

(assert (=> d!1207658 (= lt!1451805 (choose!24709 prefix!494 lt!1451483 lt!1451490))))

(assert (=> d!1207658 (isPrefix!4052 prefix!494 lt!1451490)))

(assert (=> d!1207658 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!616 prefix!494 lt!1451483 lt!1451490) lt!1451805)))

(declare-fun bs!592193 () Bool)

(assert (= bs!592193 d!1207658))

(assert (=> bs!592193 m!4668503))

(declare-fun m!4669057 () Bool)

(assert (=> bs!592193 m!4669057))

(assert (=> bs!592193 m!4668409))

(assert (=> b!4062120 d!1207658))

(declare-fun b!4062581 () Bool)

(declare-fun res!1657328 () Bool)

(declare-fun e!2521012 () Bool)

(assert (=> b!4062581 (=> (not res!1657328) (not e!2521012))))

(declare-fun lt!1451806 () List!43516)

(assert (=> b!4062581 (= res!1657328 (= (size!32444 lt!1451806) (+ (size!32444 newSuffix!27) (size!32444 lt!1451432))))))

(declare-fun b!4062579 () Bool)

(declare-fun e!2521013 () List!43516)

(assert (=> b!4062579 (= e!2521013 lt!1451432)))

(declare-fun b!4062582 () Bool)

(assert (=> b!4062582 (= e!2521012 (or (not (= lt!1451432 Nil!43392)) (= lt!1451806 newSuffix!27)))))

(declare-fun d!1207660 () Bool)

(assert (=> d!1207660 e!2521012))

(declare-fun res!1657329 () Bool)

(assert (=> d!1207660 (=> (not res!1657329) (not e!2521012))))

(assert (=> d!1207660 (= res!1657329 (= (content!6621 lt!1451806) (set.union (content!6621 newSuffix!27) (content!6621 lt!1451432))))))

(assert (=> d!1207660 (= lt!1451806 e!2521013)))

(declare-fun c!701625 () Bool)

(assert (=> d!1207660 (= c!701625 (is-Nil!43392 newSuffix!27))))

(assert (=> d!1207660 (= (++!11367 newSuffix!27 lt!1451432) lt!1451806)))

(declare-fun b!4062580 () Bool)

(assert (=> b!4062580 (= e!2521013 (Cons!43392 (h!48812 newSuffix!27) (++!11367 (t!336675 newSuffix!27) lt!1451432)))))

(assert (= (and d!1207660 c!701625) b!4062579))

(assert (= (and d!1207660 (not c!701625)) b!4062580))

(assert (= (and d!1207660 res!1657329) b!4062581))

(assert (= (and b!4062581 res!1657328) b!4062582))

(declare-fun m!4669059 () Bool)

(assert (=> b!4062581 m!4669059))

(assert (=> b!4062581 m!4668517))

(assert (=> b!4062581 m!4668819))

(declare-fun m!4669061 () Bool)

(assert (=> d!1207660 m!4669061))

(declare-fun m!4669063 () Bool)

(assert (=> d!1207660 m!4669063))

(assert (=> d!1207660 m!4668825))

(declare-fun m!4669065 () Bool)

(assert (=> b!4062580 m!4669065))

(assert (=> b!4062142 d!1207660))

(declare-fun d!1207662 () Bool)

(declare-fun lt!1451807 () List!43516)

(assert (=> d!1207662 (= (++!11367 newSuffix!27 lt!1451807) suffix!1299)))

(declare-fun e!2521014 () List!43516)

(assert (=> d!1207662 (= lt!1451807 e!2521014)))

(declare-fun c!701626 () Bool)

(assert (=> d!1207662 (= c!701626 (is-Cons!43392 newSuffix!27))))

(assert (=> d!1207662 (>= (size!32444 suffix!1299) (size!32444 newSuffix!27))))

(assert (=> d!1207662 (= (getSuffix!2469 suffix!1299 newSuffix!27) lt!1451807)))

(declare-fun b!4062583 () Bool)

(assert (=> b!4062583 (= e!2521014 (getSuffix!2469 (tail!6306 suffix!1299) (t!336675 newSuffix!27)))))

(declare-fun b!4062584 () Bool)

(assert (=> b!4062584 (= e!2521014 suffix!1299)))

(assert (= (and d!1207662 c!701626) b!4062583))

(assert (= (and d!1207662 (not c!701626)) b!4062584))

(declare-fun m!4669067 () Bool)

(assert (=> d!1207662 m!4669067))

(assert (=> d!1207662 m!4668515))

(assert (=> d!1207662 m!4668517))

(declare-fun m!4669069 () Bool)

(assert (=> b!4062583 m!4669069))

(assert (=> b!4062583 m!4669069))

(declare-fun m!4669071 () Bool)

(assert (=> b!4062583 m!4669071))

(assert (=> b!4062142 d!1207662))

(declare-fun d!1207664 () Bool)

(assert (=> d!1207664 (not (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451473))))

(declare-fun lt!1451810 () Unit!62828)

(declare-fun choose!24710 (LexerInterface!6554 List!43518 Rule!13730 List!43516 List!43516 List!43516 Rule!13730) Unit!62828)

(assert (=> d!1207664 (= lt!1451810 (choose!24710 thiss!21717 rules!2999 (rule!10059 token!484) lt!1451483 lt!1451490 lt!1451473 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))))

(assert (=> d!1207664 (isPrefix!4052 lt!1451483 lt!1451490)))

(assert (=> d!1207664 (= (lemmaMaxPrefixOutputsMaxPrefix!491 thiss!21717 rules!2999 (rule!10059 token!484) lt!1451483 lt!1451490 lt!1451473 (rule!10059 (_1!24360 (v!39800 lt!1451450)))) lt!1451810)))

(declare-fun bs!592194 () Bool)

(assert (= bs!592194 d!1207664))

(assert (=> bs!592194 m!4668437))

(declare-fun m!4669073 () Bool)

(assert (=> bs!592194 m!4669073))

(assert (=> bs!592194 m!4668405))

(assert (=> b!4062140 d!1207664))

(assert (=> b!4062140 d!1207556))

(declare-fun d!1207666 () Bool)

(declare-fun res!1657334 () Bool)

(declare-fun e!2521019 () Bool)

(assert (=> d!1207666 (=> (not res!1657334) (not e!2521019))))

(assert (=> d!1207666 (= res!1657334 (not (isEmpty!25896 (originalCharacters!7565 token!484))))))

(assert (=> d!1207666 (= (inv!58014 token!484) e!2521019)))

(declare-fun b!4062593 () Bool)

(declare-fun res!1657335 () Bool)

(assert (=> b!4062593 (=> (not res!1657335) (not e!2521019))))

(assert (=> b!4062593 (= res!1657335 (= (originalCharacters!7565 token!484) (list!16175 (dynLambda!18439 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (value!219138 token!484)))))))

(declare-fun b!4062594 () Bool)

(assert (=> b!4062594 (= e!2521019 (= (size!32443 token!484) (size!32444 (originalCharacters!7565 token!484))))))

(assert (= (and d!1207666 res!1657334) b!4062593))

(assert (= (and b!4062593 res!1657335) b!4062594))

(declare-fun b_lambda!118717 () Bool)

(assert (=> (not b_lambda!118717) (not b!4062593)))

(declare-fun t!336694 () Bool)

(declare-fun tb!244397 () Bool)

(assert (=> (and b!4062127 (= (toChars!9384 (transformation!6965 (rule!10059 token!484))) (toChars!9384 (transformation!6965 (rule!10059 token!484)))) t!336694) tb!244397))

(declare-fun b!4062597 () Bool)

(declare-fun e!2521020 () Bool)

(declare-fun tp!1230323 () Bool)

(assert (=> b!4062597 (= e!2521020 (and (inv!58017 (c!701556 (dynLambda!18439 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (value!219138 token!484)))) tp!1230323))))

(declare-fun result!296140 () Bool)

(assert (=> tb!244397 (= result!296140 (and (inv!58018 (dynLambda!18439 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (value!219138 token!484))) e!2521020))))

(assert (= tb!244397 b!4062597))

(declare-fun m!4669075 () Bool)

(assert (=> b!4062597 m!4669075))

(declare-fun m!4669077 () Bool)

(assert (=> tb!244397 m!4669077))

(assert (=> b!4062593 t!336694))

(declare-fun b_and!312343 () Bool)

(assert (= b_and!312331 (and (=> t!336694 result!296140) b_and!312343)))

(declare-fun tb!244399 () Bool)

(declare-fun t!336696 () Bool)

(assert (=> (and b!4062136 (= (toChars!9384 (transformation!6965 (h!48814 rules!2999))) (toChars!9384 (transformation!6965 (rule!10059 token!484)))) t!336696) tb!244399))

(declare-fun result!296142 () Bool)

(assert (= result!296142 result!296140))

(assert (=> b!4062593 t!336696))

(declare-fun b_and!312345 () Bool)

(assert (= b_and!312333 (and (=> t!336696 result!296142) b_and!312345)))

(declare-fun m!4669079 () Bool)

(assert (=> d!1207666 m!4669079))

(declare-fun m!4669081 () Bool)

(assert (=> b!4062593 m!4669081))

(assert (=> b!4062593 m!4669081))

(declare-fun m!4669083 () Bool)

(assert (=> b!4062593 m!4669083))

(assert (=> b!4062594 m!4668351))

(assert (=> start!383142 d!1207666))

(declare-fun b!4062612 () Bool)

(declare-fun res!1657344 () Bool)

(declare-fun e!2521029 () Bool)

(assert (=> b!4062612 (=> (not res!1657344) (not e!2521029))))

(declare-fun lt!1451813 () List!43516)

(assert (=> b!4062612 (= res!1657344 (= (size!32444 lt!1451813) (+ (size!32444 lt!1451483) (size!32444 lt!1451484))))))

(declare-fun b!4062610 () Bool)

(declare-fun e!2521030 () List!43516)

(assert (=> b!4062610 (= e!2521030 lt!1451484)))

(declare-fun b!4062613 () Bool)

(assert (=> b!4062613 (= e!2521029 (or (not (= lt!1451484 Nil!43392)) (= lt!1451813 lt!1451483)))))

(declare-fun d!1207668 () Bool)

(assert (=> d!1207668 e!2521029))

(declare-fun res!1657345 () Bool)

(assert (=> d!1207668 (=> (not res!1657345) (not e!2521029))))

(assert (=> d!1207668 (= res!1657345 (= (content!6621 lt!1451813) (set.union (content!6621 lt!1451483) (content!6621 lt!1451484))))))

(assert (=> d!1207668 (= lt!1451813 e!2521030)))

(declare-fun c!701633 () Bool)

(assert (=> d!1207668 (= c!701633 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207668 (= (++!11367 lt!1451483 lt!1451484) lt!1451813)))

(declare-fun b!4062611 () Bool)

(assert (=> b!4062611 (= e!2521030 (Cons!43392 (h!48812 lt!1451483) (++!11367 (t!336675 lt!1451483) lt!1451484)))))

(assert (= (and d!1207668 c!701633) b!4062610))

(assert (= (and d!1207668 (not c!701633)) b!4062611))

(assert (= (and d!1207668 res!1657345) b!4062612))

(assert (= (and b!4062612 res!1657344) b!4062613))

(declare-fun m!4669085 () Bool)

(assert (=> b!4062612 m!4669085))

(assert (=> b!4062612 m!4668481))

(declare-fun m!4669087 () Bool)

(assert (=> b!4062612 m!4669087))

(declare-fun m!4669089 () Bool)

(assert (=> d!1207668 m!4669089))

(assert (=> d!1207668 m!4668785))

(declare-fun m!4669091 () Bool)

(assert (=> d!1207668 m!4669091))

(declare-fun m!4669093 () Bool)

(assert (=> b!4062611 m!4669093))

(assert (=> b!4062139 d!1207668))

(declare-fun b!4062626 () Bool)

(declare-fun res!1657354 () Bool)

(declare-fun e!2521035 () Bool)

(assert (=> b!4062626 (=> (not res!1657354) (not e!2521035))))

(declare-fun lt!1451814 () List!43516)

(assert (=> b!4062626 (= res!1657354 (= (size!32444 lt!1451814) (+ (size!32444 lt!1451451) (size!32444 suffix!1299))))))

(declare-fun b!4062624 () Bool)

(declare-fun e!2521036 () List!43516)

(assert (=> b!4062624 (= e!2521036 suffix!1299)))

(declare-fun b!4062627 () Bool)

(assert (=> b!4062627 (= e!2521035 (or (not (= suffix!1299 Nil!43392)) (= lt!1451814 lt!1451451)))))

(declare-fun d!1207670 () Bool)

(assert (=> d!1207670 e!2521035))

(declare-fun res!1657355 () Bool)

(assert (=> d!1207670 (=> (not res!1657355) (not e!2521035))))

(assert (=> d!1207670 (= res!1657355 (= (content!6621 lt!1451814) (set.union (content!6621 lt!1451451) (content!6621 suffix!1299))))))

(assert (=> d!1207670 (= lt!1451814 e!2521036)))

(declare-fun c!701634 () Bool)

(assert (=> d!1207670 (= c!701634 (is-Nil!43392 lt!1451451))))

(assert (=> d!1207670 (= (++!11367 lt!1451451 suffix!1299) lt!1451814)))

(declare-fun b!4062625 () Bool)

(assert (=> b!4062625 (= e!2521036 (Cons!43392 (h!48812 lt!1451451) (++!11367 (t!336675 lt!1451451) suffix!1299)))))

(assert (= (and d!1207670 c!701634) b!4062624))

(assert (= (and d!1207670 (not c!701634)) b!4062625))

(assert (= (and d!1207670 res!1657355) b!4062626))

(assert (= (and b!4062626 res!1657354) b!4062627))

(declare-fun m!4669095 () Bool)

(assert (=> b!4062626 m!4669095))

(declare-fun m!4669097 () Bool)

(assert (=> b!4062626 m!4669097))

(assert (=> b!4062626 m!4668515))

(declare-fun m!4669099 () Bool)

(assert (=> d!1207670 m!4669099))

(declare-fun m!4669101 () Bool)

(assert (=> d!1207670 m!4669101))

(declare-fun m!4669103 () Bool)

(assert (=> d!1207670 m!4669103))

(declare-fun m!4669105 () Bool)

(assert (=> b!4062625 m!4669105))

(assert (=> b!4062139 d!1207670))

(declare-fun b!4062630 () Bool)

(declare-fun res!1657356 () Bool)

(declare-fun e!2521037 () Bool)

(assert (=> b!4062630 (=> (not res!1657356) (not e!2521037))))

(declare-fun lt!1451815 () List!43516)

(assert (=> b!4062630 (= res!1657356 (= (size!32444 lt!1451815) (+ (size!32444 lt!1451433) (size!32444 suffix!1299))))))

(declare-fun b!4062628 () Bool)

(declare-fun e!2521038 () List!43516)

(assert (=> b!4062628 (= e!2521038 suffix!1299)))

(declare-fun b!4062631 () Bool)

(assert (=> b!4062631 (= e!2521037 (or (not (= suffix!1299 Nil!43392)) (= lt!1451815 lt!1451433)))))

(declare-fun d!1207672 () Bool)

(assert (=> d!1207672 e!2521037))

(declare-fun res!1657357 () Bool)

(assert (=> d!1207672 (=> (not res!1657357) (not e!2521037))))

(assert (=> d!1207672 (= res!1657357 (= (content!6621 lt!1451815) (set.union (content!6621 lt!1451433) (content!6621 suffix!1299))))))

(assert (=> d!1207672 (= lt!1451815 e!2521038)))

(declare-fun c!701635 () Bool)

(assert (=> d!1207672 (= c!701635 (is-Nil!43392 lt!1451433))))

(assert (=> d!1207672 (= (++!11367 lt!1451433 suffix!1299) lt!1451815)))

(declare-fun b!4062629 () Bool)

(assert (=> b!4062629 (= e!2521038 (Cons!43392 (h!48812 lt!1451433) (++!11367 (t!336675 lt!1451433) suffix!1299)))))

(assert (= (and d!1207672 c!701635) b!4062628))

(assert (= (and d!1207672 (not c!701635)) b!4062629))

(assert (= (and d!1207672 res!1657357) b!4062630))

(assert (= (and b!4062630 res!1657356) b!4062631))

(declare-fun m!4669107 () Bool)

(assert (=> b!4062630 m!4669107))

(assert (=> b!4062630 m!4669039))

(assert (=> b!4062630 m!4668515))

(declare-fun m!4669109 () Bool)

(assert (=> d!1207672 m!4669109))

(assert (=> d!1207672 m!4669043))

(assert (=> d!1207672 m!4669103))

(declare-fun m!4669111 () Bool)

(assert (=> b!4062629 m!4669111))

(assert (=> b!4062139 d!1207672))

(declare-fun d!1207674 () Bool)

(assert (=> d!1207674 (= (++!11367 (++!11367 lt!1451483 lt!1451433) suffix!1299) (++!11367 lt!1451483 (++!11367 lt!1451433 suffix!1299)))))

(declare-fun lt!1451816 () Unit!62828)

(assert (=> d!1207674 (= lt!1451816 (choose!24701 lt!1451483 lt!1451433 suffix!1299))))

(assert (=> d!1207674 (= (lemmaConcatAssociativity!2669 lt!1451483 lt!1451433 suffix!1299) lt!1451816)))

(declare-fun bs!592195 () Bool)

(assert (= bs!592195 d!1207674))

(assert (=> bs!592195 m!4668339))

(declare-fun m!4669113 () Bool)

(assert (=> bs!592195 m!4669113))

(assert (=> bs!592195 m!4668339))

(assert (=> bs!592195 m!4668499))

(assert (=> bs!592195 m!4668499))

(declare-fun m!4669115 () Bool)

(assert (=> bs!592195 m!4669115))

(declare-fun m!4669117 () Bool)

(assert (=> bs!592195 m!4669117))

(assert (=> b!4062139 d!1207674))

(declare-fun d!1207676 () Bool)

(assert (=> d!1207676 (not (matchR!5823 (regex!6965 (rule!10059 token!484)) lt!1451483))))

(declare-fun lt!1451817 () Unit!62828)

(assert (=> d!1207676 (= lt!1451817 (choose!24710 thiss!21717 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450))) lt!1451473 lt!1451489 lt!1451483 (rule!10059 token!484)))))

(assert (=> d!1207676 (isPrefix!4052 lt!1451473 lt!1451489)))

(assert (=> d!1207676 (= (lemmaMaxPrefixOutputsMaxPrefix!491 thiss!21717 rules!2999 (rule!10059 (_1!24360 (v!39800 lt!1451450))) lt!1451473 lt!1451489 lt!1451483 (rule!10059 token!484)) lt!1451817)))

(declare-fun bs!592196 () Bool)

(assert (= bs!592196 d!1207676))

(assert (=> bs!592196 m!4668419))

(declare-fun m!4669119 () Bool)

(assert (=> bs!592196 m!4669119))

(assert (=> bs!592196 m!4668399))

(assert (=> b!4062118 d!1207676))

(declare-fun d!1207678 () Bool)

(declare-fun c!701640 () Bool)

(assert (=> d!1207678 (= c!701640 (is-IntegerValue!21585 (value!219138 token!484)))))

(declare-fun e!2521045 () Bool)

(assert (=> d!1207678 (= (inv!21 (value!219138 token!484)) e!2521045)))

(declare-fun b!4062642 () Bool)

(declare-fun e!2521046 () Bool)

(declare-fun inv!15 (TokenValue!7195) Bool)

(assert (=> b!4062642 (= e!2521046 (inv!15 (value!219138 token!484)))))

(declare-fun b!4062643 () Bool)

(declare-fun inv!16 (TokenValue!7195) Bool)

(assert (=> b!4062643 (= e!2521045 (inv!16 (value!219138 token!484)))))

(declare-fun b!4062644 () Bool)

(declare-fun e!2521047 () Bool)

(assert (=> b!4062644 (= e!2521045 e!2521047)))

(declare-fun c!701641 () Bool)

(assert (=> b!4062644 (= c!701641 (is-IntegerValue!21586 (value!219138 token!484)))))

(declare-fun b!4062645 () Bool)

(declare-fun inv!17 (TokenValue!7195) Bool)

(assert (=> b!4062645 (= e!2521047 (inv!17 (value!219138 token!484)))))

(declare-fun b!4062646 () Bool)

(declare-fun res!1657360 () Bool)

(assert (=> b!4062646 (=> res!1657360 e!2521046)))

(assert (=> b!4062646 (= res!1657360 (not (is-IntegerValue!21587 (value!219138 token!484))))))

(assert (=> b!4062646 (= e!2521047 e!2521046)))

(assert (= (and d!1207678 c!701640) b!4062643))

(assert (= (and d!1207678 (not c!701640)) b!4062644))

(assert (= (and b!4062644 c!701641) b!4062645))

(assert (= (and b!4062644 (not c!701641)) b!4062646))

(assert (= (and b!4062646 (not res!1657360)) b!4062642))

(declare-fun m!4669121 () Bool)

(assert (=> b!4062642 m!4669121))

(declare-fun m!4669123 () Bool)

(assert (=> b!4062643 m!4669123))

(declare-fun m!4669125 () Bool)

(assert (=> b!4062645 m!4669125))

(assert (=> b!4062116 d!1207678))

(declare-fun d!1207680 () Bool)

(assert (=> d!1207680 (= (inv!58010 (tag!7825 (rule!10059 token!484))) (= (mod (str.len (value!219137 (tag!7825 (rule!10059 token!484)))) 2) 0))))

(assert (=> b!4062138 d!1207680))

(declare-fun d!1207682 () Bool)

(declare-fun res!1657363 () Bool)

(declare-fun e!2521050 () Bool)

(assert (=> d!1207682 (=> (not res!1657363) (not e!2521050))))

(assert (=> d!1207682 (= res!1657363 (semiInverseModEq!2979 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (toValue!9525 (transformation!6965 (rule!10059 token!484)))))))

(assert (=> d!1207682 (= (inv!58013 (transformation!6965 (rule!10059 token!484))) e!2521050)))

(declare-fun b!4062649 () Bool)

(assert (=> b!4062649 (= e!2521050 (equivClasses!2878 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (toValue!9525 (transformation!6965 (rule!10059 token!484)))))))

(assert (= (and d!1207682 res!1657363) b!4062649))

(declare-fun m!4669127 () Bool)

(assert (=> d!1207682 m!4669127))

(declare-fun m!4669129 () Bool)

(assert (=> b!4062649 m!4669129))

(assert (=> b!4062138 d!1207682))

(declare-fun d!1207684 () Bool)

(assert (=> d!1207684 (isPrefix!4052 lt!1451483 (++!11367 lt!1451483 suffixResult!105))))

(declare-fun lt!1451818 () Unit!62828)

(assert (=> d!1207684 (= lt!1451818 (choose!24705 lt!1451483 suffixResult!105))))

(assert (=> d!1207684 (= (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451483 suffixResult!105) lt!1451818)))

(declare-fun bs!592197 () Bool)

(assert (= bs!592197 d!1207684))

(assert (=> bs!592197 m!4668491))

(assert (=> bs!592197 m!4668491))

(declare-fun m!4669131 () Bool)

(assert (=> bs!592197 m!4669131))

(declare-fun m!4669133 () Bool)

(assert (=> bs!592197 m!4669133))

(assert (=> b!4062104 d!1207684))

(declare-fun b!4062660 () Bool)

(declare-fun res!1657372 () Bool)

(declare-fun e!2521060 () Bool)

(assert (=> b!4062660 (=> (not res!1657372) (not e!2521060))))

(assert (=> b!4062660 (= res!1657372 (= (head!8574 lt!1451483) (head!8574 lt!1451490)))))

(declare-fun d!1207686 () Bool)

(declare-fun e!2521058 () Bool)

(assert (=> d!1207686 e!2521058))

(declare-fun res!1657373 () Bool)

(assert (=> d!1207686 (=> res!1657373 e!2521058)))

(declare-fun lt!1451820 () Bool)

(assert (=> d!1207686 (= res!1657373 (not lt!1451820))))

(declare-fun e!2521059 () Bool)

(assert (=> d!1207686 (= lt!1451820 e!2521059)))

(declare-fun res!1657374 () Bool)

(assert (=> d!1207686 (=> res!1657374 e!2521059)))

(assert (=> d!1207686 (= res!1657374 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207686 (= (isPrefix!4052 lt!1451483 lt!1451490) lt!1451820)))

(declare-fun b!4062662 () Bool)

(assert (=> b!4062662 (= e!2521060 (isPrefix!4052 (tail!6306 lt!1451483) (tail!6306 lt!1451490)))))

(declare-fun b!4062663 () Bool)

(assert (=> b!4062663 (= e!2521058 (>= (size!32444 lt!1451490) (size!32444 lt!1451483)))))

(declare-fun b!4062658 () Bool)

(assert (=> b!4062658 (= e!2521059 e!2521060)))

(declare-fun res!1657375 () Bool)

(assert (=> b!4062658 (=> (not res!1657375) (not e!2521060))))

(assert (=> b!4062658 (= res!1657375 (not (is-Nil!43392 lt!1451490)))))

(assert (= (and d!1207686 (not res!1657374)) b!4062658))

(assert (= (and b!4062658 res!1657375) b!4062660))

(assert (= (and b!4062660 res!1657372) b!4062662))

(assert (= (and d!1207686 (not res!1657373)) b!4062663))

(assert (=> b!4062660 m!4668753))

(assert (=> b!4062660 m!4668799))

(assert (=> b!4062662 m!4668749))

(assert (=> b!4062662 m!4668795))

(assert (=> b!4062662 m!4668749))

(assert (=> b!4062662 m!4668795))

(declare-fun m!4669135 () Bool)

(assert (=> b!4062662 m!4669135))

(assert (=> b!4062663 m!4668793))

(assert (=> b!4062663 m!4668481))

(assert (=> b!4062104 d!1207686))

(declare-fun b!4062669 () Bool)

(declare-fun res!1657376 () Bool)

(declare-fun e!2521063 () Bool)

(assert (=> b!4062669 (=> (not res!1657376) (not e!2521063))))

(assert (=> b!4062669 (= res!1657376 (= (head!8574 prefix!494) (head!8574 lt!1451490)))))

(declare-fun d!1207688 () Bool)

(declare-fun e!2521061 () Bool)

(assert (=> d!1207688 e!2521061))

(declare-fun res!1657377 () Bool)

(assert (=> d!1207688 (=> res!1657377 e!2521061)))

(declare-fun lt!1451821 () Bool)

(assert (=> d!1207688 (= res!1657377 (not lt!1451821))))

(declare-fun e!2521062 () Bool)

(assert (=> d!1207688 (= lt!1451821 e!2521062)))

(declare-fun res!1657378 () Bool)

(assert (=> d!1207688 (=> res!1657378 e!2521062)))

(assert (=> d!1207688 (= res!1657378 (is-Nil!43392 prefix!494))))

(assert (=> d!1207688 (= (isPrefix!4052 prefix!494 lt!1451490) lt!1451821)))

(declare-fun b!4062670 () Bool)

(assert (=> b!4062670 (= e!2521063 (isPrefix!4052 (tail!6306 prefix!494) (tail!6306 lt!1451490)))))

(declare-fun b!4062671 () Bool)

(assert (=> b!4062671 (= e!2521061 (>= (size!32444 lt!1451490) (size!32444 prefix!494)))))

(declare-fun b!4062668 () Bool)

(assert (=> b!4062668 (= e!2521062 e!2521063)))

(declare-fun res!1657379 () Bool)

(assert (=> b!4062668 (=> (not res!1657379) (not e!2521063))))

(assert (=> b!4062668 (= res!1657379 (not (is-Nil!43392 lt!1451490)))))

(assert (= (and d!1207688 (not res!1657378)) b!4062668))

(assert (= (and b!4062668 res!1657379) b!4062669))

(assert (= (and b!4062669 res!1657376) b!4062670))

(assert (= (and d!1207688 (not res!1657377)) b!4062671))

(assert (=> b!4062669 m!4669053))

(assert (=> b!4062669 m!4668799))

(assert (=> b!4062670 m!4669049))

(assert (=> b!4062670 m!4668795))

(assert (=> b!4062670 m!4669049))

(assert (=> b!4062670 m!4668795))

(declare-fun m!4669137 () Bool)

(assert (=> b!4062670 m!4669137))

(assert (=> b!4062671 m!4668793))

(assert (=> b!4062671 m!4668483))

(assert (=> b!4062104 d!1207688))

(declare-fun d!1207690 () Bool)

(assert (=> d!1207690 (isPrefix!4052 prefix!494 (++!11367 prefix!494 suffix!1299))))

(declare-fun lt!1451822 () Unit!62828)

(assert (=> d!1207690 (= lt!1451822 (choose!24705 prefix!494 suffix!1299))))

(assert (=> d!1207690 (= (lemmaConcatTwoListThenFirstIsPrefix!2887 prefix!494 suffix!1299) lt!1451822)))

(declare-fun bs!592198 () Bool)

(assert (= bs!592198 d!1207690))

(assert (=> bs!592198 m!4668391))

(assert (=> bs!592198 m!4668391))

(declare-fun m!4669139 () Bool)

(assert (=> bs!592198 m!4669139))

(declare-fun m!4669141 () Bool)

(assert (=> bs!592198 m!4669141))

(assert (=> b!4062104 d!1207690))

(declare-fun b!4062673 () Bool)

(declare-fun res!1657380 () Bool)

(declare-fun e!2521066 () Bool)

(assert (=> b!4062673 (=> (not res!1657380) (not e!2521066))))

(assert (=> b!4062673 (= res!1657380 (= (head!8574 lt!1451483) (head!8574 lt!1451474)))))

(declare-fun d!1207692 () Bool)

(declare-fun e!2521064 () Bool)

(assert (=> d!1207692 e!2521064))

(declare-fun res!1657381 () Bool)

(assert (=> d!1207692 (=> res!1657381 e!2521064)))

(declare-fun lt!1451823 () Bool)

(assert (=> d!1207692 (= res!1657381 (not lt!1451823))))

(declare-fun e!2521065 () Bool)

(assert (=> d!1207692 (= lt!1451823 e!2521065)))

(declare-fun res!1657382 () Bool)

(assert (=> d!1207692 (=> res!1657382 e!2521065)))

(assert (=> d!1207692 (= res!1657382 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207692 (= (isPrefix!4052 lt!1451483 lt!1451474) lt!1451823)))

(declare-fun b!4062674 () Bool)

(assert (=> b!4062674 (= e!2521066 (isPrefix!4052 (tail!6306 lt!1451483) (tail!6306 lt!1451474)))))

(declare-fun b!4062675 () Bool)

(assert (=> b!4062675 (= e!2521064 (>= (size!32444 lt!1451474) (size!32444 lt!1451483)))))

(declare-fun b!4062672 () Bool)

(assert (=> b!4062672 (= e!2521065 e!2521066)))

(declare-fun res!1657383 () Bool)

(assert (=> b!4062672 (=> (not res!1657383) (not e!2521066))))

(assert (=> b!4062672 (= res!1657383 (not (is-Nil!43392 lt!1451474)))))

(assert (= (and d!1207692 (not res!1657382)) b!4062672))

(assert (= (and b!4062672 res!1657383) b!4062673))

(assert (= (and b!4062673 res!1657380) b!4062674))

(assert (= (and d!1207692 (not res!1657381)) b!4062675))

(assert (=> b!4062673 m!4668753))

(declare-fun m!4669143 () Bool)

(assert (=> b!4062673 m!4669143))

(assert (=> b!4062674 m!4668749))

(declare-fun m!4669145 () Bool)

(assert (=> b!4062674 m!4669145))

(assert (=> b!4062674 m!4668749))

(assert (=> b!4062674 m!4669145))

(declare-fun m!4669147 () Bool)

(assert (=> b!4062674 m!4669147))

(declare-fun m!4669149 () Bool)

(assert (=> b!4062675 m!4669149))

(assert (=> b!4062675 m!4668481))

(assert (=> b!4062104 d!1207692))

(declare-fun b!4062678 () Bool)

(declare-fun res!1657384 () Bool)

(declare-fun e!2521067 () Bool)

(assert (=> b!4062678 (=> (not res!1657384) (not e!2521067))))

(declare-fun lt!1451824 () List!43516)

(assert (=> b!4062678 (= res!1657384 (= (size!32444 lt!1451824) (+ (size!32444 lt!1451483) (size!32444 suffixResult!105))))))

(declare-fun b!4062676 () Bool)

(declare-fun e!2521068 () List!43516)

(assert (=> b!4062676 (= e!2521068 suffixResult!105)))

(declare-fun b!4062679 () Bool)

(assert (=> b!4062679 (= e!2521067 (or (not (= suffixResult!105 Nil!43392)) (= lt!1451824 lt!1451483)))))

(declare-fun d!1207694 () Bool)

(assert (=> d!1207694 e!2521067))

(declare-fun res!1657385 () Bool)

(assert (=> d!1207694 (=> (not res!1657385) (not e!2521067))))

(assert (=> d!1207694 (= res!1657385 (= (content!6621 lt!1451824) (set.union (content!6621 lt!1451483) (content!6621 suffixResult!105))))))

(assert (=> d!1207694 (= lt!1451824 e!2521068)))

(declare-fun c!701645 () Bool)

(assert (=> d!1207694 (= c!701645 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207694 (= (++!11367 lt!1451483 suffixResult!105) lt!1451824)))

(declare-fun b!4062677 () Bool)

(assert (=> b!4062677 (= e!2521068 (Cons!43392 (h!48812 lt!1451483) (++!11367 (t!336675 lt!1451483) suffixResult!105)))))

(assert (= (and d!1207694 c!701645) b!4062676))

(assert (= (and d!1207694 (not c!701645)) b!4062677))

(assert (= (and d!1207694 res!1657385) b!4062678))

(assert (= (and b!4062678 res!1657384) b!4062679))

(declare-fun m!4669157 () Bool)

(assert (=> b!4062678 m!4669157))

(assert (=> b!4062678 m!4668481))

(declare-fun m!4669161 () Bool)

(assert (=> b!4062678 m!4669161))

(declare-fun m!4669163 () Bool)

(assert (=> d!1207694 m!4669163))

(assert (=> d!1207694 m!4668785))

(declare-fun m!4669165 () Bool)

(assert (=> d!1207694 m!4669165))

(declare-fun m!4669167 () Bool)

(assert (=> b!4062677 m!4669167))

(assert (=> b!4062105 d!1207694))

(declare-fun d!1207696 () Bool)

(declare-fun e!2521069 () Bool)

(assert (=> d!1207696 e!2521069))

(declare-fun res!1657386 () Bool)

(assert (=> d!1207696 (=> (not res!1657386) (not e!2521069))))

(assert (=> d!1207696 (= res!1657386 (semiInverseModEq!2979 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (toValue!9525 (transformation!6965 (rule!10059 token!484)))))))

(declare-fun Unit!62848 () Unit!62828)

(assert (=> d!1207696 (= (lemmaInv!1174 (transformation!6965 (rule!10059 token!484))) Unit!62848)))

(declare-fun b!4062680 () Bool)

(assert (=> b!4062680 (= e!2521069 (equivClasses!2878 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (toValue!9525 (transformation!6965 (rule!10059 token!484)))))))

(assert (= (and d!1207696 res!1657386) b!4062680))

(assert (=> d!1207696 m!4669127))

(assert (=> b!4062680 m!4669129))

(assert (=> b!4062105 d!1207696))

(declare-fun d!1207700 () Bool)

(declare-fun res!1657387 () Bool)

(declare-fun e!2521070 () Bool)

(assert (=> d!1207700 (=> (not res!1657387) (not e!2521070))))

(assert (=> d!1207700 (= res!1657387 (validRegex!5371 (regex!6965 (rule!10059 token!484))))))

(assert (=> d!1207700 (= (ruleValid!2895 thiss!21717 (rule!10059 token!484)) e!2521070)))

(declare-fun b!4062681 () Bool)

(declare-fun res!1657388 () Bool)

(assert (=> b!4062681 (=> (not res!1657388) (not e!2521070))))

(assert (=> b!4062681 (= res!1657388 (not (nullable!4171 (regex!6965 (rule!10059 token!484)))))))

(declare-fun b!4062682 () Bool)

(assert (=> b!4062682 (= e!2521070 (not (= (tag!7825 (rule!10059 token!484)) (String!49696 ""))))))

(assert (= (and d!1207700 res!1657387) b!4062681))

(assert (= (and b!4062681 res!1657388) b!4062682))

(assert (=> d!1207700 m!4668761))

(assert (=> b!4062681 m!4668747))

(assert (=> b!4062105 d!1207700))

(declare-fun d!1207702 () Bool)

(assert (=> d!1207702 (ruleValid!2895 thiss!21717 (rule!10059 token!484))))

(declare-fun lt!1451826 () Unit!62828)

(assert (=> d!1207702 (= lt!1451826 (choose!24706 thiss!21717 (rule!10059 token!484) rules!2999))))

(assert (=> d!1207702 (contains!8633 rules!2999 (rule!10059 token!484))))

(assert (=> d!1207702 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1965 thiss!21717 (rule!10059 token!484) rules!2999) lt!1451826)))

(declare-fun bs!592199 () Bool)

(assert (= bs!592199 d!1207702))

(assert (=> bs!592199 m!4668495))

(declare-fun m!4669177 () Bool)

(assert (=> bs!592199 m!4669177))

(assert (=> bs!592199 m!4668327))

(assert (=> b!4062105 d!1207702))

(declare-fun b!4062688 () Bool)

(declare-fun res!1657391 () Bool)

(declare-fun e!2521075 () Bool)

(assert (=> b!4062688 (=> (not res!1657391) (not e!2521075))))

(assert (=> b!4062688 (= res!1657391 (= (head!8574 lt!1451473) (head!8574 lt!1451489)))))

(declare-fun d!1207704 () Bool)

(declare-fun e!2521073 () Bool)

(assert (=> d!1207704 e!2521073))

(declare-fun res!1657392 () Bool)

(assert (=> d!1207704 (=> res!1657392 e!2521073)))

(declare-fun lt!1451827 () Bool)

(assert (=> d!1207704 (= res!1657392 (not lt!1451827))))

(declare-fun e!2521074 () Bool)

(assert (=> d!1207704 (= lt!1451827 e!2521074)))

(declare-fun res!1657393 () Bool)

(assert (=> d!1207704 (=> res!1657393 e!2521074)))

(assert (=> d!1207704 (= res!1657393 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207704 (= (isPrefix!4052 lt!1451473 lt!1451489) lt!1451827)))

(declare-fun b!4062689 () Bool)

(assert (=> b!4062689 (= e!2521075 (isPrefix!4052 (tail!6306 lt!1451473) (tail!6306 lt!1451489)))))

(declare-fun b!4062690 () Bool)

(assert (=> b!4062690 (= e!2521073 (>= (size!32444 lt!1451489) (size!32444 lt!1451473)))))

(declare-fun b!4062687 () Bool)

(assert (=> b!4062687 (= e!2521074 e!2521075)))

(declare-fun res!1657394 () Bool)

(assert (=> b!4062687 (=> (not res!1657394) (not e!2521075))))

(assert (=> b!4062687 (= res!1657394 (not (is-Nil!43392 lt!1451489)))))

(assert (= (and d!1207704 (not res!1657393)) b!4062687))

(assert (= (and b!4062687 res!1657394) b!4062688))

(assert (= (and b!4062688 res!1657391) b!4062689))

(assert (= (and d!1207704 (not res!1657392)) b!4062690))

(assert (=> b!4062688 m!4668737))

(assert (=> b!4062688 m!4668763))

(assert (=> b!4062689 m!4668733))

(assert (=> b!4062689 m!4668765))

(assert (=> b!4062689 m!4668733))

(assert (=> b!4062689 m!4668765))

(declare-fun m!4669191 () Bool)

(assert (=> b!4062689 m!4669191))

(assert (=> b!4062690 m!4668769))

(assert (=> b!4062690 m!4668379))

(assert (=> b!4062124 d!1207704))

(declare-fun b!4062735 () Bool)

(declare-fun res!1657436 () Bool)

(declare-fun e!2521103 () Bool)

(assert (=> b!4062735 (=> (not res!1657436) (not e!2521103))))

(declare-fun lt!1451862 () Option!9379)

(assert (=> b!4062735 (= res!1657436 (= (++!11367 (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451862)))) (_2!24360 (get!14233 lt!1451862))) lt!1451490))))

(declare-fun b!4062736 () Bool)

(declare-fun e!2521102 () Bool)

(assert (=> b!4062736 (= e!2521102 e!2521103)))

(declare-fun res!1657437 () Bool)

(assert (=> b!4062736 (=> (not res!1657437) (not e!2521103))))

(declare-fun isDefined!7126 (Option!9379) Bool)

(assert (=> b!4062736 (= res!1657437 (isDefined!7126 lt!1451862))))

(declare-fun bm!288245 () Bool)

(declare-fun call!288250 () Option!9379)

(assert (=> bm!288245 (= call!288250 (maxPrefixOneRule!2864 thiss!21717 (h!48814 rules!2999) lt!1451490))))

(declare-fun b!4062737 () Bool)

(declare-fun e!2521101 () Option!9379)

(declare-fun lt!1451860 () Option!9379)

(declare-fun lt!1451858 () Option!9379)

(assert (=> b!4062737 (= e!2521101 (ite (and (is-None!9378 lt!1451860) (is-None!9378 lt!1451858)) None!9378 (ite (is-None!9378 lt!1451858) lt!1451860 (ite (is-None!9378 lt!1451860) lt!1451858 (ite (>= (size!32443 (_1!24360 (v!39800 lt!1451860))) (size!32443 (_1!24360 (v!39800 lt!1451858)))) lt!1451860 lt!1451858)))))))

(assert (=> b!4062737 (= lt!1451860 call!288250)))

(assert (=> b!4062737 (= lt!1451858 (maxPrefix!3852 thiss!21717 (t!336677 rules!2999) lt!1451490))))

(declare-fun b!4062739 () Bool)

(declare-fun res!1657432 () Bool)

(assert (=> b!4062739 (=> (not res!1657432) (not e!2521103))))

(assert (=> b!4062739 (= res!1657432 (< (size!32444 (_2!24360 (get!14233 lt!1451862))) (size!32444 lt!1451490)))))

(declare-fun b!4062741 () Bool)

(declare-fun res!1657434 () Bool)

(assert (=> b!4062741 (=> (not res!1657434) (not e!2521103))))

(assert (=> b!4062741 (= res!1657434 (= (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451862)))) (originalCharacters!7565 (_1!24360 (get!14233 lt!1451862)))))))

(declare-fun b!4062742 () Bool)

(declare-fun res!1657431 () Bool)

(assert (=> b!4062742 (=> (not res!1657431) (not e!2521103))))

(assert (=> b!4062742 (= res!1657431 (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (get!14233 lt!1451862)))) (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451862))))))))

(declare-fun b!4062743 () Bool)

(assert (=> b!4062743 (= e!2521103 (contains!8633 rules!2999 (rule!10059 (_1!24360 (get!14233 lt!1451862)))))))

(declare-fun b!4062744 () Bool)

(assert (=> b!4062744 (= e!2521101 call!288250)))

(declare-fun d!1207708 () Bool)

(assert (=> d!1207708 e!2521102))

(declare-fun res!1657433 () Bool)

(assert (=> d!1207708 (=> res!1657433 e!2521102)))

(assert (=> d!1207708 (= res!1657433 (isEmpty!25897 lt!1451862))))

(assert (=> d!1207708 (= lt!1451862 e!2521101)))

(declare-fun c!701651 () Bool)

(assert (=> d!1207708 (= c!701651 (and (is-Cons!43394 rules!2999) (is-Nil!43394 (t!336677 rules!2999))))))

(declare-fun lt!1451861 () Unit!62828)

(declare-fun lt!1451859 () Unit!62828)

(assert (=> d!1207708 (= lt!1451861 lt!1451859)))

(assert (=> d!1207708 (isPrefix!4052 lt!1451490 lt!1451490)))

(assert (=> d!1207708 (= lt!1451859 (lemmaIsPrefixRefl!2619 lt!1451490 lt!1451490))))

(declare-fun rulesValidInductive!2547 (LexerInterface!6554 List!43518) Bool)

(assert (=> d!1207708 (rulesValidInductive!2547 thiss!21717 rules!2999)))

(assert (=> d!1207708 (= (maxPrefix!3852 thiss!21717 rules!2999 lt!1451490) lt!1451862)))

(declare-fun b!4062745 () Bool)

(declare-fun res!1657435 () Bool)

(assert (=> b!4062745 (=> (not res!1657435) (not e!2521103))))

(assert (=> b!4062745 (= res!1657435 (= (value!219138 (_1!24360 (get!14233 lt!1451862))) (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (get!14233 lt!1451862)))) (seqFromList!5182 (originalCharacters!7565 (_1!24360 (get!14233 lt!1451862)))))))))

(assert (= (and d!1207708 c!701651) b!4062744))

(assert (= (and d!1207708 (not c!701651)) b!4062737))

(assert (= (or b!4062744 b!4062737) bm!288245))

(assert (= (and d!1207708 (not res!1657433)) b!4062736))

(assert (= (and b!4062736 res!1657437) b!4062741))

(assert (= (and b!4062741 res!1657434) b!4062739))

(assert (= (and b!4062739 res!1657432) b!4062735))

(assert (= (and b!4062735 res!1657436) b!4062745))

(assert (= (and b!4062745 res!1657435) b!4062742))

(assert (= (and b!4062742 res!1657431) b!4062743))

(declare-fun m!4669251 () Bool)

(assert (=> b!4062736 m!4669251))

(declare-fun m!4669253 () Bool)

(assert (=> b!4062737 m!4669253))

(declare-fun m!4669255 () Bool)

(assert (=> bm!288245 m!4669255))

(declare-fun m!4669257 () Bool)

(assert (=> b!4062739 m!4669257))

(declare-fun m!4669259 () Bool)

(assert (=> b!4062739 m!4669259))

(assert (=> b!4062739 m!4668793))

(assert (=> b!4062745 m!4669257))

(declare-fun m!4669261 () Bool)

(assert (=> b!4062745 m!4669261))

(assert (=> b!4062745 m!4669261))

(declare-fun m!4669263 () Bool)

(assert (=> b!4062745 m!4669263))

(assert (=> b!4062742 m!4669257))

(declare-fun m!4669265 () Bool)

(assert (=> b!4062742 m!4669265))

(assert (=> b!4062742 m!4669265))

(declare-fun m!4669267 () Bool)

(assert (=> b!4062742 m!4669267))

(assert (=> b!4062742 m!4669267))

(declare-fun m!4669269 () Bool)

(assert (=> b!4062742 m!4669269))

(assert (=> b!4062741 m!4669257))

(assert (=> b!4062741 m!4669265))

(assert (=> b!4062741 m!4669265))

(assert (=> b!4062741 m!4669267))

(assert (=> b!4062743 m!4669257))

(declare-fun m!4669271 () Bool)

(assert (=> b!4062743 m!4669271))

(assert (=> b!4062735 m!4669257))

(assert (=> b!4062735 m!4669265))

(assert (=> b!4062735 m!4669265))

(assert (=> b!4062735 m!4669267))

(assert (=> b!4062735 m!4669267))

(declare-fun m!4669273 () Bool)

(assert (=> b!4062735 m!4669273))

(declare-fun m!4669275 () Bool)

(assert (=> d!1207708 m!4669275))

(assert (=> d!1207708 m!4668473))

(assert (=> d!1207708 m!4668475))

(declare-fun m!4669277 () Bool)

(assert (=> d!1207708 m!4669277))

(assert (=> b!4062103 d!1207708))

(declare-fun b!4062750 () Bool)

(declare-fun res!1657438 () Bool)

(declare-fun e!2521106 () Bool)

(assert (=> b!4062750 (=> (not res!1657438) (not e!2521106))))

(declare-fun lt!1451868 () List!43516)

(assert (=> b!4062750 (= res!1657438 (= (size!32444 lt!1451868) (+ (size!32444 prefix!494) (size!32444 suffix!1299))))))

(declare-fun b!4062748 () Bool)

(declare-fun e!2521107 () List!43516)

(assert (=> b!4062748 (= e!2521107 suffix!1299)))

(declare-fun b!4062751 () Bool)

(assert (=> b!4062751 (= e!2521106 (or (not (= suffix!1299 Nil!43392)) (= lt!1451868 prefix!494)))))

(declare-fun d!1207732 () Bool)

(assert (=> d!1207732 e!2521106))

(declare-fun res!1657439 () Bool)

(assert (=> d!1207732 (=> (not res!1657439) (not e!2521106))))

(assert (=> d!1207732 (= res!1657439 (= (content!6621 lt!1451868) (set.union (content!6621 prefix!494) (content!6621 suffix!1299))))))

(assert (=> d!1207732 (= lt!1451868 e!2521107)))

(declare-fun c!701654 () Bool)

(assert (=> d!1207732 (= c!701654 (is-Nil!43392 prefix!494))))

(assert (=> d!1207732 (= (++!11367 prefix!494 suffix!1299) lt!1451868)))

(declare-fun b!4062749 () Bool)

(assert (=> b!4062749 (= e!2521107 (Cons!43392 (h!48812 prefix!494) (++!11367 (t!336675 prefix!494) suffix!1299)))))

(assert (= (and d!1207732 c!701654) b!4062748))

(assert (= (and d!1207732 (not c!701654)) b!4062749))

(assert (= (and d!1207732 res!1657439) b!4062750))

(assert (= (and b!4062750 res!1657438) b!4062751))

(declare-fun m!4669281 () Bool)

(assert (=> b!4062750 m!4669281))

(assert (=> b!4062750 m!4668483))

(assert (=> b!4062750 m!4668515))

(declare-fun m!4669283 () Bool)

(assert (=> d!1207732 m!4669283))

(assert (=> d!1207732 m!4668811))

(assert (=> d!1207732 m!4669103))

(declare-fun m!4669285 () Bool)

(assert (=> b!4062749 m!4669285))

(assert (=> b!4062103 d!1207732))

(declare-fun d!1207736 () Bool)

(assert (=> d!1207736 (= (_2!24360 (v!39800 lt!1451450)) lt!1451469)))

(declare-fun lt!1451870 () Unit!62828)

(assert (=> d!1207736 (= lt!1451870 (choose!24702 lt!1451473 (_2!24360 (v!39800 lt!1451450)) lt!1451473 lt!1451469 lt!1451489))))

(assert (=> d!1207736 (isPrefix!4052 lt!1451473 lt!1451489)))

(assert (=> d!1207736 (= (lemmaSamePrefixThenSameSuffix!2213 lt!1451473 (_2!24360 (v!39800 lt!1451450)) lt!1451473 lt!1451469 lt!1451489) lt!1451870)))

(declare-fun bs!592205 () Bool)

(assert (= bs!592205 d!1207736))

(declare-fun m!4669291 () Bool)

(assert (=> bs!592205 m!4669291))

(assert (=> bs!592205 m!4668399))

(assert (=> b!4062146 d!1207736))

(declare-fun b!4062755 () Bool)

(declare-fun res!1657442 () Bool)

(declare-fun e!2521112 () Bool)

(assert (=> b!4062755 (=> (not res!1657442) (not e!2521112))))

(assert (=> b!4062755 (= res!1657442 (= (head!8574 lt!1451473) (head!8574 lt!1451493)))))

(declare-fun d!1207740 () Bool)

(declare-fun e!2521110 () Bool)

(assert (=> d!1207740 e!2521110))

(declare-fun res!1657443 () Bool)

(assert (=> d!1207740 (=> res!1657443 e!2521110)))

(declare-fun lt!1451871 () Bool)

(assert (=> d!1207740 (= res!1657443 (not lt!1451871))))

(declare-fun e!2521111 () Bool)

(assert (=> d!1207740 (= lt!1451871 e!2521111)))

(declare-fun res!1657444 () Bool)

(assert (=> d!1207740 (=> res!1657444 e!2521111)))

(assert (=> d!1207740 (= res!1657444 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207740 (= (isPrefix!4052 lt!1451473 lt!1451493) lt!1451871)))

(declare-fun b!4062756 () Bool)

(assert (=> b!4062756 (= e!2521112 (isPrefix!4052 (tail!6306 lt!1451473) (tail!6306 lt!1451493)))))

(declare-fun b!4062757 () Bool)

(assert (=> b!4062757 (= e!2521110 (>= (size!32444 lt!1451493) (size!32444 lt!1451473)))))

(declare-fun b!4062754 () Bool)

(assert (=> b!4062754 (= e!2521111 e!2521112)))

(declare-fun res!1657445 () Bool)

(assert (=> b!4062754 (=> (not res!1657445) (not e!2521112))))

(assert (=> b!4062754 (= res!1657445 (not (is-Nil!43392 lt!1451493)))))

(assert (= (and d!1207740 (not res!1657444)) b!4062754))

(assert (= (and b!4062754 res!1657445) b!4062755))

(assert (= (and b!4062755 res!1657442) b!4062756))

(assert (= (and d!1207740 (not res!1657443)) b!4062757))

(assert (=> b!4062755 m!4668737))

(declare-fun m!4669293 () Bool)

(assert (=> b!4062755 m!4669293))

(assert (=> b!4062756 m!4668733))

(declare-fun m!4669295 () Bool)

(assert (=> b!4062756 m!4669295))

(assert (=> b!4062756 m!4668733))

(assert (=> b!4062756 m!4669295))

(declare-fun m!4669297 () Bool)

(assert (=> b!4062756 m!4669297))

(declare-fun m!4669299 () Bool)

(assert (=> b!4062757 m!4669299))

(assert (=> b!4062757 m!4668379))

(assert (=> b!4062146 d!1207740))

(declare-fun d!1207742 () Bool)

(assert (=> d!1207742 (isPrefix!4052 lt!1451473 (++!11367 lt!1451473 lt!1451469))))

(declare-fun lt!1451872 () Unit!62828)

(assert (=> d!1207742 (= lt!1451872 (choose!24705 lt!1451473 lt!1451469))))

(assert (=> d!1207742 (= (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451473 lt!1451469) lt!1451872)))

(declare-fun bs!592206 () Bool)

(assert (= bs!592206 d!1207742))

(assert (=> bs!592206 m!4668477))

(assert (=> bs!592206 m!4668477))

(declare-fun m!4669301 () Bool)

(assert (=> bs!592206 m!4669301))

(declare-fun m!4669303 () Bool)

(assert (=> bs!592206 m!4669303))

(assert (=> b!4062146 d!1207742))

(declare-fun b!4062758 () Bool)

(declare-fun res!1657451 () Bool)

(declare-fun e!2521115 () Bool)

(assert (=> b!4062758 (=> (not res!1657451) (not e!2521115))))

(declare-fun lt!1451877 () Option!9379)

(assert (=> b!4062758 (= res!1657451 (= (++!11367 (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451877)))) (_2!24360 (get!14233 lt!1451877))) lt!1451489))))

(declare-fun b!4062759 () Bool)

(declare-fun e!2521114 () Bool)

(assert (=> b!4062759 (= e!2521114 e!2521115)))

(declare-fun res!1657452 () Bool)

(assert (=> b!4062759 (=> (not res!1657452) (not e!2521115))))

(assert (=> b!4062759 (= res!1657452 (isDefined!7126 lt!1451877))))

(declare-fun bm!288246 () Bool)

(declare-fun call!288251 () Option!9379)

(assert (=> bm!288246 (= call!288251 (maxPrefixOneRule!2864 thiss!21717 (h!48814 rules!2999) lt!1451489))))

(declare-fun b!4062760 () Bool)

(declare-fun e!2521113 () Option!9379)

(declare-fun lt!1451875 () Option!9379)

(declare-fun lt!1451873 () Option!9379)

(assert (=> b!4062760 (= e!2521113 (ite (and (is-None!9378 lt!1451875) (is-None!9378 lt!1451873)) None!9378 (ite (is-None!9378 lt!1451873) lt!1451875 (ite (is-None!9378 lt!1451875) lt!1451873 (ite (>= (size!32443 (_1!24360 (v!39800 lt!1451875))) (size!32443 (_1!24360 (v!39800 lt!1451873)))) lt!1451875 lt!1451873)))))))

(assert (=> b!4062760 (= lt!1451875 call!288251)))

(assert (=> b!4062760 (= lt!1451873 (maxPrefix!3852 thiss!21717 (t!336677 rules!2999) lt!1451489))))

(declare-fun b!4062761 () Bool)

(declare-fun res!1657447 () Bool)

(assert (=> b!4062761 (=> (not res!1657447) (not e!2521115))))

(assert (=> b!4062761 (= res!1657447 (< (size!32444 (_2!24360 (get!14233 lt!1451877))) (size!32444 lt!1451489)))))

(declare-fun b!4062762 () Bool)

(declare-fun res!1657449 () Bool)

(assert (=> b!4062762 (=> (not res!1657449) (not e!2521115))))

(assert (=> b!4062762 (= res!1657449 (= (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451877)))) (originalCharacters!7565 (_1!24360 (get!14233 lt!1451877)))))))

(declare-fun b!4062763 () Bool)

(declare-fun res!1657446 () Bool)

(assert (=> b!4062763 (=> (not res!1657446) (not e!2521115))))

(assert (=> b!4062763 (= res!1657446 (matchR!5823 (regex!6965 (rule!10059 (_1!24360 (get!14233 lt!1451877)))) (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451877))))))))

(declare-fun b!4062764 () Bool)

(assert (=> b!4062764 (= e!2521115 (contains!8633 rules!2999 (rule!10059 (_1!24360 (get!14233 lt!1451877)))))))

(declare-fun b!4062765 () Bool)

(assert (=> b!4062765 (= e!2521113 call!288251)))

(declare-fun d!1207744 () Bool)

(assert (=> d!1207744 e!2521114))

(declare-fun res!1657448 () Bool)

(assert (=> d!1207744 (=> res!1657448 e!2521114)))

(assert (=> d!1207744 (= res!1657448 (isEmpty!25897 lt!1451877))))

(assert (=> d!1207744 (= lt!1451877 e!2521113)))

(declare-fun c!701655 () Bool)

(assert (=> d!1207744 (= c!701655 (and (is-Cons!43394 rules!2999) (is-Nil!43394 (t!336677 rules!2999))))))

(declare-fun lt!1451876 () Unit!62828)

(declare-fun lt!1451874 () Unit!62828)

(assert (=> d!1207744 (= lt!1451876 lt!1451874)))

(assert (=> d!1207744 (isPrefix!4052 lt!1451489 lt!1451489)))

(assert (=> d!1207744 (= lt!1451874 (lemmaIsPrefixRefl!2619 lt!1451489 lt!1451489))))

(assert (=> d!1207744 (rulesValidInductive!2547 thiss!21717 rules!2999)))

(assert (=> d!1207744 (= (maxPrefix!3852 thiss!21717 rules!2999 lt!1451489) lt!1451877)))

(declare-fun b!4062766 () Bool)

(declare-fun res!1657450 () Bool)

(assert (=> b!4062766 (=> (not res!1657450) (not e!2521115))))

(assert (=> b!4062766 (= res!1657450 (= (value!219138 (_1!24360 (get!14233 lt!1451877))) (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (get!14233 lt!1451877)))) (seqFromList!5182 (originalCharacters!7565 (_1!24360 (get!14233 lt!1451877)))))))))

(assert (= (and d!1207744 c!701655) b!4062765))

(assert (= (and d!1207744 (not c!701655)) b!4062760))

(assert (= (or b!4062765 b!4062760) bm!288246))

(assert (= (and d!1207744 (not res!1657448)) b!4062759))

(assert (= (and b!4062759 res!1657452) b!4062762))

(assert (= (and b!4062762 res!1657449) b!4062761))

(assert (= (and b!4062761 res!1657447) b!4062758))

(assert (= (and b!4062758 res!1657451) b!4062766))

(assert (= (and b!4062766 res!1657450) b!4062763))

(assert (= (and b!4062763 res!1657446) b!4062764))

(declare-fun m!4669305 () Bool)

(assert (=> b!4062759 m!4669305))

(declare-fun m!4669307 () Bool)

(assert (=> b!4062760 m!4669307))

(declare-fun m!4669309 () Bool)

(assert (=> bm!288246 m!4669309))

(declare-fun m!4669311 () Bool)

(assert (=> b!4062761 m!4669311))

(declare-fun m!4669313 () Bool)

(assert (=> b!4062761 m!4669313))

(assert (=> b!4062761 m!4668769))

(assert (=> b!4062766 m!4669311))

(declare-fun m!4669315 () Bool)

(assert (=> b!4062766 m!4669315))

(assert (=> b!4062766 m!4669315))

(declare-fun m!4669317 () Bool)

(assert (=> b!4062766 m!4669317))

(assert (=> b!4062763 m!4669311))

(declare-fun m!4669319 () Bool)

(assert (=> b!4062763 m!4669319))

(assert (=> b!4062763 m!4669319))

(declare-fun m!4669321 () Bool)

(assert (=> b!4062763 m!4669321))

(assert (=> b!4062763 m!4669321))

(declare-fun m!4669323 () Bool)

(assert (=> b!4062763 m!4669323))

(assert (=> b!4062762 m!4669311))

(assert (=> b!4062762 m!4669319))

(assert (=> b!4062762 m!4669319))

(assert (=> b!4062762 m!4669321))

(assert (=> b!4062764 m!4669311))

(declare-fun m!4669325 () Bool)

(assert (=> b!4062764 m!4669325))

(assert (=> b!4062758 m!4669311))

(assert (=> b!4062758 m!4669319))

(assert (=> b!4062758 m!4669319))

(assert (=> b!4062758 m!4669321))

(assert (=> b!4062758 m!4669321))

(declare-fun m!4669327 () Bool)

(assert (=> b!4062758 m!4669327))

(declare-fun m!4669329 () Bool)

(assert (=> d!1207744 m!4669329))

(declare-fun m!4669331 () Bool)

(assert (=> d!1207744 m!4669331))

(declare-fun m!4669333 () Bool)

(assert (=> d!1207744 m!4669333))

(assert (=> d!1207744 m!4669277))

(assert (=> b!4062125 d!1207744))

(declare-fun d!1207746 () Bool)

(assert (=> d!1207746 (= suffixResult!105 lt!1451438)))

(declare-fun lt!1451880 () Unit!62828)

(assert (=> d!1207746 (= lt!1451880 (choose!24702 lt!1451483 suffixResult!105 lt!1451483 lt!1451438 lt!1451490))))

(assert (=> d!1207746 (isPrefix!4052 lt!1451483 lt!1451490)))

(assert (=> d!1207746 (= (lemmaSamePrefixThenSameSuffix!2213 lt!1451483 suffixResult!105 lt!1451483 lt!1451438 lt!1451490) lt!1451880)))

(declare-fun bs!592207 () Bool)

(assert (= bs!592207 d!1207746))

(declare-fun m!4669335 () Bool)

(assert (=> bs!592207 m!4669335))

(assert (=> bs!592207 m!4668405))

(assert (=> b!4062125 d!1207746))

(declare-fun b!4062776 () Bool)

(declare-fun res!1657453 () Bool)

(declare-fun e!2521123 () Bool)

(assert (=> b!4062776 (=> (not res!1657453) (not e!2521123))))

(assert (=> b!4062776 (= res!1657453 (= (head!8574 lt!1451483) (head!8574 lt!1451495)))))

(declare-fun d!1207748 () Bool)

(declare-fun e!2521121 () Bool)

(assert (=> d!1207748 e!2521121))

(declare-fun res!1657454 () Bool)

(assert (=> d!1207748 (=> res!1657454 e!2521121)))

(declare-fun lt!1451881 () Bool)

(assert (=> d!1207748 (= res!1657454 (not lt!1451881))))

(declare-fun e!2521122 () Bool)

(assert (=> d!1207748 (= lt!1451881 e!2521122)))

(declare-fun res!1657455 () Bool)

(assert (=> d!1207748 (=> res!1657455 e!2521122)))

(assert (=> d!1207748 (= res!1657455 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207748 (= (isPrefix!4052 lt!1451483 lt!1451495) lt!1451881)))

(declare-fun b!4062777 () Bool)

(assert (=> b!4062777 (= e!2521123 (isPrefix!4052 (tail!6306 lt!1451483) (tail!6306 lt!1451495)))))

(declare-fun b!4062778 () Bool)

(assert (=> b!4062778 (= e!2521121 (>= (size!32444 lt!1451495) (size!32444 lt!1451483)))))

(declare-fun b!4062775 () Bool)

(assert (=> b!4062775 (= e!2521122 e!2521123)))

(declare-fun res!1657456 () Bool)

(assert (=> b!4062775 (=> (not res!1657456) (not e!2521123))))

(assert (=> b!4062775 (= res!1657456 (not (is-Nil!43392 lt!1451495)))))

(assert (= (and d!1207748 (not res!1657455)) b!4062775))

(assert (= (and b!4062775 res!1657456) b!4062776))

(assert (= (and b!4062776 res!1657453) b!4062777))

(assert (= (and d!1207748 (not res!1657454)) b!4062778))

(assert (=> b!4062776 m!4668753))

(declare-fun m!4669337 () Bool)

(assert (=> b!4062776 m!4669337))

(assert (=> b!4062777 m!4668749))

(declare-fun m!4669339 () Bool)

(assert (=> b!4062777 m!4669339))

(assert (=> b!4062777 m!4668749))

(assert (=> b!4062777 m!4669339))

(declare-fun m!4669341 () Bool)

(assert (=> b!4062777 m!4669341))

(declare-fun m!4669343 () Bool)

(assert (=> b!4062778 m!4669343))

(assert (=> b!4062778 m!4668481))

(assert (=> b!4062125 d!1207748))

(declare-fun d!1207750 () Bool)

(assert (=> d!1207750 (isPrefix!4052 lt!1451483 (++!11367 lt!1451483 lt!1451438))))

(declare-fun lt!1451883 () Unit!62828)

(assert (=> d!1207750 (= lt!1451883 (choose!24705 lt!1451483 lt!1451438))))

(assert (=> d!1207750 (= (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451483 lt!1451438) lt!1451883)))

(declare-fun bs!592208 () Bool)

(assert (= bs!592208 d!1207750))

(assert (=> bs!592208 m!4668469))

(assert (=> bs!592208 m!4668469))

(declare-fun m!4669345 () Bool)

(assert (=> bs!592208 m!4669345))

(declare-fun m!4669349 () Bool)

(assert (=> bs!592208 m!4669349))

(assert (=> b!4062125 d!1207750))

(declare-fun b!4062784 () Bool)

(declare-fun res!1657457 () Bool)

(declare-fun e!2521128 () Bool)

(assert (=> b!4062784 (=> (not res!1657457) (not e!2521128))))

(assert (=> b!4062784 (= res!1657457 (= (head!8574 lt!1451473) (head!8574 lt!1451490)))))

(declare-fun d!1207752 () Bool)

(declare-fun e!2521126 () Bool)

(assert (=> d!1207752 e!2521126))

(declare-fun res!1657458 () Bool)

(assert (=> d!1207752 (=> res!1657458 e!2521126)))

(declare-fun lt!1451884 () Bool)

(assert (=> d!1207752 (= res!1657458 (not lt!1451884))))

(declare-fun e!2521127 () Bool)

(assert (=> d!1207752 (= lt!1451884 e!2521127)))

(declare-fun res!1657459 () Bool)

(assert (=> d!1207752 (=> res!1657459 e!2521127)))

(assert (=> d!1207752 (= res!1657459 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207752 (= (isPrefix!4052 lt!1451473 lt!1451490) lt!1451884)))

(declare-fun b!4062785 () Bool)

(assert (=> b!4062785 (= e!2521128 (isPrefix!4052 (tail!6306 lt!1451473) (tail!6306 lt!1451490)))))

(declare-fun b!4062786 () Bool)

(assert (=> b!4062786 (= e!2521126 (>= (size!32444 lt!1451490) (size!32444 lt!1451473)))))

(declare-fun b!4062783 () Bool)

(assert (=> b!4062783 (= e!2521127 e!2521128)))

(declare-fun res!1657460 () Bool)

(assert (=> b!4062783 (=> (not res!1657460) (not e!2521128))))

(assert (=> b!4062783 (= res!1657460 (not (is-Nil!43392 lt!1451490)))))

(assert (= (and d!1207752 (not res!1657459)) b!4062783))

(assert (= (and b!4062783 res!1657460) b!4062784))

(assert (= (and b!4062784 res!1657457) b!4062785))

(assert (= (and d!1207752 (not res!1657458)) b!4062786))

(assert (=> b!4062784 m!4668737))

(assert (=> b!4062784 m!4668799))

(assert (=> b!4062785 m!4668733))

(assert (=> b!4062785 m!4668795))

(assert (=> b!4062785 m!4668733))

(assert (=> b!4062785 m!4668795))

(declare-fun m!4669351 () Bool)

(assert (=> b!4062785 m!4669351))

(assert (=> b!4062786 m!4668793))

(assert (=> b!4062786 m!4668379))

(assert (=> b!4062144 d!1207752))

(declare-fun b!4062792 () Bool)

(declare-fun res!1657461 () Bool)

(declare-fun e!2521133 () Bool)

(assert (=> b!4062792 (=> (not res!1657461) (not e!2521133))))

(assert (=> b!4062792 (= res!1657461 (= (head!8574 lt!1451473) (head!8574 lt!1451470)))))

(declare-fun d!1207756 () Bool)

(declare-fun e!2521131 () Bool)

(assert (=> d!1207756 e!2521131))

(declare-fun res!1657462 () Bool)

(assert (=> d!1207756 (=> res!1657462 e!2521131)))

(declare-fun lt!1451886 () Bool)

(assert (=> d!1207756 (= res!1657462 (not lt!1451886))))

(declare-fun e!2521132 () Bool)

(assert (=> d!1207756 (= lt!1451886 e!2521132)))

(declare-fun res!1657463 () Bool)

(assert (=> d!1207756 (=> res!1657463 e!2521132)))

(assert (=> d!1207756 (= res!1657463 (is-Nil!43392 lt!1451473))))

(assert (=> d!1207756 (= (isPrefix!4052 lt!1451473 lt!1451470) lt!1451886)))

(declare-fun b!4062793 () Bool)

(assert (=> b!4062793 (= e!2521133 (isPrefix!4052 (tail!6306 lt!1451473) (tail!6306 lt!1451470)))))

(declare-fun b!4062794 () Bool)

(assert (=> b!4062794 (= e!2521131 (>= (size!32444 lt!1451470) (size!32444 lt!1451473)))))

(declare-fun b!4062791 () Bool)

(assert (=> b!4062791 (= e!2521132 e!2521133)))

(declare-fun res!1657464 () Bool)

(assert (=> b!4062791 (=> (not res!1657464) (not e!2521133))))

(assert (=> b!4062791 (= res!1657464 (not (is-Nil!43392 lt!1451470)))))

(assert (= (and d!1207756 (not res!1657463)) b!4062791))

(assert (= (and b!4062791 res!1657464) b!4062792))

(assert (= (and b!4062792 res!1657461) b!4062793))

(assert (= (and d!1207756 (not res!1657462)) b!4062794))

(assert (=> b!4062792 m!4668737))

(declare-fun m!4669357 () Bool)

(assert (=> b!4062792 m!4669357))

(assert (=> b!4062793 m!4668733))

(declare-fun m!4669359 () Bool)

(assert (=> b!4062793 m!4669359))

(assert (=> b!4062793 m!4668733))

(assert (=> b!4062793 m!4669359))

(declare-fun m!4669361 () Bool)

(assert (=> b!4062793 m!4669361))

(declare-fun m!4669363 () Bool)

(assert (=> b!4062794 m!4669363))

(assert (=> b!4062794 m!4668379))

(assert (=> b!4062144 d!1207756))

(declare-fun d!1207762 () Bool)

(assert (=> d!1207762 (isPrefix!4052 lt!1451473 (++!11367 lt!1451489 lt!1451432))))

(declare-fun lt!1451888 () Unit!62828)

(assert (=> d!1207762 (= lt!1451888 (choose!24699 lt!1451473 lt!1451489 lt!1451432))))

(assert (=> d!1207762 (isPrefix!4052 lt!1451473 lt!1451489)))

(assert (=> d!1207762 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!845 lt!1451473 lt!1451489 lt!1451432) lt!1451888)))

(declare-fun bs!592210 () Bool)

(assert (= bs!592210 d!1207762))

(assert (=> bs!592210 m!4668331))

(assert (=> bs!592210 m!4668331))

(declare-fun m!4669365 () Bool)

(assert (=> bs!592210 m!4669365))

(declare-fun m!4669367 () Bool)

(assert (=> bs!592210 m!4669367))

(assert (=> bs!592210 m!4668399))

(assert (=> b!4062144 d!1207762))

(declare-fun b!4062797 () Bool)

(declare-fun res!1657465 () Bool)

(declare-fun e!2521134 () Bool)

(assert (=> b!4062797 (=> (not res!1657465) (not e!2521134))))

(declare-fun lt!1451889 () List!43516)

(assert (=> b!4062797 (= res!1657465 (= (size!32444 lt!1451889) (+ (size!32444 prefix!494) (size!32444 newSuffix!27))))))

(declare-fun b!4062795 () Bool)

(declare-fun e!2521135 () List!43516)

(assert (=> b!4062795 (= e!2521135 newSuffix!27)))

(declare-fun b!4062798 () Bool)

(assert (=> b!4062798 (= e!2521134 (or (not (= newSuffix!27 Nil!43392)) (= lt!1451889 prefix!494)))))

(declare-fun d!1207764 () Bool)

(assert (=> d!1207764 e!2521134))

(declare-fun res!1657466 () Bool)

(assert (=> d!1207764 (=> (not res!1657466) (not e!2521134))))

(assert (=> d!1207764 (= res!1657466 (= (content!6621 lt!1451889) (set.union (content!6621 prefix!494) (content!6621 newSuffix!27))))))

(assert (=> d!1207764 (= lt!1451889 e!2521135)))

(declare-fun c!701664 () Bool)

(assert (=> d!1207764 (= c!701664 (is-Nil!43392 prefix!494))))

(assert (=> d!1207764 (= (++!11367 prefix!494 newSuffix!27) lt!1451889)))

(declare-fun b!4062796 () Bool)

(assert (=> b!4062796 (= e!2521135 (Cons!43392 (h!48812 prefix!494) (++!11367 (t!336675 prefix!494) newSuffix!27)))))

(assert (= (and d!1207764 c!701664) b!4062795))

(assert (= (and d!1207764 (not c!701664)) b!4062796))

(assert (= (and d!1207764 res!1657466) b!4062797))

(assert (= (and b!4062797 res!1657465) b!4062798))

(declare-fun m!4669369 () Bool)

(assert (=> b!4062797 m!4669369))

(assert (=> b!4062797 m!4668483))

(assert (=> b!4062797 m!4668517))

(declare-fun m!4669371 () Bool)

(assert (=> d!1207764 m!4669371))

(assert (=> d!1207764 m!4668811))

(assert (=> d!1207764 m!4669063))

(declare-fun m!4669373 () Bool)

(assert (=> b!4062796 m!4669373))

(assert (=> b!4062123 d!1207764))

(declare-fun b!4062801 () Bool)

(declare-fun res!1657467 () Bool)

(declare-fun e!2521136 () Bool)

(assert (=> b!4062801 (=> (not res!1657467) (not e!2521136))))

(declare-fun lt!1451890 () List!43516)

(assert (=> b!4062801 (= res!1657467 (= (size!32444 lt!1451890) (+ (size!32444 lt!1451483) (size!32444 newSuffixResult!27))))))

(declare-fun b!4062799 () Bool)

(declare-fun e!2521137 () List!43516)

(assert (=> b!4062799 (= e!2521137 newSuffixResult!27)))

(declare-fun b!4062802 () Bool)

(assert (=> b!4062802 (= e!2521136 (or (not (= newSuffixResult!27 Nil!43392)) (= lt!1451890 lt!1451483)))))

(declare-fun d!1207766 () Bool)

(assert (=> d!1207766 e!2521136))

(declare-fun res!1657468 () Bool)

(assert (=> d!1207766 (=> (not res!1657468) (not e!2521136))))

(assert (=> d!1207766 (= res!1657468 (= (content!6621 lt!1451890) (set.union (content!6621 lt!1451483) (content!6621 newSuffixResult!27))))))

(assert (=> d!1207766 (= lt!1451890 e!2521137)))

(declare-fun c!701665 () Bool)

(assert (=> d!1207766 (= c!701665 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207766 (= (++!11367 lt!1451483 newSuffixResult!27) lt!1451890)))

(declare-fun b!4062800 () Bool)

(assert (=> b!4062800 (= e!2521137 (Cons!43392 (h!48812 lt!1451483) (++!11367 (t!336675 lt!1451483) newSuffixResult!27)))))

(assert (= (and d!1207766 c!701665) b!4062799))

(assert (= (and d!1207766 (not c!701665)) b!4062800))

(assert (= (and d!1207766 res!1657468) b!4062801))

(assert (= (and b!4062801 res!1657467) b!4062802))

(declare-fun m!4669375 () Bool)

(assert (=> b!4062801 m!4669375))

(assert (=> b!4062801 m!4668481))

(assert (=> b!4062801 m!4668909))

(declare-fun m!4669377 () Bool)

(assert (=> d!1207766 m!4669377))

(assert (=> d!1207766 m!4668785))

(assert (=> d!1207766 m!4668913))

(declare-fun m!4669379 () Bool)

(assert (=> b!4062800 m!4669379))

(assert (=> b!4062123 d!1207766))

(declare-fun b!4062804 () Bool)

(declare-fun res!1657469 () Bool)

(declare-fun e!2521140 () Bool)

(assert (=> b!4062804 (=> (not res!1657469) (not e!2521140))))

(assert (=> b!4062804 (= res!1657469 (= (head!8574 newSuffix!27) (head!8574 suffix!1299)))))

(declare-fun d!1207768 () Bool)

(declare-fun e!2521138 () Bool)

(assert (=> d!1207768 e!2521138))

(declare-fun res!1657470 () Bool)

(assert (=> d!1207768 (=> res!1657470 e!2521138)))

(declare-fun lt!1451893 () Bool)

(assert (=> d!1207768 (= res!1657470 (not lt!1451893))))

(declare-fun e!2521139 () Bool)

(assert (=> d!1207768 (= lt!1451893 e!2521139)))

(declare-fun res!1657471 () Bool)

(assert (=> d!1207768 (=> res!1657471 e!2521139)))

(assert (=> d!1207768 (= res!1657471 (is-Nil!43392 newSuffix!27))))

(assert (=> d!1207768 (= (isPrefix!4052 newSuffix!27 suffix!1299) lt!1451893)))

(declare-fun b!4062805 () Bool)

(assert (=> b!4062805 (= e!2521140 (isPrefix!4052 (tail!6306 newSuffix!27) (tail!6306 suffix!1299)))))

(declare-fun b!4062806 () Bool)

(assert (=> b!4062806 (= e!2521138 (>= (size!32444 suffix!1299) (size!32444 newSuffix!27)))))

(declare-fun b!4062803 () Bool)

(assert (=> b!4062803 (= e!2521139 e!2521140)))

(declare-fun res!1657472 () Bool)

(assert (=> b!4062803 (=> (not res!1657472) (not e!2521140))))

(assert (=> b!4062803 (= res!1657472 (not (is-Nil!43392 suffix!1299)))))

(assert (= (and d!1207768 (not res!1657471)) b!4062803))

(assert (= (and b!4062803 res!1657472) b!4062804))

(assert (= (and b!4062804 res!1657469) b!4062805))

(assert (= (and d!1207768 (not res!1657470)) b!4062806))

(declare-fun m!4669381 () Bool)

(assert (=> b!4062804 m!4669381))

(declare-fun m!4669383 () Bool)

(assert (=> b!4062804 m!4669383))

(declare-fun m!4669385 () Bool)

(assert (=> b!4062805 m!4669385))

(assert (=> b!4062805 m!4669069))

(assert (=> b!4062805 m!4669385))

(assert (=> b!4062805 m!4669069))

(declare-fun m!4669387 () Bool)

(assert (=> b!4062805 m!4669387))

(assert (=> b!4062806 m!4668515))

(assert (=> b!4062806 m!4668517))

(assert (=> b!4062145 d!1207768))

(declare-fun d!1207770 () Bool)

(declare-fun lt!1451895 () Int)

(assert (=> d!1207770 (>= lt!1451895 0)))

(declare-fun e!2521141 () Int)

(assert (=> d!1207770 (= lt!1451895 e!2521141)))

(declare-fun c!701666 () Bool)

(assert (=> d!1207770 (= c!701666 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207770 (= (size!32444 lt!1451483) lt!1451895)))

(declare-fun b!4062807 () Bool)

(assert (=> b!4062807 (= e!2521141 0)))

(declare-fun b!4062808 () Bool)

(assert (=> b!4062808 (= e!2521141 (+ 1 (size!32444 (t!336675 lt!1451483))))))

(assert (= (and d!1207770 c!701666) b!4062807))

(assert (= (and d!1207770 (not c!701666)) b!4062808))

(declare-fun m!4669391 () Bool)

(assert (=> b!4062808 m!4669391))

(assert (=> b!4062143 d!1207770))

(declare-fun d!1207774 () Bool)

(declare-fun lt!1451897 () Int)

(assert (=> d!1207774 (>= lt!1451897 0)))

(declare-fun e!2521144 () Int)

(assert (=> d!1207774 (= lt!1451897 e!2521144)))

(declare-fun c!701668 () Bool)

(assert (=> d!1207774 (= c!701668 (is-Nil!43392 prefix!494))))

(assert (=> d!1207774 (= (size!32444 prefix!494) lt!1451897)))

(declare-fun b!4062813 () Bool)

(assert (=> b!4062813 (= e!2521144 0)))

(declare-fun b!4062814 () Bool)

(assert (=> b!4062814 (= e!2521144 (+ 1 (size!32444 (t!336675 prefix!494))))))

(assert (= (and d!1207774 c!701668) b!4062813))

(assert (= (and d!1207774 (not c!701668)) b!4062814))

(declare-fun m!4669393 () Bool)

(assert (=> b!4062814 m!4669393))

(assert (=> b!4062143 d!1207774))

(declare-fun d!1207776 () Bool)

(assert (=> d!1207776 (= (list!16175 (charsOf!4781 token!484)) (list!16177 (c!701556 (charsOf!4781 token!484))))))

(declare-fun bs!592212 () Bool)

(assert (= bs!592212 d!1207776))

(declare-fun m!4669395 () Bool)

(assert (=> bs!592212 m!4669395))

(assert (=> b!4062143 d!1207776))

(declare-fun d!1207778 () Bool)

(declare-fun lt!1451898 () BalanceConc!25946)

(assert (=> d!1207778 (= (list!16175 lt!1451898) (originalCharacters!7565 token!484))))

(assert (=> d!1207778 (= lt!1451898 (dynLambda!18439 (toChars!9384 (transformation!6965 (rule!10059 token!484))) (value!219138 token!484)))))

(assert (=> d!1207778 (= (charsOf!4781 token!484) lt!1451898)))

(declare-fun b_lambda!118721 () Bool)

(assert (=> (not b_lambda!118721) (not d!1207778)))

(assert (=> d!1207778 t!336694))

(declare-fun b_and!312351 () Bool)

(assert (= b_and!312343 (and (=> t!336694 result!296140) b_and!312351)))

(assert (=> d!1207778 t!336696))

(declare-fun b_and!312353 () Bool)

(assert (= b_and!312345 (and (=> t!336696 result!296142) b_and!312353)))

(declare-fun m!4669407 () Bool)

(assert (=> d!1207778 m!4669407))

(assert (=> d!1207778 m!4669081))

(assert (=> b!4062143 d!1207778))

(declare-fun d!1207782 () Bool)

(assert (=> d!1207782 (= (maxPrefixOneRule!2864 thiss!21717 (rule!10059 token!484) lt!1451490) (Some!9378 (tuple2!42453 (Token!13069 (apply!10154 (transformation!6965 (rule!10059 token!484)) (seqFromList!5182 lt!1451483)) (rule!10059 token!484) (size!32444 lt!1451483) lt!1451483) suffixResult!105)))))

(declare-fun lt!1451899 () Unit!62828)

(assert (=> d!1207782 (= lt!1451899 (choose!24707 thiss!21717 rules!2999 lt!1451483 lt!1451490 suffixResult!105 (rule!10059 token!484)))))

(assert (=> d!1207782 (not (isEmpty!25894 rules!2999))))

(assert (=> d!1207782 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1670 thiss!21717 rules!2999 lt!1451483 lt!1451490 suffixResult!105 (rule!10059 token!484)) lt!1451899)))

(declare-fun bs!592213 () Bool)

(assert (= bs!592213 d!1207782))

(declare-fun m!4669409 () Bool)

(assert (=> bs!592213 m!4669409))

(assert (=> bs!592213 m!4668441))

(assert (=> bs!592213 m!4668453))

(assert (=> bs!592213 m!4668455))

(assert (=> bs!592213 m!4668463))

(assert (=> bs!592213 m!4668453))

(assert (=> bs!592213 m!4668481))

(assert (=> b!4062122 d!1207782))

(declare-fun d!1207784 () Bool)

(assert (=> d!1207784 (= (apply!10154 (transformation!6965 (rule!10059 token!484)) (seqFromList!5182 lt!1451483)) (dynLambda!18440 (toValue!9525 (transformation!6965 (rule!10059 token!484))) (seqFromList!5182 lt!1451483)))))

(declare-fun b_lambda!118723 () Bool)

(assert (=> (not b_lambda!118723) (not d!1207784)))

(declare-fun t!336698 () Bool)

(declare-fun tb!244401 () Bool)

(assert (=> (and b!4062127 (= (toValue!9525 (transformation!6965 (rule!10059 token!484))) (toValue!9525 (transformation!6965 (rule!10059 token!484)))) t!336698) tb!244401))

(declare-fun result!296144 () Bool)

(assert (=> tb!244401 (= result!296144 (inv!21 (dynLambda!18440 (toValue!9525 (transformation!6965 (rule!10059 token!484))) (seqFromList!5182 lt!1451483))))))

(declare-fun m!4669411 () Bool)

(assert (=> tb!244401 m!4669411))

(assert (=> d!1207784 t!336698))

(declare-fun b_and!312355 () Bool)

(assert (= b_and!312335 (and (=> t!336698 result!296144) b_and!312355)))

(declare-fun tb!244403 () Bool)

(declare-fun t!336700 () Bool)

(assert (=> (and b!4062136 (= (toValue!9525 (transformation!6965 (h!48814 rules!2999))) (toValue!9525 (transformation!6965 (rule!10059 token!484)))) t!336700) tb!244403))

(declare-fun result!296146 () Bool)

(assert (= result!296146 result!296144))

(assert (=> d!1207784 t!336700))

(declare-fun b_and!312357 () Bool)

(assert (= b_and!312337 (and (=> t!336700 result!296146) b_and!312357)))

(assert (=> d!1207784 m!4668453))

(declare-fun m!4669413 () Bool)

(assert (=> d!1207784 m!4669413))

(assert (=> b!4062122 d!1207784))

(declare-fun d!1207786 () Bool)

(assert (=> d!1207786 (= (seqFromList!5182 lt!1451483) (fromListB!2365 lt!1451483))))

(declare-fun bs!592214 () Bool)

(assert (= bs!592214 d!1207786))

(declare-fun m!4669415 () Bool)

(assert (=> bs!592214 m!4669415))

(assert (=> b!4062122 d!1207786))

(declare-fun d!1207788 () Bool)

(assert (=> d!1207788 (= lt!1451484 suffixResult!105)))

(declare-fun lt!1451900 () Unit!62828)

(assert (=> d!1207788 (= lt!1451900 (choose!24702 lt!1451483 lt!1451484 lt!1451483 suffixResult!105 lt!1451490))))

(assert (=> d!1207788 (isPrefix!4052 lt!1451483 lt!1451490)))

(assert (=> d!1207788 (= (lemmaSamePrefixThenSameSuffix!2213 lt!1451483 lt!1451484 lt!1451483 suffixResult!105 lt!1451490) lt!1451900)))

(declare-fun bs!592215 () Bool)

(assert (= bs!592215 d!1207788))

(declare-fun m!4669417 () Bool)

(assert (=> bs!592215 m!4669417))

(assert (=> bs!592215 m!4668405))

(assert (=> b!4062122 d!1207788))

(declare-fun b!4062816 () Bool)

(declare-fun res!1657475 () Bool)

(declare-fun e!2521148 () Bool)

(assert (=> b!4062816 (=> (not res!1657475) (not e!2521148))))

(assert (=> b!4062816 (= res!1657475 (= (head!8574 lt!1451483) (head!8574 lt!1451453)))))

(declare-fun d!1207790 () Bool)

(declare-fun e!2521146 () Bool)

(assert (=> d!1207790 e!2521146))

(declare-fun res!1657476 () Bool)

(assert (=> d!1207790 (=> res!1657476 e!2521146)))

(declare-fun lt!1451901 () Bool)

(assert (=> d!1207790 (= res!1657476 (not lt!1451901))))

(declare-fun e!2521147 () Bool)

(assert (=> d!1207790 (= lt!1451901 e!2521147)))

(declare-fun res!1657477 () Bool)

(assert (=> d!1207790 (=> res!1657477 e!2521147)))

(assert (=> d!1207790 (= res!1657477 (is-Nil!43392 lt!1451483))))

(assert (=> d!1207790 (= (isPrefix!4052 lt!1451483 lt!1451453) lt!1451901)))

(declare-fun b!4062817 () Bool)

(assert (=> b!4062817 (= e!2521148 (isPrefix!4052 (tail!6306 lt!1451483) (tail!6306 lt!1451453)))))

(declare-fun b!4062818 () Bool)

(assert (=> b!4062818 (= e!2521146 (>= (size!32444 lt!1451453) (size!32444 lt!1451483)))))

(declare-fun b!4062815 () Bool)

(assert (=> b!4062815 (= e!2521147 e!2521148)))

(declare-fun res!1657478 () Bool)

(assert (=> b!4062815 (=> (not res!1657478) (not e!2521148))))

(assert (=> b!4062815 (= res!1657478 (not (is-Nil!43392 lt!1451453)))))

(assert (= (and d!1207790 (not res!1657477)) b!4062815))

(assert (= (and b!4062815 res!1657478) b!4062816))

(assert (= (and b!4062816 res!1657475) b!4062817))

(assert (= (and d!1207790 (not res!1657476)) b!4062818))

(assert (=> b!4062816 m!4668753))

(declare-fun m!4669419 () Bool)

(assert (=> b!4062816 m!4669419))

(assert (=> b!4062817 m!4668749))

(declare-fun m!4669421 () Bool)

(assert (=> b!4062817 m!4669421))

(assert (=> b!4062817 m!4668749))

(assert (=> b!4062817 m!4669421))

(declare-fun m!4669423 () Bool)

(assert (=> b!4062817 m!4669423))

(declare-fun m!4669425 () Bool)

(assert (=> b!4062818 m!4669425))

(assert (=> b!4062818 m!4668481))

(assert (=> b!4062122 d!1207790))

(declare-fun b!4062823 () Bool)

(declare-fun e!2521152 () Bool)

(declare-fun lt!1451904 () Option!9379)

(assert (=> b!4062823 (= e!2521152 (= (size!32443 (_1!24360 (get!14233 lt!1451904))) (size!32444 (originalCharacters!7565 (_1!24360 (get!14233 lt!1451904))))))))

(declare-fun d!1207792 () Bool)

(declare-fun e!2521154 () Bool)

(assert (=> d!1207792 e!2521154))

(declare-fun res!1657482 () Bool)

(assert (=> d!1207792 (=> res!1657482 e!2521154)))

(assert (=> d!1207792 (= res!1657482 (isEmpty!25897 lt!1451904))))

(declare-fun e!2521153 () Option!9379)

(assert (=> d!1207792 (= lt!1451904 e!2521153)))

(declare-fun c!701671 () Bool)

(declare-fun lt!1451907 () tuple2!42456)

(assert (=> d!1207792 (= c!701671 (isEmpty!25896 (_1!24362 lt!1451907)))))

(assert (=> d!1207792 (= lt!1451907 (findLongestMatch!1321 (regex!6965 (rule!10059 token!484)) lt!1451490))))

(assert (=> d!1207792 (ruleValid!2895 thiss!21717 (rule!10059 token!484))))

(assert (=> d!1207792 (= (maxPrefixOneRule!2864 thiss!21717 (rule!10059 token!484) lt!1451490) lt!1451904)))

(declare-fun b!4062824 () Bool)

(declare-fun res!1657484 () Bool)

(assert (=> b!4062824 (=> (not res!1657484) (not e!2521152))))

(assert (=> b!4062824 (= res!1657484 (= (++!11367 (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451904)))) (_2!24360 (get!14233 lt!1451904))) lt!1451490))))

(declare-fun b!4062825 () Bool)

(declare-fun res!1657479 () Bool)

(assert (=> b!4062825 (=> (not res!1657479) (not e!2521152))))

(assert (=> b!4062825 (= res!1657479 (= (rule!10059 (_1!24360 (get!14233 lt!1451904))) (rule!10059 token!484)))))

(declare-fun b!4062826 () Bool)

(declare-fun res!1657481 () Bool)

(assert (=> b!4062826 (=> (not res!1657481) (not e!2521152))))

(assert (=> b!4062826 (= res!1657481 (= (value!219138 (_1!24360 (get!14233 lt!1451904))) (apply!10154 (transformation!6965 (rule!10059 (_1!24360 (get!14233 lt!1451904)))) (seqFromList!5182 (originalCharacters!7565 (_1!24360 (get!14233 lt!1451904)))))))))

(declare-fun b!4062827 () Bool)

(declare-fun res!1657480 () Bool)

(assert (=> b!4062827 (=> (not res!1657480) (not e!2521152))))

(assert (=> b!4062827 (= res!1657480 (< (size!32444 (_2!24360 (get!14233 lt!1451904))) (size!32444 lt!1451490)))))

(declare-fun b!4062828 () Bool)

(assert (=> b!4062828 (= e!2521154 e!2521152)))

(declare-fun res!1657483 () Bool)

(assert (=> b!4062828 (=> (not res!1657483) (not e!2521152))))

(assert (=> b!4062828 (= res!1657483 (matchR!5823 (regex!6965 (rule!10059 token!484)) (list!16175 (charsOf!4781 (_1!24360 (get!14233 lt!1451904))))))))

(declare-fun b!4062829 () Bool)

(assert (=> b!4062829 (= e!2521153 None!9378)))

(declare-fun b!4062830 () Bool)

(assert (=> b!4062830 (= e!2521153 (Some!9378 (tuple2!42453 (Token!13069 (apply!10154 (transformation!6965 (rule!10059 token!484)) (seqFromList!5182 (_1!24362 lt!1451907))) (rule!10059 token!484) (size!32447 (seqFromList!5182 (_1!24362 lt!1451907))) (_1!24362 lt!1451907)) (_2!24362 lt!1451907))))))

(declare-fun lt!1451908 () Unit!62828)

(assert (=> b!4062830 (= lt!1451908 (longestMatchIsAcceptedByMatchOrIsEmpty!1381 (regex!6965 (rule!10059 token!484)) lt!1451490))))

(declare-fun res!1657485 () Bool)

(assert (=> b!4062830 (= res!1657485 (isEmpty!25896 (_1!24362 (findLongestMatchInner!1408 (regex!6965 (rule!10059 token!484)) Nil!43392 (size!32444 Nil!43392) lt!1451490 lt!1451490 (size!32444 lt!1451490)))))))

(declare-fun e!2521151 () Bool)

(assert (=> b!4062830 (=> res!1657485 e!2521151)))

(assert (=> b!4062830 e!2521151))

(declare-fun lt!1451905 () Unit!62828)

(assert (=> b!4062830 (= lt!1451905 lt!1451908)))

(declare-fun lt!1451906 () Unit!62828)

(assert (=> b!4062830 (= lt!1451906 (lemmaSemiInverse!1936 (transformation!6965 (rule!10059 token!484)) (seqFromList!5182 (_1!24362 lt!1451907))))))

(declare-fun b!4062831 () Bool)

(assert (=> b!4062831 (= e!2521151 (matchR!5823 (regex!6965 (rule!10059 token!484)) (_1!24362 (findLongestMatchInner!1408 (regex!6965 (rule!10059 token!484)) Nil!43392 (size!32444 Nil!43392) lt!1451490 lt!1451490 (size!32444 lt!1451490)))))))

(assert (= (and d!1207792 c!701671) b!4062829))

(assert (= (and d!1207792 (not c!701671)) b!4062830))

(assert (= (and b!4062830 (not res!1657485)) b!4062831))

(assert (= (and d!1207792 (not res!1657482)) b!4062828))

(assert (= (and b!4062828 res!1657483) b!4062824))

(assert (= (and b!4062824 res!1657484) b!4062827))

(assert (= (and b!4062827 res!1657480) b!4062825))

(assert (= (and b!4062825 res!1657479) b!4062826))

(assert (= (and b!4062826 res!1657481) b!4062823))

(declare-fun m!4669437 () Bool)

(assert (=> b!4062823 m!4669437))

(declare-fun m!4669439 () Bool)

(assert (=> b!4062823 m!4669439))

(declare-fun m!4669441 () Bool)

(assert (=> d!1207792 m!4669441))

(declare-fun m!4669443 () Bool)

(assert (=> d!1207792 m!4669443))

(declare-fun m!4669445 () Bool)

(assert (=> d!1207792 m!4669445))

(assert (=> d!1207792 m!4668495))

(assert (=> b!4062826 m!4669437))

(declare-fun m!4669447 () Bool)

(assert (=> b!4062826 m!4669447))

(assert (=> b!4062826 m!4669447))

(declare-fun m!4669449 () Bool)

(assert (=> b!4062826 m!4669449))

(declare-fun m!4669451 () Bool)

(assert (=> b!4062830 m!4669451))

(assert (=> b!4062830 m!4669451))

(declare-fun m!4669453 () Bool)

(assert (=> b!4062830 m!4669453))

(assert (=> b!4062830 m!4668971))

(assert (=> b!4062830 m!4668793))

(declare-fun m!4669455 () Bool)

(assert (=> b!4062830 m!4669455))

(assert (=> b!4062830 m!4669451))

(declare-fun m!4669457 () Bool)

(assert (=> b!4062830 m!4669457))

(declare-fun m!4669459 () Bool)

(assert (=> b!4062830 m!4669459))

(assert (=> b!4062830 m!4668793))

(assert (=> b!4062830 m!4668971))

(assert (=> b!4062830 m!4669451))

(declare-fun m!4669461 () Bool)

(assert (=> b!4062830 m!4669461))

(declare-fun m!4669463 () Bool)

(assert (=> b!4062830 m!4669463))

(assert (=> b!4062831 m!4668971))

(assert (=> b!4062831 m!4668793))

(assert (=> b!4062831 m!4668971))

(assert (=> b!4062831 m!4668793))

(assert (=> b!4062831 m!4669455))

(declare-fun m!4669465 () Bool)

(assert (=> b!4062831 m!4669465))

(assert (=> b!4062825 m!4669437))

(assert (=> b!4062824 m!4669437))

(declare-fun m!4669467 () Bool)

(assert (=> b!4062824 m!4669467))

(assert (=> b!4062824 m!4669467))

(declare-fun m!4669469 () Bool)

(assert (=> b!4062824 m!4669469))

(assert (=> b!4062824 m!4669469))

(declare-fun m!4669471 () Bool)

(assert (=> b!4062824 m!4669471))

(assert (=> b!4062828 m!4669437))

(assert (=> b!4062828 m!4669467))

(assert (=> b!4062828 m!4669467))

(assert (=> b!4062828 m!4669469))

(assert (=> b!4062828 m!4669469))

(declare-fun m!4669475 () Bool)

(assert (=> b!4062828 m!4669475))

(assert (=> b!4062827 m!4669437))

(declare-fun m!4669477 () Bool)

(assert (=> b!4062827 m!4669477))

(assert (=> b!4062827 m!4668793))

(assert (=> b!4062122 d!1207792))

(declare-fun d!1207800 () Bool)

(assert (=> d!1207800 (isPrefix!4052 lt!1451483 (++!11367 lt!1451483 lt!1451484))))

(declare-fun lt!1451915 () Unit!62828)

(assert (=> d!1207800 (= lt!1451915 (choose!24705 lt!1451483 lt!1451484))))

(assert (=> d!1207800 (= (lemmaConcatTwoListThenFirstIsPrefix!2887 lt!1451483 lt!1451484) lt!1451915)))

(declare-fun bs!592217 () Bool)

(assert (= bs!592217 d!1207800))

(assert (=> bs!592217 m!4668335))

(assert (=> bs!592217 m!4668335))

(declare-fun m!4669487 () Bool)

(assert (=> bs!592217 m!4669487))

(declare-fun m!4669489 () Bool)

(assert (=> bs!592217 m!4669489))

(assert (=> b!4062122 d!1207800))

(declare-fun d!1207802 () Bool)

(assert (=> d!1207802 (= (inv!58010 (tag!7825 (h!48814 rules!2999))) (= (mod (str.len (value!219137 (tag!7825 (h!48814 rules!2999)))) 2) 0))))

(assert (=> b!4062101 d!1207802))

(declare-fun d!1207804 () Bool)

(declare-fun res!1657494 () Bool)

(declare-fun e!2521162 () Bool)

(assert (=> d!1207804 (=> (not res!1657494) (not e!2521162))))

(assert (=> d!1207804 (= res!1657494 (semiInverseModEq!2979 (toChars!9384 (transformation!6965 (h!48814 rules!2999))) (toValue!9525 (transformation!6965 (h!48814 rules!2999)))))))

(assert (=> d!1207804 (= (inv!58013 (transformation!6965 (h!48814 rules!2999))) e!2521162)))

(declare-fun b!4062842 () Bool)

(assert (=> b!4062842 (= e!2521162 (equivClasses!2878 (toChars!9384 (transformation!6965 (h!48814 rules!2999))) (toValue!9525 (transformation!6965 (h!48814 rules!2999)))))))

(assert (= (and d!1207804 res!1657494) b!4062842))

(declare-fun m!4669493 () Bool)

(assert (=> d!1207804 m!4669493))

(declare-fun m!4669495 () Bool)

(assert (=> b!4062842 m!4669495))

(assert (=> b!4062101 d!1207804))

(declare-fun b!4062847 () Bool)

(declare-fun e!2521165 () Bool)

(declare-fun tp!1230326 () Bool)

(assert (=> b!4062847 (= e!2521165 (and tp_is_empty!20711 tp!1230326))))

(assert (=> b!4062110 (= tp!1230277 e!2521165)))

(assert (= (and b!4062110 (is-Cons!43392 (t!336675 prefix!494))) b!4062847))

(declare-fun b!4062848 () Bool)

(declare-fun e!2521166 () Bool)

(declare-fun tp!1230327 () Bool)

(assert (=> b!4062848 (= e!2521166 (and tp_is_empty!20711 tp!1230327))))

(assert (=> b!4062119 (= tp!1230269 e!2521166)))

(assert (= (and b!4062119 (is-Cons!43392 (t!336675 suffixResult!105))) b!4062848))

(declare-fun b!4062869 () Bool)

(declare-fun b_free!113009 () Bool)

(declare-fun b_next!113713 () Bool)

(assert (=> b!4062869 (= b_free!113009 (not b_next!113713))))

(declare-fun tb!244405 () Bool)

(declare-fun t!336702 () Bool)

(assert (=> (and b!4062869 (= (toValue!9525 (transformation!6965 (h!48814 (t!336677 rules!2999)))) (toValue!9525 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))) t!336702) tb!244405))

(declare-fun result!296152 () Bool)

(assert (= result!296152 result!296128))

(assert (=> d!1207618 t!336702))

(declare-fun t!336704 () Bool)

(declare-fun tb!244407 () Bool)

(assert (=> (and b!4062869 (= (toValue!9525 (transformation!6965 (h!48814 (t!336677 rules!2999)))) (toValue!9525 (transformation!6965 (rule!10059 token!484)))) t!336704) tb!244407))

(declare-fun result!296154 () Bool)

(assert (= result!296154 result!296144))

(assert (=> d!1207784 t!336704))

(declare-fun tp!1230337 () Bool)

(declare-fun b_and!312359 () Bool)

(assert (=> b!4062869 (= tp!1230337 (and (=> t!336702 result!296152) (=> t!336704 result!296154) b_and!312359))))

(declare-fun b_free!113011 () Bool)

(declare-fun b_next!113715 () Bool)

(assert (=> b!4062869 (= b_free!113011 (not b_next!113715))))

(declare-fun t!336706 () Bool)

(declare-fun tb!244409 () Bool)

(assert (=> (and b!4062869 (= (toChars!9384 (transformation!6965 (h!48814 (t!336677 rules!2999)))) (toChars!9384 (transformation!6965 (rule!10059 (_1!24360 (v!39800 lt!1451450)))))) t!336706) tb!244409))

(declare-fun result!296156 () Bool)

(assert (= result!296156 result!296122))

(assert (=> d!1207612 t!336706))

(declare-fun tb!244411 () Bool)

(declare-fun t!336708 () Bool)

(assert (=> (and b!4062869 (= (toChars!9384 (transformation!6965 (h!48814 (t!336677 rules!2999)))) (toChars!9384 (transformation!6965 (rule!10059 token!484)))) t!336708) tb!244411))

(declare-fun result!296158 () Bool)

(assert (= result!296158 result!296140))

(assert (=> b!4062593 t!336708))

(assert (=> d!1207778 t!336708))

(declare-fun b_and!312361 () Bool)

(declare-fun tp!1230339 () Bool)

(assert (=> b!4062869 (= tp!1230339 (and (=> t!336706 result!296156) (=> t!336708 result!296158) b_and!312361))))

(declare-fun e!2521183 () Bool)

(assert (=> b!4062869 (= e!2521183 (and tp!1230337 tp!1230339))))

(declare-fun e!2521184 () Bool)

(declare-fun tp!1230338 () Bool)

(declare-fun b!4062868 () Bool)

(assert (=> b!4062868 (= e!2521184 (and tp!1230338 (inv!58010 (tag!7825 (h!48814 (t!336677 rules!2999)))) (inv!58013 (transformation!6965 (h!48814 (t!336677 rules!2999)))) e!2521183))))

(declare-fun b!4062867 () Bool)

(declare-fun e!2521181 () Bool)

(declare-fun tp!1230336 () Bool)

(assert (=> b!4062867 (= e!2521181 (and e!2521184 tp!1230336))))

(assert (=> b!4062141 (= tp!1230276 e!2521181)))

(assert (= b!4062868 b!4062869))

(assert (= b!4062867 b!4062868))

(assert (= (and b!4062141 (is-Cons!43394 (t!336677 rules!2999))) b!4062867))

(declare-fun m!4669503 () Bool)

(assert (=> b!4062868 m!4669503))

(declare-fun m!4669505 () Bool)

(assert (=> b!4062868 m!4669505))

(declare-fun b!4062875 () Bool)

(declare-fun e!2521188 () Bool)

(declare-fun tp!1230340 () Bool)

(assert (=> b!4062875 (= e!2521188 (and tp_is_empty!20711 tp!1230340))))

(assert (=> b!4062112 (= tp!1230270 e!2521188)))

(assert (= (and b!4062112 (is-Cons!43392 (t!336675 newSuffix!27))) b!4062875))

(declare-fun b!4062876 () Bool)

(declare-fun e!2521189 () Bool)

(declare-fun tp!1230341 () Bool)

(assert (=> b!4062876 (= e!2521189 (and tp_is_empty!20711 tp!1230341))))

(assert (=> b!4062113 (= tp!1230275 e!2521189)))

(assert (= (and b!4062113 (is-Cons!43392 (t!336675 suffix!1299))) b!4062876))

(declare-fun b!4062877 () Bool)

(declare-fun e!2521190 () Bool)

(declare-fun tp!1230342 () Bool)

(assert (=> b!4062877 (= e!2521190 (and tp_is_empty!20711 tp!1230342))))

(assert (=> b!4062116 (= tp!1230274 e!2521190)))

(assert (= (and b!4062116 (is-Cons!43392 (originalCharacters!7565 token!484))) b!4062877))

(declare-fun e!2521193 () Bool)

(assert (=> b!4062138 (= tp!1230266 e!2521193)))

(declare-fun b!4062889 () Bool)

(declare-fun tp!1230356 () Bool)

(declare-fun tp!1230354 () Bool)

(assert (=> b!4062889 (= e!2521193 (and tp!1230356 tp!1230354))))

(declare-fun b!4062888 () Bool)

(assert (=> b!4062888 (= e!2521193 tp_is_empty!20711)))

(declare-fun b!4062890 () Bool)

(declare-fun tp!1230355 () Bool)

(assert (=> b!4062890 (= e!2521193 tp!1230355)))

(declare-fun b!4062891 () Bool)

(declare-fun tp!1230353 () Bool)

(declare-fun tp!1230357 () Bool)

(assert (=> b!4062891 (= e!2521193 (and tp!1230353 tp!1230357))))

(assert (= (and b!4062138 (is-ElementMatch!11870 (regex!6965 (rule!10059 token!484)))) b!4062888))

(assert (= (and b!4062138 (is-Concat!19066 (regex!6965 (rule!10059 token!484)))) b!4062889))

(assert (= (and b!4062138 (is-Star!11870 (regex!6965 (rule!10059 token!484)))) b!4062890))

(assert (= (and b!4062138 (is-Union!11870 (regex!6965 (rule!10059 token!484)))) b!4062891))

(declare-fun b!4062892 () Bool)

(declare-fun e!2521194 () Bool)

(declare-fun tp!1230358 () Bool)

(assert (=> b!4062892 (= e!2521194 (and tp_is_empty!20711 tp!1230358))))

(assert (=> b!4062117 (= tp!1230271 e!2521194)))

(assert (= (and b!4062117 (is-Cons!43392 (t!336675 newSuffixResult!27))) b!4062892))

(declare-fun e!2521195 () Bool)

(assert (=> b!4062101 (= tp!1230267 e!2521195)))

(declare-fun b!4062894 () Bool)

(declare-fun tp!1230362 () Bool)

(declare-fun tp!1230360 () Bool)

(assert (=> b!4062894 (= e!2521195 (and tp!1230362 tp!1230360))))

(declare-fun b!4062893 () Bool)

(assert (=> b!4062893 (= e!2521195 tp_is_empty!20711)))

(declare-fun b!4062895 () Bool)

(declare-fun tp!1230361 () Bool)

(assert (=> b!4062895 (= e!2521195 tp!1230361)))

(declare-fun b!4062896 () Bool)

(declare-fun tp!1230359 () Bool)

(declare-fun tp!1230363 () Bool)

(assert (=> b!4062896 (= e!2521195 (and tp!1230359 tp!1230363))))

(assert (= (and b!4062101 (is-ElementMatch!11870 (regex!6965 (h!48814 rules!2999)))) b!4062893))

(assert (= (and b!4062101 (is-Concat!19066 (regex!6965 (h!48814 rules!2999)))) b!4062894))

(assert (= (and b!4062101 (is-Star!11870 (regex!6965 (h!48814 rules!2999)))) b!4062895))

(assert (= (and b!4062101 (is-Union!11870 (regex!6965 (h!48814 rules!2999)))) b!4062896))

(declare-fun b_lambda!118725 () Bool)

(assert (= b_lambda!118721 (or (and b!4062127 b_free!112995) (and b!4062136 b_free!112999 (= (toChars!9384 (transformation!6965 (h!48814 rules!2999))) (toChars!9384 (transformation!6965 (rule!10059 token!484))))) (and b!4062869 b_free!113011 (= (toChars!9384 (transformation!6965 (h!48814 (t!336677 rules!2999)))) (toChars!9384 (transformation!6965 (rule!10059 token!484))))) b_lambda!118725)))

(declare-fun b_lambda!118727 () Bool)

(assert (= b_lambda!118723 (or (and b!4062127 b_free!112993) (and b!4062136 b_free!112997 (= (toValue!9525 (transformation!6965 (h!48814 rules!2999))) (toValue!9525 (transformation!6965 (rule!10059 token!484))))) (and b!4062869 b_free!113009 (= (toValue!9525 (transformation!6965 (h!48814 (t!336677 rules!2999)))) (toValue!9525 (transformation!6965 (rule!10059 token!484))))) b_lambda!118727)))

(declare-fun b_lambda!118729 () Bool)

(assert (= b_lambda!118717 (or (and b!4062127 b_free!112995) (and b!4062136 b_free!112999 (= (toChars!9384 (transformation!6965 (h!48814 rules!2999))) (toChars!9384 (transformation!6965 (rule!10059 token!484))))) (and b!4062869 b_free!113011 (= (toChars!9384 (transformation!6965 (h!48814 (t!336677 rules!2999)))) (toChars!9384 (transformation!6965 (rule!10059 token!484))))) b_lambda!118729)))

(push 1)

(assert (not b_lambda!118725))

(assert (not b!4062794))

(assert (not b!4062427))

(assert (not b!4062447))

(assert (not d!1207586))

(assert (not d!1207558))

(assert b_and!312351)

(assert (not b!4062760))

(assert (not d!1207610))

(assert (not d!1207650))

(assert (not b!4062649))

(assert (not b!4062304))

(assert (not b!4062742))

(assert (not b!4062577))

(assert (not d!1207614))

(assert (not b!4062663))

(assert (not b!4062824))

(assert (not b!4062778))

(assert (not b!4062805))

(assert (not d!1207744))

(assert (not b_lambda!118729))

(assert (not d!1207636))

(assert (not b!4062642))

(assert (not d!1207572))

(assert (not b!4062339))

(assert (not d!1207708))

(assert (not b!4062678))

(assert (not b_next!113699))

(assert (not b!4062439))

(assert (not b!4062868))

(assert (not b_next!113701))

(assert (not b!4062476))

(assert (not d!1207612))

(assert (not b_next!113713))

(assert (not b!4062827))

(assert (not d!1207696))

(assert (not b!4062534))

(assert (not d!1207576))

(assert (not d!1207788))

(assert (not b!4062671))

(assert (not d!1207672))

(assert (not b!4062443))

(assert (not b!4062674))

(assert (not b!4062399))

(assert (not b!4062743))

(assert (not b!4062749))

(assert (not d!1207786))

(assert (not d!1207668))

(assert (not b!4062842))

(assert (not b!4062570))

(assert (not b!4062581))

(assert (not b!4062580))

(assert (not b!4062471))

(assert (not b!4062825))

(assert (not b!4062568))

(assert (not b!4062442))

(assert (not b!4062826))

(assert tp_is_empty!20711)

(assert (not d!1207682))

(assert (not d!1207762))

(assert (not b!4062349))

(assert (not d!1207792))

(assert (not b!4062341))

(assert (not tb!244397))

(assert (not b!4062361))

(assert (not b!4062571))

(assert (not b!4062816))

(assert b_and!312353)

(assert (not b!4062307))

(assert (not b!4062355))

(assert (not d!1207736))

(assert (not d!1207608))

(assert (not b!4062538))

(assert (not d!1207628))

(assert (not tb!244389))

(assert (not d!1207676))

(assert (not b!4062435))

(assert (not b!4062875))

(assert (not d!1207782))

(assert (not d!1207562))

(assert b_and!312355)

(assert (not b!4062776))

(assert (not b_lambda!118711))

(assert (not b!4062594))

(assert (not d!1207766))

(assert (not b!4062643))

(assert (not b!4062758))

(assert (not b!4062890))

(assert (not d!1207732))

(assert (not b!4062395))

(assert (not b!4062814))

(assert (not b!4062429))

(assert (not b!4062392))

(assert (not tb!244385))

(assert (not b!4062831))

(assert (not b!4062669))

(assert (not b!4062448))

(assert (not b!4062739))

(assert (not b_lambda!118727))

(assert (not d!1207620))

(assert (not b!4062896))

(assert (not b!4062762))

(assert (not b!4062567))

(assert (not b!4062892))

(assert (not b!4062531))

(assert (not b_lambda!118713))

(assert (not d!1207694))

(assert (not b!4062445))

(assert (not d!1207644))

(assert (not b!4062786))

(assert (not b!4062466))

(assert (not d!1207634))

(assert (not b!4062895))

(assert (not b!4062461))

(assert (not b!4062629))

(assert (not d!1207564))

(assert (not d!1207582))

(assert (not b!4062420))

(assert (not d!1207800))

(assert (not b!4062625))

(assert (not b!4062539))

(assert b_and!312359)

(assert (not b!4062792))

(assert (not d!1207776))

(assert (not b!4062750))

(assert (not b!4062302))

(assert (not b!4062763))

(assert (not d!1207574))

(assert (not b!4062533))

(assert (not d!1207566))

(assert (not b!4062830))

(assert (not b!4062680))

(assert (not b!4062675))

(assert (not d!1207660))

(assert (not d!1207588))

(assert (not b!4062473))

(assert (not tb!244401))

(assert (not b!4062793))

(assert (not b!4062546))

(assert (not b!4062374))

(assert (not b!4062759))

(assert (not b!4062847))

(assert (not b!4062583))

(assert (not b!4062801))

(assert (not b!4062347))

(assert (not b!4062386))

(assert (not b!4062804))

(assert (not d!1207616))

(assert (not b!4062828))

(assert (not d!1207552))

(assert (not b!4062403))

(assert (not d!1207554))

(assert (not b!4062385))

(assert (not d!1207674))

(assert (not d!1207550))

(assert (not b!4062375))

(assert (not b!4062630))

(assert (not d!1207750))

(assert (not b!4062689))

(assert (not bm!288235))

(assert (not b!4062784))

(assert (not b!4062396))

(assert (not b!4062756))

(assert (not b!4062416))

(assert (not b!4062397))

(assert (not b!4062891))

(assert (not b!4062670))

(assert (not b!4062545))

(assert (not bm!288236))

(assert (not d!1207658))

(assert (not b!4062766))

(assert (not b!4062777))

(assert (not b!4062764))

(assert (not d!1207622))

(assert (not d!1207666))

(assert (not b!4062450))

(assert (not b!4062573))

(assert (not b!4062806))

(assert (not b!4062660))

(assert (not b!4062796))

(assert (not b_next!113697))

(assert (not b!4062808))

(assert (not b!4062566))

(assert (not b!4062431))

(assert (not d!1207600))

(assert (not b!4062737))

(assert (not d!1207670))

(assert (not b!4062357))

(assert (not b!4062456))

(assert (not b!4062755))

(assert b_and!312361)

(assert (not d!1207690))

(assert (not b!4062688))

(assert (not d!1207684))

(assert (not b!4062800))

(assert (not b!4062535))

(assert (not b!4062475))

(assert (not d!1207584))

(assert (not b!4062867))

(assert (not b!4062360))

(assert (not bm!288246))

(assert (not d!1207764))

(assert (not d!1207742))

(assert (not d!1207804))

(assert (not b!4062597))

(assert (not b_next!113703))

(assert (not d!1207578))

(assert (not b!4062673))

(assert (not b!4062823))

(assert (not b!4062690))

(assert (not b!4062736))

(assert (not b!4062363))

(assert (not b!4062817))

(assert (not b!4062894))

(assert (not b!4062785))

(assert (not d!1207700))

(assert (not b!4062757))

(assert (not d!1207568))

(assert (not d!1207702))

(assert (not d!1207596))

(assert (not b!4062677))

(assert (not b!4062848))

(assert (not b!4062797))

(assert (not b!4062889))

(assert (not b!4062453))

(assert (not b!4062681))

(assert (not b!4062761))

(assert (not d!1207778))

(assert (not b!4062877))

(assert (not d!1207626))

(assert (not b!4062353))

(assert (not b!4062400))

(assert (not d!1207602))

(assert (not b!4062404))

(assert (not b!4062578))

(assert (not b!4062626))

(assert (not b!4062612))

(assert (not b!4062818))

(assert (not b!4062741))

(assert (not d!1207654))

(assert (not b!4062472))

(assert (not b!4062745))

(assert (not d!1207556))

(assert (not b!4062536))

(assert (not b!4062576))

(assert (not b!4062373))

(assert (not d!1207606))

(assert (not b!4062662))

(assert (not d!1207598))

(assert b_and!312357)

(assert (not b!4062532))

(assert (not bm!288245))

(assert (not bm!288234))

(assert (not d!1207662))

(assert (not b!4062346))

(assert (not b!4062437))

(assert (not b!4062611))

(assert (not d!1207638))

(assert (not b!4062343))

(assert (not b_next!113715))

(assert (not b!4062645))

(assert (not d!1207746))

(assert (not b!4062735))

(assert (not b!4062593))

(assert (not b!4062876))

(assert (not d!1207664))

(check-sat)

(pop 1)

(push 1)

(assert b_and!312351)

(assert (not b_next!113713))

(assert b_and!312353)

(assert b_and!312355)

(assert b_and!312359)

(assert (not b_next!113697))

(assert b_and!312361)

(assert (not b_next!113703))

(assert b_and!312357)

(assert (not b_next!113715))

(assert (not b_next!113699))

(assert (not b_next!113701))

(check-sat)

(pop 1)

