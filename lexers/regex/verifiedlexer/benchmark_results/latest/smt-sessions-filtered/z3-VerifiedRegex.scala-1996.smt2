; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101502 () Bool)

(assert start!101502)

(declare-fun b!1159766 () Bool)

(declare-fun e!742289 () Bool)

(assert (=> b!1159766 (= e!742289 true)))

(declare-fun b!1159765 () Bool)

(declare-fun e!742288 () Bool)

(assert (=> b!1159765 (= e!742288 e!742289)))

(declare-fun b!1159750 () Bool)

(assert (=> b!1159750 e!742288))

(assert (= b!1159765 b!1159766))

(assert (= b!1159750 b!1159765))

(declare-fun res!522451 () Bool)

(declare-fun e!742275 () Bool)

(assert (=> start!101502 (=> (not res!522451) (not e!742275))))

(declare-fun from!787 () Int)

(declare-fun to!267 () Int)

(assert (=> start!101502 (= res!522451 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101502 e!742275))

(assert (=> start!101502 true))

(declare-datatypes ((List!11391 0))(
  ( (Nil!11367) (Cons!11367 (h!16768 (_ BitVec 16)) (t!109543 List!11391)) )
))
(declare-datatypes ((TokenValue!2039 0))(
  ( (FloatLiteralValue!4078 (text!14718 List!11391)) (TokenValueExt!2038 (__x!7789 Int)) (Broken!10195 (value!64201 List!11391)) (Object!2062) (End!2039) (Def!2039) (Underscore!2039) (Match!2039) (Else!2039) (Error!2039) (Case!2039) (If!2039) (Extends!2039) (Abstract!2039) (Class!2039) (Val!2039) (DelimiterValue!4078 (del!2099 List!11391)) (KeywordValue!2045 (value!64202 List!11391)) (CommentValue!4078 (value!64203 List!11391)) (WhitespaceValue!4078 (value!64204 List!11391)) (IndentationValue!2039 (value!64205 List!11391)) (String!13782) (Int32!2039) (Broken!10196 (value!64206 List!11391)) (Boolean!2040) (Unit!17368) (OperatorValue!2042 (op!2099 List!11391)) (IdentifierValue!4078 (value!64207 List!11391)) (IdentifierValue!4079 (value!64208 List!11391)) (WhitespaceValue!4079 (value!64209 List!11391)) (True!4078) (False!4078) (Broken!10197 (value!64210 List!11391)) (Broken!10198 (value!64211 List!11391)) (True!4079) (RightBrace!2039) (RightBracket!2039) (Colon!2039) (Null!2039) (Comma!2039) (LeftBracket!2039) (False!4079) (LeftBrace!2039) (ImaginaryLiteralValue!2039 (text!14719 List!11391)) (StringLiteralValue!6117 (value!64212 List!11391)) (EOFValue!2039 (value!64213 List!11391)) (IdentValue!2039 (value!64214 List!11391)) (DelimiterValue!4079 (value!64215 List!11391)) (DedentValue!2039 (value!64216 List!11391)) (NewLineValue!2039 (value!64217 List!11391)) (IntegerValue!6117 (value!64218 (_ BitVec 32)) (text!14720 List!11391)) (IntegerValue!6118 (value!64219 Int) (text!14721 List!11391)) (Times!2039) (Or!2039) (Equal!2039) (Minus!2039) (Broken!10199 (value!64220 List!11391)) (And!2039) (Div!2039) (LessEqual!2039) (Mod!2039) (Concat!5282) (Not!2039) (Plus!2039) (SpaceValue!2039 (value!64221 List!11391)) (IntegerValue!6119 (value!64222 Int) (text!14722 List!11391)) (StringLiteralValue!6118 (text!14723 List!11391)) (FloatLiteralValue!4079 (text!14724 List!11391)) (BytesLiteralValue!2039 (value!64223 List!11391)) (CommentValue!4079 (value!64224 List!11391)) (StringLiteralValue!6119 (value!64225 List!11391)) (ErrorTokenValue!2039 (msg!2100 List!11391)) )
))
(declare-datatypes ((C!6804 0))(
  ( (C!6805 (val!3658 Int)) )
))
(declare-datatypes ((Regex!3243 0))(
  ( (ElementMatch!3243 (c!194190 C!6804)) (Concat!5283 (regOne!6998 Regex!3243) (regTwo!6998 Regex!3243)) (EmptyExpr!3243) (Star!3243 (reg!3572 Regex!3243)) (EmptyLang!3243) (Union!3243 (regOne!6999 Regex!3243) (regTwo!6999 Regex!3243)) )
))
(declare-datatypes ((String!13783 0))(
  ( (String!13784 (value!64226 String)) )
))
(declare-datatypes ((List!11392 0))(
  ( (Nil!11368) (Cons!11368 (h!16769 C!6804) (t!109544 List!11392)) )
))
(declare-datatypes ((IArray!7421 0))(
  ( (IArray!7422 (innerList!3768 List!11392)) )
))
(declare-datatypes ((Conc!3708 0))(
  ( (Node!3708 (left!9924 Conc!3708) (right!10254 Conc!3708) (csize!7646 Int) (cheight!3919 Int)) (Leaf!5705 (xs!6413 IArray!7421) (csize!7647 Int)) (Empty!3708) )
))
(declare-datatypes ((BalanceConc!7438 0))(
  ( (BalanceConc!7439 (c!194191 Conc!3708)) )
))
(declare-datatypes ((TokenValueInjection!3778 0))(
  ( (TokenValueInjection!3779 (toValue!3074 Int) (toChars!2933 Int)) )
))
(declare-datatypes ((Rule!3746 0))(
  ( (Rule!3747 (regex!1973 Regex!3243) (tag!2235 String!13783) (isSeparator!1973 Bool) (transformation!1973 TokenValueInjection!3778)) )
))
(declare-datatypes ((Token!3608 0))(
  ( (Token!3609 (value!64227 TokenValue!2039) (rule!3394 Rule!3746) (size!8932 Int) (originalCharacters!2527 List!11392)) )
))
(declare-datatypes ((List!11393 0))(
  ( (Nil!11369) (Cons!11369 (h!16770 Token!3608) (t!109545 List!11393)) )
))
(declare-datatypes ((List!11394 0))(
  ( (Nil!11370) (Cons!11370 (h!16771 Rule!3746) (t!109546 List!11394)) )
))
(declare-datatypes ((IArray!7423 0))(
  ( (IArray!7424 (innerList!3769 List!11393)) )
))
(declare-datatypes ((Conc!3709 0))(
  ( (Node!3709 (left!9925 Conc!3709) (right!10255 Conc!3709) (csize!7648 Int) (cheight!3920 Int)) (Leaf!5706 (xs!6414 IArray!7423) (csize!7649 Int)) (Empty!3709) )
))
(declare-datatypes ((BalanceConc!7440 0))(
  ( (BalanceConc!7441 (c!194192 Conc!3709)) )
))
(declare-datatypes ((PrintableTokens!632 0))(
  ( (PrintableTokens!633 (rules!9464 List!11394) (tokens!1572 BalanceConc!7440)) )
))
(declare-fun thiss!10527 () PrintableTokens!632)

(declare-fun e!742277 () Bool)

(declare-fun inv!14942 (PrintableTokens!632) Bool)

(assert (=> start!101502 (and (inv!14942 thiss!10527) e!742277)))

(declare-fun b!1159745 () Bool)

(declare-fun e!742273 () Bool)

(declare-fun e!742278 () Bool)

(assert (=> b!1159745 (= e!742273 e!742278)))

(declare-fun res!522461 () Bool)

(assert (=> b!1159745 (=> (not res!522461) (not e!742278))))

(declare-fun lt!394068 () List!11393)

(declare-datatypes ((LexerInterface!1668 0))(
  ( (LexerInterfaceExt!1665 (__x!7790 Int)) (Lexer!1666) )
))
(declare-fun rulesProduceIndividualToken!705 (LexerInterface!1668 List!11394 Token!3608) Bool)

(assert (=> b!1159745 (= res!522461 (rulesProduceIndividualToken!705 Lexer!1666 (rules!9464 thiss!10527) (h!16770 lt!394068)))))

(declare-fun b!1159746 () Bool)

(declare-fun e!742283 () Bool)

(declare-fun tp!333659 () Bool)

(declare-fun inv!14943 (Conc!3709) Bool)

(assert (=> b!1159746 (= e!742283 (and (inv!14943 (c!194192 (tokens!1572 thiss!10527))) tp!333659))))

(declare-fun b!1159747 () Bool)

(declare-fun e!742274 () Bool)

(declare-fun lt!394064 () List!11393)

(declare-fun rulesProduceEachTokenIndividuallyList!536 (LexerInterface!1668 List!11394 List!11393) Bool)

(assert (=> b!1159747 (= e!742274 (rulesProduceEachTokenIndividuallyList!536 Lexer!1666 (rules!9464 thiss!10527) (t!109545 lt!394064)))))

(declare-fun b!1159748 () Bool)

(declare-fun tp!333660 () Bool)

(declare-fun inv!14944 (BalanceConc!7440) Bool)

(assert (=> b!1159748 (= e!742277 (and tp!333660 (inv!14944 (tokens!1572 thiss!10527)) e!742283))))

(declare-fun b!1159749 () Bool)

(declare-fun e!742276 () Bool)

(declare-fun lt!394066 () Int)

(assert (=> b!1159749 (= e!742276 (<= 0 lt!394066))))

(declare-fun lt!394067 () BalanceConc!7440)

(declare-fun separableTokens!110 (LexerInterface!1668 BalanceConc!7440 List!11394) Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!43 (LexerInterface!1668 BalanceConc!7440 Int List!11394) Bool)

(assert (=> b!1159749 (= (separableTokens!110 Lexer!1666 lt!394067 (rules!9464 thiss!10527)) (tokensListTwoByTwoPredicateSeparable!43 Lexer!1666 lt!394067 0 (rules!9464 thiss!10527)))))

(declare-fun e!742282 () Bool)

(declare-fun e!742279 () Bool)

(assert (=> b!1159750 (= e!742282 (not e!742279))))

(declare-fun res!522450 () Bool)

(assert (=> b!1159750 (=> res!522450 e!742279)))

(declare-fun lambda!47139 () Int)

(declare-fun forall!2948 (BalanceConc!7440 Int) Bool)

(assert (=> b!1159750 (= res!522450 (not (forall!2948 (tokens!1572 thiss!10527) lambda!47139)))))

(assert (=> b!1159750 (= (rulesProduceEachTokenIndividuallyList!536 Lexer!1666 (rules!9464 thiss!10527) lt!394068) e!742273)))

(declare-fun res!522456 () Bool)

(assert (=> b!1159750 (=> res!522456 e!742273)))

(get-info :version)

(assert (=> b!1159750 (= res!522456 (not ((_ is Cons!11369) lt!394068)))))

(declare-fun list!4186 (BalanceConc!7440) List!11393)

(assert (=> b!1159750 (= lt!394068 (list!4186 (tokens!1572 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!707 (LexerInterface!1668 List!11394 BalanceConc!7440) Bool)

(assert (=> b!1159750 (= (rulesProduceEachTokenIndividually!707 Lexer!1666 (rules!9464 thiss!10527) (tokens!1572 thiss!10527)) (forall!2948 (tokens!1572 thiss!10527) lambda!47139))))

(declare-fun b!1159751 () Bool)

(declare-fun e!742281 () Bool)

(assert (=> b!1159751 (= e!742281 e!742274)))

(declare-fun res!522453 () Bool)

(assert (=> b!1159751 (=> (not res!522453) (not e!742274))))

(assert (=> b!1159751 (= res!522453 (rulesProduceIndividualToken!705 Lexer!1666 (rules!9464 thiss!10527) (h!16770 lt!394064)))))

(declare-fun b!1159752 () Bool)

(declare-fun e!742272 () Bool)

(assert (=> b!1159752 (= e!742272 (= (rulesProduceEachTokenIndividuallyList!536 Lexer!1666 (rules!9464 thiss!10527) lt!394064) e!742281))))

(declare-fun res!522460 () Bool)

(assert (=> b!1159752 (=> res!522460 e!742281)))

(assert (=> b!1159752 (= res!522460 (not ((_ is Cons!11369) lt!394064)))))

(declare-fun b!1159753 () Bool)

(assert (=> b!1159753 (= e!742278 (rulesProduceEachTokenIndividuallyList!536 Lexer!1666 (rules!9464 thiss!10527) (t!109545 lt!394068)))))

(declare-fun b!1159754 () Bool)

(assert (=> b!1159754 (= e!742279 e!742276)))

(declare-fun res!522452 () Bool)

(assert (=> b!1159754 (=> res!522452 e!742276)))

(declare-fun forall!2949 (List!11393 Int) Bool)

(assert (=> b!1159754 (= res!522452 (not (forall!2949 lt!394064 lambda!47139)))))

(assert (=> b!1159754 e!742272))

(declare-fun res!522454 () Bool)

(assert (=> b!1159754 (=> (not res!522454) (not e!742272))))

(assert (=> b!1159754 (= res!522454 (forall!2949 lt!394064 lambda!47139))))

(declare-datatypes ((Unit!17369 0))(
  ( (Unit!17370) )
))
(declare-fun lt!394065 () Unit!17369)

(declare-fun lemmaForallSubseq!121 (List!11393 List!11393 Int) Unit!17369)

(assert (=> b!1159754 (= lt!394065 (lemmaForallSubseq!121 lt!394064 lt!394068 lambda!47139))))

(assert (=> b!1159754 (= lt!394064 (list!4186 lt!394067))))

(declare-fun slice!241 (BalanceConc!7440 Int Int) BalanceConc!7440)

(assert (=> b!1159754 (= lt!394067 (slice!241 (tokens!1572 thiss!10527) from!787 to!267))))

(declare-fun subseq!229 (List!11393 List!11393) Bool)

(declare-fun slice!242 (List!11393 Int Int) List!11393)

(assert (=> b!1159754 (subseq!229 (slice!242 lt!394068 from!787 to!267) lt!394068)))

(declare-fun lt!394062 () Unit!17369)

(declare-fun lemmaSliceSubseq!70 (List!11393 Int Int) Unit!17369)

(assert (=> b!1159754 (= lt!394062 (lemmaSliceSubseq!70 lt!394068 from!787 to!267))))

(declare-fun b!1159755 () Bool)

(declare-fun e!742280 () Bool)

(assert (=> b!1159755 (= e!742275 e!742280)))

(declare-fun res!522458 () Bool)

(assert (=> b!1159755 (=> (not res!522458) (not e!742280))))

(assert (=> b!1159755 (= res!522458 (<= to!267 lt!394066))))

(declare-fun size!8933 (BalanceConc!7440) Int)

(assert (=> b!1159755 (= lt!394066 (size!8933 (tokens!1572 thiss!10527)))))

(declare-fun b!1159756 () Bool)

(declare-fun res!522455 () Bool)

(assert (=> b!1159756 (=> res!522455 e!742276)))

(assert (=> b!1159756 (= res!522455 (not (forall!2948 lt!394067 lambda!47139)))))

(declare-fun b!1159757 () Bool)

(assert (=> b!1159757 (= e!742280 e!742282)))

(declare-fun res!522457 () Bool)

(assert (=> b!1159757 (=> (not res!522457) (not e!742282))))

(declare-fun rulesInvariant!1542 (LexerInterface!1668 List!11394) Bool)

(assert (=> b!1159757 (= res!522457 (rulesInvariant!1542 Lexer!1666 (rules!9464 thiss!10527)))))

(declare-fun lt!394063 () Unit!17369)

(declare-fun lemmaInvariant!160 (PrintableTokens!632) Unit!17369)

(assert (=> b!1159757 (= lt!394063 (lemmaInvariant!160 thiss!10527))))

(declare-fun b!1159758 () Bool)

(declare-fun res!522459 () Bool)

(assert (=> b!1159758 (=> (not res!522459) (not e!742272))))

(assert (=> b!1159758 (= res!522459 (= (rulesProduceEachTokenIndividually!707 Lexer!1666 (rules!9464 thiss!10527) lt!394067) (forall!2948 lt!394067 lambda!47139)))))

(assert (= (and start!101502 res!522451) b!1159755))

(assert (= (and b!1159755 res!522458) b!1159757))

(assert (= (and b!1159757 res!522457) b!1159750))

(assert (= (and b!1159750 (not res!522456)) b!1159745))

(assert (= (and b!1159745 res!522461) b!1159753))

(assert (= (and b!1159750 (not res!522450)) b!1159754))

(assert (= (and b!1159754 res!522454) b!1159758))

(assert (= (and b!1159758 res!522459) b!1159752))

(assert (= (and b!1159752 (not res!522460)) b!1159751))

(assert (= (and b!1159751 res!522453) b!1159747))

(assert (= (and b!1159754 (not res!522452)) b!1159756))

(assert (= (and b!1159756 (not res!522455)) b!1159749))

(assert (= b!1159748 b!1159746))

(assert (= start!101502 b!1159748))

(declare-fun m!1326295 () Bool)

(assert (=> b!1159758 m!1326295))

(declare-fun m!1326297 () Bool)

(assert (=> b!1159758 m!1326297))

(declare-fun m!1326299 () Bool)

(assert (=> b!1159751 m!1326299))

(declare-fun m!1326301 () Bool)

(assert (=> b!1159748 m!1326301))

(declare-fun m!1326303 () Bool)

(assert (=> b!1159752 m!1326303))

(declare-fun m!1326305 () Bool)

(assert (=> b!1159749 m!1326305))

(declare-fun m!1326307 () Bool)

(assert (=> b!1159749 m!1326307))

(declare-fun m!1326309 () Bool)

(assert (=> b!1159755 m!1326309))

(assert (=> b!1159756 m!1326297))

(declare-fun m!1326311 () Bool)

(assert (=> b!1159745 m!1326311))

(declare-fun m!1326313 () Bool)

(assert (=> b!1159753 m!1326313))

(declare-fun m!1326315 () Bool)

(assert (=> b!1159754 m!1326315))

(declare-fun m!1326317 () Bool)

(assert (=> b!1159754 m!1326317))

(declare-fun m!1326319 () Bool)

(assert (=> b!1159754 m!1326319))

(assert (=> b!1159754 m!1326317))

(declare-fun m!1326321 () Bool)

(assert (=> b!1159754 m!1326321))

(declare-fun m!1326323 () Bool)

(assert (=> b!1159754 m!1326323))

(assert (=> b!1159754 m!1326315))

(declare-fun m!1326325 () Bool)

(assert (=> b!1159754 m!1326325))

(declare-fun m!1326327 () Bool)

(assert (=> b!1159754 m!1326327))

(declare-fun m!1326329 () Bool)

(assert (=> b!1159746 m!1326329))

(declare-fun m!1326331 () Bool)

(assert (=> b!1159757 m!1326331))

(declare-fun m!1326333 () Bool)

(assert (=> b!1159757 m!1326333))

(declare-fun m!1326335 () Bool)

(assert (=> start!101502 m!1326335))

(declare-fun m!1326337 () Bool)

(assert (=> b!1159747 m!1326337))

(declare-fun m!1326339 () Bool)

(assert (=> b!1159750 m!1326339))

(declare-fun m!1326341 () Bool)

(assert (=> b!1159750 m!1326341))

(declare-fun m!1326343 () Bool)

(assert (=> b!1159750 m!1326343))

(declare-fun m!1326345 () Bool)

(assert (=> b!1159750 m!1326345))

(assert (=> b!1159750 m!1326339))

(check-sat (not b!1159750) (not b!1159752) (not b!1159748) (not b!1159755) (not b!1159765) (not b!1159749) (not b!1159757) (not b!1159756) (not b!1159751) (not b!1159746) (not b!1159758) (not start!101502) (not b!1159747) (not b!1159753) (not b!1159754) (not b!1159766) (not b!1159745))
(check-sat)
