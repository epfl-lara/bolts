; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!199972 () Bool)

(assert start!199972)

(declare-fun b!2031523 () Bool)

(declare-fun b_free!56649 () Bool)

(declare-fun b_next!57353 () Bool)

(assert (=> b!2031523 (= b_free!56649 (not b_next!57353))))

(declare-fun tp!603653 () Bool)

(declare-fun b_and!161953 () Bool)

(assert (=> b!2031523 (= tp!603653 b_and!161953)))

(declare-fun b_free!56651 () Bool)

(declare-fun b_next!57355 () Bool)

(assert (=> b!2031523 (= b_free!56651 (not b_next!57355))))

(declare-fun tp!603650 () Bool)

(declare-fun b_and!161955 () Bool)

(assert (=> b!2031523 (= tp!603650 b_and!161955)))

(declare-fun b!2031531 () Bool)

(declare-fun b_free!56653 () Bool)

(declare-fun b_next!57357 () Bool)

(assert (=> b!2031531 (= b_free!56653 (not b_next!57357))))

(declare-fun tp!603645 () Bool)

(declare-fun b_and!161957 () Bool)

(assert (=> b!2031531 (= tp!603645 b_and!161957)))

(declare-fun b_free!56655 () Bool)

(declare-fun b_next!57359 () Bool)

(assert (=> b!2031531 (= b_free!56655 (not b_next!57359))))

(declare-fun tp!603649 () Bool)

(declare-fun b_and!161959 () Bool)

(assert (=> b!2031531 (= tp!603649 b_and!161959)))

(declare-fun b!2031513 () Bool)

(declare-fun b_free!56657 () Bool)

(declare-fun b_next!57361 () Bool)

(assert (=> b!2031513 (= b_free!56657 (not b_next!57361))))

(declare-fun tp!603648 () Bool)

(declare-fun b_and!161961 () Bool)

(assert (=> b!2031513 (= tp!603648 b_and!161961)))

(declare-fun b_free!56659 () Bool)

(declare-fun b_next!57363 () Bool)

(assert (=> b!2031513 (= b_free!56659 (not b_next!57363))))

(declare-fun tp!603654 () Bool)

(declare-fun b_and!161963 () Bool)

(assert (=> b!2031513 (= tp!603654 b_and!161963)))

(declare-fun tp!603643 () Bool)

(declare-fun e!1283118 () Bool)

(declare-fun e!1283109 () Bool)

(declare-fun b!2031507 () Bool)

(declare-datatypes ((List!22302 0))(
  ( (Nil!22220) (Cons!22220 (h!27621 (_ BitVec 16)) (t!190661 List!22302)) )
))
(declare-datatypes ((TokenValue!4130 0))(
  ( (FloatLiteralValue!8260 (text!29355 List!22302)) (TokenValueExt!4129 (__x!13758 Int)) (Broken!20650 (value!125394 List!22302)) (Object!4211) (End!4130) (Def!4130) (Underscore!4130) (Match!4130) (Else!4130) (Error!4130) (Case!4130) (If!4130) (Extends!4130) (Abstract!4130) (Class!4130) (Val!4130) (DelimiterValue!8260 (del!4190 List!22302)) (KeywordValue!4136 (value!125395 List!22302)) (CommentValue!8260 (value!125396 List!22302)) (WhitespaceValue!8260 (value!125397 List!22302)) (IndentationValue!4130 (value!125398 List!22302)) (String!25767) (Int32!4130) (Broken!20651 (value!125399 List!22302)) (Boolean!4131) (Unit!36901) (OperatorValue!4133 (op!4190 List!22302)) (IdentifierValue!8260 (value!125400 List!22302)) (IdentifierValue!8261 (value!125401 List!22302)) (WhitespaceValue!8261 (value!125402 List!22302)) (True!8260) (False!8260) (Broken!20652 (value!125403 List!22302)) (Broken!20653 (value!125404 List!22302)) (True!8261) (RightBrace!4130) (RightBracket!4130) (Colon!4130) (Null!4130) (Comma!4130) (LeftBracket!4130) (False!8261) (LeftBrace!4130) (ImaginaryLiteralValue!4130 (text!29356 List!22302)) (StringLiteralValue!12390 (value!125405 List!22302)) (EOFValue!4130 (value!125406 List!22302)) (IdentValue!4130 (value!125407 List!22302)) (DelimiterValue!8261 (value!125408 List!22302)) (DedentValue!4130 (value!125409 List!22302)) (NewLineValue!4130 (value!125410 List!22302)) (IntegerValue!12390 (value!125411 (_ BitVec 32)) (text!29357 List!22302)) (IntegerValue!12391 (value!125412 Int) (text!29358 List!22302)) (Times!4130) (Or!4130) (Equal!4130) (Minus!4130) (Broken!20654 (value!125413 List!22302)) (And!4130) (Div!4130) (LessEqual!4130) (Mod!4130) (Concat!9549) (Not!4130) (Plus!4130) (SpaceValue!4130 (value!125414 List!22302)) (IntegerValue!12392 (value!125415 Int) (text!29359 List!22302)) (StringLiteralValue!12391 (text!29360 List!22302)) (FloatLiteralValue!8261 (text!29361 List!22302)) (BytesLiteralValue!4130 (value!125416 List!22302)) (CommentValue!8261 (value!125417 List!22302)) (StringLiteralValue!12392 (value!125418 List!22302)) (ErrorTokenValue!4130 (msg!4191 List!22302)) )
))
(declare-datatypes ((C!10984 0))(
  ( (C!10985 (val!6444 Int)) )
))
(declare-datatypes ((List!22303 0))(
  ( (Nil!22221) (Cons!22221 (h!27622 C!10984) (t!190662 List!22303)) )
))
(declare-datatypes ((IArray!14873 0))(
  ( (IArray!14874 (innerList!7494 List!22303)) )
))
(declare-datatypes ((Conc!7434 0))(
  ( (Node!7434 (left!17681 Conc!7434) (right!18011 Conc!7434) (csize!15098 Int) (cheight!7645 Int)) (Leaf!10894 (xs!10336 IArray!14873) (csize!15099 Int)) (Empty!7434) )
))
(declare-datatypes ((BalanceConc!14684 0))(
  ( (BalanceConc!14685 (c!328893 Conc!7434)) )
))
(declare-datatypes ((TokenValueInjection!7844 0))(
  ( (TokenValueInjection!7845 (toValue!5671 Int) (toChars!5530 Int)) )
))
(declare-datatypes ((String!25768 0))(
  ( (String!25769 (value!125419 String)) )
))
(declare-datatypes ((Regex!5419 0))(
  ( (ElementMatch!5419 (c!328894 C!10984)) (Concat!9550 (regOne!11350 Regex!5419) (regTwo!11350 Regex!5419)) (EmptyExpr!5419) (Star!5419 (reg!5748 Regex!5419)) (EmptyLang!5419) (Union!5419 (regOne!11351 Regex!5419) (regTwo!11351 Regex!5419)) )
))
(declare-datatypes ((Rule!7788 0))(
  ( (Rule!7789 (regex!3994 Regex!5419) (tag!4482 String!25768) (isSeparator!3994 Bool) (transformation!3994 TokenValueInjection!7844)) )
))
(declare-datatypes ((List!22304 0))(
  ( (Nil!22222) (Cons!22222 (h!27623 Rule!7788) (t!190663 List!22304)) )
))
(declare-fun rules!3198 () List!22304)

(declare-fun inv!29404 (String!25768) Bool)

(declare-fun inv!29407 (TokenValueInjection!7844) Bool)

(assert (=> b!2031507 (= e!1283109 (and tp!603643 (inv!29404 (tag!4482 (h!27623 rules!3198))) (inv!29407 (transformation!3994 (h!27623 rules!3198))) e!1283118))))

(declare-fun b!2031508 () Bool)

(declare-fun res!890848 () Bool)

(declare-fun e!1283104 () Bool)

(assert (=> b!2031508 (=> (not res!890848) (not e!1283104))))

(declare-datatypes ((LexerInterface!3607 0))(
  ( (LexerInterfaceExt!3604 (__x!13759 Int)) (Lexer!3605) )
))
(declare-fun thiss!23328 () LexerInterface!3607)

(declare-fun rulesInvariant!3214 (LexerInterface!3607 List!22304) Bool)

(assert (=> b!2031508 (= res!890848 (rulesInvariant!3214 thiss!23328 rules!3198))))

(declare-fun b!2031509 () Bool)

(declare-fun res!890846 () Bool)

(assert (=> b!2031509 (=> (not res!890846) (not e!1283104))))

(declare-datatypes ((Token!7540 0))(
  ( (Token!7541 (value!125420 TokenValue!4130) (rule!6229 Rule!7788) (size!17362 Int) (originalCharacters!4801 List!22303)) )
))
(declare-datatypes ((List!22305 0))(
  ( (Nil!22223) (Cons!22223 (h!27624 Token!7540) (t!190664 List!22305)) )
))
(declare-fun tokens!598 () List!22305)

(declare-fun rulesProduceEachTokenIndividuallyList!1338 (LexerInterface!3607 List!22304 List!22305) Bool)

(assert (=> b!2031509 (= res!890846 (rulesProduceEachTokenIndividuallyList!1338 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2031510 () Bool)

(declare-fun res!890855 () Bool)

(assert (=> b!2031510 (=> (not res!890855) (not e!1283104))))

(declare-fun isEmpty!13873 (List!22304) Bool)

(assert (=> b!2031510 (= res!890855 (not (isEmpty!13873 rules!3198)))))

(declare-fun b!2031511 () Bool)

(declare-fun res!890851 () Bool)

(assert (=> b!2031511 (=> (not res!890851) (not e!1283104))))

(declare-fun separatorToken!354 () Token!7540)

(declare-fun rulesProduceIndividualToken!1779 (LexerInterface!3607 List!22304 Token!7540) Bool)

(assert (=> b!2031511 (= res!890851 (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun tp!603647 () Bool)

(declare-fun b!2031512 () Bool)

(declare-fun e!1283107 () Bool)

(declare-fun e!1283119 () Bool)

(declare-fun inv!21 (TokenValue!4130) Bool)

(assert (=> b!2031512 (= e!1283119 (and (inv!21 (value!125420 (h!27624 tokens!598))) e!1283107 tp!603647))))

(declare-fun e!1283113 () Bool)

(assert (=> b!2031513 (= e!1283113 (and tp!603648 tp!603654))))

(declare-fun b!2031514 () Bool)

(declare-fun res!890840 () Bool)

(assert (=> b!2031514 (=> (not res!890840) (not e!1283104))))

(assert (=> b!2031514 (= res!890840 (isSeparator!3994 (rule!6229 separatorToken!354)))))

(declare-fun b!2031515 () Bool)

(declare-fun res!890844 () Bool)

(assert (=> b!2031515 (=> (not res!890844) (not e!1283104))))

(declare-fun sepAndNonSepRulesDisjointChars!1092 (List!22304 List!22304) Bool)

(assert (=> b!2031515 (= res!890844 (sepAndNonSepRulesDisjointChars!1092 rules!3198 rules!3198))))

(declare-fun b!2031516 () Bool)

(declare-fun e!1283111 () Bool)

(declare-fun e!1283122 () Bool)

(assert (=> b!2031516 (= e!1283111 e!1283122)))

(declare-fun res!890842 () Bool)

(assert (=> b!2031516 (=> (not res!890842) (not e!1283122))))

(declare-fun lt!763191 () Rule!7788)

(declare-fun lt!763202 () List!22303)

(declare-fun matchR!2685 (Regex!5419 List!22303) Bool)

(assert (=> b!2031516 (= res!890842 (matchR!2685 (regex!3994 lt!763191) lt!763202))))

(declare-datatypes ((Option!4673 0))(
  ( (None!4672) (Some!4672 (v!27005 Rule!7788)) )
))
(declare-fun lt!763195 () Option!4673)

(declare-fun get!7059 (Option!4673) Rule!7788)

(assert (=> b!2031516 (= lt!763191 (get!7059 lt!763195))))

(declare-fun e!1283125 () Bool)

(declare-fun tp!603646 () Bool)

(declare-fun b!2031517 () Bool)

(declare-fun inv!29408 (Token!7540) Bool)

(assert (=> b!2031517 (= e!1283125 (and (inv!29408 (h!27624 tokens!598)) e!1283119 tp!603646))))

(declare-fun b!2031518 () Bool)

(declare-fun res!890852 () Bool)

(declare-fun e!1283110 () Bool)

(assert (=> b!2031518 (=> res!890852 e!1283110)))

(declare-datatypes ((IArray!14875 0))(
  ( (IArray!14876 (innerList!7495 List!22305)) )
))
(declare-datatypes ((Conc!7435 0))(
  ( (Node!7435 (left!17682 Conc!7435) (right!18012 Conc!7435) (csize!15100 Int) (cheight!7646 Int)) (Leaf!10895 (xs!10337 IArray!14875) (csize!15101 Int)) (Empty!7435) )
))
(declare-datatypes ((BalanceConc!14686 0))(
  ( (BalanceConc!14687 (c!328895 Conc!7435)) )
))
(declare-fun isEmpty!13874 (BalanceConc!14686) Bool)

(declare-datatypes ((tuple2!20912 0))(
  ( (tuple2!20913 (_1!11925 BalanceConc!14686) (_2!11925 BalanceConc!14684)) )
))
(declare-fun lex!1623 (LexerInterface!3607 List!22304 BalanceConc!14684) tuple2!20912)

(declare-fun seqFromList!2848 (List!22303) BalanceConc!14684)

(assert (=> b!2031518 (= res!890852 (isEmpty!13874 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202)))))))

(declare-fun b!2031519 () Bool)

(declare-fun res!890847 () Bool)

(assert (=> b!2031519 (=> (not res!890847) (not e!1283104))))

(get-info :version)

(assert (=> b!2031519 (= res!890847 ((_ is Cons!22223) tokens!598))))

(declare-fun b!2031520 () Bool)

(declare-fun res!890854 () Bool)

(assert (=> b!2031520 (=> res!890854 e!1283110)))

(assert (=> b!2031520 (= res!890854 (not (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 (h!27624 tokens!598))))))

(declare-fun b!2031521 () Bool)

(declare-fun e!1283124 () Bool)

(declare-datatypes ((tuple2!20914 0))(
  ( (tuple2!20915 (_1!11926 Token!7540) (_2!11926 List!22303)) )
))
(declare-datatypes ((Option!4674 0))(
  ( (None!4673) (Some!4673 (v!27006 tuple2!20914)) )
))
(declare-fun lt!763189 () Option!4674)

(declare-fun get!7060 (Option!4674) tuple2!20914)

(assert (=> b!2031521 (= e!1283124 (= (_1!11926 (get!7060 lt!763189)) (h!27624 tokens!598)))))

(declare-fun b!2031522 () Bool)

(declare-fun tp!603651 () Bool)

(assert (=> b!2031522 (= e!1283107 (and tp!603651 (inv!29404 (tag!4482 (rule!6229 (h!27624 tokens!598)))) (inv!29407 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) e!1283113))))

(declare-fun e!1283115 () Bool)

(assert (=> b!2031523 (= e!1283115 (and tp!603653 tp!603650))))

(declare-fun b!2031524 () Bool)

(declare-fun res!890841 () Bool)

(assert (=> b!2031524 (=> (not res!890841) (not e!1283104))))

(declare-fun lambda!76551 () Int)

(declare-fun forall!4728 (List!22305 Int) Bool)

(assert (=> b!2031524 (= res!890841 (forall!4728 tokens!598 lambda!76551))))

(declare-fun e!1283106 () Bool)

(declare-fun b!2031525 () Bool)

(declare-fun tp!603652 () Bool)

(assert (=> b!2031525 (= e!1283106 (and tp!603652 (inv!29404 (tag!4482 (rule!6229 separatorToken!354))) (inv!29407 (transformation!3994 (rule!6229 separatorToken!354))) e!1283115))))

(declare-fun b!2031526 () Bool)

(declare-fun e!1283116 () Bool)

(declare-fun lt!763203 () Rule!7788)

(assert (=> b!2031526 (= e!1283116 (= (rule!6229 separatorToken!354) lt!763203))))

(declare-fun b!2031527 () Bool)

(declare-fun e!1283123 () Bool)

(assert (=> b!2031527 (= e!1283104 (not e!1283123))))

(declare-fun res!890853 () Bool)

(assert (=> b!2031527 (=> res!890853 e!1283123)))

(declare-fun lt!763194 () Option!4674)

(declare-fun lt!763186 () Bool)

(assert (=> b!2031527 (= res!890853 (or (and (not lt!763186) (= (_1!11926 (v!27006 lt!763194)) (h!27624 tokens!598))) (and (not lt!763186) (not (= (_1!11926 (v!27006 lt!763194)) (h!27624 tokens!598)))) (not ((_ is None!4673) lt!763194))))))

(assert (=> b!2031527 (= lt!763186 (not ((_ is Some!4673) lt!763194)))))

(declare-fun lt!763193 () List!22303)

(declare-fun maxPrefix!2043 (LexerInterface!3607 List!22304 List!22303) Option!4674)

(declare-fun ++!6013 (List!22303 List!22303) List!22303)

(assert (=> b!2031527 (= lt!763194 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193)))))

(declare-fun printWithSeparatorTokenWhenNeededList!636 (LexerInterface!3607 List!22304 List!22305 Token!7540) List!22303)

(assert (=> b!2031527 (= lt!763193 (printWithSeparatorTokenWhenNeededList!636 thiss!23328 rules!3198 (t!190664 tokens!598) separatorToken!354))))

(assert (=> b!2031527 e!1283111))

(declare-fun res!890856 () Bool)

(assert (=> b!2031527 (=> (not res!890856) (not e!1283111))))

(declare-fun isDefined!3959 (Option!4673) Bool)

(assert (=> b!2031527 (= res!890856 (isDefined!3959 lt!763195))))

(declare-fun getRuleFromTag!809 (LexerInterface!3607 List!22304 String!25768) Option!4673)

(assert (=> b!2031527 (= lt!763195 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))))

(declare-datatypes ((Unit!36902 0))(
  ( (Unit!36903) )
))
(declare-fun lt!763192 () Unit!36902)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 (LexerInterface!3607 List!22304 List!22303 Token!7540) Unit!36902)

(assert (=> b!2031527 (= lt!763192 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 thiss!23328 rules!3198 lt!763202 (h!27624 tokens!598)))))

(assert (=> b!2031527 e!1283124))

(declare-fun res!890849 () Bool)

(assert (=> b!2031527 (=> (not res!890849) (not e!1283124))))

(declare-fun isDefined!3960 (Option!4674) Bool)

(assert (=> b!2031527 (= res!890849 (isDefined!3960 lt!763189))))

(assert (=> b!2031527 (= lt!763189 (maxPrefix!2043 thiss!23328 rules!3198 lt!763202))))

(declare-fun lt!763199 () BalanceConc!14684)

(declare-fun list!9077 (BalanceConc!14684) List!22303)

(assert (=> b!2031527 (= lt!763202 (list!9077 lt!763199))))

(declare-fun e!1283120 () Bool)

(assert (=> b!2031527 e!1283120))

(declare-fun res!890845 () Bool)

(assert (=> b!2031527 (=> (not res!890845) (not e!1283120))))

(declare-fun lt!763200 () Option!4673)

(assert (=> b!2031527 (= res!890845 (isDefined!3959 lt!763200))))

(assert (=> b!2031527 (= lt!763200 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))))

(declare-fun lt!763198 () Unit!36902)

(declare-fun lt!763185 () List!22303)

(assert (=> b!2031527 (= lt!763198 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 thiss!23328 rules!3198 lt!763185 separatorToken!354))))

(declare-fun charsOf!2534 (Token!7540) BalanceConc!14684)

(assert (=> b!2031527 (= lt!763185 (list!9077 (charsOf!2534 separatorToken!354)))))

(declare-fun lt!763204 () Unit!36902)

(declare-fun lemmaEqSameImage!680 (TokenValueInjection!7844 BalanceConc!14684 BalanceConc!14684) Unit!36902)

(assert (=> b!2031527 (= lt!763204 (lemmaEqSameImage!680 (transformation!3994 (rule!6229 (h!27624 tokens!598))) lt!763199 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))))))

(declare-fun lt!763196 () Unit!36902)

(declare-fun lemmaSemiInverse!951 (TokenValueInjection!7844 BalanceConc!14684) Unit!36902)

(assert (=> b!2031527 (= lt!763196 (lemmaSemiInverse!951 (transformation!3994 (rule!6229 (h!27624 tokens!598))) lt!763199))))

(assert (=> b!2031527 (= lt!763199 (charsOf!2534 (h!27624 tokens!598)))))

(declare-fun b!2031528 () Bool)

(assert (=> b!2031528 (= e!1283123 e!1283110)))

(declare-fun res!890850 () Bool)

(assert (=> b!2031528 (=> res!890850 e!1283110)))

(declare-fun lt!763187 () List!22303)

(declare-fun lt!763201 () List!22303)

(assert (=> b!2031528 (= res!890850 (or (not (= lt!763187 lt!763201)) (not (= lt!763201 lt!763202)) (not (= lt!763187 lt!763202))))))

(declare-fun printList!1126 (LexerInterface!3607 List!22305) List!22303)

(assert (=> b!2031528 (= lt!763201 (printList!1126 thiss!23328 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))

(declare-fun lt!763197 () BalanceConc!14684)

(assert (=> b!2031528 (= lt!763187 (list!9077 lt!763197))))

(declare-fun lt!763188 () BalanceConc!14686)

(declare-fun printTailRec!1075 (LexerInterface!3607 BalanceConc!14686 Int BalanceConc!14684) BalanceConc!14684)

(assert (=> b!2031528 (= lt!763197 (printTailRec!1075 thiss!23328 lt!763188 0 (BalanceConc!14685 Empty!7434)))))

(declare-fun print!1569 (LexerInterface!3607 BalanceConc!14686) BalanceConc!14684)

(assert (=> b!2031528 (= lt!763197 (print!1569 thiss!23328 lt!763188))))

(declare-fun singletonSeq!1970 (Token!7540) BalanceConc!14686)

(assert (=> b!2031528 (= lt!763188 (singletonSeq!1970 (h!27624 tokens!598)))))

(declare-fun b!2031529 () Bool)

(assert (=> b!2031529 (= e!1283122 (= (rule!6229 (h!27624 tokens!598)) lt!763191))))

(declare-fun b!2031530 () Bool)

(assert (=> b!2031530 (= e!1283110 false)))

(declare-fun lt!763190 () Unit!36902)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!781 (LexerInterface!3607 List!22304 List!22303 List!22303) Unit!36902)

(assert (=> b!2031530 (= lt!763190 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!781 thiss!23328 rules!3198 lt!763202 lt!763193))))

(declare-fun res!890857 () Bool)

(assert (=> start!199972 (=> (not res!890857) (not e!1283104))))

(assert (=> start!199972 (= res!890857 ((_ is Lexer!3605) thiss!23328))))

(assert (=> start!199972 e!1283104))

(assert (=> start!199972 true))

(declare-fun e!1283114 () Bool)

(assert (=> start!199972 e!1283114))

(assert (=> start!199972 e!1283125))

(declare-fun e!1283121 () Bool)

(assert (=> start!199972 (and (inv!29408 separatorToken!354) e!1283121)))

(assert (=> b!2031531 (= e!1283118 (and tp!603645 tp!603649))))

(declare-fun b!2031532 () Bool)

(declare-fun tp!603642 () Bool)

(assert (=> b!2031532 (= e!1283114 (and e!1283109 tp!603642))))

(declare-fun tp!603644 () Bool)

(declare-fun b!2031533 () Bool)

(assert (=> b!2031533 (= e!1283121 (and (inv!21 (value!125420 separatorToken!354)) e!1283106 tp!603644))))

(declare-fun b!2031534 () Bool)

(assert (=> b!2031534 (= e!1283120 e!1283116)))

(declare-fun res!890843 () Bool)

(assert (=> b!2031534 (=> (not res!890843) (not e!1283116))))

(assert (=> b!2031534 (= res!890843 (matchR!2685 (regex!3994 lt!763203) lt!763185))))

(assert (=> b!2031534 (= lt!763203 (get!7059 lt!763200))))

(assert (= (and start!199972 res!890857) b!2031510))

(assert (= (and b!2031510 res!890855) b!2031508))

(assert (= (and b!2031508 res!890848) b!2031509))

(assert (= (and b!2031509 res!890846) b!2031511))

(assert (= (and b!2031511 res!890851) b!2031514))

(assert (= (and b!2031514 res!890840) b!2031524))

(assert (= (and b!2031524 res!890841) b!2031515))

(assert (= (and b!2031515 res!890844) b!2031519))

(assert (= (and b!2031519 res!890847) b!2031527))

(assert (= (and b!2031527 res!890845) b!2031534))

(assert (= (and b!2031534 res!890843) b!2031526))

(assert (= (and b!2031527 res!890849) b!2031521))

(assert (= (and b!2031527 res!890856) b!2031516))

(assert (= (and b!2031516 res!890842) b!2031529))

(assert (= (and b!2031527 (not res!890853)) b!2031528))

(assert (= (and b!2031528 (not res!890850)) b!2031520))

(assert (= (and b!2031520 (not res!890854)) b!2031518))

(assert (= (and b!2031518 (not res!890852)) b!2031530))

(assert (= b!2031507 b!2031531))

(assert (= b!2031532 b!2031507))

(assert (= (and start!199972 ((_ is Cons!22222) rules!3198)) b!2031532))

(assert (= b!2031522 b!2031513))

(assert (= b!2031512 b!2031522))

(assert (= b!2031517 b!2031512))

(assert (= (and start!199972 ((_ is Cons!22223) tokens!598)) b!2031517))

(assert (= b!2031525 b!2031523))

(assert (= b!2031533 b!2031525))

(assert (= start!199972 b!2031533))

(declare-fun m!2472687 () Bool)

(assert (=> b!2031520 m!2472687))

(declare-fun m!2472689 () Bool)

(assert (=> b!2031517 m!2472689))

(declare-fun m!2472691 () Bool)

(assert (=> b!2031525 m!2472691))

(declare-fun m!2472693 () Bool)

(assert (=> b!2031525 m!2472693))

(declare-fun m!2472695 () Bool)

(assert (=> b!2031533 m!2472695))

(declare-fun m!2472697 () Bool)

(assert (=> b!2031507 m!2472697))

(declare-fun m!2472699 () Bool)

(assert (=> b!2031507 m!2472699))

(declare-fun m!2472701 () Bool)

(assert (=> start!199972 m!2472701))

(declare-fun m!2472703 () Bool)

(assert (=> b!2031522 m!2472703))

(declare-fun m!2472705 () Bool)

(assert (=> b!2031522 m!2472705))

(declare-fun m!2472707 () Bool)

(assert (=> b!2031530 m!2472707))

(declare-fun m!2472709 () Bool)

(assert (=> b!2031534 m!2472709))

(declare-fun m!2472711 () Bool)

(assert (=> b!2031534 m!2472711))

(declare-fun m!2472713 () Bool)

(assert (=> b!2031527 m!2472713))

(declare-fun m!2472715 () Bool)

(assert (=> b!2031527 m!2472715))

(declare-fun m!2472717 () Bool)

(assert (=> b!2031527 m!2472717))

(declare-fun m!2472719 () Bool)

(assert (=> b!2031527 m!2472719))

(declare-fun m!2472721 () Bool)

(assert (=> b!2031527 m!2472721))

(declare-fun m!2472723 () Bool)

(assert (=> b!2031527 m!2472723))

(declare-fun m!2472725 () Bool)

(assert (=> b!2031527 m!2472725))

(declare-fun m!2472727 () Bool)

(assert (=> b!2031527 m!2472727))

(declare-fun m!2472729 () Bool)

(assert (=> b!2031527 m!2472729))

(declare-fun m!2472731 () Bool)

(assert (=> b!2031527 m!2472731))

(declare-fun m!2472733 () Bool)

(assert (=> b!2031527 m!2472733))

(assert (=> b!2031527 m!2472721))

(declare-fun m!2472735 () Bool)

(assert (=> b!2031527 m!2472735))

(assert (=> b!2031527 m!2472713))

(declare-fun m!2472737 () Bool)

(assert (=> b!2031527 m!2472737))

(declare-fun m!2472739 () Bool)

(assert (=> b!2031527 m!2472739))

(declare-fun m!2472741 () Bool)

(assert (=> b!2031527 m!2472741))

(declare-fun m!2472743 () Bool)

(assert (=> b!2031527 m!2472743))

(assert (=> b!2031527 m!2472729))

(declare-fun m!2472745 () Bool)

(assert (=> b!2031527 m!2472745))

(declare-fun m!2472747 () Bool)

(assert (=> b!2031527 m!2472747))

(declare-fun m!2472749 () Bool)

(assert (=> b!2031508 m!2472749))

(declare-fun m!2472751 () Bool)

(assert (=> b!2031528 m!2472751))

(declare-fun m!2472753 () Bool)

(assert (=> b!2031528 m!2472753))

(declare-fun m!2472755 () Bool)

(assert (=> b!2031528 m!2472755))

(declare-fun m!2472757 () Bool)

(assert (=> b!2031528 m!2472757))

(declare-fun m!2472759 () Bool)

(assert (=> b!2031528 m!2472759))

(declare-fun m!2472761 () Bool)

(assert (=> b!2031510 m!2472761))

(declare-fun m!2472763 () Bool)

(assert (=> b!2031512 m!2472763))

(declare-fun m!2472765 () Bool)

(assert (=> b!2031509 m!2472765))

(declare-fun m!2472767 () Bool)

(assert (=> b!2031524 m!2472767))

(declare-fun m!2472769 () Bool)

(assert (=> b!2031515 m!2472769))

(declare-fun m!2472771 () Bool)

(assert (=> b!2031516 m!2472771))

(declare-fun m!2472773 () Bool)

(assert (=> b!2031516 m!2472773))

(declare-fun m!2472775 () Bool)

(assert (=> b!2031518 m!2472775))

(assert (=> b!2031518 m!2472775))

(declare-fun m!2472777 () Bool)

(assert (=> b!2031518 m!2472777))

(declare-fun m!2472779 () Bool)

(assert (=> b!2031518 m!2472779))

(declare-fun m!2472781 () Bool)

(assert (=> b!2031521 m!2472781))

(declare-fun m!2472783 () Bool)

(assert (=> b!2031511 m!2472783))

(check-sat (not b!2031522) b_and!161955 (not b!2031527) (not b!2031532) (not b!2031530) (not b!2031525) (not b_next!57359) (not b!2031518) (not b!2031521) (not b!2031510) (not b!2031511) (not b_next!57363) (not b_next!57353) (not b!2031528) (not b_next!57355) (not b!2031508) b_and!161953 (not b!2031524) (not b!2031516) (not start!199972) (not b!2031517) (not b!2031512) (not b!2031533) (not b!2031509) b_and!161963 (not b_next!57357) (not b!2031507) (not b!2031515) b_and!161961 (not b!2031534) b_and!161957 (not b!2031520) b_and!161959 (not b_next!57361))
(check-sat b_and!161955 (not b_next!57355) b_and!161953 (not b_next!57359) (not b_next!57363) (not b_next!57353) b_and!161963 (not b_next!57357) b_and!161961 b_and!161957 b_and!161959 (not b_next!57361))
(get-model)

(declare-fun d!621718 () Bool)

(assert (=> d!621718 (= (isEmpty!13873 rules!3198) ((_ is Nil!22222) rules!3198))))

(assert (=> b!2031510 d!621718))

(declare-fun d!621720 () Bool)

(assert (=> d!621720 (= (get!7060 lt!763189) (v!27006 lt!763189))))

(assert (=> b!2031521 d!621720))

(declare-fun d!621722 () Bool)

(declare-fun lt!763220 () Bool)

(declare-fun e!1283185 () Bool)

(assert (=> d!621722 (= lt!763220 e!1283185)))

(declare-fun res!890930 () Bool)

(assert (=> d!621722 (=> (not res!890930) (not e!1283185))))

(declare-fun list!9080 (BalanceConc!14686) List!22305)

(assert (=> d!621722 (= res!890930 (= (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)))))) (list!9080 (singletonSeq!1970 (h!27624 tokens!598)))))))

(declare-fun e!1283186 () Bool)

(assert (=> d!621722 (= lt!763220 e!1283186)))

(declare-fun res!890931 () Bool)

(assert (=> d!621722 (=> (not res!890931) (not e!1283186))))

(declare-fun lt!763221 () tuple2!20912)

(declare-fun size!17365 (BalanceConc!14686) Int)

(assert (=> d!621722 (= res!890931 (= (size!17365 (_1!11925 lt!763221)) 1))))

(assert (=> d!621722 (= lt!763221 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)))))))

(assert (=> d!621722 (not (isEmpty!13873 rules!3198))))

(assert (=> d!621722 (= (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 (h!27624 tokens!598)) lt!763220)))

(declare-fun b!2031626 () Bool)

(declare-fun res!890929 () Bool)

(assert (=> b!2031626 (=> (not res!890929) (not e!1283186))))

(declare-fun apply!5856 (BalanceConc!14686 Int) Token!7540)

(assert (=> b!2031626 (= res!890929 (= (apply!5856 (_1!11925 lt!763221) 0) (h!27624 tokens!598)))))

(declare-fun b!2031627 () Bool)

(declare-fun isEmpty!13878 (BalanceConc!14684) Bool)

(assert (=> b!2031627 (= e!1283186 (isEmpty!13878 (_2!11925 lt!763221)))))

(declare-fun b!2031628 () Bool)

(assert (=> b!2031628 (= e!1283185 (isEmpty!13878 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)))))))))

(assert (= (and d!621722 res!890931) b!2031626))

(assert (= (and b!2031626 res!890929) b!2031627))

(assert (= (and d!621722 res!890930) b!2031628))

(declare-fun m!2472835 () Bool)

(assert (=> d!621722 m!2472835))

(declare-fun m!2472837 () Bool)

(assert (=> d!621722 m!2472837))

(assert (=> d!621722 m!2472761))

(declare-fun m!2472839 () Bool)

(assert (=> d!621722 m!2472839))

(declare-fun m!2472841 () Bool)

(assert (=> d!621722 m!2472841))

(assert (=> d!621722 m!2472759))

(assert (=> d!621722 m!2472759))

(assert (=> d!621722 m!2472835))

(assert (=> d!621722 m!2472759))

(declare-fun m!2472843 () Bool)

(assert (=> d!621722 m!2472843))

(declare-fun m!2472845 () Bool)

(assert (=> b!2031626 m!2472845))

(declare-fun m!2472847 () Bool)

(assert (=> b!2031627 m!2472847))

(assert (=> b!2031628 m!2472759))

(assert (=> b!2031628 m!2472759))

(assert (=> b!2031628 m!2472835))

(assert (=> b!2031628 m!2472835))

(assert (=> b!2031628 m!2472837))

(declare-fun m!2472849 () Bool)

(assert (=> b!2031628 m!2472849))

(assert (=> b!2031520 d!621722))

(declare-fun d!621738 () Bool)

(assert (=> d!621738 (= (inv!29404 (tag!4482 (rule!6229 (h!27624 tokens!598)))) (= (mod (str.len (value!125419 (tag!4482 (rule!6229 (h!27624 tokens!598))))) 2) 0))))

(assert (=> b!2031522 d!621738))

(declare-fun d!621740 () Bool)

(declare-fun res!890934 () Bool)

(declare-fun e!1283189 () Bool)

(assert (=> d!621740 (=> (not res!890934) (not e!1283189))))

(declare-fun semiInverseModEq!1611 (Int Int) Bool)

(assert (=> d!621740 (= res!890934 (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))))))

(assert (=> d!621740 (= (inv!29407 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) e!1283189)))

(declare-fun b!2031631 () Bool)

(declare-fun equivClasses!1538 (Int Int) Bool)

(assert (=> b!2031631 (= e!1283189 (equivClasses!1538 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))))))

(assert (= (and d!621740 res!890934) b!2031631))

(declare-fun m!2472851 () Bool)

(assert (=> d!621740 m!2472851))

(declare-fun m!2472853 () Bool)

(assert (=> b!2031631 m!2472853))

(assert (=> b!2031522 d!621740))

(declare-fun b!2031642 () Bool)

(declare-fun e!1283197 () Bool)

(declare-fun inv!15 (TokenValue!4130) Bool)

(assert (=> b!2031642 (= e!1283197 (inv!15 (value!125420 separatorToken!354)))))

(declare-fun b!2031643 () Bool)

(declare-fun e!1283196 () Bool)

(declare-fun inv!17 (TokenValue!4130) Bool)

(assert (=> b!2031643 (= e!1283196 (inv!17 (value!125420 separatorToken!354)))))

(declare-fun d!621742 () Bool)

(declare-fun c!328915 () Bool)

(assert (=> d!621742 (= c!328915 ((_ is IntegerValue!12390) (value!125420 separatorToken!354)))))

(declare-fun e!1283198 () Bool)

(assert (=> d!621742 (= (inv!21 (value!125420 separatorToken!354)) e!1283198)))

(declare-fun b!2031644 () Bool)

(declare-fun res!890937 () Bool)

(assert (=> b!2031644 (=> res!890937 e!1283197)))

(assert (=> b!2031644 (= res!890937 (not ((_ is IntegerValue!12392) (value!125420 separatorToken!354))))))

(assert (=> b!2031644 (= e!1283196 e!1283197)))

(declare-fun b!2031645 () Bool)

(assert (=> b!2031645 (= e!1283198 e!1283196)))

(declare-fun c!328916 () Bool)

(assert (=> b!2031645 (= c!328916 ((_ is IntegerValue!12391) (value!125420 separatorToken!354)))))

(declare-fun b!2031646 () Bool)

(declare-fun inv!16 (TokenValue!4130) Bool)

(assert (=> b!2031646 (= e!1283198 (inv!16 (value!125420 separatorToken!354)))))

(assert (= (and d!621742 c!328915) b!2031646))

(assert (= (and d!621742 (not c!328915)) b!2031645))

(assert (= (and b!2031645 c!328916) b!2031643))

(assert (= (and b!2031645 (not c!328916)) b!2031644))

(assert (= (and b!2031644 (not res!890937)) b!2031642))

(declare-fun m!2472855 () Bool)

(assert (=> b!2031642 m!2472855))

(declare-fun m!2472857 () Bool)

(assert (=> b!2031643 m!2472857))

(declare-fun m!2472859 () Bool)

(assert (=> b!2031646 m!2472859))

(assert (=> b!2031533 d!621742))

(declare-fun d!621744 () Bool)

(declare-fun lt!763222 () Bool)

(declare-fun e!1283199 () Bool)

(assert (=> d!621744 (= lt!763222 e!1283199)))

(declare-fun res!890939 () Bool)

(assert (=> d!621744 (=> (not res!890939) (not e!1283199))))

(assert (=> d!621744 (= res!890939 (= (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354))))) (list!9080 (singletonSeq!1970 separatorToken!354))))))

(declare-fun e!1283200 () Bool)

(assert (=> d!621744 (= lt!763222 e!1283200)))

(declare-fun res!890940 () Bool)

(assert (=> d!621744 (=> (not res!890940) (not e!1283200))))

(declare-fun lt!763223 () tuple2!20912)

(assert (=> d!621744 (= res!890940 (= (size!17365 (_1!11925 lt!763223)) 1))))

(assert (=> d!621744 (= lt!763223 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354))))))

(assert (=> d!621744 (not (isEmpty!13873 rules!3198))))

(assert (=> d!621744 (= (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 separatorToken!354) lt!763222)))

(declare-fun b!2031647 () Bool)

(declare-fun res!890938 () Bool)

(assert (=> b!2031647 (=> (not res!890938) (not e!1283200))))

(assert (=> b!2031647 (= res!890938 (= (apply!5856 (_1!11925 lt!763223) 0) separatorToken!354))))

(declare-fun b!2031648 () Bool)

(assert (=> b!2031648 (= e!1283200 (isEmpty!13878 (_2!11925 lt!763223)))))

(declare-fun b!2031649 () Bool)

(assert (=> b!2031649 (= e!1283199 (isEmpty!13878 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354))))))))

(assert (= (and d!621744 res!890940) b!2031647))

(assert (= (and b!2031647 res!890938) b!2031648))

(assert (= (and d!621744 res!890939) b!2031649))

(declare-fun m!2472861 () Bool)

(assert (=> d!621744 m!2472861))

(declare-fun m!2472863 () Bool)

(assert (=> d!621744 m!2472863))

(assert (=> d!621744 m!2472761))

(declare-fun m!2472865 () Bool)

(assert (=> d!621744 m!2472865))

(declare-fun m!2472867 () Bool)

(assert (=> d!621744 m!2472867))

(declare-fun m!2472869 () Bool)

(assert (=> d!621744 m!2472869))

(assert (=> d!621744 m!2472869))

(assert (=> d!621744 m!2472861))

(assert (=> d!621744 m!2472869))

(declare-fun m!2472871 () Bool)

(assert (=> d!621744 m!2472871))

(declare-fun m!2472873 () Bool)

(assert (=> b!2031647 m!2472873))

(declare-fun m!2472875 () Bool)

(assert (=> b!2031648 m!2472875))

(assert (=> b!2031649 m!2472869))

(assert (=> b!2031649 m!2472869))

(assert (=> b!2031649 m!2472861))

(assert (=> b!2031649 m!2472861))

(assert (=> b!2031649 m!2472863))

(declare-fun m!2472877 () Bool)

(assert (=> b!2031649 m!2472877))

(assert (=> b!2031511 d!621744))

(declare-fun b!2031678 () Bool)

(declare-fun e!1283218 () Bool)

(declare-fun lt!763226 () Bool)

(assert (=> b!2031678 (= e!1283218 (not lt!763226))))

(declare-fun b!2031679 () Bool)

(declare-fun e!1283221 () Bool)

(assert (=> b!2031679 (= e!1283221 e!1283218)))

(declare-fun c!328924 () Bool)

(assert (=> b!2031679 (= c!328924 ((_ is EmptyLang!5419) (regex!3994 lt!763203)))))

(declare-fun b!2031680 () Bool)

(declare-fun e!1283219 () Bool)

(declare-fun nullable!1655 (Regex!5419) Bool)

(assert (=> b!2031680 (= e!1283219 (nullable!1655 (regex!3994 lt!763203)))))

(declare-fun b!2031682 () Bool)

(declare-fun res!890962 () Bool)

(declare-fun e!1283220 () Bool)

(assert (=> b!2031682 (=> res!890962 e!1283220)))

(declare-fun e!1283216 () Bool)

(assert (=> b!2031682 (= res!890962 e!1283216)))

(declare-fun res!890958 () Bool)

(assert (=> b!2031682 (=> (not res!890958) (not e!1283216))))

(assert (=> b!2031682 (= res!890958 lt!763226)))

(declare-fun bm!124689 () Bool)

(declare-fun call!124694 () Bool)

(declare-fun isEmpty!13880 (List!22303) Bool)

(assert (=> bm!124689 (= call!124694 (isEmpty!13880 lt!763185))))

(declare-fun b!2031683 () Bool)

(declare-fun res!890961 () Bool)

(declare-fun e!1283217 () Bool)

(assert (=> b!2031683 (=> res!890961 e!1283217)))

(declare-fun tail!3064 (List!22303) List!22303)

(assert (=> b!2031683 (= res!890961 (not (isEmpty!13880 (tail!3064 lt!763185))))))

(declare-fun b!2031684 () Bool)

(declare-fun e!1283215 () Bool)

(assert (=> b!2031684 (= e!1283220 e!1283215)))

(declare-fun res!890957 () Bool)

(assert (=> b!2031684 (=> (not res!890957) (not e!1283215))))

(assert (=> b!2031684 (= res!890957 (not lt!763226))))

(declare-fun b!2031685 () Bool)

(assert (=> b!2031685 (= e!1283215 e!1283217)))

(declare-fun res!890963 () Bool)

(assert (=> b!2031685 (=> res!890963 e!1283217)))

(assert (=> b!2031685 (= res!890963 call!124694)))

(declare-fun d!621746 () Bool)

(assert (=> d!621746 e!1283221))

(declare-fun c!328923 () Bool)

(assert (=> d!621746 (= c!328923 ((_ is EmptyExpr!5419) (regex!3994 lt!763203)))))

(assert (=> d!621746 (= lt!763226 e!1283219)))

(declare-fun c!328925 () Bool)

(assert (=> d!621746 (= c!328925 (isEmpty!13880 lt!763185))))

(declare-fun validRegex!2181 (Regex!5419) Bool)

(assert (=> d!621746 (validRegex!2181 (regex!3994 lt!763203))))

(assert (=> d!621746 (= (matchR!2685 (regex!3994 lt!763203) lt!763185) lt!763226)))

(declare-fun b!2031681 () Bool)

(declare-fun head!4589 (List!22303) C!10984)

(assert (=> b!2031681 (= e!1283216 (= (head!4589 lt!763185) (c!328894 (regex!3994 lt!763203))))))

(declare-fun b!2031686 () Bool)

(declare-fun derivativeStep!1414 (Regex!5419 C!10984) Regex!5419)

(assert (=> b!2031686 (= e!1283219 (matchR!2685 (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185)) (tail!3064 lt!763185)))))

(declare-fun b!2031687 () Bool)

(assert (=> b!2031687 (= e!1283217 (not (= (head!4589 lt!763185) (c!328894 (regex!3994 lt!763203)))))))

(declare-fun b!2031688 () Bool)

(declare-fun res!890964 () Bool)

(assert (=> b!2031688 (=> (not res!890964) (not e!1283216))))

(assert (=> b!2031688 (= res!890964 (not call!124694))))

(declare-fun b!2031689 () Bool)

(declare-fun res!890960 () Bool)

(assert (=> b!2031689 (=> res!890960 e!1283220)))

(assert (=> b!2031689 (= res!890960 (not ((_ is ElementMatch!5419) (regex!3994 lt!763203))))))

(assert (=> b!2031689 (= e!1283218 e!1283220)))

(declare-fun b!2031690 () Bool)

(declare-fun res!890959 () Bool)

(assert (=> b!2031690 (=> (not res!890959) (not e!1283216))))

(assert (=> b!2031690 (= res!890959 (isEmpty!13880 (tail!3064 lt!763185)))))

(declare-fun b!2031691 () Bool)

(assert (=> b!2031691 (= e!1283221 (= lt!763226 call!124694))))

(assert (= (and d!621746 c!328925) b!2031680))

(assert (= (and d!621746 (not c!328925)) b!2031686))

(assert (= (and d!621746 c!328923) b!2031691))

(assert (= (and d!621746 (not c!328923)) b!2031679))

(assert (= (and b!2031679 c!328924) b!2031678))

(assert (= (and b!2031679 (not c!328924)) b!2031689))

(assert (= (and b!2031689 (not res!890960)) b!2031682))

(assert (= (and b!2031682 res!890958) b!2031688))

(assert (= (and b!2031688 res!890964) b!2031690))

(assert (= (and b!2031690 res!890959) b!2031681))

(assert (= (and b!2031682 (not res!890962)) b!2031684))

(assert (= (and b!2031684 res!890957) b!2031685))

(assert (= (and b!2031685 (not res!890963)) b!2031683))

(assert (= (and b!2031683 (not res!890961)) b!2031687))

(assert (= (or b!2031691 b!2031685 b!2031688) bm!124689))

(declare-fun m!2472879 () Bool)

(assert (=> b!2031680 m!2472879))

(declare-fun m!2472881 () Bool)

(assert (=> b!2031690 m!2472881))

(assert (=> b!2031690 m!2472881))

(declare-fun m!2472883 () Bool)

(assert (=> b!2031690 m!2472883))

(declare-fun m!2472885 () Bool)

(assert (=> b!2031681 m!2472885))

(assert (=> b!2031683 m!2472881))

(assert (=> b!2031683 m!2472881))

(assert (=> b!2031683 m!2472883))

(declare-fun m!2472887 () Bool)

(assert (=> bm!124689 m!2472887))

(assert (=> d!621746 m!2472887))

(declare-fun m!2472889 () Bool)

(assert (=> d!621746 m!2472889))

(assert (=> b!2031687 m!2472885))

(assert (=> b!2031686 m!2472885))

(assert (=> b!2031686 m!2472885))

(declare-fun m!2472891 () Bool)

(assert (=> b!2031686 m!2472891))

(assert (=> b!2031686 m!2472881))

(assert (=> b!2031686 m!2472891))

(assert (=> b!2031686 m!2472881))

(declare-fun m!2472893 () Bool)

(assert (=> b!2031686 m!2472893))

(assert (=> b!2031534 d!621746))

(declare-fun d!621748 () Bool)

(assert (=> d!621748 (= (get!7059 lt!763200) (v!27005 lt!763200))))

(assert (=> b!2031534 d!621748))

(declare-fun b!2031692 () Bool)

(declare-fun e!1283223 () Bool)

(assert (=> b!2031692 (= e!1283223 (inv!15 (value!125420 (h!27624 tokens!598))))))

(declare-fun b!2031693 () Bool)

(declare-fun e!1283222 () Bool)

(assert (=> b!2031693 (= e!1283222 (inv!17 (value!125420 (h!27624 tokens!598))))))

(declare-fun d!621750 () Bool)

(declare-fun c!328926 () Bool)

(assert (=> d!621750 (= c!328926 ((_ is IntegerValue!12390) (value!125420 (h!27624 tokens!598))))))

(declare-fun e!1283224 () Bool)

(assert (=> d!621750 (= (inv!21 (value!125420 (h!27624 tokens!598))) e!1283224)))

(declare-fun b!2031694 () Bool)

(declare-fun res!890965 () Bool)

(assert (=> b!2031694 (=> res!890965 e!1283223)))

(assert (=> b!2031694 (= res!890965 (not ((_ is IntegerValue!12392) (value!125420 (h!27624 tokens!598)))))))

(assert (=> b!2031694 (= e!1283222 e!1283223)))

(declare-fun b!2031695 () Bool)

(assert (=> b!2031695 (= e!1283224 e!1283222)))

(declare-fun c!328927 () Bool)

(assert (=> b!2031695 (= c!328927 ((_ is IntegerValue!12391) (value!125420 (h!27624 tokens!598))))))

(declare-fun b!2031696 () Bool)

(assert (=> b!2031696 (= e!1283224 (inv!16 (value!125420 (h!27624 tokens!598))))))

(assert (= (and d!621750 c!328926) b!2031696))

(assert (= (and d!621750 (not c!328926)) b!2031695))

(assert (= (and b!2031695 c!328927) b!2031693))

(assert (= (and b!2031695 (not c!328927)) b!2031694))

(assert (= (and b!2031694 (not res!890965)) b!2031692))

(declare-fun m!2472895 () Bool)

(assert (=> b!2031692 m!2472895))

(declare-fun m!2472897 () Bool)

(assert (=> b!2031693 m!2472897))

(declare-fun m!2472899 () Bool)

(assert (=> b!2031696 m!2472899))

(assert (=> b!2031512 d!621750))

(declare-fun d!621752 () Bool)

(assert (=> d!621752 (= (inv!29404 (tag!4482 (rule!6229 separatorToken!354))) (= (mod (str.len (value!125419 (tag!4482 (rule!6229 separatorToken!354)))) 2) 0))))

(assert (=> b!2031525 d!621752))

(declare-fun d!621754 () Bool)

(declare-fun res!890966 () Bool)

(declare-fun e!1283225 () Bool)

(assert (=> d!621754 (=> (not res!890966) (not e!1283225))))

(assert (=> d!621754 (= res!890966 (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354)))))))

(assert (=> d!621754 (= (inv!29407 (transformation!3994 (rule!6229 separatorToken!354))) e!1283225)))

(declare-fun b!2031697 () Bool)

(assert (=> b!2031697 (= e!1283225 (equivClasses!1538 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354)))))))

(assert (= (and d!621754 res!890966) b!2031697))

(declare-fun m!2472901 () Bool)

(assert (=> d!621754 m!2472901))

(declare-fun m!2472903 () Bool)

(assert (=> b!2031697 m!2472903))

(assert (=> b!2031525 d!621754))

(declare-fun d!621756 () Bool)

(declare-fun res!890971 () Bool)

(declare-fun e!1283230 () Bool)

(assert (=> d!621756 (=> res!890971 e!1283230)))

(assert (=> d!621756 (= res!890971 ((_ is Nil!22223) tokens!598))))

(assert (=> d!621756 (= (forall!4728 tokens!598 lambda!76551) e!1283230)))

(declare-fun b!2031702 () Bool)

(declare-fun e!1283231 () Bool)

(assert (=> b!2031702 (= e!1283230 e!1283231)))

(declare-fun res!890972 () Bool)

(assert (=> b!2031702 (=> (not res!890972) (not e!1283231))))

(declare-fun dynLambda!11063 (Int Token!7540) Bool)

(assert (=> b!2031702 (= res!890972 (dynLambda!11063 lambda!76551 (h!27624 tokens!598)))))

(declare-fun b!2031703 () Bool)

(assert (=> b!2031703 (= e!1283231 (forall!4728 (t!190664 tokens!598) lambda!76551))))

(assert (= (and d!621756 (not res!890971)) b!2031702))

(assert (= (and b!2031702 res!890972) b!2031703))

(declare-fun b_lambda!68447 () Bool)

(assert (=> (not b_lambda!68447) (not b!2031702)))

(declare-fun m!2472905 () Bool)

(assert (=> b!2031702 m!2472905))

(declare-fun m!2472907 () Bool)

(assert (=> b!2031703 m!2472907))

(assert (=> b!2031524 d!621756))

(declare-fun d!621758 () Bool)

(declare-fun res!890977 () Bool)

(declare-fun e!1283234 () Bool)

(assert (=> d!621758 (=> (not res!890977) (not e!1283234))))

(assert (=> d!621758 (= res!890977 (not (isEmpty!13880 (originalCharacters!4801 separatorToken!354))))))

(assert (=> d!621758 (= (inv!29408 separatorToken!354) e!1283234)))

(declare-fun b!2031708 () Bool)

(declare-fun res!890978 () Bool)

(assert (=> b!2031708 (=> (not res!890978) (not e!1283234))))

(declare-fun dynLambda!11064 (Int TokenValue!4130) BalanceConc!14684)

(assert (=> b!2031708 (= res!890978 (= (originalCharacters!4801 separatorToken!354) (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))))))

(declare-fun b!2031709 () Bool)

(declare-fun size!17366 (List!22303) Int)

(assert (=> b!2031709 (= e!1283234 (= (size!17362 separatorToken!354) (size!17366 (originalCharacters!4801 separatorToken!354))))))

(assert (= (and d!621758 res!890977) b!2031708))

(assert (= (and b!2031708 res!890978) b!2031709))

(declare-fun b_lambda!68449 () Bool)

(assert (=> (not b_lambda!68449) (not b!2031708)))

(declare-fun t!190670 () Bool)

(declare-fun tb!128345 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) t!190670) tb!128345))

(declare-fun b!2031714 () Bool)

(declare-fun e!1283237 () Bool)

(declare-fun tp!603657 () Bool)

(declare-fun inv!29409 (Conc!7434) Bool)

(assert (=> b!2031714 (= e!1283237 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))) tp!603657))))

(declare-fun result!153512 () Bool)

(declare-fun inv!29410 (BalanceConc!14684) Bool)

(assert (=> tb!128345 (= result!153512 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))) e!1283237))))

(assert (= tb!128345 b!2031714))

(declare-fun m!2472909 () Bool)

(assert (=> b!2031714 m!2472909))

(declare-fun m!2472911 () Bool)

(assert (=> tb!128345 m!2472911))

(assert (=> b!2031708 t!190670))

(declare-fun b_and!161965 () Bool)

(assert (= b_and!161955 (and (=> t!190670 result!153512) b_and!161965)))

(declare-fun t!190672 () Bool)

(declare-fun tb!128347 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) t!190672) tb!128347))

(declare-fun result!153516 () Bool)

(assert (= result!153516 result!153512))

(assert (=> b!2031708 t!190672))

(declare-fun b_and!161967 () Bool)

(assert (= b_and!161959 (and (=> t!190672 result!153516) b_and!161967)))

(declare-fun t!190674 () Bool)

(declare-fun tb!128349 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) t!190674) tb!128349))

(declare-fun result!153518 () Bool)

(assert (= result!153518 result!153512))

(assert (=> b!2031708 t!190674))

(declare-fun b_and!161969 () Bool)

(assert (= b_and!161963 (and (=> t!190674 result!153518) b_and!161969)))

(declare-fun m!2472913 () Bool)

(assert (=> d!621758 m!2472913))

(declare-fun m!2472915 () Bool)

(assert (=> b!2031708 m!2472915))

(assert (=> b!2031708 m!2472915))

(declare-fun m!2472917 () Bool)

(assert (=> b!2031708 m!2472917))

(declare-fun m!2472919 () Bool)

(assert (=> b!2031709 m!2472919))

(assert (=> start!199972 d!621758))

(declare-fun d!621760 () Bool)

(declare-fun res!890983 () Bool)

(declare-fun e!1283242 () Bool)

(assert (=> d!621760 (=> res!890983 e!1283242)))

(assert (=> d!621760 (= res!890983 (not ((_ is Cons!22222) rules!3198)))))

(assert (=> d!621760 (= (sepAndNonSepRulesDisjointChars!1092 rules!3198 rules!3198) e!1283242)))

(declare-fun b!2031719 () Bool)

(declare-fun e!1283243 () Bool)

(assert (=> b!2031719 (= e!1283242 e!1283243)))

(declare-fun res!890984 () Bool)

(assert (=> b!2031719 (=> (not res!890984) (not e!1283243))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!495 (Rule!7788 List!22304) Bool)

(assert (=> b!2031719 (= res!890984 (ruleDisjointCharsFromAllFromOtherType!495 (h!27623 rules!3198) rules!3198))))

(declare-fun b!2031720 () Bool)

(assert (=> b!2031720 (= e!1283243 (sepAndNonSepRulesDisjointChars!1092 rules!3198 (t!190663 rules!3198)))))

(assert (= (and d!621760 (not res!890983)) b!2031719))

(assert (= (and b!2031719 res!890984) b!2031720))

(declare-fun m!2472921 () Bool)

(assert (=> b!2031719 m!2472921))

(declare-fun m!2472923 () Bool)

(assert (=> b!2031720 m!2472923))

(assert (=> b!2031515 d!621760))

(declare-fun d!621762 () Bool)

(declare-fun res!890985 () Bool)

(declare-fun e!1283244 () Bool)

(assert (=> d!621762 (=> (not res!890985) (not e!1283244))))

(assert (=> d!621762 (= res!890985 (not (isEmpty!13880 (originalCharacters!4801 (h!27624 tokens!598)))))))

(assert (=> d!621762 (= (inv!29408 (h!27624 tokens!598)) e!1283244)))

(declare-fun b!2031721 () Bool)

(declare-fun res!890986 () Bool)

(assert (=> b!2031721 (=> (not res!890986) (not e!1283244))))

(assert (=> b!2031721 (= res!890986 (= (originalCharacters!4801 (h!27624 tokens!598)) (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))))))

(declare-fun b!2031722 () Bool)

(assert (=> b!2031722 (= e!1283244 (= (size!17362 (h!27624 tokens!598)) (size!17366 (originalCharacters!4801 (h!27624 tokens!598)))))))

(assert (= (and d!621762 res!890985) b!2031721))

(assert (= (and b!2031721 res!890986) b!2031722))

(declare-fun b_lambda!68451 () Bool)

(assert (=> (not b_lambda!68451) (not b!2031721)))

(declare-fun t!190676 () Bool)

(declare-fun tb!128351 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190676) tb!128351))

(declare-fun b!2031723 () Bool)

(declare-fun e!1283245 () Bool)

(declare-fun tp!603658 () Bool)

(assert (=> b!2031723 (= e!1283245 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))) tp!603658))))

(declare-fun result!153520 () Bool)

(assert (=> tb!128351 (= result!153520 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))) e!1283245))))

(assert (= tb!128351 b!2031723))

(declare-fun m!2472925 () Bool)

(assert (=> b!2031723 m!2472925))

(declare-fun m!2472927 () Bool)

(assert (=> tb!128351 m!2472927))

(assert (=> b!2031721 t!190676))

(declare-fun b_and!161971 () Bool)

(assert (= b_and!161965 (and (=> t!190676 result!153520) b_and!161971)))

(declare-fun t!190678 () Bool)

(declare-fun tb!128353 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190678) tb!128353))

(declare-fun result!153522 () Bool)

(assert (= result!153522 result!153520))

(assert (=> b!2031721 t!190678))

(declare-fun b_and!161973 () Bool)

(assert (= b_and!161967 (and (=> t!190678 result!153522) b_and!161973)))

(declare-fun t!190680 () Bool)

(declare-fun tb!128355 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190680) tb!128355))

(declare-fun result!153524 () Bool)

(assert (= result!153524 result!153520))

(assert (=> b!2031721 t!190680))

(declare-fun b_and!161975 () Bool)

(assert (= b_and!161969 (and (=> t!190680 result!153524) b_and!161975)))

(declare-fun m!2472929 () Bool)

(assert (=> d!621762 m!2472929))

(declare-fun m!2472931 () Bool)

(assert (=> b!2031721 m!2472931))

(assert (=> b!2031721 m!2472931))

(declare-fun m!2472933 () Bool)

(assert (=> b!2031721 m!2472933))

(declare-fun m!2472935 () Bool)

(assert (=> b!2031722 m!2472935))

(assert (=> b!2031517 d!621762))

(declare-fun b!2031724 () Bool)

(declare-fun e!1283249 () Bool)

(declare-fun lt!763227 () Bool)

(assert (=> b!2031724 (= e!1283249 (not lt!763227))))

(declare-fun b!2031725 () Bool)

(declare-fun e!1283252 () Bool)

(assert (=> b!2031725 (= e!1283252 e!1283249)))

(declare-fun c!328929 () Bool)

(assert (=> b!2031725 (= c!328929 ((_ is EmptyLang!5419) (regex!3994 lt!763191)))))

(declare-fun b!2031726 () Bool)

(declare-fun e!1283250 () Bool)

(assert (=> b!2031726 (= e!1283250 (nullable!1655 (regex!3994 lt!763191)))))

(declare-fun b!2031728 () Bool)

(declare-fun res!890992 () Bool)

(declare-fun e!1283251 () Bool)

(assert (=> b!2031728 (=> res!890992 e!1283251)))

(declare-fun e!1283247 () Bool)

(assert (=> b!2031728 (= res!890992 e!1283247)))

(declare-fun res!890988 () Bool)

(assert (=> b!2031728 (=> (not res!890988) (not e!1283247))))

(assert (=> b!2031728 (= res!890988 lt!763227)))

(declare-fun bm!124690 () Bool)

(declare-fun call!124695 () Bool)

(assert (=> bm!124690 (= call!124695 (isEmpty!13880 lt!763202))))

(declare-fun b!2031729 () Bool)

(declare-fun res!890991 () Bool)

(declare-fun e!1283248 () Bool)

(assert (=> b!2031729 (=> res!890991 e!1283248)))

(assert (=> b!2031729 (= res!890991 (not (isEmpty!13880 (tail!3064 lt!763202))))))

(declare-fun b!2031730 () Bool)

(declare-fun e!1283246 () Bool)

(assert (=> b!2031730 (= e!1283251 e!1283246)))

(declare-fun res!890987 () Bool)

(assert (=> b!2031730 (=> (not res!890987) (not e!1283246))))

(assert (=> b!2031730 (= res!890987 (not lt!763227))))

(declare-fun b!2031731 () Bool)

(assert (=> b!2031731 (= e!1283246 e!1283248)))

(declare-fun res!890993 () Bool)

(assert (=> b!2031731 (=> res!890993 e!1283248)))

(assert (=> b!2031731 (= res!890993 call!124695)))

(declare-fun d!621764 () Bool)

(assert (=> d!621764 e!1283252))

(declare-fun c!328928 () Bool)

(assert (=> d!621764 (= c!328928 ((_ is EmptyExpr!5419) (regex!3994 lt!763191)))))

(assert (=> d!621764 (= lt!763227 e!1283250)))

(declare-fun c!328930 () Bool)

(assert (=> d!621764 (= c!328930 (isEmpty!13880 lt!763202))))

(assert (=> d!621764 (validRegex!2181 (regex!3994 lt!763191))))

(assert (=> d!621764 (= (matchR!2685 (regex!3994 lt!763191) lt!763202) lt!763227)))

(declare-fun b!2031727 () Bool)

(assert (=> b!2031727 (= e!1283247 (= (head!4589 lt!763202) (c!328894 (regex!3994 lt!763191))))))

(declare-fun b!2031732 () Bool)

(assert (=> b!2031732 (= e!1283250 (matchR!2685 (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202)) (tail!3064 lt!763202)))))

(declare-fun b!2031733 () Bool)

(assert (=> b!2031733 (= e!1283248 (not (= (head!4589 lt!763202) (c!328894 (regex!3994 lt!763191)))))))

(declare-fun b!2031734 () Bool)

(declare-fun res!890994 () Bool)

(assert (=> b!2031734 (=> (not res!890994) (not e!1283247))))

(assert (=> b!2031734 (= res!890994 (not call!124695))))

(declare-fun b!2031735 () Bool)

(declare-fun res!890990 () Bool)

(assert (=> b!2031735 (=> res!890990 e!1283251)))

(assert (=> b!2031735 (= res!890990 (not ((_ is ElementMatch!5419) (regex!3994 lt!763191))))))

(assert (=> b!2031735 (= e!1283249 e!1283251)))

(declare-fun b!2031736 () Bool)

(declare-fun res!890989 () Bool)

(assert (=> b!2031736 (=> (not res!890989) (not e!1283247))))

(assert (=> b!2031736 (= res!890989 (isEmpty!13880 (tail!3064 lt!763202)))))

(declare-fun b!2031737 () Bool)

(assert (=> b!2031737 (= e!1283252 (= lt!763227 call!124695))))

(assert (= (and d!621764 c!328930) b!2031726))

(assert (= (and d!621764 (not c!328930)) b!2031732))

(assert (= (and d!621764 c!328928) b!2031737))

(assert (= (and d!621764 (not c!328928)) b!2031725))

(assert (= (and b!2031725 c!328929) b!2031724))

(assert (= (and b!2031725 (not c!328929)) b!2031735))

(assert (= (and b!2031735 (not res!890990)) b!2031728))

(assert (= (and b!2031728 res!890988) b!2031734))

(assert (= (and b!2031734 res!890994) b!2031736))

(assert (= (and b!2031736 res!890989) b!2031727))

(assert (= (and b!2031728 (not res!890992)) b!2031730))

(assert (= (and b!2031730 res!890987) b!2031731))

(assert (= (and b!2031731 (not res!890993)) b!2031729))

(assert (= (and b!2031729 (not res!890991)) b!2031733))

(assert (= (or b!2031737 b!2031731 b!2031734) bm!124690))

(declare-fun m!2472937 () Bool)

(assert (=> b!2031726 m!2472937))

(declare-fun m!2472939 () Bool)

(assert (=> b!2031736 m!2472939))

(assert (=> b!2031736 m!2472939))

(declare-fun m!2472941 () Bool)

(assert (=> b!2031736 m!2472941))

(declare-fun m!2472943 () Bool)

(assert (=> b!2031727 m!2472943))

(assert (=> b!2031729 m!2472939))

(assert (=> b!2031729 m!2472939))

(assert (=> b!2031729 m!2472941))

(declare-fun m!2472945 () Bool)

(assert (=> bm!124690 m!2472945))

(assert (=> d!621764 m!2472945))

(declare-fun m!2472947 () Bool)

(assert (=> d!621764 m!2472947))

(assert (=> b!2031733 m!2472943))

(assert (=> b!2031732 m!2472943))

(assert (=> b!2031732 m!2472943))

(declare-fun m!2472949 () Bool)

(assert (=> b!2031732 m!2472949))

(assert (=> b!2031732 m!2472939))

(assert (=> b!2031732 m!2472949))

(assert (=> b!2031732 m!2472939))

(declare-fun m!2472951 () Bool)

(assert (=> b!2031732 m!2472951))

(assert (=> b!2031516 d!621764))

(declare-fun d!621766 () Bool)

(assert (=> d!621766 (= (get!7059 lt!763195) (v!27005 lt!763195))))

(assert (=> b!2031516 d!621766))

(declare-fun d!621768 () Bool)

(declare-fun e!1283255 () Bool)

(assert (=> d!621768 e!1283255))

(declare-fun res!890999 () Bool)

(assert (=> d!621768 (=> (not res!890999) (not e!1283255))))

(assert (=> d!621768 (= res!890999 (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))))))

(declare-fun lt!763230 () Unit!36902)

(declare-fun choose!12392 (LexerInterface!3607 List!22304 List!22303 Token!7540) Unit!36902)

(assert (=> d!621768 (= lt!763230 (choose!12392 thiss!23328 rules!3198 lt!763202 (h!27624 tokens!598)))))

(assert (=> d!621768 (rulesInvariant!3214 thiss!23328 rules!3198)))

(assert (=> d!621768 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 thiss!23328 rules!3198 lt!763202 (h!27624 tokens!598)) lt!763230)))

(declare-fun b!2031742 () Bool)

(declare-fun res!891000 () Bool)

(assert (=> b!2031742 (=> (not res!891000) (not e!1283255))))

(assert (=> b!2031742 (= res!891000 (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))) (list!9077 (charsOf!2534 (h!27624 tokens!598)))))))

(declare-fun b!2031743 () Bool)

(assert (=> b!2031743 (= e!1283255 (= (rule!6229 (h!27624 tokens!598)) (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))

(assert (= (and d!621768 res!890999) b!2031742))

(assert (= (and b!2031742 res!891000) b!2031743))

(assert (=> d!621768 m!2472731))

(assert (=> d!621768 m!2472731))

(declare-fun m!2472953 () Bool)

(assert (=> d!621768 m!2472953))

(declare-fun m!2472955 () Bool)

(assert (=> d!621768 m!2472955))

(assert (=> d!621768 m!2472749))

(declare-fun m!2472957 () Bool)

(assert (=> b!2031742 m!2472957))

(declare-fun m!2472959 () Bool)

(assert (=> b!2031742 m!2472959))

(assert (=> b!2031742 m!2472743))

(assert (=> b!2031742 m!2472957))

(assert (=> b!2031742 m!2472731))

(assert (=> b!2031742 m!2472731))

(declare-fun m!2472961 () Bool)

(assert (=> b!2031742 m!2472961))

(assert (=> b!2031742 m!2472743))

(assert (=> b!2031743 m!2472731))

(assert (=> b!2031743 m!2472731))

(assert (=> b!2031743 m!2472961))

(assert (=> b!2031527 d!621768))

(declare-fun d!621770 () Bool)

(declare-fun isEmpty!13881 (Option!4673) Bool)

(assert (=> d!621770 (= (isDefined!3959 lt!763195) (not (isEmpty!13881 lt!763195)))))

(declare-fun bs!421049 () Bool)

(assert (= bs!421049 d!621770))

(declare-fun m!2472963 () Bool)

(assert (=> bs!421049 m!2472963))

(assert (=> b!2031527 d!621770))

(declare-fun d!621772 () Bool)

(declare-fun isEmpty!13882 (Option!4674) Bool)

(assert (=> d!621772 (= (isDefined!3960 lt!763189) (not (isEmpty!13882 lt!763189)))))

(declare-fun bs!421050 () Bool)

(assert (= bs!421050 d!621772))

(declare-fun m!2472965 () Bool)

(assert (=> bs!421050 m!2472965))

(assert (=> b!2031527 d!621772))

(declare-fun b!2031762 () Bool)

(declare-fun res!891017 () Bool)

(declare-fun e!1283264 () Bool)

(assert (=> b!2031762 (=> (not res!891017) (not e!1283264))))

(declare-fun lt!763244 () Option!4674)

(assert (=> b!2031762 (= res!891017 (matchR!2685 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))))))

(declare-fun b!2031763 () Bool)

(declare-fun res!891018 () Bool)

(assert (=> b!2031763 (=> (not res!891018) (not e!1283264))))

(assert (=> b!2031763 (= res!891018 (= (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))) (originalCharacters!4801 (_1!11926 (get!7060 lt!763244)))))))

(declare-fun b!2031764 () Bool)

(declare-fun e!1283262 () Option!4674)

(declare-fun lt!763245 () Option!4674)

(declare-fun lt!763243 () Option!4674)

(assert (=> b!2031764 (= e!1283262 (ite (and ((_ is None!4673) lt!763245) ((_ is None!4673) lt!763243)) None!4673 (ite ((_ is None!4673) lt!763243) lt!763245 (ite ((_ is None!4673) lt!763245) lt!763243 (ite (>= (size!17362 (_1!11926 (v!27006 lt!763245))) (size!17362 (_1!11926 (v!27006 lt!763243)))) lt!763245 lt!763243)))))))

(declare-fun call!124698 () Option!4674)

(assert (=> b!2031764 (= lt!763245 call!124698)))

(assert (=> b!2031764 (= lt!763243 (maxPrefix!2043 thiss!23328 (t!190663 rules!3198) lt!763202))))

(declare-fun d!621774 () Bool)

(declare-fun e!1283263 () Bool)

(assert (=> d!621774 e!1283263))

(declare-fun res!891020 () Bool)

(assert (=> d!621774 (=> res!891020 e!1283263)))

(assert (=> d!621774 (= res!891020 (isEmpty!13882 lt!763244))))

(assert (=> d!621774 (= lt!763244 e!1283262)))

(declare-fun c!328933 () Bool)

(assert (=> d!621774 (= c!328933 (and ((_ is Cons!22222) rules!3198) ((_ is Nil!22222) (t!190663 rules!3198))))))

(declare-fun lt!763241 () Unit!36902)

(declare-fun lt!763242 () Unit!36902)

(assert (=> d!621774 (= lt!763241 lt!763242)))

(declare-fun isPrefix!1987 (List!22303 List!22303) Bool)

(assert (=> d!621774 (isPrefix!1987 lt!763202 lt!763202)))

(declare-fun lemmaIsPrefixRefl!1305 (List!22303 List!22303) Unit!36902)

(assert (=> d!621774 (= lt!763242 (lemmaIsPrefixRefl!1305 lt!763202 lt!763202))))

(declare-fun rulesValidInductive!1386 (LexerInterface!3607 List!22304) Bool)

(assert (=> d!621774 (rulesValidInductive!1386 thiss!23328 rules!3198)))

(assert (=> d!621774 (= (maxPrefix!2043 thiss!23328 rules!3198 lt!763202) lt!763244)))

(declare-fun b!2031765 () Bool)

(declare-fun res!891015 () Bool)

(assert (=> b!2031765 (=> (not res!891015) (not e!1283264))))

(declare-fun apply!5857 (TokenValueInjection!7844 BalanceConc!14684) TokenValue!4130)

(assert (=> b!2031765 (= res!891015 (= (value!125420 (_1!11926 (get!7060 lt!763244))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763244)))))))))

(declare-fun b!2031766 () Bool)

(assert (=> b!2031766 (= e!1283262 call!124698)))

(declare-fun b!2031767 () Bool)

(declare-fun res!891019 () Bool)

(assert (=> b!2031767 (=> (not res!891019) (not e!1283264))))

(assert (=> b!2031767 (= res!891019 (< (size!17366 (_2!11926 (get!7060 lt!763244))) (size!17366 lt!763202)))))

(declare-fun b!2031768 () Bool)

(declare-fun contains!4106 (List!22304 Rule!7788) Bool)

(assert (=> b!2031768 (= e!1283264 (contains!4106 rules!3198 (rule!6229 (_1!11926 (get!7060 lt!763244)))))))

(declare-fun b!2031769 () Bool)

(declare-fun res!891021 () Bool)

(assert (=> b!2031769 (=> (not res!891021) (not e!1283264))))

(assert (=> b!2031769 (= res!891021 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))) (_2!11926 (get!7060 lt!763244))) lt!763202))))

(declare-fun b!2031770 () Bool)

(assert (=> b!2031770 (= e!1283263 e!1283264)))

(declare-fun res!891016 () Bool)

(assert (=> b!2031770 (=> (not res!891016) (not e!1283264))))

(assert (=> b!2031770 (= res!891016 (isDefined!3960 lt!763244))))

(declare-fun bm!124693 () Bool)

(declare-fun maxPrefixOneRule!1269 (LexerInterface!3607 Rule!7788 List!22303) Option!4674)

(assert (=> bm!124693 (= call!124698 (maxPrefixOneRule!1269 thiss!23328 (h!27623 rules!3198) lt!763202))))

(assert (= (and d!621774 c!328933) b!2031766))

(assert (= (and d!621774 (not c!328933)) b!2031764))

(assert (= (or b!2031766 b!2031764) bm!124693))

(assert (= (and d!621774 (not res!891020)) b!2031770))

(assert (= (and b!2031770 res!891016) b!2031763))

(assert (= (and b!2031763 res!891018) b!2031767))

(assert (= (and b!2031767 res!891019) b!2031769))

(assert (= (and b!2031769 res!891021) b!2031765))

(assert (= (and b!2031765 res!891015) b!2031762))

(assert (= (and b!2031762 res!891017) b!2031768))

(declare-fun m!2472967 () Bool)

(assert (=> b!2031768 m!2472967))

(declare-fun m!2472969 () Bool)

(assert (=> b!2031768 m!2472969))

(assert (=> b!2031762 m!2472967))

(declare-fun m!2472971 () Bool)

(assert (=> b!2031762 m!2472971))

(assert (=> b!2031762 m!2472971))

(declare-fun m!2472973 () Bool)

(assert (=> b!2031762 m!2472973))

(assert (=> b!2031762 m!2472973))

(declare-fun m!2472975 () Bool)

(assert (=> b!2031762 m!2472975))

(assert (=> b!2031767 m!2472967))

(declare-fun m!2472977 () Bool)

(assert (=> b!2031767 m!2472977))

(declare-fun m!2472979 () Bool)

(assert (=> b!2031767 m!2472979))

(assert (=> b!2031763 m!2472967))

(assert (=> b!2031763 m!2472971))

(assert (=> b!2031763 m!2472971))

(assert (=> b!2031763 m!2472973))

(assert (=> b!2031769 m!2472967))

(assert (=> b!2031769 m!2472971))

(assert (=> b!2031769 m!2472971))

(assert (=> b!2031769 m!2472973))

(assert (=> b!2031769 m!2472973))

(declare-fun m!2472981 () Bool)

(assert (=> b!2031769 m!2472981))

(declare-fun m!2472983 () Bool)

(assert (=> b!2031764 m!2472983))

(declare-fun m!2472985 () Bool)

(assert (=> d!621774 m!2472985))

(declare-fun m!2472987 () Bool)

(assert (=> d!621774 m!2472987))

(declare-fun m!2472989 () Bool)

(assert (=> d!621774 m!2472989))

(declare-fun m!2472991 () Bool)

(assert (=> d!621774 m!2472991))

(assert (=> b!2031765 m!2472967))

(declare-fun m!2472993 () Bool)

(assert (=> b!2031765 m!2472993))

(assert (=> b!2031765 m!2472993))

(declare-fun m!2472995 () Bool)

(assert (=> b!2031765 m!2472995))

(declare-fun m!2472997 () Bool)

(assert (=> bm!124693 m!2472997))

(declare-fun m!2472999 () Bool)

(assert (=> b!2031770 m!2472999))

(assert (=> b!2031527 d!621774))

(declare-fun b!2031807 () Bool)

(declare-fun e!1283287 () Bool)

(assert (=> b!2031807 (= e!1283287 true)))

(declare-fun d!621776 () Bool)

(assert (=> d!621776 e!1283287))

(assert (= d!621776 b!2031807))

(declare-fun order!14243 () Int)

(declare-fun order!14245 () Int)

(declare-fun lambda!76557 () Int)

(declare-fun dynLambda!11067 (Int Int) Int)

(declare-fun dynLambda!11068 (Int Int) Int)

(assert (=> b!2031807 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (dynLambda!11068 order!14245 lambda!76557))))

(declare-fun order!14247 () Int)

(declare-fun dynLambda!11069 (Int Int) Int)

(assert (=> b!2031807 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (dynLambda!11068 order!14245 lambda!76557))))

(declare-fun dynLambda!11070 (Int BalanceConc!14684) TokenValue!4130)

(assert (=> d!621776 (= (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))) (list!9077 lt!763199))))

(declare-fun lt!763300 () Unit!36902)

(declare-fun ForallOf!451 (Int BalanceConc!14684) Unit!36902)

(assert (=> d!621776 (= lt!763300 (ForallOf!451 lambda!76557 lt!763199))))

(assert (=> d!621776 (= (lemmaSemiInverse!951 (transformation!3994 (rule!6229 (h!27624 tokens!598))) lt!763199) lt!763300)))

(declare-fun b_lambda!68453 () Bool)

(assert (=> (not b_lambda!68453) (not d!621776)))

(declare-fun tb!128357 () Bool)

(declare-fun t!190682 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190682) tb!128357))

(declare-fun tp!603659 () Bool)

(declare-fun b!2031811 () Bool)

(declare-fun e!1283290 () Bool)

(assert (=> b!2031811 (= e!1283290 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))) tp!603659))))

(declare-fun result!153526 () Bool)

(assert (=> tb!128357 (= result!153526 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))) e!1283290))))

(assert (= tb!128357 b!2031811))

(declare-fun m!2473055 () Bool)

(assert (=> b!2031811 m!2473055))

(declare-fun m!2473059 () Bool)

(assert (=> tb!128357 m!2473059))

(assert (=> d!621776 t!190682))

(declare-fun b_and!161977 () Bool)

(assert (= b_and!161971 (and (=> t!190682 result!153526) b_and!161977)))

(declare-fun tb!128359 () Bool)

(declare-fun t!190684 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190684) tb!128359))

(declare-fun result!153528 () Bool)

(assert (= result!153528 result!153526))

(assert (=> d!621776 t!190684))

(declare-fun b_and!161979 () Bool)

(assert (= b_and!161973 (and (=> t!190684 result!153528) b_and!161979)))

(declare-fun t!190686 () Bool)

(declare-fun tb!128361 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190686) tb!128361))

(declare-fun result!153530 () Bool)

(assert (= result!153530 result!153526))

(assert (=> d!621776 t!190686))

(declare-fun b_and!161981 () Bool)

(assert (= b_and!161975 (and (=> t!190686 result!153530) b_and!161981)))

(declare-fun b_lambda!68455 () Bool)

(assert (=> (not b_lambda!68455) (not d!621776)))

(declare-fun t!190688 () Bool)

(declare-fun tb!128363 () Bool)

(assert (=> (and b!2031523 (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190688) tb!128363))

(declare-fun result!153532 () Bool)

(assert (=> tb!128363 (= result!153532 (inv!21 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))

(declare-fun m!2473077 () Bool)

(assert (=> tb!128363 m!2473077))

(assert (=> d!621776 t!190688))

(declare-fun b_and!161983 () Bool)

(assert (= b_and!161953 (and (=> t!190688 result!153532) b_and!161983)))

(declare-fun tb!128365 () Bool)

(declare-fun t!190690 () Bool)

(assert (=> (and b!2031531 (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190690) tb!128365))

(declare-fun result!153536 () Bool)

(assert (= result!153536 result!153532))

(assert (=> d!621776 t!190690))

(declare-fun b_and!161985 () Bool)

(assert (= b_and!161957 (and (=> t!190690 result!153536) b_and!161985)))

(declare-fun t!190692 () Bool)

(declare-fun tb!128367 () Bool)

(assert (=> (and b!2031513 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190692) tb!128367))

(declare-fun result!153538 () Bool)

(assert (= result!153538 result!153532))

(assert (=> d!621776 t!190692))

(declare-fun b_and!161987 () Bool)

(assert (= b_and!161961 (and (=> t!190692 result!153538) b_and!161987)))

(declare-fun m!2473079 () Bool)

(assert (=> d!621776 m!2473079))

(declare-fun m!2473081 () Bool)

(assert (=> d!621776 m!2473081))

(declare-fun m!2473083 () Bool)

(assert (=> d!621776 m!2473083))

(declare-fun m!2473085 () Bool)

(assert (=> d!621776 m!2473085))

(assert (=> d!621776 m!2472737))

(assert (=> d!621776 m!2473079))

(assert (=> d!621776 m!2473081))

(assert (=> b!2031527 d!621776))

(declare-fun b!2031828 () Bool)

(declare-fun res!891044 () Bool)

(declare-fun e!1283303 () Bool)

(assert (=> b!2031828 (=> (not res!891044) (not e!1283303))))

(declare-fun lt!763307 () Option!4674)

(assert (=> b!2031828 (= res!891044 (matchR!2685 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))))))

(declare-fun b!2031829 () Bool)

(declare-fun res!891045 () Bool)

(assert (=> b!2031829 (=> (not res!891045) (not e!1283303))))

(assert (=> b!2031829 (= res!891045 (= (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))) (originalCharacters!4801 (_1!11926 (get!7060 lt!763307)))))))

(declare-fun b!2031830 () Bool)

(declare-fun e!1283301 () Option!4674)

(declare-fun lt!763308 () Option!4674)

(declare-fun lt!763306 () Option!4674)

(assert (=> b!2031830 (= e!1283301 (ite (and ((_ is None!4673) lt!763308) ((_ is None!4673) lt!763306)) None!4673 (ite ((_ is None!4673) lt!763306) lt!763308 (ite ((_ is None!4673) lt!763308) lt!763306 (ite (>= (size!17362 (_1!11926 (v!27006 lt!763308))) (size!17362 (_1!11926 (v!27006 lt!763306)))) lt!763308 lt!763306)))))))

(declare-fun call!124700 () Option!4674)

(assert (=> b!2031830 (= lt!763308 call!124700)))

(assert (=> b!2031830 (= lt!763306 (maxPrefix!2043 thiss!23328 (t!190663 rules!3198) (++!6013 lt!763202 lt!763193)))))

(declare-fun d!621786 () Bool)

(declare-fun e!1283302 () Bool)

(assert (=> d!621786 e!1283302))

(declare-fun res!891047 () Bool)

(assert (=> d!621786 (=> res!891047 e!1283302)))

(assert (=> d!621786 (= res!891047 (isEmpty!13882 lt!763307))))

(assert (=> d!621786 (= lt!763307 e!1283301)))

(declare-fun c!328943 () Bool)

(assert (=> d!621786 (= c!328943 (and ((_ is Cons!22222) rules!3198) ((_ is Nil!22222) (t!190663 rules!3198))))))

(declare-fun lt!763304 () Unit!36902)

(declare-fun lt!763305 () Unit!36902)

(assert (=> d!621786 (= lt!763304 lt!763305)))

(assert (=> d!621786 (isPrefix!1987 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193))))

(assert (=> d!621786 (= lt!763305 (lemmaIsPrefixRefl!1305 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193)))))

(assert (=> d!621786 (rulesValidInductive!1386 thiss!23328 rules!3198)))

(assert (=> d!621786 (= (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193)) lt!763307)))

(declare-fun b!2031831 () Bool)

(declare-fun res!891042 () Bool)

(assert (=> b!2031831 (=> (not res!891042) (not e!1283303))))

(assert (=> b!2031831 (= res!891042 (= (value!125420 (_1!11926 (get!7060 lt!763307))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763307)))))))))

(declare-fun b!2031832 () Bool)

(assert (=> b!2031832 (= e!1283301 call!124700)))

(declare-fun b!2031833 () Bool)

(declare-fun res!891046 () Bool)

(assert (=> b!2031833 (=> (not res!891046) (not e!1283303))))

(assert (=> b!2031833 (= res!891046 (< (size!17366 (_2!11926 (get!7060 lt!763307))) (size!17366 (++!6013 lt!763202 lt!763193))))))

(declare-fun b!2031834 () Bool)

(assert (=> b!2031834 (= e!1283303 (contains!4106 rules!3198 (rule!6229 (_1!11926 (get!7060 lt!763307)))))))

(declare-fun b!2031835 () Bool)

(declare-fun res!891048 () Bool)

(assert (=> b!2031835 (=> (not res!891048) (not e!1283303))))

(assert (=> b!2031835 (= res!891048 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))) (_2!11926 (get!7060 lt!763307))) (++!6013 lt!763202 lt!763193)))))

(declare-fun b!2031836 () Bool)

(assert (=> b!2031836 (= e!1283302 e!1283303)))

(declare-fun res!891043 () Bool)

(assert (=> b!2031836 (=> (not res!891043) (not e!1283303))))

(assert (=> b!2031836 (= res!891043 (isDefined!3960 lt!763307))))

(declare-fun bm!124695 () Bool)

(assert (=> bm!124695 (= call!124700 (maxPrefixOneRule!1269 thiss!23328 (h!27623 rules!3198) (++!6013 lt!763202 lt!763193)))))

(assert (= (and d!621786 c!328943) b!2031832))

(assert (= (and d!621786 (not c!328943)) b!2031830))

(assert (= (or b!2031832 b!2031830) bm!124695))

(assert (= (and d!621786 (not res!891047)) b!2031836))

(assert (= (and b!2031836 res!891043) b!2031829))

(assert (= (and b!2031829 res!891045) b!2031833))

(assert (= (and b!2031833 res!891046) b!2031835))

(assert (= (and b!2031835 res!891048) b!2031831))

(assert (= (and b!2031831 res!891042) b!2031828))

(assert (= (and b!2031828 res!891044) b!2031834))

(declare-fun m!2473103 () Bool)

(assert (=> b!2031834 m!2473103))

(declare-fun m!2473105 () Bool)

(assert (=> b!2031834 m!2473105))

(assert (=> b!2031828 m!2473103))

(declare-fun m!2473107 () Bool)

(assert (=> b!2031828 m!2473107))

(assert (=> b!2031828 m!2473107))

(declare-fun m!2473109 () Bool)

(assert (=> b!2031828 m!2473109))

(assert (=> b!2031828 m!2473109))

(declare-fun m!2473111 () Bool)

(assert (=> b!2031828 m!2473111))

(assert (=> b!2031833 m!2473103))

(declare-fun m!2473113 () Bool)

(assert (=> b!2031833 m!2473113))

(assert (=> b!2031833 m!2472713))

(declare-fun m!2473115 () Bool)

(assert (=> b!2031833 m!2473115))

(assert (=> b!2031829 m!2473103))

(assert (=> b!2031829 m!2473107))

(assert (=> b!2031829 m!2473107))

(assert (=> b!2031829 m!2473109))

(assert (=> b!2031835 m!2473103))

(assert (=> b!2031835 m!2473107))

(assert (=> b!2031835 m!2473107))

(assert (=> b!2031835 m!2473109))

(assert (=> b!2031835 m!2473109))

(declare-fun m!2473117 () Bool)

(assert (=> b!2031835 m!2473117))

(assert (=> b!2031830 m!2472713))

(declare-fun m!2473119 () Bool)

(assert (=> b!2031830 m!2473119))

(declare-fun m!2473121 () Bool)

(assert (=> d!621786 m!2473121))

(assert (=> d!621786 m!2472713))

(assert (=> d!621786 m!2472713))

(declare-fun m!2473123 () Bool)

(assert (=> d!621786 m!2473123))

(assert (=> d!621786 m!2472713))

(assert (=> d!621786 m!2472713))

(declare-fun m!2473125 () Bool)

(assert (=> d!621786 m!2473125))

(assert (=> d!621786 m!2472991))

(assert (=> b!2031831 m!2473103))

(declare-fun m!2473127 () Bool)

(assert (=> b!2031831 m!2473127))

(assert (=> b!2031831 m!2473127))

(declare-fun m!2473129 () Bool)

(assert (=> b!2031831 m!2473129))

(assert (=> bm!124695 m!2472713))

(declare-fun m!2473131 () Bool)

(assert (=> bm!124695 m!2473131))

(declare-fun m!2473133 () Bool)

(assert (=> b!2031836 m!2473133))

(assert (=> b!2031527 d!621786))

(declare-fun bs!421054 () Bool)

(declare-fun b!2031902 () Bool)

(assert (= bs!421054 (and b!2031902 b!2031524)))

(declare-fun lambda!76560 () Int)

(assert (=> bs!421054 (not (= lambda!76560 lambda!76551))))

(declare-fun b!2031919 () Bool)

(declare-fun e!1283345 () Bool)

(assert (=> b!2031919 (= e!1283345 true)))

(declare-fun b!2031918 () Bool)

(declare-fun e!1283344 () Bool)

(assert (=> b!2031918 (= e!1283344 e!1283345)))

(declare-fun b!2031917 () Bool)

(declare-fun e!1283343 () Bool)

(assert (=> b!2031917 (= e!1283343 e!1283344)))

(assert (=> b!2031902 e!1283343))

(assert (= b!2031918 b!2031919))

(assert (= b!2031917 b!2031918))

(assert (= (and b!2031902 ((_ is Cons!22222) rules!3198)) b!2031917))

(declare-fun order!14249 () Int)

(declare-fun dynLambda!11071 (Int Int) Int)

(assert (=> b!2031919 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76560))))

(assert (=> b!2031919 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76560))))

(assert (=> b!2031902 true))

(declare-fun c!328959 () Bool)

(declare-fun call!124716 () BalanceConc!14684)

(declare-fun call!124717 () List!22303)

(declare-fun call!124715 () BalanceConc!14684)

(declare-fun bm!124709 () Bool)

(assert (=> bm!124709 (= call!124717 (list!9077 (ite c!328959 call!124716 call!124715)))))

(declare-fun b!2031901 () Bool)

(declare-fun e!1283335 () List!22303)

(assert (=> b!2031901 (= e!1283335 Nil!22221)))

(declare-fun e!1283334 () List!22303)

(assert (=> b!2031902 (= e!1283335 e!1283334)))

(declare-fun lt!763342 () Unit!36902)

(declare-fun forallContained!750 (List!22305 Int Token!7540) Unit!36902)

(assert (=> b!2031902 (= lt!763342 (forallContained!750 (t!190664 tokens!598) lambda!76560 (h!27624 (t!190664 tokens!598))))))

(declare-fun lt!763343 () List!22303)

(assert (=> b!2031902 (= lt!763343 (printWithSeparatorTokenWhenNeededList!636 thiss!23328 rules!3198 (t!190664 (t!190664 tokens!598)) separatorToken!354))))

(declare-fun lt!763344 () Option!4674)

(assert (=> b!2031902 (= lt!763344 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343)))))

(assert (=> b!2031902 (= c!328959 (and ((_ is Some!4673) lt!763344) (= (_1!11926 (v!27006 lt!763344)) (h!27624 (t!190664 tokens!598)))))))

(declare-fun d!621798 () Bool)

(declare-fun c!328960 () Bool)

(assert (=> d!621798 (= c!328960 ((_ is Cons!22223) (t!190664 tokens!598)))))

(assert (=> d!621798 (= (printWithSeparatorTokenWhenNeededList!636 thiss!23328 rules!3198 (t!190664 tokens!598) separatorToken!354) e!1283335)))

(declare-fun b!2031903 () Bool)

(declare-fun e!1283336 () List!22303)

(assert (=> b!2031903 (= e!1283336 call!124717)))

(declare-fun b!2031904 () Bool)

(declare-fun e!1283333 () List!22303)

(declare-fun call!124714 () List!22303)

(assert (=> b!2031904 (= e!1283333 (++!6013 call!124714 lt!763343))))

(declare-fun bm!124710 () Bool)

(declare-fun call!124718 () List!22303)

(assert (=> bm!124710 (= call!124718 call!124717)))

(declare-fun b!2031905 () Bool)

(assert (=> b!2031905 (= e!1283333 Nil!22221)))

(assert (=> b!2031905 (= (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 tokens!598)))) (printTailRec!1075 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))) 0 (BalanceConc!14685 Empty!7434)))))

(declare-fun lt!763345 () Unit!36902)

(declare-fun Unit!36908 () Unit!36902)

(assert (=> b!2031905 (= lt!763345 Unit!36908)))

(declare-fun lt!763347 () Unit!36902)

(assert (=> b!2031905 (= lt!763347 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!781 thiss!23328 rules!3198 call!124718 lt!763343))))

(assert (=> b!2031905 false))

(declare-fun lt!763346 () Unit!36902)

(declare-fun Unit!36909 () Unit!36902)

(assert (=> b!2031905 (= lt!763346 Unit!36909)))

(declare-fun bm!124711 () Bool)

(declare-fun c!328958 () Bool)

(assert (=> bm!124711 (= call!124716 (charsOf!2534 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598))))))))

(declare-fun b!2031906 () Bool)

(assert (=> b!2031906 (= e!1283334 call!124714)))

(declare-fun b!2031907 () Bool)

(assert (=> b!2031907 (= c!328958 (and ((_ is Some!4673) lt!763344) (not (= (_1!11926 (v!27006 lt!763344)) (h!27624 (t!190664 tokens!598))))))))

(assert (=> b!2031907 (= e!1283334 e!1283333)))

(declare-fun bm!124712 () Bool)

(assert (=> bm!124712 (= call!124715 call!124716)))

(declare-fun b!2031908 () Bool)

(assert (=> b!2031908 (= e!1283336 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))))))

(declare-fun bm!124713 () Bool)

(declare-fun c!328961 () Bool)

(assert (=> bm!124713 (= c!328961 c!328959)))

(assert (=> bm!124713 (= call!124714 (++!6013 e!1283336 (ite c!328959 lt!763343 call!124718)))))

(assert (= (and d!621798 c!328960) b!2031902))

(assert (= (and d!621798 (not c!328960)) b!2031901))

(assert (= (and b!2031902 c!328959) b!2031906))

(assert (= (and b!2031902 (not c!328959)) b!2031907))

(assert (= (and b!2031907 c!328958) b!2031904))

(assert (= (and b!2031907 (not c!328958)) b!2031905))

(assert (= (or b!2031904 b!2031905) bm!124712))

(assert (= (or b!2031904 b!2031905) bm!124710))

(assert (= (or b!2031906 bm!124712) bm!124711))

(assert (= (or b!2031906 bm!124710) bm!124709))

(assert (= (or b!2031906 b!2031904) bm!124713))

(assert (= (and bm!124713 c!328961) b!2031903))

(assert (= (and bm!124713 (not c!328961)) b!2031908))

(declare-fun m!2473199 () Bool)

(assert (=> bm!124711 m!2473199))

(declare-fun m!2473201 () Bool)

(assert (=> b!2031902 m!2473201))

(declare-fun m!2473203 () Bool)

(assert (=> b!2031902 m!2473203))

(declare-fun m!2473205 () Bool)

(assert (=> b!2031902 m!2473205))

(declare-fun m!2473207 () Bool)

(assert (=> b!2031902 m!2473207))

(assert (=> b!2031902 m!2473201))

(declare-fun m!2473209 () Bool)

(assert (=> b!2031902 m!2473209))

(declare-fun m!2473211 () Bool)

(assert (=> b!2031902 m!2473211))

(assert (=> b!2031902 m!2473205))

(assert (=> b!2031902 m!2473207))

(declare-fun m!2473213 () Bool)

(assert (=> b!2031904 m!2473213))

(assert (=> b!2031908 m!2473205))

(assert (=> b!2031908 m!2473205))

(assert (=> b!2031908 m!2473207))

(declare-fun m!2473215 () Bool)

(assert (=> b!2031905 m!2473215))

(assert (=> b!2031905 m!2473215))

(declare-fun m!2473217 () Bool)

(assert (=> b!2031905 m!2473217))

(assert (=> b!2031905 m!2473215))

(declare-fun m!2473219 () Bool)

(assert (=> b!2031905 m!2473219))

(declare-fun m!2473221 () Bool)

(assert (=> b!2031905 m!2473221))

(declare-fun m!2473223 () Bool)

(assert (=> bm!124713 m!2473223))

(declare-fun m!2473225 () Bool)

(assert (=> bm!124709 m!2473225))

(assert (=> b!2031527 d!621798))

(declare-fun b!2031928 () Bool)

(declare-fun e!1283350 () Bool)

(assert (=> b!2031928 (= e!1283350 true)))

(declare-fun d!621812 () Bool)

(assert (=> d!621812 e!1283350))

(assert (= d!621812 b!2031928))

(declare-fun order!14251 () Int)

(declare-fun lambda!76563 () Int)

(declare-fun dynLambda!11072 (Int Int) Int)

(assert (=> b!2031928 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (dynLambda!11072 order!14251 lambda!76563))))

(assert (=> b!2031928 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (dynLambda!11072 order!14251 lambda!76563))))

(assert (=> d!621812 (= (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))))))

(declare-fun lt!763350 () Unit!36902)

(declare-fun Forall2of!247 (Int BalanceConc!14684 BalanceConc!14684) Unit!36902)

(assert (=> d!621812 (= lt!763350 (Forall2of!247 lambda!76563 lt!763199 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))))))

(assert (=> d!621812 (= (list!9077 lt!763199) (list!9077 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))))))

(assert (=> d!621812 (= (lemmaEqSameImage!680 (transformation!3994 (rule!6229 (h!27624 tokens!598))) lt!763199 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))) lt!763350)))

(declare-fun b_lambda!68457 () Bool)

(assert (=> (not b_lambda!68457) (not d!621812)))

(assert (=> d!621812 t!190688))

(declare-fun b_and!161989 () Bool)

(assert (= b_and!161983 (and (=> t!190688 result!153532) b_and!161989)))

(assert (=> d!621812 t!190690))

(declare-fun b_and!161991 () Bool)

(assert (= b_and!161985 (and (=> t!190690 result!153536) b_and!161991)))

(assert (=> d!621812 t!190692))

(declare-fun b_and!161993 () Bool)

(assert (= b_and!161987 (and (=> t!190692 result!153538) b_and!161993)))

(declare-fun b_lambda!68459 () Bool)

(assert (=> (not b_lambda!68459) (not d!621812)))

(declare-fun t!190696 () Bool)

(declare-fun tb!128369 () Bool)

(assert (=> (and b!2031523 (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190696) tb!128369))

(declare-fun result!153540 () Bool)

(assert (=> tb!128369 (= result!153540 (inv!21 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(declare-fun m!2473227 () Bool)

(assert (=> tb!128369 m!2473227))

(assert (=> d!621812 t!190696))

(declare-fun b_and!161995 () Bool)

(assert (= b_and!161989 (and (=> t!190696 result!153540) b_and!161995)))

(declare-fun tb!128371 () Bool)

(declare-fun t!190698 () Bool)

(assert (=> (and b!2031531 (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190698) tb!128371))

(declare-fun result!153542 () Bool)

(assert (= result!153542 result!153540))

(assert (=> d!621812 t!190698))

(declare-fun b_and!161997 () Bool)

(assert (= b_and!161991 (and (=> t!190698 result!153542) b_and!161997)))

(declare-fun t!190700 () Bool)

(declare-fun tb!128373 () Bool)

(assert (=> (and b!2031513 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190700) tb!128373))

(declare-fun result!153544 () Bool)

(assert (= result!153544 result!153540))

(assert (=> d!621812 t!190700))

(declare-fun b_and!161999 () Bool)

(assert (= b_and!161993 (and (=> t!190700 result!153544) b_and!161999)))

(assert (=> d!621812 m!2472721))

(declare-fun m!2473229 () Bool)

(assert (=> d!621812 m!2473229))

(assert (=> d!621812 m!2473079))

(assert (=> d!621812 m!2472737))

(assert (=> d!621812 m!2472721))

(declare-fun m!2473231 () Bool)

(assert (=> d!621812 m!2473231))

(assert (=> d!621812 m!2472721))

(declare-fun m!2473233 () Bool)

(assert (=> d!621812 m!2473233))

(assert (=> b!2031527 d!621812))

(declare-fun d!621814 () Bool)

(assert (=> d!621814 (= (isDefined!3959 lt!763200) (not (isEmpty!13881 lt!763200)))))

(declare-fun bs!421055 () Bool)

(assert (= bs!421055 d!621814))

(declare-fun m!2473235 () Bool)

(assert (=> bs!421055 m!2473235))

(assert (=> b!2031527 d!621814))

(declare-fun d!621816 () Bool)

(declare-fun lt!763353 () BalanceConc!14684)

(assert (=> d!621816 (= (list!9077 lt!763353) (originalCharacters!4801 separatorToken!354))))

(assert (=> d!621816 (= lt!763353 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))))

(assert (=> d!621816 (= (charsOf!2534 separatorToken!354) lt!763353)))

(declare-fun b_lambda!68461 () Bool)

(assert (=> (not b_lambda!68461) (not d!621816)))

(assert (=> d!621816 t!190670))

(declare-fun b_and!162001 () Bool)

(assert (= b_and!161977 (and (=> t!190670 result!153512) b_and!162001)))

(assert (=> d!621816 t!190672))

(declare-fun b_and!162003 () Bool)

(assert (= b_and!161979 (and (=> t!190672 result!153516) b_and!162003)))

(assert (=> d!621816 t!190674))

(declare-fun b_and!162005 () Bool)

(assert (= b_and!161981 (and (=> t!190674 result!153518) b_and!162005)))

(declare-fun m!2473237 () Bool)

(assert (=> d!621816 m!2473237))

(assert (=> d!621816 m!2472915))

(assert (=> b!2031527 d!621816))

(declare-fun d!621818 () Bool)

(declare-fun list!9081 (Conc!7434) List!22303)

(assert (=> d!621818 (= (list!9077 lt!763199) (list!9081 (c!328893 lt!763199)))))

(declare-fun bs!421056 () Bool)

(assert (= bs!421056 d!621818))

(declare-fun m!2473239 () Bool)

(assert (=> bs!421056 m!2473239))

(assert (=> b!2031527 d!621818))

(declare-fun b!2031941 () Bool)

(declare-fun e!1283363 () Bool)

(declare-fun lt!763361 () Option!4673)

(assert (=> b!2031941 (= e!1283363 (= (tag!4482 (get!7059 lt!763361)) (tag!4482 (rule!6229 separatorToken!354))))))

(declare-fun b!2031942 () Bool)

(declare-fun e!1283360 () Option!4673)

(declare-fun e!1283362 () Option!4673)

(assert (=> b!2031942 (= e!1283360 e!1283362)))

(declare-fun c!328966 () Bool)

(assert (=> b!2031942 (= c!328966 (and ((_ is Cons!22222) rules!3198) (not (= (tag!4482 (h!27623 rules!3198)) (tag!4482 (rule!6229 separatorToken!354))))))))

(declare-fun b!2031943 () Bool)

(declare-fun e!1283361 () Bool)

(assert (=> b!2031943 (= e!1283361 e!1283363)))

(declare-fun res!891092 () Bool)

(assert (=> b!2031943 (=> (not res!891092) (not e!1283363))))

(assert (=> b!2031943 (= res!891092 (contains!4106 rules!3198 (get!7059 lt!763361)))))

(declare-fun b!2031944 () Bool)

(assert (=> b!2031944 (= e!1283360 (Some!4672 (h!27623 rules!3198)))))

(declare-fun b!2031945 () Bool)

(assert (=> b!2031945 (= e!1283362 None!4672)))

(declare-fun b!2031946 () Bool)

(declare-fun lt!763362 () Unit!36902)

(declare-fun lt!763360 () Unit!36902)

(assert (=> b!2031946 (= lt!763362 lt!763360)))

(assert (=> b!2031946 (rulesInvariant!3214 thiss!23328 (t!190663 rules!3198))))

(declare-fun lemmaInvariantOnRulesThenOnTail!312 (LexerInterface!3607 Rule!7788 List!22304) Unit!36902)

(assert (=> b!2031946 (= lt!763360 (lemmaInvariantOnRulesThenOnTail!312 thiss!23328 (h!27623 rules!3198) (t!190663 rules!3198)))))

(assert (=> b!2031946 (= e!1283362 (getRuleFromTag!809 thiss!23328 (t!190663 rules!3198) (tag!4482 (rule!6229 separatorToken!354))))))

(declare-fun d!621820 () Bool)

(assert (=> d!621820 e!1283361))

(declare-fun res!891091 () Bool)

(assert (=> d!621820 (=> res!891091 e!1283361)))

(assert (=> d!621820 (= res!891091 (isEmpty!13881 lt!763361))))

(assert (=> d!621820 (= lt!763361 e!1283360)))

(declare-fun c!328967 () Bool)

(assert (=> d!621820 (= c!328967 (and ((_ is Cons!22222) rules!3198) (= (tag!4482 (h!27623 rules!3198)) (tag!4482 (rule!6229 separatorToken!354)))))))

(assert (=> d!621820 (rulesInvariant!3214 thiss!23328 rules!3198)))

(assert (=> d!621820 (= (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))) lt!763361)))

(assert (= (and d!621820 c!328967) b!2031944))

(assert (= (and d!621820 (not c!328967)) b!2031942))

(assert (= (and b!2031942 c!328966) b!2031946))

(assert (= (and b!2031942 (not c!328966)) b!2031945))

(assert (= (and d!621820 (not res!891091)) b!2031943))

(assert (= (and b!2031943 res!891092) b!2031941))

(declare-fun m!2473241 () Bool)

(assert (=> b!2031941 m!2473241))

(assert (=> b!2031943 m!2473241))

(assert (=> b!2031943 m!2473241))

(declare-fun m!2473243 () Bool)

(assert (=> b!2031943 m!2473243))

(declare-fun m!2473245 () Bool)

(assert (=> b!2031946 m!2473245))

(declare-fun m!2473247 () Bool)

(assert (=> b!2031946 m!2473247))

(declare-fun m!2473249 () Bool)

(assert (=> b!2031946 m!2473249))

(declare-fun m!2473251 () Bool)

(assert (=> d!621820 m!2473251))

(assert (=> d!621820 m!2472749))

(assert (=> b!2031527 d!621820))

(declare-fun b!2031947 () Bool)

(declare-fun e!1283367 () Bool)

(declare-fun lt!763364 () Option!4673)

(assert (=> b!2031947 (= e!1283367 (= (tag!4482 (get!7059 lt!763364)) (tag!4482 (rule!6229 (h!27624 tokens!598)))))))

(declare-fun b!2031948 () Bool)

(declare-fun e!1283364 () Option!4673)

(declare-fun e!1283366 () Option!4673)

(assert (=> b!2031948 (= e!1283364 e!1283366)))

(declare-fun c!328968 () Bool)

(assert (=> b!2031948 (= c!328968 (and ((_ is Cons!22222) rules!3198) (not (= (tag!4482 (h!27623 rules!3198)) (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))

(declare-fun b!2031949 () Bool)

(declare-fun e!1283365 () Bool)

(assert (=> b!2031949 (= e!1283365 e!1283367)))

(declare-fun res!891094 () Bool)

(assert (=> b!2031949 (=> (not res!891094) (not e!1283367))))

(assert (=> b!2031949 (= res!891094 (contains!4106 rules!3198 (get!7059 lt!763364)))))

(declare-fun b!2031950 () Bool)

(assert (=> b!2031950 (= e!1283364 (Some!4672 (h!27623 rules!3198)))))

(declare-fun b!2031951 () Bool)

(assert (=> b!2031951 (= e!1283366 None!4672)))

(declare-fun b!2031952 () Bool)

(declare-fun lt!763365 () Unit!36902)

(declare-fun lt!763363 () Unit!36902)

(assert (=> b!2031952 (= lt!763365 lt!763363)))

(assert (=> b!2031952 (rulesInvariant!3214 thiss!23328 (t!190663 rules!3198))))

(assert (=> b!2031952 (= lt!763363 (lemmaInvariantOnRulesThenOnTail!312 thiss!23328 (h!27623 rules!3198) (t!190663 rules!3198)))))

(assert (=> b!2031952 (= e!1283366 (getRuleFromTag!809 thiss!23328 (t!190663 rules!3198) (tag!4482 (rule!6229 (h!27624 tokens!598)))))))

(declare-fun d!621822 () Bool)

(assert (=> d!621822 e!1283365))

(declare-fun res!891093 () Bool)

(assert (=> d!621822 (=> res!891093 e!1283365)))

(assert (=> d!621822 (= res!891093 (isEmpty!13881 lt!763364))))

(assert (=> d!621822 (= lt!763364 e!1283364)))

(declare-fun c!328969 () Bool)

(assert (=> d!621822 (= c!328969 (and ((_ is Cons!22222) rules!3198) (= (tag!4482 (h!27623 rules!3198)) (tag!4482 (rule!6229 (h!27624 tokens!598))))))))

(assert (=> d!621822 (rulesInvariant!3214 thiss!23328 rules!3198)))

(assert (=> d!621822 (= (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))) lt!763364)))

(assert (= (and d!621822 c!328969) b!2031950))

(assert (= (and d!621822 (not c!328969)) b!2031948))

(assert (= (and b!2031948 c!328968) b!2031952))

(assert (= (and b!2031948 (not c!328968)) b!2031951))

(assert (= (and d!621822 (not res!891093)) b!2031949))

(assert (= (and b!2031949 res!891094) b!2031947))

(declare-fun m!2473253 () Bool)

(assert (=> b!2031947 m!2473253))

(assert (=> b!2031949 m!2473253))

(assert (=> b!2031949 m!2473253))

(declare-fun m!2473255 () Bool)

(assert (=> b!2031949 m!2473255))

(assert (=> b!2031952 m!2473245))

(assert (=> b!2031952 m!2473247))

(declare-fun m!2473257 () Bool)

(assert (=> b!2031952 m!2473257))

(declare-fun m!2473259 () Bool)

(assert (=> d!621822 m!2473259))

(assert (=> d!621822 m!2472749))

(assert (=> b!2031527 d!621822))

(declare-fun d!621824 () Bool)

(declare-fun e!1283368 () Bool)

(assert (=> d!621824 e!1283368))

(declare-fun res!891095 () Bool)

(assert (=> d!621824 (=> (not res!891095) (not e!1283368))))

(assert (=> d!621824 (= res!891095 (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))))))

(declare-fun lt!763366 () Unit!36902)

(assert (=> d!621824 (= lt!763366 (choose!12392 thiss!23328 rules!3198 lt!763185 separatorToken!354))))

(assert (=> d!621824 (rulesInvariant!3214 thiss!23328 rules!3198)))

(assert (=> d!621824 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 thiss!23328 rules!3198 lt!763185 separatorToken!354) lt!763366)))

(declare-fun b!2031953 () Bool)

(declare-fun res!891096 () Bool)

(assert (=> b!2031953 (=> (not res!891096) (not e!1283368))))

(assert (=> b!2031953 (= res!891096 (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))) (list!9077 (charsOf!2534 separatorToken!354))))))

(declare-fun b!2031954 () Bool)

(assert (=> b!2031954 (= e!1283368 (= (rule!6229 separatorToken!354) (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))))))

(assert (= (and d!621824 res!891095) b!2031953))

(assert (= (and b!2031953 res!891096) b!2031954))

(assert (=> d!621824 m!2472725))

(assert (=> d!621824 m!2472725))

(declare-fun m!2473261 () Bool)

(assert (=> d!621824 m!2473261))

(declare-fun m!2473263 () Bool)

(assert (=> d!621824 m!2473263))

(assert (=> d!621824 m!2472749))

(assert (=> b!2031953 m!2472745))

(declare-fun m!2473265 () Bool)

(assert (=> b!2031953 m!2473265))

(assert (=> b!2031953 m!2472729))

(assert (=> b!2031953 m!2472745))

(assert (=> b!2031953 m!2472725))

(assert (=> b!2031953 m!2472725))

(declare-fun m!2473267 () Bool)

(assert (=> b!2031953 m!2473267))

(assert (=> b!2031953 m!2472729))

(assert (=> b!2031954 m!2472725))

(assert (=> b!2031954 m!2472725))

(assert (=> b!2031954 m!2473267))

(assert (=> b!2031527 d!621824))

(declare-fun d!621826 () Bool)

(assert (=> d!621826 (= (list!9077 (charsOf!2534 separatorToken!354)) (list!9081 (c!328893 (charsOf!2534 separatorToken!354))))))

(declare-fun bs!421057 () Bool)

(assert (= bs!421057 d!621826))

(declare-fun m!2473269 () Bool)

(assert (=> bs!421057 m!2473269))

(assert (=> b!2031527 d!621826))

(declare-fun d!621828 () Bool)

(declare-fun lt!763367 () BalanceConc!14684)

(assert (=> d!621828 (= (list!9077 lt!763367) (originalCharacters!4801 (h!27624 tokens!598)))))

(assert (=> d!621828 (= lt!763367 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))))

(assert (=> d!621828 (= (charsOf!2534 (h!27624 tokens!598)) lt!763367)))

(declare-fun b_lambda!68463 () Bool)

(assert (=> (not b_lambda!68463) (not d!621828)))

(assert (=> d!621828 t!190676))

(declare-fun b_and!162007 () Bool)

(assert (= b_and!162001 (and (=> t!190676 result!153520) b_and!162007)))

(assert (=> d!621828 t!190678))

(declare-fun b_and!162009 () Bool)

(assert (= b_and!162003 (and (=> t!190678 result!153522) b_and!162009)))

(assert (=> d!621828 t!190680))

(declare-fun b_and!162011 () Bool)

(assert (= b_and!162005 (and (=> t!190680 result!153524) b_and!162011)))

(declare-fun m!2473271 () Bool)

(assert (=> d!621828 m!2473271))

(assert (=> d!621828 m!2472931))

(assert (=> b!2031527 d!621828))

(declare-fun e!1283374 () Bool)

(declare-fun lt!763370 () List!22303)

(declare-fun b!2031966 () Bool)

(assert (=> b!2031966 (= e!1283374 (or (not (= lt!763193 Nil!22221)) (= lt!763370 lt!763202)))))

(declare-fun b!2031965 () Bool)

(declare-fun res!891102 () Bool)

(assert (=> b!2031965 (=> (not res!891102) (not e!1283374))))

(assert (=> b!2031965 (= res!891102 (= (size!17366 lt!763370) (+ (size!17366 lt!763202) (size!17366 lt!763193))))))

(declare-fun b!2031963 () Bool)

(declare-fun e!1283373 () List!22303)

(assert (=> b!2031963 (= e!1283373 lt!763193)))

(declare-fun b!2031964 () Bool)

(assert (=> b!2031964 (= e!1283373 (Cons!22221 (h!27622 lt!763202) (++!6013 (t!190662 lt!763202) lt!763193)))))

(declare-fun d!621830 () Bool)

(assert (=> d!621830 e!1283374))

(declare-fun res!891101 () Bool)

(assert (=> d!621830 (=> (not res!891101) (not e!1283374))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3285 (List!22303) (InoxSet C!10984))

(assert (=> d!621830 (= res!891101 (= (content!3285 lt!763370) ((_ map or) (content!3285 lt!763202) (content!3285 lt!763193))))))

(assert (=> d!621830 (= lt!763370 e!1283373)))

(declare-fun c!328972 () Bool)

(assert (=> d!621830 (= c!328972 ((_ is Nil!22221) lt!763202))))

(assert (=> d!621830 (= (++!6013 lt!763202 lt!763193) lt!763370)))

(assert (= (and d!621830 c!328972) b!2031963))

(assert (= (and d!621830 (not c!328972)) b!2031964))

(assert (= (and d!621830 res!891101) b!2031965))

(assert (= (and b!2031965 res!891102) b!2031966))

(declare-fun m!2473273 () Bool)

(assert (=> b!2031965 m!2473273))

(assert (=> b!2031965 m!2472979))

(declare-fun m!2473275 () Bool)

(assert (=> b!2031965 m!2473275))

(declare-fun m!2473277 () Bool)

(assert (=> b!2031964 m!2473277))

(declare-fun m!2473279 () Bool)

(assert (=> d!621830 m!2473279))

(declare-fun m!2473281 () Bool)

(assert (=> d!621830 m!2473281))

(declare-fun m!2473283 () Bool)

(assert (=> d!621830 m!2473283))

(assert (=> b!2031527 d!621830))

(declare-fun d!621832 () Bool)

(declare-fun fromListB!1284 (List!22303) BalanceConc!14684)

(assert (=> d!621832 (= (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))) (fromListB!1284 (originalCharacters!4801 (h!27624 tokens!598))))))

(declare-fun bs!421058 () Bool)

(assert (= bs!421058 d!621832))

(declare-fun m!2473285 () Bool)

(assert (=> bs!421058 m!2473285))

(assert (=> b!2031527 d!621832))

(declare-fun lt!763375 () Bool)

(declare-fun d!621834 () Bool)

(declare-fun isEmpty!13885 (List!22305) Bool)

(assert (=> d!621834 (= lt!763375 (isEmpty!13885 (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(declare-fun isEmpty!13886 (Conc!7435) Bool)

(assert (=> d!621834 (= lt!763375 (isEmpty!13886 (c!328895 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(assert (=> d!621834 (= (isEmpty!13874 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202)))) lt!763375)))

(declare-fun bs!421059 () Bool)

(assert (= bs!421059 d!621834))

(declare-fun m!2473287 () Bool)

(assert (=> bs!421059 m!2473287))

(assert (=> bs!421059 m!2473287))

(declare-fun m!2473289 () Bool)

(assert (=> bs!421059 m!2473289))

(declare-fun m!2473291 () Bool)

(assert (=> bs!421059 m!2473291))

(assert (=> b!2031518 d!621834))

(declare-fun b!2032067 () Bool)

(declare-fun res!891129 () Bool)

(declare-fun e!1283438 () Bool)

(assert (=> b!2032067 (=> (not res!891129) (not e!1283438))))

(declare-fun lt!763422 () tuple2!20912)

(declare-datatypes ((tuple2!20918 0))(
  ( (tuple2!20919 (_1!11928 List!22305) (_2!11928 List!22303)) )
))
(declare-fun lexList!985 (LexerInterface!3607 List!22304 List!22303) tuple2!20918)

(assert (=> b!2032067 (= res!891129 (= (list!9080 (_1!11925 lt!763422)) (_1!11928 (lexList!985 thiss!23328 rules!3198 (list!9077 (seqFromList!2848 lt!763202))))))))

(declare-fun b!2032068 () Bool)

(declare-fun e!1283437 () Bool)

(assert (=> b!2032068 (= e!1283437 (= (_2!11925 lt!763422) (seqFromList!2848 lt!763202)))))

(declare-fun b!2032069 () Bool)

(declare-fun e!1283439 () Bool)

(assert (=> b!2032069 (= e!1283439 (not (isEmpty!13874 (_1!11925 lt!763422))))))

(declare-fun d!621836 () Bool)

(assert (=> d!621836 e!1283438))

(declare-fun res!891131 () Bool)

(assert (=> d!621836 (=> (not res!891131) (not e!1283438))))

(assert (=> d!621836 (= res!891131 e!1283437)))

(declare-fun c!329000 () Bool)

(assert (=> d!621836 (= c!329000 (> (size!17365 (_1!11925 lt!763422)) 0))))

(declare-fun lexTailRecV2!708 (LexerInterface!3607 List!22304 BalanceConc!14684 BalanceConc!14684 BalanceConc!14684 BalanceConc!14686) tuple2!20912)

(assert (=> d!621836 (= lt!763422 (lexTailRecV2!708 thiss!23328 rules!3198 (seqFromList!2848 lt!763202) (BalanceConc!14685 Empty!7434) (seqFromList!2848 lt!763202) (BalanceConc!14687 Empty!7435)))))

(assert (=> d!621836 (= (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202)) lt!763422)))

(declare-fun b!2032070 () Bool)

(assert (=> b!2032070 (= e!1283438 (= (list!9077 (_2!11925 lt!763422)) (_2!11928 (lexList!985 thiss!23328 rules!3198 (list!9077 (seqFromList!2848 lt!763202))))))))

(declare-fun b!2032071 () Bool)

(assert (=> b!2032071 (= e!1283437 e!1283439)))

(declare-fun res!891130 () Bool)

(declare-fun size!17368 (BalanceConc!14684) Int)

(assert (=> b!2032071 (= res!891130 (< (size!17368 (_2!11925 lt!763422)) (size!17368 (seqFromList!2848 lt!763202))))))

(assert (=> b!2032071 (=> (not res!891130) (not e!1283439))))

(assert (= (and d!621836 c!329000) b!2032071))

(assert (= (and d!621836 (not c!329000)) b!2032068))

(assert (= (and b!2032071 res!891130) b!2032069))

(assert (= (and d!621836 res!891131) b!2032067))

(assert (= (and b!2032067 res!891129) b!2032070))

(declare-fun m!2473441 () Bool)

(assert (=> b!2032071 m!2473441))

(assert (=> b!2032071 m!2472775))

(declare-fun m!2473443 () Bool)

(assert (=> b!2032071 m!2473443))

(declare-fun m!2473445 () Bool)

(assert (=> b!2032069 m!2473445))

(declare-fun m!2473447 () Bool)

(assert (=> b!2032067 m!2473447))

(assert (=> b!2032067 m!2472775))

(declare-fun m!2473449 () Bool)

(assert (=> b!2032067 m!2473449))

(assert (=> b!2032067 m!2473449))

(declare-fun m!2473451 () Bool)

(assert (=> b!2032067 m!2473451))

(declare-fun m!2473453 () Bool)

(assert (=> d!621836 m!2473453))

(assert (=> d!621836 m!2472775))

(assert (=> d!621836 m!2472775))

(declare-fun m!2473455 () Bool)

(assert (=> d!621836 m!2473455))

(declare-fun m!2473457 () Bool)

(assert (=> b!2032070 m!2473457))

(assert (=> b!2032070 m!2472775))

(assert (=> b!2032070 m!2473449))

(assert (=> b!2032070 m!2473449))

(assert (=> b!2032070 m!2473451))

(assert (=> b!2031518 d!621836))

(declare-fun d!621872 () Bool)

(assert (=> d!621872 (= (seqFromList!2848 lt!763202) (fromListB!1284 lt!763202))))

(declare-fun bs!421067 () Bool)

(assert (= bs!421067 d!621872))

(declare-fun m!2473459 () Bool)

(assert (=> bs!421067 m!2473459))

(assert (=> b!2031518 d!621872))

(declare-fun d!621874 () Bool)

(declare-fun c!329003 () Bool)

(assert (=> d!621874 (= c!329003 ((_ is Cons!22223) (Cons!22223 (h!27624 tokens!598) Nil!22223)))))

(declare-fun e!1283442 () List!22303)

(assert (=> d!621874 (= (printList!1126 thiss!23328 (Cons!22223 (h!27624 tokens!598) Nil!22223)) e!1283442)))

(declare-fun b!2032076 () Bool)

(assert (=> b!2032076 (= e!1283442 (++!6013 (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))) (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))))

(declare-fun b!2032077 () Bool)

(assert (=> b!2032077 (= e!1283442 Nil!22221)))

(assert (= (and d!621874 c!329003) b!2032076))

(assert (= (and d!621874 (not c!329003)) b!2032077))

(declare-fun m!2473461 () Bool)

(assert (=> b!2032076 m!2473461))

(assert (=> b!2032076 m!2473461))

(declare-fun m!2473463 () Bool)

(assert (=> b!2032076 m!2473463))

(declare-fun m!2473465 () Bool)

(assert (=> b!2032076 m!2473465))

(assert (=> b!2032076 m!2473463))

(assert (=> b!2032076 m!2473465))

(declare-fun m!2473467 () Bool)

(assert (=> b!2032076 m!2473467))

(assert (=> b!2031528 d!621874))

(declare-fun d!621876 () Bool)

(declare-fun lt!763446 () BalanceConc!14684)

(assert (=> d!621876 (= (list!9077 lt!763446) (printList!1126 thiss!23328 (list!9080 lt!763188)))))

(assert (=> d!621876 (= lt!763446 (printTailRec!1075 thiss!23328 lt!763188 0 (BalanceConc!14685 Empty!7434)))))

(assert (=> d!621876 (= (print!1569 thiss!23328 lt!763188) lt!763446)))

(declare-fun bs!421068 () Bool)

(assert (= bs!421068 d!621876))

(declare-fun m!2473505 () Bool)

(assert (=> bs!421068 m!2473505))

(declare-fun m!2473507 () Bool)

(assert (=> bs!421068 m!2473507))

(assert (=> bs!421068 m!2473507))

(declare-fun m!2473509 () Bool)

(assert (=> bs!421068 m!2473509))

(assert (=> bs!421068 m!2472751))

(assert (=> b!2031528 d!621876))

(declare-fun d!621880 () Bool)

(declare-fun lt!763472 () BalanceConc!14684)

(declare-fun printListTailRec!491 (LexerInterface!3607 List!22305 List!22303) List!22303)

(declare-fun dropList!822 (BalanceConc!14686 Int) List!22305)

(assert (=> d!621880 (= (list!9077 lt!763472) (printListTailRec!491 thiss!23328 (dropList!822 lt!763188 0) (list!9077 (BalanceConc!14685 Empty!7434))))))

(declare-fun e!1283456 () BalanceConc!14684)

(assert (=> d!621880 (= lt!763472 e!1283456)))

(declare-fun c!329009 () Bool)

(assert (=> d!621880 (= c!329009 (>= 0 (size!17365 lt!763188)))))

(declare-fun e!1283457 () Bool)

(assert (=> d!621880 e!1283457))

(declare-fun res!891140 () Bool)

(assert (=> d!621880 (=> (not res!891140) (not e!1283457))))

(assert (=> d!621880 (= res!891140 (>= 0 0))))

(assert (=> d!621880 (= (printTailRec!1075 thiss!23328 lt!763188 0 (BalanceConc!14685 Empty!7434)) lt!763472)))

(declare-fun b!2032096 () Bool)

(assert (=> b!2032096 (= e!1283457 (<= 0 (size!17365 lt!763188)))))

(declare-fun b!2032097 () Bool)

(assert (=> b!2032097 (= e!1283456 (BalanceConc!14685 Empty!7434))))

(declare-fun b!2032098 () Bool)

(declare-fun ++!6015 (BalanceConc!14684 BalanceConc!14684) BalanceConc!14684)

(assert (=> b!2032098 (= e!1283456 (printTailRec!1075 thiss!23328 lt!763188 (+ 0 1) (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (apply!5856 lt!763188 0)))))))

(declare-fun lt!763471 () List!22305)

(assert (=> b!2032098 (= lt!763471 (list!9080 lt!763188))))

(declare-fun lt!763470 () Unit!36902)

(declare-fun lemmaDropApply!746 (List!22305 Int) Unit!36902)

(assert (=> b!2032098 (= lt!763470 (lemmaDropApply!746 lt!763471 0))))

(declare-fun head!4590 (List!22305) Token!7540)

(declare-fun drop!1123 (List!22305 Int) List!22305)

(declare-fun apply!5859 (List!22305 Int) Token!7540)

(assert (=> b!2032098 (= (head!4590 (drop!1123 lt!763471 0)) (apply!5859 lt!763471 0))))

(declare-fun lt!763474 () Unit!36902)

(assert (=> b!2032098 (= lt!763474 lt!763470)))

(declare-fun lt!763473 () List!22305)

(assert (=> b!2032098 (= lt!763473 (list!9080 lt!763188))))

(declare-fun lt!763475 () Unit!36902)

(declare-fun lemmaDropTail!722 (List!22305 Int) Unit!36902)

(assert (=> b!2032098 (= lt!763475 (lemmaDropTail!722 lt!763473 0))))

(declare-fun tail!3066 (List!22305) List!22305)

(assert (=> b!2032098 (= (tail!3066 (drop!1123 lt!763473 0)) (drop!1123 lt!763473 (+ 0 1)))))

(declare-fun lt!763476 () Unit!36902)

(assert (=> b!2032098 (= lt!763476 lt!763475)))

(assert (= (and d!621880 res!891140) b!2032096))

(assert (= (and d!621880 c!329009) b!2032097))

(assert (= (and d!621880 (not c!329009)) b!2032098))

(declare-fun m!2473525 () Bool)

(assert (=> d!621880 m!2473525))

(declare-fun m!2473527 () Bool)

(assert (=> d!621880 m!2473527))

(declare-fun m!2473529 () Bool)

(assert (=> d!621880 m!2473529))

(declare-fun m!2473531 () Bool)

(assert (=> d!621880 m!2473531))

(assert (=> d!621880 m!2473531))

(assert (=> d!621880 m!2473525))

(declare-fun m!2473533 () Bool)

(assert (=> d!621880 m!2473533))

(assert (=> b!2032096 m!2473527))

(declare-fun m!2473535 () Bool)

(assert (=> b!2032098 m!2473535))

(declare-fun m!2473537 () Bool)

(assert (=> b!2032098 m!2473537))

(assert (=> b!2032098 m!2473537))

(declare-fun m!2473539 () Bool)

(assert (=> b!2032098 m!2473539))

(assert (=> b!2032098 m!2473507))

(declare-fun m!2473541 () Bool)

(assert (=> b!2032098 m!2473541))

(declare-fun m!2473543 () Bool)

(assert (=> b!2032098 m!2473543))

(declare-fun m!2473545 () Bool)

(assert (=> b!2032098 m!2473545))

(declare-fun m!2473547 () Bool)

(assert (=> b!2032098 m!2473547))

(declare-fun m!2473549 () Bool)

(assert (=> b!2032098 m!2473549))

(assert (=> b!2032098 m!2473541))

(declare-fun m!2473551 () Bool)

(assert (=> b!2032098 m!2473551))

(declare-fun m!2473553 () Bool)

(assert (=> b!2032098 m!2473553))

(declare-fun m!2473555 () Bool)

(assert (=> b!2032098 m!2473555))

(declare-fun m!2473557 () Bool)

(assert (=> b!2032098 m!2473557))

(assert (=> b!2032098 m!2473549))

(assert (=> b!2032098 m!2473535))

(assert (=> b!2032098 m!2473553))

(assert (=> b!2031528 d!621880))

(declare-fun d!621888 () Bool)

(declare-fun e!1283460 () Bool)

(assert (=> d!621888 e!1283460))

(declare-fun res!891143 () Bool)

(assert (=> d!621888 (=> (not res!891143) (not e!1283460))))

(declare-fun lt!763479 () BalanceConc!14686)

(assert (=> d!621888 (= res!891143 (= (list!9080 lt!763479) (Cons!22223 (h!27624 tokens!598) Nil!22223)))))

(declare-fun singleton!886 (Token!7540) BalanceConc!14686)

(assert (=> d!621888 (= lt!763479 (singleton!886 (h!27624 tokens!598)))))

(assert (=> d!621888 (= (singletonSeq!1970 (h!27624 tokens!598)) lt!763479)))

(declare-fun b!2032101 () Bool)

(declare-fun isBalanced!2319 (Conc!7435) Bool)

(assert (=> b!2032101 (= e!1283460 (isBalanced!2319 (c!328895 lt!763479)))))

(assert (= (and d!621888 res!891143) b!2032101))

(declare-fun m!2473559 () Bool)

(assert (=> d!621888 m!2473559))

(declare-fun m!2473561 () Bool)

(assert (=> d!621888 m!2473561))

(declare-fun m!2473563 () Bool)

(assert (=> b!2032101 m!2473563))

(assert (=> b!2031528 d!621888))

(declare-fun d!621890 () Bool)

(assert (=> d!621890 (= (list!9077 lt!763197) (list!9081 (c!328893 lt!763197)))))

(declare-fun bs!421071 () Bool)

(assert (= bs!421071 d!621890))

(declare-fun m!2473565 () Bool)

(assert (=> bs!421071 m!2473565))

(assert (=> b!2031528 d!621890))

(declare-fun d!621892 () Bool)

(assert (=> d!621892 (= (inv!29404 (tag!4482 (h!27623 rules!3198))) (= (mod (str.len (value!125419 (tag!4482 (h!27623 rules!3198)))) 2) 0))))

(assert (=> b!2031507 d!621892))

(declare-fun d!621894 () Bool)

(declare-fun res!891144 () Bool)

(declare-fun e!1283461 () Bool)

(assert (=> d!621894 (=> (not res!891144) (not e!1283461))))

(assert (=> d!621894 (= res!891144 (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (h!27623 rules!3198)))))))

(assert (=> d!621894 (= (inv!29407 (transformation!3994 (h!27623 rules!3198))) e!1283461)))

(declare-fun b!2032102 () Bool)

(assert (=> b!2032102 (= e!1283461 (equivClasses!1538 (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (h!27623 rules!3198)))))))

(assert (= (and d!621894 res!891144) b!2032102))

(declare-fun m!2473567 () Bool)

(assert (=> d!621894 m!2473567))

(declare-fun m!2473569 () Bool)

(assert (=> b!2032102 m!2473569))

(assert (=> b!2031507 d!621894))

(declare-fun b!2032188 () Bool)

(declare-fun res!891168 () Bool)

(declare-fun e!1283519 () Bool)

(assert (=> b!2032188 (=> (not res!891168) (not e!1283519))))

(declare-fun lt!763529 () Token!7540)

(assert (=> b!2032188 (= res!891168 (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))) (list!9077 (charsOf!2534 lt!763529))))))

(declare-fun b!2032191 () Bool)

(declare-fun e!1283520 () Unit!36902)

(declare-fun Unit!36910 () Unit!36902)

(assert (=> b!2032191 (= e!1283520 Unit!36910)))

(declare-fun d!621896 () Bool)

(assert (=> d!621896 (isDefined!3960 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193)))))

(declare-fun lt!763533 () Unit!36902)

(assert (=> d!621896 (= lt!763533 e!1283520)))

(declare-fun c!329015 () Bool)

(assert (=> d!621896 (= c!329015 (isEmpty!13882 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193))))))

(declare-fun lt!763519 () Unit!36902)

(declare-fun lt!763525 () Unit!36902)

(assert (=> d!621896 (= lt!763519 lt!763525)))

(assert (=> d!621896 e!1283519))

(declare-fun res!891167 () Bool)

(assert (=> d!621896 (=> (not res!891167) (not e!1283519))))

(assert (=> d!621896 (= res!891167 (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))))))

(assert (=> d!621896 (= lt!763525 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 thiss!23328 rules!3198 lt!763202 lt!763529))))

(declare-fun lt!763530 () Unit!36902)

(declare-fun lt!763523 () Unit!36902)

(assert (=> d!621896 (= lt!763530 lt!763523)))

(declare-fun lt!763521 () List!22303)

(assert (=> d!621896 (isPrefix!1987 lt!763521 (++!6013 lt!763202 lt!763193))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!381 (List!22303 List!22303 List!22303) Unit!36902)

(assert (=> d!621896 (= lt!763523 (lemmaPrefixStaysPrefixWhenAddingToSuffix!381 lt!763521 lt!763202 lt!763193))))

(assert (=> d!621896 (= lt!763521 (list!9077 (charsOf!2534 lt!763529)))))

(declare-fun lt!763532 () Unit!36902)

(declare-fun lt!763524 () Unit!36902)

(assert (=> d!621896 (= lt!763532 lt!763524)))

(declare-fun lt!763531 () List!22303)

(declare-fun lt!763526 () List!22303)

(assert (=> d!621896 (isPrefix!1987 lt!763531 (++!6013 lt!763531 lt!763526))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1348 (List!22303 List!22303) Unit!36902)

(assert (=> d!621896 (= lt!763524 (lemmaConcatTwoListThenFirstIsPrefix!1348 lt!763531 lt!763526))))

(assert (=> d!621896 (= lt!763526 (_2!11926 (get!7060 (maxPrefix!2043 thiss!23328 rules!3198 lt!763202))))))

(assert (=> d!621896 (= lt!763531 (list!9077 (charsOf!2534 lt!763529)))))

(assert (=> d!621896 (= lt!763529 (head!4590 (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(assert (=> d!621896 (not (isEmpty!13873 rules!3198))))

(assert (=> d!621896 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!781 thiss!23328 rules!3198 lt!763202 lt!763193) lt!763533)))

(declare-fun b!2032189 () Bool)

(assert (=> b!2032189 (= e!1283519 (= (rule!6229 lt!763529) (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))))))

(declare-fun b!2032190 () Bool)

(declare-fun Unit!36911 () Unit!36902)

(assert (=> b!2032190 (= e!1283520 Unit!36911)))

(declare-fun lt!763517 () List!22303)

(assert (=> b!2032190 (= lt!763517 (++!6013 lt!763202 lt!763193))))

(declare-fun lt!763520 () Unit!36902)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!389 (LexerInterface!3607 Rule!7788 List!22304 List!22303) Unit!36902)

(assert (=> b!2032190 (= lt!763520 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!389 thiss!23328 (rule!6229 lt!763529) rules!3198 lt!763517))))

(assert (=> b!2032190 (isEmpty!13882 (maxPrefixOneRule!1269 thiss!23328 (rule!6229 lt!763529) lt!763517))))

(declare-fun lt!763527 () Unit!36902)

(assert (=> b!2032190 (= lt!763527 lt!763520)))

(declare-fun lt!763522 () List!22303)

(assert (=> b!2032190 (= lt!763522 (list!9077 (charsOf!2534 lt!763529)))))

(declare-fun lt!763518 () Unit!36902)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!385 (LexerInterface!3607 Rule!7788 List!22303 List!22303) Unit!36902)

(assert (=> b!2032190 (= lt!763518 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!385 thiss!23328 (rule!6229 lt!763529) lt!763522 (++!6013 lt!763202 lt!763193)))))

(assert (=> b!2032190 (not (matchR!2685 (regex!3994 (rule!6229 lt!763529)) lt!763522))))

(declare-fun lt!763528 () Unit!36902)

(assert (=> b!2032190 (= lt!763528 lt!763518)))

(assert (=> b!2032190 false))

(assert (= (and d!621896 res!891167) b!2032188))

(assert (= (and b!2032188 res!891168) b!2032189))

(assert (= (and d!621896 c!329015) b!2032190))

(assert (= (and d!621896 (not c!329015)) b!2032191))

(declare-fun m!2473619 () Bool)

(assert (=> b!2032188 m!2473619))

(declare-fun m!2473621 () Bool)

(assert (=> b!2032188 m!2473621))

(declare-fun m!2473623 () Bool)

(assert (=> b!2032188 m!2473623))

(declare-fun m!2473625 () Bool)

(assert (=> b!2032188 m!2473625))

(declare-fun m!2473627 () Bool)

(assert (=> b!2032188 m!2473627))

(assert (=> b!2032188 m!2473619))

(assert (=> b!2032188 m!2473625))

(assert (=> b!2032188 m!2473621))

(declare-fun m!2473629 () Bool)

(assert (=> d!621896 m!2473629))

(declare-fun m!2473631 () Bool)

(assert (=> d!621896 m!2473631))

(assert (=> d!621896 m!2472761))

(assert (=> d!621896 m!2472713))

(assert (=> d!621896 m!2472715))

(assert (=> d!621896 m!2472715))

(declare-fun m!2473633 () Bool)

(assert (=> d!621896 m!2473633))

(assert (=> d!621896 m!2473629))

(assert (=> d!621896 m!2472713))

(declare-fun m!2473635 () Bool)

(assert (=> d!621896 m!2473635))

(declare-fun m!2473637 () Bool)

(assert (=> d!621896 m!2473637))

(assert (=> d!621896 m!2472713))

(assert (=> d!621896 m!2473619))

(assert (=> d!621896 m!2472775))

(assert (=> d!621896 m!2472777))

(assert (=> d!621896 m!2473287))

(declare-fun m!2473639 () Bool)

(assert (=> d!621896 m!2473639))

(assert (=> d!621896 m!2473287))

(assert (=> d!621896 m!2473621))

(declare-fun m!2473641 () Bool)

(assert (=> d!621896 m!2473641))

(assert (=> d!621896 m!2472719))

(declare-fun m!2473643 () Bool)

(assert (=> d!621896 m!2473643))

(assert (=> d!621896 m!2472775))

(assert (=> d!621896 m!2472719))

(assert (=> d!621896 m!2473621))

(assert (=> d!621896 m!2473619))

(assert (=> d!621896 m!2473625))

(declare-fun m!2473645 () Bool)

(assert (=> d!621896 m!2473645))

(assert (=> d!621896 m!2472715))

(declare-fun m!2473647 () Bool)

(assert (=> d!621896 m!2473647))

(declare-fun m!2473649 () Bool)

(assert (=> d!621896 m!2473649))

(assert (=> b!2032189 m!2473621))

(assert (=> b!2032189 m!2473621))

(assert (=> b!2032189 m!2473623))

(declare-fun m!2473651 () Bool)

(assert (=> b!2032190 m!2473651))

(declare-fun m!2473653 () Bool)

(assert (=> b!2032190 m!2473653))

(assert (=> b!2032190 m!2473619))

(assert (=> b!2032190 m!2473651))

(declare-fun m!2473655 () Bool)

(assert (=> b!2032190 m!2473655))

(assert (=> b!2032190 m!2472713))

(assert (=> b!2032190 m!2472713))

(declare-fun m!2473657 () Bool)

(assert (=> b!2032190 m!2473657))

(assert (=> b!2032190 m!2473619))

(assert (=> b!2032190 m!2473625))

(declare-fun m!2473659 () Bool)

(assert (=> b!2032190 m!2473659))

(assert (=> b!2031530 d!621896))

(declare-fun bs!421074 () Bool)

(declare-fun d!621910 () Bool)

(assert (= bs!421074 (and d!621910 b!2031524)))

(declare-fun lambda!76575 () Int)

(assert (=> bs!421074 (not (= lambda!76575 lambda!76551))))

(declare-fun bs!421075 () Bool)

(assert (= bs!421075 (and d!621910 b!2031902)))

(assert (=> bs!421075 (= lambda!76575 lambda!76560)))

(declare-fun b!2032200 () Bool)

(declare-fun e!1283529 () Bool)

(assert (=> b!2032200 (= e!1283529 true)))

(declare-fun b!2032199 () Bool)

(declare-fun e!1283528 () Bool)

(assert (=> b!2032199 (= e!1283528 e!1283529)))

(declare-fun b!2032198 () Bool)

(declare-fun e!1283527 () Bool)

(assert (=> b!2032198 (= e!1283527 e!1283528)))

(assert (=> d!621910 e!1283527))

(assert (= b!2032199 b!2032200))

(assert (= b!2032198 b!2032199))

(assert (= (and d!621910 ((_ is Cons!22222) rules!3198)) b!2032198))

(assert (=> b!2032200 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76575))))

(assert (=> b!2032200 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76575))))

(assert (=> d!621910 true))

(declare-fun lt!763536 () Bool)

(assert (=> d!621910 (= lt!763536 (forall!4728 tokens!598 lambda!76575))))

(declare-fun e!1283526 () Bool)

(assert (=> d!621910 (= lt!763536 e!1283526)))

(declare-fun res!891174 () Bool)

(assert (=> d!621910 (=> res!891174 e!1283526)))

(assert (=> d!621910 (= res!891174 (not ((_ is Cons!22223) tokens!598)))))

(assert (=> d!621910 (not (isEmpty!13873 rules!3198))))

(assert (=> d!621910 (= (rulesProduceEachTokenIndividuallyList!1338 thiss!23328 rules!3198 tokens!598) lt!763536)))

(declare-fun b!2032196 () Bool)

(declare-fun e!1283525 () Bool)

(assert (=> b!2032196 (= e!1283526 e!1283525)))

(declare-fun res!891173 () Bool)

(assert (=> b!2032196 (=> (not res!891173) (not e!1283525))))

(assert (=> b!2032196 (= res!891173 (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 (h!27624 tokens!598)))))

(declare-fun b!2032197 () Bool)

(assert (=> b!2032197 (= e!1283525 (rulesProduceEachTokenIndividuallyList!1338 thiss!23328 rules!3198 (t!190664 tokens!598)))))

(assert (= (and d!621910 (not res!891174)) b!2032196))

(assert (= (and b!2032196 res!891173) b!2032197))

(declare-fun m!2473661 () Bool)

(assert (=> d!621910 m!2473661))

(assert (=> d!621910 m!2472761))

(assert (=> b!2032196 m!2472687))

(declare-fun m!2473663 () Bool)

(assert (=> b!2032197 m!2473663))

(assert (=> b!2031509 d!621910))

(declare-fun d!621912 () Bool)

(declare-fun res!891177 () Bool)

(declare-fun e!1283532 () Bool)

(assert (=> d!621912 (=> (not res!891177) (not e!1283532))))

(declare-fun rulesValid!1498 (LexerInterface!3607 List!22304) Bool)

(assert (=> d!621912 (= res!891177 (rulesValid!1498 thiss!23328 rules!3198))))

(assert (=> d!621912 (= (rulesInvariant!3214 thiss!23328 rules!3198) e!1283532)))

(declare-fun b!2032203 () Bool)

(declare-datatypes ((List!22307 0))(
  ( (Nil!22225) (Cons!22225 (h!27626 String!25768) (t!190778 List!22307)) )
))
(declare-fun noDuplicateTag!1496 (LexerInterface!3607 List!22304 List!22307) Bool)

(assert (=> b!2032203 (= e!1283532 (noDuplicateTag!1496 thiss!23328 rules!3198 Nil!22225))))

(assert (= (and d!621912 res!891177) b!2032203))

(declare-fun m!2473665 () Bool)

(assert (=> d!621912 m!2473665))

(declare-fun m!2473667 () Bool)

(assert (=> b!2032203 m!2473667))

(assert (=> b!2031508 d!621912))

(declare-fun b!2032217 () Bool)

(declare-fun e!1283535 () Bool)

(declare-fun tp!603731 () Bool)

(declare-fun tp!603735 () Bool)

(assert (=> b!2032217 (= e!1283535 (and tp!603731 tp!603735))))

(declare-fun b!2032214 () Bool)

(declare-fun tp_is_empty!9229 () Bool)

(assert (=> b!2032214 (= e!1283535 tp_is_empty!9229)))

(declare-fun b!2032216 () Bool)

(declare-fun tp!603732 () Bool)

(assert (=> b!2032216 (= e!1283535 tp!603732)))

(assert (=> b!2031522 (= tp!603651 e!1283535)))

(declare-fun b!2032215 () Bool)

(declare-fun tp!603733 () Bool)

(declare-fun tp!603734 () Bool)

(assert (=> b!2032215 (= e!1283535 (and tp!603733 tp!603734))))

(assert (= (and b!2031522 ((_ is ElementMatch!5419) (regex!3994 (rule!6229 (h!27624 tokens!598))))) b!2032214))

(assert (= (and b!2031522 ((_ is Concat!9550) (regex!3994 (rule!6229 (h!27624 tokens!598))))) b!2032215))

(assert (= (and b!2031522 ((_ is Star!5419) (regex!3994 (rule!6229 (h!27624 tokens!598))))) b!2032216))

(assert (= (and b!2031522 ((_ is Union!5419) (regex!3994 (rule!6229 (h!27624 tokens!598))))) b!2032217))

(declare-fun b!2032222 () Bool)

(declare-fun e!1283538 () Bool)

(declare-fun tp!603738 () Bool)

(assert (=> b!2032222 (= e!1283538 (and tp_is_empty!9229 tp!603738))))

(assert (=> b!2031533 (= tp!603644 e!1283538)))

(assert (= (and b!2031533 ((_ is Cons!22221) (originalCharacters!4801 separatorToken!354))) b!2032222))

(declare-fun b!2032233 () Bool)

(declare-fun b_free!56669 () Bool)

(declare-fun b_next!57373 () Bool)

(assert (=> b!2032233 (= b_free!56669 (not b_next!57373))))

(declare-fun t!190759 () Bool)

(declare-fun tb!128425 () Bool)

(assert (=> (and b!2032233 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190759) tb!128425))

(declare-fun result!153614 () Bool)

(assert (= result!153614 result!153532))

(assert (=> d!621776 t!190759))

(assert (=> d!621812 t!190759))

(declare-fun t!190761 () Bool)

(declare-fun tb!128427 () Bool)

(assert (=> (and b!2032233 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190761) tb!128427))

(declare-fun result!153616 () Bool)

(assert (= result!153616 result!153540))

(assert (=> d!621812 t!190761))

(declare-fun tp!603749 () Bool)

(declare-fun b_and!162069 () Bool)

(assert (=> b!2032233 (= tp!603749 (and (=> t!190759 result!153614) (=> t!190761 result!153616) b_and!162069))))

(declare-fun b_free!56671 () Bool)

(declare-fun b_next!57375 () Bool)

(assert (=> b!2032233 (= b_free!56671 (not b_next!57375))))

(declare-fun t!190763 () Bool)

(declare-fun tb!128429 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190763) tb!128429))

(declare-fun result!153618 () Bool)

(assert (= result!153618 result!153526))

(assert (=> d!621776 t!190763))

(declare-fun t!190765 () Bool)

(declare-fun tb!128431 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190765) tb!128431))

(declare-fun result!153620 () Bool)

(assert (= result!153620 result!153520))

(assert (=> d!621828 t!190765))

(assert (=> b!2031721 t!190765))

(declare-fun t!190767 () Bool)

(declare-fun tb!128433 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) t!190767) tb!128433))

(declare-fun result!153622 () Bool)

(assert (= result!153622 result!153512))

(assert (=> d!621816 t!190767))

(assert (=> b!2031708 t!190767))

(declare-fun b_and!162071 () Bool)

(declare-fun tp!603747 () Bool)

(assert (=> b!2032233 (= tp!603747 (and (=> t!190765 result!153620) (=> t!190763 result!153618) (=> t!190767 result!153622) b_and!162071))))

(declare-fun e!1283550 () Bool)

(assert (=> b!2032233 (= e!1283550 (and tp!603749 tp!603747))))

(declare-fun e!1283549 () Bool)

(declare-fun b!2032232 () Bool)

(declare-fun tp!603748 () Bool)

(assert (=> b!2032232 (= e!1283549 (and tp!603748 (inv!29404 (tag!4482 (h!27623 (t!190663 rules!3198)))) (inv!29407 (transformation!3994 (h!27623 (t!190663 rules!3198)))) e!1283550))))

(declare-fun b!2032231 () Bool)

(declare-fun e!1283547 () Bool)

(declare-fun tp!603750 () Bool)

(assert (=> b!2032231 (= e!1283547 (and e!1283549 tp!603750))))

(assert (=> b!2031532 (= tp!603642 e!1283547)))

(assert (= b!2032232 b!2032233))

(assert (= b!2032231 b!2032232))

(assert (= (and b!2031532 ((_ is Cons!22222) (t!190663 rules!3198))) b!2032231))

(declare-fun m!2473669 () Bool)

(assert (=> b!2032232 m!2473669))

(declare-fun m!2473671 () Bool)

(assert (=> b!2032232 m!2473671))

(declare-fun b!2032234 () Bool)

(declare-fun e!1283551 () Bool)

(declare-fun tp!603751 () Bool)

(assert (=> b!2032234 (= e!1283551 (and tp_is_empty!9229 tp!603751))))

(assert (=> b!2031512 (= tp!603647 e!1283551)))

(assert (= (and b!2031512 ((_ is Cons!22221) (originalCharacters!4801 (h!27624 tokens!598)))) b!2032234))

(declare-fun b!2032238 () Bool)

(declare-fun e!1283552 () Bool)

(declare-fun tp!603752 () Bool)

(declare-fun tp!603756 () Bool)

(assert (=> b!2032238 (= e!1283552 (and tp!603752 tp!603756))))

(declare-fun b!2032235 () Bool)

(assert (=> b!2032235 (= e!1283552 tp_is_empty!9229)))

(declare-fun b!2032237 () Bool)

(declare-fun tp!603753 () Bool)

(assert (=> b!2032237 (= e!1283552 tp!603753)))

(assert (=> b!2031525 (= tp!603652 e!1283552)))

(declare-fun b!2032236 () Bool)

(declare-fun tp!603754 () Bool)

(declare-fun tp!603755 () Bool)

(assert (=> b!2032236 (= e!1283552 (and tp!603754 tp!603755))))

(assert (= (and b!2031525 ((_ is ElementMatch!5419) (regex!3994 (rule!6229 separatorToken!354)))) b!2032235))

(assert (= (and b!2031525 ((_ is Concat!9550) (regex!3994 (rule!6229 separatorToken!354)))) b!2032236))

(assert (= (and b!2031525 ((_ is Star!5419) (regex!3994 (rule!6229 separatorToken!354)))) b!2032237))

(assert (= (and b!2031525 ((_ is Union!5419) (regex!3994 (rule!6229 separatorToken!354)))) b!2032238))

(declare-fun b!2032252 () Bool)

(declare-fun b_free!56673 () Bool)

(declare-fun b_next!57377 () Bool)

(assert (=> b!2032252 (= b_free!56673 (not b_next!57377))))

(declare-fun t!190769 () Bool)

(declare-fun tb!128435 () Bool)

(assert (=> (and b!2032252 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190769) tb!128435))

(declare-fun result!153626 () Bool)

(assert (= result!153626 result!153532))

(assert (=> d!621776 t!190769))

(assert (=> d!621812 t!190769))

(declare-fun t!190771 () Bool)

(declare-fun tb!128437 () Bool)

(assert (=> (and b!2032252 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190771) tb!128437))

(declare-fun result!153628 () Bool)

(assert (= result!153628 result!153540))

(assert (=> d!621812 t!190771))

(declare-fun b_and!162073 () Bool)

(declare-fun tp!603770 () Bool)

(assert (=> b!2032252 (= tp!603770 (and (=> t!190769 result!153626) (=> t!190771 result!153628) b_and!162073))))

(declare-fun b_free!56675 () Bool)

(declare-fun b_next!57379 () Bool)

(assert (=> b!2032252 (= b_free!56675 (not b_next!57379))))

(declare-fun t!190773 () Bool)

(declare-fun tb!128439 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190773) tb!128439))

(declare-fun result!153630 () Bool)

(assert (= result!153630 result!153526))

(assert (=> d!621776 t!190773))

(declare-fun t!190775 () Bool)

(declare-fun tb!128441 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!190775) tb!128441))

(declare-fun result!153632 () Bool)

(assert (= result!153632 result!153520))

(assert (=> d!621828 t!190775))

(assert (=> b!2031721 t!190775))

(declare-fun tb!128443 () Bool)

(declare-fun t!190777 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) t!190777) tb!128443))

(declare-fun result!153634 () Bool)

(assert (= result!153634 result!153512))

(assert (=> d!621816 t!190777))

(assert (=> b!2031708 t!190777))

(declare-fun tp!603768 () Bool)

(declare-fun b_and!162075 () Bool)

(assert (=> b!2032252 (= tp!603768 (and (=> t!190773 result!153630) (=> t!190777 result!153634) (=> t!190775 result!153632) b_and!162075))))

(declare-fun e!1283570 () Bool)

(declare-fun tp!603771 () Bool)

(declare-fun e!1283568 () Bool)

(declare-fun b!2032250 () Bool)

(assert (=> b!2032250 (= e!1283570 (and (inv!21 (value!125420 (h!27624 (t!190664 tokens!598)))) e!1283568 tp!603771))))

(declare-fun e!1283569 () Bool)

(declare-fun b!2032251 () Bool)

(declare-fun tp!603767 () Bool)

(assert (=> b!2032251 (= e!1283568 (and tp!603767 (inv!29404 (tag!4482 (rule!6229 (h!27624 (t!190664 tokens!598))))) (inv!29407 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) e!1283569))))

(assert (=> b!2032252 (= e!1283569 (and tp!603770 tp!603768))))

(declare-fun e!1283567 () Bool)

(assert (=> b!2031517 (= tp!603646 e!1283567)))

(declare-fun b!2032249 () Bool)

(declare-fun tp!603769 () Bool)

(assert (=> b!2032249 (= e!1283567 (and (inv!29408 (h!27624 (t!190664 tokens!598))) e!1283570 tp!603769))))

(assert (= b!2032251 b!2032252))

(assert (= b!2032250 b!2032251))

(assert (= b!2032249 b!2032250))

(assert (= (and b!2031517 ((_ is Cons!22223) (t!190664 tokens!598))) b!2032249))

(declare-fun m!2473673 () Bool)

(assert (=> b!2032250 m!2473673))

(declare-fun m!2473675 () Bool)

(assert (=> b!2032251 m!2473675))

(declare-fun m!2473677 () Bool)

(assert (=> b!2032251 m!2473677))

(declare-fun m!2473679 () Bool)

(assert (=> b!2032249 m!2473679))

(declare-fun b!2032256 () Bool)

(declare-fun e!1283571 () Bool)

(declare-fun tp!603772 () Bool)

(declare-fun tp!603776 () Bool)

(assert (=> b!2032256 (= e!1283571 (and tp!603772 tp!603776))))

(declare-fun b!2032253 () Bool)

(assert (=> b!2032253 (= e!1283571 tp_is_empty!9229)))

(declare-fun b!2032255 () Bool)

(declare-fun tp!603773 () Bool)

(assert (=> b!2032255 (= e!1283571 tp!603773)))

(assert (=> b!2031507 (= tp!603643 e!1283571)))

(declare-fun b!2032254 () Bool)

(declare-fun tp!603774 () Bool)

(declare-fun tp!603775 () Bool)

(assert (=> b!2032254 (= e!1283571 (and tp!603774 tp!603775))))

(assert (= (and b!2031507 ((_ is ElementMatch!5419) (regex!3994 (h!27623 rules!3198)))) b!2032253))

(assert (= (and b!2031507 ((_ is Concat!9550) (regex!3994 (h!27623 rules!3198)))) b!2032254))

(assert (= (and b!2031507 ((_ is Star!5419) (regex!3994 (h!27623 rules!3198)))) b!2032255))

(assert (= (and b!2031507 ((_ is Union!5419) (regex!3994 (h!27623 rules!3198)))) b!2032256))

(declare-fun b_lambda!68499 () Bool)

(assert (= b_lambda!68455 (or (and b!2032233 b_free!56669 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031513 b_free!56657) (and b!2031523 b_free!56649 (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2032252 b_free!56673 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031531 b_free!56653 (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) b_lambda!68499)))

(declare-fun b_lambda!68501 () Bool)

(assert (= b_lambda!68457 (or (and b!2032233 b_free!56669 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031513 b_free!56657) (and b!2031523 b_free!56649 (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2032252 b_free!56673 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031531 b_free!56653 (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) b_lambda!68501)))

(declare-fun b_lambda!68503 () Bool)

(assert (= b_lambda!68447 (or b!2031524 b_lambda!68503)))

(declare-fun bs!421076 () Bool)

(declare-fun d!621914 () Bool)

(assert (= bs!421076 (and d!621914 b!2031524)))

(assert (=> bs!421076 (= (dynLambda!11063 lambda!76551 (h!27624 tokens!598)) (not (isSeparator!3994 (rule!6229 (h!27624 tokens!598)))))))

(assert (=> b!2031702 d!621914))

(declare-fun b_lambda!68505 () Bool)

(assert (= b_lambda!68453 (or (and b!2032252 b_free!56675 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031523 b_free!56651 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2032233 b_free!56671 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031531 b_free!56655 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031513 b_free!56659) b_lambda!68505)))

(declare-fun b_lambda!68507 () Bool)

(assert (= b_lambda!68463 (or (and b!2032252 b_free!56675 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031523 b_free!56651 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2032233 b_free!56671 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031531 b_free!56655 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031513 b_free!56659) b_lambda!68507)))

(declare-fun b_lambda!68509 () Bool)

(assert (= b_lambda!68451 (or (and b!2032252 b_free!56675 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031523 b_free!56651 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2032233 b_free!56671 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031531 b_free!56655 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031513 b_free!56659) b_lambda!68509)))

(declare-fun b_lambda!68511 () Bool)

(assert (= b_lambda!68449 (or (and b!2031523 b_free!56651) (and b!2031531 b_free!56655 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) (and b!2032233 b_free!56671 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) (and b!2031513 b_free!56659 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) (and b!2032252 b_free!56675 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) b_lambda!68511)))

(declare-fun b_lambda!68513 () Bool)

(assert (= b_lambda!68461 (or (and b!2031523 b_free!56651) (and b!2031531 b_free!56655 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) (and b!2032233 b_free!56671 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) (and b!2031513 b_free!56659 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) (and b!2032252 b_free!56675 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))))) b_lambda!68513)))

(declare-fun b_lambda!68515 () Bool)

(assert (= b_lambda!68459 (or (and b!2032233 b_free!56669 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031513 b_free!56657) (and b!2031523 b_free!56649 (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2032252 b_free!56673 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (and b!2031531 b_free!56653 (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) b_lambda!68515)))

(check-sat b_and!162075 (not b!2031648) (not d!621768) (not b!2031828) (not b!2031703) (not bm!124711) (not d!621890) (not b_next!57377) (not b!2032216) (not b_lambda!68513) (not b!2031649) (not b_lambda!68515) (not b!2032203) (not b!2031627) (not b!2031835) (not b!2031693) (not b!2031736) (not tb!128351) (not b!2031696) (not b_next!57379) (not d!621754) (not b!2031626) (not b_next!57375) (not b!2031720) (not b!2031833) (not d!621830) (not bm!124713) (not tb!128345) (not b!2032251) (not b!2032215) (not b!2032101) (not b!2032217) (not d!621896) (not b_next!57363) (not d!621834) (not b!2032249) (not b!2031727) (not b_next!57353) (not b_lambda!68503) (not b!2032069) (not b_lambda!68507) b_and!162011 (not b!2031686) (not b!2031953) (not b!2032234) (not tb!128363) (not b!2031683) (not b!2032076) (not b!2031708) (not b!2031643) (not d!621758) (not b!2031829) (not d!621912) (not b!2031729) (not d!621836) (not d!621812) (not b_next!57355) b_and!161995 b_and!162071 (not b!2032250) (not b!2031762) (not b!2031941) (not b_lambda!68501) (not d!621894) b_and!162007 (not b!2031723) (not b!2031905) (not d!621746) (not b!2031763) (not b!2031733) (not b!2031646) b_and!162009 (not tb!128357) (not b!2031726) (not d!621824) (not tb!128369) (not b!2031687) (not b_next!57373) (not b!2031943) (not b!2031714) (not b!2031831) (not b!2031647) (not b!2032256) (not b!2032098) (not b!2032232) (not d!621774) (not b!2031954) (not b!2031697) (not d!621722) (not b!2031709) (not b!2031964) (not b!2031770) (not b!2031965) tp_is_empty!9229 (not bm!124689) b_and!162073 (not b!2031732) (not b!2032236) (not d!621816) (not d!621820) (not b!2032231) (not b!2031765) (not b!2031681) (not b!2031830) (not b!2032238) (not b!2032070) (not d!621744) (not b!2031902) (not b!2031834) (not bm!124709) (not b!2032188) (not d!621832) (not b!2031743) (not b_next!57357) (not b!2032096) (not b!2031680) (not b!2031719) (not d!621910) (not b!2032222) b_and!162069 (not b!2032067) (not b!2031690) (not bm!124693) (not b!2032197) (not d!621786) (not b_lambda!68499) (not b!2031767) (not b!2031908) (not b!2031721) (not d!621764) (not b!2032071) (not b!2031764) (not d!621822) (not d!621762) (not b_next!57359) (not b!2031904) (not b!2031946) (not b!2031947) (not d!621828) (not d!621740) (not bm!124690) (not b_lambda!68509) (not b!2031769) (not b!2032198) (not b_lambda!68505) (not b!2031642) (not b!2031628) (not b!2031952) (not b!2031949) (not d!621880) (not b!2031836) (not d!621814) (not b_lambda!68511) b_and!161997 (not b!2032190) (not b!2032255) (not b!2032102) b_and!161999 (not b!2032189) (not d!621872) (not d!621772) (not b!2031768) (not d!621770) (not b!2031742) (not b!2031631) (not d!621826) (not b!2032254) (not d!621776) (not b!2032237) (not d!621888) (not b_next!57361) (not b!2031722) (not bm!124695) (not b!2031692) (not b!2032196) (not d!621818) (not b!2031811) (not d!621876) (not b!2031917))
(check-sat (not b_next!57377) b_and!162071 b_and!162075 b_and!162007 b_and!162009 (not b_next!57373) b_and!162073 (not b_next!57357) b_and!162069 (not b_next!57359) (not b_next!57361) (not b_next!57379) (not b_next!57375) (not b_next!57363) (not b_next!57353) b_and!162011 (not b_next!57355) b_and!161995 b_and!161997 b_and!161999)
(get-model)

(declare-fun d!622086 () Bool)

(declare-fun isBalanced!2321 (Conc!7434) Bool)

(assert (=> d!622086 (= (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))) (isBalanced!2321 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))))))

(declare-fun bs!421112 () Bool)

(assert (= bs!421112 d!622086))

(declare-fun m!2474231 () Bool)

(assert (=> bs!421112 m!2474231))

(assert (=> tb!128351 d!622086))

(declare-fun d!622098 () Bool)

(declare-fun lt!763671 () Bool)

(declare-fun content!3287 (List!22304) (InoxSet Rule!7788))

(assert (=> d!622098 (= lt!763671 (select (content!3287 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763307)))))))

(declare-fun e!1283751 () Bool)

(assert (=> d!622098 (= lt!763671 e!1283751)))

(declare-fun res!891332 () Bool)

(assert (=> d!622098 (=> (not res!891332) (not e!1283751))))

(assert (=> d!622098 (= res!891332 ((_ is Cons!22222) rules!3198))))

(assert (=> d!622098 (= (contains!4106 rules!3198 (rule!6229 (_1!11926 (get!7060 lt!763307)))) lt!763671)))

(declare-fun b!2032566 () Bool)

(declare-fun e!1283752 () Bool)

(assert (=> b!2032566 (= e!1283751 e!1283752)))

(declare-fun res!891331 () Bool)

(assert (=> b!2032566 (=> res!891331 e!1283752)))

(assert (=> b!2032566 (= res!891331 (= (h!27623 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763307)))))))

(declare-fun b!2032567 () Bool)

(assert (=> b!2032567 (= e!1283752 (contains!4106 (t!190663 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763307)))))))

(assert (= (and d!622098 res!891332) b!2032566))

(assert (= (and b!2032566 (not res!891331)) b!2032567))

(declare-fun m!2474271 () Bool)

(assert (=> d!622098 m!2474271))

(declare-fun m!2474273 () Bool)

(assert (=> d!622098 m!2474273))

(declare-fun m!2474275 () Bool)

(assert (=> b!2032567 m!2474275))

(assert (=> b!2031834 d!622098))

(declare-fun d!622104 () Bool)

(assert (=> d!622104 (= (get!7060 lt!763307) (v!27006 lt!763307))))

(assert (=> b!2031834 d!622104))

(declare-fun lt!763672 () List!22303)

(declare-fun e!1283754 () Bool)

(declare-fun b!2032571 () Bool)

(assert (=> b!2032571 (= e!1283754 (or (not (= lt!763193 Nil!22221)) (= lt!763672 (t!190662 lt!763202))))))

(declare-fun b!2032570 () Bool)

(declare-fun res!891334 () Bool)

(assert (=> b!2032570 (=> (not res!891334) (not e!1283754))))

(assert (=> b!2032570 (= res!891334 (= (size!17366 lt!763672) (+ (size!17366 (t!190662 lt!763202)) (size!17366 lt!763193))))))

(declare-fun b!2032568 () Bool)

(declare-fun e!1283753 () List!22303)

(assert (=> b!2032568 (= e!1283753 lt!763193)))

(declare-fun b!2032569 () Bool)

(assert (=> b!2032569 (= e!1283753 (Cons!22221 (h!27622 (t!190662 lt!763202)) (++!6013 (t!190662 (t!190662 lt!763202)) lt!763193)))))

(declare-fun d!622106 () Bool)

(assert (=> d!622106 e!1283754))

(declare-fun res!891333 () Bool)

(assert (=> d!622106 (=> (not res!891333) (not e!1283754))))

(assert (=> d!622106 (= res!891333 (= (content!3285 lt!763672) ((_ map or) (content!3285 (t!190662 lt!763202)) (content!3285 lt!763193))))))

(assert (=> d!622106 (= lt!763672 e!1283753)))

(declare-fun c!329087 () Bool)

(assert (=> d!622106 (= c!329087 ((_ is Nil!22221) (t!190662 lt!763202)))))

(assert (=> d!622106 (= (++!6013 (t!190662 lt!763202) lt!763193) lt!763672)))

(assert (= (and d!622106 c!329087) b!2032568))

(assert (= (and d!622106 (not c!329087)) b!2032569))

(assert (= (and d!622106 res!891333) b!2032570))

(assert (= (and b!2032570 res!891334) b!2032571))

(declare-fun m!2474301 () Bool)

(assert (=> b!2032570 m!2474301))

(declare-fun m!2474305 () Bool)

(assert (=> b!2032570 m!2474305))

(assert (=> b!2032570 m!2473275))

(declare-fun m!2474311 () Bool)

(assert (=> b!2032569 m!2474311))

(declare-fun m!2474315 () Bool)

(assert (=> d!622106 m!2474315))

(declare-fun m!2474317 () Bool)

(assert (=> d!622106 m!2474317))

(assert (=> d!622106 m!2473283))

(assert (=> b!2031964 d!622106))

(declare-fun b!2032572 () Bool)

(declare-fun e!1283758 () Bool)

(declare-fun lt!763673 () Bool)

(assert (=> b!2032572 (= e!1283758 (not lt!763673))))

(declare-fun b!2032573 () Bool)

(declare-fun e!1283761 () Bool)

(assert (=> b!2032573 (= e!1283761 e!1283758)))

(declare-fun c!329089 () Bool)

(assert (=> b!2032573 (= c!329089 ((_ is EmptyLang!5419) (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202))))))

(declare-fun b!2032574 () Bool)

(declare-fun e!1283759 () Bool)

(assert (=> b!2032574 (= e!1283759 (nullable!1655 (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202))))))

(declare-fun b!2032576 () Bool)

(declare-fun res!891340 () Bool)

(declare-fun e!1283760 () Bool)

(assert (=> b!2032576 (=> res!891340 e!1283760)))

(declare-fun e!1283756 () Bool)

(assert (=> b!2032576 (= res!891340 e!1283756)))

(declare-fun res!891336 () Bool)

(assert (=> b!2032576 (=> (not res!891336) (not e!1283756))))

(assert (=> b!2032576 (= res!891336 lt!763673)))

(declare-fun bm!124754 () Bool)

(declare-fun call!124759 () Bool)

(assert (=> bm!124754 (= call!124759 (isEmpty!13880 (tail!3064 lt!763202)))))

(declare-fun b!2032577 () Bool)

(declare-fun res!891339 () Bool)

(declare-fun e!1283757 () Bool)

(assert (=> b!2032577 (=> res!891339 e!1283757)))

(assert (=> b!2032577 (= res!891339 (not (isEmpty!13880 (tail!3064 (tail!3064 lt!763202)))))))

(declare-fun b!2032578 () Bool)

(declare-fun e!1283755 () Bool)

(assert (=> b!2032578 (= e!1283760 e!1283755)))

(declare-fun res!891335 () Bool)

(assert (=> b!2032578 (=> (not res!891335) (not e!1283755))))

(assert (=> b!2032578 (= res!891335 (not lt!763673))))

(declare-fun b!2032579 () Bool)

(assert (=> b!2032579 (= e!1283755 e!1283757)))

(declare-fun res!891341 () Bool)

(assert (=> b!2032579 (=> res!891341 e!1283757)))

(assert (=> b!2032579 (= res!891341 call!124759)))

(declare-fun d!622108 () Bool)

(assert (=> d!622108 e!1283761))

(declare-fun c!329088 () Bool)

(assert (=> d!622108 (= c!329088 ((_ is EmptyExpr!5419) (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202))))))

(assert (=> d!622108 (= lt!763673 e!1283759)))

(declare-fun c!329090 () Bool)

(assert (=> d!622108 (= c!329090 (isEmpty!13880 (tail!3064 lt!763202)))))

(assert (=> d!622108 (validRegex!2181 (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202)))))

(assert (=> d!622108 (= (matchR!2685 (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202)) (tail!3064 lt!763202)) lt!763673)))

(declare-fun b!2032575 () Bool)

(assert (=> b!2032575 (= e!1283756 (= (head!4589 (tail!3064 lt!763202)) (c!328894 (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202)))))))

(declare-fun b!2032580 () Bool)

(assert (=> b!2032580 (= e!1283759 (matchR!2685 (derivativeStep!1414 (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202)) (head!4589 (tail!3064 lt!763202))) (tail!3064 (tail!3064 lt!763202))))))

(declare-fun b!2032581 () Bool)

(assert (=> b!2032581 (= e!1283757 (not (= (head!4589 (tail!3064 lt!763202)) (c!328894 (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202))))))))

(declare-fun b!2032582 () Bool)

(declare-fun res!891342 () Bool)

(assert (=> b!2032582 (=> (not res!891342) (not e!1283756))))

(assert (=> b!2032582 (= res!891342 (not call!124759))))

(declare-fun b!2032583 () Bool)

(declare-fun res!891338 () Bool)

(assert (=> b!2032583 (=> res!891338 e!1283760)))

(assert (=> b!2032583 (= res!891338 (not ((_ is ElementMatch!5419) (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202)))))))

(assert (=> b!2032583 (= e!1283758 e!1283760)))

(declare-fun b!2032584 () Bool)

(declare-fun res!891337 () Bool)

(assert (=> b!2032584 (=> (not res!891337) (not e!1283756))))

(assert (=> b!2032584 (= res!891337 (isEmpty!13880 (tail!3064 (tail!3064 lt!763202))))))

(declare-fun b!2032585 () Bool)

(assert (=> b!2032585 (= e!1283761 (= lt!763673 call!124759))))

(assert (= (and d!622108 c!329090) b!2032574))

(assert (= (and d!622108 (not c!329090)) b!2032580))

(assert (= (and d!622108 c!329088) b!2032585))

(assert (= (and d!622108 (not c!329088)) b!2032573))

(assert (= (and b!2032573 c!329089) b!2032572))

(assert (= (and b!2032573 (not c!329089)) b!2032583))

(assert (= (and b!2032583 (not res!891338)) b!2032576))

(assert (= (and b!2032576 res!891336) b!2032582))

(assert (= (and b!2032582 res!891342) b!2032584))

(assert (= (and b!2032584 res!891337) b!2032575))

(assert (= (and b!2032576 (not res!891340)) b!2032578))

(assert (= (and b!2032578 res!891335) b!2032579))

(assert (= (and b!2032579 (not res!891341)) b!2032577))

(assert (= (and b!2032577 (not res!891339)) b!2032581))

(assert (= (or b!2032585 b!2032579 b!2032582) bm!124754))

(assert (=> b!2032574 m!2472949))

(declare-fun m!2474341 () Bool)

(assert (=> b!2032574 m!2474341))

(assert (=> b!2032584 m!2472939))

(declare-fun m!2474343 () Bool)

(assert (=> b!2032584 m!2474343))

(assert (=> b!2032584 m!2474343))

(declare-fun m!2474345 () Bool)

(assert (=> b!2032584 m!2474345))

(assert (=> b!2032575 m!2472939))

(declare-fun m!2474347 () Bool)

(assert (=> b!2032575 m!2474347))

(assert (=> b!2032577 m!2472939))

(assert (=> b!2032577 m!2474343))

(assert (=> b!2032577 m!2474343))

(assert (=> b!2032577 m!2474345))

(assert (=> bm!124754 m!2472939))

(assert (=> bm!124754 m!2472941))

(assert (=> d!622108 m!2472939))

(assert (=> d!622108 m!2472941))

(assert (=> d!622108 m!2472949))

(declare-fun m!2474349 () Bool)

(assert (=> d!622108 m!2474349))

(assert (=> b!2032581 m!2472939))

(assert (=> b!2032581 m!2474347))

(assert (=> b!2032580 m!2472939))

(assert (=> b!2032580 m!2474347))

(assert (=> b!2032580 m!2472949))

(assert (=> b!2032580 m!2474347))

(declare-fun m!2474351 () Bool)

(assert (=> b!2032580 m!2474351))

(assert (=> b!2032580 m!2472939))

(assert (=> b!2032580 m!2474343))

(assert (=> b!2032580 m!2474351))

(assert (=> b!2032580 m!2474343))

(declare-fun m!2474353 () Bool)

(assert (=> b!2032580 m!2474353))

(assert (=> b!2031732 d!622108))

(declare-fun d!622112 () Bool)

(declare-fun lt!763678 () Regex!5419)

(assert (=> d!622112 (validRegex!2181 lt!763678)))

(declare-fun e!1283804 () Regex!5419)

(assert (=> d!622112 (= lt!763678 e!1283804)))

(declare-fun c!329110 () Bool)

(assert (=> d!622112 (= c!329110 (or ((_ is EmptyExpr!5419) (regex!3994 lt!763191)) ((_ is EmptyLang!5419) (regex!3994 lt!763191))))))

(assert (=> d!622112 (validRegex!2181 (regex!3994 lt!763191))))

(assert (=> d!622112 (= (derivativeStep!1414 (regex!3994 lt!763191) (head!4589 lt!763202)) lt!763678)))

(declare-fun bm!124773 () Bool)

(declare-fun call!124780 () Regex!5419)

(declare-fun call!124778 () Regex!5419)

(assert (=> bm!124773 (= call!124780 call!124778)))

(declare-fun c!329112 () Bool)

(declare-fun c!329114 () Bool)

(declare-fun c!329113 () Bool)

(declare-fun bm!124774 () Bool)

(assert (=> bm!124774 (= call!124778 (derivativeStep!1414 (ite c!329112 (regOne!11351 (regex!3994 lt!763191)) (ite c!329114 (reg!5748 (regex!3994 lt!763191)) (ite c!329113 (regTwo!11350 (regex!3994 lt!763191)) (regOne!11350 (regex!3994 lt!763191))))) (head!4589 lt!763202)))))

(declare-fun b!2032648 () Bool)

(declare-fun e!1283801 () Regex!5419)

(assert (=> b!2032648 (= e!1283804 e!1283801)))

(declare-fun c!329111 () Bool)

(assert (=> b!2032648 (= c!329111 ((_ is ElementMatch!5419) (regex!3994 lt!763191)))))

(declare-fun call!124779 () Regex!5419)

(declare-fun e!1283802 () Regex!5419)

(declare-fun b!2032649 () Bool)

(declare-fun call!124781 () Regex!5419)

(assert (=> b!2032649 (= e!1283802 (Union!5419 (Concat!9550 call!124781 (regTwo!11350 (regex!3994 lt!763191))) call!124779))))

(declare-fun bm!124775 () Bool)

(assert (=> bm!124775 (= call!124781 (derivativeStep!1414 (ite c!329112 (regTwo!11351 (regex!3994 lt!763191)) (regOne!11350 (regex!3994 lt!763191))) (head!4589 lt!763202)))))

(declare-fun b!2032650 () Bool)

(assert (=> b!2032650 (= c!329112 ((_ is Union!5419) (regex!3994 lt!763191)))))

(declare-fun e!1283803 () Regex!5419)

(assert (=> b!2032650 (= e!1283801 e!1283803)))

(declare-fun b!2032651 () Bool)

(assert (=> b!2032651 (= e!1283802 (Union!5419 (Concat!9550 call!124779 (regTwo!11350 (regex!3994 lt!763191))) EmptyLang!5419))))

(declare-fun b!2032652 () Bool)

(declare-fun e!1283805 () Regex!5419)

(assert (=> b!2032652 (= e!1283803 e!1283805)))

(assert (=> b!2032652 (= c!329114 ((_ is Star!5419) (regex!3994 lt!763191)))))

(declare-fun b!2032653 () Bool)

(assert (=> b!2032653 (= c!329113 (nullable!1655 (regOne!11350 (regex!3994 lt!763191))))))

(assert (=> b!2032653 (= e!1283805 e!1283802)))

(declare-fun bm!124776 () Bool)

(assert (=> bm!124776 (= call!124779 call!124780)))

(declare-fun b!2032654 () Bool)

(assert (=> b!2032654 (= e!1283805 (Concat!9550 call!124780 (regex!3994 lt!763191)))))

(declare-fun b!2032655 () Bool)

(assert (=> b!2032655 (= e!1283801 (ite (= (head!4589 lt!763202) (c!328894 (regex!3994 lt!763191))) EmptyExpr!5419 EmptyLang!5419))))

(declare-fun b!2032656 () Bool)

(assert (=> b!2032656 (= e!1283803 (Union!5419 call!124778 call!124781))))

(declare-fun b!2032657 () Bool)

(assert (=> b!2032657 (= e!1283804 EmptyLang!5419)))

(assert (= (and d!622112 c!329110) b!2032657))

(assert (= (and d!622112 (not c!329110)) b!2032648))

(assert (= (and b!2032648 c!329111) b!2032655))

(assert (= (and b!2032648 (not c!329111)) b!2032650))

(assert (= (and b!2032650 c!329112) b!2032656))

(assert (= (and b!2032650 (not c!329112)) b!2032652))

(assert (= (and b!2032652 c!329114) b!2032654))

(assert (= (and b!2032652 (not c!329114)) b!2032653))

(assert (= (and b!2032653 c!329113) b!2032649))

(assert (= (and b!2032653 (not c!329113)) b!2032651))

(assert (= (or b!2032649 b!2032651) bm!124776))

(assert (= (or b!2032654 bm!124776) bm!124773))

(assert (= (or b!2032656 bm!124773) bm!124774))

(assert (= (or b!2032656 b!2032649) bm!124775))

(declare-fun m!2474387 () Bool)

(assert (=> d!622112 m!2474387))

(assert (=> d!622112 m!2472947))

(assert (=> bm!124774 m!2472943))

(declare-fun m!2474389 () Bool)

(assert (=> bm!124774 m!2474389))

(assert (=> bm!124775 m!2472943))

(declare-fun m!2474391 () Bool)

(assert (=> bm!124775 m!2474391))

(declare-fun m!2474393 () Bool)

(assert (=> b!2032653 m!2474393))

(assert (=> b!2031732 d!622112))

(declare-fun d!622134 () Bool)

(assert (=> d!622134 (= (head!4589 lt!763202) (h!27622 lt!763202))))

(assert (=> b!2031732 d!622134))

(declare-fun d!622136 () Bool)

(assert (=> d!622136 (= (tail!3064 lt!763202) (t!190662 lt!763202))))

(assert (=> b!2031732 d!622136))

(declare-fun d!622142 () Bool)

(declare-fun lt!763681 () Int)

(declare-fun size!17369 (List!22305) Int)

(assert (=> d!622142 (= lt!763681 (size!17369 (list!9080 (_1!11925 lt!763422))))))

(declare-fun size!17370 (Conc!7435) Int)

(assert (=> d!622142 (= lt!763681 (size!17370 (c!328895 (_1!11925 lt!763422))))))

(assert (=> d!622142 (= (size!17365 (_1!11925 lt!763422)) lt!763681)))

(declare-fun bs!421119 () Bool)

(assert (= bs!421119 d!622142))

(assert (=> bs!421119 m!2473447))

(assert (=> bs!421119 m!2473447))

(declare-fun m!2474401 () Bool)

(assert (=> bs!421119 m!2474401))

(declare-fun m!2474403 () Bool)

(assert (=> bs!421119 m!2474403))

(assert (=> d!621836 d!622142))

(declare-fun d!622148 () Bool)

(declare-fun e!1283935 () Bool)

(assert (=> d!622148 e!1283935))

(declare-fun res!891468 () Bool)

(assert (=> d!622148 (=> (not res!891468) (not e!1283935))))

(declare-fun lt!763852 () tuple2!20912)

(declare-fun lexRec!418 (LexerInterface!3607 List!22304 BalanceConc!14684) tuple2!20912)

(assert (=> d!622148 (= res!891468 (= (list!9080 (_1!11925 lt!763852)) (list!9080 (_1!11925 (lexRec!418 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(declare-fun e!1283936 () tuple2!20912)

(assert (=> d!622148 (= lt!763852 e!1283936)))

(declare-fun c!329180 () Bool)

(declare-datatypes ((tuple2!20922 0))(
  ( (tuple2!20923 (_1!11930 Token!7540) (_2!11930 BalanceConc!14684)) )
))
(declare-datatypes ((Option!4675 0))(
  ( (None!4674) (Some!4674 (v!27013 tuple2!20922)) )
))
(declare-fun lt!763829 () Option!4675)

(assert (=> d!622148 (= c!329180 ((_ is Some!4674) lt!763829))))

(declare-fun maxPrefixZipperSequenceV2!312 (LexerInterface!3607 List!22304 BalanceConc!14684 BalanceConc!14684) Option!4675)

(assert (=> d!622148 (= lt!763829 (maxPrefixZipperSequenceV2!312 thiss!23328 rules!3198 (seqFromList!2848 lt!763202) (seqFromList!2848 lt!763202)))))

(declare-fun lt!763859 () Unit!36902)

(declare-fun lt!763831 () Unit!36902)

(assert (=> d!622148 (= lt!763859 lt!763831)))

(declare-fun lt!763832 () List!22303)

(declare-fun lt!763842 () List!22303)

(declare-fun isSuffix!463 (List!22303 List!22303) Bool)

(assert (=> d!622148 (isSuffix!463 lt!763832 (++!6013 lt!763842 lt!763832))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!364 (List!22303 List!22303) Unit!36902)

(assert (=> d!622148 (= lt!763831 (lemmaConcatTwoListThenFSndIsSuffix!364 lt!763842 lt!763832))))

(assert (=> d!622148 (= lt!763832 (list!9077 (seqFromList!2848 lt!763202)))))

(assert (=> d!622148 (= lt!763842 (list!9077 (BalanceConc!14685 Empty!7434)))))

(assert (=> d!622148 (= (lexTailRecV2!708 thiss!23328 rules!3198 (seqFromList!2848 lt!763202) (BalanceConc!14685 Empty!7434) (seqFromList!2848 lt!763202) (BalanceConc!14687 Empty!7435)) lt!763852)))

(declare-fun b!2032889 () Bool)

(declare-fun e!1283934 () tuple2!20912)

(assert (=> b!2032889 (= e!1283934 (tuple2!20913 (BalanceConc!14687 Empty!7435) (seqFromList!2848 lt!763202)))))

(declare-fun b!2032890 () Bool)

(declare-fun lt!763841 () tuple2!20912)

(declare-fun lt!763837 () Option!4675)

(assert (=> b!2032890 (= lt!763841 (lexRec!418 thiss!23328 rules!3198 (_2!11930 (v!27013 lt!763837))))))

(declare-fun e!1283937 () tuple2!20912)

(declare-fun prepend!903 (BalanceConc!14686 Token!7540) BalanceConc!14686)

(assert (=> b!2032890 (= e!1283937 (tuple2!20913 (prepend!903 (_1!11925 lt!763841) (_1!11930 (v!27013 lt!763837))) (_2!11925 lt!763841)))))

(declare-fun b!2032891 () Bool)

(declare-fun lt!763855 () BalanceConc!14684)

(assert (=> b!2032891 (= e!1283937 (tuple2!20913 (BalanceConc!14687 Empty!7435) lt!763855))))

(declare-fun b!2032892 () Bool)

(declare-fun lt!763830 () tuple2!20912)

(declare-fun lt!763843 () Option!4675)

(assert (=> b!2032892 (= lt!763830 (lexRec!418 thiss!23328 rules!3198 (_2!11930 (v!27013 lt!763843))))))

(assert (=> b!2032892 (= e!1283934 (tuple2!20913 (prepend!903 (_1!11925 lt!763830) (_1!11930 (v!27013 lt!763843))) (_2!11925 lt!763830)))))

(declare-fun b!2032893 () Bool)

(assert (=> b!2032893 (= e!1283935 (= (list!9077 (_2!11925 lt!763852)) (list!9077 (_2!11925 (lexRec!418 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(declare-fun lt!763827 () BalanceConc!14684)

(declare-fun b!2032894 () Bool)

(declare-fun append!624 (BalanceConc!14686 Token!7540) BalanceConc!14686)

(assert (=> b!2032894 (= e!1283936 (lexTailRecV2!708 thiss!23328 rules!3198 (seqFromList!2848 lt!763202) lt!763827 (_2!11930 (v!27013 lt!763829)) (append!624 (BalanceConc!14687 Empty!7435) (_1!11930 (v!27013 lt!763829)))))))

(declare-fun lt!763839 () tuple2!20912)

(assert (=> b!2032894 (= lt!763839 (lexRec!418 thiss!23328 rules!3198 (_2!11930 (v!27013 lt!763829))))))

(declare-fun lt!763856 () List!22303)

(assert (=> b!2032894 (= lt!763856 (list!9077 (BalanceConc!14685 Empty!7434)))))

(declare-fun lt!763854 () List!22303)

(assert (=> b!2032894 (= lt!763854 (list!9077 (charsOf!2534 (_1!11930 (v!27013 lt!763829)))))))

(declare-fun lt!763860 () List!22303)

(assert (=> b!2032894 (= lt!763860 (list!9077 (_2!11930 (v!27013 lt!763829))))))

(declare-fun lt!763857 () Unit!36902)

(declare-fun lemmaConcatAssociativity!1260 (List!22303 List!22303 List!22303) Unit!36902)

(assert (=> b!2032894 (= lt!763857 (lemmaConcatAssociativity!1260 lt!763856 lt!763854 lt!763860))))

(assert (=> b!2032894 (= (++!6013 (++!6013 lt!763856 lt!763854) lt!763860) (++!6013 lt!763856 (++!6013 lt!763854 lt!763860)))))

(declare-fun lt!763848 () Unit!36902)

(assert (=> b!2032894 (= lt!763848 lt!763857)))

(declare-fun maxPrefixZipperSequence!784 (LexerInterface!3607 List!22304 BalanceConc!14684) Option!4675)

(assert (=> b!2032894 (= lt!763843 (maxPrefixZipperSequence!784 thiss!23328 rules!3198 (seqFromList!2848 lt!763202)))))

(declare-fun c!329182 () Bool)

(assert (=> b!2032894 (= c!329182 ((_ is Some!4674) lt!763843))))

(assert (=> b!2032894 (= (lexRec!418 thiss!23328 rules!3198 (seqFromList!2848 lt!763202)) e!1283934)))

(declare-fun lt!763851 () Unit!36902)

(declare-fun Unit!36914 () Unit!36902)

(assert (=> b!2032894 (= lt!763851 Unit!36914)))

(declare-fun lt!763836 () List!22305)

(assert (=> b!2032894 (= lt!763836 (list!9080 (BalanceConc!14687 Empty!7435)))))

(declare-fun lt!763835 () List!22305)

(assert (=> b!2032894 (= lt!763835 (Cons!22223 (_1!11930 (v!27013 lt!763829)) Nil!22223))))

(declare-fun lt!763838 () List!22305)

(assert (=> b!2032894 (= lt!763838 (list!9080 (_1!11925 lt!763839)))))

(declare-fun lt!763850 () Unit!36902)

(declare-fun lemmaConcatAssociativity!1261 (List!22305 List!22305 List!22305) Unit!36902)

(assert (=> b!2032894 (= lt!763850 (lemmaConcatAssociativity!1261 lt!763836 lt!763835 lt!763838))))

(declare-fun ++!6016 (List!22305 List!22305) List!22305)

(assert (=> b!2032894 (= (++!6016 (++!6016 lt!763836 lt!763835) lt!763838) (++!6016 lt!763836 (++!6016 lt!763835 lt!763838)))))

(declare-fun lt!763833 () Unit!36902)

(assert (=> b!2032894 (= lt!763833 lt!763850)))

(declare-fun lt!763849 () List!22303)

(assert (=> b!2032894 (= lt!763849 (++!6013 (list!9077 (BalanceConc!14685 Empty!7434)) (list!9077 (charsOf!2534 (_1!11930 (v!27013 lt!763829))))))))

(declare-fun lt!763846 () List!22303)

(assert (=> b!2032894 (= lt!763846 (list!9077 (_2!11930 (v!27013 lt!763829))))))

(declare-fun lt!763840 () List!22305)

(assert (=> b!2032894 (= lt!763840 (list!9080 (append!624 (BalanceConc!14687 Empty!7435) (_1!11930 (v!27013 lt!763829)))))))

(declare-fun lt!763844 () Unit!36902)

(declare-fun lemmaLexThenLexPrefix!306 (LexerInterface!3607 List!22304 List!22303 List!22303 List!22305 List!22305 List!22303) Unit!36902)

(assert (=> b!2032894 (= lt!763844 (lemmaLexThenLexPrefix!306 thiss!23328 rules!3198 lt!763849 lt!763846 lt!763840 (list!9080 (_1!11925 lt!763839)) (list!9077 (_2!11925 lt!763839))))))

(assert (=> b!2032894 (= (lexList!985 thiss!23328 rules!3198 lt!763849) (tuple2!20919 lt!763840 Nil!22221))))

(declare-fun lt!763845 () Unit!36902)

(assert (=> b!2032894 (= lt!763845 lt!763844)))

(assert (=> b!2032894 (= lt!763855 (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (_1!11930 (v!27013 lt!763829)))))))

(assert (=> b!2032894 (= lt!763837 (maxPrefixZipperSequence!784 thiss!23328 rules!3198 lt!763855))))

(declare-fun c!329181 () Bool)

(assert (=> b!2032894 (= c!329181 ((_ is Some!4674) lt!763837))))

(assert (=> b!2032894 (= (lexRec!418 thiss!23328 rules!3198 (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (_1!11930 (v!27013 lt!763829))))) e!1283937)))

(declare-fun lt!763853 () Unit!36902)

(declare-fun Unit!36915 () Unit!36902)

(assert (=> b!2032894 (= lt!763853 Unit!36915)))

(assert (=> b!2032894 (= lt!763827 (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (_1!11930 (v!27013 lt!763829)))))))

(declare-fun lt!763847 () List!22303)

(assert (=> b!2032894 (= lt!763847 (list!9077 lt!763827))))

(declare-fun lt!763828 () List!22303)

(assert (=> b!2032894 (= lt!763828 (list!9077 (_2!11930 (v!27013 lt!763829))))))

(declare-fun lt!763834 () Unit!36902)

(assert (=> b!2032894 (= lt!763834 (lemmaConcatTwoListThenFSndIsSuffix!364 lt!763847 lt!763828))))

(assert (=> b!2032894 (isSuffix!463 lt!763828 (++!6013 lt!763847 lt!763828))))

(declare-fun lt!763858 () Unit!36902)

(assert (=> b!2032894 (= lt!763858 lt!763834)))

(declare-fun b!2032895 () Bool)

(assert (=> b!2032895 (= e!1283936 (tuple2!20913 (BalanceConc!14687 Empty!7435) (seqFromList!2848 lt!763202)))))

(assert (= (and d!622148 c!329180) b!2032894))

(assert (= (and d!622148 (not c!329180)) b!2032895))

(assert (= (and b!2032894 c!329182) b!2032892))

(assert (= (and b!2032894 (not c!329182)) b!2032889))

(assert (= (and b!2032894 c!329181) b!2032890))

(assert (= (and b!2032894 (not c!329181)) b!2032891))

(assert (= (and d!622148 res!891468) b!2032893))

(declare-fun m!2474771 () Bool)

(assert (=> d!622148 m!2474771))

(declare-fun m!2474773 () Bool)

(assert (=> d!622148 m!2474773))

(assert (=> d!622148 m!2472775))

(declare-fun m!2474775 () Bool)

(assert (=> d!622148 m!2474775))

(declare-fun m!2474777 () Bool)

(assert (=> d!622148 m!2474777))

(assert (=> d!622148 m!2474777))

(declare-fun m!2474779 () Bool)

(assert (=> d!622148 m!2474779))

(assert (=> d!622148 m!2472775))

(assert (=> d!622148 m!2472775))

(declare-fun m!2474781 () Bool)

(assert (=> d!622148 m!2474781))

(assert (=> d!622148 m!2473525))

(declare-fun m!2474783 () Bool)

(assert (=> d!622148 m!2474783))

(assert (=> d!622148 m!2472775))

(assert (=> d!622148 m!2473449))

(declare-fun m!2474785 () Bool)

(assert (=> b!2032893 m!2474785))

(assert (=> b!2032893 m!2472775))

(assert (=> b!2032893 m!2474775))

(declare-fun m!2474787 () Bool)

(assert (=> b!2032893 m!2474787))

(declare-fun m!2474789 () Bool)

(assert (=> b!2032894 m!2474789))

(declare-fun m!2474791 () Bool)

(assert (=> b!2032894 m!2474791))

(declare-fun m!2474793 () Bool)

(assert (=> b!2032894 m!2474793))

(declare-fun m!2474795 () Bool)

(assert (=> b!2032894 m!2474795))

(assert (=> b!2032894 m!2472775))

(declare-fun m!2474797 () Bool)

(assert (=> b!2032894 m!2474797))

(declare-fun m!2474799 () Bool)

(assert (=> b!2032894 m!2474799))

(assert (=> b!2032894 m!2474797))

(declare-fun m!2474801 () Bool)

(assert (=> b!2032894 m!2474801))

(declare-fun m!2474803 () Bool)

(assert (=> b!2032894 m!2474803))

(declare-fun m!2474805 () Bool)

(assert (=> b!2032894 m!2474805))

(assert (=> b!2032894 m!2474789))

(declare-fun m!2474807 () Bool)

(assert (=> b!2032894 m!2474807))

(declare-fun m!2474809 () Bool)

(assert (=> b!2032894 m!2474809))

(declare-fun m!2474811 () Bool)

(assert (=> b!2032894 m!2474811))

(assert (=> b!2032894 m!2472775))

(declare-fun m!2474813 () Bool)

(assert (=> b!2032894 m!2474813))

(assert (=> b!2032894 m!2474789))

(declare-fun m!2474815 () Bool)

(assert (=> b!2032894 m!2474815))

(declare-fun m!2474817 () Bool)

(assert (=> b!2032894 m!2474817))

(declare-fun m!2474819 () Bool)

(assert (=> b!2032894 m!2474819))

(declare-fun m!2474821 () Bool)

(assert (=> b!2032894 m!2474821))

(declare-fun m!2474823 () Bool)

(assert (=> b!2032894 m!2474823))

(assert (=> b!2032894 m!2474821))

(declare-fun m!2474825 () Bool)

(assert (=> b!2032894 m!2474825))

(declare-fun m!2474827 () Bool)

(assert (=> b!2032894 m!2474827))

(declare-fun m!2474829 () Bool)

(assert (=> b!2032894 m!2474829))

(declare-fun m!2474831 () Bool)

(assert (=> b!2032894 m!2474831))

(assert (=> b!2032894 m!2472775))

(assert (=> b!2032894 m!2474775))

(assert (=> b!2032894 m!2474815))

(declare-fun m!2474833 () Bool)

(assert (=> b!2032894 m!2474833))

(declare-fun m!2474835 () Bool)

(assert (=> b!2032894 m!2474835))

(assert (=> b!2032894 m!2474803))

(assert (=> b!2032894 m!2474797))

(assert (=> b!2032894 m!2473525))

(assert (=> b!2032894 m!2474807))

(declare-fun m!2474837 () Bool)

(assert (=> b!2032894 m!2474837))

(declare-fun m!2474839 () Bool)

(assert (=> b!2032894 m!2474839))

(assert (=> b!2032894 m!2474835))

(assert (=> b!2032894 m!2474811))

(declare-fun m!2474841 () Bool)

(assert (=> b!2032894 m!2474841))

(declare-fun m!2474843 () Bool)

(assert (=> b!2032894 m!2474843))

(assert (=> b!2032894 m!2473525))

(declare-fun m!2474845 () Bool)

(assert (=> b!2032894 m!2474845))

(assert (=> b!2032894 m!2474791))

(declare-fun m!2474847 () Bool)

(assert (=> b!2032894 m!2474847))

(declare-fun m!2474849 () Bool)

(assert (=> b!2032894 m!2474849))

(assert (=> b!2032894 m!2474827))

(assert (=> b!2032894 m!2474793))

(declare-fun m!2474851 () Bool)

(assert (=> b!2032892 m!2474851))

(declare-fun m!2474853 () Bool)

(assert (=> b!2032892 m!2474853))

(declare-fun m!2474855 () Bool)

(assert (=> b!2032890 m!2474855))

(declare-fun m!2474857 () Bool)

(assert (=> b!2032890 m!2474857))

(assert (=> d!621836 d!622148))

(declare-fun d!622292 () Bool)

(declare-fun res!891469 () Bool)

(declare-fun e!1283938 () Bool)

(assert (=> d!622292 (=> res!891469 e!1283938)))

(assert (=> d!622292 (= res!891469 (not ((_ is Cons!22222) (t!190663 rules!3198))))))

(assert (=> d!622292 (= (sepAndNonSepRulesDisjointChars!1092 rules!3198 (t!190663 rules!3198)) e!1283938)))

(declare-fun b!2032896 () Bool)

(declare-fun e!1283939 () Bool)

(assert (=> b!2032896 (= e!1283938 e!1283939)))

(declare-fun res!891470 () Bool)

(assert (=> b!2032896 (=> (not res!891470) (not e!1283939))))

(assert (=> b!2032896 (= res!891470 (ruleDisjointCharsFromAllFromOtherType!495 (h!27623 (t!190663 rules!3198)) rules!3198))))

(declare-fun b!2032897 () Bool)

(assert (=> b!2032897 (= e!1283939 (sepAndNonSepRulesDisjointChars!1092 rules!3198 (t!190663 (t!190663 rules!3198))))))

(assert (= (and d!622292 (not res!891469)) b!2032896))

(assert (= (and b!2032896 res!891470) b!2032897))

(declare-fun m!2474859 () Bool)

(assert (=> b!2032896 m!2474859))

(declare-fun m!2474861 () Bool)

(assert (=> b!2032897 m!2474861))

(assert (=> b!2031720 d!622292))

(declare-fun d!622294 () Bool)

(declare-fun charsToBigInt!1 (List!22302) Int)

(assert (=> d!622294 (= (inv!17 (value!125420 (h!27624 tokens!598))) (= (charsToBigInt!1 (text!29358 (value!125420 (h!27624 tokens!598)))) (value!125412 (value!125420 (h!27624 tokens!598)))))))

(declare-fun bs!421151 () Bool)

(assert (= bs!421151 d!622294))

(declare-fun m!2474863 () Bool)

(assert (=> bs!421151 m!2474863))

(assert (=> b!2031693 d!622294))

(declare-fun d!622296 () Bool)

(assert (=> d!622296 (= (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))) (not (isEmpty!13881 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))

(declare-fun bs!421152 () Bool)

(assert (= bs!421152 d!622296))

(assert (=> bs!421152 m!2472731))

(declare-fun m!2474865 () Bool)

(assert (=> bs!421152 m!2474865))

(assert (=> d!621768 d!622296))

(assert (=> d!621768 d!621822))

(declare-fun d!622298 () Bool)

(declare-fun e!1283942 () Bool)

(assert (=> d!622298 e!1283942))

(declare-fun res!891475 () Bool)

(assert (=> d!622298 (=> (not res!891475) (not e!1283942))))

(assert (=> d!622298 (= res!891475 (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))))))

(assert (=> d!622298 true))

(declare-fun _$52!1333 () Unit!36902)

(assert (=> d!622298 (= (choose!12392 thiss!23328 rules!3198 lt!763202 (h!27624 tokens!598)) _$52!1333)))

(declare-fun b!2032902 () Bool)

(declare-fun res!891476 () Bool)

(assert (=> b!2032902 (=> (not res!891476) (not e!1283942))))

(assert (=> b!2032902 (= res!891476 (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))) (list!9077 (charsOf!2534 (h!27624 tokens!598)))))))

(declare-fun b!2032903 () Bool)

(assert (=> b!2032903 (= e!1283942 (= (rule!6229 (h!27624 tokens!598)) (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))

(assert (= (and d!622298 res!891475) b!2032902))

(assert (= (and b!2032902 res!891476) b!2032903))

(assert (=> d!622298 m!2472731))

(assert (=> d!622298 m!2472731))

(assert (=> d!622298 m!2472953))

(assert (=> b!2032902 m!2472731))

(assert (=> b!2032902 m!2472743))

(assert (=> b!2032902 m!2472957))

(assert (=> b!2032902 m!2472957))

(assert (=> b!2032902 m!2472959))

(assert (=> b!2032902 m!2472743))

(assert (=> b!2032902 m!2472731))

(assert (=> b!2032902 m!2472961))

(assert (=> b!2032903 m!2472731))

(assert (=> b!2032903 m!2472731))

(assert (=> b!2032903 m!2472961))

(assert (=> d!621768 d!622298))

(assert (=> d!621768 d!621912))

(declare-fun d!622300 () Bool)

(declare-fun lt!763863 () Bool)

(assert (=> d!622300 (= lt!763863 (isEmpty!13880 (list!9077 (_2!11925 lt!763221))))))

(declare-fun isEmpty!13888 (Conc!7434) Bool)

(assert (=> d!622300 (= lt!763863 (isEmpty!13888 (c!328893 (_2!11925 lt!763221))))))

(assert (=> d!622300 (= (isEmpty!13878 (_2!11925 lt!763221)) lt!763863)))

(declare-fun bs!421153 () Bool)

(assert (= bs!421153 d!622300))

(declare-fun m!2474867 () Bool)

(assert (=> bs!421153 m!2474867))

(assert (=> bs!421153 m!2474867))

(declare-fun m!2474869 () Bool)

(assert (=> bs!421153 m!2474869))

(declare-fun m!2474871 () Bool)

(assert (=> bs!421153 m!2474871))

(assert (=> b!2031627 d!622300))

(declare-fun d!622302 () Bool)

(assert (=> d!622302 (= (isEmpty!13880 (tail!3064 lt!763202)) ((_ is Nil!22221) (tail!3064 lt!763202)))))

(assert (=> b!2031736 d!622302))

(assert (=> b!2031736 d!622136))

(declare-fun d!622304 () Bool)

(assert (=> d!622304 (= (head!4589 lt!763185) (h!27622 lt!763185))))

(assert (=> b!2031681 d!622304))

(declare-fun b!2032904 () Bool)

(declare-fun res!891477 () Bool)

(declare-fun e!1283944 () Bool)

(assert (=> b!2032904 (=> (not res!891477) (not e!1283944))))

(declare-fun lt!763864 () tuple2!20912)

(assert (=> b!2032904 (= res!891477 (= (list!9080 (_1!11925 lt!763864)) (_1!11928 (lexList!985 thiss!23328 rules!3198 (list!9077 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))))))))))

(declare-fun b!2032905 () Bool)

(declare-fun e!1283943 () Bool)

(assert (=> b!2032905 (= e!1283943 (= (_2!11925 lt!763864) (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)))))))

(declare-fun b!2032906 () Bool)

(declare-fun e!1283945 () Bool)

(assert (=> b!2032906 (= e!1283945 (not (isEmpty!13874 (_1!11925 lt!763864))))))

(declare-fun d!622306 () Bool)

(assert (=> d!622306 e!1283944))

(declare-fun res!891479 () Bool)

(assert (=> d!622306 (=> (not res!891479) (not e!1283944))))

(assert (=> d!622306 (= res!891479 e!1283943)))

(declare-fun c!329183 () Bool)

(assert (=> d!622306 (= c!329183 (> (size!17365 (_1!11925 lt!763864)) 0))))

(assert (=> d!622306 (= lt!763864 (lexTailRecV2!708 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))) (BalanceConc!14685 Empty!7434) (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))) (BalanceConc!14687 Empty!7435)))))

(assert (=> d!622306 (= (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)))) lt!763864)))

(declare-fun b!2032907 () Bool)

(assert (=> b!2032907 (= e!1283944 (= (list!9077 (_2!11925 lt!763864)) (_2!11928 (lexList!985 thiss!23328 rules!3198 (list!9077 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))))))))))

(declare-fun b!2032908 () Bool)

(assert (=> b!2032908 (= e!1283943 e!1283945)))

(declare-fun res!891478 () Bool)

(assert (=> b!2032908 (= res!891478 (< (size!17368 (_2!11925 lt!763864)) (size!17368 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))))))))

(assert (=> b!2032908 (=> (not res!891478) (not e!1283945))))

(assert (= (and d!622306 c!329183) b!2032908))

(assert (= (and d!622306 (not c!329183)) b!2032905))

(assert (= (and b!2032908 res!891478) b!2032906))

(assert (= (and d!622306 res!891479) b!2032904))

(assert (= (and b!2032904 res!891477) b!2032907))

(declare-fun m!2474873 () Bool)

(assert (=> b!2032908 m!2474873))

(assert (=> b!2032908 m!2472835))

(declare-fun m!2474875 () Bool)

(assert (=> b!2032908 m!2474875))

(declare-fun m!2474877 () Bool)

(assert (=> b!2032906 m!2474877))

(declare-fun m!2474879 () Bool)

(assert (=> b!2032904 m!2474879))

(assert (=> b!2032904 m!2472835))

(declare-fun m!2474881 () Bool)

(assert (=> b!2032904 m!2474881))

(assert (=> b!2032904 m!2474881))

(declare-fun m!2474883 () Bool)

(assert (=> b!2032904 m!2474883))

(declare-fun m!2474885 () Bool)

(assert (=> d!622306 m!2474885))

(assert (=> d!622306 m!2472835))

(assert (=> d!622306 m!2472835))

(declare-fun m!2474887 () Bool)

(assert (=> d!622306 m!2474887))

(declare-fun m!2474889 () Bool)

(assert (=> b!2032907 m!2474889))

(assert (=> b!2032907 m!2472835))

(assert (=> b!2032907 m!2474881))

(assert (=> b!2032907 m!2474881))

(assert (=> b!2032907 m!2474883))

(assert (=> d!621722 d!622306))

(assert (=> d!621722 d!621888))

(declare-fun d!622308 () Bool)

(declare-fun lt!763865 () Int)

(assert (=> d!622308 (= lt!763865 (size!17369 (list!9080 (_1!11925 lt!763221))))))

(assert (=> d!622308 (= lt!763865 (size!17370 (c!328895 (_1!11925 lt!763221))))))

(assert (=> d!622308 (= (size!17365 (_1!11925 lt!763221)) lt!763865)))

(declare-fun bs!421154 () Bool)

(assert (= bs!421154 d!622308))

(declare-fun m!2474891 () Bool)

(assert (=> bs!421154 m!2474891))

(assert (=> bs!421154 m!2474891))

(declare-fun m!2474893 () Bool)

(assert (=> bs!421154 m!2474893))

(declare-fun m!2474895 () Bool)

(assert (=> bs!421154 m!2474895))

(assert (=> d!621722 d!622308))

(declare-fun d!622310 () Bool)

(declare-fun list!9084 (Conc!7435) List!22305)

(assert (=> d!622310 (= (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)))))) (list!9084 (c!328895 (_1!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))))))))))

(declare-fun bs!421155 () Bool)

(assert (= bs!421155 d!622310))

(declare-fun m!2474897 () Bool)

(assert (=> bs!421155 m!2474897))

(assert (=> d!621722 d!622310))

(declare-fun d!622312 () Bool)

(declare-fun lt!763866 () BalanceConc!14684)

(assert (=> d!622312 (= (list!9077 lt!763866) (printList!1126 thiss!23328 (list!9080 (singletonSeq!1970 (h!27624 tokens!598)))))))

(assert (=> d!622312 (= lt!763866 (printTailRec!1075 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)) 0 (BalanceConc!14685 Empty!7434)))))

(assert (=> d!622312 (= (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))) lt!763866)))

(declare-fun bs!421156 () Bool)

(assert (= bs!421156 d!622312))

(declare-fun m!2474899 () Bool)

(assert (=> bs!421156 m!2474899))

(assert (=> bs!421156 m!2472759))

(assert (=> bs!421156 m!2472843))

(assert (=> bs!421156 m!2472843))

(declare-fun m!2474901 () Bool)

(assert (=> bs!421156 m!2474901))

(assert (=> bs!421156 m!2472759))

(declare-fun m!2474903 () Bool)

(assert (=> bs!421156 m!2474903))

(assert (=> d!621722 d!622312))

(assert (=> d!621722 d!621718))

(declare-fun d!622314 () Bool)

(assert (=> d!622314 (= (list!9080 (singletonSeq!1970 (h!27624 tokens!598))) (list!9084 (c!328895 (singletonSeq!1970 (h!27624 tokens!598)))))))

(declare-fun bs!421157 () Bool)

(assert (= bs!421157 d!622314))

(declare-fun m!2474905 () Bool)

(assert (=> bs!421157 m!2474905))

(assert (=> d!621722 d!622314))

(declare-fun d!622316 () Bool)

(assert (=> d!622316 (= (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))) (list!9081 (c!328893 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))))))

(declare-fun bs!421158 () Bool)

(assert (= bs!421158 d!622316))

(declare-fun m!2474907 () Bool)

(assert (=> bs!421158 m!2474907))

(assert (=> b!2031763 d!622316))

(declare-fun d!622318 () Bool)

(declare-fun lt!763867 () BalanceConc!14684)

(assert (=> d!622318 (= (list!9077 lt!763867) (originalCharacters!4801 (_1!11926 (get!7060 lt!763244))))))

(assert (=> d!622318 (= lt!763867 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))) (value!125420 (_1!11926 (get!7060 lt!763244)))))))

(assert (=> d!622318 (= (charsOf!2534 (_1!11926 (get!7060 lt!763244))) lt!763867)))

(declare-fun b_lambda!68539 () Bool)

(assert (=> (not b_lambda!68539) (not d!622318)))

(declare-fun t!190863 () Bool)

(declare-fun tb!128525 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190863) tb!128525))

(declare-fun b!2032909 () Bool)

(declare-fun e!1283946 () Bool)

(declare-fun tp!603784 () Bool)

(assert (=> b!2032909 (= e!1283946 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))) (value!125420 (_1!11926 (get!7060 lt!763244)))))) tp!603784))))

(declare-fun result!153716 () Bool)

(assert (=> tb!128525 (= result!153716 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))) (value!125420 (_1!11926 (get!7060 lt!763244))))) e!1283946))))

(assert (= tb!128525 b!2032909))

(declare-fun m!2474909 () Bool)

(assert (=> b!2032909 m!2474909))

(declare-fun m!2474911 () Bool)

(assert (=> tb!128525 m!2474911))

(assert (=> d!622318 t!190863))

(declare-fun b_and!162157 () Bool)

(assert (= b_and!162075 (and (=> t!190863 result!153716) b_and!162157)))

(declare-fun tb!128527 () Bool)

(declare-fun t!190865 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190865) tb!128527))

(declare-fun result!153718 () Bool)

(assert (= result!153718 result!153716))

(assert (=> d!622318 t!190865))

(declare-fun b_and!162159 () Bool)

(assert (= b_and!162011 (and (=> t!190865 result!153718) b_and!162159)))

(declare-fun tb!128529 () Bool)

(declare-fun t!190867 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190867) tb!128529))

(declare-fun result!153720 () Bool)

(assert (= result!153720 result!153716))

(assert (=> d!622318 t!190867))

(declare-fun b_and!162161 () Bool)

(assert (= b_and!162007 (and (=> t!190867 result!153720) b_and!162161)))

(declare-fun tb!128531 () Bool)

(declare-fun t!190869 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190869) tb!128531))

(declare-fun result!153722 () Bool)

(assert (= result!153722 result!153716))

(assert (=> d!622318 t!190869))

(declare-fun b_and!162163 () Bool)

(assert (= b_and!162071 (and (=> t!190869 result!153722) b_and!162163)))

(declare-fun tb!128533 () Bool)

(declare-fun t!190871 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190871) tb!128533))

(declare-fun result!153724 () Bool)

(assert (= result!153724 result!153716))

(assert (=> d!622318 t!190871))

(declare-fun b_and!162165 () Bool)

(assert (= b_and!162009 (and (=> t!190871 result!153724) b_and!162165)))

(declare-fun m!2474913 () Bool)

(assert (=> d!622318 m!2474913))

(declare-fun m!2474915 () Bool)

(assert (=> d!622318 m!2474915))

(assert (=> b!2031763 d!622318))

(declare-fun d!622320 () Bool)

(assert (=> d!622320 (= (get!7060 lt!763244) (v!27006 lt!763244))))

(assert (=> b!2031763 d!622320))

(declare-fun d!622322 () Bool)

(assert (=> d!622322 (= (isEmpty!13882 lt!763307) (not ((_ is Some!4673) lt!763307)))))

(assert (=> d!621786 d!622322))

(declare-fun b!2032920 () Bool)

(declare-fun e!1283954 () Bool)

(assert (=> b!2032920 (= e!1283954 (isPrefix!1987 (tail!3064 (++!6013 lt!763202 lt!763193)) (tail!3064 (++!6013 lt!763202 lt!763193))))))

(declare-fun d!622324 () Bool)

(declare-fun e!1283953 () Bool)

(assert (=> d!622324 e!1283953))

(declare-fun res!891491 () Bool)

(assert (=> d!622324 (=> res!891491 e!1283953)))

(declare-fun lt!763870 () Bool)

(assert (=> d!622324 (= res!891491 (not lt!763870))))

(declare-fun e!1283955 () Bool)

(assert (=> d!622324 (= lt!763870 e!1283955)))

(declare-fun res!891489 () Bool)

(assert (=> d!622324 (=> res!891489 e!1283955)))

(assert (=> d!622324 (= res!891489 ((_ is Nil!22221) (++!6013 lt!763202 lt!763193)))))

(assert (=> d!622324 (= (isPrefix!1987 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193)) lt!763870)))

(declare-fun b!2032918 () Bool)

(assert (=> b!2032918 (= e!1283955 e!1283954)))

(declare-fun res!891488 () Bool)

(assert (=> b!2032918 (=> (not res!891488) (not e!1283954))))

(assert (=> b!2032918 (= res!891488 (not ((_ is Nil!22221) (++!6013 lt!763202 lt!763193))))))

(declare-fun b!2032921 () Bool)

(assert (=> b!2032921 (= e!1283953 (>= (size!17366 (++!6013 lt!763202 lt!763193)) (size!17366 (++!6013 lt!763202 lt!763193))))))

(declare-fun b!2032919 () Bool)

(declare-fun res!891490 () Bool)

(assert (=> b!2032919 (=> (not res!891490) (not e!1283954))))

(assert (=> b!2032919 (= res!891490 (= (head!4589 (++!6013 lt!763202 lt!763193)) (head!4589 (++!6013 lt!763202 lt!763193))))))

(assert (= (and d!622324 (not res!891489)) b!2032918))

(assert (= (and b!2032918 res!891488) b!2032919))

(assert (= (and b!2032919 res!891490) b!2032920))

(assert (= (and d!622324 (not res!891491)) b!2032921))

(assert (=> b!2032920 m!2472713))

(declare-fun m!2474917 () Bool)

(assert (=> b!2032920 m!2474917))

(assert (=> b!2032920 m!2472713))

(assert (=> b!2032920 m!2474917))

(assert (=> b!2032920 m!2474917))

(assert (=> b!2032920 m!2474917))

(declare-fun m!2474919 () Bool)

(assert (=> b!2032920 m!2474919))

(assert (=> b!2032921 m!2472713))

(assert (=> b!2032921 m!2473115))

(assert (=> b!2032921 m!2472713))

(assert (=> b!2032921 m!2473115))

(assert (=> b!2032919 m!2472713))

(declare-fun m!2474921 () Bool)

(assert (=> b!2032919 m!2474921))

(assert (=> b!2032919 m!2472713))

(assert (=> b!2032919 m!2474921))

(assert (=> d!621786 d!622324))

(declare-fun d!622326 () Bool)

(assert (=> d!622326 (isPrefix!1987 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193))))

(declare-fun lt!763873 () Unit!36902)

(declare-fun choose!12399 (List!22303 List!22303) Unit!36902)

(assert (=> d!622326 (= lt!763873 (choose!12399 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193)))))

(assert (=> d!622326 (= (lemmaIsPrefixRefl!1305 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193)) lt!763873)))

(declare-fun bs!421159 () Bool)

(assert (= bs!421159 d!622326))

(assert (=> bs!421159 m!2472713))

(assert (=> bs!421159 m!2472713))

(assert (=> bs!421159 m!2473123))

(assert (=> bs!421159 m!2472713))

(assert (=> bs!421159 m!2472713))

(declare-fun m!2474923 () Bool)

(assert (=> bs!421159 m!2474923))

(assert (=> d!621786 d!622326))

(declare-fun d!622328 () Bool)

(assert (=> d!622328 true))

(declare-fun lt!763876 () Bool)

(declare-fun lambda!76594 () Int)

(declare-fun forall!4730 (List!22304 Int) Bool)

(assert (=> d!622328 (= lt!763876 (forall!4730 rules!3198 lambda!76594))))

(declare-fun e!1283961 () Bool)

(assert (=> d!622328 (= lt!763876 e!1283961)))

(declare-fun res!891496 () Bool)

(assert (=> d!622328 (=> res!891496 e!1283961)))

(assert (=> d!622328 (= res!891496 (not ((_ is Cons!22222) rules!3198)))))

(assert (=> d!622328 (= (rulesValidInductive!1386 thiss!23328 rules!3198) lt!763876)))

(declare-fun b!2032926 () Bool)

(declare-fun e!1283960 () Bool)

(assert (=> b!2032926 (= e!1283961 e!1283960)))

(declare-fun res!891497 () Bool)

(assert (=> b!2032926 (=> (not res!891497) (not e!1283960))))

(declare-fun ruleValid!1225 (LexerInterface!3607 Rule!7788) Bool)

(assert (=> b!2032926 (= res!891497 (ruleValid!1225 thiss!23328 (h!27623 rules!3198)))))

(declare-fun b!2032927 () Bool)

(assert (=> b!2032927 (= e!1283960 (rulesValidInductive!1386 thiss!23328 (t!190663 rules!3198)))))

(assert (= (and d!622328 (not res!891496)) b!2032926))

(assert (= (and b!2032926 res!891497) b!2032927))

(declare-fun m!2474925 () Bool)

(assert (=> d!622328 m!2474925))

(declare-fun m!2474927 () Bool)

(assert (=> b!2032926 m!2474927))

(declare-fun m!2474929 () Bool)

(assert (=> b!2032927 m!2474929))

(assert (=> d!621786 d!622328))

(declare-fun b!2032939 () Bool)

(declare-fun e!1283966 () List!22303)

(declare-fun e!1283967 () List!22303)

(assert (=> b!2032939 (= e!1283966 e!1283967)))

(declare-fun c!329189 () Bool)

(assert (=> b!2032939 (= c!329189 ((_ is Leaf!10894) (c!328893 (charsOf!2534 separatorToken!354))))))

(declare-fun b!2032938 () Bool)

(assert (=> b!2032938 (= e!1283966 Nil!22221)))

(declare-fun b!2032941 () Bool)

(assert (=> b!2032941 (= e!1283967 (++!6013 (list!9081 (left!17681 (c!328893 (charsOf!2534 separatorToken!354)))) (list!9081 (right!18011 (c!328893 (charsOf!2534 separatorToken!354))))))))

(declare-fun b!2032940 () Bool)

(declare-fun list!9085 (IArray!14873) List!22303)

(assert (=> b!2032940 (= e!1283967 (list!9085 (xs!10336 (c!328893 (charsOf!2534 separatorToken!354)))))))

(declare-fun d!622330 () Bool)

(declare-fun c!329188 () Bool)

(assert (=> d!622330 (= c!329188 ((_ is Empty!7434) (c!328893 (charsOf!2534 separatorToken!354))))))

(assert (=> d!622330 (= (list!9081 (c!328893 (charsOf!2534 separatorToken!354))) e!1283966)))

(assert (= (and d!622330 c!329188) b!2032938))

(assert (= (and d!622330 (not c!329188)) b!2032939))

(assert (= (and b!2032939 c!329189) b!2032940))

(assert (= (and b!2032939 (not c!329189)) b!2032941))

(declare-fun m!2474931 () Bool)

(assert (=> b!2032941 m!2474931))

(declare-fun m!2474933 () Bool)

(assert (=> b!2032941 m!2474933))

(assert (=> b!2032941 m!2474931))

(assert (=> b!2032941 m!2474933))

(declare-fun m!2474935 () Bool)

(assert (=> b!2032941 m!2474935))

(declare-fun m!2474937 () Bool)

(assert (=> b!2032940 m!2474937))

(assert (=> d!621826 d!622330))

(declare-fun d!622332 () Bool)

(declare-fun dynLambda!11074 (Int BalanceConc!14684 BalanceConc!14684) Bool)

(assert (=> d!622332 (dynLambda!11074 lambda!76563 lt!763199 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))

(declare-fun lt!763879 () Unit!36902)

(declare-fun choose!12400 (Int BalanceConc!14684 BalanceConc!14684) Unit!36902)

(assert (=> d!622332 (= lt!763879 (choose!12400 lambda!76563 lt!763199 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))))))

(declare-fun Forall2!647 (Int) Bool)

(assert (=> d!622332 (Forall2!647 lambda!76563)))

(assert (=> d!622332 (= (Forall2of!247 lambda!76563 lt!763199 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))) lt!763879)))

(declare-fun b_lambda!68541 () Bool)

(assert (=> (not b_lambda!68541) (not d!622332)))

(declare-fun bs!421160 () Bool)

(assert (= bs!421160 d!622332))

(assert (=> bs!421160 m!2472721))

(declare-fun m!2474939 () Bool)

(assert (=> bs!421160 m!2474939))

(assert (=> bs!421160 m!2472721))

(declare-fun m!2474941 () Bool)

(assert (=> bs!421160 m!2474941))

(declare-fun m!2474943 () Bool)

(assert (=> bs!421160 m!2474943))

(assert (=> d!621812 d!622332))

(assert (=> d!621812 d!621818))

(declare-fun d!622334 () Bool)

(assert (=> d!622334 (= (list!9077 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))) (list!9081 (c!328893 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(declare-fun bs!421161 () Bool)

(assert (= bs!421161 d!622334))

(declare-fun m!2474945 () Bool)

(assert (=> bs!421161 m!2474945))

(assert (=> d!621812 d!622334))

(declare-fun b!2032944 () Bool)

(declare-fun e!1283968 () List!22303)

(declare-fun e!1283969 () List!22303)

(assert (=> b!2032944 (= e!1283968 e!1283969)))

(declare-fun c!329191 () Bool)

(assert (=> b!2032944 (= c!329191 ((_ is Leaf!10894) (c!328893 lt!763197)))))

(declare-fun b!2032943 () Bool)

(assert (=> b!2032943 (= e!1283968 Nil!22221)))

(declare-fun b!2032946 () Bool)

(assert (=> b!2032946 (= e!1283969 (++!6013 (list!9081 (left!17681 (c!328893 lt!763197))) (list!9081 (right!18011 (c!328893 lt!763197)))))))

(declare-fun b!2032945 () Bool)

(assert (=> b!2032945 (= e!1283969 (list!9085 (xs!10336 (c!328893 lt!763197))))))

(declare-fun d!622336 () Bool)

(declare-fun c!329190 () Bool)

(assert (=> d!622336 (= c!329190 ((_ is Empty!7434) (c!328893 lt!763197)))))

(assert (=> d!622336 (= (list!9081 (c!328893 lt!763197)) e!1283968)))

(assert (= (and d!622336 c!329190) b!2032943))

(assert (= (and d!622336 (not c!329190)) b!2032944))

(assert (= (and b!2032944 c!329191) b!2032945))

(assert (= (and b!2032944 (not c!329191)) b!2032946))

(declare-fun m!2474947 () Bool)

(assert (=> b!2032946 m!2474947))

(declare-fun m!2474949 () Bool)

(assert (=> b!2032946 m!2474949))

(assert (=> b!2032946 m!2474947))

(assert (=> b!2032946 m!2474949))

(declare-fun m!2474951 () Bool)

(assert (=> b!2032946 m!2474951))

(declare-fun m!2474953 () Bool)

(assert (=> b!2032945 m!2474953))

(assert (=> d!621890 d!622336))

(declare-fun d!622338 () Bool)

(declare-fun lt!763880 () Bool)

(assert (=> d!622338 (= lt!763880 (select (content!3287 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763244)))))))

(declare-fun e!1283970 () Bool)

(assert (=> d!622338 (= lt!763880 e!1283970)))

(declare-fun res!891499 () Bool)

(assert (=> d!622338 (=> (not res!891499) (not e!1283970))))

(assert (=> d!622338 (= res!891499 ((_ is Cons!22222) rules!3198))))

(assert (=> d!622338 (= (contains!4106 rules!3198 (rule!6229 (_1!11926 (get!7060 lt!763244)))) lt!763880)))

(declare-fun b!2032947 () Bool)

(declare-fun e!1283971 () Bool)

(assert (=> b!2032947 (= e!1283970 e!1283971)))

(declare-fun res!891498 () Bool)

(assert (=> b!2032947 (=> res!891498 e!1283971)))

(assert (=> b!2032947 (= res!891498 (= (h!27623 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763244)))))))

(declare-fun b!2032948 () Bool)

(assert (=> b!2032948 (= e!1283971 (contains!4106 (t!190663 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763244)))))))

(assert (= (and d!622338 res!891499) b!2032947))

(assert (= (and b!2032947 (not res!891498)) b!2032948))

(assert (=> d!622338 m!2474271))

(declare-fun m!2474955 () Bool)

(assert (=> d!622338 m!2474955))

(declare-fun m!2474957 () Bool)

(assert (=> b!2032948 m!2474957))

(assert (=> b!2031768 d!622338))

(assert (=> b!2031768 d!622320))

(declare-fun d!622340 () Bool)

(declare-fun c!329194 () Bool)

(assert (=> d!622340 (= c!329194 ((_ is Node!7434) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))))))

(declare-fun e!1283976 () Bool)

(assert (=> d!622340 (= (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))) e!1283976)))

(declare-fun b!2032955 () Bool)

(declare-fun inv!29415 (Conc!7434) Bool)

(assert (=> b!2032955 (= e!1283976 (inv!29415 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))))))

(declare-fun b!2032956 () Bool)

(declare-fun e!1283977 () Bool)

(assert (=> b!2032956 (= e!1283976 e!1283977)))

(declare-fun res!891502 () Bool)

(assert (=> b!2032956 (= res!891502 (not ((_ is Leaf!10894) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))))))))

(assert (=> b!2032956 (=> res!891502 e!1283977)))

(declare-fun b!2032957 () Bool)

(declare-fun inv!29416 (Conc!7434) Bool)

(assert (=> b!2032957 (= e!1283977 (inv!29416 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))))))

(assert (= (and d!622340 c!329194) b!2032955))

(assert (= (and d!622340 (not c!329194)) b!2032956))

(assert (= (and b!2032956 (not res!891502)) b!2032957))

(declare-fun m!2474959 () Bool)

(assert (=> b!2032955 m!2474959))

(declare-fun m!2474961 () Bool)

(assert (=> b!2032957 m!2474961))

(assert (=> b!2031714 d!622340))

(declare-fun d!622342 () Bool)

(assert (=> d!622342 (= (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) (list!9081 (c!328893 (charsOf!2534 (h!27624 (t!190664 tokens!598))))))))

(declare-fun bs!421162 () Bool)

(assert (= bs!421162 d!622342))

(declare-fun m!2474963 () Bool)

(assert (=> bs!421162 m!2474963))

(assert (=> b!2031908 d!622342))

(declare-fun d!622344 () Bool)

(declare-fun lt!763881 () BalanceConc!14684)

(assert (=> d!622344 (= (list!9077 lt!763881) (originalCharacters!4801 (h!27624 (t!190664 tokens!598))))))

(assert (=> d!622344 (= lt!763881 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (value!125420 (h!27624 (t!190664 tokens!598)))))))

(assert (=> d!622344 (= (charsOf!2534 (h!27624 (t!190664 tokens!598))) lt!763881)))

(declare-fun b_lambda!68543 () Bool)

(assert (=> (not b_lambda!68543) (not d!622344)))

(declare-fun tb!128535 () Bool)

(declare-fun t!190874 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) t!190874) tb!128535))

(declare-fun b!2032958 () Bool)

(declare-fun e!1283978 () Bool)

(declare-fun tp!603785 () Bool)

(assert (=> b!2032958 (= e!1283978 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (value!125420 (h!27624 (t!190664 tokens!598)))))) tp!603785))))

(declare-fun result!153726 () Bool)

(assert (=> tb!128535 (= result!153726 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (value!125420 (h!27624 (t!190664 tokens!598))))) e!1283978))))

(assert (= tb!128535 b!2032958))

(declare-fun m!2474965 () Bool)

(assert (=> b!2032958 m!2474965))

(declare-fun m!2474967 () Bool)

(assert (=> tb!128535 m!2474967))

(assert (=> d!622344 t!190874))

(declare-fun b_and!162167 () Bool)

(assert (= b_and!162161 (and (=> t!190874 result!153726) b_and!162167)))

(declare-fun t!190876 () Bool)

(declare-fun tb!128537 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) t!190876) tb!128537))

(declare-fun result!153728 () Bool)

(assert (= result!153728 result!153726))

(assert (=> d!622344 t!190876))

(declare-fun b_and!162169 () Bool)

(assert (= b_and!162159 (and (=> t!190876 result!153728) b_and!162169)))

(declare-fun tb!128539 () Bool)

(declare-fun t!190878 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) t!190878) tb!128539))

(declare-fun result!153730 () Bool)

(assert (= result!153730 result!153726))

(assert (=> d!622344 t!190878))

(declare-fun b_and!162171 () Bool)

(assert (= b_and!162163 (and (=> t!190878 result!153730) b_and!162171)))

(declare-fun t!190880 () Bool)

(declare-fun tb!128541 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) t!190880) tb!128541))

(declare-fun result!153732 () Bool)

(assert (= result!153732 result!153726))

(assert (=> d!622344 t!190880))

(declare-fun b_and!162173 () Bool)

(assert (= b_and!162157 (and (=> t!190880 result!153732) b_and!162173)))

(declare-fun t!190882 () Bool)

(declare-fun tb!128543 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) t!190882) tb!128543))

(declare-fun result!153734 () Bool)

(assert (= result!153734 result!153726))

(assert (=> d!622344 t!190882))

(declare-fun b_and!162175 () Bool)

(assert (= b_and!162165 (and (=> t!190882 result!153734) b_and!162175)))

(declare-fun m!2474969 () Bool)

(assert (=> d!622344 m!2474969))

(declare-fun m!2474971 () Bool)

(assert (=> d!622344 m!2474971))

(assert (=> b!2031908 d!622344))

(declare-fun d!622346 () Bool)

(declare-fun res!891503 () Bool)

(declare-fun e!1283979 () Bool)

(assert (=> d!622346 (=> (not res!891503) (not e!1283979))))

(assert (=> d!622346 (= res!891503 (rulesValid!1498 thiss!23328 (t!190663 rules!3198)))))

(assert (=> d!622346 (= (rulesInvariant!3214 thiss!23328 (t!190663 rules!3198)) e!1283979)))

(declare-fun b!2032959 () Bool)

(assert (=> b!2032959 (= e!1283979 (noDuplicateTag!1496 thiss!23328 (t!190663 rules!3198) Nil!22225))))

(assert (= (and d!622346 res!891503) b!2032959))

(declare-fun m!2474973 () Bool)

(assert (=> d!622346 m!2474973))

(declare-fun m!2474975 () Bool)

(assert (=> b!2032959 m!2474975))

(assert (=> b!2031952 d!622346))

(declare-fun d!622348 () Bool)

(assert (=> d!622348 (rulesInvariant!3214 thiss!23328 (t!190663 rules!3198))))

(declare-fun lt!763884 () Unit!36902)

(declare-fun choose!12401 (LexerInterface!3607 Rule!7788 List!22304) Unit!36902)

(assert (=> d!622348 (= lt!763884 (choose!12401 thiss!23328 (h!27623 rules!3198) (t!190663 rules!3198)))))

(assert (=> d!622348 (rulesInvariant!3214 thiss!23328 (Cons!22222 (h!27623 rules!3198) (t!190663 rules!3198)))))

(assert (=> d!622348 (= (lemmaInvariantOnRulesThenOnTail!312 thiss!23328 (h!27623 rules!3198) (t!190663 rules!3198)) lt!763884)))

(declare-fun bs!421163 () Bool)

(assert (= bs!421163 d!622348))

(assert (=> bs!421163 m!2473245))

(declare-fun m!2474977 () Bool)

(assert (=> bs!421163 m!2474977))

(declare-fun m!2474979 () Bool)

(assert (=> bs!421163 m!2474979))

(assert (=> b!2031952 d!622348))

(declare-fun b!2032960 () Bool)

(declare-fun e!1283983 () Bool)

(declare-fun lt!763886 () Option!4673)

(assert (=> b!2032960 (= e!1283983 (= (tag!4482 (get!7059 lt!763886)) (tag!4482 (rule!6229 (h!27624 tokens!598)))))))

(declare-fun b!2032961 () Bool)

(declare-fun e!1283980 () Option!4673)

(declare-fun e!1283982 () Option!4673)

(assert (=> b!2032961 (= e!1283980 e!1283982)))

(declare-fun c!329195 () Bool)

(assert (=> b!2032961 (= c!329195 (and ((_ is Cons!22222) (t!190663 rules!3198)) (not (= (tag!4482 (h!27623 (t!190663 rules!3198))) (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))

(declare-fun b!2032962 () Bool)

(declare-fun e!1283981 () Bool)

(assert (=> b!2032962 (= e!1283981 e!1283983)))

(declare-fun res!891505 () Bool)

(assert (=> b!2032962 (=> (not res!891505) (not e!1283983))))

(assert (=> b!2032962 (= res!891505 (contains!4106 (t!190663 rules!3198) (get!7059 lt!763886)))))

(declare-fun b!2032963 () Bool)

(assert (=> b!2032963 (= e!1283980 (Some!4672 (h!27623 (t!190663 rules!3198))))))

(declare-fun b!2032964 () Bool)

(assert (=> b!2032964 (= e!1283982 None!4672)))

(declare-fun b!2032965 () Bool)

(declare-fun lt!763887 () Unit!36902)

(declare-fun lt!763885 () Unit!36902)

(assert (=> b!2032965 (= lt!763887 lt!763885)))

(assert (=> b!2032965 (rulesInvariant!3214 thiss!23328 (t!190663 (t!190663 rules!3198)))))

(assert (=> b!2032965 (= lt!763885 (lemmaInvariantOnRulesThenOnTail!312 thiss!23328 (h!27623 (t!190663 rules!3198)) (t!190663 (t!190663 rules!3198))))))

(assert (=> b!2032965 (= e!1283982 (getRuleFromTag!809 thiss!23328 (t!190663 (t!190663 rules!3198)) (tag!4482 (rule!6229 (h!27624 tokens!598)))))))

(declare-fun d!622350 () Bool)

(assert (=> d!622350 e!1283981))

(declare-fun res!891504 () Bool)

(assert (=> d!622350 (=> res!891504 e!1283981)))

(assert (=> d!622350 (= res!891504 (isEmpty!13881 lt!763886))))

(assert (=> d!622350 (= lt!763886 e!1283980)))

(declare-fun c!329196 () Bool)

(assert (=> d!622350 (= c!329196 (and ((_ is Cons!22222) (t!190663 rules!3198)) (= (tag!4482 (h!27623 (t!190663 rules!3198))) (tag!4482 (rule!6229 (h!27624 tokens!598))))))))

(assert (=> d!622350 (rulesInvariant!3214 thiss!23328 (t!190663 rules!3198))))

(assert (=> d!622350 (= (getRuleFromTag!809 thiss!23328 (t!190663 rules!3198) (tag!4482 (rule!6229 (h!27624 tokens!598)))) lt!763886)))

(assert (= (and d!622350 c!329196) b!2032963))

(assert (= (and d!622350 (not c!329196)) b!2032961))

(assert (= (and b!2032961 c!329195) b!2032965))

(assert (= (and b!2032961 (not c!329195)) b!2032964))

(assert (= (and d!622350 (not res!891504)) b!2032962))

(assert (= (and b!2032962 res!891505) b!2032960))

(declare-fun m!2474981 () Bool)

(assert (=> b!2032960 m!2474981))

(assert (=> b!2032962 m!2474981))

(assert (=> b!2032962 m!2474981))

(declare-fun m!2474983 () Bool)

(assert (=> b!2032962 m!2474983))

(declare-fun m!2474985 () Bool)

(assert (=> b!2032965 m!2474985))

(declare-fun m!2474987 () Bool)

(assert (=> b!2032965 m!2474987))

(declare-fun m!2474989 () Bool)

(assert (=> b!2032965 m!2474989))

(declare-fun m!2474991 () Bool)

(assert (=> d!622350 m!2474991))

(assert (=> d!622350 m!2473245))

(assert (=> b!2031952 d!622350))

(declare-fun d!622352 () Bool)

(declare-fun res!891510 () Bool)

(declare-fun e!1283988 () Bool)

(assert (=> d!622352 (=> res!891510 e!1283988)))

(assert (=> d!622352 (= res!891510 ((_ is Nil!22222) rules!3198))))

(assert (=> d!622352 (= (noDuplicateTag!1496 thiss!23328 rules!3198 Nil!22225) e!1283988)))

(declare-fun b!2032970 () Bool)

(declare-fun e!1283989 () Bool)

(assert (=> b!2032970 (= e!1283988 e!1283989)))

(declare-fun res!891511 () Bool)

(assert (=> b!2032970 (=> (not res!891511) (not e!1283989))))

(declare-fun contains!4108 (List!22307 String!25768) Bool)

(assert (=> b!2032970 (= res!891511 (not (contains!4108 Nil!22225 (tag!4482 (h!27623 rules!3198)))))))

(declare-fun b!2032971 () Bool)

(assert (=> b!2032971 (= e!1283989 (noDuplicateTag!1496 thiss!23328 (t!190663 rules!3198) (Cons!22225 (tag!4482 (h!27623 rules!3198)) Nil!22225)))))

(assert (= (and d!622352 (not res!891510)) b!2032970))

(assert (= (and b!2032970 res!891511) b!2032971))

(declare-fun m!2474993 () Bool)

(assert (=> b!2032970 m!2474993))

(declare-fun m!2474995 () Bool)

(assert (=> b!2032971 m!2474995))

(assert (=> b!2032203 d!622352))

(declare-fun d!622354 () Bool)

(assert (=> d!622354 (= (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))) (v!27005 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))))))

(assert (=> b!2032188 d!622354))

(declare-fun d!622356 () Bool)

(assert (=> d!622356 (= (list!9077 (charsOf!2534 lt!763529)) (list!9081 (c!328893 (charsOf!2534 lt!763529))))))

(declare-fun bs!421164 () Bool)

(assert (= bs!421164 d!622356))

(declare-fun m!2474997 () Bool)

(assert (=> bs!421164 m!2474997))

(assert (=> b!2032188 d!622356))

(declare-fun d!622358 () Bool)

(declare-fun lt!763888 () BalanceConc!14684)

(assert (=> d!622358 (= (list!9077 lt!763888) (originalCharacters!4801 lt!763529))))

(assert (=> d!622358 (= lt!763888 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 lt!763529))) (value!125420 lt!763529)))))

(assert (=> d!622358 (= (charsOf!2534 lt!763529) lt!763888)))

(declare-fun b_lambda!68545 () Bool)

(assert (=> (not b_lambda!68545) (not d!622358)))

(declare-fun t!190884 () Bool)

(declare-fun tb!128545 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 lt!763529)))) t!190884) tb!128545))

(declare-fun b!2032972 () Bool)

(declare-fun e!1283990 () Bool)

(declare-fun tp!603786 () Bool)

(assert (=> b!2032972 (= e!1283990 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 lt!763529))) (value!125420 lt!763529)))) tp!603786))))

(declare-fun result!153736 () Bool)

(assert (=> tb!128545 (= result!153736 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 lt!763529))) (value!125420 lt!763529))) e!1283990))))

(assert (= tb!128545 b!2032972))

(declare-fun m!2474999 () Bool)

(assert (=> b!2032972 m!2474999))

(declare-fun m!2475001 () Bool)

(assert (=> tb!128545 m!2475001))

(assert (=> d!622358 t!190884))

(declare-fun b_and!162177 () Bool)

(assert (= b_and!162171 (and (=> t!190884 result!153736) b_and!162177)))

(declare-fun tb!128547 () Bool)

(declare-fun t!190886 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 lt!763529)))) t!190886) tb!128547))

(declare-fun result!153738 () Bool)

(assert (= result!153738 result!153736))

(assert (=> d!622358 t!190886))

(declare-fun b_and!162179 () Bool)

(assert (= b_and!162169 (and (=> t!190886 result!153738) b_and!162179)))

(declare-fun t!190888 () Bool)

(declare-fun tb!128549 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 lt!763529)))) t!190888) tb!128549))

(declare-fun result!153740 () Bool)

(assert (= result!153740 result!153736))

(assert (=> d!622358 t!190888))

(declare-fun b_and!162181 () Bool)

(assert (= b_and!162173 (and (=> t!190888 result!153740) b_and!162181)))

(declare-fun tb!128551 () Bool)

(declare-fun t!190890 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 lt!763529)))) t!190890) tb!128551))

(declare-fun result!153742 () Bool)

(assert (= result!153742 result!153736))

(assert (=> d!622358 t!190890))

(declare-fun b_and!162183 () Bool)

(assert (= b_and!162175 (and (=> t!190890 result!153742) b_and!162183)))

(declare-fun tb!128553 () Bool)

(declare-fun t!190892 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 lt!763529)))) t!190892) tb!128553))

(declare-fun result!153744 () Bool)

(assert (= result!153744 result!153736))

(assert (=> d!622358 t!190892))

(declare-fun b_and!162185 () Bool)

(assert (= b_and!162167 (and (=> t!190892 result!153744) b_and!162185)))

(declare-fun m!2475003 () Bool)

(assert (=> d!622358 m!2475003))

(declare-fun m!2475005 () Bool)

(assert (=> d!622358 m!2475005))

(assert (=> b!2032188 d!622358))

(declare-fun b!2032973 () Bool)

(declare-fun e!1283994 () Bool)

(declare-fun lt!763890 () Option!4673)

(assert (=> b!2032973 (= e!1283994 (= (tag!4482 (get!7059 lt!763890)) (tag!4482 (rule!6229 lt!763529))))))

(declare-fun b!2032974 () Bool)

(declare-fun e!1283991 () Option!4673)

(declare-fun e!1283993 () Option!4673)

(assert (=> b!2032974 (= e!1283991 e!1283993)))

(declare-fun c!329197 () Bool)

(assert (=> b!2032974 (= c!329197 (and ((_ is Cons!22222) rules!3198) (not (= (tag!4482 (h!27623 rules!3198)) (tag!4482 (rule!6229 lt!763529))))))))

(declare-fun b!2032975 () Bool)

(declare-fun e!1283992 () Bool)

(assert (=> b!2032975 (= e!1283992 e!1283994)))

(declare-fun res!891513 () Bool)

(assert (=> b!2032975 (=> (not res!891513) (not e!1283994))))

(assert (=> b!2032975 (= res!891513 (contains!4106 rules!3198 (get!7059 lt!763890)))))

(declare-fun b!2032976 () Bool)

(assert (=> b!2032976 (= e!1283991 (Some!4672 (h!27623 rules!3198)))))

(declare-fun b!2032977 () Bool)

(assert (=> b!2032977 (= e!1283993 None!4672)))

(declare-fun b!2032978 () Bool)

(declare-fun lt!763891 () Unit!36902)

(declare-fun lt!763889 () Unit!36902)

(assert (=> b!2032978 (= lt!763891 lt!763889)))

(assert (=> b!2032978 (rulesInvariant!3214 thiss!23328 (t!190663 rules!3198))))

(assert (=> b!2032978 (= lt!763889 (lemmaInvariantOnRulesThenOnTail!312 thiss!23328 (h!27623 rules!3198) (t!190663 rules!3198)))))

(assert (=> b!2032978 (= e!1283993 (getRuleFromTag!809 thiss!23328 (t!190663 rules!3198) (tag!4482 (rule!6229 lt!763529))))))

(declare-fun d!622360 () Bool)

(assert (=> d!622360 e!1283992))

(declare-fun res!891512 () Bool)

(assert (=> d!622360 (=> res!891512 e!1283992)))

(assert (=> d!622360 (= res!891512 (isEmpty!13881 lt!763890))))

(assert (=> d!622360 (= lt!763890 e!1283991)))

(declare-fun c!329198 () Bool)

(assert (=> d!622360 (= c!329198 (and ((_ is Cons!22222) rules!3198) (= (tag!4482 (h!27623 rules!3198)) (tag!4482 (rule!6229 lt!763529)))))))

(assert (=> d!622360 (rulesInvariant!3214 thiss!23328 rules!3198)))

(assert (=> d!622360 (= (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))) lt!763890)))

(assert (= (and d!622360 c!329198) b!2032976))

(assert (= (and d!622360 (not c!329198)) b!2032974))

(assert (= (and b!2032974 c!329197) b!2032978))

(assert (= (and b!2032974 (not c!329197)) b!2032977))

(assert (= (and d!622360 (not res!891512)) b!2032975))

(assert (= (and b!2032975 res!891513) b!2032973))

(declare-fun m!2475007 () Bool)

(assert (=> b!2032973 m!2475007))

(assert (=> b!2032975 m!2475007))

(assert (=> b!2032975 m!2475007))

(declare-fun m!2475009 () Bool)

(assert (=> b!2032975 m!2475009))

(assert (=> b!2032978 m!2473245))

(assert (=> b!2032978 m!2473247))

(declare-fun m!2475011 () Bool)

(assert (=> b!2032978 m!2475011))

(declare-fun m!2475013 () Bool)

(assert (=> d!622360 m!2475013))

(assert (=> d!622360 m!2472749))

(assert (=> b!2032188 d!622360))

(declare-fun b!2032979 () Bool)

(declare-fun e!1283998 () Bool)

(declare-fun lt!763892 () Bool)

(assert (=> b!2032979 (= e!1283998 (not lt!763892))))

(declare-fun b!2032980 () Bool)

(declare-fun e!1284001 () Bool)

(assert (=> b!2032980 (= e!1284001 e!1283998)))

(declare-fun c!329200 () Bool)

(assert (=> b!2032980 (= c!329200 ((_ is EmptyLang!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))))))))

(declare-fun b!2032981 () Bool)

(declare-fun e!1283999 () Bool)

(assert (=> b!2032981 (= e!1283999 (nullable!1655 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))))))))

(declare-fun b!2032983 () Bool)

(declare-fun res!891519 () Bool)

(declare-fun e!1284000 () Bool)

(assert (=> b!2032983 (=> res!891519 e!1284000)))

(declare-fun e!1283996 () Bool)

(assert (=> b!2032983 (= res!891519 e!1283996)))

(declare-fun res!891515 () Bool)

(assert (=> b!2032983 (=> (not res!891515) (not e!1283996))))

(assert (=> b!2032983 (= res!891515 lt!763892)))

(declare-fun bm!124788 () Bool)

(declare-fun call!124793 () Bool)

(assert (=> bm!124788 (= call!124793 (isEmpty!13880 (list!9077 (charsOf!2534 lt!763529))))))

(declare-fun b!2032984 () Bool)

(declare-fun res!891518 () Bool)

(declare-fun e!1283997 () Bool)

(assert (=> b!2032984 (=> res!891518 e!1283997)))

(assert (=> b!2032984 (= res!891518 (not (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 lt!763529))))))))

(declare-fun b!2032985 () Bool)

(declare-fun e!1283995 () Bool)

(assert (=> b!2032985 (= e!1284000 e!1283995)))

(declare-fun res!891514 () Bool)

(assert (=> b!2032985 (=> (not res!891514) (not e!1283995))))

(assert (=> b!2032985 (= res!891514 (not lt!763892))))

(declare-fun b!2032986 () Bool)

(assert (=> b!2032986 (= e!1283995 e!1283997)))

(declare-fun res!891520 () Bool)

(assert (=> b!2032986 (=> res!891520 e!1283997)))

(assert (=> b!2032986 (= res!891520 call!124793)))

(declare-fun d!622362 () Bool)

(assert (=> d!622362 e!1284001))

(declare-fun c!329199 () Bool)

(assert (=> d!622362 (= c!329199 ((_ is EmptyExpr!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))))))))

(assert (=> d!622362 (= lt!763892 e!1283999)))

(declare-fun c!329201 () Bool)

(assert (=> d!622362 (= c!329201 (isEmpty!13880 (list!9077 (charsOf!2534 lt!763529))))))

(assert (=> d!622362 (validRegex!2181 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))))))

(assert (=> d!622362 (= (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))) (list!9077 (charsOf!2534 lt!763529))) lt!763892)))

(declare-fun b!2032982 () Bool)

(assert (=> b!2032982 (= e!1283996 (= (head!4589 (list!9077 (charsOf!2534 lt!763529))) (c!328894 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))))))))

(declare-fun b!2032987 () Bool)

(assert (=> b!2032987 (= e!1283999 (matchR!2685 (derivativeStep!1414 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))) (head!4589 (list!9077 (charsOf!2534 lt!763529)))) (tail!3064 (list!9077 (charsOf!2534 lt!763529)))))))

(declare-fun b!2032988 () Bool)

(assert (=> b!2032988 (= e!1283997 (not (= (head!4589 (list!9077 (charsOf!2534 lt!763529))) (c!328894 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))))))))))

(declare-fun b!2032989 () Bool)

(declare-fun res!891521 () Bool)

(assert (=> b!2032989 (=> (not res!891521) (not e!1283996))))

(assert (=> b!2032989 (= res!891521 (not call!124793))))

(declare-fun b!2032990 () Bool)

(declare-fun res!891517 () Bool)

(assert (=> b!2032990 (=> res!891517 e!1284000)))

(assert (=> b!2032990 (= res!891517 (not ((_ is ElementMatch!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))))))))

(assert (=> b!2032990 (= e!1283998 e!1284000)))

(declare-fun b!2032991 () Bool)

(declare-fun res!891516 () Bool)

(assert (=> b!2032991 (=> (not res!891516) (not e!1283996))))

(assert (=> b!2032991 (= res!891516 (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 lt!763529)))))))

(declare-fun b!2032992 () Bool)

(assert (=> b!2032992 (= e!1284001 (= lt!763892 call!124793))))

(assert (= (and d!622362 c!329201) b!2032981))

(assert (= (and d!622362 (not c!329201)) b!2032987))

(assert (= (and d!622362 c!329199) b!2032992))

(assert (= (and d!622362 (not c!329199)) b!2032980))

(assert (= (and b!2032980 c!329200) b!2032979))

(assert (= (and b!2032980 (not c!329200)) b!2032990))

(assert (= (and b!2032990 (not res!891517)) b!2032983))

(assert (= (and b!2032983 res!891515) b!2032989))

(assert (= (and b!2032989 res!891521) b!2032991))

(assert (= (and b!2032991 res!891516) b!2032982))

(assert (= (and b!2032983 (not res!891519)) b!2032985))

(assert (= (and b!2032985 res!891514) b!2032986))

(assert (= (and b!2032986 (not res!891520)) b!2032984))

(assert (= (and b!2032984 (not res!891518)) b!2032988))

(assert (= (or b!2032992 b!2032986 b!2032989) bm!124788))

(declare-fun m!2475015 () Bool)

(assert (=> b!2032981 m!2475015))

(assert (=> b!2032991 m!2473625))

(declare-fun m!2475017 () Bool)

(assert (=> b!2032991 m!2475017))

(assert (=> b!2032991 m!2475017))

(declare-fun m!2475019 () Bool)

(assert (=> b!2032991 m!2475019))

(assert (=> b!2032982 m!2473625))

(declare-fun m!2475021 () Bool)

(assert (=> b!2032982 m!2475021))

(assert (=> b!2032984 m!2473625))

(assert (=> b!2032984 m!2475017))

(assert (=> b!2032984 m!2475017))

(assert (=> b!2032984 m!2475019))

(assert (=> bm!124788 m!2473625))

(declare-fun m!2475023 () Bool)

(assert (=> bm!124788 m!2475023))

(assert (=> d!622362 m!2473625))

(assert (=> d!622362 m!2475023))

(declare-fun m!2475025 () Bool)

(assert (=> d!622362 m!2475025))

(assert (=> b!2032988 m!2473625))

(assert (=> b!2032988 m!2475021))

(assert (=> b!2032987 m!2473625))

(assert (=> b!2032987 m!2475021))

(assert (=> b!2032987 m!2475021))

(declare-fun m!2475027 () Bool)

(assert (=> b!2032987 m!2475027))

(assert (=> b!2032987 m!2473625))

(assert (=> b!2032987 m!2475017))

(assert (=> b!2032987 m!2475027))

(assert (=> b!2032987 m!2475017))

(declare-fun m!2475029 () Bool)

(assert (=> b!2032987 m!2475029))

(assert (=> b!2032188 d!622362))

(declare-fun b!2032993 () Bool)

(declare-fun res!891524 () Bool)

(declare-fun e!1284004 () Bool)

(assert (=> b!2032993 (=> (not res!891524) (not e!1284004))))

(declare-fun lt!763896 () Option!4674)

(assert (=> b!2032993 (= res!891524 (matchR!2685 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763896)))) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763896))))))))

(declare-fun b!2032994 () Bool)

(declare-fun res!891525 () Bool)

(assert (=> b!2032994 (=> (not res!891525) (not e!1284004))))

(assert (=> b!2032994 (= res!891525 (= (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763896)))) (originalCharacters!4801 (_1!11926 (get!7060 lt!763896)))))))

(declare-fun b!2032995 () Bool)

(declare-fun e!1284002 () Option!4674)

(declare-fun lt!763897 () Option!4674)

(declare-fun lt!763895 () Option!4674)

(assert (=> b!2032995 (= e!1284002 (ite (and ((_ is None!4673) lt!763897) ((_ is None!4673) lt!763895)) None!4673 (ite ((_ is None!4673) lt!763895) lt!763897 (ite ((_ is None!4673) lt!763897) lt!763895 (ite (>= (size!17362 (_1!11926 (v!27006 lt!763897))) (size!17362 (_1!11926 (v!27006 lt!763895)))) lt!763897 lt!763895)))))))

(declare-fun call!124794 () Option!4674)

(assert (=> b!2032995 (= lt!763897 call!124794)))

(assert (=> b!2032995 (= lt!763895 (maxPrefix!2043 thiss!23328 (t!190663 (t!190663 rules!3198)) (++!6013 lt!763202 lt!763193)))))

(declare-fun d!622364 () Bool)

(declare-fun e!1284003 () Bool)

(assert (=> d!622364 e!1284003))

(declare-fun res!891527 () Bool)

(assert (=> d!622364 (=> res!891527 e!1284003)))

(assert (=> d!622364 (= res!891527 (isEmpty!13882 lt!763896))))

(assert (=> d!622364 (= lt!763896 e!1284002)))

(declare-fun c!329202 () Bool)

(assert (=> d!622364 (= c!329202 (and ((_ is Cons!22222) (t!190663 rules!3198)) ((_ is Nil!22222) (t!190663 (t!190663 rules!3198)))))))

(declare-fun lt!763893 () Unit!36902)

(declare-fun lt!763894 () Unit!36902)

(assert (=> d!622364 (= lt!763893 lt!763894)))

(assert (=> d!622364 (isPrefix!1987 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193))))

(assert (=> d!622364 (= lt!763894 (lemmaIsPrefixRefl!1305 (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193)))))

(assert (=> d!622364 (rulesValidInductive!1386 thiss!23328 (t!190663 rules!3198))))

(assert (=> d!622364 (= (maxPrefix!2043 thiss!23328 (t!190663 rules!3198) (++!6013 lt!763202 lt!763193)) lt!763896)))

(declare-fun b!2032996 () Bool)

(declare-fun res!891522 () Bool)

(assert (=> b!2032996 (=> (not res!891522) (not e!1284004))))

(assert (=> b!2032996 (= res!891522 (= (value!125420 (_1!11926 (get!7060 lt!763896))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763896)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763896)))))))))

(declare-fun b!2032997 () Bool)

(assert (=> b!2032997 (= e!1284002 call!124794)))

(declare-fun b!2032998 () Bool)

(declare-fun res!891526 () Bool)

(assert (=> b!2032998 (=> (not res!891526) (not e!1284004))))

(assert (=> b!2032998 (= res!891526 (< (size!17366 (_2!11926 (get!7060 lt!763896))) (size!17366 (++!6013 lt!763202 lt!763193))))))

(declare-fun b!2032999 () Bool)

(assert (=> b!2032999 (= e!1284004 (contains!4106 (t!190663 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763896)))))))

(declare-fun b!2033000 () Bool)

(declare-fun res!891528 () Bool)

(assert (=> b!2033000 (=> (not res!891528) (not e!1284004))))

(assert (=> b!2033000 (= res!891528 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763896)))) (_2!11926 (get!7060 lt!763896))) (++!6013 lt!763202 lt!763193)))))

(declare-fun b!2033001 () Bool)

(assert (=> b!2033001 (= e!1284003 e!1284004)))

(declare-fun res!891523 () Bool)

(assert (=> b!2033001 (=> (not res!891523) (not e!1284004))))

(assert (=> b!2033001 (= res!891523 (isDefined!3960 lt!763896))))

(declare-fun bm!124789 () Bool)

(assert (=> bm!124789 (= call!124794 (maxPrefixOneRule!1269 thiss!23328 (h!27623 (t!190663 rules!3198)) (++!6013 lt!763202 lt!763193)))))

(assert (= (and d!622364 c!329202) b!2032997))

(assert (= (and d!622364 (not c!329202)) b!2032995))

(assert (= (or b!2032997 b!2032995) bm!124789))

(assert (= (and d!622364 (not res!891527)) b!2033001))

(assert (= (and b!2033001 res!891523) b!2032994))

(assert (= (and b!2032994 res!891525) b!2032998))

(assert (= (and b!2032998 res!891526) b!2033000))

(assert (= (and b!2033000 res!891528) b!2032996))

(assert (= (and b!2032996 res!891522) b!2032993))

(assert (= (and b!2032993 res!891524) b!2032999))

(declare-fun m!2475031 () Bool)

(assert (=> b!2032999 m!2475031))

(declare-fun m!2475033 () Bool)

(assert (=> b!2032999 m!2475033))

(assert (=> b!2032993 m!2475031))

(declare-fun m!2475035 () Bool)

(assert (=> b!2032993 m!2475035))

(assert (=> b!2032993 m!2475035))

(declare-fun m!2475037 () Bool)

(assert (=> b!2032993 m!2475037))

(assert (=> b!2032993 m!2475037))

(declare-fun m!2475039 () Bool)

(assert (=> b!2032993 m!2475039))

(assert (=> b!2032998 m!2475031))

(declare-fun m!2475041 () Bool)

(assert (=> b!2032998 m!2475041))

(assert (=> b!2032998 m!2472713))

(assert (=> b!2032998 m!2473115))

(assert (=> b!2032994 m!2475031))

(assert (=> b!2032994 m!2475035))

(assert (=> b!2032994 m!2475035))

(assert (=> b!2032994 m!2475037))

(assert (=> b!2033000 m!2475031))

(assert (=> b!2033000 m!2475035))

(assert (=> b!2033000 m!2475035))

(assert (=> b!2033000 m!2475037))

(assert (=> b!2033000 m!2475037))

(declare-fun m!2475043 () Bool)

(assert (=> b!2033000 m!2475043))

(assert (=> b!2032995 m!2472713))

(declare-fun m!2475045 () Bool)

(assert (=> b!2032995 m!2475045))

(declare-fun m!2475047 () Bool)

(assert (=> d!622364 m!2475047))

(assert (=> d!622364 m!2472713))

(assert (=> d!622364 m!2472713))

(assert (=> d!622364 m!2473123))

(assert (=> d!622364 m!2472713))

(assert (=> d!622364 m!2472713))

(assert (=> d!622364 m!2473125))

(assert (=> d!622364 m!2474929))

(assert (=> b!2032996 m!2475031))

(declare-fun m!2475049 () Bool)

(assert (=> b!2032996 m!2475049))

(assert (=> b!2032996 m!2475049))

(declare-fun m!2475051 () Bool)

(assert (=> b!2032996 m!2475051))

(assert (=> bm!124789 m!2472713))

(declare-fun m!2475053 () Bool)

(assert (=> bm!124789 m!2475053))

(declare-fun m!2475055 () Bool)

(assert (=> b!2033001 m!2475055))

(assert (=> b!2031830 d!622364))

(declare-fun d!622366 () Bool)

(declare-fun lt!763898 () BalanceConc!14684)

(assert (=> d!622366 (= (list!9077 lt!763898) (originalCharacters!4801 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598))))))))

(assert (=> d!622366 (= lt!763898 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598))))))) (value!125420 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))))

(assert (=> d!622366 (= (charsOf!2534 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598))))) lt!763898)))

(declare-fun b_lambda!68547 () Bool)

(assert (=> (not b_lambda!68547) (not d!622366)))

(declare-fun tb!128555 () Bool)

(declare-fun t!190894 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) t!190894) tb!128555))

(declare-fun e!1284005 () Bool)

(declare-fun b!2033002 () Bool)

(declare-fun tp!603787 () Bool)

(assert (=> b!2033002 (= e!1284005 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598))))))) (value!125420 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) tp!603787))))

(declare-fun result!153746 () Bool)

(assert (=> tb!128555 (= result!153746 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598))))))) (value!125420 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598))))))) e!1284005))))

(assert (= tb!128555 b!2033002))

(declare-fun m!2475057 () Bool)

(assert (=> b!2033002 m!2475057))

(declare-fun m!2475059 () Bool)

(assert (=> tb!128555 m!2475059))

(assert (=> d!622366 t!190894))

(declare-fun b_and!162187 () Bool)

(assert (= b_and!162177 (and (=> t!190894 result!153746) b_and!162187)))

(declare-fun tb!128557 () Bool)

(declare-fun t!190896 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) t!190896) tb!128557))

(declare-fun result!153748 () Bool)

(assert (= result!153748 result!153746))

(assert (=> d!622366 t!190896))

(declare-fun b_and!162189 () Bool)

(assert (= b_and!162181 (and (=> t!190896 result!153748) b_and!162189)))

(declare-fun tb!128559 () Bool)

(declare-fun t!190898 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) t!190898) tb!128559))

(declare-fun result!153750 () Bool)

(assert (= result!153750 result!153746))

(assert (=> d!622366 t!190898))

(declare-fun b_and!162191 () Bool)

(assert (= b_and!162183 (and (=> t!190898 result!153750) b_and!162191)))

(declare-fun tb!128561 () Bool)

(declare-fun t!190900 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) t!190900) tb!128561))

(declare-fun result!153752 () Bool)

(assert (= result!153752 result!153746))

(assert (=> d!622366 t!190900))

(declare-fun b_and!162193 () Bool)

(assert (= b_and!162185 (and (=> t!190900 result!153752) b_and!162193)))

(declare-fun t!190902 () Bool)

(declare-fun tb!128563 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) t!190902) tb!128563))

(declare-fun result!153754 () Bool)

(assert (= result!153754 result!153746))

(assert (=> d!622366 t!190902))

(declare-fun b_and!162195 () Bool)

(assert (= b_and!162179 (and (=> t!190902 result!153754) b_and!162195)))

(declare-fun m!2475061 () Bool)

(assert (=> d!622366 m!2475061))

(declare-fun m!2475063 () Bool)

(assert (=> d!622366 m!2475063))

(assert (=> bm!124711 d!622366))

(declare-fun d!622368 () Bool)

(assert (=> d!622368 (= (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))) (isBalanced!2321 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))))))

(declare-fun bs!421165 () Bool)

(assert (= bs!421165 d!622368))

(declare-fun m!2475065 () Bool)

(assert (=> bs!421165 m!2475065))

(assert (=> tb!128345 d!622368))

(declare-fun bs!421166 () Bool)

(declare-fun d!622370 () Bool)

(assert (= bs!421166 (and d!622370 d!621776)))

(declare-fun lambda!76597 () Int)

(assert (=> bs!421166 (= (and (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (= lambda!76597 lambda!76557))))

(assert (=> d!622370 true))

(assert (=> d!622370 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) (dynLambda!11068 order!14245 lambda!76597))))

(assert (=> d!622370 true))

(assert (=> d!622370 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354)))) (dynLambda!11068 order!14245 lambda!76597))))

(declare-fun Forall!1022 (Int) Bool)

(assert (=> d!622370 (= (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354)))) (Forall!1022 lambda!76597))))

(declare-fun bs!421167 () Bool)

(assert (= bs!421167 d!622370))

(declare-fun m!2475067 () Bool)

(assert (=> bs!421167 m!2475067))

(assert (=> d!621754 d!622370))

(declare-fun d!622372 () Bool)

(assert (=> d!622372 (= (isEmpty!13880 lt!763202) ((_ is Nil!22221) lt!763202))))

(assert (=> bm!124690 d!622372))

(declare-fun b!2033019 () Bool)

(declare-fun res!891545 () Bool)

(declare-fun e!1284011 () Bool)

(assert (=> b!2033019 (=> (not res!891545) (not e!1284011))))

(declare-fun height!1143 (Conc!7435) Int)

(assert (=> b!2033019 (= res!891545 (<= (- (height!1143 (left!17682 (c!328895 lt!763479))) (height!1143 (right!18012 (c!328895 lt!763479)))) 1))))

(declare-fun b!2033020 () Bool)

(declare-fun res!891544 () Bool)

(assert (=> b!2033020 (=> (not res!891544) (not e!1284011))))

(assert (=> b!2033020 (= res!891544 (not (isEmpty!13886 (left!17682 (c!328895 lt!763479)))))))

(declare-fun b!2033021 () Bool)

(declare-fun e!1284010 () Bool)

(assert (=> b!2033021 (= e!1284010 e!1284011)))

(declare-fun res!891543 () Bool)

(assert (=> b!2033021 (=> (not res!891543) (not e!1284011))))

(assert (=> b!2033021 (= res!891543 (<= (- 1) (- (height!1143 (left!17682 (c!328895 lt!763479))) (height!1143 (right!18012 (c!328895 lt!763479))))))))

(declare-fun d!622374 () Bool)

(declare-fun res!891541 () Bool)

(assert (=> d!622374 (=> res!891541 e!1284010)))

(assert (=> d!622374 (= res!891541 (not ((_ is Node!7435) (c!328895 lt!763479))))))

(assert (=> d!622374 (= (isBalanced!2319 (c!328895 lt!763479)) e!1284010)))

(declare-fun b!2033022 () Bool)

(declare-fun res!891542 () Bool)

(assert (=> b!2033022 (=> (not res!891542) (not e!1284011))))

(assert (=> b!2033022 (= res!891542 (isBalanced!2319 (left!17682 (c!328895 lt!763479))))))

(declare-fun b!2033023 () Bool)

(declare-fun res!891546 () Bool)

(assert (=> b!2033023 (=> (not res!891546) (not e!1284011))))

(assert (=> b!2033023 (= res!891546 (isBalanced!2319 (right!18012 (c!328895 lt!763479))))))

(declare-fun b!2033024 () Bool)

(assert (=> b!2033024 (= e!1284011 (not (isEmpty!13886 (right!18012 (c!328895 lt!763479)))))))

(assert (= (and d!622374 (not res!891541)) b!2033021))

(assert (= (and b!2033021 res!891543) b!2033019))

(assert (= (and b!2033019 res!891545) b!2033022))

(assert (= (and b!2033022 res!891542) b!2033023))

(assert (= (and b!2033023 res!891546) b!2033020))

(assert (= (and b!2033020 res!891544) b!2033024))

(declare-fun m!2475069 () Bool)

(assert (=> b!2033020 m!2475069))

(declare-fun m!2475071 () Bool)

(assert (=> b!2033019 m!2475071))

(declare-fun m!2475073 () Bool)

(assert (=> b!2033019 m!2475073))

(declare-fun m!2475075 () Bool)

(assert (=> b!2033024 m!2475075))

(declare-fun m!2475077 () Bool)

(assert (=> b!2033023 m!2475077))

(assert (=> b!2033021 m!2475071))

(assert (=> b!2033021 m!2475073))

(declare-fun m!2475079 () Bool)

(assert (=> b!2033022 m!2475079))

(assert (=> b!2032101 d!622374))

(declare-fun d!622376 () Bool)

(assert (=> d!622376 (= (list!9077 lt!763353) (list!9081 (c!328893 lt!763353)))))

(declare-fun bs!421168 () Bool)

(assert (= bs!421168 d!622376))

(declare-fun m!2475081 () Bool)

(assert (=> bs!421168 m!2475081))

(assert (=> d!621816 d!622376))

(assert (=> b!2031729 d!622302))

(assert (=> b!2031729 d!622136))

(declare-fun e!1284013 () Bool)

(declare-fun b!2033028 () Bool)

(declare-fun lt!763899 () List!22303)

(assert (=> b!2033028 (= e!1284013 (or (not (= lt!763343 Nil!22221)) (= lt!763899 call!124714)))))

(declare-fun b!2033027 () Bool)

(declare-fun res!891548 () Bool)

(assert (=> b!2033027 (=> (not res!891548) (not e!1284013))))

(assert (=> b!2033027 (= res!891548 (= (size!17366 lt!763899) (+ (size!17366 call!124714) (size!17366 lt!763343))))))

(declare-fun b!2033025 () Bool)

(declare-fun e!1284012 () List!22303)

(assert (=> b!2033025 (= e!1284012 lt!763343)))

(declare-fun b!2033026 () Bool)

(assert (=> b!2033026 (= e!1284012 (Cons!22221 (h!27622 call!124714) (++!6013 (t!190662 call!124714) lt!763343)))))

(declare-fun d!622378 () Bool)

(assert (=> d!622378 e!1284013))

(declare-fun res!891547 () Bool)

(assert (=> d!622378 (=> (not res!891547) (not e!1284013))))

(assert (=> d!622378 (= res!891547 (= (content!3285 lt!763899) ((_ map or) (content!3285 call!124714) (content!3285 lt!763343))))))

(assert (=> d!622378 (= lt!763899 e!1284012)))

(declare-fun c!329203 () Bool)

(assert (=> d!622378 (= c!329203 ((_ is Nil!22221) call!124714))))

(assert (=> d!622378 (= (++!6013 call!124714 lt!763343) lt!763899)))

(assert (= (and d!622378 c!329203) b!2033025))

(assert (= (and d!622378 (not c!329203)) b!2033026))

(assert (= (and d!622378 res!891547) b!2033027))

(assert (= (and b!2033027 res!891548) b!2033028))

(declare-fun m!2475083 () Bool)

(assert (=> b!2033027 m!2475083))

(declare-fun m!2475085 () Bool)

(assert (=> b!2033027 m!2475085))

(declare-fun m!2475087 () Bool)

(assert (=> b!2033027 m!2475087))

(declare-fun m!2475089 () Bool)

(assert (=> b!2033026 m!2475089))

(declare-fun m!2475091 () Bool)

(assert (=> d!622378 m!2475091))

(declare-fun m!2475093 () Bool)

(assert (=> d!622378 m!2475093))

(declare-fun m!2475095 () Bool)

(assert (=> d!622378 m!2475095))

(assert (=> b!2031904 d!622378))

(declare-fun d!622380 () Bool)

(declare-fun res!891549 () Bool)

(declare-fun e!1284014 () Bool)

(assert (=> d!622380 (=> (not res!891549) (not e!1284014))))

(assert (=> d!622380 (= res!891549 (not (isEmpty!13880 (originalCharacters!4801 (h!27624 (t!190664 tokens!598))))))))

(assert (=> d!622380 (= (inv!29408 (h!27624 (t!190664 tokens!598))) e!1284014)))

(declare-fun b!2033029 () Bool)

(declare-fun res!891550 () Bool)

(assert (=> b!2033029 (=> (not res!891550) (not e!1284014))))

(assert (=> b!2033029 (= res!891550 (= (originalCharacters!4801 (h!27624 (t!190664 tokens!598))) (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (value!125420 (h!27624 (t!190664 tokens!598)))))))))

(declare-fun b!2033030 () Bool)

(assert (=> b!2033030 (= e!1284014 (= (size!17362 (h!27624 (t!190664 tokens!598))) (size!17366 (originalCharacters!4801 (h!27624 (t!190664 tokens!598))))))))

(assert (= (and d!622380 res!891549) b!2033029))

(assert (= (and b!2033029 res!891550) b!2033030))

(declare-fun b_lambda!68549 () Bool)

(assert (=> (not b_lambda!68549) (not b!2033029)))

(assert (=> b!2033029 t!190880))

(declare-fun b_and!162197 () Bool)

(assert (= b_and!162189 (and (=> t!190880 result!153732) b_and!162197)))

(assert (=> b!2033029 t!190882))

(declare-fun b_and!162199 () Bool)

(assert (= b_and!162191 (and (=> t!190882 result!153734) b_and!162199)))

(assert (=> b!2033029 t!190876))

(declare-fun b_and!162201 () Bool)

(assert (= b_and!162195 (and (=> t!190876 result!153728) b_and!162201)))

(assert (=> b!2033029 t!190878))

(declare-fun b_and!162203 () Bool)

(assert (= b_and!162187 (and (=> t!190878 result!153730) b_and!162203)))

(assert (=> b!2033029 t!190874))

(declare-fun b_and!162205 () Bool)

(assert (= b_and!162193 (and (=> t!190874 result!153726) b_and!162205)))

(declare-fun m!2475097 () Bool)

(assert (=> d!622380 m!2475097))

(assert (=> b!2033029 m!2474971))

(assert (=> b!2033029 m!2474971))

(declare-fun m!2475099 () Bool)

(assert (=> b!2033029 m!2475099))

(declare-fun m!2475101 () Bool)

(assert (=> b!2033030 m!2475101))

(assert (=> b!2032249 d!622380))

(declare-fun d!622382 () Bool)

(declare-fun lt!763902 () Int)

(assert (=> d!622382 (>= lt!763902 0)))

(declare-fun e!1284017 () Int)

(assert (=> d!622382 (= lt!763902 e!1284017)))

(declare-fun c!329206 () Bool)

(assert (=> d!622382 (= c!329206 ((_ is Nil!22221) lt!763370))))

(assert (=> d!622382 (= (size!17366 lt!763370) lt!763902)))

(declare-fun b!2033035 () Bool)

(assert (=> b!2033035 (= e!1284017 0)))

(declare-fun b!2033036 () Bool)

(assert (=> b!2033036 (= e!1284017 (+ 1 (size!17366 (t!190662 lt!763370))))))

(assert (= (and d!622382 c!329206) b!2033035))

(assert (= (and d!622382 (not c!329206)) b!2033036))

(declare-fun m!2475103 () Bool)

(assert (=> b!2033036 m!2475103))

(assert (=> b!2031965 d!622382))

(declare-fun d!622384 () Bool)

(declare-fun lt!763903 () Int)

(assert (=> d!622384 (>= lt!763903 0)))

(declare-fun e!1284018 () Int)

(assert (=> d!622384 (= lt!763903 e!1284018)))

(declare-fun c!329207 () Bool)

(assert (=> d!622384 (= c!329207 ((_ is Nil!22221) lt!763202))))

(assert (=> d!622384 (= (size!17366 lt!763202) lt!763903)))

(declare-fun b!2033037 () Bool)

(assert (=> b!2033037 (= e!1284018 0)))

(declare-fun b!2033038 () Bool)

(assert (=> b!2033038 (= e!1284018 (+ 1 (size!17366 (t!190662 lt!763202))))))

(assert (= (and d!622384 c!329207) b!2033037))

(assert (= (and d!622384 (not c!329207)) b!2033038))

(assert (=> b!2033038 m!2474305))

(assert (=> b!2031965 d!622384))

(declare-fun d!622386 () Bool)

(declare-fun lt!763904 () Int)

(assert (=> d!622386 (>= lt!763904 0)))

(declare-fun e!1284019 () Int)

(assert (=> d!622386 (= lt!763904 e!1284019)))

(declare-fun c!329208 () Bool)

(assert (=> d!622386 (= c!329208 ((_ is Nil!22221) lt!763193))))

(assert (=> d!622386 (= (size!17366 lt!763193) lt!763904)))

(declare-fun b!2033039 () Bool)

(assert (=> b!2033039 (= e!1284019 0)))

(declare-fun b!2033040 () Bool)

(assert (=> b!2033040 (= e!1284019 (+ 1 (size!17366 (t!190662 lt!763193))))))

(assert (= (and d!622386 c!329208) b!2033039))

(assert (= (and d!622386 (not c!329208)) b!2033040))

(declare-fun m!2475105 () Bool)

(assert (=> b!2033040 m!2475105))

(assert (=> b!2031965 d!622386))

(declare-fun b!2033044 () Bool)

(declare-fun e!1284021 () Bool)

(declare-fun lt!763905 () List!22303)

(assert (=> b!2033044 (= e!1284021 (or (not (= (_2!11926 (get!7060 lt!763307)) Nil!22221)) (= lt!763905 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))))))))

(declare-fun b!2033043 () Bool)

(declare-fun res!891552 () Bool)

(assert (=> b!2033043 (=> (not res!891552) (not e!1284021))))

(assert (=> b!2033043 (= res!891552 (= (size!17366 lt!763905) (+ (size!17366 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))) (size!17366 (_2!11926 (get!7060 lt!763307))))))))

(declare-fun b!2033041 () Bool)

(declare-fun e!1284020 () List!22303)

(assert (=> b!2033041 (= e!1284020 (_2!11926 (get!7060 lt!763307)))))

(declare-fun b!2033042 () Bool)

(assert (=> b!2033042 (= e!1284020 (Cons!22221 (h!27622 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))) (++!6013 (t!190662 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))) (_2!11926 (get!7060 lt!763307)))))))

(declare-fun d!622388 () Bool)

(assert (=> d!622388 e!1284021))

(declare-fun res!891551 () Bool)

(assert (=> d!622388 (=> (not res!891551) (not e!1284021))))

(assert (=> d!622388 (= res!891551 (= (content!3285 lt!763905) ((_ map or) (content!3285 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))) (content!3285 (_2!11926 (get!7060 lt!763307))))))))

(assert (=> d!622388 (= lt!763905 e!1284020)))

(declare-fun c!329209 () Bool)

(assert (=> d!622388 (= c!329209 ((_ is Nil!22221) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))))))

(assert (=> d!622388 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))) (_2!11926 (get!7060 lt!763307))) lt!763905)))

(assert (= (and d!622388 c!329209) b!2033041))

(assert (= (and d!622388 (not c!329209)) b!2033042))

(assert (= (and d!622388 res!891551) b!2033043))

(assert (= (and b!2033043 res!891552) b!2033044))

(declare-fun m!2475107 () Bool)

(assert (=> b!2033043 m!2475107))

(assert (=> b!2033043 m!2473109))

(declare-fun m!2475109 () Bool)

(assert (=> b!2033043 m!2475109))

(assert (=> b!2033043 m!2473113))

(declare-fun m!2475111 () Bool)

(assert (=> b!2033042 m!2475111))

(declare-fun m!2475113 () Bool)

(assert (=> d!622388 m!2475113))

(assert (=> d!622388 m!2473109))

(declare-fun m!2475115 () Bool)

(assert (=> d!622388 m!2475115))

(declare-fun m!2475117 () Bool)

(assert (=> d!622388 m!2475117))

(assert (=> b!2031835 d!622388))

(declare-fun d!622390 () Bool)

(assert (=> d!622390 (= (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))) (list!9081 (c!328893 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))))))

(declare-fun bs!421169 () Bool)

(assert (= bs!421169 d!622390))

(declare-fun m!2475119 () Bool)

(assert (=> bs!421169 m!2475119))

(assert (=> b!2031835 d!622390))

(declare-fun d!622392 () Bool)

(declare-fun lt!763906 () BalanceConc!14684)

(assert (=> d!622392 (= (list!9077 lt!763906) (originalCharacters!4801 (_1!11926 (get!7060 lt!763307))))))

(assert (=> d!622392 (= lt!763906 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))) (value!125420 (_1!11926 (get!7060 lt!763307)))))))

(assert (=> d!622392 (= (charsOf!2534 (_1!11926 (get!7060 lt!763307))) lt!763906)))

(declare-fun b_lambda!68551 () Bool)

(assert (=> (not b_lambda!68551) (not d!622392)))

(declare-fun t!190905 () Bool)

(declare-fun tb!128565 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190905) tb!128565))

(declare-fun b!2033045 () Bool)

(declare-fun e!1284022 () Bool)

(declare-fun tp!603788 () Bool)

(assert (=> b!2033045 (= e!1284022 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))) (value!125420 (_1!11926 (get!7060 lt!763307)))))) tp!603788))))

(declare-fun result!153756 () Bool)

(assert (=> tb!128565 (= result!153756 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))) (value!125420 (_1!11926 (get!7060 lt!763307))))) e!1284022))))

(assert (= tb!128565 b!2033045))

(declare-fun m!2475121 () Bool)

(assert (=> b!2033045 m!2475121))

(declare-fun m!2475123 () Bool)

(assert (=> tb!128565 m!2475123))

(assert (=> d!622392 t!190905))

(declare-fun b_and!162207 () Bool)

(assert (= b_and!162199 (and (=> t!190905 result!153756) b_and!162207)))

(declare-fun t!190907 () Bool)

(declare-fun tb!128567 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190907) tb!128567))

(declare-fun result!153758 () Bool)

(assert (= result!153758 result!153756))

(assert (=> d!622392 t!190907))

(declare-fun b_and!162209 () Bool)

(assert (= b_and!162197 (and (=> t!190907 result!153758) b_and!162209)))

(declare-fun t!190909 () Bool)

(declare-fun tb!128569 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190909) tb!128569))

(declare-fun result!153760 () Bool)

(assert (= result!153760 result!153756))

(assert (=> d!622392 t!190909))

(declare-fun b_and!162211 () Bool)

(assert (= b_and!162201 (and (=> t!190909 result!153760) b_and!162211)))

(declare-fun t!190911 () Bool)

(declare-fun tb!128571 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190911) tb!128571))

(declare-fun result!153762 () Bool)

(assert (= result!153762 result!153756))

(assert (=> d!622392 t!190911))

(declare-fun b_and!162213 () Bool)

(assert (= b_and!162203 (and (=> t!190911 result!153762) b_and!162213)))

(declare-fun tb!128573 () Bool)

(declare-fun t!190913 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190913) tb!128573))

(declare-fun result!153764 () Bool)

(assert (= result!153764 result!153756))

(assert (=> d!622392 t!190913))

(declare-fun b_and!162215 () Bool)

(assert (= b_and!162205 (and (=> t!190913 result!153764) b_and!162215)))

(declare-fun m!2475125 () Bool)

(assert (=> d!622392 m!2475125))

(declare-fun m!2475127 () Bool)

(assert (=> d!622392 m!2475127))

(assert (=> b!2031835 d!622392))

(assert (=> b!2031835 d!622104))

(declare-fun bs!421170 () Bool)

(declare-fun d!622394 () Bool)

(assert (= bs!421170 (and d!622394 d!621812)))

(declare-fun lambda!76600 () Int)

(assert (=> bs!421170 (= (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (= lambda!76600 lambda!76563))))

(assert (=> d!622394 true))

(assert (=> d!622394 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11072 order!14251 lambda!76600))))

(assert (=> d!622394 (= (equivClasses!1538 (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (Forall2!647 lambda!76600))))

(declare-fun bs!421171 () Bool)

(assert (= bs!421171 d!622394))

(declare-fun m!2475129 () Bool)

(assert (=> bs!421171 m!2475129))

(assert (=> b!2032102 d!622394))

(declare-fun b!2033051 () Bool)

(declare-fun e!1284025 () List!22303)

(declare-fun e!1284026 () List!22303)

(assert (=> b!2033051 (= e!1284025 e!1284026)))

(declare-fun c!329211 () Bool)

(assert (=> b!2033051 (= c!329211 ((_ is Leaf!10894) (c!328893 lt!763199)))))

(declare-fun b!2033050 () Bool)

(assert (=> b!2033050 (= e!1284025 Nil!22221)))

(declare-fun b!2033053 () Bool)

(assert (=> b!2033053 (= e!1284026 (++!6013 (list!9081 (left!17681 (c!328893 lt!763199))) (list!9081 (right!18011 (c!328893 lt!763199)))))))

(declare-fun b!2033052 () Bool)

(assert (=> b!2033052 (= e!1284026 (list!9085 (xs!10336 (c!328893 lt!763199))))))

(declare-fun d!622396 () Bool)

(declare-fun c!329210 () Bool)

(assert (=> d!622396 (= c!329210 ((_ is Empty!7434) (c!328893 lt!763199)))))

(assert (=> d!622396 (= (list!9081 (c!328893 lt!763199)) e!1284025)))

(assert (= (and d!622396 c!329210) b!2033050))

(assert (= (and d!622396 (not c!329210)) b!2033051))

(assert (= (and b!2033051 c!329211) b!2033052))

(assert (= (and b!2033051 (not c!329211)) b!2033053))

(declare-fun m!2475131 () Bool)

(assert (=> b!2033053 m!2475131))

(declare-fun m!2475133 () Bool)

(assert (=> b!2033053 m!2475133))

(assert (=> b!2033053 m!2475131))

(assert (=> b!2033053 m!2475133))

(declare-fun m!2475135 () Bool)

(assert (=> b!2033053 m!2475135))

(declare-fun m!2475137 () Bool)

(assert (=> b!2033052 m!2475137))

(assert (=> d!621818 d!622396))

(assert (=> b!2031733 d!622134))

(declare-fun d!622398 () Bool)

(assert (=> d!622398 (= (list!9077 (ite c!328959 call!124716 call!124715)) (list!9081 (c!328893 (ite c!328959 call!124716 call!124715))))))

(declare-fun bs!421172 () Bool)

(assert (= bs!421172 d!622398))

(declare-fun m!2475139 () Bool)

(assert (=> bs!421172 m!2475139))

(assert (=> bm!124709 d!622398))

(assert (=> b!2032196 d!621722))

(declare-fun d!622400 () Bool)

(assert (=> d!622400 (= (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))) (not (isEmpty!13881 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))))))

(declare-fun bs!421173 () Bool)

(assert (= bs!421173 d!622400))

(assert (=> bs!421173 m!2472725))

(declare-fun m!2475141 () Bool)

(assert (=> bs!421173 m!2475141))

(assert (=> d!621824 d!622400))

(assert (=> d!621824 d!621820))

(declare-fun d!622402 () Bool)

(declare-fun e!1284027 () Bool)

(assert (=> d!622402 e!1284027))

(declare-fun res!891555 () Bool)

(assert (=> d!622402 (=> (not res!891555) (not e!1284027))))

(assert (=> d!622402 (= res!891555 (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))))))

(assert (=> d!622402 true))

(declare-fun _$52!1334 () Unit!36902)

(assert (=> d!622402 (= (choose!12392 thiss!23328 rules!3198 lt!763185 separatorToken!354) _$52!1334)))

(declare-fun b!2033054 () Bool)

(declare-fun res!891556 () Bool)

(assert (=> b!2033054 (=> (not res!891556) (not e!1284027))))

(assert (=> b!2033054 (= res!891556 (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))) (list!9077 (charsOf!2534 separatorToken!354))))))

(declare-fun b!2033055 () Bool)

(assert (=> b!2033055 (= e!1284027 (= (rule!6229 separatorToken!354) (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))))))

(assert (= (and d!622402 res!891555) b!2033054))

(assert (= (and b!2033054 res!891556) b!2033055))

(assert (=> d!622402 m!2472725))

(assert (=> d!622402 m!2472725))

(assert (=> d!622402 m!2473261))

(assert (=> b!2033054 m!2472725))

(assert (=> b!2033054 m!2472729))

(assert (=> b!2033054 m!2472745))

(assert (=> b!2033054 m!2472745))

(assert (=> b!2033054 m!2473265))

(assert (=> b!2033054 m!2472729))

(assert (=> b!2033054 m!2472725))

(assert (=> b!2033054 m!2473267))

(assert (=> b!2033055 m!2472725))

(assert (=> b!2033055 m!2472725))

(assert (=> b!2033055 m!2473267))

(assert (=> d!621824 d!622402))

(assert (=> d!621824 d!621912))

(declare-fun d!622404 () Bool)

(declare-fun c!329212 () Bool)

(assert (=> d!622404 (= c!329212 ((_ is Node!7434) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))))))

(declare-fun e!1284028 () Bool)

(assert (=> d!622404 (= (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))) e!1284028)))

(declare-fun b!2033056 () Bool)

(assert (=> b!2033056 (= e!1284028 (inv!29415 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))))))

(declare-fun b!2033057 () Bool)

(declare-fun e!1284029 () Bool)

(assert (=> b!2033057 (= e!1284028 e!1284029)))

(declare-fun res!891557 () Bool)

(assert (=> b!2033057 (= res!891557 (not ((_ is Leaf!10894) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))))))))

(assert (=> b!2033057 (=> res!891557 e!1284029)))

(declare-fun b!2033058 () Bool)

(assert (=> b!2033058 (= e!1284029 (inv!29416 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))))))

(assert (= (and d!622404 c!329212) b!2033056))

(assert (= (and d!622404 (not c!329212)) b!2033057))

(assert (= (and b!2033057 (not res!891557)) b!2033058))

(declare-fun m!2475143 () Bool)

(assert (=> b!2033056 m!2475143))

(declare-fun m!2475145 () Bool)

(assert (=> b!2033058 m!2475145))

(assert (=> b!2031723 d!622404))

(declare-fun d!622406 () Bool)

(assert (=> d!622406 (= (list!9077 lt!763367) (list!9081 (c!328893 lt!763367)))))

(declare-fun bs!421174 () Bool)

(assert (= bs!421174 d!622406))

(declare-fun m!2475147 () Bool)

(assert (=> bs!421174 m!2475147))

(assert (=> d!621828 d!622406))

(declare-fun lt!763907 () Bool)

(declare-fun d!622408 () Bool)

(assert (=> d!622408 (= lt!763907 (isEmpty!13880 (list!9077 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))))))))))

(assert (=> d!622408 (= lt!763907 (isEmpty!13888 (c!328893 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598))))))))))

(assert (=> d!622408 (= (isEmpty!13878 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 tokens!598)))))) lt!763907)))

(declare-fun bs!421175 () Bool)

(assert (= bs!421175 d!622408))

(declare-fun m!2475149 () Bool)

(assert (=> bs!421175 m!2475149))

(assert (=> bs!421175 m!2475149))

(declare-fun m!2475151 () Bool)

(assert (=> bs!421175 m!2475151))

(declare-fun m!2475153 () Bool)

(assert (=> bs!421175 m!2475153))

(assert (=> b!2031628 d!622408))

(assert (=> b!2031628 d!622306))

(assert (=> b!2031628 d!622312))

(assert (=> b!2031628 d!621888))

(declare-fun d!622410 () Bool)

(assert (=> d!622410 (= (get!7059 lt!763361) (v!27005 lt!763361))))

(assert (=> b!2031941 d!622410))

(declare-fun d!622412 () Bool)

(assert (=> d!622412 (= (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))) (isBalanced!2321 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))))

(declare-fun bs!421176 () Bool)

(assert (= bs!421176 d!622412))

(declare-fun m!2475155 () Bool)

(assert (=> bs!421176 m!2475155))

(assert (=> tb!128357 d!622412))

(declare-fun b!2033059 () Bool)

(declare-fun res!891560 () Bool)

(declare-fun e!1284032 () Bool)

(assert (=> b!2033059 (=> (not res!891560) (not e!1284032))))

(declare-fun lt!763921 () Option!4674)

(assert (=> b!2033059 (= res!891560 (matchR!2685 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763921)))) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763921))))))))

(declare-fun b!2033060 () Bool)

(declare-fun res!891561 () Bool)

(assert (=> b!2033060 (=> (not res!891561) (not e!1284032))))

(assert (=> b!2033060 (= res!891561 (= (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763921)))) (originalCharacters!4801 (_1!11926 (get!7060 lt!763921)))))))

(declare-fun b!2033061 () Bool)

(declare-fun e!1284030 () Option!4674)

(declare-fun lt!763922 () Option!4674)

(declare-fun lt!763920 () Option!4674)

(assert (=> b!2033061 (= e!1284030 (ite (and ((_ is None!4673) lt!763922) ((_ is None!4673) lt!763920)) None!4673 (ite ((_ is None!4673) lt!763920) lt!763922 (ite ((_ is None!4673) lt!763922) lt!763920 (ite (>= (size!17362 (_1!11926 (v!27006 lt!763922))) (size!17362 (_1!11926 (v!27006 lt!763920)))) lt!763922 lt!763920)))))))

(declare-fun call!124795 () Option!4674)

(assert (=> b!2033061 (= lt!763922 call!124795)))

(assert (=> b!2033061 (= lt!763920 (maxPrefix!2043 thiss!23328 (t!190663 (t!190663 rules!3198)) lt!763202))))

(declare-fun d!622414 () Bool)

(declare-fun e!1284031 () Bool)

(assert (=> d!622414 e!1284031))

(declare-fun res!891563 () Bool)

(assert (=> d!622414 (=> res!891563 e!1284031)))

(assert (=> d!622414 (= res!891563 (isEmpty!13882 lt!763921))))

(assert (=> d!622414 (= lt!763921 e!1284030)))

(declare-fun c!329213 () Bool)

(assert (=> d!622414 (= c!329213 (and ((_ is Cons!22222) (t!190663 rules!3198)) ((_ is Nil!22222) (t!190663 (t!190663 rules!3198)))))))

(declare-fun lt!763918 () Unit!36902)

(declare-fun lt!763919 () Unit!36902)

(assert (=> d!622414 (= lt!763918 lt!763919)))

(assert (=> d!622414 (isPrefix!1987 lt!763202 lt!763202)))

(assert (=> d!622414 (= lt!763919 (lemmaIsPrefixRefl!1305 lt!763202 lt!763202))))

(assert (=> d!622414 (rulesValidInductive!1386 thiss!23328 (t!190663 rules!3198))))

(assert (=> d!622414 (= (maxPrefix!2043 thiss!23328 (t!190663 rules!3198) lt!763202) lt!763921)))

(declare-fun b!2033062 () Bool)

(declare-fun res!891558 () Bool)

(assert (=> b!2033062 (=> (not res!891558) (not e!1284032))))

(assert (=> b!2033062 (= res!891558 (= (value!125420 (_1!11926 (get!7060 lt!763921))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763921)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763921)))))))))

(declare-fun b!2033063 () Bool)

(assert (=> b!2033063 (= e!1284030 call!124795)))

(declare-fun b!2033064 () Bool)

(declare-fun res!891562 () Bool)

(assert (=> b!2033064 (=> (not res!891562) (not e!1284032))))

(assert (=> b!2033064 (= res!891562 (< (size!17366 (_2!11926 (get!7060 lt!763921))) (size!17366 lt!763202)))))

(declare-fun b!2033065 () Bool)

(assert (=> b!2033065 (= e!1284032 (contains!4106 (t!190663 rules!3198) (rule!6229 (_1!11926 (get!7060 lt!763921)))))))

(declare-fun b!2033066 () Bool)

(declare-fun res!891564 () Bool)

(assert (=> b!2033066 (=> (not res!891564) (not e!1284032))))

(assert (=> b!2033066 (= res!891564 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763921)))) (_2!11926 (get!7060 lt!763921))) lt!763202))))

(declare-fun b!2033067 () Bool)

(assert (=> b!2033067 (= e!1284031 e!1284032)))

(declare-fun res!891559 () Bool)

(assert (=> b!2033067 (=> (not res!891559) (not e!1284032))))

(assert (=> b!2033067 (= res!891559 (isDefined!3960 lt!763921))))

(declare-fun bm!124790 () Bool)

(assert (=> bm!124790 (= call!124795 (maxPrefixOneRule!1269 thiss!23328 (h!27623 (t!190663 rules!3198)) lt!763202))))

(assert (= (and d!622414 c!329213) b!2033063))

(assert (= (and d!622414 (not c!329213)) b!2033061))

(assert (= (or b!2033063 b!2033061) bm!124790))

(assert (= (and d!622414 (not res!891563)) b!2033067))

(assert (= (and b!2033067 res!891559) b!2033060))

(assert (= (and b!2033060 res!891561) b!2033064))

(assert (= (and b!2033064 res!891562) b!2033066))

(assert (= (and b!2033066 res!891564) b!2033062))

(assert (= (and b!2033062 res!891558) b!2033059))

(assert (= (and b!2033059 res!891560) b!2033065))

(declare-fun m!2475157 () Bool)

(assert (=> b!2033065 m!2475157))

(declare-fun m!2475159 () Bool)

(assert (=> b!2033065 m!2475159))

(assert (=> b!2033059 m!2475157))

(declare-fun m!2475161 () Bool)

(assert (=> b!2033059 m!2475161))

(assert (=> b!2033059 m!2475161))

(declare-fun m!2475163 () Bool)

(assert (=> b!2033059 m!2475163))

(assert (=> b!2033059 m!2475163))

(declare-fun m!2475165 () Bool)

(assert (=> b!2033059 m!2475165))

(assert (=> b!2033064 m!2475157))

(declare-fun m!2475167 () Bool)

(assert (=> b!2033064 m!2475167))

(assert (=> b!2033064 m!2472979))

(assert (=> b!2033060 m!2475157))

(assert (=> b!2033060 m!2475161))

(assert (=> b!2033060 m!2475161))

(assert (=> b!2033060 m!2475163))

(assert (=> b!2033066 m!2475157))

(assert (=> b!2033066 m!2475161))

(assert (=> b!2033066 m!2475161))

(assert (=> b!2033066 m!2475163))

(assert (=> b!2033066 m!2475163))

(declare-fun m!2475169 () Bool)

(assert (=> b!2033066 m!2475169))

(declare-fun m!2475171 () Bool)

(assert (=> b!2033061 m!2475171))

(declare-fun m!2475173 () Bool)

(assert (=> d!622414 m!2475173))

(assert (=> d!622414 m!2472987))

(assert (=> d!622414 m!2472989))

(assert (=> d!622414 m!2474929))

(assert (=> b!2033062 m!2475157))

(declare-fun m!2475175 () Bool)

(assert (=> b!2033062 m!2475175))

(assert (=> b!2033062 m!2475175))

(declare-fun m!2475177 () Bool)

(assert (=> b!2033062 m!2475177))

(declare-fun m!2475179 () Bool)

(assert (=> bm!124790 m!2475179))

(declare-fun m!2475181 () Bool)

(assert (=> b!2033067 m!2475181))

(assert (=> b!2031764 d!622414))

(declare-fun d!622416 () Bool)

(declare-fun e!1284041 () Bool)

(assert (=> d!622416 e!1284041))

(declare-fun res!891567 () Bool)

(assert (=> d!622416 (=> (not res!891567) (not e!1284041))))

(declare-fun lt!763983 () BalanceConc!14684)

(assert (=> d!622416 (= res!891567 (= (list!9077 lt!763983) lt!763202))))

(declare-fun fromList!502 (List!22303) Conc!7434)

(assert (=> d!622416 (= lt!763983 (BalanceConc!14685 (fromList!502 lt!763202)))))

(assert (=> d!622416 (= (fromListB!1284 lt!763202) lt!763983)))

(declare-fun b!2033082 () Bool)

(assert (=> b!2033082 (= e!1284041 (isBalanced!2321 (fromList!502 lt!763202)))))

(assert (= (and d!622416 res!891567) b!2033082))

(declare-fun m!2475183 () Bool)

(assert (=> d!622416 m!2475183))

(declare-fun m!2475185 () Bool)

(assert (=> d!622416 m!2475185))

(assert (=> b!2033082 m!2475185))

(assert (=> b!2033082 m!2475185))

(declare-fun m!2475187 () Bool)

(assert (=> b!2033082 m!2475187))

(assert (=> d!621872 d!622416))

(declare-fun d!622418 () Bool)

(assert (=> d!622418 (= (list!9077 (_2!11925 lt!763422)) (list!9081 (c!328893 (_2!11925 lt!763422))))))

(declare-fun bs!421177 () Bool)

(assert (= bs!421177 d!622418))

(declare-fun m!2475189 () Bool)

(assert (=> bs!421177 m!2475189))

(assert (=> b!2032070 d!622418))

(declare-fun b!2033102 () Bool)

(declare-fun e!1284056 () Bool)

(declare-fun lt!764028 () tuple2!20918)

(assert (=> b!2033102 (= e!1284056 (not (isEmpty!13885 (_1!11928 lt!764028))))))

(declare-fun b!2033104 () Bool)

(declare-fun e!1284055 () tuple2!20918)

(declare-fun lt!764029 () Option!4674)

(declare-fun lt!764030 () tuple2!20918)

(assert (=> b!2033104 (= e!1284055 (tuple2!20919 (Cons!22223 (_1!11926 (v!27006 lt!764029)) (_1!11928 lt!764030)) (_2!11928 lt!764030)))))

(assert (=> b!2033104 (= lt!764030 (lexList!985 thiss!23328 rules!3198 (_2!11926 (v!27006 lt!764029))))))

(declare-fun b!2033103 () Bool)

(declare-fun e!1284054 () Bool)

(assert (=> b!2033103 (= e!1284054 e!1284056)))

(declare-fun res!891573 () Bool)

(assert (=> b!2033103 (= res!891573 (< (size!17366 (_2!11928 lt!764028)) (size!17366 (list!9077 (seqFromList!2848 lt!763202)))))))

(assert (=> b!2033103 (=> (not res!891573) (not e!1284056))))

(declare-fun d!622420 () Bool)

(assert (=> d!622420 e!1284054))

(declare-fun c!329229 () Bool)

(assert (=> d!622420 (= c!329229 (> (size!17369 (_1!11928 lt!764028)) 0))))

(assert (=> d!622420 (= lt!764028 e!1284055)))

(declare-fun c!329228 () Bool)

(assert (=> d!622420 (= c!329228 ((_ is Some!4673) lt!764029))))

(assert (=> d!622420 (= lt!764029 (maxPrefix!2043 thiss!23328 rules!3198 (list!9077 (seqFromList!2848 lt!763202))))))

(assert (=> d!622420 (= (lexList!985 thiss!23328 rules!3198 (list!9077 (seqFromList!2848 lt!763202))) lt!764028)))

(declare-fun b!2033105 () Bool)

(assert (=> b!2033105 (= e!1284054 (= (_2!11928 lt!764028) (list!9077 (seqFromList!2848 lt!763202))))))

(declare-fun b!2033106 () Bool)

(assert (=> b!2033106 (= e!1284055 (tuple2!20919 Nil!22223 (list!9077 (seqFromList!2848 lt!763202))))))

(assert (= (and d!622420 c!329228) b!2033104))

(assert (= (and d!622420 (not c!329228)) b!2033106))

(assert (= (and d!622420 c!329229) b!2033103))

(assert (= (and d!622420 (not c!329229)) b!2033105))

(assert (= (and b!2033103 res!891573) b!2033102))

(declare-fun m!2475289 () Bool)

(assert (=> b!2033102 m!2475289))

(declare-fun m!2475291 () Bool)

(assert (=> b!2033104 m!2475291))

(declare-fun m!2475293 () Bool)

(assert (=> b!2033103 m!2475293))

(assert (=> b!2033103 m!2473449))

(declare-fun m!2475295 () Bool)

(assert (=> b!2033103 m!2475295))

(declare-fun m!2475297 () Bool)

(assert (=> d!622420 m!2475297))

(assert (=> d!622420 m!2473449))

(declare-fun m!2475299 () Bool)

(assert (=> d!622420 m!2475299))

(assert (=> b!2032070 d!622420))

(declare-fun d!622432 () Bool)

(assert (=> d!622432 (= (list!9077 (seqFromList!2848 lt!763202)) (list!9081 (c!328893 (seqFromList!2848 lt!763202))))))

(declare-fun bs!421185 () Bool)

(assert (= bs!421185 d!622432))

(declare-fun m!2475301 () Bool)

(assert (=> bs!421185 m!2475301))

(assert (=> b!2032070 d!622432))

(declare-fun d!622434 () Bool)

(declare-fun lt!764036 () Int)

(assert (=> d!622434 (= lt!764036 (size!17369 (list!9080 lt!763188)))))

(assert (=> d!622434 (= lt!764036 (size!17370 (c!328895 lt!763188)))))

(assert (=> d!622434 (= (size!17365 lt!763188) lt!764036)))

(declare-fun bs!421186 () Bool)

(assert (= bs!421186 d!622434))

(assert (=> bs!421186 m!2473507))

(assert (=> bs!421186 m!2473507))

(declare-fun m!2475303 () Bool)

(assert (=> bs!421186 m!2475303))

(declare-fun m!2475305 () Bool)

(assert (=> bs!421186 m!2475305))

(assert (=> b!2032096 d!622434))

(assert (=> b!2031765 d!622320))

(declare-fun d!622436 () Bool)

(assert (=> d!622436 (= (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763244))))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763244))))))))

(declare-fun b_lambda!68553 () Bool)

(assert (=> (not b_lambda!68553) (not d!622436)))

(declare-fun tb!128575 () Bool)

(declare-fun t!190915 () Bool)

(assert (=> (and b!2032252 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190915) tb!128575))

(declare-fun result!153766 () Bool)

(assert (=> tb!128575 (= result!153766 (inv!21 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763244)))))))))

(declare-fun m!2475319 () Bool)

(assert (=> tb!128575 m!2475319))

(assert (=> d!622436 t!190915))

(declare-fun b_and!162217 () Bool)

(assert (= b_and!162073 (and (=> t!190915 result!153766) b_and!162217)))

(declare-fun t!190917 () Bool)

(declare-fun tb!128577 () Bool)

(assert (=> (and b!2031513 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190917) tb!128577))

(declare-fun result!153768 () Bool)

(assert (= result!153768 result!153766))

(assert (=> d!622436 t!190917))

(declare-fun b_and!162219 () Bool)

(assert (= b_and!161999 (and (=> t!190917 result!153768) b_and!162219)))

(declare-fun tb!128579 () Bool)

(declare-fun t!190919 () Bool)

(assert (=> (and b!2032233 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190919) tb!128579))

(declare-fun result!153770 () Bool)

(assert (= result!153770 result!153766))

(assert (=> d!622436 t!190919))

(declare-fun b_and!162221 () Bool)

(assert (= b_and!162069 (and (=> t!190919 result!153770) b_and!162221)))

(declare-fun tb!128581 () Bool)

(declare-fun t!190921 () Bool)

(assert (=> (and b!2031531 (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190921) tb!128581))

(declare-fun result!153772 () Bool)

(assert (= result!153772 result!153766))

(assert (=> d!622436 t!190921))

(declare-fun b_and!162223 () Bool)

(assert (= b_and!161997 (and (=> t!190921 result!153772) b_and!162223)))

(declare-fun t!190923 () Bool)

(declare-fun tb!128583 () Bool)

(assert (=> (and b!2031523 (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!190923) tb!128583))

(declare-fun result!153774 () Bool)

(assert (= result!153774 result!153766))

(assert (=> d!622436 t!190923))

(declare-fun b_and!162225 () Bool)

(assert (= b_and!161995 (and (=> t!190923 result!153774) b_and!162225)))

(assert (=> d!622436 m!2472993))

(declare-fun m!2475339 () Bool)

(assert (=> d!622436 m!2475339))

(assert (=> b!2031765 d!622436))

(declare-fun d!622438 () Bool)

(assert (=> d!622438 (= (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763244)))) (fromListB!1284 (originalCharacters!4801 (_1!11926 (get!7060 lt!763244)))))))

(declare-fun bs!421187 () Bool)

(assert (= bs!421187 d!622438))

(declare-fun m!2475347 () Bool)

(assert (=> bs!421187 m!2475347))

(assert (=> b!2031765 d!622438))

(declare-fun d!622440 () Bool)

(declare-fun lt!764037 () Bool)

(assert (=> d!622440 (= lt!764037 (isEmpty!13885 (list!9080 (_1!11925 lt!763422))))))

(assert (=> d!622440 (= lt!764037 (isEmpty!13886 (c!328895 (_1!11925 lt!763422))))))

(assert (=> d!622440 (= (isEmpty!13874 (_1!11925 lt!763422)) lt!764037)))

(declare-fun bs!421188 () Bool)

(assert (= bs!421188 d!622440))

(assert (=> bs!421188 m!2473447))

(assert (=> bs!421188 m!2473447))

(declare-fun m!2475351 () Bool)

(assert (=> bs!421188 m!2475351))

(declare-fun m!2475355 () Bool)

(assert (=> bs!421188 m!2475355))

(assert (=> b!2032069 d!622440))

(declare-fun lt!764038 () List!22303)

(declare-fun b!2033119 () Bool)

(declare-fun e!1284063 () Bool)

(assert (=> b!2033119 (= e!1284063 (or (not (= (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223))) Nil!22221)) (= lt!764038 (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))))))

(declare-fun b!2033118 () Bool)

(declare-fun res!891582 () Bool)

(assert (=> b!2033118 (=> (not res!891582) (not e!1284063))))

(assert (=> b!2033118 (= res!891582 (= (size!17366 lt!764038) (+ (size!17366 (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (size!17366 (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))))))

(declare-fun b!2033116 () Bool)

(declare-fun e!1284062 () List!22303)

(assert (=> b!2033116 (= e!1284062 (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223))))))

(declare-fun b!2033117 () Bool)

(assert (=> b!2033117 (= e!1284062 (Cons!22221 (h!27622 (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (++!6013 (t!190662 (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223))))))))

(declare-fun d!622444 () Bool)

(assert (=> d!622444 e!1284063))

(declare-fun res!891581 () Bool)

(assert (=> d!622444 (=> (not res!891581) (not e!1284063))))

(assert (=> d!622444 (= res!891581 (= (content!3285 lt!764038) ((_ map or) (content!3285 (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (content!3285 (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))))))

(assert (=> d!622444 (= lt!764038 e!1284062)))

(declare-fun c!329231 () Bool)

(assert (=> d!622444 (= c!329231 ((_ is Nil!22221) (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))))))

(assert (=> d!622444 (= (++!6013 (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))) (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223)))) lt!764038)))

(assert (= (and d!622444 c!329231) b!2033116))

(assert (= (and d!622444 (not c!329231)) b!2033117))

(assert (= (and d!622444 res!891581) b!2033118))

(assert (= (and b!2033118 res!891582) b!2033119))

(declare-fun m!2475359 () Bool)

(assert (=> b!2033118 m!2475359))

(assert (=> b!2033118 m!2473463))

(declare-fun m!2475365 () Bool)

(assert (=> b!2033118 m!2475365))

(assert (=> b!2033118 m!2473465))

(declare-fun m!2475367 () Bool)

(assert (=> b!2033118 m!2475367))

(assert (=> b!2033117 m!2473465))

(declare-fun m!2475369 () Bool)

(assert (=> b!2033117 m!2475369))

(declare-fun m!2475371 () Bool)

(assert (=> d!622444 m!2475371))

(assert (=> d!622444 m!2473463))

(declare-fun m!2475373 () Bool)

(assert (=> d!622444 m!2475373))

(assert (=> d!622444 m!2473465))

(declare-fun m!2475375 () Bool)

(assert (=> d!622444 m!2475375))

(assert (=> b!2032076 d!622444))

(declare-fun d!622452 () Bool)

(assert (=> d!622452 (= (list!9077 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))) (list!9081 (c!328893 (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))))))

(declare-fun bs!421189 () Bool)

(assert (= bs!421189 d!622452))

(declare-fun m!2475377 () Bool)

(assert (=> bs!421189 m!2475377))

(assert (=> b!2032076 d!622452))

(declare-fun d!622454 () Bool)

(declare-fun lt!764040 () BalanceConc!14684)

(assert (=> d!622454 (= (list!9077 lt!764040) (originalCharacters!4801 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))))

(assert (=> d!622454 (= lt!764040 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (value!125420 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))))

(assert (=> d!622454 (= (charsOf!2534 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))) lt!764040)))

(declare-fun b_lambda!68555 () Bool)

(assert (=> (not b_lambda!68555) (not d!622454)))

(declare-fun t!190925 () Bool)

(declare-fun tb!128585 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) t!190925) tb!128585))

(declare-fun b!2033139 () Bool)

(declare-fun e!1284074 () Bool)

(declare-fun tp!603789 () Bool)

(assert (=> b!2033139 (= e!1284074 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (value!125420 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) tp!603789))))

(declare-fun result!153776 () Bool)

(assert (=> tb!128585 (= result!153776 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (value!125420 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) e!1284074))))

(assert (= tb!128585 b!2033139))

(declare-fun m!2475379 () Bool)

(assert (=> b!2033139 m!2475379))

(declare-fun m!2475381 () Bool)

(assert (=> tb!128585 m!2475381))

(assert (=> d!622454 t!190925))

(declare-fun b_and!162227 () Bool)

(assert (= b_and!162211 (and (=> t!190925 result!153776) b_and!162227)))

(declare-fun t!190927 () Bool)

(declare-fun tb!128587 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) t!190927) tb!128587))

(declare-fun result!153778 () Bool)

(assert (= result!153778 result!153776))

(assert (=> d!622454 t!190927))

(declare-fun b_and!162229 () Bool)

(assert (= b_and!162213 (and (=> t!190927 result!153778) b_and!162229)))

(declare-fun tb!128589 () Bool)

(declare-fun t!190929 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) t!190929) tb!128589))

(declare-fun result!153780 () Bool)

(assert (= result!153780 result!153776))

(assert (=> d!622454 t!190929))

(declare-fun b_and!162231 () Bool)

(assert (= b_and!162207 (and (=> t!190929 result!153780) b_and!162231)))

(declare-fun t!190931 () Bool)

(declare-fun tb!128591 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) t!190931) tb!128591))

(declare-fun result!153782 () Bool)

(assert (= result!153782 result!153776))

(assert (=> d!622454 t!190931))

(declare-fun b_and!162233 () Bool)

(assert (= b_and!162209 (and (=> t!190931 result!153782) b_and!162233)))

(declare-fun t!190933 () Bool)

(declare-fun tb!128593 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) t!190933) tb!128593))

(declare-fun result!153784 () Bool)

(assert (= result!153784 result!153776))

(assert (=> d!622454 t!190933))

(declare-fun b_and!162235 () Bool)

(assert (= b_and!162215 (and (=> t!190933 result!153784) b_and!162235)))

(declare-fun m!2475395 () Bool)

(assert (=> d!622454 m!2475395))

(declare-fun m!2475397 () Bool)

(assert (=> d!622454 m!2475397))

(assert (=> b!2032076 d!622454))

(declare-fun d!622456 () Bool)

(declare-fun c!329237 () Bool)

(assert (=> d!622456 (= c!329237 ((_ is Cons!22223) (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223))))))

(declare-fun e!1284075 () List!22303)

(assert (=> d!622456 (= (printList!1126 thiss!23328 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223))) e!1284075)))

(declare-fun b!2033140 () Bool)

(assert (=> b!2033140 (= e!1284075 (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223))))) (printList!1126 thiss!23328 (t!190664 (t!190664 (Cons!22223 (h!27624 tokens!598) Nil!22223))))))))

(declare-fun b!2033141 () Bool)

(assert (=> b!2033141 (= e!1284075 Nil!22221)))

(assert (= (and d!622456 c!329237) b!2033140))

(assert (= (and d!622456 (not c!329237)) b!2033141))

(declare-fun m!2475403 () Bool)

(assert (=> b!2033140 m!2475403))

(assert (=> b!2033140 m!2475403))

(declare-fun m!2475405 () Bool)

(assert (=> b!2033140 m!2475405))

(declare-fun m!2475407 () Bool)

(assert (=> b!2033140 m!2475407))

(assert (=> b!2033140 m!2475405))

(assert (=> b!2033140 m!2475407))

(declare-fun m!2475413 () Bool)

(assert (=> b!2033140 m!2475413))

(assert (=> b!2032076 d!622456))

(declare-fun d!622462 () Bool)

(assert (=> d!622462 (= (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))) (list!9081 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))))))

(declare-fun bs!421190 () Bool)

(assert (= bs!421190 d!622462))

(declare-fun m!2475415 () Bool)

(assert (=> bs!421190 m!2475415))

(assert (=> b!2031708 d!622462))

(declare-fun d!622464 () Bool)

(declare-fun res!891600 () Bool)

(declare-fun e!1284082 () Bool)

(assert (=> d!622464 (=> res!891600 e!1284082)))

(assert (=> d!622464 (= res!891600 ((_ is Nil!22223) tokens!598))))

(assert (=> d!622464 (= (forall!4728 tokens!598 lambda!76575) e!1284082)))

(declare-fun b!2033154 () Bool)

(declare-fun e!1284083 () Bool)

(assert (=> b!2033154 (= e!1284082 e!1284083)))

(declare-fun res!891601 () Bool)

(assert (=> b!2033154 (=> (not res!891601) (not e!1284083))))

(assert (=> b!2033154 (= res!891601 (dynLambda!11063 lambda!76575 (h!27624 tokens!598)))))

(declare-fun b!2033155 () Bool)

(assert (=> b!2033155 (= e!1284083 (forall!4728 (t!190664 tokens!598) lambda!76575))))

(assert (= (and d!622464 (not res!891600)) b!2033154))

(assert (= (and b!2033154 res!891601) b!2033155))

(declare-fun b_lambda!68557 () Bool)

(assert (=> (not b_lambda!68557) (not b!2033154)))

(declare-fun m!2475417 () Bool)

(assert (=> b!2033154 m!2475417))

(declare-fun m!2475419 () Bool)

(assert (=> b!2033155 m!2475419))

(assert (=> d!621910 d!622464))

(assert (=> d!621910 d!621718))

(declare-fun b!2033156 () Bool)

(declare-fun e!1284087 () Bool)

(declare-fun lt!764046 () Bool)

(assert (=> b!2033156 (= e!1284087 (not lt!764046))))

(declare-fun b!2033157 () Bool)

(declare-fun e!1284090 () Bool)

(assert (=> b!2033157 (= e!1284090 e!1284087)))

(declare-fun c!329241 () Bool)

(assert (=> b!2033157 (= c!329241 ((_ is EmptyLang!5419) (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185))))))

(declare-fun b!2033158 () Bool)

(declare-fun e!1284088 () Bool)

(assert (=> b!2033158 (= e!1284088 (nullable!1655 (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185))))))

(declare-fun b!2033160 () Bool)

(declare-fun res!891607 () Bool)

(declare-fun e!1284089 () Bool)

(assert (=> b!2033160 (=> res!891607 e!1284089)))

(declare-fun e!1284085 () Bool)

(assert (=> b!2033160 (= res!891607 e!1284085)))

(declare-fun res!891603 () Bool)

(assert (=> b!2033160 (=> (not res!891603) (not e!1284085))))

(assert (=> b!2033160 (= res!891603 lt!764046)))

(declare-fun bm!124792 () Bool)

(declare-fun call!124797 () Bool)

(assert (=> bm!124792 (= call!124797 (isEmpty!13880 (tail!3064 lt!763185)))))

(declare-fun b!2033161 () Bool)

(declare-fun res!891606 () Bool)

(declare-fun e!1284086 () Bool)

(assert (=> b!2033161 (=> res!891606 e!1284086)))

(assert (=> b!2033161 (= res!891606 (not (isEmpty!13880 (tail!3064 (tail!3064 lt!763185)))))))

(declare-fun b!2033162 () Bool)

(declare-fun e!1284084 () Bool)

(assert (=> b!2033162 (= e!1284089 e!1284084)))

(declare-fun res!891602 () Bool)

(assert (=> b!2033162 (=> (not res!891602) (not e!1284084))))

(assert (=> b!2033162 (= res!891602 (not lt!764046))))

(declare-fun b!2033163 () Bool)

(assert (=> b!2033163 (= e!1284084 e!1284086)))

(declare-fun res!891608 () Bool)

(assert (=> b!2033163 (=> res!891608 e!1284086)))

(assert (=> b!2033163 (= res!891608 call!124797)))

(declare-fun d!622466 () Bool)

(assert (=> d!622466 e!1284090))

(declare-fun c!329240 () Bool)

(assert (=> d!622466 (= c!329240 ((_ is EmptyExpr!5419) (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185))))))

(assert (=> d!622466 (= lt!764046 e!1284088)))

(declare-fun c!329242 () Bool)

(assert (=> d!622466 (= c!329242 (isEmpty!13880 (tail!3064 lt!763185)))))

(assert (=> d!622466 (validRegex!2181 (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185)))))

(assert (=> d!622466 (= (matchR!2685 (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185)) (tail!3064 lt!763185)) lt!764046)))

(declare-fun b!2033159 () Bool)

(assert (=> b!2033159 (= e!1284085 (= (head!4589 (tail!3064 lt!763185)) (c!328894 (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185)))))))

(declare-fun b!2033164 () Bool)

(assert (=> b!2033164 (= e!1284088 (matchR!2685 (derivativeStep!1414 (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185)) (head!4589 (tail!3064 lt!763185))) (tail!3064 (tail!3064 lt!763185))))))

(declare-fun b!2033165 () Bool)

(assert (=> b!2033165 (= e!1284086 (not (= (head!4589 (tail!3064 lt!763185)) (c!328894 (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185))))))))

(declare-fun b!2033166 () Bool)

(declare-fun res!891609 () Bool)

(assert (=> b!2033166 (=> (not res!891609) (not e!1284085))))

(assert (=> b!2033166 (= res!891609 (not call!124797))))

(declare-fun b!2033167 () Bool)

(declare-fun res!891605 () Bool)

(assert (=> b!2033167 (=> res!891605 e!1284089)))

(assert (=> b!2033167 (= res!891605 (not ((_ is ElementMatch!5419) (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185)))))))

(assert (=> b!2033167 (= e!1284087 e!1284089)))

(declare-fun b!2033168 () Bool)

(declare-fun res!891604 () Bool)

(assert (=> b!2033168 (=> (not res!891604) (not e!1284085))))

(assert (=> b!2033168 (= res!891604 (isEmpty!13880 (tail!3064 (tail!3064 lt!763185))))))

(declare-fun b!2033169 () Bool)

(assert (=> b!2033169 (= e!1284090 (= lt!764046 call!124797))))

(assert (= (and d!622466 c!329242) b!2033158))

(assert (= (and d!622466 (not c!329242)) b!2033164))

(assert (= (and d!622466 c!329240) b!2033169))

(assert (= (and d!622466 (not c!329240)) b!2033157))

(assert (= (and b!2033157 c!329241) b!2033156))

(assert (= (and b!2033157 (not c!329241)) b!2033167))

(assert (= (and b!2033167 (not res!891605)) b!2033160))

(assert (= (and b!2033160 res!891603) b!2033166))

(assert (= (and b!2033166 res!891609) b!2033168))

(assert (= (and b!2033168 res!891604) b!2033159))

(assert (= (and b!2033160 (not res!891607)) b!2033162))

(assert (= (and b!2033162 res!891602) b!2033163))

(assert (= (and b!2033163 (not res!891608)) b!2033161))

(assert (= (and b!2033161 (not res!891606)) b!2033165))

(assert (= (or b!2033169 b!2033163 b!2033166) bm!124792))

(assert (=> b!2033158 m!2472891))

(declare-fun m!2475421 () Bool)

(assert (=> b!2033158 m!2475421))

(assert (=> b!2033168 m!2472881))

(declare-fun m!2475423 () Bool)

(assert (=> b!2033168 m!2475423))

(assert (=> b!2033168 m!2475423))

(declare-fun m!2475425 () Bool)

(assert (=> b!2033168 m!2475425))

(assert (=> b!2033159 m!2472881))

(declare-fun m!2475429 () Bool)

(assert (=> b!2033159 m!2475429))

(assert (=> b!2033161 m!2472881))

(assert (=> b!2033161 m!2475423))

(assert (=> b!2033161 m!2475423))

(assert (=> b!2033161 m!2475425))

(assert (=> bm!124792 m!2472881))

(assert (=> bm!124792 m!2472883))

(assert (=> d!622466 m!2472881))

(assert (=> d!622466 m!2472883))

(assert (=> d!622466 m!2472891))

(declare-fun m!2475433 () Bool)

(assert (=> d!622466 m!2475433))

(assert (=> b!2033165 m!2472881))

(assert (=> b!2033165 m!2475429))

(assert (=> b!2033164 m!2472881))

(assert (=> b!2033164 m!2475429))

(assert (=> b!2033164 m!2472891))

(assert (=> b!2033164 m!2475429))

(declare-fun m!2475437 () Bool)

(assert (=> b!2033164 m!2475437))

(assert (=> b!2033164 m!2472881))

(assert (=> b!2033164 m!2475423))

(assert (=> b!2033164 m!2475437))

(assert (=> b!2033164 m!2475423))

(declare-fun m!2475445 () Bool)

(assert (=> b!2033164 m!2475445))

(assert (=> b!2031686 d!622466))

(declare-fun d!622468 () Bool)

(declare-fun lt!764047 () Regex!5419)

(assert (=> d!622468 (validRegex!2181 lt!764047)))

(declare-fun e!1284094 () Regex!5419)

(assert (=> d!622468 (= lt!764047 e!1284094)))

(declare-fun c!329243 () Bool)

(assert (=> d!622468 (= c!329243 (or ((_ is EmptyExpr!5419) (regex!3994 lt!763203)) ((_ is EmptyLang!5419) (regex!3994 lt!763203))))))

(assert (=> d!622468 (validRegex!2181 (regex!3994 lt!763203))))

(assert (=> d!622468 (= (derivativeStep!1414 (regex!3994 lt!763203) (head!4589 lt!763185)) lt!764047)))

(declare-fun bm!124793 () Bool)

(declare-fun call!124800 () Regex!5419)

(declare-fun call!124798 () Regex!5419)

(assert (=> bm!124793 (= call!124800 call!124798)))

(declare-fun c!329245 () Bool)

(declare-fun bm!124794 () Bool)

(declare-fun c!329246 () Bool)

(declare-fun c!329247 () Bool)

(assert (=> bm!124794 (= call!124798 (derivativeStep!1414 (ite c!329245 (regOne!11351 (regex!3994 lt!763203)) (ite c!329247 (reg!5748 (regex!3994 lt!763203)) (ite c!329246 (regTwo!11350 (regex!3994 lt!763203)) (regOne!11350 (regex!3994 lt!763203))))) (head!4589 lt!763185)))))

(declare-fun b!2033170 () Bool)

(declare-fun e!1284091 () Regex!5419)

(assert (=> b!2033170 (= e!1284094 e!1284091)))

(declare-fun c!329244 () Bool)

(assert (=> b!2033170 (= c!329244 ((_ is ElementMatch!5419) (regex!3994 lt!763203)))))

(declare-fun b!2033171 () Bool)

(declare-fun call!124799 () Regex!5419)

(declare-fun e!1284092 () Regex!5419)

(declare-fun call!124801 () Regex!5419)

(assert (=> b!2033171 (= e!1284092 (Union!5419 (Concat!9550 call!124801 (regTwo!11350 (regex!3994 lt!763203))) call!124799))))

(declare-fun bm!124795 () Bool)

(assert (=> bm!124795 (= call!124801 (derivativeStep!1414 (ite c!329245 (regTwo!11351 (regex!3994 lt!763203)) (regOne!11350 (regex!3994 lt!763203))) (head!4589 lt!763185)))))

(declare-fun b!2033172 () Bool)

(assert (=> b!2033172 (= c!329245 ((_ is Union!5419) (regex!3994 lt!763203)))))

(declare-fun e!1284093 () Regex!5419)

(assert (=> b!2033172 (= e!1284091 e!1284093)))

(declare-fun b!2033173 () Bool)

(assert (=> b!2033173 (= e!1284092 (Union!5419 (Concat!9550 call!124799 (regTwo!11350 (regex!3994 lt!763203))) EmptyLang!5419))))

(declare-fun b!2033174 () Bool)

(declare-fun e!1284095 () Regex!5419)

(assert (=> b!2033174 (= e!1284093 e!1284095)))

(assert (=> b!2033174 (= c!329247 ((_ is Star!5419) (regex!3994 lt!763203)))))

(declare-fun b!2033175 () Bool)

(assert (=> b!2033175 (= c!329246 (nullable!1655 (regOne!11350 (regex!3994 lt!763203))))))

(assert (=> b!2033175 (= e!1284095 e!1284092)))

(declare-fun bm!124796 () Bool)

(assert (=> bm!124796 (= call!124799 call!124800)))

(declare-fun b!2033176 () Bool)

(assert (=> b!2033176 (= e!1284095 (Concat!9550 call!124800 (regex!3994 lt!763203)))))

(declare-fun b!2033177 () Bool)

(assert (=> b!2033177 (= e!1284091 (ite (= (head!4589 lt!763185) (c!328894 (regex!3994 lt!763203))) EmptyExpr!5419 EmptyLang!5419))))

(declare-fun b!2033178 () Bool)

(assert (=> b!2033178 (= e!1284093 (Union!5419 call!124798 call!124801))))

(declare-fun b!2033179 () Bool)

(assert (=> b!2033179 (= e!1284094 EmptyLang!5419)))

(assert (= (and d!622468 c!329243) b!2033179))

(assert (= (and d!622468 (not c!329243)) b!2033170))

(assert (= (and b!2033170 c!329244) b!2033177))

(assert (= (and b!2033170 (not c!329244)) b!2033172))

(assert (= (and b!2033172 c!329245) b!2033178))

(assert (= (and b!2033172 (not c!329245)) b!2033174))

(assert (= (and b!2033174 c!329247) b!2033176))

(assert (= (and b!2033174 (not c!329247)) b!2033175))

(assert (= (and b!2033175 c!329246) b!2033171))

(assert (= (and b!2033175 (not c!329246)) b!2033173))

(assert (= (or b!2033171 b!2033173) bm!124796))

(assert (= (or b!2033176 bm!124796) bm!124793))

(assert (= (or b!2033178 bm!124793) bm!124794))

(assert (= (or b!2033178 b!2033171) bm!124795))

(declare-fun m!2475473 () Bool)

(assert (=> d!622468 m!2475473))

(assert (=> d!622468 m!2472889))

(assert (=> bm!124794 m!2472885))

(declare-fun m!2475477 () Bool)

(assert (=> bm!124794 m!2475477))

(assert (=> bm!124795 m!2472885))

(declare-fun m!2475479 () Bool)

(assert (=> bm!124795 m!2475479))

(declare-fun m!2475481 () Bool)

(assert (=> b!2033175 m!2475481))

(assert (=> b!2031686 d!622468))

(assert (=> b!2031686 d!622304))

(declare-fun d!622472 () Bool)

(assert (=> d!622472 (= (tail!3064 lt!763185) (t!190662 lt!763185))))

(assert (=> b!2031686 d!622472))

(declare-fun b!2033184 () Bool)

(declare-fun e!1284098 () Bool)

(declare-fun lt!764049 () List!22303)

(assert (=> b!2033184 (= e!1284098 (or (not (= (ite c!328959 lt!763343 call!124718) Nil!22221)) (= lt!764049 e!1283336)))))

(declare-fun b!2033183 () Bool)

(declare-fun res!891612 () Bool)

(assert (=> b!2033183 (=> (not res!891612) (not e!1284098))))

(assert (=> b!2033183 (= res!891612 (= (size!17366 lt!764049) (+ (size!17366 e!1283336) (size!17366 (ite c!328959 lt!763343 call!124718)))))))

(declare-fun b!2033181 () Bool)

(declare-fun e!1284097 () List!22303)

(assert (=> b!2033181 (= e!1284097 (ite c!328959 lt!763343 call!124718))))

(declare-fun b!2033182 () Bool)

(assert (=> b!2033182 (= e!1284097 (Cons!22221 (h!27622 e!1283336) (++!6013 (t!190662 e!1283336) (ite c!328959 lt!763343 call!124718))))))

(declare-fun d!622474 () Bool)

(assert (=> d!622474 e!1284098))

(declare-fun res!891611 () Bool)

(assert (=> d!622474 (=> (not res!891611) (not e!1284098))))

(assert (=> d!622474 (= res!891611 (= (content!3285 lt!764049) ((_ map or) (content!3285 e!1283336) (content!3285 (ite c!328959 lt!763343 call!124718)))))))

(assert (=> d!622474 (= lt!764049 e!1284097)))

(declare-fun c!329248 () Bool)

(assert (=> d!622474 (= c!329248 ((_ is Nil!22221) e!1283336))))

(assert (=> d!622474 (= (++!6013 e!1283336 (ite c!328959 lt!763343 call!124718)) lt!764049)))

(assert (= (and d!622474 c!329248) b!2033181))

(assert (= (and d!622474 (not c!329248)) b!2033182))

(assert (= (and d!622474 res!891611) b!2033183))

(assert (= (and b!2033183 res!891612) b!2033184))

(declare-fun m!2475489 () Bool)

(assert (=> b!2033183 m!2475489))

(declare-fun m!2475491 () Bool)

(assert (=> b!2033183 m!2475491))

(declare-fun m!2475493 () Bool)

(assert (=> b!2033183 m!2475493))

(declare-fun m!2475495 () Bool)

(assert (=> b!2033182 m!2475495))

(declare-fun m!2475497 () Bool)

(assert (=> d!622474 m!2475497))

(declare-fun m!2475499 () Bool)

(assert (=> d!622474 m!2475499))

(declare-fun m!2475501 () Bool)

(assert (=> d!622474 m!2475501))

(assert (=> bm!124713 d!622474))

(declare-fun d!622478 () Bool)

(declare-fun c!329249 () Bool)

(assert (=> d!622478 (= c!329249 ((_ is Node!7434) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))))

(declare-fun e!1284100 () Bool)

(assert (=> d!622478 (= (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))) e!1284100)))

(declare-fun b!2033187 () Bool)

(assert (=> b!2033187 (= e!1284100 (inv!29415 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))))

(declare-fun b!2033188 () Bool)

(declare-fun e!1284101 () Bool)

(assert (=> b!2033188 (= e!1284100 e!1284101)))

(declare-fun res!891615 () Bool)

(assert (=> b!2033188 (= res!891615 (not ((_ is Leaf!10894) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))))))))

(assert (=> b!2033188 (=> res!891615 e!1284101)))

(declare-fun b!2033189 () Bool)

(assert (=> b!2033189 (= e!1284101 (inv!29416 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))))

(assert (= (and d!622478 c!329249) b!2033187))

(assert (= (and d!622478 (not c!329249)) b!2033188))

(assert (= (and b!2033188 (not res!891615)) b!2033189))

(declare-fun m!2475503 () Bool)

(assert (=> b!2033187 m!2475503))

(declare-fun m!2475505 () Bool)

(assert (=> b!2033189 m!2475505))

(assert (=> b!2031811 d!622478))

(declare-fun d!622480 () Bool)

(assert (=> d!622480 (= (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))) (list!9081 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))))))

(declare-fun bs!421191 () Bool)

(assert (= bs!421191 d!622480))

(declare-fun m!2475513 () Bool)

(assert (=> bs!421191 m!2475513))

(assert (=> b!2031721 d!622480))

(declare-fun b!2033193 () Bool)

(declare-fun e!1284103 () Bool)

(declare-fun lt!764050 () List!22303)

(assert (=> b!2033193 (= e!1284103 (or (not (= (_2!11926 (get!7060 lt!763244)) Nil!22221)) (= lt!764050 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))))))))

(declare-fun b!2033192 () Bool)

(declare-fun res!891617 () Bool)

(assert (=> b!2033192 (=> (not res!891617) (not e!1284103))))

(assert (=> b!2033192 (= res!891617 (= (size!17366 lt!764050) (+ (size!17366 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))) (size!17366 (_2!11926 (get!7060 lt!763244))))))))

(declare-fun b!2033190 () Bool)

(declare-fun e!1284102 () List!22303)

(assert (=> b!2033190 (= e!1284102 (_2!11926 (get!7060 lt!763244)))))

(declare-fun b!2033191 () Bool)

(assert (=> b!2033191 (= e!1284102 (Cons!22221 (h!27622 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))) (++!6013 (t!190662 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))) (_2!11926 (get!7060 lt!763244)))))))

(declare-fun d!622484 () Bool)

(assert (=> d!622484 e!1284103))

(declare-fun res!891616 () Bool)

(assert (=> d!622484 (=> (not res!891616) (not e!1284103))))

(assert (=> d!622484 (= res!891616 (= (content!3285 lt!764050) ((_ map or) (content!3285 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))) (content!3285 (_2!11926 (get!7060 lt!763244))))))))

(assert (=> d!622484 (= lt!764050 e!1284102)))

(declare-fun c!329250 () Bool)

(assert (=> d!622484 (= c!329250 ((_ is Nil!22221) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))))))

(assert (=> d!622484 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))) (_2!11926 (get!7060 lt!763244))) lt!764050)))

(assert (= (and d!622484 c!329250) b!2033190))

(assert (= (and d!622484 (not c!329250)) b!2033191))

(assert (= (and d!622484 res!891616) b!2033192))

(assert (= (and b!2033192 res!891617) b!2033193))

(declare-fun m!2475515 () Bool)

(assert (=> b!2033192 m!2475515))

(assert (=> b!2033192 m!2472973))

(declare-fun m!2475517 () Bool)

(assert (=> b!2033192 m!2475517))

(assert (=> b!2033192 m!2472977))

(declare-fun m!2475519 () Bool)

(assert (=> b!2033191 m!2475519))

(declare-fun m!2475521 () Bool)

(assert (=> d!622484 m!2475521))

(assert (=> d!622484 m!2472973))

(declare-fun m!2475523 () Bool)

(assert (=> d!622484 m!2475523))

(declare-fun m!2475525 () Bool)

(assert (=> d!622484 m!2475525))

(assert (=> b!2031769 d!622484))

(assert (=> b!2031769 d!622316))

(assert (=> b!2031769 d!622318))

(assert (=> b!2031769 d!622320))

(declare-fun d!622486 () Bool)

(declare-fun lt!764054 () Token!7540)

(assert (=> d!622486 (= lt!764054 (apply!5859 (list!9080 (_1!11925 lt!763223)) 0))))

(declare-fun apply!5861 (Conc!7435 Int) Token!7540)

(assert (=> d!622486 (= lt!764054 (apply!5861 (c!328895 (_1!11925 lt!763223)) 0))))

(declare-fun e!1284113 () Bool)

(assert (=> d!622486 e!1284113))

(declare-fun res!891624 () Bool)

(assert (=> d!622486 (=> (not res!891624) (not e!1284113))))

(assert (=> d!622486 (= res!891624 (<= 0 0))))

(assert (=> d!622486 (= (apply!5856 (_1!11925 lt!763223) 0) lt!764054)))

(declare-fun b!2033204 () Bool)

(assert (=> b!2033204 (= e!1284113 (< 0 (size!17365 (_1!11925 lt!763223))))))

(assert (= (and d!622486 res!891624) b!2033204))

(declare-fun m!2475539 () Bool)

(assert (=> d!622486 m!2475539))

(assert (=> d!622486 m!2475539))

(declare-fun m!2475541 () Bool)

(assert (=> d!622486 m!2475541))

(declare-fun m!2475543 () Bool)

(assert (=> d!622486 m!2475543))

(assert (=> b!2033204 m!2472865))

(assert (=> b!2031647 d!622486))

(declare-fun d!622494 () Bool)

(assert (=> d!622494 (= (isEmpty!13880 (originalCharacters!4801 separatorToken!354)) ((_ is Nil!22221) (originalCharacters!4801 separatorToken!354)))))

(assert (=> d!621758 d!622494))

(declare-fun d!622496 () Bool)

(assert (=> d!622496 (= (isEmpty!13882 lt!763244) (not ((_ is Some!4673) lt!763244)))))

(assert (=> d!621774 d!622496))

(declare-fun b!2033207 () Bool)

(declare-fun e!1284115 () Bool)

(assert (=> b!2033207 (= e!1284115 (isPrefix!1987 (tail!3064 lt!763202) (tail!3064 lt!763202)))))

(declare-fun d!622498 () Bool)

(declare-fun e!1284114 () Bool)

(assert (=> d!622498 e!1284114))

(declare-fun res!891628 () Bool)

(assert (=> d!622498 (=> res!891628 e!1284114)))

(declare-fun lt!764055 () Bool)

(assert (=> d!622498 (= res!891628 (not lt!764055))))

(declare-fun e!1284116 () Bool)

(assert (=> d!622498 (= lt!764055 e!1284116)))

(declare-fun res!891626 () Bool)

(assert (=> d!622498 (=> res!891626 e!1284116)))

(assert (=> d!622498 (= res!891626 ((_ is Nil!22221) lt!763202))))

(assert (=> d!622498 (= (isPrefix!1987 lt!763202 lt!763202) lt!764055)))

(declare-fun b!2033205 () Bool)

(assert (=> b!2033205 (= e!1284116 e!1284115)))

(declare-fun res!891625 () Bool)

(assert (=> b!2033205 (=> (not res!891625) (not e!1284115))))

(assert (=> b!2033205 (= res!891625 (not ((_ is Nil!22221) lt!763202)))))

(declare-fun b!2033208 () Bool)

(assert (=> b!2033208 (= e!1284114 (>= (size!17366 lt!763202) (size!17366 lt!763202)))))

(declare-fun b!2033206 () Bool)

(declare-fun res!891627 () Bool)

(assert (=> b!2033206 (=> (not res!891627) (not e!1284115))))

(assert (=> b!2033206 (= res!891627 (= (head!4589 lt!763202) (head!4589 lt!763202)))))

(assert (= (and d!622498 (not res!891626)) b!2033205))

(assert (= (and b!2033205 res!891625) b!2033206))

(assert (= (and b!2033206 res!891627) b!2033207))

(assert (= (and d!622498 (not res!891628)) b!2033208))

(assert (=> b!2033207 m!2472939))

(assert (=> b!2033207 m!2472939))

(assert (=> b!2033207 m!2472939))

(assert (=> b!2033207 m!2472939))

(declare-fun m!2475545 () Bool)

(assert (=> b!2033207 m!2475545))

(assert (=> b!2033208 m!2472979))

(assert (=> b!2033208 m!2472979))

(assert (=> b!2033206 m!2472943))

(assert (=> b!2033206 m!2472943))

(assert (=> d!621774 d!622498))

(declare-fun d!622500 () Bool)

(assert (=> d!622500 (isPrefix!1987 lt!763202 lt!763202)))

(declare-fun lt!764056 () Unit!36902)

(assert (=> d!622500 (= lt!764056 (choose!12399 lt!763202 lt!763202))))

(assert (=> d!622500 (= (lemmaIsPrefixRefl!1305 lt!763202 lt!763202) lt!764056)))

(declare-fun bs!421194 () Bool)

(assert (= bs!421194 d!622500))

(assert (=> bs!421194 m!2472987))

(declare-fun m!2475547 () Bool)

(assert (=> bs!421194 m!2475547))

(assert (=> d!621774 d!622500))

(assert (=> d!621774 d!622328))

(declare-fun d!622502 () Bool)

(assert (=> d!622502 (= (isEmpty!13881 lt!763361) (not ((_ is Some!4672) lt!763361)))))

(assert (=> d!621820 d!622502))

(assert (=> d!621820 d!621912))

(assert (=> b!2032189 d!622354))

(assert (=> b!2032189 d!622360))

(declare-fun d!622504 () Bool)

(assert (=> d!622504 (= (isEmpty!13880 (tail!3064 lt!763185)) ((_ is Nil!22221) (tail!3064 lt!763185)))))

(assert (=> b!2031690 d!622504))

(assert (=> b!2031690 d!622472))

(declare-fun d!622506 () Bool)

(declare-fun nullableFct!384 (Regex!5419) Bool)

(assert (=> d!622506 (= (nullable!1655 (regex!3994 lt!763191)) (nullableFct!384 (regex!3994 lt!763191)))))

(declare-fun bs!421195 () Bool)

(assert (= bs!421195 d!622506))

(declare-fun m!2475553 () Bool)

(assert (=> bs!421195 m!2475553))

(assert (=> b!2031726 d!622506))

(declare-fun d!622510 () Bool)

(declare-fun lt!764057 () Bool)

(assert (=> d!622510 (= lt!764057 (select (content!3287 rules!3198) (get!7059 lt!763364)))))

(declare-fun e!1284120 () Bool)

(assert (=> d!622510 (= lt!764057 e!1284120)))

(declare-fun res!891632 () Bool)

(assert (=> d!622510 (=> (not res!891632) (not e!1284120))))

(assert (=> d!622510 (= res!891632 ((_ is Cons!22222) rules!3198))))

(assert (=> d!622510 (= (contains!4106 rules!3198 (get!7059 lt!763364)) lt!764057)))

(declare-fun b!2033213 () Bool)

(declare-fun e!1284121 () Bool)

(assert (=> b!2033213 (= e!1284120 e!1284121)))

(declare-fun res!891631 () Bool)

(assert (=> b!2033213 (=> res!891631 e!1284121)))

(assert (=> b!2033213 (= res!891631 (= (h!27623 rules!3198) (get!7059 lt!763364)))))

(declare-fun b!2033214 () Bool)

(assert (=> b!2033214 (= e!1284121 (contains!4106 (t!190663 rules!3198) (get!7059 lt!763364)))))

(assert (= (and d!622510 res!891632) b!2033213))

(assert (= (and b!2033213 (not res!891631)) b!2033214))

(assert (=> d!622510 m!2474271))

(assert (=> d!622510 m!2473253))

(declare-fun m!2475555 () Bool)

(assert (=> d!622510 m!2475555))

(assert (=> b!2033214 m!2473253))

(declare-fun m!2475557 () Bool)

(assert (=> b!2033214 m!2475557))

(assert (=> b!2031949 d!622510))

(declare-fun d!622512 () Bool)

(assert (=> d!622512 (= (get!7059 lt!763364) (v!27005 lt!763364))))

(assert (=> b!2031949 d!622512))

(assert (=> b!2031831 d!622104))

(declare-fun d!622514 () Bool)

(assert (=> d!622514 (= (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763307))))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763307))))))))

(declare-fun b_lambda!68563 () Bool)

(assert (=> (not b_lambda!68563) (not d!622514)))

(declare-fun t!190945 () Bool)

(declare-fun tb!128605 () Bool)

(assert (=> (and b!2032252 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190945) tb!128605))

(declare-fun result!153796 () Bool)

(assert (=> tb!128605 (= result!153796 (inv!21 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763307)))))))))

(declare-fun m!2475561 () Bool)

(assert (=> tb!128605 m!2475561))

(assert (=> d!622514 t!190945))

(declare-fun b_and!162257 () Bool)

(assert (= b_and!162217 (and (=> t!190945 result!153796) b_and!162257)))

(declare-fun t!190947 () Bool)

(declare-fun tb!128607 () Bool)

(assert (=> (and b!2031523 (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190947) tb!128607))

(declare-fun result!153798 () Bool)

(assert (= result!153798 result!153796))

(assert (=> d!622514 t!190947))

(declare-fun b_and!162259 () Bool)

(assert (= b_and!162225 (and (=> t!190947 result!153798) b_and!162259)))

(declare-fun t!190949 () Bool)

(declare-fun tb!128609 () Bool)

(assert (=> (and b!2031531 (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190949) tb!128609))

(declare-fun result!153800 () Bool)

(assert (= result!153800 result!153796))

(assert (=> d!622514 t!190949))

(declare-fun b_and!162261 () Bool)

(assert (= b_and!162223 (and (=> t!190949 result!153800) b_and!162261)))

(declare-fun tb!128611 () Bool)

(declare-fun t!190951 () Bool)

(assert (=> (and b!2032233 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190951) tb!128611))

(declare-fun result!153802 () Bool)

(assert (= result!153802 result!153796))

(assert (=> d!622514 t!190951))

(declare-fun b_and!162263 () Bool)

(assert (= b_and!162221 (and (=> t!190951 result!153802) b_and!162263)))

(declare-fun tb!128613 () Bool)

(declare-fun t!190953 () Bool)

(assert (=> (and b!2031513 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!190953) tb!128613))

(declare-fun result!153804 () Bool)

(assert (= result!153804 result!153796))

(assert (=> d!622514 t!190953))

(declare-fun b_and!162265 () Bool)

(assert (= b_and!162219 (and (=> t!190953 result!153804) b_and!162265)))

(assert (=> d!622514 m!2473127))

(declare-fun m!2475573 () Bool)

(assert (=> d!622514 m!2475573))

(assert (=> b!2031831 d!622514))

(declare-fun d!622522 () Bool)

(assert (=> d!622522 (= (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!763307)))) (fromListB!1284 (originalCharacters!4801 (_1!11926 (get!7060 lt!763307)))))))

(declare-fun bs!421198 () Bool)

(assert (= bs!421198 d!622522))

(declare-fun m!2475581 () Bool)

(assert (=> bs!421198 m!2475581))

(assert (=> b!2031831 d!622522))

(declare-fun d!622526 () Bool)

(assert (=> d!622526 (= (isEmpty!13881 lt!763195) (not ((_ is Some!4672) lt!763195)))))

(assert (=> d!621770 d!622526))

(declare-fun bs!421200 () Bool)

(declare-fun d!622528 () Bool)

(assert (= bs!421200 (and d!622528 d!621812)))

(declare-fun lambda!76602 () Int)

(assert (=> bs!421200 (= lambda!76602 lambda!76563)))

(declare-fun bs!421201 () Bool)

(assert (= bs!421201 (and d!622528 d!622394)))

(assert (=> bs!421201 (= (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (= lambda!76602 lambda!76600))))

(assert (=> d!622528 true))

(assert (=> d!622528 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (dynLambda!11072 order!14251 lambda!76602))))

(assert (=> d!622528 (= (equivClasses!1538 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (Forall2!647 lambda!76602))))

(declare-fun bs!421202 () Bool)

(assert (= bs!421202 d!622528))

(declare-fun m!2475585 () Bool)

(assert (=> bs!421202 m!2475585))

(assert (=> b!2031631 d!622528))

(declare-fun d!622532 () Bool)

(assert (=> d!622532 (= (isDefined!3960 lt!763307) (not (isEmpty!13882 lt!763307)))))

(declare-fun bs!421203 () Bool)

(assert (= bs!421203 d!622532))

(assert (=> bs!421203 m!2473121))

(assert (=> b!2031836 d!622532))

(assert (=> b!2031946 d!622346))

(assert (=> b!2031946 d!622348))

(declare-fun b!2033228 () Bool)

(declare-fun e!1284135 () Bool)

(declare-fun lt!764059 () Option!4673)

(assert (=> b!2033228 (= e!1284135 (= (tag!4482 (get!7059 lt!764059)) (tag!4482 (rule!6229 separatorToken!354))))))

(declare-fun b!2033229 () Bool)

(declare-fun e!1284132 () Option!4673)

(declare-fun e!1284134 () Option!4673)

(assert (=> b!2033229 (= e!1284132 e!1284134)))

(declare-fun c!329258 () Bool)

(assert (=> b!2033229 (= c!329258 (and ((_ is Cons!22222) (t!190663 rules!3198)) (not (= (tag!4482 (h!27623 (t!190663 rules!3198))) (tag!4482 (rule!6229 separatorToken!354))))))))

(declare-fun b!2033230 () Bool)

(declare-fun e!1284133 () Bool)

(assert (=> b!2033230 (= e!1284133 e!1284135)))

(declare-fun res!891639 () Bool)

(assert (=> b!2033230 (=> (not res!891639) (not e!1284135))))

(assert (=> b!2033230 (= res!891639 (contains!4106 (t!190663 rules!3198) (get!7059 lt!764059)))))

(declare-fun b!2033231 () Bool)

(assert (=> b!2033231 (= e!1284132 (Some!4672 (h!27623 (t!190663 rules!3198))))))

(declare-fun b!2033232 () Bool)

(assert (=> b!2033232 (= e!1284134 None!4672)))

(declare-fun b!2033233 () Bool)

(declare-fun lt!764060 () Unit!36902)

(declare-fun lt!764058 () Unit!36902)

(assert (=> b!2033233 (= lt!764060 lt!764058)))

(assert (=> b!2033233 (rulesInvariant!3214 thiss!23328 (t!190663 (t!190663 rules!3198)))))

(assert (=> b!2033233 (= lt!764058 (lemmaInvariantOnRulesThenOnTail!312 thiss!23328 (h!27623 (t!190663 rules!3198)) (t!190663 (t!190663 rules!3198))))))

(assert (=> b!2033233 (= e!1284134 (getRuleFromTag!809 thiss!23328 (t!190663 (t!190663 rules!3198)) (tag!4482 (rule!6229 separatorToken!354))))))

(declare-fun d!622534 () Bool)

(assert (=> d!622534 e!1284133))

(declare-fun res!891638 () Bool)

(assert (=> d!622534 (=> res!891638 e!1284133)))

(assert (=> d!622534 (= res!891638 (isEmpty!13881 lt!764059))))

(assert (=> d!622534 (= lt!764059 e!1284132)))

(declare-fun c!329259 () Bool)

(assert (=> d!622534 (= c!329259 (and ((_ is Cons!22222) (t!190663 rules!3198)) (= (tag!4482 (h!27623 (t!190663 rules!3198))) (tag!4482 (rule!6229 separatorToken!354)))))))

(assert (=> d!622534 (rulesInvariant!3214 thiss!23328 (t!190663 rules!3198))))

(assert (=> d!622534 (= (getRuleFromTag!809 thiss!23328 (t!190663 rules!3198) (tag!4482 (rule!6229 separatorToken!354))) lt!764059)))

(assert (= (and d!622534 c!329259) b!2033231))

(assert (= (and d!622534 (not c!329259)) b!2033229))

(assert (= (and b!2033229 c!329258) b!2033233))

(assert (= (and b!2033229 (not c!329258)) b!2033232))

(assert (= (and d!622534 (not res!891638)) b!2033230))

(assert (= (and b!2033230 res!891639) b!2033228))

(declare-fun m!2475587 () Bool)

(assert (=> b!2033228 m!2475587))

(assert (=> b!2033230 m!2475587))

(assert (=> b!2033230 m!2475587))

(declare-fun m!2475589 () Bool)

(assert (=> b!2033230 m!2475589))

(assert (=> b!2033233 m!2474985))

(assert (=> b!2033233 m!2474987))

(declare-fun m!2475591 () Bool)

(assert (=> b!2033233 m!2475591))

(declare-fun m!2475593 () Bool)

(assert (=> d!622534 m!2475593))

(assert (=> d!622534 m!2473245))

(assert (=> b!2031946 d!622534))

(declare-fun bs!421204 () Bool)

(declare-fun d!622536 () Bool)

(assert (= bs!421204 (and d!622536 b!2031524)))

(declare-fun lambda!76603 () Int)

(assert (=> bs!421204 (not (= lambda!76603 lambda!76551))))

(declare-fun bs!421205 () Bool)

(assert (= bs!421205 (and d!622536 b!2031902)))

(assert (=> bs!421205 (= lambda!76603 lambda!76560)))

(declare-fun bs!421206 () Bool)

(assert (= bs!421206 (and d!622536 d!621910)))

(assert (=> bs!421206 (= lambda!76603 lambda!76575)))

(declare-fun b!2033238 () Bool)

(declare-fun e!1284140 () Bool)

(assert (=> b!2033238 (= e!1284140 true)))

(declare-fun b!2033237 () Bool)

(declare-fun e!1284139 () Bool)

(assert (=> b!2033237 (= e!1284139 e!1284140)))

(declare-fun b!2033236 () Bool)

(declare-fun e!1284138 () Bool)

(assert (=> b!2033236 (= e!1284138 e!1284139)))

(assert (=> d!622536 e!1284138))

(assert (= b!2033237 b!2033238))

(assert (= b!2033236 b!2033237))

(assert (= (and d!622536 ((_ is Cons!22222) rules!3198)) b!2033236))

(assert (=> b!2033238 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76603))))

(assert (=> b!2033238 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76603))))

(assert (=> d!622536 true))

(declare-fun lt!764061 () Bool)

(assert (=> d!622536 (= lt!764061 (forall!4728 (t!190664 tokens!598) lambda!76603))))

(declare-fun e!1284137 () Bool)

(assert (=> d!622536 (= lt!764061 e!1284137)))

(declare-fun res!891641 () Bool)

(assert (=> d!622536 (=> res!891641 e!1284137)))

(assert (=> d!622536 (= res!891641 (not ((_ is Cons!22223) (t!190664 tokens!598))))))

(assert (=> d!622536 (not (isEmpty!13873 rules!3198))))

(assert (=> d!622536 (= (rulesProduceEachTokenIndividuallyList!1338 thiss!23328 rules!3198 (t!190664 tokens!598)) lt!764061)))

(declare-fun b!2033234 () Bool)

(declare-fun e!1284136 () Bool)

(assert (=> b!2033234 (= e!1284137 e!1284136)))

(declare-fun res!891640 () Bool)

(assert (=> b!2033234 (=> (not res!891640) (not e!1284136))))

(assert (=> b!2033234 (= res!891640 (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 (h!27624 (t!190664 tokens!598))))))

(declare-fun b!2033235 () Bool)

(assert (=> b!2033235 (= e!1284136 (rulesProduceEachTokenIndividuallyList!1338 thiss!23328 rules!3198 (t!190664 (t!190664 tokens!598))))))

(assert (= (and d!622536 (not res!891641)) b!2033234))

(assert (= (and b!2033234 res!891640) b!2033235))

(declare-fun m!2475595 () Bool)

(assert (=> d!622536 m!2475595))

(assert (=> d!622536 m!2472761))

(declare-fun m!2475597 () Bool)

(assert (=> b!2033234 m!2475597))

(declare-fun m!2475599 () Bool)

(assert (=> b!2033235 m!2475599))

(assert (=> b!2032197 d!622536))

(declare-fun d!622538 () Bool)

(declare-fun lt!764078 () List!22303)

(assert (=> d!622538 (= lt!764078 (++!6013 (list!9077 (BalanceConc!14685 Empty!7434)) (printList!1126 thiss!23328 (dropList!822 lt!763188 0))))))

(declare-fun e!1284153 () List!22303)

(assert (=> d!622538 (= lt!764078 e!1284153)))

(declare-fun c!329265 () Bool)

(assert (=> d!622538 (= c!329265 ((_ is Cons!22223) (dropList!822 lt!763188 0)))))

(assert (=> d!622538 (= (printListTailRec!491 thiss!23328 (dropList!822 lt!763188 0) (list!9077 (BalanceConc!14685 Empty!7434))) lt!764078)))

(declare-fun b!2033257 () Bool)

(assert (=> b!2033257 (= e!1284153 (printListTailRec!491 thiss!23328 (t!190664 (dropList!822 lt!763188 0)) (++!6013 (list!9077 (BalanceConc!14685 Empty!7434)) (list!9077 (charsOf!2534 (h!27624 (dropList!822 lt!763188 0)))))))))

(declare-fun lt!764080 () List!22303)

(assert (=> b!2033257 (= lt!764080 (list!9077 (charsOf!2534 (h!27624 (dropList!822 lt!763188 0)))))))

(declare-fun lt!764077 () List!22303)

(assert (=> b!2033257 (= lt!764077 (printList!1126 thiss!23328 (t!190664 (dropList!822 lt!763188 0))))))

(declare-fun lt!764081 () Unit!36902)

(assert (=> b!2033257 (= lt!764081 (lemmaConcatAssociativity!1260 (list!9077 (BalanceConc!14685 Empty!7434)) lt!764080 lt!764077))))

(assert (=> b!2033257 (= (++!6013 (++!6013 (list!9077 (BalanceConc!14685 Empty!7434)) lt!764080) lt!764077) (++!6013 (list!9077 (BalanceConc!14685 Empty!7434)) (++!6013 lt!764080 lt!764077)))))

(declare-fun lt!764079 () Unit!36902)

(assert (=> b!2033257 (= lt!764079 lt!764081)))

(declare-fun b!2033258 () Bool)

(assert (=> b!2033258 (= e!1284153 (list!9077 (BalanceConc!14685 Empty!7434)))))

(assert (= (and d!622538 c!329265) b!2033257))

(assert (= (and d!622538 (not c!329265)) b!2033258))

(assert (=> d!622538 m!2473531))

(declare-fun m!2475637 () Bool)

(assert (=> d!622538 m!2475637))

(assert (=> d!622538 m!2473525))

(assert (=> d!622538 m!2475637))

(declare-fun m!2475639 () Bool)

(assert (=> d!622538 m!2475639))

(assert (=> b!2033257 m!2473525))

(declare-fun m!2475641 () Bool)

(assert (=> b!2033257 m!2475641))

(assert (=> b!2033257 m!2473525))

(declare-fun m!2475643 () Bool)

(assert (=> b!2033257 m!2475643))

(declare-fun m!2475645 () Bool)

(assert (=> b!2033257 m!2475645))

(declare-fun m!2475647 () Bool)

(assert (=> b!2033257 m!2475647))

(assert (=> b!2033257 m!2475645))

(declare-fun m!2475649 () Bool)

(assert (=> b!2033257 m!2475649))

(declare-fun m!2475651 () Bool)

(assert (=> b!2033257 m!2475651))

(assert (=> b!2033257 m!2473525))

(declare-fun m!2475653 () Bool)

(assert (=> b!2033257 m!2475653))

(declare-fun m!2475655 () Bool)

(assert (=> b!2033257 m!2475655))

(assert (=> b!2033257 m!2475641))

(declare-fun m!2475657 () Bool)

(assert (=> b!2033257 m!2475657))

(declare-fun m!2475659 () Bool)

(assert (=> b!2033257 m!2475659))

(assert (=> b!2033257 m!2475653))

(assert (=> b!2033257 m!2473525))

(assert (=> b!2033257 m!2475647))

(assert (=> b!2033257 m!2475649))

(assert (=> d!621880 d!622538))

(assert (=> d!621880 d!622434))

(declare-fun d!622560 () Bool)

(assert (=> d!622560 (= (list!9077 lt!763472) (list!9081 (c!328893 lt!763472)))))

(declare-fun bs!421213 () Bool)

(assert (= bs!421213 d!622560))

(declare-fun m!2475661 () Bool)

(assert (=> bs!421213 m!2475661))

(assert (=> d!621880 d!622560))

(declare-fun d!622562 () Bool)

(assert (=> d!622562 (= (dropList!822 lt!763188 0) (drop!1123 (list!9084 (c!328895 lt!763188)) 0))))

(declare-fun bs!421214 () Bool)

(assert (= bs!421214 d!622562))

(declare-fun m!2475663 () Bool)

(assert (=> bs!421214 m!2475663))

(assert (=> bs!421214 m!2475663))

(declare-fun m!2475665 () Bool)

(assert (=> bs!421214 m!2475665))

(assert (=> d!621880 d!622562))

(declare-fun d!622564 () Bool)

(assert (=> d!622564 (= (list!9077 (BalanceConc!14685 Empty!7434)) (list!9081 (c!328893 (BalanceConc!14685 Empty!7434))))))

(declare-fun bs!421215 () Bool)

(assert (= bs!421215 d!622564))

(declare-fun m!2475671 () Bool)

(assert (=> bs!421215 m!2475671))

(assert (=> d!621880 d!622564))

(declare-fun d!622566 () Bool)

(assert (=> d!622566 (= (isEmpty!13885 (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))) ((_ is Nil!22223) (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(assert (=> d!621834 d!622566))

(declare-fun d!622570 () Bool)

(assert (=> d!622570 (= (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202)))) (list!9084 (c!328895 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(declare-fun bs!421216 () Bool)

(assert (= bs!421216 d!622570))

(declare-fun m!2475693 () Bool)

(assert (=> bs!421216 m!2475693))

(assert (=> d!621834 d!622570))

(declare-fun d!622572 () Bool)

(declare-fun lt!764100 () Bool)

(assert (=> d!622572 (= lt!764100 (isEmpty!13885 (list!9084 (c!328895 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202)))))))))

(assert (=> d!622572 (= lt!764100 (= (size!17370 (c!328895 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))) 0))))

(assert (=> d!622572 (= (isEmpty!13886 (c!328895 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))) lt!764100)))

(declare-fun bs!421219 () Bool)

(assert (= bs!421219 d!622572))

(assert (=> bs!421219 m!2475693))

(assert (=> bs!421219 m!2475693))

(declare-fun m!2475701 () Bool)

(assert (=> bs!421219 m!2475701))

(declare-fun m!2475703 () Bool)

(assert (=> bs!421219 m!2475703))

(assert (=> d!621834 d!622572))

(declare-fun bs!421221 () Bool)

(declare-fun d!622578 () Bool)

(assert (= bs!421221 (and d!622578 d!621776)))

(declare-fun lambda!76604 () Int)

(assert (=> bs!421221 (= (and (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))))) (= lambda!76604 lambda!76557))))

(declare-fun bs!421222 () Bool)

(assert (= bs!421222 (and d!622578 d!622370)))

(assert (=> bs!421222 (= (and (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) (= (toValue!5671 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))))) (= lambda!76604 lambda!76597))))

(assert (=> d!622578 true))

(assert (=> d!622578 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11068 order!14245 lambda!76604))))

(assert (=> d!622578 true))

(assert (=> d!622578 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11068 order!14245 lambda!76604))))

(assert (=> d!622578 (= (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (Forall!1022 lambda!76604))))

(declare-fun bs!421223 () Bool)

(assert (= bs!421223 d!622578))

(declare-fun m!2475707 () Bool)

(assert (=> bs!421223 m!2475707))

(assert (=> d!621894 d!622578))

(declare-fun d!622582 () Bool)

(declare-fun e!1284157 () Bool)

(assert (=> d!622582 e!1284157))

(declare-fun res!891650 () Bool)

(assert (=> d!622582 (=> (not res!891650) (not e!1284157))))

(declare-fun lt!764101 () BalanceConc!14686)

(assert (=> d!622582 (= res!891650 (= (list!9080 lt!764101) (Cons!22223 separatorToken!354 Nil!22223)))))

(assert (=> d!622582 (= lt!764101 (singleton!886 separatorToken!354))))

(assert (=> d!622582 (= (singletonSeq!1970 separatorToken!354) lt!764101)))

(declare-fun b!2033265 () Bool)

(assert (=> b!2033265 (= e!1284157 (isBalanced!2319 (c!328895 lt!764101)))))

(assert (= (and d!622582 res!891650) b!2033265))

(declare-fun m!2475709 () Bool)

(assert (=> d!622582 m!2475709))

(declare-fun m!2475711 () Bool)

(assert (=> d!622582 m!2475711))

(declare-fun m!2475713 () Bool)

(assert (=> b!2033265 m!2475713))

(assert (=> d!621744 d!622582))

(declare-fun d!622584 () Bool)

(declare-fun lt!764102 () BalanceConc!14684)

(assert (=> d!622584 (= (list!9077 lt!764102) (printList!1126 thiss!23328 (list!9080 (singletonSeq!1970 separatorToken!354))))))

(assert (=> d!622584 (= lt!764102 (printTailRec!1075 thiss!23328 (singletonSeq!1970 separatorToken!354) 0 (BalanceConc!14685 Empty!7434)))))

(assert (=> d!622584 (= (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)) lt!764102)))

(declare-fun bs!421228 () Bool)

(assert (= bs!421228 d!622584))

(declare-fun m!2475717 () Bool)

(assert (=> bs!421228 m!2475717))

(assert (=> bs!421228 m!2472869))

(assert (=> bs!421228 m!2472871))

(assert (=> bs!421228 m!2472871))

(declare-fun m!2475719 () Bool)

(assert (=> bs!421228 m!2475719))

(assert (=> bs!421228 m!2472869))

(declare-fun m!2475721 () Bool)

(assert (=> bs!421228 m!2475721))

(assert (=> d!621744 d!622584))

(declare-fun d!622588 () Bool)

(assert (=> d!622588 (= (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354))))) (list!9084 (c!328895 (_1!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)))))))))

(declare-fun bs!421229 () Bool)

(assert (= bs!421229 d!622588))

(declare-fun m!2475723 () Bool)

(assert (=> bs!421229 m!2475723))

(assert (=> d!621744 d!622588))

(declare-fun d!622590 () Bool)

(assert (=> d!622590 (= (list!9080 (singletonSeq!1970 separatorToken!354)) (list!9084 (c!328895 (singletonSeq!1970 separatorToken!354))))))

(declare-fun bs!421230 () Bool)

(assert (= bs!421230 d!622590))

(declare-fun m!2475729 () Bool)

(assert (=> bs!421230 m!2475729))

(assert (=> d!621744 d!622590))

(declare-fun b!2033270 () Bool)

(declare-fun res!891654 () Bool)

(declare-fun e!1284163 () Bool)

(assert (=> b!2033270 (=> (not res!891654) (not e!1284163))))

(declare-fun lt!764104 () tuple2!20912)

(assert (=> b!2033270 (= res!891654 (= (list!9080 (_1!11925 lt!764104)) (_1!11928 (lexList!985 thiss!23328 rules!3198 (list!9077 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)))))))))

(declare-fun e!1284161 () Bool)

(declare-fun b!2033271 () Bool)

(assert (=> b!2033271 (= e!1284161 (= (_2!11925 lt!764104) (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354))))))

(declare-fun b!2033272 () Bool)

(declare-fun e!1284164 () Bool)

(assert (=> b!2033272 (= e!1284164 (not (isEmpty!13874 (_1!11925 lt!764104))))))

(declare-fun d!622594 () Bool)

(assert (=> d!622594 e!1284163))

(declare-fun res!891657 () Bool)

(assert (=> d!622594 (=> (not res!891657) (not e!1284163))))

(assert (=> d!622594 (= res!891657 e!1284161)))

(declare-fun c!329269 () Bool)

(assert (=> d!622594 (= c!329269 (> (size!17365 (_1!11925 lt!764104)) 0))))

(assert (=> d!622594 (= lt!764104 (lexTailRecV2!708 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)) (BalanceConc!14685 Empty!7434) (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)) (BalanceConc!14687 Empty!7435)))))

(assert (=> d!622594 (= (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354))) lt!764104)))

(declare-fun b!2033273 () Bool)

(assert (=> b!2033273 (= e!1284163 (= (list!9077 (_2!11925 lt!764104)) (_2!11928 (lexList!985 thiss!23328 rules!3198 (list!9077 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)))))))))

(declare-fun b!2033274 () Bool)

(assert (=> b!2033274 (= e!1284161 e!1284164)))

(declare-fun res!891656 () Bool)

(assert (=> b!2033274 (= res!891656 (< (size!17368 (_2!11925 lt!764104)) (size!17368 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)))))))

(assert (=> b!2033274 (=> (not res!891656) (not e!1284164))))

(assert (= (and d!622594 c!329269) b!2033274))

(assert (= (and d!622594 (not c!329269)) b!2033271))

(assert (= (and b!2033274 res!891656) b!2033272))

(assert (= (and d!622594 res!891657) b!2033270))

(assert (= (and b!2033270 res!891654) b!2033273))

(declare-fun m!2475735 () Bool)

(assert (=> b!2033274 m!2475735))

(assert (=> b!2033274 m!2472861))

(declare-fun m!2475737 () Bool)

(assert (=> b!2033274 m!2475737))

(declare-fun m!2475741 () Bool)

(assert (=> b!2033272 m!2475741))

(declare-fun m!2475745 () Bool)

(assert (=> b!2033270 m!2475745))

(assert (=> b!2033270 m!2472861))

(declare-fun m!2475747 () Bool)

(assert (=> b!2033270 m!2475747))

(assert (=> b!2033270 m!2475747))

(declare-fun m!2475749 () Bool)

(assert (=> b!2033270 m!2475749))

(declare-fun m!2475751 () Bool)

(assert (=> d!622594 m!2475751))

(assert (=> d!622594 m!2472861))

(assert (=> d!622594 m!2472861))

(declare-fun m!2475753 () Bool)

(assert (=> d!622594 m!2475753))

(declare-fun m!2475755 () Bool)

(assert (=> b!2033273 m!2475755))

(assert (=> b!2033273 m!2472861))

(assert (=> b!2033273 m!2475747))

(assert (=> b!2033273 m!2475747))

(assert (=> b!2033273 m!2475749))

(assert (=> d!621744 d!622594))

(declare-fun d!622598 () Bool)

(declare-fun lt!764106 () Int)

(assert (=> d!622598 (= lt!764106 (size!17369 (list!9080 (_1!11925 lt!763223))))))

(assert (=> d!622598 (= lt!764106 (size!17370 (c!328895 (_1!11925 lt!763223))))))

(assert (=> d!622598 (= (size!17365 (_1!11925 lt!763223)) lt!764106)))

(declare-fun bs!421231 () Bool)

(assert (= bs!421231 d!622598))

(assert (=> bs!421231 m!2475539))

(assert (=> bs!421231 m!2475539))

(declare-fun m!2475757 () Bool)

(assert (=> bs!421231 m!2475757))

(declare-fun m!2475759 () Bool)

(assert (=> bs!421231 m!2475759))

(assert (=> d!621744 d!622598))

(assert (=> d!621744 d!621718))

(declare-fun d!622600 () Bool)

(declare-fun res!891659 () Bool)

(declare-fun e!1284166 () Bool)

(assert (=> d!622600 (=> res!891659 e!1284166)))

(assert (=> d!622600 (= res!891659 ((_ is Nil!22223) (t!190664 tokens!598)))))

(assert (=> d!622600 (= (forall!4728 (t!190664 tokens!598) lambda!76551) e!1284166)))

(declare-fun b!2033276 () Bool)

(declare-fun e!1284167 () Bool)

(assert (=> b!2033276 (= e!1284166 e!1284167)))

(declare-fun res!891660 () Bool)

(assert (=> b!2033276 (=> (not res!891660) (not e!1284167))))

(assert (=> b!2033276 (= res!891660 (dynLambda!11063 lambda!76551 (h!27624 (t!190664 tokens!598))))))

(declare-fun b!2033277 () Bool)

(assert (=> b!2033277 (= e!1284167 (forall!4728 (t!190664 (t!190664 tokens!598)) lambda!76551))))

(assert (= (and d!622600 (not res!891659)) b!2033276))

(assert (= (and b!2033276 res!891660) b!2033277))

(declare-fun b_lambda!68569 () Bool)

(assert (=> (not b_lambda!68569) (not b!2033276)))

(declare-fun m!2475761 () Bool)

(assert (=> b!2033276 m!2475761))

(declare-fun m!2475763 () Bool)

(assert (=> b!2033277 m!2475763))

(assert (=> b!2031703 d!622600))

(declare-fun d!622602 () Bool)

(assert (=> d!622602 (= (isEmpty!13882 lt!763189) (not ((_ is Some!4673) lt!763189)))))

(assert (=> d!621772 d!622602))

(declare-fun b!2033287 () Bool)

(declare-fun e!1284179 () Bool)

(declare-fun lt!764107 () Bool)

(assert (=> b!2033287 (= e!1284179 (not lt!764107))))

(declare-fun b!2033288 () Bool)

(declare-fun e!1284182 () Bool)

(assert (=> b!2033288 (= e!1284182 e!1284179)))

(declare-fun c!329271 () Bool)

(assert (=> b!2033288 (= c!329271 ((_ is EmptyLang!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))))))))

(declare-fun b!2033289 () Bool)

(declare-fun e!1284180 () Bool)

(assert (=> b!2033289 (= e!1284180 (nullable!1655 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))))))))

(declare-fun b!2033291 () Bool)

(declare-fun res!891666 () Bool)

(declare-fun e!1284181 () Bool)

(assert (=> b!2033291 (=> res!891666 e!1284181)))

(declare-fun e!1284177 () Bool)

(assert (=> b!2033291 (= res!891666 e!1284177)))

(declare-fun res!891662 () Bool)

(assert (=> b!2033291 (=> (not res!891662) (not e!1284177))))

(assert (=> b!2033291 (= res!891662 lt!764107)))

(declare-fun bm!124803 () Bool)

(declare-fun call!124808 () Bool)

(assert (=> bm!124803 (= call!124808 (isEmpty!13880 (list!9077 (charsOf!2534 (h!27624 tokens!598)))))))

(declare-fun b!2033292 () Bool)

(declare-fun res!891665 () Bool)

(declare-fun e!1284178 () Bool)

(assert (=> b!2033292 (=> res!891665 e!1284178)))

(assert (=> b!2033292 (= res!891665 (not (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 (h!27624 tokens!598)))))))))

(declare-fun b!2033293 () Bool)

(declare-fun e!1284176 () Bool)

(assert (=> b!2033293 (= e!1284181 e!1284176)))

(declare-fun res!891661 () Bool)

(assert (=> b!2033293 (=> (not res!891661) (not e!1284176))))

(assert (=> b!2033293 (= res!891661 (not lt!764107))))

(declare-fun b!2033294 () Bool)

(assert (=> b!2033294 (= e!1284176 e!1284178)))

(declare-fun res!891667 () Bool)

(assert (=> b!2033294 (=> res!891667 e!1284178)))

(assert (=> b!2033294 (= res!891667 call!124808)))

(declare-fun d!622604 () Bool)

(assert (=> d!622604 e!1284182))

(declare-fun c!329270 () Bool)

(assert (=> d!622604 (= c!329270 ((_ is EmptyExpr!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))))))))

(assert (=> d!622604 (= lt!764107 e!1284180)))

(declare-fun c!329272 () Bool)

(assert (=> d!622604 (= c!329272 (isEmpty!13880 (list!9077 (charsOf!2534 (h!27624 tokens!598)))))))

(assert (=> d!622604 (validRegex!2181 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))

(assert (=> d!622604 (= (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))) (list!9077 (charsOf!2534 (h!27624 tokens!598)))) lt!764107)))

(declare-fun b!2033290 () Bool)

(assert (=> b!2033290 (= e!1284177 (= (head!4589 (list!9077 (charsOf!2534 (h!27624 tokens!598)))) (c!328894 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))))

(declare-fun b!2033295 () Bool)

(assert (=> b!2033295 (= e!1284180 (matchR!2685 (derivativeStep!1414 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))) (head!4589 (list!9077 (charsOf!2534 (h!27624 tokens!598))))) (tail!3064 (list!9077 (charsOf!2534 (h!27624 tokens!598))))))))

(declare-fun b!2033296 () Bool)

(assert (=> b!2033296 (= e!1284178 (not (= (head!4589 (list!9077 (charsOf!2534 (h!27624 tokens!598)))) (c!328894 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))))))))))

(declare-fun b!2033297 () Bool)

(declare-fun res!891668 () Bool)

(assert (=> b!2033297 (=> (not res!891668) (not e!1284177))))

(assert (=> b!2033297 (= res!891668 (not call!124808))))

(declare-fun b!2033298 () Bool)

(declare-fun res!891664 () Bool)

(assert (=> b!2033298 (=> res!891664 e!1284181)))

(assert (=> b!2033298 (= res!891664 (not ((_ is ElementMatch!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598)))))))))))

(assert (=> b!2033298 (= e!1284179 e!1284181)))

(declare-fun b!2033299 () Bool)

(declare-fun res!891663 () Bool)

(assert (=> b!2033299 (=> (not res!891663) (not e!1284177))))

(assert (=> b!2033299 (= res!891663 (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 (h!27624 tokens!598))))))))

(declare-fun b!2033300 () Bool)

(assert (=> b!2033300 (= e!1284182 (= lt!764107 call!124808))))

(assert (= (and d!622604 c!329272) b!2033289))

(assert (= (and d!622604 (not c!329272)) b!2033295))

(assert (= (and d!622604 c!329270) b!2033300))

(assert (= (and d!622604 (not c!329270)) b!2033288))

(assert (= (and b!2033288 c!329271) b!2033287))

(assert (= (and b!2033288 (not c!329271)) b!2033298))

(assert (= (and b!2033298 (not res!891664)) b!2033291))

(assert (= (and b!2033291 res!891662) b!2033297))

(assert (= (and b!2033297 res!891668) b!2033299))

(assert (= (and b!2033299 res!891663) b!2033290))

(assert (= (and b!2033291 (not res!891666)) b!2033293))

(assert (= (and b!2033293 res!891661) b!2033294))

(assert (= (and b!2033294 (not res!891667)) b!2033292))

(assert (= (and b!2033292 (not res!891665)) b!2033296))

(assert (= (or b!2033300 b!2033294 b!2033297) bm!124803))

(declare-fun m!2475765 () Bool)

(assert (=> b!2033289 m!2475765))

(assert (=> b!2033299 m!2472957))

(declare-fun m!2475767 () Bool)

(assert (=> b!2033299 m!2475767))

(assert (=> b!2033299 m!2475767))

(declare-fun m!2475769 () Bool)

(assert (=> b!2033299 m!2475769))

(assert (=> b!2033290 m!2472957))

(declare-fun m!2475771 () Bool)

(assert (=> b!2033290 m!2475771))

(assert (=> b!2033292 m!2472957))

(assert (=> b!2033292 m!2475767))

(assert (=> b!2033292 m!2475767))

(assert (=> b!2033292 m!2475769))

(assert (=> bm!124803 m!2472957))

(declare-fun m!2475773 () Bool)

(assert (=> bm!124803 m!2475773))

(assert (=> d!622604 m!2472957))

(assert (=> d!622604 m!2475773))

(declare-fun m!2475775 () Bool)

(assert (=> d!622604 m!2475775))

(assert (=> b!2033296 m!2472957))

(assert (=> b!2033296 m!2475771))

(assert (=> b!2033295 m!2472957))

(assert (=> b!2033295 m!2475771))

(assert (=> b!2033295 m!2475771))

(declare-fun m!2475777 () Bool)

(assert (=> b!2033295 m!2475777))

(assert (=> b!2033295 m!2472957))

(assert (=> b!2033295 m!2475767))

(assert (=> b!2033295 m!2475777))

(assert (=> b!2033295 m!2475767))

(declare-fun m!2475779 () Bool)

(assert (=> b!2033295 m!2475779))

(assert (=> b!2031742 d!622604))

(declare-fun d!622606 () Bool)

(assert (=> d!622606 (= (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))) (v!27005 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 (h!27624 tokens!598))))))))

(assert (=> b!2031742 d!622606))

(assert (=> b!2031742 d!621828))

(declare-fun d!622608 () Bool)

(assert (=> d!622608 (= (list!9077 (charsOf!2534 (h!27624 tokens!598))) (list!9081 (c!328893 (charsOf!2534 (h!27624 tokens!598)))))))

(declare-fun bs!421232 () Bool)

(assert (= bs!421232 d!622608))

(declare-fun m!2475781 () Bool)

(assert (=> bs!421232 m!2475781))

(assert (=> b!2031742 d!622608))

(assert (=> b!2031742 d!621822))

(declare-fun d!622610 () Bool)

(declare-fun lt!764110 () Int)

(assert (=> d!622610 (= lt!764110 (size!17366 (list!9077 (_2!11925 lt!763422))))))

(declare-fun size!17374 (Conc!7434) Int)

(assert (=> d!622610 (= lt!764110 (size!17374 (c!328893 (_2!11925 lt!763422))))))

(assert (=> d!622610 (= (size!17368 (_2!11925 lt!763422)) lt!764110)))

(declare-fun bs!421233 () Bool)

(assert (= bs!421233 d!622610))

(assert (=> bs!421233 m!2473457))

(assert (=> bs!421233 m!2473457))

(declare-fun m!2475791 () Bool)

(assert (=> bs!421233 m!2475791))

(declare-fun m!2475793 () Bool)

(assert (=> bs!421233 m!2475793))

(assert (=> b!2032071 d!622610))

(declare-fun d!622612 () Bool)

(declare-fun lt!764111 () Int)

(assert (=> d!622612 (= lt!764111 (size!17366 (list!9077 (seqFromList!2848 lt!763202))))))

(assert (=> d!622612 (= lt!764111 (size!17374 (c!328893 (seqFromList!2848 lt!763202))))))

(assert (=> d!622612 (= (size!17368 (seqFromList!2848 lt!763202)) lt!764111)))

(declare-fun bs!421234 () Bool)

(assert (= bs!421234 d!622612))

(assert (=> bs!421234 m!2472775))

(assert (=> bs!421234 m!2473449))

(assert (=> bs!421234 m!2473449))

(assert (=> bs!421234 m!2475295))

(declare-fun m!2475795 () Bool)

(assert (=> bs!421234 m!2475795))

(assert (=> b!2032071 d!622612))

(declare-fun bs!421235 () Bool)

(declare-fun d!622614 () Bool)

(assert (= bs!421235 (and d!622614 d!622328)))

(declare-fun lambda!76608 () Int)

(assert (=> bs!421235 (= lambda!76608 lambda!76594)))

(assert (=> d!622614 true))

(declare-fun lt!764114 () Bool)

(assert (=> d!622614 (= lt!764114 (rulesValidInductive!1386 thiss!23328 rules!3198))))

(assert (=> d!622614 (= lt!764114 (forall!4730 rules!3198 lambda!76608))))

(assert (=> d!622614 (= (rulesValid!1498 thiss!23328 rules!3198) lt!764114)))

(declare-fun bs!421236 () Bool)

(assert (= bs!421236 d!622614))

(assert (=> bs!421236 m!2472991))

(declare-fun m!2475809 () Bool)

(assert (=> bs!421236 m!2475809))

(assert (=> d!621912 d!622614))

(declare-fun d!622616 () Bool)

(assert (=> d!622616 (= (isEmpty!13880 lt!763185) ((_ is Nil!22221) lt!763185))))

(assert (=> bm!124689 d!622616))

(declare-fun d!622618 () Bool)

(assert (=> d!622618 (= (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))) (list!9081 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))))

(declare-fun bs!421237 () Bool)

(assert (= bs!421237 d!622618))

(declare-fun m!2475811 () Bool)

(assert (=> bs!421237 m!2475811))

(assert (=> d!621776 d!622618))

(assert (=> d!621776 d!621818))

(declare-fun d!622620 () Bool)

(declare-fun dynLambda!11076 (Int BalanceConc!14684) Bool)

(assert (=> d!622620 (dynLambda!11076 lambda!76557 lt!763199)))

(declare-fun lt!764117 () Unit!36902)

(declare-fun choose!12407 (Int BalanceConc!14684) Unit!36902)

(assert (=> d!622620 (= lt!764117 (choose!12407 lambda!76557 lt!763199))))

(assert (=> d!622620 (Forall!1022 lambda!76557)))

(assert (=> d!622620 (= (ForallOf!451 lambda!76557 lt!763199) lt!764117)))

(declare-fun b_lambda!68571 () Bool)

(assert (=> (not b_lambda!68571) (not d!622620)))

(declare-fun bs!421238 () Bool)

(assert (= bs!421238 d!622620))

(declare-fun m!2475813 () Bool)

(assert (=> bs!421238 m!2475813))

(declare-fun m!2475815 () Bool)

(assert (=> bs!421238 m!2475815))

(declare-fun m!2475817 () Bool)

(assert (=> bs!421238 m!2475817))

(assert (=> d!621776 d!622620))

(declare-fun d!622622 () Bool)

(assert (=> d!622622 (= (isEmpty!13880 (originalCharacters!4801 (h!27624 tokens!598))) ((_ is Nil!22221) (originalCharacters!4801 (h!27624 tokens!598))))))

(assert (=> d!621762 d!622622))

(declare-fun d!622624 () Bool)

(declare-fun lt!764118 () Int)

(assert (=> d!622624 (>= lt!764118 0)))

(declare-fun e!1284210 () Int)

(assert (=> d!622624 (= lt!764118 e!1284210)))

(declare-fun c!329273 () Bool)

(assert (=> d!622624 (= c!329273 ((_ is Nil!22221) (originalCharacters!4801 separatorToken!354)))))

(assert (=> d!622624 (= (size!17366 (originalCharacters!4801 separatorToken!354)) lt!764118)))

(declare-fun b!2033366 () Bool)

(assert (=> b!2033366 (= e!1284210 0)))

(declare-fun b!2033367 () Bool)

(assert (=> b!2033367 (= e!1284210 (+ 1 (size!17366 (t!190662 (originalCharacters!4801 separatorToken!354)))))))

(assert (= (and d!622624 c!329273) b!2033366))

(assert (= (and d!622624 (not c!329273)) b!2033367))

(declare-fun m!2475823 () Bool)

(assert (=> b!2033367 m!2475823))

(assert (=> b!2031709 d!622624))

(declare-fun d!622626 () Bool)

(declare-fun c!329276 () Bool)

(assert (=> d!622626 (= c!329276 ((_ is Nil!22221) lt!763370))))

(declare-fun e!1284224 () (InoxSet C!10984))

(assert (=> d!622626 (= (content!3285 lt!763370) e!1284224)))

(declare-fun b!2033399 () Bool)

(assert (=> b!2033399 (= e!1284224 ((as const (Array C!10984 Bool)) false))))

(declare-fun b!2033400 () Bool)

(assert (=> b!2033400 (= e!1284224 ((_ map or) (store ((as const (Array C!10984 Bool)) false) (h!27622 lt!763370) true) (content!3285 (t!190662 lt!763370))))))

(assert (= (and d!622626 c!329276) b!2033399))

(assert (= (and d!622626 (not c!329276)) b!2033400))

(declare-fun m!2475831 () Bool)

(assert (=> b!2033400 m!2475831))

(declare-fun m!2475833 () Bool)

(assert (=> b!2033400 m!2475833))

(assert (=> d!621830 d!622626))

(declare-fun d!622628 () Bool)

(declare-fun c!329277 () Bool)

(assert (=> d!622628 (= c!329277 ((_ is Nil!22221) lt!763202))))

(declare-fun e!1284225 () (InoxSet C!10984))

(assert (=> d!622628 (= (content!3285 lt!763202) e!1284225)))

(declare-fun b!2033401 () Bool)

(assert (=> b!2033401 (= e!1284225 ((as const (Array C!10984 Bool)) false))))

(declare-fun b!2033402 () Bool)

(assert (=> b!2033402 (= e!1284225 ((_ map or) (store ((as const (Array C!10984 Bool)) false) (h!27622 lt!763202) true) (content!3285 (t!190662 lt!763202))))))

(assert (= (and d!622628 c!329277) b!2033401))

(assert (= (and d!622628 (not c!329277)) b!2033402))

(declare-fun m!2475835 () Bool)

(assert (=> b!2033402 m!2475835))

(assert (=> b!2033402 m!2474317))

(assert (=> d!621830 d!622628))

(declare-fun d!622630 () Bool)

(declare-fun c!329278 () Bool)

(assert (=> d!622630 (= c!329278 ((_ is Nil!22221) lt!763193))))

(declare-fun e!1284226 () (InoxSet C!10984))

(assert (=> d!622630 (= (content!3285 lt!763193) e!1284226)))

(declare-fun b!2033403 () Bool)

(assert (=> b!2033403 (= e!1284226 ((as const (Array C!10984 Bool)) false))))

(declare-fun b!2033404 () Bool)

(assert (=> b!2033404 (= e!1284226 ((_ map or) (store ((as const (Array C!10984 Bool)) false) (h!27622 lt!763193) true) (content!3285 (t!190662 lt!763193))))))

(assert (= (and d!622630 c!329278) b!2033403))

(assert (= (and d!622630 (not c!329278)) b!2033404))

(declare-fun m!2475837 () Bool)

(assert (=> b!2033404 m!2475837))

(declare-fun m!2475839 () Bool)

(assert (=> b!2033404 m!2475839))

(assert (=> d!621830 d!622630))

(assert (=> b!2031687 d!622304))

(declare-fun b!2033406 () Bool)

(declare-fun e!1284229 () Bool)

(assert (=> b!2033406 (= e!1284229 (inv!15 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(declare-fun b!2033407 () Bool)

(declare-fun e!1284228 () Bool)

(assert (=> b!2033407 (= e!1284228 (inv!17 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(declare-fun d!622634 () Bool)

(declare-fun c!329279 () Bool)

(assert (=> d!622634 (= c!329279 ((_ is IntegerValue!12390) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(declare-fun e!1284230 () Bool)

(assert (=> d!622634 (= (inv!21 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))) e!1284230)))

(declare-fun b!2033408 () Bool)

(declare-fun res!891670 () Bool)

(assert (=> b!2033408 (=> res!891670 e!1284229)))

(assert (=> b!2033408 (= res!891670 (not ((_ is IntegerValue!12392) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))))))))

(assert (=> b!2033408 (= e!1284228 e!1284229)))

(declare-fun b!2033409 () Bool)

(assert (=> b!2033409 (= e!1284230 e!1284228)))

(declare-fun c!329280 () Bool)

(assert (=> b!2033409 (= c!329280 ((_ is IntegerValue!12391) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(declare-fun b!2033410 () Bool)

(assert (=> b!2033410 (= e!1284230 (inv!16 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(assert (= (and d!622634 c!329279) b!2033410))

(assert (= (and d!622634 (not c!329279)) b!2033409))

(assert (= (and b!2033409 c!329280) b!2033407))

(assert (= (and b!2033409 (not c!329280)) b!2033408))

(assert (= (and b!2033408 (not res!891670)) b!2033406))

(declare-fun m!2475841 () Bool)

(assert (=> b!2033406 m!2475841))

(declare-fun m!2475843 () Bool)

(assert (=> b!2033407 m!2475843))

(declare-fun m!2475845 () Bool)

(assert (=> b!2033410 m!2475845))

(assert (=> tb!128369 d!622634))

(declare-fun d!622636 () Bool)

(assert (=> d!622636 (isEmpty!13882 (maxPrefixOneRule!1269 thiss!23328 (rule!6229 lt!763529) lt!763517))))

(declare-fun lt!764121 () Unit!36902)

(declare-fun choose!12408 (LexerInterface!3607 Rule!7788 List!22304 List!22303) Unit!36902)

(assert (=> d!622636 (= lt!764121 (choose!12408 thiss!23328 (rule!6229 lt!763529) rules!3198 lt!763517))))

(assert (=> d!622636 (not (isEmpty!13873 rules!3198))))

(assert (=> d!622636 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!389 thiss!23328 (rule!6229 lt!763529) rules!3198 lt!763517) lt!764121)))

(declare-fun bs!421244 () Bool)

(assert (= bs!421244 d!622636))

(assert (=> bs!421244 m!2473651))

(assert (=> bs!421244 m!2473651))

(assert (=> bs!421244 m!2473653))

(declare-fun m!2475847 () Bool)

(assert (=> bs!421244 m!2475847))

(assert (=> bs!421244 m!2472761))

(assert (=> b!2032190 d!622636))

(declare-fun d!622646 () Bool)

(assert (=> d!622646 (= (isEmpty!13882 (maxPrefixOneRule!1269 thiss!23328 (rule!6229 lt!763529) lt!763517)) (not ((_ is Some!4673) (maxPrefixOneRule!1269 thiss!23328 (rule!6229 lt!763529) lt!763517))))))

(assert (=> b!2032190 d!622646))

(declare-fun d!622648 () Bool)

(assert (=> d!622648 (not (matchR!2685 (regex!3994 (rule!6229 lt!763529)) lt!763522))))

(declare-fun lt!764124 () Unit!36902)

(declare-fun choose!12409 (LexerInterface!3607 Rule!7788 List!22303 List!22303) Unit!36902)

(assert (=> d!622648 (= lt!764124 (choose!12409 thiss!23328 (rule!6229 lt!763529) lt!763522 (++!6013 lt!763202 lt!763193)))))

(assert (=> d!622648 (isPrefix!1987 lt!763522 (++!6013 lt!763202 lt!763193))))

(assert (=> d!622648 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!385 thiss!23328 (rule!6229 lt!763529) lt!763522 (++!6013 lt!763202 lt!763193)) lt!764124)))

(declare-fun bs!421245 () Bool)

(assert (= bs!421245 d!622648))

(assert (=> bs!421245 m!2473659))

(assert (=> bs!421245 m!2472713))

(declare-fun m!2475849 () Bool)

(assert (=> bs!421245 m!2475849))

(assert (=> bs!421245 m!2472713))

(declare-fun m!2475851 () Bool)

(assert (=> bs!421245 m!2475851))

(assert (=> b!2032190 d!622648))

(declare-fun b!2033411 () Bool)

(declare-fun e!1284234 () Bool)

(declare-fun lt!764125 () Bool)

(assert (=> b!2033411 (= e!1284234 (not lt!764125))))

(declare-fun b!2033412 () Bool)

(declare-fun e!1284237 () Bool)

(assert (=> b!2033412 (= e!1284237 e!1284234)))

(declare-fun c!329282 () Bool)

(assert (=> b!2033412 (= c!329282 ((_ is EmptyLang!5419) (regex!3994 (rule!6229 lt!763529))))))

(declare-fun b!2033413 () Bool)

(declare-fun e!1284235 () Bool)

(assert (=> b!2033413 (= e!1284235 (nullable!1655 (regex!3994 (rule!6229 lt!763529))))))

(declare-fun b!2033415 () Bool)

(declare-fun res!891676 () Bool)

(declare-fun e!1284236 () Bool)

(assert (=> b!2033415 (=> res!891676 e!1284236)))

(declare-fun e!1284232 () Bool)

(assert (=> b!2033415 (= res!891676 e!1284232)))

(declare-fun res!891672 () Bool)

(assert (=> b!2033415 (=> (not res!891672) (not e!1284232))))

(assert (=> b!2033415 (= res!891672 lt!764125)))

(declare-fun bm!124804 () Bool)

(declare-fun call!124809 () Bool)

(assert (=> bm!124804 (= call!124809 (isEmpty!13880 lt!763522))))

(declare-fun b!2033416 () Bool)

(declare-fun res!891675 () Bool)

(declare-fun e!1284233 () Bool)

(assert (=> b!2033416 (=> res!891675 e!1284233)))

(assert (=> b!2033416 (= res!891675 (not (isEmpty!13880 (tail!3064 lt!763522))))))

(declare-fun b!2033417 () Bool)

(declare-fun e!1284231 () Bool)

(assert (=> b!2033417 (= e!1284236 e!1284231)))

(declare-fun res!891671 () Bool)

(assert (=> b!2033417 (=> (not res!891671) (not e!1284231))))

(assert (=> b!2033417 (= res!891671 (not lt!764125))))

(declare-fun b!2033418 () Bool)

(assert (=> b!2033418 (= e!1284231 e!1284233)))

(declare-fun res!891677 () Bool)

(assert (=> b!2033418 (=> res!891677 e!1284233)))

(assert (=> b!2033418 (= res!891677 call!124809)))

(declare-fun d!622650 () Bool)

(assert (=> d!622650 e!1284237))

(declare-fun c!329281 () Bool)

(assert (=> d!622650 (= c!329281 ((_ is EmptyExpr!5419) (regex!3994 (rule!6229 lt!763529))))))

(assert (=> d!622650 (= lt!764125 e!1284235)))

(declare-fun c!329283 () Bool)

(assert (=> d!622650 (= c!329283 (isEmpty!13880 lt!763522))))

(assert (=> d!622650 (validRegex!2181 (regex!3994 (rule!6229 lt!763529)))))

(assert (=> d!622650 (= (matchR!2685 (regex!3994 (rule!6229 lt!763529)) lt!763522) lt!764125)))

(declare-fun b!2033414 () Bool)

(assert (=> b!2033414 (= e!1284232 (= (head!4589 lt!763522) (c!328894 (regex!3994 (rule!6229 lt!763529)))))))

(declare-fun b!2033419 () Bool)

(assert (=> b!2033419 (= e!1284235 (matchR!2685 (derivativeStep!1414 (regex!3994 (rule!6229 lt!763529)) (head!4589 lt!763522)) (tail!3064 lt!763522)))))

(declare-fun b!2033420 () Bool)

(assert (=> b!2033420 (= e!1284233 (not (= (head!4589 lt!763522) (c!328894 (regex!3994 (rule!6229 lt!763529))))))))

(declare-fun b!2033421 () Bool)

(declare-fun res!891678 () Bool)

(assert (=> b!2033421 (=> (not res!891678) (not e!1284232))))

(assert (=> b!2033421 (= res!891678 (not call!124809))))

(declare-fun b!2033422 () Bool)

(declare-fun res!891674 () Bool)

(assert (=> b!2033422 (=> res!891674 e!1284236)))

(assert (=> b!2033422 (= res!891674 (not ((_ is ElementMatch!5419) (regex!3994 (rule!6229 lt!763529)))))))

(assert (=> b!2033422 (= e!1284234 e!1284236)))

(declare-fun b!2033423 () Bool)

(declare-fun res!891673 () Bool)

(assert (=> b!2033423 (=> (not res!891673) (not e!1284232))))

(assert (=> b!2033423 (= res!891673 (isEmpty!13880 (tail!3064 lt!763522)))))

(declare-fun b!2033424 () Bool)

(assert (=> b!2033424 (= e!1284237 (= lt!764125 call!124809))))

(assert (= (and d!622650 c!329283) b!2033413))

(assert (= (and d!622650 (not c!329283)) b!2033419))

(assert (= (and d!622650 c!329281) b!2033424))

(assert (= (and d!622650 (not c!329281)) b!2033412))

(assert (= (and b!2033412 c!329282) b!2033411))

(assert (= (and b!2033412 (not c!329282)) b!2033422))

(assert (= (and b!2033422 (not res!891674)) b!2033415))

(assert (= (and b!2033415 res!891672) b!2033421))

(assert (= (and b!2033421 res!891678) b!2033423))

(assert (= (and b!2033423 res!891673) b!2033414))

(assert (= (and b!2033415 (not res!891676)) b!2033417))

(assert (= (and b!2033417 res!891671) b!2033418))

(assert (= (and b!2033418 (not res!891677)) b!2033416))

(assert (= (and b!2033416 (not res!891675)) b!2033420))

(assert (= (or b!2033424 b!2033418 b!2033421) bm!124804))

(declare-fun m!2475853 () Bool)

(assert (=> b!2033413 m!2475853))

(declare-fun m!2475855 () Bool)

(assert (=> b!2033423 m!2475855))

(assert (=> b!2033423 m!2475855))

(declare-fun m!2475857 () Bool)

(assert (=> b!2033423 m!2475857))

(declare-fun m!2475859 () Bool)

(assert (=> b!2033414 m!2475859))

(assert (=> b!2033416 m!2475855))

(assert (=> b!2033416 m!2475855))

(assert (=> b!2033416 m!2475857))

(declare-fun m!2475861 () Bool)

(assert (=> bm!124804 m!2475861))

(assert (=> d!622650 m!2475861))

(declare-fun m!2475863 () Bool)

(assert (=> d!622650 m!2475863))

(assert (=> b!2033420 m!2475859))

(assert (=> b!2033419 m!2475859))

(assert (=> b!2033419 m!2475859))

(declare-fun m!2475865 () Bool)

(assert (=> b!2033419 m!2475865))

(assert (=> b!2033419 m!2475855))

(assert (=> b!2033419 m!2475865))

(assert (=> b!2033419 m!2475855))

(declare-fun m!2475867 () Bool)

(assert (=> b!2033419 m!2475867))

(assert (=> b!2032190 d!622650))

(assert (=> b!2032190 d!622356))

(assert (=> b!2032190 d!622358))

(assert (=> b!2032190 d!621830))

(declare-fun b!2033443 () Bool)

(declare-fun e!1284247 () Bool)

(declare-fun e!1284249 () Bool)

(assert (=> b!2033443 (= e!1284247 e!1284249)))

(declare-fun res!891698 () Bool)

(assert (=> b!2033443 (=> (not res!891698) (not e!1284249))))

(declare-fun lt!764136 () Option!4674)

(assert (=> b!2033443 (= res!891698 (matchR!2685 (regex!3994 (rule!6229 lt!763529)) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764136))))))))

(declare-fun b!2033444 () Bool)

(declare-fun e!1284246 () Option!4674)

(declare-datatypes ((tuple2!20926 0))(
  ( (tuple2!20927 (_1!11932 List!22303) (_2!11932 List!22303)) )
))
(declare-fun lt!764140 () tuple2!20926)

(assert (=> b!2033444 (= e!1284246 (Some!4673 (tuple2!20915 (Token!7541 (apply!5857 (transformation!3994 (rule!6229 lt!763529)) (seqFromList!2848 (_1!11932 lt!764140))) (rule!6229 lt!763529) (size!17368 (seqFromList!2848 (_1!11932 lt!764140))) (_1!11932 lt!764140)) (_2!11932 lt!764140))))))

(declare-fun lt!764138 () Unit!36902)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!541 (Regex!5419 List!22303) Unit!36902)

(assert (=> b!2033444 (= lt!764138 (longestMatchIsAcceptedByMatchOrIsEmpty!541 (regex!3994 (rule!6229 lt!763529)) lt!763517))))

(declare-fun res!891694 () Bool)

(declare-fun findLongestMatchInner!557 (Regex!5419 List!22303 Int List!22303 List!22303 Int) tuple2!20926)

(assert (=> b!2033444 (= res!891694 (isEmpty!13880 (_1!11932 (findLongestMatchInner!557 (regex!3994 (rule!6229 lt!763529)) Nil!22221 (size!17366 Nil!22221) lt!763517 lt!763517 (size!17366 lt!763517)))))))

(declare-fun e!1284248 () Bool)

(assert (=> b!2033444 (=> res!891694 e!1284248)))

(assert (=> b!2033444 e!1284248))

(declare-fun lt!764137 () Unit!36902)

(assert (=> b!2033444 (= lt!764137 lt!764138)))

(declare-fun lt!764139 () Unit!36902)

(assert (=> b!2033444 (= lt!764139 (lemmaSemiInverse!951 (transformation!3994 (rule!6229 lt!763529)) (seqFromList!2848 (_1!11932 lt!764140))))))

(declare-fun b!2033445 () Bool)

(declare-fun res!891697 () Bool)

(assert (=> b!2033445 (=> (not res!891697) (not e!1284249))))

(assert (=> b!2033445 (= res!891697 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764136)))) (_2!11926 (get!7060 lt!764136))) lt!763517))))

(declare-fun d!622652 () Bool)

(assert (=> d!622652 e!1284247))

(declare-fun res!891695 () Bool)

(assert (=> d!622652 (=> res!891695 e!1284247)))

(assert (=> d!622652 (= res!891695 (isEmpty!13882 lt!764136))))

(assert (=> d!622652 (= lt!764136 e!1284246)))

(declare-fun c!329286 () Bool)

(assert (=> d!622652 (= c!329286 (isEmpty!13880 (_1!11932 lt!764140)))))

(declare-fun findLongestMatch!484 (Regex!5419 List!22303) tuple2!20926)

(assert (=> d!622652 (= lt!764140 (findLongestMatch!484 (regex!3994 (rule!6229 lt!763529)) lt!763517))))

(assert (=> d!622652 (ruleValid!1225 thiss!23328 (rule!6229 lt!763529))))

(assert (=> d!622652 (= (maxPrefixOneRule!1269 thiss!23328 (rule!6229 lt!763529) lt!763517) lt!764136)))

(declare-fun b!2033446 () Bool)

(assert (=> b!2033446 (= e!1284246 None!4673)))

(declare-fun b!2033447 () Bool)

(declare-fun res!891699 () Bool)

(assert (=> b!2033447 (=> (not res!891699) (not e!1284249))))

(assert (=> b!2033447 (= res!891699 (= (rule!6229 (_1!11926 (get!7060 lt!764136))) (rule!6229 lt!763529)))))

(declare-fun b!2033448 () Bool)

(declare-fun res!891696 () Bool)

(assert (=> b!2033448 (=> (not res!891696) (not e!1284249))))

(assert (=> b!2033448 (= res!891696 (< (size!17366 (_2!11926 (get!7060 lt!764136))) (size!17366 lt!763517)))))

(declare-fun b!2033449 () Bool)

(assert (=> b!2033449 (= e!1284249 (= (size!17362 (_1!11926 (get!7060 lt!764136))) (size!17366 (originalCharacters!4801 (_1!11926 (get!7060 lt!764136))))))))

(declare-fun b!2033450 () Bool)

(assert (=> b!2033450 (= e!1284248 (matchR!2685 (regex!3994 (rule!6229 lt!763529)) (_1!11932 (findLongestMatchInner!557 (regex!3994 (rule!6229 lt!763529)) Nil!22221 (size!17366 Nil!22221) lt!763517 lt!763517 (size!17366 lt!763517)))))))

(declare-fun b!2033451 () Bool)

(declare-fun res!891693 () Bool)

(assert (=> b!2033451 (=> (not res!891693) (not e!1284249))))

(assert (=> b!2033451 (= res!891693 (= (value!125420 (_1!11926 (get!7060 lt!764136))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!764136)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!764136)))))))))

(assert (= (and d!622652 c!329286) b!2033446))

(assert (= (and d!622652 (not c!329286)) b!2033444))

(assert (= (and b!2033444 (not res!891694)) b!2033450))

(assert (= (and d!622652 (not res!891695)) b!2033443))

(assert (= (and b!2033443 res!891698) b!2033445))

(assert (= (and b!2033445 res!891697) b!2033448))

(assert (= (and b!2033448 res!891696) b!2033447))

(assert (= (and b!2033447 res!891699) b!2033451))

(assert (= (and b!2033451 res!891693) b!2033449))

(declare-fun m!2475869 () Bool)

(assert (=> b!2033448 m!2475869))

(declare-fun m!2475871 () Bool)

(assert (=> b!2033448 m!2475871))

(declare-fun m!2475873 () Bool)

(assert (=> b!2033448 m!2475873))

(assert (=> b!2033451 m!2475869))

(declare-fun m!2475875 () Bool)

(assert (=> b!2033451 m!2475875))

(assert (=> b!2033451 m!2475875))

(declare-fun m!2475877 () Bool)

(assert (=> b!2033451 m!2475877))

(assert (=> b!2033445 m!2475869))

(declare-fun m!2475879 () Bool)

(assert (=> b!2033445 m!2475879))

(assert (=> b!2033445 m!2475879))

(declare-fun m!2475881 () Bool)

(assert (=> b!2033445 m!2475881))

(assert (=> b!2033445 m!2475881))

(declare-fun m!2475883 () Bool)

(assert (=> b!2033445 m!2475883))

(declare-fun m!2475885 () Bool)

(assert (=> b!2033450 m!2475885))

(assert (=> b!2033450 m!2475873))

(assert (=> b!2033450 m!2475885))

(assert (=> b!2033450 m!2475873))

(declare-fun m!2475887 () Bool)

(assert (=> b!2033450 m!2475887))

(declare-fun m!2475889 () Bool)

(assert (=> b!2033450 m!2475889))

(declare-fun m!2475891 () Bool)

(assert (=> b!2033444 m!2475891))

(declare-fun m!2475893 () Bool)

(assert (=> b!2033444 m!2475893))

(assert (=> b!2033444 m!2475891))

(declare-fun m!2475895 () Bool)

(assert (=> b!2033444 m!2475895))

(assert (=> b!2033444 m!2475891))

(declare-fun m!2475897 () Bool)

(assert (=> b!2033444 m!2475897))

(assert (=> b!2033444 m!2475873))

(assert (=> b!2033444 m!2475891))

(declare-fun m!2475899 () Bool)

(assert (=> b!2033444 m!2475899))

(declare-fun m!2475901 () Bool)

(assert (=> b!2033444 m!2475901))

(assert (=> b!2033444 m!2475885))

(assert (=> b!2033444 m!2475873))

(assert (=> b!2033444 m!2475887))

(assert (=> b!2033444 m!2475885))

(assert (=> b!2033443 m!2475869))

(assert (=> b!2033443 m!2475879))

(assert (=> b!2033443 m!2475879))

(assert (=> b!2033443 m!2475881))

(assert (=> b!2033443 m!2475881))

(declare-fun m!2475903 () Bool)

(assert (=> b!2033443 m!2475903))

(assert (=> b!2033447 m!2475869))

(assert (=> b!2033449 m!2475869))

(declare-fun m!2475905 () Bool)

(assert (=> b!2033449 m!2475905))

(declare-fun m!2475907 () Bool)

(assert (=> d!622652 m!2475907))

(declare-fun m!2475909 () Bool)

(assert (=> d!622652 m!2475909))

(declare-fun m!2475911 () Bool)

(assert (=> d!622652 m!2475911))

(declare-fun m!2475913 () Bool)

(assert (=> d!622652 m!2475913))

(assert (=> b!2032190 d!622652))

(declare-fun d!622654 () Bool)

(assert (=> d!622654 (= (list!9080 lt!763479) (list!9084 (c!328895 lt!763479)))))

(declare-fun bs!421246 () Bool)

(assert (= bs!421246 d!622654))

(declare-fun m!2475915 () Bool)

(assert (=> bs!421246 m!2475915))

(assert (=> d!621888 d!622654))

(declare-fun d!622656 () Bool)

(declare-fun e!1284252 () Bool)

(assert (=> d!622656 e!1284252))

(declare-fun res!891702 () Bool)

(assert (=> d!622656 (=> (not res!891702) (not e!1284252))))

(declare-fun lt!764143 () BalanceConc!14686)

(assert (=> d!622656 (= res!891702 (= (list!9080 lt!764143) (Cons!22223 (h!27624 tokens!598) Nil!22223)))))

(declare-fun choose!12410 (Token!7540) BalanceConc!14686)

(assert (=> d!622656 (= lt!764143 (choose!12410 (h!27624 tokens!598)))))

(assert (=> d!622656 (= (singleton!886 (h!27624 tokens!598)) lt!764143)))

(declare-fun b!2033454 () Bool)

(assert (=> b!2033454 (= e!1284252 (isBalanced!2319 (c!328895 lt!764143)))))

(assert (= (and d!622656 res!891702) b!2033454))

(declare-fun m!2475917 () Bool)

(assert (=> d!622656 m!2475917))

(declare-fun m!2475919 () Bool)

(assert (=> d!622656 m!2475919))

(declare-fun m!2475921 () Bool)

(assert (=> b!2033454 m!2475921))

(assert (=> d!621888 d!622656))

(declare-fun d!622658 () Bool)

(declare-fun lt!764144 () Int)

(assert (=> d!622658 (>= lt!764144 0)))

(declare-fun e!1284253 () Int)

(assert (=> d!622658 (= lt!764144 e!1284253)))

(declare-fun c!329287 () Bool)

(assert (=> d!622658 (= c!329287 ((_ is Nil!22221) (originalCharacters!4801 (h!27624 tokens!598))))))

(assert (=> d!622658 (= (size!17366 (originalCharacters!4801 (h!27624 tokens!598))) lt!764144)))

(declare-fun b!2033455 () Bool)

(assert (=> b!2033455 (= e!1284253 0)))

(declare-fun b!2033456 () Bool)

(assert (=> b!2033456 (= e!1284253 (+ 1 (size!17366 (t!190662 (originalCharacters!4801 (h!27624 tokens!598))))))))

(assert (= (and d!622658 c!329287) b!2033455))

(assert (= (and d!622658 (not c!329287)) b!2033456))

(declare-fun m!2475923 () Bool)

(assert (=> b!2033456 m!2475923))

(assert (=> b!2031722 d!622658))

(declare-fun d!622660 () Bool)

(assert (=> d!622660 (= (isDefined!3960 lt!763244) (not (isEmpty!13882 lt!763244)))))

(declare-fun bs!421247 () Bool)

(assert (= bs!421247 d!622660))

(assert (=> bs!421247 m!2472985))

(assert (=> b!2031770 d!622660))

(declare-fun d!622662 () Bool)

(declare-fun lt!764145 () Bool)

(assert (=> d!622662 (= lt!764145 (isEmpty!13880 (list!9077 (_2!11925 lt!763223))))))

(assert (=> d!622662 (= lt!764145 (isEmpty!13888 (c!328893 (_2!11925 lt!763223))))))

(assert (=> d!622662 (= (isEmpty!13878 (_2!11925 lt!763223)) lt!764145)))

(declare-fun bs!421248 () Bool)

(assert (= bs!421248 d!622662))

(declare-fun m!2475925 () Bool)

(assert (=> bs!421248 m!2475925))

(assert (=> bs!421248 m!2475925))

(declare-fun m!2475927 () Bool)

(assert (=> bs!421248 m!2475927))

(declare-fun m!2475929 () Bool)

(assert (=> bs!421248 m!2475929))

(assert (=> b!2031648 d!622662))

(assert (=> d!621746 d!622616))

(declare-fun d!622664 () Bool)

(declare-fun res!891716 () Bool)

(declare-fun e!1284273 () Bool)

(assert (=> d!622664 (=> res!891716 e!1284273)))

(assert (=> d!622664 (= res!891716 ((_ is ElementMatch!5419) (regex!3994 lt!763203)))))

(assert (=> d!622664 (= (validRegex!2181 (regex!3994 lt!763203)) e!1284273)))

(declare-fun b!2033475 () Bool)

(declare-fun e!1284271 () Bool)

(assert (=> b!2033475 (= e!1284273 e!1284271)))

(declare-fun c!329293 () Bool)

(assert (=> b!2033475 (= c!329293 ((_ is Star!5419) (regex!3994 lt!763203)))))

(declare-fun b!2033476 () Bool)

(declare-fun res!891717 () Bool)

(declare-fun e!1284269 () Bool)

(assert (=> b!2033476 (=> res!891717 e!1284269)))

(assert (=> b!2033476 (= res!891717 (not ((_ is Concat!9550) (regex!3994 lt!763203))))))

(declare-fun e!1284274 () Bool)

(assert (=> b!2033476 (= e!1284274 e!1284269)))

(declare-fun b!2033477 () Bool)

(declare-fun e!1284270 () Bool)

(assert (=> b!2033477 (= e!1284269 e!1284270)))

(declare-fun res!891714 () Bool)

(assert (=> b!2033477 (=> (not res!891714) (not e!1284270))))

(declare-fun call!124817 () Bool)

(assert (=> b!2033477 (= res!891714 call!124817)))

(declare-fun b!2033478 () Bool)

(declare-fun e!1284272 () Bool)

(assert (=> b!2033478 (= e!1284271 e!1284272)))

(declare-fun res!891715 () Bool)

(assert (=> b!2033478 (= res!891715 (not (nullable!1655 (reg!5748 (regex!3994 lt!763203)))))))

(assert (=> b!2033478 (=> (not res!891715) (not e!1284272))))

(declare-fun bm!124811 () Bool)

(declare-fun call!124818 () Bool)

(declare-fun c!329292 () Bool)

(assert (=> bm!124811 (= call!124818 (validRegex!2181 (ite c!329292 (regTwo!11351 (regex!3994 lt!763203)) (regTwo!11350 (regex!3994 lt!763203)))))))

(declare-fun b!2033479 () Bool)

(declare-fun call!124816 () Bool)

(assert (=> b!2033479 (= e!1284272 call!124816)))

(declare-fun b!2033480 () Bool)

(declare-fun res!891713 () Bool)

(declare-fun e!1284268 () Bool)

(assert (=> b!2033480 (=> (not res!891713) (not e!1284268))))

(assert (=> b!2033480 (= res!891713 call!124817)))

(assert (=> b!2033480 (= e!1284274 e!1284268)))

(declare-fun bm!124812 () Bool)

(assert (=> bm!124812 (= call!124817 call!124816)))

(declare-fun b!2033481 () Bool)

(assert (=> b!2033481 (= e!1284270 call!124818)))

(declare-fun bm!124813 () Bool)

(assert (=> bm!124813 (= call!124816 (validRegex!2181 (ite c!329293 (reg!5748 (regex!3994 lt!763203)) (ite c!329292 (regOne!11351 (regex!3994 lt!763203)) (regOne!11350 (regex!3994 lt!763203))))))))

(declare-fun b!2033482 () Bool)

(assert (=> b!2033482 (= e!1284268 call!124818)))

(declare-fun b!2033483 () Bool)

(assert (=> b!2033483 (= e!1284271 e!1284274)))

(assert (=> b!2033483 (= c!329292 ((_ is Union!5419) (regex!3994 lt!763203)))))

(assert (= (and d!622664 (not res!891716)) b!2033475))

(assert (= (and b!2033475 c!329293) b!2033478))

(assert (= (and b!2033475 (not c!329293)) b!2033483))

(assert (= (and b!2033478 res!891715) b!2033479))

(assert (= (and b!2033483 c!329292) b!2033480))

(assert (= (and b!2033483 (not c!329292)) b!2033476))

(assert (= (and b!2033480 res!891713) b!2033482))

(assert (= (and b!2033476 (not res!891717)) b!2033477))

(assert (= (and b!2033477 res!891714) b!2033481))

(assert (= (or b!2033480 b!2033477) bm!124812))

(assert (= (or b!2033482 b!2033481) bm!124811))

(assert (= (or b!2033479 bm!124812) bm!124813))

(declare-fun m!2475931 () Bool)

(assert (=> b!2033478 m!2475931))

(declare-fun m!2475933 () Bool)

(assert (=> bm!124811 m!2475933))

(declare-fun m!2475935 () Bool)

(assert (=> bm!124813 m!2475935))

(assert (=> d!621746 d!622664))

(declare-fun b!2033484 () Bool)

(declare-fun e!1284278 () Bool)

(declare-fun lt!764146 () Bool)

(assert (=> b!2033484 (= e!1284278 (not lt!764146))))

(declare-fun b!2033485 () Bool)

(declare-fun e!1284281 () Bool)

(assert (=> b!2033485 (= e!1284281 e!1284278)))

(declare-fun c!329295 () Bool)

(assert (=> b!2033485 (= c!329295 ((_ is EmptyLang!5419) (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))))))

(declare-fun b!2033486 () Bool)

(declare-fun e!1284279 () Bool)

(assert (=> b!2033486 (= e!1284279 (nullable!1655 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))))))

(declare-fun b!2033488 () Bool)

(declare-fun res!891723 () Bool)

(declare-fun e!1284280 () Bool)

(assert (=> b!2033488 (=> res!891723 e!1284280)))

(declare-fun e!1284276 () Bool)

(assert (=> b!2033488 (= res!891723 e!1284276)))

(declare-fun res!891719 () Bool)

(assert (=> b!2033488 (=> (not res!891719) (not e!1284276))))

(assert (=> b!2033488 (= res!891719 lt!764146)))

(declare-fun bm!124814 () Bool)

(declare-fun call!124819 () Bool)

(assert (=> bm!124814 (= call!124819 (isEmpty!13880 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))))))

(declare-fun b!2033489 () Bool)

(declare-fun res!891722 () Bool)

(declare-fun e!1284277 () Bool)

(assert (=> b!2033489 (=> res!891722 e!1284277)))

(assert (=> b!2033489 (= res!891722 (not (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))))))))

(declare-fun b!2033490 () Bool)

(declare-fun e!1284275 () Bool)

(assert (=> b!2033490 (= e!1284280 e!1284275)))

(declare-fun res!891718 () Bool)

(assert (=> b!2033490 (=> (not res!891718) (not e!1284275))))

(assert (=> b!2033490 (= res!891718 (not lt!764146))))

(declare-fun b!2033491 () Bool)

(assert (=> b!2033491 (= e!1284275 e!1284277)))

(declare-fun res!891724 () Bool)

(assert (=> b!2033491 (=> res!891724 e!1284277)))

(assert (=> b!2033491 (= res!891724 call!124819)))

(declare-fun d!622666 () Bool)

(assert (=> d!622666 e!1284281))

(declare-fun c!329294 () Bool)

(assert (=> d!622666 (= c!329294 ((_ is EmptyExpr!5419) (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))))))

(assert (=> d!622666 (= lt!764146 e!1284279)))

(declare-fun c!329296 () Bool)

(assert (=> d!622666 (= c!329296 (isEmpty!13880 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))))))

(assert (=> d!622666 (validRegex!2181 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))))

(assert (=> d!622666 (= (matchR!2685 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))) lt!764146)))

(declare-fun b!2033487 () Bool)

(assert (=> b!2033487 (= e!1284276 (= (head!4589 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))) (c!328894 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))))))

(declare-fun b!2033492 () Bool)

(assert (=> b!2033492 (= e!1284279 (matchR!2685 (derivativeStep!1414 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))) (head!4589 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))))) (tail!3064 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))))))))

(declare-fun b!2033493 () Bool)

(assert (=> b!2033493 (= e!1284277 (not (= (head!4589 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307))))) (c!328894 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307))))))))))

(declare-fun b!2033494 () Bool)

(declare-fun res!891725 () Bool)

(assert (=> b!2033494 (=> (not res!891725) (not e!1284276))))

(assert (=> b!2033494 (= res!891725 (not call!124819))))

(declare-fun b!2033495 () Bool)

(declare-fun res!891721 () Bool)

(assert (=> b!2033495 (=> res!891721 e!1284280)))

(assert (=> b!2033495 (= res!891721 (not ((_ is ElementMatch!5419) (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))))))

(assert (=> b!2033495 (= e!1284278 e!1284280)))

(declare-fun b!2033496 () Bool)

(declare-fun res!891720 () Bool)

(assert (=> b!2033496 (=> (not res!891720) (not e!1284276))))

(assert (=> b!2033496 (= res!891720 (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763307)))))))))

(declare-fun b!2033497 () Bool)

(assert (=> b!2033497 (= e!1284281 (= lt!764146 call!124819))))

(assert (= (and d!622666 c!329296) b!2033486))

(assert (= (and d!622666 (not c!329296)) b!2033492))

(assert (= (and d!622666 c!329294) b!2033497))

(assert (= (and d!622666 (not c!329294)) b!2033485))

(assert (= (and b!2033485 c!329295) b!2033484))

(assert (= (and b!2033485 (not c!329295)) b!2033495))

(assert (= (and b!2033495 (not res!891721)) b!2033488))

(assert (= (and b!2033488 res!891719) b!2033494))

(assert (= (and b!2033494 res!891725) b!2033496))

(assert (= (and b!2033496 res!891720) b!2033487))

(assert (= (and b!2033488 (not res!891723)) b!2033490))

(assert (= (and b!2033490 res!891718) b!2033491))

(assert (= (and b!2033491 (not res!891724)) b!2033489))

(assert (= (and b!2033489 (not res!891722)) b!2033493))

(assert (= (or b!2033497 b!2033491 b!2033494) bm!124814))

(declare-fun m!2475937 () Bool)

(assert (=> b!2033486 m!2475937))

(assert (=> b!2033496 m!2473109))

(declare-fun m!2475939 () Bool)

(assert (=> b!2033496 m!2475939))

(assert (=> b!2033496 m!2475939))

(declare-fun m!2475941 () Bool)

(assert (=> b!2033496 m!2475941))

(assert (=> b!2033487 m!2473109))

(declare-fun m!2475943 () Bool)

(assert (=> b!2033487 m!2475943))

(assert (=> b!2033489 m!2473109))

(assert (=> b!2033489 m!2475939))

(assert (=> b!2033489 m!2475939))

(assert (=> b!2033489 m!2475941))

(assert (=> bm!124814 m!2473109))

(declare-fun m!2475945 () Bool)

(assert (=> bm!124814 m!2475945))

(assert (=> d!622666 m!2473109))

(assert (=> d!622666 m!2475945))

(declare-fun m!2475947 () Bool)

(assert (=> d!622666 m!2475947))

(assert (=> b!2033493 m!2473109))

(assert (=> b!2033493 m!2475943))

(assert (=> b!2033492 m!2473109))

(assert (=> b!2033492 m!2475943))

(assert (=> b!2033492 m!2475943))

(declare-fun m!2475949 () Bool)

(assert (=> b!2033492 m!2475949))

(assert (=> b!2033492 m!2473109))

(assert (=> b!2033492 m!2475939))

(assert (=> b!2033492 m!2475949))

(assert (=> b!2033492 m!2475939))

(declare-fun m!2475951 () Bool)

(assert (=> b!2033492 m!2475951))

(assert (=> b!2031828 d!622666))

(assert (=> b!2031828 d!622104))

(assert (=> b!2031828 d!622390))

(assert (=> b!2031828 d!622392))

(declare-fun d!622668 () Bool)

(declare-fun charsToBigInt!0 (List!22302 Int) Int)

(assert (=> d!622668 (= (inv!15 (value!125420 separatorToken!354)) (= (charsToBigInt!0 (text!29359 (value!125420 separatorToken!354)) 0) (value!125415 (value!125420 separatorToken!354))))))

(declare-fun bs!421249 () Bool)

(assert (= bs!421249 d!622668))

(declare-fun m!2475953 () Bool)

(assert (=> bs!421249 m!2475953))

(assert (=> b!2031642 d!622668))

(assert (=> b!2031727 d!622134))

(declare-fun b!2033498 () Bool)

(declare-fun e!1284283 () Bool)

(assert (=> b!2033498 (= e!1284283 (inv!15 (value!125420 (h!27624 (t!190664 tokens!598)))))))

(declare-fun b!2033499 () Bool)

(declare-fun e!1284282 () Bool)

(assert (=> b!2033499 (= e!1284282 (inv!17 (value!125420 (h!27624 (t!190664 tokens!598)))))))

(declare-fun d!622670 () Bool)

(declare-fun c!329297 () Bool)

(assert (=> d!622670 (= c!329297 ((_ is IntegerValue!12390) (value!125420 (h!27624 (t!190664 tokens!598)))))))

(declare-fun e!1284284 () Bool)

(assert (=> d!622670 (= (inv!21 (value!125420 (h!27624 (t!190664 tokens!598)))) e!1284284)))

(declare-fun b!2033500 () Bool)

(declare-fun res!891726 () Bool)

(assert (=> b!2033500 (=> res!891726 e!1284283)))

(assert (=> b!2033500 (= res!891726 (not ((_ is IntegerValue!12392) (value!125420 (h!27624 (t!190664 tokens!598))))))))

(assert (=> b!2033500 (= e!1284282 e!1284283)))

(declare-fun b!2033501 () Bool)

(assert (=> b!2033501 (= e!1284284 e!1284282)))

(declare-fun c!329298 () Bool)

(assert (=> b!2033501 (= c!329298 ((_ is IntegerValue!12391) (value!125420 (h!27624 (t!190664 tokens!598)))))))

(declare-fun b!2033502 () Bool)

(assert (=> b!2033502 (= e!1284284 (inv!16 (value!125420 (h!27624 (t!190664 tokens!598)))))))

(assert (= (and d!622670 c!329297) b!2033502))

(assert (= (and d!622670 (not c!329297)) b!2033501))

(assert (= (and b!2033501 c!329298) b!2033499))

(assert (= (and b!2033501 (not c!329298)) b!2033500))

(assert (= (and b!2033500 (not res!891726)) b!2033498))

(declare-fun m!2475955 () Bool)

(assert (=> b!2033498 m!2475955))

(declare-fun m!2475957 () Bool)

(assert (=> b!2033499 m!2475957))

(declare-fun m!2475959 () Bool)

(assert (=> b!2033502 m!2475959))

(assert (=> b!2032250 d!622670))

(declare-fun d!622672 () Bool)

(declare-fun charsToInt!0 (List!22302) (_ BitVec 32))

(assert (=> d!622672 (= (inv!16 (value!125420 separatorToken!354)) (= (charsToInt!0 (text!29357 (value!125420 separatorToken!354))) (value!125411 (value!125420 separatorToken!354))))))

(declare-fun bs!421250 () Bool)

(assert (= bs!421250 d!622672))

(declare-fun m!2475961 () Bool)

(assert (=> bs!421250 m!2475961))

(assert (=> b!2031646 d!622672))

(declare-fun b!2033503 () Bool)

(declare-fun e!1284288 () Bool)

(declare-fun lt!764147 () Bool)

(assert (=> b!2033503 (= e!1284288 (not lt!764147))))

(declare-fun b!2033504 () Bool)

(declare-fun e!1284291 () Bool)

(assert (=> b!2033504 (= e!1284291 e!1284288)))

(declare-fun c!329300 () Bool)

(assert (=> b!2033504 (= c!329300 ((_ is EmptyLang!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))))))))

(declare-fun b!2033505 () Bool)

(declare-fun e!1284289 () Bool)

(assert (=> b!2033505 (= e!1284289 (nullable!1655 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))))))))

(declare-fun b!2033507 () Bool)

(declare-fun res!891732 () Bool)

(declare-fun e!1284290 () Bool)

(assert (=> b!2033507 (=> res!891732 e!1284290)))

(declare-fun e!1284286 () Bool)

(assert (=> b!2033507 (= res!891732 e!1284286)))

(declare-fun res!891728 () Bool)

(assert (=> b!2033507 (=> (not res!891728) (not e!1284286))))

(assert (=> b!2033507 (= res!891728 lt!764147)))

(declare-fun bm!124815 () Bool)

(declare-fun call!124820 () Bool)

(assert (=> bm!124815 (= call!124820 (isEmpty!13880 (list!9077 (charsOf!2534 separatorToken!354))))))

(declare-fun b!2033508 () Bool)

(declare-fun res!891731 () Bool)

(declare-fun e!1284287 () Bool)

(assert (=> b!2033508 (=> res!891731 e!1284287)))

(assert (=> b!2033508 (= res!891731 (not (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 separatorToken!354))))))))

(declare-fun b!2033509 () Bool)

(declare-fun e!1284285 () Bool)

(assert (=> b!2033509 (= e!1284290 e!1284285)))

(declare-fun res!891727 () Bool)

(assert (=> b!2033509 (=> (not res!891727) (not e!1284285))))

(assert (=> b!2033509 (= res!891727 (not lt!764147))))

(declare-fun b!2033510 () Bool)

(assert (=> b!2033510 (= e!1284285 e!1284287)))

(declare-fun res!891733 () Bool)

(assert (=> b!2033510 (=> res!891733 e!1284287)))

(assert (=> b!2033510 (= res!891733 call!124820)))

(declare-fun d!622674 () Bool)

(assert (=> d!622674 e!1284291))

(declare-fun c!329299 () Bool)

(assert (=> d!622674 (= c!329299 ((_ is EmptyExpr!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))))))))

(assert (=> d!622674 (= lt!764147 e!1284289)))

(declare-fun c!329301 () Bool)

(assert (=> d!622674 (= c!329301 (isEmpty!13880 (list!9077 (charsOf!2534 separatorToken!354))))))

(assert (=> d!622674 (validRegex!2181 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))))))

(assert (=> d!622674 (= (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))) (list!9077 (charsOf!2534 separatorToken!354))) lt!764147)))

(declare-fun b!2033506 () Bool)

(assert (=> b!2033506 (= e!1284286 (= (head!4589 (list!9077 (charsOf!2534 separatorToken!354))) (c!328894 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))))))))

(declare-fun b!2033511 () Bool)

(assert (=> b!2033511 (= e!1284289 (matchR!2685 (derivativeStep!1414 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))) (head!4589 (list!9077 (charsOf!2534 separatorToken!354)))) (tail!3064 (list!9077 (charsOf!2534 separatorToken!354)))))))

(declare-fun b!2033512 () Bool)

(assert (=> b!2033512 (= e!1284287 (not (= (head!4589 (list!9077 (charsOf!2534 separatorToken!354))) (c!328894 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))))))))))

(declare-fun b!2033513 () Bool)

(declare-fun res!891734 () Bool)

(assert (=> b!2033513 (=> (not res!891734) (not e!1284286))))

(assert (=> b!2033513 (= res!891734 (not call!124820))))

(declare-fun b!2033514 () Bool)

(declare-fun res!891730 () Bool)

(assert (=> b!2033514 (=> res!891730 e!1284290)))

(assert (=> b!2033514 (= res!891730 (not ((_ is ElementMatch!5419) (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354))))))))))

(assert (=> b!2033514 (= e!1284288 e!1284290)))

(declare-fun b!2033515 () Bool)

(declare-fun res!891729 () Bool)

(assert (=> b!2033515 (=> (not res!891729) (not e!1284286))))

(assert (=> b!2033515 (= res!891729 (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 separatorToken!354)))))))

(declare-fun b!2033516 () Bool)

(assert (=> b!2033516 (= e!1284291 (= lt!764147 call!124820))))

(assert (= (and d!622674 c!329301) b!2033505))

(assert (= (and d!622674 (not c!329301)) b!2033511))

(assert (= (and d!622674 c!329299) b!2033516))

(assert (= (and d!622674 (not c!329299)) b!2033504))

(assert (= (and b!2033504 c!329300) b!2033503))

(assert (= (and b!2033504 (not c!329300)) b!2033514))

(assert (= (and b!2033514 (not res!891730)) b!2033507))

(assert (= (and b!2033507 res!891728) b!2033513))

(assert (= (and b!2033513 res!891734) b!2033515))

(assert (= (and b!2033515 res!891729) b!2033506))

(assert (= (and b!2033507 (not res!891732)) b!2033509))

(assert (= (and b!2033509 res!891727) b!2033510))

(assert (= (and b!2033510 (not res!891733)) b!2033508))

(assert (= (and b!2033508 (not res!891731)) b!2033512))

(assert (= (or b!2033516 b!2033510 b!2033513) bm!124815))

(declare-fun m!2475963 () Bool)

(assert (=> b!2033505 m!2475963))

(assert (=> b!2033515 m!2472745))

(declare-fun m!2475965 () Bool)

(assert (=> b!2033515 m!2475965))

(assert (=> b!2033515 m!2475965))

(declare-fun m!2475967 () Bool)

(assert (=> b!2033515 m!2475967))

(assert (=> b!2033506 m!2472745))

(declare-fun m!2475969 () Bool)

(assert (=> b!2033506 m!2475969))

(assert (=> b!2033508 m!2472745))

(assert (=> b!2033508 m!2475965))

(assert (=> b!2033508 m!2475965))

(assert (=> b!2033508 m!2475967))

(assert (=> bm!124815 m!2472745))

(declare-fun m!2475971 () Bool)

(assert (=> bm!124815 m!2475971))

(assert (=> d!622674 m!2472745))

(assert (=> d!622674 m!2475971))

(declare-fun m!2475973 () Bool)

(assert (=> d!622674 m!2475973))

(assert (=> b!2033512 m!2472745))

(assert (=> b!2033512 m!2475969))

(assert (=> b!2033511 m!2472745))

(assert (=> b!2033511 m!2475969))

(assert (=> b!2033511 m!2475969))

(declare-fun m!2475975 () Bool)

(assert (=> b!2033511 m!2475975))

(assert (=> b!2033511 m!2472745))

(assert (=> b!2033511 m!2475965))

(assert (=> b!2033511 m!2475975))

(assert (=> b!2033511 m!2475965))

(declare-fun m!2475977 () Bool)

(assert (=> b!2033511 m!2475977))

(assert (=> b!2031953 d!622674))

(declare-fun d!622676 () Bool)

(assert (=> d!622676 (= (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))) (v!27005 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 separatorToken!354)))))))

(assert (=> b!2031953 d!622676))

(assert (=> b!2031953 d!621826))

(assert (=> b!2031953 d!621816))

(assert (=> b!2031953 d!621820))

(declare-fun d!622678 () Bool)

(declare-fun lt!764148 () Int)

(assert (=> d!622678 (>= lt!764148 0)))

(declare-fun e!1284292 () Int)

(assert (=> d!622678 (= lt!764148 e!1284292)))

(declare-fun c!329302 () Bool)

(assert (=> d!622678 (= c!329302 ((_ is Nil!22221) (_2!11926 (get!7060 lt!763307))))))

(assert (=> d!622678 (= (size!17366 (_2!11926 (get!7060 lt!763307))) lt!764148)))

(declare-fun b!2033517 () Bool)

(assert (=> b!2033517 (= e!1284292 0)))

(declare-fun b!2033518 () Bool)

(assert (=> b!2033518 (= e!1284292 (+ 1 (size!17366 (t!190662 (_2!11926 (get!7060 lt!763307))))))))

(assert (= (and d!622678 c!329302) b!2033517))

(assert (= (and d!622678 (not c!329302)) b!2033518))

(declare-fun m!2475979 () Bool)

(assert (=> b!2033518 m!2475979))

(assert (=> b!2031833 d!622678))

(assert (=> b!2031833 d!622104))

(declare-fun d!622680 () Bool)

(declare-fun lt!764149 () Int)

(assert (=> d!622680 (>= lt!764149 0)))

(declare-fun e!1284293 () Int)

(assert (=> d!622680 (= lt!764149 e!1284293)))

(declare-fun c!329303 () Bool)

(assert (=> d!622680 (= c!329303 ((_ is Nil!22221) (++!6013 lt!763202 lt!763193)))))

(assert (=> d!622680 (= (size!17366 (++!6013 lt!763202 lt!763193)) lt!764149)))

(declare-fun b!2033519 () Bool)

(assert (=> b!2033519 (= e!1284293 0)))

(declare-fun b!2033520 () Bool)

(assert (=> b!2033520 (= e!1284293 (+ 1 (size!17366 (t!190662 (++!6013 lt!763202 lt!763193)))))))

(assert (= (and d!622680 c!329303) b!2033519))

(assert (= (and d!622680 (not c!329303)) b!2033520))

(declare-fun m!2475981 () Bool)

(assert (=> b!2033520 m!2475981))

(assert (=> b!2031833 d!622680))

(declare-fun d!622682 () Bool)

(assert (=> d!622682 (= (list!9077 lt!763446) (list!9081 (c!328893 lt!763446)))))

(declare-fun bs!421251 () Bool)

(assert (= bs!421251 d!622682))

(declare-fun m!2475983 () Bool)

(assert (=> bs!421251 m!2475983))

(assert (=> d!621876 d!622682))

(declare-fun d!622684 () Bool)

(declare-fun c!329304 () Bool)

(assert (=> d!622684 (= c!329304 ((_ is Cons!22223) (list!9080 lt!763188)))))

(declare-fun e!1284294 () List!22303)

(assert (=> d!622684 (= (printList!1126 thiss!23328 (list!9080 lt!763188)) e!1284294)))

(declare-fun b!2033521 () Bool)

(assert (=> b!2033521 (= e!1284294 (++!6013 (list!9077 (charsOf!2534 (h!27624 (list!9080 lt!763188)))) (printList!1126 thiss!23328 (t!190664 (list!9080 lt!763188)))))))

(declare-fun b!2033522 () Bool)

(assert (=> b!2033522 (= e!1284294 Nil!22221)))

(assert (= (and d!622684 c!329304) b!2033521))

(assert (= (and d!622684 (not c!329304)) b!2033522))

(declare-fun m!2475985 () Bool)

(assert (=> b!2033521 m!2475985))

(assert (=> b!2033521 m!2475985))

(declare-fun m!2475987 () Bool)

(assert (=> b!2033521 m!2475987))

(declare-fun m!2475989 () Bool)

(assert (=> b!2033521 m!2475989))

(assert (=> b!2033521 m!2475987))

(assert (=> b!2033521 m!2475989))

(declare-fun m!2475991 () Bool)

(assert (=> b!2033521 m!2475991))

(assert (=> d!621876 d!622684))

(declare-fun d!622686 () Bool)

(assert (=> d!622686 (= (list!9080 lt!763188) (list!9084 (c!328895 lt!763188)))))

(declare-fun bs!421252 () Bool)

(assert (= bs!421252 d!622686))

(assert (=> bs!421252 m!2475663))

(assert (=> d!621876 d!622686))

(assert (=> d!621876 d!621880))

(declare-fun bs!421253 () Bool)

(declare-fun d!622688 () Bool)

(assert (= bs!421253 (and d!622688 d!621812)))

(declare-fun lambda!76609 () Int)

(assert (=> bs!421253 (= (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (= lambda!76609 lambda!76563))))

(declare-fun bs!421254 () Bool)

(assert (= bs!421254 (and d!622688 d!622394)))

(assert (=> bs!421254 (= (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (= lambda!76609 lambda!76600))))

(declare-fun bs!421255 () Bool)

(assert (= bs!421255 (and d!622688 d!622528)))

(assert (=> bs!421255 (= (= (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (= lambda!76609 lambda!76602))))

(assert (=> d!622688 true))

(assert (=> d!622688 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354)))) (dynLambda!11072 order!14251 lambda!76609))))

(assert (=> d!622688 (= (equivClasses!1538 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354)))) (Forall2!647 lambda!76609))))

(declare-fun bs!421256 () Bool)

(assert (= bs!421256 d!622688))

(declare-fun m!2475993 () Bool)

(assert (=> bs!421256 m!2475993))

(assert (=> b!2031697 d!622688))

(declare-fun d!622690 () Bool)

(assert (=> d!622690 (dynLambda!11063 lambda!76560 (h!27624 (t!190664 tokens!598)))))

(declare-fun lt!764152 () Unit!36902)

(declare-fun choose!12412 (List!22305 Int Token!7540) Unit!36902)

(assert (=> d!622690 (= lt!764152 (choose!12412 (t!190664 tokens!598) lambda!76560 (h!27624 (t!190664 tokens!598))))))

(declare-fun e!1284297 () Bool)

(assert (=> d!622690 e!1284297))

(declare-fun res!891737 () Bool)

(assert (=> d!622690 (=> (not res!891737) (not e!1284297))))

(assert (=> d!622690 (= res!891737 (forall!4728 (t!190664 tokens!598) lambda!76560))))

(assert (=> d!622690 (= (forallContained!750 (t!190664 tokens!598) lambda!76560 (h!27624 (t!190664 tokens!598))) lt!764152)))

(declare-fun b!2033525 () Bool)

(declare-fun contains!4110 (List!22305 Token!7540) Bool)

(assert (=> b!2033525 (= e!1284297 (contains!4110 (t!190664 tokens!598) (h!27624 (t!190664 tokens!598))))))

(assert (= (and d!622690 res!891737) b!2033525))

(declare-fun b_lambda!68595 () Bool)

(assert (=> (not b_lambda!68595) (not d!622690)))

(declare-fun m!2475995 () Bool)

(assert (=> d!622690 m!2475995))

(declare-fun m!2475997 () Bool)

(assert (=> d!622690 m!2475997))

(declare-fun m!2475999 () Bool)

(assert (=> d!622690 m!2475999))

(declare-fun m!2476001 () Bool)

(assert (=> b!2033525 m!2476001))

(assert (=> b!2031902 d!622690))

(assert (=> b!2031902 d!622344))

(declare-fun b!2033526 () Bool)

(declare-fun res!891740 () Bool)

(declare-fun e!1284300 () Bool)

(assert (=> b!2033526 (=> (not res!891740) (not e!1284300))))

(declare-fun lt!764156 () Option!4674)

(assert (=> b!2033526 (= res!891740 (matchR!2685 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!764156)))) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764156))))))))

(declare-fun b!2033527 () Bool)

(declare-fun res!891741 () Bool)

(assert (=> b!2033527 (=> (not res!891741) (not e!1284300))))

(assert (=> b!2033527 (= res!891741 (= (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764156)))) (originalCharacters!4801 (_1!11926 (get!7060 lt!764156)))))))

(declare-fun b!2033528 () Bool)

(declare-fun e!1284298 () Option!4674)

(declare-fun lt!764157 () Option!4674)

(declare-fun lt!764155 () Option!4674)

(assert (=> b!2033528 (= e!1284298 (ite (and ((_ is None!4673) lt!764157) ((_ is None!4673) lt!764155)) None!4673 (ite ((_ is None!4673) lt!764155) lt!764157 (ite ((_ is None!4673) lt!764157) lt!764155 (ite (>= (size!17362 (_1!11926 (v!27006 lt!764157))) (size!17362 (_1!11926 (v!27006 lt!764155)))) lt!764157 lt!764155)))))))

(declare-fun call!124821 () Option!4674)

(assert (=> b!2033528 (= lt!764157 call!124821)))

(assert (=> b!2033528 (= lt!764155 (maxPrefix!2043 thiss!23328 (t!190663 rules!3198) (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343)))))

(declare-fun d!622692 () Bool)

(declare-fun e!1284299 () Bool)

(assert (=> d!622692 e!1284299))

(declare-fun res!891743 () Bool)

(assert (=> d!622692 (=> res!891743 e!1284299)))

(assert (=> d!622692 (= res!891743 (isEmpty!13882 lt!764156))))

(assert (=> d!622692 (= lt!764156 e!1284298)))

(declare-fun c!329305 () Bool)

(assert (=> d!622692 (= c!329305 (and ((_ is Cons!22222) rules!3198) ((_ is Nil!22222) (t!190663 rules!3198))))))

(declare-fun lt!764153 () Unit!36902)

(declare-fun lt!764154 () Unit!36902)

(assert (=> d!622692 (= lt!764153 lt!764154)))

(assert (=> d!622692 (isPrefix!1987 (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343) (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343))))

(assert (=> d!622692 (= lt!764154 (lemmaIsPrefixRefl!1305 (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343) (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343)))))

(assert (=> d!622692 (rulesValidInductive!1386 thiss!23328 rules!3198)))

(assert (=> d!622692 (= (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343)) lt!764156)))

(declare-fun b!2033529 () Bool)

(declare-fun res!891738 () Bool)

(assert (=> b!2033529 (=> (not res!891738) (not e!1284300))))

(assert (=> b!2033529 (= res!891738 (= (value!125420 (_1!11926 (get!7060 lt!764156))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!764156)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!764156)))))))))

(declare-fun b!2033530 () Bool)

(assert (=> b!2033530 (= e!1284298 call!124821)))

(declare-fun b!2033531 () Bool)

(declare-fun res!891742 () Bool)

(assert (=> b!2033531 (=> (not res!891742) (not e!1284300))))

(assert (=> b!2033531 (= res!891742 (< (size!17366 (_2!11926 (get!7060 lt!764156))) (size!17366 (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343))))))

(declare-fun b!2033532 () Bool)

(assert (=> b!2033532 (= e!1284300 (contains!4106 rules!3198 (rule!6229 (_1!11926 (get!7060 lt!764156)))))))

(declare-fun b!2033533 () Bool)

(declare-fun res!891744 () Bool)

(assert (=> b!2033533 (=> (not res!891744) (not e!1284300))))

(assert (=> b!2033533 (= res!891744 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764156)))) (_2!11926 (get!7060 lt!764156))) (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343)))))

(declare-fun b!2033534 () Bool)

(assert (=> b!2033534 (= e!1284299 e!1284300)))

(declare-fun res!891739 () Bool)

(assert (=> b!2033534 (=> (not res!891739) (not e!1284300))))

(assert (=> b!2033534 (= res!891739 (isDefined!3960 lt!764156))))

(declare-fun bm!124816 () Bool)

(assert (=> bm!124816 (= call!124821 (maxPrefixOneRule!1269 thiss!23328 (h!27623 rules!3198) (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343)))))

(assert (= (and d!622692 c!329305) b!2033530))

(assert (= (and d!622692 (not c!329305)) b!2033528))

(assert (= (or b!2033530 b!2033528) bm!124816))

(assert (= (and d!622692 (not res!891743)) b!2033534))

(assert (= (and b!2033534 res!891739) b!2033527))

(assert (= (and b!2033527 res!891741) b!2033531))

(assert (= (and b!2033531 res!891742) b!2033533))

(assert (= (and b!2033533 res!891744) b!2033529))

(assert (= (and b!2033529 res!891738) b!2033526))

(assert (= (and b!2033526 res!891740) b!2033532))

(declare-fun m!2476003 () Bool)

(assert (=> b!2033532 m!2476003))

(declare-fun m!2476005 () Bool)

(assert (=> b!2033532 m!2476005))

(assert (=> b!2033526 m!2476003))

(declare-fun m!2476007 () Bool)

(assert (=> b!2033526 m!2476007))

(assert (=> b!2033526 m!2476007))

(declare-fun m!2476009 () Bool)

(assert (=> b!2033526 m!2476009))

(assert (=> b!2033526 m!2476009))

(declare-fun m!2476011 () Bool)

(assert (=> b!2033526 m!2476011))

(assert (=> b!2033531 m!2476003))

(declare-fun m!2476013 () Bool)

(assert (=> b!2033531 m!2476013))

(assert (=> b!2033531 m!2473201))

(declare-fun m!2476015 () Bool)

(assert (=> b!2033531 m!2476015))

(assert (=> b!2033527 m!2476003))

(assert (=> b!2033527 m!2476007))

(assert (=> b!2033527 m!2476007))

(assert (=> b!2033527 m!2476009))

(assert (=> b!2033533 m!2476003))

(assert (=> b!2033533 m!2476007))

(assert (=> b!2033533 m!2476007))

(assert (=> b!2033533 m!2476009))

(assert (=> b!2033533 m!2476009))

(declare-fun m!2476017 () Bool)

(assert (=> b!2033533 m!2476017))

(assert (=> b!2033528 m!2473201))

(declare-fun m!2476019 () Bool)

(assert (=> b!2033528 m!2476019))

(declare-fun m!2476021 () Bool)

(assert (=> d!622692 m!2476021))

(assert (=> d!622692 m!2473201))

(assert (=> d!622692 m!2473201))

(declare-fun m!2476023 () Bool)

(assert (=> d!622692 m!2476023))

(assert (=> d!622692 m!2473201))

(assert (=> d!622692 m!2473201))

(declare-fun m!2476025 () Bool)

(assert (=> d!622692 m!2476025))

(assert (=> d!622692 m!2472991))

(assert (=> b!2033529 m!2476003))

(declare-fun m!2476027 () Bool)

(assert (=> b!2033529 m!2476027))

(assert (=> b!2033529 m!2476027))

(declare-fun m!2476029 () Bool)

(assert (=> b!2033529 m!2476029))

(assert (=> bm!124816 m!2473201))

(declare-fun m!2476031 () Bool)

(assert (=> bm!124816 m!2476031))

(declare-fun m!2476033 () Bool)

(assert (=> b!2033534 m!2476033))

(assert (=> b!2031902 d!622692))

(declare-fun e!1284302 () Bool)

(declare-fun b!2033538 () Bool)

(declare-fun lt!764158 () List!22303)

(assert (=> b!2033538 (= e!1284302 (or (not (= lt!763343 Nil!22221)) (= lt!764158 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))))))))

(declare-fun b!2033537 () Bool)

(declare-fun res!891746 () Bool)

(assert (=> b!2033537 (=> (not res!891746) (not e!1284302))))

(assert (=> b!2033537 (= res!891746 (= (size!17366 lt!764158) (+ (size!17366 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598))))) (size!17366 lt!763343))))))

(declare-fun b!2033535 () Bool)

(declare-fun e!1284301 () List!22303)

(assert (=> b!2033535 (= e!1284301 lt!763343)))

(declare-fun b!2033536 () Bool)

(assert (=> b!2033536 (= e!1284301 (Cons!22221 (h!27622 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598))))) (++!6013 (t!190662 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598))))) lt!763343)))))

(declare-fun d!622694 () Bool)

(assert (=> d!622694 e!1284302))

(declare-fun res!891745 () Bool)

(assert (=> d!622694 (=> (not res!891745) (not e!1284302))))

(assert (=> d!622694 (= res!891745 (= (content!3285 lt!764158) ((_ map or) (content!3285 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598))))) (content!3285 lt!763343))))))

(assert (=> d!622694 (= lt!764158 e!1284301)))

(declare-fun c!329306 () Bool)

(assert (=> d!622694 (= c!329306 ((_ is Nil!22221) (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598))))))))

(assert (=> d!622694 (= (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 tokens!598)))) lt!763343) lt!764158)))

(assert (= (and d!622694 c!329306) b!2033535))

(assert (= (and d!622694 (not c!329306)) b!2033536))

(assert (= (and d!622694 res!891745) b!2033537))

(assert (= (and b!2033537 res!891746) b!2033538))

(declare-fun m!2476035 () Bool)

(assert (=> b!2033537 m!2476035))

(assert (=> b!2033537 m!2473207))

(declare-fun m!2476037 () Bool)

(assert (=> b!2033537 m!2476037))

(assert (=> b!2033537 m!2475087))

(declare-fun m!2476039 () Bool)

(assert (=> b!2033536 m!2476039))

(declare-fun m!2476041 () Bool)

(assert (=> d!622694 m!2476041))

(assert (=> d!622694 m!2473207))

(declare-fun m!2476043 () Bool)

(assert (=> d!622694 m!2476043))

(assert (=> d!622694 m!2475095))

(assert (=> b!2031902 d!622694))

(declare-fun bs!421257 () Bool)

(declare-fun b!2033540 () Bool)

(assert (= bs!421257 (and b!2033540 b!2031524)))

(declare-fun lambda!76610 () Int)

(assert (=> bs!421257 (not (= lambda!76610 lambda!76551))))

(declare-fun bs!421258 () Bool)

(assert (= bs!421258 (and b!2033540 b!2031902)))

(assert (=> bs!421258 (= lambda!76610 lambda!76560)))

(declare-fun bs!421259 () Bool)

(assert (= bs!421259 (and b!2033540 d!621910)))

(assert (=> bs!421259 (= lambda!76610 lambda!76575)))

(declare-fun bs!421260 () Bool)

(assert (= bs!421260 (and b!2033540 d!622536)))

(assert (=> bs!421260 (= lambda!76610 lambda!76603)))

(declare-fun b!2033549 () Bool)

(declare-fun e!1284309 () Bool)

(assert (=> b!2033549 (= e!1284309 true)))

(declare-fun b!2033548 () Bool)

(declare-fun e!1284308 () Bool)

(assert (=> b!2033548 (= e!1284308 e!1284309)))

(declare-fun b!2033547 () Bool)

(declare-fun e!1284307 () Bool)

(assert (=> b!2033547 (= e!1284307 e!1284308)))

(assert (=> b!2033540 e!1284307))

(assert (= b!2033548 b!2033549))

(assert (= b!2033547 b!2033548))

(assert (= (and b!2033540 ((_ is Cons!22222) rules!3198)) b!2033547))

(assert (=> b!2033549 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76610))))

(assert (=> b!2033549 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (h!27623 rules!3198)))) (dynLambda!11071 order!14249 lambda!76610))))

(assert (=> b!2033540 true))

(declare-fun call!124825 () List!22303)

(declare-fun call!124824 () BalanceConc!14684)

(declare-fun c!329308 () Bool)

(declare-fun bm!124817 () Bool)

(declare-fun call!124823 () BalanceConc!14684)

(assert (=> bm!124817 (= call!124825 (list!9077 (ite c!329308 call!124824 call!124823)))))

(declare-fun b!2033539 () Bool)

(declare-fun e!1284305 () List!22303)

(assert (=> b!2033539 (= e!1284305 Nil!22221)))

(declare-fun e!1284304 () List!22303)

(assert (=> b!2033540 (= e!1284305 e!1284304)))

(declare-fun lt!764159 () Unit!36902)

(assert (=> b!2033540 (= lt!764159 (forallContained!750 (t!190664 (t!190664 tokens!598)) lambda!76610 (h!27624 (t!190664 (t!190664 tokens!598)))))))

(declare-fun lt!764160 () List!22303)

(assert (=> b!2033540 (= lt!764160 (printWithSeparatorTokenWhenNeededList!636 thiss!23328 rules!3198 (t!190664 (t!190664 (t!190664 tokens!598))) separatorToken!354))))

(declare-fun lt!764161 () Option!4674)

(assert (=> b!2033540 (= lt!764161 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 (list!9077 (charsOf!2534 (h!27624 (t!190664 (t!190664 tokens!598))))) lt!764160)))))

(assert (=> b!2033540 (= c!329308 (and ((_ is Some!4673) lt!764161) (= (_1!11926 (v!27006 lt!764161)) (h!27624 (t!190664 (t!190664 tokens!598))))))))

(declare-fun d!622696 () Bool)

(declare-fun c!329309 () Bool)

(assert (=> d!622696 (= c!329309 ((_ is Cons!22223) (t!190664 (t!190664 tokens!598))))))

(assert (=> d!622696 (= (printWithSeparatorTokenWhenNeededList!636 thiss!23328 rules!3198 (t!190664 (t!190664 tokens!598)) separatorToken!354) e!1284305)))

(declare-fun b!2033541 () Bool)

(declare-fun e!1284306 () List!22303)

(assert (=> b!2033541 (= e!1284306 call!124825)))

(declare-fun b!2033542 () Bool)

(declare-fun e!1284303 () List!22303)

(declare-fun call!124822 () List!22303)

(assert (=> b!2033542 (= e!1284303 (++!6013 call!124822 lt!764160))))

(declare-fun bm!124818 () Bool)

(declare-fun call!124826 () List!22303)

(assert (=> bm!124818 (= call!124826 call!124825)))

(declare-fun b!2033543 () Bool)

(assert (=> b!2033543 (= e!1284303 Nil!22221)))

(assert (=> b!2033543 (= (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 (t!190664 tokens!598))))) (printTailRec!1075 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 (t!190664 tokens!598)))) 0 (BalanceConc!14685 Empty!7434)))))

(declare-fun lt!764162 () Unit!36902)

(declare-fun Unit!36920 () Unit!36902)

(assert (=> b!2033543 (= lt!764162 Unit!36920)))

(declare-fun lt!764164 () Unit!36902)

(assert (=> b!2033543 (= lt!764164 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!781 thiss!23328 rules!3198 call!124826 lt!764160))))

(assert (=> b!2033543 false))

(declare-fun lt!764163 () Unit!36902)

(declare-fun Unit!36921 () Unit!36902)

(assert (=> b!2033543 (= lt!764163 Unit!36921)))

(declare-fun c!329307 () Bool)

(declare-fun bm!124819 () Bool)

(assert (=> bm!124819 (= call!124824 (charsOf!2534 (ite c!329308 (h!27624 (t!190664 (t!190664 tokens!598))) (ite c!329307 separatorToken!354 (h!27624 (t!190664 (t!190664 tokens!598)))))))))

(declare-fun b!2033544 () Bool)

(assert (=> b!2033544 (= e!1284304 call!124822)))

(declare-fun b!2033545 () Bool)

(assert (=> b!2033545 (= c!329307 (and ((_ is Some!4673) lt!764161) (not (= (_1!11926 (v!27006 lt!764161)) (h!27624 (t!190664 (t!190664 tokens!598)))))))))

(assert (=> b!2033545 (= e!1284304 e!1284303)))

(declare-fun bm!124820 () Bool)

(assert (=> bm!124820 (= call!124823 call!124824)))

(declare-fun b!2033546 () Bool)

(assert (=> b!2033546 (= e!1284306 (list!9077 (charsOf!2534 (h!27624 (t!190664 (t!190664 tokens!598))))))))

(declare-fun bm!124821 () Bool)

(declare-fun c!329310 () Bool)

(assert (=> bm!124821 (= c!329310 c!329308)))

(assert (=> bm!124821 (= call!124822 (++!6013 e!1284306 (ite c!329308 lt!764160 call!124826)))))

(assert (= (and d!622696 c!329309) b!2033540))

(assert (= (and d!622696 (not c!329309)) b!2033539))

(assert (= (and b!2033540 c!329308) b!2033544))

(assert (= (and b!2033540 (not c!329308)) b!2033545))

(assert (= (and b!2033545 c!329307) b!2033542))

(assert (= (and b!2033545 (not c!329307)) b!2033543))

(assert (= (or b!2033542 b!2033543) bm!124820))

(assert (= (or b!2033542 b!2033543) bm!124818))

(assert (= (or b!2033544 bm!124820) bm!124819))

(assert (= (or b!2033544 bm!124818) bm!124817))

(assert (= (or b!2033544 b!2033542) bm!124821))

(assert (= (and bm!124821 c!329310) b!2033541))

(assert (= (and bm!124821 (not c!329310)) b!2033546))

(declare-fun m!2476045 () Bool)

(assert (=> bm!124819 m!2476045))

(declare-fun m!2476047 () Bool)

(assert (=> b!2033540 m!2476047))

(declare-fun m!2476049 () Bool)

(assert (=> b!2033540 m!2476049))

(declare-fun m!2476051 () Bool)

(assert (=> b!2033540 m!2476051))

(declare-fun m!2476053 () Bool)

(assert (=> b!2033540 m!2476053))

(assert (=> b!2033540 m!2476047))

(declare-fun m!2476055 () Bool)

(assert (=> b!2033540 m!2476055))

(declare-fun m!2476057 () Bool)

(assert (=> b!2033540 m!2476057))

(assert (=> b!2033540 m!2476051))

(assert (=> b!2033540 m!2476053))

(declare-fun m!2476059 () Bool)

(assert (=> b!2033542 m!2476059))

(assert (=> b!2033546 m!2476051))

(assert (=> b!2033546 m!2476051))

(assert (=> b!2033546 m!2476053))

(declare-fun m!2476061 () Bool)

(assert (=> b!2033543 m!2476061))

(assert (=> b!2033543 m!2476061))

(declare-fun m!2476063 () Bool)

(assert (=> b!2033543 m!2476063))

(assert (=> b!2033543 m!2476061))

(declare-fun m!2476065 () Bool)

(assert (=> b!2033543 m!2476065))

(declare-fun m!2476067 () Bool)

(assert (=> b!2033543 m!2476067))

(declare-fun m!2476069 () Bool)

(assert (=> bm!124821 m!2476069))

(declare-fun m!2476071 () Bool)

(assert (=> bm!124817 m!2476071))

(assert (=> b!2031902 d!622696))

(assert (=> b!2031902 d!622342))

(declare-fun b!2033558 () Bool)

(declare-fun e!1284316 () Bool)

(declare-fun call!124829 () Bool)

(assert (=> b!2033558 (= e!1284316 call!124829)))

(declare-fun b!2033559 () Bool)

(declare-fun e!1284318 () Bool)

(assert (=> b!2033559 (= e!1284318 call!124829)))

(declare-fun d!622698 () Bool)

(declare-fun c!329313 () Bool)

(assert (=> d!622698 (= c!329313 (and ((_ is Cons!22222) rules!3198) (not (= (isSeparator!3994 (h!27623 rules!3198)) (isSeparator!3994 (h!27623 rules!3198))))))))

(declare-fun e!1284317 () Bool)

(assert (=> d!622698 (= (ruleDisjointCharsFromAllFromOtherType!495 (h!27623 rules!3198) rules!3198) e!1284317)))

(declare-fun b!2033560 () Bool)

(assert (=> b!2033560 (= e!1284317 e!1284318)))

(declare-fun res!891752 () Bool)

(assert (=> b!2033560 (= res!891752 (not ((_ is Cons!22222) rules!3198)))))

(assert (=> b!2033560 (=> res!891752 e!1284318)))

(declare-fun b!2033561 () Bool)

(assert (=> b!2033561 (= e!1284317 e!1284316)))

(declare-fun res!891751 () Bool)

(declare-fun rulesUseDisjointChars!228 (Rule!7788 Rule!7788) Bool)

(assert (=> b!2033561 (= res!891751 (rulesUseDisjointChars!228 (h!27623 rules!3198) (h!27623 rules!3198)))))

(assert (=> b!2033561 (=> (not res!891751) (not e!1284316))))

(declare-fun bm!124824 () Bool)

(assert (=> bm!124824 (= call!124829 (ruleDisjointCharsFromAllFromOtherType!495 (h!27623 rules!3198) (t!190663 rules!3198)))))

(assert (= (and d!622698 c!329313) b!2033561))

(assert (= (and d!622698 (not c!329313)) b!2033560))

(assert (= (and b!2033561 res!891751) b!2033558))

(assert (= (and b!2033560 (not res!891752)) b!2033559))

(assert (= (or b!2033558 b!2033559) bm!124824))

(declare-fun m!2476073 () Bool)

(assert (=> b!2033561 m!2476073))

(declare-fun m!2476075 () Bool)

(assert (=> bm!124824 m!2476075))

(assert (=> b!2031719 d!622698))

(declare-fun b!2033562 () Bool)

(declare-fun e!1284320 () Bool)

(declare-fun e!1284322 () Bool)

(assert (=> b!2033562 (= e!1284320 e!1284322)))

(declare-fun res!891758 () Bool)

(assert (=> b!2033562 (=> (not res!891758) (not e!1284322))))

(declare-fun lt!764165 () Option!4674)

(assert (=> b!2033562 (= res!891758 (matchR!2685 (regex!3994 (h!27623 rules!3198)) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764165))))))))

(declare-fun b!2033563 () Bool)

(declare-fun e!1284319 () Option!4674)

(declare-fun lt!764169 () tuple2!20926)

(assert (=> b!2033563 (= e!1284319 (Some!4673 (tuple2!20915 (Token!7541 (apply!5857 (transformation!3994 (h!27623 rules!3198)) (seqFromList!2848 (_1!11932 lt!764169))) (h!27623 rules!3198) (size!17368 (seqFromList!2848 (_1!11932 lt!764169))) (_1!11932 lt!764169)) (_2!11932 lt!764169))))))

(declare-fun lt!764167 () Unit!36902)

(assert (=> b!2033563 (= lt!764167 (longestMatchIsAcceptedByMatchOrIsEmpty!541 (regex!3994 (h!27623 rules!3198)) (++!6013 lt!763202 lt!763193)))))

(declare-fun res!891754 () Bool)

(assert (=> b!2033563 (= res!891754 (isEmpty!13880 (_1!11932 (findLongestMatchInner!557 (regex!3994 (h!27623 rules!3198)) Nil!22221 (size!17366 Nil!22221) (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193) (size!17366 (++!6013 lt!763202 lt!763193))))))))

(declare-fun e!1284321 () Bool)

(assert (=> b!2033563 (=> res!891754 e!1284321)))

(assert (=> b!2033563 e!1284321))

(declare-fun lt!764166 () Unit!36902)

(assert (=> b!2033563 (= lt!764166 lt!764167)))

(declare-fun lt!764168 () Unit!36902)

(assert (=> b!2033563 (= lt!764168 (lemmaSemiInverse!951 (transformation!3994 (h!27623 rules!3198)) (seqFromList!2848 (_1!11932 lt!764169))))))

(declare-fun b!2033564 () Bool)

(declare-fun res!891757 () Bool)

(assert (=> b!2033564 (=> (not res!891757) (not e!1284322))))

(assert (=> b!2033564 (= res!891757 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764165)))) (_2!11926 (get!7060 lt!764165))) (++!6013 lt!763202 lt!763193)))))

(declare-fun d!622700 () Bool)

(assert (=> d!622700 e!1284320))

(declare-fun res!891755 () Bool)

(assert (=> d!622700 (=> res!891755 e!1284320)))

(assert (=> d!622700 (= res!891755 (isEmpty!13882 lt!764165))))

(assert (=> d!622700 (= lt!764165 e!1284319)))

(declare-fun c!329314 () Bool)

(assert (=> d!622700 (= c!329314 (isEmpty!13880 (_1!11932 lt!764169)))))

(assert (=> d!622700 (= lt!764169 (findLongestMatch!484 (regex!3994 (h!27623 rules!3198)) (++!6013 lt!763202 lt!763193)))))

(assert (=> d!622700 (ruleValid!1225 thiss!23328 (h!27623 rules!3198))))

(assert (=> d!622700 (= (maxPrefixOneRule!1269 thiss!23328 (h!27623 rules!3198) (++!6013 lt!763202 lt!763193)) lt!764165)))

(declare-fun b!2033565 () Bool)

(assert (=> b!2033565 (= e!1284319 None!4673)))

(declare-fun b!2033566 () Bool)

(declare-fun res!891759 () Bool)

(assert (=> b!2033566 (=> (not res!891759) (not e!1284322))))

(assert (=> b!2033566 (= res!891759 (= (rule!6229 (_1!11926 (get!7060 lt!764165))) (h!27623 rules!3198)))))

(declare-fun b!2033567 () Bool)

(declare-fun res!891756 () Bool)

(assert (=> b!2033567 (=> (not res!891756) (not e!1284322))))

(assert (=> b!2033567 (= res!891756 (< (size!17366 (_2!11926 (get!7060 lt!764165))) (size!17366 (++!6013 lt!763202 lt!763193))))))

(declare-fun b!2033568 () Bool)

(assert (=> b!2033568 (= e!1284322 (= (size!17362 (_1!11926 (get!7060 lt!764165))) (size!17366 (originalCharacters!4801 (_1!11926 (get!7060 lt!764165))))))))

(declare-fun b!2033569 () Bool)

(assert (=> b!2033569 (= e!1284321 (matchR!2685 (regex!3994 (h!27623 rules!3198)) (_1!11932 (findLongestMatchInner!557 (regex!3994 (h!27623 rules!3198)) Nil!22221 (size!17366 Nil!22221) (++!6013 lt!763202 lt!763193) (++!6013 lt!763202 lt!763193) (size!17366 (++!6013 lt!763202 lt!763193))))))))

(declare-fun b!2033570 () Bool)

(declare-fun res!891753 () Bool)

(assert (=> b!2033570 (=> (not res!891753) (not e!1284322))))

(assert (=> b!2033570 (= res!891753 (= (value!125420 (_1!11926 (get!7060 lt!764165))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!764165)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!764165)))))))))

(assert (= (and d!622700 c!329314) b!2033565))

(assert (= (and d!622700 (not c!329314)) b!2033563))

(assert (= (and b!2033563 (not res!891754)) b!2033569))

(assert (= (and d!622700 (not res!891755)) b!2033562))

(assert (= (and b!2033562 res!891758) b!2033564))

(assert (= (and b!2033564 res!891757) b!2033567))

(assert (= (and b!2033567 res!891756) b!2033566))

(assert (= (and b!2033566 res!891759) b!2033570))

(assert (= (and b!2033570 res!891753) b!2033568))

(declare-fun m!2476077 () Bool)

(assert (=> b!2033567 m!2476077))

(declare-fun m!2476079 () Bool)

(assert (=> b!2033567 m!2476079))

(assert (=> b!2033567 m!2472713))

(assert (=> b!2033567 m!2473115))

(assert (=> b!2033570 m!2476077))

(declare-fun m!2476081 () Bool)

(assert (=> b!2033570 m!2476081))

(assert (=> b!2033570 m!2476081))

(declare-fun m!2476083 () Bool)

(assert (=> b!2033570 m!2476083))

(assert (=> b!2033564 m!2476077))

(declare-fun m!2476085 () Bool)

(assert (=> b!2033564 m!2476085))

(assert (=> b!2033564 m!2476085))

(declare-fun m!2476087 () Bool)

(assert (=> b!2033564 m!2476087))

(assert (=> b!2033564 m!2476087))

(declare-fun m!2476089 () Bool)

(assert (=> b!2033564 m!2476089))

(assert (=> b!2033569 m!2475885))

(assert (=> b!2033569 m!2472713))

(assert (=> b!2033569 m!2473115))

(assert (=> b!2033569 m!2475885))

(assert (=> b!2033569 m!2472713))

(assert (=> b!2033569 m!2472713))

(assert (=> b!2033569 m!2473115))

(declare-fun m!2476091 () Bool)

(assert (=> b!2033569 m!2476091))

(declare-fun m!2476093 () Bool)

(assert (=> b!2033569 m!2476093))

(declare-fun m!2476095 () Bool)

(assert (=> b!2033563 m!2476095))

(declare-fun m!2476097 () Bool)

(assert (=> b!2033563 m!2476097))

(assert (=> b!2033563 m!2476095))

(declare-fun m!2476099 () Bool)

(assert (=> b!2033563 m!2476099))

(assert (=> b!2033563 m!2476095))

(declare-fun m!2476101 () Bool)

(assert (=> b!2033563 m!2476101))

(assert (=> b!2033563 m!2472713))

(assert (=> b!2033563 m!2473115))

(assert (=> b!2033563 m!2476095))

(assert (=> b!2033563 m!2472713))

(declare-fun m!2476103 () Bool)

(assert (=> b!2033563 m!2476103))

(declare-fun m!2476105 () Bool)

(assert (=> b!2033563 m!2476105))

(assert (=> b!2033563 m!2475885))

(assert (=> b!2033563 m!2472713))

(assert (=> b!2033563 m!2472713))

(assert (=> b!2033563 m!2473115))

(assert (=> b!2033563 m!2476091))

(assert (=> b!2033563 m!2475885))

(assert (=> b!2033562 m!2476077))

(assert (=> b!2033562 m!2476085))

(assert (=> b!2033562 m!2476085))

(assert (=> b!2033562 m!2476087))

(assert (=> b!2033562 m!2476087))

(declare-fun m!2476107 () Bool)

(assert (=> b!2033562 m!2476107))

(assert (=> b!2033566 m!2476077))

(assert (=> b!2033568 m!2476077))

(declare-fun m!2476109 () Bool)

(assert (=> b!2033568 m!2476109))

(declare-fun m!2476111 () Bool)

(assert (=> d!622700 m!2476111))

(declare-fun m!2476113 () Bool)

(assert (=> d!622700 m!2476113))

(assert (=> d!622700 m!2472713))

(declare-fun m!2476115 () Bool)

(assert (=> d!622700 m!2476115))

(assert (=> d!622700 m!2474927))

(assert (=> bm!124695 d!622700))

(declare-fun d!622702 () Bool)

(assert (=> d!622702 (= (inv!29404 (tag!4482 (h!27623 (t!190663 rules!3198)))) (= (mod (str.len (value!125419 (tag!4482 (h!27623 (t!190663 rules!3198))))) 2) 0))))

(assert (=> b!2032232 d!622702))

(declare-fun d!622704 () Bool)

(declare-fun res!891760 () Bool)

(declare-fun e!1284323 () Bool)

(assert (=> d!622704 (=> (not res!891760) (not e!1284323))))

(assert (=> d!622704 (= res!891760 (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198))))))))

(assert (=> d!622704 (= (inv!29407 (transformation!3994 (h!27623 (t!190663 rules!3198)))) e!1284323)))

(declare-fun b!2033571 () Bool)

(assert (=> b!2033571 (= e!1284323 (equivClasses!1538 (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198))))))))

(assert (= (and d!622704 res!891760) b!2033571))

(declare-fun m!2476117 () Bool)

(assert (=> d!622704 m!2476117))

(declare-fun m!2476119 () Bool)

(assert (=> b!2033571 m!2476119))

(assert (=> b!2032232 d!622704))

(declare-fun d!622706 () Bool)

(assert (=> d!622706 (= (isEmpty!13881 lt!763200) (not ((_ is Some!4672) lt!763200)))))

(assert (=> d!621814 d!622706))

(declare-fun d!622708 () Bool)

(declare-fun lt!764170 () Token!7540)

(assert (=> d!622708 (= lt!764170 (apply!5859 (list!9080 (_1!11925 lt!763221)) 0))))

(assert (=> d!622708 (= lt!764170 (apply!5861 (c!328895 (_1!11925 lt!763221)) 0))))

(declare-fun e!1284324 () Bool)

(assert (=> d!622708 e!1284324))

(declare-fun res!891761 () Bool)

(assert (=> d!622708 (=> (not res!891761) (not e!1284324))))

(assert (=> d!622708 (= res!891761 (<= 0 0))))

(assert (=> d!622708 (= (apply!5856 (_1!11925 lt!763221) 0) lt!764170)))

(declare-fun b!2033572 () Bool)

(assert (=> b!2033572 (= e!1284324 (< 0 (size!17365 (_1!11925 lt!763221))))))

(assert (= (and d!622708 res!891761) b!2033572))

(assert (=> d!622708 m!2474891))

(assert (=> d!622708 m!2474891))

(declare-fun m!2476121 () Bool)

(assert (=> d!622708 m!2476121))

(declare-fun m!2476123 () Bool)

(assert (=> d!622708 m!2476123))

(assert (=> b!2033572 m!2472839))

(assert (=> b!2031626 d!622708))

(declare-fun d!622710 () Bool)

(assert (=> d!622710 (= (inv!15 (value!125420 (h!27624 tokens!598))) (= (charsToBigInt!0 (text!29359 (value!125420 (h!27624 tokens!598))) 0) (value!125415 (value!125420 (h!27624 tokens!598)))))))

(declare-fun bs!421261 () Bool)

(assert (= bs!421261 d!622710))

(declare-fun m!2476125 () Bool)

(assert (=> bs!421261 m!2476125))

(assert (=> b!2031692 d!622710))

(declare-fun d!622712 () Bool)

(declare-fun lt!764171 () Bool)

(assert (=> d!622712 (= lt!764171 (select (content!3287 rules!3198) (get!7059 lt!763361)))))

(declare-fun e!1284325 () Bool)

(assert (=> d!622712 (= lt!764171 e!1284325)))

(declare-fun res!891763 () Bool)

(assert (=> d!622712 (=> (not res!891763) (not e!1284325))))

(assert (=> d!622712 (= res!891763 ((_ is Cons!22222) rules!3198))))

(assert (=> d!622712 (= (contains!4106 rules!3198 (get!7059 lt!763361)) lt!764171)))

(declare-fun b!2033573 () Bool)

(declare-fun e!1284326 () Bool)

(assert (=> b!2033573 (= e!1284325 e!1284326)))

(declare-fun res!891762 () Bool)

(assert (=> b!2033573 (=> res!891762 e!1284326)))

(assert (=> b!2033573 (= res!891762 (= (h!27623 rules!3198) (get!7059 lt!763361)))))

(declare-fun b!2033574 () Bool)

(assert (=> b!2033574 (= e!1284326 (contains!4106 (t!190663 rules!3198) (get!7059 lt!763361)))))

(assert (= (and d!622712 res!891763) b!2033573))

(assert (= (and b!2033573 (not res!891762)) b!2033574))

(assert (=> d!622712 m!2474271))

(assert (=> d!622712 m!2473241))

(declare-fun m!2476127 () Bool)

(assert (=> d!622712 m!2476127))

(assert (=> b!2033574 m!2473241))

(declare-fun m!2476129 () Bool)

(assert (=> b!2033574 m!2476129))

(assert (=> b!2031943 d!622712))

(assert (=> b!2031943 d!622410))

(declare-fun d!622714 () Bool)

(assert (=> d!622714 (= (nullable!1655 (regex!3994 lt!763203)) (nullableFct!384 (regex!3994 lt!763203)))))

(declare-fun bs!421262 () Bool)

(assert (= bs!421262 d!622714))

(declare-fun m!2476131 () Bool)

(assert (=> bs!421262 m!2476131))

(assert (=> b!2031680 d!622714))

(declare-fun b!2033575 () Bool)

(declare-fun e!1284330 () Bool)

(declare-fun lt!764172 () Bool)

(assert (=> b!2033575 (= e!1284330 (not lt!764172))))

(declare-fun b!2033576 () Bool)

(declare-fun e!1284333 () Bool)

(assert (=> b!2033576 (= e!1284333 e!1284330)))

(declare-fun c!329316 () Bool)

(assert (=> b!2033576 (= c!329316 ((_ is EmptyLang!5419) (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))))))

(declare-fun b!2033577 () Bool)

(declare-fun e!1284331 () Bool)

(assert (=> b!2033577 (= e!1284331 (nullable!1655 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))))))

(declare-fun b!2033579 () Bool)

(declare-fun res!891769 () Bool)

(declare-fun e!1284332 () Bool)

(assert (=> b!2033579 (=> res!891769 e!1284332)))

(declare-fun e!1284328 () Bool)

(assert (=> b!2033579 (= res!891769 e!1284328)))

(declare-fun res!891765 () Bool)

(assert (=> b!2033579 (=> (not res!891765) (not e!1284328))))

(assert (=> b!2033579 (= res!891765 lt!764172)))

(declare-fun bm!124825 () Bool)

(declare-fun call!124830 () Bool)

(assert (=> bm!124825 (= call!124830 (isEmpty!13880 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))))))

(declare-fun b!2033580 () Bool)

(declare-fun res!891768 () Bool)

(declare-fun e!1284329 () Bool)

(assert (=> b!2033580 (=> res!891768 e!1284329)))

(assert (=> b!2033580 (= res!891768 (not (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))))))))

(declare-fun b!2033581 () Bool)

(declare-fun e!1284327 () Bool)

(assert (=> b!2033581 (= e!1284332 e!1284327)))

(declare-fun res!891764 () Bool)

(assert (=> b!2033581 (=> (not res!891764) (not e!1284327))))

(assert (=> b!2033581 (= res!891764 (not lt!764172))))

(declare-fun b!2033582 () Bool)

(assert (=> b!2033582 (= e!1284327 e!1284329)))

(declare-fun res!891770 () Bool)

(assert (=> b!2033582 (=> res!891770 e!1284329)))

(assert (=> b!2033582 (= res!891770 call!124830)))

(declare-fun d!622716 () Bool)

(assert (=> d!622716 e!1284333))

(declare-fun c!329315 () Bool)

(assert (=> d!622716 (= c!329315 ((_ is EmptyExpr!5419) (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))))))

(assert (=> d!622716 (= lt!764172 e!1284331)))

(declare-fun c!329317 () Bool)

(assert (=> d!622716 (= c!329317 (isEmpty!13880 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))))))

(assert (=> d!622716 (validRegex!2181 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))))

(assert (=> d!622716 (= (matchR!2685 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))) lt!764172)))

(declare-fun b!2033578 () Bool)

(assert (=> b!2033578 (= e!1284328 (= (head!4589 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))) (c!328894 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))))))

(declare-fun b!2033583 () Bool)

(assert (=> b!2033583 (= e!1284331 (matchR!2685 (derivativeStep!1414 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))) (head!4589 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))))) (tail!3064 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))))))))

(declare-fun b!2033584 () Bool)

(assert (=> b!2033584 (= e!1284329 (not (= (head!4589 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244))))) (c!328894 (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244))))))))))

(declare-fun b!2033585 () Bool)

(declare-fun res!891771 () Bool)

(assert (=> b!2033585 (=> (not res!891771) (not e!1284328))))

(assert (=> b!2033585 (= res!891771 (not call!124830))))

(declare-fun b!2033586 () Bool)

(declare-fun res!891767 () Bool)

(assert (=> b!2033586 (=> res!891767 e!1284332)))

(assert (=> b!2033586 (= res!891767 (not ((_ is ElementMatch!5419) (regex!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))))))

(assert (=> b!2033586 (= e!1284330 e!1284332)))

(declare-fun b!2033587 () Bool)

(declare-fun res!891766 () Bool)

(assert (=> b!2033587 (=> (not res!891766) (not e!1284328))))

(assert (=> b!2033587 (= res!891766 (isEmpty!13880 (tail!3064 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!763244)))))))))

(declare-fun b!2033588 () Bool)

(assert (=> b!2033588 (= e!1284333 (= lt!764172 call!124830))))

(assert (= (and d!622716 c!329317) b!2033577))

(assert (= (and d!622716 (not c!329317)) b!2033583))

(assert (= (and d!622716 c!329315) b!2033588))

(assert (= (and d!622716 (not c!329315)) b!2033576))

(assert (= (and b!2033576 c!329316) b!2033575))

(assert (= (and b!2033576 (not c!329316)) b!2033586))

(assert (= (and b!2033586 (not res!891767)) b!2033579))

(assert (= (and b!2033579 res!891765) b!2033585))

(assert (= (and b!2033585 res!891771) b!2033587))

(assert (= (and b!2033587 res!891766) b!2033578))

(assert (= (and b!2033579 (not res!891769)) b!2033581))

(assert (= (and b!2033581 res!891764) b!2033582))

(assert (= (and b!2033582 (not res!891770)) b!2033580))

(assert (= (and b!2033580 (not res!891768)) b!2033584))

(assert (= (or b!2033588 b!2033582 b!2033585) bm!124825))

(declare-fun m!2476133 () Bool)

(assert (=> b!2033577 m!2476133))

(assert (=> b!2033587 m!2472973))

(declare-fun m!2476135 () Bool)

(assert (=> b!2033587 m!2476135))

(assert (=> b!2033587 m!2476135))

(declare-fun m!2476137 () Bool)

(assert (=> b!2033587 m!2476137))

(assert (=> b!2033578 m!2472973))

(declare-fun m!2476139 () Bool)

(assert (=> b!2033578 m!2476139))

(assert (=> b!2033580 m!2472973))

(assert (=> b!2033580 m!2476135))

(assert (=> b!2033580 m!2476135))

(assert (=> b!2033580 m!2476137))

(assert (=> bm!124825 m!2472973))

(declare-fun m!2476141 () Bool)

(assert (=> bm!124825 m!2476141))

(assert (=> d!622716 m!2472973))

(assert (=> d!622716 m!2476141))

(declare-fun m!2476143 () Bool)

(assert (=> d!622716 m!2476143))

(assert (=> b!2033584 m!2472973))

(assert (=> b!2033584 m!2476139))

(assert (=> b!2033583 m!2472973))

(assert (=> b!2033583 m!2476139))

(assert (=> b!2033583 m!2476139))

(declare-fun m!2476145 () Bool)

(assert (=> b!2033583 m!2476145))

(assert (=> b!2033583 m!2472973))

(assert (=> b!2033583 m!2476135))

(assert (=> b!2033583 m!2476145))

(assert (=> b!2033583 m!2476135))

(declare-fun m!2476147 () Bool)

(assert (=> b!2033583 m!2476147))

(assert (=> b!2031762 d!622716))

(assert (=> b!2031762 d!622320))

(assert (=> b!2031762 d!622316))

(assert (=> b!2031762 d!622318))

(declare-fun d!622718 () Bool)

(declare-fun e!1284334 () Bool)

(assert (=> d!622718 e!1284334))

(declare-fun res!891772 () Bool)

(assert (=> d!622718 (=> (not res!891772) (not e!1284334))))

(declare-fun lt!764173 () BalanceConc!14684)

(assert (=> d!622718 (= res!891772 (= (list!9077 lt!764173) (originalCharacters!4801 (h!27624 tokens!598))))))

(assert (=> d!622718 (= lt!764173 (BalanceConc!14685 (fromList!502 (originalCharacters!4801 (h!27624 tokens!598)))))))

(assert (=> d!622718 (= (fromListB!1284 (originalCharacters!4801 (h!27624 tokens!598))) lt!764173)))

(declare-fun b!2033589 () Bool)

(assert (=> b!2033589 (= e!1284334 (isBalanced!2321 (fromList!502 (originalCharacters!4801 (h!27624 tokens!598)))))))

(assert (= (and d!622718 res!891772) b!2033589))

(declare-fun m!2476149 () Bool)

(assert (=> d!622718 m!2476149))

(declare-fun m!2476151 () Bool)

(assert (=> d!622718 m!2476151))

(assert (=> b!2033589 m!2476151))

(assert (=> b!2033589 m!2476151))

(declare-fun m!2476153 () Bool)

(assert (=> b!2033589 m!2476153))

(assert (=> d!621832 d!622718))

(declare-fun d!622720 () Bool)

(declare-fun lt!764176 () BalanceConc!14684)

(assert (=> d!622720 (= (list!9077 lt!764176) (printListTailRec!491 thiss!23328 (dropList!822 lt!763188 (+ 0 1)) (list!9077 (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (apply!5856 lt!763188 0))))))))

(declare-fun e!1284335 () BalanceConc!14684)

(assert (=> d!622720 (= lt!764176 e!1284335)))

(declare-fun c!329318 () Bool)

(assert (=> d!622720 (= c!329318 (>= (+ 0 1) (size!17365 lt!763188)))))

(declare-fun e!1284336 () Bool)

(assert (=> d!622720 e!1284336))

(declare-fun res!891773 () Bool)

(assert (=> d!622720 (=> (not res!891773) (not e!1284336))))

(assert (=> d!622720 (= res!891773 (>= (+ 0 1) 0))))

(assert (=> d!622720 (= (printTailRec!1075 thiss!23328 lt!763188 (+ 0 1) (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (apply!5856 lt!763188 0)))) lt!764176)))

(declare-fun b!2033590 () Bool)

(assert (=> b!2033590 (= e!1284336 (<= (+ 0 1) (size!17365 lt!763188)))))

(declare-fun b!2033591 () Bool)

(assert (=> b!2033591 (= e!1284335 (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (apply!5856 lt!763188 0))))))

(declare-fun b!2033592 () Bool)

(assert (=> b!2033592 (= e!1284335 (printTailRec!1075 thiss!23328 lt!763188 (+ 0 1 1) (++!6015 (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (apply!5856 lt!763188 0))) (charsOf!2534 (apply!5856 lt!763188 (+ 0 1))))))))

(declare-fun lt!764175 () List!22305)

(assert (=> b!2033592 (= lt!764175 (list!9080 lt!763188))))

(declare-fun lt!764174 () Unit!36902)

(assert (=> b!2033592 (= lt!764174 (lemmaDropApply!746 lt!764175 (+ 0 1)))))

(assert (=> b!2033592 (= (head!4590 (drop!1123 lt!764175 (+ 0 1))) (apply!5859 lt!764175 (+ 0 1)))))

(declare-fun lt!764178 () Unit!36902)

(assert (=> b!2033592 (= lt!764178 lt!764174)))

(declare-fun lt!764177 () List!22305)

(assert (=> b!2033592 (= lt!764177 (list!9080 lt!763188))))

(declare-fun lt!764179 () Unit!36902)

(assert (=> b!2033592 (= lt!764179 (lemmaDropTail!722 lt!764177 (+ 0 1)))))

(assert (=> b!2033592 (= (tail!3066 (drop!1123 lt!764177 (+ 0 1))) (drop!1123 lt!764177 (+ 0 1 1)))))

(declare-fun lt!764180 () Unit!36902)

(assert (=> b!2033592 (= lt!764180 lt!764179)))

(assert (= (and d!622720 res!891773) b!2033590))

(assert (= (and d!622720 c!329318) b!2033591))

(assert (= (and d!622720 (not c!329318)) b!2033592))

(assert (=> d!622720 m!2473537))

(declare-fun m!2476155 () Bool)

(assert (=> d!622720 m!2476155))

(assert (=> d!622720 m!2473527))

(declare-fun m!2476157 () Bool)

(assert (=> d!622720 m!2476157))

(declare-fun m!2476159 () Bool)

(assert (=> d!622720 m!2476159))

(assert (=> d!622720 m!2476159))

(assert (=> d!622720 m!2476155))

(declare-fun m!2476161 () Bool)

(assert (=> d!622720 m!2476161))

(assert (=> b!2033590 m!2473527))

(assert (=> b!2033592 m!2473537))

(declare-fun m!2476163 () Bool)

(assert (=> b!2033592 m!2476163))

(declare-fun m!2476165 () Bool)

(assert (=> b!2033592 m!2476165))

(assert (=> b!2033592 m!2476165))

(declare-fun m!2476167 () Bool)

(assert (=> b!2033592 m!2476167))

(assert (=> b!2033592 m!2473507))

(declare-fun m!2476169 () Bool)

(assert (=> b!2033592 m!2476169))

(declare-fun m!2476171 () Bool)

(assert (=> b!2033592 m!2476171))

(declare-fun m!2476173 () Bool)

(assert (=> b!2033592 m!2476173))

(declare-fun m!2476175 () Bool)

(assert (=> b!2033592 m!2476175))

(declare-fun m!2476177 () Bool)

(assert (=> b!2033592 m!2476177))

(assert (=> b!2033592 m!2476169))

(declare-fun m!2476179 () Bool)

(assert (=> b!2033592 m!2476179))

(declare-fun m!2476181 () Bool)

(assert (=> b!2033592 m!2476181))

(declare-fun m!2476183 () Bool)

(assert (=> b!2033592 m!2476183))

(declare-fun m!2476185 () Bool)

(assert (=> b!2033592 m!2476185))

(assert (=> b!2033592 m!2476177))

(assert (=> b!2033592 m!2476163))

(assert (=> b!2033592 m!2476181))

(assert (=> b!2032098 d!622720))

(declare-fun d!622722 () Bool)

(declare-fun lt!764181 () BalanceConc!14684)

(assert (=> d!622722 (= (list!9077 lt!764181) (originalCharacters!4801 (apply!5856 lt!763188 0)))))

(assert (=> d!622722 (= lt!764181 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0)))) (value!125420 (apply!5856 lt!763188 0))))))

(assert (=> d!622722 (= (charsOf!2534 (apply!5856 lt!763188 0)) lt!764181)))

(declare-fun b_lambda!68597 () Bool)

(assert (=> (not b_lambda!68597) (not d!622722)))

(declare-fun tb!128671 () Bool)

(declare-fun t!191014 () Bool)

(assert (=> (and b!2032233 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0))))) t!191014) tb!128671))

(declare-fun b!2033593 () Bool)

(declare-fun e!1284337 () Bool)

(declare-fun tp!603902 () Bool)

(assert (=> b!2033593 (= e!1284337 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0)))) (value!125420 (apply!5856 lt!763188 0))))) tp!603902))))

(declare-fun result!153864 () Bool)

(assert (=> tb!128671 (= result!153864 (and (inv!29410 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0)))) (value!125420 (apply!5856 lt!763188 0)))) e!1284337))))

(assert (= tb!128671 b!2033593))

(declare-fun m!2476187 () Bool)

(assert (=> b!2033593 m!2476187))

(declare-fun m!2476189 () Bool)

(assert (=> tb!128671 m!2476189))

(assert (=> d!622722 t!191014))

(declare-fun b_and!162331 () Bool)

(assert (= b_and!162229 (and (=> t!191014 result!153864) b_and!162331)))

(declare-fun tb!128673 () Bool)

(declare-fun t!191016 () Bool)

(assert (=> (and b!2032252 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0))))) t!191016) tb!128673))

(declare-fun result!153866 () Bool)

(assert (= result!153866 result!153864))

(assert (=> d!622722 t!191016))

(declare-fun b_and!162333 () Bool)

(assert (= b_and!162233 (and (=> t!191016 result!153866) b_and!162333)))

(declare-fun t!191018 () Bool)

(declare-fun tb!128675 () Bool)

(assert (=> (and b!2031531 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0))))) t!191018) tb!128675))

(declare-fun result!153868 () Bool)

(assert (= result!153868 result!153864))

(assert (=> d!622722 t!191018))

(declare-fun b_and!162335 () Bool)

(assert (= b_and!162231 (and (=> t!191018 result!153868) b_and!162335)))

(declare-fun tb!128677 () Bool)

(declare-fun t!191020 () Bool)

(assert (=> (and b!2031513 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0))))) t!191020) tb!128677))

(declare-fun result!153870 () Bool)

(assert (= result!153870 result!153864))

(assert (=> d!622722 t!191020))

(declare-fun b_and!162337 () Bool)

(assert (= b_and!162227 (and (=> t!191020 result!153870) b_and!162337)))

(declare-fun tb!128679 () Bool)

(declare-fun t!191022 () Bool)

(assert (=> (and b!2031523 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0))))) t!191022) tb!128679))

(declare-fun result!153872 () Bool)

(assert (= result!153872 result!153864))

(assert (=> d!622722 t!191022))

(declare-fun b_and!162339 () Bool)

(assert (= b_and!162235 (and (=> t!191022 result!153872) b_and!162339)))

(declare-fun m!2476191 () Bool)

(assert (=> d!622722 m!2476191))

(declare-fun m!2476193 () Bool)

(assert (=> d!622722 m!2476193))

(assert (=> b!2032098 d!622722))

(declare-fun d!622724 () Bool)

(declare-fun lt!764184 () Token!7540)

(assert (=> d!622724 (contains!4110 lt!763471 lt!764184)))

(declare-fun e!1284343 () Token!7540)

(assert (=> d!622724 (= lt!764184 e!1284343)))

(declare-fun c!329321 () Bool)

(assert (=> d!622724 (= c!329321 (= 0 0))))

(declare-fun e!1284342 () Bool)

(assert (=> d!622724 e!1284342))

(declare-fun res!891776 () Bool)

(assert (=> d!622724 (=> (not res!891776) (not e!1284342))))

(assert (=> d!622724 (= res!891776 (<= 0 0))))

(assert (=> d!622724 (= (apply!5859 lt!763471 0) lt!764184)))

(declare-fun b!2033600 () Bool)

(assert (=> b!2033600 (= e!1284342 (< 0 (size!17369 lt!763471)))))

(declare-fun b!2033601 () Bool)

(assert (=> b!2033601 (= e!1284343 (head!4590 lt!763471))))

(declare-fun b!2033602 () Bool)

(assert (=> b!2033602 (= e!1284343 (apply!5859 (tail!3066 lt!763471) (- 0 1)))))

(assert (= (and d!622724 res!891776) b!2033600))

(assert (= (and d!622724 c!329321) b!2033601))

(assert (= (and d!622724 (not c!329321)) b!2033602))

(declare-fun m!2476195 () Bool)

(assert (=> d!622724 m!2476195))

(declare-fun m!2476197 () Bool)

(assert (=> b!2033600 m!2476197))

(declare-fun m!2476199 () Bool)

(assert (=> b!2033601 m!2476199))

(declare-fun m!2476201 () Bool)

(assert (=> b!2033602 m!2476201))

(assert (=> b!2033602 m!2476201))

(declare-fun m!2476203 () Bool)

(assert (=> b!2033602 m!2476203))

(assert (=> b!2032098 d!622724))

(declare-fun d!622726 () Bool)

(assert (=> d!622726 (= (tail!3066 (drop!1123 lt!763473 0)) (drop!1123 lt!763473 (+ 0 1)))))

(declare-fun lt!764187 () Unit!36902)

(declare-fun choose!12413 (List!22305 Int) Unit!36902)

(assert (=> d!622726 (= lt!764187 (choose!12413 lt!763473 0))))

(declare-fun e!1284346 () Bool)

(assert (=> d!622726 e!1284346))

(declare-fun res!891779 () Bool)

(assert (=> d!622726 (=> (not res!891779) (not e!1284346))))

(assert (=> d!622726 (= res!891779 (>= 0 0))))

(assert (=> d!622726 (= (lemmaDropTail!722 lt!763473 0) lt!764187)))

(declare-fun b!2033605 () Bool)

(assert (=> b!2033605 (= e!1284346 (< 0 (size!17369 lt!763473)))))

(assert (= (and d!622726 res!891779) b!2033605))

(assert (=> d!622726 m!2473553))

(assert (=> d!622726 m!2473553))

(assert (=> d!622726 m!2473555))

(assert (=> d!622726 m!2473545))

(declare-fun m!2476205 () Bool)

(assert (=> d!622726 m!2476205))

(declare-fun m!2476207 () Bool)

(assert (=> b!2033605 m!2476207))

(assert (=> b!2032098 d!622726))

(assert (=> b!2032098 d!622686))

(declare-fun b!2033624 () Bool)

(declare-fun e!1284360 () Int)

(assert (=> b!2033624 (= e!1284360 0)))

(declare-fun b!2033625 () Bool)

(declare-fun e!1284357 () List!22305)

(assert (=> b!2033625 (= e!1284357 Nil!22223)))

(declare-fun b!2033626 () Bool)

(declare-fun call!124833 () Int)

(assert (=> b!2033626 (= e!1284360 (- call!124833 (+ 0 1)))))

(declare-fun bm!124828 () Bool)

(assert (=> bm!124828 (= call!124833 (size!17369 lt!763473))))

(declare-fun b!2033627 () Bool)

(declare-fun e!1284361 () Bool)

(declare-fun lt!764190 () List!22305)

(declare-fun e!1284359 () Int)

(assert (=> b!2033627 (= e!1284361 (= (size!17369 lt!764190) e!1284359))))

(declare-fun c!329331 () Bool)

(assert (=> b!2033627 (= c!329331 (<= (+ 0 1) 0))))

(declare-fun d!622728 () Bool)

(assert (=> d!622728 e!1284361))

(declare-fun res!891782 () Bool)

(assert (=> d!622728 (=> (not res!891782) (not e!1284361))))

(declare-fun content!3289 (List!22305) (InoxSet Token!7540))

(assert (=> d!622728 (= res!891782 (= ((_ map implies) (content!3289 lt!764190) (content!3289 lt!763473)) ((as const (InoxSet Token!7540)) true)))))

(assert (=> d!622728 (= lt!764190 e!1284357)))

(declare-fun c!329333 () Bool)

(assert (=> d!622728 (= c!329333 ((_ is Nil!22223) lt!763473))))

(assert (=> d!622728 (= (drop!1123 lt!763473 (+ 0 1)) lt!764190)))

(declare-fun b!2033628 () Bool)

(declare-fun e!1284358 () List!22305)

(assert (=> b!2033628 (= e!1284358 (drop!1123 (t!190664 lt!763473) (- (+ 0 1) 1)))))

(declare-fun b!2033629 () Bool)

(assert (=> b!2033629 (= e!1284357 e!1284358)))

(declare-fun c!329332 () Bool)

(assert (=> b!2033629 (= c!329332 (<= (+ 0 1) 0))))

(declare-fun b!2033630 () Bool)

(assert (=> b!2033630 (= e!1284358 lt!763473)))

(declare-fun b!2033631 () Bool)

(assert (=> b!2033631 (= e!1284359 e!1284360)))

(declare-fun c!329330 () Bool)

(assert (=> b!2033631 (= c!329330 (>= (+ 0 1) call!124833))))

(declare-fun b!2033632 () Bool)

(assert (=> b!2033632 (= e!1284359 call!124833)))

(assert (= (and d!622728 c!329333) b!2033625))

(assert (= (and d!622728 (not c!329333)) b!2033629))

(assert (= (and b!2033629 c!329332) b!2033630))

(assert (= (and b!2033629 (not c!329332)) b!2033628))

(assert (= (and d!622728 res!891782) b!2033627))

(assert (= (and b!2033627 c!329331) b!2033632))

(assert (= (and b!2033627 (not c!329331)) b!2033631))

(assert (= (and b!2033631 c!329330) b!2033624))

(assert (= (and b!2033631 (not c!329330)) b!2033626))

(assert (= (or b!2033632 b!2033631 b!2033626) bm!124828))

(assert (=> bm!124828 m!2476207))

(declare-fun m!2476209 () Bool)

(assert (=> b!2033627 m!2476209))

(declare-fun m!2476211 () Bool)

(assert (=> d!622728 m!2476211))

(declare-fun m!2476213 () Bool)

(assert (=> d!622728 m!2476213))

(declare-fun m!2476215 () Bool)

(assert (=> b!2033628 m!2476215))

(assert (=> b!2032098 d!622728))

(declare-fun d!622730 () Bool)

(declare-fun lt!764191 () Token!7540)

(assert (=> d!622730 (= lt!764191 (apply!5859 (list!9080 lt!763188) 0))))

(assert (=> d!622730 (= lt!764191 (apply!5861 (c!328895 lt!763188) 0))))

(declare-fun e!1284362 () Bool)

(assert (=> d!622730 e!1284362))

(declare-fun res!891783 () Bool)

(assert (=> d!622730 (=> (not res!891783) (not e!1284362))))

(assert (=> d!622730 (= res!891783 (<= 0 0))))

(assert (=> d!622730 (= (apply!5856 lt!763188 0) lt!764191)))

(declare-fun b!2033633 () Bool)

(assert (=> b!2033633 (= e!1284362 (< 0 (size!17365 lt!763188)))))

(assert (= (and d!622730 res!891783) b!2033633))

(assert (=> d!622730 m!2473507))

(assert (=> d!622730 m!2473507))

(declare-fun m!2476217 () Bool)

(assert (=> d!622730 m!2476217))

(declare-fun m!2476219 () Bool)

(assert (=> d!622730 m!2476219))

(assert (=> b!2033633 m!2473527))

(assert (=> b!2032098 d!622730))

(declare-fun d!622732 () Bool)

(assert (=> d!622732 (= (head!4590 (drop!1123 lt!763471 0)) (h!27624 (drop!1123 lt!763471 0)))))

(assert (=> b!2032098 d!622732))

(declare-fun d!622734 () Bool)

(assert (=> d!622734 (= (tail!3066 (drop!1123 lt!763473 0)) (t!190664 (drop!1123 lt!763473 0)))))

(assert (=> b!2032098 d!622734))

(declare-fun b!2033643 () Bool)

(declare-fun res!891795 () Bool)

(declare-fun e!1284365 () Bool)

(assert (=> b!2033643 (=> (not res!891795) (not e!1284365))))

(declare-fun height!1146 (Conc!7434) Int)

(declare-fun ++!6019 (Conc!7434 Conc!7434) Conc!7434)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2033643 (= res!891795 (<= (height!1146 (++!6019 (c!328893 (BalanceConc!14685 Empty!7434)) (c!328893 (charsOf!2534 (apply!5856 lt!763188 0))))) (+ (max!0 (height!1146 (c!328893 (BalanceConc!14685 Empty!7434))) (height!1146 (c!328893 (charsOf!2534 (apply!5856 lt!763188 0))))) 1)))))

(declare-fun d!622736 () Bool)

(assert (=> d!622736 e!1284365))

(declare-fun res!891793 () Bool)

(assert (=> d!622736 (=> (not res!891793) (not e!1284365))))

(declare-fun appendAssocInst!542 (Conc!7434 Conc!7434) Bool)

(assert (=> d!622736 (= res!891793 (appendAssocInst!542 (c!328893 (BalanceConc!14685 Empty!7434)) (c!328893 (charsOf!2534 (apply!5856 lt!763188 0)))))))

(declare-fun lt!764194 () BalanceConc!14684)

(assert (=> d!622736 (= lt!764194 (BalanceConc!14685 (++!6019 (c!328893 (BalanceConc!14685 Empty!7434)) (c!328893 (charsOf!2534 (apply!5856 lt!763188 0))))))))

(assert (=> d!622736 (= (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (apply!5856 lt!763188 0))) lt!764194)))

(declare-fun b!2033645 () Bool)

(assert (=> b!2033645 (= e!1284365 (= (list!9077 lt!764194) (++!6013 (list!9077 (BalanceConc!14685 Empty!7434)) (list!9077 (charsOf!2534 (apply!5856 lt!763188 0))))))))

(declare-fun b!2033642 () Bool)

(declare-fun res!891792 () Bool)

(assert (=> b!2033642 (=> (not res!891792) (not e!1284365))))

(assert (=> b!2033642 (= res!891792 (isBalanced!2321 (++!6019 (c!328893 (BalanceConc!14685 Empty!7434)) (c!328893 (charsOf!2534 (apply!5856 lt!763188 0))))))))

(declare-fun b!2033644 () Bool)

(declare-fun res!891794 () Bool)

(assert (=> b!2033644 (=> (not res!891794) (not e!1284365))))

(assert (=> b!2033644 (= res!891794 (>= (height!1146 (++!6019 (c!328893 (BalanceConc!14685 Empty!7434)) (c!328893 (charsOf!2534 (apply!5856 lt!763188 0))))) (max!0 (height!1146 (c!328893 (BalanceConc!14685 Empty!7434))) (height!1146 (c!328893 (charsOf!2534 (apply!5856 lt!763188 0)))))))))

(assert (= (and d!622736 res!891793) b!2033642))

(assert (= (and b!2033642 res!891792) b!2033643))

(assert (= (and b!2033643 res!891795) b!2033644))

(assert (= (and b!2033644 res!891794) b!2033645))

(declare-fun m!2476221 () Bool)

(assert (=> b!2033642 m!2476221))

(assert (=> b!2033642 m!2476221))

(declare-fun m!2476223 () Bool)

(assert (=> b!2033642 m!2476223))

(declare-fun m!2476225 () Bool)

(assert (=> d!622736 m!2476225))

(assert (=> d!622736 m!2476221))

(assert (=> b!2033643 m!2476221))

(declare-fun m!2476227 () Bool)

(assert (=> b!2033643 m!2476227))

(declare-fun m!2476229 () Bool)

(assert (=> b!2033643 m!2476229))

(declare-fun m!2476231 () Bool)

(assert (=> b!2033643 m!2476231))

(declare-fun m!2476233 () Bool)

(assert (=> b!2033643 m!2476233))

(assert (=> b!2033643 m!2476231))

(assert (=> b!2033643 m!2476229))

(assert (=> b!2033643 m!2476221))

(assert (=> b!2033644 m!2476221))

(assert (=> b!2033644 m!2476227))

(assert (=> b!2033644 m!2476229))

(assert (=> b!2033644 m!2476231))

(assert (=> b!2033644 m!2476233))

(assert (=> b!2033644 m!2476231))

(assert (=> b!2033644 m!2476229))

(assert (=> b!2033644 m!2476221))

(declare-fun m!2476235 () Bool)

(assert (=> b!2033645 m!2476235))

(assert (=> b!2033645 m!2473525))

(assert (=> b!2033645 m!2473535))

(declare-fun m!2476237 () Bool)

(assert (=> b!2033645 m!2476237))

(assert (=> b!2033645 m!2473525))

(assert (=> b!2033645 m!2476237))

(declare-fun m!2476239 () Bool)

(assert (=> b!2033645 m!2476239))

(assert (=> b!2032098 d!622736))

(declare-fun b!2033646 () Bool)

(declare-fun e!1284369 () Int)

(assert (=> b!2033646 (= e!1284369 0)))

(declare-fun b!2033647 () Bool)

(declare-fun e!1284366 () List!22305)

(assert (=> b!2033647 (= e!1284366 Nil!22223)))

(declare-fun b!2033648 () Bool)

(declare-fun call!124834 () Int)

(assert (=> b!2033648 (= e!1284369 (- call!124834 0))))

(declare-fun bm!124829 () Bool)

(assert (=> bm!124829 (= call!124834 (size!17369 lt!763471))))

(declare-fun b!2033649 () Bool)

(declare-fun e!1284370 () Bool)

(declare-fun lt!764195 () List!22305)

(declare-fun e!1284368 () Int)

(assert (=> b!2033649 (= e!1284370 (= (size!17369 lt!764195) e!1284368))))

(declare-fun c!329338 () Bool)

(assert (=> b!2033649 (= c!329338 (<= 0 0))))

(declare-fun d!622738 () Bool)

(assert (=> d!622738 e!1284370))

(declare-fun res!891796 () Bool)

(assert (=> d!622738 (=> (not res!891796) (not e!1284370))))

(assert (=> d!622738 (= res!891796 (= ((_ map implies) (content!3289 lt!764195) (content!3289 lt!763471)) ((as const (InoxSet Token!7540)) true)))))

(assert (=> d!622738 (= lt!764195 e!1284366)))

(declare-fun c!329340 () Bool)

(assert (=> d!622738 (= c!329340 ((_ is Nil!22223) lt!763471))))

(assert (=> d!622738 (= (drop!1123 lt!763471 0) lt!764195)))

(declare-fun b!2033650 () Bool)

(declare-fun e!1284367 () List!22305)

(assert (=> b!2033650 (= e!1284367 (drop!1123 (t!190664 lt!763471) (- 0 1)))))

(declare-fun b!2033651 () Bool)

(assert (=> b!2033651 (= e!1284366 e!1284367)))

(declare-fun c!329339 () Bool)

(assert (=> b!2033651 (= c!329339 (<= 0 0))))

(declare-fun b!2033652 () Bool)

(assert (=> b!2033652 (= e!1284367 lt!763471)))

(declare-fun b!2033653 () Bool)

(assert (=> b!2033653 (= e!1284368 e!1284369)))

(declare-fun c!329337 () Bool)

(assert (=> b!2033653 (= c!329337 (>= 0 call!124834))))

(declare-fun b!2033654 () Bool)

(assert (=> b!2033654 (= e!1284368 call!124834)))

(assert (= (and d!622738 c!329340) b!2033647))

(assert (= (and d!622738 (not c!329340)) b!2033651))

(assert (= (and b!2033651 c!329339) b!2033652))

(assert (= (and b!2033651 (not c!329339)) b!2033650))

(assert (= (and d!622738 res!891796) b!2033649))

(assert (= (and b!2033649 c!329338) b!2033654))

(assert (= (and b!2033649 (not c!329338)) b!2033653))

(assert (= (and b!2033653 c!329337) b!2033646))

(assert (= (and b!2033653 (not c!329337)) b!2033648))

(assert (= (or b!2033654 b!2033653 b!2033648) bm!124829))

(assert (=> bm!124829 m!2476197))

(declare-fun m!2476241 () Bool)

(assert (=> b!2033649 m!2476241))

(declare-fun m!2476243 () Bool)

(assert (=> d!622738 m!2476243))

(declare-fun m!2476245 () Bool)

(assert (=> d!622738 m!2476245))

(declare-fun m!2476247 () Bool)

(assert (=> b!2033650 m!2476247))

(assert (=> b!2032098 d!622738))

(declare-fun d!622740 () Bool)

(assert (=> d!622740 (= (head!4590 (drop!1123 lt!763471 0)) (apply!5859 lt!763471 0))))

(declare-fun lt!764198 () Unit!36902)

(declare-fun choose!12414 (List!22305 Int) Unit!36902)

(assert (=> d!622740 (= lt!764198 (choose!12414 lt!763471 0))))

(declare-fun e!1284373 () Bool)

(assert (=> d!622740 e!1284373))

(declare-fun res!891799 () Bool)

(assert (=> d!622740 (=> (not res!891799) (not e!1284373))))

(assert (=> d!622740 (= res!891799 (>= 0 0))))

(assert (=> d!622740 (= (lemmaDropApply!746 lt!763471 0) lt!764198)))

(declare-fun b!2033657 () Bool)

(assert (=> b!2033657 (= e!1284373 (< 0 (size!17369 lt!763471)))))

(assert (= (and d!622740 res!891799) b!2033657))

(assert (=> d!622740 m!2473541))

(assert (=> d!622740 m!2473541))

(assert (=> d!622740 m!2473551))

(assert (=> d!622740 m!2473557))

(declare-fun m!2476249 () Bool)

(assert (=> d!622740 m!2476249))

(assert (=> b!2033657 m!2476197))

(assert (=> b!2032098 d!622740))

(declare-fun b!2033658 () Bool)

(declare-fun e!1284377 () Int)

(assert (=> b!2033658 (= e!1284377 0)))

(declare-fun b!2033659 () Bool)

(declare-fun e!1284374 () List!22305)

(assert (=> b!2033659 (= e!1284374 Nil!22223)))

(declare-fun b!2033660 () Bool)

(declare-fun call!124835 () Int)

(assert (=> b!2033660 (= e!1284377 (- call!124835 0))))

(declare-fun bm!124830 () Bool)

(assert (=> bm!124830 (= call!124835 (size!17369 lt!763473))))

(declare-fun b!2033661 () Bool)

(declare-fun e!1284378 () Bool)

(declare-fun lt!764199 () List!22305)

(declare-fun e!1284376 () Int)

(assert (=> b!2033661 (= e!1284378 (= (size!17369 lt!764199) e!1284376))))

(declare-fun c!329342 () Bool)

(assert (=> b!2033661 (= c!329342 (<= 0 0))))

(declare-fun d!622742 () Bool)

(assert (=> d!622742 e!1284378))

(declare-fun res!891800 () Bool)

(assert (=> d!622742 (=> (not res!891800) (not e!1284378))))

(assert (=> d!622742 (= res!891800 (= ((_ map implies) (content!3289 lt!764199) (content!3289 lt!763473)) ((as const (InoxSet Token!7540)) true)))))

(assert (=> d!622742 (= lt!764199 e!1284374)))

(declare-fun c!329344 () Bool)

(assert (=> d!622742 (= c!329344 ((_ is Nil!22223) lt!763473))))

(assert (=> d!622742 (= (drop!1123 lt!763473 0) lt!764199)))

(declare-fun b!2033662 () Bool)

(declare-fun e!1284375 () List!22305)

(assert (=> b!2033662 (= e!1284375 (drop!1123 (t!190664 lt!763473) (- 0 1)))))

(declare-fun b!2033663 () Bool)

(assert (=> b!2033663 (= e!1284374 e!1284375)))

(declare-fun c!329343 () Bool)

(assert (=> b!2033663 (= c!329343 (<= 0 0))))

(declare-fun b!2033664 () Bool)

(assert (=> b!2033664 (= e!1284375 lt!763473)))

(declare-fun b!2033665 () Bool)

(assert (=> b!2033665 (= e!1284376 e!1284377)))

(declare-fun c!329341 () Bool)

(assert (=> b!2033665 (= c!329341 (>= 0 call!124835))))

(declare-fun b!2033666 () Bool)

(assert (=> b!2033666 (= e!1284376 call!124835)))

(assert (= (and d!622742 c!329344) b!2033659))

(assert (= (and d!622742 (not c!329344)) b!2033663))

(assert (= (and b!2033663 c!329343) b!2033664))

(assert (= (and b!2033663 (not c!329343)) b!2033662))

(assert (= (and d!622742 res!891800) b!2033661))

(assert (= (and b!2033661 c!329342) b!2033666))

(assert (= (and b!2033661 (not c!329342)) b!2033665))

(assert (= (and b!2033665 c!329341) b!2033658))

(assert (= (and b!2033665 (not c!329341)) b!2033660))

(assert (= (or b!2033666 b!2033665 b!2033660) bm!124830))

(assert (=> bm!124830 m!2476207))

(declare-fun m!2476251 () Bool)

(assert (=> b!2033661 m!2476251))

(declare-fun m!2476253 () Bool)

(assert (=> d!622742 m!2476253))

(assert (=> d!622742 m!2476213))

(declare-fun m!2476255 () Bool)

(assert (=> b!2033662 m!2476255))

(assert (=> b!2032098 d!622742))

(assert (=> b!2031743 d!622606))

(assert (=> b!2031743 d!621822))

(declare-fun bs!421263 () Bool)

(declare-fun d!622744 () Bool)

(assert (= bs!421263 (and d!622744 d!621776)))

(declare-fun lambda!76611 () Int)

(assert (=> bs!421263 (= lambda!76611 lambda!76557)))

(declare-fun bs!421264 () Bool)

(assert (= bs!421264 (and d!622744 d!622370)))

(assert (=> bs!421264 (= (and (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 separatorToken!354))))) (= lambda!76611 lambda!76597))))

(declare-fun bs!421265 () Bool)

(assert (= bs!421265 (and d!622744 d!622578)))

(assert (=> bs!421265 (= (and (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (h!27623 rules!3198)))) (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (h!27623 rules!3198))))) (= lambda!76611 lambda!76604))))

(assert (=> d!622744 true))

(assert (=> d!622744 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (dynLambda!11068 order!14245 lambda!76611))))

(assert (=> d!622744 true))

(assert (=> d!622744 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (dynLambda!11068 order!14245 lambda!76611))))

(assert (=> d!622744 (= (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) (Forall!1022 lambda!76611))))

(declare-fun bs!421266 () Bool)

(assert (= bs!421266 d!622744))

(declare-fun m!2476257 () Bool)

(assert (=> bs!421266 m!2476257))

(assert (=> d!621740 d!622744))

(declare-fun d!622746 () Bool)

(assert (=> d!622746 (= (inv!16 (value!125420 (h!27624 tokens!598))) (= (charsToInt!0 (text!29357 (value!125420 (h!27624 tokens!598)))) (value!125411 (value!125420 (h!27624 tokens!598)))))))

(declare-fun bs!421267 () Bool)

(assert (= bs!421267 d!622746))

(declare-fun m!2476259 () Bool)

(assert (=> bs!421267 m!2476259))

(assert (=> b!2031696 d!622746))

(assert (=> b!2031683 d!622504))

(assert (=> b!2031683 d!622472))

(declare-fun d!622748 () Bool)

(assert (=> d!622748 (= (isEmpty!13881 lt!763364) (not ((_ is Some!4672) lt!763364)))))

(assert (=> d!621822 d!622748))

(assert (=> d!621822 d!621912))

(declare-fun d!622750 () Bool)

(declare-fun lt!764200 () Int)

(assert (=> d!622750 (>= lt!764200 0)))

(declare-fun e!1284379 () Int)

(assert (=> d!622750 (= lt!764200 e!1284379)))

(declare-fun c!329345 () Bool)

(assert (=> d!622750 (= c!329345 ((_ is Nil!22221) (_2!11926 (get!7060 lt!763244))))))

(assert (=> d!622750 (= (size!17366 (_2!11926 (get!7060 lt!763244))) lt!764200)))

(declare-fun b!2033667 () Bool)

(assert (=> b!2033667 (= e!1284379 0)))

(declare-fun b!2033668 () Bool)

(assert (=> b!2033668 (= e!1284379 (+ 1 (size!17366 (t!190662 (_2!11926 (get!7060 lt!763244))))))))

(assert (= (and d!622750 c!329345) b!2033667))

(assert (= (and d!622750 (not c!329345)) b!2033668))

(declare-fun m!2476261 () Bool)

(assert (=> b!2033668 m!2476261))

(assert (=> b!2031767 d!622750))

(assert (=> b!2031767 d!622320))

(assert (=> b!2031767 d!622384))

(declare-fun d!622752 () Bool)

(assert (=> d!622752 (= (list!9080 (_1!11925 lt!763422)) (list!9084 (c!328895 (_1!11925 lt!763422))))))

(declare-fun bs!421268 () Bool)

(assert (= bs!421268 d!622752))

(declare-fun m!2476263 () Bool)

(assert (=> bs!421268 m!2476263))

(assert (=> b!2032067 d!622752))

(assert (=> b!2032067 d!622420))

(assert (=> b!2032067 d!622432))

(declare-fun b!2033669 () Bool)

(declare-fun e!1284381 () Bool)

(assert (=> b!2033669 (= e!1284381 (inv!15 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))

(declare-fun b!2033670 () Bool)

(declare-fun e!1284380 () Bool)

(assert (=> b!2033670 (= e!1284380 (inv!17 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))

(declare-fun d!622754 () Bool)

(declare-fun c!329346 () Bool)

(assert (=> d!622754 (= c!329346 ((_ is IntegerValue!12390) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))

(declare-fun e!1284382 () Bool)

(assert (=> d!622754 (= (inv!21 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)) e!1284382)))

(declare-fun b!2033671 () Bool)

(declare-fun res!891801 () Bool)

(assert (=> b!2033671 (=> res!891801 e!1284381)))

(assert (=> b!2033671 (= res!891801 (not ((_ is IntegerValue!12392) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))))))

(assert (=> b!2033671 (= e!1284380 e!1284381)))

(declare-fun b!2033672 () Bool)

(assert (=> b!2033672 (= e!1284382 e!1284380)))

(declare-fun c!329347 () Bool)

(assert (=> b!2033672 (= c!329347 ((_ is IntegerValue!12391) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))

(declare-fun b!2033673 () Bool)

(assert (=> b!2033673 (= e!1284382 (inv!16 (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))))

(assert (= (and d!622754 c!329346) b!2033673))

(assert (= (and d!622754 (not c!329346)) b!2033672))

(assert (= (and b!2033672 c!329347) b!2033670))

(assert (= (and b!2033672 (not c!329347)) b!2033671))

(assert (= (and b!2033671 (not res!891801)) b!2033669))

(declare-fun m!2476265 () Bool)

(assert (=> b!2033669 m!2476265))

(declare-fun m!2476267 () Bool)

(assert (=> b!2033670 m!2476267))

(declare-fun m!2476269 () Bool)

(assert (=> b!2033673 m!2476269))

(assert (=> tb!128363 d!622754))

(assert (=> d!621764 d!622372))

(declare-fun d!622756 () Bool)

(declare-fun res!891805 () Bool)

(declare-fun e!1284388 () Bool)

(assert (=> d!622756 (=> res!891805 e!1284388)))

(assert (=> d!622756 (= res!891805 ((_ is ElementMatch!5419) (regex!3994 lt!763191)))))

(assert (=> d!622756 (= (validRegex!2181 (regex!3994 lt!763191)) e!1284388)))

(declare-fun b!2033674 () Bool)

(declare-fun e!1284386 () Bool)

(assert (=> b!2033674 (= e!1284388 e!1284386)))

(declare-fun c!329349 () Bool)

(assert (=> b!2033674 (= c!329349 ((_ is Star!5419) (regex!3994 lt!763191)))))

(declare-fun b!2033675 () Bool)

(declare-fun res!891806 () Bool)

(declare-fun e!1284384 () Bool)

(assert (=> b!2033675 (=> res!891806 e!1284384)))

(assert (=> b!2033675 (= res!891806 (not ((_ is Concat!9550) (regex!3994 lt!763191))))))

(declare-fun e!1284389 () Bool)

(assert (=> b!2033675 (= e!1284389 e!1284384)))

(declare-fun b!2033676 () Bool)

(declare-fun e!1284385 () Bool)

(assert (=> b!2033676 (= e!1284384 e!1284385)))

(declare-fun res!891803 () Bool)

(assert (=> b!2033676 (=> (not res!891803) (not e!1284385))))

(declare-fun call!124837 () Bool)

(assert (=> b!2033676 (= res!891803 call!124837)))

(declare-fun b!2033677 () Bool)

(declare-fun e!1284387 () Bool)

(assert (=> b!2033677 (= e!1284386 e!1284387)))

(declare-fun res!891804 () Bool)

(assert (=> b!2033677 (= res!891804 (not (nullable!1655 (reg!5748 (regex!3994 lt!763191)))))))

(assert (=> b!2033677 (=> (not res!891804) (not e!1284387))))

(declare-fun bm!124831 () Bool)

(declare-fun call!124838 () Bool)

(declare-fun c!329348 () Bool)

(assert (=> bm!124831 (= call!124838 (validRegex!2181 (ite c!329348 (regTwo!11351 (regex!3994 lt!763191)) (regTwo!11350 (regex!3994 lt!763191)))))))

(declare-fun b!2033678 () Bool)

(declare-fun call!124836 () Bool)

(assert (=> b!2033678 (= e!1284387 call!124836)))

(declare-fun b!2033679 () Bool)

(declare-fun res!891802 () Bool)

(declare-fun e!1284383 () Bool)

(assert (=> b!2033679 (=> (not res!891802) (not e!1284383))))

(assert (=> b!2033679 (= res!891802 call!124837)))

(assert (=> b!2033679 (= e!1284389 e!1284383)))

(declare-fun bm!124832 () Bool)

(assert (=> bm!124832 (= call!124837 call!124836)))

(declare-fun b!2033680 () Bool)

(assert (=> b!2033680 (= e!1284385 call!124838)))

(declare-fun bm!124833 () Bool)

(assert (=> bm!124833 (= call!124836 (validRegex!2181 (ite c!329349 (reg!5748 (regex!3994 lt!763191)) (ite c!329348 (regOne!11351 (regex!3994 lt!763191)) (regOne!11350 (regex!3994 lt!763191))))))))

(declare-fun b!2033681 () Bool)

(assert (=> b!2033681 (= e!1284383 call!124838)))

(declare-fun b!2033682 () Bool)

(assert (=> b!2033682 (= e!1284386 e!1284389)))

(assert (=> b!2033682 (= c!329348 ((_ is Union!5419) (regex!3994 lt!763191)))))

(assert (= (and d!622756 (not res!891805)) b!2033674))

(assert (= (and b!2033674 c!329349) b!2033677))

(assert (= (and b!2033674 (not c!329349)) b!2033682))

(assert (= (and b!2033677 res!891804) b!2033678))

(assert (= (and b!2033682 c!329348) b!2033679))

(assert (= (and b!2033682 (not c!329348)) b!2033675))

(assert (= (and b!2033679 res!891802) b!2033681))

(assert (= (and b!2033675 (not res!891806)) b!2033676))

(assert (= (and b!2033676 res!891803) b!2033680))

(assert (= (or b!2033679 b!2033676) bm!124832))

(assert (= (or b!2033681 b!2033680) bm!124831))

(assert (= (or b!2033678 bm!124832) bm!124833))

(declare-fun m!2476271 () Bool)

(assert (=> b!2033677 m!2476271))

(declare-fun m!2476273 () Bool)

(assert (=> bm!124831 m!2476273))

(declare-fun m!2476275 () Bool)

(assert (=> bm!124833 m!2476275))

(assert (=> d!621764 d!622756))

(declare-fun b!2033683 () Bool)

(declare-fun e!1284391 () Bool)

(declare-fun e!1284393 () Bool)

(assert (=> b!2033683 (= e!1284391 e!1284393)))

(declare-fun res!891812 () Bool)

(assert (=> b!2033683 (=> (not res!891812) (not e!1284393))))

(declare-fun lt!764201 () Option!4674)

(assert (=> b!2033683 (= res!891812 (matchR!2685 (regex!3994 (h!27623 rules!3198)) (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764201))))))))

(declare-fun b!2033684 () Bool)

(declare-fun e!1284390 () Option!4674)

(declare-fun lt!764205 () tuple2!20926)

(assert (=> b!2033684 (= e!1284390 (Some!4673 (tuple2!20915 (Token!7541 (apply!5857 (transformation!3994 (h!27623 rules!3198)) (seqFromList!2848 (_1!11932 lt!764205))) (h!27623 rules!3198) (size!17368 (seqFromList!2848 (_1!11932 lt!764205))) (_1!11932 lt!764205)) (_2!11932 lt!764205))))))

(declare-fun lt!764203 () Unit!36902)

(assert (=> b!2033684 (= lt!764203 (longestMatchIsAcceptedByMatchOrIsEmpty!541 (regex!3994 (h!27623 rules!3198)) lt!763202))))

(declare-fun res!891808 () Bool)

(assert (=> b!2033684 (= res!891808 (isEmpty!13880 (_1!11932 (findLongestMatchInner!557 (regex!3994 (h!27623 rules!3198)) Nil!22221 (size!17366 Nil!22221) lt!763202 lt!763202 (size!17366 lt!763202)))))))

(declare-fun e!1284392 () Bool)

(assert (=> b!2033684 (=> res!891808 e!1284392)))

(assert (=> b!2033684 e!1284392))

(declare-fun lt!764202 () Unit!36902)

(assert (=> b!2033684 (= lt!764202 lt!764203)))

(declare-fun lt!764204 () Unit!36902)

(assert (=> b!2033684 (= lt!764204 (lemmaSemiInverse!951 (transformation!3994 (h!27623 rules!3198)) (seqFromList!2848 (_1!11932 lt!764205))))))

(declare-fun b!2033685 () Bool)

(declare-fun res!891811 () Bool)

(assert (=> b!2033685 (=> (not res!891811) (not e!1284393))))

(assert (=> b!2033685 (= res!891811 (= (++!6013 (list!9077 (charsOf!2534 (_1!11926 (get!7060 lt!764201)))) (_2!11926 (get!7060 lt!764201))) lt!763202))))

(declare-fun d!622758 () Bool)

(assert (=> d!622758 e!1284391))

(declare-fun res!891809 () Bool)

(assert (=> d!622758 (=> res!891809 e!1284391)))

(assert (=> d!622758 (= res!891809 (isEmpty!13882 lt!764201))))

(assert (=> d!622758 (= lt!764201 e!1284390)))

(declare-fun c!329350 () Bool)

(assert (=> d!622758 (= c!329350 (isEmpty!13880 (_1!11932 lt!764205)))))

(assert (=> d!622758 (= lt!764205 (findLongestMatch!484 (regex!3994 (h!27623 rules!3198)) lt!763202))))

(assert (=> d!622758 (ruleValid!1225 thiss!23328 (h!27623 rules!3198))))

(assert (=> d!622758 (= (maxPrefixOneRule!1269 thiss!23328 (h!27623 rules!3198) lt!763202) lt!764201)))

(declare-fun b!2033686 () Bool)

(assert (=> b!2033686 (= e!1284390 None!4673)))

(declare-fun b!2033687 () Bool)

(declare-fun res!891813 () Bool)

(assert (=> b!2033687 (=> (not res!891813) (not e!1284393))))

(assert (=> b!2033687 (= res!891813 (= (rule!6229 (_1!11926 (get!7060 lt!764201))) (h!27623 rules!3198)))))

(declare-fun b!2033688 () Bool)

(declare-fun res!891810 () Bool)

(assert (=> b!2033688 (=> (not res!891810) (not e!1284393))))

(assert (=> b!2033688 (= res!891810 (< (size!17366 (_2!11926 (get!7060 lt!764201))) (size!17366 lt!763202)))))

(declare-fun b!2033689 () Bool)

(assert (=> b!2033689 (= e!1284393 (= (size!17362 (_1!11926 (get!7060 lt!764201))) (size!17366 (originalCharacters!4801 (_1!11926 (get!7060 lt!764201))))))))

(declare-fun b!2033690 () Bool)

(assert (=> b!2033690 (= e!1284392 (matchR!2685 (regex!3994 (h!27623 rules!3198)) (_1!11932 (findLongestMatchInner!557 (regex!3994 (h!27623 rules!3198)) Nil!22221 (size!17366 Nil!22221) lt!763202 lt!763202 (size!17366 lt!763202)))))))

(declare-fun b!2033691 () Bool)

(declare-fun res!891807 () Bool)

(assert (=> b!2033691 (=> (not res!891807) (not e!1284393))))

(assert (=> b!2033691 (= res!891807 (= (value!125420 (_1!11926 (get!7060 lt!764201))) (apply!5857 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!764201)))) (seqFromList!2848 (originalCharacters!4801 (_1!11926 (get!7060 lt!764201)))))))))

(assert (= (and d!622758 c!329350) b!2033686))

(assert (= (and d!622758 (not c!329350)) b!2033684))

(assert (= (and b!2033684 (not res!891808)) b!2033690))

(assert (= (and d!622758 (not res!891809)) b!2033683))

(assert (= (and b!2033683 res!891812) b!2033685))

(assert (= (and b!2033685 res!891811) b!2033688))

(assert (= (and b!2033688 res!891810) b!2033687))

(assert (= (and b!2033687 res!891813) b!2033691))

(assert (= (and b!2033691 res!891807) b!2033689))

(declare-fun m!2476277 () Bool)

(assert (=> b!2033688 m!2476277))

(declare-fun m!2476279 () Bool)

(assert (=> b!2033688 m!2476279))

(assert (=> b!2033688 m!2472979))

(assert (=> b!2033691 m!2476277))

(declare-fun m!2476281 () Bool)

(assert (=> b!2033691 m!2476281))

(assert (=> b!2033691 m!2476281))

(declare-fun m!2476283 () Bool)

(assert (=> b!2033691 m!2476283))

(assert (=> b!2033685 m!2476277))

(declare-fun m!2476285 () Bool)

(assert (=> b!2033685 m!2476285))

(assert (=> b!2033685 m!2476285))

(declare-fun m!2476287 () Bool)

(assert (=> b!2033685 m!2476287))

(assert (=> b!2033685 m!2476287))

(declare-fun m!2476289 () Bool)

(assert (=> b!2033685 m!2476289))

(assert (=> b!2033690 m!2475885))

(assert (=> b!2033690 m!2472979))

(assert (=> b!2033690 m!2475885))

(assert (=> b!2033690 m!2472979))

(declare-fun m!2476291 () Bool)

(assert (=> b!2033690 m!2476291))

(declare-fun m!2476293 () Bool)

(assert (=> b!2033690 m!2476293))

(declare-fun m!2476295 () Bool)

(assert (=> b!2033684 m!2476295))

(declare-fun m!2476297 () Bool)

(assert (=> b!2033684 m!2476297))

(assert (=> b!2033684 m!2476295))

(declare-fun m!2476299 () Bool)

(assert (=> b!2033684 m!2476299))

(assert (=> b!2033684 m!2476295))

(declare-fun m!2476301 () Bool)

(assert (=> b!2033684 m!2476301))

(assert (=> b!2033684 m!2472979))

(assert (=> b!2033684 m!2476295))

(declare-fun m!2476303 () Bool)

(assert (=> b!2033684 m!2476303))

(declare-fun m!2476305 () Bool)

(assert (=> b!2033684 m!2476305))

(assert (=> b!2033684 m!2475885))

(assert (=> b!2033684 m!2472979))

(assert (=> b!2033684 m!2476291))

(assert (=> b!2033684 m!2475885))

(assert (=> b!2033683 m!2476277))

(assert (=> b!2033683 m!2476285))

(assert (=> b!2033683 m!2476285))

(assert (=> b!2033683 m!2476287))

(assert (=> b!2033683 m!2476287))

(declare-fun m!2476307 () Bool)

(assert (=> b!2033683 m!2476307))

(assert (=> b!2033687 m!2476277))

(assert (=> b!2033689 m!2476277))

(declare-fun m!2476309 () Bool)

(assert (=> b!2033689 m!2476309))

(declare-fun m!2476311 () Bool)

(assert (=> d!622758 m!2476311))

(declare-fun m!2476313 () Bool)

(assert (=> d!622758 m!2476313))

(declare-fun m!2476315 () Bool)

(assert (=> d!622758 m!2476315))

(assert (=> d!622758 m!2474927))

(assert (=> bm!124693 d!622758))

(declare-fun d!622760 () Bool)

(assert (=> d!622760 (= (inv!17 (value!125420 separatorToken!354)) (= (charsToBigInt!1 (text!29358 (value!125420 separatorToken!354))) (value!125412 (value!125420 separatorToken!354))))))

(declare-fun bs!421269 () Bool)

(assert (= bs!421269 d!622760))

(declare-fun m!2476317 () Bool)

(assert (=> bs!421269 m!2476317))

(assert (=> b!2031643 d!622760))

(assert (=> b!2031829 d!622390))

(assert (=> b!2031829 d!622392))

(assert (=> b!2031829 d!622104))

(declare-fun d!622762 () Bool)

(declare-fun lt!764206 () Bool)

(assert (=> d!622762 (= lt!764206 (isEmpty!13880 (list!9077 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)))))))))

(assert (=> d!622762 (= lt!764206 (isEmpty!13888 (c!328893 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354)))))))))

(assert (=> d!622762 (= (isEmpty!13878 (_2!11925 (lex!1623 thiss!23328 rules!3198 (print!1569 thiss!23328 (singletonSeq!1970 separatorToken!354))))) lt!764206)))

(declare-fun bs!421270 () Bool)

(assert (= bs!421270 d!622762))

(declare-fun m!2476319 () Bool)

(assert (=> bs!421270 m!2476319))

(assert (=> bs!421270 m!2476319))

(declare-fun m!2476321 () Bool)

(assert (=> bs!421270 m!2476321))

(declare-fun m!2476323 () Bool)

(assert (=> bs!421270 m!2476323))

(assert (=> b!2031649 d!622762))

(assert (=> b!2031649 d!622594))

(assert (=> b!2031649 d!622584))

(assert (=> b!2031649 d!622582))

(declare-fun e!1284395 () Bool)

(declare-fun b!2033695 () Bool)

(declare-fun lt!764207 () List!22303)

(assert (=> b!2033695 (= e!1284395 (or (not (= lt!763526 Nil!22221)) (= lt!764207 lt!763531)))))

(declare-fun b!2033694 () Bool)

(declare-fun res!891815 () Bool)

(assert (=> b!2033694 (=> (not res!891815) (not e!1284395))))

(assert (=> b!2033694 (= res!891815 (= (size!17366 lt!764207) (+ (size!17366 lt!763531) (size!17366 lt!763526))))))

(declare-fun b!2033692 () Bool)

(declare-fun e!1284394 () List!22303)

(assert (=> b!2033692 (= e!1284394 lt!763526)))

(declare-fun b!2033693 () Bool)

(assert (=> b!2033693 (= e!1284394 (Cons!22221 (h!27622 lt!763531) (++!6013 (t!190662 lt!763531) lt!763526)))))

(declare-fun d!622764 () Bool)

(assert (=> d!622764 e!1284395))

(declare-fun res!891814 () Bool)

(assert (=> d!622764 (=> (not res!891814) (not e!1284395))))

(assert (=> d!622764 (= res!891814 (= (content!3285 lt!764207) ((_ map or) (content!3285 lt!763531) (content!3285 lt!763526))))))

(assert (=> d!622764 (= lt!764207 e!1284394)))

(declare-fun c!329351 () Bool)

(assert (=> d!622764 (= c!329351 ((_ is Nil!22221) lt!763531))))

(assert (=> d!622764 (= (++!6013 lt!763531 lt!763526) lt!764207)))

(assert (= (and d!622764 c!329351) b!2033692))

(assert (= (and d!622764 (not c!329351)) b!2033693))

(assert (= (and d!622764 res!891814) b!2033694))

(assert (= (and b!2033694 res!891815) b!2033695))

(declare-fun m!2476325 () Bool)

(assert (=> b!2033694 m!2476325))

(declare-fun m!2476327 () Bool)

(assert (=> b!2033694 m!2476327))

(declare-fun m!2476329 () Bool)

(assert (=> b!2033694 m!2476329))

(declare-fun m!2476331 () Bool)

(assert (=> b!2033693 m!2476331))

(declare-fun m!2476333 () Bool)

(assert (=> d!622764 m!2476333))

(declare-fun m!2476335 () Bool)

(assert (=> d!622764 m!2476335))

(declare-fun m!2476337 () Bool)

(assert (=> d!622764 m!2476337))

(assert (=> d!621896 d!622764))

(declare-fun d!622766 () Bool)

(assert (=> d!622766 (= (isEmpty!13882 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193))) (not ((_ is Some!4673) (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193)))))))

(assert (=> d!621896 d!622766))

(assert (=> d!621896 d!621872))

(assert (=> d!621896 d!621836))

(declare-fun b!2033698 () Bool)

(declare-fun e!1284397 () Bool)

(assert (=> b!2033698 (= e!1284397 (isPrefix!1987 (tail!3064 lt!763531) (tail!3064 (++!6013 lt!763531 lt!763526))))))

(declare-fun d!622768 () Bool)

(declare-fun e!1284396 () Bool)

(assert (=> d!622768 e!1284396))

(declare-fun res!891819 () Bool)

(assert (=> d!622768 (=> res!891819 e!1284396)))

(declare-fun lt!764208 () Bool)

(assert (=> d!622768 (= res!891819 (not lt!764208))))

(declare-fun e!1284398 () Bool)

(assert (=> d!622768 (= lt!764208 e!1284398)))

(declare-fun res!891817 () Bool)

(assert (=> d!622768 (=> res!891817 e!1284398)))

(assert (=> d!622768 (= res!891817 ((_ is Nil!22221) lt!763531))))

(assert (=> d!622768 (= (isPrefix!1987 lt!763531 (++!6013 lt!763531 lt!763526)) lt!764208)))

(declare-fun b!2033696 () Bool)

(assert (=> b!2033696 (= e!1284398 e!1284397)))

(declare-fun res!891816 () Bool)

(assert (=> b!2033696 (=> (not res!891816) (not e!1284397))))

(assert (=> b!2033696 (= res!891816 (not ((_ is Nil!22221) (++!6013 lt!763531 lt!763526))))))

(declare-fun b!2033699 () Bool)

(assert (=> b!2033699 (= e!1284396 (>= (size!17366 (++!6013 lt!763531 lt!763526)) (size!17366 lt!763531)))))

(declare-fun b!2033697 () Bool)

(declare-fun res!891818 () Bool)

(assert (=> b!2033697 (=> (not res!891818) (not e!1284397))))

(assert (=> b!2033697 (= res!891818 (= (head!4589 lt!763531) (head!4589 (++!6013 lt!763531 lt!763526))))))

(assert (= (and d!622768 (not res!891817)) b!2033696))

(assert (= (and b!2033696 res!891816) b!2033697))

(assert (= (and b!2033697 res!891818) b!2033698))

(assert (= (and d!622768 (not res!891819)) b!2033699))

(declare-fun m!2476339 () Bool)

(assert (=> b!2033698 m!2476339))

(assert (=> b!2033698 m!2473629))

(declare-fun m!2476341 () Bool)

(assert (=> b!2033698 m!2476341))

(assert (=> b!2033698 m!2476339))

(assert (=> b!2033698 m!2476341))

(declare-fun m!2476343 () Bool)

(assert (=> b!2033698 m!2476343))

(assert (=> b!2033699 m!2473629))

(declare-fun m!2476345 () Bool)

(assert (=> b!2033699 m!2476345))

(assert (=> b!2033699 m!2476327))

(declare-fun m!2476347 () Bool)

(assert (=> b!2033697 m!2476347))

(assert (=> b!2033697 m!2473629))

(declare-fun m!2476349 () Bool)

(assert (=> b!2033697 m!2476349))

(assert (=> d!621896 d!622768))

(assert (=> d!621896 d!622356))

(declare-fun d!622770 () Bool)

(assert (=> d!622770 (= (get!7060 (maxPrefix!2043 thiss!23328 rules!3198 lt!763202)) (v!27006 (maxPrefix!2043 thiss!23328 rules!3198 lt!763202)))))

(assert (=> d!621896 d!622770))

(assert (=> d!621896 d!621830))

(assert (=> d!621896 d!622360))

(assert (=> d!621896 d!621718))

(declare-fun d!622772 () Bool)

(assert (=> d!622772 (isPrefix!1987 lt!763531 (++!6013 lt!763531 lt!763526))))

(declare-fun lt!764211 () Unit!36902)

(declare-fun choose!12415 (List!22303 List!22303) Unit!36902)

(assert (=> d!622772 (= lt!764211 (choose!12415 lt!763531 lt!763526))))

(assert (=> d!622772 (= (lemmaConcatTwoListThenFirstIsPrefix!1348 lt!763531 lt!763526) lt!764211)))

(declare-fun bs!421271 () Bool)

(assert (= bs!421271 d!622772))

(assert (=> bs!421271 m!2473629))

(assert (=> bs!421271 m!2473629))

(assert (=> bs!421271 m!2473631))

(declare-fun m!2476351 () Bool)

(assert (=> bs!421271 m!2476351))

(assert (=> d!621896 d!622772))

(declare-fun d!622774 () Bool)

(assert (=> d!622774 (= (head!4590 (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))) (h!27624 (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 lt!763202))))))))

(assert (=> d!621896 d!622774))

(assert (=> d!621896 d!621774))

(assert (=> d!621896 d!622570))

(declare-fun e!1284400 () Bool)

(declare-fun b!2033702 () Bool)

(assert (=> b!2033702 (= e!1284400 (isPrefix!1987 (tail!3064 lt!763521) (tail!3064 (++!6013 lt!763202 lt!763193))))))

(declare-fun d!622776 () Bool)

(declare-fun e!1284399 () Bool)

(assert (=> d!622776 e!1284399))

(declare-fun res!891823 () Bool)

(assert (=> d!622776 (=> res!891823 e!1284399)))

(declare-fun lt!764212 () Bool)

(assert (=> d!622776 (= res!891823 (not lt!764212))))

(declare-fun e!1284401 () Bool)

(assert (=> d!622776 (= lt!764212 e!1284401)))

(declare-fun res!891821 () Bool)

(assert (=> d!622776 (=> res!891821 e!1284401)))

(assert (=> d!622776 (= res!891821 ((_ is Nil!22221) lt!763521))))

(assert (=> d!622776 (= (isPrefix!1987 lt!763521 (++!6013 lt!763202 lt!763193)) lt!764212)))

(declare-fun b!2033700 () Bool)

(assert (=> b!2033700 (= e!1284401 e!1284400)))

(declare-fun res!891820 () Bool)

(assert (=> b!2033700 (=> (not res!891820) (not e!1284400))))

(assert (=> b!2033700 (= res!891820 (not ((_ is Nil!22221) (++!6013 lt!763202 lt!763193))))))

(declare-fun b!2033703 () Bool)

(assert (=> b!2033703 (= e!1284399 (>= (size!17366 (++!6013 lt!763202 lt!763193)) (size!17366 lt!763521)))))

(declare-fun b!2033701 () Bool)

(declare-fun res!891822 () Bool)

(assert (=> b!2033701 (=> (not res!891822) (not e!1284400))))

(assert (=> b!2033701 (= res!891822 (= (head!4589 lt!763521) (head!4589 (++!6013 lt!763202 lt!763193))))))

(assert (= (and d!622776 (not res!891821)) b!2033700))

(assert (= (and b!2033700 res!891820) b!2033701))

(assert (= (and b!2033701 res!891822) b!2033702))

(assert (= (and d!622776 (not res!891823)) b!2033703))

(declare-fun m!2476353 () Bool)

(assert (=> b!2033702 m!2476353))

(assert (=> b!2033702 m!2472713))

(assert (=> b!2033702 m!2474917))

(assert (=> b!2033702 m!2476353))

(assert (=> b!2033702 m!2474917))

(declare-fun m!2476355 () Bool)

(assert (=> b!2033702 m!2476355))

(assert (=> b!2033703 m!2472713))

(assert (=> b!2033703 m!2473115))

(declare-fun m!2476357 () Bool)

(assert (=> b!2033703 m!2476357))

(declare-fun m!2476359 () Bool)

(assert (=> b!2033701 m!2476359))

(assert (=> b!2033701 m!2472713))

(assert (=> b!2033701 m!2474921))

(assert (=> d!621896 d!622776))

(declare-fun d!622778 () Bool)

(assert (=> d!622778 (isPrefix!1987 lt!763521 (++!6013 lt!763202 lt!763193))))

(declare-fun lt!764215 () Unit!36902)

(declare-fun choose!12416 (List!22303 List!22303 List!22303) Unit!36902)

(assert (=> d!622778 (= lt!764215 (choose!12416 lt!763521 lt!763202 lt!763193))))

(assert (=> d!622778 (isPrefix!1987 lt!763521 lt!763202)))

(assert (=> d!622778 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!381 lt!763521 lt!763202 lt!763193) lt!764215)))

(declare-fun bs!421272 () Bool)

(assert (= bs!421272 d!622778))

(assert (=> bs!421272 m!2472713))

(assert (=> bs!421272 m!2472713))

(assert (=> bs!421272 m!2473635))

(declare-fun m!2476361 () Bool)

(assert (=> bs!421272 m!2476361))

(declare-fun m!2476363 () Bool)

(assert (=> bs!421272 m!2476363))

(assert (=> d!621896 d!622778))

(assert (=> d!621896 d!621786))

(assert (=> d!621896 d!622358))

(declare-fun d!622780 () Bool)

(assert (=> d!622780 (= (isDefined!3960 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193))) (not (isEmpty!13882 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 lt!763202 lt!763193)))))))

(declare-fun bs!421273 () Bool)

(assert (= bs!421273 d!622780))

(assert (=> bs!421273 m!2472715))

(assert (=> bs!421273 m!2473647))

(assert (=> d!621896 d!622780))

(declare-fun d!622782 () Bool)

(declare-fun e!1284402 () Bool)

(assert (=> d!622782 e!1284402))

(declare-fun res!891824 () Bool)

(assert (=> d!622782 (=> (not res!891824) (not e!1284402))))

(assert (=> d!622782 (= res!891824 (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))))))

(declare-fun lt!764216 () Unit!36902)

(assert (=> d!622782 (= lt!764216 (choose!12392 thiss!23328 rules!3198 lt!763202 lt!763529))))

(assert (=> d!622782 (rulesInvariant!3214 thiss!23328 rules!3198)))

(assert (=> d!622782 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 thiss!23328 rules!3198 lt!763202 lt!763529) lt!764216)))

(declare-fun b!2033704 () Bool)

(declare-fun res!891825 () Bool)

(assert (=> b!2033704 (=> (not res!891825) (not e!1284402))))

(assert (=> b!2033704 (= res!891825 (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))) (list!9077 (charsOf!2534 lt!763529))))))

(declare-fun b!2033705 () Bool)

(assert (=> b!2033705 (= e!1284402 (= (rule!6229 lt!763529) (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))))))

(assert (= (and d!622782 res!891824) b!2033704))

(assert (= (and b!2033704 res!891825) b!2033705))

(assert (=> d!622782 m!2473621))

(assert (=> d!622782 m!2473621))

(assert (=> d!622782 m!2473641))

(declare-fun m!2476365 () Bool)

(assert (=> d!622782 m!2476365))

(assert (=> d!622782 m!2472749))

(assert (=> b!2033704 m!2473625))

(assert (=> b!2033704 m!2473627))

(assert (=> b!2033704 m!2473619))

(assert (=> b!2033704 m!2473625))

(assert (=> b!2033704 m!2473621))

(assert (=> b!2033704 m!2473621))

(assert (=> b!2033704 m!2473623))

(assert (=> b!2033704 m!2473619))

(assert (=> b!2033705 m!2473621))

(assert (=> b!2033705 m!2473621))

(assert (=> b!2033705 m!2473623))

(assert (=> d!621896 d!622782))

(declare-fun d!622784 () Bool)

(assert (=> d!622784 (= (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529)))) (not (isEmpty!13881 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!763529))))))))

(declare-fun bs!421274 () Bool)

(assert (= bs!421274 d!622784))

(assert (=> bs!421274 m!2473621))

(declare-fun m!2476367 () Bool)

(assert (=> bs!421274 m!2476367))

(assert (=> d!621896 d!622784))

(declare-fun d!622786 () Bool)

(assert (=> d!622786 (= (inv!29404 (tag!4482 (rule!6229 (h!27624 (t!190664 tokens!598))))) (= (mod (str.len (value!125419 (tag!4482 (rule!6229 (h!27624 (t!190664 tokens!598)))))) 2) 0))))

(assert (=> b!2032251 d!622786))

(declare-fun d!622788 () Bool)

(declare-fun res!891826 () Bool)

(declare-fun e!1284403 () Bool)

(assert (=> d!622788 (=> (not res!891826) (not e!1284403))))

(assert (=> d!622788 (= res!891826 (semiInverseModEq!1611 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))))))

(assert (=> d!622788 (= (inv!29407 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) e!1284403)))

(declare-fun b!2033706 () Bool)

(assert (=> b!2033706 (= e!1284403 (equivClasses!1538 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))))))

(assert (= (and d!622788 res!891826) b!2033706))

(declare-fun m!2476369 () Bool)

(assert (=> d!622788 m!2476369))

(declare-fun m!2476371 () Bool)

(assert (=> b!2033706 m!2476371))

(assert (=> b!2032251 d!622788))

(declare-fun d!622790 () Bool)

(declare-fun lt!764217 () BalanceConc!14684)

(assert (=> d!622790 (= (list!9077 lt!764217) (printList!1126 thiss!23328 (list!9080 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))))))))

(assert (=> d!622790 (= lt!764217 (printTailRec!1075 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))) 0 (BalanceConc!14685 Empty!7434)))))

(assert (=> d!622790 (= (print!1569 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 tokens!598)))) lt!764217)))

(declare-fun bs!421275 () Bool)

(assert (= bs!421275 d!622790))

(declare-fun m!2476373 () Bool)

(assert (=> bs!421275 m!2476373))

(assert (=> bs!421275 m!2473215))

(declare-fun m!2476375 () Bool)

(assert (=> bs!421275 m!2476375))

(assert (=> bs!421275 m!2476375))

(declare-fun m!2476377 () Bool)

(assert (=> bs!421275 m!2476377))

(assert (=> bs!421275 m!2473215))

(assert (=> bs!421275 m!2473219))

(assert (=> b!2031905 d!622790))

(declare-fun d!622792 () Bool)

(declare-fun e!1284404 () Bool)

(assert (=> d!622792 e!1284404))

(declare-fun res!891827 () Bool)

(assert (=> d!622792 (=> (not res!891827) (not e!1284404))))

(declare-fun lt!764218 () BalanceConc!14686)

(assert (=> d!622792 (= res!891827 (= (list!9080 lt!764218) (Cons!22223 (h!27624 (t!190664 tokens!598)) Nil!22223)))))

(assert (=> d!622792 (= lt!764218 (singleton!886 (h!27624 (t!190664 tokens!598))))))

(assert (=> d!622792 (= (singletonSeq!1970 (h!27624 (t!190664 tokens!598))) lt!764218)))

(declare-fun b!2033707 () Bool)

(assert (=> b!2033707 (= e!1284404 (isBalanced!2319 (c!328895 lt!764218)))))

(assert (= (and d!622792 res!891827) b!2033707))

(declare-fun m!2476379 () Bool)

(assert (=> d!622792 m!2476379))

(declare-fun m!2476381 () Bool)

(assert (=> d!622792 m!2476381))

(declare-fun m!2476383 () Bool)

(assert (=> b!2033707 m!2476383))

(assert (=> b!2031905 d!622792))

(declare-fun d!622794 () Bool)

(declare-fun lt!764221 () BalanceConc!14684)

(assert (=> d!622794 (= (list!9077 lt!764221) (printListTailRec!491 thiss!23328 (dropList!822 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))) 0) (list!9077 (BalanceConc!14685 Empty!7434))))))

(declare-fun e!1284405 () BalanceConc!14684)

(assert (=> d!622794 (= lt!764221 e!1284405)))

(declare-fun c!329352 () Bool)

(assert (=> d!622794 (= c!329352 (>= 0 (size!17365 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))))))))

(declare-fun e!1284406 () Bool)

(assert (=> d!622794 e!1284406))

(declare-fun res!891828 () Bool)

(assert (=> d!622794 (=> (not res!891828) (not e!1284406))))

(assert (=> d!622794 (= res!891828 (>= 0 0))))

(assert (=> d!622794 (= (printTailRec!1075 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))) 0 (BalanceConc!14685 Empty!7434)) lt!764221)))

(declare-fun b!2033708 () Bool)

(assert (=> b!2033708 (= e!1284406 (<= 0 (size!17365 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))))))))

(declare-fun b!2033709 () Bool)

(assert (=> b!2033709 (= e!1284405 (BalanceConc!14685 Empty!7434))))

(declare-fun b!2033710 () Bool)

(assert (=> b!2033710 (= e!1284405 (printTailRec!1075 thiss!23328 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))) (+ 0 1) (++!6015 (BalanceConc!14685 Empty!7434) (charsOf!2534 (apply!5856 (singletonSeq!1970 (h!27624 (t!190664 tokens!598))) 0)))))))

(declare-fun lt!764220 () List!22305)

(assert (=> b!2033710 (= lt!764220 (list!9080 (singletonSeq!1970 (h!27624 (t!190664 tokens!598)))))))

(declare-fun lt!764219 () Unit!36902)

(assert (=> b!2033710 (= lt!764219 (lemmaDropApply!746 lt!764220 0))))

(assert (=> b!2033710 (= (head!4590 (drop!1123 lt!764220 0)) (apply!5859 lt!764220 0))))

(declare-fun lt!764223 () Unit!36902)

(assert (=> b!2033710 (= lt!764223 lt!764219)))

(declare-fun lt!764222 () List!22305)

(assert (=> b!2033710 (= lt!764222 (list!9080 (singletonSeq!1970 (h!27624 (t!190664 tokens!598)))))))

(declare-fun lt!764224 () Unit!36902)

(assert (=> b!2033710 (= lt!764224 (lemmaDropTail!722 lt!764222 0))))

(assert (=> b!2033710 (= (tail!3066 (drop!1123 lt!764222 0)) (drop!1123 lt!764222 (+ 0 1)))))

(declare-fun lt!764225 () Unit!36902)

(assert (=> b!2033710 (= lt!764225 lt!764224)))

(assert (= (and d!622794 res!891828) b!2033708))

(assert (= (and d!622794 c!329352) b!2033709))

(assert (= (and d!622794 (not c!329352)) b!2033710))

(assert (=> d!622794 m!2473525))

(assert (=> d!622794 m!2473215))

(declare-fun m!2476385 () Bool)

(assert (=> d!622794 m!2476385))

(declare-fun m!2476387 () Bool)

(assert (=> d!622794 m!2476387))

(assert (=> d!622794 m!2473215))

(declare-fun m!2476389 () Bool)

(assert (=> d!622794 m!2476389))

(assert (=> d!622794 m!2476389))

(assert (=> d!622794 m!2473525))

(declare-fun m!2476391 () Bool)

(assert (=> d!622794 m!2476391))

(assert (=> b!2033708 m!2473215))

(assert (=> b!2033708 m!2476385))

(declare-fun m!2476393 () Bool)

(assert (=> b!2033710 m!2476393))

(declare-fun m!2476395 () Bool)

(assert (=> b!2033710 m!2476395))

(assert (=> b!2033710 m!2473215))

(assert (=> b!2033710 m!2476395))

(declare-fun m!2476397 () Bool)

(assert (=> b!2033710 m!2476397))

(assert (=> b!2033710 m!2473215))

(assert (=> b!2033710 m!2476375))

(declare-fun m!2476399 () Bool)

(assert (=> b!2033710 m!2476399))

(declare-fun m!2476401 () Bool)

(assert (=> b!2033710 m!2476401))

(declare-fun m!2476403 () Bool)

(assert (=> b!2033710 m!2476403))

(declare-fun m!2476405 () Bool)

(assert (=> b!2033710 m!2476405))

(assert (=> b!2033710 m!2473215))

(declare-fun m!2476407 () Bool)

(assert (=> b!2033710 m!2476407))

(assert (=> b!2033710 m!2476399))

(declare-fun m!2476409 () Bool)

(assert (=> b!2033710 m!2476409))

(declare-fun m!2476411 () Bool)

(assert (=> b!2033710 m!2476411))

(declare-fun m!2476413 () Bool)

(assert (=> b!2033710 m!2476413))

(declare-fun m!2476415 () Bool)

(assert (=> b!2033710 m!2476415))

(assert (=> b!2033710 m!2476407))

(assert (=> b!2033710 m!2476393))

(assert (=> b!2033710 m!2476411))

(assert (=> b!2031905 d!622794))

(declare-fun b!2033711 () Bool)

(declare-fun res!891830 () Bool)

(declare-fun e!1284407 () Bool)

(assert (=> b!2033711 (=> (not res!891830) (not e!1284407))))

(declare-fun lt!764238 () Token!7540)

(assert (=> b!2033711 (= res!891830 (matchR!2685 (regex!3994 (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!764238))))) (list!9077 (charsOf!2534 lt!764238))))))

(declare-fun b!2033714 () Bool)

(declare-fun e!1284408 () Unit!36902)

(declare-fun Unit!36922 () Unit!36902)

(assert (=> b!2033714 (= e!1284408 Unit!36922)))

(declare-fun d!622796 () Bool)

(assert (=> d!622796 (isDefined!3960 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 call!124718 lt!763343)))))

(declare-fun lt!764242 () Unit!36902)

(assert (=> d!622796 (= lt!764242 e!1284408)))

(declare-fun c!329353 () Bool)

(assert (=> d!622796 (= c!329353 (isEmpty!13882 (maxPrefix!2043 thiss!23328 rules!3198 (++!6013 call!124718 lt!763343))))))

(declare-fun lt!764228 () Unit!36902)

(declare-fun lt!764234 () Unit!36902)

(assert (=> d!622796 (= lt!764228 lt!764234)))

(assert (=> d!622796 e!1284407))

(declare-fun res!891829 () Bool)

(assert (=> d!622796 (=> (not res!891829) (not e!1284407))))

(assert (=> d!622796 (= res!891829 (isDefined!3959 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!764238)))))))

(assert (=> d!622796 (= lt!764234 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!809 thiss!23328 rules!3198 call!124718 lt!764238))))

(declare-fun lt!764239 () Unit!36902)

(declare-fun lt!764232 () Unit!36902)

(assert (=> d!622796 (= lt!764239 lt!764232)))

(declare-fun lt!764230 () List!22303)

(assert (=> d!622796 (isPrefix!1987 lt!764230 (++!6013 call!124718 lt!763343))))

(assert (=> d!622796 (= lt!764232 (lemmaPrefixStaysPrefixWhenAddingToSuffix!381 lt!764230 call!124718 lt!763343))))

(assert (=> d!622796 (= lt!764230 (list!9077 (charsOf!2534 lt!764238)))))

(declare-fun lt!764241 () Unit!36902)

(declare-fun lt!764233 () Unit!36902)

(assert (=> d!622796 (= lt!764241 lt!764233)))

(declare-fun lt!764240 () List!22303)

(declare-fun lt!764235 () List!22303)

(assert (=> d!622796 (isPrefix!1987 lt!764240 (++!6013 lt!764240 lt!764235))))

(assert (=> d!622796 (= lt!764233 (lemmaConcatTwoListThenFirstIsPrefix!1348 lt!764240 lt!764235))))

(assert (=> d!622796 (= lt!764235 (_2!11926 (get!7060 (maxPrefix!2043 thiss!23328 rules!3198 call!124718))))))

(assert (=> d!622796 (= lt!764240 (list!9077 (charsOf!2534 lt!764238)))))

(assert (=> d!622796 (= lt!764238 (head!4590 (list!9080 (_1!11925 (lex!1623 thiss!23328 rules!3198 (seqFromList!2848 call!124718))))))))

(assert (=> d!622796 (not (isEmpty!13873 rules!3198))))

(assert (=> d!622796 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!781 thiss!23328 rules!3198 call!124718 lt!763343) lt!764242)))

(declare-fun b!2033712 () Bool)

(assert (=> b!2033712 (= e!1284407 (= (rule!6229 lt!764238) (get!7059 (getRuleFromTag!809 thiss!23328 rules!3198 (tag!4482 (rule!6229 lt!764238))))))))

(declare-fun b!2033713 () Bool)

(declare-fun Unit!36923 () Unit!36902)

(assert (=> b!2033713 (= e!1284408 Unit!36923)))

(declare-fun lt!764226 () List!22303)

(assert (=> b!2033713 (= lt!764226 (++!6013 call!124718 lt!763343))))

(declare-fun lt!764229 () Unit!36902)

(assert (=> b!2033713 (= lt!764229 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!389 thiss!23328 (rule!6229 lt!764238) rules!3198 lt!764226))))

(assert (=> b!2033713 (isEmpty!13882 (maxPrefixOneRule!1269 thiss!23328 (rule!6229 lt!764238) lt!764226))))

(declare-fun lt!764236 () Unit!36902)

(assert (=> b!2033713 (= lt!764236 lt!764229)))

(declare-fun lt!764231 () List!22303)

(assert (=> b!2033713 (= lt!764231 (list!9077 (charsOf!2534 lt!764238)))))

(declare-fun lt!764227 () Unit!36902)

(assert (=> b!2033713 (= lt!764227 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!385 thiss!23328 (rule!6229 lt!764238) lt!764231 (++!6013 call!124718 lt!763343)))))

(assert (=> b!2033713 (not (matchR!2685 (regex!3994 (rule!6229 lt!764238)) lt!764231))))

(declare-fun lt!764237 () Unit!36902)

(assert (=> b!2033713 (= lt!764237 lt!764227)))

(assert (=> b!2033713 false))

(assert (= (and d!622796 res!891829) b!2033711))

(assert (= (and b!2033711 res!891830) b!2033712))

(assert (= (and d!622796 c!329353) b!2033713))

(assert (= (and d!622796 (not c!329353)) b!2033714))

(declare-fun m!2476417 () Bool)

(assert (=> b!2033711 m!2476417))

(declare-fun m!2476419 () Bool)

(assert (=> b!2033711 m!2476419))

(declare-fun m!2476421 () Bool)

(assert (=> b!2033711 m!2476421))

(declare-fun m!2476423 () Bool)

(assert (=> b!2033711 m!2476423))

(declare-fun m!2476425 () Bool)

(assert (=> b!2033711 m!2476425))

(assert (=> b!2033711 m!2476417))

(assert (=> b!2033711 m!2476423))

(assert (=> b!2033711 m!2476419))

(declare-fun m!2476427 () Bool)

(assert (=> d!622796 m!2476427))

(declare-fun m!2476429 () Bool)

(assert (=> d!622796 m!2476429))

(assert (=> d!622796 m!2472761))

(declare-fun m!2476431 () Bool)

(assert (=> d!622796 m!2476431))

(declare-fun m!2476433 () Bool)

(assert (=> d!622796 m!2476433))

(assert (=> d!622796 m!2476433))

(declare-fun m!2476435 () Bool)

(assert (=> d!622796 m!2476435))

(assert (=> d!622796 m!2476427))

(assert (=> d!622796 m!2476431))

(declare-fun m!2476437 () Bool)

(assert (=> d!622796 m!2476437))

(declare-fun m!2476439 () Bool)

(assert (=> d!622796 m!2476439))

(assert (=> d!622796 m!2476431))

(assert (=> d!622796 m!2476417))

(declare-fun m!2476441 () Bool)

(assert (=> d!622796 m!2476441))

(declare-fun m!2476443 () Bool)

(assert (=> d!622796 m!2476443))

(declare-fun m!2476445 () Bool)

(assert (=> d!622796 m!2476445))

(declare-fun m!2476447 () Bool)

(assert (=> d!622796 m!2476447))

(assert (=> d!622796 m!2476445))

(assert (=> d!622796 m!2476419))

(declare-fun m!2476449 () Bool)

(assert (=> d!622796 m!2476449))

(declare-fun m!2476451 () Bool)

(assert (=> d!622796 m!2476451))

(declare-fun m!2476453 () Bool)

(assert (=> d!622796 m!2476453))

(assert (=> d!622796 m!2476441))

(assert (=> d!622796 m!2476451))

(assert (=> d!622796 m!2476419))

(assert (=> d!622796 m!2476417))

(assert (=> d!622796 m!2476423))

(declare-fun m!2476455 () Bool)

(assert (=> d!622796 m!2476455))

(assert (=> d!622796 m!2476433))

(declare-fun m!2476457 () Bool)

(assert (=> d!622796 m!2476457))

(declare-fun m!2476459 () Bool)

(assert (=> d!622796 m!2476459))

(assert (=> b!2033712 m!2476419))

(assert (=> b!2033712 m!2476419))

(assert (=> b!2033712 m!2476421))

(declare-fun m!2476461 () Bool)

(assert (=> b!2033713 m!2476461))

(declare-fun m!2476463 () Bool)

(assert (=> b!2033713 m!2476463))

(assert (=> b!2033713 m!2476417))

(assert (=> b!2033713 m!2476461))

(declare-fun m!2476465 () Bool)

(assert (=> b!2033713 m!2476465))

(assert (=> b!2033713 m!2476431))

(assert (=> b!2033713 m!2476431))

(declare-fun m!2476467 () Bool)

(assert (=> b!2033713 m!2476467))

(assert (=> b!2033713 m!2476417))

(assert (=> b!2033713 m!2476423))

(declare-fun m!2476469 () Bool)

(assert (=> b!2033713 m!2476469))

(assert (=> b!2031905 d!622796))

(assert (=> b!2031947 d!622512))

(assert (=> b!2031954 d!622676))

(assert (=> b!2031954 d!621820))

(declare-fun b!2033715 () Bool)

(declare-fun e!1284409 () Bool)

(declare-fun tp!603903 () Bool)

(assert (=> b!2033715 (= e!1284409 (and tp_is_empty!9229 tp!603903))))

(assert (=> b!2032222 (= tp!603738 e!1284409)))

(assert (= (and b!2032222 ((_ is Cons!22221) (t!190662 (originalCharacters!4801 separatorToken!354)))) b!2033715))

(declare-fun b!2033719 () Bool)

(declare-fun b_free!56685 () Bool)

(declare-fun b_next!57389 () Bool)

(assert (=> b!2033719 (= b_free!56685 (not b_next!57389))))

(declare-fun t!191024 () Bool)

(declare-fun tb!128681 () Bool)

(assert (=> (and b!2033719 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!191024) tb!128681))

(declare-fun result!153874 () Bool)

(assert (= result!153874 result!153796))

(assert (=> d!622514 t!191024))

(declare-fun t!191026 () Bool)

(declare-fun tb!128683 () Bool)

(assert (=> (and b!2033719 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191026) tb!128683))

(declare-fun result!153876 () Bool)

(assert (= result!153876 result!153540))

(assert (=> d!621812 t!191026))

(declare-fun t!191028 () Bool)

(declare-fun tb!128685 () Bool)

(assert (=> (and b!2033719 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191028) tb!128685))

(declare-fun result!153878 () Bool)

(assert (= result!153878 result!153532))

(assert (=> d!621812 t!191028))

(declare-fun t!191030 () Bool)

(declare-fun tb!128687 () Bool)

(assert (=> (and b!2033719 (= (toValue!5671 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!191030) tb!128687))

(declare-fun result!153880 () Bool)

(assert (= result!153880 result!153766))

(assert (=> d!622436 t!191030))

(assert (=> d!621776 t!191028))

(declare-fun tp!603907 () Bool)

(declare-fun b_and!162341 () Bool)

(assert (=> b!2033719 (= tp!603907 (and (=> t!191030 result!153880) (=> t!191024 result!153874) (=> t!191026 result!153876) (=> t!191028 result!153878) b_and!162341))))

(declare-fun b_free!56687 () Bool)

(declare-fun b_next!57391 () Bool)

(assert (=> b!2033719 (= b_free!56687 (not b_next!57391))))

(declare-fun t!191032 () Bool)

(declare-fun tb!128689 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!191032) tb!128689))

(declare-fun result!153882 () Bool)

(assert (= result!153882 result!153756))

(assert (=> d!622392 t!191032))

(declare-fun t!191034 () Bool)

(declare-fun tb!128691 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191034) tb!128691))

(declare-fun result!153884 () Bool)

(assert (= result!153884 result!153520))

(assert (=> d!621828 t!191034))

(assert (=> b!2031721 t!191034))

(declare-fun tb!128693 () Bool)

(declare-fun t!191036 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0))))) t!191036) tb!128693))

(declare-fun result!153886 () Bool)

(assert (= result!153886 result!153864))

(assert (=> d!622722 t!191036))

(declare-fun t!191038 () Bool)

(declare-fun tb!128695 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) t!191038) tb!128695))

(declare-fun result!153888 () Bool)

(assert (= result!153888 result!153512))

(assert (=> d!621816 t!191038))

(assert (=> b!2031708 t!191038))

(declare-fun tb!128697 () Bool)

(declare-fun t!191040 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!191040) tb!128697))

(declare-fun result!153890 () Bool)

(assert (= result!153890 result!153716))

(assert (=> d!622318 t!191040))

(declare-fun t!191042 () Bool)

(declare-fun tb!128699 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) t!191042) tb!128699))

(declare-fun result!153892 () Bool)

(assert (= result!153892 result!153726))

(assert (=> b!2033029 t!191042))

(assert (=> d!622344 t!191042))

(declare-fun t!191044 () Bool)

(declare-fun tb!128701 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) t!191044) tb!128701))

(declare-fun result!153894 () Bool)

(assert (= result!153894 result!153776))

(assert (=> d!622454 t!191044))

(declare-fun t!191046 () Bool)

(declare-fun tb!128703 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) t!191046) tb!128703))

(declare-fun result!153896 () Bool)

(assert (= result!153896 result!153746))

(assert (=> d!622366 t!191046))

(declare-fun t!191048 () Bool)

(declare-fun tb!128705 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191048) tb!128705))

(declare-fun result!153898 () Bool)

(assert (= result!153898 result!153526))

(assert (=> d!621776 t!191048))

(declare-fun tb!128707 () Bool)

(declare-fun t!191050 () Bool)

(assert (=> (and b!2033719 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 lt!763529)))) t!191050) tb!128707))

(declare-fun result!153900 () Bool)

(assert (= result!153900 result!153736))

(assert (=> d!622358 t!191050))

(declare-fun tp!603905 () Bool)

(declare-fun b_and!162343 () Bool)

(assert (=> b!2033719 (= tp!603905 (and (=> t!191032 result!153882) (=> t!191046 result!153896) (=> t!191040 result!153890) (=> t!191044 result!153894) (=> t!191048 result!153898) (=> t!191034 result!153884) (=> t!191050 result!153900) (=> t!191036 result!153886) (=> t!191042 result!153892) (=> t!191038 result!153888) b_and!162343))))

(declare-fun b!2033717 () Bool)

(declare-fun e!1284413 () Bool)

(declare-fun tp!603908 () Bool)

(declare-fun e!1284415 () Bool)

(assert (=> b!2033717 (= e!1284415 (and (inv!21 (value!125420 (h!27624 (t!190664 (t!190664 tokens!598))))) e!1284413 tp!603908))))

(declare-fun b!2033718 () Bool)

(declare-fun e!1284414 () Bool)

(declare-fun tp!603904 () Bool)

(assert (=> b!2033718 (= e!1284413 (and tp!603904 (inv!29404 (tag!4482 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (inv!29407 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) e!1284414))))

(assert (=> b!2033719 (= e!1284414 (and tp!603907 tp!603905))))

(declare-fun e!1284412 () Bool)

(assert (=> b!2032249 (= tp!603769 e!1284412)))

(declare-fun b!2033716 () Bool)

(declare-fun tp!603906 () Bool)

(assert (=> b!2033716 (= e!1284412 (and (inv!29408 (h!27624 (t!190664 (t!190664 tokens!598)))) e!1284415 tp!603906))))

(assert (= b!2033718 b!2033719))

(assert (= b!2033717 b!2033718))

(assert (= b!2033716 b!2033717))

(assert (= (and b!2032249 ((_ is Cons!22223) (t!190664 (t!190664 tokens!598)))) b!2033716))

(declare-fun m!2476471 () Bool)

(assert (=> b!2033717 m!2476471))

(declare-fun m!2476473 () Bool)

(assert (=> b!2033718 m!2476473))

(declare-fun m!2476475 () Bool)

(assert (=> b!2033718 m!2476475))

(declare-fun m!2476477 () Bool)

(assert (=> b!2033716 m!2476477))

(declare-fun b!2033723 () Bool)

(declare-fun e!1284416 () Bool)

(declare-fun tp!603909 () Bool)

(declare-fun tp!603913 () Bool)

(assert (=> b!2033723 (= e!1284416 (and tp!603909 tp!603913))))

(declare-fun b!2033720 () Bool)

(assert (=> b!2033720 (= e!1284416 tp_is_empty!9229)))

(declare-fun b!2033722 () Bool)

(declare-fun tp!603910 () Bool)

(assert (=> b!2033722 (= e!1284416 tp!603910)))

(assert (=> b!2032255 (= tp!603773 e!1284416)))

(declare-fun b!2033721 () Bool)

(declare-fun tp!603911 () Bool)

(declare-fun tp!603912 () Bool)

(assert (=> b!2033721 (= e!1284416 (and tp!603911 tp!603912))))

(assert (= (and b!2032255 ((_ is ElementMatch!5419) (reg!5748 (regex!3994 (h!27623 rules!3198))))) b!2033720))

(assert (= (and b!2032255 ((_ is Concat!9550) (reg!5748 (regex!3994 (h!27623 rules!3198))))) b!2033721))

(assert (= (and b!2032255 ((_ is Star!5419) (reg!5748 (regex!3994 (h!27623 rules!3198))))) b!2033722))

(assert (= (and b!2032255 ((_ is Union!5419) (reg!5748 (regex!3994 (h!27623 rules!3198))))) b!2033723))

(declare-fun b!2033727 () Bool)

(declare-fun e!1284417 () Bool)

(declare-fun tp!603914 () Bool)

(declare-fun tp!603918 () Bool)

(assert (=> b!2033727 (= e!1284417 (and tp!603914 tp!603918))))

(declare-fun b!2033724 () Bool)

(assert (=> b!2033724 (= e!1284417 tp_is_empty!9229)))

(declare-fun b!2033726 () Bool)

(declare-fun tp!603915 () Bool)

(assert (=> b!2033726 (= e!1284417 tp!603915)))

(assert (=> b!2032256 (= tp!603772 e!1284417)))

(declare-fun b!2033725 () Bool)

(declare-fun tp!603916 () Bool)

(declare-fun tp!603917 () Bool)

(assert (=> b!2033725 (= e!1284417 (and tp!603916 tp!603917))))

(assert (= (and b!2032256 ((_ is ElementMatch!5419) (regOne!11351 (regex!3994 (h!27623 rules!3198))))) b!2033724))

(assert (= (and b!2032256 ((_ is Concat!9550) (regOne!11351 (regex!3994 (h!27623 rules!3198))))) b!2033725))

(assert (= (and b!2032256 ((_ is Star!5419) (regOne!11351 (regex!3994 (h!27623 rules!3198))))) b!2033726))

(assert (= (and b!2032256 ((_ is Union!5419) (regOne!11351 (regex!3994 (h!27623 rules!3198))))) b!2033727))

(declare-fun b!2033731 () Bool)

(declare-fun e!1284418 () Bool)

(declare-fun tp!603919 () Bool)

(declare-fun tp!603923 () Bool)

(assert (=> b!2033731 (= e!1284418 (and tp!603919 tp!603923))))

(declare-fun b!2033728 () Bool)

(assert (=> b!2033728 (= e!1284418 tp_is_empty!9229)))

(declare-fun b!2033730 () Bool)

(declare-fun tp!603920 () Bool)

(assert (=> b!2033730 (= e!1284418 tp!603920)))

(assert (=> b!2032256 (= tp!603776 e!1284418)))

(declare-fun b!2033729 () Bool)

(declare-fun tp!603921 () Bool)

(declare-fun tp!603922 () Bool)

(assert (=> b!2033729 (= e!1284418 (and tp!603921 tp!603922))))

(assert (= (and b!2032256 ((_ is ElementMatch!5419) (regTwo!11351 (regex!3994 (h!27623 rules!3198))))) b!2033728))

(assert (= (and b!2032256 ((_ is Concat!9550) (regTwo!11351 (regex!3994 (h!27623 rules!3198))))) b!2033729))

(assert (= (and b!2032256 ((_ is Star!5419) (regTwo!11351 (regex!3994 (h!27623 rules!3198))))) b!2033730))

(assert (= (and b!2032256 ((_ is Union!5419) (regTwo!11351 (regex!3994 (h!27623 rules!3198))))) b!2033731))

(declare-fun b!2033735 () Bool)

(declare-fun e!1284419 () Bool)

(declare-fun tp!603924 () Bool)

(declare-fun tp!603928 () Bool)

(assert (=> b!2033735 (= e!1284419 (and tp!603924 tp!603928))))

(declare-fun b!2033732 () Bool)

(assert (=> b!2033732 (= e!1284419 tp_is_empty!9229)))

(declare-fun b!2033734 () Bool)

(declare-fun tp!603925 () Bool)

(assert (=> b!2033734 (= e!1284419 tp!603925)))

(assert (=> b!2032254 (= tp!603774 e!1284419)))

(declare-fun b!2033733 () Bool)

(declare-fun tp!603926 () Bool)

(declare-fun tp!603927 () Bool)

(assert (=> b!2033733 (= e!1284419 (and tp!603926 tp!603927))))

(assert (= (and b!2032254 ((_ is ElementMatch!5419) (regOne!11350 (regex!3994 (h!27623 rules!3198))))) b!2033732))

(assert (= (and b!2032254 ((_ is Concat!9550) (regOne!11350 (regex!3994 (h!27623 rules!3198))))) b!2033733))

(assert (= (and b!2032254 ((_ is Star!5419) (regOne!11350 (regex!3994 (h!27623 rules!3198))))) b!2033734))

(assert (= (and b!2032254 ((_ is Union!5419) (regOne!11350 (regex!3994 (h!27623 rules!3198))))) b!2033735))

(declare-fun b!2033739 () Bool)

(declare-fun e!1284420 () Bool)

(declare-fun tp!603929 () Bool)

(declare-fun tp!603933 () Bool)

(assert (=> b!2033739 (= e!1284420 (and tp!603929 tp!603933))))

(declare-fun b!2033736 () Bool)

(assert (=> b!2033736 (= e!1284420 tp_is_empty!9229)))

(declare-fun b!2033738 () Bool)

(declare-fun tp!603930 () Bool)

(assert (=> b!2033738 (= e!1284420 tp!603930)))

(assert (=> b!2032254 (= tp!603775 e!1284420)))

(declare-fun b!2033737 () Bool)

(declare-fun tp!603931 () Bool)

(declare-fun tp!603932 () Bool)

(assert (=> b!2033737 (= e!1284420 (and tp!603931 tp!603932))))

(assert (= (and b!2032254 ((_ is ElementMatch!5419) (regTwo!11350 (regex!3994 (h!27623 rules!3198))))) b!2033736))

(assert (= (and b!2032254 ((_ is Concat!9550) (regTwo!11350 (regex!3994 (h!27623 rules!3198))))) b!2033737))

(assert (= (and b!2032254 ((_ is Star!5419) (regTwo!11350 (regex!3994 (h!27623 rules!3198))))) b!2033738))

(assert (= (and b!2032254 ((_ is Union!5419) (regTwo!11350 (regex!3994 (h!27623 rules!3198))))) b!2033739))

(declare-fun b!2033743 () Bool)

(declare-fun e!1284421 () Bool)

(declare-fun tp!603934 () Bool)

(declare-fun tp!603938 () Bool)

(assert (=> b!2033743 (= e!1284421 (and tp!603934 tp!603938))))

(declare-fun b!2033740 () Bool)

(assert (=> b!2033740 (= e!1284421 tp_is_empty!9229)))

(declare-fun b!2033742 () Bool)

(declare-fun tp!603935 () Bool)

(assert (=> b!2033742 (= e!1284421 tp!603935)))

(assert (=> b!2032232 (= tp!603748 e!1284421)))

(declare-fun b!2033741 () Bool)

(declare-fun tp!603936 () Bool)

(declare-fun tp!603937 () Bool)

(assert (=> b!2033741 (= e!1284421 (and tp!603936 tp!603937))))

(assert (= (and b!2032232 ((_ is ElementMatch!5419) (regex!3994 (h!27623 (t!190663 rules!3198))))) b!2033740))

(assert (= (and b!2032232 ((_ is Concat!9550) (regex!3994 (h!27623 (t!190663 rules!3198))))) b!2033741))

(assert (= (and b!2032232 ((_ is Star!5419) (regex!3994 (h!27623 (t!190663 rules!3198))))) b!2033742))

(assert (= (and b!2032232 ((_ is Union!5419) (regex!3994 (h!27623 (t!190663 rules!3198))))) b!2033743))

(declare-fun b!2033752 () Bool)

(declare-fun tp!603947 () Bool)

(declare-fun e!1284427 () Bool)

(declare-fun tp!603945 () Bool)

(assert (=> b!2033752 (= e!1284427 (and (inv!29409 (left!17681 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))))) tp!603947 (inv!29409 (right!18011 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))))) tp!603945))))

(declare-fun b!2033754 () Bool)

(declare-fun e!1284426 () Bool)

(declare-fun tp!603946 () Bool)

(assert (=> b!2033754 (= e!1284426 tp!603946)))

(declare-fun b!2033753 () Bool)

(declare-fun inv!29418 (IArray!14873) Bool)

(assert (=> b!2033753 (= e!1284427 (and (inv!29418 (xs!10336 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))))) e!1284426))))

(assert (=> b!2031723 (= tp!603658 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598))))) e!1284427))))

(assert (= (and b!2031723 ((_ is Node!7434) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))))) b!2033752))

(assert (= b!2033753 b!2033754))

(assert (= (and b!2031723 ((_ is Leaf!10894) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (value!125420 (h!27624 tokens!598)))))) b!2033753))

(declare-fun m!2476479 () Bool)

(assert (=> b!2033752 m!2476479))

(declare-fun m!2476481 () Bool)

(assert (=> b!2033752 m!2476481))

(declare-fun m!2476483 () Bool)

(assert (=> b!2033753 m!2476483))

(assert (=> b!2031723 m!2472925))

(declare-fun b!2033757 () Bool)

(declare-fun b_free!56689 () Bool)

(declare-fun b_next!57393 () Bool)

(assert (=> b!2033757 (= b_free!56689 (not b_next!57393))))

(declare-fun t!191052 () Bool)

(declare-fun tb!128709 () Bool)

(assert (=> (and b!2033757 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!191052) tb!128709))

(declare-fun result!153904 () Bool)

(assert (= result!153904 result!153796))

(assert (=> d!622514 t!191052))

(declare-fun t!191054 () Bool)

(declare-fun tb!128711 () Bool)

(assert (=> (and b!2033757 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191054) tb!128711))

(declare-fun result!153906 () Bool)

(assert (= result!153906 result!153540))

(assert (=> d!621812 t!191054))

(declare-fun tb!128713 () Bool)

(declare-fun t!191056 () Bool)

(assert (=> (and b!2033757 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191056) tb!128713))

(declare-fun result!153908 () Bool)

(assert (= result!153908 result!153532))

(assert (=> d!621812 t!191056))

(declare-fun t!191058 () Bool)

(declare-fun tb!128715 () Bool)

(assert (=> (and b!2033757 (= (toValue!5671 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toValue!5671 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!191058) tb!128715))

(declare-fun result!153910 () Bool)

(assert (= result!153910 result!153766))

(assert (=> d!622436 t!191058))

(assert (=> d!621776 t!191056))

(declare-fun b_and!162345 () Bool)

(declare-fun tp!603950 () Bool)

(assert (=> b!2033757 (= tp!603950 (and (=> t!191054 result!153906) (=> t!191058 result!153910) (=> t!191052 result!153904) (=> t!191056 result!153908) b_and!162345))))

(declare-fun b_free!56691 () Bool)

(declare-fun b_next!57395 () Bool)

(assert (=> b!2033757 (= b_free!56691 (not b_next!57395))))

(declare-fun tb!128717 () Bool)

(declare-fun t!191060 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763307)))))) t!191060) tb!128717))

(declare-fun result!153912 () Bool)

(assert (= result!153912 result!153756))

(assert (=> d!622392 t!191060))

(declare-fun tb!128719 () Bool)

(declare-fun t!191062 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191062) tb!128719))

(declare-fun result!153914 () Bool)

(assert (= result!153914 result!153520))

(assert (=> d!621828 t!191062))

(assert (=> b!2031721 t!191062))

(declare-fun t!191064 () Bool)

(declare-fun tb!128721 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (apply!5856 lt!763188 0))))) t!191064) tb!128721))

(declare-fun result!153916 () Bool)

(assert (= result!153916 result!153864))

(assert (=> d!622722 t!191064))

(declare-fun tb!128723 () Bool)

(declare-fun t!191066 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354)))) t!191066) tb!128723))

(declare-fun result!153918 () Bool)

(assert (= result!153918 result!153512))

(assert (=> d!621816 t!191066))

(assert (=> b!2031708 t!191066))

(declare-fun t!191068 () Bool)

(declare-fun tb!128725 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (_1!11926 (get!7060 lt!763244)))))) t!191068) tb!128725))

(declare-fun result!153920 () Bool)

(assert (= result!153920 result!153716))

(assert (=> d!622318 t!191068))

(declare-fun tb!128727 () Bool)

(declare-fun t!191070 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) t!191070) tb!128727))

(declare-fun result!153922 () Bool)

(assert (= result!153922 result!153726))

(assert (=> b!2033029 t!191070))

(assert (=> d!622344 t!191070))

(declare-fun t!191072 () Bool)

(declare-fun tb!128729 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (Cons!22223 (h!27624 tokens!598) Nil!22223)))))) t!191072) tb!128729))

(declare-fun result!153924 () Bool)

(assert (= result!153924 result!153776))

(assert (=> d!622454 t!191072))

(declare-fun tb!128731 () Bool)

(declare-fun t!191074 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (ite c!328959 (h!27624 (t!190664 tokens!598)) (ite c!328958 separatorToken!354 (h!27624 (t!190664 tokens!598)))))))) t!191074) tb!128731))

(declare-fun result!153926 () Bool)

(assert (= result!153926 result!153746))

(assert (=> d!622366 t!191074))

(declare-fun tb!128733 () Bool)

(declare-fun t!191076 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598))))) t!191076) tb!128733))

(declare-fun result!153928 () Bool)

(assert (= result!153928 result!153526))

(assert (=> d!621776 t!191076))

(declare-fun t!191078 () Bool)

(declare-fun tb!128735 () Bool)

(assert (=> (and b!2033757 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 lt!763529)))) t!191078) tb!128735))

(declare-fun result!153930 () Bool)

(assert (= result!153930 result!153736))

(assert (=> d!622358 t!191078))

(declare-fun b_and!162347 () Bool)

(declare-fun tp!603948 () Bool)

(assert (=> b!2033757 (= tp!603948 (and (=> t!191076 result!153928) (=> t!191064 result!153916) (=> t!191066 result!153918) (=> t!191070 result!153922) (=> t!191068 result!153920) (=> t!191060 result!153912) (=> t!191078 result!153930) (=> t!191062 result!153914) (=> t!191074 result!153926) (=> t!191072 result!153924) b_and!162347))))

(declare-fun e!1284431 () Bool)

(assert (=> b!2033757 (= e!1284431 (and tp!603950 tp!603948))))

(declare-fun b!2033756 () Bool)

(declare-fun e!1284430 () Bool)

(declare-fun tp!603949 () Bool)

(assert (=> b!2033756 (= e!1284430 (and tp!603949 (inv!29404 (tag!4482 (h!27623 (t!190663 (t!190663 rules!3198))))) (inv!29407 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) e!1284431))))

(declare-fun b!2033755 () Bool)

(declare-fun e!1284428 () Bool)

(declare-fun tp!603951 () Bool)

(assert (=> b!2033755 (= e!1284428 (and e!1284430 tp!603951))))

(assert (=> b!2032231 (= tp!603750 e!1284428)))

(assert (= b!2033756 b!2033757))

(assert (= b!2033755 b!2033756))

(assert (= (and b!2032231 ((_ is Cons!22222) (t!190663 (t!190663 rules!3198)))) b!2033755))

(declare-fun m!2476485 () Bool)

(assert (=> b!2033756 m!2476485))

(declare-fun m!2476487 () Bool)

(assert (=> b!2033756 m!2476487))

(declare-fun b!2033760 () Bool)

(declare-fun e!1284434 () Bool)

(assert (=> b!2033760 (= e!1284434 true)))

(declare-fun b!2033759 () Bool)

(declare-fun e!1284433 () Bool)

(assert (=> b!2033759 (= e!1284433 e!1284434)))

(declare-fun b!2033758 () Bool)

(declare-fun e!1284432 () Bool)

(assert (=> b!2033758 (= e!1284432 e!1284433)))

(assert (=> b!2031917 e!1284432))

(assert (= b!2033759 b!2033760))

(assert (= b!2033758 b!2033759))

(assert (= (and b!2031917 ((_ is Cons!22222) (t!190663 rules!3198))) b!2033758))

(assert (=> b!2033760 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198))))) (dynLambda!11071 order!14249 lambda!76560))))

(assert (=> b!2033760 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198))))) (dynLambda!11071 order!14249 lambda!76560))))

(declare-fun b!2033764 () Bool)

(declare-fun e!1284435 () Bool)

(declare-fun tp!603952 () Bool)

(declare-fun tp!603956 () Bool)

(assert (=> b!2033764 (= e!1284435 (and tp!603952 tp!603956))))

(declare-fun b!2033761 () Bool)

(assert (=> b!2033761 (= e!1284435 tp_is_empty!9229)))

(declare-fun b!2033763 () Bool)

(declare-fun tp!603953 () Bool)

(assert (=> b!2033763 (= e!1284435 tp!603953)))

(assert (=> b!2032238 (= tp!603752 e!1284435)))

(declare-fun b!2033762 () Bool)

(declare-fun tp!603954 () Bool)

(declare-fun tp!603955 () Bool)

(assert (=> b!2033762 (= e!1284435 (and tp!603954 tp!603955))))

(assert (= (and b!2032238 ((_ is ElementMatch!5419) (regOne!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033761))

(assert (= (and b!2032238 ((_ is Concat!9550) (regOne!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033762))

(assert (= (and b!2032238 ((_ is Star!5419) (regOne!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033763))

(assert (= (and b!2032238 ((_ is Union!5419) (regOne!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033764))

(declare-fun b!2033768 () Bool)

(declare-fun e!1284436 () Bool)

(declare-fun tp!603957 () Bool)

(declare-fun tp!603961 () Bool)

(assert (=> b!2033768 (= e!1284436 (and tp!603957 tp!603961))))

(declare-fun b!2033765 () Bool)

(assert (=> b!2033765 (= e!1284436 tp_is_empty!9229)))

(declare-fun b!2033767 () Bool)

(declare-fun tp!603958 () Bool)

(assert (=> b!2033767 (= e!1284436 tp!603958)))

(assert (=> b!2032238 (= tp!603756 e!1284436)))

(declare-fun b!2033766 () Bool)

(declare-fun tp!603959 () Bool)

(declare-fun tp!603960 () Bool)

(assert (=> b!2033766 (= e!1284436 (and tp!603959 tp!603960))))

(assert (= (and b!2032238 ((_ is ElementMatch!5419) (regTwo!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033765))

(assert (= (and b!2032238 ((_ is Concat!9550) (regTwo!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033766))

(assert (= (and b!2032238 ((_ is Star!5419) (regTwo!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033767))

(assert (= (and b!2032238 ((_ is Union!5419) (regTwo!11351 (regex!3994 (rule!6229 separatorToken!354))))) b!2033768))

(declare-fun b!2033772 () Bool)

(declare-fun e!1284437 () Bool)

(declare-fun tp!603962 () Bool)

(declare-fun tp!603966 () Bool)

(assert (=> b!2033772 (= e!1284437 (and tp!603962 tp!603966))))

(declare-fun b!2033769 () Bool)

(assert (=> b!2033769 (= e!1284437 tp_is_empty!9229)))

(declare-fun b!2033771 () Bool)

(declare-fun tp!603963 () Bool)

(assert (=> b!2033771 (= e!1284437 tp!603963)))

(assert (=> b!2032237 (= tp!603753 e!1284437)))

(declare-fun b!2033770 () Bool)

(declare-fun tp!603964 () Bool)

(declare-fun tp!603965 () Bool)

(assert (=> b!2033770 (= e!1284437 (and tp!603964 tp!603965))))

(assert (= (and b!2032237 ((_ is ElementMatch!5419) (reg!5748 (regex!3994 (rule!6229 separatorToken!354))))) b!2033769))

(assert (= (and b!2032237 ((_ is Concat!9550) (reg!5748 (regex!3994 (rule!6229 separatorToken!354))))) b!2033770))

(assert (= (and b!2032237 ((_ is Star!5419) (reg!5748 (regex!3994 (rule!6229 separatorToken!354))))) b!2033771))

(assert (= (and b!2032237 ((_ is Union!5419) (reg!5748 (regex!3994 (rule!6229 separatorToken!354))))) b!2033772))

(declare-fun b!2033776 () Bool)

(declare-fun e!1284438 () Bool)

(declare-fun tp!603967 () Bool)

(declare-fun tp!603971 () Bool)

(assert (=> b!2033776 (= e!1284438 (and tp!603967 tp!603971))))

(declare-fun b!2033773 () Bool)

(assert (=> b!2033773 (= e!1284438 tp_is_empty!9229)))

(declare-fun b!2033775 () Bool)

(declare-fun tp!603968 () Bool)

(assert (=> b!2033775 (= e!1284438 tp!603968)))

(assert (=> b!2032236 (= tp!603754 e!1284438)))

(declare-fun b!2033774 () Bool)

(declare-fun tp!603969 () Bool)

(declare-fun tp!603970 () Bool)

(assert (=> b!2033774 (= e!1284438 (and tp!603969 tp!603970))))

(assert (= (and b!2032236 ((_ is ElementMatch!5419) (regOne!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033773))

(assert (= (and b!2032236 ((_ is Concat!9550) (regOne!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033774))

(assert (= (and b!2032236 ((_ is Star!5419) (regOne!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033775))

(assert (= (and b!2032236 ((_ is Union!5419) (regOne!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033776))

(declare-fun b!2033780 () Bool)

(declare-fun e!1284439 () Bool)

(declare-fun tp!603972 () Bool)

(declare-fun tp!603976 () Bool)

(assert (=> b!2033780 (= e!1284439 (and tp!603972 tp!603976))))

(declare-fun b!2033777 () Bool)

(assert (=> b!2033777 (= e!1284439 tp_is_empty!9229)))

(declare-fun b!2033779 () Bool)

(declare-fun tp!603973 () Bool)

(assert (=> b!2033779 (= e!1284439 tp!603973)))

(assert (=> b!2032236 (= tp!603755 e!1284439)))

(declare-fun b!2033778 () Bool)

(declare-fun tp!603974 () Bool)

(declare-fun tp!603975 () Bool)

(assert (=> b!2033778 (= e!1284439 (and tp!603974 tp!603975))))

(assert (= (and b!2032236 ((_ is ElementMatch!5419) (regTwo!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033777))

(assert (= (and b!2032236 ((_ is Concat!9550) (regTwo!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033778))

(assert (= (and b!2032236 ((_ is Star!5419) (regTwo!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033779))

(assert (= (and b!2032236 ((_ is Union!5419) (regTwo!11350 (regex!3994 (rule!6229 separatorToken!354))))) b!2033780))

(declare-fun tp!603979 () Bool)

(declare-fun tp!603977 () Bool)

(declare-fun e!1284441 () Bool)

(declare-fun b!2033781 () Bool)

(assert (=> b!2033781 (= e!1284441 (and (inv!29409 (left!17681 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))))) tp!603979 (inv!29409 (right!18011 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))))) tp!603977))))

(declare-fun b!2033783 () Bool)

(declare-fun e!1284440 () Bool)

(declare-fun tp!603978 () Bool)

(assert (=> b!2033783 (= e!1284440 tp!603978)))

(declare-fun b!2033782 () Bool)

(assert (=> b!2033782 (= e!1284441 (and (inv!29418 (xs!10336 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))))) e!1284440))))

(assert (=> b!2031811 (= tp!603659 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199)))) e!1284441))))

(assert (= (and b!2031811 ((_ is Node!7434) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))))) b!2033781))

(assert (= b!2033782 b!2033783))

(assert (= (and b!2031811 ((_ is Leaf!10894) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))))) b!2033782))

(declare-fun m!2476489 () Bool)

(assert (=> b!2033781 m!2476489))

(declare-fun m!2476491 () Bool)

(assert (=> b!2033781 m!2476491))

(declare-fun m!2476493 () Bool)

(assert (=> b!2033782 m!2476493))

(assert (=> b!2031811 m!2473055))

(declare-fun tp!603980 () Bool)

(declare-fun tp!603982 () Bool)

(declare-fun b!2033784 () Bool)

(declare-fun e!1284443 () Bool)

(assert (=> b!2033784 (= e!1284443 (and (inv!29409 (left!17681 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))))) tp!603982 (inv!29409 (right!18011 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))))) tp!603980))))

(declare-fun b!2033786 () Bool)

(declare-fun e!1284442 () Bool)

(declare-fun tp!603981 () Bool)

(assert (=> b!2033786 (= e!1284442 tp!603981)))

(declare-fun b!2033785 () Bool)

(assert (=> b!2033785 (= e!1284443 (and (inv!29418 (xs!10336 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))))) e!1284442))))

(assert (=> b!2031714 (= tp!603657 (and (inv!29409 (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354)))) e!1284443))))

(assert (= (and b!2031714 ((_ is Node!7434) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))))) b!2033784))

(assert (= b!2033785 b!2033786))

(assert (= (and b!2031714 ((_ is Leaf!10894) (c!328893 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (value!125420 separatorToken!354))))) b!2033785))

(declare-fun m!2476495 () Bool)

(assert (=> b!2033784 m!2476495))

(declare-fun m!2476497 () Bool)

(assert (=> b!2033784 m!2476497))

(declare-fun m!2476499 () Bool)

(assert (=> b!2033785 m!2476499))

(assert (=> b!2031714 m!2472909))

(declare-fun b!2033790 () Bool)

(declare-fun e!1284444 () Bool)

(declare-fun tp!603983 () Bool)

(declare-fun tp!603987 () Bool)

(assert (=> b!2033790 (= e!1284444 (and tp!603983 tp!603987))))

(declare-fun b!2033787 () Bool)

(assert (=> b!2033787 (= e!1284444 tp_is_empty!9229)))

(declare-fun b!2033789 () Bool)

(declare-fun tp!603984 () Bool)

(assert (=> b!2033789 (= e!1284444 tp!603984)))

(assert (=> b!2032216 (= tp!603732 e!1284444)))

(declare-fun b!2033788 () Bool)

(declare-fun tp!603985 () Bool)

(declare-fun tp!603986 () Bool)

(assert (=> b!2033788 (= e!1284444 (and tp!603985 tp!603986))))

(assert (= (and b!2032216 ((_ is ElementMatch!5419) (reg!5748 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033787))

(assert (= (and b!2032216 ((_ is Concat!9550) (reg!5748 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033788))

(assert (= (and b!2032216 ((_ is Star!5419) (reg!5748 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033789))

(assert (= (and b!2032216 ((_ is Union!5419) (reg!5748 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033790))

(declare-fun b!2033794 () Bool)

(declare-fun e!1284445 () Bool)

(declare-fun tp!603988 () Bool)

(declare-fun tp!603992 () Bool)

(assert (=> b!2033794 (= e!1284445 (and tp!603988 tp!603992))))

(declare-fun b!2033791 () Bool)

(assert (=> b!2033791 (= e!1284445 tp_is_empty!9229)))

(declare-fun b!2033793 () Bool)

(declare-fun tp!603989 () Bool)

(assert (=> b!2033793 (= e!1284445 tp!603989)))

(assert (=> b!2032217 (= tp!603731 e!1284445)))

(declare-fun b!2033792 () Bool)

(declare-fun tp!603990 () Bool)

(declare-fun tp!603991 () Bool)

(assert (=> b!2033792 (= e!1284445 (and tp!603990 tp!603991))))

(assert (= (and b!2032217 ((_ is ElementMatch!5419) (regOne!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033791))

(assert (= (and b!2032217 ((_ is Concat!9550) (regOne!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033792))

(assert (= (and b!2032217 ((_ is Star!5419) (regOne!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033793))

(assert (= (and b!2032217 ((_ is Union!5419) (regOne!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033794))

(declare-fun b!2033798 () Bool)

(declare-fun e!1284446 () Bool)

(declare-fun tp!603993 () Bool)

(declare-fun tp!603997 () Bool)

(assert (=> b!2033798 (= e!1284446 (and tp!603993 tp!603997))))

(declare-fun b!2033795 () Bool)

(assert (=> b!2033795 (= e!1284446 tp_is_empty!9229)))

(declare-fun b!2033797 () Bool)

(declare-fun tp!603994 () Bool)

(assert (=> b!2033797 (= e!1284446 tp!603994)))

(assert (=> b!2032217 (= tp!603735 e!1284446)))

(declare-fun b!2033796 () Bool)

(declare-fun tp!603995 () Bool)

(declare-fun tp!603996 () Bool)

(assert (=> b!2033796 (= e!1284446 (and tp!603995 tp!603996))))

(assert (= (and b!2032217 ((_ is ElementMatch!5419) (regTwo!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033795))

(assert (= (and b!2032217 ((_ is Concat!9550) (regTwo!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033796))

(assert (= (and b!2032217 ((_ is Star!5419) (regTwo!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033797))

(assert (= (and b!2032217 ((_ is Union!5419) (regTwo!11351 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033798))

(declare-fun b!2033802 () Bool)

(declare-fun e!1284447 () Bool)

(declare-fun tp!603998 () Bool)

(declare-fun tp!604002 () Bool)

(assert (=> b!2033802 (= e!1284447 (and tp!603998 tp!604002))))

(declare-fun b!2033799 () Bool)

(assert (=> b!2033799 (= e!1284447 tp_is_empty!9229)))

(declare-fun b!2033801 () Bool)

(declare-fun tp!603999 () Bool)

(assert (=> b!2033801 (= e!1284447 tp!603999)))

(assert (=> b!2032215 (= tp!603733 e!1284447)))

(declare-fun b!2033800 () Bool)

(declare-fun tp!604000 () Bool)

(declare-fun tp!604001 () Bool)

(assert (=> b!2033800 (= e!1284447 (and tp!604000 tp!604001))))

(assert (= (and b!2032215 ((_ is ElementMatch!5419) (regOne!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033799))

(assert (= (and b!2032215 ((_ is Concat!9550) (regOne!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033800))

(assert (= (and b!2032215 ((_ is Star!5419) (regOne!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033801))

(assert (= (and b!2032215 ((_ is Union!5419) (regOne!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033802))

(declare-fun b!2033806 () Bool)

(declare-fun e!1284448 () Bool)

(declare-fun tp!604003 () Bool)

(declare-fun tp!604007 () Bool)

(assert (=> b!2033806 (= e!1284448 (and tp!604003 tp!604007))))

(declare-fun b!2033803 () Bool)

(assert (=> b!2033803 (= e!1284448 tp_is_empty!9229)))

(declare-fun b!2033805 () Bool)

(declare-fun tp!604004 () Bool)

(assert (=> b!2033805 (= e!1284448 tp!604004)))

(assert (=> b!2032215 (= tp!603734 e!1284448)))

(declare-fun b!2033804 () Bool)

(declare-fun tp!604005 () Bool)

(declare-fun tp!604006 () Bool)

(assert (=> b!2033804 (= e!1284448 (and tp!604005 tp!604006))))

(assert (= (and b!2032215 ((_ is ElementMatch!5419) (regTwo!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033803))

(assert (= (and b!2032215 ((_ is Concat!9550) (regTwo!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033804))

(assert (= (and b!2032215 ((_ is Star!5419) (regTwo!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033805))

(assert (= (and b!2032215 ((_ is Union!5419) (regTwo!11350 (regex!3994 (rule!6229 (h!27624 tokens!598)))))) b!2033806))

(declare-fun b!2033810 () Bool)

(declare-fun e!1284449 () Bool)

(declare-fun tp!604008 () Bool)

(declare-fun tp!604012 () Bool)

(assert (=> b!2033810 (= e!1284449 (and tp!604008 tp!604012))))

(declare-fun b!2033807 () Bool)

(assert (=> b!2033807 (= e!1284449 tp_is_empty!9229)))

(declare-fun b!2033809 () Bool)

(declare-fun tp!604009 () Bool)

(assert (=> b!2033809 (= e!1284449 tp!604009)))

(assert (=> b!2032251 (= tp!603767 e!1284449)))

(declare-fun b!2033808 () Bool)

(declare-fun tp!604010 () Bool)

(declare-fun tp!604011 () Bool)

(assert (=> b!2033808 (= e!1284449 (and tp!604010 tp!604011))))

(assert (= (and b!2032251 ((_ is ElementMatch!5419) (regex!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) b!2033807))

(assert (= (and b!2032251 ((_ is Concat!9550) (regex!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) b!2033808))

(assert (= (and b!2032251 ((_ is Star!5419) (regex!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) b!2033809))

(assert (= (and b!2032251 ((_ is Union!5419) (regex!3994 (rule!6229 (h!27624 (t!190664 tokens!598)))))) b!2033810))

(declare-fun b!2033811 () Bool)

(declare-fun e!1284450 () Bool)

(declare-fun tp!604013 () Bool)

(assert (=> b!2033811 (= e!1284450 (and tp_is_empty!9229 tp!604013))))

(assert (=> b!2032234 (= tp!603751 e!1284450)))

(assert (= (and b!2032234 ((_ is Cons!22221) (t!190662 (originalCharacters!4801 (h!27624 tokens!598))))) b!2033811))

(declare-fun b!2033814 () Bool)

(declare-fun e!1284453 () Bool)

(assert (=> b!2033814 (= e!1284453 true)))

(declare-fun b!2033813 () Bool)

(declare-fun e!1284452 () Bool)

(assert (=> b!2033813 (= e!1284452 e!1284453)))

(declare-fun b!2033812 () Bool)

(declare-fun e!1284451 () Bool)

(assert (=> b!2033812 (= e!1284451 e!1284452)))

(assert (=> b!2032198 e!1284451))

(assert (= b!2033813 b!2033814))

(assert (= b!2033812 b!2033813))

(assert (= (and b!2032198 ((_ is Cons!22222) (t!190663 rules!3198))) b!2033812))

(assert (=> b!2033814 (< (dynLambda!11067 order!14243 (toValue!5671 (transformation!3994 (h!27623 (t!190663 rules!3198))))) (dynLambda!11071 order!14249 lambda!76575))))

(assert (=> b!2033814 (< (dynLambda!11069 order!14247 (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198))))) (dynLambda!11071 order!14249 lambda!76575))))

(declare-fun b!2033815 () Bool)

(declare-fun e!1284454 () Bool)

(declare-fun tp!604014 () Bool)

(assert (=> b!2033815 (= e!1284454 (and tp_is_empty!9229 tp!604014))))

(assert (=> b!2032250 (= tp!603771 e!1284454)))

(assert (= (and b!2032250 ((_ is Cons!22221) (originalCharacters!4801 (h!27624 (t!190664 tokens!598))))) b!2033815))

(declare-fun b_lambda!68599 () Bool)

(assert (= b_lambda!68541 (or d!621812 b_lambda!68599)))

(declare-fun bs!421276 () Bool)

(declare-fun d!622798 () Bool)

(assert (= bs!421276 (and d!622798 d!621812)))

(declare-fun res!891831 () Bool)

(declare-fun e!1284455 () Bool)

(assert (=> bs!421276 (=> res!891831 e!1284455)))

(assert (=> bs!421276 (= res!891831 (not (= (list!9077 lt!763199) (list!9077 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))))))))

(assert (=> bs!421276 (= (dynLambda!11074 lambda!76563 lt!763199 (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598)))) e!1284455)))

(declare-fun b!2033816 () Bool)

(assert (=> b!2033816 (= e!1284455 (= (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (seqFromList!2848 (originalCharacters!4801 (h!27624 tokens!598))))))))

(assert (= (and bs!421276 (not res!891831)) b!2033816))

(declare-fun b_lambda!68613 () Bool)

(assert (=> (not b_lambda!68613) (not b!2033816)))

(assert (=> b!2033816 t!190769))

(declare-fun b_and!162349 () Bool)

(assert (= b_and!162257 (and (=> t!190769 result!153626) b_and!162349)))

(assert (=> b!2033816 t!190759))

(declare-fun b_and!162351 () Bool)

(assert (= b_and!162263 (and (=> t!190759 result!153614) b_and!162351)))

(assert (=> b!2033816 t!191028))

(declare-fun b_and!162353 () Bool)

(assert (= b_and!162341 (and (=> t!191028 result!153878) b_and!162353)))

(assert (=> b!2033816 t!190692))

(declare-fun b_and!162355 () Bool)

(assert (= b_and!162265 (and (=> t!190692 result!153538) b_and!162355)))

(assert (=> b!2033816 t!190690))

(declare-fun b_and!162357 () Bool)

(assert (= b_and!162261 (and (=> t!190690 result!153536) b_and!162357)))

(assert (=> b!2033816 t!191056))

(declare-fun b_and!162359 () Bool)

(assert (= b_and!162345 (and (=> t!191056 result!153908) b_and!162359)))

(assert (=> b!2033816 t!190688))

(declare-fun b_and!162361 () Bool)

(assert (= b_and!162259 (and (=> t!190688 result!153532) b_and!162361)))

(declare-fun b_lambda!68615 () Bool)

(assert (=> (not b_lambda!68615) (not b!2033816)))

(assert (=> b!2033816 t!190761))

(declare-fun b_and!162363 () Bool)

(assert (= b_and!162351 (and (=> t!190761 result!153616) b_and!162363)))

(assert (=> b!2033816 t!190698))

(declare-fun b_and!162365 () Bool)

(assert (= b_and!162357 (and (=> t!190698 result!153542) b_and!162365)))

(assert (=> b!2033816 t!191054))

(declare-fun b_and!162367 () Bool)

(assert (= b_and!162359 (and (=> t!191054 result!153906) b_and!162367)))

(assert (=> b!2033816 t!190700))

(declare-fun b_and!162369 () Bool)

(assert (= b_and!162355 (and (=> t!190700 result!153544) b_and!162369)))

(assert (=> b!2033816 t!190696))

(declare-fun b_and!162371 () Bool)

(assert (= b_and!162361 (and (=> t!190696 result!153540) b_and!162371)))

(assert (=> b!2033816 t!190771))

(declare-fun b_and!162373 () Bool)

(assert (= b_and!162349 (and (=> t!190771 result!153628) b_and!162373)))

(assert (=> b!2033816 t!191026))

(declare-fun b_and!162375 () Bool)

(assert (= b_and!162353 (and (=> t!191026 result!153876) b_and!162375)))

(assert (=> bs!421276 m!2472737))

(assert (=> bs!421276 m!2472721))

(assert (=> bs!421276 m!2473229))

(assert (=> b!2033816 m!2473079))

(assert (=> b!2033816 m!2472721))

(assert (=> b!2033816 m!2473231))

(assert (=> d!622332 d!622798))

(declare-fun b_lambda!68601 () Bool)

(assert (= b_lambda!68595 (or b!2031902 b_lambda!68601)))

(declare-fun bs!421277 () Bool)

(declare-fun d!622800 () Bool)

(assert (= bs!421277 (and d!622800 b!2031902)))

(assert (=> bs!421277 (= (dynLambda!11063 lambda!76560 (h!27624 (t!190664 tokens!598))) (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 (h!27624 (t!190664 tokens!598))))))

(assert (=> bs!421277 m!2475597))

(assert (=> d!622690 d!622800))

(declare-fun b_lambda!68603 () Bool)

(assert (= b_lambda!68569 (or b!2031524 b_lambda!68603)))

(declare-fun bs!421278 () Bool)

(declare-fun d!622802 () Bool)

(assert (= bs!421278 (and d!622802 b!2031524)))

(assert (=> bs!421278 (= (dynLambda!11063 lambda!76551 (h!27624 (t!190664 tokens!598))) (not (isSeparator!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))))

(assert (=> b!2033276 d!622802))

(declare-fun b_lambda!68605 () Bool)

(assert (= b_lambda!68543 (or (and b!2031523 b_free!56651 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2032233 b_free!56671 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2031531 b_free!56655 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2033719 b_free!56687 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2031513 b_free!56659 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2032252 b_free!56675) (and b!2033757 b_free!56691 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) b_lambda!68605)))

(declare-fun b_lambda!68607 () Bool)

(assert (= b_lambda!68549 (or (and b!2031523 b_free!56651 (= (toChars!5530 (transformation!3994 (rule!6229 separatorToken!354))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2032233 b_free!56671 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 rules!3198)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2031531 b_free!56655 (= (toChars!5530 (transformation!3994 (h!27623 rules!3198))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2033719 b_free!56687 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 (t!190664 tokens!598)))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2031513 b_free!56659 (= (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) (and b!2032252 b_free!56675) (and b!2033757 b_free!56691 (= (toChars!5530 (transformation!3994 (h!27623 (t!190663 (t!190663 rules!3198))))) (toChars!5530 (transformation!3994 (rule!6229 (h!27624 (t!190664 tokens!598))))))) b_lambda!68607)))

(declare-fun b_lambda!68609 () Bool)

(assert (= b_lambda!68571 (or d!621776 b_lambda!68609)))

(declare-fun bs!421279 () Bool)

(declare-fun d!622804 () Bool)

(assert (= bs!421279 (and d!622804 d!621776)))

(assert (=> bs!421279 (= (dynLambda!11076 lambda!76557 lt!763199) (= (list!9077 (dynLambda!11064 (toChars!5530 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) (dynLambda!11070 (toValue!5671 (transformation!3994 (rule!6229 (h!27624 tokens!598)))) lt!763199))) (list!9077 lt!763199)))))

(declare-fun b_lambda!68617 () Bool)

(assert (=> (not b_lambda!68617) (not bs!421279)))

(assert (=> bs!421279 t!191076))

(declare-fun b_and!162377 () Bool)

(assert (= b_and!162347 (and (=> t!191076 result!153928) b_and!162377)))

(assert (=> bs!421279 t!191048))

(declare-fun b_and!162379 () Bool)

(assert (= b_and!162343 (and (=> t!191048 result!153898) b_and!162379)))

(assert (=> bs!421279 t!190682))

(declare-fun b_and!162381 () Bool)

(assert (= b_and!162339 (and (=> t!190682 result!153526) b_and!162381)))

(assert (=> bs!421279 t!190773))

(declare-fun b_and!162383 () Bool)

(assert (= b_and!162333 (and (=> t!190773 result!153630) b_and!162383)))

(assert (=> bs!421279 t!190686))

(declare-fun b_and!162385 () Bool)

(assert (= b_and!162337 (and (=> t!190686 result!153530) b_and!162385)))

(assert (=> bs!421279 t!190763))

(declare-fun b_and!162387 () Bool)

(assert (= b_and!162331 (and (=> t!190763 result!153618) b_and!162387)))

(assert (=> bs!421279 t!190684))

(declare-fun b_and!162389 () Bool)

(assert (= b_and!162335 (and (=> t!190684 result!153528) b_and!162389)))

(declare-fun b_lambda!68619 () Bool)

(assert (=> (not b_lambda!68619) (not bs!421279)))

(assert (=> bs!421279 t!190690))

(declare-fun b_and!162391 () Bool)

(assert (= b_and!162365 (and (=> t!190690 result!153536) b_and!162391)))

(assert (=> bs!421279 t!190692))

(declare-fun b_and!162393 () Bool)

(assert (= b_and!162369 (and (=> t!190692 result!153538) b_and!162393)))

(assert (=> bs!421279 t!191028))

(declare-fun b_and!162395 () Bool)

(assert (= b_and!162375 (and (=> t!191028 result!153878) b_and!162395)))

(assert (=> bs!421279 t!190769))

(declare-fun b_and!162397 () Bool)

(assert (= b_and!162373 (and (=> t!190769 result!153626) b_and!162397)))

(assert (=> bs!421279 t!191056))

(declare-fun b_and!162399 () Bool)

(assert (= b_and!162367 (and (=> t!191056 result!153908) b_and!162399)))

(assert (=> bs!421279 t!190688))

(declare-fun b_and!162401 () Bool)

(assert (= b_and!162371 (and (=> t!190688 result!153532) b_and!162401)))

(assert (=> bs!421279 t!190759))

(declare-fun b_and!162403 () Bool)

(assert (= b_and!162363 (and (=> t!190759 result!153614) b_and!162403)))

(assert (=> bs!421279 m!2473079))

(assert (=> bs!421279 m!2473081))

(assert (=> bs!421279 m!2473081))

(assert (=> bs!421279 m!2473083))

(assert (=> bs!421279 m!2472737))

(assert (=> bs!421279 m!2473079))

(assert (=> d!622620 d!622804))

(declare-fun b_lambda!68611 () Bool)

(assert (= b_lambda!68557 (or d!621910 b_lambda!68611)))

(declare-fun bs!421280 () Bool)

(declare-fun d!622806 () Bool)

(assert (= bs!421280 (and d!622806 d!621910)))

(assert (=> bs!421280 (= (dynLambda!11063 lambda!76575 (h!27624 tokens!598)) (rulesProduceIndividualToken!1779 thiss!23328 rules!3198 (h!27624 tokens!598)))))

(assert (=> bs!421280 m!2472687))

(assert (=> b!2033154 d!622806))

(check-sat (not d!622758) (not b!2032948) (not b!2033536) (not b_lambda!68611) (not b!2033705) (not b!2033404) (not d!622344) (not b!2033295) (not b!2033707) (not d!622380) (not d!622112) (not b_lambda!68615) (not d!622660) (not b!2033414) (not b!2032903) (not b!2033798) (not b_next!57391) (not d!622720) (not b_next!57377) (not d!622350) (not b!2033649) (not b!2033233) (not b!2033755) (not d!622370) (not b!2033493) (not b!2033234) (not bm!124795) (not b!2033779) (not d!622400) (not b_lambda!68601) (not d!622466) (not b!2032584) (not b!2033727) (not bm!124819) (not b_lambda!68513) (not b!2033753) (not b!2033191) (not d!622484) (not b_lambda!68607) (not b_lambda!68515) (not d!622578) (not d!622746) (not b!2033026) (not b!2033718) (not d!622522) (not d!622718) (not b!2032907) (not b!2033062) (not d!622412) (not bm!124830) (not b!2033450) (not b!2033515) (not b!2033741) (not b!2033024) (not b!2033737) (not b!2033605) (not d!622086) (not b!2033489) b_and!162383 (not b!2033207) (not b!2033710) (not d!622346) (not d!622462) (not b!2033738) (not b_next!57379) (not d!622726) (not b!2032906) (not b!2032978) (not b!2033040) (not b_next!57375) (not b!2033742) (not b!2033257) (not bm!124811) (not b!2032920) (not b!2033794) (not b!2033182) (not bm!124815) (not b!2033030) (not b!2033164) (not b!2033042) (not b_lambda!68609) (not d!622570) (not b!2033400) (not d!622148) (not b!2032941) (not b!2032988) (not b!2033531) (not d!622360) (not b!2033729) (not b_next!57363) (not b!2033571) (not d!622610) (not d!622686) (not b_lambda!68507) (not b!2033102) (not b!2032893) (not b_lambda!68503) (not d!622342) (not b!2032965) (not d!622714) (not bs!421277) (not d!622480) (not b!2033065) (not b!2032892) (not b!2033701) (not d!622710) (not b_next!57353) (not b!2033805) (not b!2032945) (not b!2032902) (not d!622778) (not b!2033564) (not b!2032957) (not b!2032995) (not b!2033183) (not b!2033547) (not d!622704) (not d!622528) (not b!2033045) (not d!622434) (not b!2032982) (not b!2033583) (not b!2033670) (not b!2033768) (not d!622098) (not b!2032890) (not b!2033189) (not d!622712) (not d!622654) (not d!622744) (not b!2033543) (not b!2033693) (not bm!124816) (not d!622598) (not d!622506) (not b_lambda!68551) (not b!2032975) (not b!2032981) (not b!2033780) (not b!2033574) (not b!2033168) (not b!2033023) (not b!2033781) (not b!2033118) (not b!2033192) (not d!622636) (not b!2033518) (not b_lambda!68547) (not b!2033796) (not bm!124814) (not b!2033499) (not b!2032958) (not b!2033601) (not b!2033789) (not bm!124831) (not b!2033782) (not bm!124828) (not b!2033406) (not b!2033688) (not b!2033570) (not d!622564) (not b!2033508) b_and!162381 (not bm!124824) (not b!2033804) (not b!2032896) (not d!622418) (not b!2033733) (not b!2032971) (not tb!128605) b_and!162397 (not b_next!57355) (not b!2032999) (not b!2033697) (not b!2033103) (not b!2033525) (not d!622560) (not b!2033762) (not d!622584) (not bm!124754) (not b!2033673) (not b!2033731) b_and!162391 (not d!622378) (not d!622782) (not b!2032653) (not b!2033578) (not d!622742) (not b!2033797) (not b_lambda!68501) (not b!2033628) (not b!2033730) (not b!2033702) (not b!2033783) (not bm!124775) (not d!622300) (not b!2033801) (not b!2033809) (not b_next!57393) (not b!2033775) (not b_lambda!68597) (not b_lambda!68613) (not b!2033296) (not b!2033187) (not d!622392) (not b!2033413) (not tb!128535) (not b!2032998) (not b!2032577) (not b!2033140) (not b!2032569) (not b!2032570) (not b!2033739) (not b!2032962) (not b!2033563) (not d!622338) (not b!2032580) (not d!622730) (not b!2033811) (not b!2033273) (not bm!124792) (not d!622700) (not b!2033407) (not d!622604) (not b!2033054) (not b!2033478) (not b!2033272) (not bm!124790) (not b!2031723) b_and!162401 (not d!622106) (not d!622738) (not d!622468) (not b!2033038) (not b!2032959) (not d!622594) (not d!622534) (not b!2033715) (not b!2033602) (not b_next!57395) (not b!2033743) (not d!622298) (not b!2033022) (not b!2033082) (not b!2032972) (not b!2033766) (not b!2033214) (not d!622762) (not d!622740) (not b!2032919) (not d!622656) (not d!622454) (not d!622662) (not b!2033723) (not b!2033716) (not b_lambda!68553) (not b!2033511) (not b!2033512) (not b!2033734) (not d!622674) (not d!622722) (not d!622438) (not b!2032574) (not b!2033717) (not b!2033812) (not d!622694) (not bs!421276) (not b!2033589) (not bm!124813) (not d!622310) (not b_lambda!68605) (not d!622408) (not b!2033449) (not b!2033265) (not b!2033722) (not b!2033721) (not b!2033410) (not d!622316) (not b!2032897) (not bm!124829) (not b_next!57373) (not b!2031714) (not b!2033668) (not b_lambda!68619) (not b!2033505) (not b!2033712) (not b!2033627) (not tb!128525) (not d!622752) (not b!2033527) (not b!2032575) (not d!622388) (not b!2033793) (not d!622572) (not b!2033713) (not b!2033684) (not b!2033567) (not b!2033104) (not bs!421280) (not d!622366) (not d!622612) (not b!2033230) (not b!2033027) (not b!2033561) (not b!2033161) (not d!622760) (not b!2033236) (not b!2033661) (not b!2033790) (not b!2033532) (not b!2033445) (not d!622780) (not b!2033708) (not b!2033064) (not b!2033060) (not b!2033694) (not b!2033492) (not b!2033593) (not b_lambda!68555) (not b!2032987) (not d!622724) (not d!622772) (not b!2033274) b_and!162389 (not bm!124774) (not b!2033036) (not b!2033735) (not b!2033542) (not d!622790) tp_is_empty!9229 (not b!2033806) (not d!622538) b_and!162379 (not d!622500) (not d!622362) (not b!2033175) (not b!2033117) (not d!622452) (not b!2033058) (not b!2033669) (not d!622666) (not b!2033367) (not tb!128555) (not b_lambda!68539) (not b!2032994) (not b!2033644) (not b!2033687) (not d!622406) (not d!622326) (not b!2033592) (not b!2033587) (not b!2033691) (not d!622332) (not b_lambda!68563) (not b!2033029) (not b!2033506) (not bs!421279) (not b_lambda!68617) (not b!2033270) (not b!2033683) (not b!2033566) (not b!2033456) (not b!2033677) (not b!2033419) (not d!622650) (not bm!124788) (not bm!124817) (not d!622432) (not d!622294) (not d!622562) (not b!2033502) (not b!2032955) (not b!2033784) (not b!2033402) (not b_next!57357) (not tb!128671) (not d!622690) b_and!162399 (not b!2032991) (not b!2033451) (not bm!124804) (not b!2033165) (not b!2033053) (not d!622794) (not b!2033580) (not b!2033711) (not b!2032996) (not b!2033562) (not b!2033540) (not tb!128585) (not b!2033534) (not d!622394) (not b!2033208) (not b!2033800) (not b!2033815) (not bm!124789) (not d!622590) b_and!162395 (not b!2032973) (not b!2033690) (not b!2032927) (not b!2033444) (not d!622364) (not b!2032940) (not d!622334) (not b!2033486) (not b!2033642) (not d!622414) b_and!162387 (not b!2033698) (not d!622486) (not b!2033299) (not bm!124794) (not b!2033159) (not b!2033756) (not b_lambda!68499) (not b!2033778) (not b!2033204) (not b!2033643) (not d!622376) (not d!622306) (not b!2033657) (not d!622668) (not d!622402) (not b!2033228) (not b!2033788) (not d!622728) (not b_next!57359) (not d!622328) (not b!2033066) (not b!2033584) (not b!2033808) (not d!622444) (not bm!124821) (not b!2033235) (not d!622692) (not b!2033448) (not d!622318) (not b!2033568) (not bm!124833) (not b!2033520) (not b!2033752) (not b!2033785) (not b!2033416) (not b!2033139) (not b_lambda!68505) (not b!2033521) (not d!622440) (not b!2033533) (not b_lambda!68509) (not b!2033290) (not b!2033786) (not b_lambda!68545) (not b!2033019) (not tb!128575) (not b!2033021) (not d!622356) (not d!622474) (not b!2033061) (not b!2033002) (not b!2033633) (not b!2033052) (not b!2032970) (not d!622796) (not b_lambda!68599) (not b!2033706) (not b!2033447) (not b!2032909) (not b!2033528) (not d!622618) (not d!622314) (not b!2033764) (not d!622416) (not d!622652) (not b!2033498) (not b!2032921) (not b!2033529) (not b_lambda!68511) (not d!622358) (not d!622688) b_and!162393 (not b!2033726) (not d!622296) b_and!162403 (not b!2033704) (not b!2033292) (not b!2032904) (not b!2033662) (not d!622648) (not d!622716) (not d!622682) (not b!2033277) (not b!2033420) (not d!622308) (not b_next!57389) (not b!2033043) (not b!2033810) (not b!2033689) (not b!2033645) (not b!2033569) (not d!622614) (not b!2032984) (not b!2033055) (not d!622532) (not b!2033600) (not d!622368) (not d!622784) (not d!622608) (not b!2033059) (not b!2033650) (not bm!124803) (not b!2033526) (not b!2033572) (not b!2033770) (not d!622420) (not b!2032926) (not b!2033577) (not d!622588) (not d!622312) (not b!2032581) (not b!2033699) (not b!2033537) (not b!2033001) (not b!2033758) (not b!2033546) (not b!2032567) (not b!2033802) (not b!2033289) (not b_next!57361) (not d!622620) (not d!622708) (not b!2033763) (not b!2033158) (not b!2033703) (not b!2033496) (not b!2032946) (not d!622582) (not bm!124825) (not b!2033155) (not b!2032993) (not d!622536) (not b!2033423) (not b!2033754) (not b!2033056) (not b!2033685) (not d!622792) (not d!622398) (not b!2033771) (not b!2033487) (not b!2033067) (not b!2033772) (not b!2032894) (not b!2033206) (not tb!128545) (not d!622142) (not b!2033454) (not b!2033590) (not d!622672) (not b!2033776) (not b!2031811) (not b!2033725) (not d!622390) b_and!162385 (not b_lambda!68603) (not d!622510) (not d!622348) (not d!622736) (not b!2033767) (not d!622108) (not b!2032908) (not b!2032960) (not b!2033774) (not b!2033020) (not tb!128565) b_and!162377 (not b!2033000) (not b!2033443) (not d!622764) (not d!622788) (not b!2033792))
(check-sat (not b_next!57391) (not b_next!57377) b_and!162391 (not b_next!57393) b_and!162401 (not b_next!57395) (not b_next!57373) b_and!162389 b_and!162379 b_and!162395 b_and!162387 (not b_next!57359) (not b_next!57361) (not b_next!57379) (not b_next!57375) b_and!162383 (not b_next!57363) (not b_next!57353) b_and!162397 (not b_next!57355) b_and!162381 (not b_next!57357) b_and!162399 b_and!162393 (not b_next!57389) b_and!162403 b_and!162385 b_and!162377)
