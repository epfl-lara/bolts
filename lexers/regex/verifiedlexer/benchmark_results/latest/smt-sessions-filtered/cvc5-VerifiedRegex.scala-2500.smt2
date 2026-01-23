; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!132230 () Bool)

(assert start!132230)

(declare-fun e!913640 () Bool)

(declare-datatypes ((C!8002 0))(
  ( (C!8003 (val!4571 Int)) )
))
(declare-datatypes ((List!14890 0))(
  ( (Nil!14824) (Cons!14824 (h!20225 C!8002) (t!127077 List!14890)) )
))
(declare-datatypes ((IArray!10049 0))(
  ( (IArray!10050 (innerList!5082 List!14890)) )
))
(declare-datatypes ((Conc!5022 0))(
  ( (Node!5022 (left!12632 Conc!5022) (right!12962 Conc!5022) (csize!10274 Int) (cheight!5233 Int)) (Leaf!7523 (xs!7755 IArray!10049) (csize!10275 Int)) (Empty!5022) )
))
(declare-datatypes ((BalanceConc!9984 0))(
  ( (BalanceConc!9985 (c!235371 Conc!5022)) )
))
(declare-datatypes ((List!14891 0))(
  ( (Nil!14825) (Cons!14825 (h!20226 (_ BitVec 16)) (t!127078 List!14891)) )
))
(declare-datatypes ((TokenValue!2688 0))(
  ( (FloatLiteralValue!5376 (text!19261 List!14891)) (TokenValueExt!2687 (__x!9174 Int)) (Broken!13440 (value!83666 List!14891)) (Object!2753) (End!2688) (Def!2688) (Underscore!2688) (Match!2688) (Else!2688) (Error!2688) (Case!2688) (If!2688) (Extends!2688) (Abstract!2688) (Class!2688) (Val!2688) (DelimiterValue!5376 (del!2748 List!14891)) (KeywordValue!2694 (value!83667 List!14891)) (CommentValue!5376 (value!83668 List!14891)) (WhitespaceValue!5376 (value!83669 List!14891)) (IndentationValue!2688 (value!83670 List!14891)) (String!17697) (Int32!2688) (Broken!13441 (value!83671 List!14891)) (Boolean!2689) (Unit!22367) (OperatorValue!2691 (op!2748 List!14891)) (IdentifierValue!5376 (value!83672 List!14891)) (IdentifierValue!5377 (value!83673 List!14891)) (WhitespaceValue!5377 (value!83674 List!14891)) (True!5376) (False!5376) (Broken!13442 (value!83675 List!14891)) (Broken!13443 (value!83676 List!14891)) (True!5377) (RightBrace!2688) (RightBracket!2688) (Colon!2688) (Null!2688) (Comma!2688) (LeftBracket!2688) (False!5377) (LeftBrace!2688) (ImaginaryLiteralValue!2688 (text!19262 List!14891)) (StringLiteralValue!8064 (value!83677 List!14891)) (EOFValue!2688 (value!83678 List!14891)) (IdentValue!2688 (value!83679 List!14891)) (DelimiterValue!5377 (value!83680 List!14891)) (DedentValue!2688 (value!83681 List!14891)) (NewLineValue!2688 (value!83682 List!14891)) (IntegerValue!8064 (value!83683 (_ BitVec 32)) (text!19263 List!14891)) (IntegerValue!8065 (value!83684 Int) (text!19264 List!14891)) (Times!2688) (Or!2688) (Equal!2688) (Minus!2688) (Broken!13444 (value!83685 List!14891)) (And!2688) (Div!2688) (LessEqual!2688) (Mod!2688) (Concat!6600) (Not!2688) (Plus!2688) (SpaceValue!2688 (value!83686 List!14891)) (IntegerValue!8066 (value!83687 Int) (text!19265 List!14891)) (StringLiteralValue!8065 (text!19266 List!14891)) (FloatLiteralValue!5377 (text!19267 List!14891)) (BytesLiteralValue!2688 (value!83688 List!14891)) (CommentValue!5377 (value!83689 List!14891)) (StringLiteralValue!8066 (value!83690 List!14891)) (ErrorTokenValue!2688 (msg!2749 List!14891)) )
))
(declare-datatypes ((Regex!3912 0))(
  ( (ElementMatch!3912 (c!235372 C!8002)) (Concat!6601 (regOne!8336 Regex!3912) (regTwo!8336 Regex!3912)) (EmptyExpr!3912) (Star!3912 (reg!4241 Regex!3912)) (EmptyLang!3912) (Union!3912 (regOne!8337 Regex!3912) (regTwo!8337 Regex!3912)) )
))
(declare-datatypes ((String!17698 0))(
  ( (String!17699 (value!83691 String)) )
))
(declare-datatypes ((TokenValueInjection!5036 0))(
  ( (TokenValueInjection!5037 (toValue!3901 Int) (toChars!3760 Int)) )
))
(declare-datatypes ((Rule!4996 0))(
  ( (Rule!4997 (regex!2598 Regex!3912) (tag!2860 String!17698) (isSeparator!2598 Bool) (transformation!2598 TokenValueInjection!5036)) )
))
(declare-datatypes ((Token!4858 0))(
  ( (Token!4859 (value!83692 TokenValue!2688) (rule!4361 Rule!4996) (size!12165 Int) (originalCharacters!3460 List!14890)) )
))
(declare-datatypes ((List!14892 0))(
  ( (Nil!14826) (Cons!14826 (h!20227 Token!4858) (t!127079 List!14892)) )
))
(declare-datatypes ((IArray!10051 0))(
  ( (IArray!10052 (innerList!5083 List!14892)) )
))
(declare-datatypes ((Conc!5023 0))(
  ( (Node!5023 (left!12633 Conc!5023) (right!12963 Conc!5023) (csize!10276 Int) (cheight!5234 Int)) (Leaf!7524 (xs!7756 IArray!10051) (csize!10277 Int)) (Empty!5023) )
))
(declare-datatypes ((BalanceConc!9986 0))(
  ( (BalanceConc!9987 (c!235373 Conc!5023)) )
))
(declare-datatypes ((List!14893 0))(
  ( (Nil!14827) (Cons!14827 (h!20228 Rule!4996) (t!127080 List!14893)) )
))
(declare-datatypes ((PrintableTokens!978 0))(
  ( (PrintableTokens!979 (rules!11291 List!14893) (tokens!1941 BalanceConc!9986)) )
))
(declare-fun thiss!10022 () PrintableTokens!978)

(declare-fun b!1431357 () Bool)

(declare-fun tp!405755 () Bool)

(declare-fun e!913635 () Bool)

(declare-fun inv!19676 (BalanceConc!9986) Bool)

(assert (=> b!1431357 (= e!913640 (and tp!405755 (inv!19676 (tokens!1941 thiss!10022)) e!913635))))

(declare-fun b!1431358 () Bool)

(declare-fun e!913634 () Bool)

(declare-fun e!913642 () Bool)

(assert (=> b!1431358 (= e!913634 (not e!913642))))

(declare-fun res!647775 () Bool)

(assert (=> b!1431358 (=> res!647775 e!913642)))

(declare-fun lt!485982 () Token!4858)

(declare-fun lt!485984 () Token!4858)

(declare-datatypes ((LexerInterface!2262 0))(
  ( (LexerInterfaceExt!2259 (__x!9175 Int)) (Lexer!2260) )
))
(declare-fun separableTokensPredicate!497 (LexerInterface!2262 Token!4858 Token!4858 List!14893) Bool)

(assert (=> b!1431358 (= res!647775 (not (separableTokensPredicate!497 Lexer!2260 lt!485982 lt!485984 (rules!11291 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1195 (LexerInterface!2262 List!14893 Token!4858) Bool)

(assert (=> b!1431358 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) lt!485984)))

(declare-fun lt!485989 () List!14892)

(declare-datatypes ((Unit!22368 0))(
  ( (Unit!22369) )
))
(declare-fun lt!485979 () Unit!22368)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!380 (LexerInterface!2262 List!14893 List!14892 Token!4858) Unit!22368)

(assert (=> b!1431358 (= lt!485979 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!380 Lexer!2260 (rules!11291 thiss!10022) lt!485989 lt!485984))))

(declare-fun other!32 () PrintableTokens!978)

(declare-fun head!2848 (BalanceConc!9986) Token!4858)

(assert (=> b!1431358 (= lt!485984 (head!2848 (tokens!1941 other!32)))))

(declare-fun list!5890 (BalanceConc!9986) List!14892)

(assert (=> b!1431358 (= lt!485989 (list!5890 (tokens!1941 other!32)))))

(assert (=> b!1431358 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) lt!485982)))

(declare-fun lt!485985 () List!14892)

(declare-fun lt!485986 () Unit!22368)

(assert (=> b!1431358 (= lt!485986 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!380 Lexer!2260 (rules!11291 thiss!10022) lt!485985 lt!485982))))

(declare-fun last!130 (BalanceConc!9986) Token!4858)

(assert (=> b!1431358 (= lt!485982 (last!130 (tokens!1941 thiss!10022)))))

(assert (=> b!1431358 (= lt!485985 (list!5890 (tokens!1941 thiss!10022)))))

(declare-fun res!647778 () Bool)

(declare-fun e!913641 () Bool)

(assert (=> start!132230 (=> (not res!647778) (not e!913641))))

(assert (=> start!132230 (= res!647778 (= (rules!11291 thiss!10022) (rules!11291 other!32)))))

(assert (=> start!132230 e!913641))

(declare-fun inv!19677 (PrintableTokens!978) Bool)

(assert (=> start!132230 (and (inv!19677 thiss!10022) e!913640)))

(declare-fun e!913638 () Bool)

(assert (=> start!132230 (and (inv!19677 other!32) e!913638)))

(declare-fun b!1431359 () Bool)

(declare-fun e!913636 () Bool)

(assert (=> b!1431359 (= e!913642 e!913636)))

(declare-fun res!647776 () Bool)

(assert (=> b!1431359 (=> res!647776 e!913636)))

(declare-fun size!12166 (BalanceConc!9986) Int)

(declare-fun ++!3936 (BalanceConc!9986 BalanceConc!9986) BalanceConc!9986)

(assert (=> b!1431359 (= res!647776 (> 0 (size!12166 (++!3936 (tokens!1941 thiss!10022) (tokens!1941 other!32)))))))

(declare-fun e!913637 () Bool)

(assert (=> b!1431359 e!913637))

(declare-fun res!647777 () Bool)

(assert (=> b!1431359 (=> (not res!647777) (not e!913637))))

(declare-fun lt!485983 () List!14892)

(declare-fun rulesProduceEachTokenIndividuallyList!705 (LexerInterface!2262 List!14893 List!14892) Bool)

(assert (=> b!1431359 (= res!647777 (rulesProduceEachTokenIndividuallyList!705 Lexer!2260 (rules!11291 thiss!10022) lt!485983))))

(declare-fun ++!3937 (List!14892 List!14892) List!14892)

(assert (=> b!1431359 (= lt!485983 (++!3937 lt!485985 lt!485989))))

(declare-fun lt!485988 () Unit!22368)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!35 (LexerInterface!2262 List!14893 List!14892 List!14892) Unit!22368)

(assert (=> b!1431359 (= lt!485988 (lemmaRulesProduceEachTokenIndividuallyConcat!35 Lexer!2260 (rules!11291 thiss!10022) lt!485985 lt!485989))))

(declare-fun lt!485981 () Unit!22368)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!35 (LexerInterface!2262 List!14892 List!14892 List!14893) Unit!22368)

(assert (=> b!1431359 (= lt!485981 (tokensListTwoByTwoPredicateConcatSeparableTokensList!35 Lexer!2260 lt!485985 lt!485989 (rules!11291 thiss!10022)))))

(declare-fun b!1431360 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!220 (LexerInterface!2262 List!14892 List!14893) Bool)

(assert (=> b!1431360 (= e!913637 (tokensListTwoByTwoPredicateSeparableList!220 Lexer!2260 lt!485983 (rules!11291 thiss!10022)))))

(declare-fun b!1431361 () Bool)

(declare-fun e!913639 () Bool)

(declare-fun tp!405753 () Bool)

(declare-fun inv!19678 (Conc!5023) Bool)

(assert (=> b!1431361 (= e!913639 (and (inv!19678 (c!235373 (tokens!1941 other!32))) tp!405753))))

(declare-fun b!1431362 () Bool)

(declare-fun res!647779 () Bool)

(assert (=> b!1431362 (=> (not res!647779) (not e!913634))))

(declare-fun isEmpty!9185 (BalanceConc!9986) Bool)

(assert (=> b!1431362 (= res!647779 (not (isEmpty!9185 (tokens!1941 thiss!10022))))))

(declare-fun b!1431363 () Bool)

(declare-fun tp!405756 () Bool)

(assert (=> b!1431363 (= e!913638 (and tp!405756 (inv!19676 (tokens!1941 other!32)) e!913639))))

(declare-fun b!1431364 () Bool)

(assert (=> b!1431364 (= e!913641 e!913634)))

(declare-fun res!647774 () Bool)

(assert (=> b!1431364 (=> (not res!647774) (not e!913634))))

(assert (=> b!1431364 (= res!647774 (not (isEmpty!9185 (tokens!1941 other!32))))))

(declare-fun lt!485980 () Unit!22368)

(declare-fun lemmaInvariant!294 (PrintableTokens!978) Unit!22368)

(assert (=> b!1431364 (= lt!485980 (lemmaInvariant!294 thiss!10022))))

(declare-fun lt!485987 () Unit!22368)

(assert (=> b!1431364 (= lt!485987 (lemmaInvariant!294 other!32))))

(declare-fun b!1431365 () Bool)

(declare-fun isEmpty!9186 (List!14893) Bool)

(assert (=> b!1431365 (= e!913636 (not (isEmpty!9186 (rules!11291 thiss!10022))))))

(declare-fun b!1431366 () Bool)

(declare-fun tp!405754 () Bool)

(assert (=> b!1431366 (= e!913635 (and (inv!19678 (c!235373 (tokens!1941 thiss!10022))) tp!405754))))

(assert (= (and start!132230 res!647778) b!1431364))

(assert (= (and b!1431364 res!647774) b!1431362))

(assert (= (and b!1431362 res!647779) b!1431358))

(assert (= (and b!1431358 (not res!647775)) b!1431359))

(assert (= (and b!1431359 res!647777) b!1431360))

(assert (= (and b!1431359 (not res!647776)) b!1431365))

(assert (= b!1431357 b!1431366))

(assert (= start!132230 b!1431357))

(assert (= b!1431363 b!1431361))

(assert (= start!132230 b!1431363))

(declare-fun m!1630805 () Bool)

(assert (=> b!1431362 m!1630805))

(declare-fun m!1630807 () Bool)

(assert (=> b!1431361 m!1630807))

(declare-fun m!1630809 () Bool)

(assert (=> b!1431358 m!1630809))

(declare-fun m!1630811 () Bool)

(assert (=> b!1431358 m!1630811))

(declare-fun m!1630813 () Bool)

(assert (=> b!1431358 m!1630813))

(declare-fun m!1630815 () Bool)

(assert (=> b!1431358 m!1630815))

(declare-fun m!1630817 () Bool)

(assert (=> b!1431358 m!1630817))

(declare-fun m!1630819 () Bool)

(assert (=> b!1431358 m!1630819))

(declare-fun m!1630821 () Bool)

(assert (=> b!1431358 m!1630821))

(declare-fun m!1630823 () Bool)

(assert (=> b!1431358 m!1630823))

(declare-fun m!1630825 () Bool)

(assert (=> b!1431358 m!1630825))

(declare-fun m!1630827 () Bool)

(assert (=> b!1431363 m!1630827))

(declare-fun m!1630829 () Bool)

(assert (=> b!1431366 m!1630829))

(declare-fun m!1630831 () Bool)

(assert (=> b!1431365 m!1630831))

(declare-fun m!1630833 () Bool)

(assert (=> b!1431359 m!1630833))

(declare-fun m!1630835 () Bool)

(assert (=> b!1431359 m!1630835))

(declare-fun m!1630837 () Bool)

(assert (=> b!1431359 m!1630837))

(declare-fun m!1630839 () Bool)

(assert (=> b!1431359 m!1630839))

(declare-fun m!1630841 () Bool)

(assert (=> b!1431359 m!1630841))

(assert (=> b!1431359 m!1630839))

(declare-fun m!1630843 () Bool)

(assert (=> b!1431359 m!1630843))

(declare-fun m!1630845 () Bool)

(assert (=> b!1431364 m!1630845))

(declare-fun m!1630847 () Bool)

(assert (=> b!1431364 m!1630847))

(declare-fun m!1630849 () Bool)

(assert (=> b!1431364 m!1630849))

(declare-fun m!1630851 () Bool)

(assert (=> b!1431360 m!1630851))

(declare-fun m!1630853 () Bool)

(assert (=> b!1431357 m!1630853))

(declare-fun m!1630855 () Bool)

(assert (=> start!132230 m!1630855))

(declare-fun m!1630857 () Bool)

(assert (=> start!132230 m!1630857))

(push 1)

(assert (not b!1431364))

(assert (not start!132230))

(assert (not b!1431365))

(assert (not b!1431358))

(assert (not b!1431357))

(assert (not b!1431366))

(assert (not b!1431360))

(assert (not b!1431359))

(assert (not b!1431363))

(assert (not b!1431362))

(assert (not b!1431361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!411887 () Bool)

(declare-fun res!647808 () Bool)

(declare-fun e!913672 () Bool)

(assert (=> d!411887 (=> (not res!647808) (not e!913672))))

(assert (=> d!411887 (= res!647808 (not (isEmpty!9186 (rules!11291 thiss!10022))))))

(assert (=> d!411887 (= (inv!19677 thiss!10022) e!913672)))

(declare-fun b!1431403 () Bool)

(declare-fun res!647809 () Bool)

(assert (=> b!1431403 (=> (not res!647809) (not e!913672))))

(declare-fun rulesInvariant!2110 (LexerInterface!2262 List!14893) Bool)

(assert (=> b!1431403 (= res!647809 (rulesInvariant!2110 Lexer!2260 (rules!11291 thiss!10022)))))

(declare-fun b!1431404 () Bool)

(declare-fun res!647810 () Bool)

(assert (=> b!1431404 (=> (not res!647810) (not e!913672))))

(declare-fun rulesProduceEachTokenIndividually!828 (LexerInterface!2262 List!14893 BalanceConc!9986) Bool)

(assert (=> b!1431404 (= res!647810 (rulesProduceEachTokenIndividually!828 Lexer!2260 (rules!11291 thiss!10022) (tokens!1941 thiss!10022)))))

(declare-fun b!1431405 () Bool)

(declare-fun separableTokens!212 (LexerInterface!2262 BalanceConc!9986 List!14893) Bool)

(assert (=> b!1431405 (= e!913672 (separableTokens!212 Lexer!2260 (tokens!1941 thiss!10022) (rules!11291 thiss!10022)))))

(assert (= (and d!411887 res!647808) b!1431403))

(assert (= (and b!1431403 res!647809) b!1431404))

(assert (= (and b!1431404 res!647810) b!1431405))

(assert (=> d!411887 m!1630831))

(declare-fun m!1630915 () Bool)

(assert (=> b!1431403 m!1630915))

(declare-fun m!1630917 () Bool)

(assert (=> b!1431404 m!1630917))

(declare-fun m!1630919 () Bool)

(assert (=> b!1431405 m!1630919))

(assert (=> start!132230 d!411887))

(declare-fun d!411893 () Bool)

(declare-fun res!647811 () Bool)

(declare-fun e!913673 () Bool)

(assert (=> d!411893 (=> (not res!647811) (not e!913673))))

(assert (=> d!411893 (= res!647811 (not (isEmpty!9186 (rules!11291 other!32))))))

(assert (=> d!411893 (= (inv!19677 other!32) e!913673)))

(declare-fun b!1431406 () Bool)

(declare-fun res!647812 () Bool)

(assert (=> b!1431406 (=> (not res!647812) (not e!913673))))

(assert (=> b!1431406 (= res!647812 (rulesInvariant!2110 Lexer!2260 (rules!11291 other!32)))))

(declare-fun b!1431407 () Bool)

(declare-fun res!647813 () Bool)

(assert (=> b!1431407 (=> (not res!647813) (not e!913673))))

(assert (=> b!1431407 (= res!647813 (rulesProduceEachTokenIndividually!828 Lexer!2260 (rules!11291 other!32) (tokens!1941 other!32)))))

(declare-fun b!1431408 () Bool)

(assert (=> b!1431408 (= e!913673 (separableTokens!212 Lexer!2260 (tokens!1941 other!32) (rules!11291 other!32)))))

(assert (= (and d!411893 res!647811) b!1431406))

(assert (= (and b!1431406 res!647812) b!1431407))

(assert (= (and b!1431407 res!647813) b!1431408))

(declare-fun m!1630921 () Bool)

(assert (=> d!411893 m!1630921))

(declare-fun m!1630923 () Bool)

(assert (=> b!1431406 m!1630923))

(declare-fun m!1630925 () Bool)

(assert (=> b!1431407 m!1630925))

(declare-fun m!1630927 () Bool)

(assert (=> b!1431408 m!1630927))

(assert (=> start!132230 d!411893))

(declare-fun d!411895 () Bool)

(declare-fun lt!486027 () Bool)

(declare-fun e!913678 () Bool)

(assert (=> d!411895 (= lt!486027 e!913678)))

(declare-fun res!647820 () Bool)

(assert (=> d!411895 (=> (not res!647820) (not e!913678))))

(declare-datatypes ((tuple2!14082 0))(
  ( (tuple2!14083 (_1!7927 BalanceConc!9986) (_2!7927 BalanceConc!9984)) )
))
(declare-fun lex!1032 (LexerInterface!2262 List!14893 BalanceConc!9984) tuple2!14082)

(declare-fun print!1041 (LexerInterface!2262 BalanceConc!9986) BalanceConc!9984)

(declare-fun singletonSeq!1203 (Token!4858) BalanceConc!9986)

(assert (=> d!411895 (= res!647820 (= (list!5890 (_1!7927 (lex!1032 Lexer!2260 (rules!11291 thiss!10022) (print!1041 Lexer!2260 (singletonSeq!1203 lt!485984))))) (list!5890 (singletonSeq!1203 lt!485984))))))

(declare-fun e!913679 () Bool)

(assert (=> d!411895 (= lt!486027 e!913679)))

(declare-fun res!647821 () Bool)

(assert (=> d!411895 (=> (not res!647821) (not e!913679))))

(declare-fun lt!486028 () tuple2!14082)

(assert (=> d!411895 (= res!647821 (= (size!12166 (_1!7927 lt!486028)) 1))))

(assert (=> d!411895 (= lt!486028 (lex!1032 Lexer!2260 (rules!11291 thiss!10022) (print!1041 Lexer!2260 (singletonSeq!1203 lt!485984))))))

(assert (=> d!411895 (not (isEmpty!9186 (rules!11291 thiss!10022)))))

(assert (=> d!411895 (= (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) lt!485984) lt!486027)))

(declare-fun b!1431415 () Bool)

(declare-fun res!647822 () Bool)

(assert (=> b!1431415 (=> (not res!647822) (not e!913679))))

(declare-fun apply!3788 (BalanceConc!9986 Int) Token!4858)

(assert (=> b!1431415 (= res!647822 (= (apply!3788 (_1!7927 lt!486028) 0) lt!485984))))

(declare-fun b!1431416 () Bool)

(declare-fun isEmpty!9189 (BalanceConc!9984) Bool)

(assert (=> b!1431416 (= e!913679 (isEmpty!9189 (_2!7927 lt!486028)))))

(declare-fun b!1431417 () Bool)

(assert (=> b!1431417 (= e!913678 (isEmpty!9189 (_2!7927 (lex!1032 Lexer!2260 (rules!11291 thiss!10022) (print!1041 Lexer!2260 (singletonSeq!1203 lt!485984))))))))

(assert (= (and d!411895 res!647821) b!1431415))

(assert (= (and b!1431415 res!647822) b!1431416))

(assert (= (and d!411895 res!647820) b!1431417))

(declare-fun m!1630929 () Bool)

(assert (=> d!411895 m!1630929))

(declare-fun m!1630931 () Bool)

(assert (=> d!411895 m!1630931))

(declare-fun m!1630933 () Bool)

(assert (=> d!411895 m!1630933))

(declare-fun m!1630935 () Bool)

(assert (=> d!411895 m!1630935))

(declare-fun m!1630937 () Bool)

(assert (=> d!411895 m!1630937))

(assert (=> d!411895 m!1630933))

(declare-fun m!1630939 () Bool)

(assert (=> d!411895 m!1630939))

(assert (=> d!411895 m!1630933))

(assert (=> d!411895 m!1630929))

(assert (=> d!411895 m!1630831))

(declare-fun m!1630941 () Bool)

(assert (=> b!1431415 m!1630941))

(declare-fun m!1630943 () Bool)

(assert (=> b!1431416 m!1630943))

(assert (=> b!1431417 m!1630933))

(assert (=> b!1431417 m!1630933))

(assert (=> b!1431417 m!1630929))

(assert (=> b!1431417 m!1630929))

(assert (=> b!1431417 m!1630931))

(declare-fun m!1630945 () Bool)

(assert (=> b!1431417 m!1630945))

(assert (=> b!1431358 d!411895))

(declare-fun d!411897 () Bool)

(declare-fun prefixMatchZipperSequence!322 (Regex!3912 BalanceConc!9984) Bool)

(declare-fun rulesRegex!380 (LexerInterface!2262 List!14893) Regex!3912)

(declare-fun ++!3940 (BalanceConc!9984 BalanceConc!9984) BalanceConc!9984)

(declare-fun charsOf!1503 (Token!4858) BalanceConc!9984)

(declare-fun singletonSeq!1204 (C!8002) BalanceConc!9984)

(declare-fun apply!3789 (BalanceConc!9984 Int) C!8002)

(assert (=> d!411897 (= (separableTokensPredicate!497 Lexer!2260 lt!485982 lt!485984 (rules!11291 thiss!10022)) (not (prefixMatchZipperSequence!322 (rulesRegex!380 Lexer!2260 (rules!11291 thiss!10022)) (++!3940 (charsOf!1503 lt!485982) (singletonSeq!1204 (apply!3789 (charsOf!1503 lt!485984) 0))))))))

(declare-fun bs!340770 () Bool)

(assert (= bs!340770 d!411897))

(declare-fun m!1630947 () Bool)

(assert (=> bs!340770 m!1630947))

(declare-fun m!1630949 () Bool)

(assert (=> bs!340770 m!1630949))

(declare-fun m!1630951 () Bool)

(assert (=> bs!340770 m!1630951))

(declare-fun m!1630953 () Bool)

(assert (=> bs!340770 m!1630953))

(declare-fun m!1630955 () Bool)

(assert (=> bs!340770 m!1630955))

(assert (=> bs!340770 m!1630949))

(assert (=> bs!340770 m!1630953))

(assert (=> bs!340770 m!1630947))

(assert (=> bs!340770 m!1630951))

(declare-fun m!1630957 () Bool)

(assert (=> bs!340770 m!1630957))

(assert (=> bs!340770 m!1630957))

(assert (=> bs!340770 m!1630955))

(declare-fun m!1630959 () Bool)

(assert (=> bs!340770 m!1630959))

(assert (=> b!1431358 d!411897))

(declare-fun d!411899 () Bool)

(declare-fun list!5892 (Conc!5023) List!14892)

(assert (=> d!411899 (= (list!5890 (tokens!1941 other!32)) (list!5892 (c!235373 (tokens!1941 other!32))))))

(declare-fun bs!340771 () Bool)

(assert (= bs!340771 d!411899))

(declare-fun m!1630961 () Bool)

(assert (=> bs!340771 m!1630961))

(assert (=> b!1431358 d!411899))

(declare-fun d!411901 () Bool)

(declare-fun lt!486031 () Token!4858)

(declare-fun head!2850 (List!14892) Token!4858)

(assert (=> d!411901 (= lt!486031 (head!2850 (list!5890 (tokens!1941 other!32))))))

(declare-fun head!2851 (Conc!5023) Token!4858)

(assert (=> d!411901 (= lt!486031 (head!2851 (c!235373 (tokens!1941 other!32))))))

(assert (=> d!411901 (not (isEmpty!9185 (tokens!1941 other!32)))))

(assert (=> d!411901 (= (head!2848 (tokens!1941 other!32)) lt!486031)))

(declare-fun bs!340772 () Bool)

(assert (= bs!340772 d!411901))

(assert (=> bs!340772 m!1630817))

(assert (=> bs!340772 m!1630817))

(declare-fun m!1630963 () Bool)

(assert (=> bs!340772 m!1630963))

(declare-fun m!1630965 () Bool)

(assert (=> bs!340772 m!1630965))

(assert (=> bs!340772 m!1630845))

(assert (=> b!1431358 d!411901))

(declare-fun d!411903 () Bool)

(declare-fun lt!486034 () Token!4858)

(declare-fun last!132 (List!14892) Token!4858)

(assert (=> d!411903 (= lt!486034 (last!132 (list!5890 (tokens!1941 thiss!10022))))))

(declare-fun last!133 (Conc!5023) Token!4858)

(assert (=> d!411903 (= lt!486034 (last!133 (c!235373 (tokens!1941 thiss!10022))))))

(assert (=> d!411903 (not (isEmpty!9185 (tokens!1941 thiss!10022)))))

(assert (=> d!411903 (= (last!130 (tokens!1941 thiss!10022)) lt!486034)))

(declare-fun bs!340773 () Bool)

(assert (= bs!340773 d!411903))

(assert (=> bs!340773 m!1630815))

(assert (=> bs!340773 m!1630815))

(declare-fun m!1630967 () Bool)

(assert (=> bs!340773 m!1630967))

(declare-fun m!1630969 () Bool)

(assert (=> bs!340773 m!1630969))

(assert (=> bs!340773 m!1630805))

(assert (=> b!1431358 d!411903))

(declare-fun d!411905 () Bool)

(assert (=> d!411905 (= (list!5890 (tokens!1941 thiss!10022)) (list!5892 (c!235373 (tokens!1941 thiss!10022))))))

(declare-fun bs!340774 () Bool)

(assert (= bs!340774 d!411905))

(declare-fun m!1630971 () Bool)

(assert (=> bs!340774 m!1630971))

(assert (=> b!1431358 d!411905))

(declare-fun d!411907 () Bool)

(declare-fun lt!486035 () Bool)

(declare-fun e!913680 () Bool)

(assert (=> d!411907 (= lt!486035 e!913680)))

(declare-fun res!647823 () Bool)

(assert (=> d!411907 (=> (not res!647823) (not e!913680))))

(assert (=> d!411907 (= res!647823 (= (list!5890 (_1!7927 (lex!1032 Lexer!2260 (rules!11291 thiss!10022) (print!1041 Lexer!2260 (singletonSeq!1203 lt!485982))))) (list!5890 (singletonSeq!1203 lt!485982))))))

(declare-fun e!913681 () Bool)

(assert (=> d!411907 (= lt!486035 e!913681)))

(declare-fun res!647824 () Bool)

(assert (=> d!411907 (=> (not res!647824) (not e!913681))))

(declare-fun lt!486036 () tuple2!14082)

(assert (=> d!411907 (= res!647824 (= (size!12166 (_1!7927 lt!486036)) 1))))

(assert (=> d!411907 (= lt!486036 (lex!1032 Lexer!2260 (rules!11291 thiss!10022) (print!1041 Lexer!2260 (singletonSeq!1203 lt!485982))))))

(assert (=> d!411907 (not (isEmpty!9186 (rules!11291 thiss!10022)))))

(assert (=> d!411907 (= (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) lt!485982) lt!486035)))

(declare-fun b!1431418 () Bool)

(declare-fun res!647825 () Bool)

(assert (=> b!1431418 (=> (not res!647825) (not e!913681))))

(assert (=> b!1431418 (= res!647825 (= (apply!3788 (_1!7927 lt!486036) 0) lt!485982))))

(declare-fun b!1431419 () Bool)

(assert (=> b!1431419 (= e!913681 (isEmpty!9189 (_2!7927 lt!486036)))))

(declare-fun b!1431420 () Bool)

(assert (=> b!1431420 (= e!913680 (isEmpty!9189 (_2!7927 (lex!1032 Lexer!2260 (rules!11291 thiss!10022) (print!1041 Lexer!2260 (singletonSeq!1203 lt!485982))))))))

(assert (= (and d!411907 res!647824) b!1431418))

(assert (= (and b!1431418 res!647825) b!1431419))

(assert (= (and d!411907 res!647823) b!1431420))

(declare-fun m!1630973 () Bool)

(assert (=> d!411907 m!1630973))

(declare-fun m!1630975 () Bool)

(assert (=> d!411907 m!1630975))

(declare-fun m!1630977 () Bool)

(assert (=> d!411907 m!1630977))

(declare-fun m!1630979 () Bool)

(assert (=> d!411907 m!1630979))

(declare-fun m!1630981 () Bool)

(assert (=> d!411907 m!1630981))

(assert (=> d!411907 m!1630977))

(declare-fun m!1630983 () Bool)

(assert (=> d!411907 m!1630983))

(assert (=> d!411907 m!1630977))

(assert (=> d!411907 m!1630973))

(assert (=> d!411907 m!1630831))

(declare-fun m!1630985 () Bool)

(assert (=> b!1431418 m!1630985))

(declare-fun m!1630987 () Bool)

(assert (=> b!1431419 m!1630987))

(assert (=> b!1431420 m!1630977))

(assert (=> b!1431420 m!1630977))

(assert (=> b!1431420 m!1630973))

(assert (=> b!1431420 m!1630973))

(assert (=> b!1431420 m!1630975))

(declare-fun m!1630989 () Bool)

(assert (=> b!1431420 m!1630989))

(assert (=> b!1431358 d!411907))

(declare-fun d!411909 () Bool)

(assert (=> d!411909 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) lt!485984)))

(declare-fun lt!486042 () Unit!22368)

(declare-fun choose!8800 (LexerInterface!2262 List!14893 List!14892 Token!4858) Unit!22368)

(assert (=> d!411909 (= lt!486042 (choose!8800 Lexer!2260 (rules!11291 thiss!10022) lt!485989 lt!485984))))

(assert (=> d!411909 (not (isEmpty!9186 (rules!11291 thiss!10022)))))

(assert (=> d!411909 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!380 Lexer!2260 (rules!11291 thiss!10022) lt!485989 lt!485984) lt!486042)))

(declare-fun bs!340776 () Bool)

(assert (= bs!340776 d!411909))

(assert (=> bs!340776 m!1630825))

(declare-fun m!1631009 () Bool)

(assert (=> bs!340776 m!1631009))

(assert (=> bs!340776 m!1630831))

(assert (=> b!1431358 d!411909))

(declare-fun d!411917 () Bool)

(assert (=> d!411917 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) lt!485982)))

(declare-fun lt!486043 () Unit!22368)

(assert (=> d!411917 (= lt!486043 (choose!8800 Lexer!2260 (rules!11291 thiss!10022) lt!485985 lt!485982))))

(assert (=> d!411917 (not (isEmpty!9186 (rules!11291 thiss!10022)))))

(assert (=> d!411917 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!380 Lexer!2260 (rules!11291 thiss!10022) lt!485985 lt!485982) lt!486043)))

(declare-fun bs!340777 () Bool)

(assert (= bs!340777 d!411917))

(assert (=> bs!340777 m!1630811))

(declare-fun m!1631011 () Bool)

(assert (=> bs!340777 m!1631011))

(assert (=> bs!340777 m!1630831))

(assert (=> b!1431358 d!411917))

(declare-fun b!1431472 () Bool)

(declare-fun e!913716 () Bool)

(assert (=> b!1431472 (= e!913716 true)))

(declare-fun b!1431471 () Bool)

(declare-fun e!913715 () Bool)

(assert (=> b!1431471 (= e!913715 e!913716)))

(declare-fun b!1431470 () Bool)

(declare-fun e!913714 () Bool)

(assert (=> b!1431470 (= e!913714 e!913715)))

(declare-fun d!411919 () Bool)

(assert (=> d!411919 e!913714))

(assert (= b!1431471 b!1431472))

(assert (= b!1431470 b!1431471))

(assert (= (and d!411919 (is-Cons!14827 (rules!11291 thiss!10022))) b!1431470))

(declare-fun lambda!62772 () Int)

(declare-fun order!8897 () Int)

(declare-fun order!8895 () Int)

(declare-fun dynLambda!6767 (Int Int) Int)

(declare-fun dynLambda!6768 (Int Int) Int)

(assert (=> b!1431472 (< (dynLambda!6767 order!8895 (toValue!3901 (transformation!2598 (h!20228 (rules!11291 thiss!10022))))) (dynLambda!6768 order!8897 lambda!62772))))

(declare-fun order!8899 () Int)

(declare-fun dynLambda!6769 (Int Int) Int)

(assert (=> b!1431472 (< (dynLambda!6769 order!8899 (toChars!3760 (transformation!2598 (h!20228 (rules!11291 thiss!10022))))) (dynLambda!6768 order!8897 lambda!62772))))

(assert (=> d!411919 true))

(declare-fun lt!486077 () Bool)

(declare-fun forall!3654 (List!14892 Int) Bool)

(assert (=> d!411919 (= lt!486077 (forall!3654 lt!485983 lambda!62772))))

(declare-fun e!913707 () Bool)

(assert (=> d!411919 (= lt!486077 e!913707)))

(declare-fun res!647860 () Bool)

(assert (=> d!411919 (=> res!647860 e!913707)))

(assert (=> d!411919 (= res!647860 (not (is-Cons!14826 lt!485983)))))

(assert (=> d!411919 (not (isEmpty!9186 (rules!11291 thiss!10022)))))

(assert (=> d!411919 (= (rulesProduceEachTokenIndividuallyList!705 Lexer!2260 (rules!11291 thiss!10022) lt!485983) lt!486077)))

(declare-fun b!1431460 () Bool)

(declare-fun e!913706 () Bool)

(assert (=> b!1431460 (= e!913707 e!913706)))

(declare-fun res!647859 () Bool)

(assert (=> b!1431460 (=> (not res!647859) (not e!913706))))

(assert (=> b!1431460 (= res!647859 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) (h!20227 lt!485983)))))

(declare-fun b!1431461 () Bool)

(assert (=> b!1431461 (= e!913706 (rulesProduceEachTokenIndividuallyList!705 Lexer!2260 (rules!11291 thiss!10022) (t!127079 lt!485983)))))

(assert (= (and d!411919 (not res!647860)) b!1431460))

(assert (= (and b!1431460 res!647859) b!1431461))

(declare-fun m!1631067 () Bool)

(assert (=> d!411919 m!1631067))

(assert (=> d!411919 m!1630831))

(declare-fun m!1631069 () Bool)

(assert (=> b!1431460 m!1631069))

(declare-fun m!1631071 () Bool)

(assert (=> b!1431461 m!1631071))

(assert (=> b!1431359 d!411919))

(declare-fun d!411947 () Bool)

(declare-fun e!913719 () Bool)

(assert (=> d!411947 e!913719))

(declare-fun res!647869 () Bool)

(assert (=> d!411947 (=> (not res!647869) (not e!913719))))

(declare-fun appendAssocInst!307 (Conc!5023 Conc!5023) Bool)

(assert (=> d!411947 (= res!647869 (appendAssocInst!307 (c!235373 (tokens!1941 thiss!10022)) (c!235373 (tokens!1941 other!32))))))

(declare-fun lt!486080 () BalanceConc!9986)

(declare-fun ++!3941 (Conc!5023 Conc!5023) Conc!5023)

(assert (=> d!411947 (= lt!486080 (BalanceConc!9987 (++!3941 (c!235373 (tokens!1941 thiss!10022)) (c!235373 (tokens!1941 other!32)))))))

(assert (=> d!411947 (= (++!3936 (tokens!1941 thiss!10022) (tokens!1941 other!32)) lt!486080)))

(declare-fun b!1431485 () Bool)

(declare-fun res!647871 () Bool)

(assert (=> b!1431485 (=> (not res!647871) (not e!913719))))

(declare-fun height!728 (Conc!5023) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1431485 (= res!647871 (>= (height!728 (++!3941 (c!235373 (tokens!1941 thiss!10022)) (c!235373 (tokens!1941 other!32)))) (max!0 (height!728 (c!235373 (tokens!1941 thiss!10022))) (height!728 (c!235373 (tokens!1941 other!32))))))))

(declare-fun b!1431484 () Bool)

(declare-fun res!647870 () Bool)

(assert (=> b!1431484 (=> (not res!647870) (not e!913719))))

(assert (=> b!1431484 (= res!647870 (<= (height!728 (++!3941 (c!235373 (tokens!1941 thiss!10022)) (c!235373 (tokens!1941 other!32)))) (+ (max!0 (height!728 (c!235373 (tokens!1941 thiss!10022))) (height!728 (c!235373 (tokens!1941 other!32)))) 1)))))

(declare-fun b!1431486 () Bool)

(assert (=> b!1431486 (= e!913719 (= (list!5890 lt!486080) (++!3937 (list!5890 (tokens!1941 thiss!10022)) (list!5890 (tokens!1941 other!32)))))))

(declare-fun b!1431483 () Bool)

(declare-fun res!647872 () Bool)

(assert (=> b!1431483 (=> (not res!647872) (not e!913719))))

(declare-fun isBalanced!1490 (Conc!5023) Bool)

(assert (=> b!1431483 (= res!647872 (isBalanced!1490 (++!3941 (c!235373 (tokens!1941 thiss!10022)) (c!235373 (tokens!1941 other!32)))))))

(assert (= (and d!411947 res!647869) b!1431483))

(assert (= (and b!1431483 res!647872) b!1431484))

(assert (= (and b!1431484 res!647870) b!1431485))

(assert (= (and b!1431485 res!647871) b!1431486))

(declare-fun m!1631073 () Bool)

(assert (=> b!1431486 m!1631073))

(assert (=> b!1431486 m!1630815))

(assert (=> b!1431486 m!1630817))

(assert (=> b!1431486 m!1630815))

(assert (=> b!1431486 m!1630817))

(declare-fun m!1631075 () Bool)

(assert (=> b!1431486 m!1631075))

(declare-fun m!1631077 () Bool)

(assert (=> b!1431483 m!1631077))

(assert (=> b!1431483 m!1631077))

(declare-fun m!1631079 () Bool)

(assert (=> b!1431483 m!1631079))

(declare-fun m!1631081 () Bool)

(assert (=> d!411947 m!1631081))

(assert (=> d!411947 m!1631077))

(declare-fun m!1631083 () Bool)

(assert (=> b!1431485 m!1631083))

(assert (=> b!1431485 m!1631077))

(declare-fun m!1631085 () Bool)

(assert (=> b!1431485 m!1631085))

(declare-fun m!1631087 () Bool)

(assert (=> b!1431485 m!1631087))

(assert (=> b!1431485 m!1631083))

(declare-fun m!1631089 () Bool)

(assert (=> b!1431485 m!1631089))

(assert (=> b!1431485 m!1631087))

(assert (=> b!1431485 m!1631077))

(assert (=> b!1431484 m!1631083))

(assert (=> b!1431484 m!1631077))

(assert (=> b!1431484 m!1631085))

(assert (=> b!1431484 m!1631087))

(assert (=> b!1431484 m!1631083))

(assert (=> b!1431484 m!1631089))

(assert (=> b!1431484 m!1631087))

(assert (=> b!1431484 m!1631077))

(assert (=> b!1431359 d!411947))

(declare-fun e!913725 () Bool)

(declare-fun lt!486083 () List!14892)

(declare-fun b!1431498 () Bool)

(assert (=> b!1431498 (= e!913725 (or (not (= lt!485989 Nil!14826)) (= lt!486083 lt!485985)))))

(declare-fun b!1431497 () Bool)

(declare-fun res!647877 () Bool)

(assert (=> b!1431497 (=> (not res!647877) (not e!913725))))

(declare-fun size!12169 (List!14892) Int)

(assert (=> b!1431497 (= res!647877 (= (size!12169 lt!486083) (+ (size!12169 lt!485985) (size!12169 lt!485989))))))

(declare-fun d!411949 () Bool)

(assert (=> d!411949 e!913725))

(declare-fun res!647878 () Bool)

(assert (=> d!411949 (=> (not res!647878) (not e!913725))))

(declare-fun content!2185 (List!14892) (Set Token!4858))

(assert (=> d!411949 (= res!647878 (= (content!2185 lt!486083) (set.union (content!2185 lt!485985) (content!2185 lt!485989))))))

(declare-fun e!913724 () List!14892)

(assert (=> d!411949 (= lt!486083 e!913724)))

(declare-fun c!235385 () Bool)

(assert (=> d!411949 (= c!235385 (is-Nil!14826 lt!485985))))

(assert (=> d!411949 (= (++!3937 lt!485985 lt!485989) lt!486083)))

(declare-fun b!1431495 () Bool)

(assert (=> b!1431495 (= e!913724 lt!485989)))

(declare-fun b!1431496 () Bool)

(assert (=> b!1431496 (= e!913724 (Cons!14826 (h!20227 lt!485985) (++!3937 (t!127079 lt!485985) lt!485989)))))

(assert (= (and d!411949 c!235385) b!1431495))

(assert (= (and d!411949 (not c!235385)) b!1431496))

(assert (= (and d!411949 res!647878) b!1431497))

(assert (= (and b!1431497 res!647877) b!1431498))

(declare-fun m!1631091 () Bool)

(assert (=> b!1431497 m!1631091))

(declare-fun m!1631093 () Bool)

(assert (=> b!1431497 m!1631093))

(declare-fun m!1631095 () Bool)

(assert (=> b!1431497 m!1631095))

(declare-fun m!1631097 () Bool)

(assert (=> d!411949 m!1631097))

(declare-fun m!1631099 () Bool)

(assert (=> d!411949 m!1631099))

(declare-fun m!1631101 () Bool)

(assert (=> d!411949 m!1631101))

(declare-fun m!1631103 () Bool)

(assert (=> b!1431496 m!1631103))

(assert (=> b!1431359 d!411949))

(declare-fun d!411951 () Bool)

(declare-fun lt!486086 () Int)

(assert (=> d!411951 (= lt!486086 (size!12169 (list!5890 (++!3936 (tokens!1941 thiss!10022) (tokens!1941 other!32)))))))

(declare-fun size!12170 (Conc!5023) Int)

(assert (=> d!411951 (= lt!486086 (size!12170 (c!235373 (++!3936 (tokens!1941 thiss!10022) (tokens!1941 other!32)))))))

(assert (=> d!411951 (= (size!12166 (++!3936 (tokens!1941 thiss!10022) (tokens!1941 other!32))) lt!486086)))

(declare-fun bs!340786 () Bool)

(assert (= bs!340786 d!411951))

(assert (=> bs!340786 m!1630839))

(declare-fun m!1631105 () Bool)

(assert (=> bs!340786 m!1631105))

(assert (=> bs!340786 m!1631105))

(declare-fun m!1631107 () Bool)

(assert (=> bs!340786 m!1631107))

(declare-fun m!1631109 () Bool)

(assert (=> bs!340786 m!1631109))

(assert (=> b!1431359 d!411951))

(declare-fun b!1431532 () Bool)

(declare-fun res!647913 () Bool)

(declare-fun e!913739 () Bool)

(assert (=> b!1431532 (=> (not res!647913) (not e!913739))))

(assert (=> b!1431532 (= res!647913 (rulesProduceEachTokenIndividuallyList!705 Lexer!2260 (rules!11291 thiss!10022) lt!485985))))

(declare-fun b!1431534 () Bool)

(assert (=> b!1431534 (= e!913739 (tokensListTwoByTwoPredicateSeparableList!220 Lexer!2260 (++!3937 lt!485985 lt!485989) (rules!11291 thiss!10022)))))

(declare-fun lt!486113 () Unit!22368)

(declare-fun lt!486112 () Unit!22368)

(assert (=> b!1431534 (= lt!486113 lt!486112)))

(assert (=> b!1431534 (rulesProduceEachTokenIndividuallyList!705 Lexer!2260 (rules!11291 thiss!10022) (++!3937 lt!485985 lt!485989))))

(assert (=> b!1431534 (= lt!486112 (lemmaRulesProduceEachTokenIndividuallyConcat!35 Lexer!2260 (rules!11291 thiss!10022) lt!485985 lt!485989))))

(declare-fun b!1431533 () Bool)

(declare-fun res!647912 () Bool)

(assert (=> b!1431533 (=> (not res!647912) (not e!913739))))

(assert (=> b!1431533 (= res!647912 (rulesProduceEachTokenIndividuallyList!705 Lexer!2260 (rules!11291 thiss!10022) lt!485989))))

(declare-fun b!1431531 () Bool)

(declare-fun res!647914 () Bool)

(assert (=> b!1431531 (=> (not res!647914) (not e!913739))))

(assert (=> b!1431531 (= res!647914 (rulesInvariant!2110 Lexer!2260 (rules!11291 thiss!10022)))))

(declare-fun d!411953 () Bool)

(assert (=> d!411953 e!913739))

(declare-fun res!647911 () Bool)

(assert (=> d!411953 (=> (not res!647911) (not e!913739))))

(assert (=> d!411953 (= res!647911 (is-Lexer!2260 Lexer!2260))))

(declare-fun lt!486111 () Unit!22368)

(declare-fun choose!8801 (LexerInterface!2262 List!14892 List!14892 List!14893) Unit!22368)

(assert (=> d!411953 (= lt!486111 (choose!8801 Lexer!2260 lt!485985 lt!485989 (rules!11291 thiss!10022)))))

(assert (=> d!411953 (not (isEmpty!9186 (rules!11291 thiss!10022)))))

(assert (=> d!411953 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!35 Lexer!2260 lt!485985 lt!485989 (rules!11291 thiss!10022)) lt!486111)))

(assert (= (and d!411953 res!647911) b!1431531))

(assert (= (and b!1431531 res!647914) b!1431532))

(assert (= (and b!1431532 res!647913) b!1431533))

(assert (= (and b!1431533 res!647912) b!1431534))

(declare-fun m!1631159 () Bool)

(assert (=> b!1431532 m!1631159))

(declare-fun m!1631161 () Bool)

(assert (=> d!411953 m!1631161))

(assert (=> d!411953 m!1630831))

(declare-fun m!1631163 () Bool)

(assert (=> b!1431533 m!1631163))

(assert (=> b!1431531 m!1630915))

(assert (=> b!1431534 m!1630837))

(assert (=> b!1431534 m!1630837))

(declare-fun m!1631165 () Bool)

(assert (=> b!1431534 m!1631165))

(assert (=> b!1431534 m!1630837))

(declare-fun m!1631167 () Bool)

(assert (=> b!1431534 m!1631167))

(assert (=> b!1431534 m!1630843))

(assert (=> b!1431359 d!411953))

(declare-fun d!411963 () Bool)

(assert (=> d!411963 (rulesProduceEachTokenIndividuallyList!705 Lexer!2260 (rules!11291 thiss!10022) (++!3937 lt!485985 lt!485989))))

(declare-fun lt!486122 () Unit!22368)

(declare-fun choose!8802 (LexerInterface!2262 List!14893 List!14892 List!14892) Unit!22368)

(assert (=> d!411963 (= lt!486122 (choose!8802 Lexer!2260 (rules!11291 thiss!10022) lt!485985 lt!485989))))

(assert (=> d!411963 (not (isEmpty!9186 (rules!11291 thiss!10022)))))

(assert (=> d!411963 (= (lemmaRulesProduceEachTokenIndividuallyConcat!35 Lexer!2260 (rules!11291 thiss!10022) lt!485985 lt!485989) lt!486122)))

(declare-fun bs!340788 () Bool)

(assert (= bs!340788 d!411963))

(assert (=> bs!340788 m!1630837))

(assert (=> bs!340788 m!1630837))

(assert (=> bs!340788 m!1631167))

(declare-fun m!1631201 () Bool)

(assert (=> bs!340788 m!1631201))

(assert (=> bs!340788 m!1630831))

(assert (=> b!1431359 d!411963))

(declare-fun d!411969 () Bool)

(declare-fun lt!486125 () Bool)

(declare-fun isEmpty!9190 (List!14892) Bool)

(assert (=> d!411969 (= lt!486125 (isEmpty!9190 (list!5890 (tokens!1941 other!32))))))

(declare-fun isEmpty!9191 (Conc!5023) Bool)

(assert (=> d!411969 (= lt!486125 (isEmpty!9191 (c!235373 (tokens!1941 other!32))))))

(assert (=> d!411969 (= (isEmpty!9185 (tokens!1941 other!32)) lt!486125)))

(declare-fun bs!340789 () Bool)

(assert (= bs!340789 d!411969))

(assert (=> bs!340789 m!1630817))

(assert (=> bs!340789 m!1630817))

(declare-fun m!1631203 () Bool)

(assert (=> bs!340789 m!1631203))

(declare-fun m!1631205 () Bool)

(assert (=> bs!340789 m!1631205))

(assert (=> b!1431364 d!411969))

(declare-fun d!411971 () Bool)

(declare-fun e!913755 () Bool)

(assert (=> d!411971 e!913755))

(declare-fun res!647941 () Bool)

(assert (=> d!411971 (=> (not res!647941) (not e!913755))))

(assert (=> d!411971 (= res!647941 (rulesInvariant!2110 Lexer!2260 (rules!11291 thiss!10022)))))

(declare-fun Unit!22373 () Unit!22368)

(assert (=> d!411971 (= (lemmaInvariant!294 thiss!10022) Unit!22373)))

(declare-fun b!1431567 () Bool)

(declare-fun res!647942 () Bool)

(assert (=> b!1431567 (=> (not res!647942) (not e!913755))))

(assert (=> b!1431567 (= res!647942 (rulesProduceEachTokenIndividually!828 Lexer!2260 (rules!11291 thiss!10022) (tokens!1941 thiss!10022)))))

(declare-fun b!1431568 () Bool)

(assert (=> b!1431568 (= e!913755 (separableTokens!212 Lexer!2260 (tokens!1941 thiss!10022) (rules!11291 thiss!10022)))))

(assert (= (and d!411971 res!647941) b!1431567))

(assert (= (and b!1431567 res!647942) b!1431568))

(assert (=> d!411971 m!1630915))

(assert (=> b!1431567 m!1630917))

(assert (=> b!1431568 m!1630919))

(assert (=> b!1431364 d!411971))

(declare-fun d!411975 () Bool)

(declare-fun e!913756 () Bool)

(assert (=> d!411975 e!913756))

(declare-fun res!647943 () Bool)

(assert (=> d!411975 (=> (not res!647943) (not e!913756))))

(assert (=> d!411975 (= res!647943 (rulesInvariant!2110 Lexer!2260 (rules!11291 other!32)))))

(declare-fun Unit!22374 () Unit!22368)

(assert (=> d!411975 (= (lemmaInvariant!294 other!32) Unit!22374)))

(declare-fun b!1431569 () Bool)

(declare-fun res!647944 () Bool)

(assert (=> b!1431569 (=> (not res!647944) (not e!913756))))

(assert (=> b!1431569 (= res!647944 (rulesProduceEachTokenIndividually!828 Lexer!2260 (rules!11291 other!32) (tokens!1941 other!32)))))

(declare-fun b!1431570 () Bool)

(assert (=> b!1431570 (= e!913756 (separableTokens!212 Lexer!2260 (tokens!1941 other!32) (rules!11291 other!32)))))

(assert (= (and d!411975 res!647943) b!1431569))

(assert (= (and b!1431569 res!647944) b!1431570))

(assert (=> d!411975 m!1630923))

(assert (=> b!1431569 m!1630925))

(assert (=> b!1431570 m!1630927))

(assert (=> b!1431364 d!411975))

(declare-fun d!411977 () Bool)

(assert (=> d!411977 (= (isEmpty!9186 (rules!11291 thiss!10022)) (is-Nil!14827 (rules!11291 thiss!10022)))))

(assert (=> b!1431365 d!411977))

(declare-fun d!411979 () Bool)

(declare-fun res!647949 () Bool)

(declare-fun e!913762 () Bool)

(assert (=> d!411979 (=> res!647949 e!913762)))

(assert (=> d!411979 (= res!647949 (or (not (is-Cons!14826 lt!485983)) (not (is-Cons!14826 (t!127079 lt!485983)))))))

(assert (=> d!411979 (= (tokensListTwoByTwoPredicateSeparableList!220 Lexer!2260 lt!485983 (rules!11291 thiss!10022)) e!913762)))

(declare-fun b!1431575 () Bool)

(declare-fun e!913761 () Bool)

(assert (=> b!1431575 (= e!913762 e!913761)))

(declare-fun res!647950 () Bool)

(assert (=> b!1431575 (=> (not res!647950) (not e!913761))))

(assert (=> b!1431575 (= res!647950 (separableTokensPredicate!497 Lexer!2260 (h!20227 lt!485983) (h!20227 (t!127079 lt!485983)) (rules!11291 thiss!10022)))))

(declare-fun lt!486150 () Unit!22368)

(declare-fun Unit!22375 () Unit!22368)

(assert (=> b!1431575 (= lt!486150 Unit!22375)))

(declare-fun size!12171 (BalanceConc!9984) Int)

(assert (=> b!1431575 (> (size!12171 (charsOf!1503 (h!20227 (t!127079 lt!485983)))) 0)))

(declare-fun lt!486149 () Unit!22368)

(declare-fun Unit!22376 () Unit!22368)

(assert (=> b!1431575 (= lt!486149 Unit!22376)))

(assert (=> b!1431575 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) (h!20227 (t!127079 lt!485983)))))

(declare-fun lt!486148 () Unit!22368)

(declare-fun Unit!22377 () Unit!22368)

(assert (=> b!1431575 (= lt!486148 Unit!22377)))

(assert (=> b!1431575 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) (h!20227 lt!485983))))

(declare-fun lt!486145 () Unit!22368)

(declare-fun lt!486146 () Unit!22368)

(assert (=> b!1431575 (= lt!486145 lt!486146)))

(assert (=> b!1431575 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) (h!20227 (t!127079 lt!485983)))))

(assert (=> b!1431575 (= lt!486146 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!380 Lexer!2260 (rules!11291 thiss!10022) lt!485983 (h!20227 (t!127079 lt!485983))))))

(declare-fun lt!486147 () Unit!22368)

(declare-fun lt!486151 () Unit!22368)

(assert (=> b!1431575 (= lt!486147 lt!486151)))

(assert (=> b!1431575 (rulesProduceIndividualToken!1195 Lexer!2260 (rules!11291 thiss!10022) (h!20227 lt!485983))))

(assert (=> b!1431575 (= lt!486151 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!380 Lexer!2260 (rules!11291 thiss!10022) lt!485983 (h!20227 lt!485983)))))

(declare-fun b!1431576 () Bool)

(assert (=> b!1431576 (= e!913761 (tokensListTwoByTwoPredicateSeparableList!220 Lexer!2260 (Cons!14826 (h!20227 (t!127079 lt!485983)) (t!127079 (t!127079 lt!485983))) (rules!11291 thiss!10022)))))

(assert (= (and d!411979 (not res!647949)) b!1431575))

(assert (= (and b!1431575 res!647950) b!1431576))

(declare-fun m!1631209 () Bool)

(assert (=> b!1431575 m!1631209))

(declare-fun m!1631211 () Bool)

(assert (=> b!1431575 m!1631211))

(declare-fun m!1631213 () Bool)

(assert (=> b!1431575 m!1631213))

(assert (=> b!1431575 m!1631069))

(declare-fun m!1631215 () Bool)

(assert (=> b!1431575 m!1631215))

(declare-fun m!1631217 () Bool)

(assert (=> b!1431575 m!1631217))

(assert (=> b!1431575 m!1631217))

(declare-fun m!1631219 () Bool)

(assert (=> b!1431575 m!1631219))

(declare-fun m!1631221 () Bool)

(assert (=> b!1431576 m!1631221))

(assert (=> b!1431360 d!411979))

(declare-fun d!411981 () Bool)

(declare-fun c!235394 () Bool)

(assert (=> d!411981 (= c!235394 (is-Node!5023 (c!235373 (tokens!1941 other!32))))))

(declare-fun e!913767 () Bool)

(assert (=> d!411981 (= (inv!19678 (c!235373 (tokens!1941 other!32))) e!913767)))

(declare-fun b!1431583 () Bool)

(declare-fun inv!19682 (Conc!5023) Bool)

(assert (=> b!1431583 (= e!913767 (inv!19682 (c!235373 (tokens!1941 other!32))))))

(declare-fun b!1431584 () Bool)

(declare-fun e!913768 () Bool)

(assert (=> b!1431584 (= e!913767 e!913768)))

(declare-fun res!647953 () Bool)

(assert (=> b!1431584 (= res!647953 (not (is-Leaf!7524 (c!235373 (tokens!1941 other!32)))))))

(assert (=> b!1431584 (=> res!647953 e!913768)))

(declare-fun b!1431585 () Bool)

(declare-fun inv!19683 (Conc!5023) Bool)

(assert (=> b!1431585 (= e!913768 (inv!19683 (c!235373 (tokens!1941 other!32))))))

(assert (= (and d!411981 c!235394) b!1431583))

(assert (= (and d!411981 (not c!235394)) b!1431584))

(assert (= (and b!1431584 (not res!647953)) b!1431585))

(declare-fun m!1631223 () Bool)

(assert (=> b!1431583 m!1631223))

(declare-fun m!1631225 () Bool)

(assert (=> b!1431585 m!1631225))

(assert (=> b!1431361 d!411981))

(declare-fun d!411983 () Bool)

(declare-fun c!235395 () Bool)

(assert (=> d!411983 (= c!235395 (is-Node!5023 (c!235373 (tokens!1941 thiss!10022))))))

(declare-fun e!913769 () Bool)

(assert (=> d!411983 (= (inv!19678 (c!235373 (tokens!1941 thiss!10022))) e!913769)))

(declare-fun b!1431586 () Bool)

(assert (=> b!1431586 (= e!913769 (inv!19682 (c!235373 (tokens!1941 thiss!10022))))))

(declare-fun b!1431587 () Bool)

(declare-fun e!913770 () Bool)

(assert (=> b!1431587 (= e!913769 e!913770)))

(declare-fun res!647954 () Bool)

(assert (=> b!1431587 (= res!647954 (not (is-Leaf!7524 (c!235373 (tokens!1941 thiss!10022)))))))

(assert (=> b!1431587 (=> res!647954 e!913770)))

(declare-fun b!1431588 () Bool)

(assert (=> b!1431588 (= e!913770 (inv!19683 (c!235373 (tokens!1941 thiss!10022))))))

(assert (= (and d!411983 c!235395) b!1431586))

(assert (= (and d!411983 (not c!235395)) b!1431587))

(assert (= (and b!1431587 (not res!647954)) b!1431588))

(declare-fun m!1631227 () Bool)

(assert (=> b!1431586 m!1631227))

(declare-fun m!1631229 () Bool)

(assert (=> b!1431588 m!1631229))

(assert (=> b!1431366 d!411983))

(declare-fun d!411985 () Bool)

(assert (=> d!411985 (= (inv!19676 (tokens!1941 thiss!10022)) (isBalanced!1490 (c!235373 (tokens!1941 thiss!10022))))))

(declare-fun bs!340791 () Bool)

(assert (= bs!340791 d!411985))

(declare-fun m!1631231 () Bool)

(assert (=> bs!340791 m!1631231))

(assert (=> b!1431357 d!411985))

(declare-fun d!411987 () Bool)

(declare-fun lt!486152 () Bool)

(assert (=> d!411987 (= lt!486152 (isEmpty!9190 (list!5890 (tokens!1941 thiss!10022))))))

(assert (=> d!411987 (= lt!486152 (isEmpty!9191 (c!235373 (tokens!1941 thiss!10022))))))

(assert (=> d!411987 (= (isEmpty!9185 (tokens!1941 thiss!10022)) lt!486152)))

(declare-fun bs!340792 () Bool)

(assert (= bs!340792 d!411987))

(assert (=> bs!340792 m!1630815))

(assert (=> bs!340792 m!1630815))

(declare-fun m!1631233 () Bool)

(assert (=> bs!340792 m!1631233))

(declare-fun m!1631235 () Bool)

(assert (=> bs!340792 m!1631235))

(assert (=> b!1431362 d!411987))

(declare-fun d!411989 () Bool)

(assert (=> d!411989 (= (inv!19676 (tokens!1941 other!32)) (isBalanced!1490 (c!235373 (tokens!1941 other!32))))))

(declare-fun bs!340793 () Bool)

(assert (= bs!340793 d!411989))

(declare-fun m!1631237 () Bool)

(assert (=> bs!340793 m!1631237))

(assert (=> b!1431363 d!411989))

(declare-fun tp!405777 () Bool)

(declare-fun e!913775 () Bool)

(declare-fun b!1431597 () Bool)

(declare-fun tp!405775 () Bool)

(assert (=> b!1431597 (= e!913775 (and (inv!19678 (left!12633 (c!235373 (tokens!1941 other!32)))) tp!405777 (inv!19678 (right!12963 (c!235373 (tokens!1941 other!32)))) tp!405775))))

(declare-fun b!1431599 () Bool)

(declare-fun e!913776 () Bool)

(declare-fun tp!405776 () Bool)

(assert (=> b!1431599 (= e!913776 tp!405776)))

(declare-fun b!1431598 () Bool)

(declare-fun inv!19684 (IArray!10051) Bool)

(assert (=> b!1431598 (= e!913775 (and (inv!19684 (xs!7756 (c!235373 (tokens!1941 other!32)))) e!913776))))

(assert (=> b!1431361 (= tp!405753 (and (inv!19678 (c!235373 (tokens!1941 other!32))) e!913775))))

(assert (= (and b!1431361 (is-Node!5023 (c!235373 (tokens!1941 other!32)))) b!1431597))

(assert (= b!1431598 b!1431599))

(assert (= (and b!1431361 (is-Leaf!7524 (c!235373 (tokens!1941 other!32)))) b!1431598))

(declare-fun m!1631239 () Bool)

(assert (=> b!1431597 m!1631239))

(declare-fun m!1631241 () Bool)

(assert (=> b!1431597 m!1631241))

(declare-fun m!1631243 () Bool)

(assert (=> b!1431598 m!1631243))

(assert (=> b!1431361 m!1630807))

(declare-fun b!1431600 () Bool)

(declare-fun tp!405778 () Bool)

(declare-fun tp!405780 () Bool)

(declare-fun e!913777 () Bool)

(assert (=> b!1431600 (= e!913777 (and (inv!19678 (left!12633 (c!235373 (tokens!1941 thiss!10022)))) tp!405780 (inv!19678 (right!12963 (c!235373 (tokens!1941 thiss!10022)))) tp!405778))))

(declare-fun b!1431602 () Bool)

(declare-fun e!913778 () Bool)

(declare-fun tp!405779 () Bool)

(assert (=> b!1431602 (= e!913778 tp!405779)))

(declare-fun b!1431601 () Bool)

(assert (=> b!1431601 (= e!913777 (and (inv!19684 (xs!7756 (c!235373 (tokens!1941 thiss!10022)))) e!913778))))

(assert (=> b!1431366 (= tp!405754 (and (inv!19678 (c!235373 (tokens!1941 thiss!10022))) e!913777))))

(assert (= (and b!1431366 (is-Node!5023 (c!235373 (tokens!1941 thiss!10022)))) b!1431600))

(assert (= b!1431601 b!1431602))

(assert (= (and b!1431366 (is-Leaf!7524 (c!235373 (tokens!1941 thiss!10022)))) b!1431601))

(declare-fun m!1631245 () Bool)

(assert (=> b!1431600 m!1631245))

(declare-fun m!1631247 () Bool)

(assert (=> b!1431600 m!1631247))

(declare-fun m!1631249 () Bool)

(assert (=> b!1431601 m!1631249))

(assert (=> b!1431366 m!1630829))

(declare-fun b!1431613 () Bool)

(declare-fun b_free!35439 () Bool)

(declare-fun b_next!36143 () Bool)

(assert (=> b!1431613 (= b_free!35439 (not b_next!36143))))

(declare-fun tp!405791 () Bool)

(declare-fun b_and!96367 () Bool)

(assert (=> b!1431613 (= tp!405791 b_and!96367)))

(declare-fun b_free!35441 () Bool)

(declare-fun b_next!36145 () Bool)

(assert (=> b!1431613 (= b_free!35441 (not b_next!36145))))

(declare-fun tp!405790 () Bool)

(declare-fun b_and!96369 () Bool)

(assert (=> b!1431613 (= tp!405790 b_and!96369)))

(declare-fun e!913789 () Bool)

(assert (=> b!1431613 (= e!913789 (and tp!405791 tp!405790))))

(declare-fun tp!405789 () Bool)

(declare-fun b!1431612 () Bool)

(declare-fun e!913788 () Bool)

(declare-fun inv!19673 (String!17698) Bool)

(declare-fun inv!19685 (TokenValueInjection!5036) Bool)

(assert (=> b!1431612 (= e!913788 (and tp!405789 (inv!19673 (tag!2860 (h!20228 (rules!11291 thiss!10022)))) (inv!19685 (transformation!2598 (h!20228 (rules!11291 thiss!10022)))) e!913789))))

(declare-fun b!1431611 () Bool)

(declare-fun e!913787 () Bool)

(declare-fun tp!405792 () Bool)

(assert (=> b!1431611 (= e!913787 (and e!913788 tp!405792))))

(assert (=> b!1431357 (= tp!405755 e!913787)))

(assert (= b!1431612 b!1431613))

(assert (= b!1431611 b!1431612))

(assert (= (and b!1431357 (is-Cons!14827 (rules!11291 thiss!10022))) b!1431611))

(declare-fun m!1631251 () Bool)

(assert (=> b!1431612 m!1631251))

(declare-fun m!1631253 () Bool)

(assert (=> b!1431612 m!1631253))

(declare-fun b!1431616 () Bool)

(declare-fun b_free!35443 () Bool)

(declare-fun b_next!36147 () Bool)

(assert (=> b!1431616 (= b_free!35443 (not b_next!36147))))

(declare-fun tp!405795 () Bool)

(declare-fun b_and!96371 () Bool)

(assert (=> b!1431616 (= tp!405795 b_and!96371)))

(declare-fun b_free!35445 () Bool)

(declare-fun b_next!36149 () Bool)

(assert (=> b!1431616 (= b_free!35445 (not b_next!36149))))

(declare-fun tp!405794 () Bool)

(declare-fun b_and!96373 () Bool)

(assert (=> b!1431616 (= tp!405794 b_and!96373)))

(declare-fun e!913793 () Bool)

(assert (=> b!1431616 (= e!913793 (and tp!405795 tp!405794))))

(declare-fun tp!405793 () Bool)

(declare-fun e!913792 () Bool)

(declare-fun b!1431615 () Bool)

(assert (=> b!1431615 (= e!913792 (and tp!405793 (inv!19673 (tag!2860 (h!20228 (rules!11291 other!32)))) (inv!19685 (transformation!2598 (h!20228 (rules!11291 other!32)))) e!913793))))

(declare-fun b!1431614 () Bool)

(declare-fun e!913791 () Bool)

(declare-fun tp!405796 () Bool)

(assert (=> b!1431614 (= e!913791 (and e!913792 tp!405796))))

(assert (=> b!1431363 (= tp!405756 e!913791)))

(assert (= b!1431615 b!1431616))

(assert (= b!1431614 b!1431615))

(assert (= (and b!1431363 (is-Cons!14827 (rules!11291 other!32))) b!1431614))

(declare-fun m!1631255 () Bool)

(assert (=> b!1431615 m!1631255))

(declare-fun m!1631257 () Bool)

(assert (=> b!1431615 m!1631257))

(push 1)

(assert (not b!1431483))

(assert (not d!411901))

(assert (not b!1431405))

(assert (not d!411947))

(assert (not d!411951))

(assert (not d!411963))

(assert (not b!1431612))

(assert (not d!411893))

(assert (not b!1431598))

(assert (not b!1431599))

(assert (not b!1431485))

(assert (not b!1431585))

(assert (not b!1431484))

(assert (not b!1431497))

(assert (not d!411919))

(assert (not b!1431533))

(assert (not b!1431569))

(assert (not b!1431415))

(assert (not b!1431460))

(assert (not d!411987))

(assert (not b!1431404))

(assert (not b!1431600))

(assert (not b_next!36145))

(assert (not d!411887))

(assert b_and!96373)

(assert (not b!1431531))

(assert (not b!1431575))

(assert (not d!411989))

(assert (not b!1431496))

(assert (not b!1431588))

(assert (not b!1431534))

(assert (not b!1431570))

(assert (not d!411897))

(assert (not b!1431532))

(assert (not b!1431420))

(assert (not d!411899))

(assert (not b!1431403))

(assert (not d!411917))

(assert (not b!1431461))

(assert (not b!1431470))

(assert (not b!1431602))

(assert (not b!1431597))

(assert (not b!1431408))

(assert (not b!1431419))

(assert b_and!96367)

(assert (not d!411985))

(assert (not b!1431486))

(assert (not b!1431614))

(assert (not d!411907))

(assert (not b!1431615))

(assert (not d!411895))

(assert (not b!1431601))

(assert (not b_next!36149))

(assert (not b!1431586))

(assert (not b!1431576))

(assert (not b!1431418))

(assert (not d!411969))

(assert (not b!1431406))

(assert (not d!411949))

(assert (not b!1431416))

(assert (not b!1431407))

(assert (not b!1431366))

(assert (not b_next!36147))

(assert (not d!411909))

(assert (not b!1431611))

(assert (not d!411971))

(assert b_and!96371)

(assert (not b!1431567))

(assert (not b!1431417))

(assert (not b!1431568))

(assert b_and!96369)

(assert (not d!411905))

(assert (not b_next!36143))

(assert (not d!411953))

(assert (not b!1431583))

(assert (not d!411903))

(assert (not d!411975))

(assert (not b!1431361))

(check-sat)

(pop 1)

(push 1)

(assert b_and!96367)

(assert (not b_next!36149))

(assert (not b_next!36147))

(assert (not b_next!36143))

(assert (not b_next!36145))

(assert b_and!96373)

(assert b_and!96371)

(assert b_and!96369)

(check-sat)

(pop 1)

