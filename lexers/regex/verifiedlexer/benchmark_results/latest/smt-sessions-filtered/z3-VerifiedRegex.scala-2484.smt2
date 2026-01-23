; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131136 () Bool)

(assert start!131136)

(declare-fun b!1422399 () Bool)

(declare-fun e!908017 () Bool)

(declare-datatypes ((C!7940 0))(
  ( (C!7941 (val!4540 Int)) )
))
(declare-datatypes ((List!14757 0))(
  ( (Nil!14691) (Cons!14691 (h!20092 C!7940) (t!124576 List!14757)) )
))
(declare-datatypes ((IArray!9925 0))(
  ( (IArray!9926 (innerList!5020 List!14757)) )
))
(declare-datatypes ((Conc!4960 0))(
  ( (Node!4960 (left!12546 Conc!4960) (right!12876 Conc!4960) (csize!10150 Int) (cheight!5171 Int)) (Leaf!7445 (xs!7689 IArray!9925) (csize!10151 Int)) (Empty!4960) )
))
(declare-datatypes ((BalanceConc!9860 0))(
  ( (BalanceConc!9861 (c!233844 Conc!4960)) )
))
(declare-datatypes ((List!14758 0))(
  ( (Nil!14692) (Cons!14692 (h!20093 (_ BitVec 16)) (t!124577 List!14758)) )
))
(declare-datatypes ((TokenValue!2657 0))(
  ( (FloatLiteralValue!5314 (text!19044 List!14758)) (TokenValueExt!2656 (__x!9114 Int)) (Broken!13285 (value!82781 List!14758)) (Object!2722) (End!2657) (Def!2657) (Underscore!2657) (Match!2657) (Else!2657) (Error!2657) (Case!2657) (If!2657) (Extends!2657) (Abstract!2657) (Class!2657) (Val!2657) (DelimiterValue!5314 (del!2717 List!14758)) (KeywordValue!2663 (value!82782 List!14758)) (CommentValue!5314 (value!82783 List!14758)) (WhitespaceValue!5314 (value!82784 List!14758)) (IndentationValue!2657 (value!82785 List!14758)) (String!17540) (Int32!2657) (Broken!13286 (value!82786 List!14758)) (Boolean!2658) (Unit!22047) (OperatorValue!2660 (op!2717 List!14758)) (IdentifierValue!5314 (value!82787 List!14758)) (IdentifierValue!5315 (value!82788 List!14758)) (WhitespaceValue!5315 (value!82789 List!14758)) (True!5314) (False!5314) (Broken!13287 (value!82790 List!14758)) (Broken!13288 (value!82791 List!14758)) (True!5315) (RightBrace!2657) (RightBracket!2657) (Colon!2657) (Null!2657) (Comma!2657) (LeftBracket!2657) (False!5315) (LeftBrace!2657) (ImaginaryLiteralValue!2657 (text!19045 List!14758)) (StringLiteralValue!7971 (value!82792 List!14758)) (EOFValue!2657 (value!82793 List!14758)) (IdentValue!2657 (value!82794 List!14758)) (DelimiterValue!5315 (value!82795 List!14758)) (DedentValue!2657 (value!82796 List!14758)) (NewLineValue!2657 (value!82797 List!14758)) (IntegerValue!7971 (value!82798 (_ BitVec 32)) (text!19046 List!14758)) (IntegerValue!7972 (value!82799 Int) (text!19047 List!14758)) (Times!2657) (Or!2657) (Equal!2657) (Minus!2657) (Broken!13289 (value!82800 List!14758)) (And!2657) (Div!2657) (LessEqual!2657) (Mod!2657) (Concat!6538) (Not!2657) (Plus!2657) (SpaceValue!2657 (value!82801 List!14758)) (IntegerValue!7973 (value!82802 Int) (text!19048 List!14758)) (StringLiteralValue!7972 (text!19049 List!14758)) (FloatLiteralValue!5315 (text!19050 List!14758)) (BytesLiteralValue!2657 (value!82803 List!14758)) (CommentValue!5315 (value!82804 List!14758)) (StringLiteralValue!7973 (value!82805 List!14758)) (ErrorTokenValue!2657 (msg!2718 List!14758)) )
))
(declare-datatypes ((Regex!3881 0))(
  ( (ElementMatch!3881 (c!233845 C!7940)) (Concat!6539 (regOne!8274 Regex!3881) (regTwo!8274 Regex!3881)) (EmptyExpr!3881) (Star!3881 (reg!4210 Regex!3881)) (EmptyLang!3881) (Union!3881 (regOne!8275 Regex!3881) (regTwo!8275 Regex!3881)) )
))
(declare-datatypes ((String!17541 0))(
  ( (String!17542 (value!82806 String)) )
))
(declare-datatypes ((TokenValueInjection!4974 0))(
  ( (TokenValueInjection!4975 (toValue!3866 Int) (toChars!3725 Int)) )
))
(declare-datatypes ((Rule!4934 0))(
  ( (Rule!4935 (regex!2567 Regex!3881) (tag!2829 String!17541) (isSeparator!2567 Bool) (transformation!2567 TokenValueInjection!4974)) )
))
(declare-datatypes ((Token!4796 0))(
  ( (Token!4797 (value!82807 TokenValue!2657) (rule!4330 Rule!4934) (size!12088 Int) (originalCharacters!3429 List!14757)) )
))
(declare-datatypes ((List!14759 0))(
  ( (Nil!14693) (Cons!14693 (h!20094 Token!4796) (t!124578 List!14759)) )
))
(declare-datatypes ((IArray!9927 0))(
  ( (IArray!9928 (innerList!5021 List!14759)) )
))
(declare-datatypes ((Conc!4961 0))(
  ( (Node!4961 (left!12547 Conc!4961) (right!12877 Conc!4961) (csize!10152 Int) (cheight!5172 Int)) (Leaf!7446 (xs!7690 IArray!9927) (csize!10153 Int)) (Empty!4961) )
))
(declare-datatypes ((BalanceConc!9862 0))(
  ( (BalanceConc!9863 (c!233846 Conc!4961)) )
))
(declare-datatypes ((List!14760 0))(
  ( (Nil!14694) (Cons!14694 (h!20095 Rule!4934) (t!124579 List!14760)) )
))
(declare-datatypes ((PrintableTokens!916 0))(
  ( (PrintableTokens!917 (rules!11194 List!14760) (tokens!1886 BalanceConc!9862)) )
))
(declare-fun thiss!10022 () PrintableTokens!916)

(declare-fun tp!403235 () Bool)

(declare-fun inv!19461 (Conc!4961) Bool)

(assert (=> b!1422399 (= e!908017 (and (inv!19461 (c!233846 (tokens!1886 thiss!10022))) tp!403235))))

(declare-fun b!1422400 () Bool)

(declare-fun e!908013 () List!14757)

(assert (=> b!1422400 (= e!908013 Nil!14691)))

(declare-fun b!1422401 () Bool)

(declare-fun res!644026 () Bool)

(declare-fun e!908021 () Bool)

(assert (=> b!1422401 (=> (not res!644026) (not e!908021))))

(declare-fun lt!481289 () BalanceConc!9860)

(declare-fun other!32 () PrintableTokens!916)

(declare-datatypes ((LexerInterface!2233 0))(
  ( (LexerInterfaceExt!2230 (__x!9115 Int)) (Lexer!2231) )
))
(declare-fun printTailRec!661 (LexerInterface!2233 BalanceConc!9862 Int BalanceConc!9860) BalanceConc!9860)

(assert (=> b!1422401 (= res!644026 (= lt!481289 (printTailRec!661 Lexer!2231 (tokens!1886 other!32) 0 (BalanceConc!9861 Empty!4960))))))

(declare-fun b!1422402 () Bool)

(declare-fun e!908016 () Bool)

(declare-fun tp!403233 () Bool)

(assert (=> b!1422402 (= e!908016 (and (inv!19461 (c!233846 (tokens!1886 other!32))) tp!403233))))

(declare-fun b!1422403 () Bool)

(declare-fun tp!403234 () Bool)

(declare-fun e!908022 () Bool)

(declare-fun inv!19462 (BalanceConc!9862) Bool)

(assert (=> b!1422403 (= e!908022 (and tp!403234 (inv!19462 (tokens!1886 other!32)) e!908016))))

(declare-fun b!1422404 () Bool)

(declare-fun res!644020 () Bool)

(declare-fun e!908019 () Bool)

(assert (=> b!1422404 (=> (not res!644020) (not e!908019))))

(declare-fun isEmpty!9073 (BalanceConc!9862) Bool)

(assert (=> b!1422404 (= res!644020 (isEmpty!9073 (tokens!1886 thiss!10022)))))

(declare-fun b!1422405 () Bool)

(declare-fun lt!481294 () List!14757)

(assert (=> b!1422405 (= e!908021 (= lt!481294 e!908013))))

(declare-fun c!233843 () Bool)

(declare-fun lt!481296 () List!14759)

(get-info :version)

(assert (=> b!1422405 (= c!233843 ((_ is Cons!14693) lt!481296))))

(declare-fun b!1422406 () Bool)

(declare-fun e!908018 () Bool)

(assert (=> b!1422406 (= e!908019 e!908018)))

(declare-fun res!644025 () Bool)

(assert (=> b!1422406 (=> (not res!644025) (not e!908018))))

(declare-fun lt!481299 () List!14759)

(declare-fun isEmpty!9074 (List!14759) Bool)

(assert (=> b!1422406 (= res!644025 (isEmpty!9074 lt!481299))))

(declare-fun list!5822 (BalanceConc!9862) List!14759)

(assert (=> b!1422406 (= lt!481299 (list!5822 (tokens!1886 thiss!10022)))))

(declare-fun b!1422407 () Bool)

(declare-fun ++!3892 (List!14757 List!14757) List!14757)

(declare-fun list!5823 (BalanceConc!9860) List!14757)

(declare-fun charsOf!1492 (Token!4796) BalanceConc!9860)

(declare-fun printList!687 (LexerInterface!2233 List!14759) List!14757)

(assert (=> b!1422407 (= e!908013 (++!3892 (list!5823 (charsOf!1492 (h!20094 lt!481296))) (printList!687 Lexer!2231 (t!124578 lt!481296))))))

(declare-fun b!1422409 () Bool)

(declare-fun e!908015 () Bool)

(assert (=> b!1422409 (= e!908018 e!908015)))

(declare-fun res!644024 () Bool)

(assert (=> b!1422409 (=> (not res!644024) (not e!908015))))

(declare-fun lt!481290 () List!14759)

(declare-fun ++!3893 (List!14759 List!14759) List!14759)

(assert (=> b!1422409 (= res!644024 (= lt!481296 (++!3893 lt!481290 lt!481296)))))

(assert (=> b!1422409 (= lt!481296 (list!5822 (tokens!1886 other!32)))))

(assert (=> b!1422409 (= lt!481290 (list!5822 (BalanceConc!9863 Empty!4961)))))

(declare-fun b!1422410 () Bool)

(declare-fun e!908023 () Bool)

(declare-fun lt!481288 () List!14757)

(assert (=> b!1422410 (= e!908023 (= lt!481288 Nil!14691))))

(declare-fun tp!403236 () Bool)

(declare-fun b!1422408 () Bool)

(declare-fun e!908020 () Bool)

(assert (=> b!1422408 (= e!908020 (and tp!403236 (inv!19462 (tokens!1886 thiss!10022)) e!908017))))

(declare-fun res!644023 () Bool)

(declare-fun e!908014 () Bool)

(assert (=> start!131136 (=> (not res!644023) (not e!908014))))

(assert (=> start!131136 (= res!644023 (= (rules!11194 thiss!10022) (rules!11194 other!32)))))

(assert (=> start!131136 e!908014))

(declare-fun inv!19463 (PrintableTokens!916) Bool)

(assert (=> start!131136 (and (inv!19463 thiss!10022) e!908020)))

(assert (=> start!131136 (and (inv!19463 other!32) e!908022)))

(declare-fun b!1422411 () Bool)

(assert (=> b!1422411 (= e!908014 e!908019)))

(declare-fun res!644022 () Bool)

(assert (=> b!1422411 (=> (not res!644022) (not e!908019))))

(assert (=> b!1422411 (= res!644022 (not (isEmpty!9073 (tokens!1886 other!32))))))

(declare-datatypes ((Unit!22048 0))(
  ( (Unit!22049) )
))
(declare-fun lt!481295 () Unit!22048)

(declare-fun lemmaInvariant!263 (PrintableTokens!916) Unit!22048)

(assert (=> b!1422411 (= lt!481295 (lemmaInvariant!263 thiss!10022))))

(declare-fun lt!481292 () Unit!22048)

(assert (=> b!1422411 (= lt!481292 (lemmaInvariant!263 other!32))))

(declare-fun b!1422412 () Bool)

(assert (=> b!1422412 (= e!908015 (not true))))

(assert (=> b!1422412 e!908021))

(declare-fun res!644019 () Bool)

(assert (=> b!1422412 (=> (not res!644019) (not e!908021))))

(declare-fun lt!481300 () BalanceConc!9860)

(assert (=> b!1422412 (= res!644019 (= lt!481300 lt!481289))))

(declare-fun print!1021 (LexerInterface!2233 BalanceConc!9862) BalanceConc!9860)

(assert (=> b!1422412 (= lt!481289 (print!1021 Lexer!2231 (tokens!1886 other!32)))))

(declare-fun print!1022 (PrintableTokens!916) BalanceConc!9860)

(assert (=> b!1422412 (= lt!481300 (print!1022 other!32))))

(declare-fun lt!481291 () Unit!22048)

(declare-fun theoremInvertabilityWhenTokenListSeparable!53 (LexerInterface!2233 List!14760 List!14759) Unit!22048)

(assert (=> b!1422412 (= lt!481291 (theoremInvertabilityWhenTokenListSeparable!53 Lexer!2231 (rules!11194 other!32) lt!481296))))

(assert (=> b!1422412 (= (print!1022 thiss!10022) (print!1021 Lexer!2231 (tokens!1886 thiss!10022)))))

(declare-fun lt!481293 () Unit!22048)

(assert (=> b!1422412 (= lt!481293 (theoremInvertabilityWhenTokenListSeparable!53 Lexer!2231 (rules!11194 thiss!10022) lt!481299))))

(assert (=> b!1422412 e!908023))

(declare-fun res!644021 () Bool)

(assert (=> b!1422412 (=> (not res!644021) (not e!908023))))

(declare-fun lt!481297 () List!14759)

(assert (=> b!1422412 (= res!644021 (= (printList!687 Lexer!2231 lt!481297) (++!3892 lt!481288 lt!481294)))))

(assert (=> b!1422412 (= lt!481294 (printList!687 Lexer!2231 lt!481296))))

(assert (=> b!1422412 (= lt!481288 (printList!687 Lexer!2231 Nil!14693))))

(assert (=> b!1422412 (= lt!481297 (++!3893 Nil!14693 lt!481296))))

(declare-fun lt!481298 () Unit!22048)

(declare-fun lemmaPrintConcatSameAsConcatPrint!52 (LexerInterface!2233 List!14759 List!14759) Unit!22048)

(assert (=> b!1422412 (= lt!481298 (lemmaPrintConcatSameAsConcatPrint!52 Lexer!2231 Nil!14693 lt!481296))))

(assert (= (and start!131136 res!644023) b!1422411))

(assert (= (and b!1422411 res!644022) b!1422404))

(assert (= (and b!1422404 res!644020) b!1422406))

(assert (= (and b!1422406 res!644025) b!1422409))

(assert (= (and b!1422409 res!644024) b!1422412))

(assert (= (and b!1422412 res!644021) b!1422410))

(assert (= (and b!1422412 res!644019) b!1422401))

(assert (= (and b!1422401 res!644026) b!1422405))

(assert (= (and b!1422405 c!233843) b!1422407))

(assert (= (and b!1422405 (not c!233843)) b!1422400))

(assert (= b!1422408 b!1422399))

(assert (= start!131136 b!1422408))

(assert (= b!1422403 b!1422402))

(assert (= start!131136 b!1422403))

(declare-fun m!1613985 () Bool)

(assert (=> b!1422407 m!1613985))

(assert (=> b!1422407 m!1613985))

(declare-fun m!1613987 () Bool)

(assert (=> b!1422407 m!1613987))

(declare-fun m!1613989 () Bool)

(assert (=> b!1422407 m!1613989))

(assert (=> b!1422407 m!1613987))

(assert (=> b!1422407 m!1613989))

(declare-fun m!1613991 () Bool)

(assert (=> b!1422407 m!1613991))

(declare-fun m!1613993 () Bool)

(assert (=> b!1422408 m!1613993))

(declare-fun m!1613995 () Bool)

(assert (=> b!1422406 m!1613995))

(declare-fun m!1613997 () Bool)

(assert (=> b!1422406 m!1613997))

(declare-fun m!1613999 () Bool)

(assert (=> start!131136 m!1613999))

(declare-fun m!1614001 () Bool)

(assert (=> start!131136 m!1614001))

(declare-fun m!1614003 () Bool)

(assert (=> b!1422399 m!1614003))

(declare-fun m!1614005 () Bool)

(assert (=> b!1422404 m!1614005))

(declare-fun m!1614007 () Bool)

(assert (=> b!1422403 m!1614007))

(declare-fun m!1614009 () Bool)

(assert (=> b!1422402 m!1614009))

(declare-fun m!1614011 () Bool)

(assert (=> b!1422412 m!1614011))

(declare-fun m!1614013 () Bool)

(assert (=> b!1422412 m!1614013))

(declare-fun m!1614015 () Bool)

(assert (=> b!1422412 m!1614015))

(declare-fun m!1614017 () Bool)

(assert (=> b!1422412 m!1614017))

(declare-fun m!1614019 () Bool)

(assert (=> b!1422412 m!1614019))

(declare-fun m!1614021 () Bool)

(assert (=> b!1422412 m!1614021))

(declare-fun m!1614023 () Bool)

(assert (=> b!1422412 m!1614023))

(declare-fun m!1614025 () Bool)

(assert (=> b!1422412 m!1614025))

(declare-fun m!1614027 () Bool)

(assert (=> b!1422412 m!1614027))

(declare-fun m!1614029 () Bool)

(assert (=> b!1422412 m!1614029))

(declare-fun m!1614031 () Bool)

(assert (=> b!1422412 m!1614031))

(declare-fun m!1614033 () Bool)

(assert (=> b!1422412 m!1614033))

(declare-fun m!1614035 () Bool)

(assert (=> b!1422411 m!1614035))

(declare-fun m!1614037 () Bool)

(assert (=> b!1422411 m!1614037))

(declare-fun m!1614039 () Bool)

(assert (=> b!1422411 m!1614039))

(declare-fun m!1614041 () Bool)

(assert (=> b!1422409 m!1614041))

(declare-fun m!1614043 () Bool)

(assert (=> b!1422409 m!1614043))

(declare-fun m!1614045 () Bool)

(assert (=> b!1422409 m!1614045))

(declare-fun m!1614047 () Bool)

(assert (=> b!1422401 m!1614047))

(check-sat (not b!1422412) (not b!1422399) (not b!1422411) (not start!131136) (not b!1422401) (not b!1422404) (not b!1422406) (not b!1422403) (not b!1422408) (not b!1422402) (not b!1422407) (not b!1422409))
(check-sat)
