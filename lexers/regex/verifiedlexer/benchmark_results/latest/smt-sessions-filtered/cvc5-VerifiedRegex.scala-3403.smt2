; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!192238 () Bool)

(assert start!192238)

(declare-fun b!1917788 () Bool)

(declare-fun b_free!54469 () Bool)

(declare-fun b_next!55173 () Bool)

(assert (=> b!1917788 (= b_free!54469 (not b_next!55173))))

(declare-fun tp!547424 () Bool)

(declare-fun b_and!149675 () Bool)

(assert (=> b!1917788 (= tp!547424 b_and!149675)))

(declare-fun b_free!54471 () Bool)

(declare-fun b_next!55175 () Bool)

(assert (=> b!1917788 (= b_free!54471 (not b_next!55175))))

(declare-fun tp!547421 () Bool)

(declare-fun b_and!149677 () Bool)

(assert (=> b!1917788 (= tp!547421 b_and!149677)))

(declare-fun b!1917790 () Bool)

(declare-fun b_free!54473 () Bool)

(declare-fun b_next!55177 () Bool)

(assert (=> b!1917790 (= b_free!54473 (not b_next!55177))))

(declare-fun tp!547418 () Bool)

(declare-fun b_and!149679 () Bool)

(assert (=> b!1917790 (= tp!547418 b_and!149679)))

(declare-fun b_free!54475 () Bool)

(declare-fun b_next!55179 () Bool)

(assert (=> b!1917790 (= b_free!54475 (not b_next!55179))))

(declare-fun tp!547425 () Bool)

(declare-fun b_and!149681 () Bool)

(assert (=> b!1917790 (= tp!547425 b_and!149681)))

(declare-fun b!1917805 () Bool)

(declare-fun b_free!54477 () Bool)

(declare-fun b_next!55181 () Bool)

(assert (=> b!1917805 (= b_free!54477 (not b_next!55181))))

(declare-fun tp!547413 () Bool)

(declare-fun b_and!149683 () Bool)

(assert (=> b!1917805 (= tp!547413 b_and!149683)))

(declare-fun b_free!54479 () Bool)

(declare-fun b_next!55183 () Bool)

(assert (=> b!1917805 (= b_free!54479 (not b_next!55183))))

(declare-fun tp!547420 () Bool)

(declare-fun b_and!149685 () Bool)

(assert (=> b!1917805 (= tp!547420 b_and!149685)))

(declare-fun tp!547423 () Bool)

(declare-datatypes ((List!21792 0))(
  ( (Nil!21710) (Cons!21710 (h!27111 (_ BitVec 16)) (t!178585 List!21792)) )
))
(declare-datatypes ((TokenValue!4017 0))(
  ( (FloatLiteralValue!8034 (text!28564 List!21792)) (TokenValueExt!4016 (__x!13532 Int)) (Broken!20085 (value!122175 List!21792)) (Object!4098) (End!4017) (Def!4017) (Underscore!4017) (Match!4017) (Else!4017) (Error!4017) (Case!4017) (If!4017) (Extends!4017) (Abstract!4017) (Class!4017) (Val!4017) (DelimiterValue!8034 (del!4077 List!21792)) (KeywordValue!4023 (value!122176 List!21792)) (CommentValue!8034 (value!122177 List!21792)) (WhitespaceValue!8034 (value!122178 List!21792)) (IndentationValue!4017 (value!122179 List!21792)) (String!25204) (Int32!4017) (Broken!20086 (value!122180 List!21792)) (Boolean!4018) (Unit!36102) (OperatorValue!4020 (op!4077 List!21792)) (IdentifierValue!8034 (value!122181 List!21792)) (IdentifierValue!8035 (value!122182 List!21792)) (WhitespaceValue!8035 (value!122183 List!21792)) (True!8034) (False!8034) (Broken!20087 (value!122184 List!21792)) (Broken!20088 (value!122185 List!21792)) (True!8035) (RightBrace!4017) (RightBracket!4017) (Colon!4017) (Null!4017) (Comma!4017) (LeftBracket!4017) (False!8035) (LeftBrace!4017) (ImaginaryLiteralValue!4017 (text!28565 List!21792)) (StringLiteralValue!12051 (value!122186 List!21792)) (EOFValue!4017 (value!122187 List!21792)) (IdentValue!4017 (value!122188 List!21792)) (DelimiterValue!8035 (value!122189 List!21792)) (DedentValue!4017 (value!122190 List!21792)) (NewLineValue!4017 (value!122191 List!21792)) (IntegerValue!12051 (value!122192 (_ BitVec 32)) (text!28566 List!21792)) (IntegerValue!12052 (value!122193 Int) (text!28567 List!21792)) (Times!4017) (Or!4017) (Equal!4017) (Minus!4017) (Broken!20089 (value!122194 List!21792)) (And!4017) (Div!4017) (LessEqual!4017) (Mod!4017) (Concat!9323) (Not!4017) (Plus!4017) (SpaceValue!4017 (value!122195 List!21792)) (IntegerValue!12053 (value!122196 Int) (text!28568 List!21792)) (StringLiteralValue!12052 (text!28569 List!21792)) (FloatLiteralValue!8035 (text!28570 List!21792)) (BytesLiteralValue!4017 (value!122197 List!21792)) (CommentValue!8035 (value!122198 List!21792)) (StringLiteralValue!12053 (value!122199 List!21792)) (ErrorTokenValue!4017 (msg!4078 List!21792)) )
))
(declare-datatypes ((C!10758 0))(
  ( (C!10759 (val!6331 Int)) )
))
(declare-datatypes ((List!21793 0))(
  ( (Nil!21711) (Cons!21711 (h!27112 C!10758) (t!178586 List!21793)) )
))
(declare-datatypes ((String!25205 0))(
  ( (String!25206 (value!122200 String)) )
))
(declare-datatypes ((Regex!5306 0))(
  ( (ElementMatch!5306 (c!312068 C!10758)) (Concat!9324 (regOne!11124 Regex!5306) (regTwo!11124 Regex!5306)) (EmptyExpr!5306) (Star!5306 (reg!5635 Regex!5306)) (EmptyLang!5306) (Union!5306 (regOne!11125 Regex!5306) (regTwo!11125 Regex!5306)) )
))
(declare-datatypes ((IArray!14513 0))(
  ( (IArray!14514 (innerList!7314 List!21793)) )
))
(declare-datatypes ((Conc!7254 0))(
  ( (Node!7254 (left!17329 Conc!7254) (right!17659 Conc!7254) (csize!14738 Int) (cheight!7465 Int)) (Leaf!10658 (xs!10148 IArray!14513) (csize!14739 Int)) (Empty!7254) )
))
(declare-datatypes ((BalanceConc!14324 0))(
  ( (BalanceConc!14325 (c!312069 Conc!7254)) )
))
(declare-datatypes ((TokenValueInjection!7618 0))(
  ( (TokenValueInjection!7619 (toValue!5510 Int) (toChars!5369 Int)) )
))
(declare-datatypes ((Rule!7562 0))(
  ( (Rule!7563 (regex!3881 Regex!5306) (tag!4321 String!25205) (isSeparator!3881 Bool) (transformation!3881 TokenValueInjection!7618)) )
))
(declare-datatypes ((Token!7314 0))(
  ( (Token!7315 (value!122201 TokenValue!4017) (rule!6084 Rule!7562) (size!17027 Int) (originalCharacters!4688 List!21793)) )
))
(declare-fun separatorToken!354 () Token!7314)

(declare-fun e!1225405 () Bool)

(declare-fun e!1225406 () Bool)

(declare-fun b!1917781 () Bool)

(declare-fun inv!21 (TokenValue!4017) Bool)

(assert (=> b!1917781 (= e!1225406 (and (inv!21 (value!122201 separatorToken!354)) e!1225405 tp!547423))))

(declare-fun b!1917782 () Bool)

(declare-fun e!1225393 () Bool)

(declare-fun e!1225396 () Bool)

(assert (=> b!1917782 (= e!1225393 e!1225396)))

(declare-fun res!857368 () Bool)

(assert (=> b!1917782 (=> (not res!857368) (not e!1225396))))

(declare-fun lt!735342 () Rule!7562)

(declare-fun lt!735341 () List!21793)

(declare-fun matchR!2592 (Regex!5306 List!21793) Bool)

(assert (=> b!1917782 (= res!857368 (matchR!2592 (regex!3881 lt!735342) lt!735341))))

(declare-datatypes ((Option!4467 0))(
  ( (None!4466) (Some!4466 (v!26539 Rule!7562)) )
))
(declare-fun lt!735343 () Option!4467)

(declare-fun get!6815 (Option!4467) Rule!7562)

(assert (=> b!1917782 (= lt!735342 (get!6815 lt!735343))))

(declare-fun b!1917783 () Bool)

(declare-fun res!857358 () Bool)

(declare-fun e!1225395 () Bool)

(assert (=> b!1917783 (=> (not res!857358) (not e!1225395))))

(assert (=> b!1917783 (= res!857358 (isSeparator!3881 (rule!6084 separatorToken!354)))))

(declare-fun b!1917784 () Bool)

(declare-fun res!857357 () Bool)

(assert (=> b!1917784 (=> (not res!857357) (not e!1225395))))

(declare-datatypes ((List!21794 0))(
  ( (Nil!21712) (Cons!21712 (h!27113 Token!7314) (t!178587 List!21794)) )
))
(declare-fun tokens!598 () List!21794)

(declare-fun lambda!74844 () Int)

(declare-fun forall!4577 (List!21794 Int) Bool)

(assert (=> b!1917784 (= res!857357 (forall!4577 tokens!598 lambda!74844))))

(declare-fun b!1917785 () Bool)

(declare-fun res!857355 () Bool)

(assert (=> b!1917785 (=> (not res!857355) (not e!1225395))))

(declare-datatypes ((LexerInterface!3494 0))(
  ( (LexerInterfaceExt!3491 (__x!13533 Int)) (Lexer!3492) )
))
(declare-fun thiss!23328 () LexerInterface!3494)

(declare-datatypes ((List!21795 0))(
  ( (Nil!21713) (Cons!21713 (h!27114 Rule!7562) (t!178588 List!21795)) )
))
(declare-fun rules!3198 () List!21795)

(declare-fun rulesProduceIndividualToken!1666 (LexerInterface!3494 List!21795 Token!7314) Bool)

(assert (=> b!1917785 (= res!857355 (rulesProduceIndividualToken!1666 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1917787 () Bool)

(declare-fun res!857360 () Bool)

(declare-fun e!1225413 () Bool)

(assert (=> b!1917787 (=> res!857360 e!1225413)))

(declare-fun isEmpty!13369 (List!21794) Bool)

(assert (=> b!1917787 (= res!857360 (isEmpty!13369 tokens!598))))

(declare-fun e!1225401 () Bool)

(assert (=> b!1917788 (= e!1225401 (and tp!547424 tp!547421))))

(declare-fun b!1917789 () Bool)

(assert (=> b!1917789 (= e!1225413 (forall!4577 tokens!598 lambda!74844))))

(declare-fun e!1225410 () Bool)

(assert (=> b!1917790 (= e!1225410 (and tp!547418 tp!547425))))

(declare-fun b!1917791 () Bool)

(assert (=> b!1917791 (= e!1225396 (= (rule!6084 (h!27113 tokens!598)) lt!735342))))

(declare-fun b!1917792 () Bool)

(declare-fun res!857362 () Bool)

(assert (=> b!1917792 (=> (not res!857362) (not e!1225395))))

(declare-fun rulesInvariant!3101 (LexerInterface!3494 List!21795) Bool)

(assert (=> b!1917792 (= res!857362 (rulesInvariant!3101 thiss!23328 rules!3198))))

(declare-fun b!1917793 () Bool)

(declare-fun e!1225412 () Bool)

(declare-fun e!1225394 () Bool)

(assert (=> b!1917793 (= e!1225412 e!1225394)))

(declare-fun res!857364 () Bool)

(assert (=> b!1917793 (=> (not res!857364) (not e!1225394))))

(declare-fun lt!735352 () Rule!7562)

(declare-fun lt!735351 () List!21793)

(assert (=> b!1917793 (= res!857364 (matchR!2592 (regex!3881 lt!735352) lt!735351))))

(declare-fun lt!735348 () Option!4467)

(assert (=> b!1917793 (= lt!735352 (get!6815 lt!735348))))

(declare-fun b!1917794 () Bool)

(declare-fun e!1225400 () Bool)

(declare-fun e!1225397 () Bool)

(declare-fun tp!547422 () Bool)

(assert (=> b!1917794 (= e!1225400 (and e!1225397 tp!547422))))

(declare-fun b!1917795 () Bool)

(declare-fun res!857366 () Bool)

(assert (=> b!1917795 (=> (not res!857366) (not e!1225395))))

(assert (=> b!1917795 (= res!857366 (is-Cons!21712 tokens!598))))

(declare-fun b!1917796 () Bool)

(assert (=> b!1917796 (= e!1225394 (= (rule!6084 separatorToken!354) lt!735352))))

(declare-fun tp!547415 () Bool)

(declare-fun b!1917797 () Bool)

(declare-fun inv!28800 (String!25205) Bool)

(declare-fun inv!28803 (TokenValueInjection!7618) Bool)

(assert (=> b!1917797 (= e!1225405 (and tp!547415 (inv!28800 (tag!4321 (rule!6084 separatorToken!354))) (inv!28803 (transformation!3881 (rule!6084 separatorToken!354))) e!1225401))))

(declare-fun b!1917786 () Bool)

(declare-fun e!1225409 () Bool)

(declare-fun e!1225402 () Bool)

(declare-fun tp!547417 () Bool)

(assert (=> b!1917786 (= e!1225409 (and (inv!21 (value!122201 (h!27113 tokens!598))) e!1225402 tp!547417))))

(declare-fun res!857370 () Bool)

(assert (=> start!192238 (=> (not res!857370) (not e!1225395))))

(assert (=> start!192238 (= res!857370 (is-Lexer!3492 thiss!23328))))

(assert (=> start!192238 e!1225395))

(assert (=> start!192238 true))

(assert (=> start!192238 e!1225400))

(declare-fun e!1225414 () Bool)

(assert (=> start!192238 e!1225414))

(declare-fun inv!28804 (Token!7314) Bool)

(assert (=> start!192238 (and (inv!28804 separatorToken!354) e!1225406)))

(declare-fun b!1917798 () Bool)

(declare-fun tp!547416 () Bool)

(assert (=> b!1917798 (= e!1225414 (and (inv!28804 (h!27113 tokens!598)) e!1225409 tp!547416))))

(declare-fun b!1917799 () Bool)

(declare-fun tp!547414 () Bool)

(declare-fun e!1225403 () Bool)

(assert (=> b!1917799 (= e!1225402 (and tp!547414 (inv!28800 (tag!4321 (rule!6084 (h!27113 tokens!598)))) (inv!28803 (transformation!3881 (rule!6084 (h!27113 tokens!598)))) e!1225403))))

(declare-fun b!1917800 () Bool)

(declare-fun res!857365 () Bool)

(assert (=> b!1917800 (=> (not res!857365) (not e!1225395))))

(declare-fun isEmpty!13370 (List!21795) Bool)

(assert (=> b!1917800 (= res!857365 (not (isEmpty!13370 rules!3198)))))

(declare-fun b!1917801 () Bool)

(declare-fun res!857359 () Bool)

(assert (=> b!1917801 (=> (not res!857359) (not e!1225395))))

(declare-fun sepAndNonSepRulesDisjointChars!979 (List!21795 List!21795) Bool)

(assert (=> b!1917801 (= res!857359 (sepAndNonSepRulesDisjointChars!979 rules!3198 rules!3198))))

(declare-fun b!1917802 () Bool)

(declare-fun tp!547419 () Bool)

(assert (=> b!1917802 (= e!1225397 (and tp!547419 (inv!28800 (tag!4321 (h!27114 rules!3198))) (inv!28803 (transformation!3881 (h!27114 rules!3198))) e!1225410))))

(declare-fun b!1917803 () Bool)

(declare-fun e!1225404 () Bool)

(declare-datatypes ((tuple2!20426 0))(
  ( (tuple2!20427 (_1!11682 Token!7314) (_2!11682 List!21793)) )
))
(declare-datatypes ((Option!4468 0))(
  ( (None!4467) (Some!4467 (v!26540 tuple2!20426)) )
))
(declare-fun lt!735354 () Option!4468)

(declare-fun get!6816 (Option!4468) tuple2!20426)

(assert (=> b!1917803 (= e!1225404 (= (_1!11682 (get!6816 lt!735354)) (h!27113 tokens!598)))))

(declare-fun b!1917804 () Bool)

(declare-fun res!857369 () Bool)

(assert (=> b!1917804 (=> (not res!857369) (not e!1225395))))

(declare-fun rulesProduceEachTokenIndividuallyList!1225 (LexerInterface!3494 List!21795 List!21794) Bool)

(assert (=> b!1917804 (= res!857369 (rulesProduceEachTokenIndividuallyList!1225 thiss!23328 rules!3198 tokens!598))))

(assert (=> b!1917805 (= e!1225403 (and tp!547413 tp!547420))))

(declare-fun b!1917806 () Bool)

(assert (=> b!1917806 (= e!1225395 (not e!1225413))))

(declare-fun res!857367 () Bool)

(assert (=> b!1917806 (=> res!857367 e!1225413)))

(declare-fun lt!735347 () Option!4468)

(declare-fun lt!735344 () Bool)

(assert (=> b!1917806 (= res!857367 (or (and (not lt!735344) (= (_1!11682 (v!26540 lt!735347)) (h!27113 tokens!598))) (and (not lt!735344) (not (= (_1!11682 (v!26540 lt!735347)) (h!27113 tokens!598)))) (is-None!4467 lt!735347)))))

(assert (=> b!1917806 (= lt!735344 (not (is-Some!4467 lt!735347)))))

(declare-fun maxPrefix!1940 (LexerInterface!3494 List!21795 List!21793) Option!4468)

(declare-fun ++!5836 (List!21793 List!21793) List!21793)

(declare-fun printWithSeparatorTokenWhenNeededList!537 (LexerInterface!3494 List!21795 List!21794 Token!7314) List!21793)

(assert (=> b!1917806 (= lt!735347 (maxPrefix!1940 thiss!23328 rules!3198 (++!5836 lt!735341 (printWithSeparatorTokenWhenNeededList!537 thiss!23328 rules!3198 (t!178587 tokens!598) separatorToken!354))))))

(assert (=> b!1917806 e!1225393))

(declare-fun res!857361 () Bool)

(assert (=> b!1917806 (=> (not res!857361) (not e!1225393))))

(declare-fun isDefined!3765 (Option!4467) Bool)

(assert (=> b!1917806 (= res!857361 (isDefined!3765 lt!735343))))

(declare-fun getRuleFromTag!724 (LexerInterface!3494 List!21795 String!25205) Option!4467)

(assert (=> b!1917806 (= lt!735343 (getRuleFromTag!724 thiss!23328 rules!3198 (tag!4321 (rule!6084 (h!27113 tokens!598)))))))

(declare-datatypes ((Unit!36103 0))(
  ( (Unit!36104) )
))
(declare-fun lt!735349 () Unit!36103)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!724 (LexerInterface!3494 List!21795 List!21793 Token!7314) Unit!36103)

(assert (=> b!1917806 (= lt!735349 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!724 thiss!23328 rules!3198 lt!735341 (h!27113 tokens!598)))))

(assert (=> b!1917806 e!1225404))

(declare-fun res!857363 () Bool)

(assert (=> b!1917806 (=> (not res!857363) (not e!1225404))))

(declare-fun isDefined!3766 (Option!4468) Bool)

(assert (=> b!1917806 (= res!857363 (isDefined!3766 lt!735354))))

(assert (=> b!1917806 (= lt!735354 (maxPrefix!1940 thiss!23328 rules!3198 lt!735341))))

(declare-fun lt!735346 () BalanceConc!14324)

(declare-fun list!8813 (BalanceConc!14324) List!21793)

(assert (=> b!1917806 (= lt!735341 (list!8813 lt!735346))))

(assert (=> b!1917806 e!1225412))

(declare-fun res!857356 () Bool)

(assert (=> b!1917806 (=> (not res!857356) (not e!1225412))))

(assert (=> b!1917806 (= res!857356 (isDefined!3765 lt!735348))))

(assert (=> b!1917806 (= lt!735348 (getRuleFromTag!724 thiss!23328 rules!3198 (tag!4321 (rule!6084 separatorToken!354))))))

(declare-fun lt!735350 () Unit!36103)

(assert (=> b!1917806 (= lt!735350 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!724 thiss!23328 rules!3198 lt!735351 separatorToken!354))))

(declare-fun charsOf!2437 (Token!7314) BalanceConc!14324)

(assert (=> b!1917806 (= lt!735351 (list!8813 (charsOf!2437 separatorToken!354)))))

(declare-fun lt!735345 () Unit!36103)

(declare-fun lemmaEqSameImage!589 (TokenValueInjection!7618 BalanceConc!14324 BalanceConc!14324) Unit!36103)

(declare-fun seqFromList!2753 (List!21793) BalanceConc!14324)

(assert (=> b!1917806 (= lt!735345 (lemmaEqSameImage!589 (transformation!3881 (rule!6084 (h!27113 tokens!598))) lt!735346 (seqFromList!2753 (originalCharacters!4688 (h!27113 tokens!598)))))))

(declare-fun lt!735353 () Unit!36103)

(declare-fun lemmaSemiInverse!860 (TokenValueInjection!7618 BalanceConc!14324) Unit!36103)

(assert (=> b!1917806 (= lt!735353 (lemmaSemiInverse!860 (transformation!3881 (rule!6084 (h!27113 tokens!598))) lt!735346))))

(assert (=> b!1917806 (= lt!735346 (charsOf!2437 (h!27113 tokens!598)))))

(assert (= (and start!192238 res!857370) b!1917800))

(assert (= (and b!1917800 res!857365) b!1917792))

(assert (= (and b!1917792 res!857362) b!1917804))

(assert (= (and b!1917804 res!857369) b!1917785))

(assert (= (and b!1917785 res!857355) b!1917783))

(assert (= (and b!1917783 res!857358) b!1917784))

(assert (= (and b!1917784 res!857357) b!1917801))

(assert (= (and b!1917801 res!857359) b!1917795))

(assert (= (and b!1917795 res!857366) b!1917806))

(assert (= (and b!1917806 res!857356) b!1917793))

(assert (= (and b!1917793 res!857364) b!1917796))

(assert (= (and b!1917806 res!857363) b!1917803))

(assert (= (and b!1917806 res!857361) b!1917782))

(assert (= (and b!1917782 res!857368) b!1917791))

(assert (= (and b!1917806 (not res!857367)) b!1917787))

(assert (= (and b!1917787 (not res!857360)) b!1917789))

(assert (= b!1917802 b!1917790))

(assert (= b!1917794 b!1917802))

(assert (= (and start!192238 (is-Cons!21713 rules!3198)) b!1917794))

(assert (= b!1917799 b!1917805))

(assert (= b!1917786 b!1917799))

(assert (= b!1917798 b!1917786))

(assert (= (and start!192238 (is-Cons!21712 tokens!598)) b!1917798))

(assert (= b!1917797 b!1917788))

(assert (= b!1917781 b!1917797))

(assert (= start!192238 b!1917781))

(declare-fun m!2353139 () Bool)

(assert (=> b!1917800 m!2353139))

(declare-fun m!2353141 () Bool)

(assert (=> b!1917799 m!2353141))

(declare-fun m!2353143 () Bool)

(assert (=> b!1917799 m!2353143))

(declare-fun m!2353145 () Bool)

(assert (=> b!1917798 m!2353145))

(declare-fun m!2353147 () Bool)

(assert (=> b!1917793 m!2353147))

(declare-fun m!2353149 () Bool)

(assert (=> b!1917793 m!2353149))

(declare-fun m!2353151 () Bool)

(assert (=> b!1917781 m!2353151))

(declare-fun m!2353153 () Bool)

(assert (=> b!1917787 m!2353153))

(declare-fun m!2353155 () Bool)

(assert (=> b!1917784 m!2353155))

(declare-fun m!2353157 () Bool)

(assert (=> b!1917782 m!2353157))

(declare-fun m!2353159 () Bool)

(assert (=> b!1917782 m!2353159))

(declare-fun m!2353161 () Bool)

(assert (=> b!1917803 m!2353161))

(assert (=> b!1917789 m!2353155))

(declare-fun m!2353163 () Bool)

(assert (=> b!1917785 m!2353163))

(declare-fun m!2353165 () Bool)

(assert (=> b!1917792 m!2353165))

(declare-fun m!2353167 () Bool)

(assert (=> b!1917801 m!2353167))

(declare-fun m!2353169 () Bool)

(assert (=> b!1917786 m!2353169))

(declare-fun m!2353171 () Bool)

(assert (=> b!1917802 m!2353171))

(declare-fun m!2353173 () Bool)

(assert (=> b!1917802 m!2353173))

(declare-fun m!2353175 () Bool)

(assert (=> b!1917804 m!2353175))

(declare-fun m!2353177 () Bool)

(assert (=> start!192238 m!2353177))

(declare-fun m!2353179 () Bool)

(assert (=> b!1917797 m!2353179))

(declare-fun m!2353181 () Bool)

(assert (=> b!1917797 m!2353181))

(declare-fun m!2353183 () Bool)

(assert (=> b!1917806 m!2353183))

(declare-fun m!2353185 () Bool)

(assert (=> b!1917806 m!2353185))

(assert (=> b!1917806 m!2353185))

(declare-fun m!2353187 () Bool)

(assert (=> b!1917806 m!2353187))

(declare-fun m!2353189 () Bool)

(assert (=> b!1917806 m!2353189))

(declare-fun m!2353191 () Bool)

(assert (=> b!1917806 m!2353191))

(declare-fun m!2353193 () Bool)

(assert (=> b!1917806 m!2353193))

(declare-fun m!2353195 () Bool)

(assert (=> b!1917806 m!2353195))

(assert (=> b!1917806 m!2353183))

(declare-fun m!2353197 () Bool)

(assert (=> b!1917806 m!2353197))

(declare-fun m!2353199 () Bool)

(assert (=> b!1917806 m!2353199))

(declare-fun m!2353201 () Bool)

(assert (=> b!1917806 m!2353201))

(declare-fun m!2353203 () Bool)

(assert (=> b!1917806 m!2353203))

(declare-fun m!2353205 () Bool)

(assert (=> b!1917806 m!2353205))

(assert (=> b!1917806 m!2353197))

(declare-fun m!2353207 () Bool)

(assert (=> b!1917806 m!2353207))

(declare-fun m!2353209 () Bool)

(assert (=> b!1917806 m!2353209))

(declare-fun m!2353211 () Bool)

(assert (=> b!1917806 m!2353211))

(assert (=> b!1917806 m!2353203))

(declare-fun m!2353213 () Bool)

(assert (=> b!1917806 m!2353213))

(declare-fun m!2353215 () Bool)

(assert (=> b!1917806 m!2353215))

(declare-fun m!2353217 () Bool)

(assert (=> b!1917806 m!2353217))

(push 1)

(assert (not b!1917784))

(assert (not b_next!55175))

(assert (not b!1917781))

(assert (not b!1917794))

(assert (not b!1917782))

(assert (not b!1917799))

(assert (not b!1917800))

(assert (not b!1917804))

(assert (not b!1917789))

(assert (not b_next!55179))

(assert b_and!149677)

(assert (not b!1917802))

(assert (not b!1917806))

(assert b_and!149685)

(assert b_and!149683)

(assert (not b!1917801))

(assert (not b!1917793))

(assert (not b!1917787))

(assert (not b_next!55177))

(assert (not b!1917785))

(assert (not b_next!55181))

(assert (not start!192238))

(assert (not b_next!55183))

(assert (not b!1917786))

(assert (not b!1917798))

(assert (not b_next!55173))

(assert (not b!1917792))

(assert b_and!149675)

(assert (not b!1917797))

(assert (not b!1917803))

(assert b_and!149681)

(assert b_and!149679)

(check-sat)

(pop 1)

(push 1)

(assert b_and!149683)

(assert (not b_next!55175))

(assert (not b_next!55177))

(assert (not b_next!55173))

(assert b_and!149675)

(assert (not b_next!55179))

(assert b_and!149677)

(assert b_and!149685)

(assert (not b_next!55181))

(assert (not b_next!55183))

(assert b_and!149681)

(assert b_and!149679)

(check-sat)

(pop 1)

