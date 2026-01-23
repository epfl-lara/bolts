; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55904 () Bool)

(assert start!55904)

(declare-fun b!593773 () Bool)

(declare-fun b_free!16709 () Bool)

(declare-fun b_next!16725 () Bool)

(assert (=> b!593773 (= b_free!16709 (not b_next!16725))))

(declare-fun tp!185120 () Bool)

(declare-fun b_and!58539 () Bool)

(assert (=> b!593773 (= tp!185120 b_and!58539)))

(declare-fun b_free!16711 () Bool)

(declare-fun b_next!16727 () Bool)

(assert (=> b!593773 (= b_free!16711 (not b_next!16727))))

(declare-fun tp!185122 () Bool)

(declare-fun b_and!58541 () Bool)

(assert (=> b!593773 (= tp!185122 b_and!58541)))

(declare-fun b!593776 () Bool)

(declare-fun b_free!16713 () Bool)

(declare-fun b_next!16729 () Bool)

(assert (=> b!593776 (= b_free!16713 (not b_next!16729))))

(declare-fun tp!185115 () Bool)

(declare-fun b_and!58543 () Bool)

(assert (=> b!593776 (= tp!185115 b_and!58543)))

(declare-fun b_free!16715 () Bool)

(declare-fun b_next!16731 () Bool)

(assert (=> b!593776 (= b_free!16715 (not b_next!16731))))

(declare-fun tp!185116 () Bool)

(declare-fun b_and!58545 () Bool)

(assert (=> b!593776 (= tp!185116 b_and!58545)))

(declare-fun b!593761 () Bool)

(declare-fun res!256095 () Bool)

(declare-fun e!359113 () Bool)

(assert (=> b!593761 (=> (not res!256095) (not e!359113))))

(declare-datatypes ((C!3904 0))(
  ( (C!3905 (val!2178 Int)) )
))
(declare-datatypes ((Regex!1491 0))(
  ( (ElementMatch!1491 (c!110661 C!3904)) (Concat!2672 (regOne!3494 Regex!1491) (regTwo!3494 Regex!1491)) (EmptyExpr!1491) (Star!1491 (reg!1820 Regex!1491)) (EmptyLang!1491) (Union!1491 (regOne!3495 Regex!1491) (regTwo!3495 Regex!1491)) )
))
(declare-datatypes ((String!7648 0))(
  ( (String!7649 (value!37815 String)) )
))
(declare-datatypes ((List!5886 0))(
  ( (Nil!5876) (Cons!5876 (h!11277 (_ BitVec 16)) (t!79239 List!5886)) )
))
(declare-datatypes ((TokenValue!1181 0))(
  ( (FloatLiteralValue!2362 (text!8712 List!5886)) (TokenValueExt!1180 (__x!4260 Int)) (Broken!5905 (value!37816 List!5886)) (Object!1190) (End!1181) (Def!1181) (Underscore!1181) (Match!1181) (Else!1181) (Error!1181) (Case!1181) (If!1181) (Extends!1181) (Abstract!1181) (Class!1181) (Val!1181) (DelimiterValue!2362 (del!1241 List!5886)) (KeywordValue!1187 (value!37817 List!5886)) (CommentValue!2362 (value!37818 List!5886)) (WhitespaceValue!2362 (value!37819 List!5886)) (IndentationValue!1181 (value!37820 List!5886)) (String!7650) (Int32!1181) (Broken!5906 (value!37821 List!5886)) (Boolean!1182) (Unit!10682) (OperatorValue!1184 (op!1241 List!5886)) (IdentifierValue!2362 (value!37822 List!5886)) (IdentifierValue!2363 (value!37823 List!5886)) (WhitespaceValue!2363 (value!37824 List!5886)) (True!2362) (False!2362) (Broken!5907 (value!37825 List!5886)) (Broken!5908 (value!37826 List!5886)) (True!2363) (RightBrace!1181) (RightBracket!1181) (Colon!1181) (Null!1181) (Comma!1181) (LeftBracket!1181) (False!2363) (LeftBrace!1181) (ImaginaryLiteralValue!1181 (text!8713 List!5886)) (StringLiteralValue!3543 (value!37827 List!5886)) (EOFValue!1181 (value!37828 List!5886)) (IdentValue!1181 (value!37829 List!5886)) (DelimiterValue!2363 (value!37830 List!5886)) (DedentValue!1181 (value!37831 List!5886)) (NewLineValue!1181 (value!37832 List!5886)) (IntegerValue!3543 (value!37833 (_ BitVec 32)) (text!8714 List!5886)) (IntegerValue!3544 (value!37834 Int) (text!8715 List!5886)) (Times!1181) (Or!1181) (Equal!1181) (Minus!1181) (Broken!5909 (value!37835 List!5886)) (And!1181) (Div!1181) (LessEqual!1181) (Mod!1181) (Concat!2673) (Not!1181) (Plus!1181) (SpaceValue!1181 (value!37836 List!5886)) (IntegerValue!3545 (value!37837 Int) (text!8716 List!5886)) (StringLiteralValue!3544 (text!8717 List!5886)) (FloatLiteralValue!2363 (text!8718 List!5886)) (BytesLiteralValue!1181 (value!37838 List!5886)) (CommentValue!2363 (value!37839 List!5886)) (StringLiteralValue!3545 (value!37840 List!5886)) (ErrorTokenValue!1181 (msg!1242 List!5886)) )
))
(declare-datatypes ((List!5887 0))(
  ( (Nil!5877) (Cons!5877 (h!11278 C!3904) (t!79240 List!5887)) )
))
(declare-datatypes ((IArray!3749 0))(
  ( (IArray!3750 (innerList!1932 List!5887)) )
))
(declare-datatypes ((Conc!1874 0))(
  ( (Node!1874 (left!4765 Conc!1874) (right!5095 Conc!1874) (csize!3978 Int) (cheight!2085 Int)) (Leaf!2960 (xs!4511 IArray!3749) (csize!3979 Int)) (Empty!1874) )
))
(declare-datatypes ((BalanceConc!3756 0))(
  ( (BalanceConc!3757 (c!110662 Conc!1874)) )
))
(declare-datatypes ((TokenValueInjection!2130 0))(
  ( (TokenValueInjection!2131 (toValue!2048 Int) (toChars!1907 Int)) )
))
(declare-datatypes ((Rule!2114 0))(
  ( (Rule!2115 (regex!1157 Regex!1491) (tag!1419 String!7648) (isSeparator!1157 Bool) (transformation!1157 TokenValueInjection!2130)) )
))
(declare-datatypes ((List!5888 0))(
  ( (Nil!5878) (Cons!5878 (h!11279 Rule!2114) (t!79241 List!5888)) )
))
(declare-fun rules!3103 () List!5888)

(declare-fun isEmpty!4243 (List!5888) Bool)

(assert (=> b!593761 (= res!256095 (not (isEmpty!4243 rules!3103)))))

(declare-fun b!593762 () Bool)

(declare-fun e!359110 () Bool)

(declare-fun tp_is_empty!3337 () Bool)

(declare-fun tp!185117 () Bool)

(assert (=> b!593762 (= e!359110 (and tp_is_empty!3337 tp!185117))))

(declare-fun e!359103 () Bool)

(declare-fun e!359116 () Bool)

(declare-datatypes ((Token!2050 0))(
  ( (Token!2051 (value!37841 TokenValue!1181) (rule!1927 Rule!2114) (size!4648 Int) (originalCharacters!1196 List!5887)) )
))
(declare-fun token!491 () Token!2050)

(declare-fun tp!185113 () Bool)

(declare-fun b!593763 () Bool)

(declare-fun inv!7445 (String!7648) Bool)

(declare-fun inv!7448 (TokenValueInjection!2130) Bool)

(assert (=> b!593763 (= e!359103 (and tp!185113 (inv!7445 (tag!1419 (rule!1927 token!491))) (inv!7448 (transformation!1157 (rule!1927 token!491))) e!359116))))

(declare-fun b!593764 () Bool)

(declare-fun res!256097 () Bool)

(declare-fun e!359104 () Bool)

(assert (=> b!593764 (=> (not res!256097) (not e!359104))))

(declare-datatypes ((tuple2!6808 0))(
  ( (tuple2!6809 (_1!3668 Token!2050) (_2!3668 List!5887)) )
))
(declare-datatypes ((Option!1508 0))(
  ( (None!1507) (Some!1507 (v!16394 tuple2!6808)) )
))
(declare-fun lt!251625 () Option!1508)

(declare-fun size!4649 (List!5887) Int)

(assert (=> b!593764 (= res!256097 (= (size!4648 (_1!3668 (v!16394 lt!251625))) (size!4649 (originalCharacters!1196 (_1!3668 (v!16394 lt!251625))))))))

(declare-fun b!593765 () Bool)

(declare-fun e!359105 () Bool)

(declare-fun e!359115 () Bool)

(assert (=> b!593765 (= e!359105 e!359115)))

(declare-fun res!256099 () Bool)

(assert (=> b!593765 (=> (not res!256099) (not e!359115))))

(declare-fun lt!251622 () Option!1508)

(declare-fun isDefined!1319 (Option!1508) Bool)

(assert (=> b!593765 (= res!256099 (isDefined!1319 lt!251622))))

(declare-datatypes ((LexerInterface!1043 0))(
  ( (LexerInterfaceExt!1040 (__x!4261 Int)) (Lexer!1041) )
))
(declare-fun thiss!22590 () LexerInterface!1043)

(declare-fun lt!251619 () List!5887)

(declare-fun maxPrefix!741 (LexerInterface!1043 List!5888 List!5887) Option!1508)

(assert (=> b!593765 (= lt!251622 (maxPrefix!741 thiss!22590 rules!3103 lt!251619))))

(declare-fun input!2705 () List!5887)

(declare-fun suffix!1342 () List!5887)

(declare-fun ++!1645 (List!5887 List!5887) List!5887)

(assert (=> b!593765 (= lt!251619 (++!1645 input!2705 suffix!1342))))

(declare-fun lt!251628 () List!5887)

(declare-fun lt!251620 () Int)

(declare-fun b!593766 () Bool)

(assert (=> b!593766 (= e!359104 (and (= (size!4648 (_1!3668 (v!16394 lt!251625))) lt!251620) (= (originalCharacters!1196 (_1!3668 (v!16394 lt!251625))) lt!251628)))))

(declare-fun e!359117 () Bool)

(declare-fun b!593767 () Bool)

(declare-fun tp!185118 () Bool)

(declare-fun e!359100 () Bool)

(assert (=> b!593767 (= e!359100 (and tp!185118 (inv!7445 (tag!1419 (h!11279 rules!3103))) (inv!7448 (transformation!1157 (h!11279 rules!3103))) e!359117))))

(declare-fun b!593768 () Bool)

(declare-fun res!256094 () Bool)

(assert (=> b!593768 (=> (not res!256094) (not e!359113))))

(declare-fun rulesInvariant!1006 (LexerInterface!1043 List!5888) Bool)

(assert (=> b!593768 (= res!256094 (rulesInvariant!1006 thiss!22590 rules!3103))))

(declare-fun b!593769 () Bool)

(declare-fun e!359114 () Bool)

(declare-fun tp!185114 () Bool)

(assert (=> b!593769 (= e!359114 (and e!359100 tp!185114))))

(declare-fun e!359112 () Bool)

(declare-fun b!593770 () Bool)

(declare-fun tp!185121 () Bool)

(declare-fun inv!21 (TokenValue!1181) Bool)

(assert (=> b!593770 (= e!359112 (and (inv!21 (value!37841 token!491)) e!359103 tp!185121))))

(declare-fun b!593771 () Bool)

(declare-datatypes ((Unit!10683 0))(
  ( (Unit!10684) )
))
(declare-fun e!359102 () Unit!10683)

(declare-fun Unit!10685 () Unit!10683)

(assert (=> b!593771 (= e!359102 Unit!10685)))

(assert (=> b!593771 false))

(declare-fun b!593772 () Bool)

(declare-fun Unit!10686 () Unit!10683)

(assert (=> b!593772 (= e!359102 Unit!10686)))

(assert (=> b!593773 (= e!359117 (and tp!185120 tp!185122))))

(declare-fun b!593774 () Bool)

(declare-fun res!256090 () Bool)

(assert (=> b!593774 (=> (not res!256090) (not e!359113))))

(declare-fun isEmpty!4244 (List!5887) Bool)

(assert (=> b!593774 (= res!256090 (not (isEmpty!4244 input!2705)))))

(declare-fun res!256098 () Bool)

(assert (=> start!55904 (=> (not res!256098) (not e!359113))))

(get-info :version)

(assert (=> start!55904 (= res!256098 ((_ is Lexer!1041) thiss!22590))))

(assert (=> start!55904 e!359113))

(assert (=> start!55904 e!359110))

(assert (=> start!55904 e!359114))

(declare-fun inv!7449 (Token!2050) Bool)

(assert (=> start!55904 (and (inv!7449 token!491) e!359112)))

(assert (=> start!55904 true))

(declare-fun e!359108 () Bool)

(assert (=> start!55904 e!359108))

(declare-fun b!593775 () Bool)

(declare-fun e!359111 () Bool)

(assert (=> b!593775 (= e!359115 e!359111)))

(declare-fun res!256096 () Bool)

(assert (=> b!593775 (=> (not res!256096) (not e!359111))))

(declare-fun lt!251617 () tuple2!6808)

(assert (=> b!593775 (= res!256096 (and (= (_1!3668 lt!251617) token!491) (= (_2!3668 lt!251617) suffix!1342)))))

(declare-fun get!2250 (Option!1508) tuple2!6808)

(assert (=> b!593775 (= lt!251617 (get!2250 lt!251622))))

(assert (=> b!593776 (= e!359116 (and tp!185115 tp!185116))))

(declare-fun b!593777 () Bool)

(declare-fun res!256092 () Bool)

(declare-fun e!359107 () Bool)

(assert (=> b!593777 (=> (not res!256092) (not e!359107))))

(declare-fun lt!251629 () List!5887)

(assert (=> b!593777 (= res!256092 (= (++!1645 lt!251629 suffix!1342) lt!251619))))

(declare-fun b!593778 () Bool)

(assert (=> b!593778 (= e!359111 e!359107)))

(declare-fun res!256100 () Bool)

(assert (=> b!593778 (=> (not res!256100) (not e!359107))))

(assert (=> b!593778 (= res!256100 ((_ is Some!1507) lt!251625))))

(assert (=> b!593778 (= lt!251625 (maxPrefix!741 thiss!22590 rules!3103 input!2705))))

(declare-fun lt!251621 () TokenValue!1181)

(declare-fun lt!251624 () List!5887)

(declare-fun b!593779 () Bool)

(assert (=> b!593779 (= e!359107 (not (= (v!16394 lt!251625) (tuple2!6809 (Token!2051 lt!251621 (rule!1927 (_1!3668 (v!16394 lt!251625))) lt!251620 lt!251628) lt!251624))))))

(assert (=> b!593779 e!359104))

(declare-fun res!256093 () Bool)

(assert (=> b!593779 (=> (not res!256093) (not e!359104))))

(assert (=> b!593779 (= res!256093 (= (value!37841 (_1!3668 (v!16394 lt!251625))) lt!251621))))

(declare-fun apply!1410 (TokenValueInjection!2130 BalanceConc!3756) TokenValue!1181)

(declare-fun seqFromList!1333 (List!5887) BalanceConc!3756)

(assert (=> b!593779 (= lt!251621 (apply!1410 (transformation!1157 (rule!1927 (_1!3668 (v!16394 lt!251625)))) (seqFromList!1333 lt!251628)))))

(declare-fun lt!251626 () Unit!10683)

(declare-fun lemmaInv!265 (TokenValueInjection!2130) Unit!10683)

(assert (=> b!593779 (= lt!251626 (lemmaInv!265 (transformation!1157 (rule!1927 token!491))))))

(declare-fun lt!251618 () Unit!10683)

(assert (=> b!593779 (= lt!251618 (lemmaInv!265 (transformation!1157 (rule!1927 (_1!3668 (v!16394 lt!251625))))))))

(declare-fun ruleValid!355 (LexerInterface!1043 Rule!2114) Bool)

(assert (=> b!593779 (ruleValid!355 thiss!22590 (rule!1927 token!491))))

(declare-fun lt!251632 () Unit!10683)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!202 (LexerInterface!1043 Rule!2114 List!5888) Unit!10683)

(assert (=> b!593779 (= lt!251632 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!202 thiss!22590 (rule!1927 token!491) rules!3103))))

(assert (=> b!593779 (ruleValid!355 thiss!22590 (rule!1927 (_1!3668 (v!16394 lt!251625))))))

(declare-fun lt!251616 () Unit!10683)

(assert (=> b!593779 (= lt!251616 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!202 thiss!22590 (rule!1927 (_1!3668 (v!16394 lt!251625))) rules!3103))))

(declare-fun isPrefix!785 (List!5887 List!5887) Bool)

(assert (=> b!593779 (isPrefix!785 input!2705 input!2705)))

(declare-fun lt!251630 () Unit!10683)

(declare-fun lemmaIsPrefixRefl!521 (List!5887 List!5887) Unit!10683)

(assert (=> b!593779 (= lt!251630 (lemmaIsPrefixRefl!521 input!2705 input!2705))))

(assert (=> b!593779 (= (_2!3668 (v!16394 lt!251625)) lt!251624)))

(declare-fun lt!251615 () Unit!10683)

(declare-fun lemmaSamePrefixThenSameSuffix!498 (List!5887 List!5887 List!5887 List!5887 List!5887) Unit!10683)

(assert (=> b!593779 (= lt!251615 (lemmaSamePrefixThenSameSuffix!498 lt!251628 (_2!3668 (v!16394 lt!251625)) lt!251628 lt!251624 input!2705))))

(declare-fun getSuffix!302 (List!5887 List!5887) List!5887)

(assert (=> b!593779 (= lt!251624 (getSuffix!302 input!2705 lt!251628))))

(assert (=> b!593779 (isPrefix!785 lt!251628 (++!1645 lt!251628 (_2!3668 (v!16394 lt!251625))))))

(declare-fun lt!251614 () Unit!10683)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!630 (List!5887 List!5887) Unit!10683)

(assert (=> b!593779 (= lt!251614 (lemmaConcatTwoListThenFirstIsPrefix!630 lt!251628 (_2!3668 (v!16394 lt!251625))))))

(declare-fun lt!251623 () Unit!10683)

(declare-fun lemmaCharactersSize!216 (Token!2050) Unit!10683)

(assert (=> b!593779 (= lt!251623 (lemmaCharactersSize!216 token!491))))

(declare-fun lt!251627 () Unit!10683)

(assert (=> b!593779 (= lt!251627 (lemmaCharactersSize!216 (_1!3668 (v!16394 lt!251625))))))

(declare-fun lt!251613 () Unit!10683)

(assert (=> b!593779 (= lt!251613 e!359102)))

(declare-fun c!110660 () Bool)

(assert (=> b!593779 (= c!110660 (> lt!251620 (size!4649 lt!251629)))))

(assert (=> b!593779 (= lt!251620 (size!4649 lt!251628))))

(declare-fun list!2462 (BalanceConc!3756) List!5887)

(declare-fun charsOf!786 (Token!2050) BalanceConc!3756)

(assert (=> b!593779 (= lt!251628 (list!2462 (charsOf!786 (_1!3668 (v!16394 lt!251625)))))))

(assert (=> b!593779 (= lt!251625 (Some!1507 (v!16394 lt!251625)))))

(declare-fun lt!251631 () Unit!10683)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!230 (List!5887 List!5887 List!5887 List!5887) Unit!10683)

(assert (=> b!593779 (= lt!251631 (lemmaConcatSameAndSameSizesThenSameLists!230 lt!251629 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!593780 () Bool)

(assert (=> b!593780 (= e!359113 e!359105)))

(declare-fun res!256091 () Bool)

(assert (=> b!593780 (=> (not res!256091) (not e!359105))))

(assert (=> b!593780 (= res!256091 (= lt!251629 input!2705))))

(assert (=> b!593780 (= lt!251629 (list!2462 (charsOf!786 token!491)))))

(declare-fun b!593781 () Bool)

(declare-fun tp!185119 () Bool)

(assert (=> b!593781 (= e!359108 (and tp_is_empty!3337 tp!185119))))

(assert (= (and start!55904 res!256098) b!593761))

(assert (= (and b!593761 res!256095) b!593768))

(assert (= (and b!593768 res!256094) b!593774))

(assert (= (and b!593774 res!256090) b!593780))

(assert (= (and b!593780 res!256091) b!593765))

(assert (= (and b!593765 res!256099) b!593775))

(assert (= (and b!593775 res!256096) b!593778))

(assert (= (and b!593778 res!256100) b!593777))

(assert (= (and b!593777 res!256092) b!593779))

(assert (= (and b!593779 c!110660) b!593771))

(assert (= (and b!593779 (not c!110660)) b!593772))

(assert (= (and b!593779 res!256093) b!593764))

(assert (= (and b!593764 res!256097) b!593766))

(assert (= (and start!55904 ((_ is Cons!5877) suffix!1342)) b!593762))

(assert (= b!593767 b!593773))

(assert (= b!593769 b!593767))

(assert (= (and start!55904 ((_ is Cons!5878) rules!3103)) b!593769))

(assert (= b!593763 b!593776))

(assert (= b!593770 b!593763))

(assert (= start!55904 b!593770))

(assert (= (and start!55904 ((_ is Cons!5877) input!2705)) b!593781))

(declare-fun m!855653 () Bool)

(assert (=> b!593767 m!855653))

(declare-fun m!855655 () Bool)

(assert (=> b!593767 m!855655))

(declare-fun m!855657 () Bool)

(assert (=> b!593765 m!855657))

(declare-fun m!855659 () Bool)

(assert (=> b!593765 m!855659))

(declare-fun m!855661 () Bool)

(assert (=> b!593765 m!855661))

(declare-fun m!855663 () Bool)

(assert (=> b!593761 m!855663))

(declare-fun m!855665 () Bool)

(assert (=> b!593768 m!855665))

(declare-fun m!855667 () Bool)

(assert (=> b!593779 m!855667))

(declare-fun m!855669 () Bool)

(assert (=> b!593779 m!855669))

(declare-fun m!855671 () Bool)

(assert (=> b!593779 m!855671))

(declare-fun m!855673 () Bool)

(assert (=> b!593779 m!855673))

(declare-fun m!855675 () Bool)

(assert (=> b!593779 m!855675))

(declare-fun m!855677 () Bool)

(assert (=> b!593779 m!855677))

(assert (=> b!593779 m!855673))

(declare-fun m!855679 () Bool)

(assert (=> b!593779 m!855679))

(declare-fun m!855681 () Bool)

(assert (=> b!593779 m!855681))

(assert (=> b!593779 m!855667))

(declare-fun m!855683 () Bool)

(assert (=> b!593779 m!855683))

(declare-fun m!855685 () Bool)

(assert (=> b!593779 m!855685))

(declare-fun m!855687 () Bool)

(assert (=> b!593779 m!855687))

(declare-fun m!855689 () Bool)

(assert (=> b!593779 m!855689))

(declare-fun m!855691 () Bool)

(assert (=> b!593779 m!855691))

(declare-fun m!855693 () Bool)

(assert (=> b!593779 m!855693))

(declare-fun m!855695 () Bool)

(assert (=> b!593779 m!855695))

(declare-fun m!855697 () Bool)

(assert (=> b!593779 m!855697))

(declare-fun m!855699 () Bool)

(assert (=> b!593779 m!855699))

(assert (=> b!593779 m!855683))

(declare-fun m!855701 () Bool)

(assert (=> b!593779 m!855701))

(declare-fun m!855703 () Bool)

(assert (=> b!593779 m!855703))

(declare-fun m!855705 () Bool)

(assert (=> b!593779 m!855705))

(declare-fun m!855707 () Bool)

(assert (=> b!593779 m!855707))

(declare-fun m!855709 () Bool)

(assert (=> b!593779 m!855709))

(declare-fun m!855711 () Bool)

(assert (=> b!593764 m!855711))

(declare-fun m!855713 () Bool)

(assert (=> b!593778 m!855713))

(declare-fun m!855715 () Bool)

(assert (=> b!593775 m!855715))

(declare-fun m!855717 () Bool)

(assert (=> start!55904 m!855717))

(declare-fun m!855719 () Bool)

(assert (=> b!593763 m!855719))

(declare-fun m!855721 () Bool)

(assert (=> b!593763 m!855721))

(declare-fun m!855723 () Bool)

(assert (=> b!593780 m!855723))

(assert (=> b!593780 m!855723))

(declare-fun m!855725 () Bool)

(assert (=> b!593780 m!855725))

(declare-fun m!855727 () Bool)

(assert (=> b!593774 m!855727))

(declare-fun m!855729 () Bool)

(assert (=> b!593777 m!855729))

(declare-fun m!855731 () Bool)

(assert (=> b!593770 m!855731))

(check-sat (not b!593780) (not b_next!16727) b_and!58539 (not b!593765) (not b!593768) tp_is_empty!3337 (not b_next!16729) (not b!593775) (not b!593769) (not b!593770) b_and!58543 (not b!593779) (not b!593762) (not b!593777) (not b!593781) (not b!593763) (not b!593767) b_and!58545 (not b!593761) b_and!58541 (not b_next!16731) (not b!593764) (not b_next!16725) (not start!55904) (not b!593774) (not b!593778))
(check-sat (not b_next!16727) b_and!58539 (not b_next!16729) b_and!58545 b_and!58541 (not b_next!16731) (not b_next!16725) b_and!58543)
