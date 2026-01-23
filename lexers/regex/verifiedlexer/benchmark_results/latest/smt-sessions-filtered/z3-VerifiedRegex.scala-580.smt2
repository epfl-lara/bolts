; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17214 () Bool)

(assert start!17214)

(declare-fun b!159690 () Bool)

(declare-fun b_free!5985 () Bool)

(declare-fun b_next!5985 () Bool)

(assert (=> b!159690 (= b_free!5985 (not b_next!5985))))

(declare-fun tp!81394 () Bool)

(declare-fun b_and!9821 () Bool)

(assert (=> b!159690 (= tp!81394 b_and!9821)))

(declare-fun b_free!5987 () Bool)

(declare-fun b_next!5987 () Bool)

(assert (=> b!159690 (= b_free!5987 (not b_next!5987))))

(declare-fun tp!81391 () Bool)

(declare-fun b_and!9823 () Bool)

(assert (=> b!159690 (= tp!81391 b_and!9823)))

(declare-fun b!159680 () Bool)

(declare-fun b_free!5989 () Bool)

(declare-fun b_next!5989 () Bool)

(assert (=> b!159680 (= b_free!5989 (not b_next!5989))))

(declare-fun tp!81386 () Bool)

(declare-fun b_and!9825 () Bool)

(assert (=> b!159680 (= tp!81386 b_and!9825)))

(declare-fun b_free!5991 () Bool)

(declare-fun b_next!5991 () Bool)

(assert (=> b!159680 (= b_free!5991 (not b_next!5991))))

(declare-fun tp!81385 () Bool)

(declare-fun b_and!9827 () Bool)

(assert (=> b!159680 (= tp!81385 b_and!9827)))

(declare-fun b!159684 () Bool)

(declare-fun b_free!5993 () Bool)

(declare-fun b_next!5993 () Bool)

(assert (=> b!159684 (= b_free!5993 (not b_next!5993))))

(declare-fun tp!81390 () Bool)

(declare-fun b_and!9829 () Bool)

(assert (=> b!159684 (= tp!81390 b_and!9829)))

(declare-fun b_free!5995 () Bool)

(declare-fun b_next!5995 () Bool)

(assert (=> b!159684 (= b_free!5995 (not b_next!5995))))

(declare-fun tp!81387 () Bool)

(declare-fun b_and!9831 () Bool)

(assert (=> b!159684 (= tp!81387 b_and!9831)))

(declare-fun e!95983 () Bool)

(assert (=> b!159680 (= e!95983 (and tp!81386 tp!81385))))

(declare-datatypes ((List!2755 0))(
  ( (Nil!2745) (Cons!2745 (h!8142 (_ BitVec 16)) (t!25819 List!2755)) )
))
(declare-datatypes ((TokenValue!505 0))(
  ( (FloatLiteralValue!1010 (text!3980 List!2755)) (TokenValueExt!504 (__x!2497 Int)) (Broken!2525 (value!18055 List!2755)) (Object!514) (End!505) (Def!505) (Underscore!505) (Match!505) (Else!505) (Error!505) (Case!505) (If!505) (Extends!505) (Abstract!505) (Class!505) (Val!505) (DelimiterValue!1010 (del!565 List!2755)) (KeywordValue!511 (value!18056 List!2755)) (CommentValue!1010 (value!18057 List!2755)) (WhitespaceValue!1010 (value!18058 List!2755)) (IndentationValue!505 (value!18059 List!2755)) (String!3604) (Int32!505) (Broken!2526 (value!18060 List!2755)) (Boolean!506) (Unit!2231) (OperatorValue!508 (op!565 List!2755)) (IdentifierValue!1010 (value!18061 List!2755)) (IdentifierValue!1011 (value!18062 List!2755)) (WhitespaceValue!1011 (value!18063 List!2755)) (True!1010) (False!1010) (Broken!2527 (value!18064 List!2755)) (Broken!2528 (value!18065 List!2755)) (True!1011) (RightBrace!505) (RightBracket!505) (Colon!505) (Null!505) (Comma!505) (LeftBracket!505) (False!1011) (LeftBrace!505) (ImaginaryLiteralValue!505 (text!3981 List!2755)) (StringLiteralValue!1515 (value!18066 List!2755)) (EOFValue!505 (value!18067 List!2755)) (IdentValue!505 (value!18068 List!2755)) (DelimiterValue!1011 (value!18069 List!2755)) (DedentValue!505 (value!18070 List!2755)) (NewLineValue!505 (value!18071 List!2755)) (IntegerValue!1515 (value!18072 (_ BitVec 32)) (text!3982 List!2755)) (IntegerValue!1516 (value!18073 Int) (text!3983 List!2755)) (Times!505) (Or!505) (Equal!505) (Minus!505) (Broken!2529 (value!18074 List!2755)) (And!505) (Div!505) (LessEqual!505) (Mod!505) (Concat!1212) (Not!505) (Plus!505) (SpaceValue!505 (value!18075 List!2755)) (IntegerValue!1517 (value!18076 Int) (text!3984 List!2755)) (StringLiteralValue!1516 (text!3985 List!2755)) (FloatLiteralValue!1011 (text!3986 List!2755)) (BytesLiteralValue!505 (value!18077 List!2755)) (CommentValue!1011 (value!18078 List!2755)) (StringLiteralValue!1517 (value!18079 List!2755)) (ErrorTokenValue!505 (msg!566 List!2755)) )
))
(declare-datatypes ((C!2336 0))(
  ( (C!2337 (val!1054 Int)) )
))
(declare-datatypes ((List!2756 0))(
  ( (Nil!2746) (Cons!2746 (h!8143 C!2336) (t!25820 List!2756)) )
))
(declare-datatypes ((IArray!1577 0))(
  ( (IArray!1578 (innerList!846 List!2756)) )
))
(declare-datatypes ((Conc!788 0))(
  ( (Node!788 (left!2072 Conc!788) (right!2402 Conc!788) (csize!1806 Int) (cheight!999 Int)) (Leaf!1369 (xs!3383 IArray!1577) (csize!1807 Int)) (Empty!788) )
))
(declare-datatypes ((BalanceConc!1584 0))(
  ( (BalanceConc!1585 (c!32021 Conc!788)) )
))
(declare-datatypes ((Regex!707 0))(
  ( (ElementMatch!707 (c!32022 C!2336)) (Concat!1213 (regOne!1926 Regex!707) (regTwo!1926 Regex!707)) (EmptyExpr!707) (Star!707 (reg!1036 Regex!707)) (EmptyLang!707) (Union!707 (regOne!1927 Regex!707) (regTwo!1927 Regex!707)) )
))
(declare-datatypes ((String!3605 0))(
  ( (String!3606 (value!18080 String)) )
))
(declare-datatypes ((TokenValueInjection!782 0))(
  ( (TokenValueInjection!783 (toValue!1134 Int) (toChars!993 Int)) )
))
(declare-datatypes ((Rule!766 0))(
  ( (Rule!767 (regex!483 Regex!707) (tag!661 String!3605) (isSeparator!483 Bool) (transformation!483 TokenValueInjection!782)) )
))
(declare-datatypes ((Token!710 0))(
  ( (Token!711 (value!18081 TokenValue!505) (rule!990 Rule!766) (size!2318 Int) (originalCharacters!526 List!2756)) )
))
(declare-datatypes ((List!2757 0))(
  ( (Nil!2747) (Cons!2747 (h!8144 Token!710) (t!25821 List!2757)) )
))
(declare-fun tokens!465 () List!2757)

(declare-fun tp!81392 () Bool)

(declare-fun e!95988 () Bool)

(declare-fun e!95995 () Bool)

(declare-fun b!159681 () Bool)

(declare-fun inv!21 (TokenValue!505) Bool)

(assert (=> b!159681 (= e!95988 (and (inv!21 (value!18081 (h!8144 tokens!465))) e!95995 tp!81392))))

(declare-fun b!159682 () Bool)

(declare-fun res!72496 () Bool)

(declare-fun e!95986 () Bool)

(assert (=> b!159682 (=> (not res!72496) (not e!95986))))

(declare-fun lt!47930 () List!2756)

(declare-fun lt!47934 () List!2756)

(declare-fun list!985 (BalanceConc!1584) List!2756)

(declare-fun seqFromList!343 (List!2756) BalanceConc!1584)

(assert (=> b!159682 (= res!72496 (= (list!985 (seqFromList!343 lt!47930)) lt!47934))))

(declare-fun b!159683 () Bool)

(declare-fun res!72491 () Bool)

(declare-fun e!95992 () Bool)

(assert (=> b!159683 (=> (not res!72491) (not e!95992))))

(declare-datatypes ((List!2758 0))(
  ( (Nil!2748) (Cons!2748 (h!8145 Rule!766) (t!25822 List!2758)) )
))
(declare-fun rules!1920 () List!2758)

(declare-fun sepAndNonSepRulesDisjointChars!72 (List!2758 List!2758) Bool)

(assert (=> b!159683 (= res!72491 (sepAndNonSepRulesDisjointChars!72 rules!1920 rules!1920))))

(declare-fun e!95991 () Bool)

(assert (=> b!159684 (= e!95991 (and tp!81390 tp!81387))))

(declare-fun e!95984 () Bool)

(declare-fun separatorToken!170 () Token!710)

(declare-fun e!95981 () Bool)

(declare-fun tp!81384 () Bool)

(declare-fun b!159685 () Bool)

(assert (=> b!159685 (= e!95981 (and (inv!21 (value!18081 separatorToken!170)) e!95984 tp!81384))))

(declare-fun b!159686 () Bool)

(declare-fun res!72495 () Bool)

(assert (=> b!159686 (=> (not res!72495) (not e!95992))))

(assert (=> b!159686 (= res!72495 (isSeparator!483 (rule!990 separatorToken!170)))))

(declare-fun b!159687 () Bool)

(declare-fun res!72497 () Bool)

(assert (=> b!159687 (=> (not res!72497) (not e!95992))))

(declare-fun lambda!4322 () Int)

(declare-fun forall!500 (List!2757 Int) Bool)

(assert (=> b!159687 (= res!72497 (forall!500 tokens!465 lambda!4322))))

(declare-fun b!159688 () Bool)

(declare-fun res!72494 () Bool)

(declare-fun e!95980 () Bool)

(assert (=> b!159688 (=> (not res!72494) (not e!95980))))

(declare-datatypes ((LexerInterface!369 0))(
  ( (LexerInterfaceExt!366 (__x!2498 Int)) (Lexer!367) )
))
(declare-fun thiss!17480 () LexerInterface!369)

(declare-fun rulesInvariant!335 (LexerInterface!369 List!2758) Bool)

(assert (=> b!159688 (= res!72494 (rulesInvariant!335 thiss!17480 rules!1920))))

(declare-fun e!95979 () Bool)

(assert (=> b!159690 (= e!95979 (and tp!81394 tp!81391))))

(declare-fun b!159691 () Bool)

(declare-fun e!95989 () Bool)

(declare-fun tp!81393 () Bool)

(declare-fun inv!3558 (String!3605) Bool)

(declare-fun inv!3561 (TokenValueInjection!782) Bool)

(assert (=> b!159691 (= e!95989 (and tp!81393 (inv!3558 (tag!661 (h!8145 rules!1920))) (inv!3561 (transformation!483 (h!8145 rules!1920))) e!95991))))

(declare-fun b!159692 () Bool)

(assert (=> b!159692 (= e!95992 e!95986)))

(declare-fun res!72493 () Bool)

(assert (=> b!159692 (=> (not res!72493) (not e!95986))))

(assert (=> b!159692 (= res!72493 (= lt!47930 lt!47934))))

(declare-datatypes ((IArray!1579 0))(
  ( (IArray!1580 (innerList!847 List!2757)) )
))
(declare-datatypes ((Conc!789 0))(
  ( (Node!789 (left!2073 Conc!789) (right!2403 Conc!789) (csize!1808 Int) (cheight!1000 Int)) (Leaf!1370 (xs!3384 IArray!1579) (csize!1809 Int)) (Empty!789) )
))
(declare-datatypes ((BalanceConc!1586 0))(
  ( (BalanceConc!1587 (c!32023 Conc!789)) )
))
(declare-fun lt!47931 () BalanceConc!1586)

(declare-fun printWithSeparatorTokenWhenNeededRec!52 (LexerInterface!369 List!2758 BalanceConc!1586 Token!710 Int) BalanceConc!1584)

(assert (=> b!159692 (= lt!47934 (list!985 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!62 (LexerInterface!369 List!2758 List!2757 Token!710) List!2756)

(assert (=> b!159692 (= lt!47930 (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!159693 () Bool)

(declare-fun res!72500 () Bool)

(declare-fun e!95990 () Bool)

(assert (=> b!159693 (=> res!72500 e!95990)))

(declare-fun lt!47937 () BalanceConc!1586)

(declare-fun rulesProduceEachTokenIndividually!161 (LexerInterface!369 List!2758 BalanceConc!1586) Bool)

(assert (=> b!159693 (= res!72500 (not (rulesProduceEachTokenIndividually!161 thiss!17480 rules!1920 lt!47937)))))

(declare-fun b!159694 () Bool)

(declare-fun res!72490 () Bool)

(assert (=> b!159694 (=> (not res!72490) (not e!95980))))

(declare-fun isEmpty!1108 (List!2758) Bool)

(assert (=> b!159694 (= res!72490 (not (isEmpty!1108 rules!1920)))))

(declare-fun e!95978 () Bool)

(declare-fun tp!81389 () Bool)

(declare-fun b!159695 () Bool)

(declare-fun inv!3562 (Token!710) Bool)

(assert (=> b!159695 (= e!95978 (and (inv!3562 (h!8144 tokens!465)) e!95988 tp!81389))))

(declare-fun b!159696 () Bool)

(declare-fun e!95987 () Bool)

(declare-fun tp!81395 () Bool)

(assert (=> b!159696 (= e!95987 (and e!95989 tp!81395))))

(declare-fun b!159697 () Bool)

(assert (=> b!159697 (= e!95980 e!95992)))

(declare-fun res!72499 () Bool)

(assert (=> b!159697 (=> (not res!72499) (not e!95992))))

(assert (=> b!159697 (= res!72499 (rulesProduceEachTokenIndividually!161 thiss!17480 rules!1920 lt!47931))))

(declare-fun seqFromList!344 (List!2757) BalanceConc!1586)

(assert (=> b!159697 (= lt!47931 (seqFromList!344 tokens!465))))

(declare-fun b!159698 () Bool)

(assert (=> b!159698 (= e!95986 (not e!95990))))

(declare-fun res!72501 () Bool)

(assert (=> b!159698 (=> res!72501 e!95990)))

(declare-fun size!2319 (BalanceConc!1586) Int)

(assert (=> b!159698 (= res!72501 (> 0 (size!2319 lt!47937)))))

(assert (=> b!159698 (= lt!47937 (seqFromList!344 (t!25821 tokens!465)))))

(declare-fun lt!47935 () List!2756)

(declare-fun lt!47933 () List!2756)

(declare-fun lt!47936 () List!2756)

(declare-fun lt!47938 () List!2756)

(declare-fun ++!608 (List!2756 List!2756) List!2756)

(assert (=> b!159698 (= (++!608 (++!608 lt!47936 lt!47935) lt!47938) (++!608 lt!47936 lt!47933))))

(declare-datatypes ((Unit!2232 0))(
  ( (Unit!2233) )
))
(declare-fun lt!47932 () Unit!2232)

(declare-fun lemmaConcatAssociativity!164 (List!2756 List!2756 List!2756) Unit!2232)

(assert (=> b!159698 (= lt!47932 (lemmaConcatAssociativity!164 lt!47936 lt!47935 lt!47938))))

(declare-fun charsOf!138 (Token!710) BalanceConc!1584)

(assert (=> b!159698 (= lt!47936 (list!985 (charsOf!138 (h!8144 tokens!465))))))

(assert (=> b!159698 (= lt!47933 (++!608 lt!47935 lt!47938))))

(assert (=> b!159698 (= lt!47938 (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (t!25821 tokens!465) separatorToken!170))))

(assert (=> b!159698 (= lt!47935 (list!985 (charsOf!138 separatorToken!170)))))

(declare-fun b!159699 () Bool)

(declare-fun tp!81383 () Bool)

(assert (=> b!159699 (= e!95984 (and tp!81383 (inv!3558 (tag!661 (rule!990 separatorToken!170))) (inv!3561 (transformation!483 (rule!990 separatorToken!170))) e!95979))))

(declare-fun b!159689 () Bool)

(declare-fun forall!501 (BalanceConc!1586 Int) Bool)

(assert (=> b!159689 (= e!95990 (forall!501 lt!47937 lambda!4322))))

(declare-fun res!72492 () Bool)

(assert (=> start!17214 (=> (not res!72492) (not e!95980))))

(get-info :version)

(assert (=> start!17214 (= res!72492 ((_ is Lexer!367) thiss!17480))))

(assert (=> start!17214 e!95980))

(assert (=> start!17214 true))

(assert (=> start!17214 e!95987))

(assert (=> start!17214 (and (inv!3562 separatorToken!170) e!95981)))

(assert (=> start!17214 e!95978))

(declare-fun b!159700 () Bool)

(declare-fun tp!81388 () Bool)

(assert (=> b!159700 (= e!95995 (and tp!81388 (inv!3558 (tag!661 (rule!990 (h!8144 tokens!465)))) (inv!3561 (transformation!483 (rule!990 (h!8144 tokens!465)))) e!95983))))

(declare-fun b!159701 () Bool)

(declare-fun res!72502 () Bool)

(assert (=> b!159701 (=> (not res!72502) (not e!95992))))

(declare-fun rulesProduceIndividualToken!118 (LexerInterface!369 List!2758 Token!710) Bool)

(assert (=> b!159701 (= res!72502 (rulesProduceIndividualToken!118 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!159702 () Bool)

(declare-fun res!72498 () Bool)

(assert (=> b!159702 (=> (not res!72498) (not e!95992))))

(assert (=> b!159702 (= res!72498 ((_ is Cons!2747) tokens!465))))

(assert (= (and start!17214 res!72492) b!159694))

(assert (= (and b!159694 res!72490) b!159688))

(assert (= (and b!159688 res!72494) b!159697))

(assert (= (and b!159697 res!72499) b!159701))

(assert (= (and b!159701 res!72502) b!159686))

(assert (= (and b!159686 res!72495) b!159687))

(assert (= (and b!159687 res!72497) b!159683))

(assert (= (and b!159683 res!72491) b!159702))

(assert (= (and b!159702 res!72498) b!159692))

(assert (= (and b!159692 res!72493) b!159682))

(assert (= (and b!159682 res!72496) b!159698))

(assert (= (and b!159698 (not res!72501)) b!159693))

(assert (= (and b!159693 (not res!72500)) b!159689))

(assert (= b!159691 b!159684))

(assert (= b!159696 b!159691))

(assert (= (and start!17214 ((_ is Cons!2748) rules!1920)) b!159696))

(assert (= b!159699 b!159690))

(assert (= b!159685 b!159699))

(assert (= start!17214 b!159685))

(assert (= b!159700 b!159680))

(assert (= b!159681 b!159700))

(assert (= b!159695 b!159681))

(assert (= (and start!17214 ((_ is Cons!2747) tokens!465)) b!159695))

(declare-fun m!148299 () Bool)

(assert (=> b!159699 m!148299))

(declare-fun m!148301 () Bool)

(assert (=> b!159699 m!148301))

(declare-fun m!148303 () Bool)

(assert (=> b!159695 m!148303))

(declare-fun m!148305 () Bool)

(assert (=> b!159701 m!148305))

(declare-fun m!148307 () Bool)

(assert (=> b!159700 m!148307))

(declare-fun m!148309 () Bool)

(assert (=> b!159700 m!148309))

(declare-fun m!148311 () Bool)

(assert (=> b!159689 m!148311))

(declare-fun m!148313 () Bool)

(assert (=> b!159688 m!148313))

(declare-fun m!148315 () Bool)

(assert (=> b!159683 m!148315))

(declare-fun m!148317 () Bool)

(assert (=> start!17214 m!148317))

(declare-fun m!148319 () Bool)

(assert (=> b!159685 m!148319))

(declare-fun m!148321 () Bool)

(assert (=> b!159697 m!148321))

(declare-fun m!148323 () Bool)

(assert (=> b!159697 m!148323))

(declare-fun m!148325 () Bool)

(assert (=> b!159694 m!148325))

(declare-fun m!148327 () Bool)

(assert (=> b!159681 m!148327))

(declare-fun m!148329 () Bool)

(assert (=> b!159687 m!148329))

(declare-fun m!148331 () Bool)

(assert (=> b!159682 m!148331))

(assert (=> b!159682 m!148331))

(declare-fun m!148333 () Bool)

(assert (=> b!159682 m!148333))

(declare-fun m!148335 () Bool)

(assert (=> b!159692 m!148335))

(assert (=> b!159692 m!148335))

(declare-fun m!148337 () Bool)

(assert (=> b!159692 m!148337))

(declare-fun m!148339 () Bool)

(assert (=> b!159692 m!148339))

(declare-fun m!148341 () Bool)

(assert (=> b!159691 m!148341))

(declare-fun m!148343 () Bool)

(assert (=> b!159691 m!148343))

(declare-fun m!148345 () Bool)

(assert (=> b!159693 m!148345))

(declare-fun m!148347 () Bool)

(assert (=> b!159698 m!148347))

(declare-fun m!148349 () Bool)

(assert (=> b!159698 m!148349))

(declare-fun m!148351 () Bool)

(assert (=> b!159698 m!148351))

(declare-fun m!148353 () Bool)

(assert (=> b!159698 m!148353))

(declare-fun m!148355 () Bool)

(assert (=> b!159698 m!148355))

(declare-fun m!148357 () Bool)

(assert (=> b!159698 m!148357))

(declare-fun m!148359 () Bool)

(assert (=> b!159698 m!148359))

(declare-fun m!148361 () Bool)

(assert (=> b!159698 m!148361))

(declare-fun m!148363 () Bool)

(assert (=> b!159698 m!148363))

(assert (=> b!159698 m!148361))

(declare-fun m!148365 () Bool)

(assert (=> b!159698 m!148365))

(declare-fun m!148367 () Bool)

(assert (=> b!159698 m!148367))

(assert (=> b!159698 m!148365))

(declare-fun m!148369 () Bool)

(assert (=> b!159698 m!148369))

(assert (=> b!159698 m!148355))

(check-sat b_and!9821 (not b!159689) (not b_next!5993) b_and!9829 (not b!159700) (not b!159682) b_and!9823 (not b!159694) (not b!159695) (not b!159701) b_and!9827 (not start!17214) b_and!9831 (not b!159688) (not b_next!5989) (not b!159698) (not b!159692) (not b_next!5991) (not b!159699) (not b!159693) (not b!159685) (not b!159681) (not b_next!5995) (not b!159696) (not b!159683) (not b!159697) (not b_next!5985) (not b!159691) (not b_next!5987) b_and!9825 (not b!159687))
(check-sat b_and!9821 b_and!9831 (not b_next!5989) (not b_next!5993) (not b_next!5991) b_and!9829 (not b_next!5995) b_and!9823 (not b_next!5985) b_and!9827 b_and!9825 (not b_next!5987))
(get-model)

(declare-fun d!39089 () Bool)

(declare-fun list!988 (Conc!788) List!2756)

(assert (=> d!39089 (= (list!985 (seqFromList!343 lt!47930)) (list!988 (c!32021 (seqFromList!343 lt!47930))))))

(declare-fun bs!14973 () Bool)

(assert (= bs!14973 d!39089))

(declare-fun m!148407 () Bool)

(assert (=> bs!14973 m!148407))

(assert (=> b!159682 d!39089))

(declare-fun d!39091 () Bool)

(declare-fun fromListB!143 (List!2756) BalanceConc!1584)

(assert (=> d!39091 (= (seqFromList!343 lt!47930) (fromListB!143 lt!47930))))

(declare-fun bs!14974 () Bool)

(assert (= bs!14974 d!39091))

(declare-fun m!148409 () Bool)

(assert (=> bs!14974 m!148409))

(assert (=> b!159682 d!39091))

(declare-fun d!39093 () Bool)

(declare-fun res!72525 () Bool)

(declare-fun e!96008 () Bool)

(assert (=> d!39093 (=> (not res!72525) (not e!96008))))

(declare-fun isEmpty!1110 (List!2756) Bool)

(assert (=> d!39093 (= res!72525 (not (isEmpty!1110 (originalCharacters!526 separatorToken!170))))))

(assert (=> d!39093 (= (inv!3562 separatorToken!170) e!96008)))

(declare-fun b!159723 () Bool)

(declare-fun res!72526 () Bool)

(assert (=> b!159723 (=> (not res!72526) (not e!96008))))

(declare-fun dynLambda!987 (Int TokenValue!505) BalanceConc!1584)

(assert (=> b!159723 (= res!72526 (= (originalCharacters!526 separatorToken!170) (list!985 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))))))

(declare-fun b!159724 () Bool)

(declare-fun size!2323 (List!2756) Int)

(assert (=> b!159724 (= e!96008 (= (size!2318 separatorToken!170) (size!2323 (originalCharacters!526 separatorToken!170))))))

(assert (= (and d!39093 res!72525) b!159723))

(assert (= (and b!159723 res!72526) b!159724))

(declare-fun b_lambda!3271 () Bool)

(assert (=> (not b_lambda!3271) (not b!159723)))

(declare-fun t!25824 () Bool)

(declare-fun tb!5797 () Bool)

(assert (=> (and b!159690 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) t!25824) tb!5797))

(declare-fun b!159729 () Bool)

(declare-fun e!96011 () Bool)

(declare-fun tp!81398 () Bool)

(declare-fun inv!3565 (Conc!788) Bool)

(assert (=> b!159729 (= e!96011 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))) tp!81398))))

(declare-fun result!8368 () Bool)

(declare-fun inv!3566 (BalanceConc!1584) Bool)

(assert (=> tb!5797 (= result!8368 (and (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))) e!96011))))

(assert (= tb!5797 b!159729))

(declare-fun m!148411 () Bool)

(assert (=> b!159729 m!148411))

(declare-fun m!148413 () Bool)

(assert (=> tb!5797 m!148413))

(assert (=> b!159723 t!25824))

(declare-fun b_and!9833 () Bool)

(assert (= b_and!9823 (and (=> t!25824 result!8368) b_and!9833)))

(declare-fun t!25826 () Bool)

(declare-fun tb!5799 () Bool)

(assert (=> (and b!159680 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) t!25826) tb!5799))

(declare-fun result!8372 () Bool)

(assert (= result!8372 result!8368))

(assert (=> b!159723 t!25826))

(declare-fun b_and!9835 () Bool)

(assert (= b_and!9827 (and (=> t!25826 result!8372) b_and!9835)))

(declare-fun t!25828 () Bool)

(declare-fun tb!5801 () Bool)

(assert (=> (and b!159684 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) t!25828) tb!5801))

(declare-fun result!8374 () Bool)

(assert (= result!8374 result!8368))

(assert (=> b!159723 t!25828))

(declare-fun b_and!9837 () Bool)

(assert (= b_and!9831 (and (=> t!25828 result!8374) b_and!9837)))

(declare-fun m!148415 () Bool)

(assert (=> d!39093 m!148415))

(declare-fun m!148417 () Bool)

(assert (=> b!159723 m!148417))

(assert (=> b!159723 m!148417))

(declare-fun m!148419 () Bool)

(assert (=> b!159723 m!148419))

(declare-fun m!148421 () Bool)

(assert (=> b!159724 m!148421))

(assert (=> start!17214 d!39093))

(declare-fun bs!14978 () Bool)

(declare-fun d!39095 () Bool)

(assert (= bs!14978 (and d!39095 b!159687)))

(declare-fun lambda!4330 () Int)

(assert (=> bs!14978 (not (= lambda!4330 lambda!4322))))

(declare-fun b!159816 () Bool)

(declare-fun e!96066 () Bool)

(assert (=> b!159816 (= e!96066 true)))

(declare-fun b!159815 () Bool)

(declare-fun e!96065 () Bool)

(assert (=> b!159815 (= e!96065 e!96066)))

(declare-fun b!159814 () Bool)

(declare-fun e!96064 () Bool)

(assert (=> b!159814 (= e!96064 e!96065)))

(assert (=> d!39095 e!96064))

(assert (= b!159815 b!159816))

(assert (= b!159814 b!159815))

(assert (= (and d!39095 ((_ is Cons!2748) rules!1920)) b!159814))

(declare-fun order!1405 () Int)

(declare-fun order!1407 () Int)

(declare-fun dynLambda!988 (Int Int) Int)

(declare-fun dynLambda!989 (Int Int) Int)

(assert (=> b!159816 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4330))))

(declare-fun order!1409 () Int)

(declare-fun dynLambda!990 (Int Int) Int)

(assert (=> b!159816 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4330))))

(assert (=> d!39095 true))

(declare-fun e!96057 () Bool)

(assert (=> d!39095 e!96057))

(declare-fun res!72547 () Bool)

(assert (=> d!39095 (=> (not res!72547) (not e!96057))))

(declare-fun lt!47978 () Bool)

(declare-fun list!989 (BalanceConc!1586) List!2757)

(assert (=> d!39095 (= res!72547 (= lt!47978 (forall!500 (list!989 lt!47937) lambda!4330)))))

(assert (=> d!39095 (= lt!47978 (forall!501 lt!47937 lambda!4330))))

(assert (=> d!39095 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39095 (= (rulesProduceEachTokenIndividually!161 thiss!17480 rules!1920 lt!47937) lt!47978)))

(declare-fun b!159805 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!101 (LexerInterface!369 List!2758 List!2757) Bool)

(assert (=> b!159805 (= e!96057 (= lt!47978 (rulesProduceEachTokenIndividuallyList!101 thiss!17480 rules!1920 (list!989 lt!47937))))))

(assert (= (and d!39095 res!72547) b!159805))

(declare-fun m!148513 () Bool)

(assert (=> d!39095 m!148513))

(assert (=> d!39095 m!148513))

(declare-fun m!148515 () Bool)

(assert (=> d!39095 m!148515))

(declare-fun m!148517 () Bool)

(assert (=> d!39095 m!148517))

(assert (=> d!39095 m!148325))

(assert (=> b!159805 m!148513))

(assert (=> b!159805 m!148513))

(declare-fun m!148519 () Bool)

(assert (=> b!159805 m!148519))

(assert (=> b!159693 d!39095))

(declare-fun d!39117 () Bool)

(assert (=> d!39117 (= (list!985 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0)) (list!988 (c!32021 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0))))))

(declare-fun bs!14979 () Bool)

(assert (= bs!14979 d!39117))

(declare-fun m!148521 () Bool)

(assert (=> bs!14979 m!148521))

(assert (=> b!159692 d!39117))

(declare-fun bs!14983 () Bool)

(declare-fun d!39119 () Bool)

(assert (= bs!14983 (and d!39119 b!159687)))

(declare-fun lambda!4344 () Int)

(assert (=> bs!14983 (= lambda!4344 lambda!4322)))

(declare-fun bs!14984 () Bool)

(assert (= bs!14984 (and d!39119 d!39095)))

(assert (=> bs!14984 (not (= lambda!4344 lambda!4330))))

(declare-fun bs!14985 () Bool)

(declare-fun b!159883 () Bool)

(assert (= bs!14985 (and b!159883 b!159687)))

(declare-fun lambda!4345 () Int)

(assert (=> bs!14985 (not (= lambda!4345 lambda!4322))))

(declare-fun bs!14986 () Bool)

(assert (= bs!14986 (and b!159883 d!39095)))

(assert (=> bs!14986 (= lambda!4345 lambda!4330)))

(declare-fun bs!14987 () Bool)

(assert (= bs!14987 (and b!159883 d!39119)))

(assert (=> bs!14987 (not (= lambda!4345 lambda!4344))))

(declare-fun b!159896 () Bool)

(declare-fun e!96120 () Bool)

(assert (=> b!159896 (= e!96120 true)))

(declare-fun b!159895 () Bool)

(declare-fun e!96119 () Bool)

(assert (=> b!159895 (= e!96119 e!96120)))

(declare-fun b!159894 () Bool)

(declare-fun e!96118 () Bool)

(assert (=> b!159894 (= e!96118 e!96119)))

(assert (=> b!159883 e!96118))

(assert (= b!159895 b!159896))

(assert (= b!159894 b!159895))

(assert (= (and b!159883 ((_ is Cons!2748) rules!1920)) b!159894))

(assert (=> b!159896 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4345))))

(assert (=> b!159896 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4345))))

(assert (=> b!159883 true))

(declare-fun bm!6737 () Bool)

(declare-fun call!6746 () Token!710)

(declare-fun apply!381 (BalanceConc!1586 Int) Token!710)

(assert (=> bm!6737 (= call!6746 (apply!381 lt!47931 0))))

(declare-fun e!96113 () BalanceConc!1584)

(declare-fun e!96112 () BalanceConc!1584)

(assert (=> b!159883 (= e!96113 e!96112)))

(declare-fun lt!48038 () List!2757)

(assert (=> b!159883 (= lt!48038 (list!989 lt!47931))))

(declare-fun lt!48050 () Unit!2232)

(declare-fun lemmaDropApply!118 (List!2757 Int) Unit!2232)

(assert (=> b!159883 (= lt!48050 (lemmaDropApply!118 lt!48038 0))))

(declare-fun head!592 (List!2757) Token!710)

(declare-fun drop!131 (List!2757 Int) List!2757)

(declare-fun apply!382 (List!2757 Int) Token!710)

(assert (=> b!159883 (= (head!592 (drop!131 lt!48038 0)) (apply!382 lt!48038 0))))

(declare-fun lt!48039 () Unit!2232)

(assert (=> b!159883 (= lt!48039 lt!48050)))

(declare-fun lt!48049 () List!2757)

(assert (=> b!159883 (= lt!48049 (list!989 lt!47931))))

(declare-fun lt!48047 () Unit!2232)

(declare-fun lemmaDropTail!110 (List!2757 Int) Unit!2232)

(assert (=> b!159883 (= lt!48047 (lemmaDropTail!110 lt!48049 0))))

(declare-fun tail!332 (List!2757) List!2757)

(assert (=> b!159883 (= (tail!332 (drop!131 lt!48049 0)) (drop!131 lt!48049 (+ 0 1)))))

(declare-fun lt!48043 () Unit!2232)

(assert (=> b!159883 (= lt!48043 lt!48047)))

(declare-fun lt!48051 () Unit!2232)

(declare-fun forallContained!62 (List!2757 Int Token!710) Unit!2232)

(assert (=> b!159883 (= lt!48051 (forallContained!62 (list!989 lt!47931) lambda!4345 (apply!381 lt!47931 0)))))

(declare-fun lt!48048 () BalanceConc!1584)

(assert (=> b!159883 (= lt!48048 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 (+ 0 1)))))

(declare-datatypes ((tuple2!2652 0))(
  ( (tuple2!2653 (_1!1542 Token!710) (_2!1542 BalanceConc!1584)) )
))
(declare-datatypes ((Option!270 0))(
  ( (None!269) (Some!269 (v!13674 tuple2!2652)) )
))
(declare-fun lt!48044 () Option!270)

(declare-fun maxPrefixZipperSequence!78 (LexerInterface!369 List!2758 BalanceConc!1584) Option!270)

(declare-fun ++!610 (BalanceConc!1584 BalanceConc!1584) BalanceConc!1584)

(assert (=> b!159883 (= lt!48044 (maxPrefixZipperSequence!78 thiss!17480 rules!1920 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))

(declare-fun res!72571 () Bool)

(assert (=> b!159883 (= res!72571 ((_ is Some!269) lt!48044))))

(declare-fun e!96117 () Bool)

(assert (=> b!159883 (=> (not res!72571) (not e!96117))))

(declare-fun c!32065 () Bool)

(assert (=> b!159883 (= c!32065 e!96117)))

(declare-fun b!159884 () Bool)

(assert (=> b!159884 (= e!96117 (= (_1!1542 (v!13674 lt!48044)) (apply!381 lt!47931 0)))))

(declare-fun b!159885 () Bool)

(declare-fun e!96116 () BalanceConc!1584)

(declare-fun call!6744 () BalanceConc!1584)

(assert (=> b!159885 (= e!96116 call!6744)))

(declare-fun lt!48040 () BalanceConc!1584)

(declare-fun dropList!78 (BalanceConc!1586 Int) List!2757)

(assert (=> d!39119 (= (list!985 lt!48040) (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (dropList!78 lt!47931 0) separatorToken!170))))

(assert (=> d!39119 (= lt!48040 e!96113)))

(declare-fun c!32068 () Bool)

(assert (=> d!39119 (= c!32068 (>= 0 (size!2319 lt!47931)))))

(declare-fun lt!48042 () Unit!2232)

(declare-fun lemmaContentSubsetPreservesForall!22 (List!2757 List!2757 Int) Unit!2232)

(assert (=> d!39119 (= lt!48042 (lemmaContentSubsetPreservesForall!22 (list!989 lt!47931) (dropList!78 lt!47931 0) lambda!4344))))

(declare-fun e!96111 () Bool)

(assert (=> d!39119 e!96111))

(declare-fun res!72570 () Bool)

(assert (=> d!39119 (=> (not res!72570) (not e!96111))))

(assert (=> d!39119 (= res!72570 (>= 0 0))))

(assert (=> d!39119 (= (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0) lt!48040)))

(declare-fun bm!6738 () Bool)

(declare-fun call!6742 () BalanceConc!1584)

(assert (=> bm!6738 (= call!6742 call!6744)))

(declare-fun b!159886 () Bool)

(declare-fun c!32066 () Bool)

(declare-fun e!96114 () Bool)

(assert (=> b!159886 (= c!32066 e!96114)))

(declare-fun res!72569 () Bool)

(assert (=> b!159886 (=> (not res!72569) (not e!96114))))

(assert (=> b!159886 (= res!72569 ((_ is Some!269) lt!48044))))

(declare-fun e!96115 () BalanceConc!1584)

(assert (=> b!159886 (= e!96112 e!96115)))

(declare-fun b!159887 () Bool)

(declare-fun call!6745 () BalanceConc!1584)

(assert (=> b!159887 (= e!96112 call!6745)))

(declare-fun b!159888 () Bool)

(assert (=> b!159888 (= e!96115 (BalanceConc!1585 Empty!788))))

(declare-fun call!6743 () Token!710)

(declare-fun print!104 (LexerInterface!369 BalanceConc!1586) BalanceConc!1584)

(declare-fun singletonSeq!37 (Token!710) BalanceConc!1586)

(declare-fun printTailRec!67 (LexerInterface!369 BalanceConc!1586 Int BalanceConc!1584) BalanceConc!1584)

(assert (=> b!159888 (= (print!104 thiss!17480 (singletonSeq!37 call!6743)) (printTailRec!67 thiss!17480 (singletonSeq!37 call!6743) 0 (BalanceConc!1585 Empty!788)))))

(declare-fun lt!48045 () Unit!2232)

(declare-fun Unit!2240 () Unit!2232)

(assert (=> b!159888 (= lt!48045 Unit!2240)))

(declare-fun lt!48046 () Unit!2232)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 (LexerInterface!369 List!2758 List!2756 List!2756) Unit!2232)

(assert (=> b!159888 (= lt!48046 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 (list!985 call!6742) (list!985 lt!48048)))))

(assert (=> b!159888 false))

(declare-fun lt!48041 () Unit!2232)

(declare-fun Unit!2241 () Unit!2232)

(assert (=> b!159888 (= lt!48041 Unit!2241)))

(declare-fun bm!6739 () Bool)

(assert (=> bm!6739 (= call!6743 call!6746)))

(declare-fun b!159889 () Bool)

(assert (=> b!159889 (= e!96116 (charsOf!138 call!6743))))

(declare-fun bm!6740 () Bool)

(assert (=> bm!6740 (= call!6744 (charsOf!138 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743))))))

(declare-fun b!159890 () Bool)

(assert (=> b!159890 (= e!96113 (BalanceConc!1585 Empty!788))))

(declare-fun bm!6741 () Bool)

(declare-fun c!32067 () Bool)

(assert (=> bm!6741 (= c!32067 c!32065)))

(assert (=> bm!6741 (= call!6745 (++!610 e!96116 (ite c!32065 lt!48048 call!6742)))))

(declare-fun b!159891 () Bool)

(assert (=> b!159891 (= e!96115 (++!610 call!6745 lt!48048))))

(declare-fun b!159892 () Bool)

(assert (=> b!159892 (= e!96114 (not (= (_1!1542 (v!13674 lt!48044)) call!6746)))))

(declare-fun b!159893 () Bool)

(assert (=> b!159893 (= e!96111 (<= 0 (size!2319 lt!47931)))))

(assert (= (and d!39119 res!72570) b!159893))

(assert (= (and d!39119 c!32068) b!159890))

(assert (= (and d!39119 (not c!32068)) b!159883))

(assert (= (and b!159883 res!72571) b!159884))

(assert (= (and b!159883 c!32065) b!159887))

(assert (= (and b!159883 (not c!32065)) b!159886))

(assert (= (and b!159886 res!72569) b!159892))

(assert (= (and b!159886 c!32066) b!159891))

(assert (= (and b!159886 (not c!32066)) b!159888))

(assert (= (or b!159891 b!159888) bm!6739))

(assert (= (or b!159891 b!159888) bm!6738))

(assert (= (or b!159887 b!159892 bm!6739) bm!6737))

(assert (= (or b!159887 bm!6738) bm!6740))

(assert (= (or b!159887 b!159891) bm!6741))

(assert (= (and bm!6741 c!32067) b!159885))

(assert (= (and bm!6741 (not c!32067)) b!159889))

(declare-fun m!148541 () Bool)

(assert (=> b!159888 m!148541))

(declare-fun m!148543 () Bool)

(assert (=> b!159888 m!148543))

(declare-fun m!148545 () Bool)

(assert (=> b!159888 m!148545))

(assert (=> b!159888 m!148541))

(declare-fun m!148547 () Bool)

(assert (=> b!159888 m!148547))

(declare-fun m!148549 () Bool)

(assert (=> b!159888 m!148549))

(assert (=> b!159888 m!148547))

(assert (=> b!159888 m!148543))

(assert (=> b!159888 m!148547))

(declare-fun m!148551 () Bool)

(assert (=> b!159888 m!148551))

(declare-fun m!148553 () Bool)

(assert (=> bm!6740 m!148553))

(declare-fun m!148555 () Bool)

(assert (=> b!159889 m!148555))

(declare-fun m!148557 () Bool)

(assert (=> b!159891 m!148557))

(declare-fun m!148559 () Bool)

(assert (=> bm!6741 m!148559))

(declare-fun m!148561 () Bool)

(assert (=> b!159884 m!148561))

(declare-fun m!148563 () Bool)

(assert (=> b!159893 m!148563))

(assert (=> b!159883 m!148561))

(declare-fun m!148565 () Bool)

(assert (=> b!159883 m!148565))

(declare-fun m!148567 () Bool)

(assert (=> b!159883 m!148567))

(declare-fun m!148569 () Bool)

(assert (=> b!159883 m!148569))

(declare-fun m!148571 () Bool)

(assert (=> b!159883 m!148571))

(declare-fun m!148573 () Bool)

(assert (=> b!159883 m!148573))

(declare-fun m!148575 () Bool)

(assert (=> b!159883 m!148575))

(declare-fun m!148577 () Bool)

(assert (=> b!159883 m!148577))

(assert (=> b!159883 m!148569))

(assert (=> b!159883 m!148565))

(declare-fun m!148579 () Bool)

(assert (=> b!159883 m!148579))

(declare-fun m!148581 () Bool)

(assert (=> b!159883 m!148581))

(declare-fun m!148583 () Bool)

(assert (=> b!159883 m!148583))

(assert (=> b!159883 m!148577))

(assert (=> b!159883 m!148561))

(declare-fun m!148585 () Bool)

(assert (=> b!159883 m!148585))

(assert (=> b!159883 m!148561))

(assert (=> b!159883 m!148573))

(declare-fun m!148587 () Bool)

(assert (=> b!159883 m!148587))

(assert (=> b!159883 m!148579))

(declare-fun m!148589 () Bool)

(assert (=> b!159883 m!148589))

(declare-fun m!148591 () Bool)

(assert (=> b!159883 m!148591))

(assert (=> bm!6737 m!148561))

(declare-fun m!148593 () Bool)

(assert (=> d!39119 m!148593))

(assert (=> d!39119 m!148563))

(assert (=> d!39119 m!148577))

(assert (=> d!39119 m!148577))

(declare-fun m!148595 () Bool)

(assert (=> d!39119 m!148595))

(declare-fun m!148597 () Bool)

(assert (=> d!39119 m!148597))

(assert (=> d!39119 m!148595))

(assert (=> d!39119 m!148595))

(declare-fun m!148599 () Bool)

(assert (=> d!39119 m!148599))

(assert (=> b!159692 d!39119))

(declare-fun bs!15010 () Bool)

(declare-fun b!160018 () Bool)

(assert (= bs!15010 (and b!160018 b!159687)))

(declare-fun lambda!4352 () Int)

(assert (=> bs!15010 (not (= lambda!4352 lambda!4322))))

(declare-fun bs!15011 () Bool)

(assert (= bs!15011 (and b!160018 d!39095)))

(assert (=> bs!15011 (= lambda!4352 lambda!4330)))

(declare-fun bs!15012 () Bool)

(assert (= bs!15012 (and b!160018 d!39119)))

(assert (=> bs!15012 (not (= lambda!4352 lambda!4344))))

(declare-fun bs!15013 () Bool)

(assert (= bs!15013 (and b!160018 b!159883)))

(assert (=> bs!15013 (= lambda!4352 lambda!4345)))

(declare-fun b!160028 () Bool)

(declare-fun e!96212 () Bool)

(assert (=> b!160028 (= e!96212 true)))

(declare-fun b!160027 () Bool)

(declare-fun e!96211 () Bool)

(assert (=> b!160027 (= e!96211 e!96212)))

(declare-fun b!160026 () Bool)

(declare-fun e!96210 () Bool)

(assert (=> b!160026 (= e!96210 e!96211)))

(assert (=> b!160018 e!96210))

(assert (= b!160027 b!160028))

(assert (= b!160026 b!160027))

(assert (= (and b!160018 ((_ is Cons!2748) rules!1920)) b!160026))

(assert (=> b!160028 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4352))))

(assert (=> b!160028 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4352))))

(assert (=> b!160018 true))

(declare-fun e!96208 () List!2756)

(declare-fun e!96209 () List!2756)

(assert (=> b!160018 (= e!96208 e!96209)))

(declare-fun lt!48096 () Unit!2232)

(assert (=> b!160018 (= lt!48096 (forallContained!62 tokens!465 lambda!4352 (h!8144 tokens!465)))))

(declare-fun lt!48094 () List!2756)

(assert (=> b!160018 (= lt!48094 (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (t!25821 tokens!465) separatorToken!170))))

(declare-datatypes ((tuple2!2654 0))(
  ( (tuple2!2655 (_1!1543 Token!710) (_2!1543 List!2756)) )
))
(declare-datatypes ((Option!271 0))(
  ( (None!270) (Some!270 (v!13675 tuple2!2654)) )
))
(declare-fun lt!48095 () Option!271)

(declare-fun maxPrefix!119 (LexerInterface!369 List!2758 List!2756) Option!271)

(assert (=> b!160018 (= lt!48095 (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094)))))

(declare-fun c!32089 () Bool)

(assert (=> b!160018 (= c!32089 (and ((_ is Some!270) lt!48095) (= (_1!1543 (v!13675 lt!48095)) (h!8144 tokens!465))))))

(declare-fun b!160019 () Bool)

(declare-fun c!32088 () Bool)

(assert (=> b!160019 (= c!32088 (and ((_ is Some!270) lt!48095) (not (= (_1!1543 (v!13675 lt!48095)) (h!8144 tokens!465)))))))

(declare-fun e!96207 () List!2756)

(assert (=> b!160019 (= e!96209 e!96207)))

(declare-fun bm!6762 () Bool)

(declare-fun call!6770 () BalanceConc!1584)

(declare-fun call!6767 () BalanceConc!1584)

(assert (=> bm!6762 (= call!6770 call!6767)))

(declare-fun b!160020 () Bool)

(declare-fun call!6769 () List!2756)

(assert (=> b!160020 (= e!96209 call!6769)))

(declare-fun bm!6763 () Bool)

(declare-fun call!6768 () List!2756)

(declare-fun e!96206 () BalanceConc!1584)

(assert (=> bm!6763 (= call!6768 (list!985 e!96206))))

(declare-fun c!32090 () Bool)

(assert (=> bm!6763 (= c!32090 c!32088)))

(declare-fun b!160021 () Bool)

(assert (=> b!160021 (= e!96208 Nil!2746)))

(declare-fun b!160022 () Bool)

(assert (=> b!160022 (= e!96207 (++!608 call!6769 lt!48094))))

(declare-fun d!39129 () Bool)

(declare-fun c!32087 () Bool)

(assert (=> d!39129 (= c!32087 ((_ is Cons!2747) tokens!465))))

(assert (=> d!39129 (= (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!96208)))

(declare-fun bm!6764 () Bool)

(declare-fun call!6771 () List!2756)

(assert (=> bm!6764 (= call!6771 (list!985 (ite c!32089 call!6767 call!6770)))))

(declare-fun b!160023 () Bool)

(assert (=> b!160023 (= e!96206 call!6770)))

(declare-fun b!160024 () Bool)

(assert (=> b!160024 (= e!96206 (charsOf!138 separatorToken!170))))

(declare-fun bm!6765 () Bool)

(assert (=> bm!6765 (= call!6769 (++!608 call!6771 (ite c!32089 lt!48094 call!6768)))))

(declare-fun bm!6766 () Bool)

(assert (=> bm!6766 (= call!6767 (charsOf!138 (h!8144 tokens!465)))))

(declare-fun b!160025 () Bool)

(assert (=> b!160025 (= e!96207 Nil!2746)))

(assert (=> b!160025 (= (print!104 thiss!17480 (singletonSeq!37 (h!8144 tokens!465))) (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 tokens!465)) 0 (BalanceConc!1585 Empty!788)))))

(declare-fun lt!48093 () Unit!2232)

(declare-fun Unit!2242 () Unit!2232)

(assert (=> b!160025 (= lt!48093 Unit!2242)))

(declare-fun lt!48091 () Unit!2232)

(assert (=> b!160025 (= lt!48091 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 call!6768 lt!48094))))

(assert (=> b!160025 false))

(declare-fun lt!48092 () Unit!2232)

(declare-fun Unit!2243 () Unit!2232)

(assert (=> b!160025 (= lt!48092 Unit!2243)))

(assert (= (and d!39129 c!32087) b!160018))

(assert (= (and d!39129 (not c!32087)) b!160021))

(assert (= (and b!160018 c!32089) b!160020))

(assert (= (and b!160018 (not c!32089)) b!160019))

(assert (= (and b!160019 c!32088) b!160022))

(assert (= (and b!160019 (not c!32088)) b!160025))

(assert (= (or b!160022 b!160025) bm!6762))

(assert (= (or b!160022 b!160025) bm!6763))

(assert (= (and bm!6763 c!32090) b!160024))

(assert (= (and bm!6763 (not c!32090)) b!160023))

(assert (= (or b!160020 bm!6762) bm!6766))

(assert (= (or b!160020 b!160022) bm!6764))

(assert (= (or b!160020 b!160022) bm!6765))

(declare-fun m!148745 () Bool)

(assert (=> bm!6765 m!148745))

(assert (=> b!160024 m!148355))

(declare-fun m!148747 () Bool)

(assert (=> b!160022 m!148747))

(assert (=> b!160018 m!148353))

(assert (=> b!160018 m!148365))

(declare-fun m!148749 () Bool)

(assert (=> b!160018 m!148749))

(declare-fun m!148751 () Bool)

(assert (=> b!160018 m!148751))

(declare-fun m!148753 () Bool)

(assert (=> b!160018 m!148753))

(assert (=> b!160018 m!148367))

(assert (=> b!160018 m!148751))

(assert (=> b!160018 m!148365))

(assert (=> b!160018 m!148367))

(declare-fun m!148755 () Bool)

(assert (=> bm!6764 m!148755))

(declare-fun m!148757 () Bool)

(assert (=> b!160025 m!148757))

(assert (=> b!160025 m!148757))

(declare-fun m!148759 () Bool)

(assert (=> b!160025 m!148759))

(assert (=> b!160025 m!148757))

(declare-fun m!148761 () Bool)

(assert (=> b!160025 m!148761))

(declare-fun m!148763 () Bool)

(assert (=> b!160025 m!148763))

(declare-fun m!148765 () Bool)

(assert (=> bm!6763 m!148765))

(assert (=> bm!6766 m!148365))

(assert (=> b!159692 d!39129))

(declare-fun d!39157 () Bool)

(assert (=> d!39157 (= (isEmpty!1108 rules!1920) ((_ is Nil!2748) rules!1920))))

(assert (=> b!159694 d!39157))

(declare-fun d!39159 () Bool)

(declare-fun res!72599 () Bool)

(declare-fun e!96217 () Bool)

(assert (=> d!39159 (=> res!72599 e!96217)))

(assert (=> d!39159 (= res!72599 (not ((_ is Cons!2748) rules!1920)))))

(assert (=> d!39159 (= (sepAndNonSepRulesDisjointChars!72 rules!1920 rules!1920) e!96217)))

(declare-fun b!160033 () Bool)

(declare-fun e!96218 () Bool)

(assert (=> b!160033 (= e!96217 e!96218)))

(declare-fun res!72600 () Bool)

(assert (=> b!160033 (=> (not res!72600) (not e!96218))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!28 (Rule!766 List!2758) Bool)

(assert (=> b!160033 (= res!72600 (ruleDisjointCharsFromAllFromOtherType!28 (h!8145 rules!1920) rules!1920))))

(declare-fun b!160034 () Bool)

(assert (=> b!160034 (= e!96218 (sepAndNonSepRulesDisjointChars!72 rules!1920 (t!25822 rules!1920)))))

(assert (= (and d!39159 (not res!72599)) b!160033))

(assert (= (and b!160033 res!72600) b!160034))

(declare-fun m!148767 () Bool)

(assert (=> b!160033 m!148767))

(declare-fun m!148769 () Bool)

(assert (=> b!160034 m!148769))

(assert (=> b!159683 d!39159))

(declare-fun b!160045 () Bool)

(declare-fun e!96225 () Bool)

(declare-fun inv!17 (TokenValue!505) Bool)

(assert (=> b!160045 (= e!96225 (inv!17 (value!18081 separatorToken!170)))))

(declare-fun b!160046 () Bool)

(declare-fun e!96227 () Bool)

(declare-fun inv!16 (TokenValue!505) Bool)

(assert (=> b!160046 (= e!96227 (inv!16 (value!18081 separatorToken!170)))))

(declare-fun b!160047 () Bool)

(declare-fun e!96226 () Bool)

(declare-fun inv!15 (TokenValue!505) Bool)

(assert (=> b!160047 (= e!96226 (inv!15 (value!18081 separatorToken!170)))))

(declare-fun b!160048 () Bool)

(assert (=> b!160048 (= e!96227 e!96225)))

(declare-fun c!32095 () Bool)

(assert (=> b!160048 (= c!32095 ((_ is IntegerValue!1516) (value!18081 separatorToken!170)))))

(declare-fun d!39161 () Bool)

(declare-fun c!32096 () Bool)

(assert (=> d!39161 (= c!32096 ((_ is IntegerValue!1515) (value!18081 separatorToken!170)))))

(assert (=> d!39161 (= (inv!21 (value!18081 separatorToken!170)) e!96227)))

(declare-fun b!160049 () Bool)

(declare-fun res!72603 () Bool)

(assert (=> b!160049 (=> res!72603 e!96226)))

(assert (=> b!160049 (= res!72603 (not ((_ is IntegerValue!1517) (value!18081 separatorToken!170))))))

(assert (=> b!160049 (= e!96225 e!96226)))

(assert (= (and d!39161 c!32096) b!160046))

(assert (= (and d!39161 (not c!32096)) b!160048))

(assert (= (and b!160048 c!32095) b!160045))

(assert (= (and b!160048 (not c!32095)) b!160049))

(assert (= (and b!160049 (not res!72603)) b!160047))

(declare-fun m!148771 () Bool)

(assert (=> b!160045 m!148771))

(declare-fun m!148773 () Bool)

(assert (=> b!160046 m!148773))

(declare-fun m!148775 () Bool)

(assert (=> b!160047 m!148775))

(assert (=> b!159685 d!39161))

(declare-fun d!39163 () Bool)

(declare-fun res!72604 () Bool)

(declare-fun e!96228 () Bool)

(assert (=> d!39163 (=> (not res!72604) (not e!96228))))

(assert (=> d!39163 (= res!72604 (not (isEmpty!1110 (originalCharacters!526 (h!8144 tokens!465)))))))

(assert (=> d!39163 (= (inv!3562 (h!8144 tokens!465)) e!96228)))

(declare-fun b!160050 () Bool)

(declare-fun res!72605 () Bool)

(assert (=> b!160050 (=> (not res!72605) (not e!96228))))

(assert (=> b!160050 (= res!72605 (= (originalCharacters!526 (h!8144 tokens!465)) (list!985 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))))))

(declare-fun b!160051 () Bool)

(assert (=> b!160051 (= e!96228 (= (size!2318 (h!8144 tokens!465)) (size!2323 (originalCharacters!526 (h!8144 tokens!465)))))))

(assert (= (and d!39163 res!72604) b!160050))

(assert (= (and b!160050 res!72605) b!160051))

(declare-fun b_lambda!3293 () Bool)

(assert (=> (not b_lambda!3293) (not b!160050)))

(declare-fun tb!5823 () Bool)

(declare-fun t!25871 () Bool)

(assert (=> (and b!159690 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) t!25871) tb!5823))

(declare-fun b!160052 () Bool)

(declare-fun e!96229 () Bool)

(declare-fun tp!81459 () Bool)

(assert (=> b!160052 (= e!96229 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))) tp!81459))))

(declare-fun result!8406 () Bool)

(assert (=> tb!5823 (= result!8406 (and (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))) e!96229))))

(assert (= tb!5823 b!160052))

(declare-fun m!148777 () Bool)

(assert (=> b!160052 m!148777))

(declare-fun m!148779 () Bool)

(assert (=> tb!5823 m!148779))

(assert (=> b!160050 t!25871))

(declare-fun b_and!9871 () Bool)

(assert (= b_and!9833 (and (=> t!25871 result!8406) b_and!9871)))

(declare-fun t!25873 () Bool)

(declare-fun tb!5825 () Bool)

(assert (=> (and b!159680 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) t!25873) tb!5825))

(declare-fun result!8408 () Bool)

(assert (= result!8408 result!8406))

(assert (=> b!160050 t!25873))

(declare-fun b_and!9873 () Bool)

(assert (= b_and!9835 (and (=> t!25873 result!8408) b_and!9873)))

(declare-fun t!25875 () Bool)

(declare-fun tb!5827 () Bool)

(assert (=> (and b!159684 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) t!25875) tb!5827))

(declare-fun result!8410 () Bool)

(assert (= result!8410 result!8406))

(assert (=> b!160050 t!25875))

(declare-fun b_and!9875 () Bool)

(assert (= b_and!9837 (and (=> t!25875 result!8410) b_and!9875)))

(declare-fun m!148781 () Bool)

(assert (=> d!39163 m!148781))

(declare-fun m!148783 () Bool)

(assert (=> b!160050 m!148783))

(assert (=> b!160050 m!148783))

(declare-fun m!148785 () Bool)

(assert (=> b!160050 m!148785))

(declare-fun m!148787 () Bool)

(assert (=> b!160051 m!148787))

(assert (=> b!159695 d!39163))

(declare-fun bs!15014 () Bool)

(declare-fun d!39165 () Bool)

(assert (= bs!15014 (and d!39165 b!159687)))

(declare-fun lambda!4353 () Int)

(assert (=> bs!15014 (not (= lambda!4353 lambda!4322))))

(declare-fun bs!15015 () Bool)

(assert (= bs!15015 (and d!39165 b!160018)))

(assert (=> bs!15015 (= lambda!4353 lambda!4352)))

(declare-fun bs!15016 () Bool)

(assert (= bs!15016 (and d!39165 d!39095)))

(assert (=> bs!15016 (= lambda!4353 lambda!4330)))

(declare-fun bs!15017 () Bool)

(assert (= bs!15017 (and d!39165 d!39119)))

(assert (=> bs!15017 (not (= lambda!4353 lambda!4344))))

(declare-fun bs!15018 () Bool)

(assert (= bs!15018 (and d!39165 b!159883)))

(assert (=> bs!15018 (= lambda!4353 lambda!4345)))

(declare-fun b!160056 () Bool)

(declare-fun e!96233 () Bool)

(assert (=> b!160056 (= e!96233 true)))

(declare-fun b!160055 () Bool)

(declare-fun e!96232 () Bool)

(assert (=> b!160055 (= e!96232 e!96233)))

(declare-fun b!160054 () Bool)

(declare-fun e!96231 () Bool)

(assert (=> b!160054 (= e!96231 e!96232)))

(assert (=> d!39165 e!96231))

(assert (= b!160055 b!160056))

(assert (= b!160054 b!160055))

(assert (= (and d!39165 ((_ is Cons!2748) rules!1920)) b!160054))

(assert (=> b!160056 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4353))))

(assert (=> b!160056 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4353))))

(assert (=> d!39165 true))

(declare-fun e!96230 () Bool)

(assert (=> d!39165 e!96230))

(declare-fun res!72606 () Bool)

(assert (=> d!39165 (=> (not res!72606) (not e!96230))))

(declare-fun lt!48097 () Bool)

(assert (=> d!39165 (= res!72606 (= lt!48097 (forall!500 (list!989 lt!47931) lambda!4353)))))

(assert (=> d!39165 (= lt!48097 (forall!501 lt!47931 lambda!4353))))

(assert (=> d!39165 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39165 (= (rulesProduceEachTokenIndividually!161 thiss!17480 rules!1920 lt!47931) lt!48097)))

(declare-fun b!160053 () Bool)

(assert (=> b!160053 (= e!96230 (= lt!48097 (rulesProduceEachTokenIndividuallyList!101 thiss!17480 rules!1920 (list!989 lt!47931))))))

(assert (= (and d!39165 res!72606) b!160053))

(assert (=> d!39165 m!148577))

(assert (=> d!39165 m!148577))

(declare-fun m!148789 () Bool)

(assert (=> d!39165 m!148789))

(declare-fun m!148791 () Bool)

(assert (=> d!39165 m!148791))

(assert (=> d!39165 m!148325))

(assert (=> b!160053 m!148577))

(assert (=> b!160053 m!148577))

(declare-fun m!148793 () Bool)

(assert (=> b!160053 m!148793))

(assert (=> b!159697 d!39165))

(declare-fun d!39167 () Bool)

(declare-fun fromListB!145 (List!2757) BalanceConc!1586)

(assert (=> d!39167 (= (seqFromList!344 tokens!465) (fromListB!145 tokens!465))))

(declare-fun bs!15019 () Bool)

(assert (= bs!15019 d!39167))

(declare-fun m!148795 () Bool)

(assert (=> bs!15019 m!148795))

(assert (=> b!159697 d!39167))

(declare-fun d!39169 () Bool)

(assert (=> d!39169 (= (seqFromList!344 (t!25821 tokens!465)) (fromListB!145 (t!25821 tokens!465)))))

(declare-fun bs!15020 () Bool)

(assert (= bs!15020 d!39169))

(declare-fun m!148797 () Bool)

(assert (=> bs!15020 m!148797))

(assert (=> b!159698 d!39169))

(declare-fun d!39171 () Bool)

(assert (=> d!39171 (= (list!985 (charsOf!138 separatorToken!170)) (list!988 (c!32021 (charsOf!138 separatorToken!170))))))

(declare-fun bs!15021 () Bool)

(assert (= bs!15021 d!39171))

(declare-fun m!148799 () Bool)

(assert (=> bs!15021 m!148799))

(assert (=> b!159698 d!39171))

(declare-fun b!160066 () Bool)

(declare-fun e!96239 () List!2756)

(assert (=> b!160066 (= e!96239 (Cons!2746 (h!8143 lt!47935) (++!608 (t!25820 lt!47935) lt!47938)))))

(declare-fun lt!48100 () List!2756)

(declare-fun e!96238 () Bool)

(declare-fun b!160068 () Bool)

(assert (=> b!160068 (= e!96238 (or (not (= lt!47938 Nil!2746)) (= lt!48100 lt!47935)))))

(declare-fun b!160065 () Bool)

(assert (=> b!160065 (= e!96239 lt!47938)))

(declare-fun b!160067 () Bool)

(declare-fun res!72612 () Bool)

(assert (=> b!160067 (=> (not res!72612) (not e!96238))))

(assert (=> b!160067 (= res!72612 (= (size!2323 lt!48100) (+ (size!2323 lt!47935) (size!2323 lt!47938))))))

(declare-fun d!39173 () Bool)

(assert (=> d!39173 e!96238))

(declare-fun res!72611 () Bool)

(assert (=> d!39173 (=> (not res!72611) (not e!96238))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!383 (List!2756) (InoxSet C!2336))

(assert (=> d!39173 (= res!72611 (= (content!383 lt!48100) ((_ map or) (content!383 lt!47935) (content!383 lt!47938))))))

(assert (=> d!39173 (= lt!48100 e!96239)))

(declare-fun c!32099 () Bool)

(assert (=> d!39173 (= c!32099 ((_ is Nil!2746) lt!47935))))

(assert (=> d!39173 (= (++!608 lt!47935 lt!47938) lt!48100)))

(assert (= (and d!39173 c!32099) b!160065))

(assert (= (and d!39173 (not c!32099)) b!160066))

(assert (= (and d!39173 res!72611) b!160067))

(assert (= (and b!160067 res!72612) b!160068))

(declare-fun m!148801 () Bool)

(assert (=> b!160066 m!148801))

(declare-fun m!148803 () Bool)

(assert (=> b!160067 m!148803))

(declare-fun m!148805 () Bool)

(assert (=> b!160067 m!148805))

(declare-fun m!148807 () Bool)

(assert (=> b!160067 m!148807))

(declare-fun m!148809 () Bool)

(assert (=> d!39173 m!148809))

(declare-fun m!148811 () Bool)

(assert (=> d!39173 m!148811))

(declare-fun m!148813 () Bool)

(assert (=> d!39173 m!148813))

(assert (=> b!159698 d!39173))

(declare-fun d!39175 () Bool)

(declare-fun lt!48103 () BalanceConc!1584)

(assert (=> d!39175 (= (list!985 lt!48103) (originalCharacters!526 separatorToken!170))))

(assert (=> d!39175 (= lt!48103 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))))

(assert (=> d!39175 (= (charsOf!138 separatorToken!170) lt!48103)))

(declare-fun b_lambda!3295 () Bool)

(assert (=> (not b_lambda!3295) (not d!39175)))

(assert (=> d!39175 t!25824))

(declare-fun b_and!9877 () Bool)

(assert (= b_and!9871 (and (=> t!25824 result!8368) b_and!9877)))

(assert (=> d!39175 t!25826))

(declare-fun b_and!9879 () Bool)

(assert (= b_and!9873 (and (=> t!25826 result!8372) b_and!9879)))

(assert (=> d!39175 t!25828))

(declare-fun b_and!9881 () Bool)

(assert (= b_and!9875 (and (=> t!25828 result!8374) b_and!9881)))

(declare-fun m!148815 () Bool)

(assert (=> d!39175 m!148815))

(assert (=> d!39175 m!148417))

(assert (=> b!159698 d!39175))

(declare-fun b!160070 () Bool)

(declare-fun e!96241 () List!2756)

(assert (=> b!160070 (= e!96241 (Cons!2746 (h!8143 lt!47936) (++!608 (t!25820 lt!47936) lt!47935)))))

(declare-fun lt!48104 () List!2756)

(declare-fun e!96240 () Bool)

(declare-fun b!160072 () Bool)

(assert (=> b!160072 (= e!96240 (or (not (= lt!47935 Nil!2746)) (= lt!48104 lt!47936)))))

(declare-fun b!160069 () Bool)

(assert (=> b!160069 (= e!96241 lt!47935)))

(declare-fun b!160071 () Bool)

(declare-fun res!72614 () Bool)

(assert (=> b!160071 (=> (not res!72614) (not e!96240))))

(assert (=> b!160071 (= res!72614 (= (size!2323 lt!48104) (+ (size!2323 lt!47936) (size!2323 lt!47935))))))

(declare-fun d!39177 () Bool)

(assert (=> d!39177 e!96240))

(declare-fun res!72613 () Bool)

(assert (=> d!39177 (=> (not res!72613) (not e!96240))))

(assert (=> d!39177 (= res!72613 (= (content!383 lt!48104) ((_ map or) (content!383 lt!47936) (content!383 lt!47935))))))

(assert (=> d!39177 (= lt!48104 e!96241)))

(declare-fun c!32100 () Bool)

(assert (=> d!39177 (= c!32100 ((_ is Nil!2746) lt!47936))))

(assert (=> d!39177 (= (++!608 lt!47936 lt!47935) lt!48104)))

(assert (= (and d!39177 c!32100) b!160069))

(assert (= (and d!39177 (not c!32100)) b!160070))

(assert (= (and d!39177 res!72613) b!160071))

(assert (= (and b!160071 res!72614) b!160072))

(declare-fun m!148817 () Bool)

(assert (=> b!160070 m!148817))

(declare-fun m!148819 () Bool)

(assert (=> b!160071 m!148819))

(declare-fun m!148821 () Bool)

(assert (=> b!160071 m!148821))

(assert (=> b!160071 m!148805))

(declare-fun m!148823 () Bool)

(assert (=> d!39177 m!148823))

(declare-fun m!148825 () Bool)

(assert (=> d!39177 m!148825))

(assert (=> d!39177 m!148811))

(assert (=> b!159698 d!39177))

(declare-fun b!160074 () Bool)

(declare-fun e!96243 () List!2756)

(assert (=> b!160074 (= e!96243 (Cons!2746 (h!8143 lt!47936) (++!608 (t!25820 lt!47936) lt!47933)))))

(declare-fun b!160076 () Bool)

(declare-fun lt!48105 () List!2756)

(declare-fun e!96242 () Bool)

(assert (=> b!160076 (= e!96242 (or (not (= lt!47933 Nil!2746)) (= lt!48105 lt!47936)))))

(declare-fun b!160073 () Bool)

(assert (=> b!160073 (= e!96243 lt!47933)))

(declare-fun b!160075 () Bool)

(declare-fun res!72616 () Bool)

(assert (=> b!160075 (=> (not res!72616) (not e!96242))))

(assert (=> b!160075 (= res!72616 (= (size!2323 lt!48105) (+ (size!2323 lt!47936) (size!2323 lt!47933))))))

(declare-fun d!39179 () Bool)

(assert (=> d!39179 e!96242))

(declare-fun res!72615 () Bool)

(assert (=> d!39179 (=> (not res!72615) (not e!96242))))

(assert (=> d!39179 (= res!72615 (= (content!383 lt!48105) ((_ map or) (content!383 lt!47936) (content!383 lt!47933))))))

(assert (=> d!39179 (= lt!48105 e!96243)))

(declare-fun c!32101 () Bool)

(assert (=> d!39179 (= c!32101 ((_ is Nil!2746) lt!47936))))

(assert (=> d!39179 (= (++!608 lt!47936 lt!47933) lt!48105)))

(assert (= (and d!39179 c!32101) b!160073))

(assert (= (and d!39179 (not c!32101)) b!160074))

(assert (= (and d!39179 res!72615) b!160075))

(assert (= (and b!160075 res!72616) b!160076))

(declare-fun m!148827 () Bool)

(assert (=> b!160074 m!148827))

(declare-fun m!148829 () Bool)

(assert (=> b!160075 m!148829))

(assert (=> b!160075 m!148821))

(declare-fun m!148831 () Bool)

(assert (=> b!160075 m!148831))

(declare-fun m!148833 () Bool)

(assert (=> d!39179 m!148833))

(assert (=> d!39179 m!148825))

(declare-fun m!148835 () Bool)

(assert (=> d!39179 m!148835))

(assert (=> b!159698 d!39179))

(declare-fun d!39181 () Bool)

(declare-fun lt!48108 () Int)

(declare-fun size!2324 (List!2757) Int)

(assert (=> d!39181 (= lt!48108 (size!2324 (list!989 lt!47937)))))

(declare-fun size!2325 (Conc!789) Int)

(assert (=> d!39181 (= lt!48108 (size!2325 (c!32023 lt!47937)))))

(assert (=> d!39181 (= (size!2319 lt!47937) lt!48108)))

(declare-fun bs!15022 () Bool)

(assert (= bs!15022 d!39181))

(assert (=> bs!15022 m!148513))

(assert (=> bs!15022 m!148513))

(declare-fun m!148837 () Bool)

(assert (=> bs!15022 m!148837))

(declare-fun m!148839 () Bool)

(assert (=> bs!15022 m!148839))

(assert (=> b!159698 d!39181))

(declare-fun d!39183 () Bool)

(assert (=> d!39183 (= (list!985 (charsOf!138 (h!8144 tokens!465))) (list!988 (c!32021 (charsOf!138 (h!8144 tokens!465)))))))

(declare-fun bs!15023 () Bool)

(assert (= bs!15023 d!39183))

(declare-fun m!148841 () Bool)

(assert (=> bs!15023 m!148841))

(assert (=> b!159698 d!39183))

(declare-fun d!39185 () Bool)

(declare-fun lt!48109 () BalanceConc!1584)

(assert (=> d!39185 (= (list!985 lt!48109) (originalCharacters!526 (h!8144 tokens!465)))))

(assert (=> d!39185 (= lt!48109 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))))

(assert (=> d!39185 (= (charsOf!138 (h!8144 tokens!465)) lt!48109)))

(declare-fun b_lambda!3297 () Bool)

(assert (=> (not b_lambda!3297) (not d!39185)))

(assert (=> d!39185 t!25871))

(declare-fun b_and!9883 () Bool)

(assert (= b_and!9877 (and (=> t!25871 result!8406) b_and!9883)))

(assert (=> d!39185 t!25873))

(declare-fun b_and!9885 () Bool)

(assert (= b_and!9879 (and (=> t!25873 result!8408) b_and!9885)))

(assert (=> d!39185 t!25875))

(declare-fun b_and!9887 () Bool)

(assert (= b_and!9881 (and (=> t!25875 result!8410) b_and!9887)))

(declare-fun m!148843 () Bool)

(assert (=> d!39185 m!148843))

(assert (=> d!39185 m!148783))

(assert (=> b!159698 d!39185))

(declare-fun b!160078 () Bool)

(declare-fun e!96245 () List!2756)

(assert (=> b!160078 (= e!96245 (Cons!2746 (h!8143 (++!608 lt!47936 lt!47935)) (++!608 (t!25820 (++!608 lt!47936 lt!47935)) lt!47938)))))

(declare-fun b!160080 () Bool)

(declare-fun lt!48110 () List!2756)

(declare-fun e!96244 () Bool)

(assert (=> b!160080 (= e!96244 (or (not (= lt!47938 Nil!2746)) (= lt!48110 (++!608 lt!47936 lt!47935))))))

(declare-fun b!160077 () Bool)

(assert (=> b!160077 (= e!96245 lt!47938)))

(declare-fun b!160079 () Bool)

(declare-fun res!72618 () Bool)

(assert (=> b!160079 (=> (not res!72618) (not e!96244))))

(assert (=> b!160079 (= res!72618 (= (size!2323 lt!48110) (+ (size!2323 (++!608 lt!47936 lt!47935)) (size!2323 lt!47938))))))

(declare-fun d!39187 () Bool)

(assert (=> d!39187 e!96244))

(declare-fun res!72617 () Bool)

(assert (=> d!39187 (=> (not res!72617) (not e!96244))))

(assert (=> d!39187 (= res!72617 (= (content!383 lt!48110) ((_ map or) (content!383 (++!608 lt!47936 lt!47935)) (content!383 lt!47938))))))

(assert (=> d!39187 (= lt!48110 e!96245)))

(declare-fun c!32102 () Bool)

(assert (=> d!39187 (= c!32102 ((_ is Nil!2746) (++!608 lt!47936 lt!47935)))))

(assert (=> d!39187 (= (++!608 (++!608 lt!47936 lt!47935) lt!47938) lt!48110)))

(assert (= (and d!39187 c!32102) b!160077))

(assert (= (and d!39187 (not c!32102)) b!160078))

(assert (= (and d!39187 res!72617) b!160079))

(assert (= (and b!160079 res!72618) b!160080))

(declare-fun m!148845 () Bool)

(assert (=> b!160078 m!148845))

(declare-fun m!148847 () Bool)

(assert (=> b!160079 m!148847))

(assert (=> b!160079 m!148361))

(declare-fun m!148849 () Bool)

(assert (=> b!160079 m!148849))

(assert (=> b!160079 m!148807))

(declare-fun m!148851 () Bool)

(assert (=> d!39187 m!148851))

(assert (=> d!39187 m!148361))

(declare-fun m!148853 () Bool)

(assert (=> d!39187 m!148853))

(assert (=> d!39187 m!148813))

(assert (=> b!159698 d!39187))

(declare-fun d!39189 () Bool)

(assert (=> d!39189 (= (++!608 (++!608 lt!47936 lt!47935) lt!47938) (++!608 lt!47936 (++!608 lt!47935 lt!47938)))))

(declare-fun lt!48113 () Unit!2232)

(declare-fun choose!1786 (List!2756 List!2756 List!2756) Unit!2232)

(assert (=> d!39189 (= lt!48113 (choose!1786 lt!47936 lt!47935 lt!47938))))

(assert (=> d!39189 (= (lemmaConcatAssociativity!164 lt!47936 lt!47935 lt!47938) lt!48113)))

(declare-fun bs!15024 () Bool)

(assert (= bs!15024 d!39189))

(assert (=> bs!15024 m!148361))

(assert (=> bs!15024 m!148351))

(assert (=> bs!15024 m!148361))

(assert (=> bs!15024 m!148363))

(assert (=> bs!15024 m!148351))

(declare-fun m!148855 () Bool)

(assert (=> bs!15024 m!148855))

(declare-fun m!148857 () Bool)

(assert (=> bs!15024 m!148857))

(assert (=> b!159698 d!39189))

(declare-fun bs!15025 () Bool)

(declare-fun b!160081 () Bool)

(assert (= bs!15025 (and b!160081 b!159687)))

(declare-fun lambda!4354 () Int)

(assert (=> bs!15025 (not (= lambda!4354 lambda!4322))))

(declare-fun bs!15026 () Bool)

(assert (= bs!15026 (and b!160081 b!160018)))

(assert (=> bs!15026 (= lambda!4354 lambda!4352)))

(declare-fun bs!15027 () Bool)

(assert (= bs!15027 (and b!160081 d!39165)))

(assert (=> bs!15027 (= lambda!4354 lambda!4353)))

(declare-fun bs!15028 () Bool)

(assert (= bs!15028 (and b!160081 d!39095)))

(assert (=> bs!15028 (= lambda!4354 lambda!4330)))

(declare-fun bs!15029 () Bool)

(assert (= bs!15029 (and b!160081 d!39119)))

(assert (=> bs!15029 (not (= lambda!4354 lambda!4344))))

(declare-fun bs!15030 () Bool)

(assert (= bs!15030 (and b!160081 b!159883)))

(assert (=> bs!15030 (= lambda!4354 lambda!4345)))

(declare-fun b!160091 () Bool)

(declare-fun e!96252 () Bool)

(assert (=> b!160091 (= e!96252 true)))

(declare-fun b!160090 () Bool)

(declare-fun e!96251 () Bool)

(assert (=> b!160090 (= e!96251 e!96252)))

(declare-fun b!160089 () Bool)

(declare-fun e!96250 () Bool)

(assert (=> b!160089 (= e!96250 e!96251)))

(assert (=> b!160081 e!96250))

(assert (= b!160090 b!160091))

(assert (= b!160089 b!160090))

(assert (= (and b!160081 ((_ is Cons!2748) rules!1920)) b!160089))

(assert (=> b!160091 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4354))))

(assert (=> b!160091 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4354))))

(assert (=> b!160081 true))

(declare-fun e!96248 () List!2756)

(declare-fun e!96249 () List!2756)

(assert (=> b!160081 (= e!96248 e!96249)))

(declare-fun lt!48119 () Unit!2232)

(assert (=> b!160081 (= lt!48119 (forallContained!62 (t!25821 tokens!465) lambda!4354 (h!8144 (t!25821 tokens!465))))))

(declare-fun lt!48117 () List!2756)

(assert (=> b!160081 (= lt!48117 (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (t!25821 (t!25821 tokens!465)) separatorToken!170))))

(declare-fun lt!48118 () Option!271)

(assert (=> b!160081 (= lt!48118 (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117)))))

(declare-fun c!32105 () Bool)

(assert (=> b!160081 (= c!32105 (and ((_ is Some!270) lt!48118) (= (_1!1543 (v!13675 lt!48118)) (h!8144 (t!25821 tokens!465)))))))

(declare-fun b!160082 () Bool)

(declare-fun c!32104 () Bool)

(assert (=> b!160082 (= c!32104 (and ((_ is Some!270) lt!48118) (not (= (_1!1543 (v!13675 lt!48118)) (h!8144 (t!25821 tokens!465))))))))

(declare-fun e!96247 () List!2756)

(assert (=> b!160082 (= e!96249 e!96247)))

(declare-fun bm!6767 () Bool)

(declare-fun call!6775 () BalanceConc!1584)

(declare-fun call!6772 () BalanceConc!1584)

(assert (=> bm!6767 (= call!6775 call!6772)))

(declare-fun b!160083 () Bool)

(declare-fun call!6774 () List!2756)

(assert (=> b!160083 (= e!96249 call!6774)))

(declare-fun bm!6768 () Bool)

(declare-fun call!6773 () List!2756)

(declare-fun e!96246 () BalanceConc!1584)

(assert (=> bm!6768 (= call!6773 (list!985 e!96246))))

(declare-fun c!32106 () Bool)

(assert (=> bm!6768 (= c!32106 c!32104)))

(declare-fun b!160084 () Bool)

(assert (=> b!160084 (= e!96248 Nil!2746)))

(declare-fun b!160085 () Bool)

(assert (=> b!160085 (= e!96247 (++!608 call!6774 lt!48117))))

(declare-fun d!39191 () Bool)

(declare-fun c!32103 () Bool)

(assert (=> d!39191 (= c!32103 ((_ is Cons!2747) (t!25821 tokens!465)))))

(assert (=> d!39191 (= (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (t!25821 tokens!465) separatorToken!170) e!96248)))

(declare-fun call!6776 () List!2756)

(declare-fun bm!6769 () Bool)

(assert (=> bm!6769 (= call!6776 (list!985 (ite c!32105 call!6772 call!6775)))))

(declare-fun b!160086 () Bool)

(assert (=> b!160086 (= e!96246 call!6775)))

(declare-fun b!160087 () Bool)

(assert (=> b!160087 (= e!96246 (charsOf!138 separatorToken!170))))

(declare-fun bm!6770 () Bool)

(assert (=> bm!6770 (= call!6774 (++!608 call!6776 (ite c!32105 lt!48117 call!6773)))))

(declare-fun bm!6771 () Bool)

(assert (=> bm!6771 (= call!6772 (charsOf!138 (h!8144 (t!25821 tokens!465))))))

(declare-fun b!160088 () Bool)

(assert (=> b!160088 (= e!96247 Nil!2746)))

(assert (=> b!160088 (= (print!104 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 tokens!465)))) (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 tokens!465))) 0 (BalanceConc!1585 Empty!788)))))

(declare-fun lt!48116 () Unit!2232)

(declare-fun Unit!2244 () Unit!2232)

(assert (=> b!160088 (= lt!48116 Unit!2244)))

(declare-fun lt!48114 () Unit!2232)

(assert (=> b!160088 (= lt!48114 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 call!6773 lt!48117))))

(assert (=> b!160088 false))

(declare-fun lt!48115 () Unit!2232)

(declare-fun Unit!2245 () Unit!2232)

(assert (=> b!160088 (= lt!48115 Unit!2245)))

(assert (= (and d!39191 c!32103) b!160081))

(assert (= (and d!39191 (not c!32103)) b!160084))

(assert (= (and b!160081 c!32105) b!160083))

(assert (= (and b!160081 (not c!32105)) b!160082))

(assert (= (and b!160082 c!32104) b!160085))

(assert (= (and b!160082 (not c!32104)) b!160088))

(assert (= (or b!160085 b!160088) bm!6767))

(assert (= (or b!160085 b!160088) bm!6768))

(assert (= (and bm!6768 c!32106) b!160087))

(assert (= (and bm!6768 (not c!32106)) b!160086))

(assert (= (or b!160083 bm!6767) bm!6771))

(assert (= (or b!160083 b!160085) bm!6769))

(assert (= (or b!160083 b!160085) bm!6770))

(declare-fun m!148859 () Bool)

(assert (=> bm!6770 m!148859))

(assert (=> b!160087 m!148355))

(declare-fun m!148861 () Bool)

(assert (=> b!160085 m!148861))

(declare-fun m!148863 () Bool)

(assert (=> b!160081 m!148863))

(declare-fun m!148865 () Bool)

(assert (=> b!160081 m!148865))

(declare-fun m!148867 () Bool)

(assert (=> b!160081 m!148867))

(declare-fun m!148869 () Bool)

(assert (=> b!160081 m!148869))

(declare-fun m!148871 () Bool)

(assert (=> b!160081 m!148871))

(declare-fun m!148873 () Bool)

(assert (=> b!160081 m!148873))

(assert (=> b!160081 m!148869))

(assert (=> b!160081 m!148865))

(assert (=> b!160081 m!148873))

(declare-fun m!148875 () Bool)

(assert (=> bm!6769 m!148875))

(declare-fun m!148877 () Bool)

(assert (=> b!160088 m!148877))

(assert (=> b!160088 m!148877))

(declare-fun m!148879 () Bool)

(assert (=> b!160088 m!148879))

(assert (=> b!160088 m!148877))

(declare-fun m!148881 () Bool)

(assert (=> b!160088 m!148881))

(declare-fun m!148883 () Bool)

(assert (=> b!160088 m!148883))

(declare-fun m!148885 () Bool)

(assert (=> bm!6768 m!148885))

(assert (=> bm!6771 m!148865))

(assert (=> b!159698 d!39191))

(declare-fun d!39193 () Bool)

(declare-fun res!72623 () Bool)

(declare-fun e!96257 () Bool)

(assert (=> d!39193 (=> res!72623 e!96257)))

(assert (=> d!39193 (= res!72623 ((_ is Nil!2747) tokens!465))))

(assert (=> d!39193 (= (forall!500 tokens!465 lambda!4322) e!96257)))

(declare-fun b!160096 () Bool)

(declare-fun e!96258 () Bool)

(assert (=> b!160096 (= e!96257 e!96258)))

(declare-fun res!72624 () Bool)

(assert (=> b!160096 (=> (not res!72624) (not e!96258))))

(declare-fun dynLambda!991 (Int Token!710) Bool)

(assert (=> b!160096 (= res!72624 (dynLambda!991 lambda!4322 (h!8144 tokens!465)))))

(declare-fun b!160097 () Bool)

(assert (=> b!160097 (= e!96258 (forall!500 (t!25821 tokens!465) lambda!4322))))

(assert (= (and d!39193 (not res!72623)) b!160096))

(assert (= (and b!160096 res!72624) b!160097))

(declare-fun b_lambda!3299 () Bool)

(assert (=> (not b_lambda!3299) (not b!160096)))

(declare-fun m!148887 () Bool)

(assert (=> b!160096 m!148887))

(declare-fun m!148889 () Bool)

(assert (=> b!160097 m!148889))

(assert (=> b!159687 d!39193))

(declare-fun d!39195 () Bool)

(declare-fun lt!48122 () Bool)

(assert (=> d!39195 (= lt!48122 (forall!500 (list!989 lt!47937) lambda!4322))))

(declare-fun forall!503 (Conc!789 Int) Bool)

(assert (=> d!39195 (= lt!48122 (forall!503 (c!32023 lt!47937) lambda!4322))))

(assert (=> d!39195 (= (forall!501 lt!47937 lambda!4322) lt!48122)))

(declare-fun bs!15031 () Bool)

(assert (= bs!15031 d!39195))

(assert (=> bs!15031 m!148513))

(assert (=> bs!15031 m!148513))

(declare-fun m!148891 () Bool)

(assert (=> bs!15031 m!148891))

(declare-fun m!148893 () Bool)

(assert (=> bs!15031 m!148893))

(assert (=> b!159689 d!39195))

(declare-fun d!39197 () Bool)

(declare-fun res!72627 () Bool)

(declare-fun e!96261 () Bool)

(assert (=> d!39197 (=> (not res!72627) (not e!96261))))

(declare-fun rulesValid!135 (LexerInterface!369 List!2758) Bool)

(assert (=> d!39197 (= res!72627 (rulesValid!135 thiss!17480 rules!1920))))

(assert (=> d!39197 (= (rulesInvariant!335 thiss!17480 rules!1920) e!96261)))

(declare-fun b!160100 () Bool)

(declare-datatypes ((List!2760 0))(
  ( (Nil!2750) (Cons!2750 (h!8147 String!3605) (t!25886 List!2760)) )
))
(declare-fun noDuplicateTag!135 (LexerInterface!369 List!2758 List!2760) Bool)

(assert (=> b!160100 (= e!96261 (noDuplicateTag!135 thiss!17480 rules!1920 Nil!2750))))

(assert (= (and d!39197 res!72627) b!160100))

(declare-fun m!148895 () Bool)

(assert (=> d!39197 m!148895))

(declare-fun m!148897 () Bool)

(assert (=> b!160100 m!148897))

(assert (=> b!159688 d!39197))

(declare-fun d!39199 () Bool)

(assert (=> d!39199 (= (inv!3558 (tag!661 (rule!990 separatorToken!170))) (= (mod (str.len (value!18080 (tag!661 (rule!990 separatorToken!170)))) 2) 0))))

(assert (=> b!159699 d!39199))

(declare-fun d!39201 () Bool)

(declare-fun res!72630 () Bool)

(declare-fun e!96264 () Bool)

(assert (=> d!39201 (=> (not res!72630) (not e!96264))))

(declare-fun semiInverseModEq!169 (Int Int) Bool)

(assert (=> d!39201 (= res!72630 (semiInverseModEq!169 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))))))

(assert (=> d!39201 (= (inv!3561 (transformation!483 (rule!990 separatorToken!170))) e!96264)))

(declare-fun b!160103 () Bool)

(declare-fun equivClasses!152 (Int Int) Bool)

(assert (=> b!160103 (= e!96264 (equivClasses!152 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))))))

(assert (= (and d!39201 res!72630) b!160103))

(declare-fun m!148899 () Bool)

(assert (=> d!39201 m!148899))

(declare-fun m!148901 () Bool)

(assert (=> b!160103 m!148901))

(assert (=> b!159699 d!39201))

(declare-fun d!39203 () Bool)

(declare-fun lt!48127 () Bool)

(declare-fun e!96270 () Bool)

(assert (=> d!39203 (= lt!48127 e!96270)))

(declare-fun res!72637 () Bool)

(assert (=> d!39203 (=> (not res!72637) (not e!96270))))

(declare-datatypes ((tuple2!2658 0))(
  ( (tuple2!2659 (_1!1545 BalanceConc!1586) (_2!1545 BalanceConc!1584)) )
))
(declare-fun lex!179 (LexerInterface!369 List!2758 BalanceConc!1584) tuple2!2658)

(assert (=> d!39203 (= res!72637 (= (list!989 (_1!1545 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170))))) (list!989 (singletonSeq!37 separatorToken!170))))))

(declare-fun e!96269 () Bool)

(assert (=> d!39203 (= lt!48127 e!96269)))

(declare-fun res!72639 () Bool)

(assert (=> d!39203 (=> (not res!72639) (not e!96269))))

(declare-fun lt!48128 () tuple2!2658)

(assert (=> d!39203 (= res!72639 (= (size!2319 (_1!1545 lt!48128)) 1))))

(assert (=> d!39203 (= lt!48128 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170))))))

(assert (=> d!39203 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39203 (= (rulesProduceIndividualToken!118 thiss!17480 rules!1920 separatorToken!170) lt!48127)))

(declare-fun b!160110 () Bool)

(declare-fun res!72638 () Bool)

(assert (=> b!160110 (=> (not res!72638) (not e!96269))))

(assert (=> b!160110 (= res!72638 (= (apply!381 (_1!1545 lt!48128) 0) separatorToken!170))))

(declare-fun b!160111 () Bool)

(declare-fun isEmpty!1112 (BalanceConc!1584) Bool)

(assert (=> b!160111 (= e!96269 (isEmpty!1112 (_2!1545 lt!48128)))))

(declare-fun b!160112 () Bool)

(assert (=> b!160112 (= e!96270 (isEmpty!1112 (_2!1545 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170))))))))

(assert (= (and d!39203 res!72639) b!160110))

(assert (= (and b!160110 res!72638) b!160111))

(assert (= (and d!39203 res!72637) b!160112))

(declare-fun m!148903 () Bool)

(assert (=> d!39203 m!148903))

(declare-fun m!148905 () Bool)

(assert (=> d!39203 m!148905))

(declare-fun m!148907 () Bool)

(assert (=> d!39203 m!148907))

(declare-fun m!148909 () Bool)

(assert (=> d!39203 m!148909))

(declare-fun m!148911 () Bool)

(assert (=> d!39203 m!148911))

(assert (=> d!39203 m!148903))

(assert (=> d!39203 m!148907))

(declare-fun m!148913 () Bool)

(assert (=> d!39203 m!148913))

(assert (=> d!39203 m!148903))

(assert (=> d!39203 m!148325))

(declare-fun m!148915 () Bool)

(assert (=> b!160110 m!148915))

(declare-fun m!148917 () Bool)

(assert (=> b!160111 m!148917))

(assert (=> b!160112 m!148903))

(assert (=> b!160112 m!148903))

(assert (=> b!160112 m!148907))

(assert (=> b!160112 m!148907))

(assert (=> b!160112 m!148909))

(declare-fun m!148919 () Bool)

(assert (=> b!160112 m!148919))

(assert (=> b!159701 d!39203))

(declare-fun d!39205 () Bool)

(assert (=> d!39205 (= (inv!3558 (tag!661 (rule!990 (h!8144 tokens!465)))) (= (mod (str.len (value!18080 (tag!661 (rule!990 (h!8144 tokens!465))))) 2) 0))))

(assert (=> b!159700 d!39205))

(declare-fun d!39207 () Bool)

(declare-fun res!72640 () Bool)

(declare-fun e!96271 () Bool)

(assert (=> d!39207 (=> (not res!72640) (not e!96271))))

(assert (=> d!39207 (= res!72640 (semiInverseModEq!169 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465))))))))

(assert (=> d!39207 (= (inv!3561 (transformation!483 (rule!990 (h!8144 tokens!465)))) e!96271)))

(declare-fun b!160113 () Bool)

(assert (=> b!160113 (= e!96271 (equivClasses!152 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465))))))))

(assert (= (and d!39207 res!72640) b!160113))

(declare-fun m!148921 () Bool)

(assert (=> d!39207 m!148921))

(declare-fun m!148923 () Bool)

(assert (=> b!160113 m!148923))

(assert (=> b!159700 d!39207))

(declare-fun b!160114 () Bool)

(declare-fun e!96272 () Bool)

(assert (=> b!160114 (= e!96272 (inv!17 (value!18081 (h!8144 tokens!465))))))

(declare-fun b!160115 () Bool)

(declare-fun e!96274 () Bool)

(assert (=> b!160115 (= e!96274 (inv!16 (value!18081 (h!8144 tokens!465))))))

(declare-fun b!160116 () Bool)

(declare-fun e!96273 () Bool)

(assert (=> b!160116 (= e!96273 (inv!15 (value!18081 (h!8144 tokens!465))))))

(declare-fun b!160117 () Bool)

(assert (=> b!160117 (= e!96274 e!96272)))

(declare-fun c!32107 () Bool)

(assert (=> b!160117 (= c!32107 ((_ is IntegerValue!1516) (value!18081 (h!8144 tokens!465))))))

(declare-fun d!39209 () Bool)

(declare-fun c!32108 () Bool)

(assert (=> d!39209 (= c!32108 ((_ is IntegerValue!1515) (value!18081 (h!8144 tokens!465))))))

(assert (=> d!39209 (= (inv!21 (value!18081 (h!8144 tokens!465))) e!96274)))

(declare-fun b!160118 () Bool)

(declare-fun res!72641 () Bool)

(assert (=> b!160118 (=> res!72641 e!96273)))

(assert (=> b!160118 (= res!72641 (not ((_ is IntegerValue!1517) (value!18081 (h!8144 tokens!465)))))))

(assert (=> b!160118 (= e!96272 e!96273)))

(assert (= (and d!39209 c!32108) b!160115))

(assert (= (and d!39209 (not c!32108)) b!160117))

(assert (= (and b!160117 c!32107) b!160114))

(assert (= (and b!160117 (not c!32107)) b!160118))

(assert (= (and b!160118 (not res!72641)) b!160116))

(declare-fun m!148925 () Bool)

(assert (=> b!160114 m!148925))

(declare-fun m!148927 () Bool)

(assert (=> b!160115 m!148927))

(declare-fun m!148929 () Bool)

(assert (=> b!160116 m!148929))

(assert (=> b!159681 d!39209))

(declare-fun d!39211 () Bool)

(assert (=> d!39211 (= (inv!3558 (tag!661 (h!8145 rules!1920))) (= (mod (str.len (value!18080 (tag!661 (h!8145 rules!1920)))) 2) 0))))

(assert (=> b!159691 d!39211))

(declare-fun d!39213 () Bool)

(declare-fun res!72642 () Bool)

(declare-fun e!96275 () Bool)

(assert (=> d!39213 (=> (not res!72642) (not e!96275))))

(assert (=> d!39213 (= res!72642 (semiInverseModEq!169 (toChars!993 (transformation!483 (h!8145 rules!1920))) (toValue!1134 (transformation!483 (h!8145 rules!1920)))))))

(assert (=> d!39213 (= (inv!3561 (transformation!483 (h!8145 rules!1920))) e!96275)))

(declare-fun b!160119 () Bool)

(assert (=> b!160119 (= e!96275 (equivClasses!152 (toChars!993 (transformation!483 (h!8145 rules!1920))) (toValue!1134 (transformation!483 (h!8145 rules!1920)))))))

(assert (= (and d!39213 res!72642) b!160119))

(declare-fun m!148931 () Bool)

(assert (=> d!39213 m!148931))

(declare-fun m!148933 () Bool)

(assert (=> b!160119 m!148933))

(assert (=> b!159691 d!39213))

(declare-fun b!160124 () Bool)

(declare-fun e!96278 () Bool)

(declare-fun tp_is_empty!1635 () Bool)

(declare-fun tp!81462 () Bool)

(assert (=> b!160124 (= e!96278 (and tp_is_empty!1635 tp!81462))))

(assert (=> b!159685 (= tp!81384 e!96278)))

(assert (= (and b!159685 ((_ is Cons!2746) (originalCharacters!526 separatorToken!170))) b!160124))

(declare-fun b!160138 () Bool)

(declare-fun b_free!6005 () Bool)

(declare-fun b_next!6005 () Bool)

(assert (=> b!160138 (= b_free!6005 (not b_next!6005))))

(declare-fun tp!81475 () Bool)

(declare-fun b_and!9889 () Bool)

(assert (=> b!160138 (= tp!81475 b_and!9889)))

(declare-fun b_free!6007 () Bool)

(declare-fun b_next!6007 () Bool)

(assert (=> b!160138 (= b_free!6007 (not b_next!6007))))

(declare-fun t!25879 () Bool)

(declare-fun tb!5829 () Bool)

(assert (=> (and b!160138 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) t!25879) tb!5829))

(declare-fun result!8416 () Bool)

(assert (= result!8416 result!8368))

(assert (=> b!159723 t!25879))

(declare-fun t!25881 () Bool)

(declare-fun tb!5831 () Bool)

(assert (=> (and b!160138 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) t!25881) tb!5831))

(declare-fun result!8418 () Bool)

(assert (= result!8418 result!8406))

(assert (=> b!160050 t!25881))

(assert (=> d!39175 t!25879))

(assert (=> d!39185 t!25881))

(declare-fun tp!81477 () Bool)

(declare-fun b_and!9891 () Bool)

(assert (=> b!160138 (= tp!81477 (and (=> t!25879 result!8416) (=> t!25881 result!8418) b_and!9891))))

(declare-fun e!96291 () Bool)

(declare-fun e!96295 () Bool)

(declare-fun tp!81474 () Bool)

(declare-fun b!160137 () Bool)

(assert (=> b!160137 (= e!96295 (and tp!81474 (inv!3558 (tag!661 (rule!990 (h!8144 (t!25821 tokens!465))))) (inv!3561 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) e!96291))))

(declare-fun e!96294 () Bool)

(declare-fun tp!81476 () Bool)

(declare-fun b!160135 () Bool)

(declare-fun e!96296 () Bool)

(assert (=> b!160135 (= e!96294 (and (inv!3562 (h!8144 (t!25821 tokens!465))) e!96296 tp!81476))))

(declare-fun tp!81473 () Bool)

(declare-fun b!160136 () Bool)

(assert (=> b!160136 (= e!96296 (and (inv!21 (value!18081 (h!8144 (t!25821 tokens!465)))) e!96295 tp!81473))))

(assert (=> b!159695 (= tp!81389 e!96294)))

(assert (=> b!160138 (= e!96291 (and tp!81475 tp!81477))))

(assert (= b!160137 b!160138))

(assert (= b!160136 b!160137))

(assert (= b!160135 b!160136))

(assert (= (and b!159695 ((_ is Cons!2747) (t!25821 tokens!465))) b!160135))

(declare-fun m!148935 () Bool)

(assert (=> b!160137 m!148935))

(declare-fun m!148937 () Bool)

(assert (=> b!160137 m!148937))

(declare-fun m!148939 () Bool)

(assert (=> b!160135 m!148939))

(declare-fun m!148941 () Bool)

(assert (=> b!160136 m!148941))

(declare-fun b!160149 () Bool)

(declare-fun b_free!6009 () Bool)

(declare-fun b_next!6009 () Bool)

(assert (=> b!160149 (= b_free!6009 (not b_next!6009))))

(declare-fun tp!81489 () Bool)

(declare-fun b_and!9893 () Bool)

(assert (=> b!160149 (= tp!81489 b_and!9893)))

(declare-fun b_free!6011 () Bool)

(declare-fun b_next!6011 () Bool)

(assert (=> b!160149 (= b_free!6011 (not b_next!6011))))

(declare-fun tb!5833 () Bool)

(declare-fun t!25883 () Bool)

(assert (=> (and b!160149 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) t!25883) tb!5833))

(declare-fun result!8422 () Bool)

(assert (= result!8422 result!8368))

(assert (=> b!159723 t!25883))

(declare-fun t!25885 () Bool)

(declare-fun tb!5835 () Bool)

(assert (=> (and b!160149 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) t!25885) tb!5835))

(declare-fun result!8424 () Bool)

(assert (= result!8424 result!8406))

(assert (=> b!160050 t!25885))

(assert (=> d!39175 t!25883))

(assert (=> d!39185 t!25885))

(declare-fun b_and!9895 () Bool)

(declare-fun tp!81488 () Bool)

(assert (=> b!160149 (= tp!81488 (and (=> t!25883 result!8422) (=> t!25885 result!8424) b_and!9895))))

(declare-fun e!96308 () Bool)

(assert (=> b!160149 (= e!96308 (and tp!81489 tp!81488))))

(declare-fun e!96305 () Bool)

(declare-fun tp!81486 () Bool)

(declare-fun b!160148 () Bool)

(assert (=> b!160148 (= e!96305 (and tp!81486 (inv!3558 (tag!661 (h!8145 (t!25822 rules!1920)))) (inv!3561 (transformation!483 (h!8145 (t!25822 rules!1920)))) e!96308))))

(declare-fun b!160147 () Bool)

(declare-fun e!96307 () Bool)

(declare-fun tp!81487 () Bool)

(assert (=> b!160147 (= e!96307 (and e!96305 tp!81487))))

(assert (=> b!159696 (= tp!81395 e!96307)))

(assert (= b!160148 b!160149))

(assert (= b!160147 b!160148))

(assert (= (and b!159696 ((_ is Cons!2748) (t!25822 rules!1920))) b!160147))

(declare-fun m!148943 () Bool)

(assert (=> b!160148 m!148943))

(declare-fun m!148945 () Bool)

(assert (=> b!160148 m!148945))

(declare-fun e!96311 () Bool)

(assert (=> b!159699 (= tp!81383 e!96311)))

(declare-fun b!160160 () Bool)

(assert (=> b!160160 (= e!96311 tp_is_empty!1635)))

(declare-fun b!160163 () Bool)

(declare-fun tp!81500 () Bool)

(declare-fun tp!81504 () Bool)

(assert (=> b!160163 (= e!96311 (and tp!81500 tp!81504))))

(declare-fun b!160161 () Bool)

(declare-fun tp!81503 () Bool)

(declare-fun tp!81502 () Bool)

(assert (=> b!160161 (= e!96311 (and tp!81503 tp!81502))))

(declare-fun b!160162 () Bool)

(declare-fun tp!81501 () Bool)

(assert (=> b!160162 (= e!96311 tp!81501)))

(assert (= (and b!159699 ((_ is ElementMatch!707) (regex!483 (rule!990 separatorToken!170)))) b!160160))

(assert (= (and b!159699 ((_ is Concat!1213) (regex!483 (rule!990 separatorToken!170)))) b!160161))

(assert (= (and b!159699 ((_ is Star!707) (regex!483 (rule!990 separatorToken!170)))) b!160162))

(assert (= (and b!159699 ((_ is Union!707) (regex!483 (rule!990 separatorToken!170)))) b!160163))

(declare-fun e!96312 () Bool)

(assert (=> b!159700 (= tp!81388 e!96312)))

(declare-fun b!160164 () Bool)

(assert (=> b!160164 (= e!96312 tp_is_empty!1635)))

(declare-fun b!160167 () Bool)

(declare-fun tp!81505 () Bool)

(declare-fun tp!81509 () Bool)

(assert (=> b!160167 (= e!96312 (and tp!81505 tp!81509))))

(declare-fun b!160165 () Bool)

(declare-fun tp!81508 () Bool)

(declare-fun tp!81507 () Bool)

(assert (=> b!160165 (= e!96312 (and tp!81508 tp!81507))))

(declare-fun b!160166 () Bool)

(declare-fun tp!81506 () Bool)

(assert (=> b!160166 (= e!96312 tp!81506)))

(assert (= (and b!159700 ((_ is ElementMatch!707) (regex!483 (rule!990 (h!8144 tokens!465))))) b!160164))

(assert (= (and b!159700 ((_ is Concat!1213) (regex!483 (rule!990 (h!8144 tokens!465))))) b!160165))

(assert (= (and b!159700 ((_ is Star!707) (regex!483 (rule!990 (h!8144 tokens!465))))) b!160166))

(assert (= (and b!159700 ((_ is Union!707) (regex!483 (rule!990 (h!8144 tokens!465))))) b!160167))

(declare-fun b!160168 () Bool)

(declare-fun e!96313 () Bool)

(declare-fun tp!81510 () Bool)

(assert (=> b!160168 (= e!96313 (and tp_is_empty!1635 tp!81510))))

(assert (=> b!159681 (= tp!81392 e!96313)))

(assert (= (and b!159681 ((_ is Cons!2746) (originalCharacters!526 (h!8144 tokens!465)))) b!160168))

(declare-fun e!96314 () Bool)

(assert (=> b!159691 (= tp!81393 e!96314)))

(declare-fun b!160169 () Bool)

(assert (=> b!160169 (= e!96314 tp_is_empty!1635)))

(declare-fun b!160172 () Bool)

(declare-fun tp!81511 () Bool)

(declare-fun tp!81515 () Bool)

(assert (=> b!160172 (= e!96314 (and tp!81511 tp!81515))))

(declare-fun b!160170 () Bool)

(declare-fun tp!81514 () Bool)

(declare-fun tp!81513 () Bool)

(assert (=> b!160170 (= e!96314 (and tp!81514 tp!81513))))

(declare-fun b!160171 () Bool)

(declare-fun tp!81512 () Bool)

(assert (=> b!160171 (= e!96314 tp!81512)))

(assert (= (and b!159691 ((_ is ElementMatch!707) (regex!483 (h!8145 rules!1920)))) b!160169))

(assert (= (and b!159691 ((_ is Concat!1213) (regex!483 (h!8145 rules!1920)))) b!160170))

(assert (= (and b!159691 ((_ is Star!707) (regex!483 (h!8145 rules!1920)))) b!160171))

(assert (= (and b!159691 ((_ is Union!707) (regex!483 (h!8145 rules!1920)))) b!160172))

(declare-fun b_lambda!3301 () Bool)

(assert (= b_lambda!3297 (or (and b!159680 b_free!5991) (and b!159684 b_free!5995 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) (and b!160138 b_free!6007 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) (and b!159690 b_free!5987 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) (and b!160149 b_free!6011 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) b_lambda!3301)))

(declare-fun b_lambda!3303 () Bool)

(assert (= b_lambda!3295 (or (and b!159690 b_free!5987) (and b!160138 b_free!6007 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) (and b!159680 b_free!5991 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) (and b!160149 b_free!6011 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) (and b!159684 b_free!5995 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) b_lambda!3303)))

(declare-fun b_lambda!3305 () Bool)

(assert (= b_lambda!3271 (or (and b!159690 b_free!5987) (and b!160138 b_free!6007 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) (and b!159680 b_free!5991 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) (and b!160149 b_free!6011 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) (and b!159684 b_free!5995 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 separatorToken!170))))) b_lambda!3305)))

(declare-fun b_lambda!3307 () Bool)

(assert (= b_lambda!3293 (or (and b!159680 b_free!5991) (and b!159684 b_free!5995 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) (and b!160138 b_free!6007 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) (and b!159690 b_free!5987 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) (and b!160149 b_free!6011 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))))) b_lambda!3307)))

(declare-fun b_lambda!3309 () Bool)

(assert (= b_lambda!3299 (or b!159687 b_lambda!3309)))

(declare-fun bs!15032 () Bool)

(declare-fun d!39215 () Bool)

(assert (= bs!15032 (and d!39215 b!159687)))

(assert (=> bs!15032 (= (dynLambda!991 lambda!4322 (h!8144 tokens!465)) (not (isSeparator!483 (rule!990 (h!8144 tokens!465)))))))

(assert (=> b!160096 d!39215))

(check-sat (not b!160161) (not b!160147) (not d!39095) b_and!9895 b_and!9821 b_and!9893 (not b!159884) (not bm!6764) (not b_next!6009) (not d!39169) (not bm!6765) (not d!39089) (not b_lambda!3309) (not b!160119) (not d!39177) b_and!9887 (not b!160033) (not b!159729) (not b_next!5989) tp_is_empty!1635 (not bm!6740) (not b!160053) (not b!159894) (not b!160170) (not bm!6737) (not b!160034) (not bm!6768) (not b!160112) (not bm!6741) (not b!160054) (not d!39171) (not b_next!5993) (not b!160066) (not b!160079) b_and!9885 (not b_lambda!3303) (not b!160025) (not b!160081) (not b!159805) (not d!39091) (not b!160162) (not bm!6769) (not d!39201) (not bm!6766) (not b_next!5991) b_and!9829 (not b!160097) (not b!160100) b_and!9883 (not tb!5823) (not d!39189) (not b_next!6007) (not b!160137) (not d!39185) (not b!160115) (not b!160113) (not d!39173) (not d!39197) (not b!160078) (not b_lambda!3301) (not b!160165) (not b!160047) (not b!159893) (not b!160051) (not b!160168) (not b!160046) (not d!39207) (not d!39183) (not bm!6763) (not b!160172) (not b!160075) (not b!160018) (not d!39179) (not b!160124) (not b!160022) (not b!159883) (not b!160116) (not b_next!5995) (not d!39175) (not b!160067) (not b!160135) (not b!160089) (not d!39117) (not b!160045) (not b!160071) (not b!160136) (not d!39195) b_and!9891 (not b!160148) (not b!160026) (not b!160103) (not d!39187) (not d!39203) (not b!160163) (not b!160074) (not d!39163) (not b!159891) (not bm!6770) (not b_lambda!3305) (not d!39181) (not b!160052) (not d!39165) (not d!39213) (not b_lambda!3307) (not d!39167) (not b!160070) (not b!160114) (not b!159723) (not b!160166) (not b!160167) (not b!160110) b_and!9889 (not d!39093) (not b!160050) (not b!160171) (not b_next!5985) (not bm!6771) (not b!159724) (not b!160087) (not b_next!6005) (not b!159814) (not b!159889) (not b!160024) (not tb!5797) (not d!39119) (not b!160111) b_and!9825 (not b_next!6011) (not b!159888) (not b_next!5987) (not b!160088) (not b!160085))
(check-sat (not b_next!5993) b_and!9885 (not b_next!5991) (not b_next!6007) (not b_next!5995) b_and!9891 b_and!9889 (not b_next!5985) (not b_next!6005) b_and!9895 b_and!9821 b_and!9893 (not b_next!6009) b_and!9887 (not b_next!5989) b_and!9829 b_and!9883 b_and!9825 (not b_next!6011) (not b_next!5987))
(get-model)

(declare-fun d!39217 () Bool)

(declare-fun res!72651 () Bool)

(declare-fun e!96315 () Bool)

(assert (=> d!39217 (=> res!72651 e!96315)))

(assert (=> d!39217 (= res!72651 ((_ is Nil!2747) (t!25821 tokens!465)))))

(assert (=> d!39217 (= (forall!500 (t!25821 tokens!465) lambda!4322) e!96315)))

(declare-fun b!160173 () Bool)

(declare-fun e!96316 () Bool)

(assert (=> b!160173 (= e!96315 e!96316)))

(declare-fun res!72652 () Bool)

(assert (=> b!160173 (=> (not res!72652) (not e!96316))))

(assert (=> b!160173 (= res!72652 (dynLambda!991 lambda!4322 (h!8144 (t!25821 tokens!465))))))

(declare-fun b!160174 () Bool)

(assert (=> b!160174 (= e!96316 (forall!500 (t!25821 (t!25821 tokens!465)) lambda!4322))))

(assert (= (and d!39217 (not res!72651)) b!160173))

(assert (= (and b!160173 res!72652) b!160174))

(declare-fun b_lambda!3311 () Bool)

(assert (=> (not b_lambda!3311) (not b!160173)))

(declare-fun m!148947 () Bool)

(assert (=> b!160173 m!148947))

(declare-fun m!148949 () Bool)

(assert (=> b!160174 m!148949))

(assert (=> b!160097 d!39217))

(declare-fun b!160176 () Bool)

(declare-fun e!96318 () List!2756)

(assert (=> b!160176 (= e!96318 (Cons!2746 (h!8143 call!6771) (++!608 (t!25820 call!6771) (ite c!32089 lt!48094 call!6768))))))

(declare-fun e!96317 () Bool)

(declare-fun b!160178 () Bool)

(declare-fun lt!48129 () List!2756)

(assert (=> b!160178 (= e!96317 (or (not (= (ite c!32089 lt!48094 call!6768) Nil!2746)) (= lt!48129 call!6771)))))

(declare-fun b!160175 () Bool)

(assert (=> b!160175 (= e!96318 (ite c!32089 lt!48094 call!6768))))

(declare-fun b!160177 () Bool)

(declare-fun res!72654 () Bool)

(assert (=> b!160177 (=> (not res!72654) (not e!96317))))

(assert (=> b!160177 (= res!72654 (= (size!2323 lt!48129) (+ (size!2323 call!6771) (size!2323 (ite c!32089 lt!48094 call!6768)))))))

(declare-fun d!39219 () Bool)

(assert (=> d!39219 e!96317))

(declare-fun res!72653 () Bool)

(assert (=> d!39219 (=> (not res!72653) (not e!96317))))

(assert (=> d!39219 (= res!72653 (= (content!383 lt!48129) ((_ map or) (content!383 call!6771) (content!383 (ite c!32089 lt!48094 call!6768)))))))

(assert (=> d!39219 (= lt!48129 e!96318)))

(declare-fun c!32109 () Bool)

(assert (=> d!39219 (= c!32109 ((_ is Nil!2746) call!6771))))

(assert (=> d!39219 (= (++!608 call!6771 (ite c!32089 lt!48094 call!6768)) lt!48129)))

(assert (= (and d!39219 c!32109) b!160175))

(assert (= (and d!39219 (not c!32109)) b!160176))

(assert (= (and d!39219 res!72653) b!160177))

(assert (= (and b!160177 res!72654) b!160178))

(declare-fun m!148951 () Bool)

(assert (=> b!160176 m!148951))

(declare-fun m!148953 () Bool)

(assert (=> b!160177 m!148953))

(declare-fun m!148955 () Bool)

(assert (=> b!160177 m!148955))

(declare-fun m!148957 () Bool)

(assert (=> b!160177 m!148957))

(declare-fun m!148959 () Bool)

(assert (=> d!39219 m!148959))

(declare-fun m!148961 () Bool)

(assert (=> d!39219 m!148961))

(declare-fun m!148963 () Bool)

(assert (=> d!39219 m!148963))

(assert (=> bm!6765 d!39219))

(declare-fun d!39221 () Bool)

(declare-fun lt!48130 () BalanceConc!1584)

(assert (=> d!39221 (= (list!985 lt!48130) (originalCharacters!526 (apply!381 lt!47931 0)))))

(assert (=> d!39221 (= lt!48130 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0)))) (value!18081 (apply!381 lt!47931 0))))))

(assert (=> d!39221 (= (charsOf!138 (apply!381 lt!47931 0)) lt!48130)))

(declare-fun b_lambda!3313 () Bool)

(assert (=> (not b_lambda!3313) (not d!39221)))

(declare-fun t!25888 () Bool)

(declare-fun tb!5837 () Bool)

(assert (=> (and b!159684 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0))))) t!25888) tb!5837))

(declare-fun b!160179 () Bool)

(declare-fun e!96319 () Bool)

(declare-fun tp!81516 () Bool)

(assert (=> b!160179 (= e!96319 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0)))) (value!18081 (apply!381 lt!47931 0))))) tp!81516))))

(declare-fun result!8428 () Bool)

(assert (=> tb!5837 (= result!8428 (and (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0)))) (value!18081 (apply!381 lt!47931 0)))) e!96319))))

(assert (= tb!5837 b!160179))

(declare-fun m!148965 () Bool)

(assert (=> b!160179 m!148965))

(declare-fun m!148967 () Bool)

(assert (=> tb!5837 m!148967))

(assert (=> d!39221 t!25888))

(declare-fun b_and!9897 () Bool)

(assert (= b_and!9887 (and (=> t!25888 result!8428) b_and!9897)))

(declare-fun t!25890 () Bool)

(declare-fun tb!5839 () Bool)

(assert (=> (and b!159690 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0))))) t!25890) tb!5839))

(declare-fun result!8430 () Bool)

(assert (= result!8430 result!8428))

(assert (=> d!39221 t!25890))

(declare-fun b_and!9899 () Bool)

(assert (= b_and!9883 (and (=> t!25890 result!8430) b_and!9899)))

(declare-fun t!25892 () Bool)

(declare-fun tb!5841 () Bool)

(assert (=> (and b!160138 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0))))) t!25892) tb!5841))

(declare-fun result!8432 () Bool)

(assert (= result!8432 result!8428))

(assert (=> d!39221 t!25892))

(declare-fun b_and!9901 () Bool)

(assert (= b_and!9891 (and (=> t!25892 result!8432) b_and!9901)))

(declare-fun t!25894 () Bool)

(declare-fun tb!5843 () Bool)

(assert (=> (and b!160149 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0))))) t!25894) tb!5843))

(declare-fun result!8434 () Bool)

(assert (= result!8434 result!8428))

(assert (=> d!39221 t!25894))

(declare-fun b_and!9903 () Bool)

(assert (= b_and!9895 (and (=> t!25894 result!8434) b_and!9903)))

(declare-fun tb!5845 () Bool)

(declare-fun t!25896 () Bool)

(assert (=> (and b!159680 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0))))) t!25896) tb!5845))

(declare-fun result!8436 () Bool)

(assert (= result!8436 result!8428))

(assert (=> d!39221 t!25896))

(declare-fun b_and!9905 () Bool)

(assert (= b_and!9885 (and (=> t!25896 result!8436) b_and!9905)))

(declare-fun m!148969 () Bool)

(assert (=> d!39221 m!148969))

(declare-fun m!148971 () Bool)

(assert (=> d!39221 m!148971))

(assert (=> b!159883 d!39221))

(declare-fun d!39223 () Bool)

(assert (=> d!39223 (= (head!592 (drop!131 lt!48038 0)) (h!8144 (drop!131 lt!48038 0)))))

(assert (=> b!159883 d!39223))

(declare-fun d!39225 () Bool)

(declare-fun lt!48133 () Token!710)

(declare-fun contains!439 (List!2757 Token!710) Bool)

(assert (=> d!39225 (contains!439 lt!48038 lt!48133)))

(declare-fun e!96324 () Token!710)

(assert (=> d!39225 (= lt!48133 e!96324)))

(declare-fun c!32112 () Bool)

(assert (=> d!39225 (= c!32112 (= 0 0))))

(declare-fun e!96325 () Bool)

(assert (=> d!39225 e!96325))

(declare-fun res!72657 () Bool)

(assert (=> d!39225 (=> (not res!72657) (not e!96325))))

(assert (=> d!39225 (= res!72657 (<= 0 0))))

(assert (=> d!39225 (= (apply!382 lt!48038 0) lt!48133)))

(declare-fun b!160186 () Bool)

(assert (=> b!160186 (= e!96325 (< 0 (size!2324 lt!48038)))))

(declare-fun b!160187 () Bool)

(assert (=> b!160187 (= e!96324 (head!592 lt!48038))))

(declare-fun b!160188 () Bool)

(assert (=> b!160188 (= e!96324 (apply!382 (tail!332 lt!48038) (- 0 1)))))

(assert (= (and d!39225 res!72657) b!160186))

(assert (= (and d!39225 c!32112) b!160187))

(assert (= (and d!39225 (not c!32112)) b!160188))

(declare-fun m!148973 () Bool)

(assert (=> d!39225 m!148973))

(declare-fun m!148975 () Bool)

(assert (=> b!160186 m!148975))

(declare-fun m!148977 () Bool)

(assert (=> b!160187 m!148977))

(declare-fun m!148979 () Bool)

(assert (=> b!160188 m!148979))

(assert (=> b!160188 m!148979))

(declare-fun m!148981 () Bool)

(assert (=> b!160188 m!148981))

(assert (=> b!159883 d!39225))

(declare-fun e!96354 () Bool)

(declare-fun b!160229 () Bool)

(declare-fun lt!48160 () Option!270)

(declare-fun get!746 (Option!270) tuple2!2652)

(declare-fun get!747 (Option!271) tuple2!2654)

(assert (=> b!160229 (= e!96354 (= (list!985 (_2!1542 (get!746 lt!48160))) (_2!1543 (get!747 (maxPrefix!119 thiss!17480 rules!1920 (list!985 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))))))

(declare-fun b!160230 () Bool)

(declare-fun e!96351 () Bool)

(declare-fun maxPrefixZipper!30 (LexerInterface!369 List!2758 List!2756) Option!271)

(assert (=> b!160230 (= e!96351 (= (list!985 (_2!1542 (get!746 lt!48160))) (_2!1543 (get!747 (maxPrefixZipper!30 thiss!17480 rules!1920 (list!985 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))))))

(declare-fun b!160231 () Bool)

(declare-fun e!96352 () Bool)

(assert (=> b!160231 (= e!96352 e!96351)))

(declare-fun res!72690 () Bool)

(assert (=> b!160231 (=> (not res!72690) (not e!96351))))

(assert (=> b!160231 (= res!72690 (= (_1!1542 (get!746 lt!48160)) (_1!1543 (get!747 (maxPrefixZipper!30 thiss!17480 rules!1920 (list!985 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))))))

(declare-fun b!160232 () Bool)

(declare-fun e!96356 () Bool)

(declare-fun e!96353 () Bool)

(assert (=> b!160232 (= e!96356 e!96353)))

(declare-fun res!72693 () Bool)

(assert (=> b!160232 (=> res!72693 e!96353)))

(declare-fun isDefined!121 (Option!270) Bool)

(assert (=> b!160232 (= res!72693 (not (isDefined!121 lt!48160)))))

(declare-fun b!160234 () Bool)

(declare-fun res!72694 () Bool)

(assert (=> b!160234 (=> (not res!72694) (not e!96356))))

(assert (=> b!160234 (= res!72694 e!96352)))

(declare-fun res!72692 () Bool)

(assert (=> b!160234 (=> res!72692 e!96352)))

(assert (=> b!160234 (= res!72692 (not (isDefined!121 lt!48160)))))

(declare-fun b!160235 () Bool)

(assert (=> b!160235 (= e!96353 e!96354)))

(declare-fun res!72689 () Bool)

(assert (=> b!160235 (=> (not res!72689) (not e!96354))))

(assert (=> b!160235 (= res!72689 (= (_1!1542 (get!746 lt!48160)) (_1!1543 (get!747 (maxPrefix!119 thiss!17480 rules!1920 (list!985 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))))))

(declare-fun b!160236 () Bool)

(declare-fun e!96355 () Option!270)

(declare-fun call!6779 () Option!270)

(assert (=> b!160236 (= e!96355 call!6779)))

(declare-fun bm!6774 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!31 (LexerInterface!369 Rule!766 BalanceConc!1584) Option!270)

(assert (=> bm!6774 (= call!6779 (maxPrefixOneRuleZipperSequence!31 thiss!17480 (h!8145 rules!1920) (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))

(declare-fun d!39227 () Bool)

(assert (=> d!39227 e!96356))

(declare-fun res!72691 () Bool)

(assert (=> d!39227 (=> (not res!72691) (not e!96356))))

(declare-fun isDefined!122 (Option!271) Bool)

(assert (=> d!39227 (= res!72691 (= (isDefined!121 lt!48160) (isDefined!122 (maxPrefixZipper!30 thiss!17480 rules!1920 (list!985 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048))))))))

(assert (=> d!39227 (= lt!48160 e!96355)))

(declare-fun c!32120 () Bool)

(assert (=> d!39227 (= c!32120 (and ((_ is Cons!2748) rules!1920) ((_ is Nil!2748) (t!25822 rules!1920))))))

(declare-fun lt!48156 () Unit!2232)

(declare-fun lt!48159 () Unit!2232)

(assert (=> d!39227 (= lt!48156 lt!48159)))

(declare-fun lt!48161 () List!2756)

(declare-fun lt!48162 () List!2756)

(declare-fun isPrefix!218 (List!2756 List!2756) Bool)

(assert (=> d!39227 (isPrefix!218 lt!48161 lt!48162)))

(declare-fun lemmaIsPrefixRefl!126 (List!2756 List!2756) Unit!2232)

(assert (=> d!39227 (= lt!48159 (lemmaIsPrefixRefl!126 lt!48161 lt!48162))))

(assert (=> d!39227 (= lt!48162 (list!985 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))

(assert (=> d!39227 (= lt!48161 (list!985 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))

(declare-fun rulesValidInductive!103 (LexerInterface!369 List!2758) Bool)

(assert (=> d!39227 (rulesValidInductive!103 thiss!17480 rules!1920)))

(assert (=> d!39227 (= (maxPrefixZipperSequence!78 thiss!17480 rules!1920 (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)) lt!48160)))

(declare-fun b!160233 () Bool)

(declare-fun lt!48158 () Option!270)

(declare-fun lt!48157 () Option!270)

(assert (=> b!160233 (= e!96355 (ite (and ((_ is None!269) lt!48158) ((_ is None!269) lt!48157)) None!269 (ite ((_ is None!269) lt!48157) lt!48158 (ite ((_ is None!269) lt!48158) lt!48157 (ite (>= (size!2318 (_1!1542 (v!13674 lt!48158))) (size!2318 (_1!1542 (v!13674 lt!48157)))) lt!48158 lt!48157)))))))

(assert (=> b!160233 (= lt!48158 call!6779)))

(assert (=> b!160233 (= lt!48157 (maxPrefixZipperSequence!78 thiss!17480 (t!25822 rules!1920) (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048)))))

(assert (= (and d!39227 c!32120) b!160236))

(assert (= (and d!39227 (not c!32120)) b!160233))

(assert (= (or b!160236 b!160233) bm!6774))

(assert (= (and d!39227 res!72691) b!160234))

(assert (= (and b!160234 (not res!72692)) b!160231))

(assert (= (and b!160231 res!72690) b!160230))

(assert (= (and b!160234 res!72694) b!160232))

(assert (= (and b!160232 (not res!72693)) b!160235))

(assert (= (and b!160235 res!72689) b!160229))

(declare-fun m!149035 () Bool)

(assert (=> b!160235 m!149035))

(assert (=> b!160235 m!148579))

(declare-fun m!149037 () Bool)

(assert (=> b!160235 m!149037))

(assert (=> b!160235 m!149037))

(declare-fun m!149041 () Bool)

(assert (=> b!160235 m!149041))

(assert (=> b!160235 m!149041))

(declare-fun m!149043 () Bool)

(assert (=> b!160235 m!149043))

(declare-fun m!149045 () Bool)

(assert (=> b!160229 m!149045))

(assert (=> b!160229 m!149035))

(assert (=> b!160229 m!149041))

(assert (=> b!160229 m!149043))

(assert (=> b!160229 m!148579))

(assert (=> b!160229 m!149037))

(assert (=> b!160229 m!149037))

(assert (=> b!160229 m!149041))

(assert (=> b!160230 m!149045))

(assert (=> b!160230 m!149035))

(assert (=> b!160230 m!148579))

(assert (=> b!160230 m!149037))

(assert (=> b!160230 m!149037))

(declare-fun m!149047 () Bool)

(assert (=> b!160230 m!149047))

(assert (=> b!160230 m!149047))

(declare-fun m!149049 () Bool)

(assert (=> b!160230 m!149049))

(assert (=> d!39227 m!149047))

(declare-fun m!149051 () Bool)

(assert (=> d!39227 m!149051))

(assert (=> d!39227 m!148579))

(assert (=> d!39227 m!149037))

(declare-fun m!149053 () Bool)

(assert (=> d!39227 m!149053))

(assert (=> d!39227 m!149037))

(assert (=> d!39227 m!149047))

(declare-fun m!149055 () Bool)

(assert (=> d!39227 m!149055))

(declare-fun m!149057 () Bool)

(assert (=> d!39227 m!149057))

(declare-fun m!149059 () Bool)

(assert (=> d!39227 m!149059))

(assert (=> b!160231 m!149035))

(assert (=> b!160231 m!148579))

(assert (=> b!160231 m!149037))

(assert (=> b!160231 m!149037))

(assert (=> b!160231 m!149047))

(assert (=> b!160231 m!149047))

(assert (=> b!160231 m!149049))

(assert (=> b!160232 m!149057))

(assert (=> bm!6774 m!148579))

(declare-fun m!149061 () Bool)

(assert (=> bm!6774 m!149061))

(assert (=> b!160233 m!148579))

(declare-fun m!149063 () Bool)

(assert (=> b!160233 m!149063))

(assert (=> b!160234 m!149057))

(assert (=> b!159883 d!39227))

(declare-fun d!39249 () Bool)

(assert (=> d!39249 (= (head!592 (drop!131 lt!48038 0)) (apply!382 lt!48038 0))))

(declare-fun lt!48170 () Unit!2232)

(declare-fun choose!1787 (List!2757 Int) Unit!2232)

(assert (=> d!39249 (= lt!48170 (choose!1787 lt!48038 0))))

(declare-fun e!96364 () Bool)

(assert (=> d!39249 e!96364))

(declare-fun res!72701 () Bool)

(assert (=> d!39249 (=> (not res!72701) (not e!96364))))

(assert (=> d!39249 (= res!72701 (>= 0 0))))

(assert (=> d!39249 (= (lemmaDropApply!118 lt!48038 0) lt!48170)))

(declare-fun b!160245 () Bool)

(assert (=> b!160245 (= e!96364 (< 0 (size!2324 lt!48038)))))

(assert (= (and d!39249 res!72701) b!160245))

(assert (=> d!39249 m!148573))

(assert (=> d!39249 m!148573))

(assert (=> d!39249 m!148575))

(assert (=> d!39249 m!148567))

(declare-fun m!149071 () Bool)

(assert (=> d!39249 m!149071))

(assert (=> b!160245 m!148975))

(assert (=> b!159883 d!39249))

(declare-fun d!39253 () Bool)

(assert (=> d!39253 (= (tail!332 (drop!131 lt!48049 0)) (t!25821 (drop!131 lt!48049 0)))))

(assert (=> b!159883 d!39253))

(declare-fun b!160266 () Bool)

(declare-fun e!96378 () Int)

(declare-fun call!6782 () Int)

(assert (=> b!160266 (= e!96378 (- call!6782 (+ 0 1)))))

(declare-fun b!160267 () Bool)

(declare-fun e!96377 () List!2757)

(declare-fun e!96376 () List!2757)

(assert (=> b!160267 (= e!96377 e!96376)))

(declare-fun c!32130 () Bool)

(assert (=> b!160267 (= c!32130 (<= (+ 0 1) 0))))

(declare-fun bm!6777 () Bool)

(assert (=> bm!6777 (= call!6782 (size!2324 lt!48049))))

(declare-fun b!160269 () Bool)

(assert (=> b!160269 (= e!96376 (drop!131 (t!25821 lt!48049) (- (+ 0 1) 1)))))

(declare-fun b!160270 () Bool)

(assert (=> b!160270 (= e!96376 lt!48049)))

(declare-fun b!160271 () Bool)

(declare-fun e!96379 () Int)

(assert (=> b!160271 (= e!96379 e!96378)))

(declare-fun c!32133 () Bool)

(assert (=> b!160271 (= c!32133 (>= (+ 0 1) call!6782))))

(declare-fun b!160272 () Bool)

(assert (=> b!160272 (= e!96379 call!6782)))

(declare-fun b!160273 () Bool)

(assert (=> b!160273 (= e!96378 0)))

(declare-fun b!160274 () Bool)

(assert (=> b!160274 (= e!96377 Nil!2747)))

(declare-fun b!160268 () Bool)

(declare-fun e!96375 () Bool)

(declare-fun lt!48174 () List!2757)

(assert (=> b!160268 (= e!96375 (= (size!2324 lt!48174) e!96379))))

(declare-fun c!32132 () Bool)

(assert (=> b!160268 (= c!32132 (<= (+ 0 1) 0))))

(declare-fun d!39257 () Bool)

(assert (=> d!39257 e!96375))

(declare-fun res!72704 () Bool)

(assert (=> d!39257 (=> (not res!72704) (not e!96375))))

(declare-fun content!384 (List!2757) (InoxSet Token!710))

(assert (=> d!39257 (= res!72704 (= ((_ map implies) (content!384 lt!48174) (content!384 lt!48049)) ((as const (InoxSet Token!710)) true)))))

(assert (=> d!39257 (= lt!48174 e!96377)))

(declare-fun c!32131 () Bool)

(assert (=> d!39257 (= c!32131 ((_ is Nil!2747) lt!48049))))

(assert (=> d!39257 (= (drop!131 lt!48049 (+ 0 1)) lt!48174)))

(assert (= (and d!39257 c!32131) b!160274))

(assert (= (and d!39257 (not c!32131)) b!160267))

(assert (= (and b!160267 c!32130) b!160270))

(assert (= (and b!160267 (not c!32130)) b!160269))

(assert (= (and d!39257 res!72704) b!160268))

(assert (= (and b!160268 c!32132) b!160272))

(assert (= (and b!160268 (not c!32132)) b!160271))

(assert (= (and b!160271 c!32133) b!160273))

(assert (= (and b!160271 (not c!32133)) b!160266))

(assert (= (or b!160272 b!160271 b!160266) bm!6777))

(declare-fun m!149079 () Bool)

(assert (=> bm!6777 m!149079))

(declare-fun m!149081 () Bool)

(assert (=> b!160269 m!149081))

(declare-fun m!149083 () Bool)

(assert (=> b!160268 m!149083))

(declare-fun m!149085 () Bool)

(assert (=> d!39257 m!149085))

(declare-fun m!149087 () Bool)

(assert (=> d!39257 m!149087))

(assert (=> b!159883 d!39257))

(declare-fun d!39261 () Bool)

(assert (=> d!39261 (= (tail!332 (drop!131 lt!48049 0)) (drop!131 lt!48049 (+ 0 1)))))

(declare-fun lt!48177 () Unit!2232)

(declare-fun choose!1788 (List!2757 Int) Unit!2232)

(assert (=> d!39261 (= lt!48177 (choose!1788 lt!48049 0))))

(declare-fun e!96382 () Bool)

(assert (=> d!39261 e!96382))

(declare-fun res!72707 () Bool)

(assert (=> d!39261 (=> (not res!72707) (not e!96382))))

(assert (=> d!39261 (= res!72707 (>= 0 0))))

(assert (=> d!39261 (= (lemmaDropTail!110 lt!48049 0) lt!48177)))

(declare-fun b!160279 () Bool)

(assert (=> b!160279 (= e!96382 (< 0 (size!2324 lt!48049)))))

(assert (= (and d!39261 res!72707) b!160279))

(assert (=> d!39261 m!148569))

(assert (=> d!39261 m!148569))

(assert (=> d!39261 m!148571))

(assert (=> d!39261 m!148591))

(declare-fun m!149091 () Bool)

(assert (=> d!39261 m!149091))

(assert (=> b!160279 m!149079))

(assert (=> b!159883 d!39261))

(declare-fun b!160280 () Bool)

(declare-fun e!96386 () Int)

(declare-fun call!6783 () Int)

(assert (=> b!160280 (= e!96386 (- call!6783 0))))

(declare-fun b!160281 () Bool)

(declare-fun e!96385 () List!2757)

(declare-fun e!96384 () List!2757)

(assert (=> b!160281 (= e!96385 e!96384)))

(declare-fun c!32134 () Bool)

(assert (=> b!160281 (= c!32134 (<= 0 0))))

(declare-fun bm!6778 () Bool)

(assert (=> bm!6778 (= call!6783 (size!2324 lt!48038))))

(declare-fun b!160283 () Bool)

(assert (=> b!160283 (= e!96384 (drop!131 (t!25821 lt!48038) (- 0 1)))))

(declare-fun b!160284 () Bool)

(assert (=> b!160284 (= e!96384 lt!48038)))

(declare-fun b!160285 () Bool)

(declare-fun e!96387 () Int)

(assert (=> b!160285 (= e!96387 e!96386)))

(declare-fun c!32137 () Bool)

(assert (=> b!160285 (= c!32137 (>= 0 call!6783))))

(declare-fun b!160286 () Bool)

(assert (=> b!160286 (= e!96387 call!6783)))

(declare-fun b!160287 () Bool)

(assert (=> b!160287 (= e!96386 0)))

(declare-fun b!160288 () Bool)

(assert (=> b!160288 (= e!96385 Nil!2747)))

(declare-fun b!160282 () Bool)

(declare-fun e!96383 () Bool)

(declare-fun lt!48178 () List!2757)

(assert (=> b!160282 (= e!96383 (= (size!2324 lt!48178) e!96387))))

(declare-fun c!32136 () Bool)

(assert (=> b!160282 (= c!32136 (<= 0 0))))

(declare-fun d!39265 () Bool)

(assert (=> d!39265 e!96383))

(declare-fun res!72708 () Bool)

(assert (=> d!39265 (=> (not res!72708) (not e!96383))))

(assert (=> d!39265 (= res!72708 (= ((_ map implies) (content!384 lt!48178) (content!384 lt!48038)) ((as const (InoxSet Token!710)) true)))))

(assert (=> d!39265 (= lt!48178 e!96385)))

(declare-fun c!32135 () Bool)

(assert (=> d!39265 (= c!32135 ((_ is Nil!2747) lt!48038))))

(assert (=> d!39265 (= (drop!131 lt!48038 0) lt!48178)))

(assert (= (and d!39265 c!32135) b!160288))

(assert (= (and d!39265 (not c!32135)) b!160281))

(assert (= (and b!160281 c!32134) b!160284))

(assert (= (and b!160281 (not c!32134)) b!160283))

(assert (= (and d!39265 res!72708) b!160282))

(assert (= (and b!160282 c!32136) b!160286))

(assert (= (and b!160282 (not c!32136)) b!160285))

(assert (= (and b!160285 c!32137) b!160287))

(assert (= (and b!160285 (not c!32137)) b!160280))

(assert (= (or b!160286 b!160285 b!160280) bm!6778))

(assert (=> bm!6778 m!148975))

(declare-fun m!149093 () Bool)

(assert (=> b!160283 m!149093))

(declare-fun m!149095 () Bool)

(assert (=> b!160282 m!149095))

(declare-fun m!149097 () Bool)

(assert (=> d!39265 m!149097))

(declare-fun m!149099 () Bool)

(assert (=> d!39265 m!149099))

(assert (=> b!159883 d!39265))

(declare-fun d!39267 () Bool)

(assert (=> d!39267 (dynLambda!991 lambda!4345 (apply!381 lt!47931 0))))

(declare-fun lt!48181 () Unit!2232)

(declare-fun choose!1789 (List!2757 Int Token!710) Unit!2232)

(assert (=> d!39267 (= lt!48181 (choose!1789 (list!989 lt!47931) lambda!4345 (apply!381 lt!47931 0)))))

(declare-fun e!96396 () Bool)

(assert (=> d!39267 e!96396))

(declare-fun res!72715 () Bool)

(assert (=> d!39267 (=> (not res!72715) (not e!96396))))

(assert (=> d!39267 (= res!72715 (forall!500 (list!989 lt!47931) lambda!4345))))

(assert (=> d!39267 (= (forallContained!62 (list!989 lt!47931) lambda!4345 (apply!381 lt!47931 0)) lt!48181)))

(declare-fun b!160299 () Bool)

(assert (=> b!160299 (= e!96396 (contains!439 (list!989 lt!47931) (apply!381 lt!47931 0)))))

(assert (= (and d!39267 res!72715) b!160299))

(declare-fun b_lambda!3321 () Bool)

(assert (=> (not b_lambda!3321) (not d!39267)))

(assert (=> d!39267 m!148561))

(declare-fun m!149101 () Bool)

(assert (=> d!39267 m!149101))

(assert (=> d!39267 m!148577))

(assert (=> d!39267 m!148561))

(declare-fun m!149103 () Bool)

(assert (=> d!39267 m!149103))

(assert (=> d!39267 m!148577))

(declare-fun m!149105 () Bool)

(assert (=> d!39267 m!149105))

(assert (=> b!160299 m!148577))

(assert (=> b!160299 m!148561))

(declare-fun m!149107 () Bool)

(assert (=> b!160299 m!149107))

(assert (=> b!159883 d!39267))

(declare-fun d!39269 () Bool)

(declare-fun list!990 (Conc!789) List!2757)

(assert (=> d!39269 (= (list!989 lt!47931) (list!990 (c!32023 lt!47931)))))

(declare-fun bs!15038 () Bool)

(assert (= bs!15038 d!39269))

(declare-fun m!149109 () Bool)

(assert (=> bs!15038 m!149109))

(assert (=> b!159883 d!39269))

(declare-fun b!160300 () Bool)

(declare-fun e!96400 () Int)

(declare-fun call!6786 () Int)

(assert (=> b!160300 (= e!96400 (- call!6786 0))))

(declare-fun b!160301 () Bool)

(declare-fun e!96399 () List!2757)

(declare-fun e!96398 () List!2757)

(assert (=> b!160301 (= e!96399 e!96398)))

(declare-fun c!32140 () Bool)

(assert (=> b!160301 (= c!32140 (<= 0 0))))

(declare-fun bm!6781 () Bool)

(assert (=> bm!6781 (= call!6786 (size!2324 lt!48049))))

(declare-fun b!160303 () Bool)

(assert (=> b!160303 (= e!96398 (drop!131 (t!25821 lt!48049) (- 0 1)))))

(declare-fun b!160304 () Bool)

(assert (=> b!160304 (= e!96398 lt!48049)))

(declare-fun b!160305 () Bool)

(declare-fun e!96401 () Int)

(assert (=> b!160305 (= e!96401 e!96400)))

(declare-fun c!32143 () Bool)

(assert (=> b!160305 (= c!32143 (>= 0 call!6786))))

(declare-fun b!160306 () Bool)

(assert (=> b!160306 (= e!96401 call!6786)))

(declare-fun b!160307 () Bool)

(assert (=> b!160307 (= e!96400 0)))

(declare-fun b!160308 () Bool)

(assert (=> b!160308 (= e!96399 Nil!2747)))

(declare-fun b!160302 () Bool)

(declare-fun e!96397 () Bool)

(declare-fun lt!48182 () List!2757)

(assert (=> b!160302 (= e!96397 (= (size!2324 lt!48182) e!96401))))

(declare-fun c!32142 () Bool)

(assert (=> b!160302 (= c!32142 (<= 0 0))))

(declare-fun d!39271 () Bool)

(assert (=> d!39271 e!96397))

(declare-fun res!72716 () Bool)

(assert (=> d!39271 (=> (not res!72716) (not e!96397))))

(assert (=> d!39271 (= res!72716 (= ((_ map implies) (content!384 lt!48182) (content!384 lt!48049)) ((as const (InoxSet Token!710)) true)))))

(assert (=> d!39271 (= lt!48182 e!96399)))

(declare-fun c!32141 () Bool)

(assert (=> d!39271 (= c!32141 ((_ is Nil!2747) lt!48049))))

(assert (=> d!39271 (= (drop!131 lt!48049 0) lt!48182)))

(assert (= (and d!39271 c!32141) b!160308))

(assert (= (and d!39271 (not c!32141)) b!160301))

(assert (= (and b!160301 c!32140) b!160304))

(assert (= (and b!160301 (not c!32140)) b!160303))

(assert (= (and d!39271 res!72716) b!160302))

(assert (= (and b!160302 c!32142) b!160306))

(assert (= (and b!160302 (not c!32142)) b!160305))

(assert (= (and b!160305 c!32143) b!160307))

(assert (= (and b!160305 (not c!32143)) b!160300))

(assert (= (or b!160306 b!160305 b!160300) bm!6781))

(assert (=> bm!6781 m!149079))

(declare-fun m!149111 () Bool)

(assert (=> b!160303 m!149111))

(declare-fun m!149113 () Bool)

(assert (=> b!160302 m!149113))

(declare-fun m!149115 () Bool)

(assert (=> d!39271 m!149115))

(assert (=> d!39271 m!149087))

(assert (=> b!159883 d!39271))

(declare-fun bs!15039 () Bool)

(declare-fun d!39273 () Bool)

(assert (= bs!15039 (and d!39273 b!159687)))

(declare-fun lambda!4358 () Int)

(assert (=> bs!15039 (= lambda!4358 lambda!4322)))

(declare-fun bs!15040 () Bool)

(assert (= bs!15040 (and d!39273 b!160018)))

(assert (=> bs!15040 (not (= lambda!4358 lambda!4352))))

(declare-fun bs!15041 () Bool)

(assert (= bs!15041 (and d!39273 d!39165)))

(assert (=> bs!15041 (not (= lambda!4358 lambda!4353))))

(declare-fun bs!15042 () Bool)

(assert (= bs!15042 (and d!39273 b!160081)))

(assert (=> bs!15042 (not (= lambda!4358 lambda!4354))))

(declare-fun bs!15043 () Bool)

(assert (= bs!15043 (and d!39273 d!39095)))

(assert (=> bs!15043 (not (= lambda!4358 lambda!4330))))

(declare-fun bs!15044 () Bool)

(assert (= bs!15044 (and d!39273 d!39119)))

(assert (=> bs!15044 (= lambda!4358 lambda!4344)))

(declare-fun bs!15045 () Bool)

(assert (= bs!15045 (and d!39273 b!159883)))

(assert (=> bs!15045 (not (= lambda!4358 lambda!4345))))

(declare-fun bs!15046 () Bool)

(declare-fun b!160313 () Bool)

(assert (= bs!15046 (and b!160313 d!39273)))

(declare-fun lambda!4360 () Int)

(assert (=> bs!15046 (not (= lambda!4360 lambda!4358))))

(declare-fun bs!15048 () Bool)

(assert (= bs!15048 (and b!160313 b!159687)))

(assert (=> bs!15048 (not (= lambda!4360 lambda!4322))))

(declare-fun bs!15049 () Bool)

(assert (= bs!15049 (and b!160313 b!160018)))

(assert (=> bs!15049 (= lambda!4360 lambda!4352)))

(declare-fun bs!15050 () Bool)

(assert (= bs!15050 (and b!160313 d!39165)))

(assert (=> bs!15050 (= lambda!4360 lambda!4353)))

(declare-fun bs!15051 () Bool)

(assert (= bs!15051 (and b!160313 b!160081)))

(assert (=> bs!15051 (= lambda!4360 lambda!4354)))

(declare-fun bs!15052 () Bool)

(assert (= bs!15052 (and b!160313 d!39095)))

(assert (=> bs!15052 (= lambda!4360 lambda!4330)))

(declare-fun bs!15053 () Bool)

(assert (= bs!15053 (and b!160313 d!39119)))

(assert (=> bs!15053 (not (= lambda!4360 lambda!4344))))

(declare-fun bs!15055 () Bool)

(assert (= bs!15055 (and b!160313 b!159883)))

(assert (=> bs!15055 (= lambda!4360 lambda!4345)))

(declare-fun b!160326 () Bool)

(declare-fun e!96414 () Bool)

(assert (=> b!160326 (= e!96414 true)))

(declare-fun b!160325 () Bool)

(declare-fun e!96413 () Bool)

(assert (=> b!160325 (= e!96413 e!96414)))

(declare-fun b!160324 () Bool)

(declare-fun e!96412 () Bool)

(assert (=> b!160324 (= e!96412 e!96413)))

(assert (=> b!160313 e!96412))

(assert (= b!160325 b!160326))

(assert (= b!160324 b!160325))

(assert (= (and b!160313 ((_ is Cons!2748) rules!1920)) b!160324))

(assert (=> b!160326 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4360))))

(assert (=> b!160326 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4360))))

(assert (=> b!160313 true))

(declare-fun bm!6783 () Bool)

(declare-fun call!6792 () Token!710)

(assert (=> bm!6783 (= call!6792 (apply!381 lt!47931 (+ 0 1)))))

(declare-fun e!96407 () BalanceConc!1584)

(declare-fun e!96406 () BalanceConc!1584)

(assert (=> b!160313 (= e!96407 e!96406)))

(declare-fun lt!48183 () List!2757)

(assert (=> b!160313 (= lt!48183 (list!989 lt!47931))))

(declare-fun lt!48195 () Unit!2232)

(assert (=> b!160313 (= lt!48195 (lemmaDropApply!118 lt!48183 (+ 0 1)))))

(assert (=> b!160313 (= (head!592 (drop!131 lt!48183 (+ 0 1))) (apply!382 lt!48183 (+ 0 1)))))

(declare-fun lt!48184 () Unit!2232)

(assert (=> b!160313 (= lt!48184 lt!48195)))

(declare-fun lt!48194 () List!2757)

(assert (=> b!160313 (= lt!48194 (list!989 lt!47931))))

(declare-fun lt!48192 () Unit!2232)

(assert (=> b!160313 (= lt!48192 (lemmaDropTail!110 lt!48194 (+ 0 1)))))

(assert (=> b!160313 (= (tail!332 (drop!131 lt!48194 (+ 0 1))) (drop!131 lt!48194 (+ 0 1 1)))))

(declare-fun lt!48188 () Unit!2232)

(assert (=> b!160313 (= lt!48188 lt!48192)))

(declare-fun lt!48196 () Unit!2232)

(assert (=> b!160313 (= lt!48196 (forallContained!62 (list!989 lt!47931) lambda!4360 (apply!381 lt!47931 (+ 0 1))))))

(declare-fun lt!48193 () BalanceConc!1584)

(assert (=> b!160313 (= lt!48193 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 (+ 0 1 1)))))

(declare-fun lt!48189 () Option!270)

(assert (=> b!160313 (= lt!48189 (maxPrefixZipperSequence!78 thiss!17480 rules!1920 (++!610 (charsOf!138 (apply!381 lt!47931 (+ 0 1))) lt!48193)))))

(declare-fun res!72721 () Bool)

(assert (=> b!160313 (= res!72721 ((_ is Some!269) lt!48189))))

(declare-fun e!96411 () Bool)

(assert (=> b!160313 (=> (not res!72721) (not e!96411))))

(declare-fun c!32145 () Bool)

(assert (=> b!160313 (= c!32145 e!96411)))

(declare-fun b!160314 () Bool)

(assert (=> b!160314 (= e!96411 (= (_1!1542 (v!13674 lt!48189)) (apply!381 lt!47931 (+ 0 1))))))

(declare-fun b!160315 () Bool)

(declare-fun e!96410 () BalanceConc!1584)

(declare-fun call!6790 () BalanceConc!1584)

(assert (=> b!160315 (= e!96410 call!6790)))

(declare-fun lt!48185 () BalanceConc!1584)

(assert (=> d!39273 (= (list!985 lt!48185) (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (dropList!78 lt!47931 (+ 0 1)) separatorToken!170))))

(assert (=> d!39273 (= lt!48185 e!96407)))

(declare-fun c!32148 () Bool)

(assert (=> d!39273 (= c!32148 (>= (+ 0 1) (size!2319 lt!47931)))))

(declare-fun lt!48187 () Unit!2232)

(assert (=> d!39273 (= lt!48187 (lemmaContentSubsetPreservesForall!22 (list!989 lt!47931) (dropList!78 lt!47931 (+ 0 1)) lambda!4358))))

(declare-fun e!96405 () Bool)

(assert (=> d!39273 e!96405))

(declare-fun res!72720 () Bool)

(assert (=> d!39273 (=> (not res!72720) (not e!96405))))

(assert (=> d!39273 (= res!72720 (>= (+ 0 1) 0))))

(assert (=> d!39273 (= (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 (+ 0 1)) lt!48185)))

(declare-fun bm!6784 () Bool)

(declare-fun call!6788 () BalanceConc!1584)

(assert (=> bm!6784 (= call!6788 call!6790)))

(declare-fun b!160316 () Bool)

(declare-fun c!32146 () Bool)

(declare-fun e!96408 () Bool)

(assert (=> b!160316 (= c!32146 e!96408)))

(declare-fun res!72719 () Bool)

(assert (=> b!160316 (=> (not res!72719) (not e!96408))))

(assert (=> b!160316 (= res!72719 ((_ is Some!269) lt!48189))))

(declare-fun e!96409 () BalanceConc!1584)

(assert (=> b!160316 (= e!96406 e!96409)))

(declare-fun b!160317 () Bool)

(declare-fun call!6791 () BalanceConc!1584)

(assert (=> b!160317 (= e!96406 call!6791)))

(declare-fun b!160318 () Bool)

(assert (=> b!160318 (= e!96409 (BalanceConc!1585 Empty!788))))

(declare-fun call!6789 () Token!710)

(assert (=> b!160318 (= (print!104 thiss!17480 (singletonSeq!37 call!6789)) (printTailRec!67 thiss!17480 (singletonSeq!37 call!6789) 0 (BalanceConc!1585 Empty!788)))))

(declare-fun lt!48190 () Unit!2232)

(declare-fun Unit!2246 () Unit!2232)

(assert (=> b!160318 (= lt!48190 Unit!2246)))

(declare-fun lt!48191 () Unit!2232)

(assert (=> b!160318 (= lt!48191 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 (list!985 call!6788) (list!985 lt!48193)))))

(assert (=> b!160318 false))

(declare-fun lt!48186 () Unit!2232)

(declare-fun Unit!2247 () Unit!2232)

(assert (=> b!160318 (= lt!48186 Unit!2247)))

(declare-fun bm!6785 () Bool)

(assert (=> bm!6785 (= call!6789 call!6792)))

(declare-fun b!160319 () Bool)

(assert (=> b!160319 (= e!96410 (charsOf!138 call!6789))))

(declare-fun bm!6786 () Bool)

(assert (=> bm!6786 (= call!6790 (charsOf!138 (ite c!32145 call!6792 (ite c!32146 separatorToken!170 call!6789))))))

(declare-fun b!160320 () Bool)

(assert (=> b!160320 (= e!96407 (BalanceConc!1585 Empty!788))))

(declare-fun bm!6787 () Bool)

(declare-fun c!32147 () Bool)

(assert (=> bm!6787 (= c!32147 c!32145)))

(assert (=> bm!6787 (= call!6791 (++!610 e!96410 (ite c!32145 lt!48193 call!6788)))))

(declare-fun b!160321 () Bool)

(assert (=> b!160321 (= e!96409 (++!610 call!6791 lt!48193))))

(declare-fun b!160322 () Bool)

(assert (=> b!160322 (= e!96408 (not (= (_1!1542 (v!13674 lt!48189)) call!6792)))))

(declare-fun b!160323 () Bool)

(assert (=> b!160323 (= e!96405 (<= (+ 0 1) (size!2319 lt!47931)))))

(assert (= (and d!39273 res!72720) b!160323))

(assert (= (and d!39273 c!32148) b!160320))

(assert (= (and d!39273 (not c!32148)) b!160313))

(assert (= (and b!160313 res!72721) b!160314))

(assert (= (and b!160313 c!32145) b!160317))

(assert (= (and b!160313 (not c!32145)) b!160316))

(assert (= (and b!160316 res!72719) b!160322))

(assert (= (and b!160316 c!32146) b!160321))

(assert (= (and b!160316 (not c!32146)) b!160318))

(assert (= (or b!160321 b!160318) bm!6785))

(assert (= (or b!160321 b!160318) bm!6784))

(assert (= (or b!160317 b!160322 bm!6785) bm!6783))

(assert (= (or b!160317 bm!6784) bm!6786))

(assert (= (or b!160317 b!160321) bm!6787))

(assert (= (and bm!6787 c!32147) b!160315))

(assert (= (and bm!6787 (not c!32147)) b!160319))

(declare-fun m!149123 () Bool)

(assert (=> b!160318 m!149123))

(declare-fun m!149125 () Bool)

(assert (=> b!160318 m!149125))

(declare-fun m!149127 () Bool)

(assert (=> b!160318 m!149127))

(assert (=> b!160318 m!149123))

(declare-fun m!149129 () Bool)

(assert (=> b!160318 m!149129))

(declare-fun m!149131 () Bool)

(assert (=> b!160318 m!149131))

(assert (=> b!160318 m!149129))

(assert (=> b!160318 m!149125))

(assert (=> b!160318 m!149129))

(declare-fun m!149133 () Bool)

(assert (=> b!160318 m!149133))

(declare-fun m!149135 () Bool)

(assert (=> bm!6786 m!149135))

(declare-fun m!149137 () Bool)

(assert (=> b!160319 m!149137))

(declare-fun m!149139 () Bool)

(assert (=> b!160321 m!149139))

(declare-fun m!149141 () Bool)

(assert (=> bm!6787 m!149141))

(declare-fun m!149143 () Bool)

(assert (=> b!160314 m!149143))

(assert (=> b!160323 m!148563))

(assert (=> b!160313 m!149143))

(declare-fun m!149145 () Bool)

(assert (=> b!160313 m!149145))

(declare-fun m!149147 () Bool)

(assert (=> b!160313 m!149147))

(declare-fun m!149149 () Bool)

(assert (=> b!160313 m!149149))

(declare-fun m!149151 () Bool)

(assert (=> b!160313 m!149151))

(declare-fun m!149153 () Bool)

(assert (=> b!160313 m!149153))

(declare-fun m!149155 () Bool)

(assert (=> b!160313 m!149155))

(assert (=> b!160313 m!148577))

(assert (=> b!160313 m!149149))

(assert (=> b!160313 m!149145))

(declare-fun m!149157 () Bool)

(assert (=> b!160313 m!149157))

(declare-fun m!149159 () Bool)

(assert (=> b!160313 m!149159))

(declare-fun m!149161 () Bool)

(assert (=> b!160313 m!149161))

(assert (=> b!160313 m!148577))

(assert (=> b!160313 m!149143))

(declare-fun m!149163 () Bool)

(assert (=> b!160313 m!149163))

(assert (=> b!160313 m!149143))

(assert (=> b!160313 m!149153))

(declare-fun m!149165 () Bool)

(assert (=> b!160313 m!149165))

(assert (=> b!160313 m!149157))

(declare-fun m!149167 () Bool)

(assert (=> b!160313 m!149167))

(declare-fun m!149169 () Bool)

(assert (=> b!160313 m!149169))

(assert (=> bm!6783 m!149143))

(declare-fun m!149171 () Bool)

(assert (=> d!39273 m!149171))

(assert (=> d!39273 m!148563))

(assert (=> d!39273 m!148577))

(assert (=> d!39273 m!148577))

(declare-fun m!149173 () Bool)

(assert (=> d!39273 m!149173))

(declare-fun m!149175 () Bool)

(assert (=> d!39273 m!149175))

(assert (=> d!39273 m!149173))

(assert (=> d!39273 m!149173))

(declare-fun m!149177 () Bool)

(assert (=> d!39273 m!149177))

(assert (=> b!159883 d!39273))

(declare-fun d!39279 () Bool)

(declare-fun lt!48204 () Token!710)

(assert (=> d!39279 (= lt!48204 (apply!382 (list!989 lt!47931) 0))))

(declare-fun apply!383 (Conc!789 Int) Token!710)

(assert (=> d!39279 (= lt!48204 (apply!383 (c!32023 lt!47931) 0))))

(declare-fun e!96424 () Bool)

(assert (=> d!39279 e!96424))

(declare-fun res!72724 () Bool)

(assert (=> d!39279 (=> (not res!72724) (not e!96424))))

(assert (=> d!39279 (= res!72724 (<= 0 0))))

(assert (=> d!39279 (= (apply!381 lt!47931 0) lt!48204)))

(declare-fun b!160343 () Bool)

(assert (=> b!160343 (= e!96424 (< 0 (size!2319 lt!47931)))))

(assert (= (and d!39279 res!72724) b!160343))

(assert (=> d!39279 m!148577))

(assert (=> d!39279 m!148577))

(declare-fun m!149185 () Bool)

(assert (=> d!39279 m!149185))

(declare-fun m!149187 () Bool)

(assert (=> d!39279 m!149187))

(assert (=> b!160343 m!148563))

(assert (=> b!159883 d!39279))

(declare-fun b!160365 () Bool)

(declare-fun res!72740 () Bool)

(declare-fun e!96434 () Bool)

(assert (=> b!160365 (=> (not res!72740) (not e!96434))))

(declare-fun height!84 (Conc!788) Int)

(declare-fun ++!612 (Conc!788 Conc!788) Conc!788)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!160365 (= res!72740 (<= (height!84 (++!612 (c!32021 (charsOf!138 (apply!381 lt!47931 0))) (c!32021 lt!48048))) (+ (max!0 (height!84 (c!32021 (charsOf!138 (apply!381 lt!47931 0)))) (height!84 (c!32021 lt!48048))) 1)))))

(declare-fun b!160366 () Bool)

(declare-fun res!72738 () Bool)

(assert (=> b!160366 (=> (not res!72738) (not e!96434))))

(assert (=> b!160366 (= res!72738 (>= (height!84 (++!612 (c!32021 (charsOf!138 (apply!381 lt!47931 0))) (c!32021 lt!48048))) (max!0 (height!84 (c!32021 (charsOf!138 (apply!381 lt!47931 0)))) (height!84 (c!32021 lt!48048)))))))

(declare-fun d!39287 () Bool)

(assert (=> d!39287 e!96434))

(declare-fun res!72739 () Bool)

(assert (=> d!39287 (=> (not res!72739) (not e!96434))))

(declare-fun appendAssocInst!25 (Conc!788 Conc!788) Bool)

(assert (=> d!39287 (= res!72739 (appendAssocInst!25 (c!32021 (charsOf!138 (apply!381 lt!47931 0))) (c!32021 lt!48048)))))

(declare-fun lt!48208 () BalanceConc!1584)

(assert (=> d!39287 (= lt!48208 (BalanceConc!1585 (++!612 (c!32021 (charsOf!138 (apply!381 lt!47931 0))) (c!32021 lt!48048))))))

(assert (=> d!39287 (= (++!610 (charsOf!138 (apply!381 lt!47931 0)) lt!48048) lt!48208)))

(declare-fun b!160364 () Bool)

(declare-fun res!72737 () Bool)

(assert (=> b!160364 (=> (not res!72737) (not e!96434))))

(declare-fun isBalanced!222 (Conc!788) Bool)

(assert (=> b!160364 (= res!72737 (isBalanced!222 (++!612 (c!32021 (charsOf!138 (apply!381 lt!47931 0))) (c!32021 lt!48048))))))

(declare-fun b!160367 () Bool)

(assert (=> b!160367 (= e!96434 (= (list!985 lt!48208) (++!608 (list!985 (charsOf!138 (apply!381 lt!47931 0))) (list!985 lt!48048))))))

(assert (= (and d!39287 res!72739) b!160364))

(assert (= (and b!160364 res!72737) b!160365))

(assert (= (and b!160365 res!72740) b!160366))

(assert (= (and b!160366 res!72738) b!160367))

(declare-fun m!149223 () Bool)

(assert (=> b!160366 m!149223))

(assert (=> b!160366 m!149223))

(declare-fun m!149225 () Bool)

(assert (=> b!160366 m!149225))

(declare-fun m!149227 () Bool)

(assert (=> b!160366 m!149227))

(assert (=> b!160366 m!149225))

(declare-fun m!149229 () Bool)

(assert (=> b!160366 m!149229))

(assert (=> b!160366 m!149229))

(declare-fun m!149231 () Bool)

(assert (=> b!160366 m!149231))

(declare-fun m!149233 () Bool)

(assert (=> d!39287 m!149233))

(assert (=> d!39287 m!149229))

(assert (=> b!160364 m!149229))

(assert (=> b!160364 m!149229))

(declare-fun m!149235 () Bool)

(assert (=> b!160364 m!149235))

(declare-fun m!149237 () Bool)

(assert (=> b!160367 m!149237))

(assert (=> b!160367 m!148565))

(declare-fun m!149239 () Bool)

(assert (=> b!160367 m!149239))

(assert (=> b!160367 m!148543))

(assert (=> b!160367 m!149239))

(assert (=> b!160367 m!148543))

(declare-fun m!149241 () Bool)

(assert (=> b!160367 m!149241))

(assert (=> b!160365 m!149223))

(assert (=> b!160365 m!149223))

(assert (=> b!160365 m!149225))

(assert (=> b!160365 m!149227))

(assert (=> b!160365 m!149225))

(assert (=> b!160365 m!149229))

(assert (=> b!160365 m!149229))

(assert (=> b!160365 m!149231))

(assert (=> b!159883 d!39287))

(declare-fun d!39303 () Bool)

(declare-fun charsToBigInt!1 (List!2755) Int)

(assert (=> d!39303 (= (inv!17 (value!18081 separatorToken!170)) (= (charsToBigInt!1 (text!3983 (value!18081 separatorToken!170))) (value!18073 (value!18081 separatorToken!170))))))

(declare-fun bs!15058 () Bool)

(assert (= bs!15058 d!39303))

(declare-fun m!149243 () Bool)

(assert (=> bs!15058 m!149243))

(assert (=> b!160045 d!39303))

(declare-fun d!39305 () Bool)

(declare-fun e!96437 () Bool)

(assert (=> d!39305 e!96437))

(declare-fun res!72743 () Bool)

(assert (=> d!39305 (=> (not res!72743) (not e!96437))))

(declare-fun lt!48211 () BalanceConc!1586)

(assert (=> d!39305 (= res!72743 (= (list!989 lt!48211) tokens!465))))

(declare-fun fromList!96 (List!2757) Conc!789)

(assert (=> d!39305 (= lt!48211 (BalanceConc!1587 (fromList!96 tokens!465)))))

(assert (=> d!39305 (= (fromListB!145 tokens!465) lt!48211)))

(declare-fun b!160370 () Bool)

(declare-fun isBalanced!223 (Conc!789) Bool)

(assert (=> b!160370 (= e!96437 (isBalanced!223 (fromList!96 tokens!465)))))

(assert (= (and d!39305 res!72743) b!160370))

(declare-fun m!149245 () Bool)

(assert (=> d!39305 m!149245))

(declare-fun m!149247 () Bool)

(assert (=> d!39305 m!149247))

(assert (=> b!160370 m!149247))

(assert (=> b!160370 m!149247))

(declare-fun m!149249 () Bool)

(assert (=> b!160370 m!149249))

(assert (=> d!39167 d!39305))

(declare-fun bs!15059 () Bool)

(declare-fun d!39307 () Bool)

(assert (= bs!15059 (and d!39307 d!39273)))

(declare-fun lambda!4363 () Int)

(assert (=> bs!15059 (not (= lambda!4363 lambda!4358))))

(declare-fun bs!15060 () Bool)

(assert (= bs!15060 (and d!39307 b!160018)))

(assert (=> bs!15060 (= lambda!4363 lambda!4352)))

(declare-fun bs!15061 () Bool)

(assert (= bs!15061 (and d!39307 d!39165)))

(assert (=> bs!15061 (= lambda!4363 lambda!4353)))

(declare-fun bs!15062 () Bool)

(assert (= bs!15062 (and d!39307 b!160081)))

(assert (=> bs!15062 (= lambda!4363 lambda!4354)))

(declare-fun bs!15063 () Bool)

(assert (= bs!15063 (and d!39307 d!39095)))

(assert (=> bs!15063 (= lambda!4363 lambda!4330)))

(declare-fun bs!15064 () Bool)

(assert (= bs!15064 (and d!39307 d!39119)))

(assert (=> bs!15064 (not (= lambda!4363 lambda!4344))))

(declare-fun bs!15065 () Bool)

(assert (= bs!15065 (and d!39307 b!159883)))

(assert (=> bs!15065 (= lambda!4363 lambda!4345)))

(declare-fun bs!15066 () Bool)

(assert (= bs!15066 (and d!39307 b!159687)))

(assert (=> bs!15066 (not (= lambda!4363 lambda!4322))))

(declare-fun bs!15067 () Bool)

(assert (= bs!15067 (and d!39307 b!160313)))

(assert (=> bs!15067 (= lambda!4363 lambda!4360)))

(declare-fun b!160388 () Bool)

(declare-fun e!96452 () Bool)

(assert (=> b!160388 (= e!96452 true)))

(declare-fun b!160387 () Bool)

(declare-fun e!96451 () Bool)

(assert (=> b!160387 (= e!96451 e!96452)))

(declare-fun b!160386 () Bool)

(declare-fun e!96450 () Bool)

(assert (=> b!160386 (= e!96450 e!96451)))

(assert (=> d!39307 e!96450))

(assert (= b!160387 b!160388))

(assert (= b!160386 b!160387))

(assert (= (and d!39307 ((_ is Cons!2748) rules!1920)) b!160386))

(assert (=> b!160388 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4363))))

(assert (=> b!160388 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4363))))

(assert (=> d!39307 true))

(declare-fun lt!48235 () Bool)

(assert (=> d!39307 (= lt!48235 (forall!500 (list!989 lt!47931) lambda!4363))))

(declare-fun e!96448 () Bool)

(assert (=> d!39307 (= lt!48235 e!96448)))

(declare-fun res!72752 () Bool)

(assert (=> d!39307 (=> res!72752 e!96448)))

(assert (=> d!39307 (= res!72752 (not ((_ is Cons!2747) (list!989 lt!47931))))))

(assert (=> d!39307 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39307 (= (rulesProduceEachTokenIndividuallyList!101 thiss!17480 rules!1920 (list!989 lt!47931)) lt!48235)))

(declare-fun b!160384 () Bool)

(declare-fun e!96449 () Bool)

(assert (=> b!160384 (= e!96448 e!96449)))

(declare-fun res!72751 () Bool)

(assert (=> b!160384 (=> (not res!72751) (not e!96449))))

(assert (=> b!160384 (= res!72751 (rulesProduceIndividualToken!118 thiss!17480 rules!1920 (h!8144 (list!989 lt!47931))))))

(declare-fun b!160385 () Bool)

(assert (=> b!160385 (= e!96449 (rulesProduceEachTokenIndividuallyList!101 thiss!17480 rules!1920 (t!25821 (list!989 lt!47931))))))

(assert (= (and d!39307 (not res!72752)) b!160384))

(assert (= (and b!160384 res!72751) b!160385))

(assert (=> d!39307 m!148577))

(declare-fun m!149287 () Bool)

(assert (=> d!39307 m!149287))

(assert (=> d!39307 m!148325))

(declare-fun m!149289 () Bool)

(assert (=> b!160384 m!149289))

(declare-fun m!149291 () Bool)

(assert (=> b!160385 m!149291))

(assert (=> b!160053 d!39307))

(assert (=> b!160053 d!39269))

(declare-fun d!39311 () Bool)

(assert (=> d!39311 (= (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))) (isBalanced!222 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))))))

(declare-fun bs!15068 () Bool)

(assert (= bs!15068 d!39311))

(declare-fun m!149293 () Bool)

(assert (=> bs!15068 m!149293))

(assert (=> tb!5823 d!39311))

(declare-fun d!39313 () Bool)

(declare-fun lt!48238 () BalanceConc!1584)

(declare-fun printList!58 (LexerInterface!369 List!2757) List!2756)

(assert (=> d!39313 (= (list!985 lt!48238) (printList!58 thiss!17480 (list!989 (singletonSeq!37 (h!8144 tokens!465)))))))

(assert (=> d!39313 (= lt!48238 (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 tokens!465)) 0 (BalanceConc!1585 Empty!788)))))

(assert (=> d!39313 (= (print!104 thiss!17480 (singletonSeq!37 (h!8144 tokens!465))) lt!48238)))

(declare-fun bs!15069 () Bool)

(assert (= bs!15069 d!39313))

(declare-fun m!149295 () Bool)

(assert (=> bs!15069 m!149295))

(assert (=> bs!15069 m!148757))

(declare-fun m!149297 () Bool)

(assert (=> bs!15069 m!149297))

(assert (=> bs!15069 m!149297))

(declare-fun m!149299 () Bool)

(assert (=> bs!15069 m!149299))

(assert (=> bs!15069 m!148757))

(assert (=> bs!15069 m!148761))

(assert (=> b!160025 d!39313))

(declare-fun d!39315 () Bool)

(declare-fun e!96455 () Bool)

(assert (=> d!39315 e!96455))

(declare-fun res!72755 () Bool)

(assert (=> d!39315 (=> (not res!72755) (not e!96455))))

(declare-fun lt!48241 () BalanceConc!1586)

(assert (=> d!39315 (= res!72755 (= (list!989 lt!48241) (Cons!2747 (h!8144 tokens!465) Nil!2747)))))

(declare-fun singleton!26 (Token!710) BalanceConc!1586)

(assert (=> d!39315 (= lt!48241 (singleton!26 (h!8144 tokens!465)))))

(assert (=> d!39315 (= (singletonSeq!37 (h!8144 tokens!465)) lt!48241)))

(declare-fun b!160391 () Bool)

(assert (=> b!160391 (= e!96455 (isBalanced!223 (c!32023 lt!48241)))))

(assert (= (and d!39315 res!72755) b!160391))

(declare-fun m!149301 () Bool)

(assert (=> d!39315 m!149301))

(declare-fun m!149303 () Bool)

(assert (=> d!39315 m!149303))

(declare-fun m!149305 () Bool)

(assert (=> b!160391 m!149305))

(assert (=> b!160025 d!39315))

(declare-fun d!39317 () Bool)

(declare-fun lt!48258 () BalanceConc!1584)

(declare-fun printListTailRec!45 (LexerInterface!369 List!2757 List!2756) List!2756)

(assert (=> d!39317 (= (list!985 lt!48258) (printListTailRec!45 thiss!17480 (dropList!78 (singletonSeq!37 (h!8144 tokens!465)) 0) (list!985 (BalanceConc!1585 Empty!788))))))

(declare-fun e!96460 () BalanceConc!1584)

(assert (=> d!39317 (= lt!48258 e!96460)))

(declare-fun c!32169 () Bool)

(assert (=> d!39317 (= c!32169 (>= 0 (size!2319 (singletonSeq!37 (h!8144 tokens!465)))))))

(declare-fun e!96461 () Bool)

(assert (=> d!39317 e!96461))

(declare-fun res!72758 () Bool)

(assert (=> d!39317 (=> (not res!72758) (not e!96461))))

(assert (=> d!39317 (= res!72758 (>= 0 0))))

(assert (=> d!39317 (= (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 tokens!465)) 0 (BalanceConc!1585 Empty!788)) lt!48258)))

(declare-fun b!160398 () Bool)

(assert (=> b!160398 (= e!96461 (<= 0 (size!2319 (singletonSeq!37 (h!8144 tokens!465)))))))

(declare-fun b!160399 () Bool)

(assert (=> b!160399 (= e!96460 (BalanceConc!1585 Empty!788))))

(declare-fun b!160400 () Bool)

(assert (=> b!160400 (= e!96460 (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 tokens!465)) (+ 0 1) (++!610 (BalanceConc!1585 Empty!788) (charsOf!138 (apply!381 (singletonSeq!37 (h!8144 tokens!465)) 0)))))))

(declare-fun lt!48261 () List!2757)

(assert (=> b!160400 (= lt!48261 (list!989 (singletonSeq!37 (h!8144 tokens!465))))))

(declare-fun lt!48256 () Unit!2232)

(assert (=> b!160400 (= lt!48256 (lemmaDropApply!118 lt!48261 0))))

(assert (=> b!160400 (= (head!592 (drop!131 lt!48261 0)) (apply!382 lt!48261 0))))

(declare-fun lt!48257 () Unit!2232)

(assert (=> b!160400 (= lt!48257 lt!48256)))

(declare-fun lt!48262 () List!2757)

(assert (=> b!160400 (= lt!48262 (list!989 (singletonSeq!37 (h!8144 tokens!465))))))

(declare-fun lt!48260 () Unit!2232)

(assert (=> b!160400 (= lt!48260 (lemmaDropTail!110 lt!48262 0))))

(assert (=> b!160400 (= (tail!332 (drop!131 lt!48262 0)) (drop!131 lt!48262 (+ 0 1)))))

(declare-fun lt!48259 () Unit!2232)

(assert (=> b!160400 (= lt!48259 lt!48260)))

(assert (= (and d!39317 res!72758) b!160398))

(assert (= (and d!39317 c!32169) b!160399))

(assert (= (and d!39317 (not c!32169)) b!160400))

(assert (=> d!39317 m!148757))

(declare-fun m!149307 () Bool)

(assert (=> d!39317 m!149307))

(assert (=> d!39317 m!148757))

(declare-fun m!149309 () Bool)

(assert (=> d!39317 m!149309))

(declare-fun m!149311 () Bool)

(assert (=> d!39317 m!149311))

(declare-fun m!149313 () Bool)

(assert (=> d!39317 m!149313))

(assert (=> d!39317 m!149307))

(assert (=> d!39317 m!149311))

(declare-fun m!149315 () Bool)

(assert (=> d!39317 m!149315))

(assert (=> b!160398 m!148757))

(assert (=> b!160398 m!149309))

(declare-fun m!149317 () Bool)

(assert (=> b!160400 m!149317))

(declare-fun m!149319 () Bool)

(assert (=> b!160400 m!149319))

(assert (=> b!160400 m!148757))

(assert (=> b!160400 m!149297))

(declare-fun m!149321 () Bool)

(assert (=> b!160400 m!149321))

(assert (=> b!160400 m!149321))

(declare-fun m!149323 () Bool)

(assert (=> b!160400 m!149323))

(declare-fun m!149325 () Bool)

(assert (=> b!160400 m!149325))

(declare-fun m!149327 () Bool)

(assert (=> b!160400 m!149327))

(declare-fun m!149329 () Bool)

(assert (=> b!160400 m!149329))

(declare-fun m!149331 () Bool)

(assert (=> b!160400 m!149331))

(declare-fun m!149333 () Bool)

(assert (=> b!160400 m!149333))

(assert (=> b!160400 m!149329))

(assert (=> b!160400 m!148757))

(declare-fun m!149335 () Bool)

(assert (=> b!160400 m!149335))

(assert (=> b!160400 m!148757))

(assert (=> b!160400 m!149327))

(declare-fun m!149337 () Bool)

(assert (=> b!160400 m!149337))

(assert (=> b!160400 m!149335))

(assert (=> b!160400 m!149325))

(declare-fun m!149339 () Bool)

(assert (=> b!160400 m!149339))

(assert (=> b!160025 d!39317))

(declare-fun b!160447 () Bool)

(declare-fun res!72780 () Bool)

(declare-fun e!96489 () Bool)

(assert (=> b!160447 (=> (not res!72780) (not e!96489))))

(declare-fun lt!48362 () Token!710)

(declare-fun matchR!74 (Regex!707 List!2756) Bool)

(declare-datatypes ((Option!272 0))(
  ( (None!271) (Some!271 (v!13680 Rule!766)) )
))
(declare-fun get!748 (Option!272) Rule!766)

(declare-fun getRuleFromTag!17 (LexerInterface!369 List!2758 String!3605) Option!272)

(assert (=> b!160447 (= res!72780 (matchR!74 (regex!483 (get!748 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48362))))) (list!985 (charsOf!138 lt!48362))))))

(declare-fun b!160448 () Bool)

(assert (=> b!160448 (= e!96489 (= (rule!990 lt!48362) (get!748 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48362))))))))

(declare-fun b!160449 () Bool)

(declare-fun e!96488 () Unit!2232)

(declare-fun Unit!2248 () Unit!2232)

(assert (=> b!160449 (= e!96488 Unit!2248)))

(declare-fun lt!48375 () List!2756)

(assert (=> b!160449 (= lt!48375 (++!608 call!6768 lt!48094))))

(declare-fun lt!48371 () Unit!2232)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!17 (LexerInterface!369 Rule!766 List!2758 List!2756) Unit!2232)

(assert (=> b!160449 (= lt!48371 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!17 thiss!17480 (rule!990 lt!48362) rules!1920 lt!48375))))

(declare-fun isEmpty!1114 (Option!271) Bool)

(declare-fun maxPrefixOneRule!62 (LexerInterface!369 Rule!766 List!2756) Option!271)

(assert (=> b!160449 (isEmpty!1114 (maxPrefixOneRule!62 thiss!17480 (rule!990 lt!48362) lt!48375))))

(declare-fun lt!48368 () Unit!2232)

(assert (=> b!160449 (= lt!48368 lt!48371)))

(declare-fun lt!48377 () List!2756)

(assert (=> b!160449 (= lt!48377 (list!985 (charsOf!138 lt!48362)))))

(declare-fun lt!48366 () Unit!2232)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!17 (LexerInterface!369 Rule!766 List!2756 List!2756) Unit!2232)

(assert (=> b!160449 (= lt!48366 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!17 thiss!17480 (rule!990 lt!48362) lt!48377 (++!608 call!6768 lt!48094)))))

(assert (=> b!160449 (not (matchR!74 (regex!483 (rule!990 lt!48362)) lt!48377))))

(declare-fun lt!48370 () Unit!2232)

(assert (=> b!160449 (= lt!48370 lt!48366)))

(assert (=> b!160449 false))

(declare-fun b!160450 () Bool)

(declare-fun Unit!2249 () Unit!2232)

(assert (=> b!160450 (= e!96488 Unit!2249)))

(declare-fun d!39319 () Bool)

(assert (=> d!39319 (isDefined!122 (maxPrefix!119 thiss!17480 rules!1920 (++!608 call!6768 lt!48094)))))

(declare-fun lt!48365 () Unit!2232)

(assert (=> d!39319 (= lt!48365 e!96488)))

(declare-fun c!32182 () Bool)

(assert (=> d!39319 (= c!32182 (isEmpty!1114 (maxPrefix!119 thiss!17480 rules!1920 (++!608 call!6768 lt!48094))))))

(declare-fun lt!48376 () Unit!2232)

(declare-fun lt!48373 () Unit!2232)

(assert (=> d!39319 (= lt!48376 lt!48373)))

(assert (=> d!39319 e!96489))

(declare-fun res!72779 () Bool)

(assert (=> d!39319 (=> (not res!72779) (not e!96489))))

(declare-fun isDefined!123 (Option!272) Bool)

(assert (=> d!39319 (= res!72779 (isDefined!123 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48362)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!17 (LexerInterface!369 List!2758 List!2756 Token!710) Unit!2232)

(assert (=> d!39319 (= lt!48373 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!17 thiss!17480 rules!1920 call!6768 lt!48362))))

(declare-fun lt!48374 () Unit!2232)

(declare-fun lt!48367 () Unit!2232)

(assert (=> d!39319 (= lt!48374 lt!48367)))

(declare-fun lt!48363 () List!2756)

(assert (=> d!39319 (isPrefix!218 lt!48363 (++!608 call!6768 lt!48094))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!17 (List!2756 List!2756 List!2756) Unit!2232)

(assert (=> d!39319 (= lt!48367 (lemmaPrefixStaysPrefixWhenAddingToSuffix!17 lt!48363 call!6768 lt!48094))))

(assert (=> d!39319 (= lt!48363 (list!985 (charsOf!138 lt!48362)))))

(declare-fun lt!48378 () Unit!2232)

(declare-fun lt!48364 () Unit!2232)

(assert (=> d!39319 (= lt!48378 lt!48364)))

(declare-fun lt!48372 () List!2756)

(declare-fun lt!48369 () List!2756)

(assert (=> d!39319 (isPrefix!218 lt!48372 (++!608 lt!48372 lt!48369))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!121 (List!2756 List!2756) Unit!2232)

(assert (=> d!39319 (= lt!48364 (lemmaConcatTwoListThenFirstIsPrefix!121 lt!48372 lt!48369))))

(assert (=> d!39319 (= lt!48369 (_2!1543 (get!747 (maxPrefix!119 thiss!17480 rules!1920 call!6768))))))

(assert (=> d!39319 (= lt!48372 (list!985 (charsOf!138 lt!48362)))))

(assert (=> d!39319 (= lt!48362 (head!592 (list!989 (_1!1545 (lex!179 thiss!17480 rules!1920 (seqFromList!343 call!6768))))))))

(assert (=> d!39319 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39319 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 call!6768 lt!48094) lt!48365)))

(assert (= (and d!39319 res!72779) b!160447))

(assert (= (and b!160447 res!72780) b!160448))

(assert (= (and d!39319 c!32182) b!160449))

(assert (= (and d!39319 (not c!32182)) b!160450))

(declare-fun m!149475 () Bool)

(assert (=> b!160447 m!149475))

(declare-fun m!149477 () Bool)

(assert (=> b!160447 m!149477))

(assert (=> b!160447 m!149475))

(declare-fun m!149479 () Bool)

(assert (=> b!160447 m!149479))

(declare-fun m!149481 () Bool)

(assert (=> b!160447 m!149481))

(assert (=> b!160447 m!149479))

(assert (=> b!160447 m!149477))

(declare-fun m!149483 () Bool)

(assert (=> b!160447 m!149483))

(assert (=> b!160448 m!149479))

(assert (=> b!160448 m!149479))

(assert (=> b!160448 m!149481))

(declare-fun m!149485 () Bool)

(assert (=> b!160449 m!149485))

(declare-fun m!149487 () Bool)

(assert (=> b!160449 m!149487))

(declare-fun m!149489 () Bool)

(assert (=> b!160449 m!149489))

(assert (=> b!160449 m!149485))

(assert (=> b!160449 m!149475))

(assert (=> b!160449 m!149477))

(assert (=> b!160449 m!149489))

(declare-fun m!149491 () Bool)

(assert (=> b!160449 m!149491))

(declare-fun m!149493 () Bool)

(assert (=> b!160449 m!149493))

(assert (=> b!160449 m!149475))

(declare-fun m!149495 () Bool)

(assert (=> b!160449 m!149495))

(declare-fun m!149497 () Bool)

(assert (=> d!39319 m!149497))

(declare-fun m!149499 () Bool)

(assert (=> d!39319 m!149499))

(declare-fun m!149501 () Bool)

(assert (=> d!39319 m!149501))

(declare-fun m!149503 () Bool)

(assert (=> d!39319 m!149503))

(declare-fun m!149505 () Bool)

(assert (=> d!39319 m!149505))

(assert (=> d!39319 m!149489))

(declare-fun m!149507 () Bool)

(assert (=> d!39319 m!149507))

(assert (=> d!39319 m!149503))

(assert (=> d!39319 m!149475))

(assert (=> d!39319 m!149477))

(declare-fun m!149509 () Bool)

(assert (=> d!39319 m!149509))

(assert (=> d!39319 m!149489))

(declare-fun m!149511 () Bool)

(assert (=> d!39319 m!149511))

(assert (=> d!39319 m!149479))

(declare-fun m!149513 () Bool)

(assert (=> d!39319 m!149513))

(assert (=> d!39319 m!149479))

(assert (=> d!39319 m!149497))

(declare-fun m!149515 () Bool)

(assert (=> d!39319 m!149515))

(assert (=> d!39319 m!149499))

(declare-fun m!149517 () Bool)

(assert (=> d!39319 m!149517))

(assert (=> d!39319 m!149511))

(declare-fun m!149519 () Bool)

(assert (=> d!39319 m!149519))

(declare-fun m!149521 () Bool)

(assert (=> d!39319 m!149521))

(assert (=> d!39319 m!149509))

(declare-fun m!149523 () Bool)

(assert (=> d!39319 m!149523))

(assert (=> d!39319 m!148325))

(assert (=> d!39319 m!149475))

(assert (=> d!39319 m!149511))

(declare-fun m!149525 () Bool)

(assert (=> d!39319 m!149525))

(assert (=> d!39319 m!149489))

(declare-fun m!149527 () Bool)

(assert (=> d!39319 m!149527))

(assert (=> b!160025 d!39319))

(declare-fun d!39361 () Bool)

(declare-fun charsToBigInt!0 (List!2755 Int) Int)

(assert (=> d!39361 (= (inv!15 (value!18081 separatorToken!170)) (= (charsToBigInt!0 (text!3984 (value!18081 separatorToken!170)) 0) (value!18076 (value!18081 separatorToken!170))))))

(declare-fun bs!15076 () Bool)

(assert (= bs!15076 d!39361))

(declare-fun m!149529 () Bool)

(assert (=> bs!15076 m!149529))

(assert (=> b!160047 d!39361))

(declare-fun d!39363 () Bool)

(assert (=> d!39363 true))

(declare-fun lambda!4366 () Int)

(declare-fun order!1413 () Int)

(declare-fun dynLambda!993 (Int Int) Int)

(assert (=> d!39363 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!993 order!1413 lambda!4366))))

(assert (=> d!39363 true))

(assert (=> d!39363 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!993 order!1413 lambda!4366))))

(declare-fun Forall!130 (Int) Bool)

(assert (=> d!39363 (= (semiInverseModEq!169 (toChars!993 (transformation!483 (h!8145 rules!1920))) (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (Forall!130 lambda!4366))))

(declare-fun bs!15077 () Bool)

(assert (= bs!15077 d!39363))

(declare-fun m!149531 () Bool)

(assert (=> bs!15077 m!149531))

(assert (=> d!39213 d!39363))

(declare-fun b!160466 () Bool)

(declare-fun e!96497 () List!2756)

(assert (=> b!160466 (= e!96497 (Cons!2746 (h!8143 (t!25820 lt!47936)) (++!608 (t!25820 (t!25820 lt!47936)) lt!47933)))))

(declare-fun e!96496 () Bool)

(declare-fun lt!48381 () List!2756)

(declare-fun b!160468 () Bool)

(assert (=> b!160468 (= e!96496 (or (not (= lt!47933 Nil!2746)) (= lt!48381 (t!25820 lt!47936))))))

(declare-fun b!160465 () Bool)

(assert (=> b!160465 (= e!96497 lt!47933)))

(declare-fun b!160467 () Bool)

(declare-fun res!72788 () Bool)

(assert (=> b!160467 (=> (not res!72788) (not e!96496))))

(assert (=> b!160467 (= res!72788 (= (size!2323 lt!48381) (+ (size!2323 (t!25820 lt!47936)) (size!2323 lt!47933))))))

(declare-fun d!39365 () Bool)

(assert (=> d!39365 e!96496))

(declare-fun res!72787 () Bool)

(assert (=> d!39365 (=> (not res!72787) (not e!96496))))

(assert (=> d!39365 (= res!72787 (= (content!383 lt!48381) ((_ map or) (content!383 (t!25820 lt!47936)) (content!383 lt!47933))))))

(assert (=> d!39365 (= lt!48381 e!96497)))

(declare-fun c!32185 () Bool)

(assert (=> d!39365 (= c!32185 ((_ is Nil!2746) (t!25820 lt!47936)))))

(assert (=> d!39365 (= (++!608 (t!25820 lt!47936) lt!47933) lt!48381)))

(assert (= (and d!39365 c!32185) b!160465))

(assert (= (and d!39365 (not c!32185)) b!160466))

(assert (= (and d!39365 res!72787) b!160467))

(assert (= (and b!160467 res!72788) b!160468))

(declare-fun m!149533 () Bool)

(assert (=> b!160466 m!149533))

(declare-fun m!149535 () Bool)

(assert (=> b!160467 m!149535))

(declare-fun m!149537 () Bool)

(assert (=> b!160467 m!149537))

(assert (=> b!160467 m!148831))

(declare-fun m!149539 () Bool)

(assert (=> d!39365 m!149539))

(declare-fun m!149541 () Bool)

(assert (=> d!39365 m!149541))

(assert (=> d!39365 m!148835))

(assert (=> b!160074 d!39365))

(declare-fun d!39367 () Bool)

(declare-fun res!72789 () Bool)

(declare-fun e!96498 () Bool)

(assert (=> d!39367 (=> res!72789 e!96498)))

(assert (=> d!39367 (= res!72789 (not ((_ is Cons!2748) (t!25822 rules!1920))))))

(assert (=> d!39367 (= (sepAndNonSepRulesDisjointChars!72 rules!1920 (t!25822 rules!1920)) e!96498)))

(declare-fun b!160469 () Bool)

(declare-fun e!96499 () Bool)

(assert (=> b!160469 (= e!96498 e!96499)))

(declare-fun res!72790 () Bool)

(assert (=> b!160469 (=> (not res!72790) (not e!96499))))

(assert (=> b!160469 (= res!72790 (ruleDisjointCharsFromAllFromOtherType!28 (h!8145 (t!25822 rules!1920)) rules!1920))))

(declare-fun b!160470 () Bool)

(assert (=> b!160470 (= e!96499 (sepAndNonSepRulesDisjointChars!72 rules!1920 (t!25822 (t!25822 rules!1920))))))

(assert (= (and d!39367 (not res!72789)) b!160469))

(assert (= (and b!160469 res!72790) b!160470))

(declare-fun m!149543 () Bool)

(assert (=> b!160469 m!149543))

(declare-fun m!149545 () Bool)

(assert (=> b!160470 m!149545))

(assert (=> b!160034 d!39367))

(declare-fun d!39369 () Bool)

(assert (=> d!39369 (= (list!985 e!96206) (list!988 (c!32021 e!96206)))))

(declare-fun bs!15078 () Bool)

(assert (= bs!15078 d!39369))

(declare-fun m!149547 () Bool)

(assert (=> bs!15078 m!149547))

(assert (=> bm!6763 d!39369))

(declare-fun d!39371 () Bool)

(assert (=> d!39371 (= (inv!15 (value!18081 (h!8144 tokens!465))) (= (charsToBigInt!0 (text!3984 (value!18081 (h!8144 tokens!465))) 0) (value!18076 (value!18081 (h!8144 tokens!465)))))))

(declare-fun bs!15079 () Bool)

(assert (= bs!15079 d!39371))

(declare-fun m!149549 () Bool)

(assert (=> bs!15079 m!149549))

(assert (=> b!160116 d!39371))

(declare-fun d!39373 () Bool)

(declare-fun lt!48386 () Int)

(assert (=> d!39373 (>= lt!48386 0)))

(declare-fun e!96505 () Int)

(assert (=> d!39373 (= lt!48386 e!96505)))

(declare-fun c!32189 () Bool)

(assert (=> d!39373 (= c!32189 ((_ is Nil!2746) lt!48104))))

(assert (=> d!39373 (= (size!2323 lt!48104) lt!48386)))

(declare-fun b!160480 () Bool)

(assert (=> b!160480 (= e!96505 0)))

(declare-fun b!160481 () Bool)

(assert (=> b!160481 (= e!96505 (+ 1 (size!2323 (t!25820 lt!48104))))))

(assert (= (and d!39373 c!32189) b!160480))

(assert (= (and d!39373 (not c!32189)) b!160481))

(declare-fun m!149579 () Bool)

(assert (=> b!160481 m!149579))

(assert (=> b!160071 d!39373))

(declare-fun d!39381 () Bool)

(declare-fun lt!48388 () Int)

(assert (=> d!39381 (>= lt!48388 0)))

(declare-fun e!96506 () Int)

(assert (=> d!39381 (= lt!48388 e!96506)))

(declare-fun c!32190 () Bool)

(assert (=> d!39381 (= c!32190 ((_ is Nil!2746) lt!47936))))

(assert (=> d!39381 (= (size!2323 lt!47936) lt!48388)))

(declare-fun b!160482 () Bool)

(assert (=> b!160482 (= e!96506 0)))

(declare-fun b!160483 () Bool)

(assert (=> b!160483 (= e!96506 (+ 1 (size!2323 (t!25820 lt!47936))))))

(assert (= (and d!39381 c!32190) b!160482))

(assert (= (and d!39381 (not c!32190)) b!160483))

(assert (=> b!160483 m!149537))

(assert (=> b!160071 d!39381))

(declare-fun d!39385 () Bool)

(declare-fun lt!48389 () Int)

(assert (=> d!39385 (>= lt!48389 0)))

(declare-fun e!96507 () Int)

(assert (=> d!39385 (= lt!48389 e!96507)))

(declare-fun c!32191 () Bool)

(assert (=> d!39385 (= c!32191 ((_ is Nil!2746) lt!47935))))

(assert (=> d!39385 (= (size!2323 lt!47935) lt!48389)))

(declare-fun b!160484 () Bool)

(assert (=> b!160484 (= e!96507 0)))

(declare-fun b!160485 () Bool)

(assert (=> b!160485 (= e!96507 (+ 1 (size!2323 (t!25820 lt!47935))))))

(assert (= (and d!39385 c!32191) b!160484))

(assert (= (and d!39385 (not c!32191)) b!160485))

(declare-fun m!149585 () Bool)

(assert (=> b!160485 m!149585))

(assert (=> b!160071 d!39385))

(declare-fun d!39387 () Bool)

(declare-fun lt!48390 () Int)

(assert (=> d!39387 (>= lt!48390 0)))

(declare-fun e!96508 () Int)

(assert (=> d!39387 (= lt!48390 e!96508)))

(declare-fun c!32192 () Bool)

(assert (=> d!39387 (= c!32192 ((_ is Nil!2746) (originalCharacters!526 (h!8144 tokens!465))))))

(assert (=> d!39387 (= (size!2323 (originalCharacters!526 (h!8144 tokens!465))) lt!48390)))

(declare-fun b!160486 () Bool)

(assert (=> b!160486 (= e!96508 0)))

(declare-fun b!160487 () Bool)

(assert (=> b!160487 (= e!96508 (+ 1 (size!2323 (t!25820 (originalCharacters!526 (h!8144 tokens!465))))))))

(assert (= (and d!39387 c!32192) b!160486))

(assert (= (and d!39387 (not c!32192)) b!160487))

(declare-fun m!149587 () Bool)

(assert (=> b!160487 m!149587))

(assert (=> b!160051 d!39387))

(declare-fun b!160489 () Bool)

(declare-fun e!96510 () List!2756)

(assert (=> b!160489 (= e!96510 (Cons!2746 (h!8143 call!6769) (++!608 (t!25820 call!6769) lt!48094)))))

(declare-fun b!160491 () Bool)

(declare-fun lt!48391 () List!2756)

(declare-fun e!96509 () Bool)

(assert (=> b!160491 (= e!96509 (or (not (= lt!48094 Nil!2746)) (= lt!48391 call!6769)))))

(declare-fun b!160488 () Bool)

(assert (=> b!160488 (= e!96510 lt!48094)))

(declare-fun b!160490 () Bool)

(declare-fun res!72795 () Bool)

(assert (=> b!160490 (=> (not res!72795) (not e!96509))))

(assert (=> b!160490 (= res!72795 (= (size!2323 lt!48391) (+ (size!2323 call!6769) (size!2323 lt!48094))))))

(declare-fun d!39389 () Bool)

(assert (=> d!39389 e!96509))

(declare-fun res!72794 () Bool)

(assert (=> d!39389 (=> (not res!72794) (not e!96509))))

(assert (=> d!39389 (= res!72794 (= (content!383 lt!48391) ((_ map or) (content!383 call!6769) (content!383 lt!48094))))))

(assert (=> d!39389 (= lt!48391 e!96510)))

(declare-fun c!32193 () Bool)

(assert (=> d!39389 (= c!32193 ((_ is Nil!2746) call!6769))))

(assert (=> d!39389 (= (++!608 call!6769 lt!48094) lt!48391)))

(assert (= (and d!39389 c!32193) b!160488))

(assert (= (and d!39389 (not c!32193)) b!160489))

(assert (= (and d!39389 res!72794) b!160490))

(assert (= (and b!160490 res!72795) b!160491))

(declare-fun m!149589 () Bool)

(assert (=> b!160489 m!149589))

(declare-fun m!149591 () Bool)

(assert (=> b!160490 m!149591))

(declare-fun m!149593 () Bool)

(assert (=> b!160490 m!149593))

(declare-fun m!149595 () Bool)

(assert (=> b!160490 m!149595))

(declare-fun m!149597 () Bool)

(assert (=> d!39389 m!149597))

(declare-fun m!149599 () Bool)

(assert (=> d!39389 m!149599))

(declare-fun m!149601 () Bool)

(assert (=> d!39389 m!149601))

(assert (=> b!160022 d!39389))

(declare-fun d!39391 () Bool)

(assert (=> d!39391 (= (inv!17 (value!18081 (h!8144 tokens!465))) (= (charsToBigInt!1 (text!3983 (value!18081 (h!8144 tokens!465)))) (value!18073 (value!18081 (h!8144 tokens!465)))))))

(declare-fun bs!15083 () Bool)

(assert (= bs!15083 d!39391))

(declare-fun m!149603 () Bool)

(assert (=> bs!15083 m!149603))

(assert (=> b!160114 d!39391))

(declare-fun b!160507 () Bool)

(declare-fun e!96518 () List!2756)

(declare-fun e!96519 () List!2756)

(assert (=> b!160507 (= e!96518 e!96519)))

(declare-fun c!32202 () Bool)

(assert (=> b!160507 (= c!32202 ((_ is Leaf!1369) (c!32021 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0))))))

(declare-fun b!160509 () Bool)

(assert (=> b!160509 (= e!96519 (++!608 (list!988 (left!2072 (c!32021 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0)))) (list!988 (right!2402 (c!32021 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0))))))))

(declare-fun d!39393 () Bool)

(declare-fun c!32201 () Bool)

(assert (=> d!39393 (= c!32201 ((_ is Empty!788) (c!32021 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0))))))

(assert (=> d!39393 (= (list!988 (c!32021 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0))) e!96518)))

(declare-fun b!160506 () Bool)

(assert (=> b!160506 (= e!96518 Nil!2746)))

(declare-fun b!160508 () Bool)

(declare-fun list!992 (IArray!1577) List!2756)

(assert (=> b!160508 (= e!96519 (list!992 (xs!3383 (c!32021 (printWithSeparatorTokenWhenNeededRec!52 thiss!17480 rules!1920 lt!47931 separatorToken!170 0)))))))

(assert (= (and d!39393 c!32201) b!160506))

(assert (= (and d!39393 (not c!32201)) b!160507))

(assert (= (and b!160507 c!32202) b!160508))

(assert (= (and b!160507 (not c!32202)) b!160509))

(declare-fun m!149609 () Bool)

(assert (=> b!160509 m!149609))

(declare-fun m!149611 () Bool)

(assert (=> b!160509 m!149611))

(assert (=> b!160509 m!149609))

(assert (=> b!160509 m!149611))

(declare-fun m!149613 () Bool)

(assert (=> b!160509 m!149613))

(declare-fun m!149615 () Bool)

(assert (=> b!160508 m!149615))

(assert (=> d!39117 d!39393))

(declare-fun bs!15086 () Bool)

(declare-fun d!39399 () Bool)

(assert (= bs!15086 (and d!39399 d!39363)))

(declare-fun lambda!4368 () Int)

(assert (=> bs!15086 (= (and (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (h!8145 rules!1920)))) (= (toValue!1134 (transformation!483 (rule!990 separatorToken!170))) (toValue!1134 (transformation!483 (h!8145 rules!1920))))) (= lambda!4368 lambda!4366))))

(assert (=> d!39399 true))

(assert (=> d!39399 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) (dynLambda!993 order!1413 lambda!4368))))

(assert (=> d!39399 true))

(assert (=> d!39399 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))) (dynLambda!993 order!1413 lambda!4368))))

(assert (=> d!39399 (= (semiInverseModEq!169 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))) (Forall!130 lambda!4368))))

(declare-fun bs!15088 () Bool)

(assert (= bs!15088 d!39399))

(declare-fun m!149617 () Bool)

(assert (=> bs!15088 m!149617))

(assert (=> d!39201 d!39399))

(declare-fun d!39401 () Bool)

(assert (=> d!39401 (= (inv!3558 (tag!661 (h!8145 (t!25822 rules!1920)))) (= (mod (str.len (value!18080 (tag!661 (h!8145 (t!25822 rules!1920))))) 2) 0))))

(assert (=> b!160148 d!39401))

(declare-fun d!39405 () Bool)

(declare-fun res!72796 () Bool)

(declare-fun e!96520 () Bool)

(assert (=> d!39405 (=> (not res!72796) (not e!96520))))

(assert (=> d!39405 (= res!72796 (semiInverseModEq!169 (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toValue!1134 (transformation!483 (h!8145 (t!25822 rules!1920))))))))

(assert (=> d!39405 (= (inv!3561 (transformation!483 (h!8145 (t!25822 rules!1920)))) e!96520)))

(declare-fun b!160510 () Bool)

(assert (=> b!160510 (= e!96520 (equivClasses!152 (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toValue!1134 (transformation!483 (h!8145 (t!25822 rules!1920))))))))

(assert (= (and d!39405 res!72796) b!160510))

(declare-fun m!149623 () Bool)

(assert (=> d!39405 m!149623))

(declare-fun m!149625 () Bool)

(assert (=> b!160510 m!149625))

(assert (=> b!160148 d!39405))

(declare-fun d!39409 () Bool)

(declare-fun res!72797 () Bool)

(declare-fun e!96521 () Bool)

(assert (=> d!39409 (=> res!72797 e!96521)))

(assert (=> d!39409 (= res!72797 ((_ is Nil!2747) (list!989 lt!47937)))))

(assert (=> d!39409 (= (forall!500 (list!989 lt!47937) lambda!4330) e!96521)))

(declare-fun b!160511 () Bool)

(declare-fun e!96522 () Bool)

(assert (=> b!160511 (= e!96521 e!96522)))

(declare-fun res!72798 () Bool)

(assert (=> b!160511 (=> (not res!72798) (not e!96522))))

(assert (=> b!160511 (= res!72798 (dynLambda!991 lambda!4330 (h!8144 (list!989 lt!47937))))))

(declare-fun b!160512 () Bool)

(assert (=> b!160512 (= e!96522 (forall!500 (t!25821 (list!989 lt!47937)) lambda!4330))))

(assert (= (and d!39409 (not res!72797)) b!160511))

(assert (= (and b!160511 res!72798) b!160512))

(declare-fun b_lambda!3331 () Bool)

(assert (=> (not b_lambda!3331) (not b!160511)))

(declare-fun m!149627 () Bool)

(assert (=> b!160511 m!149627))

(declare-fun m!149629 () Bool)

(assert (=> b!160512 m!149629))

(assert (=> d!39095 d!39409))

(declare-fun d!39411 () Bool)

(assert (=> d!39411 (= (list!989 lt!47937) (list!990 (c!32023 lt!47937)))))

(declare-fun bs!15091 () Bool)

(assert (= bs!15091 d!39411))

(declare-fun m!149631 () Bool)

(assert (=> bs!15091 m!149631))

(assert (=> d!39095 d!39411))

(declare-fun d!39413 () Bool)

(declare-fun lt!48398 () Bool)

(assert (=> d!39413 (= lt!48398 (forall!500 (list!989 lt!47937) lambda!4330))))

(assert (=> d!39413 (= lt!48398 (forall!503 (c!32023 lt!47937) lambda!4330))))

(assert (=> d!39413 (= (forall!501 lt!47937 lambda!4330) lt!48398)))

(declare-fun bs!15092 () Bool)

(assert (= bs!15092 d!39413))

(assert (=> bs!15092 m!148513))

(assert (=> bs!15092 m!148513))

(assert (=> bs!15092 m!148515))

(declare-fun m!149633 () Bool)

(assert (=> bs!15092 m!149633))

(assert (=> d!39095 d!39413))

(assert (=> d!39095 d!39157))

(declare-fun d!39415 () Bool)

(declare-fun res!72799 () Bool)

(declare-fun e!96523 () Bool)

(assert (=> d!39415 (=> res!72799 e!96523)))

(assert (=> d!39415 (= res!72799 ((_ is Nil!2747) (list!989 lt!47931)))))

(assert (=> d!39415 (= (forall!500 (list!989 lt!47931) lambda!4353) e!96523)))

(declare-fun b!160513 () Bool)

(declare-fun e!96524 () Bool)

(assert (=> b!160513 (= e!96523 e!96524)))

(declare-fun res!72800 () Bool)

(assert (=> b!160513 (=> (not res!72800) (not e!96524))))

(assert (=> b!160513 (= res!72800 (dynLambda!991 lambda!4353 (h!8144 (list!989 lt!47931))))))

(declare-fun b!160514 () Bool)

(assert (=> b!160514 (= e!96524 (forall!500 (t!25821 (list!989 lt!47931)) lambda!4353))))

(assert (= (and d!39415 (not res!72799)) b!160513))

(assert (= (and b!160513 res!72800) b!160514))

(declare-fun b_lambda!3333 () Bool)

(assert (=> (not b_lambda!3333) (not b!160513)))

(declare-fun m!149635 () Bool)

(assert (=> b!160513 m!149635))

(declare-fun m!149637 () Bool)

(assert (=> b!160514 m!149637))

(assert (=> d!39165 d!39415))

(assert (=> d!39165 d!39269))

(declare-fun d!39417 () Bool)

(declare-fun lt!48399 () Bool)

(assert (=> d!39417 (= lt!48399 (forall!500 (list!989 lt!47931) lambda!4353))))

(assert (=> d!39417 (= lt!48399 (forall!503 (c!32023 lt!47931) lambda!4353))))

(assert (=> d!39417 (= (forall!501 lt!47931 lambda!4353) lt!48399)))

(declare-fun bs!15093 () Bool)

(assert (= bs!15093 d!39417))

(assert (=> bs!15093 m!148577))

(assert (=> bs!15093 m!148577))

(assert (=> bs!15093 m!148789))

(declare-fun m!149639 () Bool)

(assert (=> bs!15093 m!149639))

(assert (=> d!39165 d!39417))

(assert (=> d!39165 d!39157))

(declare-fun d!39419 () Bool)

(declare-fun c!32205 () Bool)

(assert (=> d!39419 (= c!32205 ((_ is Nil!2746) lt!48110))))

(declare-fun e!96527 () (InoxSet C!2336))

(assert (=> d!39419 (= (content!383 lt!48110) e!96527)))

(declare-fun b!160519 () Bool)

(assert (=> b!160519 (= e!96527 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!160520 () Bool)

(assert (=> b!160520 (= e!96527 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!48110) true) (content!383 (t!25820 lt!48110))))))

(assert (= (and d!39419 c!32205) b!160519))

(assert (= (and d!39419 (not c!32205)) b!160520))

(declare-fun m!149645 () Bool)

(assert (=> b!160520 m!149645))

(declare-fun m!149647 () Bool)

(assert (=> b!160520 m!149647))

(assert (=> d!39187 d!39419))

(declare-fun d!39425 () Bool)

(declare-fun c!32206 () Bool)

(assert (=> d!39425 (= c!32206 ((_ is Nil!2746) (++!608 lt!47936 lt!47935)))))

(declare-fun e!96528 () (InoxSet C!2336))

(assert (=> d!39425 (= (content!383 (++!608 lt!47936 lt!47935)) e!96528)))

(declare-fun b!160521 () Bool)

(assert (=> b!160521 (= e!96528 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!160522 () Bool)

(assert (=> b!160522 (= e!96528 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 (++!608 lt!47936 lt!47935)) true) (content!383 (t!25820 (++!608 lt!47936 lt!47935)))))))

(assert (= (and d!39425 c!32206) b!160521))

(assert (= (and d!39425 (not c!32206)) b!160522))

(declare-fun m!149649 () Bool)

(assert (=> b!160522 m!149649))

(declare-fun m!149651 () Bool)

(assert (=> b!160522 m!149651))

(assert (=> d!39187 d!39425))

(declare-fun d!39427 () Bool)

(declare-fun c!32207 () Bool)

(assert (=> d!39427 (= c!32207 ((_ is Nil!2746) lt!47938))))

(declare-fun e!96529 () (InoxSet C!2336))

(assert (=> d!39427 (= (content!383 lt!47938) e!96529)))

(declare-fun b!160523 () Bool)

(assert (=> b!160523 (= e!96529 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!160524 () Bool)

(assert (=> b!160524 (= e!96529 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!47938) true) (content!383 (t!25820 lt!47938))))))

(assert (= (and d!39427 c!32207) b!160523))

(assert (= (and d!39427 (not c!32207)) b!160524))

(declare-fun m!149653 () Bool)

(assert (=> b!160524 m!149653))

(declare-fun m!149655 () Bool)

(assert (=> b!160524 m!149655))

(assert (=> d!39187 d!39427))

(assert (=> b!160087 d!39175))

(declare-fun d!39429 () Bool)

(declare-fun lt!48404 () Int)

(assert (=> d!39429 (>= lt!48404 0)))

(declare-fun e!96534 () Int)

(assert (=> d!39429 (= lt!48404 e!96534)))

(declare-fun c!32210 () Bool)

(assert (=> d!39429 (= c!32210 ((_ is Nil!2747) (list!989 lt!47937)))))

(assert (=> d!39429 (= (size!2324 (list!989 lt!47937)) lt!48404)))

(declare-fun b!160531 () Bool)

(assert (=> b!160531 (= e!96534 0)))

(declare-fun b!160532 () Bool)

(assert (=> b!160532 (= e!96534 (+ 1 (size!2324 (t!25821 (list!989 lt!47937)))))))

(assert (= (and d!39429 c!32210) b!160531))

(assert (= (and d!39429 (not c!32210)) b!160532))

(declare-fun m!149657 () Bool)

(assert (=> b!160532 m!149657))

(assert (=> d!39181 d!39429))

(assert (=> d!39181 d!39411))

(declare-fun d!39431 () Bool)

(declare-fun lt!48408 () Int)

(assert (=> d!39431 (= lt!48408 (size!2324 (list!990 (c!32023 lt!47937))))))

(assert (=> d!39431 (= lt!48408 (ite ((_ is Empty!789) (c!32023 lt!47937)) 0 (ite ((_ is Leaf!1370) (c!32023 lt!47937)) (csize!1809 (c!32023 lt!47937)) (csize!1808 (c!32023 lt!47937)))))))

(assert (=> d!39431 (= (size!2325 (c!32023 lt!47937)) lt!48408)))

(declare-fun bs!15099 () Bool)

(assert (= bs!15099 d!39431))

(assert (=> bs!15099 m!149631))

(assert (=> bs!15099 m!149631))

(declare-fun m!149677 () Bool)

(assert (=> bs!15099 m!149677))

(assert (=> d!39181 d!39431))

(declare-fun d!39445 () Bool)

(assert (=> d!39445 (= (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))) (isBalanced!222 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))))))

(declare-fun bs!15100 () Bool)

(assert (= bs!15100 d!39445))

(declare-fun m!149679 () Bool)

(assert (=> bs!15100 m!149679))

(assert (=> tb!5797 d!39445))

(declare-fun d!39447 () Bool)

(assert (=> d!39447 (= (list!985 (ite c!32105 call!6772 call!6775)) (list!988 (c!32021 (ite c!32105 call!6772 call!6775))))))

(declare-fun bs!15101 () Bool)

(assert (= bs!15101 d!39447))

(declare-fun m!149681 () Bool)

(assert (=> bs!15101 m!149681))

(assert (=> bm!6769 d!39447))

(declare-fun b!160539 () Bool)

(declare-fun res!72807 () Bool)

(declare-fun e!96538 () Bool)

(assert (=> b!160539 (=> (not res!72807) (not e!96538))))

(assert (=> b!160539 (= res!72807 (<= (height!84 (++!612 (c!32021 call!6745) (c!32021 lt!48048))) (+ (max!0 (height!84 (c!32021 call!6745)) (height!84 (c!32021 lt!48048))) 1)))))

(declare-fun b!160540 () Bool)

(declare-fun res!72805 () Bool)

(assert (=> b!160540 (=> (not res!72805) (not e!96538))))

(assert (=> b!160540 (= res!72805 (>= (height!84 (++!612 (c!32021 call!6745) (c!32021 lt!48048))) (max!0 (height!84 (c!32021 call!6745)) (height!84 (c!32021 lt!48048)))))))

(declare-fun d!39449 () Bool)

(assert (=> d!39449 e!96538))

(declare-fun res!72806 () Bool)

(assert (=> d!39449 (=> (not res!72806) (not e!96538))))

(assert (=> d!39449 (= res!72806 (appendAssocInst!25 (c!32021 call!6745) (c!32021 lt!48048)))))

(declare-fun lt!48409 () BalanceConc!1584)

(assert (=> d!39449 (= lt!48409 (BalanceConc!1585 (++!612 (c!32021 call!6745) (c!32021 lt!48048))))))

(assert (=> d!39449 (= (++!610 call!6745 lt!48048) lt!48409)))

(declare-fun b!160538 () Bool)

(declare-fun res!72804 () Bool)

(assert (=> b!160538 (=> (not res!72804) (not e!96538))))

(assert (=> b!160538 (= res!72804 (isBalanced!222 (++!612 (c!32021 call!6745) (c!32021 lt!48048))))))

(declare-fun b!160541 () Bool)

(assert (=> b!160541 (= e!96538 (= (list!985 lt!48409) (++!608 (list!985 call!6745) (list!985 lt!48048))))))

(assert (= (and d!39449 res!72806) b!160538))

(assert (= (and b!160538 res!72804) b!160539))

(assert (= (and b!160539 res!72807) b!160540))

(assert (= (and b!160540 res!72805) b!160541))

(declare-fun m!149683 () Bool)

(assert (=> b!160540 m!149683))

(assert (=> b!160540 m!149683))

(assert (=> b!160540 m!149225))

(declare-fun m!149685 () Bool)

(assert (=> b!160540 m!149685))

(assert (=> b!160540 m!149225))

(declare-fun m!149687 () Bool)

(assert (=> b!160540 m!149687))

(assert (=> b!160540 m!149687))

(declare-fun m!149689 () Bool)

(assert (=> b!160540 m!149689))

(declare-fun m!149691 () Bool)

(assert (=> d!39449 m!149691))

(assert (=> d!39449 m!149687))

(assert (=> b!160538 m!149687))

(assert (=> b!160538 m!149687))

(declare-fun m!149693 () Bool)

(assert (=> b!160538 m!149693))

(declare-fun m!149695 () Bool)

(assert (=> b!160541 m!149695))

(declare-fun m!149697 () Bool)

(assert (=> b!160541 m!149697))

(assert (=> b!160541 m!148543))

(assert (=> b!160541 m!149697))

(assert (=> b!160541 m!148543))

(declare-fun m!149699 () Bool)

(assert (=> b!160541 m!149699))

(assert (=> b!160539 m!149683))

(assert (=> b!160539 m!149683))

(assert (=> b!160539 m!149225))

(assert (=> b!160539 m!149685))

(assert (=> b!160539 m!149225))

(assert (=> b!160539 m!149687))

(assert (=> b!160539 m!149687))

(assert (=> b!160539 m!149689))

(assert (=> b!159891 d!39449))

(declare-fun d!39451 () Bool)

(declare-fun lt!48412 () Int)

(assert (=> d!39451 (>= lt!48412 0)))

(declare-fun e!96541 () Int)

(assert (=> d!39451 (= lt!48412 e!96541)))

(declare-fun c!32213 () Bool)

(assert (=> d!39451 (= c!32213 ((_ is Nil!2746) lt!48100))))

(assert (=> d!39451 (= (size!2323 lt!48100) lt!48412)))

(declare-fun b!160544 () Bool)

(assert (=> b!160544 (= e!96541 0)))

(declare-fun b!160545 () Bool)

(assert (=> b!160545 (= e!96541 (+ 1 (size!2323 (t!25820 lt!48100))))))

(assert (= (and d!39451 c!32213) b!160544))

(assert (= (and d!39451 (not c!32213)) b!160545))

(declare-fun m!149701 () Bool)

(assert (=> b!160545 m!149701))

(assert (=> b!160067 d!39451))

(assert (=> b!160067 d!39385))

(declare-fun d!39453 () Bool)

(declare-fun lt!48413 () Int)

(assert (=> d!39453 (>= lt!48413 0)))

(declare-fun e!96542 () Int)

(assert (=> d!39453 (= lt!48413 e!96542)))

(declare-fun c!32214 () Bool)

(assert (=> d!39453 (= c!32214 ((_ is Nil!2746) lt!47938))))

(assert (=> d!39453 (= (size!2323 lt!47938) lt!48413)))

(declare-fun b!160546 () Bool)

(assert (=> b!160546 (= e!96542 0)))

(declare-fun b!160547 () Bool)

(assert (=> b!160547 (= e!96542 (+ 1 (size!2323 (t!25820 lt!47938))))))

(assert (= (and d!39453 c!32214) b!160546))

(assert (= (and d!39453 (not c!32214)) b!160547))

(declare-fun m!149703 () Bool)

(assert (=> b!160547 m!149703))

(assert (=> b!160067 d!39453))

(declare-fun d!39455 () Bool)

(assert (=> d!39455 (= (isEmpty!1110 (originalCharacters!526 (h!8144 tokens!465))) ((_ is Nil!2746) (originalCharacters!526 (h!8144 tokens!465))))))

(assert (=> d!39163 d!39455))

(declare-fun d!39457 () Bool)

(assert (=> d!39457 (= (list!985 lt!48109) (list!988 (c!32021 lt!48109)))))

(declare-fun bs!15102 () Bool)

(assert (= bs!15102 d!39457))

(declare-fun m!149705 () Bool)

(assert (=> bs!15102 m!149705))

(assert (=> d!39185 d!39457))

(declare-fun d!39459 () Bool)

(declare-fun lt!48418 () Bool)

(assert (=> d!39459 (= lt!48418 (isEmpty!1110 (list!985 (_2!1545 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)))))))))

(declare-fun isEmpty!1116 (Conc!788) Bool)

(assert (=> d!39459 (= lt!48418 (isEmpty!1116 (c!32021 (_2!1545 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)))))))))

(assert (=> d!39459 (= (isEmpty!1112 (_2!1545 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170))))) lt!48418)))

(declare-fun bs!15103 () Bool)

(assert (= bs!15103 d!39459))

(declare-fun m!149729 () Bool)

(assert (=> bs!15103 m!149729))

(assert (=> bs!15103 m!149729))

(declare-fun m!149731 () Bool)

(assert (=> bs!15103 m!149731))

(declare-fun m!149733 () Bool)

(assert (=> bs!15103 m!149733))

(assert (=> b!160112 d!39459))

(declare-fun b!160602 () Bool)

(declare-fun e!96581 () Bool)

(declare-fun e!96582 () Bool)

(assert (=> b!160602 (= e!96581 e!96582)))

(declare-fun res!72847 () Bool)

(declare-fun lt!48459 () tuple2!2658)

(declare-fun size!2326 (BalanceConc!1584) Int)

(assert (=> b!160602 (= res!72847 (< (size!2326 (_2!1545 lt!48459)) (size!2326 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)))))))

(assert (=> b!160602 (=> (not res!72847) (not e!96582))))

(declare-fun b!160603 () Bool)

(assert (=> b!160603 (= e!96581 (= (_2!1545 lt!48459) (print!104 thiss!17480 (singletonSeq!37 separatorToken!170))))))

(declare-fun b!160604 () Bool)

(declare-fun res!72845 () Bool)

(declare-fun e!96583 () Bool)

(assert (=> b!160604 (=> (not res!72845) (not e!96583))))

(declare-datatypes ((tuple2!2660 0))(
  ( (tuple2!2661 (_1!1546 List!2757) (_2!1546 List!2756)) )
))
(declare-fun lexList!102 (LexerInterface!369 List!2758 List!2756) tuple2!2660)

(assert (=> b!160604 (= res!72845 (= (list!989 (_1!1545 lt!48459)) (_1!1546 (lexList!102 thiss!17480 rules!1920 (list!985 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)))))))))

(declare-fun d!39465 () Bool)

(assert (=> d!39465 e!96583))

(declare-fun res!72846 () Bool)

(assert (=> d!39465 (=> (not res!72846) (not e!96583))))

(assert (=> d!39465 (= res!72846 e!96581)))

(declare-fun c!32223 () Bool)

(assert (=> d!39465 (= c!32223 (> (size!2319 (_1!1545 lt!48459)) 0))))

(declare-fun lexTailRecV2!89 (LexerInterface!369 List!2758 BalanceConc!1584 BalanceConc!1584 BalanceConc!1584 BalanceConc!1586) tuple2!2658)

(assert (=> d!39465 (= lt!48459 (lexTailRecV2!89 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)) (BalanceConc!1585 Empty!788) (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)) (BalanceConc!1587 Empty!789)))))

(assert (=> d!39465 (= (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170))) lt!48459)))

(declare-fun b!160605 () Bool)

(assert (=> b!160605 (= e!96583 (= (list!985 (_2!1545 lt!48459)) (_2!1546 (lexList!102 thiss!17480 rules!1920 (list!985 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)))))))))

(declare-fun b!160606 () Bool)

(declare-fun isEmpty!1117 (BalanceConc!1586) Bool)

(assert (=> b!160606 (= e!96582 (not (isEmpty!1117 (_1!1545 lt!48459))))))

(assert (= (and d!39465 c!32223) b!160602))

(assert (= (and d!39465 (not c!32223)) b!160603))

(assert (= (and b!160602 res!72847) b!160606))

(assert (= (and d!39465 res!72846) b!160604))

(assert (= (and b!160604 res!72845) b!160605))

(declare-fun m!149817 () Bool)

(assert (=> b!160606 m!149817))

(declare-fun m!149825 () Bool)

(assert (=> b!160604 m!149825))

(assert (=> b!160604 m!148907))

(declare-fun m!149829 () Bool)

(assert (=> b!160604 m!149829))

(assert (=> b!160604 m!149829))

(declare-fun m!149833 () Bool)

(assert (=> b!160604 m!149833))

(declare-fun m!149835 () Bool)

(assert (=> b!160605 m!149835))

(assert (=> b!160605 m!148907))

(assert (=> b!160605 m!149829))

(assert (=> b!160605 m!149829))

(assert (=> b!160605 m!149833))

(declare-fun m!149837 () Bool)

(assert (=> b!160602 m!149837))

(assert (=> b!160602 m!148907))

(declare-fun m!149841 () Bool)

(assert (=> b!160602 m!149841))

(declare-fun m!149843 () Bool)

(assert (=> d!39465 m!149843))

(assert (=> d!39465 m!148907))

(assert (=> d!39465 m!148907))

(declare-fun m!149845 () Bool)

(assert (=> d!39465 m!149845))

(assert (=> b!160112 d!39465))

(declare-fun d!39475 () Bool)

(declare-fun lt!48460 () BalanceConc!1584)

(assert (=> d!39475 (= (list!985 lt!48460) (printList!58 thiss!17480 (list!989 (singletonSeq!37 separatorToken!170))))))

(assert (=> d!39475 (= lt!48460 (printTailRec!67 thiss!17480 (singletonSeq!37 separatorToken!170) 0 (BalanceConc!1585 Empty!788)))))

(assert (=> d!39475 (= (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)) lt!48460)))

(declare-fun bs!15120 () Bool)

(assert (= bs!15120 d!39475))

(declare-fun m!149847 () Bool)

(assert (=> bs!15120 m!149847))

(assert (=> bs!15120 m!148903))

(assert (=> bs!15120 m!148905))

(assert (=> bs!15120 m!148905))

(declare-fun m!149849 () Bool)

(assert (=> bs!15120 m!149849))

(assert (=> bs!15120 m!148903))

(declare-fun m!149851 () Bool)

(assert (=> bs!15120 m!149851))

(assert (=> b!160112 d!39475))

(declare-fun d!39477 () Bool)

(declare-fun e!96584 () Bool)

(assert (=> d!39477 e!96584))

(declare-fun res!72848 () Bool)

(assert (=> d!39477 (=> (not res!72848) (not e!96584))))

(declare-fun lt!48461 () BalanceConc!1586)

(assert (=> d!39477 (= res!72848 (= (list!989 lt!48461) (Cons!2747 separatorToken!170 Nil!2747)))))

(assert (=> d!39477 (= lt!48461 (singleton!26 separatorToken!170))))

(assert (=> d!39477 (= (singletonSeq!37 separatorToken!170) lt!48461)))

(declare-fun b!160607 () Bool)

(assert (=> b!160607 (= e!96584 (isBalanced!223 (c!32023 lt!48461)))))

(assert (= (and d!39477 res!72848) b!160607))

(declare-fun m!149853 () Bool)

(assert (=> d!39477 m!149853))

(declare-fun m!149855 () Bool)

(assert (=> d!39477 m!149855))

(declare-fun m!149857 () Bool)

(assert (=> b!160607 m!149857))

(assert (=> b!160112 d!39477))

(declare-fun d!39479 () Bool)

(declare-fun res!72849 () Bool)

(declare-fun e!96585 () Bool)

(assert (=> d!39479 (=> res!72849 e!96585)))

(assert (=> d!39479 (= res!72849 ((_ is Nil!2747) (list!989 lt!47937)))))

(assert (=> d!39479 (= (forall!500 (list!989 lt!47937) lambda!4322) e!96585)))

(declare-fun b!160608 () Bool)

(declare-fun e!96586 () Bool)

(assert (=> b!160608 (= e!96585 e!96586)))

(declare-fun res!72850 () Bool)

(assert (=> b!160608 (=> (not res!72850) (not e!96586))))

(assert (=> b!160608 (= res!72850 (dynLambda!991 lambda!4322 (h!8144 (list!989 lt!47937))))))

(declare-fun b!160609 () Bool)

(assert (=> b!160609 (= e!96586 (forall!500 (t!25821 (list!989 lt!47937)) lambda!4322))))

(assert (= (and d!39479 (not res!72849)) b!160608))

(assert (= (and b!160608 res!72850) b!160609))

(declare-fun b_lambda!3337 () Bool)

(assert (=> (not b_lambda!3337) (not b!160608)))

(declare-fun m!149859 () Bool)

(assert (=> b!160608 m!149859))

(declare-fun m!149861 () Bool)

(assert (=> b!160609 m!149861))

(assert (=> d!39195 d!39479))

(assert (=> d!39195 d!39411))

(declare-fun b!160648 () Bool)

(declare-fun e!96610 () Bool)

(assert (=> b!160648 (= e!96610 (forall!503 (right!2403 (c!32023 lt!47937)) lambda!4322))))

(declare-fun b!160647 () Bool)

(declare-fun e!96608 () Bool)

(assert (=> b!160647 (= e!96608 e!96610)))

(declare-fun lt!48470 () Unit!2232)

(declare-fun lemmaForallConcat!10 (List!2757 List!2757 Int) Unit!2232)

(assert (=> b!160647 (= lt!48470 (lemmaForallConcat!10 (list!990 (left!2073 (c!32023 lt!47937))) (list!990 (right!2403 (c!32023 lt!47937))) lambda!4322))))

(declare-fun res!72859 () Bool)

(assert (=> b!160647 (= res!72859 (forall!503 (left!2073 (c!32023 lt!47937)) lambda!4322))))

(assert (=> b!160647 (=> (not res!72859) (not e!96610))))

(declare-fun d!39481 () Bool)

(declare-fun lt!48469 () Bool)

(assert (=> d!39481 (= lt!48469 (forall!500 (list!990 (c!32023 lt!47937)) lambda!4322))))

(declare-fun e!96609 () Bool)

(assert (=> d!39481 (= lt!48469 e!96609)))

(declare-fun res!72858 () Bool)

(assert (=> d!39481 (=> res!72858 e!96609)))

(assert (=> d!39481 (= res!72858 ((_ is Empty!789) (c!32023 lt!47937)))))

(assert (=> d!39481 (= (forall!503 (c!32023 lt!47937) lambda!4322) lt!48469)))

(declare-fun b!160646 () Bool)

(declare-fun forall!505 (IArray!1579 Int) Bool)

(assert (=> b!160646 (= e!96608 (forall!505 (xs!3384 (c!32023 lt!47937)) lambda!4322))))

(declare-fun b!160645 () Bool)

(assert (=> b!160645 (= e!96609 e!96608)))

(declare-fun c!32238 () Bool)

(assert (=> b!160645 (= c!32238 ((_ is Leaf!1370) (c!32023 lt!47937)))))

(assert (= (and d!39481 (not res!72858)) b!160645))

(assert (= (and b!160645 c!32238) b!160646))

(assert (= (and b!160645 (not c!32238)) b!160647))

(assert (= (and b!160647 res!72859) b!160648))

(declare-fun m!149871 () Bool)

(assert (=> b!160648 m!149871))

(declare-fun m!149873 () Bool)

(assert (=> b!160647 m!149873))

(declare-fun m!149875 () Bool)

(assert (=> b!160647 m!149875))

(assert (=> b!160647 m!149873))

(assert (=> b!160647 m!149875))

(declare-fun m!149877 () Bool)

(assert (=> b!160647 m!149877))

(declare-fun m!149879 () Bool)

(assert (=> b!160647 m!149879))

(assert (=> d!39481 m!149631))

(assert (=> d!39481 m!149631))

(declare-fun m!149881 () Bool)

(assert (=> d!39481 m!149881))

(declare-fun m!149883 () Bool)

(assert (=> b!160646 m!149883))

(assert (=> d!39195 d!39481))

(declare-fun d!39485 () Bool)

(declare-fun lt!48471 () Int)

(assert (=> d!39485 (= lt!48471 (size!2324 (list!989 lt!47931)))))

(assert (=> d!39485 (= lt!48471 (size!2325 (c!32023 lt!47931)))))

(assert (=> d!39485 (= (size!2319 lt!47931) lt!48471)))

(declare-fun bs!15121 () Bool)

(assert (= bs!15121 d!39485))

(assert (=> bs!15121 m!148577))

(assert (=> bs!15121 m!148577))

(declare-fun m!149885 () Bool)

(assert (=> bs!15121 m!149885))

(declare-fun m!149887 () Bool)

(assert (=> bs!15121 m!149887))

(assert (=> b!159893 d!39485))

(declare-fun b!160650 () Bool)

(declare-fun e!96611 () List!2756)

(declare-fun e!96612 () List!2756)

(assert (=> b!160650 (= e!96611 e!96612)))

(declare-fun c!32240 () Bool)

(assert (=> b!160650 (= c!32240 ((_ is Leaf!1369) (c!32021 (seqFromList!343 lt!47930))))))

(declare-fun b!160652 () Bool)

(assert (=> b!160652 (= e!96612 (++!608 (list!988 (left!2072 (c!32021 (seqFromList!343 lt!47930)))) (list!988 (right!2402 (c!32021 (seqFromList!343 lt!47930))))))))

(declare-fun d!39487 () Bool)

(declare-fun c!32239 () Bool)

(assert (=> d!39487 (= c!32239 ((_ is Empty!788) (c!32021 (seqFromList!343 lt!47930))))))

(assert (=> d!39487 (= (list!988 (c!32021 (seqFromList!343 lt!47930))) e!96611)))

(declare-fun b!160649 () Bool)

(assert (=> b!160649 (= e!96611 Nil!2746)))

(declare-fun b!160651 () Bool)

(assert (=> b!160651 (= e!96612 (list!992 (xs!3383 (c!32021 (seqFromList!343 lt!47930)))))))

(assert (= (and d!39487 c!32239) b!160649))

(assert (= (and d!39487 (not c!32239)) b!160650))

(assert (= (and b!160650 c!32240) b!160651))

(assert (= (and b!160650 (not c!32240)) b!160652))

(declare-fun m!149889 () Bool)

(assert (=> b!160652 m!149889))

(declare-fun m!149891 () Bool)

(assert (=> b!160652 m!149891))

(assert (=> b!160652 m!149889))

(assert (=> b!160652 m!149891))

(declare-fun m!149893 () Bool)

(assert (=> b!160652 m!149893))

(declare-fun m!149895 () Bool)

(assert (=> b!160651 m!149895))

(assert (=> d!39089 d!39487))

(declare-fun d!39489 () Bool)

(declare-fun lt!48472 () Bool)

(assert (=> d!39489 (= lt!48472 (isEmpty!1110 (list!985 (_2!1545 lt!48128))))))

(assert (=> d!39489 (= lt!48472 (isEmpty!1116 (c!32021 (_2!1545 lt!48128))))))

(assert (=> d!39489 (= (isEmpty!1112 (_2!1545 lt!48128)) lt!48472)))

(declare-fun bs!15122 () Bool)

(assert (= bs!15122 d!39489))

(declare-fun m!149897 () Bool)

(assert (=> bs!15122 m!149897))

(assert (=> bs!15122 m!149897))

(declare-fun m!149899 () Bool)

(assert (=> bs!15122 m!149899))

(declare-fun m!149901 () Bool)

(assert (=> bs!15122 m!149901))

(assert (=> b!160111 d!39489))

(declare-fun d!39491 () Bool)

(assert (=> d!39491 (= (inv!3558 (tag!661 (rule!990 (h!8144 (t!25821 tokens!465))))) (= (mod (str.len (value!18080 (tag!661 (rule!990 (h!8144 (t!25821 tokens!465)))))) 2) 0))))

(assert (=> b!160137 d!39491))

(declare-fun d!39493 () Bool)

(declare-fun res!72860 () Bool)

(declare-fun e!96613 () Bool)

(assert (=> d!39493 (=> (not res!72860) (not e!96613))))

(assert (=> d!39493 (= res!72860 (semiInverseModEq!169 (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toValue!1134 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))))))

(assert (=> d!39493 (= (inv!3561 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) e!96613)))

(declare-fun b!160653 () Bool)

(assert (=> b!160653 (= e!96613 (equivClasses!152 (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toValue!1134 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))))))

(assert (= (and d!39493 res!72860) b!160653))

(declare-fun m!149903 () Bool)

(assert (=> d!39493 m!149903))

(declare-fun m!149905 () Bool)

(assert (=> b!160653 m!149905))

(assert (=> b!160137 d!39493))

(declare-fun d!39495 () Bool)

(declare-fun lt!48473 () Int)

(assert (=> d!39495 (>= lt!48473 0)))

(declare-fun e!96614 () Int)

(assert (=> d!39495 (= lt!48473 e!96614)))

(declare-fun c!32241 () Bool)

(assert (=> d!39495 (= c!32241 ((_ is Nil!2746) (originalCharacters!526 separatorToken!170)))))

(assert (=> d!39495 (= (size!2323 (originalCharacters!526 separatorToken!170)) lt!48473)))

(declare-fun b!160654 () Bool)

(assert (=> b!160654 (= e!96614 0)))

(declare-fun b!160655 () Bool)

(assert (=> b!160655 (= e!96614 (+ 1 (size!2323 (t!25820 (originalCharacters!526 separatorToken!170)))))))

(assert (= (and d!39495 c!32241) b!160654))

(assert (= (and d!39495 (not c!32241)) b!160655))

(declare-fun m!149907 () Bool)

(assert (=> b!160655 m!149907))

(assert (=> b!159724 d!39495))

(declare-fun d!39497 () Bool)

(assert (=> d!39497 true))

(declare-fun lambda!4373 () Int)

(declare-fun order!1415 () Int)

(declare-fun dynLambda!994 (Int Int) Int)

(assert (=> d!39497 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))) (dynLambda!994 order!1415 lambda!4373))))

(declare-fun Forall2!105 (Int) Bool)

(assert (=> d!39497 (= (equivClasses!152 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))) (Forall2!105 lambda!4373))))

(declare-fun bs!15123 () Bool)

(assert (= bs!15123 d!39497))

(declare-fun m!149933 () Bool)

(assert (=> bs!15123 m!149933))

(assert (=> b!160103 d!39497))

(declare-fun d!39509 () Bool)

(assert (=> d!39509 (= (list!985 lt!48048) (list!988 (c!32021 lt!48048)))))

(declare-fun bs!15124 () Bool)

(assert (= bs!15124 d!39509))

(declare-fun m!149937 () Bool)

(assert (=> bs!15124 m!149937))

(assert (=> b!159888 d!39509))

(declare-fun d!39513 () Bool)

(assert (=> d!39513 (= (list!985 call!6742) (list!988 (c!32021 call!6742)))))

(declare-fun bs!15125 () Bool)

(assert (= bs!15125 d!39513))

(declare-fun m!149939 () Bool)

(assert (=> bs!15125 m!149939))

(assert (=> b!159888 d!39513))

(declare-fun b!160682 () Bool)

(declare-fun res!72869 () Bool)

(declare-fun e!96632 () Bool)

(assert (=> b!160682 (=> (not res!72869) (not e!96632))))

(declare-fun lt!48480 () Token!710)

(assert (=> b!160682 (= res!72869 (matchR!74 (regex!483 (get!748 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48480))))) (list!985 (charsOf!138 lt!48480))))))

(declare-fun b!160683 () Bool)

(assert (=> b!160683 (= e!96632 (= (rule!990 lt!48480) (get!748 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48480))))))))

(declare-fun b!160684 () Bool)

(declare-fun e!96631 () Unit!2232)

(declare-fun Unit!2252 () Unit!2232)

(assert (=> b!160684 (= e!96631 Unit!2252)))

(declare-fun lt!48493 () List!2756)

(assert (=> b!160684 (= lt!48493 (++!608 (list!985 call!6742) (list!985 lt!48048)))))

(declare-fun lt!48489 () Unit!2232)

(assert (=> b!160684 (= lt!48489 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!17 thiss!17480 (rule!990 lt!48480) rules!1920 lt!48493))))

(assert (=> b!160684 (isEmpty!1114 (maxPrefixOneRule!62 thiss!17480 (rule!990 lt!48480) lt!48493))))

(declare-fun lt!48486 () Unit!2232)

(assert (=> b!160684 (= lt!48486 lt!48489)))

(declare-fun lt!48495 () List!2756)

(assert (=> b!160684 (= lt!48495 (list!985 (charsOf!138 lt!48480)))))

(declare-fun lt!48484 () Unit!2232)

(assert (=> b!160684 (= lt!48484 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!17 thiss!17480 (rule!990 lt!48480) lt!48495 (++!608 (list!985 call!6742) (list!985 lt!48048))))))

(assert (=> b!160684 (not (matchR!74 (regex!483 (rule!990 lt!48480)) lt!48495))))

(declare-fun lt!48488 () Unit!2232)

(assert (=> b!160684 (= lt!48488 lt!48484)))

(assert (=> b!160684 false))

(declare-fun b!160685 () Bool)

(declare-fun Unit!2253 () Unit!2232)

(assert (=> b!160685 (= e!96631 Unit!2253)))

(declare-fun d!39515 () Bool)

(assert (=> d!39515 (isDefined!122 (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 call!6742) (list!985 lt!48048))))))

(declare-fun lt!48483 () Unit!2232)

(assert (=> d!39515 (= lt!48483 e!96631)))

(declare-fun c!32250 () Bool)

(assert (=> d!39515 (= c!32250 (isEmpty!1114 (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 call!6742) (list!985 lt!48048)))))))

(declare-fun lt!48494 () Unit!2232)

(declare-fun lt!48491 () Unit!2232)

(assert (=> d!39515 (= lt!48494 lt!48491)))

(assert (=> d!39515 e!96632))

(declare-fun res!72868 () Bool)

(assert (=> d!39515 (=> (not res!72868) (not e!96632))))

(assert (=> d!39515 (= res!72868 (isDefined!123 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48480)))))))

(assert (=> d!39515 (= lt!48491 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!17 thiss!17480 rules!1920 (list!985 call!6742) lt!48480))))

(declare-fun lt!48492 () Unit!2232)

(declare-fun lt!48485 () Unit!2232)

(assert (=> d!39515 (= lt!48492 lt!48485)))

(declare-fun lt!48481 () List!2756)

(assert (=> d!39515 (isPrefix!218 lt!48481 (++!608 (list!985 call!6742) (list!985 lt!48048)))))

(assert (=> d!39515 (= lt!48485 (lemmaPrefixStaysPrefixWhenAddingToSuffix!17 lt!48481 (list!985 call!6742) (list!985 lt!48048)))))

(assert (=> d!39515 (= lt!48481 (list!985 (charsOf!138 lt!48480)))))

(declare-fun lt!48496 () Unit!2232)

(declare-fun lt!48482 () Unit!2232)

(assert (=> d!39515 (= lt!48496 lt!48482)))

(declare-fun lt!48490 () List!2756)

(declare-fun lt!48487 () List!2756)

(assert (=> d!39515 (isPrefix!218 lt!48490 (++!608 lt!48490 lt!48487))))

(assert (=> d!39515 (= lt!48482 (lemmaConcatTwoListThenFirstIsPrefix!121 lt!48490 lt!48487))))

(assert (=> d!39515 (= lt!48487 (_2!1543 (get!747 (maxPrefix!119 thiss!17480 rules!1920 (list!985 call!6742)))))))

(assert (=> d!39515 (= lt!48490 (list!985 (charsOf!138 lt!48480)))))

(assert (=> d!39515 (= lt!48480 (head!592 (list!989 (_1!1545 (lex!179 thiss!17480 rules!1920 (seqFromList!343 (list!985 call!6742)))))))))

(assert (=> d!39515 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39515 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 (list!985 call!6742) (list!985 lt!48048)) lt!48483)))

(assert (= (and d!39515 res!72868) b!160682))

(assert (= (and b!160682 res!72869) b!160683))

(assert (= (and d!39515 c!32250) b!160684))

(assert (= (and d!39515 (not c!32250)) b!160685))

(declare-fun m!149941 () Bool)

(assert (=> b!160682 m!149941))

(declare-fun m!149943 () Bool)

(assert (=> b!160682 m!149943))

(assert (=> b!160682 m!149941))

(declare-fun m!149945 () Bool)

(assert (=> b!160682 m!149945))

(declare-fun m!149947 () Bool)

(assert (=> b!160682 m!149947))

(assert (=> b!160682 m!149945))

(assert (=> b!160682 m!149943))

(declare-fun m!149949 () Bool)

(assert (=> b!160682 m!149949))

(assert (=> b!160683 m!149945))

(assert (=> b!160683 m!149945))

(assert (=> b!160683 m!149947))

(declare-fun m!149951 () Bool)

(assert (=> b!160684 m!149951))

(declare-fun m!149953 () Bool)

(assert (=> b!160684 m!149953))

(assert (=> b!160684 m!148541))

(assert (=> b!160684 m!148543))

(declare-fun m!149955 () Bool)

(assert (=> b!160684 m!149955))

(assert (=> b!160684 m!149951))

(assert (=> b!160684 m!149941))

(assert (=> b!160684 m!149943))

(assert (=> b!160684 m!149955))

(declare-fun m!149957 () Bool)

(assert (=> b!160684 m!149957))

(declare-fun m!149959 () Bool)

(assert (=> b!160684 m!149959))

(assert (=> b!160684 m!149941))

(declare-fun m!149961 () Bool)

(assert (=> b!160684 m!149961))

(declare-fun m!149963 () Bool)

(assert (=> d!39515 m!149963))

(assert (=> d!39515 m!148541))

(declare-fun m!149965 () Bool)

(assert (=> d!39515 m!149965))

(assert (=> d!39515 m!148541))

(declare-fun m!149967 () Bool)

(assert (=> d!39515 m!149967))

(declare-fun m!149969 () Bool)

(assert (=> d!39515 m!149969))

(declare-fun m!149971 () Bool)

(assert (=> d!39515 m!149971))

(assert (=> d!39515 m!149955))

(declare-fun m!149973 () Bool)

(assert (=> d!39515 m!149973))

(assert (=> d!39515 m!148541))

(assert (=> d!39515 m!149969))

(assert (=> d!39515 m!149941))

(assert (=> d!39515 m!149943))

(declare-fun m!149975 () Bool)

(assert (=> d!39515 m!149975))

(assert (=> d!39515 m!149955))

(declare-fun m!149977 () Bool)

(assert (=> d!39515 m!149977))

(assert (=> d!39515 m!149945))

(declare-fun m!149979 () Bool)

(assert (=> d!39515 m!149979))

(assert (=> d!39515 m!149945))

(assert (=> d!39515 m!149963))

(declare-fun m!149981 () Bool)

(assert (=> d!39515 m!149981))

(assert (=> d!39515 m!149965))

(declare-fun m!149983 () Bool)

(assert (=> d!39515 m!149983))

(assert (=> d!39515 m!149977))

(declare-fun m!149985 () Bool)

(assert (=> d!39515 m!149985))

(assert (=> d!39515 m!148541))

(assert (=> d!39515 m!148543))

(declare-fun m!149987 () Bool)

(assert (=> d!39515 m!149987))

(assert (=> d!39515 m!149975))

(declare-fun m!149989 () Bool)

(assert (=> d!39515 m!149989))

(assert (=> d!39515 m!148325))

(assert (=> d!39515 m!149941))

(assert (=> d!39515 m!149977))

(declare-fun m!149991 () Bool)

(assert (=> d!39515 m!149991))

(assert (=> d!39515 m!148541))

(assert (=> d!39515 m!148543))

(assert (=> d!39515 m!149955))

(declare-fun m!149993 () Bool)

(assert (=> d!39515 m!149993))

(assert (=> b!159888 d!39515))

(declare-fun d!39517 () Bool)

(declare-fun e!96637 () Bool)

(assert (=> d!39517 e!96637))

(declare-fun res!72872 () Bool)

(assert (=> d!39517 (=> (not res!72872) (not e!96637))))

(declare-fun lt!48499 () BalanceConc!1586)

(assert (=> d!39517 (= res!72872 (= (list!989 lt!48499) (Cons!2747 call!6743 Nil!2747)))))

(assert (=> d!39517 (= lt!48499 (singleton!26 call!6743))))

(assert (=> d!39517 (= (singletonSeq!37 call!6743) lt!48499)))

(declare-fun b!160692 () Bool)

(assert (=> b!160692 (= e!96637 (isBalanced!223 (c!32023 lt!48499)))))

(assert (= (and d!39517 res!72872) b!160692))

(declare-fun m!149995 () Bool)

(assert (=> d!39517 m!149995))

(declare-fun m!149997 () Bool)

(assert (=> d!39517 m!149997))

(declare-fun m!149999 () Bool)

(assert (=> b!160692 m!149999))

(assert (=> b!159888 d!39517))

(declare-fun d!39519 () Bool)

(declare-fun lt!48500 () BalanceConc!1584)

(assert (=> d!39519 (= (list!985 lt!48500) (printList!58 thiss!17480 (list!989 (singletonSeq!37 call!6743))))))

(assert (=> d!39519 (= lt!48500 (printTailRec!67 thiss!17480 (singletonSeq!37 call!6743) 0 (BalanceConc!1585 Empty!788)))))

(assert (=> d!39519 (= (print!104 thiss!17480 (singletonSeq!37 call!6743)) lt!48500)))

(declare-fun bs!15126 () Bool)

(assert (= bs!15126 d!39519))

(declare-fun m!150001 () Bool)

(assert (=> bs!15126 m!150001))

(assert (=> bs!15126 m!148547))

(declare-fun m!150003 () Bool)

(assert (=> bs!15126 m!150003))

(assert (=> bs!15126 m!150003))

(declare-fun m!150005 () Bool)

(assert (=> bs!15126 m!150005))

(assert (=> bs!15126 m!148547))

(assert (=> bs!15126 m!148549))

(assert (=> b!159888 d!39519))

(declare-fun d!39521 () Bool)

(declare-fun lt!48504 () BalanceConc!1584)

(assert (=> d!39521 (= (list!985 lt!48504) (printListTailRec!45 thiss!17480 (dropList!78 (singletonSeq!37 call!6743) 0) (list!985 (BalanceConc!1585 Empty!788))))))

(declare-fun e!96640 () BalanceConc!1584)

(assert (=> d!39521 (= lt!48504 e!96640)))

(declare-fun c!32255 () Bool)

(assert (=> d!39521 (= c!32255 (>= 0 (size!2319 (singletonSeq!37 call!6743))))))

(declare-fun e!96642 () Bool)

(assert (=> d!39521 e!96642))

(declare-fun res!72874 () Bool)

(assert (=> d!39521 (=> (not res!72874) (not e!96642))))

(assert (=> d!39521 (= res!72874 (>= 0 0))))

(assert (=> d!39521 (= (printTailRec!67 thiss!17480 (singletonSeq!37 call!6743) 0 (BalanceConc!1585 Empty!788)) lt!48504)))

(declare-fun b!160697 () Bool)

(assert (=> b!160697 (= e!96642 (<= 0 (size!2319 (singletonSeq!37 call!6743))))))

(declare-fun b!160699 () Bool)

(assert (=> b!160699 (= e!96640 (BalanceConc!1585 Empty!788))))

(declare-fun b!160701 () Bool)

(assert (=> b!160701 (= e!96640 (printTailRec!67 thiss!17480 (singletonSeq!37 call!6743) (+ 0 1) (++!610 (BalanceConc!1585 Empty!788) (charsOf!138 (apply!381 (singletonSeq!37 call!6743) 0)))))))

(declare-fun lt!48508 () List!2757)

(assert (=> b!160701 (= lt!48508 (list!989 (singletonSeq!37 call!6743)))))

(declare-fun lt!48502 () Unit!2232)

(assert (=> b!160701 (= lt!48502 (lemmaDropApply!118 lt!48508 0))))

(assert (=> b!160701 (= (head!592 (drop!131 lt!48508 0)) (apply!382 lt!48508 0))))

(declare-fun lt!48503 () Unit!2232)

(assert (=> b!160701 (= lt!48503 lt!48502)))

(declare-fun lt!48509 () List!2757)

(assert (=> b!160701 (= lt!48509 (list!989 (singletonSeq!37 call!6743)))))

(declare-fun lt!48506 () Unit!2232)

(assert (=> b!160701 (= lt!48506 (lemmaDropTail!110 lt!48509 0))))

(assert (=> b!160701 (= (tail!332 (drop!131 lt!48509 0)) (drop!131 lt!48509 (+ 0 1)))))

(declare-fun lt!48505 () Unit!2232)

(assert (=> b!160701 (= lt!48505 lt!48506)))

(assert (= (and d!39521 res!72874) b!160697))

(assert (= (and d!39521 c!32255) b!160699))

(assert (= (and d!39521 (not c!32255)) b!160701))

(assert (=> d!39521 m!148547))

(declare-fun m!150029 () Bool)

(assert (=> d!39521 m!150029))

(assert (=> d!39521 m!148547))

(declare-fun m!150031 () Bool)

(assert (=> d!39521 m!150031))

(assert (=> d!39521 m!149311))

(declare-fun m!150033 () Bool)

(assert (=> d!39521 m!150033))

(assert (=> d!39521 m!150029))

(assert (=> d!39521 m!149311))

(declare-fun m!150035 () Bool)

(assert (=> d!39521 m!150035))

(assert (=> b!160697 m!148547))

(assert (=> b!160697 m!150031))

(declare-fun m!150037 () Bool)

(assert (=> b!160701 m!150037))

(declare-fun m!150039 () Bool)

(assert (=> b!160701 m!150039))

(assert (=> b!160701 m!148547))

(assert (=> b!160701 m!150003))

(declare-fun m!150041 () Bool)

(assert (=> b!160701 m!150041))

(assert (=> b!160701 m!150041))

(declare-fun m!150043 () Bool)

(assert (=> b!160701 m!150043))

(declare-fun m!150045 () Bool)

(assert (=> b!160701 m!150045))

(declare-fun m!150047 () Bool)

(assert (=> b!160701 m!150047))

(declare-fun m!150049 () Bool)

(assert (=> b!160701 m!150049))

(declare-fun m!150051 () Bool)

(assert (=> b!160701 m!150051))

(declare-fun m!150053 () Bool)

(assert (=> b!160701 m!150053))

(assert (=> b!160701 m!150049))

(assert (=> b!160701 m!148547))

(declare-fun m!150055 () Bool)

(assert (=> b!160701 m!150055))

(assert (=> b!160701 m!148547))

(assert (=> b!160701 m!150047))

(declare-fun m!150057 () Bool)

(assert (=> b!160701 m!150057))

(assert (=> b!160701 m!150055))

(assert (=> b!160701 m!150045))

(declare-fun m!150059 () Bool)

(assert (=> b!160701 m!150059))

(assert (=> b!159888 d!39521))

(declare-fun d!39527 () Bool)

(declare-fun res!72877 () Bool)

(declare-fun e!96652 () Bool)

(assert (=> d!39527 (=> (not res!72877) (not e!96652))))

(assert (=> d!39527 (= res!72877 (not (isEmpty!1110 (originalCharacters!526 (h!8144 (t!25821 tokens!465))))))))

(assert (=> d!39527 (= (inv!3562 (h!8144 (t!25821 tokens!465))) e!96652)))

(declare-fun b!160716 () Bool)

(declare-fun res!72878 () Bool)

(assert (=> b!160716 (=> (not res!72878) (not e!96652))))

(assert (=> b!160716 (= res!72878 (= (originalCharacters!526 (h!8144 (t!25821 tokens!465))) (list!985 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (value!18081 (h!8144 (t!25821 tokens!465)))))))))

(declare-fun b!160717 () Bool)

(assert (=> b!160717 (= e!96652 (= (size!2318 (h!8144 (t!25821 tokens!465))) (size!2323 (originalCharacters!526 (h!8144 (t!25821 tokens!465))))))))

(assert (= (and d!39527 res!72877) b!160716))

(assert (= (and b!160716 res!72878) b!160717))

(declare-fun b_lambda!3341 () Bool)

(assert (=> (not b_lambda!3341) (not b!160716)))

(declare-fun t!25947 () Bool)

(declare-fun tb!5887 () Bool)

(assert (=> (and b!159680 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) t!25947) tb!5887))

(declare-fun b!160718 () Bool)

(declare-fun e!96653 () Bool)

(declare-fun tp!81521 () Bool)

(assert (=> b!160718 (= e!96653 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (value!18081 (h!8144 (t!25821 tokens!465)))))) tp!81521))))

(declare-fun result!8478 () Bool)

(assert (=> tb!5887 (= result!8478 (and (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (value!18081 (h!8144 (t!25821 tokens!465))))) e!96653))))

(assert (= tb!5887 b!160718))

(declare-fun m!150061 () Bool)

(assert (=> b!160718 m!150061))

(declare-fun m!150063 () Bool)

(assert (=> tb!5887 m!150063))

(assert (=> b!160716 t!25947))

(declare-fun b_and!9957 () Bool)

(assert (= b_and!9905 (and (=> t!25947 result!8478) b_and!9957)))

(declare-fun t!25949 () Bool)

(declare-fun tb!5889 () Bool)

(assert (=> (and b!159684 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) t!25949) tb!5889))

(declare-fun result!8480 () Bool)

(assert (= result!8480 result!8478))

(assert (=> b!160716 t!25949))

(declare-fun b_and!9959 () Bool)

(assert (= b_and!9897 (and (=> t!25949 result!8480) b_and!9959)))

(declare-fun t!25951 () Bool)

(declare-fun tb!5891 () Bool)

(assert (=> (and b!160138 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) t!25951) tb!5891))

(declare-fun result!8482 () Bool)

(assert (= result!8482 result!8478))

(assert (=> b!160716 t!25951))

(declare-fun b_and!9961 () Bool)

(assert (= b_and!9901 (and (=> t!25951 result!8482) b_and!9961)))

(declare-fun tb!5893 () Bool)

(declare-fun t!25953 () Bool)

(assert (=> (and b!160149 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) t!25953) tb!5893))

(declare-fun result!8484 () Bool)

(assert (= result!8484 result!8478))

(assert (=> b!160716 t!25953))

(declare-fun b_and!9963 () Bool)

(assert (= b_and!9903 (and (=> t!25953 result!8484) b_and!9963)))

(declare-fun t!25955 () Bool)

(declare-fun tb!5895 () Bool)

(assert (=> (and b!159690 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) t!25955) tb!5895))

(declare-fun result!8486 () Bool)

(assert (= result!8486 result!8478))

(assert (=> b!160716 t!25955))

(declare-fun b_and!9965 () Bool)

(assert (= b_and!9899 (and (=> t!25955 result!8486) b_and!9965)))

(declare-fun m!150065 () Bool)

(assert (=> d!39527 m!150065))

(declare-fun m!150067 () Bool)

(assert (=> b!160716 m!150067))

(assert (=> b!160716 m!150067))

(declare-fun m!150069 () Bool)

(assert (=> b!160716 m!150069))

(declare-fun m!150071 () Bool)

(assert (=> b!160717 m!150071))

(assert (=> b!160135 d!39527))

(declare-fun d!39529 () Bool)

(declare-fun res!72883 () Bool)

(declare-fun e!96658 () Bool)

(assert (=> d!39529 (=> res!72883 e!96658)))

(assert (=> d!39529 (= res!72883 ((_ is Nil!2748) rules!1920))))

(assert (=> d!39529 (= (noDuplicateTag!135 thiss!17480 rules!1920 Nil!2750) e!96658)))

(declare-fun b!160723 () Bool)

(declare-fun e!96659 () Bool)

(assert (=> b!160723 (= e!96658 e!96659)))

(declare-fun res!72884 () Bool)

(assert (=> b!160723 (=> (not res!72884) (not e!96659))))

(declare-fun contains!441 (List!2760 String!3605) Bool)

(assert (=> b!160723 (= res!72884 (not (contains!441 Nil!2750 (tag!661 (h!8145 rules!1920)))))))

(declare-fun b!160724 () Bool)

(assert (=> b!160724 (= e!96659 (noDuplicateTag!135 thiss!17480 (t!25822 rules!1920) (Cons!2750 (tag!661 (h!8145 rules!1920)) Nil!2750)))))

(assert (= (and d!39529 (not res!72883)) b!160723))

(assert (= (and b!160723 res!72884) b!160724))

(declare-fun m!150103 () Bool)

(assert (=> b!160723 m!150103))

(declare-fun m!150107 () Bool)

(assert (=> b!160724 m!150107))

(assert (=> b!160100 d!39529))

(declare-fun d!39533 () Bool)

(declare-fun c!32261 () Bool)

(assert (=> d!39533 (= c!32261 ((_ is Nil!2746) lt!48104))))

(declare-fun e!96660 () (InoxSet C!2336))

(assert (=> d!39533 (= (content!383 lt!48104) e!96660)))

(declare-fun b!160725 () Bool)

(assert (=> b!160725 (= e!96660 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!160726 () Bool)

(assert (=> b!160726 (= e!96660 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!48104) true) (content!383 (t!25820 lt!48104))))))

(assert (= (and d!39533 c!32261) b!160725))

(assert (= (and d!39533 (not c!32261)) b!160726))

(declare-fun m!150113 () Bool)

(assert (=> b!160726 m!150113))

(declare-fun m!150115 () Bool)

(assert (=> b!160726 m!150115))

(assert (=> d!39177 d!39533))

(declare-fun d!39539 () Bool)

(declare-fun c!32262 () Bool)

(assert (=> d!39539 (= c!32262 ((_ is Nil!2746) lt!47936))))

(declare-fun e!96661 () (InoxSet C!2336))

(assert (=> d!39539 (= (content!383 lt!47936) e!96661)))

(declare-fun b!160727 () Bool)

(assert (=> b!160727 (= e!96661 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!160728 () Bool)

(assert (=> b!160728 (= e!96661 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!47936) true) (content!383 (t!25820 lt!47936))))))

(assert (= (and d!39539 c!32262) b!160727))

(assert (= (and d!39539 (not c!32262)) b!160728))

(declare-fun m!150121 () Bool)

(assert (=> b!160728 m!150121))

(assert (=> b!160728 m!149541))

(assert (=> d!39177 d!39539))

(declare-fun d!39543 () Bool)

(declare-fun c!32263 () Bool)

(assert (=> d!39543 (= c!32263 ((_ is Nil!2746) lt!47935))))

(declare-fun e!96662 () (InoxSet C!2336))

(assert (=> d!39543 (= (content!383 lt!47935) e!96662)))

(declare-fun b!160729 () Bool)

(assert (=> b!160729 (= e!96662 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!160730 () Bool)

(assert (=> b!160730 (= e!96662 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!47935) true) (content!383 (t!25820 lt!47935))))))

(assert (= (and d!39543 c!32263) b!160729))

(assert (= (and d!39543 (not c!32263)) b!160730))

(declare-fun m!150123 () Bool)

(assert (=> b!160730 m!150123))

(declare-fun m!150125 () Bool)

(assert (=> b!160730 m!150125))

(assert (=> d!39177 d!39543))

(declare-fun d!39545 () Bool)

(declare-fun lt!48520 () BalanceConc!1584)

(assert (=> d!39545 (= (list!985 lt!48520) (originalCharacters!526 (h!8144 (t!25821 tokens!465))))))

(assert (=> d!39545 (= lt!48520 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (value!18081 (h!8144 (t!25821 tokens!465)))))))

(assert (=> d!39545 (= (charsOf!138 (h!8144 (t!25821 tokens!465))) lt!48520)))

(declare-fun b_lambda!3343 () Bool)

(assert (=> (not b_lambda!3343) (not d!39545)))

(assert (=> d!39545 t!25949))

(declare-fun b_and!9967 () Bool)

(assert (= b_and!9959 (and (=> t!25949 result!8480) b_and!9967)))

(assert (=> d!39545 t!25947))

(declare-fun b_and!9969 () Bool)

(assert (= b_and!9957 (and (=> t!25947 result!8478) b_and!9969)))

(assert (=> d!39545 t!25951))

(declare-fun b_and!9971 () Bool)

(assert (= b_and!9961 (and (=> t!25951 result!8482) b_and!9971)))

(assert (=> d!39545 t!25955))

(declare-fun b_and!9973 () Bool)

(assert (= b_and!9965 (and (=> t!25955 result!8486) b_and!9973)))

(assert (=> d!39545 t!25953))

(declare-fun b_and!9975 () Bool)

(assert (= b_and!9963 (and (=> t!25953 result!8484) b_and!9975)))

(declare-fun m!150127 () Bool)

(assert (=> d!39545 m!150127))

(assert (=> d!39545 m!150067))

(assert (=> bm!6771 d!39545))

(declare-fun d!39547 () Bool)

(declare-fun c!32266 () Bool)

(assert (=> d!39547 (= c!32266 ((_ is Node!788) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))))))

(declare-fun e!96667 () Bool)

(assert (=> d!39547 (= (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))) e!96667)))

(declare-fun b!160737 () Bool)

(declare-fun inv!3567 (Conc!788) Bool)

(assert (=> b!160737 (= e!96667 (inv!3567 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))))))

(declare-fun b!160738 () Bool)

(declare-fun e!96668 () Bool)

(assert (=> b!160738 (= e!96667 e!96668)))

(declare-fun res!72887 () Bool)

(assert (=> b!160738 (= res!72887 (not ((_ is Leaf!1369) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))))))))

(assert (=> b!160738 (=> res!72887 e!96668)))

(declare-fun b!160739 () Bool)

(declare-fun inv!3568 (Conc!788) Bool)

(assert (=> b!160739 (= e!96668 (inv!3568 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))))))

(assert (= (and d!39547 c!32266) b!160737))

(assert (= (and d!39547 (not c!32266)) b!160738))

(assert (= (and b!160738 (not res!72887)) b!160739))

(declare-fun m!150131 () Bool)

(assert (=> b!160737 m!150131))

(declare-fun m!150133 () Bool)

(assert (=> b!160739 m!150133))

(assert (=> b!159729 d!39547))

(declare-fun d!39551 () Bool)

(assert (=> d!39551 (= (list!985 lt!48103) (list!988 (c!32021 lt!48103)))))

(declare-fun bs!15140 () Bool)

(assert (= bs!15140 d!39551))

(declare-fun m!150135 () Bool)

(assert (=> bs!15140 m!150135))

(assert (=> d!39175 d!39551))

(declare-fun d!39553 () Bool)

(declare-fun lt!48521 () BalanceConc!1584)

(assert (=> d!39553 (= (list!985 lt!48521) (originalCharacters!526 call!6743))))

(assert (=> d!39553 (= lt!48521 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 call!6743))) (value!18081 call!6743)))))

(assert (=> d!39553 (= (charsOf!138 call!6743) lt!48521)))

(declare-fun b_lambda!3345 () Bool)

(assert (=> (not b_lambda!3345) (not d!39553)))

(declare-fun t!25957 () Bool)

(declare-fun tb!5897 () Bool)

(assert (=> (and b!159684 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 call!6743)))) t!25957) tb!5897))

(declare-fun b!160740 () Bool)

(declare-fun e!96669 () Bool)

(declare-fun tp!81522 () Bool)

(assert (=> b!160740 (= e!96669 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 call!6743))) (value!18081 call!6743)))) tp!81522))))

(declare-fun result!8488 () Bool)

(assert (=> tb!5897 (= result!8488 (and (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 call!6743))) (value!18081 call!6743))) e!96669))))

(assert (= tb!5897 b!160740))

(declare-fun m!150137 () Bool)

(assert (=> b!160740 m!150137))

(declare-fun m!150139 () Bool)

(assert (=> tb!5897 m!150139))

(assert (=> d!39553 t!25957))

(declare-fun b_and!9977 () Bool)

(assert (= b_and!9967 (and (=> t!25957 result!8488) b_and!9977)))

(declare-fun tb!5899 () Bool)

(declare-fun t!25959 () Bool)

(assert (=> (and b!160138 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 call!6743)))) t!25959) tb!5899))

(declare-fun result!8490 () Bool)

(assert (= result!8490 result!8488))

(assert (=> d!39553 t!25959))

(declare-fun b_and!9979 () Bool)

(assert (= b_and!9971 (and (=> t!25959 result!8490) b_and!9979)))

(declare-fun tb!5901 () Bool)

(declare-fun t!25961 () Bool)

(assert (=> (and b!159690 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 call!6743)))) t!25961) tb!5901))

(declare-fun result!8492 () Bool)

(assert (= result!8492 result!8488))

(assert (=> d!39553 t!25961))

(declare-fun b_and!9981 () Bool)

(assert (= b_and!9973 (and (=> t!25961 result!8492) b_and!9981)))

(declare-fun t!25963 () Bool)

(declare-fun tb!5903 () Bool)

(assert (=> (and b!159680 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 call!6743)))) t!25963) tb!5903))

(declare-fun result!8494 () Bool)

(assert (= result!8494 result!8488))

(assert (=> d!39553 t!25963))

(declare-fun b_and!9983 () Bool)

(assert (= b_and!9969 (and (=> t!25963 result!8494) b_and!9983)))

(declare-fun t!25965 () Bool)

(declare-fun tb!5905 () Bool)

(assert (=> (and b!160149 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 call!6743)))) t!25965) tb!5905))

(declare-fun result!8496 () Bool)

(assert (= result!8496 result!8488))

(assert (=> d!39553 t!25965))

(declare-fun b_and!9985 () Bool)

(assert (= b_and!9975 (and (=> t!25965 result!8496) b_and!9985)))

(declare-fun m!150141 () Bool)

(assert (=> d!39553 m!150141))

(declare-fun m!150143 () Bool)

(assert (=> d!39553 m!150143))

(assert (=> b!159889 d!39553))

(declare-fun b!160742 () Bool)

(declare-fun e!96671 () List!2756)

(assert (=> b!160742 (= e!96671 (Cons!2746 (h!8143 (t!25820 (++!608 lt!47936 lt!47935))) (++!608 (t!25820 (t!25820 (++!608 lt!47936 lt!47935))) lt!47938)))))

(declare-fun e!96670 () Bool)

(declare-fun lt!48522 () List!2756)

(declare-fun b!160744 () Bool)

(assert (=> b!160744 (= e!96670 (or (not (= lt!47938 Nil!2746)) (= lt!48522 (t!25820 (++!608 lt!47936 lt!47935)))))))

(declare-fun b!160741 () Bool)

(assert (=> b!160741 (= e!96671 lt!47938)))

(declare-fun b!160743 () Bool)

(declare-fun res!72889 () Bool)

(assert (=> b!160743 (=> (not res!72889) (not e!96670))))

(assert (=> b!160743 (= res!72889 (= (size!2323 lt!48522) (+ (size!2323 (t!25820 (++!608 lt!47936 lt!47935))) (size!2323 lt!47938))))))

(declare-fun d!39555 () Bool)

(assert (=> d!39555 e!96670))

(declare-fun res!72888 () Bool)

(assert (=> d!39555 (=> (not res!72888) (not e!96670))))

(assert (=> d!39555 (= res!72888 (= (content!383 lt!48522) ((_ map or) (content!383 (t!25820 (++!608 lt!47936 lt!47935))) (content!383 lt!47938))))))

(assert (=> d!39555 (= lt!48522 e!96671)))

(declare-fun c!32267 () Bool)

(assert (=> d!39555 (= c!32267 ((_ is Nil!2746) (t!25820 (++!608 lt!47936 lt!47935))))))

(assert (=> d!39555 (= (++!608 (t!25820 (++!608 lt!47936 lt!47935)) lt!47938) lt!48522)))

(assert (= (and d!39555 c!32267) b!160741))

(assert (= (and d!39555 (not c!32267)) b!160742))

(assert (= (and d!39555 res!72888) b!160743))

(assert (= (and b!160743 res!72889) b!160744))

(declare-fun m!150145 () Bool)

(assert (=> b!160742 m!150145))

(declare-fun m!150147 () Bool)

(assert (=> b!160743 m!150147))

(declare-fun m!150149 () Bool)

(assert (=> b!160743 m!150149))

(assert (=> b!160743 m!148807))

(declare-fun m!150151 () Bool)

(assert (=> d!39555 m!150151))

(assert (=> d!39555 m!149651))

(assert (=> d!39555 m!148813))

(assert (=> b!160078 d!39555))

(declare-fun d!39557 () Bool)

(declare-fun e!96672 () Bool)

(assert (=> d!39557 e!96672))

(declare-fun res!72890 () Bool)

(assert (=> d!39557 (=> (not res!72890) (not e!96672))))

(declare-fun lt!48523 () BalanceConc!1586)

(assert (=> d!39557 (= res!72890 (= (list!989 lt!48523) (t!25821 tokens!465)))))

(assert (=> d!39557 (= lt!48523 (BalanceConc!1587 (fromList!96 (t!25821 tokens!465))))))

(assert (=> d!39557 (= (fromListB!145 (t!25821 tokens!465)) lt!48523)))

(declare-fun b!160745 () Bool)

(assert (=> b!160745 (= e!96672 (isBalanced!223 (fromList!96 (t!25821 tokens!465))))))

(assert (= (and d!39557 res!72890) b!160745))

(declare-fun m!150153 () Bool)

(assert (=> d!39557 m!150153))

(declare-fun m!150155 () Bool)

(assert (=> d!39557 m!150155))

(assert (=> b!160745 m!150155))

(assert (=> b!160745 m!150155))

(declare-fun m!150157 () Bool)

(assert (=> b!160745 m!150157))

(assert (=> d!39169 d!39557))

(declare-fun bs!15141 () Bool)

(declare-fun d!39559 () Bool)

(assert (= bs!15141 (and d!39559 d!39497)))

(declare-fun lambda!4375 () Int)

(assert (=> bs!15141 (= (= (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))) (= lambda!4375 lambda!4373))))

(assert (=> d!39559 true))

(assert (=> d!39559 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465))))) (dynLambda!994 order!1415 lambda!4375))))

(assert (=> d!39559 (= (equivClasses!152 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465))))) (Forall2!105 lambda!4375))))

(declare-fun bs!15142 () Bool)

(assert (= bs!15142 d!39559))

(declare-fun m!150159 () Bool)

(assert (=> bs!15142 m!150159))

(assert (=> b!160113 d!39559))

(assert (=> b!160024 d!39175))

(declare-fun d!39561 () Bool)

(assert (=> d!39561 true))

(declare-fun lt!48526 () Bool)

(assert (=> d!39561 (= lt!48526 (rulesValidInductive!103 thiss!17480 rules!1920))))

(declare-fun lambda!4378 () Int)

(declare-fun forall!506 (List!2758 Int) Bool)

(assert (=> d!39561 (= lt!48526 (forall!506 rules!1920 lambda!4378))))

(assert (=> d!39561 (= (rulesValid!135 thiss!17480 rules!1920) lt!48526)))

(declare-fun bs!15143 () Bool)

(assert (= bs!15143 d!39561))

(assert (=> bs!15143 m!149059))

(declare-fun m!150161 () Bool)

(assert (=> bs!15143 m!150161))

(assert (=> d!39197 d!39561))

(declare-fun bs!15144 () Bool)

(declare-fun d!39563 () Bool)

(assert (= bs!15144 (and d!39563 d!39497)))

(declare-fun lambda!4379 () Int)

(assert (=> bs!15144 (= (= (toValue!1134 (transformation!483 (h!8145 rules!1920))) (toValue!1134 (transformation!483 (rule!990 separatorToken!170)))) (= lambda!4379 lambda!4373))))

(declare-fun bs!15145 () Bool)

(assert (= bs!15145 (and d!39563 d!39559)))

(assert (=> bs!15145 (= (= (toValue!1134 (transformation!483 (h!8145 rules!1920))) (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465))))) (= lambda!4379 lambda!4375))))

(assert (=> d!39563 true))

(assert (=> d!39563 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!994 order!1415 lambda!4379))))

(assert (=> d!39563 (= (equivClasses!152 (toChars!993 (transformation!483 (h!8145 rules!1920))) (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (Forall2!105 lambda!4379))))

(declare-fun bs!15146 () Bool)

(assert (= bs!15146 d!39563))

(declare-fun m!150163 () Bool)

(assert (=> bs!15146 m!150163))

(assert (=> b!160119 d!39563))

(assert (=> d!39203 d!39477))

(declare-fun d!39565 () Bool)

(assert (=> d!39565 (= (list!989 (_1!1545 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170))))) (list!990 (c!32023 (_1!1545 (lex!179 thiss!17480 rules!1920 (print!104 thiss!17480 (singletonSeq!37 separatorToken!170)))))))))

(declare-fun bs!15147 () Bool)

(assert (= bs!15147 d!39565))

(declare-fun m!150165 () Bool)

(assert (=> bs!15147 m!150165))

(assert (=> d!39203 d!39565))

(assert (=> d!39203 d!39465))

(declare-fun d!39567 () Bool)

(assert (=> d!39567 (= (list!989 (singletonSeq!37 separatorToken!170)) (list!990 (c!32023 (singletonSeq!37 separatorToken!170))))))

(declare-fun bs!15148 () Bool)

(assert (= bs!15148 d!39567))

(declare-fun m!150167 () Bool)

(assert (=> bs!15148 m!150167))

(assert (=> d!39203 d!39567))

(assert (=> d!39203 d!39475))

(declare-fun d!39569 () Bool)

(declare-fun lt!48527 () Int)

(assert (=> d!39569 (= lt!48527 (size!2324 (list!989 (_1!1545 lt!48128))))))

(assert (=> d!39569 (= lt!48527 (size!2325 (c!32023 (_1!1545 lt!48128))))))

(assert (=> d!39569 (= (size!2319 (_1!1545 lt!48128)) lt!48527)))

(declare-fun bs!15149 () Bool)

(assert (= bs!15149 d!39569))

(declare-fun m!150169 () Bool)

(assert (=> bs!15149 m!150169))

(assert (=> bs!15149 m!150169))

(declare-fun m!150171 () Bool)

(assert (=> bs!15149 m!150171))

(declare-fun m!150173 () Bool)

(assert (=> bs!15149 m!150173))

(assert (=> d!39203 d!39569))

(assert (=> d!39203 d!39157))

(assert (=> bm!6737 d!39279))

(declare-fun d!39571 () Bool)

(declare-fun e!96675 () Bool)

(assert (=> d!39571 e!96675))

(declare-fun res!72893 () Bool)

(assert (=> d!39571 (=> (not res!72893) (not e!96675))))

(declare-fun lt!48530 () BalanceConc!1584)

(assert (=> d!39571 (= res!72893 (= (list!985 lt!48530) lt!47930))))

(declare-fun fromList!97 (List!2756) Conc!788)

(assert (=> d!39571 (= lt!48530 (BalanceConc!1585 (fromList!97 lt!47930)))))

(assert (=> d!39571 (= (fromListB!143 lt!47930) lt!48530)))

(declare-fun b!160750 () Bool)

(assert (=> b!160750 (= e!96675 (isBalanced!222 (fromList!97 lt!47930)))))

(assert (= (and d!39571 res!72893) b!160750))

(declare-fun m!150175 () Bool)

(assert (=> d!39571 m!150175))

(declare-fun m!150177 () Bool)

(assert (=> d!39571 m!150177))

(assert (=> b!160750 m!150177))

(assert (=> b!160750 m!150177))

(declare-fun m!150179 () Bool)

(assert (=> b!160750 m!150179))

(assert (=> d!39091 d!39571))

(assert (=> bm!6766 d!39185))

(declare-fun d!39573 () Bool)

(declare-fun charsToInt!0 (List!2755) (_ BitVec 32))

(assert (=> d!39573 (= (inv!16 (value!18081 separatorToken!170)) (= (charsToInt!0 (text!3982 (value!18081 separatorToken!170))) (value!18072 (value!18081 separatorToken!170))))))

(declare-fun bs!15150 () Bool)

(assert (= bs!15150 d!39573))

(declare-fun m!150181 () Bool)

(assert (=> bs!15150 m!150181))

(assert (=> b!160046 d!39573))

(declare-fun d!39575 () Bool)

(declare-fun lt!48531 () Int)

(assert (=> d!39575 (>= lt!48531 0)))

(declare-fun e!96676 () Int)

(assert (=> d!39575 (= lt!48531 e!96676)))

(declare-fun c!32269 () Bool)

(assert (=> d!39575 (= c!32269 ((_ is Nil!2746) lt!48105))))

(assert (=> d!39575 (= (size!2323 lt!48105) lt!48531)))

(declare-fun b!160751 () Bool)

(assert (=> b!160751 (= e!96676 0)))

(declare-fun b!160752 () Bool)

(assert (=> b!160752 (= e!96676 (+ 1 (size!2323 (t!25820 lt!48105))))))

(assert (= (and d!39575 c!32269) b!160751))

(assert (= (and d!39575 (not c!32269)) b!160752))

(declare-fun m!150183 () Bool)

(assert (=> b!160752 m!150183))

(assert (=> b!160075 d!39575))

(assert (=> b!160075 d!39381))

(declare-fun d!39577 () Bool)

(declare-fun lt!48532 () Int)

(assert (=> d!39577 (>= lt!48532 0)))

(declare-fun e!96677 () Int)

(assert (=> d!39577 (= lt!48532 e!96677)))

(declare-fun c!32270 () Bool)

(assert (=> d!39577 (= c!32270 ((_ is Nil!2746) lt!47933))))

(assert (=> d!39577 (= (size!2323 lt!47933) lt!48532)))

(declare-fun b!160753 () Bool)

(assert (=> b!160753 (= e!96677 0)))

(declare-fun b!160754 () Bool)

(assert (=> b!160754 (= e!96677 (+ 1 (size!2323 (t!25820 lt!47933))))))

(assert (= (and d!39577 c!32270) b!160753))

(assert (= (and d!39577 (not c!32270)) b!160754))

(declare-fun m!150185 () Bool)

(assert (=> b!160754 m!150185))

(assert (=> b!160075 d!39577))

(assert (=> b!159884 d!39279))

(assert (=> d!39119 d!39485))

(declare-fun d!39579 () Bool)

(assert (=> d!39579 (= (list!985 lt!48040) (list!988 (c!32021 lt!48040)))))

(declare-fun bs!15151 () Bool)

(assert (= bs!15151 d!39579))

(declare-fun m!150187 () Bool)

(assert (=> bs!15151 m!150187))

(assert (=> d!39119 d!39579))

(declare-fun d!39581 () Bool)

(assert (=> d!39581 (= (dropList!78 lt!47931 0) (drop!131 (list!990 (c!32023 lt!47931)) 0))))

(declare-fun bs!15152 () Bool)

(assert (= bs!15152 d!39581))

(assert (=> bs!15152 m!149109))

(assert (=> bs!15152 m!149109))

(declare-fun m!150189 () Bool)

(assert (=> bs!15152 m!150189))

(assert (=> d!39119 d!39581))

(declare-fun d!39583 () Bool)

(assert (=> d!39583 (forall!500 (dropList!78 lt!47931 0) lambda!4344)))

(declare-fun lt!48535 () Unit!2232)

(declare-fun choose!1793 (List!2757 List!2757 Int) Unit!2232)

(assert (=> d!39583 (= lt!48535 (choose!1793 (list!989 lt!47931) (dropList!78 lt!47931 0) lambda!4344))))

(assert (=> d!39583 (forall!500 (list!989 lt!47931) lambda!4344)))

(assert (=> d!39583 (= (lemmaContentSubsetPreservesForall!22 (list!989 lt!47931) (dropList!78 lt!47931 0) lambda!4344) lt!48535)))

(declare-fun bs!15153 () Bool)

(assert (= bs!15153 d!39583))

(assert (=> bs!15153 m!148595))

(declare-fun m!150191 () Bool)

(assert (=> bs!15153 m!150191))

(assert (=> bs!15153 m!148577))

(assert (=> bs!15153 m!148595))

(declare-fun m!150193 () Bool)

(assert (=> bs!15153 m!150193))

(assert (=> bs!15153 m!148577))

(declare-fun m!150195 () Bool)

(assert (=> bs!15153 m!150195))

(assert (=> d!39119 d!39583))

(declare-fun bs!15154 () Bool)

(declare-fun b!160755 () Bool)

(assert (= bs!15154 (and b!160755 d!39273)))

(declare-fun lambda!4380 () Int)

(assert (=> bs!15154 (not (= lambda!4380 lambda!4358))))

(declare-fun bs!15155 () Bool)

(assert (= bs!15155 (and b!160755 b!160018)))

(assert (=> bs!15155 (= lambda!4380 lambda!4352)))

(declare-fun bs!15156 () Bool)

(assert (= bs!15156 (and b!160755 d!39165)))

(assert (=> bs!15156 (= lambda!4380 lambda!4353)))

(declare-fun bs!15157 () Bool)

(assert (= bs!15157 (and b!160755 b!160081)))

(assert (=> bs!15157 (= lambda!4380 lambda!4354)))

(declare-fun bs!15158 () Bool)

(assert (= bs!15158 (and b!160755 d!39095)))

(assert (=> bs!15158 (= lambda!4380 lambda!4330)))

(declare-fun bs!15159 () Bool)

(assert (= bs!15159 (and b!160755 b!159883)))

(assert (=> bs!15159 (= lambda!4380 lambda!4345)))

(declare-fun bs!15160 () Bool)

(assert (= bs!15160 (and b!160755 b!159687)))

(assert (=> bs!15160 (not (= lambda!4380 lambda!4322))))

(declare-fun bs!15161 () Bool)

(assert (= bs!15161 (and b!160755 b!160313)))

(assert (=> bs!15161 (= lambda!4380 lambda!4360)))

(declare-fun bs!15162 () Bool)

(assert (= bs!15162 (and b!160755 d!39119)))

(assert (=> bs!15162 (not (= lambda!4380 lambda!4344))))

(declare-fun bs!15163 () Bool)

(assert (= bs!15163 (and b!160755 d!39307)))

(assert (=> bs!15163 (= lambda!4380 lambda!4363)))

(declare-fun b!160765 () Bool)

(declare-fun e!96684 () Bool)

(assert (=> b!160765 (= e!96684 true)))

(declare-fun b!160764 () Bool)

(declare-fun e!96683 () Bool)

(assert (=> b!160764 (= e!96683 e!96684)))

(declare-fun b!160763 () Bool)

(declare-fun e!96682 () Bool)

(assert (=> b!160763 (= e!96682 e!96683)))

(assert (=> b!160755 e!96682))

(assert (= b!160764 b!160765))

(assert (= b!160763 b!160764))

(assert (= (and b!160755 ((_ is Cons!2748) rules!1920)) b!160763))

(assert (=> b!160765 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4380))))

(assert (=> b!160765 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4380))))

(assert (=> b!160755 true))

(declare-fun e!96680 () List!2756)

(declare-fun e!96681 () List!2756)

(assert (=> b!160755 (= e!96680 e!96681)))

(declare-fun lt!48541 () Unit!2232)

(assert (=> b!160755 (= lt!48541 (forallContained!62 (dropList!78 lt!47931 0) lambda!4380 (h!8144 (dropList!78 lt!47931 0))))))

(declare-fun lt!48539 () List!2756)

(assert (=> b!160755 (= lt!48539 (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (t!25821 (dropList!78 lt!47931 0)) separatorToken!170))))

(declare-fun lt!48540 () Option!271)

(assert (=> b!160755 (= lt!48540 (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 (charsOf!138 (h!8144 (dropList!78 lt!47931 0)))) lt!48539)))))

(declare-fun c!32273 () Bool)

(assert (=> b!160755 (= c!32273 (and ((_ is Some!270) lt!48540) (= (_1!1543 (v!13675 lt!48540)) (h!8144 (dropList!78 lt!47931 0)))))))

(declare-fun b!160756 () Bool)

(declare-fun c!32272 () Bool)

(assert (=> b!160756 (= c!32272 (and ((_ is Some!270) lt!48540) (not (= (_1!1543 (v!13675 lt!48540)) (h!8144 (dropList!78 lt!47931 0))))))))

(declare-fun e!96679 () List!2756)

(assert (=> b!160756 (= e!96681 e!96679)))

(declare-fun bm!6806 () Bool)

(declare-fun call!6814 () BalanceConc!1584)

(declare-fun call!6811 () BalanceConc!1584)

(assert (=> bm!6806 (= call!6814 call!6811)))

(declare-fun b!160757 () Bool)

(declare-fun call!6813 () List!2756)

(assert (=> b!160757 (= e!96681 call!6813)))

(declare-fun bm!6807 () Bool)

(declare-fun call!6812 () List!2756)

(declare-fun e!96678 () BalanceConc!1584)

(assert (=> bm!6807 (= call!6812 (list!985 e!96678))))

(declare-fun c!32274 () Bool)

(assert (=> bm!6807 (= c!32274 c!32272)))

(declare-fun b!160758 () Bool)

(assert (=> b!160758 (= e!96680 Nil!2746)))

(declare-fun b!160759 () Bool)

(assert (=> b!160759 (= e!96679 (++!608 call!6813 lt!48539))))

(declare-fun d!39585 () Bool)

(declare-fun c!32271 () Bool)

(assert (=> d!39585 (= c!32271 ((_ is Cons!2747) (dropList!78 lt!47931 0)))))

(assert (=> d!39585 (= (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (dropList!78 lt!47931 0) separatorToken!170) e!96680)))

(declare-fun bm!6808 () Bool)

(declare-fun call!6815 () List!2756)

(assert (=> bm!6808 (= call!6815 (list!985 (ite c!32273 call!6811 call!6814)))))

(declare-fun b!160760 () Bool)

(assert (=> b!160760 (= e!96678 call!6814)))

(declare-fun b!160761 () Bool)

(assert (=> b!160761 (= e!96678 (charsOf!138 separatorToken!170))))

(declare-fun bm!6809 () Bool)

(assert (=> bm!6809 (= call!6813 (++!608 call!6815 (ite c!32273 lt!48539 call!6812)))))

(declare-fun bm!6810 () Bool)

(assert (=> bm!6810 (= call!6811 (charsOf!138 (h!8144 (dropList!78 lt!47931 0))))))

(declare-fun b!160762 () Bool)

(assert (=> b!160762 (= e!96679 Nil!2746)))

(assert (=> b!160762 (= (print!104 thiss!17480 (singletonSeq!37 (h!8144 (dropList!78 lt!47931 0)))) (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 (dropList!78 lt!47931 0))) 0 (BalanceConc!1585 Empty!788)))))

(declare-fun lt!48538 () Unit!2232)

(declare-fun Unit!2256 () Unit!2232)

(assert (=> b!160762 (= lt!48538 Unit!2256)))

(declare-fun lt!48536 () Unit!2232)

(assert (=> b!160762 (= lt!48536 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 call!6812 lt!48539))))

(assert (=> b!160762 false))

(declare-fun lt!48537 () Unit!2232)

(declare-fun Unit!2257 () Unit!2232)

(assert (=> b!160762 (= lt!48537 Unit!2257)))

(assert (= (and d!39585 c!32271) b!160755))

(assert (= (and d!39585 (not c!32271)) b!160758))

(assert (= (and b!160755 c!32273) b!160757))

(assert (= (and b!160755 (not c!32273)) b!160756))

(assert (= (and b!160756 c!32272) b!160759))

(assert (= (and b!160756 (not c!32272)) b!160762))

(assert (= (or b!160759 b!160762) bm!6806))

(assert (= (or b!160759 b!160762) bm!6807))

(assert (= (and bm!6807 c!32274) b!160761))

(assert (= (and bm!6807 (not c!32274)) b!160760))

(assert (= (or b!160757 bm!6806) bm!6810))

(assert (= (or b!160757 b!160759) bm!6808))

(assert (= (or b!160757 b!160759) bm!6809))

(declare-fun m!150197 () Bool)

(assert (=> bm!6809 m!150197))

(assert (=> b!160761 m!148355))

(declare-fun m!150199 () Bool)

(assert (=> b!160759 m!150199))

(declare-fun m!150201 () Bool)

(assert (=> b!160755 m!150201))

(declare-fun m!150203 () Bool)

(assert (=> b!160755 m!150203))

(assert (=> b!160755 m!148595))

(declare-fun m!150205 () Bool)

(assert (=> b!160755 m!150205))

(declare-fun m!150207 () Bool)

(assert (=> b!160755 m!150207))

(declare-fun m!150209 () Bool)

(assert (=> b!160755 m!150209))

(declare-fun m!150211 () Bool)

(assert (=> b!160755 m!150211))

(assert (=> b!160755 m!150207))

(assert (=> b!160755 m!150203))

(assert (=> b!160755 m!150211))

(declare-fun m!150213 () Bool)

(assert (=> bm!6808 m!150213))

(declare-fun m!150215 () Bool)

(assert (=> b!160762 m!150215))

(assert (=> b!160762 m!150215))

(declare-fun m!150217 () Bool)

(assert (=> b!160762 m!150217))

(assert (=> b!160762 m!150215))

(declare-fun m!150219 () Bool)

(assert (=> b!160762 m!150219))

(declare-fun m!150221 () Bool)

(assert (=> b!160762 m!150221))

(declare-fun m!150223 () Bool)

(assert (=> bm!6807 m!150223))

(assert (=> bm!6810 m!150203))

(assert (=> d!39119 d!39585))

(assert (=> d!39119 d!39269))

(declare-fun b!160792 () Bool)

(declare-fun e!96697 () Bool)

(declare-fun e!96698 () Bool)

(assert (=> b!160792 (= e!96697 e!96698)))

(declare-fun res!72913 () Bool)

(declare-fun rulesUseDisjointChars!20 (Rule!766 Rule!766) Bool)

(assert (=> b!160792 (= res!72913 (rulesUseDisjointChars!20 (h!8145 rules!1920) (h!8145 rules!1920)))))

(assert (=> b!160792 (=> (not res!72913) (not e!96698))))

(declare-fun d!39587 () Bool)

(declare-fun c!32279 () Bool)

(assert (=> d!39587 (= c!32279 (and ((_ is Cons!2748) rules!1920) (not (= (isSeparator!483 (h!8145 rules!1920)) (isSeparator!483 (h!8145 rules!1920))))))))

(assert (=> d!39587 (= (ruleDisjointCharsFromAllFromOtherType!28 (h!8145 rules!1920) rules!1920) e!96697)))

(declare-fun b!160793 () Bool)

(declare-fun e!96699 () Bool)

(declare-fun call!6820 () Bool)

(assert (=> b!160793 (= e!96699 call!6820)))

(declare-fun b!160794 () Bool)

(assert (=> b!160794 (= e!96697 e!96699)))

(declare-fun res!72912 () Bool)

(assert (=> b!160794 (= res!72912 (not ((_ is Cons!2748) rules!1920)))))

(assert (=> b!160794 (=> res!72912 e!96699)))

(declare-fun bm!6815 () Bool)

(assert (=> bm!6815 (= call!6820 (ruleDisjointCharsFromAllFromOtherType!28 (h!8145 rules!1920) (t!25822 rules!1920)))))

(declare-fun b!160795 () Bool)

(assert (=> b!160795 (= e!96698 call!6820)))

(assert (= (and d!39587 c!32279) b!160792))

(assert (= (and d!39587 (not c!32279)) b!160794))

(assert (= (and b!160792 res!72913) b!160795))

(assert (= (and b!160794 (not res!72912)) b!160793))

(assert (= (or b!160795 b!160793) bm!6815))

(declare-fun m!150225 () Bool)

(assert (=> b!160792 m!150225))

(declare-fun m!150227 () Bool)

(assert (=> bm!6815 m!150227))

(assert (=> b!160033 d!39587))

(declare-fun bs!15164 () Bool)

(declare-fun d!39589 () Bool)

(assert (= bs!15164 (and d!39589 d!39273)))

(declare-fun lambda!4381 () Int)

(assert (=> bs!15164 (not (= lambda!4381 lambda!4358))))

(declare-fun bs!15165 () Bool)

(assert (= bs!15165 (and d!39589 b!160018)))

(assert (=> bs!15165 (= lambda!4381 lambda!4352)))

(declare-fun bs!15166 () Bool)

(assert (= bs!15166 (and d!39589 b!160755)))

(assert (=> bs!15166 (= lambda!4381 lambda!4380)))

(declare-fun bs!15167 () Bool)

(assert (= bs!15167 (and d!39589 d!39165)))

(assert (=> bs!15167 (= lambda!4381 lambda!4353)))

(declare-fun bs!15168 () Bool)

(assert (= bs!15168 (and d!39589 b!160081)))

(assert (=> bs!15168 (= lambda!4381 lambda!4354)))

(declare-fun bs!15169 () Bool)

(assert (= bs!15169 (and d!39589 d!39095)))

(assert (=> bs!15169 (= lambda!4381 lambda!4330)))

(declare-fun bs!15170 () Bool)

(assert (= bs!15170 (and d!39589 b!159883)))

(assert (=> bs!15170 (= lambda!4381 lambda!4345)))

(declare-fun bs!15171 () Bool)

(assert (= bs!15171 (and d!39589 b!159687)))

(assert (=> bs!15171 (not (= lambda!4381 lambda!4322))))

(declare-fun bs!15172 () Bool)

(assert (= bs!15172 (and d!39589 b!160313)))

(assert (=> bs!15172 (= lambda!4381 lambda!4360)))

(declare-fun bs!15173 () Bool)

(assert (= bs!15173 (and d!39589 d!39119)))

(assert (=> bs!15173 (not (= lambda!4381 lambda!4344))))

(declare-fun bs!15174 () Bool)

(assert (= bs!15174 (and d!39589 d!39307)))

(assert (=> bs!15174 (= lambda!4381 lambda!4363)))

(declare-fun b!160800 () Bool)

(declare-fun e!96704 () Bool)

(assert (=> b!160800 (= e!96704 true)))

(declare-fun b!160799 () Bool)

(declare-fun e!96703 () Bool)

(assert (=> b!160799 (= e!96703 e!96704)))

(declare-fun b!160798 () Bool)

(declare-fun e!96702 () Bool)

(assert (=> b!160798 (= e!96702 e!96703)))

(assert (=> d!39589 e!96702))

(assert (= b!160799 b!160800))

(assert (= b!160798 b!160799))

(assert (= (and d!39589 ((_ is Cons!2748) rules!1920)) b!160798))

(assert (=> b!160800 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4381))))

(assert (=> b!160800 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4381))))

(assert (=> d!39589 true))

(declare-fun lt!48552 () Bool)

(assert (=> d!39589 (= lt!48552 (forall!500 (list!989 lt!47937) lambda!4381))))

(declare-fun e!96700 () Bool)

(assert (=> d!39589 (= lt!48552 e!96700)))

(declare-fun res!72915 () Bool)

(assert (=> d!39589 (=> res!72915 e!96700)))

(assert (=> d!39589 (= res!72915 (not ((_ is Cons!2747) (list!989 lt!47937))))))

(assert (=> d!39589 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39589 (= (rulesProduceEachTokenIndividuallyList!101 thiss!17480 rules!1920 (list!989 lt!47937)) lt!48552)))

(declare-fun b!160796 () Bool)

(declare-fun e!96701 () Bool)

(assert (=> b!160796 (= e!96700 e!96701)))

(declare-fun res!72914 () Bool)

(assert (=> b!160796 (=> (not res!72914) (not e!96701))))

(assert (=> b!160796 (= res!72914 (rulesProduceIndividualToken!118 thiss!17480 rules!1920 (h!8144 (list!989 lt!47937))))))

(declare-fun b!160797 () Bool)

(assert (=> b!160797 (= e!96701 (rulesProduceEachTokenIndividuallyList!101 thiss!17480 rules!1920 (t!25821 (list!989 lt!47937))))))

(assert (= (and d!39589 (not res!72915)) b!160796))

(assert (= (and b!160796 res!72914) b!160797))

(assert (=> d!39589 m!148513))

(declare-fun m!150229 () Bool)

(assert (=> d!39589 m!150229))

(assert (=> d!39589 m!148325))

(declare-fun m!150231 () Bool)

(assert (=> b!160796 m!150231))

(declare-fun m!150233 () Bool)

(assert (=> b!160797 m!150233))

(assert (=> b!159805 d!39589))

(assert (=> b!159805 d!39411))

(declare-fun b!160811 () Bool)

(declare-fun e!96709 () List!2756)

(assert (=> b!160811 (= e!96709 (Cons!2746 (h!8143 (t!25820 lt!47936)) (++!608 (t!25820 (t!25820 lt!47936)) lt!47935)))))

(declare-fun b!160813 () Bool)

(declare-fun lt!48558 () List!2756)

(declare-fun e!96708 () Bool)

(assert (=> b!160813 (= e!96708 (or (not (= lt!47935 Nil!2746)) (= lt!48558 (t!25820 lt!47936))))))

(declare-fun b!160810 () Bool)

(assert (=> b!160810 (= e!96709 lt!47935)))

(declare-fun b!160812 () Bool)

(declare-fun res!72924 () Bool)

(assert (=> b!160812 (=> (not res!72924) (not e!96708))))

(assert (=> b!160812 (= res!72924 (= (size!2323 lt!48558) (+ (size!2323 (t!25820 lt!47936)) (size!2323 lt!47935))))))

(declare-fun d!39591 () Bool)

(assert (=> d!39591 e!96708))

(declare-fun res!72923 () Bool)

(assert (=> d!39591 (=> (not res!72923) (not e!96708))))

(assert (=> d!39591 (= res!72923 (= (content!383 lt!48558) ((_ map or) (content!383 (t!25820 lt!47936)) (content!383 lt!47935))))))

(assert (=> d!39591 (= lt!48558 e!96709)))

(declare-fun c!32281 () Bool)

(assert (=> d!39591 (= c!32281 ((_ is Nil!2746) (t!25820 lt!47936)))))

(assert (=> d!39591 (= (++!608 (t!25820 lt!47936) lt!47935) lt!48558)))

(assert (= (and d!39591 c!32281) b!160810))

(assert (= (and d!39591 (not c!32281)) b!160811))

(assert (= (and d!39591 res!72923) b!160812))

(assert (= (and b!160812 res!72924) b!160813))

(declare-fun m!150241 () Bool)

(assert (=> b!160811 m!150241))

(declare-fun m!150243 () Bool)

(assert (=> b!160812 m!150243))

(assert (=> b!160812 m!149537))

(assert (=> b!160812 m!148805))

(declare-fun m!150247 () Bool)

(assert (=> d!39591 m!150247))

(assert (=> d!39591 m!149541))

(assert (=> d!39591 m!148811))

(assert (=> b!160070 d!39591))

(declare-fun d!39593 () Bool)

(declare-fun lt!48559 () Token!710)

(assert (=> d!39593 (= lt!48559 (apply!382 (list!989 (_1!1545 lt!48128)) 0))))

(assert (=> d!39593 (= lt!48559 (apply!383 (c!32023 (_1!1545 lt!48128)) 0))))

(declare-fun e!96710 () Bool)

(assert (=> d!39593 e!96710))

(declare-fun res!72925 () Bool)

(assert (=> d!39593 (=> (not res!72925) (not e!96710))))

(assert (=> d!39593 (= res!72925 (<= 0 0))))

(assert (=> d!39593 (= (apply!381 (_1!1545 lt!48128) 0) lt!48559)))

(declare-fun b!160814 () Bool)

(assert (=> b!160814 (= e!96710 (< 0 (size!2319 (_1!1545 lt!48128))))))

(assert (= (and d!39593 res!72925) b!160814))

(assert (=> d!39593 m!150169))

(assert (=> d!39593 m!150169))

(declare-fun m!150259 () Bool)

(assert (=> d!39593 m!150259))

(declare-fun m!150261 () Bool)

(assert (=> d!39593 m!150261))

(assert (=> b!160814 m!148913))

(assert (=> b!160110 d!39593))

(declare-fun d!39595 () Bool)

(assert (=> d!39595 (= (list!985 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))) (list!988 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))))))

(declare-fun bs!15175 () Bool)

(assert (= bs!15175 d!39595))

(declare-fun m!150267 () Bool)

(assert (=> bs!15175 m!150267))

(assert (=> b!160050 d!39595))

(declare-fun d!39597 () Bool)

(assert (=> d!39597 (= (inv!16 (value!18081 (h!8144 tokens!465))) (= (charsToInt!0 (text!3982 (value!18081 (h!8144 tokens!465)))) (value!18072 (value!18081 (h!8144 tokens!465)))))))

(declare-fun bs!15176 () Bool)

(assert (= bs!15176 d!39597))

(declare-fun m!150275 () Bool)

(assert (=> bs!15176 m!150275))

(assert (=> b!160115 d!39597))

(declare-fun b!160816 () Bool)

(declare-fun e!96711 () List!2756)

(declare-fun e!96712 () List!2756)

(assert (=> b!160816 (= e!96711 e!96712)))

(declare-fun c!32283 () Bool)

(assert (=> b!160816 (= c!32283 ((_ is Leaf!1369) (c!32021 (charsOf!138 (h!8144 tokens!465)))))))

(declare-fun b!160818 () Bool)

(assert (=> b!160818 (= e!96712 (++!608 (list!988 (left!2072 (c!32021 (charsOf!138 (h!8144 tokens!465))))) (list!988 (right!2402 (c!32021 (charsOf!138 (h!8144 tokens!465)))))))))

(declare-fun d!39599 () Bool)

(declare-fun c!32282 () Bool)

(assert (=> d!39599 (= c!32282 ((_ is Empty!788) (c!32021 (charsOf!138 (h!8144 tokens!465)))))))

(assert (=> d!39599 (= (list!988 (c!32021 (charsOf!138 (h!8144 tokens!465)))) e!96711)))

(declare-fun b!160815 () Bool)

(assert (=> b!160815 (= e!96711 Nil!2746)))

(declare-fun b!160817 () Bool)

(assert (=> b!160817 (= e!96712 (list!992 (xs!3383 (c!32021 (charsOf!138 (h!8144 tokens!465))))))))

(assert (= (and d!39599 c!32282) b!160815))

(assert (= (and d!39599 (not c!32282)) b!160816))

(assert (= (and b!160816 c!32283) b!160817))

(assert (= (and b!160816 (not c!32283)) b!160818))

(declare-fun m!150281 () Bool)

(assert (=> b!160818 m!150281))

(declare-fun m!150283 () Bool)

(assert (=> b!160818 m!150283))

(assert (=> b!160818 m!150281))

(assert (=> b!160818 m!150283))

(declare-fun m!150285 () Bool)

(assert (=> b!160818 m!150285))

(declare-fun m!150287 () Bool)

(assert (=> b!160817 m!150287))

(assert (=> d!39183 d!39599))

(declare-fun d!39603 () Bool)

(assert (=> d!39603 (= (list!985 (ite c!32089 call!6767 call!6770)) (list!988 (c!32021 (ite c!32089 call!6767 call!6770))))))

(declare-fun bs!15177 () Bool)

(assert (= bs!15177 d!39603))

(declare-fun m!150289 () Bool)

(assert (=> bs!15177 m!150289))

(assert (=> bm!6764 d!39603))

(declare-fun b!160907 () Bool)

(declare-fun res!72976 () Bool)

(declare-fun e!96764 () Bool)

(assert (=> b!160907 (=> (not res!72976) (not e!96764))))

(declare-fun lt!48612 () Option!271)

(assert (=> b!160907 (= res!72976 (matchR!74 (regex!483 (rule!990 (_1!1543 (get!747 lt!48612)))) (list!985 (charsOf!138 (_1!1543 (get!747 lt!48612))))))))

(declare-fun b!160908 () Bool)

(declare-fun contains!442 (List!2758 Rule!766) Bool)

(assert (=> b!160908 (= e!96764 (contains!442 rules!1920 (rule!990 (_1!1543 (get!747 lt!48612)))))))

(declare-fun b!160909 () Bool)

(declare-fun e!96766 () Bool)

(assert (=> b!160909 (= e!96766 e!96764)))

(declare-fun res!72981 () Bool)

(assert (=> b!160909 (=> (not res!72981) (not e!96764))))

(assert (=> b!160909 (= res!72981 (isDefined!122 lt!48612))))

(declare-fun b!160910 () Bool)

(declare-fun res!72980 () Bool)

(assert (=> b!160910 (=> (not res!72980) (not e!96764))))

(declare-fun apply!385 (TokenValueInjection!782 BalanceConc!1584) TokenValue!505)

(assert (=> b!160910 (= res!72980 (= (value!18081 (_1!1543 (get!747 lt!48612))) (apply!385 (transformation!483 (rule!990 (_1!1543 (get!747 lt!48612)))) (seqFromList!343 (originalCharacters!526 (_1!1543 (get!747 lt!48612)))))))))

(declare-fun b!160911 () Bool)

(declare-fun res!72977 () Bool)

(assert (=> b!160911 (=> (not res!72977) (not e!96764))))

(assert (=> b!160911 (= res!72977 (= (list!985 (charsOf!138 (_1!1543 (get!747 lt!48612)))) (originalCharacters!526 (_1!1543 (get!747 lt!48612)))))))

(declare-fun d!39605 () Bool)

(assert (=> d!39605 e!96766))

(declare-fun res!72979 () Bool)

(assert (=> d!39605 (=> res!72979 e!96766)))

(assert (=> d!39605 (= res!72979 (isEmpty!1114 lt!48612))))

(declare-fun e!96765 () Option!271)

(assert (=> d!39605 (= lt!48612 e!96765)))

(declare-fun c!32305 () Bool)

(assert (=> d!39605 (= c!32305 (and ((_ is Cons!2748) rules!1920) ((_ is Nil!2748) (t!25822 rules!1920))))))

(declare-fun lt!48613 () Unit!2232)

(declare-fun lt!48616 () Unit!2232)

(assert (=> d!39605 (= lt!48613 lt!48616)))

(assert (=> d!39605 (isPrefix!218 (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117) (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117))))

(assert (=> d!39605 (= lt!48616 (lemmaIsPrefixRefl!126 (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117) (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117)))))

(assert (=> d!39605 (rulesValidInductive!103 thiss!17480 rules!1920)))

(assert (=> d!39605 (= (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117)) lt!48612)))

(declare-fun b!160912 () Bool)

(declare-fun call!6824 () Option!271)

(assert (=> b!160912 (= e!96765 call!6824)))

(declare-fun b!160913 () Bool)

(declare-fun lt!48614 () Option!271)

(declare-fun lt!48615 () Option!271)

(assert (=> b!160913 (= e!96765 (ite (and ((_ is None!270) lt!48614) ((_ is None!270) lt!48615)) None!270 (ite ((_ is None!270) lt!48615) lt!48614 (ite ((_ is None!270) lt!48614) lt!48615 (ite (>= (size!2318 (_1!1543 (v!13675 lt!48614))) (size!2318 (_1!1543 (v!13675 lt!48615)))) lt!48614 lt!48615)))))))

(assert (=> b!160913 (= lt!48614 call!6824)))

(assert (=> b!160913 (= lt!48615 (maxPrefix!119 thiss!17480 (t!25822 rules!1920) (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117)))))

(declare-fun bm!6819 () Bool)

(assert (=> bm!6819 (= call!6824 (maxPrefixOneRule!62 thiss!17480 (h!8145 rules!1920) (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117)))))

(declare-fun b!160914 () Bool)

(declare-fun res!72978 () Bool)

(assert (=> b!160914 (=> (not res!72978) (not e!96764))))

(assert (=> b!160914 (= res!72978 (= (++!608 (list!985 (charsOf!138 (_1!1543 (get!747 lt!48612)))) (_2!1543 (get!747 lt!48612))) (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117)))))

(declare-fun b!160915 () Bool)

(declare-fun res!72982 () Bool)

(assert (=> b!160915 (=> (not res!72982) (not e!96764))))

(assert (=> b!160915 (= res!72982 (< (size!2323 (_2!1543 (get!747 lt!48612))) (size!2323 (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117))))))

(assert (= (and d!39605 c!32305) b!160912))

(assert (= (and d!39605 (not c!32305)) b!160913))

(assert (= (or b!160912 b!160913) bm!6819))

(assert (= (and d!39605 (not res!72979)) b!160909))

(assert (= (and b!160909 res!72981) b!160911))

(assert (= (and b!160911 res!72977) b!160915))

(assert (= (and b!160915 res!72982) b!160914))

(assert (= (and b!160914 res!72978) b!160910))

(assert (= (and b!160910 res!72980) b!160907))

(assert (= (and b!160907 res!72976) b!160908))

(declare-fun m!150513 () Bool)

(assert (=> b!160910 m!150513))

(declare-fun m!150515 () Bool)

(assert (=> b!160910 m!150515))

(assert (=> b!160910 m!150515))

(declare-fun m!150517 () Bool)

(assert (=> b!160910 m!150517))

(declare-fun m!150519 () Bool)

(assert (=> d!39605 m!150519))

(assert (=> d!39605 m!148869))

(assert (=> d!39605 m!148869))

(declare-fun m!150521 () Bool)

(assert (=> d!39605 m!150521))

(assert (=> d!39605 m!148869))

(assert (=> d!39605 m!148869))

(declare-fun m!150523 () Bool)

(assert (=> d!39605 m!150523))

(assert (=> d!39605 m!149059))

(assert (=> b!160907 m!150513))

(declare-fun m!150525 () Bool)

(assert (=> b!160907 m!150525))

(assert (=> b!160907 m!150525))

(declare-fun m!150527 () Bool)

(assert (=> b!160907 m!150527))

(assert (=> b!160907 m!150527))

(declare-fun m!150529 () Bool)

(assert (=> b!160907 m!150529))

(assert (=> b!160914 m!150513))

(assert (=> b!160914 m!150525))

(assert (=> b!160914 m!150525))

(assert (=> b!160914 m!150527))

(assert (=> b!160914 m!150527))

(declare-fun m!150531 () Bool)

(assert (=> b!160914 m!150531))

(assert (=> b!160915 m!150513))

(declare-fun m!150533 () Bool)

(assert (=> b!160915 m!150533))

(assert (=> b!160915 m!148869))

(declare-fun m!150535 () Bool)

(assert (=> b!160915 m!150535))

(assert (=> b!160913 m!148869))

(declare-fun m!150537 () Bool)

(assert (=> b!160913 m!150537))

(declare-fun m!150539 () Bool)

(assert (=> b!160909 m!150539))

(assert (=> bm!6819 m!148869))

(declare-fun m!150541 () Bool)

(assert (=> bm!6819 m!150541))

(assert (=> b!160911 m!150513))

(assert (=> b!160911 m!150525))

(assert (=> b!160911 m!150525))

(assert (=> b!160911 m!150527))

(assert (=> b!160908 m!150513))

(declare-fun m!150543 () Bool)

(assert (=> b!160908 m!150543))

(assert (=> b!160081 d!39605))

(declare-fun bs!15183 () Bool)

(declare-fun b!160918 () Bool)

(assert (= bs!15183 (and b!160918 d!39589)))

(declare-fun lambda!4384 () Int)

(assert (=> bs!15183 (= lambda!4384 lambda!4381)))

(declare-fun bs!15184 () Bool)

(assert (= bs!15184 (and b!160918 d!39273)))

(assert (=> bs!15184 (not (= lambda!4384 lambda!4358))))

(declare-fun bs!15185 () Bool)

(assert (= bs!15185 (and b!160918 b!160018)))

(assert (=> bs!15185 (= lambda!4384 lambda!4352)))

(declare-fun bs!15186 () Bool)

(assert (= bs!15186 (and b!160918 b!160755)))

(assert (=> bs!15186 (= lambda!4384 lambda!4380)))

(declare-fun bs!15187 () Bool)

(assert (= bs!15187 (and b!160918 d!39165)))

(assert (=> bs!15187 (= lambda!4384 lambda!4353)))

(declare-fun bs!15188 () Bool)

(assert (= bs!15188 (and b!160918 b!160081)))

(assert (=> bs!15188 (= lambda!4384 lambda!4354)))

(declare-fun bs!15189 () Bool)

(assert (= bs!15189 (and b!160918 d!39095)))

(assert (=> bs!15189 (= lambda!4384 lambda!4330)))

(declare-fun bs!15190 () Bool)

(assert (= bs!15190 (and b!160918 b!159883)))

(assert (=> bs!15190 (= lambda!4384 lambda!4345)))

(declare-fun bs!15191 () Bool)

(assert (= bs!15191 (and b!160918 b!159687)))

(assert (=> bs!15191 (not (= lambda!4384 lambda!4322))))

(declare-fun bs!15192 () Bool)

(assert (= bs!15192 (and b!160918 b!160313)))

(assert (=> bs!15192 (= lambda!4384 lambda!4360)))

(declare-fun bs!15193 () Bool)

(assert (= bs!15193 (and b!160918 d!39119)))

(assert (=> bs!15193 (not (= lambda!4384 lambda!4344))))

(declare-fun bs!15195 () Bool)

(assert (= bs!15195 (and b!160918 d!39307)))

(assert (=> bs!15195 (= lambda!4384 lambda!4363)))

(declare-fun b!160928 () Bool)

(declare-fun e!96775 () Bool)

(assert (=> b!160928 (= e!96775 true)))

(declare-fun b!160927 () Bool)

(declare-fun e!96774 () Bool)

(assert (=> b!160927 (= e!96774 e!96775)))

(declare-fun b!160926 () Bool)

(declare-fun e!96773 () Bool)

(assert (=> b!160926 (= e!96773 e!96774)))

(assert (=> b!160918 e!96773))

(assert (= b!160927 b!160928))

(assert (= b!160926 b!160927))

(assert (= (and b!160918 ((_ is Cons!2748) rules!1920)) b!160926))

(assert (=> b!160928 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4384))))

(assert (=> b!160928 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 rules!1920)))) (dynLambda!989 order!1407 lambda!4384))))

(assert (=> b!160918 true))

(declare-fun e!96771 () List!2756)

(declare-fun e!96772 () List!2756)

(assert (=> b!160918 (= e!96771 e!96772)))

(declare-fun lt!48622 () Unit!2232)

(assert (=> b!160918 (= lt!48622 (forallContained!62 (t!25821 (t!25821 tokens!465)) lambda!4384 (h!8144 (t!25821 (t!25821 tokens!465)))))))

(declare-fun lt!48620 () List!2756)

(assert (=> b!160918 (= lt!48620 (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (t!25821 (t!25821 (t!25821 tokens!465))) separatorToken!170))))

(declare-fun lt!48621 () Option!271)

(assert (=> b!160918 (= lt!48621 (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 (t!25821 tokens!465))))) lt!48620)))))

(declare-fun c!32308 () Bool)

(assert (=> b!160918 (= c!32308 (and ((_ is Some!270) lt!48621) (= (_1!1543 (v!13675 lt!48621)) (h!8144 (t!25821 (t!25821 tokens!465))))))))

(declare-fun b!160919 () Bool)

(declare-fun c!32307 () Bool)

(assert (=> b!160919 (= c!32307 (and ((_ is Some!270) lt!48621) (not (= (_1!1543 (v!13675 lt!48621)) (h!8144 (t!25821 (t!25821 tokens!465)))))))))

(declare-fun e!96770 () List!2756)

(assert (=> b!160919 (= e!96772 e!96770)))

(declare-fun bm!6820 () Bool)

(declare-fun call!6828 () BalanceConc!1584)

(declare-fun call!6825 () BalanceConc!1584)

(assert (=> bm!6820 (= call!6828 call!6825)))

(declare-fun b!160920 () Bool)

(declare-fun call!6827 () List!2756)

(assert (=> b!160920 (= e!96772 call!6827)))

(declare-fun bm!6821 () Bool)

(declare-fun call!6826 () List!2756)

(declare-fun e!96769 () BalanceConc!1584)

(assert (=> bm!6821 (= call!6826 (list!985 e!96769))))

(declare-fun c!32309 () Bool)

(assert (=> bm!6821 (= c!32309 c!32307)))

(declare-fun b!160921 () Bool)

(assert (=> b!160921 (= e!96771 Nil!2746)))

(declare-fun b!160922 () Bool)

(assert (=> b!160922 (= e!96770 (++!608 call!6827 lt!48620))))

(declare-fun d!39653 () Bool)

(declare-fun c!32306 () Bool)

(assert (=> d!39653 (= c!32306 ((_ is Cons!2747) (t!25821 (t!25821 tokens!465))))))

(assert (=> d!39653 (= (printWithSeparatorTokenWhenNeededList!62 thiss!17480 rules!1920 (t!25821 (t!25821 tokens!465)) separatorToken!170) e!96771)))

(declare-fun call!6829 () List!2756)

(declare-fun bm!6822 () Bool)

(assert (=> bm!6822 (= call!6829 (list!985 (ite c!32308 call!6825 call!6828)))))

(declare-fun b!160923 () Bool)

(assert (=> b!160923 (= e!96769 call!6828)))

(declare-fun b!160924 () Bool)

(assert (=> b!160924 (= e!96769 (charsOf!138 separatorToken!170))))

(declare-fun bm!6823 () Bool)

(assert (=> bm!6823 (= call!6827 (++!608 call!6829 (ite c!32308 lt!48620 call!6826)))))

(declare-fun bm!6824 () Bool)

(assert (=> bm!6824 (= call!6825 (charsOf!138 (h!8144 (t!25821 (t!25821 tokens!465)))))))

(declare-fun b!160925 () Bool)

(assert (=> b!160925 (= e!96770 Nil!2746)))

(assert (=> b!160925 (= (print!104 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 (t!25821 tokens!465))))) (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 (t!25821 tokens!465)))) 0 (BalanceConc!1585 Empty!788)))))

(declare-fun lt!48619 () Unit!2232)

(declare-fun Unit!2260 () Unit!2232)

(assert (=> b!160925 (= lt!48619 Unit!2260)))

(declare-fun lt!48617 () Unit!2232)

(assert (=> b!160925 (= lt!48617 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 call!6826 lt!48620))))

(assert (=> b!160925 false))

(declare-fun lt!48618 () Unit!2232)

(declare-fun Unit!2261 () Unit!2232)

(assert (=> b!160925 (= lt!48618 Unit!2261)))

(assert (= (and d!39653 c!32306) b!160918))

(assert (= (and d!39653 (not c!32306)) b!160921))

(assert (= (and b!160918 c!32308) b!160920))

(assert (= (and b!160918 (not c!32308)) b!160919))

(assert (= (and b!160919 c!32307) b!160922))

(assert (= (and b!160919 (not c!32307)) b!160925))

(assert (= (or b!160922 b!160925) bm!6820))

(assert (= (or b!160922 b!160925) bm!6821))

(assert (= (and bm!6821 c!32309) b!160924))

(assert (= (and bm!6821 (not c!32309)) b!160923))

(assert (= (or b!160920 bm!6820) bm!6824))

(assert (= (or b!160920 b!160922) bm!6822))

(assert (= (or b!160920 b!160922) bm!6823))

(declare-fun m!150555 () Bool)

(assert (=> bm!6823 m!150555))

(assert (=> b!160924 m!148355))

(declare-fun m!150561 () Bool)

(assert (=> b!160922 m!150561))

(declare-fun m!150563 () Bool)

(assert (=> b!160918 m!150563))

(declare-fun m!150565 () Bool)

(assert (=> b!160918 m!150565))

(declare-fun m!150567 () Bool)

(assert (=> b!160918 m!150567))

(declare-fun m!150571 () Bool)

(assert (=> b!160918 m!150571))

(declare-fun m!150573 () Bool)

(assert (=> b!160918 m!150573))

(declare-fun m!150575 () Bool)

(assert (=> b!160918 m!150575))

(assert (=> b!160918 m!150571))

(assert (=> b!160918 m!150565))

(assert (=> b!160918 m!150575))

(declare-fun m!150577 () Bool)

(assert (=> bm!6822 m!150577))

(declare-fun m!150579 () Bool)

(assert (=> b!160925 m!150579))

(assert (=> b!160925 m!150579))

(declare-fun m!150581 () Bool)

(assert (=> b!160925 m!150581))

(assert (=> b!160925 m!150579))

(declare-fun m!150583 () Bool)

(assert (=> b!160925 m!150583))

(declare-fun m!150589 () Bool)

(assert (=> b!160925 m!150589))

(declare-fun m!150591 () Bool)

(assert (=> bm!6821 m!150591))

(assert (=> bm!6824 m!150565))

(assert (=> b!160081 d!39653))

(declare-fun d!39667 () Bool)

(assert (=> d!39667 (dynLambda!991 lambda!4354 (h!8144 (t!25821 tokens!465)))))

(declare-fun lt!48625 () Unit!2232)

(assert (=> d!39667 (= lt!48625 (choose!1789 (t!25821 tokens!465) lambda!4354 (h!8144 (t!25821 tokens!465))))))

(declare-fun e!96787 () Bool)

(assert (=> d!39667 e!96787))

(declare-fun res!72986 () Bool)

(assert (=> d!39667 (=> (not res!72986) (not e!96787))))

(assert (=> d!39667 (= res!72986 (forall!500 (t!25821 tokens!465) lambda!4354))))

(assert (=> d!39667 (= (forallContained!62 (t!25821 tokens!465) lambda!4354 (h!8144 (t!25821 tokens!465))) lt!48625)))

(declare-fun b!160952 () Bool)

(assert (=> b!160952 (= e!96787 (contains!439 (t!25821 tokens!465) (h!8144 (t!25821 tokens!465))))))

(assert (= (and d!39667 res!72986) b!160952))

(declare-fun b_lambda!3351 () Bool)

(assert (=> (not b_lambda!3351) (not d!39667)))

(declare-fun m!150605 () Bool)

(assert (=> d!39667 m!150605))

(declare-fun m!150607 () Bool)

(assert (=> d!39667 m!150607))

(declare-fun m!150609 () Bool)

(assert (=> d!39667 m!150609))

(declare-fun m!150611 () Bool)

(assert (=> b!160952 m!150611))

(assert (=> b!160081 d!39667))

(assert (=> b!160081 d!39545))

(declare-fun b!160954 () Bool)

(declare-fun e!96789 () List!2756)

(assert (=> b!160954 (= e!96789 (Cons!2746 (h!8143 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465))))) (++!608 (t!25820 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465))))) lt!48117)))))

(declare-fun b!160956 () Bool)

(declare-fun lt!48627 () List!2756)

(declare-fun e!96788 () Bool)

(assert (=> b!160956 (= e!96788 (or (not (= lt!48117 Nil!2746)) (= lt!48627 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))))))))

(declare-fun b!160953 () Bool)

(assert (=> b!160953 (= e!96789 lt!48117)))

(declare-fun b!160955 () Bool)

(declare-fun res!72988 () Bool)

(assert (=> b!160955 (=> (not res!72988) (not e!96788))))

(assert (=> b!160955 (= res!72988 (= (size!2323 lt!48627) (+ (size!2323 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465))))) (size!2323 lt!48117))))))

(declare-fun d!39673 () Bool)

(assert (=> d!39673 e!96788))

(declare-fun res!72987 () Bool)

(assert (=> d!39673 (=> (not res!72987) (not e!96788))))

(assert (=> d!39673 (= res!72987 (= (content!383 lt!48627) ((_ map or) (content!383 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465))))) (content!383 lt!48117))))))

(assert (=> d!39673 (= lt!48627 e!96789)))

(declare-fun c!32320 () Bool)

(assert (=> d!39673 (= c!32320 ((_ is Nil!2746) (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465))))))))

(assert (=> d!39673 (= (++!608 (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) lt!48117) lt!48627)))

(assert (= (and d!39673 c!32320) b!160953))

(assert (= (and d!39673 (not c!32320)) b!160954))

(assert (= (and d!39673 res!72987) b!160955))

(assert (= (and b!160955 res!72988) b!160956))

(declare-fun m!150625 () Bool)

(assert (=> b!160954 m!150625))

(declare-fun m!150627 () Bool)

(assert (=> b!160955 m!150627))

(assert (=> b!160955 m!148873))

(declare-fun m!150629 () Bool)

(assert (=> b!160955 m!150629))

(declare-fun m!150631 () Bool)

(assert (=> b!160955 m!150631))

(declare-fun m!150633 () Bool)

(assert (=> d!39673 m!150633))

(assert (=> d!39673 m!148873))

(declare-fun m!150635 () Bool)

(assert (=> d!39673 m!150635))

(declare-fun m!150637 () Bool)

(assert (=> d!39673 m!150637))

(assert (=> b!160081 d!39673))

(declare-fun d!39679 () Bool)

(assert (=> d!39679 (= (list!985 (charsOf!138 (h!8144 (t!25821 tokens!465)))) (list!988 (c!32021 (charsOf!138 (h!8144 (t!25821 tokens!465))))))))

(declare-fun bs!15197 () Bool)

(assert (= bs!15197 d!39679))

(declare-fun m!150639 () Bool)

(assert (=> bs!15197 m!150639))

(assert (=> b!160081 d!39679))

(declare-fun d!39681 () Bool)

(declare-fun c!32322 () Bool)

(assert (=> d!39681 (= c!32322 ((_ is Nil!2746) lt!48100))))

(declare-fun e!96793 () (InoxSet C!2336))

(assert (=> d!39681 (= (content!383 lt!48100) e!96793)))

(declare-fun b!160961 () Bool)

(assert (=> b!160961 (= e!96793 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!160962 () Bool)

(assert (=> b!160962 (= e!96793 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!48100) true) (content!383 (t!25820 lt!48100))))))

(assert (= (and d!39681 c!32322) b!160961))

(assert (= (and d!39681 (not c!32322)) b!160962))

(declare-fun m!150641 () Bool)

(assert (=> b!160962 m!150641))

(declare-fun m!150643 () Bool)

(assert (=> b!160962 m!150643))

(assert (=> d!39173 d!39681))

(assert (=> d!39173 d!39543))

(assert (=> d!39173 d!39427))

(declare-fun d!39683 () Bool)

(declare-fun lt!48636 () BalanceConc!1584)

(assert (=> d!39683 (= (list!985 lt!48636) (originalCharacters!526 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743))))))

(assert (=> d!39683 (= lt!48636 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743))))) (value!18081 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))))

(assert (=> d!39683 (= (charsOf!138 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743))) lt!48636)))

(declare-fun b_lambda!3353 () Bool)

(assert (=> (not b_lambda!3353) (not d!39683)))

(declare-fun t!25968 () Bool)

(declare-fun tb!5907 () Bool)

(assert (=> (and b!160149 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) t!25968) tb!5907))

(declare-fun b!160963 () Bool)

(declare-fun e!96794 () Bool)

(declare-fun tp!81523 () Bool)

(assert (=> b!160963 (= e!96794 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743))))) (value!18081 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) tp!81523))))

(declare-fun result!8498 () Bool)

(assert (=> tb!5907 (= result!8498 (and (inv!3566 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743))))) (value!18081 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743))))) e!96794))))

(assert (= tb!5907 b!160963))

(declare-fun m!150661 () Bool)

(assert (=> b!160963 m!150661))

(declare-fun m!150663 () Bool)

(assert (=> tb!5907 m!150663))

(assert (=> d!39683 t!25968))

(declare-fun b_and!9987 () Bool)

(assert (= b_and!9985 (and (=> t!25968 result!8498) b_and!9987)))

(declare-fun tb!5909 () Bool)

(declare-fun t!25970 () Bool)

(assert (=> (and b!159680 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) t!25970) tb!5909))

(declare-fun result!8500 () Bool)

(assert (= result!8500 result!8498))

(assert (=> d!39683 t!25970))

(declare-fun b_and!9989 () Bool)

(assert (= b_and!9983 (and (=> t!25970 result!8500) b_and!9989)))

(declare-fun tb!5911 () Bool)

(declare-fun t!25972 () Bool)

(assert (=> (and b!159690 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) t!25972) tb!5911))

(declare-fun result!8502 () Bool)

(assert (= result!8502 result!8498))

(assert (=> d!39683 t!25972))

(declare-fun b_and!9991 () Bool)

(assert (= b_and!9981 (and (=> t!25972 result!8502) b_and!9991)))

(declare-fun t!25974 () Bool)

(declare-fun tb!5913 () Bool)

(assert (=> (and b!160138 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))) (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) t!25974) tb!5913))

(declare-fun result!8504 () Bool)

(assert (= result!8504 result!8498))

(assert (=> d!39683 t!25974))

(declare-fun b_and!9993 () Bool)

(assert (= b_and!9979 (and (=> t!25974 result!8504) b_and!9993)))

(declare-fun tb!5915 () Bool)

(declare-fun t!25976 () Bool)

(assert (=> (and b!159684 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) t!25976) tb!5915))

(declare-fun result!8506 () Bool)

(assert (= result!8506 result!8498))

(assert (=> d!39683 t!25976))

(declare-fun b_and!9995 () Bool)

(assert (= b_and!9977 (and (=> t!25976 result!8506) b_and!9995)))

(declare-fun m!150681 () Bool)

(assert (=> d!39683 m!150681))

(declare-fun m!150683 () Bool)

(assert (=> d!39683 m!150683))

(assert (=> bm!6740 d!39683))

(declare-fun b!160969 () Bool)

(declare-fun e!96798 () List!2756)

(assert (=> b!160969 (= e!96798 (Cons!2746 (h!8143 (t!25820 lt!47935)) (++!608 (t!25820 (t!25820 lt!47935)) lt!47938)))))

(declare-fun e!96797 () Bool)

(declare-fun lt!48654 () List!2756)

(declare-fun b!160971 () Bool)

(assert (=> b!160971 (= e!96797 (or (not (= lt!47938 Nil!2746)) (= lt!48654 (t!25820 lt!47935))))))

(declare-fun b!160968 () Bool)

(assert (=> b!160968 (= e!96798 lt!47938)))

(declare-fun b!160970 () Bool)

(declare-fun res!72994 () Bool)

(assert (=> b!160970 (=> (not res!72994) (not e!96797))))

(assert (=> b!160970 (= res!72994 (= (size!2323 lt!48654) (+ (size!2323 (t!25820 lt!47935)) (size!2323 lt!47938))))))

(declare-fun d!39687 () Bool)

(assert (=> d!39687 e!96797))

(declare-fun res!72993 () Bool)

(assert (=> d!39687 (=> (not res!72993) (not e!96797))))

(assert (=> d!39687 (= res!72993 (= (content!383 lt!48654) ((_ map or) (content!383 (t!25820 lt!47935)) (content!383 lt!47938))))))

(assert (=> d!39687 (= lt!48654 e!96798)))

(declare-fun c!32324 () Bool)

(assert (=> d!39687 (= c!32324 ((_ is Nil!2746) (t!25820 lt!47935)))))

(assert (=> d!39687 (= (++!608 (t!25820 lt!47935) lt!47938) lt!48654)))

(assert (= (and d!39687 c!32324) b!160968))

(assert (= (and d!39687 (not c!32324)) b!160969))

(assert (= (and d!39687 res!72993) b!160970))

(assert (= (and b!160970 res!72994) b!160971))

(declare-fun m!150685 () Bool)

(assert (=> b!160969 m!150685))

(declare-fun m!150687 () Bool)

(assert (=> b!160970 m!150687))

(assert (=> b!160970 m!149585))

(assert (=> b!160970 m!148807))

(declare-fun m!150689 () Bool)

(assert (=> d!39687 m!150689))

(assert (=> d!39687 m!150125))

(assert (=> d!39687 m!148813))

(assert (=> b!160066 d!39687))

(declare-fun b!160972 () Bool)

(declare-fun res!72995 () Bool)

(declare-fun e!96799 () Bool)

(assert (=> b!160972 (=> (not res!72995) (not e!96799))))

(declare-fun lt!48655 () Option!271)

(assert (=> b!160972 (= res!72995 (matchR!74 (regex!483 (rule!990 (_1!1543 (get!747 lt!48655)))) (list!985 (charsOf!138 (_1!1543 (get!747 lt!48655))))))))

(declare-fun b!160973 () Bool)

(assert (=> b!160973 (= e!96799 (contains!442 rules!1920 (rule!990 (_1!1543 (get!747 lt!48655)))))))

(declare-fun b!160974 () Bool)

(declare-fun e!96801 () Bool)

(assert (=> b!160974 (= e!96801 e!96799)))

(declare-fun res!73000 () Bool)

(assert (=> b!160974 (=> (not res!73000) (not e!96799))))

(assert (=> b!160974 (= res!73000 (isDefined!122 lt!48655))))

(declare-fun b!160975 () Bool)

(declare-fun res!72999 () Bool)

(assert (=> b!160975 (=> (not res!72999) (not e!96799))))

(assert (=> b!160975 (= res!72999 (= (value!18081 (_1!1543 (get!747 lt!48655))) (apply!385 (transformation!483 (rule!990 (_1!1543 (get!747 lt!48655)))) (seqFromList!343 (originalCharacters!526 (_1!1543 (get!747 lt!48655)))))))))

(declare-fun b!160976 () Bool)

(declare-fun res!72996 () Bool)

(assert (=> b!160976 (=> (not res!72996) (not e!96799))))

(assert (=> b!160976 (= res!72996 (= (list!985 (charsOf!138 (_1!1543 (get!747 lt!48655)))) (originalCharacters!526 (_1!1543 (get!747 lt!48655)))))))

(declare-fun d!39689 () Bool)

(assert (=> d!39689 e!96801))

(declare-fun res!72998 () Bool)

(assert (=> d!39689 (=> res!72998 e!96801)))

(assert (=> d!39689 (= res!72998 (isEmpty!1114 lt!48655))))

(declare-fun e!96800 () Option!271)

(assert (=> d!39689 (= lt!48655 e!96800)))

(declare-fun c!32325 () Bool)

(assert (=> d!39689 (= c!32325 (and ((_ is Cons!2748) rules!1920) ((_ is Nil!2748) (t!25822 rules!1920))))))

(declare-fun lt!48656 () Unit!2232)

(declare-fun lt!48659 () Unit!2232)

(assert (=> d!39689 (= lt!48656 lt!48659)))

(assert (=> d!39689 (isPrefix!218 (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094) (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094))))

(assert (=> d!39689 (= lt!48659 (lemmaIsPrefixRefl!126 (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094) (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094)))))

(assert (=> d!39689 (rulesValidInductive!103 thiss!17480 rules!1920)))

(assert (=> d!39689 (= (maxPrefix!119 thiss!17480 rules!1920 (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094)) lt!48655)))

(declare-fun b!160977 () Bool)

(declare-fun call!6830 () Option!271)

(assert (=> b!160977 (= e!96800 call!6830)))

(declare-fun b!160978 () Bool)

(declare-fun lt!48657 () Option!271)

(declare-fun lt!48658 () Option!271)

(assert (=> b!160978 (= e!96800 (ite (and ((_ is None!270) lt!48657) ((_ is None!270) lt!48658)) None!270 (ite ((_ is None!270) lt!48658) lt!48657 (ite ((_ is None!270) lt!48657) lt!48658 (ite (>= (size!2318 (_1!1543 (v!13675 lt!48657))) (size!2318 (_1!1543 (v!13675 lt!48658)))) lt!48657 lt!48658)))))))

(assert (=> b!160978 (= lt!48657 call!6830)))

(assert (=> b!160978 (= lt!48658 (maxPrefix!119 thiss!17480 (t!25822 rules!1920) (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094)))))

(declare-fun bm!6825 () Bool)

(assert (=> bm!6825 (= call!6830 (maxPrefixOneRule!62 thiss!17480 (h!8145 rules!1920) (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094)))))

(declare-fun b!160979 () Bool)

(declare-fun res!72997 () Bool)

(assert (=> b!160979 (=> (not res!72997) (not e!96799))))

(assert (=> b!160979 (= res!72997 (= (++!608 (list!985 (charsOf!138 (_1!1543 (get!747 lt!48655)))) (_2!1543 (get!747 lt!48655))) (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094)))))

(declare-fun b!160980 () Bool)

(declare-fun res!73001 () Bool)

(assert (=> b!160980 (=> (not res!73001) (not e!96799))))

(assert (=> b!160980 (= res!73001 (< (size!2323 (_2!1543 (get!747 lt!48655))) (size!2323 (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094))))))

(assert (= (and d!39689 c!32325) b!160977))

(assert (= (and d!39689 (not c!32325)) b!160978))

(assert (= (or b!160977 b!160978) bm!6825))

(assert (= (and d!39689 (not res!72998)) b!160974))

(assert (= (and b!160974 res!73000) b!160976))

(assert (= (and b!160976 res!72996) b!160980))

(assert (= (and b!160980 res!73001) b!160979))

(assert (= (and b!160979 res!72997) b!160975))

(assert (= (and b!160975 res!72999) b!160972))

(assert (= (and b!160972 res!72995) b!160973))

(declare-fun m!150743 () Bool)

(assert (=> b!160975 m!150743))

(declare-fun m!150745 () Bool)

(assert (=> b!160975 m!150745))

(assert (=> b!160975 m!150745))

(declare-fun m!150749 () Bool)

(assert (=> b!160975 m!150749))

(declare-fun m!150751 () Bool)

(assert (=> d!39689 m!150751))

(assert (=> d!39689 m!148751))

(assert (=> d!39689 m!148751))

(declare-fun m!150753 () Bool)

(assert (=> d!39689 m!150753))

(assert (=> d!39689 m!148751))

(assert (=> d!39689 m!148751))

(declare-fun m!150757 () Bool)

(assert (=> d!39689 m!150757))

(assert (=> d!39689 m!149059))

(assert (=> b!160972 m!150743))

(declare-fun m!150759 () Bool)

(assert (=> b!160972 m!150759))

(assert (=> b!160972 m!150759))

(declare-fun m!150761 () Bool)

(assert (=> b!160972 m!150761))

(assert (=> b!160972 m!150761))

(declare-fun m!150763 () Bool)

(assert (=> b!160972 m!150763))

(assert (=> b!160979 m!150743))

(assert (=> b!160979 m!150759))

(assert (=> b!160979 m!150759))

(assert (=> b!160979 m!150761))

(assert (=> b!160979 m!150761))

(declare-fun m!150771 () Bool)

(assert (=> b!160979 m!150771))

(assert (=> b!160980 m!150743))

(declare-fun m!150773 () Bool)

(assert (=> b!160980 m!150773))

(assert (=> b!160980 m!148751))

(declare-fun m!150775 () Bool)

(assert (=> b!160980 m!150775))

(assert (=> b!160978 m!148751))

(declare-fun m!150779 () Bool)

(assert (=> b!160978 m!150779))

(declare-fun m!150781 () Bool)

(assert (=> b!160974 m!150781))

(assert (=> bm!6825 m!148751))

(declare-fun m!150785 () Bool)

(assert (=> bm!6825 m!150785))

(assert (=> b!160976 m!150743))

(assert (=> b!160976 m!150759))

(assert (=> b!160976 m!150759))

(assert (=> b!160976 m!150761))

(assert (=> b!160973 m!150743))

(declare-fun m!150787 () Bool)

(assert (=> b!160973 m!150787))

(assert (=> b!160018 d!39689))

(assert (=> b!160018 d!39191))

(assert (=> b!160018 d!39183))

(assert (=> b!160018 d!39185))

(declare-fun d!39701 () Bool)

(assert (=> d!39701 (dynLambda!991 lambda!4352 (h!8144 tokens!465))))

(declare-fun lt!48661 () Unit!2232)

(assert (=> d!39701 (= lt!48661 (choose!1789 tokens!465 lambda!4352 (h!8144 tokens!465)))))

(declare-fun e!96806 () Bool)

(assert (=> d!39701 e!96806))

(declare-fun res!73006 () Bool)

(assert (=> d!39701 (=> (not res!73006) (not e!96806))))

(assert (=> d!39701 (= res!73006 (forall!500 tokens!465 lambda!4352))))

(assert (=> d!39701 (= (forallContained!62 tokens!465 lambda!4352 (h!8144 tokens!465)) lt!48661)))

(declare-fun b!160987 () Bool)

(assert (=> b!160987 (= e!96806 (contains!439 tokens!465 (h!8144 tokens!465)))))

(assert (= (and d!39701 res!73006) b!160987))

(declare-fun b_lambda!3355 () Bool)

(assert (=> (not b_lambda!3355) (not d!39701)))

(declare-fun m!150797 () Bool)

(assert (=> d!39701 m!150797))

(declare-fun m!150799 () Bool)

(assert (=> d!39701 m!150799))

(declare-fun m!150801 () Bool)

(assert (=> d!39701 m!150801))

(declare-fun m!150803 () Bool)

(assert (=> b!160987 m!150803))

(assert (=> b!160018 d!39701))

(declare-fun b!160990 () Bool)

(declare-fun e!96809 () List!2756)

(assert (=> b!160990 (= e!96809 (Cons!2746 (h!8143 (list!985 (charsOf!138 (h!8144 tokens!465)))) (++!608 (t!25820 (list!985 (charsOf!138 (h!8144 tokens!465)))) lt!48094)))))

(declare-fun lt!48662 () List!2756)

(declare-fun e!96808 () Bool)

(declare-fun b!160992 () Bool)

(assert (=> b!160992 (= e!96808 (or (not (= lt!48094 Nil!2746)) (= lt!48662 (list!985 (charsOf!138 (h!8144 tokens!465))))))))

(declare-fun b!160989 () Bool)

(assert (=> b!160989 (= e!96809 lt!48094)))

(declare-fun b!160991 () Bool)

(declare-fun res!73009 () Bool)

(assert (=> b!160991 (=> (not res!73009) (not e!96808))))

(assert (=> b!160991 (= res!73009 (= (size!2323 lt!48662) (+ (size!2323 (list!985 (charsOf!138 (h!8144 tokens!465)))) (size!2323 lt!48094))))))

(declare-fun d!39709 () Bool)

(assert (=> d!39709 e!96808))

(declare-fun res!73008 () Bool)

(assert (=> d!39709 (=> (not res!73008) (not e!96808))))

(assert (=> d!39709 (= res!73008 (= (content!383 lt!48662) ((_ map or) (content!383 (list!985 (charsOf!138 (h!8144 tokens!465)))) (content!383 lt!48094))))))

(assert (=> d!39709 (= lt!48662 e!96809)))

(declare-fun c!32327 () Bool)

(assert (=> d!39709 (= c!32327 ((_ is Nil!2746) (list!985 (charsOf!138 (h!8144 tokens!465)))))))

(assert (=> d!39709 (= (++!608 (list!985 (charsOf!138 (h!8144 tokens!465))) lt!48094) lt!48662)))

(assert (= (and d!39709 c!32327) b!160989))

(assert (= (and d!39709 (not c!32327)) b!160990))

(assert (= (and d!39709 res!73008) b!160991))

(assert (= (and b!160991 res!73009) b!160992))

(declare-fun m!150805 () Bool)

(assert (=> b!160990 m!150805))

(declare-fun m!150807 () Bool)

(assert (=> b!160991 m!150807))

(assert (=> b!160991 m!148367))

(declare-fun m!150809 () Bool)

(assert (=> b!160991 m!150809))

(assert (=> b!160991 m!149595))

(declare-fun m!150811 () Bool)

(assert (=> d!39709 m!150811))

(assert (=> d!39709 m!148367))

(declare-fun m!150813 () Bool)

(assert (=> d!39709 m!150813))

(assert (=> d!39709 m!149601))

(assert (=> b!160018 d!39709))

(declare-fun b!160994 () Bool)

(declare-fun res!73013 () Bool)

(declare-fun e!96810 () Bool)

(assert (=> b!160994 (=> (not res!73013) (not e!96810))))

(assert (=> b!160994 (= res!73013 (<= (height!84 (++!612 (c!32021 e!96116) (c!32021 (ite c!32065 lt!48048 call!6742)))) (+ (max!0 (height!84 (c!32021 e!96116)) (height!84 (c!32021 (ite c!32065 lt!48048 call!6742)))) 1)))))

(declare-fun b!160995 () Bool)

(declare-fun res!73011 () Bool)

(assert (=> b!160995 (=> (not res!73011) (not e!96810))))

(assert (=> b!160995 (= res!73011 (>= (height!84 (++!612 (c!32021 e!96116) (c!32021 (ite c!32065 lt!48048 call!6742)))) (max!0 (height!84 (c!32021 e!96116)) (height!84 (c!32021 (ite c!32065 lt!48048 call!6742))))))))

(declare-fun d!39711 () Bool)

(assert (=> d!39711 e!96810))

(declare-fun res!73012 () Bool)

(assert (=> d!39711 (=> (not res!73012) (not e!96810))))

(assert (=> d!39711 (= res!73012 (appendAssocInst!25 (c!32021 e!96116) (c!32021 (ite c!32065 lt!48048 call!6742))))))

(declare-fun lt!48663 () BalanceConc!1584)

(assert (=> d!39711 (= lt!48663 (BalanceConc!1585 (++!612 (c!32021 e!96116) (c!32021 (ite c!32065 lt!48048 call!6742)))))))

(assert (=> d!39711 (= (++!610 e!96116 (ite c!32065 lt!48048 call!6742)) lt!48663)))

(declare-fun b!160993 () Bool)

(declare-fun res!73010 () Bool)

(assert (=> b!160993 (=> (not res!73010) (not e!96810))))

(assert (=> b!160993 (= res!73010 (isBalanced!222 (++!612 (c!32021 e!96116) (c!32021 (ite c!32065 lt!48048 call!6742)))))))

(declare-fun b!160996 () Bool)

(assert (=> b!160996 (= e!96810 (= (list!985 lt!48663) (++!608 (list!985 e!96116) (list!985 (ite c!32065 lt!48048 call!6742)))))))

(assert (= (and d!39711 res!73012) b!160993))

(assert (= (and b!160993 res!73010) b!160994))

(assert (= (and b!160994 res!73013) b!160995))

(assert (= (and b!160995 res!73011) b!160996))

(declare-fun m!150815 () Bool)

(assert (=> b!160995 m!150815))

(assert (=> b!160995 m!150815))

(declare-fun m!150817 () Bool)

(assert (=> b!160995 m!150817))

(declare-fun m!150819 () Bool)

(assert (=> b!160995 m!150819))

(assert (=> b!160995 m!150817))

(declare-fun m!150821 () Bool)

(assert (=> b!160995 m!150821))

(assert (=> b!160995 m!150821))

(declare-fun m!150823 () Bool)

(assert (=> b!160995 m!150823))

(declare-fun m!150825 () Bool)

(assert (=> d!39711 m!150825))

(assert (=> d!39711 m!150821))

(assert (=> b!160993 m!150821))

(assert (=> b!160993 m!150821))

(declare-fun m!150827 () Bool)

(assert (=> b!160993 m!150827))

(declare-fun m!150829 () Bool)

(assert (=> b!160996 m!150829))

(declare-fun m!150831 () Bool)

(assert (=> b!160996 m!150831))

(declare-fun m!150833 () Bool)

(assert (=> b!160996 m!150833))

(assert (=> b!160996 m!150831))

(assert (=> b!160996 m!150833))

(declare-fun m!150835 () Bool)

(assert (=> b!160996 m!150835))

(assert (=> b!160994 m!150815))

(assert (=> b!160994 m!150815))

(assert (=> b!160994 m!150817))

(assert (=> b!160994 m!150819))

(assert (=> b!160994 m!150817))

(assert (=> b!160994 m!150821))

(assert (=> b!160994 m!150821))

(assert (=> b!160994 m!150823))

(assert (=> bm!6741 d!39711))

(declare-fun bs!15201 () Bool)

(declare-fun d!39713 () Bool)

(assert (= bs!15201 (and d!39713 d!39363)))

(declare-fun lambda!4389 () Int)

(assert (=> bs!15201 (= (and (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (h!8145 rules!1920)))) (= (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toValue!1134 (transformation!483 (h!8145 rules!1920))))) (= lambda!4389 lambda!4366))))

(declare-fun bs!15203 () Bool)

(assert (= bs!15203 (and d!39713 d!39399)))

(assert (=> bs!15203 (= (and (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) (= (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toValue!1134 (transformation!483 (rule!990 separatorToken!170))))) (= lambda!4389 lambda!4368))))

(assert (=> d!39713 true))

(assert (=> d!39713 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) (dynLambda!993 order!1413 lambda!4389))))

(assert (=> d!39713 true))

(assert (=> d!39713 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465))))) (dynLambda!993 order!1413 lambda!4389))))

(assert (=> d!39713 (= (semiInverseModEq!169 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toValue!1134 (transformation!483 (rule!990 (h!8144 tokens!465))))) (Forall!130 lambda!4389))))

(declare-fun bs!15204 () Bool)

(assert (= bs!15204 d!39713))

(declare-fun m!150839 () Bool)

(assert (=> bs!15204 m!150839))

(assert (=> d!39207 d!39713))

(declare-fun e!96813 () List!2756)

(declare-fun b!161001 () Bool)

(assert (=> b!161001 (= e!96813 (Cons!2746 (h!8143 lt!47936) (++!608 (t!25820 lt!47936) (++!608 lt!47935 lt!47938))))))

(declare-fun b!161003 () Bool)

(declare-fun lt!48668 () List!2756)

(declare-fun e!96812 () Bool)

(assert (=> b!161003 (= e!96812 (or (not (= (++!608 lt!47935 lt!47938) Nil!2746)) (= lt!48668 lt!47936)))))

(declare-fun b!161000 () Bool)

(assert (=> b!161000 (= e!96813 (++!608 lt!47935 lt!47938))))

(declare-fun b!161002 () Bool)

(declare-fun res!73016 () Bool)

(assert (=> b!161002 (=> (not res!73016) (not e!96812))))

(assert (=> b!161002 (= res!73016 (= (size!2323 lt!48668) (+ (size!2323 lt!47936) (size!2323 (++!608 lt!47935 lt!47938)))))))

(declare-fun d!39717 () Bool)

(assert (=> d!39717 e!96812))

(declare-fun res!73015 () Bool)

(assert (=> d!39717 (=> (not res!73015) (not e!96812))))

(assert (=> d!39717 (= res!73015 (= (content!383 lt!48668) ((_ map or) (content!383 lt!47936) (content!383 (++!608 lt!47935 lt!47938)))))))

(assert (=> d!39717 (= lt!48668 e!96813)))

(declare-fun c!32328 () Bool)

(assert (=> d!39717 (= c!32328 ((_ is Nil!2746) lt!47936))))

(assert (=> d!39717 (= (++!608 lt!47936 (++!608 lt!47935 lt!47938)) lt!48668)))

(assert (= (and d!39717 c!32328) b!161000))

(assert (= (and d!39717 (not c!32328)) b!161001))

(assert (= (and d!39717 res!73015) b!161002))

(assert (= (and b!161002 res!73016) b!161003))

(assert (=> b!161001 m!148351))

(declare-fun m!150849 () Bool)

(assert (=> b!161001 m!150849))

(declare-fun m!150851 () Bool)

(assert (=> b!161002 m!150851))

(assert (=> b!161002 m!148821))

(assert (=> b!161002 m!148351))

(declare-fun m!150853 () Bool)

(assert (=> b!161002 m!150853))

(declare-fun m!150855 () Bool)

(assert (=> d!39717 m!150855))

(assert (=> d!39717 m!148825))

(assert (=> d!39717 m!148351))

(declare-fun m!150857 () Bool)

(assert (=> d!39717 m!150857))

(assert (=> d!39189 d!39717))

(assert (=> d!39189 d!39173))

(assert (=> d!39189 d!39177))

(declare-fun d!39723 () Bool)

(assert (=> d!39723 (= (++!608 (++!608 lt!47936 lt!47935) lt!47938) (++!608 lt!47936 (++!608 lt!47935 lt!47938)))))

(assert (=> d!39723 true))

(declare-fun _$52!582 () Unit!2232)

(assert (=> d!39723 (= (choose!1786 lt!47936 lt!47935 lt!47938) _$52!582)))

(declare-fun bs!15206 () Bool)

(assert (= bs!15206 d!39723))

(assert (=> bs!15206 m!148361))

(assert (=> bs!15206 m!148361))

(assert (=> bs!15206 m!148363))

(assert (=> bs!15206 m!148351))

(assert (=> bs!15206 m!148351))

(assert (=> bs!15206 m!148855))

(assert (=> d!39189 d!39723))

(assert (=> d!39189 d!39187))

(declare-fun b!161005 () Bool)

(declare-fun e!96815 () List!2756)

(assert (=> b!161005 (= e!96815 (Cons!2746 (h!8143 call!6774) (++!608 (t!25820 call!6774) lt!48117)))))

(declare-fun e!96814 () Bool)

(declare-fun lt!48669 () List!2756)

(declare-fun b!161007 () Bool)

(assert (=> b!161007 (= e!96814 (or (not (= lt!48117 Nil!2746)) (= lt!48669 call!6774)))))

(declare-fun b!161004 () Bool)

(assert (=> b!161004 (= e!96815 lt!48117)))

(declare-fun b!161006 () Bool)

(declare-fun res!73018 () Bool)

(assert (=> b!161006 (=> (not res!73018) (not e!96814))))

(assert (=> b!161006 (= res!73018 (= (size!2323 lt!48669) (+ (size!2323 call!6774) (size!2323 lt!48117))))))

(declare-fun d!39725 () Bool)

(assert (=> d!39725 e!96814))

(declare-fun res!73017 () Bool)

(assert (=> d!39725 (=> (not res!73017) (not e!96814))))

(assert (=> d!39725 (= res!73017 (= (content!383 lt!48669) ((_ map or) (content!383 call!6774) (content!383 lt!48117))))))

(assert (=> d!39725 (= lt!48669 e!96815)))

(declare-fun c!32329 () Bool)

(assert (=> d!39725 (= c!32329 ((_ is Nil!2746) call!6774))))

(assert (=> d!39725 (= (++!608 call!6774 lt!48117) lt!48669)))

(assert (= (and d!39725 c!32329) b!161004))

(assert (= (and d!39725 (not c!32329)) b!161005))

(assert (= (and d!39725 res!73017) b!161006))

(assert (= (and b!161006 res!73018) b!161007))

(declare-fun m!150859 () Bool)

(assert (=> b!161005 m!150859))

(declare-fun m!150861 () Bool)

(assert (=> b!161006 m!150861))

(declare-fun m!150863 () Bool)

(assert (=> b!161006 m!150863))

(assert (=> b!161006 m!150631))

(declare-fun m!150865 () Bool)

(assert (=> d!39725 m!150865))

(declare-fun m!150867 () Bool)

(assert (=> d!39725 m!150867))

(assert (=> d!39725 m!150637))

(assert (=> b!160085 d!39725))

(declare-fun b!161009 () Bool)

(declare-fun e!96816 () List!2756)

(declare-fun e!96817 () List!2756)

(assert (=> b!161009 (= e!96816 e!96817)))

(declare-fun c!32331 () Bool)

(assert (=> b!161009 (= c!32331 ((_ is Leaf!1369) (c!32021 (charsOf!138 separatorToken!170))))))

(declare-fun b!161011 () Bool)

(assert (=> b!161011 (= e!96817 (++!608 (list!988 (left!2072 (c!32021 (charsOf!138 separatorToken!170)))) (list!988 (right!2402 (c!32021 (charsOf!138 separatorToken!170))))))))

(declare-fun d!39727 () Bool)

(declare-fun c!32330 () Bool)

(assert (=> d!39727 (= c!32330 ((_ is Empty!788) (c!32021 (charsOf!138 separatorToken!170))))))

(assert (=> d!39727 (= (list!988 (c!32021 (charsOf!138 separatorToken!170))) e!96816)))

(declare-fun b!161008 () Bool)

(assert (=> b!161008 (= e!96816 Nil!2746)))

(declare-fun b!161010 () Bool)

(assert (=> b!161010 (= e!96817 (list!992 (xs!3383 (c!32021 (charsOf!138 separatorToken!170)))))))

(assert (= (and d!39727 c!32330) b!161008))

(assert (= (and d!39727 (not c!32330)) b!161009))

(assert (= (and b!161009 c!32331) b!161010))

(assert (= (and b!161009 (not c!32331)) b!161011))

(declare-fun m!150869 () Bool)

(assert (=> b!161011 m!150869))

(declare-fun m!150871 () Bool)

(assert (=> b!161011 m!150871))

(assert (=> b!161011 m!150869))

(assert (=> b!161011 m!150871))

(declare-fun m!150873 () Bool)

(assert (=> b!161011 m!150873))

(declare-fun m!150875 () Bool)

(assert (=> b!161010 m!150875))

(assert (=> d!39171 d!39727))

(declare-fun d!39729 () Bool)

(assert (=> d!39729 (= (list!985 e!96246) (list!988 (c!32021 e!96246)))))

(declare-fun bs!15207 () Bool)

(assert (= bs!15207 d!39729))

(declare-fun m!150877 () Bool)

(assert (=> bs!15207 m!150877))

(assert (=> bm!6768 d!39729))

(declare-fun d!39731 () Bool)

(assert (=> d!39731 (= (list!985 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))) (list!988 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))))))

(declare-fun bs!15208 () Bool)

(assert (= bs!15208 d!39731))

(declare-fun m!150879 () Bool)

(assert (=> bs!15208 m!150879))

(assert (=> b!159723 d!39731))

(declare-fun b!161012 () Bool)

(declare-fun e!96818 () Bool)

(assert (=> b!161012 (= e!96818 (inv!17 (value!18081 (h!8144 (t!25821 tokens!465)))))))

(declare-fun b!161013 () Bool)

(declare-fun e!96820 () Bool)

(assert (=> b!161013 (= e!96820 (inv!16 (value!18081 (h!8144 (t!25821 tokens!465)))))))

(declare-fun b!161014 () Bool)

(declare-fun e!96819 () Bool)

(assert (=> b!161014 (= e!96819 (inv!15 (value!18081 (h!8144 (t!25821 tokens!465)))))))

(declare-fun b!161015 () Bool)

(assert (=> b!161015 (= e!96820 e!96818)))

(declare-fun c!32332 () Bool)

(assert (=> b!161015 (= c!32332 ((_ is IntegerValue!1516) (value!18081 (h!8144 (t!25821 tokens!465)))))))

(declare-fun d!39733 () Bool)

(declare-fun c!32333 () Bool)

(assert (=> d!39733 (= c!32333 ((_ is IntegerValue!1515) (value!18081 (h!8144 (t!25821 tokens!465)))))))

(assert (=> d!39733 (= (inv!21 (value!18081 (h!8144 (t!25821 tokens!465)))) e!96820)))

(declare-fun b!161016 () Bool)

(declare-fun res!73019 () Bool)

(assert (=> b!161016 (=> res!73019 e!96819)))

(assert (=> b!161016 (= res!73019 (not ((_ is IntegerValue!1517) (value!18081 (h!8144 (t!25821 tokens!465))))))))

(assert (=> b!161016 (= e!96818 e!96819)))

(assert (= (and d!39733 c!32333) b!161013))

(assert (= (and d!39733 (not c!32333)) b!161015))

(assert (= (and b!161015 c!32332) b!161012))

(assert (= (and b!161015 (not c!32332)) b!161016))

(assert (= (and b!161016 (not res!73019)) b!161014))

(declare-fun m!150881 () Bool)

(assert (=> b!161012 m!150881))

(declare-fun m!150883 () Bool)

(assert (=> b!161013 m!150883))

(declare-fun m!150885 () Bool)

(assert (=> b!161014 m!150885))

(assert (=> b!160136 d!39733))

(declare-fun d!39735 () Bool)

(declare-fun lt!48670 () BalanceConc!1584)

(assert (=> d!39735 (= (list!985 lt!48670) (printList!58 thiss!17480 (list!989 (singletonSeq!37 (h!8144 (t!25821 tokens!465))))))))

(assert (=> d!39735 (= lt!48670 (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 tokens!465))) 0 (BalanceConc!1585 Empty!788)))))

(assert (=> d!39735 (= (print!104 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 tokens!465)))) lt!48670)))

(declare-fun bs!15209 () Bool)

(assert (= bs!15209 d!39735))

(declare-fun m!150887 () Bool)

(assert (=> bs!15209 m!150887))

(assert (=> bs!15209 m!148877))

(declare-fun m!150889 () Bool)

(assert (=> bs!15209 m!150889))

(assert (=> bs!15209 m!150889))

(declare-fun m!150891 () Bool)

(assert (=> bs!15209 m!150891))

(assert (=> bs!15209 m!148877))

(assert (=> bs!15209 m!148881))

(assert (=> b!160088 d!39735))

(declare-fun d!39737 () Bool)

(declare-fun e!96821 () Bool)

(assert (=> d!39737 e!96821))

(declare-fun res!73020 () Bool)

(assert (=> d!39737 (=> (not res!73020) (not e!96821))))

(declare-fun lt!48671 () BalanceConc!1586)

(assert (=> d!39737 (= res!73020 (= (list!989 lt!48671) (Cons!2747 (h!8144 (t!25821 tokens!465)) Nil!2747)))))

(assert (=> d!39737 (= lt!48671 (singleton!26 (h!8144 (t!25821 tokens!465))))))

(assert (=> d!39737 (= (singletonSeq!37 (h!8144 (t!25821 tokens!465))) lt!48671)))

(declare-fun b!161017 () Bool)

(assert (=> b!161017 (= e!96821 (isBalanced!223 (c!32023 lt!48671)))))

(assert (= (and d!39737 res!73020) b!161017))

(declare-fun m!150893 () Bool)

(assert (=> d!39737 m!150893))

(declare-fun m!150895 () Bool)

(assert (=> d!39737 m!150895))

(declare-fun m!150897 () Bool)

(assert (=> b!161017 m!150897))

(assert (=> b!160088 d!39737))

(declare-fun d!39739 () Bool)

(declare-fun lt!48674 () BalanceConc!1584)

(assert (=> d!39739 (= (list!985 lt!48674) (printListTailRec!45 thiss!17480 (dropList!78 (singletonSeq!37 (h!8144 (t!25821 tokens!465))) 0) (list!985 (BalanceConc!1585 Empty!788))))))

(declare-fun e!96822 () BalanceConc!1584)

(assert (=> d!39739 (= lt!48674 e!96822)))

(declare-fun c!32334 () Bool)

(assert (=> d!39739 (= c!32334 (>= 0 (size!2319 (singletonSeq!37 (h!8144 (t!25821 tokens!465))))))))

(declare-fun e!96823 () Bool)

(assert (=> d!39739 e!96823))

(declare-fun res!73021 () Bool)

(assert (=> d!39739 (=> (not res!73021) (not e!96823))))

(assert (=> d!39739 (= res!73021 (>= 0 0))))

(assert (=> d!39739 (= (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 tokens!465))) 0 (BalanceConc!1585 Empty!788)) lt!48674)))

(declare-fun b!161018 () Bool)

(assert (=> b!161018 (= e!96823 (<= 0 (size!2319 (singletonSeq!37 (h!8144 (t!25821 tokens!465))))))))

(declare-fun b!161019 () Bool)

(assert (=> b!161019 (= e!96822 (BalanceConc!1585 Empty!788))))

(declare-fun b!161020 () Bool)

(assert (=> b!161020 (= e!96822 (printTailRec!67 thiss!17480 (singletonSeq!37 (h!8144 (t!25821 tokens!465))) (+ 0 1) (++!610 (BalanceConc!1585 Empty!788) (charsOf!138 (apply!381 (singletonSeq!37 (h!8144 (t!25821 tokens!465))) 0)))))))

(declare-fun lt!48677 () List!2757)

(assert (=> b!161020 (= lt!48677 (list!989 (singletonSeq!37 (h!8144 (t!25821 tokens!465)))))))

(declare-fun lt!48672 () Unit!2232)

(assert (=> b!161020 (= lt!48672 (lemmaDropApply!118 lt!48677 0))))

(assert (=> b!161020 (= (head!592 (drop!131 lt!48677 0)) (apply!382 lt!48677 0))))

(declare-fun lt!48673 () Unit!2232)

(assert (=> b!161020 (= lt!48673 lt!48672)))

(declare-fun lt!48678 () List!2757)

(assert (=> b!161020 (= lt!48678 (list!989 (singletonSeq!37 (h!8144 (t!25821 tokens!465)))))))

(declare-fun lt!48676 () Unit!2232)

(assert (=> b!161020 (= lt!48676 (lemmaDropTail!110 lt!48678 0))))

(assert (=> b!161020 (= (tail!332 (drop!131 lt!48678 0)) (drop!131 lt!48678 (+ 0 1)))))

(declare-fun lt!48675 () Unit!2232)

(assert (=> b!161020 (= lt!48675 lt!48676)))

(assert (= (and d!39739 res!73021) b!161018))

(assert (= (and d!39739 c!32334) b!161019))

(assert (= (and d!39739 (not c!32334)) b!161020))

(assert (=> d!39739 m!148877))

(declare-fun m!150899 () Bool)

(assert (=> d!39739 m!150899))

(assert (=> d!39739 m!148877))

(declare-fun m!150901 () Bool)

(assert (=> d!39739 m!150901))

(assert (=> d!39739 m!149311))

(declare-fun m!150903 () Bool)

(assert (=> d!39739 m!150903))

(assert (=> d!39739 m!150899))

(assert (=> d!39739 m!149311))

(declare-fun m!150905 () Bool)

(assert (=> d!39739 m!150905))

(assert (=> b!161018 m!148877))

(assert (=> b!161018 m!150901))

(declare-fun m!150907 () Bool)

(assert (=> b!161020 m!150907))

(declare-fun m!150909 () Bool)

(assert (=> b!161020 m!150909))

(assert (=> b!161020 m!148877))

(assert (=> b!161020 m!150889))

(declare-fun m!150911 () Bool)

(assert (=> b!161020 m!150911))

(assert (=> b!161020 m!150911))

(declare-fun m!150913 () Bool)

(assert (=> b!161020 m!150913))

(declare-fun m!150915 () Bool)

(assert (=> b!161020 m!150915))

(declare-fun m!150917 () Bool)

(assert (=> b!161020 m!150917))

(declare-fun m!150919 () Bool)

(assert (=> b!161020 m!150919))

(declare-fun m!150921 () Bool)

(assert (=> b!161020 m!150921))

(declare-fun m!150923 () Bool)

(assert (=> b!161020 m!150923))

(assert (=> b!161020 m!150919))

(assert (=> b!161020 m!148877))

(declare-fun m!150925 () Bool)

(assert (=> b!161020 m!150925))

(assert (=> b!161020 m!148877))

(assert (=> b!161020 m!150917))

(declare-fun m!150927 () Bool)

(assert (=> b!161020 m!150927))

(assert (=> b!161020 m!150925))

(assert (=> b!161020 m!150915))

(declare-fun m!150929 () Bool)

(assert (=> b!161020 m!150929))

(assert (=> b!160088 d!39739))

(declare-fun b!161021 () Bool)

(declare-fun res!73023 () Bool)

(declare-fun e!96825 () Bool)

(assert (=> b!161021 (=> (not res!73023) (not e!96825))))

(declare-fun lt!48679 () Token!710)

(assert (=> b!161021 (= res!73023 (matchR!74 (regex!483 (get!748 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48679))))) (list!985 (charsOf!138 lt!48679))))))

(declare-fun b!161022 () Bool)

(assert (=> b!161022 (= e!96825 (= (rule!990 lt!48679) (get!748 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48679))))))))

(declare-fun b!161023 () Bool)

(declare-fun e!96824 () Unit!2232)

(declare-fun Unit!2264 () Unit!2232)

(assert (=> b!161023 (= e!96824 Unit!2264)))

(declare-fun lt!48692 () List!2756)

(assert (=> b!161023 (= lt!48692 (++!608 call!6773 lt!48117))))

(declare-fun lt!48688 () Unit!2232)

(assert (=> b!161023 (= lt!48688 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!17 thiss!17480 (rule!990 lt!48679) rules!1920 lt!48692))))

(assert (=> b!161023 (isEmpty!1114 (maxPrefixOneRule!62 thiss!17480 (rule!990 lt!48679) lt!48692))))

(declare-fun lt!48685 () Unit!2232)

(assert (=> b!161023 (= lt!48685 lt!48688)))

(declare-fun lt!48694 () List!2756)

(assert (=> b!161023 (= lt!48694 (list!985 (charsOf!138 lt!48679)))))

(declare-fun lt!48683 () Unit!2232)

(assert (=> b!161023 (= lt!48683 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!17 thiss!17480 (rule!990 lt!48679) lt!48694 (++!608 call!6773 lt!48117)))))

(assert (=> b!161023 (not (matchR!74 (regex!483 (rule!990 lt!48679)) lt!48694))))

(declare-fun lt!48687 () Unit!2232)

(assert (=> b!161023 (= lt!48687 lt!48683)))

(assert (=> b!161023 false))

(declare-fun b!161024 () Bool)

(declare-fun Unit!2265 () Unit!2232)

(assert (=> b!161024 (= e!96824 Unit!2265)))

(declare-fun d!39741 () Bool)

(assert (=> d!39741 (isDefined!122 (maxPrefix!119 thiss!17480 rules!1920 (++!608 call!6773 lt!48117)))))

(declare-fun lt!48682 () Unit!2232)

(assert (=> d!39741 (= lt!48682 e!96824)))

(declare-fun c!32335 () Bool)

(assert (=> d!39741 (= c!32335 (isEmpty!1114 (maxPrefix!119 thiss!17480 rules!1920 (++!608 call!6773 lt!48117))))))

(declare-fun lt!48693 () Unit!2232)

(declare-fun lt!48690 () Unit!2232)

(assert (=> d!39741 (= lt!48693 lt!48690)))

(assert (=> d!39741 e!96825))

(declare-fun res!73022 () Bool)

(assert (=> d!39741 (=> (not res!73022) (not e!96825))))

(assert (=> d!39741 (= res!73022 (isDefined!123 (getRuleFromTag!17 thiss!17480 rules!1920 (tag!661 (rule!990 lt!48679)))))))

(assert (=> d!39741 (= lt!48690 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!17 thiss!17480 rules!1920 call!6773 lt!48679))))

(declare-fun lt!48691 () Unit!2232)

(declare-fun lt!48684 () Unit!2232)

(assert (=> d!39741 (= lt!48691 lt!48684)))

(declare-fun lt!48680 () List!2756)

(assert (=> d!39741 (isPrefix!218 lt!48680 (++!608 call!6773 lt!48117))))

(assert (=> d!39741 (= lt!48684 (lemmaPrefixStaysPrefixWhenAddingToSuffix!17 lt!48680 call!6773 lt!48117))))

(assert (=> d!39741 (= lt!48680 (list!985 (charsOf!138 lt!48679)))))

(declare-fun lt!48695 () Unit!2232)

(declare-fun lt!48681 () Unit!2232)

(assert (=> d!39741 (= lt!48695 lt!48681)))

(declare-fun lt!48689 () List!2756)

(declare-fun lt!48686 () List!2756)

(assert (=> d!39741 (isPrefix!218 lt!48689 (++!608 lt!48689 lt!48686))))

(assert (=> d!39741 (= lt!48681 (lemmaConcatTwoListThenFirstIsPrefix!121 lt!48689 lt!48686))))

(assert (=> d!39741 (= lt!48686 (_2!1543 (get!747 (maxPrefix!119 thiss!17480 rules!1920 call!6773))))))

(assert (=> d!39741 (= lt!48689 (list!985 (charsOf!138 lt!48679)))))

(assert (=> d!39741 (= lt!48679 (head!592 (list!989 (_1!1545 (lex!179 thiss!17480 rules!1920 (seqFromList!343 call!6773))))))))

(assert (=> d!39741 (not (isEmpty!1108 rules!1920))))

(assert (=> d!39741 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!26 thiss!17480 rules!1920 call!6773 lt!48117) lt!48682)))

(assert (= (and d!39741 res!73022) b!161021))

(assert (= (and b!161021 res!73023) b!161022))

(assert (= (and d!39741 c!32335) b!161023))

(assert (= (and d!39741 (not c!32335)) b!161024))

(declare-fun m!150931 () Bool)

(assert (=> b!161021 m!150931))

(declare-fun m!150933 () Bool)

(assert (=> b!161021 m!150933))

(assert (=> b!161021 m!150931))

(declare-fun m!150935 () Bool)

(assert (=> b!161021 m!150935))

(declare-fun m!150937 () Bool)

(assert (=> b!161021 m!150937))

(assert (=> b!161021 m!150935))

(assert (=> b!161021 m!150933))

(declare-fun m!150939 () Bool)

(assert (=> b!161021 m!150939))

(assert (=> b!161022 m!150935))

(assert (=> b!161022 m!150935))

(assert (=> b!161022 m!150937))

(declare-fun m!150941 () Bool)

(assert (=> b!161023 m!150941))

(declare-fun m!150943 () Bool)

(assert (=> b!161023 m!150943))

(declare-fun m!150945 () Bool)

(assert (=> b!161023 m!150945))

(assert (=> b!161023 m!150941))

(assert (=> b!161023 m!150931))

(assert (=> b!161023 m!150933))

(assert (=> b!161023 m!150945))

(declare-fun m!150947 () Bool)

(assert (=> b!161023 m!150947))

(declare-fun m!150949 () Bool)

(assert (=> b!161023 m!150949))

(assert (=> b!161023 m!150931))

(declare-fun m!150951 () Bool)

(assert (=> b!161023 m!150951))

(declare-fun m!150953 () Bool)

(assert (=> d!39741 m!150953))

(declare-fun m!150955 () Bool)

(assert (=> d!39741 m!150955))

(declare-fun m!150957 () Bool)

(assert (=> d!39741 m!150957))

(declare-fun m!150959 () Bool)

(assert (=> d!39741 m!150959))

(declare-fun m!150961 () Bool)

(assert (=> d!39741 m!150961))

(assert (=> d!39741 m!150945))

(declare-fun m!150963 () Bool)

(assert (=> d!39741 m!150963))

(assert (=> d!39741 m!150959))

(assert (=> d!39741 m!150931))

(assert (=> d!39741 m!150933))

(declare-fun m!150965 () Bool)

(assert (=> d!39741 m!150965))

(assert (=> d!39741 m!150945))

(declare-fun m!150967 () Bool)

(assert (=> d!39741 m!150967))

(assert (=> d!39741 m!150935))

(declare-fun m!150969 () Bool)

(assert (=> d!39741 m!150969))

(assert (=> d!39741 m!150935))

(assert (=> d!39741 m!150953))

(declare-fun m!150971 () Bool)

(assert (=> d!39741 m!150971))

(assert (=> d!39741 m!150955))

(declare-fun m!150973 () Bool)

(assert (=> d!39741 m!150973))

(assert (=> d!39741 m!150967))

(declare-fun m!150975 () Bool)

(assert (=> d!39741 m!150975))

(declare-fun m!150977 () Bool)

(assert (=> d!39741 m!150977))

(assert (=> d!39741 m!150965))

(declare-fun m!150979 () Bool)

(assert (=> d!39741 m!150979))

(assert (=> d!39741 m!148325))

(assert (=> d!39741 m!150931))

(assert (=> d!39741 m!150967))

(declare-fun m!150981 () Bool)

(assert (=> d!39741 m!150981))

(assert (=> d!39741 m!150945))

(declare-fun m!150983 () Bool)

(assert (=> d!39741 m!150983))

(assert (=> b!160088 d!39741))

(declare-fun d!39743 () Bool)

(declare-fun c!32336 () Bool)

(assert (=> d!39743 (= c!32336 ((_ is Node!788) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))))))

(declare-fun e!96826 () Bool)

(assert (=> d!39743 (= (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))) e!96826)))

(declare-fun b!161025 () Bool)

(assert (=> b!161025 (= e!96826 (inv!3567 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))))))

(declare-fun b!161026 () Bool)

(declare-fun e!96827 () Bool)

(assert (=> b!161026 (= e!96826 e!96827)))

(declare-fun res!73024 () Bool)

(assert (=> b!161026 (= res!73024 (not ((_ is Leaf!1369) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))))))))

(assert (=> b!161026 (=> res!73024 e!96827)))

(declare-fun b!161027 () Bool)

(assert (=> b!161027 (= e!96827 (inv!3568 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))))))

(assert (= (and d!39743 c!32336) b!161025))

(assert (= (and d!39743 (not c!32336)) b!161026))

(assert (= (and b!161026 (not res!73024)) b!161027))

(declare-fun m!150985 () Bool)

(assert (=> b!161025 m!150985))

(declare-fun m!150987 () Bool)

(assert (=> b!161027 m!150987))

(assert (=> b!160052 d!39743))

(declare-fun d!39745 () Bool)

(declare-fun lt!48696 () Int)

(assert (=> d!39745 (>= lt!48696 0)))

(declare-fun e!96828 () Int)

(assert (=> d!39745 (= lt!48696 e!96828)))

(declare-fun c!32337 () Bool)

(assert (=> d!39745 (= c!32337 ((_ is Nil!2746) lt!48110))))

(assert (=> d!39745 (= (size!2323 lt!48110) lt!48696)))

(declare-fun b!161028 () Bool)

(assert (=> b!161028 (= e!96828 0)))

(declare-fun b!161029 () Bool)

(assert (=> b!161029 (= e!96828 (+ 1 (size!2323 (t!25820 lt!48110))))))

(assert (= (and d!39745 c!32337) b!161028))

(assert (= (and d!39745 (not c!32337)) b!161029))

(declare-fun m!150989 () Bool)

(assert (=> b!161029 m!150989))

(assert (=> b!160079 d!39745))

(declare-fun d!39747 () Bool)

(declare-fun lt!48697 () Int)

(assert (=> d!39747 (>= lt!48697 0)))

(declare-fun e!96829 () Int)

(assert (=> d!39747 (= lt!48697 e!96829)))

(declare-fun c!32338 () Bool)

(assert (=> d!39747 (= c!32338 ((_ is Nil!2746) (++!608 lt!47936 lt!47935)))))

(assert (=> d!39747 (= (size!2323 (++!608 lt!47936 lt!47935)) lt!48697)))

(declare-fun b!161030 () Bool)

(assert (=> b!161030 (= e!96829 0)))

(declare-fun b!161031 () Bool)

(assert (=> b!161031 (= e!96829 (+ 1 (size!2323 (t!25820 (++!608 lt!47936 lt!47935)))))))

(assert (= (and d!39747 c!32338) b!161030))

(assert (= (and d!39747 (not c!32338)) b!161031))

(assert (=> b!161031 m!150149))

(assert (=> b!160079 d!39747))

(assert (=> b!160079 d!39453))

(declare-fun d!39749 () Bool)

(declare-fun c!32339 () Bool)

(assert (=> d!39749 (= c!32339 ((_ is Nil!2746) lt!48105))))

(declare-fun e!96830 () (InoxSet C!2336))

(assert (=> d!39749 (= (content!383 lt!48105) e!96830)))

(declare-fun b!161032 () Bool)

(assert (=> b!161032 (= e!96830 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!161033 () Bool)

(assert (=> b!161033 (= e!96830 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!48105) true) (content!383 (t!25820 lt!48105))))))

(assert (= (and d!39749 c!32339) b!161032))

(assert (= (and d!39749 (not c!32339)) b!161033))

(declare-fun m!150991 () Bool)

(assert (=> b!161033 m!150991))

(declare-fun m!150993 () Bool)

(assert (=> b!161033 m!150993))

(assert (=> d!39179 d!39749))

(assert (=> d!39179 d!39539))

(declare-fun d!39751 () Bool)

(declare-fun c!32340 () Bool)

(assert (=> d!39751 (= c!32340 ((_ is Nil!2746) lt!47933))))

(declare-fun e!96831 () (InoxSet C!2336))

(assert (=> d!39751 (= (content!383 lt!47933) e!96831)))

(declare-fun b!161034 () Bool)

(assert (=> b!161034 (= e!96831 ((as const (Array C!2336 Bool)) false))))

(declare-fun b!161035 () Bool)

(assert (=> b!161035 (= e!96831 ((_ map or) (store ((as const (Array C!2336 Bool)) false) (h!8143 lt!47933) true) (content!383 (t!25820 lt!47933))))))

(assert (= (and d!39751 c!32340) b!161034))

(assert (= (and d!39751 (not c!32340)) b!161035))

(declare-fun m!150995 () Bool)

(assert (=> b!161035 m!150995))

(declare-fun m!150997 () Bool)

(assert (=> b!161035 m!150997))

(assert (=> d!39179 d!39751))

(declare-fun b!161037 () Bool)

(declare-fun e!96833 () List!2756)

(assert (=> b!161037 (= e!96833 (Cons!2746 (h!8143 call!6776) (++!608 (t!25820 call!6776) (ite c!32105 lt!48117 call!6773))))))

(declare-fun e!96832 () Bool)

(declare-fun b!161039 () Bool)

(declare-fun lt!48698 () List!2756)

(assert (=> b!161039 (= e!96832 (or (not (= (ite c!32105 lt!48117 call!6773) Nil!2746)) (= lt!48698 call!6776)))))

(declare-fun b!161036 () Bool)

(assert (=> b!161036 (= e!96833 (ite c!32105 lt!48117 call!6773))))

(declare-fun b!161038 () Bool)

(declare-fun res!73026 () Bool)

(assert (=> b!161038 (=> (not res!73026) (not e!96832))))

(assert (=> b!161038 (= res!73026 (= (size!2323 lt!48698) (+ (size!2323 call!6776) (size!2323 (ite c!32105 lt!48117 call!6773)))))))

(declare-fun d!39753 () Bool)

(assert (=> d!39753 e!96832))

(declare-fun res!73025 () Bool)

(assert (=> d!39753 (=> (not res!73025) (not e!96832))))

(assert (=> d!39753 (= res!73025 (= (content!383 lt!48698) ((_ map or) (content!383 call!6776) (content!383 (ite c!32105 lt!48117 call!6773)))))))

(assert (=> d!39753 (= lt!48698 e!96833)))

(declare-fun c!32341 () Bool)

(assert (=> d!39753 (= c!32341 ((_ is Nil!2746) call!6776))))

(assert (=> d!39753 (= (++!608 call!6776 (ite c!32105 lt!48117 call!6773)) lt!48698)))

(assert (= (and d!39753 c!32341) b!161036))

(assert (= (and d!39753 (not c!32341)) b!161037))

(assert (= (and d!39753 res!73025) b!161038))

(assert (= (and b!161038 res!73026) b!161039))

(declare-fun m!150999 () Bool)

(assert (=> b!161037 m!150999))

(declare-fun m!151001 () Bool)

(assert (=> b!161038 m!151001))

(declare-fun m!151003 () Bool)

(assert (=> b!161038 m!151003))

(declare-fun m!151005 () Bool)

(assert (=> b!161038 m!151005))

(declare-fun m!151007 () Bool)

(assert (=> d!39753 m!151007))

(declare-fun m!151009 () Bool)

(assert (=> d!39753 m!151009))

(declare-fun m!151011 () Bool)

(assert (=> d!39753 m!151011))

(assert (=> bm!6770 d!39753))

(declare-fun d!39755 () Bool)

(assert (=> d!39755 (= (isEmpty!1110 (originalCharacters!526 separatorToken!170)) ((_ is Nil!2746) (originalCharacters!526 separatorToken!170)))))

(assert (=> d!39093 d!39755))

(declare-fun b!161042 () Bool)

(declare-fun e!96836 () Bool)

(assert (=> b!161042 (= e!96836 true)))

(declare-fun b!161041 () Bool)

(declare-fun e!96835 () Bool)

(assert (=> b!161041 (= e!96835 e!96836)))

(declare-fun b!161040 () Bool)

(declare-fun e!96834 () Bool)

(assert (=> b!161040 (= e!96834 e!96835)))

(assert (=> b!159814 e!96834))

(assert (= b!161041 b!161042))

(assert (= b!161040 b!161041))

(assert (= (and b!159814 ((_ is Cons!2748) (t!25822 rules!1920))) b!161040))

(assert (=> b!161042 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4330))))

(assert (=> b!161042 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4330))))

(declare-fun b!161043 () Bool)

(declare-fun e!96837 () Bool)

(declare-fun tp!81524 () Bool)

(assert (=> b!161043 (= e!96837 (and tp_is_empty!1635 tp!81524))))

(assert (=> b!160124 (= tp!81462 e!96837)))

(assert (= (and b!160124 ((_ is Cons!2746) (t!25820 (originalCharacters!526 separatorToken!170)))) b!161043))

(declare-fun b!161046 () Bool)

(declare-fun e!96840 () Bool)

(assert (=> b!161046 (= e!96840 true)))

(declare-fun b!161045 () Bool)

(declare-fun e!96839 () Bool)

(assert (=> b!161045 (= e!96839 e!96840)))

(declare-fun b!161044 () Bool)

(declare-fun e!96838 () Bool)

(assert (=> b!161044 (= e!96838 e!96839)))

(assert (=> b!159894 e!96838))

(assert (= b!161045 b!161046))

(assert (= b!161044 b!161045))

(assert (= (and b!159894 ((_ is Cons!2748) (t!25822 rules!1920))) b!161044))

(assert (=> b!161046 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4345))))

(assert (=> b!161046 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4345))))

(declare-fun b!161049 () Bool)

(declare-fun e!96843 () Bool)

(assert (=> b!161049 (= e!96843 true)))

(declare-fun b!161048 () Bool)

(declare-fun e!96842 () Bool)

(assert (=> b!161048 (= e!96842 e!96843)))

(declare-fun b!161047 () Bool)

(declare-fun e!96841 () Bool)

(assert (=> b!161047 (= e!96841 e!96842)))

(assert (=> b!160089 e!96841))

(assert (= b!161048 b!161049))

(assert (= b!161047 b!161048))

(assert (= (and b!160089 ((_ is Cons!2748) (t!25822 rules!1920))) b!161047))

(assert (=> b!161049 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4354))))

(assert (=> b!161049 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4354))))

(declare-fun b!161050 () Bool)

(declare-fun e!96844 () Bool)

(declare-fun tp!81525 () Bool)

(assert (=> b!161050 (= e!96844 (and tp_is_empty!1635 tp!81525))))

(assert (=> b!160168 (= tp!81510 e!96844)))

(assert (= (and b!160168 ((_ is Cons!2746) (t!25820 (originalCharacters!526 (h!8144 tokens!465))))) b!161050))

(declare-fun e!96845 () Bool)

(assert (=> b!160171 (= tp!81512 e!96845)))

(declare-fun b!161051 () Bool)

(assert (=> b!161051 (= e!96845 tp_is_empty!1635)))

(declare-fun b!161054 () Bool)

(declare-fun tp!81526 () Bool)

(declare-fun tp!81530 () Bool)

(assert (=> b!161054 (= e!96845 (and tp!81526 tp!81530))))

(declare-fun b!161052 () Bool)

(declare-fun tp!81529 () Bool)

(declare-fun tp!81528 () Bool)

(assert (=> b!161052 (= e!96845 (and tp!81529 tp!81528))))

(declare-fun b!161053 () Bool)

(declare-fun tp!81527 () Bool)

(assert (=> b!161053 (= e!96845 tp!81527)))

(assert (= (and b!160171 ((_ is ElementMatch!707) (reg!1036 (regex!483 (h!8145 rules!1920))))) b!161051))

(assert (= (and b!160171 ((_ is Concat!1213) (reg!1036 (regex!483 (h!8145 rules!1920))))) b!161052))

(assert (= (and b!160171 ((_ is Star!707) (reg!1036 (regex!483 (h!8145 rules!1920))))) b!161053))

(assert (= (and b!160171 ((_ is Union!707) (reg!1036 (regex!483 (h!8145 rules!1920))))) b!161054))

(declare-fun e!96846 () Bool)

(assert (=> b!160163 (= tp!81500 e!96846)))

(declare-fun b!161055 () Bool)

(assert (=> b!161055 (= e!96846 tp_is_empty!1635)))

(declare-fun b!161058 () Bool)

(declare-fun tp!81531 () Bool)

(declare-fun tp!81535 () Bool)

(assert (=> b!161058 (= e!96846 (and tp!81531 tp!81535))))

(declare-fun b!161056 () Bool)

(declare-fun tp!81534 () Bool)

(declare-fun tp!81533 () Bool)

(assert (=> b!161056 (= e!96846 (and tp!81534 tp!81533))))

(declare-fun b!161057 () Bool)

(declare-fun tp!81532 () Bool)

(assert (=> b!161057 (= e!96846 tp!81532)))

(assert (= (and b!160163 ((_ is ElementMatch!707) (regOne!1927 (regex!483 (rule!990 separatorToken!170))))) b!161055))

(assert (= (and b!160163 ((_ is Concat!1213) (regOne!1927 (regex!483 (rule!990 separatorToken!170))))) b!161056))

(assert (= (and b!160163 ((_ is Star!707) (regOne!1927 (regex!483 (rule!990 separatorToken!170))))) b!161057))

(assert (= (and b!160163 ((_ is Union!707) (regOne!1927 (regex!483 (rule!990 separatorToken!170))))) b!161058))

(declare-fun e!96847 () Bool)

(assert (=> b!160163 (= tp!81504 e!96847)))

(declare-fun b!161059 () Bool)

(assert (=> b!161059 (= e!96847 tp_is_empty!1635)))

(declare-fun b!161062 () Bool)

(declare-fun tp!81536 () Bool)

(declare-fun tp!81540 () Bool)

(assert (=> b!161062 (= e!96847 (and tp!81536 tp!81540))))

(declare-fun b!161060 () Bool)

(declare-fun tp!81539 () Bool)

(declare-fun tp!81538 () Bool)

(assert (=> b!161060 (= e!96847 (and tp!81539 tp!81538))))

(declare-fun b!161061 () Bool)

(declare-fun tp!81537 () Bool)

(assert (=> b!161061 (= e!96847 tp!81537)))

(assert (= (and b!160163 ((_ is ElementMatch!707) (regTwo!1927 (regex!483 (rule!990 separatorToken!170))))) b!161059))

(assert (= (and b!160163 ((_ is Concat!1213) (regTwo!1927 (regex!483 (rule!990 separatorToken!170))))) b!161060))

(assert (= (and b!160163 ((_ is Star!707) (regTwo!1927 (regex!483 (rule!990 separatorToken!170))))) b!161061))

(assert (= (and b!160163 ((_ is Union!707) (regTwo!1927 (regex!483 (rule!990 separatorToken!170))))) b!161062))

(declare-fun e!96848 () Bool)

(assert (=> b!160170 (= tp!81514 e!96848)))

(declare-fun b!161063 () Bool)

(assert (=> b!161063 (= e!96848 tp_is_empty!1635)))

(declare-fun b!161066 () Bool)

(declare-fun tp!81541 () Bool)

(declare-fun tp!81545 () Bool)

(assert (=> b!161066 (= e!96848 (and tp!81541 tp!81545))))

(declare-fun b!161064 () Bool)

(declare-fun tp!81544 () Bool)

(declare-fun tp!81543 () Bool)

(assert (=> b!161064 (= e!96848 (and tp!81544 tp!81543))))

(declare-fun b!161065 () Bool)

(declare-fun tp!81542 () Bool)

(assert (=> b!161065 (= e!96848 tp!81542)))

(assert (= (and b!160170 ((_ is ElementMatch!707) (regOne!1926 (regex!483 (h!8145 rules!1920))))) b!161063))

(assert (= (and b!160170 ((_ is Concat!1213) (regOne!1926 (regex!483 (h!8145 rules!1920))))) b!161064))

(assert (= (and b!160170 ((_ is Star!707) (regOne!1926 (regex!483 (h!8145 rules!1920))))) b!161065))

(assert (= (and b!160170 ((_ is Union!707) (regOne!1926 (regex!483 (h!8145 rules!1920))))) b!161066))

(declare-fun e!96849 () Bool)

(assert (=> b!160170 (= tp!81513 e!96849)))

(declare-fun b!161067 () Bool)

(assert (=> b!161067 (= e!96849 tp_is_empty!1635)))

(declare-fun b!161070 () Bool)

(declare-fun tp!81546 () Bool)

(declare-fun tp!81550 () Bool)

(assert (=> b!161070 (= e!96849 (and tp!81546 tp!81550))))

(declare-fun b!161068 () Bool)

(declare-fun tp!81549 () Bool)

(declare-fun tp!81548 () Bool)

(assert (=> b!161068 (= e!96849 (and tp!81549 tp!81548))))

(declare-fun b!161069 () Bool)

(declare-fun tp!81547 () Bool)

(assert (=> b!161069 (= e!96849 tp!81547)))

(assert (= (and b!160170 ((_ is ElementMatch!707) (regTwo!1926 (regex!483 (h!8145 rules!1920))))) b!161067))

(assert (= (and b!160170 ((_ is Concat!1213) (regTwo!1926 (regex!483 (h!8145 rules!1920))))) b!161068))

(assert (= (and b!160170 ((_ is Star!707) (regTwo!1926 (regex!483 (h!8145 rules!1920))))) b!161069))

(assert (= (and b!160170 ((_ is Union!707) (regTwo!1926 (regex!483 (h!8145 rules!1920))))) b!161070))

(declare-fun e!96850 () Bool)

(assert (=> b!160162 (= tp!81501 e!96850)))

(declare-fun b!161071 () Bool)

(assert (=> b!161071 (= e!96850 tp_is_empty!1635)))

(declare-fun b!161074 () Bool)

(declare-fun tp!81551 () Bool)

(declare-fun tp!81555 () Bool)

(assert (=> b!161074 (= e!96850 (and tp!81551 tp!81555))))

(declare-fun b!161072 () Bool)

(declare-fun tp!81554 () Bool)

(declare-fun tp!81553 () Bool)

(assert (=> b!161072 (= e!96850 (and tp!81554 tp!81553))))

(declare-fun b!161073 () Bool)

(declare-fun tp!81552 () Bool)

(assert (=> b!161073 (= e!96850 tp!81552)))

(assert (= (and b!160162 ((_ is ElementMatch!707) (reg!1036 (regex!483 (rule!990 separatorToken!170))))) b!161071))

(assert (= (and b!160162 ((_ is Concat!1213) (reg!1036 (regex!483 (rule!990 separatorToken!170))))) b!161072))

(assert (= (and b!160162 ((_ is Star!707) (reg!1036 (regex!483 (rule!990 separatorToken!170))))) b!161073))

(assert (= (and b!160162 ((_ is Union!707) (reg!1036 (regex!483 (rule!990 separatorToken!170))))) b!161074))

(declare-fun e!96851 () Bool)

(assert (=> b!160161 (= tp!81503 e!96851)))

(declare-fun b!161075 () Bool)

(assert (=> b!161075 (= e!96851 tp_is_empty!1635)))

(declare-fun b!161078 () Bool)

(declare-fun tp!81556 () Bool)

(declare-fun tp!81560 () Bool)

(assert (=> b!161078 (= e!96851 (and tp!81556 tp!81560))))

(declare-fun b!161076 () Bool)

(declare-fun tp!81559 () Bool)

(declare-fun tp!81558 () Bool)

(assert (=> b!161076 (= e!96851 (and tp!81559 tp!81558))))

(declare-fun b!161077 () Bool)

(declare-fun tp!81557 () Bool)

(assert (=> b!161077 (= e!96851 tp!81557)))

(assert (= (and b!160161 ((_ is ElementMatch!707) (regOne!1926 (regex!483 (rule!990 separatorToken!170))))) b!161075))

(assert (= (and b!160161 ((_ is Concat!1213) (regOne!1926 (regex!483 (rule!990 separatorToken!170))))) b!161076))

(assert (= (and b!160161 ((_ is Star!707) (regOne!1926 (regex!483 (rule!990 separatorToken!170))))) b!161077))

(assert (= (and b!160161 ((_ is Union!707) (regOne!1926 (regex!483 (rule!990 separatorToken!170))))) b!161078))

(declare-fun e!96852 () Bool)

(assert (=> b!160161 (= tp!81502 e!96852)))

(declare-fun b!161079 () Bool)

(assert (=> b!161079 (= e!96852 tp_is_empty!1635)))

(declare-fun b!161082 () Bool)

(declare-fun tp!81561 () Bool)

(declare-fun tp!81565 () Bool)

(assert (=> b!161082 (= e!96852 (and tp!81561 tp!81565))))

(declare-fun b!161080 () Bool)

(declare-fun tp!81564 () Bool)

(declare-fun tp!81563 () Bool)

(assert (=> b!161080 (= e!96852 (and tp!81564 tp!81563))))

(declare-fun b!161081 () Bool)

(declare-fun tp!81562 () Bool)

(assert (=> b!161081 (= e!96852 tp!81562)))

(assert (= (and b!160161 ((_ is ElementMatch!707) (regTwo!1926 (regex!483 (rule!990 separatorToken!170))))) b!161079))

(assert (= (and b!160161 ((_ is Concat!1213) (regTwo!1926 (regex!483 (rule!990 separatorToken!170))))) b!161080))

(assert (= (and b!160161 ((_ is Star!707) (regTwo!1926 (regex!483 (rule!990 separatorToken!170))))) b!161081))

(assert (= (and b!160161 ((_ is Union!707) (regTwo!1926 (regex!483 (rule!990 separatorToken!170))))) b!161082))

(declare-fun e!96853 () Bool)

(assert (=> b!160148 (= tp!81486 e!96853)))

(declare-fun b!161083 () Bool)

(assert (=> b!161083 (= e!96853 tp_is_empty!1635)))

(declare-fun b!161086 () Bool)

(declare-fun tp!81566 () Bool)

(declare-fun tp!81570 () Bool)

(assert (=> b!161086 (= e!96853 (and tp!81566 tp!81570))))

(declare-fun b!161084 () Bool)

(declare-fun tp!81569 () Bool)

(declare-fun tp!81568 () Bool)

(assert (=> b!161084 (= e!96853 (and tp!81569 tp!81568))))

(declare-fun b!161085 () Bool)

(declare-fun tp!81567 () Bool)

(assert (=> b!161085 (= e!96853 tp!81567)))

(assert (= (and b!160148 ((_ is ElementMatch!707) (regex!483 (h!8145 (t!25822 rules!1920))))) b!161083))

(assert (= (and b!160148 ((_ is Concat!1213) (regex!483 (h!8145 (t!25822 rules!1920))))) b!161084))

(assert (= (and b!160148 ((_ is Star!707) (regex!483 (h!8145 (t!25822 rules!1920))))) b!161085))

(assert (= (and b!160148 ((_ is Union!707) (regex!483 (h!8145 (t!25822 rules!1920))))) b!161086))

(declare-fun b!161089 () Bool)

(declare-fun b_free!6013 () Bool)

(declare-fun b_next!6013 () Bool)

(assert (=> b!161089 (= b_free!6013 (not b_next!6013))))

(declare-fun tp!81574 () Bool)

(declare-fun b_and!9997 () Bool)

(assert (=> b!161089 (= tp!81574 b_and!9997)))

(declare-fun b_free!6015 () Bool)

(declare-fun b_next!6015 () Bool)

(assert (=> b!161089 (= b_free!6015 (not b_next!6015))))

(declare-fun t!25978 () Bool)

(declare-fun tb!5917 () Bool)

(assert (=> (and b!161089 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) t!25978) tb!5917))

(declare-fun result!8508 () Bool)

(assert (= result!8508 result!8478))

(assert (=> b!160716 t!25978))

(assert (=> d!39545 t!25978))

(declare-fun t!25980 () Bool)

(declare-fun tb!5919 () Bool)

(assert (=> (and b!161089 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) t!25980) tb!5919))

(declare-fun result!8510 () Bool)

(assert (= result!8510 result!8498))

(assert (=> d!39683 t!25980))

(declare-fun t!25982 () Bool)

(declare-fun tb!5921 () Bool)

(assert (=> (and b!161089 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) t!25982) tb!5921))

(declare-fun result!8512 () Bool)

(assert (= result!8512 result!8368))

(assert (=> d!39175 t!25982))

(declare-fun t!25984 () Bool)

(declare-fun tb!5923 () Bool)

(assert (=> (and b!161089 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 call!6743)))) t!25984) tb!5923))

(declare-fun result!8514 () Bool)

(assert (= result!8514 result!8488))

(assert (=> d!39553 t!25984))

(declare-fun t!25986 () Bool)

(declare-fun tb!5925 () Bool)

(assert (=> (and b!161089 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) t!25986) tb!5925))

(declare-fun result!8516 () Bool)

(assert (= result!8516 result!8406))

(assert (=> d!39185 t!25986))

(declare-fun t!25988 () Bool)

(declare-fun tb!5927 () Bool)

(assert (=> (and b!161089 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0))))) t!25988) tb!5927))

(declare-fun result!8518 () Bool)

(assert (= result!8518 result!8428))

(assert (=> d!39221 t!25988))

(assert (=> b!160050 t!25986))

(assert (=> b!159723 t!25982))

(declare-fun tp!81573 () Bool)

(declare-fun b_and!9999 () Bool)

(assert (=> b!161089 (= tp!81573 (and (=> t!25978 result!8508) (=> t!25986 result!8516) (=> t!25982 result!8512) (=> t!25988 result!8518) (=> t!25984 result!8514) (=> t!25980 result!8510) b_and!9999))))

(declare-fun e!96857 () Bool)

(assert (=> b!161089 (= e!96857 (and tp!81574 tp!81573))))

(declare-fun e!96854 () Bool)

(declare-fun tp!81571 () Bool)

(declare-fun b!161088 () Bool)

(assert (=> b!161088 (= e!96854 (and tp!81571 (inv!3558 (tag!661 (h!8145 (t!25822 (t!25822 rules!1920))))) (inv!3561 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) e!96857))))

(declare-fun b!161087 () Bool)

(declare-fun e!96856 () Bool)

(declare-fun tp!81572 () Bool)

(assert (=> b!161087 (= e!96856 (and e!96854 tp!81572))))

(assert (=> b!160147 (= tp!81487 e!96856)))

(assert (= b!161088 b!161089))

(assert (= b!161087 b!161088))

(assert (= (and b!160147 ((_ is Cons!2748) (t!25822 (t!25822 rules!1920)))) b!161087))

(declare-fun m!151013 () Bool)

(assert (=> b!161088 m!151013))

(declare-fun m!151015 () Bool)

(assert (=> b!161088 m!151015))

(declare-fun e!96858 () Bool)

(assert (=> b!160172 (= tp!81511 e!96858)))

(declare-fun b!161090 () Bool)

(assert (=> b!161090 (= e!96858 tp_is_empty!1635)))

(declare-fun b!161093 () Bool)

(declare-fun tp!81575 () Bool)

(declare-fun tp!81579 () Bool)

(assert (=> b!161093 (= e!96858 (and tp!81575 tp!81579))))

(declare-fun b!161091 () Bool)

(declare-fun tp!81578 () Bool)

(declare-fun tp!81577 () Bool)

(assert (=> b!161091 (= e!96858 (and tp!81578 tp!81577))))

(declare-fun b!161092 () Bool)

(declare-fun tp!81576 () Bool)

(assert (=> b!161092 (= e!96858 tp!81576)))

(assert (= (and b!160172 ((_ is ElementMatch!707) (regOne!1927 (regex!483 (h!8145 rules!1920))))) b!161090))

(assert (= (and b!160172 ((_ is Concat!1213) (regOne!1927 (regex!483 (h!8145 rules!1920))))) b!161091))

(assert (= (and b!160172 ((_ is Star!707) (regOne!1927 (regex!483 (h!8145 rules!1920))))) b!161092))

(assert (= (and b!160172 ((_ is Union!707) (regOne!1927 (regex!483 (h!8145 rules!1920))))) b!161093))

(declare-fun e!96859 () Bool)

(assert (=> b!160172 (= tp!81515 e!96859)))

(declare-fun b!161094 () Bool)

(assert (=> b!161094 (= e!96859 tp_is_empty!1635)))

(declare-fun b!161097 () Bool)

(declare-fun tp!81580 () Bool)

(declare-fun tp!81584 () Bool)

(assert (=> b!161097 (= e!96859 (and tp!81580 tp!81584))))

(declare-fun b!161095 () Bool)

(declare-fun tp!81583 () Bool)

(declare-fun tp!81582 () Bool)

(assert (=> b!161095 (= e!96859 (and tp!81583 tp!81582))))

(declare-fun b!161096 () Bool)

(declare-fun tp!81581 () Bool)

(assert (=> b!161096 (= e!96859 tp!81581)))

(assert (= (and b!160172 ((_ is ElementMatch!707) (regTwo!1927 (regex!483 (h!8145 rules!1920))))) b!161094))

(assert (= (and b!160172 ((_ is Concat!1213) (regTwo!1927 (regex!483 (h!8145 rules!1920))))) b!161095))

(assert (= (and b!160172 ((_ is Star!707) (regTwo!1927 (regex!483 (h!8145 rules!1920))))) b!161096))

(assert (= (and b!160172 ((_ is Union!707) (regTwo!1927 (regex!483 (h!8145 rules!1920))))) b!161097))

(declare-fun e!96860 () Bool)

(assert (=> b!160137 (= tp!81474 e!96860)))

(declare-fun b!161098 () Bool)

(assert (=> b!161098 (= e!96860 tp_is_empty!1635)))

(declare-fun b!161101 () Bool)

(declare-fun tp!81585 () Bool)

(declare-fun tp!81589 () Bool)

(assert (=> b!161101 (= e!96860 (and tp!81585 tp!81589))))

(declare-fun b!161099 () Bool)

(declare-fun tp!81588 () Bool)

(declare-fun tp!81587 () Bool)

(assert (=> b!161099 (= e!96860 (and tp!81588 tp!81587))))

(declare-fun b!161100 () Bool)

(declare-fun tp!81586 () Bool)

(assert (=> b!161100 (= e!96860 tp!81586)))

(assert (= (and b!160137 ((_ is ElementMatch!707) (regex!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) b!161098))

(assert (= (and b!160137 ((_ is Concat!1213) (regex!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) b!161099))

(assert (= (and b!160137 ((_ is Star!707) (regex!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) b!161100))

(assert (= (and b!160137 ((_ is Union!707) (regex!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) b!161101))

(declare-fun b!161102 () Bool)

(declare-fun e!96861 () Bool)

(declare-fun tp!81590 () Bool)

(assert (=> b!161102 (= e!96861 (and tp_is_empty!1635 tp!81590))))

(assert (=> b!160136 (= tp!81473 e!96861)))

(assert (= (and b!160136 ((_ is Cons!2746) (originalCharacters!526 (h!8144 (t!25821 tokens!465))))) b!161102))

(declare-fun e!96862 () Bool)

(assert (=> b!160167 (= tp!81505 e!96862)))

(declare-fun b!161103 () Bool)

(assert (=> b!161103 (= e!96862 tp_is_empty!1635)))

(declare-fun b!161106 () Bool)

(declare-fun tp!81591 () Bool)

(declare-fun tp!81595 () Bool)

(assert (=> b!161106 (= e!96862 (and tp!81591 tp!81595))))

(declare-fun b!161104 () Bool)

(declare-fun tp!81594 () Bool)

(declare-fun tp!81593 () Bool)

(assert (=> b!161104 (= e!96862 (and tp!81594 tp!81593))))

(declare-fun b!161105 () Bool)

(declare-fun tp!81592 () Bool)

(assert (=> b!161105 (= e!96862 tp!81592)))

(assert (= (and b!160167 ((_ is ElementMatch!707) (regOne!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161103))

(assert (= (and b!160167 ((_ is Concat!1213) (regOne!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161104))

(assert (= (and b!160167 ((_ is Star!707) (regOne!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161105))

(assert (= (and b!160167 ((_ is Union!707) (regOne!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161106))

(declare-fun e!96863 () Bool)

(assert (=> b!160167 (= tp!81509 e!96863)))

(declare-fun b!161107 () Bool)

(assert (=> b!161107 (= e!96863 tp_is_empty!1635)))

(declare-fun b!161110 () Bool)

(declare-fun tp!81596 () Bool)

(declare-fun tp!81600 () Bool)

(assert (=> b!161110 (= e!96863 (and tp!81596 tp!81600))))

(declare-fun b!161108 () Bool)

(declare-fun tp!81599 () Bool)

(declare-fun tp!81598 () Bool)

(assert (=> b!161108 (= e!96863 (and tp!81599 tp!81598))))

(declare-fun b!161109 () Bool)

(declare-fun tp!81597 () Bool)

(assert (=> b!161109 (= e!96863 tp!81597)))

(assert (= (and b!160167 ((_ is ElementMatch!707) (regTwo!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161107))

(assert (= (and b!160167 ((_ is Concat!1213) (regTwo!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161108))

(assert (= (and b!160167 ((_ is Star!707) (regTwo!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161109))

(assert (= (and b!160167 ((_ is Union!707) (regTwo!1927 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161110))

(declare-fun b!161113 () Bool)

(declare-fun e!96866 () Bool)

(assert (=> b!161113 (= e!96866 true)))

(declare-fun b!161112 () Bool)

(declare-fun e!96865 () Bool)

(assert (=> b!161112 (= e!96865 e!96866)))

(declare-fun b!161111 () Bool)

(declare-fun e!96864 () Bool)

(assert (=> b!161111 (= e!96864 e!96865)))

(assert (=> b!160054 e!96864))

(assert (= b!161112 b!161113))

(assert (= b!161111 b!161112))

(assert (= (and b!160054 ((_ is Cons!2748) (t!25822 rules!1920))) b!161111))

(assert (=> b!161113 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4353))))

(assert (=> b!161113 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4353))))

(declare-fun b!161117 () Bool)

(declare-fun b_free!6017 () Bool)

(declare-fun b_next!6017 () Bool)

(assert (=> b!161117 (= b_free!6017 (not b_next!6017))))

(declare-fun tp!81603 () Bool)

(declare-fun b_and!10001 () Bool)

(assert (=> b!161117 (= tp!81603 b_and!10001)))

(declare-fun b_free!6019 () Bool)

(declare-fun b_next!6019 () Bool)

(assert (=> b!161117 (= b_free!6019 (not b_next!6019))))

(declare-fun t!25990 () Bool)

(declare-fun tb!5929 () Bool)

(assert (=> (and b!161117 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465)))))) t!25990) tb!5929))

(declare-fun result!8520 () Bool)

(assert (= result!8520 result!8478))

(assert (=> b!160716 t!25990))

(assert (=> d!39545 t!25990))

(declare-fun t!25992 () Bool)

(declare-fun tb!5931 () Bool)

(assert (=> (and b!161117 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 (ite c!32065 call!6746 (ite c!32066 separatorToken!170 call!6743)))))) t!25992) tb!5931))

(declare-fun result!8522 () Bool)

(assert (= result!8522 result!8498))

(assert (=> d!39683 t!25992))

(declare-fun t!25994 () Bool)

(declare-fun tb!5933 () Bool)

(assert (=> (and b!161117 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 separatorToken!170)))) t!25994) tb!5933))

(declare-fun result!8524 () Bool)

(assert (= result!8524 result!8368))

(assert (=> d!39175 t!25994))

(declare-fun tb!5935 () Bool)

(declare-fun t!25996 () Bool)

(assert (=> (and b!161117 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 call!6743)))) t!25996) tb!5935))

(declare-fun result!8526 () Bool)

(assert (= result!8526 result!8488))

(assert (=> d!39553 t!25996))

(declare-fun t!25998 () Bool)

(declare-fun tb!5937 () Bool)

(assert (=> (and b!161117 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465))))) t!25998) tb!5937))

(declare-fun result!8528 () Bool)

(assert (= result!8528 result!8406))

(assert (=> d!39185 t!25998))

(declare-fun t!26000 () Bool)

(declare-fun tb!5939 () Bool)

(assert (=> (and b!161117 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 (apply!381 lt!47931 0))))) t!26000) tb!5939))

(declare-fun result!8530 () Bool)

(assert (= result!8530 result!8428))

(assert (=> d!39221 t!26000))

(assert (=> b!160050 t!25998))

(assert (=> b!159723 t!25994))

(declare-fun tp!81605 () Bool)

(declare-fun b_and!10003 () Bool)

(assert (=> b!161117 (= tp!81605 (and (=> t!25990 result!8520) (=> t!25998 result!8528) (=> t!25992 result!8522) (=> t!25996 result!8526) (=> t!26000 result!8530) (=> t!25994 result!8524) b_and!10003))))

(declare-fun e!96871 () Bool)

(declare-fun b!161116 () Bool)

(declare-fun tp!81602 () Bool)

(declare-fun e!96867 () Bool)

(assert (=> b!161116 (= e!96871 (and tp!81602 (inv!3558 (tag!661 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (inv!3561 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) e!96867))))

(declare-fun e!96872 () Bool)

(declare-fun b!161114 () Bool)

(declare-fun e!96870 () Bool)

(declare-fun tp!81604 () Bool)

(assert (=> b!161114 (= e!96870 (and (inv!3562 (h!8144 (t!25821 (t!25821 tokens!465)))) e!96872 tp!81604))))

(declare-fun tp!81601 () Bool)

(declare-fun b!161115 () Bool)

(assert (=> b!161115 (= e!96872 (and (inv!21 (value!18081 (h!8144 (t!25821 (t!25821 tokens!465))))) e!96871 tp!81601))))

(assert (=> b!160135 (= tp!81476 e!96870)))

(assert (=> b!161117 (= e!96867 (and tp!81603 tp!81605))))

(assert (= b!161116 b!161117))

(assert (= b!161115 b!161116))

(assert (= b!161114 b!161115))

(assert (= (and b!160135 ((_ is Cons!2747) (t!25821 (t!25821 tokens!465)))) b!161114))

(declare-fun m!151017 () Bool)

(assert (=> b!161116 m!151017))

(declare-fun m!151019 () Bool)

(assert (=> b!161116 m!151019))

(declare-fun m!151021 () Bool)

(assert (=> b!161114 m!151021))

(declare-fun m!151023 () Bool)

(assert (=> b!161115 m!151023))

(declare-fun b!161126 () Bool)

(declare-fun tp!81612 () Bool)

(declare-fun tp!81614 () Bool)

(declare-fun e!96878 () Bool)

(assert (=> b!161126 (= e!96878 (and (inv!3565 (left!2072 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))))) tp!81614 (inv!3565 (right!2402 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))))) tp!81612))))

(declare-fun b!161128 () Bool)

(declare-fun e!96877 () Bool)

(declare-fun tp!81613 () Bool)

(assert (=> b!161128 (= e!96877 tp!81613)))

(declare-fun b!161127 () Bool)

(declare-fun inv!3571 (IArray!1577) Bool)

(assert (=> b!161127 (= e!96878 (and (inv!3571 (xs!3383 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))))) e!96877))))

(assert (=> b!160052 (= tp!81459 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465))))) e!96878))))

(assert (= (and b!160052 ((_ is Node!788) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))))) b!161126))

(assert (= b!161127 b!161128))

(assert (= (and b!160052 ((_ is Leaf!1369) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (value!18081 (h!8144 tokens!465)))))) b!161127))

(declare-fun m!151025 () Bool)

(assert (=> b!161126 m!151025))

(declare-fun m!151027 () Bool)

(assert (=> b!161126 m!151027))

(declare-fun m!151029 () Bool)

(assert (=> b!161127 m!151029))

(assert (=> b!160052 m!148777))

(declare-fun b!161131 () Bool)

(declare-fun e!96881 () Bool)

(assert (=> b!161131 (= e!96881 true)))

(declare-fun b!161130 () Bool)

(declare-fun e!96880 () Bool)

(assert (=> b!161130 (= e!96880 e!96881)))

(declare-fun b!161129 () Bool)

(declare-fun e!96879 () Bool)

(assert (=> b!161129 (= e!96879 e!96880)))

(assert (=> b!160026 e!96879))

(assert (= b!161130 b!161131))

(assert (= b!161129 b!161130))

(assert (= (and b!160026 ((_ is Cons!2748) (t!25822 rules!1920))) b!161129))

(assert (=> b!161131 (< (dynLambda!988 order!1405 (toValue!1134 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4352))))

(assert (=> b!161131 (< (dynLambda!990 order!1409 (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920))))) (dynLambda!989 order!1407 lambda!4352))))

(declare-fun e!96882 () Bool)

(assert (=> b!160166 (= tp!81506 e!96882)))

(declare-fun b!161132 () Bool)

(assert (=> b!161132 (= e!96882 tp_is_empty!1635)))

(declare-fun b!161135 () Bool)

(declare-fun tp!81615 () Bool)

(declare-fun tp!81619 () Bool)

(assert (=> b!161135 (= e!96882 (and tp!81615 tp!81619))))

(declare-fun b!161133 () Bool)

(declare-fun tp!81618 () Bool)

(declare-fun tp!81617 () Bool)

(assert (=> b!161133 (= e!96882 (and tp!81618 tp!81617))))

(declare-fun b!161134 () Bool)

(declare-fun tp!81616 () Bool)

(assert (=> b!161134 (= e!96882 tp!81616)))

(assert (= (and b!160166 ((_ is ElementMatch!707) (reg!1036 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161132))

(assert (= (and b!160166 ((_ is Concat!1213) (reg!1036 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161133))

(assert (= (and b!160166 ((_ is Star!707) (reg!1036 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161134))

(assert (= (and b!160166 ((_ is Union!707) (reg!1036 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161135))

(declare-fun tp!81620 () Bool)

(declare-fun b!161136 () Bool)

(declare-fun e!96884 () Bool)

(declare-fun tp!81622 () Bool)

(assert (=> b!161136 (= e!96884 (and (inv!3565 (left!2072 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))))) tp!81622 (inv!3565 (right!2402 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))))) tp!81620))))

(declare-fun b!161138 () Bool)

(declare-fun e!96883 () Bool)

(declare-fun tp!81621 () Bool)

(assert (=> b!161138 (= e!96883 tp!81621)))

(declare-fun b!161137 () Bool)

(assert (=> b!161137 (= e!96884 (and (inv!3571 (xs!3383 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))))) e!96883))))

(assert (=> b!159729 (= tp!81398 (and (inv!3565 (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170)))) e!96884))))

(assert (= (and b!159729 ((_ is Node!788) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))))) b!161136))

(assert (= b!161137 b!161138))

(assert (= (and b!159729 ((_ is Leaf!1369) (c!32021 (dynLambda!987 (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (value!18081 separatorToken!170))))) b!161137))

(declare-fun m!151031 () Bool)

(assert (=> b!161136 m!151031))

(declare-fun m!151033 () Bool)

(assert (=> b!161136 m!151033))

(declare-fun m!151035 () Bool)

(assert (=> b!161137 m!151035))

(assert (=> b!159729 m!148411))

(declare-fun e!96885 () Bool)

(assert (=> b!160165 (= tp!81508 e!96885)))

(declare-fun b!161139 () Bool)

(assert (=> b!161139 (= e!96885 tp_is_empty!1635)))

(declare-fun b!161142 () Bool)

(declare-fun tp!81623 () Bool)

(declare-fun tp!81627 () Bool)

(assert (=> b!161142 (= e!96885 (and tp!81623 tp!81627))))

(declare-fun b!161140 () Bool)

(declare-fun tp!81626 () Bool)

(declare-fun tp!81625 () Bool)

(assert (=> b!161140 (= e!96885 (and tp!81626 tp!81625))))

(declare-fun b!161141 () Bool)

(declare-fun tp!81624 () Bool)

(assert (=> b!161141 (= e!96885 tp!81624)))

(assert (= (and b!160165 ((_ is ElementMatch!707) (regOne!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161139))

(assert (= (and b!160165 ((_ is Concat!1213) (regOne!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161140))

(assert (= (and b!160165 ((_ is Star!707) (regOne!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161141))

(assert (= (and b!160165 ((_ is Union!707) (regOne!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161142))

(declare-fun e!96886 () Bool)

(assert (=> b!160165 (= tp!81507 e!96886)))

(declare-fun b!161143 () Bool)

(assert (=> b!161143 (= e!96886 tp_is_empty!1635)))

(declare-fun b!161146 () Bool)

(declare-fun tp!81628 () Bool)

(declare-fun tp!81632 () Bool)

(assert (=> b!161146 (= e!96886 (and tp!81628 tp!81632))))

(declare-fun b!161144 () Bool)

(declare-fun tp!81631 () Bool)

(declare-fun tp!81630 () Bool)

(assert (=> b!161144 (= e!96886 (and tp!81631 tp!81630))))

(declare-fun b!161145 () Bool)

(declare-fun tp!81629 () Bool)

(assert (=> b!161145 (= e!96886 tp!81629)))

(assert (= (and b!160165 ((_ is ElementMatch!707) (regTwo!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161143))

(assert (= (and b!160165 ((_ is Concat!1213) (regTwo!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161144))

(assert (= (and b!160165 ((_ is Star!707) (regTwo!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161145))

(assert (= (and b!160165 ((_ is Union!707) (regTwo!1926 (regex!483 (rule!990 (h!8144 tokens!465)))))) b!161146))

(declare-fun b_lambda!3357 () Bool)

(assert (= b_lambda!3333 (or d!39165 b_lambda!3357)))

(declare-fun bs!15210 () Bool)

(declare-fun d!39757 () Bool)

(assert (= bs!15210 (and d!39757 d!39165)))

(assert (=> bs!15210 (= (dynLambda!991 lambda!4353 (h!8144 (list!989 lt!47931))) (rulesProduceIndividualToken!118 thiss!17480 rules!1920 (h!8144 (list!989 lt!47931))))))

(assert (=> bs!15210 m!149289))

(assert (=> b!160513 d!39757))

(declare-fun b_lambda!3359 () Bool)

(assert (= b_lambda!3331 (or d!39095 b_lambda!3359)))

(declare-fun bs!15211 () Bool)

(declare-fun d!39759 () Bool)

(assert (= bs!15211 (and d!39759 d!39095)))

(assert (=> bs!15211 (= (dynLambda!991 lambda!4330 (h!8144 (list!989 lt!47937))) (rulesProduceIndividualToken!118 thiss!17480 rules!1920 (h!8144 (list!989 lt!47937))))))

(assert (=> bs!15211 m!150231))

(assert (=> b!160511 d!39759))

(declare-fun b_lambda!3361 () Bool)

(assert (= b_lambda!3341 (or (and b!159690 b_free!5987 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!159680 b_free!5991 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!160138 b_free!6007) (and b!161117 b_free!6019 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!159684 b_free!5995 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!161089 b_free!6015 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!160149 b_free!6011 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) b_lambda!3361)))

(declare-fun b_lambda!3363 () Bool)

(assert (= b_lambda!3355 (or b!160018 b_lambda!3363)))

(declare-fun bs!15212 () Bool)

(declare-fun d!39761 () Bool)

(assert (= bs!15212 (and d!39761 b!160018)))

(assert (=> bs!15212 (= (dynLambda!991 lambda!4352 (h!8144 tokens!465)) (rulesProduceIndividualToken!118 thiss!17480 rules!1920 (h!8144 tokens!465)))))

(declare-fun m!151037 () Bool)

(assert (=> bs!15212 m!151037))

(assert (=> d!39701 d!39761))

(declare-fun b_lambda!3365 () Bool)

(assert (= b_lambda!3351 (or b!160081 b_lambda!3365)))

(declare-fun bs!15213 () Bool)

(declare-fun d!39763 () Bool)

(assert (= bs!15213 (and d!39763 b!160081)))

(assert (=> bs!15213 (= (dynLambda!991 lambda!4354 (h!8144 (t!25821 tokens!465))) (rulesProduceIndividualToken!118 thiss!17480 rules!1920 (h!8144 (t!25821 tokens!465))))))

(declare-fun m!151039 () Bool)

(assert (=> bs!15213 m!151039))

(assert (=> d!39667 d!39763))

(declare-fun b_lambda!3367 () Bool)

(assert (= b_lambda!3343 (or (and b!159690 b_free!5987 (= (toChars!993 (transformation!483 (rule!990 separatorToken!170))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!159680 b_free!5991 (= (toChars!993 (transformation!483 (rule!990 (h!8144 tokens!465)))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!160138 b_free!6007) (and b!161117 b_free!6019 (= (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 (t!25821 tokens!465)))))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!159684 b_free!5995 (= (toChars!993 (transformation!483 (h!8145 rules!1920))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!161089 b_free!6015 (= (toChars!993 (transformation!483 (h!8145 (t!25822 (t!25822 rules!1920))))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) (and b!160149 b_free!6011 (= (toChars!993 (transformation!483 (h!8145 (t!25822 rules!1920)))) (toChars!993 (transformation!483 (rule!990 (h!8144 (t!25821 tokens!465))))))) b_lambda!3367)))

(declare-fun b_lambda!3369 () Bool)

(assert (= b_lambda!3337 (or b!159687 b_lambda!3369)))

(declare-fun bs!15214 () Bool)

(declare-fun d!39765 () Bool)

(assert (= bs!15214 (and d!39765 b!159687)))

(assert (=> bs!15214 (= (dynLambda!991 lambda!4322 (h!8144 (list!989 lt!47937))) (not (isSeparator!483 (rule!990 (h!8144 (list!989 lt!47937))))))))

(assert (=> b!160608 d!39765))

(declare-fun b_lambda!3371 () Bool)

(assert (= b_lambda!3311 (or b!159687 b_lambda!3371)))

(declare-fun bs!15215 () Bool)

(declare-fun d!39767 () Bool)

(assert (= bs!15215 (and d!39767 b!159687)))

(assert (=> bs!15215 (= (dynLambda!991 lambda!4322 (h!8144 (t!25821 tokens!465))) (not (isSeparator!483 (rule!990 (h!8144 (t!25821 tokens!465))))))))

(assert (=> b!160173 d!39767))

(declare-fun b_lambda!3373 () Bool)

(assert (= b_lambda!3321 (or b!159883 b_lambda!3373)))

(declare-fun bs!15216 () Bool)

(declare-fun d!39769 () Bool)

(assert (= bs!15216 (and d!39769 b!159883)))

(assert (=> bs!15216 (= (dynLambda!991 lambda!4345 (apply!381 lt!47931 0)) (rulesProduceIndividualToken!118 thiss!17480 rules!1920 (apply!381 lt!47931 0)))))

(assert (=> bs!15216 m!148561))

(declare-fun m!151041 () Bool)

(assert (=> bs!15216 m!151041))

(assert (=> d!39267 d!39769))

(check-sat b_and!9893 (not d!39269) (not b_lambda!3365) (not d!39307) (not b!160991) (not b_next!6009) (not b!160279) (not d!39319) b_and!9821 (not d!39711) (not b!160365) (not d!39363) (not b!160541) (not bm!6821) (not b!160314) (not b!160469) (not d!39517) (not b_lambda!3363) (not d!39273) (not d!39731) (not b!161141) (not b!160978) (not b!160483) (not b!160230) (not b!160717) (not d!39559) (not b_lambda!3309) (not bm!6809) (not b!160655) (not b!160995) (not d!39521) (not b!161005) (not bm!6815) (not b!161127) (not bm!6825) (not b!160963) (not b!161087) (not d!39317) (not d!39673) b_and!10001 (not bm!6808) (not bs!15212) (not b!159729) (not b_next!5989) (not b!161023) (not b!161082) (not b!161100) (not b!161106) tp_is_empty!1635 (not d!39581) b_and!9989 (not bm!6786) (not b!161085) (not b!160740) (not b!160750) (not b!160761) (not b!161057) (not b_next!6015) (not d!39571) (not d!39305) (not b!160797) (not d!39683) (not b!161099) (not d!39553) (not b!161050) (not d!39445) (not b!160682) (not b!161040) (not b!161027) (not d!39709) (not d!39551) (not b!160754) (not b!160762) (not d!39365) (not d!39569) (not d!39315) (not d!39225) (not b!160972) (not b!160485) (not b!160302) (not b!160730) (not bm!6781) (not b!161126) (not b!160752) (not d!39563) (not b!160448) (not b!161088) (not b!161096) (not bm!6787) (not b_next!5993) (not d!39493) (not b!160366) (not b!160179) (not b!160724) (not b!161033) (not b!161064) (not b!161035) (not b_lambda!3303) (not b!160188) (not b!160990) (not b!161133) (not bs!15213) (not b!160975) (not b!161080) (not b!160324) (not b!161104) (not b!160811) (not b!160763) (not d!39753) (not b_next!5991) (not b!160701) (not b!161070) (not b!161142) (not d!39565) (not b!160911) (not b!160604) (not b!160176) (not b!160400) (not d!39605) (not b_lambda!3361) (not b!161105) (not d!39265) (not d!39477) (not b!160647) (not b!161086) (not bs!15216) (not b!160510) (not b!160716) (not b!160759) (not b!161014) b_and!9829 (not b!160321) (not b!161061) (not b!160303) (not b!160979) (not d!39729) (not d!39399) (not d!39271) (not d!39687) (not b_next!6007) (not b!160467) (not b!160728) (not d!39603) (not d!39457) (not d!39221) (not b!160798) (not d!39227) (not b!160648) (not bm!6778) (not b!161025) (not d!39593) (not b!160466) (not b!160522) (not b!160924) (not b!160602) (not tb!5897) (not b!160914) (not b!160915) b_and!10003 (not b!161076) (not b!160520) (not b!160489) (not d!39313) (not b!160487) (not b!160739) (not d!39219) (not bm!6824) (not b!160909) (not b!160186) (not b!160509) (not b!160646) (not b!161097) (not b_lambda!3373) (not b!160814) (not b!161114) (not d!39717) b_and!9993 (not d!39465) (not b!160955) (not b!161052) (not b_lambda!3301) (not b!161077) (not d!39527) (not b!160796) (not d!39405) (not d!39497) (not d!39741) (not b!160652) (not b!160792) (not b!160187) (not b!161011) (not b!161044) (not b!160910) (not d!39737) (not bm!6810) (not bs!15211) (not bm!6777) (not d!39447) (not b_lambda!3345) (not d!39557) (not b!161065) (not b!160993) (not b!160974) (not b!161047) (not d!39561) (not b!160364) (not b!160606) (not b!161136) (not b!160391) (not d!39261) (not b!161021) (not b!161140) (not tb!5907) (not b!161053) (not d!39513) (not b!161144) (not d!39597) b_and!9991 (not b_lambda!3369) (not b!160651) (not b!161018) (not b!161058) (not tb!5887) (not b_lambda!3357) (not b!160539) (not d!39489) (not b!160174) (not d!39485) b_and!9995 (not d!39701) (not d!39475) (not b!160952) (not b!160987) (not d!39481) (not b!160323) (not b!160683) (not b!161012) (not b!161043) (not b_next!5995) (not d!39739) (not b!160970) (not b!160231) (not d!39579) (not b!161060) (not b!160922) b_and!9987 (not d!39431) (not bm!6783) (not b!161010) (not d!39689) (not b!160817) (not bs!15210) (not b!160447) (not b!161137) (not b!160755) (not d!39667) (not b!161054) (not d!39361) (not b_next!6017) (not b!160918) (not d!39449) (not d!39267) (not b!160684) (not b!160282) (not b!160385) (not b!160697) (not b!160996) (not b!161092) (not b!160540) (not b!160235) (not d!39459) (not d!39249) (not d!39417) (not b!160538) (not b!160232) (not d!39257) (not b!161068) (not d!39735) (not b!160481) (not b!160318) (not b!160234) (not b!160313) (not b!160508) (not d!39371) (not d!39389) (not d!39515) (not b!160980) (not b_lambda!3305) (not b!161129) (not bm!6819) (not d!39369) (not b!161056) (not b!160653) (not b!161110) (not b_next!6019) (not b!160745) (not d!39545) (not d!39583) (not b_lambda!3307) (not b!160723) (not d!39589) (not b!161038) (not b!161081) (not b!160954) (not d!39311) (not b!160052) (not b_lambda!3359) (not b!160233) (not b!160283) (not d!39713) (not b!160609) (not b!160177) (not b!160470) (not b!160994) (not b!160818) (not b!160926) (not b!160908) (not d!39679) (not b!161128) (not b!161111) (not b!160726) (not b!161108) (not b!161145) (not bm!6823) (not b!160692) (not b!160969) (not d!39519) (not d!39573) (not b!160343) (not d!39411) (not b!161062) (not b!160607) (not b!161078) (not b!160962) (not b!161017) (not d!39591) (not b!160514) b_and!9889 (not b!161029) b_and!9997 (not b!161006) (not b!161093) (not b!160370) (not b_lambda!3353) (not b!160386) (not b!161084) (not b!160512) (not b!161001) (not d!39287) (not b!161146) (not b!160742) (not b!160524) (not b!160229) (not d!39413) (not b!161013) (not b!161073) (not b!161031) (not bm!6822) (not b!161069) (not b!160532) (not b!160925) (not b!160269) (not b!161109) (not b_lambda!3313) (not b!161020) (not bm!6807) (not b!160973) (not b_next!5985) (not d!39509) (not b!161135) (not d!39725) (not b!160449) (not b!160367) (not d!39567) (not b!161072) (not b!161134) (not b!161074) (not b!160812) (not b!160319) (not b!161115) (not b_next!6005) (not d!39279) (not b!160743) (not tb!5837) (not b!160545) (not b!161022) (not d!39555) (not b!161116) (not b!160245) (not b!161095) (not b!161101) (not b!160268) b_and!9999 (not b!160907) (not d!39303) (not b!160976) (not b_lambda!3367) (not b!161138) (not b!160384) (not b!161102) (not b!160605) (not b!160737) (not b!160547) (not d!39391) (not bm!6774) (not b_lambda!3371) (not d!39595) (not b!160490) (not b!160913) b_and!9825 (not b!160718) (not b!161091) (not b_next!6011) (not b!160398) (not b!161066) (not b!161037) (not b!161002) (not b!160299) (not b_next!5987) (not d!39723) (not b_next!6013))
(check-sat (not b_next!6015) (not b_next!5993) (not b_next!5991) b_and!9829 (not b_next!6007) b_and!10003 b_and!9993 b_and!9991 b_and!9987 (not b_next!6017) (not b_next!6019) (not b_next!5985) (not b_next!6005) b_and!9999 b_and!9821 b_and!9893 (not b_next!6009) b_and!10001 (not b_next!5989) b_and!9989 b_and!9995 (not b_next!5995) b_and!9889 b_and!9997 b_and!9825 (not b_next!6013) (not b_next!6011) (not b_next!5987))
