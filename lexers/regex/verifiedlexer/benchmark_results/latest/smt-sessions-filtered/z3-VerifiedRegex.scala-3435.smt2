; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!194424 () Bool)

(assert start!194424)

(declare-fun b!1935794 () Bool)

(declare-fun b_free!55489 () Bool)

(declare-fun b_next!56193 () Bool)

(assert (=> b!1935794 (= b_free!55489 (not b_next!56193))))

(declare-fun tp!552235 () Bool)

(declare-fun b_and!152703 () Bool)

(assert (=> b!1935794 (= tp!552235 b_and!152703)))

(declare-fun b_free!55491 () Bool)

(declare-fun b_next!56195 () Bool)

(assert (=> b!1935794 (= b_free!55491 (not b_next!56195))))

(declare-fun tp!552233 () Bool)

(declare-fun b_and!152705 () Bool)

(assert (=> b!1935794 (= tp!552233 b_and!152705)))

(declare-fun b!1935797 () Bool)

(declare-fun b_free!55493 () Bool)

(declare-fun b_next!56197 () Bool)

(assert (=> b!1935797 (= b_free!55493 (not b_next!56197))))

(declare-fun tp!552229 () Bool)

(declare-fun b_and!152707 () Bool)

(assert (=> b!1935797 (= tp!552229 b_and!152707)))

(declare-fun b_free!55495 () Bool)

(declare-fun b_next!56199 () Bool)

(assert (=> b!1935797 (= b_free!55495 (not b_next!56199))))

(declare-fun tp!552239 () Bool)

(declare-fun b_and!152709 () Bool)

(assert (=> b!1935797 (= tp!552239 b_and!152709)))

(declare-fun b!1935809 () Bool)

(declare-fun b_free!55497 () Bool)

(declare-fun b_next!56201 () Bool)

(assert (=> b!1935809 (= b_free!55497 (not b_next!56201))))

(declare-fun tp!552236 () Bool)

(declare-fun b_and!152711 () Bool)

(assert (=> b!1935809 (= tp!552236 b_and!152711)))

(declare-fun b_free!55499 () Bool)

(declare-fun b_next!56203 () Bool)

(assert (=> b!1935809 (= b_free!55499 (not b_next!56203))))

(declare-fun tp!552237 () Bool)

(declare-fun b_and!152713 () Bool)

(assert (=> b!1935809 (= tp!552237 b_and!152713)))

(declare-fun e!1237268 () Bool)

(assert (=> b!1935794 (= e!1237268 (and tp!552235 tp!552233))))

(declare-fun b!1935795 () Bool)

(declare-fun res!865475 () Bool)

(declare-fun e!1237262 () Bool)

(assert (=> b!1935795 (=> (not res!865475) (not e!1237262))))

(declare-datatypes ((List!22074 0))(
  ( (Nil!21992) (Cons!21992 (h!27393 (_ BitVec 16)) (t!180997 List!22074)) )
))
(declare-datatypes ((TokenValue!4082 0))(
  ( (FloatLiteralValue!8164 (text!29019 List!22074)) (TokenValueExt!4081 (__x!13662 Int)) (Broken!20410 (value!124026 List!22074)) (Object!4163) (End!4082) (Def!4082) (Underscore!4082) (Match!4082) (Else!4082) (Error!4082) (Case!4082) (If!4082) (Extends!4082) (Abstract!4082) (Class!4082) (Val!4082) (DelimiterValue!8164 (del!4142 List!22074)) (KeywordValue!4088 (value!124027 List!22074)) (CommentValue!8164 (value!124028 List!22074)) (WhitespaceValue!8164 (value!124029 List!22074)) (IndentationValue!4082 (value!124030 List!22074)) (String!25527) (Int32!4082) (Broken!20411 (value!124031 List!22074)) (Boolean!4083) (Unit!36367) (OperatorValue!4085 (op!4142 List!22074)) (IdentifierValue!8164 (value!124032 List!22074)) (IdentifierValue!8165 (value!124033 List!22074)) (WhitespaceValue!8165 (value!124034 List!22074)) (True!8164) (False!8164) (Broken!20412 (value!124035 List!22074)) (Broken!20413 (value!124036 List!22074)) (True!8165) (RightBrace!4082) (RightBracket!4082) (Colon!4082) (Null!4082) (Comma!4082) (LeftBracket!4082) (False!8165) (LeftBrace!4082) (ImaginaryLiteralValue!4082 (text!29020 List!22074)) (StringLiteralValue!12246 (value!124037 List!22074)) (EOFValue!4082 (value!124038 List!22074)) (IdentValue!4082 (value!124039 List!22074)) (DelimiterValue!8165 (value!124040 List!22074)) (DedentValue!4082 (value!124041 List!22074)) (NewLineValue!4082 (value!124042 List!22074)) (IntegerValue!12246 (value!124043 (_ BitVec 32)) (text!29021 List!22074)) (IntegerValue!12247 (value!124044 Int) (text!29022 List!22074)) (Times!4082) (Or!4082) (Equal!4082) (Minus!4082) (Broken!20414 (value!124045 List!22074)) (And!4082) (Div!4082) (LessEqual!4082) (Mod!4082) (Concat!9453) (Not!4082) (Plus!4082) (SpaceValue!4082 (value!124046 List!22074)) (IntegerValue!12248 (value!124047 Int) (text!29023 List!22074)) (StringLiteralValue!12247 (text!29024 List!22074)) (FloatLiteralValue!8165 (text!29025 List!22074)) (BytesLiteralValue!4082 (value!124048 List!22074)) (CommentValue!8165 (value!124049 List!22074)) (StringLiteralValue!12248 (value!124050 List!22074)) (ErrorTokenValue!4082 (msg!4143 List!22074)) )
))
(declare-datatypes ((C!10888 0))(
  ( (C!10889 (val!6396 Int)) )
))
(declare-datatypes ((List!22075 0))(
  ( (Nil!21993) (Cons!21993 (h!27394 C!10888) (t!180998 List!22075)) )
))
(declare-datatypes ((String!25528 0))(
  ( (String!25529 (value!124051 String)) )
))
(declare-datatypes ((Regex!5371 0))(
  ( (ElementMatch!5371 (c!314951 C!10888)) (Concat!9454 (regOne!11254 Regex!5371) (regTwo!11254 Regex!5371)) (EmptyExpr!5371) (Star!5371 (reg!5700 Regex!5371)) (EmptyLang!5371) (Union!5371 (regOne!11255 Regex!5371) (regTwo!11255 Regex!5371)) )
))
(declare-datatypes ((IArray!14695 0))(
  ( (IArray!14696 (innerList!7405 List!22075)) )
))
(declare-datatypes ((Conc!7345 0))(
  ( (Node!7345 (left!17496 Conc!7345) (right!17826 Conc!7345) (csize!14920 Int) (cheight!7556 Int)) (Leaf!10781 (xs!10239 IArray!14695) (csize!14921 Int)) (Empty!7345) )
))
(declare-datatypes ((BalanceConc!14506 0))(
  ( (BalanceConc!14507 (c!314952 Conc!7345)) )
))
(declare-datatypes ((TokenValueInjection!7748 0))(
  ( (TokenValueInjection!7749 (toValue!5591 Int) (toChars!5450 Int)) )
))
(declare-datatypes ((Rule!7692 0))(
  ( (Rule!7693 (regex!3946 Regex!5371) (tag!4402 String!25528) (isSeparator!3946 Bool) (transformation!3946 TokenValueInjection!7748)) )
))
(declare-datatypes ((Token!7444 0))(
  ( (Token!7445 (value!124052 TokenValue!4082) (rule!6157 Rule!7692) (size!17162 Int) (originalCharacters!4753 List!22075)) )
))
(declare-datatypes ((List!22076 0))(
  ( (Nil!21994) (Cons!21994 (h!27395 Token!7444) (t!180999 List!22076)) )
))
(declare-fun tokens!598 () List!22076)

(get-info :version)

(assert (=> b!1935795 (= res!865475 ((_ is Cons!21994) tokens!598))))

(declare-fun b!1935796 () Bool)

(declare-fun res!865473 () Bool)

(assert (=> b!1935796 (=> (not res!865473) (not e!1237262))))

(declare-datatypes ((List!22077 0))(
  ( (Nil!21995) (Cons!21995 (h!27396 Rule!7692) (t!181000 List!22077)) )
))
(declare-fun rules!3198 () List!22077)

(declare-fun sepAndNonSepRulesDisjointChars!1044 (List!22077 List!22077) Bool)

(assert (=> b!1935796 (= res!865473 (sepAndNonSepRulesDisjointChars!1044 rules!3198 rules!3198))))

(declare-fun e!1237265 () Bool)

(assert (=> b!1935797 (= e!1237265 (and tp!552229 tp!552239))))

(declare-fun e!1237254 () Bool)

(declare-fun separatorToken!354 () Token!7444)

(declare-fun b!1935798 () Bool)

(declare-fun e!1237257 () Bool)

(declare-fun tp!552234 () Bool)

(declare-fun inv!21 (TokenValue!4082) Bool)

(assert (=> b!1935798 (= e!1237257 (and (inv!21 (value!124052 separatorToken!354)) e!1237254 tp!552234))))

(declare-fun res!865479 () Bool)

(assert (=> start!194424 (=> (not res!865479) (not e!1237262))))

(declare-datatypes ((LexerInterface!3559 0))(
  ( (LexerInterfaceExt!3556 (__x!13663 Int)) (Lexer!3557) )
))
(declare-fun thiss!23328 () LexerInterface!3559)

(assert (=> start!194424 (= res!865479 ((_ is Lexer!3557) thiss!23328))))

(assert (=> start!194424 e!1237262))

(assert (=> start!194424 true))

(declare-fun e!1237259 () Bool)

(assert (=> start!194424 e!1237259))

(declare-fun e!1237264 () Bool)

(assert (=> start!194424 e!1237264))

(declare-fun inv!29094 (Token!7444) Bool)

(assert (=> start!194424 (and (inv!29094 separatorToken!354) e!1237257)))

(declare-fun e!1237267 () Bool)

(declare-fun b!1935799 () Bool)

(declare-fun tp!552238 () Bool)

(declare-fun inv!29091 (String!25528) Bool)

(declare-fun inv!29095 (TokenValueInjection!7748) Bool)

(assert (=> b!1935799 (= e!1237267 (and tp!552238 (inv!29091 (tag!4402 (h!27396 rules!3198))) (inv!29095 (transformation!3946 (h!27396 rules!3198))) e!1237265))))

(declare-fun b!1935800 () Bool)

(declare-fun res!865472 () Bool)

(assert (=> b!1935800 (=> (not res!865472) (not e!1237262))))

(declare-fun rulesProduceIndividualToken!1731 (LexerInterface!3559 List!22077 Token!7444) Bool)

(assert (=> b!1935800 (= res!865472 (rulesProduceIndividualToken!1731 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1935801 () Bool)

(declare-fun res!865477 () Bool)

(assert (=> b!1935801 (=> (not res!865477) (not e!1237262))))

(declare-fun lambda!75437 () Int)

(declare-fun forall!4654 (List!22076 Int) Bool)

(assert (=> b!1935801 (= res!865477 (forall!4654 tokens!598 lambda!75437))))

(declare-fun e!1237258 () Bool)

(declare-fun b!1935802 () Bool)

(declare-fun tp!552230 () Bool)

(assert (=> b!1935802 (= e!1237258 (and tp!552230 (inv!29091 (tag!4402 (rule!6157 (h!27395 tokens!598)))) (inv!29095 (transformation!3946 (rule!6157 (h!27395 tokens!598)))) e!1237268))))

(declare-fun b!1935803 () Bool)

(declare-fun tp!552231 () Bool)

(assert (=> b!1935803 (= e!1237259 (and e!1237267 tp!552231))))

(declare-fun b!1935804 () Bool)

(declare-fun res!865471 () Bool)

(assert (=> b!1935804 (=> (not res!865471) (not e!1237262))))

(declare-fun rulesInvariant!3166 (LexerInterface!3559 List!22077) Bool)

(assert (=> b!1935804 (= res!865471 (rulesInvariant!3166 thiss!23328 rules!3198))))

(declare-fun b!1935805 () Bool)

(declare-fun res!865476 () Bool)

(assert (=> b!1935805 (=> (not res!865476) (not e!1237262))))

(declare-fun isEmpty!13580 (List!22077) Bool)

(assert (=> b!1935805 (= res!865476 (not (isEmpty!13580 rules!3198)))))

(declare-fun b!1935806 () Bool)

(declare-fun tp!552228 () Bool)

(declare-fun e!1237253 () Bool)

(assert (=> b!1935806 (= e!1237264 (and (inv!29094 (h!27395 tokens!598)) e!1237253 tp!552228))))

(declare-fun b!1935807 () Bool)

(declare-fun res!865474 () Bool)

(assert (=> b!1935807 (=> (not res!865474) (not e!1237262))))

(declare-fun rulesProduceEachTokenIndividuallyList!1290 (LexerInterface!3559 List!22077 List!22076) Bool)

(assert (=> b!1935807 (= res!865474 (rulesProduceEachTokenIndividuallyList!1290 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1935808 () Bool)

(declare-fun res!865478 () Bool)

(assert (=> b!1935808 (=> (not res!865478) (not e!1237262))))

(assert (=> b!1935808 (= res!865478 (isSeparator!3946 (rule!6157 separatorToken!354)))))

(declare-fun e!1237261 () Bool)

(assert (=> b!1935809 (= e!1237261 (and tp!552236 tp!552237))))

(declare-fun b!1935810 () Bool)

(assert (=> b!1935810 (= e!1237262 false)))

(declare-fun lt!742145 () List!22075)

(declare-fun list!8915 (BalanceConc!14506) List!22075)

(declare-fun charsOf!2486 (Token!7444) BalanceConc!14506)

(assert (=> b!1935810 (= lt!742145 (list!8915 (charsOf!2486 separatorToken!354)))))

(declare-datatypes ((Unit!36368 0))(
  ( (Unit!36369) )
))
(declare-fun lt!742148 () Unit!36368)

(declare-fun lt!742147 () BalanceConc!14506)

(declare-fun lemmaEqSameImage!632 (TokenValueInjection!7748 BalanceConc!14506 BalanceConc!14506) Unit!36368)

(declare-fun seqFromList!2800 (List!22075) BalanceConc!14506)

(assert (=> b!1935810 (= lt!742148 (lemmaEqSameImage!632 (transformation!3946 (rule!6157 (h!27395 tokens!598))) lt!742147 (seqFromList!2800 (originalCharacters!4753 (h!27395 tokens!598)))))))

(declare-fun lt!742146 () Unit!36368)

(declare-fun lemmaSemiInverse!903 (TokenValueInjection!7748 BalanceConc!14506) Unit!36368)

(assert (=> b!1935810 (= lt!742146 (lemmaSemiInverse!903 (transformation!3946 (rule!6157 (h!27395 tokens!598))) lt!742147))))

(assert (=> b!1935810 (= lt!742147 (charsOf!2486 (h!27395 tokens!598)))))

(declare-fun tp!552240 () Bool)

(declare-fun b!1935811 () Bool)

(assert (=> b!1935811 (= e!1237254 (and tp!552240 (inv!29091 (tag!4402 (rule!6157 separatorToken!354))) (inv!29095 (transformation!3946 (rule!6157 separatorToken!354))) e!1237261))))

(declare-fun tp!552232 () Bool)

(declare-fun b!1935812 () Bool)

(assert (=> b!1935812 (= e!1237253 (and (inv!21 (value!124052 (h!27395 tokens!598))) e!1237258 tp!552232))))

(assert (= (and start!194424 res!865479) b!1935805))

(assert (= (and b!1935805 res!865476) b!1935804))

(assert (= (and b!1935804 res!865471) b!1935807))

(assert (= (and b!1935807 res!865474) b!1935800))

(assert (= (and b!1935800 res!865472) b!1935808))

(assert (= (and b!1935808 res!865478) b!1935801))

(assert (= (and b!1935801 res!865477) b!1935796))

(assert (= (and b!1935796 res!865473) b!1935795))

(assert (= (and b!1935795 res!865475) b!1935810))

(assert (= b!1935799 b!1935797))

(assert (= b!1935803 b!1935799))

(assert (= (and start!194424 ((_ is Cons!21995) rules!3198)) b!1935803))

(assert (= b!1935802 b!1935794))

(assert (= b!1935812 b!1935802))

(assert (= b!1935806 b!1935812))

(assert (= (and start!194424 ((_ is Cons!21994) tokens!598)) b!1935806))

(assert (= b!1935811 b!1935809))

(assert (= b!1935798 b!1935811))

(assert (= start!194424 b!1935798))

(declare-fun m!2375589 () Bool)

(assert (=> b!1935805 m!2375589))

(declare-fun m!2375591 () Bool)

(assert (=> b!1935798 m!2375591))

(declare-fun m!2375593 () Bool)

(assert (=> b!1935811 m!2375593))

(declare-fun m!2375595 () Bool)

(assert (=> b!1935811 m!2375595))

(declare-fun m!2375597 () Bool)

(assert (=> b!1935804 m!2375597))

(declare-fun m!2375599 () Bool)

(assert (=> b!1935801 m!2375599))

(declare-fun m!2375601 () Bool)

(assert (=> b!1935806 m!2375601))

(declare-fun m!2375603 () Bool)

(assert (=> b!1935799 m!2375603))

(declare-fun m!2375605 () Bool)

(assert (=> b!1935799 m!2375605))

(declare-fun m!2375607 () Bool)

(assert (=> b!1935812 m!2375607))

(declare-fun m!2375609 () Bool)

(assert (=> b!1935796 m!2375609))

(declare-fun m!2375611 () Bool)

(assert (=> b!1935802 m!2375611))

(declare-fun m!2375613 () Bool)

(assert (=> b!1935802 m!2375613))

(declare-fun m!2375615 () Bool)

(assert (=> b!1935800 m!2375615))

(declare-fun m!2375617 () Bool)

(assert (=> b!1935807 m!2375617))

(declare-fun m!2375619 () Bool)

(assert (=> start!194424 m!2375619))

(declare-fun m!2375621 () Bool)

(assert (=> b!1935810 m!2375621))

(declare-fun m!2375623 () Bool)

(assert (=> b!1935810 m!2375623))

(declare-fun m!2375625 () Bool)

(assert (=> b!1935810 m!2375625))

(assert (=> b!1935810 m!2375623))

(declare-fun m!2375627 () Bool)

(assert (=> b!1935810 m!2375627))

(declare-fun m!2375629 () Bool)

(assert (=> b!1935810 m!2375629))

(assert (=> b!1935810 m!2375621))

(declare-fun m!2375631 () Bool)

(assert (=> b!1935810 m!2375631))

(check-sat (not b!1935812) b_and!152707 (not b!1935805) (not b!1935810) (not b_next!56201) (not b!1935811) (not b!1935802) (not b_next!56203) (not start!194424) b_and!152711 (not b!1935796) b_and!152713 (not b_next!56195) (not b_next!56197) (not b!1935803) (not b_next!56199) b_and!152709 b_and!152705 (not b!1935799) (not b!1935806) (not b!1935801) (not b!1935798) (not b!1935807) (not b_next!56193) (not b!1935804) (not b!1935800) b_and!152703)
(check-sat (not b_next!56197) b_and!152707 (not b_next!56201) (not b_next!56203) (not b_next!56193) b_and!152703 b_and!152711 b_and!152713 (not b_next!56195) (not b_next!56199) b_and!152709 b_and!152705)
