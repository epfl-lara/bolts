; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!170316 () Bool)

(assert start!170316)

(declare-fun b!1732090 () Bool)

(declare-fun b_free!47399 () Bool)

(declare-fun b_next!48103 () Bool)

(assert (=> b!1732090 (= b_free!47399 (not b_next!48103))))

(declare-fun tp!493822 () Bool)

(declare-fun b_and!127793 () Bool)

(assert (=> b!1732090 (= tp!493822 b_and!127793)))

(declare-fun b_free!47401 () Bool)

(declare-fun b_next!48105 () Bool)

(assert (=> b!1732090 (= b_free!47401 (not b_next!48105))))

(declare-fun tp!493821 () Bool)

(declare-fun b_and!127795 () Bool)

(assert (=> b!1732090 (= tp!493821 b_and!127795)))

(declare-fun b!1732076 () Bool)

(declare-fun b_free!47403 () Bool)

(declare-fun b_next!48107 () Bool)

(assert (=> b!1732076 (= b_free!47403 (not b_next!48107))))

(declare-fun tp!493819 () Bool)

(declare-fun b_and!127797 () Bool)

(assert (=> b!1732076 (= tp!493819 b_and!127797)))

(declare-fun b_free!47405 () Bool)

(declare-fun b_next!48109 () Bool)

(assert (=> b!1732076 (= b_free!47405 (not b_next!48109))))

(declare-fun tp!493824 () Bool)

(declare-fun b_and!127799 () Bool)

(assert (=> b!1732076 (= tp!493824 b_and!127799)))

(declare-fun b!1732077 () Bool)

(declare-fun b_free!47407 () Bool)

(declare-fun b_next!48111 () Bool)

(assert (=> b!1732077 (= b_free!47407 (not b_next!48111))))

(declare-fun tp!493828 () Bool)

(declare-fun b_and!127801 () Bool)

(assert (=> b!1732077 (= tp!493828 b_and!127801)))

(declare-fun b_free!47409 () Bool)

(declare-fun b_next!48113 () Bool)

(assert (=> b!1732077 (= b_free!47409 (not b_next!48113))))

(declare-fun tp!493820 () Bool)

(declare-fun b_and!127803 () Bool)

(assert (=> b!1732077 (= tp!493820 b_and!127803)))

(declare-fun b!1732109 () Bool)

(declare-fun e!1108191 () Bool)

(assert (=> b!1732109 (= e!1108191 true)))

(declare-fun b!1732108 () Bool)

(declare-fun e!1108190 () Bool)

(assert (=> b!1732108 (= e!1108190 e!1108191)))

(declare-fun b!1732107 () Bool)

(declare-fun e!1108189 () Bool)

(assert (=> b!1732107 (= e!1108189 e!1108190)))

(declare-fun b!1732096 () Bool)

(assert (=> b!1732096 e!1108189))

(assert (= b!1732108 b!1732109))

(assert (= b!1732107 b!1732108))

(assert (= b!1732096 b!1732107))

(declare-fun order!11721 () Int)

(declare-fun order!11723 () Int)

(declare-datatypes ((List!19065 0))(
  ( (Nil!18995) (Cons!18995 (h!24396 (_ BitVec 16)) (t!160838 List!19065)) )
))
(declare-datatypes ((TokenValue!3462 0))(
  ( (FloatLiteralValue!6924 (text!24679 List!19065)) (TokenValueExt!3461 (__x!12226 Int)) (Broken!17310 (value!105750 List!19065)) (Object!3531) (End!3462) (Def!3462) (Underscore!3462) (Match!3462) (Else!3462) (Error!3462) (Case!3462) (If!3462) (Extends!3462) (Abstract!3462) (Class!3462) (Val!3462) (DelimiterValue!6924 (del!3522 List!19065)) (KeywordValue!3468 (value!105751 List!19065)) (CommentValue!6924 (value!105752 List!19065)) (WhitespaceValue!6924 (value!105753 List!19065)) (IndentationValue!3462 (value!105754 List!19065)) (String!21643) (Int32!3462) (Broken!17311 (value!105755 List!19065)) (Boolean!3463) (Unit!32853) (OperatorValue!3465 (op!3522 List!19065)) (IdentifierValue!6924 (value!105756 List!19065)) (IdentifierValue!6925 (value!105757 List!19065)) (WhitespaceValue!6925 (value!105758 List!19065)) (True!6924) (False!6924) (Broken!17312 (value!105759 List!19065)) (Broken!17313 (value!105760 List!19065)) (True!6925) (RightBrace!3462) (RightBracket!3462) (Colon!3462) (Null!3462) (Comma!3462) (LeftBracket!3462) (False!6925) (LeftBrace!3462) (ImaginaryLiteralValue!3462 (text!24680 List!19065)) (StringLiteralValue!10386 (value!105761 List!19065)) (EOFValue!3462 (value!105762 List!19065)) (IdentValue!3462 (value!105763 List!19065)) (DelimiterValue!6925 (value!105764 List!19065)) (DedentValue!3462 (value!105765 List!19065)) (NewLineValue!3462 (value!105766 List!19065)) (IntegerValue!10386 (value!105767 (_ BitVec 32)) (text!24681 List!19065)) (IntegerValue!10387 (value!105768 Int) (text!24682 List!19065)) (Times!3462) (Or!3462) (Equal!3462) (Minus!3462) (Broken!17314 (value!105769 List!19065)) (And!3462) (Div!3462) (LessEqual!3462) (Mod!3462) (Concat!8162) (Not!3462) (Plus!3462) (SpaceValue!3462 (value!105770 List!19065)) (IntegerValue!10388 (value!105771 Int) (text!24683 List!19065)) (StringLiteralValue!10387 (text!24684 List!19065)) (FloatLiteralValue!6925 (text!24685 List!19065)) (BytesLiteralValue!3462 (value!105772 List!19065)) (CommentValue!6925 (value!105773 List!19065)) (StringLiteralValue!10388 (value!105774 List!19065)) (ErrorTokenValue!3462 (msg!3523 List!19065)) )
))
(declare-datatypes ((C!9574 0))(
  ( (C!9575 (val!5383 Int)) )
))
(declare-datatypes ((List!19066 0))(
  ( (Nil!18996) (Cons!18996 (h!24397 C!9574) (t!160839 List!19066)) )
))
(declare-datatypes ((Regex!4700 0))(
  ( (ElementMatch!4700 (c!282925 C!9574)) (Concat!8163 (regOne!9912 Regex!4700) (regTwo!9912 Regex!4700)) (EmptyExpr!4700) (Star!4700 (reg!5029 Regex!4700)) (EmptyLang!4700) (Union!4700 (regOne!9913 Regex!4700) (regTwo!9913 Regex!4700)) )
))
(declare-datatypes ((String!21644 0))(
  ( (String!21645 (value!105775 String)) )
))
(declare-datatypes ((IArray!12641 0))(
  ( (IArray!12642 (innerList!6378 List!19066)) )
))
(declare-datatypes ((Conc!6318 0))(
  ( (Node!6318 (left!15172 Conc!6318) (right!15502 Conc!6318) (csize!12866 Int) (cheight!6529 Int)) (Leaf!9225 (xs!9194 IArray!12641) (csize!12867 Int)) (Empty!6318) )
))
(declare-datatypes ((BalanceConc!12580 0))(
  ( (BalanceConc!12581 (c!282926 Conc!6318)) )
))
(declare-datatypes ((TokenValueInjection!6584 0))(
  ( (TokenValueInjection!6585 (toValue!4879 Int) (toChars!4738 Int)) )
))
(declare-datatypes ((Rule!6544 0))(
  ( (Rule!6545 (regex!3372 Regex!4700) (tag!3700 String!21644) (isSeparator!3372 Bool) (transformation!3372 TokenValueInjection!6584)) )
))
(declare-datatypes ((Token!6310 0))(
  ( (Token!6311 (value!105776 TokenValue!3462) (rule!5354 Rule!6544) (size!15091 Int) (originalCharacters!4186 List!19066)) )
))
(declare-datatypes ((tuple2!18672 0))(
  ( (tuple2!18673 (_1!10738 Token!6310) (_2!10738 List!19066)) )
))
(declare-fun lt!664721 () tuple2!18672)

(declare-fun lambda!69395 () Int)

(declare-fun dynLambda!8865 (Int Int) Int)

(declare-fun dynLambda!8866 (Int Int) Int)

(assert (=> b!1732109 (< (dynLambda!8865 order!11721 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) (dynLambda!8866 order!11723 lambda!69395))))

(declare-fun order!11725 () Int)

(declare-fun dynLambda!8867 (Int Int) Int)

(assert (=> b!1732109 (< (dynLambda!8867 order!11725 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) (dynLambda!8866 order!11723 lambda!69395))))

(declare-fun tp!493825 () Bool)

(declare-fun b!1732067 () Bool)

(declare-fun e!1108172 () Bool)

(declare-datatypes ((List!19067 0))(
  ( (Nil!18997) (Cons!18997 (h!24398 Rule!6544) (t!160840 List!19067)) )
))
(declare-fun rules!3447 () List!19067)

(declare-fun e!1108177 () Bool)

(declare-fun inv!24572 (String!21644) Bool)

(declare-fun inv!24575 (TokenValueInjection!6584) Bool)

(assert (=> b!1732067 (= e!1108177 (and tp!493825 (inv!24572 (tag!3700 (h!24398 rules!3447))) (inv!24575 (transformation!3372 (h!24398 rules!3447))) e!1108172))))

(declare-fun e!1108170 () Bool)

(declare-fun tp!493818 () Bool)

(declare-fun token!523 () Token!6310)

(declare-fun e!1108174 () Bool)

(declare-fun b!1732068 () Bool)

(assert (=> b!1732068 (= e!1108174 (and tp!493818 (inv!24572 (tag!3700 (rule!5354 token!523))) (inv!24575 (transformation!3372 (rule!5354 token!523))) e!1108170))))

(declare-fun b!1732069 () Bool)

(declare-fun e!1108182 () Bool)

(declare-fun e!1108176 () Bool)

(assert (=> b!1732069 (= e!1108182 e!1108176)))

(declare-fun res!778015 () Bool)

(assert (=> b!1732069 (=> res!778015 e!1108176)))

(declare-fun lt!664699 () Int)

(declare-fun lt!664700 () BalanceConc!12580)

(declare-fun size!15092 (BalanceConc!12580) Int)

(assert (=> b!1732069 (= res!778015 (<= lt!664699 (size!15092 lt!664700)))))

(declare-fun lt!664705 () Regex!4700)

(declare-fun lt!664732 () List!19066)

(declare-fun matchR!2174 (Regex!4700 List!19066) Bool)

(assert (=> b!1732069 (matchR!2174 lt!664705 lt!664732)))

(declare-fun rule!422 () Rule!6544)

(declare-datatypes ((LexerInterface!3001 0))(
  ( (LexerInterfaceExt!2998 (__x!12227 Int)) (Lexer!2999) )
))
(declare-fun thiss!24550 () LexerInterface!3001)

(declare-datatypes ((Unit!32854 0))(
  ( (Unit!32855) )
))
(declare-fun lt!664723 () Unit!32854)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!121 (LexerInterface!3001 List!19067 List!19066 Token!6310 Rule!6544 List!19066) Unit!32854)

(assert (=> b!1732069 (= lt!664723 (lemmaMaxPrefixThenMatchesRulesRegex!121 thiss!24550 rules!3447 lt!664732 token!523 rule!422 Nil!18996))))

(declare-fun b!1732071 () Bool)

(declare-fun e!1108178 () Bool)

(declare-fun e!1108160 () Bool)

(assert (=> b!1732071 (= e!1108178 e!1108160)))

(declare-fun res!778012 () Bool)

(assert (=> b!1732071 (=> res!778012 e!1108160)))

(declare-fun lt!664719 () List!19066)

(declare-fun prefixMatch!585 (Regex!4700 List!19066) Bool)

(assert (=> b!1732071 (= res!778012 (prefixMatch!585 lt!664705 lt!664719))))

(declare-fun suffix!1421 () List!19066)

(declare-fun ++!5197 (List!19066 List!19066) List!19066)

(declare-fun head!3943 (List!19066) C!9574)

(assert (=> b!1732071 (= lt!664719 (++!5197 lt!664732 (Cons!18996 (head!3943 suffix!1421) Nil!18996)))))

(declare-fun rulesRegex!730 (LexerInterface!3001 List!19067) Regex!4700)

(assert (=> b!1732071 (= lt!664705 (rulesRegex!730 thiss!24550 rules!3447))))

(declare-fun b!1732072 () Bool)

(declare-fun e!1108169 () Bool)

(declare-fun e!1108165 () Bool)

(assert (=> b!1732072 (= e!1108169 e!1108165)))

(declare-fun res!778011 () Bool)

(assert (=> b!1732072 (=> (not res!778011) (not e!1108165))))

(declare-fun lt!664728 () Rule!6544)

(declare-fun list!7681 (BalanceConc!12580) List!19066)

(declare-fun charsOf!2021 (Token!6310) BalanceConc!12580)

(assert (=> b!1732072 (= res!778011 (matchR!2174 (regex!3372 lt!664728) (list!7681 (charsOf!2021 (_1!10738 lt!664721)))))))

(declare-datatypes ((Option!3768 0))(
  ( (None!3767) (Some!3767 (v!25188 Rule!6544)) )
))
(declare-fun lt!664716 () Option!3768)

(declare-fun get!5672 (Option!3768) Rule!6544)

(assert (=> b!1732072 (= lt!664728 (get!5672 lt!664716))))

(declare-fun b!1732073 () Bool)

(declare-fun res!778009 () Bool)

(declare-fun e!1108157 () Bool)

(assert (=> b!1732073 (=> (not res!778009) (not e!1108157))))

(assert (=> b!1732073 (= res!778009 (= (rule!5354 token!523) rule!422))))

(declare-fun b!1732074 () Bool)

(declare-fun e!1108175 () Bool)

(declare-fun e!1108163 () Bool)

(assert (=> b!1732074 (= e!1108175 e!1108163)))

(declare-fun res!778003 () Bool)

(assert (=> b!1732074 (=> res!778003 e!1108163)))

(declare-fun lt!664722 () List!19066)

(declare-fun isPrefix!1613 (List!19066 List!19066) Bool)

(assert (=> b!1732074 (= res!778003 (not (isPrefix!1613 lt!664719 lt!664722)))))

(declare-fun lt!664704 () List!19066)

(assert (=> b!1732074 (isPrefix!1613 (++!5197 lt!664732 (Cons!18996 (head!3943 lt!664704) Nil!18996)) lt!664722)))

(declare-fun lt!664715 () Unit!32854)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!208 (List!19066 List!19066) Unit!32854)

(assert (=> b!1732074 (= lt!664715 (lemmaAddHeadSuffixToPrefixStillPrefix!208 lt!664732 lt!664722))))

(declare-fun b!1732075 () Bool)

(declare-fun e!1108158 () Bool)

(assert (=> b!1732075 (= e!1108160 e!1108158)))

(declare-fun res!778020 () Bool)

(assert (=> b!1732075 (=> res!778020 e!1108158)))

(declare-fun lt!664724 () List!19066)

(assert (=> b!1732075 (= res!778020 (not (isPrefix!1613 lt!664724 lt!664722)))))

(assert (=> b!1732075 (isPrefix!1613 lt!664724 (++!5197 lt!664724 (_2!10738 lt!664721)))))

(declare-fun lt!664730 () Unit!32854)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1123 (List!19066 List!19066) Unit!32854)

(assert (=> b!1732075 (= lt!664730 (lemmaConcatTwoListThenFirstIsPrefix!1123 lt!664724 (_2!10738 lt!664721)))))

(declare-fun lt!664714 () BalanceConc!12580)

(assert (=> b!1732075 (= lt!664724 (list!7681 lt!664714))))

(assert (=> b!1732075 (= lt!664714 (charsOf!2021 (_1!10738 lt!664721)))))

(assert (=> b!1732075 e!1108169))

(declare-fun res!778008 () Bool)

(assert (=> b!1732075 (=> (not res!778008) (not e!1108169))))

(declare-fun isDefined!3111 (Option!3768) Bool)

(assert (=> b!1732075 (= res!778008 (isDefined!3111 lt!664716))))

(declare-fun getRuleFromTag!422 (LexerInterface!3001 List!19067 String!21644) Option!3768)

(assert (=> b!1732075 (= lt!664716 (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 (_1!10738 lt!664721)))))))

(declare-fun lt!664697 () Unit!32854)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!422 (LexerInterface!3001 List!19067 List!19066 Token!6310) Unit!32854)

(assert (=> b!1732075 (= lt!664697 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!422 thiss!24550 rules!3447 lt!664722 (_1!10738 lt!664721)))))

(declare-datatypes ((Option!3769 0))(
  ( (None!3768) (Some!3768 (v!25189 tuple2!18672)) )
))
(declare-fun lt!664731 () Option!3769)

(declare-fun get!5673 (Option!3769) tuple2!18672)

(assert (=> b!1732075 (= lt!664721 (get!5673 lt!664731))))

(declare-fun lt!664720 () Unit!32854)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!525 (LexerInterface!3001 List!19067 List!19066 List!19066) Unit!32854)

(assert (=> b!1732075 (= lt!664720 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!525 thiss!24550 rules!3447 lt!664732 suffix!1421))))

(declare-fun maxPrefix!1555 (LexerInterface!3001 List!19067 List!19066) Option!3769)

(assert (=> b!1732075 (= lt!664731 (maxPrefix!1555 thiss!24550 rules!3447 lt!664722))))

(assert (=> b!1732075 (isPrefix!1613 lt!664732 lt!664722)))

(declare-fun lt!664707 () Unit!32854)

(assert (=> b!1732075 (= lt!664707 (lemmaConcatTwoListThenFirstIsPrefix!1123 lt!664732 suffix!1421))))

(assert (=> b!1732075 (= lt!664722 (++!5197 lt!664732 suffix!1421))))

(assert (=> b!1732076 (= e!1108170 (and tp!493819 tp!493824))))

(declare-fun e!1108181 () Bool)

(assert (=> b!1732077 (= e!1108181 (and tp!493828 tp!493820))))

(declare-fun b!1732078 () Bool)

(declare-fun e!1108179 () Bool)

(declare-fun e!1108155 () Bool)

(assert (=> b!1732078 (= e!1108179 e!1108155)))

(declare-fun res!778023 () Bool)

(assert (=> b!1732078 (=> res!778023 e!1108155)))

(declare-fun dynLambda!8868 (Int TokenValue!3462) BalanceConc!12580)

(declare-fun dynLambda!8869 (Int BalanceConc!12580) TokenValue!3462)

(assert (=> b!1732078 (= res!778023 (not (= (list!7681 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))) lt!664724)))))

(declare-fun lt!664726 () Unit!32854)

(declare-fun lemmaSemiInverse!518 (TokenValueInjection!6584 BalanceConc!12580) Unit!32854)

(assert (=> b!1732078 (= lt!664726 (lemmaSemiInverse!518 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) lt!664714))))

(declare-fun b!1732079 () Bool)

(declare-fun res!778017 () Bool)

(assert (=> b!1732079 (=> res!778017 e!1108155)))

(assert (=> b!1732079 (= res!778017 (not (= lt!664714 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))))))

(declare-fun b!1732080 () Bool)

(declare-fun e!1108168 () Bool)

(declare-fun tp!493826 () Bool)

(assert (=> b!1732080 (= e!1108168 (and e!1108177 tp!493826))))

(declare-fun e!1108173 () Bool)

(declare-fun b!1732081 () Bool)

(declare-fun tp!493817 () Bool)

(declare-fun inv!21 (TokenValue!3462) Bool)

(assert (=> b!1732081 (= e!1108173 (and (inv!21 (value!105776 token!523)) e!1108174 tp!493817))))

(declare-fun b!1732082 () Bool)

(assert (=> b!1732082 (= e!1108157 (not e!1108178))))

(declare-fun res!778002 () Bool)

(assert (=> b!1732082 (=> res!778002 e!1108178)))

(assert (=> b!1732082 (= res!778002 (not (matchR!2174 (regex!3372 rule!422) lt!664732)))))

(declare-fun ruleValid!871 (LexerInterface!3001 Rule!6544) Bool)

(assert (=> b!1732082 (ruleValid!871 thiss!24550 rule!422)))

(declare-fun lt!664710 () Unit!32854)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!395 (LexerInterface!3001 Rule!6544 List!19067) Unit!32854)

(assert (=> b!1732082 (= lt!664710 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!395 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1732083 () Bool)

(declare-fun e!1108162 () Bool)

(declare-fun e!1108171 () Bool)

(assert (=> b!1732083 (= e!1108162 e!1108171)))

(declare-fun res!778019 () Bool)

(assert (=> b!1732083 (=> (not res!778019) (not e!1108171))))

(declare-fun lt!664708 () Option!3769)

(declare-fun isDefined!3112 (Option!3769) Bool)

(assert (=> b!1732083 (= res!778019 (isDefined!3112 lt!664708))))

(assert (=> b!1732083 (= lt!664708 (maxPrefix!1555 thiss!24550 rules!3447 lt!664732))))

(assert (=> b!1732083 (= lt!664732 (list!7681 lt!664700))))

(assert (=> b!1732083 (= lt!664700 (charsOf!2021 token!523))))

(declare-fun b!1732084 () Bool)

(declare-fun res!778016 () Bool)

(assert (=> b!1732084 (=> (not res!778016) (not e!1108162))))

(declare-fun isEmpty!11951 (List!19067) Bool)

(assert (=> b!1732084 (= res!778016 (not (isEmpty!11951 rules!3447)))))

(declare-fun b!1732085 () Bool)

(declare-fun e!1108180 () Bool)

(assert (=> b!1732085 (= e!1108155 e!1108180)))

(declare-fun res!778005 () Bool)

(assert (=> b!1732085 (=> res!778005 e!1108180)))

(declare-fun lt!664717 () TokenValue!3462)

(assert (=> b!1732085 (= res!778005 (not (= lt!664731 (Some!3768 (tuple2!18673 (Token!6311 lt!664717 (rule!5354 (_1!10738 lt!664721)) lt!664699 lt!664724) (_2!10738 lt!664721))))))))

(assert (=> b!1732085 (= lt!664699 (size!15092 lt!664714))))

(declare-fun apply!5177 (TokenValueInjection!6584 BalanceConc!12580) TokenValue!3462)

(assert (=> b!1732085 (= lt!664717 (apply!5177 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) lt!664714))))

(declare-fun lt!664729 () Unit!32854)

(declare-fun lemmaCharactersSize!444 (Token!6310) Unit!32854)

(assert (=> b!1732085 (= lt!664729 (lemmaCharactersSize!444 (_1!10738 lt!664721)))))

(declare-fun lt!664703 () Unit!32854)

(declare-fun lemmaEqSameImage!297 (TokenValueInjection!6584 BalanceConc!12580 BalanceConc!12580) Unit!32854)

(declare-fun seqFromList!2346 (List!19066) BalanceConc!12580)

(assert (=> b!1732085 (= lt!664703 (lemmaEqSameImage!297 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) lt!664714 (seqFromList!2346 (originalCharacters!4186 (_1!10738 lt!664721)))))))

(declare-fun b!1732086 () Bool)

(assert (=> b!1732086 (= e!1108165 (= (rule!5354 (_1!10738 lt!664721)) lt!664728))))

(declare-fun b!1732087 () Bool)

(assert (=> b!1732087 (= e!1108176 e!1108175)))

(declare-fun res!778004 () Bool)

(assert (=> b!1732087 (=> res!778004 e!1108175)))

(assert (=> b!1732087 (= res!778004 (not (= lt!664704 suffix!1421)))))

(assert (=> b!1732087 (= suffix!1421 lt!664704)))

(declare-fun lt!664725 () Unit!32854)

(declare-fun lemmaSamePrefixThenSameSuffix!757 (List!19066 List!19066 List!19066 List!19066 List!19066) Unit!32854)

(assert (=> b!1732087 (= lt!664725 (lemmaSamePrefixThenSameSuffix!757 lt!664732 suffix!1421 lt!664732 lt!664704 lt!664722))))

(declare-fun getSuffix!807 (List!19066 List!19066) List!19066)

(assert (=> b!1732087 (= lt!664704 (getSuffix!807 lt!664722 lt!664732))))

(assert (=> b!1732087 (matchR!2174 lt!664705 lt!664724)))

(declare-fun lt!664711 () Unit!32854)

(assert (=> b!1732087 (= lt!664711 (lemmaMaxPrefixThenMatchesRulesRegex!121 thiss!24550 rules!3447 lt!664722 (_1!10738 lt!664721) (rule!5354 (_1!10738 lt!664721)) (_2!10738 lt!664721)))))

(declare-fun tp!493827 () Bool)

(declare-fun e!1108156 () Bool)

(declare-fun b!1732088 () Bool)

(assert (=> b!1732088 (= e!1108156 (and tp!493827 (inv!24572 (tag!3700 rule!422)) (inv!24575 (transformation!3372 rule!422)) e!1108181))))

(declare-fun res!778001 () Bool)

(assert (=> start!170316 (=> (not res!778001) (not e!1108162))))

(assert (=> start!170316 (= res!778001 (is-Lexer!2999 thiss!24550))))

(assert (=> start!170316 e!1108162))

(declare-fun e!1108159 () Bool)

(assert (=> start!170316 e!1108159))

(assert (=> start!170316 e!1108156))

(assert (=> start!170316 true))

(declare-fun inv!24576 (Token!6310) Bool)

(assert (=> start!170316 (and (inv!24576 token!523) e!1108173)))

(assert (=> start!170316 e!1108168))

(declare-fun b!1732070 () Bool)

(declare-fun res!778018 () Bool)

(assert (=> b!1732070 (=> res!778018 e!1108158)))

(assert (=> b!1732070 (= res!778018 (not (matchR!2174 (regex!3372 (rule!5354 (_1!10738 lt!664721))) lt!664724)))))

(declare-fun b!1732089 () Bool)

(assert (=> b!1732089 (= e!1108180 e!1108182)))

(declare-fun res!778021 () Bool)

(assert (=> b!1732089 (=> res!778021 e!1108182)))

(declare-fun lt!664712 () List!19066)

(declare-fun lt!664701 () Option!3769)

(assert (=> b!1732089 (= res!778021 (or (not (= lt!664712 (_2!10738 lt!664721))) (not (= lt!664701 (Some!3768 (tuple2!18673 (_1!10738 lt!664721) lt!664712))))))))

(assert (=> b!1732089 (= (_2!10738 lt!664721) lt!664712)))

(declare-fun lt!664702 () Unit!32854)

(assert (=> b!1732089 (= lt!664702 (lemmaSamePrefixThenSameSuffix!757 lt!664724 (_2!10738 lt!664721) lt!664724 lt!664712 lt!664722))))

(assert (=> b!1732089 (= lt!664712 (getSuffix!807 lt!664722 lt!664724))))

(declare-fun lt!664718 () Int)

(declare-fun lt!664713 () TokenValue!3462)

(assert (=> b!1732089 (= lt!664701 (Some!3768 (tuple2!18673 (Token!6311 lt!664713 (rule!5354 (_1!10738 lt!664721)) lt!664718 lt!664724) (_2!10738 lt!664721))))))

(declare-fun maxPrefixOneRule!931 (LexerInterface!3001 Rule!6544 List!19066) Option!3769)

(assert (=> b!1732089 (= lt!664701 (maxPrefixOneRule!931 thiss!24550 (rule!5354 (_1!10738 lt!664721)) lt!664722))))

(declare-fun size!15093 (List!19066) Int)

(assert (=> b!1732089 (= lt!664718 (size!15093 lt!664724))))

(assert (=> b!1732089 (= lt!664713 (apply!5177 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) (seqFromList!2346 lt!664724)))))

(declare-fun lt!664706 () Unit!32854)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!330 (LexerInterface!3001 List!19067 List!19066 List!19066 List!19066 Rule!6544) Unit!32854)

(assert (=> b!1732089 (= lt!664706 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!330 thiss!24550 rules!3447 lt!664724 lt!664722 (_2!10738 lt!664721) (rule!5354 (_1!10738 lt!664721))))))

(assert (=> b!1732090 (= e!1108172 (and tp!493822 tp!493821))))

(declare-fun b!1732091 () Bool)

(declare-fun rulesValidInductive!1123 (LexerInterface!3001 List!19067) Bool)

(assert (=> b!1732091 (= e!1108163 (rulesValidInductive!1123 thiss!24550 rules!3447))))

(assert (=> b!1732091 (isPrefix!1613 lt!664719 lt!664724)))

(declare-fun lt!664727 () Unit!32854)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!88 (List!19066 List!19066 List!19066) Unit!32854)

(assert (=> b!1732091 (= lt!664727 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!88 lt!664724 lt!664719 lt!664722))))

(declare-fun b!1732092 () Bool)

(declare-fun res!778006 () Bool)

(assert (=> b!1732092 (=> res!778006 e!1108178)))

(declare-fun isEmpty!11952 (List!19066) Bool)

(assert (=> b!1732092 (= res!778006 (isEmpty!11952 suffix!1421))))

(declare-fun b!1732093 () Bool)

(declare-fun res!778022 () Bool)

(assert (=> b!1732093 (=> (not res!778022) (not e!1108162))))

(declare-fun rulesInvariant!2670 (LexerInterface!3001 List!19067) Bool)

(assert (=> b!1732093 (= res!778022 (rulesInvariant!2670 thiss!24550 rules!3447))))

(declare-fun b!1732094 () Bool)

(declare-fun res!778010 () Bool)

(assert (=> b!1732094 (=> (not res!778010) (not e!1108157))))

(declare-fun lt!664709 () tuple2!18672)

(assert (=> b!1732094 (= res!778010 (isEmpty!11952 (_2!10738 lt!664709)))))

(declare-fun b!1732095 () Bool)

(declare-fun tp_is_empty!7643 () Bool)

(declare-fun tp!493823 () Bool)

(assert (=> b!1732095 (= e!1108159 (and tp_is_empty!7643 tp!493823))))

(assert (=> b!1732096 (= e!1108158 e!1108179)))

(declare-fun res!778013 () Bool)

(assert (=> b!1732096 (=> res!778013 e!1108179)))

(declare-fun Forall!747 (Int) Bool)

(assert (=> b!1732096 (= res!778013 (not (Forall!747 lambda!69395)))))

(declare-fun lt!664698 () Unit!32854)

(declare-fun lemmaInv!579 (TokenValueInjection!6584) Unit!32854)

(assert (=> b!1732096 (= lt!664698 (lemmaInv!579 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))))

(declare-fun b!1732097 () Bool)

(assert (=> b!1732097 (= e!1108171 e!1108157)))

(declare-fun res!778014 () Bool)

(assert (=> b!1732097 (=> (not res!778014) (not e!1108157))))

(assert (=> b!1732097 (= res!778014 (= (_1!10738 lt!664709) token!523))))

(assert (=> b!1732097 (= lt!664709 (get!5673 lt!664708))))

(declare-fun b!1732098 () Bool)

(declare-fun res!778007 () Bool)

(assert (=> b!1732098 (=> (not res!778007) (not e!1108162))))

(declare-fun contains!3394 (List!19067 Rule!6544) Bool)

(assert (=> b!1732098 (= res!778007 (contains!3394 rules!3447 rule!422))))

(assert (= (and start!170316 res!778001) b!1732084))

(assert (= (and b!1732084 res!778016) b!1732093))

(assert (= (and b!1732093 res!778022) b!1732098))

(assert (= (and b!1732098 res!778007) b!1732083))

(assert (= (and b!1732083 res!778019) b!1732097))

(assert (= (and b!1732097 res!778014) b!1732094))

(assert (= (and b!1732094 res!778010) b!1732073))

(assert (= (and b!1732073 res!778009) b!1732082))

(assert (= (and b!1732082 (not res!778002)) b!1732092))

(assert (= (and b!1732092 (not res!778006)) b!1732071))

(assert (= (and b!1732071 (not res!778012)) b!1732075))

(assert (= (and b!1732075 res!778008) b!1732072))

(assert (= (and b!1732072 res!778011) b!1732086))

(assert (= (and b!1732075 (not res!778020)) b!1732070))

(assert (= (and b!1732070 (not res!778018)) b!1732096))

(assert (= (and b!1732096 (not res!778013)) b!1732078))

(assert (= (and b!1732078 (not res!778023)) b!1732079))

(assert (= (and b!1732079 (not res!778017)) b!1732085))

(assert (= (and b!1732085 (not res!778005)) b!1732089))

(assert (= (and b!1732089 (not res!778021)) b!1732069))

(assert (= (and b!1732069 (not res!778015)) b!1732087))

(assert (= (and b!1732087 (not res!778004)) b!1732074))

(assert (= (and b!1732074 (not res!778003)) b!1732091))

(assert (= (and start!170316 (is-Cons!18996 suffix!1421)) b!1732095))

(assert (= b!1732088 b!1732077))

(assert (= start!170316 b!1732088))

(assert (= b!1732068 b!1732076))

(assert (= b!1732081 b!1732068))

(assert (= start!170316 b!1732081))

(assert (= b!1732067 b!1732090))

(assert (= b!1732080 b!1732067))

(assert (= (and start!170316 (is-Cons!18997 rules!3447)) b!1732080))

(declare-fun b_lambda!55293 () Bool)

(assert (=> (not b_lambda!55293) (not b!1732078)))

(declare-fun tb!103191 () Bool)

(declare-fun t!160821 () Bool)

(assert (=> (and b!1732090 (= (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160821) tb!103191))

(declare-fun tp!493831 () Bool)

(declare-fun b!1732114 () Bool)

(declare-fun e!1108194 () Bool)

(declare-fun inv!24577 (Conc!6318) Bool)

(assert (=> b!1732114 (= e!1108194 (and (inv!24577 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))) tp!493831))))

(declare-fun result!124078 () Bool)

(declare-fun inv!24578 (BalanceConc!12580) Bool)

(assert (=> tb!103191 (= result!124078 (and (inv!24578 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))) e!1108194))))

(assert (= tb!103191 b!1732114))

(declare-fun m!2140581 () Bool)

(assert (=> b!1732114 m!2140581))

(declare-fun m!2140583 () Bool)

(assert (=> tb!103191 m!2140583))

(assert (=> b!1732078 t!160821))

(declare-fun b_and!127805 () Bool)

(assert (= b_and!127795 (and (=> t!160821 result!124078) b_and!127805)))

(declare-fun t!160823 () Bool)

(declare-fun tb!103193 () Bool)

(assert (=> (and b!1732076 (= (toChars!4738 (transformation!3372 (rule!5354 token!523))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160823) tb!103193))

(declare-fun result!124082 () Bool)

(assert (= result!124082 result!124078))

(assert (=> b!1732078 t!160823))

(declare-fun b_and!127807 () Bool)

(assert (= b_and!127799 (and (=> t!160823 result!124082) b_and!127807)))

(declare-fun t!160825 () Bool)

(declare-fun tb!103195 () Bool)

(assert (=> (and b!1732077 (= (toChars!4738 (transformation!3372 rule!422)) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160825) tb!103195))

(declare-fun result!124084 () Bool)

(assert (= result!124084 result!124078))

(assert (=> b!1732078 t!160825))

(declare-fun b_and!127809 () Bool)

(assert (= b_and!127803 (and (=> t!160825 result!124084) b_and!127809)))

(declare-fun b_lambda!55295 () Bool)

(assert (=> (not b_lambda!55295) (not b!1732078)))

(declare-fun t!160827 () Bool)

(declare-fun tb!103197 () Bool)

(assert (=> (and b!1732090 (= (toValue!4879 (transformation!3372 (h!24398 rules!3447))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160827) tb!103197))

(declare-fun result!124086 () Bool)

(assert (=> tb!103197 (= result!124086 (inv!21 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))

(declare-fun m!2140585 () Bool)

(assert (=> tb!103197 m!2140585))

(assert (=> b!1732078 t!160827))

(declare-fun b_and!127811 () Bool)

(assert (= b_and!127793 (and (=> t!160827 result!124086) b_and!127811)))

(declare-fun tb!103199 () Bool)

(declare-fun t!160829 () Bool)

(assert (=> (and b!1732076 (= (toValue!4879 (transformation!3372 (rule!5354 token!523))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160829) tb!103199))

(declare-fun result!124090 () Bool)

(assert (= result!124090 result!124086))

(assert (=> b!1732078 t!160829))

(declare-fun b_and!127813 () Bool)

(assert (= b_and!127797 (and (=> t!160829 result!124090) b_and!127813)))

(declare-fun t!160831 () Bool)

(declare-fun tb!103201 () Bool)

(assert (=> (and b!1732077 (= (toValue!4879 (transformation!3372 rule!422)) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160831) tb!103201))

(declare-fun result!124092 () Bool)

(assert (= result!124092 result!124086))

(assert (=> b!1732078 t!160831))

(declare-fun b_and!127815 () Bool)

(assert (= b_and!127801 (and (=> t!160831 result!124092) b_and!127815)))

(declare-fun b_lambda!55297 () Bool)

(assert (=> (not b_lambda!55297) (not b!1732079)))

(declare-fun t!160833 () Bool)

(declare-fun tb!103203 () Bool)

(assert (=> (and b!1732090 (= (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160833) tb!103203))

(declare-fun b!1732117 () Bool)

(declare-fun e!1108198 () Bool)

(declare-fun tp!493832 () Bool)

(assert (=> b!1732117 (= e!1108198 (and (inv!24577 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))) tp!493832))))

(declare-fun result!124094 () Bool)

(assert (=> tb!103203 (= result!124094 (and (inv!24578 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))) e!1108198))))

(assert (= tb!103203 b!1732117))

(declare-fun m!2140587 () Bool)

(assert (=> b!1732117 m!2140587))

(declare-fun m!2140589 () Bool)

(assert (=> tb!103203 m!2140589))

(assert (=> b!1732079 t!160833))

(declare-fun b_and!127817 () Bool)

(assert (= b_and!127805 (and (=> t!160833 result!124094) b_and!127817)))

(declare-fun t!160835 () Bool)

(declare-fun tb!103205 () Bool)

(assert (=> (and b!1732076 (= (toChars!4738 (transformation!3372 (rule!5354 token!523))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160835) tb!103205))

(declare-fun result!124096 () Bool)

(assert (= result!124096 result!124094))

(assert (=> b!1732079 t!160835))

(declare-fun b_and!127819 () Bool)

(assert (= b_and!127807 (and (=> t!160835 result!124096) b_and!127819)))

(declare-fun t!160837 () Bool)

(declare-fun tb!103207 () Bool)

(assert (=> (and b!1732077 (= (toChars!4738 (transformation!3372 rule!422)) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160837) tb!103207))

(declare-fun result!124098 () Bool)

(assert (= result!124098 result!124094))

(assert (=> b!1732079 t!160837))

(declare-fun b_and!127821 () Bool)

(assert (= b_and!127809 (and (=> t!160837 result!124098) b_and!127821)))

(declare-fun m!2140591 () Bool)

(assert (=> b!1732094 m!2140591))

(declare-fun m!2140593 () Bool)

(assert (=> b!1732083 m!2140593))

(declare-fun m!2140595 () Bool)

(assert (=> b!1732083 m!2140595))

(declare-fun m!2140597 () Bool)

(assert (=> b!1732083 m!2140597))

(declare-fun m!2140599 () Bool)

(assert (=> b!1732083 m!2140599))

(declare-fun m!2140601 () Bool)

(assert (=> b!1732085 m!2140601))

(declare-fun m!2140603 () Bool)

(assert (=> b!1732085 m!2140603))

(declare-fun m!2140605 () Bool)

(assert (=> b!1732085 m!2140605))

(assert (=> b!1732085 m!2140603))

(declare-fun m!2140607 () Bool)

(assert (=> b!1732085 m!2140607))

(declare-fun m!2140609 () Bool)

(assert (=> b!1732085 m!2140609))

(declare-fun m!2140611 () Bool)

(assert (=> b!1732069 m!2140611))

(declare-fun m!2140613 () Bool)

(assert (=> b!1732069 m!2140613))

(declare-fun m!2140615 () Bool)

(assert (=> b!1732069 m!2140615))

(declare-fun m!2140617 () Bool)

(assert (=> b!1732075 m!2140617))

(declare-fun m!2140619 () Bool)

(assert (=> b!1732075 m!2140619))

(declare-fun m!2140621 () Bool)

(assert (=> b!1732075 m!2140621))

(declare-fun m!2140623 () Bool)

(assert (=> b!1732075 m!2140623))

(declare-fun m!2140625 () Bool)

(assert (=> b!1732075 m!2140625))

(declare-fun m!2140627 () Bool)

(assert (=> b!1732075 m!2140627))

(declare-fun m!2140629 () Bool)

(assert (=> b!1732075 m!2140629))

(declare-fun m!2140631 () Bool)

(assert (=> b!1732075 m!2140631))

(declare-fun m!2140633 () Bool)

(assert (=> b!1732075 m!2140633))

(declare-fun m!2140635 () Bool)

(assert (=> b!1732075 m!2140635))

(assert (=> b!1732075 m!2140623))

(declare-fun m!2140637 () Bool)

(assert (=> b!1732075 m!2140637))

(declare-fun m!2140639 () Bool)

(assert (=> b!1732075 m!2140639))

(declare-fun m!2140641 () Bool)

(assert (=> b!1732075 m!2140641))

(declare-fun m!2140643 () Bool)

(assert (=> b!1732075 m!2140643))

(declare-fun m!2140645 () Bool)

(assert (=> b!1732075 m!2140645))

(assert (=> b!1732072 m!2140631))

(assert (=> b!1732072 m!2140631))

(declare-fun m!2140647 () Bool)

(assert (=> b!1732072 m!2140647))

(assert (=> b!1732072 m!2140647))

(declare-fun m!2140649 () Bool)

(assert (=> b!1732072 m!2140649))

(declare-fun m!2140651 () Bool)

(assert (=> b!1732072 m!2140651))

(declare-fun m!2140653 () Bool)

(assert (=> b!1732067 m!2140653))

(declare-fun m!2140655 () Bool)

(assert (=> b!1732067 m!2140655))

(declare-fun m!2140657 () Bool)

(assert (=> b!1732071 m!2140657))

(declare-fun m!2140659 () Bool)

(assert (=> b!1732071 m!2140659))

(declare-fun m!2140661 () Bool)

(assert (=> b!1732071 m!2140661))

(declare-fun m!2140663 () Bool)

(assert (=> b!1732071 m!2140663))

(declare-fun m!2140665 () Bool)

(assert (=> b!1732097 m!2140665))

(declare-fun m!2140667 () Bool)

(assert (=> b!1732093 m!2140667))

(declare-fun m!2140669 () Bool)

(assert (=> b!1732091 m!2140669))

(declare-fun m!2140671 () Bool)

(assert (=> b!1732091 m!2140671))

(declare-fun m!2140673 () Bool)

(assert (=> b!1732091 m!2140673))

(declare-fun m!2140675 () Bool)

(assert (=> b!1732068 m!2140675))

(declare-fun m!2140677 () Bool)

(assert (=> b!1732068 m!2140677))

(declare-fun m!2140679 () Bool)

(assert (=> b!1732092 m!2140679))

(declare-fun m!2140681 () Bool)

(assert (=> b!1732081 m!2140681))

(declare-fun m!2140683 () Bool)

(assert (=> b!1732070 m!2140683))

(declare-fun m!2140685 () Bool)

(assert (=> b!1732087 m!2140685))

(declare-fun m!2140687 () Bool)

(assert (=> b!1732087 m!2140687))

(declare-fun m!2140689 () Bool)

(assert (=> b!1732087 m!2140689))

(declare-fun m!2140691 () Bool)

(assert (=> b!1732087 m!2140691))

(declare-fun m!2140693 () Bool)

(assert (=> b!1732082 m!2140693))

(declare-fun m!2140695 () Bool)

(assert (=> b!1732082 m!2140695))

(declare-fun m!2140697 () Bool)

(assert (=> b!1732082 m!2140697))

(declare-fun m!2140699 () Bool)

(assert (=> start!170316 m!2140699))

(declare-fun m!2140701 () Bool)

(assert (=> b!1732096 m!2140701))

(declare-fun m!2140703 () Bool)

(assert (=> b!1732096 m!2140703))

(declare-fun m!2140705 () Bool)

(assert (=> b!1732088 m!2140705))

(declare-fun m!2140707 () Bool)

(assert (=> b!1732088 m!2140707))

(declare-fun m!2140709 () Bool)

(assert (=> b!1732074 m!2140709))

(declare-fun m!2140711 () Bool)

(assert (=> b!1732074 m!2140711))

(declare-fun m!2140713 () Bool)

(assert (=> b!1732074 m!2140713))

(declare-fun m!2140715 () Bool)

(assert (=> b!1732074 m!2140715))

(declare-fun m!2140717 () Bool)

(assert (=> b!1732074 m!2140717))

(assert (=> b!1732074 m!2140711))

(declare-fun m!2140719 () Bool)

(assert (=> b!1732078 m!2140719))

(assert (=> b!1732078 m!2140719))

(declare-fun m!2140721 () Bool)

(assert (=> b!1732078 m!2140721))

(assert (=> b!1732078 m!2140721))

(declare-fun m!2140723 () Bool)

(assert (=> b!1732078 m!2140723))

(declare-fun m!2140725 () Bool)

(assert (=> b!1732078 m!2140725))

(declare-fun m!2140727 () Bool)

(assert (=> b!1732089 m!2140727))

(declare-fun m!2140729 () Bool)

(assert (=> b!1732089 m!2140729))

(declare-fun m!2140731 () Bool)

(assert (=> b!1732089 m!2140731))

(declare-fun m!2140733 () Bool)

(assert (=> b!1732089 m!2140733))

(declare-fun m!2140735 () Bool)

(assert (=> b!1732089 m!2140735))

(assert (=> b!1732089 m!2140731))

(declare-fun m!2140737 () Bool)

(assert (=> b!1732089 m!2140737))

(declare-fun m!2140739 () Bool)

(assert (=> b!1732089 m!2140739))

(declare-fun m!2140741 () Bool)

(assert (=> b!1732079 m!2140741))

(declare-fun m!2140743 () Bool)

(assert (=> b!1732084 m!2140743))

(declare-fun m!2140745 () Bool)

(assert (=> b!1732098 m!2140745))

(push 1)

(assert (not start!170316))

(assert (not b!1732080))

(assert (not b!1732093))

(assert b_and!127815)

(assert b_and!127817)

(assert (not b_lambda!55295))

(assert (not b!1732072))

(assert (not b!1732067))

(assert (not b_next!48105))

(assert (not b_next!48111))

(assert tp_is_empty!7643)

(assert b_and!127811)

(assert (not b!1732071))

(assert (not tb!103197))

(assert (not b!1732070))

(assert b_and!127819)

(assert (not b!1732089))

(assert (not b!1732096))

(assert (not b!1732114))

(assert (not tb!103203))

(assert (not b_lambda!55293))

(assert (not b!1732082))

(assert (not b_next!48103))

(assert b_and!127813)

(assert (not b!1732088))

(assert (not b!1732069))

(assert (not b!1732092))

(assert (not b_next!48109))

(assert (not b!1732097))

(assert (not b!1732068))

(assert (not b!1732084))

(assert (not b!1732095))

(assert (not b!1732078))

(assert (not b_next!48113))

(assert (not b!1732087))

(assert (not b!1732091))

(assert (not b_lambda!55297))

(assert (not b!1732085))

(assert b_and!127821)

(assert (not b!1732081))

(assert (not b!1732083))

(assert (not b!1732074))

(assert (not b!1732098))

(assert (not b_next!48107))

(assert (not b!1732075))

(assert (not b!1732117))

(assert (not b!1732094))

(assert (not tb!103191))

(check-sat)

(pop 1)

(push 1)

(assert b_and!127811)

(assert b_and!127819)

(assert b_and!127815)

(assert b_and!127817)

(assert (not b_next!48109))

(assert (not b_next!48113))

(assert b_and!127821)

(assert (not b_next!48105))

(assert (not b_next!48111))

(assert (not b_next!48107))

(assert (not b_next!48103))

(assert b_and!127813)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!530225 () Bool)

(declare-fun lt!664843 () Int)

(assert (=> d!530225 (= lt!664843 (size!15093 (list!7681 lt!664700)))))

(declare-fun size!15097 (Conc!6318) Int)

(assert (=> d!530225 (= lt!664843 (size!15097 (c!282926 lt!664700)))))

(assert (=> d!530225 (= (size!15092 lt!664700) lt!664843)))

(declare-fun bs!402672 () Bool)

(assert (= bs!402672 d!530225))

(assert (=> bs!402672 m!2140597))

(assert (=> bs!402672 m!2140597))

(declare-fun m!2140913 () Bool)

(assert (=> bs!402672 m!2140913))

(declare-fun m!2140915 () Bool)

(assert (=> bs!402672 m!2140915))

(assert (=> b!1732069 d!530225))

(declare-fun bm!109942 () Bool)

(declare-fun call!109947 () Bool)

(assert (=> bm!109942 (= call!109947 (isEmpty!11952 lt!664732))))

(declare-fun d!530227 () Bool)

(declare-fun e!1108318 () Bool)

(assert (=> d!530227 e!1108318))

(declare-fun c!282936 () Bool)

(assert (=> d!530227 (= c!282936 (is-EmptyExpr!4700 lt!664705))))

(declare-fun lt!664846 () Bool)

(declare-fun e!1108316 () Bool)

(assert (=> d!530227 (= lt!664846 e!1108316)))

(declare-fun c!282937 () Bool)

(assert (=> d!530227 (= c!282937 (isEmpty!11952 lt!664732))))

(declare-fun validRegex!1897 (Regex!4700) Bool)

(assert (=> d!530227 (validRegex!1897 lt!664705)))

(assert (=> d!530227 (= (matchR!2174 lt!664705 lt!664732) lt!664846)))

(declare-fun b!1732261 () Bool)

(declare-fun e!1108315 () Bool)

(assert (=> b!1732261 (= e!1108318 e!1108315)))

(declare-fun c!282938 () Bool)

(assert (=> b!1732261 (= c!282938 (is-EmptyLang!4700 lt!664705))))

(declare-fun b!1732262 () Bool)

(declare-fun res!778114 () Bool)

(declare-fun e!1108319 () Bool)

(assert (=> b!1732262 (=> res!778114 e!1108319)))

(declare-fun tail!2588 (List!19066) List!19066)

(assert (=> b!1732262 (= res!778114 (not (isEmpty!11952 (tail!2588 lt!664732))))))

(declare-fun b!1732263 () Bool)

(declare-fun res!778112 () Bool)

(declare-fun e!1108313 () Bool)

(assert (=> b!1732263 (=> (not res!778112) (not e!1108313))))

(assert (=> b!1732263 (= res!778112 (not call!109947))))

(declare-fun b!1732264 () Bool)

(declare-fun e!1108317 () Bool)

(assert (=> b!1732264 (= e!1108317 e!1108319)))

(declare-fun res!778113 () Bool)

(assert (=> b!1732264 (=> res!778113 e!1108319)))

(assert (=> b!1732264 (= res!778113 call!109947)))

(declare-fun b!1732265 () Bool)

(assert (=> b!1732265 (= e!1108313 (= (head!3943 lt!664732) (c!282925 lt!664705)))))

(declare-fun b!1732266 () Bool)

(assert (=> b!1732266 (= e!1108315 (not lt!664846))))

(declare-fun b!1732267 () Bool)

(declare-fun nullable!1423 (Regex!4700) Bool)

(assert (=> b!1732267 (= e!1108316 (nullable!1423 lt!664705))))

(declare-fun b!1732268 () Bool)

(declare-fun res!778116 () Bool)

(declare-fun e!1108314 () Bool)

(assert (=> b!1732268 (=> res!778116 e!1108314)))

(assert (=> b!1732268 (= res!778116 (not (is-ElementMatch!4700 lt!664705)))))

(assert (=> b!1732268 (= e!1108315 e!1108314)))

(declare-fun b!1732269 () Bool)

(assert (=> b!1732269 (= e!1108319 (not (= (head!3943 lt!664732) (c!282925 lt!664705))))))

(declare-fun b!1732270 () Bool)

(declare-fun res!778109 () Bool)

(assert (=> b!1732270 (=> res!778109 e!1108314)))

(assert (=> b!1732270 (= res!778109 e!1108313)))

(declare-fun res!778115 () Bool)

(assert (=> b!1732270 (=> (not res!778115) (not e!1108313))))

(assert (=> b!1732270 (= res!778115 lt!664846)))

(declare-fun b!1732271 () Bool)

(declare-fun res!778111 () Bool)

(assert (=> b!1732271 (=> (not res!778111) (not e!1108313))))

(assert (=> b!1732271 (= res!778111 (isEmpty!11952 (tail!2588 lt!664732)))))

(declare-fun b!1732272 () Bool)

(assert (=> b!1732272 (= e!1108318 (= lt!664846 call!109947))))

(declare-fun b!1732273 () Bool)

(declare-fun derivativeStep!1191 (Regex!4700 C!9574) Regex!4700)

(assert (=> b!1732273 (= e!1108316 (matchR!2174 (derivativeStep!1191 lt!664705 (head!3943 lt!664732)) (tail!2588 lt!664732)))))

(declare-fun b!1732274 () Bool)

(assert (=> b!1732274 (= e!1108314 e!1108317)))

(declare-fun res!778110 () Bool)

(assert (=> b!1732274 (=> (not res!778110) (not e!1108317))))

(assert (=> b!1732274 (= res!778110 (not lt!664846))))

(assert (= (and d!530227 c!282937) b!1732267))

(assert (= (and d!530227 (not c!282937)) b!1732273))

(assert (= (and d!530227 c!282936) b!1732272))

(assert (= (and d!530227 (not c!282936)) b!1732261))

(assert (= (and b!1732261 c!282938) b!1732266))

(assert (= (and b!1732261 (not c!282938)) b!1732268))

(assert (= (and b!1732268 (not res!778116)) b!1732270))

(assert (= (and b!1732270 res!778115) b!1732263))

(assert (= (and b!1732263 res!778112) b!1732271))

(assert (= (and b!1732271 res!778111) b!1732265))

(assert (= (and b!1732270 (not res!778109)) b!1732274))

(assert (= (and b!1732274 res!778110) b!1732264))

(assert (= (and b!1732264 (not res!778113)) b!1732262))

(assert (= (and b!1732262 (not res!778114)) b!1732269))

(assert (= (or b!1732272 b!1732263 b!1732264) bm!109942))

(declare-fun m!2140917 () Bool)

(assert (=> b!1732269 m!2140917))

(declare-fun m!2140919 () Bool)

(assert (=> b!1732271 m!2140919))

(assert (=> b!1732271 m!2140919))

(declare-fun m!2140921 () Bool)

(assert (=> b!1732271 m!2140921))

(assert (=> b!1732273 m!2140917))

(assert (=> b!1732273 m!2140917))

(declare-fun m!2140923 () Bool)

(assert (=> b!1732273 m!2140923))

(assert (=> b!1732273 m!2140919))

(assert (=> b!1732273 m!2140923))

(assert (=> b!1732273 m!2140919))

(declare-fun m!2140925 () Bool)

(assert (=> b!1732273 m!2140925))

(declare-fun m!2140927 () Bool)

(assert (=> bm!109942 m!2140927))

(assert (=> b!1732265 m!2140917))

(assert (=> d!530227 m!2140927))

(declare-fun m!2140929 () Bool)

(assert (=> d!530227 m!2140929))

(assert (=> b!1732262 m!2140919))

(assert (=> b!1732262 m!2140919))

(assert (=> b!1732262 m!2140921))

(declare-fun m!2140931 () Bool)

(assert (=> b!1732267 m!2140931))

(assert (=> b!1732069 d!530227))

(declare-fun d!530229 () Bool)

(assert (=> d!530229 (matchR!2174 (rulesRegex!730 thiss!24550 rules!3447) (list!7681 (charsOf!2021 token!523)))))

(declare-fun lt!664849 () Unit!32854)

(declare-fun choose!10597 (LexerInterface!3001 List!19067 List!19066 Token!6310 Rule!6544 List!19066) Unit!32854)

(assert (=> d!530229 (= lt!664849 (choose!10597 thiss!24550 rules!3447 lt!664732 token!523 rule!422 Nil!18996))))

(assert (=> d!530229 (not (isEmpty!11951 rules!3447))))

(assert (=> d!530229 (= (lemmaMaxPrefixThenMatchesRulesRegex!121 thiss!24550 rules!3447 lt!664732 token!523 rule!422 Nil!18996) lt!664849)))

(declare-fun bs!402673 () Bool)

(assert (= bs!402673 d!530229))

(assert (=> bs!402673 m!2140599))

(declare-fun m!2140933 () Bool)

(assert (=> bs!402673 m!2140933))

(declare-fun m!2140935 () Bool)

(assert (=> bs!402673 m!2140935))

(assert (=> bs!402673 m!2140663))

(assert (=> bs!402673 m!2140663))

(assert (=> bs!402673 m!2140933))

(declare-fun m!2140937 () Bool)

(assert (=> bs!402673 m!2140937))

(assert (=> bs!402673 m!2140599))

(assert (=> bs!402673 m!2140743))

(assert (=> b!1732069 d!530229))

(declare-fun d!530231 () Bool)

(assert (=> d!530231 true))

(declare-fun lt!664852 () Bool)

(declare-fun lambda!69401 () Int)

(declare-fun forall!4257 (List!19067 Int) Bool)

(assert (=> d!530231 (= lt!664852 (forall!4257 rules!3447 lambda!69401))))

(declare-fun e!1108324 () Bool)

(assert (=> d!530231 (= lt!664852 e!1108324)))

(declare-fun res!778121 () Bool)

(assert (=> d!530231 (=> res!778121 e!1108324)))

(assert (=> d!530231 (= res!778121 (not (is-Cons!18997 rules!3447)))))

(assert (=> d!530231 (= (rulesValidInductive!1123 thiss!24550 rules!3447) lt!664852)))

(declare-fun b!1732279 () Bool)

(declare-fun e!1108325 () Bool)

(assert (=> b!1732279 (= e!1108324 e!1108325)))

(declare-fun res!778122 () Bool)

(assert (=> b!1732279 (=> (not res!778122) (not e!1108325))))

(assert (=> b!1732279 (= res!778122 (ruleValid!871 thiss!24550 (h!24398 rules!3447)))))

(declare-fun b!1732280 () Bool)

(assert (=> b!1732280 (= e!1108325 (rulesValidInductive!1123 thiss!24550 (t!160840 rules!3447)))))

(assert (= (and d!530231 (not res!778121)) b!1732279))

(assert (= (and b!1732279 res!778122) b!1732280))

(declare-fun m!2140939 () Bool)

(assert (=> d!530231 m!2140939))

(declare-fun m!2140941 () Bool)

(assert (=> b!1732279 m!2140941))

(declare-fun m!2140943 () Bool)

(assert (=> b!1732280 m!2140943))

(assert (=> b!1732091 d!530231))

(declare-fun b!1732291 () Bool)

(declare-fun e!1108332 () Bool)

(declare-fun e!1108334 () Bool)

(assert (=> b!1732291 (= e!1108332 e!1108334)))

(declare-fun res!778133 () Bool)

(assert (=> b!1732291 (=> (not res!778133) (not e!1108334))))

(assert (=> b!1732291 (= res!778133 (not (is-Nil!18996 lt!664724)))))

(declare-fun b!1732294 () Bool)

(declare-fun e!1108333 () Bool)

(assert (=> b!1732294 (= e!1108333 (>= (size!15093 lt!664724) (size!15093 lt!664719)))))

(declare-fun d!530233 () Bool)

(assert (=> d!530233 e!1108333))

(declare-fun res!778132 () Bool)

(assert (=> d!530233 (=> res!778132 e!1108333)))

(declare-fun lt!664855 () Bool)

(assert (=> d!530233 (= res!778132 (not lt!664855))))

(assert (=> d!530233 (= lt!664855 e!1108332)))

(declare-fun res!778131 () Bool)

(assert (=> d!530233 (=> res!778131 e!1108332)))

(assert (=> d!530233 (= res!778131 (is-Nil!18996 lt!664719))))

(assert (=> d!530233 (= (isPrefix!1613 lt!664719 lt!664724) lt!664855)))

(declare-fun b!1732293 () Bool)

(assert (=> b!1732293 (= e!1108334 (isPrefix!1613 (tail!2588 lt!664719) (tail!2588 lt!664724)))))

(declare-fun b!1732292 () Bool)

(declare-fun res!778134 () Bool)

(assert (=> b!1732292 (=> (not res!778134) (not e!1108334))))

(assert (=> b!1732292 (= res!778134 (= (head!3943 lt!664719) (head!3943 lt!664724)))))

(assert (= (and d!530233 (not res!778131)) b!1732291))

(assert (= (and b!1732291 res!778133) b!1732292))

(assert (= (and b!1732292 res!778134) b!1732293))

(assert (= (and d!530233 (not res!778132)) b!1732294))

(assert (=> b!1732294 m!2140737))

(declare-fun m!2140945 () Bool)

(assert (=> b!1732294 m!2140945))

(declare-fun m!2140947 () Bool)

(assert (=> b!1732293 m!2140947))

(declare-fun m!2140949 () Bool)

(assert (=> b!1732293 m!2140949))

(assert (=> b!1732293 m!2140947))

(assert (=> b!1732293 m!2140949))

(declare-fun m!2140951 () Bool)

(assert (=> b!1732293 m!2140951))

(declare-fun m!2140953 () Bool)

(assert (=> b!1732292 m!2140953))

(declare-fun m!2140955 () Bool)

(assert (=> b!1732292 m!2140955))

(assert (=> b!1732091 d!530233))

(declare-fun d!530235 () Bool)

(assert (=> d!530235 (isPrefix!1613 lt!664719 lt!664724)))

(declare-fun lt!664858 () Unit!32854)

(declare-fun choose!10598 (List!19066 List!19066 List!19066) Unit!32854)

(assert (=> d!530235 (= lt!664858 (choose!10598 lt!664724 lt!664719 lt!664722))))

(assert (=> d!530235 (isPrefix!1613 lt!664724 lt!664722)))

(assert (=> d!530235 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!88 lt!664724 lt!664719 lt!664722) lt!664858)))

(declare-fun bs!402674 () Bool)

(assert (= bs!402674 d!530235))

(assert (=> bs!402674 m!2140671))

(declare-fun m!2140957 () Bool)

(assert (=> bs!402674 m!2140957))

(assert (=> bs!402674 m!2140621))

(assert (=> b!1732091 d!530235))

(declare-fun bm!109943 () Bool)

(declare-fun call!109948 () Bool)

(assert (=> bm!109943 (= call!109948 (isEmpty!11952 lt!664724))))

(declare-fun d!530237 () Bool)

(declare-fun e!1108340 () Bool)

(assert (=> d!530237 e!1108340))

(declare-fun c!282939 () Bool)

(assert (=> d!530237 (= c!282939 (is-EmptyExpr!4700 (regex!3372 (rule!5354 (_1!10738 lt!664721)))))))

(declare-fun lt!664859 () Bool)

(declare-fun e!1108338 () Bool)

(assert (=> d!530237 (= lt!664859 e!1108338)))

(declare-fun c!282940 () Bool)

(assert (=> d!530237 (= c!282940 (isEmpty!11952 lt!664724))))

(assert (=> d!530237 (validRegex!1897 (regex!3372 (rule!5354 (_1!10738 lt!664721))))))

(assert (=> d!530237 (= (matchR!2174 (regex!3372 (rule!5354 (_1!10738 lt!664721))) lt!664724) lt!664859)))

(declare-fun b!1732295 () Bool)

(declare-fun e!1108337 () Bool)

(assert (=> b!1732295 (= e!1108340 e!1108337)))

(declare-fun c!282941 () Bool)

(assert (=> b!1732295 (= c!282941 (is-EmptyLang!4700 (regex!3372 (rule!5354 (_1!10738 lt!664721)))))))

(declare-fun b!1732296 () Bool)

(declare-fun res!778140 () Bool)

(declare-fun e!1108341 () Bool)

(assert (=> b!1732296 (=> res!778140 e!1108341)))

(assert (=> b!1732296 (= res!778140 (not (isEmpty!11952 (tail!2588 lt!664724))))))

(declare-fun b!1732297 () Bool)

(declare-fun res!778138 () Bool)

(declare-fun e!1108335 () Bool)

(assert (=> b!1732297 (=> (not res!778138) (not e!1108335))))

(assert (=> b!1732297 (= res!778138 (not call!109948))))

(declare-fun b!1732298 () Bool)

(declare-fun e!1108339 () Bool)

(assert (=> b!1732298 (= e!1108339 e!1108341)))

(declare-fun res!778139 () Bool)

(assert (=> b!1732298 (=> res!778139 e!1108341)))

(assert (=> b!1732298 (= res!778139 call!109948)))

(declare-fun b!1732299 () Bool)

(assert (=> b!1732299 (= e!1108335 (= (head!3943 lt!664724) (c!282925 (regex!3372 (rule!5354 (_1!10738 lt!664721))))))))

(declare-fun b!1732300 () Bool)

(assert (=> b!1732300 (= e!1108337 (not lt!664859))))

(declare-fun b!1732301 () Bool)

(assert (=> b!1732301 (= e!1108338 (nullable!1423 (regex!3372 (rule!5354 (_1!10738 lt!664721)))))))

(declare-fun b!1732302 () Bool)

(declare-fun res!778142 () Bool)

(declare-fun e!1108336 () Bool)

(assert (=> b!1732302 (=> res!778142 e!1108336)))

(assert (=> b!1732302 (= res!778142 (not (is-ElementMatch!4700 (regex!3372 (rule!5354 (_1!10738 lt!664721))))))))

(assert (=> b!1732302 (= e!1108337 e!1108336)))

(declare-fun b!1732303 () Bool)

(assert (=> b!1732303 (= e!1108341 (not (= (head!3943 lt!664724) (c!282925 (regex!3372 (rule!5354 (_1!10738 lt!664721)))))))))

(declare-fun b!1732304 () Bool)

(declare-fun res!778135 () Bool)

(assert (=> b!1732304 (=> res!778135 e!1108336)))

(assert (=> b!1732304 (= res!778135 e!1108335)))

(declare-fun res!778141 () Bool)

(assert (=> b!1732304 (=> (not res!778141) (not e!1108335))))

(assert (=> b!1732304 (= res!778141 lt!664859)))

(declare-fun b!1732305 () Bool)

(declare-fun res!778137 () Bool)

(assert (=> b!1732305 (=> (not res!778137) (not e!1108335))))

(assert (=> b!1732305 (= res!778137 (isEmpty!11952 (tail!2588 lt!664724)))))

(declare-fun b!1732306 () Bool)

(assert (=> b!1732306 (= e!1108340 (= lt!664859 call!109948))))

(declare-fun b!1732307 () Bool)

(assert (=> b!1732307 (= e!1108338 (matchR!2174 (derivativeStep!1191 (regex!3372 (rule!5354 (_1!10738 lt!664721))) (head!3943 lt!664724)) (tail!2588 lt!664724)))))

(declare-fun b!1732308 () Bool)

(assert (=> b!1732308 (= e!1108336 e!1108339)))

(declare-fun res!778136 () Bool)

(assert (=> b!1732308 (=> (not res!778136) (not e!1108339))))

(assert (=> b!1732308 (= res!778136 (not lt!664859))))

(assert (= (and d!530237 c!282940) b!1732301))

(assert (= (and d!530237 (not c!282940)) b!1732307))

(assert (= (and d!530237 c!282939) b!1732306))

(assert (= (and d!530237 (not c!282939)) b!1732295))

(assert (= (and b!1732295 c!282941) b!1732300))

(assert (= (and b!1732295 (not c!282941)) b!1732302))

(assert (= (and b!1732302 (not res!778142)) b!1732304))

(assert (= (and b!1732304 res!778141) b!1732297))

(assert (= (and b!1732297 res!778138) b!1732305))

(assert (= (and b!1732305 res!778137) b!1732299))

(assert (= (and b!1732304 (not res!778135)) b!1732308))

(assert (= (and b!1732308 res!778136) b!1732298))

(assert (= (and b!1732298 (not res!778139)) b!1732296))

(assert (= (and b!1732296 (not res!778140)) b!1732303))

(assert (= (or b!1732306 b!1732297 b!1732298) bm!109943))

(assert (=> b!1732303 m!2140955))

(assert (=> b!1732305 m!2140949))

(assert (=> b!1732305 m!2140949))

(declare-fun m!2140959 () Bool)

(assert (=> b!1732305 m!2140959))

(assert (=> b!1732307 m!2140955))

(assert (=> b!1732307 m!2140955))

(declare-fun m!2140961 () Bool)

(assert (=> b!1732307 m!2140961))

(assert (=> b!1732307 m!2140949))

(assert (=> b!1732307 m!2140961))

(assert (=> b!1732307 m!2140949))

(declare-fun m!2140963 () Bool)

(assert (=> b!1732307 m!2140963))

(declare-fun m!2140965 () Bool)

(assert (=> bm!109943 m!2140965))

(assert (=> b!1732299 m!2140955))

(assert (=> d!530237 m!2140965))

(declare-fun m!2140967 () Bool)

(assert (=> d!530237 m!2140967))

(assert (=> b!1732296 m!2140949))

(assert (=> b!1732296 m!2140949))

(assert (=> b!1732296 m!2140959))

(declare-fun m!2140969 () Bool)

(assert (=> b!1732301 m!2140969))

(assert (=> b!1732070 d!530237))

(declare-fun d!530239 () Bool)

(declare-fun c!282944 () Bool)

(assert (=> d!530239 (= c!282944 (is-Node!6318 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))))

(declare-fun e!1108346 () Bool)

(assert (=> d!530239 (= (inv!24577 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))) e!1108346)))

(declare-fun b!1732315 () Bool)

(declare-fun inv!24583 (Conc!6318) Bool)

(assert (=> b!1732315 (= e!1108346 (inv!24583 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))))

(declare-fun b!1732316 () Bool)

(declare-fun e!1108347 () Bool)

(assert (=> b!1732316 (= e!1108346 e!1108347)))

(declare-fun res!778145 () Bool)

(assert (=> b!1732316 (= res!778145 (not (is-Leaf!9225 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))))))

(assert (=> b!1732316 (=> res!778145 e!1108347)))

(declare-fun b!1732317 () Bool)

(declare-fun inv!24584 (Conc!6318) Bool)

(assert (=> b!1732317 (= e!1108347 (inv!24584 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))))

(assert (= (and d!530239 c!282944) b!1732315))

(assert (= (and d!530239 (not c!282944)) b!1732316))

(assert (= (and b!1732316 (not res!778145)) b!1732317))

(declare-fun m!2140971 () Bool)

(assert (=> b!1732315 m!2140971))

(declare-fun m!2140973 () Bool)

(assert (=> b!1732317 m!2140973))

(assert (=> b!1732114 d!530239))

(declare-fun d!530241 () Bool)

(declare-fun lt!664862 () Int)

(assert (=> d!530241 (>= lt!664862 0)))

(declare-fun e!1108350 () Int)

(assert (=> d!530241 (= lt!664862 e!1108350)))

(declare-fun c!282947 () Bool)

(assert (=> d!530241 (= c!282947 (is-Nil!18996 lt!664724))))

(assert (=> d!530241 (= (size!15093 lt!664724) lt!664862)))

(declare-fun b!1732322 () Bool)

(assert (=> b!1732322 (= e!1108350 0)))

(declare-fun b!1732323 () Bool)

(assert (=> b!1732323 (= e!1108350 (+ 1 (size!15093 (t!160839 lt!664724))))))

(assert (= (and d!530241 c!282947) b!1732322))

(assert (= (and d!530241 (not c!282947)) b!1732323))

(declare-fun m!2140975 () Bool)

(assert (=> b!1732323 m!2140975))

(assert (=> b!1732089 d!530241))

(declare-fun b!1732342 () Bool)

(declare-fun e!1108359 () Bool)

(declare-fun lt!664873 () Option!3769)

(assert (=> b!1732342 (= e!1108359 (= (size!15091 (_1!10738 (get!5673 lt!664873))) (size!15093 (originalCharacters!4186 (_1!10738 (get!5673 lt!664873))))))))

(declare-fun b!1732344 () Bool)

(declare-fun res!778163 () Bool)

(assert (=> b!1732344 (=> (not res!778163) (not e!1108359))))

(assert (=> b!1732344 (= res!778163 (= (rule!5354 (_1!10738 (get!5673 lt!664873))) (rule!5354 (_1!10738 lt!664721))))))

(declare-fun b!1732345 () Bool)

(declare-fun res!778162 () Bool)

(assert (=> b!1732345 (=> (not res!778162) (not e!1108359))))

(assert (=> b!1732345 (= res!778162 (= (value!105776 (_1!10738 (get!5673 lt!664873))) (apply!5177 (transformation!3372 (rule!5354 (_1!10738 (get!5673 lt!664873)))) (seqFromList!2346 (originalCharacters!4186 (_1!10738 (get!5673 lt!664873)))))))))

(declare-fun b!1732346 () Bool)

(declare-fun res!778166 () Bool)

(assert (=> b!1732346 (=> (not res!778166) (not e!1108359))))

(assert (=> b!1732346 (= res!778166 (< (size!15093 (_2!10738 (get!5673 lt!664873))) (size!15093 lt!664722)))))

(declare-fun b!1732347 () Bool)

(declare-fun e!1108360 () Bool)

(assert (=> b!1732347 (= e!1108360 e!1108359)))

(declare-fun res!778165 () Bool)

(assert (=> b!1732347 (=> (not res!778165) (not e!1108359))))

(assert (=> b!1732347 (= res!778165 (matchR!2174 (regex!3372 (rule!5354 (_1!10738 lt!664721))) (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664873))))))))

(declare-fun b!1732348 () Bool)

(declare-fun e!1108361 () Option!3769)

(declare-datatypes ((tuple2!18676 0))(
  ( (tuple2!18677 (_1!10740 List!19066) (_2!10740 List!19066)) )
))
(declare-fun lt!664874 () tuple2!18676)

(assert (=> b!1732348 (= e!1108361 (Some!3768 (tuple2!18673 (Token!6311 (apply!5177 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) (seqFromList!2346 (_1!10740 lt!664874))) (rule!5354 (_1!10738 lt!664721)) (size!15092 (seqFromList!2346 (_1!10740 lt!664874))) (_1!10740 lt!664874)) (_2!10740 lt!664874))))))

(declare-fun lt!664875 () Unit!32854)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!398 (Regex!4700 List!19066) Unit!32854)

(assert (=> b!1732348 (= lt!664875 (longestMatchIsAcceptedByMatchOrIsEmpty!398 (regex!3372 (rule!5354 (_1!10738 lt!664721))) lt!664722))))

(declare-fun res!778161 () Bool)

(declare-fun findLongestMatchInner!414 (Regex!4700 List!19066 Int List!19066 List!19066 Int) tuple2!18676)

(assert (=> b!1732348 (= res!778161 (isEmpty!11952 (_1!10740 (findLongestMatchInner!414 (regex!3372 (rule!5354 (_1!10738 lt!664721))) Nil!18996 (size!15093 Nil!18996) lt!664722 lt!664722 (size!15093 lt!664722)))))))

(declare-fun e!1108362 () Bool)

(assert (=> b!1732348 (=> res!778161 e!1108362)))

(assert (=> b!1732348 e!1108362))

(declare-fun lt!664877 () Unit!32854)

(assert (=> b!1732348 (= lt!664877 lt!664875)))

(declare-fun lt!664876 () Unit!32854)

(assert (=> b!1732348 (= lt!664876 (lemmaSemiInverse!518 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) (seqFromList!2346 (_1!10740 lt!664874))))))

(declare-fun d!530243 () Bool)

(assert (=> d!530243 e!1108360))

(declare-fun res!778164 () Bool)

(assert (=> d!530243 (=> res!778164 e!1108360)))

(declare-fun isEmpty!11955 (Option!3769) Bool)

(assert (=> d!530243 (= res!778164 (isEmpty!11955 lt!664873))))

(assert (=> d!530243 (= lt!664873 e!1108361)))

(declare-fun c!282950 () Bool)

(assert (=> d!530243 (= c!282950 (isEmpty!11952 (_1!10740 lt!664874)))))

(declare-fun findLongestMatch!341 (Regex!4700 List!19066) tuple2!18676)

(assert (=> d!530243 (= lt!664874 (findLongestMatch!341 (regex!3372 (rule!5354 (_1!10738 lt!664721))) lt!664722))))

(assert (=> d!530243 (ruleValid!871 thiss!24550 (rule!5354 (_1!10738 lt!664721)))))

(assert (=> d!530243 (= (maxPrefixOneRule!931 thiss!24550 (rule!5354 (_1!10738 lt!664721)) lt!664722) lt!664873)))

(declare-fun b!1732343 () Bool)

(assert (=> b!1732343 (= e!1108362 (matchR!2174 (regex!3372 (rule!5354 (_1!10738 lt!664721))) (_1!10740 (findLongestMatchInner!414 (regex!3372 (rule!5354 (_1!10738 lt!664721))) Nil!18996 (size!15093 Nil!18996) lt!664722 lt!664722 (size!15093 lt!664722)))))))

(declare-fun b!1732349 () Bool)

(declare-fun res!778160 () Bool)

(assert (=> b!1732349 (=> (not res!778160) (not e!1108359))))

(assert (=> b!1732349 (= res!778160 (= (++!5197 (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664873)))) (_2!10738 (get!5673 lt!664873))) lt!664722))))

(declare-fun b!1732350 () Bool)

(assert (=> b!1732350 (= e!1108361 None!3768)))

(assert (= (and d!530243 c!282950) b!1732350))

(assert (= (and d!530243 (not c!282950)) b!1732348))

(assert (= (and b!1732348 (not res!778161)) b!1732343))

(assert (= (and d!530243 (not res!778164)) b!1732347))

(assert (= (and b!1732347 res!778165) b!1732349))

(assert (= (and b!1732349 res!778160) b!1732346))

(assert (= (and b!1732346 res!778166) b!1732344))

(assert (= (and b!1732344 res!778163) b!1732345))

(assert (= (and b!1732345 res!778162) b!1732342))

(declare-fun m!2140977 () Bool)

(assert (=> b!1732349 m!2140977))

(declare-fun m!2140979 () Bool)

(assert (=> b!1732349 m!2140979))

(assert (=> b!1732349 m!2140979))

(declare-fun m!2140981 () Bool)

(assert (=> b!1732349 m!2140981))

(assert (=> b!1732349 m!2140981))

(declare-fun m!2140983 () Bool)

(assert (=> b!1732349 m!2140983))

(assert (=> b!1732347 m!2140977))

(assert (=> b!1732347 m!2140979))

(assert (=> b!1732347 m!2140979))

(assert (=> b!1732347 m!2140981))

(assert (=> b!1732347 m!2140981))

(declare-fun m!2140985 () Bool)

(assert (=> b!1732347 m!2140985))

(declare-fun m!2140987 () Bool)

(assert (=> b!1732343 m!2140987))

(declare-fun m!2140989 () Bool)

(assert (=> b!1732343 m!2140989))

(assert (=> b!1732343 m!2140987))

(assert (=> b!1732343 m!2140989))

(declare-fun m!2140991 () Bool)

(assert (=> b!1732343 m!2140991))

(declare-fun m!2140993 () Bool)

(assert (=> b!1732343 m!2140993))

(assert (=> b!1732348 m!2140987))

(assert (=> b!1732348 m!2140989))

(assert (=> b!1732348 m!2140991))

(assert (=> b!1732348 m!2140987))

(declare-fun m!2140995 () Bool)

(assert (=> b!1732348 m!2140995))

(declare-fun m!2140997 () Bool)

(assert (=> b!1732348 m!2140997))

(declare-fun m!2140999 () Bool)

(assert (=> b!1732348 m!2140999))

(assert (=> b!1732348 m!2140995))

(assert (=> b!1732348 m!2140989))

(declare-fun m!2141001 () Bool)

(assert (=> b!1732348 m!2141001))

(assert (=> b!1732348 m!2140995))

(declare-fun m!2141003 () Bool)

(assert (=> b!1732348 m!2141003))

(assert (=> b!1732348 m!2140995))

(declare-fun m!2141005 () Bool)

(assert (=> b!1732348 m!2141005))

(assert (=> b!1732346 m!2140977))

(declare-fun m!2141007 () Bool)

(assert (=> b!1732346 m!2141007))

(assert (=> b!1732346 m!2140989))

(assert (=> b!1732345 m!2140977))

(declare-fun m!2141009 () Bool)

(assert (=> b!1732345 m!2141009))

(assert (=> b!1732345 m!2141009))

(declare-fun m!2141011 () Bool)

(assert (=> b!1732345 m!2141011))

(assert (=> b!1732344 m!2140977))

(declare-fun m!2141013 () Bool)

(assert (=> d!530243 m!2141013))

(declare-fun m!2141015 () Bool)

(assert (=> d!530243 m!2141015))

(declare-fun m!2141017 () Bool)

(assert (=> d!530243 m!2141017))

(declare-fun m!2141019 () Bool)

(assert (=> d!530243 m!2141019))

(assert (=> b!1732342 m!2140977))

(declare-fun m!2141021 () Bool)

(assert (=> b!1732342 m!2141021))

(assert (=> b!1732089 d!530243))

(declare-fun d!530245 () Bool)

(declare-fun lt!664880 () List!19066)

(assert (=> d!530245 (= (++!5197 lt!664724 lt!664880) lt!664722)))

(declare-fun e!1108365 () List!19066)

(assert (=> d!530245 (= lt!664880 e!1108365)))

(declare-fun c!282953 () Bool)

(assert (=> d!530245 (= c!282953 (is-Cons!18996 lt!664724))))

(assert (=> d!530245 (>= (size!15093 lt!664722) (size!15093 lt!664724))))

(assert (=> d!530245 (= (getSuffix!807 lt!664722 lt!664724) lt!664880)))

(declare-fun b!1732355 () Bool)

(assert (=> b!1732355 (= e!1108365 (getSuffix!807 (tail!2588 lt!664722) (t!160839 lt!664724)))))

(declare-fun b!1732356 () Bool)

(assert (=> b!1732356 (= e!1108365 lt!664722)))

(assert (= (and d!530245 c!282953) b!1732355))

(assert (= (and d!530245 (not c!282953)) b!1732356))

(declare-fun m!2141023 () Bool)

(assert (=> d!530245 m!2141023))

(assert (=> d!530245 m!2140989))

(assert (=> d!530245 m!2140737))

(declare-fun m!2141025 () Bool)

(assert (=> b!1732355 m!2141025))

(assert (=> b!1732355 m!2141025))

(declare-fun m!2141027 () Bool)

(assert (=> b!1732355 m!2141027))

(assert (=> b!1732089 d!530245))

(declare-fun d!530247 () Bool)

(assert (=> d!530247 (= (maxPrefixOneRule!931 thiss!24550 (rule!5354 (_1!10738 lt!664721)) lt!664722) (Some!3768 (tuple2!18673 (Token!6311 (apply!5177 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) (seqFromList!2346 lt!664724)) (rule!5354 (_1!10738 lt!664721)) (size!15093 lt!664724) lt!664724) (_2!10738 lt!664721))))))

(declare-fun lt!664885 () Unit!32854)

(declare-fun choose!10599 (LexerInterface!3001 List!19067 List!19066 List!19066 List!19066 Rule!6544) Unit!32854)

(assert (=> d!530247 (= lt!664885 (choose!10599 thiss!24550 rules!3447 lt!664724 lt!664722 (_2!10738 lt!664721) (rule!5354 (_1!10738 lt!664721))))))

(assert (=> d!530247 (not (isEmpty!11951 rules!3447))))

(assert (=> d!530247 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!330 thiss!24550 rules!3447 lt!664724 lt!664722 (_2!10738 lt!664721) (rule!5354 (_1!10738 lt!664721))) lt!664885)))

(declare-fun bs!402675 () Bool)

(assert (= bs!402675 d!530247))

(assert (=> bs!402675 m!2140739))

(assert (=> bs!402675 m!2140731))

(assert (=> bs!402675 m!2140733))

(assert (=> bs!402675 m!2140731))

(assert (=> bs!402675 m!2140737))

(declare-fun m!2141029 () Bool)

(assert (=> bs!402675 m!2141029))

(assert (=> bs!402675 m!2140743))

(assert (=> b!1732089 d!530247))

(declare-fun d!530253 () Bool)

(declare-fun fromListB!1077 (List!19066) BalanceConc!12580)

(assert (=> d!530253 (= (seqFromList!2346 lt!664724) (fromListB!1077 lt!664724))))

(declare-fun bs!402676 () Bool)

(assert (= bs!402676 d!530253))

(declare-fun m!2141031 () Bool)

(assert (=> bs!402676 m!2141031))

(assert (=> b!1732089 d!530253))

(declare-fun d!530255 () Bool)

(assert (=> d!530255 (= (_2!10738 lt!664721) lt!664712)))

(declare-fun lt!664889 () Unit!32854)

(declare-fun choose!10600 (List!19066 List!19066 List!19066 List!19066 List!19066) Unit!32854)

(assert (=> d!530255 (= lt!664889 (choose!10600 lt!664724 (_2!10738 lt!664721) lt!664724 lt!664712 lt!664722))))

(assert (=> d!530255 (isPrefix!1613 lt!664724 lt!664722)))

(assert (=> d!530255 (= (lemmaSamePrefixThenSameSuffix!757 lt!664724 (_2!10738 lt!664721) lt!664724 lt!664712 lt!664722) lt!664889)))

(declare-fun bs!402677 () Bool)

(assert (= bs!402677 d!530255))

(declare-fun m!2141039 () Bool)

(assert (=> bs!402677 m!2141039))

(assert (=> bs!402677 m!2140621))

(assert (=> b!1732089 d!530255))

(declare-fun d!530259 () Bool)

(assert (=> d!530259 (= (apply!5177 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) (seqFromList!2346 lt!664724)) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (seqFromList!2346 lt!664724)))))

(declare-fun b_lambda!55305 () Bool)

(assert (=> (not b_lambda!55305) (not d!530259)))

(declare-fun t!160863 () Bool)

(declare-fun tb!103227 () Bool)

(assert (=> (and b!1732090 (= (toValue!4879 (transformation!3372 (h!24398 rules!3447))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160863) tb!103227))

(declare-fun result!124122 () Bool)

(assert (=> tb!103227 (= result!124122 (inv!21 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (seqFromList!2346 lt!664724))))))

(declare-fun m!2141041 () Bool)

(assert (=> tb!103227 m!2141041))

(assert (=> d!530259 t!160863))

(declare-fun b_and!127853 () Bool)

(assert (= b_and!127811 (and (=> t!160863 result!124122) b_and!127853)))

(declare-fun tb!103229 () Bool)

(declare-fun t!160865 () Bool)

(assert (=> (and b!1732076 (= (toValue!4879 (transformation!3372 (rule!5354 token!523))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160865) tb!103229))

(declare-fun result!124124 () Bool)

(assert (= result!124124 result!124122))

(assert (=> d!530259 t!160865))

(declare-fun b_and!127855 () Bool)

(assert (= b_and!127813 (and (=> t!160865 result!124124) b_and!127855)))

(declare-fun tb!103231 () Bool)

(declare-fun t!160867 () Bool)

(assert (=> (and b!1732077 (= (toValue!4879 (transformation!3372 rule!422)) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160867) tb!103231))

(declare-fun result!124126 () Bool)

(assert (= result!124126 result!124122))

(assert (=> d!530259 t!160867))

(declare-fun b_and!127857 () Bool)

(assert (= b_and!127815 (and (=> t!160867 result!124126) b_and!127857)))

(assert (=> d!530259 m!2140731))

(declare-fun m!2141043 () Bool)

(assert (=> d!530259 m!2141043))

(assert (=> b!1732089 d!530259))

(declare-fun d!530261 () Bool)

(assert (=> d!530261 (= (inv!24572 (tag!3700 (rule!5354 token!523))) (= (mod (str.len (value!105775 (tag!3700 (rule!5354 token!523)))) 2) 0))))

(assert (=> b!1732068 d!530261))

(declare-fun d!530265 () Bool)

(declare-fun res!778175 () Bool)

(declare-fun e!1108375 () Bool)

(assert (=> d!530265 (=> (not res!778175) (not e!1108375))))

(declare-fun semiInverseModEq!1336 (Int Int) Bool)

(assert (=> d!530265 (= res!778175 (semiInverseModEq!1336 (toChars!4738 (transformation!3372 (rule!5354 token!523))) (toValue!4879 (transformation!3372 (rule!5354 token!523)))))))

(assert (=> d!530265 (= (inv!24575 (transformation!3372 (rule!5354 token!523))) e!1108375)))

(declare-fun b!1732365 () Bool)

(declare-fun equivClasses!1277 (Int Int) Bool)

(assert (=> b!1732365 (= e!1108375 (equivClasses!1277 (toChars!4738 (transformation!3372 (rule!5354 token!523))) (toValue!4879 (transformation!3372 (rule!5354 token!523)))))))

(assert (= (and d!530265 res!778175) b!1732365))

(declare-fun m!2141049 () Bool)

(assert (=> d!530265 m!2141049))

(declare-fun m!2141051 () Bool)

(assert (=> b!1732365 m!2141051))

(assert (=> b!1732068 d!530265))

(declare-fun d!530269 () Bool)

(declare-fun res!778178 () Bool)

(declare-fun e!1108378 () Bool)

(assert (=> d!530269 (=> (not res!778178) (not e!1108378))))

(declare-fun rulesValid!1263 (LexerInterface!3001 List!19067) Bool)

(assert (=> d!530269 (= res!778178 (rulesValid!1263 thiss!24550 rules!3447))))

(assert (=> d!530269 (= (rulesInvariant!2670 thiss!24550 rules!3447) e!1108378)))

(declare-fun b!1732368 () Bool)

(declare-datatypes ((List!19071 0))(
  ( (Nil!19001) (Cons!19001 (h!24402 String!21644) (t!160898 List!19071)) )
))
(declare-fun noDuplicateTag!1263 (LexerInterface!3001 List!19067 List!19071) Bool)

(assert (=> b!1732368 (= e!1108378 (noDuplicateTag!1263 thiss!24550 rules!3447 Nil!19001))))

(assert (= (and d!530269 res!778178) b!1732368))

(declare-fun m!2141053 () Bool)

(assert (=> d!530269 m!2141053))

(declare-fun m!2141055 () Bool)

(assert (=> b!1732368 m!2141055))

(assert (=> b!1732093 d!530269))

(declare-fun bm!109944 () Bool)

(declare-fun call!109949 () Bool)

(assert (=> bm!109944 (= call!109949 (isEmpty!11952 (list!7681 (charsOf!2021 (_1!10738 lt!664721)))))))

(declare-fun d!530271 () Bool)

(declare-fun e!1108384 () Bool)

(assert (=> d!530271 e!1108384))

(declare-fun c!282954 () Bool)

(assert (=> d!530271 (= c!282954 (is-EmptyExpr!4700 (regex!3372 lt!664728)))))

(declare-fun lt!664890 () Bool)

(declare-fun e!1108382 () Bool)

(assert (=> d!530271 (= lt!664890 e!1108382)))

(declare-fun c!282955 () Bool)

(assert (=> d!530271 (= c!282955 (isEmpty!11952 (list!7681 (charsOf!2021 (_1!10738 lt!664721)))))))

(assert (=> d!530271 (validRegex!1897 (regex!3372 lt!664728))))

(assert (=> d!530271 (= (matchR!2174 (regex!3372 lt!664728) (list!7681 (charsOf!2021 (_1!10738 lt!664721)))) lt!664890)))

(declare-fun b!1732369 () Bool)

(declare-fun e!1108381 () Bool)

(assert (=> b!1732369 (= e!1108384 e!1108381)))

(declare-fun c!282956 () Bool)

(assert (=> b!1732369 (= c!282956 (is-EmptyLang!4700 (regex!3372 lt!664728)))))

(declare-fun b!1732370 () Bool)

(declare-fun res!778184 () Bool)

(declare-fun e!1108385 () Bool)

(assert (=> b!1732370 (=> res!778184 e!1108385)))

(assert (=> b!1732370 (= res!778184 (not (isEmpty!11952 (tail!2588 (list!7681 (charsOf!2021 (_1!10738 lt!664721)))))))))

(declare-fun b!1732371 () Bool)

(declare-fun res!778182 () Bool)

(declare-fun e!1108379 () Bool)

(assert (=> b!1732371 (=> (not res!778182) (not e!1108379))))

(assert (=> b!1732371 (= res!778182 (not call!109949))))

(declare-fun b!1732372 () Bool)

(declare-fun e!1108383 () Bool)

(assert (=> b!1732372 (= e!1108383 e!1108385)))

(declare-fun res!778183 () Bool)

(assert (=> b!1732372 (=> res!778183 e!1108385)))

(assert (=> b!1732372 (= res!778183 call!109949)))

(declare-fun b!1732373 () Bool)

(assert (=> b!1732373 (= e!1108379 (= (head!3943 (list!7681 (charsOf!2021 (_1!10738 lt!664721)))) (c!282925 (regex!3372 lt!664728))))))

(declare-fun b!1732374 () Bool)

(assert (=> b!1732374 (= e!1108381 (not lt!664890))))

(declare-fun b!1732375 () Bool)

(assert (=> b!1732375 (= e!1108382 (nullable!1423 (regex!3372 lt!664728)))))

(declare-fun b!1732376 () Bool)

(declare-fun res!778186 () Bool)

(declare-fun e!1108380 () Bool)

(assert (=> b!1732376 (=> res!778186 e!1108380)))

(assert (=> b!1732376 (= res!778186 (not (is-ElementMatch!4700 (regex!3372 lt!664728))))))

(assert (=> b!1732376 (= e!1108381 e!1108380)))

(declare-fun b!1732377 () Bool)

(assert (=> b!1732377 (= e!1108385 (not (= (head!3943 (list!7681 (charsOf!2021 (_1!10738 lt!664721)))) (c!282925 (regex!3372 lt!664728)))))))

(declare-fun b!1732378 () Bool)

(declare-fun res!778179 () Bool)

(assert (=> b!1732378 (=> res!778179 e!1108380)))

(assert (=> b!1732378 (= res!778179 e!1108379)))

(declare-fun res!778185 () Bool)

(assert (=> b!1732378 (=> (not res!778185) (not e!1108379))))

(assert (=> b!1732378 (= res!778185 lt!664890)))

(declare-fun b!1732379 () Bool)

(declare-fun res!778181 () Bool)

(assert (=> b!1732379 (=> (not res!778181) (not e!1108379))))

(assert (=> b!1732379 (= res!778181 (isEmpty!11952 (tail!2588 (list!7681 (charsOf!2021 (_1!10738 lt!664721))))))))

(declare-fun b!1732380 () Bool)

(assert (=> b!1732380 (= e!1108384 (= lt!664890 call!109949))))

(declare-fun b!1732381 () Bool)

(assert (=> b!1732381 (= e!1108382 (matchR!2174 (derivativeStep!1191 (regex!3372 lt!664728) (head!3943 (list!7681 (charsOf!2021 (_1!10738 lt!664721))))) (tail!2588 (list!7681 (charsOf!2021 (_1!10738 lt!664721))))))))

(declare-fun b!1732382 () Bool)

(assert (=> b!1732382 (= e!1108380 e!1108383)))

(declare-fun res!778180 () Bool)

(assert (=> b!1732382 (=> (not res!778180) (not e!1108383))))

(assert (=> b!1732382 (= res!778180 (not lt!664890))))

(assert (= (and d!530271 c!282955) b!1732375))

(assert (= (and d!530271 (not c!282955)) b!1732381))

(assert (= (and d!530271 c!282954) b!1732380))

(assert (= (and d!530271 (not c!282954)) b!1732369))

(assert (= (and b!1732369 c!282956) b!1732374))

(assert (= (and b!1732369 (not c!282956)) b!1732376))

(assert (= (and b!1732376 (not res!778186)) b!1732378))

(assert (= (and b!1732378 res!778185) b!1732371))

(assert (= (and b!1732371 res!778182) b!1732379))

(assert (= (and b!1732379 res!778181) b!1732373))

(assert (= (and b!1732378 (not res!778179)) b!1732382))

(assert (= (and b!1732382 res!778180) b!1732372))

(assert (= (and b!1732372 (not res!778183)) b!1732370))

(assert (= (and b!1732370 (not res!778184)) b!1732377))

(assert (= (or b!1732380 b!1732371 b!1732372) bm!109944))

(assert (=> b!1732377 m!2140647))

(declare-fun m!2141057 () Bool)

(assert (=> b!1732377 m!2141057))

(assert (=> b!1732379 m!2140647))

(declare-fun m!2141059 () Bool)

(assert (=> b!1732379 m!2141059))

(assert (=> b!1732379 m!2141059))

(declare-fun m!2141061 () Bool)

(assert (=> b!1732379 m!2141061))

(assert (=> b!1732381 m!2140647))

(assert (=> b!1732381 m!2141057))

(assert (=> b!1732381 m!2141057))

(declare-fun m!2141063 () Bool)

(assert (=> b!1732381 m!2141063))

(assert (=> b!1732381 m!2140647))

(assert (=> b!1732381 m!2141059))

(assert (=> b!1732381 m!2141063))

(assert (=> b!1732381 m!2141059))

(declare-fun m!2141065 () Bool)

(assert (=> b!1732381 m!2141065))

(assert (=> bm!109944 m!2140647))

(declare-fun m!2141067 () Bool)

(assert (=> bm!109944 m!2141067))

(assert (=> b!1732373 m!2140647))

(assert (=> b!1732373 m!2141057))

(assert (=> d!530271 m!2140647))

(assert (=> d!530271 m!2141067))

(declare-fun m!2141069 () Bool)

(assert (=> d!530271 m!2141069))

(assert (=> b!1732370 m!2140647))

(assert (=> b!1732370 m!2141059))

(assert (=> b!1732370 m!2141059))

(assert (=> b!1732370 m!2141061))

(declare-fun m!2141071 () Bool)

(assert (=> b!1732375 m!2141071))

(assert (=> b!1732072 d!530271))

(declare-fun d!530273 () Bool)

(declare-fun list!7683 (Conc!6318) List!19066)

(assert (=> d!530273 (= (list!7681 (charsOf!2021 (_1!10738 lt!664721))) (list!7683 (c!282926 (charsOf!2021 (_1!10738 lt!664721)))))))

(declare-fun bs!402680 () Bool)

(assert (= bs!402680 d!530273))

(declare-fun m!2141073 () Bool)

(assert (=> bs!402680 m!2141073))

(assert (=> b!1732072 d!530273))

(declare-fun d!530275 () Bool)

(declare-fun lt!664895 () BalanceConc!12580)

(assert (=> d!530275 (= (list!7681 lt!664895) (originalCharacters!4186 (_1!10738 lt!664721)))))

(assert (=> d!530275 (= lt!664895 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))))

(assert (=> d!530275 (= (charsOf!2021 (_1!10738 lt!664721)) lt!664895)))

(declare-fun b_lambda!55307 () Bool)

(assert (=> (not b_lambda!55307) (not d!530275)))

(assert (=> d!530275 t!160833))

(declare-fun b_and!127859 () Bool)

(assert (= b_and!127817 (and (=> t!160833 result!124094) b_and!127859)))

(assert (=> d!530275 t!160835))

(declare-fun b_and!127861 () Bool)

(assert (= b_and!127819 (and (=> t!160835 result!124096) b_and!127861)))

(assert (=> d!530275 t!160837))

(declare-fun b_and!127863 () Bool)

(assert (= b_and!127821 (and (=> t!160837 result!124098) b_and!127863)))

(declare-fun m!2141075 () Bool)

(assert (=> d!530275 m!2141075))

(assert (=> d!530275 m!2140741))

(assert (=> b!1732072 d!530275))

(declare-fun d!530277 () Bool)

(assert (=> d!530277 (= (get!5672 lt!664716) (v!25188 lt!664716))))

(assert (=> b!1732072 d!530277))

(declare-fun d!530279 () Bool)

(assert (=> d!530279 (= (isEmpty!11952 (_2!10738 lt!664709)) (is-Nil!18996 (_2!10738 lt!664709)))))

(assert (=> b!1732094 d!530279))

(declare-fun d!530281 () Bool)

(assert (=> d!530281 (= (isEmpty!11952 suffix!1421) (is-Nil!18996 suffix!1421))))

(assert (=> b!1732092 d!530281))

(declare-fun d!530283 () Bool)

(declare-fun c!282960 () Bool)

(assert (=> d!530283 (= c!282960 (isEmpty!11952 lt!664719))))

(declare-fun e!1108391 () Bool)

(assert (=> d!530283 (= (prefixMatch!585 lt!664705 lt!664719) e!1108391)))

(declare-fun b!1732392 () Bool)

(declare-fun lostCause!533 (Regex!4700) Bool)

(assert (=> b!1732392 (= e!1108391 (not (lostCause!533 lt!664705)))))

(declare-fun b!1732393 () Bool)

(assert (=> b!1732393 (= e!1108391 (prefixMatch!585 (derivativeStep!1191 lt!664705 (head!3943 lt!664719)) (tail!2588 lt!664719)))))

(assert (= (and d!530283 c!282960) b!1732392))

(assert (= (and d!530283 (not c!282960)) b!1732393))

(declare-fun m!2141077 () Bool)

(assert (=> d!530283 m!2141077))

(declare-fun m!2141079 () Bool)

(assert (=> b!1732392 m!2141079))

(assert (=> b!1732393 m!2140953))

(assert (=> b!1732393 m!2140953))

(declare-fun m!2141081 () Bool)

(assert (=> b!1732393 m!2141081))

(assert (=> b!1732393 m!2140947))

(assert (=> b!1732393 m!2141081))

(assert (=> b!1732393 m!2140947))

(declare-fun m!2141083 () Bool)

(assert (=> b!1732393 m!2141083))

(assert (=> b!1732071 d!530283))

(declare-fun b!1732403 () Bool)

(declare-fun e!1108397 () List!19066)

(assert (=> b!1732403 (= e!1108397 (Cons!18996 (h!24397 lt!664732) (++!5197 (t!160839 lt!664732) (Cons!18996 (head!3943 suffix!1421) Nil!18996))))))

(declare-fun b!1732402 () Bool)

(assert (=> b!1732402 (= e!1108397 (Cons!18996 (head!3943 suffix!1421) Nil!18996))))

(declare-fun b!1732405 () Bool)

(declare-fun e!1108396 () Bool)

(declare-fun lt!664899 () List!19066)

(assert (=> b!1732405 (= e!1108396 (or (not (= (Cons!18996 (head!3943 suffix!1421) Nil!18996) Nil!18996)) (= lt!664899 lt!664732)))))

(declare-fun b!1732404 () Bool)

(declare-fun res!778191 () Bool)

(assert (=> b!1732404 (=> (not res!778191) (not e!1108396))))

(assert (=> b!1732404 (= res!778191 (= (size!15093 lt!664899) (+ (size!15093 lt!664732) (size!15093 (Cons!18996 (head!3943 suffix!1421) Nil!18996)))))))

(declare-fun d!530285 () Bool)

(assert (=> d!530285 e!1108396))

(declare-fun res!778192 () Bool)

(assert (=> d!530285 (=> (not res!778192) (not e!1108396))))

(declare-fun content!2721 (List!19066) (Set C!9574))

(assert (=> d!530285 (= res!778192 (= (content!2721 lt!664899) (set.union (content!2721 lt!664732) (content!2721 (Cons!18996 (head!3943 suffix!1421) Nil!18996)))))))

(assert (=> d!530285 (= lt!664899 e!1108397)))

(declare-fun c!282963 () Bool)

(assert (=> d!530285 (= c!282963 (is-Nil!18996 lt!664732))))

(assert (=> d!530285 (= (++!5197 lt!664732 (Cons!18996 (head!3943 suffix!1421) Nil!18996)) lt!664899)))

(assert (= (and d!530285 c!282963) b!1732402))

(assert (= (and d!530285 (not c!282963)) b!1732403))

(assert (= (and d!530285 res!778192) b!1732404))

(assert (= (and b!1732404 res!778191) b!1732405))

(declare-fun m!2141087 () Bool)

(assert (=> b!1732403 m!2141087))

(declare-fun m!2141089 () Bool)

(assert (=> b!1732404 m!2141089))

(declare-fun m!2141091 () Bool)

(assert (=> b!1732404 m!2141091))

(declare-fun m!2141093 () Bool)

(assert (=> b!1732404 m!2141093))

(declare-fun m!2141095 () Bool)

(assert (=> d!530285 m!2141095))

(declare-fun m!2141097 () Bool)

(assert (=> d!530285 m!2141097))

(declare-fun m!2141099 () Bool)

(assert (=> d!530285 m!2141099))

(assert (=> b!1732071 d!530285))

(declare-fun d!530291 () Bool)

(assert (=> d!530291 (= (head!3943 suffix!1421) (h!24397 suffix!1421))))

(assert (=> b!1732071 d!530291))

(declare-fun d!530293 () Bool)

(declare-fun lt!664902 () Unit!32854)

(declare-fun lemma!347 (List!19067 LexerInterface!3001 List!19067) Unit!32854)

(assert (=> d!530293 (= lt!664902 (lemma!347 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69407 () Int)

(declare-datatypes ((List!19072 0))(
  ( (Nil!19002) (Cons!19002 (h!24403 Regex!4700) (t!160905 List!19072)) )
))
(declare-fun generalisedUnion!355 (List!19072) Regex!4700)

(declare-fun map!3913 (List!19067 Int) List!19072)

(assert (=> d!530293 (= (rulesRegex!730 thiss!24550 rules!3447) (generalisedUnion!355 (map!3913 rules!3447 lambda!69407)))))

(declare-fun bs!402682 () Bool)

(assert (= bs!402682 d!530293))

(declare-fun m!2141105 () Bool)

(assert (=> bs!402682 m!2141105))

(declare-fun m!2141107 () Bool)

(assert (=> bs!402682 m!2141107))

(assert (=> bs!402682 m!2141107))

(declare-fun m!2141109 () Bool)

(assert (=> bs!402682 m!2141109))

(assert (=> b!1732071 d!530293))

(declare-fun d!530297 () Bool)

(declare-fun isBalanced!1977 (Conc!6318) Bool)

(assert (=> d!530297 (= (inv!24578 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))) (isBalanced!1977 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))))))

(declare-fun bs!402683 () Bool)

(assert (= bs!402683 d!530297))

(declare-fun m!2141111 () Bool)

(assert (=> bs!402683 m!2141111))

(assert (=> tb!103203 d!530297))

(declare-fun d!530299 () Bool)

(assert (=> d!530299 (= (seqFromList!2346 (originalCharacters!4186 (_1!10738 lt!664721))) (fromListB!1077 (originalCharacters!4186 (_1!10738 lt!664721))))))

(declare-fun bs!402684 () Bool)

(assert (= bs!402684 d!530299))

(declare-fun m!2141113 () Bool)

(assert (=> bs!402684 m!2141113))

(assert (=> b!1732085 d!530299))

(declare-fun d!530301 () Bool)

(assert (=> d!530301 (= (apply!5177 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) lt!664714) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))

(declare-fun b_lambda!55313 () Bool)

(assert (=> (not b_lambda!55313) (not d!530301)))

(assert (=> d!530301 t!160827))

(declare-fun b_and!127877 () Bool)

(assert (= b_and!127853 (and (=> t!160827 result!124086) b_and!127877)))

(assert (=> d!530301 t!160829))

(declare-fun b_and!127879 () Bool)

(assert (= b_and!127855 (and (=> t!160829 result!124090) b_and!127879)))

(assert (=> d!530301 t!160831))

(declare-fun b_and!127881 () Bool)

(assert (= b_and!127857 (and (=> t!160831 result!124092) b_and!127881)))

(assert (=> d!530301 m!2140719))

(assert (=> b!1732085 d!530301))

(declare-fun b!1732422 () Bool)

(declare-fun e!1108409 () Bool)

(assert (=> b!1732422 (= e!1108409 true)))

(declare-fun d!530303 () Bool)

(assert (=> d!530303 e!1108409))

(assert (= d!530303 b!1732422))

(declare-fun order!11733 () Int)

(declare-fun lambda!69410 () Int)

(declare-fun dynLambda!8875 (Int Int) Int)

(assert (=> b!1732422 (< (dynLambda!8865 order!11721 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) (dynLambda!8875 order!11733 lambda!69410))))

(assert (=> b!1732422 (< (dynLambda!8867 order!11725 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) (dynLambda!8875 order!11733 lambda!69410))))

(assert (=> d!530303 (= (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (seqFromList!2346 (originalCharacters!4186 (_1!10738 lt!664721)))))))

(declare-fun lt!664905 () Unit!32854)

(declare-fun Forall2of!92 (Int BalanceConc!12580 BalanceConc!12580) Unit!32854)

(assert (=> d!530303 (= lt!664905 (Forall2of!92 lambda!69410 lt!664714 (seqFromList!2346 (originalCharacters!4186 (_1!10738 lt!664721)))))))

(assert (=> d!530303 (= (list!7681 lt!664714) (list!7681 (seqFromList!2346 (originalCharacters!4186 (_1!10738 lt!664721)))))))

(assert (=> d!530303 (= (lemmaEqSameImage!297 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) lt!664714 (seqFromList!2346 (originalCharacters!4186 (_1!10738 lt!664721)))) lt!664905)))

(declare-fun b_lambda!55317 () Bool)

(assert (=> (not b_lambda!55317) (not d!530303)))

(assert (=> d!530303 t!160827))

(declare-fun b_and!127889 () Bool)

(assert (= b_and!127877 (and (=> t!160827 result!124086) b_and!127889)))

(assert (=> d!530303 t!160829))

(declare-fun b_and!127891 () Bool)

(assert (= b_and!127879 (and (=> t!160829 result!124090) b_and!127891)))

(assert (=> d!530303 t!160831))

(declare-fun b_and!127893 () Bool)

(assert (= b_and!127881 (and (=> t!160831 result!124092) b_and!127893)))

(declare-fun b_lambda!55319 () Bool)

(assert (=> (not b_lambda!55319) (not d!530303)))

(declare-fun t!160875 () Bool)

(declare-fun tb!103239 () Bool)

(assert (=> (and b!1732090 (= (toValue!4879 (transformation!3372 (h!24398 rules!3447))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160875) tb!103239))

(declare-fun result!124134 () Bool)

(assert (=> tb!103239 (= result!124134 (inv!21 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (seqFromList!2346 (originalCharacters!4186 (_1!10738 lt!664721))))))))

(declare-fun m!2141127 () Bool)

(assert (=> tb!103239 m!2141127))

(assert (=> d!530303 t!160875))

(declare-fun b_and!127895 () Bool)

(assert (= b_and!127889 (and (=> t!160875 result!124134) b_and!127895)))

(declare-fun tb!103241 () Bool)

(declare-fun t!160877 () Bool)

(assert (=> (and b!1732076 (= (toValue!4879 (transformation!3372 (rule!5354 token!523))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160877) tb!103241))

(declare-fun result!124136 () Bool)

(assert (= result!124136 result!124134))

(assert (=> d!530303 t!160877))

(declare-fun b_and!127897 () Bool)

(assert (= b_and!127891 (and (=> t!160877 result!124136) b_and!127897)))

(declare-fun tb!103243 () Bool)

(declare-fun t!160879 () Bool)

(assert (=> (and b!1732077 (= (toValue!4879 (transformation!3372 rule!422)) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160879) tb!103243))

(declare-fun result!124138 () Bool)

(assert (= result!124138 result!124134))

(assert (=> d!530303 t!160879))

(declare-fun b_and!127899 () Bool)

(assert (= b_and!127893 (and (=> t!160879 result!124138) b_and!127899)))

(assert (=> d!530303 m!2140635))

(assert (=> d!530303 m!2140603))

(declare-fun m!2141129 () Bool)

(assert (=> d!530303 m!2141129))

(assert (=> d!530303 m!2140603))

(declare-fun m!2141131 () Bool)

(assert (=> d!530303 m!2141131))

(assert (=> d!530303 m!2140719))

(assert (=> d!530303 m!2140603))

(declare-fun m!2141133 () Bool)

(assert (=> d!530303 m!2141133))

(assert (=> b!1732085 d!530303))

(declare-fun d!530307 () Bool)

(assert (=> d!530307 (= (size!15091 (_1!10738 lt!664721)) (size!15093 (originalCharacters!4186 (_1!10738 lt!664721))))))

(declare-fun Unit!32859 () Unit!32854)

(assert (=> d!530307 (= (lemmaCharactersSize!444 (_1!10738 lt!664721)) Unit!32859)))

(declare-fun bs!402685 () Bool)

(assert (= bs!402685 d!530307))

(declare-fun m!2141135 () Bool)

(assert (=> bs!402685 m!2141135))

(assert (=> b!1732085 d!530307))

(declare-fun d!530309 () Bool)

(declare-fun lt!664906 () Int)

(assert (=> d!530309 (= lt!664906 (size!15093 (list!7681 lt!664714)))))

(assert (=> d!530309 (= lt!664906 (size!15097 (c!282926 lt!664714)))))

(assert (=> d!530309 (= (size!15092 lt!664714) lt!664906)))

(declare-fun bs!402686 () Bool)

(assert (= bs!402686 d!530309))

(assert (=> bs!402686 m!2140635))

(assert (=> bs!402686 m!2140635))

(declare-fun m!2141137 () Bool)

(assert (=> bs!402686 m!2141137))

(declare-fun m!2141139 () Bool)

(assert (=> bs!402686 m!2141139))

(assert (=> b!1732085 d!530309))

(declare-fun d!530311 () Bool)

(assert (=> d!530311 (= (isEmpty!11951 rules!3447) (is-Nil!18997 rules!3447))))

(assert (=> b!1732084 d!530311))

(declare-fun d!530313 () Bool)

(assert (=> d!530313 (= (inv!24572 (tag!3700 rule!422)) (= (mod (str.len (value!105775 (tag!3700 rule!422))) 2) 0))))

(assert (=> b!1732088 d!530313))

(declare-fun d!530315 () Bool)

(declare-fun res!778204 () Bool)

(declare-fun e!1108411 () Bool)

(assert (=> d!530315 (=> (not res!778204) (not e!1108411))))

(assert (=> d!530315 (= res!778204 (semiInverseModEq!1336 (toChars!4738 (transformation!3372 rule!422)) (toValue!4879 (transformation!3372 rule!422))))))

(assert (=> d!530315 (= (inv!24575 (transformation!3372 rule!422)) e!1108411)))

(declare-fun b!1732423 () Bool)

(assert (=> b!1732423 (= e!1108411 (equivClasses!1277 (toChars!4738 (transformation!3372 rule!422)) (toValue!4879 (transformation!3372 rule!422))))))

(assert (= (and d!530315 res!778204) b!1732423))

(declare-fun m!2141141 () Bool)

(assert (=> d!530315 m!2141141))

(declare-fun m!2141143 () Bool)

(assert (=> b!1732423 m!2141143))

(assert (=> b!1732088 d!530315))

(declare-fun d!530317 () Bool)

(assert (=> d!530317 (= (inv!24572 (tag!3700 (h!24398 rules!3447))) (= (mod (str.len (value!105775 (tag!3700 (h!24398 rules!3447)))) 2) 0))))

(assert (=> b!1732067 d!530317))

(declare-fun d!530319 () Bool)

(declare-fun res!778205 () Bool)

(declare-fun e!1108412 () Bool)

(assert (=> d!530319 (=> (not res!778205) (not e!1108412))))

(assert (=> d!530319 (= res!778205 (semiInverseModEq!1336 (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toValue!4879 (transformation!3372 (h!24398 rules!3447)))))))

(assert (=> d!530319 (= (inv!24575 (transformation!3372 (h!24398 rules!3447))) e!1108412)))

(declare-fun b!1732424 () Bool)

(assert (=> b!1732424 (= e!1108412 (equivClasses!1277 (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toValue!4879 (transformation!3372 (h!24398 rules!3447)))))))

(assert (= (and d!530319 res!778205) b!1732424))

(declare-fun m!2141145 () Bool)

(assert (=> d!530319 m!2141145))

(declare-fun m!2141147 () Bool)

(assert (=> b!1732424 m!2141147))

(assert (=> b!1732067 d!530319))

(declare-fun d!530321 () Bool)

(assert (=> d!530321 (= suffix!1421 lt!664704)))

(declare-fun lt!664907 () Unit!32854)

(assert (=> d!530321 (= lt!664907 (choose!10600 lt!664732 suffix!1421 lt!664732 lt!664704 lt!664722))))

(assert (=> d!530321 (isPrefix!1613 lt!664732 lt!664722)))

(assert (=> d!530321 (= (lemmaSamePrefixThenSameSuffix!757 lt!664732 suffix!1421 lt!664732 lt!664704 lt!664722) lt!664907)))

(declare-fun bs!402687 () Bool)

(assert (= bs!402687 d!530321))

(declare-fun m!2141149 () Bool)

(assert (=> bs!402687 m!2141149))

(assert (=> bs!402687 m!2140627))

(assert (=> b!1732087 d!530321))

(declare-fun d!530323 () Bool)

(declare-fun lt!664908 () List!19066)

(assert (=> d!530323 (= (++!5197 lt!664732 lt!664908) lt!664722)))

(declare-fun e!1108413 () List!19066)

(assert (=> d!530323 (= lt!664908 e!1108413)))

(declare-fun c!282964 () Bool)

(assert (=> d!530323 (= c!282964 (is-Cons!18996 lt!664732))))

(assert (=> d!530323 (>= (size!15093 lt!664722) (size!15093 lt!664732))))

(assert (=> d!530323 (= (getSuffix!807 lt!664722 lt!664732) lt!664908)))

(declare-fun b!1732425 () Bool)

(assert (=> b!1732425 (= e!1108413 (getSuffix!807 (tail!2588 lt!664722) (t!160839 lt!664732)))))

(declare-fun b!1732426 () Bool)

(assert (=> b!1732426 (= e!1108413 lt!664722)))

(assert (= (and d!530323 c!282964) b!1732425))

(assert (= (and d!530323 (not c!282964)) b!1732426))

(declare-fun m!2141151 () Bool)

(assert (=> d!530323 m!2141151))

(assert (=> d!530323 m!2140989))

(assert (=> d!530323 m!2141091))

(assert (=> b!1732425 m!2141025))

(assert (=> b!1732425 m!2141025))

(declare-fun m!2141153 () Bool)

(assert (=> b!1732425 m!2141153))

(assert (=> b!1732087 d!530323))

(declare-fun bm!109945 () Bool)

(declare-fun call!109950 () Bool)

(assert (=> bm!109945 (= call!109950 (isEmpty!11952 lt!664724))))

(declare-fun d!530325 () Bool)

(declare-fun e!1108419 () Bool)

(assert (=> d!530325 e!1108419))

(declare-fun c!282965 () Bool)

(assert (=> d!530325 (= c!282965 (is-EmptyExpr!4700 lt!664705))))

(declare-fun lt!664909 () Bool)

(declare-fun e!1108417 () Bool)

(assert (=> d!530325 (= lt!664909 e!1108417)))

(declare-fun c!282966 () Bool)

(assert (=> d!530325 (= c!282966 (isEmpty!11952 lt!664724))))

(assert (=> d!530325 (validRegex!1897 lt!664705)))

(assert (=> d!530325 (= (matchR!2174 lt!664705 lt!664724) lt!664909)))

(declare-fun b!1732427 () Bool)

(declare-fun e!1108416 () Bool)

(assert (=> b!1732427 (= e!1108419 e!1108416)))

(declare-fun c!282967 () Bool)

(assert (=> b!1732427 (= c!282967 (is-EmptyLang!4700 lt!664705))))

(declare-fun b!1732428 () Bool)

(declare-fun res!778211 () Bool)

(declare-fun e!1108420 () Bool)

(assert (=> b!1732428 (=> res!778211 e!1108420)))

(assert (=> b!1732428 (= res!778211 (not (isEmpty!11952 (tail!2588 lt!664724))))))

(declare-fun b!1732429 () Bool)

(declare-fun res!778209 () Bool)

(declare-fun e!1108414 () Bool)

(assert (=> b!1732429 (=> (not res!778209) (not e!1108414))))

(assert (=> b!1732429 (= res!778209 (not call!109950))))

(declare-fun b!1732430 () Bool)

(declare-fun e!1108418 () Bool)

(assert (=> b!1732430 (= e!1108418 e!1108420)))

(declare-fun res!778210 () Bool)

(assert (=> b!1732430 (=> res!778210 e!1108420)))

(assert (=> b!1732430 (= res!778210 call!109950)))

(declare-fun b!1732431 () Bool)

(assert (=> b!1732431 (= e!1108414 (= (head!3943 lt!664724) (c!282925 lt!664705)))))

(declare-fun b!1732432 () Bool)

(assert (=> b!1732432 (= e!1108416 (not lt!664909))))

(declare-fun b!1732433 () Bool)

(assert (=> b!1732433 (= e!1108417 (nullable!1423 lt!664705))))

(declare-fun b!1732434 () Bool)

(declare-fun res!778213 () Bool)

(declare-fun e!1108415 () Bool)

(assert (=> b!1732434 (=> res!778213 e!1108415)))

(assert (=> b!1732434 (= res!778213 (not (is-ElementMatch!4700 lt!664705)))))

(assert (=> b!1732434 (= e!1108416 e!1108415)))

(declare-fun b!1732435 () Bool)

(assert (=> b!1732435 (= e!1108420 (not (= (head!3943 lt!664724) (c!282925 lt!664705))))))

(declare-fun b!1732436 () Bool)

(declare-fun res!778206 () Bool)

(assert (=> b!1732436 (=> res!778206 e!1108415)))

(assert (=> b!1732436 (= res!778206 e!1108414)))

(declare-fun res!778212 () Bool)

(assert (=> b!1732436 (=> (not res!778212) (not e!1108414))))

(assert (=> b!1732436 (= res!778212 lt!664909)))

(declare-fun b!1732437 () Bool)

(declare-fun res!778208 () Bool)

(assert (=> b!1732437 (=> (not res!778208) (not e!1108414))))

(assert (=> b!1732437 (= res!778208 (isEmpty!11952 (tail!2588 lt!664724)))))

(declare-fun b!1732438 () Bool)

(assert (=> b!1732438 (= e!1108419 (= lt!664909 call!109950))))

(declare-fun b!1732439 () Bool)

(assert (=> b!1732439 (= e!1108417 (matchR!2174 (derivativeStep!1191 lt!664705 (head!3943 lt!664724)) (tail!2588 lt!664724)))))

(declare-fun b!1732440 () Bool)

(assert (=> b!1732440 (= e!1108415 e!1108418)))

(declare-fun res!778207 () Bool)

(assert (=> b!1732440 (=> (not res!778207) (not e!1108418))))

(assert (=> b!1732440 (= res!778207 (not lt!664909))))

(assert (= (and d!530325 c!282966) b!1732433))

(assert (= (and d!530325 (not c!282966)) b!1732439))

(assert (= (and d!530325 c!282965) b!1732438))

(assert (= (and d!530325 (not c!282965)) b!1732427))

(assert (= (and b!1732427 c!282967) b!1732432))

(assert (= (and b!1732427 (not c!282967)) b!1732434))

(assert (= (and b!1732434 (not res!778213)) b!1732436))

(assert (= (and b!1732436 res!778212) b!1732429))

(assert (= (and b!1732429 res!778209) b!1732437))

(assert (= (and b!1732437 res!778208) b!1732431))

(assert (= (and b!1732436 (not res!778206)) b!1732440))

(assert (= (and b!1732440 res!778207) b!1732430))

(assert (= (and b!1732430 (not res!778210)) b!1732428))

(assert (= (and b!1732428 (not res!778211)) b!1732435))

(assert (= (or b!1732438 b!1732429 b!1732430) bm!109945))

(assert (=> b!1732435 m!2140955))

(assert (=> b!1732437 m!2140949))

(assert (=> b!1732437 m!2140949))

(assert (=> b!1732437 m!2140959))

(assert (=> b!1732439 m!2140955))

(assert (=> b!1732439 m!2140955))

(declare-fun m!2141155 () Bool)

(assert (=> b!1732439 m!2141155))

(assert (=> b!1732439 m!2140949))

(assert (=> b!1732439 m!2141155))

(assert (=> b!1732439 m!2140949))

(declare-fun m!2141157 () Bool)

(assert (=> b!1732439 m!2141157))

(assert (=> bm!109945 m!2140965))

(assert (=> b!1732431 m!2140955))

(assert (=> d!530325 m!2140965))

(assert (=> d!530325 m!2140929))

(assert (=> b!1732428 m!2140949))

(assert (=> b!1732428 m!2140949))

(assert (=> b!1732428 m!2140959))

(assert (=> b!1732433 m!2140931))

(assert (=> b!1732087 d!530325))

(declare-fun d!530327 () Bool)

(assert (=> d!530327 (matchR!2174 (rulesRegex!730 thiss!24550 rules!3447) (list!7681 (charsOf!2021 (_1!10738 lt!664721))))))

(declare-fun lt!664912 () Unit!32854)

(assert (=> d!530327 (= lt!664912 (choose!10597 thiss!24550 rules!3447 lt!664722 (_1!10738 lt!664721) (rule!5354 (_1!10738 lt!664721)) (_2!10738 lt!664721)))))

(assert (=> d!530327 (not (isEmpty!11951 rules!3447))))

(assert (=> d!530327 (= (lemmaMaxPrefixThenMatchesRulesRegex!121 thiss!24550 rules!3447 lt!664722 (_1!10738 lt!664721) (rule!5354 (_1!10738 lt!664721)) (_2!10738 lt!664721)) lt!664912)))

(declare-fun bs!402688 () Bool)

(assert (= bs!402688 d!530327))

(assert (=> bs!402688 m!2140631))

(assert (=> bs!402688 m!2140647))

(declare-fun m!2141159 () Bool)

(assert (=> bs!402688 m!2141159))

(assert (=> bs!402688 m!2140663))

(assert (=> bs!402688 m!2140663))

(assert (=> bs!402688 m!2140647))

(declare-fun m!2141161 () Bool)

(assert (=> bs!402688 m!2141161))

(assert (=> bs!402688 m!2140631))

(assert (=> bs!402688 m!2140743))

(assert (=> b!1732087 d!530327))

(declare-fun d!530329 () Bool)

(assert (=> d!530329 (= (isDefined!3112 lt!664708) (not (isEmpty!11955 lt!664708)))))

(declare-fun bs!402689 () Bool)

(assert (= bs!402689 d!530329))

(declare-fun m!2141163 () Bool)

(assert (=> bs!402689 m!2141163))

(assert (=> b!1732083 d!530329))

(declare-fun b!1732528 () Bool)

(declare-fun res!778269 () Bool)

(declare-fun e!1108463 () Bool)

(assert (=> b!1732528 (=> (not res!778269) (not e!1108463))))

(declare-fun lt!664931 () Option!3769)

(assert (=> b!1732528 (= res!778269 (matchR!2174 (regex!3372 (rule!5354 (_1!10738 (get!5673 lt!664931)))) (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664931))))))))

(declare-fun call!109957 () Option!3769)

(declare-fun bm!109952 () Bool)

(assert (=> bm!109952 (= call!109957 (maxPrefixOneRule!931 thiss!24550 (h!24398 rules!3447) lt!664732))))

(declare-fun b!1732529 () Bool)

(declare-fun e!1108465 () Bool)

(assert (=> b!1732529 (= e!1108465 e!1108463)))

(declare-fun res!778270 () Bool)

(assert (=> b!1732529 (=> (not res!778270) (not e!1108463))))

(assert (=> b!1732529 (= res!778270 (isDefined!3112 lt!664931))))

(declare-fun b!1732530 () Bool)

(declare-fun res!778267 () Bool)

(assert (=> b!1732530 (=> (not res!778267) (not e!1108463))))

(assert (=> b!1732530 (= res!778267 (= (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664931)))) (originalCharacters!4186 (_1!10738 (get!5673 lt!664931)))))))

(declare-fun d!530331 () Bool)

(assert (=> d!530331 e!1108465))

(declare-fun res!778272 () Bool)

(assert (=> d!530331 (=> res!778272 e!1108465)))

(assert (=> d!530331 (= res!778272 (isEmpty!11955 lt!664931))))

(declare-fun e!1108464 () Option!3769)

(assert (=> d!530331 (= lt!664931 e!1108464)))

(declare-fun c!282985 () Bool)

(assert (=> d!530331 (= c!282985 (and (is-Cons!18997 rules!3447) (is-Nil!18997 (t!160840 rules!3447))))))

(declare-fun lt!664929 () Unit!32854)

(declare-fun lt!664928 () Unit!32854)

(assert (=> d!530331 (= lt!664929 lt!664928)))

(assert (=> d!530331 (isPrefix!1613 lt!664732 lt!664732)))

(declare-fun lemmaIsPrefixRefl!1086 (List!19066 List!19066) Unit!32854)

(assert (=> d!530331 (= lt!664928 (lemmaIsPrefixRefl!1086 lt!664732 lt!664732))))

(assert (=> d!530331 (rulesValidInductive!1123 thiss!24550 rules!3447)))

(assert (=> d!530331 (= (maxPrefix!1555 thiss!24550 rules!3447 lt!664732) lt!664931)))

(declare-fun b!1732531 () Bool)

(declare-fun res!778271 () Bool)

(assert (=> b!1732531 (=> (not res!778271) (not e!1108463))))

(assert (=> b!1732531 (= res!778271 (= (value!105776 (_1!10738 (get!5673 lt!664931))) (apply!5177 (transformation!3372 (rule!5354 (_1!10738 (get!5673 lt!664931)))) (seqFromList!2346 (originalCharacters!4186 (_1!10738 (get!5673 lt!664931)))))))))

(declare-fun b!1732532 () Bool)

(assert (=> b!1732532 (= e!1108464 call!109957)))

(declare-fun b!1732533 () Bool)

(declare-fun lt!664932 () Option!3769)

(declare-fun lt!664930 () Option!3769)

(assert (=> b!1732533 (= e!1108464 (ite (and (is-None!3768 lt!664932) (is-None!3768 lt!664930)) None!3768 (ite (is-None!3768 lt!664930) lt!664932 (ite (is-None!3768 lt!664932) lt!664930 (ite (>= (size!15091 (_1!10738 (v!25189 lt!664932))) (size!15091 (_1!10738 (v!25189 lt!664930)))) lt!664932 lt!664930)))))))

(assert (=> b!1732533 (= lt!664932 call!109957)))

(assert (=> b!1732533 (= lt!664930 (maxPrefix!1555 thiss!24550 (t!160840 rules!3447) lt!664732))))

(declare-fun b!1732534 () Bool)

(declare-fun res!778268 () Bool)

(assert (=> b!1732534 (=> (not res!778268) (not e!1108463))))

(assert (=> b!1732534 (= res!778268 (< (size!15093 (_2!10738 (get!5673 lt!664931))) (size!15093 lt!664732)))))

(declare-fun b!1732535 () Bool)

(declare-fun res!778273 () Bool)

(assert (=> b!1732535 (=> (not res!778273) (not e!1108463))))

(assert (=> b!1732535 (= res!778273 (= (++!5197 (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664931)))) (_2!10738 (get!5673 lt!664931))) lt!664732))))

(declare-fun b!1732536 () Bool)

(assert (=> b!1732536 (= e!1108463 (contains!3394 rules!3447 (rule!5354 (_1!10738 (get!5673 lt!664931)))))))

(assert (= (and d!530331 c!282985) b!1732532))

(assert (= (and d!530331 (not c!282985)) b!1732533))

(assert (= (or b!1732532 b!1732533) bm!109952))

(assert (= (and d!530331 (not res!778272)) b!1732529))

(assert (= (and b!1732529 res!778270) b!1732530))

(assert (= (and b!1732530 res!778267) b!1732534))

(assert (= (and b!1732534 res!778268) b!1732535))

(assert (= (and b!1732535 res!778273) b!1732531))

(assert (= (and b!1732531 res!778271) b!1732528))

(assert (= (and b!1732528 res!778269) b!1732536))

(declare-fun m!2141205 () Bool)

(assert (=> b!1732531 m!2141205))

(declare-fun m!2141207 () Bool)

(assert (=> b!1732531 m!2141207))

(assert (=> b!1732531 m!2141207))

(declare-fun m!2141209 () Bool)

(assert (=> b!1732531 m!2141209))

(declare-fun m!2141211 () Bool)

(assert (=> d!530331 m!2141211))

(declare-fun m!2141213 () Bool)

(assert (=> d!530331 m!2141213))

(declare-fun m!2141215 () Bool)

(assert (=> d!530331 m!2141215))

(assert (=> d!530331 m!2140669))

(assert (=> b!1732528 m!2141205))

(declare-fun m!2141217 () Bool)

(assert (=> b!1732528 m!2141217))

(assert (=> b!1732528 m!2141217))

(declare-fun m!2141219 () Bool)

(assert (=> b!1732528 m!2141219))

(assert (=> b!1732528 m!2141219))

(declare-fun m!2141221 () Bool)

(assert (=> b!1732528 m!2141221))

(declare-fun m!2141223 () Bool)

(assert (=> b!1732529 m!2141223))

(assert (=> b!1732535 m!2141205))

(assert (=> b!1732535 m!2141217))

(assert (=> b!1732535 m!2141217))

(assert (=> b!1732535 m!2141219))

(assert (=> b!1732535 m!2141219))

(declare-fun m!2141225 () Bool)

(assert (=> b!1732535 m!2141225))

(assert (=> b!1732536 m!2141205))

(declare-fun m!2141227 () Bool)

(assert (=> b!1732536 m!2141227))

(assert (=> b!1732534 m!2141205))

(declare-fun m!2141229 () Bool)

(assert (=> b!1732534 m!2141229))

(assert (=> b!1732534 m!2141091))

(declare-fun m!2141231 () Bool)

(assert (=> bm!109952 m!2141231))

(declare-fun m!2141233 () Bool)

(assert (=> b!1732533 m!2141233))

(assert (=> b!1732530 m!2141205))

(assert (=> b!1732530 m!2141217))

(assert (=> b!1732530 m!2141217))

(assert (=> b!1732530 m!2141219))

(assert (=> b!1732083 d!530331))

(declare-fun d!530347 () Bool)

(assert (=> d!530347 (= (list!7681 lt!664700) (list!7683 (c!282926 lt!664700)))))

(declare-fun bs!402692 () Bool)

(assert (= bs!402692 d!530347))

(declare-fun m!2141237 () Bool)

(assert (=> bs!402692 m!2141237))

(assert (=> b!1732083 d!530347))

(declare-fun d!530351 () Bool)

(declare-fun lt!664936 () BalanceConc!12580)

(assert (=> d!530351 (= (list!7681 lt!664936) (originalCharacters!4186 token!523))))

(assert (=> d!530351 (= lt!664936 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 token!523))) (value!105776 token!523)))))

(assert (=> d!530351 (= (charsOf!2021 token!523) lt!664936)))

(declare-fun b_lambda!55323 () Bool)

(assert (=> (not b_lambda!55323) (not d!530351)))

(declare-fun tb!103245 () Bool)

(declare-fun t!160881 () Bool)

(assert (=> (and b!1732090 (= (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toChars!4738 (transformation!3372 (rule!5354 token!523)))) t!160881) tb!103245))

(declare-fun b!1732539 () Bool)

(declare-fun e!1108467 () Bool)

(declare-fun tp!493874 () Bool)

(assert (=> b!1732539 (= e!1108467 (and (inv!24577 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 token!523))) (value!105776 token!523)))) tp!493874))))

(declare-fun result!124140 () Bool)

(assert (=> tb!103245 (= result!124140 (and (inv!24578 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 token!523))) (value!105776 token!523))) e!1108467))))

(assert (= tb!103245 b!1732539))

(declare-fun m!2141241 () Bool)

(assert (=> b!1732539 m!2141241))

(declare-fun m!2141243 () Bool)

(assert (=> tb!103245 m!2141243))

(assert (=> d!530351 t!160881))

(declare-fun b_and!127907 () Bool)

(assert (= b_and!127859 (and (=> t!160881 result!124140) b_and!127907)))

(declare-fun t!160883 () Bool)

(declare-fun tb!103247 () Bool)

(assert (=> (and b!1732076 (= (toChars!4738 (transformation!3372 (rule!5354 token!523))) (toChars!4738 (transformation!3372 (rule!5354 token!523)))) t!160883) tb!103247))

(declare-fun result!124142 () Bool)

(assert (= result!124142 result!124140))

(assert (=> d!530351 t!160883))

(declare-fun b_and!127909 () Bool)

(assert (= b_and!127861 (and (=> t!160883 result!124142) b_and!127909)))

(declare-fun tb!103249 () Bool)

(declare-fun t!160885 () Bool)

(assert (=> (and b!1732077 (= (toChars!4738 (transformation!3372 rule!422)) (toChars!4738 (transformation!3372 (rule!5354 token!523)))) t!160885) tb!103249))

(declare-fun result!124144 () Bool)

(assert (= result!124144 result!124140))

(assert (=> d!530351 t!160885))

(declare-fun b_and!127911 () Bool)

(assert (= b_and!127863 (and (=> t!160885 result!124144) b_and!127911)))

(declare-fun m!2141245 () Bool)

(assert (=> d!530351 m!2141245))

(declare-fun m!2141247 () Bool)

(assert (=> d!530351 m!2141247))

(assert (=> b!1732083 d!530351))

(declare-fun b!1732553 () Bool)

(declare-fun e!1108478 () Bool)

(declare-fun e!1108477 () Bool)

(assert (=> b!1732553 (= e!1108478 e!1108477)))

(declare-fun c!282990 () Bool)

(assert (=> b!1732553 (= c!282990 (is-IntegerValue!10387 (value!105776 token!523)))))

(declare-fun b!1732554 () Bool)

(declare-fun e!1108479 () Bool)

(declare-fun inv!15 (TokenValue!3462) Bool)

(assert (=> b!1732554 (= e!1108479 (inv!15 (value!105776 token!523)))))

(declare-fun d!530355 () Bool)

(declare-fun c!282991 () Bool)

(assert (=> d!530355 (= c!282991 (is-IntegerValue!10386 (value!105776 token!523)))))

(assert (=> d!530355 (= (inv!21 (value!105776 token!523)) e!1108478)))

(declare-fun b!1732555 () Bool)

(declare-fun inv!16 (TokenValue!3462) Bool)

(assert (=> b!1732555 (= e!1108478 (inv!16 (value!105776 token!523)))))

(declare-fun b!1732556 () Bool)

(declare-fun inv!17 (TokenValue!3462) Bool)

(assert (=> b!1732556 (= e!1108477 (inv!17 (value!105776 token!523)))))

(declare-fun b!1732557 () Bool)

(declare-fun res!778281 () Bool)

(assert (=> b!1732557 (=> res!778281 e!1108479)))

(assert (=> b!1732557 (= res!778281 (not (is-IntegerValue!10388 (value!105776 token!523))))))

(assert (=> b!1732557 (= e!1108477 e!1108479)))

(assert (= (and d!530355 c!282991) b!1732555))

(assert (= (and d!530355 (not c!282991)) b!1732553))

(assert (= (and b!1732553 c!282990) b!1732556))

(assert (= (and b!1732553 (not c!282990)) b!1732557))

(assert (= (and b!1732557 (not res!778281)) b!1732554))

(declare-fun m!2141253 () Bool)

(assert (=> b!1732554 m!2141253))

(declare-fun m!2141255 () Bool)

(assert (=> b!1732555 m!2141255))

(declare-fun m!2141257 () Bool)

(assert (=> b!1732556 m!2141257))

(assert (=> b!1732081 d!530355))

(declare-fun bm!109953 () Bool)

(declare-fun call!109958 () Bool)

(assert (=> bm!109953 (= call!109958 (isEmpty!11952 lt!664732))))

(declare-fun d!530359 () Bool)

(declare-fun e!1108485 () Bool)

(assert (=> d!530359 e!1108485))

(declare-fun c!282992 () Bool)

(assert (=> d!530359 (= c!282992 (is-EmptyExpr!4700 (regex!3372 rule!422)))))

(declare-fun lt!664937 () Bool)

(declare-fun e!1108483 () Bool)

(assert (=> d!530359 (= lt!664937 e!1108483)))

(declare-fun c!282993 () Bool)

(assert (=> d!530359 (= c!282993 (isEmpty!11952 lt!664732))))

(assert (=> d!530359 (validRegex!1897 (regex!3372 rule!422))))

(assert (=> d!530359 (= (matchR!2174 (regex!3372 rule!422) lt!664732) lt!664937)))

(declare-fun b!1732558 () Bool)

(declare-fun e!1108482 () Bool)

(assert (=> b!1732558 (= e!1108485 e!1108482)))

(declare-fun c!282994 () Bool)

(assert (=> b!1732558 (= c!282994 (is-EmptyLang!4700 (regex!3372 rule!422)))))

(declare-fun b!1732559 () Bool)

(declare-fun res!778287 () Bool)

(declare-fun e!1108486 () Bool)

(assert (=> b!1732559 (=> res!778287 e!1108486)))

(assert (=> b!1732559 (= res!778287 (not (isEmpty!11952 (tail!2588 lt!664732))))))

(declare-fun b!1732560 () Bool)

(declare-fun res!778285 () Bool)

(declare-fun e!1108480 () Bool)

(assert (=> b!1732560 (=> (not res!778285) (not e!1108480))))

(assert (=> b!1732560 (= res!778285 (not call!109958))))

(declare-fun b!1732561 () Bool)

(declare-fun e!1108484 () Bool)

(assert (=> b!1732561 (= e!1108484 e!1108486)))

(declare-fun res!778286 () Bool)

(assert (=> b!1732561 (=> res!778286 e!1108486)))

(assert (=> b!1732561 (= res!778286 call!109958)))

(declare-fun b!1732562 () Bool)

(assert (=> b!1732562 (= e!1108480 (= (head!3943 lt!664732) (c!282925 (regex!3372 rule!422))))))

(declare-fun b!1732563 () Bool)

(assert (=> b!1732563 (= e!1108482 (not lt!664937))))

(declare-fun b!1732564 () Bool)

(assert (=> b!1732564 (= e!1108483 (nullable!1423 (regex!3372 rule!422)))))

(declare-fun b!1732565 () Bool)

(declare-fun res!778289 () Bool)

(declare-fun e!1108481 () Bool)

(assert (=> b!1732565 (=> res!778289 e!1108481)))

(assert (=> b!1732565 (= res!778289 (not (is-ElementMatch!4700 (regex!3372 rule!422))))))

(assert (=> b!1732565 (= e!1108482 e!1108481)))

(declare-fun b!1732566 () Bool)

(assert (=> b!1732566 (= e!1108486 (not (= (head!3943 lt!664732) (c!282925 (regex!3372 rule!422)))))))

(declare-fun b!1732567 () Bool)

(declare-fun res!778282 () Bool)

(assert (=> b!1732567 (=> res!778282 e!1108481)))

(assert (=> b!1732567 (= res!778282 e!1108480)))

(declare-fun res!778288 () Bool)

(assert (=> b!1732567 (=> (not res!778288) (not e!1108480))))

(assert (=> b!1732567 (= res!778288 lt!664937)))

(declare-fun b!1732568 () Bool)

(declare-fun res!778284 () Bool)

(assert (=> b!1732568 (=> (not res!778284) (not e!1108480))))

(assert (=> b!1732568 (= res!778284 (isEmpty!11952 (tail!2588 lt!664732)))))

(declare-fun b!1732569 () Bool)

(assert (=> b!1732569 (= e!1108485 (= lt!664937 call!109958))))

(declare-fun b!1732570 () Bool)

(assert (=> b!1732570 (= e!1108483 (matchR!2174 (derivativeStep!1191 (regex!3372 rule!422) (head!3943 lt!664732)) (tail!2588 lt!664732)))))

(declare-fun b!1732571 () Bool)

(assert (=> b!1732571 (= e!1108481 e!1108484)))

(declare-fun res!778283 () Bool)

(assert (=> b!1732571 (=> (not res!778283) (not e!1108484))))

(assert (=> b!1732571 (= res!778283 (not lt!664937))))

(assert (= (and d!530359 c!282993) b!1732564))

(assert (= (and d!530359 (not c!282993)) b!1732570))

(assert (= (and d!530359 c!282992) b!1732569))

(assert (= (and d!530359 (not c!282992)) b!1732558))

(assert (= (and b!1732558 c!282994) b!1732563))

(assert (= (and b!1732558 (not c!282994)) b!1732565))

(assert (= (and b!1732565 (not res!778289)) b!1732567))

(assert (= (and b!1732567 res!778288) b!1732560))

(assert (= (and b!1732560 res!778285) b!1732568))

(assert (= (and b!1732568 res!778284) b!1732562))

(assert (= (and b!1732567 (not res!778282)) b!1732571))

(assert (= (and b!1732571 res!778283) b!1732561))

(assert (= (and b!1732561 (not res!778286)) b!1732559))

(assert (= (and b!1732559 (not res!778287)) b!1732566))

(assert (= (or b!1732569 b!1732560 b!1732561) bm!109953))

(assert (=> b!1732566 m!2140917))

(assert (=> b!1732568 m!2140919))

(assert (=> b!1732568 m!2140919))

(assert (=> b!1732568 m!2140921))

(assert (=> b!1732570 m!2140917))

(assert (=> b!1732570 m!2140917))

(declare-fun m!2141259 () Bool)

(assert (=> b!1732570 m!2141259))

(assert (=> b!1732570 m!2140919))

(assert (=> b!1732570 m!2141259))

(assert (=> b!1732570 m!2140919))

(declare-fun m!2141261 () Bool)

(assert (=> b!1732570 m!2141261))

(assert (=> bm!109953 m!2140927))

(assert (=> b!1732562 m!2140917))

(assert (=> d!530359 m!2140927))

(declare-fun m!2141263 () Bool)

(assert (=> d!530359 m!2141263))

(assert (=> b!1732559 m!2140919))

(assert (=> b!1732559 m!2140919))

(assert (=> b!1732559 m!2140921))

(declare-fun m!2141265 () Bool)

(assert (=> b!1732564 m!2141265))

(assert (=> b!1732082 d!530359))

(declare-fun d!530361 () Bool)

(declare-fun res!778297 () Bool)

(declare-fun e!1108498 () Bool)

(assert (=> d!530361 (=> (not res!778297) (not e!1108498))))

(assert (=> d!530361 (= res!778297 (validRegex!1897 (regex!3372 rule!422)))))

(assert (=> d!530361 (= (ruleValid!871 thiss!24550 rule!422) e!1108498)))

(declare-fun b!1732591 () Bool)

(declare-fun res!778298 () Bool)

(assert (=> b!1732591 (=> (not res!778298) (not e!1108498))))

(assert (=> b!1732591 (= res!778298 (not (nullable!1423 (regex!3372 rule!422))))))

(declare-fun b!1732592 () Bool)

(assert (=> b!1732592 (= e!1108498 (not (= (tag!3700 rule!422) (String!21645 ""))))))

(assert (= (and d!530361 res!778297) b!1732591))

(assert (= (and b!1732591 res!778298) b!1732592))

(assert (=> d!530361 m!2141263))

(assert (=> b!1732591 m!2141265))

(assert (=> b!1732082 d!530361))

(declare-fun d!530365 () Bool)

(assert (=> d!530365 (ruleValid!871 thiss!24550 rule!422)))

(declare-fun lt!664942 () Unit!32854)

(declare-fun choose!10601 (LexerInterface!3001 Rule!6544 List!19067) Unit!32854)

(assert (=> d!530365 (= lt!664942 (choose!10601 thiss!24550 rule!422 rules!3447))))

(assert (=> d!530365 (contains!3394 rules!3447 rule!422)))

(assert (=> d!530365 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!395 thiss!24550 rule!422 rules!3447) lt!664942)))

(declare-fun bs!402694 () Bool)

(assert (= bs!402694 d!530365))

(assert (=> bs!402694 m!2140695))

(declare-fun m!2141273 () Bool)

(assert (=> bs!402694 m!2141273))

(assert (=> bs!402694 m!2140745))

(assert (=> b!1732082 d!530365))

(declare-fun d!530367 () Bool)

(assert (=> d!530367 (= (inv!24578 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))) (isBalanced!1977 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))))

(declare-fun bs!402695 () Bool)

(assert (= bs!402695 d!530367))

(declare-fun m!2141275 () Bool)

(assert (=> bs!402695 m!2141275))

(assert (=> tb!103191 d!530367))

(declare-fun d!530369 () Bool)

(declare-fun choose!10602 (Int) Bool)

(assert (=> d!530369 (= (Forall!747 lambda!69395) (choose!10602 lambda!69395))))

(declare-fun bs!402696 () Bool)

(assert (= bs!402696 d!530369))

(declare-fun m!2141277 () Bool)

(assert (=> bs!402696 m!2141277))

(assert (=> b!1732096 d!530369))

(declare-fun d!530371 () Bool)

(declare-fun e!1108507 () Bool)

(assert (=> d!530371 e!1108507))

(declare-fun res!778307 () Bool)

(assert (=> d!530371 (=> (not res!778307) (not e!1108507))))

(assert (=> d!530371 (= res!778307 (semiInverseModEq!1336 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))))))

(declare-fun Unit!32860 () Unit!32854)

(assert (=> d!530371 (= (lemmaInv!579 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) Unit!32860)))

(declare-fun b!1732607 () Bool)

(assert (=> b!1732607 (= e!1108507 (equivClasses!1277 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))))))

(assert (= (and d!530371 res!778307) b!1732607))

(declare-fun m!2141291 () Bool)

(assert (=> d!530371 m!2141291))

(declare-fun m!2141293 () Bool)

(assert (=> b!1732607 m!2141293))

(assert (=> b!1732096 d!530371))

(declare-fun b!1732611 () Bool)

(declare-fun e!1108511 () List!19066)

(assert (=> b!1732611 (= e!1108511 (Cons!18996 (h!24397 lt!664732) (++!5197 (t!160839 lt!664732) suffix!1421)))))

(declare-fun b!1732610 () Bool)

(assert (=> b!1732610 (= e!1108511 suffix!1421)))

(declare-fun lt!664946 () List!19066)

(declare-fun e!1108510 () Bool)

(declare-fun b!1732613 () Bool)

(assert (=> b!1732613 (= e!1108510 (or (not (= suffix!1421 Nil!18996)) (= lt!664946 lt!664732)))))

(declare-fun b!1732612 () Bool)

(declare-fun res!778310 () Bool)

(assert (=> b!1732612 (=> (not res!778310) (not e!1108510))))

(assert (=> b!1732612 (= res!778310 (= (size!15093 lt!664946) (+ (size!15093 lt!664732) (size!15093 suffix!1421))))))

(declare-fun d!530375 () Bool)

(assert (=> d!530375 e!1108510))

(declare-fun res!778311 () Bool)

(assert (=> d!530375 (=> (not res!778311) (not e!1108510))))

(assert (=> d!530375 (= res!778311 (= (content!2721 lt!664946) (set.union (content!2721 lt!664732) (content!2721 suffix!1421))))))

(assert (=> d!530375 (= lt!664946 e!1108511)))

(declare-fun c!283004 () Bool)

(assert (=> d!530375 (= c!283004 (is-Nil!18996 lt!664732))))

(assert (=> d!530375 (= (++!5197 lt!664732 suffix!1421) lt!664946)))

(assert (= (and d!530375 c!283004) b!1732610))

(assert (= (and d!530375 (not c!283004)) b!1732611))

(assert (= (and d!530375 res!778311) b!1732612))

(assert (= (and b!1732612 res!778310) b!1732613))

(declare-fun m!2141295 () Bool)

(assert (=> b!1732611 m!2141295))

(declare-fun m!2141297 () Bool)

(assert (=> b!1732612 m!2141297))

(assert (=> b!1732612 m!2141091))

(declare-fun m!2141299 () Bool)

(assert (=> b!1732612 m!2141299))

(declare-fun m!2141301 () Bool)

(assert (=> d!530375 m!2141301))

(assert (=> d!530375 m!2141097))

(declare-fun m!2141303 () Bool)

(assert (=> d!530375 m!2141303))

(assert (=> b!1732075 d!530375))

(declare-fun b!1732620 () Bool)

(declare-fun e!1108516 () Bool)

(declare-fun e!1108518 () Bool)

(assert (=> b!1732620 (= e!1108516 e!1108518)))

(declare-fun res!778320 () Bool)

(assert (=> b!1732620 (=> (not res!778320) (not e!1108518))))

(assert (=> b!1732620 (= res!778320 (not (is-Nil!18996 lt!664722)))))

(declare-fun b!1732623 () Bool)

(declare-fun e!1108517 () Bool)

(assert (=> b!1732623 (= e!1108517 (>= (size!15093 lt!664722) (size!15093 lt!664732)))))

(declare-fun d!530377 () Bool)

(assert (=> d!530377 e!1108517))

(declare-fun res!778319 () Bool)

(assert (=> d!530377 (=> res!778319 e!1108517)))

(declare-fun lt!664947 () Bool)

(assert (=> d!530377 (= res!778319 (not lt!664947))))

(assert (=> d!530377 (= lt!664947 e!1108516)))

(declare-fun res!778318 () Bool)

(assert (=> d!530377 (=> res!778318 e!1108516)))

(assert (=> d!530377 (= res!778318 (is-Nil!18996 lt!664732))))

(assert (=> d!530377 (= (isPrefix!1613 lt!664732 lt!664722) lt!664947)))

(declare-fun b!1732622 () Bool)

(assert (=> b!1732622 (= e!1108518 (isPrefix!1613 (tail!2588 lt!664732) (tail!2588 lt!664722)))))

(declare-fun b!1732621 () Bool)

(declare-fun res!778321 () Bool)

(assert (=> b!1732621 (=> (not res!778321) (not e!1108518))))

(assert (=> b!1732621 (= res!778321 (= (head!3943 lt!664732) (head!3943 lt!664722)))))

(assert (= (and d!530377 (not res!778318)) b!1732620))

(assert (= (and b!1732620 res!778320) b!1732621))

(assert (= (and b!1732621 res!778321) b!1732622))

(assert (= (and d!530377 (not res!778319)) b!1732623))

(assert (=> b!1732623 m!2140989))

(assert (=> b!1732623 m!2141091))

(assert (=> b!1732622 m!2140919))

(assert (=> b!1732622 m!2141025))

(assert (=> b!1732622 m!2140919))

(assert (=> b!1732622 m!2141025))

(declare-fun m!2141305 () Bool)

(assert (=> b!1732622 m!2141305))

(assert (=> b!1732621 m!2140917))

(declare-fun m!2141307 () Bool)

(assert (=> b!1732621 m!2141307))

(assert (=> b!1732075 d!530377))

(assert (=> b!1732075 d!530275))

(declare-fun d!530379 () Bool)

(declare-fun e!1108524 () Bool)

(assert (=> d!530379 e!1108524))

(declare-fun res!778330 () Bool)

(assert (=> d!530379 (=> (not res!778330) (not e!1108524))))

(assert (=> d!530379 (= res!778330 (isDefined!3111 (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 (_1!10738 lt!664721))))))))

(declare-fun lt!664954 () Unit!32854)

(declare-fun choose!10603 (LexerInterface!3001 List!19067 List!19066 Token!6310) Unit!32854)

(assert (=> d!530379 (= lt!664954 (choose!10603 thiss!24550 rules!3447 lt!664722 (_1!10738 lt!664721)))))

(assert (=> d!530379 (rulesInvariant!2670 thiss!24550 rules!3447)))

(assert (=> d!530379 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!422 thiss!24550 rules!3447 lt!664722 (_1!10738 lt!664721)) lt!664954)))

(declare-fun b!1732632 () Bool)

(declare-fun res!778331 () Bool)

(assert (=> b!1732632 (=> (not res!778331) (not e!1108524))))

(assert (=> b!1732632 (= res!778331 (matchR!2174 (regex!3372 (get!5672 (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 (_1!10738 lt!664721)))))) (list!7681 (charsOf!2021 (_1!10738 lt!664721)))))))

(declare-fun b!1732633 () Bool)

(assert (=> b!1732633 (= e!1108524 (= (rule!5354 (_1!10738 lt!664721)) (get!5672 (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 (_1!10738 lt!664721)))))))))

(assert (= (and d!530379 res!778330) b!1732632))

(assert (= (and b!1732632 res!778331) b!1732633))

(assert (=> d!530379 m!2140619))

(assert (=> d!530379 m!2140619))

(declare-fun m!2141321 () Bool)

(assert (=> d!530379 m!2141321))

(declare-fun m!2141323 () Bool)

(assert (=> d!530379 m!2141323))

(assert (=> d!530379 m!2140667))

(assert (=> b!1732632 m!2140647))

(declare-fun m!2141325 () Bool)

(assert (=> b!1732632 m!2141325))

(assert (=> b!1732632 m!2140619))

(assert (=> b!1732632 m!2140631))

(assert (=> b!1732632 m!2140619))

(declare-fun m!2141327 () Bool)

(assert (=> b!1732632 m!2141327))

(assert (=> b!1732632 m!2140631))

(assert (=> b!1732632 m!2140647))

(assert (=> b!1732633 m!2140619))

(assert (=> b!1732633 m!2140619))

(assert (=> b!1732633 m!2141327))

(assert (=> b!1732075 d!530379))

(declare-fun d!530385 () Bool)

(assert (=> d!530385 (isPrefix!1613 lt!664732 (++!5197 lt!664732 suffix!1421))))

(declare-fun lt!664957 () Unit!32854)

(declare-fun choose!10604 (List!19066 List!19066) Unit!32854)

(assert (=> d!530385 (= lt!664957 (choose!10604 lt!664732 suffix!1421))))

(assert (=> d!530385 (= (lemmaConcatTwoListThenFirstIsPrefix!1123 lt!664732 suffix!1421) lt!664957)))

(declare-fun bs!402698 () Bool)

(assert (= bs!402698 d!530385))

(assert (=> bs!402698 m!2140639))

(assert (=> bs!402698 m!2140639))

(declare-fun m!2141329 () Bool)

(assert (=> bs!402698 m!2141329))

(declare-fun m!2141331 () Bool)

(assert (=> bs!402698 m!2141331))

(assert (=> b!1732075 d!530385))

(declare-fun b!1732634 () Bool)

(declare-fun res!778334 () Bool)

(declare-fun e!1108525 () Bool)

(assert (=> b!1732634 (=> (not res!778334) (not e!1108525))))

(declare-fun lt!664961 () Option!3769)

(assert (=> b!1732634 (= res!778334 (matchR!2174 (regex!3372 (rule!5354 (_1!10738 (get!5673 lt!664961)))) (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664961))))))))

(declare-fun bm!109954 () Bool)

(declare-fun call!109959 () Option!3769)

(assert (=> bm!109954 (= call!109959 (maxPrefixOneRule!931 thiss!24550 (h!24398 rules!3447) lt!664722))))

(declare-fun b!1732635 () Bool)

(declare-fun e!1108527 () Bool)

(assert (=> b!1732635 (= e!1108527 e!1108525)))

(declare-fun res!778335 () Bool)

(assert (=> b!1732635 (=> (not res!778335) (not e!1108525))))

(assert (=> b!1732635 (= res!778335 (isDefined!3112 lt!664961))))

(declare-fun b!1732636 () Bool)

(declare-fun res!778332 () Bool)

(assert (=> b!1732636 (=> (not res!778332) (not e!1108525))))

(assert (=> b!1732636 (= res!778332 (= (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664961)))) (originalCharacters!4186 (_1!10738 (get!5673 lt!664961)))))))

(declare-fun d!530387 () Bool)

(assert (=> d!530387 e!1108527))

(declare-fun res!778337 () Bool)

(assert (=> d!530387 (=> res!778337 e!1108527)))

(assert (=> d!530387 (= res!778337 (isEmpty!11955 lt!664961))))

(declare-fun e!1108526 () Option!3769)

(assert (=> d!530387 (= lt!664961 e!1108526)))

(declare-fun c!283005 () Bool)

(assert (=> d!530387 (= c!283005 (and (is-Cons!18997 rules!3447) (is-Nil!18997 (t!160840 rules!3447))))))

(declare-fun lt!664959 () Unit!32854)

(declare-fun lt!664958 () Unit!32854)

(assert (=> d!530387 (= lt!664959 lt!664958)))

(assert (=> d!530387 (isPrefix!1613 lt!664722 lt!664722)))

(assert (=> d!530387 (= lt!664958 (lemmaIsPrefixRefl!1086 lt!664722 lt!664722))))

(assert (=> d!530387 (rulesValidInductive!1123 thiss!24550 rules!3447)))

(assert (=> d!530387 (= (maxPrefix!1555 thiss!24550 rules!3447 lt!664722) lt!664961)))

(declare-fun b!1732637 () Bool)

(declare-fun res!778336 () Bool)

(assert (=> b!1732637 (=> (not res!778336) (not e!1108525))))

(assert (=> b!1732637 (= res!778336 (= (value!105776 (_1!10738 (get!5673 lt!664961))) (apply!5177 (transformation!3372 (rule!5354 (_1!10738 (get!5673 lt!664961)))) (seqFromList!2346 (originalCharacters!4186 (_1!10738 (get!5673 lt!664961)))))))))

(declare-fun b!1732638 () Bool)

(assert (=> b!1732638 (= e!1108526 call!109959)))

(declare-fun b!1732639 () Bool)

(declare-fun lt!664962 () Option!3769)

(declare-fun lt!664960 () Option!3769)

(assert (=> b!1732639 (= e!1108526 (ite (and (is-None!3768 lt!664962) (is-None!3768 lt!664960)) None!3768 (ite (is-None!3768 lt!664960) lt!664962 (ite (is-None!3768 lt!664962) lt!664960 (ite (>= (size!15091 (_1!10738 (v!25189 lt!664962))) (size!15091 (_1!10738 (v!25189 lt!664960)))) lt!664962 lt!664960)))))))

(assert (=> b!1732639 (= lt!664962 call!109959)))

(assert (=> b!1732639 (= lt!664960 (maxPrefix!1555 thiss!24550 (t!160840 rules!3447) lt!664722))))

(declare-fun b!1732640 () Bool)

(declare-fun res!778333 () Bool)

(assert (=> b!1732640 (=> (not res!778333) (not e!1108525))))

(assert (=> b!1732640 (= res!778333 (< (size!15093 (_2!10738 (get!5673 lt!664961))) (size!15093 lt!664722)))))

(declare-fun b!1732641 () Bool)

(declare-fun res!778338 () Bool)

(assert (=> b!1732641 (=> (not res!778338) (not e!1108525))))

(assert (=> b!1732641 (= res!778338 (= (++!5197 (list!7681 (charsOf!2021 (_1!10738 (get!5673 lt!664961)))) (_2!10738 (get!5673 lt!664961))) lt!664722))))

(declare-fun b!1732642 () Bool)

(assert (=> b!1732642 (= e!1108525 (contains!3394 rules!3447 (rule!5354 (_1!10738 (get!5673 lt!664961)))))))

(assert (= (and d!530387 c!283005) b!1732638))

(assert (= (and d!530387 (not c!283005)) b!1732639))

(assert (= (or b!1732638 b!1732639) bm!109954))

(assert (= (and d!530387 (not res!778337)) b!1732635))

(assert (= (and b!1732635 res!778335) b!1732636))

(assert (= (and b!1732636 res!778332) b!1732640))

(assert (= (and b!1732640 res!778333) b!1732641))

(assert (= (and b!1732641 res!778338) b!1732637))

(assert (= (and b!1732637 res!778336) b!1732634))

(assert (= (and b!1732634 res!778334) b!1732642))

(declare-fun m!2141333 () Bool)

(assert (=> b!1732637 m!2141333))

(declare-fun m!2141335 () Bool)

(assert (=> b!1732637 m!2141335))

(assert (=> b!1732637 m!2141335))

(declare-fun m!2141337 () Bool)

(assert (=> b!1732637 m!2141337))

(declare-fun m!2141339 () Bool)

(assert (=> d!530387 m!2141339))

(declare-fun m!2141341 () Bool)

(assert (=> d!530387 m!2141341))

(declare-fun m!2141343 () Bool)

(assert (=> d!530387 m!2141343))

(assert (=> d!530387 m!2140669))

(assert (=> b!1732634 m!2141333))

(declare-fun m!2141345 () Bool)

(assert (=> b!1732634 m!2141345))

(assert (=> b!1732634 m!2141345))

(declare-fun m!2141347 () Bool)

(assert (=> b!1732634 m!2141347))

(assert (=> b!1732634 m!2141347))

(declare-fun m!2141349 () Bool)

(assert (=> b!1732634 m!2141349))

(declare-fun m!2141351 () Bool)

(assert (=> b!1732635 m!2141351))

(assert (=> b!1732641 m!2141333))

(assert (=> b!1732641 m!2141345))

(assert (=> b!1732641 m!2141345))

(assert (=> b!1732641 m!2141347))

(assert (=> b!1732641 m!2141347))

(declare-fun m!2141353 () Bool)

(assert (=> b!1732641 m!2141353))

(assert (=> b!1732642 m!2141333))

(declare-fun m!2141355 () Bool)

(assert (=> b!1732642 m!2141355))

(assert (=> b!1732640 m!2141333))

(declare-fun m!2141357 () Bool)

(assert (=> b!1732640 m!2141357))

(assert (=> b!1732640 m!2140989))

(declare-fun m!2141359 () Bool)

(assert (=> bm!109954 m!2141359))

(declare-fun m!2141361 () Bool)

(assert (=> b!1732639 m!2141361))

(assert (=> b!1732636 m!2141333))

(assert (=> b!1732636 m!2141345))

(assert (=> b!1732636 m!2141345))

(assert (=> b!1732636 m!2141347))

(assert (=> b!1732075 d!530387))

(declare-fun b!1732663 () Bool)

(declare-fun res!778350 () Bool)

(declare-fun e!1108539 () Bool)

(assert (=> b!1732663 (=> (not res!778350) (not e!1108539))))

(declare-fun lt!665061 () Token!6310)

(assert (=> b!1732663 (= res!778350 (matchR!2174 (regex!3372 (get!5672 (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 lt!665061))))) (list!7681 (charsOf!2021 lt!665061))))))

(declare-fun b!1732666 () Bool)

(declare-fun e!1108538 () Unit!32854)

(declare-fun Unit!32861 () Unit!32854)

(assert (=> b!1732666 (= e!1108538 Unit!32861)))

(declare-fun b!1732664 () Bool)

(assert (=> b!1732664 (= e!1108539 (= (rule!5354 lt!665061) (get!5672 (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 lt!665061))))))))

(declare-fun d!530389 () Bool)

(assert (=> d!530389 (isDefined!3112 (maxPrefix!1555 thiss!24550 rules!3447 (++!5197 lt!664732 suffix!1421)))))

(declare-fun lt!665054 () Unit!32854)

(assert (=> d!530389 (= lt!665054 e!1108538)))

(declare-fun c!283011 () Bool)

(assert (=> d!530389 (= c!283011 (isEmpty!11955 (maxPrefix!1555 thiss!24550 rules!3447 (++!5197 lt!664732 suffix!1421))))))

(declare-fun lt!665052 () Unit!32854)

(declare-fun lt!665050 () Unit!32854)

(assert (=> d!530389 (= lt!665052 lt!665050)))

(assert (=> d!530389 e!1108539))

(declare-fun res!778349 () Bool)

(assert (=> d!530389 (=> (not res!778349) (not e!1108539))))

(assert (=> d!530389 (= res!778349 (isDefined!3111 (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 lt!665061)))))))

(assert (=> d!530389 (= lt!665050 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!422 thiss!24550 rules!3447 lt!664732 lt!665061))))

(declare-fun lt!665058 () Unit!32854)

(declare-fun lt!665056 () Unit!32854)

(assert (=> d!530389 (= lt!665058 lt!665056)))

(declare-fun lt!665057 () List!19066)

(assert (=> d!530389 (isPrefix!1613 lt!665057 (++!5197 lt!664732 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!272 (List!19066 List!19066 List!19066) Unit!32854)

(assert (=> d!530389 (= lt!665056 (lemmaPrefixStaysPrefixWhenAddingToSuffix!272 lt!665057 lt!664732 suffix!1421))))

(assert (=> d!530389 (= lt!665057 (list!7681 (charsOf!2021 lt!665061)))))

(declare-fun lt!665055 () Unit!32854)

(declare-fun lt!665053 () Unit!32854)

(assert (=> d!530389 (= lt!665055 lt!665053)))

(declare-fun lt!665059 () List!19066)

(declare-fun lt!665060 () List!19066)

(assert (=> d!530389 (isPrefix!1613 lt!665059 (++!5197 lt!665059 lt!665060))))

(assert (=> d!530389 (= lt!665053 (lemmaConcatTwoListThenFirstIsPrefix!1123 lt!665059 lt!665060))))

(assert (=> d!530389 (= lt!665060 (_2!10738 (get!5673 (maxPrefix!1555 thiss!24550 rules!3447 lt!664732))))))

(assert (=> d!530389 (= lt!665059 (list!7681 (charsOf!2021 lt!665061)))))

(declare-datatypes ((List!19073 0))(
  ( (Nil!19003) (Cons!19003 (h!24404 Token!6310) (t!160924 List!19073)) )
))
(declare-fun head!3945 (List!19073) Token!6310)

(declare-datatypes ((IArray!12645 0))(
  ( (IArray!12646 (innerList!6380 List!19073)) )
))
(declare-datatypes ((Conc!6320 0))(
  ( (Node!6320 (left!15176 Conc!6320) (right!15506 Conc!6320) (csize!12870 Int) (cheight!6531 Int)) (Leaf!9227 (xs!9196 IArray!12645) (csize!12871 Int)) (Empty!6320) )
))
(declare-datatypes ((BalanceConc!12584 0))(
  ( (BalanceConc!12585 (c!283062 Conc!6320)) )
))
(declare-fun list!7685 (BalanceConc!12584) List!19073)

(declare-datatypes ((tuple2!18678 0))(
  ( (tuple2!18679 (_1!10741 BalanceConc!12584) (_2!10741 BalanceConc!12580)) )
))
(declare-fun lex!1411 (LexerInterface!3001 List!19067 BalanceConc!12580) tuple2!18678)

(assert (=> d!530389 (= lt!665061 (head!3945 (list!7685 (_1!10741 (lex!1411 thiss!24550 rules!3447 (seqFromList!2346 lt!664732))))))))

(assert (=> d!530389 (not (isEmpty!11951 rules!3447))))

(assert (=> d!530389 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!525 thiss!24550 rules!3447 lt!664732 suffix!1421) lt!665054)))

(declare-fun b!1732665 () Bool)

(declare-fun Unit!32862 () Unit!32854)

(assert (=> b!1732665 (= e!1108538 Unit!32862)))

(declare-fun lt!665062 () List!19066)

(assert (=> b!1732665 (= lt!665062 (++!5197 lt!664732 suffix!1421))))

(declare-fun lt!665063 () Unit!32854)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!280 (LexerInterface!3001 Rule!6544 List!19067 List!19066) Unit!32854)

(assert (=> b!1732665 (= lt!665063 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!280 thiss!24550 (rule!5354 lt!665061) rules!3447 lt!665062))))

(assert (=> b!1732665 (isEmpty!11955 (maxPrefixOneRule!931 thiss!24550 (rule!5354 lt!665061) lt!665062))))

(declare-fun lt!665049 () Unit!32854)

(assert (=> b!1732665 (= lt!665049 lt!665063)))

(declare-fun lt!665064 () List!19066)

(assert (=> b!1732665 (= lt!665064 (list!7681 (charsOf!2021 lt!665061)))))

(declare-fun lt!665051 () Unit!32854)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!276 (LexerInterface!3001 Rule!6544 List!19066 List!19066) Unit!32854)

(assert (=> b!1732665 (= lt!665051 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!276 thiss!24550 (rule!5354 lt!665061) lt!665064 (++!5197 lt!664732 suffix!1421)))))

(assert (=> b!1732665 (not (matchR!2174 (regex!3372 (rule!5354 lt!665061)) lt!665064))))

(declare-fun lt!665065 () Unit!32854)

(assert (=> b!1732665 (= lt!665065 lt!665051)))

(assert (=> b!1732665 false))

(assert (= (and d!530389 res!778349) b!1732663))

(assert (= (and b!1732663 res!778350) b!1732664))

(assert (= (and d!530389 c!283011) b!1732665))

(assert (= (and d!530389 (not c!283011)) b!1732666))

(declare-fun m!2141417 () Bool)

(assert (=> b!1732663 m!2141417))

(declare-fun m!2141419 () Bool)

(assert (=> b!1732663 m!2141419))

(declare-fun m!2141421 () Bool)

(assert (=> b!1732663 m!2141421))

(assert (=> b!1732663 m!2141417))

(assert (=> b!1732663 m!2141421))

(declare-fun m!2141423 () Bool)

(assert (=> b!1732663 m!2141423))

(assert (=> b!1732663 m!2141423))

(declare-fun m!2141425 () Bool)

(assert (=> b!1732663 m!2141425))

(assert (=> b!1732664 m!2141423))

(assert (=> b!1732664 m!2141423))

(assert (=> b!1732664 m!2141425))

(assert (=> d!530389 m!2141421))

(assert (=> d!530389 m!2141417))

(assert (=> d!530389 m!2141423))

(declare-fun m!2141427 () Bool)

(assert (=> d!530389 m!2141427))

(assert (=> d!530389 m!2140639))

(declare-fun m!2141429 () Bool)

(assert (=> d!530389 m!2141429))

(declare-fun m!2141431 () Bool)

(assert (=> d!530389 m!2141431))

(declare-fun m!2141433 () Bool)

(assert (=> d!530389 m!2141433))

(assert (=> d!530389 m!2140743))

(assert (=> d!530389 m!2141433))

(declare-fun m!2141435 () Bool)

(assert (=> d!530389 m!2141435))

(declare-fun m!2141437 () Bool)

(assert (=> d!530389 m!2141437))

(declare-fun m!2141439 () Bool)

(assert (=> d!530389 m!2141439))

(assert (=> d!530389 m!2141437))

(assert (=> d!530389 m!2140595))

(assert (=> d!530389 m!2140639))

(assert (=> d!530389 m!2140595))

(declare-fun m!2141441 () Bool)

(assert (=> d!530389 m!2141441))

(assert (=> d!530389 m!2141421))

(declare-fun m!2141443 () Bool)

(assert (=> d!530389 m!2141443))

(assert (=> d!530389 m!2141423))

(declare-fun m!2141445 () Bool)

(assert (=> d!530389 m!2141445))

(assert (=> d!530389 m!2141429))

(declare-fun m!2141447 () Bool)

(assert (=> d!530389 m!2141447))

(assert (=> d!530389 m!2141429))

(declare-fun m!2141449 () Bool)

(assert (=> d!530389 m!2141449))

(assert (=> d!530389 m!2141431))

(declare-fun m!2141451 () Bool)

(assert (=> d!530389 m!2141451))

(declare-fun m!2141453 () Bool)

(assert (=> d!530389 m!2141453))

(assert (=> d!530389 m!2140639))

(declare-fun m!2141455 () Bool)

(assert (=> d!530389 m!2141455))

(assert (=> b!1732665 m!2141421))

(assert (=> b!1732665 m!2141417))

(assert (=> b!1732665 m!2140639))

(declare-fun m!2141457 () Bool)

(assert (=> b!1732665 m!2141457))

(declare-fun m!2141459 () Bool)

(assert (=> b!1732665 m!2141459))

(declare-fun m!2141461 () Bool)

(assert (=> b!1732665 m!2141461))

(declare-fun m!2141463 () Bool)

(assert (=> b!1732665 m!2141463))

(assert (=> b!1732665 m!2141459))

(assert (=> b!1732665 m!2140639))

(declare-fun m!2141465 () Bool)

(assert (=> b!1732665 m!2141465))

(assert (=> b!1732665 m!2141421))

(assert (=> b!1732075 d!530389))

(declare-fun d!530395 () Bool)

(declare-fun isEmpty!11956 (Option!3768) Bool)

(assert (=> d!530395 (= (isDefined!3111 lt!664716) (not (isEmpty!11956 lt!664716)))))

(declare-fun bs!402700 () Bool)

(assert (= bs!402700 d!530395))

(declare-fun m!2141467 () Bool)

(assert (=> bs!402700 m!2141467))

(assert (=> b!1732075 d!530395))

(declare-fun d!530397 () Bool)

(assert (=> d!530397 (= (get!5673 lt!664731) (v!25189 lt!664731))))

(assert (=> b!1732075 d!530397))

(declare-fun b!1732679 () Bool)

(declare-fun e!1108548 () Bool)

(declare-fun e!1108550 () Bool)

(assert (=> b!1732679 (= e!1108548 e!1108550)))

(declare-fun res!778357 () Bool)

(assert (=> b!1732679 (=> (not res!778357) (not e!1108550))))

(assert (=> b!1732679 (= res!778357 (not (is-Nil!18996 lt!664722)))))

(declare-fun b!1732682 () Bool)

(declare-fun e!1108549 () Bool)

(assert (=> b!1732682 (= e!1108549 (>= (size!15093 lt!664722) (size!15093 lt!664724)))))

(declare-fun d!530399 () Bool)

(assert (=> d!530399 e!1108549))

(declare-fun res!778356 () Bool)

(assert (=> d!530399 (=> res!778356 e!1108549)))

(declare-fun lt!665072 () Bool)

(assert (=> d!530399 (= res!778356 (not lt!665072))))

(assert (=> d!530399 (= lt!665072 e!1108548)))

(declare-fun res!778355 () Bool)

(assert (=> d!530399 (=> res!778355 e!1108548)))

(assert (=> d!530399 (= res!778355 (is-Nil!18996 lt!664724))))

(assert (=> d!530399 (= (isPrefix!1613 lt!664724 lt!664722) lt!665072)))

(declare-fun b!1732681 () Bool)

(assert (=> b!1732681 (= e!1108550 (isPrefix!1613 (tail!2588 lt!664724) (tail!2588 lt!664722)))))

(declare-fun b!1732680 () Bool)

(declare-fun res!778358 () Bool)

(assert (=> b!1732680 (=> (not res!778358) (not e!1108550))))

(assert (=> b!1732680 (= res!778358 (= (head!3943 lt!664724) (head!3943 lt!664722)))))

(assert (= (and d!530399 (not res!778355)) b!1732679))

(assert (= (and b!1732679 res!778357) b!1732680))

(assert (= (and b!1732680 res!778358) b!1732681))

(assert (= (and d!530399 (not res!778356)) b!1732682))

(assert (=> b!1732682 m!2140989))

(assert (=> b!1732682 m!2140737))

(assert (=> b!1732681 m!2140949))

(assert (=> b!1732681 m!2141025))

(assert (=> b!1732681 m!2140949))

(assert (=> b!1732681 m!2141025))

(declare-fun m!2141469 () Bool)

(assert (=> b!1732681 m!2141469))

(assert (=> b!1732680 m!2140955))

(assert (=> b!1732680 m!2141307))

(assert (=> b!1732075 d!530399))

(declare-fun b!1732690 () Bool)

(declare-fun e!1108556 () List!19066)

(assert (=> b!1732690 (= e!1108556 (Cons!18996 (h!24397 lt!664724) (++!5197 (t!160839 lt!664724) (_2!10738 lt!664721))))))

(declare-fun b!1732689 () Bool)

(assert (=> b!1732689 (= e!1108556 (_2!10738 lt!664721))))

(declare-fun b!1732692 () Bool)

(declare-fun lt!665076 () List!19066)

(declare-fun e!1108555 () Bool)

(assert (=> b!1732692 (= e!1108555 (or (not (= (_2!10738 lt!664721) Nil!18996)) (= lt!665076 lt!664724)))))

(declare-fun b!1732691 () Bool)

(declare-fun res!778361 () Bool)

(assert (=> b!1732691 (=> (not res!778361) (not e!1108555))))

(assert (=> b!1732691 (= res!778361 (= (size!15093 lt!665076) (+ (size!15093 lt!664724) (size!15093 (_2!10738 lt!664721)))))))

(declare-fun d!530401 () Bool)

(assert (=> d!530401 e!1108555))

(declare-fun res!778362 () Bool)

(assert (=> d!530401 (=> (not res!778362) (not e!1108555))))

(assert (=> d!530401 (= res!778362 (= (content!2721 lt!665076) (set.union (content!2721 lt!664724) (content!2721 (_2!10738 lt!664721)))))))

(assert (=> d!530401 (= lt!665076 e!1108556)))

(declare-fun c!283018 () Bool)

(assert (=> d!530401 (= c!283018 (is-Nil!18996 lt!664724))))

(assert (=> d!530401 (= (++!5197 lt!664724 (_2!10738 lt!664721)) lt!665076)))

(assert (= (and d!530401 c!283018) b!1732689))

(assert (= (and d!530401 (not c!283018)) b!1732690))

(assert (= (and d!530401 res!778362) b!1732691))

(assert (= (and b!1732691 res!778361) b!1732692))

(declare-fun m!2141483 () Bool)

(assert (=> b!1732690 m!2141483))

(declare-fun m!2141485 () Bool)

(assert (=> b!1732691 m!2141485))

(assert (=> b!1732691 m!2140737))

(declare-fun m!2141489 () Bool)

(assert (=> b!1732691 m!2141489))

(declare-fun m!2141491 () Bool)

(assert (=> d!530401 m!2141491))

(declare-fun m!2141493 () Bool)

(assert (=> d!530401 m!2141493))

(declare-fun m!2141495 () Bool)

(assert (=> d!530401 m!2141495))

(assert (=> b!1732075 d!530401))

(declare-fun d!530407 () Bool)

(assert (=> d!530407 (= (list!7681 lt!664714) (list!7683 (c!282926 lt!664714)))))

(declare-fun bs!402702 () Bool)

(assert (= bs!402702 d!530407))

(declare-fun m!2141497 () Bool)

(assert (=> bs!402702 m!2141497))

(assert (=> b!1732075 d!530407))

(declare-fun b!1732705 () Bool)

(declare-fun e!1108567 () Bool)

(declare-fun e!1108568 () Bool)

(assert (=> b!1732705 (= e!1108567 e!1108568)))

(declare-fun res!778367 () Bool)

(assert (=> b!1732705 (=> (not res!778367) (not e!1108568))))

(declare-fun lt!665083 () Option!3768)

(assert (=> b!1732705 (= res!778367 (contains!3394 rules!3447 (get!5672 lt!665083)))))

(declare-fun b!1732706 () Bool)

(assert (=> b!1732706 (= e!1108568 (= (tag!3700 (get!5672 lt!665083)) (tag!3700 (rule!5354 (_1!10738 lt!664721)))))))

(declare-fun b!1732707 () Bool)

(declare-fun lt!665084 () Unit!32854)

(declare-fun lt!665085 () Unit!32854)

(assert (=> b!1732707 (= lt!665084 lt!665085)))

(assert (=> b!1732707 (rulesInvariant!2670 thiss!24550 (t!160840 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!151 (LexerInterface!3001 Rule!6544 List!19067) Unit!32854)

(assert (=> b!1732707 (= lt!665085 (lemmaInvariantOnRulesThenOnTail!151 thiss!24550 (h!24398 rules!3447) (t!160840 rules!3447)))))

(declare-fun e!1108565 () Option!3768)

(assert (=> b!1732707 (= e!1108565 (getRuleFromTag!422 thiss!24550 (t!160840 rules!3447) (tag!3700 (rule!5354 (_1!10738 lt!664721)))))))

(declare-fun b!1732708 () Bool)

(declare-fun e!1108566 () Option!3768)

(assert (=> b!1732708 (= e!1108566 (Some!3767 (h!24398 rules!3447)))))

(declare-fun d!530409 () Bool)

(assert (=> d!530409 e!1108567))

(declare-fun res!778368 () Bool)

(assert (=> d!530409 (=> res!778368 e!1108567)))

(assert (=> d!530409 (= res!778368 (isEmpty!11956 lt!665083))))

(assert (=> d!530409 (= lt!665083 e!1108566)))

(declare-fun c!283024 () Bool)

(assert (=> d!530409 (= c!283024 (and (is-Cons!18997 rules!3447) (= (tag!3700 (h!24398 rules!3447)) (tag!3700 (rule!5354 (_1!10738 lt!664721))))))))

(assert (=> d!530409 (rulesInvariant!2670 thiss!24550 rules!3447)))

(assert (=> d!530409 (= (getRuleFromTag!422 thiss!24550 rules!3447 (tag!3700 (rule!5354 (_1!10738 lt!664721)))) lt!665083)))

(declare-fun b!1732709 () Bool)

(assert (=> b!1732709 (= e!1108565 None!3767)))

(declare-fun b!1732710 () Bool)

(assert (=> b!1732710 (= e!1108566 e!1108565)))

(declare-fun c!283023 () Bool)

(assert (=> b!1732710 (= c!283023 (and (is-Cons!18997 rules!3447) (not (= (tag!3700 (h!24398 rules!3447)) (tag!3700 (rule!5354 (_1!10738 lt!664721)))))))))

(assert (= (and d!530409 c!283024) b!1732708))

(assert (= (and d!530409 (not c!283024)) b!1732710))

(assert (= (and b!1732710 c!283023) b!1732707))

(assert (= (and b!1732710 (not c!283023)) b!1732709))

(assert (= (and d!530409 (not res!778368)) b!1732705))

(assert (= (and b!1732705 res!778367) b!1732706))

(declare-fun m!2141501 () Bool)

(assert (=> b!1732705 m!2141501))

(assert (=> b!1732705 m!2141501))

(declare-fun m!2141503 () Bool)

(assert (=> b!1732705 m!2141503))

(assert (=> b!1732706 m!2141501))

(declare-fun m!2141505 () Bool)

(assert (=> b!1732707 m!2141505))

(declare-fun m!2141507 () Bool)

(assert (=> b!1732707 m!2141507))

(declare-fun m!2141509 () Bool)

(assert (=> b!1732707 m!2141509))

(declare-fun m!2141511 () Bool)

(assert (=> d!530409 m!2141511))

(assert (=> d!530409 m!2140667))

(assert (=> b!1732075 d!530409))

(declare-fun d!530415 () Bool)

(assert (=> d!530415 (isPrefix!1613 lt!664724 (++!5197 lt!664724 (_2!10738 lt!664721)))))

(declare-fun lt!665086 () Unit!32854)

(assert (=> d!530415 (= lt!665086 (choose!10604 lt!664724 (_2!10738 lt!664721)))))

(assert (=> d!530415 (= (lemmaConcatTwoListThenFirstIsPrefix!1123 lt!664724 (_2!10738 lt!664721)) lt!665086)))

(declare-fun bs!402704 () Bool)

(assert (= bs!402704 d!530415))

(assert (=> bs!402704 m!2140623))

(assert (=> bs!402704 m!2140623))

(assert (=> bs!402704 m!2140625))

(declare-fun m!2141513 () Bool)

(assert (=> bs!402704 m!2141513))

(assert (=> b!1732075 d!530415))

(declare-fun b!1732711 () Bool)

(declare-fun e!1108569 () Bool)

(declare-fun e!1108571 () Bool)

(assert (=> b!1732711 (= e!1108569 e!1108571)))

(declare-fun res!778371 () Bool)

(assert (=> b!1732711 (=> (not res!778371) (not e!1108571))))

(assert (=> b!1732711 (= res!778371 (not (is-Nil!18996 (++!5197 lt!664724 (_2!10738 lt!664721)))))))

(declare-fun b!1732714 () Bool)

(declare-fun e!1108570 () Bool)

(assert (=> b!1732714 (= e!1108570 (>= (size!15093 (++!5197 lt!664724 (_2!10738 lt!664721))) (size!15093 lt!664724)))))

(declare-fun d!530417 () Bool)

(assert (=> d!530417 e!1108570))

(declare-fun res!778370 () Bool)

(assert (=> d!530417 (=> res!778370 e!1108570)))

(declare-fun lt!665087 () Bool)

(assert (=> d!530417 (= res!778370 (not lt!665087))))

(assert (=> d!530417 (= lt!665087 e!1108569)))

(declare-fun res!778369 () Bool)

(assert (=> d!530417 (=> res!778369 e!1108569)))

(assert (=> d!530417 (= res!778369 (is-Nil!18996 lt!664724))))

(assert (=> d!530417 (= (isPrefix!1613 lt!664724 (++!5197 lt!664724 (_2!10738 lt!664721))) lt!665087)))

(declare-fun b!1732713 () Bool)

(assert (=> b!1732713 (= e!1108571 (isPrefix!1613 (tail!2588 lt!664724) (tail!2588 (++!5197 lt!664724 (_2!10738 lt!664721)))))))

(declare-fun b!1732712 () Bool)

(declare-fun res!778372 () Bool)

(assert (=> b!1732712 (=> (not res!778372) (not e!1108571))))

(assert (=> b!1732712 (= res!778372 (= (head!3943 lt!664724) (head!3943 (++!5197 lt!664724 (_2!10738 lt!664721)))))))

(assert (= (and d!530417 (not res!778369)) b!1732711))

(assert (= (and b!1732711 res!778371) b!1732712))

(assert (= (and b!1732712 res!778372) b!1732713))

(assert (= (and d!530417 (not res!778370)) b!1732714))

(assert (=> b!1732714 m!2140623))

(declare-fun m!2141515 () Bool)

(assert (=> b!1732714 m!2141515))

(assert (=> b!1732714 m!2140737))

(assert (=> b!1732713 m!2140949))

(assert (=> b!1732713 m!2140623))

(declare-fun m!2141517 () Bool)

(assert (=> b!1732713 m!2141517))

(assert (=> b!1732713 m!2140949))

(assert (=> b!1732713 m!2141517))

(declare-fun m!2141519 () Bool)

(assert (=> b!1732713 m!2141519))

(assert (=> b!1732712 m!2140955))

(assert (=> b!1732712 m!2140623))

(declare-fun m!2141521 () Bool)

(assert (=> b!1732712 m!2141521))

(assert (=> b!1732075 d!530417))

(declare-fun d!530419 () Bool)

(assert (=> d!530419 (= (head!3943 lt!664704) (h!24397 lt!664704))))

(assert (=> b!1732074 d!530419))

(declare-fun b!1732715 () Bool)

(declare-fun e!1108572 () Bool)

(declare-fun e!1108574 () Bool)

(assert (=> b!1732715 (= e!1108572 e!1108574)))

(declare-fun res!778375 () Bool)

(assert (=> b!1732715 (=> (not res!778375) (not e!1108574))))

(assert (=> b!1732715 (= res!778375 (not (is-Nil!18996 lt!664722)))))

(declare-fun b!1732718 () Bool)

(declare-fun e!1108573 () Bool)

(assert (=> b!1732718 (= e!1108573 (>= (size!15093 lt!664722) (size!15093 lt!664719)))))

(declare-fun d!530421 () Bool)

(assert (=> d!530421 e!1108573))

(declare-fun res!778374 () Bool)

(assert (=> d!530421 (=> res!778374 e!1108573)))

(declare-fun lt!665088 () Bool)

(assert (=> d!530421 (= res!778374 (not lt!665088))))

(assert (=> d!530421 (= lt!665088 e!1108572)))

(declare-fun res!778373 () Bool)

(assert (=> d!530421 (=> res!778373 e!1108572)))

(assert (=> d!530421 (= res!778373 (is-Nil!18996 lt!664719))))

(assert (=> d!530421 (= (isPrefix!1613 lt!664719 lt!664722) lt!665088)))

(declare-fun b!1732717 () Bool)

(assert (=> b!1732717 (= e!1108574 (isPrefix!1613 (tail!2588 lt!664719) (tail!2588 lt!664722)))))

(declare-fun b!1732716 () Bool)

(declare-fun res!778376 () Bool)

(assert (=> b!1732716 (=> (not res!778376) (not e!1108574))))

(assert (=> b!1732716 (= res!778376 (= (head!3943 lt!664719) (head!3943 lt!664722)))))

(assert (= (and d!530421 (not res!778373)) b!1732715))

(assert (= (and b!1732715 res!778375) b!1732716))

(assert (= (and b!1732716 res!778376) b!1732717))

(assert (= (and d!530421 (not res!778374)) b!1732718))

(assert (=> b!1732718 m!2140989))

(assert (=> b!1732718 m!2140945))

(assert (=> b!1732717 m!2140947))

(assert (=> b!1732717 m!2141025))

(assert (=> b!1732717 m!2140947))

(assert (=> b!1732717 m!2141025))

(declare-fun m!2141523 () Bool)

(assert (=> b!1732717 m!2141523))

(assert (=> b!1732716 m!2140953))

(assert (=> b!1732716 m!2141307))

(assert (=> b!1732074 d!530421))

(declare-fun d!530423 () Bool)

(assert (=> d!530423 (isPrefix!1613 (++!5197 lt!664732 (Cons!18996 (head!3943 (getSuffix!807 lt!664722 lt!664732)) Nil!18996)) lt!664722)))

(declare-fun lt!665091 () Unit!32854)

(declare-fun choose!10608 (List!19066 List!19066) Unit!32854)

(assert (=> d!530423 (= lt!665091 (choose!10608 lt!664732 lt!664722))))

(assert (=> d!530423 (isPrefix!1613 lt!664732 lt!664722)))

(assert (=> d!530423 (= (lemmaAddHeadSuffixToPrefixStillPrefix!208 lt!664732 lt!664722) lt!665091)))

(declare-fun bs!402705 () Bool)

(assert (= bs!402705 d!530423))

(assert (=> bs!402705 m!2140687))

(declare-fun m!2141525 () Bool)

(assert (=> bs!402705 m!2141525))

(declare-fun m!2141527 () Bool)

(assert (=> bs!402705 m!2141527))

(assert (=> bs!402705 m!2140627))

(declare-fun m!2141529 () Bool)

(assert (=> bs!402705 m!2141529))

(assert (=> bs!402705 m!2140687))

(assert (=> bs!402705 m!2141527))

(declare-fun m!2141531 () Bool)

(assert (=> bs!402705 m!2141531))

(assert (=> b!1732074 d!530423))

(declare-fun b!1732720 () Bool)

(declare-fun e!1108576 () List!19066)

(assert (=> b!1732720 (= e!1108576 (Cons!18996 (h!24397 lt!664732) (++!5197 (t!160839 lt!664732) (Cons!18996 (head!3943 lt!664704) Nil!18996))))))

(declare-fun b!1732719 () Bool)

(assert (=> b!1732719 (= e!1108576 (Cons!18996 (head!3943 lt!664704) Nil!18996))))

(declare-fun e!1108575 () Bool)

(declare-fun lt!665092 () List!19066)

(declare-fun b!1732722 () Bool)

(assert (=> b!1732722 (= e!1108575 (or (not (= (Cons!18996 (head!3943 lt!664704) Nil!18996) Nil!18996)) (= lt!665092 lt!664732)))))

(declare-fun b!1732721 () Bool)

(declare-fun res!778377 () Bool)

(assert (=> b!1732721 (=> (not res!778377) (not e!1108575))))

(assert (=> b!1732721 (= res!778377 (= (size!15093 lt!665092) (+ (size!15093 lt!664732) (size!15093 (Cons!18996 (head!3943 lt!664704) Nil!18996)))))))

(declare-fun d!530425 () Bool)

(assert (=> d!530425 e!1108575))

(declare-fun res!778378 () Bool)

(assert (=> d!530425 (=> (not res!778378) (not e!1108575))))

(assert (=> d!530425 (= res!778378 (= (content!2721 lt!665092) (set.union (content!2721 lt!664732) (content!2721 (Cons!18996 (head!3943 lt!664704) Nil!18996)))))))

(assert (=> d!530425 (= lt!665092 e!1108576)))

(declare-fun c!283025 () Bool)

(assert (=> d!530425 (= c!283025 (is-Nil!18996 lt!664732))))

(assert (=> d!530425 (= (++!5197 lt!664732 (Cons!18996 (head!3943 lt!664704) Nil!18996)) lt!665092)))

(assert (= (and d!530425 c!283025) b!1732719))

(assert (= (and d!530425 (not c!283025)) b!1732720))

(assert (= (and d!530425 res!778378) b!1732721))

(assert (= (and b!1732721 res!778377) b!1732722))

(declare-fun m!2141533 () Bool)

(assert (=> b!1732720 m!2141533))

(declare-fun m!2141535 () Bool)

(assert (=> b!1732721 m!2141535))

(assert (=> b!1732721 m!2141091))

(declare-fun m!2141537 () Bool)

(assert (=> b!1732721 m!2141537))

(declare-fun m!2141539 () Bool)

(assert (=> d!530425 m!2141539))

(assert (=> d!530425 m!2141097))

(declare-fun m!2141541 () Bool)

(assert (=> d!530425 m!2141541))

(assert (=> b!1732074 d!530425))

(declare-fun b!1732723 () Bool)

(declare-fun e!1108577 () Bool)

(declare-fun e!1108579 () Bool)

(assert (=> b!1732723 (= e!1108577 e!1108579)))

(declare-fun res!778381 () Bool)

(assert (=> b!1732723 (=> (not res!778381) (not e!1108579))))

(assert (=> b!1732723 (= res!778381 (not (is-Nil!18996 lt!664722)))))

(declare-fun b!1732726 () Bool)

(declare-fun e!1108578 () Bool)

(assert (=> b!1732726 (= e!1108578 (>= (size!15093 lt!664722) (size!15093 (++!5197 lt!664732 (Cons!18996 (head!3943 lt!664704) Nil!18996)))))))

(declare-fun d!530427 () Bool)

(assert (=> d!530427 e!1108578))

(declare-fun res!778380 () Bool)

(assert (=> d!530427 (=> res!778380 e!1108578)))

(declare-fun lt!665093 () Bool)

(assert (=> d!530427 (= res!778380 (not lt!665093))))

(assert (=> d!530427 (= lt!665093 e!1108577)))

(declare-fun res!778379 () Bool)

(assert (=> d!530427 (=> res!778379 e!1108577)))

(assert (=> d!530427 (= res!778379 (is-Nil!18996 (++!5197 lt!664732 (Cons!18996 (head!3943 lt!664704) Nil!18996))))))

(assert (=> d!530427 (= (isPrefix!1613 (++!5197 lt!664732 (Cons!18996 (head!3943 lt!664704) Nil!18996)) lt!664722) lt!665093)))

(declare-fun b!1732725 () Bool)

(assert (=> b!1732725 (= e!1108579 (isPrefix!1613 (tail!2588 (++!5197 lt!664732 (Cons!18996 (head!3943 lt!664704) Nil!18996))) (tail!2588 lt!664722)))))

(declare-fun b!1732724 () Bool)

(declare-fun res!778382 () Bool)

(assert (=> b!1732724 (=> (not res!778382) (not e!1108579))))

(assert (=> b!1732724 (= res!778382 (= (head!3943 (++!5197 lt!664732 (Cons!18996 (head!3943 lt!664704) Nil!18996))) (head!3943 lt!664722)))))

(assert (= (and d!530427 (not res!778379)) b!1732723))

(assert (= (and b!1732723 res!778381) b!1732724))

(assert (= (and b!1732724 res!778382) b!1732725))

(assert (= (and d!530427 (not res!778380)) b!1732726))

(assert (=> b!1732726 m!2140989))

(assert (=> b!1732726 m!2140711))

(declare-fun m!2141543 () Bool)

(assert (=> b!1732726 m!2141543))

(assert (=> b!1732725 m!2140711))

(declare-fun m!2141545 () Bool)

(assert (=> b!1732725 m!2141545))

(assert (=> b!1732725 m!2141025))

(assert (=> b!1732725 m!2141545))

(assert (=> b!1732725 m!2141025))

(declare-fun m!2141547 () Bool)

(assert (=> b!1732725 m!2141547))

(assert (=> b!1732724 m!2140711))

(declare-fun m!2141549 () Bool)

(assert (=> b!1732724 m!2141549))

(assert (=> b!1732724 m!2141307))

(assert (=> b!1732074 d!530427))

(declare-fun d!530429 () Bool)

(assert (=> d!530429 (= (list!7681 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))) (list!7683 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))))

(declare-fun bs!402706 () Bool)

(assert (= bs!402706 d!530429))

(declare-fun m!2141551 () Bool)

(assert (=> bs!402706 m!2141551))

(assert (=> b!1732078 d!530429))

(declare-fun bs!402707 () Bool)

(declare-fun d!530431 () Bool)

(assert (= bs!402707 (and d!530431 b!1732096)))

(declare-fun lambda!69413 () Int)

(assert (=> bs!402707 (= lambda!69413 lambda!69395)))

(declare-fun b!1732735 () Bool)

(declare-fun e!1108584 () Bool)

(assert (=> b!1732735 (= e!1108584 true)))

(assert (=> d!530431 e!1108584))

(assert (= d!530431 b!1732735))

(assert (=> b!1732735 (< (dynLambda!8865 order!11721 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) (dynLambda!8866 order!11723 lambda!69413))))

(assert (=> b!1732735 (< (dynLambda!8867 order!11725 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) (dynLambda!8866 order!11723 lambda!69413))))

(assert (=> d!530431 (= (list!7681 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))) (list!7681 lt!664714))))

(declare-fun lt!665096 () Unit!32854)

(declare-fun ForallOf!280 (Int BalanceConc!12580) Unit!32854)

(assert (=> d!530431 (= lt!665096 (ForallOf!280 lambda!69413 lt!664714))))

(assert (=> d!530431 (= (lemmaSemiInverse!518 (transformation!3372 (rule!5354 (_1!10738 lt!664721))) lt!664714) lt!665096)))

(declare-fun b_lambda!55325 () Bool)

(assert (=> (not b_lambda!55325) (not d!530431)))

(assert (=> d!530431 t!160821))

(declare-fun b_and!127913 () Bool)

(assert (= b_and!127907 (and (=> t!160821 result!124078) b_and!127913)))

(assert (=> d!530431 t!160823))

(declare-fun b_and!127915 () Bool)

(assert (= b_and!127909 (and (=> t!160823 result!124082) b_and!127915)))

(assert (=> d!530431 t!160825))

(declare-fun b_and!127917 () Bool)

(assert (= b_and!127911 (and (=> t!160825 result!124084) b_and!127917)))

(declare-fun b_lambda!55327 () Bool)

(assert (=> (not b_lambda!55327) (not d!530431)))

(assert (=> d!530431 t!160827))

(declare-fun b_and!127919 () Bool)

(assert (= b_and!127895 (and (=> t!160827 result!124086) b_and!127919)))

(assert (=> d!530431 t!160829))

(declare-fun b_and!127921 () Bool)

(assert (= b_and!127897 (and (=> t!160829 result!124090) b_and!127921)))

(assert (=> d!530431 t!160831))

(declare-fun b_and!127923 () Bool)

(assert (= b_and!127899 (and (=> t!160831 result!124092) b_and!127923)))

(assert (=> d!530431 m!2140719))

(assert (=> d!530431 m!2140719))

(assert (=> d!530431 m!2140721))

(assert (=> d!530431 m!2140635))

(assert (=> d!530431 m!2140721))

(assert (=> d!530431 m!2140723))

(declare-fun m!2141553 () Bool)

(assert (=> d!530431 m!2141553))

(assert (=> b!1732078 d!530431))

(declare-fun d!530433 () Bool)

(assert (=> d!530433 (= (get!5673 lt!664708) (v!25189 lt!664708))))

(assert (=> b!1732097 d!530433))

(declare-fun d!530435 () Bool)

(declare-fun res!778401 () Bool)

(declare-fun e!1108591 () Bool)

(assert (=> d!530435 (=> (not res!778401) (not e!1108591))))

(assert (=> d!530435 (= res!778401 (not (isEmpty!11952 (originalCharacters!4186 token!523))))))

(assert (=> d!530435 (= (inv!24576 token!523) e!1108591)))

(declare-fun b!1732754 () Bool)

(declare-fun res!778402 () Bool)

(assert (=> b!1732754 (=> (not res!778402) (not e!1108591))))

(assert (=> b!1732754 (= res!778402 (= (originalCharacters!4186 token!523) (list!7681 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 token!523))) (value!105776 token!523)))))))

(declare-fun b!1732755 () Bool)

(assert (=> b!1732755 (= e!1108591 (= (size!15091 token!523) (size!15093 (originalCharacters!4186 token!523))))))

(assert (= (and d!530435 res!778401) b!1732754))

(assert (= (and b!1732754 res!778402) b!1732755))

(declare-fun b_lambda!55329 () Bool)

(assert (=> (not b_lambda!55329) (not b!1732754)))

(assert (=> b!1732754 t!160881))

(declare-fun b_and!127925 () Bool)

(assert (= b_and!127913 (and (=> t!160881 result!124140) b_and!127925)))

(assert (=> b!1732754 t!160883))

(declare-fun b_and!127927 () Bool)

(assert (= b_and!127915 (and (=> t!160883 result!124142) b_and!127927)))

(assert (=> b!1732754 t!160885))

(declare-fun b_and!127929 () Bool)

(assert (= b_and!127917 (and (=> t!160885 result!124144) b_and!127929)))

(declare-fun m!2141555 () Bool)

(assert (=> d!530435 m!2141555))

(assert (=> b!1732754 m!2141247))

(assert (=> b!1732754 m!2141247))

(declare-fun m!2141557 () Bool)

(assert (=> b!1732754 m!2141557))

(declare-fun m!2141559 () Bool)

(assert (=> b!1732755 m!2141559))

(assert (=> start!170316 d!530435))

(declare-fun d!530437 () Bool)

(declare-fun c!283029 () Bool)

(assert (=> d!530437 (= c!283029 (is-Node!6318 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))))))

(declare-fun e!1108592 () Bool)

(assert (=> d!530437 (= (inv!24577 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))) e!1108592)))

(declare-fun b!1732756 () Bool)

(assert (=> b!1732756 (= e!1108592 (inv!24583 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))))))

(declare-fun b!1732757 () Bool)

(declare-fun e!1108593 () Bool)

(assert (=> b!1732757 (= e!1108592 e!1108593)))

(declare-fun res!778403 () Bool)

(assert (=> b!1732757 (= res!778403 (not (is-Leaf!9225 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))))))))

(assert (=> b!1732757 (=> res!778403 e!1108593)))

(declare-fun b!1732758 () Bool)

(assert (=> b!1732758 (= e!1108593 (inv!24584 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))))))

(assert (= (and d!530437 c!283029) b!1732756))

(assert (= (and d!530437 (not c!283029)) b!1732757))

(assert (= (and b!1732757 (not res!778403)) b!1732758))

(declare-fun m!2141561 () Bool)

(assert (=> b!1732756 m!2141561))

(declare-fun m!2141563 () Bool)

(assert (=> b!1732758 m!2141563))

(assert (=> b!1732117 d!530437))

(declare-fun d!530439 () Bool)

(declare-fun lt!665114 () Bool)

(declare-fun content!2724 (List!19067) (Set Rule!6544))

(assert (=> d!530439 (= lt!665114 (set.member rule!422 (content!2724 rules!3447)))))

(declare-fun e!1108602 () Bool)

(assert (=> d!530439 (= lt!665114 e!1108602)))

(declare-fun res!778415 () Bool)

(assert (=> d!530439 (=> (not res!778415) (not e!1108602))))

(assert (=> d!530439 (= res!778415 (is-Cons!18997 rules!3447))))

(assert (=> d!530439 (= (contains!3394 rules!3447 rule!422) lt!665114)))

(declare-fun b!1732772 () Bool)

(declare-fun e!1108601 () Bool)

(assert (=> b!1732772 (= e!1108602 e!1108601)))

(declare-fun res!778416 () Bool)

(assert (=> b!1732772 (=> res!778416 e!1108601)))

(assert (=> b!1732772 (= res!778416 (= (h!24398 rules!3447) rule!422))))

(declare-fun b!1732773 () Bool)

(assert (=> b!1732773 (= e!1108601 (contains!3394 (t!160840 rules!3447) rule!422))))

(assert (= (and d!530439 res!778415) b!1732772))

(assert (= (and b!1732772 (not res!778416)) b!1732773))

(declare-fun m!2141565 () Bool)

(assert (=> d!530439 m!2141565))

(declare-fun m!2141567 () Bool)

(assert (=> d!530439 m!2141567))

(declare-fun m!2141569 () Bool)

(assert (=> b!1732773 m!2141569))

(assert (=> b!1732098 d!530439))

(declare-fun b!1732774 () Bool)

(declare-fun e!1108604 () Bool)

(declare-fun e!1108603 () Bool)

(assert (=> b!1732774 (= e!1108604 e!1108603)))

(declare-fun c!283031 () Bool)

(assert (=> b!1732774 (= c!283031 (is-IntegerValue!10387 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))

(declare-fun b!1732775 () Bool)

(declare-fun e!1108605 () Bool)

(assert (=> b!1732775 (= e!1108605 (inv!15 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))

(declare-fun d!530441 () Bool)

(declare-fun c!283032 () Bool)

(assert (=> d!530441 (= c!283032 (is-IntegerValue!10386 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))

(assert (=> d!530441 (= (inv!21 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)) e!1108604)))

(declare-fun b!1732776 () Bool)

(assert (=> b!1732776 (= e!1108604 (inv!16 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))

(declare-fun b!1732777 () Bool)

(assert (=> b!1732777 (= e!1108603 (inv!17 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))))

(declare-fun b!1732778 () Bool)

(declare-fun res!778417 () Bool)

(assert (=> b!1732778 (=> res!778417 e!1108605)))

(assert (=> b!1732778 (= res!778417 (not (is-IntegerValue!10388 (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))))

(assert (=> b!1732778 (= e!1108603 e!1108605)))

(assert (= (and d!530441 c!283032) b!1732776))

(assert (= (and d!530441 (not c!283032)) b!1732774))

(assert (= (and b!1732774 c!283031) b!1732777))

(assert (= (and b!1732774 (not c!283031)) b!1732778))

(assert (= (and b!1732778 (not res!778417)) b!1732775))

(declare-fun m!2141579 () Bool)

(assert (=> b!1732775 m!2141579))

(declare-fun m!2141583 () Bool)

(assert (=> b!1732776 m!2141583))

(declare-fun m!2141587 () Bool)

(assert (=> b!1732777 m!2141587))

(assert (=> tb!103197 d!530441))

(declare-fun b!1732793 () Bool)

(declare-fun b_free!47423 () Bool)

(declare-fun b_next!48127 () Bool)

(assert (=> b!1732793 (= b_free!47423 (not b_next!48127))))

(declare-fun tb!103251 () Bool)

(declare-fun t!160887 () Bool)

(assert (=> (and b!1732793 (= (toValue!4879 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160887) tb!103251))

(declare-fun result!124148 () Bool)

(assert (= result!124148 result!124086))

(assert (=> d!530303 t!160887))

(declare-fun t!160889 () Bool)

(declare-fun tb!103253 () Bool)

(assert (=> (and b!1732793 (= (toValue!4879 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160889) tb!103253))

(declare-fun result!124150 () Bool)

(assert (= result!124150 result!124134))

(assert (=> d!530303 t!160889))

(assert (=> d!530301 t!160887))

(assert (=> b!1732078 t!160887))

(assert (=> d!530431 t!160887))

(declare-fun t!160891 () Bool)

(declare-fun tb!103255 () Bool)

(assert (=> (and b!1732793 (= (toValue!4879 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160891) tb!103255))

(declare-fun result!124152 () Bool)

(assert (= result!124152 result!124122))

(assert (=> d!530259 t!160891))

(declare-fun tp!493885 () Bool)

(declare-fun b_and!127931 () Bool)

(assert (=> b!1732793 (= tp!493885 (and (=> t!160891 result!124152) (=> t!160889 result!124150) (=> t!160887 result!124148) b_and!127931))))

(declare-fun b_free!47425 () Bool)

(declare-fun b_next!48129 () Bool)

(assert (=> b!1732793 (= b_free!47425 (not b_next!48129))))

(declare-fun tb!103257 () Bool)

(declare-fun t!160893 () Bool)

(assert (=> (and b!1732793 (= (toChars!4738 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160893) tb!103257))

(declare-fun result!124154 () Bool)

(assert (= result!124154 result!124078))

(assert (=> d!530431 t!160893))

(declare-fun tb!103259 () Bool)

(declare-fun t!160895 () Bool)

(assert (=> (and b!1732793 (= (toChars!4738 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721))))) t!160895) tb!103259))

(declare-fun result!124156 () Bool)

(assert (= result!124156 result!124094))

(assert (=> b!1732079 t!160895))

(assert (=> b!1732078 t!160893))

(assert (=> d!530275 t!160895))

(declare-fun t!160897 () Bool)

(declare-fun tb!103261 () Bool)

(assert (=> (and b!1732793 (= (toChars!4738 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toChars!4738 (transformation!3372 (rule!5354 token!523)))) t!160897) tb!103261))

(declare-fun result!124158 () Bool)

(assert (= result!124158 result!124140))

(assert (=> d!530351 t!160897))

(assert (=> b!1732754 t!160897))

(declare-fun tp!493884 () Bool)

(declare-fun b_and!127933 () Bool)

(assert (=> b!1732793 (= tp!493884 (and (=> t!160897 result!124158) (=> t!160895 result!124156) (=> t!160893 result!124154) b_and!127933))))

(declare-fun e!1108619 () Bool)

(assert (=> b!1732793 (= e!1108619 (and tp!493885 tp!493884))))

(declare-fun e!1108617 () Bool)

(declare-fun tp!493886 () Bool)

(declare-fun b!1732792 () Bool)

(assert (=> b!1732792 (= e!1108617 (and tp!493886 (inv!24572 (tag!3700 (h!24398 (t!160840 rules!3447)))) (inv!24575 (transformation!3372 (h!24398 (t!160840 rules!3447)))) e!1108619))))

(declare-fun b!1732791 () Bool)

(declare-fun e!1108620 () Bool)

(declare-fun tp!493883 () Bool)

(assert (=> b!1732791 (= e!1108620 (and e!1108617 tp!493883))))

(assert (=> b!1732080 (= tp!493826 e!1108620)))

(assert (= b!1732792 b!1732793))

(assert (= b!1732791 b!1732792))

(assert (= (and b!1732080 (is-Cons!18997 (t!160840 rules!3447))) b!1732791))

(declare-fun m!2141613 () Bool)

(assert (=> b!1732792 m!2141613))

(declare-fun m!2141615 () Bool)

(assert (=> b!1732792 m!2141615))

(declare-fun tp!493893 () Bool)

(declare-fun tp!493894 () Bool)

(declare-fun b!1732802 () Bool)

(declare-fun e!1108625 () Bool)

(assert (=> b!1732802 (= e!1108625 (and (inv!24577 (left!15172 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))) tp!493894 (inv!24577 (right!15502 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))) tp!493893))))

(declare-fun b!1732804 () Bool)

(declare-fun e!1108626 () Bool)

(declare-fun tp!493895 () Bool)

(assert (=> b!1732804 (= e!1108626 tp!493895)))

(declare-fun b!1732803 () Bool)

(declare-fun inv!24587 (IArray!12641) Bool)

(assert (=> b!1732803 (= e!1108625 (and (inv!24587 (xs!9194 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))) e!1108626))))

(assert (=> b!1732114 (= tp!493831 (and (inv!24577 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714)))) e!1108625))))

(assert (= (and b!1732114 (is-Node!6318 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))) b!1732802))

(assert (= b!1732803 b!1732804))

(assert (= (and b!1732114 (is-Leaf!9225 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (dynLambda!8869 (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) lt!664714))))) b!1732803))

(declare-fun m!2141617 () Bool)

(assert (=> b!1732802 m!2141617))

(declare-fun m!2141619 () Bool)

(assert (=> b!1732802 m!2141619))

(declare-fun m!2141621 () Bool)

(assert (=> b!1732803 m!2141621))

(assert (=> b!1732114 m!2140581))

(declare-fun b!1732818 () Bool)

(declare-fun e!1108629 () Bool)

(declare-fun tp!493908 () Bool)

(declare-fun tp!493907 () Bool)

(assert (=> b!1732818 (= e!1108629 (and tp!493908 tp!493907))))

(declare-fun b!1732817 () Bool)

(declare-fun tp!493910 () Bool)

(assert (=> b!1732817 (= e!1108629 tp!493910)))

(declare-fun b!1732816 () Bool)

(declare-fun tp!493906 () Bool)

(declare-fun tp!493909 () Bool)

(assert (=> b!1732816 (= e!1108629 (and tp!493906 tp!493909))))

(assert (=> b!1732068 (= tp!493818 e!1108629)))

(declare-fun b!1732815 () Bool)

(assert (=> b!1732815 (= e!1108629 tp_is_empty!7643)))

(assert (= (and b!1732068 (is-ElementMatch!4700 (regex!3372 (rule!5354 token!523)))) b!1732815))

(assert (= (and b!1732068 (is-Concat!8163 (regex!3372 (rule!5354 token!523)))) b!1732816))

(assert (= (and b!1732068 (is-Star!4700 (regex!3372 (rule!5354 token!523)))) b!1732817))

(assert (= (and b!1732068 (is-Union!4700 (regex!3372 (rule!5354 token!523)))) b!1732818))

(declare-fun b!1732823 () Bool)

(declare-fun e!1108632 () Bool)

(declare-fun tp!493913 () Bool)

(assert (=> b!1732823 (= e!1108632 (and tp_is_empty!7643 tp!493913))))

(assert (=> b!1732095 (= tp!493823 e!1108632)))

(assert (= (and b!1732095 (is-Cons!18996 (t!160839 suffix!1421))) b!1732823))

(declare-fun b!1732827 () Bool)

(declare-fun e!1108633 () Bool)

(declare-fun tp!493916 () Bool)

(declare-fun tp!493915 () Bool)

(assert (=> b!1732827 (= e!1108633 (and tp!493916 tp!493915))))

(declare-fun b!1732826 () Bool)

(declare-fun tp!493918 () Bool)

(assert (=> b!1732826 (= e!1108633 tp!493918)))

(declare-fun b!1732825 () Bool)

(declare-fun tp!493914 () Bool)

(declare-fun tp!493917 () Bool)

(assert (=> b!1732825 (= e!1108633 (and tp!493914 tp!493917))))

(assert (=> b!1732088 (= tp!493827 e!1108633)))

(declare-fun b!1732824 () Bool)

(assert (=> b!1732824 (= e!1108633 tp_is_empty!7643)))

(assert (= (and b!1732088 (is-ElementMatch!4700 (regex!3372 rule!422))) b!1732824))

(assert (= (and b!1732088 (is-Concat!8163 (regex!3372 rule!422))) b!1732825))

(assert (= (and b!1732088 (is-Star!4700 (regex!3372 rule!422))) b!1732826))

(assert (= (and b!1732088 (is-Union!4700 (regex!3372 rule!422))) b!1732827))

(declare-fun b!1732831 () Bool)

(declare-fun e!1108634 () Bool)

(declare-fun tp!493921 () Bool)

(declare-fun tp!493920 () Bool)

(assert (=> b!1732831 (= e!1108634 (and tp!493921 tp!493920))))

(declare-fun b!1732830 () Bool)

(declare-fun tp!493923 () Bool)

(assert (=> b!1732830 (= e!1108634 tp!493923)))

(declare-fun b!1732829 () Bool)

(declare-fun tp!493919 () Bool)

(declare-fun tp!493922 () Bool)

(assert (=> b!1732829 (= e!1108634 (and tp!493919 tp!493922))))

(assert (=> b!1732067 (= tp!493825 e!1108634)))

(declare-fun b!1732828 () Bool)

(assert (=> b!1732828 (= e!1108634 tp_is_empty!7643)))

(assert (= (and b!1732067 (is-ElementMatch!4700 (regex!3372 (h!24398 rules!3447)))) b!1732828))

(assert (= (and b!1732067 (is-Concat!8163 (regex!3372 (h!24398 rules!3447)))) b!1732829))

(assert (= (and b!1732067 (is-Star!4700 (regex!3372 (h!24398 rules!3447)))) b!1732830))

(assert (= (and b!1732067 (is-Union!4700 (regex!3372 (h!24398 rules!3447)))) b!1732831))

(declare-fun b!1732832 () Bool)

(declare-fun e!1108635 () Bool)

(declare-fun tp!493924 () Bool)

(assert (=> b!1732832 (= e!1108635 (and tp_is_empty!7643 tp!493924))))

(assert (=> b!1732081 (= tp!493817 e!1108635)))

(assert (= (and b!1732081 (is-Cons!18996 (originalCharacters!4186 token!523))) b!1732832))

(declare-fun e!1108638 () Bool)

(declare-fun tp!493925 () Bool)

(declare-fun tp!493926 () Bool)

(declare-fun b!1732835 () Bool)

(assert (=> b!1732835 (= e!1108638 (and (inv!24577 (left!15172 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))))) tp!493926 (inv!24577 (right!15502 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))))) tp!493925))))

(declare-fun b!1732837 () Bool)

(declare-fun e!1108639 () Bool)

(declare-fun tp!493927 () Bool)

(assert (=> b!1732837 (= e!1108639 tp!493927)))

(declare-fun b!1732836 () Bool)

(assert (=> b!1732836 (= e!1108638 (and (inv!24587 (xs!9194 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))))) e!1108639))))

(assert (=> b!1732117 (= tp!493832 (and (inv!24577 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721))))) e!1108638))))

(assert (= (and b!1732117 (is-Node!6318 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))))) b!1732835))

(assert (= b!1732836 b!1732837))

(assert (= (and b!1732117 (is-Leaf!9225 (c!282926 (dynLambda!8868 (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))) (value!105776 (_1!10738 lt!664721)))))) b!1732836))

(declare-fun m!2141623 () Bool)

(assert (=> b!1732835 m!2141623))

(declare-fun m!2141625 () Bool)

(assert (=> b!1732835 m!2141625))

(declare-fun m!2141627 () Bool)

(assert (=> b!1732836 m!2141627))

(assert (=> b!1732117 m!2140587))

(declare-fun b_lambda!55331 () Bool)

(assert (= b_lambda!55323 (or (and b!1732090 b_free!47401 (= (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toChars!4738 (transformation!3372 (rule!5354 token!523))))) (and b!1732076 b_free!47405) (and b!1732077 b_free!47409 (= (toChars!4738 (transformation!3372 rule!422)) (toChars!4738 (transformation!3372 (rule!5354 token!523))))) (and b!1732793 b_free!47425 (= (toChars!4738 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toChars!4738 (transformation!3372 (rule!5354 token!523))))) b_lambda!55331)))

(declare-fun b_lambda!55333 () Bool)

(assert (= b_lambda!55297 (or (and b!1732090 b_free!47401 (= (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732076 b_free!47405 (= (toChars!4738 (transformation!3372 (rule!5354 token!523))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732077 b_free!47409 (= (toChars!4738 (transformation!3372 rule!422)) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732793 b_free!47425 (= (toChars!4738 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) b_lambda!55333)))

(declare-fun b_lambda!55335 () Bool)

(assert (= b_lambda!55293 (or (and b!1732090 b_free!47401 (= (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732076 b_free!47405 (= (toChars!4738 (transformation!3372 (rule!5354 token!523))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732077 b_free!47409 (= (toChars!4738 (transformation!3372 rule!422)) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732793 b_free!47425 (= (toChars!4738 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toChars!4738 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) b_lambda!55335)))

(declare-fun b_lambda!55337 () Bool)

(assert (= b_lambda!55329 (or (and b!1732090 b_free!47401 (= (toChars!4738 (transformation!3372 (h!24398 rules!3447))) (toChars!4738 (transformation!3372 (rule!5354 token!523))))) (and b!1732076 b_free!47405) (and b!1732077 b_free!47409 (= (toChars!4738 (transformation!3372 rule!422)) (toChars!4738 (transformation!3372 (rule!5354 token!523))))) (and b!1732793 b_free!47425 (= (toChars!4738 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toChars!4738 (transformation!3372 (rule!5354 token!523))))) b_lambda!55337)))

(declare-fun b_lambda!55339 () Bool)

(assert (= b_lambda!55295 (or (and b!1732090 b_free!47399 (= (toValue!4879 (transformation!3372 (h!24398 rules!3447))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732076 b_free!47403 (= (toValue!4879 (transformation!3372 (rule!5354 token!523))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732077 b_free!47407 (= (toValue!4879 (transformation!3372 rule!422)) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) (and b!1732793 b_free!47423 (= (toValue!4879 (transformation!3372 (h!24398 (t!160840 rules!3447)))) (toValue!4879 (transformation!3372 (rule!5354 (_1!10738 lt!664721)))))) b_lambda!55339)))

(push 1)

(assert (not d!530439))

(assert (not d!530315))

(assert (not d!530407))

(assert (not b!1732621))

(assert (not d!530297))

(assert (not b!1732568))

(assert (not b!1732818))

(assert (not b!1732555))

(assert (not d!530389))

(assert (not b!1732718))

(assert (not b!1732269))

(assert (not b!1732724))

(assert b_and!127927)

(assert (not b!1732536))

(assert (not b!1732755))

(assert (not b!1732279))

(assert (not b!1732323))

(assert (not b!1732642))

(assert (not b!1732570))

(assert (not d!530231))

(assert (not b!1732566))

(assert (not b!1732404))

(assert (not b!1732835))

(assert (not b!1732381))

(assert (not b!1732431))

(assert (not tb!103239))

(assert (not b!1732292))

(assert (not bm!109952))

(assert (not d!530361))

(assert b_and!127919)

(assert (not b!1732428))

(assert (not d!530347))

(assert (not d!530435))

(assert (not b!1732720))

(assert (not b!1732423))

(assert (not b!1732435))

(assert (not d!530227))

(assert (not b!1732639))

(assert (not b!1732345))

(assert (not b!1732823))

(assert (not b!1732622))

(assert (not b!1732355))

(assert (not b!1732773))

(assert (not b!1732559))

(assert (not b!1732612))

(assert (not b!1732533))

(assert (not d!530271))

(assert (not b!1732317))

(assert (not b!1732424))

(assert (not b!1732373))

(assert (not d!530429))

(assert (not d!530385))

(assert (not b!1732716))

(assert (not b!1732114))

(assert (not b_next!48127))

(assert (not b!1732754))

(assert (not d!530269))

(assert (not b!1732267))

(assert (not d!530237))

(assert (not b!1732562))

(assert (not b!1732528))

(assert (not b!1732392))

(assert (not b!1732375))

(assert (not b!1732792))

(assert (not b_lambda!55313))

(assert (not b!1732830))

(assert (not d!530307))

(assert (not b!1732714))

(assert (not b!1732534))

(assert (not b!1732377))

(assert (not b!1732636))

(assert (not d!530321))

(assert (not b!1732726))

(assert (not d!530387))

(assert (not b_lambda!55339))

(assert (not b_lambda!55335))

(assert (not b!1732758))

(assert (not b!1732623))

(assert (not b!1732556))

(assert (not d!530229))

(assert (not b!1732816))

(assert (not b!1732640))

(assert (not d!530285))

(assert (not b!1732827))

(assert (not b!1732303))

(assert (not b!1732342))

(assert (not b!1732836))

(assert (not b_next!48129))

(assert (not d!530273))

(assert (not b!1732777))

(assert (not d!530293))

(assert (not d!530245))

(assert b_and!127931)

(assert (not b!1732379))

(assert (not b!1732439))

(assert (not b!1732663))

(assert (not bm!109954))

(assert (not b!1732299))

(assert (not d!530395))

(assert (not b!1732368))

(assert (not b!1732294))

(assert b_and!127929)

(assert (not d!530235))

(assert (not b!1732712))

(assert (not b!1732301))

(assert (not b!1732403))

(assert (not b!1732535))

(assert (not b!1732632))

(assert (not b!1732637))

(assert (not b_next!48103))

(assert (not b!1732803))

(assert (not b_lambda!55331))

(assert (not d!530225))

(assert (not b!1732690))

(assert (not b!1732817))

(assert (not b!1732802))

(assert (not b_lambda!55333))

(assert (not b!1732837))

(assert (not bm!109944))

(assert (not d!530327))

(assert (not b!1732365))

(assert (not b!1732776))

(assert (not b!1732635))

(assert (not b_next!48109))

(assert (not b_lambda!55317))

(assert (not d!530431))

(assert (not d!530365))

(assert (not b!1732296))

(assert (not b!1732271))

(assert b_and!127933)

(assert (not d!530409))

(assert (not b!1732393))

(assert b_and!127921)

(assert (not d!530299))

(assert (not b!1732633))

(assert (not b!1732691))

(assert (not b!1732706))

(assert (not b!1732437))

(assert (not b!1732305))

(assert (not b_next!48113))

(assert (not b!1732315))

(assert (not d!530369))

(assert (not b!1732293))

(assert (not b!1732707))

(assert (not d!530247))

(assert (not b_lambda!55327))

(assert (not d!530415))

(assert (not b!1732531))

(assert (not b!1732347))

(assert (not b!1732280))

(assert (not bm!109943))

(assert (not b!1732591))

(assert (not b!1732425))

(assert (not b_lambda!55305))

(assert (not d!530375))

(assert (not bm!109945))

(assert (not b!1732607))

(assert (not b!1732530))

(assert (not d!530423))

(assert (not b_lambda!55337))

(assert (not b!1732348))

(assert (not b!1732641))

(assert (not d!530275))

(assert (not d!530371))

(assert (not d!530323))

(assert (not b!1732262))

(assert (not b!1732265))

(assert (not b!1732804))

(assert (not b!1732681))

(assert (not d!530283))

(assert (not d!530359))

(assert (not b_next!48105))

(assert (not d!530253))

(assert (not d!530425))

(assert (not d!530331))

(assert (not b!1732370))

(assert (not b!1732682))

(assert (not d!530325))

(assert (not d!530367))

(assert (not d!530303))

(assert (not b_lambda!55307))

(assert (not b!1732705))

(assert (not d!530243))

(assert (not b!1732826))

(assert (not b!1732791))

(assert (not d!530401))

(assert (not b_lambda!55319))

(assert (not b!1732725))

(assert (not b!1732825))

(assert (not d!530351))

(assert (not b!1732349))

(assert (not d!530379))

(assert (not b!1732344))

(assert (not b!1732539))

(assert (not b_next!48111))

(assert b_and!127923)

(assert (not b!1732832))

(assert (not d!530255))

(assert (not b!1732717))

(assert (not d!530329))

(assert (not b!1732343))

(assert (not b!1732665))

(assert (not b!1732346))

(assert (not d!530309))

(assert (not b_next!48107))

(assert (not tb!103227))

(assert (not b!1732564))

(assert (not b!1732307))

(assert (not b!1732756))

(assert (not b!1732554))

(assert (not b!1732117))

(assert (not d!530319))

(assert (not b!1732721))

(assert (not bm!109942))

(assert (not b!1732680))

(assert (not b!1732829))

(assert (not tb!103245))

(assert (not bm!109953))

(assert (not b!1732273))

(assert (not b!1732775))

(assert (not b!1732433))

(assert (not d!530265))

(assert (not b!1732611))

(assert (not b!1732529))

(assert (not b!1732713))

(assert tp_is_empty!7643)

(assert (not b!1732831))

(assert (not b!1732664))

(assert (not b_lambda!55325))

(assert b_and!127925)

(assert (not b!1732634))

(check-sat)

(pop 1)

(push 1)

(assert b_and!127927)

(assert b_and!127919)

(assert (not b_next!48127))

(assert (not b_next!48129))

(assert b_and!127931)

(assert b_and!127929)

(assert (not b_next!48103))

(assert (not b_next!48109))

(assert (not b_next!48113))

(assert (not b_next!48105))

(assert (not b_next!48107))

(assert b_and!127925)

(assert b_and!127933)

(assert b_and!127921)

(assert (not b_next!48111))

(assert b_and!127923)

(check-sat)

(pop 1)

