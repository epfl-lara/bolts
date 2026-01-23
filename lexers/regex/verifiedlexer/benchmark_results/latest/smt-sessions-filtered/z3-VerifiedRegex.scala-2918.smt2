; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171142 () Bool)

(assert start!171142)

(declare-fun b!1738751 () Bool)

(declare-fun b_free!47731 () Bool)

(declare-fun b_next!48435 () Bool)

(assert (=> b!1738751 (= b_free!47731 (not b_next!48435))))

(declare-fun tp!495254 () Bool)

(declare-fun b_and!129007 () Bool)

(assert (=> b!1738751 (= tp!495254 b_and!129007)))

(declare-fun b_free!47733 () Bool)

(declare-fun b_next!48437 () Bool)

(assert (=> b!1738751 (= b_free!47733 (not b_next!48437))))

(declare-fun tp!495256 () Bool)

(declare-fun b_and!129009 () Bool)

(assert (=> b!1738751 (= tp!495256 b_and!129009)))

(declare-fun b!1738754 () Bool)

(declare-fun b_free!47735 () Bool)

(declare-fun b_next!48439 () Bool)

(assert (=> b!1738754 (= b_free!47735 (not b_next!48439))))

(declare-fun tp!495259 () Bool)

(declare-fun b_and!129011 () Bool)

(assert (=> b!1738754 (= tp!495259 b_and!129011)))

(declare-fun b_free!47737 () Bool)

(declare-fun b_next!48441 () Bool)

(assert (=> b!1738754 (= b_free!47737 (not b_next!48441))))

(declare-fun tp!495258 () Bool)

(declare-fun b_and!129013 () Bool)

(assert (=> b!1738754 (= tp!495258 b_and!129013)))

(declare-fun b!1738741 () Bool)

(declare-fun b_free!47739 () Bool)

(declare-fun b_next!48443 () Bool)

(assert (=> b!1738741 (= b_free!47739 (not b_next!48443))))

(declare-fun tp!495249 () Bool)

(declare-fun b_and!129015 () Bool)

(assert (=> b!1738741 (= tp!495249 b_and!129015)))

(declare-fun b_free!47741 () Bool)

(declare-fun b_next!48445 () Bool)

(assert (=> b!1738741 (= b_free!47741 (not b_next!48445))))

(declare-fun tp!495255 () Bool)

(declare-fun b_and!129017 () Bool)

(assert (=> b!1738741 (= tp!495255 b_and!129017)))

(declare-fun b!1738774 () Bool)

(declare-fun e!1112769 () Bool)

(assert (=> b!1738774 (= e!1112769 true)))

(declare-fun b!1738773 () Bool)

(declare-fun e!1112768 () Bool)

(assert (=> b!1738773 (= e!1112768 e!1112769)))

(declare-fun b!1738772 () Bool)

(declare-fun e!1112767 () Bool)

(assert (=> b!1738772 (= e!1112767 e!1112768)))

(declare-fun b!1738733 () Bool)

(assert (=> b!1738733 e!1112767))

(assert (= b!1738773 b!1738774))

(assert (= b!1738772 b!1738773))

(assert (= b!1738733 b!1738772))

(declare-fun order!11889 () Int)

(declare-fun lambda!69548 () Int)

(declare-datatypes ((List!19163 0))(
  ( (Nil!19093) (Cons!19093 (h!24494 (_ BitVec 16)) (t!161626 List!19163)) )
))
(declare-datatypes ((TokenValue!3487 0))(
  ( (FloatLiteralValue!6974 (text!24854 List!19163)) (TokenValueExt!3486 (__x!12276 Int)) (Broken!17435 (value!106461 List!19163)) (Object!3556) (End!3487) (Def!3487) (Underscore!3487) (Match!3487) (Else!3487) (Error!3487) (Case!3487) (If!3487) (Extends!3487) (Abstract!3487) (Class!3487) (Val!3487) (DelimiterValue!6974 (del!3547 List!19163)) (KeywordValue!3493 (value!106462 List!19163)) (CommentValue!6974 (value!106463 List!19163)) (WhitespaceValue!6974 (value!106464 List!19163)) (IndentationValue!3487 (value!106465 List!19163)) (String!21766) (Int32!3487) (Broken!17436 (value!106466 List!19163)) (Boolean!3488) (Unit!33064) (OperatorValue!3490 (op!3547 List!19163)) (IdentifierValue!6974 (value!106467 List!19163)) (IdentifierValue!6975 (value!106468 List!19163)) (WhitespaceValue!6975 (value!106469 List!19163)) (True!6974) (False!6974) (Broken!17437 (value!106470 List!19163)) (Broken!17438 (value!106471 List!19163)) (True!6975) (RightBrace!3487) (RightBracket!3487) (Colon!3487) (Null!3487) (Comma!3487) (LeftBracket!3487) (False!6975) (LeftBrace!3487) (ImaginaryLiteralValue!3487 (text!24855 List!19163)) (StringLiteralValue!10461 (value!106472 List!19163)) (EOFValue!3487 (value!106473 List!19163)) (IdentValue!3487 (value!106474 List!19163)) (DelimiterValue!6975 (value!106475 List!19163)) (DedentValue!3487 (value!106476 List!19163)) (NewLineValue!3487 (value!106477 List!19163)) (IntegerValue!10461 (value!106478 (_ BitVec 32)) (text!24856 List!19163)) (IntegerValue!10462 (value!106479 Int) (text!24857 List!19163)) (Times!3487) (Or!3487) (Equal!3487) (Minus!3487) (Broken!17439 (value!106480 List!19163)) (And!3487) (Div!3487) (LessEqual!3487) (Mod!3487) (Concat!8212) (Not!3487) (Plus!3487) (SpaceValue!3487 (value!106481 List!19163)) (IntegerValue!10463 (value!106482 Int) (text!24858 List!19163)) (StringLiteralValue!10462 (text!24859 List!19163)) (FloatLiteralValue!6975 (text!24860 List!19163)) (BytesLiteralValue!3487 (value!106483 List!19163)) (CommentValue!6975 (value!106484 List!19163)) (StringLiteralValue!10463 (value!106485 List!19163)) (ErrorTokenValue!3487 (msg!3548 List!19163)) )
))
(declare-datatypes ((C!9624 0))(
  ( (C!9625 (val!5408 Int)) )
))
(declare-datatypes ((List!19164 0))(
  ( (Nil!19094) (Cons!19094 (h!24495 C!9624) (t!161627 List!19164)) )
))
(declare-datatypes ((Regex!4725 0))(
  ( (ElementMatch!4725 (c!283754 C!9624)) (Concat!8213 (regOne!9962 Regex!4725) (regTwo!9962 Regex!4725)) (EmptyExpr!4725) (Star!4725 (reg!5054 Regex!4725)) (EmptyLang!4725) (Union!4725 (regOne!9963 Regex!4725) (regTwo!9963 Regex!4725)) )
))
(declare-datatypes ((String!21767 0))(
  ( (String!21768 (value!106486 String)) )
))
(declare-datatypes ((IArray!12707 0))(
  ( (IArray!12708 (innerList!6411 List!19164)) )
))
(declare-datatypes ((Conc!6351 0))(
  ( (Node!6351 (left!15267 Conc!6351) (right!15597 Conc!6351) (csize!12932 Int) (cheight!6562 Int)) (Leaf!9270 (xs!9227 IArray!12707) (csize!12933 Int)) (Empty!6351) )
))
(declare-datatypes ((BalanceConc!12646 0))(
  ( (BalanceConc!12647 (c!283755 Conc!6351)) )
))
(declare-datatypes ((TokenValueInjection!6634 0))(
  ( (TokenValueInjection!6635 (toValue!4904 Int) (toChars!4763 Int)) )
))
(declare-datatypes ((Rule!6594 0))(
  ( (Rule!6595 (regex!3397 Regex!4725) (tag!3733 String!21767) (isSeparator!3397 Bool) (transformation!3397 TokenValueInjection!6634)) )
))
(declare-datatypes ((Token!6360 0))(
  ( (Token!6361 (value!106487 TokenValue!3487) (rule!5395 Rule!6594) (size!15174 Int) (originalCharacters!4211 List!19164)) )
))
(declare-datatypes ((tuple2!18754 0))(
  ( (tuple2!18755 (_1!10779 Token!6360) (_2!10779 List!19164)) )
))
(declare-fun lt!669533 () tuple2!18754)

(declare-fun order!11887 () Int)

(declare-fun dynLambda!8998 (Int Int) Int)

(declare-fun dynLambda!8999 (Int Int) Int)

(assert (=> b!1738774 (< (dynLambda!8998 order!11887 (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) (dynLambda!8999 order!11889 lambda!69548))))

(declare-fun order!11891 () Int)

(declare-fun dynLambda!9000 (Int Int) Int)

(assert (=> b!1738774 (< (dynLambda!9000 order!11891 (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) (dynLambda!8999 order!11889 lambda!69548))))

(declare-fun b!1738722 () Bool)

(declare-datatypes ((Unit!33065 0))(
  ( (Unit!33066) )
))
(declare-fun e!1112744 () Unit!33065)

(declare-fun Unit!33067 () Unit!33065)

(assert (=> b!1738722 (= e!1112744 Unit!33067)))

(declare-fun tp!495251 () Bool)

(declare-fun b!1738723 () Bool)

(declare-fun e!1112760 () Bool)

(declare-fun token!523 () Token!6360)

(declare-fun e!1112748 () Bool)

(declare-fun inv!24729 (String!21767) Bool)

(declare-fun inv!24734 (TokenValueInjection!6634) Bool)

(assert (=> b!1738723 (= e!1112760 (and tp!495251 (inv!24729 (tag!3733 (rule!5395 token!523))) (inv!24734 (transformation!3397 (rule!5395 token!523))) e!1112748))))

(declare-fun b!1738724 () Bool)

(declare-fun e!1112750 () Unit!33065)

(declare-fun Unit!33068 () Unit!33065)

(assert (=> b!1738724 (= e!1112750 Unit!33068)))

(declare-fun lt!669540 () List!19164)

(declare-fun lt!669566 () List!19164)

(declare-fun rule!422 () Rule!6594)

(declare-datatypes ((LexerInterface!3026 0))(
  ( (LexerInterfaceExt!3023 (__x!12277 Int)) (Lexer!3024) )
))
(declare-fun thiss!24550 () LexerInterface!3026)

(declare-datatypes ((List!19165 0))(
  ( (Nil!19095) (Cons!19095 (h!24496 Rule!6594) (t!161628 List!19165)) )
))
(declare-fun rules!3447 () List!19165)

(declare-fun lt!669538 () Unit!33065)

(declare-fun lt!669552 () List!19164)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!194 (LexerInterface!3026 List!19165 Rule!6594 List!19164 List!19164 List!19164 Rule!6594) Unit!33065)

(assert (=> b!1738724 (= lt!669538 (lemmaMaxPrefixOutputsMaxPrefix!194 thiss!24550 rules!3447 (rule!5395 (_1!10779 lt!669533)) lt!669540 lt!669552 lt!669566 rule!422))))

(assert (=> b!1738724 false))

(declare-fun b!1738725 () Bool)

(declare-fun e!1112757 () Bool)

(declare-fun e!1112736 () Bool)

(assert (=> b!1738725 (= e!1112757 e!1112736)))

(declare-fun res!781545 () Bool)

(assert (=> b!1738725 (=> res!781545 e!1112736)))

(assert (=> b!1738725 (= res!781545 (= (rule!5395 (_1!10779 lt!669533)) (rule!5395 token!523)))))

(declare-fun suffix!1421 () List!19164)

(assert (=> b!1738725 (= suffix!1421 (_2!10779 lt!669533))))

(declare-fun lt!669548 () Unit!33065)

(declare-fun lemmaSamePrefixThenSameSuffix!782 (List!19164 List!19164 List!19164 List!19164 List!19164) Unit!33065)

(assert (=> b!1738725 (= lt!669548 (lemmaSamePrefixThenSameSuffix!782 lt!669566 suffix!1421 lt!669566 (_2!10779 lt!669533) lt!669552))))

(assert (=> b!1738725 (= lt!669540 lt!669566)))

(declare-fun lt!669525 () Unit!33065)

(declare-fun lemmaIsPrefixSameLengthThenSameList!225 (List!19164 List!19164 List!19164) Unit!33065)

(assert (=> b!1738725 (= lt!669525 (lemmaIsPrefixSameLengthThenSameList!225 lt!669540 lt!669566 lt!669552))))

(declare-fun b!1738726 () Bool)

(declare-fun res!781532 () Bool)

(declare-fun e!1112728 () Bool)

(assert (=> b!1738726 (=> (not res!781532) (not e!1112728))))

(assert (=> b!1738726 (= res!781532 (= (rule!5395 token!523) rule!422))))

(declare-fun b!1738727 () Bool)

(declare-fun contains!3419 (List!19165 Rule!6594) Bool)

(assert (=> b!1738727 (= e!1112736 (contains!3419 rules!3447 (rule!5395 token!523)))))

(declare-fun lt!669522 () Unit!33065)

(assert (=> b!1738727 (= lt!669522 e!1112744)))

(declare-fun c!283753 () Bool)

(declare-fun lt!669531 () Int)

(declare-fun lt!669542 () Int)

(assert (=> b!1738727 (= c!283753 (< lt!669531 lt!669542))))

(declare-fun lt!669537 () Unit!33065)

(declare-fun e!1112727 () Unit!33065)

(assert (=> b!1738727 (= lt!669537 e!1112727)))

(declare-fun c!283752 () Bool)

(assert (=> b!1738727 (= c!283752 (< lt!669542 lt!669531))))

(declare-fun getIndex!164 (List!19165 Rule!6594) Int)

(assert (=> b!1738727 (= lt!669531 (getIndex!164 rules!3447 (rule!5395 (_1!10779 lt!669533))))))

(assert (=> b!1738727 (= lt!669542 (getIndex!164 rules!3447 (rule!5395 token!523)))))

(declare-fun b!1738728 () Bool)

(declare-fun e!1112732 () Bool)

(assert (=> b!1738728 (= e!1112732 e!1112728)))

(declare-fun res!781527 () Bool)

(assert (=> b!1738728 (=> (not res!781527) (not e!1112728))))

(declare-fun lt!669560 () tuple2!18754)

(assert (=> b!1738728 (= res!781527 (= (_1!10779 lt!669560) token!523))))

(declare-datatypes ((Option!3818 0))(
  ( (None!3817) (Some!3817 (v!25246 tuple2!18754)) )
))
(declare-fun lt!669528 () Option!3818)

(declare-fun get!5734 (Option!3818) tuple2!18754)

(assert (=> b!1738728 (= lt!669560 (get!5734 lt!669528))))

(declare-fun b!1738729 () Bool)

(declare-fun res!781522 () Bool)

(declare-fun e!1112751 () Bool)

(assert (=> b!1738729 (=> res!781522 e!1112751)))

(declare-fun matchR!2199 (Regex!4725 List!19164) Bool)

(assert (=> b!1738729 (= res!781522 (not (matchR!2199 (regex!3397 (rule!5395 (_1!10779 lt!669533))) lt!669540)))))

(declare-fun b!1738730 () Bool)

(declare-fun res!781546 () Bool)

(declare-fun e!1112758 () Bool)

(assert (=> b!1738730 (=> (not res!781546) (not e!1112758))))

(declare-fun isEmpty!12017 (List!19165) Bool)

(assert (=> b!1738730 (= res!781546 (not (isEmpty!12017 rules!3447)))))

(declare-fun b!1738731 () Bool)

(declare-fun tp!495257 () Bool)

(declare-fun e!1112746 () Bool)

(declare-fun e!1112743 () Bool)

(assert (=> b!1738731 (= e!1112746 (and tp!495257 (inv!24729 (tag!3733 (h!24496 rules!3447))) (inv!24734 (transformation!3397 (h!24496 rules!3447))) e!1112743))))

(declare-fun b!1738732 () Bool)

(declare-fun e!1112747 () Bool)

(declare-fun e!1112735 () Bool)

(assert (=> b!1738732 (= e!1112747 e!1112735)))

(declare-fun res!781525 () Bool)

(assert (=> b!1738732 (=> res!781525 e!1112735)))

(declare-fun lt!669561 () BalanceConc!12646)

(declare-fun list!7722 (BalanceConc!12646) List!19164)

(declare-fun dynLambda!9001 (Int TokenValue!3487) BalanceConc!12646)

(declare-fun dynLambda!9002 (Int BalanceConc!12646) TokenValue!3487)

(assert (=> b!1738732 (= res!781525 (not (= (list!7722 (dynLambda!9001 (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) (dynLambda!9002 (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) lt!669561))) lt!669540)))))

(declare-fun lt!669535 () Unit!33065)

(declare-fun lemmaSemiInverse!543 (TokenValueInjection!6634 BalanceConc!12646) Unit!33065)

(assert (=> b!1738732 (= lt!669535 (lemmaSemiInverse!543 (transformation!3397 (rule!5395 (_1!10779 lt!669533))) lt!669561))))

(assert (=> b!1738733 (= e!1112751 e!1112747)))

(declare-fun res!781531 () Bool)

(assert (=> b!1738733 (=> res!781531 e!1112747)))

(declare-fun Forall!772 (Int) Bool)

(assert (=> b!1738733 (= res!781531 (not (Forall!772 lambda!69548)))))

(declare-fun lt!669527 () Unit!33065)

(declare-fun lemmaInv!604 (TokenValueInjection!6634) Unit!33065)

(assert (=> b!1738733 (= lt!669527 (lemmaInv!604 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))))))

(declare-fun b!1738734 () Bool)

(declare-fun e!1112730 () Bool)

(assert (=> b!1738734 (= e!1112728 (not e!1112730))))

(declare-fun res!781535 () Bool)

(assert (=> b!1738734 (=> res!781535 e!1112730)))

(assert (=> b!1738734 (= res!781535 (not (matchR!2199 (regex!3397 rule!422) lt!669566)))))

(declare-fun ruleValid!896 (LexerInterface!3026 Rule!6594) Bool)

(assert (=> b!1738734 (ruleValid!896 thiss!24550 rule!422)))

(declare-fun lt!669545 () Unit!33065)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!420 (LexerInterface!3026 Rule!6594 List!19165) Unit!33065)

(assert (=> b!1738734 (= lt!669545 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!420 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1738735 () Bool)

(declare-fun e!1112729 () Bool)

(declare-fun e!1112742 () Bool)

(assert (=> b!1738735 (= e!1112729 e!1112742)))

(declare-fun res!781543 () Bool)

(assert (=> b!1738735 (=> res!781543 e!1112742)))

(declare-fun lt!669524 () Bool)

(assert (=> b!1738735 (= res!781543 lt!669524)))

(declare-fun lt!669550 () Unit!33065)

(declare-fun e!1112740 () Unit!33065)

(assert (=> b!1738735 (= lt!669550 e!1112740)))

(declare-fun c!283750 () Bool)

(assert (=> b!1738735 (= c!283750 lt!669524)))

(declare-fun lt!669555 () Int)

(declare-fun lt!669551 () Int)

(assert (=> b!1738735 (= lt!669524 (> lt!669555 lt!669551))))

(declare-fun lt!669526 () BalanceConc!12646)

(declare-fun size!15175 (BalanceConc!12646) Int)

(assert (=> b!1738735 (= lt!669551 (size!15175 lt!669526))))

(declare-fun lt!669563 () Regex!4725)

(assert (=> b!1738735 (matchR!2199 lt!669563 lt!669566)))

(declare-fun lt!669562 () Unit!33065)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!146 (LexerInterface!3026 List!19165 List!19164 Token!6360 Rule!6594 List!19164) Unit!33065)

(assert (=> b!1738735 (= lt!669562 (lemmaMaxPrefixThenMatchesRulesRegex!146 thiss!24550 rules!3447 lt!669566 token!523 rule!422 Nil!19094))))

(declare-fun res!781534 () Bool)

(assert (=> start!171142 (=> (not res!781534) (not e!1112758))))

(get-info :version)

(assert (=> start!171142 (= res!781534 ((_ is Lexer!3024) thiss!24550))))

(assert (=> start!171142 e!1112758))

(declare-fun e!1112731 () Bool)

(assert (=> start!171142 e!1112731))

(declare-fun e!1112753 () Bool)

(assert (=> start!171142 e!1112753))

(assert (=> start!171142 true))

(declare-fun e!1112733 () Bool)

(declare-fun inv!24735 (Token!6360) Bool)

(assert (=> start!171142 (and (inv!24735 token!523) e!1112733)))

(declare-fun e!1112756 () Bool)

(assert (=> start!171142 e!1112756))

(declare-fun b!1738736 () Bool)

(declare-fun Unit!33069 () Unit!33065)

(assert (=> b!1738736 (= e!1112740 Unit!33069)))

(declare-fun b!1738737 () Bool)

(declare-fun e!1112741 () Bool)

(assert (=> b!1738737 (= e!1112741 e!1112751)))

(declare-fun res!781533 () Bool)

(assert (=> b!1738737 (=> res!781533 e!1112751)))

(declare-fun isPrefix!1638 (List!19164 List!19164) Bool)

(assert (=> b!1738737 (= res!781533 (not (isPrefix!1638 lt!669540 lt!669552)))))

(declare-fun ++!5222 (List!19164 List!19164) List!19164)

(assert (=> b!1738737 (isPrefix!1638 lt!669540 (++!5222 lt!669540 (_2!10779 lt!669533)))))

(declare-fun lt!669558 () Unit!33065)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1148 (List!19164 List!19164) Unit!33065)

(assert (=> b!1738737 (= lt!669558 (lemmaConcatTwoListThenFirstIsPrefix!1148 lt!669540 (_2!10779 lt!669533)))))

(assert (=> b!1738737 (= lt!669540 (list!7722 lt!669561))))

(declare-fun charsOf!2046 (Token!6360) BalanceConc!12646)

(assert (=> b!1738737 (= lt!669561 (charsOf!2046 (_1!10779 lt!669533)))))

(declare-fun e!1112738 () Bool)

(assert (=> b!1738737 e!1112738))

(declare-fun res!781538 () Bool)

(assert (=> b!1738737 (=> (not res!781538) (not e!1112738))))

(declare-datatypes ((Option!3819 0))(
  ( (None!3818) (Some!3818 (v!25247 Rule!6594)) )
))
(declare-fun lt!669536 () Option!3819)

(declare-fun isDefined!3161 (Option!3819) Bool)

(assert (=> b!1738737 (= res!781538 (isDefined!3161 lt!669536))))

(declare-fun getRuleFromTag!447 (LexerInterface!3026 List!19165 String!21767) Option!3819)

(assert (=> b!1738737 (= lt!669536 (getRuleFromTag!447 thiss!24550 rules!3447 (tag!3733 (rule!5395 (_1!10779 lt!669533)))))))

(declare-fun lt!669559 () Unit!33065)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!447 (LexerInterface!3026 List!19165 List!19164 Token!6360) Unit!33065)

(assert (=> b!1738737 (= lt!669559 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!447 thiss!24550 rules!3447 lt!669552 (_1!10779 lt!669533)))))

(declare-fun lt!669549 () Option!3818)

(assert (=> b!1738737 (= lt!669533 (get!5734 lt!669549))))

(declare-fun lt!669543 () Unit!33065)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!550 (LexerInterface!3026 List!19165 List!19164 List!19164) Unit!33065)

(assert (=> b!1738737 (= lt!669543 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!550 thiss!24550 rules!3447 lt!669566 suffix!1421))))

(declare-fun maxPrefix!1580 (LexerInterface!3026 List!19165 List!19164) Option!3818)

(assert (=> b!1738737 (= lt!669549 (maxPrefix!1580 thiss!24550 rules!3447 lt!669552))))

(assert (=> b!1738737 (isPrefix!1638 lt!669566 lt!669552)))

(declare-fun lt!669546 () Unit!33065)

(assert (=> b!1738737 (= lt!669546 (lemmaConcatTwoListThenFirstIsPrefix!1148 lt!669566 suffix!1421))))

(assert (=> b!1738737 (= lt!669552 (++!5222 lt!669566 suffix!1421))))

(declare-fun b!1738738 () Bool)

(declare-fun Unit!33070 () Unit!33065)

(assert (=> b!1738738 (= e!1112740 Unit!33070)))

(declare-fun lt!669520 () Unit!33065)

(assert (=> b!1738738 (= lt!669520 (lemmaMaxPrefixThenMatchesRulesRegex!146 thiss!24550 rules!3447 lt!669552 (_1!10779 lt!669533) (rule!5395 (_1!10779 lt!669533)) (_2!10779 lt!669533)))))

(assert (=> b!1738738 (matchR!2199 lt!669563 lt!669540)))

(declare-fun lt!669539 () List!19164)

(declare-fun getSuffix!832 (List!19164 List!19164) List!19164)

(assert (=> b!1738738 (= lt!669539 (getSuffix!832 lt!669552 lt!669566))))

(declare-fun lt!669519 () Unit!33065)

(assert (=> b!1738738 (= lt!669519 (lemmaSamePrefixThenSameSuffix!782 lt!669566 suffix!1421 lt!669566 lt!669539 lt!669552))))

(assert (=> b!1738738 (= suffix!1421 lt!669539)))

(declare-fun lt!669565 () Unit!33065)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!233 (List!19164 List!19164) Unit!33065)

(assert (=> b!1738738 (= lt!669565 (lemmaAddHeadSuffixToPrefixStillPrefix!233 lt!669566 lt!669552))))

(declare-fun head!3976 (List!19164) C!9624)

(assert (=> b!1738738 (isPrefix!1638 (++!5222 lt!669566 (Cons!19094 (head!3976 lt!669539) Nil!19094)) lt!669552)))

(declare-fun lt!669556 () List!19164)

(declare-fun lt!669554 () Unit!33065)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!113 (List!19164 List!19164 List!19164) Unit!33065)

(assert (=> b!1738738 (= lt!669554 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!113 lt!669540 lt!669556 lt!669552))))

(assert (=> b!1738738 (isPrefix!1638 lt!669556 lt!669540)))

(declare-fun lt!669517 () Unit!33065)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!106 (Regex!4725 List!19164 List!19164) Unit!33065)

(assert (=> b!1738738 (= lt!669517 (lemmaNotPrefixMatchThenCannotMatchLonger!106 lt!669563 lt!669556 lt!669540))))

(assert (=> b!1738738 false))

(declare-fun tp!495252 () Bool)

(declare-fun b!1738739 () Bool)

(declare-fun inv!21 (TokenValue!3487) Bool)

(assert (=> b!1738739 (= e!1112733 (and (inv!21 (value!106487 token!523)) e!1112760 tp!495252))))

(declare-fun b!1738740 () Bool)

(declare-fun e!1112734 () Bool)

(assert (=> b!1738740 (= e!1112734 false)))

(assert (=> b!1738741 (= e!1112743 (and tp!495249 tp!495255))))

(declare-fun b!1738742 () Bool)

(assert (=> b!1738742 (= e!1112730 e!1112741)))

(declare-fun res!781528 () Bool)

(assert (=> b!1738742 (=> res!781528 e!1112741)))

(declare-fun prefixMatch!610 (Regex!4725 List!19164) Bool)

(assert (=> b!1738742 (= res!781528 (prefixMatch!610 lt!669563 lt!669556))))

(assert (=> b!1738742 (= lt!669556 (++!5222 lt!669566 (Cons!19094 (head!3976 suffix!1421) Nil!19094)))))

(declare-fun rulesRegex!755 (LexerInterface!3026 List!19165) Regex!4725)

(assert (=> b!1738742 (= lt!669563 (rulesRegex!755 thiss!24550 rules!3447))))

(declare-fun b!1738743 () Bool)

(declare-fun e!1112759 () Bool)

(assert (=> b!1738743 (= e!1112735 e!1112759)))

(declare-fun res!781523 () Bool)

(assert (=> b!1738743 (=> res!781523 e!1112759)))

(declare-fun lt!669534 () TokenValue!3487)

(assert (=> b!1738743 (= res!781523 (not (= lt!669549 (Some!3817 (tuple2!18755 (Token!6361 lt!669534 (rule!5395 (_1!10779 lt!669533)) lt!669555 lt!669540) (_2!10779 lt!669533))))))))

(assert (=> b!1738743 (= lt!669555 (size!15175 lt!669561))))

(declare-fun apply!5202 (TokenValueInjection!6634 BalanceConc!12646) TokenValue!3487)

(assert (=> b!1738743 (= lt!669534 (apply!5202 (transformation!3397 (rule!5395 (_1!10779 lt!669533))) lt!669561))))

(declare-fun lt!669532 () Unit!33065)

(declare-fun lemmaCharactersSize!469 (Token!6360) Unit!33065)

(assert (=> b!1738743 (= lt!669532 (lemmaCharactersSize!469 (_1!10779 lt!669533)))))

(declare-fun lt!669553 () Unit!33065)

(declare-fun lemmaEqSameImage!322 (TokenValueInjection!6634 BalanceConc!12646 BalanceConc!12646) Unit!33065)

(declare-fun seqFromList!2371 (List!19164) BalanceConc!12646)

(assert (=> b!1738743 (= lt!669553 (lemmaEqSameImage!322 (transformation!3397 (rule!5395 (_1!10779 lt!669533))) lt!669561 (seqFromList!2371 (originalCharacters!4211 (_1!10779 lt!669533)))))))

(declare-fun b!1738744 () Bool)

(declare-fun tp_is_empty!7693 () Bool)

(declare-fun tp!495253 () Bool)

(assert (=> b!1738744 (= e!1112731 (and tp_is_empty!7693 tp!495253))))

(declare-fun b!1738745 () Bool)

(declare-fun e!1112752 () Bool)

(assert (=> b!1738745 (= e!1112752 false)))

(declare-fun b!1738746 () Bool)

(assert (=> b!1738746 (= e!1112742 e!1112757)))

(declare-fun res!781524 () Bool)

(assert (=> b!1738746 (=> res!781524 e!1112757)))

(assert (=> b!1738746 (= res!781524 (not (= lt!669555 lt!669551)))))

(declare-fun lt!669541 () Unit!33065)

(assert (=> b!1738746 (= lt!669541 e!1112750)))

(declare-fun c!283751 () Bool)

(assert (=> b!1738746 (= c!283751 (< lt!669555 lt!669551))))

(declare-fun b!1738747 () Bool)

(declare-fun Unit!33071 () Unit!33065)

(assert (=> b!1738747 (= e!1112744 Unit!33071)))

(declare-fun lt!669564 () Unit!33065)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!134 (LexerInterface!3026 List!19165 Rule!6594 List!19164 List!19164 Rule!6594) Unit!33065)

(assert (=> b!1738747 (= lt!669564 (lemmaMaxPrefNoSmallerRuleMatches!134 thiss!24550 rules!3447 (rule!5395 token!523) lt!669566 lt!669566 (rule!5395 (_1!10779 lt!669533))))))

(declare-fun res!781542 () Bool)

(assert (=> b!1738747 (= res!781542 (not (matchR!2199 (regex!3397 (rule!5395 (_1!10779 lt!669533))) lt!669566)))))

(assert (=> b!1738747 (=> (not res!781542) (not e!1112734))))

(assert (=> b!1738747 e!1112734))

(declare-fun b!1738748 () Bool)

(declare-fun res!781537 () Bool)

(assert (=> b!1738748 (=> (not res!781537) (not e!1112758))))

(assert (=> b!1738748 (= res!781537 (contains!3419 rules!3447 rule!422))))

(declare-fun b!1738749 () Bool)

(declare-fun res!781530 () Bool)

(assert (=> b!1738749 (=> res!781530 e!1112735)))

(assert (=> b!1738749 (= res!781530 (not (= lt!669561 (dynLambda!9001 (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) (value!106487 (_1!10779 lt!669533))))))))

(declare-fun b!1738750 () Bool)

(declare-fun res!781529 () Bool)

(assert (=> b!1738750 (=> res!781529 e!1112730)))

(declare-fun isEmpty!12018 (List!19164) Bool)

(assert (=> b!1738750 (= res!781529 (isEmpty!12018 suffix!1421))))

(declare-fun e!1112745 () Bool)

(assert (=> b!1738751 (= e!1112745 (and tp!495254 tp!495256))))

(declare-fun b!1738752 () Bool)

(declare-fun Unit!33072 () Unit!33065)

(assert (=> b!1738752 (= e!1112727 Unit!33072)))

(declare-fun b!1738753 () Bool)

(declare-fun e!1112749 () Bool)

(assert (=> b!1738753 (= e!1112738 e!1112749)))

(declare-fun res!781526 () Bool)

(assert (=> b!1738753 (=> (not res!781526) (not e!1112749))))

(declare-fun lt!669557 () Rule!6594)

(assert (=> b!1738753 (= res!781526 (matchR!2199 (regex!3397 lt!669557) (list!7722 (charsOf!2046 (_1!10779 lt!669533)))))))

(declare-fun get!5735 (Option!3819) Rule!6594)

(assert (=> b!1738753 (= lt!669557 (get!5735 lt!669536))))

(assert (=> b!1738754 (= e!1112748 (and tp!495259 tp!495258))))

(declare-fun b!1738755 () Bool)

(assert (=> b!1738755 (= e!1112759 e!1112729)))

(declare-fun res!781540 () Bool)

(assert (=> b!1738755 (=> res!781540 e!1112729)))

(declare-fun lt!669529 () Option!3818)

(declare-fun lt!669530 () List!19164)

(assert (=> b!1738755 (= res!781540 (or (not (= lt!669530 (_2!10779 lt!669533))) (not (= lt!669529 (Some!3817 (tuple2!18755 (_1!10779 lt!669533) lt!669530))))))))

(assert (=> b!1738755 (= (_2!10779 lt!669533) lt!669530)))

(declare-fun lt!669523 () Unit!33065)

(assert (=> b!1738755 (= lt!669523 (lemmaSamePrefixThenSameSuffix!782 lt!669540 (_2!10779 lt!669533) lt!669540 lt!669530 lt!669552))))

(assert (=> b!1738755 (= lt!669530 (getSuffix!832 lt!669552 lt!669540))))

(declare-fun lt!669547 () Int)

(declare-fun lt!669521 () TokenValue!3487)

(assert (=> b!1738755 (= lt!669529 (Some!3817 (tuple2!18755 (Token!6361 lt!669521 (rule!5395 (_1!10779 lt!669533)) lt!669547 lt!669540) (_2!10779 lt!669533))))))

(declare-fun maxPrefixOneRule!956 (LexerInterface!3026 Rule!6594 List!19164) Option!3818)

(assert (=> b!1738755 (= lt!669529 (maxPrefixOneRule!956 thiss!24550 (rule!5395 (_1!10779 lt!669533)) lt!669552))))

(declare-fun size!15176 (List!19164) Int)

(assert (=> b!1738755 (= lt!669547 (size!15176 lt!669540))))

(assert (=> b!1738755 (= lt!669521 (apply!5202 (transformation!3397 (rule!5395 (_1!10779 lt!669533))) (seqFromList!2371 lt!669540)))))

(declare-fun lt!669518 () Unit!33065)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!355 (LexerInterface!3026 List!19165 List!19164 List!19164 List!19164 Rule!6594) Unit!33065)

(assert (=> b!1738755 (= lt!669518 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!355 thiss!24550 rules!3447 lt!669540 lt!669552 (_2!10779 lt!669533) (rule!5395 (_1!10779 lt!669533))))))

(declare-fun b!1738756 () Bool)

(declare-fun tp!495260 () Bool)

(assert (=> b!1738756 (= e!1112756 (and e!1112746 tp!495260))))

(declare-fun b!1738757 () Bool)

(assert (=> b!1738757 (= e!1112758 e!1112732)))

(declare-fun res!781541 () Bool)

(assert (=> b!1738757 (=> (not res!781541) (not e!1112732))))

(declare-fun isDefined!3162 (Option!3818) Bool)

(assert (=> b!1738757 (= res!781541 (isDefined!3162 lt!669528))))

(assert (=> b!1738757 (= lt!669528 (maxPrefix!1580 thiss!24550 rules!3447 lt!669566))))

(assert (=> b!1738757 (= lt!669566 (list!7722 lt!669526))))

(assert (=> b!1738757 (= lt!669526 (charsOf!2046 token!523))))

(declare-fun b!1738758 () Bool)

(assert (=> b!1738758 (= e!1112749 (= (rule!5395 (_1!10779 lt!669533)) lt!669557))))

(declare-fun b!1738759 () Bool)

(declare-fun Unit!33073 () Unit!33065)

(assert (=> b!1738759 (= e!1112750 Unit!33073)))

(declare-fun b!1738760 () Bool)

(declare-fun tp!495250 () Bool)

(assert (=> b!1738760 (= e!1112753 (and tp!495250 (inv!24729 (tag!3733 rule!422)) (inv!24734 (transformation!3397 rule!422)) e!1112745))))

(declare-fun b!1738761 () Bool)

(declare-fun Unit!33074 () Unit!33065)

(assert (=> b!1738761 (= e!1112727 Unit!33074)))

(declare-fun lt!669544 () Unit!33065)

(assert (=> b!1738761 (= lt!669544 (lemmaMaxPrefNoSmallerRuleMatches!134 thiss!24550 rules!3447 (rule!5395 (_1!10779 lt!669533)) lt!669540 lt!669552 (rule!5395 token!523)))))

(declare-fun res!781544 () Bool)

(assert (=> b!1738761 (= res!781544 (not (matchR!2199 (regex!3397 (rule!5395 token!523)) lt!669540)))))

(assert (=> b!1738761 (=> (not res!781544) (not e!1112752))))

(assert (=> b!1738761 e!1112752))

(declare-fun b!1738762 () Bool)

(declare-fun res!781539 () Bool)

(assert (=> b!1738762 (=> (not res!781539) (not e!1112728))))

(assert (=> b!1738762 (= res!781539 (isEmpty!12018 (_2!10779 lt!669560)))))

(declare-fun b!1738763 () Bool)

(declare-fun res!781536 () Bool)

(assert (=> b!1738763 (=> (not res!781536) (not e!1112758))))

(declare-fun rulesInvariant!2695 (LexerInterface!3026 List!19165) Bool)

(assert (=> b!1738763 (= res!781536 (rulesInvariant!2695 thiss!24550 rules!3447))))

(assert (= (and start!171142 res!781534) b!1738730))

(assert (= (and b!1738730 res!781546) b!1738763))

(assert (= (and b!1738763 res!781536) b!1738748))

(assert (= (and b!1738748 res!781537) b!1738757))

(assert (= (and b!1738757 res!781541) b!1738728))

(assert (= (and b!1738728 res!781527) b!1738762))

(assert (= (and b!1738762 res!781539) b!1738726))

(assert (= (and b!1738726 res!781532) b!1738734))

(assert (= (and b!1738734 (not res!781535)) b!1738750))

(assert (= (and b!1738750 (not res!781529)) b!1738742))

(assert (= (and b!1738742 (not res!781528)) b!1738737))

(assert (= (and b!1738737 res!781538) b!1738753))

(assert (= (and b!1738753 res!781526) b!1738758))

(assert (= (and b!1738737 (not res!781533)) b!1738729))

(assert (= (and b!1738729 (not res!781522)) b!1738733))

(assert (= (and b!1738733 (not res!781531)) b!1738732))

(assert (= (and b!1738732 (not res!781525)) b!1738749))

(assert (= (and b!1738749 (not res!781530)) b!1738743))

(assert (= (and b!1738743 (not res!781523)) b!1738755))

(assert (= (and b!1738755 (not res!781540)) b!1738735))

(assert (= (and b!1738735 c!283750) b!1738738))

(assert (= (and b!1738735 (not c!283750)) b!1738736))

(assert (= (and b!1738735 (not res!781543)) b!1738746))

(assert (= (and b!1738746 c!283751) b!1738724))

(assert (= (and b!1738746 (not c!283751)) b!1738759))

(assert (= (and b!1738746 (not res!781524)) b!1738725))

(assert (= (and b!1738725 (not res!781545)) b!1738727))

(assert (= (and b!1738727 c!283752) b!1738761))

(assert (= (and b!1738727 (not c!283752)) b!1738752))

(assert (= (and b!1738761 res!781544) b!1738745))

(assert (= (and b!1738727 c!283753) b!1738747))

(assert (= (and b!1738727 (not c!283753)) b!1738722))

(assert (= (and b!1738747 res!781542) b!1738740))

(assert (= (and start!171142 ((_ is Cons!19094) suffix!1421)) b!1738744))

(assert (= b!1738760 b!1738751))

(assert (= start!171142 b!1738760))

(assert (= b!1738723 b!1738754))

(assert (= b!1738739 b!1738723))

(assert (= start!171142 b!1738739))

(assert (= b!1738731 b!1738741))

(assert (= b!1738756 b!1738731))

(assert (= (and start!171142 ((_ is Cons!19095) rules!3447)) b!1738756))

(declare-fun b_lambda!55667 () Bool)

(assert (=> (not b_lambda!55667) (not b!1738732)))

(declare-fun t!161609 () Bool)

(declare-fun tb!103881 () Bool)

(assert (=> (and b!1738751 (= (toChars!4763 (transformation!3397 rule!422)) (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161609) tb!103881))

(declare-fun e!1112772 () Bool)

(declare-fun b!1738779 () Bool)

(declare-fun tp!495263 () Bool)

(declare-fun inv!24736 (Conc!6351) Bool)

(assert (=> b!1738779 (= e!1112772 (and (inv!24736 (c!283755 (dynLambda!9001 (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) (dynLambda!9002 (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) lt!669561)))) tp!495263))))

(declare-fun result!124932 () Bool)

(declare-fun inv!24737 (BalanceConc!12646) Bool)

(assert (=> tb!103881 (= result!124932 (and (inv!24737 (dynLambda!9001 (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) (dynLambda!9002 (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) lt!669561))) e!1112772))))

(assert (= tb!103881 b!1738779))

(declare-fun m!2149145 () Bool)

(assert (=> b!1738779 m!2149145))

(declare-fun m!2149147 () Bool)

(assert (=> tb!103881 m!2149147))

(assert (=> b!1738732 t!161609))

(declare-fun b_and!129019 () Bool)

(assert (= b_and!129009 (and (=> t!161609 result!124932) b_and!129019)))

(declare-fun tb!103883 () Bool)

(declare-fun t!161611 () Bool)

(assert (=> (and b!1738754 (= (toChars!4763 (transformation!3397 (rule!5395 token!523))) (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161611) tb!103883))

(declare-fun result!124936 () Bool)

(assert (= result!124936 result!124932))

(assert (=> b!1738732 t!161611))

(declare-fun b_and!129021 () Bool)

(assert (= b_and!129013 (and (=> t!161611 result!124936) b_and!129021)))

(declare-fun tb!103885 () Bool)

(declare-fun t!161613 () Bool)

(assert (=> (and b!1738741 (= (toChars!4763 (transformation!3397 (h!24496 rules!3447))) (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161613) tb!103885))

(declare-fun result!124938 () Bool)

(assert (= result!124938 result!124932))

(assert (=> b!1738732 t!161613))

(declare-fun b_and!129023 () Bool)

(assert (= b_and!129017 (and (=> t!161613 result!124938) b_and!129023)))

(declare-fun b_lambda!55669 () Bool)

(assert (=> (not b_lambda!55669) (not b!1738732)))

(declare-fun t!161615 () Bool)

(declare-fun tb!103887 () Bool)

(assert (=> (and b!1738751 (= (toValue!4904 (transformation!3397 rule!422)) (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161615) tb!103887))

(declare-fun result!124940 () Bool)

(assert (=> tb!103887 (= result!124940 (inv!21 (dynLambda!9002 (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) lt!669561)))))

(declare-fun m!2149149 () Bool)

(assert (=> tb!103887 m!2149149))

(assert (=> b!1738732 t!161615))

(declare-fun b_and!129025 () Bool)

(assert (= b_and!129007 (and (=> t!161615 result!124940) b_and!129025)))

(declare-fun tb!103889 () Bool)

(declare-fun t!161617 () Bool)

(assert (=> (and b!1738754 (= (toValue!4904 (transformation!3397 (rule!5395 token!523))) (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161617) tb!103889))

(declare-fun result!124944 () Bool)

(assert (= result!124944 result!124940))

(assert (=> b!1738732 t!161617))

(declare-fun b_and!129027 () Bool)

(assert (= b_and!129011 (and (=> t!161617 result!124944) b_and!129027)))

(declare-fun t!161619 () Bool)

(declare-fun tb!103891 () Bool)

(assert (=> (and b!1738741 (= (toValue!4904 (transformation!3397 (h!24496 rules!3447))) (toValue!4904 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161619) tb!103891))

(declare-fun result!124946 () Bool)

(assert (= result!124946 result!124940))

(assert (=> b!1738732 t!161619))

(declare-fun b_and!129029 () Bool)

(assert (= b_and!129015 (and (=> t!161619 result!124946) b_and!129029)))

(declare-fun b_lambda!55671 () Bool)

(assert (=> (not b_lambda!55671) (not b!1738749)))

(declare-fun tb!103893 () Bool)

(declare-fun t!161621 () Bool)

(assert (=> (and b!1738751 (= (toChars!4763 (transformation!3397 rule!422)) (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161621) tb!103893))

(declare-fun b!1738782 () Bool)

(declare-fun e!1112776 () Bool)

(declare-fun tp!495264 () Bool)

(assert (=> b!1738782 (= e!1112776 (and (inv!24736 (c!283755 (dynLambda!9001 (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) (value!106487 (_1!10779 lt!669533))))) tp!495264))))

(declare-fun result!124948 () Bool)

(assert (=> tb!103893 (= result!124948 (and (inv!24737 (dynLambda!9001 (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533)))) (value!106487 (_1!10779 lt!669533)))) e!1112776))))

(assert (= tb!103893 b!1738782))

(declare-fun m!2149151 () Bool)

(assert (=> b!1738782 m!2149151))

(declare-fun m!2149153 () Bool)

(assert (=> tb!103893 m!2149153))

(assert (=> b!1738749 t!161621))

(declare-fun b_and!129031 () Bool)

(assert (= b_and!129019 (and (=> t!161621 result!124948) b_and!129031)))

(declare-fun t!161623 () Bool)

(declare-fun tb!103895 () Bool)

(assert (=> (and b!1738754 (= (toChars!4763 (transformation!3397 (rule!5395 token!523))) (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161623) tb!103895))

(declare-fun result!124950 () Bool)

(assert (= result!124950 result!124948))

(assert (=> b!1738749 t!161623))

(declare-fun b_and!129033 () Bool)

(assert (= b_and!129021 (and (=> t!161623 result!124950) b_and!129033)))

(declare-fun tb!103897 () Bool)

(declare-fun t!161625 () Bool)

(assert (=> (and b!1738741 (= (toChars!4763 (transformation!3397 (h!24496 rules!3447))) (toChars!4763 (transformation!3397 (rule!5395 (_1!10779 lt!669533))))) t!161625) tb!103897))

(declare-fun result!124952 () Bool)

(assert (= result!124952 result!124948))

(assert (=> b!1738749 t!161625))

(declare-fun b_and!129035 () Bool)

(assert (= b_and!129023 (and (=> t!161625 result!124952) b_and!129035)))

(declare-fun m!2149155 () Bool)

(assert (=> b!1738749 m!2149155))

(declare-fun m!2149157 () Bool)

(assert (=> b!1738724 m!2149157))

(declare-fun m!2149159 () Bool)

(assert (=> b!1738742 m!2149159))

(declare-fun m!2149161 () Bool)

(assert (=> b!1738742 m!2149161))

(declare-fun m!2149163 () Bool)

(assert (=> b!1738742 m!2149163))

(declare-fun m!2149165 () Bool)

(assert (=> b!1738742 m!2149165))

(declare-fun m!2149167 () Bool)

(assert (=> b!1738737 m!2149167))

(declare-fun m!2149169 () Bool)

(assert (=> b!1738737 m!2149169))

(declare-fun m!2149171 () Bool)

(assert (=> b!1738737 m!2149171))

(declare-fun m!2149173 () Bool)

(assert (=> b!1738737 m!2149173))

(declare-fun m!2149175 () Bool)

(assert (=> b!1738737 m!2149175))

(declare-fun m!2149177 () Bool)

(assert (=> b!1738737 m!2149177))

(assert (=> b!1738737 m!2149171))

(declare-fun m!2149179 () Bool)

(assert (=> b!1738737 m!2149179))

(declare-fun m!2149181 () Bool)

(assert (=> b!1738737 m!2149181))

(declare-fun m!2149183 () Bool)

(assert (=> b!1738737 m!2149183))

(declare-fun m!2149185 () Bool)

(assert (=> b!1738737 m!2149185))

(declare-fun m!2149187 () Bool)

(assert (=> b!1738737 m!2149187))

(declare-fun m!2149189 () Bool)

(assert (=> b!1738737 m!2149189))

(declare-fun m!2149191 () Bool)

(assert (=> b!1738737 m!2149191))

(declare-fun m!2149193 () Bool)

(assert (=> b!1738737 m!2149193))

(declare-fun m!2149195 () Bool)

(assert (=> b!1738737 m!2149195))

(declare-fun m!2149197 () Bool)

(assert (=> b!1738761 m!2149197))

(declare-fun m!2149199 () Bool)

(assert (=> b!1738761 m!2149199))

(declare-fun m!2149201 () Bool)

(assert (=> b!1738757 m!2149201))

(declare-fun m!2149203 () Bool)

(assert (=> b!1738757 m!2149203))

(declare-fun m!2149205 () Bool)

(assert (=> b!1738757 m!2149205))

(declare-fun m!2149207 () Bool)

(assert (=> b!1738757 m!2149207))

(declare-fun m!2149209 () Bool)

(assert (=> b!1738735 m!2149209))

(declare-fun m!2149211 () Bool)

(assert (=> b!1738735 m!2149211))

(declare-fun m!2149213 () Bool)

(assert (=> b!1738735 m!2149213))

(declare-fun m!2149215 () Bool)

(assert (=> b!1738734 m!2149215))

(declare-fun m!2149217 () Bool)

(assert (=> b!1738734 m!2149217))

(declare-fun m!2149219 () Bool)

(assert (=> b!1738734 m!2149219))

(declare-fun m!2149221 () Bool)

(assert (=> b!1738748 m!2149221))

(declare-fun m!2149223 () Bool)

(assert (=> b!1738739 m!2149223))

(assert (=> b!1738753 m!2149187))

(assert (=> b!1738753 m!2149187))

(declare-fun m!2149225 () Bool)

(assert (=> b!1738753 m!2149225))

(assert (=> b!1738753 m!2149225))

(declare-fun m!2149227 () Bool)

(assert (=> b!1738753 m!2149227))

(declare-fun m!2149229 () Bool)

(assert (=> b!1738753 m!2149229))

(declare-fun m!2149231 () Bool)

(assert (=> b!1738747 m!2149231))

(declare-fun m!2149233 () Bool)

(assert (=> b!1738747 m!2149233))

(declare-fun m!2149235 () Bool)

(assert (=> b!1738728 m!2149235))

(declare-fun m!2149237 () Bool)

(assert (=> b!1738729 m!2149237))

(declare-fun m!2149239 () Bool)

(assert (=> b!1738743 m!2149239))

(declare-fun m!2149241 () Bool)

(assert (=> b!1738743 m!2149241))

(declare-fun m!2149243 () Bool)

(assert (=> b!1738743 m!2149243))

(declare-fun m!2149245 () Bool)

(assert (=> b!1738743 m!2149245))

(assert (=> b!1738743 m!2149241))

(declare-fun m!2149247 () Bool)

(assert (=> b!1738743 m!2149247))

(declare-fun m!2149249 () Bool)

(assert (=> b!1738725 m!2149249))

(declare-fun m!2149251 () Bool)

(assert (=> b!1738725 m!2149251))

(declare-fun m!2149253 () Bool)

(assert (=> b!1738730 m!2149253))

(declare-fun m!2149255 () Bool)

(assert (=> b!1738763 m!2149255))

(declare-fun m!2149257 () Bool)

(assert (=> b!1738760 m!2149257))

(declare-fun m!2149259 () Bool)

(assert (=> b!1738760 m!2149259))

(declare-fun m!2149261 () Bool)

(assert (=> b!1738731 m!2149261))

(declare-fun m!2149263 () Bool)

(assert (=> b!1738731 m!2149263))

(declare-fun m!2149265 () Bool)

(assert (=> b!1738762 m!2149265))

(declare-fun m!2149267 () Bool)

(assert (=> b!1738738 m!2149267))

(declare-fun m!2149269 () Bool)

(assert (=> b!1738738 m!2149269))

(assert (=> b!1738738 m!2149267))

(declare-fun m!2149271 () Bool)

(assert (=> b!1738738 m!2149271))

(declare-fun m!2149273 () Bool)

(assert (=> b!1738738 m!2149273))

(declare-fun m!2149275 () Bool)

(assert (=> b!1738738 m!2149275))

(declare-fun m!2149277 () Bool)

(assert (=> b!1738738 m!2149277))

(declare-fun m!2149279 () Bool)

(assert (=> b!1738738 m!2149279))

(declare-fun m!2149281 () Bool)

(assert (=> b!1738738 m!2149281))

(declare-fun m!2149283 () Bool)

(assert (=> b!1738738 m!2149283))

(declare-fun m!2149285 () Bool)

(assert (=> b!1738738 m!2149285))

(declare-fun m!2149287 () Bool)

(assert (=> b!1738738 m!2149287))

(declare-fun m!2149289 () Bool)

(assert (=> b!1738755 m!2149289))

(declare-fun m!2149291 () Bool)

(assert (=> b!1738755 m!2149291))

(declare-fun m!2149293 () Bool)

(assert (=> b!1738755 m!2149293))

(declare-fun m!2149295 () Bool)

(assert (=> b!1738755 m!2149295))

(declare-fun m!2149297 () Bool)

(assert (=> b!1738755 m!2149297))

(declare-fun m!2149299 () Bool)

(assert (=> b!1738755 m!2149299))

(declare-fun m!2149301 () Bool)

(assert (=> b!1738755 m!2149301))

(assert (=> b!1738755 m!2149291))

(declare-fun m!2149303 () Bool)

(assert (=> b!1738723 m!2149303))

(declare-fun m!2149305 () Bool)

(assert (=> b!1738723 m!2149305))

(declare-fun m!2149307 () Bool)

(assert (=> start!171142 m!2149307))

(declare-fun m!2149309 () Bool)

(assert (=> b!1738732 m!2149309))

(assert (=> b!1738732 m!2149309))

(declare-fun m!2149311 () Bool)

(assert (=> b!1738732 m!2149311))

(assert (=> b!1738732 m!2149311))

(declare-fun m!2149313 () Bool)

(assert (=> b!1738732 m!2149313))

(declare-fun m!2149315 () Bool)

(assert (=> b!1738732 m!2149315))

(declare-fun m!2149317 () Bool)

(assert (=> b!1738750 m!2149317))

(declare-fun m!2149319 () Bool)

(assert (=> b!1738733 m!2149319))

(declare-fun m!2149321 () Bool)

(assert (=> b!1738733 m!2149321))

(declare-fun m!2149323 () Bool)

(assert (=> b!1738727 m!2149323))

(declare-fun m!2149325 () Bool)

(assert (=> b!1738727 m!2149325))

(declare-fun m!2149327 () Bool)

(assert (=> b!1738727 m!2149327))

(check-sat (not tb!103887) (not b!1738756) (not b!1738757) (not b_lambda!55669) (not b!1738744) (not b_next!48439) (not b!1738723) (not b_next!48441) (not b!1738733) (not start!171142) b_and!129033 (not b!1738750) (not b!1738747) (not b!1738728) (not b!1738753) (not b!1738735) (not b!1738737) (not b!1738755) b_and!129027 (not b!1738739) (not b!1738760) (not b!1738782) (not b!1738742) (not b!1738734) b_and!129029 (not b!1738761) tp_is_empty!7693 (not b!1738732) (not b!1738763) (not b!1738748) (not b_next!48435) (not b_next!48437) (not b!1738729) (not tb!103893) (not b!1738779) (not b_next!48445) (not b_next!48443) (not b_lambda!55667) (not b_lambda!55671) (not b!1738762) (not b!1738727) b_and!129031 (not tb!103881) (not b!1738724) (not b!1738730) (not b!1738743) (not b!1738738) (not b!1738725) b_and!129035 b_and!129025 (not b!1738731))
(check-sat b_and!129033 b_and!129027 b_and!129029 (not b_next!48439) b_and!129031 (not b_next!48441) b_and!129035 b_and!129025 (not b_next!48435) (not b_next!48437) (not b_next!48445) (not b_next!48443))
