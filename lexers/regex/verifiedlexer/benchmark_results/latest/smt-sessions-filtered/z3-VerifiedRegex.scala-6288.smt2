; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!314218 () Bool)

(assert start!314218)

(declare-fun b!3375748 () Bool)

(declare-fun b_free!88217 () Bool)

(declare-fun b_next!88921 () Bool)

(assert (=> b!3375748 (= b_free!88217 (not b_next!88921))))

(declare-fun tp!1055797 () Bool)

(declare-fun b_and!234331 () Bool)

(assert (=> b!3375748 (= tp!1055797 b_and!234331)))

(declare-fun b_free!88219 () Bool)

(declare-fun b_next!88923 () Bool)

(assert (=> b!3375748 (= b_free!88219 (not b_next!88923))))

(declare-fun tp!1055792 () Bool)

(declare-fun b_and!234333 () Bool)

(assert (=> b!3375748 (= tp!1055792 b_and!234333)))

(declare-fun b!3375759 () Bool)

(declare-fun b_free!88221 () Bool)

(declare-fun b_next!88925 () Bool)

(assert (=> b!3375759 (= b_free!88221 (not b_next!88925))))

(declare-fun tp!1055798 () Bool)

(declare-fun b_and!234335 () Bool)

(assert (=> b!3375759 (= tp!1055798 b_and!234335)))

(declare-fun b_free!88223 () Bool)

(declare-fun b_next!88927 () Bool)

(assert (=> b!3375759 (= b_free!88223 (not b_next!88927))))

(declare-fun tp!1055789 () Bool)

(declare-fun b_and!234337 () Bool)

(assert (=> b!3375759 (= tp!1055789 b_and!234337)))

(declare-fun b!3375746 () Bool)

(declare-fun b_free!88225 () Bool)

(declare-fun b_next!88929 () Bool)

(assert (=> b!3375746 (= b_free!88225 (not b_next!88929))))

(declare-fun tp!1055799 () Bool)

(declare-fun b_and!234339 () Bool)

(assert (=> b!3375746 (= tp!1055799 b_and!234339)))

(declare-fun b_free!88227 () Bool)

(declare-fun b_next!88931 () Bool)

(assert (=> b!3375746 (= b_free!88227 (not b_next!88931))))

(declare-fun tp!1055795 () Bool)

(declare-fun b_and!234341 () Bool)

(assert (=> b!3375746 (= tp!1055795 b_and!234341)))

(declare-fun b!3375735 () Bool)

(declare-fun e!2095125 () Bool)

(declare-fun e!2095126 () Bool)

(declare-fun tp!1055794 () Bool)

(assert (=> b!3375735 (= e!2095125 (and e!2095126 tp!1055794))))

(declare-fun b!3375736 () Bool)

(declare-fun res!1365143 () Bool)

(declare-fun e!2095111 () Bool)

(assert (=> b!3375736 (=> (not res!1365143) (not e!2095111))))

(declare-datatypes ((C!20416 0))(
  ( (C!20417 (val!12256 Int)) )
))
(declare-datatypes ((Regex!10115 0))(
  ( (ElementMatch!10115 (c!574904 C!20416)) (Concat!15701 (regOne!20742 Regex!10115) (regTwo!20742 Regex!10115)) (EmptyExpr!10115) (Star!10115 (reg!10444 Regex!10115)) (EmptyLang!10115) (Union!10115 (regOne!20743 Regex!10115) (regTwo!20743 Regex!10115)) )
))
(declare-datatypes ((List!36906 0))(
  ( (Nil!36782) (Cons!36782 (h!42202 (_ BitVec 16)) (t!262707 List!36906)) )
))
(declare-datatypes ((TokenValue!5586 0))(
  ( (FloatLiteralValue!11172 (text!39547 List!36906)) (TokenValueExt!5585 (__x!23389 Int)) (Broken!27930 (value!173080 List!36906)) (Object!5709) (End!5586) (Def!5586) (Underscore!5586) (Match!5586) (Else!5586) (Error!5586) (Case!5586) (If!5586) (Extends!5586) (Abstract!5586) (Class!5586) (Val!5586) (DelimiterValue!11172 (del!5646 List!36906)) (KeywordValue!5592 (value!173081 List!36906)) (CommentValue!11172 (value!173082 List!36906)) (WhitespaceValue!11172 (value!173083 List!36906)) (IndentationValue!5586 (value!173084 List!36906)) (String!41263) (Int32!5586) (Broken!27931 (value!173085 List!36906)) (Boolean!5587) (Unit!51887) (OperatorValue!5589 (op!5646 List!36906)) (IdentifierValue!11172 (value!173086 List!36906)) (IdentifierValue!11173 (value!173087 List!36906)) (WhitespaceValue!11173 (value!173088 List!36906)) (True!11172) (False!11172) (Broken!27932 (value!173089 List!36906)) (Broken!27933 (value!173090 List!36906)) (True!11173) (RightBrace!5586) (RightBracket!5586) (Colon!5586) (Null!5586) (Comma!5586) (LeftBracket!5586) (False!11173) (LeftBrace!5586) (ImaginaryLiteralValue!5586 (text!39548 List!36906)) (StringLiteralValue!16758 (value!173091 List!36906)) (EOFValue!5586 (value!173092 List!36906)) (IdentValue!5586 (value!173093 List!36906)) (DelimiterValue!11173 (value!173094 List!36906)) (DedentValue!5586 (value!173095 List!36906)) (NewLineValue!5586 (value!173096 List!36906)) (IntegerValue!16758 (value!173097 (_ BitVec 32)) (text!39549 List!36906)) (IntegerValue!16759 (value!173098 Int) (text!39550 List!36906)) (Times!5586) (Or!5586) (Equal!5586) (Minus!5586) (Broken!27934 (value!173099 List!36906)) (And!5586) (Div!5586) (LessEqual!5586) (Mod!5586) (Concat!15702) (Not!5586) (Plus!5586) (SpaceValue!5586 (value!173100 List!36906)) (IntegerValue!16760 (value!173101 Int) (text!39551 List!36906)) (StringLiteralValue!16759 (text!39552 List!36906)) (FloatLiteralValue!11173 (text!39553 List!36906)) (BytesLiteralValue!5586 (value!173102 List!36906)) (CommentValue!11173 (value!173103 List!36906)) (StringLiteralValue!16760 (value!173104 List!36906)) (ErrorTokenValue!5586 (msg!5647 List!36906)) )
))
(declare-datatypes ((List!36907 0))(
  ( (Nil!36783) (Cons!36783 (h!42203 C!20416) (t!262708 List!36907)) )
))
(declare-datatypes ((IArray!22179 0))(
  ( (IArray!22180 (innerList!11147 List!36907)) )
))
(declare-datatypes ((Conc!11087 0))(
  ( (Node!11087 (left!28675 Conc!11087) (right!29005 Conc!11087) (csize!22404 Int) (cheight!11298 Int)) (Leaf!17376 (xs!14241 IArray!22179) (csize!22405 Int)) (Empty!11087) )
))
(declare-datatypes ((BalanceConc!21788 0))(
  ( (BalanceConc!21789 (c!574905 Conc!11087)) )
))
(declare-datatypes ((String!41264 0))(
  ( (String!41265 (value!173105 String)) )
))
(declare-datatypes ((TokenValueInjection!10600 0))(
  ( (TokenValueInjection!10601 (toValue!7540 Int) (toChars!7399 Int)) )
))
(declare-datatypes ((Rule!10512 0))(
  ( (Rule!10513 (regex!5356 Regex!10115) (tag!5922 String!41264) (isSeparator!5356 Bool) (transformation!5356 TokenValueInjection!10600)) )
))
(declare-datatypes ((Token!10078 0))(
  ( (Token!10079 (value!173106 TokenValue!5586) (rule!7898 Rule!10512) (size!27838 Int) (originalCharacters!6070 List!36907)) )
))
(declare-fun separatorToken!241 () Token!10078)

(assert (=> b!3375736 (= res!1365143 (isSeparator!5356 (rule!7898 separatorToken!241)))))

(declare-fun b!3375737 () Bool)

(declare-datatypes ((List!36908 0))(
  ( (Nil!36784) (Cons!36784 (h!42204 Token!10078) (t!262709 List!36908)) )
))
(declare-fun tokens!494 () List!36908)

(declare-fun tp!1055791 () Bool)

(declare-fun e!2095102 () Bool)

(declare-fun e!2095116 () Bool)

(declare-fun inv!49852 (Token!10078) Bool)

(assert (=> b!3375737 (= e!2095116 (and (inv!49852 (h!42204 tokens!494)) e!2095102 tp!1055791))))

(declare-fun b!3375738 () Bool)

(declare-fun res!1365142 () Bool)

(declare-fun e!2095121 () Bool)

(assert (=> b!3375738 (=> (not res!1365142) (not e!2095121))))

(declare-datatypes ((List!36909 0))(
  ( (Nil!36785) (Cons!36785 (h!42205 Rule!10512) (t!262710 List!36909)) )
))
(declare-fun rules!2135 () List!36909)

(declare-fun isEmpty!20999 (List!36909) Bool)

(assert (=> b!3375738 (= res!1365142 (not (isEmpty!20999 rules!2135)))))

(declare-fun b!3375739 () Bool)

(declare-fun e!2095123 () Bool)

(declare-fun e!2095104 () Bool)

(assert (=> b!3375739 (= e!2095123 e!2095104)))

(declare-fun res!1365147 () Bool)

(assert (=> b!3375739 (=> res!1365147 e!2095104)))

(assert (=> b!3375739 (= res!1365147 (isSeparator!5356 (rule!7898 (h!42204 tokens!494))))))

(declare-datatypes ((Unit!51888 0))(
  ( (Unit!51889) )
))
(declare-fun lt!1145738 () Unit!51888)

(declare-fun lambda!120345 () Int)

(declare-fun forallContained!1303 (List!36908 Int Token!10078) Unit!51888)

(assert (=> b!3375739 (= lt!1145738 (forallContained!1303 tokens!494 lambda!120345 (h!42204 tokens!494)))))

(declare-fun e!2095120 () Bool)

(declare-fun e!2095110 () Bool)

(declare-fun tp!1055793 () Bool)

(declare-fun b!3375740 () Bool)

(declare-fun inv!49849 (String!41264) Bool)

(declare-fun inv!49853 (TokenValueInjection!10600) Bool)

(assert (=> b!3375740 (= e!2095110 (and tp!1055793 (inv!49849 (tag!5922 (rule!7898 (h!42204 tokens!494)))) (inv!49853 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) e!2095120))))

(declare-fun b!3375741 () Bool)

(declare-fun res!1365152 () Bool)

(declare-fun e!2095113 () Bool)

(assert (=> b!3375741 (=> res!1365152 e!2095113)))

(declare-fun validRegex!4598 (Regex!10115) Bool)

(assert (=> b!3375741 (= res!1365152 (not (validRegex!4598 (regex!5356 (rule!7898 separatorToken!241)))))))

(declare-fun b!3375742 () Bool)

(declare-fun e!2095119 () Bool)

(declare-fun e!2095117 () Bool)

(assert (=> b!3375742 (= e!2095119 e!2095117)))

(declare-fun res!1365153 () Bool)

(assert (=> b!3375742 (=> (not res!1365153) (not e!2095117))))

(declare-fun lt!1145739 () Rule!10512)

(declare-fun lt!1145729 () List!36907)

(declare-fun matchR!4707 (Regex!10115 List!36907) Bool)

(assert (=> b!3375742 (= res!1365153 (matchR!4707 (regex!5356 lt!1145739) lt!1145729))))

(declare-datatypes ((Option!7359 0))(
  ( (None!7358) (Some!7358 (v!36398 Rule!10512)) )
))
(declare-fun lt!1145724 () Option!7359)

(declare-fun get!11731 (Option!7359) Rule!10512)

(assert (=> b!3375742 (= lt!1145739 (get!11731 lt!1145724))))

(declare-fun b!3375743 () Bool)

(declare-fun res!1365138 () Bool)

(assert (=> b!3375743 (=> (not res!1365138) (not e!2095121))))

(declare-datatypes ((LexerInterface!4945 0))(
  ( (LexerInterfaceExt!4942 (__x!23390 Int)) (Lexer!4943) )
))
(declare-fun thiss!18206 () LexerInterface!4945)

(declare-fun rulesInvariant!4342 (LexerInterface!4945 List!36909) Bool)

(assert (=> b!3375743 (= res!1365138 (rulesInvariant!4342 thiss!18206 rules!2135))))

(declare-fun b!3375744 () Bool)

(declare-fun tp!1055788 () Bool)

(declare-fun inv!21 (TokenValue!5586) Bool)

(assert (=> b!3375744 (= e!2095102 (and (inv!21 (value!173106 (h!42204 tokens!494))) e!2095110 tp!1055788))))

(declare-fun b!3375745 () Bool)

(declare-fun res!1365136 () Bool)

(assert (=> b!3375745 (=> (not res!1365136) (not e!2095111))))

(declare-fun sepAndNonSepRulesDisjointChars!1550 (List!36909 List!36909) Bool)

(assert (=> b!3375745 (= res!1365136 (sepAndNonSepRulesDisjointChars!1550 rules!2135 rules!2135))))

(declare-fun e!2095107 () Bool)

(assert (=> b!3375746 (= e!2095107 (and tp!1055799 tp!1055795))))

(declare-fun b!3375734 () Bool)

(declare-fun e!2095124 () Bool)

(declare-fun e!2095105 () Bool)

(assert (=> b!3375734 (= e!2095124 e!2095105)))

(declare-fun res!1365150 () Bool)

(assert (=> b!3375734 (=> (not res!1365150) (not e!2095105))))

(declare-fun lt!1145722 () Rule!10512)

(declare-fun lt!1145737 () List!36907)

(assert (=> b!3375734 (= res!1365150 (matchR!4707 (regex!5356 lt!1145722) lt!1145737))))

(declare-fun lt!1145734 () Option!7359)

(assert (=> b!3375734 (= lt!1145722 (get!11731 lt!1145734))))

(declare-fun res!1365145 () Bool)

(assert (=> start!314218 (=> (not res!1365145) (not e!2095121))))

(get-info :version)

(assert (=> start!314218 (= res!1365145 ((_ is Lexer!4943) thiss!18206))))

(assert (=> start!314218 e!2095121))

(assert (=> start!314218 true))

(assert (=> start!314218 e!2095125))

(declare-fun e!2095127 () Bool)

(assert (=> start!314218 (and (inv!49852 separatorToken!241) e!2095127)))

(assert (=> start!314218 e!2095116))

(declare-fun b!3375747 () Bool)

(declare-fun e!2095122 () Bool)

(assert (=> b!3375747 (= e!2095122 e!2095113)))

(declare-fun res!1365148 () Bool)

(assert (=> b!3375747 (=> res!1365148 e!2095113)))

(declare-fun lt!1145728 () C!20416)

(declare-fun contains!6701 (List!36907 C!20416) Bool)

(declare-fun usedCharacters!612 (Regex!10115) List!36907)

(assert (=> b!3375747 (= res!1365148 (contains!6701 (usedCharacters!612 (regex!5356 (rule!7898 separatorToken!241))) lt!1145728))))

(declare-fun head!7197 (List!36907) C!20416)

(assert (=> b!3375747 (= lt!1145728 (head!7197 lt!1145737))))

(declare-fun lt!1145732 () BalanceConc!21788)

(declare-datatypes ((tuple2!36340 0))(
  ( (tuple2!36341 (_1!21304 Token!10078) (_2!21304 List!36907)) )
))
(declare-datatypes ((Option!7360 0))(
  ( (None!7359) (Some!7359 (v!36399 tuple2!36340)) )
))
(declare-fun maxPrefixOneRule!1668 (LexerInterface!4945 Rule!10512 List!36907) Option!7360)

(declare-fun apply!8535 (TokenValueInjection!10600 BalanceConc!21788) TokenValue!5586)

(declare-fun size!27839 (List!36907) Int)

(assert (=> b!3375747 (= (maxPrefixOneRule!1668 thiss!18206 (rule!7898 (h!42204 tokens!494)) lt!1145729) (Some!7359 (tuple2!36341 (Token!10079 (apply!8535 (transformation!5356 (rule!7898 (h!42204 tokens!494))) lt!1145732) (rule!7898 (h!42204 tokens!494)) (size!27839 lt!1145729) lt!1145729) Nil!36783)))))

(declare-fun lt!1145733 () Unit!51888)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!767 (LexerInterface!4945 List!36909 List!36907 List!36907 List!36907 Rule!10512) Unit!51888)

(assert (=> b!3375747 (= lt!1145733 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!767 thiss!18206 rules!2135 lt!1145729 lt!1145729 Nil!36783 (rule!7898 (h!42204 tokens!494))))))

(assert (=> b!3375747 e!2095124))

(declare-fun res!1365151 () Bool)

(assert (=> b!3375747 (=> (not res!1365151) (not e!2095124))))

(declare-fun isDefined!5694 (Option!7359) Bool)

(assert (=> b!3375747 (= res!1365151 (isDefined!5694 lt!1145734))))

(declare-fun getRuleFromTag!1011 (LexerInterface!4945 List!36909 String!41264) Option!7359)

(assert (=> b!3375747 (= lt!1145734 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 separatorToken!241))))))

(declare-fun lt!1145726 () Unit!51888)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1011 (LexerInterface!4945 List!36909 List!36907 Token!10078) Unit!51888)

(assert (=> b!3375747 (= lt!1145726 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1011 thiss!18206 rules!2135 lt!1145737 separatorToken!241))))

(assert (=> b!3375747 e!2095119))

(declare-fun res!1365146 () Bool)

(assert (=> b!3375747 (=> (not res!1365146) (not e!2095119))))

(assert (=> b!3375747 (= res!1365146 (isDefined!5694 lt!1145724))))

(assert (=> b!3375747 (= lt!1145724 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 (h!42204 tokens!494)))))))

(declare-fun lt!1145723 () Unit!51888)

(assert (=> b!3375747 (= lt!1145723 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1011 thiss!18206 rules!2135 lt!1145729 (h!42204 tokens!494)))))

(declare-fun lt!1145721 () Unit!51888)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!940 (LexerInterface!4945 List!36909 List!36908 Token!10078) Unit!51888)

(assert (=> b!3375747 (= lt!1145721 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!940 thiss!18206 rules!2135 tokens!494 (h!42204 tokens!494)))))

(declare-fun isEmpty!21000 (List!36907) Bool)

(declare-fun getSuffix!1450 (List!36907 List!36907) List!36907)

(assert (=> b!3375747 (isEmpty!21000 (getSuffix!1450 lt!1145729 lt!1145729))))

(declare-fun lt!1145735 () Unit!51888)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!108 (List!36907) Unit!51888)

(assert (=> b!3375747 (= lt!1145735 (lemmaGetSuffixOnListWithItSelfIsEmpty!108 lt!1145729))))

(assert (=> b!3375748 (= e!2095120 (and tp!1055797 tp!1055792))))

(declare-fun b!3375749 () Bool)

(declare-fun e!2095118 () Bool)

(assert (=> b!3375749 (= e!2095111 (not e!2095118))))

(declare-fun res!1365141 () Bool)

(assert (=> b!3375749 (=> res!1365141 e!2095118)))

(declare-fun lt!1145730 () List!36907)

(declare-fun lt!1145736 () List!36907)

(assert (=> b!3375749 (= res!1365141 (not (= lt!1145730 lt!1145736)))))

(declare-fun printList!1493 (LexerInterface!4945 List!36908) List!36907)

(assert (=> b!3375749 (= lt!1145736 (printList!1493 thiss!18206 (Cons!36784 (h!42204 tokens!494) Nil!36784)))))

(declare-fun lt!1145727 () BalanceConc!21788)

(declare-fun list!13293 (BalanceConc!21788) List!36907)

(assert (=> b!3375749 (= lt!1145730 (list!13293 lt!1145727))))

(declare-datatypes ((IArray!22181 0))(
  ( (IArray!22182 (innerList!11148 List!36908)) )
))
(declare-datatypes ((Conc!11088 0))(
  ( (Node!11088 (left!28676 Conc!11088) (right!29006 Conc!11088) (csize!22406 Int) (cheight!11299 Int)) (Leaf!17377 (xs!14242 IArray!22181) (csize!22407 Int)) (Empty!11088) )
))
(declare-datatypes ((BalanceConc!21790 0))(
  ( (BalanceConc!21791 (c!574906 Conc!11088)) )
))
(declare-fun lt!1145731 () BalanceConc!21790)

(declare-fun printTailRec!1440 (LexerInterface!4945 BalanceConc!21790 Int BalanceConc!21788) BalanceConc!21788)

(assert (=> b!3375749 (= lt!1145727 (printTailRec!1440 thiss!18206 lt!1145731 0 (BalanceConc!21789 Empty!11087)))))

(declare-fun print!2010 (LexerInterface!4945 BalanceConc!21790) BalanceConc!21788)

(assert (=> b!3375749 (= lt!1145727 (print!2010 thiss!18206 lt!1145731))))

(declare-fun singletonSeq!2452 (Token!10078) BalanceConc!21790)

(assert (=> b!3375749 (= lt!1145731 (singletonSeq!2452 (h!42204 tokens!494)))))

(declare-fun b!3375750 () Bool)

(assert (=> b!3375750 (= e!2095113 (contains!6701 lt!1145737 lt!1145728))))

(declare-fun b!3375751 () Bool)

(declare-fun e!2095108 () Bool)

(assert (=> b!3375751 (= e!2095118 e!2095108)))

(declare-fun res!1365135 () Bool)

(assert (=> b!3375751 (=> res!1365135 e!2095108)))

(assert (=> b!3375751 (= res!1365135 (or (not (= lt!1145736 lt!1145729)) (not (= lt!1145730 lt!1145729))))))

(declare-fun charsOf!3370 (Token!10078) BalanceConc!21788)

(assert (=> b!3375751 (= lt!1145729 (list!13293 (charsOf!3370 (h!42204 tokens!494))))))

(declare-fun b!3375752 () Bool)

(assert (=> b!3375752 (= e!2095121 e!2095111)))

(declare-fun res!1365139 () Bool)

(assert (=> b!3375752 (=> (not res!1365139) (not e!2095111))))

(declare-fun lt!1145740 () BalanceConc!21790)

(declare-fun rulesProduceEachTokenIndividually!1396 (LexerInterface!4945 List!36909 BalanceConc!21790) Bool)

(assert (=> b!3375752 (= res!1365139 (rulesProduceEachTokenIndividually!1396 thiss!18206 rules!2135 lt!1145740))))

(declare-fun seqFromList!3765 (List!36908) BalanceConc!21790)

(assert (=> b!3375752 (= lt!1145740 (seqFromList!3765 tokens!494))))

(declare-fun b!3375753 () Bool)

(assert (=> b!3375753 (= e!2095104 e!2095122)))

(declare-fun res!1365149 () Bool)

(assert (=> b!3375753 (=> res!1365149 e!2095122)))

(declare-fun lt!1145725 () BalanceConc!21788)

(declare-fun ++!8981 (List!36907 List!36907) List!36907)

(assert (=> b!3375753 (= res!1365149 (not (= (list!13293 lt!1145725) (++!8981 lt!1145729 lt!1145737))))))

(assert (=> b!3375753 (= lt!1145737 (list!13293 (charsOf!3370 separatorToken!241)))))

(declare-fun printWithSeparatorToken!136 (LexerInterface!4945 BalanceConc!21790 Token!10078) BalanceConc!21788)

(assert (=> b!3375753 (= lt!1145725 (printWithSeparatorToken!136 thiss!18206 lt!1145740 separatorToken!241))))

(declare-fun b!3375754 () Bool)

(assert (=> b!3375754 (= e!2095108 e!2095123)))

(declare-fun res!1365154 () Bool)

(assert (=> b!3375754 (=> res!1365154 e!2095123)))

(declare-fun isEmpty!21001 (BalanceConc!21790) Bool)

(declare-datatypes ((tuple2!36342 0))(
  ( (tuple2!36343 (_1!21305 BalanceConc!21790) (_2!21305 BalanceConc!21788)) )
))
(declare-fun lex!2271 (LexerInterface!4945 List!36909 BalanceConc!21788) tuple2!36342)

(assert (=> b!3375754 (= res!1365154 (isEmpty!21001 (_1!21305 (lex!2271 thiss!18206 rules!2135 lt!1145732))))))

(declare-fun seqFromList!3766 (List!36907) BalanceConc!21788)

(assert (=> b!3375754 (= lt!1145732 (seqFromList!3766 lt!1145729))))

(declare-fun b!3375755 () Bool)

(declare-fun res!1365140 () Bool)

(assert (=> b!3375755 (=> (not res!1365140) (not e!2095111))))

(declare-fun forall!7729 (List!36908 Int) Bool)

(assert (=> b!3375755 (= res!1365140 (forall!7729 tokens!494 lambda!120345))))

(declare-fun tp!1055790 () Bool)

(declare-fun b!3375756 () Bool)

(assert (=> b!3375756 (= e!2095126 (and tp!1055790 (inv!49849 (tag!5922 (h!42205 rules!2135))) (inv!49853 (transformation!5356 (h!42205 rules!2135))) e!2095107))))

(declare-fun b!3375757 () Bool)

(assert (=> b!3375757 (= e!2095117 (= (rule!7898 (h!42204 tokens!494)) lt!1145739))))

(declare-fun b!3375758 () Bool)

(declare-fun res!1365155 () Bool)

(assert (=> b!3375758 (=> res!1365155 e!2095108)))

(declare-fun rulesProduceIndividualToken!2437 (LexerInterface!4945 List!36909 Token!10078) Bool)

(assert (=> b!3375758 (= res!1365155 (not (rulesProduceIndividualToken!2437 thiss!18206 rules!2135 (h!42204 tokens!494))))))

(declare-fun e!2095114 () Bool)

(assert (=> b!3375759 (= e!2095114 (and tp!1055798 tp!1055789))))

(declare-fun tp!1055800 () Bool)

(declare-fun b!3375760 () Bool)

(declare-fun e!2095106 () Bool)

(assert (=> b!3375760 (= e!2095106 (and tp!1055800 (inv!49849 (tag!5922 (rule!7898 separatorToken!241))) (inv!49853 (transformation!5356 (rule!7898 separatorToken!241))) e!2095114))))

(declare-fun b!3375761 () Bool)

(declare-fun res!1365144 () Bool)

(assert (=> b!3375761 (=> (not res!1365144) (not e!2095111))))

(assert (=> b!3375761 (= res!1365144 (and (not ((_ is Nil!36784) tokens!494)) ((_ is Nil!36784) (t!262709 tokens!494))))))

(declare-fun b!3375762 () Bool)

(declare-fun res!1365137 () Bool)

(assert (=> b!3375762 (=> (not res!1365137) (not e!2095111))))

(assert (=> b!3375762 (= res!1365137 (rulesProduceIndividualToken!2437 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3375763 () Bool)

(declare-fun tp!1055796 () Bool)

(assert (=> b!3375763 (= e!2095127 (and (inv!21 (value!173106 separatorToken!241)) e!2095106 tp!1055796))))

(declare-fun b!3375764 () Bool)

(assert (=> b!3375764 (= e!2095105 (= (rule!7898 separatorToken!241) lt!1145722))))

(assert (= (and start!314218 res!1365145) b!3375738))

(assert (= (and b!3375738 res!1365142) b!3375743))

(assert (= (and b!3375743 res!1365138) b!3375752))

(assert (= (and b!3375752 res!1365139) b!3375762))

(assert (= (and b!3375762 res!1365137) b!3375736))

(assert (= (and b!3375736 res!1365143) b!3375755))

(assert (= (and b!3375755 res!1365140) b!3375745))

(assert (= (and b!3375745 res!1365136) b!3375761))

(assert (= (and b!3375761 res!1365144) b!3375749))

(assert (= (and b!3375749 (not res!1365141)) b!3375751))

(assert (= (and b!3375751 (not res!1365135)) b!3375758))

(assert (= (and b!3375758 (not res!1365155)) b!3375754))

(assert (= (and b!3375754 (not res!1365154)) b!3375739))

(assert (= (and b!3375739 (not res!1365147)) b!3375753))

(assert (= (and b!3375753 (not res!1365149)) b!3375747))

(assert (= (and b!3375747 res!1365146) b!3375742))

(assert (= (and b!3375742 res!1365153) b!3375757))

(assert (= (and b!3375747 res!1365151) b!3375734))

(assert (= (and b!3375734 res!1365150) b!3375764))

(assert (= (and b!3375747 (not res!1365148)) b!3375741))

(assert (= (and b!3375741 (not res!1365152)) b!3375750))

(assert (= b!3375756 b!3375746))

(assert (= b!3375735 b!3375756))

(assert (= (and start!314218 ((_ is Cons!36785) rules!2135)) b!3375735))

(assert (= b!3375760 b!3375759))

(assert (= b!3375763 b!3375760))

(assert (= start!314218 b!3375763))

(assert (= b!3375740 b!3375748))

(assert (= b!3375744 b!3375740))

(assert (= b!3375737 b!3375744))

(assert (= (and start!314218 ((_ is Cons!36784) tokens!494)) b!3375737))

(declare-fun m!3739195 () Bool)

(assert (=> b!3375745 m!3739195))

(declare-fun m!3739197 () Bool)

(assert (=> b!3375758 m!3739197))

(declare-fun m!3739199 () Bool)

(assert (=> b!3375747 m!3739199))

(declare-fun m!3739201 () Bool)

(assert (=> b!3375747 m!3739201))

(declare-fun m!3739203 () Bool)

(assert (=> b!3375747 m!3739203))

(declare-fun m!3739205 () Bool)

(assert (=> b!3375747 m!3739205))

(declare-fun m!3739207 () Bool)

(assert (=> b!3375747 m!3739207))

(declare-fun m!3739209 () Bool)

(assert (=> b!3375747 m!3739209))

(declare-fun m!3739211 () Bool)

(assert (=> b!3375747 m!3739211))

(declare-fun m!3739213 () Bool)

(assert (=> b!3375747 m!3739213))

(declare-fun m!3739215 () Bool)

(assert (=> b!3375747 m!3739215))

(declare-fun m!3739217 () Bool)

(assert (=> b!3375747 m!3739217))

(declare-fun m!3739219 () Bool)

(assert (=> b!3375747 m!3739219))

(declare-fun m!3739221 () Bool)

(assert (=> b!3375747 m!3739221))

(assert (=> b!3375747 m!3739199))

(declare-fun m!3739223 () Bool)

(assert (=> b!3375747 m!3739223))

(declare-fun m!3739225 () Bool)

(assert (=> b!3375747 m!3739225))

(declare-fun m!3739227 () Bool)

(assert (=> b!3375747 m!3739227))

(assert (=> b!3375747 m!3739207))

(declare-fun m!3739229 () Bool)

(assert (=> b!3375747 m!3739229))

(declare-fun m!3739231 () Bool)

(assert (=> b!3375747 m!3739231))

(declare-fun m!3739233 () Bool)

(assert (=> b!3375754 m!3739233))

(declare-fun m!3739235 () Bool)

(assert (=> b!3375754 m!3739235))

(declare-fun m!3739237 () Bool)

(assert (=> b!3375754 m!3739237))

(declare-fun m!3739239 () Bool)

(assert (=> b!3375737 m!3739239))

(declare-fun m!3739241 () Bool)

(assert (=> b!3375734 m!3739241))

(declare-fun m!3739243 () Bool)

(assert (=> b!3375734 m!3739243))

(declare-fun m!3739245 () Bool)

(assert (=> b!3375752 m!3739245))

(declare-fun m!3739247 () Bool)

(assert (=> b!3375752 m!3739247))

(declare-fun m!3739249 () Bool)

(assert (=> b!3375739 m!3739249))

(declare-fun m!3739251 () Bool)

(assert (=> b!3375743 m!3739251))

(declare-fun m!3739253 () Bool)

(assert (=> b!3375751 m!3739253))

(assert (=> b!3375751 m!3739253))

(declare-fun m!3739255 () Bool)

(assert (=> b!3375751 m!3739255))

(declare-fun m!3739257 () Bool)

(assert (=> b!3375749 m!3739257))

(declare-fun m!3739259 () Bool)

(assert (=> b!3375749 m!3739259))

(declare-fun m!3739261 () Bool)

(assert (=> b!3375749 m!3739261))

(declare-fun m!3739263 () Bool)

(assert (=> b!3375749 m!3739263))

(declare-fun m!3739265 () Bool)

(assert (=> b!3375749 m!3739265))

(declare-fun m!3739267 () Bool)

(assert (=> b!3375744 m!3739267))

(declare-fun m!3739269 () Bool)

(assert (=> b!3375755 m!3739269))

(declare-fun m!3739271 () Bool)

(assert (=> start!314218 m!3739271))

(declare-fun m!3739273 () Bool)

(assert (=> b!3375753 m!3739273))

(declare-fun m!3739275 () Bool)

(assert (=> b!3375753 m!3739275))

(assert (=> b!3375753 m!3739273))

(declare-fun m!3739277 () Bool)

(assert (=> b!3375753 m!3739277))

(declare-fun m!3739279 () Bool)

(assert (=> b!3375753 m!3739279))

(declare-fun m!3739281 () Bool)

(assert (=> b!3375753 m!3739281))

(declare-fun m!3739283 () Bool)

(assert (=> b!3375760 m!3739283))

(declare-fun m!3739285 () Bool)

(assert (=> b!3375760 m!3739285))

(declare-fun m!3739287 () Bool)

(assert (=> b!3375742 m!3739287))

(declare-fun m!3739289 () Bool)

(assert (=> b!3375742 m!3739289))

(declare-fun m!3739291 () Bool)

(assert (=> b!3375740 m!3739291))

(declare-fun m!3739293 () Bool)

(assert (=> b!3375740 m!3739293))

(declare-fun m!3739295 () Bool)

(assert (=> b!3375750 m!3739295))

(declare-fun m!3739297 () Bool)

(assert (=> b!3375738 m!3739297))

(declare-fun m!3739299 () Bool)

(assert (=> b!3375763 m!3739299))

(declare-fun m!3739301 () Bool)

(assert (=> b!3375756 m!3739301))

(declare-fun m!3739303 () Bool)

(assert (=> b!3375756 m!3739303))

(declare-fun m!3739305 () Bool)

(assert (=> b!3375762 m!3739305))

(declare-fun m!3739307 () Bool)

(assert (=> b!3375741 m!3739307))

(check-sat (not b!3375751) (not start!314218) (not b_next!88929) b_and!234335 (not b!3375734) (not b!3375739) (not b!3375754) (not b!3375755) (not b!3375752) b_and!234333 (not b!3375742) (not b!3375762) (not b!3375744) b_and!234341 (not b!3375758) (not b_next!88927) (not b!3375743) (not b_next!88925) (not b!3375745) (not b_next!88923) (not b!3375749) b_and!234337 (not b_next!88921) (not b!3375760) (not b!3375763) b_and!234339 (not b!3375735) (not b!3375741) (not b!3375756) (not b!3375737) (not b_next!88931) (not b!3375747) (not b!3375753) (not b!3375750) (not b!3375738) (not b!3375740) b_and!234331)
(check-sat (not b_next!88923) (not b_next!88929) b_and!234335 b_and!234339 (not b_next!88931) b_and!234333 b_and!234341 b_and!234331 (not b_next!88927) (not b_next!88925) b_and!234337 (not b_next!88921))
(get-model)

(declare-fun d!957931 () Bool)

(declare-fun res!1365170 () Bool)

(declare-fun e!2095134 () Bool)

(assert (=> d!957931 (=> (not res!1365170) (not e!2095134))))

(declare-fun rulesValid!1992 (LexerInterface!4945 List!36909) Bool)

(assert (=> d!957931 (= res!1365170 (rulesValid!1992 thiss!18206 rules!2135))))

(assert (=> d!957931 (= (rulesInvariant!4342 thiss!18206 rules!2135) e!2095134)))

(declare-fun b!3375770 () Bool)

(declare-datatypes ((List!36910 0))(
  ( (Nil!36786) (Cons!36786 (h!42206 String!41264) (t!262785 List!36910)) )
))
(declare-fun noDuplicateTag!1988 (LexerInterface!4945 List!36909 List!36910) Bool)

(assert (=> b!3375770 (= e!2095134 (noDuplicateTag!1988 thiss!18206 rules!2135 Nil!36786))))

(assert (= (and d!957931 res!1365170) b!3375770))

(declare-fun m!3739319 () Bool)

(assert (=> d!957931 m!3739319))

(declare-fun m!3739321 () Bool)

(assert (=> b!3375770 m!3739321))

(assert (=> b!3375743 d!957931))

(declare-fun b!3375781 () Bool)

(declare-fun e!2095142 () Bool)

(declare-fun inv!16 (TokenValue!5586) Bool)

(assert (=> b!3375781 (= e!2095142 (inv!16 (value!173106 (h!42204 tokens!494))))))

(declare-fun b!3375782 () Bool)

(declare-fun e!2095141 () Bool)

(declare-fun inv!15 (TokenValue!5586) Bool)

(assert (=> b!3375782 (= e!2095141 (inv!15 (value!173106 (h!42204 tokens!494))))))

(declare-fun d!957935 () Bool)

(declare-fun c!574912 () Bool)

(assert (=> d!957935 (= c!574912 ((_ is IntegerValue!16758) (value!173106 (h!42204 tokens!494))))))

(assert (=> d!957935 (= (inv!21 (value!173106 (h!42204 tokens!494))) e!2095142)))

(declare-fun b!3375783 () Bool)

(declare-fun e!2095143 () Bool)

(declare-fun inv!17 (TokenValue!5586) Bool)

(assert (=> b!3375783 (= e!2095143 (inv!17 (value!173106 (h!42204 tokens!494))))))

(declare-fun b!3375784 () Bool)

(assert (=> b!3375784 (= e!2095142 e!2095143)))

(declare-fun c!574911 () Bool)

(assert (=> b!3375784 (= c!574911 ((_ is IntegerValue!16759) (value!173106 (h!42204 tokens!494))))))

(declare-fun b!3375785 () Bool)

(declare-fun res!1365173 () Bool)

(assert (=> b!3375785 (=> res!1365173 e!2095141)))

(assert (=> b!3375785 (= res!1365173 (not ((_ is IntegerValue!16760) (value!173106 (h!42204 tokens!494)))))))

(assert (=> b!3375785 (= e!2095143 e!2095141)))

(assert (= (and d!957935 c!574912) b!3375781))

(assert (= (and d!957935 (not c!574912)) b!3375784))

(assert (= (and b!3375784 c!574911) b!3375783))

(assert (= (and b!3375784 (not c!574911)) b!3375785))

(assert (= (and b!3375785 (not res!1365173)) b!3375782))

(declare-fun m!3739323 () Bool)

(assert (=> b!3375781 m!3739323))

(declare-fun m!3739325 () Bool)

(assert (=> b!3375782 m!3739325))

(declare-fun m!3739327 () Bool)

(assert (=> b!3375783 m!3739327))

(assert (=> b!3375744 d!957935))

(declare-fun d!957937 () Bool)

(declare-fun res!1365180 () Bool)

(declare-fun e!2095152 () Bool)

(assert (=> d!957937 (=> res!1365180 e!2095152)))

(assert (=> d!957937 (= res!1365180 (not ((_ is Cons!36785) rules!2135)))))

(assert (=> d!957937 (= (sepAndNonSepRulesDisjointChars!1550 rules!2135 rules!2135) e!2095152)))

(declare-fun b!3375796 () Bool)

(declare-fun e!2095153 () Bool)

(assert (=> b!3375796 (= e!2095152 e!2095153)))

(declare-fun res!1365181 () Bool)

(assert (=> b!3375796 (=> (not res!1365181) (not e!2095153))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!668 (Rule!10512 List!36909) Bool)

(assert (=> b!3375796 (= res!1365181 (ruleDisjointCharsFromAllFromOtherType!668 (h!42205 rules!2135) rules!2135))))

(declare-fun b!3375797 () Bool)

(assert (=> b!3375797 (= e!2095153 (sepAndNonSepRulesDisjointChars!1550 rules!2135 (t!262710 rules!2135)))))

(assert (= (and d!957937 (not res!1365180)) b!3375796))

(assert (= (and b!3375796 res!1365181) b!3375797))

(declare-fun m!3739329 () Bool)

(assert (=> b!3375796 m!3739329))

(declare-fun m!3739331 () Bool)

(assert (=> b!3375797 m!3739331))

(assert (=> b!3375745 d!957937))

(declare-fun d!957939 () Bool)

(assert (=> d!957939 (rulesProduceIndividualToken!2437 thiss!18206 rules!2135 (h!42204 tokens!494))))

(declare-fun lt!1145779 () Unit!51888)

(declare-fun choose!19501 (LexerInterface!4945 List!36909 List!36908 Token!10078) Unit!51888)

(assert (=> d!957939 (= lt!1145779 (choose!19501 thiss!18206 rules!2135 tokens!494 (h!42204 tokens!494)))))

(assert (=> d!957939 (not (isEmpty!20999 rules!2135))))

(assert (=> d!957939 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!940 thiss!18206 rules!2135 tokens!494 (h!42204 tokens!494)) lt!1145779)))

(declare-fun bs!554578 () Bool)

(assert (= bs!554578 d!957939))

(assert (=> bs!554578 m!3739197))

(declare-fun m!3739423 () Bool)

(assert (=> bs!554578 m!3739423))

(assert (=> bs!554578 m!3739297))

(assert (=> b!3375747 d!957939))

(declare-fun d!957959 () Bool)

(assert (=> d!957959 (= (head!7197 lt!1145737) (h!42203 lt!1145737))))

(assert (=> b!3375747 d!957959))

(declare-fun d!957961 () Bool)

(assert (=> d!957961 (= (isEmpty!21000 (getSuffix!1450 lt!1145729 lt!1145729)) ((_ is Nil!36783) (getSuffix!1450 lt!1145729 lt!1145729)))))

(assert (=> b!3375747 d!957961))

(declare-fun b!3375879 () Bool)

(declare-fun lt!1145787 () Unit!51888)

(declare-fun lt!1145786 () Unit!51888)

(assert (=> b!3375879 (= lt!1145787 lt!1145786)))

(assert (=> b!3375879 (rulesInvariant!4342 thiss!18206 (t!262710 rules!2135))))

(declare-fun lemmaInvariantOnRulesThenOnTail!389 (LexerInterface!4945 Rule!10512 List!36909) Unit!51888)

(assert (=> b!3375879 (= lt!1145786 (lemmaInvariantOnRulesThenOnTail!389 thiss!18206 (h!42205 rules!2135) (t!262710 rules!2135)))))

(declare-fun e!2095201 () Option!7359)

(assert (=> b!3375879 (= e!2095201 (getRuleFromTag!1011 thiss!18206 (t!262710 rules!2135) (tag!5922 (rule!7898 (h!42204 tokens!494)))))))

(declare-fun b!3375880 () Bool)

(declare-fun e!2095200 () Option!7359)

(assert (=> b!3375880 (= e!2095200 (Some!7358 (h!42205 rules!2135)))))

(declare-fun b!3375881 () Bool)

(assert (=> b!3375881 (= e!2095201 None!7358)))

(declare-fun b!3375882 () Bool)

(declare-fun e!2095202 () Bool)

(declare-fun lt!1145788 () Option!7359)

(assert (=> b!3375882 (= e!2095202 (= (tag!5922 (get!11731 lt!1145788)) (tag!5922 (rule!7898 (h!42204 tokens!494)))))))

(declare-fun d!957963 () Bool)

(declare-fun e!2095203 () Bool)

(assert (=> d!957963 e!2095203))

(declare-fun res!1365223 () Bool)

(assert (=> d!957963 (=> res!1365223 e!2095203)))

(declare-fun isEmpty!21005 (Option!7359) Bool)

(assert (=> d!957963 (= res!1365223 (isEmpty!21005 lt!1145788))))

(assert (=> d!957963 (= lt!1145788 e!2095200)))

(declare-fun c!574935 () Bool)

(assert (=> d!957963 (= c!574935 (and ((_ is Cons!36785) rules!2135) (= (tag!5922 (h!42205 rules!2135)) (tag!5922 (rule!7898 (h!42204 tokens!494))))))))

(assert (=> d!957963 (rulesInvariant!4342 thiss!18206 rules!2135)))

(assert (=> d!957963 (= (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 (h!42204 tokens!494)))) lt!1145788)))

(declare-fun b!3375883 () Bool)

(assert (=> b!3375883 (= e!2095200 e!2095201)))

(declare-fun c!574936 () Bool)

(assert (=> b!3375883 (= c!574936 (and ((_ is Cons!36785) rules!2135) (not (= (tag!5922 (h!42205 rules!2135)) (tag!5922 (rule!7898 (h!42204 tokens!494)))))))))

(declare-fun b!3375884 () Bool)

(assert (=> b!3375884 (= e!2095203 e!2095202)))

(declare-fun res!1365224 () Bool)

(assert (=> b!3375884 (=> (not res!1365224) (not e!2095202))))

(declare-fun contains!6702 (List!36909 Rule!10512) Bool)

(assert (=> b!3375884 (= res!1365224 (contains!6702 rules!2135 (get!11731 lt!1145788)))))

(assert (= (and d!957963 c!574935) b!3375880))

(assert (= (and d!957963 (not c!574935)) b!3375883))

(assert (= (and b!3375883 c!574936) b!3375879))

(assert (= (and b!3375883 (not c!574936)) b!3375881))

(assert (= (and d!957963 (not res!1365223)) b!3375884))

(assert (= (and b!3375884 res!1365224) b!3375882))

(declare-fun m!3739425 () Bool)

(assert (=> b!3375879 m!3739425))

(declare-fun m!3739427 () Bool)

(assert (=> b!3375879 m!3739427))

(declare-fun m!3739429 () Bool)

(assert (=> b!3375879 m!3739429))

(declare-fun m!3739431 () Bool)

(assert (=> b!3375882 m!3739431))

(declare-fun m!3739433 () Bool)

(assert (=> d!957963 m!3739433))

(assert (=> d!957963 m!3739251))

(assert (=> b!3375884 m!3739431))

(assert (=> b!3375884 m!3739431))

(declare-fun m!3739435 () Bool)

(assert (=> b!3375884 m!3739435))

(assert (=> b!3375747 d!957963))

(declare-fun d!957965 () Bool)

(assert (=> d!957965 (= (isDefined!5694 lt!1145724) (not (isEmpty!21005 lt!1145724)))))

(declare-fun bs!554579 () Bool)

(assert (= bs!554579 d!957965))

(declare-fun m!3739437 () Bool)

(assert (=> bs!554579 m!3739437))

(assert (=> b!3375747 d!957965))

(declare-fun d!957967 () Bool)

(declare-fun lt!1145795 () List!36907)

(assert (=> d!957967 (= (++!8981 lt!1145729 lt!1145795) lt!1145729)))

(declare-fun e!2095210 () List!36907)

(assert (=> d!957967 (= lt!1145795 e!2095210)))

(declare-fun c!574939 () Bool)

(assert (=> d!957967 (= c!574939 ((_ is Cons!36783) lt!1145729))))

(assert (=> d!957967 (>= (size!27839 lt!1145729) (size!27839 lt!1145729))))

(assert (=> d!957967 (= (getSuffix!1450 lt!1145729 lt!1145729) lt!1145795)))

(declare-fun b!3375895 () Bool)

(declare-fun tail!5336 (List!36907) List!36907)

(assert (=> b!3375895 (= e!2095210 (getSuffix!1450 (tail!5336 lt!1145729) (t!262708 lt!1145729)))))

(declare-fun b!3375896 () Bool)

(assert (=> b!3375896 (= e!2095210 lt!1145729)))

(assert (= (and d!957967 c!574939) b!3375895))

(assert (= (and d!957967 (not c!574939)) b!3375896))

(declare-fun m!3739439 () Bool)

(assert (=> d!957967 m!3739439))

(assert (=> d!957967 m!3739223))

(assert (=> d!957967 m!3739223))

(declare-fun m!3739441 () Bool)

(assert (=> b!3375895 m!3739441))

(assert (=> b!3375895 m!3739441))

(declare-fun m!3739443 () Bool)

(assert (=> b!3375895 m!3739443))

(assert (=> b!3375747 d!957967))

(declare-fun b!3375970 () Bool)

(declare-fun e!2095255 () Option!7360)

(assert (=> b!3375970 (= e!2095255 None!7359)))

(declare-fun b!3375971 () Bool)

(declare-fun res!1365277 () Bool)

(declare-fun e!2095254 () Bool)

(assert (=> b!3375971 (=> (not res!1365277) (not e!2095254))))

(declare-fun lt!1145821 () Option!7360)

(declare-fun get!11732 (Option!7360) tuple2!36340)

(assert (=> b!3375971 (= res!1365277 (= (rule!7898 (_1!21304 (get!11732 lt!1145821))) (rule!7898 (h!42204 tokens!494))))))

(declare-fun b!3375972 () Bool)

(declare-fun res!1365280 () Bool)

(assert (=> b!3375972 (=> (not res!1365280) (not e!2095254))))

(assert (=> b!3375972 (= res!1365280 (= (++!8981 (list!13293 (charsOf!3370 (_1!21304 (get!11732 lt!1145821)))) (_2!21304 (get!11732 lt!1145821))) lt!1145729))))

(declare-fun b!3375973 () Bool)

(declare-fun e!2095256 () Bool)

(assert (=> b!3375973 (= e!2095256 e!2095254)))

(declare-fun res!1365279 () Bool)

(assert (=> b!3375973 (=> (not res!1365279) (not e!2095254))))

(assert (=> b!3375973 (= res!1365279 (matchR!4707 (regex!5356 (rule!7898 (h!42204 tokens!494))) (list!13293 (charsOf!3370 (_1!21304 (get!11732 lt!1145821))))))))

(declare-fun d!957969 () Bool)

(assert (=> d!957969 e!2095256))

(declare-fun res!1365281 () Bool)

(assert (=> d!957969 (=> res!1365281 e!2095256)))

(declare-fun isEmpty!21007 (Option!7360) Bool)

(assert (=> d!957969 (= res!1365281 (isEmpty!21007 lt!1145821))))

(assert (=> d!957969 (= lt!1145821 e!2095255)))

(declare-fun c!574951 () Bool)

(declare-datatypes ((tuple2!36346 0))(
  ( (tuple2!36347 (_1!21307 List!36907) (_2!21307 List!36907)) )
))
(declare-fun lt!1145818 () tuple2!36346)

(assert (=> d!957969 (= c!574951 (isEmpty!21000 (_1!21307 lt!1145818)))))

(declare-fun findLongestMatch!783 (Regex!10115 List!36907) tuple2!36346)

(assert (=> d!957969 (= lt!1145818 (findLongestMatch!783 (regex!5356 (rule!7898 (h!42204 tokens!494))) lt!1145729))))

(declare-fun ruleValid!1693 (LexerInterface!4945 Rule!10512) Bool)

(assert (=> d!957969 (ruleValid!1693 thiss!18206 (rule!7898 (h!42204 tokens!494)))))

(assert (=> d!957969 (= (maxPrefixOneRule!1668 thiss!18206 (rule!7898 (h!42204 tokens!494)) lt!1145729) lt!1145821)))

(declare-fun b!3375974 () Bool)

(assert (=> b!3375974 (= e!2095254 (= (size!27838 (_1!21304 (get!11732 lt!1145821))) (size!27839 (originalCharacters!6070 (_1!21304 (get!11732 lt!1145821))))))))

(declare-fun b!3375975 () Bool)

(declare-fun res!1365283 () Bool)

(assert (=> b!3375975 (=> (not res!1365283) (not e!2095254))))

(assert (=> b!3375975 (= res!1365283 (= (value!173106 (_1!21304 (get!11732 lt!1145821))) (apply!8535 (transformation!5356 (rule!7898 (_1!21304 (get!11732 lt!1145821)))) (seqFromList!3766 (originalCharacters!6070 (_1!21304 (get!11732 lt!1145821)))))))))

(declare-fun b!3375976 () Bool)

(declare-fun e!2095257 () Bool)

(declare-fun findLongestMatchInner!868 (Regex!10115 List!36907 Int List!36907 List!36907 Int) tuple2!36346)

(assert (=> b!3375976 (= e!2095257 (matchR!4707 (regex!5356 (rule!7898 (h!42204 tokens!494))) (_1!21307 (findLongestMatchInner!868 (regex!5356 (rule!7898 (h!42204 tokens!494))) Nil!36783 (size!27839 Nil!36783) lt!1145729 lt!1145729 (size!27839 lt!1145729)))))))

(declare-fun b!3375977 () Bool)

(declare-fun res!1365282 () Bool)

(assert (=> b!3375977 (=> (not res!1365282) (not e!2095254))))

(assert (=> b!3375977 (= res!1365282 (< (size!27839 (_2!21304 (get!11732 lt!1145821))) (size!27839 lt!1145729)))))

(declare-fun b!3375978 () Bool)

(declare-fun size!27842 (BalanceConc!21788) Int)

(assert (=> b!3375978 (= e!2095255 (Some!7359 (tuple2!36341 (Token!10079 (apply!8535 (transformation!5356 (rule!7898 (h!42204 tokens!494))) (seqFromList!3766 (_1!21307 lt!1145818))) (rule!7898 (h!42204 tokens!494)) (size!27842 (seqFromList!3766 (_1!21307 lt!1145818))) (_1!21307 lt!1145818)) (_2!21307 lt!1145818))))))

(declare-fun lt!1145819 () Unit!51888)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!841 (Regex!10115 List!36907) Unit!51888)

(assert (=> b!3375978 (= lt!1145819 (longestMatchIsAcceptedByMatchOrIsEmpty!841 (regex!5356 (rule!7898 (h!42204 tokens!494))) lt!1145729))))

(declare-fun res!1365278 () Bool)

(assert (=> b!3375978 (= res!1365278 (isEmpty!21000 (_1!21307 (findLongestMatchInner!868 (regex!5356 (rule!7898 (h!42204 tokens!494))) Nil!36783 (size!27839 Nil!36783) lt!1145729 lt!1145729 (size!27839 lt!1145729)))))))

(assert (=> b!3375978 (=> res!1365278 e!2095257)))

(assert (=> b!3375978 e!2095257))

(declare-fun lt!1145820 () Unit!51888)

(assert (=> b!3375978 (= lt!1145820 lt!1145819)))

(declare-fun lt!1145817 () Unit!51888)

(declare-fun lemmaSemiInverse!1216 (TokenValueInjection!10600 BalanceConc!21788) Unit!51888)

(assert (=> b!3375978 (= lt!1145817 (lemmaSemiInverse!1216 (transformation!5356 (rule!7898 (h!42204 tokens!494))) (seqFromList!3766 (_1!21307 lt!1145818))))))

(assert (= (and d!957969 c!574951) b!3375970))

(assert (= (and d!957969 (not c!574951)) b!3375978))

(assert (= (and b!3375978 (not res!1365278)) b!3375976))

(assert (= (and d!957969 (not res!1365281)) b!3375973))

(assert (= (and b!3375973 res!1365279) b!3375972))

(assert (= (and b!3375972 res!1365280) b!3375977))

(assert (= (and b!3375977 res!1365282) b!3375971))

(assert (= (and b!3375971 res!1365277) b!3375975))

(assert (= (and b!3375975 res!1365283) b!3375974))

(declare-fun m!3739527 () Bool)

(assert (=> b!3375974 m!3739527))

(declare-fun m!3739529 () Bool)

(assert (=> b!3375974 m!3739529))

(declare-fun m!3739531 () Bool)

(assert (=> b!3375976 m!3739531))

(assert (=> b!3375976 m!3739223))

(assert (=> b!3375976 m!3739531))

(assert (=> b!3375976 m!3739223))

(declare-fun m!3739533 () Bool)

(assert (=> b!3375976 m!3739533))

(declare-fun m!3739535 () Bool)

(assert (=> b!3375976 m!3739535))

(assert (=> b!3375973 m!3739527))

(declare-fun m!3739537 () Bool)

(assert (=> b!3375973 m!3739537))

(assert (=> b!3375973 m!3739537))

(declare-fun m!3739539 () Bool)

(assert (=> b!3375973 m!3739539))

(assert (=> b!3375973 m!3739539))

(declare-fun m!3739541 () Bool)

(assert (=> b!3375973 m!3739541))

(assert (=> b!3375975 m!3739527))

(declare-fun m!3739543 () Bool)

(assert (=> b!3375975 m!3739543))

(assert (=> b!3375975 m!3739543))

(declare-fun m!3739545 () Bool)

(assert (=> b!3375975 m!3739545))

(declare-fun m!3739547 () Bool)

(assert (=> d!957969 m!3739547))

(declare-fun m!3739549 () Bool)

(assert (=> d!957969 m!3739549))

(declare-fun m!3739551 () Bool)

(assert (=> d!957969 m!3739551))

(declare-fun m!3739553 () Bool)

(assert (=> d!957969 m!3739553))

(assert (=> b!3375978 m!3739531))

(assert (=> b!3375978 m!3739223))

(assert (=> b!3375978 m!3739533))

(declare-fun m!3739555 () Bool)

(assert (=> b!3375978 m!3739555))

(assert (=> b!3375978 m!3739223))

(assert (=> b!3375978 m!3739531))

(declare-fun m!3739557 () Bool)

(assert (=> b!3375978 m!3739557))

(assert (=> b!3375978 m!3739555))

(declare-fun m!3739559 () Bool)

(assert (=> b!3375978 m!3739559))

(assert (=> b!3375978 m!3739555))

(declare-fun m!3739561 () Bool)

(assert (=> b!3375978 m!3739561))

(assert (=> b!3375978 m!3739555))

(declare-fun m!3739563 () Bool)

(assert (=> b!3375978 m!3739563))

(declare-fun m!3739565 () Bool)

(assert (=> b!3375978 m!3739565))

(assert (=> b!3375977 m!3739527))

(declare-fun m!3739567 () Bool)

(assert (=> b!3375977 m!3739567))

(assert (=> b!3375977 m!3739223))

(assert (=> b!3375971 m!3739527))

(assert (=> b!3375972 m!3739527))

(assert (=> b!3375972 m!3739537))

(assert (=> b!3375972 m!3739537))

(assert (=> b!3375972 m!3739539))

(assert (=> b!3375972 m!3739539))

(declare-fun m!3739569 () Bool)

(assert (=> b!3375972 m!3739569))

(assert (=> b!3375747 d!957969))

(declare-fun d!957993 () Bool)

(assert (=> d!957993 (isEmpty!21000 (getSuffix!1450 lt!1145729 lt!1145729))))

(declare-fun lt!1145824 () Unit!51888)

(declare-fun choose!19505 (List!36907) Unit!51888)

(assert (=> d!957993 (= lt!1145824 (choose!19505 lt!1145729))))

(assert (=> d!957993 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!108 lt!1145729) lt!1145824)))

(declare-fun bs!554581 () Bool)

(assert (= bs!554581 d!957993))

(assert (=> bs!554581 m!3739207))

(assert (=> bs!554581 m!3739207))

(assert (=> bs!554581 m!3739209))

(declare-fun m!3739571 () Bool)

(assert (=> bs!554581 m!3739571))

(assert (=> b!3375747 d!957993))

(declare-fun d!957995 () Bool)

(assert (=> d!957995 (= (maxPrefixOneRule!1668 thiss!18206 (rule!7898 (h!42204 tokens!494)) lt!1145729) (Some!7359 (tuple2!36341 (Token!10079 (apply!8535 (transformation!5356 (rule!7898 (h!42204 tokens!494))) (seqFromList!3766 lt!1145729)) (rule!7898 (h!42204 tokens!494)) (size!27839 lt!1145729) lt!1145729) Nil!36783)))))

(declare-fun lt!1145827 () Unit!51888)

(declare-fun choose!19506 (LexerInterface!4945 List!36909 List!36907 List!36907 List!36907 Rule!10512) Unit!51888)

(assert (=> d!957995 (= lt!1145827 (choose!19506 thiss!18206 rules!2135 lt!1145729 lt!1145729 Nil!36783 (rule!7898 (h!42204 tokens!494))))))

(assert (=> d!957995 (not (isEmpty!20999 rules!2135))))

(assert (=> d!957995 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!767 thiss!18206 rules!2135 lt!1145729 lt!1145729 Nil!36783 (rule!7898 (h!42204 tokens!494))) lt!1145827)))

(declare-fun bs!554582 () Bool)

(assert (= bs!554582 d!957995))

(assert (=> bs!554582 m!3739237))

(declare-fun m!3739573 () Bool)

(assert (=> bs!554582 m!3739573))

(assert (=> bs!554582 m!3739237))

(declare-fun m!3739575 () Bool)

(assert (=> bs!554582 m!3739575))

(assert (=> bs!554582 m!3739217))

(assert (=> bs!554582 m!3739223))

(assert (=> bs!554582 m!3739297))

(assert (=> b!3375747 d!957995))

(declare-fun d!957997 () Bool)

(declare-fun lt!1145830 () Int)

(assert (=> d!957997 (>= lt!1145830 0)))

(declare-fun e!2095260 () Int)

(assert (=> d!957997 (= lt!1145830 e!2095260)))

(declare-fun c!574954 () Bool)

(assert (=> d!957997 (= c!574954 ((_ is Nil!36783) lt!1145729))))

(assert (=> d!957997 (= (size!27839 lt!1145729) lt!1145830)))

(declare-fun b!3375983 () Bool)

(assert (=> b!3375983 (= e!2095260 0)))

(declare-fun b!3375984 () Bool)

(assert (=> b!3375984 (= e!2095260 (+ 1 (size!27839 (t!262708 lt!1145729))))))

(assert (= (and d!957997 c!574954) b!3375983))

(assert (= (and d!957997 (not c!574954)) b!3375984))

(declare-fun m!3739577 () Bool)

(assert (=> b!3375984 m!3739577))

(assert (=> b!3375747 d!957997))

(declare-fun d!957999 () Bool)

(declare-fun e!2095263 () Bool)

(assert (=> d!957999 e!2095263))

(declare-fun res!1365288 () Bool)

(assert (=> d!957999 (=> (not res!1365288) (not e!2095263))))

(assert (=> d!957999 (= res!1365288 (isDefined!5694 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 (h!42204 tokens!494))))))))

(declare-fun lt!1145833 () Unit!51888)

(declare-fun choose!19507 (LexerInterface!4945 List!36909 List!36907 Token!10078) Unit!51888)

(assert (=> d!957999 (= lt!1145833 (choose!19507 thiss!18206 rules!2135 lt!1145729 (h!42204 tokens!494)))))

(assert (=> d!957999 (rulesInvariant!4342 thiss!18206 rules!2135)))

(assert (=> d!957999 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1011 thiss!18206 rules!2135 lt!1145729 (h!42204 tokens!494)) lt!1145833)))

(declare-fun b!3375989 () Bool)

(declare-fun res!1365289 () Bool)

(assert (=> b!3375989 (=> (not res!1365289) (not e!2095263))))

(assert (=> b!3375989 (= res!1365289 (matchR!4707 (regex!5356 (get!11731 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 (h!42204 tokens!494)))))) (list!13293 (charsOf!3370 (h!42204 tokens!494)))))))

(declare-fun b!3375990 () Bool)

(assert (=> b!3375990 (= e!2095263 (= (rule!7898 (h!42204 tokens!494)) (get!11731 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 (h!42204 tokens!494)))))))))

(assert (= (and d!957999 res!1365288) b!3375989))

(assert (= (and b!3375989 res!1365289) b!3375990))

(assert (=> d!957999 m!3739203))

(assert (=> d!957999 m!3739203))

(declare-fun m!3739579 () Bool)

(assert (=> d!957999 m!3739579))

(declare-fun m!3739581 () Bool)

(assert (=> d!957999 m!3739581))

(assert (=> d!957999 m!3739251))

(assert (=> b!3375989 m!3739203))

(declare-fun m!3739583 () Bool)

(assert (=> b!3375989 m!3739583))

(assert (=> b!3375989 m!3739203))

(assert (=> b!3375989 m!3739253))

(assert (=> b!3375989 m!3739255))

(assert (=> b!3375989 m!3739255))

(declare-fun m!3739585 () Bool)

(assert (=> b!3375989 m!3739585))

(assert (=> b!3375989 m!3739253))

(assert (=> b!3375990 m!3739203))

(assert (=> b!3375990 m!3739203))

(assert (=> b!3375990 m!3739583))

(assert (=> b!3375747 d!957999))

(declare-fun d!958001 () Bool)

(assert (=> d!958001 (= (isDefined!5694 lt!1145734) (not (isEmpty!21005 lt!1145734)))))

(declare-fun bs!554583 () Bool)

(assert (= bs!554583 d!958001))

(declare-fun m!3739587 () Bool)

(assert (=> bs!554583 m!3739587))

(assert (=> b!3375747 d!958001))

(declare-fun b!3375991 () Bool)

(declare-fun lt!1145835 () Unit!51888)

(declare-fun lt!1145834 () Unit!51888)

(assert (=> b!3375991 (= lt!1145835 lt!1145834)))

(assert (=> b!3375991 (rulesInvariant!4342 thiss!18206 (t!262710 rules!2135))))

(assert (=> b!3375991 (= lt!1145834 (lemmaInvariantOnRulesThenOnTail!389 thiss!18206 (h!42205 rules!2135) (t!262710 rules!2135)))))

(declare-fun e!2095265 () Option!7359)

(assert (=> b!3375991 (= e!2095265 (getRuleFromTag!1011 thiss!18206 (t!262710 rules!2135) (tag!5922 (rule!7898 separatorToken!241))))))

(declare-fun b!3375992 () Bool)

(declare-fun e!2095264 () Option!7359)

(assert (=> b!3375992 (= e!2095264 (Some!7358 (h!42205 rules!2135)))))

(declare-fun b!3375993 () Bool)

(assert (=> b!3375993 (= e!2095265 None!7358)))

(declare-fun b!3375994 () Bool)

(declare-fun e!2095266 () Bool)

(declare-fun lt!1145836 () Option!7359)

(assert (=> b!3375994 (= e!2095266 (= (tag!5922 (get!11731 lt!1145836)) (tag!5922 (rule!7898 separatorToken!241))))))

(declare-fun d!958003 () Bool)

(declare-fun e!2095267 () Bool)

(assert (=> d!958003 e!2095267))

(declare-fun res!1365290 () Bool)

(assert (=> d!958003 (=> res!1365290 e!2095267)))

(assert (=> d!958003 (= res!1365290 (isEmpty!21005 lt!1145836))))

(assert (=> d!958003 (= lt!1145836 e!2095264)))

(declare-fun c!574955 () Bool)

(assert (=> d!958003 (= c!574955 (and ((_ is Cons!36785) rules!2135) (= (tag!5922 (h!42205 rules!2135)) (tag!5922 (rule!7898 separatorToken!241)))))))

(assert (=> d!958003 (rulesInvariant!4342 thiss!18206 rules!2135)))

(assert (=> d!958003 (= (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 separatorToken!241))) lt!1145836)))

(declare-fun b!3375995 () Bool)

(assert (=> b!3375995 (= e!2095264 e!2095265)))

(declare-fun c!574956 () Bool)

(assert (=> b!3375995 (= c!574956 (and ((_ is Cons!36785) rules!2135) (not (= (tag!5922 (h!42205 rules!2135)) (tag!5922 (rule!7898 separatorToken!241))))))))

(declare-fun b!3375996 () Bool)

(assert (=> b!3375996 (= e!2095267 e!2095266)))

(declare-fun res!1365291 () Bool)

(assert (=> b!3375996 (=> (not res!1365291) (not e!2095266))))

(assert (=> b!3375996 (= res!1365291 (contains!6702 rules!2135 (get!11731 lt!1145836)))))

(assert (= (and d!958003 c!574955) b!3375992))

(assert (= (and d!958003 (not c!574955)) b!3375995))

(assert (= (and b!3375995 c!574956) b!3375991))

(assert (= (and b!3375995 (not c!574956)) b!3375993))

(assert (= (and d!958003 (not res!1365290)) b!3375996))

(assert (= (and b!3375996 res!1365291) b!3375994))

(assert (=> b!3375991 m!3739425))

(assert (=> b!3375991 m!3739427))

(declare-fun m!3739589 () Bool)

(assert (=> b!3375991 m!3739589))

(declare-fun m!3739591 () Bool)

(assert (=> b!3375994 m!3739591))

(declare-fun m!3739593 () Bool)

(assert (=> d!958003 m!3739593))

(assert (=> d!958003 m!3739251))

(assert (=> b!3375996 m!3739591))

(assert (=> b!3375996 m!3739591))

(declare-fun m!3739595 () Bool)

(assert (=> b!3375996 m!3739595))

(assert (=> b!3375747 d!958003))

(declare-fun d!958005 () Bool)

(declare-fun e!2095268 () Bool)

(assert (=> d!958005 e!2095268))

(declare-fun res!1365292 () Bool)

(assert (=> d!958005 (=> (not res!1365292) (not e!2095268))))

(assert (=> d!958005 (= res!1365292 (isDefined!5694 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 separatorToken!241)))))))

(declare-fun lt!1145837 () Unit!51888)

(assert (=> d!958005 (= lt!1145837 (choose!19507 thiss!18206 rules!2135 lt!1145737 separatorToken!241))))

(assert (=> d!958005 (rulesInvariant!4342 thiss!18206 rules!2135)))

(assert (=> d!958005 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1011 thiss!18206 rules!2135 lt!1145737 separatorToken!241) lt!1145837)))

(declare-fun b!3375997 () Bool)

(declare-fun res!1365293 () Bool)

(assert (=> b!3375997 (=> (not res!1365293) (not e!2095268))))

(assert (=> b!3375997 (= res!1365293 (matchR!4707 (regex!5356 (get!11731 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 separatorToken!241))))) (list!13293 (charsOf!3370 separatorToken!241))))))

(declare-fun b!3375998 () Bool)

(assert (=> b!3375998 (= e!2095268 (= (rule!7898 separatorToken!241) (get!11731 (getRuleFromTag!1011 thiss!18206 rules!2135 (tag!5922 (rule!7898 separatorToken!241))))))))

(assert (= (and d!958005 res!1365292) b!3375997))

(assert (= (and b!3375997 res!1365293) b!3375998))

(assert (=> d!958005 m!3739215))

(assert (=> d!958005 m!3739215))

(declare-fun m!3739597 () Bool)

(assert (=> d!958005 m!3739597))

(declare-fun m!3739599 () Bool)

(assert (=> d!958005 m!3739599))

(assert (=> d!958005 m!3739251))

(assert (=> b!3375997 m!3739215))

(declare-fun m!3739601 () Bool)

(assert (=> b!3375997 m!3739601))

(assert (=> b!3375997 m!3739215))

(assert (=> b!3375997 m!3739273))

(assert (=> b!3375997 m!3739277))

(assert (=> b!3375997 m!3739277))

(declare-fun m!3739603 () Bool)

(assert (=> b!3375997 m!3739603))

(assert (=> b!3375997 m!3739273))

(assert (=> b!3375998 m!3739215))

(assert (=> b!3375998 m!3739215))

(assert (=> b!3375998 m!3739601))

(assert (=> b!3375747 d!958005))

(declare-fun d!958007 () Bool)

(declare-fun dynLambda!15271 (Int BalanceConc!21788) TokenValue!5586)

(assert (=> d!958007 (= (apply!8535 (transformation!5356 (rule!7898 (h!42204 tokens!494))) lt!1145732) (dynLambda!15271 (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) lt!1145732))))

(declare-fun b_lambda!95703 () Bool)

(assert (=> (not b_lambda!95703) (not d!958007)))

(declare-fun t!262721 () Bool)

(declare-fun tb!179705 () Bool)

(assert (=> (and b!3375748 (= (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262721) tb!179705))

(declare-fun result!223040 () Bool)

(assert (=> tb!179705 (= result!223040 (inv!21 (dynLambda!15271 (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) lt!1145732)))))

(declare-fun m!3739605 () Bool)

(assert (=> tb!179705 m!3739605))

(assert (=> d!958007 t!262721))

(declare-fun b_and!234355 () Bool)

(assert (= b_and!234331 (and (=> t!262721 result!223040) b_and!234355)))

(declare-fun tb!179707 () Bool)

(declare-fun t!262723 () Bool)

(assert (=> (and b!3375759 (= (toValue!7540 (transformation!5356 (rule!7898 separatorToken!241))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262723) tb!179707))

(declare-fun result!223044 () Bool)

(assert (= result!223044 result!223040))

(assert (=> d!958007 t!262723))

(declare-fun b_and!234357 () Bool)

(assert (= b_and!234335 (and (=> t!262723 result!223044) b_and!234357)))

(declare-fun t!262725 () Bool)

(declare-fun tb!179709 () Bool)

(assert (=> (and b!3375746 (= (toValue!7540 (transformation!5356 (h!42205 rules!2135))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262725) tb!179709))

(declare-fun result!223046 () Bool)

(assert (= result!223046 result!223040))

(assert (=> d!958007 t!262725))

(declare-fun b_and!234359 () Bool)

(assert (= b_and!234339 (and (=> t!262725 result!223046) b_and!234359)))

(declare-fun m!3739607 () Bool)

(assert (=> d!958007 m!3739607))

(assert (=> b!3375747 d!958007))

(declare-fun d!958009 () Bool)

(declare-fun lt!1145840 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5061 (List!36907) (InoxSet C!20416))

(assert (=> d!958009 (= lt!1145840 (select (content!5061 (usedCharacters!612 (regex!5356 (rule!7898 separatorToken!241)))) lt!1145728))))

(declare-fun e!2095277 () Bool)

(assert (=> d!958009 (= lt!1145840 e!2095277)))

(declare-fun res!1365298 () Bool)

(assert (=> d!958009 (=> (not res!1365298) (not e!2095277))))

(assert (=> d!958009 (= res!1365298 ((_ is Cons!36783) (usedCharacters!612 (regex!5356 (rule!7898 separatorToken!241)))))))

(assert (=> d!958009 (= (contains!6701 (usedCharacters!612 (regex!5356 (rule!7898 separatorToken!241))) lt!1145728) lt!1145840)))

(declare-fun b!3376005 () Bool)

(declare-fun e!2095276 () Bool)

(assert (=> b!3376005 (= e!2095277 e!2095276)))

(declare-fun res!1365299 () Bool)

(assert (=> b!3376005 (=> res!1365299 e!2095276)))

(assert (=> b!3376005 (= res!1365299 (= (h!42203 (usedCharacters!612 (regex!5356 (rule!7898 separatorToken!241)))) lt!1145728))))

(declare-fun b!3376006 () Bool)

(assert (=> b!3376006 (= e!2095276 (contains!6701 (t!262708 (usedCharacters!612 (regex!5356 (rule!7898 separatorToken!241)))) lt!1145728))))

(assert (= (and d!958009 res!1365298) b!3376005))

(assert (= (and b!3376005 (not res!1365299)) b!3376006))

(assert (=> d!958009 m!3739199))

(declare-fun m!3739609 () Bool)

(assert (=> d!958009 m!3739609))

(declare-fun m!3739611 () Bool)

(assert (=> d!958009 m!3739611))

(declare-fun m!3739613 () Bool)

(assert (=> b!3376006 m!3739613))

(assert (=> b!3375747 d!958009))

(declare-fun b!3376023 () Bool)

(declare-fun e!2095286 () List!36907)

(declare-fun e!2095288 () List!36907)

(assert (=> b!3376023 (= e!2095286 e!2095288)))

(declare-fun c!574966 () Bool)

(assert (=> b!3376023 (= c!574966 ((_ is Union!10115) (regex!5356 (rule!7898 separatorToken!241))))))

(declare-fun b!3376024 () Bool)

(declare-fun call!244334 () List!36907)

(assert (=> b!3376024 (= e!2095288 call!244334)))

(declare-fun b!3376025 () Bool)

(assert (=> b!3376025 (= e!2095288 call!244334)))

(declare-fun call!244332 () List!36907)

(declare-fun bm!244326 () Bool)

(declare-fun call!244333 () List!36907)

(assert (=> bm!244326 (= call!244334 (++!8981 (ite c!574966 call!244333 call!244332) (ite c!574966 call!244332 call!244333)))))

(declare-fun b!3376026 () Bool)

(declare-fun e!2095287 () List!36907)

(declare-fun e!2095289 () List!36907)

(assert (=> b!3376026 (= e!2095287 e!2095289)))

(declare-fun c!574968 () Bool)

(assert (=> b!3376026 (= c!574968 ((_ is ElementMatch!10115) (regex!5356 (rule!7898 separatorToken!241))))))

(declare-fun bm!244327 () Bool)

(declare-fun call!244331 () List!36907)

(assert (=> bm!244327 (= call!244333 call!244331)))

(declare-fun b!3376027 () Bool)

(assert (=> b!3376027 (= e!2095287 Nil!36783)))

(declare-fun bm!244328 () Bool)

(declare-fun c!574967 () Bool)

(assert (=> bm!244328 (= call!244331 (usedCharacters!612 (ite c!574967 (reg!10444 (regex!5356 (rule!7898 separatorToken!241))) (ite c!574966 (regOne!20743 (regex!5356 (rule!7898 separatorToken!241))) (regTwo!20742 (regex!5356 (rule!7898 separatorToken!241)))))))))

(declare-fun d!958011 () Bool)

(declare-fun c!574965 () Bool)

(assert (=> d!958011 (= c!574965 (or ((_ is EmptyExpr!10115) (regex!5356 (rule!7898 separatorToken!241))) ((_ is EmptyLang!10115) (regex!5356 (rule!7898 separatorToken!241)))))))

(assert (=> d!958011 (= (usedCharacters!612 (regex!5356 (rule!7898 separatorToken!241))) e!2095287)))

(declare-fun b!3376028 () Bool)

(assert (=> b!3376028 (= e!2095286 call!244331)))

(declare-fun bm!244329 () Bool)

(assert (=> bm!244329 (= call!244332 (usedCharacters!612 (ite c!574966 (regTwo!20743 (regex!5356 (rule!7898 separatorToken!241))) (regOne!20742 (regex!5356 (rule!7898 separatorToken!241))))))))

(declare-fun b!3376029 () Bool)

(assert (=> b!3376029 (= e!2095289 (Cons!36783 (c!574904 (regex!5356 (rule!7898 separatorToken!241))) Nil!36783))))

(declare-fun b!3376030 () Bool)

(assert (=> b!3376030 (= c!574967 ((_ is Star!10115) (regex!5356 (rule!7898 separatorToken!241))))))

(assert (=> b!3376030 (= e!2095289 e!2095286)))

(assert (= (and d!958011 c!574965) b!3376027))

(assert (= (and d!958011 (not c!574965)) b!3376026))

(assert (= (and b!3376026 c!574968) b!3376029))

(assert (= (and b!3376026 (not c!574968)) b!3376030))

(assert (= (and b!3376030 c!574967) b!3376028))

(assert (= (and b!3376030 (not c!574967)) b!3376023))

(assert (= (and b!3376023 c!574966) b!3376024))

(assert (= (and b!3376023 (not c!574966)) b!3376025))

(assert (= (or b!3376024 b!3376025) bm!244329))

(assert (= (or b!3376024 b!3376025) bm!244327))

(assert (= (or b!3376024 b!3376025) bm!244326))

(assert (= (or b!3376028 bm!244327) bm!244328))

(declare-fun m!3739617 () Bool)

(assert (=> bm!244326 m!3739617))

(declare-fun m!3739619 () Bool)

(assert (=> bm!244328 m!3739619))

(declare-fun m!3739621 () Bool)

(assert (=> bm!244329 m!3739621))

(assert (=> b!3375747 d!958011))

(declare-fun d!958015 () Bool)

(declare-fun lt!1145844 () Bool)

(assert (=> d!958015 (= lt!1145844 (select (content!5061 lt!1145737) lt!1145728))))

(declare-fun e!2095291 () Bool)

(assert (=> d!958015 (= lt!1145844 e!2095291)))

(declare-fun res!1365300 () Bool)

(assert (=> d!958015 (=> (not res!1365300) (not e!2095291))))

(assert (=> d!958015 (= res!1365300 ((_ is Cons!36783) lt!1145737))))

(assert (=> d!958015 (= (contains!6701 lt!1145737 lt!1145728) lt!1145844)))

(declare-fun b!3376031 () Bool)

(declare-fun e!2095290 () Bool)

(assert (=> b!3376031 (= e!2095291 e!2095290)))

(declare-fun res!1365301 () Bool)

(assert (=> b!3376031 (=> res!1365301 e!2095290)))

(assert (=> b!3376031 (= res!1365301 (= (h!42203 lt!1145737) lt!1145728))))

(declare-fun b!3376032 () Bool)

(assert (=> b!3376032 (= e!2095290 (contains!6701 (t!262708 lt!1145737) lt!1145728))))

(assert (= (and d!958015 res!1365300) b!3376031))

(assert (= (and b!3376031 (not res!1365301)) b!3376032))

(declare-fun m!3739623 () Bool)

(assert (=> d!958015 m!3739623))

(declare-fun m!3739625 () Bool)

(assert (=> d!958015 m!3739625))

(declare-fun m!3739627 () Bool)

(assert (=> b!3376032 m!3739627))

(assert (=> b!3375750 d!958015))

(declare-fun d!958017 () Bool)

(declare-fun lt!1145850 () BalanceConc!21788)

(declare-fun list!13296 (BalanceConc!21790) List!36908)

(assert (=> d!958017 (= (list!13293 lt!1145850) (printList!1493 thiss!18206 (list!13296 lt!1145731)))))

(assert (=> d!958017 (= lt!1145850 (printTailRec!1440 thiss!18206 lt!1145731 0 (BalanceConc!21789 Empty!11087)))))

(assert (=> d!958017 (= (print!2010 thiss!18206 lt!1145731) lt!1145850)))

(declare-fun bs!554586 () Bool)

(assert (= bs!554586 d!958017))

(declare-fun m!3739631 () Bool)

(assert (=> bs!554586 m!3739631))

(declare-fun m!3739633 () Bool)

(assert (=> bs!554586 m!3739633))

(assert (=> bs!554586 m!3739633))

(declare-fun m!3739637 () Bool)

(assert (=> bs!554586 m!3739637))

(assert (=> bs!554586 m!3739259))

(assert (=> b!3375749 d!958017))

(declare-fun d!958021 () Bool)

(declare-fun lt!1145878 () BalanceConc!21788)

(declare-fun printListTailRec!638 (LexerInterface!4945 List!36908 List!36907) List!36907)

(declare-fun dropList!1155 (BalanceConc!21790 Int) List!36908)

(assert (=> d!958021 (= (list!13293 lt!1145878) (printListTailRec!638 thiss!18206 (dropList!1155 lt!1145731 0) (list!13293 (BalanceConc!21789 Empty!11087))))))

(declare-fun e!2095310 () BalanceConc!21788)

(assert (=> d!958021 (= lt!1145878 e!2095310)))

(declare-fun c!574977 () Bool)

(declare-fun size!27843 (BalanceConc!21790) Int)

(assert (=> d!958021 (= c!574977 (>= 0 (size!27843 lt!1145731)))))

(declare-fun e!2095311 () Bool)

(assert (=> d!958021 e!2095311))

(declare-fun res!1365312 () Bool)

(assert (=> d!958021 (=> (not res!1365312) (not e!2095311))))

(assert (=> d!958021 (= res!1365312 (>= 0 0))))

(assert (=> d!958021 (= (printTailRec!1440 thiss!18206 lt!1145731 0 (BalanceConc!21789 Empty!11087)) lt!1145878)))

(declare-fun b!3376059 () Bool)

(assert (=> b!3376059 (= e!2095311 (<= 0 (size!27843 lt!1145731)))))

(declare-fun b!3376060 () Bool)

(assert (=> b!3376060 (= e!2095310 (BalanceConc!21789 Empty!11087))))

(declare-fun b!3376061 () Bool)

(declare-fun ++!8983 (BalanceConc!21788 BalanceConc!21788) BalanceConc!21788)

(declare-fun apply!8538 (BalanceConc!21790 Int) Token!10078)

(assert (=> b!3376061 (= e!2095310 (printTailRec!1440 thiss!18206 lt!1145731 (+ 0 1) (++!8983 (BalanceConc!21789 Empty!11087) (charsOf!3370 (apply!8538 lt!1145731 0)))))))

(declare-fun lt!1145880 () List!36908)

(assert (=> b!3376061 (= lt!1145880 (list!13296 lt!1145731))))

(declare-fun lt!1145882 () Unit!51888)

(declare-fun lemmaDropApply!1113 (List!36908 Int) Unit!51888)

(assert (=> b!3376061 (= lt!1145882 (lemmaDropApply!1113 lt!1145880 0))))

(declare-fun head!7199 (List!36908) Token!10078)

(declare-fun drop!1953 (List!36908 Int) List!36908)

(declare-fun apply!8539 (List!36908 Int) Token!10078)

(assert (=> b!3376061 (= (head!7199 (drop!1953 lt!1145880 0)) (apply!8539 lt!1145880 0))))

(declare-fun lt!1145879 () Unit!51888)

(assert (=> b!3376061 (= lt!1145879 lt!1145882)))

(declare-fun lt!1145883 () List!36908)

(assert (=> b!3376061 (= lt!1145883 (list!13296 lt!1145731))))

(declare-fun lt!1145881 () Unit!51888)

(declare-fun lemmaDropTail!997 (List!36908 Int) Unit!51888)

(assert (=> b!3376061 (= lt!1145881 (lemmaDropTail!997 lt!1145883 0))))

(declare-fun tail!5337 (List!36908) List!36908)

(assert (=> b!3376061 (= (tail!5337 (drop!1953 lt!1145883 0)) (drop!1953 lt!1145883 (+ 0 1)))))

(declare-fun lt!1145884 () Unit!51888)

(assert (=> b!3376061 (= lt!1145884 lt!1145881)))

(assert (= (and d!958021 res!1365312) b!3376059))

(assert (= (and d!958021 c!574977) b!3376060))

(assert (= (and d!958021 (not c!574977)) b!3376061))

(declare-fun m!3739659 () Bool)

(assert (=> d!958021 m!3739659))

(declare-fun m!3739661 () Bool)

(assert (=> d!958021 m!3739661))

(declare-fun m!3739663 () Bool)

(assert (=> d!958021 m!3739663))

(declare-fun m!3739665 () Bool)

(assert (=> d!958021 m!3739665))

(assert (=> d!958021 m!3739661))

(assert (=> d!958021 m!3739659))

(declare-fun m!3739667 () Bool)

(assert (=> d!958021 m!3739667))

(assert (=> b!3376059 m!3739663))

(declare-fun m!3739669 () Bool)

(assert (=> b!3376061 m!3739669))

(declare-fun m!3739671 () Bool)

(assert (=> b!3376061 m!3739671))

(declare-fun m!3739673 () Bool)

(assert (=> b!3376061 m!3739673))

(declare-fun m!3739675 () Bool)

(assert (=> b!3376061 m!3739675))

(declare-fun m!3739677 () Bool)

(assert (=> b!3376061 m!3739677))

(declare-fun m!3739679 () Bool)

(assert (=> b!3376061 m!3739679))

(declare-fun m!3739681 () Bool)

(assert (=> b!3376061 m!3739681))

(assert (=> b!3376061 m!3739671))

(declare-fun m!3739683 () Bool)

(assert (=> b!3376061 m!3739683))

(declare-fun m!3739685 () Bool)

(assert (=> b!3376061 m!3739685))

(declare-fun m!3739687 () Bool)

(assert (=> b!3376061 m!3739687))

(assert (=> b!3376061 m!3739681))

(declare-fun m!3739689 () Bool)

(assert (=> b!3376061 m!3739689))

(assert (=> b!3376061 m!3739633))

(assert (=> b!3376061 m!3739685))

(declare-fun m!3739691 () Bool)

(assert (=> b!3376061 m!3739691))

(assert (=> b!3376061 m!3739689))

(assert (=> b!3376061 m!3739673))

(assert (=> b!3375749 d!958021))

(declare-fun d!958029 () Bool)

(declare-fun list!13297 (Conc!11087) List!36907)

(assert (=> d!958029 (= (list!13293 lt!1145727) (list!13297 (c!574905 lt!1145727)))))

(declare-fun bs!554588 () Bool)

(assert (= bs!554588 d!958029))

(declare-fun m!3739693 () Bool)

(assert (=> bs!554588 m!3739693))

(assert (=> b!3375749 d!958029))

(declare-fun d!958031 () Bool)

(declare-fun e!2095314 () Bool)

(assert (=> d!958031 e!2095314))

(declare-fun res!1365315 () Bool)

(assert (=> d!958031 (=> (not res!1365315) (not e!2095314))))

(declare-fun lt!1145887 () BalanceConc!21790)

(assert (=> d!958031 (= res!1365315 (= (list!13296 lt!1145887) (Cons!36784 (h!42204 tokens!494) Nil!36784)))))

(declare-fun singleton!1070 (Token!10078) BalanceConc!21790)

(assert (=> d!958031 (= lt!1145887 (singleton!1070 (h!42204 tokens!494)))))

(assert (=> d!958031 (= (singletonSeq!2452 (h!42204 tokens!494)) lt!1145887)))

(declare-fun b!3376064 () Bool)

(declare-fun isBalanced!3343 (Conc!11088) Bool)

(assert (=> b!3376064 (= e!2095314 (isBalanced!3343 (c!574906 lt!1145887)))))

(assert (= (and d!958031 res!1365315) b!3376064))

(declare-fun m!3739695 () Bool)

(assert (=> d!958031 m!3739695))

(declare-fun m!3739697 () Bool)

(assert (=> d!958031 m!3739697))

(declare-fun m!3739699 () Bool)

(assert (=> b!3376064 m!3739699))

(assert (=> b!3375749 d!958031))

(declare-fun d!958033 () Bool)

(declare-fun c!574980 () Bool)

(assert (=> d!958033 (= c!574980 ((_ is Cons!36784) (Cons!36784 (h!42204 tokens!494) Nil!36784)))))

(declare-fun e!2095317 () List!36907)

(assert (=> d!958033 (= (printList!1493 thiss!18206 (Cons!36784 (h!42204 tokens!494) Nil!36784)) e!2095317)))

(declare-fun b!3376069 () Bool)

(assert (=> b!3376069 (= e!2095317 (++!8981 (list!13293 (charsOf!3370 (h!42204 (Cons!36784 (h!42204 tokens!494) Nil!36784)))) (printList!1493 thiss!18206 (t!262709 (Cons!36784 (h!42204 tokens!494) Nil!36784)))))))

(declare-fun b!3376070 () Bool)

(assert (=> b!3376070 (= e!2095317 Nil!36783)))

(assert (= (and d!958033 c!574980) b!3376069))

(assert (= (and d!958033 (not c!574980)) b!3376070))

(declare-fun m!3739701 () Bool)

(assert (=> b!3376069 m!3739701))

(assert (=> b!3376069 m!3739701))

(declare-fun m!3739703 () Bool)

(assert (=> b!3376069 m!3739703))

(declare-fun m!3739705 () Bool)

(assert (=> b!3376069 m!3739705))

(assert (=> b!3376069 m!3739703))

(assert (=> b!3376069 m!3739705))

(declare-fun m!3739707 () Bool)

(assert (=> b!3376069 m!3739707))

(assert (=> b!3375749 d!958033))

(declare-fun d!958035 () Bool)

(assert (=> d!958035 (= (list!13293 (charsOf!3370 (h!42204 tokens!494))) (list!13297 (c!574905 (charsOf!3370 (h!42204 tokens!494)))))))

(declare-fun bs!554589 () Bool)

(assert (= bs!554589 d!958035))

(declare-fun m!3739709 () Bool)

(assert (=> bs!554589 m!3739709))

(assert (=> b!3375751 d!958035))

(declare-fun d!958037 () Bool)

(declare-fun lt!1145890 () BalanceConc!21788)

(assert (=> d!958037 (= (list!13293 lt!1145890) (originalCharacters!6070 (h!42204 tokens!494)))))

(declare-fun dynLambda!15275 (Int TokenValue!5586) BalanceConc!21788)

(assert (=> d!958037 (= lt!1145890 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (value!173106 (h!42204 tokens!494))))))

(assert (=> d!958037 (= (charsOf!3370 (h!42204 tokens!494)) lt!1145890)))

(declare-fun b_lambda!95705 () Bool)

(assert (=> (not b_lambda!95705) (not d!958037)))

(declare-fun t!262729 () Bool)

(declare-fun tb!179711 () Bool)

(assert (=> (and b!3375748 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262729) tb!179711))

(declare-fun b!3376075 () Bool)

(declare-fun e!2095320 () Bool)

(declare-fun tp!1055806 () Bool)

(declare-fun inv!49856 (Conc!11087) Bool)

(assert (=> b!3376075 (= e!2095320 (and (inv!49856 (c!574905 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (value!173106 (h!42204 tokens!494))))) tp!1055806))))

(declare-fun result!223048 () Bool)

(declare-fun inv!49857 (BalanceConc!21788) Bool)

(assert (=> tb!179711 (= result!223048 (and (inv!49857 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (value!173106 (h!42204 tokens!494)))) e!2095320))))

(assert (= tb!179711 b!3376075))

(declare-fun m!3739711 () Bool)

(assert (=> b!3376075 m!3739711))

(declare-fun m!3739713 () Bool)

(assert (=> tb!179711 m!3739713))

(assert (=> d!958037 t!262729))

(declare-fun b_and!234361 () Bool)

(assert (= b_and!234333 (and (=> t!262729 result!223048) b_and!234361)))

(declare-fun t!262731 () Bool)

(declare-fun tb!179713 () Bool)

(assert (=> (and b!3375759 (= (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262731) tb!179713))

(declare-fun result!223052 () Bool)

(assert (= result!223052 result!223048))

(assert (=> d!958037 t!262731))

(declare-fun b_and!234363 () Bool)

(assert (= b_and!234337 (and (=> t!262731 result!223052) b_and!234363)))

(declare-fun t!262733 () Bool)

(declare-fun tb!179715 () Bool)

(assert (=> (and b!3375746 (= (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262733) tb!179715))

(declare-fun result!223054 () Bool)

(assert (= result!223054 result!223048))

(assert (=> d!958037 t!262733))

(declare-fun b_and!234365 () Bool)

(assert (= b_and!234341 (and (=> t!262733 result!223054) b_and!234365)))

(declare-fun m!3739715 () Bool)

(assert (=> d!958037 m!3739715))

(declare-fun m!3739717 () Bool)

(assert (=> d!958037 m!3739717))

(assert (=> b!3375751 d!958037))

(declare-fun bs!554592 () Bool)

(declare-fun d!958039 () Bool)

(assert (= bs!554592 (and d!958039 b!3375755)))

(declare-fun lambda!120350 () Int)

(assert (=> bs!554592 (not (= lambda!120350 lambda!120345))))

(declare-fun b!3376168 () Bool)

(declare-fun e!2095373 () Bool)

(assert (=> b!3376168 (= e!2095373 true)))

(declare-fun b!3376167 () Bool)

(declare-fun e!2095372 () Bool)

(assert (=> b!3376167 (= e!2095372 e!2095373)))

(declare-fun b!3376166 () Bool)

(declare-fun e!2095371 () Bool)

(assert (=> b!3376166 (= e!2095371 e!2095372)))

(assert (=> d!958039 e!2095371))

(assert (= b!3376167 b!3376168))

(assert (= b!3376166 b!3376167))

(assert (= (and d!958039 ((_ is Cons!36785) rules!2135)) b!3376166))

(declare-fun order!19349 () Int)

(declare-fun order!19347 () Int)

(declare-fun dynLambda!15276 (Int Int) Int)

(declare-fun dynLambda!15277 (Int Int) Int)

(assert (=> b!3376168 (< (dynLambda!15276 order!19347 (toValue!7540 (transformation!5356 (h!42205 rules!2135)))) (dynLambda!15277 order!19349 lambda!120350))))

(declare-fun order!19351 () Int)

(declare-fun dynLambda!15278 (Int Int) Int)

(assert (=> b!3376168 (< (dynLambda!15278 order!19351 (toChars!7399 (transformation!5356 (h!42205 rules!2135)))) (dynLambda!15277 order!19349 lambda!120350))))

(assert (=> d!958039 true))

(declare-fun e!2095364 () Bool)

(assert (=> d!958039 e!2095364))

(declare-fun res!1365349 () Bool)

(assert (=> d!958039 (=> (not res!1365349) (not e!2095364))))

(declare-fun lt!1145923 () Bool)

(assert (=> d!958039 (= res!1365349 (= lt!1145923 (forall!7729 (list!13296 lt!1145740) lambda!120350)))))

(declare-fun forall!7731 (BalanceConc!21790 Int) Bool)

(assert (=> d!958039 (= lt!1145923 (forall!7731 lt!1145740 lambda!120350))))

(assert (=> d!958039 (not (isEmpty!20999 rules!2135))))

(assert (=> d!958039 (= (rulesProduceEachTokenIndividually!1396 thiss!18206 rules!2135 lt!1145740) lt!1145923)))

(declare-fun b!3376157 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1805 (LexerInterface!4945 List!36909 List!36908) Bool)

(assert (=> b!3376157 (= e!2095364 (= lt!1145923 (rulesProduceEachTokenIndividuallyList!1805 thiss!18206 rules!2135 (list!13296 lt!1145740))))))

(assert (= (and d!958039 res!1365349) b!3376157))

(declare-fun m!3739807 () Bool)

(assert (=> d!958039 m!3739807))

(assert (=> d!958039 m!3739807))

(declare-fun m!3739809 () Bool)

(assert (=> d!958039 m!3739809))

(declare-fun m!3739811 () Bool)

(assert (=> d!958039 m!3739811))

(assert (=> d!958039 m!3739297))

(assert (=> b!3376157 m!3739807))

(assert (=> b!3376157 m!3739807))

(declare-fun m!3739813 () Bool)

(assert (=> b!3376157 m!3739813))

(assert (=> b!3375752 d!958039))

(declare-fun d!958063 () Bool)

(declare-fun fromListB!1682 (List!36908) BalanceConc!21790)

(assert (=> d!958063 (= (seqFromList!3765 tokens!494) (fromListB!1682 tokens!494))))

(declare-fun bs!554593 () Bool)

(assert (= bs!554593 d!958063))

(declare-fun m!3739815 () Bool)

(assert (=> bs!554593 m!3739815))

(assert (=> b!3375752 d!958063))

(declare-fun lt!1145926 () Bool)

(declare-fun d!958065 () Bool)

(declare-fun isEmpty!21009 (List!36908) Bool)

(assert (=> d!958065 (= lt!1145926 (isEmpty!21009 (list!13296 (_1!21305 (lex!2271 thiss!18206 rules!2135 lt!1145732)))))))

(declare-fun isEmpty!21010 (Conc!11088) Bool)

(assert (=> d!958065 (= lt!1145926 (isEmpty!21010 (c!574906 (_1!21305 (lex!2271 thiss!18206 rules!2135 lt!1145732)))))))

(assert (=> d!958065 (= (isEmpty!21001 (_1!21305 (lex!2271 thiss!18206 rules!2135 lt!1145732))) lt!1145926)))

(declare-fun bs!554594 () Bool)

(assert (= bs!554594 d!958065))

(declare-fun m!3739817 () Bool)

(assert (=> bs!554594 m!3739817))

(assert (=> bs!554594 m!3739817))

(declare-fun m!3739819 () Bool)

(assert (=> bs!554594 m!3739819))

(declare-fun m!3739821 () Bool)

(assert (=> bs!554594 m!3739821))

(assert (=> b!3375754 d!958065))

(declare-fun b!3376233 () Bool)

(declare-fun e!2095423 () Bool)

(declare-fun lt!1145930 () tuple2!36342)

(assert (=> b!3376233 (= e!2095423 (= (_2!21305 lt!1145930) lt!1145732))))

(declare-fun d!958067 () Bool)

(declare-fun e!2095424 () Bool)

(assert (=> d!958067 e!2095424))

(declare-fun res!1365384 () Bool)

(assert (=> d!958067 (=> (not res!1365384) (not e!2095424))))

(assert (=> d!958067 (= res!1365384 e!2095423)))

(declare-fun c!575012 () Bool)

(assert (=> d!958067 (= c!575012 (> (size!27843 (_1!21305 lt!1145930)) 0))))

(declare-fun lexTailRecV2!1006 (LexerInterface!4945 List!36909 BalanceConc!21788 BalanceConc!21788 BalanceConc!21788 BalanceConc!21790) tuple2!36342)

(assert (=> d!958067 (= lt!1145930 (lexTailRecV2!1006 thiss!18206 rules!2135 lt!1145732 (BalanceConc!21789 Empty!11087) lt!1145732 (BalanceConc!21791 Empty!11088)))))

(assert (=> d!958067 (= (lex!2271 thiss!18206 rules!2135 lt!1145732) lt!1145930)))

(declare-fun b!3376234 () Bool)

(declare-fun res!1365385 () Bool)

(assert (=> b!3376234 (=> (not res!1365385) (not e!2095424))))

(declare-datatypes ((tuple2!36350 0))(
  ( (tuple2!36351 (_1!21309 List!36908) (_2!21309 List!36907)) )
))
(declare-fun lexList!1396 (LexerInterface!4945 List!36909 List!36907) tuple2!36350)

(assert (=> b!3376234 (= res!1365385 (= (list!13296 (_1!21305 lt!1145930)) (_1!21309 (lexList!1396 thiss!18206 rules!2135 (list!13293 lt!1145732)))))))

(declare-fun b!3376235 () Bool)

(assert (=> b!3376235 (= e!2095424 (= (list!13293 (_2!21305 lt!1145930)) (_2!21309 (lexList!1396 thiss!18206 rules!2135 (list!13293 lt!1145732)))))))

(declare-fun b!3376236 () Bool)

(declare-fun e!2095422 () Bool)

(assert (=> b!3376236 (= e!2095423 e!2095422)))

(declare-fun res!1365383 () Bool)

(assert (=> b!3376236 (= res!1365383 (< (size!27842 (_2!21305 lt!1145930)) (size!27842 lt!1145732)))))

(assert (=> b!3376236 (=> (not res!1365383) (not e!2095422))))

(declare-fun b!3376237 () Bool)

(assert (=> b!3376237 (= e!2095422 (not (isEmpty!21001 (_1!21305 lt!1145930))))))

(assert (= (and d!958067 c!575012) b!3376236))

(assert (= (and d!958067 (not c!575012)) b!3376233))

(assert (= (and b!3376236 res!1365383) b!3376237))

(assert (= (and d!958067 res!1365384) b!3376234))

(assert (= (and b!3376234 res!1365385) b!3376235))

(declare-fun m!3739847 () Bool)

(assert (=> b!3376237 m!3739847))

(declare-fun m!3739849 () Bool)

(assert (=> b!3376236 m!3739849))

(declare-fun m!3739851 () Bool)

(assert (=> b!3376236 m!3739851))

(declare-fun m!3739853 () Bool)

(assert (=> b!3376235 m!3739853))

(declare-fun m!3739855 () Bool)

(assert (=> b!3376235 m!3739855))

(assert (=> b!3376235 m!3739855))

(declare-fun m!3739857 () Bool)

(assert (=> b!3376235 m!3739857))

(declare-fun m!3739859 () Bool)

(assert (=> d!958067 m!3739859))

(declare-fun m!3739861 () Bool)

(assert (=> d!958067 m!3739861))

(declare-fun m!3739863 () Bool)

(assert (=> b!3376234 m!3739863))

(assert (=> b!3376234 m!3739855))

(assert (=> b!3376234 m!3739855))

(assert (=> b!3376234 m!3739857))

(assert (=> b!3375754 d!958067))

(declare-fun d!958081 () Bool)

(declare-fun fromListB!1683 (List!36907) BalanceConc!21788)

(assert (=> d!958081 (= (seqFromList!3766 lt!1145729) (fromListB!1683 lt!1145729))))

(declare-fun bs!554597 () Bool)

(assert (= bs!554597 d!958081))

(declare-fun m!3739871 () Bool)

(assert (=> bs!554597 m!3739871))

(assert (=> b!3375754 d!958081))

(declare-fun d!958085 () Bool)

(assert (=> d!958085 (= (list!13293 lt!1145725) (list!13297 (c!574905 lt!1145725)))))

(declare-fun bs!554598 () Bool)

(assert (= bs!554598 d!958085))

(declare-fun m!3739873 () Bool)

(assert (=> bs!554598 m!3739873))

(assert (=> b!3375753 d!958085))

(declare-fun d!958087 () Bool)

(declare-fun lt!1145939 () BalanceConc!21788)

(declare-fun printWithSeparatorTokenList!246 (LexerInterface!4945 List!36908 Token!10078) List!36907)

(assert (=> d!958087 (= (list!13293 lt!1145939) (printWithSeparatorTokenList!246 thiss!18206 (list!13296 lt!1145740) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!62 (LexerInterface!4945 BalanceConc!21790 Token!10078 Int BalanceConc!21788) BalanceConc!21788)

(assert (=> d!958087 (= lt!1145939 (printWithSeparatorTokenTailRec!62 thiss!18206 lt!1145740 separatorToken!241 0 (BalanceConc!21789 Empty!11087)))))

(assert (=> d!958087 (isSeparator!5356 (rule!7898 separatorToken!241))))

(assert (=> d!958087 (= (printWithSeparatorToken!136 thiss!18206 lt!1145740 separatorToken!241) lt!1145939)))

(declare-fun bs!554600 () Bool)

(assert (= bs!554600 d!958087))

(declare-fun m!3739881 () Bool)

(assert (=> bs!554600 m!3739881))

(assert (=> bs!554600 m!3739807))

(assert (=> bs!554600 m!3739807))

(declare-fun m!3739883 () Bool)

(assert (=> bs!554600 m!3739883))

(declare-fun m!3739885 () Bool)

(assert (=> bs!554600 m!3739885))

(assert (=> b!3375753 d!958087))

(declare-fun d!958091 () Bool)

(declare-fun e!2095438 () Bool)

(assert (=> d!958091 e!2095438))

(declare-fun res!1365398 () Bool)

(assert (=> d!958091 (=> (not res!1365398) (not e!2095438))))

(declare-fun lt!1145946 () List!36907)

(assert (=> d!958091 (= res!1365398 (= (content!5061 lt!1145946) ((_ map or) (content!5061 lt!1145729) (content!5061 lt!1145737))))))

(declare-fun e!2095437 () List!36907)

(assert (=> d!958091 (= lt!1145946 e!2095437)))

(declare-fun c!575018 () Bool)

(assert (=> d!958091 (= c!575018 ((_ is Nil!36783) lt!1145729))))

(assert (=> d!958091 (= (++!8981 lt!1145729 lt!1145737) lt!1145946)))

(declare-fun b!3376261 () Bool)

(assert (=> b!3376261 (= e!2095437 (Cons!36783 (h!42203 lt!1145729) (++!8981 (t!262708 lt!1145729) lt!1145737)))))

(declare-fun b!3376260 () Bool)

(assert (=> b!3376260 (= e!2095437 lt!1145737)))

(declare-fun b!3376262 () Bool)

(declare-fun res!1365397 () Bool)

(assert (=> b!3376262 (=> (not res!1365397) (not e!2095438))))

(assert (=> b!3376262 (= res!1365397 (= (size!27839 lt!1145946) (+ (size!27839 lt!1145729) (size!27839 lt!1145737))))))

(declare-fun b!3376263 () Bool)

(assert (=> b!3376263 (= e!2095438 (or (not (= lt!1145737 Nil!36783)) (= lt!1145946 lt!1145729)))))

(assert (= (and d!958091 c!575018) b!3376260))

(assert (= (and d!958091 (not c!575018)) b!3376261))

(assert (= (and d!958091 res!1365398) b!3376262))

(assert (= (and b!3376262 res!1365397) b!3376263))

(declare-fun m!3739909 () Bool)

(assert (=> d!958091 m!3739909))

(declare-fun m!3739911 () Bool)

(assert (=> d!958091 m!3739911))

(assert (=> d!958091 m!3739623))

(declare-fun m!3739913 () Bool)

(assert (=> b!3376261 m!3739913))

(declare-fun m!3739915 () Bool)

(assert (=> b!3376262 m!3739915))

(assert (=> b!3376262 m!3739223))

(declare-fun m!3739917 () Bool)

(assert (=> b!3376262 m!3739917))

(assert (=> b!3375753 d!958091))

(declare-fun d!958101 () Bool)

(declare-fun lt!1145947 () BalanceConc!21788)

(assert (=> d!958101 (= (list!13293 lt!1145947) (originalCharacters!6070 separatorToken!241))))

(assert (=> d!958101 (= lt!1145947 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (value!173106 separatorToken!241)))))

(assert (=> d!958101 (= (charsOf!3370 separatorToken!241) lt!1145947)))

(declare-fun b_lambda!95715 () Bool)

(assert (=> (not b_lambda!95715) (not d!958101)))

(declare-fun t!262755 () Bool)

(declare-fun tb!179729 () Bool)

(assert (=> (and b!3375748 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241)))) t!262755) tb!179729))

(declare-fun b!3376266 () Bool)

(declare-fun e!2095440 () Bool)

(declare-fun tp!1055808 () Bool)

(assert (=> b!3376266 (= e!2095440 (and (inv!49856 (c!574905 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (value!173106 separatorToken!241)))) tp!1055808))))

(declare-fun result!223070 () Bool)

(assert (=> tb!179729 (= result!223070 (and (inv!49857 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (value!173106 separatorToken!241))) e!2095440))))

(assert (= tb!179729 b!3376266))

(declare-fun m!3739925 () Bool)

(assert (=> b!3376266 m!3739925))

(declare-fun m!3739927 () Bool)

(assert (=> tb!179729 m!3739927))

(assert (=> d!958101 t!262755))

(declare-fun b_and!234385 () Bool)

(assert (= b_and!234361 (and (=> t!262755 result!223070) b_and!234385)))

(declare-fun t!262757 () Bool)

(declare-fun tb!179731 () Bool)

(assert (=> (and b!3375759 (= (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241)))) t!262757) tb!179731))

(declare-fun result!223072 () Bool)

(assert (= result!223072 result!223070))

(assert (=> d!958101 t!262757))

(declare-fun b_and!234387 () Bool)

(assert (= b_and!234363 (and (=> t!262757 result!223072) b_and!234387)))

(declare-fun tb!179733 () Bool)

(declare-fun t!262759 () Bool)

(assert (=> (and b!3375746 (= (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241)))) t!262759) tb!179733))

(declare-fun result!223074 () Bool)

(assert (= result!223074 result!223070))

(assert (=> d!958101 t!262759))

(declare-fun b_and!234389 () Bool)

(assert (= b_and!234365 (and (=> t!262759 result!223074) b_and!234389)))

(declare-fun m!3739933 () Bool)

(assert (=> d!958101 m!3739933))

(declare-fun m!3739935 () Bool)

(assert (=> d!958101 m!3739935))

(assert (=> b!3375753 d!958101))

(declare-fun d!958109 () Bool)

(assert (=> d!958109 (= (list!13293 (charsOf!3370 separatorToken!241)) (list!13297 (c!574905 (charsOf!3370 separatorToken!241))))))

(declare-fun bs!554603 () Bool)

(assert (= bs!554603 d!958109))

(declare-fun m!3739937 () Bool)

(assert (=> bs!554603 m!3739937))

(assert (=> b!3375753 d!958109))

(declare-fun bm!244353 () Bool)

(declare-fun call!244358 () Bool)

(assert (=> bm!244353 (= call!244358 (isEmpty!21000 lt!1145737))))

(declare-fun b!3376355 () Bool)

(declare-fun e!2095502 () Bool)

(declare-fun derivativeStep!2995 (Regex!10115 C!20416) Regex!10115)

(assert (=> b!3376355 (= e!2095502 (matchR!4707 (derivativeStep!2995 (regex!5356 lt!1145722) (head!7197 lt!1145737)) (tail!5336 lt!1145737)))))

(declare-fun b!3376356 () Bool)

(declare-fun e!2095505 () Bool)

(assert (=> b!3376356 (= e!2095505 (= (head!7197 lt!1145737) (c!574904 (regex!5356 lt!1145722))))))

(declare-fun b!3376358 () Bool)

(declare-fun e!2095508 () Bool)

(declare-fun e!2095503 () Bool)

(assert (=> b!3376358 (= e!2095508 e!2095503)))

(declare-fun c!575029 () Bool)

(assert (=> b!3376358 (= c!575029 ((_ is EmptyLang!10115) (regex!5356 lt!1145722)))))

(declare-fun b!3376359 () Bool)

(declare-fun e!2095504 () Bool)

(declare-fun e!2095507 () Bool)

(assert (=> b!3376359 (= e!2095504 e!2095507)))

(declare-fun res!1365429 () Bool)

(assert (=> b!3376359 (=> res!1365429 e!2095507)))

(assert (=> b!3376359 (= res!1365429 call!244358)))

(declare-fun b!3376360 () Bool)

(declare-fun nullable!3442 (Regex!10115) Bool)

(assert (=> b!3376360 (= e!2095502 (nullable!3442 (regex!5356 lt!1145722)))))

(declare-fun b!3376361 () Bool)

(declare-fun res!1365425 () Bool)

(declare-fun e!2095506 () Bool)

(assert (=> b!3376361 (=> res!1365425 e!2095506)))

(assert (=> b!3376361 (= res!1365425 (not ((_ is ElementMatch!10115) (regex!5356 lt!1145722))))))

(assert (=> b!3376361 (= e!2095503 e!2095506)))

(declare-fun b!3376362 () Bool)

(declare-fun res!1365432 () Bool)

(assert (=> b!3376362 (=> res!1365432 e!2095506)))

(assert (=> b!3376362 (= res!1365432 e!2095505)))

(declare-fun res!1365431 () Bool)

(assert (=> b!3376362 (=> (not res!1365431) (not e!2095505))))

(declare-fun lt!1145950 () Bool)

(assert (=> b!3376362 (= res!1365431 lt!1145950)))

(declare-fun b!3376363 () Bool)

(assert (=> b!3376363 (= e!2095503 (not lt!1145950))))

(declare-fun b!3376364 () Bool)

(assert (=> b!3376364 (= e!2095506 e!2095504)))

(declare-fun res!1365430 () Bool)

(assert (=> b!3376364 (=> (not res!1365430) (not e!2095504))))

(assert (=> b!3376364 (= res!1365430 (not lt!1145950))))

(declare-fun b!3376365 () Bool)

(assert (=> b!3376365 (= e!2095507 (not (= (head!7197 lt!1145737) (c!574904 (regex!5356 lt!1145722)))))))

(declare-fun b!3376366 () Bool)

(assert (=> b!3376366 (= e!2095508 (= lt!1145950 call!244358))))

(declare-fun b!3376357 () Bool)

(declare-fun res!1365428 () Bool)

(assert (=> b!3376357 (=> res!1365428 e!2095507)))

(assert (=> b!3376357 (= res!1365428 (not (isEmpty!21000 (tail!5336 lt!1145737))))))

(declare-fun d!958111 () Bool)

(assert (=> d!958111 e!2095508))

(declare-fun c!575027 () Bool)

(assert (=> d!958111 (= c!575027 ((_ is EmptyExpr!10115) (regex!5356 lt!1145722)))))

(assert (=> d!958111 (= lt!1145950 e!2095502)))

(declare-fun c!575028 () Bool)

(assert (=> d!958111 (= c!575028 (isEmpty!21000 lt!1145737))))

(assert (=> d!958111 (validRegex!4598 (regex!5356 lt!1145722))))

(assert (=> d!958111 (= (matchR!4707 (regex!5356 lt!1145722) lt!1145737) lt!1145950)))

(declare-fun b!3376367 () Bool)

(declare-fun res!1365427 () Bool)

(assert (=> b!3376367 (=> (not res!1365427) (not e!2095505))))

(assert (=> b!3376367 (= res!1365427 (not call!244358))))

(declare-fun b!3376368 () Bool)

(declare-fun res!1365426 () Bool)

(assert (=> b!3376368 (=> (not res!1365426) (not e!2095505))))

(assert (=> b!3376368 (= res!1365426 (isEmpty!21000 (tail!5336 lt!1145737)))))

(assert (= (and d!958111 c!575028) b!3376360))

(assert (= (and d!958111 (not c!575028)) b!3376355))

(assert (= (and d!958111 c!575027) b!3376366))

(assert (= (and d!958111 (not c!575027)) b!3376358))

(assert (= (and b!3376358 c!575029) b!3376363))

(assert (= (and b!3376358 (not c!575029)) b!3376361))

(assert (= (and b!3376361 (not res!1365425)) b!3376362))

(assert (= (and b!3376362 res!1365431) b!3376367))

(assert (= (and b!3376367 res!1365427) b!3376368))

(assert (= (and b!3376368 res!1365426) b!3376356))

(assert (= (and b!3376362 (not res!1365432)) b!3376364))

(assert (= (and b!3376364 res!1365430) b!3376359))

(assert (= (and b!3376359 (not res!1365429)) b!3376357))

(assert (= (and b!3376357 (not res!1365428)) b!3376365))

(assert (= (or b!3376366 b!3376359 b!3376367) bm!244353))

(declare-fun m!3739959 () Bool)

(assert (=> b!3376368 m!3739959))

(assert (=> b!3376368 m!3739959))

(declare-fun m!3739961 () Bool)

(assert (=> b!3376368 m!3739961))

(declare-fun m!3739963 () Bool)

(assert (=> b!3376360 m!3739963))

(declare-fun m!3739965 () Bool)

(assert (=> d!958111 m!3739965))

(declare-fun m!3739967 () Bool)

(assert (=> d!958111 m!3739967))

(assert (=> b!3376356 m!3739231))

(assert (=> b!3376355 m!3739231))

(assert (=> b!3376355 m!3739231))

(declare-fun m!3739969 () Bool)

(assert (=> b!3376355 m!3739969))

(assert (=> b!3376355 m!3739959))

(assert (=> b!3376355 m!3739969))

(assert (=> b!3376355 m!3739959))

(declare-fun m!3739971 () Bool)

(assert (=> b!3376355 m!3739971))

(assert (=> b!3376357 m!3739959))

(assert (=> b!3376357 m!3739959))

(assert (=> b!3376357 m!3739961))

(assert (=> bm!244353 m!3739965))

(assert (=> b!3376365 m!3739231))

(assert (=> b!3375734 d!958111))

(declare-fun d!958117 () Bool)

(assert (=> d!958117 (= (get!11731 lt!1145734) (v!36398 lt!1145734))))

(assert (=> b!3375734 d!958117))

(declare-fun d!958119 () Bool)

(declare-fun res!1365437 () Bool)

(declare-fun e!2095515 () Bool)

(assert (=> d!958119 (=> res!1365437 e!2095515)))

(assert (=> d!958119 (= res!1365437 ((_ is Nil!36784) tokens!494))))

(assert (=> d!958119 (= (forall!7729 tokens!494 lambda!120345) e!2095515)))

(declare-fun b!3376378 () Bool)

(declare-fun e!2095516 () Bool)

(assert (=> b!3376378 (= e!2095515 e!2095516)))

(declare-fun res!1365438 () Bool)

(assert (=> b!3376378 (=> (not res!1365438) (not e!2095516))))

(declare-fun dynLambda!15280 (Int Token!10078) Bool)

(assert (=> b!3376378 (= res!1365438 (dynLambda!15280 lambda!120345 (h!42204 tokens!494)))))

(declare-fun b!3376379 () Bool)

(assert (=> b!3376379 (= e!2095516 (forall!7729 (t!262709 tokens!494) lambda!120345))))

(assert (= (and d!958119 (not res!1365437)) b!3376378))

(assert (= (and b!3376378 res!1365438) b!3376379))

(declare-fun b_lambda!95733 () Bool)

(assert (=> (not b_lambda!95733) (not b!3376378)))

(declare-fun m!3739973 () Bool)

(assert (=> b!3376378 m!3739973))

(declare-fun m!3739975 () Bool)

(assert (=> b!3376379 m!3739975))

(assert (=> b!3375755 d!958119))

(declare-fun d!958121 () Bool)

(declare-fun res!1365443 () Bool)

(declare-fun e!2095519 () Bool)

(assert (=> d!958121 (=> (not res!1365443) (not e!2095519))))

(assert (=> d!958121 (= res!1365443 (not (isEmpty!21000 (originalCharacters!6070 separatorToken!241))))))

(assert (=> d!958121 (= (inv!49852 separatorToken!241) e!2095519)))

(declare-fun b!3376384 () Bool)

(declare-fun res!1365444 () Bool)

(assert (=> b!3376384 (=> (not res!1365444) (not e!2095519))))

(assert (=> b!3376384 (= res!1365444 (= (originalCharacters!6070 separatorToken!241) (list!13293 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (value!173106 separatorToken!241)))))))

(declare-fun b!3376385 () Bool)

(assert (=> b!3376385 (= e!2095519 (= (size!27838 separatorToken!241) (size!27839 (originalCharacters!6070 separatorToken!241))))))

(assert (= (and d!958121 res!1365443) b!3376384))

(assert (= (and b!3376384 res!1365444) b!3376385))

(declare-fun b_lambda!95735 () Bool)

(assert (=> (not b_lambda!95735) (not b!3376384)))

(assert (=> b!3376384 t!262755))

(declare-fun b_and!234399 () Bool)

(assert (= b_and!234385 (and (=> t!262755 result!223070) b_and!234399)))

(assert (=> b!3376384 t!262757))

(declare-fun b_and!234401 () Bool)

(assert (= b_and!234387 (and (=> t!262757 result!223072) b_and!234401)))

(assert (=> b!3376384 t!262759))

(declare-fun b_and!234403 () Bool)

(assert (= b_and!234389 (and (=> t!262759 result!223074) b_and!234403)))

(declare-fun m!3739977 () Bool)

(assert (=> d!958121 m!3739977))

(assert (=> b!3376384 m!3739935))

(assert (=> b!3376384 m!3739935))

(declare-fun m!3739979 () Bool)

(assert (=> b!3376384 m!3739979))

(declare-fun m!3739981 () Bool)

(assert (=> b!3376385 m!3739981))

(assert (=> start!314218 d!958121))

(declare-fun d!958123 () Bool)

(assert (=> d!958123 (= (inv!49849 (tag!5922 (h!42205 rules!2135))) (= (mod (str.len (value!173105 (tag!5922 (h!42205 rules!2135)))) 2) 0))))

(assert (=> b!3375756 d!958123))

(declare-fun d!958125 () Bool)

(declare-fun res!1365447 () Bool)

(declare-fun e!2095522 () Bool)

(assert (=> d!958125 (=> (not res!1365447) (not e!2095522))))

(declare-fun semiInverseModEq!2233 (Int Int) Bool)

(assert (=> d!958125 (= res!1365447 (semiInverseModEq!2233 (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toValue!7540 (transformation!5356 (h!42205 rules!2135)))))))

(assert (=> d!958125 (= (inv!49853 (transformation!5356 (h!42205 rules!2135))) e!2095522)))

(declare-fun b!3376388 () Bool)

(declare-fun equivClasses!2132 (Int Int) Bool)

(assert (=> b!3376388 (= e!2095522 (equivClasses!2132 (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toValue!7540 (transformation!5356 (h!42205 rules!2135)))))))

(assert (= (and d!958125 res!1365447) b!3376388))

(declare-fun m!3739983 () Bool)

(assert (=> d!958125 m!3739983))

(declare-fun m!3739985 () Bool)

(assert (=> b!3376388 m!3739985))

(assert (=> b!3375756 d!958125))

(declare-fun d!958127 () Bool)

(declare-fun lt!1145956 () Bool)

(declare-fun e!2095528 () Bool)

(assert (=> d!958127 (= lt!1145956 e!2095528)))

(declare-fun res!1365454 () Bool)

(assert (=> d!958127 (=> (not res!1365454) (not e!2095528))))

(assert (=> d!958127 (= res!1365454 (= (list!13296 (_1!21305 (lex!2271 thiss!18206 rules!2135 (print!2010 thiss!18206 (singletonSeq!2452 (h!42204 tokens!494)))))) (list!13296 (singletonSeq!2452 (h!42204 tokens!494)))))))

(declare-fun e!2095527 () Bool)

(assert (=> d!958127 (= lt!1145956 e!2095527)))

(declare-fun res!1365455 () Bool)

(assert (=> d!958127 (=> (not res!1365455) (not e!2095527))))

(declare-fun lt!1145955 () tuple2!36342)

(assert (=> d!958127 (= res!1365455 (= (size!27843 (_1!21305 lt!1145955)) 1))))

(assert (=> d!958127 (= lt!1145955 (lex!2271 thiss!18206 rules!2135 (print!2010 thiss!18206 (singletonSeq!2452 (h!42204 tokens!494)))))))

(assert (=> d!958127 (not (isEmpty!20999 rules!2135))))

(assert (=> d!958127 (= (rulesProduceIndividualToken!2437 thiss!18206 rules!2135 (h!42204 tokens!494)) lt!1145956)))

(declare-fun b!3376395 () Bool)

(declare-fun res!1365456 () Bool)

(assert (=> b!3376395 (=> (not res!1365456) (not e!2095527))))

(assert (=> b!3376395 (= res!1365456 (= (apply!8538 (_1!21305 lt!1145955) 0) (h!42204 tokens!494)))))

(declare-fun b!3376396 () Bool)

(declare-fun isEmpty!21011 (BalanceConc!21788) Bool)

(assert (=> b!3376396 (= e!2095527 (isEmpty!21011 (_2!21305 lt!1145955)))))

(declare-fun b!3376397 () Bool)

(assert (=> b!3376397 (= e!2095528 (isEmpty!21011 (_2!21305 (lex!2271 thiss!18206 rules!2135 (print!2010 thiss!18206 (singletonSeq!2452 (h!42204 tokens!494)))))))))

(assert (= (and d!958127 res!1365455) b!3376395))

(assert (= (and b!3376395 res!1365456) b!3376396))

(assert (= (and d!958127 res!1365454) b!3376397))

(declare-fun m!3739987 () Bool)

(assert (=> d!958127 m!3739987))

(declare-fun m!3739989 () Bool)

(assert (=> d!958127 m!3739989))

(declare-fun m!3739991 () Bool)

(assert (=> d!958127 m!3739991))

(assert (=> d!958127 m!3739257))

(declare-fun m!3739993 () Bool)

(assert (=> d!958127 m!3739993))

(assert (=> d!958127 m!3739257))

(assert (=> d!958127 m!3739989))

(assert (=> d!958127 m!3739297))

(assert (=> d!958127 m!3739257))

(declare-fun m!3739995 () Bool)

(assert (=> d!958127 m!3739995))

(declare-fun m!3739997 () Bool)

(assert (=> b!3376395 m!3739997))

(declare-fun m!3739999 () Bool)

(assert (=> b!3376396 m!3739999))

(assert (=> b!3376397 m!3739257))

(assert (=> b!3376397 m!3739257))

(assert (=> b!3376397 m!3739989))

(assert (=> b!3376397 m!3739989))

(assert (=> b!3376397 m!3739991))

(declare-fun m!3740001 () Bool)

(assert (=> b!3376397 m!3740001))

(assert (=> b!3375758 d!958127))

(declare-fun d!958129 () Bool)

(assert (=> d!958129 (= (isEmpty!20999 rules!2135) ((_ is Nil!36785) rules!2135))))

(assert (=> b!3375738 d!958129))

(declare-fun d!958131 () Bool)

(declare-fun res!1365457 () Bool)

(declare-fun e!2095529 () Bool)

(assert (=> d!958131 (=> (not res!1365457) (not e!2095529))))

(assert (=> d!958131 (= res!1365457 (not (isEmpty!21000 (originalCharacters!6070 (h!42204 tokens!494)))))))

(assert (=> d!958131 (= (inv!49852 (h!42204 tokens!494)) e!2095529)))

(declare-fun b!3376398 () Bool)

(declare-fun res!1365458 () Bool)

(assert (=> b!3376398 (=> (not res!1365458) (not e!2095529))))

(assert (=> b!3376398 (= res!1365458 (= (originalCharacters!6070 (h!42204 tokens!494)) (list!13293 (dynLambda!15275 (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (value!173106 (h!42204 tokens!494))))))))

(declare-fun b!3376399 () Bool)

(assert (=> b!3376399 (= e!2095529 (= (size!27838 (h!42204 tokens!494)) (size!27839 (originalCharacters!6070 (h!42204 tokens!494)))))))

(assert (= (and d!958131 res!1365457) b!3376398))

(assert (= (and b!3376398 res!1365458) b!3376399))

(declare-fun b_lambda!95737 () Bool)

(assert (=> (not b_lambda!95737) (not b!3376398)))

(assert (=> b!3376398 t!262729))

(declare-fun b_and!234405 () Bool)

(assert (= b_and!234399 (and (=> t!262729 result!223048) b_and!234405)))

(assert (=> b!3376398 t!262731))

(declare-fun b_and!234407 () Bool)

(assert (= b_and!234401 (and (=> t!262731 result!223052) b_and!234407)))

(assert (=> b!3376398 t!262733))

(declare-fun b_and!234409 () Bool)

(assert (= b_and!234403 (and (=> t!262733 result!223054) b_and!234409)))

(declare-fun m!3740003 () Bool)

(assert (=> d!958131 m!3740003))

(assert (=> b!3376398 m!3739717))

(assert (=> b!3376398 m!3739717))

(declare-fun m!3740005 () Bool)

(assert (=> b!3376398 m!3740005))

(declare-fun m!3740007 () Bool)

(assert (=> b!3376399 m!3740007))

(assert (=> b!3375737 d!958131))

(declare-fun d!958133 () Bool)

(assert (=> d!958133 (dynLambda!15280 lambda!120345 (h!42204 tokens!494))))

(declare-fun lt!1145959 () Unit!51888)

(declare-fun choose!19510 (List!36908 Int Token!10078) Unit!51888)

(assert (=> d!958133 (= lt!1145959 (choose!19510 tokens!494 lambda!120345 (h!42204 tokens!494)))))

(declare-fun e!2095532 () Bool)

(assert (=> d!958133 e!2095532))

(declare-fun res!1365461 () Bool)

(assert (=> d!958133 (=> (not res!1365461) (not e!2095532))))

(assert (=> d!958133 (= res!1365461 (forall!7729 tokens!494 lambda!120345))))

(assert (=> d!958133 (= (forallContained!1303 tokens!494 lambda!120345 (h!42204 tokens!494)) lt!1145959)))

(declare-fun b!3376402 () Bool)

(declare-fun contains!6705 (List!36908 Token!10078) Bool)

(assert (=> b!3376402 (= e!2095532 (contains!6705 tokens!494 (h!42204 tokens!494)))))

(assert (= (and d!958133 res!1365461) b!3376402))

(declare-fun b_lambda!95739 () Bool)

(assert (=> (not b_lambda!95739) (not d!958133)))

(assert (=> d!958133 m!3739973))

(declare-fun m!3740009 () Bool)

(assert (=> d!958133 m!3740009))

(assert (=> d!958133 m!3739269))

(declare-fun m!3740011 () Bool)

(assert (=> b!3376402 m!3740011))

(assert (=> b!3375739 d!958133))

(declare-fun d!958135 () Bool)

(assert (=> d!958135 (= (inv!49849 (tag!5922 (rule!7898 separatorToken!241))) (= (mod (str.len (value!173105 (tag!5922 (rule!7898 separatorToken!241)))) 2) 0))))

(assert (=> b!3375760 d!958135))

(declare-fun d!958137 () Bool)

(declare-fun res!1365462 () Bool)

(declare-fun e!2095533 () Bool)

(assert (=> d!958137 (=> (not res!1365462) (not e!2095533))))

(assert (=> d!958137 (= res!1365462 (semiInverseModEq!2233 (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (toValue!7540 (transformation!5356 (rule!7898 separatorToken!241)))))))

(assert (=> d!958137 (= (inv!49853 (transformation!5356 (rule!7898 separatorToken!241))) e!2095533)))

(declare-fun b!3376403 () Bool)

(assert (=> b!3376403 (= e!2095533 (equivClasses!2132 (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (toValue!7540 (transformation!5356 (rule!7898 separatorToken!241)))))))

(assert (= (and d!958137 res!1365462) b!3376403))

(declare-fun m!3740013 () Bool)

(assert (=> d!958137 m!3740013))

(declare-fun m!3740015 () Bool)

(assert (=> b!3376403 m!3740015))

(assert (=> b!3375760 d!958137))

(declare-fun d!958139 () Bool)

(declare-fun lt!1145961 () Bool)

(declare-fun e!2095535 () Bool)

(assert (=> d!958139 (= lt!1145961 e!2095535)))

(declare-fun res!1365463 () Bool)

(assert (=> d!958139 (=> (not res!1365463) (not e!2095535))))

(assert (=> d!958139 (= res!1365463 (= (list!13296 (_1!21305 (lex!2271 thiss!18206 rules!2135 (print!2010 thiss!18206 (singletonSeq!2452 separatorToken!241))))) (list!13296 (singletonSeq!2452 separatorToken!241))))))

(declare-fun e!2095534 () Bool)

(assert (=> d!958139 (= lt!1145961 e!2095534)))

(declare-fun res!1365464 () Bool)

(assert (=> d!958139 (=> (not res!1365464) (not e!2095534))))

(declare-fun lt!1145960 () tuple2!36342)

(assert (=> d!958139 (= res!1365464 (= (size!27843 (_1!21305 lt!1145960)) 1))))

(assert (=> d!958139 (= lt!1145960 (lex!2271 thiss!18206 rules!2135 (print!2010 thiss!18206 (singletonSeq!2452 separatorToken!241))))))

(assert (=> d!958139 (not (isEmpty!20999 rules!2135))))

(assert (=> d!958139 (= (rulesProduceIndividualToken!2437 thiss!18206 rules!2135 separatorToken!241) lt!1145961)))

(declare-fun b!3376404 () Bool)

(declare-fun res!1365465 () Bool)

(assert (=> b!3376404 (=> (not res!1365465) (not e!2095534))))

(assert (=> b!3376404 (= res!1365465 (= (apply!8538 (_1!21305 lt!1145960) 0) separatorToken!241))))

(declare-fun b!3376405 () Bool)

(assert (=> b!3376405 (= e!2095534 (isEmpty!21011 (_2!21305 lt!1145960)))))

(declare-fun b!3376406 () Bool)

(assert (=> b!3376406 (= e!2095535 (isEmpty!21011 (_2!21305 (lex!2271 thiss!18206 rules!2135 (print!2010 thiss!18206 (singletonSeq!2452 separatorToken!241))))))))

(assert (= (and d!958139 res!1365464) b!3376404))

(assert (= (and b!3376404 res!1365465) b!3376405))

(assert (= (and d!958139 res!1365463) b!3376406))

(declare-fun m!3740017 () Bool)

(assert (=> d!958139 m!3740017))

(declare-fun m!3740019 () Bool)

(assert (=> d!958139 m!3740019))

(declare-fun m!3740021 () Bool)

(assert (=> d!958139 m!3740021))

(declare-fun m!3740023 () Bool)

(assert (=> d!958139 m!3740023))

(declare-fun m!3740025 () Bool)

(assert (=> d!958139 m!3740025))

(assert (=> d!958139 m!3740023))

(assert (=> d!958139 m!3740019))

(assert (=> d!958139 m!3739297))

(assert (=> d!958139 m!3740023))

(declare-fun m!3740027 () Bool)

(assert (=> d!958139 m!3740027))

(declare-fun m!3740029 () Bool)

(assert (=> b!3376404 m!3740029))

(declare-fun m!3740031 () Bool)

(assert (=> b!3376405 m!3740031))

(assert (=> b!3376406 m!3740023))

(assert (=> b!3376406 m!3740023))

(assert (=> b!3376406 m!3740019))

(assert (=> b!3376406 m!3740019))

(assert (=> b!3376406 m!3740021))

(declare-fun m!3740033 () Bool)

(assert (=> b!3376406 m!3740033))

(assert (=> b!3375762 d!958139))

(declare-fun d!958141 () Bool)

(assert (=> d!958141 (= (inv!49849 (tag!5922 (rule!7898 (h!42204 tokens!494)))) (= (mod (str.len (value!173105 (tag!5922 (rule!7898 (h!42204 tokens!494))))) 2) 0))))

(assert (=> b!3375740 d!958141))

(declare-fun d!958143 () Bool)

(declare-fun res!1365466 () Bool)

(declare-fun e!2095536 () Bool)

(assert (=> d!958143 (=> (not res!1365466) (not e!2095536))))

(assert (=> d!958143 (= res!1365466 (semiInverseModEq!2233 (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494))))))))

(assert (=> d!958143 (= (inv!49853 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) e!2095536)))

(declare-fun b!3376407 () Bool)

(assert (=> b!3376407 (= e!2095536 (equivClasses!2132 (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494))))))))

(assert (= (and d!958143 res!1365466) b!3376407))

(declare-fun m!3740035 () Bool)

(assert (=> d!958143 m!3740035))

(declare-fun m!3740037 () Bool)

(assert (=> b!3376407 m!3740037))

(assert (=> b!3375740 d!958143))

(declare-fun bm!244354 () Bool)

(declare-fun call!244359 () Bool)

(assert (=> bm!244354 (= call!244359 (isEmpty!21000 lt!1145729))))

(declare-fun b!3376408 () Bool)

(declare-fun e!2095537 () Bool)

(assert (=> b!3376408 (= e!2095537 (matchR!4707 (derivativeStep!2995 (regex!5356 lt!1145739) (head!7197 lt!1145729)) (tail!5336 lt!1145729)))))

(declare-fun b!3376409 () Bool)

(declare-fun e!2095540 () Bool)

(assert (=> b!3376409 (= e!2095540 (= (head!7197 lt!1145729) (c!574904 (regex!5356 lt!1145739))))))

(declare-fun b!3376411 () Bool)

(declare-fun e!2095543 () Bool)

(declare-fun e!2095538 () Bool)

(assert (=> b!3376411 (= e!2095543 e!2095538)))

(declare-fun c!575032 () Bool)

(assert (=> b!3376411 (= c!575032 ((_ is EmptyLang!10115) (regex!5356 lt!1145739)))))

(declare-fun b!3376412 () Bool)

(declare-fun e!2095539 () Bool)

(declare-fun e!2095542 () Bool)

(assert (=> b!3376412 (= e!2095539 e!2095542)))

(declare-fun res!1365471 () Bool)

(assert (=> b!3376412 (=> res!1365471 e!2095542)))

(assert (=> b!3376412 (= res!1365471 call!244359)))

(declare-fun b!3376413 () Bool)

(assert (=> b!3376413 (= e!2095537 (nullable!3442 (regex!5356 lt!1145739)))))

(declare-fun b!3376414 () Bool)

(declare-fun res!1365467 () Bool)

(declare-fun e!2095541 () Bool)

(assert (=> b!3376414 (=> res!1365467 e!2095541)))

(assert (=> b!3376414 (= res!1365467 (not ((_ is ElementMatch!10115) (regex!5356 lt!1145739))))))

(assert (=> b!3376414 (= e!2095538 e!2095541)))

(declare-fun b!3376415 () Bool)

(declare-fun res!1365474 () Bool)

(assert (=> b!3376415 (=> res!1365474 e!2095541)))

(assert (=> b!3376415 (= res!1365474 e!2095540)))

(declare-fun res!1365473 () Bool)

(assert (=> b!3376415 (=> (not res!1365473) (not e!2095540))))

(declare-fun lt!1145962 () Bool)

(assert (=> b!3376415 (= res!1365473 lt!1145962)))

(declare-fun b!3376416 () Bool)

(assert (=> b!3376416 (= e!2095538 (not lt!1145962))))

(declare-fun b!3376417 () Bool)

(assert (=> b!3376417 (= e!2095541 e!2095539)))

(declare-fun res!1365472 () Bool)

(assert (=> b!3376417 (=> (not res!1365472) (not e!2095539))))

(assert (=> b!3376417 (= res!1365472 (not lt!1145962))))

(declare-fun b!3376418 () Bool)

(assert (=> b!3376418 (= e!2095542 (not (= (head!7197 lt!1145729) (c!574904 (regex!5356 lt!1145739)))))))

(declare-fun b!3376419 () Bool)

(assert (=> b!3376419 (= e!2095543 (= lt!1145962 call!244359))))

(declare-fun b!3376410 () Bool)

(declare-fun res!1365470 () Bool)

(assert (=> b!3376410 (=> res!1365470 e!2095542)))

(assert (=> b!3376410 (= res!1365470 (not (isEmpty!21000 (tail!5336 lt!1145729))))))

(declare-fun d!958145 () Bool)

(assert (=> d!958145 e!2095543))

(declare-fun c!575030 () Bool)

(assert (=> d!958145 (= c!575030 ((_ is EmptyExpr!10115) (regex!5356 lt!1145739)))))

(assert (=> d!958145 (= lt!1145962 e!2095537)))

(declare-fun c!575031 () Bool)

(assert (=> d!958145 (= c!575031 (isEmpty!21000 lt!1145729))))

(assert (=> d!958145 (validRegex!4598 (regex!5356 lt!1145739))))

(assert (=> d!958145 (= (matchR!4707 (regex!5356 lt!1145739) lt!1145729) lt!1145962)))

(declare-fun b!3376420 () Bool)

(declare-fun res!1365469 () Bool)

(assert (=> b!3376420 (=> (not res!1365469) (not e!2095540))))

(assert (=> b!3376420 (= res!1365469 (not call!244359))))

(declare-fun b!3376421 () Bool)

(declare-fun res!1365468 () Bool)

(assert (=> b!3376421 (=> (not res!1365468) (not e!2095540))))

(assert (=> b!3376421 (= res!1365468 (isEmpty!21000 (tail!5336 lt!1145729)))))

(assert (= (and d!958145 c!575031) b!3376413))

(assert (= (and d!958145 (not c!575031)) b!3376408))

(assert (= (and d!958145 c!575030) b!3376419))

(assert (= (and d!958145 (not c!575030)) b!3376411))

(assert (= (and b!3376411 c!575032) b!3376416))

(assert (= (and b!3376411 (not c!575032)) b!3376414))

(assert (= (and b!3376414 (not res!1365467)) b!3376415))

(assert (= (and b!3376415 res!1365473) b!3376420))

(assert (= (and b!3376420 res!1365469) b!3376421))

(assert (= (and b!3376421 res!1365468) b!3376409))

(assert (= (and b!3376415 (not res!1365474)) b!3376417))

(assert (= (and b!3376417 res!1365472) b!3376412))

(assert (= (and b!3376412 (not res!1365471)) b!3376410))

(assert (= (and b!3376410 (not res!1365470)) b!3376418))

(assert (= (or b!3376419 b!3376412 b!3376420) bm!244354))

(assert (=> b!3376421 m!3739441))

(assert (=> b!3376421 m!3739441))

(declare-fun m!3740039 () Bool)

(assert (=> b!3376421 m!3740039))

(declare-fun m!3740041 () Bool)

(assert (=> b!3376413 m!3740041))

(declare-fun m!3740043 () Bool)

(assert (=> d!958145 m!3740043))

(declare-fun m!3740045 () Bool)

(assert (=> d!958145 m!3740045))

(declare-fun m!3740047 () Bool)

(assert (=> b!3376409 m!3740047))

(assert (=> b!3376408 m!3740047))

(assert (=> b!3376408 m!3740047))

(declare-fun m!3740049 () Bool)

(assert (=> b!3376408 m!3740049))

(assert (=> b!3376408 m!3739441))

(assert (=> b!3376408 m!3740049))

(assert (=> b!3376408 m!3739441))

(declare-fun m!3740051 () Bool)

(assert (=> b!3376408 m!3740051))

(assert (=> b!3376410 m!3739441))

(assert (=> b!3376410 m!3739441))

(assert (=> b!3376410 m!3740039))

(assert (=> bm!244354 m!3740043))

(assert (=> b!3376418 m!3740047))

(assert (=> b!3375742 d!958145))

(declare-fun d!958147 () Bool)

(assert (=> d!958147 (= (get!11731 lt!1145724) (v!36398 lt!1145724))))

(assert (=> b!3375742 d!958147))

(declare-fun b!3376422 () Bool)

(declare-fun e!2095545 () Bool)

(assert (=> b!3376422 (= e!2095545 (inv!16 (value!173106 separatorToken!241)))))

(declare-fun b!3376423 () Bool)

(declare-fun e!2095544 () Bool)

(assert (=> b!3376423 (= e!2095544 (inv!15 (value!173106 separatorToken!241)))))

(declare-fun d!958149 () Bool)

(declare-fun c!575034 () Bool)

(assert (=> d!958149 (= c!575034 ((_ is IntegerValue!16758) (value!173106 separatorToken!241)))))

(assert (=> d!958149 (= (inv!21 (value!173106 separatorToken!241)) e!2095545)))

(declare-fun b!3376424 () Bool)

(declare-fun e!2095546 () Bool)

(assert (=> b!3376424 (= e!2095546 (inv!17 (value!173106 separatorToken!241)))))

(declare-fun b!3376425 () Bool)

(assert (=> b!3376425 (= e!2095545 e!2095546)))

(declare-fun c!575033 () Bool)

(assert (=> b!3376425 (= c!575033 ((_ is IntegerValue!16759) (value!173106 separatorToken!241)))))

(declare-fun b!3376426 () Bool)

(declare-fun res!1365475 () Bool)

(assert (=> b!3376426 (=> res!1365475 e!2095544)))

(assert (=> b!3376426 (= res!1365475 (not ((_ is IntegerValue!16760) (value!173106 separatorToken!241))))))

(assert (=> b!3376426 (= e!2095546 e!2095544)))

(assert (= (and d!958149 c!575034) b!3376422))

(assert (= (and d!958149 (not c!575034)) b!3376425))

(assert (= (and b!3376425 c!575033) b!3376424))

(assert (= (and b!3376425 (not c!575033)) b!3376426))

(assert (= (and b!3376426 (not res!1365475)) b!3376423))

(declare-fun m!3740053 () Bool)

(assert (=> b!3376422 m!3740053))

(declare-fun m!3740055 () Bool)

(assert (=> b!3376423 m!3740055))

(declare-fun m!3740057 () Bool)

(assert (=> b!3376424 m!3740057))

(assert (=> b!3375763 d!958149))

(declare-fun b!3376445 () Bool)

(declare-fun e!2095562 () Bool)

(declare-fun call!244366 () Bool)

(assert (=> b!3376445 (= e!2095562 call!244366)))

(declare-fun b!3376446 () Bool)

(declare-fun res!1365487 () Bool)

(declare-fun e!2095563 () Bool)

(assert (=> b!3376446 (=> (not res!1365487) (not e!2095563))))

(declare-fun call!244367 () Bool)

(assert (=> b!3376446 (= res!1365487 call!244367)))

(declare-fun e!2095561 () Bool)

(assert (=> b!3376446 (= e!2095561 e!2095563)))

(declare-fun b!3376447 () Bool)

(declare-fun call!244368 () Bool)

(assert (=> b!3376447 (= e!2095563 call!244368)))

(declare-fun d!958151 () Bool)

(declare-fun res!1365489 () Bool)

(declare-fun e!2095565 () Bool)

(assert (=> d!958151 (=> res!1365489 e!2095565)))

(assert (=> d!958151 (= res!1365489 ((_ is ElementMatch!10115) (regex!5356 (rule!7898 separatorToken!241))))))

(assert (=> d!958151 (= (validRegex!4598 (regex!5356 (rule!7898 separatorToken!241))) e!2095565)))

(declare-fun b!3376448 () Bool)

(declare-fun e!2095566 () Bool)

(declare-fun e!2095564 () Bool)

(assert (=> b!3376448 (= e!2095566 e!2095564)))

(declare-fun res!1365486 () Bool)

(assert (=> b!3376448 (=> (not res!1365486) (not e!2095564))))

(assert (=> b!3376448 (= res!1365486 call!244367)))

(declare-fun bm!244361 () Bool)

(assert (=> bm!244361 (= call!244367 call!244366)))

(declare-fun b!3376449 () Bool)

(assert (=> b!3376449 (= e!2095564 call!244368)))

(declare-fun bm!244362 () Bool)

(declare-fun c!575040 () Bool)

(assert (=> bm!244362 (= call!244368 (validRegex!4598 (ite c!575040 (regTwo!20743 (regex!5356 (rule!7898 separatorToken!241))) (regTwo!20742 (regex!5356 (rule!7898 separatorToken!241))))))))

(declare-fun b!3376450 () Bool)

(declare-fun e!2095567 () Bool)

(assert (=> b!3376450 (= e!2095567 e!2095561)))

(assert (=> b!3376450 (= c!575040 ((_ is Union!10115) (regex!5356 (rule!7898 separatorToken!241))))))

(declare-fun c!575039 () Bool)

(declare-fun bm!244363 () Bool)

(assert (=> bm!244363 (= call!244366 (validRegex!4598 (ite c!575039 (reg!10444 (regex!5356 (rule!7898 separatorToken!241))) (ite c!575040 (regOne!20743 (regex!5356 (rule!7898 separatorToken!241))) (regOne!20742 (regex!5356 (rule!7898 separatorToken!241)))))))))

(declare-fun b!3376451 () Bool)

(assert (=> b!3376451 (= e!2095567 e!2095562)))

(declare-fun res!1365488 () Bool)

(assert (=> b!3376451 (= res!1365488 (not (nullable!3442 (reg!10444 (regex!5356 (rule!7898 separatorToken!241))))))))

(assert (=> b!3376451 (=> (not res!1365488) (not e!2095562))))

(declare-fun b!3376452 () Bool)

(declare-fun res!1365490 () Bool)

(assert (=> b!3376452 (=> res!1365490 e!2095566)))

(assert (=> b!3376452 (= res!1365490 (not ((_ is Concat!15701) (regex!5356 (rule!7898 separatorToken!241)))))))

(assert (=> b!3376452 (= e!2095561 e!2095566)))

(declare-fun b!3376453 () Bool)

(assert (=> b!3376453 (= e!2095565 e!2095567)))

(assert (=> b!3376453 (= c!575039 ((_ is Star!10115) (regex!5356 (rule!7898 separatorToken!241))))))

(assert (= (and d!958151 (not res!1365489)) b!3376453))

(assert (= (and b!3376453 c!575039) b!3376451))

(assert (= (and b!3376453 (not c!575039)) b!3376450))

(assert (= (and b!3376451 res!1365488) b!3376445))

(assert (= (and b!3376450 c!575040) b!3376446))

(assert (= (and b!3376450 (not c!575040)) b!3376452))

(assert (= (and b!3376446 res!1365487) b!3376447))

(assert (= (and b!3376452 (not res!1365490)) b!3376448))

(assert (= (and b!3376448 res!1365486) b!3376449))

(assert (= (or b!3376447 b!3376449) bm!244362))

(assert (= (or b!3376446 b!3376448) bm!244361))

(assert (= (or b!3376445 bm!244361) bm!244363))

(declare-fun m!3740059 () Bool)

(assert (=> bm!244362 m!3740059))

(declare-fun m!3740061 () Bool)

(assert (=> bm!244363 m!3740061))

(declare-fun m!3740063 () Bool)

(assert (=> b!3376451 m!3740063))

(assert (=> b!3375741 d!958151))

(declare-fun b!3376467 () Bool)

(declare-fun b_free!88237 () Bool)

(declare-fun b_next!88941 () Bool)

(assert (=> b!3376467 (= b_free!88237 (not b_next!88941))))

(declare-fun t!262774 () Bool)

(declare-fun tb!179747 () Bool)

(assert (=> (and b!3376467 (= (toValue!7540 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262774) tb!179747))

(declare-fun result!223098 () Bool)

(assert (= result!223098 result!223040))

(assert (=> d!958007 t!262774))

(declare-fun tp!1055877 () Bool)

(declare-fun b_and!234411 () Bool)

(assert (=> b!3376467 (= tp!1055877 (and (=> t!262774 result!223098) b_and!234411))))

(declare-fun b_free!88239 () Bool)

(declare-fun b_next!88943 () Bool)

(assert (=> b!3376467 (= b_free!88239 (not b_next!88943))))

(declare-fun t!262776 () Bool)

(declare-fun tb!179749 () Bool)

(assert (=> (and b!3376467 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262776) tb!179749))

(declare-fun result!223100 () Bool)

(assert (= result!223100 result!223048))

(assert (=> d!958037 t!262776))

(declare-fun tb!179751 () Bool)

(declare-fun t!262778 () Bool)

(assert (=> (and b!3376467 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241)))) t!262778) tb!179751))

(declare-fun result!223102 () Bool)

(assert (= result!223102 result!223070))

(assert (=> d!958101 t!262778))

(assert (=> b!3376384 t!262778))

(assert (=> b!3376398 t!262776))

(declare-fun b_and!234413 () Bool)

(declare-fun tp!1055876 () Bool)

(assert (=> b!3376467 (= tp!1055876 (and (=> t!262776 result!223100) (=> t!262778 result!223102) b_and!234413))))

(declare-fun e!2095580 () Bool)

(assert (=> b!3376467 (= e!2095580 (and tp!1055877 tp!1055876))))

(declare-fun e!2095585 () Bool)

(assert (=> b!3375737 (= tp!1055791 e!2095585)))

(declare-fun b!3376466 () Bool)

(declare-fun e!2095582 () Bool)

(declare-fun tp!1055875 () Bool)

(assert (=> b!3376466 (= e!2095582 (and tp!1055875 (inv!49849 (tag!5922 (rule!7898 (h!42204 (t!262709 tokens!494))))) (inv!49853 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) e!2095580))))

(declare-fun tp!1055879 () Bool)

(declare-fun e!2095583 () Bool)

(declare-fun b!3376464 () Bool)

(assert (=> b!3376464 (= e!2095585 (and (inv!49852 (h!42204 (t!262709 tokens!494))) e!2095583 tp!1055879))))

(declare-fun b!3376465 () Bool)

(declare-fun tp!1055878 () Bool)

(assert (=> b!3376465 (= e!2095583 (and (inv!21 (value!173106 (h!42204 (t!262709 tokens!494)))) e!2095582 tp!1055878))))

(assert (= b!3376466 b!3376467))

(assert (= b!3376465 b!3376466))

(assert (= b!3376464 b!3376465))

(assert (= (and b!3375737 ((_ is Cons!36784) (t!262709 tokens!494))) b!3376464))

(declare-fun m!3740065 () Bool)

(assert (=> b!3376466 m!3740065))

(declare-fun m!3740067 () Bool)

(assert (=> b!3376466 m!3740067))

(declare-fun m!3740069 () Bool)

(assert (=> b!3376464 m!3740069))

(declare-fun m!3740071 () Bool)

(assert (=> b!3376465 m!3740071))

(declare-fun b!3376481 () Bool)

(declare-fun e!2095588 () Bool)

(declare-fun tp!1055891 () Bool)

(declare-fun tp!1055890 () Bool)

(assert (=> b!3376481 (= e!2095588 (and tp!1055891 tp!1055890))))

(declare-fun b!3376480 () Bool)

(declare-fun tp!1055894 () Bool)

(assert (=> b!3376480 (= e!2095588 tp!1055894)))

(assert (=> b!3375760 (= tp!1055800 e!2095588)))

(declare-fun b!3376478 () Bool)

(declare-fun tp_is_empty!17457 () Bool)

(assert (=> b!3376478 (= e!2095588 tp_is_empty!17457)))

(declare-fun b!3376479 () Bool)

(declare-fun tp!1055892 () Bool)

(declare-fun tp!1055893 () Bool)

(assert (=> b!3376479 (= e!2095588 (and tp!1055892 tp!1055893))))

(assert (= (and b!3375760 ((_ is ElementMatch!10115) (regex!5356 (rule!7898 separatorToken!241)))) b!3376478))

(assert (= (and b!3375760 ((_ is Concat!15701) (regex!5356 (rule!7898 separatorToken!241)))) b!3376479))

(assert (= (and b!3375760 ((_ is Star!10115) (regex!5356 (rule!7898 separatorToken!241)))) b!3376480))

(assert (= (and b!3375760 ((_ is Union!10115) (regex!5356 (rule!7898 separatorToken!241)))) b!3376481))

(declare-fun b!3376486 () Bool)

(declare-fun e!2095591 () Bool)

(declare-fun tp!1055897 () Bool)

(assert (=> b!3376486 (= e!2095591 (and tp_is_empty!17457 tp!1055897))))

(assert (=> b!3375744 (= tp!1055788 e!2095591)))

(assert (= (and b!3375744 ((_ is Cons!36783) (originalCharacters!6070 (h!42204 tokens!494)))) b!3376486))

(declare-fun b!3376497 () Bool)

(declare-fun b_free!88241 () Bool)

(declare-fun b_next!88945 () Bool)

(assert (=> b!3376497 (= b_free!88241 (not b_next!88945))))

(declare-fun t!262780 () Bool)

(declare-fun tb!179753 () Bool)

(assert (=> (and b!3376497 (= (toValue!7540 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262780) tb!179753))

(declare-fun result!223110 () Bool)

(assert (= result!223110 result!223040))

(assert (=> d!958007 t!262780))

(declare-fun b_and!234415 () Bool)

(declare-fun tp!1055906 () Bool)

(assert (=> b!3376497 (= tp!1055906 (and (=> t!262780 result!223110) b_and!234415))))

(declare-fun b_free!88243 () Bool)

(declare-fun b_next!88947 () Bool)

(assert (=> b!3376497 (= b_free!88243 (not b_next!88947))))

(declare-fun t!262782 () Bool)

(declare-fun tb!179755 () Bool)

(assert (=> (and b!3376497 (= (toChars!7399 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494))))) t!262782) tb!179755))

(declare-fun result!223112 () Bool)

(assert (= result!223112 result!223048))

(assert (=> d!958037 t!262782))

(declare-fun tb!179757 () Bool)

(declare-fun t!262784 () Bool)

(assert (=> (and b!3376497 (= (toChars!7399 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241)))) t!262784) tb!179757))

(declare-fun result!223114 () Bool)

(assert (= result!223114 result!223070))

(assert (=> d!958101 t!262784))

(assert (=> b!3376384 t!262784))

(assert (=> b!3376398 t!262782))

(declare-fun tp!1055907 () Bool)

(declare-fun b_and!234417 () Bool)

(assert (=> b!3376497 (= tp!1055907 (and (=> t!262782 result!223112) (=> t!262784 result!223114) b_and!234417))))

(declare-fun e!2095601 () Bool)

(assert (=> b!3376497 (= e!2095601 (and tp!1055906 tp!1055907))))

(declare-fun tp!1055909 () Bool)

(declare-fun b!3376496 () Bool)

(declare-fun e!2095600 () Bool)

(assert (=> b!3376496 (= e!2095600 (and tp!1055909 (inv!49849 (tag!5922 (h!42205 (t!262710 rules!2135)))) (inv!49853 (transformation!5356 (h!42205 (t!262710 rules!2135)))) e!2095601))))

(declare-fun b!3376495 () Bool)

(declare-fun e!2095603 () Bool)

(declare-fun tp!1055908 () Bool)

(assert (=> b!3376495 (= e!2095603 (and e!2095600 tp!1055908))))

(assert (=> b!3375735 (= tp!1055794 e!2095603)))

(assert (= b!3376496 b!3376497))

(assert (= b!3376495 b!3376496))

(assert (= (and b!3375735 ((_ is Cons!36785) (t!262710 rules!2135))) b!3376495))

(declare-fun m!3740073 () Bool)

(assert (=> b!3376496 m!3740073))

(declare-fun m!3740075 () Bool)

(assert (=> b!3376496 m!3740075))

(declare-fun b!3376501 () Bool)

(declare-fun e!2095604 () Bool)

(declare-fun tp!1055911 () Bool)

(declare-fun tp!1055910 () Bool)

(assert (=> b!3376501 (= e!2095604 (and tp!1055911 tp!1055910))))

(declare-fun b!3376500 () Bool)

(declare-fun tp!1055914 () Bool)

(assert (=> b!3376500 (= e!2095604 tp!1055914)))

(assert (=> b!3375756 (= tp!1055790 e!2095604)))

(declare-fun b!3376498 () Bool)

(assert (=> b!3376498 (= e!2095604 tp_is_empty!17457)))

(declare-fun b!3376499 () Bool)

(declare-fun tp!1055912 () Bool)

(declare-fun tp!1055913 () Bool)

(assert (=> b!3376499 (= e!2095604 (and tp!1055912 tp!1055913))))

(assert (= (and b!3375756 ((_ is ElementMatch!10115) (regex!5356 (h!42205 rules!2135)))) b!3376498))

(assert (= (and b!3375756 ((_ is Concat!15701) (regex!5356 (h!42205 rules!2135)))) b!3376499))

(assert (= (and b!3375756 ((_ is Star!10115) (regex!5356 (h!42205 rules!2135)))) b!3376500))

(assert (= (and b!3375756 ((_ is Union!10115) (regex!5356 (h!42205 rules!2135)))) b!3376501))

(declare-fun b!3376505 () Bool)

(declare-fun e!2095605 () Bool)

(declare-fun tp!1055916 () Bool)

(declare-fun tp!1055915 () Bool)

(assert (=> b!3376505 (= e!2095605 (and tp!1055916 tp!1055915))))

(declare-fun b!3376504 () Bool)

(declare-fun tp!1055919 () Bool)

(assert (=> b!3376504 (= e!2095605 tp!1055919)))

(assert (=> b!3375740 (= tp!1055793 e!2095605)))

(declare-fun b!3376502 () Bool)

(assert (=> b!3376502 (= e!2095605 tp_is_empty!17457)))

(declare-fun b!3376503 () Bool)

(declare-fun tp!1055917 () Bool)

(declare-fun tp!1055918 () Bool)

(assert (=> b!3376503 (= e!2095605 (and tp!1055917 tp!1055918))))

(assert (= (and b!3375740 ((_ is ElementMatch!10115) (regex!5356 (rule!7898 (h!42204 tokens!494))))) b!3376502))

(assert (= (and b!3375740 ((_ is Concat!15701) (regex!5356 (rule!7898 (h!42204 tokens!494))))) b!3376503))

(assert (= (and b!3375740 ((_ is Star!10115) (regex!5356 (rule!7898 (h!42204 tokens!494))))) b!3376504))

(assert (= (and b!3375740 ((_ is Union!10115) (regex!5356 (rule!7898 (h!42204 tokens!494))))) b!3376505))

(declare-fun b!3376506 () Bool)

(declare-fun e!2095606 () Bool)

(declare-fun tp!1055920 () Bool)

(assert (=> b!3376506 (= e!2095606 (and tp_is_empty!17457 tp!1055920))))

(assert (=> b!3375763 (= tp!1055796 e!2095606)))

(assert (= (and b!3375763 ((_ is Cons!36783) (originalCharacters!6070 separatorToken!241))) b!3376506))

(declare-fun b_lambda!95741 () Bool)

(assert (= b_lambda!95735 (or (and b!3375759 b_free!88223) (and b!3375748 b_free!88219 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) (and b!3375746 b_free!88227 (= (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) (and b!3376467 b_free!88239 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) (and b!3376497 b_free!88243 (= (toChars!7399 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) b_lambda!95741)))

(declare-fun b_lambda!95743 () Bool)

(assert (= b_lambda!95739 (or b!3375755 b_lambda!95743)))

(declare-fun bs!554605 () Bool)

(declare-fun d!958153 () Bool)

(assert (= bs!554605 (and d!958153 b!3375755)))

(assert (=> bs!554605 (= (dynLambda!15280 lambda!120345 (h!42204 tokens!494)) (not (isSeparator!5356 (rule!7898 (h!42204 tokens!494)))))))

(assert (=> d!958133 d!958153))

(declare-fun b_lambda!95745 () Bool)

(assert (= b_lambda!95705 (or (and b!3376467 b_free!88239 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375748 b_free!88219) (and b!3376497 b_free!88243 (= (toChars!7399 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375759 b_free!88223 (= (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375746 b_free!88227 (= (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) b_lambda!95745)))

(declare-fun b_lambda!95747 () Bool)

(assert (= b_lambda!95737 (or (and b!3376467 b_free!88239 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375748 b_free!88219) (and b!3376497 b_free!88243 (= (toChars!7399 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375759 b_free!88223 (= (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375746 b_free!88227 (= (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) b_lambda!95747)))

(declare-fun b_lambda!95749 () Bool)

(assert (= b_lambda!95733 (or b!3375755 b_lambda!95749)))

(assert (=> b!3376378 d!958153))

(declare-fun b_lambda!95751 () Bool)

(assert (= b_lambda!95715 (or (and b!3375759 b_free!88223) (and b!3375748 b_free!88219 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 tokens!494)))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) (and b!3375746 b_free!88227 (= (toChars!7399 (transformation!5356 (h!42205 rules!2135))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) (and b!3376467 b_free!88239 (= (toChars!7399 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) (and b!3376497 b_free!88243 (= (toChars!7399 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toChars!7399 (transformation!5356 (rule!7898 separatorToken!241))))) b_lambda!95751)))

(declare-fun b_lambda!95753 () Bool)

(assert (= b_lambda!95703 (or (and b!3375759 b_free!88221 (= (toValue!7540 (transformation!5356 (rule!7898 separatorToken!241))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3376497 b_free!88241 (= (toValue!7540 (transformation!5356 (h!42205 (t!262710 rules!2135)))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375746 b_free!88225 (= (toValue!7540 (transformation!5356 (h!42205 rules!2135))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3376467 b_free!88237 (= (toValue!7540 (transformation!5356 (rule!7898 (h!42204 (t!262709 tokens!494))))) (toValue!7540 (transformation!5356 (rule!7898 (h!42204 tokens!494)))))) (and b!3375748 b_free!88217) b_lambda!95753)))

(check-sat (not d!958133) (not bm!244326) (not b_lambda!95753) (not d!958137) b_and!234407 (not b!3376410) (not b!3376423) (not d!957995) b_and!234409 (not b_next!88943) (not d!958125) (not b!3376355) b_and!234405 (not b!3376480) (not b!3376006) (not b!3375991) (not tb!179705) (not b!3376396) (not b!3376451) (not b!3375884) (not b!3376368) (not b!3376075) (not b_next!88923) (not b!3376466) (not b!3376500) (not d!958085) (not b!3376266) (not b!3376479) (not b!3376504) (not b_next!88929) (not b!3375984) (not d!958035) (not d!957965) (not b!3375879) (not d!958067) (not d!957969) (not b_lambda!95745) (not b!3375974) (not d!958003) (not d!957993) (not d!958121) (not b!3376059) (not d!958001) (not b_lambda!95751) (not tb!179711) (not d!958143) (not b_next!88921) (not bm!244353) (not bm!244328) (not b_lambda!95747) (not d!957999) (not b!3376486) (not d!958005) (not b!3376403) (not b_next!88945) (not b!3376157) (not b!3376388) (not d!958145) (not b!3376424) (not b!3376032) (not b!3376409) (not b!3376395) (not b!3375998) (not b!3375997) (not d!958087) (not b!3376061) (not b!3376398) (not b!3376402) b_and!234413 (not b!3376379) (not b!3375972) (not bm!244362) (not b!3375770) (not b!3376397) (not b!3376385) (not b!3375782) (not b!3376501) (not b!3376418) b_and!234415 (not d!958017) (not b!3376503) (not d!957931) (not bm!244354) (not b!3375976) (not b_lambda!95741) (not b_lambda!95743) (not b!3376465) (not b!3376384) b_and!234357 (not b!3376357) (not d!957939) (not d!958101) (not d!958009) (not d!958039) (not b!3375973) b_and!234359 tp_is_empty!17457 (not b!3375989) (not b!3376506) (not b!3375996) b_and!234411 (not b_next!88947) (not b!3376069) (not d!958037) (not b!3375994) (not b_next!88931) (not bm!244329) (not b!3376408) (not b!3375895) (not b!3376234) (not b!3376237) (not b!3376360) (not d!958111) (not b!3376413) (not b!3376404) (not b!3376356) (not b!3376421) (not b!3376481) (not d!958139) (not b!3376166) (not d!958091) (not b!3375783) (not b!3376262) (not b!3375796) (not b!3376261) (not d!957967) (not b!3375975) (not b!3375990) (not b!3376464) (not b!3376495) (not b!3376496) (not d!957963) (not b!3376406) (not d!958127) (not bm!244363) b_and!234355 (not b!3375978) (not b!3376422) (not b!3376235) (not b!3375781) (not d!958109) b_and!234417 (not b!3375797) (not b_next!88941) (not b!3376405) (not b!3376236) (not d!958015) (not b!3376505) (not tb!179729) (not b!3375971) (not b!3376399) (not d!958131) (not d!958065) (not d!958063) (not d!958081) (not b!3376064) (not b!3376365) (not d!958031) (not b_lambda!95749) (not b_next!88927) (not b!3376407) (not b!3376499) (not b!3375882) (not d!958021) (not b!3375977) (not d!958029) (not b_next!88925))
(check-sat b_and!234407 (not b_next!88923) (not b_next!88929) (not b_next!88921) (not b_next!88945) b_and!234413 b_and!234415 b_and!234357 b_and!234359 (not b_next!88931) b_and!234355 (not b_next!88927) (not b_next!88925) b_and!234409 (not b_next!88943) b_and!234405 b_and!234411 (not b_next!88947) b_and!234417 (not b_next!88941))
