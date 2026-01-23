; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!131218 () Bool)

(assert start!131218)

(declare-fun b!1422811 () Bool)

(declare-fun e!908299 () Bool)

(declare-datatypes ((C!7946 0))(
  ( (C!7947 (val!4543 Int)) )
))
(declare-datatypes ((List!14769 0))(
  ( (Nil!14703) (Cons!14703 (h!20104 C!7946) (t!124596 List!14769)) )
))
(declare-datatypes ((IArray!9937 0))(
  ( (IArray!9938 (innerList!5026 List!14769)) )
))
(declare-datatypes ((Conc!4966 0))(
  ( (Node!4966 (left!12554 Conc!4966) (right!12884 Conc!4966) (csize!10162 Int) (cheight!5177 Int)) (Leaf!7453 (xs!7695 IArray!9937) (csize!10163 Int)) (Empty!4966) )
))
(declare-datatypes ((BalanceConc!9872 0))(
  ( (BalanceConc!9873 (c!233915 Conc!4966)) )
))
(declare-datatypes ((List!14770 0))(
  ( (Nil!14704) (Cons!14704 (h!20105 (_ BitVec 16)) (t!124597 List!14770)) )
))
(declare-datatypes ((TokenValue!2660 0))(
  ( (FloatLiteralValue!5320 (text!19065 List!14770)) (TokenValueExt!2659 (__x!9120 Int)) (Broken!13300 (value!82868 List!14770)) (Object!2725) (End!2660) (Def!2660) (Underscore!2660) (Match!2660) (Else!2660) (Error!2660) (Case!2660) (If!2660) (Extends!2660) (Abstract!2660) (Class!2660) (Val!2660) (DelimiterValue!5320 (del!2720 List!14770)) (KeywordValue!2666 (value!82869 List!14770)) (CommentValue!5320 (value!82870 List!14770)) (WhitespaceValue!5320 (value!82871 List!14770)) (IndentationValue!2660 (value!82872 List!14770)) (String!17557) (Int32!2660) (Broken!13301 (value!82873 List!14770)) (Boolean!2661) (Unit!22116) (OperatorValue!2663 (op!2720 List!14770)) (IdentifierValue!5320 (value!82874 List!14770)) (IdentifierValue!5321 (value!82875 List!14770)) (WhitespaceValue!5321 (value!82876 List!14770)) (True!5320) (False!5320) (Broken!13302 (value!82877 List!14770)) (Broken!13303 (value!82878 List!14770)) (True!5321) (RightBrace!2660) (RightBracket!2660) (Colon!2660) (Null!2660) (Comma!2660) (LeftBracket!2660) (False!5321) (LeftBrace!2660) (ImaginaryLiteralValue!2660 (text!19066 List!14770)) (StringLiteralValue!7980 (value!82879 List!14770)) (EOFValue!2660 (value!82880 List!14770)) (IdentValue!2660 (value!82881 List!14770)) (DelimiterValue!5321 (value!82882 List!14770)) (DedentValue!2660 (value!82883 List!14770)) (NewLineValue!2660 (value!82884 List!14770)) (IntegerValue!7980 (value!82885 (_ BitVec 32)) (text!19067 List!14770)) (IntegerValue!7981 (value!82886 Int) (text!19068 List!14770)) (Times!2660) (Or!2660) (Equal!2660) (Minus!2660) (Broken!13304 (value!82887 List!14770)) (And!2660) (Div!2660) (LessEqual!2660) (Mod!2660) (Concat!6544) (Not!2660) (Plus!2660) (SpaceValue!2660 (value!82888 List!14770)) (IntegerValue!7982 (value!82889 Int) (text!19069 List!14770)) (StringLiteralValue!7981 (text!19070 List!14770)) (FloatLiteralValue!5321 (text!19071 List!14770)) (BytesLiteralValue!2660 (value!82890 List!14770)) (CommentValue!5321 (value!82891 List!14770)) (StringLiteralValue!7982 (value!82892 List!14770)) (ErrorTokenValue!2660 (msg!2721 List!14770)) )
))
(declare-datatypes ((Regex!3884 0))(
  ( (ElementMatch!3884 (c!233916 C!7946)) (Concat!6545 (regOne!8280 Regex!3884) (regTwo!8280 Regex!3884)) (EmptyExpr!3884) (Star!3884 (reg!4213 Regex!3884)) (EmptyLang!3884) (Union!3884 (regOne!8281 Regex!3884) (regTwo!8281 Regex!3884)) )
))
(declare-datatypes ((String!17558 0))(
  ( (String!17559 (value!82893 String)) )
))
(declare-datatypes ((TokenValueInjection!4980 0))(
  ( (TokenValueInjection!4981 (toValue!3869 Int) (toChars!3728 Int)) )
))
(declare-datatypes ((Rule!4940 0))(
  ( (Rule!4941 (regex!2570 Regex!3884) (tag!2832 String!17558) (isSeparator!2570 Bool) (transformation!2570 TokenValueInjection!4980)) )
))
(declare-datatypes ((Token!4802 0))(
  ( (Token!4803 (value!82894 TokenValue!2660) (rule!4333 Rule!4940) (size!12097 Int) (originalCharacters!3432 List!14769)) )
))
(declare-datatypes ((List!14771 0))(
  ( (Nil!14705) (Cons!14705 (h!20106 Token!4802) (t!124598 List!14771)) )
))
(declare-datatypes ((IArray!9939 0))(
  ( (IArray!9940 (innerList!5027 List!14771)) )
))
(declare-datatypes ((Conc!4967 0))(
  ( (Node!4967 (left!12555 Conc!4967) (right!12885 Conc!4967) (csize!10164 Int) (cheight!5178 Int)) (Leaf!7454 (xs!7696 IArray!9939) (csize!10165 Int)) (Empty!4967) )
))
(declare-datatypes ((BalanceConc!9874 0))(
  ( (BalanceConc!9875 (c!233917 Conc!4967)) )
))
(declare-datatypes ((List!14772 0))(
  ( (Nil!14706) (Cons!14706 (h!20107 Rule!4940) (t!124599 List!14772)) )
))
(declare-datatypes ((PrintableTokens!922 0))(
  ( (PrintableTokens!923 (rules!11199 List!14772) (tokens!1891 BalanceConc!9874)) )
))
(declare-fun thiss!10022 () PrintableTokens!922)

(declare-fun tp!403331 () Bool)

(declare-fun inv!19488 (Conc!4967) Bool)

(assert (=> b!1422811 (= e!908299 (and (inv!19488 (c!233917 (tokens!1891 thiss!10022))) tp!403331))))

(declare-fun b!1422812 () Bool)

(declare-fun e!908301 () List!14769)

(declare-fun lt!481741 () List!14771)

(declare-fun ++!3900 (List!14769 List!14769) List!14769)

(declare-fun list!5832 (BalanceConc!9872) List!14769)

(declare-fun charsOf!1495 (Token!4802) BalanceConc!9872)

(declare-datatypes ((LexerInterface!2236 0))(
  ( (LexerInterfaceExt!2233 (__x!9121 Int)) (Lexer!2234) )
))
(declare-fun printList!690 (LexerInterface!2236 List!14771) List!14769)

(assert (=> b!1422812 (= e!908301 (++!3900 (list!5832 (charsOf!1495 (h!20106 lt!481741))) (printList!690 Lexer!2234 (t!124598 lt!481741))))))

(declare-fun b!1422813 () Bool)

(declare-fun e!908295 () Bool)

(declare-fun e!908302 () Bool)

(assert (=> b!1422813 (= e!908295 e!908302)))

(declare-fun res!644218 () Bool)

(assert (=> b!1422813 (=> (not res!644218) (not e!908302))))

(declare-fun lt!481739 () List!14771)

(declare-fun isEmpty!9089 (List!14771) Bool)

(assert (=> b!1422813 (= res!644218 (isEmpty!9089 lt!481739))))

(declare-fun list!5833 (BalanceConc!9874) List!14771)

(assert (=> b!1422813 (= lt!481739 (list!5833 (tokens!1891 thiss!10022)))))

(declare-fun res!644224 () Bool)

(declare-fun e!908303 () Bool)

(assert (=> start!131218 (=> (not res!644224) (not e!908303))))

(declare-fun other!32 () PrintableTokens!922)

(assert (=> start!131218 (= res!644224 (= (rules!11199 thiss!10022) (rules!11199 other!32)))))

(assert (=> start!131218 e!908303))

(declare-fun e!908300 () Bool)

(declare-fun inv!19489 (PrintableTokens!922) Bool)

(assert (=> start!131218 (and (inv!19489 thiss!10022) e!908300)))

(declare-fun e!908296 () Bool)

(assert (=> start!131218 (and (inv!19489 other!32) e!908296)))

(declare-fun b!1422814 () Bool)

(declare-fun e!908304 () Bool)

(declare-fun tp!403332 () Bool)

(assert (=> b!1422814 (= e!908304 (and (inv!19488 (c!233917 (tokens!1891 other!32))) tp!403332))))

(declare-fun b!1422815 () Bool)

(declare-fun e!908294 () Bool)

(declare-fun e!908298 () Bool)

(assert (=> b!1422815 (= e!908294 e!908298)))

(declare-fun res!644223 () Bool)

(assert (=> b!1422815 (=> res!644223 e!908298)))

(declare-datatypes ((Option!2821 0))(
  ( (None!2820) (Some!2820 (v!22252 PrintableTokens!922)) )
))
(declare-fun lt!481742 () Option!2821)

(declare-fun isEmpty!9090 (Option!2821) Bool)

(assert (=> b!1422815 (= res!644223 (isEmpty!9090 lt!481742))))

(assert (=> b!1422815 (= lt!481742 (Some!2820 other!32))))

(declare-fun b!1422816 () Bool)

(declare-fun res!644220 () Bool)

(assert (=> b!1422816 (=> res!644220 e!908298)))

(declare-fun get!4517 (Option!2821) PrintableTokens!922)

(assert (=> b!1422816 (= res!644220 (not (= (rules!11199 (get!4517 lt!481742)) (rules!11199 thiss!10022))))))

(declare-fun b!1422817 () Bool)

(declare-fun e!908297 () Bool)

(assert (=> b!1422817 (= e!908302 e!908297)))

(declare-fun res!644221 () Bool)

(assert (=> b!1422817 (=> (not res!644221) (not e!908297))))

(declare-fun lt!481746 () List!14771)

(declare-fun ++!3901 (List!14771 List!14771) List!14771)

(assert (=> b!1422817 (= res!644221 (= lt!481741 (++!3901 lt!481746 lt!481741)))))

(assert (=> b!1422817 (= lt!481741 (list!5833 (tokens!1891 other!32)))))

(assert (=> b!1422817 (= lt!481746 (list!5833 (BalanceConc!9875 Empty!4967)))))

(declare-fun b!1422818 () Bool)

(declare-fun res!644222 () Bool)

(assert (=> b!1422818 (=> (not res!644222) (not e!908295))))

(declare-fun isEmpty!9091 (BalanceConc!9874) Bool)

(assert (=> b!1422818 (= res!644222 (isEmpty!9091 (tokens!1891 thiss!10022)))))

(declare-fun b!1422819 () Bool)

(assert (=> b!1422819 (= e!908301 Nil!14703)))

(declare-fun tp!403334 () Bool)

(declare-fun b!1422820 () Bool)

(declare-fun inv!19490 (BalanceConc!9874) Bool)

(assert (=> b!1422820 (= e!908296 (and tp!403334 (inv!19490 (tokens!1891 other!32)) e!908304))))

(declare-fun b!1422821 () Bool)

(assert (=> b!1422821 (= e!908303 e!908295)))

(declare-fun res!644215 () Bool)

(assert (=> b!1422821 (=> (not res!644215) (not e!908295))))

(assert (=> b!1422821 (= res!644215 (not (isEmpty!9091 (tokens!1891 other!32))))))

(declare-datatypes ((Unit!22117 0))(
  ( (Unit!22118) )
))
(declare-fun lt!481745 () Unit!22117)

(declare-fun lemmaInvariant!266 (PrintableTokens!922) Unit!22117)

(assert (=> b!1422821 (= lt!481745 (lemmaInvariant!266 thiss!10022))))

(declare-fun lt!481748 () Unit!22117)

(assert (=> b!1422821 (= lt!481748 (lemmaInvariant!266 other!32))))

(declare-fun b!1422822 () Bool)

(assert (=> b!1422822 (= e!908297 (not e!908294))))

(declare-fun res!644216 () Bool)

(assert (=> b!1422822 (=> res!644216 e!908294)))

(declare-fun lt!481747 () BalanceConc!9872)

(assert (=> b!1422822 (= res!644216 (not (= lt!481747 (BalanceConc!9873 Empty!4966))))))

(declare-fun e!908305 () Bool)

(assert (=> b!1422822 e!908305))

(declare-fun res!644217 () Bool)

(assert (=> b!1422822 (=> (not res!644217) (not e!908305))))

(declare-fun lt!481752 () BalanceConc!9872)

(declare-fun lt!481744 () BalanceConc!9872)

(assert (=> b!1422822 (= res!644217 (= lt!481752 lt!481744))))

(declare-fun print!1027 (LexerInterface!2236 BalanceConc!9874) BalanceConc!9872)

(assert (=> b!1422822 (= lt!481744 (print!1027 Lexer!2234 (tokens!1891 other!32)))))

(declare-fun print!1028 (PrintableTokens!922) BalanceConc!9872)

(assert (=> b!1422822 (= lt!481752 (print!1028 other!32))))

(declare-fun lt!481750 () Unit!22117)

(declare-fun theoremInvertabilityWhenTokenListSeparable!56 (LexerInterface!2236 List!14772 List!14771) Unit!22117)

(assert (=> b!1422822 (= lt!481750 (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 other!32) lt!481741))))

(declare-fun lt!481753 () BalanceConc!9872)

(assert (=> b!1422822 (= lt!481753 lt!481747)))

(assert (=> b!1422822 (= lt!481747 (print!1027 Lexer!2234 (tokens!1891 thiss!10022)))))

(assert (=> b!1422822 (= lt!481753 (print!1028 thiss!10022))))

(declare-fun lt!481743 () Unit!22117)

(assert (=> b!1422822 (= lt!481743 (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 thiss!10022) lt!481739))))

(declare-fun e!908306 () Bool)

(assert (=> b!1422822 e!908306))

(declare-fun res!644225 () Bool)

(assert (=> b!1422822 (=> (not res!644225) (not e!908306))))

(declare-fun lt!481749 () List!14771)

(declare-fun lt!481740 () List!14769)

(declare-fun lt!481754 () List!14769)

(assert (=> b!1422822 (= res!644225 (= (printList!690 Lexer!2234 lt!481749) (++!3900 lt!481740 lt!481754)))))

(assert (=> b!1422822 (= lt!481754 (printList!690 Lexer!2234 lt!481741))))

(assert (=> b!1422822 (= lt!481740 (printList!690 Lexer!2234 Nil!14705))))

(assert (=> b!1422822 (= lt!481749 (++!3901 Nil!14705 lt!481741))))

(declare-fun lt!481751 () Unit!22117)

(declare-fun lemmaPrintConcatSameAsConcatPrint!55 (LexerInterface!2236 List!14771 List!14771) Unit!22117)

(assert (=> b!1422822 (= lt!481751 (lemmaPrintConcatSameAsConcatPrint!55 Lexer!2234 Nil!14705 lt!481741))))

(declare-fun b!1422823 () Bool)

(declare-fun res!644219 () Bool)

(assert (=> b!1422823 (=> (not res!644219) (not e!908305))))

(declare-fun printTailRec!664 (LexerInterface!2236 BalanceConc!9874 Int BalanceConc!9872) BalanceConc!9872)

(assert (=> b!1422823 (= res!644219 (= lt!481744 (printTailRec!664 Lexer!2234 (tokens!1891 other!32) 0 (BalanceConc!9873 Empty!4966))))))

(declare-fun b!1422824 () Bool)

(assert (=> b!1422824 (= e!908305 (= lt!481754 e!908301))))

(declare-fun c!233914 () Bool)

(assert (=> b!1422824 (= c!233914 (is-Cons!14705 lt!481741))))

(declare-fun b!1422825 () Bool)

(assert (=> b!1422825 (= e!908306 (= lt!481740 Nil!14703))))

(declare-fun b!1422826 () Bool)

(declare-fun tp!403333 () Bool)

(assert (=> b!1422826 (= e!908300 (and tp!403333 (inv!19490 (tokens!1891 thiss!10022)) e!908299))))

(declare-fun b!1422827 () Bool)

(declare-fun isDefined!2282 (Option!2821) Bool)

(assert (=> b!1422827 (= e!908298 (isDefined!2282 lt!481742))))

(assert (= (and start!131218 res!644224) b!1422821))

(assert (= (and b!1422821 res!644215) b!1422818))

(assert (= (and b!1422818 res!644222) b!1422813))

(assert (= (and b!1422813 res!644218) b!1422817))

(assert (= (and b!1422817 res!644221) b!1422822))

(assert (= (and b!1422822 res!644225) b!1422825))

(assert (= (and b!1422822 res!644217) b!1422823))

(assert (= (and b!1422823 res!644219) b!1422824))

(assert (= (and b!1422824 c!233914) b!1422812))

(assert (= (and b!1422824 (not c!233914)) b!1422819))

(assert (= (and b!1422822 (not res!644216)) b!1422815))

(assert (= (and b!1422815 (not res!644223)) b!1422816))

(assert (= (and b!1422816 (not res!644220)) b!1422827))

(assert (= b!1422826 b!1422811))

(assert (= start!131218 b!1422826))

(assert (= b!1422820 b!1422814))

(assert (= start!131218 b!1422820))

(declare-fun m!1614937 () Bool)

(assert (=> b!1422813 m!1614937))

(declare-fun m!1614939 () Bool)

(assert (=> b!1422813 m!1614939))

(declare-fun m!1614941 () Bool)

(assert (=> b!1422817 m!1614941))

(declare-fun m!1614943 () Bool)

(assert (=> b!1422817 m!1614943))

(declare-fun m!1614945 () Bool)

(assert (=> b!1422817 m!1614945))

(declare-fun m!1614947 () Bool)

(assert (=> start!131218 m!1614947))

(declare-fun m!1614949 () Bool)

(assert (=> start!131218 m!1614949))

(declare-fun m!1614951 () Bool)

(assert (=> b!1422827 m!1614951))

(declare-fun m!1614953 () Bool)

(assert (=> b!1422815 m!1614953))

(declare-fun m!1614955 () Bool)

(assert (=> b!1422816 m!1614955))

(declare-fun m!1614957 () Bool)

(assert (=> b!1422820 m!1614957))

(declare-fun m!1614959 () Bool)

(assert (=> b!1422823 m!1614959))

(declare-fun m!1614961 () Bool)

(assert (=> b!1422811 m!1614961))

(declare-fun m!1614963 () Bool)

(assert (=> b!1422826 m!1614963))

(declare-fun m!1614965 () Bool)

(assert (=> b!1422821 m!1614965))

(declare-fun m!1614967 () Bool)

(assert (=> b!1422821 m!1614967))

(declare-fun m!1614969 () Bool)

(assert (=> b!1422821 m!1614969))

(declare-fun m!1614971 () Bool)

(assert (=> b!1422814 m!1614971))

(declare-fun m!1614973 () Bool)

(assert (=> b!1422822 m!1614973))

(declare-fun m!1614975 () Bool)

(assert (=> b!1422822 m!1614975))

(declare-fun m!1614977 () Bool)

(assert (=> b!1422822 m!1614977))

(declare-fun m!1614979 () Bool)

(assert (=> b!1422822 m!1614979))

(declare-fun m!1614981 () Bool)

(assert (=> b!1422822 m!1614981))

(declare-fun m!1614983 () Bool)

(assert (=> b!1422822 m!1614983))

(declare-fun m!1614985 () Bool)

(assert (=> b!1422822 m!1614985))

(declare-fun m!1614987 () Bool)

(assert (=> b!1422822 m!1614987))

(declare-fun m!1614989 () Bool)

(assert (=> b!1422822 m!1614989))

(declare-fun m!1614991 () Bool)

(assert (=> b!1422822 m!1614991))

(declare-fun m!1614993 () Bool)

(assert (=> b!1422822 m!1614993))

(declare-fun m!1614995 () Bool)

(assert (=> b!1422822 m!1614995))

(declare-fun m!1614997 () Bool)

(assert (=> b!1422818 m!1614997))

(declare-fun m!1614999 () Bool)

(assert (=> b!1422812 m!1614999))

(assert (=> b!1422812 m!1614999))

(declare-fun m!1615001 () Bool)

(assert (=> b!1422812 m!1615001))

(declare-fun m!1615003 () Bool)

(assert (=> b!1422812 m!1615003))

(assert (=> b!1422812 m!1615001))

(assert (=> b!1422812 m!1615003))

(declare-fun m!1615005 () Bool)

(assert (=> b!1422812 m!1615005))

(push 1)

(assert (not b!1422823))

(assert (not b!1422822))

(assert (not b!1422820))

(assert (not b!1422813))

(assert (not b!1422814))

(assert (not b!1422827))

(assert (not b!1422812))

(assert (not b!1422816))

(assert (not b!1422817))

(assert (not b!1422815))

(assert (not start!131218))

(assert (not b!1422811))

(assert (not b!1422826))

(assert (not b!1422821))

(assert (not b!1422818))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!407553 () Bool)

(assert (=> d!407553 (= (isEmpty!9090 lt!481742) (not (is-Some!2820 lt!481742)))))

(assert (=> b!1422815 d!407553))

(declare-fun d!407555 () Bool)

(declare-fun isBalanced!1475 (Conc!4967) Bool)

(assert (=> d!407555 (= (inv!19490 (tokens!1891 thiss!10022)) (isBalanced!1475 (c!233917 (tokens!1891 thiss!10022))))))

(declare-fun bs!339885 () Bool)

(assert (= bs!339885 d!407555))

(declare-fun m!1615077 () Bool)

(assert (=> bs!339885 m!1615077))

(assert (=> b!1422826 d!407555))

(declare-fun d!407557 () Bool)

(assert (=> d!407557 (= (isDefined!2282 lt!481742) (not (isEmpty!9090 lt!481742)))))

(declare-fun bs!339886 () Bool)

(assert (= bs!339886 d!407557))

(assert (=> bs!339886 m!1614953))

(assert (=> b!1422827 d!407557))

(declare-fun d!407559 () Bool)

(assert (=> d!407559 (= (get!4517 lt!481742) (v!22252 lt!481742))))

(assert (=> b!1422816 d!407559))

(declare-fun d!407561 () Bool)

(declare-fun lt!481819 () BalanceConc!9872)

(declare-fun printListTailRec!274 (LexerInterface!2236 List!14771 List!14769) List!14769)

(declare-fun dropList!447 (BalanceConc!9874 Int) List!14771)

(assert (=> d!407561 (= (list!5832 lt!481819) (printListTailRec!274 Lexer!2234 (dropList!447 (tokens!1891 other!32) 0) (list!5832 (BalanceConc!9873 Empty!4966))))))

(declare-fun e!908350 () BalanceConc!9872)

(assert (=> d!407561 (= lt!481819 e!908350)))

(declare-fun c!233927 () Bool)

(declare-fun size!12099 (BalanceConc!9874) Int)

(assert (=> d!407561 (= c!233927 (>= 0 (size!12099 (tokens!1891 other!32))))))

(declare-fun e!908351 () Bool)

(assert (=> d!407561 e!908351))

(declare-fun res!644265 () Bool)

(assert (=> d!407561 (=> (not res!644265) (not e!908351))))

(assert (=> d!407561 (= res!644265 (>= 0 0))))

(assert (=> d!407561 (= (printTailRec!664 Lexer!2234 (tokens!1891 other!32) 0 (BalanceConc!9873 Empty!4966)) lt!481819)))

(declare-fun b!1422885 () Bool)

(assert (=> b!1422885 (= e!908351 (<= 0 (size!12099 (tokens!1891 other!32))))))

(declare-fun b!1422886 () Bool)

(assert (=> b!1422886 (= e!908350 (BalanceConc!9873 Empty!4966))))

(declare-fun b!1422887 () Bool)

(declare-fun ++!3904 (BalanceConc!9872 BalanceConc!9872) BalanceConc!9872)

(declare-fun apply!3749 (BalanceConc!9874 Int) Token!4802)

(assert (=> b!1422887 (= e!908350 (printTailRec!664 Lexer!2234 (tokens!1891 other!32) (+ 0 1) (++!3904 (BalanceConc!9873 Empty!4966) (charsOf!1495 (apply!3749 (tokens!1891 other!32) 0)))))))

(declare-fun lt!481820 () List!14771)

(assert (=> b!1422887 (= lt!481820 (list!5833 (tokens!1891 other!32)))))

(declare-fun lt!481823 () Unit!22117)

(declare-fun lemmaDropApply!469 (List!14771 Int) Unit!22117)

(assert (=> b!1422887 (= lt!481823 (lemmaDropApply!469 lt!481820 0))))

(declare-fun head!2806 (List!14771) Token!4802)

(declare-fun drop!715 (List!14771 Int) List!14771)

(declare-fun apply!3750 (List!14771 Int) Token!4802)

(assert (=> b!1422887 (= (head!2806 (drop!715 lt!481820 0)) (apply!3750 lt!481820 0))))

(declare-fun lt!481822 () Unit!22117)

(assert (=> b!1422887 (= lt!481822 lt!481823)))

(declare-fun lt!481817 () List!14771)

(assert (=> b!1422887 (= lt!481817 (list!5833 (tokens!1891 other!32)))))

(declare-fun lt!481821 () Unit!22117)

(declare-fun lemmaDropTail!449 (List!14771 Int) Unit!22117)

(assert (=> b!1422887 (= lt!481821 (lemmaDropTail!449 lt!481817 0))))

(declare-fun tail!2139 (List!14771) List!14771)

(assert (=> b!1422887 (= (tail!2139 (drop!715 lt!481817 0)) (drop!715 lt!481817 (+ 0 1)))))

(declare-fun lt!481818 () Unit!22117)

(assert (=> b!1422887 (= lt!481818 lt!481821)))

(assert (= (and d!407561 res!644265) b!1422885))

(assert (= (and d!407561 c!233927) b!1422886))

(assert (= (and d!407561 (not c!233927)) b!1422887))

(declare-fun m!1615079 () Bool)

(assert (=> d!407561 m!1615079))

(declare-fun m!1615081 () Bool)

(assert (=> d!407561 m!1615081))

(assert (=> d!407561 m!1615079))

(declare-fun m!1615083 () Bool)

(assert (=> d!407561 m!1615083))

(declare-fun m!1615085 () Bool)

(assert (=> d!407561 m!1615085))

(declare-fun m!1615087 () Bool)

(assert (=> d!407561 m!1615087))

(assert (=> d!407561 m!1615083))

(assert (=> b!1422885 m!1615081))

(declare-fun m!1615089 () Bool)

(assert (=> b!1422887 m!1615089))

(assert (=> b!1422887 m!1614943))

(declare-fun m!1615091 () Bool)

(assert (=> b!1422887 m!1615091))

(declare-fun m!1615093 () Bool)

(assert (=> b!1422887 m!1615093))

(declare-fun m!1615095 () Bool)

(assert (=> b!1422887 m!1615095))

(declare-fun m!1615097 () Bool)

(assert (=> b!1422887 m!1615097))

(assert (=> b!1422887 m!1615097))

(declare-fun m!1615099 () Bool)

(assert (=> b!1422887 m!1615099))

(declare-fun m!1615101 () Bool)

(assert (=> b!1422887 m!1615101))

(assert (=> b!1422887 m!1615089))

(declare-fun m!1615103 () Bool)

(assert (=> b!1422887 m!1615103))

(declare-fun m!1615105 () Bool)

(assert (=> b!1422887 m!1615105))

(declare-fun m!1615107 () Bool)

(assert (=> b!1422887 m!1615107))

(assert (=> b!1422887 m!1615095))

(declare-fun m!1615109 () Bool)

(assert (=> b!1422887 m!1615109))

(declare-fun m!1615111 () Bool)

(assert (=> b!1422887 m!1615111))

(assert (=> b!1422887 m!1615109))

(assert (=> b!1422887 m!1615107))

(assert (=> b!1422823 d!407561))

(declare-fun b!1422896 () Bool)

(declare-fun e!908357 () List!14769)

(assert (=> b!1422896 (= e!908357 (printList!690 Lexer!2234 (t!124598 lt!481741)))))

(declare-fun b!1422898 () Bool)

(declare-fun res!644270 () Bool)

(declare-fun e!908356 () Bool)

(assert (=> b!1422898 (=> (not res!644270) (not e!908356))))

(declare-fun lt!481826 () List!14769)

(declare-fun size!12100 (List!14769) Int)

(assert (=> b!1422898 (= res!644270 (= (size!12100 lt!481826) (+ (size!12100 (list!5832 (charsOf!1495 (h!20106 lt!481741)))) (size!12100 (printList!690 Lexer!2234 (t!124598 lt!481741))))))))

(declare-fun b!1422899 () Bool)

(assert (=> b!1422899 (= e!908356 (or (not (= (printList!690 Lexer!2234 (t!124598 lt!481741)) Nil!14703)) (= lt!481826 (list!5832 (charsOf!1495 (h!20106 lt!481741))))))))

(declare-fun b!1422897 () Bool)

(assert (=> b!1422897 (= e!908357 (Cons!14703 (h!20104 (list!5832 (charsOf!1495 (h!20106 lt!481741)))) (++!3900 (t!124596 (list!5832 (charsOf!1495 (h!20106 lt!481741)))) (printList!690 Lexer!2234 (t!124598 lt!481741)))))))

(declare-fun d!407565 () Bool)

(assert (=> d!407565 e!908356))

(declare-fun res!644271 () Bool)

(assert (=> d!407565 (=> (not res!644271) (not e!908356))))

(declare-fun content!2169 (List!14769) (Set C!7946))

(assert (=> d!407565 (= res!644271 (= (content!2169 lt!481826) (set.union (content!2169 (list!5832 (charsOf!1495 (h!20106 lt!481741)))) (content!2169 (printList!690 Lexer!2234 (t!124598 lt!481741))))))))

(assert (=> d!407565 (= lt!481826 e!908357)))

(declare-fun c!233930 () Bool)

(assert (=> d!407565 (= c!233930 (is-Nil!14703 (list!5832 (charsOf!1495 (h!20106 lt!481741)))))))

(assert (=> d!407565 (= (++!3900 (list!5832 (charsOf!1495 (h!20106 lt!481741))) (printList!690 Lexer!2234 (t!124598 lt!481741))) lt!481826)))

(assert (= (and d!407565 c!233930) b!1422896))

(assert (= (and d!407565 (not c!233930)) b!1422897))

(assert (= (and d!407565 res!644271) b!1422898))

(assert (= (and b!1422898 res!644270) b!1422899))

(declare-fun m!1615117 () Bool)

(assert (=> b!1422898 m!1615117))

(assert (=> b!1422898 m!1615001))

(declare-fun m!1615119 () Bool)

(assert (=> b!1422898 m!1615119))

(assert (=> b!1422898 m!1615003))

(declare-fun m!1615121 () Bool)

(assert (=> b!1422898 m!1615121))

(assert (=> b!1422897 m!1615003))

(declare-fun m!1615123 () Bool)

(assert (=> b!1422897 m!1615123))

(declare-fun m!1615125 () Bool)

(assert (=> d!407565 m!1615125))

(assert (=> d!407565 m!1615001))

(declare-fun m!1615127 () Bool)

(assert (=> d!407565 m!1615127))

(assert (=> d!407565 m!1615003))

(declare-fun m!1615129 () Bool)

(assert (=> d!407565 m!1615129))

(assert (=> b!1422812 d!407565))

(declare-fun d!407571 () Bool)

(declare-fun list!5836 (Conc!4966) List!14769)

(assert (=> d!407571 (= (list!5832 (charsOf!1495 (h!20106 lt!481741))) (list!5836 (c!233915 (charsOf!1495 (h!20106 lt!481741)))))))

(declare-fun bs!339889 () Bool)

(assert (= bs!339889 d!407571))

(declare-fun m!1615131 () Bool)

(assert (=> bs!339889 m!1615131))

(assert (=> b!1422812 d!407571))

(declare-fun d!407573 () Bool)

(declare-fun lt!481829 () BalanceConc!9872)

(assert (=> d!407573 (= (list!5832 lt!481829) (originalCharacters!3432 (h!20106 lt!481741)))))

(declare-fun dynLambda!6737 (Int TokenValue!2660) BalanceConc!9872)

(assert (=> d!407573 (= lt!481829 (dynLambda!6737 (toChars!3728 (transformation!2570 (rule!4333 (h!20106 lt!481741)))) (value!82894 (h!20106 lt!481741))))))

(assert (=> d!407573 (= (charsOf!1495 (h!20106 lt!481741)) lt!481829)))

(declare-fun b_lambda!44643 () Bool)

(assert (=> (not b_lambda!44643) (not d!407573)))

(declare-fun bs!339890 () Bool)

(assert (= bs!339890 d!407573))

(declare-fun m!1615133 () Bool)

(assert (=> bs!339890 m!1615133))

(declare-fun m!1615135 () Bool)

(assert (=> bs!339890 m!1615135))

(assert (=> b!1422812 d!407573))

(declare-fun d!407575 () Bool)

(declare-fun c!233936 () Bool)

(assert (=> d!407575 (= c!233936 (is-Cons!14705 (t!124598 lt!481741)))))

(declare-fun e!908366 () List!14769)

(assert (=> d!407575 (= (printList!690 Lexer!2234 (t!124598 lt!481741)) e!908366)))

(declare-fun b!1422913 () Bool)

(assert (=> b!1422913 (= e!908366 (++!3900 (list!5832 (charsOf!1495 (h!20106 (t!124598 lt!481741)))) (printList!690 Lexer!2234 (t!124598 (t!124598 lt!481741)))))))

(declare-fun b!1422914 () Bool)

(assert (=> b!1422914 (= e!908366 Nil!14703)))

(assert (= (and d!407575 c!233936) b!1422913))

(assert (= (and d!407575 (not c!233936)) b!1422914))

(declare-fun m!1615137 () Bool)

(assert (=> b!1422913 m!1615137))

(assert (=> b!1422913 m!1615137))

(declare-fun m!1615141 () Bool)

(assert (=> b!1422913 m!1615141))

(declare-fun m!1615143 () Bool)

(assert (=> b!1422913 m!1615143))

(assert (=> b!1422913 m!1615141))

(assert (=> b!1422913 m!1615143))

(declare-fun m!1615147 () Bool)

(assert (=> b!1422913 m!1615147))

(assert (=> b!1422812 d!407575))

(declare-fun d!407579 () Bool)

(declare-fun c!233940 () Bool)

(assert (=> d!407579 (= c!233940 (is-Node!4967 (c!233917 (tokens!1891 other!32))))))

(declare-fun e!908373 () Bool)

(assert (=> d!407579 (= (inv!19488 (c!233917 (tokens!1891 other!32))) e!908373)))

(declare-fun b!1422924 () Bool)

(declare-fun inv!19494 (Conc!4967) Bool)

(assert (=> b!1422924 (= e!908373 (inv!19494 (c!233917 (tokens!1891 other!32))))))

(declare-fun b!1422925 () Bool)

(declare-fun e!908374 () Bool)

(assert (=> b!1422925 (= e!908373 e!908374)))

(declare-fun res!644278 () Bool)

(assert (=> b!1422925 (= res!644278 (not (is-Leaf!7454 (c!233917 (tokens!1891 other!32)))))))

(assert (=> b!1422925 (=> res!644278 e!908374)))

(declare-fun b!1422926 () Bool)

(declare-fun inv!19495 (Conc!4967) Bool)

(assert (=> b!1422926 (= e!908374 (inv!19495 (c!233917 (tokens!1891 other!32))))))

(assert (= (and d!407579 c!233940) b!1422924))

(assert (= (and d!407579 (not c!233940)) b!1422925))

(assert (= (and b!1422925 (not res!644278)) b!1422926))

(declare-fun m!1615153 () Bool)

(assert (=> b!1422924 m!1615153))

(declare-fun m!1615155 () Bool)

(assert (=> b!1422926 m!1615155))

(assert (=> b!1422814 d!407579))

(declare-fun d!407583 () Bool)

(declare-fun res!644291 () Bool)

(declare-fun e!908383 () Bool)

(assert (=> d!407583 (=> (not res!644291) (not e!908383))))

(declare-fun isEmpty!9095 (List!14772) Bool)

(assert (=> d!407583 (= res!644291 (not (isEmpty!9095 (rules!11199 thiss!10022))))))

(assert (=> d!407583 (= (inv!19489 thiss!10022) e!908383)))

(declare-fun b!1422945 () Bool)

(declare-fun res!644292 () Bool)

(assert (=> b!1422945 (=> (not res!644292) (not e!908383))))

(declare-fun rulesInvariant!2090 (LexerInterface!2236 List!14772) Bool)

(assert (=> b!1422945 (= res!644292 (rulesInvariant!2090 Lexer!2234 (rules!11199 thiss!10022)))))

(declare-fun b!1422946 () Bool)

(declare-fun res!644293 () Bool)

(assert (=> b!1422946 (=> (not res!644293) (not e!908383))))

(declare-fun rulesProduceEachTokenIndividually!817 (LexerInterface!2236 List!14772 BalanceConc!9874) Bool)

(assert (=> b!1422946 (= res!644293 (rulesProduceEachTokenIndividually!817 Lexer!2234 (rules!11199 thiss!10022) (tokens!1891 thiss!10022)))))

(declare-fun b!1422947 () Bool)

(declare-fun separableTokens!202 (LexerInterface!2236 BalanceConc!9874 List!14772) Bool)

(assert (=> b!1422947 (= e!908383 (separableTokens!202 Lexer!2234 (tokens!1891 thiss!10022) (rules!11199 thiss!10022)))))

(assert (= (and d!407583 res!644291) b!1422945))

(assert (= (and b!1422945 res!644292) b!1422946))

(assert (= (and b!1422946 res!644293) b!1422947))

(declare-fun m!1615175 () Bool)

(assert (=> d!407583 m!1615175))

(declare-fun m!1615177 () Bool)

(assert (=> b!1422945 m!1615177))

(declare-fun m!1615179 () Bool)

(assert (=> b!1422946 m!1615179))

(declare-fun m!1615181 () Bool)

(assert (=> b!1422947 m!1615181))

(assert (=> start!131218 d!407583))

(declare-fun d!407595 () Bool)

(declare-fun res!644294 () Bool)

(declare-fun e!908384 () Bool)

(assert (=> d!407595 (=> (not res!644294) (not e!908384))))

(assert (=> d!407595 (= res!644294 (not (isEmpty!9095 (rules!11199 other!32))))))

(assert (=> d!407595 (= (inv!19489 other!32) e!908384)))

(declare-fun b!1422948 () Bool)

(declare-fun res!644295 () Bool)

(assert (=> b!1422948 (=> (not res!644295) (not e!908384))))

(assert (=> b!1422948 (= res!644295 (rulesInvariant!2090 Lexer!2234 (rules!11199 other!32)))))

(declare-fun b!1422949 () Bool)

(declare-fun res!644296 () Bool)

(assert (=> b!1422949 (=> (not res!644296) (not e!908384))))

(assert (=> b!1422949 (= res!644296 (rulesProduceEachTokenIndividually!817 Lexer!2234 (rules!11199 other!32) (tokens!1891 other!32)))))

(declare-fun b!1422950 () Bool)

(assert (=> b!1422950 (= e!908384 (separableTokens!202 Lexer!2234 (tokens!1891 other!32) (rules!11199 other!32)))))

(assert (= (and d!407595 res!644294) b!1422948))

(assert (= (and b!1422948 res!644295) b!1422949))

(assert (= (and b!1422949 res!644296) b!1422950))

(declare-fun m!1615183 () Bool)

(assert (=> d!407595 m!1615183))

(declare-fun m!1615185 () Bool)

(assert (=> b!1422948 m!1615185))

(declare-fun m!1615187 () Bool)

(assert (=> b!1422949 m!1615187))

(declare-fun m!1615189 () Bool)

(assert (=> b!1422950 m!1615189))

(assert (=> start!131218 d!407595))

(declare-fun d!407597 () Bool)

(assert (=> d!407597 (= (isEmpty!9089 lt!481739) (is-Nil!14705 lt!481739))))

(assert (=> b!1422813 d!407597))

(declare-fun d!407599 () Bool)

(declare-fun list!5837 (Conc!4967) List!14771)

(assert (=> d!407599 (= (list!5833 (tokens!1891 thiss!10022)) (list!5837 (c!233917 (tokens!1891 thiss!10022))))))

(declare-fun bs!339894 () Bool)

(assert (= bs!339894 d!407599))

(declare-fun m!1615191 () Bool)

(assert (=> bs!339894 m!1615191))

(assert (=> b!1422813 d!407599))

(declare-fun d!407601 () Bool)

(assert (=> d!407601 (= (inv!19490 (tokens!1891 other!32)) (isBalanced!1475 (c!233917 (tokens!1891 other!32))))))

(declare-fun bs!339895 () Bool)

(assert (= bs!339895 d!407601))

(declare-fun m!1615193 () Bool)

(assert (=> bs!339895 m!1615193))

(assert (=> b!1422820 d!407601))

(declare-fun d!407603 () Bool)

(declare-fun c!233944 () Bool)

(assert (=> d!407603 (= c!233944 (is-Node!4967 (c!233917 (tokens!1891 thiss!10022))))))

(declare-fun e!908385 () Bool)

(assert (=> d!407603 (= (inv!19488 (c!233917 (tokens!1891 thiss!10022))) e!908385)))

(declare-fun b!1422951 () Bool)

(assert (=> b!1422951 (= e!908385 (inv!19494 (c!233917 (tokens!1891 thiss!10022))))))

(declare-fun b!1422952 () Bool)

(declare-fun e!908386 () Bool)

(assert (=> b!1422952 (= e!908385 e!908386)))

(declare-fun res!644297 () Bool)

(assert (=> b!1422952 (= res!644297 (not (is-Leaf!7454 (c!233917 (tokens!1891 thiss!10022)))))))

(assert (=> b!1422952 (=> res!644297 e!908386)))

(declare-fun b!1422953 () Bool)

(assert (=> b!1422953 (= e!908386 (inv!19495 (c!233917 (tokens!1891 thiss!10022))))))

(assert (= (and d!407603 c!233944) b!1422951))

(assert (= (and d!407603 (not c!233944)) b!1422952))

(assert (= (and b!1422952 (not res!644297)) b!1422953))

(declare-fun m!1615195 () Bool)

(assert (=> b!1422951 m!1615195))

(declare-fun m!1615197 () Bool)

(assert (=> b!1422953 m!1615197))

(assert (=> b!1422811 d!407603))

(declare-fun d!407605 () Bool)

(declare-fun c!233945 () Bool)

(assert (=> d!407605 (= c!233945 (is-Cons!14705 Nil!14705))))

(declare-fun e!908387 () List!14769)

(assert (=> d!407605 (= (printList!690 Lexer!2234 Nil!14705) e!908387)))

(declare-fun b!1422954 () Bool)

(assert (=> b!1422954 (= e!908387 (++!3900 (list!5832 (charsOf!1495 (h!20106 Nil!14705))) (printList!690 Lexer!2234 (t!124598 Nil!14705))))))

(declare-fun b!1422955 () Bool)

(assert (=> b!1422955 (= e!908387 Nil!14703)))

(assert (= (and d!407605 c!233945) b!1422954))

(assert (= (and d!407605 (not c!233945)) b!1422955))

(declare-fun m!1615199 () Bool)

(assert (=> b!1422954 m!1615199))

(assert (=> b!1422954 m!1615199))

(declare-fun m!1615201 () Bool)

(assert (=> b!1422954 m!1615201))

(declare-fun m!1615203 () Bool)

(assert (=> b!1422954 m!1615203))

(assert (=> b!1422954 m!1615201))

(assert (=> b!1422954 m!1615203))

(declare-fun m!1615205 () Bool)

(assert (=> b!1422954 m!1615205))

(assert (=> b!1422822 d!407605))

(declare-fun d!407607 () Bool)

(declare-fun c!233946 () Bool)

(assert (=> d!407607 (= c!233946 (is-Cons!14705 lt!481749))))

(declare-fun e!908388 () List!14769)

(assert (=> d!407607 (= (printList!690 Lexer!2234 lt!481749) e!908388)))

(declare-fun b!1422956 () Bool)

(assert (=> b!1422956 (= e!908388 (++!3900 (list!5832 (charsOf!1495 (h!20106 lt!481749))) (printList!690 Lexer!2234 (t!124598 lt!481749))))))

(declare-fun b!1422957 () Bool)

(assert (=> b!1422957 (= e!908388 Nil!14703)))

(assert (= (and d!407607 c!233946) b!1422956))

(assert (= (and d!407607 (not c!233946)) b!1422957))

(declare-fun m!1615207 () Bool)

(assert (=> b!1422956 m!1615207))

(assert (=> b!1422956 m!1615207))

(declare-fun m!1615209 () Bool)

(assert (=> b!1422956 m!1615209))

(declare-fun m!1615211 () Bool)

(assert (=> b!1422956 m!1615211))

(assert (=> b!1422956 m!1615209))

(assert (=> b!1422956 m!1615211))

(declare-fun m!1615213 () Bool)

(assert (=> b!1422956 m!1615213))

(assert (=> b!1422822 d!407607))

(declare-fun d!407609 () Bool)

(declare-fun e!908391 () Bool)

(assert (=> d!407609 e!908391))

(declare-fun res!644300 () Bool)

(assert (=> d!407609 (=> (not res!644300) (not e!908391))))

(declare-fun lt!481837 () BalanceConc!9872)

(declare-datatypes ((tuple2!14040 0))(
  ( (tuple2!14041 (_1!7906 BalanceConc!9874) (_2!7906 BalanceConc!9872)) )
))
(declare-fun lex!1022 (LexerInterface!2236 List!14772 BalanceConc!9872) tuple2!14040)

(assert (=> d!407609 (= res!644300 (= (list!5833 (_1!7906 (lex!1022 Lexer!2234 (rules!11199 other!32) lt!481837))) (list!5833 (tokens!1891 other!32))))))

(assert (=> d!407609 (= lt!481837 (print!1027 Lexer!2234 (tokens!1891 other!32)))))

(declare-fun lt!481838 () Unit!22117)

(assert (=> d!407609 (= lt!481838 (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 other!32) (list!5833 (tokens!1891 other!32))))))

(assert (=> d!407609 (= (print!1028 other!32) lt!481837)))

(declare-fun b!1422960 () Bool)

(declare-fun isEmpty!9096 (List!14769) Bool)

(assert (=> b!1422960 (= e!908391 (isEmpty!9096 (list!5832 (_2!7906 (lex!1022 Lexer!2234 (rules!11199 other!32) lt!481837)))))))

(assert (= (and d!407609 res!644300) b!1422960))

(declare-fun m!1615215 () Bool)

(assert (=> d!407609 m!1615215))

(assert (=> d!407609 m!1614943))

(declare-fun m!1615217 () Bool)

(assert (=> d!407609 m!1615217))

(assert (=> d!407609 m!1614979))

(assert (=> d!407609 m!1614943))

(declare-fun m!1615219 () Bool)

(assert (=> d!407609 m!1615219))

(assert (=> b!1422960 m!1615219))

(declare-fun m!1615221 () Bool)

(assert (=> b!1422960 m!1615221))

(assert (=> b!1422960 m!1615221))

(declare-fun m!1615223 () Bool)

(assert (=> b!1422960 m!1615223))

(assert (=> b!1422822 d!407609))

(declare-fun d!407611 () Bool)

(declare-fun e!908422 () Bool)

(assert (=> d!407611 e!908422))

(declare-fun res!644329 () Bool)

(assert (=> d!407611 (=> (not res!644329) (not e!908422))))

(declare-fun seqFromList!1684 (List!14771) BalanceConc!9874)

(assert (=> d!407611 (= res!644329 (= (list!5833 (_1!7906 (lex!1022 Lexer!2234 (rules!11199 thiss!10022) (print!1027 Lexer!2234 (seqFromList!1684 lt!481739))))) lt!481739))))

(declare-fun lt!481939 () Unit!22117)

(declare-fun e!908421 () Unit!22117)

(assert (=> d!407611 (= lt!481939 e!908421)))

(declare-fun c!233960 () Bool)

(assert (=> d!407611 (= c!233960 (or (is-Nil!14705 lt!481739) (is-Nil!14705 (t!124598 lt!481739))))))

(assert (=> d!407611 (not (isEmpty!9095 (rules!11199 thiss!10022)))))

(assert (=> d!407611 (= (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 thiss!10022) lt!481739) lt!481939)))

(declare-fun b!1423015 () Bool)

(declare-fun Unit!22122 () Unit!22117)

(assert (=> b!1423015 (= e!908421 Unit!22122)))

(declare-fun b!1423016 () Bool)

(declare-fun Unit!22123 () Unit!22117)

(assert (=> b!1423016 (= e!908421 Unit!22123)))

(declare-fun lt!481927 () BalanceConc!9872)

(assert (=> b!1423016 (= lt!481927 (print!1027 Lexer!2234 (seqFromList!1684 lt!481739)))))

(declare-fun lt!481943 () BalanceConc!9872)

(assert (=> b!1423016 (= lt!481943 (print!1027 Lexer!2234 (seqFromList!1684 (t!124598 lt!481739))))))

(declare-fun lt!481948 () tuple2!14040)

(assert (=> b!1423016 (= lt!481948 (lex!1022 Lexer!2234 (rules!11199 thiss!10022) lt!481943))))

(declare-fun lt!481929 () List!14769)

(assert (=> b!1423016 (= lt!481929 (list!5832 (charsOf!1495 (h!20106 lt!481739))))))

(declare-fun lt!481941 () List!14769)

(assert (=> b!1423016 (= lt!481941 (list!5832 lt!481943))))

(declare-fun lt!481947 () Unit!22117)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!748 (List!14769 List!14769) Unit!22117)

(assert (=> b!1423016 (= lt!481947 (lemmaConcatTwoListThenFirstIsPrefix!748 lt!481929 lt!481941))))

(declare-fun isPrefix!1181 (List!14769 List!14769) Bool)

(assert (=> b!1423016 (isPrefix!1181 lt!481929 (++!3900 lt!481929 lt!481941))))

(declare-fun lt!481942 () Unit!22117)

(assert (=> b!1423016 (= lt!481942 lt!481947)))

(declare-fun lt!481930 () Unit!22117)

(assert (=> b!1423016 (= lt!481930 (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 thiss!10022) (t!124598 lt!481739)))))

(declare-fun lt!481935 () Unit!22117)

(declare-fun seqFromListBHdTlConstructive!77 (Token!4802 List!14771 BalanceConc!9874) Unit!22117)

(assert (=> b!1423016 (= lt!481935 (seqFromListBHdTlConstructive!77 (h!20106 (t!124598 lt!481739)) (t!124598 (t!124598 lt!481739)) (_1!7906 lt!481948)))))

(declare-fun prepend!393 (BalanceConc!9874 Token!4802) BalanceConc!9874)

(assert (=> b!1423016 (= (list!5833 (_1!7906 lt!481948)) (list!5833 (prepend!393 (seqFromList!1684 (t!124598 (t!124598 lt!481739))) (h!20106 (t!124598 lt!481739)))))))

(declare-fun lt!481946 () Unit!22117)

(assert (=> b!1423016 (= lt!481946 lt!481935)))

(declare-datatypes ((tuple2!14042 0))(
  ( (tuple2!14043 (_1!7907 Token!4802) (_2!7907 List!14769)) )
))
(declare-datatypes ((Option!2823 0))(
  ( (None!2822) (Some!2822 (v!22262 tuple2!14042)) )
))
(declare-fun lt!481934 () Option!2823)

(declare-fun maxPrefix!1171 (LexerInterface!2236 List!14772 List!14769) Option!2823)

(assert (=> b!1423016 (= lt!481934 (maxPrefix!1171 Lexer!2234 (rules!11199 thiss!10022) (list!5832 lt!481927)))))

(declare-fun singletonSeq!1187 (Token!4802) BalanceConc!9874)

(assert (=> b!1423016 (= (print!1027 Lexer!2234 (singletonSeq!1187 (h!20106 lt!481739))) (printTailRec!664 Lexer!2234 (singletonSeq!1187 (h!20106 lt!481739)) 0 (BalanceConc!9873 Empty!4966)))))

(declare-fun lt!481932 () Unit!22117)

(declare-fun Unit!22124 () Unit!22117)

(assert (=> b!1423016 (= lt!481932 Unit!22124)))

(declare-fun lt!481928 () Unit!22117)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!221 (LexerInterface!2236 List!14772 List!14769 List!14769) Unit!22117)

(assert (=> b!1423016 (= lt!481928 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!221 Lexer!2234 (rules!11199 thiss!10022) (list!5832 (charsOf!1495 (h!20106 lt!481739))) (list!5832 lt!481943)))))

(assert (=> b!1423016 (= (list!5832 (charsOf!1495 (h!20106 lt!481739))) (originalCharacters!3432 (h!20106 lt!481739)))))

(declare-fun lt!481944 () Unit!22117)

(declare-fun Unit!22125 () Unit!22117)

(assert (=> b!1423016 (= lt!481944 Unit!22125)))

(declare-fun singletonSeq!1188 (C!7946) BalanceConc!9872)

(declare-fun apply!3751 (BalanceConc!9872 Int) C!7946)

(declare-fun head!2807 (List!14769) C!7946)

(assert (=> b!1423016 (= (list!5832 (singletonSeq!1188 (apply!3751 (charsOf!1495 (h!20106 (t!124598 lt!481739))) 0))) (Cons!14703 (head!2807 (originalCharacters!3432 (h!20106 (t!124598 lt!481739)))) Nil!14703))))

(declare-fun lt!481925 () Unit!22117)

(declare-fun Unit!22126 () Unit!22117)

(assert (=> b!1423016 (= lt!481925 Unit!22126)))

(assert (=> b!1423016 (= (list!5832 (singletonSeq!1188 (apply!3751 (charsOf!1495 (h!20106 (t!124598 lt!481739))) 0))) (Cons!14703 (head!2807 (list!5832 lt!481943)) Nil!14703))))

(declare-fun lt!481926 () Unit!22117)

(declare-fun Unit!22127 () Unit!22117)

(assert (=> b!1423016 (= lt!481926 Unit!22127)))

(declare-fun head!2808 (BalanceConc!9872) C!7946)

(assert (=> b!1423016 (= (list!5832 (singletonSeq!1188 (apply!3751 (charsOf!1495 (h!20106 (t!124598 lt!481739))) 0))) (Cons!14703 (head!2808 lt!481943) Nil!14703))))

(declare-fun lt!481949 () Unit!22117)

(declare-fun Unit!22128 () Unit!22117)

(assert (=> b!1423016 (= lt!481949 Unit!22128)))

(declare-fun isDefined!2284 (Option!2823) Bool)

(assert (=> b!1423016 (isDefined!2284 (maxPrefix!1171 Lexer!2234 (rules!11199 thiss!10022) (originalCharacters!3432 (h!20106 lt!481739))))))

(declare-fun lt!481940 () Unit!22117)

(declare-fun Unit!22129 () Unit!22117)

(assert (=> b!1423016 (= lt!481940 Unit!22129)))

(assert (=> b!1423016 (isDefined!2284 (maxPrefix!1171 Lexer!2234 (rules!11199 thiss!10022) (list!5832 (charsOf!1495 (h!20106 lt!481739)))))))

(declare-fun lt!481936 () Unit!22117)

(declare-fun Unit!22130 () Unit!22117)

(assert (=> b!1423016 (= lt!481936 Unit!22130)))

(declare-fun lt!481937 () Unit!22117)

(declare-fun Unit!22131 () Unit!22117)

(assert (=> b!1423016 (= lt!481937 Unit!22131)))

(declare-fun get!4519 (Option!2823) tuple2!14042)

(assert (=> b!1423016 (= (_1!7907 (get!4519 (maxPrefix!1171 Lexer!2234 (rules!11199 thiss!10022) (list!5832 (charsOf!1495 (h!20106 lt!481739)))))) (h!20106 lt!481739))))

(declare-fun lt!481931 () Unit!22117)

(declare-fun Unit!22132 () Unit!22117)

(assert (=> b!1423016 (= lt!481931 Unit!22132)))

(assert (=> b!1423016 (isEmpty!9096 (_2!7907 (get!4519 (maxPrefix!1171 Lexer!2234 (rules!11199 thiss!10022) (list!5832 (charsOf!1495 (h!20106 lt!481739)))))))))

(declare-fun lt!481945 () Unit!22117)

(declare-fun Unit!22133 () Unit!22117)

(assert (=> b!1423016 (= lt!481945 Unit!22133)))

(declare-fun matchR!1807 (Regex!3884 List!14769) Bool)

(assert (=> b!1423016 (matchR!1807 (regex!2570 (rule!4333 (h!20106 lt!481739))) (list!5832 (charsOf!1495 (h!20106 lt!481739))))))

(declare-fun lt!481938 () Unit!22117)

(declare-fun Unit!22134 () Unit!22117)

(assert (=> b!1423016 (= lt!481938 Unit!22134)))

(assert (=> b!1423016 (= (rule!4333 (h!20106 lt!481739)) (rule!4333 (h!20106 lt!481739)))))

(declare-fun lt!481950 () Unit!22117)

(declare-fun Unit!22135 () Unit!22117)

(assert (=> b!1423016 (= lt!481950 Unit!22135)))

(declare-fun lt!481933 () Unit!22117)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!19 (LexerInterface!2236 List!14772 Token!4802 Rule!4940 List!14769) Unit!22117)

(assert (=> b!1423016 (= lt!481933 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!19 Lexer!2234 (rules!11199 thiss!10022) (h!20106 lt!481739) (rule!4333 (h!20106 lt!481739)) (list!5832 lt!481943)))))

(declare-fun b!1423017 () Bool)

(declare-fun isEmpty!9097 (BalanceConc!9872) Bool)

(assert (=> b!1423017 (= e!908422 (isEmpty!9097 (_2!7906 (lex!1022 Lexer!2234 (rules!11199 thiss!10022) (print!1027 Lexer!2234 (seqFromList!1684 lt!481739))))))))

(assert (= (and d!407611 c!233960) b!1423015))

(assert (= (and d!407611 (not c!233960)) b!1423016))

(assert (= (and d!407611 res!644329) b!1423017))

(declare-fun m!1615331 () Bool)

(assert (=> d!407611 m!1615331))

(declare-fun m!1615333 () Bool)

(assert (=> d!407611 m!1615333))

(declare-fun m!1615335 () Bool)

(assert (=> d!407611 m!1615335))

(assert (=> d!407611 m!1615175))

(assert (=> d!407611 m!1615333))

(declare-fun m!1615337 () Bool)

(assert (=> d!407611 m!1615337))

(assert (=> d!407611 m!1615331))

(declare-fun m!1615339 () Bool)

(assert (=> b!1423016 m!1615339))

(declare-fun m!1615341 () Bool)

(assert (=> b!1423016 m!1615341))

(declare-fun m!1615343 () Bool)

(assert (=> b!1423016 m!1615343))

(declare-fun m!1615345 () Bool)

(assert (=> b!1423016 m!1615345))

(assert (=> b!1423016 m!1615341))

(declare-fun m!1615347 () Bool)

(assert (=> b!1423016 m!1615347))

(declare-fun m!1615349 () Bool)

(assert (=> b!1423016 m!1615349))

(declare-fun m!1615351 () Bool)

(assert (=> b!1423016 m!1615351))

(declare-fun m!1615353 () Bool)

(assert (=> b!1423016 m!1615353))

(declare-fun m!1615355 () Bool)

(assert (=> b!1423016 m!1615355))

(declare-fun m!1615357 () Bool)

(assert (=> b!1423016 m!1615357))

(declare-fun m!1615359 () Bool)

(assert (=> b!1423016 m!1615359))

(declare-fun m!1615361 () Bool)

(assert (=> b!1423016 m!1615361))

(declare-fun m!1615363 () Bool)

(assert (=> b!1423016 m!1615363))

(declare-fun m!1615365 () Bool)

(assert (=> b!1423016 m!1615365))

(assert (=> b!1423016 m!1615351))

(declare-fun m!1615367 () Bool)

(assert (=> b!1423016 m!1615367))

(declare-fun m!1615369 () Bool)

(assert (=> b!1423016 m!1615369))

(declare-fun m!1615371 () Bool)

(assert (=> b!1423016 m!1615371))

(declare-fun m!1615373 () Bool)

(assert (=> b!1423016 m!1615373))

(declare-fun m!1615375 () Bool)

(assert (=> b!1423016 m!1615375))

(declare-fun m!1615377 () Bool)

(assert (=> b!1423016 m!1615377))

(declare-fun m!1615379 () Bool)

(assert (=> b!1423016 m!1615379))

(assert (=> b!1423016 m!1615369))

(assert (=> b!1423016 m!1615373))

(declare-fun m!1615381 () Bool)

(assert (=> b!1423016 m!1615381))

(declare-fun m!1615383 () Bool)

(assert (=> b!1423016 m!1615383))

(assert (=> b!1423016 m!1615353))

(declare-fun m!1615385 () Bool)

(assert (=> b!1423016 m!1615385))

(declare-fun m!1615387 () Bool)

(assert (=> b!1423016 m!1615387))

(declare-fun m!1615389 () Bool)

(assert (=> b!1423016 m!1615389))

(assert (=> b!1423016 m!1615331))

(assert (=> b!1423016 m!1615333))

(declare-fun m!1615391 () Bool)

(assert (=> b!1423016 m!1615391))

(declare-fun m!1615393 () Bool)

(assert (=> b!1423016 m!1615393))

(declare-fun m!1615395 () Bool)

(assert (=> b!1423016 m!1615395))

(assert (=> b!1423016 m!1615387))

(assert (=> b!1423016 m!1615357))

(assert (=> b!1423016 m!1615353))

(declare-fun m!1615397 () Bool)

(assert (=> b!1423016 m!1615397))

(assert (=> b!1423016 m!1615379))

(assert (=> b!1423016 m!1615391))

(declare-fun m!1615399 () Bool)

(assert (=> b!1423016 m!1615399))

(assert (=> b!1423016 m!1615399))

(declare-fun m!1615401 () Bool)

(assert (=> b!1423016 m!1615401))

(assert (=> b!1423016 m!1615391))

(assert (=> b!1423016 m!1615399))

(declare-fun m!1615403 () Bool)

(assert (=> b!1423016 m!1615403))

(assert (=> b!1423016 m!1615375))

(assert (=> b!1423016 m!1615391))

(assert (=> b!1423016 m!1615341))

(assert (=> b!1423016 m!1615371))

(declare-fun m!1615405 () Bool)

(assert (=> b!1423016 m!1615405))

(declare-fun m!1615407 () Bool)

(assert (=> b!1423016 m!1615407))

(assert (=> b!1423016 m!1615389))

(assert (=> b!1423016 m!1615361))

(assert (=> b!1423016 m!1615399))

(declare-fun m!1615409 () Bool)

(assert (=> b!1423016 m!1615409))

(assert (=> b!1423016 m!1615331))

(assert (=> b!1423017 m!1615331))

(assert (=> b!1423017 m!1615331))

(assert (=> b!1423017 m!1615333))

(assert (=> b!1423017 m!1615333))

(assert (=> b!1423017 m!1615337))

(declare-fun m!1615411 () Bool)

(assert (=> b!1423017 m!1615411))

(assert (=> b!1422822 d!407611))

(declare-fun b!1423026 () Bool)

(declare-fun e!908428 () List!14771)

(assert (=> b!1423026 (= e!908428 lt!481741)))

(declare-fun b!1423027 () Bool)

(assert (=> b!1423027 (= e!908428 (Cons!14705 (h!20106 Nil!14705) (++!3901 (t!124598 Nil!14705) lt!481741)))))

(declare-fun d!407633 () Bool)

(declare-fun e!908427 () Bool)

(assert (=> d!407633 e!908427))

(declare-fun res!644335 () Bool)

(assert (=> d!407633 (=> (not res!644335) (not e!908427))))

(declare-fun lt!481953 () List!14771)

(declare-fun content!2170 (List!14771) (Set Token!4802))

(assert (=> d!407633 (= res!644335 (= (content!2170 lt!481953) (set.union (content!2170 Nil!14705) (content!2170 lt!481741))))))

(assert (=> d!407633 (= lt!481953 e!908428)))

(declare-fun c!233963 () Bool)

(assert (=> d!407633 (= c!233963 (is-Nil!14705 Nil!14705))))

(assert (=> d!407633 (= (++!3901 Nil!14705 lt!481741) lt!481953)))

(declare-fun b!1423028 () Bool)

(declare-fun res!644334 () Bool)

(assert (=> b!1423028 (=> (not res!644334) (not e!908427))))

(declare-fun size!12101 (List!14771) Int)

(assert (=> b!1423028 (= res!644334 (= (size!12101 lt!481953) (+ (size!12101 Nil!14705) (size!12101 lt!481741))))))

(declare-fun b!1423029 () Bool)

(assert (=> b!1423029 (= e!908427 (or (not (= lt!481741 Nil!14705)) (= lt!481953 Nil!14705)))))

(assert (= (and d!407633 c!233963) b!1423026))

(assert (= (and d!407633 (not c!233963)) b!1423027))

(assert (= (and d!407633 res!644335) b!1423028))

(assert (= (and b!1423028 res!644334) b!1423029))

(declare-fun m!1615413 () Bool)

(assert (=> b!1423027 m!1615413))

(declare-fun m!1615415 () Bool)

(assert (=> d!407633 m!1615415))

(declare-fun m!1615417 () Bool)

(assert (=> d!407633 m!1615417))

(declare-fun m!1615419 () Bool)

(assert (=> d!407633 m!1615419))

(declare-fun m!1615421 () Bool)

(assert (=> b!1423028 m!1615421))

(declare-fun m!1615423 () Bool)

(assert (=> b!1423028 m!1615423))

(declare-fun m!1615425 () Bool)

(assert (=> b!1423028 m!1615425))

(assert (=> b!1422822 d!407633))

(declare-fun b!1423030 () Bool)

(declare-fun e!908430 () List!14769)

(assert (=> b!1423030 (= e!908430 lt!481754)))

(declare-fun b!1423032 () Bool)

(declare-fun res!644336 () Bool)

(declare-fun e!908429 () Bool)

(assert (=> b!1423032 (=> (not res!644336) (not e!908429))))

(declare-fun lt!481954 () List!14769)

(assert (=> b!1423032 (= res!644336 (= (size!12100 lt!481954) (+ (size!12100 lt!481740) (size!12100 lt!481754))))))

(declare-fun b!1423033 () Bool)

(assert (=> b!1423033 (= e!908429 (or (not (= lt!481754 Nil!14703)) (= lt!481954 lt!481740)))))

(declare-fun b!1423031 () Bool)

(assert (=> b!1423031 (= e!908430 (Cons!14703 (h!20104 lt!481740) (++!3900 (t!124596 lt!481740) lt!481754)))))

(declare-fun d!407635 () Bool)

(assert (=> d!407635 e!908429))

(declare-fun res!644337 () Bool)

(assert (=> d!407635 (=> (not res!644337) (not e!908429))))

(assert (=> d!407635 (= res!644337 (= (content!2169 lt!481954) (set.union (content!2169 lt!481740) (content!2169 lt!481754))))))

(assert (=> d!407635 (= lt!481954 e!908430)))

(declare-fun c!233964 () Bool)

(assert (=> d!407635 (= c!233964 (is-Nil!14703 lt!481740))))

(assert (=> d!407635 (= (++!3900 lt!481740 lt!481754) lt!481954)))

(assert (= (and d!407635 c!233964) b!1423030))

(assert (= (and d!407635 (not c!233964)) b!1423031))

(assert (= (and d!407635 res!644337) b!1423032))

(assert (= (and b!1423032 res!644336) b!1423033))

(declare-fun m!1615427 () Bool)

(assert (=> b!1423032 m!1615427))

(declare-fun m!1615429 () Bool)

(assert (=> b!1423032 m!1615429))

(declare-fun m!1615431 () Bool)

(assert (=> b!1423032 m!1615431))

(declare-fun m!1615433 () Bool)

(assert (=> b!1423031 m!1615433))

(declare-fun m!1615435 () Bool)

(assert (=> d!407635 m!1615435))

(declare-fun m!1615437 () Bool)

(assert (=> d!407635 m!1615437))

(declare-fun m!1615439 () Bool)

(assert (=> d!407635 m!1615439))

(assert (=> b!1422822 d!407635))

(declare-fun d!407637 () Bool)

(declare-fun lt!481957 () BalanceConc!9872)

(assert (=> d!407637 (= (list!5832 lt!481957) (printList!690 Lexer!2234 (list!5833 (tokens!1891 other!32))))))

(assert (=> d!407637 (= lt!481957 (printTailRec!664 Lexer!2234 (tokens!1891 other!32) 0 (BalanceConc!9873 Empty!4966)))))

(assert (=> d!407637 (= (print!1027 Lexer!2234 (tokens!1891 other!32)) lt!481957)))

(declare-fun bs!339898 () Bool)

(assert (= bs!339898 d!407637))

(declare-fun m!1615441 () Bool)

(assert (=> bs!339898 m!1615441))

(assert (=> bs!339898 m!1614943))

(assert (=> bs!339898 m!1614943))

(declare-fun m!1615443 () Bool)

(assert (=> bs!339898 m!1615443))

(assert (=> bs!339898 m!1614959))

(assert (=> b!1422822 d!407637))

(declare-fun d!407639 () Bool)

(declare-fun c!233965 () Bool)

(assert (=> d!407639 (= c!233965 (is-Cons!14705 lt!481741))))

(declare-fun e!908431 () List!14769)

(assert (=> d!407639 (= (printList!690 Lexer!2234 lt!481741) e!908431)))

(declare-fun b!1423034 () Bool)

(assert (=> b!1423034 (= e!908431 (++!3900 (list!5832 (charsOf!1495 (h!20106 lt!481741))) (printList!690 Lexer!2234 (t!124598 lt!481741))))))

(declare-fun b!1423035 () Bool)

(assert (=> b!1423035 (= e!908431 Nil!14703)))

(assert (= (and d!407639 c!233965) b!1423034))

(assert (= (and d!407639 (not c!233965)) b!1423035))

(assert (=> b!1423034 m!1614999))

(assert (=> b!1423034 m!1614999))

(assert (=> b!1423034 m!1615001))

(assert (=> b!1423034 m!1615003))

(assert (=> b!1423034 m!1615001))

(assert (=> b!1423034 m!1615003))

(assert (=> b!1423034 m!1615005))

(assert (=> b!1422822 d!407639))

(declare-fun d!407641 () Bool)

(declare-fun lt!481958 () BalanceConc!9872)

(assert (=> d!407641 (= (list!5832 lt!481958) (printList!690 Lexer!2234 (list!5833 (tokens!1891 thiss!10022))))))

(assert (=> d!407641 (= lt!481958 (printTailRec!664 Lexer!2234 (tokens!1891 thiss!10022) 0 (BalanceConc!9873 Empty!4966)))))

(assert (=> d!407641 (= (print!1027 Lexer!2234 (tokens!1891 thiss!10022)) lt!481958)))

(declare-fun bs!339899 () Bool)

(assert (= bs!339899 d!407641))

(declare-fun m!1615445 () Bool)

(assert (=> bs!339899 m!1615445))

(assert (=> bs!339899 m!1614939))

(assert (=> bs!339899 m!1614939))

(declare-fun m!1615447 () Bool)

(assert (=> bs!339899 m!1615447))

(declare-fun m!1615449 () Bool)

(assert (=> bs!339899 m!1615449))

(assert (=> b!1422822 d!407641))

(declare-fun d!407643 () Bool)

(declare-fun e!908432 () Bool)

(assert (=> d!407643 e!908432))

(declare-fun res!644338 () Bool)

(assert (=> d!407643 (=> (not res!644338) (not e!908432))))

(declare-fun lt!481959 () BalanceConc!9872)

(assert (=> d!407643 (= res!644338 (= (list!5833 (_1!7906 (lex!1022 Lexer!2234 (rules!11199 thiss!10022) lt!481959))) (list!5833 (tokens!1891 thiss!10022))))))

(assert (=> d!407643 (= lt!481959 (print!1027 Lexer!2234 (tokens!1891 thiss!10022)))))

(declare-fun lt!481960 () Unit!22117)

(assert (=> d!407643 (= lt!481960 (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 thiss!10022) (list!5833 (tokens!1891 thiss!10022))))))

(assert (=> d!407643 (= (print!1028 thiss!10022) lt!481959)))

(declare-fun b!1423036 () Bool)

(assert (=> b!1423036 (= e!908432 (isEmpty!9096 (list!5832 (_2!7906 (lex!1022 Lexer!2234 (rules!11199 thiss!10022) lt!481959)))))))

(assert (= (and d!407643 res!644338) b!1423036))

(declare-fun m!1615451 () Bool)

(assert (=> d!407643 m!1615451))

(assert (=> d!407643 m!1614939))

(declare-fun m!1615453 () Bool)

(assert (=> d!407643 m!1615453))

(assert (=> d!407643 m!1614975))

(assert (=> d!407643 m!1614939))

(declare-fun m!1615455 () Bool)

(assert (=> d!407643 m!1615455))

(assert (=> b!1423036 m!1615455))

(declare-fun m!1615457 () Bool)

(assert (=> b!1423036 m!1615457))

(assert (=> b!1423036 m!1615457))

(declare-fun m!1615459 () Bool)

(assert (=> b!1423036 m!1615459))

(assert (=> b!1422822 d!407643))

(declare-fun d!407645 () Bool)

(declare-fun e!908434 () Bool)

(assert (=> d!407645 e!908434))

(declare-fun res!644339 () Bool)

(assert (=> d!407645 (=> (not res!644339) (not e!908434))))

(assert (=> d!407645 (= res!644339 (= (list!5833 (_1!7906 (lex!1022 Lexer!2234 (rules!11199 other!32) (print!1027 Lexer!2234 (seqFromList!1684 lt!481741))))) lt!481741))))

(declare-fun lt!481975 () Unit!22117)

(declare-fun e!908433 () Unit!22117)

(assert (=> d!407645 (= lt!481975 e!908433)))

(declare-fun c!233966 () Bool)

(assert (=> d!407645 (= c!233966 (or (is-Nil!14705 lt!481741) (is-Nil!14705 (t!124598 lt!481741))))))

(assert (=> d!407645 (not (isEmpty!9095 (rules!11199 other!32)))))

(assert (=> d!407645 (= (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 other!32) lt!481741) lt!481975)))

(declare-fun b!1423037 () Bool)

(declare-fun Unit!22136 () Unit!22117)

(assert (=> b!1423037 (= e!908433 Unit!22136)))

(declare-fun b!1423038 () Bool)

(declare-fun Unit!22137 () Unit!22117)

(assert (=> b!1423038 (= e!908433 Unit!22137)))

(declare-fun lt!481963 () BalanceConc!9872)

(assert (=> b!1423038 (= lt!481963 (print!1027 Lexer!2234 (seqFromList!1684 lt!481741)))))

(declare-fun lt!481979 () BalanceConc!9872)

(assert (=> b!1423038 (= lt!481979 (print!1027 Lexer!2234 (seqFromList!1684 (t!124598 lt!481741))))))

(declare-fun lt!481984 () tuple2!14040)

(assert (=> b!1423038 (= lt!481984 (lex!1022 Lexer!2234 (rules!11199 other!32) lt!481979))))

(declare-fun lt!481965 () List!14769)

(assert (=> b!1423038 (= lt!481965 (list!5832 (charsOf!1495 (h!20106 lt!481741))))))

(declare-fun lt!481977 () List!14769)

(assert (=> b!1423038 (= lt!481977 (list!5832 lt!481979))))

(declare-fun lt!481983 () Unit!22117)

(assert (=> b!1423038 (= lt!481983 (lemmaConcatTwoListThenFirstIsPrefix!748 lt!481965 lt!481977))))

(assert (=> b!1423038 (isPrefix!1181 lt!481965 (++!3900 lt!481965 lt!481977))))

(declare-fun lt!481978 () Unit!22117)

(assert (=> b!1423038 (= lt!481978 lt!481983)))

(declare-fun lt!481966 () Unit!22117)

(assert (=> b!1423038 (= lt!481966 (theoremInvertabilityWhenTokenListSeparable!56 Lexer!2234 (rules!11199 other!32) (t!124598 lt!481741)))))

(declare-fun lt!481971 () Unit!22117)

(assert (=> b!1423038 (= lt!481971 (seqFromListBHdTlConstructive!77 (h!20106 (t!124598 lt!481741)) (t!124598 (t!124598 lt!481741)) (_1!7906 lt!481984)))))

(assert (=> b!1423038 (= (list!5833 (_1!7906 lt!481984)) (list!5833 (prepend!393 (seqFromList!1684 (t!124598 (t!124598 lt!481741))) (h!20106 (t!124598 lt!481741)))))))

(declare-fun lt!481982 () Unit!22117)

(assert (=> b!1423038 (= lt!481982 lt!481971)))

(declare-fun lt!481970 () Option!2823)

(assert (=> b!1423038 (= lt!481970 (maxPrefix!1171 Lexer!2234 (rules!11199 other!32) (list!5832 lt!481963)))))

(assert (=> b!1423038 (= (print!1027 Lexer!2234 (singletonSeq!1187 (h!20106 lt!481741))) (printTailRec!664 Lexer!2234 (singletonSeq!1187 (h!20106 lt!481741)) 0 (BalanceConc!9873 Empty!4966)))))

(declare-fun lt!481968 () Unit!22117)

(declare-fun Unit!22138 () Unit!22117)

(assert (=> b!1423038 (= lt!481968 Unit!22138)))

(declare-fun lt!481964 () Unit!22117)

(assert (=> b!1423038 (= lt!481964 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!221 Lexer!2234 (rules!11199 other!32) (list!5832 (charsOf!1495 (h!20106 lt!481741))) (list!5832 lt!481979)))))

(assert (=> b!1423038 (= (list!5832 (charsOf!1495 (h!20106 lt!481741))) (originalCharacters!3432 (h!20106 lt!481741)))))

(declare-fun lt!481980 () Unit!22117)

(declare-fun Unit!22139 () Unit!22117)

(assert (=> b!1423038 (= lt!481980 Unit!22139)))

(assert (=> b!1423038 (= (list!5832 (singletonSeq!1188 (apply!3751 (charsOf!1495 (h!20106 (t!124598 lt!481741))) 0))) (Cons!14703 (head!2807 (originalCharacters!3432 (h!20106 (t!124598 lt!481741)))) Nil!14703))))

(declare-fun lt!481961 () Unit!22117)

(declare-fun Unit!22140 () Unit!22117)

(assert (=> b!1423038 (= lt!481961 Unit!22140)))

(assert (=> b!1423038 (= (list!5832 (singletonSeq!1188 (apply!3751 (charsOf!1495 (h!20106 (t!124598 lt!481741))) 0))) (Cons!14703 (head!2807 (list!5832 lt!481979)) Nil!14703))))

(declare-fun lt!481962 () Unit!22117)

(declare-fun Unit!22141 () Unit!22117)

(assert (=> b!1423038 (= lt!481962 Unit!22141)))

(assert (=> b!1423038 (= (list!5832 (singletonSeq!1188 (apply!3751 (charsOf!1495 (h!20106 (t!124598 lt!481741))) 0))) (Cons!14703 (head!2808 lt!481979) Nil!14703))))

(declare-fun lt!481985 () Unit!22117)

(declare-fun Unit!22142 () Unit!22117)

(assert (=> b!1423038 (= lt!481985 Unit!22142)))

(assert (=> b!1423038 (isDefined!2284 (maxPrefix!1171 Lexer!2234 (rules!11199 other!32) (originalCharacters!3432 (h!20106 lt!481741))))))

(declare-fun lt!481976 () Unit!22117)

(declare-fun Unit!22143 () Unit!22117)

(assert (=> b!1423038 (= lt!481976 Unit!22143)))

(assert (=> b!1423038 (isDefined!2284 (maxPrefix!1171 Lexer!2234 (rules!11199 other!32) (list!5832 (charsOf!1495 (h!20106 lt!481741)))))))

(declare-fun lt!481972 () Unit!22117)

(declare-fun Unit!22144 () Unit!22117)

(assert (=> b!1423038 (= lt!481972 Unit!22144)))

(declare-fun lt!481973 () Unit!22117)

(declare-fun Unit!22145 () Unit!22117)

(assert (=> b!1423038 (= lt!481973 Unit!22145)))

(assert (=> b!1423038 (= (_1!7907 (get!4519 (maxPrefix!1171 Lexer!2234 (rules!11199 other!32) (list!5832 (charsOf!1495 (h!20106 lt!481741)))))) (h!20106 lt!481741))))

(declare-fun lt!481967 () Unit!22117)

(declare-fun Unit!22146 () Unit!22117)

(assert (=> b!1423038 (= lt!481967 Unit!22146)))

(assert (=> b!1423038 (isEmpty!9096 (_2!7907 (get!4519 (maxPrefix!1171 Lexer!2234 (rules!11199 other!32) (list!5832 (charsOf!1495 (h!20106 lt!481741)))))))))

(declare-fun lt!481981 () Unit!22117)

(declare-fun Unit!22147 () Unit!22117)

(assert (=> b!1423038 (= lt!481981 Unit!22147)))

(assert (=> b!1423038 (matchR!1807 (regex!2570 (rule!4333 (h!20106 lt!481741))) (list!5832 (charsOf!1495 (h!20106 lt!481741))))))

(declare-fun lt!481974 () Unit!22117)

(declare-fun Unit!22148 () Unit!22117)

(assert (=> b!1423038 (= lt!481974 Unit!22148)))

(assert (=> b!1423038 (= (rule!4333 (h!20106 lt!481741)) (rule!4333 (h!20106 lt!481741)))))

(declare-fun lt!481986 () Unit!22117)

(declare-fun Unit!22149 () Unit!22117)

(assert (=> b!1423038 (= lt!481986 Unit!22149)))

(declare-fun lt!481969 () Unit!22117)

(assert (=> b!1423038 (= lt!481969 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!19 Lexer!2234 (rules!11199 other!32) (h!20106 lt!481741) (rule!4333 (h!20106 lt!481741)) (list!5832 lt!481979)))))

(declare-fun b!1423039 () Bool)

(assert (=> b!1423039 (= e!908434 (isEmpty!9097 (_2!7906 (lex!1022 Lexer!2234 (rules!11199 other!32) (print!1027 Lexer!2234 (seqFromList!1684 lt!481741))))))))

(assert (= (and d!407645 c!233966) b!1423037))

(assert (= (and d!407645 (not c!233966)) b!1423038))

(assert (= (and d!407645 res!644339) b!1423039))

(declare-fun m!1615461 () Bool)

(assert (=> d!407645 m!1615461))

(declare-fun m!1615463 () Bool)

(assert (=> d!407645 m!1615463))

(declare-fun m!1615465 () Bool)

(assert (=> d!407645 m!1615465))

(assert (=> d!407645 m!1615183))

(assert (=> d!407645 m!1615463))

(declare-fun m!1615467 () Bool)

(assert (=> d!407645 m!1615467))

(assert (=> d!407645 m!1615461))

(declare-fun m!1615469 () Bool)

(assert (=> b!1423038 m!1615469))

(declare-fun m!1615471 () Bool)

(assert (=> b!1423038 m!1615471))

(declare-fun m!1615473 () Bool)

(assert (=> b!1423038 m!1615473))

(declare-fun m!1615475 () Bool)

(assert (=> b!1423038 m!1615475))

(assert (=> b!1423038 m!1615471))

(declare-fun m!1615477 () Bool)

(assert (=> b!1423038 m!1615477))

(declare-fun m!1615479 () Bool)

(assert (=> b!1423038 m!1615479))

(declare-fun m!1615481 () Bool)

(assert (=> b!1423038 m!1615481))

(declare-fun m!1615483 () Bool)

(assert (=> b!1423038 m!1615483))

(declare-fun m!1615485 () Bool)

(assert (=> b!1423038 m!1615485))

(declare-fun m!1615487 () Bool)

(assert (=> b!1423038 m!1615487))

(declare-fun m!1615489 () Bool)

(assert (=> b!1423038 m!1615489))

(declare-fun m!1615491 () Bool)

(assert (=> b!1423038 m!1615491))

(declare-fun m!1615493 () Bool)

(assert (=> b!1423038 m!1615493))

(declare-fun m!1615495 () Bool)

(assert (=> b!1423038 m!1615495))

(assert (=> b!1423038 m!1615481))

(declare-fun m!1615497 () Bool)

(assert (=> b!1423038 m!1615497))

(declare-fun m!1615499 () Bool)

(assert (=> b!1423038 m!1615499))

(declare-fun m!1615501 () Bool)

(assert (=> b!1423038 m!1615501))

(declare-fun m!1615503 () Bool)

(assert (=> b!1423038 m!1615503))

(declare-fun m!1615505 () Bool)

(assert (=> b!1423038 m!1615505))

(declare-fun m!1615507 () Bool)

(assert (=> b!1423038 m!1615507))

(assert (=> b!1423038 m!1614999))

(assert (=> b!1423038 m!1615499))

(assert (=> b!1423038 m!1615503))

(declare-fun m!1615509 () Bool)

(assert (=> b!1423038 m!1615509))

(declare-fun m!1615511 () Bool)

(assert (=> b!1423038 m!1615511))

(assert (=> b!1423038 m!1615483))

(declare-fun m!1615513 () Bool)

(assert (=> b!1423038 m!1615513))

(assert (=> b!1423038 m!1615137))

(declare-fun m!1615515 () Bool)

(assert (=> b!1423038 m!1615515))

(assert (=> b!1423038 m!1615461))

(assert (=> b!1423038 m!1615463))

(assert (=> b!1423038 m!1615001))

(declare-fun m!1615517 () Bool)

(assert (=> b!1423038 m!1615517))

(declare-fun m!1615519 () Bool)

(assert (=> b!1423038 m!1615519))

(assert (=> b!1423038 m!1615137))

(assert (=> b!1423038 m!1615487))

(assert (=> b!1423038 m!1615483))

(declare-fun m!1615521 () Bool)

(assert (=> b!1423038 m!1615521))

(assert (=> b!1423038 m!1614999))

(assert (=> b!1423038 m!1615001))

(declare-fun m!1615523 () Bool)

(assert (=> b!1423038 m!1615523))

(assert (=> b!1423038 m!1615523))

(declare-fun m!1615525 () Bool)

(assert (=> b!1423038 m!1615525))

(assert (=> b!1423038 m!1615001))

(assert (=> b!1423038 m!1615523))

(declare-fun m!1615527 () Bool)

(assert (=> b!1423038 m!1615527))

(assert (=> b!1423038 m!1615505))

(assert (=> b!1423038 m!1615001))

(assert (=> b!1423038 m!1615471))

(assert (=> b!1423038 m!1615501))

(declare-fun m!1615529 () Bool)

(assert (=> b!1423038 m!1615529))

(declare-fun m!1615531 () Bool)

(assert (=> b!1423038 m!1615531))

(assert (=> b!1423038 m!1615515))

(assert (=> b!1423038 m!1615491))

(assert (=> b!1423038 m!1615523))

(declare-fun m!1615533 () Bool)

(assert (=> b!1423038 m!1615533))

(assert (=> b!1423038 m!1615461))

(assert (=> b!1423039 m!1615461))

(assert (=> b!1423039 m!1615461))

(assert (=> b!1423039 m!1615463))

(assert (=> b!1423039 m!1615463))

(assert (=> b!1423039 m!1615467))

(declare-fun m!1615535 () Bool)

(assert (=> b!1423039 m!1615535))

(assert (=> b!1422822 d!407645))

(declare-fun d!407647 () Bool)

(assert (=> d!407647 (= (printList!690 Lexer!2234 (++!3901 Nil!14705 lt!481741)) (++!3900 (printList!690 Lexer!2234 Nil!14705) (printList!690 Lexer!2234 lt!481741)))))

(declare-fun lt!481989 () Unit!22117)

(declare-fun choose!8758 (LexerInterface!2236 List!14771 List!14771) Unit!22117)

(assert (=> d!407647 (= lt!481989 (choose!8758 Lexer!2234 Nil!14705 lt!481741))))

(assert (=> d!407647 (= (lemmaPrintConcatSameAsConcatPrint!55 Lexer!2234 Nil!14705 lt!481741) lt!481989)))

(declare-fun bs!339900 () Bool)

(assert (= bs!339900 d!407647))

(assert (=> bs!339900 m!1614981))

(declare-fun m!1615537 () Bool)

(assert (=> bs!339900 m!1615537))

(assert (=> bs!339900 m!1614989))

(assert (=> bs!339900 m!1614989))

(assert (=> bs!339900 m!1614983))

(declare-fun m!1615539 () Bool)

(assert (=> bs!339900 m!1615539))

(assert (=> bs!339900 m!1614983))

(declare-fun m!1615541 () Bool)

(assert (=> bs!339900 m!1615541))

(assert (=> bs!339900 m!1614981))

(assert (=> b!1422822 d!407647))

(declare-fun d!407649 () Bool)

(declare-fun lt!481992 () Bool)

(assert (=> d!407649 (= lt!481992 (isEmpty!9089 (list!5833 (tokens!1891 other!32))))))

(declare-fun isEmpty!9098 (Conc!4967) Bool)

(assert (=> d!407649 (= lt!481992 (isEmpty!9098 (c!233917 (tokens!1891 other!32))))))

(assert (=> d!407649 (= (isEmpty!9091 (tokens!1891 other!32)) lt!481992)))

(declare-fun bs!339901 () Bool)

(assert (= bs!339901 d!407649))

(assert (=> bs!339901 m!1614943))

(assert (=> bs!339901 m!1614943))

(declare-fun m!1615543 () Bool)

(assert (=> bs!339901 m!1615543))

(declare-fun m!1615545 () Bool)

(assert (=> bs!339901 m!1615545))

(assert (=> b!1422821 d!407649))

(declare-fun d!407651 () Bool)

(declare-fun e!908437 () Bool)

(assert (=> d!407651 e!908437))

(declare-fun res!644344 () Bool)

(assert (=> d!407651 (=> (not res!644344) (not e!908437))))

(assert (=> d!407651 (= res!644344 (rulesInvariant!2090 Lexer!2234 (rules!11199 thiss!10022)))))

(declare-fun Unit!22150 () Unit!22117)

(assert (=> d!407651 (= (lemmaInvariant!266 thiss!10022) Unit!22150)))

(declare-fun b!1423044 () Bool)

(declare-fun res!644345 () Bool)

(assert (=> b!1423044 (=> (not res!644345) (not e!908437))))

(assert (=> b!1423044 (= res!644345 (rulesProduceEachTokenIndividually!817 Lexer!2234 (rules!11199 thiss!10022) (tokens!1891 thiss!10022)))))

(declare-fun b!1423045 () Bool)

(assert (=> b!1423045 (= e!908437 (separableTokens!202 Lexer!2234 (tokens!1891 thiss!10022) (rules!11199 thiss!10022)))))

(assert (= (and d!407651 res!644344) b!1423044))

(assert (= (and b!1423044 res!644345) b!1423045))

(assert (=> d!407651 m!1615177))

(assert (=> b!1423044 m!1615179))

(assert (=> b!1423045 m!1615181))

(assert (=> b!1422821 d!407651))

(declare-fun d!407653 () Bool)

(declare-fun e!908438 () Bool)

(assert (=> d!407653 e!908438))

(declare-fun res!644346 () Bool)

(assert (=> d!407653 (=> (not res!644346) (not e!908438))))

(assert (=> d!407653 (= res!644346 (rulesInvariant!2090 Lexer!2234 (rules!11199 other!32)))))

(declare-fun Unit!22151 () Unit!22117)

(assert (=> d!407653 (= (lemmaInvariant!266 other!32) Unit!22151)))

(declare-fun b!1423046 () Bool)

(declare-fun res!644347 () Bool)

(assert (=> b!1423046 (=> (not res!644347) (not e!908438))))

(assert (=> b!1423046 (= res!644347 (rulesProduceEachTokenIndividually!817 Lexer!2234 (rules!11199 other!32) (tokens!1891 other!32)))))

(declare-fun b!1423047 () Bool)

(assert (=> b!1423047 (= e!908438 (separableTokens!202 Lexer!2234 (tokens!1891 other!32) (rules!11199 other!32)))))

(assert (= (and d!407653 res!644346) b!1423046))

(assert (= (and b!1423046 res!644347) b!1423047))

(assert (=> d!407653 m!1615185))

(assert (=> b!1423046 m!1615187))

(assert (=> b!1423047 m!1615189))

(assert (=> b!1422821 d!407653))

(declare-fun d!407655 () Bool)

(declare-fun lt!481993 () Bool)

(assert (=> d!407655 (= lt!481993 (isEmpty!9089 (list!5833 (tokens!1891 thiss!10022))))))

(assert (=> d!407655 (= lt!481993 (isEmpty!9098 (c!233917 (tokens!1891 thiss!10022))))))

(assert (=> d!407655 (= (isEmpty!9091 (tokens!1891 thiss!10022)) lt!481993)))

(declare-fun bs!339902 () Bool)

(assert (= bs!339902 d!407655))

(assert (=> bs!339902 m!1614939))

(assert (=> bs!339902 m!1614939))

(declare-fun m!1615547 () Bool)

(assert (=> bs!339902 m!1615547))

(declare-fun m!1615549 () Bool)

(assert (=> bs!339902 m!1615549))

(assert (=> b!1422818 d!407655))

(declare-fun b!1423048 () Bool)

(declare-fun e!908440 () List!14771)

(assert (=> b!1423048 (= e!908440 lt!481741)))

(declare-fun b!1423049 () Bool)

(assert (=> b!1423049 (= e!908440 (Cons!14705 (h!20106 lt!481746) (++!3901 (t!124598 lt!481746) lt!481741)))))

(declare-fun d!407657 () Bool)

(declare-fun e!908439 () Bool)

(assert (=> d!407657 e!908439))

(declare-fun res!644349 () Bool)

(assert (=> d!407657 (=> (not res!644349) (not e!908439))))

(declare-fun lt!481994 () List!14771)

(assert (=> d!407657 (= res!644349 (= (content!2170 lt!481994) (set.union (content!2170 lt!481746) (content!2170 lt!481741))))))

(assert (=> d!407657 (= lt!481994 e!908440)))

(declare-fun c!233967 () Bool)

(assert (=> d!407657 (= c!233967 (is-Nil!14705 lt!481746))))

(assert (=> d!407657 (= (++!3901 lt!481746 lt!481741) lt!481994)))

(declare-fun b!1423050 () Bool)

(declare-fun res!644348 () Bool)

(assert (=> b!1423050 (=> (not res!644348) (not e!908439))))

(assert (=> b!1423050 (= res!644348 (= (size!12101 lt!481994) (+ (size!12101 lt!481746) (size!12101 lt!481741))))))

(declare-fun b!1423051 () Bool)

(assert (=> b!1423051 (= e!908439 (or (not (= lt!481741 Nil!14705)) (= lt!481994 lt!481746)))))

(assert (= (and d!407657 c!233967) b!1423048))

(assert (= (and d!407657 (not c!233967)) b!1423049))

(assert (= (and d!407657 res!644349) b!1423050))

(assert (= (and b!1423050 res!644348) b!1423051))

(declare-fun m!1615551 () Bool)

(assert (=> b!1423049 m!1615551))

(declare-fun m!1615553 () Bool)

(assert (=> d!407657 m!1615553))

(declare-fun m!1615555 () Bool)

(assert (=> d!407657 m!1615555))

(assert (=> d!407657 m!1615419))

(declare-fun m!1615557 () Bool)

(assert (=> b!1423050 m!1615557))

(declare-fun m!1615559 () Bool)

(assert (=> b!1423050 m!1615559))

(assert (=> b!1423050 m!1615425))

(assert (=> b!1422817 d!407657))

(declare-fun d!407659 () Bool)

(assert (=> d!407659 (= (list!5833 (tokens!1891 other!32)) (list!5837 (c!233917 (tokens!1891 other!32))))))

(declare-fun bs!339903 () Bool)

(assert (= bs!339903 d!407659))

(declare-fun m!1615561 () Bool)

(assert (=> bs!339903 m!1615561))

(assert (=> b!1422817 d!407659))

(declare-fun d!407661 () Bool)

(assert (=> d!407661 (= (list!5833 (BalanceConc!9875 Empty!4967)) (list!5837 (c!233917 (BalanceConc!9875 Empty!4967))))))

(declare-fun bs!339904 () Bool)

(assert (= bs!339904 d!407661))

(declare-fun m!1615563 () Bool)

(assert (=> bs!339904 m!1615563))

(assert (=> b!1422817 d!407661))

(declare-fun b!1423062 () Bool)

(declare-fun b_free!35079 () Bool)

(declare-fun b_next!35783 () Bool)

(assert (=> b!1423062 (= b_free!35079 (not b_next!35783))))

(declare-fun tp!403356 () Bool)

(declare-fun b_and!95095 () Bool)

(assert (=> b!1423062 (= tp!403356 b_and!95095)))

(declare-fun b_free!35081 () Bool)

(declare-fun b_next!35785 () Bool)

(assert (=> b!1423062 (= b_free!35081 (not b_next!35785))))

(declare-fun tb!73625 () Bool)

(declare-fun t!124605 () Bool)

(assert (=> (and b!1423062 (= (toChars!3728 (transformation!2570 (h!20107 (rules!11199 thiss!10022)))) (toChars!3728 (transformation!2570 (rule!4333 (h!20106 lt!481741))))) t!124605) tb!73625))

(declare-fun b!1423067 () Bool)

(declare-fun e!908455 () Bool)

(declare-fun tp!403361 () Bool)

(declare-fun inv!19496 (Conc!4966) Bool)

(assert (=> b!1423067 (= e!908455 (and (inv!19496 (c!233915 (dynLambda!6737 (toChars!3728 (transformation!2570 (rule!4333 (h!20106 lt!481741)))) (value!82894 (h!20106 lt!481741))))) tp!403361))))

(declare-fun result!89800 () Bool)

(declare-fun inv!19497 (BalanceConc!9872) Bool)

(assert (=> tb!73625 (= result!89800 (and (inv!19497 (dynLambda!6737 (toChars!3728 (transformation!2570 (rule!4333 (h!20106 lt!481741)))) (value!82894 (h!20106 lt!481741)))) e!908455))))

(assert (= tb!73625 b!1423067))

(declare-fun m!1615565 () Bool)

(assert (=> b!1423067 m!1615565))

(declare-fun m!1615567 () Bool)

(assert (=> tb!73625 m!1615567))

(assert (=> d!407573 t!124605))

(declare-fun b_and!95097 () Bool)

(declare-fun tp!403358 () Bool)

(assert (=> b!1423062 (= tp!403358 (and (=> t!124605 result!89800) b_and!95097))))

(declare-fun e!908450 () Bool)

(assert (=> b!1423062 (= e!908450 (and tp!403356 tp!403358))))

(declare-fun tp!403355 () Bool)

(declare-fun b!1423061 () Bool)

(declare-fun e!908449 () Bool)

(declare-fun inv!19485 (String!17558) Bool)

(declare-fun inv!19498 (TokenValueInjection!4980) Bool)

(assert (=> b!1423061 (= e!908449 (and tp!403355 (inv!19485 (tag!2832 (h!20107 (rules!11199 thiss!10022)))) (inv!19498 (transformation!2570 (h!20107 (rules!11199 thiss!10022)))) e!908450))))

(declare-fun b!1423060 () Bool)

(declare-fun e!908451 () Bool)

(declare-fun tp!403357 () Bool)

(assert (=> b!1423060 (= e!908451 (and e!908449 tp!403357))))

(assert (=> b!1422826 (= tp!403333 e!908451)))

(assert (= b!1423061 b!1423062))

(assert (= b!1423060 b!1423061))

(assert (= (and b!1422826 (is-Cons!14706 (rules!11199 thiss!10022))) b!1423060))

(declare-fun m!1615569 () Bool)

(assert (=> b!1423061 m!1615569))

(declare-fun m!1615571 () Bool)

(assert (=> b!1423061 m!1615571))

(declare-fun b!1423070 () Bool)

(declare-fun b_free!35083 () Bool)

(declare-fun b_next!35787 () Bool)

(assert (=> b!1423070 (= b_free!35083 (not b_next!35787))))

(declare-fun tp!403363 () Bool)

(declare-fun b_and!95099 () Bool)

(assert (=> b!1423070 (= tp!403363 b_and!95099)))

(declare-fun b_free!35085 () Bool)

(declare-fun b_next!35789 () Bool)

(assert (=> b!1423070 (= b_free!35085 (not b_next!35789))))

(declare-fun t!124607 () Bool)

(declare-fun tb!73627 () Bool)

(assert (=> (and b!1423070 (= (toChars!3728 (transformation!2570 (h!20107 (rules!11199 other!32)))) (toChars!3728 (transformation!2570 (rule!4333 (h!20106 lt!481741))))) t!124607) tb!73627))

(declare-fun result!89804 () Bool)

(assert (= result!89804 result!89800))

(assert (=> d!407573 t!124607))

(declare-fun tp!403365 () Bool)

(declare-fun b_and!95101 () Bool)

(assert (=> b!1423070 (= tp!403365 (and (=> t!124607 result!89804) b_and!95101))))

(declare-fun e!908457 () Bool)

(assert (=> b!1423070 (= e!908457 (and tp!403363 tp!403365))))

(declare-fun e!908456 () Bool)

(declare-fun tp!403362 () Bool)

(declare-fun b!1423069 () Bool)

(assert (=> b!1423069 (= e!908456 (and tp!403362 (inv!19485 (tag!2832 (h!20107 (rules!11199 other!32)))) (inv!19498 (transformation!2570 (h!20107 (rules!11199 other!32)))) e!908457))))

(declare-fun b!1423068 () Bool)

(declare-fun e!908458 () Bool)

(declare-fun tp!403364 () Bool)

(assert (=> b!1423068 (= e!908458 (and e!908456 tp!403364))))

(assert (=> b!1422820 (= tp!403334 e!908458)))

(assert (= b!1423069 b!1423070))

(assert (= b!1423068 b!1423069))

(assert (= (and b!1422820 (is-Cons!14706 (rules!11199 other!32))) b!1423068))

(declare-fun m!1615573 () Bool)

(assert (=> b!1423069 m!1615573))

(declare-fun m!1615575 () Bool)

(assert (=> b!1423069 m!1615575))

(declare-fun e!908464 () Bool)

(declare-fun b!1423079 () Bool)

(declare-fun tp!403372 () Bool)

(declare-fun tp!403374 () Bool)

(assert (=> b!1423079 (= e!908464 (and (inv!19488 (left!12555 (c!233917 (tokens!1891 thiss!10022)))) tp!403374 (inv!19488 (right!12885 (c!233917 (tokens!1891 thiss!10022)))) tp!403372))))

(declare-fun b!1423081 () Bool)

(declare-fun e!908465 () Bool)

(declare-fun tp!403373 () Bool)

(assert (=> b!1423081 (= e!908465 tp!403373)))

(declare-fun b!1423080 () Bool)

(declare-fun inv!19501 (IArray!9939) Bool)

(assert (=> b!1423080 (= e!908464 (and (inv!19501 (xs!7696 (c!233917 (tokens!1891 thiss!10022)))) e!908465))))

(assert (=> b!1422811 (= tp!403331 (and (inv!19488 (c!233917 (tokens!1891 thiss!10022))) e!908464))))

(assert (= (and b!1422811 (is-Node!4967 (c!233917 (tokens!1891 thiss!10022)))) b!1423079))

(assert (= b!1423080 b!1423081))

(assert (= (and b!1422811 (is-Leaf!7454 (c!233917 (tokens!1891 thiss!10022)))) b!1423080))

(declare-fun m!1615577 () Bool)

(assert (=> b!1423079 m!1615577))

(declare-fun m!1615579 () Bool)

(assert (=> b!1423079 m!1615579))

(declare-fun m!1615581 () Bool)

(assert (=> b!1423080 m!1615581))

(assert (=> b!1422811 m!1614961))

(declare-fun e!908466 () Bool)

(declare-fun tp!403375 () Bool)

(declare-fun b!1423082 () Bool)

(declare-fun tp!403377 () Bool)

(assert (=> b!1423082 (= e!908466 (and (inv!19488 (left!12555 (c!233917 (tokens!1891 other!32)))) tp!403377 (inv!19488 (right!12885 (c!233917 (tokens!1891 other!32)))) tp!403375))))

(declare-fun b!1423084 () Bool)

(declare-fun e!908467 () Bool)

(declare-fun tp!403376 () Bool)

(assert (=> b!1423084 (= e!908467 tp!403376)))

(declare-fun b!1423083 () Bool)

(assert (=> b!1423083 (= e!908466 (and (inv!19501 (xs!7696 (c!233917 (tokens!1891 other!32)))) e!908467))))

(assert (=> b!1422814 (= tp!403332 (and (inv!19488 (c!233917 (tokens!1891 other!32))) e!908466))))

(assert (= (and b!1422814 (is-Node!4967 (c!233917 (tokens!1891 other!32)))) b!1423082))

(assert (= b!1423083 b!1423084))

(assert (= (and b!1422814 (is-Leaf!7454 (c!233917 (tokens!1891 other!32)))) b!1423083))

(declare-fun m!1615583 () Bool)

(assert (=> b!1423082 m!1615583))

(declare-fun m!1615585 () Bool)

(assert (=> b!1423082 m!1615585))

(declare-fun m!1615587 () Bool)

(assert (=> b!1423083 m!1615587))

(assert (=> b!1422814 m!1614971))

(push 1)

(assert (not d!407595))

(assert (not d!407653))

(assert (not d!407573))

(assert (not d!407657))

(assert (not b!1422885))

(assert (not b!1422951))

(assert (not tb!73625))

(assert (not d!407645))

(assert (not d!407649))

(assert (not b!1422948))

(assert (not b!1423031))

(assert (not b!1423016))

(assert (not d!407583))

(assert (not b!1423044))

(assert (not b!1423028))

(assert (not d!407599))

(assert (not b!1422926))

(assert (not b_next!35785))

(assert (not d!407651))

(assert (not b!1423079))

(assert (not b!1423039))

(assert (not b!1423067))

(assert (not b!1422814))

(assert b_and!95097)

(assert (not b!1422960))

(assert (not b!1423050))

(assert (not b!1422953))

(assert (not d!407555))

(assert (not b!1422898))

(assert (not b!1422946))

(assert (not d!407571))

(assert (not b!1422811))

(assert (not b_next!35789))

(assert (not b!1423083))

(assert b_and!95101)

(assert (not b!1422897))

(assert (not b!1422954))

(assert (not b!1422949))

(assert (not b_next!35787))

(assert (not d!407647))

(assert (not b!1423034))

(assert (not d!407637))

(assert (not d!407561))

(assert (not b!1422887))

(assert (not b!1422947))

(assert (not d!407565))

(assert (not b!1422924))

(assert (not b!1423061))

(assert (not d!407609))

(assert (not b!1423049))

(assert (not b!1423084))

(assert (not b!1422945))

(assert (not b!1423045))

(assert (not d!407655))

(assert (not b!1423060))

(assert (not b!1423036))

(assert (not b!1423081))

(assert (not d!407611))

(assert b_and!95095)

(assert (not d!407635))

(assert (not b!1423082))

(assert (not b!1423046))

(assert (not b_next!35783))

(assert (not b!1423068))

(assert (not b!1423038))

(assert (not b!1423069))

(assert (not b!1422956))

(assert (not b_lambda!44643))

(assert (not b!1422950))

(assert (not d!407641))

(assert (not b!1422913))

(assert b_and!95099)

(assert (not d!407601))

(assert (not d!407659))

(assert (not b!1423080))

(assert (not b!1423032))

(assert (not d!407661))

(assert (not d!407557))

(assert (not b!1423027))

(assert (not d!407643))

(assert (not b!1423047))

(assert (not d!407633))

(assert (not b!1423017))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!35785))

(assert b_and!95097)

(assert (not b_next!35789))

(assert b_and!95101)

(assert (not b_next!35787))

(assert b_and!95095)

(assert (not b_next!35783))

(assert b_and!95099)

(check-sat)

(pop 1)

