; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!316814 () Bool)

(assert start!316814)

(declare-fun b!3395728 () Bool)

(declare-fun b_free!88857 () Bool)

(declare-fun b_next!89561 () Bool)

(assert (=> b!3395728 (= b_free!88857 (not b_next!89561))))

(declare-fun tp!1059959 () Bool)

(declare-fun b_and!236663 () Bool)

(assert (=> b!3395728 (= tp!1059959 b_and!236663)))

(declare-fun b_free!88859 () Bool)

(declare-fun b_next!89563 () Bool)

(assert (=> b!3395728 (= b_free!88859 (not b_next!89563))))

(declare-fun tp!1059953 () Bool)

(declare-fun b_and!236665 () Bool)

(assert (=> b!3395728 (= tp!1059953 b_and!236665)))

(declare-fun b!3395729 () Bool)

(declare-fun b_free!88861 () Bool)

(declare-fun b_next!89565 () Bool)

(assert (=> b!3395729 (= b_free!88861 (not b_next!89565))))

(declare-fun tp!1059950 () Bool)

(declare-fun b_and!236667 () Bool)

(assert (=> b!3395729 (= tp!1059950 b_and!236667)))

(declare-fun b_free!88863 () Bool)

(declare-fun b_next!89567 () Bool)

(assert (=> b!3395729 (= b_free!88863 (not b_next!89567))))

(declare-fun tp!1059955 () Bool)

(declare-fun b_and!236669 () Bool)

(assert (=> b!3395729 (= tp!1059955 b_and!236669)))

(declare-fun b!3395738 () Bool)

(declare-fun b_free!88865 () Bool)

(declare-fun b_next!89569 () Bool)

(assert (=> b!3395738 (= b_free!88865 (not b_next!89569))))

(declare-fun tp!1059961 () Bool)

(declare-fun b_and!236671 () Bool)

(assert (=> b!3395738 (= tp!1059961 b_and!236671)))

(declare-fun b_free!88867 () Bool)

(declare-fun b_next!89571 () Bool)

(assert (=> b!3395738 (= b_free!88867 (not b_next!89571))))

(declare-fun tp!1059952 () Bool)

(declare-fun b_and!236673 () Bool)

(assert (=> b!3395738 (= tp!1059952 b_and!236673)))

(declare-fun b!3395726 () Bool)

(declare-fun e!2107845 () Bool)

(declare-fun e!2107858 () Bool)

(assert (=> b!3395726 (= e!2107845 e!2107858)))

(declare-fun res!1373917 () Bool)

(assert (=> b!3395726 (=> res!1373917 e!2107858)))

(declare-datatypes ((C!20488 0))(
  ( (C!20489 (val!12292 Int)) )
))
(declare-datatypes ((List!37068 0))(
  ( (Nil!36944) (Cons!36944 (h!42364 C!20488) (t!265197 List!37068)) )
))
(declare-fun lt!1154325 () List!37068)

(declare-fun lt!1154328 () List!37068)

(declare-fun lt!1154334 () List!37068)

(assert (=> b!3395726 (= res!1373917 (or (not (= lt!1154334 lt!1154328)) (not (= lt!1154325 lt!1154328))))))

(declare-datatypes ((Regex!10151 0))(
  ( (ElementMatch!10151 (c!578812 C!20488)) (Concat!15773 (regOne!20814 Regex!10151) (regTwo!20814 Regex!10151)) (EmptyExpr!10151) (Star!10151 (reg!10480 Regex!10151)) (EmptyLang!10151) (Union!10151 (regOne!20815 Regex!10151) (regTwo!20815 Regex!10151)) )
))
(declare-datatypes ((List!37069 0))(
  ( (Nil!36945) (Cons!36945 (h!42365 (_ BitVec 16)) (t!265198 List!37069)) )
))
(declare-datatypes ((TokenValue!5622 0))(
  ( (FloatLiteralValue!11244 (text!39799 List!37069)) (TokenValueExt!5621 (__x!23461 Int)) (Broken!28110 (value!174106 List!37069)) (Object!5745) (End!5622) (Def!5622) (Underscore!5622) (Match!5622) (Else!5622) (Error!5622) (Case!5622) (If!5622) (Extends!5622) (Abstract!5622) (Class!5622) (Val!5622) (DelimiterValue!11244 (del!5682 List!37069)) (KeywordValue!5628 (value!174107 List!37069)) (CommentValue!11244 (value!174108 List!37069)) (WhitespaceValue!11244 (value!174109 List!37069)) (IndentationValue!5622 (value!174110 List!37069)) (String!41443) (Int32!5622) (Broken!28111 (value!174111 List!37069)) (Boolean!5623) (Unit!52115) (OperatorValue!5625 (op!5682 List!37069)) (IdentifierValue!11244 (value!174112 List!37069)) (IdentifierValue!11245 (value!174113 List!37069)) (WhitespaceValue!11245 (value!174114 List!37069)) (True!11244) (False!11244) (Broken!28112 (value!174115 List!37069)) (Broken!28113 (value!174116 List!37069)) (True!11245) (RightBrace!5622) (RightBracket!5622) (Colon!5622) (Null!5622) (Comma!5622) (LeftBracket!5622) (False!11245) (LeftBrace!5622) (ImaginaryLiteralValue!5622 (text!39800 List!37069)) (StringLiteralValue!16866 (value!174117 List!37069)) (EOFValue!5622 (value!174118 List!37069)) (IdentValue!5622 (value!174119 List!37069)) (DelimiterValue!11245 (value!174120 List!37069)) (DedentValue!5622 (value!174121 List!37069)) (NewLineValue!5622 (value!174122 List!37069)) (IntegerValue!16866 (value!174123 (_ BitVec 32)) (text!39801 List!37069)) (IntegerValue!16867 (value!174124 Int) (text!39802 List!37069)) (Times!5622) (Or!5622) (Equal!5622) (Minus!5622) (Broken!28114 (value!174125 List!37069)) (And!5622) (Div!5622) (LessEqual!5622) (Mod!5622) (Concat!15774) (Not!5622) (Plus!5622) (SpaceValue!5622 (value!174126 List!37069)) (IntegerValue!16868 (value!174127 Int) (text!39803 List!37069)) (StringLiteralValue!16867 (text!39804 List!37069)) (FloatLiteralValue!11245 (text!39805 List!37069)) (BytesLiteralValue!5622 (value!174128 List!37069)) (CommentValue!11245 (value!174129 List!37069)) (StringLiteralValue!16868 (value!174130 List!37069)) (ErrorTokenValue!5622 (msg!5683 List!37069)) )
))
(declare-datatypes ((IArray!22323 0))(
  ( (IArray!22324 (innerList!11219 List!37068)) )
))
(declare-datatypes ((Conc!11159 0))(
  ( (Node!11159 (left!28801 Conc!11159) (right!29131 Conc!11159) (csize!22548 Int) (cheight!11370 Int)) (Leaf!17466 (xs!14317 IArray!22323) (csize!22549 Int)) (Empty!11159) )
))
(declare-datatypes ((BalanceConc!21932 0))(
  ( (BalanceConc!21933 (c!578813 Conc!11159)) )
))
(declare-datatypes ((String!41444 0))(
  ( (String!41445 (value!174131 String)) )
))
(declare-datatypes ((TokenValueInjection!10672 0))(
  ( (TokenValueInjection!10673 (toValue!7588 Int) (toChars!7447 Int)) )
))
(declare-datatypes ((Rule!10584 0))(
  ( (Rule!10585 (regex!5392 Regex!10151) (tag!5976 String!41444) (isSeparator!5392 Bool) (transformation!5392 TokenValueInjection!10672)) )
))
(declare-datatypes ((Token!10150 0))(
  ( (Token!10151 (value!174132 TokenValue!5622) (rule!7952 Rule!10584) (size!27961 Int) (originalCharacters!6106 List!37068)) )
))
(declare-datatypes ((List!37070 0))(
  ( (Nil!36946) (Cons!36946 (h!42366 Token!10150) (t!265199 List!37070)) )
))
(declare-fun tokens!494 () List!37070)

(declare-fun list!13381 (BalanceConc!21932) List!37068)

(declare-fun charsOf!3406 (Token!10150) BalanceConc!21932)

(assert (=> b!3395726 (= lt!1154328 (list!13381 (charsOf!3406 (h!42366 tokens!494))))))

(declare-fun b!3395727 () Bool)

(declare-fun res!1373922 () Bool)

(assert (=> b!3395727 (=> res!1373922 e!2107858)))

(declare-datatypes ((LexerInterface!4981 0))(
  ( (LexerInterfaceExt!4978 (__x!23462 Int)) (Lexer!4979) )
))
(declare-fun thiss!18206 () LexerInterface!4981)

(declare-datatypes ((List!37071 0))(
  ( (Nil!36947) (Cons!36947 (h!42367 Rule!10584) (t!265200 List!37071)) )
))
(declare-fun rules!2135 () List!37071)

(declare-fun rulesProduceIndividualToken!2473 (LexerInterface!4981 List!37071 Token!10150) Bool)

(assert (=> b!3395727 (= res!1373922 (not (rulesProduceIndividualToken!2473 thiss!18206 rules!2135 (h!42366 tokens!494))))))

(declare-fun e!2107856 () Bool)

(assert (=> b!3395728 (= e!2107856 (and tp!1059959 tp!1059953))))

(declare-fun e!2107855 () Bool)

(assert (=> b!3395729 (= e!2107855 (and tp!1059950 tp!1059955))))

(declare-fun b!3395730 () Bool)

(declare-fun e!2107840 () Bool)

(declare-fun e!2107853 () Bool)

(assert (=> b!3395730 (= e!2107840 e!2107853)))

(declare-fun res!1373919 () Bool)

(assert (=> b!3395730 (=> res!1373919 e!2107853)))

(declare-fun separatorToken!241 () Token!10150)

(declare-fun lt!1154331 () List!37068)

(declare-fun lt!1154333 () List!37068)

(declare-fun ++!9047 (List!37068 List!37068) List!37068)

(declare-fun printWithSeparatorTokenList!268 (LexerInterface!4981 List!37070 Token!10150) List!37068)

(assert (=> b!3395730 (= res!1373919 (not (= lt!1154331 (++!9047 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333) (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241)))))))

(declare-fun lt!1154327 () List!37068)

(assert (=> b!3395730 (= lt!1154327 (++!9047 lt!1154333 lt!1154331))))

(assert (=> b!3395730 (= lt!1154333 (list!13381 (charsOf!3406 separatorToken!241)))))

(assert (=> b!3395730 (= lt!1154331 (printWithSeparatorTokenList!268 thiss!18206 (t!265199 tokens!494) separatorToken!241))))

(declare-fun lt!1154326 () List!37068)

(assert (=> b!3395730 (= lt!1154326 (printWithSeparatorTokenList!268 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun e!2107852 () Bool)

(declare-fun tp!1059962 () Bool)

(declare-fun b!3395731 () Bool)

(declare-fun inv!50033 (String!41444) Bool)

(declare-fun inv!50036 (TokenValueInjection!10672) Bool)

(assert (=> b!3395731 (= e!2107852 (and tp!1059962 (inv!50033 (tag!5976 (rule!7952 (h!42366 tokens!494)))) (inv!50036 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) e!2107856))))

(declare-fun b!3395732 () Bool)

(declare-fun e!2107848 () Bool)

(declare-fun e!2107841 () Bool)

(declare-fun tp!1059956 () Bool)

(assert (=> b!3395732 (= e!2107848 (and e!2107841 tp!1059956))))

(declare-fun b!3395733 () Bool)

(declare-fun res!1373921 () Bool)

(declare-fun e!2107854 () Bool)

(assert (=> b!3395733 (=> (not res!1373921) (not e!2107854))))

(assert (=> b!3395733 (= res!1373921 (isSeparator!5392 (rule!7952 separatorToken!241)))))

(declare-fun e!2107851 () Bool)

(declare-fun e!2107849 () Bool)

(declare-fun b!3395734 () Bool)

(declare-fun tp!1059960 () Bool)

(declare-fun inv!50037 (Token!10150) Bool)

(assert (=> b!3395734 (= e!2107851 (and (inv!50037 (h!42366 tokens!494)) e!2107849 tp!1059960))))

(declare-fun b!3395735 () Bool)

(assert (=> b!3395735 (= e!2107854 (not e!2107845))))

(declare-fun res!1373918 () Bool)

(assert (=> b!3395735 (=> res!1373918 e!2107845)))

(assert (=> b!3395735 (= res!1373918 (not (= lt!1154325 lt!1154334)))))

(declare-fun printList!1529 (LexerInterface!4981 List!37070) List!37068)

(assert (=> b!3395735 (= lt!1154334 (printList!1529 thiss!18206 (Cons!36946 (h!42366 tokens!494) Nil!36946)))))

(declare-fun lt!1154330 () BalanceConc!21932)

(assert (=> b!3395735 (= lt!1154325 (list!13381 lt!1154330))))

(declare-datatypes ((IArray!22325 0))(
  ( (IArray!22326 (innerList!11220 List!37070)) )
))
(declare-datatypes ((Conc!11160 0))(
  ( (Node!11160 (left!28802 Conc!11160) (right!29132 Conc!11160) (csize!22550 Int) (cheight!11371 Int)) (Leaf!17467 (xs!14318 IArray!22325) (csize!22551 Int)) (Empty!11160) )
))
(declare-datatypes ((BalanceConc!21934 0))(
  ( (BalanceConc!21935 (c!578814 Conc!11160)) )
))
(declare-fun lt!1154322 () BalanceConc!21934)

(declare-fun printTailRec!1476 (LexerInterface!4981 BalanceConc!21934 Int BalanceConc!21932) BalanceConc!21932)

(assert (=> b!3395735 (= lt!1154330 (printTailRec!1476 thiss!18206 lt!1154322 0 (BalanceConc!21933 Empty!11159)))))

(declare-fun print!2046 (LexerInterface!4981 BalanceConc!21934) BalanceConc!21932)

(assert (=> b!3395735 (= lt!1154330 (print!2046 thiss!18206 lt!1154322))))

(declare-fun singletonSeq!2488 (Token!10150) BalanceConc!21934)

(assert (=> b!3395735 (= lt!1154322 (singletonSeq!2488 (h!42366 tokens!494)))))

(declare-fun b!3395736 () Bool)

(declare-fun res!1373910 () Bool)

(assert (=> b!3395736 (=> res!1373910 e!2107858)))

(declare-fun isEmpty!21202 (BalanceConc!21934) Bool)

(declare-datatypes ((tuple2!36566 0))(
  ( (tuple2!36567 (_1!21417 BalanceConc!21934) (_2!21417 BalanceConc!21932)) )
))
(declare-fun lex!2307 (LexerInterface!4981 List!37071 BalanceConc!21932) tuple2!36566)

(declare-fun seqFromList!3837 (List!37068) BalanceConc!21932)

(assert (=> b!3395736 (= res!1373910 (isEmpty!21202 (_1!21417 (lex!2307 thiss!18206 rules!2135 (seqFromList!3837 lt!1154328)))))))

(declare-fun b!3395737 () Bool)

(declare-fun e!2107838 () Bool)

(assert (=> b!3395737 (= e!2107853 e!2107838)))

(declare-fun res!1373908 () Bool)

(assert (=> b!3395737 (=> res!1373908 e!2107838)))

(declare-fun lt!1154321 () List!37068)

(assert (=> b!3395737 (= res!1373908 (not (= lt!1154326 lt!1154321)))))

(assert (=> b!3395737 (= lt!1154321 (++!9047 (++!9047 lt!1154328 lt!1154333) lt!1154331))))

(declare-fun e!2107850 () Bool)

(assert (=> b!3395738 (= e!2107850 (and tp!1059961 tp!1059952))))

(declare-fun b!3395739 () Bool)

(declare-fun res!1373911 () Bool)

(assert (=> b!3395739 (=> (not res!1373911) (not e!2107854))))

(declare-fun rulesInvariant!4378 (LexerInterface!4981 List!37071) Bool)

(assert (=> b!3395739 (= res!1373911 (rulesInvariant!4378 thiss!18206 rules!2135))))

(declare-fun b!3395740 () Bool)

(declare-fun res!1373909 () Bool)

(assert (=> b!3395740 (=> (not res!1373909) (not e!2107854))))

(get-info :version)

(assert (=> b!3395740 (= res!1373909 (and (not ((_ is Nil!36946) tokens!494)) (not ((_ is Nil!36946) (t!265199 tokens!494)))))))

(declare-fun b!3395741 () Bool)

(declare-fun res!1373916 () Bool)

(assert (=> b!3395741 (=> (not res!1373916) (not e!2107854))))

(declare-fun lambda!120801 () Int)

(declare-fun forall!7799 (List!37070 Int) Bool)

(assert (=> b!3395741 (= res!1373916 (forall!7799 tokens!494 lambda!120801))))

(declare-fun tp!1059958 () Bool)

(declare-fun e!2107839 () Bool)

(declare-fun b!3395742 () Bool)

(assert (=> b!3395742 (= e!2107839 (and tp!1059958 (inv!50033 (tag!5976 (rule!7952 separatorToken!241))) (inv!50036 (transformation!5392 (rule!7952 separatorToken!241))) e!2107850))))

(declare-fun b!3395743 () Bool)

(declare-fun e!2107844 () Bool)

(declare-fun tp!1059954 () Bool)

(declare-fun inv!21 (TokenValue!5622) Bool)

(assert (=> b!3395743 (= e!2107844 (and (inv!21 (value!174132 separatorToken!241)) e!2107839 tp!1059954))))

(declare-fun b!3395744 () Bool)

(declare-fun e!2107843 () Bool)

(declare-fun contains!6783 (List!37070 Token!10150) Bool)

(assert (=> b!3395744 (= e!2107843 (contains!6783 tokens!494 (h!42366 tokens!494)))))

(declare-fun tp!1059951 () Bool)

(declare-fun b!3395745 () Bool)

(assert (=> b!3395745 (= e!2107849 (and (inv!21 (value!174132 (h!42366 tokens!494))) e!2107852 tp!1059951))))

(declare-fun tp!1059957 () Bool)

(declare-fun b!3395746 () Bool)

(assert (=> b!3395746 (= e!2107841 (and tp!1059957 (inv!50033 (tag!5976 (h!42367 rules!2135))) (inv!50036 (transformation!5392 (h!42367 rules!2135))) e!2107855))))

(declare-fun b!3395747 () Bool)

(declare-fun res!1373923 () Bool)

(assert (=> b!3395747 (=> (not res!1373923) (not e!2107854))))

(declare-fun sepAndNonSepRulesDisjointChars!1586 (List!37071 List!37071) Bool)

(assert (=> b!3395747 (= res!1373923 (sepAndNonSepRulesDisjointChars!1586 rules!2135 rules!2135))))

(declare-fun b!3395748 () Bool)

(declare-fun res!1373914 () Bool)

(assert (=> b!3395748 (=> (not res!1373914) (not e!2107854))))

(declare-fun rulesProduceEachTokenIndividually!1432 (LexerInterface!4981 List!37071 BalanceConc!21934) Bool)

(declare-fun seqFromList!3838 (List!37070) BalanceConc!21934)

(assert (=> b!3395748 (= res!1373914 (rulesProduceEachTokenIndividually!1432 thiss!18206 rules!2135 (seqFromList!3838 tokens!494)))))

(declare-fun b!3395749 () Bool)

(declare-fun res!1373915 () Bool)

(assert (=> b!3395749 (=> (not res!1373915) (not e!2107854))))

(declare-fun isEmpty!21203 (List!37071) Bool)

(assert (=> b!3395749 (= res!1373915 (not (isEmpty!21203 rules!2135)))))

(declare-fun b!3395750 () Bool)

(declare-fun res!1373913 () Bool)

(assert (=> b!3395750 (=> (not res!1373913) (not e!2107854))))

(assert (=> b!3395750 (= res!1373913 (rulesProduceIndividualToken!2473 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun res!1373924 () Bool)

(assert (=> start!316814 (=> (not res!1373924) (not e!2107854))))

(assert (=> start!316814 (= res!1373924 ((_ is Lexer!4979) thiss!18206))))

(assert (=> start!316814 e!2107854))

(assert (=> start!316814 true))

(assert (=> start!316814 e!2107848))

(assert (=> start!316814 e!2107851))

(assert (=> start!316814 (and (inv!50037 separatorToken!241) e!2107844)))

(declare-fun b!3395751 () Bool)

(assert (=> b!3395751 (= e!2107838 e!2107843)))

(declare-fun res!1373920 () Bool)

(assert (=> b!3395751 (=> res!1373920 e!2107843)))

(declare-fun lt!1154324 () List!37068)

(assert (=> b!3395751 (= res!1373920 (not (= lt!1154326 lt!1154324)))))

(assert (=> b!3395751 (= lt!1154321 lt!1154324)))

(assert (=> b!3395751 (= lt!1154324 (++!9047 lt!1154328 lt!1154327))))

(declare-datatypes ((Unit!52116 0))(
  ( (Unit!52117) )
))
(declare-fun lt!1154332 () Unit!52116)

(declare-fun lemmaConcatAssociativity!1892 (List!37068 List!37068 List!37068) Unit!52116)

(assert (=> b!3395751 (= lt!1154332 (lemmaConcatAssociativity!1892 lt!1154328 lt!1154333 lt!1154331))))

(declare-fun b!3395752 () Bool)

(assert (=> b!3395752 (= e!2107858 e!2107840)))

(declare-fun res!1373912 () Bool)

(assert (=> b!3395752 (=> res!1373912 e!2107840)))

(assert (=> b!3395752 (= res!1373912 (or (isSeparator!5392 (rule!7952 (h!42366 tokens!494))) (isSeparator!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))))))

(declare-fun lt!1154323 () Unit!52116)

(declare-fun forallContained!1339 (List!37070 Int Token!10150) Unit!52116)

(assert (=> b!3395752 (= lt!1154323 (forallContained!1339 tokens!494 lambda!120801 (h!42366 (t!265199 tokens!494))))))

(declare-fun lt!1154329 () Unit!52116)

(assert (=> b!3395752 (= lt!1154329 (forallContained!1339 tokens!494 lambda!120801 (h!42366 tokens!494)))))

(assert (= (and start!316814 res!1373924) b!3395749))

(assert (= (and b!3395749 res!1373915) b!3395739))

(assert (= (and b!3395739 res!1373911) b!3395748))

(assert (= (and b!3395748 res!1373914) b!3395750))

(assert (= (and b!3395750 res!1373913) b!3395733))

(assert (= (and b!3395733 res!1373921) b!3395741))

(assert (= (and b!3395741 res!1373916) b!3395747))

(assert (= (and b!3395747 res!1373923) b!3395740))

(assert (= (and b!3395740 res!1373909) b!3395735))

(assert (= (and b!3395735 (not res!1373918)) b!3395726))

(assert (= (and b!3395726 (not res!1373917)) b!3395727))

(assert (= (and b!3395727 (not res!1373922)) b!3395736))

(assert (= (and b!3395736 (not res!1373910)) b!3395752))

(assert (= (and b!3395752 (not res!1373912)) b!3395730))

(assert (= (and b!3395730 (not res!1373919)) b!3395737))

(assert (= (and b!3395737 (not res!1373908)) b!3395751))

(assert (= (and b!3395751 (not res!1373920)) b!3395744))

(assert (= b!3395746 b!3395729))

(assert (= b!3395732 b!3395746))

(assert (= (and start!316814 ((_ is Cons!36947) rules!2135)) b!3395732))

(assert (= b!3395731 b!3395728))

(assert (= b!3395745 b!3395731))

(assert (= b!3395734 b!3395745))

(assert (= (and start!316814 ((_ is Cons!36946) tokens!494)) b!3395734))

(assert (= b!3395742 b!3395738))

(assert (= b!3395743 b!3395742))

(assert (= start!316814 b!3395743))

(declare-fun m!3765671 () Bool)

(assert (=> b!3395743 m!3765671))

(declare-fun m!3765673 () Bool)

(assert (=> b!3395751 m!3765673))

(declare-fun m!3765675 () Bool)

(assert (=> b!3395751 m!3765675))

(declare-fun m!3765677 () Bool)

(assert (=> b!3395745 m!3765677))

(declare-fun m!3765679 () Bool)

(assert (=> b!3395737 m!3765679))

(assert (=> b!3395737 m!3765679))

(declare-fun m!3765681 () Bool)

(assert (=> b!3395737 m!3765681))

(declare-fun m!3765683 () Bool)

(assert (=> b!3395748 m!3765683))

(assert (=> b!3395748 m!3765683))

(declare-fun m!3765685 () Bool)

(assert (=> b!3395748 m!3765685))

(declare-fun m!3765687 () Bool)

(assert (=> b!3395727 m!3765687))

(declare-fun m!3765689 () Bool)

(assert (=> b!3395746 m!3765689))

(declare-fun m!3765691 () Bool)

(assert (=> b!3395746 m!3765691))

(declare-fun m!3765693 () Bool)

(assert (=> b!3395741 m!3765693))

(declare-fun m!3765695 () Bool)

(assert (=> start!316814 m!3765695))

(declare-fun m!3765697 () Bool)

(assert (=> b!3395750 m!3765697))

(declare-fun m!3765699 () Bool)

(assert (=> b!3395739 m!3765699))

(declare-fun m!3765701 () Bool)

(assert (=> b!3395742 m!3765701))

(declare-fun m!3765703 () Bool)

(assert (=> b!3395742 m!3765703))

(declare-fun m!3765705 () Bool)

(assert (=> b!3395744 m!3765705))

(declare-fun m!3765707 () Bool)

(assert (=> b!3395736 m!3765707))

(assert (=> b!3395736 m!3765707))

(declare-fun m!3765709 () Bool)

(assert (=> b!3395736 m!3765709))

(declare-fun m!3765711 () Bool)

(assert (=> b!3395736 m!3765711))

(declare-fun m!3765713 () Bool)

(assert (=> b!3395735 m!3765713))

(declare-fun m!3765715 () Bool)

(assert (=> b!3395735 m!3765715))

(declare-fun m!3765717 () Bool)

(assert (=> b!3395735 m!3765717))

(declare-fun m!3765719 () Bool)

(assert (=> b!3395735 m!3765719))

(declare-fun m!3765721 () Bool)

(assert (=> b!3395735 m!3765721))

(declare-fun m!3765723 () Bool)

(assert (=> b!3395734 m!3765723))

(declare-fun m!3765725 () Bool)

(assert (=> b!3395749 m!3765725))

(declare-fun m!3765727 () Bool)

(assert (=> b!3395731 m!3765727))

(declare-fun m!3765729 () Bool)

(assert (=> b!3395731 m!3765729))

(declare-fun m!3765731 () Bool)

(assert (=> b!3395730 m!3765731))

(declare-fun m!3765733 () Bool)

(assert (=> b!3395730 m!3765733))

(declare-fun m!3765735 () Bool)

(assert (=> b!3395730 m!3765735))

(assert (=> b!3395730 m!3765731))

(declare-fun m!3765737 () Bool)

(assert (=> b!3395730 m!3765737))

(assert (=> b!3395730 m!3765737))

(declare-fun m!3765739 () Bool)

(assert (=> b!3395730 m!3765739))

(assert (=> b!3395730 m!3765733))

(declare-fun m!3765741 () Bool)

(assert (=> b!3395730 m!3765741))

(declare-fun m!3765743 () Bool)

(assert (=> b!3395730 m!3765743))

(declare-fun m!3765745 () Bool)

(assert (=> b!3395730 m!3765745))

(declare-fun m!3765747 () Bool)

(assert (=> b!3395730 m!3765747))

(assert (=> b!3395730 m!3765739))

(assert (=> b!3395730 m!3765747))

(declare-fun m!3765749 () Bool)

(assert (=> b!3395730 m!3765749))

(declare-fun m!3765751 () Bool)

(assert (=> b!3395747 m!3765751))

(declare-fun m!3765753 () Bool)

(assert (=> b!3395752 m!3765753))

(declare-fun m!3765755 () Bool)

(assert (=> b!3395752 m!3765755))

(declare-fun m!3765757 () Bool)

(assert (=> b!3395726 m!3765757))

(assert (=> b!3395726 m!3765757))

(declare-fun m!3765759 () Bool)

(assert (=> b!3395726 m!3765759))

(check-sat (not b_next!89571) (not b!3395734) (not b!3395735) (not b_next!89569) (not b!3395730) (not start!316814) (not b!3395727) (not b!3395731) (not b!3395747) (not b!3395744) (not b_next!89563) b_and!236663 b_and!236671 (not b!3395745) (not b!3395726) (not b!3395746) b_and!236667 (not b_next!89567) (not b!3395741) b_and!236669 (not b!3395752) (not b!3395749) b_and!236673 (not b!3395750) (not b!3395743) (not b_next!89561) (not b!3395751) (not b!3395732) (not b!3395739) (not b!3395742) (not b!3395748) (not b_next!89565) (not b!3395737) b_and!236665 (not b!3395736))
(check-sat (not b_next!89571) b_and!236669 (not b_next!89569) b_and!236673 (not b_next!89561) (not b_next!89563) b_and!236663 b_and!236671 b_and!236667 (not b_next!89567) b_and!236665 (not b_next!89565))
(get-model)

(declare-fun d!965157 () Bool)

(declare-fun lt!1154340 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5103 (List!37070) (InoxSet Token!10150))

(assert (=> d!965157 (= lt!1154340 (select (content!5103 tokens!494) (h!42366 tokens!494)))))

(declare-fun e!2107863 () Bool)

(assert (=> d!965157 (= lt!1154340 e!2107863)))

(declare-fun res!1373941 () Bool)

(assert (=> d!965157 (=> (not res!1373941) (not e!2107863))))

(assert (=> d!965157 (= res!1373941 ((_ is Cons!36946) tokens!494))))

(assert (=> d!965157 (= (contains!6783 tokens!494 (h!42366 tokens!494)) lt!1154340)))

(declare-fun b!3395757 () Bool)

(declare-fun e!2107864 () Bool)

(assert (=> b!3395757 (= e!2107863 e!2107864)))

(declare-fun res!1373940 () Bool)

(assert (=> b!3395757 (=> res!1373940 e!2107864)))

(assert (=> b!3395757 (= res!1373940 (= (h!42366 tokens!494) (h!42366 tokens!494)))))

(declare-fun b!3395758 () Bool)

(assert (=> b!3395758 (= e!2107864 (contains!6783 (t!265199 tokens!494) (h!42366 tokens!494)))))

(assert (= (and d!965157 res!1373941) b!3395757))

(assert (= (and b!3395757 (not res!1373940)) b!3395758))

(declare-fun m!3765767 () Bool)

(assert (=> d!965157 m!3765767))

(declare-fun m!3765769 () Bool)

(assert (=> d!965157 m!3765769))

(declare-fun m!3765771 () Bool)

(assert (=> b!3395758 m!3765771))

(assert (=> b!3395744 d!965157))

(declare-fun d!965159 () Bool)

(declare-fun res!1373946 () Bool)

(declare-fun e!2107867 () Bool)

(assert (=> d!965159 (=> (not res!1373946) (not e!2107867))))

(declare-fun isEmpty!21208 (List!37068) Bool)

(assert (=> d!965159 (= res!1373946 (not (isEmpty!21208 (originalCharacters!6106 (h!42366 tokens!494)))))))

(assert (=> d!965159 (= (inv!50037 (h!42366 tokens!494)) e!2107867)))

(declare-fun b!3395763 () Bool)

(declare-fun res!1373947 () Bool)

(assert (=> b!3395763 (=> (not res!1373947) (not e!2107867))))

(declare-fun dynLambda!15399 (Int TokenValue!5622) BalanceConc!21932)

(assert (=> b!3395763 (= res!1373947 (= (originalCharacters!6106 (h!42366 tokens!494)) (list!13381 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (value!174132 (h!42366 tokens!494))))))))

(declare-fun b!3395764 () Bool)

(declare-fun size!27965 (List!37068) Int)

(assert (=> b!3395764 (= e!2107867 (= (size!27961 (h!42366 tokens!494)) (size!27965 (originalCharacters!6106 (h!42366 tokens!494)))))))

(assert (= (and d!965159 res!1373946) b!3395763))

(assert (= (and b!3395763 res!1373947) b!3395764))

(declare-fun b_lambda!96643 () Bool)

(assert (=> (not b_lambda!96643) (not b!3395763)))

(declare-fun t!265202 () Bool)

(declare-fun tb!181759 () Bool)

(assert (=> (and b!3395728 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494))))) t!265202) tb!181759))

(declare-fun b!3395769 () Bool)

(declare-fun e!2107870 () Bool)

(declare-fun tp!1059965 () Bool)

(declare-fun inv!50040 (Conc!11159) Bool)

(assert (=> b!3395769 (= e!2107870 (and (inv!50040 (c!578813 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (value!174132 (h!42366 tokens!494))))) tp!1059965))))

(declare-fun result!225320 () Bool)

(declare-fun inv!50041 (BalanceConc!21932) Bool)

(assert (=> tb!181759 (= result!225320 (and (inv!50041 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (value!174132 (h!42366 tokens!494)))) e!2107870))))

(assert (= tb!181759 b!3395769))

(declare-fun m!3765773 () Bool)

(assert (=> b!3395769 m!3765773))

(declare-fun m!3765775 () Bool)

(assert (=> tb!181759 m!3765775))

(assert (=> b!3395763 t!265202))

(declare-fun b_and!236675 () Bool)

(assert (= b_and!236665 (and (=> t!265202 result!225320) b_and!236675)))

(declare-fun t!265204 () Bool)

(declare-fun tb!181761 () Bool)

(assert (=> (and b!3395729 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494))))) t!265204) tb!181761))

(declare-fun result!225324 () Bool)

(assert (= result!225324 result!225320))

(assert (=> b!3395763 t!265204))

(declare-fun b_and!236677 () Bool)

(assert (= b_and!236669 (and (=> t!265204 result!225324) b_and!236677)))

(declare-fun tb!181763 () Bool)

(declare-fun t!265206 () Bool)

(assert (=> (and b!3395738 (= (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494))))) t!265206) tb!181763))

(declare-fun result!225326 () Bool)

(assert (= result!225326 result!225320))

(assert (=> b!3395763 t!265206))

(declare-fun b_and!236679 () Bool)

(assert (= b_and!236673 (and (=> t!265206 result!225326) b_and!236679)))

(declare-fun m!3765777 () Bool)

(assert (=> d!965159 m!3765777))

(declare-fun m!3765779 () Bool)

(assert (=> b!3395763 m!3765779))

(assert (=> b!3395763 m!3765779))

(declare-fun m!3765781 () Bool)

(assert (=> b!3395763 m!3765781))

(declare-fun m!3765783 () Bool)

(assert (=> b!3395764 m!3765783))

(assert (=> b!3395734 d!965159))

(declare-fun b!3395780 () Bool)

(declare-fun res!1373950 () Bool)

(declare-fun e!2107879 () Bool)

(assert (=> b!3395780 (=> res!1373950 e!2107879)))

(assert (=> b!3395780 (= res!1373950 (not ((_ is IntegerValue!16868) (value!174132 (h!42366 tokens!494)))))))

(declare-fun e!2107878 () Bool)

(assert (=> b!3395780 (= e!2107878 e!2107879)))

(declare-fun b!3395781 () Bool)

(declare-fun inv!15 (TokenValue!5622) Bool)

(assert (=> b!3395781 (= e!2107879 (inv!15 (value!174132 (h!42366 tokens!494))))))

(declare-fun d!965161 () Bool)

(declare-fun c!578819 () Bool)

(assert (=> d!965161 (= c!578819 ((_ is IntegerValue!16866) (value!174132 (h!42366 tokens!494))))))

(declare-fun e!2107877 () Bool)

(assert (=> d!965161 (= (inv!21 (value!174132 (h!42366 tokens!494))) e!2107877)))

(declare-fun b!3395782 () Bool)

(assert (=> b!3395782 (= e!2107877 e!2107878)))

(declare-fun c!578820 () Bool)

(assert (=> b!3395782 (= c!578820 ((_ is IntegerValue!16867) (value!174132 (h!42366 tokens!494))))))

(declare-fun b!3395783 () Bool)

(declare-fun inv!16 (TokenValue!5622) Bool)

(assert (=> b!3395783 (= e!2107877 (inv!16 (value!174132 (h!42366 tokens!494))))))

(declare-fun b!3395784 () Bool)

(declare-fun inv!17 (TokenValue!5622) Bool)

(assert (=> b!3395784 (= e!2107878 (inv!17 (value!174132 (h!42366 tokens!494))))))

(assert (= (and d!965161 c!578819) b!3395783))

(assert (= (and d!965161 (not c!578819)) b!3395782))

(assert (= (and b!3395782 c!578820) b!3395784))

(assert (= (and b!3395782 (not c!578820)) b!3395780))

(assert (= (and b!3395780 (not res!1373950)) b!3395781))

(declare-fun m!3765785 () Bool)

(assert (=> b!3395781 m!3765785))

(declare-fun m!3765787 () Bool)

(assert (=> b!3395783 m!3765787))

(declare-fun m!3765789 () Bool)

(assert (=> b!3395784 m!3765789))

(assert (=> b!3395745 d!965161))

(declare-fun d!965163 () Bool)

(assert (=> d!965163 (= (inv!50033 (tag!5976 (h!42367 rules!2135))) (= (mod (str.len (value!174131 (tag!5976 (h!42367 rules!2135)))) 2) 0))))

(assert (=> b!3395746 d!965163))

(declare-fun d!965165 () Bool)

(declare-fun res!1373953 () Bool)

(declare-fun e!2107882 () Bool)

(assert (=> d!965165 (=> (not res!1373953) (not e!2107882))))

(declare-fun semiInverseModEq!2251 (Int Int) Bool)

(assert (=> d!965165 (= res!1373953 (semiInverseModEq!2251 (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toValue!7588 (transformation!5392 (h!42367 rules!2135)))))))

(assert (=> d!965165 (= (inv!50036 (transformation!5392 (h!42367 rules!2135))) e!2107882)))

(declare-fun b!3395787 () Bool)

(declare-fun equivClasses!2150 (Int Int) Bool)

(assert (=> b!3395787 (= e!2107882 (equivClasses!2150 (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toValue!7588 (transformation!5392 (h!42367 rules!2135)))))))

(assert (= (and d!965165 res!1373953) b!3395787))

(declare-fun m!3765791 () Bool)

(assert (=> d!965165 m!3765791))

(declare-fun m!3765793 () Bool)

(assert (=> b!3395787 m!3765793))

(assert (=> b!3395746 d!965165))

(declare-fun d!965167 () Bool)

(declare-fun list!13384 (Conc!11159) List!37068)

(assert (=> d!965167 (= (list!13381 lt!1154330) (list!13384 (c!578813 lt!1154330)))))

(declare-fun bs!555809 () Bool)

(assert (= bs!555809 d!965167))

(declare-fun m!3765795 () Bool)

(assert (=> bs!555809 m!3765795))

(assert (=> b!3395735 d!965167))

(declare-fun d!965169 () Bool)

(declare-fun lt!1154343 () BalanceConc!21932)

(declare-fun list!13385 (BalanceConc!21934) List!37070)

(assert (=> d!965169 (= (list!13381 lt!1154343) (printList!1529 thiss!18206 (list!13385 lt!1154322)))))

(assert (=> d!965169 (= lt!1154343 (printTailRec!1476 thiss!18206 lt!1154322 0 (BalanceConc!21933 Empty!11159)))))

(assert (=> d!965169 (= (print!2046 thiss!18206 lt!1154322) lt!1154343)))

(declare-fun bs!555810 () Bool)

(assert (= bs!555810 d!965169))

(declare-fun m!3765797 () Bool)

(assert (=> bs!555810 m!3765797))

(declare-fun m!3765799 () Bool)

(assert (=> bs!555810 m!3765799))

(assert (=> bs!555810 m!3765799))

(declare-fun m!3765801 () Bool)

(assert (=> bs!555810 m!3765801))

(assert (=> bs!555810 m!3765721))

(assert (=> b!3395735 d!965169))

(declare-fun d!965171 () Bool)

(declare-fun lt!1154361 () BalanceConc!21932)

(declare-fun printListTailRec!655 (LexerInterface!4981 List!37070 List!37068) List!37068)

(declare-fun dropList!1172 (BalanceConc!21934 Int) List!37070)

(assert (=> d!965171 (= (list!13381 lt!1154361) (printListTailRec!655 thiss!18206 (dropList!1172 lt!1154322 0) (list!13381 (BalanceConc!21933 Empty!11159))))))

(declare-fun e!2107917 () BalanceConc!21932)

(assert (=> d!965171 (= lt!1154361 e!2107917)))

(declare-fun c!578832 () Bool)

(declare-fun size!27966 (BalanceConc!21934) Int)

(assert (=> d!965171 (= c!578832 (>= 0 (size!27966 lt!1154322)))))

(declare-fun e!2107918 () Bool)

(assert (=> d!965171 e!2107918))

(declare-fun res!1373980 () Bool)

(assert (=> d!965171 (=> (not res!1373980) (not e!2107918))))

(assert (=> d!965171 (= res!1373980 (>= 0 0))))

(assert (=> d!965171 (= (printTailRec!1476 thiss!18206 lt!1154322 0 (BalanceConc!21933 Empty!11159)) lt!1154361)))

(declare-fun b!3395836 () Bool)

(assert (=> b!3395836 (= e!2107918 (<= 0 (size!27966 lt!1154322)))))

(declare-fun b!3395837 () Bool)

(assert (=> b!3395837 (= e!2107917 (BalanceConc!21933 Empty!11159))))

(declare-fun b!3395838 () Bool)

(declare-fun ++!9048 (BalanceConc!21932 BalanceConc!21932) BalanceConc!21932)

(declare-fun apply!8613 (BalanceConc!21934 Int) Token!10150)

(assert (=> b!3395838 (= e!2107917 (printTailRec!1476 thiss!18206 lt!1154322 (+ 0 1) (++!9048 (BalanceConc!21933 Empty!11159) (charsOf!3406 (apply!8613 lt!1154322 0)))))))

(declare-fun lt!1154365 () List!37070)

(assert (=> b!3395838 (= lt!1154365 (list!13385 lt!1154322))))

(declare-fun lt!1154366 () Unit!52116)

(declare-fun lemmaDropApply!1130 (List!37070 Int) Unit!52116)

(assert (=> b!3395838 (= lt!1154366 (lemmaDropApply!1130 lt!1154365 0))))

(declare-fun head!7248 (List!37070) Token!10150)

(declare-fun drop!1972 (List!37070 Int) List!37070)

(declare-fun apply!8614 (List!37070 Int) Token!10150)

(assert (=> b!3395838 (= (head!7248 (drop!1972 lt!1154365 0)) (apply!8614 lt!1154365 0))))

(declare-fun lt!1154364 () Unit!52116)

(assert (=> b!3395838 (= lt!1154364 lt!1154366)))

(declare-fun lt!1154363 () List!37070)

(assert (=> b!3395838 (= lt!1154363 (list!13385 lt!1154322))))

(declare-fun lt!1154362 () Unit!52116)

(declare-fun lemmaDropTail!1014 (List!37070 Int) Unit!52116)

(assert (=> b!3395838 (= lt!1154362 (lemmaDropTail!1014 lt!1154363 0))))

(declare-fun tail!5370 (List!37070) List!37070)

(assert (=> b!3395838 (= (tail!5370 (drop!1972 lt!1154363 0)) (drop!1972 lt!1154363 (+ 0 1)))))

(declare-fun lt!1154367 () Unit!52116)

(assert (=> b!3395838 (= lt!1154367 lt!1154362)))

(assert (= (and d!965171 res!1373980) b!3395836))

(assert (= (and d!965171 c!578832) b!3395837))

(assert (= (and d!965171 (not c!578832)) b!3395838))

(declare-fun m!3765841 () Bool)

(assert (=> d!965171 m!3765841))

(declare-fun m!3765843 () Bool)

(assert (=> d!965171 m!3765843))

(declare-fun m!3765845 () Bool)

(assert (=> d!965171 m!3765845))

(declare-fun m!3765847 () Bool)

(assert (=> d!965171 m!3765847))

(assert (=> d!965171 m!3765845))

(declare-fun m!3765849 () Bool)

(assert (=> d!965171 m!3765849))

(assert (=> d!965171 m!3765847))

(assert (=> b!3395836 m!3765841))

(declare-fun m!3765851 () Bool)

(assert (=> b!3395838 m!3765851))

(declare-fun m!3765853 () Bool)

(assert (=> b!3395838 m!3765853))

(declare-fun m!3765855 () Bool)

(assert (=> b!3395838 m!3765855))

(declare-fun m!3765857 () Bool)

(assert (=> b!3395838 m!3765857))

(declare-fun m!3765859 () Bool)

(assert (=> b!3395838 m!3765859))

(assert (=> b!3395838 m!3765855))

(declare-fun m!3765861 () Bool)

(assert (=> b!3395838 m!3765861))

(declare-fun m!3765863 () Bool)

(assert (=> b!3395838 m!3765863))

(assert (=> b!3395838 m!3765851))

(assert (=> b!3395838 m!3765799))

(assert (=> b!3395838 m!3765861))

(declare-fun m!3765865 () Bool)

(assert (=> b!3395838 m!3765865))

(declare-fun m!3765867 () Bool)

(assert (=> b!3395838 m!3765867))

(declare-fun m!3765869 () Bool)

(assert (=> b!3395838 m!3765869))

(assert (=> b!3395838 m!3765853))

(declare-fun m!3765871 () Bool)

(assert (=> b!3395838 m!3765871))

(declare-fun m!3765873 () Bool)

(assert (=> b!3395838 m!3765873))

(assert (=> b!3395838 m!3765863))

(assert (=> b!3395735 d!965171))

(declare-fun d!965189 () Bool)

(declare-fun e!2107921 () Bool)

(assert (=> d!965189 e!2107921))

(declare-fun res!1373983 () Bool)

(assert (=> d!965189 (=> (not res!1373983) (not e!2107921))))

(declare-fun lt!1154370 () BalanceConc!21934)

(assert (=> d!965189 (= res!1373983 (= (list!13385 lt!1154370) (Cons!36946 (h!42366 tokens!494) Nil!36946)))))

(declare-fun singleton!1087 (Token!10150) BalanceConc!21934)

(assert (=> d!965189 (= lt!1154370 (singleton!1087 (h!42366 tokens!494)))))

(assert (=> d!965189 (= (singletonSeq!2488 (h!42366 tokens!494)) lt!1154370)))

(declare-fun b!3395841 () Bool)

(declare-fun isBalanced!3366 (Conc!11160) Bool)

(assert (=> b!3395841 (= e!2107921 (isBalanced!3366 (c!578814 lt!1154370)))))

(assert (= (and d!965189 res!1373983) b!3395841))

(declare-fun m!3765875 () Bool)

(assert (=> d!965189 m!3765875))

(declare-fun m!3765877 () Bool)

(assert (=> d!965189 m!3765877))

(declare-fun m!3765879 () Bool)

(assert (=> b!3395841 m!3765879))

(assert (=> b!3395735 d!965189))

(declare-fun d!965191 () Bool)

(declare-fun c!578835 () Bool)

(assert (=> d!965191 (= c!578835 ((_ is Cons!36946) (Cons!36946 (h!42366 tokens!494) Nil!36946)))))

(declare-fun e!2107924 () List!37068)

(assert (=> d!965191 (= (printList!1529 thiss!18206 (Cons!36946 (h!42366 tokens!494) Nil!36946)) e!2107924)))

(declare-fun b!3395846 () Bool)

(assert (=> b!3395846 (= e!2107924 (++!9047 (list!13381 (charsOf!3406 (h!42366 (Cons!36946 (h!42366 tokens!494) Nil!36946)))) (printList!1529 thiss!18206 (t!265199 (Cons!36946 (h!42366 tokens!494) Nil!36946)))))))

(declare-fun b!3395847 () Bool)

(assert (=> b!3395847 (= e!2107924 Nil!36944)))

(assert (= (and d!965191 c!578835) b!3395846))

(assert (= (and d!965191 (not c!578835)) b!3395847))

(declare-fun m!3765881 () Bool)

(assert (=> b!3395846 m!3765881))

(assert (=> b!3395846 m!3765881))

(declare-fun m!3765883 () Bool)

(assert (=> b!3395846 m!3765883))

(declare-fun m!3765885 () Bool)

(assert (=> b!3395846 m!3765885))

(assert (=> b!3395846 m!3765883))

(assert (=> b!3395846 m!3765885))

(declare-fun m!3765887 () Bool)

(assert (=> b!3395846 m!3765887))

(assert (=> b!3395735 d!965191))

(declare-fun d!965193 () Bool)

(declare-fun dynLambda!15400 (Int Token!10150) Bool)

(assert (=> d!965193 (dynLambda!15400 lambda!120801 (h!42366 (t!265199 tokens!494)))))

(declare-fun lt!1154373 () Unit!52116)

(declare-fun choose!19690 (List!37070 Int Token!10150) Unit!52116)

(assert (=> d!965193 (= lt!1154373 (choose!19690 tokens!494 lambda!120801 (h!42366 (t!265199 tokens!494))))))

(declare-fun e!2107927 () Bool)

(assert (=> d!965193 e!2107927))

(declare-fun res!1373986 () Bool)

(assert (=> d!965193 (=> (not res!1373986) (not e!2107927))))

(assert (=> d!965193 (= res!1373986 (forall!7799 tokens!494 lambda!120801))))

(assert (=> d!965193 (= (forallContained!1339 tokens!494 lambda!120801 (h!42366 (t!265199 tokens!494))) lt!1154373)))

(declare-fun b!3395850 () Bool)

(assert (=> b!3395850 (= e!2107927 (contains!6783 tokens!494 (h!42366 (t!265199 tokens!494))))))

(assert (= (and d!965193 res!1373986) b!3395850))

(declare-fun b_lambda!96645 () Bool)

(assert (=> (not b_lambda!96645) (not d!965193)))

(declare-fun m!3765889 () Bool)

(assert (=> d!965193 m!3765889))

(declare-fun m!3765891 () Bool)

(assert (=> d!965193 m!3765891))

(assert (=> d!965193 m!3765693))

(declare-fun m!3765893 () Bool)

(assert (=> b!3395850 m!3765893))

(assert (=> b!3395752 d!965193))

(declare-fun d!965195 () Bool)

(assert (=> d!965195 (dynLambda!15400 lambda!120801 (h!42366 tokens!494))))

(declare-fun lt!1154374 () Unit!52116)

(assert (=> d!965195 (= lt!1154374 (choose!19690 tokens!494 lambda!120801 (h!42366 tokens!494)))))

(declare-fun e!2107928 () Bool)

(assert (=> d!965195 e!2107928))

(declare-fun res!1373987 () Bool)

(assert (=> d!965195 (=> (not res!1373987) (not e!2107928))))

(assert (=> d!965195 (= res!1373987 (forall!7799 tokens!494 lambda!120801))))

(assert (=> d!965195 (= (forallContained!1339 tokens!494 lambda!120801 (h!42366 tokens!494)) lt!1154374)))

(declare-fun b!3395851 () Bool)

(assert (=> b!3395851 (= e!2107928 (contains!6783 tokens!494 (h!42366 tokens!494)))))

(assert (= (and d!965195 res!1373987) b!3395851))

(declare-fun b_lambda!96647 () Bool)

(assert (=> (not b_lambda!96647) (not d!965195)))

(declare-fun m!3765895 () Bool)

(assert (=> d!965195 m!3765895))

(declare-fun m!3765897 () Bool)

(assert (=> d!965195 m!3765897))

(assert (=> d!965195 m!3765693))

(assert (=> b!3395851 m!3765705))

(assert (=> b!3395752 d!965195))

(declare-fun d!965197 () Bool)

(declare-fun res!1373988 () Bool)

(declare-fun e!2107929 () Bool)

(assert (=> d!965197 (=> (not res!1373988) (not e!2107929))))

(assert (=> d!965197 (= res!1373988 (not (isEmpty!21208 (originalCharacters!6106 separatorToken!241))))))

(assert (=> d!965197 (= (inv!50037 separatorToken!241) e!2107929)))

(declare-fun b!3395852 () Bool)

(declare-fun res!1373989 () Bool)

(assert (=> b!3395852 (=> (not res!1373989) (not e!2107929))))

(assert (=> b!3395852 (= res!1373989 (= (originalCharacters!6106 separatorToken!241) (list!13381 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (value!174132 separatorToken!241)))))))

(declare-fun b!3395853 () Bool)

(assert (=> b!3395853 (= e!2107929 (= (size!27961 separatorToken!241) (size!27965 (originalCharacters!6106 separatorToken!241))))))

(assert (= (and d!965197 res!1373988) b!3395852))

(assert (= (and b!3395852 res!1373989) b!3395853))

(declare-fun b_lambda!96649 () Bool)

(assert (=> (not b_lambda!96649) (not b!3395852)))

(declare-fun t!265209 () Bool)

(declare-fun tb!181765 () Bool)

(assert (=> (and b!3395728 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241)))) t!265209) tb!181765))

(declare-fun b!3395854 () Bool)

(declare-fun e!2107930 () Bool)

(declare-fun tp!1059966 () Bool)

(assert (=> b!3395854 (= e!2107930 (and (inv!50040 (c!578813 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (value!174132 separatorToken!241)))) tp!1059966))))

(declare-fun result!225328 () Bool)

(assert (=> tb!181765 (= result!225328 (and (inv!50041 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (value!174132 separatorToken!241))) e!2107930))))

(assert (= tb!181765 b!3395854))

(declare-fun m!3765899 () Bool)

(assert (=> b!3395854 m!3765899))

(declare-fun m!3765901 () Bool)

(assert (=> tb!181765 m!3765901))

(assert (=> b!3395852 t!265209))

(declare-fun b_and!236681 () Bool)

(assert (= b_and!236675 (and (=> t!265209 result!225328) b_and!236681)))

(declare-fun tb!181767 () Bool)

(declare-fun t!265211 () Bool)

(assert (=> (and b!3395729 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241)))) t!265211) tb!181767))

(declare-fun result!225330 () Bool)

(assert (= result!225330 result!225328))

(assert (=> b!3395852 t!265211))

(declare-fun b_and!236683 () Bool)

(assert (= b_and!236677 (and (=> t!265211 result!225330) b_and!236683)))

(declare-fun t!265213 () Bool)

(declare-fun tb!181769 () Bool)

(assert (=> (and b!3395738 (= (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241)))) t!265213) tb!181769))

(declare-fun result!225332 () Bool)

(assert (= result!225332 result!225328))

(assert (=> b!3395852 t!265213))

(declare-fun b_and!236685 () Bool)

(assert (= b_and!236679 (and (=> t!265213 result!225332) b_and!236685)))

(declare-fun m!3765903 () Bool)

(assert (=> d!965197 m!3765903))

(declare-fun m!3765905 () Bool)

(assert (=> b!3395852 m!3765905))

(assert (=> b!3395852 m!3765905))

(declare-fun m!3765907 () Bool)

(assert (=> b!3395852 m!3765907))

(declare-fun m!3765909 () Bool)

(assert (=> b!3395853 m!3765909))

(assert (=> start!316814 d!965197))

(declare-fun d!965199 () Bool)

(declare-fun res!1373994 () Bool)

(declare-fun e!2107935 () Bool)

(assert (=> d!965199 (=> res!1373994 e!2107935)))

(assert (=> d!965199 (= res!1373994 ((_ is Nil!36946) tokens!494))))

(assert (=> d!965199 (= (forall!7799 tokens!494 lambda!120801) e!2107935)))

(declare-fun b!3395859 () Bool)

(declare-fun e!2107936 () Bool)

(assert (=> b!3395859 (= e!2107935 e!2107936)))

(declare-fun res!1373995 () Bool)

(assert (=> b!3395859 (=> (not res!1373995) (not e!2107936))))

(assert (=> b!3395859 (= res!1373995 (dynLambda!15400 lambda!120801 (h!42366 tokens!494)))))

(declare-fun b!3395860 () Bool)

(assert (=> b!3395860 (= e!2107936 (forall!7799 (t!265199 tokens!494) lambda!120801))))

(assert (= (and d!965199 (not res!1373994)) b!3395859))

(assert (= (and b!3395859 res!1373995) b!3395860))

(declare-fun b_lambda!96651 () Bool)

(assert (=> (not b_lambda!96651) (not b!3395859)))

(assert (=> b!3395859 m!3765895))

(declare-fun m!3765911 () Bool)

(assert (=> b!3395860 m!3765911))

(assert (=> b!3395741 d!965199))

(declare-fun d!965201 () Bool)

(assert (=> d!965201 (= (inv!50033 (tag!5976 (rule!7952 separatorToken!241))) (= (mod (str.len (value!174131 (tag!5976 (rule!7952 separatorToken!241)))) 2) 0))))

(assert (=> b!3395742 d!965201))

(declare-fun d!965203 () Bool)

(declare-fun res!1373996 () Bool)

(declare-fun e!2107937 () Bool)

(assert (=> d!965203 (=> (not res!1373996) (not e!2107937))))

(assert (=> d!965203 (= res!1373996 (semiInverseModEq!2251 (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toValue!7588 (transformation!5392 (rule!7952 separatorToken!241)))))))

(assert (=> d!965203 (= (inv!50036 (transformation!5392 (rule!7952 separatorToken!241))) e!2107937)))

(declare-fun b!3395861 () Bool)

(assert (=> b!3395861 (= e!2107937 (equivClasses!2150 (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toValue!7588 (transformation!5392 (rule!7952 separatorToken!241)))))))

(assert (= (and d!965203 res!1373996) b!3395861))

(declare-fun m!3765913 () Bool)

(assert (=> d!965203 m!3765913))

(declare-fun m!3765915 () Bool)

(assert (=> b!3395861 m!3765915))

(assert (=> b!3395742 d!965203))

(declare-fun d!965205 () Bool)

(assert (=> d!965205 (= (inv!50033 (tag!5976 (rule!7952 (h!42366 tokens!494)))) (= (mod (str.len (value!174131 (tag!5976 (rule!7952 (h!42366 tokens!494))))) 2) 0))))

(assert (=> b!3395731 d!965205))

(declare-fun d!965207 () Bool)

(declare-fun res!1373997 () Bool)

(declare-fun e!2107938 () Bool)

(assert (=> d!965207 (=> (not res!1373997) (not e!2107938))))

(assert (=> d!965207 (= res!1373997 (semiInverseModEq!2251 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toValue!7588 (transformation!5392 (rule!7952 (h!42366 tokens!494))))))))

(assert (=> d!965207 (= (inv!50036 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) e!2107938)))

(declare-fun b!3395862 () Bool)

(assert (=> b!3395862 (= e!2107938 (equivClasses!2150 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toValue!7588 (transformation!5392 (rule!7952 (h!42366 tokens!494))))))))

(assert (= (and d!965207 res!1373997) b!3395862))

(declare-fun m!3765917 () Bool)

(assert (=> d!965207 m!3765917))

(declare-fun m!3765919 () Bool)

(assert (=> b!3395862 m!3765919))

(assert (=> b!3395731 d!965207))

(declare-fun b!3395863 () Bool)

(declare-fun res!1373998 () Bool)

(declare-fun e!2107941 () Bool)

(assert (=> b!3395863 (=> res!1373998 e!2107941)))

(assert (=> b!3395863 (= res!1373998 (not ((_ is IntegerValue!16868) (value!174132 separatorToken!241))))))

(declare-fun e!2107940 () Bool)

(assert (=> b!3395863 (= e!2107940 e!2107941)))

(declare-fun b!3395864 () Bool)

(assert (=> b!3395864 (= e!2107941 (inv!15 (value!174132 separatorToken!241)))))

(declare-fun d!965209 () Bool)

(declare-fun c!578836 () Bool)

(assert (=> d!965209 (= c!578836 ((_ is IntegerValue!16866) (value!174132 separatorToken!241)))))

(declare-fun e!2107939 () Bool)

(assert (=> d!965209 (= (inv!21 (value!174132 separatorToken!241)) e!2107939)))

(declare-fun b!3395865 () Bool)

(assert (=> b!3395865 (= e!2107939 e!2107940)))

(declare-fun c!578837 () Bool)

(assert (=> b!3395865 (= c!578837 ((_ is IntegerValue!16867) (value!174132 separatorToken!241)))))

(declare-fun b!3395866 () Bool)

(assert (=> b!3395866 (= e!2107939 (inv!16 (value!174132 separatorToken!241)))))

(declare-fun b!3395867 () Bool)

(assert (=> b!3395867 (= e!2107940 (inv!17 (value!174132 separatorToken!241)))))

(assert (= (and d!965209 c!578836) b!3395866))

(assert (= (and d!965209 (not c!578836)) b!3395865))

(assert (= (and b!3395865 c!578837) b!3395867))

(assert (= (and b!3395865 (not c!578837)) b!3395863))

(assert (= (and b!3395863 (not res!1373998)) b!3395864))

(declare-fun m!3765921 () Bool)

(assert (=> b!3395864 m!3765921))

(declare-fun m!3765923 () Bool)

(assert (=> b!3395866 m!3765923))

(declare-fun m!3765925 () Bool)

(assert (=> b!3395867 m!3765925))

(assert (=> b!3395743 d!965209))

(declare-fun d!965211 () Bool)

(assert (=> d!965211 (= (isEmpty!21203 rules!2135) ((_ is Nil!36947) rules!2135))))

(assert (=> b!3395749 d!965211))

(declare-fun d!965213 () Bool)

(declare-fun lt!1154381 () Bool)

(declare-fun e!2107946 () Bool)

(assert (=> d!965213 (= lt!1154381 e!2107946)))

(declare-fun res!1374007 () Bool)

(assert (=> d!965213 (=> (not res!1374007) (not e!2107946))))

(assert (=> d!965213 (= res!1374007 (= (list!13385 (_1!21417 (lex!2307 thiss!18206 rules!2135 (print!2046 thiss!18206 (singletonSeq!2488 separatorToken!241))))) (list!13385 (singletonSeq!2488 separatorToken!241))))))

(declare-fun e!2107947 () Bool)

(assert (=> d!965213 (= lt!1154381 e!2107947)))

(declare-fun res!1374006 () Bool)

(assert (=> d!965213 (=> (not res!1374006) (not e!2107947))))

(declare-fun lt!1154382 () tuple2!36566)

(assert (=> d!965213 (= res!1374006 (= (size!27966 (_1!21417 lt!1154382)) 1))))

(assert (=> d!965213 (= lt!1154382 (lex!2307 thiss!18206 rules!2135 (print!2046 thiss!18206 (singletonSeq!2488 separatorToken!241))))))

(assert (=> d!965213 (not (isEmpty!21203 rules!2135))))

(assert (=> d!965213 (= (rulesProduceIndividualToken!2473 thiss!18206 rules!2135 separatorToken!241) lt!1154381)))

(declare-fun b!3395874 () Bool)

(declare-fun res!1374005 () Bool)

(assert (=> b!3395874 (=> (not res!1374005) (not e!2107947))))

(assert (=> b!3395874 (= res!1374005 (= (apply!8613 (_1!21417 lt!1154382) 0) separatorToken!241))))

(declare-fun b!3395875 () Bool)

(declare-fun isEmpty!21209 (BalanceConc!21932) Bool)

(assert (=> b!3395875 (= e!2107947 (isEmpty!21209 (_2!21417 lt!1154382)))))

(declare-fun b!3395876 () Bool)

(assert (=> b!3395876 (= e!2107946 (isEmpty!21209 (_2!21417 (lex!2307 thiss!18206 rules!2135 (print!2046 thiss!18206 (singletonSeq!2488 separatorToken!241))))))))

(assert (= (and d!965213 res!1374006) b!3395874))

(assert (= (and b!3395874 res!1374005) b!3395875))

(assert (= (and d!965213 res!1374007) b!3395876))

(declare-fun m!3765927 () Bool)

(assert (=> d!965213 m!3765927))

(declare-fun m!3765929 () Bool)

(assert (=> d!965213 m!3765929))

(declare-fun m!3765931 () Bool)

(assert (=> d!965213 m!3765931))

(assert (=> d!965213 m!3765927))

(declare-fun m!3765933 () Bool)

(assert (=> d!965213 m!3765933))

(assert (=> d!965213 m!3765725))

(assert (=> d!965213 m!3765927))

(assert (=> d!965213 m!3765929))

(declare-fun m!3765935 () Bool)

(assert (=> d!965213 m!3765935))

(declare-fun m!3765937 () Bool)

(assert (=> d!965213 m!3765937))

(declare-fun m!3765939 () Bool)

(assert (=> b!3395874 m!3765939))

(declare-fun m!3765941 () Bool)

(assert (=> b!3395875 m!3765941))

(assert (=> b!3395876 m!3765927))

(assert (=> b!3395876 m!3765927))

(assert (=> b!3395876 m!3765929))

(assert (=> b!3395876 m!3765929))

(assert (=> b!3395876 m!3765931))

(declare-fun m!3765943 () Bool)

(assert (=> b!3395876 m!3765943))

(assert (=> b!3395750 d!965213))

(declare-fun d!965215 () Bool)

(declare-fun res!1374010 () Bool)

(declare-fun e!2107950 () Bool)

(assert (=> d!965215 (=> (not res!1374010) (not e!2107950))))

(declare-fun rulesValid!2011 (LexerInterface!4981 List!37071) Bool)

(assert (=> d!965215 (= res!1374010 (rulesValid!2011 thiss!18206 rules!2135))))

(assert (=> d!965215 (= (rulesInvariant!4378 thiss!18206 rules!2135) e!2107950)))

(declare-fun b!3395879 () Bool)

(declare-datatypes ((List!37073 0))(
  ( (Nil!36949) (Cons!36949 (h!42369 String!41444) (t!265274 List!37073)) )
))
(declare-fun noDuplicateTag!2007 (LexerInterface!4981 List!37071 List!37073) Bool)

(assert (=> b!3395879 (= e!2107950 (noDuplicateTag!2007 thiss!18206 rules!2135 Nil!36949))))

(assert (= (and d!965215 res!1374010) b!3395879))

(declare-fun m!3765945 () Bool)

(assert (=> d!965215 m!3765945))

(declare-fun m!3765947 () Bool)

(assert (=> b!3395879 m!3765947))

(assert (=> b!3395739 d!965215))

(declare-fun e!2107956 () Bool)

(declare-fun b!3395891 () Bool)

(declare-fun lt!1154385 () List!37068)

(assert (=> b!3395891 (= e!2107956 (or (not (= lt!1154331 Nil!36944)) (= lt!1154385 lt!1154333)))))

(declare-fun b!3395888 () Bool)

(declare-fun e!2107955 () List!37068)

(assert (=> b!3395888 (= e!2107955 lt!1154331)))

(declare-fun b!3395889 () Bool)

(assert (=> b!3395889 (= e!2107955 (Cons!36944 (h!42364 lt!1154333) (++!9047 (t!265197 lt!1154333) lt!1154331)))))

(declare-fun b!3395890 () Bool)

(declare-fun res!1374016 () Bool)

(assert (=> b!3395890 (=> (not res!1374016) (not e!2107956))))

(assert (=> b!3395890 (= res!1374016 (= (size!27965 lt!1154385) (+ (size!27965 lt!1154333) (size!27965 lt!1154331))))))

(declare-fun d!965217 () Bool)

(assert (=> d!965217 e!2107956))

(declare-fun res!1374015 () Bool)

(assert (=> d!965217 (=> (not res!1374015) (not e!2107956))))

(declare-fun content!5105 (List!37068) (InoxSet C!20488))

(assert (=> d!965217 (= res!1374015 (= (content!5105 lt!1154385) ((_ map or) (content!5105 lt!1154333) (content!5105 lt!1154331))))))

(assert (=> d!965217 (= lt!1154385 e!2107955)))

(declare-fun c!578840 () Bool)

(assert (=> d!965217 (= c!578840 ((_ is Nil!36944) lt!1154333))))

(assert (=> d!965217 (= (++!9047 lt!1154333 lt!1154331) lt!1154385)))

(assert (= (and d!965217 c!578840) b!3395888))

(assert (= (and d!965217 (not c!578840)) b!3395889))

(assert (= (and d!965217 res!1374015) b!3395890))

(assert (= (and b!3395890 res!1374016) b!3395891))

(declare-fun m!3765949 () Bool)

(assert (=> b!3395889 m!3765949))

(declare-fun m!3765951 () Bool)

(assert (=> b!3395890 m!3765951))

(declare-fun m!3765953 () Bool)

(assert (=> b!3395890 m!3765953))

(declare-fun m!3765955 () Bool)

(assert (=> b!3395890 m!3765955))

(declare-fun m!3765957 () Bool)

(assert (=> d!965217 m!3765957))

(declare-fun m!3765959 () Bool)

(assert (=> d!965217 m!3765959))

(declare-fun m!3765961 () Bool)

(assert (=> d!965217 m!3765961))

(assert (=> b!3395730 d!965217))

(declare-fun d!965219 () Bool)

(declare-fun c!578843 () Bool)

(assert (=> d!965219 (= c!578843 ((_ is Cons!36946) tokens!494))))

(declare-fun e!2107959 () List!37068)

(assert (=> d!965219 (= (printWithSeparatorTokenList!268 thiss!18206 tokens!494 separatorToken!241) e!2107959)))

(declare-fun b!3395896 () Bool)

(assert (=> b!3395896 (= e!2107959 (++!9047 (++!9047 (list!13381 (charsOf!3406 (h!42366 tokens!494))) (list!13381 (charsOf!3406 separatorToken!241))) (printWithSeparatorTokenList!268 thiss!18206 (t!265199 tokens!494) separatorToken!241)))))

(declare-fun b!3395897 () Bool)

(assert (=> b!3395897 (= e!2107959 Nil!36944)))

(assert (= (and d!965219 c!578843) b!3395896))

(assert (= (and d!965219 (not c!578843)) b!3395897))

(assert (=> b!3395896 m!3765745))

(assert (=> b!3395896 m!3765757))

(assert (=> b!3395896 m!3765733))

(assert (=> b!3395896 m!3765741))

(assert (=> b!3395896 m!3765733))

(assert (=> b!3395896 m!3765757))

(assert (=> b!3395896 m!3765759))

(declare-fun m!3765963 () Bool)

(assert (=> b!3395896 m!3765963))

(assert (=> b!3395896 m!3765745))

(declare-fun m!3765965 () Bool)

(assert (=> b!3395896 m!3765965))

(assert (=> b!3395896 m!3765759))

(assert (=> b!3395896 m!3765741))

(assert (=> b!3395896 m!3765963))

(assert (=> b!3395730 d!965219))

(declare-fun e!2107961 () Bool)

(declare-fun b!3395901 () Bool)

(declare-fun lt!1154386 () List!37068)

(assert (=> b!3395901 (= e!2107961 (or (not (= (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241) Nil!36944)) (= lt!1154386 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333))))))

(declare-fun b!3395898 () Bool)

(declare-fun e!2107960 () List!37068)

(assert (=> b!3395898 (= e!2107960 (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241))))

(declare-fun b!3395899 () Bool)

(assert (=> b!3395899 (= e!2107960 (Cons!36944 (h!42364 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333)) (++!9047 (t!265197 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333)) (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241))))))

(declare-fun b!3395900 () Bool)

(declare-fun res!1374018 () Bool)

(assert (=> b!3395900 (=> (not res!1374018) (not e!2107961))))

(assert (=> b!3395900 (= res!1374018 (= (size!27965 lt!1154386) (+ (size!27965 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333)) (size!27965 (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241)))))))

(declare-fun d!965221 () Bool)

(assert (=> d!965221 e!2107961))

(declare-fun res!1374017 () Bool)

(assert (=> d!965221 (=> (not res!1374017) (not e!2107961))))

(assert (=> d!965221 (= res!1374017 (= (content!5105 lt!1154386) ((_ map or) (content!5105 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333)) (content!5105 (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241)))))))

(assert (=> d!965221 (= lt!1154386 e!2107960)))

(declare-fun c!578844 () Bool)

(assert (=> d!965221 (= c!578844 ((_ is Nil!36944) (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333)))))

(assert (=> d!965221 (= (++!9047 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333) (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241)) lt!1154386)))

(assert (= (and d!965221 c!578844) b!3395898))

(assert (= (and d!965221 (not c!578844)) b!3395899))

(assert (= (and d!965221 res!1374017) b!3395900))

(assert (= (and b!3395900 res!1374018) b!3395901))

(assert (=> b!3395899 m!3765747))

(declare-fun m!3765967 () Bool)

(assert (=> b!3395899 m!3765967))

(declare-fun m!3765969 () Bool)

(assert (=> b!3395900 m!3765969))

(assert (=> b!3395900 m!3765739))

(declare-fun m!3765971 () Bool)

(assert (=> b!3395900 m!3765971))

(assert (=> b!3395900 m!3765747))

(declare-fun m!3765973 () Bool)

(assert (=> b!3395900 m!3765973))

(declare-fun m!3765975 () Bool)

(assert (=> d!965221 m!3765975))

(assert (=> d!965221 m!3765739))

(declare-fun m!3765977 () Bool)

(assert (=> d!965221 m!3765977))

(assert (=> d!965221 m!3765747))

(declare-fun m!3765979 () Bool)

(assert (=> d!965221 m!3765979))

(assert (=> b!3395730 d!965221))

(declare-fun d!965223 () Bool)

(declare-fun lt!1154389 () BalanceConc!21932)

(assert (=> d!965223 (= (list!13381 lt!1154389) (originalCharacters!6106 separatorToken!241))))

(assert (=> d!965223 (= lt!1154389 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (value!174132 separatorToken!241)))))

(assert (=> d!965223 (= (charsOf!3406 separatorToken!241) lt!1154389)))

(declare-fun b_lambda!96653 () Bool)

(assert (=> (not b_lambda!96653) (not d!965223)))

(assert (=> d!965223 t!265209))

(declare-fun b_and!236687 () Bool)

(assert (= b_and!236681 (and (=> t!265209 result!225328) b_and!236687)))

(assert (=> d!965223 t!265211))

(declare-fun b_and!236689 () Bool)

(assert (= b_and!236683 (and (=> t!265211 result!225330) b_and!236689)))

(assert (=> d!965223 t!265213))

(declare-fun b_and!236691 () Bool)

(assert (= b_and!236685 (and (=> t!265213 result!225332) b_and!236691)))

(declare-fun m!3765981 () Bool)

(assert (=> d!965223 m!3765981))

(assert (=> d!965223 m!3765905))

(assert (=> b!3395730 d!965223))

(declare-fun d!965225 () Bool)

(declare-fun c!578845 () Bool)

(assert (=> d!965225 (= c!578845 ((_ is Cons!36946) (t!265199 (t!265199 tokens!494))))))

(declare-fun e!2107962 () List!37068)

(assert (=> d!965225 (= (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241) e!2107962)))

(declare-fun b!3395902 () Bool)

(assert (=> b!3395902 (= e!2107962 (++!9047 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 (t!265199 tokens!494))))) (list!13381 (charsOf!3406 separatorToken!241))) (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 (t!265199 tokens!494))) separatorToken!241)))))

(declare-fun b!3395903 () Bool)

(assert (=> b!3395903 (= e!2107962 Nil!36944)))

(assert (= (and d!965225 c!578845) b!3395902))

(assert (= (and d!965225 (not c!578845)) b!3395903))

(declare-fun m!3765983 () Bool)

(assert (=> b!3395902 m!3765983))

(declare-fun m!3765985 () Bool)

(assert (=> b!3395902 m!3765985))

(assert (=> b!3395902 m!3765733))

(assert (=> b!3395902 m!3765741))

(assert (=> b!3395902 m!3765733))

(assert (=> b!3395902 m!3765985))

(declare-fun m!3765987 () Bool)

(assert (=> b!3395902 m!3765987))

(declare-fun m!3765989 () Bool)

(assert (=> b!3395902 m!3765989))

(assert (=> b!3395902 m!3765983))

(declare-fun m!3765991 () Bool)

(assert (=> b!3395902 m!3765991))

(assert (=> b!3395902 m!3765987))

(assert (=> b!3395902 m!3765741))

(assert (=> b!3395902 m!3765989))

(assert (=> b!3395730 d!965225))

(declare-fun d!965227 () Bool)

(declare-fun c!578846 () Bool)

(assert (=> d!965227 (= c!578846 ((_ is Cons!36946) (t!265199 tokens!494)))))

(declare-fun e!2107963 () List!37068)

(assert (=> d!965227 (= (printWithSeparatorTokenList!268 thiss!18206 (t!265199 tokens!494) separatorToken!241) e!2107963)))

(declare-fun b!3395904 () Bool)

(assert (=> b!3395904 (= e!2107963 (++!9047 (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) (list!13381 (charsOf!3406 separatorToken!241))) (printWithSeparatorTokenList!268 thiss!18206 (t!265199 (t!265199 tokens!494)) separatorToken!241)))))

(declare-fun b!3395905 () Bool)

(assert (=> b!3395905 (= e!2107963 Nil!36944)))

(assert (= (and d!965227 c!578846) b!3395904))

(assert (= (and d!965227 (not c!578846)) b!3395905))

(assert (=> b!3395904 m!3765747))

(assert (=> b!3395904 m!3765731))

(assert (=> b!3395904 m!3765733))

(assert (=> b!3395904 m!3765741))

(assert (=> b!3395904 m!3765733))

(assert (=> b!3395904 m!3765731))

(assert (=> b!3395904 m!3765737))

(declare-fun m!3765993 () Bool)

(assert (=> b!3395904 m!3765993))

(assert (=> b!3395904 m!3765747))

(declare-fun m!3765995 () Bool)

(assert (=> b!3395904 m!3765995))

(assert (=> b!3395904 m!3765737))

(assert (=> b!3395904 m!3765741))

(assert (=> b!3395904 m!3765993))

(assert (=> b!3395730 d!965227))

(declare-fun d!965229 () Bool)

(assert (=> d!965229 (= (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) (list!13384 (c!578813 (charsOf!3406 (h!42366 (t!265199 tokens!494))))))))

(declare-fun bs!555812 () Bool)

(assert (= bs!555812 d!965229))

(declare-fun m!3765997 () Bool)

(assert (=> bs!555812 m!3765997))

(assert (=> b!3395730 d!965229))

(declare-fun e!2107965 () Bool)

(declare-fun lt!1154390 () List!37068)

(declare-fun b!3395909 () Bool)

(assert (=> b!3395909 (= e!2107965 (or (not (= lt!1154333 Nil!36944)) (= lt!1154390 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))))))))

(declare-fun b!3395906 () Bool)

(declare-fun e!2107964 () List!37068)

(assert (=> b!3395906 (= e!2107964 lt!1154333)))

(declare-fun b!3395907 () Bool)

(assert (=> b!3395907 (= e!2107964 (Cons!36944 (h!42364 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494))))) (++!9047 (t!265197 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494))))) lt!1154333)))))

(declare-fun b!3395908 () Bool)

(declare-fun res!1374020 () Bool)

(assert (=> b!3395908 (=> (not res!1374020) (not e!2107965))))

(assert (=> b!3395908 (= res!1374020 (= (size!27965 lt!1154390) (+ (size!27965 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494))))) (size!27965 lt!1154333))))))

(declare-fun d!965231 () Bool)

(assert (=> d!965231 e!2107965))

(declare-fun res!1374019 () Bool)

(assert (=> d!965231 (=> (not res!1374019) (not e!2107965))))

(assert (=> d!965231 (= res!1374019 (= (content!5105 lt!1154390) ((_ map or) (content!5105 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494))))) (content!5105 lt!1154333))))))

(assert (=> d!965231 (= lt!1154390 e!2107964)))

(declare-fun c!578847 () Bool)

(assert (=> d!965231 (= c!578847 ((_ is Nil!36944) (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494))))))))

(assert (=> d!965231 (= (++!9047 (list!13381 (charsOf!3406 (h!42366 (t!265199 tokens!494)))) lt!1154333) lt!1154390)))

(assert (= (and d!965231 c!578847) b!3395906))

(assert (= (and d!965231 (not c!578847)) b!3395907))

(assert (= (and d!965231 res!1374019) b!3395908))

(assert (= (and b!3395908 res!1374020) b!3395909))

(declare-fun m!3765999 () Bool)

(assert (=> b!3395907 m!3765999))

(declare-fun m!3766001 () Bool)

(assert (=> b!3395908 m!3766001))

(assert (=> b!3395908 m!3765737))

(declare-fun m!3766003 () Bool)

(assert (=> b!3395908 m!3766003))

(assert (=> b!3395908 m!3765953))

(declare-fun m!3766005 () Bool)

(assert (=> d!965231 m!3766005))

(assert (=> d!965231 m!3765737))

(declare-fun m!3766007 () Bool)

(assert (=> d!965231 m!3766007))

(assert (=> d!965231 m!3765959))

(assert (=> b!3395730 d!965231))

(declare-fun d!965233 () Bool)

(assert (=> d!965233 (= (list!13381 (charsOf!3406 separatorToken!241)) (list!13384 (c!578813 (charsOf!3406 separatorToken!241))))))

(declare-fun bs!555813 () Bool)

(assert (= bs!555813 d!965233))

(declare-fun m!3766009 () Bool)

(assert (=> bs!555813 m!3766009))

(assert (=> b!3395730 d!965233))

(declare-fun d!965235 () Bool)

(declare-fun lt!1154391 () BalanceConc!21932)

(assert (=> d!965235 (= (list!13381 lt!1154391) (originalCharacters!6106 (h!42366 (t!265199 tokens!494))))))

(assert (=> d!965235 (= lt!1154391 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (value!174132 (h!42366 (t!265199 tokens!494)))))))

(assert (=> d!965235 (= (charsOf!3406 (h!42366 (t!265199 tokens!494))) lt!1154391)))

(declare-fun b_lambda!96655 () Bool)

(assert (=> (not b_lambda!96655) (not d!965235)))

(declare-fun t!265218 () Bool)

(declare-fun tb!181771 () Bool)

(assert (=> (and b!3395728 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494)))))) t!265218) tb!181771))

(declare-fun b!3395910 () Bool)

(declare-fun e!2107966 () Bool)

(declare-fun tp!1059967 () Bool)

(assert (=> b!3395910 (= e!2107966 (and (inv!50040 (c!578813 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (value!174132 (h!42366 (t!265199 tokens!494)))))) tp!1059967))))

(declare-fun result!225334 () Bool)

(assert (=> tb!181771 (= result!225334 (and (inv!50041 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (value!174132 (h!42366 (t!265199 tokens!494))))) e!2107966))))

(assert (= tb!181771 b!3395910))

(declare-fun m!3766011 () Bool)

(assert (=> b!3395910 m!3766011))

(declare-fun m!3766013 () Bool)

(assert (=> tb!181771 m!3766013))

(assert (=> d!965235 t!265218))

(declare-fun b_and!236693 () Bool)

(assert (= b_and!236687 (and (=> t!265218 result!225334) b_and!236693)))

(declare-fun t!265220 () Bool)

(declare-fun tb!181773 () Bool)

(assert (=> (and b!3395729 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494)))))) t!265220) tb!181773))

(declare-fun result!225336 () Bool)

(assert (= result!225336 result!225334))

(assert (=> d!965235 t!265220))

(declare-fun b_and!236695 () Bool)

(assert (= b_and!236689 (and (=> t!265220 result!225336) b_and!236695)))

(declare-fun t!265222 () Bool)

(declare-fun tb!181775 () Bool)

(assert (=> (and b!3395738 (= (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494)))))) t!265222) tb!181775))

(declare-fun result!225338 () Bool)

(assert (= result!225338 result!225334))

(assert (=> d!965235 t!265222))

(declare-fun b_and!236697 () Bool)

(assert (= b_and!236691 (and (=> t!265222 result!225338) b_and!236697)))

(declare-fun m!3766015 () Bool)

(assert (=> d!965235 m!3766015))

(declare-fun m!3766017 () Bool)

(assert (=> d!965235 m!3766017))

(assert (=> b!3395730 d!965235))

(declare-fun b!3395914 () Bool)

(declare-fun lt!1154392 () List!37068)

(declare-fun e!2107968 () Bool)

(assert (=> b!3395914 (= e!2107968 (or (not (= lt!1154327 Nil!36944)) (= lt!1154392 lt!1154328)))))

(declare-fun b!3395911 () Bool)

(declare-fun e!2107967 () List!37068)

(assert (=> b!3395911 (= e!2107967 lt!1154327)))

(declare-fun b!3395912 () Bool)

(assert (=> b!3395912 (= e!2107967 (Cons!36944 (h!42364 lt!1154328) (++!9047 (t!265197 lt!1154328) lt!1154327)))))

(declare-fun b!3395913 () Bool)

(declare-fun res!1374022 () Bool)

(assert (=> b!3395913 (=> (not res!1374022) (not e!2107968))))

(assert (=> b!3395913 (= res!1374022 (= (size!27965 lt!1154392) (+ (size!27965 lt!1154328) (size!27965 lt!1154327))))))

(declare-fun d!965237 () Bool)

(assert (=> d!965237 e!2107968))

(declare-fun res!1374021 () Bool)

(assert (=> d!965237 (=> (not res!1374021) (not e!2107968))))

(assert (=> d!965237 (= res!1374021 (= (content!5105 lt!1154392) ((_ map or) (content!5105 lt!1154328) (content!5105 lt!1154327))))))

(assert (=> d!965237 (= lt!1154392 e!2107967)))

(declare-fun c!578848 () Bool)

(assert (=> d!965237 (= c!578848 ((_ is Nil!36944) lt!1154328))))

(assert (=> d!965237 (= (++!9047 lt!1154328 lt!1154327) lt!1154392)))

(assert (= (and d!965237 c!578848) b!3395911))

(assert (= (and d!965237 (not c!578848)) b!3395912))

(assert (= (and d!965237 res!1374021) b!3395913))

(assert (= (and b!3395913 res!1374022) b!3395914))

(declare-fun m!3766019 () Bool)

(assert (=> b!3395912 m!3766019))

(declare-fun m!3766021 () Bool)

(assert (=> b!3395913 m!3766021))

(declare-fun m!3766023 () Bool)

(assert (=> b!3395913 m!3766023))

(declare-fun m!3766025 () Bool)

(assert (=> b!3395913 m!3766025))

(declare-fun m!3766027 () Bool)

(assert (=> d!965237 m!3766027))

(declare-fun m!3766029 () Bool)

(assert (=> d!965237 m!3766029))

(declare-fun m!3766031 () Bool)

(assert (=> d!965237 m!3766031))

(assert (=> b!3395751 d!965237))

(declare-fun d!965239 () Bool)

(assert (=> d!965239 (= (++!9047 (++!9047 lt!1154328 lt!1154333) lt!1154331) (++!9047 lt!1154328 (++!9047 lt!1154333 lt!1154331)))))

(declare-fun lt!1154395 () Unit!52116)

(declare-fun choose!19692 (List!37068 List!37068 List!37068) Unit!52116)

(assert (=> d!965239 (= lt!1154395 (choose!19692 lt!1154328 lt!1154333 lt!1154331))))

(assert (=> d!965239 (= (lemmaConcatAssociativity!1892 lt!1154328 lt!1154333 lt!1154331) lt!1154395)))

(declare-fun bs!555814 () Bool)

(assert (= bs!555814 d!965239))

(assert (=> bs!555814 m!3765679))

(assert (=> bs!555814 m!3765679))

(assert (=> bs!555814 m!3765681))

(assert (=> bs!555814 m!3765743))

(declare-fun m!3766033 () Bool)

(assert (=> bs!555814 m!3766033))

(assert (=> bs!555814 m!3765743))

(declare-fun m!3766035 () Bool)

(assert (=> bs!555814 m!3766035))

(assert (=> b!3395751 d!965239))

(declare-fun d!965241 () Bool)

(declare-fun lt!1154398 () Bool)

(declare-fun isEmpty!21210 (List!37070) Bool)

(assert (=> d!965241 (= lt!1154398 (isEmpty!21210 (list!13385 (_1!21417 (lex!2307 thiss!18206 rules!2135 (seqFromList!3837 lt!1154328))))))))

(declare-fun isEmpty!21211 (Conc!11160) Bool)

(assert (=> d!965241 (= lt!1154398 (isEmpty!21211 (c!578814 (_1!21417 (lex!2307 thiss!18206 rules!2135 (seqFromList!3837 lt!1154328))))))))

(assert (=> d!965241 (= (isEmpty!21202 (_1!21417 (lex!2307 thiss!18206 rules!2135 (seqFromList!3837 lt!1154328)))) lt!1154398)))

(declare-fun bs!555815 () Bool)

(assert (= bs!555815 d!965241))

(declare-fun m!3766037 () Bool)

(assert (=> bs!555815 m!3766037))

(assert (=> bs!555815 m!3766037))

(declare-fun m!3766039 () Bool)

(assert (=> bs!555815 m!3766039))

(declare-fun m!3766041 () Bool)

(assert (=> bs!555815 m!3766041))

(assert (=> b!3395736 d!965241))

(declare-fun d!965243 () Bool)

(declare-fun e!2107975 () Bool)

(assert (=> d!965243 e!2107975))

(declare-fun res!1374029 () Bool)

(assert (=> d!965243 (=> (not res!1374029) (not e!2107975))))

(declare-fun e!2107976 () Bool)

(assert (=> d!965243 (= res!1374029 e!2107976)))

(declare-fun c!578851 () Bool)

(declare-fun lt!1154401 () tuple2!36566)

(assert (=> d!965243 (= c!578851 (> (size!27966 (_1!21417 lt!1154401)) 0))))

(declare-fun lexTailRecV2!1024 (LexerInterface!4981 List!37071 BalanceConc!21932 BalanceConc!21932 BalanceConc!21932 BalanceConc!21934) tuple2!36566)

(assert (=> d!965243 (= lt!1154401 (lexTailRecV2!1024 thiss!18206 rules!2135 (seqFromList!3837 lt!1154328) (BalanceConc!21933 Empty!11159) (seqFromList!3837 lt!1154328) (BalanceConc!21935 Empty!11160)))))

(assert (=> d!965243 (= (lex!2307 thiss!18206 rules!2135 (seqFromList!3837 lt!1154328)) lt!1154401)))

(declare-fun b!3395925 () Bool)

(declare-fun res!1374030 () Bool)

(assert (=> b!3395925 (=> (not res!1374030) (not e!2107975))))

(declare-datatypes ((tuple2!36570 0))(
  ( (tuple2!36571 (_1!21419 List!37070) (_2!21419 List!37068)) )
))
(declare-fun lexList!1416 (LexerInterface!4981 List!37071 List!37068) tuple2!36570)

(assert (=> b!3395925 (= res!1374030 (= (list!13385 (_1!21417 lt!1154401)) (_1!21419 (lexList!1416 thiss!18206 rules!2135 (list!13381 (seqFromList!3837 lt!1154328))))))))

(declare-fun b!3395926 () Bool)

(declare-fun e!2107977 () Bool)

(assert (=> b!3395926 (= e!2107976 e!2107977)))

(declare-fun res!1374031 () Bool)

(declare-fun size!27967 (BalanceConc!21932) Int)

(assert (=> b!3395926 (= res!1374031 (< (size!27967 (_2!21417 lt!1154401)) (size!27967 (seqFromList!3837 lt!1154328))))))

(assert (=> b!3395926 (=> (not res!1374031) (not e!2107977))))

(declare-fun b!3395927 () Bool)

(assert (=> b!3395927 (= e!2107977 (not (isEmpty!21202 (_1!21417 lt!1154401))))))

(declare-fun b!3395928 () Bool)

(assert (=> b!3395928 (= e!2107976 (= (_2!21417 lt!1154401) (seqFromList!3837 lt!1154328)))))

(declare-fun b!3395929 () Bool)

(assert (=> b!3395929 (= e!2107975 (= (list!13381 (_2!21417 lt!1154401)) (_2!21419 (lexList!1416 thiss!18206 rules!2135 (list!13381 (seqFromList!3837 lt!1154328))))))))

(assert (= (and d!965243 c!578851) b!3395926))

(assert (= (and d!965243 (not c!578851)) b!3395928))

(assert (= (and b!3395926 res!1374031) b!3395927))

(assert (= (and d!965243 res!1374029) b!3395925))

(assert (= (and b!3395925 res!1374030) b!3395929))

(declare-fun m!3766043 () Bool)

(assert (=> b!3395929 m!3766043))

(assert (=> b!3395929 m!3765707))

(declare-fun m!3766045 () Bool)

(assert (=> b!3395929 m!3766045))

(assert (=> b!3395929 m!3766045))

(declare-fun m!3766047 () Bool)

(assert (=> b!3395929 m!3766047))

(declare-fun m!3766049 () Bool)

(assert (=> b!3395925 m!3766049))

(assert (=> b!3395925 m!3765707))

(assert (=> b!3395925 m!3766045))

(assert (=> b!3395925 m!3766045))

(assert (=> b!3395925 m!3766047))

(declare-fun m!3766051 () Bool)

(assert (=> b!3395926 m!3766051))

(assert (=> b!3395926 m!3765707))

(declare-fun m!3766053 () Bool)

(assert (=> b!3395926 m!3766053))

(declare-fun m!3766055 () Bool)

(assert (=> d!965243 m!3766055))

(assert (=> d!965243 m!3765707))

(assert (=> d!965243 m!3765707))

(declare-fun m!3766057 () Bool)

(assert (=> d!965243 m!3766057))

(declare-fun m!3766059 () Bool)

(assert (=> b!3395927 m!3766059))

(assert (=> b!3395736 d!965243))

(declare-fun d!965245 () Bool)

(declare-fun fromListB!1718 (List!37068) BalanceConc!21932)

(assert (=> d!965245 (= (seqFromList!3837 lt!1154328) (fromListB!1718 lt!1154328))))

(declare-fun bs!555816 () Bool)

(assert (= bs!555816 d!965245))

(declare-fun m!3766061 () Bool)

(assert (=> bs!555816 m!3766061))

(assert (=> b!3395736 d!965245))

(declare-fun d!965247 () Bool)

(assert (=> d!965247 (= (list!13381 (charsOf!3406 (h!42366 tokens!494))) (list!13384 (c!578813 (charsOf!3406 (h!42366 tokens!494)))))))

(declare-fun bs!555817 () Bool)

(assert (= bs!555817 d!965247))

(declare-fun m!3766063 () Bool)

(assert (=> bs!555817 m!3766063))

(assert (=> b!3395726 d!965247))

(declare-fun d!965249 () Bool)

(declare-fun lt!1154402 () BalanceConc!21932)

(assert (=> d!965249 (= (list!13381 lt!1154402) (originalCharacters!6106 (h!42366 tokens!494)))))

(assert (=> d!965249 (= lt!1154402 (dynLambda!15399 (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (value!174132 (h!42366 tokens!494))))))

(assert (=> d!965249 (= (charsOf!3406 (h!42366 tokens!494)) lt!1154402)))

(declare-fun b_lambda!96657 () Bool)

(assert (=> (not b_lambda!96657) (not d!965249)))

(assert (=> d!965249 t!265202))

(declare-fun b_and!236699 () Bool)

(assert (= b_and!236693 (and (=> t!265202 result!225320) b_and!236699)))

(assert (=> d!965249 t!265204))

(declare-fun b_and!236701 () Bool)

(assert (= b_and!236695 (and (=> t!265204 result!225324) b_and!236701)))

(assert (=> d!965249 t!265206))

(declare-fun b_and!236703 () Bool)

(assert (= b_and!236697 (and (=> t!265206 result!225326) b_and!236703)))

(declare-fun m!3766065 () Bool)

(assert (=> d!965249 m!3766065))

(assert (=> d!965249 m!3765779))

(assert (=> b!3395726 d!965249))

(declare-fun d!965251 () Bool)

(declare-fun res!1374036 () Bool)

(declare-fun e!2107982 () Bool)

(assert (=> d!965251 (=> res!1374036 e!2107982)))

(assert (=> d!965251 (= res!1374036 (not ((_ is Cons!36947) rules!2135)))))

(assert (=> d!965251 (= (sepAndNonSepRulesDisjointChars!1586 rules!2135 rules!2135) e!2107982)))

(declare-fun b!3395934 () Bool)

(declare-fun e!2107983 () Bool)

(assert (=> b!3395934 (= e!2107982 e!2107983)))

(declare-fun res!1374037 () Bool)

(assert (=> b!3395934 (=> (not res!1374037) (not e!2107983))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!687 (Rule!10584 List!37071) Bool)

(assert (=> b!3395934 (= res!1374037 (ruleDisjointCharsFromAllFromOtherType!687 (h!42367 rules!2135) rules!2135))))

(declare-fun b!3395935 () Bool)

(assert (=> b!3395935 (= e!2107983 (sepAndNonSepRulesDisjointChars!1586 rules!2135 (t!265200 rules!2135)))))

(assert (= (and d!965251 (not res!1374036)) b!3395934))

(assert (= (and b!3395934 res!1374037) b!3395935))

(declare-fun m!3766067 () Bool)

(assert (=> b!3395934 m!3766067))

(declare-fun m!3766069 () Bool)

(assert (=> b!3395935 m!3766069))

(assert (=> b!3395747 d!965251))

(declare-fun bs!555828 () Bool)

(declare-fun d!965253 () Bool)

(assert (= bs!555828 (and d!965253 b!3395741)))

(declare-fun lambda!120811 () Int)

(assert (=> bs!555828 (not (= lambda!120811 lambda!120801))))

(declare-fun b!3396128 () Bool)

(declare-fun e!2108117 () Bool)

(assert (=> b!3396128 (= e!2108117 true)))

(declare-fun b!3396127 () Bool)

(declare-fun e!2108116 () Bool)

(assert (=> b!3396127 (= e!2108116 e!2108117)))

(declare-fun b!3396126 () Bool)

(declare-fun e!2108115 () Bool)

(assert (=> b!3396126 (= e!2108115 e!2108116)))

(assert (=> d!965253 e!2108115))

(assert (= b!3396127 b!3396128))

(assert (= b!3396126 b!3396127))

(assert (= (and d!965253 ((_ is Cons!36947) rules!2135)) b!3396126))

(declare-fun order!19491 () Int)

(declare-fun order!19489 () Int)

(declare-fun dynLambda!15402 (Int Int) Int)

(declare-fun dynLambda!15403 (Int Int) Int)

(assert (=> b!3396128 (< (dynLambda!15402 order!19489 (toValue!7588 (transformation!5392 (h!42367 rules!2135)))) (dynLambda!15403 order!19491 lambda!120811))))

(declare-fun order!19493 () Int)

(declare-fun dynLambda!15404 (Int Int) Int)

(assert (=> b!3396128 (< (dynLambda!15404 order!19493 (toChars!7447 (transformation!5392 (h!42367 rules!2135)))) (dynLambda!15403 order!19491 lambda!120811))))

(assert (=> d!965253 true))

(declare-fun e!2108108 () Bool)

(assert (=> d!965253 e!2108108))

(declare-fun res!1374104 () Bool)

(assert (=> d!965253 (=> (not res!1374104) (not e!2108108))))

(declare-fun lt!1154464 () Bool)

(assert (=> d!965253 (= res!1374104 (= lt!1154464 (forall!7799 (list!13385 (seqFromList!3838 tokens!494)) lambda!120811)))))

(declare-fun forall!7801 (BalanceConc!21934 Int) Bool)

(assert (=> d!965253 (= lt!1154464 (forall!7801 (seqFromList!3838 tokens!494) lambda!120811))))

(assert (=> d!965253 (not (isEmpty!21203 rules!2135))))

(assert (=> d!965253 (= (rulesProduceEachTokenIndividually!1432 thiss!18206 rules!2135 (seqFromList!3838 tokens!494)) lt!1154464)))

(declare-fun b!3396117 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1823 (LexerInterface!4981 List!37071 List!37070) Bool)

(assert (=> b!3396117 (= e!2108108 (= lt!1154464 (rulesProduceEachTokenIndividuallyList!1823 thiss!18206 rules!2135 (list!13385 (seqFromList!3838 tokens!494)))))))

(assert (= (and d!965253 res!1374104) b!3396117))

(assert (=> d!965253 m!3765683))

(declare-fun m!3766347 () Bool)

(assert (=> d!965253 m!3766347))

(assert (=> d!965253 m!3766347))

(declare-fun m!3766349 () Bool)

(assert (=> d!965253 m!3766349))

(assert (=> d!965253 m!3765683))

(declare-fun m!3766351 () Bool)

(assert (=> d!965253 m!3766351))

(assert (=> d!965253 m!3765725))

(assert (=> b!3396117 m!3765683))

(assert (=> b!3396117 m!3766347))

(assert (=> b!3396117 m!3766347))

(declare-fun m!3766353 () Bool)

(assert (=> b!3396117 m!3766353))

(assert (=> b!3395748 d!965253))

(declare-fun d!965329 () Bool)

(declare-fun fromListB!1719 (List!37070) BalanceConc!21934)

(assert (=> d!965329 (= (seqFromList!3838 tokens!494) (fromListB!1719 tokens!494))))

(declare-fun bs!555829 () Bool)

(assert (= bs!555829 d!965329))

(declare-fun m!3766355 () Bool)

(assert (=> bs!555829 m!3766355))

(assert (=> b!3395748 d!965329))

(declare-fun b!3396134 () Bool)

(declare-fun e!2108119 () Bool)

(declare-fun lt!1154465 () List!37068)

(assert (=> b!3396134 (= e!2108119 (or (not (= lt!1154331 Nil!36944)) (= lt!1154465 (++!9047 lt!1154328 lt!1154333))))))

(declare-fun b!3396131 () Bool)

(declare-fun e!2108118 () List!37068)

(assert (=> b!3396131 (= e!2108118 lt!1154331)))

(declare-fun b!3396132 () Bool)

(assert (=> b!3396132 (= e!2108118 (Cons!36944 (h!42364 (++!9047 lt!1154328 lt!1154333)) (++!9047 (t!265197 (++!9047 lt!1154328 lt!1154333)) lt!1154331)))))

(declare-fun b!3396133 () Bool)

(declare-fun res!1374106 () Bool)

(assert (=> b!3396133 (=> (not res!1374106) (not e!2108119))))

(assert (=> b!3396133 (= res!1374106 (= (size!27965 lt!1154465) (+ (size!27965 (++!9047 lt!1154328 lt!1154333)) (size!27965 lt!1154331))))))

(declare-fun d!965331 () Bool)

(assert (=> d!965331 e!2108119))

(declare-fun res!1374105 () Bool)

(assert (=> d!965331 (=> (not res!1374105) (not e!2108119))))

(assert (=> d!965331 (= res!1374105 (= (content!5105 lt!1154465) ((_ map or) (content!5105 (++!9047 lt!1154328 lt!1154333)) (content!5105 lt!1154331))))))

(assert (=> d!965331 (= lt!1154465 e!2108118)))

(declare-fun c!578873 () Bool)

(assert (=> d!965331 (= c!578873 ((_ is Nil!36944) (++!9047 lt!1154328 lt!1154333)))))

(assert (=> d!965331 (= (++!9047 (++!9047 lt!1154328 lt!1154333) lt!1154331) lt!1154465)))

(assert (= (and d!965331 c!578873) b!3396131))

(assert (= (and d!965331 (not c!578873)) b!3396132))

(assert (= (and d!965331 res!1374105) b!3396133))

(assert (= (and b!3396133 res!1374106) b!3396134))

(declare-fun m!3766357 () Bool)

(assert (=> b!3396132 m!3766357))

(declare-fun m!3766359 () Bool)

(assert (=> b!3396133 m!3766359))

(assert (=> b!3396133 m!3765679))

(declare-fun m!3766361 () Bool)

(assert (=> b!3396133 m!3766361))

(assert (=> b!3396133 m!3765955))

(declare-fun m!3766363 () Bool)

(assert (=> d!965331 m!3766363))

(assert (=> d!965331 m!3765679))

(declare-fun m!3766365 () Bool)

(assert (=> d!965331 m!3766365))

(assert (=> d!965331 m!3765961))

(assert (=> b!3395737 d!965331))

(declare-fun e!2108121 () Bool)

(declare-fun b!3396138 () Bool)

(declare-fun lt!1154466 () List!37068)

(assert (=> b!3396138 (= e!2108121 (or (not (= lt!1154333 Nil!36944)) (= lt!1154466 lt!1154328)))))

(declare-fun b!3396135 () Bool)

(declare-fun e!2108120 () List!37068)

(assert (=> b!3396135 (= e!2108120 lt!1154333)))

(declare-fun b!3396136 () Bool)

(assert (=> b!3396136 (= e!2108120 (Cons!36944 (h!42364 lt!1154328) (++!9047 (t!265197 lt!1154328) lt!1154333)))))

(declare-fun b!3396137 () Bool)

(declare-fun res!1374108 () Bool)

(assert (=> b!3396137 (=> (not res!1374108) (not e!2108121))))

(assert (=> b!3396137 (= res!1374108 (= (size!27965 lt!1154466) (+ (size!27965 lt!1154328) (size!27965 lt!1154333))))))

(declare-fun d!965333 () Bool)

(assert (=> d!965333 e!2108121))

(declare-fun res!1374107 () Bool)

(assert (=> d!965333 (=> (not res!1374107) (not e!2108121))))

(assert (=> d!965333 (= res!1374107 (= (content!5105 lt!1154466) ((_ map or) (content!5105 lt!1154328) (content!5105 lt!1154333))))))

(assert (=> d!965333 (= lt!1154466 e!2108120)))

(declare-fun c!578874 () Bool)

(assert (=> d!965333 (= c!578874 ((_ is Nil!36944) lt!1154328))))

(assert (=> d!965333 (= (++!9047 lt!1154328 lt!1154333) lt!1154466)))

(assert (= (and d!965333 c!578874) b!3396135))

(assert (= (and d!965333 (not c!578874)) b!3396136))

(assert (= (and d!965333 res!1374107) b!3396137))

(assert (= (and b!3396137 res!1374108) b!3396138))

(declare-fun m!3766367 () Bool)

(assert (=> b!3396136 m!3766367))

(declare-fun m!3766369 () Bool)

(assert (=> b!3396137 m!3766369))

(assert (=> b!3396137 m!3766023))

(assert (=> b!3396137 m!3765953))

(declare-fun m!3766371 () Bool)

(assert (=> d!965333 m!3766371))

(assert (=> d!965333 m!3766029))

(assert (=> d!965333 m!3765959))

(assert (=> b!3395737 d!965333))

(declare-fun d!965335 () Bool)

(declare-fun lt!1154467 () Bool)

(declare-fun e!2108122 () Bool)

(assert (=> d!965335 (= lt!1154467 e!2108122)))

(declare-fun res!1374111 () Bool)

(assert (=> d!965335 (=> (not res!1374111) (not e!2108122))))

(assert (=> d!965335 (= res!1374111 (= (list!13385 (_1!21417 (lex!2307 thiss!18206 rules!2135 (print!2046 thiss!18206 (singletonSeq!2488 (h!42366 tokens!494)))))) (list!13385 (singletonSeq!2488 (h!42366 tokens!494)))))))

(declare-fun e!2108123 () Bool)

(assert (=> d!965335 (= lt!1154467 e!2108123)))

(declare-fun res!1374110 () Bool)

(assert (=> d!965335 (=> (not res!1374110) (not e!2108123))))

(declare-fun lt!1154468 () tuple2!36566)

(assert (=> d!965335 (= res!1374110 (= (size!27966 (_1!21417 lt!1154468)) 1))))

(assert (=> d!965335 (= lt!1154468 (lex!2307 thiss!18206 rules!2135 (print!2046 thiss!18206 (singletonSeq!2488 (h!42366 tokens!494)))))))

(assert (=> d!965335 (not (isEmpty!21203 rules!2135))))

(assert (=> d!965335 (= (rulesProduceIndividualToken!2473 thiss!18206 rules!2135 (h!42366 tokens!494)) lt!1154467)))

(declare-fun b!3396139 () Bool)

(declare-fun res!1374109 () Bool)

(assert (=> b!3396139 (=> (not res!1374109) (not e!2108123))))

(assert (=> b!3396139 (= res!1374109 (= (apply!8613 (_1!21417 lt!1154468) 0) (h!42366 tokens!494)))))

(declare-fun b!3396140 () Bool)

(assert (=> b!3396140 (= e!2108123 (isEmpty!21209 (_2!21417 lt!1154468)))))

(declare-fun b!3396141 () Bool)

(assert (=> b!3396141 (= e!2108122 (isEmpty!21209 (_2!21417 (lex!2307 thiss!18206 rules!2135 (print!2046 thiss!18206 (singletonSeq!2488 (h!42366 tokens!494)))))))))

(assert (= (and d!965335 res!1374110) b!3396139))

(assert (= (and b!3396139 res!1374109) b!3396140))

(assert (= (and d!965335 res!1374111) b!3396141))

(assert (=> d!965335 m!3765715))

(declare-fun m!3766373 () Bool)

(assert (=> d!965335 m!3766373))

(declare-fun m!3766375 () Bool)

(assert (=> d!965335 m!3766375))

(assert (=> d!965335 m!3765715))

(declare-fun m!3766377 () Bool)

(assert (=> d!965335 m!3766377))

(assert (=> d!965335 m!3765725))

(assert (=> d!965335 m!3765715))

(assert (=> d!965335 m!3766373))

(declare-fun m!3766379 () Bool)

(assert (=> d!965335 m!3766379))

(declare-fun m!3766381 () Bool)

(assert (=> d!965335 m!3766381))

(declare-fun m!3766383 () Bool)

(assert (=> b!3396139 m!3766383))

(declare-fun m!3766385 () Bool)

(assert (=> b!3396140 m!3766385))

(assert (=> b!3396141 m!3765715))

(assert (=> b!3396141 m!3765715))

(assert (=> b!3396141 m!3766373))

(assert (=> b!3396141 m!3766373))

(assert (=> b!3396141 m!3766375))

(declare-fun m!3766387 () Bool)

(assert (=> b!3396141 m!3766387))

(assert (=> b!3395727 d!965335))

(declare-fun b!3396155 () Bool)

(declare-fun b_free!88877 () Bool)

(declare-fun b_next!89581 () Bool)

(assert (=> b!3396155 (= b_free!88877 (not b_next!89581))))

(declare-fun tp!1060042 () Bool)

(declare-fun b_and!236743 () Bool)

(assert (=> b!3396155 (= tp!1060042 b_and!236743)))

(declare-fun b_free!88879 () Bool)

(declare-fun b_next!89583 () Bool)

(assert (=> b!3396155 (= b_free!88879 (not b_next!89583))))

(declare-fun t!265263 () Bool)

(declare-fun tb!181807 () Bool)

(assert (=> (and b!3396155 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241)))) t!265263) tb!181807))

(declare-fun result!225382 () Bool)

(assert (= result!225382 result!225328))

(assert (=> d!965223 t!265263))

(assert (=> b!3395852 t!265263))

(declare-fun t!265265 () Bool)

(declare-fun tb!181809 () Bool)

(assert (=> (and b!3396155 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494))))) t!265265) tb!181809))

(declare-fun result!225384 () Bool)

(assert (= result!225384 result!225320))

(assert (=> b!3395763 t!265265))

(assert (=> d!965249 t!265265))

(declare-fun t!265267 () Bool)

(declare-fun tb!181811 () Bool)

(assert (=> (and b!3396155 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494)))))) t!265267) tb!181811))

(declare-fun result!225386 () Bool)

(assert (= result!225386 result!225334))

(assert (=> d!965235 t!265267))

(declare-fun tp!1060040 () Bool)

(declare-fun b_and!236745 () Bool)

(assert (=> b!3396155 (= tp!1060040 (and (=> t!265267 result!225386) (=> t!265265 result!225384) (=> t!265263 result!225382) b_and!236745))))

(declare-fun e!2108137 () Bool)

(assert (=> b!3395734 (= tp!1059960 e!2108137)))

(declare-fun e!2108140 () Bool)

(declare-fun e!2108139 () Bool)

(declare-fun b!3396154 () Bool)

(declare-fun tp!1060043 () Bool)

(assert (=> b!3396154 (= e!2108139 (and tp!1060043 (inv!50033 (tag!5976 (rule!7952 (h!42366 (t!265199 tokens!494))))) (inv!50036 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) e!2108140))))

(declare-fun b!3396152 () Bool)

(declare-fun e!2108141 () Bool)

(declare-fun tp!1060039 () Bool)

(assert (=> b!3396152 (= e!2108137 (and (inv!50037 (h!42366 (t!265199 tokens!494))) e!2108141 tp!1060039))))

(assert (=> b!3396155 (= e!2108140 (and tp!1060042 tp!1060040))))

(declare-fun b!3396153 () Bool)

(declare-fun tp!1060041 () Bool)

(assert (=> b!3396153 (= e!2108141 (and (inv!21 (value!174132 (h!42366 (t!265199 tokens!494)))) e!2108139 tp!1060041))))

(assert (= b!3396154 b!3396155))

(assert (= b!3396153 b!3396154))

(assert (= b!3396152 b!3396153))

(assert (= (and b!3395734 ((_ is Cons!36946) (t!265199 tokens!494))) b!3396152))

(declare-fun m!3766389 () Bool)

(assert (=> b!3396154 m!3766389))

(declare-fun m!3766391 () Bool)

(assert (=> b!3396154 m!3766391))

(declare-fun m!3766393 () Bool)

(assert (=> b!3396152 m!3766393))

(declare-fun m!3766395 () Bool)

(assert (=> b!3396153 m!3766395))

(declare-fun b!3396160 () Bool)

(declare-fun e!2108144 () Bool)

(declare-fun tp_is_empty!17493 () Bool)

(declare-fun tp!1060046 () Bool)

(assert (=> b!3396160 (= e!2108144 (and tp_is_empty!17493 tp!1060046))))

(assert (=> b!3395745 (= tp!1059951 e!2108144)))

(assert (= (and b!3395745 ((_ is Cons!36944) (originalCharacters!6106 (h!42366 tokens!494)))) b!3396160))

(declare-fun e!2108147 () Bool)

(assert (=> b!3395746 (= tp!1059957 e!2108147)))

(declare-fun b!3396171 () Bool)

(assert (=> b!3396171 (= e!2108147 tp_is_empty!17493)))

(declare-fun b!3396174 () Bool)

(declare-fun tp!1060057 () Bool)

(declare-fun tp!1060059 () Bool)

(assert (=> b!3396174 (= e!2108147 (and tp!1060057 tp!1060059))))

(declare-fun b!3396173 () Bool)

(declare-fun tp!1060060 () Bool)

(assert (=> b!3396173 (= e!2108147 tp!1060060)))

(declare-fun b!3396172 () Bool)

(declare-fun tp!1060058 () Bool)

(declare-fun tp!1060061 () Bool)

(assert (=> b!3396172 (= e!2108147 (and tp!1060058 tp!1060061))))

(assert (= (and b!3395746 ((_ is ElementMatch!10151) (regex!5392 (h!42367 rules!2135)))) b!3396171))

(assert (= (and b!3395746 ((_ is Concat!15773) (regex!5392 (h!42367 rules!2135)))) b!3396172))

(assert (= (and b!3395746 ((_ is Star!10151) (regex!5392 (h!42367 rules!2135)))) b!3396173))

(assert (= (and b!3395746 ((_ is Union!10151) (regex!5392 (h!42367 rules!2135)))) b!3396174))

(declare-fun e!2108148 () Bool)

(assert (=> b!3395742 (= tp!1059958 e!2108148)))

(declare-fun b!3396175 () Bool)

(assert (=> b!3396175 (= e!2108148 tp_is_empty!17493)))

(declare-fun b!3396178 () Bool)

(declare-fun tp!1060062 () Bool)

(declare-fun tp!1060064 () Bool)

(assert (=> b!3396178 (= e!2108148 (and tp!1060062 tp!1060064))))

(declare-fun b!3396177 () Bool)

(declare-fun tp!1060065 () Bool)

(assert (=> b!3396177 (= e!2108148 tp!1060065)))

(declare-fun b!3396176 () Bool)

(declare-fun tp!1060063 () Bool)

(declare-fun tp!1060066 () Bool)

(assert (=> b!3396176 (= e!2108148 (and tp!1060063 tp!1060066))))

(assert (= (and b!3395742 ((_ is ElementMatch!10151) (regex!5392 (rule!7952 separatorToken!241)))) b!3396175))

(assert (= (and b!3395742 ((_ is Concat!15773) (regex!5392 (rule!7952 separatorToken!241)))) b!3396176))

(assert (= (and b!3395742 ((_ is Star!10151) (regex!5392 (rule!7952 separatorToken!241)))) b!3396177))

(assert (= (and b!3395742 ((_ is Union!10151) (regex!5392 (rule!7952 separatorToken!241)))) b!3396178))

(declare-fun e!2108149 () Bool)

(assert (=> b!3395731 (= tp!1059962 e!2108149)))

(declare-fun b!3396179 () Bool)

(assert (=> b!3396179 (= e!2108149 tp_is_empty!17493)))

(declare-fun b!3396182 () Bool)

(declare-fun tp!1060067 () Bool)

(declare-fun tp!1060069 () Bool)

(assert (=> b!3396182 (= e!2108149 (and tp!1060067 tp!1060069))))

(declare-fun b!3396181 () Bool)

(declare-fun tp!1060070 () Bool)

(assert (=> b!3396181 (= e!2108149 tp!1060070)))

(declare-fun b!3396180 () Bool)

(declare-fun tp!1060068 () Bool)

(declare-fun tp!1060071 () Bool)

(assert (=> b!3396180 (= e!2108149 (and tp!1060068 tp!1060071))))

(assert (= (and b!3395731 ((_ is ElementMatch!10151) (regex!5392 (rule!7952 (h!42366 tokens!494))))) b!3396179))

(assert (= (and b!3395731 ((_ is Concat!15773) (regex!5392 (rule!7952 (h!42366 tokens!494))))) b!3396180))

(assert (= (and b!3395731 ((_ is Star!10151) (regex!5392 (rule!7952 (h!42366 tokens!494))))) b!3396181))

(assert (= (and b!3395731 ((_ is Union!10151) (regex!5392 (rule!7952 (h!42366 tokens!494))))) b!3396182))

(declare-fun b!3396193 () Bool)

(declare-fun b_free!88881 () Bool)

(declare-fun b_next!89585 () Bool)

(assert (=> b!3396193 (= b_free!88881 (not b_next!89585))))

(declare-fun tp!1060083 () Bool)

(declare-fun b_and!236747 () Bool)

(assert (=> b!3396193 (= tp!1060083 b_and!236747)))

(declare-fun b_free!88883 () Bool)

(declare-fun b_next!89587 () Bool)

(assert (=> b!3396193 (= b_free!88883 (not b_next!89587))))

(declare-fun tb!181813 () Bool)

(declare-fun t!265269 () Bool)

(assert (=> (and b!3396193 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241)))) t!265269) tb!181813))

(declare-fun result!225394 () Bool)

(assert (= result!225394 result!225328))

(assert (=> d!965223 t!265269))

(assert (=> b!3395852 t!265269))

(declare-fun t!265271 () Bool)

(declare-fun tb!181815 () Bool)

(assert (=> (and b!3396193 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494))))) t!265271) tb!181815))

(declare-fun result!225396 () Bool)

(assert (= result!225396 result!225320))

(assert (=> b!3395763 t!265271))

(assert (=> d!965249 t!265271))

(declare-fun t!265273 () Bool)

(declare-fun tb!181817 () Bool)

(assert (=> (and b!3396193 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494)))))) t!265273) tb!181817))

(declare-fun result!225398 () Bool)

(assert (= result!225398 result!225334))

(assert (=> d!965235 t!265273))

(declare-fun b_and!236749 () Bool)

(declare-fun tp!1060081 () Bool)

(assert (=> b!3396193 (= tp!1060081 (and (=> t!265269 result!225394) (=> t!265273 result!225398) (=> t!265271 result!225396) b_and!236749))))

(declare-fun e!2108161 () Bool)

(assert (=> b!3396193 (= e!2108161 (and tp!1060083 tp!1060081))))

(declare-fun e!2108158 () Bool)

(declare-fun b!3396192 () Bool)

(declare-fun tp!1060082 () Bool)

(assert (=> b!3396192 (= e!2108158 (and tp!1060082 (inv!50033 (tag!5976 (h!42367 (t!265200 rules!2135)))) (inv!50036 (transformation!5392 (h!42367 (t!265200 rules!2135)))) e!2108161))))

(declare-fun b!3396191 () Bool)

(declare-fun e!2108159 () Bool)

(declare-fun tp!1060080 () Bool)

(assert (=> b!3396191 (= e!2108159 (and e!2108158 tp!1060080))))

(assert (=> b!3395732 (= tp!1059956 e!2108159)))

(assert (= b!3396192 b!3396193))

(assert (= b!3396191 b!3396192))

(assert (= (and b!3395732 ((_ is Cons!36947) (t!265200 rules!2135))) b!3396191))

(declare-fun m!3766397 () Bool)

(assert (=> b!3396192 m!3766397))

(declare-fun m!3766399 () Bool)

(assert (=> b!3396192 m!3766399))

(declare-fun b!3396194 () Bool)

(declare-fun e!2108162 () Bool)

(declare-fun tp!1060084 () Bool)

(assert (=> b!3396194 (= e!2108162 (and tp_is_empty!17493 tp!1060084))))

(assert (=> b!3395743 (= tp!1059954 e!2108162)))

(assert (= (and b!3395743 ((_ is Cons!36944) (originalCharacters!6106 separatorToken!241))) b!3396194))

(declare-fun b_lambda!96691 () Bool)

(assert (= b_lambda!96643 (or (and b!3395728 b_free!88859) (and b!3395729 b_free!88863 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) (and b!3396155 b_free!88879 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) (and b!3395738 b_free!88867 (= (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) (and b!3396193 b_free!88883 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) b_lambda!96691)))

(declare-fun b_lambda!96693 () Bool)

(assert (= b_lambda!96645 (or b!3395741 b_lambda!96693)))

(declare-fun bs!555830 () Bool)

(declare-fun d!965337 () Bool)

(assert (= bs!555830 (and d!965337 b!3395741)))

(assert (=> bs!555830 (= (dynLambda!15400 lambda!120801 (h!42366 (t!265199 tokens!494))) (not (isSeparator!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))))))

(assert (=> d!965193 d!965337))

(declare-fun b_lambda!96695 () Bool)

(assert (= b_lambda!96653 (or (and b!3395738 b_free!88867) (and b!3396193 b_free!88883 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) (and b!3395728 b_free!88859 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) (and b!3395729 b_free!88863 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) (and b!3396155 b_free!88879 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) b_lambda!96695)))

(declare-fun b_lambda!96697 () Bool)

(assert (= b_lambda!96651 (or b!3395741 b_lambda!96697)))

(declare-fun bs!555831 () Bool)

(declare-fun d!965339 () Bool)

(assert (= bs!555831 (and d!965339 b!3395741)))

(assert (=> bs!555831 (= (dynLambda!15400 lambda!120801 (h!42366 tokens!494)) (not (isSeparator!5392 (rule!7952 (h!42366 tokens!494)))))))

(assert (=> b!3395859 d!965339))

(declare-fun b_lambda!96699 () Bool)

(assert (= b_lambda!96649 (or (and b!3395738 b_free!88867) (and b!3396193 b_free!88883 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) (and b!3395728 b_free!88859 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) (and b!3395729 b_free!88863 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) (and b!3396155 b_free!88879 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))))) b_lambda!96699)))

(declare-fun b_lambda!96701 () Bool)

(assert (= b_lambda!96655 (or (and b!3395729 b_free!88863 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))))) (and b!3395738 b_free!88867 (= (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))))) (and b!3395728 b_free!88859 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))))) (and b!3396155 b_free!88879) (and b!3396193 b_free!88883 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))))) b_lambda!96701)))

(declare-fun b_lambda!96703 () Bool)

(assert (= b_lambda!96647 (or b!3395741 b_lambda!96703)))

(assert (=> d!965195 d!965339))

(declare-fun b_lambda!96705 () Bool)

(assert (= b_lambda!96657 (or (and b!3395728 b_free!88859) (and b!3395729 b_free!88863 (= (toChars!7447 (transformation!5392 (h!42367 rules!2135))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) (and b!3396155 b_free!88879 (= (toChars!7447 (transformation!5392 (rule!7952 (h!42366 (t!265199 tokens!494))))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) (and b!3395738 b_free!88867 (= (toChars!7447 (transformation!5392 (rule!7952 separatorToken!241))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) (and b!3396193 b_free!88883 (= (toChars!7447 (transformation!5392 (h!42367 (t!265200 rules!2135)))) (toChars!7447 (transformation!5392 (rule!7952 (h!42366 tokens!494)))))) b_lambda!96705)))

(check-sat (not b!3395912) (not d!965159) (not d!965171) (not b!3396180) (not b!3396172) (not d!965229) (not b!3395908) (not b!3396173) (not d!965165) (not b_next!89571) (not b!3396191) (not b!3395900) b_and!236749 b_and!236701 (not d!965235) (not b!3396192) b_and!236667 (not d!965215) (not d!965207) (not d!965189) (not b!3396154) (not b!3395899) (not b!3395836) (not b_next!89567) (not b!3396181) (not b!3395853) (not d!965253) (not d!965245) tp_is_empty!17493 (not d!965333) (not d!965329) (not b_lambda!96701) (not d!965203) (not b!3396178) (not b!3396141) (not b_lambda!96691) (not b_next!89569) (not b!3395838) (not b!3395763) (not b!3396177) b_and!236743 (not b_lambda!96693) (not b!3395867) (not b!3395758) (not b!3395876) (not d!965197) (not d!965195) (not d!965233) (not b!3395874) (not d!965217) (not b_next!89585) (not d!965167) (not d!965157) (not b!3395902) (not b!3395866) (not b!3395846) (not d!965331) (not d!965231) (not b!3396139) (not d!965237) (not b!3395896) b_and!236745 (not b!3395907) (not d!965213) (not tb!181771) (not d!965335) (not b_lambda!96703) b_and!236699 (not d!965221) (not b!3395787) (not b!3395764) (not b!3396152) (not b_lambda!96697) (not b_next!89561) (not d!965247) (not b!3396136) (not b!3395929) (not b_lambda!96705) (not b!3396182) (not b!3396117) (not b!3396137) (not b!3395850) (not b_next!89581) (not d!965239) (not b!3395926) (not b!3395925) (not b!3395913) (not b!3395854) (not b_next!89587) b_and!236703 (not b!3395875) (not b!3395841) (not d!965241) (not b!3395889) (not d!965193) (not b!3396133) (not b!3396126) (not b!3395910) (not b!3395864) (not b!3395769) (not b!3395851) (not b!3395784) (not b!3396160) (not b!3395860) (not b!3395927) (not b!3396132) (not tb!181765) (not d!965169) (not d!965243) (not b_next!89563) (not b!3396174) (not b!3396153) (not b!3395862) (not d!965223) b_and!236747 b_and!236663 (not b!3395781) (not b!3395852) (not b!3395879) (not b!3395934) (not d!965249) (not b!3395904) (not b!3395935) (not b_lambda!96699) (not b!3396176) (not b!3395890) (not b!3395783) b_and!236671 (not b_lambda!96695) (not b!3396194) (not b_next!89583) (not b!3395861) (not b_next!89565) (not b!3396140) (not tb!181759))
(check-sat (not b_next!89569) b_and!236743 (not b_next!89585) b_and!236745 b_and!236699 (not b_next!89561) (not b_next!89581) (not b_next!89563) b_and!236671 (not b_next!89571) b_and!236749 b_and!236701 b_and!236667 (not b_next!89567) (not b_next!89587) b_and!236703 b_and!236747 b_and!236663 (not b_next!89583) (not b_next!89565))
