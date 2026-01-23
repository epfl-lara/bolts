; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!55578 () Bool)

(assert start!55578)

(declare-fun b!591878 () Bool)

(declare-fun b_free!16629 () Bool)

(declare-fun b_next!16645 () Bool)

(assert (=> b!591878 (= b_free!16629 (not b_next!16645))))

(declare-fun tp!184586 () Bool)

(declare-fun b_and!58339 () Bool)

(assert (=> b!591878 (= tp!184586 b_and!58339)))

(declare-fun b_free!16631 () Bool)

(declare-fun b_next!16647 () Bool)

(assert (=> b!591878 (= b_free!16631 (not b_next!16647))))

(declare-fun tp!184580 () Bool)

(declare-fun b_and!58341 () Bool)

(assert (=> b!591878 (= tp!184580 b_and!58341)))

(declare-fun b!591882 () Bool)

(declare-fun b_free!16633 () Bool)

(declare-fun b_next!16649 () Bool)

(assert (=> b!591882 (= b_free!16633 (not b_next!16649))))

(declare-fun tp!184588 () Bool)

(declare-fun b_and!58343 () Bool)

(assert (=> b!591882 (= tp!184588 b_and!58343)))

(declare-fun b_free!16635 () Bool)

(declare-fun b_next!16651 () Bool)

(assert (=> b!591882 (= b_free!16635 (not b_next!16651))))

(declare-fun tp!184584 () Bool)

(declare-fun b_and!58345 () Bool)

(assert (=> b!591882 (= tp!184584 b_and!58345)))

(declare-fun b!591864 () Bool)

(declare-fun e!357912 () Bool)

(declare-fun e!357922 () Bool)

(assert (=> b!591864 (= e!357912 e!357922)))

(declare-fun res!255201 () Bool)

(assert (=> b!591864 (=> (not res!255201) (not e!357922))))

(declare-datatypes ((C!3890 0))(
  ( (C!3891 (val!2171 Int)) )
))
(declare-datatypes ((Regex!1484 0))(
  ( (ElementMatch!1484 (c!110379 C!3890)) (Concat!2658 (regOne!3480 Regex!1484) (regTwo!3480 Regex!1484)) (EmptyExpr!1484) (Star!1484 (reg!1813 Regex!1484)) (EmptyLang!1484) (Union!1484 (regOne!3481 Regex!1484) (regTwo!3481 Regex!1484)) )
))
(declare-datatypes ((List!5861 0))(
  ( (Nil!5851) (Cons!5851 (h!11252 (_ BitVec 16)) (t!79048 List!5861)) )
))
(declare-datatypes ((List!5862 0))(
  ( (Nil!5852) (Cons!5852 (h!11253 C!3890) (t!79049 List!5862)) )
))
(declare-datatypes ((IArray!3735 0))(
  ( (IArray!3736 (innerList!1925 List!5862)) )
))
(declare-datatypes ((TokenValue!1174 0))(
  ( (FloatLiteralValue!2348 (text!8663 List!5861)) (TokenValueExt!1173 (__x!4246 Int)) (Broken!5870 (value!37617 List!5861)) (Object!1183) (End!1174) (Def!1174) (Underscore!1174) (Match!1174) (Else!1174) (Error!1174) (Case!1174) (If!1174) (Extends!1174) (Abstract!1174) (Class!1174) (Val!1174) (DelimiterValue!2348 (del!1234 List!5861)) (KeywordValue!1180 (value!37618 List!5861)) (CommentValue!2348 (value!37619 List!5861)) (WhitespaceValue!2348 (value!37620 List!5861)) (IndentationValue!1174 (value!37621 List!5861)) (String!7615) (Int32!1174) (Broken!5871 (value!37622 List!5861)) (Boolean!1175) (Unit!10631) (OperatorValue!1177 (op!1234 List!5861)) (IdentifierValue!2348 (value!37623 List!5861)) (IdentifierValue!2349 (value!37624 List!5861)) (WhitespaceValue!2349 (value!37625 List!5861)) (True!2348) (False!2348) (Broken!5872 (value!37626 List!5861)) (Broken!5873 (value!37627 List!5861)) (True!2349) (RightBrace!1174) (RightBracket!1174) (Colon!1174) (Null!1174) (Comma!1174) (LeftBracket!1174) (False!2349) (LeftBrace!1174) (ImaginaryLiteralValue!1174 (text!8664 List!5861)) (StringLiteralValue!3522 (value!37628 List!5861)) (EOFValue!1174 (value!37629 List!5861)) (IdentValue!1174 (value!37630 List!5861)) (DelimiterValue!2349 (value!37631 List!5861)) (DedentValue!1174 (value!37632 List!5861)) (NewLineValue!1174 (value!37633 List!5861)) (IntegerValue!3522 (value!37634 (_ BitVec 32)) (text!8665 List!5861)) (IntegerValue!3523 (value!37635 Int) (text!8666 List!5861)) (Times!1174) (Or!1174) (Equal!1174) (Minus!1174) (Broken!5874 (value!37636 List!5861)) (And!1174) (Div!1174) (LessEqual!1174) (Mod!1174) (Concat!2659) (Not!1174) (Plus!1174) (SpaceValue!1174 (value!37637 List!5861)) (IntegerValue!3524 (value!37638 Int) (text!8667 List!5861)) (StringLiteralValue!3523 (text!8668 List!5861)) (FloatLiteralValue!2349 (text!8669 List!5861)) (BytesLiteralValue!1174 (value!37639 List!5861)) (CommentValue!2349 (value!37640 List!5861)) (StringLiteralValue!3524 (value!37641 List!5861)) (ErrorTokenValue!1174 (msg!1235 List!5861)) )
))
(declare-datatypes ((Conc!1867 0))(
  ( (Node!1867 (left!4751 Conc!1867) (right!5081 Conc!1867) (csize!3964 Int) (cheight!2078 Int)) (Leaf!2950 (xs!4504 IArray!3735) (csize!3965 Int)) (Empty!1867) )
))
(declare-datatypes ((BalanceConc!3742 0))(
  ( (BalanceConc!3743 (c!110380 Conc!1867)) )
))
(declare-datatypes ((String!7616 0))(
  ( (String!7617 (value!37642 String)) )
))
(declare-datatypes ((TokenValueInjection!2116 0))(
  ( (TokenValueInjection!2117 (toValue!2037 Int) (toChars!1896 Int)) )
))
(declare-datatypes ((Rule!2100 0))(
  ( (Rule!2101 (regex!1150 Regex!1484) (tag!1412 String!7616) (isSeparator!1150 Bool) (transformation!1150 TokenValueInjection!2116)) )
))
(declare-datatypes ((Token!2036 0))(
  ( (Token!2037 (value!37643 TokenValue!1174) (rule!1918 Rule!2100) (size!4632 Int) (originalCharacters!1189 List!5862)) )
))
(declare-datatypes ((tuple2!6790 0))(
  ( (tuple2!6791 (_1!3659 Token!2036) (_2!3659 List!5862)) )
))
(declare-datatypes ((Option!1501 0))(
  ( (None!1500) (Some!1500 (v!16385 tuple2!6790)) )
))
(declare-fun lt!250821 () Option!1501)

(assert (=> b!591864 (= res!255201 (is-Some!1500 lt!250821))))

(declare-datatypes ((List!5863 0))(
  ( (Nil!5853) (Cons!5853 (h!11254 Rule!2100) (t!79050 List!5863)) )
))
(declare-fun rules!3103 () List!5863)

(declare-datatypes ((LexerInterface!1036 0))(
  ( (LexerInterfaceExt!1033 (__x!4247 Int)) (Lexer!1034) )
))
(declare-fun thiss!22590 () LexerInterface!1036)

(declare-fun input!2705 () List!5862)

(declare-fun maxPrefix!734 (LexerInterface!1036 List!5863 List!5862) Option!1501)

(assert (=> b!591864 (= lt!250821 (maxPrefix!734 thiss!22590 rules!3103 input!2705))))

(declare-fun e!357911 () Bool)

(declare-fun b!591865 () Bool)

(declare-fun e!357909 () Bool)

(declare-fun tp!184582 () Bool)

(declare-fun inv!7408 (String!7616) Bool)

(declare-fun inv!7411 (TokenValueInjection!2116) Bool)

(assert (=> b!591865 (= e!357911 (and tp!184582 (inv!7408 (tag!1412 (h!11254 rules!3103))) (inv!7411 (transformation!1150 (h!11254 rules!3103))) e!357909))))

(declare-fun e!357918 () Bool)

(declare-fun token!491 () Token!2036)

(declare-fun b!591866 () Bool)

(declare-fun tp!184587 () Bool)

(declare-fun e!357910 () Bool)

(assert (=> b!591866 (= e!357910 (and tp!184587 (inv!7408 (tag!1412 (rule!1918 token!491))) (inv!7411 (transformation!1150 (rule!1918 token!491))) e!357918))))

(declare-fun b!591867 () Bool)

(declare-fun res!255199 () Bool)

(assert (=> b!591867 (=> (not res!255199) (not e!357922))))

(declare-fun suffix!1342 () List!5862)

(declare-fun lt!250834 () List!5862)

(declare-fun lt!250825 () List!5862)

(declare-fun ++!1638 (List!5862 List!5862) List!5862)

(assert (=> b!591867 (= res!255199 (= (++!1638 lt!250825 suffix!1342) lt!250834))))

(declare-fun b!591868 () Bool)

(declare-fun e!357925 () Bool)

(assert (=> b!591868 (= e!357925 e!357912)))

(declare-fun res!255202 () Bool)

(assert (=> b!591868 (=> (not res!255202) (not e!357912))))

(declare-fun lt!250827 () tuple2!6790)

(assert (=> b!591868 (= res!255202 (and (= (_1!3659 lt!250827) token!491) (= (_2!3659 lt!250827) suffix!1342)))))

(declare-fun lt!250833 () Option!1501)

(declare-fun get!2240 (Option!1501) tuple2!6790)

(assert (=> b!591868 (= lt!250827 (get!2240 lt!250833))))

(declare-fun b!591869 () Bool)

(declare-fun res!255197 () Bool)

(declare-fun e!357920 () Bool)

(assert (=> b!591869 (=> (not res!255197) (not e!357920))))

(declare-fun isEmpty!4225 (List!5863) Bool)

(assert (=> b!591869 (= res!255197 (not (isEmpty!4225 rules!3103)))))

(declare-fun b!591870 () Bool)

(declare-fun e!357923 () Bool)

(assert (=> b!591870 (= e!357920 e!357923)))

(declare-fun res!255198 () Bool)

(assert (=> b!591870 (=> (not res!255198) (not e!357923))))

(assert (=> b!591870 (= res!255198 (= lt!250825 input!2705))))

(declare-fun list!2449 (BalanceConc!3742) List!5862)

(declare-fun charsOf!779 (Token!2036) BalanceConc!3742)

(assert (=> b!591870 (= lt!250825 (list!2449 (charsOf!779 token!491)))))

(declare-fun b!591871 () Bool)

(declare-fun res!255203 () Bool)

(assert (=> b!591871 (=> (not res!255203) (not e!357920))))

(declare-fun rulesInvariant!999 (LexerInterface!1036 List!5863) Bool)

(assert (=> b!591871 (= res!255203 (rulesInvariant!999 thiss!22590 rules!3103))))

(declare-fun b!591873 () Bool)

(declare-fun res!255200 () Bool)

(declare-fun e!357915 () Bool)

(assert (=> b!591873 (=> (not res!255200) (not e!357915))))

(declare-fun size!4633 (List!5862) Int)

(assert (=> b!591873 (= res!255200 (= (size!4632 (_1!3659 (v!16385 lt!250821))) (size!4633 (originalCharacters!1189 (_1!3659 (v!16385 lt!250821))))))))

(declare-fun b!591874 () Bool)

(declare-fun e!357919 () Bool)

(declare-fun tp_is_empty!3323 () Bool)

(declare-fun tp!184585 () Bool)

(assert (=> b!591874 (= e!357919 (and tp_is_empty!3323 tp!184585))))

(declare-fun b!591875 () Bool)

(declare-fun lt!250831 () List!5862)

(assert (=> b!591875 (= e!357922 (not (= (originalCharacters!1189 (_1!3659 (v!16385 lt!250821))) lt!250831)))))

(assert (=> b!591875 e!357915))

(declare-fun res!255204 () Bool)

(assert (=> b!591875 (=> (not res!255204) (not e!357915))))

(declare-fun apply!1403 (TokenValueInjection!2116 BalanceConc!3742) TokenValue!1174)

(declare-fun seqFromList!1326 (List!5862) BalanceConc!3742)

(assert (=> b!591875 (= res!255204 (= (value!37643 (_1!3659 (v!16385 lt!250821))) (apply!1403 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))) (seqFromList!1326 lt!250831))))))

(declare-datatypes ((Unit!10632 0))(
  ( (Unit!10633) )
))
(declare-fun lt!250836 () Unit!10632)

(declare-fun lemmaInv!258 (TokenValueInjection!2116) Unit!10632)

(assert (=> b!591875 (= lt!250836 (lemmaInv!258 (transformation!1150 (rule!1918 token!491))))))

(declare-fun lt!250828 () Unit!10632)

(assert (=> b!591875 (= lt!250828 (lemmaInv!258 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))))))

(declare-fun ruleValid!348 (LexerInterface!1036 Rule!2100) Bool)

(assert (=> b!591875 (ruleValid!348 thiss!22590 (rule!1918 token!491))))

(declare-fun lt!250830 () Unit!10632)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!195 (LexerInterface!1036 Rule!2100 List!5863) Unit!10632)

(assert (=> b!591875 (= lt!250830 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!195 thiss!22590 (rule!1918 token!491) rules!3103))))

(assert (=> b!591875 (ruleValid!348 thiss!22590 (rule!1918 (_1!3659 (v!16385 lt!250821))))))

(declare-fun lt!250829 () Unit!10632)

(assert (=> b!591875 (= lt!250829 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!195 thiss!22590 (rule!1918 (_1!3659 (v!16385 lt!250821))) rules!3103))))

(declare-fun isPrefix!778 (List!5862 List!5862) Bool)

(assert (=> b!591875 (isPrefix!778 input!2705 input!2705)))

(declare-fun lt!250823 () Unit!10632)

(declare-fun lemmaIsPrefixRefl!514 (List!5862 List!5862) Unit!10632)

(assert (=> b!591875 (= lt!250823 (lemmaIsPrefixRefl!514 input!2705 input!2705))))

(declare-fun lt!250819 () List!5862)

(assert (=> b!591875 (= (_2!3659 (v!16385 lt!250821)) lt!250819)))

(declare-fun lt!250822 () Unit!10632)

(declare-fun lemmaSamePrefixThenSameSuffix!491 (List!5862 List!5862 List!5862 List!5862 List!5862) Unit!10632)

(assert (=> b!591875 (= lt!250822 (lemmaSamePrefixThenSameSuffix!491 lt!250831 (_2!3659 (v!16385 lt!250821)) lt!250831 lt!250819 input!2705))))

(declare-fun getSuffix!295 (List!5862 List!5862) List!5862)

(assert (=> b!591875 (= lt!250819 (getSuffix!295 input!2705 lt!250831))))

(assert (=> b!591875 (isPrefix!778 lt!250831 (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821))))))

(declare-fun lt!250837 () Unit!10632)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!623 (List!5862 List!5862) Unit!10632)

(assert (=> b!591875 (= lt!250837 (lemmaConcatTwoListThenFirstIsPrefix!623 lt!250831 (_2!3659 (v!16385 lt!250821))))))

(declare-fun lt!250835 () Unit!10632)

(declare-fun lemmaCharactersSize!209 (Token!2036) Unit!10632)

(assert (=> b!591875 (= lt!250835 (lemmaCharactersSize!209 token!491))))

(declare-fun lt!250824 () Unit!10632)

(assert (=> b!591875 (= lt!250824 (lemmaCharactersSize!209 (_1!3659 (v!16385 lt!250821))))))

(declare-fun lt!250832 () Unit!10632)

(declare-fun e!357908 () Unit!10632)

(assert (=> b!591875 (= lt!250832 e!357908)))

(declare-fun c!110378 () Bool)

(declare-fun lt!250820 () Int)

(assert (=> b!591875 (= c!110378 (> lt!250820 (size!4633 lt!250825)))))

(assert (=> b!591875 (= lt!250820 (size!4633 lt!250831))))

(assert (=> b!591875 (= lt!250831 (list!2449 (charsOf!779 (_1!3659 (v!16385 lt!250821)))))))

(assert (=> b!591875 (= lt!250821 (Some!1500 (v!16385 lt!250821)))))

(declare-fun lt!250826 () Unit!10632)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!223 (List!5862 List!5862 List!5862 List!5862) Unit!10632)

(assert (=> b!591875 (= lt!250826 (lemmaConcatSameAndSameSizesThenSameLists!223 lt!250825 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!591876 () Bool)

(declare-fun res!255196 () Bool)

(assert (=> b!591876 (=> (not res!255196) (not e!357920))))

(declare-fun isEmpty!4226 (List!5862) Bool)

(assert (=> b!591876 (= res!255196 (not (isEmpty!4226 input!2705)))))

(declare-fun b!591877 () Bool)

(assert (=> b!591877 (= e!357915 (= (size!4632 (_1!3659 (v!16385 lt!250821))) lt!250820))))

(assert (=> b!591878 (= e!357918 (and tp!184586 tp!184580))))

(declare-fun b!591879 () Bool)

(declare-fun e!357913 () Bool)

(declare-fun tp!184579 () Bool)

(assert (=> b!591879 (= e!357913 (and tp_is_empty!3323 tp!184579))))

(declare-fun b!591880 () Bool)

(declare-fun Unit!10634 () Unit!10632)

(assert (=> b!591880 (= e!357908 Unit!10634)))

(assert (=> b!591880 false))

(declare-fun b!591881 () Bool)

(declare-fun Unit!10635 () Unit!10632)

(assert (=> b!591881 (= e!357908 Unit!10635)))

(declare-fun res!255195 () Bool)

(assert (=> start!55578 (=> (not res!255195) (not e!357920))))

(assert (=> start!55578 (= res!255195 (is-Lexer!1034 thiss!22590))))

(assert (=> start!55578 e!357920))

(assert (=> start!55578 e!357913))

(declare-fun e!357917 () Bool)

(assert (=> start!55578 e!357917))

(declare-fun e!357924 () Bool)

(declare-fun inv!7412 (Token!2036) Bool)

(assert (=> start!55578 (and (inv!7412 token!491) e!357924)))

(assert (=> start!55578 true))

(assert (=> start!55578 e!357919))

(declare-fun b!591872 () Bool)

(assert (=> b!591872 (= e!357923 e!357925)))

(declare-fun res!255205 () Bool)

(assert (=> b!591872 (=> (not res!255205) (not e!357925))))

(declare-fun isDefined!1312 (Option!1501) Bool)

(assert (=> b!591872 (= res!255205 (isDefined!1312 lt!250833))))

(assert (=> b!591872 (= lt!250833 (maxPrefix!734 thiss!22590 rules!3103 lt!250834))))

(assert (=> b!591872 (= lt!250834 (++!1638 input!2705 suffix!1342))))

(assert (=> b!591882 (= e!357909 (and tp!184588 tp!184584))))

(declare-fun b!591883 () Bool)

(declare-fun tp!184581 () Bool)

(declare-fun inv!21 (TokenValue!1174) Bool)

(assert (=> b!591883 (= e!357924 (and (inv!21 (value!37643 token!491)) e!357910 tp!184581))))

(declare-fun b!591884 () Bool)

(declare-fun tp!184583 () Bool)

(assert (=> b!591884 (= e!357917 (and e!357911 tp!184583))))

(assert (= (and start!55578 res!255195) b!591869))

(assert (= (and b!591869 res!255197) b!591871))

(assert (= (and b!591871 res!255203) b!591876))

(assert (= (and b!591876 res!255196) b!591870))

(assert (= (and b!591870 res!255198) b!591872))

(assert (= (and b!591872 res!255205) b!591868))

(assert (= (and b!591868 res!255202) b!591864))

(assert (= (and b!591864 res!255201) b!591867))

(assert (= (and b!591867 res!255199) b!591875))

(assert (= (and b!591875 c!110378) b!591880))

(assert (= (and b!591875 (not c!110378)) b!591881))

(assert (= (and b!591875 res!255204) b!591873))

(assert (= (and b!591873 res!255200) b!591877))

(assert (= (and start!55578 (is-Cons!5852 suffix!1342)) b!591879))

(assert (= b!591865 b!591882))

(assert (= b!591884 b!591865))

(assert (= (and start!55578 (is-Cons!5853 rules!3103)) b!591884))

(assert (= b!591866 b!591878))

(assert (= b!591883 b!591866))

(assert (= start!55578 b!591883))

(assert (= (and start!55578 (is-Cons!5852 input!2705)) b!591874))

(declare-fun m!853249 () Bool)

(assert (=> b!591875 m!853249))

(declare-fun m!853251 () Bool)

(assert (=> b!591875 m!853251))

(declare-fun m!853253 () Bool)

(assert (=> b!591875 m!853253))

(declare-fun m!853255 () Bool)

(assert (=> b!591875 m!853255))

(declare-fun m!853257 () Bool)

(assert (=> b!591875 m!853257))

(declare-fun m!853259 () Bool)

(assert (=> b!591875 m!853259))

(declare-fun m!853261 () Bool)

(assert (=> b!591875 m!853261))

(declare-fun m!853263 () Bool)

(assert (=> b!591875 m!853263))

(declare-fun m!853265 () Bool)

(assert (=> b!591875 m!853265))

(declare-fun m!853267 () Bool)

(assert (=> b!591875 m!853267))

(declare-fun m!853269 () Bool)

(assert (=> b!591875 m!853269))

(declare-fun m!853271 () Bool)

(assert (=> b!591875 m!853271))

(declare-fun m!853273 () Bool)

(assert (=> b!591875 m!853273))

(declare-fun m!853275 () Bool)

(assert (=> b!591875 m!853275))

(declare-fun m!853277 () Bool)

(assert (=> b!591875 m!853277))

(declare-fun m!853279 () Bool)

(assert (=> b!591875 m!853279))

(assert (=> b!591875 m!853257))

(declare-fun m!853281 () Bool)

(assert (=> b!591875 m!853281))

(assert (=> b!591875 m!853271))

(declare-fun m!853283 () Bool)

(assert (=> b!591875 m!853283))

(declare-fun m!853285 () Bool)

(assert (=> b!591875 m!853285))

(declare-fun m!853287 () Bool)

(assert (=> b!591875 m!853287))

(assert (=> b!591875 m!853251))

(declare-fun m!853289 () Bool)

(assert (=> b!591875 m!853289))

(declare-fun m!853291 () Bool)

(assert (=> b!591875 m!853291))

(declare-fun m!853293 () Bool)

(assert (=> b!591864 m!853293))

(declare-fun m!853295 () Bool)

(assert (=> start!55578 m!853295))

(declare-fun m!853297 () Bool)

(assert (=> b!591872 m!853297))

(declare-fun m!853299 () Bool)

(assert (=> b!591872 m!853299))

(declare-fun m!853301 () Bool)

(assert (=> b!591872 m!853301))

(declare-fun m!853303 () Bool)

(assert (=> b!591867 m!853303))

(declare-fun m!853305 () Bool)

(assert (=> b!591871 m!853305))

(declare-fun m!853307 () Bool)

(assert (=> b!591873 m!853307))

(declare-fun m!853309 () Bool)

(assert (=> b!591883 m!853309))

(declare-fun m!853311 () Bool)

(assert (=> b!591876 m!853311))

(declare-fun m!853313 () Bool)

(assert (=> b!591869 m!853313))

(declare-fun m!853315 () Bool)

(assert (=> b!591865 m!853315))

(declare-fun m!853317 () Bool)

(assert (=> b!591865 m!853317))

(declare-fun m!853319 () Bool)

(assert (=> b!591868 m!853319))

(declare-fun m!853321 () Bool)

(assert (=> b!591870 m!853321))

(assert (=> b!591870 m!853321))

(declare-fun m!853323 () Bool)

(assert (=> b!591870 m!853323))

(declare-fun m!853325 () Bool)

(assert (=> b!591866 m!853325))

(declare-fun m!853327 () Bool)

(assert (=> b!591866 m!853327))

(push 1)

(assert (not b!591873))

(assert (not b!591865))

(assert (not b!591864))

(assert (not b_next!16645))

(assert (not b!591875))

(assert (not b!591870))

(assert (not b_next!16647))

(assert (not b!591883))

(assert (not b!591871))

(assert (not b!591879))

(assert b_and!58345)

(assert (not b_next!16649))

(assert (not b_next!16651))

(assert (not b!591872))

(assert (not b!591869))

(assert (not b!591874))

(assert b_and!58339)

(assert b_and!58343)

(assert (not b!591884))

(assert (not b!591867))

(assert b_and!58341)

(assert (not b!591868))

(assert (not start!55578))

(assert tp_is_empty!3323)

(assert (not b!591876))

(assert (not b!591866))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16651))

(assert (not b_next!16645))

(assert (not b_next!16647))

(assert b_and!58341)

(assert b_and!58345)

(assert (not b_next!16649))

(assert b_and!58339)

(assert b_and!58343)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!208195 () Bool)

(declare-fun e!357984 () Bool)

(assert (=> d!208195 e!357984))

(declare-fun res!255251 () Bool)

(assert (=> d!208195 (=> (not res!255251) (not e!357984))))

(declare-fun lt!250897 () List!5862)

(declare-fun content!1054 (List!5862) (Set C!3890))

(assert (=> d!208195 (= res!255251 (= (content!1054 lt!250897) (set.union (content!1054 lt!250825) (content!1054 suffix!1342))))))

(declare-fun e!357985 () List!5862)

(assert (=> d!208195 (= lt!250897 e!357985)))

(declare-fun c!110389 () Bool)

(assert (=> d!208195 (= c!110389 (is-Nil!5852 lt!250825))))

(assert (=> d!208195 (= (++!1638 lt!250825 suffix!1342) lt!250897)))

(declare-fun b!591956 () Bool)

(assert (=> b!591956 (= e!357985 suffix!1342)))

(declare-fun b!591959 () Bool)

(assert (=> b!591959 (= e!357984 (or (not (= suffix!1342 Nil!5852)) (= lt!250897 lt!250825)))))

(declare-fun b!591957 () Bool)

(assert (=> b!591957 (= e!357985 (Cons!5852 (h!11253 lt!250825) (++!1638 (t!79049 lt!250825) suffix!1342)))))

(declare-fun b!591958 () Bool)

(declare-fun res!255252 () Bool)

(assert (=> b!591958 (=> (not res!255252) (not e!357984))))

(assert (=> b!591958 (= res!255252 (= (size!4633 lt!250897) (+ (size!4633 lt!250825) (size!4633 suffix!1342))))))

(assert (= (and d!208195 c!110389) b!591956))

(assert (= (and d!208195 (not c!110389)) b!591957))

(assert (= (and d!208195 res!255251) b!591958))

(assert (= (and b!591958 res!255252) b!591959))

(declare-fun m!853409 () Bool)

(assert (=> d!208195 m!853409))

(declare-fun m!853411 () Bool)

(assert (=> d!208195 m!853411))

(declare-fun m!853413 () Bool)

(assert (=> d!208195 m!853413))

(declare-fun m!853415 () Bool)

(assert (=> b!591957 m!853415))

(declare-fun m!853417 () Bool)

(assert (=> b!591958 m!853417))

(assert (=> b!591958 m!853275))

(declare-fun m!853419 () Bool)

(assert (=> b!591958 m!853419))

(assert (=> b!591867 d!208195))

(declare-fun d!208201 () Bool)

(assert (=> d!208201 (= (get!2240 lt!250833) (v!16385 lt!250833))))

(assert (=> b!591868 d!208201))

(declare-fun d!208203 () Bool)

(assert (=> d!208203 (= (isEmpty!4225 rules!3103) (is-Nil!5853 rules!3103))))

(assert (=> b!591869 d!208203))

(declare-fun d!208205 () Bool)

(declare-fun list!2451 (Conc!1867) List!5862)

(assert (=> d!208205 (= (list!2449 (charsOf!779 token!491)) (list!2451 (c!110380 (charsOf!779 token!491))))))

(declare-fun bs!70380 () Bool)

(assert (= bs!70380 d!208205))

(declare-fun m!853425 () Bool)

(assert (=> bs!70380 m!853425))

(assert (=> b!591870 d!208205))

(declare-fun d!208209 () Bool)

(declare-fun lt!250900 () BalanceConc!3742)

(assert (=> d!208209 (= (list!2449 lt!250900) (originalCharacters!1189 token!491))))

(declare-fun dynLambda!3409 (Int TokenValue!1174) BalanceConc!3742)

(assert (=> d!208209 (= lt!250900 (dynLambda!3409 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (value!37643 token!491)))))

(assert (=> d!208209 (= (charsOf!779 token!491) lt!250900)))

(declare-fun b_lambda!23313 () Bool)

(assert (=> (not b_lambda!23313) (not d!208209)))

(declare-fun t!79055 () Bool)

(declare-fun tb!51727 () Bool)

(assert (=> (and b!591878 (= (toChars!1896 (transformation!1150 (rule!1918 token!491))) (toChars!1896 (transformation!1150 (rule!1918 token!491)))) t!79055) tb!51727))

(declare-fun b!591967 () Bool)

(declare-fun e!357991 () Bool)

(declare-fun tp!184621 () Bool)

(declare-fun inv!7415 (Conc!1867) Bool)

(assert (=> b!591967 (= e!357991 (and (inv!7415 (c!110380 (dynLambda!3409 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (value!37643 token!491)))) tp!184621))))

(declare-fun result!58046 () Bool)

(declare-fun inv!7416 (BalanceConc!3742) Bool)

(assert (=> tb!51727 (= result!58046 (and (inv!7416 (dynLambda!3409 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (value!37643 token!491))) e!357991))))

(assert (= tb!51727 b!591967))

(declare-fun m!853427 () Bool)

(assert (=> b!591967 m!853427))

(declare-fun m!853429 () Bool)

(assert (=> tb!51727 m!853429))

(assert (=> d!208209 t!79055))

(declare-fun b_and!58355 () Bool)

(assert (= b_and!58341 (and (=> t!79055 result!58046) b_and!58355)))

(declare-fun t!79057 () Bool)

(declare-fun tb!51729 () Bool)

(assert (=> (and b!591882 (= (toChars!1896 (transformation!1150 (h!11254 rules!3103))) (toChars!1896 (transformation!1150 (rule!1918 token!491)))) t!79057) tb!51729))

(declare-fun result!58050 () Bool)

(assert (= result!58050 result!58046))

(assert (=> d!208209 t!79057))

(declare-fun b_and!58357 () Bool)

(assert (= b_and!58345 (and (=> t!79057 result!58050) b_and!58357)))

(declare-fun m!853431 () Bool)

(assert (=> d!208209 m!853431))

(declare-fun m!853433 () Bool)

(assert (=> d!208209 m!853433))

(assert (=> b!591870 d!208209))

(declare-fun d!208211 () Bool)

(declare-fun res!255258 () Bool)

(declare-fun e!357994 () Bool)

(assert (=> d!208211 (=> (not res!255258) (not e!357994))))

(declare-fun rulesValid!418 (LexerInterface!1036 List!5863) Bool)

(assert (=> d!208211 (= res!255258 (rulesValid!418 thiss!22590 rules!3103))))

(assert (=> d!208211 (= (rulesInvariant!999 thiss!22590 rules!3103) e!357994)))

(declare-fun b!591970 () Bool)

(declare-datatypes ((List!5867 0))(
  ( (Nil!5857) (Cons!5857 (h!11258 String!7616) (t!79076 List!5867)) )
))
(declare-fun noDuplicateTag!418 (LexerInterface!1036 List!5863 List!5867) Bool)

(assert (=> b!591970 (= e!357994 (noDuplicateTag!418 thiss!22590 rules!3103 Nil!5857))))

(assert (= (and d!208211 res!255258) b!591970))

(declare-fun m!853435 () Bool)

(assert (=> d!208211 m!853435))

(declare-fun m!853437 () Bool)

(assert (=> b!591970 m!853437))

(assert (=> b!591871 d!208211))

(declare-fun d!208213 () Bool)

(declare-fun isEmpty!4229 (Option!1501) Bool)

(assert (=> d!208213 (= (isDefined!1312 lt!250833) (not (isEmpty!4229 lt!250833)))))

(declare-fun bs!70381 () Bool)

(assert (= bs!70381 d!208213))

(declare-fun m!853439 () Bool)

(assert (=> bs!70381 m!853439))

(assert (=> b!591872 d!208213))

(declare-fun b!591989 () Bool)

(declare-fun res!255277 () Bool)

(declare-fun e!358002 () Bool)

(assert (=> b!591989 (=> (not res!255277) (not e!358002))))

(declare-fun lt!250911 () Option!1501)

(assert (=> b!591989 (= res!255277 (= (++!1638 (list!2449 (charsOf!779 (_1!3659 (get!2240 lt!250911)))) (_2!3659 (get!2240 lt!250911))) lt!250834))))

(declare-fun b!591990 () Bool)

(declare-fun res!255278 () Bool)

(assert (=> b!591990 (=> (not res!255278) (not e!358002))))

(assert (=> b!591990 (= res!255278 (= (list!2449 (charsOf!779 (_1!3659 (get!2240 lt!250911)))) (originalCharacters!1189 (_1!3659 (get!2240 lt!250911)))))))

(declare-fun b!591991 () Bool)

(declare-fun e!358001 () Bool)

(assert (=> b!591991 (= e!358001 e!358002)))

(declare-fun res!255275 () Bool)

(assert (=> b!591991 (=> (not res!255275) (not e!358002))))

(assert (=> b!591991 (= res!255275 (isDefined!1312 lt!250911))))

(declare-fun b!591992 () Bool)

(declare-fun contains!1378 (List!5863 Rule!2100) Bool)

(assert (=> b!591992 (= e!358002 (contains!1378 rules!3103 (rule!1918 (_1!3659 (get!2240 lt!250911)))))))

(declare-fun b!591993 () Bool)

(declare-fun e!358003 () Option!1501)

(declare-fun call!40332 () Option!1501)

(assert (=> b!591993 (= e!358003 call!40332)))

(declare-fun bm!40327 () Bool)

(declare-fun maxPrefixOneRule!419 (LexerInterface!1036 Rule!2100 List!5862) Option!1501)

(assert (=> bm!40327 (= call!40332 (maxPrefixOneRule!419 thiss!22590 (h!11254 rules!3103) lt!250834))))

(declare-fun b!591995 () Bool)

(declare-fun res!255276 () Bool)

(assert (=> b!591995 (=> (not res!255276) (not e!358002))))

(assert (=> b!591995 (= res!255276 (< (size!4633 (_2!3659 (get!2240 lt!250911))) (size!4633 lt!250834)))))

(declare-fun b!591996 () Bool)

(declare-fun res!255279 () Bool)

(assert (=> b!591996 (=> (not res!255279) (not e!358002))))

(assert (=> b!591996 (= res!255279 (= (value!37643 (_1!3659 (get!2240 lt!250911))) (apply!1403 (transformation!1150 (rule!1918 (_1!3659 (get!2240 lt!250911)))) (seqFromList!1326 (originalCharacters!1189 (_1!3659 (get!2240 lt!250911)))))))))

(declare-fun b!591997 () Bool)

(declare-fun res!255273 () Bool)

(assert (=> b!591997 (=> (not res!255273) (not e!358002))))

(declare-fun matchR!615 (Regex!1484 List!5862) Bool)

(assert (=> b!591997 (= res!255273 (matchR!615 (regex!1150 (rule!1918 (_1!3659 (get!2240 lt!250911)))) (list!2449 (charsOf!779 (_1!3659 (get!2240 lt!250911))))))))

(declare-fun b!591994 () Bool)

(declare-fun lt!250912 () Option!1501)

(declare-fun lt!250915 () Option!1501)

(assert (=> b!591994 (= e!358003 (ite (and (is-None!1500 lt!250912) (is-None!1500 lt!250915)) None!1500 (ite (is-None!1500 lt!250915) lt!250912 (ite (is-None!1500 lt!250912) lt!250915 (ite (>= (size!4632 (_1!3659 (v!16385 lt!250912))) (size!4632 (_1!3659 (v!16385 lt!250915)))) lt!250912 lt!250915)))))))

(assert (=> b!591994 (= lt!250912 call!40332)))

(assert (=> b!591994 (= lt!250915 (maxPrefix!734 thiss!22590 (t!79050 rules!3103) lt!250834))))

(declare-fun d!208215 () Bool)

(assert (=> d!208215 e!358001))

(declare-fun res!255274 () Bool)

(assert (=> d!208215 (=> res!255274 e!358001)))

(assert (=> d!208215 (= res!255274 (isEmpty!4229 lt!250911))))

(assert (=> d!208215 (= lt!250911 e!358003)))

(declare-fun c!110392 () Bool)

(assert (=> d!208215 (= c!110392 (and (is-Cons!5853 rules!3103) (is-Nil!5853 (t!79050 rules!3103))))))

(declare-fun lt!250913 () Unit!10632)

(declare-fun lt!250914 () Unit!10632)

(assert (=> d!208215 (= lt!250913 lt!250914)))

(assert (=> d!208215 (isPrefix!778 lt!250834 lt!250834)))

(assert (=> d!208215 (= lt!250914 (lemmaIsPrefixRefl!514 lt!250834 lt!250834))))

(declare-fun rulesValidInductive!423 (LexerInterface!1036 List!5863) Bool)

(assert (=> d!208215 (rulesValidInductive!423 thiss!22590 rules!3103)))

(assert (=> d!208215 (= (maxPrefix!734 thiss!22590 rules!3103 lt!250834) lt!250911)))

(assert (= (and d!208215 c!110392) b!591993))

(assert (= (and d!208215 (not c!110392)) b!591994))

(assert (= (or b!591993 b!591994) bm!40327))

(assert (= (and d!208215 (not res!255274)) b!591991))

(assert (= (and b!591991 res!255275) b!591990))

(assert (= (and b!591990 res!255278) b!591995))

(assert (= (and b!591995 res!255276) b!591989))

(assert (= (and b!591989 res!255277) b!591996))

(assert (= (and b!591996 res!255279) b!591997))

(assert (= (and b!591997 res!255273) b!591992))

(declare-fun m!853441 () Bool)

(assert (=> b!591997 m!853441))

(declare-fun m!853443 () Bool)

(assert (=> b!591997 m!853443))

(assert (=> b!591997 m!853443))

(declare-fun m!853445 () Bool)

(assert (=> b!591997 m!853445))

(assert (=> b!591997 m!853445))

(declare-fun m!853447 () Bool)

(assert (=> b!591997 m!853447))

(assert (=> b!591996 m!853441))

(declare-fun m!853449 () Bool)

(assert (=> b!591996 m!853449))

(assert (=> b!591996 m!853449))

(declare-fun m!853451 () Bool)

(assert (=> b!591996 m!853451))

(declare-fun m!853453 () Bool)

(assert (=> d!208215 m!853453))

(declare-fun m!853455 () Bool)

(assert (=> d!208215 m!853455))

(declare-fun m!853457 () Bool)

(assert (=> d!208215 m!853457))

(declare-fun m!853459 () Bool)

(assert (=> d!208215 m!853459))

(assert (=> b!591990 m!853441))

(assert (=> b!591990 m!853443))

(assert (=> b!591990 m!853443))

(assert (=> b!591990 m!853445))

(declare-fun m!853461 () Bool)

(assert (=> b!591991 m!853461))

(declare-fun m!853463 () Bool)

(assert (=> b!591994 m!853463))

(assert (=> b!591992 m!853441))

(declare-fun m!853465 () Bool)

(assert (=> b!591992 m!853465))

(assert (=> b!591995 m!853441))

(declare-fun m!853467 () Bool)

(assert (=> b!591995 m!853467))

(declare-fun m!853469 () Bool)

(assert (=> b!591995 m!853469))

(declare-fun m!853471 () Bool)

(assert (=> bm!40327 m!853471))

(assert (=> b!591989 m!853441))

(assert (=> b!591989 m!853443))

(assert (=> b!591989 m!853443))

(assert (=> b!591989 m!853445))

(assert (=> b!591989 m!853445))

(declare-fun m!853473 () Bool)

(assert (=> b!591989 m!853473))

(assert (=> b!591872 d!208215))

(declare-fun d!208217 () Bool)

(declare-fun e!358004 () Bool)

(assert (=> d!208217 e!358004))

(declare-fun res!255280 () Bool)

(assert (=> d!208217 (=> (not res!255280) (not e!358004))))

(declare-fun lt!250916 () List!5862)

(assert (=> d!208217 (= res!255280 (= (content!1054 lt!250916) (set.union (content!1054 input!2705) (content!1054 suffix!1342))))))

(declare-fun e!358005 () List!5862)

(assert (=> d!208217 (= lt!250916 e!358005)))

(declare-fun c!110393 () Bool)

(assert (=> d!208217 (= c!110393 (is-Nil!5852 input!2705))))

(assert (=> d!208217 (= (++!1638 input!2705 suffix!1342) lt!250916)))

(declare-fun b!591998 () Bool)

(assert (=> b!591998 (= e!358005 suffix!1342)))

(declare-fun b!592001 () Bool)

(assert (=> b!592001 (= e!358004 (or (not (= suffix!1342 Nil!5852)) (= lt!250916 input!2705)))))

(declare-fun b!591999 () Bool)

(assert (=> b!591999 (= e!358005 (Cons!5852 (h!11253 input!2705) (++!1638 (t!79049 input!2705) suffix!1342)))))

(declare-fun b!592000 () Bool)

(declare-fun res!255281 () Bool)

(assert (=> b!592000 (=> (not res!255281) (not e!358004))))

(assert (=> b!592000 (= res!255281 (= (size!4633 lt!250916) (+ (size!4633 input!2705) (size!4633 suffix!1342))))))

(assert (= (and d!208217 c!110393) b!591998))

(assert (= (and d!208217 (not c!110393)) b!591999))

(assert (= (and d!208217 res!255280) b!592000))

(assert (= (and b!592000 res!255281) b!592001))

(declare-fun m!853475 () Bool)

(assert (=> d!208217 m!853475))

(declare-fun m!853477 () Bool)

(assert (=> d!208217 m!853477))

(assert (=> d!208217 m!853413))

(declare-fun m!853479 () Bool)

(assert (=> b!591999 m!853479))

(declare-fun m!853481 () Bool)

(assert (=> b!592000 m!853481))

(declare-fun m!853483 () Bool)

(assert (=> b!592000 m!853483))

(assert (=> b!592000 m!853419))

(assert (=> b!591872 d!208217))

(declare-fun b!592012 () Bool)

(declare-fun e!358013 () Bool)

(declare-fun inv!16 (TokenValue!1174) Bool)

(assert (=> b!592012 (= e!358013 (inv!16 (value!37643 token!491)))))

(declare-fun b!592013 () Bool)

(declare-fun res!255284 () Bool)

(declare-fun e!358014 () Bool)

(assert (=> b!592013 (=> res!255284 e!358014)))

(assert (=> b!592013 (= res!255284 (not (is-IntegerValue!3524 (value!37643 token!491))))))

(declare-fun e!358012 () Bool)

(assert (=> b!592013 (= e!358012 e!358014)))

(declare-fun b!592014 () Bool)

(declare-fun inv!17 (TokenValue!1174) Bool)

(assert (=> b!592014 (= e!358012 (inv!17 (value!37643 token!491)))))

(declare-fun b!592015 () Bool)

(assert (=> b!592015 (= e!358013 e!358012)))

(declare-fun c!110398 () Bool)

(assert (=> b!592015 (= c!110398 (is-IntegerValue!3523 (value!37643 token!491)))))

(declare-fun d!208219 () Bool)

(declare-fun c!110399 () Bool)

(assert (=> d!208219 (= c!110399 (is-IntegerValue!3522 (value!37643 token!491)))))

(assert (=> d!208219 (= (inv!21 (value!37643 token!491)) e!358013)))

(declare-fun b!592016 () Bool)

(declare-fun inv!15 (TokenValue!1174) Bool)

(assert (=> b!592016 (= e!358014 (inv!15 (value!37643 token!491)))))

(assert (= (and d!208219 c!110399) b!592012))

(assert (= (and d!208219 (not c!110399)) b!592015))

(assert (= (and b!592015 c!110398) b!592014))

(assert (= (and b!592015 (not c!110398)) b!592013))

(assert (= (and b!592013 (not res!255284)) b!592016))

(declare-fun m!853485 () Bool)

(assert (=> b!592012 m!853485))

(declare-fun m!853487 () Bool)

(assert (=> b!592014 m!853487))

(declare-fun m!853489 () Bool)

(assert (=> b!592016 m!853489))

(assert (=> b!591883 d!208219))

(declare-fun d!208221 () Bool)

(declare-fun lt!250925 () Int)

(assert (=> d!208221 (>= lt!250925 0)))

(declare-fun e!358017 () Int)

(assert (=> d!208221 (= lt!250925 e!358017)))

(declare-fun c!110402 () Bool)

(assert (=> d!208221 (= c!110402 (is-Nil!5852 (originalCharacters!1189 (_1!3659 (v!16385 lt!250821)))))))

(assert (=> d!208221 (= (size!4633 (originalCharacters!1189 (_1!3659 (v!16385 lt!250821)))) lt!250925)))

(declare-fun b!592021 () Bool)

(assert (=> b!592021 (= e!358017 0)))

(declare-fun b!592022 () Bool)

(assert (=> b!592022 (= e!358017 (+ 1 (size!4633 (t!79049 (originalCharacters!1189 (_1!3659 (v!16385 lt!250821)))))))))

(assert (= (and d!208221 c!110402) b!592021))

(assert (= (and d!208221 (not c!110402)) b!592022))

(declare-fun m!853491 () Bool)

(assert (=> b!592022 m!853491))

(assert (=> b!591873 d!208221))

(declare-fun b!592025 () Bool)

(declare-fun res!255289 () Bool)

(declare-fun e!358019 () Bool)

(assert (=> b!592025 (=> (not res!255289) (not e!358019))))

(declare-fun lt!250926 () Option!1501)

(assert (=> b!592025 (= res!255289 (= (++!1638 (list!2449 (charsOf!779 (_1!3659 (get!2240 lt!250926)))) (_2!3659 (get!2240 lt!250926))) input!2705))))

(declare-fun b!592026 () Bool)

(declare-fun res!255290 () Bool)

(assert (=> b!592026 (=> (not res!255290) (not e!358019))))

(assert (=> b!592026 (= res!255290 (= (list!2449 (charsOf!779 (_1!3659 (get!2240 lt!250926)))) (originalCharacters!1189 (_1!3659 (get!2240 lt!250926)))))))

(declare-fun b!592027 () Bool)

(declare-fun e!358018 () Bool)

(assert (=> b!592027 (= e!358018 e!358019)))

(declare-fun res!255287 () Bool)

(assert (=> b!592027 (=> (not res!255287) (not e!358019))))

(assert (=> b!592027 (= res!255287 (isDefined!1312 lt!250926))))

(declare-fun b!592028 () Bool)

(assert (=> b!592028 (= e!358019 (contains!1378 rules!3103 (rule!1918 (_1!3659 (get!2240 lt!250926)))))))

(declare-fun b!592029 () Bool)

(declare-fun e!358020 () Option!1501)

(declare-fun call!40333 () Option!1501)

(assert (=> b!592029 (= e!358020 call!40333)))

(declare-fun bm!40328 () Bool)

(assert (=> bm!40328 (= call!40333 (maxPrefixOneRule!419 thiss!22590 (h!11254 rules!3103) input!2705))))

(declare-fun b!592031 () Bool)

(declare-fun res!255288 () Bool)

(assert (=> b!592031 (=> (not res!255288) (not e!358019))))

(assert (=> b!592031 (= res!255288 (< (size!4633 (_2!3659 (get!2240 lt!250926))) (size!4633 input!2705)))))

(declare-fun b!592032 () Bool)

(declare-fun res!255291 () Bool)

(assert (=> b!592032 (=> (not res!255291) (not e!358019))))

(assert (=> b!592032 (= res!255291 (= (value!37643 (_1!3659 (get!2240 lt!250926))) (apply!1403 (transformation!1150 (rule!1918 (_1!3659 (get!2240 lt!250926)))) (seqFromList!1326 (originalCharacters!1189 (_1!3659 (get!2240 lt!250926)))))))))

(declare-fun b!592033 () Bool)

(declare-fun res!255285 () Bool)

(assert (=> b!592033 (=> (not res!255285) (not e!358019))))

(assert (=> b!592033 (= res!255285 (matchR!615 (regex!1150 (rule!1918 (_1!3659 (get!2240 lt!250926)))) (list!2449 (charsOf!779 (_1!3659 (get!2240 lt!250926))))))))

(declare-fun b!592030 () Bool)

(declare-fun lt!250927 () Option!1501)

(declare-fun lt!250930 () Option!1501)

(assert (=> b!592030 (= e!358020 (ite (and (is-None!1500 lt!250927) (is-None!1500 lt!250930)) None!1500 (ite (is-None!1500 lt!250930) lt!250927 (ite (is-None!1500 lt!250927) lt!250930 (ite (>= (size!4632 (_1!3659 (v!16385 lt!250927))) (size!4632 (_1!3659 (v!16385 lt!250930)))) lt!250927 lt!250930)))))))

(assert (=> b!592030 (= lt!250927 call!40333)))

(assert (=> b!592030 (= lt!250930 (maxPrefix!734 thiss!22590 (t!79050 rules!3103) input!2705))))

(declare-fun d!208223 () Bool)

(assert (=> d!208223 e!358018))

(declare-fun res!255286 () Bool)

(assert (=> d!208223 (=> res!255286 e!358018)))

(assert (=> d!208223 (= res!255286 (isEmpty!4229 lt!250926))))

(assert (=> d!208223 (= lt!250926 e!358020)))

(declare-fun c!110403 () Bool)

(assert (=> d!208223 (= c!110403 (and (is-Cons!5853 rules!3103) (is-Nil!5853 (t!79050 rules!3103))))))

(declare-fun lt!250928 () Unit!10632)

(declare-fun lt!250929 () Unit!10632)

(assert (=> d!208223 (= lt!250928 lt!250929)))

(assert (=> d!208223 (isPrefix!778 input!2705 input!2705)))

(assert (=> d!208223 (= lt!250929 (lemmaIsPrefixRefl!514 input!2705 input!2705))))

(assert (=> d!208223 (rulesValidInductive!423 thiss!22590 rules!3103)))

(assert (=> d!208223 (= (maxPrefix!734 thiss!22590 rules!3103 input!2705) lt!250926)))

(assert (= (and d!208223 c!110403) b!592029))

(assert (= (and d!208223 (not c!110403)) b!592030))

(assert (= (or b!592029 b!592030) bm!40328))

(assert (= (and d!208223 (not res!255286)) b!592027))

(assert (= (and b!592027 res!255287) b!592026))

(assert (= (and b!592026 res!255290) b!592031))

(assert (= (and b!592031 res!255288) b!592025))

(assert (= (and b!592025 res!255289) b!592032))

(assert (= (and b!592032 res!255291) b!592033))

(assert (= (and b!592033 res!255285) b!592028))

(declare-fun m!853493 () Bool)

(assert (=> b!592033 m!853493))

(declare-fun m!853495 () Bool)

(assert (=> b!592033 m!853495))

(assert (=> b!592033 m!853495))

(declare-fun m!853497 () Bool)

(assert (=> b!592033 m!853497))

(assert (=> b!592033 m!853497))

(declare-fun m!853499 () Bool)

(assert (=> b!592033 m!853499))

(assert (=> b!592032 m!853493))

(declare-fun m!853501 () Bool)

(assert (=> b!592032 m!853501))

(assert (=> b!592032 m!853501))

(declare-fun m!853503 () Bool)

(assert (=> b!592032 m!853503))

(declare-fun m!853505 () Bool)

(assert (=> d!208223 m!853505))

(assert (=> d!208223 m!853263))

(assert (=> d!208223 m!853291))

(assert (=> d!208223 m!853459))

(assert (=> b!592026 m!853493))

(assert (=> b!592026 m!853495))

(assert (=> b!592026 m!853495))

(assert (=> b!592026 m!853497))

(declare-fun m!853507 () Bool)

(assert (=> b!592027 m!853507))

(declare-fun m!853509 () Bool)

(assert (=> b!592030 m!853509))

(assert (=> b!592028 m!853493))

(declare-fun m!853511 () Bool)

(assert (=> b!592028 m!853511))

(assert (=> b!592031 m!853493))

(declare-fun m!853513 () Bool)

(assert (=> b!592031 m!853513))

(assert (=> b!592031 m!853483))

(declare-fun m!853515 () Bool)

(assert (=> bm!40328 m!853515))

(assert (=> b!592025 m!853493))

(assert (=> b!592025 m!853495))

(assert (=> b!592025 m!853495))

(assert (=> b!592025 m!853497))

(assert (=> b!592025 m!853497))

(declare-fun m!853517 () Bool)

(assert (=> b!592025 m!853517))

(assert (=> b!591864 d!208223))

(declare-fun d!208225 () Bool)

(declare-fun fromListB!581 (List!5862) BalanceConc!3742)

(assert (=> d!208225 (= (seqFromList!1326 lt!250831) (fromListB!581 lt!250831))))

(declare-fun bs!70382 () Bool)

(assert (= bs!70382 d!208225))

(declare-fun m!853519 () Bool)

(assert (=> bs!70382 m!853519))

(assert (=> b!591875 d!208225))

(declare-fun d!208227 () Bool)

(assert (=> d!208227 (and (= lt!250825 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!250937 () Unit!10632)

(declare-fun choose!4278 (List!5862 List!5862 List!5862 List!5862) Unit!10632)

(assert (=> d!208227 (= lt!250937 (choose!4278 lt!250825 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!208227 (= (++!1638 lt!250825 suffix!1342) (++!1638 input!2705 suffix!1342))))

(assert (=> d!208227 (= (lemmaConcatSameAndSameSizesThenSameLists!223 lt!250825 suffix!1342 input!2705 suffix!1342) lt!250937)))

(declare-fun bs!70383 () Bool)

(assert (= bs!70383 d!208227))

(declare-fun m!853521 () Bool)

(assert (=> bs!70383 m!853521))

(assert (=> bs!70383 m!853303))

(assert (=> bs!70383 m!853301))

(assert (=> b!591875 d!208227))

(declare-fun d!208229 () Bool)

(declare-fun lt!250940 () List!5862)

(assert (=> d!208229 (= (++!1638 lt!250831 lt!250940) input!2705)))

(declare-fun e!358029 () List!5862)

(assert (=> d!208229 (= lt!250940 e!358029)))

(declare-fun c!110408 () Bool)

(assert (=> d!208229 (= c!110408 (is-Cons!5852 lt!250831))))

(assert (=> d!208229 (>= (size!4633 input!2705) (size!4633 lt!250831))))

(assert (=> d!208229 (= (getSuffix!295 input!2705 lt!250831) lt!250940)))

(declare-fun b!592054 () Bool)

(declare-fun tail!782 (List!5862) List!5862)

(assert (=> b!592054 (= e!358029 (getSuffix!295 (tail!782 input!2705) (t!79049 lt!250831)))))

(declare-fun b!592055 () Bool)

(assert (=> b!592055 (= e!358029 input!2705)))

(assert (= (and d!208229 c!110408) b!592054))

(assert (= (and d!208229 (not c!110408)) b!592055))

(declare-fun m!853523 () Bool)

(assert (=> d!208229 m!853523))

(assert (=> d!208229 m!853483))

(assert (=> d!208229 m!853285))

(declare-fun m!853525 () Bool)

(assert (=> b!592054 m!853525))

(assert (=> b!592054 m!853525))

(declare-fun m!853527 () Bool)

(assert (=> b!592054 m!853527))

(assert (=> b!591875 d!208229))

(declare-fun d!208231 () Bool)

(declare-fun e!358036 () Bool)

(assert (=> d!208231 e!358036))

(declare-fun res!255314 () Bool)

(assert (=> d!208231 (=> res!255314 e!358036)))

(declare-fun lt!250943 () Bool)

(assert (=> d!208231 (= res!255314 (not lt!250943))))

(declare-fun e!358037 () Bool)

(assert (=> d!208231 (= lt!250943 e!358037)))

(declare-fun res!255316 () Bool)

(assert (=> d!208231 (=> res!255316 e!358037)))

(assert (=> d!208231 (= res!255316 (is-Nil!5852 lt!250831))))

(assert (=> d!208231 (= (isPrefix!778 lt!250831 (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821)))) lt!250943)))

(declare-fun b!592067 () Bool)

(assert (=> b!592067 (= e!358036 (>= (size!4633 (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821)))) (size!4633 lt!250831)))))

(declare-fun b!592064 () Bool)

(declare-fun e!358038 () Bool)

(assert (=> b!592064 (= e!358037 e!358038)))

(declare-fun res!255315 () Bool)

(assert (=> b!592064 (=> (not res!255315) (not e!358038))))

(assert (=> b!592064 (= res!255315 (not (is-Nil!5852 (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821))))))))

(declare-fun b!592066 () Bool)

(assert (=> b!592066 (= e!358038 (isPrefix!778 (tail!782 lt!250831) (tail!782 (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821))))))))

(declare-fun b!592065 () Bool)

(declare-fun res!255317 () Bool)

(assert (=> b!592065 (=> (not res!255317) (not e!358038))))

(declare-fun head!1253 (List!5862) C!3890)

(assert (=> b!592065 (= res!255317 (= (head!1253 lt!250831) (head!1253 (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821))))))))

(assert (= (and d!208231 (not res!255316)) b!592064))

(assert (= (and b!592064 res!255315) b!592065))

(assert (= (and b!592065 res!255317) b!592066))

(assert (= (and d!208231 (not res!255314)) b!592067))

(assert (=> b!592067 m!853257))

(declare-fun m!853529 () Bool)

(assert (=> b!592067 m!853529))

(assert (=> b!592067 m!853285))

(declare-fun m!853531 () Bool)

(assert (=> b!592066 m!853531))

(assert (=> b!592066 m!853257))

(declare-fun m!853533 () Bool)

(assert (=> b!592066 m!853533))

(assert (=> b!592066 m!853531))

(assert (=> b!592066 m!853533))

(declare-fun m!853535 () Bool)

(assert (=> b!592066 m!853535))

(declare-fun m!853537 () Bool)

(assert (=> b!592065 m!853537))

(assert (=> b!592065 m!853257))

(declare-fun m!853539 () Bool)

(assert (=> b!592065 m!853539))

(assert (=> b!591875 d!208231))

(declare-fun d!208233 () Bool)

(assert (=> d!208233 (ruleValid!348 thiss!22590 (rule!1918 token!491))))

(declare-fun lt!250951 () Unit!10632)

(declare-fun choose!4279 (LexerInterface!1036 Rule!2100 List!5863) Unit!10632)

(assert (=> d!208233 (= lt!250951 (choose!4279 thiss!22590 (rule!1918 token!491) rules!3103))))

(assert (=> d!208233 (contains!1378 rules!3103 (rule!1918 token!491))))

(assert (=> d!208233 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!195 thiss!22590 (rule!1918 token!491) rules!3103) lt!250951)))

(declare-fun bs!70384 () Bool)

(assert (= bs!70384 d!208233))

(assert (=> bs!70384 m!853269))

(declare-fun m!853541 () Bool)

(assert (=> bs!70384 m!853541))

(declare-fun m!853543 () Bool)

(assert (=> bs!70384 m!853543))

(assert (=> b!591875 d!208233))

(declare-fun d!208235 () Bool)

(assert (=> d!208235 (ruleValid!348 thiss!22590 (rule!1918 (_1!3659 (v!16385 lt!250821))))))

(declare-fun lt!250952 () Unit!10632)

(assert (=> d!208235 (= lt!250952 (choose!4279 thiss!22590 (rule!1918 (_1!3659 (v!16385 lt!250821))) rules!3103))))

(assert (=> d!208235 (contains!1378 rules!3103 (rule!1918 (_1!3659 (v!16385 lt!250821))))))

(assert (=> d!208235 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!195 thiss!22590 (rule!1918 (_1!3659 (v!16385 lt!250821))) rules!3103) lt!250952)))

(declare-fun bs!70385 () Bool)

(assert (= bs!70385 d!208235))

(assert (=> bs!70385 m!853255))

(declare-fun m!853545 () Bool)

(assert (=> bs!70385 m!853545))

(declare-fun m!853547 () Bool)

(assert (=> bs!70385 m!853547))

(assert (=> b!591875 d!208235))

(declare-fun d!208237 () Bool)

(assert (=> d!208237 (= (_2!3659 (v!16385 lt!250821)) lt!250819)))

(declare-fun lt!250955 () Unit!10632)

(declare-fun choose!4280 (List!5862 List!5862 List!5862 List!5862 List!5862) Unit!10632)

(assert (=> d!208237 (= lt!250955 (choose!4280 lt!250831 (_2!3659 (v!16385 lt!250821)) lt!250831 lt!250819 input!2705))))

(assert (=> d!208237 (isPrefix!778 lt!250831 input!2705)))

(assert (=> d!208237 (= (lemmaSamePrefixThenSameSuffix!491 lt!250831 (_2!3659 (v!16385 lt!250821)) lt!250831 lt!250819 input!2705) lt!250955)))

(declare-fun bs!70386 () Bool)

(assert (= bs!70386 d!208237))

(declare-fun m!853549 () Bool)

(assert (=> bs!70386 m!853549))

(declare-fun m!853551 () Bool)

(assert (=> bs!70386 m!853551))

(assert (=> b!591875 d!208237))

(declare-fun d!208239 () Bool)

(assert (=> d!208239 (isPrefix!778 lt!250831 (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821))))))

(declare-fun lt!250958 () Unit!10632)

(declare-fun choose!4281 (List!5862 List!5862) Unit!10632)

(assert (=> d!208239 (= lt!250958 (choose!4281 lt!250831 (_2!3659 (v!16385 lt!250821))))))

(assert (=> d!208239 (= (lemmaConcatTwoListThenFirstIsPrefix!623 lt!250831 (_2!3659 (v!16385 lt!250821))) lt!250958)))

(declare-fun bs!70387 () Bool)

(assert (= bs!70387 d!208239))

(assert (=> bs!70387 m!853257))

(assert (=> bs!70387 m!853257))

(assert (=> bs!70387 m!853259))

(declare-fun m!853559 () Bool)

(assert (=> bs!70387 m!853559))

(assert (=> b!591875 d!208239))

(declare-fun d!208241 () Bool)

(declare-fun e!358044 () Bool)

(assert (=> d!208241 e!358044))

(declare-fun res!255327 () Bool)

(assert (=> d!208241 (=> (not res!255327) (not e!358044))))

(declare-fun semiInverseModEq!455 (Int Int) Bool)

(assert (=> d!208241 (= res!255327 (semiInverseModEq!455 (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) (toValue!2037 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))))))

(declare-fun Unit!10641 () Unit!10632)

(assert (=> d!208241 (= (lemmaInv!258 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) Unit!10641)))

(declare-fun b!592079 () Bool)

(declare-fun equivClasses!438 (Int Int) Bool)

(assert (=> b!592079 (= e!358044 (equivClasses!438 (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) (toValue!2037 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))))))

(assert (= (and d!208241 res!255327) b!592079))

(declare-fun m!853585 () Bool)

(assert (=> d!208241 m!853585))

(declare-fun m!853587 () Bool)

(assert (=> b!592079 m!853587))

(assert (=> b!591875 d!208241))

(declare-fun d!208245 () Bool)

(assert (=> d!208245 (isPrefix!778 input!2705 input!2705)))

(declare-fun lt!250961 () Unit!10632)

(declare-fun choose!4282 (List!5862 List!5862) Unit!10632)

(assert (=> d!208245 (= lt!250961 (choose!4282 input!2705 input!2705))))

(assert (=> d!208245 (= (lemmaIsPrefixRefl!514 input!2705 input!2705) lt!250961)))

(declare-fun bs!70388 () Bool)

(assert (= bs!70388 d!208245))

(assert (=> bs!70388 m!853263))

(declare-fun m!853589 () Bool)

(assert (=> bs!70388 m!853589))

(assert (=> b!591875 d!208245))

(declare-fun d!208249 () Bool)

(declare-fun e!358045 () Bool)

(assert (=> d!208249 e!358045))

(declare-fun res!255328 () Bool)

(assert (=> d!208249 (=> (not res!255328) (not e!358045))))

(assert (=> d!208249 (= res!255328 (semiInverseModEq!455 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (toValue!2037 (transformation!1150 (rule!1918 token!491)))))))

(declare-fun Unit!10642 () Unit!10632)

(assert (=> d!208249 (= (lemmaInv!258 (transformation!1150 (rule!1918 token!491))) Unit!10642)))

(declare-fun b!592080 () Bool)

(assert (=> b!592080 (= e!358045 (equivClasses!438 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (toValue!2037 (transformation!1150 (rule!1918 token!491)))))))

(assert (= (and d!208249 res!255328) b!592080))

(declare-fun m!853591 () Bool)

(assert (=> d!208249 m!853591))

(declare-fun m!853593 () Bool)

(assert (=> b!592080 m!853593))

(assert (=> b!591875 d!208249))

(declare-fun d!208251 () Bool)

(declare-fun e!358046 () Bool)

(assert (=> d!208251 e!358046))

(declare-fun res!255329 () Bool)

(assert (=> d!208251 (=> (not res!255329) (not e!358046))))

(declare-fun lt!250962 () List!5862)

(assert (=> d!208251 (= res!255329 (= (content!1054 lt!250962) (set.union (content!1054 lt!250831) (content!1054 (_2!3659 (v!16385 lt!250821))))))))

(declare-fun e!358047 () List!5862)

(assert (=> d!208251 (= lt!250962 e!358047)))

(declare-fun c!110410 () Bool)

(assert (=> d!208251 (= c!110410 (is-Nil!5852 lt!250831))))

(assert (=> d!208251 (= (++!1638 lt!250831 (_2!3659 (v!16385 lt!250821))) lt!250962)))

(declare-fun b!592081 () Bool)

(assert (=> b!592081 (= e!358047 (_2!3659 (v!16385 lt!250821)))))

(declare-fun b!592084 () Bool)

(assert (=> b!592084 (= e!358046 (or (not (= (_2!3659 (v!16385 lt!250821)) Nil!5852)) (= lt!250962 lt!250831)))))

(declare-fun b!592082 () Bool)

(assert (=> b!592082 (= e!358047 (Cons!5852 (h!11253 lt!250831) (++!1638 (t!79049 lt!250831) (_2!3659 (v!16385 lt!250821)))))))

(declare-fun b!592083 () Bool)

(declare-fun res!255330 () Bool)

(assert (=> b!592083 (=> (not res!255330) (not e!358046))))

(assert (=> b!592083 (= res!255330 (= (size!4633 lt!250962) (+ (size!4633 lt!250831) (size!4633 (_2!3659 (v!16385 lt!250821))))))))

(assert (= (and d!208251 c!110410) b!592081))

(assert (= (and d!208251 (not c!110410)) b!592082))

(assert (= (and d!208251 res!255329) b!592083))

(assert (= (and b!592083 res!255330) b!592084))

(declare-fun m!853595 () Bool)

(assert (=> d!208251 m!853595))

(declare-fun m!853597 () Bool)

(assert (=> d!208251 m!853597))

(declare-fun m!853599 () Bool)

(assert (=> d!208251 m!853599))

(declare-fun m!853601 () Bool)

(assert (=> b!592082 m!853601))

(declare-fun m!853603 () Bool)

(assert (=> b!592083 m!853603))

(assert (=> b!592083 m!853285))

(declare-fun m!853605 () Bool)

(assert (=> b!592083 m!853605))

(assert (=> b!591875 d!208251))

(declare-fun d!208253 () Bool)

(assert (=> d!208253 (= (size!4632 token!491) (size!4633 (originalCharacters!1189 token!491)))))

(declare-fun Unit!10643 () Unit!10632)

(assert (=> d!208253 (= (lemmaCharactersSize!209 token!491) Unit!10643)))

(declare-fun bs!70389 () Bool)

(assert (= bs!70389 d!208253))

(declare-fun m!853607 () Bool)

(assert (=> bs!70389 m!853607))

(assert (=> b!591875 d!208253))

(declare-fun d!208255 () Bool)

(declare-fun lt!250963 () BalanceConc!3742)

(assert (=> d!208255 (= (list!2449 lt!250963) (originalCharacters!1189 (_1!3659 (v!16385 lt!250821))))))

(assert (=> d!208255 (= lt!250963 (dynLambda!3409 (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) (value!37643 (_1!3659 (v!16385 lt!250821)))))))

(assert (=> d!208255 (= (charsOf!779 (_1!3659 (v!16385 lt!250821))) lt!250963)))

(declare-fun b_lambda!23315 () Bool)

(assert (=> (not b_lambda!23315) (not d!208255)))

(declare-fun t!79059 () Bool)

(declare-fun tb!51731 () Bool)

(assert (=> (and b!591878 (= (toChars!1896 (transformation!1150 (rule!1918 token!491))) (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))) t!79059) tb!51731))

(declare-fun b!592085 () Bool)

(declare-fun e!358048 () Bool)

(declare-fun tp!184622 () Bool)

(assert (=> b!592085 (= e!358048 (and (inv!7415 (c!110380 (dynLambda!3409 (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) (value!37643 (_1!3659 (v!16385 lt!250821)))))) tp!184622))))

(declare-fun result!58052 () Bool)

(assert (=> tb!51731 (= result!58052 (and (inv!7416 (dynLambda!3409 (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) (value!37643 (_1!3659 (v!16385 lt!250821))))) e!358048))))

(assert (= tb!51731 b!592085))

(declare-fun m!853609 () Bool)

(assert (=> b!592085 m!853609))

(declare-fun m!853611 () Bool)

(assert (=> tb!51731 m!853611))

(assert (=> d!208255 t!79059))

(declare-fun b_and!58359 () Bool)

(assert (= b_and!58355 (and (=> t!79059 result!58052) b_and!58359)))

(declare-fun t!79061 () Bool)

(declare-fun tb!51733 () Bool)

(assert (=> (and b!591882 (= (toChars!1896 (transformation!1150 (h!11254 rules!3103))) (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))) t!79061) tb!51733))

(declare-fun result!58054 () Bool)

(assert (= result!58054 result!58052))

(assert (=> d!208255 t!79061))

(declare-fun b_and!58361 () Bool)

(assert (= b_and!58357 (and (=> t!79061 result!58054) b_and!58361)))

(declare-fun m!853613 () Bool)

(assert (=> d!208255 m!853613))

(declare-fun m!853615 () Bool)

(assert (=> d!208255 m!853615))

(assert (=> b!591875 d!208255))

(declare-fun d!208257 () Bool)

(assert (=> d!208257 (= (size!4632 (_1!3659 (v!16385 lt!250821))) (size!4633 (originalCharacters!1189 (_1!3659 (v!16385 lt!250821)))))))

(declare-fun Unit!10644 () Unit!10632)

(assert (=> d!208257 (= (lemmaCharactersSize!209 (_1!3659 (v!16385 lt!250821))) Unit!10644)))

(declare-fun bs!70390 () Bool)

(assert (= bs!70390 d!208257))

(assert (=> bs!70390 m!853307))

(assert (=> b!591875 d!208257))

(declare-fun d!208259 () Bool)

(declare-fun lt!250964 () Int)

(assert (=> d!208259 (>= lt!250964 0)))

(declare-fun e!358051 () Int)

(assert (=> d!208259 (= lt!250964 e!358051)))

(declare-fun c!110411 () Bool)

(assert (=> d!208259 (= c!110411 (is-Nil!5852 lt!250825))))

(assert (=> d!208259 (= (size!4633 lt!250825) lt!250964)))

(declare-fun b!592088 () Bool)

(assert (=> b!592088 (= e!358051 0)))

(declare-fun b!592089 () Bool)

(assert (=> b!592089 (= e!358051 (+ 1 (size!4633 (t!79049 lt!250825))))))

(assert (= (and d!208259 c!110411) b!592088))

(assert (= (and d!208259 (not c!110411)) b!592089))

(declare-fun m!853617 () Bool)

(assert (=> b!592089 m!853617))

(assert (=> b!591875 d!208259))

(declare-fun d!208261 () Bool)

(assert (=> d!208261 (= (list!2449 (charsOf!779 (_1!3659 (v!16385 lt!250821)))) (list!2451 (c!110380 (charsOf!779 (_1!3659 (v!16385 lt!250821))))))))

(declare-fun bs!70391 () Bool)

(assert (= bs!70391 d!208261))

(declare-fun m!853619 () Bool)

(assert (=> bs!70391 m!853619))

(assert (=> b!591875 d!208261))

(declare-fun d!208263 () Bool)

(declare-fun res!255339 () Bool)

(declare-fun e!358054 () Bool)

(assert (=> d!208263 (=> (not res!255339) (not e!358054))))

(declare-fun validRegex!507 (Regex!1484) Bool)

(assert (=> d!208263 (= res!255339 (validRegex!507 (regex!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))))))

(assert (=> d!208263 (= (ruleValid!348 thiss!22590 (rule!1918 (_1!3659 (v!16385 lt!250821)))) e!358054)))

(declare-fun b!592096 () Bool)

(declare-fun res!255340 () Bool)

(assert (=> b!592096 (=> (not res!255340) (not e!358054))))

(declare-fun nullable!412 (Regex!1484) Bool)

(assert (=> b!592096 (= res!255340 (not (nullable!412 (regex!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))))))

(declare-fun b!592097 () Bool)

(assert (=> b!592097 (= e!358054 (not (= (tag!1412 (rule!1918 (_1!3659 (v!16385 lt!250821)))) (String!7617 ""))))))

(assert (= (and d!208263 res!255339) b!592096))

(assert (= (and b!592096 res!255340) b!592097))

(declare-fun m!853621 () Bool)

(assert (=> d!208263 m!853621))

(declare-fun m!853623 () Bool)

(assert (=> b!592096 m!853623))

(assert (=> b!591875 d!208263))

(declare-fun d!208265 () Bool)

(declare-fun lt!250965 () Int)

(assert (=> d!208265 (>= lt!250965 0)))

(declare-fun e!358055 () Int)

(assert (=> d!208265 (= lt!250965 e!358055)))

(declare-fun c!110412 () Bool)

(assert (=> d!208265 (= c!110412 (is-Nil!5852 lt!250831))))

(assert (=> d!208265 (= (size!4633 lt!250831) lt!250965)))

(declare-fun b!592098 () Bool)

(assert (=> b!592098 (= e!358055 0)))

(declare-fun b!592099 () Bool)

(assert (=> b!592099 (= e!358055 (+ 1 (size!4633 (t!79049 lt!250831))))))

(assert (= (and d!208265 c!110412) b!592098))

(assert (= (and d!208265 (not c!110412)) b!592099))

(declare-fun m!853625 () Bool)

(assert (=> b!592099 m!853625))

(assert (=> b!591875 d!208265))

(declare-fun d!208267 () Bool)

(declare-fun e!358056 () Bool)

(assert (=> d!208267 e!358056))

(declare-fun res!255341 () Bool)

(assert (=> d!208267 (=> res!255341 e!358056)))

(declare-fun lt!250966 () Bool)

(assert (=> d!208267 (= res!255341 (not lt!250966))))

(declare-fun e!358057 () Bool)

(assert (=> d!208267 (= lt!250966 e!358057)))

(declare-fun res!255343 () Bool)

(assert (=> d!208267 (=> res!255343 e!358057)))

(assert (=> d!208267 (= res!255343 (is-Nil!5852 input!2705))))

(assert (=> d!208267 (= (isPrefix!778 input!2705 input!2705) lt!250966)))

(declare-fun b!592103 () Bool)

(assert (=> b!592103 (= e!358056 (>= (size!4633 input!2705) (size!4633 input!2705)))))

(declare-fun b!592100 () Bool)

(declare-fun e!358058 () Bool)

(assert (=> b!592100 (= e!358057 e!358058)))

(declare-fun res!255342 () Bool)

(assert (=> b!592100 (=> (not res!255342) (not e!358058))))

(assert (=> b!592100 (= res!255342 (not (is-Nil!5852 input!2705)))))

(declare-fun b!592102 () Bool)

(assert (=> b!592102 (= e!358058 (isPrefix!778 (tail!782 input!2705) (tail!782 input!2705)))))

(declare-fun b!592101 () Bool)

(declare-fun res!255344 () Bool)

(assert (=> b!592101 (=> (not res!255344) (not e!358058))))

(assert (=> b!592101 (= res!255344 (= (head!1253 input!2705) (head!1253 input!2705)))))

(assert (= (and d!208267 (not res!255343)) b!592100))

(assert (= (and b!592100 res!255342) b!592101))

(assert (= (and b!592101 res!255344) b!592102))

(assert (= (and d!208267 (not res!255341)) b!592103))

(assert (=> b!592103 m!853483))

(assert (=> b!592103 m!853483))

(assert (=> b!592102 m!853525))

(assert (=> b!592102 m!853525))

(assert (=> b!592102 m!853525))

(assert (=> b!592102 m!853525))

(declare-fun m!853627 () Bool)

(assert (=> b!592102 m!853627))

(declare-fun m!853629 () Bool)

(assert (=> b!592101 m!853629))

(assert (=> b!592101 m!853629))

(assert (=> b!591875 d!208267))

(declare-fun d!208269 () Bool)

(declare-fun dynLambda!3411 (Int BalanceConc!3742) TokenValue!1174)

(assert (=> d!208269 (= (apply!1403 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))) (seqFromList!1326 lt!250831)) (dynLambda!3411 (toValue!2037 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) (seqFromList!1326 lt!250831)))))

(declare-fun b_lambda!23319 () Bool)

(assert (=> (not b_lambda!23319) (not d!208269)))

(declare-fun tb!51737 () Bool)

(declare-fun t!79065 () Bool)

(assert (=> (and b!591878 (= (toValue!2037 (transformation!1150 (rule!1918 token!491))) (toValue!2037 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))) t!79065) tb!51737))

(declare-fun result!58058 () Bool)

(assert (=> tb!51737 (= result!58058 (inv!21 (dynLambda!3411 (toValue!2037 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821))))) (seqFromList!1326 lt!250831))))))

(declare-fun m!853631 () Bool)

(assert (=> tb!51737 m!853631))

(assert (=> d!208269 t!79065))

(declare-fun b_and!58363 () Bool)

(assert (= b_and!58339 (and (=> t!79065 result!58058) b_and!58363)))

(declare-fun tb!51739 () Bool)

(declare-fun t!79067 () Bool)

(assert (=> (and b!591882 (= (toValue!2037 (transformation!1150 (h!11254 rules!3103))) (toValue!2037 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))) t!79067) tb!51739))

(declare-fun result!58064 () Bool)

(assert (= result!58064 result!58058))

(assert (=> d!208269 t!79067))

(declare-fun b_and!58365 () Bool)

(assert (= b_and!58343 (and (=> t!79067 result!58064) b_and!58365)))

(assert (=> d!208269 m!853271))

(declare-fun m!853633 () Bool)

(assert (=> d!208269 m!853633))

(assert (=> b!591875 d!208269))

(declare-fun d!208271 () Bool)

(declare-fun res!255347 () Bool)

(declare-fun e!358065 () Bool)

(assert (=> d!208271 (=> (not res!255347) (not e!358065))))

(assert (=> d!208271 (= res!255347 (validRegex!507 (regex!1150 (rule!1918 token!491))))))

(assert (=> d!208271 (= (ruleValid!348 thiss!22590 (rule!1918 token!491)) e!358065)))

(declare-fun b!592112 () Bool)

(declare-fun res!255348 () Bool)

(assert (=> b!592112 (=> (not res!255348) (not e!358065))))

(assert (=> b!592112 (= res!255348 (not (nullable!412 (regex!1150 (rule!1918 token!491)))))))

(declare-fun b!592113 () Bool)

(assert (=> b!592113 (= e!358065 (not (= (tag!1412 (rule!1918 token!491)) (String!7617 ""))))))

(assert (= (and d!208271 res!255347) b!592112))

(assert (= (and b!592112 res!255348) b!592113))

(declare-fun m!853635 () Bool)

(assert (=> d!208271 m!853635))

(declare-fun m!853637 () Bool)

(assert (=> b!592112 m!853637))

(assert (=> b!591875 d!208271))

(declare-fun d!208273 () Bool)

(assert (=> d!208273 (= (inv!7408 (tag!1412 (h!11254 rules!3103))) (= (mod (str.len (value!37642 (tag!1412 (h!11254 rules!3103)))) 2) 0))))

(assert (=> b!591865 d!208273))

(declare-fun d!208275 () Bool)

(declare-fun res!255351 () Bool)

(declare-fun e!358069 () Bool)

(assert (=> d!208275 (=> (not res!255351) (not e!358069))))

(assert (=> d!208275 (= res!255351 (semiInverseModEq!455 (toChars!1896 (transformation!1150 (h!11254 rules!3103))) (toValue!2037 (transformation!1150 (h!11254 rules!3103)))))))

(assert (=> d!208275 (= (inv!7411 (transformation!1150 (h!11254 rules!3103))) e!358069)))

(declare-fun b!592117 () Bool)

(assert (=> b!592117 (= e!358069 (equivClasses!438 (toChars!1896 (transformation!1150 (h!11254 rules!3103))) (toValue!2037 (transformation!1150 (h!11254 rules!3103)))))))

(assert (= (and d!208275 res!255351) b!592117))

(declare-fun m!853651 () Bool)

(assert (=> d!208275 m!853651))

(declare-fun m!853653 () Bool)

(assert (=> b!592117 m!853653))

(assert (=> b!591865 d!208275))

(declare-fun d!208279 () Bool)

(declare-fun res!255356 () Bool)

(declare-fun e!358072 () Bool)

(assert (=> d!208279 (=> (not res!255356) (not e!358072))))

(assert (=> d!208279 (= res!255356 (not (isEmpty!4226 (originalCharacters!1189 token!491))))))

(assert (=> d!208279 (= (inv!7412 token!491) e!358072)))

(declare-fun b!592122 () Bool)

(declare-fun res!255357 () Bool)

(assert (=> b!592122 (=> (not res!255357) (not e!358072))))

(assert (=> b!592122 (= res!255357 (= (originalCharacters!1189 token!491) (list!2449 (dynLambda!3409 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (value!37643 token!491)))))))

(declare-fun b!592123 () Bool)

(assert (=> b!592123 (= e!358072 (= (size!4632 token!491) (size!4633 (originalCharacters!1189 token!491))))))

(assert (= (and d!208279 res!255356) b!592122))

(assert (= (and b!592122 res!255357) b!592123))

(declare-fun b_lambda!23321 () Bool)

(assert (=> (not b_lambda!23321) (not b!592122)))

(assert (=> b!592122 t!79055))

(declare-fun b_and!58371 () Bool)

(assert (= b_and!58359 (and (=> t!79055 result!58046) b_and!58371)))

(assert (=> b!592122 t!79057))

(declare-fun b_and!58373 () Bool)

(assert (= b_and!58361 (and (=> t!79057 result!58050) b_and!58373)))

(declare-fun m!853655 () Bool)

(assert (=> d!208279 m!853655))

(assert (=> b!592122 m!853433))

(assert (=> b!592122 m!853433))

(declare-fun m!853657 () Bool)

(assert (=> b!592122 m!853657))

(assert (=> b!592123 m!853607))

(assert (=> start!55578 d!208279))

(declare-fun d!208281 () Bool)

(assert (=> d!208281 (= (isEmpty!4226 input!2705) (is-Nil!5852 input!2705))))

(assert (=> b!591876 d!208281))

(declare-fun d!208283 () Bool)

(assert (=> d!208283 (= (inv!7408 (tag!1412 (rule!1918 token!491))) (= (mod (str.len (value!37642 (tag!1412 (rule!1918 token!491)))) 2) 0))))

(assert (=> b!591866 d!208283))

(declare-fun d!208285 () Bool)

(declare-fun res!255358 () Bool)

(declare-fun e!358074 () Bool)

(assert (=> d!208285 (=> (not res!255358) (not e!358074))))

(assert (=> d!208285 (= res!255358 (semiInverseModEq!455 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (toValue!2037 (transformation!1150 (rule!1918 token!491)))))))

(assert (=> d!208285 (= (inv!7411 (transformation!1150 (rule!1918 token!491))) e!358074)))

(declare-fun b!592128 () Bool)

(assert (=> b!592128 (= e!358074 (equivClasses!438 (toChars!1896 (transformation!1150 (rule!1918 token!491))) (toValue!2037 (transformation!1150 (rule!1918 token!491)))))))

(assert (= (and d!208285 res!255358) b!592128))

(assert (=> d!208285 m!853591))

(assert (=> b!592128 m!853593))

(assert (=> b!591866 d!208285))

(declare-fun b!592139 () Bool)

(declare-fun e!358082 () Bool)

(declare-fun tp!184628 () Bool)

(assert (=> b!592139 (= e!358082 (and tp_is_empty!3323 tp!184628))))

(assert (=> b!591883 (= tp!184581 e!358082)))

(assert (= (and b!591883 (is-Cons!5852 (originalCharacters!1189 token!491))) b!592139))

(declare-fun b!592150 () Bool)

(declare-fun b_free!16645 () Bool)

(declare-fun b_next!16661 () Bool)

(assert (=> b!592150 (= b_free!16645 (not b_next!16661))))

(declare-fun t!79071 () Bool)

(declare-fun tb!51743 () Bool)

(assert (=> (and b!592150 (= (toValue!2037 (transformation!1150 (h!11254 (t!79050 rules!3103)))) (toValue!2037 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))) t!79071) tb!51743))

(declare-fun result!58072 () Bool)

(assert (= result!58072 result!58058))

(assert (=> d!208269 t!79071))

(declare-fun tp!184640 () Bool)

(declare-fun b_and!58375 () Bool)

(assert (=> b!592150 (= tp!184640 (and (=> t!79071 result!58072) b_and!58375))))

(declare-fun b_free!16647 () Bool)

(declare-fun b_next!16663 () Bool)

(assert (=> b!592150 (= b_free!16647 (not b_next!16663))))

(declare-fun tb!51745 () Bool)

(declare-fun t!79073 () Bool)

(assert (=> (and b!592150 (= (toChars!1896 (transformation!1150 (h!11254 (t!79050 rules!3103)))) (toChars!1896 (transformation!1150 (rule!1918 token!491)))) t!79073) tb!51745))

(declare-fun result!58074 () Bool)

(assert (= result!58074 result!58046))

(assert (=> d!208209 t!79073))

(declare-fun tb!51747 () Bool)

(declare-fun t!79075 () Bool)

(assert (=> (and b!592150 (= (toChars!1896 (transformation!1150 (h!11254 (t!79050 rules!3103)))) (toChars!1896 (transformation!1150 (rule!1918 (_1!3659 (v!16385 lt!250821)))))) t!79075) tb!51747))

(declare-fun result!58076 () Bool)

(assert (= result!58076 result!58052))

(assert (=> d!208255 t!79075))

(assert (=> b!592122 t!79073))

(declare-fun tp!184638 () Bool)

(declare-fun b_and!58377 () Bool)

(assert (=> b!592150 (= tp!184638 (and (=> t!79073 result!58074) (=> t!79075 result!58076) b_and!58377))))

(declare-fun e!358094 () Bool)

(assert (=> b!592150 (= e!358094 (and tp!184640 tp!184638))))

(declare-fun e!358092 () Bool)

(declare-fun b!592149 () Bool)

(declare-fun tp!184639 () Bool)

(assert (=> b!592149 (= e!358092 (and tp!184639 (inv!7408 (tag!1412 (h!11254 (t!79050 rules!3103)))) (inv!7411 (transformation!1150 (h!11254 (t!79050 rules!3103)))) e!358094))))

(declare-fun b!592148 () Bool)

(declare-fun e!358091 () Bool)

(declare-fun tp!184637 () Bool)

(assert (=> b!592148 (= e!358091 (and e!358092 tp!184637))))

(assert (=> b!591884 (= tp!184583 e!358091)))

(assert (= b!592149 b!592150))

(assert (= b!592148 b!592149))

(assert (= (and b!591884 (is-Cons!5853 (t!79050 rules!3103))) b!592148))

(declare-fun m!853659 () Bool)

(assert (=> b!592149 m!853659))

(declare-fun m!853661 () Bool)

(assert (=> b!592149 m!853661))

(declare-fun b!592151 () Bool)

(declare-fun e!358095 () Bool)

(declare-fun tp!184641 () Bool)

(assert (=> b!592151 (= e!358095 (and tp_is_empty!3323 tp!184641))))

(assert (=> b!591879 (= tp!184579 e!358095)))

(assert (= (and b!591879 (is-Cons!5852 (t!79049 suffix!1342))) b!592151))

(declare-fun b!592152 () Bool)

(declare-fun e!358096 () Bool)

(declare-fun tp!184642 () Bool)

(assert (=> b!592152 (= e!358096 (and tp_is_empty!3323 tp!184642))))

(assert (=> b!591874 (= tp!184585 e!358096)))

(assert (= (and b!591874 (is-Cons!5852 (t!79049 input!2705))) b!592152))

(declare-fun e!358102 () Bool)

(assert (=> b!591865 (= tp!184582 e!358102)))

(declare-fun b!592171 () Bool)

(declare-fun tp!184657 () Bool)

(declare-fun tp!184655 () Bool)

(assert (=> b!592171 (= e!358102 (and tp!184657 tp!184655))))

(declare-fun b!592170 () Bool)

(declare-fun tp!184656 () Bool)

(assert (=> b!592170 (= e!358102 tp!184656)))

(declare-fun b!592168 () Bool)

(assert (=> b!592168 (= e!358102 tp_is_empty!3323)))

(declare-fun b!592169 () Bool)

(declare-fun tp!184653 () Bool)

(declare-fun tp!184654 () Bool)

(assert (=> b!592169 (= e!358102 (and tp!184653 tp!184654))))

(assert (= (and b!591865 (is-ElementMatch!1484 (regex!1150 (h!11254 rules!3103)))) b!592168))

(assert (= (and b!591865 (is-Concat!2658 (regex!1150 (h!11254 rules!3103)))) b!592169))

(assert (= (and b!591865 (is-Star!1484 (regex!1150 (h!11254 rules!3103)))) b!592170))

(assert (= (and b!591865 (is-Union!1484 (regex!1150 (h!11254 rules!3103)))) b!592171))

(declare-fun e!358103 () Bool)

(assert (=> b!591866 (= tp!184587 e!358103)))

(declare-fun b!592175 () Bool)

(declare-fun tp!184662 () Bool)

(declare-fun tp!184660 () Bool)

(assert (=> b!592175 (= e!358103 (and tp!184662 tp!184660))))

(declare-fun b!592174 () Bool)

(declare-fun tp!184661 () Bool)

(assert (=> b!592174 (= e!358103 tp!184661)))

(declare-fun b!592172 () Bool)

(assert (=> b!592172 (= e!358103 tp_is_empty!3323)))

(declare-fun b!592173 () Bool)

(declare-fun tp!184658 () Bool)

(declare-fun tp!184659 () Bool)

(assert (=> b!592173 (= e!358103 (and tp!184658 tp!184659))))

(assert (= (and b!591866 (is-ElementMatch!1484 (regex!1150 (rule!1918 token!491)))) b!592172))

(assert (= (and b!591866 (is-Concat!2658 (regex!1150 (rule!1918 token!491)))) b!592173))

(assert (= (and b!591866 (is-Star!1484 (regex!1150 (rule!1918 token!491)))) b!592174))

(assert (= (and b!591866 (is-Union!1484 (regex!1150 (rule!1918 token!491)))) b!592175))

(declare-fun b_lambda!23323 () Bool)

(assert (= b_lambda!23321 (or (and b!591878 b_free!16631) (and b!591882 b_free!16635 (= (toChars!1896 (transformation!1150 (h!11254 rules!3103))) (toChars!1896 (transformation!1150 (rule!1918 token!491))))) (and b!592150 b_free!16647 (= (toChars!1896 (transformation!1150 (h!11254 (t!79050 rules!3103)))) (toChars!1896 (transformation!1150 (rule!1918 token!491))))) b_lambda!23323)))

(declare-fun b_lambda!23325 () Bool)

(assert (= b_lambda!23313 (or (and b!591878 b_free!16631) (and b!591882 b_free!16635 (= (toChars!1896 (transformation!1150 (h!11254 rules!3103))) (toChars!1896 (transformation!1150 (rule!1918 token!491))))) (and b!592150 b_free!16647 (= (toChars!1896 (transformation!1150 (h!11254 (t!79050 rules!3103)))) (toChars!1896 (transformation!1150 (rule!1918 token!491))))) b_lambda!23325)))

(push 1)

(assert (not bm!40328))

(assert (not b_lambda!23315))

(assert (not d!208235))

(assert (not b!591995))

(assert (not d!208245))

(assert (not d!208213))

(assert (not d!208255))

(assert (not b_next!16651))

(assert (not b!591992))

(assert (not b!591999))

(assert (not b!592175))

(assert (not d!208195))

(assert (not b!592101))

(assert (not d!208239))

(assert (not d!208275))

(assert (not b!592014))

(assert (not tb!51731))

(assert (not b!592054))

(assert (not b!592085))

(assert (not b!592000))

(assert (not b_lambda!23323))

(assert (not b!592112))

(assert (not b!592066))

(assert (not b!591990))

(assert (not d!208227))

(assert (not b_next!16645))

(assert (not b!592083))

(assert (not d!208205))

(assert (not b!592169))

(assert (not b!592065))

(assert (not b!592031))

(assert (not d!208257))

(assert (not d!208223))

(assert (not tb!51737))

(assert (not b!591997))

(assert (not b!591970))

(assert (not d!208215))

(assert (not b!591996))

(assert (not b!591958))

(assert (not b!592152))

(assert (not b!592016))

(assert (not b!592089))

(assert (not b_lambda!23325))

(assert (not b!592028))

(assert (not d!208233))

(assert (not b!592122))

(assert (not b_next!16663))

(assert (not b!592174))

(assert (not b!592123))

(assert (not b!591994))

(assert (not b!592173))

(assert (not d!208209))

(assert (not b!592171))

(assert (not d!208241))

(assert (not bm!40327))

(assert b_and!58363)

(assert (not b!592102))

(assert (not b!592030))

(assert (not b!592103))

(assert (not b!591991))

(assert b_and!58377)

(assert (not b!592128))

(assert b_and!58365)

(assert (not b!591989))

(assert (not d!208237))

(assert (not b_next!16647))

(assert (not b_lambda!23319))

(assert (not tb!51727))

(assert (not d!208211))

(assert (not b!592033))

(assert (not b!592117))

(assert (not b!592067))

(assert (not b!592151))

(assert (not b!592026))

(assert (not b!592022))

(assert (not b!591967))

(assert (not b!592032))

(assert (not d!208279))

(assert (not b!592082))

(assert b_and!58375)

(assert (not d!208217))

(assert (not b!592099))

(assert tp_is_empty!3323)

(assert (not b!592149))

(assert b_and!58371)

(assert (not b!591957))

(assert (not d!208249))

(assert b_and!58373)

(assert (not b_next!16661))

(assert (not b_next!16649))

(assert (not d!208285))

(assert (not d!208251))

(assert (not b!592025))

(assert (not d!208271))

(assert (not b!592012))

(assert (not b!592096))

(assert (not b!592079))

(assert (not d!208253))

(assert (not d!208229))

(assert (not b!592139))

(assert (not b!592148))

(assert (not d!208263))

(assert (not d!208225))

(assert (not d!208261))

(assert (not b!592027))

(assert (not b!592170))

(assert (not b!592080))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!16651))

(assert (not b_next!16645))

(assert (not b_next!16663))

(assert b_and!58375)

(assert b_and!58371)

(assert b_and!58363)

(assert b_and!58377)

(assert b_and!58365)

(assert (not b_next!16647))

(assert b_and!58373)

(assert (not b_next!16661))

(assert (not b_next!16649))

(check-sat)

(pop 1)

