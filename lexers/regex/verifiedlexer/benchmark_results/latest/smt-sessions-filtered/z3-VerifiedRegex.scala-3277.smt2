; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!188346 () Bool)

(assert start!188346)

(declare-fun b!1878352 () Bool)

(declare-fun b_free!52289 () Bool)

(declare-fun b_next!52993 () Bool)

(assert (=> b!1878352 (= b_free!52289 (not b_next!52993))))

(declare-fun tp!535528 () Bool)

(declare-fun b_and!144735 () Bool)

(assert (=> b!1878352 (= tp!535528 b_and!144735)))

(declare-fun b_free!52291 () Bool)

(declare-fun b_next!52995 () Bool)

(assert (=> b!1878352 (= b_free!52291 (not b_next!52995))))

(declare-fun tp!535532 () Bool)

(declare-fun b_and!144737 () Bool)

(assert (=> b!1878352 (= tp!535532 b_and!144737)))

(declare-fun b!1878347 () Bool)

(declare-fun e!1198728 () Bool)

(declare-datatypes ((List!21009 0))(
  ( (Nil!20927) (Cons!20927 (h!26328 (_ BitVec 16)) (t!173794 List!21009)) )
))
(declare-datatypes ((TokenValue!3850 0))(
  ( (FloatLiteralValue!7700 (text!27395 List!21009)) (TokenValueExt!3849 (__x!13138 Int)) (Broken!19250 (value!117288 List!21009)) (Object!3931) (End!3850) (Def!3850) (Underscore!3850) (Match!3850) (Else!3850) (Error!3850) (Case!3850) (If!3850) (Extends!3850) (Abstract!3850) (Class!3850) (Val!3850) (DelimiterValue!7700 (del!3910 List!21009)) (KeywordValue!3856 (value!117289 List!21009)) (CommentValue!7700 (value!117290 List!21009)) (WhitespaceValue!7700 (value!117291 List!21009)) (IndentationValue!3850 (value!117292 List!21009)) (String!24199) (Int32!3850) (Broken!19251 (value!117293 List!21009)) (Boolean!3851) (Unit!35453) (OperatorValue!3853 (op!3910 List!21009)) (IdentifierValue!7700 (value!117294 List!21009)) (IdentifierValue!7701 (value!117295 List!21009)) (WhitespaceValue!7701 (value!117296 List!21009)) (True!7700) (False!7700) (Broken!19252 (value!117297 List!21009)) (Broken!19253 (value!117298 List!21009)) (True!7701) (RightBrace!3850) (RightBracket!3850) (Colon!3850) (Null!3850) (Comma!3850) (LeftBracket!3850) (False!7701) (LeftBrace!3850) (ImaginaryLiteralValue!3850 (text!27396 List!21009)) (StringLiteralValue!11550 (value!117299 List!21009)) (EOFValue!3850 (value!117300 List!21009)) (IdentValue!3850 (value!117301 List!21009)) (DelimiterValue!7701 (value!117302 List!21009)) (DedentValue!3850 (value!117303 List!21009)) (NewLineValue!3850 (value!117304 List!21009)) (IntegerValue!11550 (value!117305 (_ BitVec 32)) (text!27397 List!21009)) (IntegerValue!11551 (value!117306 Int) (text!27398 List!21009)) (Times!3850) (Or!3850) (Equal!3850) (Minus!3850) (Broken!19254 (value!117307 List!21009)) (And!3850) (Div!3850) (LessEqual!3850) (Mod!3850) (Concat!8973) (Not!3850) (Plus!3850) (SpaceValue!3850 (value!117308 List!21009)) (IntegerValue!11552 (value!117309 Int) (text!27399 List!21009)) (StringLiteralValue!11551 (text!27400 List!21009)) (FloatLiteralValue!7701 (text!27401 List!21009)) (BytesLiteralValue!3850 (value!117310 List!21009)) (CommentValue!7701 (value!117311 List!21009)) (StringLiteralValue!11552 (value!117312 List!21009)) (ErrorTokenValue!3850 (msg!3911 List!21009)) )
))
(declare-datatypes ((C!10404 0))(
  ( (C!10405 (val!6090 Int)) )
))
(declare-datatypes ((Regex!5123 0))(
  ( (ElementMatch!5123 (c!306206 C!10404)) (Concat!8974 (regOne!10758 Regex!5123) (regTwo!10758 Regex!5123)) (EmptyExpr!5123) (Star!5123 (reg!5452 Regex!5123)) (EmptyLang!5123) (Union!5123 (regOne!10759 Regex!5123) (regTwo!10759 Regex!5123)) )
))
(declare-datatypes ((String!24200 0))(
  ( (String!24201 (value!117313 String)) )
))
(declare-datatypes ((List!21010 0))(
  ( (Nil!20928) (Cons!20928 (h!26329 C!10404) (t!173795 List!21010)) )
))
(declare-datatypes ((IArray!13919 0))(
  ( (IArray!13920 (innerList!7017 List!21010)) )
))
(declare-datatypes ((Conc!6957 0))(
  ( (Node!6957 (left!16824 Conc!6957) (right!17154 Conc!6957) (csize!14144 Int) (cheight!7168 Int)) (Leaf!10235 (xs!9841 IArray!13919) (csize!14145 Int)) (Empty!6957) )
))
(declare-datatypes ((BalanceConc!13730 0))(
  ( (BalanceConc!13731 (c!306207 Conc!6957)) )
))
(declare-datatypes ((TokenValueInjection!7284 0))(
  ( (TokenValueInjection!7285 (toValue!5315 Int) (toChars!5174 Int)) )
))
(declare-datatypes ((Rule!7228 0))(
  ( (Rule!7229 (regex!3714 Regex!5123) (tag!4128 String!24200) (isSeparator!3714 Bool) (transformation!3714 TokenValueInjection!7284)) )
))
(declare-datatypes ((Token!6980 0))(
  ( (Token!6981 (value!117314 TokenValue!3850) (rule!5907 Rule!7228) (size!16611 Int) (originalCharacters!4521 List!21010)) )
))
(declare-datatypes ((List!21011 0))(
  ( (Nil!20929) (Cons!20929 (h!26330 Token!6980) (t!173796 List!21011)) )
))
(declare-datatypes ((IArray!13921 0))(
  ( (IArray!13922 (innerList!7018 List!21011)) )
))
(declare-datatypes ((Conc!6958 0))(
  ( (Node!6958 (left!16825 Conc!6958) (right!17155 Conc!6958) (csize!14146 Int) (cheight!7169 Int)) (Leaf!10236 (xs!9842 IArray!13921) (csize!14147 Int)) (Empty!6958) )
))
(declare-datatypes ((BalanceConc!13732 0))(
  ( (BalanceConc!13733 (c!306208 Conc!6958)) )
))
(declare-fun v!6352 () BalanceConc!13732)

(declare-fun tp!535531 () Bool)

(declare-fun inv!27858 (Conc!6958) Bool)

(assert (=> b!1878347 (= e!1198728 (and (inv!27858 (c!306208 v!6352)) tp!535531))))

(declare-fun b!1878349 () Bool)

(declare-fun e!1198729 () Bool)

(declare-fun e!1198730 () Bool)

(assert (=> b!1878349 (= e!1198729 (not e!1198730))))

(declare-fun res!839604 () Bool)

(assert (=> b!1878349 (=> res!839604 e!1198730)))

(declare-datatypes ((LexerInterface!3336 0))(
  ( (LexerInterfaceExt!3333 (__x!13139 Int)) (Lexer!3334) )
))
(declare-fun thiss!13718 () LexerInterface!3336)

(declare-fun from!845 () Int)

(declare-fun lt!721743 () BalanceConc!13732)

(declare-fun separatorToken!84 () Token!6980)

(declare-fun lt!721731 () List!21011)

(declare-fun list!8546 (BalanceConc!13732) List!21011)

(declare-fun withSeparatorTokenInner!14 (LexerInterface!3336 BalanceConc!13732 Token!6980 Int BalanceConc!13732) BalanceConc!13732)

(declare-fun ++!5693 (List!21011 List!21011) List!21011)

(assert (=> b!1878349 (= res!839604 (not (= (list!8546 (withSeparatorTokenInner!14 thiss!13718 v!6352 separatorToken!84 (+ 1 from!845) lt!721743)) (++!5693 (list!8546 lt!721743) lt!721731))))))

(declare-fun acc!408 () BalanceConc!13732)

(declare-fun lt!721733 () BalanceConc!13732)

(declare-fun ++!5694 (BalanceConc!13732 BalanceConc!13732) BalanceConc!13732)

(declare-fun singletonSeq!1827 (Token!6980) BalanceConc!13732)

(assert (=> b!1878349 (= lt!721743 (++!5694 acc!408 (++!5694 lt!721733 (singletonSeq!1827 separatorToken!84))))))

(declare-fun lt!721742 () Token!6980)

(assert (=> b!1878349 (= lt!721733 (singletonSeq!1827 lt!721742))))

(declare-fun lt!721735 () List!21011)

(declare-fun lt!721740 () List!21011)

(assert (=> b!1878349 (= (++!5693 (++!5693 lt!721735 lt!721740) lt!721731) (++!5693 lt!721735 (++!5693 lt!721740 lt!721731)))))

(declare-datatypes ((Unit!35454 0))(
  ( (Unit!35455) )
))
(declare-fun lt!721732 () Unit!35454)

(declare-fun lemmaConcatAssociativity!1129 (List!21011 List!21011 List!21011) Unit!35454)

(assert (=> b!1878349 (= lt!721732 (lemmaConcatAssociativity!1129 lt!721735 lt!721740 lt!721731))))

(declare-fun lt!721739 () List!21011)

(declare-fun withSeparatorTokenList!122 (LexerInterface!3336 List!21011 Token!6980) List!21011)

(assert (=> b!1878349 (= lt!721731 (withSeparatorTokenList!122 thiss!13718 lt!721739 separatorToken!84))))

(assert (=> b!1878349 (= lt!721740 (Cons!20929 lt!721742 (Cons!20929 separatorToken!84 Nil!20929)))))

(declare-fun apply!5528 (BalanceConc!13732 Int) Token!6980)

(assert (=> b!1878349 (= lt!721742 (apply!5528 v!6352 from!845))))

(assert (=> b!1878349 (= lt!721735 (list!8546 acc!408))))

(declare-fun lt!721738 () List!21011)

(declare-fun tail!2912 (List!21011) List!21011)

(assert (=> b!1878349 (= (tail!2912 lt!721738) lt!721739)))

(declare-fun lt!721741 () List!21011)

(declare-fun drop!1034 (List!21011 Int) List!21011)

(assert (=> b!1878349 (= lt!721739 (drop!1034 lt!721741 (+ 1 from!845)))))

(declare-fun lt!721736 () Unit!35454)

(declare-fun lemmaDropTail!650 (List!21011 Int) Unit!35454)

(assert (=> b!1878349 (= lt!721736 (lemmaDropTail!650 lt!721741 from!845))))

(declare-fun head!4383 (List!21011) Token!6980)

(declare-fun apply!5529 (List!21011 Int) Token!6980)

(assert (=> b!1878349 (= (head!4383 lt!721738) (apply!5529 lt!721741 from!845))))

(assert (=> b!1878349 (= lt!721738 (drop!1034 lt!721741 from!845))))

(declare-fun lt!721734 () Unit!35454)

(declare-fun lemmaDropApply!670 (List!21011 Int) Unit!35454)

(assert (=> b!1878349 (= lt!721734 (lemmaDropApply!670 lt!721741 from!845))))

(assert (=> b!1878349 (= lt!721741 (list!8546 v!6352))))

(declare-fun b!1878350 () Bool)

(declare-fun res!839602 () Bool)

(assert (=> b!1878350 (=> res!839602 e!1198730)))

(assert (=> b!1878350 (= res!839602 (not (= (list!8546 (++!5694 acc!408 lt!721733)) (++!5693 lt!721735 (Cons!20929 lt!721742 Nil!20929)))))))

(declare-fun b!1878351 () Bool)

(declare-fun e!1198731 () Bool)

(assert (=> b!1878351 (= e!1198731 e!1198729)))

(declare-fun res!839603 () Bool)

(assert (=> b!1878351 (=> (not res!839603) (not e!1198729))))

(declare-fun lt!721737 () Int)

(assert (=> b!1878351 (= res!839603 (and (<= from!845 lt!721737) (isSeparator!3714 (rule!5907 separatorToken!84)) (< from!845 lt!721737)))))

(declare-fun size!16612 (BalanceConc!13732) Int)

(assert (=> b!1878351 (= lt!721737 (size!16612 v!6352))))

(declare-fun e!1198726 () Bool)

(assert (=> b!1878352 (= e!1198726 (and tp!535528 tp!535532))))

(declare-fun e!1198725 () Bool)

(declare-fun tp!535529 () Bool)

(declare-fun b!1878353 () Bool)

(declare-fun inv!27853 (String!24200) Bool)

(declare-fun inv!27859 (TokenValueInjection!7284) Bool)

(assert (=> b!1878353 (= e!1198725 (and tp!535529 (inv!27853 (tag!4128 (rule!5907 separatorToken!84))) (inv!27859 (transformation!3714 (rule!5907 separatorToken!84))) e!1198726))))

(declare-fun b!1878354 () Bool)

(declare-fun e!1198724 () Bool)

(declare-fun tp!535533 () Bool)

(assert (=> b!1878354 (= e!1198724 (and (inv!27858 (c!306208 acc!408)) tp!535533))))

(declare-fun b!1878355 () Bool)

(assert (=> b!1878355 (= e!1198730 (< (- lt!721737 (+ 1 from!845)) (- lt!721737 from!845)))))

(declare-fun res!839605 () Bool)

(assert (=> start!188346 (=> (not res!839605) (not e!1198731))))

(get-info :version)

(assert (=> start!188346 (= res!839605 (and ((_ is Lexer!3334) thiss!13718) (>= from!845 0)))))

(assert (=> start!188346 e!1198731))

(assert (=> start!188346 true))

(declare-fun inv!27860 (BalanceConc!13732) Bool)

(assert (=> start!188346 (and (inv!27860 acc!408) e!1198724)))

(assert (=> start!188346 (and (inv!27860 v!6352) e!1198728)))

(declare-fun e!1198733 () Bool)

(declare-fun inv!27861 (Token!6980) Bool)

(assert (=> start!188346 (and (inv!27861 separatorToken!84) e!1198733)))

(declare-fun b!1878348 () Bool)

(declare-fun tp!535530 () Bool)

(declare-fun inv!21 (TokenValue!3850) Bool)

(assert (=> b!1878348 (= e!1198733 (and (inv!21 (value!117314 separatorToken!84)) e!1198725 tp!535530))))

(assert (= (and start!188346 res!839605) b!1878351))

(assert (= (and b!1878351 res!839603) b!1878349))

(assert (= (and b!1878349 (not res!839604)) b!1878350))

(assert (= (and b!1878350 (not res!839602)) b!1878355))

(assert (= start!188346 b!1878354))

(assert (= start!188346 b!1878347))

(assert (= b!1878353 b!1878352))

(assert (= b!1878348 b!1878353))

(assert (= start!188346 b!1878348))

(declare-fun m!2305783 () Bool)

(assert (=> b!1878349 m!2305783))

(declare-fun m!2305785 () Bool)

(assert (=> b!1878349 m!2305785))

(declare-fun m!2305787 () Bool)

(assert (=> b!1878349 m!2305787))

(declare-fun m!2305789 () Bool)

(assert (=> b!1878349 m!2305789))

(declare-fun m!2305791 () Bool)

(assert (=> b!1878349 m!2305791))

(declare-fun m!2305793 () Bool)

(assert (=> b!1878349 m!2305793))

(declare-fun m!2305795 () Bool)

(assert (=> b!1878349 m!2305795))

(declare-fun m!2305797 () Bool)

(assert (=> b!1878349 m!2305797))

(declare-fun m!2305799 () Bool)

(assert (=> b!1878349 m!2305799))

(declare-fun m!2305801 () Bool)

(assert (=> b!1878349 m!2305801))

(assert (=> b!1878349 m!2305789))

(declare-fun m!2305803 () Bool)

(assert (=> b!1878349 m!2305803))

(declare-fun m!2305805 () Bool)

(assert (=> b!1878349 m!2305805))

(declare-fun m!2305807 () Bool)

(assert (=> b!1878349 m!2305807))

(declare-fun m!2305809 () Bool)

(assert (=> b!1878349 m!2305809))

(declare-fun m!2305811 () Bool)

(assert (=> b!1878349 m!2305811))

(assert (=> b!1878349 m!2305803))

(declare-fun m!2305813 () Bool)

(assert (=> b!1878349 m!2305813))

(declare-fun m!2305815 () Bool)

(assert (=> b!1878349 m!2305815))

(declare-fun m!2305817 () Bool)

(assert (=> b!1878349 m!2305817))

(declare-fun m!2305819 () Bool)

(assert (=> b!1878349 m!2305819))

(declare-fun m!2305821 () Bool)

(assert (=> b!1878349 m!2305821))

(assert (=> b!1878349 m!2305797))

(declare-fun m!2305823 () Bool)

(assert (=> b!1878349 m!2305823))

(declare-fun m!2305825 () Bool)

(assert (=> b!1878349 m!2305825))

(declare-fun m!2305827 () Bool)

(assert (=> b!1878349 m!2305827))

(declare-fun m!2305829 () Bool)

(assert (=> b!1878349 m!2305829))

(assert (=> b!1878349 m!2305819))

(assert (=> b!1878349 m!2305783))

(assert (=> b!1878349 m!2305805))

(declare-fun m!2305831 () Bool)

(assert (=> b!1878354 m!2305831))

(declare-fun m!2305833 () Bool)

(assert (=> b!1878351 m!2305833))

(declare-fun m!2305835 () Bool)

(assert (=> b!1878350 m!2305835))

(assert (=> b!1878350 m!2305835))

(declare-fun m!2305837 () Bool)

(assert (=> b!1878350 m!2305837))

(declare-fun m!2305839 () Bool)

(assert (=> b!1878350 m!2305839))

(declare-fun m!2305841 () Bool)

(assert (=> b!1878348 m!2305841))

(declare-fun m!2305843 () Bool)

(assert (=> start!188346 m!2305843))

(declare-fun m!2305845 () Bool)

(assert (=> start!188346 m!2305845))

(declare-fun m!2305847 () Bool)

(assert (=> start!188346 m!2305847))

(declare-fun m!2305849 () Bool)

(assert (=> b!1878353 m!2305849))

(declare-fun m!2305851 () Bool)

(assert (=> b!1878353 m!2305851))

(declare-fun m!2305853 () Bool)

(assert (=> b!1878347 m!2305853))

(check-sat (not b!1878349) (not b!1878354) (not b!1878348) (not b!1878353) (not b!1878351) (not b!1878347) (not b_next!52995) b_and!144735 b_and!144737 (not b!1878350) (not b_next!52993) (not start!188346))
(check-sat b_and!144737 b_and!144735 (not b_next!52993) (not b_next!52995))
