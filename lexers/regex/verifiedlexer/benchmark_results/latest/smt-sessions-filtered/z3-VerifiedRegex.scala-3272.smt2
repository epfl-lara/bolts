; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187954 () Bool)

(assert start!187954)

(declare-fun b!1875216 () Bool)

(declare-fun b_free!52185 () Bool)

(declare-fun b_next!52889 () Bool)

(assert (=> b!1875216 (= b_free!52185 (not b_next!52889))))

(declare-fun tp!534573 () Bool)

(declare-fun b_and!144471 () Bool)

(assert (=> b!1875216 (= tp!534573 b_and!144471)))

(declare-fun b_free!52187 () Bool)

(declare-fun b_next!52891 () Bool)

(assert (=> b!1875216 (= b_free!52187 (not b_next!52891))))

(declare-fun tp!534576 () Bool)

(declare-fun b_and!144473 () Bool)

(assert (=> b!1875216 (= tp!534576 b_and!144473)))

(declare-fun b!1875209 () Bool)

(declare-fun e!1196878 () Bool)

(declare-datatypes ((List!20979 0))(
  ( (Nil!20897) (Cons!20897 (h!26298 (_ BitVec 16)) (t!173196 List!20979)) )
))
(declare-datatypes ((TokenValue!3840 0))(
  ( (FloatLiteralValue!7680 (text!27325 List!20979)) (TokenValueExt!3839 (__x!13118 Int)) (Broken!19200 (value!117003 List!20979)) (Object!3921) (End!3840) (Def!3840) (Underscore!3840) (Match!3840) (Else!3840) (Error!3840) (Case!3840) (If!3840) (Extends!3840) (Abstract!3840) (Class!3840) (Val!3840) (DelimiterValue!7680 (del!3900 List!20979)) (KeywordValue!3846 (value!117004 List!20979)) (CommentValue!7680 (value!117005 List!20979)) (WhitespaceValue!7680 (value!117006 List!20979)) (IndentationValue!3840 (value!117007 List!20979)) (String!24149) (Int32!3840) (Broken!19201 (value!117008 List!20979)) (Boolean!3841) (Unit!35423) (OperatorValue!3843 (op!3900 List!20979)) (IdentifierValue!7680 (value!117009 List!20979)) (IdentifierValue!7681 (value!117010 List!20979)) (WhitespaceValue!7681 (value!117011 List!20979)) (True!7680) (False!7680) (Broken!19202 (value!117012 List!20979)) (Broken!19203 (value!117013 List!20979)) (True!7681) (RightBrace!3840) (RightBracket!3840) (Colon!3840) (Null!3840) (Comma!3840) (LeftBracket!3840) (False!7681) (LeftBrace!3840) (ImaginaryLiteralValue!3840 (text!27326 List!20979)) (StringLiteralValue!11520 (value!117014 List!20979)) (EOFValue!3840 (value!117015 List!20979)) (IdentValue!3840 (value!117016 List!20979)) (DelimiterValue!7681 (value!117017 List!20979)) (DedentValue!3840 (value!117018 List!20979)) (NewLineValue!3840 (value!117019 List!20979)) (IntegerValue!11520 (value!117020 (_ BitVec 32)) (text!27327 List!20979)) (IntegerValue!11521 (value!117021 Int) (text!27328 List!20979)) (Times!3840) (Or!3840) (Equal!3840) (Minus!3840) (Broken!19204 (value!117022 List!20979)) (And!3840) (Div!3840) (LessEqual!3840) (Mod!3840) (Concat!8953) (Not!3840) (Plus!3840) (SpaceValue!3840 (value!117023 List!20979)) (IntegerValue!11522 (value!117024 Int) (text!27329 List!20979)) (StringLiteralValue!11521 (text!27330 List!20979)) (FloatLiteralValue!7681 (text!27331 List!20979)) (BytesLiteralValue!3840 (value!117025 List!20979)) (CommentValue!7681 (value!117026 List!20979)) (StringLiteralValue!11522 (value!117027 List!20979)) (ErrorTokenValue!3840 (msg!3901 List!20979)) )
))
(declare-datatypes ((C!10384 0))(
  ( (C!10385 (val!6080 Int)) )
))
(declare-datatypes ((Regex!5113 0))(
  ( (ElementMatch!5113 (c!305510 C!10384)) (Concat!8954 (regOne!10738 Regex!5113) (regTwo!10738 Regex!5113)) (EmptyExpr!5113) (Star!5113 (reg!5442 Regex!5113)) (EmptyLang!5113) (Union!5113 (regOne!10739 Regex!5113) (regTwo!10739 Regex!5113)) )
))
(declare-datatypes ((List!20980 0))(
  ( (Nil!20898) (Cons!20898 (h!26299 C!10384) (t!173197 List!20980)) )
))
(declare-datatypes ((IArray!13879 0))(
  ( (IArray!13880 (innerList!6997 List!20980)) )
))
(declare-datatypes ((Conc!6937 0))(
  ( (Node!6937 (left!16795 Conc!6937) (right!17125 Conc!6937) (csize!14104 Int) (cheight!7148 Int)) (Leaf!10210 (xs!9821 IArray!13879) (csize!14105 Int)) (Empty!6937) )
))
(declare-datatypes ((BalanceConc!13690 0))(
  ( (BalanceConc!13691 (c!305511 Conc!6937)) )
))
(declare-datatypes ((TokenValueInjection!7264 0))(
  ( (TokenValueInjection!7265 (toValue!5301 Int) (toChars!5160 Int)) )
))
(declare-datatypes ((String!24150 0))(
  ( (String!24151 (value!117028 String)) )
))
(declare-datatypes ((Rule!7208 0))(
  ( (Rule!7209 (regex!3704 Regex!5113) (tag!4118 String!24150) (isSeparator!3704 Bool) (transformation!3704 TokenValueInjection!7264)) )
))
(declare-datatypes ((Token!6960 0))(
  ( (Token!6961 (value!117029 TokenValue!3840) (rule!5897 Rule!7208) (size!16571 Int) (originalCharacters!4511 List!20980)) )
))
(declare-datatypes ((List!20981 0))(
  ( (Nil!20899) (Cons!20899 (h!26300 Token!6960) (t!173198 List!20981)) )
))
(declare-datatypes ((IArray!13881 0))(
  ( (IArray!13882 (innerList!6998 List!20981)) )
))
(declare-datatypes ((Conc!6938 0))(
  ( (Node!6938 (left!16796 Conc!6938) (right!17126 Conc!6938) (csize!14106 Int) (cheight!7149 Int)) (Leaf!10211 (xs!9822 IArray!13881) (csize!14107 Int)) (Empty!6938) )
))
(declare-datatypes ((BalanceConc!13692 0))(
  ( (BalanceConc!13693 (c!305512 Conc!6938)) )
))
(declare-fun v!6352 () BalanceConc!13692)

(declare-fun tp!534572 () Bool)

(declare-fun inv!27767 (Conc!6938) Bool)

(assert (=> b!1875209 (= e!1196878 (and (inv!27767 (c!305512 v!6352)) tp!534572))))

(declare-fun b!1875210 () Bool)

(declare-fun res!838632 () Bool)

(declare-fun e!1196881 () Bool)

(assert (=> b!1875210 (=> res!838632 e!1196881)))

(declare-fun lt!720725 () Token!6960)

(declare-fun lt!720722 () BalanceConc!13692)

(declare-fun lt!720716 () List!20981)

(declare-fun acc!408 () BalanceConc!13692)

(declare-fun list!8518 (BalanceConc!13692) List!20981)

(declare-fun ++!5665 (BalanceConc!13692 BalanceConc!13692) BalanceConc!13692)

(declare-fun ++!5666 (List!20981 List!20981) List!20981)

(assert (=> b!1875210 (= res!838632 (not (= (list!8518 (++!5665 acc!408 lt!720722)) (++!5666 lt!720716 (Cons!20899 lt!720725 Nil!20899)))))))

(declare-fun e!1196882 () Bool)

(declare-fun b!1875211 () Bool)

(declare-fun separatorToken!84 () Token!6960)

(declare-fun e!1196879 () Bool)

(declare-fun tp!534574 () Bool)

(declare-fun inv!27762 (String!24150) Bool)

(declare-fun inv!27768 (TokenValueInjection!7264) Bool)

(assert (=> b!1875211 (= e!1196882 (and tp!534574 (inv!27762 (tag!4118 (rule!5897 separatorToken!84))) (inv!27768 (transformation!3704 (rule!5897 separatorToken!84))) e!1196879))))

(declare-fun b!1875212 () Bool)

(declare-fun e!1196885 () Bool)

(declare-fun e!1196883 () Bool)

(assert (=> b!1875212 (= e!1196885 e!1196883)))

(declare-fun res!838634 () Bool)

(assert (=> b!1875212 (=> (not res!838634) (not e!1196883))))

(declare-fun from!845 () Int)

(declare-fun lt!720726 () Int)

(assert (=> b!1875212 (= res!838634 (and (<= from!845 lt!720726) (isSeparator!3704 (rule!5897 separatorToken!84)) (< from!845 lt!720726)))))

(declare-fun size!16572 (BalanceConc!13692) Int)

(assert (=> b!1875212 (= lt!720726 (size!16572 v!6352))))

(declare-fun b!1875213 () Bool)

(declare-fun e!1196877 () Bool)

(declare-fun tp!534575 () Bool)

(assert (=> b!1875213 (= e!1196877 (and (inv!27767 (c!305512 acc!408)) tp!534575))))

(declare-fun b!1875214 () Bool)

(assert (=> b!1875214 (= e!1196883 (not e!1196881))))

(declare-fun res!838633 () Bool)

(assert (=> b!1875214 (=> res!838633 e!1196881)))

(declare-datatypes ((LexerInterface!3326 0))(
  ( (LexerInterfaceExt!3323 (__x!13119 Int)) (Lexer!3324) )
))
(declare-fun thiss!13718 () LexerInterface!3326)

(declare-fun lt!720721 () List!20981)

(declare-fun lt!720719 () BalanceConc!13692)

(declare-fun withSeparatorTokenInner!8 (LexerInterface!3326 BalanceConc!13692 Token!6960 Int BalanceConc!13692) BalanceConc!13692)

(assert (=> b!1875214 (= res!838633 (not (= (list!8518 (withSeparatorTokenInner!8 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!720719)) (++!5666 (list!8518 lt!720719) lt!720721))))))

(declare-fun singletonSeq!1819 (Token!6960) BalanceConc!13692)

(assert (=> b!1875214 (= lt!720719 (++!5665 acc!408 (++!5665 lt!720722 (singletonSeq!1819 separatorToken!84))))))

(assert (=> b!1875214 (= lt!720722 (singletonSeq!1819 lt!720725))))

(declare-fun lt!720724 () List!20981)

(assert (=> b!1875214 (= (++!5666 (++!5666 lt!720716 lt!720724) lt!720721) (++!5666 lt!720716 (++!5666 lt!720724 lt!720721)))))

(declare-datatypes ((Unit!35424 0))(
  ( (Unit!35425) )
))
(declare-fun lt!720718 () Unit!35424)

(declare-fun lemmaConcatAssociativity!1115 (List!20981 List!20981 List!20981) Unit!35424)

(assert (=> b!1875214 (= lt!720718 (lemmaConcatAssociativity!1115 lt!720716 lt!720724 lt!720721))))

(declare-fun lt!720723 () List!20981)

(declare-fun withSeparatorTokenList!112 (LexerInterface!3326 List!20981 Token!6960) List!20981)

(assert (=> b!1875214 (= lt!720721 (withSeparatorTokenList!112 thiss!13718 lt!720723 separatorToken!84))))

(assert (=> b!1875214 (= lt!720724 (Cons!20899 lt!720725 (Cons!20899 separatorToken!84 Nil!20899)))))

(declare-fun apply!5508 (BalanceConc!13692 Int) Token!6960)

(assert (=> b!1875214 (= lt!720725 (apply!5508 v!6352 from!845))))

(assert (=> b!1875214 (= lt!720716 (list!8518 acc!408))))

(declare-fun lt!720720 () List!20981)

(declare-fun tail!2904 (List!20981) List!20981)

(assert (=> b!1875214 (= (tail!2904 lt!720720) lt!720723)))

(declare-fun lt!720727 () List!20981)

(declare-fun drop!1024 (List!20981 Int) List!20981)

(assert (=> b!1875214 (= lt!720723 (drop!1024 lt!720727 (+ 1 from!845)))))

(declare-fun lt!720717 () Unit!35424)

(declare-fun lemmaDropTail!642 (List!20981 Int) Unit!35424)

(assert (=> b!1875214 (= lt!720717 (lemmaDropTail!642 lt!720727 from!845))))

(declare-fun head!4375 (List!20981) Token!6960)

(declare-fun apply!5509 (List!20981 Int) Token!6960)

(assert (=> b!1875214 (= (head!4375 lt!720720) (apply!5509 lt!720727 from!845))))

(assert (=> b!1875214 (= lt!720720 (drop!1024 lt!720727 from!845))))

(declare-fun lt!720715 () Unit!35424)

(declare-fun lemmaDropApply!662 (List!20981 Int) Unit!35424)

(assert (=> b!1875214 (= lt!720715 (lemmaDropApply!662 lt!720727 from!845))))

(assert (=> b!1875214 (= lt!720727 (list!8518 v!6352))))

(declare-fun b!1875215 () Bool)

(assert (=> b!1875215 (= e!1196881 (and (>= (+ 1 from!845) 0) (<= (+ 1 from!845) lt!720726)))))

(declare-fun e!1196876 () Bool)

(declare-fun b!1875217 () Bool)

(declare-fun tp!534577 () Bool)

(declare-fun inv!21 (TokenValue!3840) Bool)

(assert (=> b!1875217 (= e!1196876 (and (inv!21 (value!117029 separatorToken!84)) e!1196882 tp!534577))))

(assert (=> b!1875216 (= e!1196879 (and tp!534573 tp!534576))))

(declare-fun res!838635 () Bool)

(assert (=> start!187954 (=> (not res!838635) (not e!1196885))))

(get-info :version)

(assert (=> start!187954 (= res!838635 (and ((_ is Lexer!3324) thiss!13718) (>= from!845 0)))))

(assert (=> start!187954 e!1196885))

(assert (=> start!187954 true))

(declare-fun inv!27769 (BalanceConc!13692) Bool)

(assert (=> start!187954 (and (inv!27769 acc!408) e!1196877)))

(assert (=> start!187954 (and (inv!27769 v!6352) e!1196878)))

(declare-fun inv!27770 (Token!6960) Bool)

(assert (=> start!187954 (and (inv!27770 separatorToken!84) e!1196876)))

(assert (= (and start!187954 res!838635) b!1875212))

(assert (= (and b!1875212 res!838634) b!1875214))

(assert (= (and b!1875214 (not res!838633)) b!1875210))

(assert (= (and b!1875210 (not res!838632)) b!1875215))

(assert (= start!187954 b!1875213))

(assert (= start!187954 b!1875209))

(assert (= b!1875211 b!1875216))

(assert (= b!1875217 b!1875211))

(assert (= start!187954 b!1875217))

(declare-fun m!2300727 () Bool)

(assert (=> b!1875217 m!2300727))

(declare-fun m!2300729 () Bool)

(assert (=> start!187954 m!2300729))

(declare-fun m!2300731 () Bool)

(assert (=> start!187954 m!2300731))

(declare-fun m!2300733 () Bool)

(assert (=> start!187954 m!2300733))

(declare-fun m!2300735 () Bool)

(assert (=> b!1875212 m!2300735))

(declare-fun m!2300737 () Bool)

(assert (=> b!1875209 m!2300737))

(declare-fun m!2300739 () Bool)

(assert (=> b!1875213 m!2300739))

(declare-fun m!2300741 () Bool)

(assert (=> b!1875211 m!2300741))

(declare-fun m!2300743 () Bool)

(assert (=> b!1875211 m!2300743))

(declare-fun m!2300745 () Bool)

(assert (=> b!1875210 m!2300745))

(assert (=> b!1875210 m!2300745))

(declare-fun m!2300747 () Bool)

(assert (=> b!1875210 m!2300747))

(declare-fun m!2300749 () Bool)

(assert (=> b!1875210 m!2300749))

(declare-fun m!2300751 () Bool)

(assert (=> b!1875214 m!2300751))

(declare-fun m!2300753 () Bool)

(assert (=> b!1875214 m!2300753))

(declare-fun m!2300755 () Bool)

(assert (=> b!1875214 m!2300755))

(declare-fun m!2300757 () Bool)

(assert (=> b!1875214 m!2300757))

(declare-fun m!2300759 () Bool)

(assert (=> b!1875214 m!2300759))

(declare-fun m!2300761 () Bool)

(assert (=> b!1875214 m!2300761))

(declare-fun m!2300763 () Bool)

(assert (=> b!1875214 m!2300763))

(declare-fun m!2300765 () Bool)

(assert (=> b!1875214 m!2300765))

(assert (=> b!1875214 m!2300751))

(declare-fun m!2300767 () Bool)

(assert (=> b!1875214 m!2300767))

(declare-fun m!2300769 () Bool)

(assert (=> b!1875214 m!2300769))

(declare-fun m!2300771 () Bool)

(assert (=> b!1875214 m!2300771))

(declare-fun m!2300773 () Bool)

(assert (=> b!1875214 m!2300773))

(declare-fun m!2300775 () Bool)

(assert (=> b!1875214 m!2300775))

(assert (=> b!1875214 m!2300771))

(declare-fun m!2300777 () Bool)

(assert (=> b!1875214 m!2300777))

(declare-fun m!2300779 () Bool)

(assert (=> b!1875214 m!2300779))

(declare-fun m!2300781 () Bool)

(assert (=> b!1875214 m!2300781))

(declare-fun m!2300783 () Bool)

(assert (=> b!1875214 m!2300783))

(declare-fun m!2300785 () Bool)

(assert (=> b!1875214 m!2300785))

(assert (=> b!1875214 m!2300783))

(declare-fun m!2300787 () Bool)

(assert (=> b!1875214 m!2300787))

(assert (=> b!1875214 m!2300759))

(declare-fun m!2300789 () Bool)

(assert (=> b!1875214 m!2300789))

(assert (=> b!1875214 m!2300777))

(declare-fun m!2300791 () Bool)

(assert (=> b!1875214 m!2300791))

(assert (=> b!1875214 m!2300767))

(declare-fun m!2300793 () Bool)

(assert (=> b!1875214 m!2300793))

(declare-fun m!2300795 () Bool)

(assert (=> b!1875214 m!2300795))

(declare-fun m!2300797 () Bool)

(assert (=> b!1875214 m!2300797))

(check-sat (not b!1875214) b_and!144473 (not start!187954) (not b_next!52891) b_and!144471 (not b!1875212) (not b!1875213) (not b!1875211) (not b_next!52889) (not b!1875217) (not b!1875210) (not b!1875209))
(check-sat b_and!144473 b_and!144471 (not b_next!52889) (not b_next!52891))
