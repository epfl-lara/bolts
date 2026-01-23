; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!101416 () Bool)

(assert start!101416)

(declare-fun b!1159118 () Bool)

(declare-fun e!741776 () Bool)

(assert (=> b!1159118 (= e!741776 true)))

(declare-fun b!1159117 () Bool)

(declare-fun e!741775 () Bool)

(assert (=> b!1159117 (= e!741775 e!741776)))

(declare-fun b!1159098 () Bool)

(assert (=> b!1159098 e!741775))

(assert (= b!1159117 b!1159118))

(assert (= b!1159098 b!1159117))

(declare-fun b!1159097 () Bool)

(declare-fun e!741770 () Bool)

(declare-fun e!741765 () Bool)

(assert (=> b!1159097 (= e!741770 e!741765)))

(declare-fun res!522049 () Bool)

(assert (=> b!1159097 (=> (not res!522049) (not e!741765))))

(declare-datatypes ((List!11361 0))(
  ( (Nil!11337) (Cons!11337 (h!16738 (_ BitVec 16)) (t!109410 List!11361)) )
))
(declare-datatypes ((TokenValue!2032 0))(
  ( (FloatLiteralValue!4064 (text!14669 List!11361)) (TokenValueExt!2031 (__x!7775 Int)) (Broken!10160 (value!64003 List!11361)) (Object!2055) (End!2032) (Def!2032) (Underscore!2032) (Match!2032) (Else!2032) (Error!2032) (Case!2032) (If!2032) (Extends!2032) (Abstract!2032) (Class!2032) (Val!2032) (DelimiterValue!4064 (del!2092 List!11361)) (KeywordValue!2038 (value!64004 List!11361)) (CommentValue!4064 (value!64005 List!11361)) (WhitespaceValue!4064 (value!64006 List!11361)) (IndentationValue!2032 (value!64007 List!11361)) (String!13749) (Int32!2032) (Broken!10161 (value!64008 List!11361)) (Boolean!2033) (Unit!17345) (OperatorValue!2035 (op!2092 List!11361)) (IdentifierValue!4064 (value!64009 List!11361)) (IdentifierValue!4065 (value!64010 List!11361)) (WhitespaceValue!4065 (value!64011 List!11361)) (True!4064) (False!4064) (Broken!10162 (value!64012 List!11361)) (Broken!10163 (value!64013 List!11361)) (True!4065) (RightBrace!2032) (RightBracket!2032) (Colon!2032) (Null!2032) (Comma!2032) (LeftBracket!2032) (False!4065) (LeftBrace!2032) (ImaginaryLiteralValue!2032 (text!14670 List!11361)) (StringLiteralValue!6096 (value!64014 List!11361)) (EOFValue!2032 (value!64015 List!11361)) (IdentValue!2032 (value!64016 List!11361)) (DelimiterValue!4065 (value!64017 List!11361)) (DedentValue!2032 (value!64018 List!11361)) (NewLineValue!2032 (value!64019 List!11361)) (IntegerValue!6096 (value!64020 (_ BitVec 32)) (text!14671 List!11361)) (IntegerValue!6097 (value!64021 Int) (text!14672 List!11361)) (Times!2032) (Or!2032) (Equal!2032) (Minus!2032) (Broken!10164 (value!64022 List!11361)) (And!2032) (Div!2032) (LessEqual!2032) (Mod!2032) (Concat!5268) (Not!2032) (Plus!2032) (SpaceValue!2032 (value!64023 List!11361)) (IntegerValue!6098 (value!64024 Int) (text!14673 List!11361)) (StringLiteralValue!6097 (text!14674 List!11361)) (FloatLiteralValue!4065 (text!14675 List!11361)) (BytesLiteralValue!2032 (value!64025 List!11361)) (CommentValue!4065 (value!64026 List!11361)) (StringLiteralValue!6098 (value!64027 List!11361)) (ErrorTokenValue!2032 (msg!2093 List!11361)) )
))
(declare-datatypes ((C!6790 0))(
  ( (C!6791 (val!3651 Int)) )
))
(declare-datatypes ((Regex!3236 0))(
  ( (ElementMatch!3236 (c!194161 C!6790)) (Concat!5269 (regOne!6984 Regex!3236) (regTwo!6984 Regex!3236)) (EmptyExpr!3236) (Star!3236 (reg!3565 Regex!3236)) (EmptyLang!3236) (Union!3236 (regOne!6985 Regex!3236) (regTwo!6985 Regex!3236)) )
))
(declare-datatypes ((String!13750 0))(
  ( (String!13751 (value!64028 String)) )
))
(declare-datatypes ((List!11362 0))(
  ( (Nil!11338) (Cons!11338 (h!16739 C!6790) (t!109411 List!11362)) )
))
(declare-datatypes ((IArray!7393 0))(
  ( (IArray!7394 (innerList!3754 List!11362)) )
))
(declare-datatypes ((Conc!3694 0))(
  ( (Node!3694 (left!9893 Conc!3694) (right!10223 Conc!3694) (csize!7618 Int) (cheight!3905 Int)) (Leaf!5688 (xs!6399 IArray!7393) (csize!7619 Int)) (Empty!3694) )
))
(declare-datatypes ((BalanceConc!7410 0))(
  ( (BalanceConc!7411 (c!194162 Conc!3694)) )
))
(declare-datatypes ((TokenValueInjection!3764 0))(
  ( (TokenValueInjection!3765 (toValue!3067 Int) (toChars!2926 Int)) )
))
(declare-datatypes ((Rule!3732 0))(
  ( (Rule!3733 (regex!1966 Regex!3236) (tag!2228 String!13750) (isSeparator!1966 Bool) (transformation!1966 TokenValueInjection!3764)) )
))
(declare-datatypes ((Token!3594 0))(
  ( (Token!3595 (value!64029 TokenValue!2032) (rule!3387 Rule!3732) (size!8914 Int) (originalCharacters!2520 List!11362)) )
))
(declare-datatypes ((List!11363 0))(
  ( (Nil!11339) (Cons!11339 (h!16740 Token!3594) (t!109412 List!11363)) )
))
(declare-datatypes ((List!11364 0))(
  ( (Nil!11340) (Cons!11340 (h!16741 Rule!3732) (t!109413 List!11364)) )
))
(declare-datatypes ((IArray!7395 0))(
  ( (IArray!7396 (innerList!3755 List!11363)) )
))
(declare-datatypes ((Conc!3695 0))(
  ( (Node!3695 (left!9894 Conc!3695) (right!10224 Conc!3695) (csize!7620 Int) (cheight!3906 Int)) (Leaf!5689 (xs!6400 IArray!7395) (csize!7621 Int)) (Empty!3695) )
))
(declare-datatypes ((BalanceConc!7412 0))(
  ( (BalanceConc!7413 (c!194163 Conc!3695)) )
))
(declare-datatypes ((PrintableTokens!618 0))(
  ( (PrintableTokens!619 (rules!9455 List!11364) (tokens!1565 BalanceConc!7412)) )
))
(declare-fun thiss!10527 () PrintableTokens!618)

(declare-fun lt!393859 () List!11363)

(declare-datatypes ((LexerInterface!1661 0))(
  ( (LexerInterfaceExt!1658 (__x!7776 Int)) (Lexer!1659) )
))
(declare-fun rulesProduceIndividualToken!698 (LexerInterface!1661 List!11364 Token!3594) Bool)

(assert (=> b!1159097 (= res!522049 (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 lt!393859)))))

(declare-fun e!741762 () Bool)

(declare-fun e!741767 () Bool)

(assert (=> b!1159098 (= e!741762 (not e!741767))))

(declare-fun res!522051 () Bool)

(assert (=> b!1159098 (=> res!522051 e!741767)))

(declare-fun lambda!47024 () Int)

(declare-fun forall!2932 (BalanceConc!7412 Int) Bool)

(assert (=> b!1159098 (= res!522051 (not (forall!2932 (tokens!1565 thiss!10527) lambda!47024)))))

(declare-fun rulesProduceEachTokenIndividuallyList!529 (LexerInterface!1661 List!11364 List!11363) Bool)

(assert (=> b!1159098 (= (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) lt!393859) e!741770)))

(declare-fun res!522046 () Bool)

(assert (=> b!1159098 (=> res!522046 e!741770)))

(assert (=> b!1159098 (= res!522046 (not (is-Cons!11339 lt!393859)))))

(declare-fun list!4177 (BalanceConc!7412) List!11363)

(assert (=> b!1159098 (= lt!393859 (list!4177 (tokens!1565 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!700 (LexerInterface!1661 List!11364 BalanceConc!7412) Bool)

(assert (=> b!1159098 (= (rulesProduceEachTokenIndividually!700 Lexer!1659 (rules!9455 thiss!10527) (tokens!1565 thiss!10527)) (forall!2932 (tokens!1565 thiss!10527) lambda!47024))))

(declare-fun b!1159099 () Bool)

(declare-fun e!741766 () Bool)

(declare-fun e!741769 () Bool)

(declare-fun lt!393862 () List!11363)

(assert (=> b!1159099 (= e!741769 (= (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) lt!393862) e!741766))))

(declare-fun res!522040 () Bool)

(assert (=> b!1159099 (=> res!522040 e!741766)))

(assert (=> b!1159099 (= res!522040 (not (is-Cons!11339 lt!393862)))))

(declare-fun b!1159100 () Bool)

(declare-fun res!522050 () Bool)

(declare-fun e!741760 () Bool)

(assert (=> b!1159100 (=> res!522050 e!741760)))

(declare-fun lt!393858 () BalanceConc!7412)

(assert (=> b!1159100 (= res!522050 (not (forall!2932 lt!393858 lambda!47024)))))

(declare-fun res!522045 () Bool)

(declare-fun e!741768 () Bool)

(assert (=> start!101416 (=> (not res!522045) (not e!741768))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!101416 (= res!522045 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101416 e!741768))

(assert (=> start!101416 true))

(declare-fun e!741764 () Bool)

(declare-fun inv!14904 (PrintableTokens!618) Bool)

(assert (=> start!101416 (and (inv!14904 thiss!10527) e!741764)))

(declare-fun tp!333575 () Bool)

(declare-fun e!741761 () Bool)

(declare-fun b!1159101 () Bool)

(declare-fun inv!14905 (BalanceConc!7412) Bool)

(assert (=> b!1159101 (= e!741764 (and tp!333575 (inv!14905 (tokens!1565 thiss!10527)) e!741761))))

(declare-fun b!1159102 () Bool)

(assert (=> b!1159102 (= e!741768 e!741762)))

(declare-fun res!522043 () Bool)

(assert (=> b!1159102 (=> (not res!522043) (not e!741762))))

(declare-fun rulesInvariant!1535 (LexerInterface!1661 List!11364) Bool)

(assert (=> b!1159102 (= res!522043 (rulesInvariant!1535 Lexer!1659 (rules!9455 thiss!10527)))))

(declare-datatypes ((Unit!17346 0))(
  ( (Unit!17347) )
))
(declare-fun lt!393860 () Unit!17346)

(declare-fun lemmaInvariant!153 (PrintableTokens!618) Unit!17346)

(assert (=> b!1159102 (= lt!393860 (lemmaInvariant!153 thiss!10527))))

(declare-fun b!1159103 () Bool)

(assert (=> b!1159103 (= e!741767 e!741760)))

(declare-fun res!522042 () Bool)

(assert (=> b!1159103 (=> res!522042 e!741760)))

(declare-fun forall!2933 (List!11363 Int) Bool)

(assert (=> b!1159103 (= res!522042 (not (forall!2933 lt!393862 lambda!47024)))))

(assert (=> b!1159103 e!741769))

(declare-fun res!522048 () Bool)

(assert (=> b!1159103 (=> (not res!522048) (not e!741769))))

(assert (=> b!1159103 (= res!522048 (forall!2933 lt!393862 lambda!47024))))

(declare-fun lt!393861 () Unit!17346)

(declare-fun lemmaForallSubseq!114 (List!11363 List!11363 Int) Unit!17346)

(assert (=> b!1159103 (= lt!393861 (lemmaForallSubseq!114 lt!393862 lt!393859 lambda!47024))))

(assert (=> b!1159103 (= lt!393862 (list!4177 lt!393858))))

(declare-fun slice!225 (BalanceConc!7412 Int Int) BalanceConc!7412)

(assert (=> b!1159103 (= lt!393858 (slice!225 (tokens!1565 thiss!10527) from!787 to!267))))

(declare-fun subseq!222 (List!11363 List!11363) Bool)

(declare-fun slice!226 (List!11363 Int Int) List!11363)

(assert (=> b!1159103 (subseq!222 (slice!226 lt!393859 from!787 to!267) lt!393859)))

(declare-fun lt!393857 () Unit!17346)

(declare-fun lemmaSliceSubseq!63 (List!11363 Int Int) Unit!17346)

(assert (=> b!1159103 (= lt!393857 (lemmaSliceSubseq!63 lt!393859 from!787 to!267))))

(declare-fun b!1159104 () Bool)

(declare-fun e!741763 () Bool)

(assert (=> b!1159104 (= e!741766 e!741763)))

(declare-fun res!522044 () Bool)

(assert (=> b!1159104 (=> (not res!522044) (not e!741763))))

(assert (=> b!1159104 (= res!522044 (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 lt!393862)))))

(declare-fun b!1159105 () Bool)

(assert (=> b!1159105 (= e!741765 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 lt!393859)))))

(declare-fun b!1159106 () Bool)

(declare-fun res!522041 () Bool)

(assert (=> b!1159106 (=> (not res!522041) (not e!741768))))

(declare-fun size!8915 (BalanceConc!7412) Int)

(assert (=> b!1159106 (= res!522041 (<= to!267 (size!8915 (tokens!1565 thiss!10527))))))

(declare-fun b!1159107 () Bool)

(declare-fun tp!333576 () Bool)

(declare-fun inv!14906 (Conc!3695) Bool)

(assert (=> b!1159107 (= e!741761 (and (inv!14906 (c!194163 (tokens!1565 thiss!10527))) tp!333576))))

(declare-fun b!1159108 () Bool)

(declare-fun isEmpty!6960 (List!11364) Bool)

(assert (=> b!1159108 (= e!741760 (not (isEmpty!6960 (rules!9455 thiss!10527))))))

(declare-fun b!1159109 () Bool)

(assert (=> b!1159109 (= e!741763 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 lt!393862)))))

(declare-fun b!1159110 () Bool)

(declare-fun res!522047 () Bool)

(assert (=> b!1159110 (=> (not res!522047) (not e!741769))))

(assert (=> b!1159110 (= res!522047 (= (rulesProduceEachTokenIndividually!700 Lexer!1659 (rules!9455 thiss!10527) lt!393858) (forall!2932 lt!393858 lambda!47024)))))

(assert (= (and start!101416 res!522045) b!1159106))

(assert (= (and b!1159106 res!522041) b!1159102))

(assert (= (and b!1159102 res!522043) b!1159098))

(assert (= (and b!1159098 (not res!522046)) b!1159097))

(assert (= (and b!1159097 res!522049) b!1159105))

(assert (= (and b!1159098 (not res!522051)) b!1159103))

(assert (= (and b!1159103 res!522048) b!1159110))

(assert (= (and b!1159110 res!522047) b!1159099))

(assert (= (and b!1159099 (not res!522040)) b!1159104))

(assert (= (and b!1159104 res!522044) b!1159109))

(assert (= (and b!1159103 (not res!522042)) b!1159100))

(assert (= (and b!1159100 (not res!522050)) b!1159108))

(assert (= b!1159101 b!1159107))

(assert (= start!101416 b!1159101))

(declare-fun m!1325679 () Bool)

(assert (=> b!1159105 m!1325679))

(declare-fun m!1325681 () Bool)

(assert (=> b!1159103 m!1325681))

(declare-fun m!1325683 () Bool)

(assert (=> b!1159103 m!1325683))

(declare-fun m!1325685 () Bool)

(assert (=> b!1159103 m!1325685))

(declare-fun m!1325687 () Bool)

(assert (=> b!1159103 m!1325687))

(assert (=> b!1159103 m!1325683))

(declare-fun m!1325689 () Bool)

(assert (=> b!1159103 m!1325689))

(assert (=> b!1159103 m!1325681))

(declare-fun m!1325691 () Bool)

(assert (=> b!1159103 m!1325691))

(declare-fun m!1325693 () Bool)

(assert (=> b!1159103 m!1325693))

(declare-fun m!1325695 () Bool)

(assert (=> b!1159102 m!1325695))

(declare-fun m!1325697 () Bool)

(assert (=> b!1159102 m!1325697))

(declare-fun m!1325699 () Bool)

(assert (=> b!1159109 m!1325699))

(declare-fun m!1325701 () Bool)

(assert (=> b!1159100 m!1325701))

(declare-fun m!1325703 () Bool)

(assert (=> b!1159110 m!1325703))

(assert (=> b!1159110 m!1325701))

(declare-fun m!1325705 () Bool)

(assert (=> b!1159106 m!1325705))

(declare-fun m!1325707 () Bool)

(assert (=> b!1159101 m!1325707))

(declare-fun m!1325709 () Bool)

(assert (=> b!1159097 m!1325709))

(declare-fun m!1325711 () Bool)

(assert (=> b!1159108 m!1325711))

(declare-fun m!1325713 () Bool)

(assert (=> b!1159107 m!1325713))

(declare-fun m!1325715 () Bool)

(assert (=> start!101416 m!1325715))

(declare-fun m!1325717 () Bool)

(assert (=> b!1159098 m!1325717))

(declare-fun m!1325719 () Bool)

(assert (=> b!1159098 m!1325719))

(declare-fun m!1325721 () Bool)

(assert (=> b!1159098 m!1325721))

(assert (=> b!1159098 m!1325719))

(declare-fun m!1325723 () Bool)

(assert (=> b!1159098 m!1325723))

(declare-fun m!1325725 () Bool)

(assert (=> b!1159099 m!1325725))

(declare-fun m!1325727 () Bool)

(assert (=> b!1159104 m!1325727))

(push 1)

(assert (not b!1159098))

(assert (not b!1159106))

(assert (not b!1159104))

(assert (not b!1159103))

(assert (not b!1159110))

(assert (not b!1159117))

(assert (not start!101416))

(assert (not b!1159109))

(assert (not b!1159107))

(assert (not b!1159102))

(assert (not b!1159097))

(assert (not b!1159101))

(assert (not b!1159100))

(assert (not b!1159105))

(assert (not b!1159099))

(assert (not b!1159118))

(assert (not b!1159108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!331130 () Bool)

(declare-fun lt!393883 () Int)

(declare-fun size!8918 (List!11363) Int)

(assert (=> d!331130 (= lt!393883 (size!8918 (list!4177 (tokens!1565 thiss!10527))))))

(declare-fun size!8919 (Conc!3695) Int)

(assert (=> d!331130 (= lt!393883 (size!8919 (c!194163 (tokens!1565 thiss!10527))))))

(assert (=> d!331130 (= (size!8915 (tokens!1565 thiss!10527)) lt!393883)))

(declare-fun bs!283281 () Bool)

(assert (= bs!283281 d!331130))

(assert (=> bs!283281 m!1325721))

(assert (=> bs!283281 m!1325721))

(declare-fun m!1325779 () Bool)

(assert (=> bs!283281 m!1325779))

(declare-fun m!1325781 () Bool)

(assert (=> bs!283281 m!1325781))

(assert (=> b!1159106 d!331130))

(declare-fun bs!283282 () Bool)

(declare-fun d!331132 () Bool)

(assert (= bs!283282 (and d!331132 b!1159098)))

(declare-fun lambda!47040 () Int)

(assert (=> bs!283282 (= lambda!47040 lambda!47024)))

(declare-fun b!1159185 () Bool)

(declare-fun e!741830 () Bool)

(assert (=> b!1159185 (= e!741830 true)))

(declare-fun b!1159184 () Bool)

(declare-fun e!741829 () Bool)

(assert (=> b!1159184 (= e!741829 e!741830)))

(declare-fun b!1159183 () Bool)

(declare-fun e!741828 () Bool)

(assert (=> b!1159183 (= e!741828 e!741829)))

(assert (=> d!331132 e!741828))

(assert (= b!1159184 b!1159185))

(assert (= b!1159183 b!1159184))

(assert (= (and d!331132 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159183))

(declare-fun order!6953 () Int)

(declare-fun order!6951 () Int)

(declare-fun dynLambda!5003 (Int Int) Int)

(declare-fun dynLambda!5004 (Int Int) Int)

(assert (=> b!1159185 (< (dynLambda!5003 order!6951 (toValue!3067 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47040))))

(declare-fun order!6955 () Int)

(declare-fun dynLambda!5005 (Int Int) Int)

(assert (=> b!1159185 (< (dynLambda!5005 order!6955 (toChars!2926 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47040))))

(assert (=> d!331132 true))

(declare-fun lt!393886 () Bool)

(assert (=> d!331132 (= lt!393886 (forall!2933 (t!109412 lt!393859) lambda!47040))))

(declare-fun e!741821 () Bool)

(assert (=> d!331132 (= lt!393886 e!741821)))

(declare-fun res!522092 () Bool)

(assert (=> d!331132 (=> res!522092 e!741821)))

(assert (=> d!331132 (= res!522092 (not (is-Cons!11339 (t!109412 lt!393859))))))

(assert (=> d!331132 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331132 (= (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 lt!393859)) lt!393886)))

(declare-fun b!1159173 () Bool)

(declare-fun e!741820 () Bool)

(assert (=> b!1159173 (= e!741821 e!741820)))

(declare-fun res!522093 () Bool)

(assert (=> b!1159173 (=> (not res!522093) (not e!741820))))

(assert (=> b!1159173 (= res!522093 (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 (t!109412 lt!393859))))))

(declare-fun b!1159174 () Bool)

(assert (=> b!1159174 (= e!741820 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 (t!109412 lt!393859))))))

(assert (= (and d!331132 (not res!522092)) b!1159173))

(assert (= (and b!1159173 res!522093) b!1159174))

(declare-fun m!1325783 () Bool)

(assert (=> d!331132 m!1325783))

(assert (=> d!331132 m!1325711))

(declare-fun m!1325785 () Bool)

(assert (=> b!1159173 m!1325785))

(declare-fun m!1325787 () Bool)

(assert (=> b!1159174 m!1325787))

(assert (=> b!1159105 d!331132))

(declare-fun d!331134 () Bool)

(assert (=> d!331134 (forall!2933 lt!393862 lambda!47024)))

(declare-fun lt!393889 () Unit!17346)

(declare-fun choose!7444 (List!11363 List!11363 Int) Unit!17346)

(assert (=> d!331134 (= lt!393889 (choose!7444 lt!393862 lt!393859 lambda!47024))))

(assert (=> d!331134 (forall!2933 lt!393859 lambda!47024)))

(assert (=> d!331134 (= (lemmaForallSubseq!114 lt!393862 lt!393859 lambda!47024) lt!393889)))

(declare-fun bs!283283 () Bool)

(assert (= bs!283283 d!331134))

(assert (=> bs!283283 m!1325681))

(declare-fun m!1325789 () Bool)

(assert (=> bs!283283 m!1325789))

(declare-fun m!1325791 () Bool)

(assert (=> bs!283283 m!1325791))

(assert (=> b!1159103 d!331134))

(declare-fun d!331136 () Bool)

(declare-fun list!4179 (Conc!3695) List!11363)

(assert (=> d!331136 (= (list!4177 lt!393858) (list!4179 (c!194163 lt!393858)))))

(declare-fun bs!283284 () Bool)

(assert (= bs!283284 d!331136))

(declare-fun m!1325793 () Bool)

(assert (=> bs!283284 m!1325793))

(assert (=> b!1159103 d!331136))

(declare-fun d!331138 () Bool)

(declare-fun e!741836 () Bool)

(assert (=> d!331138 e!741836))

(declare-fun res!522100 () Bool)

(assert (=> d!331138 (=> (not res!522100) (not e!741836))))

(declare-fun isBalanced!1044 (Conc!3695) Bool)

(declare-fun slice!229 (Conc!3695 Int Int) Conc!3695)

(assert (=> d!331138 (= res!522100 (isBalanced!1044 (slice!229 (c!194163 (tokens!1565 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393892 () BalanceConc!7412)

(assert (=> d!331138 (= lt!393892 (BalanceConc!7413 (slice!229 (c!194163 (tokens!1565 thiss!10527)) from!787 to!267)))))

(declare-fun e!741835 () Bool)

(assert (=> d!331138 e!741835))

(declare-fun res!522102 () Bool)

(assert (=> d!331138 (=> (not res!522102) (not e!741835))))

(assert (=> d!331138 (= res!522102 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!331138 (= (slice!225 (tokens!1565 thiss!10527) from!787 to!267) lt!393892)))

(declare-fun b!1159194 () Bool)

(declare-fun res!522101 () Bool)

(assert (=> b!1159194 (=> (not res!522101) (not e!741835))))

(assert (=> b!1159194 (= res!522101 (<= to!267 (size!8915 (tokens!1565 thiss!10527))))))

(declare-fun b!1159195 () Bool)

(assert (=> b!1159195 (= e!741835 (isBalanced!1044 (c!194163 (tokens!1565 thiss!10527))))))

(declare-fun b!1159196 () Bool)

(assert (=> b!1159196 (= e!741836 (= (list!4177 lt!393892) (slice!226 (list!4177 (tokens!1565 thiss!10527)) from!787 to!267)))))

(assert (= (and d!331138 res!522102) b!1159194))

(assert (= (and b!1159194 res!522101) b!1159195))

(assert (= (and d!331138 res!522100) b!1159196))

(declare-fun m!1325795 () Bool)

(assert (=> d!331138 m!1325795))

(assert (=> d!331138 m!1325795))

(declare-fun m!1325797 () Bool)

(assert (=> d!331138 m!1325797))

(assert (=> b!1159194 m!1325705))

(declare-fun m!1325799 () Bool)

(assert (=> b!1159195 m!1325799))

(declare-fun m!1325801 () Bool)

(assert (=> b!1159196 m!1325801))

(assert (=> b!1159196 m!1325721))

(assert (=> b!1159196 m!1325721))

(declare-fun m!1325803 () Bool)

(assert (=> b!1159196 m!1325803))

(assert (=> b!1159103 d!331138))

(declare-fun d!331140 () Bool)

(assert (=> d!331140 (subseq!222 (slice!226 lt!393859 from!787 to!267) lt!393859)))

(declare-fun lt!393895 () Unit!17346)

(declare-fun choose!7445 (List!11363 Int Int) Unit!17346)

(assert (=> d!331140 (= lt!393895 (choose!7445 lt!393859 from!787 to!267))))

(declare-fun e!741839 () Bool)

(assert (=> d!331140 e!741839))

(declare-fun res!522105 () Bool)

(assert (=> d!331140 (=> (not res!522105) (not e!741839))))

(assert (=> d!331140 (= res!522105 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!331140 (= (lemmaSliceSubseq!63 lt!393859 from!787 to!267) lt!393895)))

(declare-fun b!1159199 () Bool)

(assert (=> b!1159199 (= e!741839 (<= to!267 (size!8918 lt!393859)))))

(assert (= (and d!331140 res!522105) b!1159199))

(assert (=> d!331140 m!1325683))

(assert (=> d!331140 m!1325683))

(assert (=> d!331140 m!1325689))

(declare-fun m!1325805 () Bool)

(assert (=> d!331140 m!1325805))

(declare-fun m!1325807 () Bool)

(assert (=> b!1159199 m!1325807))

(assert (=> b!1159103 d!331140))

(declare-fun d!331142 () Bool)

(declare-fun take!54 (List!11363 Int) List!11363)

(declare-fun drop!456 (List!11363 Int) List!11363)

(assert (=> d!331142 (= (slice!226 lt!393859 from!787 to!267) (take!54 (drop!456 lt!393859 from!787) (- to!267 from!787)))))

(declare-fun bs!283285 () Bool)

(assert (= bs!283285 d!331142))

(declare-fun m!1325809 () Bool)

(assert (=> bs!283285 m!1325809))

(assert (=> bs!283285 m!1325809))

(declare-fun m!1325811 () Bool)

(assert (=> bs!283285 m!1325811))

(assert (=> b!1159103 d!331142))

(declare-fun d!331144 () Bool)

(declare-fun res!522110 () Bool)

(declare-fun e!741844 () Bool)

(assert (=> d!331144 (=> res!522110 e!741844)))

(assert (=> d!331144 (= res!522110 (is-Nil!11339 lt!393862))))

(assert (=> d!331144 (= (forall!2933 lt!393862 lambda!47024) e!741844)))

(declare-fun b!1159204 () Bool)

(declare-fun e!741845 () Bool)

(assert (=> b!1159204 (= e!741844 e!741845)))

(declare-fun res!522111 () Bool)

(assert (=> b!1159204 (=> (not res!522111) (not e!741845))))

(declare-fun dynLambda!5006 (Int Token!3594) Bool)

(assert (=> b!1159204 (= res!522111 (dynLambda!5006 lambda!47024 (h!16740 lt!393862)))))

(declare-fun b!1159205 () Bool)

(assert (=> b!1159205 (= e!741845 (forall!2933 (t!109412 lt!393862) lambda!47024))))

(assert (= (and d!331144 (not res!522110)) b!1159204))

(assert (= (and b!1159204 res!522111) b!1159205))

(declare-fun b_lambda!34599 () Bool)

(assert (=> (not b_lambda!34599) (not b!1159204)))

(declare-fun m!1325813 () Bool)

(assert (=> b!1159204 m!1325813))

(declare-fun m!1325815 () Bool)

(assert (=> b!1159205 m!1325815))

(assert (=> b!1159103 d!331144))

(declare-fun e!741855 () Bool)

(declare-fun b!1159216 () Bool)

(assert (=> b!1159216 (= e!741855 (subseq!222 (t!109412 (slice!226 lt!393859 from!787 to!267)) (t!109412 lt!393859)))))

(declare-fun e!741857 () Bool)

(declare-fun b!1159217 () Bool)

(assert (=> b!1159217 (= e!741857 (subseq!222 (slice!226 lt!393859 from!787 to!267) (t!109412 lt!393859)))))

(declare-fun d!331146 () Bool)

(declare-fun res!522123 () Bool)

(declare-fun e!741854 () Bool)

(assert (=> d!331146 (=> res!522123 e!741854)))

(assert (=> d!331146 (= res!522123 (is-Nil!11339 (slice!226 lt!393859 from!787 to!267)))))

(assert (=> d!331146 (= (subseq!222 (slice!226 lt!393859 from!787 to!267) lt!393859) e!741854)))

(declare-fun b!1159215 () Bool)

(declare-fun e!741856 () Bool)

(assert (=> b!1159215 (= e!741856 e!741857)))

(declare-fun res!522120 () Bool)

(assert (=> b!1159215 (=> res!522120 e!741857)))

(assert (=> b!1159215 (= res!522120 e!741855)))

(declare-fun res!522122 () Bool)

(assert (=> b!1159215 (=> (not res!522122) (not e!741855))))

(assert (=> b!1159215 (= res!522122 (= (h!16740 (slice!226 lt!393859 from!787 to!267)) (h!16740 lt!393859)))))

(declare-fun b!1159214 () Bool)

(assert (=> b!1159214 (= e!741854 e!741856)))

(declare-fun res!522121 () Bool)

(assert (=> b!1159214 (=> (not res!522121) (not e!741856))))

(assert (=> b!1159214 (= res!522121 (is-Cons!11339 lt!393859))))

(assert (= (and d!331146 (not res!522123)) b!1159214))

(assert (= (and b!1159214 res!522121) b!1159215))

(assert (= (and b!1159215 res!522122) b!1159216))

(assert (= (and b!1159215 (not res!522120)) b!1159217))

(declare-fun m!1325817 () Bool)

(assert (=> b!1159216 m!1325817))

(assert (=> b!1159217 m!1325683))

(declare-fun m!1325819 () Bool)

(assert (=> b!1159217 m!1325819))

(assert (=> b!1159103 d!331146))

(declare-fun d!331148 () Bool)

(declare-fun lt!393907 () Bool)

(declare-fun e!741877 () Bool)

(assert (=> d!331148 (= lt!393907 e!741877)))

(declare-fun res!522138 () Bool)

(assert (=> d!331148 (=> (not res!522138) (not e!741877))))

(declare-datatypes ((tuple2!11992 0))(
  ( (tuple2!11993 (_1!6843 BalanceConc!7412) (_2!6843 BalanceConc!7410)) )
))
(declare-fun lex!689 (LexerInterface!1661 List!11364 BalanceConc!7410) tuple2!11992)

(declare-fun print!626 (LexerInterface!1661 BalanceConc!7412) BalanceConc!7410)

(declare-fun singletonSeq!644 (Token!3594) BalanceConc!7412)

(assert (=> d!331148 (= res!522138 (= (list!4177 (_1!6843 (lex!689 Lexer!1659 (rules!9455 thiss!10527) (print!626 Lexer!1659 (singletonSeq!644 (h!16740 lt!393862)))))) (list!4177 (singletonSeq!644 (h!16740 lt!393862)))))))

(declare-fun e!741878 () Bool)

(assert (=> d!331148 (= lt!393907 e!741878)))

(declare-fun res!522136 () Bool)

(assert (=> d!331148 (=> (not res!522136) (not e!741878))))

(declare-fun lt!393906 () tuple2!11992)

(assert (=> d!331148 (= res!522136 (= (size!8915 (_1!6843 lt!393906)) 1))))

(assert (=> d!331148 (= lt!393906 (lex!689 Lexer!1659 (rules!9455 thiss!10527) (print!626 Lexer!1659 (singletonSeq!644 (h!16740 lt!393862)))))))

(assert (=> d!331148 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331148 (= (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 lt!393862)) lt!393907)))

(declare-fun b!1159243 () Bool)

(declare-fun res!522137 () Bool)

(assert (=> b!1159243 (=> (not res!522137) (not e!741878))))

(declare-fun apply!2413 (BalanceConc!7412 Int) Token!3594)

(assert (=> b!1159243 (= res!522137 (= (apply!2413 (_1!6843 lt!393906) 0) (h!16740 lt!393862)))))

(declare-fun b!1159244 () Bool)

(declare-fun isEmpty!6962 (BalanceConc!7410) Bool)

(assert (=> b!1159244 (= e!741878 (isEmpty!6962 (_2!6843 lt!393906)))))

(declare-fun b!1159245 () Bool)

(assert (=> b!1159245 (= e!741877 (isEmpty!6962 (_2!6843 (lex!689 Lexer!1659 (rules!9455 thiss!10527) (print!626 Lexer!1659 (singletonSeq!644 (h!16740 lt!393862)))))))))

(assert (= (and d!331148 res!522136) b!1159243))

(assert (= (and b!1159243 res!522137) b!1159244))

(assert (= (and d!331148 res!522138) b!1159245))

(declare-fun m!1325827 () Bool)

(assert (=> d!331148 m!1325827))

(declare-fun m!1325829 () Bool)

(assert (=> d!331148 m!1325829))

(assert (=> d!331148 m!1325829))

(declare-fun m!1325831 () Bool)

(assert (=> d!331148 m!1325831))

(assert (=> d!331148 m!1325831))

(declare-fun m!1325833 () Bool)

(assert (=> d!331148 m!1325833))

(declare-fun m!1325835 () Bool)

(assert (=> d!331148 m!1325835))

(assert (=> d!331148 m!1325711))

(assert (=> d!331148 m!1325829))

(declare-fun m!1325837 () Bool)

(assert (=> d!331148 m!1325837))

(declare-fun m!1325839 () Bool)

(assert (=> b!1159243 m!1325839))

(declare-fun m!1325841 () Bool)

(assert (=> b!1159244 m!1325841))

(assert (=> b!1159245 m!1325829))

(assert (=> b!1159245 m!1325829))

(assert (=> b!1159245 m!1325831))

(assert (=> b!1159245 m!1325831))

(assert (=> b!1159245 m!1325833))

(declare-fun m!1325843 () Bool)

(assert (=> b!1159245 m!1325843))

(assert (=> b!1159104 d!331148))

(declare-fun d!331154 () Bool)

(declare-fun res!522141 () Bool)

(declare-fun e!741881 () Bool)

(assert (=> d!331154 (=> (not res!522141) (not e!741881))))

(declare-fun rulesValid!685 (LexerInterface!1661 List!11364) Bool)

(assert (=> d!331154 (= res!522141 (rulesValid!685 Lexer!1659 (rules!9455 thiss!10527)))))

(assert (=> d!331154 (= (rulesInvariant!1535 Lexer!1659 (rules!9455 thiss!10527)) e!741881)))

(declare-fun b!1159248 () Bool)

(declare-datatypes ((List!11369 0))(
  ( (Nil!11345) (Cons!11345 (h!16746 String!13750) (t!109443 List!11369)) )
))
(declare-fun noDuplicateTag!685 (LexerInterface!1661 List!11364 List!11369) Bool)

(assert (=> b!1159248 (= e!741881 (noDuplicateTag!685 Lexer!1659 (rules!9455 thiss!10527) Nil!11345))))

(assert (= (and d!331154 res!522141) b!1159248))

(declare-fun m!1325845 () Bool)

(assert (=> d!331154 m!1325845))

(declare-fun m!1325847 () Bool)

(assert (=> b!1159248 m!1325847))

(assert (=> b!1159102 d!331154))

(declare-fun d!331156 () Bool)

(declare-fun e!741895 () Bool)

(assert (=> d!331156 e!741895))

(declare-fun res!522157 () Bool)

(assert (=> d!331156 (=> (not res!522157) (not e!741895))))

(assert (=> d!331156 (= res!522157 (rulesInvariant!1535 Lexer!1659 (rules!9455 thiss!10527)))))

(declare-fun Unit!17351 () Unit!17346)

(assert (=> d!331156 (= (lemmaInvariant!153 thiss!10527) Unit!17351)))

(declare-fun b!1159267 () Bool)

(declare-fun res!522158 () Bool)

(assert (=> b!1159267 (=> (not res!522158) (not e!741895))))

(assert (=> b!1159267 (= res!522158 (rulesProduceEachTokenIndividually!700 Lexer!1659 (rules!9455 thiss!10527) (tokens!1565 thiss!10527)))))

(declare-fun b!1159268 () Bool)

(declare-fun separableTokens!105 (LexerInterface!1661 BalanceConc!7412 List!11364) Bool)

(assert (=> b!1159268 (= e!741895 (separableTokens!105 Lexer!1659 (tokens!1565 thiss!10527) (rules!9455 thiss!10527)))))

(assert (= (and d!331156 res!522157) b!1159267))

(assert (= (and b!1159267 res!522158) b!1159268))

(assert (=> d!331156 m!1325695))

(assert (=> b!1159267 m!1325717))

(declare-fun m!1325873 () Bool)

(assert (=> b!1159268 m!1325873))

(assert (=> b!1159102 d!331156))

(declare-fun d!331162 () Bool)

(declare-fun res!522179 () Bool)

(declare-fun e!741909 () Bool)

(assert (=> d!331162 (=> (not res!522179) (not e!741909))))

(assert (=> d!331162 (= res!522179 (not (isEmpty!6960 (rules!9455 thiss!10527))))))

(assert (=> d!331162 (= (inv!14904 thiss!10527) e!741909)))

(declare-fun b!1159292 () Bool)

(declare-fun res!522180 () Bool)

(assert (=> b!1159292 (=> (not res!522180) (not e!741909))))

(assert (=> b!1159292 (= res!522180 (rulesInvariant!1535 Lexer!1659 (rules!9455 thiss!10527)))))

(declare-fun b!1159293 () Bool)

(declare-fun res!522181 () Bool)

(assert (=> b!1159293 (=> (not res!522181) (not e!741909))))

(assert (=> b!1159293 (= res!522181 (rulesProduceEachTokenIndividually!700 Lexer!1659 (rules!9455 thiss!10527) (tokens!1565 thiss!10527)))))

(declare-fun b!1159294 () Bool)

(assert (=> b!1159294 (= e!741909 (separableTokens!105 Lexer!1659 (tokens!1565 thiss!10527) (rules!9455 thiss!10527)))))

(assert (= (and d!331162 res!522179) b!1159292))

(assert (= (and b!1159292 res!522180) b!1159293))

(assert (= (and b!1159293 res!522181) b!1159294))

(assert (=> d!331162 m!1325711))

(assert (=> b!1159292 m!1325695))

(assert (=> b!1159293 m!1325717))

(assert (=> b!1159294 m!1325873))

(assert (=> start!101416 d!331162))

(declare-fun d!331172 () Bool)

(assert (=> d!331172 (= (inv!14905 (tokens!1565 thiss!10527)) (isBalanced!1044 (c!194163 (tokens!1565 thiss!10527))))))

(declare-fun bs!283294 () Bool)

(assert (= bs!283294 d!331172))

(assert (=> bs!283294 m!1325799))

(assert (=> b!1159101 d!331172))

(declare-fun bs!283295 () Bool)

(declare-fun d!331174 () Bool)

(assert (= bs!283295 (and d!331174 b!1159098)))

(declare-fun lambda!47046 () Int)

(assert (=> bs!283295 (= lambda!47046 lambda!47024)))

(declare-fun bs!283296 () Bool)

(assert (= bs!283296 (and d!331174 d!331132)))

(assert (=> bs!283296 (= lambda!47046 lambda!47040)))

(declare-fun b!1159299 () Bool)

(declare-fun e!741914 () Bool)

(assert (=> b!1159299 (= e!741914 true)))

(declare-fun b!1159298 () Bool)

(declare-fun e!741913 () Bool)

(assert (=> b!1159298 (= e!741913 e!741914)))

(declare-fun b!1159297 () Bool)

(declare-fun e!741912 () Bool)

(assert (=> b!1159297 (= e!741912 e!741913)))

(assert (=> d!331174 e!741912))

(assert (= b!1159298 b!1159299))

(assert (= b!1159297 b!1159298))

(assert (= (and d!331174 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159297))

(assert (=> b!1159299 (< (dynLambda!5003 order!6951 (toValue!3067 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47046))))

(assert (=> b!1159299 (< (dynLambda!5005 order!6955 (toChars!2926 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47046))))

(assert (=> d!331174 true))

(declare-fun lt!393919 () Bool)

(assert (=> d!331174 (= lt!393919 (forall!2933 lt!393862 lambda!47046))))

(declare-fun e!741911 () Bool)

(assert (=> d!331174 (= lt!393919 e!741911)))

(declare-fun res!522182 () Bool)

(assert (=> d!331174 (=> res!522182 e!741911)))

(assert (=> d!331174 (= res!522182 (not (is-Cons!11339 lt!393862)))))

(assert (=> d!331174 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331174 (= (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) lt!393862) lt!393919)))

(declare-fun b!1159295 () Bool)

(declare-fun e!741910 () Bool)

(assert (=> b!1159295 (= e!741911 e!741910)))

(declare-fun res!522183 () Bool)

(assert (=> b!1159295 (=> (not res!522183) (not e!741910))))

(assert (=> b!1159295 (= res!522183 (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 lt!393862)))))

(declare-fun b!1159296 () Bool)

(assert (=> b!1159296 (= e!741910 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 lt!393862)))))

(assert (= (and d!331174 (not res!522182)) b!1159295))

(assert (= (and b!1159295 res!522183) b!1159296))

(declare-fun m!1325891 () Bool)

(assert (=> d!331174 m!1325891))

(assert (=> d!331174 m!1325711))

(assert (=> b!1159295 m!1325727))

(assert (=> b!1159296 m!1325699))

(assert (=> b!1159099 d!331174))

(declare-fun bs!283297 () Bool)

(declare-fun d!331176 () Bool)

(assert (= bs!283297 (and d!331176 b!1159098)))

(declare-fun lambda!47051 () Int)

(assert (=> bs!283297 (= lambda!47051 lambda!47024)))

(declare-fun bs!283298 () Bool)

(assert (= bs!283298 (and d!331176 d!331132)))

(assert (=> bs!283298 (= lambda!47051 lambda!47040)))

(declare-fun bs!283299 () Bool)

(assert (= bs!283299 (and d!331176 d!331174)))

(assert (=> bs!283299 (= lambda!47051 lambda!47046)))

(declare-fun b!1159311 () Bool)

(declare-fun e!741923 () Bool)

(assert (=> b!1159311 (= e!741923 true)))

(declare-fun b!1159310 () Bool)

(declare-fun e!741922 () Bool)

(assert (=> b!1159310 (= e!741922 e!741923)))

(declare-fun b!1159309 () Bool)

(declare-fun e!741921 () Bool)

(assert (=> b!1159309 (= e!741921 e!741922)))

(assert (=> d!331176 e!741921))

(assert (= b!1159310 b!1159311))

(assert (= b!1159309 b!1159310))

(assert (= (and d!331176 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159309))

(assert (=> b!1159311 (< (dynLambda!5003 order!6951 (toValue!3067 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47051))))

(assert (=> b!1159311 (< (dynLambda!5005 order!6955 (toChars!2926 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47051))))

(assert (=> d!331176 true))

(declare-fun e!741920 () Bool)

(assert (=> d!331176 e!741920))

(declare-fun res!522192 () Bool)

(assert (=> d!331176 (=> (not res!522192) (not e!741920))))

(declare-fun lt!393922 () Bool)

(assert (=> d!331176 (= res!522192 (= lt!393922 (forall!2933 (list!4177 lt!393858) lambda!47051)))))

(assert (=> d!331176 (= lt!393922 (forall!2932 lt!393858 lambda!47051))))

(assert (=> d!331176 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331176 (= (rulesProduceEachTokenIndividually!700 Lexer!1659 (rules!9455 thiss!10527) lt!393858) lt!393922)))

(declare-fun b!1159308 () Bool)

(assert (=> b!1159308 (= e!741920 (= lt!393922 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (list!4177 lt!393858))))))

(assert (= (and d!331176 res!522192) b!1159308))

(assert (=> d!331176 m!1325687))

(assert (=> d!331176 m!1325687))

(declare-fun m!1325893 () Bool)

(assert (=> d!331176 m!1325893))

(declare-fun m!1325895 () Bool)

(assert (=> d!331176 m!1325895))

(assert (=> d!331176 m!1325711))

(assert (=> b!1159308 m!1325687))

(assert (=> b!1159308 m!1325687))

(declare-fun m!1325897 () Bool)

(assert (=> b!1159308 m!1325897))

(assert (=> b!1159110 d!331176))

(declare-fun d!331180 () Bool)

(declare-fun lt!393925 () Bool)

(assert (=> d!331180 (= lt!393925 (forall!2933 (list!4177 lt!393858) lambda!47024))))

(declare-fun forall!2936 (Conc!3695 Int) Bool)

(assert (=> d!331180 (= lt!393925 (forall!2936 (c!194163 lt!393858) lambda!47024))))

(assert (=> d!331180 (= (forall!2932 lt!393858 lambda!47024) lt!393925)))

(declare-fun bs!283300 () Bool)

(assert (= bs!283300 d!331180))

(assert (=> bs!283300 m!1325687))

(assert (=> bs!283300 m!1325687))

(declare-fun m!1325899 () Bool)

(assert (=> bs!283300 m!1325899))

(declare-fun m!1325901 () Bool)

(assert (=> bs!283300 m!1325901))

(assert (=> b!1159110 d!331180))

(assert (=> b!1159100 d!331180))

(declare-fun bs!283301 () Bool)

(declare-fun d!331182 () Bool)

(assert (= bs!283301 (and d!331182 b!1159098)))

(declare-fun lambda!47052 () Int)

(assert (=> bs!283301 (= lambda!47052 lambda!47024)))

(declare-fun bs!283302 () Bool)

(assert (= bs!283302 (and d!331182 d!331132)))

(assert (=> bs!283302 (= lambda!47052 lambda!47040)))

(declare-fun bs!283303 () Bool)

(assert (= bs!283303 (and d!331182 d!331174)))

(assert (=> bs!283303 (= lambda!47052 lambda!47046)))

(declare-fun bs!283304 () Bool)

(assert (= bs!283304 (and d!331182 d!331176)))

(assert (=> bs!283304 (= lambda!47052 lambda!47051)))

(declare-fun b!1159315 () Bool)

(declare-fun e!741927 () Bool)

(assert (=> b!1159315 (= e!741927 true)))

(declare-fun b!1159314 () Bool)

(declare-fun e!741926 () Bool)

(assert (=> b!1159314 (= e!741926 e!741927)))

(declare-fun b!1159313 () Bool)

(declare-fun e!741925 () Bool)

(assert (=> b!1159313 (= e!741925 e!741926)))

(assert (=> d!331182 e!741925))

(assert (= b!1159314 b!1159315))

(assert (= b!1159313 b!1159314))

(assert (= (and d!331182 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159313))

(assert (=> b!1159315 (< (dynLambda!5003 order!6951 (toValue!3067 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47052))))

(assert (=> b!1159315 (< (dynLambda!5005 order!6955 (toChars!2926 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47052))))

(assert (=> d!331182 true))

(declare-fun e!741924 () Bool)

(assert (=> d!331182 e!741924))

(declare-fun res!522193 () Bool)

(assert (=> d!331182 (=> (not res!522193) (not e!741924))))

(declare-fun lt!393926 () Bool)

(assert (=> d!331182 (= res!522193 (= lt!393926 (forall!2933 (list!4177 (tokens!1565 thiss!10527)) lambda!47052)))))

(assert (=> d!331182 (= lt!393926 (forall!2932 (tokens!1565 thiss!10527) lambda!47052))))

(assert (=> d!331182 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331182 (= (rulesProduceEachTokenIndividually!700 Lexer!1659 (rules!9455 thiss!10527) (tokens!1565 thiss!10527)) lt!393926)))

(declare-fun b!1159312 () Bool)

(assert (=> b!1159312 (= e!741924 (= lt!393926 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (list!4177 (tokens!1565 thiss!10527)))))))

(assert (= (and d!331182 res!522193) b!1159312))

(assert (=> d!331182 m!1325721))

(assert (=> d!331182 m!1325721))

(declare-fun m!1325903 () Bool)

(assert (=> d!331182 m!1325903))

(declare-fun m!1325905 () Bool)

(assert (=> d!331182 m!1325905))

(assert (=> d!331182 m!1325711))

(assert (=> b!1159312 m!1325721))

(assert (=> b!1159312 m!1325721))

(declare-fun m!1325907 () Bool)

(assert (=> b!1159312 m!1325907))

(assert (=> b!1159098 d!331182))

(declare-fun d!331184 () Bool)

(assert (=> d!331184 (= (list!4177 (tokens!1565 thiss!10527)) (list!4179 (c!194163 (tokens!1565 thiss!10527))))))

(declare-fun bs!283305 () Bool)

(assert (= bs!283305 d!331184))

(declare-fun m!1325909 () Bool)

(assert (=> bs!283305 m!1325909))

(assert (=> b!1159098 d!331184))

(declare-fun d!331186 () Bool)

(declare-fun lt!393927 () Bool)

(assert (=> d!331186 (= lt!393927 (forall!2933 (list!4177 (tokens!1565 thiss!10527)) lambda!47024))))

(assert (=> d!331186 (= lt!393927 (forall!2936 (c!194163 (tokens!1565 thiss!10527)) lambda!47024))))

(assert (=> d!331186 (= (forall!2932 (tokens!1565 thiss!10527) lambda!47024) lt!393927)))

(declare-fun bs!283306 () Bool)

(assert (= bs!283306 d!331186))

(assert (=> bs!283306 m!1325721))

(assert (=> bs!283306 m!1325721))

(declare-fun m!1325911 () Bool)

(assert (=> bs!283306 m!1325911))

(declare-fun m!1325913 () Bool)

(assert (=> bs!283306 m!1325913))

(assert (=> b!1159098 d!331186))

(declare-fun bs!283307 () Bool)

(declare-fun d!331188 () Bool)

(assert (= bs!283307 (and d!331188 d!331182)))

(declare-fun lambda!47053 () Int)

(assert (=> bs!283307 (= lambda!47053 lambda!47052)))

(declare-fun bs!283308 () Bool)

(assert (= bs!283308 (and d!331188 d!331174)))

(assert (=> bs!283308 (= lambda!47053 lambda!47046)))

(declare-fun bs!283309 () Bool)

(assert (= bs!283309 (and d!331188 b!1159098)))

(assert (=> bs!283309 (= lambda!47053 lambda!47024)))

(declare-fun bs!283310 () Bool)

(assert (= bs!283310 (and d!331188 d!331132)))

(assert (=> bs!283310 (= lambda!47053 lambda!47040)))

(declare-fun bs!283311 () Bool)

(assert (= bs!283311 (and d!331188 d!331176)))

(assert (=> bs!283311 (= lambda!47053 lambda!47051)))

(declare-fun b!1159320 () Bool)

(declare-fun e!741932 () Bool)

(assert (=> b!1159320 (= e!741932 true)))

(declare-fun b!1159319 () Bool)

(declare-fun e!741931 () Bool)

(assert (=> b!1159319 (= e!741931 e!741932)))

(declare-fun b!1159318 () Bool)

(declare-fun e!741930 () Bool)

(assert (=> b!1159318 (= e!741930 e!741931)))

(assert (=> d!331188 e!741930))

(assert (= b!1159319 b!1159320))

(assert (= b!1159318 b!1159319))

(assert (= (and d!331188 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159318))

(assert (=> b!1159320 (< (dynLambda!5003 order!6951 (toValue!3067 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47053))))

(assert (=> b!1159320 (< (dynLambda!5005 order!6955 (toChars!2926 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47053))))

(assert (=> d!331188 true))

(declare-fun lt!393928 () Bool)

(assert (=> d!331188 (= lt!393928 (forall!2933 lt!393859 lambda!47053))))

(declare-fun e!741929 () Bool)

(assert (=> d!331188 (= lt!393928 e!741929)))

(declare-fun res!522194 () Bool)

(assert (=> d!331188 (=> res!522194 e!741929)))

(assert (=> d!331188 (= res!522194 (not (is-Cons!11339 lt!393859)))))

(assert (=> d!331188 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331188 (= (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) lt!393859) lt!393928)))

(declare-fun b!1159316 () Bool)

(declare-fun e!741928 () Bool)

(assert (=> b!1159316 (= e!741929 e!741928)))

(declare-fun res!522195 () Bool)

(assert (=> b!1159316 (=> (not res!522195) (not e!741928))))

(assert (=> b!1159316 (= res!522195 (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 lt!393859)))))

(declare-fun b!1159317 () Bool)

(assert (=> b!1159317 (= e!741928 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 lt!393859)))))

(assert (= (and d!331188 (not res!522194)) b!1159316))

(assert (= (and b!1159316 res!522195) b!1159317))

(declare-fun m!1325915 () Bool)

(assert (=> d!331188 m!1325915))

(assert (=> d!331188 m!1325711))

(assert (=> b!1159316 m!1325709))

(assert (=> b!1159317 m!1325679))

(assert (=> b!1159098 d!331188))

(declare-fun bs!283312 () Bool)

(declare-fun d!331190 () Bool)

(assert (= bs!283312 (and d!331190 d!331182)))

(declare-fun lambda!47054 () Int)

(assert (=> bs!283312 (= lambda!47054 lambda!47052)))

(declare-fun bs!283313 () Bool)

(assert (= bs!283313 (and d!331190 d!331188)))

(assert (=> bs!283313 (= lambda!47054 lambda!47053)))

(declare-fun bs!283314 () Bool)

(assert (= bs!283314 (and d!331190 d!331174)))

(assert (=> bs!283314 (= lambda!47054 lambda!47046)))

(declare-fun bs!283315 () Bool)

(assert (= bs!283315 (and d!331190 b!1159098)))

(assert (=> bs!283315 (= lambda!47054 lambda!47024)))

(declare-fun bs!283316 () Bool)

(assert (= bs!283316 (and d!331190 d!331132)))

(assert (=> bs!283316 (= lambda!47054 lambda!47040)))

(declare-fun bs!283317 () Bool)

(assert (= bs!283317 (and d!331190 d!331176)))

(assert (=> bs!283317 (= lambda!47054 lambda!47051)))

(declare-fun b!1159325 () Bool)

(declare-fun e!741937 () Bool)

(assert (=> b!1159325 (= e!741937 true)))

(declare-fun b!1159324 () Bool)

(declare-fun e!741936 () Bool)

(assert (=> b!1159324 (= e!741936 e!741937)))

(declare-fun b!1159323 () Bool)

(declare-fun e!741935 () Bool)

(assert (=> b!1159323 (= e!741935 e!741936)))

(assert (=> d!331190 e!741935))

(assert (= b!1159324 b!1159325))

(assert (= b!1159323 b!1159324))

(assert (= (and d!331190 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159323))

(assert (=> b!1159325 (< (dynLambda!5003 order!6951 (toValue!3067 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47054))))

(assert (=> b!1159325 (< (dynLambda!5005 order!6955 (toChars!2926 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47054))))

(assert (=> d!331190 true))

(declare-fun lt!393929 () Bool)

(assert (=> d!331190 (= lt!393929 (forall!2933 (t!109412 lt!393862) lambda!47054))))

(declare-fun e!741934 () Bool)

(assert (=> d!331190 (= lt!393929 e!741934)))

(declare-fun res!522196 () Bool)

(assert (=> d!331190 (=> res!522196 e!741934)))

(assert (=> d!331190 (= res!522196 (not (is-Cons!11339 (t!109412 lt!393862))))))

(assert (=> d!331190 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331190 (= (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 lt!393862)) lt!393929)))

(declare-fun b!1159321 () Bool)

(declare-fun e!741933 () Bool)

(assert (=> b!1159321 (= e!741934 e!741933)))

(declare-fun res!522197 () Bool)

(assert (=> b!1159321 (=> (not res!522197) (not e!741933))))

(assert (=> b!1159321 (= res!522197 (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 (t!109412 lt!393862))))))

(declare-fun b!1159322 () Bool)

(assert (=> b!1159322 (= e!741933 (rulesProduceEachTokenIndividuallyList!529 Lexer!1659 (rules!9455 thiss!10527) (t!109412 (t!109412 lt!393862))))))

(assert (= (and d!331190 (not res!522196)) b!1159321))

(assert (= (and b!1159321 res!522197) b!1159322))

(declare-fun m!1325917 () Bool)

(assert (=> d!331190 m!1325917))

(assert (=> d!331190 m!1325711))

(declare-fun m!1325919 () Bool)

(assert (=> b!1159321 m!1325919))

(declare-fun m!1325921 () Bool)

(assert (=> b!1159322 m!1325921))

(assert (=> b!1159109 d!331190))

(declare-fun d!331192 () Bool)

(declare-fun c!194170 () Bool)

(assert (=> d!331192 (= c!194170 (is-Node!3695 (c!194163 (tokens!1565 thiss!10527))))))

(declare-fun e!741942 () Bool)

(assert (=> d!331192 (= (inv!14906 (c!194163 (tokens!1565 thiss!10527))) e!741942)))

(declare-fun b!1159332 () Bool)

(declare-fun inv!14910 (Conc!3695) Bool)

(assert (=> b!1159332 (= e!741942 (inv!14910 (c!194163 (tokens!1565 thiss!10527))))))

(declare-fun b!1159333 () Bool)

(declare-fun e!741943 () Bool)

(assert (=> b!1159333 (= e!741942 e!741943)))

(declare-fun res!522200 () Bool)

(assert (=> b!1159333 (= res!522200 (not (is-Leaf!5689 (c!194163 (tokens!1565 thiss!10527)))))))

(assert (=> b!1159333 (=> res!522200 e!741943)))

(declare-fun b!1159334 () Bool)

(declare-fun inv!14911 (Conc!3695) Bool)

(assert (=> b!1159334 (= e!741943 (inv!14911 (c!194163 (tokens!1565 thiss!10527))))))

(assert (= (and d!331192 c!194170) b!1159332))

(assert (= (and d!331192 (not c!194170)) b!1159333))

(assert (= (and b!1159333 (not res!522200)) b!1159334))

(declare-fun m!1325923 () Bool)

(assert (=> b!1159332 m!1325923))

(declare-fun m!1325925 () Bool)

(assert (=> b!1159334 m!1325925))

(assert (=> b!1159107 d!331192))

(declare-fun d!331194 () Bool)

(declare-fun lt!393931 () Bool)

(declare-fun e!741944 () Bool)

(assert (=> d!331194 (= lt!393931 e!741944)))

(declare-fun res!522203 () Bool)

(assert (=> d!331194 (=> (not res!522203) (not e!741944))))

(assert (=> d!331194 (= res!522203 (= (list!4177 (_1!6843 (lex!689 Lexer!1659 (rules!9455 thiss!10527) (print!626 Lexer!1659 (singletonSeq!644 (h!16740 lt!393859)))))) (list!4177 (singletonSeq!644 (h!16740 lt!393859)))))))

(declare-fun e!741945 () Bool)

(assert (=> d!331194 (= lt!393931 e!741945)))

(declare-fun res!522201 () Bool)

(assert (=> d!331194 (=> (not res!522201) (not e!741945))))

(declare-fun lt!393930 () tuple2!11992)

(assert (=> d!331194 (= res!522201 (= (size!8915 (_1!6843 lt!393930)) 1))))

(assert (=> d!331194 (= lt!393930 (lex!689 Lexer!1659 (rules!9455 thiss!10527) (print!626 Lexer!1659 (singletonSeq!644 (h!16740 lt!393859)))))))

(assert (=> d!331194 (not (isEmpty!6960 (rules!9455 thiss!10527)))))

(assert (=> d!331194 (= (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 lt!393859)) lt!393931)))

(declare-fun b!1159335 () Bool)

(declare-fun res!522202 () Bool)

(assert (=> b!1159335 (=> (not res!522202) (not e!741945))))

(assert (=> b!1159335 (= res!522202 (= (apply!2413 (_1!6843 lt!393930) 0) (h!16740 lt!393859)))))

(declare-fun b!1159336 () Bool)

(assert (=> b!1159336 (= e!741945 (isEmpty!6962 (_2!6843 lt!393930)))))

(declare-fun b!1159337 () Bool)

(assert (=> b!1159337 (= e!741944 (isEmpty!6962 (_2!6843 (lex!689 Lexer!1659 (rules!9455 thiss!10527) (print!626 Lexer!1659 (singletonSeq!644 (h!16740 lt!393859)))))))))

(assert (= (and d!331194 res!522201) b!1159335))

(assert (= (and b!1159335 res!522202) b!1159336))

(assert (= (and d!331194 res!522203) b!1159337))

(declare-fun m!1325927 () Bool)

(assert (=> d!331194 m!1325927))

(declare-fun m!1325929 () Bool)

(assert (=> d!331194 m!1325929))

(assert (=> d!331194 m!1325929))

(declare-fun m!1325931 () Bool)

(assert (=> d!331194 m!1325931))

(assert (=> d!331194 m!1325931))

(declare-fun m!1325933 () Bool)

(assert (=> d!331194 m!1325933))

(declare-fun m!1325935 () Bool)

(assert (=> d!331194 m!1325935))

(assert (=> d!331194 m!1325711))

(assert (=> d!331194 m!1325929))

(declare-fun m!1325937 () Bool)

(assert (=> d!331194 m!1325937))

(declare-fun m!1325939 () Bool)

(assert (=> b!1159335 m!1325939))

(declare-fun m!1325941 () Bool)

(assert (=> b!1159336 m!1325941))

(assert (=> b!1159337 m!1325929))

(assert (=> b!1159337 m!1325929))

(assert (=> b!1159337 m!1325931))

(assert (=> b!1159337 m!1325931))

(assert (=> b!1159337 m!1325933))

(declare-fun m!1325943 () Bool)

(assert (=> b!1159337 m!1325943))

(assert (=> b!1159097 d!331194))

(declare-fun d!331196 () Bool)

(assert (=> d!331196 (= (isEmpty!6960 (rules!9455 thiss!10527)) (is-Nil!11340 (rules!9455 thiss!10527)))))

(assert (=> b!1159108 d!331196))

(declare-fun b!1159346 () Bool)

(declare-fun e!741950 () Bool)

(assert (=> b!1159346 (= e!741950 true)))

(declare-fun b!1159348 () Bool)

(declare-fun e!741951 () Bool)

(assert (=> b!1159348 (= e!741951 true)))

(declare-fun b!1159347 () Bool)

(assert (=> b!1159347 (= e!741950 e!741951)))

(assert (=> b!1159118 e!741950))

(assert (= (and b!1159118 (is-Node!3695 (c!194163 (tokens!1565 thiss!10527)))) b!1159346))

(assert (= b!1159347 b!1159348))

(assert (= (and b!1159118 (is-Leaf!5689 (c!194163 (tokens!1565 thiss!10527)))) b!1159347))

(declare-fun b!1159359 () Bool)

(declare-fun b_free!27721 () Bool)

(declare-fun b_next!28425 () Bool)

(assert (=> b!1159359 (= b_free!27721 (not b_next!28425))))

(declare-fun tp!333593 () Bool)

(declare-fun b_and!80597 () Bool)

(assert (=> b!1159359 (= tp!333593 b_and!80597)))

(declare-fun b_free!27723 () Bool)

(declare-fun b_next!28427 () Bool)

(assert (=> b!1159359 (= b_free!27723 (not b_next!28427))))

(declare-fun tp!333592 () Bool)

(declare-fun b_and!80599 () Bool)

(assert (=> b!1159359 (= tp!333592 b_and!80599)))

(declare-fun e!741961 () Bool)

(assert (=> b!1159359 (= e!741961 (and tp!333593 tp!333592))))

(declare-fun tp!333591 () Bool)

(declare-fun b!1159358 () Bool)

(declare-fun e!741962 () Bool)

(declare-fun inv!14901 (String!13750) Bool)

(declare-fun inv!14912 (TokenValueInjection!3764) Bool)

(assert (=> b!1159358 (= e!741962 (and tp!333591 (inv!14901 (tag!2228 (h!16741 (rules!9455 thiss!10527)))) (inv!14912 (transformation!1966 (h!16741 (rules!9455 thiss!10527)))) e!741961))))

(declare-fun b!1159357 () Bool)

(declare-fun e!741960 () Bool)

(declare-fun tp!333594 () Bool)

(assert (=> b!1159357 (= e!741960 (and e!741962 tp!333594))))

(assert (=> b!1159101 (= tp!333575 e!741960)))

(assert (= b!1159358 b!1159359))

(assert (= b!1159357 b!1159358))

(assert (= (and b!1159101 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159357))

(declare-fun m!1325945 () Bool)

(assert (=> b!1159358 m!1325945))

(declare-fun m!1325947 () Bool)

(assert (=> b!1159358 m!1325947))

(declare-fun b!1159362 () Bool)

(declare-fun e!741966 () Bool)

(assert (=> b!1159362 (= e!741966 true)))

(declare-fun b!1159361 () Bool)

(declare-fun e!741965 () Bool)

(assert (=> b!1159361 (= e!741965 e!741966)))

(declare-fun b!1159360 () Bool)

(declare-fun e!741964 () Bool)

(assert (=> b!1159360 (= e!741964 e!741965)))

(assert (=> b!1159117 e!741964))

(assert (= b!1159361 b!1159362))

(assert (= b!1159360 b!1159361))

(assert (= (and b!1159117 (is-Cons!11340 (rules!9455 thiss!10527))) b!1159360))

(assert (=> b!1159362 (< (dynLambda!5003 order!6951 (toValue!3067 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47024))))

(assert (=> b!1159362 (< (dynLambda!5005 order!6955 (toChars!2926 (transformation!1966 (h!16741 (rules!9455 thiss!10527))))) (dynLambda!5004 order!6953 lambda!47024))))

(declare-fun b!1159371 () Bool)

(declare-fun e!741972 () Bool)

(declare-fun tp!333601 () Bool)

(declare-fun tp!333602 () Bool)

(assert (=> b!1159371 (= e!741972 (and (inv!14906 (left!9894 (c!194163 (tokens!1565 thiss!10527)))) tp!333601 (inv!14906 (right!10224 (c!194163 (tokens!1565 thiss!10527)))) tp!333602))))

(declare-fun b!1159373 () Bool)

(declare-fun e!741971 () Bool)

(declare-fun tp!333603 () Bool)

(assert (=> b!1159373 (= e!741971 tp!333603)))

(declare-fun b!1159372 () Bool)

(declare-fun inv!14913 (IArray!7395) Bool)

(assert (=> b!1159372 (= e!741972 (and (inv!14913 (xs!6400 (c!194163 (tokens!1565 thiss!10527)))) e!741971))))

(assert (=> b!1159107 (= tp!333576 (and (inv!14906 (c!194163 (tokens!1565 thiss!10527))) e!741972))))

(assert (= (and b!1159107 (is-Node!3695 (c!194163 (tokens!1565 thiss!10527)))) b!1159371))

(assert (= b!1159372 b!1159373))

(assert (= (and b!1159107 (is-Leaf!5689 (c!194163 (tokens!1565 thiss!10527)))) b!1159372))

(declare-fun m!1325949 () Bool)

(assert (=> b!1159371 m!1325949))

(declare-fun m!1325951 () Bool)

(assert (=> b!1159371 m!1325951))

(declare-fun m!1325953 () Bool)

(assert (=> b!1159372 m!1325953))

(assert (=> b!1159107 m!1325713))

(declare-fun b_lambda!34601 () Bool)

(assert (= b_lambda!34599 (or b!1159098 b_lambda!34601)))

(declare-fun bs!283318 () Bool)

(declare-fun d!331198 () Bool)

(assert (= bs!283318 (and d!331198 b!1159098)))

(assert (=> bs!283318 (= (dynLambda!5006 lambda!47024 (h!16740 lt!393862)) (rulesProduceIndividualToken!698 Lexer!1659 (rules!9455 thiss!10527) (h!16740 lt!393862)))))

(assert (=> bs!283318 m!1325727))

(assert (=> b!1159204 d!331198))

(push 1)

(assert (not d!331186))

(assert (not d!331136))

(assert (not b!1159360))

(assert (not b!1159318))

(assert (not b!1159245))

(assert (not b!1159268))

(assert (not d!331190))

(assert (not d!331184))

(assert (not b!1159312))

(assert (not d!331138))

(assert (not b!1159248))

(assert (not b_lambda!34601))

(assert (not b!1159316))

(assert (not d!331176))

(assert (not d!331140))

(assert (not b!1159317))

(assert (not d!331142))

(assert (not b!1159297))

(assert (not d!331172))

(assert (not b!1159199))

(assert (not b!1159217))

(assert (not b!1159173))

(assert (not b!1159296))

(assert (not b!1159205))

(assert (not d!331162))

(assert (not b!1159335))

(assert (not b!1159293))

(assert (not b!1159323))

(assert (not b!1159244))

(assert (not d!331130))

(assert (not b!1159372))

(assert (not b!1159334))

(assert (not b!1159358))

(assert (not b!1159313))

(assert (not b!1159308))

(assert (not d!331156))

(assert (not bs!283318))

(assert (not b!1159196))

(assert (not d!331134))

(assert (not d!331188))

(assert (not b!1159371))

(assert (not d!331174))

(assert (not b!1159183))

(assert (not b!1159373))

(assert (not d!331148))

(assert (not b_next!28427))

(assert (not b!1159294))

(assert (not b!1159332))

(assert b_and!80599)

(assert (not b_next!28425))

(assert (not b!1159336))

(assert (not b!1159267))

(assert b_and!80597)

(assert (not b!1159107))

(assert (not b!1159292))

(assert (not b!1159321))

(assert (not b!1159195))

(assert (not d!331194))

(assert (not b!1159309))

(assert (not b!1159322))

(assert (not d!331182))

(assert (not d!331154))

(assert (not b!1159174))

(assert (not b!1159348))

(assert (not d!331132))

(assert (not d!331180))

(assert (not b!1159357))

(assert (not b!1159346))

(assert (not b!1159243))

(assert (not b!1159337))

(assert (not b!1159216))

(assert (not b!1159295))

(assert (not b!1159194))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80597)

(assert b_and!80599)

(assert (not b_next!28425))

(assert (not b_next!28427))

(check-sat)

(pop 1)

