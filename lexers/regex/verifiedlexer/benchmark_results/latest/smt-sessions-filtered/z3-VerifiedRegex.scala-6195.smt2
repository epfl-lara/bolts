; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!299294 () Bool)

(assert start!299294)

(declare-fun b!3191899 () Bool)

(declare-fun b_free!84577 () Bool)

(declare-fun b_next!85281 () Bool)

(assert (=> b!3191899 (= b_free!84577 (not b_next!85281))))

(declare-fun tp!1009243 () Bool)

(declare-fun b_and!211587 () Bool)

(assert (=> b!3191899 (= tp!1009243 b_and!211587)))

(declare-fun b_free!84579 () Bool)

(declare-fun b_next!85283 () Bool)

(assert (=> b!3191899 (= b_free!84579 (not b_next!85283))))

(declare-fun tp!1009239 () Bool)

(declare-fun b_and!211589 () Bool)

(assert (=> b!3191899 (= tp!1009239 b_and!211589)))

(declare-fun b!3191904 () Bool)

(declare-fun b_free!84581 () Bool)

(declare-fun b_next!85285 () Bool)

(assert (=> b!3191904 (= b_free!84581 (not b_next!85285))))

(declare-fun tp!1009240 () Bool)

(declare-fun b_and!211591 () Bool)

(assert (=> b!3191904 (= tp!1009240 b_and!211591)))

(declare-fun b_free!84583 () Bool)

(declare-fun b_next!85287 () Bool)

(assert (=> b!3191904 (= b_free!84583 (not b_next!85287))))

(declare-fun tp!1009249 () Bool)

(declare-fun b_and!211593 () Bool)

(assert (=> b!3191904 (= tp!1009249 b_and!211593)))

(declare-fun b!3191908 () Bool)

(declare-fun b_free!84585 () Bool)

(declare-fun b_next!85289 () Bool)

(assert (=> b!3191908 (= b_free!84585 (not b_next!85289))))

(declare-fun tp!1009246 () Bool)

(declare-fun b_and!211595 () Bool)

(assert (=> b!3191908 (= tp!1009246 b_and!211595)))

(declare-fun b_free!84587 () Bool)

(declare-fun b_next!85291 () Bool)

(assert (=> b!3191908 (= b_free!84587 (not b_next!85291))))

(declare-fun tp!1009248 () Bool)

(declare-fun b_and!211597 () Bool)

(assert (=> b!3191908 (= tp!1009248 b_and!211597)))

(declare-fun e!1989595 () Bool)

(declare-fun b!3191895 () Bool)

(declare-fun tp!1009241 () Bool)

(declare-fun e!1989592 () Bool)

(declare-datatypes ((C!20044 0))(
  ( (C!20045 (val!12070 Int)) )
))
(declare-datatypes ((Regex!9929 0))(
  ( (ElementMatch!9929 (c!535892 C!20044)) (Concat!15329 (regOne!20370 Regex!9929) (regTwo!20370 Regex!9929)) (EmptyExpr!9929) (Star!9929 (reg!10258 Regex!9929)) (EmptyLang!9929) (Union!9929 (regOne!20371 Regex!9929) (regTwo!20371 Regex!9929)) )
))
(declare-datatypes ((List!36072 0))(
  ( (Nil!35948) (Cons!35948 (h!41368 (_ BitVec 16)) (t!236235 List!36072)) )
))
(declare-datatypes ((TokenValue!5400 0))(
  ( (FloatLiteralValue!10800 (text!38245 List!36072)) (TokenValueExt!5399 (__x!23017 Int)) (Broken!27000 (value!167779 List!36072)) (Object!5523) (End!5400) (Def!5400) (Underscore!5400) (Match!5400) (Else!5400) (Error!5400) (Case!5400) (If!5400) (Extends!5400) (Abstract!5400) (Class!5400) (Val!5400) (DelimiterValue!10800 (del!5460 List!36072)) (KeywordValue!5406 (value!167780 List!36072)) (CommentValue!10800 (value!167781 List!36072)) (WhitespaceValue!10800 (value!167782 List!36072)) (IndentationValue!5400 (value!167783 List!36072)) (String!40333) (Int32!5400) (Broken!27001 (value!167784 List!36072)) (Boolean!5401) (Unit!50363) (OperatorValue!5403 (op!5460 List!36072)) (IdentifierValue!10800 (value!167785 List!36072)) (IdentifierValue!10801 (value!167786 List!36072)) (WhitespaceValue!10801 (value!167787 List!36072)) (True!10800) (False!10800) (Broken!27002 (value!167788 List!36072)) (Broken!27003 (value!167789 List!36072)) (True!10801) (RightBrace!5400) (RightBracket!5400) (Colon!5400) (Null!5400) (Comma!5400) (LeftBracket!5400) (False!10801) (LeftBrace!5400) (ImaginaryLiteralValue!5400 (text!38246 List!36072)) (StringLiteralValue!16200 (value!167790 List!36072)) (EOFValue!5400 (value!167791 List!36072)) (IdentValue!5400 (value!167792 List!36072)) (DelimiterValue!10801 (value!167793 List!36072)) (DedentValue!5400 (value!167794 List!36072)) (NewLineValue!5400 (value!167795 List!36072)) (IntegerValue!16200 (value!167796 (_ BitVec 32)) (text!38247 List!36072)) (IntegerValue!16201 (value!167797 Int) (text!38248 List!36072)) (Times!5400) (Or!5400) (Equal!5400) (Minus!5400) (Broken!27004 (value!167798 List!36072)) (And!5400) (Div!5400) (LessEqual!5400) (Mod!5400) (Concat!15330) (Not!5400) (Plus!5400) (SpaceValue!5400 (value!167799 List!36072)) (IntegerValue!16202 (value!167800 Int) (text!38249 List!36072)) (StringLiteralValue!16201 (text!38250 List!36072)) (FloatLiteralValue!10801 (text!38251 List!36072)) (BytesLiteralValue!5400 (value!167801 List!36072)) (CommentValue!10801 (value!167802 List!36072)) (StringLiteralValue!16202 (value!167803 List!36072)) (ErrorTokenValue!5400 (msg!5461 List!36072)) )
))
(declare-datatypes ((List!36073 0))(
  ( (Nil!35949) (Cons!35949 (h!41369 C!20044) (t!236236 List!36073)) )
))
(declare-datatypes ((IArray!21435 0))(
  ( (IArray!21436 (innerList!10775 List!36073)) )
))
(declare-datatypes ((Conc!10715 0))(
  ( (Node!10715 (left!27942 Conc!10715) (right!28272 Conc!10715) (csize!21660 Int) (cheight!10926 Int)) (Leaf!16911 (xs!13833 IArray!21435) (csize!21661 Int)) (Empty!10715) )
))
(declare-datatypes ((BalanceConc!21044 0))(
  ( (BalanceConc!21045 (c!535893 Conc!10715)) )
))
(declare-datatypes ((String!40334 0))(
  ( (String!40335 (value!167804 String)) )
))
(declare-datatypes ((TokenValueInjection!10228 0))(
  ( (TokenValueInjection!10229 (toValue!7234 Int) (toChars!7093 Int)) )
))
(declare-datatypes ((Rule!10140 0))(
  ( (Rule!10141 (regex!5170 Regex!9929) (tag!5688 String!40334) (isSeparator!5170 Bool) (transformation!5170 TokenValueInjection!10228)) )
))
(declare-datatypes ((List!36074 0))(
  ( (Nil!35950) (Cons!35950 (h!41370 Rule!10140) (t!236237 List!36074)) )
))
(declare-fun rules!2135 () List!36074)

(declare-fun inv!48789 (String!40334) Bool)

(declare-fun inv!48792 (TokenValueInjection!10228) Bool)

(assert (=> b!3191895 (= e!1989595 (and tp!1009241 (inv!48789 (tag!5688 (h!41370 rules!2135))) (inv!48792 (transformation!5170 (h!41370 rules!2135))) e!1989592))))

(declare-datatypes ((Token!9706 0))(
  ( (Token!9707 (value!167805 TokenValue!5400) (rule!7602 Rule!10140) (size!27087 Int) (originalCharacters!5884 List!36073)) )
))
(declare-fun separatorToken!241 () Token!9706)

(declare-fun e!1989597 () Bool)

(declare-fun tp!1009242 () Bool)

(declare-fun b!3191896 () Bool)

(declare-fun e!1989586 () Bool)

(declare-fun inv!21 (TokenValue!5400) Bool)

(assert (=> b!3191896 (= e!1989586 (and (inv!21 (value!167805 separatorToken!241)) e!1989597 tp!1009242))))

(declare-fun e!1989598 () Bool)

(declare-fun tp!1009250 () Bool)

(declare-fun b!3191897 () Bool)

(assert (=> b!3191897 (= e!1989597 (and tp!1009250 (inv!48789 (tag!5688 (rule!7602 separatorToken!241))) (inv!48792 (transformation!5170 (rule!7602 separatorToken!241))) e!1989598))))

(declare-fun res!1298410 () Bool)

(declare-fun e!1989588 () Bool)

(assert (=> start!299294 (=> (not res!1298410) (not e!1989588))))

(declare-datatypes ((LexerInterface!4759 0))(
  ( (LexerInterfaceExt!4756 (__x!23018 Int)) (Lexer!4757) )
))
(declare-fun thiss!18206 () LexerInterface!4759)

(get-info :version)

(assert (=> start!299294 (= res!1298410 ((_ is Lexer!4757) thiss!18206))))

(assert (=> start!299294 e!1989588))

(assert (=> start!299294 true))

(declare-fun e!1989593 () Bool)

(assert (=> start!299294 e!1989593))

(declare-fun e!1989584 () Bool)

(assert (=> start!299294 e!1989584))

(declare-fun inv!48793 (Token!9706) Bool)

(assert (=> start!299294 (and (inv!48793 separatorToken!241) e!1989586)))

(declare-fun b!3191898 () Bool)

(declare-fun res!1298409 () Bool)

(assert (=> b!3191898 (=> (not res!1298409) (not e!1989588))))

(declare-datatypes ((List!36075 0))(
  ( (Nil!35951) (Cons!35951 (h!41371 Token!9706) (t!236238 List!36075)) )
))
(declare-fun tokens!494 () List!36075)

(assert (=> b!3191898 (= res!1298409 (and (not ((_ is Nil!35951) tokens!494)) (not ((_ is Nil!35951) (t!236238 tokens!494)))))))

(assert (=> b!3191899 (= e!1989598 (and tp!1009243 tp!1009239))))

(declare-fun b!3191900 () Bool)

(declare-fun res!1298405 () Bool)

(assert (=> b!3191900 (=> (not res!1298405) (not e!1989588))))

(assert (=> b!3191900 (= res!1298405 (isSeparator!5170 (rule!7602 separatorToken!241)))))

(declare-fun b!3191901 () Bool)

(declare-fun res!1298407 () Bool)

(assert (=> b!3191901 (=> (not res!1298407) (not e!1989588))))

(declare-fun rulesInvariant!4156 (LexerInterface!4759 List!36074) Bool)

(assert (=> b!3191901 (= res!1298407 (rulesInvariant!4156 thiss!18206 rules!2135))))

(declare-fun b!3191902 () Bool)

(declare-fun tp!1009244 () Bool)

(assert (=> b!3191902 (= e!1989593 (and e!1989595 tp!1009244))))

(declare-fun e!1989590 () Bool)

(declare-fun tp!1009245 () Bool)

(declare-fun e!1989583 () Bool)

(declare-fun b!3191903 () Bool)

(assert (=> b!3191903 (= e!1989583 (and tp!1009245 (inv!48789 (tag!5688 (rule!7602 (h!41371 tokens!494)))) (inv!48792 (transformation!5170 (rule!7602 (h!41371 tokens!494)))) e!1989590))))

(assert (=> b!3191904 (= e!1989590 (and tp!1009240 tp!1009249))))

(declare-fun b!3191905 () Bool)

(declare-fun res!1298401 () Bool)

(assert (=> b!3191905 (=> (not res!1298401) (not e!1989588))))

(declare-fun rulesProduceIndividualToken!2251 (LexerInterface!4759 List!36074 Token!9706) Bool)

(assert (=> b!3191905 (= res!1298401 (rulesProduceIndividualToken!2251 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun e!1989596 () Bool)

(declare-fun b!3191906 () Bool)

(declare-fun tp!1009247 () Bool)

(assert (=> b!3191906 (= e!1989584 (and (inv!48793 (h!41371 tokens!494)) e!1989596 tp!1009247))))

(declare-fun b!3191907 () Bool)

(declare-fun res!1298400 () Bool)

(assert (=> b!3191907 (=> (not res!1298400) (not e!1989588))))

(declare-datatypes ((IArray!21437 0))(
  ( (IArray!21438 (innerList!10776 List!36075)) )
))
(declare-datatypes ((Conc!10716 0))(
  ( (Node!10716 (left!27943 Conc!10716) (right!28273 Conc!10716) (csize!21662 Int) (cheight!10927 Int)) (Leaf!16912 (xs!13834 IArray!21437) (csize!21663 Int)) (Empty!10716) )
))
(declare-datatypes ((BalanceConc!21046 0))(
  ( (BalanceConc!21047 (c!535894 Conc!10716)) )
))
(declare-fun rulesProduceEachTokenIndividually!1210 (LexerInterface!4759 List!36074 BalanceConc!21046) Bool)

(declare-fun seqFromList!3411 (List!36075) BalanceConc!21046)

(assert (=> b!3191907 (= res!1298400 (rulesProduceEachTokenIndividually!1210 thiss!18206 rules!2135 (seqFromList!3411 tokens!494)))))

(assert (=> b!3191908 (= e!1989592 (and tp!1009246 tp!1009248))))

(declare-fun b!3191909 () Bool)

(declare-fun res!1298403 () Bool)

(assert (=> b!3191909 (=> (not res!1298403) (not e!1989588))))

(declare-fun lambda!116801 () Int)

(declare-fun forall!7302 (List!36075 Int) Bool)

(assert (=> b!3191909 (= res!1298403 (forall!7302 tokens!494 lambda!116801))))

(declare-fun b!3191910 () Bool)

(declare-fun e!1989591 () Bool)

(assert (=> b!3191910 (= e!1989591 true)))

(declare-fun lt!1075154 () BalanceConc!21044)

(declare-fun lt!1075152 () List!36073)

(declare-fun seqFromList!3412 (List!36073) BalanceConc!21044)

(assert (=> b!3191910 (= lt!1075154 (seqFromList!3412 lt!1075152))))

(declare-fun b!3191911 () Bool)

(declare-fun res!1298406 () Bool)

(assert (=> b!3191911 (=> res!1298406 e!1989591)))

(assert (=> b!3191911 (= res!1298406 (not (rulesProduceIndividualToken!2251 thiss!18206 rules!2135 (h!41371 tokens!494))))))

(declare-fun b!3191912 () Bool)

(declare-fun tp!1009238 () Bool)

(assert (=> b!3191912 (= e!1989596 (and (inv!21 (value!167805 (h!41371 tokens!494))) e!1989583 tp!1009238))))

(declare-fun b!3191913 () Bool)

(declare-fun res!1298411 () Bool)

(assert (=> b!3191913 (=> (not res!1298411) (not e!1989588))))

(declare-fun sepAndNonSepRulesDisjointChars!1364 (List!36074 List!36074) Bool)

(assert (=> b!3191913 (= res!1298411 (sepAndNonSepRulesDisjointChars!1364 rules!2135 rules!2135))))

(declare-fun b!3191914 () Bool)

(declare-fun e!1989585 () Bool)

(assert (=> b!3191914 (= e!1989585 e!1989591)))

(declare-fun res!1298404 () Bool)

(assert (=> b!3191914 (=> res!1298404 e!1989591)))

(declare-fun lt!1075151 () List!36073)

(declare-fun lt!1075150 () List!36073)

(assert (=> b!3191914 (= res!1298404 (or (not (= lt!1075150 lt!1075152)) (not (= lt!1075151 lt!1075152))))))

(declare-fun list!12767 (BalanceConc!21044) List!36073)

(declare-fun charsOf!3186 (Token!9706) BalanceConc!21044)

(assert (=> b!3191914 (= lt!1075152 (list!12767 (charsOf!3186 (h!41371 tokens!494))))))

(declare-fun b!3191915 () Bool)

(declare-fun res!1298408 () Bool)

(assert (=> b!3191915 (=> (not res!1298408) (not e!1989588))))

(declare-fun isEmpty!20053 (List!36074) Bool)

(assert (=> b!3191915 (= res!1298408 (not (isEmpty!20053 rules!2135)))))

(declare-fun b!3191916 () Bool)

(assert (=> b!3191916 (= e!1989588 (not e!1989585))))

(declare-fun res!1298402 () Bool)

(assert (=> b!3191916 (=> res!1298402 e!1989585)))

(assert (=> b!3191916 (= res!1298402 (not (= lt!1075151 lt!1075150)))))

(declare-fun printList!1309 (LexerInterface!4759 List!36075) List!36073)

(assert (=> b!3191916 (= lt!1075150 (printList!1309 thiss!18206 (Cons!35951 (h!41371 tokens!494) Nil!35951)))))

(declare-fun lt!1075153 () BalanceConc!21044)

(assert (=> b!3191916 (= lt!1075151 (list!12767 lt!1075153))))

(declare-fun lt!1075149 () BalanceConc!21046)

(declare-fun printTailRec!1256 (LexerInterface!4759 BalanceConc!21046 Int BalanceConc!21044) BalanceConc!21044)

(assert (=> b!3191916 (= lt!1075153 (printTailRec!1256 thiss!18206 lt!1075149 0 (BalanceConc!21045 Empty!10715)))))

(declare-fun print!1824 (LexerInterface!4759 BalanceConc!21046) BalanceConc!21044)

(assert (=> b!3191916 (= lt!1075153 (print!1824 thiss!18206 lt!1075149))))

(declare-fun singletonSeq!2266 (Token!9706) BalanceConc!21046)

(assert (=> b!3191916 (= lt!1075149 (singletonSeq!2266 (h!41371 tokens!494)))))

(assert (= (and start!299294 res!1298410) b!3191915))

(assert (= (and b!3191915 res!1298408) b!3191901))

(assert (= (and b!3191901 res!1298407) b!3191907))

(assert (= (and b!3191907 res!1298400) b!3191905))

(assert (= (and b!3191905 res!1298401) b!3191900))

(assert (= (and b!3191900 res!1298405) b!3191909))

(assert (= (and b!3191909 res!1298403) b!3191913))

(assert (= (and b!3191913 res!1298411) b!3191898))

(assert (= (and b!3191898 res!1298409) b!3191916))

(assert (= (and b!3191916 (not res!1298402)) b!3191914))

(assert (= (and b!3191914 (not res!1298404)) b!3191911))

(assert (= (and b!3191911 (not res!1298406)) b!3191910))

(assert (= b!3191895 b!3191908))

(assert (= b!3191902 b!3191895))

(assert (= (and start!299294 ((_ is Cons!35950) rules!2135)) b!3191902))

(assert (= b!3191903 b!3191904))

(assert (= b!3191912 b!3191903))

(assert (= b!3191906 b!3191912))

(assert (= (and start!299294 ((_ is Cons!35951) tokens!494)) b!3191906))

(assert (= b!3191897 b!3191899))

(assert (= b!3191896 b!3191897))

(assert (= start!299294 b!3191896))

(declare-fun m!3451127 () Bool)

(assert (=> b!3191911 m!3451127))

(declare-fun m!3451129 () Bool)

(assert (=> b!3191913 m!3451129))

(declare-fun m!3451131 () Bool)

(assert (=> b!3191916 m!3451131))

(declare-fun m!3451133 () Bool)

(assert (=> b!3191916 m!3451133))

(declare-fun m!3451135 () Bool)

(assert (=> b!3191916 m!3451135))

(declare-fun m!3451137 () Bool)

(assert (=> b!3191916 m!3451137))

(declare-fun m!3451139 () Bool)

(assert (=> b!3191916 m!3451139))

(declare-fun m!3451141 () Bool)

(assert (=> b!3191903 m!3451141))

(declare-fun m!3451143 () Bool)

(assert (=> b!3191903 m!3451143))

(declare-fun m!3451145 () Bool)

(assert (=> b!3191915 m!3451145))

(declare-fun m!3451147 () Bool)

(assert (=> b!3191906 m!3451147))

(declare-fun m!3451149 () Bool)

(assert (=> b!3191907 m!3451149))

(assert (=> b!3191907 m!3451149))

(declare-fun m!3451151 () Bool)

(assert (=> b!3191907 m!3451151))

(declare-fun m!3451153 () Bool)

(assert (=> b!3191914 m!3451153))

(assert (=> b!3191914 m!3451153))

(declare-fun m!3451155 () Bool)

(assert (=> b!3191914 m!3451155))

(declare-fun m!3451157 () Bool)

(assert (=> start!299294 m!3451157))

(declare-fun m!3451159 () Bool)

(assert (=> b!3191901 m!3451159))

(declare-fun m!3451161 () Bool)

(assert (=> b!3191912 m!3451161))

(declare-fun m!3451163 () Bool)

(assert (=> b!3191910 m!3451163))

(declare-fun m!3451165 () Bool)

(assert (=> b!3191895 m!3451165))

(declare-fun m!3451167 () Bool)

(assert (=> b!3191895 m!3451167))

(declare-fun m!3451169 () Bool)

(assert (=> b!3191909 m!3451169))

(declare-fun m!3451171 () Bool)

(assert (=> b!3191896 m!3451171))

(declare-fun m!3451173 () Bool)

(assert (=> b!3191905 m!3451173))

(declare-fun m!3451175 () Bool)

(assert (=> b!3191897 m!3451175))

(declare-fun m!3451177 () Bool)

(assert (=> b!3191897 m!3451177))

(check-sat b_and!211595 (not b!3191910) b_and!211597 (not start!299294) b_and!211589 (not b_next!85283) (not b!3191909) (not b!3191895) (not b_next!85289) (not b!3191897) (not b!3191903) (not b!3191915) b_and!211591 (not b!3191896) (not b!3191911) (not b_next!85281) (not b!3191901) (not b!3191912) (not b_next!85287) (not b!3191906) (not b!3191916) (not b!3191902) (not b!3191914) (not b!3191913) (not b_next!85285) b_and!211587 b_and!211593 (not b!3191907) (not b!3191905) (not b_next!85291))
(check-sat b_and!211595 b_and!211597 b_and!211589 (not b_next!85281) (not b_next!85287) (not b_next!85283) (not b_next!85285) (not b_next!85289) b_and!211591 (not b_next!85291) b_and!211587 b_and!211593)
