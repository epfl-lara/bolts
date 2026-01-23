; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133148 () Bool)

(assert start!133148)

(declare-fun e!916617 () Bool)

(declare-datatypes ((C!8064 0))(
  ( (C!8065 (val!4602 Int)) )
))
(declare-datatypes ((List!15020 0))(
  ( (Nil!14954) (Cons!14954 (h!20355 C!8064) (t!127427 List!15020)) )
))
(declare-datatypes ((IArray!10173 0))(
  ( (IArray!10174 (innerList!5144 List!15020)) )
))
(declare-datatypes ((Conc!5084 0))(
  ( (Node!5084 (left!12737 Conc!5084) (right!13067 Conc!5084) (csize!10398 Int) (cheight!5295 Int)) (Leaf!7600 (xs!7817 IArray!10173) (csize!10399 Int)) (Empty!5084) )
))
(declare-datatypes ((BalanceConc!10108 0))(
  ( (BalanceConc!10109 (c!236046 Conc!5084)) )
))
(declare-datatypes ((List!15021 0))(
  ( (Nil!14955) (Cons!14955 (h!20356 (_ BitVec 16)) (t!127428 List!15021)) )
))
(declare-datatypes ((TokenValue!2719 0))(
  ( (FloatLiteralValue!5438 (text!19478 List!15021)) (TokenValueExt!2718 (__x!9230 Int)) (Broken!13595 (value!84548 List!15021)) (Object!2784) (End!2719) (Def!2719) (Underscore!2719) (Match!2719) (Else!2719) (Error!2719) (Case!2719) (If!2719) (Extends!2719) (Abstract!2719) (Class!2719) (Val!2719) (DelimiterValue!5438 (del!2779 List!15021)) (KeywordValue!2725 (value!84549 List!15021)) (CommentValue!5438 (value!84550 List!15021)) (WhitespaceValue!5438 (value!84551 List!15021)) (IndentationValue!2719 (value!84552 List!15021)) (String!17850) (Int32!2719) (Broken!13596 (value!84553 List!15021)) (Boolean!2720) (Unit!23020) (OperatorValue!2722 (op!2779 List!15021)) (IdentifierValue!5438 (value!84554 List!15021)) (IdentifierValue!5439 (value!84555 List!15021)) (WhitespaceValue!5439 (value!84556 List!15021)) (True!5438) (False!5438) (Broken!13597 (value!84557 List!15021)) (Broken!13598 (value!84558 List!15021)) (True!5439) (RightBrace!2719) (RightBracket!2719) (Colon!2719) (Null!2719) (Comma!2719) (LeftBracket!2719) (False!5439) (LeftBrace!2719) (ImaginaryLiteralValue!2719 (text!19479 List!15021)) (StringLiteralValue!8157 (value!84559 List!15021)) (EOFValue!2719 (value!84560 List!15021)) (IdentValue!2719 (value!84561 List!15021)) (DelimiterValue!5439 (value!84562 List!15021)) (DedentValue!2719 (value!84563 List!15021)) (NewLineValue!2719 (value!84564 List!15021)) (IntegerValue!8157 (value!84565 (_ BitVec 32)) (text!19480 List!15021)) (IntegerValue!8158 (value!84566 Int) (text!19481 List!15021)) (Times!2719) (Or!2719) (Equal!2719) (Minus!2719) (Broken!13599 (value!84567 List!15021)) (And!2719) (Div!2719) (LessEqual!2719) (Mod!2719) (Concat!6662) (Not!2719) (Plus!2719) (SpaceValue!2719 (value!84568 List!15021)) (IntegerValue!8159 (value!84569 Int) (text!19482 List!15021)) (StringLiteralValue!8158 (text!19483 List!15021)) (FloatLiteralValue!5439 (text!19484 List!15021)) (BytesLiteralValue!2719 (value!84570 List!15021)) (CommentValue!5439 (value!84571 List!15021)) (StringLiteralValue!8159 (value!84572 List!15021)) (ErrorTokenValue!2719 (msg!2780 List!15021)) )
))
(declare-datatypes ((Regex!3943 0))(
  ( (ElementMatch!3943 (c!236047 C!8064)) (Concat!6663 (regOne!8398 Regex!3943) (regTwo!8398 Regex!3943)) (EmptyExpr!3943) (Star!3943 (reg!4272 Regex!3943)) (EmptyLang!3943) (Union!3943 (regOne!8399 Regex!3943) (regTwo!8399 Regex!3943)) )
))
(declare-datatypes ((String!17851 0))(
  ( (String!17852 (value!84573 String)) )
))
(declare-datatypes ((TokenValueInjection!5098 0))(
  ( (TokenValueInjection!5099 (toValue!3932 Int) (toChars!3791 Int)) )
))
(declare-datatypes ((Rule!5058 0))(
  ( (Rule!5059 (regex!2629 Regex!3943) (tag!2891 String!17851) (isSeparator!2629 Bool) (transformation!2629 TokenValueInjection!5098)) )
))
(declare-datatypes ((Token!4920 0))(
  ( (Token!4921 (value!84574 TokenValue!2719) (rule!4394 Rule!5058) (size!12251 Int) (originalCharacters!3491 List!15020)) )
))
(declare-datatypes ((List!15022 0))(
  ( (Nil!14956) (Cons!14956 (h!20357 Token!4920) (t!127429 List!15022)) )
))
(declare-datatypes ((IArray!10175 0))(
  ( (IArray!10176 (innerList!5145 List!15022)) )
))
(declare-datatypes ((Conc!5085 0))(
  ( (Node!5085 (left!12738 Conc!5085) (right!13068 Conc!5085) (csize!10400 Int) (cheight!5296 Int)) (Leaf!7601 (xs!7818 IArray!10175) (csize!10401 Int)) (Empty!5085) )
))
(declare-datatypes ((BalanceConc!10110 0))(
  ( (BalanceConc!10111 (c!236048 Conc!5085)) )
))
(declare-datatypes ((List!15023 0))(
  ( (Nil!14957) (Cons!14957 (h!20358 Rule!5058) (t!127430 List!15023)) )
))
(declare-datatypes ((PrintableTokens!1040 0))(
  ( (PrintableTokens!1041 (rules!11422 List!15023) (tokens!1994 BalanceConc!10110)) )
))
(declare-fun other!32 () PrintableTokens!1040)

(declare-fun e!916618 () Bool)

(declare-fun tp!406728 () Bool)

(declare-fun b!1435983 () Bool)

(declare-fun inv!19879 (BalanceConc!10110) Bool)

(assert (=> b!1435983 (= e!916618 (and tp!406728 (inv!19879 (tokens!1994 other!32)) e!916617))))

(declare-fun b!1435984 () Bool)

(declare-fun res!650213 () Bool)

(declare-fun e!916622 () Bool)

(assert (=> b!1435984 (=> (not res!650213) (not e!916622))))

(declare-fun thiss!10022 () PrintableTokens!1040)

(declare-fun isEmpty!9294 (BalanceConc!10110) Bool)

(assert (=> b!1435984 (= res!650213 (isEmpty!9294 (tokens!1994 thiss!10022)))))

(declare-fun b!1435985 () Bool)

(declare-fun e!916620 () Bool)

(declare-fun e!916619 () Bool)

(declare-fun tp!406730 () Bool)

(assert (=> b!1435985 (= e!916619 (and tp!406730 (inv!19879 (tokens!1994 thiss!10022)) e!916620))))

(declare-fun b!1435986 () Bool)

(declare-fun res!650212 () Bool)

(assert (=> b!1435986 (=> (not res!650212) (not e!916622))))

(declare-fun isEmpty!9295 (List!15022) Bool)

(declare-fun list!5945 (BalanceConc!10110) List!15022)

(assert (=> b!1435986 (= res!650212 (isEmpty!9295 (list!5945 (tokens!1994 thiss!10022))))))

(declare-fun b!1435987 () Bool)

(declare-fun lt!490855 () List!15022)

(declare-fun lt!490856 () List!15022)

(declare-fun ++!4008 (List!15022 List!15022) List!15022)

(assert (=> b!1435987 (= e!916622 (not (= lt!490855 (++!4008 lt!490856 lt!490855))))))

(assert (=> b!1435987 (= lt!490855 (list!5945 (tokens!1994 other!32)))))

(assert (=> b!1435987 (= lt!490856 (list!5945 (BalanceConc!10111 Empty!5085)))))

(declare-fun b!1435988 () Bool)

(declare-fun tp!406727 () Bool)

(declare-fun inv!19880 (Conc!5085) Bool)

(assert (=> b!1435988 (= e!916620 (and (inv!19880 (c!236048 (tokens!1994 thiss!10022))) tp!406727))))

(declare-fun res!650211 () Bool)

(declare-fun e!916621 () Bool)

(assert (=> start!133148 (=> (not res!650211) (not e!916621))))

(assert (=> start!133148 (= res!650211 (= (rules!11422 thiss!10022) (rules!11422 other!32)))))

(assert (=> start!133148 e!916621))

(declare-fun inv!19881 (PrintableTokens!1040) Bool)

(assert (=> start!133148 (and (inv!19881 thiss!10022) e!916619)))

(assert (=> start!133148 (and (inv!19881 other!32) e!916618)))

(declare-fun b!1435989 () Bool)

(assert (=> b!1435989 (= e!916621 e!916622)))

(declare-fun res!650210 () Bool)

(assert (=> b!1435989 (=> (not res!650210) (not e!916622))))

(assert (=> b!1435989 (= res!650210 (not (isEmpty!9294 (tokens!1994 other!32))))))

(declare-datatypes ((Unit!23021 0))(
  ( (Unit!23022) )
))
(declare-fun lt!490857 () Unit!23021)

(declare-fun lemmaInvariant!325 (PrintableTokens!1040) Unit!23021)

(assert (=> b!1435989 (= lt!490857 (lemmaInvariant!325 thiss!10022))))

(declare-fun lt!490858 () Unit!23021)

(assert (=> b!1435989 (= lt!490858 (lemmaInvariant!325 other!32))))

(declare-fun b!1435990 () Bool)

(declare-fun tp!406729 () Bool)

(assert (=> b!1435990 (= e!916617 (and (inv!19880 (c!236048 (tokens!1994 other!32))) tp!406729))))

(assert (= (and start!133148 res!650211) b!1435989))

(assert (= (and b!1435989 res!650210) b!1435984))

(assert (= (and b!1435984 res!650213) b!1435986))

(assert (= (and b!1435986 res!650212) b!1435987))

(assert (= b!1435985 b!1435988))

(assert (= start!133148 b!1435985))

(assert (= b!1435983 b!1435990))

(assert (= start!133148 b!1435983))

(declare-fun m!1641661 () Bool)

(assert (=> b!1435989 m!1641661))

(declare-fun m!1641663 () Bool)

(assert (=> b!1435989 m!1641663))

(declare-fun m!1641665 () Bool)

(assert (=> b!1435989 m!1641665))

(declare-fun m!1641667 () Bool)

(assert (=> b!1435986 m!1641667))

(assert (=> b!1435986 m!1641667))

(declare-fun m!1641669 () Bool)

(assert (=> b!1435986 m!1641669))

(declare-fun m!1641671 () Bool)

(assert (=> b!1435987 m!1641671))

(declare-fun m!1641673 () Bool)

(assert (=> b!1435987 m!1641673))

(declare-fun m!1641675 () Bool)

(assert (=> b!1435987 m!1641675))

(declare-fun m!1641677 () Bool)

(assert (=> start!133148 m!1641677))

(declare-fun m!1641679 () Bool)

(assert (=> start!133148 m!1641679))

(declare-fun m!1641681 () Bool)

(assert (=> b!1435983 m!1641681))

(declare-fun m!1641683 () Bool)

(assert (=> b!1435984 m!1641683))

(declare-fun m!1641685 () Bool)

(assert (=> b!1435985 m!1641685))

(declare-fun m!1641687 () Bool)

(assert (=> b!1435990 m!1641687))

(declare-fun m!1641689 () Bool)

(assert (=> b!1435988 m!1641689))

(check-sat (not start!133148) (not b!1435987) (not b!1435985) (not b!1435984) (not b!1435983) (not b!1435990) (not b!1435989) (not b!1435988) (not b!1435986))
(check-sat)
(get-model)

(declare-fun d!413664 () Bool)

(declare-fun lt!490865 () Bool)

(assert (=> d!413664 (= lt!490865 (isEmpty!9295 (list!5945 (tokens!1994 thiss!10022))))))

(declare-fun isEmpty!9298 (Conc!5085) Bool)

(assert (=> d!413664 (= lt!490865 (isEmpty!9298 (c!236048 (tokens!1994 thiss!10022))))))

(assert (=> d!413664 (= (isEmpty!9294 (tokens!1994 thiss!10022)) lt!490865)))

(declare-fun bs!341138 () Bool)

(assert (= bs!341138 d!413664))

(assert (=> bs!341138 m!1641667))

(assert (=> bs!341138 m!1641667))

(assert (=> bs!341138 m!1641669))

(declare-fun m!1641709 () Bool)

(assert (=> bs!341138 m!1641709))

(assert (=> b!1435984 d!413664))

(declare-fun d!413666 () Bool)

(declare-fun lt!490866 () Bool)

(assert (=> d!413666 (= lt!490866 (isEmpty!9295 (list!5945 (tokens!1994 other!32))))))

(assert (=> d!413666 (= lt!490866 (isEmpty!9298 (c!236048 (tokens!1994 other!32))))))

(assert (=> d!413666 (= (isEmpty!9294 (tokens!1994 other!32)) lt!490866)))

(declare-fun bs!341139 () Bool)

(assert (= bs!341139 d!413666))

(assert (=> bs!341139 m!1641673))

(assert (=> bs!341139 m!1641673))

(declare-fun m!1641711 () Bool)

(assert (=> bs!341139 m!1641711))

(declare-fun m!1641713 () Bool)

(assert (=> bs!341139 m!1641713))

(assert (=> b!1435989 d!413666))

(declare-fun d!413668 () Bool)

(declare-fun e!916671 () Bool)

(assert (=> d!413668 e!916671))

(declare-fun res!650252 () Bool)

(assert (=> d!413668 (=> (not res!650252) (not e!916671))))

(declare-datatypes ((LexerInterface!2288 0))(
  ( (LexerInterfaceExt!2285 (__x!9232 Int)) (Lexer!2286) )
))
(declare-fun rulesInvariant!2126 (LexerInterface!2288 List!15023) Bool)

(assert (=> d!413668 (= res!650252 (rulesInvariant!2126 Lexer!2286 (rules!11422 thiss!10022)))))

(declare-fun Unit!23025 () Unit!23021)

(assert (=> d!413668 (= (lemmaInvariant!325 thiss!10022) Unit!23025)))

(declare-fun b!1436067 () Bool)

(declare-fun res!650253 () Bool)

(assert (=> b!1436067 (=> (not res!650253) (not e!916671))))

(declare-fun rulesProduceEachTokenIndividually!844 (LexerInterface!2288 List!15023 BalanceConc!10110) Bool)

(assert (=> b!1436067 (= res!650253 (rulesProduceEachTokenIndividually!844 Lexer!2286 (rules!11422 thiss!10022) (tokens!1994 thiss!10022)))))

(declare-fun b!1436068 () Bool)

(declare-fun separableTokens!228 (LexerInterface!2288 BalanceConc!10110 List!15023) Bool)

(assert (=> b!1436068 (= e!916671 (separableTokens!228 Lexer!2286 (tokens!1994 thiss!10022) (rules!11422 thiss!10022)))))

(assert (= (and d!413668 res!650252) b!1436067))

(assert (= (and b!1436067 res!650253) b!1436068))

(declare-fun m!1641771 () Bool)

(assert (=> d!413668 m!1641771))

(declare-fun m!1641773 () Bool)

(assert (=> b!1436067 m!1641773))

(declare-fun m!1641775 () Bool)

(assert (=> b!1436068 m!1641775))

(assert (=> b!1435989 d!413668))

(declare-fun d!413686 () Bool)

(declare-fun e!916672 () Bool)

(assert (=> d!413686 e!916672))

(declare-fun res!650254 () Bool)

(assert (=> d!413686 (=> (not res!650254) (not e!916672))))

(assert (=> d!413686 (= res!650254 (rulesInvariant!2126 Lexer!2286 (rules!11422 other!32)))))

(declare-fun Unit!23026 () Unit!23021)

(assert (=> d!413686 (= (lemmaInvariant!325 other!32) Unit!23026)))

(declare-fun b!1436069 () Bool)

(declare-fun res!650255 () Bool)

(assert (=> b!1436069 (=> (not res!650255) (not e!916672))))

(assert (=> b!1436069 (= res!650255 (rulesProduceEachTokenIndividually!844 Lexer!2286 (rules!11422 other!32) (tokens!1994 other!32)))))

(declare-fun b!1436070 () Bool)

(assert (=> b!1436070 (= e!916672 (separableTokens!228 Lexer!2286 (tokens!1994 other!32) (rules!11422 other!32)))))

(assert (= (and d!413686 res!650254) b!1436069))

(assert (= (and b!1436069 res!650255) b!1436070))

(declare-fun m!1641777 () Bool)

(assert (=> d!413686 m!1641777))

(declare-fun m!1641779 () Bool)

(assert (=> b!1436069 m!1641779))

(declare-fun m!1641781 () Bool)

(assert (=> b!1436070 m!1641781))

(assert (=> b!1435989 d!413686))

(declare-fun d!413688 () Bool)

(declare-fun res!650262 () Bool)

(declare-fun e!916675 () Bool)

(assert (=> d!413688 (=> (not res!650262) (not e!916675))))

(declare-fun isEmpty!9299 (List!15023) Bool)

(assert (=> d!413688 (= res!650262 (not (isEmpty!9299 (rules!11422 thiss!10022))))))

(assert (=> d!413688 (= (inv!19881 thiss!10022) e!916675)))

(declare-fun b!1436077 () Bool)

(declare-fun res!650263 () Bool)

(assert (=> b!1436077 (=> (not res!650263) (not e!916675))))

(assert (=> b!1436077 (= res!650263 (rulesInvariant!2126 Lexer!2286 (rules!11422 thiss!10022)))))

(declare-fun b!1436078 () Bool)

(declare-fun res!650264 () Bool)

(assert (=> b!1436078 (=> (not res!650264) (not e!916675))))

(assert (=> b!1436078 (= res!650264 (rulesProduceEachTokenIndividually!844 Lexer!2286 (rules!11422 thiss!10022) (tokens!1994 thiss!10022)))))

(declare-fun b!1436079 () Bool)

(assert (=> b!1436079 (= e!916675 (separableTokens!228 Lexer!2286 (tokens!1994 thiss!10022) (rules!11422 thiss!10022)))))

(assert (= (and d!413688 res!650262) b!1436077))

(assert (= (and b!1436077 res!650263) b!1436078))

(assert (= (and b!1436078 res!650264) b!1436079))

(declare-fun m!1641783 () Bool)

(assert (=> d!413688 m!1641783))

(assert (=> b!1436077 m!1641771))

(assert (=> b!1436078 m!1641773))

(assert (=> b!1436079 m!1641775))

(assert (=> start!133148 d!413688))

(declare-fun d!413690 () Bool)

(declare-fun res!650265 () Bool)

(declare-fun e!916676 () Bool)

(assert (=> d!413690 (=> (not res!650265) (not e!916676))))

(assert (=> d!413690 (= res!650265 (not (isEmpty!9299 (rules!11422 other!32))))))

(assert (=> d!413690 (= (inv!19881 other!32) e!916676)))

(declare-fun b!1436080 () Bool)

(declare-fun res!650266 () Bool)

(assert (=> b!1436080 (=> (not res!650266) (not e!916676))))

(assert (=> b!1436080 (= res!650266 (rulesInvariant!2126 Lexer!2286 (rules!11422 other!32)))))

(declare-fun b!1436081 () Bool)

(declare-fun res!650267 () Bool)

(assert (=> b!1436081 (=> (not res!650267) (not e!916676))))

(assert (=> b!1436081 (= res!650267 (rulesProduceEachTokenIndividually!844 Lexer!2286 (rules!11422 other!32) (tokens!1994 other!32)))))

(declare-fun b!1436082 () Bool)

(assert (=> b!1436082 (= e!916676 (separableTokens!228 Lexer!2286 (tokens!1994 other!32) (rules!11422 other!32)))))

(assert (= (and d!413690 res!650265) b!1436080))

(assert (= (and b!1436080 res!650266) b!1436081))

(assert (= (and b!1436081 res!650267) b!1436082))

(declare-fun m!1641785 () Bool)

(assert (=> d!413690 m!1641785))

(assert (=> b!1436080 m!1641777))

(assert (=> b!1436081 m!1641779))

(assert (=> b!1436082 m!1641781))

(assert (=> start!133148 d!413690))

(declare-fun d!413692 () Bool)

(declare-fun c!236058 () Bool)

(get-info :version)

(assert (=> d!413692 (= c!236058 ((_ is Node!5085) (c!236048 (tokens!1994 other!32))))))

(declare-fun e!916681 () Bool)

(assert (=> d!413692 (= (inv!19880 (c!236048 (tokens!1994 other!32))) e!916681)))

(declare-fun b!1436089 () Bool)

(declare-fun inv!19886 (Conc!5085) Bool)

(assert (=> b!1436089 (= e!916681 (inv!19886 (c!236048 (tokens!1994 other!32))))))

(declare-fun b!1436090 () Bool)

(declare-fun e!916682 () Bool)

(assert (=> b!1436090 (= e!916681 e!916682)))

(declare-fun res!650270 () Bool)

(assert (=> b!1436090 (= res!650270 (not ((_ is Leaf!7601) (c!236048 (tokens!1994 other!32)))))))

(assert (=> b!1436090 (=> res!650270 e!916682)))

(declare-fun b!1436091 () Bool)

(declare-fun inv!19887 (Conc!5085) Bool)

(assert (=> b!1436091 (= e!916682 (inv!19887 (c!236048 (tokens!1994 other!32))))))

(assert (= (and d!413692 c!236058) b!1436089))

(assert (= (and d!413692 (not c!236058)) b!1436090))

(assert (= (and b!1436090 (not res!650270)) b!1436091))

(declare-fun m!1641787 () Bool)

(assert (=> b!1436089 m!1641787))

(declare-fun m!1641789 () Bool)

(assert (=> b!1436091 m!1641789))

(assert (=> b!1435990 d!413692))

(declare-fun d!413694 () Bool)

(declare-fun isBalanced!1508 (Conc!5085) Bool)

(assert (=> d!413694 (= (inv!19879 (tokens!1994 thiss!10022)) (isBalanced!1508 (c!236048 (tokens!1994 thiss!10022))))))

(declare-fun bs!341143 () Bool)

(assert (= bs!341143 d!413694))

(declare-fun m!1641791 () Bool)

(assert (=> bs!341143 m!1641791))

(assert (=> b!1435985 d!413694))

(declare-fun d!413696 () Bool)

(assert (=> d!413696 (= (isEmpty!9295 (list!5945 (tokens!1994 thiss!10022))) ((_ is Nil!14956) (list!5945 (tokens!1994 thiss!10022))))))

(assert (=> b!1435986 d!413696))

(declare-fun d!413698 () Bool)

(declare-fun list!5947 (Conc!5085) List!15022)

(assert (=> d!413698 (= (list!5945 (tokens!1994 thiss!10022)) (list!5947 (c!236048 (tokens!1994 thiss!10022))))))

(declare-fun bs!341144 () Bool)

(assert (= bs!341144 d!413698))

(declare-fun m!1641793 () Bool)

(assert (=> bs!341144 m!1641793))

(assert (=> b!1435986 d!413698))

(declare-fun b!1436101 () Bool)

(declare-fun e!916688 () List!15022)

(assert (=> b!1436101 (= e!916688 (Cons!14956 (h!20357 lt!490856) (++!4008 (t!127429 lt!490856) lt!490855)))))

(declare-fun d!413700 () Bool)

(declare-fun e!916687 () Bool)

(assert (=> d!413700 e!916687))

(declare-fun res!650276 () Bool)

(assert (=> d!413700 (=> (not res!650276) (not e!916687))))

(declare-fun lt!490872 () List!15022)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2207 (List!15022) (InoxSet Token!4920))

(assert (=> d!413700 (= res!650276 (= (content!2207 lt!490872) ((_ map or) (content!2207 lt!490856) (content!2207 lt!490855))))))

(assert (=> d!413700 (= lt!490872 e!916688)))

(declare-fun c!236061 () Bool)

(assert (=> d!413700 (= c!236061 ((_ is Nil!14956) lt!490856))))

(assert (=> d!413700 (= (++!4008 lt!490856 lt!490855) lt!490872)))

(declare-fun b!1436102 () Bool)

(declare-fun res!650275 () Bool)

(assert (=> b!1436102 (=> (not res!650275) (not e!916687))))

(declare-fun size!12253 (List!15022) Int)

(assert (=> b!1436102 (= res!650275 (= (size!12253 lt!490872) (+ (size!12253 lt!490856) (size!12253 lt!490855))))))

(declare-fun b!1436103 () Bool)

(assert (=> b!1436103 (= e!916687 (or (not (= lt!490855 Nil!14956)) (= lt!490872 lt!490856)))))

(declare-fun b!1436100 () Bool)

(assert (=> b!1436100 (= e!916688 lt!490855)))

(assert (= (and d!413700 c!236061) b!1436100))

(assert (= (and d!413700 (not c!236061)) b!1436101))

(assert (= (and d!413700 res!650276) b!1436102))

(assert (= (and b!1436102 res!650275) b!1436103))

(declare-fun m!1641795 () Bool)

(assert (=> b!1436101 m!1641795))

(declare-fun m!1641797 () Bool)

(assert (=> d!413700 m!1641797))

(declare-fun m!1641799 () Bool)

(assert (=> d!413700 m!1641799))

(declare-fun m!1641801 () Bool)

(assert (=> d!413700 m!1641801))

(declare-fun m!1641803 () Bool)

(assert (=> b!1436102 m!1641803))

(declare-fun m!1641805 () Bool)

(assert (=> b!1436102 m!1641805))

(declare-fun m!1641807 () Bool)

(assert (=> b!1436102 m!1641807))

(assert (=> b!1435987 d!413700))

(declare-fun d!413702 () Bool)

(assert (=> d!413702 (= (list!5945 (tokens!1994 other!32)) (list!5947 (c!236048 (tokens!1994 other!32))))))

(declare-fun bs!341145 () Bool)

(assert (= bs!341145 d!413702))

(declare-fun m!1641809 () Bool)

(assert (=> bs!341145 m!1641809))

(assert (=> b!1435987 d!413702))

(declare-fun d!413704 () Bool)

(assert (=> d!413704 (= (list!5945 (BalanceConc!10111 Empty!5085)) (list!5947 (c!236048 (BalanceConc!10111 Empty!5085))))))

(declare-fun bs!341146 () Bool)

(assert (= bs!341146 d!413704))

(declare-fun m!1641811 () Bool)

(assert (=> bs!341146 m!1641811))

(assert (=> b!1435987 d!413704))

(declare-fun d!413706 () Bool)

(declare-fun c!236062 () Bool)

(assert (=> d!413706 (= c!236062 ((_ is Node!5085) (c!236048 (tokens!1994 thiss!10022))))))

(declare-fun e!916689 () Bool)

(assert (=> d!413706 (= (inv!19880 (c!236048 (tokens!1994 thiss!10022))) e!916689)))

(declare-fun b!1436104 () Bool)

(assert (=> b!1436104 (= e!916689 (inv!19886 (c!236048 (tokens!1994 thiss!10022))))))

(declare-fun b!1436105 () Bool)

(declare-fun e!916690 () Bool)

(assert (=> b!1436105 (= e!916689 e!916690)))

(declare-fun res!650277 () Bool)

(assert (=> b!1436105 (= res!650277 (not ((_ is Leaf!7601) (c!236048 (tokens!1994 thiss!10022)))))))

(assert (=> b!1436105 (=> res!650277 e!916690)))

(declare-fun b!1436106 () Bool)

(assert (=> b!1436106 (= e!916690 (inv!19887 (c!236048 (tokens!1994 thiss!10022))))))

(assert (= (and d!413706 c!236062) b!1436104))

(assert (= (and d!413706 (not c!236062)) b!1436105))

(assert (= (and b!1436105 (not res!650277)) b!1436106))

(declare-fun m!1641813 () Bool)

(assert (=> b!1436104 m!1641813))

(declare-fun m!1641815 () Bool)

(assert (=> b!1436106 m!1641815))

(assert (=> b!1435988 d!413706))

(declare-fun d!413708 () Bool)

(assert (=> d!413708 (= (inv!19879 (tokens!1994 other!32)) (isBalanced!1508 (c!236048 (tokens!1994 other!32))))))

(declare-fun bs!341147 () Bool)

(assert (= bs!341147 d!413708))

(declare-fun m!1641817 () Bool)

(assert (=> bs!341147 m!1641817))

(assert (=> b!1435983 d!413708))

(declare-fun tp!406767 () Bool)

(declare-fun tp!406766 () Bool)

(declare-fun b!1436115 () Bool)

(declare-fun e!916696 () Bool)

(assert (=> b!1436115 (= e!916696 (and (inv!19880 (left!12738 (c!236048 (tokens!1994 other!32)))) tp!406766 (inv!19880 (right!13068 (c!236048 (tokens!1994 other!32)))) tp!406767))))

(declare-fun b!1436117 () Bool)

(declare-fun e!916695 () Bool)

(declare-fun tp!406765 () Bool)

(assert (=> b!1436117 (= e!916695 tp!406765)))

(declare-fun b!1436116 () Bool)

(declare-fun inv!19888 (IArray!10175) Bool)

(assert (=> b!1436116 (= e!916696 (and (inv!19888 (xs!7818 (c!236048 (tokens!1994 other!32)))) e!916695))))

(assert (=> b!1435990 (= tp!406729 (and (inv!19880 (c!236048 (tokens!1994 other!32))) e!916696))))

(assert (= (and b!1435990 ((_ is Node!5085) (c!236048 (tokens!1994 other!32)))) b!1436115))

(assert (= b!1436116 b!1436117))

(assert (= (and b!1435990 ((_ is Leaf!7601) (c!236048 (tokens!1994 other!32)))) b!1436116))

(declare-fun m!1641819 () Bool)

(assert (=> b!1436115 m!1641819))

(declare-fun m!1641821 () Bool)

(assert (=> b!1436115 m!1641821))

(declare-fun m!1641823 () Bool)

(assert (=> b!1436116 m!1641823))

(assert (=> b!1435990 m!1641687))

(declare-fun b!1436128 () Bool)

(declare-fun b_free!35599 () Bool)

(declare-fun b_next!36303 () Bool)

(assert (=> b!1436128 (= b_free!35599 (not b_next!36303))))

(declare-fun tp!406777 () Bool)

(declare-fun b_and!96567 () Bool)

(assert (=> b!1436128 (= tp!406777 b_and!96567)))

(declare-fun b_free!35601 () Bool)

(declare-fun b_next!36305 () Bool)

(assert (=> b!1436128 (= b_free!35601 (not b_next!36305))))

(declare-fun tp!406776 () Bool)

(declare-fun b_and!96569 () Bool)

(assert (=> b!1436128 (= tp!406776 b_and!96569)))

(declare-fun e!916707 () Bool)

(assert (=> b!1436128 (= e!916707 (and tp!406777 tp!406776))))

(declare-fun b!1436127 () Bool)

(declare-fun tp!406778 () Bool)

(declare-fun e!916708 () Bool)

(declare-fun inv!19875 (String!17851) Bool)

(declare-fun inv!19889 (TokenValueInjection!5098) Bool)

(assert (=> b!1436127 (= e!916708 (and tp!406778 (inv!19875 (tag!2891 (h!20358 (rules!11422 thiss!10022)))) (inv!19889 (transformation!2629 (h!20358 (rules!11422 thiss!10022)))) e!916707))))

(declare-fun b!1436126 () Bool)

(declare-fun e!916706 () Bool)

(declare-fun tp!406779 () Bool)

(assert (=> b!1436126 (= e!916706 (and e!916708 tp!406779))))

(assert (=> b!1435985 (= tp!406730 e!916706)))

(assert (= b!1436127 b!1436128))

(assert (= b!1436126 b!1436127))

(assert (= (and b!1435985 ((_ is Cons!14957) (rules!11422 thiss!10022))) b!1436126))

(declare-fun m!1641825 () Bool)

(assert (=> b!1436127 m!1641825))

(declare-fun m!1641827 () Bool)

(assert (=> b!1436127 m!1641827))

(declare-fun tp!406781 () Bool)

(declare-fun b!1436129 () Bool)

(declare-fun e!916710 () Bool)

(declare-fun tp!406782 () Bool)

(assert (=> b!1436129 (= e!916710 (and (inv!19880 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) tp!406781 (inv!19880 (right!13068 (c!236048 (tokens!1994 thiss!10022)))) tp!406782))))

(declare-fun b!1436131 () Bool)

(declare-fun e!916709 () Bool)

(declare-fun tp!406780 () Bool)

(assert (=> b!1436131 (= e!916709 tp!406780)))

(declare-fun b!1436130 () Bool)

(assert (=> b!1436130 (= e!916710 (and (inv!19888 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))) e!916709))))

(assert (=> b!1435988 (= tp!406727 (and (inv!19880 (c!236048 (tokens!1994 thiss!10022))) e!916710))))

(assert (= (and b!1435988 ((_ is Node!5085) (c!236048 (tokens!1994 thiss!10022)))) b!1436129))

(assert (= b!1436130 b!1436131))

(assert (= (and b!1435988 ((_ is Leaf!7601) (c!236048 (tokens!1994 thiss!10022)))) b!1436130))

(declare-fun m!1641829 () Bool)

(assert (=> b!1436129 m!1641829))

(declare-fun m!1641831 () Bool)

(assert (=> b!1436129 m!1641831))

(declare-fun m!1641833 () Bool)

(assert (=> b!1436130 m!1641833))

(assert (=> b!1435988 m!1641689))

(declare-fun b!1436134 () Bool)

(declare-fun b_free!35603 () Bool)

(declare-fun b_next!36307 () Bool)

(assert (=> b!1436134 (= b_free!35603 (not b_next!36307))))

(declare-fun tp!406784 () Bool)

(declare-fun b_and!96571 () Bool)

(assert (=> b!1436134 (= tp!406784 b_and!96571)))

(declare-fun b_free!35605 () Bool)

(declare-fun b_next!36309 () Bool)

(assert (=> b!1436134 (= b_free!35605 (not b_next!36309))))

(declare-fun tp!406783 () Bool)

(declare-fun b_and!96573 () Bool)

(assert (=> b!1436134 (= tp!406783 b_and!96573)))

(declare-fun e!916713 () Bool)

(assert (=> b!1436134 (= e!916713 (and tp!406784 tp!406783))))

(declare-fun e!916714 () Bool)

(declare-fun tp!406785 () Bool)

(declare-fun b!1436133 () Bool)

(assert (=> b!1436133 (= e!916714 (and tp!406785 (inv!19875 (tag!2891 (h!20358 (rules!11422 other!32)))) (inv!19889 (transformation!2629 (h!20358 (rules!11422 other!32)))) e!916713))))

(declare-fun b!1436132 () Bool)

(declare-fun e!916712 () Bool)

(declare-fun tp!406786 () Bool)

(assert (=> b!1436132 (= e!916712 (and e!916714 tp!406786))))

(assert (=> b!1435983 (= tp!406728 e!916712)))

(assert (= b!1436133 b!1436134))

(assert (= b!1436132 b!1436133))

(assert (= (and b!1435983 ((_ is Cons!14957) (rules!11422 other!32))) b!1436132))

(declare-fun m!1641835 () Bool)

(assert (=> b!1436133 m!1641835))

(declare-fun m!1641837 () Bool)

(assert (=> b!1436133 m!1641837))

(check-sat (not b!1436130) (not b!1436101) (not b!1436129) (not d!413668) (not b!1436133) (not d!413708) (not d!413700) (not b!1435990) (not b!1436106) (not b_next!36303) (not b_next!36305) (not b!1436080) b_and!96571 (not b_next!36307) (not d!413686) b_and!96569 (not d!413694) (not d!413664) b_and!96573 (not b!1436115) (not b!1436069) (not d!413704) (not b_next!36309) (not b!1436127) (not d!413690) (not b!1436081) (not b!1436067) (not d!413688) (not b!1436070) (not b!1436089) (not b!1436116) (not b!1436078) (not b!1436126) (not d!413698) (not b!1435988) (not b!1436117) (not b!1436077) (not d!413702) (not b!1436132) (not b!1436091) (not d!413666) (not b!1436102) (not b!1436104) b_and!96567 (not b!1436079) (not b!1436068) (not b!1436082) (not b!1436131))
(check-sat b_and!96569 b_and!96573 (not b_next!36309) (not b_next!36303) (not b_next!36305) b_and!96567 b_and!96571 (not b_next!36307))
(get-model)

(declare-fun d!413720 () Bool)

(declare-fun res!650309 () Bool)

(declare-fun e!916732 () Bool)

(assert (=> d!413720 (=> (not res!650309) (not e!916732))))

(declare-fun list!5949 (IArray!10175) List!15022)

(assert (=> d!413720 (= res!650309 (<= (size!12253 (list!5949 (xs!7818 (c!236048 (tokens!1994 other!32))))) 512))))

(assert (=> d!413720 (= (inv!19887 (c!236048 (tokens!1994 other!32))) e!916732)))

(declare-fun b!1436172 () Bool)

(declare-fun res!650310 () Bool)

(assert (=> b!1436172 (=> (not res!650310) (not e!916732))))

(assert (=> b!1436172 (= res!650310 (= (csize!10401 (c!236048 (tokens!1994 other!32))) (size!12253 (list!5949 (xs!7818 (c!236048 (tokens!1994 other!32)))))))))

(declare-fun b!1436173 () Bool)

(assert (=> b!1436173 (= e!916732 (and (> (csize!10401 (c!236048 (tokens!1994 other!32))) 0) (<= (csize!10401 (c!236048 (tokens!1994 other!32))) 512)))))

(assert (= (and d!413720 res!650309) b!1436172))

(assert (= (and b!1436172 res!650310) b!1436173))

(declare-fun m!1641867 () Bool)

(assert (=> d!413720 m!1641867))

(assert (=> d!413720 m!1641867))

(declare-fun m!1641869 () Bool)

(assert (=> d!413720 m!1641869))

(assert (=> b!1436172 m!1641867))

(assert (=> b!1436172 m!1641867))

(assert (=> b!1436172 m!1641869))

(assert (=> b!1436091 d!413720))

(declare-fun d!413722 () Bool)

(declare-fun res!650313 () Bool)

(declare-fun e!916735 () Bool)

(assert (=> d!413722 (=> (not res!650313) (not e!916735))))

(declare-fun rulesValid!962 (LexerInterface!2288 List!15023) Bool)

(assert (=> d!413722 (= res!650313 (rulesValid!962 Lexer!2286 (rules!11422 thiss!10022)))))

(assert (=> d!413722 (= (rulesInvariant!2126 Lexer!2286 (rules!11422 thiss!10022)) e!916735)))

(declare-fun b!1436176 () Bool)

(declare-datatypes ((List!15025 0))(
  ( (Nil!14959) (Cons!14959 (h!20360 String!17851) (t!127446 List!15025)) )
))
(declare-fun noDuplicateTag!962 (LexerInterface!2288 List!15023 List!15025) Bool)

(assert (=> b!1436176 (= e!916735 (noDuplicateTag!962 Lexer!2286 (rules!11422 thiss!10022) Nil!14959))))

(assert (= (and d!413722 res!650313) b!1436176))

(declare-fun m!1641871 () Bool)

(assert (=> d!413722 m!1641871))

(declare-fun m!1641873 () Bool)

(assert (=> b!1436176 m!1641873))

(assert (=> d!413668 d!413722))

(assert (=> b!1436077 d!413722))

(assert (=> d!413664 d!413696))

(assert (=> d!413664 d!413698))

(declare-fun d!413724 () Bool)

(declare-fun lt!490880 () Bool)

(assert (=> d!413724 (= lt!490880 (isEmpty!9295 (list!5947 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun size!12255 (Conc!5085) Int)

(assert (=> d!413724 (= lt!490880 (= (size!12255 (c!236048 (tokens!1994 thiss!10022))) 0))))

(assert (=> d!413724 (= (isEmpty!9298 (c!236048 (tokens!1994 thiss!10022))) lt!490880)))

(declare-fun bs!341149 () Bool)

(assert (= bs!341149 d!413724))

(assert (=> bs!341149 m!1641793))

(assert (=> bs!341149 m!1641793))

(declare-fun m!1641875 () Bool)

(assert (=> bs!341149 m!1641875))

(declare-fun m!1641877 () Bool)

(assert (=> bs!341149 m!1641877))

(assert (=> d!413664 d!413724))

(declare-fun b!1436288 () Bool)

(declare-fun e!916804 () Bool)

(assert (=> b!1436288 (= e!916804 true)))

(declare-fun b!1436287 () Bool)

(declare-fun e!916803 () Bool)

(assert (=> b!1436287 (= e!916803 e!916804)))

(declare-fun b!1436286 () Bool)

(declare-fun e!916802 () Bool)

(assert (=> b!1436286 (= e!916802 e!916803)))

(declare-fun d!413726 () Bool)

(assert (=> d!413726 e!916802))

(assert (= b!1436287 b!1436288))

(assert (= b!1436286 b!1436287))

(assert (= (and d!413726 ((_ is Cons!14957) (rules!11422 thiss!10022))) b!1436286))

(declare-fun order!8987 () Int)

(declare-fun order!8985 () Int)

(declare-fun lambda!62838 () Int)

(declare-fun dynLambda!6811 (Int Int) Int)

(declare-fun dynLambda!6812 (Int Int) Int)

(assert (=> b!1436288 (< (dynLambda!6811 order!8985 (toValue!3932 (transformation!2629 (h!20358 (rules!11422 thiss!10022))))) (dynLambda!6812 order!8987 lambda!62838))))

(declare-fun order!8989 () Int)

(declare-fun dynLambda!6813 (Int Int) Int)

(assert (=> b!1436288 (< (dynLambda!6813 order!8989 (toChars!3791 (transformation!2629 (h!20358 (rules!11422 thiss!10022))))) (dynLambda!6812 order!8987 lambda!62838))))

(assert (=> d!413726 true))

(declare-fun e!916788 () Bool)

(assert (=> d!413726 e!916788))

(declare-fun res!650357 () Bool)

(assert (=> d!413726 (=> (not res!650357) (not e!916788))))

(declare-fun lt!490887 () Bool)

(declare-fun forall!3673 (List!15022 Int) Bool)

(assert (=> d!413726 (= res!650357 (= lt!490887 (forall!3673 (list!5945 (tokens!1994 thiss!10022)) lambda!62838)))))

(declare-fun forall!3674 (BalanceConc!10110 Int) Bool)

(assert (=> d!413726 (= lt!490887 (forall!3674 (tokens!1994 thiss!10022) lambda!62838))))

(assert (=> d!413726 (not (isEmpty!9299 (rules!11422 thiss!10022)))))

(assert (=> d!413726 (= (rulesProduceEachTokenIndividually!844 Lexer!2286 (rules!11422 thiss!10022) (tokens!1994 thiss!10022)) lt!490887)))

(declare-fun b!1436264 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!724 (LexerInterface!2288 List!15023 List!15022) Bool)

(assert (=> b!1436264 (= e!916788 (= lt!490887 (rulesProduceEachTokenIndividuallyList!724 Lexer!2286 (rules!11422 thiss!10022) (list!5945 (tokens!1994 thiss!10022)))))))

(assert (= (and d!413726 res!650357) b!1436264))

(assert (=> d!413726 m!1641667))

(assert (=> d!413726 m!1641667))

(declare-fun m!1642011 () Bool)

(assert (=> d!413726 m!1642011))

(declare-fun m!1642013 () Bool)

(assert (=> d!413726 m!1642013))

(assert (=> d!413726 m!1641783))

(assert (=> b!1436264 m!1641667))

(assert (=> b!1436264 m!1641667))

(declare-fun m!1642015 () Bool)

(assert (=> b!1436264 m!1642015))

(assert (=> b!1436078 d!413726))

(declare-fun d!413792 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!116 (LexerInterface!2288 BalanceConc!10110 Int List!15023) Bool)

(assert (=> d!413792 (= (separableTokens!228 Lexer!2286 (tokens!1994 thiss!10022) (rules!11422 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!116 Lexer!2286 (tokens!1994 thiss!10022) 0 (rules!11422 thiss!10022)))))

(declare-fun bs!341156 () Bool)

(assert (= bs!341156 d!413792))

(declare-fun m!1642053 () Bool)

(assert (=> bs!341156 m!1642053))

(assert (=> b!1436079 d!413792))

(declare-fun b!1436343 () Bool)

(declare-fun e!916848 () List!15022)

(assert (=> b!1436343 (= e!916848 (Cons!14956 (h!20357 (t!127429 lt!490856)) (++!4008 (t!127429 (t!127429 lt!490856)) lt!490855)))))

(declare-fun d!413794 () Bool)

(declare-fun e!916847 () Bool)

(assert (=> d!413794 e!916847))

(declare-fun res!650359 () Bool)

(assert (=> d!413794 (=> (not res!650359) (not e!916847))))

(declare-fun lt!490893 () List!15022)

(assert (=> d!413794 (= res!650359 (= (content!2207 lt!490893) ((_ map or) (content!2207 (t!127429 lt!490856)) (content!2207 lt!490855))))))

(assert (=> d!413794 (= lt!490893 e!916848)))

(declare-fun c!236088 () Bool)

(assert (=> d!413794 (= c!236088 ((_ is Nil!14956) (t!127429 lt!490856)))))

(assert (=> d!413794 (= (++!4008 (t!127429 lt!490856) lt!490855) lt!490893)))

(declare-fun b!1436344 () Bool)

(declare-fun res!650358 () Bool)

(assert (=> b!1436344 (=> (not res!650358) (not e!916847))))

(assert (=> b!1436344 (= res!650358 (= (size!12253 lt!490893) (+ (size!12253 (t!127429 lt!490856)) (size!12253 lt!490855))))))

(declare-fun b!1436345 () Bool)

(assert (=> b!1436345 (= e!916847 (or (not (= lt!490855 Nil!14956)) (= lt!490893 (t!127429 lt!490856))))))

(declare-fun b!1436342 () Bool)

(assert (=> b!1436342 (= e!916848 lt!490855)))

(assert (= (and d!413794 c!236088) b!1436342))

(assert (= (and d!413794 (not c!236088)) b!1436343))

(assert (= (and d!413794 res!650359) b!1436344))

(assert (= (and b!1436344 res!650358) b!1436345))

(declare-fun m!1642055 () Bool)

(assert (=> b!1436343 m!1642055))

(declare-fun m!1642057 () Bool)

(assert (=> d!413794 m!1642057))

(declare-fun m!1642059 () Bool)

(assert (=> d!413794 m!1642059))

(assert (=> d!413794 m!1641801))

(declare-fun m!1642061 () Bool)

(assert (=> b!1436344 m!1642061))

(declare-fun m!1642063 () Bool)

(assert (=> b!1436344 m!1642063))

(assert (=> b!1436344 m!1641807))

(assert (=> b!1436101 d!413794))

(declare-fun b!1436358 () Bool)

(declare-fun e!916854 () Bool)

(assert (=> b!1436358 (= e!916854 (not (isEmpty!9298 (right!13068 (c!236048 (tokens!1994 other!32))))))))

(declare-fun b!1436359 () Bool)

(declare-fun res!650372 () Bool)

(assert (=> b!1436359 (=> (not res!650372) (not e!916854))))

(assert (=> b!1436359 (= res!650372 (not (isEmpty!9298 (left!12738 (c!236048 (tokens!1994 other!32))))))))

(declare-fun b!1436360 () Bool)

(declare-fun res!650374 () Bool)

(assert (=> b!1436360 (=> (not res!650374) (not e!916854))))

(declare-fun height!744 (Conc!5085) Int)

(assert (=> b!1436360 (= res!650374 (<= (- (height!744 (left!12738 (c!236048 (tokens!1994 other!32)))) (height!744 (right!13068 (c!236048 (tokens!1994 other!32))))) 1))))

(declare-fun d!413796 () Bool)

(declare-fun res!650373 () Bool)

(declare-fun e!916853 () Bool)

(assert (=> d!413796 (=> res!650373 e!916853)))

(assert (=> d!413796 (= res!650373 (not ((_ is Node!5085) (c!236048 (tokens!1994 other!32)))))))

(assert (=> d!413796 (= (isBalanced!1508 (c!236048 (tokens!1994 other!32))) e!916853)))

(declare-fun b!1436361 () Bool)

(declare-fun res!650375 () Bool)

(assert (=> b!1436361 (=> (not res!650375) (not e!916854))))

(assert (=> b!1436361 (= res!650375 (isBalanced!1508 (left!12738 (c!236048 (tokens!1994 other!32)))))))

(declare-fun b!1436362 () Bool)

(declare-fun res!650376 () Bool)

(assert (=> b!1436362 (=> (not res!650376) (not e!916854))))

(assert (=> b!1436362 (= res!650376 (isBalanced!1508 (right!13068 (c!236048 (tokens!1994 other!32)))))))

(declare-fun b!1436363 () Bool)

(assert (=> b!1436363 (= e!916853 e!916854)))

(declare-fun res!650377 () Bool)

(assert (=> b!1436363 (=> (not res!650377) (not e!916854))))

(assert (=> b!1436363 (= res!650377 (<= (- 1) (- (height!744 (left!12738 (c!236048 (tokens!1994 other!32)))) (height!744 (right!13068 (c!236048 (tokens!1994 other!32)))))))))

(assert (= (and d!413796 (not res!650373)) b!1436363))

(assert (= (and b!1436363 res!650377) b!1436360))

(assert (= (and b!1436360 res!650374) b!1436361))

(assert (= (and b!1436361 res!650375) b!1436362))

(assert (= (and b!1436362 res!650376) b!1436359))

(assert (= (and b!1436359 res!650372) b!1436358))

(declare-fun m!1642065 () Bool)

(assert (=> b!1436361 m!1642065))

(declare-fun m!1642067 () Bool)

(assert (=> b!1436362 m!1642067))

(declare-fun m!1642069 () Bool)

(assert (=> b!1436360 m!1642069))

(declare-fun m!1642071 () Bool)

(assert (=> b!1436360 m!1642071))

(assert (=> b!1436363 m!1642069))

(assert (=> b!1436363 m!1642071))

(declare-fun m!1642073 () Bool)

(assert (=> b!1436359 m!1642073))

(declare-fun m!1642075 () Bool)

(assert (=> b!1436358 m!1642075))

(assert (=> d!413708 d!413796))

(declare-fun d!413798 () Bool)

(declare-fun lt!490896 () Int)

(assert (=> d!413798 (>= lt!490896 0)))

(declare-fun e!916857 () Int)

(assert (=> d!413798 (= lt!490896 e!916857)))

(declare-fun c!236091 () Bool)

(assert (=> d!413798 (= c!236091 ((_ is Nil!14956) lt!490872))))

(assert (=> d!413798 (= (size!12253 lt!490872) lt!490896)))

(declare-fun b!1436368 () Bool)

(assert (=> b!1436368 (= e!916857 0)))

(declare-fun b!1436369 () Bool)

(assert (=> b!1436369 (= e!916857 (+ 1 (size!12253 (t!127429 lt!490872))))))

(assert (= (and d!413798 c!236091) b!1436368))

(assert (= (and d!413798 (not c!236091)) b!1436369))

(declare-fun m!1642077 () Bool)

(assert (=> b!1436369 m!1642077))

(assert (=> b!1436102 d!413798))

(declare-fun d!413800 () Bool)

(declare-fun lt!490897 () Int)

(assert (=> d!413800 (>= lt!490897 0)))

(declare-fun e!916858 () Int)

(assert (=> d!413800 (= lt!490897 e!916858)))

(declare-fun c!236092 () Bool)

(assert (=> d!413800 (= c!236092 ((_ is Nil!14956) lt!490856))))

(assert (=> d!413800 (= (size!12253 lt!490856) lt!490897)))

(declare-fun b!1436370 () Bool)

(assert (=> b!1436370 (= e!916858 0)))

(declare-fun b!1436371 () Bool)

(assert (=> b!1436371 (= e!916858 (+ 1 (size!12253 (t!127429 lt!490856))))))

(assert (= (and d!413800 c!236092) b!1436370))

(assert (= (and d!413800 (not c!236092)) b!1436371))

(assert (=> b!1436371 m!1642063))

(assert (=> b!1436102 d!413800))

(declare-fun d!413802 () Bool)

(declare-fun lt!490898 () Int)

(assert (=> d!413802 (>= lt!490898 0)))

(declare-fun e!916859 () Int)

(assert (=> d!413802 (= lt!490898 e!916859)))

(declare-fun c!236093 () Bool)

(assert (=> d!413802 (= c!236093 ((_ is Nil!14956) lt!490855))))

(assert (=> d!413802 (= (size!12253 lt!490855) lt!490898)))

(declare-fun b!1436372 () Bool)

(assert (=> b!1436372 (= e!916859 0)))

(declare-fun b!1436373 () Bool)

(assert (=> b!1436373 (= e!916859 (+ 1 (size!12253 (t!127429 lt!490855))))))

(assert (= (and d!413802 c!236093) b!1436372))

(assert (= (and d!413802 (not c!236093)) b!1436373))

(declare-fun m!1642079 () Bool)

(assert (=> b!1436373 m!1642079))

(assert (=> b!1436102 d!413802))

(declare-fun b!1436382 () Bool)

(declare-fun e!916864 () List!15022)

(assert (=> b!1436382 (= e!916864 Nil!14956)))

(declare-fun d!413804 () Bool)

(declare-fun c!236098 () Bool)

(assert (=> d!413804 (= c!236098 ((_ is Empty!5085) (c!236048 (BalanceConc!10111 Empty!5085))))))

(assert (=> d!413804 (= (list!5947 (c!236048 (BalanceConc!10111 Empty!5085))) e!916864)))

(declare-fun b!1436384 () Bool)

(declare-fun e!916865 () List!15022)

(assert (=> b!1436384 (= e!916865 (list!5949 (xs!7818 (c!236048 (BalanceConc!10111 Empty!5085)))))))

(declare-fun b!1436385 () Bool)

(assert (=> b!1436385 (= e!916865 (++!4008 (list!5947 (left!12738 (c!236048 (BalanceConc!10111 Empty!5085)))) (list!5947 (right!13068 (c!236048 (BalanceConc!10111 Empty!5085))))))))

(declare-fun b!1436383 () Bool)

(assert (=> b!1436383 (= e!916864 e!916865)))

(declare-fun c!236099 () Bool)

(assert (=> b!1436383 (= c!236099 ((_ is Leaf!7601) (c!236048 (BalanceConc!10111 Empty!5085))))))

(assert (= (and d!413804 c!236098) b!1436382))

(assert (= (and d!413804 (not c!236098)) b!1436383))

(assert (= (and b!1436383 c!236099) b!1436384))

(assert (= (and b!1436383 (not c!236099)) b!1436385))

(declare-fun m!1642081 () Bool)

(assert (=> b!1436384 m!1642081))

(declare-fun m!1642083 () Bool)

(assert (=> b!1436385 m!1642083))

(declare-fun m!1642085 () Bool)

(assert (=> b!1436385 m!1642085))

(assert (=> b!1436385 m!1642083))

(assert (=> b!1436385 m!1642085))

(declare-fun m!1642087 () Bool)

(assert (=> b!1436385 m!1642087))

(assert (=> d!413704 d!413804))

(declare-fun bs!341157 () Bool)

(declare-fun d!413806 () Bool)

(assert (= bs!341157 (and d!413806 d!413726)))

(declare-fun lambda!62839 () Int)

(assert (=> bs!341157 (= (= (rules!11422 other!32) (rules!11422 thiss!10022)) (= lambda!62839 lambda!62838))))

(declare-fun b!1436389 () Bool)

(declare-fun e!916869 () Bool)

(assert (=> b!1436389 (= e!916869 true)))

(declare-fun b!1436388 () Bool)

(declare-fun e!916868 () Bool)

(assert (=> b!1436388 (= e!916868 e!916869)))

(declare-fun b!1436387 () Bool)

(declare-fun e!916867 () Bool)

(assert (=> b!1436387 (= e!916867 e!916868)))

(assert (=> d!413806 e!916867))

(assert (= b!1436388 b!1436389))

(assert (= b!1436387 b!1436388))

(assert (= (and d!413806 ((_ is Cons!14957) (rules!11422 other!32))) b!1436387))

(assert (=> b!1436389 (< (dynLambda!6811 order!8985 (toValue!3932 (transformation!2629 (h!20358 (rules!11422 other!32))))) (dynLambda!6812 order!8987 lambda!62839))))

(assert (=> b!1436389 (< (dynLambda!6813 order!8989 (toChars!3791 (transformation!2629 (h!20358 (rules!11422 other!32))))) (dynLambda!6812 order!8987 lambda!62839))))

(assert (=> d!413806 true))

(declare-fun e!916866 () Bool)

(assert (=> d!413806 e!916866))

(declare-fun res!650378 () Bool)

(assert (=> d!413806 (=> (not res!650378) (not e!916866))))

(declare-fun lt!490899 () Bool)

(assert (=> d!413806 (= res!650378 (= lt!490899 (forall!3673 (list!5945 (tokens!1994 other!32)) lambda!62839)))))

(assert (=> d!413806 (= lt!490899 (forall!3674 (tokens!1994 other!32) lambda!62839))))

(assert (=> d!413806 (not (isEmpty!9299 (rules!11422 other!32)))))

(assert (=> d!413806 (= (rulesProduceEachTokenIndividually!844 Lexer!2286 (rules!11422 other!32) (tokens!1994 other!32)) lt!490899)))

(declare-fun b!1436386 () Bool)

(assert (=> b!1436386 (= e!916866 (= lt!490899 (rulesProduceEachTokenIndividuallyList!724 Lexer!2286 (rules!11422 other!32) (list!5945 (tokens!1994 other!32)))))))

(assert (= (and d!413806 res!650378) b!1436386))

(assert (=> d!413806 m!1641673))

(assert (=> d!413806 m!1641673))

(declare-fun m!1642089 () Bool)

(assert (=> d!413806 m!1642089))

(declare-fun m!1642091 () Bool)

(assert (=> d!413806 m!1642091))

(assert (=> d!413806 m!1641785))

(assert (=> b!1436386 m!1641673))

(assert (=> b!1436386 m!1641673))

(declare-fun m!1642093 () Bool)

(assert (=> b!1436386 m!1642093))

(assert (=> b!1436069 d!413806))

(declare-fun d!413808 () Bool)

(declare-fun res!650385 () Bool)

(declare-fun e!916872 () Bool)

(assert (=> d!413808 (=> (not res!650385) (not e!916872))))

(assert (=> d!413808 (= res!650385 (= (csize!10400 (c!236048 (tokens!1994 other!32))) (+ (size!12255 (left!12738 (c!236048 (tokens!1994 other!32)))) (size!12255 (right!13068 (c!236048 (tokens!1994 other!32)))))))))

(assert (=> d!413808 (= (inv!19886 (c!236048 (tokens!1994 other!32))) e!916872)))

(declare-fun b!1436396 () Bool)

(declare-fun res!650386 () Bool)

(assert (=> b!1436396 (=> (not res!650386) (not e!916872))))

(assert (=> b!1436396 (= res!650386 (and (not (= (left!12738 (c!236048 (tokens!1994 other!32))) Empty!5085)) (not (= (right!13068 (c!236048 (tokens!1994 other!32))) Empty!5085))))))

(declare-fun b!1436397 () Bool)

(declare-fun res!650387 () Bool)

(assert (=> b!1436397 (=> (not res!650387) (not e!916872))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1436397 (= res!650387 (= (cheight!5296 (c!236048 (tokens!1994 other!32))) (+ (max!0 (height!744 (left!12738 (c!236048 (tokens!1994 other!32)))) (height!744 (right!13068 (c!236048 (tokens!1994 other!32))))) 1)))))

(declare-fun b!1436398 () Bool)

(assert (=> b!1436398 (= e!916872 (<= 0 (cheight!5296 (c!236048 (tokens!1994 other!32)))))))

(assert (= (and d!413808 res!650385) b!1436396))

(assert (= (and b!1436396 res!650386) b!1436397))

(assert (= (and b!1436397 res!650387) b!1436398))

(declare-fun m!1642095 () Bool)

(assert (=> d!413808 m!1642095))

(declare-fun m!1642097 () Bool)

(assert (=> d!413808 m!1642097))

(assert (=> b!1436397 m!1642069))

(assert (=> b!1436397 m!1642071))

(assert (=> b!1436397 m!1642069))

(assert (=> b!1436397 m!1642071))

(declare-fun m!1642099 () Bool)

(assert (=> b!1436397 m!1642099))

(assert (=> b!1436089 d!413808))

(declare-fun b!1436399 () Bool)

(declare-fun e!916873 () List!15022)

(assert (=> b!1436399 (= e!916873 Nil!14956)))

(declare-fun d!413810 () Bool)

(declare-fun c!236100 () Bool)

(assert (=> d!413810 (= c!236100 ((_ is Empty!5085) (c!236048 (tokens!1994 thiss!10022))))))

(assert (=> d!413810 (= (list!5947 (c!236048 (tokens!1994 thiss!10022))) e!916873)))

(declare-fun b!1436401 () Bool)

(declare-fun e!916874 () List!15022)

(assert (=> b!1436401 (= e!916874 (list!5949 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun b!1436402 () Bool)

(assert (=> b!1436402 (= e!916874 (++!4008 (list!5947 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) (list!5947 (right!13068 (c!236048 (tokens!1994 thiss!10022))))))))

(declare-fun b!1436400 () Bool)

(assert (=> b!1436400 (= e!916873 e!916874)))

(declare-fun c!236101 () Bool)

(assert (=> b!1436400 (= c!236101 ((_ is Leaf!7601) (c!236048 (tokens!1994 thiss!10022))))))

(assert (= (and d!413810 c!236100) b!1436399))

(assert (= (and d!413810 (not c!236100)) b!1436400))

(assert (= (and b!1436400 c!236101) b!1436401))

(assert (= (and b!1436400 (not c!236101)) b!1436402))

(declare-fun m!1642101 () Bool)

(assert (=> b!1436401 m!1642101))

(declare-fun m!1642103 () Bool)

(assert (=> b!1436402 m!1642103))

(declare-fun m!1642105 () Bool)

(assert (=> b!1436402 m!1642105))

(assert (=> b!1436402 m!1642103))

(assert (=> b!1436402 m!1642105))

(declare-fun m!1642107 () Bool)

(assert (=> b!1436402 m!1642107))

(assert (=> d!413698 d!413810))

(declare-fun d!413812 () Bool)

(assert (=> d!413812 (= (separableTokens!228 Lexer!2286 (tokens!1994 other!32) (rules!11422 other!32)) (tokensListTwoByTwoPredicateSeparable!116 Lexer!2286 (tokens!1994 other!32) 0 (rules!11422 other!32)))))

(declare-fun bs!341158 () Bool)

(assert (= bs!341158 d!413812))

(declare-fun m!1642109 () Bool)

(assert (=> bs!341158 m!1642109))

(assert (=> b!1436070 d!413812))

(declare-fun d!413814 () Bool)

(declare-fun c!236102 () Bool)

(assert (=> d!413814 (= c!236102 ((_ is Node!5085) (left!12738 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun e!916875 () Bool)

(assert (=> d!413814 (= (inv!19880 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) e!916875)))

(declare-fun b!1436403 () Bool)

(assert (=> b!1436403 (= e!916875 (inv!19886 (left!12738 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun b!1436404 () Bool)

(declare-fun e!916876 () Bool)

(assert (=> b!1436404 (= e!916875 e!916876)))

(declare-fun res!650388 () Bool)

(assert (=> b!1436404 (= res!650388 (not ((_ is Leaf!7601) (left!12738 (c!236048 (tokens!1994 thiss!10022))))))))

(assert (=> b!1436404 (=> res!650388 e!916876)))

(declare-fun b!1436405 () Bool)

(assert (=> b!1436405 (= e!916876 (inv!19887 (left!12738 (c!236048 (tokens!1994 thiss!10022)))))))

(assert (= (and d!413814 c!236102) b!1436403))

(assert (= (and d!413814 (not c!236102)) b!1436404))

(assert (= (and b!1436404 (not res!650388)) b!1436405))

(declare-fun m!1642111 () Bool)

(assert (=> b!1436403 m!1642111))

(declare-fun m!1642113 () Bool)

(assert (=> b!1436405 m!1642113))

(assert (=> b!1436129 d!413814))

(declare-fun d!413816 () Bool)

(declare-fun c!236103 () Bool)

(assert (=> d!413816 (= c!236103 ((_ is Node!5085) (right!13068 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun e!916877 () Bool)

(assert (=> d!413816 (= (inv!19880 (right!13068 (c!236048 (tokens!1994 thiss!10022)))) e!916877)))

(declare-fun b!1436406 () Bool)

(assert (=> b!1436406 (= e!916877 (inv!19886 (right!13068 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun b!1436407 () Bool)

(declare-fun e!916878 () Bool)

(assert (=> b!1436407 (= e!916877 e!916878)))

(declare-fun res!650389 () Bool)

(assert (=> b!1436407 (= res!650389 (not ((_ is Leaf!7601) (right!13068 (c!236048 (tokens!1994 thiss!10022))))))))

(assert (=> b!1436407 (=> res!650389 e!916878)))

(declare-fun b!1436408 () Bool)

(assert (=> b!1436408 (= e!916878 (inv!19887 (right!13068 (c!236048 (tokens!1994 thiss!10022)))))))

(assert (= (and d!413816 c!236103) b!1436406))

(assert (= (and d!413816 (not c!236103)) b!1436407))

(assert (= (and b!1436407 (not res!650389)) b!1436408))

(declare-fun m!1642115 () Bool)

(assert (=> b!1436406 m!1642115))

(declare-fun m!1642117 () Bool)

(assert (=> b!1436408 m!1642117))

(assert (=> b!1436129 d!413816))

(assert (=> b!1435990 d!413692))

(declare-fun d!413818 () Bool)

(declare-fun res!650390 () Bool)

(declare-fun e!916879 () Bool)

(assert (=> d!413818 (=> (not res!650390) (not e!916879))))

(assert (=> d!413818 (= res!650390 (<= (size!12253 (list!5949 (xs!7818 (c!236048 (tokens!1994 thiss!10022))))) 512))))

(assert (=> d!413818 (= (inv!19887 (c!236048 (tokens!1994 thiss!10022))) e!916879)))

(declare-fun b!1436409 () Bool)

(declare-fun res!650391 () Bool)

(assert (=> b!1436409 (=> (not res!650391) (not e!916879))))

(assert (=> b!1436409 (= res!650391 (= (csize!10401 (c!236048 (tokens!1994 thiss!10022))) (size!12253 (list!5949 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))))))))

(declare-fun b!1436410 () Bool)

(assert (=> b!1436410 (= e!916879 (and (> (csize!10401 (c!236048 (tokens!1994 thiss!10022))) 0) (<= (csize!10401 (c!236048 (tokens!1994 thiss!10022))) 512)))))

(assert (= (and d!413818 res!650390) b!1436409))

(assert (= (and b!1436409 res!650391) b!1436410))

(assert (=> d!413818 m!1642101))

(assert (=> d!413818 m!1642101))

(declare-fun m!1642119 () Bool)

(assert (=> d!413818 m!1642119))

(assert (=> b!1436409 m!1642101))

(assert (=> b!1436409 m!1642101))

(assert (=> b!1436409 m!1642119))

(assert (=> b!1436106 d!413818))

(declare-fun d!413820 () Bool)

(assert (=> d!413820 (= (inv!19888 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))) (<= (size!12253 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 thiss!10022))))) 2147483647))))

(declare-fun bs!341159 () Bool)

(assert (= bs!341159 d!413820))

(declare-fun m!1642121 () Bool)

(assert (=> bs!341159 m!1642121))

(assert (=> b!1436130 d!413820))

(declare-fun d!413822 () Bool)

(declare-fun res!650392 () Bool)

(declare-fun e!916880 () Bool)

(assert (=> d!413822 (=> (not res!650392) (not e!916880))))

(assert (=> d!413822 (= res!650392 (rulesValid!962 Lexer!2286 (rules!11422 other!32)))))

(assert (=> d!413822 (= (rulesInvariant!2126 Lexer!2286 (rules!11422 other!32)) e!916880)))

(declare-fun b!1436411 () Bool)

(assert (=> b!1436411 (= e!916880 (noDuplicateTag!962 Lexer!2286 (rules!11422 other!32) Nil!14959))))

(assert (= (and d!413822 res!650392) b!1436411))

(declare-fun m!1642123 () Bool)

(assert (=> d!413822 m!1642123))

(declare-fun m!1642125 () Bool)

(assert (=> b!1436411 m!1642125))

(assert (=> b!1436080 d!413822))

(declare-fun b!1436412 () Bool)

(declare-fun e!916881 () List!15022)

(assert (=> b!1436412 (= e!916881 Nil!14956)))

(declare-fun d!413824 () Bool)

(declare-fun c!236104 () Bool)

(assert (=> d!413824 (= c!236104 ((_ is Empty!5085) (c!236048 (tokens!1994 other!32))))))

(assert (=> d!413824 (= (list!5947 (c!236048 (tokens!1994 other!32))) e!916881)))

(declare-fun b!1436414 () Bool)

(declare-fun e!916882 () List!15022)

(assert (=> b!1436414 (= e!916882 (list!5949 (xs!7818 (c!236048 (tokens!1994 other!32)))))))

(declare-fun b!1436415 () Bool)

(assert (=> b!1436415 (= e!916882 (++!4008 (list!5947 (left!12738 (c!236048 (tokens!1994 other!32)))) (list!5947 (right!13068 (c!236048 (tokens!1994 other!32))))))))

(declare-fun b!1436413 () Bool)

(assert (=> b!1436413 (= e!916881 e!916882)))

(declare-fun c!236105 () Bool)

(assert (=> b!1436413 (= c!236105 ((_ is Leaf!7601) (c!236048 (tokens!1994 other!32))))))

(assert (= (and d!413824 c!236104) b!1436412))

(assert (= (and d!413824 (not c!236104)) b!1436413))

(assert (= (and b!1436413 c!236105) b!1436414))

(assert (= (and b!1436413 (not c!236105)) b!1436415))

(assert (=> b!1436414 m!1641867))

(declare-fun m!1642127 () Bool)

(assert (=> b!1436415 m!1642127))

(declare-fun m!1642129 () Bool)

(assert (=> b!1436415 m!1642129))

(assert (=> b!1436415 m!1642127))

(assert (=> b!1436415 m!1642129))

(declare-fun m!1642131 () Bool)

(assert (=> b!1436415 m!1642131))

(assert (=> d!413702 d!413824))

(declare-fun d!413826 () Bool)

(assert (=> d!413826 (= (isEmpty!9295 (list!5945 (tokens!1994 other!32))) ((_ is Nil!14956) (list!5945 (tokens!1994 other!32))))))

(assert (=> d!413666 d!413826))

(assert (=> d!413666 d!413702))

(declare-fun d!413828 () Bool)

(declare-fun lt!490900 () Bool)

(assert (=> d!413828 (= lt!490900 (isEmpty!9295 (list!5947 (c!236048 (tokens!1994 other!32)))))))

(assert (=> d!413828 (= lt!490900 (= (size!12255 (c!236048 (tokens!1994 other!32))) 0))))

(assert (=> d!413828 (= (isEmpty!9298 (c!236048 (tokens!1994 other!32))) lt!490900)))

(declare-fun bs!341160 () Bool)

(assert (= bs!341160 d!413828))

(assert (=> bs!341160 m!1641809))

(assert (=> bs!341160 m!1641809))

(declare-fun m!1642133 () Bool)

(assert (=> bs!341160 m!1642133))

(declare-fun m!1642135 () Bool)

(assert (=> bs!341160 m!1642135))

(assert (=> d!413666 d!413828))

(assert (=> b!1436081 d!413806))

(assert (=> d!413686 d!413822))

(assert (=> b!1436082 d!413812))

(declare-fun d!413830 () Bool)

(declare-fun c!236106 () Bool)

(assert (=> d!413830 (= c!236106 ((_ is Node!5085) (left!12738 (c!236048 (tokens!1994 other!32)))))))

(declare-fun e!916883 () Bool)

(assert (=> d!413830 (= (inv!19880 (left!12738 (c!236048 (tokens!1994 other!32)))) e!916883)))

(declare-fun b!1436416 () Bool)

(assert (=> b!1436416 (= e!916883 (inv!19886 (left!12738 (c!236048 (tokens!1994 other!32)))))))

(declare-fun b!1436417 () Bool)

(declare-fun e!916884 () Bool)

(assert (=> b!1436417 (= e!916883 e!916884)))

(declare-fun res!650393 () Bool)

(assert (=> b!1436417 (= res!650393 (not ((_ is Leaf!7601) (left!12738 (c!236048 (tokens!1994 other!32))))))))

(assert (=> b!1436417 (=> res!650393 e!916884)))

(declare-fun b!1436418 () Bool)

(assert (=> b!1436418 (= e!916884 (inv!19887 (left!12738 (c!236048 (tokens!1994 other!32)))))))

(assert (= (and d!413830 c!236106) b!1436416))

(assert (= (and d!413830 (not c!236106)) b!1436417))

(assert (= (and b!1436417 (not res!650393)) b!1436418))

(declare-fun m!1642137 () Bool)

(assert (=> b!1436416 m!1642137))

(declare-fun m!1642139 () Bool)

(assert (=> b!1436418 m!1642139))

(assert (=> b!1436115 d!413830))

(declare-fun d!413832 () Bool)

(declare-fun c!236107 () Bool)

(assert (=> d!413832 (= c!236107 ((_ is Node!5085) (right!13068 (c!236048 (tokens!1994 other!32)))))))

(declare-fun e!916885 () Bool)

(assert (=> d!413832 (= (inv!19880 (right!13068 (c!236048 (tokens!1994 other!32)))) e!916885)))

(declare-fun b!1436419 () Bool)

(assert (=> b!1436419 (= e!916885 (inv!19886 (right!13068 (c!236048 (tokens!1994 other!32)))))))

(declare-fun b!1436420 () Bool)

(declare-fun e!916886 () Bool)

(assert (=> b!1436420 (= e!916885 e!916886)))

(declare-fun res!650394 () Bool)

(assert (=> b!1436420 (= res!650394 (not ((_ is Leaf!7601) (right!13068 (c!236048 (tokens!1994 other!32))))))))

(assert (=> b!1436420 (=> res!650394 e!916886)))

(declare-fun b!1436421 () Bool)

(assert (=> b!1436421 (= e!916886 (inv!19887 (right!13068 (c!236048 (tokens!1994 other!32)))))))

(assert (= (and d!413832 c!236107) b!1436419))

(assert (= (and d!413832 (not c!236107)) b!1436420))

(assert (= (and b!1436420 (not res!650394)) b!1436421))

(declare-fun m!1642141 () Bool)

(assert (=> b!1436419 m!1642141))

(declare-fun m!1642143 () Bool)

(assert (=> b!1436421 m!1642143))

(assert (=> b!1436115 d!413832))

(declare-fun b!1436422 () Bool)

(declare-fun e!916888 () Bool)

(assert (=> b!1436422 (= e!916888 (not (isEmpty!9298 (right!13068 (c!236048 (tokens!1994 thiss!10022))))))))

(declare-fun b!1436423 () Bool)

(declare-fun res!650395 () Bool)

(assert (=> b!1436423 (=> (not res!650395) (not e!916888))))

(assert (=> b!1436423 (= res!650395 (not (isEmpty!9298 (left!12738 (c!236048 (tokens!1994 thiss!10022))))))))

(declare-fun b!1436424 () Bool)

(declare-fun res!650397 () Bool)

(assert (=> b!1436424 (=> (not res!650397) (not e!916888))))

(assert (=> b!1436424 (= res!650397 (<= (- (height!744 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) (height!744 (right!13068 (c!236048 (tokens!1994 thiss!10022))))) 1))))

(declare-fun d!413834 () Bool)

(declare-fun res!650396 () Bool)

(declare-fun e!916887 () Bool)

(assert (=> d!413834 (=> res!650396 e!916887)))

(assert (=> d!413834 (= res!650396 (not ((_ is Node!5085) (c!236048 (tokens!1994 thiss!10022)))))))

(assert (=> d!413834 (= (isBalanced!1508 (c!236048 (tokens!1994 thiss!10022))) e!916887)))

(declare-fun b!1436425 () Bool)

(declare-fun res!650398 () Bool)

(assert (=> b!1436425 (=> (not res!650398) (not e!916888))))

(assert (=> b!1436425 (= res!650398 (isBalanced!1508 (left!12738 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun b!1436426 () Bool)

(declare-fun res!650399 () Bool)

(assert (=> b!1436426 (=> (not res!650399) (not e!916888))))

(assert (=> b!1436426 (= res!650399 (isBalanced!1508 (right!13068 (c!236048 (tokens!1994 thiss!10022)))))))

(declare-fun b!1436427 () Bool)

(assert (=> b!1436427 (= e!916887 e!916888)))

(declare-fun res!650400 () Bool)

(assert (=> b!1436427 (=> (not res!650400) (not e!916888))))

(assert (=> b!1436427 (= res!650400 (<= (- 1) (- (height!744 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) (height!744 (right!13068 (c!236048 (tokens!1994 thiss!10022)))))))))

(assert (= (and d!413834 (not res!650396)) b!1436427))

(assert (= (and b!1436427 res!650400) b!1436424))

(assert (= (and b!1436424 res!650397) b!1436425))

(assert (= (and b!1436425 res!650398) b!1436426))

(assert (= (and b!1436426 res!650399) b!1436423))

(assert (= (and b!1436423 res!650395) b!1436422))

(declare-fun m!1642145 () Bool)

(assert (=> b!1436425 m!1642145))

(declare-fun m!1642147 () Bool)

(assert (=> b!1436426 m!1642147))

(declare-fun m!1642149 () Bool)

(assert (=> b!1436424 m!1642149))

(declare-fun m!1642151 () Bool)

(assert (=> b!1436424 m!1642151))

(assert (=> b!1436427 m!1642149))

(assert (=> b!1436427 m!1642151))

(declare-fun m!1642153 () Bool)

(assert (=> b!1436423 m!1642153))

(declare-fun m!1642155 () Bool)

(assert (=> b!1436422 m!1642155))

(assert (=> d!413694 d!413834))

(declare-fun d!413836 () Bool)

(declare-fun c!236110 () Bool)

(assert (=> d!413836 (= c!236110 ((_ is Nil!14956) lt!490872))))

(declare-fun e!916891 () (InoxSet Token!4920))

(assert (=> d!413836 (= (content!2207 lt!490872) e!916891)))

(declare-fun b!1436432 () Bool)

(assert (=> b!1436432 (= e!916891 ((as const (Array Token!4920 Bool)) false))))

(declare-fun b!1436433 () Bool)

(assert (=> b!1436433 (= e!916891 ((_ map or) (store ((as const (Array Token!4920 Bool)) false) (h!20357 lt!490872) true) (content!2207 (t!127429 lt!490872))))))

(assert (= (and d!413836 c!236110) b!1436432))

(assert (= (and d!413836 (not c!236110)) b!1436433))

(declare-fun m!1642157 () Bool)

(assert (=> b!1436433 m!1642157))

(declare-fun m!1642159 () Bool)

(assert (=> b!1436433 m!1642159))

(assert (=> d!413700 d!413836))

(declare-fun d!413838 () Bool)

(declare-fun c!236111 () Bool)

(assert (=> d!413838 (= c!236111 ((_ is Nil!14956) lt!490856))))

(declare-fun e!916892 () (InoxSet Token!4920))

(assert (=> d!413838 (= (content!2207 lt!490856) e!916892)))

(declare-fun b!1436434 () Bool)

(assert (=> b!1436434 (= e!916892 ((as const (Array Token!4920 Bool)) false))))

(declare-fun b!1436435 () Bool)

(assert (=> b!1436435 (= e!916892 ((_ map or) (store ((as const (Array Token!4920 Bool)) false) (h!20357 lt!490856) true) (content!2207 (t!127429 lt!490856))))))

(assert (= (and d!413838 c!236111) b!1436434))

(assert (= (and d!413838 (not c!236111)) b!1436435))

(declare-fun m!1642161 () Bool)

(assert (=> b!1436435 m!1642161))

(assert (=> b!1436435 m!1642059))

(assert (=> d!413700 d!413838))

(declare-fun d!413840 () Bool)

(declare-fun c!236112 () Bool)

(assert (=> d!413840 (= c!236112 ((_ is Nil!14956) lt!490855))))

(declare-fun e!916893 () (InoxSet Token!4920))

(assert (=> d!413840 (= (content!2207 lt!490855) e!916893)))

(declare-fun b!1436436 () Bool)

(assert (=> b!1436436 (= e!916893 ((as const (Array Token!4920 Bool)) false))))

(declare-fun b!1436437 () Bool)

(assert (=> b!1436437 (= e!916893 ((_ map or) (store ((as const (Array Token!4920 Bool)) false) (h!20357 lt!490855) true) (content!2207 (t!127429 lt!490855))))))

(assert (= (and d!413840 c!236112) b!1436436))

(assert (= (and d!413840 (not c!236112)) b!1436437))

(declare-fun m!1642163 () Bool)

(assert (=> b!1436437 m!1642163))

(declare-fun m!1642165 () Bool)

(assert (=> b!1436437 m!1642165))

(assert (=> d!413700 d!413840))

(assert (=> b!1436067 d!413726))

(declare-fun d!413842 () Bool)

(assert (=> d!413842 (= (inv!19888 (xs!7818 (c!236048 (tokens!1994 other!32)))) (<= (size!12253 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 other!32))))) 2147483647))))

(declare-fun bs!341161 () Bool)

(assert (= bs!341161 d!413842))

(declare-fun m!1642167 () Bool)

(assert (=> bs!341161 m!1642167))

(assert (=> b!1436116 d!413842))

(assert (=> b!1436068 d!413792))

(declare-fun d!413844 () Bool)

(assert (=> d!413844 (= (isEmpty!9299 (rules!11422 thiss!10022)) ((_ is Nil!14957) (rules!11422 thiss!10022)))))

(assert (=> d!413688 d!413844))

(declare-fun d!413846 () Bool)

(assert (=> d!413846 (= (inv!19875 (tag!2891 (h!20358 (rules!11422 other!32)))) (= (mod (str.len (value!84573 (tag!2891 (h!20358 (rules!11422 other!32))))) 2) 0))))

(assert (=> b!1436133 d!413846))

(declare-fun d!413848 () Bool)

(declare-fun res!650403 () Bool)

(declare-fun e!916896 () Bool)

(assert (=> d!413848 (=> (not res!650403) (not e!916896))))

(declare-fun semiInverseModEq!988 (Int Int) Bool)

(assert (=> d!413848 (= res!650403 (semiInverseModEq!988 (toChars!3791 (transformation!2629 (h!20358 (rules!11422 other!32)))) (toValue!3932 (transformation!2629 (h!20358 (rules!11422 other!32))))))))

(assert (=> d!413848 (= (inv!19889 (transformation!2629 (h!20358 (rules!11422 other!32)))) e!916896)))

(declare-fun b!1436440 () Bool)

(declare-fun equivClasses!947 (Int Int) Bool)

(assert (=> b!1436440 (= e!916896 (equivClasses!947 (toChars!3791 (transformation!2629 (h!20358 (rules!11422 other!32)))) (toValue!3932 (transformation!2629 (h!20358 (rules!11422 other!32))))))))

(assert (= (and d!413848 res!650403) b!1436440))

(declare-fun m!1642169 () Bool)

(assert (=> d!413848 m!1642169))

(declare-fun m!1642171 () Bool)

(assert (=> b!1436440 m!1642171))

(assert (=> b!1436133 d!413848))

(declare-fun d!413850 () Bool)

(assert (=> d!413850 (= (isEmpty!9299 (rules!11422 other!32)) ((_ is Nil!14957) (rules!11422 other!32)))))

(assert (=> d!413690 d!413850))

(assert (=> b!1435988 d!413706))

(declare-fun d!413852 () Bool)

(assert (=> d!413852 (= (inv!19875 (tag!2891 (h!20358 (rules!11422 thiss!10022)))) (= (mod (str.len (value!84573 (tag!2891 (h!20358 (rules!11422 thiss!10022))))) 2) 0))))

(assert (=> b!1436127 d!413852))

(declare-fun d!413854 () Bool)

(declare-fun res!650404 () Bool)

(declare-fun e!916897 () Bool)

(assert (=> d!413854 (=> (not res!650404) (not e!916897))))

(assert (=> d!413854 (= res!650404 (semiInverseModEq!988 (toChars!3791 (transformation!2629 (h!20358 (rules!11422 thiss!10022)))) (toValue!3932 (transformation!2629 (h!20358 (rules!11422 thiss!10022))))))))

(assert (=> d!413854 (= (inv!19889 (transformation!2629 (h!20358 (rules!11422 thiss!10022)))) e!916897)))

(declare-fun b!1436441 () Bool)

(assert (=> b!1436441 (= e!916897 (equivClasses!947 (toChars!3791 (transformation!2629 (h!20358 (rules!11422 thiss!10022)))) (toValue!3932 (transformation!2629 (h!20358 (rules!11422 thiss!10022))))))))

(assert (= (and d!413854 res!650404) b!1436441))

(declare-fun m!1642173 () Bool)

(assert (=> d!413854 m!1642173))

(declare-fun m!1642175 () Bool)

(assert (=> b!1436441 m!1642175))

(assert (=> b!1436127 d!413854))

(declare-fun d!413856 () Bool)

(declare-fun res!650405 () Bool)

(declare-fun e!916898 () Bool)

(assert (=> d!413856 (=> (not res!650405) (not e!916898))))

(assert (=> d!413856 (= res!650405 (= (csize!10400 (c!236048 (tokens!1994 thiss!10022))) (+ (size!12255 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) (size!12255 (right!13068 (c!236048 (tokens!1994 thiss!10022)))))))))

(assert (=> d!413856 (= (inv!19886 (c!236048 (tokens!1994 thiss!10022))) e!916898)))

(declare-fun b!1436442 () Bool)

(declare-fun res!650406 () Bool)

(assert (=> b!1436442 (=> (not res!650406) (not e!916898))))

(assert (=> b!1436442 (= res!650406 (and (not (= (left!12738 (c!236048 (tokens!1994 thiss!10022))) Empty!5085)) (not (= (right!13068 (c!236048 (tokens!1994 thiss!10022))) Empty!5085))))))

(declare-fun b!1436443 () Bool)

(declare-fun res!650407 () Bool)

(assert (=> b!1436443 (=> (not res!650407) (not e!916898))))

(assert (=> b!1436443 (= res!650407 (= (cheight!5296 (c!236048 (tokens!1994 thiss!10022))) (+ (max!0 (height!744 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) (height!744 (right!13068 (c!236048 (tokens!1994 thiss!10022))))) 1)))))

(declare-fun b!1436444 () Bool)

(assert (=> b!1436444 (= e!916898 (<= 0 (cheight!5296 (c!236048 (tokens!1994 thiss!10022)))))))

(assert (= (and d!413856 res!650405) b!1436442))

(assert (= (and b!1436442 res!650406) b!1436443))

(assert (= (and b!1436443 res!650407) b!1436444))

(declare-fun m!1642177 () Bool)

(assert (=> d!413856 m!1642177))

(declare-fun m!1642179 () Bool)

(assert (=> d!413856 m!1642179))

(assert (=> b!1436443 m!1642149))

(assert (=> b!1436443 m!1642151))

(assert (=> b!1436443 m!1642149))

(assert (=> b!1436443 m!1642151))

(declare-fun m!1642181 () Bool)

(assert (=> b!1436443 m!1642181))

(assert (=> b!1436104 d!413856))

(declare-fun tp!406849 () Bool)

(declare-fun b!1436445 () Bool)

(declare-fun e!916900 () Bool)

(declare-fun tp!406848 () Bool)

(assert (=> b!1436445 (= e!916900 (and (inv!19880 (left!12738 (left!12738 (c!236048 (tokens!1994 thiss!10022))))) tp!406848 (inv!19880 (right!13068 (left!12738 (c!236048 (tokens!1994 thiss!10022))))) tp!406849))))

(declare-fun b!1436447 () Bool)

(declare-fun e!916899 () Bool)

(declare-fun tp!406847 () Bool)

(assert (=> b!1436447 (= e!916899 tp!406847)))

(declare-fun b!1436446 () Bool)

(assert (=> b!1436446 (= e!916900 (and (inv!19888 (xs!7818 (left!12738 (c!236048 (tokens!1994 thiss!10022))))) e!916899))))

(assert (=> b!1436129 (= tp!406781 (and (inv!19880 (left!12738 (c!236048 (tokens!1994 thiss!10022)))) e!916900))))

(assert (= (and b!1436129 ((_ is Node!5085) (left!12738 (c!236048 (tokens!1994 thiss!10022))))) b!1436445))

(assert (= b!1436446 b!1436447))

(assert (= (and b!1436129 ((_ is Leaf!7601) (left!12738 (c!236048 (tokens!1994 thiss!10022))))) b!1436446))

(declare-fun m!1642183 () Bool)

(assert (=> b!1436445 m!1642183))

(declare-fun m!1642185 () Bool)

(assert (=> b!1436445 m!1642185))

(declare-fun m!1642187 () Bool)

(assert (=> b!1436446 m!1642187))

(assert (=> b!1436129 m!1641829))

(declare-fun tp!406852 () Bool)

(declare-fun e!916902 () Bool)

(declare-fun tp!406851 () Bool)

(declare-fun b!1436448 () Bool)

(assert (=> b!1436448 (= e!916902 (and (inv!19880 (left!12738 (right!13068 (c!236048 (tokens!1994 thiss!10022))))) tp!406851 (inv!19880 (right!13068 (right!13068 (c!236048 (tokens!1994 thiss!10022))))) tp!406852))))

(declare-fun b!1436450 () Bool)

(declare-fun e!916901 () Bool)

(declare-fun tp!406850 () Bool)

(assert (=> b!1436450 (= e!916901 tp!406850)))

(declare-fun b!1436449 () Bool)

(assert (=> b!1436449 (= e!916902 (and (inv!19888 (xs!7818 (right!13068 (c!236048 (tokens!1994 thiss!10022))))) e!916901))))

(assert (=> b!1436129 (= tp!406782 (and (inv!19880 (right!13068 (c!236048 (tokens!1994 thiss!10022)))) e!916902))))

(assert (= (and b!1436129 ((_ is Node!5085) (right!13068 (c!236048 (tokens!1994 thiss!10022))))) b!1436448))

(assert (= b!1436449 b!1436450))

(assert (= (and b!1436129 ((_ is Leaf!7601) (right!13068 (c!236048 (tokens!1994 thiss!10022))))) b!1436449))

(declare-fun m!1642189 () Bool)

(assert (=> b!1436448 m!1642189))

(declare-fun m!1642191 () Bool)

(assert (=> b!1436448 m!1642191))

(declare-fun m!1642193 () Bool)

(assert (=> b!1436449 m!1642193))

(assert (=> b!1436129 m!1641831))

(declare-fun tp!406854 () Bool)

(declare-fun b!1436451 () Bool)

(declare-fun tp!406855 () Bool)

(declare-fun e!916904 () Bool)

(assert (=> b!1436451 (= e!916904 (and (inv!19880 (left!12738 (left!12738 (c!236048 (tokens!1994 other!32))))) tp!406854 (inv!19880 (right!13068 (left!12738 (c!236048 (tokens!1994 other!32))))) tp!406855))))

(declare-fun b!1436453 () Bool)

(declare-fun e!916903 () Bool)

(declare-fun tp!406853 () Bool)

(assert (=> b!1436453 (= e!916903 tp!406853)))

(declare-fun b!1436452 () Bool)

(assert (=> b!1436452 (= e!916904 (and (inv!19888 (xs!7818 (left!12738 (c!236048 (tokens!1994 other!32))))) e!916903))))

(assert (=> b!1436115 (= tp!406766 (and (inv!19880 (left!12738 (c!236048 (tokens!1994 other!32)))) e!916904))))

(assert (= (and b!1436115 ((_ is Node!5085) (left!12738 (c!236048 (tokens!1994 other!32))))) b!1436451))

(assert (= b!1436452 b!1436453))

(assert (= (and b!1436115 ((_ is Leaf!7601) (left!12738 (c!236048 (tokens!1994 other!32))))) b!1436452))

(declare-fun m!1642195 () Bool)

(assert (=> b!1436451 m!1642195))

(declare-fun m!1642197 () Bool)

(assert (=> b!1436451 m!1642197))

(declare-fun m!1642199 () Bool)

(assert (=> b!1436452 m!1642199))

(assert (=> b!1436115 m!1641819))

(declare-fun tp!406857 () Bool)

(declare-fun b!1436454 () Bool)

(declare-fun tp!406858 () Bool)

(declare-fun e!916906 () Bool)

(assert (=> b!1436454 (= e!916906 (and (inv!19880 (left!12738 (right!13068 (c!236048 (tokens!1994 other!32))))) tp!406857 (inv!19880 (right!13068 (right!13068 (c!236048 (tokens!1994 other!32))))) tp!406858))))

(declare-fun b!1436456 () Bool)

(declare-fun e!916905 () Bool)

(declare-fun tp!406856 () Bool)

(assert (=> b!1436456 (= e!916905 tp!406856)))

(declare-fun b!1436455 () Bool)

(assert (=> b!1436455 (= e!916906 (and (inv!19888 (xs!7818 (right!13068 (c!236048 (tokens!1994 other!32))))) e!916905))))

(assert (=> b!1436115 (= tp!406767 (and (inv!19880 (right!13068 (c!236048 (tokens!1994 other!32)))) e!916906))))

(assert (= (and b!1436115 ((_ is Node!5085) (right!13068 (c!236048 (tokens!1994 other!32))))) b!1436454))

(assert (= b!1436455 b!1436456))

(assert (= (and b!1436115 ((_ is Leaf!7601) (right!13068 (c!236048 (tokens!1994 other!32))))) b!1436455))

(declare-fun m!1642201 () Bool)

(assert (=> b!1436454 m!1642201))

(declare-fun m!1642203 () Bool)

(assert (=> b!1436454 m!1642203))

(declare-fun m!1642205 () Bool)

(assert (=> b!1436455 m!1642205))

(assert (=> b!1436115 m!1641821))

(declare-fun b!1436459 () Bool)

(declare-fun b_free!35623 () Bool)

(declare-fun b_next!36327 () Bool)

(assert (=> b!1436459 (= b_free!35623 (not b_next!36327))))

(declare-fun tp!406860 () Bool)

(declare-fun b_and!96591 () Bool)

(assert (=> b!1436459 (= tp!406860 b_and!96591)))

(declare-fun b_free!35625 () Bool)

(declare-fun b_next!36329 () Bool)

(assert (=> b!1436459 (= b_free!35625 (not b_next!36329))))

(declare-fun tp!406859 () Bool)

(declare-fun b_and!96593 () Bool)

(assert (=> b!1436459 (= tp!406859 b_and!96593)))

(declare-fun e!916909 () Bool)

(assert (=> b!1436459 (= e!916909 (and tp!406860 tp!406859))))

(declare-fun e!916910 () Bool)

(declare-fun b!1436458 () Bool)

(declare-fun tp!406861 () Bool)

(assert (=> b!1436458 (= e!916910 (and tp!406861 (inv!19875 (tag!2891 (h!20358 (t!127430 (rules!11422 other!32))))) (inv!19889 (transformation!2629 (h!20358 (t!127430 (rules!11422 other!32))))) e!916909))))

(declare-fun b!1436457 () Bool)

(declare-fun e!916908 () Bool)

(declare-fun tp!406862 () Bool)

(assert (=> b!1436457 (= e!916908 (and e!916910 tp!406862))))

(assert (=> b!1436132 (= tp!406786 e!916908)))

(assert (= b!1436458 b!1436459))

(assert (= b!1436457 b!1436458))

(assert (= (and b!1436132 ((_ is Cons!14957) (t!127430 (rules!11422 other!32)))) b!1436457))

(declare-fun m!1642207 () Bool)

(assert (=> b!1436458 m!1642207))

(declare-fun m!1642209 () Bool)

(assert (=> b!1436458 m!1642209))

(declare-fun b!1436473 () Bool)

(declare-fun b_free!35627 () Bool)

(declare-fun b_next!36331 () Bool)

(assert (=> b!1436473 (= b_free!35627 (not b_next!36331))))

(declare-fun tp!406874 () Bool)

(declare-fun b_and!96595 () Bool)

(assert (=> b!1436473 (= tp!406874 b_and!96595)))

(declare-fun b_free!35629 () Bool)

(declare-fun b_next!36333 () Bool)

(assert (=> b!1436473 (= b_free!35629 (not b_next!36333))))

(declare-fun tp!406877 () Bool)

(declare-fun b_and!96597 () Bool)

(assert (=> b!1436473 (= tp!406877 b_and!96597)))

(declare-fun tp!406873 () Bool)

(declare-fun b!1436471 () Bool)

(declare-fun e!916924 () Bool)

(declare-fun e!916928 () Bool)

(declare-fun inv!21 (TokenValue!2719) Bool)

(assert (=> b!1436471 (= e!916924 (and (inv!21 (value!84574 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 thiss!10022))))))) e!916928 tp!406873))))

(declare-fun e!916923 () Bool)

(declare-fun tp!406876 () Bool)

(declare-fun b!1436470 () Bool)

(declare-fun inv!19891 (Token!4920) Bool)

(assert (=> b!1436470 (= e!916923 (and (inv!19891 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))))) e!916924 tp!406876))))

(assert (=> b!1436131 (= tp!406780 e!916923)))

(declare-fun e!916925 () Bool)

(assert (=> b!1436473 (= e!916925 (and tp!406874 tp!406877))))

(declare-fun b!1436472 () Bool)

(declare-fun tp!406875 () Bool)

(assert (=> b!1436472 (= e!916928 (and tp!406875 (inv!19875 (tag!2891 (rule!4394 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))))))) (inv!19889 (transformation!2629 (rule!4394 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))))))) e!916925))))

(assert (= b!1436472 b!1436473))

(assert (= b!1436471 b!1436472))

(assert (= b!1436470 b!1436471))

(assert (= (and b!1436131 ((_ is Cons!14956) (innerList!5145 (xs!7818 (c!236048 (tokens!1994 thiss!10022)))))) b!1436470))

(declare-fun m!1642211 () Bool)

(assert (=> b!1436471 m!1642211))

(declare-fun m!1642213 () Bool)

(assert (=> b!1436470 m!1642213))

(declare-fun m!1642215 () Bool)

(assert (=> b!1436472 m!1642215))

(declare-fun m!1642217 () Bool)

(assert (=> b!1436472 m!1642217))

(declare-fun b!1436486 () Bool)

(declare-fun e!916931 () Bool)

(declare-fun tp!406891 () Bool)

(assert (=> b!1436486 (= e!916931 tp!406891)))

(declare-fun b!1436487 () Bool)

(declare-fun tp!406889 () Bool)

(declare-fun tp!406888 () Bool)

(assert (=> b!1436487 (= e!916931 (and tp!406889 tp!406888))))

(declare-fun b!1436485 () Bool)

(declare-fun tp!406890 () Bool)

(declare-fun tp!406892 () Bool)

(assert (=> b!1436485 (= e!916931 (and tp!406890 tp!406892))))

(declare-fun b!1436484 () Bool)

(declare-fun tp_is_empty!6843 () Bool)

(assert (=> b!1436484 (= e!916931 tp_is_empty!6843)))

(assert (=> b!1436133 (= tp!406785 e!916931)))

(assert (= (and b!1436133 ((_ is ElementMatch!3943) (regex!2629 (h!20358 (rules!11422 other!32))))) b!1436484))

(assert (= (and b!1436133 ((_ is Concat!6663) (regex!2629 (h!20358 (rules!11422 other!32))))) b!1436485))

(assert (= (and b!1436133 ((_ is Star!3943) (regex!2629 (h!20358 (rules!11422 other!32))))) b!1436486))

(assert (= (and b!1436133 ((_ is Union!3943) (regex!2629 (h!20358 (rules!11422 other!32))))) b!1436487))

(declare-fun b!1436491 () Bool)

(declare-fun b_free!35631 () Bool)

(declare-fun b_next!36335 () Bool)

(assert (=> b!1436491 (= b_free!35631 (not b_next!36335))))

(declare-fun tp!406894 () Bool)

(declare-fun b_and!96599 () Bool)

(assert (=> b!1436491 (= tp!406894 b_and!96599)))

(declare-fun b_free!35633 () Bool)

(declare-fun b_next!36337 () Bool)

(assert (=> b!1436491 (= b_free!35633 (not b_next!36337))))

(declare-fun tp!406897 () Bool)

(declare-fun b_and!96601 () Bool)

(assert (=> b!1436491 (= tp!406897 b_and!96601)))

(declare-fun b!1436489 () Bool)

(declare-fun e!916933 () Bool)

(declare-fun tp!406893 () Bool)

(declare-fun e!916937 () Bool)

(assert (=> b!1436489 (= e!916933 (and (inv!21 (value!84574 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 other!32))))))) e!916937 tp!406893))))

(declare-fun e!916932 () Bool)

(declare-fun tp!406896 () Bool)

(declare-fun b!1436488 () Bool)

(assert (=> b!1436488 (= e!916932 (and (inv!19891 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 other!32)))))) e!916933 tp!406896))))

(assert (=> b!1436117 (= tp!406765 e!916932)))

(declare-fun e!916934 () Bool)

(assert (=> b!1436491 (= e!916934 (and tp!406894 tp!406897))))

(declare-fun b!1436490 () Bool)

(declare-fun tp!406895 () Bool)

(assert (=> b!1436490 (= e!916937 (and tp!406895 (inv!19875 (tag!2891 (rule!4394 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 other!32)))))))) (inv!19889 (transformation!2629 (rule!4394 (h!20357 (innerList!5145 (xs!7818 (c!236048 (tokens!1994 other!32)))))))) e!916934))))

(assert (= b!1436490 b!1436491))

(assert (= b!1436489 b!1436490))

(assert (= b!1436488 b!1436489))

(assert (= (and b!1436117 ((_ is Cons!14956) (innerList!5145 (xs!7818 (c!236048 (tokens!1994 other!32)))))) b!1436488))

(declare-fun m!1642219 () Bool)

(assert (=> b!1436489 m!1642219))

(declare-fun m!1642221 () Bool)

(assert (=> b!1436488 m!1642221))

(declare-fun m!1642223 () Bool)

(assert (=> b!1436490 m!1642223))

(declare-fun m!1642225 () Bool)

(assert (=> b!1436490 m!1642225))

(declare-fun b!1436494 () Bool)

(declare-fun b_free!35635 () Bool)

(declare-fun b_next!36339 () Bool)

(assert (=> b!1436494 (= b_free!35635 (not b_next!36339))))

(declare-fun tp!406899 () Bool)

(declare-fun b_and!96603 () Bool)

(assert (=> b!1436494 (= tp!406899 b_and!96603)))

(declare-fun b_free!35637 () Bool)

(declare-fun b_next!36341 () Bool)

(assert (=> b!1436494 (= b_free!35637 (not b_next!36341))))

(declare-fun tp!406898 () Bool)

(declare-fun b_and!96605 () Bool)

(assert (=> b!1436494 (= tp!406898 b_and!96605)))

(declare-fun e!916940 () Bool)

(assert (=> b!1436494 (= e!916940 (and tp!406899 tp!406898))))

(declare-fun tp!406900 () Bool)

(declare-fun b!1436493 () Bool)

(declare-fun e!916941 () Bool)

(assert (=> b!1436493 (= e!916941 (and tp!406900 (inv!19875 (tag!2891 (h!20358 (t!127430 (rules!11422 thiss!10022))))) (inv!19889 (transformation!2629 (h!20358 (t!127430 (rules!11422 thiss!10022))))) e!916940))))

(declare-fun b!1436492 () Bool)

(declare-fun e!916939 () Bool)

(declare-fun tp!406901 () Bool)

(assert (=> b!1436492 (= e!916939 (and e!916941 tp!406901))))

(assert (=> b!1436126 (= tp!406779 e!916939)))

(assert (= b!1436493 b!1436494))

(assert (= b!1436492 b!1436493))

(assert (= (and b!1436126 ((_ is Cons!14957) (t!127430 (rules!11422 thiss!10022)))) b!1436492))

(declare-fun m!1642227 () Bool)

(assert (=> b!1436493 m!1642227))

(declare-fun m!1642229 () Bool)

(assert (=> b!1436493 m!1642229))

(declare-fun b!1436497 () Bool)

(declare-fun e!916942 () Bool)

(declare-fun tp!406905 () Bool)

(assert (=> b!1436497 (= e!916942 tp!406905)))

(declare-fun b!1436498 () Bool)

(declare-fun tp!406903 () Bool)

(declare-fun tp!406902 () Bool)

(assert (=> b!1436498 (= e!916942 (and tp!406903 tp!406902))))

(declare-fun b!1436496 () Bool)

(declare-fun tp!406904 () Bool)

(declare-fun tp!406906 () Bool)

(assert (=> b!1436496 (= e!916942 (and tp!406904 tp!406906))))

(declare-fun b!1436495 () Bool)

(assert (=> b!1436495 (= e!916942 tp_is_empty!6843)))

(assert (=> b!1436127 (= tp!406778 e!916942)))

(assert (= (and b!1436127 ((_ is ElementMatch!3943) (regex!2629 (h!20358 (rules!11422 thiss!10022))))) b!1436495))

(assert (= (and b!1436127 ((_ is Concat!6663) (regex!2629 (h!20358 (rules!11422 thiss!10022))))) b!1436496))

(assert (= (and b!1436127 ((_ is Star!3943) (regex!2629 (h!20358 (rules!11422 thiss!10022))))) b!1436497))

(assert (= (and b!1436127 ((_ is Union!3943) (regex!2629 (h!20358 (rules!11422 thiss!10022))))) b!1436498))

(check-sat (not b!1436418) (not b!1436369) (not b!1436437) (not d!413820) (not b!1436453) (not b!1436440) (not b!1436443) (not d!413792) (not b!1436384) (not b!1436498) (not b!1436403) (not b_next!36339) (not d!413822) (not b!1436129) (not b!1436450) b_and!96569 (not b!1436456) (not b!1436433) (not b!1436387) (not b!1436411) (not d!413848) b_and!96573 (not b!1436496) (not b!1436115) (not b!1436448) (not b!1436286) (not b!1436373) b_and!96599 (not b!1436423) (not b!1436487) (not d!413720) (not b!1436441) (not b!1436409) (not b_next!36335) (not b!1436493) (not b_next!36309) (not b!1436455) (not b!1436344) (not b!1436360) (not b!1436458) (not b!1436371) (not d!413854) b_and!96603 (not b!1436489) (not d!413808) (not d!413842) (not b!1436497) (not b!1436486) (not b!1436449) (not d!413794) (not d!413722) tp_is_empty!6843 (not d!413818) (not b!1436446) (not b!1436485) (not b!1436406) (not b!1436425) (not b!1436419) (not b!1436264) (not d!413726) (not b!1436361) (not b!1436414) (not b!1436421) (not b!1436445) b_and!96593 (not b!1436488) b_and!96595 (not b_next!36327) (not b_next!36337) b_and!96605 (not b!1436358) (not b_next!36303) (not b!1436172) (not d!413856) (not b!1436471) (not b!1436422) (not b!1436359) (not b_next!36305) (not b!1436402) (not b!1436492) (not b!1436386) (not d!413812) (not b_next!36329) (not b!1436472) (not b_next!36341) (not b!1436363) (not b!1436452) (not b!1436447) (not b!1436470) (not d!413724) (not d!413806) b_and!96597 (not b!1436424) (not b!1436457) (not b!1436385) (not b_next!36333) (not b!1436426) (not b!1436415) (not b!1436405) (not b!1436490) (not d!413828) b_and!96567 (not b!1436451) (not b!1436416) b_and!96571 (not b_next!36331) b_and!96591 (not b!1436397) (not b!1436427) (not b!1436176) (not b!1436454) (not b!1436435) (not b!1436362) (not b_next!36307) (not b!1436401) (not b!1436343) (not b!1436408) b_and!96601)
(check-sat (not b_next!36339) b_and!96569 b_and!96573 b_and!96599 b_and!96603 (not b_next!36303) (not b_next!36305) (not b_next!36329) (not b_next!36341) b_and!96597 (not b_next!36333) b_and!96567 (not b_next!36307) b_and!96601 (not b_next!36309) (not b_next!36335) b_and!96593 b_and!96595 (not b_next!36327) (not b_next!36337) b_and!96605 b_and!96571 (not b_next!36331) b_and!96591)
