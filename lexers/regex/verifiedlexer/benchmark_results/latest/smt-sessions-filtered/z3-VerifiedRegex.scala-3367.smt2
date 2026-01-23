; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!190628 () Bool)

(assert start!190628)

(declare-fun b!1901367 () Bool)

(declare-fun b_free!53457 () Bool)

(declare-fun b_next!54161 () Bool)

(assert (=> b!1901367 (= b_free!53457 (not b_next!54161))))

(declare-fun tp!543103 () Bool)

(declare-fun b_and!147235 () Bool)

(assert (=> b!1901367 (= tp!543103 b_and!147235)))

(declare-fun b_free!53459 () Bool)

(declare-fun b_next!54163 () Bool)

(assert (=> b!1901367 (= b_free!53459 (not b_next!54163))))

(declare-fun tp!543104 () Bool)

(declare-fun b_and!147237 () Bool)

(assert (=> b!1901367 (= tp!543104 b_and!147237)))

(declare-fun b!1901380 () Bool)

(declare-fun b_free!53461 () Bool)

(declare-fun b_next!54165 () Bool)

(assert (=> b!1901380 (= b_free!53461 (not b_next!54165))))

(declare-fun tp!543095 () Bool)

(declare-fun b_and!147239 () Bool)

(assert (=> b!1901380 (= tp!543095 b_and!147239)))

(declare-fun b_free!53463 () Bool)

(declare-fun b_next!54167 () Bool)

(assert (=> b!1901380 (= b_free!53463 (not b_next!54167))))

(declare-fun tp!543101 () Bool)

(declare-fun b_and!147241 () Bool)

(assert (=> b!1901380 (= tp!543101 b_and!147241)))

(declare-fun b!1901370 () Bool)

(declare-fun b_free!53465 () Bool)

(declare-fun b_next!54169 () Bool)

(assert (=> b!1901370 (= b_free!53465 (not b_next!54169))))

(declare-fun tp!543099 () Bool)

(declare-fun b_and!147243 () Bool)

(assert (=> b!1901370 (= tp!543099 b_and!147243)))

(declare-fun b_free!53467 () Bool)

(declare-fun b_next!54171 () Bool)

(assert (=> b!1901370 (= b_free!53467 (not b_next!54171))))

(declare-fun tp!543098 () Bool)

(declare-fun b_and!147245 () Bool)

(assert (=> b!1901370 (= tp!543098 b_and!147245)))

(declare-fun b!1901366 () Bool)

(declare-fun tp!543100 () Bool)

(declare-fun e!1214448 () Bool)

(declare-fun e!1214456 () Bool)

(declare-datatypes ((List!21494 0))(
  ( (Nil!21412) (Cons!21412 (h!26813 (_ BitVec 16)) (t!176875 List!21494)) )
))
(declare-datatypes ((TokenValue!3946 0))(
  ( (FloatLiteralValue!7892 (text!28067 List!21494)) (TokenValueExt!3945 (__x!13390 Int)) (Broken!19730 (value!120150 List!21494)) (Object!4027) (End!3946) (Def!3946) (Underscore!3946) (Match!3946) (Else!3946) (Error!3946) (Case!3946) (If!3946) (Extends!3946) (Abstract!3946) (Class!3946) (Val!3946) (DelimiterValue!7892 (del!4006 List!21494)) (KeywordValue!3952 (value!120151 List!21494)) (CommentValue!7892 (value!120152 List!21494)) (WhitespaceValue!7892 (value!120153 List!21494)) (IndentationValue!3946 (value!120154 List!21494)) (String!24847) (Int32!3946) (Broken!19731 (value!120155 List!21494)) (Boolean!3947) (Unit!35737) (OperatorValue!3949 (op!4006 List!21494)) (IdentifierValue!7892 (value!120156 List!21494)) (IdentifierValue!7893 (value!120157 List!21494)) (WhitespaceValue!7893 (value!120158 List!21494)) (True!7892) (False!7892) (Broken!19732 (value!120159 List!21494)) (Broken!19733 (value!120160 List!21494)) (True!7893) (RightBrace!3946) (RightBracket!3946) (Colon!3946) (Null!3946) (Comma!3946) (LeftBracket!3946) (False!7893) (LeftBrace!3946) (ImaginaryLiteralValue!3946 (text!28068 List!21494)) (StringLiteralValue!11838 (value!120161 List!21494)) (EOFValue!3946 (value!120162 List!21494)) (IdentValue!3946 (value!120163 List!21494)) (DelimiterValue!7893 (value!120164 List!21494)) (DedentValue!3946 (value!120165 List!21494)) (NewLineValue!3946 (value!120166 List!21494)) (IntegerValue!11838 (value!120167 (_ BitVec 32)) (text!28069 List!21494)) (IntegerValue!11839 (value!120168 Int) (text!28070 List!21494)) (Times!3946) (Or!3946) (Equal!3946) (Minus!3946) (Broken!19734 (value!120169 List!21494)) (And!3946) (Div!3946) (LessEqual!3946) (Mod!3946) (Concat!9181) (Not!3946) (Plus!3946) (SpaceValue!3946 (value!120170 List!21494)) (IntegerValue!11840 (value!120171 Int) (text!28071 List!21494)) (StringLiteralValue!11839 (text!28072 List!21494)) (FloatLiteralValue!7893 (text!28073 List!21494)) (BytesLiteralValue!3946 (value!120172 List!21494)) (CommentValue!7893 (value!120173 List!21494)) (StringLiteralValue!11840 (value!120174 List!21494)) (ErrorTokenValue!3946 (msg!4007 List!21494)) )
))
(declare-datatypes ((C!10616 0))(
  ( (C!10617 (val!6260 Int)) )
))
(declare-datatypes ((List!21495 0))(
  ( (Nil!21413) (Cons!21413 (h!26814 C!10616) (t!176876 List!21495)) )
))
(declare-datatypes ((Regex!5235 0))(
  ( (ElementMatch!5235 (c!309767 C!10616)) (Concat!9182 (regOne!10982 Regex!5235) (regTwo!10982 Regex!5235)) (EmptyExpr!5235) (Star!5235 (reg!5564 Regex!5235)) (EmptyLang!5235) (Union!5235 (regOne!10983 Regex!5235) (regTwo!10983 Regex!5235)) )
))
(declare-datatypes ((String!24848 0))(
  ( (String!24849 (value!120175 String)) )
))
(declare-datatypes ((IArray!14251 0))(
  ( (IArray!14252 (innerList!7183 List!21495)) )
))
(declare-datatypes ((Conc!7123 0))(
  ( (Node!7123 (left!17134 Conc!7123) (right!17464 Conc!7123) (csize!14476 Int) (cheight!7334 Int)) (Leaf!10491 (xs!10017 IArray!14251) (csize!14477 Int)) (Empty!7123) )
))
(declare-datatypes ((BalanceConc!14062 0))(
  ( (BalanceConc!14063 (c!309768 Conc!7123)) )
))
(declare-datatypes ((TokenValueInjection!7476 0))(
  ( (TokenValueInjection!7477 (toValue!5427 Int) (toChars!5286 Int)) )
))
(declare-datatypes ((Rule!7420 0))(
  ( (Rule!7421 (regex!3810 Regex!5235) (tag!4236 String!24848) (isSeparator!3810 Bool) (transformation!3810 TokenValueInjection!7476)) )
))
(declare-datatypes ((Token!7172 0))(
  ( (Token!7173 (value!120176 TokenValue!3946) (rule!6003 Rule!7420) (size!16904 Int) (originalCharacters!4617 List!21495)) )
))
(declare-datatypes ((List!21496 0))(
  ( (Nil!21414) (Cons!21414 (h!26815 Token!7172) (t!176877 List!21496)) )
))
(declare-fun tokens!598 () List!21496)

(declare-fun inv!28507 (Token!7172) Bool)

(assert (=> b!1901366 (= e!1214456 (and (inv!28507 (h!26815 tokens!598)) e!1214448 tp!543100))))

(declare-fun e!1214462 () Bool)

(assert (=> b!1901367 (= e!1214462 (and tp!543103 tp!543104))))

(declare-fun b!1901368 () Bool)

(declare-fun e!1214447 () Bool)

(declare-fun e!1214457 () Bool)

(assert (=> b!1901368 (= e!1214447 e!1214457)))

(declare-fun res!848978 () Bool)

(assert (=> b!1901368 (=> (not res!848978) (not e!1214457))))

(declare-fun lt!727161 () Rule!7420)

(declare-fun lt!727170 () List!21495)

(declare-fun matchR!2521 (Regex!5235 List!21495) Bool)

(assert (=> b!1901368 (= res!848978 (matchR!2521 (regex!3810 lt!727161) lt!727170))))

(declare-datatypes ((Option!4325 0))(
  ( (None!4324) (Some!4324 (v!26353 Rule!7420)) )
))
(declare-fun lt!727165 () Option!4325)

(declare-fun get!6637 (Option!4325) Rule!7420)

(assert (=> b!1901368 (= lt!727161 (get!6637 lt!727165))))

(declare-fun b!1901369 () Bool)

(assert (=> b!1901369 (= e!1214457 (= (rule!6003 (h!26815 tokens!598)) lt!727161))))

(declare-fun e!1214451 () Bool)

(assert (=> b!1901370 (= e!1214451 (and tp!543099 tp!543098))))

(declare-fun b!1901371 () Bool)

(declare-fun res!848980 () Bool)

(declare-fun e!1214460 () Bool)

(assert (=> b!1901371 (=> (not res!848980) (not e!1214460))))

(declare-datatypes ((List!21497 0))(
  ( (Nil!21415) (Cons!21415 (h!26816 Rule!7420) (t!176878 List!21497)) )
))
(declare-fun rules!3198 () List!21497)

(declare-fun isEmpty!13135 (List!21497) Bool)

(assert (=> b!1901371 (= res!848980 (not (isEmpty!13135 rules!3198)))))

(declare-fun b!1901372 () Bool)

(declare-fun tp!543105 () Bool)

(declare-fun e!1214458 () Bool)

(declare-fun e!1214453 () Bool)

(declare-fun inv!28504 (String!24848) Bool)

(declare-fun inv!28508 (TokenValueInjection!7476) Bool)

(assert (=> b!1901372 (= e!1214453 (and tp!543105 (inv!28504 (tag!4236 (h!26816 rules!3198))) (inv!28508 (transformation!3810 (h!26816 rules!3198))) e!1214458))))

(declare-fun b!1901373 () Bool)

(declare-fun res!848981 () Bool)

(declare-fun e!1214454 () Bool)

(assert (=> b!1901373 (=> res!848981 e!1214454)))

(declare-fun isEmpty!13136 (List!21496) Bool)

(assert (=> b!1901373 (= res!848981 (isEmpty!13136 tokens!598))))

(declare-fun b!1901374 () Bool)

(declare-fun e!1214455 () Bool)

(declare-fun separatorToken!354 () Token!7172)

(declare-fun lt!727169 () Rule!7420)

(assert (=> b!1901374 (= e!1214455 (= (rule!6003 separatorToken!354) lt!727169))))

(declare-fun e!1214445 () Bool)

(declare-fun tp!543102 () Bool)

(declare-fun e!1214450 () Bool)

(declare-fun b!1901375 () Bool)

(declare-fun inv!21 (TokenValue!3946) Bool)

(assert (=> b!1901375 (= e!1214450 (and (inv!21 (value!120176 separatorToken!354)) e!1214445 tp!543102))))

(declare-fun b!1901376 () Bool)

(declare-fun lambda!74315 () Int)

(declare-fun forall!4492 (List!21496 Int) Bool)

(assert (=> b!1901376 (= e!1214454 (forall!4492 tokens!598 lambda!74315))))

(declare-fun res!848984 () Bool)

(assert (=> start!190628 (=> (not res!848984) (not e!1214460))))

(declare-datatypes ((LexerInterface!3423 0))(
  ( (LexerInterfaceExt!3420 (__x!13391 Int)) (Lexer!3421) )
))
(declare-fun thiss!23328 () LexerInterface!3423)

(get-info :version)

(assert (=> start!190628 (= res!848984 ((_ is Lexer!3421) thiss!23328))))

(assert (=> start!190628 e!1214460))

(assert (=> start!190628 true))

(declare-fun e!1214443 () Bool)

(assert (=> start!190628 e!1214443))

(assert (=> start!190628 e!1214456))

(assert (=> start!190628 (and (inv!28507 separatorToken!354) e!1214450)))

(declare-fun b!1901377 () Bool)

(declare-fun res!848977 () Bool)

(assert (=> b!1901377 (=> (not res!848977) (not e!1214460))))

(assert (=> b!1901377 (= res!848977 (isSeparator!3810 (rule!6003 separatorToken!354)))))

(declare-fun b!1901378 () Bool)

(declare-fun res!848982 () Bool)

(assert (=> b!1901378 (=> res!848982 e!1214454)))

(declare-datatypes ((tuple2!20160 0))(
  ( (tuple2!20161 (_1!11549 Token!7172) (_2!11549 List!21495)) )
))
(declare-datatypes ((Option!4326 0))(
  ( (None!4325) (Some!4325 (v!26354 tuple2!20160)) )
))
(declare-fun isDefined!3623 (Option!4326) Bool)

(declare-fun maxPrefix!1869 (LexerInterface!3423 List!21497 List!21495) Option!4326)

(declare-fun printWithSeparatorTokenWhenNeededList!466 (LexerInterface!3423 List!21497 List!21496 Token!7172) List!21495)

(assert (=> b!1901378 (= res!848982 (not (isDefined!3623 (maxPrefix!1869 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!466 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1901379 () Bool)

(declare-fun e!1214444 () Bool)

(declare-fun tp!543096 () Bool)

(assert (=> b!1901379 (= e!1214448 (and (inv!21 (value!120176 (h!26815 tokens!598))) e!1214444 tp!543096))))

(assert (=> b!1901380 (= e!1214458 (and tp!543095 tp!543101))))

(declare-fun b!1901381 () Bool)

(declare-fun res!848973 () Bool)

(assert (=> b!1901381 (=> (not res!848973) (not e!1214460))))

(declare-fun sepAndNonSepRulesDisjointChars!908 (List!21497 List!21497) Bool)

(assert (=> b!1901381 (= res!848973 (sepAndNonSepRulesDisjointChars!908 rules!3198 rules!3198))))

(declare-fun b!1901382 () Bool)

(declare-fun res!848988 () Bool)

(assert (=> b!1901382 (=> (not res!848988) (not e!1214460))))

(assert (=> b!1901382 (= res!848988 ((_ is Cons!21414) tokens!598))))

(declare-fun b!1901383 () Bool)

(declare-fun e!1214449 () Bool)

(assert (=> b!1901383 (= e!1214449 e!1214455)))

(declare-fun res!848983 () Bool)

(assert (=> b!1901383 (=> (not res!848983) (not e!1214455))))

(declare-fun lt!727163 () List!21495)

(assert (=> b!1901383 (= res!848983 (matchR!2521 (regex!3810 lt!727169) lt!727163))))

(declare-fun lt!727167 () Option!4325)

(assert (=> b!1901383 (= lt!727169 (get!6637 lt!727167))))

(declare-fun b!1901384 () Bool)

(declare-fun res!848979 () Bool)

(assert (=> b!1901384 (=> (not res!848979) (not e!1214460))))

(declare-fun rulesInvariant!3030 (LexerInterface!3423 List!21497) Bool)

(assert (=> b!1901384 (= res!848979 (rulesInvariant!3030 thiss!23328 rules!3198))))

(declare-fun b!1901385 () Bool)

(declare-fun tp!543106 () Bool)

(assert (=> b!1901385 (= e!1214445 (and tp!543106 (inv!28504 (tag!4236 (rule!6003 separatorToken!354))) (inv!28508 (transformation!3810 (rule!6003 separatorToken!354))) e!1214462))))

(declare-fun b!1901386 () Bool)

(declare-fun res!848986 () Bool)

(assert (=> b!1901386 (=> (not res!848986) (not e!1214460))))

(declare-fun rulesProduceEachTokenIndividuallyList!1154 (LexerInterface!3423 List!21497 List!21496) Bool)

(assert (=> b!1901386 (= res!848986 (rulesProduceEachTokenIndividuallyList!1154 thiss!23328 rules!3198 tokens!598))))

(declare-fun tp!543094 () Bool)

(declare-fun b!1901387 () Bool)

(assert (=> b!1901387 (= e!1214444 (and tp!543094 (inv!28504 (tag!4236 (rule!6003 (h!26815 tokens!598)))) (inv!28508 (transformation!3810 (rule!6003 (h!26815 tokens!598)))) e!1214451))))

(declare-fun b!1901388 () Bool)

(declare-fun res!848975 () Bool)

(assert (=> b!1901388 (=> (not res!848975) (not e!1214460))))

(assert (=> b!1901388 (= res!848975 (forall!4492 tokens!598 lambda!74315))))

(declare-fun b!1901389 () Bool)

(assert (=> b!1901389 (= e!1214460 (not e!1214454))))

(declare-fun res!848987 () Bool)

(assert (=> b!1901389 (=> res!848987 e!1214454)))

(declare-fun lt!727160 () Option!4326)

(assert (=> b!1901389 (= res!848987 (or (not ((_ is Some!4325) lt!727160)) (not (= (_1!11549 (v!26354 lt!727160)) (h!26815 tokens!598)))))))

(declare-fun ++!5753 (List!21495 List!21495) List!21495)

(assert (=> b!1901389 (= lt!727160 (maxPrefix!1869 thiss!23328 rules!3198 (++!5753 lt!727170 (printWithSeparatorTokenWhenNeededList!466 thiss!23328 rules!3198 (t!176877 tokens!598) separatorToken!354))))))

(assert (=> b!1901389 e!1214447))

(declare-fun res!848974 () Bool)

(assert (=> b!1901389 (=> (not res!848974) (not e!1214447))))

(declare-fun isDefined!3624 (Option!4325) Bool)

(assert (=> b!1901389 (= res!848974 (isDefined!3624 lt!727165))))

(declare-fun getRuleFromTag!653 (LexerInterface!3423 List!21497 String!24848) Option!4325)

(assert (=> b!1901389 (= lt!727165 (getRuleFromTag!653 thiss!23328 rules!3198 (tag!4236 (rule!6003 (h!26815 tokens!598)))))))

(declare-datatypes ((Unit!35738 0))(
  ( (Unit!35739) )
))
(declare-fun lt!727162 () Unit!35738)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!653 (LexerInterface!3423 List!21497 List!21495 Token!7172) Unit!35738)

(assert (=> b!1901389 (= lt!727162 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!653 thiss!23328 rules!3198 lt!727170 (h!26815 tokens!598)))))

(declare-fun e!1214464 () Bool)

(assert (=> b!1901389 e!1214464))

(declare-fun res!848985 () Bool)

(assert (=> b!1901389 (=> (not res!848985) (not e!1214464))))

(declare-fun lt!727168 () Option!4326)

(assert (=> b!1901389 (= res!848985 (isDefined!3623 lt!727168))))

(assert (=> b!1901389 (= lt!727168 (maxPrefix!1869 thiss!23328 rules!3198 lt!727170))))

(declare-fun lt!727166 () BalanceConc!14062)

(declare-fun list!8702 (BalanceConc!14062) List!21495)

(assert (=> b!1901389 (= lt!727170 (list!8702 lt!727166))))

(assert (=> b!1901389 e!1214449))

(declare-fun res!848976 () Bool)

(assert (=> b!1901389 (=> (not res!848976) (not e!1214449))))

(assert (=> b!1901389 (= res!848976 (isDefined!3624 lt!727167))))

(assert (=> b!1901389 (= lt!727167 (getRuleFromTag!653 thiss!23328 rules!3198 (tag!4236 (rule!6003 separatorToken!354))))))

(declare-fun lt!727171 () Unit!35738)

(assert (=> b!1901389 (= lt!727171 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!653 thiss!23328 rules!3198 lt!727163 separatorToken!354))))

(declare-fun charsOf!2366 (Token!7172) BalanceConc!14062)

(assert (=> b!1901389 (= lt!727163 (list!8702 (charsOf!2366 separatorToken!354)))))

(declare-fun lt!727164 () Unit!35738)

(declare-fun lemmaEqSameImage!518 (TokenValueInjection!7476 BalanceConc!14062 BalanceConc!14062) Unit!35738)

(declare-fun seqFromList!2682 (List!21495) BalanceConc!14062)

(assert (=> b!1901389 (= lt!727164 (lemmaEqSameImage!518 (transformation!3810 (rule!6003 (h!26815 tokens!598))) lt!727166 (seqFromList!2682 (originalCharacters!4617 (h!26815 tokens!598)))))))

(declare-fun lt!727172 () Unit!35738)

(declare-fun lemmaSemiInverse!789 (TokenValueInjection!7476 BalanceConc!14062) Unit!35738)

(assert (=> b!1901389 (= lt!727172 (lemmaSemiInverse!789 (transformation!3810 (rule!6003 (h!26815 tokens!598))) lt!727166))))

(assert (=> b!1901389 (= lt!727166 (charsOf!2366 (h!26815 tokens!598)))))

(declare-fun b!1901390 () Bool)

(declare-fun res!848972 () Bool)

(assert (=> b!1901390 (=> (not res!848972) (not e!1214460))))

(declare-fun rulesProduceIndividualToken!1595 (LexerInterface!3423 List!21497 Token!7172) Bool)

(assert (=> b!1901390 (= res!848972 (rulesProduceIndividualToken!1595 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1901391 () Bool)

(declare-fun tp!543097 () Bool)

(assert (=> b!1901391 (= e!1214443 (and e!1214453 tp!543097))))

(declare-fun b!1901392 () Bool)

(declare-fun get!6638 (Option!4326) tuple2!20160)

(assert (=> b!1901392 (= e!1214464 (= (_1!11549 (get!6638 lt!727168)) (h!26815 tokens!598)))))

(assert (= (and start!190628 res!848984) b!1901371))

(assert (= (and b!1901371 res!848980) b!1901384))

(assert (= (and b!1901384 res!848979) b!1901386))

(assert (= (and b!1901386 res!848986) b!1901390))

(assert (= (and b!1901390 res!848972) b!1901377))

(assert (= (and b!1901377 res!848977) b!1901388))

(assert (= (and b!1901388 res!848975) b!1901381))

(assert (= (and b!1901381 res!848973) b!1901382))

(assert (= (and b!1901382 res!848988) b!1901389))

(assert (= (and b!1901389 res!848976) b!1901383))

(assert (= (and b!1901383 res!848983) b!1901374))

(assert (= (and b!1901389 res!848985) b!1901392))

(assert (= (and b!1901389 res!848974) b!1901368))

(assert (= (and b!1901368 res!848978) b!1901369))

(assert (= (and b!1901389 (not res!848987)) b!1901373))

(assert (= (and b!1901373 (not res!848981)) b!1901378))

(assert (= (and b!1901378 (not res!848982)) b!1901376))

(assert (= b!1901372 b!1901380))

(assert (= b!1901391 b!1901372))

(assert (= (and start!190628 ((_ is Cons!21415) rules!3198)) b!1901391))

(assert (= b!1901387 b!1901370))

(assert (= b!1901379 b!1901387))

(assert (= b!1901366 b!1901379))

(assert (= (and start!190628 ((_ is Cons!21414) tokens!598)) b!1901366))

(assert (= b!1901385 b!1901367))

(assert (= b!1901375 b!1901385))

(assert (= start!190628 b!1901375))

(declare-fun m!2332521 () Bool)

(assert (=> b!1901383 m!2332521))

(declare-fun m!2332523 () Bool)

(assert (=> b!1901383 m!2332523))

(declare-fun m!2332525 () Bool)

(assert (=> start!190628 m!2332525))

(declare-fun m!2332527 () Bool)

(assert (=> b!1901368 m!2332527))

(declare-fun m!2332529 () Bool)

(assert (=> b!1901368 m!2332529))

(declare-fun m!2332531 () Bool)

(assert (=> b!1901386 m!2332531))

(declare-fun m!2332533 () Bool)

(assert (=> b!1901376 m!2332533))

(declare-fun m!2332535 () Bool)

(assert (=> b!1901381 m!2332535))

(assert (=> b!1901388 m!2332533))

(declare-fun m!2332537 () Bool)

(assert (=> b!1901373 m!2332537))

(declare-fun m!2332539 () Bool)

(assert (=> b!1901366 m!2332539))

(declare-fun m!2332541 () Bool)

(assert (=> b!1901385 m!2332541))

(declare-fun m!2332543 () Bool)

(assert (=> b!1901385 m!2332543))

(declare-fun m!2332545 () Bool)

(assert (=> b!1901384 m!2332545))

(declare-fun m!2332547 () Bool)

(assert (=> b!1901371 m!2332547))

(declare-fun m!2332549 () Bool)

(assert (=> b!1901390 m!2332549))

(declare-fun m!2332551 () Bool)

(assert (=> b!1901392 m!2332551))

(declare-fun m!2332553 () Bool)

(assert (=> b!1901375 m!2332553))

(declare-fun m!2332555 () Bool)

(assert (=> b!1901389 m!2332555))

(declare-fun m!2332557 () Bool)

(assert (=> b!1901389 m!2332557))

(declare-fun m!2332559 () Bool)

(assert (=> b!1901389 m!2332559))

(declare-fun m!2332561 () Bool)

(assert (=> b!1901389 m!2332561))

(declare-fun m!2332563 () Bool)

(assert (=> b!1901389 m!2332563))

(assert (=> b!1901389 m!2332555))

(declare-fun m!2332565 () Bool)

(assert (=> b!1901389 m!2332565))

(declare-fun m!2332567 () Bool)

(assert (=> b!1901389 m!2332567))

(declare-fun m!2332569 () Bool)

(assert (=> b!1901389 m!2332569))

(declare-fun m!2332571 () Bool)

(assert (=> b!1901389 m!2332571))

(declare-fun m!2332573 () Bool)

(assert (=> b!1901389 m!2332573))

(declare-fun m!2332575 () Bool)

(assert (=> b!1901389 m!2332575))

(declare-fun m!2332577 () Bool)

(assert (=> b!1901389 m!2332577))

(assert (=> b!1901389 m!2332575))

(declare-fun m!2332579 () Bool)

(assert (=> b!1901389 m!2332579))

(declare-fun m!2332581 () Bool)

(assert (=> b!1901389 m!2332581))

(declare-fun m!2332583 () Bool)

(assert (=> b!1901389 m!2332583))

(assert (=> b!1901389 m!2332573))

(assert (=> b!1901389 m!2332561))

(declare-fun m!2332585 () Bool)

(assert (=> b!1901389 m!2332585))

(declare-fun m!2332587 () Bool)

(assert (=> b!1901389 m!2332587))

(declare-fun m!2332589 () Bool)

(assert (=> b!1901389 m!2332589))

(declare-fun m!2332591 () Bool)

(assert (=> b!1901372 m!2332591))

(declare-fun m!2332593 () Bool)

(assert (=> b!1901372 m!2332593))

(declare-fun m!2332595 () Bool)

(assert (=> b!1901378 m!2332595))

(assert (=> b!1901378 m!2332595))

(declare-fun m!2332597 () Bool)

(assert (=> b!1901378 m!2332597))

(assert (=> b!1901378 m!2332597))

(declare-fun m!2332599 () Bool)

(assert (=> b!1901378 m!2332599))

(declare-fun m!2332601 () Bool)

(assert (=> b!1901379 m!2332601))

(declare-fun m!2332603 () Bool)

(assert (=> b!1901387 m!2332603))

(declare-fun m!2332605 () Bool)

(assert (=> b!1901387 m!2332605))

(check-sat (not b!1901388) (not b!1901368) (not b!1901381) (not b!1901391) (not b!1901373) (not b!1901371) (not b_next!54165) (not b_next!54163) (not b_next!54167) (not b!1901392) b_and!147235 b_and!147241 (not b!1901385) (not b!1901372) (not b!1901378) (not b_next!54169) (not b!1901390) b_and!147243 (not b!1901376) b_and!147245 (not b!1901389) (not b!1901387) (not b!1901386) b_and!147239 (not b!1901383) (not start!190628) (not b_next!54161) (not b!1901375) (not b!1901366) (not b_next!54171) (not b!1901384) b_and!147237 (not b!1901379))
(check-sat b_and!147243 b_and!147245 (not b_next!54165) (not b_next!54163) (not b_next!54167) b_and!147239 b_and!147235 b_and!147241 (not b_next!54161) (not b_next!54169) (not b_next!54171) b_and!147237)
