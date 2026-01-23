; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!310590 () Bool)

(assert start!310590)

(declare-fun b!3327184 () Bool)

(declare-fun b_free!87569 () Bool)

(declare-fun b_next!88273 () Bool)

(assert (=> b!3327184 (= b_free!87569 (not b_next!88273))))

(declare-fun tp!1039930 () Bool)

(declare-fun b_and!229303 () Bool)

(assert (=> b!3327184 (= tp!1039930 b_and!229303)))

(declare-fun b_free!87571 () Bool)

(declare-fun b_next!88275 () Bool)

(assert (=> b!3327184 (= b_free!87571 (not b_next!88275))))

(declare-fun tp!1039924 () Bool)

(declare-fun b_and!229305 () Bool)

(assert (=> b!3327184 (= tp!1039924 b_and!229305)))

(declare-fun b!3327190 () Bool)

(declare-fun b_free!87573 () Bool)

(declare-fun b_next!88277 () Bool)

(assert (=> b!3327190 (= b_free!87573 (not b_next!88277))))

(declare-fun tp!1039923 () Bool)

(declare-fun b_and!229307 () Bool)

(assert (=> b!3327190 (= tp!1039923 b_and!229307)))

(declare-fun b_free!87575 () Bool)

(declare-fun b_next!88279 () Bool)

(assert (=> b!3327190 (= b_free!87575 (not b_next!88279))))

(declare-fun tp!1039918 () Bool)

(declare-fun b_and!229309 () Bool)

(assert (=> b!3327190 (= tp!1039918 b_and!229309)))

(declare-fun b!3327192 () Bool)

(declare-fun b_free!87577 () Bool)

(declare-fun b_next!88281 () Bool)

(assert (=> b!3327192 (= b_free!87577 (not b_next!88281))))

(declare-fun tp!1039927 () Bool)

(declare-fun b_and!229311 () Bool)

(assert (=> b!3327192 (= tp!1039927 b_and!229311)))

(declare-fun b_free!87579 () Bool)

(declare-fun b_next!88283 () Bool)

(assert (=> b!3327192 (= b_free!87579 (not b_next!88283))))

(declare-fun tp!1039928 () Bool)

(declare-fun b_and!229313 () Bool)

(assert (=> b!3327192 (= tp!1039928 b_and!229313)))

(declare-datatypes ((C!20364 0))(
  ( (C!20365 (val!12230 Int)) )
))
(declare-datatypes ((Regex!10089 0))(
  ( (ElementMatch!10089 (c!565060 C!20364)) (Concat!15649 (regOne!20690 Regex!10089) (regTwo!20690 Regex!10089)) (EmptyExpr!10089) (Star!10089 (reg!10418 Regex!10089)) (EmptyLang!10089) (Union!10089 (regOne!20691 Regex!10089) (regTwo!20691 Regex!10089)) )
))
(declare-datatypes ((List!36782 0))(
  ( (Nil!36658) (Cons!36658 (h!42078 (_ BitVec 16)) (t!256739 List!36782)) )
))
(declare-datatypes ((TokenValue!5560 0))(
  ( (FloatLiteralValue!11120 (text!39365 List!36782)) (TokenValueExt!5559 (__x!23337 Int)) (Broken!27800 (value!172339 List!36782)) (Object!5683) (End!5560) (Def!5560) (Underscore!5560) (Match!5560) (Else!5560) (Error!5560) (Case!5560) (If!5560) (Extends!5560) (Abstract!5560) (Class!5560) (Val!5560) (DelimiterValue!11120 (del!5620 List!36782)) (KeywordValue!5566 (value!172340 List!36782)) (CommentValue!11120 (value!172341 List!36782)) (WhitespaceValue!11120 (value!172342 List!36782)) (IndentationValue!5560 (value!172343 List!36782)) (String!41133) (Int32!5560) (Broken!27801 (value!172344 List!36782)) (Boolean!5561) (Unit!51671) (OperatorValue!5563 (op!5620 List!36782)) (IdentifierValue!11120 (value!172345 List!36782)) (IdentifierValue!11121 (value!172346 List!36782)) (WhitespaceValue!11121 (value!172347 List!36782)) (True!11120) (False!11120) (Broken!27802 (value!172348 List!36782)) (Broken!27803 (value!172349 List!36782)) (True!11121) (RightBrace!5560) (RightBracket!5560) (Colon!5560) (Null!5560) (Comma!5560) (LeftBracket!5560) (False!11121) (LeftBrace!5560) (ImaginaryLiteralValue!5560 (text!39366 List!36782)) (StringLiteralValue!16680 (value!172350 List!36782)) (EOFValue!5560 (value!172351 List!36782)) (IdentValue!5560 (value!172352 List!36782)) (DelimiterValue!11121 (value!172353 List!36782)) (DedentValue!5560 (value!172354 List!36782)) (NewLineValue!5560 (value!172355 List!36782)) (IntegerValue!16680 (value!172356 (_ BitVec 32)) (text!39367 List!36782)) (IntegerValue!16681 (value!172357 Int) (text!39368 List!36782)) (Times!5560) (Or!5560) (Equal!5560) (Minus!5560) (Broken!27804 (value!172358 List!36782)) (And!5560) (Div!5560) (LessEqual!5560) (Mod!5560) (Concat!15650) (Not!5560) (Plus!5560) (SpaceValue!5560 (value!172359 List!36782)) (IntegerValue!16682 (value!172360 Int) (text!39369 List!36782)) (StringLiteralValue!16681 (text!39370 List!36782)) (FloatLiteralValue!11121 (text!39371 List!36782)) (BytesLiteralValue!5560 (value!172361 List!36782)) (CommentValue!11121 (value!172362 List!36782)) (StringLiteralValue!16682 (value!172363 List!36782)) (ErrorTokenValue!5560 (msg!5621 List!36782)) )
))
(declare-datatypes ((List!36783 0))(
  ( (Nil!36659) (Cons!36659 (h!42079 C!20364) (t!256740 List!36783)) )
))
(declare-datatypes ((IArray!22075 0))(
  ( (IArray!22076 (innerList!11095 List!36783)) )
))
(declare-datatypes ((Conc!11035 0))(
  ( (Node!11035 (left!28570 Conc!11035) (right!28900 Conc!11035) (csize!22300 Int) (cheight!11246 Int)) (Leaf!17311 (xs!14173 IArray!22075) (csize!22301 Int)) (Empty!11035) )
))
(declare-datatypes ((BalanceConc!21684 0))(
  ( (BalanceConc!21685 (c!565061 Conc!11035)) )
))
(declare-datatypes ((String!41134 0))(
  ( (String!41135 (value!172364 String)) )
))
(declare-datatypes ((TokenValueInjection!10548 0))(
  ( (TokenValueInjection!10549 (toValue!7490 Int) (toChars!7349 Int)) )
))
(declare-datatypes ((Rule!10460 0))(
  ( (Rule!10461 (regex!5330 Regex!10089) (tag!5882 String!41134) (isSeparator!5330 Bool) (transformation!5330 TokenValueInjection!10548)) )
))
(declare-datatypes ((Token!10026 0))(
  ( (Token!10027 (value!172365 TokenValue!5560) (rule!7852 Rule!10460) (size!27709 Int) (originalCharacters!6044 List!36783)) )
))
(declare-fun separatorToken!241 () Token!10026)

(declare-fun tp!1039920 () Bool)

(declare-fun e!2069079 () Bool)

(declare-fun b!3327179 () Bool)

(declare-fun e!2069063 () Bool)

(declare-fun inv!49658 (String!41134) Bool)

(declare-fun inv!49661 (TokenValueInjection!10548) Bool)

(assert (=> b!3327179 (= e!2069079 (and tp!1039920 (inv!49658 (tag!5882 (rule!7852 separatorToken!241))) (inv!49661 (transformation!5330 (rule!7852 separatorToken!241))) e!2069063))))

(declare-datatypes ((List!36784 0))(
  ( (Nil!36660) (Cons!36660 (h!42080 Token!10026) (t!256741 List!36784)) )
))
(declare-fun tokens!494 () List!36784)

(declare-fun b!3327180 () Bool)

(declare-fun e!2069069 () Bool)

(declare-fun e!2069068 () Bool)

(declare-fun tp!1039919 () Bool)

(declare-fun inv!21 (TokenValue!5560) Bool)

(assert (=> b!3327180 (= e!2069068 (and (inv!21 (value!172365 (h!42080 tokens!494))) e!2069069 tp!1039919))))

(declare-fun b!3327181 () Bool)

(declare-fun e!2069062 () Bool)

(declare-fun e!2069082 () Bool)

(assert (=> b!3327181 (= e!2069062 e!2069082)))

(declare-fun res!1349475 () Bool)

(assert (=> b!3327181 (=> res!1349475 e!2069082)))

(declare-fun contains!6645 (List!36784 Token!10026) Bool)

(assert (=> b!3327181 (= res!1349475 (not (contains!6645 tokens!494 (h!42080 tokens!494))))))

(declare-fun lt!1130562 () List!36783)

(declare-fun isEmpty!20819 (List!36783) Bool)

(declare-fun getSuffix!1424 (List!36783 List!36783) List!36783)

(assert (=> b!3327181 (isEmpty!20819 (getSuffix!1424 lt!1130562 lt!1130562))))

(declare-datatypes ((Unit!51672 0))(
  ( (Unit!51673) )
))
(declare-fun lt!1130558 () Unit!51672)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!82 (List!36783) Unit!51672)

(assert (=> b!3327181 (= lt!1130558 (lemmaGetSuffixOnListWithItSelfIsEmpty!82 lt!1130562))))

(declare-datatypes ((LexerInterface!4919 0))(
  ( (LexerInterfaceExt!4916 (__x!23338 Int)) (Lexer!4917) )
))
(declare-fun thiss!18206 () LexerInterface!4919)

(declare-datatypes ((List!36785 0))(
  ( (Nil!36661) (Cons!36661 (h!42081 Rule!10460) (t!256742 List!36785)) )
))
(declare-fun rules!2135 () List!36785)

(declare-fun b!3327182 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1785 (LexerInterface!4919 List!36785 List!36784) Bool)

(assert (=> b!3327182 (= e!2069082 (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 tokens!494))))

(declare-fun tp!1039925 () Bool)

(declare-fun b!3327183 () Bool)

(declare-fun e!2069075 () Bool)

(declare-fun e!2069073 () Bool)

(assert (=> b!3327183 (= e!2069073 (and tp!1039925 (inv!49658 (tag!5882 (h!42081 rules!2135))) (inv!49661 (transformation!5330 (h!42081 rules!2135))) e!2069075))))

(assert (=> b!3327184 (= e!2069075 (and tp!1039930 tp!1039924))))

(declare-fun b!3327185 () Bool)

(declare-fun res!1349477 () Bool)

(assert (=> b!3327185 (=> res!1349477 e!2069062)))

(declare-datatypes ((IArray!22077 0))(
  ( (IArray!22078 (innerList!11096 List!36784)) )
))
(declare-datatypes ((Conc!11036 0))(
  ( (Node!11036 (left!28571 Conc!11036) (right!28901 Conc!11036) (csize!22302 Int) (cheight!11247 Int)) (Leaf!17312 (xs!14174 IArray!22077) (csize!22303 Int)) (Empty!11036) )
))
(declare-datatypes ((BalanceConc!21686 0))(
  ( (BalanceConc!21687 (c!565062 Conc!11036)) )
))
(declare-fun lt!1130563 () BalanceConc!21686)

(declare-fun list!13197 (BalanceConc!21684) List!36783)

(declare-fun printWithSeparatorToken!110 (LexerInterface!4919 BalanceConc!21686 Token!10026) BalanceConc!21684)

(declare-fun ++!8907 (List!36783 List!36783) List!36783)

(declare-fun charsOf!3344 (Token!10026) BalanceConc!21684)

(assert (=> b!3327185 (= res!1349477 (not (= (list!13197 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241)) (++!8907 lt!1130562 (list!13197 (charsOf!3344 separatorToken!241))))))))

(declare-fun b!3327186 () Bool)

(declare-fun res!1349486 () Bool)

(declare-fun e!2069072 () Bool)

(assert (=> b!3327186 (=> res!1349486 e!2069072)))

(declare-fun rulesProduceIndividualToken!2411 (LexerInterface!4919 List!36785 Token!10026) Bool)

(assert (=> b!3327186 (= res!1349486 (not (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 (h!42080 tokens!494))))))

(declare-fun b!3327187 () Bool)

(declare-fun res!1349484 () Bool)

(declare-fun e!2069080 () Bool)

(assert (=> b!3327187 (=> (not res!1349484) (not e!2069080))))

(declare-fun isEmpty!20820 (List!36785) Bool)

(assert (=> b!3327187 (= res!1349484 (not (isEmpty!20820 rules!2135)))))

(declare-fun b!3327188 () Bool)

(declare-fun res!1349481 () Bool)

(declare-fun e!2069070 () Bool)

(assert (=> b!3327188 (=> (not res!1349481) (not e!2069070))))

(get-info :version)

(assert (=> b!3327188 (= res!1349481 (and (not ((_ is Nil!36660) tokens!494)) ((_ is Nil!36660) (t!256741 tokens!494))))))

(assert (=> b!3327190 (= e!2069063 (and tp!1039923 tp!1039918))))

(declare-fun b!3327191 () Bool)

(declare-fun res!1349476 () Bool)

(assert (=> b!3327191 (=> (not res!1349476) (not e!2069070))))

(assert (=> b!3327191 (= res!1349476 (isSeparator!5330 (rule!7852 separatorToken!241)))))

(declare-fun e!2069071 () Bool)

(assert (=> b!3327192 (= e!2069071 (and tp!1039927 tp!1039928))))

(declare-fun b!3327193 () Bool)

(declare-fun res!1349487 () Bool)

(assert (=> b!3327193 (=> (not res!1349487) (not e!2069070))))

(declare-fun lambda!119701 () Int)

(declare-fun forall!7647 (List!36784 Int) Bool)

(assert (=> b!3327193 (= res!1349487 (forall!7647 tokens!494 lambda!119701))))

(declare-fun b!3327194 () Bool)

(assert (=> b!3327194 (= e!2069080 e!2069070)))

(declare-fun res!1349485 () Bool)

(assert (=> b!3327194 (=> (not res!1349485) (not e!2069070))))

(declare-fun rulesProduceEachTokenIndividually!1370 (LexerInterface!4919 List!36785 BalanceConc!21686) Bool)

(assert (=> b!3327194 (= res!1349485 (rulesProduceEachTokenIndividually!1370 thiss!18206 rules!2135 lt!1130563))))

(declare-fun seqFromList!3713 (List!36784) BalanceConc!21686)

(assert (=> b!3327194 (= lt!1130563 (seqFromList!3713 tokens!494))))

(declare-fun b!3327195 () Bool)

(declare-fun e!2069066 () Bool)

(declare-fun tp!1039926 () Bool)

(assert (=> b!3327195 (= e!2069066 (and e!2069073 tp!1039926))))

(declare-fun b!3327196 () Bool)

(declare-fun res!1349479 () Bool)

(assert (=> b!3327196 (=> res!1349479 e!2069072)))

(declare-fun isEmpty!20821 (BalanceConc!21686) Bool)

(declare-datatypes ((tuple2!36158 0))(
  ( (tuple2!36159 (_1!21213 BalanceConc!21686) (_2!21213 BalanceConc!21684)) )
))
(declare-fun lex!2245 (LexerInterface!4919 List!36785 BalanceConc!21684) tuple2!36158)

(declare-fun seqFromList!3714 (List!36783) BalanceConc!21684)

(assert (=> b!3327196 (= res!1349479 (isEmpty!20821 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562)))))))

(declare-fun b!3327197 () Bool)

(declare-fun res!1349483 () Bool)

(assert (=> b!3327197 (=> (not res!1349483) (not e!2069070))))

(declare-fun sepAndNonSepRulesDisjointChars!1524 (List!36785 List!36785) Bool)

(assert (=> b!3327197 (= res!1349483 (sepAndNonSepRulesDisjointChars!1524 rules!2135 rules!2135))))

(declare-fun b!3327198 () Bool)

(declare-fun e!2069076 () Bool)

(assert (=> b!3327198 (= e!2069070 (not e!2069076))))

(declare-fun res!1349474 () Bool)

(assert (=> b!3327198 (=> res!1349474 e!2069076)))

(declare-fun lt!1130557 () List!36783)

(declare-fun lt!1130564 () List!36783)

(assert (=> b!3327198 (= res!1349474 (not (= lt!1130557 lt!1130564)))))

(declare-fun printList!1467 (LexerInterface!4919 List!36784) List!36783)

(assert (=> b!3327198 (= lt!1130564 (printList!1467 thiss!18206 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))

(declare-fun lt!1130561 () BalanceConc!21684)

(assert (=> b!3327198 (= lt!1130557 (list!13197 lt!1130561))))

(declare-fun lt!1130560 () BalanceConc!21686)

(declare-fun printTailRec!1414 (LexerInterface!4919 BalanceConc!21686 Int BalanceConc!21684) BalanceConc!21684)

(assert (=> b!3327198 (= lt!1130561 (printTailRec!1414 thiss!18206 lt!1130560 0 (BalanceConc!21685 Empty!11035)))))

(declare-fun print!1984 (LexerInterface!4919 BalanceConc!21686) BalanceConc!21684)

(assert (=> b!3327198 (= lt!1130561 (print!1984 thiss!18206 lt!1130560))))

(declare-fun singletonSeq!2426 (Token!10026) BalanceConc!21686)

(assert (=> b!3327198 (= lt!1130560 (singletonSeq!2426 (h!42080 tokens!494)))))

(declare-fun b!3327199 () Bool)

(declare-fun res!1349488 () Bool)

(assert (=> b!3327199 (=> (not res!1349488) (not e!2069080))))

(declare-fun rulesInvariant!4316 (LexerInterface!4919 List!36785) Bool)

(assert (=> b!3327199 (= res!1349488 (rulesInvariant!4316 thiss!18206 rules!2135))))

(declare-fun tp!1039929 () Bool)

(declare-fun b!3327200 () Bool)

(declare-fun e!2069065 () Bool)

(assert (=> b!3327200 (= e!2069065 (and (inv!21 (value!172365 separatorToken!241)) e!2069079 tp!1039929))))

(declare-fun b!3327201 () Bool)

(declare-fun res!1349489 () Bool)

(assert (=> b!3327201 (=> (not res!1349489) (not e!2069070))))

(assert (=> b!3327201 (= res!1349489 (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3327202 () Bool)

(assert (=> b!3327202 (= e!2069076 e!2069072)))

(declare-fun res!1349480 () Bool)

(assert (=> b!3327202 (=> res!1349480 e!2069072)))

(assert (=> b!3327202 (= res!1349480 (or (not (= lt!1130564 lt!1130562)) (not (= lt!1130557 lt!1130562))))))

(assert (=> b!3327202 (= lt!1130562 (list!13197 (charsOf!3344 (h!42080 tokens!494))))))

(declare-fun b!3327189 () Bool)

(declare-fun tp!1039921 () Bool)

(assert (=> b!3327189 (= e!2069069 (and tp!1039921 (inv!49658 (tag!5882 (rule!7852 (h!42080 tokens!494)))) (inv!49661 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) e!2069071))))

(declare-fun res!1349482 () Bool)

(assert (=> start!310590 (=> (not res!1349482) (not e!2069080))))

(assert (=> start!310590 (= res!1349482 ((_ is Lexer!4917) thiss!18206))))

(assert (=> start!310590 e!2069080))

(assert (=> start!310590 true))

(assert (=> start!310590 e!2069066))

(declare-fun inv!49662 (Token!10026) Bool)

(assert (=> start!310590 (and (inv!49662 separatorToken!241) e!2069065)))

(declare-fun e!2069077 () Bool)

(assert (=> start!310590 e!2069077))

(declare-fun b!3327203 () Bool)

(assert (=> b!3327203 (= e!2069072 e!2069062)))

(declare-fun res!1349478 () Bool)

(assert (=> b!3327203 (=> res!1349478 e!2069062)))

(assert (=> b!3327203 (= res!1349478 (isSeparator!5330 (rule!7852 (h!42080 tokens!494))))))

(declare-fun lt!1130559 () Unit!51672)

(declare-fun forallContained!1277 (List!36784 Int Token!10026) Unit!51672)

(assert (=> b!3327203 (= lt!1130559 (forallContained!1277 tokens!494 lambda!119701 (h!42080 tokens!494)))))

(declare-fun tp!1039922 () Bool)

(declare-fun b!3327204 () Bool)

(assert (=> b!3327204 (= e!2069077 (and (inv!49662 (h!42080 tokens!494)) e!2069068 tp!1039922))))

(assert (= (and start!310590 res!1349482) b!3327187))

(assert (= (and b!3327187 res!1349484) b!3327199))

(assert (= (and b!3327199 res!1349488) b!3327194))

(assert (= (and b!3327194 res!1349485) b!3327201))

(assert (= (and b!3327201 res!1349489) b!3327191))

(assert (= (and b!3327191 res!1349476) b!3327193))

(assert (= (and b!3327193 res!1349487) b!3327197))

(assert (= (and b!3327197 res!1349483) b!3327188))

(assert (= (and b!3327188 res!1349481) b!3327198))

(assert (= (and b!3327198 (not res!1349474)) b!3327202))

(assert (= (and b!3327202 (not res!1349480)) b!3327186))

(assert (= (and b!3327186 (not res!1349486)) b!3327196))

(assert (= (and b!3327196 (not res!1349479)) b!3327203))

(assert (= (and b!3327203 (not res!1349478)) b!3327185))

(assert (= (and b!3327185 (not res!1349477)) b!3327181))

(assert (= (and b!3327181 (not res!1349475)) b!3327182))

(assert (= b!3327183 b!3327184))

(assert (= b!3327195 b!3327183))

(assert (= (and start!310590 ((_ is Cons!36661) rules!2135)) b!3327195))

(assert (= b!3327179 b!3327190))

(assert (= b!3327200 b!3327179))

(assert (= start!310590 b!3327200))

(assert (= b!3327189 b!3327192))

(assert (= b!3327180 b!3327189))

(assert (= b!3327204 b!3327180))

(assert (= (and start!310590 ((_ is Cons!36660) tokens!494)) b!3327204))

(declare-fun m!3667369 () Bool)

(assert (=> b!3327201 m!3667369))

(declare-fun m!3667371 () Bool)

(assert (=> b!3327204 m!3667371))

(declare-fun m!3667373 () Bool)

(assert (=> b!3327182 m!3667373))

(declare-fun m!3667375 () Bool)

(assert (=> b!3327194 m!3667375))

(declare-fun m!3667377 () Bool)

(assert (=> b!3327194 m!3667377))

(declare-fun m!3667379 () Bool)

(assert (=> b!3327187 m!3667379))

(declare-fun m!3667381 () Bool)

(assert (=> b!3327189 m!3667381))

(declare-fun m!3667383 () Bool)

(assert (=> b!3327189 m!3667383))

(declare-fun m!3667385 () Bool)

(assert (=> b!3327197 m!3667385))

(declare-fun m!3667387 () Bool)

(assert (=> b!3327199 m!3667387))

(declare-fun m!3667389 () Bool)

(assert (=> b!3327183 m!3667389))

(declare-fun m!3667391 () Bool)

(assert (=> b!3327183 m!3667391))

(declare-fun m!3667393 () Bool)

(assert (=> b!3327193 m!3667393))

(declare-fun m!3667395 () Bool)

(assert (=> b!3327186 m!3667395))

(declare-fun m!3667397 () Bool)

(assert (=> b!3327200 m!3667397))

(declare-fun m!3667399 () Bool)

(assert (=> b!3327202 m!3667399))

(assert (=> b!3327202 m!3667399))

(declare-fun m!3667401 () Bool)

(assert (=> b!3327202 m!3667401))

(declare-fun m!3667403 () Bool)

(assert (=> b!3327203 m!3667403))

(declare-fun m!3667405 () Bool)

(assert (=> b!3327180 m!3667405))

(declare-fun m!3667407 () Bool)

(assert (=> b!3327196 m!3667407))

(assert (=> b!3327196 m!3667407))

(declare-fun m!3667409 () Bool)

(assert (=> b!3327196 m!3667409))

(declare-fun m!3667411 () Bool)

(assert (=> b!3327196 m!3667411))

(declare-fun m!3667413 () Bool)

(assert (=> start!310590 m!3667413))

(declare-fun m!3667415 () Bool)

(assert (=> b!3327198 m!3667415))

(declare-fun m!3667417 () Bool)

(assert (=> b!3327198 m!3667417))

(declare-fun m!3667419 () Bool)

(assert (=> b!3327198 m!3667419))

(declare-fun m!3667421 () Bool)

(assert (=> b!3327198 m!3667421))

(declare-fun m!3667423 () Bool)

(assert (=> b!3327198 m!3667423))

(declare-fun m!3667425 () Bool)

(assert (=> b!3327179 m!3667425))

(declare-fun m!3667427 () Bool)

(assert (=> b!3327179 m!3667427))

(declare-fun m!3667429 () Bool)

(assert (=> b!3327185 m!3667429))

(declare-fun m!3667431 () Bool)

(assert (=> b!3327185 m!3667431))

(assert (=> b!3327185 m!3667429))

(declare-fun m!3667433 () Bool)

(assert (=> b!3327185 m!3667433))

(assert (=> b!3327185 m!3667431))

(declare-fun m!3667435 () Bool)

(assert (=> b!3327185 m!3667435))

(assert (=> b!3327185 m!3667433))

(declare-fun m!3667437 () Bool)

(assert (=> b!3327185 m!3667437))

(declare-fun m!3667439 () Bool)

(assert (=> b!3327181 m!3667439))

(declare-fun m!3667441 () Bool)

(assert (=> b!3327181 m!3667441))

(assert (=> b!3327181 m!3667441))

(declare-fun m!3667443 () Bool)

(assert (=> b!3327181 m!3667443))

(declare-fun m!3667445 () Bool)

(assert (=> b!3327181 m!3667445))

(check-sat (not b!3327201) (not b!3327202) b_and!229305 (not b_next!88277) (not b!3327194) (not b!3327181) (not b!3327200) (not b!3327196) (not b!3327204) (not b_next!88279) (not b!3327186) (not b!3327179) (not b!3327180) (not b_next!88281) (not b!3327203) (not b!3327195) b_and!229303 (not b!3327185) b_and!229307 (not start!310590) (not b!3327189) (not b!3327198) (not b!3327187) (not b!3327199) (not b!3327193) (not b_next!88275) b_and!229309 (not b!3327183) (not b_next!88283) b_and!229311 b_and!229313 (not b!3327197) (not b_next!88273) (not b!3327182))
(check-sat (not b_next!88279) (not b_next!88281) b_and!229305 (not b_next!88277) b_and!229303 b_and!229307 (not b_next!88283) (not b_next!88273) (not b_next!88275) b_and!229309 b_and!229311 b_and!229313)
(get-model)

(declare-fun d!935556 () Bool)

(declare-fun res!1349521 () Bool)

(declare-fun e!2069112 () Bool)

(assert (=> d!935556 (=> res!1349521 e!2069112)))

(assert (=> d!935556 (= res!1349521 ((_ is Nil!36660) tokens!494))))

(assert (=> d!935556 (= (forall!7647 tokens!494 lambda!119701) e!2069112)))

(declare-fun b!3327245 () Bool)

(declare-fun e!2069113 () Bool)

(assert (=> b!3327245 (= e!2069112 e!2069113)))

(declare-fun res!1349522 () Bool)

(assert (=> b!3327245 (=> (not res!1349522) (not e!2069113))))

(declare-fun dynLambda!15113 (Int Token!10026) Bool)

(assert (=> b!3327245 (= res!1349522 (dynLambda!15113 lambda!119701 (h!42080 tokens!494)))))

(declare-fun b!3327246 () Bool)

(assert (=> b!3327246 (= e!2069113 (forall!7647 (t!256741 tokens!494) lambda!119701))))

(assert (= (and d!935556 (not res!1349521)) b!3327245))

(assert (= (and b!3327245 res!1349522) b!3327246))

(declare-fun b_lambda!93893 () Bool)

(assert (=> (not b_lambda!93893) (not b!3327245)))

(declare-fun m!3667483 () Bool)

(assert (=> b!3327245 m!3667483))

(declare-fun m!3667485 () Bool)

(assert (=> b!3327246 m!3667485))

(assert (=> b!3327193 d!935556))

(declare-fun bs!550977 () Bool)

(declare-fun d!935566 () Bool)

(assert (= bs!550977 (and d!935566 b!3327193)))

(declare-fun lambda!119704 () Int)

(assert (=> bs!550977 (not (= lambda!119704 lambda!119701))))

(declare-fun b!3327347 () Bool)

(declare-fun e!2069184 () Bool)

(assert (=> b!3327347 (= e!2069184 true)))

(declare-fun b!3327346 () Bool)

(declare-fun e!2069183 () Bool)

(assert (=> b!3327346 (= e!2069183 e!2069184)))

(declare-fun b!3327345 () Bool)

(declare-fun e!2069182 () Bool)

(assert (=> b!3327345 (= e!2069182 e!2069183)))

(assert (=> d!935566 e!2069182))

(assert (= b!3327346 b!3327347))

(assert (= b!3327345 b!3327346))

(assert (= (and d!935566 ((_ is Cons!36661) rules!2135)) b!3327345))

(declare-fun order!19169 () Int)

(declare-fun order!19167 () Int)

(declare-fun dynLambda!15114 (Int Int) Int)

(declare-fun dynLambda!15115 (Int Int) Int)

(assert (=> b!3327347 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119704))))

(declare-fun order!19171 () Int)

(declare-fun dynLambda!15116 (Int Int) Int)

(assert (=> b!3327347 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119704))))

(assert (=> d!935566 true))

(declare-fun lt!1130632 () Bool)

(assert (=> d!935566 (= lt!1130632 (forall!7647 tokens!494 lambda!119704))))

(declare-fun e!2069175 () Bool)

(assert (=> d!935566 (= lt!1130632 e!2069175)))

(declare-fun res!1349577 () Bool)

(assert (=> d!935566 (=> res!1349577 e!2069175)))

(assert (=> d!935566 (= res!1349577 (not ((_ is Cons!36660) tokens!494)))))

(assert (=> d!935566 (not (isEmpty!20820 rules!2135))))

(assert (=> d!935566 (= (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 tokens!494) lt!1130632)))

(declare-fun b!3327335 () Bool)

(declare-fun e!2069174 () Bool)

(assert (=> b!3327335 (= e!2069175 e!2069174)))

(declare-fun res!1349576 () Bool)

(assert (=> b!3327335 (=> (not res!1349576) (not e!2069174))))

(assert (=> b!3327335 (= res!1349576 (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 (h!42080 tokens!494)))))

(declare-fun b!3327336 () Bool)

(assert (=> b!3327336 (= e!2069174 (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 (t!256741 tokens!494)))))

(assert (= (and d!935566 (not res!1349577)) b!3327335))

(assert (= (and b!3327335 res!1349576) b!3327336))

(declare-fun m!3667673 () Bool)

(assert (=> d!935566 m!3667673))

(assert (=> d!935566 m!3667379))

(assert (=> b!3327335 m!3667395))

(declare-fun m!3667675 () Bool)

(assert (=> b!3327336 m!3667675))

(assert (=> b!3327182 d!935566))

(declare-fun d!935622 () Bool)

(assert (=> d!935622 (= (inv!49658 (tag!5882 (h!42081 rules!2135))) (= (mod (str.len (value!172364 (tag!5882 (h!42081 rules!2135)))) 2) 0))))

(assert (=> b!3327183 d!935622))

(declare-fun d!935624 () Bool)

(declare-fun res!1349580 () Bool)

(declare-fun e!2069187 () Bool)

(assert (=> d!935624 (=> (not res!1349580) (not e!2069187))))

(declare-fun semiInverseModEq!2213 (Int Int) Bool)

(assert (=> d!935624 (= res!1349580 (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toValue!7490 (transformation!5330 (h!42081 rules!2135)))))))

(assert (=> d!935624 (= (inv!49661 (transformation!5330 (h!42081 rules!2135))) e!2069187)))

(declare-fun b!3327352 () Bool)

(declare-fun equivClasses!2112 (Int Int) Bool)

(assert (=> b!3327352 (= e!2069187 (equivClasses!2112 (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toValue!7490 (transformation!5330 (h!42081 rules!2135)))))))

(assert (= (and d!935624 res!1349580) b!3327352))

(declare-fun m!3667677 () Bool)

(assert (=> d!935624 m!3667677))

(declare-fun m!3667679 () Bool)

(assert (=> b!3327352 m!3667679))

(assert (=> b!3327183 d!935624))

(declare-fun d!935626 () Bool)

(declare-fun res!1349585 () Bool)

(declare-fun e!2069190 () Bool)

(assert (=> d!935626 (=> (not res!1349585) (not e!2069190))))

(assert (=> d!935626 (= res!1349585 (not (isEmpty!20819 (originalCharacters!6044 separatorToken!241))))))

(assert (=> d!935626 (= (inv!49662 separatorToken!241) e!2069190)))

(declare-fun b!3327357 () Bool)

(declare-fun res!1349586 () Bool)

(assert (=> b!3327357 (=> (not res!1349586) (not e!2069190))))

(declare-fun dynLambda!15120 (Int TokenValue!5560) BalanceConc!21684)

(assert (=> b!3327357 (= res!1349586 (= (originalCharacters!6044 separatorToken!241) (list!13197 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))))))

(declare-fun b!3327358 () Bool)

(declare-fun size!27713 (List!36783) Int)

(assert (=> b!3327358 (= e!2069190 (= (size!27709 separatorToken!241) (size!27713 (originalCharacters!6044 separatorToken!241))))))

(assert (= (and d!935626 res!1349585) b!3327357))

(assert (= (and b!3327357 res!1349586) b!3327358))

(declare-fun b_lambda!93903 () Bool)

(assert (=> (not b_lambda!93903) (not b!3327357)))

(declare-fun t!256762 () Bool)

(declare-fun tb!174211 () Bool)

(assert (=> (and b!3327184 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) t!256762) tb!174211))

(declare-fun b!3327363 () Bool)

(declare-fun e!2069193 () Bool)

(declare-fun tp!1039937 () Bool)

(declare-fun inv!49665 (Conc!11035) Bool)

(assert (=> b!3327363 (= e!2069193 (and (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))) tp!1039937))))

(declare-fun result!217290 () Bool)

(declare-fun inv!49666 (BalanceConc!21684) Bool)

(assert (=> tb!174211 (= result!217290 (and (inv!49666 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))) e!2069193))))

(assert (= tb!174211 b!3327363))

(declare-fun m!3667681 () Bool)

(assert (=> b!3327363 m!3667681))

(declare-fun m!3667683 () Bool)

(assert (=> tb!174211 m!3667683))

(assert (=> b!3327357 t!256762))

(declare-fun b_and!229339 () Bool)

(assert (= b_and!229305 (and (=> t!256762 result!217290) b_and!229339)))

(declare-fun t!256764 () Bool)

(declare-fun tb!174213 () Bool)

(assert (=> (and b!3327190 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) t!256764) tb!174213))

(declare-fun result!217294 () Bool)

(assert (= result!217294 result!217290))

(assert (=> b!3327357 t!256764))

(declare-fun b_and!229341 () Bool)

(assert (= b_and!229309 (and (=> t!256764 result!217294) b_and!229341)))

(declare-fun t!256766 () Bool)

(declare-fun tb!174215 () Bool)

(assert (=> (and b!3327192 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) t!256766) tb!174215))

(declare-fun result!217296 () Bool)

(assert (= result!217296 result!217290))

(assert (=> b!3327357 t!256766))

(declare-fun b_and!229343 () Bool)

(assert (= b_and!229313 (and (=> t!256766 result!217296) b_and!229343)))

(declare-fun m!3667685 () Bool)

(assert (=> d!935626 m!3667685))

(declare-fun m!3667687 () Bool)

(assert (=> b!3327357 m!3667687))

(assert (=> b!3327357 m!3667687))

(declare-fun m!3667689 () Bool)

(assert (=> b!3327357 m!3667689))

(declare-fun m!3667691 () Bool)

(assert (=> b!3327358 m!3667691))

(assert (=> start!310590 d!935626))

(declare-fun d!935628 () Bool)

(declare-fun res!1349587 () Bool)

(declare-fun e!2069194 () Bool)

(assert (=> d!935628 (=> (not res!1349587) (not e!2069194))))

(assert (=> d!935628 (= res!1349587 (not (isEmpty!20819 (originalCharacters!6044 (h!42080 tokens!494)))))))

(assert (=> d!935628 (= (inv!49662 (h!42080 tokens!494)) e!2069194)))

(declare-fun b!3327364 () Bool)

(declare-fun res!1349588 () Bool)

(assert (=> b!3327364 (=> (not res!1349588) (not e!2069194))))

(assert (=> b!3327364 (= res!1349588 (= (originalCharacters!6044 (h!42080 tokens!494)) (list!13197 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))))))

(declare-fun b!3327365 () Bool)

(assert (=> b!3327365 (= e!2069194 (= (size!27709 (h!42080 tokens!494)) (size!27713 (originalCharacters!6044 (h!42080 tokens!494)))))))

(assert (= (and d!935628 res!1349587) b!3327364))

(assert (= (and b!3327364 res!1349588) b!3327365))

(declare-fun b_lambda!93905 () Bool)

(assert (=> (not b_lambda!93905) (not b!3327364)))

(declare-fun tb!174217 () Bool)

(declare-fun t!256768 () Bool)

(assert (=> (and b!3327184 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) t!256768) tb!174217))

(declare-fun b!3327366 () Bool)

(declare-fun e!2069195 () Bool)

(declare-fun tp!1039938 () Bool)

(assert (=> b!3327366 (= e!2069195 (and (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))) tp!1039938))))

(declare-fun result!217298 () Bool)

(assert (=> tb!174217 (= result!217298 (and (inv!49666 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))) e!2069195))))

(assert (= tb!174217 b!3327366))

(declare-fun m!3667693 () Bool)

(assert (=> b!3327366 m!3667693))

(declare-fun m!3667695 () Bool)

(assert (=> tb!174217 m!3667695))

(assert (=> b!3327364 t!256768))

(declare-fun b_and!229345 () Bool)

(assert (= b_and!229339 (and (=> t!256768 result!217298) b_and!229345)))

(declare-fun t!256770 () Bool)

(declare-fun tb!174219 () Bool)

(assert (=> (and b!3327190 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) t!256770) tb!174219))

(declare-fun result!217300 () Bool)

(assert (= result!217300 result!217298))

(assert (=> b!3327364 t!256770))

(declare-fun b_and!229347 () Bool)

(assert (= b_and!229341 (and (=> t!256770 result!217300) b_and!229347)))

(declare-fun t!256772 () Bool)

(declare-fun tb!174221 () Bool)

(assert (=> (and b!3327192 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) t!256772) tb!174221))

(declare-fun result!217302 () Bool)

(assert (= result!217302 result!217298))

(assert (=> b!3327364 t!256772))

(declare-fun b_and!229349 () Bool)

(assert (= b_and!229343 (and (=> t!256772 result!217302) b_and!229349)))

(declare-fun m!3667697 () Bool)

(assert (=> d!935628 m!3667697))

(declare-fun m!3667699 () Bool)

(assert (=> b!3327364 m!3667699))

(assert (=> b!3327364 m!3667699))

(declare-fun m!3667701 () Bool)

(assert (=> b!3327364 m!3667701))

(declare-fun m!3667703 () Bool)

(assert (=> b!3327365 m!3667703))

(assert (=> b!3327204 d!935628))

(declare-fun bs!550978 () Bool)

(declare-fun d!935630 () Bool)

(assert (= bs!550978 (and d!935630 b!3327193)))

(declare-fun lambda!119709 () Int)

(assert (=> bs!550978 (not (= lambda!119709 lambda!119701))))

(declare-fun bs!550979 () Bool)

(assert (= bs!550979 (and d!935630 d!935566)))

(assert (=> bs!550979 (= lambda!119709 lambda!119704)))

(declare-fun b!3327372 () Bool)

(declare-fun e!2069201 () Bool)

(assert (=> b!3327372 (= e!2069201 true)))

(declare-fun b!3327371 () Bool)

(declare-fun e!2069200 () Bool)

(assert (=> b!3327371 (= e!2069200 e!2069201)))

(declare-fun b!3327370 () Bool)

(declare-fun e!2069199 () Bool)

(assert (=> b!3327370 (= e!2069199 e!2069200)))

(assert (=> d!935630 e!2069199))

(assert (= b!3327371 b!3327372))

(assert (= b!3327370 b!3327371))

(assert (= (and d!935630 ((_ is Cons!36661) rules!2135)) b!3327370))

(assert (=> b!3327372 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119709))))

(assert (=> b!3327372 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119709))))

(assert (=> d!935630 true))

(declare-fun e!2069198 () Bool)

(assert (=> d!935630 e!2069198))

(declare-fun res!1349591 () Bool)

(assert (=> d!935630 (=> (not res!1349591) (not e!2069198))))

(declare-fun lt!1130635 () Bool)

(declare-fun list!13200 (BalanceConc!21686) List!36784)

(assert (=> d!935630 (= res!1349591 (= lt!1130635 (forall!7647 (list!13200 lt!1130563) lambda!119709)))))

(declare-fun forall!7649 (BalanceConc!21686 Int) Bool)

(assert (=> d!935630 (= lt!1130635 (forall!7649 lt!1130563 lambda!119709))))

(assert (=> d!935630 (not (isEmpty!20820 rules!2135))))

(assert (=> d!935630 (= (rulesProduceEachTokenIndividually!1370 thiss!18206 rules!2135 lt!1130563) lt!1130635)))

(declare-fun b!3327369 () Bool)

(assert (=> b!3327369 (= e!2069198 (= lt!1130635 (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 (list!13200 lt!1130563))))))

(assert (= (and d!935630 res!1349591) b!3327369))

(declare-fun m!3667705 () Bool)

(assert (=> d!935630 m!3667705))

(assert (=> d!935630 m!3667705))

(declare-fun m!3667707 () Bool)

(assert (=> d!935630 m!3667707))

(declare-fun m!3667709 () Bool)

(assert (=> d!935630 m!3667709))

(assert (=> d!935630 m!3667379))

(assert (=> b!3327369 m!3667705))

(assert (=> b!3327369 m!3667705))

(declare-fun m!3667711 () Bool)

(assert (=> b!3327369 m!3667711))

(assert (=> b!3327194 d!935630))

(declare-fun d!935632 () Bool)

(declare-fun fromListB!1642 (List!36784) BalanceConc!21686)

(assert (=> d!935632 (= (seqFromList!3713 tokens!494) (fromListB!1642 tokens!494))))

(declare-fun bs!550980 () Bool)

(assert (= bs!550980 d!935632))

(declare-fun m!3667713 () Bool)

(assert (=> bs!550980 m!3667713))

(assert (=> b!3327194 d!935632))

(declare-fun d!935634 () Bool)

(declare-fun lt!1130638 () BalanceConc!21684)

(declare-fun printWithSeparatorTokenList!226 (LexerInterface!4919 List!36784 Token!10026) List!36783)

(assert (=> d!935634 (= (list!13197 lt!1130638) (printWithSeparatorTokenList!226 thiss!18206 (list!13200 lt!1130563) separatorToken!241))))

(declare-fun printWithSeparatorTokenTailRec!42 (LexerInterface!4919 BalanceConc!21686 Token!10026 Int BalanceConc!21684) BalanceConc!21684)

(assert (=> d!935634 (= lt!1130638 (printWithSeparatorTokenTailRec!42 thiss!18206 lt!1130563 separatorToken!241 0 (BalanceConc!21685 Empty!11035)))))

(assert (=> d!935634 (isSeparator!5330 (rule!7852 separatorToken!241))))

(assert (=> d!935634 (= (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241) lt!1130638)))

(declare-fun bs!550981 () Bool)

(assert (= bs!550981 d!935634))

(declare-fun m!3667715 () Bool)

(assert (=> bs!550981 m!3667715))

(assert (=> bs!550981 m!3667705))

(assert (=> bs!550981 m!3667705))

(declare-fun m!3667717 () Bool)

(assert (=> bs!550981 m!3667717))

(declare-fun m!3667719 () Bool)

(assert (=> bs!550981 m!3667719))

(assert (=> b!3327185 d!935634))

(declare-fun d!935636 () Bool)

(declare-fun lt!1130641 () BalanceConc!21684)

(assert (=> d!935636 (= (list!13197 lt!1130641) (originalCharacters!6044 separatorToken!241))))

(assert (=> d!935636 (= lt!1130641 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))))

(assert (=> d!935636 (= (charsOf!3344 separatorToken!241) lt!1130641)))

(declare-fun b_lambda!93907 () Bool)

(assert (=> (not b_lambda!93907) (not d!935636)))

(assert (=> d!935636 t!256762))

(declare-fun b_and!229351 () Bool)

(assert (= b_and!229345 (and (=> t!256762 result!217290) b_and!229351)))

(assert (=> d!935636 t!256764))

(declare-fun b_and!229353 () Bool)

(assert (= b_and!229347 (and (=> t!256764 result!217294) b_and!229353)))

(assert (=> d!935636 t!256766))

(declare-fun b_and!229355 () Bool)

(assert (= b_and!229349 (and (=> t!256766 result!217296) b_and!229355)))

(declare-fun m!3667721 () Bool)

(assert (=> d!935636 m!3667721))

(assert (=> d!935636 m!3667687))

(assert (=> b!3327185 d!935636))

(declare-fun d!935638 () Bool)

(declare-fun list!13201 (Conc!11035) List!36783)

(assert (=> d!935638 (= (list!13197 (charsOf!3344 separatorToken!241)) (list!13201 (c!565061 (charsOf!3344 separatorToken!241))))))

(declare-fun bs!550982 () Bool)

(assert (= bs!550982 d!935638))

(declare-fun m!3667723 () Bool)

(assert (=> bs!550982 m!3667723))

(assert (=> b!3327185 d!935638))

(declare-fun lt!1130644 () List!36783)

(declare-fun b!3327384 () Bool)

(declare-fun e!2069209 () Bool)

(assert (=> b!3327384 (= e!2069209 (or (not (= (list!13197 (charsOf!3344 separatorToken!241)) Nil!36659)) (= lt!1130644 lt!1130562)))))

(declare-fun b!3327381 () Bool)

(declare-fun e!2069208 () List!36783)

(assert (=> b!3327381 (= e!2069208 (list!13197 (charsOf!3344 separatorToken!241)))))

(declare-fun b!3327382 () Bool)

(assert (=> b!3327382 (= e!2069208 (Cons!36659 (h!42079 lt!1130562) (++!8907 (t!256740 lt!1130562) (list!13197 (charsOf!3344 separatorToken!241)))))))

(declare-fun d!935640 () Bool)

(assert (=> d!935640 e!2069209))

(declare-fun res!1349598 () Bool)

(assert (=> d!935640 (=> (not res!1349598) (not e!2069209))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5008 (List!36783) (InoxSet C!20364))

(assert (=> d!935640 (= res!1349598 (= (content!5008 lt!1130644) ((_ map or) (content!5008 lt!1130562) (content!5008 (list!13197 (charsOf!3344 separatorToken!241))))))))

(assert (=> d!935640 (= lt!1130644 e!2069208)))

(declare-fun c!565088 () Bool)

(assert (=> d!935640 (= c!565088 ((_ is Nil!36659) lt!1130562))))

(assert (=> d!935640 (= (++!8907 lt!1130562 (list!13197 (charsOf!3344 separatorToken!241))) lt!1130644)))

(declare-fun b!3327383 () Bool)

(declare-fun res!1349599 () Bool)

(assert (=> b!3327383 (=> (not res!1349599) (not e!2069209))))

(assert (=> b!3327383 (= res!1349599 (= (size!27713 lt!1130644) (+ (size!27713 lt!1130562) (size!27713 (list!13197 (charsOf!3344 separatorToken!241))))))))

(assert (= (and d!935640 c!565088) b!3327381))

(assert (= (and d!935640 (not c!565088)) b!3327382))

(assert (= (and d!935640 res!1349598) b!3327383))

(assert (= (and b!3327383 res!1349599) b!3327384))

(assert (=> b!3327382 m!3667433))

(declare-fun m!3667725 () Bool)

(assert (=> b!3327382 m!3667725))

(declare-fun m!3667727 () Bool)

(assert (=> d!935640 m!3667727))

(declare-fun m!3667729 () Bool)

(assert (=> d!935640 m!3667729))

(assert (=> d!935640 m!3667433))

(declare-fun m!3667731 () Bool)

(assert (=> d!935640 m!3667731))

(declare-fun m!3667733 () Bool)

(assert (=> b!3327383 m!3667733))

(declare-fun m!3667735 () Bool)

(assert (=> b!3327383 m!3667735))

(assert (=> b!3327383 m!3667433))

(declare-fun m!3667737 () Bool)

(assert (=> b!3327383 m!3667737))

(assert (=> b!3327185 d!935640))

(declare-fun d!935642 () Bool)

(assert (=> d!935642 (= (list!13197 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241)) (list!13201 (c!565061 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241))))))

(declare-fun bs!550983 () Bool)

(assert (= bs!550983 d!935642))

(declare-fun m!3667739 () Bool)

(assert (=> bs!550983 m!3667739))

(assert (=> b!3327185 d!935642))

(declare-fun lt!1130648 () Bool)

(declare-fun d!935644 () Bool)

(declare-fun isEmpty!20825 (List!36784) Bool)

(assert (=> d!935644 (= lt!1130648 (isEmpty!20825 (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))))))

(declare-fun isEmpty!20826 (Conc!11036) Bool)

(assert (=> d!935644 (= lt!1130648 (isEmpty!20826 (c!565062 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))))))

(assert (=> d!935644 (= (isEmpty!20821 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562)))) lt!1130648)))

(declare-fun bs!550984 () Bool)

(assert (= bs!550984 d!935644))

(declare-fun m!3667741 () Bool)

(assert (=> bs!550984 m!3667741))

(assert (=> bs!550984 m!3667741))

(declare-fun m!3667743 () Bool)

(assert (=> bs!550984 m!3667743))

(declare-fun m!3667745 () Bool)

(assert (=> bs!550984 m!3667745))

(assert (=> b!3327196 d!935644))

(declare-fun b!3327411 () Bool)

(declare-fun e!2069227 () Bool)

(declare-fun lt!1130651 () tuple2!36158)

(assert (=> b!3327411 (= e!2069227 (= (_2!21213 lt!1130651) (seqFromList!3714 lt!1130562)))))

(declare-fun b!3327412 () Bool)

(declare-fun res!1349608 () Bool)

(declare-fun e!2069228 () Bool)

(assert (=> b!3327412 (=> (not res!1349608) (not e!2069228))))

(declare-datatypes ((tuple2!36162 0))(
  ( (tuple2!36163 (_1!21215 List!36784) (_2!21215 List!36783)) )
))
(declare-fun lexList!1376 (LexerInterface!4919 List!36785 List!36783) tuple2!36162)

(assert (=> b!3327412 (= res!1349608 (= (list!13200 (_1!21213 lt!1130651)) (_1!21215 (lexList!1376 thiss!18206 rules!2135 (list!13197 (seqFromList!3714 lt!1130562))))))))

(declare-fun b!3327413 () Bool)

(declare-fun e!2069226 () Bool)

(assert (=> b!3327413 (= e!2069227 e!2069226)))

(declare-fun res!1349609 () Bool)

(declare-fun size!27714 (BalanceConc!21684) Int)

(assert (=> b!3327413 (= res!1349609 (< (size!27714 (_2!21213 lt!1130651)) (size!27714 (seqFromList!3714 lt!1130562))))))

(assert (=> b!3327413 (=> (not res!1349609) (not e!2069226))))

(declare-fun b!3327414 () Bool)

(assert (=> b!3327414 (= e!2069226 (not (isEmpty!20821 (_1!21213 lt!1130651))))))

(declare-fun d!935646 () Bool)

(assert (=> d!935646 e!2069228))

(declare-fun res!1349607 () Bool)

(assert (=> d!935646 (=> (not res!1349607) (not e!2069228))))

(assert (=> d!935646 (= res!1349607 e!2069227)))

(declare-fun c!565091 () Bool)

(declare-fun size!27715 (BalanceConc!21686) Int)

(assert (=> d!935646 (= c!565091 (> (size!27715 (_1!21213 lt!1130651)) 0))))

(declare-fun lexTailRecV2!986 (LexerInterface!4919 List!36785 BalanceConc!21684 BalanceConc!21684 BalanceConc!21684 BalanceConc!21686) tuple2!36158)

(assert (=> d!935646 (= lt!1130651 (lexTailRecV2!986 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562) (BalanceConc!21685 Empty!11035) (seqFromList!3714 lt!1130562) (BalanceConc!21687 Empty!11036)))))

(assert (=> d!935646 (= (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562)) lt!1130651)))

(declare-fun b!3327415 () Bool)

(assert (=> b!3327415 (= e!2069228 (= (list!13197 (_2!21213 lt!1130651)) (_2!21215 (lexList!1376 thiss!18206 rules!2135 (list!13197 (seqFromList!3714 lt!1130562))))))))

(assert (= (and d!935646 c!565091) b!3327413))

(assert (= (and d!935646 (not c!565091)) b!3327411))

(assert (= (and b!3327413 res!1349609) b!3327414))

(assert (= (and d!935646 res!1349607) b!3327412))

(assert (= (and b!3327412 res!1349608) b!3327415))

(declare-fun m!3667755 () Bool)

(assert (=> b!3327414 m!3667755))

(declare-fun m!3667757 () Bool)

(assert (=> b!3327415 m!3667757))

(assert (=> b!3327415 m!3667407))

(declare-fun m!3667759 () Bool)

(assert (=> b!3327415 m!3667759))

(assert (=> b!3327415 m!3667759))

(declare-fun m!3667761 () Bool)

(assert (=> b!3327415 m!3667761))

(declare-fun m!3667763 () Bool)

(assert (=> d!935646 m!3667763))

(assert (=> d!935646 m!3667407))

(assert (=> d!935646 m!3667407))

(declare-fun m!3667765 () Bool)

(assert (=> d!935646 m!3667765))

(declare-fun m!3667767 () Bool)

(assert (=> b!3327412 m!3667767))

(assert (=> b!3327412 m!3667407))

(assert (=> b!3327412 m!3667759))

(assert (=> b!3327412 m!3667759))

(assert (=> b!3327412 m!3667761))

(declare-fun m!3667769 () Bool)

(assert (=> b!3327413 m!3667769))

(assert (=> b!3327413 m!3667407))

(declare-fun m!3667771 () Bool)

(assert (=> b!3327413 m!3667771))

(assert (=> b!3327196 d!935646))

(declare-fun d!935652 () Bool)

(declare-fun fromListB!1643 (List!36783) BalanceConc!21684)

(assert (=> d!935652 (= (seqFromList!3714 lt!1130562) (fromListB!1643 lt!1130562))))

(declare-fun bs!550987 () Bool)

(assert (= bs!550987 d!935652))

(declare-fun m!3667773 () Bool)

(assert (=> bs!550987 m!3667773))

(assert (=> b!3327196 d!935652))

(declare-fun d!935654 () Bool)

(declare-fun res!1349618 () Bool)

(declare-fun e!2069237 () Bool)

(assert (=> d!935654 (=> res!1349618 e!2069237)))

(assert (=> d!935654 (= res!1349618 (not ((_ is Cons!36661) rules!2135)))))

(assert (=> d!935654 (= (sepAndNonSepRulesDisjointChars!1524 rules!2135 rules!2135) e!2069237)))

(declare-fun b!3327424 () Bool)

(declare-fun e!2069238 () Bool)

(assert (=> b!3327424 (= e!2069237 e!2069238)))

(declare-fun res!1349619 () Bool)

(assert (=> b!3327424 (=> (not res!1349619) (not e!2069238))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!649 (Rule!10460 List!36785) Bool)

(assert (=> b!3327424 (= res!1349619 (ruleDisjointCharsFromAllFromOtherType!649 (h!42081 rules!2135) rules!2135))))

(declare-fun b!3327425 () Bool)

(assert (=> b!3327425 (= e!2069238 (sepAndNonSepRulesDisjointChars!1524 rules!2135 (t!256742 rules!2135)))))

(assert (= (and d!935654 (not res!1349618)) b!3327424))

(assert (= (and b!3327424 res!1349619) b!3327425))

(declare-fun m!3667775 () Bool)

(assert (=> b!3327424 m!3667775))

(declare-fun m!3667777 () Bool)

(assert (=> b!3327425 m!3667777))

(assert (=> b!3327197 d!935654))

(declare-fun d!935656 () Bool)

(declare-fun lt!1130660 () Bool)

(declare-fun e!2069294 () Bool)

(assert (=> d!935656 (= lt!1130660 e!2069294)))

(declare-fun res!1349635 () Bool)

(assert (=> d!935656 (=> (not res!1349635) (not e!2069294))))

(assert (=> d!935656 (= res!1349635 (= (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)))))) (list!13200 (singletonSeq!2426 (h!42080 tokens!494)))))))

(declare-fun e!2069293 () Bool)

(assert (=> d!935656 (= lt!1130660 e!2069293)))

(declare-fun res!1349634 () Bool)

(assert (=> d!935656 (=> (not res!1349634) (not e!2069293))))

(declare-fun lt!1130659 () tuple2!36158)

(assert (=> d!935656 (= res!1349634 (= (size!27715 (_1!21213 lt!1130659)) 1))))

(assert (=> d!935656 (= lt!1130659 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)))))))

(assert (=> d!935656 (not (isEmpty!20820 rules!2135))))

(assert (=> d!935656 (= (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 (h!42080 tokens!494)) lt!1130660)))

(declare-fun b!3327496 () Bool)

(declare-fun res!1349636 () Bool)

(assert (=> b!3327496 (=> (not res!1349636) (not e!2069293))))

(declare-fun apply!8464 (BalanceConc!21686 Int) Token!10026)

(assert (=> b!3327496 (= res!1349636 (= (apply!8464 (_1!21213 lt!1130659) 0) (h!42080 tokens!494)))))

(declare-fun b!3327497 () Bool)

(declare-fun isEmpty!20827 (BalanceConc!21684) Bool)

(assert (=> b!3327497 (= e!2069293 (isEmpty!20827 (_2!21213 lt!1130659)))))

(declare-fun b!3327498 () Bool)

(assert (=> b!3327498 (= e!2069294 (isEmpty!20827 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)))))))))

(assert (= (and d!935656 res!1349634) b!3327496))

(assert (= (and b!3327496 res!1349636) b!3327497))

(assert (= (and d!935656 res!1349635) b!3327498))

(declare-fun m!3667797 () Bool)

(assert (=> d!935656 m!3667797))

(assert (=> d!935656 m!3667417))

(declare-fun m!3667799 () Bool)

(assert (=> d!935656 m!3667799))

(assert (=> d!935656 m!3667417))

(declare-fun m!3667801 () Bool)

(assert (=> d!935656 m!3667801))

(assert (=> d!935656 m!3667379))

(assert (=> d!935656 m!3667417))

(declare-fun m!3667803 () Bool)

(assert (=> d!935656 m!3667803))

(assert (=> d!935656 m!3667799))

(declare-fun m!3667805 () Bool)

(assert (=> d!935656 m!3667805))

(declare-fun m!3667807 () Bool)

(assert (=> b!3327496 m!3667807))

(declare-fun m!3667809 () Bool)

(assert (=> b!3327497 m!3667809))

(assert (=> b!3327498 m!3667417))

(assert (=> b!3327498 m!3667417))

(assert (=> b!3327498 m!3667799))

(assert (=> b!3327498 m!3667799))

(assert (=> b!3327498 m!3667805))

(declare-fun m!3667811 () Bool)

(assert (=> b!3327498 m!3667811))

(assert (=> b!3327186 d!935656))

(declare-fun d!935662 () Bool)

(assert (=> d!935662 (= (isEmpty!20820 rules!2135) ((_ is Nil!36661) rules!2135))))

(assert (=> b!3327187 d!935662))

(declare-fun d!935664 () Bool)

(assert (=> d!935664 (= (list!13197 lt!1130561) (list!13201 (c!565061 lt!1130561)))))

(declare-fun bs!550991 () Bool)

(assert (= bs!550991 d!935664))

(declare-fun m!3667813 () Bool)

(assert (=> bs!550991 m!3667813))

(assert (=> b!3327198 d!935664))

(declare-fun d!935666 () Bool)

(declare-fun lt!1130663 () BalanceConc!21684)

(assert (=> d!935666 (= (list!13197 lt!1130663) (printList!1467 thiss!18206 (list!13200 lt!1130560)))))

(assert (=> d!935666 (= lt!1130663 (printTailRec!1414 thiss!18206 lt!1130560 0 (BalanceConc!21685 Empty!11035)))))

(assert (=> d!935666 (= (print!1984 thiss!18206 lt!1130560) lt!1130663)))

(declare-fun bs!550992 () Bool)

(assert (= bs!550992 d!935666))

(declare-fun m!3667815 () Bool)

(assert (=> bs!550992 m!3667815))

(declare-fun m!3667817 () Bool)

(assert (=> bs!550992 m!3667817))

(assert (=> bs!550992 m!3667817))

(declare-fun m!3667819 () Bool)

(assert (=> bs!550992 m!3667819))

(assert (=> bs!550992 m!3667415))

(assert (=> b!3327198 d!935666))

(declare-fun d!935668 () Bool)

(declare-fun lt!1130678 () BalanceConc!21684)

(declare-fun printListTailRec!618 (LexerInterface!4919 List!36784 List!36783) List!36783)

(declare-fun dropList!1135 (BalanceConc!21686 Int) List!36784)

(assert (=> d!935668 (= (list!13197 lt!1130678) (printListTailRec!618 thiss!18206 (dropList!1135 lt!1130560 0) (list!13197 (BalanceConc!21685 Empty!11035))))))

(declare-fun e!2069300 () BalanceConc!21684)

(assert (=> d!935668 (= lt!1130678 e!2069300)))

(declare-fun c!565094 () Bool)

(assert (=> d!935668 (= c!565094 (>= 0 (size!27715 lt!1130560)))))

(declare-fun e!2069299 () Bool)

(assert (=> d!935668 e!2069299))

(declare-fun res!1349639 () Bool)

(assert (=> d!935668 (=> (not res!1349639) (not e!2069299))))

(assert (=> d!935668 (= res!1349639 (>= 0 0))))

(assert (=> d!935668 (= (printTailRec!1414 thiss!18206 lt!1130560 0 (BalanceConc!21685 Empty!11035)) lt!1130678)))

(declare-fun b!3327505 () Bool)

(assert (=> b!3327505 (= e!2069299 (<= 0 (size!27715 lt!1130560)))))

(declare-fun b!3327506 () Bool)

(assert (=> b!3327506 (= e!2069300 (BalanceConc!21685 Empty!11035))))

(declare-fun b!3327507 () Bool)

(declare-fun ++!8909 (BalanceConc!21684 BalanceConc!21684) BalanceConc!21684)

(assert (=> b!3327507 (= e!2069300 (printTailRec!1414 thiss!18206 lt!1130560 (+ 0 1) (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (apply!8464 lt!1130560 0)))))))

(declare-fun lt!1130679 () List!36784)

(assert (=> b!3327507 (= lt!1130679 (list!13200 lt!1130560))))

(declare-fun lt!1130684 () Unit!51672)

(declare-fun lemmaDropApply!1093 (List!36784 Int) Unit!51672)

(assert (=> b!3327507 (= lt!1130684 (lemmaDropApply!1093 lt!1130679 0))))

(declare-fun head!7159 (List!36784) Token!10026)

(declare-fun drop!1927 (List!36784 Int) List!36784)

(declare-fun apply!8465 (List!36784 Int) Token!10026)

(assert (=> b!3327507 (= (head!7159 (drop!1927 lt!1130679 0)) (apply!8465 lt!1130679 0))))

(declare-fun lt!1130682 () Unit!51672)

(assert (=> b!3327507 (= lt!1130682 lt!1130684)))

(declare-fun lt!1130680 () List!36784)

(assert (=> b!3327507 (= lt!1130680 (list!13200 lt!1130560))))

(declare-fun lt!1130681 () Unit!51672)

(declare-fun lemmaDropTail!977 (List!36784 Int) Unit!51672)

(assert (=> b!3327507 (= lt!1130681 (lemmaDropTail!977 lt!1130680 0))))

(declare-fun tail!5296 (List!36784) List!36784)

(assert (=> b!3327507 (= (tail!5296 (drop!1927 lt!1130680 0)) (drop!1927 lt!1130680 (+ 0 1)))))

(declare-fun lt!1130683 () Unit!51672)

(assert (=> b!3327507 (= lt!1130683 lt!1130681)))

(assert (= (and d!935668 res!1349639) b!3327505))

(assert (= (and d!935668 c!565094) b!3327506))

(assert (= (and d!935668 (not c!565094)) b!3327507))

(declare-fun m!3667821 () Bool)

(assert (=> d!935668 m!3667821))

(declare-fun m!3667823 () Bool)

(assert (=> d!935668 m!3667823))

(declare-fun m!3667825 () Bool)

(assert (=> d!935668 m!3667825))

(declare-fun m!3667827 () Bool)

(assert (=> d!935668 m!3667827))

(assert (=> d!935668 m!3667827))

(assert (=> d!935668 m!3667823))

(declare-fun m!3667829 () Bool)

(assert (=> d!935668 m!3667829))

(assert (=> b!3327505 m!3667825))

(declare-fun m!3667831 () Bool)

(assert (=> b!3327507 m!3667831))

(declare-fun m!3667833 () Bool)

(assert (=> b!3327507 m!3667833))

(declare-fun m!3667835 () Bool)

(assert (=> b!3327507 m!3667835))

(declare-fun m!3667837 () Bool)

(assert (=> b!3327507 m!3667837))

(declare-fun m!3667839 () Bool)

(assert (=> b!3327507 m!3667839))

(declare-fun m!3667841 () Bool)

(assert (=> b!3327507 m!3667841))

(assert (=> b!3327507 m!3667817))

(assert (=> b!3327507 m!3667831))

(declare-fun m!3667843 () Bool)

(assert (=> b!3327507 m!3667843))

(declare-fun m!3667845 () Bool)

(assert (=> b!3327507 m!3667845))

(declare-fun m!3667847 () Bool)

(assert (=> b!3327507 m!3667847))

(assert (=> b!3327507 m!3667839))

(declare-fun m!3667849 () Bool)

(assert (=> b!3327507 m!3667849))

(assert (=> b!3327507 m!3667847))

(assert (=> b!3327507 m!3667833))

(declare-fun m!3667851 () Bool)

(assert (=> b!3327507 m!3667851))

(assert (=> b!3327507 m!3667849))

(declare-fun m!3667853 () Bool)

(assert (=> b!3327507 m!3667853))

(assert (=> b!3327198 d!935668))

(declare-fun d!935670 () Bool)

(declare-fun e!2069303 () Bool)

(assert (=> d!935670 e!2069303))

(declare-fun res!1349642 () Bool)

(assert (=> d!935670 (=> (not res!1349642) (not e!2069303))))

(declare-fun lt!1130687 () BalanceConc!21686)

(assert (=> d!935670 (= res!1349642 (= (list!13200 lt!1130687) (Cons!36660 (h!42080 tokens!494) Nil!36660)))))

(declare-fun singleton!1050 (Token!10026) BalanceConc!21686)

(assert (=> d!935670 (= lt!1130687 (singleton!1050 (h!42080 tokens!494)))))

(assert (=> d!935670 (= (singletonSeq!2426 (h!42080 tokens!494)) lt!1130687)))

(declare-fun b!3327510 () Bool)

(declare-fun isBalanced!3311 (Conc!11036) Bool)

(assert (=> b!3327510 (= e!2069303 (isBalanced!3311 (c!565062 lt!1130687)))))

(assert (= (and d!935670 res!1349642) b!3327510))

(declare-fun m!3667855 () Bool)

(assert (=> d!935670 m!3667855))

(declare-fun m!3667857 () Bool)

(assert (=> d!935670 m!3667857))

(declare-fun m!3667859 () Bool)

(assert (=> b!3327510 m!3667859))

(assert (=> b!3327198 d!935670))

(declare-fun d!935672 () Bool)

(declare-fun c!565097 () Bool)

(assert (=> d!935672 (= c!565097 ((_ is Cons!36660) (Cons!36660 (h!42080 tokens!494) Nil!36660)))))

(declare-fun e!2069306 () List!36783)

(assert (=> d!935672 (= (printList!1467 thiss!18206 (Cons!36660 (h!42080 tokens!494) Nil!36660)) e!2069306)))

(declare-fun b!3327515 () Bool)

(assert (=> b!3327515 (= e!2069306 (++!8907 (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))) (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))))

(declare-fun b!3327516 () Bool)

(assert (=> b!3327516 (= e!2069306 Nil!36659)))

(assert (= (and d!935672 c!565097) b!3327515))

(assert (= (and d!935672 (not c!565097)) b!3327516))

(declare-fun m!3667861 () Bool)

(assert (=> b!3327515 m!3667861))

(assert (=> b!3327515 m!3667861))

(declare-fun m!3667863 () Bool)

(assert (=> b!3327515 m!3667863))

(declare-fun m!3667865 () Bool)

(assert (=> b!3327515 m!3667865))

(assert (=> b!3327515 m!3667863))

(assert (=> b!3327515 m!3667865))

(declare-fun m!3667867 () Bool)

(assert (=> b!3327515 m!3667867))

(assert (=> b!3327198 d!935672))

(declare-fun d!935674 () Bool)

(declare-fun res!1349645 () Bool)

(declare-fun e!2069309 () Bool)

(assert (=> d!935674 (=> (not res!1349645) (not e!2069309))))

(declare-fun rulesValid!1973 (LexerInterface!4919 List!36785) Bool)

(assert (=> d!935674 (= res!1349645 (rulesValid!1973 thiss!18206 rules!2135))))

(assert (=> d!935674 (= (rulesInvariant!4316 thiss!18206 rules!2135) e!2069309)))

(declare-fun b!3327519 () Bool)

(declare-datatypes ((List!36787 0))(
  ( (Nil!36663) (Cons!36663 (h!42083 String!41134) (t!256800 List!36787)) )
))
(declare-fun noDuplicateTag!1969 (LexerInterface!4919 List!36785 List!36787) Bool)

(assert (=> b!3327519 (= e!2069309 (noDuplicateTag!1969 thiss!18206 rules!2135 Nil!36663))))

(assert (= (and d!935674 res!1349645) b!3327519))

(declare-fun m!3667869 () Bool)

(assert (=> d!935674 m!3667869))

(declare-fun m!3667871 () Bool)

(assert (=> b!3327519 m!3667871))

(assert (=> b!3327199 d!935674))

(declare-fun d!935676 () Bool)

(assert (=> d!935676 (= (inv!49658 (tag!5882 (rule!7852 (h!42080 tokens!494)))) (= (mod (str.len (value!172364 (tag!5882 (rule!7852 (h!42080 tokens!494))))) 2) 0))))

(assert (=> b!3327189 d!935676))

(declare-fun d!935678 () Bool)

(declare-fun res!1349646 () Bool)

(declare-fun e!2069310 () Bool)

(assert (=> d!935678 (=> (not res!1349646) (not e!2069310))))

(assert (=> d!935678 (= res!1349646 (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494))))))))

(assert (=> d!935678 (= (inv!49661 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) e!2069310)))

(declare-fun b!3327520 () Bool)

(assert (=> b!3327520 (= e!2069310 (equivClasses!2112 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494))))))))

(assert (= (and d!935678 res!1349646) b!3327520))

(declare-fun m!3667873 () Bool)

(assert (=> d!935678 m!3667873))

(declare-fun m!3667875 () Bool)

(assert (=> b!3327520 m!3667875))

(assert (=> b!3327189 d!935678))

(declare-fun d!935680 () Bool)

(assert (=> d!935680 (= (inv!49658 (tag!5882 (rule!7852 separatorToken!241))) (= (mod (str.len (value!172364 (tag!5882 (rule!7852 separatorToken!241)))) 2) 0))))

(assert (=> b!3327179 d!935680))

(declare-fun d!935682 () Bool)

(declare-fun res!1349647 () Bool)

(declare-fun e!2069311 () Bool)

(assert (=> d!935682 (=> (not res!1349647) (not e!2069311))))

(assert (=> d!935682 (= res!1349647 (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))))))

(assert (=> d!935682 (= (inv!49661 (transformation!5330 (rule!7852 separatorToken!241))) e!2069311)))

(declare-fun b!3327521 () Bool)

(assert (=> b!3327521 (= e!2069311 (equivClasses!2112 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))))))

(assert (= (and d!935682 res!1349647) b!3327521))

(declare-fun m!3667877 () Bool)

(assert (=> d!935682 m!3667877))

(declare-fun m!3667879 () Bool)

(assert (=> b!3327521 m!3667879))

(assert (=> b!3327179 d!935682))

(declare-fun b!3327532 () Bool)

(declare-fun e!2069318 () Bool)

(declare-fun e!2069320 () Bool)

(assert (=> b!3327532 (= e!2069318 e!2069320)))

(declare-fun c!565102 () Bool)

(assert (=> b!3327532 (= c!565102 ((_ is IntegerValue!16681) (value!172365 separatorToken!241)))))

(declare-fun d!935684 () Bool)

(declare-fun c!565103 () Bool)

(assert (=> d!935684 (= c!565103 ((_ is IntegerValue!16680) (value!172365 separatorToken!241)))))

(assert (=> d!935684 (= (inv!21 (value!172365 separatorToken!241)) e!2069318)))

(declare-fun b!3327533 () Bool)

(declare-fun e!2069319 () Bool)

(declare-fun inv!15 (TokenValue!5560) Bool)

(assert (=> b!3327533 (= e!2069319 (inv!15 (value!172365 separatorToken!241)))))

(declare-fun b!3327534 () Bool)

(declare-fun inv!16 (TokenValue!5560) Bool)

(assert (=> b!3327534 (= e!2069318 (inv!16 (value!172365 separatorToken!241)))))

(declare-fun b!3327535 () Bool)

(declare-fun inv!17 (TokenValue!5560) Bool)

(assert (=> b!3327535 (= e!2069320 (inv!17 (value!172365 separatorToken!241)))))

(declare-fun b!3327536 () Bool)

(declare-fun res!1349650 () Bool)

(assert (=> b!3327536 (=> res!1349650 e!2069319)))

(assert (=> b!3327536 (= res!1349650 (not ((_ is IntegerValue!16682) (value!172365 separatorToken!241))))))

(assert (=> b!3327536 (= e!2069320 e!2069319)))

(assert (= (and d!935684 c!565103) b!3327534))

(assert (= (and d!935684 (not c!565103)) b!3327532))

(assert (= (and b!3327532 c!565102) b!3327535))

(assert (= (and b!3327532 (not c!565102)) b!3327536))

(assert (= (and b!3327536 (not res!1349650)) b!3327533))

(declare-fun m!3667881 () Bool)

(assert (=> b!3327533 m!3667881))

(declare-fun m!3667883 () Bool)

(assert (=> b!3327534 m!3667883))

(declare-fun m!3667885 () Bool)

(assert (=> b!3327535 m!3667885))

(assert (=> b!3327200 d!935684))

(declare-fun d!935686 () Bool)

(declare-fun lt!1130689 () Bool)

(declare-fun e!2069322 () Bool)

(assert (=> d!935686 (= lt!1130689 e!2069322)))

(declare-fun res!1349652 () Bool)

(assert (=> d!935686 (=> (not res!1349652) (not e!2069322))))

(assert (=> d!935686 (= res!1349652 (= (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241))))) (list!13200 (singletonSeq!2426 separatorToken!241))))))

(declare-fun e!2069321 () Bool)

(assert (=> d!935686 (= lt!1130689 e!2069321)))

(declare-fun res!1349651 () Bool)

(assert (=> d!935686 (=> (not res!1349651) (not e!2069321))))

(declare-fun lt!1130688 () tuple2!36158)

(assert (=> d!935686 (= res!1349651 (= (size!27715 (_1!21213 lt!1130688)) 1))))

(assert (=> d!935686 (= lt!1130688 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241))))))

(assert (=> d!935686 (not (isEmpty!20820 rules!2135))))

(assert (=> d!935686 (= (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 separatorToken!241) lt!1130689)))

(declare-fun b!3327537 () Bool)

(declare-fun res!1349653 () Bool)

(assert (=> b!3327537 (=> (not res!1349653) (not e!2069321))))

(assert (=> b!3327537 (= res!1349653 (= (apply!8464 (_1!21213 lt!1130688) 0) separatorToken!241))))

(declare-fun b!3327538 () Bool)

(assert (=> b!3327538 (= e!2069321 (isEmpty!20827 (_2!21213 lt!1130688)))))

(declare-fun b!3327539 () Bool)

(assert (=> b!3327539 (= e!2069322 (isEmpty!20827 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241))))))))

(assert (= (and d!935686 res!1349651) b!3327537))

(assert (= (and b!3327537 res!1349653) b!3327538))

(assert (= (and d!935686 res!1349652) b!3327539))

(declare-fun m!3667887 () Bool)

(assert (=> d!935686 m!3667887))

(declare-fun m!3667889 () Bool)

(assert (=> d!935686 m!3667889))

(declare-fun m!3667891 () Bool)

(assert (=> d!935686 m!3667891))

(assert (=> d!935686 m!3667889))

(declare-fun m!3667893 () Bool)

(assert (=> d!935686 m!3667893))

(assert (=> d!935686 m!3667379))

(assert (=> d!935686 m!3667889))

(declare-fun m!3667895 () Bool)

(assert (=> d!935686 m!3667895))

(assert (=> d!935686 m!3667891))

(declare-fun m!3667897 () Bool)

(assert (=> d!935686 m!3667897))

(declare-fun m!3667899 () Bool)

(assert (=> b!3327537 m!3667899))

(declare-fun m!3667901 () Bool)

(assert (=> b!3327538 m!3667901))

(assert (=> b!3327539 m!3667889))

(assert (=> b!3327539 m!3667889))

(assert (=> b!3327539 m!3667891))

(assert (=> b!3327539 m!3667891))

(assert (=> b!3327539 m!3667897))

(declare-fun m!3667903 () Bool)

(assert (=> b!3327539 m!3667903))

(assert (=> b!3327201 d!935686))

(declare-fun b!3327540 () Bool)

(declare-fun e!2069323 () Bool)

(declare-fun e!2069325 () Bool)

(assert (=> b!3327540 (= e!2069323 e!2069325)))

(declare-fun c!565104 () Bool)

(assert (=> b!3327540 (= c!565104 ((_ is IntegerValue!16681) (value!172365 (h!42080 tokens!494))))))

(declare-fun d!935688 () Bool)

(declare-fun c!565105 () Bool)

(assert (=> d!935688 (= c!565105 ((_ is IntegerValue!16680) (value!172365 (h!42080 tokens!494))))))

(assert (=> d!935688 (= (inv!21 (value!172365 (h!42080 tokens!494))) e!2069323)))

(declare-fun b!3327541 () Bool)

(declare-fun e!2069324 () Bool)

(assert (=> b!3327541 (= e!2069324 (inv!15 (value!172365 (h!42080 tokens!494))))))

(declare-fun b!3327542 () Bool)

(assert (=> b!3327542 (= e!2069323 (inv!16 (value!172365 (h!42080 tokens!494))))))

(declare-fun b!3327543 () Bool)

(assert (=> b!3327543 (= e!2069325 (inv!17 (value!172365 (h!42080 tokens!494))))))

(declare-fun b!3327544 () Bool)

(declare-fun res!1349654 () Bool)

(assert (=> b!3327544 (=> res!1349654 e!2069324)))

(assert (=> b!3327544 (= res!1349654 (not ((_ is IntegerValue!16682) (value!172365 (h!42080 tokens!494)))))))

(assert (=> b!3327544 (= e!2069325 e!2069324)))

(assert (= (and d!935688 c!565105) b!3327542))

(assert (= (and d!935688 (not c!565105)) b!3327540))

(assert (= (and b!3327540 c!565104) b!3327543))

(assert (= (and b!3327540 (not c!565104)) b!3327544))

(assert (= (and b!3327544 (not res!1349654)) b!3327541))

(declare-fun m!3667905 () Bool)

(assert (=> b!3327541 m!3667905))

(declare-fun m!3667907 () Bool)

(assert (=> b!3327542 m!3667907))

(declare-fun m!3667909 () Bool)

(assert (=> b!3327543 m!3667909))

(assert (=> b!3327180 d!935688))

(declare-fun d!935690 () Bool)

(declare-fun lt!1130692 () Bool)

(declare-fun content!5009 (List!36784) (InoxSet Token!10026))

(assert (=> d!935690 (= lt!1130692 (select (content!5009 tokens!494) (h!42080 tokens!494)))))

(declare-fun e!2069331 () Bool)

(assert (=> d!935690 (= lt!1130692 e!2069331)))

(declare-fun res!1349660 () Bool)

(assert (=> d!935690 (=> (not res!1349660) (not e!2069331))))

(assert (=> d!935690 (= res!1349660 ((_ is Cons!36660) tokens!494))))

(assert (=> d!935690 (= (contains!6645 tokens!494 (h!42080 tokens!494)) lt!1130692)))

(declare-fun b!3327549 () Bool)

(declare-fun e!2069330 () Bool)

(assert (=> b!3327549 (= e!2069331 e!2069330)))

(declare-fun res!1349659 () Bool)

(assert (=> b!3327549 (=> res!1349659 e!2069330)))

(assert (=> b!3327549 (= res!1349659 (= (h!42080 tokens!494) (h!42080 tokens!494)))))

(declare-fun b!3327550 () Bool)

(assert (=> b!3327550 (= e!2069330 (contains!6645 (t!256741 tokens!494) (h!42080 tokens!494)))))

(assert (= (and d!935690 res!1349660) b!3327549))

(assert (= (and b!3327549 (not res!1349659)) b!3327550))

(declare-fun m!3667911 () Bool)

(assert (=> d!935690 m!3667911))

(declare-fun m!3667913 () Bool)

(assert (=> d!935690 m!3667913))

(declare-fun m!3667915 () Bool)

(assert (=> b!3327550 m!3667915))

(assert (=> b!3327181 d!935690))

(declare-fun d!935692 () Bool)

(assert (=> d!935692 (= (isEmpty!20819 (getSuffix!1424 lt!1130562 lt!1130562)) ((_ is Nil!36659) (getSuffix!1424 lt!1130562 lt!1130562)))))

(assert (=> b!3327181 d!935692))

(declare-fun d!935694 () Bool)

(declare-fun lt!1130695 () List!36783)

(assert (=> d!935694 (= (++!8907 lt!1130562 lt!1130695) lt!1130562)))

(declare-fun e!2069334 () List!36783)

(assert (=> d!935694 (= lt!1130695 e!2069334)))

(declare-fun c!565108 () Bool)

(assert (=> d!935694 (= c!565108 ((_ is Cons!36659) lt!1130562))))

(assert (=> d!935694 (>= (size!27713 lt!1130562) (size!27713 lt!1130562))))

(assert (=> d!935694 (= (getSuffix!1424 lt!1130562 lt!1130562) lt!1130695)))

(declare-fun b!3327555 () Bool)

(declare-fun tail!5297 (List!36783) List!36783)

(assert (=> b!3327555 (= e!2069334 (getSuffix!1424 (tail!5297 lt!1130562) (t!256740 lt!1130562)))))

(declare-fun b!3327556 () Bool)

(assert (=> b!3327556 (= e!2069334 lt!1130562)))

(assert (= (and d!935694 c!565108) b!3327555))

(assert (= (and d!935694 (not c!565108)) b!3327556))

(declare-fun m!3667917 () Bool)

(assert (=> d!935694 m!3667917))

(assert (=> d!935694 m!3667735))

(assert (=> d!935694 m!3667735))

(declare-fun m!3667919 () Bool)

(assert (=> b!3327555 m!3667919))

(assert (=> b!3327555 m!3667919))

(declare-fun m!3667921 () Bool)

(assert (=> b!3327555 m!3667921))

(assert (=> b!3327181 d!935694))

(declare-fun d!935696 () Bool)

(assert (=> d!935696 (isEmpty!20819 (getSuffix!1424 lt!1130562 lt!1130562))))

(declare-fun lt!1130698 () Unit!51672)

(declare-fun choose!19277 (List!36783) Unit!51672)

(assert (=> d!935696 (= lt!1130698 (choose!19277 lt!1130562))))

(assert (=> d!935696 (= (lemmaGetSuffixOnListWithItSelfIsEmpty!82 lt!1130562) lt!1130698)))

(declare-fun bs!550993 () Bool)

(assert (= bs!550993 d!935696))

(assert (=> bs!550993 m!3667441))

(assert (=> bs!550993 m!3667441))

(assert (=> bs!550993 m!3667443))

(declare-fun m!3667923 () Bool)

(assert (=> bs!550993 m!3667923))

(assert (=> b!3327181 d!935696))

(declare-fun d!935698 () Bool)

(assert (=> d!935698 (= (list!13197 (charsOf!3344 (h!42080 tokens!494))) (list!13201 (c!565061 (charsOf!3344 (h!42080 tokens!494)))))))

(declare-fun bs!550994 () Bool)

(assert (= bs!550994 d!935698))

(declare-fun m!3667925 () Bool)

(assert (=> bs!550994 m!3667925))

(assert (=> b!3327202 d!935698))

(declare-fun d!935700 () Bool)

(declare-fun lt!1130699 () BalanceConc!21684)

(assert (=> d!935700 (= (list!13197 lt!1130699) (originalCharacters!6044 (h!42080 tokens!494)))))

(assert (=> d!935700 (= lt!1130699 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))))

(assert (=> d!935700 (= (charsOf!3344 (h!42080 tokens!494)) lt!1130699)))

(declare-fun b_lambda!93923 () Bool)

(assert (=> (not b_lambda!93923) (not d!935700)))

(assert (=> d!935700 t!256768))

(declare-fun b_and!229365 () Bool)

(assert (= b_and!229351 (and (=> t!256768 result!217298) b_and!229365)))

(assert (=> d!935700 t!256770))

(declare-fun b_and!229367 () Bool)

(assert (= b_and!229353 (and (=> t!256770 result!217300) b_and!229367)))

(assert (=> d!935700 t!256772))

(declare-fun b_and!229369 () Bool)

(assert (= b_and!229355 (and (=> t!256772 result!217302) b_and!229369)))

(declare-fun m!3667927 () Bool)

(assert (=> d!935700 m!3667927))

(assert (=> d!935700 m!3667699))

(assert (=> b!3327202 d!935700))

(declare-fun d!935702 () Bool)

(assert (=> d!935702 (dynLambda!15113 lambda!119701 (h!42080 tokens!494))))

(declare-fun lt!1130702 () Unit!51672)

(declare-fun choose!19278 (List!36784 Int Token!10026) Unit!51672)

(assert (=> d!935702 (= lt!1130702 (choose!19278 tokens!494 lambda!119701 (h!42080 tokens!494)))))

(declare-fun e!2069337 () Bool)

(assert (=> d!935702 e!2069337))

(declare-fun res!1349663 () Bool)

(assert (=> d!935702 (=> (not res!1349663) (not e!2069337))))

(assert (=> d!935702 (= res!1349663 (forall!7647 tokens!494 lambda!119701))))

(assert (=> d!935702 (= (forallContained!1277 tokens!494 lambda!119701 (h!42080 tokens!494)) lt!1130702)))

(declare-fun b!3327559 () Bool)

(assert (=> b!3327559 (= e!2069337 (contains!6645 tokens!494 (h!42080 tokens!494)))))

(assert (= (and d!935702 res!1349663) b!3327559))

(declare-fun b_lambda!93925 () Bool)

(assert (=> (not b_lambda!93925) (not d!935702)))

(assert (=> d!935702 m!3667483))

(declare-fun m!3667929 () Bool)

(assert (=> d!935702 m!3667929))

(assert (=> d!935702 m!3667393))

(assert (=> b!3327559 m!3667439))

(assert (=> b!3327203 d!935702))

(declare-fun b!3327572 () Bool)

(declare-fun e!2069340 () Bool)

(declare-fun tp!1040008 () Bool)

(assert (=> b!3327572 (= e!2069340 tp!1040008)))

(assert (=> b!3327183 (= tp!1039925 e!2069340)))

(declare-fun b!3327573 () Bool)

(declare-fun tp!1040005 () Bool)

(declare-fun tp!1040009 () Bool)

(assert (=> b!3327573 (= e!2069340 (and tp!1040005 tp!1040009))))

(declare-fun b!3327570 () Bool)

(declare-fun tp_is_empty!17417 () Bool)

(assert (=> b!3327570 (= e!2069340 tp_is_empty!17417)))

(declare-fun b!3327571 () Bool)

(declare-fun tp!1040007 () Bool)

(declare-fun tp!1040006 () Bool)

(assert (=> b!3327571 (= e!2069340 (and tp!1040007 tp!1040006))))

(assert (= (and b!3327183 ((_ is ElementMatch!10089) (regex!5330 (h!42081 rules!2135)))) b!3327570))

(assert (= (and b!3327183 ((_ is Concat!15649) (regex!5330 (h!42081 rules!2135)))) b!3327571))

(assert (= (and b!3327183 ((_ is Star!10089) (regex!5330 (h!42081 rules!2135)))) b!3327572))

(assert (= (and b!3327183 ((_ is Union!10089) (regex!5330 (h!42081 rules!2135)))) b!3327573))

(declare-fun b!3327587 () Bool)

(declare-fun b_free!87589 () Bool)

(declare-fun b_next!88293 () Bool)

(assert (=> b!3327587 (= b_free!87589 (not b_next!88293))))

(declare-fun tp!1040023 () Bool)

(declare-fun b_and!229371 () Bool)

(assert (=> b!3327587 (= tp!1040023 b_and!229371)))

(declare-fun b_free!87591 () Bool)

(declare-fun b_next!88295 () Bool)

(assert (=> b!3327587 (= b_free!87591 (not b_next!88295))))

(declare-fun t!256792 () Bool)

(declare-fun tb!174231 () Bool)

(assert (=> (and b!3327587 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) t!256792) tb!174231))

(declare-fun result!217324 () Bool)

(assert (= result!217324 result!217290))

(assert (=> b!3327357 t!256792))

(declare-fun t!256794 () Bool)

(declare-fun tb!174233 () Bool)

(assert (=> (and b!3327587 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) t!256794) tb!174233))

(declare-fun result!217326 () Bool)

(assert (= result!217326 result!217298))

(assert (=> b!3327364 t!256794))

(assert (=> d!935636 t!256792))

(assert (=> d!935700 t!256794))

(declare-fun tp!1040020 () Bool)

(declare-fun b_and!229373 () Bool)

(assert (=> b!3327587 (= tp!1040020 (and (=> t!256792 result!217324) (=> t!256794 result!217326) b_and!229373))))

(declare-fun b!3327586 () Bool)

(declare-fun e!2069357 () Bool)

(declare-fun tp!1040022 () Bool)

(declare-fun e!2069353 () Bool)

(assert (=> b!3327586 (= e!2069353 (and tp!1040022 (inv!49658 (tag!5882 (rule!7852 (h!42080 (t!256741 tokens!494))))) (inv!49661 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) e!2069357))))

(declare-fun tp!1040024 () Bool)

(declare-fun e!2069358 () Bool)

(declare-fun b!3327585 () Bool)

(assert (=> b!3327585 (= e!2069358 (and (inv!21 (value!172365 (h!42080 (t!256741 tokens!494)))) e!2069353 tp!1040024))))

(declare-fun e!2069354 () Bool)

(assert (=> b!3327204 (= tp!1039922 e!2069354)))

(declare-fun tp!1040021 () Bool)

(declare-fun b!3327584 () Bool)

(assert (=> b!3327584 (= e!2069354 (and (inv!49662 (h!42080 (t!256741 tokens!494))) e!2069358 tp!1040021))))

(assert (=> b!3327587 (= e!2069357 (and tp!1040023 tp!1040020))))

(assert (= b!3327586 b!3327587))

(assert (= b!3327585 b!3327586))

(assert (= b!3327584 b!3327585))

(assert (= (and b!3327204 ((_ is Cons!36660) (t!256741 tokens!494))) b!3327584))

(declare-fun m!3667931 () Bool)

(assert (=> b!3327586 m!3667931))

(declare-fun m!3667933 () Bool)

(assert (=> b!3327586 m!3667933))

(declare-fun m!3667935 () Bool)

(assert (=> b!3327585 m!3667935))

(declare-fun m!3667937 () Bool)

(assert (=> b!3327584 m!3667937))

(declare-fun b!3327590 () Bool)

(declare-fun e!2069359 () Bool)

(declare-fun tp!1040028 () Bool)

(assert (=> b!3327590 (= e!2069359 tp!1040028)))

(assert (=> b!3327189 (= tp!1039921 e!2069359)))

(declare-fun b!3327591 () Bool)

(declare-fun tp!1040025 () Bool)

(declare-fun tp!1040029 () Bool)

(assert (=> b!3327591 (= e!2069359 (and tp!1040025 tp!1040029))))

(declare-fun b!3327588 () Bool)

(assert (=> b!3327588 (= e!2069359 tp_is_empty!17417)))

(declare-fun b!3327589 () Bool)

(declare-fun tp!1040027 () Bool)

(declare-fun tp!1040026 () Bool)

(assert (=> b!3327589 (= e!2069359 (and tp!1040027 tp!1040026))))

(assert (= (and b!3327189 ((_ is ElementMatch!10089) (regex!5330 (rule!7852 (h!42080 tokens!494))))) b!3327588))

(assert (= (and b!3327189 ((_ is Concat!15649) (regex!5330 (rule!7852 (h!42080 tokens!494))))) b!3327589))

(assert (= (and b!3327189 ((_ is Star!10089) (regex!5330 (rule!7852 (h!42080 tokens!494))))) b!3327590))

(assert (= (and b!3327189 ((_ is Union!10089) (regex!5330 (rule!7852 (h!42080 tokens!494))))) b!3327591))

(declare-fun b!3327602 () Bool)

(declare-fun b_free!87593 () Bool)

(declare-fun b_next!88297 () Bool)

(assert (=> b!3327602 (= b_free!87593 (not b_next!88297))))

(declare-fun tp!1040041 () Bool)

(declare-fun b_and!229375 () Bool)

(assert (=> b!3327602 (= tp!1040041 b_and!229375)))

(declare-fun b_free!87595 () Bool)

(declare-fun b_next!88299 () Bool)

(assert (=> b!3327602 (= b_free!87595 (not b_next!88299))))

(declare-fun t!256796 () Bool)

(declare-fun tb!174235 () Bool)

(assert (=> (and b!3327602 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) t!256796) tb!174235))

(declare-fun result!217330 () Bool)

(assert (= result!217330 result!217290))

(assert (=> b!3327357 t!256796))

(declare-fun tb!174237 () Bool)

(declare-fun t!256798 () Bool)

(assert (=> (and b!3327602 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) t!256798) tb!174237))

(declare-fun result!217332 () Bool)

(assert (= result!217332 result!217298))

(assert (=> b!3327364 t!256798))

(assert (=> d!935636 t!256796))

(assert (=> d!935700 t!256798))

(declare-fun tp!1040040 () Bool)

(declare-fun b_and!229377 () Bool)

(assert (=> b!3327602 (= tp!1040040 (and (=> t!256796 result!217330) (=> t!256798 result!217332) b_and!229377))))

(declare-fun e!2069368 () Bool)

(assert (=> b!3327602 (= e!2069368 (and tp!1040041 tp!1040040))))

(declare-fun tp!1040039 () Bool)

(declare-fun e!2069369 () Bool)

(declare-fun b!3327601 () Bool)

(assert (=> b!3327601 (= e!2069369 (and tp!1040039 (inv!49658 (tag!5882 (h!42081 (t!256742 rules!2135)))) (inv!49661 (transformation!5330 (h!42081 (t!256742 rules!2135)))) e!2069368))))

(declare-fun b!3327600 () Bool)

(declare-fun e!2069371 () Bool)

(declare-fun tp!1040038 () Bool)

(assert (=> b!3327600 (= e!2069371 (and e!2069369 tp!1040038))))

(assert (=> b!3327195 (= tp!1039926 e!2069371)))

(assert (= b!3327601 b!3327602))

(assert (= b!3327600 b!3327601))

(assert (= (and b!3327195 ((_ is Cons!36661) (t!256742 rules!2135))) b!3327600))

(declare-fun m!3667939 () Bool)

(assert (=> b!3327601 m!3667939))

(declare-fun m!3667941 () Bool)

(assert (=> b!3327601 m!3667941))

(declare-fun b!3327605 () Bool)

(declare-fun e!2069372 () Bool)

(declare-fun tp!1040045 () Bool)

(assert (=> b!3327605 (= e!2069372 tp!1040045)))

(assert (=> b!3327179 (= tp!1039920 e!2069372)))

(declare-fun b!3327606 () Bool)

(declare-fun tp!1040042 () Bool)

(declare-fun tp!1040046 () Bool)

(assert (=> b!3327606 (= e!2069372 (and tp!1040042 tp!1040046))))

(declare-fun b!3327603 () Bool)

(assert (=> b!3327603 (= e!2069372 tp_is_empty!17417)))

(declare-fun b!3327604 () Bool)

(declare-fun tp!1040044 () Bool)

(declare-fun tp!1040043 () Bool)

(assert (=> b!3327604 (= e!2069372 (and tp!1040044 tp!1040043))))

(assert (= (and b!3327179 ((_ is ElementMatch!10089) (regex!5330 (rule!7852 separatorToken!241)))) b!3327603))

(assert (= (and b!3327179 ((_ is Concat!15649) (regex!5330 (rule!7852 separatorToken!241)))) b!3327604))

(assert (= (and b!3327179 ((_ is Star!10089) (regex!5330 (rule!7852 separatorToken!241)))) b!3327605))

(assert (= (and b!3327179 ((_ is Union!10089) (regex!5330 (rule!7852 separatorToken!241)))) b!3327606))

(declare-fun b!3327611 () Bool)

(declare-fun e!2069375 () Bool)

(declare-fun tp!1040049 () Bool)

(assert (=> b!3327611 (= e!2069375 (and tp_is_empty!17417 tp!1040049))))

(assert (=> b!3327200 (= tp!1039929 e!2069375)))

(assert (= (and b!3327200 ((_ is Cons!36659) (originalCharacters!6044 separatorToken!241))) b!3327611))

(declare-fun b!3327612 () Bool)

(declare-fun e!2069376 () Bool)

(declare-fun tp!1040050 () Bool)

(assert (=> b!3327612 (= e!2069376 (and tp_is_empty!17417 tp!1040050))))

(assert (=> b!3327180 (= tp!1039919 e!2069376)))

(assert (= (and b!3327180 ((_ is Cons!36659) (originalCharacters!6044 (h!42080 tokens!494)))) b!3327612))

(declare-fun b_lambda!93927 () Bool)

(assert (= b_lambda!93923 (or (and b!3327184 b_free!87571 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) (and b!3327192 b_free!87579) (and b!3327587 b_free!87591 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) (and b!3327602 b_free!87595 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) (and b!3327190 b_free!87575 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) b_lambda!93927)))

(declare-fun b_lambda!93929 () Bool)

(assert (= b_lambda!93905 (or (and b!3327184 b_free!87571 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) (and b!3327192 b_free!87579) (and b!3327587 b_free!87591 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) (and b!3327602 b_free!87595 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) (and b!3327190 b_free!87575 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) b_lambda!93929)))

(declare-fun b_lambda!93931 () Bool)

(assert (= b_lambda!93893 (or b!3327193 b_lambda!93931)))

(declare-fun bs!550995 () Bool)

(declare-fun d!935704 () Bool)

(assert (= bs!550995 (and d!935704 b!3327193)))

(assert (=> bs!550995 (= (dynLambda!15113 lambda!119701 (h!42080 tokens!494)) (not (isSeparator!5330 (rule!7852 (h!42080 tokens!494)))))))

(assert (=> b!3327245 d!935704))

(declare-fun b_lambda!93933 () Bool)

(assert (= b_lambda!93903 (or (and b!3327184 b_free!87571 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) (and b!3327192 b_free!87579 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) (and b!3327190 b_free!87575) (and b!3327587 b_free!87591 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) (and b!3327602 b_free!87595 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) b_lambda!93933)))

(declare-fun b_lambda!93935 () Bool)

(assert (= b_lambda!93925 (or b!3327193 b_lambda!93935)))

(assert (=> d!935702 d!935704))

(declare-fun b_lambda!93937 () Bool)

(assert (= b_lambda!93907 (or (and b!3327184 b_free!87571 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) (and b!3327192 b_free!87579 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) (and b!3327190 b_free!87575) (and b!3327587 b_free!87591 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) (and b!3327602 b_free!87595 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))))) b_lambda!93937)))

(check-sat b_and!229373 (not b!3327535) (not b!3327510) (not d!935698) (not d!935686) (not b!3327601) (not b!3327604) (not b_next!88295) (not b!3327612) (not b_next!88279) (not d!935682) (not b!3327585) (not b!3327584) (not b_next!88281) (not b!3327550) (not d!935696) (not b!3327515) (not b!3327358) (not b_lambda!93929) (not b!3327605) (not b!3327555) (not d!935628) (not d!935668) (not b!3327521) (not b!3327543) (not b!3327572) (not b_lambda!93937) (not b!3327586) (not b_lambda!93933) (not b!3327606) (not b!3327537) (not b!3327533) (not b!3327591) (not b!3327505) (not b!3327507) (not b_next!88277) (not b_lambda!93935) (not b!3327519) (not b_next!88299) (not tb!174217) b_and!229365 (not d!935636) (not b!3327573) (not d!935640) (not d!935674) (not b!3327498) b_and!229371 (not d!935670) b_and!229303 (not d!935702) (not d!935624) (not b!3327414) (not b!3327497) b_and!229307 (not d!935652) (not d!935694) (not b!3327365) (not d!935656) (not b!3327496) (not b!3327335) (not b!3327366) (not b!3327571) (not b!3327589) (not b!3327541) tp_is_empty!17417 (not tb!174211) (not b!3327352) (not b!3327413) (not b!3327370) (not b!3327538) (not b_lambda!93927) (not b!3327415) (not b!3327520) b_and!229367 (not d!935700) (not b!3327600) (not b!3327382) (not b_next!88297) (not b_next!88275) (not b!3327383) b_and!229377 (not b_next!88283) (not b!3327357) (not b!3327611) (not d!935678) (not b!3327345) (not b!3327542) (not d!935634) b_and!229311 (not b!3327363) (not b!3327412) (not b!3327559) (not d!935646) (not d!935630) (not b!3327369) (not d!935690) (not d!935638) (not b!3327425) (not b_next!88273) (not b!3327246) b_and!229369 (not b!3327534) (not d!935644) (not d!935632) (not b_next!88293) (not b!3327424) (not b!3327364) (not b!3327539) (not d!935666) (not d!935664) (not d!935566) (not b!3327590) (not d!935642) b_and!229375 (not b!3327336) (not b_lambda!93931) (not d!935626))
(check-sat b_and!229373 (not b_next!88281) (not b_next!88277) (not b_next!88299) b_and!229365 b_and!229307 b_and!229367 b_and!229311 (not b_next!88293) b_and!229375 (not b_next!88295) (not b_next!88279) b_and!229371 b_and!229303 (not b_next!88297) (not b_next!88275) b_and!229377 (not b_next!88283) (not b_next!88273) b_and!229369)
(get-model)

(declare-fun d!935720 () Bool)

(declare-fun c!565119 () Bool)

(assert (=> d!935720 (= c!565119 ((_ is Node!11035) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))))))

(declare-fun e!2069400 () Bool)

(assert (=> d!935720 (= (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))) e!2069400)))

(declare-fun b!3327648 () Bool)

(declare-fun inv!49667 (Conc!11035) Bool)

(assert (=> b!3327648 (= e!2069400 (inv!49667 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))))))

(declare-fun b!3327649 () Bool)

(declare-fun e!2069401 () Bool)

(assert (=> b!3327649 (= e!2069400 e!2069401)))

(declare-fun res!1349680 () Bool)

(assert (=> b!3327649 (= res!1349680 (not ((_ is Leaf!17311) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))))))))

(assert (=> b!3327649 (=> res!1349680 e!2069401)))

(declare-fun b!3327650 () Bool)

(declare-fun inv!49668 (Conc!11035) Bool)

(assert (=> b!3327650 (= e!2069401 (inv!49668 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))))))

(assert (= (and d!935720 c!565119) b!3327648))

(assert (= (and d!935720 (not c!565119)) b!3327649))

(assert (= (and b!3327649 (not res!1349680)) b!3327650))

(declare-fun m!3667965 () Bool)

(assert (=> b!3327648 m!3667965))

(declare-fun m!3667967 () Bool)

(assert (=> b!3327650 m!3667967))

(assert (=> b!3327363 d!935720))

(declare-fun d!935722 () Bool)

(declare-fun e!2069407 () Bool)

(assert (=> d!935722 e!2069407))

(declare-fun res!1349685 () Bool)

(assert (=> d!935722 (=> (not res!1349685) (not e!2069407))))

(declare-fun lt!1130706 () BalanceConc!21686)

(assert (=> d!935722 (= res!1349685 (= (list!13200 lt!1130706) tokens!494))))

(declare-fun fromList!678 (List!36784) Conc!11036)

(assert (=> d!935722 (= lt!1130706 (BalanceConc!21687 (fromList!678 tokens!494)))))

(assert (=> d!935722 (= (fromListB!1642 tokens!494) lt!1130706)))

(declare-fun b!3327657 () Bool)

(assert (=> b!3327657 (= e!2069407 (isBalanced!3311 (fromList!678 tokens!494)))))

(assert (= (and d!935722 res!1349685) b!3327657))

(declare-fun m!3667975 () Bool)

(assert (=> d!935722 m!3667975))

(declare-fun m!3667977 () Bool)

(assert (=> d!935722 m!3667977))

(assert (=> b!3327657 m!3667977))

(assert (=> b!3327657 m!3667977))

(declare-fun m!3667979 () Bool)

(assert (=> b!3327657 m!3667979))

(assert (=> d!935632 d!935722))

(declare-fun d!935728 () Bool)

(declare-fun res!1349686 () Bool)

(declare-fun e!2069408 () Bool)

(assert (=> d!935728 (=> (not res!1349686) (not e!2069408))))

(assert (=> d!935728 (= res!1349686 (not (isEmpty!20819 (originalCharacters!6044 (h!42080 (t!256741 tokens!494))))))))

(assert (=> d!935728 (= (inv!49662 (h!42080 (t!256741 tokens!494))) e!2069408)))

(declare-fun b!3327658 () Bool)

(declare-fun res!1349687 () Bool)

(assert (=> b!3327658 (=> (not res!1349687) (not e!2069408))))

(assert (=> b!3327658 (= res!1349687 (= (originalCharacters!6044 (h!42080 (t!256741 tokens!494))) (list!13197 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (value!172365 (h!42080 (t!256741 tokens!494)))))))))

(declare-fun b!3327659 () Bool)

(assert (=> b!3327659 (= e!2069408 (= (size!27709 (h!42080 (t!256741 tokens!494))) (size!27713 (originalCharacters!6044 (h!42080 (t!256741 tokens!494))))))))

(assert (= (and d!935728 res!1349686) b!3327658))

(assert (= (and b!3327658 res!1349687) b!3327659))

(declare-fun b_lambda!93939 () Bool)

(assert (=> (not b_lambda!93939) (not b!3327658)))

(declare-fun t!256803 () Bool)

(declare-fun tb!174239 () Bool)

(assert (=> (and b!3327587 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) t!256803) tb!174239))

(declare-fun b!3327660 () Bool)

(declare-fun e!2069409 () Bool)

(declare-fun tp!1040051 () Bool)

(assert (=> b!3327660 (= e!2069409 (and (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (value!172365 (h!42080 (t!256741 tokens!494)))))) tp!1040051))))

(declare-fun result!217336 () Bool)

(assert (=> tb!174239 (= result!217336 (and (inv!49666 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (value!172365 (h!42080 (t!256741 tokens!494))))) e!2069409))))

(assert (= tb!174239 b!3327660))

(declare-fun m!3667985 () Bool)

(assert (=> b!3327660 m!3667985))

(declare-fun m!3667987 () Bool)

(assert (=> tb!174239 m!3667987))

(assert (=> b!3327658 t!256803))

(declare-fun b_and!229379 () Bool)

(assert (= b_and!229373 (and (=> t!256803 result!217336) b_and!229379)))

(declare-fun t!256805 () Bool)

(declare-fun tb!174241 () Bool)

(assert (=> (and b!3327184 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) t!256805) tb!174241))

(declare-fun result!217338 () Bool)

(assert (= result!217338 result!217336))

(assert (=> b!3327658 t!256805))

(declare-fun b_and!229381 () Bool)

(assert (= b_and!229365 (and (=> t!256805 result!217338) b_and!229381)))

(declare-fun t!256807 () Bool)

(declare-fun tb!174243 () Bool)

(assert (=> (and b!3327190 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) t!256807) tb!174243))

(declare-fun result!217340 () Bool)

(assert (= result!217340 result!217336))

(assert (=> b!3327658 t!256807))

(declare-fun b_and!229383 () Bool)

(assert (= b_and!229367 (and (=> t!256807 result!217340) b_and!229383)))

(declare-fun t!256809 () Bool)

(declare-fun tb!174245 () Bool)

(assert (=> (and b!3327192 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) t!256809) tb!174245))

(declare-fun result!217342 () Bool)

(assert (= result!217342 result!217336))

(assert (=> b!3327658 t!256809))

(declare-fun b_and!229385 () Bool)

(assert (= b_and!229369 (and (=> t!256809 result!217342) b_and!229385)))

(declare-fun tb!174247 () Bool)

(declare-fun t!256811 () Bool)

(assert (=> (and b!3327602 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) t!256811) tb!174247))

(declare-fun result!217344 () Bool)

(assert (= result!217344 result!217336))

(assert (=> b!3327658 t!256811))

(declare-fun b_and!229387 () Bool)

(assert (= b_and!229377 (and (=> t!256811 result!217344) b_and!229387)))

(declare-fun m!3667989 () Bool)

(assert (=> d!935728 m!3667989))

(declare-fun m!3667991 () Bool)

(assert (=> b!3327658 m!3667991))

(assert (=> b!3327658 m!3667991))

(declare-fun m!3667993 () Bool)

(assert (=> b!3327658 m!3667993))

(declare-fun m!3667995 () Bool)

(assert (=> b!3327659 m!3667995))

(assert (=> b!3327584 d!935728))

(declare-fun d!935732 () Bool)

(declare-fun charsToInt!0 (List!36782) (_ BitVec 32))

(assert (=> d!935732 (= (inv!16 (value!172365 (h!42080 tokens!494))) (= (charsToInt!0 (text!39367 (value!172365 (h!42080 tokens!494)))) (value!172356 (value!172365 (h!42080 tokens!494)))))))

(declare-fun bs!551006 () Bool)

(assert (= bs!551006 d!935732))

(declare-fun m!3667999 () Bool)

(assert (=> bs!551006 m!3667999))

(assert (=> b!3327542 d!935732))

(declare-fun bs!551007 () Bool)

(declare-fun d!935736 () Bool)

(assert (= bs!551007 (and d!935736 b!3327193)))

(declare-fun lambda!119722 () Int)

(assert (=> bs!551007 (not (= lambda!119722 lambda!119701))))

(declare-fun bs!551008 () Bool)

(assert (= bs!551008 (and d!935736 d!935566)))

(assert (=> bs!551008 (= lambda!119722 lambda!119704)))

(declare-fun bs!551009 () Bool)

(assert (= bs!551009 (and d!935736 d!935630)))

(assert (=> bs!551009 (= lambda!119722 lambda!119709)))

(declare-fun b!3327665 () Bool)

(declare-fun e!2069414 () Bool)

(assert (=> b!3327665 (= e!2069414 true)))

(declare-fun b!3327664 () Bool)

(declare-fun e!2069413 () Bool)

(assert (=> b!3327664 (= e!2069413 e!2069414)))

(declare-fun b!3327663 () Bool)

(declare-fun e!2069412 () Bool)

(assert (=> b!3327663 (= e!2069412 e!2069413)))

(assert (=> d!935736 e!2069412))

(assert (= b!3327664 b!3327665))

(assert (= b!3327663 b!3327664))

(assert (= (and d!935736 ((_ is Cons!36661) rules!2135)) b!3327663))

(assert (=> b!3327665 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119722))))

(assert (=> b!3327665 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119722))))

(assert (=> d!935736 true))

(declare-fun lt!1130707 () Bool)

(assert (=> d!935736 (= lt!1130707 (forall!7647 (list!13200 lt!1130563) lambda!119722))))

(declare-fun e!2069411 () Bool)

(assert (=> d!935736 (= lt!1130707 e!2069411)))

(declare-fun res!1349689 () Bool)

(assert (=> d!935736 (=> res!1349689 e!2069411)))

(assert (=> d!935736 (= res!1349689 (not ((_ is Cons!36660) (list!13200 lt!1130563))))))

(assert (=> d!935736 (not (isEmpty!20820 rules!2135))))

(assert (=> d!935736 (= (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 (list!13200 lt!1130563)) lt!1130707)))

(declare-fun b!3327661 () Bool)

(declare-fun e!2069410 () Bool)

(assert (=> b!3327661 (= e!2069411 e!2069410)))

(declare-fun res!1349688 () Bool)

(assert (=> b!3327661 (=> (not res!1349688) (not e!2069410))))

(assert (=> b!3327661 (= res!1349688 (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 (h!42080 (list!13200 lt!1130563))))))

(declare-fun b!3327662 () Bool)

(assert (=> b!3327662 (= e!2069410 (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 (t!256741 (list!13200 lt!1130563))))))

(assert (= (and d!935736 (not res!1349689)) b!3327661))

(assert (= (and b!3327661 res!1349688) b!3327662))

(assert (=> d!935736 m!3667705))

(declare-fun m!3668001 () Bool)

(assert (=> d!935736 m!3668001))

(assert (=> d!935736 m!3667379))

(declare-fun m!3668003 () Bool)

(assert (=> b!3327661 m!3668003))

(declare-fun m!3668005 () Bool)

(assert (=> b!3327662 m!3668005))

(assert (=> b!3327369 d!935736))

(declare-fun d!935738 () Bool)

(declare-fun list!13204 (Conc!11036) List!36784)

(assert (=> d!935738 (= (list!13200 lt!1130563) (list!13204 (c!565062 lt!1130563)))))

(declare-fun bs!551010 () Bool)

(assert (= bs!551010 d!935738))

(declare-fun m!3668007 () Bool)

(assert (=> bs!551010 m!3668007))

(assert (=> b!3327369 d!935738))

(declare-fun d!935740 () Bool)

(declare-fun lt!1130713 () Bool)

(assert (=> d!935740 (= lt!1130713 (isEmpty!20819 (list!13197 (_2!21213 lt!1130659))))))

(declare-fun isEmpty!20828 (Conc!11035) Bool)

(assert (=> d!935740 (= lt!1130713 (isEmpty!20828 (c!565061 (_2!21213 lt!1130659))))))

(assert (=> d!935740 (= (isEmpty!20827 (_2!21213 lt!1130659)) lt!1130713)))

(declare-fun bs!551012 () Bool)

(assert (= bs!551012 d!935740))

(declare-fun m!3668013 () Bool)

(assert (=> bs!551012 m!3668013))

(assert (=> bs!551012 m!3668013))

(declare-fun m!3668015 () Bool)

(assert (=> bs!551012 m!3668015))

(declare-fun m!3668017 () Bool)

(assert (=> bs!551012 m!3668017))

(assert (=> b!3327497 d!935740))

(declare-fun d!935744 () Bool)

(assert (=> d!935744 true))

(declare-fun lt!1130716 () Bool)

(declare-fun rulesValidInductive!1818 (LexerInterface!4919 List!36785) Bool)

(assert (=> d!935744 (= lt!1130716 (rulesValidInductive!1818 thiss!18206 rules!2135))))

(declare-fun lambda!119725 () Int)

(declare-fun forall!7650 (List!36785 Int) Bool)

(assert (=> d!935744 (= lt!1130716 (forall!7650 rules!2135 lambda!119725))))

(assert (=> d!935744 (= (rulesValid!1973 thiss!18206 rules!2135) lt!1130716)))

(declare-fun bs!551013 () Bool)

(assert (= bs!551013 d!935744))

(declare-fun m!3668019 () Bool)

(assert (=> bs!551013 m!3668019))

(declare-fun m!3668021 () Bool)

(assert (=> bs!551013 m!3668021))

(assert (=> d!935674 d!935744))

(declare-fun d!935746 () Bool)

(declare-fun isBalanced!3312 (Conc!11035) Bool)

(assert (=> d!935746 (= (inv!49666 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))) (isBalanced!3312 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))))))

(declare-fun bs!551014 () Bool)

(assert (= bs!551014 d!935746))

(declare-fun m!3668023 () Bool)

(assert (=> bs!551014 m!3668023))

(assert (=> tb!174211 d!935746))

(declare-fun d!935748 () Bool)

(assert (=> d!935748 true))

(declare-fun lambda!119728 () Int)

(declare-fun order!19181 () Int)

(declare-fun dynLambda!15122 (Int Int) Int)

(assert (=> d!935748 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15122 order!19181 lambda!119728))))

(assert (=> d!935748 true))

(assert (=> d!935748 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15122 order!19181 lambda!119728))))

(declare-fun Forall!1304 (Int) Bool)

(assert (=> d!935748 (= (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (Forall!1304 lambda!119728))))

(declare-fun bs!551015 () Bool)

(assert (= bs!551015 d!935748))

(declare-fun m!3668025 () Bool)

(assert (=> bs!551015 m!3668025))

(assert (=> d!935624 d!935748))

(declare-fun bm!241361 () Bool)

(declare-fun call!241366 () Bool)

(assert (=> bm!241361 (= call!241366 (ruleDisjointCharsFromAllFromOtherType!649 (h!42081 rules!2135) (t!256742 rules!2135)))))

(declare-fun b!3327686 () Bool)

(declare-fun e!2069426 () Bool)

(declare-fun e!2069425 () Bool)

(assert (=> b!3327686 (= e!2069426 e!2069425)))

(declare-fun res!1349694 () Bool)

(declare-fun rulesUseDisjointChars!309 (Rule!10460 Rule!10460) Bool)

(assert (=> b!3327686 (= res!1349694 (rulesUseDisjointChars!309 (h!42081 rules!2135) (h!42081 rules!2135)))))

(assert (=> b!3327686 (=> (not res!1349694) (not e!2069425))))

(declare-fun d!935750 () Bool)

(declare-fun c!565127 () Bool)

(assert (=> d!935750 (= c!565127 (and ((_ is Cons!36661) rules!2135) (not (= (isSeparator!5330 (h!42081 rules!2135)) (isSeparator!5330 (h!42081 rules!2135))))))))

(assert (=> d!935750 (= (ruleDisjointCharsFromAllFromOtherType!649 (h!42081 rules!2135) rules!2135) e!2069426)))

(declare-fun b!3327687 () Bool)

(declare-fun e!2069424 () Bool)

(assert (=> b!3327687 (= e!2069424 call!241366)))

(declare-fun b!3327688 () Bool)

(assert (=> b!3327688 (= e!2069425 call!241366)))

(declare-fun b!3327689 () Bool)

(assert (=> b!3327689 (= e!2069426 e!2069424)))

(declare-fun res!1349695 () Bool)

(assert (=> b!3327689 (= res!1349695 (not ((_ is Cons!36661) rules!2135)))))

(assert (=> b!3327689 (=> res!1349695 e!2069424)))

(assert (= (and d!935750 c!565127) b!3327686))

(assert (= (and d!935750 (not c!565127)) b!3327689))

(assert (= (and b!3327686 res!1349694) b!3327688))

(assert (= (and b!3327689 (not res!1349695)) b!3327687))

(assert (= (or b!3327688 b!3327687) bm!241361))

(declare-fun m!3668051 () Bool)

(assert (=> bm!241361 m!3668051))

(declare-fun m!3668053 () Bool)

(assert (=> b!3327686 m!3668053))

(assert (=> b!3327424 d!935750))

(declare-fun d!935756 () Bool)

(declare-fun res!1349697 () Bool)

(declare-fun e!2069428 () Bool)

(assert (=> d!935756 (=> res!1349697 e!2069428)))

(assert (=> d!935756 (= res!1349697 ((_ is Nil!36660) (list!13200 lt!1130563)))))

(assert (=> d!935756 (= (forall!7647 (list!13200 lt!1130563) lambda!119709) e!2069428)))

(declare-fun b!3327691 () Bool)

(declare-fun e!2069429 () Bool)

(assert (=> b!3327691 (= e!2069428 e!2069429)))

(declare-fun res!1349698 () Bool)

(assert (=> b!3327691 (=> (not res!1349698) (not e!2069429))))

(assert (=> b!3327691 (= res!1349698 (dynLambda!15113 lambda!119709 (h!42080 (list!13200 lt!1130563))))))

(declare-fun b!3327692 () Bool)

(assert (=> b!3327692 (= e!2069429 (forall!7647 (t!256741 (list!13200 lt!1130563)) lambda!119709))))

(assert (= (and d!935756 (not res!1349697)) b!3327691))

(assert (= (and b!3327691 res!1349698) b!3327692))

(declare-fun b_lambda!93941 () Bool)

(assert (=> (not b_lambda!93941) (not b!3327691)))

(declare-fun m!3668059 () Bool)

(assert (=> b!3327691 m!3668059))

(declare-fun m!3668061 () Bool)

(assert (=> b!3327692 m!3668061))

(assert (=> d!935630 d!935756))

(assert (=> d!935630 d!935738))

(declare-fun d!935760 () Bool)

(declare-fun lt!1130734 () Bool)

(assert (=> d!935760 (= lt!1130734 (forall!7647 (list!13200 lt!1130563) lambda!119709))))

(declare-fun forall!7651 (Conc!11036 Int) Bool)

(assert (=> d!935760 (= lt!1130734 (forall!7651 (c!565062 lt!1130563) lambda!119709))))

(assert (=> d!935760 (= (forall!7649 lt!1130563 lambda!119709) lt!1130734)))

(declare-fun bs!551016 () Bool)

(assert (= bs!551016 d!935760))

(assert (=> bs!551016 m!3667705))

(assert (=> bs!551016 m!3667705))

(assert (=> bs!551016 m!3667707))

(declare-fun m!3668067 () Bool)

(assert (=> bs!551016 m!3668067))

(assert (=> d!935630 d!935760))

(assert (=> d!935630 d!935662))

(declare-fun d!935764 () Bool)

(assert (=> d!935764 (= (list!13197 lt!1130678) (list!13201 (c!565061 lt!1130678)))))

(declare-fun bs!551017 () Bool)

(assert (= bs!551017 d!935764))

(declare-fun m!3668069 () Bool)

(assert (=> bs!551017 m!3668069))

(assert (=> d!935668 d!935764))

(declare-fun d!935766 () Bool)

(assert (=> d!935766 (= (list!13197 (BalanceConc!21685 Empty!11035)) (list!13201 (c!565061 (BalanceConc!21685 Empty!11035))))))

(declare-fun bs!551018 () Bool)

(assert (= bs!551018 d!935766))

(declare-fun m!3668071 () Bool)

(assert (=> bs!551018 m!3668071))

(assert (=> d!935668 d!935766))

(declare-fun d!935768 () Bool)

(assert (=> d!935768 (= (dropList!1135 lt!1130560 0) (drop!1927 (list!13204 (c!565062 lt!1130560)) 0))))

(declare-fun bs!551020 () Bool)

(assert (= bs!551020 d!935768))

(declare-fun m!3668079 () Bool)

(assert (=> bs!551020 m!3668079))

(assert (=> bs!551020 m!3668079))

(declare-fun m!3668081 () Bool)

(assert (=> bs!551020 m!3668081))

(assert (=> d!935668 d!935768))

(declare-fun d!935774 () Bool)

(declare-fun lt!1130748 () List!36783)

(assert (=> d!935774 (= lt!1130748 (++!8907 (list!13197 (BalanceConc!21685 Empty!11035)) (printList!1467 thiss!18206 (dropList!1135 lt!1130560 0))))))

(declare-fun e!2069440 () List!36783)

(assert (=> d!935774 (= lt!1130748 e!2069440)))

(declare-fun c!565133 () Bool)

(assert (=> d!935774 (= c!565133 ((_ is Cons!36660) (dropList!1135 lt!1130560 0)))))

(assert (=> d!935774 (= (printListTailRec!618 thiss!18206 (dropList!1135 lt!1130560 0) (list!13197 (BalanceConc!21685 Empty!11035))) lt!1130748)))

(declare-fun b!3327708 () Bool)

(assert (=> b!3327708 (= e!2069440 (printListTailRec!618 thiss!18206 (t!256741 (dropList!1135 lt!1130560 0)) (++!8907 (list!13197 (BalanceConc!21685 Empty!11035)) (list!13197 (charsOf!3344 (h!42080 (dropList!1135 lt!1130560 0)))))))))

(declare-fun lt!1130750 () List!36783)

(assert (=> b!3327708 (= lt!1130750 (list!13197 (charsOf!3344 (h!42080 (dropList!1135 lt!1130560 0)))))))

(declare-fun lt!1130751 () List!36783)

(assert (=> b!3327708 (= lt!1130751 (printList!1467 thiss!18206 (t!256741 (dropList!1135 lt!1130560 0))))))

(declare-fun lt!1130749 () Unit!51672)

(declare-fun lemmaConcatAssociativity!1850 (List!36783 List!36783 List!36783) Unit!51672)

(assert (=> b!3327708 (= lt!1130749 (lemmaConcatAssociativity!1850 (list!13197 (BalanceConc!21685 Empty!11035)) lt!1130750 lt!1130751))))

(assert (=> b!3327708 (= (++!8907 (++!8907 (list!13197 (BalanceConc!21685 Empty!11035)) lt!1130750) lt!1130751) (++!8907 (list!13197 (BalanceConc!21685 Empty!11035)) (++!8907 lt!1130750 lt!1130751)))))

(declare-fun lt!1130752 () Unit!51672)

(assert (=> b!3327708 (= lt!1130752 lt!1130749)))

(declare-fun b!3327709 () Bool)

(assert (=> b!3327709 (= e!2069440 (list!13197 (BalanceConc!21685 Empty!11035)))))

(assert (= (and d!935774 c!565133) b!3327708))

(assert (= (and d!935774 (not c!565133)) b!3327709))

(assert (=> d!935774 m!3667827))

(declare-fun m!3668087 () Bool)

(assert (=> d!935774 m!3668087))

(assert (=> d!935774 m!3667823))

(assert (=> d!935774 m!3668087))

(declare-fun m!3668089 () Bool)

(assert (=> d!935774 m!3668089))

(assert (=> b!3327708 m!3667823))

(declare-fun m!3668091 () Bool)

(assert (=> b!3327708 m!3668091))

(declare-fun m!3668093 () Bool)

(assert (=> b!3327708 m!3668093))

(declare-fun m!3668095 () Bool)

(assert (=> b!3327708 m!3668095))

(declare-fun m!3668097 () Bool)

(assert (=> b!3327708 m!3668097))

(assert (=> b!3327708 m!3668095))

(declare-fun m!3668099 () Bool)

(assert (=> b!3327708 m!3668099))

(assert (=> b!3327708 m!3667823))

(assert (=> b!3327708 m!3668099))

(declare-fun m!3668101 () Bool)

(assert (=> b!3327708 m!3668101))

(assert (=> b!3327708 m!3668101))

(declare-fun m!3668105 () Bool)

(assert (=> b!3327708 m!3668105))

(declare-fun m!3668107 () Bool)

(assert (=> b!3327708 m!3668107))

(declare-fun m!3668109 () Bool)

(assert (=> b!3327708 m!3668109))

(assert (=> b!3327708 m!3667823))

(assert (=> b!3327708 m!3668097))

(declare-fun m!3668111 () Bool)

(assert (=> b!3327708 m!3668111))

(assert (=> b!3327708 m!3667823))

(assert (=> b!3327708 m!3668107))

(assert (=> d!935668 d!935774))

(declare-fun d!935780 () Bool)

(declare-fun lt!1130755 () Int)

(declare-fun size!27718 (List!36784) Int)

(assert (=> d!935780 (= lt!1130755 (size!27718 (list!13200 lt!1130560)))))

(declare-fun size!27719 (Conc!11036) Int)

(assert (=> d!935780 (= lt!1130755 (size!27719 (c!565062 lt!1130560)))))

(assert (=> d!935780 (= (size!27715 lt!1130560) lt!1130755)))

(declare-fun bs!551023 () Bool)

(assert (= bs!551023 d!935780))

(assert (=> bs!551023 m!3667817))

(assert (=> bs!551023 m!3667817))

(declare-fun m!3668115 () Bool)

(assert (=> bs!551023 m!3668115))

(declare-fun m!3668117 () Bool)

(assert (=> bs!551023 m!3668117))

(assert (=> d!935668 d!935780))

(declare-fun d!935784 () Bool)

(assert (=> d!935784 (= (list!13200 (_1!21213 lt!1130651)) (list!13204 (c!565062 (_1!21213 lt!1130651))))))

(declare-fun bs!551024 () Bool)

(assert (= bs!551024 d!935784))

(declare-fun m!3668119 () Bool)

(assert (=> bs!551024 m!3668119))

(assert (=> b!3327412 d!935784))

(declare-fun b!3327762 () Bool)

(declare-fun e!2069476 () Bool)

(declare-fun lt!1130776 () tuple2!36162)

(assert (=> b!3327762 (= e!2069476 (not (isEmpty!20825 (_1!21215 lt!1130776))))))

(declare-fun b!3327763 () Bool)

(declare-fun e!2069474 () Bool)

(assert (=> b!3327763 (= e!2069474 (= (_2!21215 lt!1130776) (list!13197 (seqFromList!3714 lt!1130562))))))

(declare-fun b!3327764 () Bool)

(declare-fun e!2069475 () tuple2!36162)

(assert (=> b!3327764 (= e!2069475 (tuple2!36163 Nil!36660 (list!13197 (seqFromList!3714 lt!1130562))))))

(declare-fun b!3327765 () Bool)

(declare-datatypes ((tuple2!36164 0))(
  ( (tuple2!36165 (_1!21216 Token!10026) (_2!21216 List!36783)) )
))
(declare-datatypes ((Option!7311 0))(
  ( (None!7310) (Some!7310 (v!36206 tuple2!36164)) )
))
(declare-fun lt!1130775 () Option!7311)

(declare-fun lt!1130774 () tuple2!36162)

(assert (=> b!3327765 (= e!2069475 (tuple2!36163 (Cons!36660 (_1!21216 (v!36206 lt!1130775)) (_1!21215 lt!1130774)) (_2!21215 lt!1130774)))))

(assert (=> b!3327765 (= lt!1130774 (lexList!1376 thiss!18206 rules!2135 (_2!21216 (v!36206 lt!1130775))))))

(declare-fun d!935786 () Bool)

(assert (=> d!935786 e!2069474))

(declare-fun c!565153 () Bool)

(assert (=> d!935786 (= c!565153 (> (size!27718 (_1!21215 lt!1130776)) 0))))

(assert (=> d!935786 (= lt!1130776 e!2069475)))

(declare-fun c!565154 () Bool)

(assert (=> d!935786 (= c!565154 ((_ is Some!7310) lt!1130775))))

(declare-fun maxPrefix!2520 (LexerInterface!4919 List!36785 List!36783) Option!7311)

(assert (=> d!935786 (= lt!1130775 (maxPrefix!2520 thiss!18206 rules!2135 (list!13197 (seqFromList!3714 lt!1130562))))))

(assert (=> d!935786 (= (lexList!1376 thiss!18206 rules!2135 (list!13197 (seqFromList!3714 lt!1130562))) lt!1130776)))

(declare-fun b!3327766 () Bool)

(assert (=> b!3327766 (= e!2069474 e!2069476)))

(declare-fun res!1349717 () Bool)

(assert (=> b!3327766 (= res!1349717 (< (size!27713 (_2!21215 lt!1130776)) (size!27713 (list!13197 (seqFromList!3714 lt!1130562)))))))

(assert (=> b!3327766 (=> (not res!1349717) (not e!2069476))))

(assert (= (and d!935786 c!565154) b!3327765))

(assert (= (and d!935786 (not c!565154)) b!3327764))

(assert (= (and d!935786 c!565153) b!3327766))

(assert (= (and d!935786 (not c!565153)) b!3327763))

(assert (= (and b!3327766 res!1349717) b!3327762))

(declare-fun m!3668151 () Bool)

(assert (=> b!3327762 m!3668151))

(declare-fun m!3668153 () Bool)

(assert (=> b!3327765 m!3668153))

(declare-fun m!3668155 () Bool)

(assert (=> d!935786 m!3668155))

(assert (=> d!935786 m!3667759))

(declare-fun m!3668157 () Bool)

(assert (=> d!935786 m!3668157))

(declare-fun m!3668159 () Bool)

(assert (=> b!3327766 m!3668159))

(assert (=> b!3327766 m!3667759))

(declare-fun m!3668161 () Bool)

(assert (=> b!3327766 m!3668161))

(assert (=> b!3327412 d!935786))

(declare-fun d!935796 () Bool)

(assert (=> d!935796 (= (list!13197 (seqFromList!3714 lt!1130562)) (list!13201 (c!565061 (seqFromList!3714 lt!1130562))))))

(declare-fun bs!551025 () Bool)

(assert (= bs!551025 d!935796))

(declare-fun m!3668165 () Bool)

(assert (=> bs!551025 m!3668165))

(assert (=> b!3327412 d!935796))

(declare-fun d!935800 () Bool)

(assert (=> d!935800 (= (isEmpty!20825 (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))) ((_ is Nil!36660) (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))))))

(assert (=> d!935644 d!935800))

(declare-fun d!935802 () Bool)

(assert (=> d!935802 (= (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562)))) (list!13204 (c!565062 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))))))

(declare-fun bs!551026 () Bool)

(assert (= bs!551026 d!935802))

(declare-fun m!3668175 () Bool)

(assert (=> bs!551026 m!3668175))

(assert (=> d!935644 d!935802))

(declare-fun d!935806 () Bool)

(declare-fun lt!1130788 () Bool)

(assert (=> d!935806 (= lt!1130788 (isEmpty!20825 (list!13204 (c!565062 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562)))))))))

(assert (=> d!935806 (= lt!1130788 (= (size!27719 (c!565062 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))) 0))))

(assert (=> d!935806 (= (isEmpty!20826 (c!565062 (_1!21213 (lex!2245 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))) lt!1130788)))

(declare-fun bs!551027 () Bool)

(assert (= bs!551027 d!935806))

(assert (=> bs!551027 m!3668175))

(assert (=> bs!551027 m!3668175))

(declare-fun m!3668209 () Bool)

(assert (=> bs!551027 m!3668209))

(declare-fun m!3668211 () Bool)

(assert (=> bs!551027 m!3668211))

(assert (=> d!935644 d!935806))

(declare-fun d!935810 () Bool)

(declare-fun e!2069487 () Bool)

(assert (=> d!935810 e!2069487))

(declare-fun res!1349723 () Bool)

(assert (=> d!935810 (=> (not res!1349723) (not e!2069487))))

(declare-fun lt!1130791 () BalanceConc!21684)

(assert (=> d!935810 (= res!1349723 (= (list!13197 lt!1130791) lt!1130562))))

(declare-fun fromList!679 (List!36783) Conc!11035)

(assert (=> d!935810 (= lt!1130791 (BalanceConc!21685 (fromList!679 lt!1130562)))))

(assert (=> d!935810 (= (fromListB!1643 lt!1130562) lt!1130791)))

(declare-fun b!3327782 () Bool)

(assert (=> b!3327782 (= e!2069487 (isBalanced!3312 (fromList!679 lt!1130562)))))

(assert (= (and d!935810 res!1349723) b!3327782))

(declare-fun m!3668213 () Bool)

(assert (=> d!935810 m!3668213))

(declare-fun m!3668215 () Bool)

(assert (=> d!935810 m!3668215))

(assert (=> b!3327782 m!3668215))

(assert (=> b!3327782 m!3668215))

(declare-fun m!3668217 () Bool)

(assert (=> b!3327782 m!3668217))

(assert (=> d!935652 d!935810))

(declare-fun bs!551028 () Bool)

(declare-fun d!935812 () Bool)

(assert (= bs!551028 (and d!935812 d!935748)))

(declare-fun lambda!119729 () Int)

(assert (=> bs!551028 (= (and (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (h!42081 rules!2135)))) (= (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toValue!7490 (transformation!5330 (h!42081 rules!2135))))) (= lambda!119729 lambda!119728))))

(assert (=> d!935812 true))

(assert (=> d!935812 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) (dynLambda!15122 order!19181 lambda!119729))))

(assert (=> d!935812 true))

(assert (=> d!935812 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) (dynLambda!15122 order!19181 lambda!119729))))

(assert (=> d!935812 (= (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) (Forall!1304 lambda!119729))))

(declare-fun bs!551029 () Bool)

(assert (= bs!551029 d!935812))

(declare-fun m!3668219 () Bool)

(assert (=> bs!551029 m!3668219))

(assert (=> d!935678 d!935812))

(declare-fun d!935814 () Bool)

(declare-fun lt!1130794 () Bool)

(assert (=> d!935814 (= lt!1130794 (isEmpty!20825 (list!13200 (_1!21213 lt!1130651))))))

(assert (=> d!935814 (= lt!1130794 (isEmpty!20826 (c!565062 (_1!21213 lt!1130651))))))

(assert (=> d!935814 (= (isEmpty!20821 (_1!21213 lt!1130651)) lt!1130794)))

(declare-fun bs!551030 () Bool)

(assert (= bs!551030 d!935814))

(assert (=> bs!551030 m!3667767))

(assert (=> bs!551030 m!3667767))

(declare-fun m!3668221 () Bool)

(assert (=> bs!551030 m!3668221))

(declare-fun m!3668223 () Bool)

(assert (=> bs!551030 m!3668223))

(assert (=> b!3327414 d!935814))

(declare-fun d!935816 () Bool)

(declare-fun lt!1130798 () Int)

(assert (=> d!935816 (>= lt!1130798 0)))

(declare-fun e!2069493 () Int)

(assert (=> d!935816 (= lt!1130798 e!2069493)))

(declare-fun c!565163 () Bool)

(assert (=> d!935816 (= c!565163 ((_ is Nil!36659) (originalCharacters!6044 separatorToken!241)))))

(assert (=> d!935816 (= (size!27713 (originalCharacters!6044 separatorToken!241)) lt!1130798)))

(declare-fun b!3327790 () Bool)

(assert (=> b!3327790 (= e!2069493 0)))

(declare-fun b!3327791 () Bool)

(assert (=> b!3327791 (= e!2069493 (+ 1 (size!27713 (t!256740 (originalCharacters!6044 separatorToken!241)))))))

(assert (= (and d!935816 c!565163) b!3327790))

(assert (= (and d!935816 (not c!565163)) b!3327791))

(declare-fun m!3668229 () Bool)

(assert (=> b!3327791 m!3668229))

(assert (=> b!3327358 d!935816))

(declare-fun d!935822 () Bool)

(assert (=> d!935822 (= (inv!49658 (tag!5882 (rule!7852 (h!42080 (t!256741 tokens!494))))) (= (mod (str.len (value!172364 (tag!5882 (rule!7852 (h!42080 (t!256741 tokens!494)))))) 2) 0))))

(assert (=> b!3327586 d!935822))

(declare-fun d!935824 () Bool)

(declare-fun res!1349727 () Bool)

(declare-fun e!2069494 () Bool)

(assert (=> d!935824 (=> (not res!1349727) (not e!2069494))))

(assert (=> d!935824 (= res!1349727 (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))))))

(assert (=> d!935824 (= (inv!49661 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) e!2069494)))

(declare-fun b!3327792 () Bool)

(assert (=> b!3327792 (= e!2069494 (equivClasses!2112 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))))))

(assert (= (and d!935824 res!1349727) b!3327792))

(declare-fun m!3668231 () Bool)

(assert (=> d!935824 m!3668231))

(declare-fun m!3668233 () Bool)

(assert (=> b!3327792 m!3668233))

(assert (=> b!3327586 d!935824))

(declare-fun b!3327801 () Bool)

(declare-fun e!2069499 () List!36783)

(assert (=> b!3327801 (= e!2069499 Nil!36659)))

(declare-fun b!3327804 () Bool)

(declare-fun e!2069500 () List!36783)

(assert (=> b!3327804 (= e!2069500 (++!8907 (list!13201 (left!28570 (c!565061 (charsOf!3344 (h!42080 tokens!494))))) (list!13201 (right!28900 (c!565061 (charsOf!3344 (h!42080 tokens!494)))))))))

(declare-fun d!935826 () Bool)

(declare-fun c!565168 () Bool)

(assert (=> d!935826 (= c!565168 ((_ is Empty!11035) (c!565061 (charsOf!3344 (h!42080 tokens!494)))))))

(assert (=> d!935826 (= (list!13201 (c!565061 (charsOf!3344 (h!42080 tokens!494)))) e!2069499)))

(declare-fun b!3327802 () Bool)

(assert (=> b!3327802 (= e!2069499 e!2069500)))

(declare-fun c!565169 () Bool)

(assert (=> b!3327802 (= c!565169 ((_ is Leaf!17311) (c!565061 (charsOf!3344 (h!42080 tokens!494)))))))

(declare-fun b!3327803 () Bool)

(declare-fun list!13205 (IArray!22075) List!36783)

(assert (=> b!3327803 (= e!2069500 (list!13205 (xs!14173 (c!565061 (charsOf!3344 (h!42080 tokens!494))))))))

(assert (= (and d!935826 c!565168) b!3327801))

(assert (= (and d!935826 (not c!565168)) b!3327802))

(assert (= (and b!3327802 c!565169) b!3327803))

(assert (= (and b!3327802 (not c!565169)) b!3327804))

(declare-fun m!3668235 () Bool)

(assert (=> b!3327804 m!3668235))

(declare-fun m!3668237 () Bool)

(assert (=> b!3327804 m!3668237))

(assert (=> b!3327804 m!3668235))

(assert (=> b!3327804 m!3668237))

(declare-fun m!3668239 () Bool)

(assert (=> b!3327804 m!3668239))

(declare-fun m!3668241 () Bool)

(assert (=> b!3327803 m!3668241))

(assert (=> d!935698 d!935826))

(declare-fun d!935828 () Bool)

(declare-fun lt!1130799 () Int)

(assert (=> d!935828 (>= lt!1130799 0)))

(declare-fun e!2069501 () Int)

(assert (=> d!935828 (= lt!1130799 e!2069501)))

(declare-fun c!565172 () Bool)

(assert (=> d!935828 (= c!565172 ((_ is Nil!36659) lt!1130644))))

(assert (=> d!935828 (= (size!27713 lt!1130644) lt!1130799)))

(declare-fun b!3327805 () Bool)

(assert (=> b!3327805 (= e!2069501 0)))

(declare-fun b!3327806 () Bool)

(assert (=> b!3327806 (= e!2069501 (+ 1 (size!27713 (t!256740 lt!1130644))))))

(assert (= (and d!935828 c!565172) b!3327805))

(assert (= (and d!935828 (not c!565172)) b!3327806))

(declare-fun m!3668243 () Bool)

(assert (=> b!3327806 m!3668243))

(assert (=> b!3327383 d!935828))

(declare-fun d!935830 () Bool)

(declare-fun lt!1130800 () Int)

(assert (=> d!935830 (>= lt!1130800 0)))

(declare-fun e!2069502 () Int)

(assert (=> d!935830 (= lt!1130800 e!2069502)))

(declare-fun c!565173 () Bool)

(assert (=> d!935830 (= c!565173 ((_ is Nil!36659) lt!1130562))))

(assert (=> d!935830 (= (size!27713 lt!1130562) lt!1130800)))

(declare-fun b!3327807 () Bool)

(assert (=> b!3327807 (= e!2069502 0)))

(declare-fun b!3327808 () Bool)

(assert (=> b!3327808 (= e!2069502 (+ 1 (size!27713 (t!256740 lt!1130562))))))

(assert (= (and d!935830 c!565173) b!3327807))

(assert (= (and d!935830 (not c!565173)) b!3327808))

(declare-fun m!3668245 () Bool)

(assert (=> b!3327808 m!3668245))

(assert (=> b!3327383 d!935830))

(declare-fun d!935832 () Bool)

(declare-fun lt!1130801 () Int)

(assert (=> d!935832 (>= lt!1130801 0)))

(declare-fun e!2069503 () Int)

(assert (=> d!935832 (= lt!1130801 e!2069503)))

(declare-fun c!565174 () Bool)

(assert (=> d!935832 (= c!565174 ((_ is Nil!36659) (list!13197 (charsOf!3344 separatorToken!241))))))

(assert (=> d!935832 (= (size!27713 (list!13197 (charsOf!3344 separatorToken!241))) lt!1130801)))

(declare-fun b!3327809 () Bool)

(assert (=> b!3327809 (= e!2069503 0)))

(declare-fun b!3327810 () Bool)

(assert (=> b!3327810 (= e!2069503 (+ 1 (size!27713 (t!256740 (list!13197 (charsOf!3344 separatorToken!241))))))))

(assert (= (and d!935832 c!565174) b!3327809))

(assert (= (and d!935832 (not c!565174)) b!3327810))

(declare-fun m!3668247 () Bool)

(assert (=> b!3327810 m!3668247))

(assert (=> b!3327383 d!935832))

(declare-fun d!935834 () Bool)

(declare-fun c!565178 () Bool)

(assert (=> d!935834 (= c!565178 ((_ is Nil!36660) tokens!494))))

(declare-fun e!2069508 () (InoxSet Token!10026))

(assert (=> d!935834 (= (content!5009 tokens!494) e!2069508)))

(declare-fun b!3327819 () Bool)

(assert (=> b!3327819 (= e!2069508 ((as const (Array Token!10026 Bool)) false))))

(declare-fun b!3327820 () Bool)

(assert (=> b!3327820 (= e!2069508 ((_ map or) (store ((as const (Array Token!10026 Bool)) false) (h!42080 tokens!494) true) (content!5009 (t!256741 tokens!494))))))

(assert (= (and d!935834 c!565178) b!3327819))

(assert (= (and d!935834 (not c!565178)) b!3327820))

(declare-fun m!3668249 () Bool)

(assert (=> b!3327820 m!3668249))

(declare-fun m!3668251 () Bool)

(assert (=> b!3327820 m!3668251))

(assert (=> d!935690 d!935834))

(declare-fun b!3327828 () Bool)

(declare-fun lt!1130804 () List!36783)

(declare-fun e!2069510 () Bool)

(assert (=> b!3327828 (= e!2069510 (or (not (= (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660))) Nil!36659)) (= lt!1130804 (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))))))

(declare-fun b!3327825 () Bool)

(declare-fun e!2069509 () List!36783)

(assert (=> b!3327825 (= e!2069509 (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660))))))

(declare-fun b!3327826 () Bool)

(assert (=> b!3327826 (= e!2069509 (Cons!36659 (h!42079 (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (++!8907 (t!256740 (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660))))))))

(declare-fun d!935836 () Bool)

(assert (=> d!935836 e!2069510))

(declare-fun res!1349736 () Bool)

(assert (=> d!935836 (=> (not res!1349736) (not e!2069510))))

(assert (=> d!935836 (= res!1349736 (= (content!5008 lt!1130804) ((_ map or) (content!5008 (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (content!5008 (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))))))

(assert (=> d!935836 (= lt!1130804 e!2069509)))

(declare-fun c!565179 () Bool)

(assert (=> d!935836 (= c!565179 ((_ is Nil!36659) (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))))))

(assert (=> d!935836 (= (++!8907 (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))) (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660)))) lt!1130804)))

(declare-fun b!3327827 () Bool)

(declare-fun res!1349737 () Bool)

(assert (=> b!3327827 (=> (not res!1349737) (not e!2069510))))

(assert (=> b!3327827 (= res!1349737 (= (size!27713 lt!1130804) (+ (size!27713 (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (size!27713 (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))))))

(assert (= (and d!935836 c!565179) b!3327825))

(assert (= (and d!935836 (not c!565179)) b!3327826))

(assert (= (and d!935836 res!1349736) b!3327827))

(assert (= (and b!3327827 res!1349737) b!3327828))

(assert (=> b!3327826 m!3667865))

(declare-fun m!3668253 () Bool)

(assert (=> b!3327826 m!3668253))

(declare-fun m!3668255 () Bool)

(assert (=> d!935836 m!3668255))

(assert (=> d!935836 m!3667863))

(declare-fun m!3668257 () Bool)

(assert (=> d!935836 m!3668257))

(assert (=> d!935836 m!3667865))

(declare-fun m!3668259 () Bool)

(assert (=> d!935836 m!3668259))

(declare-fun m!3668261 () Bool)

(assert (=> b!3327827 m!3668261))

(assert (=> b!3327827 m!3667863))

(declare-fun m!3668263 () Bool)

(assert (=> b!3327827 m!3668263))

(assert (=> b!3327827 m!3667865))

(declare-fun m!3668265 () Bool)

(assert (=> b!3327827 m!3668265))

(assert (=> b!3327515 d!935836))

(declare-fun d!935838 () Bool)

(assert (=> d!935838 (= (list!13197 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))) (list!13201 (c!565061 (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))))))

(declare-fun bs!551031 () Bool)

(assert (= bs!551031 d!935838))

(declare-fun m!3668267 () Bool)

(assert (=> bs!551031 m!3668267))

(assert (=> b!3327515 d!935838))

(declare-fun d!935840 () Bool)

(declare-fun lt!1130805 () BalanceConc!21684)

(assert (=> d!935840 (= (list!13197 lt!1130805) (originalCharacters!6044 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))))

(assert (=> d!935840 (= lt!1130805 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (value!172365 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))))

(assert (=> d!935840 (= (charsOf!3344 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))) lt!1130805)))

(declare-fun b_lambda!93947 () Bool)

(assert (=> (not b_lambda!93947) (not d!935840)))

(declare-fun t!256825 () Bool)

(declare-fun tb!174259 () Bool)

(assert (=> (and b!3327192 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) t!256825) tb!174259))

(declare-fun b!3327829 () Bool)

(declare-fun e!2069511 () Bool)

(declare-fun tp!1040053 () Bool)

(assert (=> b!3327829 (= e!2069511 (and (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (value!172365 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) tp!1040053))))

(declare-fun result!217356 () Bool)

(assert (=> tb!174259 (= result!217356 (and (inv!49666 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (value!172365 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) e!2069511))))

(assert (= tb!174259 b!3327829))

(declare-fun m!3668269 () Bool)

(assert (=> b!3327829 m!3668269))

(declare-fun m!3668271 () Bool)

(assert (=> tb!174259 m!3668271))

(assert (=> d!935840 t!256825))

(declare-fun b_and!229399 () Bool)

(assert (= b_and!229385 (and (=> t!256825 result!217356) b_and!229399)))

(declare-fun t!256827 () Bool)

(declare-fun tb!174261 () Bool)

(assert (=> (and b!3327587 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) t!256827) tb!174261))

(declare-fun result!217358 () Bool)

(assert (= result!217358 result!217356))

(assert (=> d!935840 t!256827))

(declare-fun b_and!229401 () Bool)

(assert (= b_and!229379 (and (=> t!256827 result!217358) b_and!229401)))

(declare-fun tb!174263 () Bool)

(declare-fun t!256829 () Bool)

(assert (=> (and b!3327184 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) t!256829) tb!174263))

(declare-fun result!217360 () Bool)

(assert (= result!217360 result!217356))

(assert (=> d!935840 t!256829))

(declare-fun b_and!229403 () Bool)

(assert (= b_and!229381 (and (=> t!256829 result!217360) b_and!229403)))

(declare-fun t!256831 () Bool)

(declare-fun tb!174265 () Bool)

(assert (=> (and b!3327602 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) t!256831) tb!174265))

(declare-fun result!217362 () Bool)

(assert (= result!217362 result!217356))

(assert (=> d!935840 t!256831))

(declare-fun b_and!229405 () Bool)

(assert (= b_and!229387 (and (=> t!256831 result!217362) b_and!229405)))

(declare-fun tb!174267 () Bool)

(declare-fun t!256833 () Bool)

(assert (=> (and b!3327190 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) t!256833) tb!174267))

(declare-fun result!217364 () Bool)

(assert (= result!217364 result!217356))

(assert (=> d!935840 t!256833))

(declare-fun b_and!229407 () Bool)

(assert (= b_and!229383 (and (=> t!256833 result!217364) b_and!229407)))

(declare-fun m!3668273 () Bool)

(assert (=> d!935840 m!3668273))

(declare-fun m!3668275 () Bool)

(assert (=> d!935840 m!3668275))

(assert (=> b!3327515 d!935840))

(declare-fun d!935842 () Bool)

(declare-fun c!565180 () Bool)

(assert (=> d!935842 (= c!565180 ((_ is Cons!36660) (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660))))))

(declare-fun e!2069512 () List!36783)

(assert (=> d!935842 (= (printList!1467 thiss!18206 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660))) e!2069512)))

(declare-fun b!3327830 () Bool)

(assert (=> b!3327830 (= e!2069512 (++!8907 (list!13197 (charsOf!3344 (h!42080 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660))))) (printList!1467 thiss!18206 (t!256741 (t!256741 (Cons!36660 (h!42080 tokens!494) Nil!36660))))))))

(declare-fun b!3327831 () Bool)

(assert (=> b!3327831 (= e!2069512 Nil!36659)))

(assert (= (and d!935842 c!565180) b!3327830))

(assert (= (and d!935842 (not c!565180)) b!3327831))

(declare-fun m!3668277 () Bool)

(assert (=> b!3327830 m!3668277))

(assert (=> b!3327830 m!3668277))

(declare-fun m!3668279 () Bool)

(assert (=> b!3327830 m!3668279))

(declare-fun m!3668281 () Bool)

(assert (=> b!3327830 m!3668281))

(assert (=> b!3327830 m!3668279))

(assert (=> b!3327830 m!3668281))

(declare-fun m!3668283 () Bool)

(assert (=> b!3327830 m!3668283))

(assert (=> b!3327515 d!935842))

(declare-fun lt!1130807 () List!36783)

(declare-fun b!3327839 () Bool)

(declare-fun e!2069515 () Bool)

(assert (=> b!3327839 (= e!2069515 (or (not (= lt!1130695 Nil!36659)) (= lt!1130807 lt!1130562)))))

(declare-fun b!3327836 () Bool)

(declare-fun e!2069514 () List!36783)

(assert (=> b!3327836 (= e!2069514 lt!1130695)))

(declare-fun b!3327837 () Bool)

(assert (=> b!3327837 (= e!2069514 (Cons!36659 (h!42079 lt!1130562) (++!8907 (t!256740 lt!1130562) lt!1130695)))))

(declare-fun d!935844 () Bool)

(assert (=> d!935844 e!2069515))

(declare-fun res!1349742 () Bool)

(assert (=> d!935844 (=> (not res!1349742) (not e!2069515))))

(assert (=> d!935844 (= res!1349742 (= (content!5008 lt!1130807) ((_ map or) (content!5008 lt!1130562) (content!5008 lt!1130695))))))

(assert (=> d!935844 (= lt!1130807 e!2069514)))

(declare-fun c!565181 () Bool)

(assert (=> d!935844 (= c!565181 ((_ is Nil!36659) lt!1130562))))

(assert (=> d!935844 (= (++!8907 lt!1130562 lt!1130695) lt!1130807)))

(declare-fun b!3327838 () Bool)

(declare-fun res!1349743 () Bool)

(assert (=> b!3327838 (=> (not res!1349743) (not e!2069515))))

(assert (=> b!3327838 (= res!1349743 (= (size!27713 lt!1130807) (+ (size!27713 lt!1130562) (size!27713 lt!1130695))))))

(assert (= (and d!935844 c!565181) b!3327836))

(assert (= (and d!935844 (not c!565181)) b!3327837))

(assert (= (and d!935844 res!1349742) b!3327838))

(assert (= (and b!3327838 res!1349743) b!3327839))

(declare-fun m!3668285 () Bool)

(assert (=> b!3327837 m!3668285))

(declare-fun m!3668287 () Bool)

(assert (=> d!935844 m!3668287))

(assert (=> d!935844 m!3667729))

(declare-fun m!3668289 () Bool)

(assert (=> d!935844 m!3668289))

(declare-fun m!3668291 () Bool)

(assert (=> b!3327838 m!3668291))

(assert (=> b!3327838 m!3667735))

(declare-fun m!3668293 () Bool)

(assert (=> b!3327838 m!3668293))

(assert (=> d!935694 d!935844))

(assert (=> d!935694 d!935830))

(declare-fun d!935846 () Bool)

(declare-fun lt!1130808 () Int)

(assert (=> d!935846 (>= lt!1130808 0)))

(declare-fun e!2069516 () Int)

(assert (=> d!935846 (= lt!1130808 e!2069516)))

(declare-fun c!565182 () Bool)

(assert (=> d!935846 (= c!565182 ((_ is Nil!36659) (originalCharacters!6044 (h!42080 tokens!494))))))

(assert (=> d!935846 (= (size!27713 (originalCharacters!6044 (h!42080 tokens!494))) lt!1130808)))

(declare-fun b!3327840 () Bool)

(assert (=> b!3327840 (= e!2069516 0)))

(declare-fun b!3327841 () Bool)

(assert (=> b!3327841 (= e!2069516 (+ 1 (size!27713 (t!256740 (originalCharacters!6044 (h!42080 tokens!494))))))))

(assert (= (and d!935846 c!565182) b!3327840))

(assert (= (and d!935846 (not c!565182)) b!3327841))

(declare-fun m!3668295 () Bool)

(assert (=> b!3327841 m!3668295))

(assert (=> b!3327365 d!935846))

(declare-fun d!935848 () Bool)

(declare-fun c!565183 () Bool)

(assert (=> d!935848 (= c!565183 ((_ is Node!11035) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))))))

(declare-fun e!2069517 () Bool)

(assert (=> d!935848 (= (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))) e!2069517)))

(declare-fun b!3327842 () Bool)

(assert (=> b!3327842 (= e!2069517 (inv!49667 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))))))

(declare-fun b!3327843 () Bool)

(declare-fun e!2069518 () Bool)

(assert (=> b!3327843 (= e!2069517 e!2069518)))

(declare-fun res!1349744 () Bool)

(assert (=> b!3327843 (= res!1349744 (not ((_ is Leaf!17311) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))))))))

(assert (=> b!3327843 (=> res!1349744 e!2069518)))

(declare-fun b!3327844 () Bool)

(assert (=> b!3327844 (= e!2069518 (inv!49668 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))))))

(assert (= (and d!935848 c!565183) b!3327842))

(assert (= (and d!935848 (not c!565183)) b!3327843))

(assert (= (and b!3327843 (not res!1349744)) b!3327844))

(declare-fun m!3668309 () Bool)

(assert (=> b!3327842 m!3668309))

(declare-fun m!3668311 () Bool)

(assert (=> b!3327844 m!3668311))

(assert (=> b!3327366 d!935848))

(declare-fun d!935850 () Bool)

(assert (=> d!935850 (= (list!13197 lt!1130641) (list!13201 (c!565061 lt!1130641)))))

(declare-fun bs!551032 () Bool)

(assert (= bs!551032 d!935850))

(declare-fun m!3668317 () Bool)

(assert (=> bs!551032 m!3668317))

(assert (=> d!935636 d!935850))

(assert (=> b!3327559 d!935690))

(declare-fun d!935852 () Bool)

(assert (=> d!935852 (= (inv!16 (value!172365 separatorToken!241)) (= (charsToInt!0 (text!39367 (value!172365 separatorToken!241))) (value!172356 (value!172365 separatorToken!241))))))

(declare-fun bs!551033 () Bool)

(assert (= bs!551033 d!935852))

(declare-fun m!3668321 () Bool)

(assert (=> bs!551033 m!3668321))

(assert (=> b!3327534 d!935852))

(declare-fun d!935854 () Bool)

(assert (=> d!935854 (= (list!13197 lt!1130638) (list!13201 (c!565061 lt!1130638)))))

(declare-fun bs!551034 () Bool)

(assert (= bs!551034 d!935854))

(declare-fun m!3668323 () Bool)

(assert (=> bs!551034 m!3668323))

(assert (=> d!935634 d!935854))

(declare-fun d!935856 () Bool)

(declare-fun c!565190 () Bool)

(assert (=> d!935856 (= c!565190 ((_ is Cons!36660) (list!13200 lt!1130563)))))

(declare-fun e!2069526 () List!36783)

(assert (=> d!935856 (= (printWithSeparatorTokenList!226 thiss!18206 (list!13200 lt!1130563) separatorToken!241) e!2069526)))

(declare-fun b!3327858 () Bool)

(assert (=> b!3327858 (= e!2069526 (++!8907 (++!8907 (list!13197 (charsOf!3344 (h!42080 (list!13200 lt!1130563)))) (list!13197 (charsOf!3344 separatorToken!241))) (printWithSeparatorTokenList!226 thiss!18206 (t!256741 (list!13200 lt!1130563)) separatorToken!241)))))

(declare-fun b!3327859 () Bool)

(assert (=> b!3327859 (= e!2069526 Nil!36659)))

(assert (= (and d!935856 c!565190) b!3327858))

(assert (= (and d!935856 (not c!565190)) b!3327859))

(declare-fun m!3668335 () Bool)

(assert (=> b!3327858 m!3668335))

(declare-fun m!3668337 () Bool)

(assert (=> b!3327858 m!3668337))

(declare-fun m!3668339 () Bool)

(assert (=> b!3327858 m!3668339))

(assert (=> b!3327858 m!3667429))

(assert (=> b!3327858 m!3668337))

(assert (=> b!3327858 m!3667429))

(assert (=> b!3327858 m!3667433))

(declare-fun m!3668341 () Bool)

(assert (=> b!3327858 m!3668341))

(assert (=> b!3327858 m!3668335))

(declare-fun m!3668343 () Bool)

(assert (=> b!3327858 m!3668343))

(assert (=> b!3327858 m!3668339))

(assert (=> b!3327858 m!3667433))

(assert (=> b!3327858 m!3668341))

(assert (=> d!935634 d!935856))

(assert (=> d!935634 d!935738))

(declare-fun d!935868 () Bool)

(declare-fun lt!1130839 () BalanceConc!21684)

(declare-fun printWithSeparatorTokenListTailRec!23 (LexerInterface!4919 List!36784 Token!10026 List!36783) List!36783)

(assert (=> d!935868 (= (list!13197 lt!1130839) (printWithSeparatorTokenListTailRec!23 thiss!18206 (dropList!1135 lt!1130563 0) separatorToken!241 (list!13197 (BalanceConc!21685 Empty!11035))))))

(declare-fun e!2069543 () BalanceConc!21684)

(assert (=> d!935868 (= lt!1130839 e!2069543)))

(declare-fun c!565200 () Bool)

(assert (=> d!935868 (= c!565200 (>= 0 (size!27715 lt!1130563)))))

(declare-fun e!2069542 () Bool)

(assert (=> d!935868 e!2069542))

(declare-fun res!1349752 () Bool)

(assert (=> d!935868 (=> (not res!1349752) (not e!2069542))))

(assert (=> d!935868 (= res!1349752 (>= 0 0))))

(assert (=> d!935868 (= (printWithSeparatorTokenTailRec!42 thiss!18206 lt!1130563 separatorToken!241 0 (BalanceConc!21685 Empty!11035)) lt!1130839)))

(declare-fun b!3327884 () Bool)

(assert (=> b!3327884 (= e!2069542 (<= 0 (size!27715 lt!1130563)))))

(declare-fun b!3327885 () Bool)

(assert (=> b!3327885 (= e!2069543 (BalanceConc!21685 Empty!11035))))

(declare-fun b!3327886 () Bool)

(assert (=> b!3327886 (= e!2069543 (printWithSeparatorTokenTailRec!42 thiss!18206 lt!1130563 separatorToken!241 (+ 0 1) (++!8909 (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (apply!8464 lt!1130563 0))) (charsOf!3344 separatorToken!241))))))

(declare-fun lt!1130836 () List!36784)

(assert (=> b!3327886 (= lt!1130836 (list!13200 lt!1130563))))

(declare-fun lt!1130837 () Unit!51672)

(assert (=> b!3327886 (= lt!1130837 (lemmaDropApply!1093 lt!1130836 0))))

(assert (=> b!3327886 (= (head!7159 (drop!1927 lt!1130836 0)) (apply!8465 lt!1130836 0))))

(declare-fun lt!1130838 () Unit!51672)

(assert (=> b!3327886 (= lt!1130838 lt!1130837)))

(declare-fun lt!1130835 () List!36784)

(assert (=> b!3327886 (= lt!1130835 (list!13200 lt!1130563))))

(declare-fun lt!1130834 () Unit!51672)

(assert (=> b!3327886 (= lt!1130834 (lemmaDropTail!977 lt!1130835 0))))

(assert (=> b!3327886 (= (tail!5296 (drop!1927 lt!1130835 0)) (drop!1927 lt!1130835 (+ 0 1)))))

(declare-fun lt!1130833 () Unit!51672)

(assert (=> b!3327886 (= lt!1130833 lt!1130834)))

(assert (= (and d!935868 res!1349752) b!3327884))

(assert (= (and d!935868 c!565200) b!3327885))

(assert (= (and d!935868 (not c!565200)) b!3327886))

(declare-fun m!3668365 () Bool)

(assert (=> d!935868 m!3668365))

(declare-fun m!3668367 () Bool)

(assert (=> d!935868 m!3668367))

(assert (=> d!935868 m!3667823))

(declare-fun m!3668369 () Bool)

(assert (=> d!935868 m!3668369))

(assert (=> d!935868 m!3667823))

(declare-fun m!3668371 () Bool)

(assert (=> d!935868 m!3668371))

(assert (=> d!935868 m!3668369))

(assert (=> b!3327884 m!3668365))

(declare-fun m!3668373 () Bool)

(assert (=> b!3327886 m!3668373))

(declare-fun m!3668375 () Bool)

(assert (=> b!3327886 m!3668375))

(assert (=> b!3327886 m!3667429))

(declare-fun m!3668377 () Bool)

(assert (=> b!3327886 m!3668377))

(declare-fun m!3668379 () Bool)

(assert (=> b!3327886 m!3668379))

(assert (=> b!3327886 m!3668375))

(assert (=> b!3327886 m!3668373))

(assert (=> b!3327886 m!3668379))

(declare-fun m!3668381 () Bool)

(assert (=> b!3327886 m!3668381))

(declare-fun m!3668383 () Bool)

(assert (=> b!3327886 m!3668383))

(declare-fun m!3668385 () Bool)

(assert (=> b!3327886 m!3668385))

(declare-fun m!3668387 () Bool)

(assert (=> b!3327886 m!3668387))

(declare-fun m!3668389 () Bool)

(assert (=> b!3327886 m!3668389))

(declare-fun m!3668391 () Bool)

(assert (=> b!3327886 m!3668391))

(assert (=> b!3327886 m!3668391))

(declare-fun m!3668393 () Bool)

(assert (=> b!3327886 m!3668393))

(assert (=> b!3327886 m!3668377))

(declare-fun m!3668395 () Bool)

(assert (=> b!3327886 m!3668395))

(assert (=> b!3327886 m!3667705))

(assert (=> b!3327886 m!3667429))

(declare-fun m!3668397 () Bool)

(assert (=> b!3327886 m!3668397))

(assert (=> b!3327886 m!3668385))

(assert (=> d!935634 d!935868))

(assert (=> d!935696 d!935692))

(assert (=> d!935696 d!935694))

(declare-fun d!935878 () Bool)

(assert (=> d!935878 (isEmpty!20819 (getSuffix!1424 lt!1130562 lt!1130562))))

(assert (=> d!935878 true))

(declare-fun _$66!393 () Unit!51672)

(assert (=> d!935878 (= (choose!19277 lt!1130562) _$66!393)))

(declare-fun bs!551039 () Bool)

(assert (= bs!551039 d!935878))

(assert (=> bs!551039 m!3667441))

(assert (=> bs!551039 m!3667441))

(assert (=> bs!551039 m!3667443))

(assert (=> d!935696 d!935878))

(declare-fun bs!551040 () Bool)

(declare-fun d!935882 () Bool)

(assert (= bs!551040 (and d!935882 b!3327193)))

(declare-fun lambda!119730 () Int)

(assert (=> bs!551040 (not (= lambda!119730 lambda!119701))))

(declare-fun bs!551041 () Bool)

(assert (= bs!551041 (and d!935882 d!935566)))

(assert (=> bs!551041 (= lambda!119730 lambda!119704)))

(declare-fun bs!551042 () Bool)

(assert (= bs!551042 (and d!935882 d!935630)))

(assert (=> bs!551042 (= lambda!119730 lambda!119709)))

(declare-fun bs!551043 () Bool)

(assert (= bs!551043 (and d!935882 d!935736)))

(assert (=> bs!551043 (= lambda!119730 lambda!119722)))

(declare-fun b!3327897 () Bool)

(declare-fun e!2069551 () Bool)

(assert (=> b!3327897 (= e!2069551 true)))

(declare-fun b!3327896 () Bool)

(declare-fun e!2069550 () Bool)

(assert (=> b!3327896 (= e!2069550 e!2069551)))

(declare-fun b!3327895 () Bool)

(declare-fun e!2069549 () Bool)

(assert (=> b!3327895 (= e!2069549 e!2069550)))

(assert (=> d!935882 e!2069549))

(assert (= b!3327896 b!3327897))

(assert (= b!3327895 b!3327896))

(assert (= (and d!935882 ((_ is Cons!36661) rules!2135)) b!3327895))

(assert (=> b!3327897 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119730))))

(assert (=> b!3327897 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15115 order!19169 lambda!119730))))

(assert (=> d!935882 true))

(declare-fun lt!1130840 () Bool)

(assert (=> d!935882 (= lt!1130840 (forall!7647 (t!256741 tokens!494) lambda!119730))))

(declare-fun e!2069548 () Bool)

(assert (=> d!935882 (= lt!1130840 e!2069548)))

(declare-fun res!1349754 () Bool)

(assert (=> d!935882 (=> res!1349754 e!2069548)))

(assert (=> d!935882 (= res!1349754 (not ((_ is Cons!36660) (t!256741 tokens!494))))))

(assert (=> d!935882 (not (isEmpty!20820 rules!2135))))

(assert (=> d!935882 (= (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 (t!256741 tokens!494)) lt!1130840)))

(declare-fun b!3327893 () Bool)

(declare-fun e!2069547 () Bool)

(assert (=> b!3327893 (= e!2069548 e!2069547)))

(declare-fun res!1349753 () Bool)

(assert (=> b!3327893 (=> (not res!1349753) (not e!2069547))))

(assert (=> b!3327893 (= res!1349753 (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 (h!42080 (t!256741 tokens!494))))))

(declare-fun b!3327894 () Bool)

(assert (=> b!3327894 (= e!2069547 (rulesProduceEachTokenIndividuallyList!1785 thiss!18206 rules!2135 (t!256741 (t!256741 tokens!494))))))

(assert (= (and d!935882 (not res!1349754)) b!3327893))

(assert (= (and b!3327893 res!1349753) b!3327894))

(declare-fun m!3668403 () Bool)

(assert (=> d!935882 m!3668403))

(assert (=> d!935882 m!3667379))

(declare-fun m!3668405 () Bool)

(assert (=> b!3327893 m!3668405))

(declare-fun m!3668407 () Bool)

(assert (=> b!3327894 m!3668407))

(assert (=> b!3327336 d!935882))

(declare-fun d!935884 () Bool)

(declare-fun lt!1130841 () Bool)

(assert (=> d!935884 (= lt!1130841 (isEmpty!20819 (list!13197 (_2!21213 lt!1130688))))))

(assert (=> d!935884 (= lt!1130841 (isEmpty!20828 (c!565061 (_2!21213 lt!1130688))))))

(assert (=> d!935884 (= (isEmpty!20827 (_2!21213 lt!1130688)) lt!1130841)))

(declare-fun bs!551044 () Bool)

(assert (= bs!551044 d!935884))

(declare-fun m!3668409 () Bool)

(assert (=> bs!551044 m!3668409))

(assert (=> bs!551044 m!3668409))

(declare-fun m!3668411 () Bool)

(assert (=> bs!551044 m!3668411))

(declare-fun m!3668413 () Bool)

(assert (=> bs!551044 m!3668413))

(assert (=> b!3327538 d!935884))

(declare-fun b!3327903 () Bool)

(declare-fun e!2069557 () List!36783)

(assert (=> b!3327903 (= e!2069557 Nil!36659)))

(declare-fun e!2069559 () List!36783)

(declare-fun b!3327907 () Bool)

(assert (=> b!3327907 (= e!2069559 (++!8907 (list!13201 (left!28570 (c!565061 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241)))) (list!13201 (right!28900 (c!565061 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241))))))))

(declare-fun d!935886 () Bool)

(declare-fun c!565204 () Bool)

(assert (=> d!935886 (= c!565204 ((_ is Empty!11035) (c!565061 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241))))))

(assert (=> d!935886 (= (list!13201 (c!565061 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241))) e!2069557)))

(declare-fun b!3327905 () Bool)

(assert (=> b!3327905 (= e!2069557 e!2069559)))

(declare-fun c!565205 () Bool)

(assert (=> b!3327905 (= c!565205 ((_ is Leaf!17311) (c!565061 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241))))))

(declare-fun b!3327906 () Bool)

(assert (=> b!3327906 (= e!2069559 (list!13205 (xs!14173 (c!565061 (printWithSeparatorToken!110 thiss!18206 lt!1130563 separatorToken!241)))))))

(assert (= (and d!935886 c!565204) b!3327903))

(assert (= (and d!935886 (not c!565204)) b!3327905))

(assert (= (and b!3327905 c!565205) b!3327906))

(assert (= (and b!3327905 (not c!565205)) b!3327907))

(declare-fun m!3668417 () Bool)

(assert (=> b!3327907 m!3668417))

(declare-fun m!3668421 () Bool)

(assert (=> b!3327907 m!3668421))

(assert (=> b!3327907 m!3668417))

(assert (=> b!3327907 m!3668421))

(declare-fun m!3668423 () Bool)

(assert (=> b!3327907 m!3668423))

(declare-fun m!3668425 () Bool)

(assert (=> b!3327906 m!3668425))

(assert (=> d!935642 d!935886))

(declare-fun d!935890 () Bool)

(assert (=> d!935890 (= (inv!49666 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))) (isBalanced!3312 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))))))

(declare-fun bs!551045 () Bool)

(assert (= bs!551045 d!935890))

(declare-fun m!3668427 () Bool)

(assert (=> bs!551045 m!3668427))

(assert (=> tb!174217 d!935890))

(declare-fun d!935892 () Bool)

(declare-fun charsToBigInt!1 (List!36782) Int)

(assert (=> d!935892 (= (inv!17 (value!172365 (h!42080 tokens!494))) (= (charsToBigInt!1 (text!39368 (value!172365 (h!42080 tokens!494)))) (value!172357 (value!172365 (h!42080 tokens!494)))))))

(declare-fun bs!551046 () Bool)

(assert (= bs!551046 d!935892))

(declare-fun m!3668433 () Bool)

(assert (=> bs!551046 m!3668433))

(assert (=> b!3327543 d!935892))

(declare-fun lt!1130844 () Bool)

(declare-fun d!935896 () Bool)

(assert (=> d!935896 (= lt!1130844 (isEmpty!20819 (list!13197 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))))))))))

(assert (=> d!935896 (= lt!1130844 (isEmpty!20828 (c!565061 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))))))))))

(assert (=> d!935896 (= (isEmpty!20827 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)))))) lt!1130844)))

(declare-fun bs!551047 () Bool)

(assert (= bs!551047 d!935896))

(declare-fun m!3668435 () Bool)

(assert (=> bs!551047 m!3668435))

(assert (=> bs!551047 m!3668435))

(declare-fun m!3668437 () Bool)

(assert (=> bs!551047 m!3668437))

(declare-fun m!3668439 () Bool)

(assert (=> bs!551047 m!3668439))

(assert (=> b!3327498 d!935896))

(declare-fun lt!1130845 () tuple2!36158)

(declare-fun e!2069565 () Bool)

(declare-fun b!3327914 () Bool)

(assert (=> b!3327914 (= e!2069565 (= (_2!21213 lt!1130845) (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)))))))

(declare-fun b!3327915 () Bool)

(declare-fun res!1349764 () Bool)

(declare-fun e!2069566 () Bool)

(assert (=> b!3327915 (=> (not res!1349764) (not e!2069566))))

(assert (=> b!3327915 (= res!1349764 (= (list!13200 (_1!21213 lt!1130845)) (_1!21215 (lexList!1376 thiss!18206 rules!2135 (list!13197 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))))))))))

(declare-fun b!3327916 () Bool)

(declare-fun e!2069564 () Bool)

(assert (=> b!3327916 (= e!2069565 e!2069564)))

(declare-fun res!1349765 () Bool)

(assert (=> b!3327916 (= res!1349765 (< (size!27714 (_2!21213 lt!1130845)) (size!27714 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))))))))

(assert (=> b!3327916 (=> (not res!1349765) (not e!2069564))))

(declare-fun b!3327917 () Bool)

(assert (=> b!3327917 (= e!2069564 (not (isEmpty!20821 (_1!21213 lt!1130845))))))

(declare-fun d!935898 () Bool)

(assert (=> d!935898 e!2069566))

(declare-fun res!1349763 () Bool)

(assert (=> d!935898 (=> (not res!1349763) (not e!2069566))))

(assert (=> d!935898 (= res!1349763 e!2069565)))

(declare-fun c!565208 () Bool)

(assert (=> d!935898 (= c!565208 (> (size!27715 (_1!21213 lt!1130845)) 0))))

(assert (=> d!935898 (= lt!1130845 (lexTailRecV2!986 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))) (BalanceConc!21685 Empty!11035) (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))) (BalanceConc!21687 Empty!11036)))))

(assert (=> d!935898 (= (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)))) lt!1130845)))

(declare-fun b!3327918 () Bool)

(assert (=> b!3327918 (= e!2069566 (= (list!13197 (_2!21213 lt!1130845)) (_2!21215 (lexList!1376 thiss!18206 rules!2135 (list!13197 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))))))))))

(assert (= (and d!935898 c!565208) b!3327916))

(assert (= (and d!935898 (not c!565208)) b!3327914))

(assert (= (and b!3327916 res!1349765) b!3327917))

(assert (= (and d!935898 res!1349763) b!3327915))

(assert (= (and b!3327915 res!1349764) b!3327918))

(declare-fun m!3668443 () Bool)

(assert (=> b!3327917 m!3668443))

(declare-fun m!3668445 () Bool)

(assert (=> b!3327918 m!3668445))

(assert (=> b!3327918 m!3667799))

(declare-fun m!3668447 () Bool)

(assert (=> b!3327918 m!3668447))

(assert (=> b!3327918 m!3668447))

(declare-fun m!3668449 () Bool)

(assert (=> b!3327918 m!3668449))

(declare-fun m!3668451 () Bool)

(assert (=> d!935898 m!3668451))

(assert (=> d!935898 m!3667799))

(assert (=> d!935898 m!3667799))

(declare-fun m!3668453 () Bool)

(assert (=> d!935898 m!3668453))

(declare-fun m!3668455 () Bool)

(assert (=> b!3327915 m!3668455))

(assert (=> b!3327915 m!3667799))

(assert (=> b!3327915 m!3668447))

(assert (=> b!3327915 m!3668447))

(assert (=> b!3327915 m!3668449))

(declare-fun m!3668457 () Bool)

(assert (=> b!3327916 m!3668457))

(assert (=> b!3327916 m!3667799))

(declare-fun m!3668459 () Bool)

(assert (=> b!3327916 m!3668459))

(assert (=> b!3327498 d!935898))

(declare-fun d!935902 () Bool)

(declare-fun lt!1130847 () BalanceConc!21684)

(assert (=> d!935902 (= (list!13197 lt!1130847) (printList!1467 thiss!18206 (list!13200 (singletonSeq!2426 (h!42080 tokens!494)))))))

(assert (=> d!935902 (= lt!1130847 (printTailRec!1414 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)) 0 (BalanceConc!21685 Empty!11035)))))

(assert (=> d!935902 (= (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))) lt!1130847)))

(declare-fun bs!551048 () Bool)

(assert (= bs!551048 d!935902))

(declare-fun m!3668461 () Bool)

(assert (=> bs!551048 m!3668461))

(assert (=> bs!551048 m!3667417))

(assert (=> bs!551048 m!3667801))

(assert (=> bs!551048 m!3667801))

(declare-fun m!3668463 () Bool)

(assert (=> bs!551048 m!3668463))

(assert (=> bs!551048 m!3667417))

(declare-fun m!3668465 () Bool)

(assert (=> bs!551048 m!3668465))

(assert (=> b!3327498 d!935902))

(assert (=> b!3327498 d!935670))

(declare-fun d!935904 () Bool)

(assert (=> d!935904 (= (isEmpty!20819 (originalCharacters!6044 separatorToken!241)) ((_ is Nil!36659) (originalCharacters!6044 separatorToken!241)))))

(assert (=> d!935626 d!935904))

(declare-fun d!935906 () Bool)

(assert (=> d!935906 (dynLambda!15113 lambda!119701 (h!42080 tokens!494))))

(assert (=> d!935906 true))

(declare-fun _$7!1182 () Unit!51672)

(assert (=> d!935906 (= (choose!19278 tokens!494 lambda!119701 (h!42080 tokens!494)) _$7!1182)))

(declare-fun b_lambda!93951 () Bool)

(assert (=> (not b_lambda!93951) (not d!935906)))

(declare-fun bs!551049 () Bool)

(assert (= bs!551049 d!935906))

(assert (=> bs!551049 m!3667483))

(assert (=> d!935702 d!935906))

(assert (=> d!935702 d!935556))

(declare-fun b!3327921 () Bool)

(declare-fun e!2069568 () List!36783)

(assert (=> b!3327921 (= e!2069568 Nil!36659)))

(declare-fun b!3327924 () Bool)

(declare-fun e!2069569 () List!36783)

(assert (=> b!3327924 (= e!2069569 (++!8907 (list!13201 (left!28570 (c!565061 (charsOf!3344 separatorToken!241)))) (list!13201 (right!28900 (c!565061 (charsOf!3344 separatorToken!241))))))))

(declare-fun d!935908 () Bool)

(declare-fun c!565211 () Bool)

(assert (=> d!935908 (= c!565211 ((_ is Empty!11035) (c!565061 (charsOf!3344 separatorToken!241))))))

(assert (=> d!935908 (= (list!13201 (c!565061 (charsOf!3344 separatorToken!241))) e!2069568)))

(declare-fun b!3327922 () Bool)

(assert (=> b!3327922 (= e!2069568 e!2069569)))

(declare-fun c!565212 () Bool)

(assert (=> b!3327922 (= c!565212 ((_ is Leaf!17311) (c!565061 (charsOf!3344 separatorToken!241))))))

(declare-fun b!3327923 () Bool)

(assert (=> b!3327923 (= e!2069569 (list!13205 (xs!14173 (c!565061 (charsOf!3344 separatorToken!241)))))))

(assert (= (and d!935908 c!565211) b!3327921))

(assert (= (and d!935908 (not c!565211)) b!3327922))

(assert (= (and b!3327922 c!565212) b!3327923))

(assert (= (and b!3327922 (not c!565212)) b!3327924))

(declare-fun m!3668467 () Bool)

(assert (=> b!3327924 m!3668467))

(declare-fun m!3668469 () Bool)

(assert (=> b!3327924 m!3668469))

(assert (=> b!3327924 m!3668467))

(assert (=> b!3327924 m!3668469))

(declare-fun m!3668471 () Bool)

(assert (=> b!3327924 m!3668471))

(declare-fun m!3668473 () Bool)

(assert (=> b!3327923 m!3668473))

(assert (=> d!935638 d!935908))

(declare-fun d!935910 () Bool)

(declare-fun charsToBigInt!0 (List!36782 Int) Int)

(assert (=> d!935910 (= (inv!15 (value!172365 (h!42080 tokens!494))) (= (charsToBigInt!0 (text!39369 (value!172365 (h!42080 tokens!494))) 0) (value!172360 (value!172365 (h!42080 tokens!494)))))))

(declare-fun bs!551050 () Bool)

(assert (= bs!551050 d!935910))

(declare-fun m!3668489 () Bool)

(assert (=> bs!551050 m!3668489))

(assert (=> b!3327541 d!935910))

(declare-fun d!935916 () Bool)

(assert (=> d!935916 (= (inv!49658 (tag!5882 (h!42081 (t!256742 rules!2135)))) (= (mod (str.len (value!172364 (tag!5882 (h!42081 (t!256742 rules!2135))))) 2) 0))))

(assert (=> b!3327601 d!935916))

(declare-fun d!935918 () Bool)

(declare-fun res!1349771 () Bool)

(declare-fun e!2069577 () Bool)

(assert (=> d!935918 (=> (not res!1349771) (not e!2069577))))

(assert (=> d!935918 (= res!1349771 (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toValue!7490 (transformation!5330 (h!42081 (t!256742 rules!2135))))))))

(assert (=> d!935918 (= (inv!49661 (transformation!5330 (h!42081 (t!256742 rules!2135)))) e!2069577)))

(declare-fun b!3327935 () Bool)

(assert (=> b!3327935 (= e!2069577 (equivClasses!2112 (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toValue!7490 (transformation!5330 (h!42081 (t!256742 rules!2135))))))))

(assert (= (and d!935918 res!1349771) b!3327935))

(declare-fun m!3668495 () Bool)

(assert (=> d!935918 m!3668495))

(declare-fun m!3668497 () Bool)

(assert (=> b!3327935 m!3668497))

(assert (=> b!3327601 d!935918))

(declare-fun d!935920 () Bool)

(declare-fun res!1349772 () Bool)

(declare-fun e!2069578 () Bool)

(assert (=> d!935920 (=> res!1349772 e!2069578)))

(assert (=> d!935920 (= res!1349772 ((_ is Nil!36660) (t!256741 tokens!494)))))

(assert (=> d!935920 (= (forall!7647 (t!256741 tokens!494) lambda!119701) e!2069578)))

(declare-fun b!3327936 () Bool)

(declare-fun e!2069579 () Bool)

(assert (=> b!3327936 (= e!2069578 e!2069579)))

(declare-fun res!1349773 () Bool)

(assert (=> b!3327936 (=> (not res!1349773) (not e!2069579))))

(assert (=> b!3327936 (= res!1349773 (dynLambda!15113 lambda!119701 (h!42080 (t!256741 tokens!494))))))

(declare-fun b!3327937 () Bool)

(assert (=> b!3327937 (= e!2069579 (forall!7647 (t!256741 (t!256741 tokens!494)) lambda!119701))))

(assert (= (and d!935920 (not res!1349772)) b!3327936))

(assert (= (and b!3327936 res!1349773) b!3327937))

(declare-fun b_lambda!93955 () Bool)

(assert (=> (not b_lambda!93955) (not b!3327936)))

(declare-fun m!3668507 () Bool)

(assert (=> b!3327936 m!3668507))

(declare-fun m!3668509 () Bool)

(assert (=> b!3327937 m!3668509))

(assert (=> b!3327246 d!935920))

(declare-fun d!935924 () Bool)

(declare-fun lt!1130858 () Token!10026)

(assert (=> d!935924 (= lt!1130858 (apply!8465 (list!13200 (_1!21213 lt!1130659)) 0))))

(declare-fun apply!8467 (Conc!11036 Int) Token!10026)

(assert (=> d!935924 (= lt!1130858 (apply!8467 (c!565062 (_1!21213 lt!1130659)) 0))))

(declare-fun e!2069587 () Bool)

(assert (=> d!935924 e!2069587))

(declare-fun res!1349781 () Bool)

(assert (=> d!935924 (=> (not res!1349781) (not e!2069587))))

(assert (=> d!935924 (= res!1349781 (<= 0 0))))

(assert (=> d!935924 (= (apply!8464 (_1!21213 lt!1130659) 0) lt!1130858)))

(declare-fun b!3327945 () Bool)

(assert (=> b!3327945 (= e!2069587 (< 0 (size!27715 (_1!21213 lt!1130659))))))

(assert (= (and d!935924 res!1349781) b!3327945))

(declare-fun m!3668539 () Bool)

(assert (=> d!935924 m!3668539))

(assert (=> d!935924 m!3668539))

(declare-fun m!3668543 () Bool)

(assert (=> d!935924 m!3668543))

(declare-fun m!3668547 () Bool)

(assert (=> d!935924 m!3668547))

(assert (=> b!3327945 m!3667803))

(assert (=> b!3327496 d!935924))

(declare-fun d!935942 () Bool)

(assert (=> d!935942 true))

(declare-fun order!19183 () Int)

(declare-fun lambda!119735 () Int)

(declare-fun dynLambda!15123 (Int Int) Int)

(assert (=> d!935942 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))) (dynLambda!15123 order!19183 lambda!119735))))

(declare-fun Forall2!902 (Int) Bool)

(assert (=> d!935942 (= (equivClasses!2112 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))) (Forall2!902 lambda!119735))))

(declare-fun bs!551063 () Bool)

(assert (= bs!551063 d!935942))

(declare-fun m!3668591 () Bool)

(assert (=> bs!551063 m!3668591))

(assert (=> b!3327521 d!935942))

(declare-fun bs!551064 () Bool)

(declare-fun d!935960 () Bool)

(assert (= bs!551064 (and d!935960 d!935942)))

(declare-fun lambda!119736 () Int)

(assert (=> bs!551064 (= (= (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))) (= lambda!119736 lambda!119735))))

(assert (=> d!935960 true))

(assert (=> d!935960 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) (dynLambda!15123 order!19183 lambda!119736))))

(assert (=> d!935960 (= (equivClasses!2112 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) (Forall2!902 lambda!119736))))

(declare-fun bs!551065 () Bool)

(assert (= bs!551065 d!935960))

(declare-fun m!3668593 () Bool)

(assert (=> bs!551065 m!3668593))

(assert (=> b!3327520 d!935960))

(declare-fun bs!551066 () Bool)

(declare-fun d!935962 () Bool)

(assert (= bs!551066 (and d!935962 d!935942)))

(declare-fun lambda!119737 () Int)

(assert (=> bs!551066 (= (= (toValue!7490 (transformation!5330 (h!42081 rules!2135))) (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))) (= lambda!119737 lambda!119735))))

(declare-fun bs!551067 () Bool)

(assert (= bs!551067 (and d!935962 d!935960)))

(assert (=> bs!551067 (= (= (toValue!7490 (transformation!5330 (h!42081 rules!2135))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) (= lambda!119737 lambda!119736))))

(assert (=> d!935962 true))

(assert (=> d!935962 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (dynLambda!15123 order!19183 lambda!119737))))

(assert (=> d!935962 (= (equivClasses!2112 (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toValue!7490 (transformation!5330 (h!42081 rules!2135)))) (Forall2!902 lambda!119737))))

(declare-fun bs!551069 () Bool)

(assert (= bs!551069 d!935962))

(declare-fun m!3668595 () Bool)

(assert (=> bs!551069 m!3668595))

(assert (=> b!3327352 d!935962))

(declare-fun b!3327986 () Bool)

(declare-fun e!2069608 () Bool)

(assert (=> b!3327986 (= e!2069608 (not (isEmpty!20826 (right!28901 (c!565062 lt!1130687)))))))

(declare-fun b!3327987 () Bool)

(declare-fun res!1349807 () Bool)

(assert (=> b!3327987 (=> (not res!1349807) (not e!2069608))))

(declare-fun height!1630 (Conc!11036) Int)

(assert (=> b!3327987 (= res!1349807 (<= (- (height!1630 (left!28571 (c!565062 lt!1130687))) (height!1630 (right!28901 (c!565062 lt!1130687)))) 1))))

(declare-fun b!3327988 () Bool)

(declare-fun res!1349805 () Bool)

(assert (=> b!3327988 (=> (not res!1349805) (not e!2069608))))

(assert (=> b!3327988 (= res!1349805 (isBalanced!3311 (left!28571 (c!565062 lt!1130687))))))

(declare-fun b!3327989 () Bool)

(declare-fun e!2069607 () Bool)

(assert (=> b!3327989 (= e!2069607 e!2069608)))

(declare-fun res!1349808 () Bool)

(assert (=> b!3327989 (=> (not res!1349808) (not e!2069608))))

(assert (=> b!3327989 (= res!1349808 (<= (- 1) (- (height!1630 (left!28571 (c!565062 lt!1130687))) (height!1630 (right!28901 (c!565062 lt!1130687))))))))

(declare-fun d!935964 () Bool)

(declare-fun res!1349806 () Bool)

(assert (=> d!935964 (=> res!1349806 e!2069607)))

(assert (=> d!935964 (= res!1349806 (not ((_ is Node!11036) (c!565062 lt!1130687))))))

(assert (=> d!935964 (= (isBalanced!3311 (c!565062 lt!1130687)) e!2069607)))

(declare-fun b!3327990 () Bool)

(declare-fun res!1349809 () Bool)

(assert (=> b!3327990 (=> (not res!1349809) (not e!2069608))))

(assert (=> b!3327990 (= res!1349809 (isBalanced!3311 (right!28901 (c!565062 lt!1130687))))))

(declare-fun b!3327991 () Bool)

(declare-fun res!1349810 () Bool)

(assert (=> b!3327991 (=> (not res!1349810) (not e!2069608))))

(assert (=> b!3327991 (= res!1349810 (not (isEmpty!20826 (left!28571 (c!565062 lt!1130687)))))))

(assert (= (and d!935964 (not res!1349806)) b!3327989))

(assert (= (and b!3327989 res!1349808) b!3327987))

(assert (= (and b!3327987 res!1349807) b!3327988))

(assert (= (and b!3327988 res!1349805) b!3327990))

(assert (= (and b!3327990 res!1349809) b!3327991))

(assert (= (and b!3327991 res!1349810) b!3327986))

(declare-fun m!3668619 () Bool)

(assert (=> b!3327986 m!3668619))

(declare-fun m!3668621 () Bool)

(assert (=> b!3327991 m!3668621))

(declare-fun m!3668623 () Bool)

(assert (=> b!3327990 m!3668623))

(declare-fun m!3668625 () Bool)

(assert (=> b!3327987 m!3668625))

(declare-fun m!3668627 () Bool)

(assert (=> b!3327987 m!3668627))

(declare-fun m!3668629 () Bool)

(assert (=> b!3327988 m!3668629))

(assert (=> b!3327989 m!3668625))

(assert (=> b!3327989 m!3668627))

(assert (=> b!3327510 d!935964))

(declare-fun d!935976 () Bool)

(declare-fun lt!1130871 () Int)

(assert (=> d!935976 (= lt!1130871 (size!27713 (list!13197 (_2!21213 lt!1130651))))))

(declare-fun size!27720 (Conc!11035) Int)

(assert (=> d!935976 (= lt!1130871 (size!27720 (c!565061 (_2!21213 lt!1130651))))))

(assert (=> d!935976 (= (size!27714 (_2!21213 lt!1130651)) lt!1130871)))

(declare-fun bs!551076 () Bool)

(assert (= bs!551076 d!935976))

(assert (=> bs!551076 m!3667757))

(assert (=> bs!551076 m!3667757))

(declare-fun m!3668633 () Bool)

(assert (=> bs!551076 m!3668633))

(declare-fun m!3668635 () Bool)

(assert (=> bs!551076 m!3668635))

(assert (=> b!3327413 d!935976))

(declare-fun d!935980 () Bool)

(declare-fun lt!1130872 () Int)

(assert (=> d!935980 (= lt!1130872 (size!27713 (list!13197 (seqFromList!3714 lt!1130562))))))

(assert (=> d!935980 (= lt!1130872 (size!27720 (c!565061 (seqFromList!3714 lt!1130562))))))

(assert (=> d!935980 (= (size!27714 (seqFromList!3714 lt!1130562)) lt!1130872)))

(declare-fun bs!551078 () Bool)

(assert (= bs!551078 d!935980))

(assert (=> bs!551078 m!3667407))

(assert (=> bs!551078 m!3667759))

(assert (=> bs!551078 m!3667759))

(assert (=> bs!551078 m!3668161))

(declare-fun m!3668637 () Bool)

(assert (=> bs!551078 m!3668637))

(assert (=> b!3327413 d!935980))

(declare-fun d!935984 () Bool)

(assert (=> d!935984 (= (list!13197 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))) (list!13201 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))))))

(declare-fun bs!551079 () Bool)

(assert (= bs!551079 d!935984))

(declare-fun m!3668639 () Bool)

(assert (=> bs!551079 m!3668639))

(assert (=> b!3327357 d!935984))

(declare-fun d!935986 () Bool)

(declare-fun lt!1130873 () List!36783)

(assert (=> d!935986 (= (++!8907 (t!256740 lt!1130562) lt!1130873) (tail!5297 lt!1130562))))

(declare-fun e!2069609 () List!36783)

(assert (=> d!935986 (= lt!1130873 e!2069609)))

(declare-fun c!565220 () Bool)

(assert (=> d!935986 (= c!565220 ((_ is Cons!36659) (t!256740 lt!1130562)))))

(assert (=> d!935986 (>= (size!27713 (tail!5297 lt!1130562)) (size!27713 (t!256740 lt!1130562)))))

(assert (=> d!935986 (= (getSuffix!1424 (tail!5297 lt!1130562) (t!256740 lt!1130562)) lt!1130873)))

(declare-fun b!3327992 () Bool)

(assert (=> b!3327992 (= e!2069609 (getSuffix!1424 (tail!5297 (tail!5297 lt!1130562)) (t!256740 (t!256740 lt!1130562))))))

(declare-fun b!3327993 () Bool)

(assert (=> b!3327993 (= e!2069609 (tail!5297 lt!1130562))))

(assert (= (and d!935986 c!565220) b!3327992))

(assert (= (and d!935986 (not c!565220)) b!3327993))

(declare-fun m!3668641 () Bool)

(assert (=> d!935986 m!3668641))

(assert (=> d!935986 m!3667919))

(declare-fun m!3668643 () Bool)

(assert (=> d!935986 m!3668643))

(assert (=> d!935986 m!3668245))

(assert (=> b!3327992 m!3667919))

(declare-fun m!3668645 () Bool)

(assert (=> b!3327992 m!3668645))

(assert (=> b!3327992 m!3668645))

(declare-fun m!3668647 () Bool)

(assert (=> b!3327992 m!3668647))

(assert (=> b!3327555 d!935986))

(declare-fun d!935988 () Bool)

(assert (=> d!935988 (= (tail!5297 lt!1130562) (t!256740 lt!1130562))))

(assert (=> b!3327555 d!935988))

(declare-fun d!935990 () Bool)

(assert (=> d!935990 (= (list!13200 (singletonSeq!2426 separatorToken!241)) (list!13204 (c!565062 (singletonSeq!2426 separatorToken!241))))))

(declare-fun bs!551080 () Bool)

(assert (= bs!551080 d!935990))

(declare-fun m!3668649 () Bool)

(assert (=> bs!551080 m!3668649))

(assert (=> d!935686 d!935990))

(declare-fun d!935992 () Bool)

(assert (=> d!935992 (= (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241))))) (list!13204 (c!565062 (_1!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)))))))))

(declare-fun bs!551081 () Bool)

(assert (= bs!551081 d!935992))

(declare-fun m!3668651 () Bool)

(assert (=> bs!551081 m!3668651))

(assert (=> d!935686 d!935992))

(declare-fun d!935994 () Bool)

(declare-fun e!2069610 () Bool)

(assert (=> d!935994 e!2069610))

(declare-fun res!1349811 () Bool)

(assert (=> d!935994 (=> (not res!1349811) (not e!2069610))))

(declare-fun lt!1130874 () BalanceConc!21686)

(assert (=> d!935994 (= res!1349811 (= (list!13200 lt!1130874) (Cons!36660 separatorToken!241 Nil!36660)))))

(assert (=> d!935994 (= lt!1130874 (singleton!1050 separatorToken!241))))

(assert (=> d!935994 (= (singletonSeq!2426 separatorToken!241) lt!1130874)))

(declare-fun b!3327994 () Bool)

(assert (=> b!3327994 (= e!2069610 (isBalanced!3311 (c!565062 lt!1130874)))))

(assert (= (and d!935994 res!1349811) b!3327994))

(declare-fun m!3668653 () Bool)

(assert (=> d!935994 m!3668653))

(declare-fun m!3668655 () Bool)

(assert (=> d!935994 m!3668655))

(declare-fun m!3668657 () Bool)

(assert (=> b!3327994 m!3668657))

(assert (=> d!935686 d!935994))

(declare-fun d!935996 () Bool)

(declare-fun lt!1130877 () Int)

(assert (=> d!935996 (= lt!1130877 (size!27718 (list!13200 (_1!21213 lt!1130688))))))

(assert (=> d!935996 (= lt!1130877 (size!27719 (c!565062 (_1!21213 lt!1130688))))))

(assert (=> d!935996 (= (size!27715 (_1!21213 lt!1130688)) lt!1130877)))

(declare-fun bs!551082 () Bool)

(assert (= bs!551082 d!935996))

(declare-fun m!3668659 () Bool)

(assert (=> bs!551082 m!3668659))

(assert (=> bs!551082 m!3668659))

(declare-fun m!3668661 () Bool)

(assert (=> bs!551082 m!3668661))

(declare-fun m!3668663 () Bool)

(assert (=> bs!551082 m!3668663))

(assert (=> d!935686 d!935996))

(declare-fun d!935998 () Bool)

(declare-fun lt!1130878 () BalanceConc!21684)

(assert (=> d!935998 (= (list!13197 lt!1130878) (printList!1467 thiss!18206 (list!13200 (singletonSeq!2426 separatorToken!241))))))

(assert (=> d!935998 (= lt!1130878 (printTailRec!1414 thiss!18206 (singletonSeq!2426 separatorToken!241) 0 (BalanceConc!21685 Empty!11035)))))

(assert (=> d!935998 (= (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)) lt!1130878)))

(declare-fun bs!551083 () Bool)

(assert (= bs!551083 d!935998))

(declare-fun m!3668665 () Bool)

(assert (=> bs!551083 m!3668665))

(assert (=> bs!551083 m!3667889))

(assert (=> bs!551083 m!3667893))

(assert (=> bs!551083 m!3667893))

(declare-fun m!3668667 () Bool)

(assert (=> bs!551083 m!3668667))

(assert (=> bs!551083 m!3667889))

(declare-fun m!3668669 () Bool)

(assert (=> bs!551083 m!3668669))

(assert (=> d!935686 d!935998))

(assert (=> d!935686 d!935662))

(declare-fun lt!1130879 () tuple2!36158)

(declare-fun b!3327995 () Bool)

(declare-fun e!2069612 () Bool)

(assert (=> b!3327995 (= e!2069612 (= (_2!21213 lt!1130879) (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241))))))

(declare-fun b!3327996 () Bool)

(declare-fun res!1349813 () Bool)

(declare-fun e!2069613 () Bool)

(assert (=> b!3327996 (=> (not res!1349813) (not e!2069613))))

(assert (=> b!3327996 (= res!1349813 (= (list!13200 (_1!21213 lt!1130879)) (_1!21215 (lexList!1376 thiss!18206 rules!2135 (list!13197 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)))))))))

(declare-fun b!3327997 () Bool)

(declare-fun e!2069611 () Bool)

(assert (=> b!3327997 (= e!2069612 e!2069611)))

(declare-fun res!1349814 () Bool)

(assert (=> b!3327997 (= res!1349814 (< (size!27714 (_2!21213 lt!1130879)) (size!27714 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)))))))

(assert (=> b!3327997 (=> (not res!1349814) (not e!2069611))))

(declare-fun b!3327998 () Bool)

(assert (=> b!3327998 (= e!2069611 (not (isEmpty!20821 (_1!21213 lt!1130879))))))

(declare-fun d!936000 () Bool)

(assert (=> d!936000 e!2069613))

(declare-fun res!1349812 () Bool)

(assert (=> d!936000 (=> (not res!1349812) (not e!2069613))))

(assert (=> d!936000 (= res!1349812 e!2069612)))

(declare-fun c!565221 () Bool)

(assert (=> d!936000 (= c!565221 (> (size!27715 (_1!21213 lt!1130879)) 0))))

(assert (=> d!936000 (= lt!1130879 (lexTailRecV2!986 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)) (BalanceConc!21685 Empty!11035) (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)) (BalanceConc!21687 Empty!11036)))))

(assert (=> d!936000 (= (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241))) lt!1130879)))

(declare-fun b!3327999 () Bool)

(assert (=> b!3327999 (= e!2069613 (= (list!13197 (_2!21213 lt!1130879)) (_2!21215 (lexList!1376 thiss!18206 rules!2135 (list!13197 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)))))))))

(assert (= (and d!936000 c!565221) b!3327997))

(assert (= (and d!936000 (not c!565221)) b!3327995))

(assert (= (and b!3327997 res!1349814) b!3327998))

(assert (= (and d!936000 res!1349812) b!3327996))

(assert (= (and b!3327996 res!1349813) b!3327999))

(declare-fun m!3668671 () Bool)

(assert (=> b!3327998 m!3668671))

(declare-fun m!3668673 () Bool)

(assert (=> b!3327999 m!3668673))

(assert (=> b!3327999 m!3667891))

(declare-fun m!3668677 () Bool)

(assert (=> b!3327999 m!3668677))

(assert (=> b!3327999 m!3668677))

(declare-fun m!3668681 () Bool)

(assert (=> b!3327999 m!3668681))

(declare-fun m!3668683 () Bool)

(assert (=> d!936000 m!3668683))

(assert (=> d!936000 m!3667891))

(assert (=> d!936000 m!3667891))

(declare-fun m!3668687 () Bool)

(assert (=> d!936000 m!3668687))

(declare-fun m!3668689 () Bool)

(assert (=> b!3327996 m!3668689))

(assert (=> b!3327996 m!3667891))

(assert (=> b!3327996 m!3668677))

(assert (=> b!3327996 m!3668677))

(assert (=> b!3327996 m!3668681))

(declare-fun m!3668691 () Bool)

(assert (=> b!3327997 m!3668691))

(assert (=> b!3327997 m!3667891))

(declare-fun m!3668693 () Bool)

(assert (=> b!3327997 m!3668693))

(assert (=> d!935686 d!936000))

(declare-fun d!936006 () Bool)

(assert (=> d!936006 (= (list!13197 (_2!21213 lt!1130651)) (list!13201 (c!565061 (_2!21213 lt!1130651))))))

(declare-fun bs!551086 () Bool)

(assert (= bs!551086 d!936006))

(declare-fun m!3668695 () Bool)

(assert (=> bs!551086 m!3668695))

(assert (=> b!3327415 d!936006))

(assert (=> b!3327415 d!935786))

(assert (=> b!3327415 d!935796))

(declare-fun b!3328002 () Bool)

(declare-fun e!2069614 () List!36783)

(assert (=> b!3328002 (= e!2069614 Nil!36659)))

(declare-fun b!3328005 () Bool)

(declare-fun e!2069615 () List!36783)

(assert (=> b!3328005 (= e!2069615 (++!8907 (list!13201 (left!28570 (c!565061 lt!1130561))) (list!13201 (right!28900 (c!565061 lt!1130561)))))))

(declare-fun d!936008 () Bool)

(declare-fun c!565222 () Bool)

(assert (=> d!936008 (= c!565222 ((_ is Empty!11035) (c!565061 lt!1130561)))))

(assert (=> d!936008 (= (list!13201 (c!565061 lt!1130561)) e!2069614)))

(declare-fun b!3328003 () Bool)

(assert (=> b!3328003 (= e!2069614 e!2069615)))

(declare-fun c!565223 () Bool)

(assert (=> b!3328003 (= c!565223 ((_ is Leaf!17311) (c!565061 lt!1130561)))))

(declare-fun b!3328004 () Bool)

(assert (=> b!3328004 (= e!2069615 (list!13205 (xs!14173 (c!565061 lt!1130561))))))

(assert (= (and d!936008 c!565222) b!3328002))

(assert (= (and d!936008 (not c!565222)) b!3328003))

(assert (= (and b!3328003 c!565223) b!3328004))

(assert (= (and b!3328003 (not c!565223)) b!3328005))

(declare-fun m!3668697 () Bool)

(assert (=> b!3328005 m!3668697))

(declare-fun m!3668699 () Bool)

(assert (=> b!3328005 m!3668699))

(assert (=> b!3328005 m!3668697))

(assert (=> b!3328005 m!3668699))

(declare-fun m!3668701 () Bool)

(assert (=> b!3328005 m!3668701))

(declare-fun m!3668703 () Bool)

(assert (=> b!3328004 m!3668703))

(assert (=> d!935664 d!936008))

(declare-fun b!3328006 () Bool)

(declare-fun e!2069616 () Bool)

(declare-fun e!2069618 () Bool)

(assert (=> b!3328006 (= e!2069616 e!2069618)))

(declare-fun c!565224 () Bool)

(assert (=> b!3328006 (= c!565224 ((_ is IntegerValue!16681) (value!172365 (h!42080 (t!256741 tokens!494)))))))

(declare-fun d!936010 () Bool)

(declare-fun c!565225 () Bool)

(assert (=> d!936010 (= c!565225 ((_ is IntegerValue!16680) (value!172365 (h!42080 (t!256741 tokens!494)))))))

(assert (=> d!936010 (= (inv!21 (value!172365 (h!42080 (t!256741 tokens!494)))) e!2069616)))

(declare-fun b!3328007 () Bool)

(declare-fun e!2069617 () Bool)

(assert (=> b!3328007 (= e!2069617 (inv!15 (value!172365 (h!42080 (t!256741 tokens!494)))))))

(declare-fun b!3328008 () Bool)

(assert (=> b!3328008 (= e!2069616 (inv!16 (value!172365 (h!42080 (t!256741 tokens!494)))))))

(declare-fun b!3328009 () Bool)

(assert (=> b!3328009 (= e!2069618 (inv!17 (value!172365 (h!42080 (t!256741 tokens!494)))))))

(declare-fun b!3328010 () Bool)

(declare-fun res!1349815 () Bool)

(assert (=> b!3328010 (=> res!1349815 e!2069617)))

(assert (=> b!3328010 (= res!1349815 (not ((_ is IntegerValue!16682) (value!172365 (h!42080 (t!256741 tokens!494))))))))

(assert (=> b!3328010 (= e!2069618 e!2069617)))

(assert (= (and d!936010 c!565225) b!3328008))

(assert (= (and d!936010 (not c!565225)) b!3328006))

(assert (= (and b!3328006 c!565224) b!3328009))

(assert (= (and b!3328006 (not c!565224)) b!3328010))

(assert (= (and b!3328010 (not res!1349815)) b!3328007))

(declare-fun m!3668705 () Bool)

(assert (=> b!3328007 m!3668705))

(declare-fun m!3668707 () Bool)

(assert (=> b!3328008 m!3668707))

(declare-fun m!3668709 () Bool)

(assert (=> b!3328009 m!3668709))

(assert (=> b!3327585 d!936010))

(declare-fun d!936012 () Bool)

(assert (=> d!936012 (= (isEmpty!20819 (originalCharacters!6044 (h!42080 tokens!494))) ((_ is Nil!36659) (originalCharacters!6044 (h!42080 tokens!494))))))

(assert (=> d!935628 d!936012))

(declare-fun d!936014 () Bool)

(declare-fun lt!1130881 () Token!10026)

(assert (=> d!936014 (= lt!1130881 (apply!8465 (list!13200 (_1!21213 lt!1130688)) 0))))

(assert (=> d!936014 (= lt!1130881 (apply!8467 (c!565062 (_1!21213 lt!1130688)) 0))))

(declare-fun e!2069619 () Bool)

(assert (=> d!936014 e!2069619))

(declare-fun res!1349816 () Bool)

(assert (=> d!936014 (=> (not res!1349816) (not e!2069619))))

(assert (=> d!936014 (= res!1349816 (<= 0 0))))

(assert (=> d!936014 (= (apply!8464 (_1!21213 lt!1130688) 0) lt!1130881)))

(declare-fun b!3328011 () Bool)

(assert (=> b!3328011 (= e!2069619 (< 0 (size!27715 (_1!21213 lt!1130688))))))

(assert (= (and d!936014 res!1349816) b!3328011))

(assert (=> d!936014 m!3668659))

(assert (=> d!936014 m!3668659))

(declare-fun m!3668711 () Bool)

(assert (=> d!936014 m!3668711))

(declare-fun m!3668713 () Bool)

(assert (=> d!936014 m!3668713))

(assert (=> b!3328011 m!3667895))

(assert (=> b!3327537 d!936014))

(declare-fun d!936016 () Bool)

(declare-fun res!1349817 () Bool)

(declare-fun e!2069622 () Bool)

(assert (=> d!936016 (=> res!1349817 e!2069622)))

(assert (=> d!936016 (= res!1349817 ((_ is Nil!36660) tokens!494))))

(assert (=> d!936016 (= (forall!7647 tokens!494 lambda!119704) e!2069622)))

(declare-fun b!3328016 () Bool)

(declare-fun e!2069623 () Bool)

(assert (=> b!3328016 (= e!2069622 e!2069623)))

(declare-fun res!1349818 () Bool)

(assert (=> b!3328016 (=> (not res!1349818) (not e!2069623))))

(assert (=> b!3328016 (= res!1349818 (dynLambda!15113 lambda!119704 (h!42080 tokens!494)))))

(declare-fun b!3328017 () Bool)

(assert (=> b!3328017 (= e!2069623 (forall!7647 (t!256741 tokens!494) lambda!119704))))

(assert (= (and d!936016 (not res!1349817)) b!3328016))

(assert (= (and b!3328016 res!1349818) b!3328017))

(declare-fun b_lambda!93959 () Bool)

(assert (=> (not b_lambda!93959) (not b!3328016)))

(declare-fun m!3668715 () Bool)

(assert (=> b!3328016 m!3668715))

(declare-fun m!3668717 () Bool)

(assert (=> b!3328017 m!3668717))

(assert (=> d!935566 d!936016))

(assert (=> d!935566 d!935662))

(declare-fun d!936018 () Bool)

(declare-fun lt!1130882 () Int)

(assert (=> d!936018 (= lt!1130882 (size!27718 (list!13200 (_1!21213 lt!1130659))))))

(assert (=> d!936018 (= lt!1130882 (size!27719 (c!565062 (_1!21213 lt!1130659))))))

(assert (=> d!936018 (= (size!27715 (_1!21213 lt!1130659)) lt!1130882)))

(declare-fun bs!551087 () Bool)

(assert (= bs!551087 d!936018))

(assert (=> bs!551087 m!3668539))

(assert (=> bs!551087 m!3668539))

(declare-fun m!3668719 () Bool)

(assert (=> bs!551087 m!3668719))

(declare-fun m!3668721 () Bool)

(assert (=> bs!551087 m!3668721))

(assert (=> d!935656 d!936018))

(declare-fun d!936020 () Bool)

(assert (=> d!936020 (= (list!13200 (_1!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494)))))) (list!13204 (c!565062 (_1!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 (h!42080 tokens!494))))))))))

(declare-fun bs!551088 () Bool)

(assert (= bs!551088 d!936020))

(declare-fun m!3668723 () Bool)

(assert (=> bs!551088 m!3668723))

(assert (=> d!935656 d!936020))

(assert (=> d!935656 d!935898))

(assert (=> d!935656 d!935902))

(declare-fun d!936022 () Bool)

(assert (=> d!936022 (= (list!13200 (singletonSeq!2426 (h!42080 tokens!494))) (list!13204 (c!565062 (singletonSeq!2426 (h!42080 tokens!494)))))))

(declare-fun bs!551089 () Bool)

(assert (= bs!551089 d!936022))

(declare-fun m!3668725 () Bool)

(assert (=> bs!551089 m!3668725))

(assert (=> d!935656 d!936022))

(assert (=> d!935656 d!935670))

(assert (=> d!935656 d!935662))

(declare-fun d!936024 () Bool)

(assert (=> d!936024 (= (list!13200 lt!1130687) (list!13204 (c!565062 lt!1130687)))))

(declare-fun bs!551090 () Bool)

(assert (= bs!551090 d!936024))

(declare-fun m!3668727 () Bool)

(assert (=> bs!551090 m!3668727))

(assert (=> d!935670 d!936024))

(declare-fun d!936026 () Bool)

(declare-fun e!2069627 () Bool)

(assert (=> d!936026 e!2069627))

(declare-fun res!1349821 () Bool)

(assert (=> d!936026 (=> (not res!1349821) (not e!2069627))))

(declare-fun lt!1130885 () BalanceConc!21686)

(assert (=> d!936026 (= res!1349821 (= (list!13200 lt!1130885) (Cons!36660 (h!42080 tokens!494) Nil!36660)))))

(declare-fun choose!19281 (Token!10026) BalanceConc!21686)

(assert (=> d!936026 (= lt!1130885 (choose!19281 (h!42080 tokens!494)))))

(assert (=> d!936026 (= (singleton!1050 (h!42080 tokens!494)) lt!1130885)))

(declare-fun b!3328022 () Bool)

(assert (=> b!3328022 (= e!2069627 (isBalanced!3311 (c!565062 lt!1130885)))))

(assert (= (and d!936026 res!1349821) b!3328022))

(declare-fun m!3668739 () Bool)

(assert (=> d!936026 m!3668739))

(declare-fun m!3668741 () Bool)

(assert (=> d!936026 m!3668741))

(declare-fun m!3668743 () Bool)

(assert (=> b!3328022 m!3668743))

(assert (=> d!935670 d!936026))

(declare-fun d!936030 () Bool)

(assert (=> d!936030 (= (list!13197 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))) (list!13201 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))))))

(declare-fun bs!551091 () Bool)

(assert (= bs!551091 d!936030))

(declare-fun m!3668745 () Bool)

(assert (=> bs!551091 m!3668745))

(assert (=> b!3327364 d!936030))

(declare-fun d!936032 () Bool)

(declare-fun lt!1130886 () Int)

(assert (=> d!936032 (= lt!1130886 (size!27718 (list!13200 (_1!21213 lt!1130651))))))

(assert (=> d!936032 (= lt!1130886 (size!27719 (c!565062 (_1!21213 lt!1130651))))))

(assert (=> d!936032 (= (size!27715 (_1!21213 lt!1130651)) lt!1130886)))

(declare-fun bs!551092 () Bool)

(assert (= bs!551092 d!936032))

(assert (=> bs!551092 m!3667767))

(assert (=> bs!551092 m!3667767))

(declare-fun m!3668747 () Bool)

(assert (=> bs!551092 m!3668747))

(declare-fun m!3668749 () Bool)

(assert (=> bs!551092 m!3668749))

(assert (=> d!935646 d!936032))

(declare-fun b!3328084 () Bool)

(declare-fun e!2069661 () tuple2!36158)

(declare-datatypes ((tuple2!36168 0))(
  ( (tuple2!36169 (_1!21218 Token!10026) (_2!21218 BalanceConc!21684)) )
))
(declare-datatypes ((Option!7313 0))(
  ( (None!7312) (Some!7312 (v!36208 tuple2!36168)) )
))
(declare-fun lt!1130993 () Option!7313)

(declare-fun lt!1131001 () BalanceConc!21684)

(declare-fun append!910 (BalanceConc!21686 Token!10026) BalanceConc!21686)

(assert (=> b!3328084 (= e!2069661 (lexTailRecV2!986 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562) lt!1131001 (_2!21218 (v!36208 lt!1130993)) (append!910 (BalanceConc!21687 Empty!11036) (_1!21218 (v!36208 lt!1130993)))))))

(declare-fun lt!1131013 () tuple2!36158)

(declare-fun lexRec!716 (LexerInterface!4919 List!36785 BalanceConc!21684) tuple2!36158)

(assert (=> b!3328084 (= lt!1131013 (lexRec!716 thiss!18206 rules!2135 (_2!21218 (v!36208 lt!1130993))))))

(declare-fun lt!1131011 () List!36783)

(assert (=> b!3328084 (= lt!1131011 (list!13197 (BalanceConc!21685 Empty!11035)))))

(declare-fun lt!1130995 () List!36783)

(assert (=> b!3328084 (= lt!1130995 (list!13197 (charsOf!3344 (_1!21218 (v!36208 lt!1130993)))))))

(declare-fun lt!1131005 () List!36783)

(assert (=> b!3328084 (= lt!1131005 (list!13197 (_2!21218 (v!36208 lt!1130993))))))

(declare-fun lt!1130986 () Unit!51672)

(assert (=> b!3328084 (= lt!1130986 (lemmaConcatAssociativity!1850 lt!1131011 lt!1130995 lt!1131005))))

(assert (=> b!3328084 (= (++!8907 (++!8907 lt!1131011 lt!1130995) lt!1131005) (++!8907 lt!1131011 (++!8907 lt!1130995 lt!1131005)))))

(declare-fun lt!1131002 () Unit!51672)

(assert (=> b!3328084 (= lt!1131002 lt!1130986)))

(declare-fun lt!1131007 () Option!7313)

(declare-fun maxPrefixZipperSequence!1109 (LexerInterface!4919 List!36785 BalanceConc!21684) Option!7313)

(assert (=> b!3328084 (= lt!1131007 (maxPrefixZipperSequence!1109 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562)))))

(declare-fun c!565248 () Bool)

(assert (=> b!3328084 (= c!565248 ((_ is Some!7312) lt!1131007))))

(declare-fun e!2069662 () tuple2!36158)

(assert (=> b!3328084 (= (lexRec!716 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562)) e!2069662)))

(declare-fun lt!1131015 () Unit!51672)

(declare-fun Unit!51674 () Unit!51672)

(assert (=> b!3328084 (= lt!1131015 Unit!51674)))

(declare-fun lt!1130997 () List!36784)

(assert (=> b!3328084 (= lt!1130997 (list!13200 (BalanceConc!21687 Empty!11036)))))

(declare-fun lt!1131010 () List!36784)

(assert (=> b!3328084 (= lt!1131010 (Cons!36660 (_1!21218 (v!36208 lt!1130993)) Nil!36660))))

(declare-fun lt!1131016 () List!36784)

(assert (=> b!3328084 (= lt!1131016 (list!13200 (_1!21213 lt!1131013)))))

(declare-fun lt!1131000 () Unit!51672)

(declare-fun lemmaConcatAssociativity!1851 (List!36784 List!36784 List!36784) Unit!51672)

(assert (=> b!3328084 (= lt!1131000 (lemmaConcatAssociativity!1851 lt!1130997 lt!1131010 lt!1131016))))

(declare-fun ++!8911 (List!36784 List!36784) List!36784)

(assert (=> b!3328084 (= (++!8911 (++!8911 lt!1130997 lt!1131010) lt!1131016) (++!8911 lt!1130997 (++!8911 lt!1131010 lt!1131016)))))

(declare-fun lt!1131012 () Unit!51672)

(assert (=> b!3328084 (= lt!1131012 lt!1131000)))

(declare-fun lt!1130999 () List!36783)

(assert (=> b!3328084 (= lt!1130999 (++!8907 (list!13197 (BalanceConc!21685 Empty!11035)) (list!13197 (charsOf!3344 (_1!21218 (v!36208 lt!1130993))))))))

(declare-fun lt!1131008 () List!36783)

(assert (=> b!3328084 (= lt!1131008 (list!13197 (_2!21218 (v!36208 lt!1130993))))))

(declare-fun lt!1130984 () List!36784)

(assert (=> b!3328084 (= lt!1130984 (list!13200 (append!910 (BalanceConc!21687 Empty!11036) (_1!21218 (v!36208 lt!1130993)))))))

(declare-fun lt!1130987 () Unit!51672)

(declare-fun lemmaLexThenLexPrefix!481 (LexerInterface!4919 List!36785 List!36783 List!36783 List!36784 List!36784 List!36783) Unit!51672)

(assert (=> b!3328084 (= lt!1130987 (lemmaLexThenLexPrefix!481 thiss!18206 rules!2135 lt!1130999 lt!1131008 lt!1130984 (list!13200 (_1!21213 lt!1131013)) (list!13197 (_2!21213 lt!1131013))))))

(assert (=> b!3328084 (= (lexList!1376 thiss!18206 rules!2135 lt!1130999) (tuple2!36163 lt!1130984 Nil!36659))))

(declare-fun lt!1130989 () Unit!51672)

(assert (=> b!3328084 (= lt!1130989 lt!1130987)))

(declare-fun lt!1130991 () BalanceConc!21684)

(assert (=> b!3328084 (= lt!1130991 (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (_1!21218 (v!36208 lt!1130993)))))))

(declare-fun lt!1131009 () Option!7313)

(assert (=> b!3328084 (= lt!1131009 (maxPrefixZipperSequence!1109 thiss!18206 rules!2135 lt!1130991))))

(declare-fun c!565247 () Bool)

(assert (=> b!3328084 (= c!565247 ((_ is Some!7312) lt!1131009))))

(declare-fun e!2069663 () tuple2!36158)

(assert (=> b!3328084 (= (lexRec!716 thiss!18206 rules!2135 (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (_1!21218 (v!36208 lt!1130993))))) e!2069663)))

(declare-fun lt!1131003 () Unit!51672)

(declare-fun Unit!51675 () Unit!51672)

(assert (=> b!3328084 (= lt!1131003 Unit!51675)))

(assert (=> b!3328084 (= lt!1131001 (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (_1!21218 (v!36208 lt!1130993)))))))

(declare-fun lt!1131004 () List!36783)

(assert (=> b!3328084 (= lt!1131004 (list!13197 lt!1131001))))

(declare-fun lt!1131006 () List!36783)

(assert (=> b!3328084 (= lt!1131006 (list!13197 (_2!21218 (v!36208 lt!1130993))))))

(declare-fun lt!1130994 () Unit!51672)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!563 (List!36783 List!36783) Unit!51672)

(assert (=> b!3328084 (= lt!1130994 (lemmaConcatTwoListThenFSndIsSuffix!563 lt!1131004 lt!1131006))))

(declare-fun isSuffix!878 (List!36783 List!36783) Bool)

(assert (=> b!3328084 (isSuffix!878 lt!1131006 (++!8907 lt!1131004 lt!1131006))))

(declare-fun lt!1130998 () Unit!51672)

(assert (=> b!3328084 (= lt!1130998 lt!1130994)))

(declare-fun b!3328085 () Bool)

(assert (=> b!3328085 (= e!2069663 (tuple2!36159 (BalanceConc!21687 Empty!11036) lt!1130991))))

(declare-fun b!3328086 () Bool)

(declare-fun lt!1130996 () tuple2!36158)

(assert (=> b!3328086 (= lt!1130996 (lexRec!716 thiss!18206 rules!2135 (_2!21218 (v!36208 lt!1131007))))))

(declare-fun prepend!1214 (BalanceConc!21686 Token!10026) BalanceConc!21686)

(assert (=> b!3328086 (= e!2069662 (tuple2!36159 (prepend!1214 (_1!21213 lt!1130996) (_1!21218 (v!36208 lt!1131007))) (_2!21213 lt!1130996)))))

(declare-fun lt!1130990 () tuple2!36158)

(declare-fun b!3328087 () Bool)

(declare-fun e!2069660 () Bool)

(assert (=> b!3328087 (= e!2069660 (= (list!13197 (_2!21213 lt!1130990)) (list!13197 (_2!21213 (lexRec!716 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))))))

(declare-fun b!3328088 () Bool)

(declare-fun lt!1130988 () tuple2!36158)

(assert (=> b!3328088 (= lt!1130988 (lexRec!716 thiss!18206 rules!2135 (_2!21218 (v!36208 lt!1131009))))))

(assert (=> b!3328088 (= e!2069663 (tuple2!36159 (prepend!1214 (_1!21213 lt!1130988) (_1!21218 (v!36208 lt!1131009))) (_2!21213 lt!1130988)))))

(declare-fun d!936034 () Bool)

(assert (=> d!936034 e!2069660))

(declare-fun res!1349849 () Bool)

(assert (=> d!936034 (=> (not res!1349849) (not e!2069660))))

(assert (=> d!936034 (= res!1349849 (= (list!13200 (_1!21213 lt!1130990)) (list!13200 (_1!21213 (lexRec!716 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562))))))))

(assert (=> d!936034 (= lt!1130990 e!2069661)))

(declare-fun c!565246 () Bool)

(assert (=> d!936034 (= c!565246 ((_ is Some!7312) lt!1130993))))

(declare-fun maxPrefixZipperSequenceV2!503 (LexerInterface!4919 List!36785 BalanceConc!21684 BalanceConc!21684) Option!7313)

(assert (=> d!936034 (= lt!1130993 (maxPrefixZipperSequenceV2!503 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562) (seqFromList!3714 lt!1130562)))))

(declare-fun lt!1131014 () Unit!51672)

(declare-fun lt!1130985 () Unit!51672)

(assert (=> d!936034 (= lt!1131014 lt!1130985)))

(declare-fun lt!1130992 () List!36783)

(declare-fun lt!1130983 () List!36783)

(assert (=> d!936034 (isSuffix!878 lt!1130992 (++!8907 lt!1130983 lt!1130992))))

(assert (=> d!936034 (= lt!1130985 (lemmaConcatTwoListThenFSndIsSuffix!563 lt!1130983 lt!1130992))))

(assert (=> d!936034 (= lt!1130992 (list!13197 (seqFromList!3714 lt!1130562)))))

(assert (=> d!936034 (= lt!1130983 (list!13197 (BalanceConc!21685 Empty!11035)))))

(assert (=> d!936034 (= (lexTailRecV2!986 thiss!18206 rules!2135 (seqFromList!3714 lt!1130562) (BalanceConc!21685 Empty!11035) (seqFromList!3714 lt!1130562) (BalanceConc!21687 Empty!11036)) lt!1130990)))

(declare-fun b!3328089 () Bool)

(assert (=> b!3328089 (= e!2069661 (tuple2!36159 (BalanceConc!21687 Empty!11036) (seqFromList!3714 lt!1130562)))))

(declare-fun b!3328090 () Bool)

(assert (=> b!3328090 (= e!2069662 (tuple2!36159 (BalanceConc!21687 Empty!11036) (seqFromList!3714 lt!1130562)))))

(assert (= (and d!936034 c!565246) b!3328084))

(assert (= (and d!936034 (not c!565246)) b!3328089))

(assert (= (and b!3328084 c!565248) b!3328086))

(assert (= (and b!3328084 (not c!565248)) b!3328090))

(assert (= (and b!3328084 c!565247) b!3328088))

(assert (= (and b!3328084 (not c!565247)) b!3328085))

(assert (= (and d!936034 res!1349849) b!3328087))

(declare-fun m!3668837 () Bool)

(assert (=> b!3328087 m!3668837))

(assert (=> b!3328087 m!3667407))

(declare-fun m!3668839 () Bool)

(assert (=> b!3328087 m!3668839))

(declare-fun m!3668841 () Bool)

(assert (=> b!3328087 m!3668841))

(declare-fun m!3668843 () Bool)

(assert (=> b!3328086 m!3668843))

(declare-fun m!3668845 () Bool)

(assert (=> b!3328086 m!3668845))

(declare-fun m!3668847 () Bool)

(assert (=> b!3328088 m!3668847))

(declare-fun m!3668849 () Bool)

(assert (=> b!3328088 m!3668849))

(assert (=> b!3328084 m!3667407))

(declare-fun m!3668851 () Bool)

(assert (=> b!3328084 m!3668851))

(declare-fun m!3668853 () Bool)

(assert (=> b!3328084 m!3668853))

(declare-fun m!3668855 () Bool)

(assert (=> b!3328084 m!3668855))

(assert (=> b!3328084 m!3667407))

(declare-fun m!3668857 () Bool)

(assert (=> b!3328084 m!3668857))

(declare-fun m!3668859 () Bool)

(assert (=> b!3328084 m!3668859))

(declare-fun m!3668861 () Bool)

(assert (=> b!3328084 m!3668861))

(declare-fun m!3668863 () Bool)

(assert (=> b!3328084 m!3668863))

(assert (=> b!3328084 m!3668861))

(declare-fun m!3668865 () Bool)

(assert (=> b!3328084 m!3668865))

(declare-fun m!3668867 () Bool)

(assert (=> b!3328084 m!3668867))

(declare-fun m!3668869 () Bool)

(assert (=> b!3328084 m!3668869))

(declare-fun m!3668871 () Bool)

(assert (=> b!3328084 m!3668871))

(declare-fun m!3668873 () Bool)

(assert (=> b!3328084 m!3668873))

(declare-fun m!3668875 () Bool)

(assert (=> b!3328084 m!3668875))

(assert (=> b!3328084 m!3668857))

(declare-fun m!3668877 () Bool)

(assert (=> b!3328084 m!3668877))

(declare-fun m!3668879 () Bool)

(assert (=> b!3328084 m!3668879))

(assert (=> b!3328084 m!3668865))

(declare-fun m!3668881 () Bool)

(assert (=> b!3328084 m!3668881))

(declare-fun m!3668883 () Bool)

(assert (=> b!3328084 m!3668883))

(declare-fun m!3668885 () Bool)

(assert (=> b!3328084 m!3668885))

(declare-fun m!3668887 () Bool)

(assert (=> b!3328084 m!3668887))

(declare-fun m!3668889 () Bool)

(assert (=> b!3328084 m!3668889))

(assert (=> b!3328084 m!3668857))

(declare-fun m!3668891 () Bool)

(assert (=> b!3328084 m!3668891))

(declare-fun m!3668893 () Bool)

(assert (=> b!3328084 m!3668893))

(declare-fun m!3668895 () Bool)

(assert (=> b!3328084 m!3668895))

(declare-fun m!3668897 () Bool)

(assert (=> b!3328084 m!3668897))

(assert (=> b!3328084 m!3668853))

(declare-fun m!3668899 () Bool)

(assert (=> b!3328084 m!3668899))

(assert (=> b!3328084 m!3667407))

(assert (=> b!3328084 m!3668839))

(assert (=> b!3328084 m!3668869))

(assert (=> b!3328084 m!3667823))

(declare-fun m!3668901 () Bool)

(assert (=> b!3328084 m!3668901))

(declare-fun m!3668903 () Bool)

(assert (=> b!3328084 m!3668903))

(declare-fun m!3668905 () Bool)

(assert (=> b!3328084 m!3668905))

(assert (=> b!3328084 m!3668903))

(assert (=> b!3328084 m!3668867))

(assert (=> b!3328084 m!3667823))

(assert (=> b!3328084 m!3668863))

(declare-fun m!3668907 () Bool)

(assert (=> b!3328084 m!3668907))

(assert (=> b!3328084 m!3668879))

(declare-fun m!3668909 () Bool)

(assert (=> b!3328084 m!3668909))

(assert (=> b!3328084 m!3668861))

(assert (=> b!3328084 m!3668885))

(declare-fun m!3668911 () Bool)

(assert (=> b!3328084 m!3668911))

(assert (=> b!3328084 m!3668891))

(assert (=> d!936034 m!3667407))

(assert (=> d!936034 m!3667407))

(declare-fun m!3668913 () Bool)

(assert (=> d!936034 m!3668913))

(assert (=> d!936034 m!3667823))

(declare-fun m!3668915 () Bool)

(assert (=> d!936034 m!3668915))

(declare-fun m!3668917 () Bool)

(assert (=> d!936034 m!3668917))

(declare-fun m!3668919 () Bool)

(assert (=> d!936034 m!3668919))

(assert (=> d!936034 m!3667407))

(assert (=> d!936034 m!3668839))

(declare-fun m!3668921 () Bool)

(assert (=> d!936034 m!3668921))

(declare-fun m!3668923 () Bool)

(assert (=> d!936034 m!3668923))

(assert (=> d!936034 m!3667407))

(assert (=> d!936034 m!3667759))

(assert (=> d!936034 m!3668915))

(assert (=> d!935646 d!936034))

(declare-fun d!936064 () Bool)

(assert (=> d!936064 (= (list!13197 lt!1130663) (list!13201 (c!565061 lt!1130663)))))

(declare-fun bs!551098 () Bool)

(assert (= bs!551098 d!936064))

(declare-fun m!3668925 () Bool)

(assert (=> bs!551098 m!3668925))

(assert (=> d!935666 d!936064))

(declare-fun d!936066 () Bool)

(declare-fun c!565249 () Bool)

(assert (=> d!936066 (= c!565249 ((_ is Cons!36660) (list!13200 lt!1130560)))))

(declare-fun e!2069664 () List!36783)

(assert (=> d!936066 (= (printList!1467 thiss!18206 (list!13200 lt!1130560)) e!2069664)))

(declare-fun b!3328091 () Bool)

(assert (=> b!3328091 (= e!2069664 (++!8907 (list!13197 (charsOf!3344 (h!42080 (list!13200 lt!1130560)))) (printList!1467 thiss!18206 (t!256741 (list!13200 lt!1130560)))))))

(declare-fun b!3328092 () Bool)

(assert (=> b!3328092 (= e!2069664 Nil!36659)))

(assert (= (and d!936066 c!565249) b!3328091))

(assert (= (and d!936066 (not c!565249)) b!3328092))

(declare-fun m!3668927 () Bool)

(assert (=> b!3328091 m!3668927))

(assert (=> b!3328091 m!3668927))

(declare-fun m!3668929 () Bool)

(assert (=> b!3328091 m!3668929))

(declare-fun m!3668931 () Bool)

(assert (=> b!3328091 m!3668931))

(assert (=> b!3328091 m!3668929))

(assert (=> b!3328091 m!3668931))

(declare-fun m!3668933 () Bool)

(assert (=> b!3328091 m!3668933))

(assert (=> d!935666 d!936066))

(declare-fun d!936068 () Bool)

(assert (=> d!936068 (= (list!13200 lt!1130560) (list!13204 (c!565062 lt!1130560)))))

(declare-fun bs!551099 () Bool)

(assert (= bs!551099 d!936068))

(assert (=> bs!551099 m!3668079))

(assert (=> d!935666 d!936068))

(assert (=> d!935666 d!935668))

(declare-fun d!936070 () Bool)

(assert (=> d!936070 (= (list!13197 lt!1130699) (list!13201 (c!565061 lt!1130699)))))

(declare-fun bs!551100 () Bool)

(assert (= bs!551100 d!936070))

(declare-fun m!3668935 () Bool)

(assert (=> bs!551100 m!3668935))

(assert (=> d!935700 d!936070))

(declare-fun d!936072 () Bool)

(declare-fun res!1349854 () Bool)

(declare-fun e!2069669 () Bool)

(assert (=> d!936072 (=> res!1349854 e!2069669)))

(assert (=> d!936072 (= res!1349854 ((_ is Nil!36661) rules!2135))))

(assert (=> d!936072 (= (noDuplicateTag!1969 thiss!18206 rules!2135 Nil!36663) e!2069669)))

(declare-fun b!3328097 () Bool)

(declare-fun e!2069670 () Bool)

(assert (=> b!3328097 (= e!2069669 e!2069670)))

(declare-fun res!1349855 () Bool)

(assert (=> b!3328097 (=> (not res!1349855) (not e!2069670))))

(declare-fun contains!6647 (List!36787 String!41134) Bool)

(assert (=> b!3328097 (= res!1349855 (not (contains!6647 Nil!36663 (tag!5882 (h!42081 rules!2135)))))))

(declare-fun b!3328098 () Bool)

(assert (=> b!3328098 (= e!2069670 (noDuplicateTag!1969 thiss!18206 (t!256742 rules!2135) (Cons!36663 (tag!5882 (h!42081 rules!2135)) Nil!36663)))))

(assert (= (and d!936072 (not res!1349854)) b!3328097))

(assert (= (and b!3328097 res!1349855) b!3328098))

(declare-fun m!3668937 () Bool)

(assert (=> b!3328097 m!3668937))

(declare-fun m!3668939 () Bool)

(assert (=> b!3328098 m!3668939))

(assert (=> b!3327519 d!936072))

(declare-fun d!936074 () Bool)

(declare-fun res!1349856 () Bool)

(declare-fun e!2069671 () Bool)

(assert (=> d!936074 (=> res!1349856 e!2069671)))

(assert (=> d!936074 (= res!1349856 (not ((_ is Cons!36661) (t!256742 rules!2135))))))

(assert (=> d!936074 (= (sepAndNonSepRulesDisjointChars!1524 rules!2135 (t!256742 rules!2135)) e!2069671)))

(declare-fun b!3328099 () Bool)

(declare-fun e!2069672 () Bool)

(assert (=> b!3328099 (= e!2069671 e!2069672)))

(declare-fun res!1349857 () Bool)

(assert (=> b!3328099 (=> (not res!1349857) (not e!2069672))))

(assert (=> b!3328099 (= res!1349857 (ruleDisjointCharsFromAllFromOtherType!649 (h!42081 (t!256742 rules!2135)) rules!2135))))

(declare-fun b!3328100 () Bool)

(assert (=> b!3328100 (= e!2069672 (sepAndNonSepRulesDisjointChars!1524 rules!2135 (t!256742 (t!256742 rules!2135))))))

(assert (= (and d!936074 (not res!1349856)) b!3328099))

(assert (= (and b!3328099 res!1349857) b!3328100))

(declare-fun m!3668941 () Bool)

(assert (=> b!3328099 m!3668941))

(declare-fun m!3668943 () Bool)

(assert (=> b!3328100 m!3668943))

(assert (=> b!3327425 d!936074))

(declare-fun d!936076 () Bool)

(assert (=> d!936076 (= (head!7159 (drop!1927 lt!1130679 0)) (h!42080 (drop!1927 lt!1130679 0)))))

(assert (=> b!3327507 d!936076))

(declare-fun d!936078 () Bool)

(declare-fun lt!1131017 () BalanceConc!21684)

(assert (=> d!936078 (= (list!13197 lt!1131017) (printListTailRec!618 thiss!18206 (dropList!1135 lt!1130560 (+ 0 1)) (list!13197 (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (apply!8464 lt!1130560 0))))))))

(declare-fun e!2069674 () BalanceConc!21684)

(assert (=> d!936078 (= lt!1131017 e!2069674)))

(declare-fun c!565250 () Bool)

(assert (=> d!936078 (= c!565250 (>= (+ 0 1) (size!27715 lt!1130560)))))

(declare-fun e!2069673 () Bool)

(assert (=> d!936078 e!2069673))

(declare-fun res!1349858 () Bool)

(assert (=> d!936078 (=> (not res!1349858) (not e!2069673))))

(assert (=> d!936078 (= res!1349858 (>= (+ 0 1) 0))))

(assert (=> d!936078 (= (printTailRec!1414 thiss!18206 lt!1130560 (+ 0 1) (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (apply!8464 lt!1130560 0)))) lt!1131017)))

(declare-fun b!3328101 () Bool)

(assert (=> b!3328101 (= e!2069673 (<= (+ 0 1) (size!27715 lt!1130560)))))

(declare-fun b!3328102 () Bool)

(assert (=> b!3328102 (= e!2069674 (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (apply!8464 lt!1130560 0))))))

(declare-fun b!3328103 () Bool)

(assert (=> b!3328103 (= e!2069674 (printTailRec!1414 thiss!18206 lt!1130560 (+ 0 1 1) (++!8909 (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (apply!8464 lt!1130560 0))) (charsOf!3344 (apply!8464 lt!1130560 (+ 0 1))))))))

(declare-fun lt!1131018 () List!36784)

(assert (=> b!3328103 (= lt!1131018 (list!13200 lt!1130560))))

(declare-fun lt!1131023 () Unit!51672)

(assert (=> b!3328103 (= lt!1131023 (lemmaDropApply!1093 lt!1131018 (+ 0 1)))))

(assert (=> b!3328103 (= (head!7159 (drop!1927 lt!1131018 (+ 0 1))) (apply!8465 lt!1131018 (+ 0 1)))))

(declare-fun lt!1131021 () Unit!51672)

(assert (=> b!3328103 (= lt!1131021 lt!1131023)))

(declare-fun lt!1131019 () List!36784)

(assert (=> b!3328103 (= lt!1131019 (list!13200 lt!1130560))))

(declare-fun lt!1131020 () Unit!51672)

(assert (=> b!3328103 (= lt!1131020 (lemmaDropTail!977 lt!1131019 (+ 0 1)))))

(assert (=> b!3328103 (= (tail!5296 (drop!1927 lt!1131019 (+ 0 1))) (drop!1927 lt!1131019 (+ 0 1 1)))))

(declare-fun lt!1131022 () Unit!51672)

(assert (=> b!3328103 (= lt!1131022 lt!1131020)))

(assert (= (and d!936078 res!1349858) b!3328101))

(assert (= (and d!936078 c!565250) b!3328102))

(assert (= (and d!936078 (not c!565250)) b!3328103))

(declare-fun m!3668945 () Bool)

(assert (=> d!936078 m!3668945))

(assert (=> d!936078 m!3667839))

(declare-fun m!3668947 () Bool)

(assert (=> d!936078 m!3668947))

(assert (=> d!936078 m!3667825))

(declare-fun m!3668949 () Bool)

(assert (=> d!936078 m!3668949))

(assert (=> d!936078 m!3668949))

(assert (=> d!936078 m!3668947))

(declare-fun m!3668951 () Bool)

(assert (=> d!936078 m!3668951))

(assert (=> b!3328101 m!3667825))

(declare-fun m!3668953 () Bool)

(assert (=> b!3328103 m!3668953))

(declare-fun m!3668955 () Bool)

(assert (=> b!3328103 m!3668955))

(declare-fun m!3668957 () Bool)

(assert (=> b!3328103 m!3668957))

(declare-fun m!3668959 () Bool)

(assert (=> b!3328103 m!3668959))

(declare-fun m!3668961 () Bool)

(assert (=> b!3328103 m!3668961))

(declare-fun m!3668963 () Bool)

(assert (=> b!3328103 m!3668963))

(assert (=> b!3328103 m!3667817))

(assert (=> b!3328103 m!3668953))

(declare-fun m!3668965 () Bool)

(assert (=> b!3328103 m!3668965))

(declare-fun m!3668967 () Bool)

(assert (=> b!3328103 m!3668967))

(assert (=> b!3328103 m!3667839))

(declare-fun m!3668969 () Bool)

(assert (=> b!3328103 m!3668969))

(assert (=> b!3328103 m!3668961))

(declare-fun m!3668971 () Bool)

(assert (=> b!3328103 m!3668971))

(assert (=> b!3328103 m!3668969))

(assert (=> b!3328103 m!3668955))

(declare-fun m!3668973 () Bool)

(assert (=> b!3328103 m!3668973))

(assert (=> b!3328103 m!3668971))

(declare-fun m!3668975 () Bool)

(assert (=> b!3328103 m!3668975))

(assert (=> b!3327507 d!936078))

(declare-fun d!936080 () Bool)

(assert (=> d!936080 (= (tail!5296 (drop!1927 lt!1130680 0)) (t!256741 (drop!1927 lt!1130680 0)))))

(assert (=> b!3327507 d!936080))

(declare-fun d!936082 () Bool)

(declare-fun e!2069686 () Bool)

(assert (=> d!936082 e!2069686))

(declare-fun res!1349861 () Bool)

(assert (=> d!936082 (=> (not res!1349861) (not e!2069686))))

(declare-fun lt!1131038 () List!36784)

(assert (=> d!936082 (= res!1349861 (= ((_ map implies) (content!5009 lt!1131038) (content!5009 lt!1130680)) ((as const (InoxSet Token!10026)) true)))))

(declare-fun e!2069685 () List!36784)

(assert (=> d!936082 (= lt!1131038 e!2069685)))

(declare-fun c!565262 () Bool)

(assert (=> d!936082 (= c!565262 ((_ is Nil!36660) lt!1130680))))

(assert (=> d!936082 (= (drop!1927 lt!1130680 (+ 0 1)) lt!1131038)))

(declare-fun b!3328124 () Bool)

(declare-fun e!2069689 () Int)

(assert (=> b!3328124 (= e!2069686 (= (size!27718 lt!1131038) e!2069689))))

(declare-fun c!565261 () Bool)

(assert (=> b!3328124 (= c!565261 (<= (+ 0 1) 0))))

(declare-fun b!3328125 () Bool)

(declare-fun e!2069688 () Int)

(assert (=> b!3328125 (= e!2069689 e!2069688)))

(declare-fun c!565260 () Bool)

(declare-fun call!241374 () Int)

(assert (=> b!3328125 (= c!565260 (>= (+ 0 1) call!241374))))

(declare-fun bm!241369 () Bool)

(assert (=> bm!241369 (= call!241374 (size!27718 lt!1130680))))

(declare-fun b!3328126 () Bool)

(assert (=> b!3328126 (= e!2069689 call!241374)))

(declare-fun b!3328127 () Bool)

(assert (=> b!3328127 (= e!2069685 Nil!36660)))

(declare-fun b!3328128 () Bool)

(declare-fun e!2069687 () List!36784)

(assert (=> b!3328128 (= e!2069687 (drop!1927 (t!256741 lt!1130680) (- (+ 0 1) 1)))))

(declare-fun b!3328129 () Bool)

(assert (=> b!3328129 (= e!2069685 e!2069687)))

(declare-fun c!565259 () Bool)

(assert (=> b!3328129 (= c!565259 (<= (+ 0 1) 0))))

(declare-fun b!3328130 () Bool)

(assert (=> b!3328130 (= e!2069688 0)))

(declare-fun b!3328131 () Bool)

(assert (=> b!3328131 (= e!2069688 (- call!241374 (+ 0 1)))))

(declare-fun b!3328132 () Bool)

(assert (=> b!3328132 (= e!2069687 lt!1130680)))

(assert (= (and d!936082 c!565262) b!3328127))

(assert (= (and d!936082 (not c!565262)) b!3328129))

(assert (= (and b!3328129 c!565259) b!3328132))

(assert (= (and b!3328129 (not c!565259)) b!3328128))

(assert (= (and d!936082 res!1349861) b!3328124))

(assert (= (and b!3328124 c!565261) b!3328126))

(assert (= (and b!3328124 (not c!565261)) b!3328125))

(assert (= (and b!3328125 c!565260) b!3328130))

(assert (= (and b!3328125 (not c!565260)) b!3328131))

(assert (= (or b!3328126 b!3328125 b!3328131) bm!241369))

(declare-fun m!3668977 () Bool)

(assert (=> d!936082 m!3668977))

(declare-fun m!3668979 () Bool)

(assert (=> d!936082 m!3668979))

(declare-fun m!3668981 () Bool)

(assert (=> b!3328124 m!3668981))

(declare-fun m!3668983 () Bool)

(assert (=> bm!241369 m!3668983))

(declare-fun m!3668985 () Bool)

(assert (=> b!3328128 m!3668985))

(assert (=> b!3327507 d!936082))

(declare-fun d!936084 () Bool)

(declare-fun lt!1131051 () BalanceConc!21684)

(assert (=> d!936084 (= (list!13197 lt!1131051) (originalCharacters!6044 (apply!8464 lt!1130560 0)))))

(assert (=> d!936084 (= lt!1131051 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0)))) (value!172365 (apply!8464 lt!1130560 0))))))

(assert (=> d!936084 (= (charsOf!3344 (apply!8464 lt!1130560 0)) lt!1131051)))

(declare-fun b_lambda!93961 () Bool)

(assert (=> (not b_lambda!93961) (not d!936084)))

(declare-fun t!256849 () Bool)

(declare-fun tb!174279 () Bool)

(assert (=> (and b!3327587 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))) (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0))))) t!256849) tb!174279))

(declare-fun b!3328139 () Bool)

(declare-fun e!2069694 () Bool)

(declare-fun tp!1040055 () Bool)

(assert (=> b!3328139 (= e!2069694 (and (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0)))) (value!172365 (apply!8464 lt!1130560 0))))) tp!1040055))))

(declare-fun result!217376 () Bool)

(assert (=> tb!174279 (= result!217376 (and (inv!49666 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0)))) (value!172365 (apply!8464 lt!1130560 0)))) e!2069694))))

(assert (= tb!174279 b!3328139))

(declare-fun m!3668987 () Bool)

(assert (=> b!3328139 m!3668987))

(declare-fun m!3668989 () Bool)

(assert (=> tb!174279 m!3668989))

(assert (=> d!936084 t!256849))

(declare-fun b_and!229419 () Bool)

(assert (= b_and!229401 (and (=> t!256849 result!217376) b_and!229419)))

(declare-fun t!256851 () Bool)

(declare-fun tb!174281 () Bool)

(assert (=> (and b!3327190 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0))))) t!256851) tb!174281))

(declare-fun result!217378 () Bool)

(assert (= result!217378 result!217376))

(assert (=> d!936084 t!256851))

(declare-fun b_and!229421 () Bool)

(assert (= b_and!229407 (and (=> t!256851 result!217378) b_and!229421)))

(declare-fun t!256853 () Bool)

(declare-fun tb!174283 () Bool)

(assert (=> (and b!3327184 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0))))) t!256853) tb!174283))

(declare-fun result!217380 () Bool)

(assert (= result!217380 result!217376))

(assert (=> d!936084 t!256853))

(declare-fun b_and!229423 () Bool)

(assert (= b_and!229403 (and (=> t!256853 result!217380) b_and!229423)))

(declare-fun t!256855 () Bool)

(declare-fun tb!174285 () Bool)

(assert (=> (and b!3327192 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0))))) t!256855) tb!174285))

(declare-fun result!217382 () Bool)

(assert (= result!217382 result!217376))

(assert (=> d!936084 t!256855))

(declare-fun b_and!229425 () Bool)

(assert (= b_and!229399 (and (=> t!256855 result!217382) b_and!229425)))

(declare-fun t!256857 () Bool)

(declare-fun tb!174287 () Bool)

(assert (=> (and b!3327602 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0))))) t!256857) tb!174287))

(declare-fun result!217384 () Bool)

(assert (= result!217384 result!217376))

(assert (=> d!936084 t!256857))

(declare-fun b_and!229427 () Bool)

(assert (= b_and!229405 (and (=> t!256857 result!217384) b_and!229427)))

(declare-fun m!3668991 () Bool)

(assert (=> d!936084 m!3668991))

(declare-fun m!3668993 () Bool)

(assert (=> d!936084 m!3668993))

(assert (=> b!3327507 d!936084))

(declare-fun d!936086 () Bool)

(declare-fun e!2069696 () Bool)

(assert (=> d!936086 e!2069696))

(declare-fun res!1349862 () Bool)

(assert (=> d!936086 (=> (not res!1349862) (not e!2069696))))

(declare-fun lt!1131078 () List!36784)

(assert (=> d!936086 (= res!1349862 (= ((_ map implies) (content!5009 lt!1131078) (content!5009 lt!1130680)) ((as const (InoxSet Token!10026)) true)))))

(declare-fun e!2069695 () List!36784)

(assert (=> d!936086 (= lt!1131078 e!2069695)))

(declare-fun c!565270 () Bool)

(assert (=> d!936086 (= c!565270 ((_ is Nil!36660) lt!1130680))))

(assert (=> d!936086 (= (drop!1927 lt!1130680 0) lt!1131078)))

(declare-fun b!3328140 () Bool)

(declare-fun e!2069699 () Int)

(assert (=> b!3328140 (= e!2069696 (= (size!27718 lt!1131078) e!2069699))))

(declare-fun c!565269 () Bool)

(assert (=> b!3328140 (= c!565269 (<= 0 0))))

(declare-fun b!3328141 () Bool)

(declare-fun e!2069698 () Int)

(assert (=> b!3328141 (= e!2069699 e!2069698)))

(declare-fun c!565268 () Bool)

(declare-fun call!241375 () Int)

(assert (=> b!3328141 (= c!565268 (>= 0 call!241375))))

(declare-fun bm!241370 () Bool)

(assert (=> bm!241370 (= call!241375 (size!27718 lt!1130680))))

(declare-fun b!3328142 () Bool)

(assert (=> b!3328142 (= e!2069699 call!241375)))

(declare-fun b!3328143 () Bool)

(assert (=> b!3328143 (= e!2069695 Nil!36660)))

(declare-fun b!3328144 () Bool)

(declare-fun e!2069697 () List!36784)

(assert (=> b!3328144 (= e!2069697 (drop!1927 (t!256741 lt!1130680) (- 0 1)))))

(declare-fun b!3328145 () Bool)

(assert (=> b!3328145 (= e!2069695 e!2069697)))

(declare-fun c!565267 () Bool)

(assert (=> b!3328145 (= c!565267 (<= 0 0))))

(declare-fun b!3328146 () Bool)

(assert (=> b!3328146 (= e!2069698 0)))

(declare-fun b!3328147 () Bool)

(assert (=> b!3328147 (= e!2069698 (- call!241375 0))))

(declare-fun b!3328148 () Bool)

(assert (=> b!3328148 (= e!2069697 lt!1130680)))

(assert (= (and d!936086 c!565270) b!3328143))

(assert (= (and d!936086 (not c!565270)) b!3328145))

(assert (= (and b!3328145 c!565267) b!3328148))

(assert (= (and b!3328145 (not c!565267)) b!3328144))

(assert (= (and d!936086 res!1349862) b!3328140))

(assert (= (and b!3328140 c!565269) b!3328142))

(assert (= (and b!3328140 (not c!565269)) b!3328141))

(assert (= (and b!3328141 c!565268) b!3328146))

(assert (= (and b!3328141 (not c!565268)) b!3328147))

(assert (= (or b!3328142 b!3328141 b!3328147) bm!241370))

(declare-fun m!3668995 () Bool)

(assert (=> d!936086 m!3668995))

(assert (=> d!936086 m!3668979))

(declare-fun m!3668997 () Bool)

(assert (=> b!3328140 m!3668997))

(assert (=> bm!241370 m!3668983))

(declare-fun m!3668999 () Bool)

(assert (=> b!3328144 m!3668999))

(assert (=> b!3327507 d!936086))

(declare-fun b!3328163 () Bool)

(declare-fun res!1349876 () Bool)

(declare-fun e!2069706 () Bool)

(assert (=> b!3328163 (=> (not res!1349876) (not e!2069706))))

(declare-fun ++!8913 (Conc!11035 Conc!11035) Conc!11035)

(assert (=> b!3328163 (= res!1349876 (isBalanced!3312 (++!8913 (c!565061 (BalanceConc!21685 Empty!11035)) (c!565061 (charsOf!3344 (apply!8464 lt!1130560 0))))))))

(declare-fun d!936088 () Bool)

(assert (=> d!936088 e!2069706))

(declare-fun res!1349873 () Bool)

(assert (=> d!936088 (=> (not res!1349873) (not e!2069706))))

(declare-fun appendAssocInst!771 (Conc!11035 Conc!11035) Bool)

(assert (=> d!936088 (= res!1349873 (appendAssocInst!771 (c!565061 (BalanceConc!21685 Empty!11035)) (c!565061 (charsOf!3344 (apply!8464 lt!1130560 0)))))))

(declare-fun lt!1131099 () BalanceConc!21684)

(assert (=> d!936088 (= lt!1131099 (BalanceConc!21685 (++!8913 (c!565061 (BalanceConc!21685 Empty!11035)) (c!565061 (charsOf!3344 (apply!8464 lt!1130560 0))))))))

(assert (=> d!936088 (= (++!8909 (BalanceConc!21685 Empty!11035) (charsOf!3344 (apply!8464 lt!1130560 0))) lt!1131099)))

(declare-fun b!3328165 () Bool)

(declare-fun res!1349875 () Bool)

(assert (=> b!3328165 (=> (not res!1349875) (not e!2069706))))

(declare-fun height!1632 (Conc!11035) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3328165 (= res!1349875 (>= (height!1632 (++!8913 (c!565061 (BalanceConc!21685 Empty!11035)) (c!565061 (charsOf!3344 (apply!8464 lt!1130560 0))))) (max!0 (height!1632 (c!565061 (BalanceConc!21685 Empty!11035))) (height!1632 (c!565061 (charsOf!3344 (apply!8464 lt!1130560 0)))))))))

(declare-fun b!3328166 () Bool)

(assert (=> b!3328166 (= e!2069706 (= (list!13197 lt!1131099) (++!8907 (list!13197 (BalanceConc!21685 Empty!11035)) (list!13197 (charsOf!3344 (apply!8464 lt!1130560 0))))))))

(declare-fun b!3328164 () Bool)

(declare-fun res!1349874 () Bool)

(assert (=> b!3328164 (=> (not res!1349874) (not e!2069706))))

(assert (=> b!3328164 (= res!1349874 (<= (height!1632 (++!8913 (c!565061 (BalanceConc!21685 Empty!11035)) (c!565061 (charsOf!3344 (apply!8464 lt!1130560 0))))) (+ (max!0 (height!1632 (c!565061 (BalanceConc!21685 Empty!11035))) (height!1632 (c!565061 (charsOf!3344 (apply!8464 lt!1130560 0))))) 1)))))

(assert (= (and d!936088 res!1349873) b!3328163))

(assert (= (and b!3328163 res!1349876) b!3328164))

(assert (= (and b!3328164 res!1349874) b!3328165))

(assert (= (and b!3328165 res!1349875) b!3328166))

(declare-fun m!3669001 () Bool)

(assert (=> b!3328164 m!3669001))

(declare-fun m!3669003 () Bool)

(assert (=> b!3328164 m!3669003))

(declare-fun m!3669005 () Bool)

(assert (=> b!3328164 m!3669005))

(assert (=> b!3328164 m!3669003))

(declare-fun m!3669007 () Bool)

(assert (=> b!3328164 m!3669007))

(assert (=> b!3328164 m!3669005))

(assert (=> b!3328164 m!3669001))

(declare-fun m!3669009 () Bool)

(assert (=> b!3328164 m!3669009))

(assert (=> b!3328163 m!3669003))

(assert (=> b!3328163 m!3669003))

(declare-fun m!3669011 () Bool)

(assert (=> b!3328163 m!3669011))

(assert (=> b!3328165 m!3669001))

(assert (=> b!3328165 m!3669003))

(assert (=> b!3328165 m!3669005))

(assert (=> b!3328165 m!3669003))

(assert (=> b!3328165 m!3669007))

(assert (=> b!3328165 m!3669005))

(assert (=> b!3328165 m!3669001))

(assert (=> b!3328165 m!3669009))

(declare-fun m!3669013 () Bool)

(assert (=> b!3328166 m!3669013))

(assert (=> b!3328166 m!3667823))

(assert (=> b!3328166 m!3667847))

(declare-fun m!3669015 () Bool)

(assert (=> b!3328166 m!3669015))

(assert (=> b!3328166 m!3667823))

(assert (=> b!3328166 m!3669015))

(declare-fun m!3669017 () Bool)

(assert (=> b!3328166 m!3669017))

(declare-fun m!3669019 () Bool)

(assert (=> d!936088 m!3669019))

(assert (=> d!936088 m!3669003))

(assert (=> b!3327507 d!936088))

(assert (=> b!3327507 d!936068))

(declare-fun d!936090 () Bool)

(declare-fun e!2069712 () Bool)

(assert (=> d!936090 e!2069712))

(declare-fun res!1349878 () Bool)

(assert (=> d!936090 (=> (not res!1349878) (not e!2069712))))

(declare-fun lt!1131134 () List!36784)

(assert (=> d!936090 (= res!1349878 (= ((_ map implies) (content!5009 lt!1131134) (content!5009 lt!1130679)) ((as const (InoxSet Token!10026)) true)))))

(declare-fun e!2069711 () List!36784)

(assert (=> d!936090 (= lt!1131134 e!2069711)))

(declare-fun c!565282 () Bool)

(assert (=> d!936090 (= c!565282 ((_ is Nil!36660) lt!1130679))))

(assert (=> d!936090 (= (drop!1927 lt!1130679 0) lt!1131134)))

(declare-fun b!3328174 () Bool)

(declare-fun e!2069715 () Int)

(assert (=> b!3328174 (= e!2069712 (= (size!27718 lt!1131134) e!2069715))))

(declare-fun c!565281 () Bool)

(assert (=> b!3328174 (= c!565281 (<= 0 0))))

(declare-fun b!3328175 () Bool)

(declare-fun e!2069714 () Int)

(assert (=> b!3328175 (= e!2069715 e!2069714)))

(declare-fun c!565280 () Bool)

(declare-fun call!241376 () Int)

(assert (=> b!3328175 (= c!565280 (>= 0 call!241376))))

(declare-fun bm!241371 () Bool)

(assert (=> bm!241371 (= call!241376 (size!27718 lt!1130679))))

(declare-fun b!3328176 () Bool)

(assert (=> b!3328176 (= e!2069715 call!241376)))

(declare-fun b!3328177 () Bool)

(assert (=> b!3328177 (= e!2069711 Nil!36660)))

(declare-fun b!3328178 () Bool)

(declare-fun e!2069713 () List!36784)

(assert (=> b!3328178 (= e!2069713 (drop!1927 (t!256741 lt!1130679) (- 0 1)))))

(declare-fun b!3328179 () Bool)

(assert (=> b!3328179 (= e!2069711 e!2069713)))

(declare-fun c!565279 () Bool)

(assert (=> b!3328179 (= c!565279 (<= 0 0))))

(declare-fun b!3328180 () Bool)

(assert (=> b!3328180 (= e!2069714 0)))

(declare-fun b!3328181 () Bool)

(assert (=> b!3328181 (= e!2069714 (- call!241376 0))))

(declare-fun b!3328182 () Bool)

(assert (=> b!3328182 (= e!2069713 lt!1130679)))

(assert (= (and d!936090 c!565282) b!3328177))

(assert (= (and d!936090 (not c!565282)) b!3328179))

(assert (= (and b!3328179 c!565279) b!3328182))

(assert (= (and b!3328179 (not c!565279)) b!3328178))

(assert (= (and d!936090 res!1349878) b!3328174))

(assert (= (and b!3328174 c!565281) b!3328176))

(assert (= (and b!3328174 (not c!565281)) b!3328175))

(assert (= (and b!3328175 c!565280) b!3328180))

(assert (= (and b!3328175 (not c!565280)) b!3328181))

(assert (= (or b!3328176 b!3328175 b!3328181) bm!241371))

(declare-fun m!3669021 () Bool)

(assert (=> d!936090 m!3669021))

(declare-fun m!3669023 () Bool)

(assert (=> d!936090 m!3669023))

(declare-fun m!3669025 () Bool)

(assert (=> b!3328174 m!3669025))

(declare-fun m!3669027 () Bool)

(assert (=> bm!241371 m!3669027))

(declare-fun m!3669029 () Bool)

(assert (=> b!3328178 m!3669029))

(assert (=> b!3327507 d!936090))

(declare-fun d!936092 () Bool)

(assert (=> d!936092 (= (head!7159 (drop!1927 lt!1130679 0)) (apply!8465 lt!1130679 0))))

(declare-fun lt!1131137 () Unit!51672)

(declare-fun choose!19282 (List!36784 Int) Unit!51672)

(assert (=> d!936092 (= lt!1131137 (choose!19282 lt!1130679 0))))

(declare-fun e!2069718 () Bool)

(assert (=> d!936092 e!2069718))

(declare-fun res!1349881 () Bool)

(assert (=> d!936092 (=> (not res!1349881) (not e!2069718))))

(assert (=> d!936092 (= res!1349881 (>= 0 0))))

(assert (=> d!936092 (= (lemmaDropApply!1093 lt!1130679 0) lt!1131137)))

(declare-fun b!3328185 () Bool)

(assert (=> b!3328185 (= e!2069718 (< 0 (size!27718 lt!1130679)))))

(assert (= (and d!936092 res!1349881) b!3328185))

(assert (=> d!936092 m!3667831))

(assert (=> d!936092 m!3667831))

(assert (=> d!936092 m!3667843))

(assert (=> d!936092 m!3667837))

(declare-fun m!3669115 () Bool)

(assert (=> d!936092 m!3669115))

(assert (=> b!3328185 m!3669027))

(assert (=> b!3327507 d!936092))

(declare-fun d!936094 () Bool)

(declare-fun lt!1131138 () Token!10026)

(assert (=> d!936094 (= lt!1131138 (apply!8465 (list!13200 lt!1130560) 0))))

(assert (=> d!936094 (= lt!1131138 (apply!8467 (c!565062 lt!1130560) 0))))

(declare-fun e!2069719 () Bool)

(assert (=> d!936094 e!2069719))

(declare-fun res!1349882 () Bool)

(assert (=> d!936094 (=> (not res!1349882) (not e!2069719))))

(assert (=> d!936094 (= res!1349882 (<= 0 0))))

(assert (=> d!936094 (= (apply!8464 lt!1130560 0) lt!1131138)))

(declare-fun b!3328186 () Bool)

(assert (=> b!3328186 (= e!2069719 (< 0 (size!27715 lt!1130560)))))

(assert (= (and d!936094 res!1349882) b!3328186))

(assert (=> d!936094 m!3667817))

(assert (=> d!936094 m!3667817))

(declare-fun m!3669121 () Bool)

(assert (=> d!936094 m!3669121))

(declare-fun m!3669123 () Bool)

(assert (=> d!936094 m!3669123))

(assert (=> b!3328186 m!3667825))

(assert (=> b!3327507 d!936094))

(declare-fun d!936098 () Bool)

(declare-fun lt!1131146 () Token!10026)

(assert (=> d!936098 (contains!6645 lt!1130679 lt!1131146)))

(declare-fun e!2069731 () Token!10026)

(assert (=> d!936098 (= lt!1131146 e!2069731)))

(declare-fun c!565286 () Bool)

(assert (=> d!936098 (= c!565286 (= 0 0))))

(declare-fun e!2069730 () Bool)

(assert (=> d!936098 e!2069730))

(declare-fun res!1349891 () Bool)

(assert (=> d!936098 (=> (not res!1349891) (not e!2069730))))

(assert (=> d!936098 (= res!1349891 (<= 0 0))))

(assert (=> d!936098 (= (apply!8465 lt!1130679 0) lt!1131146)))

(declare-fun b!3328201 () Bool)

(assert (=> b!3328201 (= e!2069730 (< 0 (size!27718 lt!1130679)))))

(declare-fun b!3328202 () Bool)

(assert (=> b!3328202 (= e!2069731 (head!7159 lt!1130679))))

(declare-fun b!3328203 () Bool)

(assert (=> b!3328203 (= e!2069731 (apply!8465 (tail!5296 lt!1130679) (- 0 1)))))

(assert (= (and d!936098 res!1349891) b!3328201))

(assert (= (and d!936098 c!565286) b!3328202))

(assert (= (and d!936098 (not c!565286)) b!3328203))

(declare-fun m!3669173 () Bool)

(assert (=> d!936098 m!3669173))

(assert (=> b!3328201 m!3669027))

(declare-fun m!3669175 () Bool)

(assert (=> b!3328202 m!3669175))

(declare-fun m!3669177 () Bool)

(assert (=> b!3328203 m!3669177))

(assert (=> b!3328203 m!3669177))

(declare-fun m!3669179 () Bool)

(assert (=> b!3328203 m!3669179))

(assert (=> b!3327507 d!936098))

(declare-fun d!936116 () Bool)

(assert (=> d!936116 (= (tail!5296 (drop!1927 lt!1130680 0)) (drop!1927 lt!1130680 (+ 0 1)))))

(declare-fun lt!1131152 () Unit!51672)

(declare-fun choose!19283 (List!36784 Int) Unit!51672)

(assert (=> d!936116 (= lt!1131152 (choose!19283 lt!1130680 0))))

(declare-fun e!2069736 () Bool)

(assert (=> d!936116 e!2069736))

(declare-fun res!1349894 () Bool)

(assert (=> d!936116 (=> (not res!1349894) (not e!2069736))))

(assert (=> d!936116 (= res!1349894 (>= 0 0))))

(assert (=> d!936116 (= (lemmaDropTail!977 lt!1130680 0) lt!1131152)))

(declare-fun b!3328210 () Bool)

(assert (=> b!3328210 (= e!2069736 (< 0 (size!27718 lt!1130680)))))

(assert (= (and d!936116 res!1349894) b!3328210))

(assert (=> d!936116 m!3667833))

(assert (=> d!936116 m!3667833))

(assert (=> d!936116 m!3667851))

(assert (=> d!936116 m!3667853))

(declare-fun m!3669193 () Bool)

(assert (=> d!936116 m!3669193))

(assert (=> b!3328210 m!3668983))

(assert (=> b!3327507 d!936116))

(declare-fun d!936126 () Bool)

(assert (=> d!936126 (= (inv!17 (value!172365 separatorToken!241)) (= (charsToBigInt!1 (text!39368 (value!172365 separatorToken!241))) (value!172357 (value!172365 separatorToken!241))))))

(declare-fun bs!551108 () Bool)

(assert (= bs!551108 d!936126))

(declare-fun m!3669195 () Bool)

(assert (=> bs!551108 m!3669195))

(assert (=> b!3327535 d!936126))

(assert (=> b!3327505 d!935780))

(declare-fun d!936128 () Bool)

(declare-fun lt!1131153 () Bool)

(assert (=> d!936128 (= lt!1131153 (select (content!5009 (t!256741 tokens!494)) (h!42080 tokens!494)))))

(declare-fun e!2069738 () Bool)

(assert (=> d!936128 (= lt!1131153 e!2069738)))

(declare-fun res!1349896 () Bool)

(assert (=> d!936128 (=> (not res!1349896) (not e!2069738))))

(assert (=> d!936128 (= res!1349896 ((_ is Cons!36660) (t!256741 tokens!494)))))

(assert (=> d!936128 (= (contains!6645 (t!256741 tokens!494) (h!42080 tokens!494)) lt!1131153)))

(declare-fun b!3328211 () Bool)

(declare-fun e!2069737 () Bool)

(assert (=> b!3328211 (= e!2069738 e!2069737)))

(declare-fun res!1349895 () Bool)

(assert (=> b!3328211 (=> res!1349895 e!2069737)))

(assert (=> b!3328211 (= res!1349895 (= (h!42080 (t!256741 tokens!494)) (h!42080 tokens!494)))))

(declare-fun b!3328212 () Bool)

(assert (=> b!3328212 (= e!2069737 (contains!6645 (t!256741 (t!256741 tokens!494)) (h!42080 tokens!494)))))

(assert (= (and d!936128 res!1349896) b!3328211))

(assert (= (and b!3328211 (not res!1349895)) b!3328212))

(assert (=> d!936128 m!3668251))

(declare-fun m!3669199 () Bool)

(assert (=> d!936128 m!3669199))

(declare-fun m!3669201 () Bool)

(assert (=> b!3328212 m!3669201))

(assert (=> b!3327550 d!936128))

(declare-fun bs!551112 () Bool)

(declare-fun d!936132 () Bool)

(assert (= bs!551112 (and d!936132 d!935748)))

(declare-fun lambda!119745 () Int)

(assert (=> bs!551112 (= (and (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (h!42081 rules!2135)))) (= (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241))) (toValue!7490 (transformation!5330 (h!42081 rules!2135))))) (= lambda!119745 lambda!119728))))

(declare-fun bs!551113 () Bool)

(assert (= bs!551113 (and d!936132 d!935812)))

(assert (=> bs!551113 (= (and (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) (= (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241))) (toValue!7490 (transformation!5330 (rule!7852 (h!42080 tokens!494)))))) (= lambda!119745 lambda!119729))))

(assert (=> d!936132 true))

(assert (=> d!936132 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) (dynLambda!15122 order!19181 lambda!119745))))

(assert (=> d!936132 true))

(assert (=> d!936132 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))) (dynLambda!15122 order!19181 lambda!119745))))

(assert (=> d!936132 (= (semiInverseModEq!2213 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toValue!7490 (transformation!5330 (rule!7852 separatorToken!241)))) (Forall!1304 lambda!119745))))

(declare-fun bs!551115 () Bool)

(assert (= bs!551115 d!936132))

(declare-fun m!3669209 () Bool)

(assert (=> bs!551115 m!3669209))

(assert (=> d!935682 d!936132))

(declare-fun d!936138 () Bool)

(assert (=> d!936138 (= (inv!15 (value!172365 separatorToken!241)) (= (charsToBigInt!0 (text!39369 (value!172365 separatorToken!241)) 0) (value!172360 (value!172365 separatorToken!241))))))

(declare-fun bs!551117 () Bool)

(assert (= bs!551117 d!936138))

(declare-fun m!3669213 () Bool)

(assert (=> bs!551117 m!3669213))

(assert (=> b!3327533 d!936138))

(assert (=> b!3327335 d!935656))

(declare-fun d!936142 () Bool)

(declare-fun lt!1131155 () Bool)

(assert (=> d!936142 (= lt!1131155 (isEmpty!20819 (list!13197 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)))))))))

(assert (=> d!936142 (= lt!1131155 (isEmpty!20828 (c!565061 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241)))))))))

(assert (=> d!936142 (= (isEmpty!20827 (_2!21213 (lex!2245 thiss!18206 rules!2135 (print!1984 thiss!18206 (singletonSeq!2426 separatorToken!241))))) lt!1131155)))

(declare-fun bs!551118 () Bool)

(assert (= bs!551118 d!936142))

(declare-fun m!3669215 () Bool)

(assert (=> bs!551118 m!3669215))

(assert (=> bs!551118 m!3669215))

(declare-fun m!3669217 () Bool)

(assert (=> bs!551118 m!3669217))

(declare-fun m!3669219 () Bool)

(assert (=> bs!551118 m!3669219))

(assert (=> b!3327539 d!936142))

(assert (=> b!3327539 d!936000))

(assert (=> b!3327539 d!935998))

(assert (=> b!3327539 d!935994))

(declare-fun e!2069740 () Bool)

(declare-fun lt!1131156 () List!36783)

(declare-fun b!3328216 () Bool)

(assert (=> b!3328216 (= e!2069740 (or (not (= (list!13197 (charsOf!3344 separatorToken!241)) Nil!36659)) (= lt!1131156 (t!256740 lt!1130562))))))

(declare-fun b!3328213 () Bool)

(declare-fun e!2069739 () List!36783)

(assert (=> b!3328213 (= e!2069739 (list!13197 (charsOf!3344 separatorToken!241)))))

(declare-fun b!3328214 () Bool)

(assert (=> b!3328214 (= e!2069739 (Cons!36659 (h!42079 (t!256740 lt!1130562)) (++!8907 (t!256740 (t!256740 lt!1130562)) (list!13197 (charsOf!3344 separatorToken!241)))))))

(declare-fun d!936144 () Bool)

(assert (=> d!936144 e!2069740))

(declare-fun res!1349897 () Bool)

(assert (=> d!936144 (=> (not res!1349897) (not e!2069740))))

(assert (=> d!936144 (= res!1349897 (= (content!5008 lt!1131156) ((_ map or) (content!5008 (t!256740 lt!1130562)) (content!5008 (list!13197 (charsOf!3344 separatorToken!241))))))))

(assert (=> d!936144 (= lt!1131156 e!2069739)))

(declare-fun c!565289 () Bool)

(assert (=> d!936144 (= c!565289 ((_ is Nil!36659) (t!256740 lt!1130562)))))

(assert (=> d!936144 (= (++!8907 (t!256740 lt!1130562) (list!13197 (charsOf!3344 separatorToken!241))) lt!1131156)))

(declare-fun b!3328215 () Bool)

(declare-fun res!1349898 () Bool)

(assert (=> b!3328215 (=> (not res!1349898) (not e!2069740))))

(assert (=> b!3328215 (= res!1349898 (= (size!27713 lt!1131156) (+ (size!27713 (t!256740 lt!1130562)) (size!27713 (list!13197 (charsOf!3344 separatorToken!241))))))))

(assert (= (and d!936144 c!565289) b!3328213))

(assert (= (and d!936144 (not c!565289)) b!3328214))

(assert (= (and d!936144 res!1349897) b!3328215))

(assert (= (and b!3328215 res!1349898) b!3328216))

(assert (=> b!3328214 m!3667433))

(declare-fun m!3669223 () Bool)

(assert (=> b!3328214 m!3669223))

(declare-fun m!3669225 () Bool)

(assert (=> d!936144 m!3669225))

(declare-fun m!3669227 () Bool)

(assert (=> d!936144 m!3669227))

(assert (=> d!936144 m!3667433))

(assert (=> d!936144 m!3667731))

(declare-fun m!3669229 () Bool)

(assert (=> b!3328215 m!3669229))

(assert (=> b!3328215 m!3668245))

(assert (=> b!3328215 m!3667433))

(assert (=> b!3328215 m!3667737))

(assert (=> b!3327382 d!936144))

(declare-fun d!936148 () Bool)

(declare-fun c!565293 () Bool)

(assert (=> d!936148 (= c!565293 ((_ is Nil!36659) lt!1130644))))

(declare-fun e!2069746 () (InoxSet C!20364))

(assert (=> d!936148 (= (content!5008 lt!1130644) e!2069746)))

(declare-fun b!3328226 () Bool)

(assert (=> b!3328226 (= e!2069746 ((as const (Array C!20364 Bool)) false))))

(declare-fun b!3328227 () Bool)

(assert (=> b!3328227 (= e!2069746 ((_ map or) (store ((as const (Array C!20364 Bool)) false) (h!42079 lt!1130644) true) (content!5008 (t!256740 lt!1130644))))))

(assert (= (and d!936148 c!565293) b!3328226))

(assert (= (and d!936148 (not c!565293)) b!3328227))

(declare-fun m!3669251 () Bool)

(assert (=> b!3328227 m!3669251))

(declare-fun m!3669253 () Bool)

(assert (=> b!3328227 m!3669253))

(assert (=> d!935640 d!936148))

(declare-fun d!936154 () Bool)

(declare-fun c!565294 () Bool)

(assert (=> d!936154 (= c!565294 ((_ is Nil!36659) lt!1130562))))

(declare-fun e!2069747 () (InoxSet C!20364))

(assert (=> d!936154 (= (content!5008 lt!1130562) e!2069747)))

(declare-fun b!3328228 () Bool)

(assert (=> b!3328228 (= e!2069747 ((as const (Array C!20364 Bool)) false))))

(declare-fun b!3328229 () Bool)

(assert (=> b!3328229 (= e!2069747 ((_ map or) (store ((as const (Array C!20364 Bool)) false) (h!42079 lt!1130562) true) (content!5008 (t!256740 lt!1130562))))))

(assert (= (and d!936154 c!565294) b!3328228))

(assert (= (and d!936154 (not c!565294)) b!3328229))

(declare-fun m!3669259 () Bool)

(assert (=> b!3328229 m!3669259))

(assert (=> b!3328229 m!3669227))

(assert (=> d!935640 d!936154))

(declare-fun d!936158 () Bool)

(declare-fun c!565296 () Bool)

(assert (=> d!936158 (= c!565296 ((_ is Nil!36659) (list!13197 (charsOf!3344 separatorToken!241))))))

(declare-fun e!2069749 () (InoxSet C!20364))

(assert (=> d!936158 (= (content!5008 (list!13197 (charsOf!3344 separatorToken!241))) e!2069749)))

(declare-fun b!3328232 () Bool)

(assert (=> b!3328232 (= e!2069749 ((as const (Array C!20364 Bool)) false))))

(declare-fun b!3328233 () Bool)

(assert (=> b!3328233 (= e!2069749 ((_ map or) (store ((as const (Array C!20364 Bool)) false) (h!42079 (list!13197 (charsOf!3344 separatorToken!241))) true) (content!5008 (t!256740 (list!13197 (charsOf!3344 separatorToken!241))))))))

(assert (= (and d!936158 c!565296) b!3328232))

(assert (= (and d!936158 (not c!565296)) b!3328233))

(declare-fun m!3669261 () Bool)

(assert (=> b!3328233 m!3669261))

(declare-fun m!3669263 () Bool)

(assert (=> b!3328233 m!3669263))

(assert (=> d!935640 d!936158))

(declare-fun tp!1040063 () Bool)

(declare-fun b!3328250 () Bool)

(declare-fun tp!1040064 () Bool)

(declare-fun e!2069759 () Bool)

(assert (=> b!3328250 (= e!2069759 (and (inv!49665 (left!28570 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))))) tp!1040064 (inv!49665 (right!28900 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))))) tp!1040063))))

(declare-fun b!3328252 () Bool)

(declare-fun e!2069760 () Bool)

(declare-fun tp!1040065 () Bool)

(assert (=> b!3328252 (= e!2069760 tp!1040065)))

(declare-fun b!3328251 () Bool)

(declare-fun inv!49671 (IArray!22075) Bool)

(assert (=> b!3328251 (= e!2069759 (and (inv!49671 (xs!14173 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))))) e!2069760))))

(assert (=> b!3327363 (= tp!1039937 (and (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241)))) e!2069759))))

(assert (= (and b!3327363 ((_ is Node!11035) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))))) b!3328250))

(assert (= b!3328251 b!3328252))

(assert (= (and b!3327363 ((_ is Leaf!17311) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (value!172365 separatorToken!241))))) b!3328251))

(declare-fun m!3669291 () Bool)

(assert (=> b!3328250 m!3669291))

(declare-fun m!3669293 () Bool)

(assert (=> b!3328250 m!3669293))

(declare-fun m!3669295 () Bool)

(assert (=> b!3328251 m!3669295))

(assert (=> b!3327363 m!3667681))

(declare-fun b!3328255 () Bool)

(declare-fun e!2069761 () Bool)

(declare-fun tp!1040069 () Bool)

(assert (=> b!3328255 (= e!2069761 tp!1040069)))

(assert (=> b!3327589 (= tp!1040027 e!2069761)))

(declare-fun b!3328256 () Bool)

(declare-fun tp!1040066 () Bool)

(declare-fun tp!1040070 () Bool)

(assert (=> b!3328256 (= e!2069761 (and tp!1040066 tp!1040070))))

(declare-fun b!3328253 () Bool)

(assert (=> b!3328253 (= e!2069761 tp_is_empty!17417)))

(declare-fun b!3328254 () Bool)

(declare-fun tp!1040068 () Bool)

(declare-fun tp!1040067 () Bool)

(assert (=> b!3328254 (= e!2069761 (and tp!1040068 tp!1040067))))

(assert (= (and b!3327589 ((_ is ElementMatch!10089) (regOne!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328253))

(assert (= (and b!3327589 ((_ is Concat!15649) (regOne!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328254))

(assert (= (and b!3327589 ((_ is Star!10089) (regOne!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328255))

(assert (= (and b!3327589 ((_ is Union!10089) (regOne!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328256))

(declare-fun b!3328261 () Bool)

(declare-fun e!2069763 () Bool)

(declare-fun tp!1040074 () Bool)

(assert (=> b!3328261 (= e!2069763 tp!1040074)))

(assert (=> b!3327589 (= tp!1040026 e!2069763)))

(declare-fun b!3328262 () Bool)

(declare-fun tp!1040071 () Bool)

(declare-fun tp!1040075 () Bool)

(assert (=> b!3328262 (= e!2069763 (and tp!1040071 tp!1040075))))

(declare-fun b!3328259 () Bool)

(assert (=> b!3328259 (= e!2069763 tp_is_empty!17417)))

(declare-fun b!3328260 () Bool)

(declare-fun tp!1040073 () Bool)

(declare-fun tp!1040072 () Bool)

(assert (=> b!3328260 (= e!2069763 (and tp!1040073 tp!1040072))))

(assert (= (and b!3327589 ((_ is ElementMatch!10089) (regTwo!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328259))

(assert (= (and b!3327589 ((_ is Concat!15649) (regTwo!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328260))

(assert (= (and b!3327589 ((_ is Star!10089) (regTwo!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328261))

(assert (= (and b!3327589 ((_ is Union!10089) (regTwo!20690 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328262))

(declare-fun b!3328266 () Bool)

(declare-fun b_free!87597 () Bool)

(declare-fun b_next!88301 () Bool)

(assert (=> b!3328266 (= b_free!87597 (not b_next!88301))))

(declare-fun tp!1040079 () Bool)

(declare-fun b_and!229439 () Bool)

(assert (=> b!3328266 (= tp!1040079 b_and!229439)))

(declare-fun b_free!87599 () Bool)

(declare-fun b_next!88303 () Bool)

(assert (=> b!3328266 (= b_free!87599 (not b_next!88303))))

(declare-fun t!256869 () Bool)

(declare-fun tb!174299 () Bool)

(assert (=> (and b!3328266 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) t!256869) tb!174299))

(declare-fun result!217398 () Bool)

(assert (= result!217398 result!217356))

(assert (=> d!935840 t!256869))

(declare-fun t!256871 () Bool)

(declare-fun tb!174301 () Bool)

(assert (=> (and b!3328266 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) t!256871) tb!174301))

(declare-fun result!217400 () Bool)

(assert (= result!217400 result!217298))

(assert (=> d!935700 t!256871))

(declare-fun tb!174303 () Bool)

(declare-fun t!256873 () Bool)

(assert (=> (and b!3328266 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) t!256873) tb!174303))

(declare-fun result!217402 () Bool)

(assert (= result!217402 result!217290))

(assert (=> b!3327357 t!256873))

(declare-fun tb!174305 () Bool)

(declare-fun t!256875 () Bool)

(assert (=> (and b!3328266 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0))))) t!256875) tb!174305))

(declare-fun result!217404 () Bool)

(assert (= result!217404 result!217376))

(assert (=> d!936084 t!256875))

(assert (=> b!3327364 t!256871))

(assert (=> d!935636 t!256873))

(declare-fun t!256877 () Bool)

(declare-fun tb!174307 () Bool)

(assert (=> (and b!3328266 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) t!256877) tb!174307))

(declare-fun result!217406 () Bool)

(assert (= result!217406 result!217336))

(assert (=> b!3327658 t!256877))

(declare-fun tp!1040076 () Bool)

(declare-fun b_and!229441 () Bool)

(assert (=> b!3328266 (= tp!1040076 (and (=> t!256873 result!217402) (=> t!256875 result!217404) (=> t!256877 result!217406) (=> t!256869 result!217398) (=> t!256871 result!217400) b_and!229441))))

(declare-fun e!2069764 () Bool)

(declare-fun b!3328265 () Bool)

(declare-fun e!2069768 () Bool)

(declare-fun tp!1040078 () Bool)

(assert (=> b!3328265 (= e!2069764 (and tp!1040078 (inv!49658 (tag!5882 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) (inv!49661 (transformation!5330 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) e!2069768))))

(declare-fun b!3328264 () Bool)

(declare-fun tp!1040080 () Bool)

(declare-fun e!2069769 () Bool)

(assert (=> b!3328264 (= e!2069769 (and (inv!21 (value!172365 (h!42080 (t!256741 (t!256741 tokens!494))))) e!2069764 tp!1040080))))

(declare-fun e!2069765 () Bool)

(assert (=> b!3327584 (= tp!1040021 e!2069765)))

(declare-fun tp!1040077 () Bool)

(declare-fun b!3328263 () Bool)

(assert (=> b!3328263 (= e!2069765 (and (inv!49662 (h!42080 (t!256741 (t!256741 tokens!494)))) e!2069769 tp!1040077))))

(assert (=> b!3328266 (= e!2069768 (and tp!1040079 tp!1040076))))

(assert (= b!3328265 b!3328266))

(assert (= b!3328264 b!3328265))

(assert (= b!3328263 b!3328264))

(assert (= (and b!3327584 ((_ is Cons!36660) (t!256741 (t!256741 tokens!494)))) b!3328263))

(declare-fun m!3669321 () Bool)

(assert (=> b!3328265 m!3669321))

(declare-fun m!3669325 () Bool)

(assert (=> b!3328265 m!3669325))

(declare-fun m!3669327 () Bool)

(assert (=> b!3328264 m!3669327))

(declare-fun m!3669329 () Bool)

(assert (=> b!3328263 m!3669329))

(declare-fun b!3328273 () Bool)

(declare-fun e!2069772 () Bool)

(declare-fun tp!1040084 () Bool)

(assert (=> b!3328273 (= e!2069772 tp!1040084)))

(assert (=> b!3327601 (= tp!1040039 e!2069772)))

(declare-fun b!3328274 () Bool)

(declare-fun tp!1040081 () Bool)

(declare-fun tp!1040085 () Bool)

(assert (=> b!3328274 (= e!2069772 (and tp!1040081 tp!1040085))))

(declare-fun b!3328271 () Bool)

(assert (=> b!3328271 (= e!2069772 tp_is_empty!17417)))

(declare-fun b!3328272 () Bool)

(declare-fun tp!1040083 () Bool)

(declare-fun tp!1040082 () Bool)

(assert (=> b!3328272 (= e!2069772 (and tp!1040083 tp!1040082))))

(assert (= (and b!3327601 ((_ is ElementMatch!10089) (regex!5330 (h!42081 (t!256742 rules!2135))))) b!3328271))

(assert (= (and b!3327601 ((_ is Concat!15649) (regex!5330 (h!42081 (t!256742 rules!2135))))) b!3328272))

(assert (= (and b!3327601 ((_ is Star!10089) (regex!5330 (h!42081 (t!256742 rules!2135))))) b!3328273))

(assert (= (and b!3327601 ((_ is Union!10089) (regex!5330 (h!42081 (t!256742 rules!2135))))) b!3328274))

(declare-fun b!3328277 () Bool)

(declare-fun b_free!87601 () Bool)

(declare-fun b_next!88305 () Bool)

(assert (=> b!3328277 (= b_free!87601 (not b_next!88305))))

(declare-fun tp!1040089 () Bool)

(declare-fun b_and!229443 () Bool)

(assert (=> b!3328277 (= tp!1040089 b_and!229443)))

(declare-fun b_free!87603 () Bool)

(declare-fun b_next!88307 () Bool)

(assert (=> b!3328277 (= b_free!87603 (not b_next!88307))))

(declare-fun t!256879 () Bool)

(declare-fun tb!174309 () Bool)

(assert (=> (and b!3328277 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 (t!256742 rules!2135))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (Cons!36660 (h!42080 tokens!494) Nil!36660)))))) t!256879) tb!174309))

(declare-fun result!217408 () Bool)

(assert (= result!217408 result!217356))

(assert (=> d!935840 t!256879))

(declare-fun t!256881 () Bool)

(declare-fun tb!174311 () Bool)

(assert (=> (and b!3328277 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 (t!256742 rules!2135))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494))))) t!256881) tb!174311))

(declare-fun result!217410 () Bool)

(assert (= result!217410 result!217298))

(assert (=> d!935700 t!256881))

(declare-fun tb!174313 () Bool)

(declare-fun t!256883 () Bool)

(assert (=> (and b!3328277 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 (t!256742 rules!2135))))) (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241)))) t!256883) tb!174313))

(declare-fun result!217412 () Bool)

(assert (= result!217412 result!217290))

(assert (=> b!3327357 t!256883))

(declare-fun t!256885 () Bool)

(declare-fun tb!174315 () Bool)

(assert (=> (and b!3328277 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 (t!256742 rules!2135))))) (toChars!7349 (transformation!5330 (rule!7852 (apply!8464 lt!1130560 0))))) t!256885) tb!174315))

(declare-fun result!217414 () Bool)

(assert (= result!217414 result!217376))

(assert (=> d!936084 t!256885))

(assert (=> b!3327364 t!256881))

(assert (=> d!935636 t!256883))

(declare-fun tb!174317 () Bool)

(declare-fun t!256887 () Bool)

(assert (=> (and b!3328277 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 (t!256742 rules!2135))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) t!256887) tb!174317))

(declare-fun result!217416 () Bool)

(assert (= result!217416 result!217336))

(assert (=> b!3327658 t!256887))

(declare-fun tp!1040088 () Bool)

(declare-fun b_and!229445 () Bool)

(assert (=> b!3328277 (= tp!1040088 (and (=> t!256881 result!217410) (=> t!256879 result!217408) (=> t!256887 result!217416) (=> t!256885 result!217414) (=> t!256883 result!217412) b_and!229445))))

(declare-fun e!2069773 () Bool)

(assert (=> b!3328277 (= e!2069773 (and tp!1040089 tp!1040088))))

(declare-fun tp!1040087 () Bool)

(declare-fun b!3328276 () Bool)

(declare-fun e!2069774 () Bool)

(assert (=> b!3328276 (= e!2069774 (and tp!1040087 (inv!49658 (tag!5882 (h!42081 (t!256742 (t!256742 rules!2135))))) (inv!49661 (transformation!5330 (h!42081 (t!256742 (t!256742 rules!2135))))) e!2069773))))

(declare-fun b!3328275 () Bool)

(declare-fun e!2069776 () Bool)

(declare-fun tp!1040086 () Bool)

(assert (=> b!3328275 (= e!2069776 (and e!2069774 tp!1040086))))

(assert (=> b!3327600 (= tp!1040038 e!2069776)))

(assert (= b!3328276 b!3328277))

(assert (= b!3328275 b!3328276))

(assert (= (and b!3327600 ((_ is Cons!36661) (t!256742 (t!256742 rules!2135)))) b!3328275))

(declare-fun m!3669331 () Bool)

(assert (=> b!3328276 m!3669331))

(declare-fun m!3669333 () Bool)

(assert (=> b!3328276 m!3669333))

(declare-fun b!3328280 () Bool)

(declare-fun e!2069777 () Bool)

(declare-fun tp!1040093 () Bool)

(assert (=> b!3328280 (= e!2069777 tp!1040093)))

(assert (=> b!3327591 (= tp!1040025 e!2069777)))

(declare-fun b!3328281 () Bool)

(declare-fun tp!1040090 () Bool)

(declare-fun tp!1040094 () Bool)

(assert (=> b!3328281 (= e!2069777 (and tp!1040090 tp!1040094))))

(declare-fun b!3328278 () Bool)

(assert (=> b!3328278 (= e!2069777 tp_is_empty!17417)))

(declare-fun b!3328279 () Bool)

(declare-fun tp!1040092 () Bool)

(declare-fun tp!1040091 () Bool)

(assert (=> b!3328279 (= e!2069777 (and tp!1040092 tp!1040091))))

(assert (= (and b!3327591 ((_ is ElementMatch!10089) (regOne!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328278))

(assert (= (and b!3327591 ((_ is Concat!15649) (regOne!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328279))

(assert (= (and b!3327591 ((_ is Star!10089) (regOne!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328280))

(assert (= (and b!3327591 ((_ is Union!10089) (regOne!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328281))

(declare-fun b!3328284 () Bool)

(declare-fun e!2069778 () Bool)

(declare-fun tp!1040098 () Bool)

(assert (=> b!3328284 (= e!2069778 tp!1040098)))

(assert (=> b!3327591 (= tp!1040029 e!2069778)))

(declare-fun b!3328285 () Bool)

(declare-fun tp!1040095 () Bool)

(declare-fun tp!1040099 () Bool)

(assert (=> b!3328285 (= e!2069778 (and tp!1040095 tp!1040099))))

(declare-fun b!3328282 () Bool)

(assert (=> b!3328282 (= e!2069778 tp_is_empty!17417)))

(declare-fun b!3328283 () Bool)

(declare-fun tp!1040097 () Bool)

(declare-fun tp!1040096 () Bool)

(assert (=> b!3328283 (= e!2069778 (and tp!1040097 tp!1040096))))

(assert (= (and b!3327591 ((_ is ElementMatch!10089) (regTwo!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328282))

(assert (= (and b!3327591 ((_ is Concat!15649) (regTwo!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328283))

(assert (= (and b!3327591 ((_ is Star!10089) (regTwo!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328284))

(assert (= (and b!3327591 ((_ is Union!10089) (regTwo!20691 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328285))

(declare-fun b!3328288 () Bool)

(declare-fun e!2069779 () Bool)

(declare-fun tp!1040103 () Bool)

(assert (=> b!3328288 (= e!2069779 tp!1040103)))

(assert (=> b!3327586 (= tp!1040022 e!2069779)))

(declare-fun b!3328289 () Bool)

(declare-fun tp!1040100 () Bool)

(declare-fun tp!1040104 () Bool)

(assert (=> b!3328289 (= e!2069779 (and tp!1040100 tp!1040104))))

(declare-fun b!3328286 () Bool)

(assert (=> b!3328286 (= e!2069779 tp_is_empty!17417)))

(declare-fun b!3328287 () Bool)

(declare-fun tp!1040102 () Bool)

(declare-fun tp!1040101 () Bool)

(assert (=> b!3328287 (= e!2069779 (and tp!1040102 tp!1040101))))

(assert (= (and b!3327586 ((_ is ElementMatch!10089) (regex!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) b!3328286))

(assert (= (and b!3327586 ((_ is Concat!15649) (regex!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) b!3328287))

(assert (= (and b!3327586 ((_ is Star!10089) (regex!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) b!3328288))

(assert (= (and b!3327586 ((_ is Union!10089) (regex!5330 (rule!7852 (h!42080 (t!256741 tokens!494)))))) b!3328289))

(declare-fun b!3328292 () Bool)

(declare-fun e!2069780 () Bool)

(declare-fun tp!1040108 () Bool)

(assert (=> b!3328292 (= e!2069780 tp!1040108)))

(assert (=> b!3327590 (= tp!1040028 e!2069780)))

(declare-fun b!3328293 () Bool)

(declare-fun tp!1040105 () Bool)

(declare-fun tp!1040109 () Bool)

(assert (=> b!3328293 (= e!2069780 (and tp!1040105 tp!1040109))))

(declare-fun b!3328290 () Bool)

(assert (=> b!3328290 (= e!2069780 tp_is_empty!17417)))

(declare-fun b!3328291 () Bool)

(declare-fun tp!1040107 () Bool)

(declare-fun tp!1040106 () Bool)

(assert (=> b!3328291 (= e!2069780 (and tp!1040107 tp!1040106))))

(assert (= (and b!3327590 ((_ is ElementMatch!10089) (reg!10418 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328290))

(assert (= (and b!3327590 ((_ is Concat!15649) (reg!10418 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328291))

(assert (= (and b!3327590 ((_ is Star!10089) (reg!10418 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328292))

(assert (= (and b!3327590 ((_ is Union!10089) (reg!10418 (regex!5330 (rule!7852 (h!42080 tokens!494)))))) b!3328293))

(declare-fun b!3328294 () Bool)

(declare-fun e!2069781 () Bool)

(declare-fun tp!1040110 () Bool)

(assert (=> b!3328294 (= e!2069781 (and tp_is_empty!17417 tp!1040110))))

(assert (=> b!3327585 (= tp!1040024 e!2069781)))

(assert (= (and b!3327585 ((_ is Cons!36659) (originalCharacters!6044 (h!42080 (t!256741 tokens!494))))) b!3328294))

(declare-fun b!3328295 () Bool)

(declare-fun e!2069782 () Bool)

(declare-fun tp!1040111 () Bool)

(assert (=> b!3328295 (= e!2069782 (and tp_is_empty!17417 tp!1040111))))

(assert (=> b!3327611 (= tp!1040049 e!2069782)))

(assert (= (and b!3327611 ((_ is Cons!36659) (t!256740 (originalCharacters!6044 separatorToken!241)))) b!3328295))

(declare-fun tp!1040112 () Bool)

(declare-fun tp!1040113 () Bool)

(declare-fun b!3328296 () Bool)

(declare-fun e!2069783 () Bool)

(assert (=> b!3328296 (= e!2069783 (and (inv!49665 (left!28570 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))))) tp!1040113 (inv!49665 (right!28900 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))))) tp!1040112))))

(declare-fun b!3328298 () Bool)

(declare-fun e!2069784 () Bool)

(declare-fun tp!1040114 () Bool)

(assert (=> b!3328298 (= e!2069784 tp!1040114)))

(declare-fun b!3328297 () Bool)

(assert (=> b!3328297 (= e!2069783 (and (inv!49671 (xs!14173 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))))) e!2069784))))

(assert (=> b!3327366 (= tp!1039938 (and (inv!49665 (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494))))) e!2069783))))

(assert (= (and b!3327366 ((_ is Node!11035) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))))) b!3328296))

(assert (= b!3328297 b!3328298))

(assert (= (and b!3327366 ((_ is Leaf!17311) (c!565061 (dynLambda!15120 (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (value!172365 (h!42080 tokens!494)))))) b!3328297))

(declare-fun m!3669335 () Bool)

(assert (=> b!3328296 m!3669335))

(declare-fun m!3669337 () Bool)

(assert (=> b!3328296 m!3669337))

(declare-fun m!3669339 () Bool)

(assert (=> b!3328297 m!3669339))

(assert (=> b!3327366 m!3667693))

(declare-fun b!3328303 () Bool)

(declare-fun e!2069789 () Bool)

(assert (=> b!3328303 (= e!2069789 true)))

(declare-fun b!3328302 () Bool)

(declare-fun e!2069788 () Bool)

(assert (=> b!3328302 (= e!2069788 e!2069789)))

(declare-fun b!3328301 () Bool)

(declare-fun e!2069787 () Bool)

(assert (=> b!3328301 (= e!2069787 e!2069788)))

(assert (=> b!3327345 e!2069787))

(assert (= b!3328302 b!3328303))

(assert (= b!3328301 b!3328302))

(assert (= (and b!3327345 ((_ is Cons!36661) (t!256742 rules!2135))) b!3328301))

(assert (=> b!3328303 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 (t!256742 rules!2135))))) (dynLambda!15115 order!19169 lambda!119704))))

(assert (=> b!3328303 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135))))) (dynLambda!15115 order!19169 lambda!119704))))

(declare-fun b!3328306 () Bool)

(declare-fun e!2069790 () Bool)

(declare-fun tp!1040118 () Bool)

(assert (=> b!3328306 (= e!2069790 tp!1040118)))

(assert (=> b!3327606 (= tp!1040042 e!2069790)))

(declare-fun b!3328307 () Bool)

(declare-fun tp!1040115 () Bool)

(declare-fun tp!1040119 () Bool)

(assert (=> b!3328307 (= e!2069790 (and tp!1040115 tp!1040119))))

(declare-fun b!3328304 () Bool)

(assert (=> b!3328304 (= e!2069790 tp_is_empty!17417)))

(declare-fun b!3328305 () Bool)

(declare-fun tp!1040117 () Bool)

(declare-fun tp!1040116 () Bool)

(assert (=> b!3328305 (= e!2069790 (and tp!1040117 tp!1040116))))

(assert (= (and b!3327606 ((_ is ElementMatch!10089) (regOne!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328304))

(assert (= (and b!3327606 ((_ is Concat!15649) (regOne!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328305))

(assert (= (and b!3327606 ((_ is Star!10089) (regOne!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328306))

(assert (= (and b!3327606 ((_ is Union!10089) (regOne!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328307))

(declare-fun b!3328310 () Bool)

(declare-fun e!2069791 () Bool)

(declare-fun tp!1040123 () Bool)

(assert (=> b!3328310 (= e!2069791 tp!1040123)))

(assert (=> b!3327606 (= tp!1040046 e!2069791)))

(declare-fun b!3328311 () Bool)

(declare-fun tp!1040120 () Bool)

(declare-fun tp!1040124 () Bool)

(assert (=> b!3328311 (= e!2069791 (and tp!1040120 tp!1040124))))

(declare-fun b!3328308 () Bool)

(assert (=> b!3328308 (= e!2069791 tp_is_empty!17417)))

(declare-fun b!3328309 () Bool)

(declare-fun tp!1040122 () Bool)

(declare-fun tp!1040121 () Bool)

(assert (=> b!3328309 (= e!2069791 (and tp!1040122 tp!1040121))))

(assert (= (and b!3327606 ((_ is ElementMatch!10089) (regTwo!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328308))

(assert (= (and b!3327606 ((_ is Concat!15649) (regTwo!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328309))

(assert (= (and b!3327606 ((_ is Star!10089) (regTwo!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328310))

(assert (= (and b!3327606 ((_ is Union!10089) (regTwo!20691 (regex!5330 (rule!7852 separatorToken!241))))) b!3328311))

(declare-fun b!3328315 () Bool)

(declare-fun e!2069793 () Bool)

(declare-fun tp!1040128 () Bool)

(assert (=> b!3328315 (= e!2069793 tp!1040128)))

(assert (=> b!3327573 (= tp!1040005 e!2069793)))

(declare-fun b!3328316 () Bool)

(declare-fun tp!1040125 () Bool)

(declare-fun tp!1040129 () Bool)

(assert (=> b!3328316 (= e!2069793 (and tp!1040125 tp!1040129))))

(declare-fun b!3328313 () Bool)

(assert (=> b!3328313 (= e!2069793 tp_is_empty!17417)))

(declare-fun b!3328314 () Bool)

(declare-fun tp!1040127 () Bool)

(declare-fun tp!1040126 () Bool)

(assert (=> b!3328314 (= e!2069793 (and tp!1040127 tp!1040126))))

(assert (= (and b!3327573 ((_ is ElementMatch!10089) (regOne!20691 (regex!5330 (h!42081 rules!2135))))) b!3328313))

(assert (= (and b!3327573 ((_ is Concat!15649) (regOne!20691 (regex!5330 (h!42081 rules!2135))))) b!3328314))

(assert (= (and b!3327573 ((_ is Star!10089) (regOne!20691 (regex!5330 (h!42081 rules!2135))))) b!3328315))

(assert (= (and b!3327573 ((_ is Union!10089) (regOne!20691 (regex!5330 (h!42081 rules!2135))))) b!3328316))

(declare-fun b!3328319 () Bool)

(declare-fun e!2069794 () Bool)

(declare-fun tp!1040133 () Bool)

(assert (=> b!3328319 (= e!2069794 tp!1040133)))

(assert (=> b!3327573 (= tp!1040009 e!2069794)))

(declare-fun b!3328320 () Bool)

(declare-fun tp!1040130 () Bool)

(declare-fun tp!1040134 () Bool)

(assert (=> b!3328320 (= e!2069794 (and tp!1040130 tp!1040134))))

(declare-fun b!3328317 () Bool)

(assert (=> b!3328317 (= e!2069794 tp_is_empty!17417)))

(declare-fun b!3328318 () Bool)

(declare-fun tp!1040132 () Bool)

(declare-fun tp!1040131 () Bool)

(assert (=> b!3328318 (= e!2069794 (and tp!1040132 tp!1040131))))

(assert (= (and b!3327573 ((_ is ElementMatch!10089) (regTwo!20691 (regex!5330 (h!42081 rules!2135))))) b!3328317))

(assert (= (and b!3327573 ((_ is Concat!15649) (regTwo!20691 (regex!5330 (h!42081 rules!2135))))) b!3328318))

(assert (= (and b!3327573 ((_ is Star!10089) (regTwo!20691 (regex!5330 (h!42081 rules!2135))))) b!3328319))

(assert (= (and b!3327573 ((_ is Union!10089) (regTwo!20691 (regex!5330 (h!42081 rules!2135))))) b!3328320))

(declare-fun b!3328323 () Bool)

(declare-fun e!2069797 () Bool)

(assert (=> b!3328323 (= e!2069797 true)))

(declare-fun b!3328322 () Bool)

(declare-fun e!2069796 () Bool)

(assert (=> b!3328322 (= e!2069796 e!2069797)))

(declare-fun b!3328321 () Bool)

(declare-fun e!2069795 () Bool)

(assert (=> b!3328321 (= e!2069795 e!2069796)))

(assert (=> b!3327370 e!2069795))

(assert (= b!3328322 b!3328323))

(assert (= b!3328321 b!3328322))

(assert (= (and b!3327370 ((_ is Cons!36661) (t!256742 rules!2135))) b!3328321))

(assert (=> b!3328323 (< (dynLambda!15114 order!19167 (toValue!7490 (transformation!5330 (h!42081 (t!256742 rules!2135))))) (dynLambda!15115 order!19169 lambda!119709))))

(assert (=> b!3328323 (< (dynLambda!15116 order!19171 (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135))))) (dynLambda!15115 order!19169 lambda!119709))))

(declare-fun b!3328330 () Bool)

(declare-fun e!2069799 () Bool)

(declare-fun tp!1040143 () Bool)

(assert (=> b!3328330 (= e!2069799 tp!1040143)))

(assert (=> b!3327605 (= tp!1040045 e!2069799)))

(declare-fun b!3328331 () Bool)

(declare-fun tp!1040140 () Bool)

(declare-fun tp!1040144 () Bool)

(assert (=> b!3328331 (= e!2069799 (and tp!1040140 tp!1040144))))

(declare-fun b!3328328 () Bool)

(assert (=> b!3328328 (= e!2069799 tp_is_empty!17417)))

(declare-fun b!3328329 () Bool)

(declare-fun tp!1040142 () Bool)

(declare-fun tp!1040141 () Bool)

(assert (=> b!3328329 (= e!2069799 (and tp!1040142 tp!1040141))))

(assert (= (and b!3327605 ((_ is ElementMatch!10089) (reg!10418 (regex!5330 (rule!7852 separatorToken!241))))) b!3328328))

(assert (= (and b!3327605 ((_ is Concat!15649) (reg!10418 (regex!5330 (rule!7852 separatorToken!241))))) b!3328329))

(assert (= (and b!3327605 ((_ is Star!10089) (reg!10418 (regex!5330 (rule!7852 separatorToken!241))))) b!3328330))

(assert (= (and b!3327605 ((_ is Union!10089) (reg!10418 (regex!5330 (rule!7852 separatorToken!241))))) b!3328331))

(declare-fun b!3328334 () Bool)

(declare-fun e!2069800 () Bool)

(declare-fun tp!1040148 () Bool)

(assert (=> b!3328334 (= e!2069800 tp!1040148)))

(assert (=> b!3327572 (= tp!1040008 e!2069800)))

(declare-fun b!3328335 () Bool)

(declare-fun tp!1040145 () Bool)

(declare-fun tp!1040149 () Bool)

(assert (=> b!3328335 (= e!2069800 (and tp!1040145 tp!1040149))))

(declare-fun b!3328332 () Bool)

(assert (=> b!3328332 (= e!2069800 tp_is_empty!17417)))

(declare-fun b!3328333 () Bool)

(declare-fun tp!1040147 () Bool)

(declare-fun tp!1040146 () Bool)

(assert (=> b!3328333 (= e!2069800 (and tp!1040147 tp!1040146))))

(assert (= (and b!3327572 ((_ is ElementMatch!10089) (reg!10418 (regex!5330 (h!42081 rules!2135))))) b!3328332))

(assert (= (and b!3327572 ((_ is Concat!15649) (reg!10418 (regex!5330 (h!42081 rules!2135))))) b!3328333))

(assert (= (and b!3327572 ((_ is Star!10089) (reg!10418 (regex!5330 (h!42081 rules!2135))))) b!3328334))

(assert (= (and b!3327572 ((_ is Union!10089) (reg!10418 (regex!5330 (h!42081 rules!2135))))) b!3328335))

(declare-fun b!3328342 () Bool)

(declare-fun e!2069802 () Bool)

(declare-fun tp!1040158 () Bool)

(assert (=> b!3328342 (= e!2069802 tp!1040158)))

(assert (=> b!3327604 (= tp!1040044 e!2069802)))

(declare-fun b!3328343 () Bool)

(declare-fun tp!1040155 () Bool)

(declare-fun tp!1040159 () Bool)

(assert (=> b!3328343 (= e!2069802 (and tp!1040155 tp!1040159))))

(declare-fun b!3328340 () Bool)

(assert (=> b!3328340 (= e!2069802 tp_is_empty!17417)))

(declare-fun b!3328341 () Bool)

(declare-fun tp!1040157 () Bool)

(declare-fun tp!1040156 () Bool)

(assert (=> b!3328341 (= e!2069802 (and tp!1040157 tp!1040156))))

(assert (= (and b!3327604 ((_ is ElementMatch!10089) (regOne!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328340))

(assert (= (and b!3327604 ((_ is Concat!15649) (regOne!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328341))

(assert (= (and b!3327604 ((_ is Star!10089) (regOne!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328342))

(assert (= (and b!3327604 ((_ is Union!10089) (regOne!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328343))

(declare-fun b!3328350 () Bool)

(declare-fun e!2069804 () Bool)

(declare-fun tp!1040168 () Bool)

(assert (=> b!3328350 (= e!2069804 tp!1040168)))

(assert (=> b!3327604 (= tp!1040043 e!2069804)))

(declare-fun b!3328351 () Bool)

(declare-fun tp!1040165 () Bool)

(declare-fun tp!1040169 () Bool)

(assert (=> b!3328351 (= e!2069804 (and tp!1040165 tp!1040169))))

(declare-fun b!3328348 () Bool)

(assert (=> b!3328348 (= e!2069804 tp_is_empty!17417)))

(declare-fun b!3328349 () Bool)

(declare-fun tp!1040167 () Bool)

(declare-fun tp!1040166 () Bool)

(assert (=> b!3328349 (= e!2069804 (and tp!1040167 tp!1040166))))

(assert (= (and b!3327604 ((_ is ElementMatch!10089) (regTwo!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328348))

(assert (= (and b!3327604 ((_ is Concat!15649) (regTwo!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328349))

(assert (= (and b!3327604 ((_ is Star!10089) (regTwo!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328350))

(assert (= (and b!3327604 ((_ is Union!10089) (regTwo!20690 (regex!5330 (rule!7852 separatorToken!241))))) b!3328351))

(declare-fun b!3328358 () Bool)

(declare-fun e!2069806 () Bool)

(declare-fun tp!1040178 () Bool)

(assert (=> b!3328358 (= e!2069806 tp!1040178)))

(assert (=> b!3327571 (= tp!1040007 e!2069806)))

(declare-fun b!3328359 () Bool)

(declare-fun tp!1040175 () Bool)

(declare-fun tp!1040179 () Bool)

(assert (=> b!3328359 (= e!2069806 (and tp!1040175 tp!1040179))))

(declare-fun b!3328356 () Bool)

(assert (=> b!3328356 (= e!2069806 tp_is_empty!17417)))

(declare-fun b!3328357 () Bool)

(declare-fun tp!1040177 () Bool)

(declare-fun tp!1040176 () Bool)

(assert (=> b!3328357 (= e!2069806 (and tp!1040177 tp!1040176))))

(assert (= (and b!3327571 ((_ is ElementMatch!10089) (regOne!20690 (regex!5330 (h!42081 rules!2135))))) b!3328356))

(assert (= (and b!3327571 ((_ is Concat!15649) (regOne!20690 (regex!5330 (h!42081 rules!2135))))) b!3328357))

(assert (= (and b!3327571 ((_ is Star!10089) (regOne!20690 (regex!5330 (h!42081 rules!2135))))) b!3328358))

(assert (= (and b!3327571 ((_ is Union!10089) (regOne!20690 (regex!5330 (h!42081 rules!2135))))) b!3328359))

(declare-fun b!3328365 () Bool)

(declare-fun e!2069811 () Bool)

(declare-fun tp!1040187 () Bool)

(assert (=> b!3328365 (= e!2069811 tp!1040187)))

(assert (=> b!3327571 (= tp!1040006 e!2069811)))

(declare-fun b!3328366 () Bool)

(declare-fun tp!1040184 () Bool)

(declare-fun tp!1040188 () Bool)

(assert (=> b!3328366 (= e!2069811 (and tp!1040184 tp!1040188))))

(declare-fun b!3328363 () Bool)

(assert (=> b!3328363 (= e!2069811 tp_is_empty!17417)))

(declare-fun b!3328364 () Bool)

(declare-fun tp!1040186 () Bool)

(declare-fun tp!1040185 () Bool)

(assert (=> b!3328364 (= e!2069811 (and tp!1040186 tp!1040185))))

(assert (= (and b!3327571 ((_ is ElementMatch!10089) (regTwo!20690 (regex!5330 (h!42081 rules!2135))))) b!3328363))

(assert (= (and b!3327571 ((_ is Concat!15649) (regTwo!20690 (regex!5330 (h!42081 rules!2135))))) b!3328364))

(assert (= (and b!3327571 ((_ is Star!10089) (regTwo!20690 (regex!5330 (h!42081 rules!2135))))) b!3328365))

(assert (= (and b!3327571 ((_ is Union!10089) (regTwo!20690 (regex!5330 (h!42081 rules!2135))))) b!3328366))

(declare-fun b!3328367 () Bool)

(declare-fun e!2069812 () Bool)

(declare-fun tp!1040189 () Bool)

(assert (=> b!3328367 (= e!2069812 (and tp_is_empty!17417 tp!1040189))))

(assert (=> b!3327612 (= tp!1040050 e!2069812)))

(assert (= (and b!3327612 ((_ is Cons!36659) (t!256740 (originalCharacters!6044 (h!42080 tokens!494))))) b!3328367))

(declare-fun b_lambda!93967 () Bool)

(assert (= b_lambda!93955 (or b!3327193 b_lambda!93967)))

(declare-fun bs!551128 () Bool)

(declare-fun d!936186 () Bool)

(assert (= bs!551128 (and d!936186 b!3327193)))

(assert (=> bs!551128 (= (dynLambda!15113 lambda!119701 (h!42080 (t!256741 tokens!494))) (not (isSeparator!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))))))

(assert (=> b!3327936 d!936186))

(declare-fun b_lambda!93969 () Bool)

(assert (= b_lambda!93951 (or b!3327193 b_lambda!93969)))

(assert (=> d!935906 d!935704))

(declare-fun b_lambda!93971 () Bool)

(assert (= b_lambda!93959 (or d!935566 b_lambda!93971)))

(declare-fun bs!551129 () Bool)

(declare-fun d!936188 () Bool)

(assert (= bs!551129 (and d!936188 d!935566)))

(assert (=> bs!551129 (= (dynLambda!15113 lambda!119704 (h!42080 tokens!494)) (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 (h!42080 tokens!494)))))

(assert (=> bs!551129 m!3667395))

(assert (=> b!3328016 d!936188))

(declare-fun b_lambda!93973 () Bool)

(assert (= b_lambda!93939 (or (and b!3327602 b_free!87595 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 rules!2135)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))))) (and b!3327587 b_free!87591) (and b!3327184 b_free!87571 (= (toChars!7349 (transformation!5330 (h!42081 rules!2135))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))))) (and b!3327190 b_free!87575 (= (toChars!7349 (transformation!5330 (rule!7852 separatorToken!241))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))))) (and b!3327192 b_free!87579 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 tokens!494)))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))))) (and b!3328266 b_free!87599 (= (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 (t!256741 tokens!494)))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))))) (and b!3328277 b_free!87603 (= (toChars!7349 (transformation!5330 (h!42081 (t!256742 (t!256742 rules!2135))))) (toChars!7349 (transformation!5330 (rule!7852 (h!42080 (t!256741 tokens!494))))))) b_lambda!93973)))

(declare-fun b_lambda!93975 () Bool)

(assert (= b_lambda!93941 (or d!935630 b_lambda!93975)))

(declare-fun bs!551130 () Bool)

(declare-fun d!936190 () Bool)

(assert (= bs!551130 (and d!936190 d!935630)))

(assert (=> bs!551130 (= (dynLambda!15113 lambda!119709 (h!42080 (list!13200 lt!1130563))) (rulesProduceIndividualToken!2411 thiss!18206 rules!2135 (h!42080 (list!13200 lt!1130563))))))

(assert (=> bs!551130 m!3668003))

(assert (=> b!3327691 d!936190))

(check-sat (not b!3327923) (not b!3327842) (not d!935890) (not b!3327844) (not b!3328007) (not b!3328335) (not d!935910) (not d!935766) (not bm!241371) (not d!936030) (not b!3328276) (not d!936078) (not b!3327894) (not b_next!88295) (not b!3328256) (not b!3327841) (not b!3328320) (not b_next!88279) (not b!3328229) (not b!3328284) (not bm!241370) (not b!3327820) (not d!935806) (not d!936126) (not b!3327766) (not d!935942) (not d!935962) (not d!935882) (not b!3328281) (not b!3328251) (not d!935774) (not b!3328291) (not b!3327826) (not d!936000) (not b!3328283) (not b!3328341) (not b_next!88281) (not d!935884) b_and!229427 (not b!3327762) (not b!3328086) (not b!3328210) (not d!935850) (not d!935986) (not b_lambda!93969) (not b_lambda!93967) (not d!935796) (not b!3328101) (not b!3327708) (not d!935878) (not d!936132) (not d!935760) (not b_lambda!93929) (not b!3328100) (not b!3328334) (not b!3327886) (not b!3327838) (not b!3328166) (not b!3328139) (not d!935814) (not b_lambda!93933) (not b_lambda!93937) (not d!935838) (not d!935992) (not d!936022) (not b!3327935) (not b!3328084) (not d!935976) (not tb!174279) (not b!3327830) (not b!3327994) (not b!3328260) (not b!3327915) (not b!3327662) (not b!3328004) (not b_next!88277) (not d!936018) (not b_lambda!93935) (not b!3327837) (not b!3328292) (not b!3327990) (not d!936084) (not bm!241361) (not b_next!88299) (not d!935918) (not b!3328124) (not b_next!88305) (not b!3327917) (not b_next!88301) (not b!3328366) (not d!935736) (not d!935740) b_and!229423 (not d!935844) (not b!3327906) (not b!3328287) (not b!3327999) b_and!229371 (not d!935898) (not b!3328203) (not b!3327989) (not b!3327660) (not b!3328305) (not b!3328214) (not b!3328265) (not b!3328087) (not d!936026) (not b!3327659) b_and!229303 (not b!3328285) (not d!936138) (not d!935764) (not d!936144) (not b!3328252) (not d!935728) (not d!936082) (not b!3327997) (not b!3328311) (not d!935852) (not b!3327661) (not b!3328163) (not d!936094) (not b!3327937) (not d!935722) (not b!3327988) (not b!3328314) (not b!3327791) (not b!3327991) (not bs!551130) (not b!3328359) (not b!3328008) (not b!3327658) (not b!3328273) (not d!935732) (not d!936088) (not b_lambda!93947) (not d!935998) (not b_lambda!93961) (not d!936006) b_and!229425 (not b!3328164) (not d!936098) (not d!935840) b_and!229307 (not d!935902) (not b!3328186) (not b!3328091) (not d!935768) (not b!3328343) (not d!935994) (not b!3327987) (not d!936086) (not b!3328288) (not b!3328088) (not b!3327366) (not b!3328279) (not b!3328264) (not b!3327648) (not b!3328350) (not b!3328316) (not b!3328263) (not b!3327782) (not b!3328342) b_and!229421 (not d!935980) (not b!3328358) (not b!3328174) (not b!3328144) (not b!3328227) tp_is_empty!17417 (not b!3328274) (not b!3328295) (not b!3328296) (not b!3327992) (not b_lambda!93927) (not b!3327916) (not d!935990) (not b!3328294) (not d!936142) (not b!3328329) (not b!3328233) (not bs!551129) (not b_lambda!93973) (not d!936128) (not b!3328298) (not b!3327810) (not tb!174239) (not b!3327657) (not b!3328365) (not b_next!88297) (not b_next!88275) (not d!935836) (not b!3327806) (not b!3327893) (not b!3328201) (not d!936032) (not b!3328272) (not b!3328250) (not b!3328315) (not d!935984) (not b!3327858) (not b!3328103) (not b_next!88283) (not b_lambda!93971) (not b!3327884) (not b!3328097) (not d!935892) (not b!3328215) (not b!3328009) (not d!935784) (not d!935744) (not b!3328275) (not b!3328330) (not b!3328306) (not b!3328331) (not d!936068) (not b!3328297) (not b!3328165) (not b!3328140) (not b!3328022) b_and!229439 (not d!936020) (not b!3327924) (not b!3327907) (not d!936024) (not b!3327996) (not b!3328098) (not b!3328289) (not d!936116) (not b!3327686) (not d!935854) (not d!935746) (not d!936034) (not b!3327363) (not b!3328254) (not d!936014) (not b!3327895) (not b!3328178) b_and!229311 (not b!3328333) (not b!3328099) (not b!3328321) (not d!936090) (not b!3328309) (not b!3328293) (not b!3327663) (not d!935748) (not b_next!88307) (not b!3327808) (not b!3328318) (not b!3327804) b_and!229443 (not b!3327945) (not b!3327765) (not b!3328319) (not b!3327829) (not b!3328262) (not d!935802) (not d!935824) (not b!3328017) (not b!3327650) (not d!935896) (not d!935996) (not b!3327792) (not d!936092) (not b!3327827) (not b_next!88273) (not b!3328280) (not tb!174259) (not b!3328301) (not d!936070) (not b!3328307) (not b!3327918) (not d!935812) (not d!935960) b_and!229419 (not bm!241369) (not b!3328202) (not b_next!88293) (not b!3328310) (not b!3328364) (not b!3328367) (not b!3328212) (not d!935738) (not d!935868) (not b!3327986) (not b!3327803) (not d!935780) (not d!936064) b_and!229441 (not b_lambda!93975) (not d!935786) (not b!3328128) (not b!3328011) (not b!3328261) (not b!3328349) (not b!3328255) b_and!229375 (not b!3328357) (not b!3327692) (not b!3327998) (not b_next!88303) (not d!935810) (not b!3328005) b_and!229445 (not b!3328351) (not d!935924) (not b!3328185) (not b_lambda!93931))
(check-sat (not b_next!88277) b_and!229423 b_and!229425 b_and!229307 b_and!229421 (not b_next!88283) b_and!229439 b_and!229311 (not b_next!88273) b_and!229441 b_and!229445 (not b_next!88295) (not b_next!88279) b_and!229427 (not b_next!88281) (not b_next!88301) (not b_next!88299) (not b_next!88305) b_and!229371 b_and!229303 (not b_next!88297) (not b_next!88275) (not b_next!88307) b_and!229443 b_and!229419 (not b_next!88293) (not b_next!88303) b_and!229375)
