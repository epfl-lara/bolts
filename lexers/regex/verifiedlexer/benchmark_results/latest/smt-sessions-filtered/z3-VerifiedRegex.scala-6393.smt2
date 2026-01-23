; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333054 () Bool)

(assert start!333054)

(declare-fun b!3589062 () Bool)

(declare-fun b_free!92441 () Bool)

(declare-fun b_next!93145 () Bool)

(assert (=> b!3589062 (= b_free!92441 (not b_next!93145))))

(declare-fun tp!1098584 () Bool)

(declare-fun b_and!259355 () Bool)

(assert (=> b!3589062 (= tp!1098584 b_and!259355)))

(declare-fun b_free!92443 () Bool)

(declare-fun b_next!93147 () Bool)

(assert (=> b!3589062 (= b_free!92443 (not b_next!93147))))

(declare-fun tp!1098578 () Bool)

(declare-fun b_and!259357 () Bool)

(assert (=> b!3589062 (= tp!1098578 b_and!259357)))

(declare-fun b!3589061 () Bool)

(declare-fun b_free!92445 () Bool)

(declare-fun b_next!93149 () Bool)

(assert (=> b!3589061 (= b_free!92445 (not b_next!93149))))

(declare-fun tp!1098583 () Bool)

(declare-fun b_and!259359 () Bool)

(assert (=> b!3589061 (= tp!1098583 b_and!259359)))

(declare-fun b_free!92447 () Bool)

(declare-fun b_next!93151 () Bool)

(assert (=> b!3589061 (= b_free!92447 (not b_next!93151))))

(declare-fun tp!1098586 () Bool)

(declare-fun b_and!259361 () Bool)

(assert (=> b!3589061 (= tp!1098586 b_and!259361)))

(declare-fun b!3589049 () Bool)

(declare-fun b_free!92449 () Bool)

(declare-fun b_next!93153 () Bool)

(assert (=> b!3589049 (= b_free!92449 (not b_next!93153))))

(declare-fun tp!1098579 () Bool)

(declare-fun b_and!259363 () Bool)

(assert (=> b!3589049 (= tp!1098579 b_and!259363)))

(declare-fun b_free!92451 () Bool)

(declare-fun b_next!93155 () Bool)

(assert (=> b!3589049 (= b_free!92451 (not b_next!93155))))

(declare-fun tp!1098588 () Bool)

(declare-fun b_and!259365 () Bool)

(assert (=> b!3589049 (= tp!1098588 b_and!259365)))

(declare-fun b!3589065 () Bool)

(declare-fun b_free!92453 () Bool)

(declare-fun b_next!93157 () Bool)

(assert (=> b!3589065 (= b_free!92453 (not b_next!93157))))

(declare-fun tp!1098582 () Bool)

(declare-fun b_and!259367 () Bool)

(assert (=> b!3589065 (= tp!1098582 b_and!259367)))

(declare-fun b_free!92455 () Bool)

(declare-fun b_next!93159 () Bool)

(assert (=> b!3589065 (= b_free!92455 (not b_next!93159))))

(declare-fun tp!1098590 () Bool)

(declare-fun b_and!259369 () Bool)

(assert (=> b!3589065 (= tp!1098590 b_and!259369)))

(declare-fun b!3589038 () Bool)

(declare-fun res!1448646 () Bool)

(declare-fun e!2220620 () Bool)

(assert (=> b!3589038 (=> (not res!1448646) (not e!2220620))))

(declare-datatypes ((List!37837 0))(
  ( (Nil!37713) (Cons!37713 (h!43133 (_ BitVec 16)) (t!290868 List!37837)) )
))
(declare-datatypes ((TokenValue!5796 0))(
  ( (FloatLiteralValue!11592 (text!41017 List!37837)) (TokenValueExt!5795 (__x!23809 Int)) (Broken!28980 (value!179065 List!37837)) (Object!5919) (End!5796) (Def!5796) (Underscore!5796) (Match!5796) (Else!5796) (Error!5796) (Case!5796) (If!5796) (Extends!5796) (Abstract!5796) (Class!5796) (Val!5796) (DelimiterValue!11592 (del!5856 List!37837)) (KeywordValue!5802 (value!179066 List!37837)) (CommentValue!11592 (value!179067 List!37837)) (WhitespaceValue!11592 (value!179068 List!37837)) (IndentationValue!5796 (value!179069 List!37837)) (String!42313) (Int32!5796) (Broken!28981 (value!179070 List!37837)) (Boolean!5797) (Unit!53710) (OperatorValue!5799 (op!5856 List!37837)) (IdentifierValue!11592 (value!179071 List!37837)) (IdentifierValue!11593 (value!179072 List!37837)) (WhitespaceValue!11593 (value!179073 List!37837)) (True!11592) (False!11592) (Broken!28982 (value!179074 List!37837)) (Broken!28983 (value!179075 List!37837)) (True!11593) (RightBrace!5796) (RightBracket!5796) (Colon!5796) (Null!5796) (Comma!5796) (LeftBracket!5796) (False!11593) (LeftBrace!5796) (ImaginaryLiteralValue!5796 (text!41018 List!37837)) (StringLiteralValue!17388 (value!179076 List!37837)) (EOFValue!5796 (value!179077 List!37837)) (IdentValue!5796 (value!179078 List!37837)) (DelimiterValue!11593 (value!179079 List!37837)) (DedentValue!5796 (value!179080 List!37837)) (NewLineValue!5796 (value!179081 List!37837)) (IntegerValue!17388 (value!179082 (_ BitVec 32)) (text!41019 List!37837)) (IntegerValue!17389 (value!179083 Int) (text!41020 List!37837)) (Times!5796) (Or!5796) (Equal!5796) (Minus!5796) (Broken!28984 (value!179084 List!37837)) (And!5796) (Div!5796) (LessEqual!5796) (Mod!5796) (Concat!16121) (Not!5796) (Plus!5796) (SpaceValue!5796 (value!179085 List!37837)) (IntegerValue!17390 (value!179086 Int) (text!41021 List!37837)) (StringLiteralValue!17389 (text!41022 List!37837)) (FloatLiteralValue!11593 (text!41023 List!37837)) (BytesLiteralValue!5796 (value!179087 List!37837)) (CommentValue!11593 (value!179088 List!37837)) (StringLiteralValue!17390 (value!179089 List!37837)) (ErrorTokenValue!5796 (msg!5857 List!37837)) )
))
(declare-datatypes ((C!20836 0))(
  ( (C!20837 (val!12466 Int)) )
))
(declare-datatypes ((Regex!10325 0))(
  ( (ElementMatch!10325 (c!621682 C!20836)) (Concat!16122 (regOne!21162 Regex!10325) (regTwo!21162 Regex!10325)) (EmptyExpr!10325) (Star!10325 (reg!10654 Regex!10325)) (EmptyLang!10325) (Union!10325 (regOne!21163 Regex!10325) (regTwo!21163 Regex!10325)) )
))
(declare-datatypes ((String!42314 0))(
  ( (String!42315 (value!179090 String)) )
))
(declare-datatypes ((List!37838 0))(
  ( (Nil!37714) (Cons!37714 (h!43134 C!20836) (t!290869 List!37838)) )
))
(declare-datatypes ((IArray!22947 0))(
  ( (IArray!22948 (innerList!11531 List!37838)) )
))
(declare-datatypes ((Conc!11471 0))(
  ( (Node!11471 (left!29472 Conc!11471) (right!29802 Conc!11471) (csize!23172 Int) (cheight!11682 Int)) (Leaf!17865 (xs!14673 IArray!22947) (csize!23173 Int)) (Empty!11471) )
))
(declare-datatypes ((BalanceConc!22556 0))(
  ( (BalanceConc!22557 (c!621683 Conc!11471)) )
))
(declare-datatypes ((TokenValueInjection!11020 0))(
  ( (TokenValueInjection!11021 (toValue!7850 Int) (toChars!7709 Int)) )
))
(declare-datatypes ((Rule!10932 0))(
  ( (Rule!10933 (regex!5566 Regex!10325) (tag!6236 String!42314) (isSeparator!5566 Bool) (transformation!5566 TokenValueInjection!11020)) )
))
(declare-datatypes ((List!37839 0))(
  ( (Nil!37715) (Cons!37715 (h!43135 Rule!10932) (t!290870 List!37839)) )
))
(declare-fun rules!3307 () List!37839)

(declare-fun anOtherTypeRule!33 () Rule!10932)

(declare-fun contains!7195 (List!37839 Rule!10932) Bool)

(assert (=> b!3589038 (= res!1448646 (contains!7195 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2220621 () Bool)

(declare-fun b!3589039 () Bool)

(declare-fun tp!1098592 () Bool)

(declare-datatypes ((Token!10498 0))(
  ( (Token!10499 (value!179091 TokenValue!5796) (rule!8282 Rule!10932) (size!28730 Int) (originalCharacters!6280 List!37838)) )
))
(declare-fun token!511 () Token!10498)

(declare-fun e!2220615 () Bool)

(declare-fun inv!21 (TokenValue!5796) Bool)

(assert (=> b!3589039 (= e!2220615 (and (inv!21 (value!179091 token!511)) e!2220621 tp!1098592))))

(declare-fun b!3589040 () Bool)

(declare-fun res!1448649 () Bool)

(declare-fun e!2220626 () Bool)

(assert (=> b!3589040 (=> res!1448649 e!2220626)))

(declare-fun suffix!1395 () List!37838)

(declare-fun isEmpty!22222 (List!37838) Bool)

(assert (=> b!3589040 (= res!1448649 (isEmpty!22222 suffix!1395))))

(declare-fun b!3589041 () Bool)

(declare-fun res!1448647 () Bool)

(declare-fun e!2220628 () Bool)

(assert (=> b!3589041 (=> res!1448647 e!2220628)))

(declare-fun lt!1230937 () C!20836)

(declare-fun contains!7196 (List!37838 C!20836) Bool)

(declare-fun usedCharacters!780 (Regex!10325) List!37838)

(assert (=> b!3589041 (= res!1448647 (not (contains!7196 (usedCharacters!780 (regex!5566 anOtherTypeRule!33)) lt!1230937)))))

(declare-fun b!3589042 () Bool)

(declare-fun res!1448638 () Bool)

(assert (=> b!3589042 (=> (not res!1448638) (not e!2220620))))

(declare-fun rule!403 () Rule!10932)

(assert (=> b!3589042 (= res!1448638 (contains!7195 rules!3307 rule!403))))

(declare-fun b!3589043 () Bool)

(declare-fun e!2220618 () Bool)

(declare-datatypes ((tuple2!37608 0))(
  ( (tuple2!37609 (_1!21938 Token!10498) (_2!21938 List!37838)) )
))
(declare-fun lt!1230944 () tuple2!37608)

(declare-fun lt!1230932 () Rule!10932)

(assert (=> b!3589043 (= e!2220618 (= (rule!8282 (_1!21938 lt!1230944)) lt!1230932))))

(declare-fun b!3589044 () Bool)

(declare-fun res!1448654 () Bool)

(assert (=> b!3589044 (=> (not res!1448654) (not e!2220620))))

(declare-datatypes ((LexerInterface!5155 0))(
  ( (LexerInterfaceExt!5152 (__x!23810 Int)) (Lexer!5153) )
))
(declare-fun thiss!23823 () LexerInterface!5155)

(declare-fun rulesInvariant!4552 (LexerInterface!5155 List!37839) Bool)

(assert (=> b!3589044 (= res!1448654 (rulesInvariant!4552 thiss!23823 rules!3307))))

(declare-fun b!3589045 () Bool)

(declare-fun e!2220611 () Bool)

(declare-fun tp_is_empty!17733 () Bool)

(declare-fun tp!1098589 () Bool)

(assert (=> b!3589045 (= e!2220611 (and tp_is_empty!17733 tp!1098589))))

(declare-fun b!3589046 () Bool)

(declare-fun res!1448652 () Bool)

(declare-fun e!2220624 () Bool)

(assert (=> b!3589046 (=> (not res!1448652) (not e!2220624))))

(declare-fun lt!1230945 () tuple2!37608)

(assert (=> b!3589046 (= res!1448652 (isEmpty!22222 (_2!21938 lt!1230945)))))

(declare-fun e!2220612 () Bool)

(declare-fun tp!1098591 () Bool)

(declare-fun b!3589047 () Bool)

(declare-fun inv!51047 (String!42314) Bool)

(declare-fun inv!51050 (TokenValueInjection!11020) Bool)

(assert (=> b!3589047 (= e!2220621 (and tp!1098591 (inv!51047 (tag!6236 (rule!8282 token!511))) (inv!51050 (transformation!5566 (rule!8282 token!511))) e!2220612))))

(declare-fun e!2220623 () Bool)

(declare-fun tp!1098580 () Bool)

(declare-fun e!2220617 () Bool)

(declare-fun b!3589048 () Bool)

(assert (=> b!3589048 (= e!2220617 (and tp!1098580 (inv!51047 (tag!6236 (h!43135 rules!3307))) (inv!51050 (transformation!5566 (h!43135 rules!3307))) e!2220623))))

(declare-fun e!2220622 () Bool)

(assert (=> b!3589049 (= e!2220622 (and tp!1098579 tp!1098588))))

(declare-fun b!3589050 () Bool)

(declare-fun e!2220634 () Bool)

(assert (=> b!3589050 (= e!2220634 e!2220624)))

(declare-fun res!1448650 () Bool)

(assert (=> b!3589050 (=> (not res!1448650) (not e!2220624))))

(assert (=> b!3589050 (= res!1448650 (= (_1!21938 lt!1230945) token!511))))

(declare-datatypes ((Option!7762 0))(
  ( (None!7761) (Some!7761 (v!37431 tuple2!37608)) )
))
(declare-fun lt!1230929 () Option!7762)

(declare-fun get!12155 (Option!7762) tuple2!37608)

(assert (=> b!3589050 (= lt!1230945 (get!12155 lt!1230929))))

(declare-fun e!2220627 () Bool)

(declare-fun tp!1098587 () Bool)

(declare-fun b!3589051 () Bool)

(declare-fun e!2220630 () Bool)

(assert (=> b!3589051 (= e!2220627 (and tp!1098587 (inv!51047 (tag!6236 rule!403)) (inv!51050 (transformation!5566 rule!403)) e!2220630))))

(declare-fun b!3589037 () Bool)

(assert (=> b!3589037 (= e!2220624 (not e!2220626))))

(declare-fun res!1448651 () Bool)

(assert (=> b!3589037 (=> res!1448651 e!2220626)))

(declare-fun lt!1230931 () List!37838)

(declare-fun matchR!4894 (Regex!10325 List!37838) Bool)

(assert (=> b!3589037 (= res!1448651 (not (matchR!4894 (regex!5566 rule!403) lt!1230931)))))

(declare-fun ruleValid!1831 (LexerInterface!5155 Rule!10932) Bool)

(assert (=> b!3589037 (ruleValid!1831 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53711 0))(
  ( (Unit!53712) )
))
(declare-fun lt!1230941 () Unit!53711)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!986 (LexerInterface!5155 Rule!10932 List!37839) Unit!53711)

(assert (=> b!3589037 (= lt!1230941 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!986 thiss!23823 rule!403 rules!3307))))

(declare-fun res!1448645 () Bool)

(assert (=> start!333054 (=> (not res!1448645) (not e!2220620))))

(get-info :version)

(assert (=> start!333054 (= res!1448645 ((_ is Lexer!5153) thiss!23823))))

(assert (=> start!333054 e!2220620))

(declare-fun e!2220616 () Bool)

(assert (=> start!333054 e!2220616))

(assert (=> start!333054 e!2220611))

(assert (=> start!333054 true))

(declare-fun inv!51051 (Token!10498) Bool)

(assert (=> start!333054 (and (inv!51051 token!511) e!2220615)))

(assert (=> start!333054 e!2220627))

(declare-fun e!2220625 () Bool)

(assert (=> start!333054 e!2220625))

(declare-fun tp!1098585 () Bool)

(declare-fun b!3589052 () Bool)

(assert (=> b!3589052 (= e!2220625 (and tp!1098585 (inv!51047 (tag!6236 anOtherTypeRule!33)) (inv!51050 (transformation!5566 anOtherTypeRule!33)) e!2220622))))

(declare-fun b!3589053 () Bool)

(assert (=> b!3589053 (= e!2220626 e!2220628)))

(declare-fun res!1448648 () Bool)

(assert (=> b!3589053 (=> res!1448648 e!2220628)))

(assert (=> b!3589053 (= res!1448648 (contains!7196 (usedCharacters!780 (regex!5566 rule!403)) lt!1230937))))

(declare-fun head!7488 (List!37838) C!20836)

(assert (=> b!3589053 (= lt!1230937 (head!7488 suffix!1395))))

(declare-fun b!3589054 () Bool)

(declare-fun res!1448640 () Bool)

(declare-fun e!2220614 () Bool)

(assert (=> b!3589054 (=> res!1448640 e!2220614)))

(declare-fun lt!1230933 () List!37838)

(assert (=> b!3589054 (= res!1448640 (not (matchR!4894 (regex!5566 (rule!8282 (_1!21938 lt!1230944))) lt!1230933)))))

(declare-fun b!3589055 () Bool)

(declare-fun res!1448639 () Bool)

(assert (=> b!3589055 (=> (not res!1448639) (not e!2220620))))

(declare-fun isEmpty!22223 (List!37839) Bool)

(assert (=> b!3589055 (= res!1448639 (not (isEmpty!22223 rules!3307)))))

(declare-fun b!3589056 () Bool)

(declare-fun e!2220633 () Bool)

(assert (=> b!3589056 (= e!2220633 e!2220618)))

(declare-fun res!1448643 () Bool)

(assert (=> b!3589056 (=> (not res!1448643) (not e!2220618))))

(declare-fun list!13870 (BalanceConc!22556) List!37838)

(declare-fun charsOf!3580 (Token!10498) BalanceConc!22556)

(assert (=> b!3589056 (= res!1448643 (matchR!4894 (regex!5566 lt!1230932) (list!13870 (charsOf!3580 (_1!21938 lt!1230944)))))))

(declare-datatypes ((Option!7763 0))(
  ( (None!7762) (Some!7762 (v!37432 Rule!10932)) )
))
(declare-fun lt!1230935 () Option!7763)

(declare-fun get!12156 (Option!7763) Rule!10932)

(assert (=> b!3589056 (= lt!1230932 (get!12156 lt!1230935))))

(declare-fun b!3589057 () Bool)

(declare-fun res!1448653 () Bool)

(assert (=> b!3589057 (=> res!1448653 e!2220628)))

(declare-fun sepAndNonSepRulesDisjointChars!1736 (List!37839 List!37839) Bool)

(assert (=> b!3589057 (= res!1448653 (not (sepAndNonSepRulesDisjointChars!1736 rules!3307 rules!3307)))))

(declare-fun b!3589058 () Bool)

(assert (=> b!3589058 (= e!2220628 e!2220614)))

(declare-fun res!1448637 () Bool)

(assert (=> b!3589058 (=> res!1448637 e!2220614)))

(declare-fun lt!1230928 () List!37838)

(declare-fun isPrefix!2929 (List!37838 List!37838) Bool)

(assert (=> b!3589058 (= res!1448637 (not (isPrefix!2929 lt!1230933 lt!1230928)))))

(declare-fun ++!9382 (List!37838 List!37838) List!37838)

(assert (=> b!3589058 (isPrefix!2929 lt!1230933 (++!9382 lt!1230933 (_2!21938 lt!1230944)))))

(declare-fun lt!1230946 () Unit!53711)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1850 (List!37838 List!37838) Unit!53711)

(assert (=> b!3589058 (= lt!1230946 (lemmaConcatTwoListThenFirstIsPrefix!1850 lt!1230933 (_2!21938 lt!1230944)))))

(declare-fun lt!1230939 () BalanceConc!22556)

(assert (=> b!3589058 (= lt!1230933 (list!13870 lt!1230939))))

(assert (=> b!3589058 (= lt!1230939 (charsOf!3580 (_1!21938 lt!1230944)))))

(assert (=> b!3589058 e!2220633))

(declare-fun res!1448644 () Bool)

(assert (=> b!3589058 (=> (not res!1448644) (not e!2220633))))

(declare-fun isDefined!5994 (Option!7763) Bool)

(assert (=> b!3589058 (= res!1448644 (isDefined!5994 lt!1230935))))

(declare-fun getRuleFromTag!1172 (LexerInterface!5155 List!37839 String!42314) Option!7763)

(assert (=> b!3589058 (= lt!1230935 (getRuleFromTag!1172 thiss!23823 rules!3307 (tag!6236 (rule!8282 (_1!21938 lt!1230944)))))))

(declare-fun lt!1230938 () Unit!53711)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1172 (LexerInterface!5155 List!37839 List!37838 Token!10498) Unit!53711)

(assert (=> b!3589058 (= lt!1230938 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1172 thiss!23823 rules!3307 lt!1230928 (_1!21938 lt!1230944)))))

(declare-fun lt!1230930 () Option!7762)

(assert (=> b!3589058 (= lt!1230944 (get!12155 lt!1230930))))

(declare-fun lt!1230942 () Unit!53711)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!835 (LexerInterface!5155 List!37839 List!37838 List!37838) Unit!53711)

(assert (=> b!3589058 (= lt!1230942 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!835 thiss!23823 rules!3307 lt!1230931 suffix!1395))))

(declare-fun maxPrefix!2689 (LexerInterface!5155 List!37839 List!37838) Option!7762)

(assert (=> b!3589058 (= lt!1230930 (maxPrefix!2689 thiss!23823 rules!3307 lt!1230928))))

(assert (=> b!3589058 (isPrefix!2929 lt!1230931 lt!1230928)))

(declare-fun lt!1230936 () Unit!53711)

(assert (=> b!3589058 (= lt!1230936 (lemmaConcatTwoListThenFirstIsPrefix!1850 lt!1230931 suffix!1395))))

(assert (=> b!3589058 (= lt!1230928 (++!9382 lt!1230931 suffix!1395))))

(declare-fun b!3589059 () Bool)

(declare-fun tp!1098581 () Bool)

(assert (=> b!3589059 (= e!2220616 (and e!2220617 tp!1098581))))

(declare-fun b!3589060 () Bool)

(declare-fun res!1448655 () Bool)

(assert (=> b!3589060 (=> (not res!1448655) (not e!2220620))))

(assert (=> b!3589060 (= res!1448655 (not (= (isSeparator!5566 anOtherTypeRule!33) (isSeparator!5566 rule!403))))))

(assert (=> b!3589061 (= e!2220630 (and tp!1098583 tp!1098586))))

(assert (=> b!3589062 (= e!2220612 (and tp!1098584 tp!1098578))))

(declare-fun b!3589063 () Bool)

(assert (=> b!3589063 (= e!2220620 e!2220634)))

(declare-fun res!1448642 () Bool)

(assert (=> b!3589063 (=> (not res!1448642) (not e!2220634))))

(declare-fun isDefined!5995 (Option!7762) Bool)

(assert (=> b!3589063 (= res!1448642 (isDefined!5995 lt!1230929))))

(assert (=> b!3589063 (= lt!1230929 (maxPrefix!2689 thiss!23823 rules!3307 lt!1230931))))

(assert (=> b!3589063 (= lt!1230931 (list!13870 (charsOf!3580 token!511)))))

(declare-fun b!3589064 () Bool)

(assert (=> b!3589064 (= e!2220614 true)))

(declare-fun lt!1230940 () Unit!53711)

(declare-fun lemmaCharactersSize!619 (Token!10498) Unit!53711)

(assert (=> b!3589064 (= lt!1230940 (lemmaCharactersSize!619 (_1!21938 lt!1230944)))))

(declare-fun lt!1230934 () Unit!53711)

(declare-fun lemmaEqSameImage!757 (TokenValueInjection!11020 BalanceConc!22556 BalanceConc!22556) Unit!53711)

(declare-fun seqFromList!4119 (List!37838) BalanceConc!22556)

(assert (=> b!3589064 (= lt!1230934 (lemmaEqSameImage!757 (transformation!5566 (rule!8282 (_1!21938 lt!1230944))) lt!1230939 (seqFromList!4119 (originalCharacters!6280 (_1!21938 lt!1230944)))))))

(declare-fun lt!1230943 () Unit!53711)

(declare-fun lemmaSemiInverse!1323 (TokenValueInjection!11020 BalanceConc!22556) Unit!53711)

(assert (=> b!3589064 (= lt!1230943 (lemmaSemiInverse!1323 (transformation!5566 (rule!8282 (_1!21938 lt!1230944))) lt!1230939))))

(assert (=> b!3589065 (= e!2220623 (and tp!1098582 tp!1098590))))

(declare-fun b!3589066 () Bool)

(declare-fun res!1448641 () Bool)

(assert (=> b!3589066 (=> (not res!1448641) (not e!2220624))))

(assert (=> b!3589066 (= res!1448641 (= (rule!8282 token!511) rule!403))))

(assert (= (and start!333054 res!1448645) b!3589055))

(assert (= (and b!3589055 res!1448639) b!3589044))

(assert (= (and b!3589044 res!1448654) b!3589042))

(assert (= (and b!3589042 res!1448638) b!3589038))

(assert (= (and b!3589038 res!1448646) b!3589060))

(assert (= (and b!3589060 res!1448655) b!3589063))

(assert (= (and b!3589063 res!1448642) b!3589050))

(assert (= (and b!3589050 res!1448650) b!3589046))

(assert (= (and b!3589046 res!1448652) b!3589066))

(assert (= (and b!3589066 res!1448641) b!3589037))

(assert (= (and b!3589037 (not res!1448651)) b!3589040))

(assert (= (and b!3589040 (not res!1448649)) b!3589053))

(assert (= (and b!3589053 (not res!1448648)) b!3589041))

(assert (= (and b!3589041 (not res!1448647)) b!3589057))

(assert (= (and b!3589057 (not res!1448653)) b!3589058))

(assert (= (and b!3589058 res!1448644) b!3589056))

(assert (= (and b!3589056 res!1448643) b!3589043))

(assert (= (and b!3589058 (not res!1448637)) b!3589054))

(assert (= (and b!3589054 (not res!1448640)) b!3589064))

(assert (= b!3589048 b!3589065))

(assert (= b!3589059 b!3589048))

(assert (= (and start!333054 ((_ is Cons!37715) rules!3307)) b!3589059))

(assert (= (and start!333054 ((_ is Cons!37714) suffix!1395)) b!3589045))

(assert (= b!3589047 b!3589062))

(assert (= b!3589039 b!3589047))

(assert (= start!333054 b!3589039))

(assert (= b!3589051 b!3589061))

(assert (= start!333054 b!3589051))

(assert (= b!3589052 b!3589049))

(assert (= start!333054 b!3589052))

(declare-fun m!4082787 () Bool)

(assert (=> b!3589044 m!4082787))

(declare-fun m!4082789 () Bool)

(assert (=> b!3589057 m!4082789))

(declare-fun m!4082791 () Bool)

(assert (=> b!3589063 m!4082791))

(declare-fun m!4082793 () Bool)

(assert (=> b!3589063 m!4082793))

(declare-fun m!4082795 () Bool)

(assert (=> b!3589063 m!4082795))

(assert (=> b!3589063 m!4082795))

(declare-fun m!4082797 () Bool)

(assert (=> b!3589063 m!4082797))

(declare-fun m!4082799 () Bool)

(assert (=> b!3589056 m!4082799))

(assert (=> b!3589056 m!4082799))

(declare-fun m!4082801 () Bool)

(assert (=> b!3589056 m!4082801))

(assert (=> b!3589056 m!4082801))

(declare-fun m!4082803 () Bool)

(assert (=> b!3589056 m!4082803))

(declare-fun m!4082805 () Bool)

(assert (=> b!3589056 m!4082805))

(declare-fun m!4082807 () Bool)

(assert (=> b!3589046 m!4082807))

(declare-fun m!4082809 () Bool)

(assert (=> b!3589037 m!4082809))

(declare-fun m!4082811 () Bool)

(assert (=> b!3589037 m!4082811))

(declare-fun m!4082813 () Bool)

(assert (=> b!3589037 m!4082813))

(declare-fun m!4082815 () Bool)

(assert (=> b!3589048 m!4082815))

(declare-fun m!4082817 () Bool)

(assert (=> b!3589048 m!4082817))

(declare-fun m!4082819 () Bool)

(assert (=> b!3589042 m!4082819))

(declare-fun m!4082821 () Bool)

(assert (=> b!3589039 m!4082821))

(declare-fun m!4082823 () Bool)

(assert (=> b!3589064 m!4082823))

(declare-fun m!4082825 () Bool)

(assert (=> b!3589064 m!4082825))

(assert (=> b!3589064 m!4082825))

(declare-fun m!4082827 () Bool)

(assert (=> b!3589064 m!4082827))

(declare-fun m!4082829 () Bool)

(assert (=> b!3589064 m!4082829))

(declare-fun m!4082831 () Bool)

(assert (=> b!3589040 m!4082831))

(declare-fun m!4082833 () Bool)

(assert (=> b!3589054 m!4082833))

(declare-fun m!4082835 () Bool)

(assert (=> start!333054 m!4082835))

(declare-fun m!4082837 () Bool)

(assert (=> b!3589058 m!4082837))

(declare-fun m!4082839 () Bool)

(assert (=> b!3589058 m!4082839))

(assert (=> b!3589058 m!4082837))

(declare-fun m!4082841 () Bool)

(assert (=> b!3589058 m!4082841))

(assert (=> b!3589058 m!4082799))

(declare-fun m!4082843 () Bool)

(assert (=> b!3589058 m!4082843))

(declare-fun m!4082845 () Bool)

(assert (=> b!3589058 m!4082845))

(declare-fun m!4082847 () Bool)

(assert (=> b!3589058 m!4082847))

(declare-fun m!4082849 () Bool)

(assert (=> b!3589058 m!4082849))

(declare-fun m!4082851 () Bool)

(assert (=> b!3589058 m!4082851))

(declare-fun m!4082853 () Bool)

(assert (=> b!3589058 m!4082853))

(declare-fun m!4082855 () Bool)

(assert (=> b!3589058 m!4082855))

(declare-fun m!4082857 () Bool)

(assert (=> b!3589058 m!4082857))

(declare-fun m!4082859 () Bool)

(assert (=> b!3589058 m!4082859))

(declare-fun m!4082861 () Bool)

(assert (=> b!3589058 m!4082861))

(declare-fun m!4082863 () Bool)

(assert (=> b!3589058 m!4082863))

(declare-fun m!4082865 () Bool)

(assert (=> b!3589055 m!4082865))

(declare-fun m!4082867 () Bool)

(assert (=> b!3589051 m!4082867))

(declare-fun m!4082869 () Bool)

(assert (=> b!3589051 m!4082869))

(declare-fun m!4082871 () Bool)

(assert (=> b!3589052 m!4082871))

(declare-fun m!4082873 () Bool)

(assert (=> b!3589052 m!4082873))

(declare-fun m!4082875 () Bool)

(assert (=> b!3589053 m!4082875))

(assert (=> b!3589053 m!4082875))

(declare-fun m!4082877 () Bool)

(assert (=> b!3589053 m!4082877))

(declare-fun m!4082879 () Bool)

(assert (=> b!3589053 m!4082879))

(declare-fun m!4082881 () Bool)

(assert (=> b!3589050 m!4082881))

(declare-fun m!4082883 () Bool)

(assert (=> b!3589038 m!4082883))

(declare-fun m!4082885 () Bool)

(assert (=> b!3589047 m!4082885))

(declare-fun m!4082887 () Bool)

(assert (=> b!3589047 m!4082887))

(declare-fun m!4082889 () Bool)

(assert (=> b!3589041 m!4082889))

(assert (=> b!3589041 m!4082889))

(declare-fun m!4082891 () Bool)

(assert (=> b!3589041 m!4082891))

(check-sat b_and!259359 (not b!3589064) b_and!259363 (not b!3589056) (not b_next!93145) (not b!3589059) b_and!259355 (not b_next!93159) (not b!3589045) (not b!3589057) (not b_next!93147) (not b_next!93157) (not b_next!93153) (not b!3589038) (not b!3589040) b_and!259361 (not start!333054) (not b!3589053) (not b!3589037) (not b_next!93151) b_and!259357 (not b_next!93149) (not b!3589055) b_and!259365 (not b!3589042) (not b!3589047) (not b!3589041) (not b!3589046) (not b!3589039) (not b!3589051) (not b!3589048) b_and!259369 (not b!3589044) (not b!3589052) (not b!3589058) (not b!3589050) (not b!3589063) tp_is_empty!17733 (not b_next!93155) (not b!3589054) b_and!259367)
(check-sat b_and!259359 b_and!259363 b_and!259361 (not b_next!93151) (not b_next!93145) b_and!259355 b_and!259365 (not b_next!93159) b_and!259369 (not b_next!93147) (not b_next!93157) (not b_next!93153) b_and!259357 (not b_next!93149) (not b_next!93155) b_and!259367)
