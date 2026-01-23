; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!334670 () Bool)

(assert start!334670)

(declare-fun b!3600165 () Bool)

(declare-fun b_free!93129 () Bool)

(declare-fun b_next!93833 () Bool)

(assert (=> b!3600165 (= b_free!93129 (not b_next!93833))))

(declare-fun tp!1101316 () Bool)

(declare-fun b_and!261451 () Bool)

(assert (=> b!3600165 (= tp!1101316 b_and!261451)))

(declare-fun b_free!93131 () Bool)

(declare-fun b_next!93835 () Bool)

(assert (=> b!3600165 (= b_free!93131 (not b_next!93835))))

(declare-fun tp!1101315 () Bool)

(declare-fun b_and!261453 () Bool)

(assert (=> b!3600165 (= tp!1101315 b_and!261453)))

(declare-fun b!3600163 () Bool)

(declare-fun b_free!93133 () Bool)

(declare-fun b_next!93837 () Bool)

(assert (=> b!3600163 (= b_free!93133 (not b_next!93837))))

(declare-fun tp!1101308 () Bool)

(declare-fun b_and!261455 () Bool)

(assert (=> b!3600163 (= tp!1101308 b_and!261455)))

(declare-fun b_free!93135 () Bool)

(declare-fun b_next!93839 () Bool)

(assert (=> b!3600163 (= b_free!93135 (not b_next!93839))))

(declare-fun tp!1101319 () Bool)

(declare-fun b_and!261457 () Bool)

(assert (=> b!3600163 (= tp!1101319 b_and!261457)))

(declare-fun b!3600152 () Bool)

(declare-fun b_free!93137 () Bool)

(declare-fun b_next!93841 () Bool)

(assert (=> b!3600152 (= b_free!93137 (not b_next!93841))))

(declare-fun tp!1101312 () Bool)

(declare-fun b_and!261459 () Bool)

(assert (=> b!3600152 (= tp!1101312 b_and!261459)))

(declare-fun b_free!93139 () Bool)

(declare-fun b_next!93843 () Bool)

(assert (=> b!3600152 (= b_free!93139 (not b_next!93843))))

(declare-fun tp!1101310 () Bool)

(declare-fun b_and!261461 () Bool)

(assert (=> b!3600152 (= tp!1101310 b_and!261461)))

(declare-fun b!3600140 () Bool)

(declare-fun b_free!93141 () Bool)

(declare-fun b_next!93845 () Bool)

(assert (=> b!3600140 (= b_free!93141 (not b_next!93845))))

(declare-fun tp!1101311 () Bool)

(declare-fun b_and!261463 () Bool)

(assert (=> b!3600140 (= tp!1101311 b_and!261463)))

(declare-fun b_free!93143 () Bool)

(declare-fun b_next!93847 () Bool)

(assert (=> b!3600140 (= b_free!93143 (not b_next!93847))))

(declare-fun tp!1101318 () Bool)

(declare-fun b_and!261465 () Bool)

(assert (=> b!3600140 (= tp!1101318 b_and!261465)))

(declare-fun b!3600130 () Bool)

(declare-fun e!2227781 () Bool)

(assert (=> b!3600130 (= e!2227781 true)))

(declare-fun lt!1236719 () Bool)

(declare-datatypes ((List!37991 0))(
  ( (Nil!37867) (Cons!37867 (h!43287 (_ BitVec 16)) (t!292202 List!37991)) )
))
(declare-datatypes ((TokenValue!5834 0))(
  ( (FloatLiteralValue!11668 (text!41283 List!37991)) (TokenValueExt!5833 (__x!23885 Int)) (Broken!29170 (value!180148 List!37991)) (Object!5957) (End!5834) (Def!5834) (Underscore!5834) (Match!5834) (Else!5834) (Error!5834) (Case!5834) (If!5834) (Extends!5834) (Abstract!5834) (Class!5834) (Val!5834) (DelimiterValue!11668 (del!5894 List!37991)) (KeywordValue!5840 (value!180149 List!37991)) (CommentValue!11668 (value!180150 List!37991)) (WhitespaceValue!11668 (value!180151 List!37991)) (IndentationValue!5834 (value!180152 List!37991)) (String!42503) (Int32!5834) (Broken!29171 (value!180153 List!37991)) (Boolean!5835) (Unit!53898) (OperatorValue!5837 (op!5894 List!37991)) (IdentifierValue!11668 (value!180154 List!37991)) (IdentifierValue!11669 (value!180155 List!37991)) (WhitespaceValue!11669 (value!180156 List!37991)) (True!11668) (False!11668) (Broken!29172 (value!180157 List!37991)) (Broken!29173 (value!180158 List!37991)) (True!11669) (RightBrace!5834) (RightBracket!5834) (Colon!5834) (Null!5834) (Comma!5834) (LeftBracket!5834) (False!11669) (LeftBrace!5834) (ImaginaryLiteralValue!5834 (text!41284 List!37991)) (StringLiteralValue!17502 (value!180159 List!37991)) (EOFValue!5834 (value!180160 List!37991)) (IdentValue!5834 (value!180161 List!37991)) (DelimiterValue!11669 (value!180162 List!37991)) (DedentValue!5834 (value!180163 List!37991)) (NewLineValue!5834 (value!180164 List!37991)) (IntegerValue!17502 (value!180165 (_ BitVec 32)) (text!41285 List!37991)) (IntegerValue!17503 (value!180166 Int) (text!41286 List!37991)) (Times!5834) (Or!5834) (Equal!5834) (Minus!5834) (Broken!29174 (value!180167 List!37991)) (And!5834) (Div!5834) (LessEqual!5834) (Mod!5834) (Concat!16197) (Not!5834) (Plus!5834) (SpaceValue!5834 (value!180168 List!37991)) (IntegerValue!17504 (value!180169 Int) (text!41287 List!37991)) (StringLiteralValue!17503 (text!41288 List!37991)) (FloatLiteralValue!11669 (text!41289 List!37991)) (BytesLiteralValue!5834 (value!180170 List!37991)) (CommentValue!11669 (value!180171 List!37991)) (StringLiteralValue!17504 (value!180172 List!37991)) (ErrorTokenValue!5834 (msg!5895 List!37991)) )
))
(declare-datatypes ((C!20912 0))(
  ( (C!20913 (val!12504 Int)) )
))
(declare-datatypes ((Regex!10363 0))(
  ( (ElementMatch!10363 (c!623108 C!20912)) (Concat!16198 (regOne!21238 Regex!10363) (regTwo!21238 Regex!10363)) (EmptyExpr!10363) (Star!10363 (reg!10692 Regex!10363)) (EmptyLang!10363) (Union!10363 (regOne!21239 Regex!10363) (regTwo!21239 Regex!10363)) )
))
(declare-datatypes ((String!42504 0))(
  ( (String!42505 (value!180173 String)) )
))
(declare-datatypes ((List!37992 0))(
  ( (Nil!37868) (Cons!37868 (h!43288 C!20912) (t!292203 List!37992)) )
))
(declare-datatypes ((IArray!23063 0))(
  ( (IArray!23064 (innerList!11589 List!37992)) )
))
(declare-datatypes ((Conc!11529 0))(
  ( (Node!11529 (left!29589 Conc!11529) (right!29919 Conc!11529) (csize!23288 Int) (cheight!11740 Int)) (Leaf!17942 (xs!14731 IArray!23063) (csize!23289 Int)) (Empty!11529) )
))
(declare-datatypes ((BalanceConc!22672 0))(
  ( (BalanceConc!22673 (c!623109 Conc!11529)) )
))
(declare-datatypes ((TokenValueInjection!11096 0))(
  ( (TokenValueInjection!11097 (toValue!7888 Int) (toChars!7747 Int)) )
))
(declare-datatypes ((Rule!11008 0))(
  ( (Rule!11009 (regex!5604 Regex!10363) (tag!6294 String!42504) (isSeparator!5604 Bool) (transformation!5604 TokenValueInjection!11096)) )
))
(declare-datatypes ((List!37993 0))(
  ( (Nil!37869) (Cons!37869 (h!43289 Rule!11008) (t!292204 List!37993)) )
))
(declare-fun rules!3307 () List!37993)

(declare-datatypes ((Token!10574 0))(
  ( (Token!10575 (value!180174 TokenValue!5834) (rule!8338 Rule!11008) (size!28854 Int) (originalCharacters!6318 List!37992)) )
))
(declare-datatypes ((tuple2!37760 0))(
  ( (tuple2!37761 (_1!22014 Token!10574) (_2!22014 List!37992)) )
))
(declare-fun lt!1236722 () tuple2!37760)

(declare-fun contains!7271 (List!37993 Rule!11008) Bool)

(assert (=> b!3600130 (= lt!1236719 (contains!7271 rules!3307 (rule!8338 (_1!22014 lt!1236722))))))

(declare-fun b!3600131 () Bool)

(declare-fun e!2227782 () Bool)

(declare-fun e!2227779 () Bool)

(assert (=> b!3600131 (= e!2227782 e!2227779)))

(declare-fun res!1454832 () Bool)

(assert (=> b!3600131 (=> (not res!1454832) (not e!2227779))))

(declare-fun lt!1236727 () tuple2!37760)

(declare-fun token!511 () Token!10574)

(assert (=> b!3600131 (= res!1454832 (= (_1!22014 lt!1236727) token!511))))

(declare-datatypes ((Option!7838 0))(
  ( (None!7837) (Some!7837 (v!37547 tuple2!37760)) )
))
(declare-fun lt!1236711 () Option!7838)

(declare-fun get!12250 (Option!7838) tuple2!37760)

(assert (=> b!3600131 (= lt!1236727 (get!12250 lt!1236711))))

(declare-fun b!3600132 () Bool)

(declare-fun res!1454825 () Bool)

(declare-fun e!2227792 () Bool)

(assert (=> b!3600132 (=> res!1454825 e!2227792)))

(declare-fun suffix!1395 () List!37992)

(declare-fun isEmpty!22338 (List!37992) Bool)

(assert (=> b!3600132 (= res!1454825 (isEmpty!22338 suffix!1395))))

(declare-fun b!3600133 () Bool)

(declare-fun e!2227780 () Bool)

(declare-fun e!2227791 () Bool)

(declare-fun tp!1101320 () Bool)

(declare-fun inv!51220 (String!42504) Bool)

(declare-fun inv!51223 (TokenValueInjection!11096) Bool)

(assert (=> b!3600133 (= e!2227791 (and tp!1101320 (inv!51220 (tag!6294 (rule!8338 token!511))) (inv!51223 (transformation!5604 (rule!8338 token!511))) e!2227780))))

(declare-fun b!3600134 () Bool)

(declare-fun res!1454824 () Bool)

(declare-fun e!2227806 () Bool)

(assert (=> b!3600134 (=> res!1454824 e!2227806)))

(declare-fun sepAndNonSepRulesDisjointChars!1774 (List!37993 List!37993) Bool)

(assert (=> b!3600134 (= res!1454824 (not (sepAndNonSepRulesDisjointChars!1774 rules!3307 rules!3307)))))

(declare-fun b!3600135 () Bool)

(assert (=> b!3600135 (= e!2227792 e!2227806)))

(declare-fun res!1454830 () Bool)

(assert (=> b!3600135 (=> res!1454830 e!2227806)))

(declare-fun lt!1236721 () List!37992)

(declare-fun lt!1236713 () C!20912)

(declare-fun contains!7272 (List!37992 C!20912) Bool)

(assert (=> b!3600135 (= res!1454830 (contains!7272 lt!1236721 lt!1236713))))

(declare-fun head!7546 (List!37992) C!20912)

(assert (=> b!3600135 (= lt!1236713 (head!7546 suffix!1395))))

(declare-fun rule!403 () Rule!11008)

(declare-fun usedCharacters!818 (Regex!10363) List!37992)

(assert (=> b!3600135 (= lt!1236721 (usedCharacters!818 (regex!5604 rule!403)))))

(declare-fun b!3600136 () Bool)

(declare-fun res!1454820 () Bool)

(assert (=> b!3600136 (=> res!1454820 e!2227806)))

(declare-fun anOtherTypeRule!33 () Rule!11008)

(assert (=> b!3600136 (= res!1454820 (not (contains!7272 (usedCharacters!818 (regex!5604 anOtherTypeRule!33)) lt!1236713)))))

(declare-fun e!2227787 () Bool)

(declare-fun e!2227800 () Bool)

(declare-fun b!3600137 () Bool)

(declare-fun tp!1101321 () Bool)

(assert (=> b!3600137 (= e!2227787 (and tp!1101321 (inv!51220 (tag!6294 anOtherTypeRule!33)) (inv!51223 (transformation!5604 anOtherTypeRule!33)) e!2227800))))

(declare-fun b!3600138 () Bool)

(declare-fun e!2227797 () Bool)

(assert (=> b!3600138 (= e!2227806 e!2227797)))

(declare-fun res!1454831 () Bool)

(assert (=> b!3600138 (=> res!1454831 e!2227797)))

(declare-fun lt!1236726 () List!37992)

(declare-fun lt!1236717 () List!37992)

(declare-fun isPrefix!2967 (List!37992 List!37992) Bool)

(assert (=> b!3600138 (= res!1454831 (not (isPrefix!2967 lt!1236726 lt!1236717)))))

(declare-fun ++!9420 (List!37992 List!37992) List!37992)

(assert (=> b!3600138 (isPrefix!2967 lt!1236726 (++!9420 lt!1236726 (_2!22014 lt!1236722)))))

(declare-datatypes ((Unit!53899 0))(
  ( (Unit!53900) )
))
(declare-fun lt!1236739 () Unit!53899)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1888 (List!37992 List!37992) Unit!53899)

(assert (=> b!3600138 (= lt!1236739 (lemmaConcatTwoListThenFirstIsPrefix!1888 lt!1236726 (_2!22014 lt!1236722)))))

(declare-fun lt!1236723 () BalanceConc!22672)

(declare-fun list!13948 (BalanceConc!22672) List!37992)

(assert (=> b!3600138 (= lt!1236726 (list!13948 lt!1236723))))

(declare-fun charsOf!3618 (Token!10574) BalanceConc!22672)

(assert (=> b!3600138 (= lt!1236723 (charsOf!3618 (_1!22014 lt!1236722)))))

(declare-fun e!2227786 () Bool)

(assert (=> b!3600138 e!2227786))

(declare-fun res!1454814 () Bool)

(assert (=> b!3600138 (=> (not res!1454814) (not e!2227786))))

(declare-datatypes ((Option!7839 0))(
  ( (None!7838) (Some!7838 (v!37548 Rule!11008)) )
))
(declare-fun lt!1236720 () Option!7839)

(declare-fun isDefined!6070 (Option!7839) Bool)

(assert (=> b!3600138 (= res!1454814 (isDefined!6070 lt!1236720))))

(declare-datatypes ((LexerInterface!5193 0))(
  ( (LexerInterfaceExt!5190 (__x!23886 Int)) (Lexer!5191) )
))
(declare-fun thiss!23823 () LexerInterface!5193)

(declare-fun getRuleFromTag!1210 (LexerInterface!5193 List!37993 String!42504) Option!7839)

(assert (=> b!3600138 (= lt!1236720 (getRuleFromTag!1210 thiss!23823 rules!3307 (tag!6294 (rule!8338 (_1!22014 lt!1236722)))))))

(declare-fun lt!1236716 () Unit!53899)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1210 (LexerInterface!5193 List!37993 List!37992 Token!10574) Unit!53899)

(assert (=> b!3600138 (= lt!1236716 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1210 thiss!23823 rules!3307 lt!1236717 (_1!22014 lt!1236722)))))

(declare-fun lt!1236737 () Option!7838)

(assert (=> b!3600138 (= lt!1236722 (get!12250 lt!1236737))))

(declare-fun lt!1236729 () List!37992)

(declare-fun lt!1236735 () Unit!53899)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!873 (LexerInterface!5193 List!37993 List!37992 List!37992) Unit!53899)

(assert (=> b!3600138 (= lt!1236735 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!873 thiss!23823 rules!3307 lt!1236729 suffix!1395))))

(declare-fun maxPrefix!2727 (LexerInterface!5193 List!37993 List!37992) Option!7838)

(assert (=> b!3600138 (= lt!1236737 (maxPrefix!2727 thiss!23823 rules!3307 lt!1236717))))

(assert (=> b!3600138 (isPrefix!2967 lt!1236729 lt!1236717)))

(declare-fun lt!1236712 () Unit!53899)

(assert (=> b!3600138 (= lt!1236712 (lemmaConcatTwoListThenFirstIsPrefix!1888 lt!1236729 suffix!1395))))

(assert (=> b!3600138 (= lt!1236717 (++!9420 lt!1236729 suffix!1395))))

(declare-fun b!3600139 () Bool)

(declare-fun res!1454826 () Bool)

(assert (=> b!3600139 (=> (not res!1454826) (not e!2227779))))

(assert (=> b!3600139 (= res!1454826 (= (rule!8338 token!511) rule!403))))

(assert (=> b!3600140 (= e!2227780 (and tp!1101311 tp!1101318))))

(declare-fun b!3600141 () Bool)

(declare-fun res!1454818 () Bool)

(declare-fun e!2227796 () Bool)

(assert (=> b!3600141 (=> (not res!1454818) (not e!2227796))))

(assert (=> b!3600141 (= res!1454818 (contains!7271 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3600142 () Bool)

(declare-fun res!1454809 () Bool)

(assert (=> b!3600142 (=> res!1454809 e!2227781)))

(declare-fun lt!1236724 () C!20912)

(assert (=> b!3600142 (= res!1454809 (not (contains!7272 lt!1236729 lt!1236724)))))

(declare-fun b!3600143 () Bool)

(declare-fun e!2227802 () Bool)

(assert (=> b!3600143 (= e!2227802 e!2227781)))

(declare-fun res!1454827 () Bool)

(assert (=> b!3600143 (=> res!1454827 e!2227781)))

(assert (=> b!3600143 (= res!1454827 (or (not (isSeparator!5604 rule!403)) (isSeparator!5604 (rule!8338 (_1!22014 lt!1236722)))))))

(declare-fun lt!1236733 () Unit!53899)

(declare-fun e!2227784 () Unit!53899)

(assert (=> b!3600143 (= lt!1236733 e!2227784)))

(declare-fun c!623107 () Bool)

(declare-fun lt!1236731 () Bool)

(assert (=> b!3600143 (= c!623107 lt!1236731)))

(assert (=> b!3600143 (= lt!1236731 (not (contains!7272 lt!1236721 lt!1236724)))))

(assert (=> b!3600143 (= lt!1236724 (head!7546 lt!1236726))))

(declare-fun b!3600144 () Bool)

(declare-fun res!1454829 () Bool)

(assert (=> b!3600144 (=> (not res!1454829) (not e!2227796))))

(assert (=> b!3600144 (= res!1454829 (contains!7271 rules!3307 rule!403))))

(declare-fun b!3600145 () Bool)

(declare-fun e!2227793 () Bool)

(declare-fun lt!1236732 () Rule!11008)

(assert (=> b!3600145 (= e!2227793 (= (rule!8338 (_1!22014 lt!1236722)) lt!1236732))))

(declare-fun b!3600146 () Bool)

(declare-fun e!2227788 () Bool)

(declare-fun e!2227794 () Bool)

(declare-fun tp!1101317 () Bool)

(assert (=> b!3600146 (= e!2227788 (and e!2227794 tp!1101317))))

(declare-fun b!3600147 () Bool)

(declare-fun res!1454813 () Bool)

(assert (=> b!3600147 (=> (not res!1454813) (not e!2227796))))

(declare-fun isEmpty!22339 (List!37993) Bool)

(assert (=> b!3600147 (= res!1454813 (not (isEmpty!22339 rules!3307)))))

(declare-fun e!2227805 () Bool)

(declare-fun tp!1101314 () Bool)

(declare-fun b!3600148 () Bool)

(declare-fun inv!21 (TokenValue!5834) Bool)

(assert (=> b!3600148 (= e!2227805 (and (inv!21 (value!180174 token!511)) e!2227791 tp!1101314))))

(declare-fun e!2227783 () Bool)

(declare-fun b!3600149 () Bool)

(declare-fun e!2227798 () Bool)

(declare-fun tp!1101313 () Bool)

(assert (=> b!3600149 (= e!2227783 (and tp!1101313 (inv!51220 (tag!6294 rule!403)) (inv!51223 (transformation!5604 rule!403)) e!2227798))))

(declare-fun b!3600150 () Bool)

(assert (=> b!3600150 (= e!2227779 (not e!2227792))))

(declare-fun res!1454828 () Bool)

(assert (=> b!3600150 (=> res!1454828 e!2227792)))

(declare-fun matchR!4932 (Regex!10363 List!37992) Bool)

(assert (=> b!3600150 (= res!1454828 (not (matchR!4932 (regex!5604 rule!403) lt!1236729)))))

(declare-fun ruleValid!1869 (LexerInterface!5193 Rule!11008) Bool)

(assert (=> b!3600150 (ruleValid!1869 thiss!23823 rule!403)))

(declare-fun lt!1236728 () Unit!53899)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1024 (LexerInterface!5193 Rule!11008 List!37993) Unit!53899)

(assert (=> b!3600150 (= lt!1236728 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1024 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3600151 () Bool)

(declare-fun Unit!53901 () Unit!53899)

(assert (=> b!3600151 (= e!2227784 Unit!53901)))

(assert (=> b!3600152 (= e!2227800 (and tp!1101312 tp!1101310))))

(declare-fun b!3600153 () Bool)

(declare-fun res!1454817 () Bool)

(assert (=> b!3600153 (=> (not res!1454817) (not e!2227796))))

(assert (=> b!3600153 (= res!1454817 (not (= (isSeparator!5604 anOtherTypeRule!33) (isSeparator!5604 rule!403))))))

(declare-fun b!3600154 () Bool)

(declare-fun e!2227795 () Bool)

(assert (=> b!3600154 (= e!2227797 e!2227795)))

(declare-fun res!1454815 () Bool)

(assert (=> b!3600154 (=> res!1454815 e!2227795)))

(declare-fun apply!9110 (TokenValueInjection!11096 BalanceConc!22672) TokenValue!5834)

(declare-fun size!28855 (BalanceConc!22672) Int)

(assert (=> b!3600154 (= res!1454815 (not (= lt!1236737 (Some!7837 (tuple2!37761 (Token!10575 (apply!9110 (transformation!5604 (rule!8338 (_1!22014 lt!1236722))) lt!1236723) (rule!8338 (_1!22014 lt!1236722)) (size!28855 lt!1236723) lt!1236726) (_2!22014 lt!1236722))))))))

(declare-fun lt!1236718 () Unit!53899)

(declare-fun lemmaCharactersSize!657 (Token!10574) Unit!53899)

(assert (=> b!3600154 (= lt!1236718 (lemmaCharactersSize!657 (_1!22014 lt!1236722)))))

(declare-fun lt!1236714 () Unit!53899)

(declare-fun lemmaEqSameImage!795 (TokenValueInjection!11096 BalanceConc!22672 BalanceConc!22672) Unit!53899)

(declare-fun seqFromList!4157 (List!37992) BalanceConc!22672)

(assert (=> b!3600154 (= lt!1236714 (lemmaEqSameImage!795 (transformation!5604 (rule!8338 (_1!22014 lt!1236722))) lt!1236723 (seqFromList!4157 (originalCharacters!6318 (_1!22014 lt!1236722)))))))

(declare-fun lt!1236730 () Unit!53899)

(declare-fun lemmaSemiInverse!1361 (TokenValueInjection!11096 BalanceConc!22672) Unit!53899)

(assert (=> b!3600154 (= lt!1236730 (lemmaSemiInverse!1361 (transformation!5604 (rule!8338 (_1!22014 lt!1236722))) lt!1236723))))

(declare-fun b!3600155 () Bool)

(assert (=> b!3600155 (= e!2227795 e!2227802)))

(declare-fun res!1454810 () Bool)

(assert (=> b!3600155 (=> res!1454810 e!2227802)))

(declare-fun lt!1236740 () Option!7838)

(declare-fun lt!1236736 () List!37992)

(assert (=> b!3600155 (= res!1454810 (or (not (= lt!1236736 (_2!22014 lt!1236722))) (not (= lt!1236740 (Some!7837 (tuple2!37761 (_1!22014 lt!1236722) lt!1236736))))))))

(assert (=> b!3600155 (= (_2!22014 lt!1236722) lt!1236736)))

(declare-fun lt!1236725 () Unit!53899)

(declare-fun lemmaSamePrefixThenSameSuffix!1322 (List!37992 List!37992 List!37992 List!37992 List!37992) Unit!53899)

(assert (=> b!3600155 (= lt!1236725 (lemmaSamePrefixThenSameSuffix!1322 lt!1236726 (_2!22014 lt!1236722) lt!1236726 lt!1236736 lt!1236717))))

(declare-fun getSuffix!1542 (List!37992 List!37992) List!37992)

(assert (=> b!3600155 (= lt!1236736 (getSuffix!1542 lt!1236717 lt!1236726))))

(declare-fun lt!1236738 () Int)

(declare-fun lt!1236734 () TokenValue!5834)

(assert (=> b!3600155 (= lt!1236740 (Some!7837 (tuple2!37761 (Token!10575 lt!1236734 (rule!8338 (_1!22014 lt!1236722)) lt!1236738 lt!1236726) (_2!22014 lt!1236722))))))

(declare-fun maxPrefixOneRule!1871 (LexerInterface!5193 Rule!11008 List!37992) Option!7838)

(assert (=> b!3600155 (= lt!1236740 (maxPrefixOneRule!1871 thiss!23823 (rule!8338 (_1!22014 lt!1236722)) lt!1236717))))

(declare-fun size!28856 (List!37992) Int)

(assert (=> b!3600155 (= lt!1236738 (size!28856 lt!1236726))))

(assert (=> b!3600155 (= lt!1236734 (apply!9110 (transformation!5604 (rule!8338 (_1!22014 lt!1236722))) (seqFromList!4157 lt!1236726)))))

(declare-fun lt!1236715 () Unit!53899)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!943 (LexerInterface!5193 List!37993 List!37992 List!37992 List!37992 Rule!11008) Unit!53899)

(assert (=> b!3600155 (= lt!1236715 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!943 thiss!23823 rules!3307 lt!1236726 lt!1236717 (_2!22014 lt!1236722) (rule!8338 (_1!22014 lt!1236722))))))

(declare-fun b!3600156 () Bool)

(declare-fun res!1454819 () Bool)

(assert (=> b!3600156 (=> res!1454819 e!2227797)))

(assert (=> b!3600156 (= res!1454819 (not (matchR!4932 (regex!5604 (rule!8338 (_1!22014 lt!1236722))) lt!1236726)))))

(declare-fun b!3600157 () Bool)

(declare-fun res!1454823 () Bool)

(assert (=> b!3600157 (=> res!1454823 e!2227781)))

(assert (=> b!3600157 (= res!1454823 lt!1236731)))

(declare-fun b!3600158 () Bool)

(declare-fun e!2227789 () Bool)

(declare-fun tp!1101322 () Bool)

(assert (=> b!3600158 (= e!2227794 (and tp!1101322 (inv!51220 (tag!6294 (h!43289 rules!3307))) (inv!51223 (transformation!5604 (h!43289 rules!3307))) e!2227789))))

(declare-fun res!1454812 () Bool)

(assert (=> start!334670 (=> (not res!1454812) (not e!2227796))))

(get-info :version)

(assert (=> start!334670 (= res!1454812 ((_ is Lexer!5191) thiss!23823))))

(assert (=> start!334670 e!2227796))

(assert (=> start!334670 e!2227788))

(declare-fun e!2227790 () Bool)

(assert (=> start!334670 e!2227790))

(assert (=> start!334670 true))

(declare-fun inv!51224 (Token!10574) Bool)

(assert (=> start!334670 (and (inv!51224 token!511) e!2227805)))

(assert (=> start!334670 e!2227783))

(assert (=> start!334670 e!2227787))

(declare-fun b!3600159 () Bool)

(declare-fun res!1454816 () Bool)

(assert (=> b!3600159 (=> (not res!1454816) (not e!2227779))))

(assert (=> b!3600159 (= res!1454816 (isEmpty!22338 (_2!22014 lt!1236727)))))

(declare-fun b!3600160 () Bool)

(assert (=> b!3600160 (= e!2227786 e!2227793)))

(declare-fun res!1454811 () Bool)

(assert (=> b!3600160 (=> (not res!1454811) (not e!2227793))))

(assert (=> b!3600160 (= res!1454811 (matchR!4932 (regex!5604 lt!1236732) (list!13948 (charsOf!3618 (_1!22014 lt!1236722)))))))

(declare-fun get!12251 (Option!7839) Rule!11008)

(assert (=> b!3600160 (= lt!1236732 (get!12251 lt!1236720))))

(declare-fun b!3600161 () Bool)

(declare-fun tp_is_empty!17809 () Bool)

(declare-fun tp!1101309 () Bool)

(assert (=> b!3600161 (= e!2227790 (and tp_is_empty!17809 tp!1101309))))

(declare-fun b!3600162 () Bool)

(declare-fun Unit!53902 () Unit!53899)

(assert (=> b!3600162 (= e!2227784 Unit!53902)))

(declare-fun lt!1236710 () Unit!53899)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!588 (Regex!10363 List!37992 C!20912) Unit!53899)

(assert (=> b!3600162 (= lt!1236710 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!588 (regex!5604 rule!403) lt!1236729 lt!1236724))))

(assert (=> b!3600162 false))

(assert (=> b!3600163 (= e!2227798 (and tp!1101308 tp!1101319))))

(declare-fun b!3600164 () Bool)

(declare-fun res!1454822 () Bool)

(assert (=> b!3600164 (=> (not res!1454822) (not e!2227796))))

(declare-fun rulesInvariant!4590 (LexerInterface!5193 List!37993) Bool)

(assert (=> b!3600164 (= res!1454822 (rulesInvariant!4590 thiss!23823 rules!3307))))

(assert (=> b!3600165 (= e!2227789 (and tp!1101316 tp!1101315))))

(declare-fun b!3600166 () Bool)

(assert (=> b!3600166 (= e!2227796 e!2227782)))

(declare-fun res!1454821 () Bool)

(assert (=> b!3600166 (=> (not res!1454821) (not e!2227782))))

(declare-fun isDefined!6071 (Option!7838) Bool)

(assert (=> b!3600166 (= res!1454821 (isDefined!6071 lt!1236711))))

(assert (=> b!3600166 (= lt!1236711 (maxPrefix!2727 thiss!23823 rules!3307 lt!1236729))))

(assert (=> b!3600166 (= lt!1236729 (list!13948 (charsOf!3618 token!511)))))

(assert (= (and start!334670 res!1454812) b!3600147))

(assert (= (and b!3600147 res!1454813) b!3600164))

(assert (= (and b!3600164 res!1454822) b!3600144))

(assert (= (and b!3600144 res!1454829) b!3600141))

(assert (= (and b!3600141 res!1454818) b!3600153))

(assert (= (and b!3600153 res!1454817) b!3600166))

(assert (= (and b!3600166 res!1454821) b!3600131))

(assert (= (and b!3600131 res!1454832) b!3600159))

(assert (= (and b!3600159 res!1454816) b!3600139))

(assert (= (and b!3600139 res!1454826) b!3600150))

(assert (= (and b!3600150 (not res!1454828)) b!3600132))

(assert (= (and b!3600132 (not res!1454825)) b!3600135))

(assert (= (and b!3600135 (not res!1454830)) b!3600136))

(assert (= (and b!3600136 (not res!1454820)) b!3600134))

(assert (= (and b!3600134 (not res!1454824)) b!3600138))

(assert (= (and b!3600138 res!1454814) b!3600160))

(assert (= (and b!3600160 res!1454811) b!3600145))

(assert (= (and b!3600138 (not res!1454831)) b!3600156))

(assert (= (and b!3600156 (not res!1454819)) b!3600154))

(assert (= (and b!3600154 (not res!1454815)) b!3600155))

(assert (= (and b!3600155 (not res!1454810)) b!3600143))

(assert (= (and b!3600143 c!623107) b!3600162))

(assert (= (and b!3600143 (not c!623107)) b!3600151))

(assert (= (and b!3600143 (not res!1454827)) b!3600142))

(assert (= (and b!3600142 (not res!1454809)) b!3600157))

(assert (= (and b!3600157 (not res!1454823)) b!3600130))

(assert (= b!3600158 b!3600165))

(assert (= b!3600146 b!3600158))

(assert (= (and start!334670 ((_ is Cons!37869) rules!3307)) b!3600146))

(assert (= (and start!334670 ((_ is Cons!37868) suffix!1395)) b!3600161))

(assert (= b!3600133 b!3600140))

(assert (= b!3600148 b!3600133))

(assert (= start!334670 b!3600148))

(assert (= b!3600149 b!3600163))

(assert (= start!334670 b!3600149))

(assert (= b!3600137 b!3600152))

(assert (= start!334670 b!3600137))

(declare-fun m!4095863 () Bool)

(assert (=> b!3600142 m!4095863))

(declare-fun m!4095865 () Bool)

(assert (=> b!3600166 m!4095865))

(declare-fun m!4095867 () Bool)

(assert (=> b!3600166 m!4095867))

(declare-fun m!4095869 () Bool)

(assert (=> b!3600166 m!4095869))

(assert (=> b!3600166 m!4095869))

(declare-fun m!4095871 () Bool)

(assert (=> b!3600166 m!4095871))

(declare-fun m!4095873 () Bool)

(assert (=> b!3600137 m!4095873))

(declare-fun m!4095875 () Bool)

(assert (=> b!3600137 m!4095875))

(declare-fun m!4095877 () Bool)

(assert (=> b!3600160 m!4095877))

(assert (=> b!3600160 m!4095877))

(declare-fun m!4095879 () Bool)

(assert (=> b!3600160 m!4095879))

(assert (=> b!3600160 m!4095879))

(declare-fun m!4095881 () Bool)

(assert (=> b!3600160 m!4095881))

(declare-fun m!4095883 () Bool)

(assert (=> b!3600160 m!4095883))

(declare-fun m!4095885 () Bool)

(assert (=> b!3600130 m!4095885))

(declare-fun m!4095887 () Bool)

(assert (=> b!3600155 m!4095887))

(declare-fun m!4095889 () Bool)

(assert (=> b!3600155 m!4095889))

(declare-fun m!4095891 () Bool)

(assert (=> b!3600155 m!4095891))

(declare-fun m!4095893 () Bool)

(assert (=> b!3600155 m!4095893))

(declare-fun m!4095895 () Bool)

(assert (=> b!3600155 m!4095895))

(assert (=> b!3600155 m!4095889))

(declare-fun m!4095897 () Bool)

(assert (=> b!3600155 m!4095897))

(declare-fun m!4095899 () Bool)

(assert (=> b!3600155 m!4095899))

(declare-fun m!4095901 () Bool)

(assert (=> b!3600134 m!4095901))

(declare-fun m!4095903 () Bool)

(assert (=> b!3600144 m!4095903))

(declare-fun m!4095905 () Bool)

(assert (=> b!3600150 m!4095905))

(declare-fun m!4095907 () Bool)

(assert (=> b!3600150 m!4095907))

(declare-fun m!4095909 () Bool)

(assert (=> b!3600150 m!4095909))

(declare-fun m!4095911 () Bool)

(assert (=> b!3600135 m!4095911))

(declare-fun m!4095913 () Bool)

(assert (=> b!3600135 m!4095913))

(declare-fun m!4095915 () Bool)

(assert (=> b!3600135 m!4095915))

(declare-fun m!4095917 () Bool)

(assert (=> b!3600162 m!4095917))

(declare-fun m!4095919 () Bool)

(assert (=> b!3600158 m!4095919))

(declare-fun m!4095921 () Bool)

(assert (=> b!3600158 m!4095921))

(declare-fun m!4095923 () Bool)

(assert (=> b!3600133 m!4095923))

(declare-fun m!4095925 () Bool)

(assert (=> b!3600133 m!4095925))

(declare-fun m!4095927 () Bool)

(assert (=> b!3600147 m!4095927))

(declare-fun m!4095929 () Bool)

(assert (=> b!3600148 m!4095929))

(declare-fun m!4095931 () Bool)

(assert (=> b!3600164 m!4095931))

(declare-fun m!4095933 () Bool)

(assert (=> b!3600138 m!4095933))

(declare-fun m!4095935 () Bool)

(assert (=> b!3600138 m!4095935))

(declare-fun m!4095937 () Bool)

(assert (=> b!3600138 m!4095937))

(declare-fun m!4095939 () Bool)

(assert (=> b!3600138 m!4095939))

(declare-fun m!4095941 () Bool)

(assert (=> b!3600138 m!4095941))

(declare-fun m!4095943 () Bool)

(assert (=> b!3600138 m!4095943))

(declare-fun m!4095945 () Bool)

(assert (=> b!3600138 m!4095945))

(declare-fun m!4095947 () Bool)

(assert (=> b!3600138 m!4095947))

(assert (=> b!3600138 m!4095877))

(declare-fun m!4095949 () Bool)

(assert (=> b!3600138 m!4095949))

(declare-fun m!4095951 () Bool)

(assert (=> b!3600138 m!4095951))

(declare-fun m!4095953 () Bool)

(assert (=> b!3600138 m!4095953))

(declare-fun m!4095955 () Bool)

(assert (=> b!3600138 m!4095955))

(declare-fun m!4095957 () Bool)

(assert (=> b!3600138 m!4095957))

(declare-fun m!4095959 () Bool)

(assert (=> b!3600138 m!4095959))

(assert (=> b!3600138 m!4095935))

(declare-fun m!4095961 () Bool)

(assert (=> b!3600156 m!4095961))

(declare-fun m!4095963 () Bool)

(assert (=> start!334670 m!4095963))

(declare-fun m!4095965 () Bool)

(assert (=> b!3600154 m!4095965))

(declare-fun m!4095967 () Bool)

(assert (=> b!3600154 m!4095967))

(declare-fun m!4095969 () Bool)

(assert (=> b!3600154 m!4095969))

(assert (=> b!3600154 m!4095965))

(declare-fun m!4095971 () Bool)

(assert (=> b!3600154 m!4095971))

(declare-fun m!4095973 () Bool)

(assert (=> b!3600154 m!4095973))

(declare-fun m!4095975 () Bool)

(assert (=> b!3600154 m!4095975))

(declare-fun m!4095977 () Bool)

(assert (=> b!3600136 m!4095977))

(assert (=> b!3600136 m!4095977))

(declare-fun m!4095979 () Bool)

(assert (=> b!3600136 m!4095979))

(declare-fun m!4095981 () Bool)

(assert (=> b!3600132 m!4095981))

(declare-fun m!4095983 () Bool)

(assert (=> b!3600141 m!4095983))

(declare-fun m!4095985 () Bool)

(assert (=> b!3600149 m!4095985))

(declare-fun m!4095987 () Bool)

(assert (=> b!3600149 m!4095987))

(declare-fun m!4095989 () Bool)

(assert (=> b!3600131 m!4095989))

(declare-fun m!4095991 () Bool)

(assert (=> b!3600143 m!4095991))

(declare-fun m!4095993 () Bool)

(assert (=> b!3600143 m!4095993))

(declare-fun m!4095995 () Bool)

(assert (=> b!3600159 m!4095995))

(check-sat (not b!3600142) (not b!3600136) b_and!261453 (not b!3600156) (not b!3600141) (not b!3600164) b_and!261465 (not b_next!93847) (not b!3600132) tp_is_empty!17809 (not b!3600150) b_and!261459 (not b!3600138) (not b_next!93841) (not b_next!93845) b_and!261463 (not b!3600144) b_and!261455 (not b!3600143) (not b!3600134) (not b!3600159) (not b!3600137) (not b!3600147) (not b!3600149) (not b_next!93833) (not b!3600158) (not b!3600146) (not b!3600131) (not b!3600133) (not b!3600161) (not b!3600162) (not b!3600155) (not b_next!93843) (not b_next!93839) (not b!3600135) (not b_next!93837) (not b!3600130) b_and!261461 (not b!3600166) b_and!261457 (not b!3600160) b_and!261451 (not b!3600154) (not b!3600148) (not b_next!93835) (not start!334670))
(check-sat b_and!261455 b_and!261453 b_and!261465 (not b_next!93847) (not b_next!93833) (not b_next!93837) b_and!261459 b_and!261461 (not b_next!93835) (not b_next!93841) (not b_next!93845) b_and!261463 (not b_next!93843) (not b_next!93839) b_and!261451 b_and!261457)
