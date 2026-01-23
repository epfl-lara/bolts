; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!197604 () Bool)

(assert start!197604)

(declare-fun b!2010349 () Bool)

(declare-fun b_free!56065 () Bool)

(declare-fun b_next!56769 () Bool)

(assert (=> b!2010349 (= b_free!56065 (not b_next!56769))))

(declare-fun tp!599649 () Bool)

(declare-fun b_and!158901 () Bool)

(assert (=> b!2010349 (= tp!599649 b_and!158901)))

(declare-fun b_free!56067 () Bool)

(declare-fun b_next!56771 () Bool)

(assert (=> b!2010349 (= b_free!56067 (not b_next!56771))))

(declare-fun tp!599644 () Bool)

(declare-fun b_and!158903 () Bool)

(assert (=> b!2010349 (= tp!599644 b_and!158903)))

(declare-fun b!2010339 () Bool)

(declare-fun b_free!56069 () Bool)

(declare-fun b_next!56773 () Bool)

(assert (=> b!2010339 (= b_free!56069 (not b_next!56773))))

(declare-fun tp!599645 () Bool)

(declare-fun b_and!158905 () Bool)

(assert (=> b!2010339 (= tp!599645 b_and!158905)))

(declare-fun b_free!56071 () Bool)

(declare-fun b_next!56775 () Bool)

(assert (=> b!2010339 (= b_free!56071 (not b_next!56775))))

(declare-fun tp!599646 () Bool)

(declare-fun b_and!158907 () Bool)

(assert (=> b!2010339 (= tp!599646 b_and!158907)))

(declare-fun b!2010340 () Bool)

(declare-fun b_free!56073 () Bool)

(declare-fun b_next!56777 () Bool)

(assert (=> b!2010340 (= b_free!56073 (not b_next!56777))))

(declare-fun tp!599650 () Bool)

(declare-fun b_and!158909 () Bool)

(assert (=> b!2010340 (= tp!599650 b_and!158909)))

(declare-fun b_free!56075 () Bool)

(declare-fun b_next!56779 () Bool)

(assert (=> b!2010340 (= b_free!56075 (not b_next!56779))))

(declare-fun tp!599652 () Bool)

(declare-fun b_and!158911 () Bool)

(assert (=> b!2010340 (= tp!599652 b_and!158911)))

(declare-fun tp!599651 () Bool)

(declare-datatypes ((List!22160 0))(
  ( (Nil!22078) (Cons!22078 (h!27479 (_ BitVec 16)) (t!187659 List!22160)) )
))
(declare-datatypes ((TokenValue!4100 0))(
  ( (FloatLiteralValue!8200 (text!29145 List!22160)) (TokenValueExt!4099 (__x!13698 Int)) (Broken!20500 (value!124539 List!22160)) (Object!4181) (End!4100) (Def!4100) (Underscore!4100) (Match!4100) (Else!4100) (Error!4100) (Case!4100) (If!4100) (Extends!4100) (Abstract!4100) (Class!4100) (Val!4100) (DelimiterValue!8200 (del!4160 List!22160)) (KeywordValue!4106 (value!124540 List!22160)) (CommentValue!8200 (value!124541 List!22160)) (WhitespaceValue!8200 (value!124542 List!22160)) (IndentationValue!4100 (value!124543 List!22160)) (String!25617) (Int32!4100) (Broken!20501 (value!124544 List!22160)) (Boolean!4101) (Unit!36645) (OperatorValue!4103 (op!4160 List!22160)) (IdentifierValue!8200 (value!124545 List!22160)) (IdentifierValue!8201 (value!124546 List!22160)) (WhitespaceValue!8201 (value!124547 List!22160)) (True!8200) (False!8200) (Broken!20502 (value!124548 List!22160)) (Broken!20503 (value!124549 List!22160)) (True!8201) (RightBrace!4100) (RightBracket!4100) (Colon!4100) (Null!4100) (Comma!4100) (LeftBracket!4100) (False!8201) (LeftBrace!4100) (ImaginaryLiteralValue!4100 (text!29146 List!22160)) (StringLiteralValue!12300 (value!124550 List!22160)) (EOFValue!4100 (value!124551 List!22160)) (IdentValue!4100 (value!124552 List!22160)) (DelimiterValue!8201 (value!124553 List!22160)) (DedentValue!4100 (value!124554 List!22160)) (NewLineValue!4100 (value!124555 List!22160)) (IntegerValue!12300 (value!124556 (_ BitVec 32)) (text!29147 List!22160)) (IntegerValue!12301 (value!124557 Int) (text!29148 List!22160)) (Times!4100) (Or!4100) (Equal!4100) (Minus!4100) (Broken!20504 (value!124558 List!22160)) (And!4100) (Div!4100) (LessEqual!4100) (Mod!4100) (Concat!9489) (Not!4100) (Plus!4100) (SpaceValue!4100 (value!124559 List!22160)) (IntegerValue!12302 (value!124560 Int) (text!29149 List!22160)) (StringLiteralValue!12301 (text!29150 List!22160)) (FloatLiteralValue!8201 (text!29151 List!22160)) (BytesLiteralValue!4100 (value!124561 List!22160)) (CommentValue!8201 (value!124562 List!22160)) (StringLiteralValue!12302 (value!124563 List!22160)) (ErrorTokenValue!4100 (msg!4161 List!22160)) )
))
(declare-datatypes ((C!10924 0))(
  ( (C!10925 (val!6414 Int)) )
))
(declare-datatypes ((List!22161 0))(
  ( (Nil!22079) (Cons!22079 (h!27480 C!10924) (t!187660 List!22161)) )
))
(declare-datatypes ((Regex!5389 0))(
  ( (ElementMatch!5389 (c!324745 C!10924)) (Concat!9490 (regOne!11290 Regex!5389) (regTwo!11290 Regex!5389)) (EmptyExpr!5389) (Star!5389 (reg!5718 Regex!5389)) (EmptyLang!5389) (Union!5389 (regOne!11291 Regex!5389) (regTwo!11291 Regex!5389)) )
))
(declare-datatypes ((String!25618 0))(
  ( (String!25619 (value!124564 String)) )
))
(declare-datatypes ((IArray!14759 0))(
  ( (IArray!14760 (innerList!7437 List!22161)) )
))
(declare-datatypes ((Conc!7377 0))(
  ( (Node!7377 (left!17565 Conc!7377) (right!17895 Conc!7377) (csize!14984 Int) (cheight!7588 Int)) (Leaf!10822 (xs!10275 IArray!14759) (csize!14985 Int)) (Empty!7377) )
))
(declare-datatypes ((BalanceConc!14570 0))(
  ( (BalanceConc!14571 (c!324746 Conc!7377)) )
))
(declare-datatypes ((TokenValueInjection!7784 0))(
  ( (TokenValueInjection!7785 (toValue!5633 Int) (toChars!5492 Int)) )
))
(declare-datatypes ((Rule!7728 0))(
  ( (Rule!7729 (regex!3964 Regex!5389) (tag!4430 String!25618) (isSeparator!3964 Bool) (transformation!3964 TokenValueInjection!7784)) )
))
(declare-datatypes ((Token!7480 0))(
  ( (Token!7481 (value!124565 TokenValue!4100) (rule!6191 Rule!7728) (size!17260 Int) (originalCharacters!4771 List!22161)) )
))
(declare-fun separatorToken!354 () Token!7480)

(declare-fun e!1270226 () Bool)

(declare-fun b!2010329 () Bool)

(declare-fun e!1270223 () Bool)

(declare-fun inv!29240 (String!25618) Bool)

(declare-fun inv!29243 (TokenValueInjection!7784) Bool)

(assert (=> b!2010329 (= e!1270223 (and tp!599651 (inv!29240 (tag!4430 (rule!6191 separatorToken!354))) (inv!29243 (transformation!3964 (rule!6191 separatorToken!354))) e!1270226))))

(declare-fun b!2010330 () Bool)

(declare-fun res!881665 () Bool)

(declare-fun e!1270245 () Bool)

(assert (=> b!2010330 (=> (not res!881665) (not e!1270245))))

(declare-datatypes ((List!22162 0))(
  ( (Nil!22080) (Cons!22080 (h!27481 Token!7480) (t!187661 List!22162)) )
))
(declare-fun tokens!598 () List!22162)

(get-info :version)

(assert (=> b!2010330 (= res!881665 ((_ is Cons!22080) tokens!598))))

(declare-fun b!2010331 () Bool)

(declare-fun e!1270239 () Bool)

(declare-fun lt!754880 () Rule!7728)

(assert (=> b!2010331 (= e!1270239 (= (rule!6191 (h!27481 tokens!598)) lt!754880))))

(declare-fun b!2010332 () Bool)

(declare-fun e!1270230 () Bool)

(declare-fun e!1270228 () Bool)

(assert (=> b!2010332 (= e!1270230 e!1270228)))

(declare-fun res!881654 () Bool)

(assert (=> b!2010332 (=> (not res!881654) (not e!1270228))))

(declare-fun lt!754878 () Rule!7728)

(declare-fun lt!754868 () List!22161)

(declare-fun matchR!2655 (Regex!5389 List!22161) Bool)

(assert (=> b!2010332 (= res!881654 (matchR!2655 (regex!3964 lt!754878) lt!754868))))

(declare-datatypes ((Option!4609 0))(
  ( (None!4608) (Some!4608 (v!26853 Rule!7728)) )
))
(declare-fun lt!754876 () Option!4609)

(declare-fun get!6982 (Option!4609) Rule!7728)

(assert (=> b!2010332 (= lt!754878 (get!6982 lt!754876))))

(declare-fun res!881656 () Bool)

(assert (=> start!197604 (=> (not res!881656) (not e!1270245))))

(declare-datatypes ((LexerInterface!3577 0))(
  ( (LexerInterfaceExt!3574 (__x!13699 Int)) (Lexer!3575) )
))
(declare-fun thiss!23328 () LexerInterface!3577)

(assert (=> start!197604 (= res!881656 ((_ is Lexer!3575) thiss!23328))))

(assert (=> start!197604 e!1270245))

(assert (=> start!197604 true))

(declare-fun e!1270235 () Bool)

(assert (=> start!197604 e!1270235))

(declare-fun e!1270240 () Bool)

(assert (=> start!197604 e!1270240))

(declare-fun e!1270227 () Bool)

(declare-fun inv!29244 (Token!7480) Bool)

(assert (=> start!197604 (and (inv!29244 separatorToken!354) e!1270227)))

(declare-fun b!2010333 () Bool)

(declare-fun res!881660 () Bool)

(assert (=> b!2010333 (=> (not res!881660) (not e!1270245))))

(declare-datatypes ((List!22163 0))(
  ( (Nil!22081) (Cons!22081 (h!27482 Rule!7728) (t!187662 List!22163)) )
))
(declare-fun rules!3198 () List!22163)

(declare-fun rulesProduceIndividualToken!1749 (LexerInterface!3577 List!22163 Token!7480) Bool)

(assert (=> b!2010333 (= res!881660 (rulesProduceIndividualToken!1749 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!2010334 () Bool)

(declare-fun e!1270233 () Bool)

(assert (=> b!2010334 (= e!1270233 true)))

(declare-datatypes ((Unit!36646 0))(
  ( (Unit!36647) )
))
(declare-fun lt!754873 () Unit!36646)

(declare-fun e!1270236 () Unit!36646)

(assert (=> b!2010334 (= lt!754873 e!1270236)))

(declare-fun c!324744 () Bool)

(declare-fun lt!754886 () C!10924)

(declare-fun contains!4040 (List!22161 C!10924) Bool)

(declare-fun usedCharacters!402 (Regex!5389) List!22161)

(assert (=> b!2010334 (= c!324744 (not (contains!4040 (usedCharacters!402 (regex!3964 (rule!6191 separatorToken!354))) lt!754886)))))

(declare-fun head!4542 (List!22161) C!10924)

(assert (=> b!2010334 (= lt!754886 (head!4542 lt!754868))))

(declare-fun lt!754881 () List!22161)

(declare-fun lt!754885 () List!22161)

(declare-fun ++!5959 (List!22161 List!22161) List!22161)

(assert (=> b!2010334 (= (++!5959 (++!5959 lt!754881 lt!754868) lt!754885) (++!5959 lt!754881 (++!5959 lt!754868 lt!754885)))))

(declare-fun lt!754870 () Unit!36646)

(declare-fun lemmaConcatAssociativity!1227 (List!22161 List!22161 List!22161) Unit!36646)

(assert (=> b!2010334 (= lt!754870 (lemmaConcatAssociativity!1227 lt!754881 lt!754868 lt!754885))))

(declare-fun b!2010335 () Bool)

(declare-fun tp!599642 () Bool)

(declare-fun inv!21 (TokenValue!4100) Bool)

(assert (=> b!2010335 (= e!1270227 (and (inv!21 (value!124565 separatorToken!354)) e!1270223 tp!599642))))

(declare-fun b!2010336 () Bool)

(declare-fun res!881667 () Bool)

(assert (=> b!2010336 (=> (not res!881667) (not e!1270245))))

(assert (=> b!2010336 (= res!881667 (isSeparator!3964 (rule!6191 separatorToken!354)))))

(declare-fun b!2010337 () Bool)

(declare-fun Unit!36648 () Unit!36646)

(assert (=> b!2010337 (= e!1270236 Unit!36648)))

(declare-fun b!2010338 () Bool)

(declare-fun e!1270246 () Bool)

(declare-fun e!1270234 () Bool)

(declare-fun tp!599643 () Bool)

(assert (=> b!2010338 (= e!1270234 (and tp!599643 (inv!29240 (tag!4430 (h!27482 rules!3198))) (inv!29243 (transformation!3964 (h!27482 rules!3198))) e!1270246))))

(assert (=> b!2010339 (= e!1270246 (and tp!599645 tp!599646))))

(declare-fun e!1270238 () Bool)

(assert (=> b!2010340 (= e!1270238 (and tp!599650 tp!599652))))

(declare-fun b!2010341 () Bool)

(declare-fun tp!599641 () Bool)

(assert (=> b!2010341 (= e!1270235 (and e!1270234 tp!599641))))

(declare-fun b!2010342 () Bool)

(declare-fun res!881662 () Bool)

(assert (=> b!2010342 (=> (not res!881662) (not e!1270245))))

(declare-fun lambda!76093 () Int)

(declare-fun forall!4692 (List!22162 Int) Bool)

(assert (=> b!2010342 (= res!881662 (forall!4692 tokens!598 lambda!76093))))

(declare-fun b!2010343 () Bool)

(declare-fun Unit!36649 () Unit!36646)

(assert (=> b!2010343 (= e!1270236 Unit!36649)))

(declare-fun lt!754874 () Unit!36646)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!290 (Regex!5389 List!22161 C!10924) Unit!36646)

(assert (=> b!2010343 (= lt!754874 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!290 (regex!3964 (rule!6191 separatorToken!354)) lt!754868 lt!754886))))

(declare-fun res!881657 () Bool)

(assert (=> b!2010343 (= res!881657 (not (matchR!2655 (regex!3964 (rule!6191 separatorToken!354)) lt!754868)))))

(declare-fun e!1270242 () Bool)

(assert (=> b!2010343 (=> (not res!881657) (not e!1270242))))

(assert (=> b!2010343 e!1270242))

(declare-fun b!2010344 () Bool)

(declare-fun tp!599640 () Bool)

(declare-fun e!1270224 () Bool)

(declare-fun e!1270237 () Bool)

(assert (=> b!2010344 (= e!1270224 (and (inv!21 (value!124565 (h!27481 tokens!598))) e!1270237 tp!599640))))

(declare-fun tp!599647 () Bool)

(declare-fun b!2010345 () Bool)

(assert (=> b!2010345 (= e!1270240 (and (inv!29244 (h!27481 tokens!598)) e!1270224 tp!599647))))

(declare-fun b!2010346 () Bool)

(assert (=> b!2010346 (= e!1270228 (= (rule!6191 separatorToken!354) lt!754878))))

(declare-fun tp!599648 () Bool)

(declare-fun b!2010347 () Bool)

(assert (=> b!2010347 (= e!1270237 (and tp!599648 (inv!29240 (tag!4430 (rule!6191 (h!27481 tokens!598)))) (inv!29243 (transformation!3964 (rule!6191 (h!27481 tokens!598)))) e!1270238))))

(declare-fun b!2010348 () Bool)

(declare-fun res!881653 () Bool)

(assert (=> b!2010348 (=> (not res!881653) (not e!1270245))))

(declare-fun rulesInvariant!3184 (LexerInterface!3577 List!22163) Bool)

(assert (=> b!2010348 (= res!881653 (rulesInvariant!3184 thiss!23328 rules!3198))))

(assert (=> b!2010349 (= e!1270226 (and tp!599649 tp!599644))))

(declare-fun b!2010350 () Bool)

(declare-fun res!881652 () Bool)

(assert (=> b!2010350 (=> (not res!881652) (not e!1270245))))

(declare-fun rulesProduceEachTokenIndividuallyList!1308 (LexerInterface!3577 List!22163 List!22162) Bool)

(assert (=> b!2010350 (= res!881652 (rulesProduceEachTokenIndividuallyList!1308 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!2010351 () Bool)

(declare-fun e!1270243 () Bool)

(assert (=> b!2010351 (= e!1270243 e!1270239)))

(declare-fun res!881659 () Bool)

(assert (=> b!2010351 (=> (not res!881659) (not e!1270239))))

(assert (=> b!2010351 (= res!881659 (matchR!2655 (regex!3964 lt!754880) lt!754881))))

(declare-fun lt!754883 () Option!4609)

(assert (=> b!2010351 (= lt!754880 (get!6982 lt!754883))))

(declare-fun b!2010352 () Bool)

(assert (=> b!2010352 (= e!1270245 (not e!1270233))))

(declare-fun res!881664 () Bool)

(assert (=> b!2010352 (=> res!881664 e!1270233)))

(declare-datatypes ((tuple2!20750 0))(
  ( (tuple2!20751 (_1!11844 Token!7480) (_2!11844 List!22161)) )
))
(declare-datatypes ((Option!4610 0))(
  ( (None!4609) (Some!4609 (v!26854 tuple2!20750)) )
))
(declare-fun lt!754882 () Option!4610)

(declare-fun lt!754877 () Bool)

(assert (=> b!2010352 (= res!881664 (or (and (not lt!754877) (= (_1!11844 (v!26854 lt!754882)) (h!27481 tokens!598))) lt!754877 (= (_1!11844 (v!26854 lt!754882)) (h!27481 tokens!598))))))

(assert (=> b!2010352 (= lt!754877 (not ((_ is Some!4609) lt!754882)))))

(declare-fun maxPrefix!2013 (LexerInterface!3577 List!22163 List!22161) Option!4610)

(assert (=> b!2010352 (= lt!754882 (maxPrefix!2013 thiss!23328 rules!3198 (++!5959 lt!754881 lt!754885)))))

(declare-fun printWithSeparatorTokenWhenNeededList!606 (LexerInterface!3577 List!22163 List!22162 Token!7480) List!22161)

(assert (=> b!2010352 (= lt!754885 (printWithSeparatorTokenWhenNeededList!606 thiss!23328 rules!3198 (t!187661 tokens!598) separatorToken!354))))

(assert (=> b!2010352 e!1270243))

(declare-fun res!881661 () Bool)

(assert (=> b!2010352 (=> (not res!881661) (not e!1270243))))

(declare-fun isDefined!3897 (Option!4609) Bool)

(assert (=> b!2010352 (= res!881661 (isDefined!3897 lt!754883))))

(declare-fun getRuleFromTag!779 (LexerInterface!3577 List!22163 String!25618) Option!4609)

(assert (=> b!2010352 (= lt!754883 (getRuleFromTag!779 thiss!23328 rules!3198 (tag!4430 (rule!6191 (h!27481 tokens!598)))))))

(declare-fun lt!754872 () Unit!36646)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!779 (LexerInterface!3577 List!22163 List!22161 Token!7480) Unit!36646)

(assert (=> b!2010352 (= lt!754872 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!779 thiss!23328 rules!3198 lt!754881 (h!27481 tokens!598)))))

(declare-fun e!1270229 () Bool)

(assert (=> b!2010352 e!1270229))

(declare-fun res!881663 () Bool)

(assert (=> b!2010352 (=> (not res!881663) (not e!1270229))))

(declare-fun lt!754871 () Option!4610)

(declare-fun isDefined!3898 (Option!4610) Bool)

(assert (=> b!2010352 (= res!881663 (isDefined!3898 lt!754871))))

(assert (=> b!2010352 (= lt!754871 (maxPrefix!2013 thiss!23328 rules!3198 lt!754881))))

(declare-fun lt!754879 () BalanceConc!14570)

(declare-fun list!8993 (BalanceConc!14570) List!22161)

(assert (=> b!2010352 (= lt!754881 (list!8993 lt!754879))))

(assert (=> b!2010352 e!1270230))

(declare-fun res!881655 () Bool)

(assert (=> b!2010352 (=> (not res!881655) (not e!1270230))))

(assert (=> b!2010352 (= res!881655 (isDefined!3897 lt!754876))))

(assert (=> b!2010352 (= lt!754876 (getRuleFromTag!779 thiss!23328 rules!3198 (tag!4430 (rule!6191 separatorToken!354))))))

(declare-fun lt!754884 () Unit!36646)

(assert (=> b!2010352 (= lt!754884 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!779 thiss!23328 rules!3198 lt!754868 separatorToken!354))))

(declare-fun charsOf!2504 (Token!7480) BalanceConc!14570)

(assert (=> b!2010352 (= lt!754868 (list!8993 (charsOf!2504 separatorToken!354)))))

(declare-fun lt!754869 () Unit!36646)

(declare-fun lemmaEqSameImage!650 (TokenValueInjection!7784 BalanceConc!14570 BalanceConc!14570) Unit!36646)

(declare-fun seqFromList!2818 (List!22161) BalanceConc!14570)

(assert (=> b!2010352 (= lt!754869 (lemmaEqSameImage!650 (transformation!3964 (rule!6191 (h!27481 tokens!598))) lt!754879 (seqFromList!2818 (originalCharacters!4771 (h!27481 tokens!598)))))))

(declare-fun lt!754875 () Unit!36646)

(declare-fun lemmaSemiInverse!921 (TokenValueInjection!7784 BalanceConc!14570) Unit!36646)

(assert (=> b!2010352 (= lt!754875 (lemmaSemiInverse!921 (transformation!3964 (rule!6191 (h!27481 tokens!598))) lt!754879))))

(assert (=> b!2010352 (= lt!754879 (charsOf!2504 (h!27481 tokens!598)))))

(declare-fun b!2010353 () Bool)

(declare-fun get!6983 (Option!4610) tuple2!20750)

(assert (=> b!2010353 (= e!1270229 (= (_1!11844 (get!6983 lt!754871)) (h!27481 tokens!598)))))

(declare-fun b!2010354 () Bool)

(declare-fun res!881658 () Bool)

(assert (=> b!2010354 (=> (not res!881658) (not e!1270245))))

(declare-fun isEmpty!13696 (List!22163) Bool)

(assert (=> b!2010354 (= res!881658 (not (isEmpty!13696 rules!3198)))))

(declare-fun b!2010355 () Bool)

(declare-fun res!881666 () Bool)

(assert (=> b!2010355 (=> (not res!881666) (not e!1270245))))

(declare-fun sepAndNonSepRulesDisjointChars!1062 (List!22163 List!22163) Bool)

(assert (=> b!2010355 (= res!881666 (sepAndNonSepRulesDisjointChars!1062 rules!3198 rules!3198))))

(declare-fun b!2010356 () Bool)

(assert (=> b!2010356 (= e!1270242 false)))

(assert (= (and start!197604 res!881656) b!2010354))

(assert (= (and b!2010354 res!881658) b!2010348))

(assert (= (and b!2010348 res!881653) b!2010350))

(assert (= (and b!2010350 res!881652) b!2010333))

(assert (= (and b!2010333 res!881660) b!2010336))

(assert (= (and b!2010336 res!881667) b!2010342))

(assert (= (and b!2010342 res!881662) b!2010355))

(assert (= (and b!2010355 res!881666) b!2010330))

(assert (= (and b!2010330 res!881665) b!2010352))

(assert (= (and b!2010352 res!881655) b!2010332))

(assert (= (and b!2010332 res!881654) b!2010346))

(assert (= (and b!2010352 res!881663) b!2010353))

(assert (= (and b!2010352 res!881661) b!2010351))

(assert (= (and b!2010351 res!881659) b!2010331))

(assert (= (and b!2010352 (not res!881664)) b!2010334))

(assert (= (and b!2010334 c!324744) b!2010343))

(assert (= (and b!2010334 (not c!324744)) b!2010337))

(assert (= (and b!2010343 res!881657) b!2010356))

(assert (= b!2010338 b!2010339))

(assert (= b!2010341 b!2010338))

(assert (= (and start!197604 ((_ is Cons!22081) rules!3198)) b!2010341))

(assert (= b!2010347 b!2010340))

(assert (= b!2010344 b!2010347))

(assert (= b!2010345 b!2010344))

(assert (= (and start!197604 ((_ is Cons!22080) tokens!598)) b!2010345))

(assert (= b!2010329 b!2010349))

(assert (= b!2010335 b!2010329))

(assert (= start!197604 b!2010335))

(declare-fun m!2443137 () Bool)

(assert (=> b!2010342 m!2443137))

(declare-fun m!2443139 () Bool)

(assert (=> b!2010338 m!2443139))

(declare-fun m!2443141 () Bool)

(assert (=> b!2010338 m!2443141))

(declare-fun m!2443143 () Bool)

(assert (=> b!2010351 m!2443143))

(declare-fun m!2443145 () Bool)

(assert (=> b!2010351 m!2443145))

(declare-fun m!2443147 () Bool)

(assert (=> b!2010348 m!2443147))

(declare-fun m!2443149 () Bool)

(assert (=> b!2010350 m!2443149))

(declare-fun m!2443151 () Bool)

(assert (=> b!2010347 m!2443151))

(declare-fun m!2443153 () Bool)

(assert (=> b!2010347 m!2443153))

(declare-fun m!2443155 () Bool)

(assert (=> b!2010335 m!2443155))

(declare-fun m!2443157 () Bool)

(assert (=> b!2010352 m!2443157))

(declare-fun m!2443159 () Bool)

(assert (=> b!2010352 m!2443159))

(declare-fun m!2443161 () Bool)

(assert (=> b!2010352 m!2443161))

(declare-fun m!2443163 () Bool)

(assert (=> b!2010352 m!2443163))

(declare-fun m!2443165 () Bool)

(assert (=> b!2010352 m!2443165))

(declare-fun m!2443167 () Bool)

(assert (=> b!2010352 m!2443167))

(declare-fun m!2443169 () Bool)

(assert (=> b!2010352 m!2443169))

(declare-fun m!2443171 () Bool)

(assert (=> b!2010352 m!2443171))

(declare-fun m!2443173 () Bool)

(assert (=> b!2010352 m!2443173))

(declare-fun m!2443175 () Bool)

(assert (=> b!2010352 m!2443175))

(declare-fun m!2443177 () Bool)

(assert (=> b!2010352 m!2443177))

(assert (=> b!2010352 m!2443169))

(declare-fun m!2443179 () Bool)

(assert (=> b!2010352 m!2443179))

(declare-fun m!2443181 () Bool)

(assert (=> b!2010352 m!2443181))

(declare-fun m!2443183 () Bool)

(assert (=> b!2010352 m!2443183))

(declare-fun m!2443185 () Bool)

(assert (=> b!2010352 m!2443185))

(declare-fun m!2443187 () Bool)

(assert (=> b!2010352 m!2443187))

(assert (=> b!2010352 m!2443173))

(assert (=> b!2010352 m!2443159))

(declare-fun m!2443189 () Bool)

(assert (=> b!2010352 m!2443189))

(declare-fun m!2443191 () Bool)

(assert (=> b!2010352 m!2443191))

(declare-fun m!2443193 () Bool)

(assert (=> b!2010355 m!2443193))

(declare-fun m!2443195 () Bool)

(assert (=> b!2010329 m!2443195))

(declare-fun m!2443197 () Bool)

(assert (=> b!2010329 m!2443197))

(declare-fun m!2443199 () Bool)

(assert (=> b!2010334 m!2443199))

(declare-fun m!2443201 () Bool)

(assert (=> b!2010334 m!2443201))

(declare-fun m!2443203 () Bool)

(assert (=> b!2010334 m!2443203))

(declare-fun m!2443205 () Bool)

(assert (=> b!2010334 m!2443205))

(declare-fun m!2443207 () Bool)

(assert (=> b!2010334 m!2443207))

(assert (=> b!2010334 m!2443201))

(declare-fun m!2443209 () Bool)

(assert (=> b!2010334 m!2443209))

(assert (=> b!2010334 m!2443209))

(declare-fun m!2443211 () Bool)

(assert (=> b!2010334 m!2443211))

(declare-fun m!2443213 () Bool)

(assert (=> b!2010334 m!2443213))

(assert (=> b!2010334 m!2443205))

(declare-fun m!2443215 () Bool)

(assert (=> b!2010332 m!2443215))

(declare-fun m!2443217 () Bool)

(assert (=> b!2010332 m!2443217))

(declare-fun m!2443219 () Bool)

(assert (=> b!2010345 m!2443219))

(declare-fun m!2443221 () Bool)

(assert (=> start!197604 m!2443221))

(declare-fun m!2443223 () Bool)

(assert (=> b!2010333 m!2443223))

(declare-fun m!2443225 () Bool)

(assert (=> b!2010354 m!2443225))

(declare-fun m!2443227 () Bool)

(assert (=> b!2010353 m!2443227))

(declare-fun m!2443229 () Bool)

(assert (=> b!2010343 m!2443229))

(declare-fun m!2443231 () Bool)

(assert (=> b!2010343 m!2443231))

(declare-fun m!2443233 () Bool)

(assert (=> b!2010344 m!2443233))

(check-sat (not b!2010343) (not b!2010344) b_and!158907 b_and!158905 (not b!2010334) (not b!2010355) (not b!2010345) (not b_next!56777) (not b_next!56771) b_and!158903 (not b!2010353) (not b!2010333) (not b!2010354) (not b_next!56775) (not b!2010352) (not b!2010347) (not b!2010335) (not b!2010332) (not b_next!56769) (not b_next!56779) (not b!2010341) b_and!158909 b_and!158901 (not b_next!56773) (not b!2010329) (not b!2010350) (not b!2010348) b_and!158911 (not b!2010342) (not start!197604) (not b!2010351) (not b!2010338))
(check-sat b_and!158907 b_and!158905 b_and!158903 (not b_next!56775) (not b_next!56777) (not b_next!56771) b_and!158909 b_and!158911 (not b_next!56769) (not b_next!56779) b_and!158901 (not b_next!56773))
