; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!134748 () Bool)

(assert start!134748)

(declare-fun e!924290 () Bool)

(declare-fun e!924292 () Bool)

(declare-datatypes ((C!8106 0))(
  ( (C!8107 (val!4623 Int)) )
))
(declare-datatypes ((List!15123 0))(
  ( (Nil!15057) (Cons!15057 (h!20458 C!8106) (t!130452 List!15123)) )
))
(declare-datatypes ((IArray!10257 0))(
  ( (IArray!10258 (innerList!5186 List!15123)) )
))
(declare-datatypes ((Conc!5126 0))(
  ( (Node!5126 (left!12814 Conc!5126) (right!13144 Conc!5126) (csize!10482 Int) (cheight!5337 Int)) (Leaf!7653 (xs!7867 IArray!10257) (csize!10483 Int)) (Empty!5126) )
))
(declare-datatypes ((BalanceConc!10192 0))(
  ( (BalanceConc!10193 (c!238631 Conc!5126)) )
))
(declare-datatypes ((List!15124 0))(
  ( (Nil!15058) (Cons!15058 (h!20459 (_ BitVec 16)) (t!130453 List!15124)) )
))
(declare-datatypes ((TokenValue!2740 0))(
  ( (FloatLiteralValue!5480 (text!19625 List!15124)) (TokenValueExt!2739 (__x!9270 Int)) (Broken!13700 (value!85148 List!15124)) (Object!2805) (End!2740) (Def!2740) (Underscore!2740) (Match!2740) (Else!2740) (Error!2740) (Case!2740) (If!2740) (Extends!2740) (Abstract!2740) (Class!2740) (Val!2740) (DelimiterValue!5480 (del!2800 List!15124)) (KeywordValue!2746 (value!85149 List!15124)) (CommentValue!5480 (value!85150 List!15124)) (WhitespaceValue!5480 (value!85151 List!15124)) (IndentationValue!2740 (value!85152 List!15124)) (String!17957) (Int32!2740) (Broken!13701 (value!85153 List!15124)) (Boolean!2741) (Unit!23967) (OperatorValue!2743 (op!2800 List!15124)) (IdentifierValue!5480 (value!85154 List!15124)) (IdentifierValue!5481 (value!85155 List!15124)) (WhitespaceValue!5481 (value!85156 List!15124)) (True!5480) (False!5480) (Broken!13702 (value!85157 List!15124)) (Broken!13703 (value!85158 List!15124)) (True!5481) (RightBrace!2740) (RightBracket!2740) (Colon!2740) (Null!2740) (Comma!2740) (LeftBracket!2740) (False!5481) (LeftBrace!2740) (ImaginaryLiteralValue!2740 (text!19626 List!15124)) (StringLiteralValue!8220 (value!85159 List!15124)) (EOFValue!2740 (value!85160 List!15124)) (IdentValue!2740 (value!85161 List!15124)) (DelimiterValue!5481 (value!85162 List!15124)) (DedentValue!2740 (value!85163 List!15124)) (NewLineValue!2740 (value!85164 List!15124)) (IntegerValue!8220 (value!85165 (_ BitVec 32)) (text!19627 List!15124)) (IntegerValue!8221 (value!85166 Int) (text!19628 List!15124)) (Times!2740) (Or!2740) (Equal!2740) (Minus!2740) (Broken!13704 (value!85167 List!15124)) (And!2740) (Div!2740) (LessEqual!2740) (Mod!2740) (Concat!6704) (Not!2740) (Plus!2740) (SpaceValue!2740 (value!85168 List!15124)) (IntegerValue!8222 (value!85169 Int) (text!19629 List!15124)) (StringLiteralValue!8221 (text!19630 List!15124)) (FloatLiteralValue!5481 (text!19631 List!15124)) (BytesLiteralValue!2740 (value!85170 List!15124)) (CommentValue!5481 (value!85171 List!15124)) (StringLiteralValue!8222 (value!85172 List!15124)) (ErrorTokenValue!2740 (msg!2801 List!15124)) )
))
(declare-datatypes ((Regex!3964 0))(
  ( (ElementMatch!3964 (c!238632 C!8106)) (Concat!6705 (regOne!8440 Regex!3964) (regTwo!8440 Regex!3964)) (EmptyExpr!3964) (Star!3964 (reg!4293 Regex!3964)) (EmptyLang!3964) (Union!3964 (regOne!8441 Regex!3964) (regTwo!8441 Regex!3964)) )
))
(declare-datatypes ((String!17958 0))(
  ( (String!17959 (value!85173 String)) )
))
(declare-datatypes ((TokenValueInjection!5140 0))(
  ( (TokenValueInjection!5141 (toValue!3957 Int) (toChars!3816 Int)) )
))
(declare-datatypes ((Rule!5100 0))(
  ( (Rule!5101 (regex!2650 Regex!3964) (tag!2914 String!17958) (isSeparator!2650 Bool) (transformation!2650 TokenValueInjection!5140)) )
))
(declare-datatypes ((Token!4962 0))(
  ( (Token!4963 (value!85174 TokenValue!2740) (rule!4423 Rule!5100) (size!12326 Int) (originalCharacters!3512 List!15123)) )
))
(declare-datatypes ((List!15125 0))(
  ( (Nil!15059) (Cons!15059 (h!20460 Token!4962) (t!130454 List!15125)) )
))
(declare-datatypes ((IArray!10259 0))(
  ( (IArray!10260 (innerList!5187 List!15125)) )
))
(declare-datatypes ((Conc!5127 0))(
  ( (Node!5127 (left!12815 Conc!5127) (right!13145 Conc!5127) (csize!10484 Int) (cheight!5338 Int)) (Leaf!7654 (xs!7868 IArray!10259) (csize!10485 Int)) (Empty!5127) )
))
(declare-datatypes ((BalanceConc!10194 0))(
  ( (BalanceConc!10195 (c!238633 Conc!5127)) )
))
(declare-datatypes ((List!15126 0))(
  ( (Nil!15060) (Cons!15060 (h!20461 Rule!5100) (t!130455 List!15126)) )
))
(declare-datatypes ((PrintableTokens!1082 0))(
  ( (PrintableTokens!1083 (rules!11541 List!15126) (tokens!2039 BalanceConc!10194)) )
))
(declare-fun thiss!10022 () PrintableTokens!1082)

(declare-fun tp!408662 () Bool)

(declare-fun b!1448721 () Bool)

(declare-fun inv!20079 (BalanceConc!10194) Bool)

(assert (=> b!1448721 (= e!924290 (and tp!408662 (inv!20079 (tokens!2039 thiss!10022)) e!924292))))

(declare-fun res!655902 () Bool)

(declare-fun e!924291 () Bool)

(assert (=> start!134748 (=> (not res!655902) (not e!924291))))

(declare-fun other!32 () PrintableTokens!1082)

(assert (=> start!134748 (= res!655902 (= (rules!11541 thiss!10022) (rules!11541 other!32)))))

(assert (=> start!134748 e!924291))

(declare-fun inv!20080 (PrintableTokens!1082) Bool)

(assert (=> start!134748 (and (inv!20080 thiss!10022) e!924290)))

(declare-fun e!924288 () Bool)

(assert (=> start!134748 (and (inv!20080 other!32) e!924288)))

(declare-fun b!1448722 () Bool)

(declare-fun e!924289 () Bool)

(declare-fun isEmpty!9398 (List!15126) Bool)

(assert (=> b!1448722 (= e!924289 (not (not (isEmpty!9398 (rules!11541 thiss!10022)))))))

(declare-fun lt!499439 () Token!4962)

(declare-fun head!2942 (BalanceConc!10194) Token!4962)

(assert (=> b!1448722 (= lt!499439 (head!2942 (tokens!2039 other!32)))))

(declare-fun lt!499434 () List!15125)

(declare-fun list!6012 (BalanceConc!10194) List!15125)

(assert (=> b!1448722 (= lt!499434 (list!6012 (tokens!2039 other!32)))))

(declare-fun lt!499438 () Token!4962)

(declare-datatypes ((LexerInterface!2306 0))(
  ( (LexerInterfaceExt!2303 (__x!9271 Int)) (Lexer!2304) )
))
(declare-fun rulesProduceIndividualToken!1225 (LexerInterface!2306 List!15126 Token!4962) Bool)

(assert (=> b!1448722 (rulesProduceIndividualToken!1225 Lexer!2304 (rules!11541 thiss!10022) lt!499438)))

(declare-fun lt!499437 () List!15125)

(declare-datatypes ((Unit!23968 0))(
  ( (Unit!23969) )
))
(declare-fun lt!499440 () Unit!23968)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!408 (LexerInterface!2306 List!15126 List!15125 Token!4962) Unit!23968)

(assert (=> b!1448722 (= lt!499440 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!408 Lexer!2304 (rules!11541 thiss!10022) lt!499437 lt!499438))))

(declare-fun last!210 (BalanceConc!10194) Token!4962)

(assert (=> b!1448722 (= lt!499438 (last!210 (tokens!2039 thiss!10022)))))

(assert (=> b!1448722 (= lt!499437 (list!6012 (tokens!2039 thiss!10022)))))

(declare-fun b!1448723 () Bool)

(declare-fun e!924287 () Bool)

(declare-fun tp!408659 () Bool)

(declare-fun inv!20081 (Conc!5127) Bool)

(assert (=> b!1448723 (= e!924287 (and (inv!20081 (c!238633 (tokens!2039 other!32))) tp!408659))))

(declare-fun b!1448724 () Bool)

(assert (=> b!1448724 (= e!924291 e!924289)))

(declare-fun res!655903 () Bool)

(assert (=> b!1448724 (=> (not res!655903) (not e!924289))))

(declare-fun isEmpty!9399 (BalanceConc!10194) Bool)

(assert (=> b!1448724 (= res!655903 (not (isEmpty!9399 (tokens!2039 other!32))))))

(declare-fun lt!499435 () Unit!23968)

(declare-fun lemmaInvariant!346 (PrintableTokens!1082) Unit!23968)

(assert (=> b!1448724 (= lt!499435 (lemmaInvariant!346 thiss!10022))))

(declare-fun lt!499436 () Unit!23968)

(assert (=> b!1448724 (= lt!499436 (lemmaInvariant!346 other!32))))

(declare-fun b!1448725 () Bool)

(declare-fun tp!408660 () Bool)

(assert (=> b!1448725 (= e!924292 (and (inv!20081 (c!238633 (tokens!2039 thiss!10022))) tp!408660))))

(declare-fun b!1448726 () Bool)

(declare-fun tp!408661 () Bool)

(assert (=> b!1448726 (= e!924288 (and tp!408661 (inv!20079 (tokens!2039 other!32)) e!924287))))

(declare-fun b!1448727 () Bool)

(declare-fun res!655901 () Bool)

(assert (=> b!1448727 (=> (not res!655901) (not e!924289))))

(assert (=> b!1448727 (= res!655901 (not (isEmpty!9399 (tokens!2039 thiss!10022))))))

(assert (= (and start!134748 res!655902) b!1448724))

(assert (= (and b!1448724 res!655903) b!1448727))

(assert (= (and b!1448727 res!655901) b!1448722))

(assert (= b!1448721 b!1448725))

(assert (= start!134748 b!1448721))

(assert (= b!1448726 b!1448723))

(assert (= start!134748 b!1448726))

(declare-fun m!1671617 () Bool)

(assert (=> b!1448727 m!1671617))

(declare-fun m!1671619 () Bool)

(assert (=> b!1448724 m!1671619))

(declare-fun m!1671621 () Bool)

(assert (=> b!1448724 m!1671621))

(declare-fun m!1671623 () Bool)

(assert (=> b!1448724 m!1671623))

(declare-fun m!1671625 () Bool)

(assert (=> b!1448726 m!1671625))

(declare-fun m!1671627 () Bool)

(assert (=> b!1448721 m!1671627))

(declare-fun m!1671629 () Bool)

(assert (=> b!1448722 m!1671629))

(declare-fun m!1671631 () Bool)

(assert (=> b!1448722 m!1671631))

(declare-fun m!1671633 () Bool)

(assert (=> b!1448722 m!1671633))

(declare-fun m!1671635 () Bool)

(assert (=> b!1448722 m!1671635))

(declare-fun m!1671637 () Bool)

(assert (=> b!1448722 m!1671637))

(declare-fun m!1671639 () Bool)

(assert (=> b!1448722 m!1671639))

(declare-fun m!1671641 () Bool)

(assert (=> b!1448722 m!1671641))

(declare-fun m!1671643 () Bool)

(assert (=> start!134748 m!1671643))

(declare-fun m!1671645 () Bool)

(assert (=> start!134748 m!1671645))

(declare-fun m!1671647 () Bool)

(assert (=> b!1448725 m!1671647))

(declare-fun m!1671649 () Bool)

(assert (=> b!1448723 m!1671649))

(push 1)

(assert (not start!134748))

(assert (not b!1448723))

(assert (not b!1448721))

(assert (not b!1448722))

(assert (not b!1448725))

(assert (not b!1448724))

(assert (not b!1448727))

(assert (not b!1448726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!420615 () Bool)

(declare-fun lt!499464 () Bool)

(declare-fun isEmpty!9402 (List!15125) Bool)

(assert (=> d!420615 (= lt!499464 (isEmpty!9402 (list!6012 (tokens!2039 other!32))))))

(declare-fun isEmpty!9403 (Conc!5127) Bool)

(assert (=> d!420615 (= lt!499464 (isEmpty!9403 (c!238633 (tokens!2039 other!32))))))

(assert (=> d!420615 (= (isEmpty!9399 (tokens!2039 other!32)) lt!499464)))

(declare-fun bs!342406 () Bool)

(assert (= bs!342406 d!420615))

(assert (=> bs!342406 m!1671635))

(assert (=> bs!342406 m!1671635))

(declare-fun m!1671685 () Bool)

(assert (=> bs!342406 m!1671685))

(declare-fun m!1671687 () Bool)

(assert (=> bs!342406 m!1671687))

(assert (=> b!1448724 d!420615))

(declare-fun d!420617 () Bool)

(declare-fun e!924313 () Bool)

(assert (=> d!420617 e!924313))

(declare-fun res!655921 () Bool)

(assert (=> d!420617 (=> (not res!655921) (not e!924313))))

(declare-fun rulesInvariant!2142 (LexerInterface!2306 List!15126) Bool)

(assert (=> d!420617 (= res!655921 (rulesInvariant!2142 Lexer!2304 (rules!11541 thiss!10022)))))

(declare-fun Unit!23973 () Unit!23968)

(assert (=> d!420617 (= (lemmaInvariant!346 thiss!10022) Unit!23973)))

(declare-fun b!1448753 () Bool)

(declare-fun res!655922 () Bool)

(assert (=> b!1448753 (=> (not res!655922) (not e!924313))))

(declare-fun rulesProduceEachTokenIndividually!859 (LexerInterface!2306 List!15126 BalanceConc!10194) Bool)

(assert (=> b!1448753 (= res!655922 (rulesProduceEachTokenIndividually!859 Lexer!2304 (rules!11541 thiss!10022) (tokens!2039 thiss!10022)))))

(declare-fun b!1448754 () Bool)

(declare-fun separableTokens!243 (LexerInterface!2306 BalanceConc!10194 List!15126) Bool)

(assert (=> b!1448754 (= e!924313 (separableTokens!243 Lexer!2304 (tokens!2039 thiss!10022) (rules!11541 thiss!10022)))))

(assert (= (and d!420617 res!655921) b!1448753))

(assert (= (and b!1448753 res!655922) b!1448754))

(declare-fun m!1671689 () Bool)

(assert (=> d!420617 m!1671689))

(declare-fun m!1671691 () Bool)

(assert (=> b!1448753 m!1671691))

(declare-fun m!1671693 () Bool)

(assert (=> b!1448754 m!1671693))

(assert (=> b!1448724 d!420617))

(declare-fun d!420621 () Bool)

(declare-fun e!924314 () Bool)

(assert (=> d!420621 e!924314))

(declare-fun res!655923 () Bool)

(assert (=> d!420621 (=> (not res!655923) (not e!924314))))

(assert (=> d!420621 (= res!655923 (rulesInvariant!2142 Lexer!2304 (rules!11541 other!32)))))

(declare-fun Unit!23974 () Unit!23968)

(assert (=> d!420621 (= (lemmaInvariant!346 other!32) Unit!23974)))

(declare-fun b!1448755 () Bool)

(declare-fun res!655924 () Bool)

(assert (=> b!1448755 (=> (not res!655924) (not e!924314))))

(assert (=> b!1448755 (= res!655924 (rulesProduceEachTokenIndividually!859 Lexer!2304 (rules!11541 other!32) (tokens!2039 other!32)))))

(declare-fun b!1448756 () Bool)

(assert (=> b!1448756 (= e!924314 (separableTokens!243 Lexer!2304 (tokens!2039 other!32) (rules!11541 other!32)))))

(assert (= (and d!420621 res!655923) b!1448755))

(assert (= (and b!1448755 res!655924) b!1448756))

(declare-fun m!1671695 () Bool)

(assert (=> d!420621 m!1671695))

(declare-fun m!1671697 () Bool)

(assert (=> b!1448755 m!1671697))

(declare-fun m!1671699 () Bool)

(assert (=> b!1448756 m!1671699))

(assert (=> b!1448724 d!420621))

(declare-fun d!420623 () Bool)

(declare-fun c!238639 () Bool)

(assert (=> d!420623 (= c!238639 (is-Node!5127 (c!238633 (tokens!2039 thiss!10022))))))

(declare-fun e!924319 () Bool)

(assert (=> d!420623 (= (inv!20081 (c!238633 (tokens!2039 thiss!10022))) e!924319)))

(declare-fun b!1448763 () Bool)

(declare-fun inv!20085 (Conc!5127) Bool)

(assert (=> b!1448763 (= e!924319 (inv!20085 (c!238633 (tokens!2039 thiss!10022))))))

(declare-fun b!1448764 () Bool)

(declare-fun e!924320 () Bool)

(assert (=> b!1448764 (= e!924319 e!924320)))

(declare-fun res!655927 () Bool)

(assert (=> b!1448764 (= res!655927 (not (is-Leaf!7654 (c!238633 (tokens!2039 thiss!10022)))))))

(assert (=> b!1448764 (=> res!655927 e!924320)))

(declare-fun b!1448765 () Bool)

(declare-fun inv!20086 (Conc!5127) Bool)

(assert (=> b!1448765 (= e!924320 (inv!20086 (c!238633 (tokens!2039 thiss!10022))))))

(assert (= (and d!420623 c!238639) b!1448763))

(assert (= (and d!420623 (not c!238639)) b!1448764))

(assert (= (and b!1448764 (not res!655927)) b!1448765))

(declare-fun m!1671701 () Bool)

(assert (=> b!1448763 m!1671701))

(declare-fun m!1671703 () Bool)

(assert (=> b!1448765 m!1671703))

(assert (=> b!1448725 d!420623))

(declare-fun d!420625 () Bool)

(declare-fun res!655934 () Bool)

(declare-fun e!924323 () Bool)

(assert (=> d!420625 (=> (not res!655934) (not e!924323))))

(assert (=> d!420625 (= res!655934 (not (isEmpty!9398 (rules!11541 thiss!10022))))))

(assert (=> d!420625 (= (inv!20080 thiss!10022) e!924323)))

(declare-fun b!1448772 () Bool)

(declare-fun res!655935 () Bool)

(assert (=> b!1448772 (=> (not res!655935) (not e!924323))))

(assert (=> b!1448772 (= res!655935 (rulesInvariant!2142 Lexer!2304 (rules!11541 thiss!10022)))))

(declare-fun b!1448773 () Bool)

(declare-fun res!655936 () Bool)

(assert (=> b!1448773 (=> (not res!655936) (not e!924323))))

(assert (=> b!1448773 (= res!655936 (rulesProduceEachTokenIndividually!859 Lexer!2304 (rules!11541 thiss!10022) (tokens!2039 thiss!10022)))))

(declare-fun b!1448774 () Bool)

(assert (=> b!1448774 (= e!924323 (separableTokens!243 Lexer!2304 (tokens!2039 thiss!10022) (rules!11541 thiss!10022)))))

(assert (= (and d!420625 res!655934) b!1448772))

(assert (= (and b!1448772 res!655935) b!1448773))

(assert (= (and b!1448773 res!655936) b!1448774))

(assert (=> d!420625 m!1671641))

(assert (=> b!1448772 m!1671689))

(assert (=> b!1448773 m!1671691))

(assert (=> b!1448774 m!1671693))

(assert (=> start!134748 d!420625))

(declare-fun d!420627 () Bool)

(declare-fun res!655937 () Bool)

(declare-fun e!924324 () Bool)

(assert (=> d!420627 (=> (not res!655937) (not e!924324))))

(assert (=> d!420627 (= res!655937 (not (isEmpty!9398 (rules!11541 other!32))))))

(assert (=> d!420627 (= (inv!20080 other!32) e!924324)))

(declare-fun b!1448775 () Bool)

(declare-fun res!655938 () Bool)

(assert (=> b!1448775 (=> (not res!655938) (not e!924324))))

(assert (=> b!1448775 (= res!655938 (rulesInvariant!2142 Lexer!2304 (rules!11541 other!32)))))

(declare-fun b!1448776 () Bool)

(declare-fun res!655939 () Bool)

(assert (=> b!1448776 (=> (not res!655939) (not e!924324))))

(assert (=> b!1448776 (= res!655939 (rulesProduceEachTokenIndividually!859 Lexer!2304 (rules!11541 other!32) (tokens!2039 other!32)))))

(declare-fun b!1448777 () Bool)

(assert (=> b!1448777 (= e!924324 (separableTokens!243 Lexer!2304 (tokens!2039 other!32) (rules!11541 other!32)))))

(assert (= (and d!420627 res!655937) b!1448775))

(assert (= (and b!1448775 res!655938) b!1448776))

(assert (= (and b!1448776 res!655939) b!1448777))

(declare-fun m!1671705 () Bool)

(assert (=> d!420627 m!1671705))

(assert (=> b!1448775 m!1671695))

(assert (=> b!1448776 m!1671697))

(assert (=> b!1448777 m!1671699))

(assert (=> start!134748 d!420627))

(declare-fun d!420629 () Bool)

(declare-fun isBalanced!1529 (Conc!5127) Bool)

(assert (=> d!420629 (= (inv!20079 (tokens!2039 other!32)) (isBalanced!1529 (c!238633 (tokens!2039 other!32))))))

(declare-fun bs!342407 () Bool)

(assert (= bs!342407 d!420629))

(declare-fun m!1671707 () Bool)

(assert (=> bs!342407 m!1671707))

(assert (=> b!1448726 d!420629))

(declare-fun d!420631 () Bool)

(assert (=> d!420631 (= (inv!20079 (tokens!2039 thiss!10022)) (isBalanced!1529 (c!238633 (tokens!2039 thiss!10022))))))

(declare-fun bs!342408 () Bool)

(assert (= bs!342408 d!420631))

(declare-fun m!1671709 () Bool)

(assert (=> bs!342408 m!1671709))

(assert (=> b!1448721 d!420631))

(declare-fun d!420633 () Bool)

(assert (=> d!420633 (rulesProduceIndividualToken!1225 Lexer!2304 (rules!11541 thiss!10022) lt!499438)))

(declare-fun lt!499467 () Unit!23968)

(declare-fun choose!8920 (LexerInterface!2306 List!15126 List!15125 Token!4962) Unit!23968)

(assert (=> d!420633 (= lt!499467 (choose!8920 Lexer!2304 (rules!11541 thiss!10022) lt!499437 lt!499438))))

(assert (=> d!420633 (not (isEmpty!9398 (rules!11541 thiss!10022)))))

(assert (=> d!420633 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!408 Lexer!2304 (rules!11541 thiss!10022) lt!499437 lt!499438) lt!499467)))

(declare-fun bs!342409 () Bool)

(assert (= bs!342409 d!420633))

(assert (=> bs!342409 m!1671629))

(declare-fun m!1671729 () Bool)

(assert (=> bs!342409 m!1671729))

(assert (=> bs!342409 m!1671641))

(assert (=> b!1448722 d!420633))

(declare-fun d!420641 () Bool)

(declare-fun list!6014 (Conc!5127) List!15125)

(assert (=> d!420641 (= (list!6012 (tokens!2039 other!32)) (list!6014 (c!238633 (tokens!2039 other!32))))))

(declare-fun bs!342410 () Bool)

(assert (= bs!342410 d!420641))

(declare-fun m!1671731 () Bool)

(assert (=> bs!342410 m!1671731))

(assert (=> b!1448722 d!420641))

(declare-fun d!420643 () Bool)

(declare-fun lt!499470 () Token!4962)

(declare-fun last!212 (List!15125) Token!4962)

(assert (=> d!420643 (= lt!499470 (last!212 (list!6012 (tokens!2039 thiss!10022))))))

(declare-fun last!213 (Conc!5127) Token!4962)

(assert (=> d!420643 (= lt!499470 (last!213 (c!238633 (tokens!2039 thiss!10022))))))

(assert (=> d!420643 (not (isEmpty!9399 (tokens!2039 thiss!10022)))))

(assert (=> d!420643 (= (last!210 (tokens!2039 thiss!10022)) lt!499470)))

(declare-fun bs!342411 () Bool)

(assert (= bs!342411 d!420643))

(assert (=> bs!342411 m!1671639))

(assert (=> bs!342411 m!1671639))

(declare-fun m!1671733 () Bool)

(assert (=> bs!342411 m!1671733))

(declare-fun m!1671735 () Bool)

(assert (=> bs!342411 m!1671735))

(assert (=> bs!342411 m!1671617))

(assert (=> b!1448722 d!420643))

(declare-fun d!420645 () Bool)

(assert (=> d!420645 (= (list!6012 (tokens!2039 thiss!10022)) (list!6014 (c!238633 (tokens!2039 thiss!10022))))))

(declare-fun bs!342412 () Bool)

(assert (= bs!342412 d!420645))

(declare-fun m!1671737 () Bool)

(assert (=> bs!342412 m!1671737))

(assert (=> b!1448722 d!420645))

(declare-fun d!420647 () Bool)

(assert (=> d!420647 (= (isEmpty!9398 (rules!11541 thiss!10022)) (is-Nil!15060 (rules!11541 thiss!10022)))))

(assert (=> b!1448722 d!420647))

(declare-fun d!420649 () Bool)

(declare-fun lt!499473 () Token!4962)

(declare-fun head!2944 (List!15125) Token!4962)

(assert (=> d!420649 (= lt!499473 (head!2944 (list!6012 (tokens!2039 other!32))))))

(declare-fun head!2945 (Conc!5127) Token!4962)

(assert (=> d!420649 (= lt!499473 (head!2945 (c!238633 (tokens!2039 other!32))))))

(assert (=> d!420649 (not (isEmpty!9399 (tokens!2039 other!32)))))

(assert (=> d!420649 (= (head!2942 (tokens!2039 other!32)) lt!499473)))

(declare-fun bs!342413 () Bool)

(assert (= bs!342413 d!420649))

(assert (=> bs!342413 m!1671635))

(assert (=> bs!342413 m!1671635))

(declare-fun m!1671739 () Bool)

(assert (=> bs!342413 m!1671739))

(declare-fun m!1671741 () Bool)

(assert (=> bs!342413 m!1671741))

(assert (=> bs!342413 m!1671619))

(assert (=> b!1448722 d!420649))

(declare-fun d!420651 () Bool)

(declare-fun lt!499482 () Bool)

(declare-fun e!924339 () Bool)

(assert (=> d!420651 (= lt!499482 e!924339)))

(declare-fun res!655961 () Bool)

(assert (=> d!420651 (=> (not res!655961) (not e!924339))))

(declare-datatypes ((tuple2!14180 0))(
  ( (tuple2!14181 (_1!7976 BalanceConc!10194) (_2!7976 BalanceConc!10192)) )
))
(declare-fun lex!1055 (LexerInterface!2306 List!15126 BalanceConc!10192) tuple2!14180)

(declare-fun print!1082 (LexerInterface!2306 BalanceConc!10194) BalanceConc!10192)

(declare-fun singletonSeq!1246 (Token!4962) BalanceConc!10194)

(assert (=> d!420651 (= res!655961 (= (list!6012 (_1!7976 (lex!1055 Lexer!2304 (rules!11541 thiss!10022) (print!1082 Lexer!2304 (singletonSeq!1246 lt!499438))))) (list!6012 (singletonSeq!1246 lt!499438))))))

(declare-fun e!924340 () Bool)

(assert (=> d!420651 (= lt!499482 e!924340)))

(declare-fun res!655963 () Bool)

(assert (=> d!420651 (=> (not res!655963) (not e!924340))))

(declare-fun lt!499481 () tuple2!14180)

(declare-fun size!12328 (BalanceConc!10194) Int)

(assert (=> d!420651 (= res!655963 (= (size!12328 (_1!7976 lt!499481)) 1))))

(assert (=> d!420651 (= lt!499481 (lex!1055 Lexer!2304 (rules!11541 thiss!10022) (print!1082 Lexer!2304 (singletonSeq!1246 lt!499438))))))

(assert (=> d!420651 (not (isEmpty!9398 (rules!11541 thiss!10022)))))

(assert (=> d!420651 (= (rulesProduceIndividualToken!1225 Lexer!2304 (rules!11541 thiss!10022) lt!499438) lt!499482)))

(declare-fun b!1448805 () Bool)

(declare-fun res!655962 () Bool)

(assert (=> b!1448805 (=> (not res!655962) (not e!924340))))

(declare-fun apply!3883 (BalanceConc!10194 Int) Token!4962)

(assert (=> b!1448805 (= res!655962 (= (apply!3883 (_1!7976 lt!499481) 0) lt!499438))))

(declare-fun b!1448806 () Bool)

(declare-fun isEmpty!9404 (BalanceConc!10192) Bool)

(assert (=> b!1448806 (= e!924340 (isEmpty!9404 (_2!7976 lt!499481)))))

(declare-fun b!1448807 () Bool)

(assert (=> b!1448807 (= e!924339 (isEmpty!9404 (_2!7976 (lex!1055 Lexer!2304 (rules!11541 thiss!10022) (print!1082 Lexer!2304 (singletonSeq!1246 lt!499438))))))))

(assert (= (and d!420651 res!655963) b!1448805))

(assert (= (and b!1448805 res!655962) b!1448806))

(assert (= (and d!420651 res!655961) b!1448807))

(declare-fun m!1671745 () Bool)

(assert (=> d!420651 m!1671745))

(declare-fun m!1671747 () Bool)

(assert (=> d!420651 m!1671747))

(declare-fun m!1671749 () Bool)

(assert (=> d!420651 m!1671749))

(assert (=> d!420651 m!1671641))

(declare-fun m!1671751 () Bool)

(assert (=> d!420651 m!1671751))

(declare-fun m!1671753 () Bool)

(assert (=> d!420651 m!1671753))

(assert (=> d!420651 m!1671749))

(assert (=> d!420651 m!1671745))

(assert (=> d!420651 m!1671749))

(declare-fun m!1671755 () Bool)

(assert (=> d!420651 m!1671755))

(declare-fun m!1671757 () Bool)

(assert (=> b!1448805 m!1671757))

(declare-fun m!1671759 () Bool)

(assert (=> b!1448806 m!1671759))

(assert (=> b!1448807 m!1671749))

(assert (=> b!1448807 m!1671749))

(assert (=> b!1448807 m!1671745))

(assert (=> b!1448807 m!1671745))

(assert (=> b!1448807 m!1671747))

(declare-fun m!1671761 () Bool)

(assert (=> b!1448807 m!1671761))

(assert (=> b!1448722 d!420651))

(declare-fun d!420655 () Bool)

(declare-fun lt!499483 () Bool)

(assert (=> d!420655 (= lt!499483 (isEmpty!9402 (list!6012 (tokens!2039 thiss!10022))))))

(assert (=> d!420655 (= lt!499483 (isEmpty!9403 (c!238633 (tokens!2039 thiss!10022))))))

(assert (=> d!420655 (= (isEmpty!9399 (tokens!2039 thiss!10022)) lt!499483)))

(declare-fun bs!342415 () Bool)

(assert (= bs!342415 d!420655))

(assert (=> bs!342415 m!1671639))

(assert (=> bs!342415 m!1671639))

(declare-fun m!1671763 () Bool)

(assert (=> bs!342415 m!1671763))

(declare-fun m!1671765 () Bool)

(assert (=> bs!342415 m!1671765))

(assert (=> b!1448727 d!420655))

(declare-fun d!420657 () Bool)

(declare-fun c!238643 () Bool)

(assert (=> d!420657 (= c!238643 (is-Node!5127 (c!238633 (tokens!2039 other!32))))))

(declare-fun e!924341 () Bool)

(assert (=> d!420657 (= (inv!20081 (c!238633 (tokens!2039 other!32))) e!924341)))

(declare-fun b!1448808 () Bool)

(assert (=> b!1448808 (= e!924341 (inv!20085 (c!238633 (tokens!2039 other!32))))))

(declare-fun b!1448809 () Bool)

(declare-fun e!924342 () Bool)

(assert (=> b!1448809 (= e!924341 e!924342)))

(declare-fun res!655964 () Bool)

(assert (=> b!1448809 (= res!655964 (not (is-Leaf!7654 (c!238633 (tokens!2039 other!32)))))))

(assert (=> b!1448809 (=> res!655964 e!924342)))

(declare-fun b!1448810 () Bool)

(assert (=> b!1448810 (= e!924342 (inv!20086 (c!238633 (tokens!2039 other!32))))))

(assert (= (and d!420657 c!238643) b!1448808))

(assert (= (and d!420657 (not c!238643)) b!1448809))

(assert (= (and b!1448809 (not res!655964)) b!1448810))

(declare-fun m!1671767 () Bool)

(assert (=> b!1448808 m!1671767))

(declare-fun m!1671769 () Bool)

(assert (=> b!1448810 m!1671769))

(assert (=> b!1448723 d!420657))

(declare-fun tp!408681 () Bool)

(declare-fun b!1448819 () Bool)

(declare-fun e!924348 () Bool)

(declare-fun tp!408683 () Bool)

(assert (=> b!1448819 (= e!924348 (and (inv!20081 (left!12815 (c!238633 (tokens!2039 thiss!10022)))) tp!408681 (inv!20081 (right!13145 (c!238633 (tokens!2039 thiss!10022)))) tp!408683))))

(declare-fun b!1448821 () Bool)

(declare-fun e!924347 () Bool)

(declare-fun tp!408682 () Bool)

(assert (=> b!1448821 (= e!924347 tp!408682)))

(declare-fun b!1448820 () Bool)

(declare-fun inv!20087 (IArray!10259) Bool)

(assert (=> b!1448820 (= e!924348 (and (inv!20087 (xs!7868 (c!238633 (tokens!2039 thiss!10022)))) e!924347))))

(assert (=> b!1448725 (= tp!408660 (and (inv!20081 (c!238633 (tokens!2039 thiss!10022))) e!924348))))

(assert (= (and b!1448725 (is-Node!5127 (c!238633 (tokens!2039 thiss!10022)))) b!1448819))

(assert (= b!1448820 b!1448821))

(assert (= (and b!1448725 (is-Leaf!7654 (c!238633 (tokens!2039 thiss!10022)))) b!1448820))

(declare-fun m!1671771 () Bool)

(assert (=> b!1448819 m!1671771))

(declare-fun m!1671773 () Bool)

(assert (=> b!1448819 m!1671773))

(declare-fun m!1671775 () Bool)

(assert (=> b!1448820 m!1671775))

(assert (=> b!1448725 m!1671647))

(declare-fun b!1448832 () Bool)

(declare-fun b_free!35975 () Bool)

(declare-fun b_next!36679 () Bool)

(assert (=> b!1448832 (= b_free!35975 (not b_next!36679))))

(declare-fun tp!408695 () Bool)

(declare-fun b_and!98039 () Bool)

(assert (=> b!1448832 (= tp!408695 b_and!98039)))

(declare-fun b_free!35977 () Bool)

(declare-fun b_next!36681 () Bool)

(assert (=> b!1448832 (= b_free!35977 (not b_next!36681))))

(declare-fun tp!408694 () Bool)

(declare-fun b_and!98041 () Bool)

(assert (=> b!1448832 (= tp!408694 b_and!98041)))

(declare-fun e!924359 () Bool)

(assert (=> b!1448832 (= e!924359 (and tp!408695 tp!408694))))

(declare-fun e!924358 () Bool)

(declare-fun b!1448831 () Bool)

(declare-fun tp!408692 () Bool)

(declare-fun inv!20076 (String!17958) Bool)

(declare-fun inv!20088 (TokenValueInjection!5140) Bool)

(assert (=> b!1448831 (= e!924358 (and tp!408692 (inv!20076 (tag!2914 (h!20461 (rules!11541 other!32)))) (inv!20088 (transformation!2650 (h!20461 (rules!11541 other!32)))) e!924359))))

(declare-fun b!1448830 () Bool)

(declare-fun e!924357 () Bool)

(declare-fun tp!408693 () Bool)

(assert (=> b!1448830 (= e!924357 (and e!924358 tp!408693))))

(assert (=> b!1448726 (= tp!408661 e!924357)))

(assert (= b!1448831 b!1448832))

(assert (= b!1448830 b!1448831))

(assert (= (and b!1448726 (is-Cons!15060 (rules!11541 other!32))) b!1448830))

(declare-fun m!1671777 () Bool)

(assert (=> b!1448831 m!1671777))

(declare-fun m!1671779 () Bool)

(assert (=> b!1448831 m!1671779))

(declare-fun b!1448835 () Bool)

(declare-fun b_free!35979 () Bool)

(declare-fun b_next!36683 () Bool)

(assert (=> b!1448835 (= b_free!35979 (not b_next!36683))))

(declare-fun tp!408699 () Bool)

(declare-fun b_and!98043 () Bool)

(assert (=> b!1448835 (= tp!408699 b_and!98043)))

(declare-fun b_free!35981 () Bool)

(declare-fun b_next!36685 () Bool)

(assert (=> b!1448835 (= b_free!35981 (not b_next!36685))))

(declare-fun tp!408698 () Bool)

(declare-fun b_and!98045 () Bool)

(assert (=> b!1448835 (= tp!408698 b_and!98045)))

(declare-fun e!924363 () Bool)

(assert (=> b!1448835 (= e!924363 (and tp!408699 tp!408698))))

(declare-fun tp!408696 () Bool)

(declare-fun e!924362 () Bool)

(declare-fun b!1448834 () Bool)

(assert (=> b!1448834 (= e!924362 (and tp!408696 (inv!20076 (tag!2914 (h!20461 (rules!11541 thiss!10022)))) (inv!20088 (transformation!2650 (h!20461 (rules!11541 thiss!10022)))) e!924363))))

(declare-fun b!1448833 () Bool)

(declare-fun e!924361 () Bool)

(declare-fun tp!408697 () Bool)

(assert (=> b!1448833 (= e!924361 (and e!924362 tp!408697))))

(assert (=> b!1448721 (= tp!408662 e!924361)))

(assert (= b!1448834 b!1448835))

(assert (= b!1448833 b!1448834))

(assert (= (and b!1448721 (is-Cons!15060 (rules!11541 thiss!10022))) b!1448833))

(declare-fun m!1671781 () Bool)

(assert (=> b!1448834 m!1671781))

(declare-fun m!1671783 () Bool)

(assert (=> b!1448834 m!1671783))

(declare-fun tp!408700 () Bool)

(declare-fun e!924366 () Bool)

(declare-fun b!1448836 () Bool)

(declare-fun tp!408702 () Bool)

(assert (=> b!1448836 (= e!924366 (and (inv!20081 (left!12815 (c!238633 (tokens!2039 other!32)))) tp!408700 (inv!20081 (right!13145 (c!238633 (tokens!2039 other!32)))) tp!408702))))

(declare-fun b!1448838 () Bool)

(declare-fun e!924365 () Bool)

(declare-fun tp!408701 () Bool)

(assert (=> b!1448838 (= e!924365 tp!408701)))

(declare-fun b!1448837 () Bool)

(assert (=> b!1448837 (= e!924366 (and (inv!20087 (xs!7868 (c!238633 (tokens!2039 other!32)))) e!924365))))

(assert (=> b!1448723 (= tp!408659 (and (inv!20081 (c!238633 (tokens!2039 other!32))) e!924366))))

(assert (= (and b!1448723 (is-Node!5127 (c!238633 (tokens!2039 other!32)))) b!1448836))

(assert (= b!1448837 b!1448838))

(assert (= (and b!1448723 (is-Leaf!7654 (c!238633 (tokens!2039 other!32)))) b!1448837))

(declare-fun m!1671785 () Bool)

(assert (=> b!1448836 m!1671785))

(declare-fun m!1671787 () Bool)

(assert (=> b!1448836 m!1671787))

(declare-fun m!1671789 () Bool)

(assert (=> b!1448837 m!1671789))

(assert (=> b!1448723 m!1671649))

(push 1)

(assert (not b!1448776))

(assert b_and!98045)

(assert (not b!1448755))

(assert (not b!1448777))

(assert (not b!1448763))

(assert b_and!98041)

(assert (not b!1448754))

(assert (not b!1448765))

(assert b_and!98043)

(assert (not b_next!36685))

(assert (not d!420625))

(assert (not b!1448774))

(assert (not b!1448756))

(assert (not b!1448725))

(assert (not d!420633))

(assert (not b_next!36683))

(assert (not d!420627))

(assert (not d!420645))

(assert (not b!1448830))

(assert (not b!1448806))

(assert (not d!420617))

(assert (not d!420621))

(assert (not b!1448837))

(assert (not d!420615))

(assert (not d!420631))

(assert (not b!1448834))

(assert (not d!420655))

(assert (not b!1448831))

(assert (not b!1448723))

(assert (not d!420651))

(assert (not b!1448821))

(assert b_and!98039)

(assert (not b!1448772))

(assert (not b!1448808))

(assert (not b!1448833))

(assert (not b_next!36679))

(assert (not d!420629))

(assert (not d!420643))

(assert (not b!1448819))

(assert (not b!1448773))

(assert (not b!1448807))

(assert (not d!420641))

(assert (not b!1448753))

(assert (not b_next!36681))

(assert (not b!1448820))

(assert (not b!1448836))

(assert (not b!1448805))

(assert (not b!1448775))

(assert (not d!420649))

(assert (not b!1448838))

(assert (not b!1448810))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!36683))

(assert b_and!98045)

(assert b_and!98039)

(assert (not b_next!36679))

(assert b_and!98041)

(assert (not b_next!36681))

(assert b_and!98043)

(assert (not b_next!36685))

(check-sat)

(pop 1)

