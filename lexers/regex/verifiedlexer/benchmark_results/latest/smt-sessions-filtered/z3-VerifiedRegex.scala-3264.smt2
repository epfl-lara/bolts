; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187922 () Bool)

(assert start!187922)

(declare-fun b!1874843 () Bool)

(declare-fun b_free!52121 () Bool)

(declare-fun b_next!52825 () Bool)

(assert (=> b!1874843 (= b_free!52121 (not b_next!52825))))

(declare-fun tp!534289 () Bool)

(declare-fun b_and!144407 () Bool)

(assert (=> b!1874843 (= tp!534289 b_and!144407)))

(declare-fun b_free!52123 () Bool)

(declare-fun b_next!52827 () Bool)

(assert (=> b!1874843 (= b_free!52123 (not b_next!52827))))

(declare-fun tp!534288 () Bool)

(declare-fun b_and!144409 () Bool)

(assert (=> b!1874843 (= tp!534288 b_and!144409)))

(declare-fun b!1874839 () Bool)

(declare-fun e!1196427 () Bool)

(declare-datatypes ((List!20931 0))(
  ( (Nil!20849) (Cons!20849 (h!26250 (_ BitVec 16)) (t!173148 List!20931)) )
))
(declare-datatypes ((TokenValue!3824 0))(
  ( (FloatLiteralValue!7648 (text!27213 List!20931)) (TokenValueExt!3823 (__x!13086 Int)) (Broken!19120 (value!116547 List!20931)) (Object!3905) (End!3824) (Def!3824) (Underscore!3824) (Match!3824) (Else!3824) (Error!3824) (Case!3824) (If!3824) (Extends!3824) (Abstract!3824) (Class!3824) (Val!3824) (DelimiterValue!7648 (del!3884 List!20931)) (KeywordValue!3830 (value!116548 List!20931)) (CommentValue!7648 (value!116549 List!20931)) (WhitespaceValue!7648 (value!116550 List!20931)) (IndentationValue!3824 (value!116551 List!20931)) (String!24069) (Int32!3824) (Broken!19121 (value!116552 List!20931)) (Boolean!3825) (Unit!35375) (OperatorValue!3827 (op!3884 List!20931)) (IdentifierValue!7648 (value!116553 List!20931)) (IdentifierValue!7649 (value!116554 List!20931)) (WhitespaceValue!7649 (value!116555 List!20931)) (True!7648) (False!7648) (Broken!19122 (value!116556 List!20931)) (Broken!19123 (value!116557 List!20931)) (True!7649) (RightBrace!3824) (RightBracket!3824) (Colon!3824) (Null!3824) (Comma!3824) (LeftBracket!3824) (False!7649) (LeftBrace!3824) (ImaginaryLiteralValue!3824 (text!27214 List!20931)) (StringLiteralValue!11472 (value!116558 List!20931)) (EOFValue!3824 (value!116559 List!20931)) (IdentValue!3824 (value!116560 List!20931)) (DelimiterValue!7649 (value!116561 List!20931)) (DedentValue!3824 (value!116562 List!20931)) (NewLineValue!3824 (value!116563 List!20931)) (IntegerValue!11472 (value!116564 (_ BitVec 32)) (text!27215 List!20931)) (IntegerValue!11473 (value!116565 Int) (text!27216 List!20931)) (Times!3824) (Or!3824) (Equal!3824) (Minus!3824) (Broken!19124 (value!116566 List!20931)) (And!3824) (Div!3824) (LessEqual!3824) (Mod!3824) (Concat!8921) (Not!3824) (Plus!3824) (SpaceValue!3824 (value!116567 List!20931)) (IntegerValue!11474 (value!116568 Int) (text!27217 List!20931)) (StringLiteralValue!11473 (text!27218 List!20931)) (FloatLiteralValue!7649 (text!27219 List!20931)) (BytesLiteralValue!3824 (value!116569 List!20931)) (CommentValue!7649 (value!116570 List!20931)) (StringLiteralValue!11474 (value!116571 List!20931)) (ErrorTokenValue!3824 (msg!3885 List!20931)) )
))
(declare-datatypes ((C!10352 0))(
  ( (C!10353 (val!6064 Int)) )
))
(declare-datatypes ((Regex!5097 0))(
  ( (ElementMatch!5097 (c!305462 C!10352)) (Concat!8922 (regOne!10706 Regex!5097) (regTwo!10706 Regex!5097)) (EmptyExpr!5097) (Star!5097 (reg!5426 Regex!5097)) (EmptyLang!5097) (Union!5097 (regOne!10707 Regex!5097) (regTwo!10707 Regex!5097)) )
))
(declare-datatypes ((String!24070 0))(
  ( (String!24071 (value!116572 String)) )
))
(declare-datatypes ((List!20932 0))(
  ( (Nil!20850) (Cons!20850 (h!26251 C!10352) (t!173149 List!20932)) )
))
(declare-datatypes ((IArray!13815 0))(
  ( (IArray!13816 (innerList!6965 List!20932)) )
))
(declare-datatypes ((Conc!6905 0))(
  ( (Node!6905 (left!16755 Conc!6905) (right!17085 Conc!6905) (csize!14040 Int) (cheight!7116 Int)) (Leaf!10170 (xs!9789 IArray!13815) (csize!14041 Int)) (Empty!6905) )
))
(declare-datatypes ((BalanceConc!13626 0))(
  ( (BalanceConc!13627 (c!305463 Conc!6905)) )
))
(declare-datatypes ((TokenValueInjection!7232 0))(
  ( (TokenValueInjection!7233 (toValue!5285 Int) (toChars!5144 Int)) )
))
(declare-datatypes ((Rule!7176 0))(
  ( (Rule!7177 (regex!3688 Regex!5097) (tag!4102 String!24070) (isSeparator!3688 Bool) (transformation!3688 TokenValueInjection!7232)) )
))
(declare-datatypes ((Token!6928 0))(
  ( (Token!6929 (value!116573 TokenValue!3824) (rule!5881 Rule!7176) (size!16539 Int) (originalCharacters!4495 List!20932)) )
))
(declare-datatypes ((List!20933 0))(
  ( (Nil!20851) (Cons!20851 (h!26252 Token!6928) (t!173150 List!20933)) )
))
(declare-datatypes ((IArray!13817 0))(
  ( (IArray!13818 (innerList!6966 List!20933)) )
))
(declare-datatypes ((Conc!6906 0))(
  ( (Node!6906 (left!16756 Conc!6906) (right!17086 Conc!6906) (csize!14042 Int) (cheight!7117 Int)) (Leaf!10171 (xs!9790 IArray!13817) (csize!14043 Int)) (Empty!6906) )
))
(declare-datatypes ((BalanceConc!13628 0))(
  ( (BalanceConc!13629 (c!305464 Conc!6906)) )
))
(declare-fun acc!408 () BalanceConc!13628)

(declare-fun tp!534287 () Bool)

(declare-fun inv!27679 (Conc!6906) Bool)

(assert (=> b!1874839 (= e!1196427 (and (inv!27679 (c!305464 acc!408)) tp!534287))))

(declare-fun b!1874840 () Bool)

(declare-fun e!1196423 () Bool)

(declare-fun v!6352 () BalanceConc!13628)

(declare-fun tp!534286 () Bool)

(assert (=> b!1874840 (= e!1196423 (and (inv!27679 (c!305464 v!6352)) tp!534286))))

(declare-fun res!838503 () Bool)

(declare-fun e!1196426 () Bool)

(assert (=> start!187922 (=> (not res!838503) (not e!1196426))))

(declare-datatypes ((LexerInterface!3310 0))(
  ( (LexerInterfaceExt!3307 (__x!13087 Int)) (Lexer!3308) )
))
(declare-fun thiss!13718 () LexerInterface!3310)

(declare-fun from!845 () Int)

(get-info :version)

(assert (=> start!187922 (= res!838503 (and ((_ is Lexer!3308) thiss!13718) (>= from!845 0)))))

(assert (=> start!187922 e!1196426))

(assert (=> start!187922 true))

(declare-fun inv!27680 (BalanceConc!13628) Bool)

(assert (=> start!187922 (and (inv!27680 acc!408) e!1196427)))

(assert (=> start!187922 (and (inv!27680 v!6352) e!1196423)))

(declare-fun separatorToken!84 () Token!6928)

(declare-fun e!1196422 () Bool)

(declare-fun inv!27681 (Token!6928) Bool)

(assert (=> start!187922 (and (inv!27681 separatorToken!84) e!1196422)))

(declare-fun e!1196421 () Bool)

(declare-fun tp!534285 () Bool)

(declare-fun b!1874841 () Bool)

(declare-fun inv!21 (TokenValue!3824) Bool)

(assert (=> b!1874841 (= e!1196422 (and (inv!21 (value!116573 separatorToken!84)) e!1196421 tp!534285))))

(declare-fun b!1874842 () Bool)

(declare-fun e!1196429 () Bool)

(assert (=> b!1874842 (= e!1196429 (not true))))

(declare-fun lt!720127 () Token!6928)

(declare-fun apply!5476 (BalanceConc!13628 Int) Token!6928)

(assert (=> b!1874842 (= lt!720127 (apply!5476 v!6352 from!845))))

(declare-fun lt!720132 () List!20933)

(declare-fun list!8502 (BalanceConc!13628) List!20933)

(assert (=> b!1874842 (= lt!720132 (list!8502 acc!408))))

(declare-fun lt!720130 () List!20933)

(declare-fun lt!720133 () List!20933)

(declare-fun tail!2888 (List!20933) List!20933)

(declare-fun drop!1008 (List!20933 Int) List!20933)

(assert (=> b!1874842 (= (tail!2888 lt!720130) (drop!1008 lt!720133 (+ 1 from!845)))))

(declare-datatypes ((Unit!35376 0))(
  ( (Unit!35377) )
))
(declare-fun lt!720131 () Unit!35376)

(declare-fun lemmaDropTail!626 (List!20933 Int) Unit!35376)

(assert (=> b!1874842 (= lt!720131 (lemmaDropTail!626 lt!720133 from!845))))

(declare-fun head!4359 (List!20933) Token!6928)

(declare-fun apply!5477 (List!20933 Int) Token!6928)

(assert (=> b!1874842 (= (head!4359 lt!720130) (apply!5477 lt!720133 from!845))))

(assert (=> b!1874842 (= lt!720130 (drop!1008 lt!720133 from!845))))

(declare-fun lt!720129 () Unit!35376)

(declare-fun lemmaDropApply!646 (List!20933 Int) Unit!35376)

(assert (=> b!1874842 (= lt!720129 (lemmaDropApply!646 lt!720133 from!845))))

(assert (=> b!1874842 (= lt!720133 (list!8502 v!6352))))

(declare-fun e!1196428 () Bool)

(assert (=> b!1874843 (= e!1196428 (and tp!534289 tp!534288))))

(declare-fun tp!534284 () Bool)

(declare-fun b!1874844 () Bool)

(declare-fun inv!27674 (String!24070) Bool)

(declare-fun inv!27682 (TokenValueInjection!7232) Bool)

(assert (=> b!1874844 (= e!1196421 (and tp!534284 (inv!27674 (tag!4102 (rule!5881 separatorToken!84))) (inv!27682 (transformation!3688 (rule!5881 separatorToken!84))) e!1196428))))

(declare-fun b!1874845 () Bool)

(assert (=> b!1874845 (= e!1196426 e!1196429)))

(declare-fun res!838502 () Bool)

(assert (=> b!1874845 (=> (not res!838502) (not e!1196429))))

(declare-fun lt!720128 () Int)

(assert (=> b!1874845 (= res!838502 (and (<= from!845 lt!720128) (isSeparator!3688 (rule!5881 separatorToken!84)) (< from!845 lt!720128)))))

(declare-fun size!16540 (BalanceConc!13628) Int)

(assert (=> b!1874845 (= lt!720128 (size!16540 v!6352))))

(assert (= (and start!187922 res!838503) b!1874845))

(assert (= (and b!1874845 res!838502) b!1874842))

(assert (= start!187922 b!1874839))

(assert (= start!187922 b!1874840))

(assert (= b!1874844 b!1874843))

(assert (= b!1874841 b!1874844))

(assert (= start!187922 b!1874841))

(declare-fun m!2299745 () Bool)

(assert (=> b!1874842 m!2299745))

(declare-fun m!2299747 () Bool)

(assert (=> b!1874842 m!2299747))

(declare-fun m!2299749 () Bool)

(assert (=> b!1874842 m!2299749))

(declare-fun m!2299751 () Bool)

(assert (=> b!1874842 m!2299751))

(declare-fun m!2299753 () Bool)

(assert (=> b!1874842 m!2299753))

(declare-fun m!2299755 () Bool)

(assert (=> b!1874842 m!2299755))

(declare-fun m!2299757 () Bool)

(assert (=> b!1874842 m!2299757))

(declare-fun m!2299759 () Bool)

(assert (=> b!1874842 m!2299759))

(declare-fun m!2299761 () Bool)

(assert (=> b!1874842 m!2299761))

(declare-fun m!2299763 () Bool)

(assert (=> b!1874842 m!2299763))

(declare-fun m!2299765 () Bool)

(assert (=> start!187922 m!2299765))

(declare-fun m!2299767 () Bool)

(assert (=> start!187922 m!2299767))

(declare-fun m!2299769 () Bool)

(assert (=> start!187922 m!2299769))

(declare-fun m!2299771 () Bool)

(assert (=> b!1874844 m!2299771))

(declare-fun m!2299773 () Bool)

(assert (=> b!1874844 m!2299773))

(declare-fun m!2299775 () Bool)

(assert (=> b!1874839 m!2299775))

(declare-fun m!2299777 () Bool)

(assert (=> b!1874845 m!2299777))

(declare-fun m!2299779 () Bool)

(assert (=> b!1874840 m!2299779))

(declare-fun m!2299781 () Bool)

(assert (=> b!1874841 m!2299781))

(check-sat (not b!1874842) (not start!187922) (not b!1874841) b_and!144409 (not b!1874839) (not b_next!52827) (not b!1874845) (not b!1874844) (not b_next!52825) b_and!144407 (not b!1874840))
(check-sat b_and!144409 b_and!144407 (not b_next!52825) (not b_next!52827))
