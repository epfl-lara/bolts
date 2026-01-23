; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127874 () Bool)

(assert start!127874)

(declare-fun b!1403149 () Bool)

(declare-fun b_free!34219 () Bool)

(declare-fun b_next!34923 () Bool)

(assert (=> b!1403149 (= b_free!34219 (not b_next!34923))))

(declare-fun tp!399018 () Bool)

(declare-fun b_and!93947 () Bool)

(assert (=> b!1403149 (= tp!399018 b_and!93947)))

(declare-fun b_free!34221 () Bool)

(declare-fun b_next!34925 () Bool)

(assert (=> b!1403149 (= b_free!34221 (not b_next!34925))))

(declare-fun tp!399017 () Bool)

(declare-fun b_and!93949 () Bool)

(assert (=> b!1403149 (= tp!399017 b_and!93949)))

(declare-fun b!1403121 () Bool)

(declare-fun b_free!34223 () Bool)

(declare-fun b_next!34927 () Bool)

(assert (=> b!1403121 (= b_free!34223 (not b_next!34927))))

(declare-fun tp!399019 () Bool)

(declare-fun b_and!93951 () Bool)

(assert (=> b!1403121 (= tp!399019 b_and!93951)))

(declare-fun b_free!34225 () Bool)

(declare-fun b_next!34929 () Bool)

(assert (=> b!1403121 (= b_free!34225 (not b_next!34929))))

(declare-fun tp!399020 () Bool)

(declare-fun b_and!93953 () Bool)

(assert (=> b!1403121 (= tp!399020 b_and!93953)))

(declare-fun b!1403144 () Bool)

(declare-fun b_free!34227 () Bool)

(declare-fun b_next!34931 () Bool)

(assert (=> b!1403144 (= b_free!34227 (not b_next!34931))))

(declare-fun tp!399028 () Bool)

(declare-fun b_and!93955 () Bool)

(assert (=> b!1403144 (= tp!399028 b_and!93955)))

(declare-fun b_free!34229 () Bool)

(declare-fun b_next!34933 () Bool)

(assert (=> b!1403144 (= b_free!34229 (not b_next!34933))))

(declare-fun tp!399027 () Bool)

(declare-fun b_and!93957 () Bool)

(assert (=> b!1403144 (= tp!399027 b_and!93957)))

(declare-fun b!1403145 () Bool)

(assert (=> b!1403145 true))

(assert (=> b!1403145 true))

(declare-fun b!1403132 () Bool)

(assert (=> b!1403132 true))

(declare-fun b!1403130 () Bool)

(assert (=> b!1403130 true))

(declare-fun bs!338332 () Bool)

(declare-fun b!1403110 () Bool)

(assert (= bs!338332 (and b!1403110 b!1403130)))

(declare-fun lambda!61663 () Int)

(declare-fun lambda!61662 () Int)

(assert (=> bs!338332 (not (= lambda!61663 lambda!61662))))

(assert (=> b!1403110 true))

(declare-fun b!1403101 () Bool)

(declare-fun res!634839 () Bool)

(declare-fun e!895829 () Bool)

(assert (=> b!1403101 (=> (not res!634839) (not e!895829))))

(declare-datatypes ((List!14338 0))(
  ( (Nil!14272) (Cons!14272 (h!19673 (_ BitVec 16)) (t!122935 List!14338)) )
))
(declare-datatypes ((TokenValue!2563 0))(
  ( (FloatLiteralValue!5126 (text!18386 List!14338)) (TokenValueExt!2562 (__x!8955 Int)) (Broken!12815 (value!80087 List!14338)) (Object!2628) (End!2563) (Def!2563) (Underscore!2563) (Match!2563) (Else!2563) (Error!2563) (Case!2563) (If!2563) (Extends!2563) (Abstract!2563) (Class!2563) (Val!2563) (DelimiterValue!5126 (del!2623 List!14338)) (KeywordValue!2569 (value!80088 List!14338)) (CommentValue!5126 (value!80089 List!14338)) (WhitespaceValue!5126 (value!80090 List!14338)) (IndentationValue!2563 (value!80091 List!14338)) (String!17050) (Int32!2563) (Broken!12816 (value!80092 List!14338)) (Boolean!2564) (Unit!20614) (OperatorValue!2566 (op!2623 List!14338)) (IdentifierValue!5126 (value!80093 List!14338)) (IdentifierValue!5127 (value!80094 List!14338)) (WhitespaceValue!5127 (value!80095 List!14338)) (True!5126) (False!5126) (Broken!12817 (value!80096 List!14338)) (Broken!12818 (value!80097 List!14338)) (True!5127) (RightBrace!2563) (RightBracket!2563) (Colon!2563) (Null!2563) (Comma!2563) (LeftBracket!2563) (False!5127) (LeftBrace!2563) (ImaginaryLiteralValue!2563 (text!18387 List!14338)) (StringLiteralValue!7689 (value!80098 List!14338)) (EOFValue!2563 (value!80099 List!14338)) (IdentValue!2563 (value!80100 List!14338)) (DelimiterValue!5127 (value!80101 List!14338)) (DedentValue!2563 (value!80102 List!14338)) (NewLineValue!2563 (value!80103 List!14338)) (IntegerValue!7689 (value!80104 (_ BitVec 32)) (text!18388 List!14338)) (IntegerValue!7690 (value!80105 Int) (text!18389 List!14338)) (Times!2563) (Or!2563) (Equal!2563) (Minus!2563) (Broken!12819 (value!80106 List!14338)) (And!2563) (Div!2563) (LessEqual!2563) (Mod!2563) (Concat!6350) (Not!2563) (Plus!2563) (SpaceValue!2563 (value!80107 List!14338)) (IntegerValue!7691 (value!80108 Int) (text!18390 List!14338)) (StringLiteralValue!7690 (text!18391 List!14338)) (FloatLiteralValue!5127 (text!18392 List!14338)) (BytesLiteralValue!2563 (value!80109 List!14338)) (CommentValue!5127 (value!80110 List!14338)) (StringLiteralValue!7691 (value!80111 List!14338)) (ErrorTokenValue!2563 (msg!2624 List!14338)) )
))
(declare-datatypes ((C!7864 0))(
  ( (C!7865 (val!4492 Int)) )
))
(declare-datatypes ((List!14339 0))(
  ( (Nil!14273) (Cons!14273 (h!19674 C!7864) (t!122936 List!14339)) )
))
(declare-datatypes ((IArray!9417 0))(
  ( (IArray!9418 (innerList!4766 List!14339)) )
))
(declare-datatypes ((Conc!4706 0))(
  ( (Node!4706 (left!12188 Conc!4706) (right!12518 Conc!4706) (csize!9642 Int) (cheight!4917 Int)) (Leaf!7139 (xs!7433 IArray!9417) (csize!9643 Int)) (Empty!4706) )
))
(declare-datatypes ((BalanceConc!9352 0))(
  ( (BalanceConc!9353 (c!230766 Conc!4706)) )
))
(declare-datatypes ((String!17051 0))(
  ( (String!17052 (value!80112 String)) )
))
(declare-datatypes ((Regex!3787 0))(
  ( (ElementMatch!3787 (c!230767 C!7864)) (Concat!6351 (regOne!8086 Regex!3787) (regTwo!8086 Regex!3787)) (EmptyExpr!3787) (Star!3787 (reg!4116 Regex!3787)) (EmptyLang!3787) (Union!3787 (regOne!8087 Regex!3787) (regTwo!8087 Regex!3787)) )
))
(declare-datatypes ((TokenValueInjection!4786 0))(
  ( (TokenValueInjection!4787 (toValue!3764 Int) (toChars!3623 Int)) )
))
(declare-datatypes ((Rule!4746 0))(
  ( (Rule!4747 (regex!2473 Regex!3787) (tag!2735 String!17051) (isSeparator!2473 Bool) (transformation!2473 TokenValueInjection!4786)) )
))
(declare-datatypes ((Token!4608 0))(
  ( (Token!4609 (value!80113 TokenValue!2563) (rule!4236 Rule!4746) (size!11741 Int) (originalCharacters!3335 List!14339)) )
))
(declare-fun t1!34 () Token!4608)

(declare-fun t2!34 () Token!4608)

(assert (=> b!1403101 (= res!634839 (not (= (isSeparator!2473 (rule!4236 t1!34)) (isSeparator!2473 (rule!4236 t2!34)))))))

(declare-fun b!1403102 () Bool)

(declare-fun res!634850 () Bool)

(declare-fun e!895826 () Bool)

(assert (=> b!1403102 (=> res!634850 e!895826)))

(declare-datatypes ((List!14340 0))(
  ( (Nil!14274) (Cons!14274 (h!19675 Rule!4746) (t!122937 List!14340)) )
))
(declare-fun rules!2550 () List!14340)

(declare-fun contains!2801 (List!14340 Rule!4746) Bool)

(assert (=> b!1403102 (= res!634850 (not (contains!2801 rules!2550 (rule!4236 t1!34))))))

(declare-fun b!1403103 () Bool)

(declare-fun res!634847 () Bool)

(declare-fun e!895833 () Bool)

(assert (=> b!1403103 (=> res!634847 e!895833)))

(declare-fun lt!468000 () Regex!3787)

(declare-fun lt!468015 () List!14339)

(declare-fun matchR!1778 (Regex!3787 List!14339) Bool)

(assert (=> b!1403103 (= res!634847 (not (matchR!1778 lt!468000 lt!468015)))))

(declare-fun b!1403104 () Bool)

(declare-fun res!634840 () Bool)

(assert (=> b!1403104 (=> res!634840 e!895833)))

(declare-fun lt!468005 () C!7864)

(declare-fun contains!2802 (List!14339 C!7864) Bool)

(assert (=> b!1403104 (= res!634840 (not (contains!2802 lt!468015 lt!468005)))))

(declare-fun b!1403105 () Bool)

(declare-fun res!634828 () Bool)

(assert (=> b!1403105 (=> res!634828 e!895826)))

(declare-fun lt!468020 () List!14339)

(declare-datatypes ((LexerInterface!2168 0))(
  ( (LexerInterfaceExt!2165 (__x!8956 Int)) (Lexer!2166) )
))
(declare-fun thiss!19762 () LexerInterface!2168)

(declare-datatypes ((tuple2!13898 0))(
  ( (tuple2!13899 (_1!7835 Token!4608) (_2!7835 List!14339)) )
))
(declare-datatypes ((Option!2736 0))(
  ( (None!2735) (Some!2735 (v!21679 tuple2!13898)) )
))
(declare-fun maxPrefix!1142 (LexerInterface!2168 List!14340 List!14339) Option!2736)

(assert (=> b!1403105 (= res!634828 (not (= (maxPrefix!1142 thiss!19762 rules!2550 lt!468020) (Some!2735 (tuple2!13899 t1!34 Nil!14273)))))))

(declare-fun b!1403106 () Bool)

(declare-fun e!895819 () Bool)

(declare-fun e!895831 () Bool)

(assert (=> b!1403106 (= e!895819 e!895831)))

(declare-fun res!634822 () Bool)

(assert (=> b!1403106 (=> res!634822 e!895831)))

(declare-fun lt!468008 () Rule!4746)

(assert (=> b!1403106 (= res!634822 (or (isSeparator!2473 lt!468008) (not (isSeparator!2473 (rule!4236 t1!34))) (isSeparator!2473 (rule!4236 t2!34))))))

(declare-fun lt!468019 () Regex!3787)

(assert (=> b!1403106 (= (regex!2473 lt!468008) lt!468019)))

(declare-fun b!1403107 () Bool)

(declare-fun e!895836 () Bool)

(declare-fun e!895818 () Bool)

(assert (=> b!1403107 (= e!895836 e!895818)))

(declare-fun res!634852 () Bool)

(assert (=> b!1403107 (=> res!634852 e!895818)))

(declare-fun lambda!61660 () Int)

(declare-datatypes ((List!14341 0))(
  ( (Nil!14275) (Cons!14275 (h!19676 Regex!3787) (t!122938 List!14341)) )
))
(declare-fun contains!2803 (List!14341 Regex!3787) Bool)

(declare-fun map!3170 (List!14340 Int) List!14341)

(assert (=> b!1403107 (= res!634852 (not (contains!2803 (map!3170 rules!2550 lambda!61660) lt!468019)))))

(declare-fun lambda!61661 () Int)

(declare-fun getWitness!478 (List!14341 Int) Regex!3787)

(assert (=> b!1403107 (= lt!468019 (getWitness!478 (map!3170 rules!2550 lambda!61660) lambda!61661))))

(declare-fun tp!399026 () Bool)

(declare-fun b!1403108 () Bool)

(declare-fun e!895816 () Bool)

(declare-fun e!895837 () Bool)

(declare-fun inv!18579 (String!17051) Bool)

(declare-fun inv!18582 (TokenValueInjection!4786) Bool)

(assert (=> b!1403108 (= e!895816 (and tp!399026 (inv!18579 (tag!2735 (h!19675 rules!2550))) (inv!18582 (transformation!2473 (h!19675 rules!2550))) e!895837))))

(declare-fun e!895824 () Bool)

(declare-fun e!895840 () Bool)

(declare-fun tp!399023 () Bool)

(declare-fun b!1403109 () Bool)

(declare-fun inv!21 (TokenValue!2563) Bool)

(assert (=> b!1403109 (= e!895840 (and (inv!21 (value!80113 t1!34)) e!895824 tp!399023))))

(declare-fun e!895825 () Bool)

(declare-fun e!895842 () Bool)

(assert (=> b!1403110 (= e!895825 e!895842)))

(declare-fun res!634829 () Bool)

(assert (=> b!1403110 (=> res!634829 e!895842)))

(assert (=> b!1403110 (= res!634829 (not (matchR!1778 (regex!2473 (rule!4236 t1!34)) lt!468020)))))

(declare-datatypes ((Unit!20615 0))(
  ( (Unit!20616) )
))
(declare-fun lt!468022 () Unit!20615)

(declare-fun forallContained!668 (List!14340 Int Rule!4746) Unit!20615)

(assert (=> b!1403110 (= lt!468022 (forallContained!668 rules!2550 lambda!61663 (rule!4236 t2!34)))))

(declare-fun lt!468027 () Unit!20615)

(assert (=> b!1403110 (= lt!468027 (forallContained!668 rules!2550 lambda!61663 (rule!4236 t1!34)))))

(declare-fun lt!468011 () Unit!20615)

(assert (=> b!1403110 (= lt!468011 (forallContained!668 rules!2550 lambda!61663 lt!468008))))

(declare-fun b!1403111 () Bool)

(declare-fun res!634842 () Bool)

(declare-fun e!895828 () Bool)

(assert (=> b!1403111 (=> (not res!634842) (not e!895828))))

(declare-fun sepAndNonSepRulesDisjointChars!846 (List!14340 List!14340) Bool)

(assert (=> b!1403111 (= res!634842 (sepAndNonSepRulesDisjointChars!846 rules!2550 rules!2550))))

(declare-fun b!1403112 () Bool)

(declare-fun e!895811 () Bool)

(assert (=> b!1403112 (= e!895811 e!895826)))

(declare-fun res!634821 () Bool)

(assert (=> b!1403112 (=> res!634821 e!895826)))

(declare-datatypes ((List!14342 0))(
  ( (Nil!14276) (Cons!14276 (h!19677 Token!4608) (t!122939 List!14342)) )
))
(declare-datatypes ((IArray!9419 0))(
  ( (IArray!9420 (innerList!4767 List!14342)) )
))
(declare-datatypes ((Conc!4707 0))(
  ( (Node!4707 (left!12189 Conc!4707) (right!12519 Conc!4707) (csize!9644 Int) (cheight!4918 Int)) (Leaf!7140 (xs!7434 IArray!9419) (csize!9645 Int)) (Empty!4707) )
))
(declare-datatypes ((BalanceConc!9354 0))(
  ( (BalanceConc!9355 (c!230768 Conc!4707)) )
))
(declare-datatypes ((tuple2!13900 0))(
  ( (tuple2!13901 (_1!7836 BalanceConc!9354) (_2!7836 BalanceConc!9352)) )
))
(declare-fun lt!468017 () tuple2!13900)

(declare-fun lt!468003 () List!14342)

(declare-fun list!5569 (BalanceConc!9354) List!14342)

(assert (=> b!1403112 (= res!634821 (not (= (list!5569 (_1!7836 lt!468017)) lt!468003)))))

(assert (=> b!1403112 (= lt!468003 (Cons!14276 t1!34 Nil!14276))))

(declare-fun lt!468026 () BalanceConc!9352)

(declare-fun lex!993 (LexerInterface!2168 List!14340 BalanceConc!9352) tuple2!13900)

(assert (=> b!1403112 (= lt!468017 (lex!993 thiss!19762 rules!2550 lt!468026))))

(declare-fun print!932 (LexerInterface!2168 BalanceConc!9354) BalanceConc!9352)

(declare-fun singletonSeq!1136 (Token!4608) BalanceConc!9354)

(assert (=> b!1403112 (= lt!468026 (print!932 thiss!19762 (singletonSeq!1136 t1!34)))))

(declare-fun getWitness!479 (List!14340 Int) Rule!4746)

(assert (=> b!1403112 (= lt!468008 (getWitness!479 rules!2550 lambda!61662))))

(declare-fun b!1403113 () Bool)

(declare-fun res!634845 () Bool)

(assert (=> b!1403113 (=> (not res!634845) (not e!895829))))

(declare-fun rulesInvariant!2038 (LexerInterface!2168 List!14340) Bool)

(assert (=> b!1403113 (= res!634845 (rulesInvariant!2038 thiss!19762 rules!2550))))

(declare-fun b!1403114 () Bool)

(declare-fun e!895815 () Unit!20615)

(declare-fun Unit!20617 () Unit!20615)

(assert (=> b!1403114 (= e!895815 Unit!20617)))

(declare-fun b!1403115 () Bool)

(declare-fun res!634826 () Bool)

(assert (=> b!1403115 (=> res!634826 e!895842)))

(declare-fun lt!468024 () List!14339)

(assert (=> b!1403115 (= res!634826 (not (matchR!1778 (regex!2473 (rule!4236 t2!34)) lt!468024)))))

(declare-fun b!1403116 () Bool)

(declare-fun res!634831 () Bool)

(assert (=> b!1403116 (=> (not res!634831) (not e!895829))))

(declare-fun rulesProduceIndividualToken!1137 (LexerInterface!2168 List!14340 Token!4608) Bool)

(assert (=> b!1403116 (= res!634831 (rulesProduceIndividualToken!1137 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1403117 () Bool)

(declare-fun e!895838 () Bool)

(declare-fun tp!399022 () Bool)

(assert (=> b!1403117 (= e!895824 (and tp!399022 (inv!18579 (tag!2735 (rule!4236 t1!34))) (inv!18582 (transformation!2473 (rule!4236 t1!34))) e!895838))))

(declare-fun b!1403118 () Bool)

(declare-fun res!634825 () Bool)

(declare-fun e!895835 () Bool)

(assert (=> b!1403118 (=> res!634825 e!895835)))

(declare-fun lt!468007 () List!14342)

(declare-fun lt!468013 () BalanceConc!9352)

(declare-datatypes ((tuple2!13902 0))(
  ( (tuple2!13903 (_1!7837 List!14342) (_2!7837 List!14339)) )
))
(declare-fun lexList!682 (LexerInterface!2168 List!14340 List!14339) tuple2!13902)

(declare-fun list!5570 (BalanceConc!9352) List!14339)

(assert (=> b!1403118 (= res!634825 (not (= (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468013)) (tuple2!13903 lt!468007 Nil!14273))))))

(declare-fun e!895822 () Bool)

(declare-fun b!1403119 () Bool)

(declare-fun e!895839 () Bool)

(declare-fun tp!399024 () Bool)

(assert (=> b!1403119 (= e!895822 (and tp!399024 (inv!18579 (tag!2735 (rule!4236 t2!34))) (inv!18582 (transformation!2473 (rule!4236 t2!34))) e!895839))))

(declare-fun b!1403120 () Bool)

(assert (=> b!1403120 (= e!895835 e!895825)))

(declare-fun res!634827 () Bool)

(assert (=> b!1403120 (=> res!634827 e!895825)))

(assert (=> b!1403120 (= res!634827 (not (= (maxPrefix!1142 thiss!19762 rules!2550 lt!468024) (Some!2735 (tuple2!13899 t2!34 Nil!14273)))))))

(declare-fun lt!468016 () BalanceConc!9352)

(assert (=> b!1403120 (= lt!468024 (list!5570 lt!468016))))

(assert (=> b!1403121 (= e!895839 (and tp!399019 tp!399020))))

(declare-fun b!1403122 () Bool)

(declare-fun e!895820 () Bool)

(assert (=> b!1403122 (= e!895828 e!895820)))

(declare-fun res!634833 () Bool)

(assert (=> b!1403122 (=> (not res!634833) (not e!895820))))

(declare-fun lt!468001 () List!14339)

(declare-fun prefixMatch!296 (Regex!3787 List!14339) Bool)

(assert (=> b!1403122 (= res!634833 (prefixMatch!296 lt!468000 lt!468001))))

(declare-fun rulesRegex!356 (LexerInterface!2168 List!14340) Regex!3787)

(assert (=> b!1403122 (= lt!468000 (rulesRegex!356 thiss!19762 rules!2550))))

(declare-fun lt!468014 () C!7864)

(declare-fun ++!3712 (List!14339 List!14339) List!14339)

(assert (=> b!1403122 (= lt!468001 (++!3712 lt!468020 (Cons!14273 lt!468014 Nil!14273)))))

(declare-fun apply!3641 (BalanceConc!9352 Int) C!7864)

(assert (=> b!1403122 (= lt!468014 (apply!3641 lt!468016 0))))

(declare-fun lt!468002 () BalanceConc!9352)

(assert (=> b!1403122 (= lt!468020 (list!5570 lt!468002))))

(declare-fun charsOf!1445 (Token!4608) BalanceConc!9352)

(assert (=> b!1403122 (= lt!468002 (charsOf!1445 t1!34))))

(declare-fun b!1403123 () Bool)

(declare-fun res!634844 () Bool)

(assert (=> b!1403123 (=> (not res!634844) (not e!895828))))

(declare-fun separableTokensPredicate!451 (LexerInterface!2168 Token!4608 Token!4608 List!14340) Bool)

(assert (=> b!1403123 (= res!634844 (not (separableTokensPredicate!451 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1403124 () Bool)

(declare-fun e!895834 () Bool)

(declare-fun e!895832 () Bool)

(assert (=> b!1403124 (= e!895834 e!895832)))

(declare-fun res!634854 () Bool)

(assert (=> b!1403124 (=> res!634854 e!895832)))

(declare-fun getSuffix!633 (List!14339 List!14339) List!14339)

(assert (=> b!1403124 (= res!634854 (not (= lt!468015 (++!3712 lt!468001 (getSuffix!633 lt!468015 lt!468001)))))))

(declare-fun lambda!61659 () Int)

(declare-fun pickWitness!240 (Int) List!14339)

(assert (=> b!1403124 (= lt!468015 (pickWitness!240 lambda!61659))))

(declare-fun b!1403125 () Bool)

(declare-fun res!634848 () Bool)

(assert (=> b!1403125 (=> res!634848 e!895826)))

(declare-fun isEmpty!8680 (BalanceConc!9352) Bool)

(assert (=> b!1403125 (= res!634848 (not (isEmpty!8680 (_2!7836 lt!468017))))))

(declare-fun b!1403126 () Bool)

(declare-fun res!634823 () Bool)

(assert (=> b!1403126 (=> res!634823 e!895833)))

(assert (=> b!1403126 (= res!634823 (not (contains!2802 lt!468001 lt!468014)))))

(declare-fun b!1403127 () Bool)

(declare-fun e!895823 () Bool)

(declare-fun tp!399021 () Bool)

(assert (=> b!1403127 (= e!895823 (and e!895816 tp!399021))))

(declare-fun b!1403128 () Bool)

(declare-fun e!895830 () Bool)

(assert (=> b!1403128 (= e!895830 e!895819)))

(declare-fun res!634824 () Bool)

(assert (=> b!1403128 (=> res!634824 e!895819)))

(declare-fun lt!468018 () Bool)

(assert (=> b!1403128 (= res!634824 lt!468018)))

(declare-fun lt!468004 () Unit!20615)

(assert (=> b!1403128 (= lt!468004 e!895815)))

(declare-fun c!230764 () Bool)

(assert (=> b!1403128 (= c!230764 lt!468018)))

(declare-fun usedCharacters!284 (Regex!3787) List!14339)

(assert (=> b!1403128 (= lt!468018 (not (contains!2802 (usedCharacters!284 (regex!2473 (rule!4236 t2!34))) lt!468014)))))

(declare-fun b!1403129 () Bool)

(assert (=> b!1403129 (= e!895842 e!895830)))

(declare-fun res!634843 () Bool)

(assert (=> b!1403129 (=> res!634843 e!895830)))

(declare-fun lt!467999 () Bool)

(assert (=> b!1403129 (= res!634843 lt!467999)))

(declare-fun lt!468009 () Unit!20615)

(declare-fun e!895812 () Unit!20615)

(assert (=> b!1403129 (= lt!468009 e!895812)))

(declare-fun c!230765 () Bool)

(assert (=> b!1403129 (= c!230765 lt!467999)))

(assert (=> b!1403129 (= lt!467999 (not (contains!2802 (usedCharacters!284 (regex!2473 (rule!4236 t1!34))) lt!468005)))))

(assert (=> b!1403130 (= e!895818 e!895811)))

(declare-fun res!634836 () Bool)

(assert (=> b!1403130 (=> res!634836 e!895811)))

(declare-fun exists!590 (List!14340 Int) Bool)

(assert (=> b!1403130 (= res!634836 (not (exists!590 rules!2550 lambda!61662)))))

(assert (=> b!1403130 (exists!590 rules!2550 lambda!61662)))

(declare-fun lt!468006 () Unit!20615)

(declare-fun lemmaMapContains!184 (List!14340 Int Regex!3787) Unit!20615)

(assert (=> b!1403130 (= lt!468006 (lemmaMapContains!184 rules!2550 lambda!61660 lt!468019))))

(declare-fun b!1403131 () Bool)

(declare-fun res!634832 () Bool)

(assert (=> b!1403131 (=> (not res!634832) (not e!895829))))

(assert (=> b!1403131 (= res!634832 (rulesProduceIndividualToken!1137 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1403132 (= e!895833 e!895836)))

(declare-fun res!634851 () Bool)

(assert (=> b!1403132 (=> res!634851 e!895836)))

(declare-fun exists!591 (List!14341 Int) Bool)

(assert (=> b!1403132 (= res!634851 (not (exists!591 (map!3170 rules!2550 lambda!61660) lambda!61661)))))

(declare-fun lt!468025 () List!14341)

(assert (=> b!1403132 (exists!591 lt!468025 lambda!61661)))

(declare-fun lt!468021 () Unit!20615)

(declare-fun matchRGenUnionSpec!198 (Regex!3787 List!14341 List!14339) Unit!20615)

(assert (=> b!1403132 (= lt!468021 (matchRGenUnionSpec!198 lt!468000 lt!468025 lt!468015))))

(assert (=> b!1403132 (= lt!468025 (map!3170 rules!2550 lambda!61660))))

(declare-fun b!1403133 () Bool)

(assert (=> b!1403133 (= e!895829 e!895828)))

(declare-fun res!634830 () Bool)

(assert (=> b!1403133 (=> (not res!634830) (not e!895828))))

(declare-fun size!11742 (BalanceConc!9352) Int)

(assert (=> b!1403133 (= res!634830 (> (size!11742 lt!468016) 0))))

(assert (=> b!1403133 (= lt!468016 (charsOf!1445 t2!34))))

(declare-fun b!1403134 () Bool)

(assert (=> b!1403134 (= e!895832 e!895833)))

(declare-fun res!634837 () Bool)

(assert (=> b!1403134 (=> res!634837 e!895833)))

(assert (=> b!1403134 (= res!634837 (not (contains!2802 lt!468001 lt!468005)))))

(assert (=> b!1403134 (= lt!468005 (apply!3641 lt!468002 0))))

(declare-fun b!1403135 () Bool)

(declare-fun res!634846 () Bool)

(assert (=> b!1403135 (=> res!634846 e!895835)))

(declare-fun lt!468030 () tuple2!13900)

(assert (=> b!1403135 (= res!634846 (not (isEmpty!8680 (_2!7836 lt!468030))))))

(declare-fun b!1403136 () Bool)

(declare-fun Unit!20618 () Unit!20615)

(assert (=> b!1403136 (= e!895815 Unit!20618)))

(declare-fun lt!468023 () Unit!20615)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!218 (Regex!3787 List!14339 C!7864) Unit!20615)

(declare-fun head!2603 (List!14339) C!7864)

(assert (=> b!1403136 (= lt!468023 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!218 (regex!2473 (rule!4236 t2!34)) lt!468024 (head!2603 lt!468024)))))

(assert (=> b!1403136 false))

(declare-fun b!1403137 () Bool)

(declare-fun Unit!20619 () Unit!20615)

(assert (=> b!1403137 (= e!895812 Unit!20619)))

(declare-fun lt!468029 () Unit!20615)

(assert (=> b!1403137 (= lt!468029 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!218 (regex!2473 (rule!4236 t1!34)) lt!468020 (head!2603 lt!468020)))))

(assert (=> b!1403137 false))

(declare-fun b!1403138 () Bool)

(declare-fun res!634849 () Bool)

(assert (=> b!1403138 (=> res!634849 e!895825)))

(assert (=> b!1403138 (= res!634849 (not (contains!2801 rules!2550 (rule!4236 t2!34))))))

(declare-fun b!1403139 () Bool)

(declare-fun res!634855 () Bool)

(assert (=> b!1403139 (=> res!634855 e!895833)))

(assert (=> b!1403139 (= res!634855 (not (contains!2802 lt!468015 lt!468014)))))

(declare-fun b!1403140 () Bool)

(declare-fun res!634856 () Bool)

(assert (=> b!1403140 (=> (not res!634856) (not e!895829))))

(declare-fun isEmpty!8681 (List!14340) Bool)

(assert (=> b!1403140 (= res!634856 (not (isEmpty!8681 rules!2550)))))

(declare-fun b!1403141 () Bool)

(declare-fun Unit!20620 () Unit!20615)

(assert (=> b!1403141 (= e!895812 Unit!20620)))

(declare-fun b!1403142 () Bool)

(declare-fun res!634835 () Bool)

(assert (=> b!1403142 (=> res!634835 e!895825)))

(assert (=> b!1403142 (= res!634835 (not (contains!2801 rules!2550 lt!468008)))))

(declare-fun b!1403143 () Bool)

(assert (=> b!1403143 (= e!895826 e!895835)))

(declare-fun res!634834 () Bool)

(assert (=> b!1403143 (=> res!634834 e!895835)))

(assert (=> b!1403143 (= res!634834 (not (= (list!5569 (_1!7836 lt!468030)) lt!468007)))))

(assert (=> b!1403143 (= lt!468007 (Cons!14276 t2!34 Nil!14276))))

(assert (=> b!1403143 (= lt!468030 (lex!993 thiss!19762 rules!2550 lt!468013))))

(assert (=> b!1403143 (= lt!468013 (print!932 thiss!19762 (singletonSeq!1136 t2!34)))))

(assert (=> b!1403144 (= e!895838 (and tp!399028 tp!399027))))

(assert (=> b!1403145 (= e!895820 (not e!895834))))

(declare-fun res!634853 () Bool)

(assert (=> b!1403145 (=> res!634853 e!895834)))

(declare-fun Exists!937 (Int) Bool)

(assert (=> b!1403145 (= res!634853 (not (Exists!937 lambda!61659)))))

(assert (=> b!1403145 (Exists!937 lambda!61659)))

(declare-fun lt!468010 () Unit!20615)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!255 (Regex!3787 List!14339) Unit!20615)

(assert (=> b!1403145 (= lt!468010 (lemmaPrefixMatchThenExistsStringThatMatches!255 lt!468000 lt!468001))))

(declare-fun b!1403146 () Bool)

(declare-fun res!634841 () Bool)

(assert (=> b!1403146 (=> res!634841 e!895826)))

(assert (=> b!1403146 (= res!634841 (not (= (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468026)) (tuple2!13903 lt!468003 Nil!14273))))))

(declare-fun res!634838 () Bool)

(assert (=> start!127874 (=> (not res!634838) (not e!895829))))

(get-info :version)

(assert (=> start!127874 (= res!634838 ((_ is Lexer!2166) thiss!19762))))

(assert (=> start!127874 e!895829))

(assert (=> start!127874 true))

(assert (=> start!127874 e!895823))

(declare-fun inv!18583 (Token!4608) Bool)

(assert (=> start!127874 (and (inv!18583 t1!34) e!895840)))

(declare-fun e!895841 () Bool)

(assert (=> start!127874 (and (inv!18583 t2!34) e!895841)))

(declare-fun b!1403147 () Bool)

(assert (=> b!1403147 (= e!895831 false)))

(assert (=> b!1403147 (not (matchR!1778 lt!468019 lt!468015))))

(declare-fun lt!468028 () Unit!20615)

(assert (=> b!1403147 (= lt!468028 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!218 lt!468019 lt!468015 lt!468005))))

(assert (=> b!1403147 (not (contains!2802 (usedCharacters!284 (regex!2473 lt!468008)) lt!468005))))

(declare-fun lt!468012 () Unit!20615)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!22 (LexerInterface!2168 List!14340 List!14340 Rule!4746 Rule!4746 C!7864) Unit!20615)

(assert (=> b!1403147 (= lt!468012 (lemmaNonSepRuleNotContainsCharContainedInASepRule!22 thiss!19762 rules!2550 rules!2550 lt!468008 (rule!4236 t1!34) lt!468005))))

(declare-fun b!1403148 () Bool)

(declare-fun tp!399025 () Bool)

(assert (=> b!1403148 (= e!895841 (and (inv!21 (value!80113 t2!34)) e!895822 tp!399025))))

(assert (=> b!1403149 (= e!895837 (and tp!399018 tp!399017))))

(assert (= (and start!127874 res!634838) b!1403140))

(assert (= (and b!1403140 res!634856) b!1403113))

(assert (= (and b!1403113 res!634845) b!1403116))

(assert (= (and b!1403116 res!634831) b!1403131))

(assert (= (and b!1403131 res!634832) b!1403101))

(assert (= (and b!1403101 res!634839) b!1403133))

(assert (= (and b!1403133 res!634830) b!1403111))

(assert (= (and b!1403111 res!634842) b!1403123))

(assert (= (and b!1403123 res!634844) b!1403122))

(assert (= (and b!1403122 res!634833) b!1403145))

(assert (= (and b!1403145 (not res!634853)) b!1403124))

(assert (= (and b!1403124 (not res!634854)) b!1403134))

(assert (= (and b!1403134 (not res!634837)) b!1403104))

(assert (= (and b!1403104 (not res!634840)) b!1403126))

(assert (= (and b!1403126 (not res!634823)) b!1403139))

(assert (= (and b!1403139 (not res!634855)) b!1403103))

(assert (= (and b!1403103 (not res!634847)) b!1403132))

(assert (= (and b!1403132 (not res!634851)) b!1403107))

(assert (= (and b!1403107 (not res!634852)) b!1403130))

(assert (= (and b!1403130 (not res!634836)) b!1403112))

(assert (= (and b!1403112 (not res!634821)) b!1403125))

(assert (= (and b!1403125 (not res!634848)) b!1403146))

(assert (= (and b!1403146 (not res!634841)) b!1403105))

(assert (= (and b!1403105 (not res!634828)) b!1403102))

(assert (= (and b!1403102 (not res!634850)) b!1403143))

(assert (= (and b!1403143 (not res!634834)) b!1403135))

(assert (= (and b!1403135 (not res!634846)) b!1403118))

(assert (= (and b!1403118 (not res!634825)) b!1403120))

(assert (= (and b!1403120 (not res!634827)) b!1403138))

(assert (= (and b!1403138 (not res!634849)) b!1403142))

(assert (= (and b!1403142 (not res!634835)) b!1403110))

(assert (= (and b!1403110 (not res!634829)) b!1403115))

(assert (= (and b!1403115 (not res!634826)) b!1403129))

(assert (= (and b!1403129 c!230765) b!1403137))

(assert (= (and b!1403129 (not c!230765)) b!1403141))

(assert (= (and b!1403129 (not res!634843)) b!1403128))

(assert (= (and b!1403128 c!230764) b!1403136))

(assert (= (and b!1403128 (not c!230764)) b!1403114))

(assert (= (and b!1403128 (not res!634824)) b!1403106))

(assert (= (and b!1403106 (not res!634822)) b!1403147))

(assert (= b!1403108 b!1403149))

(assert (= b!1403127 b!1403108))

(assert (= (and start!127874 ((_ is Cons!14274) rules!2550)) b!1403127))

(assert (= b!1403117 b!1403144))

(assert (= b!1403109 b!1403117))

(assert (= start!127874 b!1403109))

(assert (= b!1403119 b!1403121))

(assert (= b!1403148 b!1403119))

(assert (= start!127874 b!1403148))

(declare-fun m!1580271 () Bool)

(assert (=> b!1403104 m!1580271))

(declare-fun m!1580273 () Bool)

(assert (=> b!1403132 m!1580273))

(declare-fun m!1580275 () Bool)

(assert (=> b!1403132 m!1580275))

(assert (=> b!1403132 m!1580273))

(declare-fun m!1580277 () Bool)

(assert (=> b!1403132 m!1580277))

(assert (=> b!1403132 m!1580273))

(declare-fun m!1580279 () Bool)

(assert (=> b!1403132 m!1580279))

(declare-fun m!1580281 () Bool)

(assert (=> b!1403128 m!1580281))

(assert (=> b!1403128 m!1580281))

(declare-fun m!1580283 () Bool)

(assert (=> b!1403128 m!1580283))

(declare-fun m!1580285 () Bool)

(assert (=> b!1403140 m!1580285))

(declare-fun m!1580287 () Bool)

(assert (=> b!1403119 m!1580287))

(declare-fun m!1580289 () Bool)

(assert (=> b!1403119 m!1580289))

(declare-fun m!1580291 () Bool)

(assert (=> b!1403105 m!1580291))

(declare-fun m!1580293 () Bool)

(assert (=> b!1403123 m!1580293))

(declare-fun m!1580295 () Bool)

(assert (=> b!1403143 m!1580295))

(declare-fun m!1580297 () Bool)

(assert (=> b!1403143 m!1580297))

(declare-fun m!1580299 () Bool)

(assert (=> b!1403143 m!1580299))

(assert (=> b!1403143 m!1580299))

(declare-fun m!1580301 () Bool)

(assert (=> b!1403143 m!1580301))

(assert (=> b!1403107 m!1580273))

(assert (=> b!1403107 m!1580273))

(declare-fun m!1580303 () Bool)

(assert (=> b!1403107 m!1580303))

(assert (=> b!1403107 m!1580273))

(assert (=> b!1403107 m!1580273))

(declare-fun m!1580305 () Bool)

(assert (=> b!1403107 m!1580305))

(declare-fun m!1580307 () Bool)

(assert (=> b!1403110 m!1580307))

(declare-fun m!1580309 () Bool)

(assert (=> b!1403110 m!1580309))

(declare-fun m!1580311 () Bool)

(assert (=> b!1403110 m!1580311))

(declare-fun m!1580313 () Bool)

(assert (=> b!1403110 m!1580313))

(declare-fun m!1580315 () Bool)

(assert (=> b!1403147 m!1580315))

(declare-fun m!1580317 () Bool)

(assert (=> b!1403147 m!1580317))

(declare-fun m!1580319 () Bool)

(assert (=> b!1403147 m!1580319))

(declare-fun m!1580321 () Bool)

(assert (=> b!1403147 m!1580321))

(declare-fun m!1580323 () Bool)

(assert (=> b!1403147 m!1580323))

(assert (=> b!1403147 m!1580317))

(declare-fun m!1580325 () Bool)

(assert (=> b!1403145 m!1580325))

(assert (=> b!1403145 m!1580325))

(declare-fun m!1580327 () Bool)

(assert (=> b!1403145 m!1580327))

(declare-fun m!1580329 () Bool)

(assert (=> b!1403136 m!1580329))

(assert (=> b!1403136 m!1580329))

(declare-fun m!1580331 () Bool)

(assert (=> b!1403136 m!1580331))

(declare-fun m!1580333 () Bool)

(assert (=> b!1403142 m!1580333))

(declare-fun m!1580335 () Bool)

(assert (=> b!1403115 m!1580335))

(declare-fun m!1580337 () Bool)

(assert (=> b!1403109 m!1580337))

(declare-fun m!1580339 () Bool)

(assert (=> b!1403113 m!1580339))

(declare-fun m!1580341 () Bool)

(assert (=> b!1403116 m!1580341))

(declare-fun m!1580343 () Bool)

(assert (=> b!1403102 m!1580343))

(declare-fun m!1580345 () Bool)

(assert (=> start!127874 m!1580345))

(declare-fun m!1580347 () Bool)

(assert (=> start!127874 m!1580347))

(declare-fun m!1580349 () Bool)

(assert (=> b!1403117 m!1580349))

(declare-fun m!1580351 () Bool)

(assert (=> b!1403117 m!1580351))

(declare-fun m!1580353 () Bool)

(assert (=> b!1403126 m!1580353))

(declare-fun m!1580355 () Bool)

(assert (=> b!1403108 m!1580355))

(declare-fun m!1580357 () Bool)

(assert (=> b!1403108 m!1580357))

(declare-fun m!1580359 () Bool)

(assert (=> b!1403146 m!1580359))

(assert (=> b!1403146 m!1580359))

(declare-fun m!1580361 () Bool)

(assert (=> b!1403146 m!1580361))

(declare-fun m!1580363 () Bool)

(assert (=> b!1403125 m!1580363))

(declare-fun m!1580365 () Bool)

(assert (=> b!1403148 m!1580365))

(declare-fun m!1580367 () Bool)

(assert (=> b!1403134 m!1580367))

(declare-fun m!1580369 () Bool)

(assert (=> b!1403134 m!1580369))

(declare-fun m!1580371 () Bool)

(assert (=> b!1403131 m!1580371))

(declare-fun m!1580373 () Bool)

(assert (=> b!1403130 m!1580373))

(assert (=> b!1403130 m!1580373))

(declare-fun m!1580375 () Bool)

(assert (=> b!1403130 m!1580375))

(declare-fun m!1580377 () Bool)

(assert (=> b!1403111 m!1580377))

(declare-fun m!1580379 () Bool)

(assert (=> b!1403120 m!1580379))

(declare-fun m!1580381 () Bool)

(assert (=> b!1403120 m!1580381))

(declare-fun m!1580383 () Bool)

(assert (=> b!1403129 m!1580383))

(assert (=> b!1403129 m!1580383))

(declare-fun m!1580385 () Bool)

(assert (=> b!1403129 m!1580385))

(declare-fun m!1580387 () Bool)

(assert (=> b!1403112 m!1580387))

(declare-fun m!1580389 () Bool)

(assert (=> b!1403112 m!1580389))

(declare-fun m!1580391 () Bool)

(assert (=> b!1403112 m!1580391))

(declare-fun m!1580393 () Bool)

(assert (=> b!1403112 m!1580393))

(assert (=> b!1403112 m!1580391))

(declare-fun m!1580395 () Bool)

(assert (=> b!1403112 m!1580395))

(declare-fun m!1580397 () Bool)

(assert (=> b!1403138 m!1580397))

(declare-fun m!1580399 () Bool)

(assert (=> b!1403122 m!1580399))

(declare-fun m!1580401 () Bool)

(assert (=> b!1403122 m!1580401))

(declare-fun m!1580403 () Bool)

(assert (=> b!1403122 m!1580403))

(declare-fun m!1580405 () Bool)

(assert (=> b!1403122 m!1580405))

(declare-fun m!1580407 () Bool)

(assert (=> b!1403122 m!1580407))

(declare-fun m!1580409 () Bool)

(assert (=> b!1403122 m!1580409))

(declare-fun m!1580411 () Bool)

(assert (=> b!1403137 m!1580411))

(assert (=> b!1403137 m!1580411))

(declare-fun m!1580413 () Bool)

(assert (=> b!1403137 m!1580413))

(declare-fun m!1580415 () Bool)

(assert (=> b!1403118 m!1580415))

(assert (=> b!1403118 m!1580415))

(declare-fun m!1580417 () Bool)

(assert (=> b!1403118 m!1580417))

(declare-fun m!1580419 () Bool)

(assert (=> b!1403103 m!1580419))

(declare-fun m!1580421 () Bool)

(assert (=> b!1403133 m!1580421))

(declare-fun m!1580423 () Bool)

(assert (=> b!1403133 m!1580423))

(declare-fun m!1580425 () Bool)

(assert (=> b!1403139 m!1580425))

(declare-fun m!1580427 () Bool)

(assert (=> b!1403135 m!1580427))

(declare-fun m!1580429 () Bool)

(assert (=> b!1403124 m!1580429))

(assert (=> b!1403124 m!1580429))

(declare-fun m!1580431 () Bool)

(assert (=> b!1403124 m!1580431))

(declare-fun m!1580433 () Bool)

(assert (=> b!1403124 m!1580433))

(check-sat (not b!1403133) (not b!1403145) b_and!93957 (not b!1403143) (not b!1403103) (not b_next!34933) (not b_next!34931) (not b!1403119) (not b!1403102) (not b!1403140) (not b!1403122) (not b!1403120) (not b!1403107) (not b_next!34929) b_and!93949 (not b!1403139) (not b!1403129) (not b!1403147) (not b!1403138) (not b!1403146) (not b!1403126) (not b!1403109) (not b!1403127) (not b!1403110) (not b!1403123) (not b_next!34927) (not b!1403132) (not b!1403130) (not b!1403105) b_and!93951 (not b!1403124) (not b_next!34925) (not b!1403113) b_and!93953 (not b_next!34923) (not b!1403116) (not b!1403118) (not b!1403135) (not b!1403134) (not b!1403104) (not b!1403108) (not b!1403125) (not b!1403117) b_and!93955 (not b!1403131) (not start!127874) (not b!1403136) (not b!1403112) (not b!1403128) (not b!1403148) (not b!1403137) b_and!93947 (not b!1403111) (not b!1403115) (not b!1403142))
(check-sat b_and!93957 (not b_next!34931) (not b_next!34927) b_and!93953 (not b_next!34923) b_and!93955 b_and!93947 (not b_next!34933) (not b_next!34929) b_and!93949 b_and!93951 (not b_next!34925))
(get-model)

(declare-fun d!400905 () Bool)

(declare-fun list!5571 (Conc!4707) List!14342)

(assert (=> d!400905 (= (list!5569 (_1!7836 lt!468017)) (list!5571 (c!230768 (_1!7836 lt!468017))))))

(declare-fun bs!338333 () Bool)

(assert (= bs!338333 d!400905))

(declare-fun m!1580435 () Bool)

(assert (=> bs!338333 m!1580435))

(assert (=> b!1403112 d!400905))

(declare-fun d!400907 () Bool)

(declare-fun lt!468033 () BalanceConc!9352)

(declare-fun printList!639 (LexerInterface!2168 List!14342) List!14339)

(assert (=> d!400907 (= (list!5570 lt!468033) (printList!639 thiss!19762 (list!5569 (singletonSeq!1136 t1!34))))))

(declare-fun printTailRec!621 (LexerInterface!2168 BalanceConc!9354 Int BalanceConc!9352) BalanceConc!9352)

(assert (=> d!400907 (= lt!468033 (printTailRec!621 thiss!19762 (singletonSeq!1136 t1!34) 0 (BalanceConc!9353 Empty!4706)))))

(assert (=> d!400907 (= (print!932 thiss!19762 (singletonSeq!1136 t1!34)) lt!468033)))

(declare-fun bs!338334 () Bool)

(assert (= bs!338334 d!400907))

(declare-fun m!1580437 () Bool)

(assert (=> bs!338334 m!1580437))

(assert (=> bs!338334 m!1580391))

(declare-fun m!1580439 () Bool)

(assert (=> bs!338334 m!1580439))

(assert (=> bs!338334 m!1580439))

(declare-fun m!1580441 () Bool)

(assert (=> bs!338334 m!1580441))

(assert (=> bs!338334 m!1580391))

(declare-fun m!1580443 () Bool)

(assert (=> bs!338334 m!1580443))

(assert (=> b!1403112 d!400907))

(declare-fun b!1403172 () Bool)

(declare-fun lt!468038 () Unit!20615)

(declare-fun Unit!20621 () Unit!20615)

(assert (=> b!1403172 (= lt!468038 Unit!20621)))

(assert (=> b!1403172 false))

(declare-fun e!895854 () Rule!4746)

(declare-fun head!2604 (List!14340) Rule!4746)

(assert (=> b!1403172 (= e!895854 (head!2604 rules!2550))))

(declare-fun b!1403173 () Bool)

(declare-fun e!895851 () Rule!4746)

(assert (=> b!1403173 (= e!895851 e!895854)))

(declare-fun c!230774 () Bool)

(assert (=> b!1403173 (= c!230774 ((_ is Cons!14274) rules!2550))))

(declare-fun b!1403174 () Bool)

(declare-fun e!895852 () Bool)

(declare-fun lt!468039 () Rule!4746)

(assert (=> b!1403174 (= e!895852 (contains!2801 rules!2550 lt!468039))))

(declare-fun b!1403175 () Bool)

(assert (=> b!1403175 (= e!895854 (getWitness!479 (t!122937 rules!2550) lambda!61662))))

(declare-fun b!1403176 () Bool)

(declare-fun e!895853 () Bool)

(declare-fun dynLambda!6602 (Int Rule!4746) Bool)

(assert (=> b!1403176 (= e!895853 (dynLambda!6602 lambda!61662 (h!19675 rules!2550)))))

(declare-fun d!400909 () Bool)

(assert (=> d!400909 e!895852))

(declare-fun res!634873 () Bool)

(assert (=> d!400909 (=> (not res!634873) (not e!895852))))

(assert (=> d!400909 (= res!634873 (dynLambda!6602 lambda!61662 lt!468039))))

(assert (=> d!400909 (= lt!468039 e!895851)))

(declare-fun c!230773 () Bool)

(assert (=> d!400909 (= c!230773 e!895853)))

(declare-fun res!634872 () Bool)

(assert (=> d!400909 (=> (not res!634872) (not e!895853))))

(assert (=> d!400909 (= res!634872 ((_ is Cons!14274) rules!2550))))

(assert (=> d!400909 (exists!590 rules!2550 lambda!61662)))

(assert (=> d!400909 (= (getWitness!479 rules!2550 lambda!61662) lt!468039)))

(declare-fun b!1403177 () Bool)

(assert (=> b!1403177 (= e!895851 (h!19675 rules!2550))))

(assert (= (and d!400909 res!634872) b!1403176))

(assert (= (and d!400909 c!230773) b!1403177))

(assert (= (and d!400909 (not c!230773)) b!1403173))

(assert (= (and b!1403173 c!230774) b!1403175))

(assert (= (and b!1403173 (not c!230774)) b!1403172))

(assert (= (and d!400909 res!634873) b!1403174))

(declare-fun b_lambda!44123 () Bool)

(assert (=> (not b_lambda!44123) (not b!1403176)))

(declare-fun b_lambda!44125 () Bool)

(assert (=> (not b_lambda!44125) (not d!400909)))

(declare-fun m!1580445 () Bool)

(assert (=> d!400909 m!1580445))

(assert (=> d!400909 m!1580373))

(declare-fun m!1580447 () Bool)

(assert (=> b!1403172 m!1580447))

(declare-fun m!1580449 () Bool)

(assert (=> b!1403174 m!1580449))

(declare-fun m!1580451 () Bool)

(assert (=> b!1403175 m!1580451))

(declare-fun m!1580453 () Bool)

(assert (=> b!1403176 m!1580453))

(assert (=> b!1403112 d!400909))

(declare-fun d!400911 () Bool)

(declare-fun e!895863 () Bool)

(assert (=> d!400911 e!895863))

(declare-fun res!634882 () Bool)

(assert (=> d!400911 (=> (not res!634882) (not e!895863))))

(declare-fun lt!468045 () BalanceConc!9354)

(assert (=> d!400911 (= res!634882 (= (list!5569 lt!468045) (Cons!14276 t1!34 Nil!14276)))))

(declare-fun singleton!495 (Token!4608) BalanceConc!9354)

(assert (=> d!400911 (= lt!468045 (singleton!495 t1!34))))

(assert (=> d!400911 (= (singletonSeq!1136 t1!34) lt!468045)))

(declare-fun b!1403186 () Bool)

(declare-fun isBalanced!1389 (Conc!4707) Bool)

(assert (=> b!1403186 (= e!895863 (isBalanced!1389 (c!230768 lt!468045)))))

(assert (= (and d!400911 res!634882) b!1403186))

(declare-fun m!1580461 () Bool)

(assert (=> d!400911 m!1580461))

(declare-fun m!1580463 () Bool)

(assert (=> d!400911 m!1580463))

(declare-fun m!1580465 () Bool)

(assert (=> b!1403186 m!1580465))

(assert (=> b!1403112 d!400911))

(declare-fun e!895940 () Bool)

(declare-fun b!1403313 () Bool)

(declare-fun lt!468079 () tuple2!13900)

(assert (=> b!1403313 (= e!895940 (= (list!5570 (_2!7836 lt!468079)) (_2!7837 (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468026)))))))

(declare-fun b!1403314 () Bool)

(declare-fun e!895941 () Bool)

(assert (=> b!1403314 (= e!895941 (= (_2!7836 lt!468079) lt!468026))))

(declare-fun d!400917 () Bool)

(assert (=> d!400917 e!895940))

(declare-fun res!634944 () Bool)

(assert (=> d!400917 (=> (not res!634944) (not e!895940))))

(assert (=> d!400917 (= res!634944 e!895941)))

(declare-fun c!230808 () Bool)

(declare-fun size!11744 (BalanceConc!9354) Int)

(assert (=> d!400917 (= c!230808 (> (size!11744 (_1!7836 lt!468079)) 0))))

(declare-fun lexTailRecV2!444 (LexerInterface!2168 List!14340 BalanceConc!9352 BalanceConc!9352 BalanceConc!9352 BalanceConc!9354) tuple2!13900)

(assert (=> d!400917 (= lt!468079 (lexTailRecV2!444 thiss!19762 rules!2550 lt!468026 (BalanceConc!9353 Empty!4706) lt!468026 (BalanceConc!9355 Empty!4707)))))

(assert (=> d!400917 (= (lex!993 thiss!19762 rules!2550 lt!468026) lt!468079)))

(declare-fun b!1403315 () Bool)

(declare-fun res!634943 () Bool)

(assert (=> b!1403315 (=> (not res!634943) (not e!895940))))

(assert (=> b!1403315 (= res!634943 (= (list!5569 (_1!7836 lt!468079)) (_1!7837 (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468026)))))))

(declare-fun b!1403316 () Bool)

(declare-fun e!895942 () Bool)

(assert (=> b!1403316 (= e!895941 e!895942)))

(declare-fun res!634945 () Bool)

(assert (=> b!1403316 (= res!634945 (< (size!11742 (_2!7836 lt!468079)) (size!11742 lt!468026)))))

(assert (=> b!1403316 (=> (not res!634945) (not e!895942))))

(declare-fun b!1403317 () Bool)

(declare-fun isEmpty!8683 (BalanceConc!9354) Bool)

(assert (=> b!1403317 (= e!895942 (not (isEmpty!8683 (_1!7836 lt!468079))))))

(assert (= (and d!400917 c!230808) b!1403316))

(assert (= (and d!400917 (not c!230808)) b!1403314))

(assert (= (and b!1403316 res!634945) b!1403317))

(assert (= (and d!400917 res!634944) b!1403315))

(assert (= (and b!1403315 res!634943) b!1403313))

(declare-fun m!1580559 () Bool)

(assert (=> d!400917 m!1580559))

(declare-fun m!1580561 () Bool)

(assert (=> d!400917 m!1580561))

(declare-fun m!1580563 () Bool)

(assert (=> b!1403316 m!1580563))

(declare-fun m!1580565 () Bool)

(assert (=> b!1403316 m!1580565))

(declare-fun m!1580567 () Bool)

(assert (=> b!1403313 m!1580567))

(assert (=> b!1403313 m!1580359))

(assert (=> b!1403313 m!1580359))

(assert (=> b!1403313 m!1580361))

(declare-fun m!1580569 () Bool)

(assert (=> b!1403315 m!1580569))

(assert (=> b!1403315 m!1580359))

(assert (=> b!1403315 m!1580359))

(assert (=> b!1403315 m!1580361))

(declare-fun m!1580571 () Bool)

(assert (=> b!1403317 m!1580571))

(assert (=> b!1403112 d!400917))

(declare-fun d!400945 () Bool)

(declare-fun lt!468082 () Int)

(declare-fun size!11745 (List!14339) Int)

(assert (=> d!400945 (= lt!468082 (size!11745 (list!5570 lt!468016)))))

(declare-fun size!11746 (Conc!4706) Int)

(assert (=> d!400945 (= lt!468082 (size!11746 (c!230766 lt!468016)))))

(assert (=> d!400945 (= (size!11742 lt!468016) lt!468082)))

(declare-fun bs!338337 () Bool)

(assert (= bs!338337 d!400945))

(assert (=> bs!338337 m!1580381))

(assert (=> bs!338337 m!1580381))

(declare-fun m!1580573 () Bool)

(assert (=> bs!338337 m!1580573))

(declare-fun m!1580575 () Bool)

(assert (=> bs!338337 m!1580575))

(assert (=> b!1403133 d!400945))

(declare-fun d!400947 () Bool)

(declare-fun lt!468085 () BalanceConc!9352)

(assert (=> d!400947 (= (list!5570 lt!468085) (originalCharacters!3335 t2!34))))

(declare-fun dynLambda!6603 (Int TokenValue!2563) BalanceConc!9352)

(assert (=> d!400947 (= lt!468085 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (value!80113 t2!34)))))

(assert (=> d!400947 (= (charsOf!1445 t2!34) lt!468085)))

(declare-fun b_lambda!44137 () Bool)

(assert (=> (not b_lambda!44137) (not d!400947)))

(declare-fun tb!73113 () Bool)

(declare-fun t!122943 () Bool)

(assert (=> (and b!1403149 (= (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toChars!3623 (transformation!2473 (rule!4236 t2!34)))) t!122943) tb!73113))

(declare-fun b!1403322 () Bool)

(declare-fun e!895945 () Bool)

(declare-fun tp!399031 () Bool)

(declare-fun inv!18584 (Conc!4706) Bool)

(assert (=> b!1403322 (= e!895945 (and (inv!18584 (c!230766 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (value!80113 t2!34)))) tp!399031))))

(declare-fun result!88894 () Bool)

(declare-fun inv!18585 (BalanceConc!9352) Bool)

(assert (=> tb!73113 (= result!88894 (and (inv!18585 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (value!80113 t2!34))) e!895945))))

(assert (= tb!73113 b!1403322))

(declare-fun m!1580577 () Bool)

(assert (=> b!1403322 m!1580577))

(declare-fun m!1580579 () Bool)

(assert (=> tb!73113 m!1580579))

(assert (=> d!400947 t!122943))

(declare-fun b_and!93959 () Bool)

(assert (= b_and!93949 (and (=> t!122943 result!88894) b_and!93959)))

(declare-fun t!122945 () Bool)

(declare-fun tb!73115 () Bool)

(assert (=> (and b!1403121 (= (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (toChars!3623 (transformation!2473 (rule!4236 t2!34)))) t!122945) tb!73115))

(declare-fun result!88898 () Bool)

(assert (= result!88898 result!88894))

(assert (=> d!400947 t!122945))

(declare-fun b_and!93961 () Bool)

(assert (= b_and!93953 (and (=> t!122945 result!88898) b_and!93961)))

(declare-fun t!122947 () Bool)

(declare-fun tb!73117 () Bool)

(assert (=> (and b!1403144 (= (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (toChars!3623 (transformation!2473 (rule!4236 t2!34)))) t!122947) tb!73117))

(declare-fun result!88900 () Bool)

(assert (= result!88900 result!88894))

(assert (=> d!400947 t!122947))

(declare-fun b_and!93963 () Bool)

(assert (= b_and!93957 (and (=> t!122947 result!88900) b_and!93963)))

(declare-fun m!1580581 () Bool)

(assert (=> d!400947 m!1580581))

(declare-fun m!1580583 () Bool)

(assert (=> d!400947 m!1580583))

(assert (=> b!1403133 d!400947))

(declare-fun d!400949 () Bool)

(declare-fun lt!468088 () Bool)

(declare-fun isEmpty!8684 (List!14339) Bool)

(assert (=> d!400949 (= lt!468088 (isEmpty!8684 (list!5570 (_2!7836 lt!468030))))))

(declare-fun isEmpty!8685 (Conc!4706) Bool)

(assert (=> d!400949 (= lt!468088 (isEmpty!8685 (c!230766 (_2!7836 lt!468030))))))

(assert (=> d!400949 (= (isEmpty!8680 (_2!7836 lt!468030)) lt!468088)))

(declare-fun bs!338338 () Bool)

(assert (= bs!338338 d!400949))

(declare-fun m!1580585 () Bool)

(assert (=> bs!338338 m!1580585))

(assert (=> bs!338338 m!1580585))

(declare-fun m!1580587 () Bool)

(assert (=> bs!338338 m!1580587))

(declare-fun m!1580589 () Bool)

(assert (=> bs!338338 m!1580589))

(assert (=> b!1403135 d!400949))

(declare-fun d!400951 () Bool)

(declare-fun res!634948 () Bool)

(declare-fun e!895948 () Bool)

(assert (=> d!400951 (=> (not res!634948) (not e!895948))))

(declare-fun rulesValid!930 (LexerInterface!2168 List!14340) Bool)

(assert (=> d!400951 (= res!634948 (rulesValid!930 thiss!19762 rules!2550))))

(assert (=> d!400951 (= (rulesInvariant!2038 thiss!19762 rules!2550) e!895948)))

(declare-fun b!1403325 () Bool)

(declare-datatypes ((List!14343 0))(
  ( (Nil!14277) (Cons!14277 (h!19678 String!17051) (t!122976 List!14343)) )
))
(declare-fun noDuplicateTag!930 (LexerInterface!2168 List!14340 List!14343) Bool)

(assert (=> b!1403325 (= e!895948 (noDuplicateTag!930 thiss!19762 rules!2550 Nil!14277))))

(assert (= (and d!400951 res!634948) b!1403325))

(declare-fun m!1580591 () Bool)

(assert (=> d!400951 m!1580591))

(declare-fun m!1580593 () Bool)

(assert (=> b!1403325 m!1580593))

(assert (=> b!1403113 d!400951))

(declare-fun d!400953 () Bool)

(declare-fun lt!468091 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2120 (List!14339) (InoxSet C!7864))

(assert (=> d!400953 (= lt!468091 (select (content!2120 lt!468001) lt!468005))))

(declare-fun e!895953 () Bool)

(assert (=> d!400953 (= lt!468091 e!895953)))

(declare-fun res!634953 () Bool)

(assert (=> d!400953 (=> (not res!634953) (not e!895953))))

(assert (=> d!400953 (= res!634953 ((_ is Cons!14273) lt!468001))))

(assert (=> d!400953 (= (contains!2802 lt!468001 lt!468005) lt!468091)))

(declare-fun b!1403330 () Bool)

(declare-fun e!895954 () Bool)

(assert (=> b!1403330 (= e!895953 e!895954)))

(declare-fun res!634954 () Bool)

(assert (=> b!1403330 (=> res!634954 e!895954)))

(assert (=> b!1403330 (= res!634954 (= (h!19674 lt!468001) lt!468005))))

(declare-fun b!1403331 () Bool)

(assert (=> b!1403331 (= e!895954 (contains!2802 (t!122936 lt!468001) lt!468005))))

(assert (= (and d!400953 res!634953) b!1403330))

(assert (= (and b!1403330 (not res!634954)) b!1403331))

(declare-fun m!1580595 () Bool)

(assert (=> d!400953 m!1580595))

(declare-fun m!1580597 () Bool)

(assert (=> d!400953 m!1580597))

(declare-fun m!1580599 () Bool)

(assert (=> b!1403331 m!1580599))

(assert (=> b!1403134 d!400953))

(declare-fun d!400955 () Bool)

(declare-fun lt!468094 () C!7864)

(declare-fun apply!3643 (List!14339 Int) C!7864)

(assert (=> d!400955 (= lt!468094 (apply!3643 (list!5570 lt!468002) 0))))

(declare-fun apply!3644 (Conc!4706 Int) C!7864)

(assert (=> d!400955 (= lt!468094 (apply!3644 (c!230766 lt!468002) 0))))

(declare-fun e!895957 () Bool)

(assert (=> d!400955 e!895957))

(declare-fun res!634957 () Bool)

(assert (=> d!400955 (=> (not res!634957) (not e!895957))))

(assert (=> d!400955 (= res!634957 (<= 0 0))))

(assert (=> d!400955 (= (apply!3641 lt!468002 0) lt!468094)))

(declare-fun b!1403334 () Bool)

(assert (=> b!1403334 (= e!895957 (< 0 (size!11742 lt!468002)))))

(assert (= (and d!400955 res!634957) b!1403334))

(assert (=> d!400955 m!1580401))

(assert (=> d!400955 m!1580401))

(declare-fun m!1580601 () Bool)

(assert (=> d!400955 m!1580601))

(declare-fun m!1580603 () Bool)

(assert (=> d!400955 m!1580603))

(declare-fun m!1580605 () Bool)

(assert (=> b!1403334 m!1580605))

(assert (=> b!1403134 d!400955))

(declare-fun b!1403363 () Bool)

(declare-fun res!634977 () Bool)

(declare-fun e!895975 () Bool)

(assert (=> b!1403363 (=> res!634977 e!895975)))

(declare-fun e!895972 () Bool)

(assert (=> b!1403363 (= res!634977 e!895972)))

(declare-fun res!634979 () Bool)

(assert (=> b!1403363 (=> (not res!634979) (not e!895972))))

(declare-fun lt!468097 () Bool)

(assert (=> b!1403363 (= res!634979 lt!468097)))

(declare-fun b!1403365 () Bool)

(declare-fun e!895976 () Bool)

(declare-fun derivativeStep!991 (Regex!3787 C!7864) Regex!3787)

(declare-fun tail!2038 (List!14339) List!14339)

(assert (=> b!1403365 (= e!895976 (matchR!1778 (derivativeStep!991 (regex!2473 (rule!4236 t2!34)) (head!2603 lt!468024)) (tail!2038 lt!468024)))))

(declare-fun b!1403366 () Bool)

(declare-fun res!634980 () Bool)

(declare-fun e!895977 () Bool)

(assert (=> b!1403366 (=> res!634980 e!895977)))

(assert (=> b!1403366 (= res!634980 (not (isEmpty!8684 (tail!2038 lt!468024))))))

(declare-fun b!1403367 () Bool)

(declare-fun nullable!1233 (Regex!3787) Bool)

(assert (=> b!1403367 (= e!895976 (nullable!1233 (regex!2473 (rule!4236 t2!34))))))

(declare-fun b!1403368 () Bool)

(declare-fun e!895973 () Bool)

(assert (=> b!1403368 (= e!895973 (not lt!468097))))

(declare-fun b!1403369 () Bool)

(declare-fun e!895978 () Bool)

(assert (=> b!1403369 (= e!895978 e!895973)))

(declare-fun c!230815 () Bool)

(assert (=> b!1403369 (= c!230815 ((_ is EmptyLang!3787) (regex!2473 (rule!4236 t2!34))))))

(declare-fun bm!93594 () Bool)

(declare-fun call!93599 () Bool)

(assert (=> bm!93594 (= call!93599 (isEmpty!8684 lt!468024))))

(declare-fun b!1403370 () Bool)

(declare-fun res!634978 () Bool)

(assert (=> b!1403370 (=> (not res!634978) (not e!895972))))

(assert (=> b!1403370 (= res!634978 (not call!93599))))

(declare-fun b!1403371 () Bool)

(declare-fun e!895974 () Bool)

(assert (=> b!1403371 (= e!895974 e!895977)))

(declare-fun res!634976 () Bool)

(assert (=> b!1403371 (=> res!634976 e!895977)))

(assert (=> b!1403371 (= res!634976 call!93599)))

(declare-fun b!1403372 () Bool)

(assert (=> b!1403372 (= e!895977 (not (= (head!2603 lt!468024) (c!230767 (regex!2473 (rule!4236 t2!34))))))))

(declare-fun d!400957 () Bool)

(assert (=> d!400957 e!895978))

(declare-fun c!230816 () Bool)

(assert (=> d!400957 (= c!230816 ((_ is EmptyExpr!3787) (regex!2473 (rule!4236 t2!34))))))

(assert (=> d!400957 (= lt!468097 e!895976)))

(declare-fun c!230817 () Bool)

(assert (=> d!400957 (= c!230817 (isEmpty!8684 lt!468024))))

(declare-fun validRegex!1659 (Regex!3787) Bool)

(assert (=> d!400957 (validRegex!1659 (regex!2473 (rule!4236 t2!34)))))

(assert (=> d!400957 (= (matchR!1778 (regex!2473 (rule!4236 t2!34)) lt!468024) lt!468097)))

(declare-fun b!1403364 () Bool)

(declare-fun res!634974 () Bool)

(assert (=> b!1403364 (=> (not res!634974) (not e!895972))))

(assert (=> b!1403364 (= res!634974 (isEmpty!8684 (tail!2038 lt!468024)))))

(declare-fun b!1403373 () Bool)

(assert (=> b!1403373 (= e!895975 e!895974)))

(declare-fun res!634975 () Bool)

(assert (=> b!1403373 (=> (not res!634975) (not e!895974))))

(assert (=> b!1403373 (= res!634975 (not lt!468097))))

(declare-fun b!1403374 () Bool)

(declare-fun res!634981 () Bool)

(assert (=> b!1403374 (=> res!634981 e!895975)))

(assert (=> b!1403374 (= res!634981 (not ((_ is ElementMatch!3787) (regex!2473 (rule!4236 t2!34)))))))

(assert (=> b!1403374 (= e!895973 e!895975)))

(declare-fun b!1403375 () Bool)

(assert (=> b!1403375 (= e!895978 (= lt!468097 call!93599))))

(declare-fun b!1403376 () Bool)

(assert (=> b!1403376 (= e!895972 (= (head!2603 lt!468024) (c!230767 (regex!2473 (rule!4236 t2!34)))))))

(assert (= (and d!400957 c!230817) b!1403367))

(assert (= (and d!400957 (not c!230817)) b!1403365))

(assert (= (and d!400957 c!230816) b!1403375))

(assert (= (and d!400957 (not c!230816)) b!1403369))

(assert (= (and b!1403369 c!230815) b!1403368))

(assert (= (and b!1403369 (not c!230815)) b!1403374))

(assert (= (and b!1403374 (not res!634981)) b!1403363))

(assert (= (and b!1403363 res!634979) b!1403370))

(assert (= (and b!1403370 res!634978) b!1403364))

(assert (= (and b!1403364 res!634974) b!1403376))

(assert (= (and b!1403363 (not res!634977)) b!1403373))

(assert (= (and b!1403373 res!634975) b!1403371))

(assert (= (and b!1403371 (not res!634976)) b!1403366))

(assert (= (and b!1403366 (not res!634980)) b!1403372))

(assert (= (or b!1403375 b!1403370 b!1403371) bm!93594))

(declare-fun m!1580607 () Bool)

(assert (=> d!400957 m!1580607))

(declare-fun m!1580609 () Bool)

(assert (=> d!400957 m!1580609))

(assert (=> b!1403372 m!1580329))

(declare-fun m!1580611 () Bool)

(assert (=> b!1403367 m!1580611))

(assert (=> b!1403365 m!1580329))

(assert (=> b!1403365 m!1580329))

(declare-fun m!1580613 () Bool)

(assert (=> b!1403365 m!1580613))

(declare-fun m!1580615 () Bool)

(assert (=> b!1403365 m!1580615))

(assert (=> b!1403365 m!1580613))

(assert (=> b!1403365 m!1580615))

(declare-fun m!1580617 () Bool)

(assert (=> b!1403365 m!1580617))

(assert (=> b!1403376 m!1580329))

(assert (=> b!1403364 m!1580615))

(assert (=> b!1403364 m!1580615))

(declare-fun m!1580619 () Bool)

(assert (=> b!1403364 m!1580619))

(assert (=> b!1403366 m!1580615))

(assert (=> b!1403366 m!1580615))

(assert (=> b!1403366 m!1580619))

(assert (=> bm!93594 m!1580607))

(assert (=> b!1403115 d!400957))

(declare-fun d!400959 () Bool)

(assert (=> d!400959 (not (matchR!1778 (regex!2473 (rule!4236 t2!34)) lt!468024))))

(declare-fun lt!468100 () Unit!20615)

(declare-fun choose!8657 (Regex!3787 List!14339 C!7864) Unit!20615)

(assert (=> d!400959 (= lt!468100 (choose!8657 (regex!2473 (rule!4236 t2!34)) lt!468024 (head!2603 lt!468024)))))

(assert (=> d!400959 (validRegex!1659 (regex!2473 (rule!4236 t2!34)))))

(assert (=> d!400959 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!218 (regex!2473 (rule!4236 t2!34)) lt!468024 (head!2603 lt!468024)) lt!468100)))

(declare-fun bs!338339 () Bool)

(assert (= bs!338339 d!400959))

(assert (=> bs!338339 m!1580335))

(assert (=> bs!338339 m!1580329))

(declare-fun m!1580621 () Bool)

(assert (=> bs!338339 m!1580621))

(assert (=> bs!338339 m!1580609))

(assert (=> b!1403136 d!400959))

(declare-fun d!400961 () Bool)

(assert (=> d!400961 (= (head!2603 lt!468024) (h!19674 lt!468024))))

(assert (=> b!1403136 d!400961))

(declare-fun d!400963 () Bool)

(declare-fun lt!468128 () Bool)

(declare-fun e!896030 () Bool)

(assert (=> d!400963 (= lt!468128 e!896030)))

(declare-fun res!635027 () Bool)

(assert (=> d!400963 (=> (not res!635027) (not e!896030))))

(assert (=> d!400963 (= res!635027 (= (list!5569 (_1!7836 (lex!993 thiss!19762 rules!2550 (print!932 thiss!19762 (singletonSeq!1136 t1!34))))) (list!5569 (singletonSeq!1136 t1!34))))))

(declare-fun e!896029 () Bool)

(assert (=> d!400963 (= lt!468128 e!896029)))

(declare-fun res!635028 () Bool)

(assert (=> d!400963 (=> (not res!635028) (not e!896029))))

(declare-fun lt!468129 () tuple2!13900)

(assert (=> d!400963 (= res!635028 (= (size!11744 (_1!7836 lt!468129)) 1))))

(assert (=> d!400963 (= lt!468129 (lex!993 thiss!19762 rules!2550 (print!932 thiss!19762 (singletonSeq!1136 t1!34))))))

(assert (=> d!400963 (not (isEmpty!8681 rules!2550))))

(assert (=> d!400963 (= (rulesProduceIndividualToken!1137 thiss!19762 rules!2550 t1!34) lt!468128)))

(declare-fun b!1403453 () Bool)

(declare-fun res!635026 () Bool)

(assert (=> b!1403453 (=> (not res!635026) (not e!896029))))

(declare-fun apply!3645 (BalanceConc!9354 Int) Token!4608)

(assert (=> b!1403453 (= res!635026 (= (apply!3645 (_1!7836 lt!468129) 0) t1!34))))

(declare-fun b!1403454 () Bool)

(assert (=> b!1403454 (= e!896029 (isEmpty!8680 (_2!7836 lt!468129)))))

(declare-fun b!1403455 () Bool)

(assert (=> b!1403455 (= e!896030 (isEmpty!8680 (_2!7836 (lex!993 thiss!19762 rules!2550 (print!932 thiss!19762 (singletonSeq!1136 t1!34))))))))

(assert (= (and d!400963 res!635028) b!1403453))

(assert (= (and b!1403453 res!635026) b!1403454))

(assert (= (and d!400963 res!635027) b!1403455))

(assert (=> d!400963 m!1580391))

(assert (=> d!400963 m!1580439))

(assert (=> d!400963 m!1580285))

(declare-fun m!1580721 () Bool)

(assert (=> d!400963 m!1580721))

(assert (=> d!400963 m!1580391))

(assert (=> d!400963 m!1580393))

(declare-fun m!1580723 () Bool)

(assert (=> d!400963 m!1580723))

(assert (=> d!400963 m!1580391))

(assert (=> d!400963 m!1580393))

(declare-fun m!1580725 () Bool)

(assert (=> d!400963 m!1580725))

(declare-fun m!1580727 () Bool)

(assert (=> b!1403453 m!1580727))

(declare-fun m!1580729 () Bool)

(assert (=> b!1403454 m!1580729))

(assert (=> b!1403455 m!1580391))

(assert (=> b!1403455 m!1580391))

(assert (=> b!1403455 m!1580393))

(assert (=> b!1403455 m!1580393))

(assert (=> b!1403455 m!1580725))

(declare-fun m!1580731 () Bool)

(assert (=> b!1403455 m!1580731))

(assert (=> b!1403116 d!400963))

(declare-fun d!400989 () Bool)

(assert (=> d!400989 (not (matchR!1778 (regex!2473 (rule!4236 t1!34)) lt!468020))))

(declare-fun lt!468136 () Unit!20615)

(assert (=> d!400989 (= lt!468136 (choose!8657 (regex!2473 (rule!4236 t1!34)) lt!468020 (head!2603 lt!468020)))))

(assert (=> d!400989 (validRegex!1659 (regex!2473 (rule!4236 t1!34)))))

(assert (=> d!400989 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!218 (regex!2473 (rule!4236 t1!34)) lt!468020 (head!2603 lt!468020)) lt!468136)))

(declare-fun bs!338343 () Bool)

(assert (= bs!338343 d!400989))

(assert (=> bs!338343 m!1580307))

(assert (=> bs!338343 m!1580411))

(declare-fun m!1580733 () Bool)

(assert (=> bs!338343 m!1580733))

(declare-fun m!1580735 () Bool)

(assert (=> bs!338343 m!1580735))

(assert (=> b!1403137 d!400989))

(declare-fun d!400991 () Bool)

(assert (=> d!400991 (= (head!2603 lt!468020) (h!19674 lt!468020))))

(assert (=> b!1403137 d!400991))

(declare-fun d!400993 () Bool)

(declare-fun lt!468143 () Bool)

(declare-fun content!2121 (List!14341) (InoxSet Regex!3787))

(assert (=> d!400993 (= lt!468143 (select (content!2121 (map!3170 rules!2550 lambda!61660)) lt!468019))))

(declare-fun e!896042 () Bool)

(assert (=> d!400993 (= lt!468143 e!896042)))

(declare-fun res!635048 () Bool)

(assert (=> d!400993 (=> (not res!635048) (not e!896042))))

(assert (=> d!400993 (= res!635048 ((_ is Cons!14275) (map!3170 rules!2550 lambda!61660)))))

(assert (=> d!400993 (= (contains!2803 (map!3170 rules!2550 lambda!61660) lt!468019) lt!468143)))

(declare-fun b!1403478 () Bool)

(declare-fun e!896041 () Bool)

(assert (=> b!1403478 (= e!896042 e!896041)))

(declare-fun res!635047 () Bool)

(assert (=> b!1403478 (=> res!635047 e!896041)))

(assert (=> b!1403478 (= res!635047 (= (h!19676 (map!3170 rules!2550 lambda!61660)) lt!468019))))

(declare-fun b!1403479 () Bool)

(assert (=> b!1403479 (= e!896041 (contains!2803 (t!122938 (map!3170 rules!2550 lambda!61660)) lt!468019))))

(assert (= (and d!400993 res!635048) b!1403478))

(assert (= (and b!1403478 (not res!635047)) b!1403479))

(assert (=> d!400993 m!1580273))

(declare-fun m!1580737 () Bool)

(assert (=> d!400993 m!1580737))

(declare-fun m!1580739 () Bool)

(assert (=> d!400993 m!1580739))

(declare-fun m!1580741 () Bool)

(assert (=> b!1403479 m!1580741))

(assert (=> b!1403107 d!400993))

(declare-fun d!400995 () Bool)

(declare-fun lt!468146 () List!14341)

(declare-fun size!11747 (List!14341) Int)

(declare-fun size!11748 (List!14340) Int)

(assert (=> d!400995 (= (size!11747 lt!468146) (size!11748 rules!2550))))

(declare-fun e!896045 () List!14341)

(assert (=> d!400995 (= lt!468146 e!896045)))

(declare-fun c!230839 () Bool)

(assert (=> d!400995 (= c!230839 ((_ is Nil!14274) rules!2550))))

(assert (=> d!400995 (= (map!3170 rules!2550 lambda!61660) lt!468146)))

(declare-fun b!1403484 () Bool)

(assert (=> b!1403484 (= e!896045 Nil!14275)))

(declare-fun b!1403485 () Bool)

(declare-fun $colon$colon!234 (List!14341 Regex!3787) List!14341)

(declare-fun dynLambda!6604 (Int Rule!4746) Regex!3787)

(assert (=> b!1403485 (= e!896045 ($colon$colon!234 (map!3170 (t!122937 rules!2550) lambda!61660) (dynLambda!6604 lambda!61660 (h!19675 rules!2550))))))

(assert (= (and d!400995 c!230839) b!1403484))

(assert (= (and d!400995 (not c!230839)) b!1403485))

(declare-fun b_lambda!44145 () Bool)

(assert (=> (not b_lambda!44145) (not b!1403485)))

(declare-fun m!1580743 () Bool)

(assert (=> d!400995 m!1580743))

(declare-fun m!1580745 () Bool)

(assert (=> d!400995 m!1580745))

(declare-fun m!1580747 () Bool)

(assert (=> b!1403485 m!1580747))

(declare-fun m!1580749 () Bool)

(assert (=> b!1403485 m!1580749))

(assert (=> b!1403485 m!1580747))

(assert (=> b!1403485 m!1580749))

(declare-fun m!1580751 () Bool)

(assert (=> b!1403485 m!1580751))

(assert (=> b!1403107 d!400995))

(declare-fun b!1403509 () Bool)

(declare-fun lt!468156 () Unit!20615)

(declare-fun Unit!20623 () Unit!20615)

(assert (=> b!1403509 (= lt!468156 Unit!20623)))

(assert (=> b!1403509 false))

(declare-fun e!896058 () Regex!3787)

(declare-fun head!2606 (List!14341) Regex!3787)

(assert (=> b!1403509 (= e!896058 (head!2606 (map!3170 rules!2550 lambda!61660)))))

(declare-fun b!1403510 () Bool)

(declare-fun lt!468157 () Regex!3787)

(declare-fun e!896060 () Bool)

(assert (=> b!1403510 (= e!896060 (contains!2803 (map!3170 rules!2550 lambda!61660) lt!468157))))

(declare-fun b!1403511 () Bool)

(declare-fun e!896059 () Bool)

(declare-fun dynLambda!6606 (Int Regex!3787) Bool)

(assert (=> b!1403511 (= e!896059 (dynLambda!6606 lambda!61661 (h!19676 (map!3170 rules!2550 lambda!61660))))))

(declare-fun d!400997 () Bool)

(assert (=> d!400997 e!896060))

(declare-fun res!635061 () Bool)

(assert (=> d!400997 (=> (not res!635061) (not e!896060))))

(assert (=> d!400997 (= res!635061 (dynLambda!6606 lambda!61661 lt!468157))))

(declare-fun e!896057 () Regex!3787)

(assert (=> d!400997 (= lt!468157 e!896057)))

(declare-fun c!230846 () Bool)

(assert (=> d!400997 (= c!230846 e!896059)))

(declare-fun res!635060 () Bool)

(assert (=> d!400997 (=> (not res!635060) (not e!896059))))

(assert (=> d!400997 (= res!635060 ((_ is Cons!14275) (map!3170 rules!2550 lambda!61660)))))

(assert (=> d!400997 (exists!591 (map!3170 rules!2550 lambda!61660) lambda!61661)))

(assert (=> d!400997 (= (getWitness!478 (map!3170 rules!2550 lambda!61660) lambda!61661) lt!468157)))

(declare-fun b!1403512 () Bool)

(assert (=> b!1403512 (= e!896058 (getWitness!478 (t!122938 (map!3170 rules!2550 lambda!61660)) lambda!61661))))

(declare-fun b!1403513 () Bool)

(assert (=> b!1403513 (= e!896057 e!896058)))

(declare-fun c!230845 () Bool)

(assert (=> b!1403513 (= c!230845 ((_ is Cons!14275) (map!3170 rules!2550 lambda!61660)))))

(declare-fun b!1403514 () Bool)

(assert (=> b!1403514 (= e!896057 (h!19676 (map!3170 rules!2550 lambda!61660)))))

(assert (= (and d!400997 res!635060) b!1403511))

(assert (= (and d!400997 c!230846) b!1403514))

(assert (= (and d!400997 (not c!230846)) b!1403513))

(assert (= (and b!1403513 c!230845) b!1403512))

(assert (= (and b!1403513 (not c!230845)) b!1403509))

(assert (= (and d!400997 res!635061) b!1403510))

(declare-fun b_lambda!44147 () Bool)

(assert (=> (not b_lambda!44147) (not b!1403511)))

(declare-fun b_lambda!44149 () Bool)

(assert (=> (not b_lambda!44149) (not d!400997)))

(declare-fun m!1580791 () Bool)

(assert (=> b!1403511 m!1580791))

(assert (=> b!1403509 m!1580273))

(declare-fun m!1580793 () Bool)

(assert (=> b!1403509 m!1580793))

(declare-fun m!1580795 () Bool)

(assert (=> b!1403512 m!1580795))

(assert (=> b!1403510 m!1580273))

(declare-fun m!1580799 () Bool)

(assert (=> b!1403510 m!1580799))

(declare-fun m!1580801 () Bool)

(assert (=> d!400997 m!1580801))

(assert (=> d!400997 m!1580273))

(assert (=> d!400997 m!1580277))

(assert (=> b!1403107 d!400997))

(declare-fun d!401007 () Bool)

(declare-fun lt!468158 () Bool)

(assert (=> d!401007 (= lt!468158 (select (content!2120 (usedCharacters!284 (regex!2473 (rule!4236 t2!34)))) lt!468014))))

(declare-fun e!896061 () Bool)

(assert (=> d!401007 (= lt!468158 e!896061)))

(declare-fun res!635062 () Bool)

(assert (=> d!401007 (=> (not res!635062) (not e!896061))))

(assert (=> d!401007 (= res!635062 ((_ is Cons!14273) (usedCharacters!284 (regex!2473 (rule!4236 t2!34)))))))

(assert (=> d!401007 (= (contains!2802 (usedCharacters!284 (regex!2473 (rule!4236 t2!34))) lt!468014) lt!468158)))

(declare-fun b!1403515 () Bool)

(declare-fun e!896062 () Bool)

(assert (=> b!1403515 (= e!896061 e!896062)))

(declare-fun res!635063 () Bool)

(assert (=> b!1403515 (=> res!635063 e!896062)))

(assert (=> b!1403515 (= res!635063 (= (h!19674 (usedCharacters!284 (regex!2473 (rule!4236 t2!34)))) lt!468014))))

(declare-fun b!1403516 () Bool)

(assert (=> b!1403516 (= e!896062 (contains!2802 (t!122936 (usedCharacters!284 (regex!2473 (rule!4236 t2!34)))) lt!468014))))

(assert (= (and d!401007 res!635062) b!1403515))

(assert (= (and b!1403515 (not res!635063)) b!1403516))

(assert (=> d!401007 m!1580281))

(declare-fun m!1580803 () Bool)

(assert (=> d!401007 m!1580803))

(declare-fun m!1580805 () Bool)

(assert (=> d!401007 m!1580805))

(declare-fun m!1580807 () Bool)

(assert (=> b!1403516 m!1580807))

(assert (=> b!1403128 d!401007))

(declare-fun b!1403535 () Bool)

(declare-fun c!230858 () Bool)

(assert (=> b!1403535 (= c!230858 ((_ is Star!3787) (regex!2473 (rule!4236 t2!34))))))

(declare-fun e!896074 () List!14339)

(declare-fun e!896073 () List!14339)

(assert (=> b!1403535 (= e!896074 e!896073)))

(declare-fun bm!93607 () Bool)

(declare-fun call!93612 () List!14339)

(declare-fun c!230857 () Bool)

(assert (=> bm!93607 (= call!93612 (usedCharacters!284 (ite c!230857 (regTwo!8087 (regex!2473 (rule!4236 t2!34))) (regOne!8086 (regex!2473 (rule!4236 t2!34))))))))

(declare-fun bm!93608 () Bool)

(declare-fun call!93614 () List!14339)

(declare-fun call!93615 () List!14339)

(assert (=> bm!93608 (= call!93615 (++!3712 (ite c!230857 call!93614 call!93612) (ite c!230857 call!93612 call!93614)))))

(declare-fun b!1403536 () Bool)

(declare-fun e!896075 () List!14339)

(assert (=> b!1403536 (= e!896075 call!93615)))

(declare-fun b!1403537 () Bool)

(declare-fun e!896076 () List!14339)

(assert (=> b!1403537 (= e!896076 Nil!14273)))

(declare-fun b!1403539 () Bool)

(assert (=> b!1403539 (= e!896074 (Cons!14273 (c!230767 (regex!2473 (rule!4236 t2!34))) Nil!14273))))

(declare-fun b!1403540 () Bool)

(assert (=> b!1403540 (= e!896075 call!93615)))

(declare-fun bm!93609 () Bool)

(declare-fun call!93613 () List!14339)

(assert (=> bm!93609 (= call!93614 call!93613)))

(declare-fun bm!93610 () Bool)

(assert (=> bm!93610 (= call!93613 (usedCharacters!284 (ite c!230858 (reg!4116 (regex!2473 (rule!4236 t2!34))) (ite c!230857 (regOne!8087 (regex!2473 (rule!4236 t2!34))) (regTwo!8086 (regex!2473 (rule!4236 t2!34)))))))))

(declare-fun b!1403541 () Bool)

(assert (=> b!1403541 (= e!896073 e!896075)))

(assert (=> b!1403541 (= c!230857 ((_ is Union!3787) (regex!2473 (rule!4236 t2!34))))))

(declare-fun b!1403542 () Bool)

(assert (=> b!1403542 (= e!896076 e!896074)))

(declare-fun c!230855 () Bool)

(assert (=> b!1403542 (= c!230855 ((_ is ElementMatch!3787) (regex!2473 (rule!4236 t2!34))))))

(declare-fun b!1403538 () Bool)

(assert (=> b!1403538 (= e!896073 call!93613)))

(declare-fun d!401009 () Bool)

(declare-fun c!230856 () Bool)

(assert (=> d!401009 (= c!230856 (or ((_ is EmptyExpr!3787) (regex!2473 (rule!4236 t2!34))) ((_ is EmptyLang!3787) (regex!2473 (rule!4236 t2!34)))))))

(assert (=> d!401009 (= (usedCharacters!284 (regex!2473 (rule!4236 t2!34))) e!896076)))

(assert (= (and d!401009 c!230856) b!1403537))

(assert (= (and d!401009 (not c!230856)) b!1403542))

(assert (= (and b!1403542 c!230855) b!1403539))

(assert (= (and b!1403542 (not c!230855)) b!1403535))

(assert (= (and b!1403535 c!230858) b!1403538))

(assert (= (and b!1403535 (not c!230858)) b!1403541))

(assert (= (and b!1403541 c!230857) b!1403540))

(assert (= (and b!1403541 (not c!230857)) b!1403536))

(assert (= (or b!1403540 b!1403536) bm!93609))

(assert (= (or b!1403540 b!1403536) bm!93607))

(assert (= (or b!1403540 b!1403536) bm!93608))

(assert (= (or b!1403538 bm!93609) bm!93610))

(declare-fun m!1580815 () Bool)

(assert (=> bm!93607 m!1580815))

(declare-fun m!1580817 () Bool)

(assert (=> bm!93608 m!1580817))

(declare-fun m!1580819 () Bool)

(assert (=> bm!93610 m!1580819))

(assert (=> b!1403128 d!401009))

(declare-fun d!401013 () Bool)

(assert (=> d!401013 (= (inv!18579 (tag!2735 (h!19675 rules!2550))) (= (mod (str.len (value!80112 (tag!2735 (h!19675 rules!2550)))) 2) 0))))

(assert (=> b!1403108 d!401013))

(declare-fun d!401015 () Bool)

(declare-fun res!635068 () Bool)

(declare-fun e!896079 () Bool)

(assert (=> d!401015 (=> (not res!635068) (not e!896079))))

(declare-fun semiInverseModEq!961 (Int Int) Bool)

(assert (=> d!401015 (= res!635068 (semiInverseModEq!961 (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toValue!3764 (transformation!2473 (h!19675 rules!2550)))))))

(assert (=> d!401015 (= (inv!18582 (transformation!2473 (h!19675 rules!2550))) e!896079)))

(declare-fun b!1403545 () Bool)

(declare-fun equivClasses!920 (Int Int) Bool)

(assert (=> b!1403545 (= e!896079 (equivClasses!920 (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toValue!3764 (transformation!2473 (h!19675 rules!2550)))))))

(assert (= (and d!401015 res!635068) b!1403545))

(declare-fun m!1580821 () Bool)

(assert (=> d!401015 m!1580821))

(declare-fun m!1580823 () Bool)

(assert (=> b!1403545 m!1580823))

(assert (=> b!1403108 d!401015))

(declare-fun d!401017 () Bool)

(declare-fun lt!468162 () Bool)

(assert (=> d!401017 (= lt!468162 (select (content!2120 (usedCharacters!284 (regex!2473 (rule!4236 t1!34)))) lt!468005))))

(declare-fun e!896080 () Bool)

(assert (=> d!401017 (= lt!468162 e!896080)))

(declare-fun res!635069 () Bool)

(assert (=> d!401017 (=> (not res!635069) (not e!896080))))

(assert (=> d!401017 (= res!635069 ((_ is Cons!14273) (usedCharacters!284 (regex!2473 (rule!4236 t1!34)))))))

(assert (=> d!401017 (= (contains!2802 (usedCharacters!284 (regex!2473 (rule!4236 t1!34))) lt!468005) lt!468162)))

(declare-fun b!1403546 () Bool)

(declare-fun e!896081 () Bool)

(assert (=> b!1403546 (= e!896080 e!896081)))

(declare-fun res!635070 () Bool)

(assert (=> b!1403546 (=> res!635070 e!896081)))

(assert (=> b!1403546 (= res!635070 (= (h!19674 (usedCharacters!284 (regex!2473 (rule!4236 t1!34)))) lt!468005))))

(declare-fun b!1403547 () Bool)

(assert (=> b!1403547 (= e!896081 (contains!2802 (t!122936 (usedCharacters!284 (regex!2473 (rule!4236 t1!34)))) lt!468005))))

(assert (= (and d!401017 res!635069) b!1403546))

(assert (= (and b!1403546 (not res!635070)) b!1403547))

(assert (=> d!401017 m!1580383))

(declare-fun m!1580825 () Bool)

(assert (=> d!401017 m!1580825))

(declare-fun m!1580827 () Bool)

(assert (=> d!401017 m!1580827))

(declare-fun m!1580829 () Bool)

(assert (=> b!1403547 m!1580829))

(assert (=> b!1403129 d!401017))

(declare-fun b!1403548 () Bool)

(declare-fun c!230862 () Bool)

(assert (=> b!1403548 (= c!230862 ((_ is Star!3787) (regex!2473 (rule!4236 t1!34))))))

(declare-fun e!896083 () List!14339)

(declare-fun e!896082 () List!14339)

(assert (=> b!1403548 (= e!896083 e!896082)))

(declare-fun bm!93611 () Bool)

(declare-fun call!93616 () List!14339)

(declare-fun c!230861 () Bool)

(assert (=> bm!93611 (= call!93616 (usedCharacters!284 (ite c!230861 (regTwo!8087 (regex!2473 (rule!4236 t1!34))) (regOne!8086 (regex!2473 (rule!4236 t1!34))))))))

(declare-fun call!93619 () List!14339)

(declare-fun call!93618 () List!14339)

(declare-fun bm!93612 () Bool)

(assert (=> bm!93612 (= call!93619 (++!3712 (ite c!230861 call!93618 call!93616) (ite c!230861 call!93616 call!93618)))))

(declare-fun b!1403549 () Bool)

(declare-fun e!896084 () List!14339)

(assert (=> b!1403549 (= e!896084 call!93619)))

(declare-fun b!1403550 () Bool)

(declare-fun e!896085 () List!14339)

(assert (=> b!1403550 (= e!896085 Nil!14273)))

(declare-fun b!1403552 () Bool)

(assert (=> b!1403552 (= e!896083 (Cons!14273 (c!230767 (regex!2473 (rule!4236 t1!34))) Nil!14273))))

(declare-fun b!1403553 () Bool)

(assert (=> b!1403553 (= e!896084 call!93619)))

(declare-fun bm!93613 () Bool)

(declare-fun call!93617 () List!14339)

(assert (=> bm!93613 (= call!93618 call!93617)))

(declare-fun bm!93614 () Bool)

(assert (=> bm!93614 (= call!93617 (usedCharacters!284 (ite c!230862 (reg!4116 (regex!2473 (rule!4236 t1!34))) (ite c!230861 (regOne!8087 (regex!2473 (rule!4236 t1!34))) (regTwo!8086 (regex!2473 (rule!4236 t1!34)))))))))

(declare-fun b!1403554 () Bool)

(assert (=> b!1403554 (= e!896082 e!896084)))

(assert (=> b!1403554 (= c!230861 ((_ is Union!3787) (regex!2473 (rule!4236 t1!34))))))

(declare-fun b!1403555 () Bool)

(assert (=> b!1403555 (= e!896085 e!896083)))

(declare-fun c!230859 () Bool)

(assert (=> b!1403555 (= c!230859 ((_ is ElementMatch!3787) (regex!2473 (rule!4236 t1!34))))))

(declare-fun b!1403551 () Bool)

(assert (=> b!1403551 (= e!896082 call!93617)))

(declare-fun d!401019 () Bool)

(declare-fun c!230860 () Bool)

(assert (=> d!401019 (= c!230860 (or ((_ is EmptyExpr!3787) (regex!2473 (rule!4236 t1!34))) ((_ is EmptyLang!3787) (regex!2473 (rule!4236 t1!34)))))))

(assert (=> d!401019 (= (usedCharacters!284 (regex!2473 (rule!4236 t1!34))) e!896085)))

(assert (= (and d!401019 c!230860) b!1403550))

(assert (= (and d!401019 (not c!230860)) b!1403555))

(assert (= (and b!1403555 c!230859) b!1403552))

(assert (= (and b!1403555 (not c!230859)) b!1403548))

(assert (= (and b!1403548 c!230862) b!1403551))

(assert (= (and b!1403548 (not c!230862)) b!1403554))

(assert (= (and b!1403554 c!230861) b!1403553))

(assert (= (and b!1403554 (not c!230861)) b!1403549))

(assert (= (or b!1403553 b!1403549) bm!93613))

(assert (= (or b!1403553 b!1403549) bm!93611))

(assert (= (or b!1403553 b!1403549) bm!93612))

(assert (= (or b!1403551 bm!93613) bm!93614))

(declare-fun m!1580831 () Bool)

(assert (=> bm!93611 m!1580831))

(declare-fun m!1580833 () Bool)

(assert (=> bm!93612 m!1580833))

(declare-fun m!1580835 () Bool)

(assert (=> bm!93614 m!1580835))

(assert (=> b!1403129 d!401019))

(declare-fun d!401021 () Bool)

(declare-fun lt!468163 () Bool)

(declare-fun e!896087 () Bool)

(assert (=> d!401021 (= lt!468163 e!896087)))

(declare-fun res!635072 () Bool)

(assert (=> d!401021 (=> (not res!635072) (not e!896087))))

(assert (=> d!401021 (= res!635072 (= (list!5569 (_1!7836 (lex!993 thiss!19762 rules!2550 (print!932 thiss!19762 (singletonSeq!1136 t2!34))))) (list!5569 (singletonSeq!1136 t2!34))))))

(declare-fun e!896086 () Bool)

(assert (=> d!401021 (= lt!468163 e!896086)))

(declare-fun res!635073 () Bool)

(assert (=> d!401021 (=> (not res!635073) (not e!896086))))

(declare-fun lt!468164 () tuple2!13900)

(assert (=> d!401021 (= res!635073 (= (size!11744 (_1!7836 lt!468164)) 1))))

(assert (=> d!401021 (= lt!468164 (lex!993 thiss!19762 rules!2550 (print!932 thiss!19762 (singletonSeq!1136 t2!34))))))

(assert (=> d!401021 (not (isEmpty!8681 rules!2550))))

(assert (=> d!401021 (= (rulesProduceIndividualToken!1137 thiss!19762 rules!2550 t2!34) lt!468163)))

(declare-fun b!1403556 () Bool)

(declare-fun res!635071 () Bool)

(assert (=> b!1403556 (=> (not res!635071) (not e!896086))))

(assert (=> b!1403556 (= res!635071 (= (apply!3645 (_1!7836 lt!468164) 0) t2!34))))

(declare-fun b!1403557 () Bool)

(assert (=> b!1403557 (= e!896086 (isEmpty!8680 (_2!7836 lt!468164)))))

(declare-fun b!1403558 () Bool)

(assert (=> b!1403558 (= e!896087 (isEmpty!8680 (_2!7836 (lex!993 thiss!19762 rules!2550 (print!932 thiss!19762 (singletonSeq!1136 t2!34))))))))

(assert (= (and d!401021 res!635073) b!1403556))

(assert (= (and b!1403556 res!635071) b!1403557))

(assert (= (and d!401021 res!635072) b!1403558))

(assert (=> d!401021 m!1580299))

(declare-fun m!1580837 () Bool)

(assert (=> d!401021 m!1580837))

(assert (=> d!401021 m!1580285))

(declare-fun m!1580839 () Bool)

(assert (=> d!401021 m!1580839))

(assert (=> d!401021 m!1580299))

(assert (=> d!401021 m!1580301))

(declare-fun m!1580841 () Bool)

(assert (=> d!401021 m!1580841))

(assert (=> d!401021 m!1580299))

(assert (=> d!401021 m!1580301))

(declare-fun m!1580843 () Bool)

(assert (=> d!401021 m!1580843))

(declare-fun m!1580845 () Bool)

(assert (=> b!1403556 m!1580845))

(declare-fun m!1580847 () Bool)

(assert (=> b!1403557 m!1580847))

(assert (=> b!1403558 m!1580299))

(assert (=> b!1403558 m!1580299))

(assert (=> b!1403558 m!1580301))

(assert (=> b!1403558 m!1580301))

(assert (=> b!1403558 m!1580843))

(declare-fun m!1580849 () Bool)

(assert (=> b!1403558 m!1580849))

(assert (=> b!1403131 d!401021))

(declare-fun d!401023 () Bool)

(declare-fun c!230868 () Bool)

(assert (=> d!401023 (= c!230868 ((_ is IntegerValue!7689) (value!80113 t1!34)))))

(declare-fun e!896095 () Bool)

(assert (=> d!401023 (= (inv!21 (value!80113 t1!34)) e!896095)))

(declare-fun b!1403569 () Bool)

(declare-fun e!896094 () Bool)

(declare-fun inv!15 (TokenValue!2563) Bool)

(assert (=> b!1403569 (= e!896094 (inv!15 (value!80113 t1!34)))))

(declare-fun b!1403570 () Bool)

(declare-fun e!896096 () Bool)

(assert (=> b!1403570 (= e!896095 e!896096)))

(declare-fun c!230867 () Bool)

(assert (=> b!1403570 (= c!230867 ((_ is IntegerValue!7690) (value!80113 t1!34)))))

(declare-fun b!1403571 () Bool)

(declare-fun inv!16 (TokenValue!2563) Bool)

(assert (=> b!1403571 (= e!896095 (inv!16 (value!80113 t1!34)))))

(declare-fun b!1403572 () Bool)

(declare-fun inv!17 (TokenValue!2563) Bool)

(assert (=> b!1403572 (= e!896096 (inv!17 (value!80113 t1!34)))))

(declare-fun b!1403573 () Bool)

(declare-fun res!635076 () Bool)

(assert (=> b!1403573 (=> res!635076 e!896094)))

(assert (=> b!1403573 (= res!635076 (not ((_ is IntegerValue!7691) (value!80113 t1!34))))))

(assert (=> b!1403573 (= e!896096 e!896094)))

(assert (= (and d!401023 c!230868) b!1403571))

(assert (= (and d!401023 (not c!230868)) b!1403570))

(assert (= (and b!1403570 c!230867) b!1403572))

(assert (= (and b!1403570 (not c!230867)) b!1403573))

(assert (= (and b!1403573 (not res!635076)) b!1403569))

(declare-fun m!1580851 () Bool)

(assert (=> b!1403569 m!1580851))

(declare-fun m!1580853 () Bool)

(assert (=> b!1403571 m!1580853))

(declare-fun m!1580855 () Bool)

(assert (=> b!1403572 m!1580855))

(assert (=> b!1403109 d!401023))

(declare-fun bs!338354 () Bool)

(declare-fun d!401025 () Bool)

(assert (= bs!338354 (and d!401025 b!1403130)))

(declare-fun lambda!61676 () Int)

(assert (=> bs!338354 (not (= lambda!61676 lambda!61662))))

(declare-fun bs!338355 () Bool)

(assert (= bs!338355 (and d!401025 b!1403110)))

(assert (=> bs!338355 (not (= lambda!61676 lambda!61663))))

(assert (=> d!401025 true))

(declare-fun order!8729 () Int)

(declare-fun dynLambda!6608 (Int Int) Int)

(assert (=> d!401025 (< (dynLambda!6608 order!8729 lambda!61662) (dynLambda!6608 order!8729 lambda!61676))))

(declare-fun forall!3461 (List!14340 Int) Bool)

(assert (=> d!401025 (= (exists!590 rules!2550 lambda!61662) (not (forall!3461 rules!2550 lambda!61676)))))

(declare-fun bs!338356 () Bool)

(assert (= bs!338356 d!401025))

(declare-fun m!1580857 () Bool)

(assert (=> bs!338356 m!1580857))

(assert (=> b!1403130 d!401025))

(declare-fun bs!338357 () Bool)

(declare-fun d!401027 () Bool)

(assert (= bs!338357 (and d!401027 b!1403130)))

(declare-fun lambda!61679 () Int)

(assert (=> bs!338357 (not (= lambda!61679 lambda!61662))))

(declare-fun bs!338358 () Bool)

(assert (= bs!338358 (and d!401027 b!1403110)))

(assert (=> bs!338358 (not (= lambda!61679 lambda!61663))))

(declare-fun bs!338359 () Bool)

(assert (= bs!338359 (and d!401027 d!401025)))

(assert (=> bs!338359 (not (= lambda!61679 lambda!61676))))

(assert (=> d!401027 true))

(assert (=> d!401027 true))

(declare-fun order!8731 () Int)

(declare-fun dynLambda!6609 (Int Int) Int)

(assert (=> d!401027 (< (dynLambda!6609 order!8731 lambda!61660) (dynLambda!6608 order!8729 lambda!61679))))

(assert (=> d!401027 (exists!590 rules!2550 lambda!61679)))

(declare-fun lt!468173 () Unit!20615)

(declare-fun choose!8658 (List!14340 Int Regex!3787) Unit!20615)

(assert (=> d!401027 (= lt!468173 (choose!8658 rules!2550 lambda!61660 lt!468019))))

(assert (=> d!401027 (contains!2803 (map!3170 rules!2550 lambda!61660) lt!468019)))

(assert (=> d!401027 (= (lemmaMapContains!184 rules!2550 lambda!61660 lt!468019) lt!468173)))

(declare-fun bs!338360 () Bool)

(assert (= bs!338360 d!401027))

(declare-fun m!1580859 () Bool)

(assert (=> bs!338360 m!1580859))

(declare-fun m!1580861 () Bool)

(assert (=> bs!338360 m!1580861))

(assert (=> bs!338360 m!1580273))

(assert (=> bs!338360 m!1580273))

(assert (=> bs!338360 m!1580303))

(assert (=> b!1403130 d!401027))

(declare-fun d!401029 () Bool)

(declare-fun res!635084 () Bool)

(declare-fun e!896110 () Bool)

(assert (=> d!401029 (=> res!635084 e!896110)))

(assert (=> d!401029 (= res!635084 (not ((_ is Cons!14274) rules!2550)))))

(assert (=> d!401029 (= (sepAndNonSepRulesDisjointChars!846 rules!2550 rules!2550) e!896110)))

(declare-fun b!1403599 () Bool)

(declare-fun e!896111 () Bool)

(assert (=> b!1403599 (= e!896110 e!896111)))

(declare-fun res!635085 () Bool)

(assert (=> b!1403599 (=> (not res!635085) (not e!896111))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!403 (Rule!4746 List!14340) Bool)

(assert (=> b!1403599 (= res!635085 (ruleDisjointCharsFromAllFromOtherType!403 (h!19675 rules!2550) rules!2550))))

(declare-fun b!1403600 () Bool)

(assert (=> b!1403600 (= e!896111 (sepAndNonSepRulesDisjointChars!846 rules!2550 (t!122937 rules!2550)))))

(assert (= (and d!401029 (not res!635084)) b!1403599))

(assert (= (and b!1403599 res!635085) b!1403600))

(declare-fun m!1580877 () Bool)

(assert (=> b!1403599 m!1580877))

(declare-fun m!1580879 () Bool)

(assert (=> b!1403600 m!1580879))

(assert (=> b!1403111 d!401029))

(declare-fun bs!338363 () Bool)

(declare-fun d!401037 () Bool)

(assert (= bs!338363 (and d!401037 b!1403132)))

(declare-fun lambda!61682 () Int)

(assert (=> bs!338363 (not (= lambda!61682 lambda!61661))))

(assert (=> d!401037 true))

(declare-fun order!8733 () Int)

(declare-fun dynLambda!6611 (Int Int) Int)

(assert (=> d!401037 (< (dynLambda!6611 order!8733 lambda!61661) (dynLambda!6611 order!8733 lambda!61682))))

(declare-fun forall!3463 (List!14341 Int) Bool)

(assert (=> d!401037 (= (exists!591 lt!468025 lambda!61661) (not (forall!3463 lt!468025 lambda!61682)))))

(declare-fun bs!338364 () Bool)

(assert (= bs!338364 d!401037))

(declare-fun m!1580887 () Bool)

(assert (=> bs!338364 m!1580887))

(assert (=> b!1403132 d!401037))

(assert (=> b!1403132 d!400995))

(declare-fun bs!338365 () Bool)

(declare-fun d!401043 () Bool)

(assert (= bs!338365 (and d!401043 b!1403132)))

(declare-fun lambda!61683 () Int)

(assert (=> bs!338365 (not (= lambda!61683 lambda!61661))))

(declare-fun bs!338366 () Bool)

(assert (= bs!338366 (and d!401043 d!401037)))

(assert (=> bs!338366 (= lambda!61683 lambda!61682)))

(assert (=> d!401043 true))

(assert (=> d!401043 (< (dynLambda!6611 order!8733 lambda!61661) (dynLambda!6611 order!8733 lambda!61683))))

(assert (=> d!401043 (= (exists!591 (map!3170 rules!2550 lambda!61660) lambda!61661) (not (forall!3463 (map!3170 rules!2550 lambda!61660) lambda!61683)))))

(declare-fun bs!338367 () Bool)

(assert (= bs!338367 d!401043))

(assert (=> bs!338367 m!1580273))

(declare-fun m!1580889 () Bool)

(assert (=> bs!338367 m!1580889))

(assert (=> b!1403132 d!401043))

(declare-fun bs!338370 () Bool)

(declare-fun d!401045 () Bool)

(assert (= bs!338370 (and d!401045 b!1403132)))

(declare-fun lambda!61691 () Int)

(assert (=> bs!338370 (not (= lambda!61691 lambda!61661))))

(declare-fun bs!338371 () Bool)

(assert (= bs!338371 (and d!401045 d!401037)))

(assert (=> bs!338371 (not (= lambda!61691 lambda!61682))))

(declare-fun bs!338372 () Bool)

(assert (= bs!338372 (and d!401045 d!401043)))

(assert (=> bs!338372 (not (= lambda!61691 lambda!61683))))

(declare-fun lambda!61692 () Int)

(assert (=> bs!338370 (= lambda!61692 lambda!61661)))

(assert (=> bs!338371 (not (= lambda!61692 lambda!61682))))

(assert (=> bs!338372 (not (= lambda!61692 lambda!61683))))

(declare-fun bs!338373 () Bool)

(assert (= bs!338373 d!401045))

(assert (=> bs!338373 (not (= lambda!61692 lambda!61691))))

(assert (=> d!401045 true))

(assert (=> d!401045 (= (matchR!1778 lt!468000 lt!468015) (exists!591 lt!468025 lambda!61692))))

(declare-fun lt!468182 () Unit!20615)

(declare-fun choose!8660 (Regex!3787 List!14341 List!14339) Unit!20615)

(assert (=> d!401045 (= lt!468182 (choose!8660 lt!468000 lt!468025 lt!468015))))

(assert (=> d!401045 (forall!3463 lt!468025 lambda!61691)))

(assert (=> d!401045 (= (matchRGenUnionSpec!198 lt!468000 lt!468025 lt!468015) lt!468182)))

(assert (=> bs!338373 m!1580419))

(declare-fun m!1580901 () Bool)

(assert (=> bs!338373 m!1580901))

(declare-fun m!1580903 () Bool)

(assert (=> bs!338373 m!1580903))

(declare-fun m!1580905 () Bool)

(assert (=> bs!338373 m!1580905))

(assert (=> b!1403132 d!401045))

(declare-fun b!1403614 () Bool)

(declare-fun res!635100 () Bool)

(declare-fun e!896126 () Bool)

(assert (=> b!1403614 (=> res!635100 e!896126)))

(declare-fun e!896123 () Bool)

(assert (=> b!1403614 (= res!635100 e!896123)))

(declare-fun res!635102 () Bool)

(assert (=> b!1403614 (=> (not res!635102) (not e!896123))))

(declare-fun lt!468183 () Bool)

(assert (=> b!1403614 (= res!635102 lt!468183)))

(declare-fun b!1403616 () Bool)

(declare-fun e!896127 () Bool)

(assert (=> b!1403616 (= e!896127 (matchR!1778 (derivativeStep!991 (regex!2473 (rule!4236 t1!34)) (head!2603 lt!468020)) (tail!2038 lt!468020)))))

(declare-fun b!1403617 () Bool)

(declare-fun res!635103 () Bool)

(declare-fun e!896128 () Bool)

(assert (=> b!1403617 (=> res!635103 e!896128)))

(assert (=> b!1403617 (= res!635103 (not (isEmpty!8684 (tail!2038 lt!468020))))))

(declare-fun b!1403618 () Bool)

(assert (=> b!1403618 (= e!896127 (nullable!1233 (regex!2473 (rule!4236 t1!34))))))

(declare-fun b!1403619 () Bool)

(declare-fun e!896124 () Bool)

(assert (=> b!1403619 (= e!896124 (not lt!468183))))

(declare-fun b!1403620 () Bool)

(declare-fun e!896129 () Bool)

(assert (=> b!1403620 (= e!896129 e!896124)))

(declare-fun c!230875 () Bool)

(assert (=> b!1403620 (= c!230875 ((_ is EmptyLang!3787) (regex!2473 (rule!4236 t1!34))))))

(declare-fun bm!93615 () Bool)

(declare-fun call!93620 () Bool)

(assert (=> bm!93615 (= call!93620 (isEmpty!8684 lt!468020))))

(declare-fun b!1403621 () Bool)

(declare-fun res!635101 () Bool)

(assert (=> b!1403621 (=> (not res!635101) (not e!896123))))

(assert (=> b!1403621 (= res!635101 (not call!93620))))

(declare-fun b!1403622 () Bool)

(declare-fun e!896125 () Bool)

(assert (=> b!1403622 (= e!896125 e!896128)))

(declare-fun res!635099 () Bool)

(assert (=> b!1403622 (=> res!635099 e!896128)))

(assert (=> b!1403622 (= res!635099 call!93620)))

(declare-fun b!1403623 () Bool)

(assert (=> b!1403623 (= e!896128 (not (= (head!2603 lt!468020) (c!230767 (regex!2473 (rule!4236 t1!34))))))))

(declare-fun d!401053 () Bool)

(assert (=> d!401053 e!896129))

(declare-fun c!230876 () Bool)

(assert (=> d!401053 (= c!230876 ((_ is EmptyExpr!3787) (regex!2473 (rule!4236 t1!34))))))

(assert (=> d!401053 (= lt!468183 e!896127)))

(declare-fun c!230877 () Bool)

(assert (=> d!401053 (= c!230877 (isEmpty!8684 lt!468020))))

(assert (=> d!401053 (validRegex!1659 (regex!2473 (rule!4236 t1!34)))))

(assert (=> d!401053 (= (matchR!1778 (regex!2473 (rule!4236 t1!34)) lt!468020) lt!468183)))

(declare-fun b!1403615 () Bool)

(declare-fun res!635097 () Bool)

(assert (=> b!1403615 (=> (not res!635097) (not e!896123))))

(assert (=> b!1403615 (= res!635097 (isEmpty!8684 (tail!2038 lt!468020)))))

(declare-fun b!1403624 () Bool)

(assert (=> b!1403624 (= e!896126 e!896125)))

(declare-fun res!635098 () Bool)

(assert (=> b!1403624 (=> (not res!635098) (not e!896125))))

(assert (=> b!1403624 (= res!635098 (not lt!468183))))

(declare-fun b!1403625 () Bool)

(declare-fun res!635104 () Bool)

(assert (=> b!1403625 (=> res!635104 e!896126)))

(assert (=> b!1403625 (= res!635104 (not ((_ is ElementMatch!3787) (regex!2473 (rule!4236 t1!34)))))))

(assert (=> b!1403625 (= e!896124 e!896126)))

(declare-fun b!1403626 () Bool)

(assert (=> b!1403626 (= e!896129 (= lt!468183 call!93620))))

(declare-fun b!1403627 () Bool)

(assert (=> b!1403627 (= e!896123 (= (head!2603 lt!468020) (c!230767 (regex!2473 (rule!4236 t1!34)))))))

(assert (= (and d!401053 c!230877) b!1403618))

(assert (= (and d!401053 (not c!230877)) b!1403616))

(assert (= (and d!401053 c!230876) b!1403626))

(assert (= (and d!401053 (not c!230876)) b!1403620))

(assert (= (and b!1403620 c!230875) b!1403619))

(assert (= (and b!1403620 (not c!230875)) b!1403625))

(assert (= (and b!1403625 (not res!635104)) b!1403614))

(assert (= (and b!1403614 res!635102) b!1403621))

(assert (= (and b!1403621 res!635101) b!1403615))

(assert (= (and b!1403615 res!635097) b!1403627))

(assert (= (and b!1403614 (not res!635100)) b!1403624))

(assert (= (and b!1403624 res!635098) b!1403622))

(assert (= (and b!1403622 (not res!635099)) b!1403617))

(assert (= (and b!1403617 (not res!635103)) b!1403623))

(assert (= (or b!1403626 b!1403621 b!1403622) bm!93615))

(declare-fun m!1580923 () Bool)

(assert (=> d!401053 m!1580923))

(assert (=> d!401053 m!1580735))

(assert (=> b!1403623 m!1580411))

(declare-fun m!1580927 () Bool)

(assert (=> b!1403618 m!1580927))

(assert (=> b!1403616 m!1580411))

(assert (=> b!1403616 m!1580411))

(declare-fun m!1580929 () Bool)

(assert (=> b!1403616 m!1580929))

(declare-fun m!1580931 () Bool)

(assert (=> b!1403616 m!1580931))

(assert (=> b!1403616 m!1580929))

(assert (=> b!1403616 m!1580931))

(declare-fun m!1580933 () Bool)

(assert (=> b!1403616 m!1580933))

(assert (=> b!1403627 m!1580411))

(assert (=> b!1403615 m!1580931))

(assert (=> b!1403615 m!1580931))

(declare-fun m!1580935 () Bool)

(assert (=> b!1403615 m!1580935))

(assert (=> b!1403617 m!1580931))

(assert (=> b!1403617 m!1580931))

(assert (=> b!1403617 m!1580935))

(assert (=> bm!93615 m!1580923))

(assert (=> b!1403110 d!401053))

(declare-fun d!401061 () Bool)

(assert (=> d!401061 (dynLambda!6602 lambda!61663 (rule!4236 t2!34))))

(declare-fun lt!468192 () Unit!20615)

(declare-fun choose!8663 (List!14340 Int Rule!4746) Unit!20615)

(assert (=> d!401061 (= lt!468192 (choose!8663 rules!2550 lambda!61663 (rule!4236 t2!34)))))

(declare-fun e!896135 () Bool)

(assert (=> d!401061 e!896135))

(declare-fun res!635108 () Bool)

(assert (=> d!401061 (=> (not res!635108) (not e!896135))))

(assert (=> d!401061 (= res!635108 (forall!3461 rules!2550 lambda!61663))))

(assert (=> d!401061 (= (forallContained!668 rules!2550 lambda!61663 (rule!4236 t2!34)) lt!468192)))

(declare-fun b!1403635 () Bool)

(assert (=> b!1403635 (= e!896135 (contains!2801 rules!2550 (rule!4236 t2!34)))))

(assert (= (and d!401061 res!635108) b!1403635))

(declare-fun b_lambda!44151 () Bool)

(assert (=> (not b_lambda!44151) (not d!401061)))

(declare-fun m!1580939 () Bool)

(assert (=> d!401061 m!1580939))

(declare-fun m!1580941 () Bool)

(assert (=> d!401061 m!1580941))

(declare-fun m!1580943 () Bool)

(assert (=> d!401061 m!1580943))

(assert (=> b!1403635 m!1580397))

(assert (=> b!1403110 d!401061))

(declare-fun d!401067 () Bool)

(assert (=> d!401067 (dynLambda!6602 lambda!61663 (rule!4236 t1!34))))

(declare-fun lt!468194 () Unit!20615)

(assert (=> d!401067 (= lt!468194 (choose!8663 rules!2550 lambda!61663 (rule!4236 t1!34)))))

(declare-fun e!896138 () Bool)

(assert (=> d!401067 e!896138))

(declare-fun res!635111 () Bool)

(assert (=> d!401067 (=> (not res!635111) (not e!896138))))

(assert (=> d!401067 (= res!635111 (forall!3461 rules!2550 lambda!61663))))

(assert (=> d!401067 (= (forallContained!668 rules!2550 lambda!61663 (rule!4236 t1!34)) lt!468194)))

(declare-fun b!1403638 () Bool)

(assert (=> b!1403638 (= e!896138 (contains!2801 rules!2550 (rule!4236 t1!34)))))

(assert (= (and d!401067 res!635111) b!1403638))

(declare-fun b_lambda!44153 () Bool)

(assert (=> (not b_lambda!44153) (not d!401067)))

(declare-fun m!1580951 () Bool)

(assert (=> d!401067 m!1580951))

(declare-fun m!1580953 () Bool)

(assert (=> d!401067 m!1580953))

(assert (=> d!401067 m!1580943))

(assert (=> b!1403638 m!1580343))

(assert (=> b!1403110 d!401067))

(declare-fun d!401071 () Bool)

(assert (=> d!401071 (dynLambda!6602 lambda!61663 lt!468008)))

(declare-fun lt!468196 () Unit!20615)

(assert (=> d!401071 (= lt!468196 (choose!8663 rules!2550 lambda!61663 lt!468008))))

(declare-fun e!896141 () Bool)

(assert (=> d!401071 e!896141))

(declare-fun res!635114 () Bool)

(assert (=> d!401071 (=> (not res!635114) (not e!896141))))

(assert (=> d!401071 (= res!635114 (forall!3461 rules!2550 lambda!61663))))

(assert (=> d!401071 (= (forallContained!668 rules!2550 lambda!61663 lt!468008) lt!468196)))

(declare-fun b!1403641 () Bool)

(assert (=> b!1403641 (= e!896141 (contains!2801 rules!2550 lt!468008))))

(assert (= (and d!401071 res!635114) b!1403641))

(declare-fun b_lambda!44155 () Bool)

(assert (=> (not b_lambda!44155) (not d!401071)))

(declare-fun m!1580961 () Bool)

(assert (=> d!401071 m!1580961))

(declare-fun m!1580963 () Bool)

(assert (=> d!401071 m!1580963))

(assert (=> d!401071 m!1580943))

(assert (=> b!1403641 m!1580333))

(assert (=> b!1403110 d!401071))

(declare-fun d!401075 () Bool)

(declare-fun prefixMatchZipperSequence!303 (Regex!3787 BalanceConc!9352) Bool)

(declare-fun ++!3713 (BalanceConc!9352 BalanceConc!9352) BalanceConc!9352)

(declare-fun singletonSeq!1137 (C!7864) BalanceConc!9352)

(assert (=> d!401075 (= (separableTokensPredicate!451 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!303 (rulesRegex!356 thiss!19762 rules!2550) (++!3713 (charsOf!1445 t1!34) (singletonSeq!1137 (apply!3641 (charsOf!1445 t2!34) 0))))))))

(declare-fun bs!338379 () Bool)

(assert (= bs!338379 d!401075))

(assert (=> bs!338379 m!1580423))

(assert (=> bs!338379 m!1580403))

(assert (=> bs!338379 m!1580423))

(declare-fun m!1581041 () Bool)

(assert (=> bs!338379 m!1581041))

(assert (=> bs!338379 m!1580407))

(assert (=> bs!338379 m!1580403))

(declare-fun m!1581043 () Bool)

(assert (=> bs!338379 m!1581043))

(declare-fun m!1581045 () Bool)

(assert (=> bs!338379 m!1581045))

(assert (=> bs!338379 m!1580407))

(assert (=> bs!338379 m!1581045))

(declare-fun m!1581047 () Bool)

(assert (=> bs!338379 m!1581047))

(assert (=> bs!338379 m!1581041))

(assert (=> bs!338379 m!1581043))

(assert (=> b!1403123 d!401075))

(declare-fun d!401093 () Bool)

(declare-fun list!5574 (Conc!4706) List!14339)

(assert (=> d!401093 (= (list!5570 lt!468002) (list!5574 (c!230766 lt!468002)))))

(declare-fun bs!338380 () Bool)

(assert (= bs!338380 d!401093))

(declare-fun m!1581049 () Bool)

(assert (=> bs!338380 m!1581049))

(assert (=> b!1403122 d!401093))

(declare-fun d!401095 () Bool)

(declare-fun c!230895 () Bool)

(assert (=> d!401095 (= c!230895 (isEmpty!8684 lt!468001))))

(declare-fun e!896170 () Bool)

(assert (=> d!401095 (= (prefixMatch!296 lt!468000 lt!468001) e!896170)))

(declare-fun b!1403694 () Bool)

(declare-fun lostCause!366 (Regex!3787) Bool)

(assert (=> b!1403694 (= e!896170 (not (lostCause!366 lt!468000)))))

(declare-fun b!1403695 () Bool)

(assert (=> b!1403695 (= e!896170 (prefixMatch!296 (derivativeStep!991 lt!468000 (head!2603 lt!468001)) (tail!2038 lt!468001)))))

(assert (= (and d!401095 c!230895) b!1403694))

(assert (= (and d!401095 (not c!230895)) b!1403695))

(declare-fun m!1581059 () Bool)

(assert (=> d!401095 m!1581059))

(declare-fun m!1581061 () Bool)

(assert (=> b!1403694 m!1581061))

(declare-fun m!1581063 () Bool)

(assert (=> b!1403695 m!1581063))

(assert (=> b!1403695 m!1581063))

(declare-fun m!1581065 () Bool)

(assert (=> b!1403695 m!1581065))

(declare-fun m!1581067 () Bool)

(assert (=> b!1403695 m!1581067))

(assert (=> b!1403695 m!1581065))

(assert (=> b!1403695 m!1581067))

(declare-fun m!1581069 () Bool)

(assert (=> b!1403695 m!1581069))

(assert (=> b!1403122 d!401095))

(declare-fun b!1403707 () Bool)

(declare-fun e!896178 () List!14339)

(assert (=> b!1403707 (= e!896178 (Cons!14273 lt!468014 Nil!14273))))

(declare-fun b!1403710 () Bool)

(declare-fun lt!468215 () List!14339)

(declare-fun e!896179 () Bool)

(assert (=> b!1403710 (= e!896179 (or (not (= (Cons!14273 lt!468014 Nil!14273) Nil!14273)) (= lt!468215 lt!468020)))))

(declare-fun b!1403709 () Bool)

(declare-fun res!635143 () Bool)

(assert (=> b!1403709 (=> (not res!635143) (not e!896179))))

(assert (=> b!1403709 (= res!635143 (= (size!11745 lt!468215) (+ (size!11745 lt!468020) (size!11745 (Cons!14273 lt!468014 Nil!14273)))))))

(declare-fun d!401099 () Bool)

(assert (=> d!401099 e!896179))

(declare-fun res!635144 () Bool)

(assert (=> d!401099 (=> (not res!635144) (not e!896179))))

(assert (=> d!401099 (= res!635144 (= (content!2120 lt!468215) ((_ map or) (content!2120 lt!468020) (content!2120 (Cons!14273 lt!468014 Nil!14273)))))))

(assert (=> d!401099 (= lt!468215 e!896178)))

(declare-fun c!230898 () Bool)

(assert (=> d!401099 (= c!230898 ((_ is Nil!14273) lt!468020))))

(assert (=> d!401099 (= (++!3712 lt!468020 (Cons!14273 lt!468014 Nil!14273)) lt!468215)))

(declare-fun b!1403708 () Bool)

(assert (=> b!1403708 (= e!896178 (Cons!14273 (h!19674 lt!468020) (++!3712 (t!122936 lt!468020) (Cons!14273 lt!468014 Nil!14273))))))

(assert (= (and d!401099 c!230898) b!1403707))

(assert (= (and d!401099 (not c!230898)) b!1403708))

(assert (= (and d!401099 res!635144) b!1403709))

(assert (= (and b!1403709 res!635143) b!1403710))

(declare-fun m!1581075 () Bool)

(assert (=> b!1403709 m!1581075))

(declare-fun m!1581077 () Bool)

(assert (=> b!1403709 m!1581077))

(declare-fun m!1581079 () Bool)

(assert (=> b!1403709 m!1581079))

(declare-fun m!1581081 () Bool)

(assert (=> d!401099 m!1581081))

(declare-fun m!1581083 () Bool)

(assert (=> d!401099 m!1581083))

(declare-fun m!1581085 () Bool)

(assert (=> d!401099 m!1581085))

(declare-fun m!1581087 () Bool)

(assert (=> b!1403708 m!1581087))

(assert (=> b!1403122 d!401099))

(declare-fun d!401103 () Bool)

(declare-fun lt!468218 () C!7864)

(assert (=> d!401103 (= lt!468218 (apply!3643 (list!5570 lt!468016) 0))))

(assert (=> d!401103 (= lt!468218 (apply!3644 (c!230766 lt!468016) 0))))

(declare-fun e!896180 () Bool)

(assert (=> d!401103 e!896180))

(declare-fun res!635145 () Bool)

(assert (=> d!401103 (=> (not res!635145) (not e!896180))))

(assert (=> d!401103 (= res!635145 (<= 0 0))))

(assert (=> d!401103 (= (apply!3641 lt!468016 0) lt!468218)))

(declare-fun b!1403711 () Bool)

(assert (=> b!1403711 (= e!896180 (< 0 (size!11742 lt!468016)))))

(assert (= (and d!401103 res!635145) b!1403711))

(assert (=> d!401103 m!1580381))

(assert (=> d!401103 m!1580381))

(declare-fun m!1581089 () Bool)

(assert (=> d!401103 m!1581089))

(declare-fun m!1581091 () Bool)

(assert (=> d!401103 m!1581091))

(assert (=> b!1403711 m!1580421))

(assert (=> b!1403122 d!401103))

(declare-fun d!401105 () Bool)

(declare-fun lt!468219 () BalanceConc!9352)

(assert (=> d!401105 (= (list!5570 lt!468219) (originalCharacters!3335 t1!34))))

(assert (=> d!401105 (= lt!468219 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (value!80113 t1!34)))))

(assert (=> d!401105 (= (charsOf!1445 t1!34) lt!468219)))

(declare-fun b_lambda!44159 () Bool)

(assert (=> (not b_lambda!44159) (not d!401105)))

(declare-fun tb!73125 () Bool)

(declare-fun t!122957 () Bool)

(assert (=> (and b!1403149 (= (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toChars!3623 (transformation!2473 (rule!4236 t1!34)))) t!122957) tb!73125))

(declare-fun b!1403712 () Bool)

(declare-fun e!896181 () Bool)

(declare-fun tp!399035 () Bool)

(assert (=> b!1403712 (= e!896181 (and (inv!18584 (c!230766 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (value!80113 t1!34)))) tp!399035))))

(declare-fun result!88910 () Bool)

(assert (=> tb!73125 (= result!88910 (and (inv!18585 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (value!80113 t1!34))) e!896181))))

(assert (= tb!73125 b!1403712))

(declare-fun m!1581097 () Bool)

(assert (=> b!1403712 m!1581097))

(declare-fun m!1581099 () Bool)

(assert (=> tb!73125 m!1581099))

(assert (=> d!401105 t!122957))

(declare-fun b_and!93971 () Bool)

(assert (= b_and!93959 (and (=> t!122957 result!88910) b_and!93971)))

(declare-fun tb!73127 () Bool)

(declare-fun t!122959 () Bool)

(assert (=> (and b!1403121 (= (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (toChars!3623 (transformation!2473 (rule!4236 t1!34)))) t!122959) tb!73127))

(declare-fun result!88912 () Bool)

(assert (= result!88912 result!88910))

(assert (=> d!401105 t!122959))

(declare-fun b_and!93973 () Bool)

(assert (= b_and!93961 (and (=> t!122959 result!88912) b_and!93973)))

(declare-fun t!122961 () Bool)

(declare-fun tb!73129 () Bool)

(assert (=> (and b!1403144 (= (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (toChars!3623 (transformation!2473 (rule!4236 t1!34)))) t!122961) tb!73129))

(declare-fun result!88914 () Bool)

(assert (= result!88914 result!88910))

(assert (=> d!401105 t!122961))

(declare-fun b_and!93975 () Bool)

(assert (= b_and!93963 (and (=> t!122961 result!88914) b_and!93975)))

(declare-fun m!1581103 () Bool)

(assert (=> d!401105 m!1581103))

(declare-fun m!1581105 () Bool)

(assert (=> d!401105 m!1581105))

(assert (=> b!1403122 d!401105))

(declare-fun bs!338383 () Bool)

(declare-fun d!401109 () Bool)

(assert (= bs!338383 (and d!401109 b!1403132)))

(declare-fun lambda!61698 () Int)

(assert (=> bs!338383 (= lambda!61698 lambda!61660)))

(declare-fun lt!468225 () Unit!20615)

(declare-fun lemma!160 (List!14340 LexerInterface!2168 List!14340) Unit!20615)

(assert (=> d!401109 (= lt!468225 (lemma!160 rules!2550 thiss!19762 rules!2550))))

(declare-fun generalisedUnion!168 (List!14341) Regex!3787)

(assert (=> d!401109 (= (rulesRegex!356 thiss!19762 rules!2550) (generalisedUnion!168 (map!3170 rules!2550 lambda!61698)))))

(declare-fun bs!338384 () Bool)

(assert (= bs!338384 d!401109))

(declare-fun m!1581107 () Bool)

(assert (=> bs!338384 m!1581107))

(declare-fun m!1581109 () Bool)

(assert (=> bs!338384 m!1581109))

(assert (=> bs!338384 m!1581109))

(declare-fun m!1581111 () Bool)

(assert (=> bs!338384 m!1581111))

(assert (=> b!1403122 d!401109))

(declare-fun b!1403721 () Bool)

(declare-fun res!635153 () Bool)

(declare-fun e!896189 () Bool)

(assert (=> b!1403721 (=> res!635153 e!896189)))

(declare-fun e!896186 () Bool)

(assert (=> b!1403721 (= res!635153 e!896186)))

(declare-fun res!635155 () Bool)

(assert (=> b!1403721 (=> (not res!635155) (not e!896186))))

(declare-fun lt!468226 () Bool)

(assert (=> b!1403721 (= res!635155 lt!468226)))

(declare-fun b!1403723 () Bool)

(declare-fun e!896190 () Bool)

(assert (=> b!1403723 (= e!896190 (matchR!1778 (derivativeStep!991 lt!468000 (head!2603 lt!468015)) (tail!2038 lt!468015)))))

(declare-fun b!1403724 () Bool)

(declare-fun res!635156 () Bool)

(declare-fun e!896191 () Bool)

(assert (=> b!1403724 (=> res!635156 e!896191)))

(assert (=> b!1403724 (= res!635156 (not (isEmpty!8684 (tail!2038 lt!468015))))))

(declare-fun b!1403725 () Bool)

(assert (=> b!1403725 (= e!896190 (nullable!1233 lt!468000))))

(declare-fun b!1403726 () Bool)

(declare-fun e!896187 () Bool)

(assert (=> b!1403726 (= e!896187 (not lt!468226))))

(declare-fun b!1403727 () Bool)

(declare-fun e!896192 () Bool)

(assert (=> b!1403727 (= e!896192 e!896187)))

(declare-fun c!230901 () Bool)

(assert (=> b!1403727 (= c!230901 ((_ is EmptyLang!3787) lt!468000))))

(declare-fun bm!93622 () Bool)

(declare-fun call!93627 () Bool)

(assert (=> bm!93622 (= call!93627 (isEmpty!8684 lt!468015))))

(declare-fun b!1403728 () Bool)

(declare-fun res!635154 () Bool)

(assert (=> b!1403728 (=> (not res!635154) (not e!896186))))

(assert (=> b!1403728 (= res!635154 (not call!93627))))

(declare-fun b!1403729 () Bool)

(declare-fun e!896188 () Bool)

(assert (=> b!1403729 (= e!896188 e!896191)))

(declare-fun res!635152 () Bool)

(assert (=> b!1403729 (=> res!635152 e!896191)))

(assert (=> b!1403729 (= res!635152 call!93627)))

(declare-fun b!1403730 () Bool)

(assert (=> b!1403730 (= e!896191 (not (= (head!2603 lt!468015) (c!230767 lt!468000))))))

(declare-fun d!401111 () Bool)

(assert (=> d!401111 e!896192))

(declare-fun c!230902 () Bool)

(assert (=> d!401111 (= c!230902 ((_ is EmptyExpr!3787) lt!468000))))

(assert (=> d!401111 (= lt!468226 e!896190)))

(declare-fun c!230903 () Bool)

(assert (=> d!401111 (= c!230903 (isEmpty!8684 lt!468015))))

(assert (=> d!401111 (validRegex!1659 lt!468000)))

(assert (=> d!401111 (= (matchR!1778 lt!468000 lt!468015) lt!468226)))

(declare-fun b!1403722 () Bool)

(declare-fun res!635150 () Bool)

(assert (=> b!1403722 (=> (not res!635150) (not e!896186))))

(assert (=> b!1403722 (= res!635150 (isEmpty!8684 (tail!2038 lt!468015)))))

(declare-fun b!1403731 () Bool)

(assert (=> b!1403731 (= e!896189 e!896188)))

(declare-fun res!635151 () Bool)

(assert (=> b!1403731 (=> (not res!635151) (not e!896188))))

(assert (=> b!1403731 (= res!635151 (not lt!468226))))

(declare-fun b!1403732 () Bool)

(declare-fun res!635157 () Bool)

(assert (=> b!1403732 (=> res!635157 e!896189)))

(assert (=> b!1403732 (= res!635157 (not ((_ is ElementMatch!3787) lt!468000)))))

(assert (=> b!1403732 (= e!896187 e!896189)))

(declare-fun b!1403733 () Bool)

(assert (=> b!1403733 (= e!896192 (= lt!468226 call!93627))))

(declare-fun b!1403734 () Bool)

(assert (=> b!1403734 (= e!896186 (= (head!2603 lt!468015) (c!230767 lt!468000)))))

(assert (= (and d!401111 c!230903) b!1403725))

(assert (= (and d!401111 (not c!230903)) b!1403723))

(assert (= (and d!401111 c!230902) b!1403733))

(assert (= (and d!401111 (not c!230902)) b!1403727))

(assert (= (and b!1403727 c!230901) b!1403726))

(assert (= (and b!1403727 (not c!230901)) b!1403732))

(assert (= (and b!1403732 (not res!635157)) b!1403721))

(assert (= (and b!1403721 res!635155) b!1403728))

(assert (= (and b!1403728 res!635154) b!1403722))

(assert (= (and b!1403722 res!635150) b!1403734))

(assert (= (and b!1403721 (not res!635153)) b!1403731))

(assert (= (and b!1403731 res!635151) b!1403729))

(assert (= (and b!1403729 (not res!635152)) b!1403724))

(assert (= (and b!1403724 (not res!635156)) b!1403730))

(assert (= (or b!1403733 b!1403728 b!1403729) bm!93622))

(declare-fun m!1581119 () Bool)

(assert (=> d!401111 m!1581119))

(declare-fun m!1581123 () Bool)

(assert (=> d!401111 m!1581123))

(declare-fun m!1581127 () Bool)

(assert (=> b!1403730 m!1581127))

(declare-fun m!1581129 () Bool)

(assert (=> b!1403725 m!1581129))

(assert (=> b!1403723 m!1581127))

(assert (=> b!1403723 m!1581127))

(declare-fun m!1581133 () Bool)

(assert (=> b!1403723 m!1581133))

(declare-fun m!1581135 () Bool)

(assert (=> b!1403723 m!1581135))

(assert (=> b!1403723 m!1581133))

(assert (=> b!1403723 m!1581135))

(declare-fun m!1581137 () Bool)

(assert (=> b!1403723 m!1581137))

(assert (=> b!1403734 m!1581127))

(assert (=> b!1403722 m!1581135))

(assert (=> b!1403722 m!1581135))

(declare-fun m!1581139 () Bool)

(assert (=> b!1403722 m!1581139))

(assert (=> b!1403724 m!1581135))

(assert (=> b!1403724 m!1581135))

(assert (=> b!1403724 m!1581139))

(assert (=> bm!93622 m!1581119))

(assert (=> b!1403103 d!401111))

(declare-fun b!1403742 () Bool)

(declare-fun e!896197 () List!14339)

(assert (=> b!1403742 (= e!896197 (getSuffix!633 lt!468015 lt!468001))))

(declare-fun lt!468230 () List!14339)

(declare-fun e!896198 () Bool)

(declare-fun b!1403745 () Bool)

(assert (=> b!1403745 (= e!896198 (or (not (= (getSuffix!633 lt!468015 lt!468001) Nil!14273)) (= lt!468230 lt!468001)))))

(declare-fun b!1403744 () Bool)

(declare-fun res!635163 () Bool)

(assert (=> b!1403744 (=> (not res!635163) (not e!896198))))

(assert (=> b!1403744 (= res!635163 (= (size!11745 lt!468230) (+ (size!11745 lt!468001) (size!11745 (getSuffix!633 lt!468015 lt!468001)))))))

(declare-fun d!401115 () Bool)

(assert (=> d!401115 e!896198))

(declare-fun res!635164 () Bool)

(assert (=> d!401115 (=> (not res!635164) (not e!896198))))

(assert (=> d!401115 (= res!635164 (= (content!2120 lt!468230) ((_ map or) (content!2120 lt!468001) (content!2120 (getSuffix!633 lt!468015 lt!468001)))))))

(assert (=> d!401115 (= lt!468230 e!896197)))

(declare-fun c!230905 () Bool)

(assert (=> d!401115 (= c!230905 ((_ is Nil!14273) lt!468001))))

(assert (=> d!401115 (= (++!3712 lt!468001 (getSuffix!633 lt!468015 lt!468001)) lt!468230)))

(declare-fun b!1403743 () Bool)

(assert (=> b!1403743 (= e!896197 (Cons!14273 (h!19674 lt!468001) (++!3712 (t!122936 lt!468001) (getSuffix!633 lt!468015 lt!468001))))))

(assert (= (and d!401115 c!230905) b!1403742))

(assert (= (and d!401115 (not c!230905)) b!1403743))

(assert (= (and d!401115 res!635164) b!1403744))

(assert (= (and b!1403744 res!635163) b!1403745))

(declare-fun m!1581141 () Bool)

(assert (=> b!1403744 m!1581141))

(declare-fun m!1581143 () Bool)

(assert (=> b!1403744 m!1581143))

(assert (=> b!1403744 m!1580429))

(declare-fun m!1581145 () Bool)

(assert (=> b!1403744 m!1581145))

(declare-fun m!1581147 () Bool)

(assert (=> d!401115 m!1581147))

(assert (=> d!401115 m!1580595))

(assert (=> d!401115 m!1580429))

(declare-fun m!1581151 () Bool)

(assert (=> d!401115 m!1581151))

(assert (=> b!1403743 m!1580429))

(declare-fun m!1581153 () Bool)

(assert (=> b!1403743 m!1581153))

(assert (=> b!1403124 d!401115))

(declare-fun d!401117 () Bool)

(declare-fun lt!468233 () List!14339)

(assert (=> d!401117 (= (++!3712 lt!468001 lt!468233) lt!468015)))

(declare-fun e!896207 () List!14339)

(assert (=> d!401117 (= lt!468233 e!896207)))

(declare-fun c!230912 () Bool)

(assert (=> d!401117 (= c!230912 ((_ is Cons!14273) lt!468001))))

(assert (=> d!401117 (>= (size!11745 lt!468015) (size!11745 lt!468001))))

(assert (=> d!401117 (= (getSuffix!633 lt!468015 lt!468001) lt!468233)))

(declare-fun b!1403760 () Bool)

(assert (=> b!1403760 (= e!896207 (getSuffix!633 (tail!2038 lt!468015) (t!122936 lt!468001)))))

(declare-fun b!1403761 () Bool)

(assert (=> b!1403761 (= e!896207 lt!468015)))

(assert (= (and d!401117 c!230912) b!1403760))

(assert (= (and d!401117 (not c!230912)) b!1403761))

(declare-fun m!1581165 () Bool)

(assert (=> d!401117 m!1581165))

(declare-fun m!1581167 () Bool)

(assert (=> d!401117 m!1581167))

(assert (=> d!401117 m!1581143))

(assert (=> b!1403760 m!1581135))

(assert (=> b!1403760 m!1581135))

(declare-fun m!1581169 () Bool)

(assert (=> b!1403760 m!1581169))

(assert (=> b!1403124 d!401117))

(declare-fun d!401121 () Bool)

(declare-fun lt!468237 () List!14339)

(declare-fun dynLambda!6612 (Int List!14339) Bool)

(assert (=> d!401121 (dynLambda!6612 lambda!61659 lt!468237)))

(declare-fun choose!8666 (Int) List!14339)

(assert (=> d!401121 (= lt!468237 (choose!8666 lambda!61659))))

(assert (=> d!401121 (Exists!937 lambda!61659)))

(assert (=> d!401121 (= (pickWitness!240 lambda!61659) lt!468237)))

(declare-fun b_lambda!44161 () Bool)

(assert (=> (not b_lambda!44161) (not d!401121)))

(declare-fun bs!338385 () Bool)

(assert (= bs!338385 d!401121))

(declare-fun m!1581183 () Bool)

(assert (=> bs!338385 m!1581183))

(declare-fun m!1581185 () Bool)

(assert (=> bs!338385 m!1581185))

(assert (=> bs!338385 m!1580325))

(assert (=> b!1403124 d!401121))

(declare-fun d!401127 () Bool)

(declare-fun choose!8667 (Int) Bool)

(assert (=> d!401127 (= (Exists!937 lambda!61659) (choose!8667 lambda!61659))))

(declare-fun bs!338386 () Bool)

(assert (= bs!338386 d!401127))

(declare-fun m!1581191 () Bool)

(assert (=> bs!338386 m!1581191))

(assert (=> b!1403145 d!401127))

(declare-fun bs!338388 () Bool)

(declare-fun d!401133 () Bool)

(assert (= bs!338388 (and d!401133 b!1403145)))

(declare-fun lambda!61701 () Int)

(assert (=> bs!338388 (= lambda!61701 lambda!61659)))

(assert (=> d!401133 true))

(assert (=> d!401133 true))

(assert (=> d!401133 (Exists!937 lambda!61701)))

(declare-fun lt!468241 () Unit!20615)

(declare-fun choose!8668 (Regex!3787 List!14339) Unit!20615)

(assert (=> d!401133 (= lt!468241 (choose!8668 lt!468000 lt!468001))))

(assert (=> d!401133 (validRegex!1659 lt!468000)))

(assert (=> d!401133 (= (lemmaPrefixMatchThenExistsStringThatMatches!255 lt!468000 lt!468001) lt!468241)))

(declare-fun bs!338389 () Bool)

(assert (= bs!338389 d!401133))

(declare-fun m!1581221 () Bool)

(assert (=> bs!338389 m!1581221))

(declare-fun m!1581223 () Bool)

(assert (=> bs!338389 m!1581223))

(assert (=> bs!338389 m!1581123))

(assert (=> b!1403145 d!401133))

(declare-fun d!401143 () Bool)

(declare-fun lt!468245 () Bool)

(declare-fun content!2123 (List!14340) (InoxSet Rule!4746))

(assert (=> d!401143 (= lt!468245 (select (content!2123 rules!2550) (rule!4236 t1!34)))))

(declare-fun e!896232 () Bool)

(assert (=> d!401143 (= lt!468245 e!896232)))

(declare-fun res!635193 () Bool)

(assert (=> d!401143 (=> (not res!635193) (not e!896232))))

(assert (=> d!401143 (= res!635193 ((_ is Cons!14274) rules!2550))))

(assert (=> d!401143 (= (contains!2801 rules!2550 (rule!4236 t1!34)) lt!468245)))

(declare-fun b!1403799 () Bool)

(declare-fun e!896233 () Bool)

(assert (=> b!1403799 (= e!896232 e!896233)))

(declare-fun res!635194 () Bool)

(assert (=> b!1403799 (=> res!635194 e!896233)))

(assert (=> b!1403799 (= res!635194 (= (h!19675 rules!2550) (rule!4236 t1!34)))))

(declare-fun b!1403800 () Bool)

(assert (=> b!1403800 (= e!896233 (contains!2801 (t!122937 rules!2550) (rule!4236 t1!34)))))

(assert (= (and d!401143 res!635193) b!1403799))

(assert (= (and b!1403799 (not res!635194)) b!1403800))

(declare-fun m!1581225 () Bool)

(assert (=> d!401143 m!1581225))

(declare-fun m!1581227 () Bool)

(assert (=> d!401143 m!1581227))

(declare-fun m!1581229 () Bool)

(assert (=> b!1403800 m!1581229))

(assert (=> b!1403102 d!401143))

(declare-fun b!1403801 () Bool)

(declare-fun res!635198 () Bool)

(declare-fun e!896237 () Bool)

(assert (=> b!1403801 (=> res!635198 e!896237)))

(declare-fun e!896234 () Bool)

(assert (=> b!1403801 (= res!635198 e!896234)))

(declare-fun res!635200 () Bool)

(assert (=> b!1403801 (=> (not res!635200) (not e!896234))))

(declare-fun lt!468246 () Bool)

(assert (=> b!1403801 (= res!635200 lt!468246)))

(declare-fun b!1403803 () Bool)

(declare-fun e!896238 () Bool)

(assert (=> b!1403803 (= e!896238 (matchR!1778 (derivativeStep!991 lt!468019 (head!2603 lt!468015)) (tail!2038 lt!468015)))))

(declare-fun b!1403804 () Bool)

(declare-fun res!635201 () Bool)

(declare-fun e!896239 () Bool)

(assert (=> b!1403804 (=> res!635201 e!896239)))

(assert (=> b!1403804 (= res!635201 (not (isEmpty!8684 (tail!2038 lt!468015))))))

(declare-fun b!1403805 () Bool)

(assert (=> b!1403805 (= e!896238 (nullable!1233 lt!468019))))

(declare-fun b!1403806 () Bool)

(declare-fun e!896235 () Bool)

(assert (=> b!1403806 (= e!896235 (not lt!468246))))

(declare-fun b!1403807 () Bool)

(declare-fun e!896240 () Bool)

(assert (=> b!1403807 (= e!896240 e!896235)))

(declare-fun c!230918 () Bool)

(assert (=> b!1403807 (= c!230918 ((_ is EmptyLang!3787) lt!468019))))

(declare-fun bm!93624 () Bool)

(declare-fun call!93629 () Bool)

(assert (=> bm!93624 (= call!93629 (isEmpty!8684 lt!468015))))

(declare-fun b!1403808 () Bool)

(declare-fun res!635199 () Bool)

(assert (=> b!1403808 (=> (not res!635199) (not e!896234))))

(assert (=> b!1403808 (= res!635199 (not call!93629))))

(declare-fun b!1403809 () Bool)

(declare-fun e!896236 () Bool)

(assert (=> b!1403809 (= e!896236 e!896239)))

(declare-fun res!635197 () Bool)

(assert (=> b!1403809 (=> res!635197 e!896239)))

(assert (=> b!1403809 (= res!635197 call!93629)))

(declare-fun b!1403810 () Bool)

(assert (=> b!1403810 (= e!896239 (not (= (head!2603 lt!468015) (c!230767 lt!468019))))))

(declare-fun d!401145 () Bool)

(assert (=> d!401145 e!896240))

(declare-fun c!230919 () Bool)

(assert (=> d!401145 (= c!230919 ((_ is EmptyExpr!3787) lt!468019))))

(assert (=> d!401145 (= lt!468246 e!896238)))

(declare-fun c!230920 () Bool)

(assert (=> d!401145 (= c!230920 (isEmpty!8684 lt!468015))))

(assert (=> d!401145 (validRegex!1659 lt!468019)))

(assert (=> d!401145 (= (matchR!1778 lt!468019 lt!468015) lt!468246)))

(declare-fun b!1403802 () Bool)

(declare-fun res!635195 () Bool)

(assert (=> b!1403802 (=> (not res!635195) (not e!896234))))

(assert (=> b!1403802 (= res!635195 (isEmpty!8684 (tail!2038 lt!468015)))))

(declare-fun b!1403811 () Bool)

(assert (=> b!1403811 (= e!896237 e!896236)))

(declare-fun res!635196 () Bool)

(assert (=> b!1403811 (=> (not res!635196) (not e!896236))))

(assert (=> b!1403811 (= res!635196 (not lt!468246))))

(declare-fun b!1403812 () Bool)

(declare-fun res!635202 () Bool)

(assert (=> b!1403812 (=> res!635202 e!896237)))

(assert (=> b!1403812 (= res!635202 (not ((_ is ElementMatch!3787) lt!468019)))))

(assert (=> b!1403812 (= e!896235 e!896237)))

(declare-fun b!1403813 () Bool)

(assert (=> b!1403813 (= e!896240 (= lt!468246 call!93629))))

(declare-fun b!1403814 () Bool)

(assert (=> b!1403814 (= e!896234 (= (head!2603 lt!468015) (c!230767 lt!468019)))))

(assert (= (and d!401145 c!230920) b!1403805))

(assert (= (and d!401145 (not c!230920)) b!1403803))

(assert (= (and d!401145 c!230919) b!1403813))

(assert (= (and d!401145 (not c!230919)) b!1403807))

(assert (= (and b!1403807 c!230918) b!1403806))

(assert (= (and b!1403807 (not c!230918)) b!1403812))

(assert (= (and b!1403812 (not res!635202)) b!1403801))

(assert (= (and b!1403801 res!635200) b!1403808))

(assert (= (and b!1403808 res!635199) b!1403802))

(assert (= (and b!1403802 res!635195) b!1403814))

(assert (= (and b!1403801 (not res!635198)) b!1403811))

(assert (= (and b!1403811 res!635196) b!1403809))

(assert (= (and b!1403809 (not res!635197)) b!1403804))

(assert (= (and b!1403804 (not res!635201)) b!1403810))

(assert (= (or b!1403813 b!1403808 b!1403809) bm!93624))

(assert (=> d!401145 m!1581119))

(declare-fun m!1581231 () Bool)

(assert (=> d!401145 m!1581231))

(assert (=> b!1403810 m!1581127))

(declare-fun m!1581233 () Bool)

(assert (=> b!1403805 m!1581233))

(assert (=> b!1403803 m!1581127))

(assert (=> b!1403803 m!1581127))

(declare-fun m!1581235 () Bool)

(assert (=> b!1403803 m!1581235))

(assert (=> b!1403803 m!1581135))

(assert (=> b!1403803 m!1581235))

(assert (=> b!1403803 m!1581135))

(declare-fun m!1581237 () Bool)

(assert (=> b!1403803 m!1581237))

(assert (=> b!1403814 m!1581127))

(assert (=> b!1403802 m!1581135))

(assert (=> b!1403802 m!1581135))

(assert (=> b!1403802 m!1581139))

(assert (=> b!1403804 m!1581135))

(assert (=> b!1403804 m!1581135))

(assert (=> b!1403804 m!1581139))

(assert (=> bm!93624 m!1581119))

(assert (=> b!1403147 d!401145))

(declare-fun d!401147 () Bool)

(declare-fun lt!468247 () Bool)

(assert (=> d!401147 (= lt!468247 (select (content!2120 (usedCharacters!284 (regex!2473 lt!468008))) lt!468005))))

(declare-fun e!896241 () Bool)

(assert (=> d!401147 (= lt!468247 e!896241)))

(declare-fun res!635203 () Bool)

(assert (=> d!401147 (=> (not res!635203) (not e!896241))))

(assert (=> d!401147 (= res!635203 ((_ is Cons!14273) (usedCharacters!284 (regex!2473 lt!468008))))))

(assert (=> d!401147 (= (contains!2802 (usedCharacters!284 (regex!2473 lt!468008)) lt!468005) lt!468247)))

(declare-fun b!1403815 () Bool)

(declare-fun e!896242 () Bool)

(assert (=> b!1403815 (= e!896241 e!896242)))

(declare-fun res!635204 () Bool)

(assert (=> b!1403815 (=> res!635204 e!896242)))

(assert (=> b!1403815 (= res!635204 (= (h!19674 (usedCharacters!284 (regex!2473 lt!468008))) lt!468005))))

(declare-fun b!1403816 () Bool)

(assert (=> b!1403816 (= e!896242 (contains!2802 (t!122936 (usedCharacters!284 (regex!2473 lt!468008))) lt!468005))))

(assert (= (and d!401147 res!635203) b!1403815))

(assert (= (and b!1403815 (not res!635204)) b!1403816))

(assert (=> d!401147 m!1580317))

(declare-fun m!1581239 () Bool)

(assert (=> d!401147 m!1581239))

(declare-fun m!1581241 () Bool)

(assert (=> d!401147 m!1581241))

(declare-fun m!1581243 () Bool)

(assert (=> b!1403816 m!1581243))

(assert (=> b!1403147 d!401147))

(declare-fun d!401149 () Bool)

(assert (=> d!401149 (not (matchR!1778 lt!468019 lt!468015))))

(declare-fun lt!468248 () Unit!20615)

(assert (=> d!401149 (= lt!468248 (choose!8657 lt!468019 lt!468015 lt!468005))))

(assert (=> d!401149 (validRegex!1659 lt!468019)))

(assert (=> d!401149 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!218 lt!468019 lt!468015 lt!468005) lt!468248)))

(declare-fun bs!338390 () Bool)

(assert (= bs!338390 d!401149))

(assert (=> bs!338390 m!1580315))

(declare-fun m!1581245 () Bool)

(assert (=> bs!338390 m!1581245))

(assert (=> bs!338390 m!1581231))

(assert (=> b!1403147 d!401149))

(declare-fun b!1403817 () Bool)

(declare-fun c!230924 () Bool)

(assert (=> b!1403817 (= c!230924 ((_ is Star!3787) (regex!2473 lt!468008)))))

(declare-fun e!896244 () List!14339)

(declare-fun e!896243 () List!14339)

(assert (=> b!1403817 (= e!896244 e!896243)))

(declare-fun bm!93625 () Bool)

(declare-fun call!93630 () List!14339)

(declare-fun c!230923 () Bool)

(assert (=> bm!93625 (= call!93630 (usedCharacters!284 (ite c!230923 (regTwo!8087 (regex!2473 lt!468008)) (regOne!8086 (regex!2473 lt!468008)))))))

(declare-fun call!93633 () List!14339)

(declare-fun bm!93626 () Bool)

(declare-fun call!93632 () List!14339)

(assert (=> bm!93626 (= call!93633 (++!3712 (ite c!230923 call!93632 call!93630) (ite c!230923 call!93630 call!93632)))))

(declare-fun b!1403818 () Bool)

(declare-fun e!896245 () List!14339)

(assert (=> b!1403818 (= e!896245 call!93633)))

(declare-fun b!1403819 () Bool)

(declare-fun e!896246 () List!14339)

(assert (=> b!1403819 (= e!896246 Nil!14273)))

(declare-fun b!1403821 () Bool)

(assert (=> b!1403821 (= e!896244 (Cons!14273 (c!230767 (regex!2473 lt!468008)) Nil!14273))))

(declare-fun b!1403822 () Bool)

(assert (=> b!1403822 (= e!896245 call!93633)))

(declare-fun bm!93627 () Bool)

(declare-fun call!93631 () List!14339)

(assert (=> bm!93627 (= call!93632 call!93631)))

(declare-fun bm!93628 () Bool)

(assert (=> bm!93628 (= call!93631 (usedCharacters!284 (ite c!230924 (reg!4116 (regex!2473 lt!468008)) (ite c!230923 (regOne!8087 (regex!2473 lt!468008)) (regTwo!8086 (regex!2473 lt!468008))))))))

(declare-fun b!1403823 () Bool)

(assert (=> b!1403823 (= e!896243 e!896245)))

(assert (=> b!1403823 (= c!230923 ((_ is Union!3787) (regex!2473 lt!468008)))))

(declare-fun b!1403824 () Bool)

(assert (=> b!1403824 (= e!896246 e!896244)))

(declare-fun c!230921 () Bool)

(assert (=> b!1403824 (= c!230921 ((_ is ElementMatch!3787) (regex!2473 lt!468008)))))

(declare-fun b!1403820 () Bool)

(assert (=> b!1403820 (= e!896243 call!93631)))

(declare-fun d!401151 () Bool)

(declare-fun c!230922 () Bool)

(assert (=> d!401151 (= c!230922 (or ((_ is EmptyExpr!3787) (regex!2473 lt!468008)) ((_ is EmptyLang!3787) (regex!2473 lt!468008))))))

(assert (=> d!401151 (= (usedCharacters!284 (regex!2473 lt!468008)) e!896246)))

(assert (= (and d!401151 c!230922) b!1403819))

(assert (= (and d!401151 (not c!230922)) b!1403824))

(assert (= (and b!1403824 c!230921) b!1403821))

(assert (= (and b!1403824 (not c!230921)) b!1403817))

(assert (= (and b!1403817 c!230924) b!1403820))

(assert (= (and b!1403817 (not c!230924)) b!1403823))

(assert (= (and b!1403823 c!230923) b!1403822))

(assert (= (and b!1403823 (not c!230923)) b!1403818))

(assert (= (or b!1403822 b!1403818) bm!93627))

(assert (= (or b!1403822 b!1403818) bm!93625))

(assert (= (or b!1403822 b!1403818) bm!93626))

(assert (= (or b!1403820 bm!93627) bm!93628))

(declare-fun m!1581247 () Bool)

(assert (=> bm!93625 m!1581247))

(declare-fun m!1581249 () Bool)

(assert (=> bm!93626 m!1581249))

(declare-fun m!1581251 () Bool)

(assert (=> bm!93628 m!1581251))

(assert (=> b!1403147 d!401151))

(declare-fun d!401153 () Bool)

(assert (=> d!401153 (not (contains!2802 (usedCharacters!284 (regex!2473 lt!468008)) lt!468005))))

(declare-fun lt!468251 () Unit!20615)

(declare-fun choose!8669 (LexerInterface!2168 List!14340 List!14340 Rule!4746 Rule!4746 C!7864) Unit!20615)

(assert (=> d!401153 (= lt!468251 (choose!8669 thiss!19762 rules!2550 rules!2550 lt!468008 (rule!4236 t1!34) lt!468005))))

(assert (=> d!401153 (rulesInvariant!2038 thiss!19762 rules!2550)))

(assert (=> d!401153 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!22 thiss!19762 rules!2550 rules!2550 lt!468008 (rule!4236 t1!34) lt!468005) lt!468251)))

(declare-fun bs!338391 () Bool)

(assert (= bs!338391 d!401153))

(assert (=> bs!338391 m!1580317))

(assert (=> bs!338391 m!1580317))

(assert (=> bs!338391 m!1580319))

(declare-fun m!1581253 () Bool)

(assert (=> bs!338391 m!1581253))

(assert (=> bs!338391 m!1580339))

(assert (=> b!1403147 d!401153))

(declare-fun d!401155 () Bool)

(declare-fun lt!468252 () Bool)

(assert (=> d!401155 (= lt!468252 (select (content!2120 lt!468015) lt!468005))))

(declare-fun e!896247 () Bool)

(assert (=> d!401155 (= lt!468252 e!896247)))

(declare-fun res!635205 () Bool)

(assert (=> d!401155 (=> (not res!635205) (not e!896247))))

(assert (=> d!401155 (= res!635205 ((_ is Cons!14273) lt!468015))))

(assert (=> d!401155 (= (contains!2802 lt!468015 lt!468005) lt!468252)))

(declare-fun b!1403825 () Bool)

(declare-fun e!896248 () Bool)

(assert (=> b!1403825 (= e!896247 e!896248)))

(declare-fun res!635206 () Bool)

(assert (=> b!1403825 (=> res!635206 e!896248)))

(assert (=> b!1403825 (= res!635206 (= (h!19674 lt!468015) lt!468005))))

(declare-fun b!1403826 () Bool)

(assert (=> b!1403826 (= e!896248 (contains!2802 (t!122936 lt!468015) lt!468005))))

(assert (= (and d!401155 res!635205) b!1403825))

(assert (= (and b!1403825 (not res!635206)) b!1403826))

(declare-fun m!1581255 () Bool)

(assert (=> d!401155 m!1581255))

(declare-fun m!1581257 () Bool)

(assert (=> d!401155 m!1581257))

(declare-fun m!1581259 () Bool)

(assert (=> b!1403826 m!1581259))

(assert (=> b!1403104 d!401155))

(declare-fun d!401157 () Bool)

(declare-fun lt!468253 () Bool)

(assert (=> d!401157 (= lt!468253 (isEmpty!8684 (list!5570 (_2!7836 lt!468017))))))

(assert (=> d!401157 (= lt!468253 (isEmpty!8685 (c!230766 (_2!7836 lt!468017))))))

(assert (=> d!401157 (= (isEmpty!8680 (_2!7836 lt!468017)) lt!468253)))

(declare-fun bs!338392 () Bool)

(assert (= bs!338392 d!401157))

(declare-fun m!1581261 () Bool)

(assert (=> bs!338392 m!1581261))

(assert (=> bs!338392 m!1581261))

(declare-fun m!1581263 () Bool)

(assert (=> bs!338392 m!1581263))

(declare-fun m!1581265 () Bool)

(assert (=> bs!338392 m!1581265))

(assert (=> b!1403125 d!401157))

(declare-fun b!1403859 () Bool)

(declare-fun e!896269 () Bool)

(declare-fun e!896270 () Bool)

(assert (=> b!1403859 (= e!896269 e!896270)))

(declare-fun res!635217 () Bool)

(declare-fun lt!468272 () tuple2!13902)

(assert (=> b!1403859 (= res!635217 (< (size!11745 (_2!7837 lt!468272)) (size!11745 (list!5570 lt!468026))))))

(assert (=> b!1403859 (=> (not res!635217) (not e!896270))))

(declare-fun d!401159 () Bool)

(assert (=> d!401159 e!896269))

(declare-fun c!230937 () Bool)

(declare-fun size!11753 (List!14342) Int)

(assert (=> d!401159 (= c!230937 (> (size!11753 (_1!7837 lt!468272)) 0))))

(declare-fun e!896268 () tuple2!13902)

(assert (=> d!401159 (= lt!468272 e!896268)))

(declare-fun c!230936 () Bool)

(declare-fun lt!468271 () Option!2736)

(assert (=> d!401159 (= c!230936 ((_ is Some!2735) lt!468271))))

(assert (=> d!401159 (= lt!468271 (maxPrefix!1142 thiss!19762 rules!2550 (list!5570 lt!468026)))))

(assert (=> d!401159 (= (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468026)) lt!468272)))

(declare-fun b!1403860 () Bool)

(assert (=> b!1403860 (= e!896268 (tuple2!13903 Nil!14276 (list!5570 lt!468026)))))

(declare-fun b!1403861 () Bool)

(assert (=> b!1403861 (= e!896269 (= (_2!7837 lt!468272) (list!5570 lt!468026)))))

(declare-fun b!1403862 () Bool)

(declare-fun lt!468273 () tuple2!13902)

(assert (=> b!1403862 (= e!896268 (tuple2!13903 (Cons!14276 (_1!7835 (v!21679 lt!468271)) (_1!7837 lt!468273)) (_2!7837 lt!468273)))))

(assert (=> b!1403862 (= lt!468273 (lexList!682 thiss!19762 rules!2550 (_2!7835 (v!21679 lt!468271))))))

(declare-fun b!1403863 () Bool)

(declare-fun isEmpty!8690 (List!14342) Bool)

(assert (=> b!1403863 (= e!896270 (not (isEmpty!8690 (_1!7837 lt!468272))))))

(assert (= (and d!401159 c!230936) b!1403862))

(assert (= (and d!401159 (not c!230936)) b!1403860))

(assert (= (and d!401159 c!230937) b!1403859))

(assert (= (and d!401159 (not c!230937)) b!1403861))

(assert (= (and b!1403859 res!635217) b!1403863))

(declare-fun m!1581321 () Bool)

(assert (=> b!1403859 m!1581321))

(assert (=> b!1403859 m!1580359))

(declare-fun m!1581323 () Bool)

(assert (=> b!1403859 m!1581323))

(declare-fun m!1581325 () Bool)

(assert (=> d!401159 m!1581325))

(assert (=> d!401159 m!1580359))

(declare-fun m!1581327 () Bool)

(assert (=> d!401159 m!1581327))

(declare-fun m!1581329 () Bool)

(assert (=> b!1403862 m!1581329))

(declare-fun m!1581331 () Bool)

(assert (=> b!1403863 m!1581331))

(assert (=> b!1403146 d!401159))

(declare-fun d!401185 () Bool)

(assert (=> d!401185 (= (list!5570 lt!468026) (list!5574 (c!230766 lt!468026)))))

(declare-fun bs!338399 () Bool)

(assert (= bs!338399 d!401185))

(declare-fun m!1581333 () Bool)

(assert (=> bs!338399 m!1581333))

(assert (=> b!1403146 d!401185))

(declare-fun d!401187 () Bool)

(declare-fun c!230939 () Bool)

(assert (=> d!401187 (= c!230939 ((_ is IntegerValue!7689) (value!80113 t2!34)))))

(declare-fun e!896272 () Bool)

(assert (=> d!401187 (= (inv!21 (value!80113 t2!34)) e!896272)))

(declare-fun b!1403864 () Bool)

(declare-fun e!896271 () Bool)

(assert (=> b!1403864 (= e!896271 (inv!15 (value!80113 t2!34)))))

(declare-fun b!1403865 () Bool)

(declare-fun e!896273 () Bool)

(assert (=> b!1403865 (= e!896272 e!896273)))

(declare-fun c!230938 () Bool)

(assert (=> b!1403865 (= c!230938 ((_ is IntegerValue!7690) (value!80113 t2!34)))))

(declare-fun b!1403866 () Bool)

(assert (=> b!1403866 (= e!896272 (inv!16 (value!80113 t2!34)))))

(declare-fun b!1403867 () Bool)

(assert (=> b!1403867 (= e!896273 (inv!17 (value!80113 t2!34)))))

(declare-fun b!1403868 () Bool)

(declare-fun res!635218 () Bool)

(assert (=> b!1403868 (=> res!635218 e!896271)))

(assert (=> b!1403868 (= res!635218 (not ((_ is IntegerValue!7691) (value!80113 t2!34))))))

(assert (=> b!1403868 (= e!896273 e!896271)))

(assert (= (and d!401187 c!230939) b!1403866))

(assert (= (and d!401187 (not c!230939)) b!1403865))

(assert (= (and b!1403865 c!230938) b!1403867))

(assert (= (and b!1403865 (not c!230938)) b!1403868))

(assert (= (and b!1403868 (not res!635218)) b!1403864))

(declare-fun m!1581335 () Bool)

(assert (=> b!1403864 m!1581335))

(declare-fun m!1581337 () Bool)

(assert (=> b!1403866 m!1581337))

(declare-fun m!1581339 () Bool)

(assert (=> b!1403867 m!1581339))

(assert (=> b!1403148 d!401187))

(declare-fun d!401189 () Bool)

(declare-fun e!896305 () Bool)

(assert (=> d!401189 e!896305))

(declare-fun res!635238 () Bool)

(assert (=> d!401189 (=> res!635238 e!896305)))

(declare-fun lt!468295 () Option!2736)

(declare-fun isEmpty!8691 (Option!2736) Bool)

(assert (=> d!401189 (= res!635238 (isEmpty!8691 lt!468295))))

(declare-fun e!896306 () Option!2736)

(assert (=> d!401189 (= lt!468295 e!896306)))

(declare-fun c!230942 () Bool)

(assert (=> d!401189 (= c!230942 (and ((_ is Cons!14274) rules!2550) ((_ is Nil!14274) (t!122937 rules!2550))))))

(declare-fun lt!468294 () Unit!20615)

(declare-fun lt!468293 () Unit!20615)

(assert (=> d!401189 (= lt!468294 lt!468293)))

(declare-fun isPrefix!1160 (List!14339 List!14339) Bool)

(assert (=> d!401189 (isPrefix!1160 lt!468020 lt!468020)))

(declare-fun lemmaIsPrefixRefl!819 (List!14339 List!14339) Unit!20615)

(assert (=> d!401189 (= lt!468293 (lemmaIsPrefixRefl!819 lt!468020 lt!468020))))

(declare-fun rulesValidInductive!802 (LexerInterface!2168 List!14340) Bool)

(assert (=> d!401189 (rulesValidInductive!802 thiss!19762 rules!2550)))

(assert (=> d!401189 (= (maxPrefix!1142 thiss!19762 rules!2550 lt!468020) lt!468295)))

(declare-fun b!1403933 () Bool)

(declare-fun res!635237 () Bool)

(declare-fun e!896304 () Bool)

(assert (=> b!1403933 (=> (not res!635237) (not e!896304))))

(declare-fun get!4409 (Option!2736) tuple2!13898)

(assert (=> b!1403933 (= res!635237 (= (list!5570 (charsOf!1445 (_1!7835 (get!4409 lt!468295)))) (originalCharacters!3335 (_1!7835 (get!4409 lt!468295)))))))

(declare-fun b!1403934 () Bool)

(declare-fun call!93636 () Option!2736)

(assert (=> b!1403934 (= e!896306 call!93636)))

(declare-fun b!1403935 () Bool)

(declare-fun lt!468291 () Option!2736)

(declare-fun lt!468292 () Option!2736)

(assert (=> b!1403935 (= e!896306 (ite (and ((_ is None!2735) lt!468291) ((_ is None!2735) lt!468292)) None!2735 (ite ((_ is None!2735) lt!468292) lt!468291 (ite ((_ is None!2735) lt!468291) lt!468292 (ite (>= (size!11741 (_1!7835 (v!21679 lt!468291))) (size!11741 (_1!7835 (v!21679 lt!468292)))) lt!468291 lt!468292)))))))

(assert (=> b!1403935 (= lt!468291 call!93636)))

(assert (=> b!1403935 (= lt!468292 (maxPrefix!1142 thiss!19762 (t!122937 rules!2550) lt!468020))))

(declare-fun b!1403936 () Bool)

(assert (=> b!1403936 (= e!896304 (contains!2801 rules!2550 (rule!4236 (_1!7835 (get!4409 lt!468295)))))))

(declare-fun b!1403937 () Bool)

(declare-fun res!635236 () Bool)

(assert (=> b!1403937 (=> (not res!635236) (not e!896304))))

(assert (=> b!1403937 (= res!635236 (= (++!3712 (list!5570 (charsOf!1445 (_1!7835 (get!4409 lt!468295)))) (_2!7835 (get!4409 lt!468295))) lt!468020))))

(declare-fun b!1403938 () Bool)

(assert (=> b!1403938 (= e!896305 e!896304)))

(declare-fun res!635242 () Bool)

(assert (=> b!1403938 (=> (not res!635242) (not e!896304))))

(declare-fun isDefined!2247 (Option!2736) Bool)

(assert (=> b!1403938 (= res!635242 (isDefined!2247 lt!468295))))

(declare-fun b!1403939 () Bool)

(declare-fun res!635241 () Bool)

(assert (=> b!1403939 (=> (not res!635241) (not e!896304))))

(assert (=> b!1403939 (= res!635241 (matchR!1778 (regex!2473 (rule!4236 (_1!7835 (get!4409 lt!468295)))) (list!5570 (charsOf!1445 (_1!7835 (get!4409 lt!468295))))))))

(declare-fun bm!93631 () Bool)

(declare-fun maxPrefixOneRule!645 (LexerInterface!2168 Rule!4746 List!14339) Option!2736)

(assert (=> bm!93631 (= call!93636 (maxPrefixOneRule!645 thiss!19762 (h!19675 rules!2550) lt!468020))))

(declare-fun b!1403940 () Bool)

(declare-fun res!635239 () Bool)

(assert (=> b!1403940 (=> (not res!635239) (not e!896304))))

(declare-fun apply!3649 (TokenValueInjection!4786 BalanceConc!9352) TokenValue!2563)

(declare-fun seqFromList!1663 (List!14339) BalanceConc!9352)

(assert (=> b!1403940 (= res!635239 (= (value!80113 (_1!7835 (get!4409 lt!468295))) (apply!3649 (transformation!2473 (rule!4236 (_1!7835 (get!4409 lt!468295)))) (seqFromList!1663 (originalCharacters!3335 (_1!7835 (get!4409 lt!468295)))))))))

(declare-fun b!1403941 () Bool)

(declare-fun res!635240 () Bool)

(assert (=> b!1403941 (=> (not res!635240) (not e!896304))))

(assert (=> b!1403941 (= res!635240 (< (size!11745 (_2!7835 (get!4409 lt!468295))) (size!11745 lt!468020)))))

(assert (= (and d!401189 c!230942) b!1403934))

(assert (= (and d!401189 (not c!230942)) b!1403935))

(assert (= (or b!1403934 b!1403935) bm!93631))

(assert (= (and d!401189 (not res!635238)) b!1403938))

(assert (= (and b!1403938 res!635242) b!1403933))

(assert (= (and b!1403933 res!635237) b!1403941))

(assert (= (and b!1403941 res!635240) b!1403937))

(assert (= (and b!1403937 res!635236) b!1403940))

(assert (= (and b!1403940 res!635239) b!1403939))

(assert (= (and b!1403939 res!635241) b!1403936))

(declare-fun m!1581373 () Bool)

(assert (=> b!1403933 m!1581373))

(declare-fun m!1581375 () Bool)

(assert (=> b!1403933 m!1581375))

(assert (=> b!1403933 m!1581375))

(declare-fun m!1581377 () Bool)

(assert (=> b!1403933 m!1581377))

(declare-fun m!1581379 () Bool)

(assert (=> b!1403935 m!1581379))

(assert (=> b!1403939 m!1581373))

(assert (=> b!1403939 m!1581375))

(assert (=> b!1403939 m!1581375))

(assert (=> b!1403939 m!1581377))

(assert (=> b!1403939 m!1581377))

(declare-fun m!1581381 () Bool)

(assert (=> b!1403939 m!1581381))

(declare-fun m!1581383 () Bool)

(assert (=> b!1403938 m!1581383))

(assert (=> b!1403941 m!1581373))

(declare-fun m!1581385 () Bool)

(assert (=> b!1403941 m!1581385))

(assert (=> b!1403941 m!1581077))

(declare-fun m!1581387 () Bool)

(assert (=> d!401189 m!1581387))

(declare-fun m!1581389 () Bool)

(assert (=> d!401189 m!1581389))

(declare-fun m!1581391 () Bool)

(assert (=> d!401189 m!1581391))

(declare-fun m!1581393 () Bool)

(assert (=> d!401189 m!1581393))

(assert (=> b!1403936 m!1581373))

(declare-fun m!1581395 () Bool)

(assert (=> b!1403936 m!1581395))

(declare-fun m!1581397 () Bool)

(assert (=> bm!93631 m!1581397))

(assert (=> b!1403937 m!1581373))

(assert (=> b!1403937 m!1581375))

(assert (=> b!1403937 m!1581375))

(assert (=> b!1403937 m!1581377))

(assert (=> b!1403937 m!1581377))

(declare-fun m!1581399 () Bool)

(assert (=> b!1403937 m!1581399))

(assert (=> b!1403940 m!1581373))

(declare-fun m!1581401 () Bool)

(assert (=> b!1403940 m!1581401))

(assert (=> b!1403940 m!1581401))

(declare-fun m!1581403 () Bool)

(assert (=> b!1403940 m!1581403))

(assert (=> b!1403105 d!401189))

(declare-fun d!401213 () Bool)

(declare-fun lt!468296 () Bool)

(assert (=> d!401213 (= lt!468296 (select (content!2120 lt!468001) lt!468014))))

(declare-fun e!896307 () Bool)

(assert (=> d!401213 (= lt!468296 e!896307)))

(declare-fun res!635243 () Bool)

(assert (=> d!401213 (=> (not res!635243) (not e!896307))))

(assert (=> d!401213 (= res!635243 ((_ is Cons!14273) lt!468001))))

(assert (=> d!401213 (= (contains!2802 lt!468001 lt!468014) lt!468296)))

(declare-fun b!1403942 () Bool)

(declare-fun e!896308 () Bool)

(assert (=> b!1403942 (= e!896307 e!896308)))

(declare-fun res!635244 () Bool)

(assert (=> b!1403942 (=> res!635244 e!896308)))

(assert (=> b!1403942 (= res!635244 (= (h!19674 lt!468001) lt!468014))))

(declare-fun b!1403943 () Bool)

(assert (=> b!1403943 (= e!896308 (contains!2802 (t!122936 lt!468001) lt!468014))))

(assert (= (and d!401213 res!635243) b!1403942))

(assert (= (and b!1403942 (not res!635244)) b!1403943))

(assert (=> d!401213 m!1580595))

(declare-fun m!1581405 () Bool)

(assert (=> d!401213 m!1581405))

(declare-fun m!1581407 () Bool)

(assert (=> b!1403943 m!1581407))

(assert (=> b!1403126 d!401213))

(declare-fun d!401215 () Bool)

(declare-fun lt!468297 () Bool)

(assert (=> d!401215 (= lt!468297 (select (content!2120 lt!468015) lt!468014))))

(declare-fun e!896309 () Bool)

(assert (=> d!401215 (= lt!468297 e!896309)))

(declare-fun res!635245 () Bool)

(assert (=> d!401215 (=> (not res!635245) (not e!896309))))

(assert (=> d!401215 (= res!635245 ((_ is Cons!14273) lt!468015))))

(assert (=> d!401215 (= (contains!2802 lt!468015 lt!468014) lt!468297)))

(declare-fun b!1403944 () Bool)

(declare-fun e!896310 () Bool)

(assert (=> b!1403944 (= e!896309 e!896310)))

(declare-fun res!635246 () Bool)

(assert (=> b!1403944 (=> res!635246 e!896310)))

(assert (=> b!1403944 (= res!635246 (= (h!19674 lt!468015) lt!468014))))

(declare-fun b!1403945 () Bool)

(assert (=> b!1403945 (= e!896310 (contains!2802 (t!122936 lt!468015) lt!468014))))

(assert (= (and d!401215 res!635245) b!1403944))

(assert (= (and b!1403944 (not res!635246)) b!1403945))

(assert (=> d!401215 m!1581255))

(declare-fun m!1581409 () Bool)

(assert (=> d!401215 m!1581409))

(declare-fun m!1581411 () Bool)

(assert (=> b!1403945 m!1581411))

(assert (=> b!1403139 d!401215))

(declare-fun d!401217 () Bool)

(assert (=> d!401217 (= (inv!18579 (tag!2735 (rule!4236 t1!34))) (= (mod (str.len (value!80112 (tag!2735 (rule!4236 t1!34)))) 2) 0))))

(assert (=> b!1403117 d!401217))

(declare-fun d!401219 () Bool)

(declare-fun res!635247 () Bool)

(declare-fun e!896311 () Bool)

(assert (=> d!401219 (=> (not res!635247) (not e!896311))))

(assert (=> d!401219 (= res!635247 (semiInverseModEq!961 (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (toValue!3764 (transformation!2473 (rule!4236 t1!34)))))))

(assert (=> d!401219 (= (inv!18582 (transformation!2473 (rule!4236 t1!34))) e!896311)))

(declare-fun b!1403946 () Bool)

(assert (=> b!1403946 (= e!896311 (equivClasses!920 (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (toValue!3764 (transformation!2473 (rule!4236 t1!34)))))))

(assert (= (and d!401219 res!635247) b!1403946))

(declare-fun m!1581413 () Bool)

(assert (=> d!401219 m!1581413))

(declare-fun m!1581415 () Bool)

(assert (=> b!1403946 m!1581415))

(assert (=> b!1403117 d!401219))

(declare-fun d!401221 () Bool)

(declare-fun lt!468298 () Bool)

(assert (=> d!401221 (= lt!468298 (select (content!2123 rules!2550) (rule!4236 t2!34)))))

(declare-fun e!896312 () Bool)

(assert (=> d!401221 (= lt!468298 e!896312)))

(declare-fun res!635248 () Bool)

(assert (=> d!401221 (=> (not res!635248) (not e!896312))))

(assert (=> d!401221 (= res!635248 ((_ is Cons!14274) rules!2550))))

(assert (=> d!401221 (= (contains!2801 rules!2550 (rule!4236 t2!34)) lt!468298)))

(declare-fun b!1403947 () Bool)

(declare-fun e!896313 () Bool)

(assert (=> b!1403947 (= e!896312 e!896313)))

(declare-fun res!635249 () Bool)

(assert (=> b!1403947 (=> res!635249 e!896313)))

(assert (=> b!1403947 (= res!635249 (= (h!19675 rules!2550) (rule!4236 t2!34)))))

(declare-fun b!1403948 () Bool)

(assert (=> b!1403948 (= e!896313 (contains!2801 (t!122937 rules!2550) (rule!4236 t2!34)))))

(assert (= (and d!401221 res!635248) b!1403947))

(assert (= (and b!1403947 (not res!635249)) b!1403948))

(assert (=> d!401221 m!1581225))

(declare-fun m!1581417 () Bool)

(assert (=> d!401221 m!1581417))

(declare-fun m!1581419 () Bool)

(assert (=> b!1403948 m!1581419))

(assert (=> b!1403138 d!401221))

(declare-fun d!401223 () Bool)

(assert (=> d!401223 (= (inv!18579 (tag!2735 (rule!4236 t2!34))) (= (mod (str.len (value!80112 (tag!2735 (rule!4236 t2!34)))) 2) 0))))

(assert (=> b!1403119 d!401223))

(declare-fun d!401225 () Bool)

(declare-fun res!635250 () Bool)

(declare-fun e!896314 () Bool)

(assert (=> d!401225 (=> (not res!635250) (not e!896314))))

(assert (=> d!401225 (= res!635250 (semiInverseModEq!961 (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (toValue!3764 (transformation!2473 (rule!4236 t2!34)))))))

(assert (=> d!401225 (= (inv!18582 (transformation!2473 (rule!4236 t2!34))) e!896314)))

(declare-fun b!1403949 () Bool)

(assert (=> b!1403949 (= e!896314 (equivClasses!920 (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (toValue!3764 (transformation!2473 (rule!4236 t2!34)))))))

(assert (= (and d!401225 res!635250) b!1403949))

(declare-fun m!1581421 () Bool)

(assert (=> d!401225 m!1581421))

(declare-fun m!1581423 () Bool)

(assert (=> b!1403949 m!1581423))

(assert (=> b!1403119 d!401225))

(declare-fun d!401227 () Bool)

(assert (=> d!401227 (= (isEmpty!8681 rules!2550) ((_ is Nil!14274) rules!2550))))

(assert (=> b!1403140 d!401227))

(declare-fun b!1403950 () Bool)

(declare-fun e!896316 () Bool)

(declare-fun e!896317 () Bool)

(assert (=> b!1403950 (= e!896316 e!896317)))

(declare-fun res!635251 () Bool)

(declare-fun lt!468300 () tuple2!13902)

(assert (=> b!1403950 (= res!635251 (< (size!11745 (_2!7837 lt!468300)) (size!11745 (list!5570 lt!468013))))))

(assert (=> b!1403950 (=> (not res!635251) (not e!896317))))

(declare-fun d!401229 () Bool)

(assert (=> d!401229 e!896316))

(declare-fun c!230944 () Bool)

(assert (=> d!401229 (= c!230944 (> (size!11753 (_1!7837 lt!468300)) 0))))

(declare-fun e!896315 () tuple2!13902)

(assert (=> d!401229 (= lt!468300 e!896315)))

(declare-fun c!230943 () Bool)

(declare-fun lt!468299 () Option!2736)

(assert (=> d!401229 (= c!230943 ((_ is Some!2735) lt!468299))))

(assert (=> d!401229 (= lt!468299 (maxPrefix!1142 thiss!19762 rules!2550 (list!5570 lt!468013)))))

(assert (=> d!401229 (= (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468013)) lt!468300)))

(declare-fun b!1403951 () Bool)

(assert (=> b!1403951 (= e!896315 (tuple2!13903 Nil!14276 (list!5570 lt!468013)))))

(declare-fun b!1403952 () Bool)

(assert (=> b!1403952 (= e!896316 (= (_2!7837 lt!468300) (list!5570 lt!468013)))))

(declare-fun b!1403953 () Bool)

(declare-fun lt!468301 () tuple2!13902)

(assert (=> b!1403953 (= e!896315 (tuple2!13903 (Cons!14276 (_1!7835 (v!21679 lt!468299)) (_1!7837 lt!468301)) (_2!7837 lt!468301)))))

(assert (=> b!1403953 (= lt!468301 (lexList!682 thiss!19762 rules!2550 (_2!7835 (v!21679 lt!468299))))))

(declare-fun b!1403954 () Bool)

(assert (=> b!1403954 (= e!896317 (not (isEmpty!8690 (_1!7837 lt!468300))))))

(assert (= (and d!401229 c!230943) b!1403953))

(assert (= (and d!401229 (not c!230943)) b!1403951))

(assert (= (and d!401229 c!230944) b!1403950))

(assert (= (and d!401229 (not c!230944)) b!1403952))

(assert (= (and b!1403950 res!635251) b!1403954))

(declare-fun m!1581425 () Bool)

(assert (=> b!1403950 m!1581425))

(assert (=> b!1403950 m!1580415))

(declare-fun m!1581427 () Bool)

(assert (=> b!1403950 m!1581427))

(declare-fun m!1581429 () Bool)

(assert (=> d!401229 m!1581429))

(assert (=> d!401229 m!1580415))

(declare-fun m!1581431 () Bool)

(assert (=> d!401229 m!1581431))

(declare-fun m!1581433 () Bool)

(assert (=> b!1403953 m!1581433))

(declare-fun m!1581435 () Bool)

(assert (=> b!1403954 m!1581435))

(assert (=> b!1403118 d!401229))

(declare-fun d!401231 () Bool)

(assert (=> d!401231 (= (list!5570 lt!468013) (list!5574 (c!230766 lt!468013)))))

(declare-fun bs!338414 () Bool)

(assert (= bs!338414 d!401231))

(declare-fun m!1581437 () Bool)

(assert (=> bs!338414 m!1581437))

(assert (=> b!1403118 d!401231))

(declare-fun d!401233 () Bool)

(declare-fun e!896319 () Bool)

(assert (=> d!401233 e!896319))

(declare-fun res!635254 () Bool)

(assert (=> d!401233 (=> res!635254 e!896319)))

(declare-fun lt!468306 () Option!2736)

(assert (=> d!401233 (= res!635254 (isEmpty!8691 lt!468306))))

(declare-fun e!896320 () Option!2736)

(assert (=> d!401233 (= lt!468306 e!896320)))

(declare-fun c!230945 () Bool)

(assert (=> d!401233 (= c!230945 (and ((_ is Cons!14274) rules!2550) ((_ is Nil!14274) (t!122937 rules!2550))))))

(declare-fun lt!468305 () Unit!20615)

(declare-fun lt!468304 () Unit!20615)

(assert (=> d!401233 (= lt!468305 lt!468304)))

(assert (=> d!401233 (isPrefix!1160 lt!468024 lt!468024)))

(assert (=> d!401233 (= lt!468304 (lemmaIsPrefixRefl!819 lt!468024 lt!468024))))

(assert (=> d!401233 (rulesValidInductive!802 thiss!19762 rules!2550)))

(assert (=> d!401233 (= (maxPrefix!1142 thiss!19762 rules!2550 lt!468024) lt!468306)))

(declare-fun b!1403955 () Bool)

(declare-fun res!635253 () Bool)

(declare-fun e!896318 () Bool)

(assert (=> b!1403955 (=> (not res!635253) (not e!896318))))

(assert (=> b!1403955 (= res!635253 (= (list!5570 (charsOf!1445 (_1!7835 (get!4409 lt!468306)))) (originalCharacters!3335 (_1!7835 (get!4409 lt!468306)))))))

(declare-fun b!1403956 () Bool)

(declare-fun call!93637 () Option!2736)

(assert (=> b!1403956 (= e!896320 call!93637)))

(declare-fun b!1403957 () Bool)

(declare-fun lt!468302 () Option!2736)

(declare-fun lt!468303 () Option!2736)

(assert (=> b!1403957 (= e!896320 (ite (and ((_ is None!2735) lt!468302) ((_ is None!2735) lt!468303)) None!2735 (ite ((_ is None!2735) lt!468303) lt!468302 (ite ((_ is None!2735) lt!468302) lt!468303 (ite (>= (size!11741 (_1!7835 (v!21679 lt!468302))) (size!11741 (_1!7835 (v!21679 lt!468303)))) lt!468302 lt!468303)))))))

(assert (=> b!1403957 (= lt!468302 call!93637)))

(assert (=> b!1403957 (= lt!468303 (maxPrefix!1142 thiss!19762 (t!122937 rules!2550) lt!468024))))

(declare-fun b!1403958 () Bool)

(assert (=> b!1403958 (= e!896318 (contains!2801 rules!2550 (rule!4236 (_1!7835 (get!4409 lt!468306)))))))

(declare-fun b!1403959 () Bool)

(declare-fun res!635252 () Bool)

(assert (=> b!1403959 (=> (not res!635252) (not e!896318))))

(assert (=> b!1403959 (= res!635252 (= (++!3712 (list!5570 (charsOf!1445 (_1!7835 (get!4409 lt!468306)))) (_2!7835 (get!4409 lt!468306))) lt!468024))))

(declare-fun b!1403960 () Bool)

(assert (=> b!1403960 (= e!896319 e!896318)))

(declare-fun res!635258 () Bool)

(assert (=> b!1403960 (=> (not res!635258) (not e!896318))))

(assert (=> b!1403960 (= res!635258 (isDefined!2247 lt!468306))))

(declare-fun b!1403961 () Bool)

(declare-fun res!635257 () Bool)

(assert (=> b!1403961 (=> (not res!635257) (not e!896318))))

(assert (=> b!1403961 (= res!635257 (matchR!1778 (regex!2473 (rule!4236 (_1!7835 (get!4409 lt!468306)))) (list!5570 (charsOf!1445 (_1!7835 (get!4409 lt!468306))))))))

(declare-fun bm!93632 () Bool)

(assert (=> bm!93632 (= call!93637 (maxPrefixOneRule!645 thiss!19762 (h!19675 rules!2550) lt!468024))))

(declare-fun b!1403962 () Bool)

(declare-fun res!635255 () Bool)

(assert (=> b!1403962 (=> (not res!635255) (not e!896318))))

(assert (=> b!1403962 (= res!635255 (= (value!80113 (_1!7835 (get!4409 lt!468306))) (apply!3649 (transformation!2473 (rule!4236 (_1!7835 (get!4409 lt!468306)))) (seqFromList!1663 (originalCharacters!3335 (_1!7835 (get!4409 lt!468306)))))))))

(declare-fun b!1403963 () Bool)

(declare-fun res!635256 () Bool)

(assert (=> b!1403963 (=> (not res!635256) (not e!896318))))

(assert (=> b!1403963 (= res!635256 (< (size!11745 (_2!7835 (get!4409 lt!468306))) (size!11745 lt!468024)))))

(assert (= (and d!401233 c!230945) b!1403956))

(assert (= (and d!401233 (not c!230945)) b!1403957))

(assert (= (or b!1403956 b!1403957) bm!93632))

(assert (= (and d!401233 (not res!635254)) b!1403960))

(assert (= (and b!1403960 res!635258) b!1403955))

(assert (= (and b!1403955 res!635253) b!1403963))

(assert (= (and b!1403963 res!635256) b!1403959))

(assert (= (and b!1403959 res!635252) b!1403962))

(assert (= (and b!1403962 res!635255) b!1403961))

(assert (= (and b!1403961 res!635257) b!1403958))

(declare-fun m!1581439 () Bool)

(assert (=> b!1403955 m!1581439))

(declare-fun m!1581441 () Bool)

(assert (=> b!1403955 m!1581441))

(assert (=> b!1403955 m!1581441))

(declare-fun m!1581443 () Bool)

(assert (=> b!1403955 m!1581443))

(declare-fun m!1581445 () Bool)

(assert (=> b!1403957 m!1581445))

(assert (=> b!1403961 m!1581439))

(assert (=> b!1403961 m!1581441))

(assert (=> b!1403961 m!1581441))

(assert (=> b!1403961 m!1581443))

(assert (=> b!1403961 m!1581443))

(declare-fun m!1581447 () Bool)

(assert (=> b!1403961 m!1581447))

(declare-fun m!1581449 () Bool)

(assert (=> b!1403960 m!1581449))

(assert (=> b!1403963 m!1581439))

(declare-fun m!1581451 () Bool)

(assert (=> b!1403963 m!1581451))

(declare-fun m!1581453 () Bool)

(assert (=> b!1403963 m!1581453))

(declare-fun m!1581455 () Bool)

(assert (=> d!401233 m!1581455))

(declare-fun m!1581457 () Bool)

(assert (=> d!401233 m!1581457))

(declare-fun m!1581459 () Bool)

(assert (=> d!401233 m!1581459))

(assert (=> d!401233 m!1581393))

(assert (=> b!1403958 m!1581439))

(declare-fun m!1581461 () Bool)

(assert (=> b!1403958 m!1581461))

(declare-fun m!1581463 () Bool)

(assert (=> bm!93632 m!1581463))

(assert (=> b!1403959 m!1581439))

(assert (=> b!1403959 m!1581441))

(assert (=> b!1403959 m!1581441))

(assert (=> b!1403959 m!1581443))

(assert (=> b!1403959 m!1581443))

(declare-fun m!1581465 () Bool)

(assert (=> b!1403959 m!1581465))

(assert (=> b!1403962 m!1581439))

(declare-fun m!1581467 () Bool)

(assert (=> b!1403962 m!1581467))

(assert (=> b!1403962 m!1581467))

(declare-fun m!1581469 () Bool)

(assert (=> b!1403962 m!1581469))

(assert (=> b!1403120 d!401233))

(declare-fun d!401235 () Bool)

(assert (=> d!401235 (= (list!5570 lt!468016) (list!5574 (c!230766 lt!468016)))))

(declare-fun bs!338415 () Bool)

(assert (= bs!338415 d!401235))

(declare-fun m!1581471 () Bool)

(assert (=> bs!338415 m!1581471))

(assert (=> b!1403120 d!401235))

(declare-fun d!401237 () Bool)

(assert (=> d!401237 (= (list!5569 (_1!7836 lt!468030)) (list!5571 (c!230768 (_1!7836 lt!468030))))))

(declare-fun bs!338416 () Bool)

(assert (= bs!338416 d!401237))

(declare-fun m!1581473 () Bool)

(assert (=> bs!338416 m!1581473))

(assert (=> b!1403143 d!401237))

(declare-fun e!896321 () Bool)

(declare-fun b!1403964 () Bool)

(declare-fun lt!468307 () tuple2!13900)

(assert (=> b!1403964 (= e!896321 (= (list!5570 (_2!7836 lt!468307)) (_2!7837 (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468013)))))))

(declare-fun b!1403965 () Bool)

(declare-fun e!896322 () Bool)

(assert (=> b!1403965 (= e!896322 (= (_2!7836 lt!468307) lt!468013))))

(declare-fun d!401239 () Bool)

(assert (=> d!401239 e!896321))

(declare-fun res!635260 () Bool)

(assert (=> d!401239 (=> (not res!635260) (not e!896321))))

(assert (=> d!401239 (= res!635260 e!896322)))

(declare-fun c!230946 () Bool)

(assert (=> d!401239 (= c!230946 (> (size!11744 (_1!7836 lt!468307)) 0))))

(assert (=> d!401239 (= lt!468307 (lexTailRecV2!444 thiss!19762 rules!2550 lt!468013 (BalanceConc!9353 Empty!4706) lt!468013 (BalanceConc!9355 Empty!4707)))))

(assert (=> d!401239 (= (lex!993 thiss!19762 rules!2550 lt!468013) lt!468307)))

(declare-fun b!1403966 () Bool)

(declare-fun res!635259 () Bool)

(assert (=> b!1403966 (=> (not res!635259) (not e!896321))))

(assert (=> b!1403966 (= res!635259 (= (list!5569 (_1!7836 lt!468307)) (_1!7837 (lexList!682 thiss!19762 rules!2550 (list!5570 lt!468013)))))))

(declare-fun b!1403967 () Bool)

(declare-fun e!896323 () Bool)

(assert (=> b!1403967 (= e!896322 e!896323)))

(declare-fun res!635261 () Bool)

(assert (=> b!1403967 (= res!635261 (< (size!11742 (_2!7836 lt!468307)) (size!11742 lt!468013)))))

(assert (=> b!1403967 (=> (not res!635261) (not e!896323))))

(declare-fun b!1403968 () Bool)

(assert (=> b!1403968 (= e!896323 (not (isEmpty!8683 (_1!7836 lt!468307))))))

(assert (= (and d!401239 c!230946) b!1403967))

(assert (= (and d!401239 (not c!230946)) b!1403965))

(assert (= (and b!1403967 res!635261) b!1403968))

(assert (= (and d!401239 res!635260) b!1403966))

(assert (= (and b!1403966 res!635259) b!1403964))

(declare-fun m!1581475 () Bool)

(assert (=> d!401239 m!1581475))

(declare-fun m!1581477 () Bool)

(assert (=> d!401239 m!1581477))

(declare-fun m!1581479 () Bool)

(assert (=> b!1403967 m!1581479))

(declare-fun m!1581481 () Bool)

(assert (=> b!1403967 m!1581481))

(declare-fun m!1581483 () Bool)

(assert (=> b!1403964 m!1581483))

(assert (=> b!1403964 m!1580415))

(assert (=> b!1403964 m!1580415))

(assert (=> b!1403964 m!1580417))

(declare-fun m!1581485 () Bool)

(assert (=> b!1403966 m!1581485))

(assert (=> b!1403966 m!1580415))

(assert (=> b!1403966 m!1580415))

(assert (=> b!1403966 m!1580417))

(declare-fun m!1581487 () Bool)

(assert (=> b!1403968 m!1581487))

(assert (=> b!1403143 d!401239))

(declare-fun d!401241 () Bool)

(declare-fun lt!468308 () BalanceConc!9352)

(assert (=> d!401241 (= (list!5570 lt!468308) (printList!639 thiss!19762 (list!5569 (singletonSeq!1136 t2!34))))))

(assert (=> d!401241 (= lt!468308 (printTailRec!621 thiss!19762 (singletonSeq!1136 t2!34) 0 (BalanceConc!9353 Empty!4706)))))

(assert (=> d!401241 (= (print!932 thiss!19762 (singletonSeq!1136 t2!34)) lt!468308)))

(declare-fun bs!338417 () Bool)

(assert (= bs!338417 d!401241))

(declare-fun m!1581489 () Bool)

(assert (=> bs!338417 m!1581489))

(assert (=> bs!338417 m!1580299))

(assert (=> bs!338417 m!1580837))

(assert (=> bs!338417 m!1580837))

(declare-fun m!1581491 () Bool)

(assert (=> bs!338417 m!1581491))

(assert (=> bs!338417 m!1580299))

(declare-fun m!1581493 () Bool)

(assert (=> bs!338417 m!1581493))

(assert (=> b!1403143 d!401241))

(declare-fun d!401243 () Bool)

(declare-fun e!896324 () Bool)

(assert (=> d!401243 e!896324))

(declare-fun res!635262 () Bool)

(assert (=> d!401243 (=> (not res!635262) (not e!896324))))

(declare-fun lt!468309 () BalanceConc!9354)

(assert (=> d!401243 (= res!635262 (= (list!5569 lt!468309) (Cons!14276 t2!34 Nil!14276)))))

(assert (=> d!401243 (= lt!468309 (singleton!495 t2!34))))

(assert (=> d!401243 (= (singletonSeq!1136 t2!34) lt!468309)))

(declare-fun b!1403969 () Bool)

(assert (=> b!1403969 (= e!896324 (isBalanced!1389 (c!230768 lt!468309)))))

(assert (= (and d!401243 res!635262) b!1403969))

(declare-fun m!1581495 () Bool)

(assert (=> d!401243 m!1581495))

(declare-fun m!1581497 () Bool)

(assert (=> d!401243 m!1581497))

(declare-fun m!1581499 () Bool)

(assert (=> b!1403969 m!1581499))

(assert (=> b!1403143 d!401243))

(declare-fun d!401245 () Bool)

(declare-fun res!635267 () Bool)

(declare-fun e!896327 () Bool)

(assert (=> d!401245 (=> (not res!635267) (not e!896327))))

(assert (=> d!401245 (= res!635267 (not (isEmpty!8684 (originalCharacters!3335 t1!34))))))

(assert (=> d!401245 (= (inv!18583 t1!34) e!896327)))

(declare-fun b!1403974 () Bool)

(declare-fun res!635268 () Bool)

(assert (=> b!1403974 (=> (not res!635268) (not e!896327))))

(assert (=> b!1403974 (= res!635268 (= (originalCharacters!3335 t1!34) (list!5570 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (value!80113 t1!34)))))))

(declare-fun b!1403975 () Bool)

(assert (=> b!1403975 (= e!896327 (= (size!11741 t1!34) (size!11745 (originalCharacters!3335 t1!34))))))

(assert (= (and d!401245 res!635267) b!1403974))

(assert (= (and b!1403974 res!635268) b!1403975))

(declare-fun b_lambda!44197 () Bool)

(assert (=> (not b_lambda!44197) (not b!1403974)))

(assert (=> b!1403974 t!122957))

(declare-fun b_and!93999 () Bool)

(assert (= b_and!93971 (and (=> t!122957 result!88910) b_and!93999)))

(assert (=> b!1403974 t!122959))

(declare-fun b_and!94001 () Bool)

(assert (= b_and!93973 (and (=> t!122959 result!88912) b_and!94001)))

(assert (=> b!1403974 t!122961))

(declare-fun b_and!94003 () Bool)

(assert (= b_and!93975 (and (=> t!122961 result!88914) b_and!94003)))

(declare-fun m!1581501 () Bool)

(assert (=> d!401245 m!1581501))

(assert (=> b!1403974 m!1581105))

(assert (=> b!1403974 m!1581105))

(declare-fun m!1581503 () Bool)

(assert (=> b!1403974 m!1581503))

(declare-fun m!1581505 () Bool)

(assert (=> b!1403975 m!1581505))

(assert (=> start!127874 d!401245))

(declare-fun d!401247 () Bool)

(declare-fun res!635269 () Bool)

(declare-fun e!896328 () Bool)

(assert (=> d!401247 (=> (not res!635269) (not e!896328))))

(assert (=> d!401247 (= res!635269 (not (isEmpty!8684 (originalCharacters!3335 t2!34))))))

(assert (=> d!401247 (= (inv!18583 t2!34) e!896328)))

(declare-fun b!1403976 () Bool)

(declare-fun res!635270 () Bool)

(assert (=> b!1403976 (=> (not res!635270) (not e!896328))))

(assert (=> b!1403976 (= res!635270 (= (originalCharacters!3335 t2!34) (list!5570 (dynLambda!6603 (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (value!80113 t2!34)))))))

(declare-fun b!1403977 () Bool)

(assert (=> b!1403977 (= e!896328 (= (size!11741 t2!34) (size!11745 (originalCharacters!3335 t2!34))))))

(assert (= (and d!401247 res!635269) b!1403976))

(assert (= (and b!1403976 res!635270) b!1403977))

(declare-fun b_lambda!44199 () Bool)

(assert (=> (not b_lambda!44199) (not b!1403976)))

(assert (=> b!1403976 t!122943))

(declare-fun b_and!94005 () Bool)

(assert (= b_and!93999 (and (=> t!122943 result!88894) b_and!94005)))

(assert (=> b!1403976 t!122945))

(declare-fun b_and!94007 () Bool)

(assert (= b_and!94001 (and (=> t!122945 result!88898) b_and!94007)))

(assert (=> b!1403976 t!122947))

(declare-fun b_and!94009 () Bool)

(assert (= b_and!94003 (and (=> t!122947 result!88900) b_and!94009)))

(declare-fun m!1581507 () Bool)

(assert (=> d!401247 m!1581507))

(assert (=> b!1403976 m!1580583))

(assert (=> b!1403976 m!1580583))

(declare-fun m!1581509 () Bool)

(assert (=> b!1403976 m!1581509))

(declare-fun m!1581511 () Bool)

(assert (=> b!1403977 m!1581511))

(assert (=> start!127874 d!401247))

(declare-fun d!401249 () Bool)

(declare-fun lt!468310 () Bool)

(assert (=> d!401249 (= lt!468310 (select (content!2123 rules!2550) lt!468008))))

(declare-fun e!896329 () Bool)

(assert (=> d!401249 (= lt!468310 e!896329)))

(declare-fun res!635271 () Bool)

(assert (=> d!401249 (=> (not res!635271) (not e!896329))))

(assert (=> d!401249 (= res!635271 ((_ is Cons!14274) rules!2550))))

(assert (=> d!401249 (= (contains!2801 rules!2550 lt!468008) lt!468310)))

(declare-fun b!1403978 () Bool)

(declare-fun e!896330 () Bool)

(assert (=> b!1403978 (= e!896329 e!896330)))

(declare-fun res!635272 () Bool)

(assert (=> b!1403978 (=> res!635272 e!896330)))

(assert (=> b!1403978 (= res!635272 (= (h!19675 rules!2550) lt!468008))))

(declare-fun b!1403979 () Bool)

(assert (=> b!1403979 (= e!896330 (contains!2801 (t!122937 rules!2550) lt!468008))))

(assert (= (and d!401249 res!635271) b!1403978))

(assert (= (and b!1403978 (not res!635272)) b!1403979))

(assert (=> d!401249 m!1581225))

(declare-fun m!1581513 () Bool)

(assert (=> d!401249 m!1581513))

(declare-fun m!1581515 () Bool)

(assert (=> b!1403979 m!1581515))

(assert (=> b!1403142 d!401249))

(declare-fun b!1403991 () Bool)

(declare-fun e!896333 () Bool)

(declare-fun tp!399088 () Bool)

(declare-fun tp!399090 () Bool)

(assert (=> b!1403991 (= e!896333 (and tp!399088 tp!399090))))

(declare-fun b!1403992 () Bool)

(declare-fun tp!399092 () Bool)

(assert (=> b!1403992 (= e!896333 tp!399092)))

(declare-fun b!1403990 () Bool)

(declare-fun tp_is_empty!6815 () Bool)

(assert (=> b!1403990 (= e!896333 tp_is_empty!6815)))

(declare-fun b!1403993 () Bool)

(declare-fun tp!399089 () Bool)

(declare-fun tp!399091 () Bool)

(assert (=> b!1403993 (= e!896333 (and tp!399089 tp!399091))))

(assert (=> b!1403117 (= tp!399022 e!896333)))

(assert (= (and b!1403117 ((_ is ElementMatch!3787) (regex!2473 (rule!4236 t1!34)))) b!1403990))

(assert (= (and b!1403117 ((_ is Concat!6351) (regex!2473 (rule!4236 t1!34)))) b!1403991))

(assert (= (and b!1403117 ((_ is Star!3787) (regex!2473 (rule!4236 t1!34)))) b!1403992))

(assert (= (and b!1403117 ((_ is Union!3787) (regex!2473 (rule!4236 t1!34)))) b!1403993))

(declare-fun b!1403995 () Bool)

(declare-fun e!896334 () Bool)

(declare-fun tp!399093 () Bool)

(declare-fun tp!399095 () Bool)

(assert (=> b!1403995 (= e!896334 (and tp!399093 tp!399095))))

(declare-fun b!1403996 () Bool)

(declare-fun tp!399097 () Bool)

(assert (=> b!1403996 (= e!896334 tp!399097)))

(declare-fun b!1403994 () Bool)

(assert (=> b!1403994 (= e!896334 tp_is_empty!6815)))

(declare-fun b!1403997 () Bool)

(declare-fun tp!399094 () Bool)

(declare-fun tp!399096 () Bool)

(assert (=> b!1403997 (= e!896334 (and tp!399094 tp!399096))))

(assert (=> b!1403119 (= tp!399024 e!896334)))

(assert (= (and b!1403119 ((_ is ElementMatch!3787) (regex!2473 (rule!4236 t2!34)))) b!1403994))

(assert (= (and b!1403119 ((_ is Concat!6351) (regex!2473 (rule!4236 t2!34)))) b!1403995))

(assert (= (and b!1403119 ((_ is Star!3787) (regex!2473 (rule!4236 t2!34)))) b!1403996))

(assert (= (and b!1403119 ((_ is Union!3787) (regex!2473 (rule!4236 t2!34)))) b!1403997))

(declare-fun b!1403999 () Bool)

(declare-fun e!896335 () Bool)

(declare-fun tp!399098 () Bool)

(declare-fun tp!399100 () Bool)

(assert (=> b!1403999 (= e!896335 (and tp!399098 tp!399100))))

(declare-fun b!1404000 () Bool)

(declare-fun tp!399102 () Bool)

(assert (=> b!1404000 (= e!896335 tp!399102)))

(declare-fun b!1403998 () Bool)

(assert (=> b!1403998 (= e!896335 tp_is_empty!6815)))

(declare-fun b!1404001 () Bool)

(declare-fun tp!399099 () Bool)

(declare-fun tp!399101 () Bool)

(assert (=> b!1404001 (= e!896335 (and tp!399099 tp!399101))))

(assert (=> b!1403108 (= tp!399026 e!896335)))

(assert (= (and b!1403108 ((_ is ElementMatch!3787) (regex!2473 (h!19675 rules!2550)))) b!1403998))

(assert (= (and b!1403108 ((_ is Concat!6351) (regex!2473 (h!19675 rules!2550)))) b!1403999))

(assert (= (and b!1403108 ((_ is Star!3787) (regex!2473 (h!19675 rules!2550)))) b!1404000))

(assert (= (and b!1403108 ((_ is Union!3787) (regex!2473 (h!19675 rules!2550)))) b!1404001))

(declare-fun b!1404006 () Bool)

(declare-fun e!896338 () Bool)

(declare-fun tp!399105 () Bool)

(assert (=> b!1404006 (= e!896338 (and tp_is_empty!6815 tp!399105))))

(assert (=> b!1403109 (= tp!399023 e!896338)))

(assert (= (and b!1403109 ((_ is Cons!14273) (originalCharacters!3335 t1!34))) b!1404006))

(declare-fun b!1404017 () Bool)

(declare-fun b_free!34235 () Bool)

(declare-fun b_next!34939 () Bool)

(assert (=> b!1404017 (= b_free!34235 (not b_next!34939))))

(declare-fun tp!399115 () Bool)

(declare-fun b_and!94011 () Bool)

(assert (=> b!1404017 (= tp!399115 b_and!94011)))

(declare-fun b_free!34237 () Bool)

(declare-fun b_next!34941 () Bool)

(assert (=> b!1404017 (= b_free!34237 (not b_next!34941))))

(declare-fun tb!73141 () Bool)

(declare-fun t!122973 () Bool)

(assert (=> (and b!1404017 (= (toChars!3623 (transformation!2473 (h!19675 (t!122937 rules!2550)))) (toChars!3623 (transformation!2473 (rule!4236 t2!34)))) t!122973) tb!73141))

(declare-fun result!88938 () Bool)

(assert (= result!88938 result!88894))

(assert (=> d!400947 t!122973))

(declare-fun tb!73143 () Bool)

(declare-fun t!122975 () Bool)

(assert (=> (and b!1404017 (= (toChars!3623 (transformation!2473 (h!19675 (t!122937 rules!2550)))) (toChars!3623 (transformation!2473 (rule!4236 t1!34)))) t!122975) tb!73143))

(declare-fun result!88940 () Bool)

(assert (= result!88940 result!88910))

(assert (=> d!401105 t!122975))

(assert (=> b!1403974 t!122975))

(assert (=> b!1403976 t!122973))

(declare-fun b_and!94013 () Bool)

(declare-fun tp!399114 () Bool)

(assert (=> b!1404017 (= tp!399114 (and (=> t!122973 result!88938) (=> t!122975 result!88940) b_and!94013))))

(declare-fun e!896350 () Bool)

(assert (=> b!1404017 (= e!896350 (and tp!399115 tp!399114))))

(declare-fun b!1404016 () Bool)

(declare-fun tp!399116 () Bool)

(declare-fun e!896347 () Bool)

(assert (=> b!1404016 (= e!896347 (and tp!399116 (inv!18579 (tag!2735 (h!19675 (t!122937 rules!2550)))) (inv!18582 (transformation!2473 (h!19675 (t!122937 rules!2550)))) e!896350))))

(declare-fun b!1404015 () Bool)

(declare-fun e!896348 () Bool)

(declare-fun tp!399117 () Bool)

(assert (=> b!1404015 (= e!896348 (and e!896347 tp!399117))))

(assert (=> b!1403127 (= tp!399021 e!896348)))

(assert (= b!1404016 b!1404017))

(assert (= b!1404015 b!1404016))

(assert (= (and b!1403127 ((_ is Cons!14274) (t!122937 rules!2550))) b!1404015))

(declare-fun m!1581517 () Bool)

(assert (=> b!1404016 m!1581517))

(declare-fun m!1581519 () Bool)

(assert (=> b!1404016 m!1581519))

(declare-fun b!1404018 () Bool)

(declare-fun e!896351 () Bool)

(declare-fun tp!399118 () Bool)

(assert (=> b!1404018 (= e!896351 (and tp_is_empty!6815 tp!399118))))

(assert (=> b!1403148 (= tp!399025 e!896351)))

(assert (= (and b!1403148 ((_ is Cons!14273) (originalCharacters!3335 t2!34))) b!1404018))

(declare-fun b_lambda!44201 () Bool)

(assert (= b_lambda!44197 (or (and b!1403149 b_free!34221 (= (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toChars!3623 (transformation!2473 (rule!4236 t1!34))))) (and b!1403121 b_free!34225 (= (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (toChars!3623 (transformation!2473 (rule!4236 t1!34))))) (and b!1403144 b_free!34229) (and b!1404017 b_free!34237 (= (toChars!3623 (transformation!2473 (h!19675 (t!122937 rules!2550)))) (toChars!3623 (transformation!2473 (rule!4236 t1!34))))) b_lambda!44201)))

(declare-fun b_lambda!44203 () Bool)

(assert (= b_lambda!44125 (or b!1403130 b_lambda!44203)))

(declare-fun bs!338418 () Bool)

(declare-fun d!401251 () Bool)

(assert (= bs!338418 (and d!401251 b!1403130)))

(assert (=> bs!338418 (= (dynLambda!6602 lambda!61662 lt!468039) (= (regex!2473 lt!468039) lt!468019))))

(assert (=> d!400909 d!401251))

(declare-fun b_lambda!44205 () Bool)

(assert (= b_lambda!44161 (or b!1403145 b_lambda!44205)))

(declare-fun bs!338419 () Bool)

(declare-fun d!401253 () Bool)

(assert (= bs!338419 (and d!401253 b!1403145)))

(declare-fun res!635273 () Bool)

(declare-fun e!896352 () Bool)

(assert (=> bs!338419 (=> (not res!635273) (not e!896352))))

(assert (=> bs!338419 (= res!635273 (matchR!1778 lt!468000 lt!468237))))

(assert (=> bs!338419 (= (dynLambda!6612 lambda!61659 lt!468237) e!896352)))

(declare-fun b!1404019 () Bool)

(assert (=> b!1404019 (= e!896352 (isPrefix!1160 lt!468001 lt!468237))))

(assert (= (and bs!338419 res!635273) b!1404019))

(declare-fun m!1581521 () Bool)

(assert (=> bs!338419 m!1581521))

(declare-fun m!1581523 () Bool)

(assert (=> b!1404019 m!1581523))

(assert (=> d!401121 d!401253))

(declare-fun b_lambda!44207 () Bool)

(assert (= b_lambda!44147 (or b!1403132 b_lambda!44207)))

(declare-fun bs!338420 () Bool)

(declare-fun d!401255 () Bool)

(assert (= bs!338420 (and d!401255 b!1403132)))

(declare-fun res!635274 () Bool)

(declare-fun e!896353 () Bool)

(assert (=> bs!338420 (=> (not res!635274) (not e!896353))))

(assert (=> bs!338420 (= res!635274 (validRegex!1659 (h!19676 (map!3170 rules!2550 lambda!61660))))))

(assert (=> bs!338420 (= (dynLambda!6606 lambda!61661 (h!19676 (map!3170 rules!2550 lambda!61660))) e!896353)))

(declare-fun b!1404020 () Bool)

(assert (=> b!1404020 (= e!896353 (matchR!1778 (h!19676 (map!3170 rules!2550 lambda!61660)) lt!468015))))

(assert (= (and bs!338420 res!635274) b!1404020))

(declare-fun m!1581525 () Bool)

(assert (=> bs!338420 m!1581525))

(declare-fun m!1581527 () Bool)

(assert (=> b!1404020 m!1581527))

(assert (=> b!1403511 d!401255))

(declare-fun b_lambda!44209 () Bool)

(assert (= b_lambda!44155 (or b!1403110 b_lambda!44209)))

(declare-fun bs!338421 () Bool)

(declare-fun d!401257 () Bool)

(assert (= bs!338421 (and d!401257 b!1403110)))

(declare-fun ruleValid!620 (LexerInterface!2168 Rule!4746) Bool)

(assert (=> bs!338421 (= (dynLambda!6602 lambda!61663 lt!468008) (ruleValid!620 thiss!19762 lt!468008))))

(declare-fun m!1581529 () Bool)

(assert (=> bs!338421 m!1581529))

(assert (=> d!401071 d!401257))

(declare-fun b_lambda!44211 () Bool)

(assert (= b_lambda!44149 (or b!1403132 b_lambda!44211)))

(declare-fun bs!338422 () Bool)

(declare-fun d!401259 () Bool)

(assert (= bs!338422 (and d!401259 b!1403132)))

(declare-fun res!635275 () Bool)

(declare-fun e!896354 () Bool)

(assert (=> bs!338422 (=> (not res!635275) (not e!896354))))

(assert (=> bs!338422 (= res!635275 (validRegex!1659 lt!468157))))

(assert (=> bs!338422 (= (dynLambda!6606 lambda!61661 lt!468157) e!896354)))

(declare-fun b!1404021 () Bool)

(assert (=> b!1404021 (= e!896354 (matchR!1778 lt!468157 lt!468015))))

(assert (= (and bs!338422 res!635275) b!1404021))

(declare-fun m!1581531 () Bool)

(assert (=> bs!338422 m!1581531))

(declare-fun m!1581533 () Bool)

(assert (=> b!1404021 m!1581533))

(assert (=> d!400997 d!401259))

(declare-fun b_lambda!44213 () Bool)

(assert (= b_lambda!44199 (or (and b!1403149 b_free!34221 (= (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toChars!3623 (transformation!2473 (rule!4236 t2!34))))) (and b!1403121 b_free!34225) (and b!1403144 b_free!34229 (= (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (toChars!3623 (transformation!2473 (rule!4236 t2!34))))) (and b!1404017 b_free!34237 (= (toChars!3623 (transformation!2473 (h!19675 (t!122937 rules!2550)))) (toChars!3623 (transformation!2473 (rule!4236 t2!34))))) b_lambda!44213)))

(declare-fun b_lambda!44215 () Bool)

(assert (= b_lambda!44145 (or b!1403132 b_lambda!44215)))

(declare-fun bs!338423 () Bool)

(declare-fun d!401261 () Bool)

(assert (= bs!338423 (and d!401261 b!1403132)))

(assert (=> bs!338423 (= (dynLambda!6604 lambda!61660 (h!19675 rules!2550)) (regex!2473 (h!19675 rules!2550)))))

(assert (=> b!1403485 d!401261))

(declare-fun b_lambda!44217 () Bool)

(assert (= b_lambda!44151 (or b!1403110 b_lambda!44217)))

(declare-fun bs!338424 () Bool)

(declare-fun d!401263 () Bool)

(assert (= bs!338424 (and d!401263 b!1403110)))

(assert (=> bs!338424 (= (dynLambda!6602 lambda!61663 (rule!4236 t2!34)) (ruleValid!620 thiss!19762 (rule!4236 t2!34)))))

(declare-fun m!1581535 () Bool)

(assert (=> bs!338424 m!1581535))

(assert (=> d!401061 d!401263))

(declare-fun b_lambda!44219 () Bool)

(assert (= b_lambda!44123 (or b!1403130 b_lambda!44219)))

(declare-fun bs!338425 () Bool)

(declare-fun d!401265 () Bool)

(assert (= bs!338425 (and d!401265 b!1403130)))

(assert (=> bs!338425 (= (dynLambda!6602 lambda!61662 (h!19675 rules!2550)) (= (regex!2473 (h!19675 rules!2550)) lt!468019))))

(assert (=> b!1403176 d!401265))

(declare-fun b_lambda!44221 () Bool)

(assert (= b_lambda!44137 (or (and b!1403149 b_free!34221 (= (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toChars!3623 (transformation!2473 (rule!4236 t2!34))))) (and b!1403121 b_free!34225) (and b!1403144 b_free!34229 (= (toChars!3623 (transformation!2473 (rule!4236 t1!34))) (toChars!3623 (transformation!2473 (rule!4236 t2!34))))) (and b!1404017 b_free!34237 (= (toChars!3623 (transformation!2473 (h!19675 (t!122937 rules!2550)))) (toChars!3623 (transformation!2473 (rule!4236 t2!34))))) b_lambda!44221)))

(declare-fun b_lambda!44223 () Bool)

(assert (= b_lambda!44153 (or b!1403110 b_lambda!44223)))

(declare-fun bs!338426 () Bool)

(declare-fun d!401267 () Bool)

(assert (= bs!338426 (and d!401267 b!1403110)))

(assert (=> bs!338426 (= (dynLambda!6602 lambda!61663 (rule!4236 t1!34)) (ruleValid!620 thiss!19762 (rule!4236 t1!34)))))

(declare-fun m!1581537 () Bool)

(assert (=> bs!338426 m!1581537))

(assert (=> d!401067 d!401267))

(declare-fun b_lambda!44225 () Bool)

(assert (= b_lambda!44159 (or (and b!1403149 b_free!34221 (= (toChars!3623 (transformation!2473 (h!19675 rules!2550))) (toChars!3623 (transformation!2473 (rule!4236 t1!34))))) (and b!1403121 b_free!34225 (= (toChars!3623 (transformation!2473 (rule!4236 t2!34))) (toChars!3623 (transformation!2473 (rule!4236 t1!34))))) (and b!1403144 b_free!34229) (and b!1404017 b_free!34237 (= (toChars!3623 (transformation!2473 (h!19675 (t!122937 rules!2550)))) (toChars!3623 (transformation!2473 (rule!4236 t1!34))))) b_lambda!44225)))

(check-sat (not d!400993) (not d!400955) (not b!1403365) (not d!400949) (not d!400945) (not b!1403509) (not d!401247) (not d!401149) (not b!1403723) (not b!1403804) (not b!1403599) (not b!1403571) (not b!1403960) (not b_lambda!44201) (not b!1403999) (not d!401243) (not d!401225) (not d!400995) (not b!1403186) (not b_next!34931) (not b_next!34941) (not b!1403455) (not b!1403974) (not bm!93614) (not b!1404006) (not b!1403724) (not d!401143) (not d!401233) (not b!1403572) (not b!1403322) (not b_next!34929) (not b!1403334) (not b!1403325) (not b!1403694) (not d!401237) (not b!1404000) (not d!401235) (not b!1403802) (not b!1403941) (not b!1403964) b_and!94009 (not b!1403372) (not b!1403950) (not d!401025) (not b!1403712) (not d!400917) (not b!1403366) (not b!1403725) (not b!1403558) (not d!400947) (not b!1403708) (not d!400905) (not bm!93608) (not b!1403709) (not b!1403479) (not b!1403977) (not b!1403730) (not bm!93632) (not d!401155) (not b!1403638) (not d!400957) (not b!1403963) (not bs!338426) (not b!1403946) (not b_next!34927) (not b!1403615) (not d!401017) (not d!401229) (not bm!93628) (not d!401037) (not b!1403816) (not d!401239) (not b!1403997) (not b!1403961) (not b!1403364) b_and!93951 (not tb!73125) (not b!1403976) (not b!1403953) (not b_next!34925) (not b!1403800) (not b!1403814) (not b_lambda!44209) (not b!1403955) (not b!1403453) (not b_lambda!44211) (not b!1403734) (not bm!93631) (not bs!338422) (not b!1403618) (not bm!93607) (not b_lambda!44207) (not d!401215) (not d!400963) (not b!1403962) (not b!1403937) b_and!94011 (not d!401045) (not d!401043) (not b!1404020) (not d!400911) (not tb!73113) (not b!1403316) (not d!401099) (not bm!93625) (not d!401027) (not d!401071) (not d!401061) (not d!401115) (not b!1403617) (not b!1403966) (not d!401231) (not b!1403991) (not bs!338421) (not b!1403969) (not b_lambda!44221) b_and!94013 (not bm!93594) (not b!1404018) (not bm!93612) (not b!1403968) (not b_next!34923) (not b_lambda!44217) (not b_lambda!44219) (not b!1403174) (not bm!93610) (not b!1403557) (not d!401221) (not b!1403512) (not b!1403940) (not b_lambda!44223) (not b!1403623) (not b!1403866) (not b!1403545) (not b!1403938) (not b!1403863) (not b!1403979) (not bm!93624) (not d!400997) (not d!401157) (not d!401127) (not d!401189) (not d!401153) (not b!1403864) (not d!401219) (not b!1403995) (not b_lambda!44215) b_and!93955 (not b_next!34939) (not d!401121) (not d!401075) (not b!1403957) (not bm!93615) (not b!1403331) (not b!1404019) (not d!401109) (not b!1403992) (not b!1403175) (not b!1403859) (not d!401249) (not d!401105) (not bm!93622) (not d!401007) (not b!1403172) (not d!401145) (not b!1403744) (not bs!338419) (not b!1403556) (not b!1403547) (not b!1403454) (not d!400989) (not b!1403975) (not d!401117) (not bs!338424) (not d!401093) (not d!400907) (not b!1403485) (not b_lambda!44225) (not d!401021) (not d!400959) (not b_lambda!44205) (not d!401103) (not b!1403743) (not b!1403635) (not d!401159) (not b!1403376) (not b!1403949) (not b!1404021) (not b!1404015) (not b!1403959) (not b!1403933) tp_is_empty!6815 (not d!401015) (not b!1403760) (not b!1403967) (not b_lambda!44203) (not b!1403695) (not b!1403315) (not b!1403939) (not b!1403510) (not bm!93626) (not bs!338420) (not b!1403313) (not d!401245) (not b!1403826) (not b!1403810) (not d!401095) (not d!401241) (not d!400951) b_and!93947 (not b_lambda!44213) (not b!1403945) (not d!400953) (not d!401053) (not b!1403935) (not b!1403516) (not d!400909) (not b!1403569) (not b_next!34933) (not b!1403805) (not b!1404001) (not b!1403367) (not b!1403722) (not b!1403936) (not b!1403711) (not b!1403948) (not b!1404016) (not bm!93611) b_and!94007 b_and!94005 (not b!1403641) (not b!1403867) (not b!1403862) (not b!1403803) (not b!1403943) (not b!1403627) (not d!401185) (not b!1403600) (not b!1403616) (not b!1403996) (not d!401067) (not b!1403954) (not d!401133) (not d!401213) (not b!1403958) (not b!1403317) (not d!401111) (not b!1403993) (not d!401147))
(check-sat (not b_next!34929) b_and!94009 (not b_next!34927) b_and!94011 b_and!94013 (not b_next!34923) b_and!93947 (not b_next!34933) (not b_next!34931) (not b_next!34941) b_and!93951 (not b_next!34925) b_and!93955 (not b_next!34939) b_and!94007 b_and!94005)
