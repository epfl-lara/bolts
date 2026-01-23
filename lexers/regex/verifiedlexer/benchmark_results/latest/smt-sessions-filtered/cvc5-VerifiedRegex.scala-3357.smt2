; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!190374 () Bool)

(assert start!190374)

(declare-fun b!1898505 () Bool)

(declare-fun b_free!53173 () Bool)

(declare-fun b_next!53877 () Bool)

(assert (=> b!1898505 (= b_free!53173 (not b_next!53877))))

(declare-fun tp!542039 () Bool)

(declare-fun b_and!146759 () Bool)

(assert (=> b!1898505 (= tp!542039 b_and!146759)))

(declare-fun b_free!53175 () Bool)

(declare-fun b_next!53879 () Bool)

(assert (=> b!1898505 (= b_free!53175 (not b_next!53879))))

(declare-fun tp!542038 () Bool)

(declare-fun b_and!146761 () Bool)

(assert (=> b!1898505 (= tp!542038 b_and!146761)))

(declare-fun b!1898495 () Bool)

(declare-fun b_free!53177 () Bool)

(declare-fun b_next!53881 () Bool)

(assert (=> b!1898495 (= b_free!53177 (not b_next!53881))))

(declare-fun tp!542037 () Bool)

(declare-fun b_and!146763 () Bool)

(assert (=> b!1898495 (= tp!542037 b_and!146763)))

(declare-fun b_free!53179 () Bool)

(declare-fun b_next!53883 () Bool)

(assert (=> b!1898495 (= b_free!53179 (not b_next!53883))))

(declare-fun tp!542036 () Bool)

(declare-fun b_and!146765 () Bool)

(assert (=> b!1898495 (= tp!542036 b_and!146765)))

(declare-fun b!1898504 () Bool)

(declare-fun b_free!53181 () Bool)

(declare-fun b_next!53885 () Bool)

(assert (=> b!1898504 (= b_free!53181 (not b_next!53885))))

(declare-fun tp!542041 () Bool)

(declare-fun b_and!146767 () Bool)

(assert (=> b!1898504 (= tp!542041 b_and!146767)))

(declare-fun b_free!53183 () Bool)

(declare-fun b_next!53887 () Bool)

(assert (=> b!1898504 (= b_free!53183 (not b_next!53887))))

(declare-fun tp!542032 () Bool)

(declare-fun b_and!146769 () Bool)

(assert (=> b!1898504 (= tp!542032 b_and!146769)))

(declare-fun b!1898491 () Bool)

(declare-fun e!1212289 () Bool)

(declare-datatypes ((C!10574 0))(
  ( (C!10575 (val!6239 Int)) )
))
(declare-datatypes ((List!21406 0))(
  ( (Nil!21324) (Cons!21324 (h!26725 C!10574) (t!176567 List!21406)) )
))
(declare-datatypes ((List!21407 0))(
  ( (Nil!21325) (Cons!21325 (h!26726 (_ BitVec 16)) (t!176568 List!21407)) )
))
(declare-datatypes ((TokenValue!3925 0))(
  ( (FloatLiteralValue!7850 (text!27920 List!21407)) (TokenValueExt!3924 (__x!13348 Int)) (Broken!19625 (value!119553 List!21407)) (Object!4006) (End!3925) (Def!3925) (Underscore!3925) (Match!3925) (Else!3925) (Error!3925) (Case!3925) (If!3925) (Extends!3925) (Abstract!3925) (Class!3925) (Val!3925) (DelimiterValue!7850 (del!3985 List!21407)) (KeywordValue!3931 (value!119554 List!21407)) (CommentValue!7850 (value!119555 List!21407)) (WhitespaceValue!7850 (value!119556 List!21407)) (IndentationValue!3925 (value!119557 List!21407)) (String!24744) (Int32!3925) (Broken!19626 (value!119558 List!21407)) (Boolean!3926) (Unit!35662) (OperatorValue!3928 (op!3985 List!21407)) (IdentifierValue!7850 (value!119559 List!21407)) (IdentifierValue!7851 (value!119560 List!21407)) (WhitespaceValue!7851 (value!119561 List!21407)) (True!7850) (False!7850) (Broken!19627 (value!119562 List!21407)) (Broken!19628 (value!119563 List!21407)) (True!7851) (RightBrace!3925) (RightBracket!3925) (Colon!3925) (Null!3925) (Comma!3925) (LeftBracket!3925) (False!7851) (LeftBrace!3925) (ImaginaryLiteralValue!3925 (text!27921 List!21407)) (StringLiteralValue!11775 (value!119564 List!21407)) (EOFValue!3925 (value!119565 List!21407)) (IdentValue!3925 (value!119566 List!21407)) (DelimiterValue!7851 (value!119567 List!21407)) (DedentValue!3925 (value!119568 List!21407)) (NewLineValue!3925 (value!119569 List!21407)) (IntegerValue!11775 (value!119570 (_ BitVec 32)) (text!27922 List!21407)) (IntegerValue!11776 (value!119571 Int) (text!27923 List!21407)) (Times!3925) (Or!3925) (Equal!3925) (Minus!3925) (Broken!19629 (value!119572 List!21407)) (And!3925) (Div!3925) (LessEqual!3925) (Mod!3925) (Concat!9139) (Not!3925) (Plus!3925) (SpaceValue!3925 (value!119573 List!21407)) (IntegerValue!11777 (value!119574 Int) (text!27924 List!21407)) (StringLiteralValue!11776 (text!27925 List!21407)) (FloatLiteralValue!7851 (text!27926 List!21407)) (BytesLiteralValue!3925 (value!119575 List!21407)) (CommentValue!7851 (value!119576 List!21407)) (StringLiteralValue!11777 (value!119577 List!21407)) (ErrorTokenValue!3925 (msg!3986 List!21407)) )
))
(declare-datatypes ((Regex!5214 0))(
  ( (ElementMatch!5214 (c!309502 C!10574)) (Concat!9140 (regOne!10940 Regex!5214) (regTwo!10940 Regex!5214)) (EmptyExpr!5214) (Star!5214 (reg!5543 Regex!5214)) (EmptyLang!5214) (Union!5214 (regOne!10941 Regex!5214) (regTwo!10941 Regex!5214)) )
))
(declare-datatypes ((String!24745 0))(
  ( (String!24746 (value!119578 String)) )
))
(declare-datatypes ((IArray!14201 0))(
  ( (IArray!14202 (innerList!7158 List!21406)) )
))
(declare-datatypes ((Conc!7098 0))(
  ( (Node!7098 (left!17091 Conc!7098) (right!17421 Conc!7098) (csize!14426 Int) (cheight!7309 Int)) (Leaf!10456 (xs!9992 IArray!14201) (csize!14427 Int)) (Empty!7098) )
))
(declare-datatypes ((BalanceConc!14012 0))(
  ( (BalanceConc!14013 (c!309503 Conc!7098)) )
))
(declare-datatypes ((TokenValueInjection!7434 0))(
  ( (TokenValueInjection!7435 (toValue!5406 Int) (toChars!5265 Int)) )
))
(declare-datatypes ((Rule!7378 0))(
  ( (Rule!7379 (regex!3789 Regex!5214) (tag!4211 String!24745) (isSeparator!3789 Bool) (transformation!3789 TokenValueInjection!7434)) )
))
(declare-datatypes ((Token!7130 0))(
  ( (Token!7131 (value!119579 TokenValue!3925) (rule!5982 Rule!7378) (size!16875 Int) (originalCharacters!4596 List!21406)) )
))
(declare-datatypes ((tuple2!20110 0))(
  ( (tuple2!20111 (_1!11524 Token!7130) (_2!11524 List!21406)) )
))
(declare-datatypes ((Option!4283 0))(
  ( (None!4282) (Some!4282 (v!26311 tuple2!20110)) )
))
(declare-fun lt!725977 () Option!4283)

(declare-datatypes ((List!21408 0))(
  ( (Nil!21326) (Cons!21326 (h!26727 Token!7130) (t!176569 List!21408)) )
))
(declare-fun tokens!598 () List!21408)

(declare-fun get!6585 (Option!4283) tuple2!20110)

(assert (=> b!1898491 (= e!1212289 (= (_1!11524 (get!6585 lt!725977)) (h!26727 tokens!598)))))

(declare-fun b!1898492 () Bool)

(declare-fun res!847463 () Bool)

(declare-fun e!1212287 () Bool)

(assert (=> b!1898492 (=> (not res!847463) (not e!1212287))))

(declare-datatypes ((LexerInterface!3402 0))(
  ( (LexerInterfaceExt!3399 (__x!13349 Int)) (Lexer!3400) )
))
(declare-fun thiss!23328 () LexerInterface!3402)

(declare-datatypes ((List!21409 0))(
  ( (Nil!21327) (Cons!21327 (h!26728 Rule!7378) (t!176570 List!21409)) )
))
(declare-fun rules!3198 () List!21409)

(declare-fun rulesProduceEachTokenIndividuallyList!1133 (LexerInterface!3402 List!21409 List!21408) Bool)

(assert (=> b!1898492 (= res!847463 (rulesProduceEachTokenIndividuallyList!1133 thiss!23328 rules!3198 tokens!598))))

(declare-fun res!847468 () Bool)

(assert (=> start!190374 (=> (not res!847468) (not e!1212287))))

(assert (=> start!190374 (= res!847468 (is-Lexer!3400 thiss!23328))))

(assert (=> start!190374 e!1212287))

(assert (=> start!190374 true))

(declare-fun e!1212296 () Bool)

(assert (=> start!190374 e!1212296))

(declare-fun e!1212288 () Bool)

(assert (=> start!190374 e!1212288))

(declare-fun separatorToken!354 () Token!7130)

(declare-fun e!1212278 () Bool)

(declare-fun inv!28427 (Token!7130) Bool)

(assert (=> start!190374 (and (inv!28427 separatorToken!354) e!1212278)))

(declare-fun b!1898493 () Bool)

(declare-fun e!1212280 () Bool)

(declare-fun tp!542040 () Bool)

(declare-fun inv!21 (TokenValue!3925) Bool)

(assert (=> b!1898493 (= e!1212278 (and (inv!21 (value!119579 separatorToken!354)) e!1212280 tp!542040))))

(declare-fun b!1898494 () Bool)

(assert (=> b!1898494 (= e!1212287 (not true))))

(declare-fun lt!725978 () List!21406)

(declare-fun lt!725982 () List!21406)

(declare-fun ++!5732 (List!21406 List!21406) List!21406)

(declare-fun printWithSeparatorTokenWhenNeededList!445 (LexerInterface!3402 List!21409 List!21408 Token!7130) List!21406)

(assert (=> b!1898494 (= lt!725978 (++!5732 lt!725982 (printWithSeparatorTokenWhenNeededList!445 thiss!23328 rules!3198 (t!176569 tokens!598) separatorToken!354)))))

(declare-fun e!1212290 () Bool)

(assert (=> b!1898494 e!1212290))

(declare-fun res!847469 () Bool)

(assert (=> b!1898494 (=> (not res!847469) (not e!1212290))))

(declare-datatypes ((Option!4284 0))(
  ( (None!4283) (Some!4283 (v!26312 Rule!7378)) )
))
(declare-fun lt!725983 () Option!4284)

(declare-fun isDefined!3581 (Option!4284) Bool)

(assert (=> b!1898494 (= res!847469 (isDefined!3581 lt!725983))))

(declare-fun getRuleFromTag!632 (LexerInterface!3402 List!21409 String!24745) Option!4284)

(assert (=> b!1898494 (= lt!725983 (getRuleFromTag!632 thiss!23328 rules!3198 (tag!4211 (rule!5982 (h!26727 tokens!598)))))))

(declare-datatypes ((Unit!35663 0))(
  ( (Unit!35664) )
))
(declare-fun lt!725972 () Unit!35663)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!632 (LexerInterface!3402 List!21409 List!21406 Token!7130) Unit!35663)

(assert (=> b!1898494 (= lt!725972 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!632 thiss!23328 rules!3198 lt!725982 (h!26727 tokens!598)))))

(assert (=> b!1898494 e!1212289))

(declare-fun res!847465 () Bool)

(assert (=> b!1898494 (=> (not res!847465) (not e!1212289))))

(declare-fun isDefined!3582 (Option!4283) Bool)

(assert (=> b!1898494 (= res!847465 (isDefined!3582 lt!725977))))

(declare-fun maxPrefix!1848 (LexerInterface!3402 List!21409 List!21406) Option!4283)

(assert (=> b!1898494 (= lt!725977 (maxPrefix!1848 thiss!23328 rules!3198 lt!725982))))

(declare-fun lt!725971 () BalanceConc!14012)

(declare-fun list!8673 (BalanceConc!14012) List!21406)

(assert (=> b!1898494 (= lt!725982 (list!8673 lt!725971))))

(declare-fun e!1212286 () Bool)

(assert (=> b!1898494 e!1212286))

(declare-fun res!847475 () Bool)

(assert (=> b!1898494 (=> (not res!847475) (not e!1212286))))

(declare-fun lt!725980 () Option!4284)

(assert (=> b!1898494 (= res!847475 (isDefined!3581 lt!725980))))

(assert (=> b!1898494 (= lt!725980 (getRuleFromTag!632 thiss!23328 rules!3198 (tag!4211 (rule!5982 separatorToken!354))))))

(declare-fun lt!725981 () Unit!35663)

(declare-fun lt!725975 () List!21406)

(assert (=> b!1898494 (= lt!725981 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!632 thiss!23328 rules!3198 lt!725975 separatorToken!354))))

(declare-fun charsOf!2345 (Token!7130) BalanceConc!14012)

(assert (=> b!1898494 (= lt!725975 (list!8673 (charsOf!2345 separatorToken!354)))))

(declare-fun lt!725974 () Unit!35663)

(declare-fun lemmaEqSameImage!497 (TokenValueInjection!7434 BalanceConc!14012 BalanceConc!14012) Unit!35663)

(declare-fun seqFromList!2661 (List!21406) BalanceConc!14012)

(assert (=> b!1898494 (= lt!725974 (lemmaEqSameImage!497 (transformation!3789 (rule!5982 (h!26727 tokens!598))) lt!725971 (seqFromList!2661 (originalCharacters!4596 (h!26727 tokens!598)))))))

(declare-fun lt!725973 () Unit!35663)

(declare-fun lemmaSemiInverse!768 (TokenValueInjection!7434 BalanceConc!14012) Unit!35663)

(assert (=> b!1898494 (= lt!725973 (lemmaSemiInverse!768 (transformation!3789 (rule!5982 (h!26727 tokens!598))) lt!725971))))

(assert (=> b!1898494 (= lt!725971 (charsOf!2345 (h!26727 tokens!598)))))

(declare-fun e!1212282 () Bool)

(assert (=> b!1898495 (= e!1212282 (and tp!542037 tp!542036))))

(declare-fun b!1898496 () Bool)

(declare-fun e!1212281 () Bool)

(assert (=> b!1898496 (= e!1212290 e!1212281)))

(declare-fun res!847472 () Bool)

(assert (=> b!1898496 (=> (not res!847472) (not e!1212281))))

(declare-fun lt!725976 () Rule!7378)

(declare-fun matchR!2500 (Regex!5214 List!21406) Bool)

(assert (=> b!1898496 (= res!847472 (matchR!2500 (regex!3789 lt!725976) lt!725982))))

(declare-fun get!6586 (Option!4284) Rule!7378)

(assert (=> b!1898496 (= lt!725976 (get!6586 lt!725983))))

(declare-fun b!1898497 () Bool)

(declare-fun e!1212284 () Bool)

(declare-fun tp!542031 () Bool)

(assert (=> b!1898497 (= e!1212296 (and e!1212284 tp!542031))))

(declare-fun b!1898498 () Bool)

(declare-fun e!1212295 () Bool)

(declare-fun tp!542043 () Bool)

(declare-fun inv!28424 (String!24745) Bool)

(declare-fun inv!28428 (TokenValueInjection!7434) Bool)

(assert (=> b!1898498 (= e!1212280 (and tp!542043 (inv!28424 (tag!4211 (rule!5982 separatorToken!354))) (inv!28428 (transformation!3789 (rule!5982 separatorToken!354))) e!1212295))))

(declare-fun b!1898499 () Bool)

(declare-fun res!847473 () Bool)

(assert (=> b!1898499 (=> (not res!847473) (not e!1212287))))

(assert (=> b!1898499 (= res!847473 (isSeparator!3789 (rule!5982 separatorToken!354)))))

(declare-fun b!1898500 () Bool)

(declare-fun e!1212297 () Bool)

(declare-fun lt!725979 () Rule!7378)

(assert (=> b!1898500 (= e!1212297 (= (rule!5982 separatorToken!354) lt!725979))))

(declare-fun b!1898501 () Bool)

(declare-fun res!847474 () Bool)

(assert (=> b!1898501 (=> (not res!847474) (not e!1212287))))

(declare-fun rulesInvariant!3009 (LexerInterface!3402 List!21409) Bool)

(assert (=> b!1898501 (= res!847474 (rulesInvariant!3009 thiss!23328 rules!3198))))

(declare-fun b!1898502 () Bool)

(declare-fun e!1212283 () Bool)

(declare-fun e!1212279 () Bool)

(declare-fun tp!542033 () Bool)

(assert (=> b!1898502 (= e!1212283 (and tp!542033 (inv!28424 (tag!4211 (rule!5982 (h!26727 tokens!598)))) (inv!28428 (transformation!3789 (rule!5982 (h!26727 tokens!598)))) e!1212279))))

(declare-fun b!1898503 () Bool)

(declare-fun res!847471 () Bool)

(assert (=> b!1898503 (=> (not res!847471) (not e!1212287))))

(assert (=> b!1898503 (= res!847471 (is-Cons!21326 tokens!598))))

(assert (=> b!1898504 (= e!1212295 (and tp!542041 tp!542032))))

(assert (=> b!1898505 (= e!1212279 (and tp!542039 tp!542038))))

(declare-fun b!1898506 () Bool)

(declare-fun tp!542034 () Bool)

(declare-fun e!1212291 () Bool)

(assert (=> b!1898506 (= e!1212291 (and (inv!21 (value!119579 (h!26727 tokens!598))) e!1212283 tp!542034))))

(declare-fun b!1898507 () Bool)

(assert (=> b!1898507 (= e!1212286 e!1212297)))

(declare-fun res!847467 () Bool)

(assert (=> b!1898507 (=> (not res!847467) (not e!1212297))))

(assert (=> b!1898507 (= res!847467 (matchR!2500 (regex!3789 lt!725979) lt!725975))))

(assert (=> b!1898507 (= lt!725979 (get!6586 lt!725980))))

(declare-fun b!1898508 () Bool)

(declare-fun res!847470 () Bool)

(assert (=> b!1898508 (=> (not res!847470) (not e!1212287))))

(declare-fun sepAndNonSepRulesDisjointChars!887 (List!21409 List!21409) Bool)

(assert (=> b!1898508 (= res!847470 (sepAndNonSepRulesDisjointChars!887 rules!3198 rules!3198))))

(declare-fun b!1898509 () Bool)

(declare-fun res!847464 () Bool)

(assert (=> b!1898509 (=> (not res!847464) (not e!1212287))))

(declare-fun isEmpty!13087 (List!21409) Bool)

(assert (=> b!1898509 (= res!847464 (not (isEmpty!13087 rules!3198)))))

(declare-fun tp!542042 () Bool)

(declare-fun b!1898510 () Bool)

(assert (=> b!1898510 (= e!1212284 (and tp!542042 (inv!28424 (tag!4211 (h!26728 rules!3198))) (inv!28428 (transformation!3789 (h!26728 rules!3198))) e!1212282))))

(declare-fun b!1898511 () Bool)

(declare-fun res!847466 () Bool)

(assert (=> b!1898511 (=> (not res!847466) (not e!1212287))))

(declare-fun lambda!74182 () Int)

(declare-fun forall!4467 (List!21408 Int) Bool)

(assert (=> b!1898511 (= res!847466 (forall!4467 tokens!598 lambda!74182))))

(declare-fun tp!542035 () Bool)

(declare-fun b!1898512 () Bool)

(assert (=> b!1898512 (= e!1212288 (and (inv!28427 (h!26727 tokens!598)) e!1212291 tp!542035))))

(declare-fun b!1898513 () Bool)

(declare-fun res!847476 () Bool)

(assert (=> b!1898513 (=> (not res!847476) (not e!1212287))))

(declare-fun rulesProduceIndividualToken!1574 (LexerInterface!3402 List!21409 Token!7130) Bool)

(assert (=> b!1898513 (= res!847476 (rulesProduceIndividualToken!1574 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1898514 () Bool)

(assert (=> b!1898514 (= e!1212281 (= (rule!5982 (h!26727 tokens!598)) lt!725976))))

(assert (= (and start!190374 res!847468) b!1898509))

(assert (= (and b!1898509 res!847464) b!1898501))

(assert (= (and b!1898501 res!847474) b!1898492))

(assert (= (and b!1898492 res!847463) b!1898513))

(assert (= (and b!1898513 res!847476) b!1898499))

(assert (= (and b!1898499 res!847473) b!1898511))

(assert (= (and b!1898511 res!847466) b!1898508))

(assert (= (and b!1898508 res!847470) b!1898503))

(assert (= (and b!1898503 res!847471) b!1898494))

(assert (= (and b!1898494 res!847475) b!1898507))

(assert (= (and b!1898507 res!847467) b!1898500))

(assert (= (and b!1898494 res!847465) b!1898491))

(assert (= (and b!1898494 res!847469) b!1898496))

(assert (= (and b!1898496 res!847472) b!1898514))

(assert (= b!1898510 b!1898495))

(assert (= b!1898497 b!1898510))

(assert (= (and start!190374 (is-Cons!21327 rules!3198)) b!1898497))

(assert (= b!1898502 b!1898505))

(assert (= b!1898506 b!1898502))

(assert (= b!1898512 b!1898506))

(assert (= (and start!190374 (is-Cons!21326 tokens!598)) b!1898512))

(assert (= b!1898498 b!1898504))

(assert (= b!1898493 b!1898498))

(assert (= start!190374 b!1898493))

(declare-fun m!2329595 () Bool)

(assert (=> b!1898501 m!2329595))

(declare-fun m!2329597 () Bool)

(assert (=> b!1898506 m!2329597))

(declare-fun m!2329599 () Bool)

(assert (=> b!1898496 m!2329599))

(declare-fun m!2329601 () Bool)

(assert (=> b!1898496 m!2329601))

(declare-fun m!2329603 () Bool)

(assert (=> b!1898502 m!2329603))

(declare-fun m!2329605 () Bool)

(assert (=> b!1898502 m!2329605))

(declare-fun m!2329607 () Bool)

(assert (=> b!1898508 m!2329607))

(declare-fun m!2329609 () Bool)

(assert (=> start!190374 m!2329609))

(declare-fun m!2329611 () Bool)

(assert (=> b!1898491 m!2329611))

(declare-fun m!2329613 () Bool)

(assert (=> b!1898492 m!2329613))

(declare-fun m!2329615 () Bool)

(assert (=> b!1898494 m!2329615))

(declare-fun m!2329617 () Bool)

(assert (=> b!1898494 m!2329617))

(declare-fun m!2329619 () Bool)

(assert (=> b!1898494 m!2329619))

(declare-fun m!2329621 () Bool)

(assert (=> b!1898494 m!2329621))

(assert (=> b!1898494 m!2329617))

(declare-fun m!2329623 () Bool)

(assert (=> b!1898494 m!2329623))

(declare-fun m!2329625 () Bool)

(assert (=> b!1898494 m!2329625))

(declare-fun m!2329627 () Bool)

(assert (=> b!1898494 m!2329627))

(declare-fun m!2329629 () Bool)

(assert (=> b!1898494 m!2329629))

(declare-fun m!2329631 () Bool)

(assert (=> b!1898494 m!2329631))

(declare-fun m!2329633 () Bool)

(assert (=> b!1898494 m!2329633))

(declare-fun m!2329635 () Bool)

(assert (=> b!1898494 m!2329635))

(declare-fun m!2329637 () Bool)

(assert (=> b!1898494 m!2329637))

(declare-fun m!2329639 () Bool)

(assert (=> b!1898494 m!2329639))

(assert (=> b!1898494 m!2329631))

(declare-fun m!2329641 () Bool)

(assert (=> b!1898494 m!2329641))

(declare-fun m!2329643 () Bool)

(assert (=> b!1898494 m!2329643))

(assert (=> b!1898494 m!2329635))

(declare-fun m!2329645 () Bool)

(assert (=> b!1898494 m!2329645))

(declare-fun m!2329647 () Bool)

(assert (=> b!1898494 m!2329647))

(declare-fun m!2329649 () Bool)

(assert (=> b!1898511 m!2329649))

(declare-fun m!2329651 () Bool)

(assert (=> b!1898513 m!2329651))

(declare-fun m!2329653 () Bool)

(assert (=> b!1898509 m!2329653))

(declare-fun m!2329655 () Bool)

(assert (=> b!1898512 m!2329655))

(declare-fun m!2329657 () Bool)

(assert (=> b!1898510 m!2329657))

(declare-fun m!2329659 () Bool)

(assert (=> b!1898510 m!2329659))

(declare-fun m!2329661 () Bool)

(assert (=> b!1898498 m!2329661))

(declare-fun m!2329663 () Bool)

(assert (=> b!1898498 m!2329663))

(declare-fun m!2329665 () Bool)

(assert (=> b!1898493 m!2329665))

(declare-fun m!2329667 () Bool)

(assert (=> b!1898507 m!2329667))

(declare-fun m!2329669 () Bool)

(assert (=> b!1898507 m!2329669))

(push 1)

(assert (not b!1898492))

(assert b_and!146763)

(assert (not b_next!53885))

(assert (not start!190374))

(assert b_and!146765)

(assert (not b_next!53883))

(assert (not b!1898506))

(assert (not b!1898493))

(assert (not b!1898511))

(assert (not b_next!53879))

(assert (not b!1898507))

(assert (not b!1898513))

(assert (not b!1898508))

(assert (not b!1898498))

(assert (not b_next!53877))

(assert (not b!1898512))

(assert (not b!1898491))

(assert (not b_next!53887))

(assert (not b!1898497))

(assert b_and!146769)

(assert (not b!1898502))

(assert b_and!146767)

(assert (not b_next!53881))

(assert (not b!1898509))

(assert (not b!1898496))

(assert (not b!1898510))

(assert (not b!1898494))

(assert b_and!146761)

(assert (not b!1898501))

(assert b_and!146759)

(check-sat)

(pop 1)

(push 1)

(assert b_and!146763)

(assert (not b_next!53879))

(assert (not b_next!53885))

(assert b_and!146765)

(assert (not b_next!53877))

(assert (not b_next!53883))

(assert (not b_next!53887))

(assert b_and!146769)

(assert b_and!146761)

(assert b_and!146759)

(assert b_and!146767)

(assert (not b_next!53881))

(check-sat)

(pop 1)

