; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!131302 () Bool)

(assert start!131302)

(declare-fun b!1423183 () Bool)

(declare-fun e!908545 () Bool)

(declare-fun e!908546 () Bool)

(assert (=> b!1423183 (= e!908545 e!908546)))

(declare-fun res!644396 () Bool)

(assert (=> b!1423183 (=> (not res!644396) (not e!908546))))

(declare-datatypes ((C!7950 0))(
  ( (C!7951 (val!4545 Int)) )
))
(declare-datatypes ((List!14777 0))(
  ( (Nil!14711) (Cons!14711 (h!20112 C!7950) (t!124612 List!14777)) )
))
(declare-datatypes ((IArray!9945 0))(
  ( (IArray!9946 (innerList!5030 List!14777)) )
))
(declare-datatypes ((Conc!4970 0))(
  ( (Node!4970 (left!12559 Conc!4970) (right!12889 Conc!4970) (csize!10170 Int) (cheight!5181 Int)) (Leaf!7458 (xs!7699 IArray!9945) (csize!10171 Int)) (Empty!4970) )
))
(declare-datatypes ((BalanceConc!9880 0))(
  ( (BalanceConc!9881 (c!233979 Conc!4970)) )
))
(declare-datatypes ((List!14778 0))(
  ( (Nil!14712) (Cons!14712 (h!20113 (_ BitVec 16)) (t!124613 List!14778)) )
))
(declare-datatypes ((TokenValue!2662 0))(
  ( (FloatLiteralValue!5324 (text!19079 List!14778)) (TokenValueExt!2661 (__x!9124 Int)) (Broken!13310 (value!82925 List!14778)) (Object!2727) (End!2662) (Def!2662) (Underscore!2662) (Match!2662) (Else!2662) (Error!2662) (Case!2662) (If!2662) (Extends!2662) (Abstract!2662) (Class!2662) (Val!2662) (DelimiterValue!5324 (del!2722 List!14778)) (KeywordValue!2668 (value!82926 List!14778)) (CommentValue!5324 (value!82927 List!14778)) (WhitespaceValue!5324 (value!82928 List!14778)) (IndentationValue!2662 (value!82929 List!14778)) (String!17567) (Int32!2662) (Broken!13311 (value!82930 List!14778)) (Boolean!2663) (Unit!22152) (OperatorValue!2665 (op!2722 List!14778)) (IdentifierValue!5324 (value!82931 List!14778)) (IdentifierValue!5325 (value!82932 List!14778)) (WhitespaceValue!5325 (value!82933 List!14778)) (True!5324) (False!5324) (Broken!13312 (value!82934 List!14778)) (Broken!13313 (value!82935 List!14778)) (True!5325) (RightBrace!2662) (RightBracket!2662) (Colon!2662) (Null!2662) (Comma!2662) (LeftBracket!2662) (False!5325) (LeftBrace!2662) (ImaginaryLiteralValue!2662 (text!19080 List!14778)) (StringLiteralValue!7986 (value!82936 List!14778)) (EOFValue!2662 (value!82937 List!14778)) (IdentValue!2662 (value!82938 List!14778)) (DelimiterValue!5325 (value!82939 List!14778)) (DedentValue!2662 (value!82940 List!14778)) (NewLineValue!2662 (value!82941 List!14778)) (IntegerValue!7986 (value!82942 (_ BitVec 32)) (text!19081 List!14778)) (IntegerValue!7987 (value!82943 Int) (text!19082 List!14778)) (Times!2662) (Or!2662) (Equal!2662) (Minus!2662) (Broken!13314 (value!82944 List!14778)) (And!2662) (Div!2662) (LessEqual!2662) (Mod!2662) (Concat!6548) (Not!2662) (Plus!2662) (SpaceValue!2662 (value!82945 List!14778)) (IntegerValue!7988 (value!82946 Int) (text!19083 List!14778)) (StringLiteralValue!7987 (text!19084 List!14778)) (FloatLiteralValue!5325 (text!19085 List!14778)) (BytesLiteralValue!2662 (value!82947 List!14778)) (CommentValue!5325 (value!82948 List!14778)) (StringLiteralValue!7988 (value!82949 List!14778)) (ErrorTokenValue!2662 (msg!2723 List!14778)) )
))
(declare-datatypes ((Regex!3886 0))(
  ( (ElementMatch!3886 (c!233980 C!7950)) (Concat!6549 (regOne!8284 Regex!3886) (regTwo!8284 Regex!3886)) (EmptyExpr!3886) (Star!3886 (reg!4215 Regex!3886)) (EmptyLang!3886) (Union!3886 (regOne!8285 Regex!3886) (regTwo!8285 Regex!3886)) )
))
(declare-datatypes ((String!17568 0))(
  ( (String!17569 (value!82950 String)) )
))
(declare-datatypes ((TokenValueInjection!4984 0))(
  ( (TokenValueInjection!4985 (toValue!3871 Int) (toChars!3730 Int)) )
))
(declare-datatypes ((Rule!4944 0))(
  ( (Rule!4945 (regex!2572 Regex!3886) (tag!2834 String!17568) (isSeparator!2572 Bool) (transformation!2572 TokenValueInjection!4984)) )
))
(declare-datatypes ((Token!4806 0))(
  ( (Token!4807 (value!82951 TokenValue!2662) (rule!4335 Rule!4944) (size!12105 Int) (originalCharacters!3434 List!14777)) )
))
(declare-datatypes ((List!14779 0))(
  ( (Nil!14713) (Cons!14713 (h!20114 Token!4806) (t!124614 List!14779)) )
))
(declare-datatypes ((IArray!9947 0))(
  ( (IArray!9948 (innerList!5031 List!14779)) )
))
(declare-datatypes ((Conc!4971 0))(
  ( (Node!4971 (left!12560 Conc!4971) (right!12890 Conc!4971) (csize!10172 Int) (cheight!5182 Int)) (Leaf!7459 (xs!7700 IArray!9947) (csize!10173 Int)) (Empty!4971) )
))
(declare-datatypes ((BalanceConc!9882 0))(
  ( (BalanceConc!9883 (c!233981 Conc!4971)) )
))
(declare-datatypes ((List!14780 0))(
  ( (Nil!14714) (Cons!14714 (h!20115 Rule!4944) (t!124615 List!14780)) )
))
(declare-datatypes ((PrintableTokens!926 0))(
  ( (PrintableTokens!927 (rules!11203 List!14780) (tokens!1895 BalanceConc!9882)) )
))
(declare-fun other!32 () PrintableTokens!926)

(declare-fun isEmpty!9101 (BalanceConc!9882) Bool)

(assert (=> b!1423183 (= res!644396 (not (isEmpty!9101 (tokens!1895 other!32))))))

(declare-datatypes ((Unit!22153 0))(
  ( (Unit!22154) )
))
(declare-fun lt!482154 () Unit!22153)

(declare-fun thiss!10022 () PrintableTokens!926)

(declare-fun lemmaInvariant!268 (PrintableTokens!926) Unit!22153)

(assert (=> b!1423183 (= lt!482154 (lemmaInvariant!268 thiss!10022))))

(declare-fun lt!482155 () Unit!22153)

(assert (=> b!1423183 (= lt!482155 (lemmaInvariant!268 other!32))))

(declare-fun b!1423184 () Bool)

(declare-fun e!908544 () Bool)

(declare-fun e!908543 () Bool)

(assert (=> b!1423184 (= e!908544 (not e!908543))))

(declare-fun res!644400 () Bool)

(assert (=> b!1423184 (=> res!644400 e!908543)))

(declare-fun lt!482158 () BalanceConc!9880)

(assert (=> b!1423184 (= res!644400 (not (= lt!482158 (BalanceConc!9881 Empty!4970))))))

(declare-fun e!908541 () Bool)

(assert (=> b!1423184 e!908541))

(declare-fun res!644398 () Bool)

(assert (=> b!1423184 (=> (not res!644398) (not e!908541))))

(declare-fun lt!482156 () BalanceConc!9880)

(declare-fun lt!482157 () BalanceConc!9880)

(assert (=> b!1423184 (= res!644398 (= lt!482156 lt!482157))))

(declare-datatypes ((LexerInterface!2238 0))(
  ( (LexerInterfaceExt!2235 (__x!9125 Int)) (Lexer!2236) )
))
(declare-fun print!1031 (LexerInterface!2238 BalanceConc!9882) BalanceConc!9880)

(assert (=> b!1423184 (= lt!482157 (print!1031 Lexer!2236 (tokens!1895 other!32)))))

(declare-fun print!1032 (PrintableTokens!926) BalanceConc!9880)

(assert (=> b!1423184 (= lt!482156 (print!1032 other!32))))

(declare-fun lt!482147 () Unit!22153)

(declare-fun lt!482159 () List!14779)

(declare-fun theoremInvertabilityWhenTokenListSeparable!58 (LexerInterface!2238 List!14780 List!14779) Unit!22153)

(assert (=> b!1423184 (= lt!482147 (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 other!32) lt!482159))))

(declare-fun lt!482162 () BalanceConc!9880)

(assert (=> b!1423184 (= lt!482162 lt!482158)))

(assert (=> b!1423184 (= lt!482158 (print!1031 Lexer!2236 (tokens!1895 thiss!10022)))))

(assert (=> b!1423184 (= lt!482162 (print!1032 thiss!10022))))

(declare-fun lt!482148 () Unit!22153)

(declare-fun lt!482149 () List!14779)

(assert (=> b!1423184 (= lt!482148 (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 thiss!10022) lt!482149))))

(declare-fun e!908553 () Bool)

(assert (=> b!1423184 e!908553))

(declare-fun res!644390 () Bool)

(assert (=> b!1423184 (=> (not res!644390) (not e!908553))))

(declare-fun lt!482150 () List!14777)

(declare-fun lt!482160 () List!14777)

(declare-fun lt!482153 () List!14779)

(declare-fun printList!692 (LexerInterface!2238 List!14779) List!14777)

(declare-fun ++!3906 (List!14777 List!14777) List!14777)

(assert (=> b!1423184 (= res!644390 (= (printList!692 Lexer!2236 lt!482153) (++!3906 lt!482150 lt!482160)))))

(assert (=> b!1423184 (= lt!482160 (printList!692 Lexer!2236 lt!482159))))

(assert (=> b!1423184 (= lt!482150 (printList!692 Lexer!2236 Nil!14713))))

(declare-fun ++!3907 (List!14779 List!14779) List!14779)

(assert (=> b!1423184 (= lt!482153 (++!3907 Nil!14713 lt!482159))))

(declare-fun lt!482163 () Unit!22153)

(declare-fun lemmaPrintConcatSameAsConcatPrint!57 (LexerInterface!2238 List!14779 List!14779) Unit!22153)

(assert (=> b!1423184 (= lt!482163 (lemmaPrintConcatSameAsConcatPrint!57 Lexer!2236 Nil!14713 lt!482159))))

(declare-fun b!1423185 () Bool)

(declare-fun e!908549 () List!14777)

(assert (=> b!1423185 (= e!908549 Nil!14711)))

(declare-fun b!1423186 () Bool)

(declare-fun res!644392 () Bool)

(assert (=> b!1423186 (=> (not res!644392) (not e!908541))))

(declare-fun printTailRec!666 (LexerInterface!2238 BalanceConc!9882 Int BalanceConc!9880) BalanceConc!9880)

(assert (=> b!1423186 (= res!644392 (= lt!482157 (printTailRec!666 Lexer!2236 (tokens!1895 other!32) 0 (BalanceConc!9881 Empty!4970))))))

(declare-fun b!1423187 () Bool)

(declare-fun e!908548 () Bool)

(declare-fun e!908547 () Bool)

(assert (=> b!1423187 (= e!908548 e!908547)))

(declare-fun res!644394 () Bool)

(assert (=> b!1423187 (=> res!644394 e!908547)))

(declare-fun lt!482161 () PrintableTokens!926)

(assert (=> b!1423187 (= res!644394 (not (= (rules!11203 lt!482161) (rules!11203 thiss!10022))))))

(declare-datatypes ((Option!2824 0))(
  ( (None!2823) (Some!2823 (v!22263 PrintableTokens!926)) )
))
(declare-fun lt!482151 () Option!2824)

(declare-fun get!4521 (Option!2824) PrintableTokens!926)

(assert (=> b!1423187 (= lt!482161 (get!4521 lt!482151))))

(declare-fun e!908552 () Bool)

(declare-fun e!908542 () Bool)

(declare-fun b!1423188 () Bool)

(declare-fun tp!403420 () Bool)

(declare-fun inv!19505 (BalanceConc!9882) Bool)

(assert (=> b!1423188 (= e!908552 (and tp!403420 (inv!19505 (tokens!1895 other!32)) e!908542))))

(declare-fun b!1423189 () Bool)

(declare-fun e!908551 () Bool)

(assert (=> b!1423189 (= e!908551 e!908544)))

(declare-fun res!644395 () Bool)

(assert (=> b!1423189 (=> (not res!644395) (not e!908544))))

(declare-fun lt!482152 () List!14779)

(assert (=> b!1423189 (= res!644395 (= lt!482159 (++!3907 lt!482152 lt!482159)))))

(declare-fun list!5840 (BalanceConc!9882) List!14779)

(assert (=> b!1423189 (= lt!482159 (list!5840 (tokens!1895 other!32)))))

(assert (=> b!1423189 (= lt!482152 (list!5840 (BalanceConc!9883 Empty!4971)))))

(declare-fun b!1423190 () Bool)

(declare-fun tp!403417 () Bool)

(declare-fun inv!19506 (Conc!4971) Bool)

(assert (=> b!1423190 (= e!908542 (and (inv!19506 (c!233981 (tokens!1895 other!32))) tp!403417))))

(declare-fun b!1423191 () Bool)

(assert (=> b!1423191 (= e!908541 (= lt!482160 e!908549))))

(declare-fun c!233978 () Bool)

(assert (=> b!1423191 (= c!233978 (is-Cons!14713 lt!482159))))

(declare-fun b!1423192 () Bool)

(declare-fun isDefined!2285 (Option!2824) Bool)

(assert (=> b!1423192 (= e!908547 (isDefined!2285 lt!482151))))

(declare-fun b!1423193 () Bool)

(assert (=> b!1423193 (= e!908543 e!908548)))

(declare-fun res!644399 () Bool)

(assert (=> b!1423193 (=> res!644399 e!908548)))

(declare-fun isEmpty!9102 (Option!2824) Bool)

(assert (=> b!1423193 (= res!644399 (isEmpty!9102 lt!482151))))

(assert (=> b!1423193 (= lt!482151 (Some!2823 other!32))))

(declare-fun b!1423194 () Bool)

(declare-fun res!644397 () Bool)

(assert (=> b!1423194 (=> res!644397 e!908547)))

(assert (=> b!1423194 (= res!644397 (not (= (list!5840 (tokens!1895 lt!482161)) (++!3907 lt!482149 lt!482159))))))

(declare-fun b!1423195 () Bool)

(declare-fun list!5841 (BalanceConc!9880) List!14777)

(declare-fun charsOf!1497 (Token!4806) BalanceConc!9880)

(assert (=> b!1423195 (= e!908549 (++!3906 (list!5841 (charsOf!1497 (h!20114 lt!482159))) (printList!692 Lexer!2236 (t!124614 lt!482159))))))

(declare-fun b!1423196 () Bool)

(assert (=> b!1423196 (= e!908546 e!908551)))

(declare-fun res!644393 () Bool)

(assert (=> b!1423196 (=> (not res!644393) (not e!908551))))

(declare-fun isEmpty!9103 (List!14779) Bool)

(assert (=> b!1423196 (= res!644393 (isEmpty!9103 lt!482149))))

(assert (=> b!1423196 (= lt!482149 (list!5840 (tokens!1895 thiss!10022)))))

(declare-fun b!1423197 () Bool)

(assert (=> b!1423197 (= e!908553 (= lt!482150 Nil!14711))))

(declare-fun b!1423198 () Bool)

(declare-fun res!644389 () Bool)

(assert (=> b!1423198 (=> (not res!644389) (not e!908546))))

(assert (=> b!1423198 (= res!644389 (isEmpty!9101 (tokens!1895 thiss!10022)))))

(declare-fun res!644391 () Bool)

(assert (=> start!131302 (=> (not res!644391) (not e!908545))))

(assert (=> start!131302 (= res!644391 (= (rules!11203 thiss!10022) (rules!11203 other!32)))))

(assert (=> start!131302 e!908545))

(declare-fun e!908540 () Bool)

(declare-fun inv!19507 (PrintableTokens!926) Bool)

(assert (=> start!131302 (and (inv!19507 thiss!10022) e!908540)))

(assert (=> start!131302 (and (inv!19507 other!32) e!908552)))

(declare-fun b!1423199 () Bool)

(declare-fun e!908550 () Bool)

(declare-fun tp!403418 () Bool)

(assert (=> b!1423199 (= e!908550 (and (inv!19506 (c!233981 (tokens!1895 thiss!10022))) tp!403418))))

(declare-fun b!1423200 () Bool)

(declare-fun tp!403419 () Bool)

(assert (=> b!1423200 (= e!908540 (and tp!403419 (inv!19505 (tokens!1895 thiss!10022)) e!908550))))

(assert (= (and start!131302 res!644391) b!1423183))

(assert (= (and b!1423183 res!644396) b!1423198))

(assert (= (and b!1423198 res!644389) b!1423196))

(assert (= (and b!1423196 res!644393) b!1423189))

(assert (= (and b!1423189 res!644395) b!1423184))

(assert (= (and b!1423184 res!644390) b!1423197))

(assert (= (and b!1423184 res!644398) b!1423186))

(assert (= (and b!1423186 res!644392) b!1423191))

(assert (= (and b!1423191 c!233978) b!1423195))

(assert (= (and b!1423191 (not c!233978)) b!1423185))

(assert (= (and b!1423184 (not res!644400)) b!1423193))

(assert (= (and b!1423193 (not res!644399)) b!1423187))

(assert (= (and b!1423187 (not res!644394)) b!1423194))

(assert (= (and b!1423194 (not res!644397)) b!1423192))

(assert (= b!1423200 b!1423199))

(assert (= start!131302 b!1423200))

(assert (= b!1423188 b!1423190))

(assert (= start!131302 b!1423188))

(declare-fun m!1615829 () Bool)

(assert (=> b!1423192 m!1615829))

(declare-fun m!1615831 () Bool)

(assert (=> b!1423183 m!1615831))

(declare-fun m!1615833 () Bool)

(assert (=> b!1423183 m!1615833))

(declare-fun m!1615835 () Bool)

(assert (=> b!1423183 m!1615835))

(declare-fun m!1615837 () Bool)

(assert (=> b!1423186 m!1615837))

(declare-fun m!1615839 () Bool)

(assert (=> b!1423194 m!1615839))

(declare-fun m!1615841 () Bool)

(assert (=> b!1423194 m!1615841))

(declare-fun m!1615843 () Bool)

(assert (=> b!1423188 m!1615843))

(declare-fun m!1615845 () Bool)

(assert (=> b!1423190 m!1615845))

(declare-fun m!1615847 () Bool)

(assert (=> b!1423198 m!1615847))

(declare-fun m!1615849 () Bool)

(assert (=> b!1423196 m!1615849))

(declare-fun m!1615851 () Bool)

(assert (=> b!1423196 m!1615851))

(declare-fun m!1615853 () Bool)

(assert (=> b!1423195 m!1615853))

(assert (=> b!1423195 m!1615853))

(declare-fun m!1615855 () Bool)

(assert (=> b!1423195 m!1615855))

(declare-fun m!1615857 () Bool)

(assert (=> b!1423195 m!1615857))

(assert (=> b!1423195 m!1615855))

(assert (=> b!1423195 m!1615857))

(declare-fun m!1615859 () Bool)

(assert (=> b!1423195 m!1615859))

(declare-fun m!1615861 () Bool)

(assert (=> b!1423200 m!1615861))

(declare-fun m!1615863 () Bool)

(assert (=> start!131302 m!1615863))

(declare-fun m!1615865 () Bool)

(assert (=> start!131302 m!1615865))

(declare-fun m!1615867 () Bool)

(assert (=> b!1423187 m!1615867))

(declare-fun m!1615869 () Bool)

(assert (=> b!1423184 m!1615869))

(declare-fun m!1615871 () Bool)

(assert (=> b!1423184 m!1615871))

(declare-fun m!1615873 () Bool)

(assert (=> b!1423184 m!1615873))

(declare-fun m!1615875 () Bool)

(assert (=> b!1423184 m!1615875))

(declare-fun m!1615877 () Bool)

(assert (=> b!1423184 m!1615877))

(declare-fun m!1615879 () Bool)

(assert (=> b!1423184 m!1615879))

(declare-fun m!1615881 () Bool)

(assert (=> b!1423184 m!1615881))

(declare-fun m!1615883 () Bool)

(assert (=> b!1423184 m!1615883))

(declare-fun m!1615885 () Bool)

(assert (=> b!1423184 m!1615885))

(declare-fun m!1615887 () Bool)

(assert (=> b!1423184 m!1615887))

(declare-fun m!1615889 () Bool)

(assert (=> b!1423184 m!1615889))

(declare-fun m!1615891 () Bool)

(assert (=> b!1423184 m!1615891))

(declare-fun m!1615893 () Bool)

(assert (=> b!1423193 m!1615893))

(declare-fun m!1615895 () Bool)

(assert (=> b!1423189 m!1615895))

(declare-fun m!1615897 () Bool)

(assert (=> b!1423189 m!1615897))

(declare-fun m!1615899 () Bool)

(assert (=> b!1423189 m!1615899))

(declare-fun m!1615901 () Bool)

(assert (=> b!1423199 m!1615901))

(push 1)

(assert (not b!1423194))

(assert (not b!1423184))

(assert (not b!1423190))

(assert (not b!1423198))

(assert (not b!1423183))

(assert (not b!1423188))

(assert (not b!1423192))

(assert (not b!1423196))

(assert (not b!1423200))

(assert (not start!131302))

(assert (not b!1423199))

(assert (not b!1423186))

(assert (not b!1423193))

(assert (not b!1423189))

(assert (not b!1423195))

(assert (not b!1423187))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!407696 () Bool)

(assert (=> d!407696 (= (get!4521 lt!482151) (v!22263 lt!482151))))

(assert (=> b!1423187 d!407696))

(declare-fun d!407698 () Bool)

(declare-fun lt!482232 () BalanceConc!9880)

(declare-fun printListTailRec!276 (LexerInterface!2238 List!14779 List!14777) List!14777)

(declare-fun dropList!449 (BalanceConc!9882 Int) List!14779)

(assert (=> d!407698 (= (list!5841 lt!482232) (printListTailRec!276 Lexer!2236 (dropList!449 (tokens!1895 other!32) 0) (list!5841 (BalanceConc!9881 Empty!4970))))))

(declare-fun e!908601 () BalanceConc!9880)

(assert (=> d!407698 (= lt!482232 e!908601)))

(declare-fun c!233991 () Bool)

(declare-fun size!12107 (BalanceConc!9882) Int)

(assert (=> d!407698 (= c!233991 (>= 0 (size!12107 (tokens!1895 other!32))))))

(declare-fun e!908600 () Bool)

(assert (=> d!407698 e!908600))

(declare-fun res!644443 () Bool)

(assert (=> d!407698 (=> (not res!644443) (not e!908600))))

(assert (=> d!407698 (= res!644443 (>= 0 0))))

(assert (=> d!407698 (= (printTailRec!666 Lexer!2236 (tokens!1895 other!32) 0 (BalanceConc!9881 Empty!4970)) lt!482232)))

(declare-fun b!1423261 () Bool)

(assert (=> b!1423261 (= e!908600 (<= 0 (size!12107 (tokens!1895 other!32))))))

(declare-fun b!1423262 () Bool)

(assert (=> b!1423262 (= e!908601 (BalanceConc!9881 Empty!4970))))

(declare-fun b!1423263 () Bool)

(declare-fun ++!3910 (BalanceConc!9880 BalanceConc!9880) BalanceConc!9880)

(declare-fun apply!3754 (BalanceConc!9882 Int) Token!4806)

(assert (=> b!1423263 (= e!908601 (printTailRec!666 Lexer!2236 (tokens!1895 other!32) (+ 0 1) (++!3910 (BalanceConc!9881 Empty!4970) (charsOf!1497 (apply!3754 (tokens!1895 other!32) 0)))))))

(declare-fun lt!482234 () List!14779)

(assert (=> b!1423263 (= lt!482234 (list!5840 (tokens!1895 other!32)))))

(declare-fun lt!482230 () Unit!22153)

(declare-fun lemmaDropApply!471 (List!14779 Int) Unit!22153)

(assert (=> b!1423263 (= lt!482230 (lemmaDropApply!471 lt!482234 0))))

(declare-fun head!2810 (List!14779) Token!4806)

(declare-fun drop!717 (List!14779 Int) List!14779)

(declare-fun apply!3755 (List!14779 Int) Token!4806)

(assert (=> b!1423263 (= (head!2810 (drop!717 lt!482234 0)) (apply!3755 lt!482234 0))))

(declare-fun lt!482235 () Unit!22153)

(assert (=> b!1423263 (= lt!482235 lt!482230)))

(declare-fun lt!482233 () List!14779)

(assert (=> b!1423263 (= lt!482233 (list!5840 (tokens!1895 other!32)))))

(declare-fun lt!482231 () Unit!22153)

(declare-fun lemmaDropTail!451 (List!14779 Int) Unit!22153)

(assert (=> b!1423263 (= lt!482231 (lemmaDropTail!451 lt!482233 0))))

(declare-fun tail!2141 (List!14779) List!14779)

(assert (=> b!1423263 (= (tail!2141 (drop!717 lt!482233 0)) (drop!717 lt!482233 (+ 0 1)))))

(declare-fun lt!482229 () Unit!22153)

(assert (=> b!1423263 (= lt!482229 lt!482231)))

(assert (= (and d!407698 res!644443) b!1423261))

(assert (= (and d!407698 c!233991) b!1423262))

(assert (= (and d!407698 (not c!233991)) b!1423263))

(declare-fun m!1615977 () Bool)

(assert (=> d!407698 m!1615977))

(declare-fun m!1615979 () Bool)

(assert (=> d!407698 m!1615979))

(declare-fun m!1615981 () Bool)

(assert (=> d!407698 m!1615981))

(declare-fun m!1615983 () Bool)

(assert (=> d!407698 m!1615983))

(declare-fun m!1615985 () Bool)

(assert (=> d!407698 m!1615985))

(assert (=> d!407698 m!1615979))

(assert (=> d!407698 m!1615977))

(assert (=> b!1423261 m!1615985))

(declare-fun m!1615987 () Bool)

(assert (=> b!1423263 m!1615987))

(declare-fun m!1615989 () Bool)

(assert (=> b!1423263 m!1615989))

(declare-fun m!1615991 () Bool)

(assert (=> b!1423263 m!1615991))

(declare-fun m!1615993 () Bool)

(assert (=> b!1423263 m!1615993))

(assert (=> b!1423263 m!1615897))

(declare-fun m!1615995 () Bool)

(assert (=> b!1423263 m!1615995))

(declare-fun m!1615997 () Bool)

(assert (=> b!1423263 m!1615997))

(declare-fun m!1615999 () Bool)

(assert (=> b!1423263 m!1615999))

(assert (=> b!1423263 m!1615987))

(declare-fun m!1616001 () Bool)

(assert (=> b!1423263 m!1616001))

(declare-fun m!1616003 () Bool)

(assert (=> b!1423263 m!1616003))

(declare-fun m!1616005 () Bool)

(assert (=> b!1423263 m!1616005))

(assert (=> b!1423263 m!1615997))

(declare-fun m!1616007 () Bool)

(assert (=> b!1423263 m!1616007))

(assert (=> b!1423263 m!1616007))

(assert (=> b!1423263 m!1616005))

(assert (=> b!1423263 m!1615991))

(declare-fun m!1616009 () Bool)

(assert (=> b!1423263 m!1616009))

(assert (=> b!1423186 d!407698))

(declare-fun d!407700 () Bool)

(assert (=> d!407700 (= (isEmpty!9103 lt!482149) (is-Nil!14713 lt!482149))))

(assert (=> b!1423196 d!407700))

(declare-fun d!407702 () Bool)

(declare-fun list!5844 (Conc!4971) List!14779)

(assert (=> d!407702 (= (list!5840 (tokens!1895 thiss!10022)) (list!5844 (c!233981 (tokens!1895 thiss!10022))))))

(declare-fun bs!339913 () Bool)

(assert (= bs!339913 d!407702))

(declare-fun m!1616011 () Bool)

(assert (=> bs!339913 m!1616011))

(assert (=> b!1423196 d!407702))

(declare-fun d!407704 () Bool)

(declare-fun res!644450 () Bool)

(declare-fun e!908604 () Bool)

(assert (=> d!407704 (=> (not res!644450) (not e!908604))))

(declare-fun isEmpty!9107 (List!14780) Bool)

(assert (=> d!407704 (= res!644450 (not (isEmpty!9107 (rules!11203 thiss!10022))))))

(assert (=> d!407704 (= (inv!19507 thiss!10022) e!908604)))

(declare-fun b!1423270 () Bool)

(declare-fun res!644451 () Bool)

(assert (=> b!1423270 (=> (not res!644451) (not e!908604))))

(declare-fun rulesInvariant!2092 (LexerInterface!2238 List!14780) Bool)

(assert (=> b!1423270 (= res!644451 (rulesInvariant!2092 Lexer!2236 (rules!11203 thiss!10022)))))

(declare-fun b!1423271 () Bool)

(declare-fun res!644452 () Bool)

(assert (=> b!1423271 (=> (not res!644452) (not e!908604))))

(declare-fun rulesProduceEachTokenIndividually!819 (LexerInterface!2238 List!14780 BalanceConc!9882) Bool)

(assert (=> b!1423271 (= res!644452 (rulesProduceEachTokenIndividually!819 Lexer!2236 (rules!11203 thiss!10022) (tokens!1895 thiss!10022)))))

(declare-fun b!1423272 () Bool)

(declare-fun separableTokens!204 (LexerInterface!2238 BalanceConc!9882 List!14780) Bool)

(assert (=> b!1423272 (= e!908604 (separableTokens!204 Lexer!2236 (tokens!1895 thiss!10022) (rules!11203 thiss!10022)))))

(assert (= (and d!407704 res!644450) b!1423270))

(assert (= (and b!1423270 res!644451) b!1423271))

(assert (= (and b!1423271 res!644452) b!1423272))

(declare-fun m!1616013 () Bool)

(assert (=> d!407704 m!1616013))

(declare-fun m!1616015 () Bool)

(assert (=> b!1423270 m!1616015))

(declare-fun m!1616017 () Bool)

(assert (=> b!1423271 m!1616017))

(declare-fun m!1616019 () Bool)

(assert (=> b!1423272 m!1616019))

(assert (=> start!131302 d!407704))

(declare-fun d!407706 () Bool)

(declare-fun res!644453 () Bool)

(declare-fun e!908605 () Bool)

(assert (=> d!407706 (=> (not res!644453) (not e!908605))))

(assert (=> d!407706 (= res!644453 (not (isEmpty!9107 (rules!11203 other!32))))))

(assert (=> d!407706 (= (inv!19507 other!32) e!908605)))

(declare-fun b!1423273 () Bool)

(declare-fun res!644454 () Bool)

(assert (=> b!1423273 (=> (not res!644454) (not e!908605))))

(assert (=> b!1423273 (= res!644454 (rulesInvariant!2092 Lexer!2236 (rules!11203 other!32)))))

(declare-fun b!1423274 () Bool)

(declare-fun res!644455 () Bool)

(assert (=> b!1423274 (=> (not res!644455) (not e!908605))))

(assert (=> b!1423274 (= res!644455 (rulesProduceEachTokenIndividually!819 Lexer!2236 (rules!11203 other!32) (tokens!1895 other!32)))))

(declare-fun b!1423275 () Bool)

(assert (=> b!1423275 (= e!908605 (separableTokens!204 Lexer!2236 (tokens!1895 other!32) (rules!11203 other!32)))))

(assert (= (and d!407706 res!644453) b!1423273))

(assert (= (and b!1423273 res!644454) b!1423274))

(assert (= (and b!1423274 res!644455) b!1423275))

(declare-fun m!1616021 () Bool)

(assert (=> d!407706 m!1616021))

(declare-fun m!1616023 () Bool)

(assert (=> b!1423273 m!1616023))

(declare-fun m!1616025 () Bool)

(assert (=> b!1423274 m!1616025))

(declare-fun m!1616027 () Bool)

(assert (=> b!1423275 m!1616027))

(assert (=> start!131302 d!407706))

(declare-fun d!407708 () Bool)

(declare-fun isBalanced!1477 (Conc!4971) Bool)

(assert (=> d!407708 (= (inv!19505 (tokens!1895 thiss!10022)) (isBalanced!1477 (c!233981 (tokens!1895 thiss!10022))))))

(declare-fun bs!339914 () Bool)

(assert (= bs!339914 d!407708))

(declare-fun m!1616029 () Bool)

(assert (=> bs!339914 m!1616029))

(assert (=> b!1423200 d!407708))

(declare-fun b!1423284 () Bool)

(declare-fun e!908610 () List!14779)

(assert (=> b!1423284 (= e!908610 lt!482159)))

(declare-fun b!1423285 () Bool)

(assert (=> b!1423285 (= e!908610 (Cons!14713 (h!20114 lt!482152) (++!3907 (t!124614 lt!482152) lt!482159)))))

(declare-fun b!1423286 () Bool)

(declare-fun res!644460 () Bool)

(declare-fun e!908611 () Bool)

(assert (=> b!1423286 (=> (not res!644460) (not e!908611))))

(declare-fun lt!482238 () List!14779)

(declare-fun size!12108 (List!14779) Int)

(assert (=> b!1423286 (= res!644460 (= (size!12108 lt!482238) (+ (size!12108 lt!482152) (size!12108 lt!482159))))))

(declare-fun b!1423287 () Bool)

(assert (=> b!1423287 (= e!908611 (or (not (= lt!482159 Nil!14713)) (= lt!482238 lt!482152)))))

(declare-fun d!407710 () Bool)

(assert (=> d!407710 e!908611))

(declare-fun res!644461 () Bool)

(assert (=> d!407710 (=> (not res!644461) (not e!908611))))

(declare-fun content!2173 (List!14779) (Set Token!4806))

(assert (=> d!407710 (= res!644461 (= (content!2173 lt!482238) (set.union (content!2173 lt!482152) (content!2173 lt!482159))))))

(assert (=> d!407710 (= lt!482238 e!908610)))

(declare-fun c!233994 () Bool)

(assert (=> d!407710 (= c!233994 (is-Nil!14713 lt!482152))))

(assert (=> d!407710 (= (++!3907 lt!482152 lt!482159) lt!482238)))

(assert (= (and d!407710 c!233994) b!1423284))

(assert (= (and d!407710 (not c!233994)) b!1423285))

(assert (= (and d!407710 res!644461) b!1423286))

(assert (= (and b!1423286 res!644460) b!1423287))

(declare-fun m!1616031 () Bool)

(assert (=> b!1423285 m!1616031))

(declare-fun m!1616033 () Bool)

(assert (=> b!1423286 m!1616033))

(declare-fun m!1616035 () Bool)

(assert (=> b!1423286 m!1616035))

(declare-fun m!1616037 () Bool)

(assert (=> b!1423286 m!1616037))

(declare-fun m!1616039 () Bool)

(assert (=> d!407710 m!1616039))

(declare-fun m!1616041 () Bool)

(assert (=> d!407710 m!1616041))

(declare-fun m!1616043 () Bool)

(assert (=> d!407710 m!1616043))

(assert (=> b!1423189 d!407710))

(declare-fun d!407712 () Bool)

(assert (=> d!407712 (= (list!5840 (tokens!1895 other!32)) (list!5844 (c!233981 (tokens!1895 other!32))))))

(declare-fun bs!339915 () Bool)

(assert (= bs!339915 d!407712))

(declare-fun m!1616045 () Bool)

(assert (=> bs!339915 m!1616045))

(assert (=> b!1423189 d!407712))

(declare-fun d!407714 () Bool)

(assert (=> d!407714 (= (list!5840 (BalanceConc!9883 Empty!4971)) (list!5844 (c!233981 (BalanceConc!9883 Empty!4971))))))

(declare-fun bs!339916 () Bool)

(assert (= bs!339916 d!407714))

(declare-fun m!1616047 () Bool)

(assert (=> bs!339916 m!1616047))

(assert (=> b!1423189 d!407714))

(declare-fun d!407716 () Bool)

(declare-fun c!233997 () Bool)

(assert (=> d!407716 (= c!233997 (is-Node!4971 (c!233981 (tokens!1895 thiss!10022))))))

(declare-fun e!908616 () Bool)

(assert (=> d!407716 (= (inv!19506 (c!233981 (tokens!1895 thiss!10022))) e!908616)))

(declare-fun b!1423294 () Bool)

(declare-fun inv!19511 (Conc!4971) Bool)

(assert (=> b!1423294 (= e!908616 (inv!19511 (c!233981 (tokens!1895 thiss!10022))))))

(declare-fun b!1423295 () Bool)

(declare-fun e!908617 () Bool)

(assert (=> b!1423295 (= e!908616 e!908617)))

(declare-fun res!644464 () Bool)

(assert (=> b!1423295 (= res!644464 (not (is-Leaf!7459 (c!233981 (tokens!1895 thiss!10022)))))))

(assert (=> b!1423295 (=> res!644464 e!908617)))

(declare-fun b!1423296 () Bool)

(declare-fun inv!19512 (Conc!4971) Bool)

(assert (=> b!1423296 (= e!908617 (inv!19512 (c!233981 (tokens!1895 thiss!10022))))))

(assert (= (and d!407716 c!233997) b!1423294))

(assert (= (and d!407716 (not c!233997)) b!1423295))

(assert (= (and b!1423295 (not res!644464)) b!1423296))

(declare-fun m!1616049 () Bool)

(assert (=> b!1423294 m!1616049))

(declare-fun m!1616051 () Bool)

(assert (=> b!1423296 m!1616051))

(assert (=> b!1423199 d!407716))

(declare-fun d!407718 () Bool)

(assert (=> d!407718 (= (inv!19505 (tokens!1895 other!32)) (isBalanced!1477 (c!233981 (tokens!1895 other!32))))))

(declare-fun bs!339917 () Bool)

(assert (= bs!339917 d!407718))

(declare-fun m!1616053 () Bool)

(assert (=> bs!339917 m!1616053))

(assert (=> b!1423188 d!407718))

(declare-fun d!407720 () Bool)

(declare-fun lt!482241 () Bool)

(assert (=> d!407720 (= lt!482241 (isEmpty!9103 (list!5840 (tokens!1895 thiss!10022))))))

(declare-fun isEmpty!9108 (Conc!4971) Bool)

(assert (=> d!407720 (= lt!482241 (isEmpty!9108 (c!233981 (tokens!1895 thiss!10022))))))

(assert (=> d!407720 (= (isEmpty!9101 (tokens!1895 thiss!10022)) lt!482241)))

(declare-fun bs!339918 () Bool)

(assert (= bs!339918 d!407720))

(assert (=> bs!339918 m!1615851))

(assert (=> bs!339918 m!1615851))

(declare-fun m!1616055 () Bool)

(assert (=> bs!339918 m!1616055))

(declare-fun m!1616057 () Bool)

(assert (=> bs!339918 m!1616057))

(assert (=> b!1423198 d!407720))

(declare-fun d!407722 () Bool)

(assert (=> d!407722 (= (isDefined!2285 lt!482151) (not (isEmpty!9102 lt!482151)))))

(declare-fun bs!339919 () Bool)

(assert (= bs!339919 d!407722))

(assert (=> bs!339919 m!1615893))

(assert (=> b!1423192 d!407722))

(declare-fun d!407724 () Bool)

(declare-fun c!233998 () Bool)

(assert (=> d!407724 (= c!233998 (is-Node!4971 (c!233981 (tokens!1895 other!32))))))

(declare-fun e!908618 () Bool)

(assert (=> d!407724 (= (inv!19506 (c!233981 (tokens!1895 other!32))) e!908618)))

(declare-fun b!1423297 () Bool)

(assert (=> b!1423297 (= e!908618 (inv!19511 (c!233981 (tokens!1895 other!32))))))

(declare-fun b!1423298 () Bool)

(declare-fun e!908619 () Bool)

(assert (=> b!1423298 (= e!908618 e!908619)))

(declare-fun res!644465 () Bool)

(assert (=> b!1423298 (= res!644465 (not (is-Leaf!7459 (c!233981 (tokens!1895 other!32)))))))

(assert (=> b!1423298 (=> res!644465 e!908619)))

(declare-fun b!1423299 () Bool)

(assert (=> b!1423299 (= e!908619 (inv!19512 (c!233981 (tokens!1895 other!32))))))

(assert (= (and d!407724 c!233998) b!1423297))

(assert (= (and d!407724 (not c!233998)) b!1423298))

(assert (= (and b!1423298 (not res!644465)) b!1423299))

(declare-fun m!1616059 () Bool)

(assert (=> b!1423297 m!1616059))

(declare-fun m!1616061 () Bool)

(assert (=> b!1423299 m!1616061))

(assert (=> b!1423190 d!407724))

(declare-fun b!1423308 () Bool)

(declare-fun e!908625 () List!14777)

(assert (=> b!1423308 (= e!908625 (printList!692 Lexer!2236 (t!124614 lt!482159)))))

(declare-fun b!1423311 () Bool)

(declare-fun e!908624 () Bool)

(declare-fun lt!482244 () List!14777)

(assert (=> b!1423311 (= e!908624 (or (not (= (printList!692 Lexer!2236 (t!124614 lt!482159)) Nil!14711)) (= lt!482244 (list!5841 (charsOf!1497 (h!20114 lt!482159))))))))

(declare-fun b!1423309 () Bool)

(assert (=> b!1423309 (= e!908625 (Cons!14711 (h!20112 (list!5841 (charsOf!1497 (h!20114 lt!482159)))) (++!3906 (t!124612 (list!5841 (charsOf!1497 (h!20114 lt!482159)))) (printList!692 Lexer!2236 (t!124614 lt!482159)))))))

(declare-fun d!407726 () Bool)

(assert (=> d!407726 e!908624))

(declare-fun res!644471 () Bool)

(assert (=> d!407726 (=> (not res!644471) (not e!908624))))

(declare-fun content!2174 (List!14777) (Set C!7950))

(assert (=> d!407726 (= res!644471 (= (content!2174 lt!482244) (set.union (content!2174 (list!5841 (charsOf!1497 (h!20114 lt!482159)))) (content!2174 (printList!692 Lexer!2236 (t!124614 lt!482159))))))))

(assert (=> d!407726 (= lt!482244 e!908625)))

(declare-fun c!234001 () Bool)

(assert (=> d!407726 (= c!234001 (is-Nil!14711 (list!5841 (charsOf!1497 (h!20114 lt!482159)))))))

(assert (=> d!407726 (= (++!3906 (list!5841 (charsOf!1497 (h!20114 lt!482159))) (printList!692 Lexer!2236 (t!124614 lt!482159))) lt!482244)))

(declare-fun b!1423310 () Bool)

(declare-fun res!644470 () Bool)

(assert (=> b!1423310 (=> (not res!644470) (not e!908624))))

(declare-fun size!12109 (List!14777) Int)

(assert (=> b!1423310 (= res!644470 (= (size!12109 lt!482244) (+ (size!12109 (list!5841 (charsOf!1497 (h!20114 lt!482159)))) (size!12109 (printList!692 Lexer!2236 (t!124614 lt!482159))))))))

(assert (= (and d!407726 c!234001) b!1423308))

(assert (= (and d!407726 (not c!234001)) b!1423309))

(assert (= (and d!407726 res!644471) b!1423310))

(assert (= (and b!1423310 res!644470) b!1423311))

(assert (=> b!1423309 m!1615857))

(declare-fun m!1616063 () Bool)

(assert (=> b!1423309 m!1616063))

(declare-fun m!1616065 () Bool)

(assert (=> d!407726 m!1616065))

(assert (=> d!407726 m!1615855))

(declare-fun m!1616067 () Bool)

(assert (=> d!407726 m!1616067))

(assert (=> d!407726 m!1615857))

(declare-fun m!1616069 () Bool)

(assert (=> d!407726 m!1616069))

(declare-fun m!1616071 () Bool)

(assert (=> b!1423310 m!1616071))

(assert (=> b!1423310 m!1615855))

(declare-fun m!1616073 () Bool)

(assert (=> b!1423310 m!1616073))

(assert (=> b!1423310 m!1615857))

(declare-fun m!1616075 () Bool)

(assert (=> b!1423310 m!1616075))

(assert (=> b!1423195 d!407726))

(declare-fun d!407728 () Bool)

(declare-fun list!5845 (Conc!4970) List!14777)

(assert (=> d!407728 (= (list!5841 (charsOf!1497 (h!20114 lt!482159))) (list!5845 (c!233979 (charsOf!1497 (h!20114 lt!482159)))))))

(declare-fun bs!339920 () Bool)

(assert (= bs!339920 d!407728))

(declare-fun m!1616077 () Bool)

(assert (=> bs!339920 m!1616077))

(assert (=> b!1423195 d!407728))

(declare-fun d!407730 () Bool)

(declare-fun lt!482247 () BalanceConc!9880)

(assert (=> d!407730 (= (list!5841 lt!482247) (originalCharacters!3434 (h!20114 lt!482159)))))

(declare-fun dynLambda!6739 (Int TokenValue!2662) BalanceConc!9880)

(assert (=> d!407730 (= lt!482247 (dynLambda!6739 (toChars!3730 (transformation!2572 (rule!4335 (h!20114 lt!482159)))) (value!82951 (h!20114 lt!482159))))))

(assert (=> d!407730 (= (charsOf!1497 (h!20114 lt!482159)) lt!482247)))

(declare-fun b_lambda!44647 () Bool)

(assert (=> (not b_lambda!44647) (not d!407730)))

(declare-fun bs!339921 () Bool)

(assert (= bs!339921 d!407730))

(declare-fun m!1616079 () Bool)

(assert (=> bs!339921 m!1616079))

(declare-fun m!1616081 () Bool)

(assert (=> bs!339921 m!1616081))

(assert (=> b!1423195 d!407730))

(declare-fun d!407732 () Bool)

(declare-fun c!234004 () Bool)

(assert (=> d!407732 (= c!234004 (is-Cons!14713 (t!124614 lt!482159)))))

(declare-fun e!908628 () List!14777)

(assert (=> d!407732 (= (printList!692 Lexer!2236 (t!124614 lt!482159)) e!908628)))

(declare-fun b!1423316 () Bool)

(assert (=> b!1423316 (= e!908628 (++!3906 (list!5841 (charsOf!1497 (h!20114 (t!124614 lt!482159)))) (printList!692 Lexer!2236 (t!124614 (t!124614 lt!482159)))))))

(declare-fun b!1423317 () Bool)

(assert (=> b!1423317 (= e!908628 Nil!14711)))

(assert (= (and d!407732 c!234004) b!1423316))

(assert (= (and d!407732 (not c!234004)) b!1423317))

(declare-fun m!1616083 () Bool)

(assert (=> b!1423316 m!1616083))

(assert (=> b!1423316 m!1616083))

(declare-fun m!1616085 () Bool)

(assert (=> b!1423316 m!1616085))

(declare-fun m!1616087 () Bool)

(assert (=> b!1423316 m!1616087))

(assert (=> b!1423316 m!1616085))

(assert (=> b!1423316 m!1616087))

(declare-fun m!1616089 () Bool)

(assert (=> b!1423316 m!1616089))

(assert (=> b!1423195 d!407732))

(declare-fun d!407734 () Bool)

(declare-fun c!234005 () Bool)

(assert (=> d!407734 (= c!234005 (is-Cons!14713 lt!482153))))

(declare-fun e!908629 () List!14777)

(assert (=> d!407734 (= (printList!692 Lexer!2236 lt!482153) e!908629)))

(declare-fun b!1423318 () Bool)

(assert (=> b!1423318 (= e!908629 (++!3906 (list!5841 (charsOf!1497 (h!20114 lt!482153))) (printList!692 Lexer!2236 (t!124614 lt!482153))))))

(declare-fun b!1423319 () Bool)

(assert (=> b!1423319 (= e!908629 Nil!14711)))

(assert (= (and d!407734 c!234005) b!1423318))

(assert (= (and d!407734 (not c!234005)) b!1423319))

(declare-fun m!1616091 () Bool)

(assert (=> b!1423318 m!1616091))

(assert (=> b!1423318 m!1616091))

(declare-fun m!1616093 () Bool)

(assert (=> b!1423318 m!1616093))

(declare-fun m!1616095 () Bool)

(assert (=> b!1423318 m!1616095))

(assert (=> b!1423318 m!1616093))

(assert (=> b!1423318 m!1616095))

(declare-fun m!1616097 () Bool)

(assert (=> b!1423318 m!1616097))

(assert (=> b!1423184 d!407734))

(declare-fun d!407736 () Bool)

(declare-fun c!234006 () Bool)

(assert (=> d!407736 (= c!234006 (is-Cons!14713 Nil!14713))))

(declare-fun e!908630 () List!14777)

(assert (=> d!407736 (= (printList!692 Lexer!2236 Nil!14713) e!908630)))

(declare-fun b!1423320 () Bool)

(assert (=> b!1423320 (= e!908630 (++!3906 (list!5841 (charsOf!1497 (h!20114 Nil!14713))) (printList!692 Lexer!2236 (t!124614 Nil!14713))))))

(declare-fun b!1423321 () Bool)

(assert (=> b!1423321 (= e!908630 Nil!14711)))

(assert (= (and d!407736 c!234006) b!1423320))

(assert (= (and d!407736 (not c!234006)) b!1423321))

(declare-fun m!1616099 () Bool)

(assert (=> b!1423320 m!1616099))

(assert (=> b!1423320 m!1616099))

(declare-fun m!1616101 () Bool)

(assert (=> b!1423320 m!1616101))

(declare-fun m!1616103 () Bool)

(assert (=> b!1423320 m!1616103))

(assert (=> b!1423320 m!1616101))

(assert (=> b!1423320 m!1616103))

(declare-fun m!1616105 () Bool)

(assert (=> b!1423320 m!1616105))

(assert (=> b!1423184 d!407736))

(declare-fun d!407738 () Bool)

(declare-fun e!908649 () Bool)

(assert (=> d!407738 e!908649))

(declare-fun res!644495 () Bool)

(assert (=> d!407738 (=> (not res!644495) (not e!908649))))

(declare-fun lt!482279 () BalanceConc!9880)

(declare-datatypes ((tuple2!14046 0))(
  ( (tuple2!14047 (_1!7909 BalanceConc!9882) (_2!7909 BalanceConc!9880)) )
))
(declare-fun lex!1024 (LexerInterface!2238 List!14780 BalanceConc!9880) tuple2!14046)

(assert (=> d!407738 (= res!644495 (= (list!5840 (_1!7909 (lex!1024 Lexer!2236 (rules!11203 other!32) lt!482279))) (list!5840 (tokens!1895 other!32))))))

(assert (=> d!407738 (= lt!482279 (print!1031 Lexer!2236 (tokens!1895 other!32)))))

(declare-fun lt!482280 () Unit!22153)

(assert (=> d!407738 (= lt!482280 (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 other!32) (list!5840 (tokens!1895 other!32))))))

(assert (=> d!407738 (= (print!1032 other!32) lt!482279)))

(declare-fun b!1423357 () Bool)

(declare-fun isEmpty!9109 (List!14777) Bool)

(assert (=> b!1423357 (= e!908649 (isEmpty!9109 (list!5841 (_2!7909 (lex!1024 Lexer!2236 (rules!11203 other!32) lt!482279)))))))

(assert (= (and d!407738 res!644495) b!1423357))

(declare-fun m!1616177 () Bool)

(assert (=> d!407738 m!1616177))

(assert (=> d!407738 m!1615897))

(declare-fun m!1616179 () Bool)

(assert (=> d!407738 m!1616179))

(assert (=> d!407738 m!1615897))

(assert (=> d!407738 m!1615885))

(declare-fun m!1616181 () Bool)

(assert (=> d!407738 m!1616181))

(assert (=> b!1423357 m!1616181))

(declare-fun m!1616183 () Bool)

(assert (=> b!1423357 m!1616183))

(assert (=> b!1423357 m!1616183))

(declare-fun m!1616185 () Bool)

(assert (=> b!1423357 m!1616185))

(assert (=> b!1423184 d!407738))

(declare-fun d!407756 () Bool)

(assert (=> d!407756 (= (printList!692 Lexer!2236 (++!3907 Nil!14713 lt!482159)) (++!3906 (printList!692 Lexer!2236 Nil!14713) (printList!692 Lexer!2236 lt!482159)))))

(declare-fun lt!482285 () Unit!22153)

(declare-fun choose!8759 (LexerInterface!2238 List!14779 List!14779) Unit!22153)

(assert (=> d!407756 (= lt!482285 (choose!8759 Lexer!2236 Nil!14713 lt!482159))))

(assert (=> d!407756 (= (lemmaPrintConcatSameAsConcatPrint!57 Lexer!2236 Nil!14713 lt!482159) lt!482285)))

(declare-fun bs!339925 () Bool)

(assert (= bs!339925 d!407756))

(declare-fun m!1616195 () Bool)

(assert (=> bs!339925 m!1616195))

(assert (=> bs!339925 m!1615881))

(assert (=> bs!339925 m!1615889))

(assert (=> bs!339925 m!1615881))

(declare-fun m!1616197 () Bool)

(assert (=> bs!339925 m!1616197))

(assert (=> bs!339925 m!1615869))

(assert (=> bs!339925 m!1615889))

(declare-fun m!1616199 () Bool)

(assert (=> bs!339925 m!1616199))

(assert (=> bs!339925 m!1615869))

(assert (=> b!1423184 d!407756))

(declare-fun d!407760 () Bool)

(declare-fun e!908669 () Bool)

(assert (=> d!407760 e!908669))

(declare-fun res!644506 () Bool)

(assert (=> d!407760 (=> (not res!644506) (not e!908669))))

(declare-fun seqFromList!1685 (List!14779) BalanceConc!9882)

(assert (=> d!407760 (= res!644506 (= (list!5840 (_1!7909 (lex!1024 Lexer!2236 (rules!11203 other!32) (print!1031 Lexer!2236 (seqFromList!1685 lt!482159))))) lt!482159))))

(declare-fun lt!482413 () Unit!22153)

(declare-fun e!908668 () Unit!22153)

(assert (=> d!407760 (= lt!482413 e!908668)))

(declare-fun c!234024 () Bool)

(assert (=> d!407760 (= c!234024 (or (is-Nil!14713 lt!482159) (is-Nil!14713 (t!124614 lt!482159))))))

(assert (=> d!407760 (not (isEmpty!9107 (rules!11203 other!32)))))

(assert (=> d!407760 (= (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 other!32) lt!482159) lt!482413)))

(declare-fun b!1423390 () Bool)

(declare-fun Unit!22158 () Unit!22153)

(assert (=> b!1423390 (= e!908668 Unit!22158)))

(declare-fun b!1423391 () Bool)

(declare-fun Unit!22159 () Unit!22153)

(assert (=> b!1423391 (= e!908668 Unit!22159)))

(declare-fun lt!482402 () BalanceConc!9880)

(assert (=> b!1423391 (= lt!482402 (print!1031 Lexer!2236 (seqFromList!1685 lt!482159)))))

(declare-fun lt!482419 () BalanceConc!9880)

(assert (=> b!1423391 (= lt!482419 (print!1031 Lexer!2236 (seqFromList!1685 (t!124614 lt!482159))))))

(declare-fun lt!482411 () tuple2!14046)

(assert (=> b!1423391 (= lt!482411 (lex!1024 Lexer!2236 (rules!11203 other!32) lt!482419))))

(declare-fun lt!482398 () List!14777)

(assert (=> b!1423391 (= lt!482398 (list!5841 (charsOf!1497 (h!20114 lt!482159))))))

(declare-fun lt!482410 () List!14777)

(assert (=> b!1423391 (= lt!482410 (list!5841 lt!482419))))

(declare-fun lt!482396 () Unit!22153)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!749 (List!14777 List!14777) Unit!22153)

(assert (=> b!1423391 (= lt!482396 (lemmaConcatTwoListThenFirstIsPrefix!749 lt!482398 lt!482410))))

(declare-fun isPrefix!1182 (List!14777 List!14777) Bool)

(assert (=> b!1423391 (isPrefix!1182 lt!482398 (++!3906 lt!482398 lt!482410))))

(declare-fun lt!482409 () Unit!22153)

(assert (=> b!1423391 (= lt!482409 lt!482396)))

(declare-fun lt!482397 () Unit!22153)

(assert (=> b!1423391 (= lt!482397 (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 other!32) (t!124614 lt!482159)))))

(declare-fun lt!482416 () Unit!22153)

(declare-fun seqFromListBHdTlConstructive!78 (Token!4806 List!14779 BalanceConc!9882) Unit!22153)

(assert (=> b!1423391 (= lt!482416 (seqFromListBHdTlConstructive!78 (h!20114 (t!124614 lt!482159)) (t!124614 (t!124614 lt!482159)) (_1!7909 lt!482411)))))

(declare-fun prepend!394 (BalanceConc!9882 Token!4806) BalanceConc!9882)

(assert (=> b!1423391 (= (list!5840 (_1!7909 lt!482411)) (list!5840 (prepend!394 (seqFromList!1685 (t!124614 (t!124614 lt!482159))) (h!20114 (t!124614 lt!482159)))))))

(declare-fun lt!482417 () Unit!22153)

(assert (=> b!1423391 (= lt!482417 lt!482416)))

(declare-datatypes ((tuple2!14048 0))(
  ( (tuple2!14049 (_1!7910 Token!4806) (_2!7910 List!14777)) )
))
(declare-datatypes ((Option!2826 0))(
  ( (None!2825) (Some!2825 (v!22273 tuple2!14048)) )
))
(declare-fun lt!482407 () Option!2826)

(declare-fun maxPrefix!1172 (LexerInterface!2238 List!14780 List!14777) Option!2826)

(assert (=> b!1423391 (= lt!482407 (maxPrefix!1172 Lexer!2236 (rules!11203 other!32) (list!5841 lt!482402)))))

(declare-fun singletonSeq!1189 (Token!4806) BalanceConc!9882)

(assert (=> b!1423391 (= (print!1031 Lexer!2236 (singletonSeq!1189 (h!20114 lt!482159))) (printTailRec!666 Lexer!2236 (singletonSeq!1189 (h!20114 lt!482159)) 0 (BalanceConc!9881 Empty!4970)))))

(declare-fun lt!482400 () Unit!22153)

(declare-fun Unit!22160 () Unit!22153)

(assert (=> b!1423391 (= lt!482400 Unit!22160)))

(declare-fun lt!482404 () Unit!22153)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!222 (LexerInterface!2238 List!14780 List!14777 List!14777) Unit!22153)

(assert (=> b!1423391 (= lt!482404 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!222 Lexer!2236 (rules!11203 other!32) (list!5841 (charsOf!1497 (h!20114 lt!482159))) (list!5841 lt!482419)))))

(assert (=> b!1423391 (= (list!5841 (charsOf!1497 (h!20114 lt!482159))) (originalCharacters!3434 (h!20114 lt!482159)))))

(declare-fun lt!482408 () Unit!22153)

(declare-fun Unit!22161 () Unit!22153)

(assert (=> b!1423391 (= lt!482408 Unit!22161)))

(declare-fun singletonSeq!1190 (C!7950) BalanceConc!9880)

(declare-fun apply!3756 (BalanceConc!9880 Int) C!7950)

(declare-fun head!2811 (List!14777) C!7950)

(assert (=> b!1423391 (= (list!5841 (singletonSeq!1190 (apply!3756 (charsOf!1497 (h!20114 (t!124614 lt!482159))) 0))) (Cons!14711 (head!2811 (originalCharacters!3434 (h!20114 (t!124614 lt!482159)))) Nil!14711))))

(declare-fun lt!482403 () Unit!22153)

(declare-fun Unit!22162 () Unit!22153)

(assert (=> b!1423391 (= lt!482403 Unit!22162)))

(assert (=> b!1423391 (= (list!5841 (singletonSeq!1190 (apply!3756 (charsOf!1497 (h!20114 (t!124614 lt!482159))) 0))) (Cons!14711 (head!2811 (list!5841 lt!482419)) Nil!14711))))

(declare-fun lt!482406 () Unit!22153)

(declare-fun Unit!22163 () Unit!22153)

(assert (=> b!1423391 (= lt!482406 Unit!22163)))

(declare-fun head!2812 (BalanceConc!9880) C!7950)

(assert (=> b!1423391 (= (list!5841 (singletonSeq!1190 (apply!3756 (charsOf!1497 (h!20114 (t!124614 lt!482159))) 0))) (Cons!14711 (head!2812 lt!482419) Nil!14711))))

(declare-fun lt!482415 () Unit!22153)

(declare-fun Unit!22164 () Unit!22153)

(assert (=> b!1423391 (= lt!482415 Unit!22164)))

(declare-fun isDefined!2287 (Option!2826) Bool)

(assert (=> b!1423391 (isDefined!2287 (maxPrefix!1172 Lexer!2236 (rules!11203 other!32) (originalCharacters!3434 (h!20114 lt!482159))))))

(declare-fun lt!482405 () Unit!22153)

(declare-fun Unit!22165 () Unit!22153)

(assert (=> b!1423391 (= lt!482405 Unit!22165)))

(assert (=> b!1423391 (isDefined!2287 (maxPrefix!1172 Lexer!2236 (rules!11203 other!32) (list!5841 (charsOf!1497 (h!20114 lt!482159)))))))

(declare-fun lt!482401 () Unit!22153)

(declare-fun Unit!22166 () Unit!22153)

(assert (=> b!1423391 (= lt!482401 Unit!22166)))

(declare-fun lt!482399 () Unit!22153)

(declare-fun Unit!22167 () Unit!22153)

(assert (=> b!1423391 (= lt!482399 Unit!22167)))

(declare-fun get!4523 (Option!2826) tuple2!14048)

(assert (=> b!1423391 (= (_1!7910 (get!4523 (maxPrefix!1172 Lexer!2236 (rules!11203 other!32) (list!5841 (charsOf!1497 (h!20114 lt!482159)))))) (h!20114 lt!482159))))

(declare-fun lt!482412 () Unit!22153)

(declare-fun Unit!22168 () Unit!22153)

(assert (=> b!1423391 (= lt!482412 Unit!22168)))

(assert (=> b!1423391 (isEmpty!9109 (_2!7910 (get!4523 (maxPrefix!1172 Lexer!2236 (rules!11203 other!32) (list!5841 (charsOf!1497 (h!20114 lt!482159)))))))))

(declare-fun lt!482418 () Unit!22153)

(declare-fun Unit!22169 () Unit!22153)

(assert (=> b!1423391 (= lt!482418 Unit!22169)))

(declare-fun matchR!1808 (Regex!3886 List!14777) Bool)

(assert (=> b!1423391 (matchR!1808 (regex!2572 (rule!4335 (h!20114 lt!482159))) (list!5841 (charsOf!1497 (h!20114 lt!482159))))))

(declare-fun lt!482414 () Unit!22153)

(declare-fun Unit!22170 () Unit!22153)

(assert (=> b!1423391 (= lt!482414 Unit!22170)))

(assert (=> b!1423391 (= (rule!4335 (h!20114 lt!482159)) (rule!4335 (h!20114 lt!482159)))))

(declare-fun lt!482394 () Unit!22153)

(declare-fun Unit!22171 () Unit!22153)

(assert (=> b!1423391 (= lt!482394 Unit!22171)))

(declare-fun lt!482395 () Unit!22153)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!20 (LexerInterface!2238 List!14780 Token!4806 Rule!4944 List!14777) Unit!22153)

(assert (=> b!1423391 (= lt!482395 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!20 Lexer!2236 (rules!11203 other!32) (h!20114 lt!482159) (rule!4335 (h!20114 lt!482159)) (list!5841 lt!482419)))))

(declare-fun b!1423392 () Bool)

(declare-fun isEmpty!9110 (BalanceConc!9880) Bool)

(assert (=> b!1423392 (= e!908669 (isEmpty!9110 (_2!7909 (lex!1024 Lexer!2236 (rules!11203 other!32) (print!1031 Lexer!2236 (seqFromList!1685 lt!482159))))))))

(assert (= (and d!407760 c!234024) b!1423390))

(assert (= (and d!407760 (not c!234024)) b!1423391))

(assert (= (and d!407760 res!644506) b!1423392))

(declare-fun m!1616229 () Bool)

(assert (=> d!407760 m!1616229))

(declare-fun m!1616231 () Bool)

(assert (=> d!407760 m!1616231))

(declare-fun m!1616233 () Bool)

(assert (=> d!407760 m!1616233))

(assert (=> d!407760 m!1616229))

(assert (=> d!407760 m!1616021))

(assert (=> d!407760 m!1616233))

(declare-fun m!1616235 () Bool)

(assert (=> d!407760 m!1616235))

(declare-fun m!1616237 () Bool)

(assert (=> b!1423391 m!1616237))

(declare-fun m!1616239 () Bool)

(assert (=> b!1423391 m!1616239))

(declare-fun m!1616241 () Bool)

(assert (=> b!1423391 m!1616241))

(assert (=> b!1423391 m!1615853))

(assert (=> b!1423391 m!1616241))

(declare-fun m!1616243 () Bool)

(assert (=> b!1423391 m!1616243))

(declare-fun m!1616245 () Bool)

(assert (=> b!1423391 m!1616245))

(declare-fun m!1616247 () Bool)

(assert (=> b!1423391 m!1616247))

(declare-fun m!1616249 () Bool)

(assert (=> b!1423391 m!1616249))

(declare-fun m!1616251 () Bool)

(assert (=> b!1423391 m!1616251))

(declare-fun m!1616253 () Bool)

(assert (=> b!1423391 m!1616253))

(assert (=> b!1423391 m!1616233))

(declare-fun m!1616255 () Bool)

(assert (=> b!1423391 m!1616255))

(declare-fun m!1616257 () Bool)

(assert (=> b!1423391 m!1616257))

(declare-fun m!1616259 () Bool)

(assert (=> b!1423391 m!1616259))

(declare-fun m!1616261 () Bool)

(assert (=> b!1423391 m!1616261))

(assert (=> b!1423391 m!1616083))

(assert (=> b!1423391 m!1616245))

(declare-fun m!1616263 () Bool)

(assert (=> b!1423391 m!1616263))

(assert (=> b!1423391 m!1616257))

(declare-fun m!1616265 () Bool)

(assert (=> b!1423391 m!1616265))

(assert (=> b!1423391 m!1616247))

(declare-fun m!1616267 () Bool)

(assert (=> b!1423391 m!1616267))

(declare-fun m!1616269 () Bool)

(assert (=> b!1423391 m!1616269))

(declare-fun m!1616271 () Bool)

(assert (=> b!1423391 m!1616271))

(assert (=> b!1423391 m!1615855))

(declare-fun m!1616273 () Bool)

(assert (=> b!1423391 m!1616273))

(assert (=> b!1423391 m!1616263))

(declare-fun m!1616275 () Bool)

(assert (=> b!1423391 m!1616275))

(assert (=> b!1423391 m!1615853))

(assert (=> b!1423391 m!1615855))

(declare-fun m!1616277 () Bool)

(assert (=> b!1423391 m!1616277))

(declare-fun m!1616279 () Bool)

(assert (=> b!1423391 m!1616279))

(assert (=> b!1423391 m!1616233))

(assert (=> b!1423391 m!1616229))

(assert (=> b!1423391 m!1616239))

(declare-fun m!1616281 () Bool)

(assert (=> b!1423391 m!1616281))

(assert (=> b!1423391 m!1616083))

(declare-fun m!1616283 () Bool)

(assert (=> b!1423391 m!1616283))

(declare-fun m!1616285 () Bool)

(assert (=> b!1423391 m!1616285))

(assert (=> b!1423391 m!1615855))

(declare-fun m!1616287 () Bool)

(assert (=> b!1423391 m!1616287))

(assert (=> b!1423391 m!1616257))

(assert (=> b!1423391 m!1616283))

(assert (=> b!1423391 m!1615855))

(assert (=> b!1423391 m!1616257))

(declare-fun m!1616289 () Bool)

(assert (=> b!1423391 m!1616289))

(assert (=> b!1423391 m!1616287))

(declare-fun m!1616291 () Bool)

(assert (=> b!1423391 m!1616291))

(assert (=> b!1423391 m!1616287))

(declare-fun m!1616293 () Bool)

(assert (=> b!1423391 m!1616293))

(assert (=> b!1423391 m!1616249))

(declare-fun m!1616295 () Bool)

(assert (=> b!1423391 m!1616295))

(declare-fun m!1616297 () Bool)

(assert (=> b!1423391 m!1616297))

(declare-fun m!1616299 () Bool)

(assert (=> b!1423391 m!1616299))

(assert (=> b!1423391 m!1616261))

(assert (=> b!1423391 m!1616295))

(assert (=> b!1423391 m!1616239))

(declare-fun m!1616301 () Bool)

(assert (=> b!1423391 m!1616301))

(assert (=> b!1423392 m!1616233))

(assert (=> b!1423392 m!1616233))

(assert (=> b!1423392 m!1616229))

(assert (=> b!1423392 m!1616229))

(assert (=> b!1423392 m!1616231))

(declare-fun m!1616303 () Bool)

(assert (=> b!1423392 m!1616303))

(assert (=> b!1423184 d!407760))

(declare-fun b!1423393 () Bool)

(declare-fun e!908670 () List!14779)

(assert (=> b!1423393 (= e!908670 lt!482159)))

(declare-fun b!1423394 () Bool)

(assert (=> b!1423394 (= e!908670 (Cons!14713 (h!20114 Nil!14713) (++!3907 (t!124614 Nil!14713) lt!482159)))))

(declare-fun b!1423395 () Bool)

(declare-fun res!644507 () Bool)

(declare-fun e!908671 () Bool)

(assert (=> b!1423395 (=> (not res!644507) (not e!908671))))

(declare-fun lt!482420 () List!14779)

(assert (=> b!1423395 (= res!644507 (= (size!12108 lt!482420) (+ (size!12108 Nil!14713) (size!12108 lt!482159))))))

(declare-fun b!1423396 () Bool)

(assert (=> b!1423396 (= e!908671 (or (not (= lt!482159 Nil!14713)) (= lt!482420 Nil!14713)))))

(declare-fun d!407770 () Bool)

(assert (=> d!407770 e!908671))

(declare-fun res!644508 () Bool)

(assert (=> d!407770 (=> (not res!644508) (not e!908671))))

(assert (=> d!407770 (= res!644508 (= (content!2173 lt!482420) (set.union (content!2173 Nil!14713) (content!2173 lt!482159))))))

(assert (=> d!407770 (= lt!482420 e!908670)))

(declare-fun c!234025 () Bool)

(assert (=> d!407770 (= c!234025 (is-Nil!14713 Nil!14713))))

(assert (=> d!407770 (= (++!3907 Nil!14713 lt!482159) lt!482420)))

(assert (= (and d!407770 c!234025) b!1423393))

(assert (= (and d!407770 (not c!234025)) b!1423394))

(assert (= (and d!407770 res!644508) b!1423395))

(assert (= (and b!1423395 res!644507) b!1423396))

(declare-fun m!1616305 () Bool)

(assert (=> b!1423394 m!1616305))

(declare-fun m!1616307 () Bool)

(assert (=> b!1423395 m!1616307))

(declare-fun m!1616309 () Bool)

(assert (=> b!1423395 m!1616309))

(assert (=> b!1423395 m!1616037))

(declare-fun m!1616311 () Bool)

(assert (=> d!407770 m!1616311))

(declare-fun m!1616313 () Bool)

(assert (=> d!407770 m!1616313))

(assert (=> d!407770 m!1616043))

(assert (=> b!1423184 d!407770))

(declare-fun d!407772 () Bool)

(declare-fun c!234026 () Bool)

(assert (=> d!407772 (= c!234026 (is-Cons!14713 lt!482159))))

(declare-fun e!908672 () List!14777)

(assert (=> d!407772 (= (printList!692 Lexer!2236 lt!482159) e!908672)))

(declare-fun b!1423397 () Bool)

(assert (=> b!1423397 (= e!908672 (++!3906 (list!5841 (charsOf!1497 (h!20114 lt!482159))) (printList!692 Lexer!2236 (t!124614 lt!482159))))))

(declare-fun b!1423398 () Bool)

(assert (=> b!1423398 (= e!908672 Nil!14711)))

(assert (= (and d!407772 c!234026) b!1423397))

(assert (= (and d!407772 (not c!234026)) b!1423398))

(assert (=> b!1423397 m!1615853))

(assert (=> b!1423397 m!1615853))

(assert (=> b!1423397 m!1615855))

(assert (=> b!1423397 m!1615857))

(assert (=> b!1423397 m!1615855))

(assert (=> b!1423397 m!1615857))

(assert (=> b!1423397 m!1615859))

(assert (=> b!1423184 d!407772))

(declare-fun d!407774 () Bool)

(declare-fun e!908674 () Bool)

(assert (=> d!407774 e!908674))

(declare-fun res!644509 () Bool)

(assert (=> d!407774 (=> (not res!644509) (not e!908674))))

(assert (=> d!407774 (= res!644509 (= (list!5840 (_1!7909 (lex!1024 Lexer!2236 (rules!11203 thiss!10022) (print!1031 Lexer!2236 (seqFromList!1685 lt!482149))))) lt!482149))))

(declare-fun lt!482440 () Unit!22153)

(declare-fun e!908673 () Unit!22153)

(assert (=> d!407774 (= lt!482440 e!908673)))

(declare-fun c!234027 () Bool)

(assert (=> d!407774 (= c!234027 (or (is-Nil!14713 lt!482149) (is-Nil!14713 (t!124614 lt!482149))))))

(assert (=> d!407774 (not (isEmpty!9107 (rules!11203 thiss!10022)))))

(assert (=> d!407774 (= (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 thiss!10022) lt!482149) lt!482440)))

(declare-fun b!1423399 () Bool)

(declare-fun Unit!22172 () Unit!22153)

(assert (=> b!1423399 (= e!908673 Unit!22172)))

(declare-fun b!1423400 () Bool)

(declare-fun Unit!22173 () Unit!22153)

(assert (=> b!1423400 (= e!908673 Unit!22173)))

(declare-fun lt!482429 () BalanceConc!9880)

(assert (=> b!1423400 (= lt!482429 (print!1031 Lexer!2236 (seqFromList!1685 lt!482149)))))

(declare-fun lt!482446 () BalanceConc!9880)

(assert (=> b!1423400 (= lt!482446 (print!1031 Lexer!2236 (seqFromList!1685 (t!124614 lt!482149))))))

(declare-fun lt!482438 () tuple2!14046)

(assert (=> b!1423400 (= lt!482438 (lex!1024 Lexer!2236 (rules!11203 thiss!10022) lt!482446))))

(declare-fun lt!482425 () List!14777)

(assert (=> b!1423400 (= lt!482425 (list!5841 (charsOf!1497 (h!20114 lt!482149))))))

(declare-fun lt!482437 () List!14777)

(assert (=> b!1423400 (= lt!482437 (list!5841 lt!482446))))

(declare-fun lt!482423 () Unit!22153)

(assert (=> b!1423400 (= lt!482423 (lemmaConcatTwoListThenFirstIsPrefix!749 lt!482425 lt!482437))))

(assert (=> b!1423400 (isPrefix!1182 lt!482425 (++!3906 lt!482425 lt!482437))))

(declare-fun lt!482436 () Unit!22153)

(assert (=> b!1423400 (= lt!482436 lt!482423)))

(declare-fun lt!482424 () Unit!22153)

(assert (=> b!1423400 (= lt!482424 (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 thiss!10022) (t!124614 lt!482149)))))

(declare-fun lt!482443 () Unit!22153)

(assert (=> b!1423400 (= lt!482443 (seqFromListBHdTlConstructive!78 (h!20114 (t!124614 lt!482149)) (t!124614 (t!124614 lt!482149)) (_1!7909 lt!482438)))))

(assert (=> b!1423400 (= (list!5840 (_1!7909 lt!482438)) (list!5840 (prepend!394 (seqFromList!1685 (t!124614 (t!124614 lt!482149))) (h!20114 (t!124614 lt!482149)))))))

(declare-fun lt!482444 () Unit!22153)

(assert (=> b!1423400 (= lt!482444 lt!482443)))

(declare-fun lt!482434 () Option!2826)

(assert (=> b!1423400 (= lt!482434 (maxPrefix!1172 Lexer!2236 (rules!11203 thiss!10022) (list!5841 lt!482429)))))

(assert (=> b!1423400 (= (print!1031 Lexer!2236 (singletonSeq!1189 (h!20114 lt!482149))) (printTailRec!666 Lexer!2236 (singletonSeq!1189 (h!20114 lt!482149)) 0 (BalanceConc!9881 Empty!4970)))))

(declare-fun lt!482427 () Unit!22153)

(declare-fun Unit!22174 () Unit!22153)

(assert (=> b!1423400 (= lt!482427 Unit!22174)))

(declare-fun lt!482431 () Unit!22153)

(assert (=> b!1423400 (= lt!482431 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!222 Lexer!2236 (rules!11203 thiss!10022) (list!5841 (charsOf!1497 (h!20114 lt!482149))) (list!5841 lt!482446)))))

(assert (=> b!1423400 (= (list!5841 (charsOf!1497 (h!20114 lt!482149))) (originalCharacters!3434 (h!20114 lt!482149)))))

(declare-fun lt!482435 () Unit!22153)

(declare-fun Unit!22175 () Unit!22153)

(assert (=> b!1423400 (= lt!482435 Unit!22175)))

(assert (=> b!1423400 (= (list!5841 (singletonSeq!1190 (apply!3756 (charsOf!1497 (h!20114 (t!124614 lt!482149))) 0))) (Cons!14711 (head!2811 (originalCharacters!3434 (h!20114 (t!124614 lt!482149)))) Nil!14711))))

(declare-fun lt!482430 () Unit!22153)

(declare-fun Unit!22176 () Unit!22153)

(assert (=> b!1423400 (= lt!482430 Unit!22176)))

(assert (=> b!1423400 (= (list!5841 (singletonSeq!1190 (apply!3756 (charsOf!1497 (h!20114 (t!124614 lt!482149))) 0))) (Cons!14711 (head!2811 (list!5841 lt!482446)) Nil!14711))))

(declare-fun lt!482433 () Unit!22153)

(declare-fun Unit!22177 () Unit!22153)

(assert (=> b!1423400 (= lt!482433 Unit!22177)))

(assert (=> b!1423400 (= (list!5841 (singletonSeq!1190 (apply!3756 (charsOf!1497 (h!20114 (t!124614 lt!482149))) 0))) (Cons!14711 (head!2812 lt!482446) Nil!14711))))

(declare-fun lt!482442 () Unit!22153)

(declare-fun Unit!22178 () Unit!22153)

(assert (=> b!1423400 (= lt!482442 Unit!22178)))

(assert (=> b!1423400 (isDefined!2287 (maxPrefix!1172 Lexer!2236 (rules!11203 thiss!10022) (originalCharacters!3434 (h!20114 lt!482149))))))

(declare-fun lt!482432 () Unit!22153)

(declare-fun Unit!22179 () Unit!22153)

(assert (=> b!1423400 (= lt!482432 Unit!22179)))

(assert (=> b!1423400 (isDefined!2287 (maxPrefix!1172 Lexer!2236 (rules!11203 thiss!10022) (list!5841 (charsOf!1497 (h!20114 lt!482149)))))))

(declare-fun lt!482428 () Unit!22153)

(declare-fun Unit!22180 () Unit!22153)

(assert (=> b!1423400 (= lt!482428 Unit!22180)))

(declare-fun lt!482426 () Unit!22153)

(declare-fun Unit!22181 () Unit!22153)

(assert (=> b!1423400 (= lt!482426 Unit!22181)))

(assert (=> b!1423400 (= (_1!7910 (get!4523 (maxPrefix!1172 Lexer!2236 (rules!11203 thiss!10022) (list!5841 (charsOf!1497 (h!20114 lt!482149)))))) (h!20114 lt!482149))))

(declare-fun lt!482439 () Unit!22153)

(declare-fun Unit!22182 () Unit!22153)

(assert (=> b!1423400 (= lt!482439 Unit!22182)))

(assert (=> b!1423400 (isEmpty!9109 (_2!7910 (get!4523 (maxPrefix!1172 Lexer!2236 (rules!11203 thiss!10022) (list!5841 (charsOf!1497 (h!20114 lt!482149)))))))))

(declare-fun lt!482445 () Unit!22153)

(declare-fun Unit!22183 () Unit!22153)

(assert (=> b!1423400 (= lt!482445 Unit!22183)))

(assert (=> b!1423400 (matchR!1808 (regex!2572 (rule!4335 (h!20114 lt!482149))) (list!5841 (charsOf!1497 (h!20114 lt!482149))))))

(declare-fun lt!482441 () Unit!22153)

(declare-fun Unit!22184 () Unit!22153)

(assert (=> b!1423400 (= lt!482441 Unit!22184)))

(assert (=> b!1423400 (= (rule!4335 (h!20114 lt!482149)) (rule!4335 (h!20114 lt!482149)))))

(declare-fun lt!482421 () Unit!22153)

(declare-fun Unit!22185 () Unit!22153)

(assert (=> b!1423400 (= lt!482421 Unit!22185)))

(declare-fun lt!482422 () Unit!22153)

(assert (=> b!1423400 (= lt!482422 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!20 Lexer!2236 (rules!11203 thiss!10022) (h!20114 lt!482149) (rule!4335 (h!20114 lt!482149)) (list!5841 lt!482446)))))

(declare-fun b!1423401 () Bool)

(assert (=> b!1423401 (= e!908674 (isEmpty!9110 (_2!7909 (lex!1024 Lexer!2236 (rules!11203 thiss!10022) (print!1031 Lexer!2236 (seqFromList!1685 lt!482149))))))))

(assert (= (and d!407774 c!234027) b!1423399))

(assert (= (and d!407774 (not c!234027)) b!1423400))

(assert (= (and d!407774 res!644509) b!1423401))

(declare-fun m!1616315 () Bool)

(assert (=> d!407774 m!1616315))

(declare-fun m!1616317 () Bool)

(assert (=> d!407774 m!1616317))

(declare-fun m!1616319 () Bool)

(assert (=> d!407774 m!1616319))

(assert (=> d!407774 m!1616315))

(assert (=> d!407774 m!1616013))

(assert (=> d!407774 m!1616319))

(declare-fun m!1616321 () Bool)

(assert (=> d!407774 m!1616321))

(declare-fun m!1616323 () Bool)

(assert (=> b!1423400 m!1616323))

(declare-fun m!1616325 () Bool)

(assert (=> b!1423400 m!1616325))

(declare-fun m!1616327 () Bool)

(assert (=> b!1423400 m!1616327))

(declare-fun m!1616329 () Bool)

(assert (=> b!1423400 m!1616329))

(assert (=> b!1423400 m!1616327))

(declare-fun m!1616331 () Bool)

(assert (=> b!1423400 m!1616331))

(declare-fun m!1616333 () Bool)

(assert (=> b!1423400 m!1616333))

(declare-fun m!1616335 () Bool)

(assert (=> b!1423400 m!1616335))

(declare-fun m!1616337 () Bool)

(assert (=> b!1423400 m!1616337))

(declare-fun m!1616339 () Bool)

(assert (=> b!1423400 m!1616339))

(declare-fun m!1616341 () Bool)

(assert (=> b!1423400 m!1616341))

(assert (=> b!1423400 m!1616319))

(declare-fun m!1616343 () Bool)

(assert (=> b!1423400 m!1616343))

(declare-fun m!1616345 () Bool)

(assert (=> b!1423400 m!1616345))

(declare-fun m!1616347 () Bool)

(assert (=> b!1423400 m!1616347))

(declare-fun m!1616349 () Bool)

(assert (=> b!1423400 m!1616349))

(declare-fun m!1616351 () Bool)

(assert (=> b!1423400 m!1616351))

(assert (=> b!1423400 m!1616333))

(declare-fun m!1616353 () Bool)

(assert (=> b!1423400 m!1616353))

(assert (=> b!1423400 m!1616345))

(declare-fun m!1616355 () Bool)

(assert (=> b!1423400 m!1616355))

(assert (=> b!1423400 m!1616335))

(declare-fun m!1616357 () Bool)

(assert (=> b!1423400 m!1616357))

(declare-fun m!1616359 () Bool)

(assert (=> b!1423400 m!1616359))

(declare-fun m!1616361 () Bool)

(assert (=> b!1423400 m!1616361))

(declare-fun m!1616363 () Bool)

(assert (=> b!1423400 m!1616363))

(declare-fun m!1616365 () Bool)

(assert (=> b!1423400 m!1616365))

(assert (=> b!1423400 m!1616353))

(declare-fun m!1616367 () Bool)

(assert (=> b!1423400 m!1616367))

(assert (=> b!1423400 m!1616329))

(assert (=> b!1423400 m!1616363))

(declare-fun m!1616369 () Bool)

(assert (=> b!1423400 m!1616369))

(declare-fun m!1616371 () Bool)

(assert (=> b!1423400 m!1616371))

(assert (=> b!1423400 m!1616319))

(assert (=> b!1423400 m!1616315))

(assert (=> b!1423400 m!1616325))

(declare-fun m!1616373 () Bool)

(assert (=> b!1423400 m!1616373))

(assert (=> b!1423400 m!1616351))

(declare-fun m!1616375 () Bool)

(assert (=> b!1423400 m!1616375))

(declare-fun m!1616377 () Bool)

(assert (=> b!1423400 m!1616377))

(assert (=> b!1423400 m!1616363))

(declare-fun m!1616379 () Bool)

(assert (=> b!1423400 m!1616379))

(assert (=> b!1423400 m!1616345))

(assert (=> b!1423400 m!1616375))

(assert (=> b!1423400 m!1616363))

(assert (=> b!1423400 m!1616345))

(declare-fun m!1616381 () Bool)

(assert (=> b!1423400 m!1616381))

(assert (=> b!1423400 m!1616379))

(declare-fun m!1616383 () Bool)

(assert (=> b!1423400 m!1616383))

(assert (=> b!1423400 m!1616379))

(declare-fun m!1616385 () Bool)

(assert (=> b!1423400 m!1616385))

(assert (=> b!1423400 m!1616337))

(declare-fun m!1616387 () Bool)

(assert (=> b!1423400 m!1616387))

(declare-fun m!1616389 () Bool)

(assert (=> b!1423400 m!1616389))

(declare-fun m!1616391 () Bool)

(assert (=> b!1423400 m!1616391))

(assert (=> b!1423400 m!1616349))

(assert (=> b!1423400 m!1616387))

(assert (=> b!1423400 m!1616325))

(declare-fun m!1616393 () Bool)

(assert (=> b!1423400 m!1616393))

(assert (=> b!1423401 m!1616319))

(assert (=> b!1423401 m!1616319))

(assert (=> b!1423401 m!1616315))

(assert (=> b!1423401 m!1616315))

(assert (=> b!1423401 m!1616317))

(declare-fun m!1616395 () Bool)

(assert (=> b!1423401 m!1616395))

(assert (=> b!1423184 d!407774))

(declare-fun d!407776 () Bool)

(declare-fun lt!482475 () BalanceConc!9880)

(assert (=> d!407776 (= (list!5841 lt!482475) (printList!692 Lexer!2236 (list!5840 (tokens!1895 thiss!10022))))))

(assert (=> d!407776 (= lt!482475 (printTailRec!666 Lexer!2236 (tokens!1895 thiss!10022) 0 (BalanceConc!9881 Empty!4970)))))

(assert (=> d!407776 (= (print!1031 Lexer!2236 (tokens!1895 thiss!10022)) lt!482475)))

(declare-fun bs!339928 () Bool)

(assert (= bs!339928 d!407776))

(declare-fun m!1616487 () Bool)

(assert (=> bs!339928 m!1616487))

(assert (=> bs!339928 m!1615851))

(assert (=> bs!339928 m!1615851))

(declare-fun m!1616489 () Bool)

(assert (=> bs!339928 m!1616489))

(declare-fun m!1616491 () Bool)

(assert (=> bs!339928 m!1616491))

(assert (=> b!1423184 d!407776))

(declare-fun d!407782 () Bool)

(declare-fun e!908678 () Bool)

(assert (=> d!407782 e!908678))

(declare-fun res!644511 () Bool)

(assert (=> d!407782 (=> (not res!644511) (not e!908678))))

(declare-fun lt!482476 () BalanceConc!9880)

(assert (=> d!407782 (= res!644511 (= (list!5840 (_1!7909 (lex!1024 Lexer!2236 (rules!11203 thiss!10022) lt!482476))) (list!5840 (tokens!1895 thiss!10022))))))

(assert (=> d!407782 (= lt!482476 (print!1031 Lexer!2236 (tokens!1895 thiss!10022)))))

(declare-fun lt!482477 () Unit!22153)

(assert (=> d!407782 (= lt!482477 (theoremInvertabilityWhenTokenListSeparable!58 Lexer!2236 (rules!11203 thiss!10022) (list!5840 (tokens!1895 thiss!10022))))))

(assert (=> d!407782 (= (print!1032 thiss!10022) lt!482476)))

(declare-fun b!1423407 () Bool)

(assert (=> b!1423407 (= e!908678 (isEmpty!9109 (list!5841 (_2!7909 (lex!1024 Lexer!2236 (rules!11203 thiss!10022) lt!482476)))))))

(assert (= (and d!407782 res!644511) b!1423407))

(declare-fun m!1616493 () Bool)

(assert (=> d!407782 m!1616493))

(assert (=> d!407782 m!1615851))

(declare-fun m!1616495 () Bool)

(assert (=> d!407782 m!1616495))

(assert (=> d!407782 m!1615851))

(assert (=> d!407782 m!1615875))

(declare-fun m!1616497 () Bool)

(assert (=> d!407782 m!1616497))

(assert (=> b!1423407 m!1616497))

(declare-fun m!1616499 () Bool)

(assert (=> b!1423407 m!1616499))

(assert (=> b!1423407 m!1616499))

(declare-fun m!1616501 () Bool)

(assert (=> b!1423407 m!1616501))

(assert (=> b!1423184 d!407782))

(declare-fun d!407784 () Bool)

(declare-fun lt!482478 () BalanceConc!9880)

(assert (=> d!407784 (= (list!5841 lt!482478) (printList!692 Lexer!2236 (list!5840 (tokens!1895 other!32))))))

(assert (=> d!407784 (= lt!482478 (printTailRec!666 Lexer!2236 (tokens!1895 other!32) 0 (BalanceConc!9881 Empty!4970)))))

(assert (=> d!407784 (= (print!1031 Lexer!2236 (tokens!1895 other!32)) lt!482478)))

(declare-fun bs!339929 () Bool)

(assert (= bs!339929 d!407784))

(declare-fun m!1616503 () Bool)

(assert (=> bs!339929 m!1616503))

(assert (=> bs!339929 m!1615897))

(assert (=> bs!339929 m!1615897))

(declare-fun m!1616505 () Bool)

(assert (=> bs!339929 m!1616505))

(assert (=> bs!339929 m!1615837))

(assert (=> b!1423184 d!407784))

(declare-fun b!1423408 () Bool)

(declare-fun e!908680 () List!14777)

(assert (=> b!1423408 (= e!908680 lt!482160)))

(declare-fun e!908679 () Bool)

(declare-fun b!1423411 () Bool)

(declare-fun lt!482479 () List!14777)

(assert (=> b!1423411 (= e!908679 (or (not (= lt!482160 Nil!14711)) (= lt!482479 lt!482150)))))

(declare-fun b!1423409 () Bool)

(assert (=> b!1423409 (= e!908680 (Cons!14711 (h!20112 lt!482150) (++!3906 (t!124612 lt!482150) lt!482160)))))

(declare-fun d!407786 () Bool)

(assert (=> d!407786 e!908679))

(declare-fun res!644513 () Bool)

(assert (=> d!407786 (=> (not res!644513) (not e!908679))))

(assert (=> d!407786 (= res!644513 (= (content!2174 lt!482479) (set.union (content!2174 lt!482150) (content!2174 lt!482160))))))

(assert (=> d!407786 (= lt!482479 e!908680)))

(declare-fun c!234030 () Bool)

(assert (=> d!407786 (= c!234030 (is-Nil!14711 lt!482150))))

(assert (=> d!407786 (= (++!3906 lt!482150 lt!482160) lt!482479)))

(declare-fun b!1423410 () Bool)

(declare-fun res!644512 () Bool)

(assert (=> b!1423410 (=> (not res!644512) (not e!908679))))

(assert (=> b!1423410 (= res!644512 (= (size!12109 lt!482479) (+ (size!12109 lt!482150) (size!12109 lt!482160))))))

(assert (= (and d!407786 c!234030) b!1423408))

(assert (= (and d!407786 (not c!234030)) b!1423409))

(assert (= (and d!407786 res!644513) b!1423410))

(assert (= (and b!1423410 res!644512) b!1423411))

(declare-fun m!1616507 () Bool)

(assert (=> b!1423409 m!1616507))

(declare-fun m!1616509 () Bool)

(assert (=> d!407786 m!1616509))

(declare-fun m!1616511 () Bool)

(assert (=> d!407786 m!1616511))

(declare-fun m!1616513 () Bool)

(assert (=> d!407786 m!1616513))

(declare-fun m!1616515 () Bool)

(assert (=> b!1423410 m!1616515))

(declare-fun m!1616517 () Bool)

(assert (=> b!1423410 m!1616517))

(declare-fun m!1616519 () Bool)

(assert (=> b!1423410 m!1616519))

(assert (=> b!1423184 d!407786))

(declare-fun d!407788 () Bool)

(assert (=> d!407788 (= (list!5840 (tokens!1895 lt!482161)) (list!5844 (c!233981 (tokens!1895 lt!482161))))))

(declare-fun bs!339930 () Bool)

(assert (= bs!339930 d!407788))

(declare-fun m!1616521 () Bool)

(assert (=> bs!339930 m!1616521))

(assert (=> b!1423194 d!407788))

(declare-fun b!1423412 () Bool)

(declare-fun e!908681 () List!14779)

(assert (=> b!1423412 (= e!908681 lt!482159)))

(declare-fun b!1423413 () Bool)

(assert (=> b!1423413 (= e!908681 (Cons!14713 (h!20114 lt!482149) (++!3907 (t!124614 lt!482149) lt!482159)))))

(declare-fun b!1423414 () Bool)

(declare-fun res!644514 () Bool)

(declare-fun e!908682 () Bool)

(assert (=> b!1423414 (=> (not res!644514) (not e!908682))))

(declare-fun lt!482480 () List!14779)

(assert (=> b!1423414 (= res!644514 (= (size!12108 lt!482480) (+ (size!12108 lt!482149) (size!12108 lt!482159))))))

(declare-fun b!1423415 () Bool)

(assert (=> b!1423415 (= e!908682 (or (not (= lt!482159 Nil!14713)) (= lt!482480 lt!482149)))))

(declare-fun d!407790 () Bool)

(assert (=> d!407790 e!908682))

(declare-fun res!644515 () Bool)

(assert (=> d!407790 (=> (not res!644515) (not e!908682))))

(assert (=> d!407790 (= res!644515 (= (content!2173 lt!482480) (set.union (content!2173 lt!482149) (content!2173 lt!482159))))))

(assert (=> d!407790 (= lt!482480 e!908681)))

(declare-fun c!234031 () Bool)

(assert (=> d!407790 (= c!234031 (is-Nil!14713 lt!482149))))

(assert (=> d!407790 (= (++!3907 lt!482149 lt!482159) lt!482480)))

(assert (= (and d!407790 c!234031) b!1423412))

(assert (= (and d!407790 (not c!234031)) b!1423413))

(assert (= (and d!407790 res!644515) b!1423414))

(assert (= (and b!1423414 res!644514) b!1423415))

(declare-fun m!1616523 () Bool)

(assert (=> b!1423413 m!1616523))

(declare-fun m!1616525 () Bool)

(assert (=> b!1423414 m!1616525))

(declare-fun m!1616527 () Bool)

(assert (=> b!1423414 m!1616527))

(assert (=> b!1423414 m!1616037))

(declare-fun m!1616529 () Bool)

(assert (=> d!407790 m!1616529))

(declare-fun m!1616531 () Bool)

(assert (=> d!407790 m!1616531))

(assert (=> d!407790 m!1616043))

(assert (=> b!1423194 d!407790))

(declare-fun d!407792 () Bool)

(declare-fun lt!482481 () Bool)

(assert (=> d!407792 (= lt!482481 (isEmpty!9103 (list!5840 (tokens!1895 other!32))))))

(assert (=> d!407792 (= lt!482481 (isEmpty!9108 (c!233981 (tokens!1895 other!32))))))

(assert (=> d!407792 (= (isEmpty!9101 (tokens!1895 other!32)) lt!482481)))

(declare-fun bs!339931 () Bool)

(assert (= bs!339931 d!407792))

(assert (=> bs!339931 m!1615897))

(assert (=> bs!339931 m!1615897))

(declare-fun m!1616533 () Bool)

(assert (=> bs!339931 m!1616533))

(declare-fun m!1616535 () Bool)

(assert (=> bs!339931 m!1616535))

(assert (=> b!1423183 d!407792))

(declare-fun d!407794 () Bool)

(declare-fun e!908685 () Bool)

(assert (=> d!407794 e!908685))

(declare-fun res!644520 () Bool)

(assert (=> d!407794 (=> (not res!644520) (not e!908685))))

(assert (=> d!407794 (= res!644520 (rulesInvariant!2092 Lexer!2236 (rules!11203 thiss!10022)))))

(declare-fun Unit!22189 () Unit!22153)

(assert (=> d!407794 (= (lemmaInvariant!268 thiss!10022) Unit!22189)))

(declare-fun b!1423420 () Bool)

(declare-fun res!644521 () Bool)

(assert (=> b!1423420 (=> (not res!644521) (not e!908685))))

(assert (=> b!1423420 (= res!644521 (rulesProduceEachTokenIndividually!819 Lexer!2236 (rules!11203 thiss!10022) (tokens!1895 thiss!10022)))))

(declare-fun b!1423421 () Bool)

(assert (=> b!1423421 (= e!908685 (separableTokens!204 Lexer!2236 (tokens!1895 thiss!10022) (rules!11203 thiss!10022)))))

(assert (= (and d!407794 res!644520) b!1423420))

(assert (= (and b!1423420 res!644521) b!1423421))

(assert (=> d!407794 m!1616015))

(assert (=> b!1423420 m!1616017))

(assert (=> b!1423421 m!1616019))

(assert (=> b!1423183 d!407794))

(declare-fun d!407796 () Bool)

(declare-fun e!908686 () Bool)

(assert (=> d!407796 e!908686))

(declare-fun res!644522 () Bool)

(assert (=> d!407796 (=> (not res!644522) (not e!908686))))

(assert (=> d!407796 (= res!644522 (rulesInvariant!2092 Lexer!2236 (rules!11203 other!32)))))

(declare-fun Unit!22192 () Unit!22153)

(assert (=> d!407796 (= (lemmaInvariant!268 other!32) Unit!22192)))

(declare-fun b!1423422 () Bool)

(declare-fun res!644523 () Bool)

(assert (=> b!1423422 (=> (not res!644523) (not e!908686))))

(assert (=> b!1423422 (= res!644523 (rulesProduceEachTokenIndividually!819 Lexer!2236 (rules!11203 other!32) (tokens!1895 other!32)))))

(declare-fun b!1423423 () Bool)

(assert (=> b!1423423 (= e!908686 (separableTokens!204 Lexer!2236 (tokens!1895 other!32) (rules!11203 other!32)))))

(assert (= (and d!407796 res!644522) b!1423422))

(assert (= (and b!1423422 res!644523) b!1423423))

(assert (=> d!407796 m!1616023))

(assert (=> b!1423422 m!1616025))

(assert (=> b!1423423 m!1616027))

(assert (=> b!1423183 d!407796))

(declare-fun d!407798 () Bool)

(assert (=> d!407798 (= (isEmpty!9102 lt!482151) (not (is-Some!2823 lt!482151)))))

(assert (=> b!1423193 d!407798))

(declare-fun tp!403440 () Bool)

(declare-fun e!908694 () Bool)

(declare-fun b!1423434 () Bool)

(declare-fun tp!403439 () Bool)

(assert (=> b!1423434 (= e!908694 (and (inv!19506 (left!12560 (c!233981 (tokens!1895 other!32)))) tp!403439 (inv!19506 (right!12890 (c!233981 (tokens!1895 other!32)))) tp!403440))))

(declare-fun b!1423436 () Bool)

(declare-fun e!908693 () Bool)

(declare-fun tp!403441 () Bool)

(assert (=> b!1423436 (= e!908693 tp!403441)))

(declare-fun b!1423435 () Bool)

(declare-fun inv!19513 (IArray!9947) Bool)

(assert (=> b!1423435 (= e!908694 (and (inv!19513 (xs!7700 (c!233981 (tokens!1895 other!32)))) e!908693))))

(assert (=> b!1423190 (= tp!403417 (and (inv!19506 (c!233981 (tokens!1895 other!32))) e!908694))))

(assert (= (and b!1423190 (is-Node!4971 (c!233981 (tokens!1895 other!32)))) b!1423434))

(assert (= b!1423435 b!1423436))

(assert (= (and b!1423190 (is-Leaf!7459 (c!233981 (tokens!1895 other!32)))) b!1423435))

(declare-fun m!1616537 () Bool)

(assert (=> b!1423434 m!1616537))

(declare-fun m!1616539 () Bool)

(assert (=> b!1423434 m!1616539))

(declare-fun m!1616541 () Bool)

(assert (=> b!1423435 m!1616541))

(assert (=> b!1423190 m!1615845))

(declare-fun b!1423451 () Bool)

(declare-fun b_free!35095 () Bool)

(declare-fun b_next!35799 () Bool)

(assert (=> b!1423451 (= b_free!35095 (not b_next!35799))))

(declare-fun tp!403452 () Bool)

(declare-fun b_and!95111 () Bool)

(assert (=> b!1423451 (= tp!403452 b_and!95111)))

(declare-fun b_free!35097 () Bool)

(declare-fun b_next!35801 () Bool)

(assert (=> b!1423451 (= b_free!35097 (not b_next!35801))))

(declare-fun tb!73633 () Bool)

(declare-fun t!124621 () Bool)

(assert (=> (and b!1423451 (= (toChars!3730 (transformation!2572 (h!20115 (rules!11203 thiss!10022)))) (toChars!3730 (transformation!2572 (rule!4335 (h!20114 lt!482159))))) t!124621) tb!73633))

(declare-fun b!1423456 () Bool)

(declare-fun e!908712 () Bool)

(declare-fun tp!403456 () Bool)

(declare-fun inv!19514 (Conc!4970) Bool)

(assert (=> b!1423456 (= e!908712 (and (inv!19514 (c!233979 (dynLambda!6739 (toChars!3730 (transformation!2572 (rule!4335 (h!20114 lt!482159)))) (value!82951 (h!20114 lt!482159))))) tp!403456))))

(declare-fun result!89822 () Bool)

(declare-fun inv!19515 (BalanceConc!9880) Bool)

(assert (=> tb!73633 (= result!89822 (and (inv!19515 (dynLambda!6739 (toChars!3730 (transformation!2572 (rule!4335 (h!20114 lt!482159)))) (value!82951 (h!20114 lt!482159)))) e!908712))))

(assert (= tb!73633 b!1423456))

(declare-fun m!1616553 () Bool)

(assert (=> b!1423456 m!1616553))

(declare-fun m!1616555 () Bool)

(assert (=> tb!73633 m!1616555))

(assert (=> d!407730 t!124621))

(declare-fun tp!403450 () Bool)

(declare-fun b_and!95113 () Bool)

(assert (=> b!1423451 (= tp!403450 (and (=> t!124621 result!89822) b_and!95113))))

(declare-fun e!908706 () Bool)

(assert (=> b!1423451 (= e!908706 (and tp!403452 tp!403450))))

(declare-fun tp!403451 () Bool)

(declare-fun b!1423450 () Bool)

(declare-fun e!908709 () Bool)

(declare-fun inv!19502 (String!17568) Bool)

(declare-fun inv!19516 (TokenValueInjection!4984) Bool)

(assert (=> b!1423450 (= e!908709 (and tp!403451 (inv!19502 (tag!2834 (h!20115 (rules!11203 thiss!10022)))) (inv!19516 (transformation!2572 (h!20115 (rules!11203 thiss!10022)))) e!908706))))

(declare-fun b!1423449 () Bool)

(declare-fun e!908707 () Bool)

(declare-fun tp!403453 () Bool)

(assert (=> b!1423449 (= e!908707 (and e!908709 tp!403453))))

(assert (=> b!1423200 (= tp!403419 e!908707)))

(assert (= b!1423450 b!1423451))

(assert (= b!1423449 b!1423450))

(assert (= (and b!1423200 (is-Cons!14714 (rules!11203 thiss!10022))) b!1423449))

(declare-fun m!1616557 () Bool)

(assert (=> b!1423450 m!1616557))

(declare-fun m!1616559 () Bool)

(assert (=> b!1423450 m!1616559))

(declare-fun tp!403457 () Bool)

(declare-fun tp!403458 () Bool)

(declare-fun e!908714 () Bool)

(declare-fun b!1423457 () Bool)

(assert (=> b!1423457 (= e!908714 (and (inv!19506 (left!12560 (c!233981 (tokens!1895 thiss!10022)))) tp!403457 (inv!19506 (right!12890 (c!233981 (tokens!1895 thiss!10022)))) tp!403458))))

(declare-fun b!1423459 () Bool)

(declare-fun e!908713 () Bool)

(declare-fun tp!403459 () Bool)

(assert (=> b!1423459 (= e!908713 tp!403459)))

(declare-fun b!1423458 () Bool)

(assert (=> b!1423458 (= e!908714 (and (inv!19513 (xs!7700 (c!233981 (tokens!1895 thiss!10022)))) e!908713))))

(assert (=> b!1423199 (= tp!403418 (and (inv!19506 (c!233981 (tokens!1895 thiss!10022))) e!908714))))

(assert (= (and b!1423199 (is-Node!4971 (c!233981 (tokens!1895 thiss!10022)))) b!1423457))

(assert (= b!1423458 b!1423459))

(assert (= (and b!1423199 (is-Leaf!7459 (c!233981 (tokens!1895 thiss!10022)))) b!1423458))

(declare-fun m!1616569 () Bool)

(assert (=> b!1423457 m!1616569))

(declare-fun m!1616571 () Bool)

(assert (=> b!1423457 m!1616571))

(declare-fun m!1616575 () Bool)

(assert (=> b!1423458 m!1616575))

(assert (=> b!1423199 m!1615901))

(declare-fun b!1423462 () Bool)

(declare-fun b_free!35099 () Bool)

(declare-fun b_next!35803 () Bool)

(assert (=> b!1423462 (= b_free!35099 (not b_next!35803))))

(declare-fun tp!403462 () Bool)

(declare-fun b_and!95115 () Bool)

(assert (=> b!1423462 (= tp!403462 b_and!95115)))

(declare-fun b_free!35101 () Bool)

(declare-fun b_next!35805 () Bool)

(assert (=> b!1423462 (= b_free!35101 (not b_next!35805))))

(declare-fun tb!73635 () Bool)

(declare-fun t!124623 () Bool)

(assert (=> (and b!1423462 (= (toChars!3730 (transformation!2572 (h!20115 (rules!11203 other!32)))) (toChars!3730 (transformation!2572 (rule!4335 (h!20114 lt!482159))))) t!124623) tb!73635))

(declare-fun result!89826 () Bool)

(assert (= result!89826 result!89822))

(assert (=> d!407730 t!124623))

(declare-fun b_and!95117 () Bool)

(declare-fun tp!403460 () Bool)

(assert (=> b!1423462 (= tp!403460 (and (=> t!124623 result!89826) b_and!95117))))

(declare-fun e!908715 () Bool)

(assert (=> b!1423462 (= e!908715 (and tp!403462 tp!403460))))

(declare-fun e!908718 () Bool)

(declare-fun tp!403461 () Bool)

(declare-fun b!1423461 () Bool)

(assert (=> b!1423461 (= e!908718 (and tp!403461 (inv!19502 (tag!2834 (h!20115 (rules!11203 other!32)))) (inv!19516 (transformation!2572 (h!20115 (rules!11203 other!32)))) e!908715))))

(declare-fun b!1423460 () Bool)

(declare-fun e!908716 () Bool)

(declare-fun tp!403463 () Bool)

(assert (=> b!1423460 (= e!908716 (and e!908718 tp!403463))))

(assert (=> b!1423188 (= tp!403420 e!908716)))

(assert (= b!1423461 b!1423462))

(assert (= b!1423460 b!1423461))

(assert (= (and b!1423188 (is-Cons!14714 (rules!11203 other!32))) b!1423460))

(declare-fun m!1616601 () Bool)

(assert (=> b!1423461 m!1616601))

(declare-fun m!1616605 () Bool)

(assert (=> b!1423461 m!1616605))

(push 1)

(assert b_and!95117)

(assert (not d!407712))

(assert (not b!1423261))

(assert (not b!1423357))

(assert (not d!407788))

(assert (not d!407792))

(assert (not b!1423421))

(assert (not d!407756))

(assert (not d!407710))

(assert (not b!1423286))

(assert (not b_next!35805))

(assert (not b!1423409))

(assert (not b!1423285))

(assert (not b!1423392))

(assert (not b_next!35803))

(assert (not d!407698))

(assert (not b!1423274))

(assert (not d!407722))

(assert (not b!1423190))

(assert (not b!1423310))

(assert (not d!407702))

(assert (not b!1423309))

(assert (not b!1423296))

(assert (not b!1423294))

(assert (not b!1423436))

(assert (not d!407782))

(assert (not b!1423449))

(assert (not b!1423270))

(assert (not d!407708))

(assert (not d!407784))

(assert (not b!1423459))

(assert (not b_next!35801))

(assert (not d!407774))

(assert (not b!1423413))

(assert (not b!1423316))

(assert (not d!407738))

(assert (not b!1423435))

(assert b_and!95115)

(assert (not b!1423395))

(assert (not b!1423199))

(assert (not b!1423297))

(assert (not b!1423461))

(assert (not d!407790))

(assert (not b!1423423))

(assert (not b!1423458))

(assert (not b!1423410))

(assert (not d!407730))

(assert (not d!407760))

(assert (not b!1423271))

(assert (not b!1423275))

(assert (not d!407786))

(assert (not b!1423400))

(assert (not b!1423391))

(assert (not d!407776))

(assert (not b!1423422))

(assert (not d!407796))

(assert (not d!407704))

(assert (not d!407706))

(assert (not d!407718))

(assert (not b!1423460))

(assert (not b!1423420))

(assert (not b!1423456))

(assert (not b!1423434))

(assert (not b!1423394))

(assert (not b!1423273))

(assert (not d!407720))

(assert (not d!407714))

(assert (not b_next!35799))

(assert (not b!1423457))

(assert (not b!1423414))

(assert (not b!1423320))

(assert (not d!407794))

(assert (not d!407726))

(assert (not tb!73633))

(assert (not b!1423401))

(assert (not b!1423263))

(assert (not d!407728))

(assert (not b!1423407))

(assert (not b!1423397))

(assert b_and!95111)

(assert (not b!1423299))

(assert b_and!95113)

(assert (not d!407770))

(assert (not b_lambda!44647))

(assert (not b!1423272))

(assert (not b!1423450))

(assert (not b!1423318))

(check-sat)

(pop 1)

(push 1)

(assert b_and!95117)

(assert (not b_next!35805))

(assert (not b_next!35803))

(assert (not b_next!35801))

(assert b_and!95115)

(assert (not b_next!35799))

(assert b_and!95111)

(assert b_and!95113)

(check-sat)

(pop 1)

