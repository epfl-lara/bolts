; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131132 () Bool)

(assert start!131132)

(declare-fun b!1422318 () Bool)

(declare-fun e!907956 () Bool)

(declare-fun e!907948 () Bool)

(assert (=> b!1422318 (= e!907956 e!907948)))

(declare-fun res!643972 () Bool)

(assert (=> b!1422318 (=> (not res!643972) (not e!907948))))

(declare-datatypes ((C!7936 0))(
  ( (C!7937 (val!4538 Int)) )
))
(declare-datatypes ((List!14749 0))(
  ( (Nil!14683) (Cons!14683 (h!20084 C!7936) (t!124568 List!14749)) )
))
(declare-datatypes ((IArray!9917 0))(
  ( (IArray!9918 (innerList!5016 List!14749)) )
))
(declare-datatypes ((Conc!4956 0))(
  ( (Node!4956 (left!12541 Conc!4956) (right!12871 Conc!4956) (csize!10142 Int) (cheight!5167 Int)) (Leaf!7440 (xs!7685 IArray!9917) (csize!10143 Int)) (Empty!4956) )
))
(declare-datatypes ((BalanceConc!9852 0))(
  ( (BalanceConc!9853 (c!233830 Conc!4956)) )
))
(declare-datatypes ((List!14750 0))(
  ( (Nil!14684) (Cons!14684 (h!20085 (_ BitVec 16)) (t!124569 List!14750)) )
))
(declare-datatypes ((TokenValue!2655 0))(
  ( (FloatLiteralValue!5310 (text!19030 List!14750)) (TokenValueExt!2654 (__x!9110 Int)) (Broken!13275 (value!82724 List!14750)) (Object!2720) (End!2655) (Def!2655) (Underscore!2655) (Match!2655) (Else!2655) (Error!2655) (Case!2655) (If!2655) (Extends!2655) (Abstract!2655) (Class!2655) (Val!2655) (DelimiterValue!5310 (del!2715 List!14750)) (KeywordValue!2661 (value!82725 List!14750)) (CommentValue!5310 (value!82726 List!14750)) (WhitespaceValue!5310 (value!82727 List!14750)) (IndentationValue!2655 (value!82728 List!14750)) (String!17530) (Int32!2655) (Broken!13276 (value!82729 List!14750)) (Boolean!2656) (Unit!22041) (OperatorValue!2658 (op!2715 List!14750)) (IdentifierValue!5310 (value!82730 List!14750)) (IdentifierValue!5311 (value!82731 List!14750)) (WhitespaceValue!5311 (value!82732 List!14750)) (True!5310) (False!5310) (Broken!13277 (value!82733 List!14750)) (Broken!13278 (value!82734 List!14750)) (True!5311) (RightBrace!2655) (RightBracket!2655) (Colon!2655) (Null!2655) (Comma!2655) (LeftBracket!2655) (False!5311) (LeftBrace!2655) (ImaginaryLiteralValue!2655 (text!19031 List!14750)) (StringLiteralValue!7965 (value!82735 List!14750)) (EOFValue!2655 (value!82736 List!14750)) (IdentValue!2655 (value!82737 List!14750)) (DelimiterValue!5311 (value!82738 List!14750)) (DedentValue!2655 (value!82739 List!14750)) (NewLineValue!2655 (value!82740 List!14750)) (IntegerValue!7965 (value!82741 (_ BitVec 32)) (text!19032 List!14750)) (IntegerValue!7966 (value!82742 Int) (text!19033 List!14750)) (Times!2655) (Or!2655) (Equal!2655) (Minus!2655) (Broken!13279 (value!82743 List!14750)) (And!2655) (Div!2655) (LessEqual!2655) (Mod!2655) (Concat!6534) (Not!2655) (Plus!2655) (SpaceValue!2655 (value!82744 List!14750)) (IntegerValue!7967 (value!82745 Int) (text!19034 List!14750)) (StringLiteralValue!7966 (text!19035 List!14750)) (FloatLiteralValue!5311 (text!19036 List!14750)) (BytesLiteralValue!2655 (value!82746 List!14750)) (CommentValue!5311 (value!82747 List!14750)) (StringLiteralValue!7967 (value!82748 List!14750)) (ErrorTokenValue!2655 (msg!2716 List!14750)) )
))
(declare-datatypes ((Regex!3879 0))(
  ( (ElementMatch!3879 (c!233831 C!7936)) (Concat!6535 (regOne!8270 Regex!3879) (regTwo!8270 Regex!3879)) (EmptyExpr!3879) (Star!3879 (reg!4208 Regex!3879)) (EmptyLang!3879) (Union!3879 (regOne!8271 Regex!3879) (regTwo!8271 Regex!3879)) )
))
(declare-datatypes ((String!17531 0))(
  ( (String!17532 (value!82749 String)) )
))
(declare-datatypes ((TokenValueInjection!4970 0))(
  ( (TokenValueInjection!4971 (toValue!3864 Int) (toChars!3723 Int)) )
))
(declare-datatypes ((Rule!4930 0))(
  ( (Rule!4931 (regex!2565 Regex!3879) (tag!2827 String!17531) (isSeparator!2565 Bool) (transformation!2565 TokenValueInjection!4970)) )
))
(declare-datatypes ((Token!4792 0))(
  ( (Token!4793 (value!82750 TokenValue!2655) (rule!4328 Rule!4930) (size!12086 Int) (originalCharacters!3427 List!14749)) )
))
(declare-datatypes ((List!14751 0))(
  ( (Nil!14685) (Cons!14685 (h!20086 Token!4792) (t!124570 List!14751)) )
))
(declare-fun lt!481211 () List!14751)

(declare-fun lt!481222 () List!14751)

(declare-fun ++!3888 (List!14751 List!14751) List!14751)

(assert (=> b!1422318 (= res!643972 (= lt!481211 (++!3888 lt!481222 lt!481211)))))

(declare-datatypes ((IArray!9919 0))(
  ( (IArray!9920 (innerList!5017 List!14751)) )
))
(declare-datatypes ((Conc!4957 0))(
  ( (Node!4957 (left!12542 Conc!4957) (right!12872 Conc!4957) (csize!10144 Int) (cheight!5168 Int)) (Leaf!7441 (xs!7686 IArray!9919) (csize!10145 Int)) (Empty!4957) )
))
(declare-datatypes ((BalanceConc!9854 0))(
  ( (BalanceConc!9855 (c!233832 Conc!4957)) )
))
(declare-datatypes ((List!14752 0))(
  ( (Nil!14686) (Cons!14686 (h!20087 Rule!4930) (t!124571 List!14752)) )
))
(declare-datatypes ((PrintableTokens!912 0))(
  ( (PrintableTokens!913 (rules!11192 List!14752) (tokens!1884 BalanceConc!9854)) )
))
(declare-fun other!32 () PrintableTokens!912)

(declare-fun list!5819 (BalanceConc!9854) List!14751)

(assert (=> b!1422318 (= lt!481211 (list!5819 (tokens!1884 other!32)))))

(assert (=> b!1422318 (= lt!481222 (list!5819 (BalanceConc!9855 Empty!4957)))))

(declare-fun b!1422319 () Bool)

(declare-fun tp!403210 () Bool)

(declare-fun e!907954 () Bool)

(declare-fun e!907955 () Bool)

(declare-fun inv!19452 (BalanceConc!9854) Bool)

(assert (=> b!1422319 (= e!907954 (and tp!403210 (inv!19452 (tokens!1884 other!32)) e!907955))))

(declare-fun b!1422320 () Bool)

(declare-fun e!907951 () Bool)

(assert (=> b!1422320 (= e!907951 e!907956)))

(declare-fun res!643978 () Bool)

(assert (=> b!1422320 (=> (not res!643978) (not e!907956))))

(declare-fun lt!481218 () List!14751)

(declare-fun isEmpty!9069 (List!14751) Bool)

(assert (=> b!1422320 (= res!643978 (isEmpty!9069 lt!481218))))

(declare-fun thiss!10022 () PrintableTokens!912)

(assert (=> b!1422320 (= lt!481218 (list!5819 (tokens!1884 thiss!10022)))))

(declare-fun b!1422321 () Bool)

(assert (=> b!1422321 (= e!907948 (not true))))

(declare-fun e!907953 () Bool)

(assert (=> b!1422321 e!907953))

(declare-fun res!643975 () Bool)

(assert (=> b!1422321 (=> (not res!643975) (not e!907953))))

(declare-fun lt!481215 () BalanceConc!9852)

(declare-fun lt!481214 () BalanceConc!9852)

(assert (=> b!1422321 (= res!643975 (= lt!481215 lt!481214))))

(declare-datatypes ((LexerInterface!2231 0))(
  ( (LexerInterfaceExt!2228 (__x!9111 Int)) (Lexer!2229) )
))
(declare-fun print!1017 (LexerInterface!2231 BalanceConc!9854) BalanceConc!9852)

(assert (=> b!1422321 (= lt!481214 (print!1017 Lexer!2229 (tokens!1884 other!32)))))

(declare-fun print!1018 (PrintableTokens!912) BalanceConc!9852)

(assert (=> b!1422321 (= lt!481215 (print!1018 other!32))))

(declare-datatypes ((Unit!22042 0))(
  ( (Unit!22043) )
))
(declare-fun lt!481213 () Unit!22042)

(declare-fun theoremInvertabilityWhenTokenListSeparable!51 (LexerInterface!2231 List!14752 List!14751) Unit!22042)

(assert (=> b!1422321 (= lt!481213 (theoremInvertabilityWhenTokenListSeparable!51 Lexer!2229 (rules!11192 other!32) lt!481211))))

(assert (=> b!1422321 (= (print!1018 thiss!10022) (print!1017 Lexer!2229 (tokens!1884 thiss!10022)))))

(declare-fun lt!481219 () Unit!22042)

(assert (=> b!1422321 (= lt!481219 (theoremInvertabilityWhenTokenListSeparable!51 Lexer!2229 (rules!11192 thiss!10022) lt!481218))))

(declare-fun e!907950 () Bool)

(assert (=> b!1422321 e!907950))

(declare-fun res!643977 () Bool)

(assert (=> b!1422321 (=> (not res!643977) (not e!907950))))

(declare-fun lt!481217 () List!14749)

(declare-fun lt!481212 () List!14751)

(declare-fun printList!685 (LexerInterface!2231 List!14751) List!14749)

(declare-fun ++!3889 (List!14749 List!14749) List!14749)

(assert (=> b!1422321 (= res!643977 (= (printList!685 Lexer!2229 lt!481212) (++!3889 lt!481217 (printList!685 Lexer!2229 lt!481211))))))

(assert (=> b!1422321 (= lt!481217 (printList!685 Lexer!2229 Nil!14685))))

(assert (=> b!1422321 (= lt!481212 (++!3888 Nil!14685 lt!481211))))

(declare-fun lt!481220 () Unit!22042)

(declare-fun lemmaPrintConcatSameAsConcatPrint!50 (LexerInterface!2231 List!14751 List!14751) Unit!22042)

(assert (=> b!1422321 (= lt!481220 (lemmaPrintConcatSameAsConcatPrint!50 Lexer!2229 Nil!14685 lt!481211))))

(declare-fun b!1422322 () Bool)

(declare-fun tp!403209 () Bool)

(declare-fun e!907957 () Bool)

(declare-fun e!907952 () Bool)

(assert (=> b!1422322 (= e!907952 (and tp!403209 (inv!19452 (tokens!1884 thiss!10022)) e!907957))))

(declare-fun b!1422323 () Bool)

(declare-fun e!907949 () Bool)

(assert (=> b!1422323 (= e!907949 e!907951)))

(declare-fun res!643976 () Bool)

(assert (=> b!1422323 (=> (not res!643976) (not e!907951))))

(declare-fun isEmpty!9070 (BalanceConc!9854) Bool)

(assert (=> b!1422323 (= res!643976 (not (isEmpty!9070 (tokens!1884 other!32))))))

(declare-fun lt!481216 () Unit!22042)

(declare-fun lemmaInvariant!261 (PrintableTokens!912) Unit!22042)

(assert (=> b!1422323 (= lt!481216 (lemmaInvariant!261 thiss!10022))))

(declare-fun lt!481221 () Unit!22042)

(assert (=> b!1422323 (= lt!481221 (lemmaInvariant!261 other!32))))

(declare-fun res!643973 () Bool)

(assert (=> start!131132 (=> (not res!643973) (not e!907949))))

(assert (=> start!131132 (= res!643973 (= (rules!11192 thiss!10022) (rules!11192 other!32)))))

(assert (=> start!131132 e!907949))

(declare-fun inv!19453 (PrintableTokens!912) Bool)

(assert (=> start!131132 (and (inv!19453 thiss!10022) e!907952)))

(assert (=> start!131132 (and (inv!19453 other!32) e!907954)))

(declare-fun b!1422324 () Bool)

(declare-fun tp!403212 () Bool)

(declare-fun inv!19454 (Conc!4957) Bool)

(assert (=> b!1422324 (= e!907955 (and (inv!19454 (c!233832 (tokens!1884 other!32))) tp!403212))))

(declare-fun b!1422325 () Bool)

(declare-fun tp!403211 () Bool)

(assert (=> b!1422325 (= e!907957 (and (inv!19454 (c!233832 (tokens!1884 thiss!10022))) tp!403211))))

(declare-fun b!1422326 () Bool)

(declare-fun printTailRec!659 (LexerInterface!2231 BalanceConc!9854 Int BalanceConc!9852) BalanceConc!9852)

(assert (=> b!1422326 (= e!907953 (= lt!481214 (printTailRec!659 Lexer!2229 (tokens!1884 other!32) 0 (BalanceConc!9853 Empty!4956))))))

(declare-fun b!1422327 () Bool)

(assert (=> b!1422327 (= e!907950 (= lt!481217 Nil!14683))))

(declare-fun b!1422328 () Bool)

(declare-fun res!643974 () Bool)

(assert (=> b!1422328 (=> (not res!643974) (not e!907951))))

(assert (=> b!1422328 (= res!643974 (isEmpty!9070 (tokens!1884 thiss!10022)))))

(assert (= (and start!131132 res!643973) b!1422323))

(assert (= (and b!1422323 res!643976) b!1422328))

(assert (= (and b!1422328 res!643974) b!1422320))

(assert (= (and b!1422320 res!643978) b!1422318))

(assert (= (and b!1422318 res!643972) b!1422321))

(assert (= (and b!1422321 res!643977) b!1422327))

(assert (= (and b!1422321 res!643975) b!1422326))

(assert (= b!1422322 b!1422325))

(assert (= start!131132 b!1422322))

(assert (= b!1422319 b!1422324))

(assert (= start!131132 b!1422319))

(declare-fun m!1613865 () Bool)

(assert (=> b!1422324 m!1613865))

(declare-fun m!1613867 () Bool)

(assert (=> b!1422321 m!1613867))

(declare-fun m!1613869 () Bool)

(assert (=> b!1422321 m!1613869))

(declare-fun m!1613871 () Bool)

(assert (=> b!1422321 m!1613871))

(declare-fun m!1613873 () Bool)

(assert (=> b!1422321 m!1613873))

(declare-fun m!1613875 () Bool)

(assert (=> b!1422321 m!1613875))

(declare-fun m!1613877 () Bool)

(assert (=> b!1422321 m!1613877))

(declare-fun m!1613879 () Bool)

(assert (=> b!1422321 m!1613879))

(declare-fun m!1613881 () Bool)

(assert (=> b!1422321 m!1613881))

(declare-fun m!1613883 () Bool)

(assert (=> b!1422321 m!1613883))

(assert (=> b!1422321 m!1613877))

(declare-fun m!1613885 () Bool)

(assert (=> b!1422321 m!1613885))

(declare-fun m!1613887 () Bool)

(assert (=> b!1422321 m!1613887))

(declare-fun m!1613889 () Bool)

(assert (=> b!1422321 m!1613889))

(declare-fun m!1613891 () Bool)

(assert (=> b!1422326 m!1613891))

(declare-fun m!1613893 () Bool)

(assert (=> b!1422319 m!1613893))

(declare-fun m!1613895 () Bool)

(assert (=> b!1422323 m!1613895))

(declare-fun m!1613897 () Bool)

(assert (=> b!1422323 m!1613897))

(declare-fun m!1613899 () Bool)

(assert (=> b!1422323 m!1613899))

(declare-fun m!1613901 () Bool)

(assert (=> b!1422325 m!1613901))

(declare-fun m!1613903 () Bool)

(assert (=> b!1422322 m!1613903))

(declare-fun m!1613905 () Bool)

(assert (=> b!1422318 m!1613905))

(declare-fun m!1613907 () Bool)

(assert (=> b!1422318 m!1613907))

(declare-fun m!1613909 () Bool)

(assert (=> b!1422318 m!1613909))

(declare-fun m!1613911 () Bool)

(assert (=> b!1422328 m!1613911))

(declare-fun m!1613913 () Bool)

(assert (=> start!131132 m!1613913))

(declare-fun m!1613915 () Bool)

(assert (=> start!131132 m!1613915))

(declare-fun m!1613917 () Bool)

(assert (=> b!1422320 m!1613917))

(declare-fun m!1613919 () Bool)

(assert (=> b!1422320 m!1613919))

(check-sat (not b!1422328) (not b!1422325) (not b!1422322) (not start!131132) (not b!1422324) (not b!1422319) (not b!1422323) (not b!1422318) (not b!1422321) (not b!1422326) (not b!1422320))
(check-sat)
