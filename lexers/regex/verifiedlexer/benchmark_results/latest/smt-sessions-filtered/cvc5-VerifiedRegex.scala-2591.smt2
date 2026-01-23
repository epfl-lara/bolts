; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138660 () Bool)

(assert start!138660)

(declare-fun b!1477845 () Bool)

(declare-fun b_free!37899 () Bool)

(declare-fun b_next!38603 () Bool)

(assert (=> b!1477845 (= b_free!37899 (not b_next!38603))))

(declare-fun tp!418547 () Bool)

(declare-fun b_and!102233 () Bool)

(assert (=> b!1477845 (= tp!418547 b_and!102233)))

(declare-fun b_free!37901 () Bool)

(declare-fun b_next!38605 () Bool)

(assert (=> b!1477845 (= b_free!37901 (not b_next!38605))))

(declare-fun tp!418548 () Bool)

(declare-fun b_and!102235 () Bool)

(assert (=> b!1477845 (= tp!418548 b_and!102235)))

(declare-fun b!1477837 () Bool)

(declare-fun b_free!37903 () Bool)

(declare-fun b_next!38607 () Bool)

(assert (=> b!1477837 (= b_free!37903 (not b_next!38607))))

(declare-fun tp!418539 () Bool)

(declare-fun b_and!102237 () Bool)

(assert (=> b!1477837 (= tp!418539 b_and!102237)))

(declare-fun b_free!37905 () Bool)

(declare-fun b_next!38609 () Bool)

(assert (=> b!1477837 (= b_free!37905 (not b_next!38609))))

(declare-fun tp!418546 () Bool)

(declare-fun b_and!102239 () Bool)

(assert (=> b!1477837 (= tp!418546 b_and!102239)))

(declare-fun b!1477846 () Bool)

(declare-fun b_free!37907 () Bool)

(declare-fun b_next!38611 () Bool)

(assert (=> b!1477846 (= b_free!37907 (not b_next!38611))))

(declare-fun tp!418540 () Bool)

(declare-fun b_and!102241 () Bool)

(assert (=> b!1477846 (= tp!418540 b_and!102241)))

(declare-fun b_free!37909 () Bool)

(declare-fun b_next!38613 () Bool)

(assert (=> b!1477846 (= b_free!37909 (not b_next!38613))))

(declare-fun tp!418542 () Bool)

(declare-fun b_and!102243 () Bool)

(assert (=> b!1477846 (= tp!418542 b_and!102243)))

(declare-fun b!1477836 () Bool)

(declare-fun e!944456 () Bool)

(declare-fun e!944451 () Bool)

(assert (=> b!1477836 (= e!944456 (not e!944451))))

(declare-fun res!667848 () Bool)

(assert (=> b!1477836 (=> res!667848 e!944451)))

(declare-datatypes ((List!15666 0))(
  ( (Nil!15600) (Cons!15600 (h!21001 (_ BitVec 16)) (t!136867 List!15666)) )
))
(declare-datatypes ((C!8366 0))(
  ( (C!8367 (val!4753 Int)) )
))
(declare-datatypes ((List!15667 0))(
  ( (Nil!15601) (Cons!15601 (h!21002 C!8366) (t!136868 List!15667)) )
))
(declare-datatypes ((Regex!4094 0))(
  ( (ElementMatch!4094 (c!242713 C!8366)) (Concat!6964 (regOne!8700 Regex!4094) (regTwo!8700 Regex!4094)) (EmptyExpr!4094) (Star!4094 (reg!4423 Regex!4094)) (EmptyLang!4094) (Union!4094 (regOne!8701 Regex!4094) (regTwo!8701 Regex!4094)) )
))
(declare-datatypes ((TokenValue!2870 0))(
  ( (FloatLiteralValue!5740 (text!20535 List!15666)) (TokenValueExt!2869 (__x!9530 Int)) (Broken!14350 (value!88853 List!15666)) (Object!2935) (End!2870) (Def!2870) (Underscore!2870) (Match!2870) (Else!2870) (Error!2870) (Case!2870) (If!2870) (Extends!2870) (Abstract!2870) (Class!2870) (Val!2870) (DelimiterValue!5740 (del!2930 List!15666)) (KeywordValue!2876 (value!88854 List!15666)) (CommentValue!5740 (value!88855 List!15666)) (WhitespaceValue!5740 (value!88856 List!15666)) (IndentationValue!2870 (value!88857 List!15666)) (String!18607) (Int32!2870) (Broken!14351 (value!88858 List!15666)) (Boolean!2871) (Unit!25375) (OperatorValue!2873 (op!2930 List!15666)) (IdentifierValue!5740 (value!88859 List!15666)) (IdentifierValue!5741 (value!88860 List!15666)) (WhitespaceValue!5741 (value!88861 List!15666)) (True!5740) (False!5740) (Broken!14352 (value!88862 List!15666)) (Broken!14353 (value!88863 List!15666)) (True!5741) (RightBrace!2870) (RightBracket!2870) (Colon!2870) (Null!2870) (Comma!2870) (LeftBracket!2870) (False!5741) (LeftBrace!2870) (ImaginaryLiteralValue!2870 (text!20536 List!15666)) (StringLiteralValue!8610 (value!88864 List!15666)) (EOFValue!2870 (value!88865 List!15666)) (IdentValue!2870 (value!88866 List!15666)) (DelimiterValue!5741 (value!88867 List!15666)) (DedentValue!2870 (value!88868 List!15666)) (NewLineValue!2870 (value!88869 List!15666)) (IntegerValue!8610 (value!88870 (_ BitVec 32)) (text!20537 List!15666)) (IntegerValue!8611 (value!88871 Int) (text!20538 List!15666)) (Times!2870) (Or!2870) (Equal!2870) (Minus!2870) (Broken!14354 (value!88872 List!15666)) (And!2870) (Div!2870) (LessEqual!2870) (Mod!2870) (Concat!6965) (Not!2870) (Plus!2870) (SpaceValue!2870 (value!88873 List!15666)) (IntegerValue!8612 (value!88874 Int) (text!20539 List!15666)) (StringLiteralValue!8611 (text!20540 List!15666)) (FloatLiteralValue!5741 (text!20541 List!15666)) (BytesLiteralValue!2870 (value!88875 List!15666)) (CommentValue!5741 (value!88876 List!15666)) (StringLiteralValue!8612 (value!88877 List!15666)) (ErrorTokenValue!2870 (msg!2931 List!15666)) )
))
(declare-datatypes ((IArray!10631 0))(
  ( (IArray!10632 (innerList!5373 List!15667)) )
))
(declare-datatypes ((Conc!5313 0))(
  ( (Node!5313 (left!13158 Conc!5313) (right!13488 Conc!5313) (csize!10856 Int) (cheight!5524 Int)) (Leaf!7905 (xs!8068 IArray!10631) (csize!10857 Int)) (Empty!5313) )
))
(declare-datatypes ((BalanceConc!10566 0))(
  ( (BalanceConc!10567 (c!242714 Conc!5313)) )
))
(declare-datatypes ((TokenValueInjection!5400 0))(
  ( (TokenValueInjection!5401 (toValue!4115 Int) (toChars!3974 Int)) )
))
(declare-datatypes ((String!18608 0))(
  ( (String!18609 (value!88878 String)) )
))
(declare-datatypes ((Rule!5360 0))(
  ( (Rule!5361 (regex!2780 Regex!4094) (tag!3044 String!18608) (isSeparator!2780 Bool) (transformation!2780 TokenValueInjection!5400)) )
))
(declare-datatypes ((List!15668 0))(
  ( (Nil!15602) (Cons!15602 (h!21003 Rule!5360) (t!136869 List!15668)) )
))
(declare-fun rules!4290 () List!15668)

(declare-datatypes ((Token!5222 0))(
  ( (Token!5223 (value!88879 TokenValue!2870) (rule!4557 Rule!5360) (size!12634 Int) (originalCharacters!3642 List!15667)) )
))
(declare-fun lt!513523 () Token!5222)

(declare-datatypes ((LexerInterface!2436 0))(
  ( (LexerInterfaceExt!2433 (__x!9531 Int)) (Lexer!2434) )
))
(declare-fun thiss!27374 () LexerInterface!2436)

(declare-fun lt!513520 () Token!5222)

(declare-fun separableTokensPredicate!575 (LexerInterface!2436 Token!5222 Token!5222 List!15668) Bool)

(assert (=> b!1477836 (= res!667848 (not (separableTokensPredicate!575 thiss!27374 lt!513520 lt!513523 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1293 (LexerInterface!2436 List!15668 Token!5222) Bool)

(assert (=> b!1477836 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 lt!513523)))

(declare-datatypes ((List!15669 0))(
  ( (Nil!15603) (Cons!15603 (h!21004 Token!5222) (t!136870 List!15669)) )
))
(declare-fun l2!3105 () List!15669)

(declare-datatypes ((Unit!25376 0))(
  ( (Unit!25377) )
))
(declare-fun lt!513521 () Unit!25376)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 (LexerInterface!2436 List!15668 List!15669 Token!5222) Unit!25376)

(assert (=> b!1477836 (= lt!513521 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l2!3105 lt!513523))))

(declare-fun head!3068 (List!15669) Token!5222)

(assert (=> b!1477836 (= lt!513523 (head!3068 l2!3105))))

(assert (=> b!1477836 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 lt!513520)))

(declare-fun lt!513522 () Unit!25376)

(declare-fun l1!3136 () List!15669)

(assert (=> b!1477836 (= lt!513522 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l1!3136 lt!513520))))

(declare-fun last!338 (List!15669) Token!5222)

(assert (=> b!1477836 (= lt!513520 (last!338 l1!3136))))

(declare-fun e!944452 () Bool)

(assert (=> b!1477837 (= e!944452 (and tp!418539 tp!418546))))

(declare-fun e!944464 () Bool)

(declare-fun tp!418543 () Bool)

(declare-fun b!1477838 () Bool)

(declare-fun e!944467 () Bool)

(declare-fun inv!20811 (String!18608) Bool)

(declare-fun inv!20814 (TokenValueInjection!5400) Bool)

(assert (=> b!1477838 (= e!944467 (and tp!418543 (inv!20811 (tag!3044 (h!21003 rules!4290))) (inv!20814 (transformation!2780 (h!21003 rules!4290))) e!944464))))

(declare-fun e!944465 () Bool)

(declare-fun b!1477839 () Bool)

(declare-fun e!944458 () Bool)

(declare-fun tp!418544 () Bool)

(assert (=> b!1477839 (= e!944465 (and tp!418544 (inv!20811 (tag!3044 (rule!4557 (h!21004 l2!3105)))) (inv!20814 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) e!944458))))

(declare-fun b!1477840 () Bool)

(declare-fun res!667843 () Bool)

(assert (=> b!1477840 (=> (not res!667843) (not e!944456))))

(declare-fun rulesProduceEachTokenIndividuallyList!803 (LexerInterface!2436 List!15668 List!15669) Bool)

(assert (=> b!1477840 (= res!667843 (rulesProduceEachTokenIndividuallyList!803 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1477841 () Bool)

(declare-fun res!667847 () Bool)

(assert (=> b!1477841 (=> (not res!667847) (not e!944456))))

(declare-fun isEmpty!9749 (List!15668) Bool)

(assert (=> b!1477841 (= res!667847 (not (isEmpty!9749 rules!4290)))))

(declare-fun b!1477842 () Bool)

(declare-fun res!667844 () Bool)

(assert (=> b!1477842 (=> (not res!667844) (not e!944456))))

(declare-fun isEmpty!9750 (List!15669) Bool)

(assert (=> b!1477842 (= res!667844 (not (isEmpty!9750 l1!3136)))))

(declare-fun b!1477843 () Bool)

(declare-fun res!667842 () Bool)

(assert (=> b!1477843 (=> (not res!667842) (not e!944456))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!296 (LexerInterface!2436 List!15669 List!15668) Bool)

(assert (=> b!1477843 (= res!667842 (tokensListTwoByTwoPredicateSeparableList!296 thiss!27374 l2!3105 rules!4290))))

(declare-fun e!944459 () Bool)

(declare-fun b!1477844 () Bool)

(declare-fun tp!418541 () Bool)

(declare-fun e!944457 () Bool)

(declare-fun inv!20815 (Token!5222) Bool)

(assert (=> b!1477844 (= e!944457 (and (inv!20815 (h!21004 l2!3105)) e!944459 tp!418541))))

(assert (=> b!1477845 (= e!944458 (and tp!418547 tp!418548))))

(assert (=> b!1477846 (= e!944464 (and tp!418540 tp!418542))))

(declare-fun res!667846 () Bool)

(assert (=> start!138660 (=> (not res!667846) (not e!944456))))

(assert (=> start!138660 (= res!667846 (is-Lexer!2434 thiss!27374))))

(assert (=> start!138660 e!944456))

(assert (=> start!138660 true))

(declare-fun e!944468 () Bool)

(assert (=> start!138660 e!944468))

(declare-fun e!944454 () Bool)

(assert (=> start!138660 e!944454))

(assert (=> start!138660 e!944457))

(declare-fun tp!418535 () Bool)

(declare-fun e!944463 () Bool)

(declare-fun b!1477847 () Bool)

(assert (=> b!1477847 (= e!944454 (and (inv!20815 (h!21004 l1!3136)) e!944463 tp!418535))))

(declare-fun b!1477848 () Bool)

(declare-fun res!667849 () Bool)

(assert (=> b!1477848 (=> (not res!667849) (not e!944456))))

(assert (=> b!1477848 (= res!667849 (tokensListTwoByTwoPredicateSeparableList!296 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1477849 () Bool)

(declare-fun size!12635 (List!15669) Int)

(assert (=> b!1477849 (= e!944451 (>= (size!12635 l1!3136) 0))))

(declare-fun tp!418537 () Bool)

(declare-fun b!1477850 () Bool)

(declare-fun inv!21 (TokenValue!2870) Bool)

(assert (=> b!1477850 (= e!944459 (and (inv!21 (value!88879 (h!21004 l2!3105))) e!944465 tp!418537))))

(declare-fun b!1477851 () Bool)

(declare-fun tp!418538 () Bool)

(declare-fun e!944455 () Bool)

(assert (=> b!1477851 (= e!944455 (and tp!418538 (inv!20811 (tag!3044 (rule!4557 (h!21004 l1!3136)))) (inv!20814 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) e!944452))))

(declare-fun b!1477852 () Bool)

(declare-fun tp!418545 () Bool)

(assert (=> b!1477852 (= e!944468 (and e!944467 tp!418545))))

(declare-fun tp!418536 () Bool)

(declare-fun b!1477853 () Bool)

(assert (=> b!1477853 (= e!944463 (and (inv!21 (value!88879 (h!21004 l1!3136))) e!944455 tp!418536))))

(declare-fun b!1477854 () Bool)

(declare-fun res!667845 () Bool)

(assert (=> b!1477854 (=> (not res!667845) (not e!944456))))

(assert (=> b!1477854 (= res!667845 (not (isEmpty!9750 l2!3105)))))

(declare-fun b!1477855 () Bool)

(declare-fun res!667841 () Bool)

(assert (=> b!1477855 (=> (not res!667841) (not e!944456))))

(assert (=> b!1477855 (= res!667841 (rulesProduceEachTokenIndividuallyList!803 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1477856 () Bool)

(declare-fun res!667850 () Bool)

(assert (=> b!1477856 (=> (not res!667850) (not e!944456))))

(declare-fun rulesInvariant!2225 (LexerInterface!2436 List!15668) Bool)

(assert (=> b!1477856 (= res!667850 (rulesInvariant!2225 thiss!27374 rules!4290))))

(assert (= (and start!138660 res!667846) b!1477841))

(assert (= (and b!1477841 res!667847) b!1477856))

(assert (= (and b!1477856 res!667850) b!1477855))

(assert (= (and b!1477855 res!667841) b!1477840))

(assert (= (and b!1477840 res!667843) b!1477848))

(assert (= (and b!1477848 res!667849) b!1477843))

(assert (= (and b!1477843 res!667842) b!1477842))

(assert (= (and b!1477842 res!667844) b!1477854))

(assert (= (and b!1477854 res!667845) b!1477836))

(assert (= (and b!1477836 (not res!667848)) b!1477849))

(assert (= b!1477838 b!1477846))

(assert (= b!1477852 b!1477838))

(assert (= (and start!138660 (is-Cons!15602 rules!4290)) b!1477852))

(assert (= b!1477851 b!1477837))

(assert (= b!1477853 b!1477851))

(assert (= b!1477847 b!1477853))

(assert (= (and start!138660 (is-Cons!15603 l1!3136)) b!1477847))

(assert (= b!1477839 b!1477845))

(assert (= b!1477850 b!1477839))

(assert (= b!1477844 b!1477850))

(assert (= (and start!138660 (is-Cons!15603 l2!3105)) b!1477844))

(declare-fun m!1723313 () Bool)

(assert (=> b!1477844 m!1723313))

(declare-fun m!1723315 () Bool)

(assert (=> b!1477848 m!1723315))

(declare-fun m!1723317 () Bool)

(assert (=> b!1477854 m!1723317))

(declare-fun m!1723319 () Bool)

(assert (=> b!1477850 m!1723319))

(declare-fun m!1723321 () Bool)

(assert (=> b!1477851 m!1723321))

(declare-fun m!1723323 () Bool)

(assert (=> b!1477851 m!1723323))

(declare-fun m!1723325 () Bool)

(assert (=> b!1477856 m!1723325))

(declare-fun m!1723327 () Bool)

(assert (=> b!1477847 m!1723327))

(declare-fun m!1723329 () Bool)

(assert (=> b!1477843 m!1723329))

(declare-fun m!1723331 () Bool)

(assert (=> b!1477842 m!1723331))

(declare-fun m!1723333 () Bool)

(assert (=> b!1477853 m!1723333))

(declare-fun m!1723335 () Bool)

(assert (=> b!1477849 m!1723335))

(declare-fun m!1723337 () Bool)

(assert (=> b!1477840 m!1723337))

(declare-fun m!1723339 () Bool)

(assert (=> b!1477841 m!1723339))

(declare-fun m!1723341 () Bool)

(assert (=> b!1477836 m!1723341))

(declare-fun m!1723343 () Bool)

(assert (=> b!1477836 m!1723343))

(declare-fun m!1723345 () Bool)

(assert (=> b!1477836 m!1723345))

(declare-fun m!1723347 () Bool)

(assert (=> b!1477836 m!1723347))

(declare-fun m!1723349 () Bool)

(assert (=> b!1477836 m!1723349))

(declare-fun m!1723351 () Bool)

(assert (=> b!1477836 m!1723351))

(declare-fun m!1723353 () Bool)

(assert (=> b!1477836 m!1723353))

(declare-fun m!1723355 () Bool)

(assert (=> b!1477839 m!1723355))

(declare-fun m!1723357 () Bool)

(assert (=> b!1477839 m!1723357))

(declare-fun m!1723359 () Bool)

(assert (=> b!1477838 m!1723359))

(declare-fun m!1723361 () Bool)

(assert (=> b!1477838 m!1723361))

(declare-fun m!1723363 () Bool)

(assert (=> b!1477855 m!1723363))

(push 1)

(assert (not b!1477847))

(assert (not b!1477841))

(assert b_and!102239)

(assert (not b!1477843))

(assert (not b_next!38605))

(assert (not b!1477838))

(assert b_and!102237)

(assert (not b!1477856))

(assert b_and!102243)

(assert b_and!102235)

(assert (not b!1477848))

(assert (not b!1477849))

(assert b_and!102241)

(assert (not b_next!38603))

(assert (not b_next!38607))

(assert (not b!1477852))

(assert b_and!102233)

(assert (not b!1477851))

(assert (not b!1477844))

(assert (not b!1477853))

(assert (not b!1477855))

(assert (not b!1477850))

(assert (not b!1477854))

(assert (not b_next!38609))

(assert (not b!1477840))

(assert (not b!1477842))

(assert (not b!1477836))

(assert (not b_next!38611))

(assert (not b_next!38613))

(assert (not b!1477839))

(check-sat)

(pop 1)

(push 1)

(assert b_and!102233)

(assert b_and!102239)

(assert (not b_next!38605))

(assert (not b_next!38609))

(assert b_and!102237)

(assert b_and!102243)

(assert b_and!102235)

(assert (not b_next!38611))

(assert b_and!102241)

(assert (not b_next!38603))

(assert (not b_next!38607))

(assert (not b_next!38613))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1477960 () Bool)

(declare-fun e!944553 () Bool)

(assert (=> b!1477960 (= e!944553 true)))

(declare-fun b!1477959 () Bool)

(declare-fun e!944552 () Bool)

(assert (=> b!1477959 (= e!944552 e!944553)))

(declare-fun b!1477958 () Bool)

(declare-fun e!944551 () Bool)

(assert (=> b!1477958 (= e!944551 e!944552)))

(declare-fun d!433424 () Bool)

(assert (=> d!433424 e!944551))

(assert (= b!1477959 b!1477960))

(assert (= b!1477958 b!1477959))

(assert (= (and d!433424 (is-Cons!15602 rules!4290)) b!1477958))

(declare-fun lambda!63710 () Int)

(declare-fun order!9385 () Int)

(declare-fun order!9383 () Int)

(declare-fun dynLambda!7083 (Int Int) Int)

(declare-fun dynLambda!7084 (Int Int) Int)

(assert (=> b!1477960 (< (dynLambda!7083 order!9383 (toValue!4115 (transformation!2780 (h!21003 rules!4290)))) (dynLambda!7084 order!9385 lambda!63710))))

(declare-fun order!9387 () Int)

(declare-fun dynLambda!7085 (Int Int) Int)

(assert (=> b!1477960 (< (dynLambda!7085 order!9387 (toChars!3974 (transformation!2780 (h!21003 rules!4290)))) (dynLambda!7084 order!9385 lambda!63710))))

(assert (=> d!433424 true))

(declare-fun lt!513543 () Bool)

(declare-fun forall!3799 (List!15669 Int) Bool)

(assert (=> d!433424 (= lt!513543 (forall!3799 l2!3105 lambda!63710))))

(declare-fun e!944543 () Bool)

(assert (=> d!433424 (= lt!513543 e!944543)))

(declare-fun res!667902 () Bool)

(assert (=> d!433424 (=> res!667902 e!944543)))

(assert (=> d!433424 (= res!667902 (not (is-Cons!15603 l2!3105)))))

(assert (=> d!433424 (not (isEmpty!9749 rules!4290))))

(assert (=> d!433424 (= (rulesProduceEachTokenIndividuallyList!803 thiss!27374 rules!4290 l2!3105) lt!513543)))

(declare-fun b!1477948 () Bool)

(declare-fun e!944544 () Bool)

(assert (=> b!1477948 (= e!944543 e!944544)))

(declare-fun res!667903 () Bool)

(assert (=> b!1477948 (=> (not res!667903) (not e!944544))))

(assert (=> b!1477948 (= res!667903 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 l2!3105)))))

(declare-fun b!1477949 () Bool)

(assert (=> b!1477949 (= e!944544 (rulesProduceEachTokenIndividuallyList!803 thiss!27374 rules!4290 (t!136870 l2!3105)))))

(assert (= (and d!433424 (not res!667902)) b!1477948))

(assert (= (and b!1477948 res!667903) b!1477949))

(declare-fun m!1723435 () Bool)

(assert (=> d!433424 m!1723435))

(assert (=> d!433424 m!1723339))

(declare-fun m!1723437 () Bool)

(assert (=> b!1477948 m!1723437))

(declare-fun m!1723439 () Bool)

(assert (=> b!1477949 m!1723439))

(assert (=> b!1477840 d!433424))

(declare-fun d!433440 () Bool)

(assert (=> d!433440 (= (inv!20811 (tag!3044 (rule!4557 (h!21004 l1!3136)))) (= (mod (str.len (value!88878 (tag!3044 (rule!4557 (h!21004 l1!3136))))) 2) 0))))

(assert (=> b!1477851 d!433440))

(declare-fun d!433442 () Bool)

(declare-fun res!667906 () Bool)

(declare-fun e!944556 () Bool)

(assert (=> d!433442 (=> (not res!667906) (not e!944556))))

(declare-fun semiInverseModEq!1042 (Int Int) Bool)

(assert (=> d!433442 (= res!667906 (semiInverseModEq!1042 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (toValue!4115 (transformation!2780 (rule!4557 (h!21004 l1!3136))))))))

(assert (=> d!433442 (= (inv!20814 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) e!944556)))

(declare-fun b!1477965 () Bool)

(declare-fun equivClasses!1001 (Int Int) Bool)

(assert (=> b!1477965 (= e!944556 (equivClasses!1001 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (toValue!4115 (transformation!2780 (rule!4557 (h!21004 l1!3136))))))))

(assert (= (and d!433442 res!667906) b!1477965))

(declare-fun m!1723441 () Bool)

(assert (=> d!433442 m!1723441))

(declare-fun m!1723443 () Bool)

(assert (=> b!1477965 m!1723443))

(assert (=> b!1477851 d!433442))

(declare-fun d!433444 () Bool)

(declare-fun lt!513546 () Int)

(assert (=> d!433444 (>= lt!513546 0)))

(declare-fun e!944559 () Int)

(assert (=> d!433444 (= lt!513546 e!944559)))

(declare-fun c!242722 () Bool)

(assert (=> d!433444 (= c!242722 (is-Nil!15603 l1!3136))))

(assert (=> d!433444 (= (size!12635 l1!3136) lt!513546)))

(declare-fun b!1477970 () Bool)

(assert (=> b!1477970 (= e!944559 0)))

(declare-fun b!1477971 () Bool)

(assert (=> b!1477971 (= e!944559 (+ 1 (size!12635 (t!136870 l1!3136))))))

(assert (= (and d!433444 c!242722) b!1477970))

(assert (= (and d!433444 (not c!242722)) b!1477971))

(declare-fun m!1723445 () Bool)

(assert (=> b!1477971 m!1723445))

(assert (=> b!1477849 d!433444))

(declare-fun d!433446 () Bool)

(assert (=> d!433446 (= (inv!20811 (tag!3044 (rule!4557 (h!21004 l2!3105)))) (= (mod (str.len (value!88878 (tag!3044 (rule!4557 (h!21004 l2!3105))))) 2) 0))))

(assert (=> b!1477839 d!433446))

(declare-fun d!433448 () Bool)

(declare-fun res!667907 () Bool)

(declare-fun e!944560 () Bool)

(assert (=> d!433448 (=> (not res!667907) (not e!944560))))

(assert (=> d!433448 (= res!667907 (semiInverseModEq!1042 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (toValue!4115 (transformation!2780 (rule!4557 (h!21004 l2!3105))))))))

(assert (=> d!433448 (= (inv!20814 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) e!944560)))

(declare-fun b!1477972 () Bool)

(assert (=> b!1477972 (= e!944560 (equivClasses!1001 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (toValue!4115 (transformation!2780 (rule!4557 (h!21004 l2!3105))))))))

(assert (= (and d!433448 res!667907) b!1477972))

(declare-fun m!1723447 () Bool)

(assert (=> d!433448 m!1723447))

(declare-fun m!1723449 () Bool)

(assert (=> b!1477972 m!1723449))

(assert (=> b!1477839 d!433448))

(declare-fun b!1477983 () Bool)

(declare-fun e!944567 () Bool)

(declare-fun inv!15 (TokenValue!2870) Bool)

(assert (=> b!1477983 (= e!944567 (inv!15 (value!88879 (h!21004 l2!3105))))))

(declare-fun b!1477984 () Bool)

(declare-fun e!944568 () Bool)

(declare-fun e!944569 () Bool)

(assert (=> b!1477984 (= e!944568 e!944569)))

(declare-fun c!242728 () Bool)

(assert (=> b!1477984 (= c!242728 (is-IntegerValue!8611 (value!88879 (h!21004 l2!3105))))))

(declare-fun d!433450 () Bool)

(declare-fun c!242727 () Bool)

(assert (=> d!433450 (= c!242727 (is-IntegerValue!8610 (value!88879 (h!21004 l2!3105))))))

(assert (=> d!433450 (= (inv!21 (value!88879 (h!21004 l2!3105))) e!944568)))

(declare-fun b!1477985 () Bool)

(declare-fun res!667910 () Bool)

(assert (=> b!1477985 (=> res!667910 e!944567)))

(assert (=> b!1477985 (= res!667910 (not (is-IntegerValue!8612 (value!88879 (h!21004 l2!3105)))))))

(assert (=> b!1477985 (= e!944569 e!944567)))

(declare-fun b!1477986 () Bool)

(declare-fun inv!17 (TokenValue!2870) Bool)

(assert (=> b!1477986 (= e!944569 (inv!17 (value!88879 (h!21004 l2!3105))))))

(declare-fun b!1477987 () Bool)

(declare-fun inv!16 (TokenValue!2870) Bool)

(assert (=> b!1477987 (= e!944568 (inv!16 (value!88879 (h!21004 l2!3105))))))

(assert (= (and d!433450 c!242727) b!1477987))

(assert (= (and d!433450 (not c!242727)) b!1477984))

(assert (= (and b!1477984 c!242728) b!1477986))

(assert (= (and b!1477984 (not c!242728)) b!1477985))

(assert (= (and b!1477985 (not res!667910)) b!1477983))

(declare-fun m!1723451 () Bool)

(assert (=> b!1477983 m!1723451))

(declare-fun m!1723453 () Bool)

(assert (=> b!1477986 m!1723453))

(declare-fun m!1723455 () Bool)

(assert (=> b!1477987 m!1723455))

(assert (=> b!1477850 d!433450))

(declare-fun b!1477988 () Bool)

(declare-fun e!944570 () Bool)

(assert (=> b!1477988 (= e!944570 (inv!15 (value!88879 (h!21004 l1!3136))))))

(declare-fun b!1477989 () Bool)

(declare-fun e!944571 () Bool)

(declare-fun e!944572 () Bool)

(assert (=> b!1477989 (= e!944571 e!944572)))

(declare-fun c!242730 () Bool)

(assert (=> b!1477989 (= c!242730 (is-IntegerValue!8611 (value!88879 (h!21004 l1!3136))))))

(declare-fun d!433452 () Bool)

(declare-fun c!242729 () Bool)

(assert (=> d!433452 (= c!242729 (is-IntegerValue!8610 (value!88879 (h!21004 l1!3136))))))

(assert (=> d!433452 (= (inv!21 (value!88879 (h!21004 l1!3136))) e!944571)))

(declare-fun b!1477990 () Bool)

(declare-fun res!667911 () Bool)

(assert (=> b!1477990 (=> res!667911 e!944570)))

(assert (=> b!1477990 (= res!667911 (not (is-IntegerValue!8612 (value!88879 (h!21004 l1!3136)))))))

(assert (=> b!1477990 (= e!944572 e!944570)))

(declare-fun b!1477991 () Bool)

(assert (=> b!1477991 (= e!944572 (inv!17 (value!88879 (h!21004 l1!3136))))))

(declare-fun b!1477992 () Bool)

(assert (=> b!1477992 (= e!944571 (inv!16 (value!88879 (h!21004 l1!3136))))))

(assert (= (and d!433452 c!242729) b!1477992))

(assert (= (and d!433452 (not c!242729)) b!1477989))

(assert (= (and b!1477989 c!242730) b!1477991))

(assert (= (and b!1477989 (not c!242730)) b!1477990))

(assert (= (and b!1477990 (not res!667911)) b!1477988))

(declare-fun m!1723457 () Bool)

(assert (=> b!1477988 m!1723457))

(declare-fun m!1723459 () Bool)

(assert (=> b!1477991 m!1723459))

(declare-fun m!1723461 () Bool)

(assert (=> b!1477992 m!1723461))

(assert (=> b!1477853 d!433452))

(declare-fun d!433454 () Bool)

(declare-fun res!667916 () Bool)

(declare-fun e!944578 () Bool)

(assert (=> d!433454 (=> res!667916 e!944578)))

(assert (=> d!433454 (= res!667916 (or (not (is-Cons!15603 l2!3105)) (not (is-Cons!15603 (t!136870 l2!3105)))))))

(assert (=> d!433454 (= (tokensListTwoByTwoPredicateSeparableList!296 thiss!27374 l2!3105 rules!4290) e!944578)))

(declare-fun b!1477997 () Bool)

(declare-fun e!944577 () Bool)

(assert (=> b!1477997 (= e!944578 e!944577)))

(declare-fun res!667917 () Bool)

(assert (=> b!1477997 (=> (not res!667917) (not e!944577))))

(assert (=> b!1477997 (= res!667917 (separableTokensPredicate!575 thiss!27374 (h!21004 l2!3105) (h!21004 (t!136870 l2!3105)) rules!4290))))

(declare-fun lt!513567 () Unit!25376)

(declare-fun Unit!25381 () Unit!25376)

(assert (=> b!1477997 (= lt!513567 Unit!25381)))

(declare-fun size!12638 (BalanceConc!10566) Int)

(declare-fun charsOf!1591 (Token!5222) BalanceConc!10566)

(assert (=> b!1477997 (> (size!12638 (charsOf!1591 (h!21004 (t!136870 l2!3105)))) 0)))

(declare-fun lt!513565 () Unit!25376)

(declare-fun Unit!25382 () Unit!25376)

(assert (=> b!1477997 (= lt!513565 Unit!25382)))

(assert (=> b!1477997 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 (t!136870 l2!3105)))))

(declare-fun lt!513561 () Unit!25376)

(declare-fun Unit!25383 () Unit!25376)

(assert (=> b!1477997 (= lt!513561 Unit!25383)))

(assert (=> b!1477997 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 l2!3105))))

(declare-fun lt!513566 () Unit!25376)

(declare-fun lt!513564 () Unit!25376)

(assert (=> b!1477997 (= lt!513566 lt!513564)))

(assert (=> b!1477997 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 (t!136870 l2!3105)))))

(assert (=> b!1477997 (= lt!513564 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l2!3105 (h!21004 (t!136870 l2!3105))))))

(declare-fun lt!513563 () Unit!25376)

(declare-fun lt!513562 () Unit!25376)

(assert (=> b!1477997 (= lt!513563 lt!513562)))

(assert (=> b!1477997 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 l2!3105))))

(assert (=> b!1477997 (= lt!513562 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l2!3105 (h!21004 l2!3105)))))

(declare-fun b!1477998 () Bool)

(assert (=> b!1477998 (= e!944577 (tokensListTwoByTwoPredicateSeparableList!296 thiss!27374 (Cons!15603 (h!21004 (t!136870 l2!3105)) (t!136870 (t!136870 l2!3105))) rules!4290))))

(assert (= (and d!433454 (not res!667916)) b!1477997))

(assert (= (and b!1477997 res!667917) b!1477998))

(declare-fun m!1723463 () Bool)

(assert (=> b!1477997 m!1723463))

(declare-fun m!1723465 () Bool)

(assert (=> b!1477997 m!1723465))

(declare-fun m!1723467 () Bool)

(assert (=> b!1477997 m!1723467))

(assert (=> b!1477997 m!1723465))

(declare-fun m!1723469 () Bool)

(assert (=> b!1477997 m!1723469))

(declare-fun m!1723471 () Bool)

(assert (=> b!1477997 m!1723471))

(declare-fun m!1723473 () Bool)

(assert (=> b!1477997 m!1723473))

(assert (=> b!1477997 m!1723437))

(declare-fun m!1723475 () Bool)

(assert (=> b!1477998 m!1723475))

(assert (=> b!1477843 d!433454))

(declare-fun d!433456 () Bool)

(assert (=> d!433456 (= (isEmpty!9750 l2!3105) (is-Nil!15603 l2!3105))))

(assert (=> b!1477854 d!433456))

(declare-fun d!433458 () Bool)

(assert (=> d!433458 (= (isEmpty!9749 rules!4290) (is-Nil!15602 rules!4290))))

(assert (=> b!1477841 d!433458))

(declare-fun d!433460 () Bool)

(assert (=> d!433460 (= (isEmpty!9750 l1!3136) (is-Nil!15603 l1!3136))))

(assert (=> b!1477842 d!433460))

(declare-fun d!433462 () Bool)

(declare-fun res!667920 () Bool)

(declare-fun e!944581 () Bool)

(assert (=> d!433462 (=> (not res!667920) (not e!944581))))

(declare-fun rulesValid!1015 (LexerInterface!2436 List!15668) Bool)

(assert (=> d!433462 (= res!667920 (rulesValid!1015 thiss!27374 rules!4290))))

(assert (=> d!433462 (= (rulesInvariant!2225 thiss!27374 rules!4290) e!944581)))

(declare-fun b!1478001 () Bool)

(declare-datatypes ((List!15674 0))(
  ( (Nil!15608) (Cons!15608 (h!21009 String!18608) (t!136912 List!15674)) )
))
(declare-fun noDuplicateTag!1015 (LexerInterface!2436 List!15668 List!15674) Bool)

(assert (=> b!1478001 (= e!944581 (noDuplicateTag!1015 thiss!27374 rules!4290 Nil!15608))))

(assert (= (and d!433462 res!667920) b!1478001))

(declare-fun m!1723477 () Bool)

(assert (=> d!433462 m!1723477))

(declare-fun m!1723479 () Bool)

(assert (=> b!1478001 m!1723479))

(assert (=> b!1477856 d!433462))

(declare-fun d!433464 () Bool)

(declare-fun res!667925 () Bool)

(declare-fun e!944584 () Bool)

(assert (=> d!433464 (=> (not res!667925) (not e!944584))))

(declare-fun isEmpty!9753 (List!15667) Bool)

(assert (=> d!433464 (= res!667925 (not (isEmpty!9753 (originalCharacters!3642 (h!21004 l2!3105)))))))

(assert (=> d!433464 (= (inv!20815 (h!21004 l2!3105)) e!944584)))

(declare-fun b!1478006 () Bool)

(declare-fun res!667926 () Bool)

(assert (=> b!1478006 (=> (not res!667926) (not e!944584))))

(declare-fun list!6204 (BalanceConc!10566) List!15667)

(declare-fun dynLambda!7086 (Int TokenValue!2870) BalanceConc!10566)

(assert (=> b!1478006 (= res!667926 (= (originalCharacters!3642 (h!21004 l2!3105)) (list!6204 (dynLambda!7086 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (value!88879 (h!21004 l2!3105))))))))

(declare-fun b!1478007 () Bool)

(declare-fun size!12639 (List!15667) Int)

(assert (=> b!1478007 (= e!944584 (= (size!12634 (h!21004 l2!3105)) (size!12639 (originalCharacters!3642 (h!21004 l2!3105)))))))

(assert (= (and d!433464 res!667925) b!1478006))

(assert (= (and b!1478006 res!667926) b!1478007))

(declare-fun b_lambda!46261 () Bool)

(assert (=> (not b_lambda!46261) (not b!1478006)))

(declare-fun t!136886 () Bool)

(declare-fun tb!84275 () Bool)

(assert (=> (and b!1477845 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105))))) t!136886) tb!84275))

(declare-fun b!1478012 () Bool)

(declare-fun e!944587 () Bool)

(declare-fun tp!418596 () Bool)

(declare-fun inv!20818 (Conc!5313) Bool)

(assert (=> b!1478012 (= e!944587 (and (inv!20818 (c!242714 (dynLambda!7086 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (value!88879 (h!21004 l2!3105))))) tp!418596))))

(declare-fun result!101290 () Bool)

(declare-fun inv!20819 (BalanceConc!10566) Bool)

(assert (=> tb!84275 (= result!101290 (and (inv!20819 (dynLambda!7086 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (value!88879 (h!21004 l2!3105)))) e!944587))))

(assert (= tb!84275 b!1478012))

(declare-fun m!1723481 () Bool)

(assert (=> b!1478012 m!1723481))

(declare-fun m!1723483 () Bool)

(assert (=> tb!84275 m!1723483))

(assert (=> b!1478006 t!136886))

(declare-fun b_and!102263 () Bool)

(assert (= b_and!102235 (and (=> t!136886 result!101290) b_and!102263)))

(declare-fun tb!84277 () Bool)

(declare-fun t!136888 () Bool)

(assert (=> (and b!1477837 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105))))) t!136888) tb!84277))

(declare-fun result!101294 () Bool)

(assert (= result!101294 result!101290))

(assert (=> b!1478006 t!136888))

(declare-fun b_and!102265 () Bool)

(assert (= b_and!102239 (and (=> t!136888 result!101294) b_and!102265)))

(declare-fun tb!84279 () Bool)

(declare-fun t!136890 () Bool)

(assert (=> (and b!1477846 (= (toChars!3974 (transformation!2780 (h!21003 rules!4290))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105))))) t!136890) tb!84279))

(declare-fun result!101296 () Bool)

(assert (= result!101296 result!101290))

(assert (=> b!1478006 t!136890))

(declare-fun b_and!102267 () Bool)

(assert (= b_and!102243 (and (=> t!136890 result!101296) b_and!102267)))

(declare-fun m!1723485 () Bool)

(assert (=> d!433464 m!1723485))

(declare-fun m!1723487 () Bool)

(assert (=> b!1478006 m!1723487))

(assert (=> b!1478006 m!1723487))

(declare-fun m!1723489 () Bool)

(assert (=> b!1478006 m!1723489))

(declare-fun m!1723491 () Bool)

(assert (=> b!1478007 m!1723491))

(assert (=> b!1477844 d!433464))

(declare-fun bs!345741 () Bool)

(declare-fun d!433466 () Bool)

(assert (= bs!345741 (and d!433466 d!433424)))

(declare-fun lambda!63711 () Int)

(assert (=> bs!345741 (= lambda!63711 lambda!63710)))

(declare-fun b!1478017 () Bool)

(declare-fun e!944592 () Bool)

(assert (=> b!1478017 (= e!944592 true)))

(declare-fun b!1478016 () Bool)

(declare-fun e!944591 () Bool)

(assert (=> b!1478016 (= e!944591 e!944592)))

(declare-fun b!1478015 () Bool)

(declare-fun e!944590 () Bool)

(assert (=> b!1478015 (= e!944590 e!944591)))

(assert (=> d!433466 e!944590))

(assert (= b!1478016 b!1478017))

(assert (= b!1478015 b!1478016))

(assert (= (and d!433466 (is-Cons!15602 rules!4290)) b!1478015))

(assert (=> b!1478017 (< (dynLambda!7083 order!9383 (toValue!4115 (transformation!2780 (h!21003 rules!4290)))) (dynLambda!7084 order!9385 lambda!63711))))

(assert (=> b!1478017 (< (dynLambda!7085 order!9387 (toChars!3974 (transformation!2780 (h!21003 rules!4290)))) (dynLambda!7084 order!9385 lambda!63711))))

(assert (=> d!433466 true))

(declare-fun lt!513568 () Bool)

(assert (=> d!433466 (= lt!513568 (forall!3799 l1!3136 lambda!63711))))

(declare-fun e!944588 () Bool)

(assert (=> d!433466 (= lt!513568 e!944588)))

(declare-fun res!667927 () Bool)

(assert (=> d!433466 (=> res!667927 e!944588)))

(assert (=> d!433466 (= res!667927 (not (is-Cons!15603 l1!3136)))))

(assert (=> d!433466 (not (isEmpty!9749 rules!4290))))

(assert (=> d!433466 (= (rulesProduceEachTokenIndividuallyList!803 thiss!27374 rules!4290 l1!3136) lt!513568)))

(declare-fun b!1478013 () Bool)

(declare-fun e!944589 () Bool)

(assert (=> b!1478013 (= e!944588 e!944589)))

(declare-fun res!667928 () Bool)

(assert (=> b!1478013 (=> (not res!667928) (not e!944589))))

(assert (=> b!1478013 (= res!667928 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 l1!3136)))))

(declare-fun b!1478014 () Bool)

(assert (=> b!1478014 (= e!944589 (rulesProduceEachTokenIndividuallyList!803 thiss!27374 rules!4290 (t!136870 l1!3136)))))

(assert (= (and d!433466 (not res!667927)) b!1478013))

(assert (= (and b!1478013 res!667928) b!1478014))

(declare-fun m!1723493 () Bool)

(assert (=> d!433466 m!1723493))

(assert (=> d!433466 m!1723339))

(declare-fun m!1723495 () Bool)

(assert (=> b!1478013 m!1723495))

(declare-fun m!1723497 () Bool)

(assert (=> b!1478014 m!1723497))

(assert (=> b!1477855 d!433466))

(declare-fun d!433468 () Bool)

(declare-fun res!667929 () Bool)

(declare-fun e!944594 () Bool)

(assert (=> d!433468 (=> res!667929 e!944594)))

(assert (=> d!433468 (= res!667929 (or (not (is-Cons!15603 l1!3136)) (not (is-Cons!15603 (t!136870 l1!3136)))))))

(assert (=> d!433468 (= (tokensListTwoByTwoPredicateSeparableList!296 thiss!27374 l1!3136 rules!4290) e!944594)))

(declare-fun b!1478018 () Bool)

(declare-fun e!944593 () Bool)

(assert (=> b!1478018 (= e!944594 e!944593)))

(declare-fun res!667930 () Bool)

(assert (=> b!1478018 (=> (not res!667930) (not e!944593))))

(assert (=> b!1478018 (= res!667930 (separableTokensPredicate!575 thiss!27374 (h!21004 l1!3136) (h!21004 (t!136870 l1!3136)) rules!4290))))

(declare-fun lt!513575 () Unit!25376)

(declare-fun Unit!25384 () Unit!25376)

(assert (=> b!1478018 (= lt!513575 Unit!25384)))

(assert (=> b!1478018 (> (size!12638 (charsOf!1591 (h!21004 (t!136870 l1!3136)))) 0)))

(declare-fun lt!513573 () Unit!25376)

(declare-fun Unit!25385 () Unit!25376)

(assert (=> b!1478018 (= lt!513573 Unit!25385)))

(assert (=> b!1478018 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 (t!136870 l1!3136)))))

(declare-fun lt!513569 () Unit!25376)

(declare-fun Unit!25386 () Unit!25376)

(assert (=> b!1478018 (= lt!513569 Unit!25386)))

(assert (=> b!1478018 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 l1!3136))))

(declare-fun lt!513574 () Unit!25376)

(declare-fun lt!513572 () Unit!25376)

(assert (=> b!1478018 (= lt!513574 lt!513572)))

(assert (=> b!1478018 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 (t!136870 l1!3136)))))

(assert (=> b!1478018 (= lt!513572 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l1!3136 (h!21004 (t!136870 l1!3136))))))

(declare-fun lt!513571 () Unit!25376)

(declare-fun lt!513570 () Unit!25376)

(assert (=> b!1478018 (= lt!513571 lt!513570)))

(assert (=> b!1478018 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 (h!21004 l1!3136))))

(assert (=> b!1478018 (= lt!513570 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l1!3136 (h!21004 l1!3136)))))

(declare-fun b!1478019 () Bool)

(assert (=> b!1478019 (= e!944593 (tokensListTwoByTwoPredicateSeparableList!296 thiss!27374 (Cons!15603 (h!21004 (t!136870 l1!3136)) (t!136870 (t!136870 l1!3136))) rules!4290))))

(assert (= (and d!433468 (not res!667929)) b!1478018))

(assert (= (and b!1478018 res!667930) b!1478019))

(declare-fun m!1723499 () Bool)

(assert (=> b!1478018 m!1723499))

(declare-fun m!1723501 () Bool)

(assert (=> b!1478018 m!1723501))

(declare-fun m!1723503 () Bool)

(assert (=> b!1478018 m!1723503))

(assert (=> b!1478018 m!1723501))

(declare-fun m!1723505 () Bool)

(assert (=> b!1478018 m!1723505))

(declare-fun m!1723507 () Bool)

(assert (=> b!1478018 m!1723507))

(declare-fun m!1723509 () Bool)

(assert (=> b!1478018 m!1723509))

(assert (=> b!1478018 m!1723495))

(declare-fun m!1723511 () Bool)

(assert (=> b!1478019 m!1723511))

(assert (=> b!1477848 d!433468))

(declare-fun d!433470 () Bool)

(assert (=> d!433470 (= (inv!20811 (tag!3044 (h!21003 rules!4290))) (= (mod (str.len (value!88878 (tag!3044 (h!21003 rules!4290)))) 2) 0))))

(assert (=> b!1477838 d!433470))

(declare-fun d!433472 () Bool)

(declare-fun res!667931 () Bool)

(declare-fun e!944595 () Bool)

(assert (=> d!433472 (=> (not res!667931) (not e!944595))))

(assert (=> d!433472 (= res!667931 (semiInverseModEq!1042 (toChars!3974 (transformation!2780 (h!21003 rules!4290))) (toValue!4115 (transformation!2780 (h!21003 rules!4290)))))))

(assert (=> d!433472 (= (inv!20814 (transformation!2780 (h!21003 rules!4290))) e!944595)))

(declare-fun b!1478020 () Bool)

(assert (=> b!1478020 (= e!944595 (equivClasses!1001 (toChars!3974 (transformation!2780 (h!21003 rules!4290))) (toValue!4115 (transformation!2780 (h!21003 rules!4290)))))))

(assert (= (and d!433472 res!667931) b!1478020))

(declare-fun m!1723513 () Bool)

(assert (=> d!433472 m!1723513))

(declare-fun m!1723515 () Bool)

(assert (=> b!1478020 m!1723515))

(assert (=> b!1477838 d!433472))

(declare-fun d!433474 () Bool)

(assert (=> d!433474 (= (head!3068 l2!3105) (h!21004 l2!3105))))

(assert (=> b!1477836 d!433474))

(declare-fun d!433476 () Bool)

(declare-fun lt!513578 () Token!5222)

(declare-fun contains!2941 (List!15669 Token!5222) Bool)

(assert (=> d!433476 (contains!2941 l1!3136 lt!513578)))

(declare-fun e!944598 () Token!5222)

(assert (=> d!433476 (= lt!513578 e!944598)))

(declare-fun c!242733 () Bool)

(assert (=> d!433476 (= c!242733 (and (is-Cons!15603 l1!3136) (is-Nil!15603 (t!136870 l1!3136))))))

(assert (=> d!433476 (not (isEmpty!9750 l1!3136))))

(assert (=> d!433476 (= (last!338 l1!3136) lt!513578)))

(declare-fun b!1478025 () Bool)

(assert (=> b!1478025 (= e!944598 (h!21004 l1!3136))))

(declare-fun b!1478026 () Bool)

(assert (=> b!1478026 (= e!944598 (last!338 (t!136870 l1!3136)))))

(assert (= (and d!433476 c!242733) b!1478025))

(assert (= (and d!433476 (not c!242733)) b!1478026))

(declare-fun m!1723517 () Bool)

(assert (=> d!433476 m!1723517))

(assert (=> d!433476 m!1723331))

(declare-fun m!1723519 () Bool)

(assert (=> b!1478026 m!1723519))

(assert (=> b!1477836 d!433476))

(declare-fun d!433478 () Bool)

(assert (=> d!433478 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 lt!513520)))

(declare-fun lt!513582 () Unit!25376)

(declare-fun choose!9050 (LexerInterface!2436 List!15668 List!15669 Token!5222) Unit!25376)

(assert (=> d!433478 (= lt!513582 (choose!9050 thiss!27374 rules!4290 l1!3136 lt!513520))))

(assert (=> d!433478 (not (isEmpty!9749 rules!4290))))

(assert (=> d!433478 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l1!3136 lt!513520) lt!513582)))

(declare-fun bs!345742 () Bool)

(assert (= bs!345742 d!433478))

(assert (=> bs!345742 m!1723343))

(declare-fun m!1723541 () Bool)

(assert (=> bs!345742 m!1723541))

(assert (=> bs!345742 m!1723339))

(assert (=> b!1477836 d!433478))

(declare-fun d!433492 () Bool)

(assert (=> d!433492 (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 lt!513523)))

(declare-fun lt!513583 () Unit!25376)

(assert (=> d!433492 (= lt!513583 (choose!9050 thiss!27374 rules!4290 l2!3105 lt!513523))))

(assert (=> d!433492 (not (isEmpty!9749 rules!4290))))

(assert (=> d!433492 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!474 thiss!27374 rules!4290 l2!3105 lt!513523) lt!513583)))

(declare-fun bs!345743 () Bool)

(assert (= bs!345743 d!433492))

(assert (=> bs!345743 m!1723345))

(declare-fun m!1723543 () Bool)

(assert (=> bs!345743 m!1723543))

(assert (=> bs!345743 m!1723339))

(assert (=> b!1477836 d!433492))

(declare-fun d!433494 () Bool)

(declare-fun lt!513610 () Bool)

(declare-fun e!944633 () Bool)

(assert (=> d!433494 (= lt!513610 e!944633)))

(declare-fun res!667953 () Bool)

(assert (=> d!433494 (=> (not res!667953) (not e!944633))))

(declare-datatypes ((IArray!10635 0))(
  ( (IArray!10636 (innerList!5375 List!15669)) )
))
(declare-datatypes ((Conc!5315 0))(
  ( (Node!5315 (left!13164 Conc!5315) (right!13494 Conc!5315) (csize!10860 Int) (cheight!5526 Int)) (Leaf!7907 (xs!8070 IArray!10635) (csize!10861 Int)) (Empty!5315) )
))
(declare-datatypes ((BalanceConc!10570 0))(
  ( (BalanceConc!10571 (c!242740 Conc!5315)) )
))
(declare-fun list!6205 (BalanceConc!10570) List!15669)

(declare-datatypes ((tuple2!14314 0))(
  ( (tuple2!14315 (_1!8043 BalanceConc!10570) (_2!8043 BalanceConc!10566)) )
))
(declare-fun lex!1096 (LexerInterface!2436 List!15668 BalanceConc!10566) tuple2!14314)

(declare-fun print!1131 (LexerInterface!2436 BalanceConc!10570) BalanceConc!10566)

(declare-fun singletonSeq!1312 (Token!5222) BalanceConc!10570)

(assert (=> d!433494 (= res!667953 (= (list!6205 (_1!8043 (lex!1096 thiss!27374 rules!4290 (print!1131 thiss!27374 (singletonSeq!1312 lt!513523))))) (list!6205 (singletonSeq!1312 lt!513523))))))

(declare-fun e!944634 () Bool)

(assert (=> d!433494 (= lt!513610 e!944634)))

(declare-fun res!667954 () Bool)

(assert (=> d!433494 (=> (not res!667954) (not e!944634))))

(declare-fun lt!513609 () tuple2!14314)

(declare-fun size!12640 (BalanceConc!10570) Int)

(assert (=> d!433494 (= res!667954 (= (size!12640 (_1!8043 lt!513609)) 1))))

(assert (=> d!433494 (= lt!513609 (lex!1096 thiss!27374 rules!4290 (print!1131 thiss!27374 (singletonSeq!1312 lt!513523))))))

(assert (=> d!433494 (not (isEmpty!9749 rules!4290))))

(assert (=> d!433494 (= (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 lt!513523) lt!513610)))

(declare-fun b!1478073 () Bool)

(declare-fun res!667955 () Bool)

(assert (=> b!1478073 (=> (not res!667955) (not e!944634))))

(declare-fun apply!4027 (BalanceConc!10570 Int) Token!5222)

(assert (=> b!1478073 (= res!667955 (= (apply!4027 (_1!8043 lt!513609) 0) lt!513523))))

(declare-fun b!1478074 () Bool)

(declare-fun isEmpty!9754 (BalanceConc!10566) Bool)

(assert (=> b!1478074 (= e!944634 (isEmpty!9754 (_2!8043 lt!513609)))))

(declare-fun b!1478075 () Bool)

(assert (=> b!1478075 (= e!944633 (isEmpty!9754 (_2!8043 (lex!1096 thiss!27374 rules!4290 (print!1131 thiss!27374 (singletonSeq!1312 lt!513523))))))))

(assert (= (and d!433494 res!667954) b!1478073))

(assert (= (and b!1478073 res!667955) b!1478074))

(assert (= (and d!433494 res!667953) b!1478075))

(declare-fun m!1723559 () Bool)

(assert (=> d!433494 m!1723559))

(declare-fun m!1723561 () Bool)

(assert (=> d!433494 m!1723561))

(declare-fun m!1723563 () Bool)

(assert (=> d!433494 m!1723563))

(declare-fun m!1723565 () Bool)

(assert (=> d!433494 m!1723565))

(assert (=> d!433494 m!1723565))

(declare-fun m!1723567 () Bool)

(assert (=> d!433494 m!1723567))

(declare-fun m!1723569 () Bool)

(assert (=> d!433494 m!1723569))

(assert (=> d!433494 m!1723565))

(assert (=> d!433494 m!1723561))

(assert (=> d!433494 m!1723339))

(declare-fun m!1723571 () Bool)

(assert (=> b!1478073 m!1723571))

(declare-fun m!1723573 () Bool)

(assert (=> b!1478074 m!1723573))

(assert (=> b!1478075 m!1723565))

(assert (=> b!1478075 m!1723565))

(assert (=> b!1478075 m!1723561))

(assert (=> b!1478075 m!1723561))

(assert (=> b!1478075 m!1723563))

(declare-fun m!1723575 () Bool)

(assert (=> b!1478075 m!1723575))

(assert (=> b!1477836 d!433494))

(declare-fun d!433498 () Bool)

(declare-fun lt!513612 () Bool)

(declare-fun e!944635 () Bool)

(assert (=> d!433498 (= lt!513612 e!944635)))

(declare-fun res!667956 () Bool)

(assert (=> d!433498 (=> (not res!667956) (not e!944635))))

(assert (=> d!433498 (= res!667956 (= (list!6205 (_1!8043 (lex!1096 thiss!27374 rules!4290 (print!1131 thiss!27374 (singletonSeq!1312 lt!513520))))) (list!6205 (singletonSeq!1312 lt!513520))))))

(declare-fun e!944636 () Bool)

(assert (=> d!433498 (= lt!513612 e!944636)))

(declare-fun res!667957 () Bool)

(assert (=> d!433498 (=> (not res!667957) (not e!944636))))

(declare-fun lt!513611 () tuple2!14314)

(assert (=> d!433498 (= res!667957 (= (size!12640 (_1!8043 lt!513611)) 1))))

(assert (=> d!433498 (= lt!513611 (lex!1096 thiss!27374 rules!4290 (print!1131 thiss!27374 (singletonSeq!1312 lt!513520))))))

(assert (=> d!433498 (not (isEmpty!9749 rules!4290))))

(assert (=> d!433498 (= (rulesProduceIndividualToken!1293 thiss!27374 rules!4290 lt!513520) lt!513612)))

(declare-fun b!1478076 () Bool)

(declare-fun res!667958 () Bool)

(assert (=> b!1478076 (=> (not res!667958) (not e!944636))))

(assert (=> b!1478076 (= res!667958 (= (apply!4027 (_1!8043 lt!513611) 0) lt!513520))))

(declare-fun b!1478077 () Bool)

(assert (=> b!1478077 (= e!944636 (isEmpty!9754 (_2!8043 lt!513611)))))

(declare-fun b!1478078 () Bool)

(assert (=> b!1478078 (= e!944635 (isEmpty!9754 (_2!8043 (lex!1096 thiss!27374 rules!4290 (print!1131 thiss!27374 (singletonSeq!1312 lt!513520))))))))

(assert (= (and d!433498 res!667957) b!1478076))

(assert (= (and b!1478076 res!667958) b!1478077))

(assert (= (and d!433498 res!667956) b!1478078))

(declare-fun m!1723577 () Bool)

(assert (=> d!433498 m!1723577))

(declare-fun m!1723579 () Bool)

(assert (=> d!433498 m!1723579))

(declare-fun m!1723581 () Bool)

(assert (=> d!433498 m!1723581))

(declare-fun m!1723583 () Bool)

(assert (=> d!433498 m!1723583))

(assert (=> d!433498 m!1723583))

(declare-fun m!1723585 () Bool)

(assert (=> d!433498 m!1723585))

(declare-fun m!1723587 () Bool)

(assert (=> d!433498 m!1723587))

(assert (=> d!433498 m!1723583))

(assert (=> d!433498 m!1723579))

(assert (=> d!433498 m!1723339))

(declare-fun m!1723589 () Bool)

(assert (=> b!1478076 m!1723589))

(declare-fun m!1723591 () Bool)

(assert (=> b!1478077 m!1723591))

(assert (=> b!1478078 m!1723583))

(assert (=> b!1478078 m!1723583))

(assert (=> b!1478078 m!1723579))

(assert (=> b!1478078 m!1723579))

(assert (=> b!1478078 m!1723581))

(declare-fun m!1723593 () Bool)

(assert (=> b!1478078 m!1723593))

(assert (=> b!1477836 d!433498))

(declare-fun d!433500 () Bool)

(declare-fun prefixMatchZipperSequence!373 (Regex!4094 BalanceConc!10566) Bool)

(declare-fun rulesRegex!423 (LexerInterface!2436 List!15668) Regex!4094)

(declare-fun ++!4210 (BalanceConc!10566 BalanceConc!10566) BalanceConc!10566)

(declare-fun singletonSeq!1313 (C!8366) BalanceConc!10566)

(declare-fun apply!4028 (BalanceConc!10566 Int) C!8366)

(assert (=> d!433500 (= (separableTokensPredicate!575 thiss!27374 lt!513520 lt!513523 rules!4290) (not (prefixMatchZipperSequence!373 (rulesRegex!423 thiss!27374 rules!4290) (++!4210 (charsOf!1591 lt!513520) (singletonSeq!1313 (apply!4028 (charsOf!1591 lt!513523) 0))))))))

(declare-fun bs!345744 () Bool)

(assert (= bs!345744 d!433500))

(declare-fun m!1723595 () Bool)

(assert (=> bs!345744 m!1723595))

(declare-fun m!1723597 () Bool)

(assert (=> bs!345744 m!1723597))

(declare-fun m!1723599 () Bool)

(assert (=> bs!345744 m!1723599))

(assert (=> bs!345744 m!1723599))

(declare-fun m!1723601 () Bool)

(assert (=> bs!345744 m!1723601))

(declare-fun m!1723603 () Bool)

(assert (=> bs!345744 m!1723603))

(assert (=> bs!345744 m!1723597))

(assert (=> bs!345744 m!1723603))

(declare-fun m!1723605 () Bool)

(assert (=> bs!345744 m!1723605))

(declare-fun m!1723607 () Bool)

(assert (=> bs!345744 m!1723607))

(assert (=> bs!345744 m!1723601))

(assert (=> bs!345744 m!1723595))

(assert (=> bs!345744 m!1723607))

(assert (=> b!1477836 d!433500))

(declare-fun d!433502 () Bool)

(declare-fun res!667959 () Bool)

(declare-fun e!944637 () Bool)

(assert (=> d!433502 (=> (not res!667959) (not e!944637))))

(assert (=> d!433502 (= res!667959 (not (isEmpty!9753 (originalCharacters!3642 (h!21004 l1!3136)))))))

(assert (=> d!433502 (= (inv!20815 (h!21004 l1!3136)) e!944637)))

(declare-fun b!1478079 () Bool)

(declare-fun res!667960 () Bool)

(assert (=> b!1478079 (=> (not res!667960) (not e!944637))))

(assert (=> b!1478079 (= res!667960 (= (originalCharacters!3642 (h!21004 l1!3136)) (list!6204 (dynLambda!7086 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (value!88879 (h!21004 l1!3136))))))))

(declare-fun b!1478080 () Bool)

(assert (=> b!1478080 (= e!944637 (= (size!12634 (h!21004 l1!3136)) (size!12639 (originalCharacters!3642 (h!21004 l1!3136)))))))

(assert (= (and d!433502 res!667959) b!1478079))

(assert (= (and b!1478079 res!667960) b!1478080))

(declare-fun b_lambda!46263 () Bool)

(assert (=> (not b_lambda!46263) (not b!1478079)))

(declare-fun tb!84281 () Bool)

(declare-fun t!136894 () Bool)

(assert (=> (and b!1477845 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136))))) t!136894) tb!84281))

(declare-fun b!1478081 () Bool)

(declare-fun e!944638 () Bool)

(declare-fun tp!418597 () Bool)

(assert (=> b!1478081 (= e!944638 (and (inv!20818 (c!242714 (dynLambda!7086 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (value!88879 (h!21004 l1!3136))))) tp!418597))))

(declare-fun result!101298 () Bool)

(assert (=> tb!84281 (= result!101298 (and (inv!20819 (dynLambda!7086 (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (value!88879 (h!21004 l1!3136)))) e!944638))))

(assert (= tb!84281 b!1478081))

(declare-fun m!1723609 () Bool)

(assert (=> b!1478081 m!1723609))

(declare-fun m!1723611 () Bool)

(assert (=> tb!84281 m!1723611))

(assert (=> b!1478079 t!136894))

(declare-fun b_and!102269 () Bool)

(assert (= b_and!102263 (and (=> t!136894 result!101298) b_and!102269)))

(declare-fun t!136896 () Bool)

(declare-fun tb!84283 () Bool)

(assert (=> (and b!1477837 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136))))) t!136896) tb!84283))

(declare-fun result!101300 () Bool)

(assert (= result!101300 result!101298))

(assert (=> b!1478079 t!136896))

(declare-fun b_and!102271 () Bool)

(assert (= b_and!102265 (and (=> t!136896 result!101300) b_and!102271)))

(declare-fun t!136898 () Bool)

(declare-fun tb!84285 () Bool)

(assert (=> (and b!1477846 (= (toChars!3974 (transformation!2780 (h!21003 rules!4290))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136))))) t!136898) tb!84285))

(declare-fun result!101302 () Bool)

(assert (= result!101302 result!101298))

(assert (=> b!1478079 t!136898))

(declare-fun b_and!102273 () Bool)

(assert (= b_and!102267 (and (=> t!136898 result!101302) b_and!102273)))

(declare-fun m!1723613 () Bool)

(assert (=> d!433502 m!1723613))

(declare-fun m!1723615 () Bool)

(assert (=> b!1478079 m!1723615))

(assert (=> b!1478079 m!1723615))

(declare-fun m!1723617 () Bool)

(assert (=> b!1478079 m!1723617))

(declare-fun m!1723619 () Bool)

(assert (=> b!1478080 m!1723619))

(assert (=> b!1477847 d!433502))

(declare-fun b!1478095 () Bool)

(declare-fun e!944641 () Bool)

(declare-fun tp!418610 () Bool)

(declare-fun tp!418609 () Bool)

(assert (=> b!1478095 (= e!944641 (and tp!418610 tp!418609))))

(declare-fun b!1478094 () Bool)

(declare-fun tp!418608 () Bool)

(assert (=> b!1478094 (= e!944641 tp!418608)))

(declare-fun b!1478092 () Bool)

(declare-fun tp_is_empty!6953 () Bool)

(assert (=> b!1478092 (= e!944641 tp_is_empty!6953)))

(assert (=> b!1477851 (= tp!418538 e!944641)))

(declare-fun b!1478093 () Bool)

(declare-fun tp!418612 () Bool)

(declare-fun tp!418611 () Bool)

(assert (=> b!1478093 (= e!944641 (and tp!418612 tp!418611))))

(assert (= (and b!1477851 (is-ElementMatch!4094 (regex!2780 (rule!4557 (h!21004 l1!3136))))) b!1478092))

(assert (= (and b!1477851 (is-Concat!6964 (regex!2780 (rule!4557 (h!21004 l1!3136))))) b!1478093))

(assert (= (and b!1477851 (is-Star!4094 (regex!2780 (rule!4557 (h!21004 l1!3136))))) b!1478094))

(assert (= (and b!1477851 (is-Union!4094 (regex!2780 (rule!4557 (h!21004 l1!3136))))) b!1478095))

(declare-fun b!1478099 () Bool)

(declare-fun e!944642 () Bool)

(declare-fun tp!418615 () Bool)

(declare-fun tp!418614 () Bool)

(assert (=> b!1478099 (= e!944642 (and tp!418615 tp!418614))))

(declare-fun b!1478098 () Bool)

(declare-fun tp!418613 () Bool)

(assert (=> b!1478098 (= e!944642 tp!418613)))

(declare-fun b!1478096 () Bool)

(assert (=> b!1478096 (= e!944642 tp_is_empty!6953)))

(assert (=> b!1477839 (= tp!418544 e!944642)))

(declare-fun b!1478097 () Bool)

(declare-fun tp!418617 () Bool)

(declare-fun tp!418616 () Bool)

(assert (=> b!1478097 (= e!944642 (and tp!418617 tp!418616))))

(assert (= (and b!1477839 (is-ElementMatch!4094 (regex!2780 (rule!4557 (h!21004 l2!3105))))) b!1478096))

(assert (= (and b!1477839 (is-Concat!6964 (regex!2780 (rule!4557 (h!21004 l2!3105))))) b!1478097))

(assert (= (and b!1477839 (is-Star!4094 (regex!2780 (rule!4557 (h!21004 l2!3105))))) b!1478098))

(assert (= (and b!1477839 (is-Union!4094 (regex!2780 (rule!4557 (h!21004 l2!3105))))) b!1478099))

(declare-fun b!1478104 () Bool)

(declare-fun e!944645 () Bool)

(declare-fun tp!418620 () Bool)

(assert (=> b!1478104 (= e!944645 (and tp_is_empty!6953 tp!418620))))

(assert (=> b!1477850 (= tp!418537 e!944645)))

(assert (= (and b!1477850 (is-Cons!15601 (originalCharacters!3642 (h!21004 l2!3105)))) b!1478104))

(declare-fun b!1478105 () Bool)

(declare-fun e!944646 () Bool)

(declare-fun tp!418621 () Bool)

(assert (=> b!1478105 (= e!944646 (and tp_is_empty!6953 tp!418621))))

(assert (=> b!1477853 (= tp!418536 e!944646)))

(assert (= (and b!1477853 (is-Cons!15601 (originalCharacters!3642 (h!21004 l1!3136)))) b!1478105))

(declare-fun b!1478116 () Bool)

(declare-fun b_free!37923 () Bool)

(declare-fun b_next!38627 () Bool)

(assert (=> b!1478116 (= b_free!37923 (not b_next!38627))))

(declare-fun tp!418633 () Bool)

(declare-fun b_and!102275 () Bool)

(assert (=> b!1478116 (= tp!418633 b_and!102275)))

(declare-fun b_free!37925 () Bool)

(declare-fun b_next!38629 () Bool)

(assert (=> b!1478116 (= b_free!37925 (not b_next!38629))))

(declare-fun tb!84287 () Bool)

(declare-fun t!136900 () Bool)

(assert (=> (and b!1478116 (= (toChars!3974 (transformation!2780 (h!21003 (t!136869 rules!4290)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105))))) t!136900) tb!84287))

(declare-fun result!101310 () Bool)

(assert (= result!101310 result!101290))

(assert (=> b!1478006 t!136900))

(declare-fun tb!84289 () Bool)

(declare-fun t!136902 () Bool)

(assert (=> (and b!1478116 (= (toChars!3974 (transformation!2780 (h!21003 (t!136869 rules!4290)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136))))) t!136902) tb!84289))

(declare-fun result!101312 () Bool)

(assert (= result!101312 result!101298))

(assert (=> b!1478079 t!136902))

(declare-fun b_and!102277 () Bool)

(declare-fun tp!418630 () Bool)

(assert (=> b!1478116 (= tp!418630 (and (=> t!136900 result!101310) (=> t!136902 result!101312) b_and!102277))))

(declare-fun e!944658 () Bool)

(assert (=> b!1478116 (= e!944658 (and tp!418633 tp!418630))))

(declare-fun b!1478115 () Bool)

(declare-fun tp!418632 () Bool)

(declare-fun e!944655 () Bool)

(assert (=> b!1478115 (= e!944655 (and tp!418632 (inv!20811 (tag!3044 (h!21003 (t!136869 rules!4290)))) (inv!20814 (transformation!2780 (h!21003 (t!136869 rules!4290)))) e!944658))))

(declare-fun b!1478114 () Bool)

(declare-fun e!944657 () Bool)

(declare-fun tp!418631 () Bool)

(assert (=> b!1478114 (= e!944657 (and e!944655 tp!418631))))

(assert (=> b!1477852 (= tp!418545 e!944657)))

(assert (= b!1478115 b!1478116))

(assert (= b!1478114 b!1478115))

(assert (= (and b!1477852 (is-Cons!15602 (t!136869 rules!4290))) b!1478114))

(declare-fun m!1723621 () Bool)

(assert (=> b!1478115 m!1723621))

(declare-fun m!1723623 () Bool)

(assert (=> b!1478115 m!1723623))

(declare-fun b!1478130 () Bool)

(declare-fun b_free!37927 () Bool)

(declare-fun b_next!38631 () Bool)

(assert (=> b!1478130 (= b_free!37927 (not b_next!38631))))

(declare-fun tp!418648 () Bool)

(declare-fun b_and!102279 () Bool)

(assert (=> b!1478130 (= tp!418648 b_and!102279)))

(declare-fun b_free!37929 () Bool)

(declare-fun b_next!38633 () Bool)

(assert (=> b!1478130 (= b_free!37929 (not b_next!38633))))

(declare-fun t!136904 () Bool)

(declare-fun tb!84291 () Bool)

(assert (=> (and b!1478130 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l2!3105))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105))))) t!136904) tb!84291))

(declare-fun result!101316 () Bool)

(assert (= result!101316 result!101290))

(assert (=> b!1478006 t!136904))

(declare-fun t!136906 () Bool)

(declare-fun tb!84293 () Bool)

(assert (=> (and b!1478130 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l2!3105))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136))))) t!136906) tb!84293))

(declare-fun result!101318 () Bool)

(assert (= result!101318 result!101298))

(assert (=> b!1478079 t!136906))

(declare-fun b_and!102281 () Bool)

(declare-fun tp!418645 () Bool)

(assert (=> b!1478130 (= tp!418645 (and (=> t!136904 result!101316) (=> t!136906 result!101318) b_and!102281))))

(declare-fun tp!418644 () Bool)

(declare-fun e!944674 () Bool)

(declare-fun e!944673 () Bool)

(declare-fun b!1478127 () Bool)

(assert (=> b!1478127 (= e!944674 (and (inv!20815 (h!21004 (t!136870 l2!3105))) e!944673 tp!418644))))

(declare-fun e!944672 () Bool)

(declare-fun b!1478129 () Bool)

(declare-fun e!944676 () Bool)

(declare-fun tp!418647 () Bool)

(assert (=> b!1478129 (= e!944672 (and tp!418647 (inv!20811 (tag!3044 (rule!4557 (h!21004 (t!136870 l2!3105))))) (inv!20814 (transformation!2780 (rule!4557 (h!21004 (t!136870 l2!3105))))) e!944676))))

(assert (=> b!1477844 (= tp!418541 e!944674)))

(assert (=> b!1478130 (= e!944676 (and tp!418648 tp!418645))))

(declare-fun b!1478128 () Bool)

(declare-fun tp!418646 () Bool)

(assert (=> b!1478128 (= e!944673 (and (inv!21 (value!88879 (h!21004 (t!136870 l2!3105)))) e!944672 tp!418646))))

(assert (= b!1478129 b!1478130))

(assert (= b!1478128 b!1478129))

(assert (= b!1478127 b!1478128))

(assert (= (and b!1477844 (is-Cons!15603 (t!136870 l2!3105))) b!1478127))

(declare-fun m!1723625 () Bool)

(assert (=> b!1478127 m!1723625))

(declare-fun m!1723627 () Bool)

(assert (=> b!1478129 m!1723627))

(declare-fun m!1723629 () Bool)

(assert (=> b!1478129 m!1723629))

(declare-fun m!1723631 () Bool)

(assert (=> b!1478128 m!1723631))

(declare-fun b!1478134 () Bool)

(declare-fun e!944677 () Bool)

(declare-fun tp!418651 () Bool)

(declare-fun tp!418650 () Bool)

(assert (=> b!1478134 (= e!944677 (and tp!418651 tp!418650))))

(declare-fun b!1478133 () Bool)

(declare-fun tp!418649 () Bool)

(assert (=> b!1478133 (= e!944677 tp!418649)))

(declare-fun b!1478131 () Bool)

(assert (=> b!1478131 (= e!944677 tp_is_empty!6953)))

(assert (=> b!1477838 (= tp!418543 e!944677)))

(declare-fun b!1478132 () Bool)

(declare-fun tp!418653 () Bool)

(declare-fun tp!418652 () Bool)

(assert (=> b!1478132 (= e!944677 (and tp!418653 tp!418652))))

(assert (= (and b!1477838 (is-ElementMatch!4094 (regex!2780 (h!21003 rules!4290)))) b!1478131))

(assert (= (and b!1477838 (is-Concat!6964 (regex!2780 (h!21003 rules!4290)))) b!1478132))

(assert (= (and b!1477838 (is-Star!4094 (regex!2780 (h!21003 rules!4290)))) b!1478133))

(assert (= (and b!1477838 (is-Union!4094 (regex!2780 (h!21003 rules!4290)))) b!1478134))

(declare-fun b!1478138 () Bool)

(declare-fun b_free!37931 () Bool)

(declare-fun b_next!38635 () Bool)

(assert (=> b!1478138 (= b_free!37931 (not b_next!38635))))

(declare-fun tp!418658 () Bool)

(declare-fun b_and!102283 () Bool)

(assert (=> b!1478138 (= tp!418658 b_and!102283)))

(declare-fun b_free!37933 () Bool)

(declare-fun b_next!38637 () Bool)

(assert (=> b!1478138 (= b_free!37933 (not b_next!38637))))

(declare-fun t!136908 () Bool)

(declare-fun tb!84295 () Bool)

(assert (=> (and b!1478138 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l1!3136))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105))))) t!136908) tb!84295))

(declare-fun result!101320 () Bool)

(assert (= result!101320 result!101290))

(assert (=> b!1478006 t!136908))

(declare-fun t!136910 () Bool)

(declare-fun tb!84297 () Bool)

(assert (=> (and b!1478138 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l1!3136))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136))))) t!136910) tb!84297))

(declare-fun result!101322 () Bool)

(assert (= result!101322 result!101298))

(assert (=> b!1478079 t!136910))

(declare-fun tp!418655 () Bool)

(declare-fun b_and!102285 () Bool)

(assert (=> b!1478138 (= tp!418655 (and (=> t!136908 result!101320) (=> t!136910 result!101322) b_and!102285))))

(declare-fun e!944681 () Bool)

(declare-fun b!1478135 () Bool)

(declare-fun e!944680 () Bool)

(declare-fun tp!418654 () Bool)

(assert (=> b!1478135 (= e!944681 (and (inv!20815 (h!21004 (t!136870 l1!3136))) e!944680 tp!418654))))

(declare-fun tp!418657 () Bool)

(declare-fun b!1478137 () Bool)

(declare-fun e!944683 () Bool)

(declare-fun e!944679 () Bool)

(assert (=> b!1478137 (= e!944679 (and tp!418657 (inv!20811 (tag!3044 (rule!4557 (h!21004 (t!136870 l1!3136))))) (inv!20814 (transformation!2780 (rule!4557 (h!21004 (t!136870 l1!3136))))) e!944683))))

(assert (=> b!1477847 (= tp!418535 e!944681)))

(assert (=> b!1478138 (= e!944683 (and tp!418658 tp!418655))))

(declare-fun tp!418656 () Bool)

(declare-fun b!1478136 () Bool)

(assert (=> b!1478136 (= e!944680 (and (inv!21 (value!88879 (h!21004 (t!136870 l1!3136)))) e!944679 tp!418656))))

(assert (= b!1478137 b!1478138))

(assert (= b!1478136 b!1478137))

(assert (= b!1478135 b!1478136))

(assert (= (and b!1477847 (is-Cons!15603 (t!136870 l1!3136))) b!1478135))

(declare-fun m!1723633 () Bool)

(assert (=> b!1478135 m!1723633))

(declare-fun m!1723635 () Bool)

(assert (=> b!1478137 m!1723635))

(declare-fun m!1723637 () Bool)

(assert (=> b!1478137 m!1723637))

(declare-fun m!1723639 () Bool)

(assert (=> b!1478136 m!1723639))

(declare-fun b_lambda!46265 () Bool)

(assert (= b_lambda!46263 (or (and b!1477846 b_free!37909 (= (toChars!3974 (transformation!2780 (h!21003 rules!4290))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))))) (and b!1478130 b_free!37929 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l2!3105))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))))) (and b!1478116 b_free!37925 (= (toChars!3974 (transformation!2780 (h!21003 (t!136869 rules!4290)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))))) (and b!1477837 b_free!37905) (and b!1477845 b_free!37901 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))))) (and b!1478138 b_free!37933 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l1!3136))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))))) b_lambda!46265)))

(declare-fun b_lambda!46267 () Bool)

(assert (= b_lambda!46261 (or (and b!1477845 b_free!37901) (and b!1478138 b_free!37933 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l1!3136))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))))) (and b!1478116 b_free!37925 (= (toChars!3974 (transformation!2780 (h!21003 (t!136869 rules!4290)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))))) (and b!1477846 b_free!37909 (= (toChars!3974 (transformation!2780 (h!21003 rules!4290))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))))) (and b!1478130 b_free!37929 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 (t!136870 l2!3105))))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))))) (and b!1477837 b_free!37905 (= (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l1!3136)))) (toChars!3974 (transformation!2780 (rule!4557 (h!21004 l2!3105)))))) b_lambda!46267)))

(push 1)

(assert (not b!1478080))

(assert (not b!1477998))

(assert (not b!1478020))

(assert (not b!1478135))

(assert (not b!1478081))

(assert b_and!102233)

(assert (not d!433502))

(assert (not b!1478007))

(assert (not b!1477992))

(assert (not b!1478001))

(assert (not b!1478133))

(assert (not b!1477965))

(assert b_and!102271)

(assert (not b!1478006))

(assert (not b!1478019))

(assert (not b!1477997))

(assert (not b_next!38631))

(assert (not b!1478098))

(assert (not d!433464))

(assert (not b!1478015))

(assert (not b!1478079))

(assert (not b!1477991))

(assert (not d!433500))

(assert (not d!433498))

(assert (not b!1478074))

(assert (not b_next!38637))

(assert (not b!1478136))

(assert (not d!433424))

(assert (not b!1477958))

(assert (not d!433476))

(assert (not b!1477972))

(assert b_and!102281)

(assert (not b!1478104))

(assert (not b!1478094))

(assert (not d!433492))

(assert (not b!1478077))

(assert (not b_next!38605))

(assert (not b!1478093))

(assert (not b!1478105))

(assert (not tb!84281))

(assert (not b!1478076))

(assert (not b_next!38609))

(assert (not b!1478014))

(assert (not b!1477971))

(assert (not b!1478127))

(assert (not b!1478095))

(assert (not b!1478073))

(assert (not b!1477948))

(assert (not b!1478026))

(assert (not b!1478099))

(assert (not b!1478018))

(assert b_and!102237)

(assert (not b!1478114))

(assert (not d!433478))

(assert b_and!102275)

(assert (not b_next!38627))

(assert (not b!1478097))

(assert (not b!1477983))

(assert b_and!102269)

(assert (not b!1478132))

(assert b_and!102277)

(assert (not b_next!38635))

(assert (not d!433448))

(assert (not b_next!38611))

(assert (not b!1477986))

(assert (not b!1478134))

(assert tp_is_empty!6953)

(assert (not d!433472))

(assert (not d!433466))

(assert b_and!102241)

(assert (not b!1478078))

(assert (not b!1478075))

(assert (not b!1477987))

(assert (not b_next!38603))

(assert (not b!1478013))

(assert (not d!433494))

(assert (not b!1478128))

(assert (not b_next!38633))

(assert (not b_lambda!46265))

(assert b_and!102283)

(assert (not b!1478137))

(assert b_and!102279)

(assert (not d!433442))

(assert b_and!102285)

(assert (not d!433462))

(assert (not b!1477988))

(assert (not b_lambda!46267))

(assert (not b!1478115))

(assert (not b_next!38607))

(assert (not b!1478129))

(assert (not tb!84275))

(assert (not b_next!38613))

(assert (not b_next!38629))

(assert (not b!1478012))

(assert b_and!102273)

(assert (not b!1477949))

(check-sat)

(pop 1)

(push 1)

(assert b_and!102233)

(assert b_and!102271)

(assert (not b_next!38631))

(assert (not b_next!38637))

(assert b_and!102281)

(assert (not b_next!38605))

(assert (not b_next!38609))

(assert b_and!102237)

(assert b_and!102275)

(assert (not b_next!38627))

(assert b_and!102241)

(assert (not b_next!38603))

(assert (not b_next!38633))

(assert (not b_next!38607))

(assert b_and!102269)

(assert b_and!102277)

(assert (not b_next!38635))

(assert (not b_next!38611))

(assert b_and!102283)

(assert b_and!102279)

(assert b_and!102285)

(assert (not b_next!38613))

(assert (not b_next!38629))

(assert b_and!102273)

(check-sat)

(pop 1)

