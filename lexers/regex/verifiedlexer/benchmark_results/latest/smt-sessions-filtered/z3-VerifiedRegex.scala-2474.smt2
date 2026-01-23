; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130872 () Bool)

(assert start!130872)

(declare-fun res!643340 () Bool)

(declare-fun e!906961 () Bool)

(assert (=> start!130872 (=> (not res!643340) (not e!906961))))

(declare-datatypes ((C!7900 0))(
  ( (C!7901 (val!4520 Int)) )
))
(declare-datatypes ((List!14677 0))(
  ( (Nil!14611) (Cons!14611 (h!20012 C!7900) (t!124472 List!14677)) )
))
(declare-datatypes ((IArray!9845 0))(
  ( (IArray!9846 (innerList!4980 List!14677)) )
))
(declare-datatypes ((Conc!4920 0))(
  ( (Node!4920 (left!12496 Conc!4920) (right!12826 Conc!4920) (csize!10070 Int) (cheight!5131 Int)) (Leaf!7395 (xs!7649 IArray!9845) (csize!10071 Int)) (Empty!4920) )
))
(declare-datatypes ((BalanceConc!9780 0))(
  ( (BalanceConc!9781 (c!233586 Conc!4920)) )
))
(declare-datatypes ((List!14678 0))(
  ( (Nil!14612) (Cons!14612 (h!20013 (_ BitVec 16)) (t!124473 List!14678)) )
))
(declare-datatypes ((TokenValue!2637 0))(
  ( (FloatLiteralValue!5274 (text!18904 List!14678)) (TokenValueExt!2636 (__x!9076 Int)) (Broken!13185 (value!82211 List!14678)) (Object!2702) (End!2637) (Def!2637) (Underscore!2637) (Match!2637) (Else!2637) (Error!2637) (Case!2637) (If!2637) (Extends!2637) (Abstract!2637) (Class!2637) (Val!2637) (DelimiterValue!5274 (del!2697 List!14678)) (KeywordValue!2643 (value!82212 List!14678)) (CommentValue!5274 (value!82213 List!14678)) (WhitespaceValue!5274 (value!82214 List!14678)) (IndentationValue!2637 (value!82215 List!14678)) (String!17440) (Int32!2637) (Broken!13186 (value!82216 List!14678)) (Boolean!2638) (Unit!21807) (OperatorValue!2640 (op!2697 List!14678)) (IdentifierValue!5274 (value!82217 List!14678)) (IdentifierValue!5275 (value!82218 List!14678)) (WhitespaceValue!5275 (value!82219 List!14678)) (True!5274) (False!5274) (Broken!13187 (value!82220 List!14678)) (Broken!13188 (value!82221 List!14678)) (True!5275) (RightBrace!2637) (RightBracket!2637) (Colon!2637) (Null!2637) (Comma!2637) (LeftBracket!2637) (False!5275) (LeftBrace!2637) (ImaginaryLiteralValue!2637 (text!18905 List!14678)) (StringLiteralValue!7911 (value!82222 List!14678)) (EOFValue!2637 (value!82223 List!14678)) (IdentValue!2637 (value!82224 List!14678)) (DelimiterValue!5275 (value!82225 List!14678)) (DedentValue!2637 (value!82226 List!14678)) (NewLineValue!2637 (value!82227 List!14678)) (IntegerValue!7911 (value!82228 (_ BitVec 32)) (text!18906 List!14678)) (IntegerValue!7912 (value!82229 Int) (text!18907 List!14678)) (Times!2637) (Or!2637) (Equal!2637) (Minus!2637) (Broken!13189 (value!82230 List!14678)) (And!2637) (Div!2637) (LessEqual!2637) (Mod!2637) (Concat!6498) (Not!2637) (Plus!2637) (SpaceValue!2637 (value!82231 List!14678)) (IntegerValue!7913 (value!82232 Int) (text!18908 List!14678)) (StringLiteralValue!7912 (text!18909 List!14678)) (FloatLiteralValue!5275 (text!18910 List!14678)) (BytesLiteralValue!2637 (value!82233 List!14678)) (CommentValue!5275 (value!82234 List!14678)) (StringLiteralValue!7913 (value!82235 List!14678)) (ErrorTokenValue!2637 (msg!2698 List!14678)) )
))
(declare-datatypes ((Regex!3861 0))(
  ( (ElementMatch!3861 (c!233587 C!7900)) (Concat!6499 (regOne!8234 Regex!3861) (regTwo!8234 Regex!3861)) (EmptyExpr!3861) (Star!3861 (reg!4190 Regex!3861)) (EmptyLang!3861) (Union!3861 (regOne!8235 Regex!3861) (regTwo!8235 Regex!3861)) )
))
(declare-datatypes ((String!17441 0))(
  ( (String!17442 (value!82236 String)) )
))
(declare-datatypes ((TokenValueInjection!4934 0))(
  ( (TokenValueInjection!4935 (toValue!3846 Int) (toChars!3705 Int)) )
))
(declare-datatypes ((Rule!4894 0))(
  ( (Rule!4895 (regex!2547 Regex!3861) (tag!2809 String!17441) (isSeparator!2547 Bool) (transformation!2547 TokenValueInjection!4934)) )
))
(declare-datatypes ((Token!4756 0))(
  ( (Token!4757 (value!82237 TokenValue!2637) (rule!4310 Rule!4894) (size!12050 Int) (originalCharacters!3409 List!14677)) )
))
(declare-datatypes ((List!14679 0))(
  ( (Nil!14613) (Cons!14613 (h!20014 Token!4756) (t!124474 List!14679)) )
))
(declare-datatypes ((IArray!9847 0))(
  ( (IArray!9848 (innerList!4981 List!14679)) )
))
(declare-datatypes ((Conc!4921 0))(
  ( (Node!4921 (left!12497 Conc!4921) (right!12827 Conc!4921) (csize!10072 Int) (cheight!5132 Int)) (Leaf!7396 (xs!7650 IArray!9847) (csize!10073 Int)) (Empty!4921) )
))
(declare-datatypes ((BalanceConc!9782 0))(
  ( (BalanceConc!9783 (c!233588 Conc!4921)) )
))
(declare-datatypes ((List!14680 0))(
  ( (Nil!14614) (Cons!14614 (h!20015 Rule!4894) (t!124475 List!14680)) )
))
(declare-datatypes ((PrintableTokens!876 0))(
  ( (PrintableTokens!877 (rules!11168 List!14680) (tokens!1860 BalanceConc!9782)) )
))
(declare-fun thiss!10022 () PrintableTokens!876)

(declare-fun other!32 () PrintableTokens!876)

(assert (=> start!130872 (= res!643340 (= (rules!11168 thiss!10022) (rules!11168 other!32)))))

(assert (=> start!130872 e!906961))

(declare-fun e!906960 () Bool)

(declare-fun inv!19337 (PrintableTokens!876) Bool)

(assert (=> start!130872 (and (inv!19337 thiss!10022) e!906960)))

(declare-fun e!906963 () Bool)

(assert (=> start!130872 (and (inv!19337 other!32) e!906963)))

(declare-fun b!1420928 () Bool)

(declare-fun e!906962 () Bool)

(declare-fun tp!402809 () Bool)

(declare-fun inv!19338 (Conc!4921) Bool)

(assert (=> b!1420928 (= e!906962 (and (inv!19338 (c!233588 (tokens!1860 other!32))) tp!402809))))

(declare-fun b!1420929 () Bool)

(declare-fun e!906957 () Bool)

(declare-fun tp!402808 () Bool)

(assert (=> b!1420929 (= e!906957 (and (inv!19338 (c!233588 (tokens!1860 thiss!10022))) tp!402808))))

(declare-fun b!1420930 () Bool)

(declare-fun e!906958 () Bool)

(assert (=> b!1420930 (= e!906961 e!906958)))

(declare-fun res!643339 () Bool)

(assert (=> b!1420930 (=> (not res!643339) (not e!906958))))

(declare-fun isEmpty!9008 (BalanceConc!9782) Bool)

(assert (=> b!1420930 (= res!643339 (isEmpty!9008 (tokens!1860 other!32)))))

(declare-datatypes ((Unit!21808 0))(
  ( (Unit!21809) )
))
(declare-fun lt!479739 () Unit!21808)

(declare-fun lemmaInvariant!243 (PrintableTokens!876) Unit!21808)

(assert (=> b!1420930 (= lt!479739 (lemmaInvariant!243 thiss!10022))))

(declare-fun lt!479743 () Unit!21808)

(assert (=> b!1420930 (= lt!479743 (lemmaInvariant!243 other!32))))

(declare-fun b!1420931 () Bool)

(declare-fun tp!402807 () Bool)

(declare-fun inv!19339 (BalanceConc!9782) Bool)

(assert (=> b!1420931 (= e!906960 (and tp!402807 (inv!19339 (tokens!1860 thiss!10022)) e!906957))))

(declare-fun tp!402810 () Bool)

(declare-fun b!1420932 () Bool)

(assert (=> b!1420932 (= e!906963 (and tp!402810 (inv!19339 (tokens!1860 other!32)) e!906962))))

(declare-fun b!1420933 () Bool)

(assert (=> b!1420933 (= e!906958 (not true))))

(declare-fun print!989 (PrintableTokens!876) BalanceConc!9780)

(declare-datatypes ((LexerInterface!2215 0))(
  ( (LexerInterfaceExt!2212 (__x!9077 Int)) (Lexer!2213) )
))
(declare-fun print!990 (LexerInterface!2215 BalanceConc!9782) BalanceConc!9780)

(assert (=> b!1420933 (= (print!989 other!32) (print!990 Lexer!2213 (tokens!1860 other!32)))))

(declare-fun lt!479742 () Unit!21808)

(declare-fun theoremInvertabilityWhenTokenListSeparable!37 (LexerInterface!2215 List!14680 List!14679) Unit!21808)

(declare-fun list!5781 (BalanceConc!9782) List!14679)

(assert (=> b!1420933 (= lt!479742 (theoremInvertabilityWhenTokenListSeparable!37 Lexer!2213 (rules!11168 other!32) (list!5781 (tokens!1860 other!32))))))

(assert (=> b!1420933 (= (print!989 thiss!10022) (print!990 Lexer!2213 (tokens!1860 thiss!10022)))))

(declare-fun lt!479736 () Unit!21808)

(declare-fun lt!479737 () List!14679)

(assert (=> b!1420933 (= lt!479736 (theoremInvertabilityWhenTokenListSeparable!37 Lexer!2213 (rules!11168 thiss!10022) lt!479737))))

(declare-fun e!906959 () Bool)

(assert (=> b!1420933 e!906959))

(declare-fun res!643338 () Bool)

(assert (=> b!1420933 (=> (not res!643338) (not e!906959))))

(declare-fun lt!479744 () List!14677)

(declare-fun lt!479740 () List!14677)

(declare-fun lt!479738 () List!14679)

(declare-fun printList!669 (LexerInterface!2215 List!14679) List!14677)

(declare-fun ++!3848 (List!14677 List!14677) List!14677)

(assert (=> b!1420933 (= res!643338 (= (printList!669 Lexer!2213 lt!479738) (++!3848 lt!479744 lt!479740)))))

(assert (=> b!1420933 (= lt!479740 (printList!669 Lexer!2213 Nil!14613))))

(assert (=> b!1420933 (= lt!479744 (printList!669 Lexer!2213 lt!479737))))

(declare-fun ++!3849 (List!14679 List!14679) List!14679)

(assert (=> b!1420933 (= lt!479738 (++!3849 lt!479737 Nil!14613))))

(declare-fun lt!479741 () Unit!21808)

(declare-fun lemmaPrintConcatSameAsConcatPrint!34 (LexerInterface!2215 List!14679 List!14679) Unit!21808)

(assert (=> b!1420933 (= lt!479741 (lemmaPrintConcatSameAsConcatPrint!34 Lexer!2213 lt!479737 Nil!14613))))

(assert (=> b!1420933 (= lt!479737 (list!5781 (tokens!1860 thiss!10022)))))

(declare-fun b!1420934 () Bool)

(assert (=> b!1420934 (= e!906959 (= lt!479740 Nil!14611))))

(assert (= (and start!130872 res!643340) b!1420930))

(assert (= (and b!1420930 res!643339) b!1420933))

(assert (= (and b!1420933 res!643338) b!1420934))

(assert (= b!1420931 b!1420929))

(assert (= start!130872 b!1420931))

(assert (= b!1420932 b!1420928))

(assert (= start!130872 b!1420932))

(declare-fun m!1610703 () Bool)

(assert (=> b!1420931 m!1610703))

(declare-fun m!1610705 () Bool)

(assert (=> b!1420932 m!1610705))

(declare-fun m!1610707 () Bool)

(assert (=> b!1420928 m!1610707))

(declare-fun m!1610709 () Bool)

(assert (=> b!1420933 m!1610709))

(declare-fun m!1610711 () Bool)

(assert (=> b!1420933 m!1610711))

(declare-fun m!1610713 () Bool)

(assert (=> b!1420933 m!1610713))

(declare-fun m!1610715 () Bool)

(assert (=> b!1420933 m!1610715))

(declare-fun m!1610717 () Bool)

(assert (=> b!1420933 m!1610717))

(declare-fun m!1610719 () Bool)

(assert (=> b!1420933 m!1610719))

(declare-fun m!1610721 () Bool)

(assert (=> b!1420933 m!1610721))

(declare-fun m!1610723 () Bool)

(assert (=> b!1420933 m!1610723))

(declare-fun m!1610725 () Bool)

(assert (=> b!1420933 m!1610725))

(declare-fun m!1610727 () Bool)

(assert (=> b!1420933 m!1610727))

(declare-fun m!1610729 () Bool)

(assert (=> b!1420933 m!1610729))

(declare-fun m!1610731 () Bool)

(assert (=> b!1420933 m!1610731))

(assert (=> b!1420933 m!1610719))

(declare-fun m!1610733 () Bool)

(assert (=> b!1420933 m!1610733))

(declare-fun m!1610735 () Bool)

(assert (=> b!1420933 m!1610735))

(declare-fun m!1610737 () Bool)

(assert (=> start!130872 m!1610737))

(declare-fun m!1610739 () Bool)

(assert (=> start!130872 m!1610739))

(declare-fun m!1610741 () Bool)

(assert (=> b!1420929 m!1610741))

(declare-fun m!1610743 () Bool)

(assert (=> b!1420930 m!1610743))

(declare-fun m!1610745 () Bool)

(assert (=> b!1420930 m!1610745))

(declare-fun m!1610747 () Bool)

(assert (=> b!1420930 m!1610747))

(check-sat (not b!1420932) (not start!130872) (not b!1420933) (not b!1420931) (not b!1420930) (not b!1420929) (not b!1420928))
(check-sat)
