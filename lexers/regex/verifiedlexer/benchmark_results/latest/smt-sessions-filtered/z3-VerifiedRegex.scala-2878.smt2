; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167962 () Bool)

(assert start!167962)

(declare-fun b!1716210 () Bool)

(declare-fun b_free!46635 () Bool)

(declare-fun b_next!47339 () Bool)

(assert (=> b!1716210 (= b_free!46635 (not b_next!47339))))

(declare-fun tp!490224 () Bool)

(declare-fun b_and!124635 () Bool)

(assert (=> b!1716210 (= tp!490224 b_and!124635)))

(declare-fun b_free!46637 () Bool)

(declare-fun b_next!47341 () Bool)

(assert (=> b!1716210 (= b_free!46637 (not b_next!47341))))

(declare-fun tp!490218 () Bool)

(declare-fun b_and!124637 () Bool)

(assert (=> b!1716210 (= tp!490218 b_and!124637)))

(declare-fun b!1716206 () Bool)

(declare-fun b_free!46639 () Bool)

(declare-fun b_next!47343 () Bool)

(assert (=> b!1716206 (= b_free!46639 (not b_next!47343))))

(declare-fun tp!490220 () Bool)

(declare-fun b_and!124639 () Bool)

(assert (=> b!1716206 (= tp!490220 b_and!124639)))

(declare-fun b_free!46641 () Bool)

(declare-fun b_next!47345 () Bool)

(assert (=> b!1716206 (= b_free!46641 (not b_next!47345))))

(declare-fun tp!490215 () Bool)

(declare-fun b_and!124641 () Bool)

(assert (=> b!1716206 (= tp!490215 b_and!124641)))

(declare-fun b!1716214 () Bool)

(declare-fun b_free!46643 () Bool)

(declare-fun b_next!47347 () Bool)

(assert (=> b!1716214 (= b_free!46643 (not b_next!47347))))

(declare-fun tp!490214 () Bool)

(declare-fun b_and!124643 () Bool)

(assert (=> b!1716214 (= tp!490214 b_and!124643)))

(declare-fun b_free!46645 () Bool)

(declare-fun b_next!47349 () Bool)

(assert (=> b!1716214 (= b_free!46645 (not b_next!47349))))

(declare-fun tp!490216 () Bool)

(declare-fun b_and!124645 () Bool)

(assert (=> b!1716214 (= tp!490216 b_and!124645)))

(declare-fun b!1716232 () Bool)

(declare-fun e!1097585 () Bool)

(assert (=> b!1716232 (= e!1097585 true)))

(declare-fun b!1716231 () Bool)

(declare-fun e!1097584 () Bool)

(assert (=> b!1716231 (= e!1097584 e!1097585)))

(declare-fun b!1716230 () Bool)

(declare-fun e!1097583 () Bool)

(assert (=> b!1716230 (= e!1097583 e!1097584)))

(declare-fun b!1716201 () Bool)

(assert (=> b!1716201 e!1097583))

(assert (= b!1716231 b!1716232))

(assert (= b!1716230 b!1716231))

(assert (= b!1716201 b!1716230))

(declare-datatypes ((List!18822 0))(
  ( (Nil!18752) (Cons!18752 (h!24153 (_ BitVec 16)) (t!158825 List!18822)) )
))
(declare-datatypes ((TokenValue!3407 0))(
  ( (FloatLiteralValue!6814 (text!24294 List!18822)) (TokenValueExt!3406 (__x!12116 Int)) (Broken!17035 (value!104181 List!18822)) (Object!3476) (End!3407) (Def!3407) (Underscore!3407) (Match!3407) (Else!3407) (Error!3407) (Case!3407) (If!3407) (Extends!3407) (Abstract!3407) (Class!3407) (Val!3407) (DelimiterValue!6814 (del!3467 List!18822)) (KeywordValue!3413 (value!104182 List!18822)) (CommentValue!6814 (value!104183 List!18822)) (WhitespaceValue!6814 (value!104184 List!18822)) (IndentationValue!3407 (value!104185 List!18822)) (String!21366) (Int32!3407) (Broken!17036 (value!104186 List!18822)) (Boolean!3408) (Unit!32584) (OperatorValue!3410 (op!3467 List!18822)) (IdentifierValue!6814 (value!104187 List!18822)) (IdentifierValue!6815 (value!104188 List!18822)) (WhitespaceValue!6815 (value!104189 List!18822)) (True!6814) (False!6814) (Broken!17037 (value!104190 List!18822)) (Broken!17038 (value!104191 List!18822)) (True!6815) (RightBrace!3407) (RightBracket!3407) (Colon!3407) (Null!3407) (Comma!3407) (LeftBracket!3407) (False!6815) (LeftBrace!3407) (ImaginaryLiteralValue!3407 (text!24295 List!18822)) (StringLiteralValue!10221 (value!104192 List!18822)) (EOFValue!3407 (value!104193 List!18822)) (IdentValue!3407 (value!104194 List!18822)) (DelimiterValue!6815 (value!104195 List!18822)) (DedentValue!3407 (value!104196 List!18822)) (NewLineValue!3407 (value!104197 List!18822)) (IntegerValue!10221 (value!104198 (_ BitVec 32)) (text!24296 List!18822)) (IntegerValue!10222 (value!104199 Int) (text!24297 List!18822)) (Times!3407) (Or!3407) (Equal!3407) (Minus!3407) (Broken!17039 (value!104200 List!18822)) (And!3407) (Div!3407) (LessEqual!3407) (Mod!3407) (Concat!8052) (Not!3407) (Plus!3407) (SpaceValue!3407 (value!104201 List!18822)) (IntegerValue!10223 (value!104202 Int) (text!24298 List!18822)) (StringLiteralValue!10222 (text!24299 List!18822)) (FloatLiteralValue!6815 (text!24300 List!18822)) (BytesLiteralValue!3407 (value!104203 List!18822)) (CommentValue!6815 (value!104204 List!18822)) (StringLiteralValue!10223 (value!104205 List!18822)) (ErrorTokenValue!3407 (msg!3468 List!18822)) )
))
(declare-datatypes ((C!9464 0))(
  ( (C!9465 (val!5328 Int)) )
))
(declare-datatypes ((List!18823 0))(
  ( (Nil!18753) (Cons!18753 (h!24154 C!9464) (t!158826 List!18823)) )
))
(declare-datatypes ((String!21367 0))(
  ( (String!21368 (value!104206 String)) )
))
(declare-datatypes ((Regex!4645 0))(
  ( (ElementMatch!4645 (c!281084 C!9464)) (Concat!8053 (regOne!9802 Regex!4645) (regTwo!9802 Regex!4645)) (EmptyExpr!4645) (Star!4645 (reg!4974 Regex!4645)) (EmptyLang!4645) (Union!4645 (regOne!9803 Regex!4645) (regTwo!9803 Regex!4645)) )
))
(declare-datatypes ((IArray!12479 0))(
  ( (IArray!12480 (innerList!6297 List!18823)) )
))
(declare-datatypes ((Conc!6237 0))(
  ( (Node!6237 (left!14953 Conc!6237) (right!15283 Conc!6237) (csize!12704 Int) (cheight!6448 Int)) (Leaf!9116 (xs!9113 IArray!12479) (csize!12705 Int)) (Empty!6237) )
))
(declare-datatypes ((BalanceConc!12418 0))(
  ( (BalanceConc!12419 (c!281085 Conc!6237)) )
))
(declare-datatypes ((TokenValueInjection!6474 0))(
  ( (TokenValueInjection!6475 (toValue!4824 Int) (toChars!4683 Int)) )
))
(declare-datatypes ((Rule!6434 0))(
  ( (Rule!6435 (regex!3317 Regex!4645) (tag!3619 String!21367) (isSeparator!3317 Bool) (transformation!3317 TokenValueInjection!6474)) )
))
(declare-datatypes ((Token!6200 0))(
  ( (Token!6201 (value!104207 TokenValue!3407) (rule!5255 Rule!6434) (size!14900 Int) (originalCharacters!4131 List!18823)) )
))
(declare-datatypes ((tuple2!18458 0))(
  ( (tuple2!18459 (_1!10631 Token!6200) (_2!10631 List!18823)) )
))
(declare-fun lt!655755 () tuple2!18458)

(declare-fun order!11341 () Int)

(declare-fun lambda!68984 () Int)

(declare-fun order!11339 () Int)

(declare-fun dynLambda!8564 (Int Int) Int)

(declare-fun dynLambda!8565 (Int Int) Int)

(assert (=> b!1716232 (< (dynLambda!8564 order!11339 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) (dynLambda!8565 order!11341 lambda!68984))))

(declare-fun order!11343 () Int)

(declare-fun dynLambda!8566 (Int Int) Int)

(assert (=> b!1716232 (< (dynLambda!8566 order!11343 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) (dynLambda!8565 order!11341 lambda!68984))))

(declare-fun b!1716194 () Bool)

(declare-fun e!1097574 () Bool)

(declare-fun tp_is_empty!7533 () Bool)

(declare-fun tp!490223 () Bool)

(assert (=> b!1716194 (= e!1097574 (and tp_is_empty!7533 tp!490223))))

(declare-fun b!1716195 () Bool)

(declare-fun res!769588 () Bool)

(declare-fun e!1097575 () Bool)

(assert (=> b!1716195 (=> res!769588 e!1097575)))

(declare-fun suffix!1421 () List!18823)

(declare-datatypes ((LexerInterface!2946 0))(
  ( (LexerInterfaceExt!2943 (__x!12117 Int)) (Lexer!2944) )
))
(declare-fun thiss!24550 () LexerInterface!2946)

(declare-datatypes ((List!18824 0))(
  ( (Nil!18754) (Cons!18754 (h!24155 Rule!6434) (t!158827 List!18824)) )
))
(declare-fun rules!3447 () List!18824)

(declare-fun lt!655759 () List!18823)

(declare-fun prefixMatch!530 (Regex!4645 List!18823) Bool)

(declare-fun rulesRegex!675 (LexerInterface!2946 List!18824) Regex!4645)

(declare-fun ++!5142 (List!18823 List!18823) List!18823)

(declare-fun head!3862 (List!18823) C!9464)

(assert (=> b!1716195 (= res!769588 (prefixMatch!530 (rulesRegex!675 thiss!24550 rules!3447) (++!5142 lt!655759 (Cons!18753 (head!3862 suffix!1421) Nil!18753))))))

(declare-fun res!769585 () Bool)

(declare-fun e!1097561 () Bool)

(assert (=> start!167962 (=> (not res!769585) (not e!1097561))))

(get-info :version)

(assert (=> start!167962 (= res!769585 ((_ is Lexer!2944) thiss!24550))))

(assert (=> start!167962 e!1097561))

(assert (=> start!167962 e!1097574))

(declare-fun e!1097554 () Bool)

(assert (=> start!167962 e!1097554))

(assert (=> start!167962 true))

(declare-fun token!523 () Token!6200)

(declare-fun e!1097571 () Bool)

(declare-fun inv!24195 (Token!6200) Bool)

(assert (=> start!167962 (and (inv!24195 token!523) e!1097571)))

(declare-fun e!1097562 () Bool)

(assert (=> start!167962 e!1097562))

(declare-fun b!1716196 () Bool)

(declare-fun e!1097559 () Bool)

(assert (=> b!1716196 (= e!1097561 e!1097559)))

(declare-fun res!769587 () Bool)

(assert (=> b!1716196 (=> (not res!769587) (not e!1097559))))

(declare-datatypes ((Option!3658 0))(
  ( (None!3657) (Some!3657 (v!25052 tuple2!18458)) )
))
(declare-fun lt!655769 () Option!3658)

(declare-fun isDefined!3001 (Option!3658) Bool)

(assert (=> b!1716196 (= res!769587 (isDefined!3001 lt!655769))))

(declare-fun maxPrefix!1500 (LexerInterface!2946 List!18824 List!18823) Option!3658)

(assert (=> b!1716196 (= lt!655769 (maxPrefix!1500 thiss!24550 rules!3447 lt!655759))))

(declare-fun list!7574 (BalanceConc!12418) List!18823)

(declare-fun charsOf!1966 (Token!6200) BalanceConc!12418)

(assert (=> b!1716196 (= lt!655759 (list!7574 (charsOf!1966 token!523)))))

(declare-fun b!1716197 () Bool)

(declare-fun res!769579 () Bool)

(assert (=> b!1716197 (=> (not res!769579) (not e!1097561))))

(declare-fun isEmpty!11789 (List!18824) Bool)

(assert (=> b!1716197 (= res!769579 (not (isEmpty!11789 rules!3447)))))

(declare-fun b!1716198 () Bool)

(declare-fun e!1097576 () Bool)

(declare-fun e!1097563 () Bool)

(assert (=> b!1716198 (= e!1097576 e!1097563)))

(declare-fun res!769582 () Bool)

(assert (=> b!1716198 (=> res!769582 e!1097563)))

(declare-fun lt!655766 () BalanceConc!12418)

(declare-fun lt!655767 () List!18823)

(declare-fun lt!655760 () Option!3658)

(declare-fun apply!5122 (TokenValueInjection!6474 BalanceConc!12418) TokenValue!3407)

(declare-fun size!14901 (BalanceConc!12418) Int)

(assert (=> b!1716198 (= res!769582 (not (= lt!655760 (Some!3657 (tuple2!18459 (Token!6201 (apply!5122 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) lt!655766) (rule!5255 (_1!10631 lt!655755)) (size!14901 lt!655766) lt!655767) (_2!10631 lt!655755))))))))

(declare-datatypes ((Unit!32585 0))(
  ( (Unit!32586) )
))
(declare-fun lt!655763 () Unit!32585)

(declare-fun lemmaCharactersSize!389 (Token!6200) Unit!32585)

(assert (=> b!1716198 (= lt!655763 (lemmaCharactersSize!389 (_1!10631 lt!655755)))))

(declare-fun lt!655754 () Unit!32585)

(declare-fun lemmaEqSameImage!242 (TokenValueInjection!6474 BalanceConc!12418 BalanceConc!12418) Unit!32585)

(declare-fun seqFromList!2291 (List!18823) BalanceConc!12418)

(assert (=> b!1716198 (= lt!655754 (lemmaEqSameImage!242 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) lt!655766 (seqFromList!2291 (originalCharacters!4131 (_1!10631 lt!655755)))))))

(declare-fun b!1716199 () Bool)

(declare-fun res!769596 () Bool)

(assert (=> b!1716199 (=> (not res!769596) (not e!1097561))))

(declare-fun rule!422 () Rule!6434)

(declare-fun contains!3339 (List!18824 Rule!6434) Bool)

(assert (=> b!1716199 (= res!769596 (contains!3339 rules!3447 rule!422))))

(declare-fun e!1097556 () Bool)

(declare-fun b!1716200 () Bool)

(declare-fun e!1097568 () Bool)

(declare-fun tp!490217 () Bool)

(declare-fun inv!24190 (String!21367) Bool)

(declare-fun inv!24196 (TokenValueInjection!6474) Bool)

(assert (=> b!1716200 (= e!1097556 (and tp!490217 (inv!24190 (tag!3619 (h!24155 rules!3447))) (inv!24196 (transformation!3317 (h!24155 rules!3447))) e!1097568))))

(declare-fun e!1097558 () Bool)

(declare-fun e!1097567 () Bool)

(assert (=> b!1716201 (= e!1097558 e!1097567)))

(declare-fun res!769593 () Bool)

(assert (=> b!1716201 (=> res!769593 e!1097567)))

(declare-fun Forall!692 (Int) Bool)

(assert (=> b!1716201 (= res!769593 (not (Forall!692 lambda!68984)))))

(declare-fun lt!655768 () Unit!32585)

(declare-fun lemmaInv!524 (TokenValueInjection!6474) Unit!32585)

(assert (=> b!1716201 (= lt!655768 (lemmaInv!524 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))))

(declare-fun b!1716202 () Bool)

(declare-fun e!1097560 () Bool)

(assert (=> b!1716202 (= e!1097560 (not e!1097575))))

(declare-fun res!769592 () Bool)

(assert (=> b!1716202 (=> res!769592 e!1097575)))

(declare-fun matchR!2119 (Regex!4645 List!18823) Bool)

(assert (=> b!1716202 (= res!769592 (not (matchR!2119 (regex!3317 rule!422) lt!655759)))))

(declare-fun ruleValid!816 (LexerInterface!2946 Rule!6434) Bool)

(assert (=> b!1716202 (ruleValid!816 thiss!24550 rule!422)))

(declare-fun lt!655753 () Unit!32585)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!340 (LexerInterface!2946 Rule!6434 List!18824) Unit!32585)

(assert (=> b!1716202 (= lt!655753 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!340 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1716203 () Bool)

(declare-fun e!1097573 () Bool)

(declare-fun e!1097565 () Bool)

(assert (=> b!1716203 (= e!1097573 e!1097565)))

(declare-fun res!769590 () Bool)

(assert (=> b!1716203 (=> (not res!769590) (not e!1097565))))

(declare-fun lt!655765 () Rule!6434)

(assert (=> b!1716203 (= res!769590 (matchR!2119 (regex!3317 lt!655765) (list!7574 (charsOf!1966 (_1!10631 lt!655755)))))))

(declare-datatypes ((Option!3659 0))(
  ( (None!3658) (Some!3658 (v!25053 Rule!6434)) )
))
(declare-fun lt!655751 () Option!3659)

(declare-fun get!5534 (Option!3659) Rule!6434)

(assert (=> b!1716203 (= lt!655765 (get!5534 lt!655751))))

(declare-fun b!1716204 () Bool)

(declare-fun res!769594 () Bool)

(assert (=> b!1716204 (=> (not res!769594) (not e!1097560))))

(assert (=> b!1716204 (= res!769594 (= (rule!5255 token!523) rule!422))))

(declare-fun b!1716205 () Bool)

(declare-fun lt!655758 () List!18823)

(declare-fun lt!655770 () Int)

(declare-fun size!14902 (List!18823) Int)

(assert (=> b!1716205 (= e!1097563 (>= (size!14902 lt!655758) lt!655770))))

(declare-fun lt!655756 () TokenValue!3407)

(declare-fun maxPrefixOneRule!876 (LexerInterface!2946 Rule!6434 List!18823) Option!3658)

(assert (=> b!1716205 (= (maxPrefixOneRule!876 thiss!24550 (rule!5255 (_1!10631 lt!655755)) lt!655758) (Some!3657 (tuple2!18459 (Token!6201 lt!655756 (rule!5255 (_1!10631 lt!655755)) lt!655770 lt!655767) (_2!10631 lt!655755))))))

(assert (=> b!1716205 (= lt!655770 (size!14902 lt!655767))))

(assert (=> b!1716205 (= lt!655756 (apply!5122 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) (seqFromList!2291 lt!655767)))))

(declare-fun lt!655771 () Unit!32585)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!275 (LexerInterface!2946 List!18824 List!18823 List!18823 List!18823 Rule!6434) Unit!32585)

(assert (=> b!1716205 (= lt!655771 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!275 thiss!24550 rules!3447 lt!655767 lt!655758 (_2!10631 lt!655755) (rule!5255 (_1!10631 lt!655755))))))

(declare-fun e!1097557 () Bool)

(assert (=> b!1716206 (= e!1097557 (and tp!490220 tp!490215))))

(declare-fun b!1716207 () Bool)

(assert (=> b!1716207 (= e!1097565 (= (rule!5255 (_1!10631 lt!655755)) lt!655765))))

(declare-fun e!1097555 () Bool)

(declare-fun e!1097566 () Bool)

(declare-fun b!1716208 () Bool)

(declare-fun tp!490221 () Bool)

(assert (=> b!1716208 (= e!1097566 (and tp!490221 (inv!24190 (tag!3619 (rule!5255 token!523))) (inv!24196 (transformation!3317 (rule!5255 token!523))) e!1097555))))

(declare-fun b!1716209 () Bool)

(declare-fun tp!490222 () Bool)

(assert (=> b!1716209 (= e!1097562 (and e!1097556 tp!490222))))

(assert (=> b!1716210 (= e!1097568 (and tp!490224 tp!490218))))

(declare-fun tp!490213 () Bool)

(declare-fun b!1716211 () Bool)

(declare-fun inv!21 (TokenValue!3407) Bool)

(assert (=> b!1716211 (= e!1097571 (and (inv!21 (value!104207 token!523)) e!1097566 tp!490213))))

(declare-fun b!1716212 () Bool)

(declare-fun res!769578 () Bool)

(assert (=> b!1716212 (=> (not res!769578) (not e!1097560))))

(declare-fun lt!655757 () tuple2!18458)

(declare-fun isEmpty!11790 (List!18823) Bool)

(assert (=> b!1716212 (= res!769578 (isEmpty!11790 (_2!10631 lt!655757)))))

(declare-fun b!1716213 () Bool)

(assert (=> b!1716213 (= e!1097575 e!1097558)))

(declare-fun res!769591 () Bool)

(assert (=> b!1716213 (=> res!769591 e!1097558)))

(declare-fun isPrefix!1558 (List!18823 List!18823) Bool)

(assert (=> b!1716213 (= res!769591 (not (isPrefix!1558 lt!655767 lt!655758)))))

(assert (=> b!1716213 (isPrefix!1558 lt!655767 (++!5142 lt!655767 (_2!10631 lt!655755)))))

(declare-fun lt!655772 () Unit!32585)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1068 (List!18823 List!18823) Unit!32585)

(assert (=> b!1716213 (= lt!655772 (lemmaConcatTwoListThenFirstIsPrefix!1068 lt!655767 (_2!10631 lt!655755)))))

(assert (=> b!1716213 (= lt!655767 (list!7574 lt!655766))))

(assert (=> b!1716213 (= lt!655766 (charsOf!1966 (_1!10631 lt!655755)))))

(assert (=> b!1716213 e!1097573))

(declare-fun res!769583 () Bool)

(assert (=> b!1716213 (=> (not res!769583) (not e!1097573))))

(declare-fun isDefined!3002 (Option!3659) Bool)

(assert (=> b!1716213 (= res!769583 (isDefined!3002 lt!655751))))

(declare-fun getRuleFromTag!367 (LexerInterface!2946 List!18824 String!21367) Option!3659)

(assert (=> b!1716213 (= lt!655751 (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 (_1!10631 lt!655755)))))))

(declare-fun lt!655764 () Unit!32585)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!367 (LexerInterface!2946 List!18824 List!18823 Token!6200) Unit!32585)

(assert (=> b!1716213 (= lt!655764 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!367 thiss!24550 rules!3447 lt!655758 (_1!10631 lt!655755)))))

(declare-fun get!5535 (Option!3658) tuple2!18458)

(assert (=> b!1716213 (= lt!655755 (get!5535 lt!655760))))

(declare-fun lt!655761 () Unit!32585)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!470 (LexerInterface!2946 List!18824 List!18823 List!18823) Unit!32585)

(assert (=> b!1716213 (= lt!655761 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!470 thiss!24550 rules!3447 lt!655759 suffix!1421))))

(assert (=> b!1716213 (= lt!655760 (maxPrefix!1500 thiss!24550 rules!3447 lt!655758))))

(assert (=> b!1716213 (isPrefix!1558 lt!655759 lt!655758)))

(declare-fun lt!655762 () Unit!32585)

(assert (=> b!1716213 (= lt!655762 (lemmaConcatTwoListThenFirstIsPrefix!1068 lt!655759 suffix!1421))))

(assert (=> b!1716213 (= lt!655758 (++!5142 lt!655759 suffix!1421))))

(assert (=> b!1716214 (= e!1097555 (and tp!490214 tp!490216))))

(declare-fun b!1716215 () Bool)

(declare-fun tp!490219 () Bool)

(assert (=> b!1716215 (= e!1097554 (and tp!490219 (inv!24190 (tag!3619 rule!422)) (inv!24196 (transformation!3317 rule!422)) e!1097557))))

(declare-fun b!1716216 () Bool)

(declare-fun res!769589 () Bool)

(assert (=> b!1716216 (=> res!769589 e!1097558)))

(assert (=> b!1716216 (= res!769589 (not (matchR!2119 (regex!3317 (rule!5255 (_1!10631 lt!655755))) lt!655767)))))

(declare-fun b!1716217 () Bool)

(assert (=> b!1716217 (= e!1097567 e!1097576)))

(declare-fun res!769581 () Bool)

(assert (=> b!1716217 (=> res!769581 e!1097576)))

(declare-fun dynLambda!8567 (Int TokenValue!3407) BalanceConc!12418)

(declare-fun dynLambda!8568 (Int BalanceConc!12418) TokenValue!3407)

(assert (=> b!1716217 (= res!769581 (not (= (list!7574 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))) lt!655767)))))

(declare-fun lt!655752 () Unit!32585)

(declare-fun lemmaSemiInverse!463 (TokenValueInjection!6474 BalanceConc!12418) Unit!32585)

(assert (=> b!1716217 (= lt!655752 (lemmaSemiInverse!463 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) lt!655766))))

(declare-fun b!1716218 () Bool)

(declare-fun res!769595 () Bool)

(assert (=> b!1716218 (=> res!769595 e!1097575)))

(assert (=> b!1716218 (= res!769595 (isEmpty!11790 suffix!1421))))

(declare-fun b!1716219 () Bool)

(declare-fun res!769586 () Bool)

(assert (=> b!1716219 (=> res!769586 e!1097576)))

(assert (=> b!1716219 (= res!769586 (not (= lt!655766 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))))))

(declare-fun b!1716220 () Bool)

(assert (=> b!1716220 (= e!1097559 e!1097560)))

(declare-fun res!769584 () Bool)

(assert (=> b!1716220 (=> (not res!769584) (not e!1097560))))

(assert (=> b!1716220 (= res!769584 (= (_1!10631 lt!655757) token!523))))

(assert (=> b!1716220 (= lt!655757 (get!5535 lt!655769))))

(declare-fun b!1716221 () Bool)

(declare-fun res!769580 () Bool)

(assert (=> b!1716221 (=> (not res!769580) (not e!1097561))))

(declare-fun rulesInvariant!2615 (LexerInterface!2946 List!18824) Bool)

(assert (=> b!1716221 (= res!769580 (rulesInvariant!2615 thiss!24550 rules!3447))))

(assert (= (and start!167962 res!769585) b!1716197))

(assert (= (and b!1716197 res!769579) b!1716221))

(assert (= (and b!1716221 res!769580) b!1716199))

(assert (= (and b!1716199 res!769596) b!1716196))

(assert (= (and b!1716196 res!769587) b!1716220))

(assert (= (and b!1716220 res!769584) b!1716212))

(assert (= (and b!1716212 res!769578) b!1716204))

(assert (= (and b!1716204 res!769594) b!1716202))

(assert (= (and b!1716202 (not res!769592)) b!1716218))

(assert (= (and b!1716218 (not res!769595)) b!1716195))

(assert (= (and b!1716195 (not res!769588)) b!1716213))

(assert (= (and b!1716213 res!769583) b!1716203))

(assert (= (and b!1716203 res!769590) b!1716207))

(assert (= (and b!1716213 (not res!769591)) b!1716216))

(assert (= (and b!1716216 (not res!769589)) b!1716201))

(assert (= (and b!1716201 (not res!769593)) b!1716217))

(assert (= (and b!1716217 (not res!769581)) b!1716219))

(assert (= (and b!1716219 (not res!769586)) b!1716198))

(assert (= (and b!1716198 (not res!769582)) b!1716205))

(assert (= (and start!167962 ((_ is Cons!18753) suffix!1421)) b!1716194))

(assert (= b!1716215 b!1716206))

(assert (= start!167962 b!1716215))

(assert (= b!1716208 b!1716214))

(assert (= b!1716211 b!1716208))

(assert (= start!167962 b!1716211))

(assert (= b!1716200 b!1716210))

(assert (= b!1716209 b!1716200))

(assert (= (and start!167962 ((_ is Cons!18754) rules!3447)) b!1716209))

(declare-fun b_lambda!54235 () Bool)

(assert (=> (not b_lambda!54235) (not b!1716217)))

(declare-fun tb!101421 () Bool)

(declare-fun t!158808 () Bool)

(assert (=> (and b!1716210 (= (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158808) tb!101421))

(declare-fun tp!490227 () Bool)

(declare-fun e!1097588 () Bool)

(declare-fun b!1716237 () Bool)

(declare-fun inv!24197 (Conc!6237) Bool)

(assert (=> b!1716237 (= e!1097588 (and (inv!24197 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))) tp!490227))))

(declare-fun result!121880 () Bool)

(declare-fun inv!24198 (BalanceConc!12418) Bool)

(assert (=> tb!101421 (= result!121880 (and (inv!24198 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))) e!1097588))))

(assert (= tb!101421 b!1716237))

(declare-fun m!2120571 () Bool)

(assert (=> b!1716237 m!2120571))

(declare-fun m!2120573 () Bool)

(assert (=> tb!101421 m!2120573))

(assert (=> b!1716217 t!158808))

(declare-fun b_and!124647 () Bool)

(assert (= b_and!124637 (and (=> t!158808 result!121880) b_and!124647)))

(declare-fun tb!101423 () Bool)

(declare-fun t!158810 () Bool)

(assert (=> (and b!1716206 (= (toChars!4683 (transformation!3317 rule!422)) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158810) tb!101423))

(declare-fun result!121884 () Bool)

(assert (= result!121884 result!121880))

(assert (=> b!1716217 t!158810))

(declare-fun b_and!124649 () Bool)

(assert (= b_and!124641 (and (=> t!158810 result!121884) b_and!124649)))

(declare-fun t!158812 () Bool)

(declare-fun tb!101425 () Bool)

(assert (=> (and b!1716214 (= (toChars!4683 (transformation!3317 (rule!5255 token!523))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158812) tb!101425))

(declare-fun result!121886 () Bool)

(assert (= result!121886 result!121880))

(assert (=> b!1716217 t!158812))

(declare-fun b_and!124651 () Bool)

(assert (= b_and!124645 (and (=> t!158812 result!121886) b_and!124651)))

(declare-fun b_lambda!54237 () Bool)

(assert (=> (not b_lambda!54237) (not b!1716217)))

(declare-fun t!158814 () Bool)

(declare-fun tb!101427 () Bool)

(assert (=> (and b!1716210 (= (toValue!4824 (transformation!3317 (h!24155 rules!3447))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158814) tb!101427))

(declare-fun result!121888 () Bool)

(assert (=> tb!101427 (= result!121888 (inv!21 (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))

(declare-fun m!2120575 () Bool)

(assert (=> tb!101427 m!2120575))

(assert (=> b!1716217 t!158814))

(declare-fun b_and!124653 () Bool)

(assert (= b_and!124635 (and (=> t!158814 result!121888) b_and!124653)))

(declare-fun tb!101429 () Bool)

(declare-fun t!158816 () Bool)

(assert (=> (and b!1716206 (= (toValue!4824 (transformation!3317 rule!422)) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158816) tb!101429))

(declare-fun result!121892 () Bool)

(assert (= result!121892 result!121888))

(assert (=> b!1716217 t!158816))

(declare-fun b_and!124655 () Bool)

(assert (= b_and!124639 (and (=> t!158816 result!121892) b_and!124655)))

(declare-fun t!158818 () Bool)

(declare-fun tb!101431 () Bool)

(assert (=> (and b!1716214 (= (toValue!4824 (transformation!3317 (rule!5255 token!523))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158818) tb!101431))

(declare-fun result!121894 () Bool)

(assert (= result!121894 result!121888))

(assert (=> b!1716217 t!158818))

(declare-fun b_and!124657 () Bool)

(assert (= b_and!124643 (and (=> t!158818 result!121894) b_and!124657)))

(declare-fun b_lambda!54239 () Bool)

(assert (=> (not b_lambda!54239) (not b!1716219)))

(declare-fun tb!101433 () Bool)

(declare-fun t!158820 () Bool)

(assert (=> (and b!1716210 (= (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158820) tb!101433))

(declare-fun b!1716240 () Bool)

(declare-fun e!1097592 () Bool)

(declare-fun tp!490228 () Bool)

(assert (=> b!1716240 (= e!1097592 (and (inv!24197 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))) tp!490228))))

(declare-fun result!121896 () Bool)

(assert (=> tb!101433 (= result!121896 (and (inv!24198 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))) e!1097592))))

(assert (= tb!101433 b!1716240))

(declare-fun m!2120577 () Bool)

(assert (=> b!1716240 m!2120577))

(declare-fun m!2120579 () Bool)

(assert (=> tb!101433 m!2120579))

(assert (=> b!1716219 t!158820))

(declare-fun b_and!124659 () Bool)

(assert (= b_and!124647 (and (=> t!158820 result!121896) b_and!124659)))

(declare-fun tb!101435 () Bool)

(declare-fun t!158822 () Bool)

(assert (=> (and b!1716206 (= (toChars!4683 (transformation!3317 rule!422)) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158822) tb!101435))

(declare-fun result!121898 () Bool)

(assert (= result!121898 result!121896))

(assert (=> b!1716219 t!158822))

(declare-fun b_and!124661 () Bool)

(assert (= b_and!124649 (and (=> t!158822 result!121898) b_and!124661)))

(declare-fun tb!101437 () Bool)

(declare-fun t!158824 () Bool)

(assert (=> (and b!1716214 (= (toChars!4683 (transformation!3317 (rule!5255 token!523))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158824) tb!101437))

(declare-fun result!121900 () Bool)

(assert (= result!121900 result!121896))

(assert (=> b!1716219 t!158824))

(declare-fun b_and!124663 () Bool)

(assert (= b_and!124651 (and (=> t!158824 result!121900) b_and!124663)))

(declare-fun m!2120581 () Bool)

(assert (=> b!1716213 m!2120581))

(declare-fun m!2120583 () Bool)

(assert (=> b!1716213 m!2120583))

(declare-fun m!2120585 () Bool)

(assert (=> b!1716213 m!2120585))

(declare-fun m!2120587 () Bool)

(assert (=> b!1716213 m!2120587))

(declare-fun m!2120589 () Bool)

(assert (=> b!1716213 m!2120589))

(declare-fun m!2120591 () Bool)

(assert (=> b!1716213 m!2120591))

(declare-fun m!2120593 () Bool)

(assert (=> b!1716213 m!2120593))

(declare-fun m!2120595 () Bool)

(assert (=> b!1716213 m!2120595))

(declare-fun m!2120597 () Bool)

(assert (=> b!1716213 m!2120597))

(assert (=> b!1716213 m!2120595))

(declare-fun m!2120599 () Bool)

(assert (=> b!1716213 m!2120599))

(declare-fun m!2120601 () Bool)

(assert (=> b!1716213 m!2120601))

(declare-fun m!2120603 () Bool)

(assert (=> b!1716213 m!2120603))

(declare-fun m!2120605 () Bool)

(assert (=> b!1716213 m!2120605))

(declare-fun m!2120607 () Bool)

(assert (=> b!1716213 m!2120607))

(declare-fun m!2120609 () Bool)

(assert (=> b!1716213 m!2120609))

(declare-fun m!2120611 () Bool)

(assert (=> b!1716199 m!2120611))

(declare-fun m!2120613 () Bool)

(assert (=> b!1716202 m!2120613))

(declare-fun m!2120615 () Bool)

(assert (=> b!1716202 m!2120615))

(declare-fun m!2120617 () Bool)

(assert (=> b!1716202 m!2120617))

(declare-fun m!2120619 () Bool)

(assert (=> start!167962 m!2120619))

(declare-fun m!2120621 () Bool)

(assert (=> b!1716211 m!2120621))

(declare-fun m!2120623 () Bool)

(assert (=> b!1716216 m!2120623))

(declare-fun m!2120625 () Bool)

(assert (=> b!1716219 m!2120625))

(declare-fun m!2120627 () Bool)

(assert (=> b!1716200 m!2120627))

(declare-fun m!2120629 () Bool)

(assert (=> b!1716200 m!2120629))

(declare-fun m!2120631 () Bool)

(assert (=> b!1716205 m!2120631))

(declare-fun m!2120633 () Bool)

(assert (=> b!1716205 m!2120633))

(declare-fun m!2120635 () Bool)

(assert (=> b!1716205 m!2120635))

(declare-fun m!2120637 () Bool)

(assert (=> b!1716205 m!2120637))

(declare-fun m!2120639 () Bool)

(assert (=> b!1716205 m!2120639))

(declare-fun m!2120641 () Bool)

(assert (=> b!1716205 m!2120641))

(assert (=> b!1716205 m!2120639))

(declare-fun m!2120643 () Bool)

(assert (=> b!1716201 m!2120643))

(declare-fun m!2120645 () Bool)

(assert (=> b!1716201 m!2120645))

(declare-fun m!2120647 () Bool)

(assert (=> b!1716217 m!2120647))

(assert (=> b!1716217 m!2120647))

(declare-fun m!2120649 () Bool)

(assert (=> b!1716217 m!2120649))

(assert (=> b!1716217 m!2120649))

(declare-fun m!2120651 () Bool)

(assert (=> b!1716217 m!2120651))

(declare-fun m!2120653 () Bool)

(assert (=> b!1716217 m!2120653))

(declare-fun m!2120655 () Bool)

(assert (=> b!1716197 m!2120655))

(declare-fun m!2120657 () Bool)

(assert (=> b!1716218 m!2120657))

(declare-fun m!2120659 () Bool)

(assert (=> b!1716198 m!2120659))

(declare-fun m!2120661 () Bool)

(assert (=> b!1716198 m!2120661))

(assert (=> b!1716198 m!2120661))

(declare-fun m!2120663 () Bool)

(assert (=> b!1716198 m!2120663))

(declare-fun m!2120665 () Bool)

(assert (=> b!1716198 m!2120665))

(declare-fun m!2120667 () Bool)

(assert (=> b!1716198 m!2120667))

(declare-fun m!2120669 () Bool)

(assert (=> b!1716220 m!2120669))

(declare-fun m!2120671 () Bool)

(assert (=> b!1716215 m!2120671))

(declare-fun m!2120673 () Bool)

(assert (=> b!1716215 m!2120673))

(declare-fun m!2120675 () Bool)

(assert (=> b!1716208 m!2120675))

(declare-fun m!2120677 () Bool)

(assert (=> b!1716208 m!2120677))

(declare-fun m!2120679 () Bool)

(assert (=> b!1716196 m!2120679))

(declare-fun m!2120681 () Bool)

(assert (=> b!1716196 m!2120681))

(declare-fun m!2120683 () Bool)

(assert (=> b!1716196 m!2120683))

(assert (=> b!1716196 m!2120683))

(declare-fun m!2120685 () Bool)

(assert (=> b!1716196 m!2120685))

(declare-fun m!2120687 () Bool)

(assert (=> b!1716212 m!2120687))

(assert (=> b!1716203 m!2120581))

(assert (=> b!1716203 m!2120581))

(declare-fun m!2120689 () Bool)

(assert (=> b!1716203 m!2120689))

(assert (=> b!1716203 m!2120689))

(declare-fun m!2120691 () Bool)

(assert (=> b!1716203 m!2120691))

(declare-fun m!2120693 () Bool)

(assert (=> b!1716203 m!2120693))

(declare-fun m!2120695 () Bool)

(assert (=> b!1716195 m!2120695))

(declare-fun m!2120697 () Bool)

(assert (=> b!1716195 m!2120697))

(declare-fun m!2120699 () Bool)

(assert (=> b!1716195 m!2120699))

(assert (=> b!1716195 m!2120695))

(assert (=> b!1716195 m!2120699))

(declare-fun m!2120701 () Bool)

(assert (=> b!1716195 m!2120701))

(declare-fun m!2120703 () Bool)

(assert (=> b!1716221 m!2120703))

(check-sat (not b!1716197) (not b!1716205) (not b!1716209) (not b!1716212) (not b!1716216) (not b_next!47345) b_and!124657 (not start!167962) (not b!1716203) (not b!1716213) (not b!1716208) (not b!1716196) (not b!1716221) b_and!124661 (not b!1716237) (not b!1716240) b_and!124653 tp_is_empty!7533 (not b!1716195) (not b!1716215) (not b_lambda!54235) (not b!1716220) (not b!1716211) (not tb!101421) (not b!1716194) (not b!1716217) (not b!1716218) (not b_next!47343) (not tb!101433) (not b!1716201) b_and!124659 (not b_next!47349) (not b_next!47341) (not b!1716199) (not b_lambda!54237) (not b!1716202) b_and!124655 (not tb!101427) b_and!124663 (not b_next!47339) (not b_next!47347) (not b!1716198) (not b_lambda!54239) (not b!1716200))
(check-sat b_and!124661 b_and!124653 (not b_next!47343) (not b_next!47341) b_and!124655 (not b_next!47345) b_and!124657 b_and!124663 b_and!124659 (not b_next!47349) (not b_next!47339) (not b_next!47347))
(get-model)

(declare-fun d!526549 () Bool)

(declare-fun isBalanced!1951 (Conc!6237) Bool)

(assert (=> d!526549 (= (inv!24198 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))) (isBalanced!1951 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))))

(declare-fun bs!402042 () Bool)

(assert (= bs!402042 d!526549))

(declare-fun m!2120791 () Bool)

(assert (=> bs!402042 m!2120791))

(assert (=> tb!101421 d!526549))

(declare-fun d!526551 () Bool)

(assert (=> d!526551 (= (isEmpty!11790 suffix!1421) ((_ is Nil!18753) suffix!1421))))

(assert (=> b!1716218 d!526551))

(declare-fun d!526553 () Bool)

(assert (=> d!526553 (= (isEmpty!11789 rules!3447) ((_ is Nil!18754) rules!3447))))

(assert (=> b!1716197 d!526553))

(declare-fun d!526555 () Bool)

(declare-fun isEmpty!11793 (Option!3658) Bool)

(assert (=> d!526555 (= (isDefined!3001 lt!655769) (not (isEmpty!11793 lt!655769)))))

(declare-fun bs!402043 () Bool)

(assert (= bs!402043 d!526555))

(declare-fun m!2120807 () Bool)

(assert (=> bs!402043 m!2120807))

(assert (=> b!1716196 d!526555))

(declare-fun b!1716347 () Bool)

(declare-fun e!1097647 () Option!3658)

(declare-fun lt!655828 () Option!3658)

(declare-fun lt!655829 () Option!3658)

(assert (=> b!1716347 (= e!1097647 (ite (and ((_ is None!3657) lt!655828) ((_ is None!3657) lt!655829)) None!3657 (ite ((_ is None!3657) lt!655829) lt!655828 (ite ((_ is None!3657) lt!655828) lt!655829 (ite (>= (size!14900 (_1!10631 (v!25052 lt!655828))) (size!14900 (_1!10631 (v!25052 lt!655829)))) lt!655828 lt!655829)))))))

(declare-fun call!109648 () Option!3658)

(assert (=> b!1716347 (= lt!655828 call!109648)))

(assert (=> b!1716347 (= lt!655829 (maxPrefix!1500 thiss!24550 (t!158827 rules!3447) lt!655759))))

(declare-fun b!1716348 () Bool)

(assert (=> b!1716348 (= e!1097647 call!109648)))

(declare-fun b!1716349 () Bool)

(declare-fun res!769676 () Bool)

(declare-fun e!1097649 () Bool)

(assert (=> b!1716349 (=> (not res!769676) (not e!1097649))))

(declare-fun lt!655830 () Option!3658)

(assert (=> b!1716349 (= res!769676 (= (value!104207 (_1!10631 (get!5535 lt!655830))) (apply!5122 (transformation!3317 (rule!5255 (_1!10631 (get!5535 lt!655830)))) (seqFromList!2291 (originalCharacters!4131 (_1!10631 (get!5535 lt!655830)))))))))

(declare-fun b!1716350 () Bool)

(declare-fun res!769672 () Bool)

(assert (=> b!1716350 (=> (not res!769672) (not e!1097649))))

(assert (=> b!1716350 (= res!769672 (< (size!14902 (_2!10631 (get!5535 lt!655830))) (size!14902 lt!655759)))))

(declare-fun b!1716351 () Bool)

(declare-fun res!769674 () Bool)

(assert (=> b!1716351 (=> (not res!769674) (not e!1097649))))

(assert (=> b!1716351 (= res!769674 (= (++!5142 (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!655830)))) (_2!10631 (get!5535 lt!655830))) lt!655759))))

(declare-fun d!526561 () Bool)

(declare-fun e!1097648 () Bool)

(assert (=> d!526561 e!1097648))

(declare-fun res!769677 () Bool)

(assert (=> d!526561 (=> res!769677 e!1097648)))

(assert (=> d!526561 (= res!769677 (isEmpty!11793 lt!655830))))

(assert (=> d!526561 (= lt!655830 e!1097647)))

(declare-fun c!281101 () Bool)

(assert (=> d!526561 (= c!281101 (and ((_ is Cons!18754) rules!3447) ((_ is Nil!18754) (t!158827 rules!3447))))))

(declare-fun lt!655827 () Unit!32585)

(declare-fun lt!655831 () Unit!32585)

(assert (=> d!526561 (= lt!655827 lt!655831)))

(assert (=> d!526561 (isPrefix!1558 lt!655759 lt!655759)))

(declare-fun lemmaIsPrefixRefl!1061 (List!18823 List!18823) Unit!32585)

(assert (=> d!526561 (= lt!655831 (lemmaIsPrefixRefl!1061 lt!655759 lt!655759))))

(declare-fun rulesValidInductive!1098 (LexerInterface!2946 List!18824) Bool)

(assert (=> d!526561 (rulesValidInductive!1098 thiss!24550 rules!3447)))

(assert (=> d!526561 (= (maxPrefix!1500 thiss!24550 rules!3447 lt!655759) lt!655830)))

(declare-fun b!1716352 () Bool)

(declare-fun res!769675 () Bool)

(assert (=> b!1716352 (=> (not res!769675) (not e!1097649))))

(assert (=> b!1716352 (= res!769675 (= (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!655830)))) (originalCharacters!4131 (_1!10631 (get!5535 lt!655830)))))))

(declare-fun b!1716353 () Bool)

(assert (=> b!1716353 (= e!1097648 e!1097649)))

(declare-fun res!769673 () Bool)

(assert (=> b!1716353 (=> (not res!769673) (not e!1097649))))

(assert (=> b!1716353 (= res!769673 (isDefined!3001 lt!655830))))

(declare-fun b!1716354 () Bool)

(declare-fun res!769678 () Bool)

(assert (=> b!1716354 (=> (not res!769678) (not e!1097649))))

(assert (=> b!1716354 (= res!769678 (matchR!2119 (regex!3317 (rule!5255 (_1!10631 (get!5535 lt!655830)))) (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!655830))))))))

(declare-fun bm!109643 () Bool)

(assert (=> bm!109643 (= call!109648 (maxPrefixOneRule!876 thiss!24550 (h!24155 rules!3447) lt!655759))))

(declare-fun b!1716355 () Bool)

(assert (=> b!1716355 (= e!1097649 (contains!3339 rules!3447 (rule!5255 (_1!10631 (get!5535 lt!655830)))))))

(assert (= (and d!526561 c!281101) b!1716348))

(assert (= (and d!526561 (not c!281101)) b!1716347))

(assert (= (or b!1716348 b!1716347) bm!109643))

(assert (= (and d!526561 (not res!769677)) b!1716353))

(assert (= (and b!1716353 res!769673) b!1716352))

(assert (= (and b!1716352 res!769675) b!1716350))

(assert (= (and b!1716350 res!769672) b!1716351))

(assert (= (and b!1716351 res!769674) b!1716349))

(assert (= (and b!1716349 res!769676) b!1716354))

(assert (= (and b!1716354 res!769678) b!1716355))

(declare-fun m!2120835 () Bool)

(assert (=> bm!109643 m!2120835))

(declare-fun m!2120837 () Bool)

(assert (=> b!1716351 m!2120837))

(declare-fun m!2120839 () Bool)

(assert (=> b!1716351 m!2120839))

(assert (=> b!1716351 m!2120839))

(declare-fun m!2120841 () Bool)

(assert (=> b!1716351 m!2120841))

(assert (=> b!1716351 m!2120841))

(declare-fun m!2120843 () Bool)

(assert (=> b!1716351 m!2120843))

(declare-fun m!2120845 () Bool)

(assert (=> b!1716353 m!2120845))

(declare-fun m!2120847 () Bool)

(assert (=> b!1716347 m!2120847))

(assert (=> b!1716352 m!2120837))

(assert (=> b!1716352 m!2120839))

(assert (=> b!1716352 m!2120839))

(assert (=> b!1716352 m!2120841))

(assert (=> b!1716350 m!2120837))

(declare-fun m!2120849 () Bool)

(assert (=> b!1716350 m!2120849))

(declare-fun m!2120851 () Bool)

(assert (=> b!1716350 m!2120851))

(declare-fun m!2120853 () Bool)

(assert (=> d!526561 m!2120853))

(declare-fun m!2120855 () Bool)

(assert (=> d!526561 m!2120855))

(declare-fun m!2120857 () Bool)

(assert (=> d!526561 m!2120857))

(declare-fun m!2120859 () Bool)

(assert (=> d!526561 m!2120859))

(assert (=> b!1716349 m!2120837))

(declare-fun m!2120861 () Bool)

(assert (=> b!1716349 m!2120861))

(assert (=> b!1716349 m!2120861))

(declare-fun m!2120863 () Bool)

(assert (=> b!1716349 m!2120863))

(assert (=> b!1716355 m!2120837))

(declare-fun m!2120865 () Bool)

(assert (=> b!1716355 m!2120865))

(assert (=> b!1716354 m!2120837))

(assert (=> b!1716354 m!2120839))

(assert (=> b!1716354 m!2120839))

(assert (=> b!1716354 m!2120841))

(assert (=> b!1716354 m!2120841))

(declare-fun m!2120867 () Bool)

(assert (=> b!1716354 m!2120867))

(assert (=> b!1716196 d!526561))

(declare-fun d!526571 () Bool)

(declare-fun list!7577 (Conc!6237) List!18823)

(assert (=> d!526571 (= (list!7574 (charsOf!1966 token!523)) (list!7577 (c!281085 (charsOf!1966 token!523))))))

(declare-fun bs!402044 () Bool)

(assert (= bs!402044 d!526571))

(declare-fun m!2120869 () Bool)

(assert (=> bs!402044 m!2120869))

(assert (=> b!1716196 d!526571))

(declare-fun d!526573 () Bool)

(declare-fun lt!655834 () BalanceConc!12418)

(assert (=> d!526573 (= (list!7574 lt!655834) (originalCharacters!4131 token!523))))

(assert (=> d!526573 (= lt!655834 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 token!523))) (value!104207 token!523)))))

(assert (=> d!526573 (= (charsOf!1966 token!523) lt!655834)))

(declare-fun b_lambda!54245 () Bool)

(assert (=> (not b_lambda!54245) (not d!526573)))

(declare-fun t!158835 () Bool)

(declare-fun tb!101445 () Bool)

(assert (=> (and b!1716210 (= (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toChars!4683 (transformation!3317 (rule!5255 token!523)))) t!158835) tb!101445))

(declare-fun b!1716356 () Bool)

(declare-fun e!1097650 () Bool)

(declare-fun tp!490230 () Bool)

(assert (=> b!1716356 (= e!1097650 (and (inv!24197 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 token!523))) (value!104207 token!523)))) tp!490230))))

(declare-fun result!121908 () Bool)

(assert (=> tb!101445 (= result!121908 (and (inv!24198 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 token!523))) (value!104207 token!523))) e!1097650))))

(assert (= tb!101445 b!1716356))

(declare-fun m!2120871 () Bool)

(assert (=> b!1716356 m!2120871))

(declare-fun m!2120873 () Bool)

(assert (=> tb!101445 m!2120873))

(assert (=> d!526573 t!158835))

(declare-fun b_and!124677 () Bool)

(assert (= b_and!124659 (and (=> t!158835 result!121908) b_and!124677)))

(declare-fun tb!101447 () Bool)

(declare-fun t!158837 () Bool)

(assert (=> (and b!1716206 (= (toChars!4683 (transformation!3317 rule!422)) (toChars!4683 (transformation!3317 (rule!5255 token!523)))) t!158837) tb!101447))

(declare-fun result!121910 () Bool)

(assert (= result!121910 result!121908))

(assert (=> d!526573 t!158837))

(declare-fun b_and!124679 () Bool)

(assert (= b_and!124661 (and (=> t!158837 result!121910) b_and!124679)))

(declare-fun t!158839 () Bool)

(declare-fun tb!101449 () Bool)

(assert (=> (and b!1716214 (= (toChars!4683 (transformation!3317 (rule!5255 token!523))) (toChars!4683 (transformation!3317 (rule!5255 token!523)))) t!158839) tb!101449))

(declare-fun result!121912 () Bool)

(assert (= result!121912 result!121908))

(assert (=> d!526573 t!158839))

(declare-fun b_and!124681 () Bool)

(assert (= b_and!124663 (and (=> t!158839 result!121912) b_and!124681)))

(declare-fun m!2120875 () Bool)

(assert (=> d!526573 m!2120875))

(declare-fun m!2120877 () Bool)

(assert (=> d!526573 m!2120877))

(assert (=> b!1716196 d!526573))

(declare-fun d!526575 () Bool)

(assert (=> d!526575 (= (list!7574 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))) (list!7577 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))))

(declare-fun bs!402045 () Bool)

(assert (= bs!402045 d!526575))

(declare-fun m!2120879 () Bool)

(assert (=> bs!402045 m!2120879))

(assert (=> b!1716217 d!526575))

(declare-fun bs!402046 () Bool)

(declare-fun d!526577 () Bool)

(assert (= bs!402046 (and d!526577 b!1716201)))

(declare-fun lambda!68987 () Int)

(assert (=> bs!402046 (= lambda!68987 lambda!68984)))

(declare-fun b!1716361 () Bool)

(declare-fun e!1097653 () Bool)

(assert (=> b!1716361 (= e!1097653 true)))

(assert (=> d!526577 e!1097653))

(assert (= d!526577 b!1716361))

(assert (=> b!1716361 (< (dynLambda!8564 order!11339 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) (dynLambda!8565 order!11341 lambda!68987))))

(assert (=> b!1716361 (< (dynLambda!8566 order!11343 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) (dynLambda!8565 order!11341 lambda!68987))))

(assert (=> d!526577 (= (list!7574 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))) (list!7574 lt!655766))))

(declare-fun lt!655837 () Unit!32585)

(declare-fun ForallOf!253 (Int BalanceConc!12418) Unit!32585)

(assert (=> d!526577 (= lt!655837 (ForallOf!253 lambda!68987 lt!655766))))

(assert (=> d!526577 (= (lemmaSemiInverse!463 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) lt!655766) lt!655837)))

(declare-fun b_lambda!54247 () Bool)

(assert (=> (not b_lambda!54247) (not d!526577)))

(assert (=> d!526577 t!158808))

(declare-fun b_and!124683 () Bool)

(assert (= b_and!124677 (and (=> t!158808 result!121880) b_and!124683)))

(assert (=> d!526577 t!158810))

(declare-fun b_and!124685 () Bool)

(assert (= b_and!124679 (and (=> t!158810 result!121884) b_and!124685)))

(assert (=> d!526577 t!158812))

(declare-fun b_and!124687 () Bool)

(assert (= b_and!124681 (and (=> t!158812 result!121886) b_and!124687)))

(declare-fun b_lambda!54249 () Bool)

(assert (=> (not b_lambda!54249) (not d!526577)))

(assert (=> d!526577 t!158814))

(declare-fun b_and!124689 () Bool)

(assert (= b_and!124653 (and (=> t!158814 result!121888) b_and!124689)))

(assert (=> d!526577 t!158816))

(declare-fun b_and!124691 () Bool)

(assert (= b_and!124655 (and (=> t!158816 result!121892) b_and!124691)))

(assert (=> d!526577 t!158818))

(declare-fun b_and!124693 () Bool)

(assert (= b_and!124657 (and (=> t!158818 result!121894) b_and!124693)))

(assert (=> d!526577 m!2120647))

(assert (=> d!526577 m!2120649))

(assert (=> d!526577 m!2120651))

(assert (=> d!526577 m!2120647))

(assert (=> d!526577 m!2120649))

(assert (=> d!526577 m!2120589))

(declare-fun m!2120881 () Bool)

(assert (=> d!526577 m!2120881))

(assert (=> b!1716217 d!526577))

(declare-fun b!1716390 () Bool)

(declare-fun e!1097671 () Bool)

(declare-fun lt!655840 () Bool)

(declare-fun call!109651 () Bool)

(assert (=> b!1716390 (= e!1097671 (= lt!655840 call!109651))))

(declare-fun b!1716391 () Bool)

(declare-fun e!1097670 () Bool)

(assert (=> b!1716391 (= e!1097670 (= (head!3862 lt!655767) (c!281084 (regex!3317 (rule!5255 (_1!10631 lt!655755))))))))

(declare-fun b!1716392 () Bool)

(declare-fun res!769697 () Bool)

(declare-fun e!1097673 () Bool)

(assert (=> b!1716392 (=> res!769697 e!1097673)))

(assert (=> b!1716392 (= res!769697 (not ((_ is ElementMatch!4645) (regex!3317 (rule!5255 (_1!10631 lt!655755))))))))

(declare-fun e!1097674 () Bool)

(assert (=> b!1716392 (= e!1097674 e!1097673)))

(declare-fun b!1716393 () Bool)

(declare-fun e!1097672 () Bool)

(declare-fun nullable!1397 (Regex!4645) Bool)

(assert (=> b!1716393 (= e!1097672 (nullable!1397 (regex!3317 (rule!5255 (_1!10631 lt!655755)))))))

(declare-fun b!1716394 () Bool)

(declare-fun res!769701 () Bool)

(assert (=> b!1716394 (=> (not res!769701) (not e!1097670))))

(assert (=> b!1716394 (= res!769701 (not call!109651))))

(declare-fun b!1716395 () Bool)

(assert (=> b!1716395 (= e!1097671 e!1097674)))

(declare-fun c!281111 () Bool)

(assert (=> b!1716395 (= c!281111 ((_ is EmptyLang!4645) (regex!3317 (rule!5255 (_1!10631 lt!655755)))))))

(declare-fun b!1716396 () Bool)

(declare-fun e!1097668 () Bool)

(assert (=> b!1716396 (= e!1097673 e!1097668)))

(declare-fun res!769700 () Bool)

(assert (=> b!1716396 (=> (not res!769700) (not e!1097668))))

(assert (=> b!1716396 (= res!769700 (not lt!655840))))

(declare-fun b!1716397 () Bool)

(declare-fun res!769698 () Bool)

(declare-fun e!1097669 () Bool)

(assert (=> b!1716397 (=> res!769698 e!1097669)))

(declare-fun tail!2563 (List!18823) List!18823)

(assert (=> b!1716397 (= res!769698 (not (isEmpty!11790 (tail!2563 lt!655767))))))

(declare-fun bm!109646 () Bool)

(assert (=> bm!109646 (= call!109651 (isEmpty!11790 lt!655767))))

(declare-fun d!526579 () Bool)

(assert (=> d!526579 e!1097671))

(declare-fun c!281110 () Bool)

(assert (=> d!526579 (= c!281110 ((_ is EmptyExpr!4645) (regex!3317 (rule!5255 (_1!10631 lt!655755)))))))

(assert (=> d!526579 (= lt!655840 e!1097672)))

(declare-fun c!281109 () Bool)

(assert (=> d!526579 (= c!281109 (isEmpty!11790 lt!655767))))

(declare-fun validRegex!1871 (Regex!4645) Bool)

(assert (=> d!526579 (validRegex!1871 (regex!3317 (rule!5255 (_1!10631 lt!655755))))))

(assert (=> d!526579 (= (matchR!2119 (regex!3317 (rule!5255 (_1!10631 lt!655755))) lt!655767) lt!655840)))

(declare-fun b!1716398 () Bool)

(assert (=> b!1716398 (= e!1097669 (not (= (head!3862 lt!655767) (c!281084 (regex!3317 (rule!5255 (_1!10631 lt!655755)))))))))

(declare-fun b!1716399 () Bool)

(declare-fun res!769695 () Bool)

(assert (=> b!1716399 (=> (not res!769695) (not e!1097670))))

(assert (=> b!1716399 (= res!769695 (isEmpty!11790 (tail!2563 lt!655767)))))

(declare-fun b!1716400 () Bool)

(assert (=> b!1716400 (= e!1097668 e!1097669)))

(declare-fun res!769699 () Bool)

(assert (=> b!1716400 (=> res!769699 e!1097669)))

(assert (=> b!1716400 (= res!769699 call!109651)))

(declare-fun b!1716401 () Bool)

(declare-fun derivativeStep!1165 (Regex!4645 C!9464) Regex!4645)

(assert (=> b!1716401 (= e!1097672 (matchR!2119 (derivativeStep!1165 (regex!3317 (rule!5255 (_1!10631 lt!655755))) (head!3862 lt!655767)) (tail!2563 lt!655767)))))

(declare-fun b!1716402 () Bool)

(assert (=> b!1716402 (= e!1097674 (not lt!655840))))

(declare-fun b!1716403 () Bool)

(declare-fun res!769696 () Bool)

(assert (=> b!1716403 (=> res!769696 e!1097673)))

(assert (=> b!1716403 (= res!769696 e!1097670)))

(declare-fun res!769702 () Bool)

(assert (=> b!1716403 (=> (not res!769702) (not e!1097670))))

(assert (=> b!1716403 (= res!769702 lt!655840)))

(assert (= (and d!526579 c!281109) b!1716393))

(assert (= (and d!526579 (not c!281109)) b!1716401))

(assert (= (and d!526579 c!281110) b!1716390))

(assert (= (and d!526579 (not c!281110)) b!1716395))

(assert (= (and b!1716395 c!281111) b!1716402))

(assert (= (and b!1716395 (not c!281111)) b!1716392))

(assert (= (and b!1716392 (not res!769697)) b!1716403))

(assert (= (and b!1716403 res!769702) b!1716394))

(assert (= (and b!1716394 res!769701) b!1716399))

(assert (= (and b!1716399 res!769695) b!1716391))

(assert (= (and b!1716403 (not res!769696)) b!1716396))

(assert (= (and b!1716396 res!769700) b!1716400))

(assert (= (and b!1716400 (not res!769699)) b!1716397))

(assert (= (and b!1716397 (not res!769698)) b!1716398))

(assert (= (or b!1716390 b!1716394 b!1716400) bm!109646))

(declare-fun m!2120883 () Bool)

(assert (=> b!1716399 m!2120883))

(assert (=> b!1716399 m!2120883))

(declare-fun m!2120885 () Bool)

(assert (=> b!1716399 m!2120885))

(declare-fun m!2120887 () Bool)

(assert (=> b!1716391 m!2120887))

(assert (=> b!1716397 m!2120883))

(assert (=> b!1716397 m!2120883))

(assert (=> b!1716397 m!2120885))

(assert (=> b!1716401 m!2120887))

(assert (=> b!1716401 m!2120887))

(declare-fun m!2120889 () Bool)

(assert (=> b!1716401 m!2120889))

(assert (=> b!1716401 m!2120883))

(assert (=> b!1716401 m!2120889))

(assert (=> b!1716401 m!2120883))

(declare-fun m!2120891 () Bool)

(assert (=> b!1716401 m!2120891))

(declare-fun m!2120893 () Bool)

(assert (=> bm!109646 m!2120893))

(declare-fun m!2120895 () Bool)

(assert (=> b!1716393 m!2120895))

(assert (=> b!1716398 m!2120887))

(assert (=> d!526579 m!2120893))

(declare-fun m!2120897 () Bool)

(assert (=> d!526579 m!2120897))

(assert (=> b!1716216 d!526579))

(declare-fun d!526581 () Bool)

(declare-fun res!769707 () Bool)

(declare-fun e!1097677 () Bool)

(assert (=> d!526581 (=> (not res!769707) (not e!1097677))))

(assert (=> d!526581 (= res!769707 (not (isEmpty!11790 (originalCharacters!4131 token!523))))))

(assert (=> d!526581 (= (inv!24195 token!523) e!1097677)))

(declare-fun b!1716408 () Bool)

(declare-fun res!769708 () Bool)

(assert (=> b!1716408 (=> (not res!769708) (not e!1097677))))

(assert (=> b!1716408 (= res!769708 (= (originalCharacters!4131 token!523) (list!7574 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 token!523))) (value!104207 token!523)))))))

(declare-fun b!1716409 () Bool)

(assert (=> b!1716409 (= e!1097677 (= (size!14900 token!523) (size!14902 (originalCharacters!4131 token!523))))))

(assert (= (and d!526581 res!769707) b!1716408))

(assert (= (and b!1716408 res!769708) b!1716409))

(declare-fun b_lambda!54251 () Bool)

(assert (=> (not b_lambda!54251) (not b!1716408)))

(assert (=> b!1716408 t!158835))

(declare-fun b_and!124695 () Bool)

(assert (= b_and!124683 (and (=> t!158835 result!121908) b_and!124695)))

(assert (=> b!1716408 t!158837))

(declare-fun b_and!124697 () Bool)

(assert (= b_and!124685 (and (=> t!158837 result!121910) b_and!124697)))

(assert (=> b!1716408 t!158839))

(declare-fun b_and!124699 () Bool)

(assert (= b_and!124687 (and (=> t!158839 result!121912) b_and!124699)))

(declare-fun m!2120899 () Bool)

(assert (=> d!526581 m!2120899))

(assert (=> b!1716408 m!2120877))

(assert (=> b!1716408 m!2120877))

(declare-fun m!2120901 () Bool)

(assert (=> b!1716408 m!2120901))

(declare-fun m!2120903 () Bool)

(assert (=> b!1716409 m!2120903))

(assert (=> start!167962 d!526581))

(declare-fun d!526583 () Bool)

(declare-fun c!281114 () Bool)

(assert (=> d!526583 (= c!281114 (isEmpty!11790 (++!5142 lt!655759 (Cons!18753 (head!3862 suffix!1421) Nil!18753))))))

(declare-fun e!1097680 () Bool)

(assert (=> d!526583 (= (prefixMatch!530 (rulesRegex!675 thiss!24550 rules!3447) (++!5142 lt!655759 (Cons!18753 (head!3862 suffix!1421) Nil!18753))) e!1097680)))

(declare-fun b!1716414 () Bool)

(declare-fun lostCause!507 (Regex!4645) Bool)

(assert (=> b!1716414 (= e!1097680 (not (lostCause!507 (rulesRegex!675 thiss!24550 rules!3447))))))

(declare-fun b!1716415 () Bool)

(assert (=> b!1716415 (= e!1097680 (prefixMatch!530 (derivativeStep!1165 (rulesRegex!675 thiss!24550 rules!3447) (head!3862 (++!5142 lt!655759 (Cons!18753 (head!3862 suffix!1421) Nil!18753)))) (tail!2563 (++!5142 lt!655759 (Cons!18753 (head!3862 suffix!1421) Nil!18753)))))))

(assert (= (and d!526583 c!281114) b!1716414))

(assert (= (and d!526583 (not c!281114)) b!1716415))

(assert (=> d!526583 m!2120699))

(declare-fun m!2120905 () Bool)

(assert (=> d!526583 m!2120905))

(assert (=> b!1716414 m!2120695))

(declare-fun m!2120907 () Bool)

(assert (=> b!1716414 m!2120907))

(assert (=> b!1716415 m!2120699))

(declare-fun m!2120909 () Bool)

(assert (=> b!1716415 m!2120909))

(assert (=> b!1716415 m!2120695))

(assert (=> b!1716415 m!2120909))

(declare-fun m!2120911 () Bool)

(assert (=> b!1716415 m!2120911))

(assert (=> b!1716415 m!2120699))

(declare-fun m!2120913 () Bool)

(assert (=> b!1716415 m!2120913))

(assert (=> b!1716415 m!2120911))

(assert (=> b!1716415 m!2120913))

(declare-fun m!2120915 () Bool)

(assert (=> b!1716415 m!2120915))

(assert (=> b!1716195 d!526583))

(declare-fun d!526585 () Bool)

(declare-fun lt!655877 () Unit!32585)

(declare-fun lemma!321 (List!18824 LexerInterface!2946 List!18824) Unit!32585)

(assert (=> d!526585 (= lt!655877 (lemma!321 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68990 () Int)

(declare-datatypes ((List!18826 0))(
  ( (Nil!18756) (Cons!18756 (h!24157 Regex!4645) (t!158889 List!18826)) )
))
(declare-fun generalisedUnion!329 (List!18826) Regex!4645)

(declare-fun map!3859 (List!18824 Int) List!18826)

(assert (=> d!526585 (= (rulesRegex!675 thiss!24550 rules!3447) (generalisedUnion!329 (map!3859 rules!3447 lambda!68990)))))

(declare-fun bs!402047 () Bool)

(assert (= bs!402047 d!526585))

(declare-fun m!2120917 () Bool)

(assert (=> bs!402047 m!2120917))

(declare-fun m!2120919 () Bool)

(assert (=> bs!402047 m!2120919))

(assert (=> bs!402047 m!2120919))

(declare-fun m!2120921 () Bool)

(assert (=> bs!402047 m!2120921))

(assert (=> b!1716195 d!526585))

(declare-fun lt!655880 () List!18823)

(declare-fun e!1097690 () Bool)

(declare-fun b!1716435 () Bool)

(assert (=> b!1716435 (= e!1097690 (or (not (= (Cons!18753 (head!3862 suffix!1421) Nil!18753) Nil!18753)) (= lt!655880 lt!655759)))))

(declare-fun b!1716434 () Bool)

(declare-fun res!769718 () Bool)

(assert (=> b!1716434 (=> (not res!769718) (not e!1097690))))

(assert (=> b!1716434 (= res!769718 (= (size!14902 lt!655880) (+ (size!14902 lt!655759) (size!14902 (Cons!18753 (head!3862 suffix!1421) Nil!18753)))))))

(declare-fun b!1716433 () Bool)

(declare-fun e!1097689 () List!18823)

(assert (=> b!1716433 (= e!1097689 (Cons!18753 (h!24154 lt!655759) (++!5142 (t!158826 lt!655759) (Cons!18753 (head!3862 suffix!1421) Nil!18753))))))

(declare-fun b!1716432 () Bool)

(assert (=> b!1716432 (= e!1097689 (Cons!18753 (head!3862 suffix!1421) Nil!18753))))

(declare-fun d!526587 () Bool)

(assert (=> d!526587 e!1097690))

(declare-fun res!769717 () Bool)

(assert (=> d!526587 (=> (not res!769717) (not e!1097690))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2671 (List!18823) (InoxSet C!9464))

(assert (=> d!526587 (= res!769717 (= (content!2671 lt!655880) ((_ map or) (content!2671 lt!655759) (content!2671 (Cons!18753 (head!3862 suffix!1421) Nil!18753)))))))

(assert (=> d!526587 (= lt!655880 e!1097689)))

(declare-fun c!281119 () Bool)

(assert (=> d!526587 (= c!281119 ((_ is Nil!18753) lt!655759))))

(assert (=> d!526587 (= (++!5142 lt!655759 (Cons!18753 (head!3862 suffix!1421) Nil!18753)) lt!655880)))

(assert (= (and d!526587 c!281119) b!1716432))

(assert (= (and d!526587 (not c!281119)) b!1716433))

(assert (= (and d!526587 res!769717) b!1716434))

(assert (= (and b!1716434 res!769718) b!1716435))

(declare-fun m!2120923 () Bool)

(assert (=> b!1716434 m!2120923))

(assert (=> b!1716434 m!2120851))

(declare-fun m!2120925 () Bool)

(assert (=> b!1716434 m!2120925))

(declare-fun m!2120927 () Bool)

(assert (=> b!1716433 m!2120927))

(declare-fun m!2120929 () Bool)

(assert (=> d!526587 m!2120929))

(declare-fun m!2120931 () Bool)

(assert (=> d!526587 m!2120931))

(declare-fun m!2120933 () Bool)

(assert (=> d!526587 m!2120933))

(assert (=> b!1716195 d!526587))

(declare-fun d!526589 () Bool)

(assert (=> d!526589 (= (head!3862 suffix!1421) (h!24154 suffix!1421))))

(assert (=> b!1716195 d!526589))

(declare-fun d!526591 () Bool)

(assert (=> d!526591 (= (inv!24198 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))) (isBalanced!1951 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))))))

(declare-fun bs!402048 () Bool)

(assert (= bs!402048 d!526591))

(declare-fun m!2120935 () Bool)

(assert (=> bs!402048 m!2120935))

(assert (=> tb!101433 d!526591))

(declare-fun d!526593 () Bool)

(assert (=> d!526593 (= (inv!24190 (tag!3619 rule!422)) (= (mod (str.len (value!104206 (tag!3619 rule!422))) 2) 0))))

(assert (=> b!1716215 d!526593))

(declare-fun d!526595 () Bool)

(declare-fun res!769730 () Bool)

(declare-fun e!1097698 () Bool)

(assert (=> d!526595 (=> (not res!769730) (not e!1097698))))

(declare-fun semiInverseModEq!1311 (Int Int) Bool)

(assert (=> d!526595 (= res!769730 (semiInverseModEq!1311 (toChars!4683 (transformation!3317 rule!422)) (toValue!4824 (transformation!3317 rule!422))))))

(assert (=> d!526595 (= (inv!24196 (transformation!3317 rule!422)) e!1097698)))

(declare-fun b!1716451 () Bool)

(declare-fun equivClasses!1252 (Int Int) Bool)

(assert (=> b!1716451 (= e!1097698 (equivClasses!1252 (toChars!4683 (transformation!3317 rule!422)) (toValue!4824 (transformation!3317 rule!422))))))

(assert (= (and d!526595 res!769730) b!1716451))

(declare-fun m!2120987 () Bool)

(assert (=> d!526595 m!2120987))

(declare-fun m!2120989 () Bool)

(assert (=> b!1716451 m!2120989))

(assert (=> b!1716215 d!526595))

(declare-fun d!526599 () Bool)

(declare-fun c!281124 () Bool)

(assert (=> d!526599 (= c!281124 ((_ is Node!6237) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))))

(declare-fun e!1097703 () Bool)

(assert (=> d!526599 (= (inv!24197 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))) e!1097703)))

(declare-fun b!1716458 () Bool)

(declare-fun inv!24199 (Conc!6237) Bool)

(assert (=> b!1716458 (= e!1097703 (inv!24199 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))))

(declare-fun b!1716459 () Bool)

(declare-fun e!1097704 () Bool)

(assert (=> b!1716459 (= e!1097703 e!1097704)))

(declare-fun res!769733 () Bool)

(assert (=> b!1716459 (= res!769733 (not ((_ is Leaf!9116) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))))))

(assert (=> b!1716459 (=> res!769733 e!1097704)))

(declare-fun b!1716460 () Bool)

(declare-fun inv!24200 (Conc!6237) Bool)

(assert (=> b!1716460 (= e!1097704 (inv!24200 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))))

(assert (= (and d!526599 c!281124) b!1716458))

(assert (= (and d!526599 (not c!281124)) b!1716459))

(assert (= (and b!1716459 (not res!769733)) b!1716460))

(declare-fun m!2121023 () Bool)

(assert (=> b!1716458 m!2121023))

(declare-fun m!2121025 () Bool)

(assert (=> b!1716460 m!2121025))

(assert (=> b!1716237 d!526599))

(declare-fun d!526605 () Bool)

(assert (=> d!526605 (isPrefix!1558 lt!655759 (++!5142 lt!655759 suffix!1421))))

(declare-fun lt!655905 () Unit!32585)

(declare-fun choose!10421 (List!18823 List!18823) Unit!32585)

(assert (=> d!526605 (= lt!655905 (choose!10421 lt!655759 suffix!1421))))

(assert (=> d!526605 (= (lemmaConcatTwoListThenFirstIsPrefix!1068 lt!655759 suffix!1421) lt!655905)))

(declare-fun bs!402050 () Bool)

(assert (= bs!402050 d!526605))

(assert (=> bs!402050 m!2120593))

(assert (=> bs!402050 m!2120593))

(declare-fun m!2121027 () Bool)

(assert (=> bs!402050 m!2121027))

(declare-fun m!2121029 () Bool)

(assert (=> bs!402050 m!2121029))

(assert (=> b!1716213 d!526605))

(declare-fun d!526607 () Bool)

(assert (=> d!526607 (= (get!5535 lt!655760) (v!25052 lt!655760))))

(assert (=> b!1716213 d!526607))

(declare-fun d!526609 () Bool)

(declare-fun e!1097716 () Bool)

(assert (=> d!526609 e!1097716))

(declare-fun res!769748 () Bool)

(assert (=> d!526609 (=> res!769748 e!1097716)))

(declare-fun lt!655908 () Bool)

(assert (=> d!526609 (= res!769748 (not lt!655908))))

(declare-fun e!1097715 () Bool)

(assert (=> d!526609 (= lt!655908 e!1097715)))

(declare-fun res!769746 () Bool)

(assert (=> d!526609 (=> res!769746 e!1097715)))

(assert (=> d!526609 (= res!769746 ((_ is Nil!18753) lt!655759))))

(assert (=> d!526609 (= (isPrefix!1558 lt!655759 lt!655758) lt!655908)))

(declare-fun b!1716474 () Bool)

(declare-fun e!1097714 () Bool)

(assert (=> b!1716474 (= e!1097714 (isPrefix!1558 (tail!2563 lt!655759) (tail!2563 lt!655758)))))

(declare-fun b!1716472 () Bool)

(assert (=> b!1716472 (= e!1097715 e!1097714)))

(declare-fun res!769745 () Bool)

(assert (=> b!1716472 (=> (not res!769745) (not e!1097714))))

(assert (=> b!1716472 (= res!769745 (not ((_ is Nil!18753) lt!655758)))))

(declare-fun b!1716475 () Bool)

(assert (=> b!1716475 (= e!1097716 (>= (size!14902 lt!655758) (size!14902 lt!655759)))))

(declare-fun b!1716473 () Bool)

(declare-fun res!769747 () Bool)

(assert (=> b!1716473 (=> (not res!769747) (not e!1097714))))

(assert (=> b!1716473 (= res!769747 (= (head!3862 lt!655759) (head!3862 lt!655758)))))

(assert (= (and d!526609 (not res!769746)) b!1716472))

(assert (= (and b!1716472 res!769745) b!1716473))

(assert (= (and b!1716473 res!769747) b!1716474))

(assert (= (and d!526609 (not res!769748)) b!1716475))

(declare-fun m!2121037 () Bool)

(assert (=> b!1716474 m!2121037))

(declare-fun m!2121039 () Bool)

(assert (=> b!1716474 m!2121039))

(assert (=> b!1716474 m!2121037))

(assert (=> b!1716474 m!2121039))

(declare-fun m!2121041 () Bool)

(assert (=> b!1716474 m!2121041))

(assert (=> b!1716475 m!2120633))

(assert (=> b!1716475 m!2120851))

(declare-fun m!2121043 () Bool)

(assert (=> b!1716473 m!2121043))

(declare-fun m!2121045 () Bool)

(assert (=> b!1716473 m!2121045))

(assert (=> b!1716213 d!526609))

(declare-fun e!1097724 () Bool)

(declare-fun b!1716489 () Bool)

(declare-fun lt!655909 () List!18823)

(assert (=> b!1716489 (= e!1097724 (or (not (= suffix!1421 Nil!18753)) (= lt!655909 lt!655759)))))

(declare-fun b!1716488 () Bool)

(declare-fun res!769752 () Bool)

(assert (=> b!1716488 (=> (not res!769752) (not e!1097724))))

(assert (=> b!1716488 (= res!769752 (= (size!14902 lt!655909) (+ (size!14902 lt!655759) (size!14902 suffix!1421))))))

(declare-fun b!1716487 () Bool)

(declare-fun e!1097723 () List!18823)

(assert (=> b!1716487 (= e!1097723 (Cons!18753 (h!24154 lt!655759) (++!5142 (t!158826 lt!655759) suffix!1421)))))

(declare-fun b!1716486 () Bool)

(assert (=> b!1716486 (= e!1097723 suffix!1421)))

(declare-fun d!526615 () Bool)

(assert (=> d!526615 e!1097724))

(declare-fun res!769751 () Bool)

(assert (=> d!526615 (=> (not res!769751) (not e!1097724))))

(assert (=> d!526615 (= res!769751 (= (content!2671 lt!655909) ((_ map or) (content!2671 lt!655759) (content!2671 suffix!1421))))))

(assert (=> d!526615 (= lt!655909 e!1097723)))

(declare-fun c!281129 () Bool)

(assert (=> d!526615 (= c!281129 ((_ is Nil!18753) lt!655759))))

(assert (=> d!526615 (= (++!5142 lt!655759 suffix!1421) lt!655909)))

(assert (= (and d!526615 c!281129) b!1716486))

(assert (= (and d!526615 (not c!281129)) b!1716487))

(assert (= (and d!526615 res!769751) b!1716488))

(assert (= (and b!1716488 res!769752) b!1716489))

(declare-fun m!2121047 () Bool)

(assert (=> b!1716488 m!2121047))

(assert (=> b!1716488 m!2120851))

(declare-fun m!2121049 () Bool)

(assert (=> b!1716488 m!2121049))

(declare-fun m!2121051 () Bool)

(assert (=> b!1716487 m!2121051))

(declare-fun m!2121053 () Bool)

(assert (=> d!526615 m!2121053))

(assert (=> d!526615 m!2120931))

(declare-fun m!2121055 () Bool)

(assert (=> d!526615 m!2121055))

(assert (=> b!1716213 d!526615))

(declare-fun d!526617 () Bool)

(declare-fun e!1097751 () Bool)

(assert (=> d!526617 e!1097751))

(declare-fun res!769775 () Bool)

(assert (=> d!526617 (=> res!769775 e!1097751)))

(declare-fun lt!655920 () Option!3659)

(declare-fun isEmpty!11794 (Option!3659) Bool)

(assert (=> d!526617 (= res!769775 (isEmpty!11794 lt!655920))))

(declare-fun e!1097753 () Option!3659)

(assert (=> d!526617 (= lt!655920 e!1097753)))

(declare-fun c!281142 () Bool)

(assert (=> d!526617 (= c!281142 (and ((_ is Cons!18754) rules!3447) (= (tag!3619 (h!24155 rules!3447)) (tag!3619 (rule!5255 (_1!10631 lt!655755))))))))

(assert (=> d!526617 (rulesInvariant!2615 thiss!24550 rules!3447)))

(assert (=> d!526617 (= (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 (_1!10631 lt!655755)))) lt!655920)))

(declare-fun b!1716535 () Bool)

(declare-fun e!1097750 () Bool)

(assert (=> b!1716535 (= e!1097751 e!1097750)))

(declare-fun res!769774 () Bool)

(assert (=> b!1716535 (=> (not res!769774) (not e!1097750))))

(assert (=> b!1716535 (= res!769774 (contains!3339 rules!3447 (get!5534 lt!655920)))))

(declare-fun b!1716536 () Bool)

(declare-fun lt!655919 () Unit!32585)

(declare-fun lt!655918 () Unit!32585)

(assert (=> b!1716536 (= lt!655919 lt!655918)))

(assert (=> b!1716536 (rulesInvariant!2615 thiss!24550 (t!158827 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!126 (LexerInterface!2946 Rule!6434 List!18824) Unit!32585)

(assert (=> b!1716536 (= lt!655918 (lemmaInvariantOnRulesThenOnTail!126 thiss!24550 (h!24155 rules!3447) (t!158827 rules!3447)))))

(declare-fun e!1097752 () Option!3659)

(assert (=> b!1716536 (= e!1097752 (getRuleFromTag!367 thiss!24550 (t!158827 rules!3447) (tag!3619 (rule!5255 (_1!10631 lt!655755)))))))

(declare-fun b!1716537 () Bool)

(assert (=> b!1716537 (= e!1097753 (Some!3658 (h!24155 rules!3447)))))

(declare-fun b!1716538 () Bool)

(assert (=> b!1716538 (= e!1097753 e!1097752)))

(declare-fun c!281143 () Bool)

(assert (=> b!1716538 (= c!281143 (and ((_ is Cons!18754) rules!3447) (not (= (tag!3619 (h!24155 rules!3447)) (tag!3619 (rule!5255 (_1!10631 lt!655755)))))))))

(declare-fun b!1716539 () Bool)

(assert (=> b!1716539 (= e!1097750 (= (tag!3619 (get!5534 lt!655920)) (tag!3619 (rule!5255 (_1!10631 lt!655755)))))))

(declare-fun b!1716540 () Bool)

(assert (=> b!1716540 (= e!1097752 None!3658)))

(assert (= (and d!526617 c!281142) b!1716537))

(assert (= (and d!526617 (not c!281142)) b!1716538))

(assert (= (and b!1716538 c!281143) b!1716536))

(assert (= (and b!1716538 (not c!281143)) b!1716540))

(assert (= (and d!526617 (not res!769775)) b!1716535))

(assert (= (and b!1716535 res!769774) b!1716539))

(declare-fun m!2121063 () Bool)

(assert (=> d!526617 m!2121063))

(assert (=> d!526617 m!2120703))

(declare-fun m!2121065 () Bool)

(assert (=> b!1716535 m!2121065))

(assert (=> b!1716535 m!2121065))

(declare-fun m!2121067 () Bool)

(assert (=> b!1716535 m!2121067))

(declare-fun m!2121069 () Bool)

(assert (=> b!1716536 m!2121069))

(declare-fun m!2121071 () Bool)

(assert (=> b!1716536 m!2121071))

(declare-fun m!2121073 () Bool)

(assert (=> b!1716536 m!2121073))

(assert (=> b!1716539 m!2121065))

(assert (=> b!1716213 d!526617))

(declare-fun d!526621 () Bool)

(declare-fun e!1097756 () Bool)

(assert (=> d!526621 e!1097756))

(declare-fun res!769779 () Bool)

(assert (=> d!526621 (=> res!769779 e!1097756)))

(declare-fun lt!655921 () Bool)

(assert (=> d!526621 (= res!769779 (not lt!655921))))

(declare-fun e!1097755 () Bool)

(assert (=> d!526621 (= lt!655921 e!1097755)))

(declare-fun res!769777 () Bool)

(assert (=> d!526621 (=> res!769777 e!1097755)))

(assert (=> d!526621 (= res!769777 ((_ is Nil!18753) lt!655767))))

(assert (=> d!526621 (= (isPrefix!1558 lt!655767 (++!5142 lt!655767 (_2!10631 lt!655755))) lt!655921)))

(declare-fun b!1716543 () Bool)

(declare-fun e!1097754 () Bool)

(assert (=> b!1716543 (= e!1097754 (isPrefix!1558 (tail!2563 lt!655767) (tail!2563 (++!5142 lt!655767 (_2!10631 lt!655755)))))))

(declare-fun b!1716541 () Bool)

(assert (=> b!1716541 (= e!1097755 e!1097754)))

(declare-fun res!769776 () Bool)

(assert (=> b!1716541 (=> (not res!769776) (not e!1097754))))

(assert (=> b!1716541 (= res!769776 (not ((_ is Nil!18753) (++!5142 lt!655767 (_2!10631 lt!655755)))))))

(declare-fun b!1716544 () Bool)

(assert (=> b!1716544 (= e!1097756 (>= (size!14902 (++!5142 lt!655767 (_2!10631 lt!655755))) (size!14902 lt!655767)))))

(declare-fun b!1716542 () Bool)

(declare-fun res!769778 () Bool)

(assert (=> b!1716542 (=> (not res!769778) (not e!1097754))))

(assert (=> b!1716542 (= res!769778 (= (head!3862 lt!655767) (head!3862 (++!5142 lt!655767 (_2!10631 lt!655755)))))))

(assert (= (and d!526621 (not res!769777)) b!1716541))

(assert (= (and b!1716541 res!769776) b!1716542))

(assert (= (and b!1716542 res!769778) b!1716543))

(assert (= (and d!526621 (not res!769779)) b!1716544))

(assert (=> b!1716543 m!2120883))

(assert (=> b!1716543 m!2120595))

(declare-fun m!2121075 () Bool)

(assert (=> b!1716543 m!2121075))

(assert (=> b!1716543 m!2120883))

(assert (=> b!1716543 m!2121075))

(declare-fun m!2121077 () Bool)

(assert (=> b!1716543 m!2121077))

(assert (=> b!1716544 m!2120595))

(declare-fun m!2121079 () Bool)

(assert (=> b!1716544 m!2121079))

(assert (=> b!1716544 m!2120631))

(assert (=> b!1716542 m!2120887))

(assert (=> b!1716542 m!2120595))

(declare-fun m!2121081 () Bool)

(assert (=> b!1716542 m!2121081))

(assert (=> b!1716213 d!526621))

(declare-fun d!526623 () Bool)

(assert (=> d!526623 (= (list!7574 lt!655766) (list!7577 (c!281085 lt!655766)))))

(declare-fun bs!402052 () Bool)

(assert (= bs!402052 d!526623))

(declare-fun m!2121083 () Bool)

(assert (=> bs!402052 m!2121083))

(assert (=> b!1716213 d!526623))

(declare-fun d!526625 () Bool)

(assert (=> d!526625 (= (isDefined!3002 lt!655751) (not (isEmpty!11794 lt!655751)))))

(declare-fun bs!402053 () Bool)

(assert (= bs!402053 d!526625))

(declare-fun m!2121085 () Bool)

(assert (=> bs!402053 m!2121085))

(assert (=> b!1716213 d!526625))

(declare-fun b!1716559 () Bool)

(declare-fun e!1097764 () Option!3658)

(declare-fun lt!655924 () Option!3658)

(declare-fun lt!655925 () Option!3658)

(assert (=> b!1716559 (= e!1097764 (ite (and ((_ is None!3657) lt!655924) ((_ is None!3657) lt!655925)) None!3657 (ite ((_ is None!3657) lt!655925) lt!655924 (ite ((_ is None!3657) lt!655924) lt!655925 (ite (>= (size!14900 (_1!10631 (v!25052 lt!655924))) (size!14900 (_1!10631 (v!25052 lt!655925)))) lt!655924 lt!655925)))))))

(declare-fun call!109656 () Option!3658)

(assert (=> b!1716559 (= lt!655924 call!109656)))

(assert (=> b!1716559 (= lt!655925 (maxPrefix!1500 thiss!24550 (t!158827 rules!3447) lt!655758))))

(declare-fun b!1716560 () Bool)

(assert (=> b!1716560 (= e!1097764 call!109656)))

(declare-fun b!1716561 () Bool)

(declare-fun res!769792 () Bool)

(declare-fun e!1097766 () Bool)

(assert (=> b!1716561 (=> (not res!769792) (not e!1097766))))

(declare-fun lt!655926 () Option!3658)

(assert (=> b!1716561 (= res!769792 (= (value!104207 (_1!10631 (get!5535 lt!655926))) (apply!5122 (transformation!3317 (rule!5255 (_1!10631 (get!5535 lt!655926)))) (seqFromList!2291 (originalCharacters!4131 (_1!10631 (get!5535 lt!655926)))))))))

(declare-fun b!1716562 () Bool)

(declare-fun res!769788 () Bool)

(assert (=> b!1716562 (=> (not res!769788) (not e!1097766))))

(assert (=> b!1716562 (= res!769788 (< (size!14902 (_2!10631 (get!5535 lt!655926))) (size!14902 lt!655758)))))

(declare-fun b!1716563 () Bool)

(declare-fun res!769790 () Bool)

(assert (=> b!1716563 (=> (not res!769790) (not e!1097766))))

(assert (=> b!1716563 (= res!769790 (= (++!5142 (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!655926)))) (_2!10631 (get!5535 lt!655926))) lt!655758))))

(declare-fun d!526627 () Bool)

(declare-fun e!1097765 () Bool)

(assert (=> d!526627 e!1097765))

(declare-fun res!769793 () Bool)

(assert (=> d!526627 (=> res!769793 e!1097765)))

(assert (=> d!526627 (= res!769793 (isEmpty!11793 lt!655926))))

(assert (=> d!526627 (= lt!655926 e!1097764)))

(declare-fun c!281147 () Bool)

(assert (=> d!526627 (= c!281147 (and ((_ is Cons!18754) rules!3447) ((_ is Nil!18754) (t!158827 rules!3447))))))

(declare-fun lt!655923 () Unit!32585)

(declare-fun lt!655927 () Unit!32585)

(assert (=> d!526627 (= lt!655923 lt!655927)))

(assert (=> d!526627 (isPrefix!1558 lt!655758 lt!655758)))

(assert (=> d!526627 (= lt!655927 (lemmaIsPrefixRefl!1061 lt!655758 lt!655758))))

(assert (=> d!526627 (rulesValidInductive!1098 thiss!24550 rules!3447)))

(assert (=> d!526627 (= (maxPrefix!1500 thiss!24550 rules!3447 lt!655758) lt!655926)))

(declare-fun b!1716564 () Bool)

(declare-fun res!769791 () Bool)

(assert (=> b!1716564 (=> (not res!769791) (not e!1097766))))

(assert (=> b!1716564 (= res!769791 (= (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!655926)))) (originalCharacters!4131 (_1!10631 (get!5535 lt!655926)))))))

(declare-fun b!1716565 () Bool)

(assert (=> b!1716565 (= e!1097765 e!1097766)))

(declare-fun res!769789 () Bool)

(assert (=> b!1716565 (=> (not res!769789) (not e!1097766))))

(assert (=> b!1716565 (= res!769789 (isDefined!3001 lt!655926))))

(declare-fun b!1716566 () Bool)

(declare-fun res!769794 () Bool)

(assert (=> b!1716566 (=> (not res!769794) (not e!1097766))))

(assert (=> b!1716566 (= res!769794 (matchR!2119 (regex!3317 (rule!5255 (_1!10631 (get!5535 lt!655926)))) (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!655926))))))))

(declare-fun bm!109651 () Bool)

(assert (=> bm!109651 (= call!109656 (maxPrefixOneRule!876 thiss!24550 (h!24155 rules!3447) lt!655758))))

(declare-fun b!1716567 () Bool)

(assert (=> b!1716567 (= e!1097766 (contains!3339 rules!3447 (rule!5255 (_1!10631 (get!5535 lt!655926)))))))

(assert (= (and d!526627 c!281147) b!1716560))

(assert (= (and d!526627 (not c!281147)) b!1716559))

(assert (= (or b!1716560 b!1716559) bm!109651))

(assert (= (and d!526627 (not res!769793)) b!1716565))

(assert (= (and b!1716565 res!769789) b!1716564))

(assert (= (and b!1716564 res!769791) b!1716562))

(assert (= (and b!1716562 res!769788) b!1716563))

(assert (= (and b!1716563 res!769790) b!1716561))

(assert (= (and b!1716561 res!769792) b!1716566))

(assert (= (and b!1716566 res!769794) b!1716567))

(declare-fun m!2121099 () Bool)

(assert (=> bm!109651 m!2121099))

(declare-fun m!2121101 () Bool)

(assert (=> b!1716563 m!2121101))

(declare-fun m!2121103 () Bool)

(assert (=> b!1716563 m!2121103))

(assert (=> b!1716563 m!2121103))

(declare-fun m!2121105 () Bool)

(assert (=> b!1716563 m!2121105))

(assert (=> b!1716563 m!2121105))

(declare-fun m!2121107 () Bool)

(assert (=> b!1716563 m!2121107))

(declare-fun m!2121109 () Bool)

(assert (=> b!1716565 m!2121109))

(declare-fun m!2121111 () Bool)

(assert (=> b!1716559 m!2121111))

(assert (=> b!1716564 m!2121101))

(assert (=> b!1716564 m!2121103))

(assert (=> b!1716564 m!2121103))

(assert (=> b!1716564 m!2121105))

(assert (=> b!1716562 m!2121101))

(declare-fun m!2121113 () Bool)

(assert (=> b!1716562 m!2121113))

(assert (=> b!1716562 m!2120633))

(declare-fun m!2121115 () Bool)

(assert (=> d!526627 m!2121115))

(declare-fun m!2121117 () Bool)

(assert (=> d!526627 m!2121117))

(declare-fun m!2121119 () Bool)

(assert (=> d!526627 m!2121119))

(assert (=> d!526627 m!2120859))

(assert (=> b!1716561 m!2121101))

(declare-fun m!2121122 () Bool)

(assert (=> b!1716561 m!2121122))

(assert (=> b!1716561 m!2121122))

(declare-fun m!2121125 () Bool)

(assert (=> b!1716561 m!2121125))

(assert (=> b!1716567 m!2121101))

(declare-fun m!2121127 () Bool)

(assert (=> b!1716567 m!2121127))

(assert (=> b!1716566 m!2121101))

(assert (=> b!1716566 m!2121103))

(assert (=> b!1716566 m!2121103))

(assert (=> b!1716566 m!2121105))

(assert (=> b!1716566 m!2121105))

(declare-fun m!2121129 () Bool)

(assert (=> b!1716566 m!2121129))

(assert (=> b!1716213 d!526627))

(declare-fun d!526633 () Bool)

(declare-fun e!1097771 () Bool)

(assert (=> d!526633 e!1097771))

(declare-fun res!769801 () Bool)

(assert (=> d!526633 (=> (not res!769801) (not e!1097771))))

(assert (=> d!526633 (= res!769801 (isDefined!3002 (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 (_1!10631 lt!655755))))))))

(declare-fun lt!655935 () Unit!32585)

(declare-fun choose!10422 (LexerInterface!2946 List!18824 List!18823 Token!6200) Unit!32585)

(assert (=> d!526633 (= lt!655935 (choose!10422 thiss!24550 rules!3447 lt!655758 (_1!10631 lt!655755)))))

(assert (=> d!526633 (rulesInvariant!2615 thiss!24550 rules!3447)))

(assert (=> d!526633 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!367 thiss!24550 rules!3447 lt!655758 (_1!10631 lt!655755)) lt!655935)))

(declare-fun b!1716572 () Bool)

(declare-fun res!769802 () Bool)

(assert (=> b!1716572 (=> (not res!769802) (not e!1097771))))

(assert (=> b!1716572 (= res!769802 (matchR!2119 (regex!3317 (get!5534 (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 (_1!10631 lt!655755)))))) (list!7574 (charsOf!1966 (_1!10631 lt!655755)))))))

(declare-fun b!1716573 () Bool)

(assert (=> b!1716573 (= e!1097771 (= (rule!5255 (_1!10631 lt!655755)) (get!5534 (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 (_1!10631 lt!655755)))))))))

(assert (= (and d!526633 res!769801) b!1716572))

(assert (= (and b!1716572 res!769802) b!1716573))

(assert (=> d!526633 m!2120591))

(assert (=> d!526633 m!2120591))

(declare-fun m!2121137 () Bool)

(assert (=> d!526633 m!2121137))

(declare-fun m!2121139 () Bool)

(assert (=> d!526633 m!2121139))

(assert (=> d!526633 m!2120703))

(assert (=> b!1716572 m!2120581))

(assert (=> b!1716572 m!2120689))

(assert (=> b!1716572 m!2120689))

(declare-fun m!2121141 () Bool)

(assert (=> b!1716572 m!2121141))

(assert (=> b!1716572 m!2120581))

(assert (=> b!1716572 m!2120591))

(assert (=> b!1716572 m!2120591))

(declare-fun m!2121143 () Bool)

(assert (=> b!1716572 m!2121143))

(assert (=> b!1716573 m!2120591))

(assert (=> b!1716573 m!2120591))

(assert (=> b!1716573 m!2121143))

(assert (=> b!1716213 d!526633))

(declare-fun lt!655936 () List!18823)

(declare-fun b!1716579 () Bool)

(declare-fun e!1097773 () Bool)

(assert (=> b!1716579 (= e!1097773 (or (not (= (_2!10631 lt!655755) Nil!18753)) (= lt!655936 lt!655767)))))

(declare-fun b!1716578 () Bool)

(declare-fun res!769804 () Bool)

(assert (=> b!1716578 (=> (not res!769804) (not e!1097773))))

(assert (=> b!1716578 (= res!769804 (= (size!14902 lt!655936) (+ (size!14902 lt!655767) (size!14902 (_2!10631 lt!655755)))))))

(declare-fun b!1716577 () Bool)

(declare-fun e!1097772 () List!18823)

(assert (=> b!1716577 (= e!1097772 (Cons!18753 (h!24154 lt!655767) (++!5142 (t!158826 lt!655767) (_2!10631 lt!655755))))))

(declare-fun b!1716576 () Bool)

(assert (=> b!1716576 (= e!1097772 (_2!10631 lt!655755))))

(declare-fun d!526641 () Bool)

(assert (=> d!526641 e!1097773))

(declare-fun res!769803 () Bool)

(assert (=> d!526641 (=> (not res!769803) (not e!1097773))))

(assert (=> d!526641 (= res!769803 (= (content!2671 lt!655936) ((_ map or) (content!2671 lt!655767) (content!2671 (_2!10631 lt!655755)))))))

(assert (=> d!526641 (= lt!655936 e!1097772)))

(declare-fun c!281148 () Bool)

(assert (=> d!526641 (= c!281148 ((_ is Nil!18753) lt!655767))))

(assert (=> d!526641 (= (++!5142 lt!655767 (_2!10631 lt!655755)) lt!655936)))

(assert (= (and d!526641 c!281148) b!1716576))

(assert (= (and d!526641 (not c!281148)) b!1716577))

(assert (= (and d!526641 res!769803) b!1716578))

(assert (= (and b!1716578 res!769804) b!1716579))

(declare-fun m!2121145 () Bool)

(assert (=> b!1716578 m!2121145))

(assert (=> b!1716578 m!2120631))

(declare-fun m!2121147 () Bool)

(assert (=> b!1716578 m!2121147))

(declare-fun m!2121149 () Bool)

(assert (=> b!1716577 m!2121149))

(declare-fun m!2121151 () Bool)

(assert (=> d!526641 m!2121151))

(declare-fun m!2121153 () Bool)

(assert (=> d!526641 m!2121153))

(declare-fun m!2121155 () Bool)

(assert (=> d!526641 m!2121155))

(assert (=> b!1716213 d!526641))

(declare-fun d!526643 () Bool)

(assert (=> d!526643 (isPrefix!1558 lt!655767 (++!5142 lt!655767 (_2!10631 lt!655755)))))

(declare-fun lt!655937 () Unit!32585)

(assert (=> d!526643 (= lt!655937 (choose!10421 lt!655767 (_2!10631 lt!655755)))))

(assert (=> d!526643 (= (lemmaConcatTwoListThenFirstIsPrefix!1068 lt!655767 (_2!10631 lt!655755)) lt!655937)))

(declare-fun bs!402057 () Bool)

(assert (= bs!402057 d!526643))

(assert (=> bs!402057 m!2120595))

(assert (=> bs!402057 m!2120595))

(assert (=> bs!402057 m!2120597))

(declare-fun m!2121157 () Bool)

(assert (=> bs!402057 m!2121157))

(assert (=> b!1716213 d!526643))

(declare-fun d!526645 () Bool)

(declare-fun lt!655939 () BalanceConc!12418)

(assert (=> d!526645 (= (list!7574 lt!655939) (originalCharacters!4131 (_1!10631 lt!655755)))))

(assert (=> d!526645 (= lt!655939 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))))

(assert (=> d!526645 (= (charsOf!1966 (_1!10631 lt!655755)) lt!655939)))

(declare-fun b_lambda!54255 () Bool)

(assert (=> (not b_lambda!54255) (not d!526645)))

(assert (=> d!526645 t!158820))

(declare-fun b_and!124707 () Bool)

(assert (= b_and!124695 (and (=> t!158820 result!121896) b_and!124707)))

(assert (=> d!526645 t!158822))

(declare-fun b_and!124709 () Bool)

(assert (= b_and!124697 (and (=> t!158822 result!121898) b_and!124709)))

(assert (=> d!526645 t!158824))

(declare-fun b_and!124711 () Bool)

(assert (= b_and!124699 (and (=> t!158824 result!121900) b_and!124711)))

(declare-fun m!2121159 () Bool)

(assert (=> d!526645 m!2121159))

(assert (=> d!526645 m!2120625))

(assert (=> b!1716213 d!526645))

(declare-fun d!526647 () Bool)

(assert (=> d!526647 (isDefined!3001 (maxPrefix!1500 thiss!24550 rules!3447 (++!5142 lt!655759 suffix!1421)))))

(declare-fun lt!656023 () Unit!32585)

(declare-fun e!1097844 () Unit!32585)

(assert (=> d!526647 (= lt!656023 e!1097844)))

(declare-fun c!281174 () Bool)

(assert (=> d!526647 (= c!281174 (isEmpty!11793 (maxPrefix!1500 thiss!24550 rules!3447 (++!5142 lt!655759 suffix!1421))))))

(declare-fun lt!656022 () Unit!32585)

(declare-fun lt!656014 () Unit!32585)

(assert (=> d!526647 (= lt!656022 lt!656014)))

(declare-fun e!1097843 () Bool)

(assert (=> d!526647 e!1097843))

(declare-fun res!769875 () Bool)

(assert (=> d!526647 (=> (not res!769875) (not e!1097843))))

(declare-fun lt!656017 () Token!6200)

(assert (=> d!526647 (= res!769875 (isDefined!3002 (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 lt!656017)))))))

(assert (=> d!526647 (= lt!656014 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!367 thiss!24550 rules!3447 lt!655759 lt!656017))))

(declare-fun lt!656019 () Unit!32585)

(declare-fun lt!656020 () Unit!32585)

(assert (=> d!526647 (= lt!656019 lt!656020)))

(declare-fun lt!656018 () List!18823)

(assert (=> d!526647 (isPrefix!1558 lt!656018 (++!5142 lt!655759 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!247 (List!18823 List!18823 List!18823) Unit!32585)

(assert (=> d!526647 (= lt!656020 (lemmaPrefixStaysPrefixWhenAddingToSuffix!247 lt!656018 lt!655759 suffix!1421))))

(assert (=> d!526647 (= lt!656018 (list!7574 (charsOf!1966 lt!656017)))))

(declare-fun lt!656027 () Unit!32585)

(declare-fun lt!656011 () Unit!32585)

(assert (=> d!526647 (= lt!656027 lt!656011)))

(declare-fun lt!656021 () List!18823)

(declare-fun lt!656015 () List!18823)

(assert (=> d!526647 (isPrefix!1558 lt!656021 (++!5142 lt!656021 lt!656015))))

(assert (=> d!526647 (= lt!656011 (lemmaConcatTwoListThenFirstIsPrefix!1068 lt!656021 lt!656015))))

(assert (=> d!526647 (= lt!656015 (_2!10631 (get!5535 (maxPrefix!1500 thiss!24550 rules!3447 lt!655759))))))

(assert (=> d!526647 (= lt!656021 (list!7574 (charsOf!1966 lt!656017)))))

(declare-datatypes ((List!18828 0))(
  ( (Nil!18758) (Cons!18758 (h!24159 Token!6200) (t!158891 List!18828)) )
))
(declare-fun head!3864 (List!18828) Token!6200)

(declare-datatypes ((IArray!12483 0))(
  ( (IArray!12484 (innerList!6299 List!18828)) )
))
(declare-datatypes ((Conc!6239 0))(
  ( (Node!6239 (left!14955 Conc!6239) (right!15285 Conc!6239) (csize!12708 Int) (cheight!6450 Int)) (Leaf!9118 (xs!9115 IArray!12483) (csize!12709 Int)) (Empty!6239) )
))
(declare-datatypes ((BalanceConc!12422 0))(
  ( (BalanceConc!12423 (c!281199 Conc!6239)) )
))
(declare-fun list!7578 (BalanceConc!12422) List!18828)

(declare-datatypes ((tuple2!18462 0))(
  ( (tuple2!18463 (_1!10633 BalanceConc!12422) (_2!10633 BalanceConc!12418)) )
))
(declare-fun lex!1386 (LexerInterface!2946 List!18824 BalanceConc!12418) tuple2!18462)

(assert (=> d!526647 (= lt!656017 (head!3864 (list!7578 (_1!10633 (lex!1386 thiss!24550 rules!3447 (seqFromList!2291 lt!655759))))))))

(assert (=> d!526647 (not (isEmpty!11789 rules!3447))))

(assert (=> d!526647 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!470 thiss!24550 rules!3447 lt!655759 suffix!1421) lt!656023)))

(declare-fun b!1716705 () Bool)

(assert (=> b!1716705 (= e!1097843 (= (rule!5255 lt!656017) (get!5534 (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 lt!656017))))))))

(declare-fun b!1716706 () Bool)

(declare-fun Unit!32591 () Unit!32585)

(assert (=> b!1716706 (= e!1097844 Unit!32591)))

(declare-fun lt!656024 () List!18823)

(assert (=> b!1716706 (= lt!656024 (++!5142 lt!655759 suffix!1421))))

(declare-fun lt!656012 () Unit!32585)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!255 (LexerInterface!2946 Rule!6434 List!18824 List!18823) Unit!32585)

(assert (=> b!1716706 (= lt!656012 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!255 thiss!24550 (rule!5255 lt!656017) rules!3447 lt!656024))))

(assert (=> b!1716706 (isEmpty!11793 (maxPrefixOneRule!876 thiss!24550 (rule!5255 lt!656017) lt!656024))))

(declare-fun lt!656025 () Unit!32585)

(assert (=> b!1716706 (= lt!656025 lt!656012)))

(declare-fun lt!656026 () List!18823)

(assert (=> b!1716706 (= lt!656026 (list!7574 (charsOf!1966 lt!656017)))))

(declare-fun lt!656013 () Unit!32585)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!251 (LexerInterface!2946 Rule!6434 List!18823 List!18823) Unit!32585)

(assert (=> b!1716706 (= lt!656013 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!251 thiss!24550 (rule!5255 lt!656017) lt!656026 (++!5142 lt!655759 suffix!1421)))))

(assert (=> b!1716706 (not (matchR!2119 (regex!3317 (rule!5255 lt!656017)) lt!656026))))

(declare-fun lt!656016 () Unit!32585)

(assert (=> b!1716706 (= lt!656016 lt!656013)))

(assert (=> b!1716706 false))

(declare-fun b!1716707 () Bool)

(declare-fun Unit!32592 () Unit!32585)

(assert (=> b!1716707 (= e!1097844 Unit!32592)))

(declare-fun b!1716704 () Bool)

(declare-fun res!769874 () Bool)

(assert (=> b!1716704 (=> (not res!769874) (not e!1097843))))

(assert (=> b!1716704 (= res!769874 (matchR!2119 (regex!3317 (get!5534 (getRuleFromTag!367 thiss!24550 rules!3447 (tag!3619 (rule!5255 lt!656017))))) (list!7574 (charsOf!1966 lt!656017))))))

(assert (= (and d!526647 res!769875) b!1716704))

(assert (= (and b!1716704 res!769874) b!1716705))

(assert (= (and d!526647 c!281174) b!1716706))

(assert (= (and d!526647 (not c!281174)) b!1716707))

(declare-fun m!2121321 () Bool)

(assert (=> d!526647 m!2121321))

(declare-fun m!2121323 () Bool)

(assert (=> d!526647 m!2121323))

(declare-fun m!2121325 () Bool)

(assert (=> d!526647 m!2121325))

(declare-fun m!2121327 () Bool)

(assert (=> d!526647 m!2121327))

(declare-fun m!2121329 () Bool)

(assert (=> d!526647 m!2121329))

(assert (=> d!526647 m!2121323))

(declare-fun m!2121331 () Bool)

(assert (=> d!526647 m!2121331))

(declare-fun m!2121333 () Bool)

(assert (=> d!526647 m!2121333))

(declare-fun m!2121335 () Bool)

(assert (=> d!526647 m!2121335))

(assert (=> d!526647 m!2120681))

(declare-fun m!2121337 () Bool)

(assert (=> d!526647 m!2121337))

(declare-fun m!2121339 () Bool)

(assert (=> d!526647 m!2121339))

(declare-fun m!2121341 () Bool)

(assert (=> d!526647 m!2121341))

(assert (=> d!526647 m!2121327))

(assert (=> d!526647 m!2120681))

(assert (=> d!526647 m!2120593))

(assert (=> d!526647 m!2121339))

(declare-fun m!2121343 () Bool)

(assert (=> d!526647 m!2121343))

(assert (=> d!526647 m!2121331))

(declare-fun m!2121345 () Bool)

(assert (=> d!526647 m!2121345))

(assert (=> d!526647 m!2121333))

(declare-fun m!2121349 () Bool)

(assert (=> d!526647 m!2121349))

(declare-fun m!2121353 () Bool)

(assert (=> d!526647 m!2121353))

(assert (=> d!526647 m!2121339))

(declare-fun m!2121355 () Bool)

(assert (=> d!526647 m!2121355))

(assert (=> d!526647 m!2121349))

(declare-fun m!2121357 () Bool)

(assert (=> d!526647 m!2121357))

(assert (=> d!526647 m!2120593))

(declare-fun m!2121359 () Bool)

(assert (=> d!526647 m!2121359))

(assert (=> d!526647 m!2120593))

(assert (=> d!526647 m!2120655))

(assert (=> b!1716705 m!2121323))

(assert (=> b!1716705 m!2121323))

(declare-fun m!2121361 () Bool)

(assert (=> b!1716705 m!2121361))

(declare-fun m!2121367 () Bool)

(assert (=> b!1716706 m!2121367))

(declare-fun m!2121369 () Bool)

(assert (=> b!1716706 m!2121369))

(declare-fun m!2121371 () Bool)

(assert (=> b!1716706 m!2121371))

(declare-fun m!2121373 () Bool)

(assert (=> b!1716706 m!2121373))

(assert (=> b!1716706 m!2120593))

(declare-fun m!2121375 () Bool)

(assert (=> b!1716706 m!2121375))

(assert (=> b!1716706 m!2121333))

(assert (=> b!1716706 m!2121335))

(assert (=> b!1716706 m!2121333))

(assert (=> b!1716706 m!2120593))

(assert (=> b!1716706 m!2121371))

(assert (=> b!1716704 m!2121323))

(assert (=> b!1716704 m!2121333))

(assert (=> b!1716704 m!2121335))

(assert (=> b!1716704 m!2121323))

(assert (=> b!1716704 m!2121361))

(assert (=> b!1716704 m!2121333))

(assert (=> b!1716704 m!2121335))

(declare-fun m!2121377 () Bool)

(assert (=> b!1716704 m!2121377))

(assert (=> b!1716213 d!526647))

(declare-fun d!526717 () Bool)

(declare-fun e!1097853 () Bool)

(assert (=> d!526717 e!1097853))

(declare-fun res!769881 () Bool)

(assert (=> d!526717 (=> res!769881 e!1097853)))

(declare-fun lt!656028 () Bool)

(assert (=> d!526717 (= res!769881 (not lt!656028))))

(declare-fun e!1097852 () Bool)

(assert (=> d!526717 (= lt!656028 e!1097852)))

(declare-fun res!769879 () Bool)

(assert (=> d!526717 (=> res!769879 e!1097852)))

(assert (=> d!526717 (= res!769879 ((_ is Nil!18753) lt!655767))))

(assert (=> d!526717 (= (isPrefix!1558 lt!655767 lt!655758) lt!656028)))

(declare-fun b!1716717 () Bool)

(declare-fun e!1097851 () Bool)

(assert (=> b!1716717 (= e!1097851 (isPrefix!1558 (tail!2563 lt!655767) (tail!2563 lt!655758)))))

(declare-fun b!1716715 () Bool)

(assert (=> b!1716715 (= e!1097852 e!1097851)))

(declare-fun res!769878 () Bool)

(assert (=> b!1716715 (=> (not res!769878) (not e!1097851))))

(assert (=> b!1716715 (= res!769878 (not ((_ is Nil!18753) lt!655758)))))

(declare-fun b!1716718 () Bool)

(assert (=> b!1716718 (= e!1097853 (>= (size!14902 lt!655758) (size!14902 lt!655767)))))

(declare-fun b!1716716 () Bool)

(declare-fun res!769880 () Bool)

(assert (=> b!1716716 (=> (not res!769880) (not e!1097851))))

(assert (=> b!1716716 (= res!769880 (= (head!3862 lt!655767) (head!3862 lt!655758)))))

(assert (= (and d!526717 (not res!769879)) b!1716715))

(assert (= (and b!1716715 res!769878) b!1716716))

(assert (= (and b!1716716 res!769880) b!1716717))

(assert (= (and d!526717 (not res!769881)) b!1716718))

(assert (=> b!1716717 m!2120883))

(assert (=> b!1716717 m!2121039))

(assert (=> b!1716717 m!2120883))

(assert (=> b!1716717 m!2121039))

(declare-fun m!2121379 () Bool)

(assert (=> b!1716717 m!2121379))

(assert (=> b!1716718 m!2120633))

(assert (=> b!1716718 m!2120631))

(assert (=> b!1716716 m!2120887))

(assert (=> b!1716716 m!2121045))

(assert (=> b!1716213 d!526717))

(declare-fun d!526719 () Bool)

(assert (=> d!526719 (= (isEmpty!11790 (_2!10631 lt!655757)) ((_ is Nil!18753) (_2!10631 lt!655757)))))

(assert (=> b!1716212 d!526719))

(declare-fun b!1716743 () Bool)

(declare-fun e!1097876 () Bool)

(declare-fun inv!17 (TokenValue!3407) Bool)

(assert (=> b!1716743 (= e!1097876 (inv!17 (value!104207 token!523)))))

(declare-fun b!1716744 () Bool)

(declare-fun e!1097877 () Bool)

(assert (=> b!1716744 (= e!1097877 e!1097876)))

(declare-fun c!281180 () Bool)

(assert (=> b!1716744 (= c!281180 ((_ is IntegerValue!10222) (value!104207 token!523)))))

(declare-fun b!1716745 () Bool)

(declare-fun inv!16 (TokenValue!3407) Bool)

(assert (=> b!1716745 (= e!1097877 (inv!16 (value!104207 token!523)))))

(declare-fun b!1716746 () Bool)

(declare-fun res!769887 () Bool)

(declare-fun e!1097875 () Bool)

(assert (=> b!1716746 (=> res!769887 e!1097875)))

(assert (=> b!1716746 (= res!769887 (not ((_ is IntegerValue!10223) (value!104207 token!523))))))

(assert (=> b!1716746 (= e!1097876 e!1097875)))

(declare-fun b!1716747 () Bool)

(declare-fun inv!15 (TokenValue!3407) Bool)

(assert (=> b!1716747 (= e!1097875 (inv!15 (value!104207 token!523)))))

(declare-fun d!526721 () Bool)

(declare-fun c!281181 () Bool)

(assert (=> d!526721 (= c!281181 ((_ is IntegerValue!10221) (value!104207 token!523)))))

(assert (=> d!526721 (= (inv!21 (value!104207 token!523)) e!1097877)))

(assert (= (and d!526721 c!281181) b!1716745))

(assert (= (and d!526721 (not c!281181)) b!1716744))

(assert (= (and b!1716744 c!281180) b!1716743))

(assert (= (and b!1716744 (not c!281180)) b!1716746))

(assert (= (and b!1716746 (not res!769887)) b!1716747))

(declare-fun m!2121385 () Bool)

(assert (=> b!1716743 m!2121385))

(declare-fun m!2121387 () Bool)

(assert (=> b!1716745 m!2121387))

(declare-fun m!2121389 () Bool)

(assert (=> b!1716747 m!2121389))

(assert (=> b!1716211 d!526721))

(declare-fun d!526725 () Bool)

(assert (=> d!526725 (= (inv!24190 (tag!3619 (rule!5255 token!523))) (= (mod (str.len (value!104206 (tag!3619 (rule!5255 token!523)))) 2) 0))))

(assert (=> b!1716208 d!526725))

(declare-fun d!526727 () Bool)

(declare-fun res!769888 () Bool)

(declare-fun e!1097878 () Bool)

(assert (=> d!526727 (=> (not res!769888) (not e!1097878))))

(assert (=> d!526727 (= res!769888 (semiInverseModEq!1311 (toChars!4683 (transformation!3317 (rule!5255 token!523))) (toValue!4824 (transformation!3317 (rule!5255 token!523)))))))

(assert (=> d!526727 (= (inv!24196 (transformation!3317 (rule!5255 token!523))) e!1097878)))

(declare-fun b!1716748 () Bool)

(assert (=> b!1716748 (= e!1097878 (equivClasses!1252 (toChars!4683 (transformation!3317 (rule!5255 token!523))) (toValue!4824 (transformation!3317 (rule!5255 token!523)))))))

(assert (= (and d!526727 res!769888) b!1716748))

(declare-fun m!2121391 () Bool)

(assert (=> d!526727 m!2121391))

(declare-fun m!2121393 () Bool)

(assert (=> b!1716748 m!2121393))

(assert (=> b!1716208 d!526727))

(declare-fun d!526729 () Bool)

(declare-fun fromListB!1052 (List!18823) BalanceConc!12418)

(assert (=> d!526729 (= (seqFromList!2291 lt!655767) (fromListB!1052 lt!655767))))

(declare-fun bs!402066 () Bool)

(assert (= bs!402066 d!526729))

(declare-fun m!2121399 () Bool)

(assert (=> bs!402066 m!2121399))

(assert (=> b!1716205 d!526729))

(declare-fun d!526731 () Bool)

(assert (=> d!526731 (= (apply!5122 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) (seqFromList!2291 lt!655767)) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (seqFromList!2291 lt!655767)))))

(declare-fun b_lambda!54269 () Bool)

(assert (=> (not b_lambda!54269) (not d!526731)))

(declare-fun t!158865 () Bool)

(declare-fun tb!101475 () Bool)

(assert (=> (and b!1716210 (= (toValue!4824 (transformation!3317 (h!24155 rules!3447))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158865) tb!101475))

(declare-fun result!121944 () Bool)

(assert (=> tb!101475 (= result!121944 (inv!21 (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (seqFromList!2291 lt!655767))))))

(declare-fun m!2121401 () Bool)

(assert (=> tb!101475 m!2121401))

(assert (=> d!526731 t!158865))

(declare-fun b_and!124753 () Bool)

(assert (= b_and!124689 (and (=> t!158865 result!121944) b_and!124753)))

(declare-fun t!158867 () Bool)

(declare-fun tb!101477 () Bool)

(assert (=> (and b!1716206 (= (toValue!4824 (transformation!3317 rule!422)) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158867) tb!101477))

(declare-fun result!121948 () Bool)

(assert (= result!121948 result!121944))

(assert (=> d!526731 t!158867))

(declare-fun b_and!124755 () Bool)

(assert (= b_and!124691 (and (=> t!158867 result!121948) b_and!124755)))

(declare-fun tb!101479 () Bool)

(declare-fun t!158869 () Bool)

(assert (=> (and b!1716214 (= (toValue!4824 (transformation!3317 (rule!5255 token!523))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158869) tb!101479))

(declare-fun result!121950 () Bool)

(assert (= result!121950 result!121944))

(assert (=> d!526731 t!158869))

(declare-fun b_and!124757 () Bool)

(assert (= b_and!124693 (and (=> t!158869 result!121950) b_and!124757)))

(assert (=> d!526731 m!2120639))

(declare-fun m!2121403 () Bool)

(assert (=> d!526731 m!2121403))

(assert (=> b!1716205 d!526731))

(declare-fun d!526733 () Bool)

(assert (=> d!526733 (= (maxPrefixOneRule!876 thiss!24550 (rule!5255 (_1!10631 lt!655755)) lt!655758) (Some!3657 (tuple2!18459 (Token!6201 (apply!5122 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) (seqFromList!2291 lt!655767)) (rule!5255 (_1!10631 lt!655755)) (size!14902 lt!655767) lt!655767) (_2!10631 lt!655755))))))

(declare-fun lt!656031 () Unit!32585)

(declare-fun choose!10424 (LexerInterface!2946 List!18824 List!18823 List!18823 List!18823 Rule!6434) Unit!32585)

(assert (=> d!526733 (= lt!656031 (choose!10424 thiss!24550 rules!3447 lt!655767 lt!655758 (_2!10631 lt!655755) (rule!5255 (_1!10631 lt!655755))))))

(assert (=> d!526733 (not (isEmpty!11789 rules!3447))))

(assert (=> d!526733 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!275 thiss!24550 rules!3447 lt!655767 lt!655758 (_2!10631 lt!655755) (rule!5255 (_1!10631 lt!655755))) lt!656031)))

(declare-fun bs!402067 () Bool)

(assert (= bs!402067 d!526733))

(assert (=> bs!402067 m!2120655))

(assert (=> bs!402067 m!2120631))

(assert (=> bs!402067 m!2120639))

(declare-fun m!2121417 () Bool)

(assert (=> bs!402067 m!2121417))

(assert (=> bs!402067 m!2120639))

(assert (=> bs!402067 m!2120641))

(assert (=> bs!402067 m!2120635))

(assert (=> b!1716205 d!526733))

(declare-fun d!526735 () Bool)

(declare-fun lt!656034 () Int)

(assert (=> d!526735 (>= lt!656034 0)))

(declare-fun e!1097899 () Int)

(assert (=> d!526735 (= lt!656034 e!1097899)))

(declare-fun c!281184 () Bool)

(assert (=> d!526735 (= c!281184 ((_ is Nil!18753) lt!655767))))

(assert (=> d!526735 (= (size!14902 lt!655767) lt!656034)))

(declare-fun b!1716795 () Bool)

(assert (=> b!1716795 (= e!1097899 0)))

(declare-fun b!1716796 () Bool)

(assert (=> b!1716796 (= e!1097899 (+ 1 (size!14902 (t!158826 lt!655767))))))

(assert (= (and d!526735 c!281184) b!1716795))

(assert (= (and d!526735 (not c!281184)) b!1716796))

(declare-fun m!2121419 () Bool)

(assert (=> b!1716796 m!2121419))

(assert (=> b!1716205 d!526735))

(declare-fun b!1716815 () Bool)

(declare-fun res!769904 () Bool)

(declare-fun e!1097909 () Bool)

(assert (=> b!1716815 (=> (not res!769904) (not e!1097909))))

(declare-fun lt!656045 () Option!3658)

(assert (=> b!1716815 (= res!769904 (< (size!14902 (_2!10631 (get!5535 lt!656045))) (size!14902 lt!655758)))))

(declare-fun b!1716816 () Bool)

(declare-fun e!1097910 () Bool)

(assert (=> b!1716816 (= e!1097910 e!1097909)))

(declare-fun res!769903 () Bool)

(assert (=> b!1716816 (=> (not res!769903) (not e!1097909))))

(assert (=> b!1716816 (= res!769903 (matchR!2119 (regex!3317 (rule!5255 (_1!10631 lt!655755))) (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!656045))))))))

(declare-fun b!1716817 () Bool)

(declare-fun res!769909 () Bool)

(assert (=> b!1716817 (=> (not res!769909) (not e!1097909))))

(assert (=> b!1716817 (= res!769909 (= (++!5142 (list!7574 (charsOf!1966 (_1!10631 (get!5535 lt!656045)))) (_2!10631 (get!5535 lt!656045))) lt!655758))))

(declare-fun b!1716818 () Bool)

(declare-fun res!769907 () Bool)

(assert (=> b!1716818 (=> (not res!769907) (not e!1097909))))

(assert (=> b!1716818 (= res!769907 (= (rule!5255 (_1!10631 (get!5535 lt!656045))) (rule!5255 (_1!10631 lt!655755))))))

(declare-fun b!1716819 () Bool)

(declare-fun res!769908 () Bool)

(assert (=> b!1716819 (=> (not res!769908) (not e!1097909))))

(assert (=> b!1716819 (= res!769908 (= (value!104207 (_1!10631 (get!5535 lt!656045))) (apply!5122 (transformation!3317 (rule!5255 (_1!10631 (get!5535 lt!656045)))) (seqFromList!2291 (originalCharacters!4131 (_1!10631 (get!5535 lt!656045)))))))))

(declare-fun d!526737 () Bool)

(assert (=> d!526737 e!1097910))

(declare-fun res!769906 () Bool)

(assert (=> d!526737 (=> res!769906 e!1097910)))

(assert (=> d!526737 (= res!769906 (isEmpty!11793 lt!656045))))

(declare-fun e!1097908 () Option!3658)

(assert (=> d!526737 (= lt!656045 e!1097908)))

(declare-fun c!281187 () Bool)

(declare-datatypes ((tuple2!18464 0))(
  ( (tuple2!18465 (_1!10634 List!18823) (_2!10634 List!18823)) )
))
(declare-fun lt!656048 () tuple2!18464)

(assert (=> d!526737 (= c!281187 (isEmpty!11790 (_1!10634 lt!656048)))))

(declare-fun findLongestMatch!315 (Regex!4645 List!18823) tuple2!18464)

(assert (=> d!526737 (= lt!656048 (findLongestMatch!315 (regex!3317 (rule!5255 (_1!10631 lt!655755))) lt!655758))))

(assert (=> d!526737 (ruleValid!816 thiss!24550 (rule!5255 (_1!10631 lt!655755)))))

(assert (=> d!526737 (= (maxPrefixOneRule!876 thiss!24550 (rule!5255 (_1!10631 lt!655755)) lt!655758) lt!656045)))

(declare-fun b!1716820 () Bool)

(assert (=> b!1716820 (= e!1097908 None!3657)))

(declare-fun b!1716821 () Bool)

(assert (=> b!1716821 (= e!1097909 (= (size!14900 (_1!10631 (get!5535 lt!656045))) (size!14902 (originalCharacters!4131 (_1!10631 (get!5535 lt!656045))))))))

(declare-fun b!1716822 () Bool)

(assert (=> b!1716822 (= e!1097908 (Some!3657 (tuple2!18459 (Token!6201 (apply!5122 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) (seqFromList!2291 (_1!10634 lt!656048))) (rule!5255 (_1!10631 lt!655755)) (size!14901 (seqFromList!2291 (_1!10634 lt!656048))) (_1!10634 lt!656048)) (_2!10634 lt!656048))))))

(declare-fun lt!656049 () Unit!32585)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!372 (Regex!4645 List!18823) Unit!32585)

(assert (=> b!1716822 (= lt!656049 (longestMatchIsAcceptedByMatchOrIsEmpty!372 (regex!3317 (rule!5255 (_1!10631 lt!655755))) lt!655758))))

(declare-fun res!769905 () Bool)

(declare-fun findLongestMatchInner!388 (Regex!4645 List!18823 Int List!18823 List!18823 Int) tuple2!18464)

(assert (=> b!1716822 (= res!769905 (isEmpty!11790 (_1!10634 (findLongestMatchInner!388 (regex!3317 (rule!5255 (_1!10631 lt!655755))) Nil!18753 (size!14902 Nil!18753) lt!655758 lt!655758 (size!14902 lt!655758)))))))

(declare-fun e!1097911 () Bool)

(assert (=> b!1716822 (=> res!769905 e!1097911)))

(assert (=> b!1716822 e!1097911))

(declare-fun lt!656046 () Unit!32585)

(assert (=> b!1716822 (= lt!656046 lt!656049)))

(declare-fun lt!656047 () Unit!32585)

(assert (=> b!1716822 (= lt!656047 (lemmaSemiInverse!463 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) (seqFromList!2291 (_1!10634 lt!656048))))))

(declare-fun b!1716823 () Bool)

(assert (=> b!1716823 (= e!1097911 (matchR!2119 (regex!3317 (rule!5255 (_1!10631 lt!655755))) (_1!10634 (findLongestMatchInner!388 (regex!3317 (rule!5255 (_1!10631 lt!655755))) Nil!18753 (size!14902 Nil!18753) lt!655758 lt!655758 (size!14902 lt!655758)))))))

(assert (= (and d!526737 c!281187) b!1716820))

(assert (= (and d!526737 (not c!281187)) b!1716822))

(assert (= (and b!1716822 (not res!769905)) b!1716823))

(assert (= (and d!526737 (not res!769906)) b!1716816))

(assert (= (and b!1716816 res!769903) b!1716817))

(assert (= (and b!1716817 res!769909) b!1716815))

(assert (= (and b!1716815 res!769904) b!1716818))

(assert (= (and b!1716818 res!769907) b!1716819))

(assert (= (and b!1716819 res!769908) b!1716821))

(declare-fun m!2121421 () Bool)

(assert (=> b!1716823 m!2121421))

(assert (=> b!1716823 m!2120633))

(assert (=> b!1716823 m!2121421))

(assert (=> b!1716823 m!2120633))

(declare-fun m!2121423 () Bool)

(assert (=> b!1716823 m!2121423))

(declare-fun m!2121425 () Bool)

(assert (=> b!1716823 m!2121425))

(declare-fun m!2121427 () Bool)

(assert (=> b!1716817 m!2121427))

(declare-fun m!2121429 () Bool)

(assert (=> b!1716817 m!2121429))

(assert (=> b!1716817 m!2121429))

(declare-fun m!2121431 () Bool)

(assert (=> b!1716817 m!2121431))

(assert (=> b!1716817 m!2121431))

(declare-fun m!2121433 () Bool)

(assert (=> b!1716817 m!2121433))

(assert (=> b!1716819 m!2121427))

(declare-fun m!2121435 () Bool)

(assert (=> b!1716819 m!2121435))

(assert (=> b!1716819 m!2121435))

(declare-fun m!2121437 () Bool)

(assert (=> b!1716819 m!2121437))

(declare-fun m!2121439 () Bool)

(assert (=> d!526737 m!2121439))

(declare-fun m!2121441 () Bool)

(assert (=> d!526737 m!2121441))

(declare-fun m!2121443 () Bool)

(assert (=> d!526737 m!2121443))

(declare-fun m!2121445 () Bool)

(assert (=> d!526737 m!2121445))

(assert (=> b!1716821 m!2121427))

(declare-fun m!2121447 () Bool)

(assert (=> b!1716821 m!2121447))

(assert (=> b!1716815 m!2121427))

(declare-fun m!2121449 () Bool)

(assert (=> b!1716815 m!2121449))

(assert (=> b!1716815 m!2120633))

(declare-fun m!2121451 () Bool)

(assert (=> b!1716822 m!2121451))

(assert (=> b!1716822 m!2121421))

(declare-fun m!2121453 () Bool)

(assert (=> b!1716822 m!2121453))

(declare-fun m!2121455 () Bool)

(assert (=> b!1716822 m!2121455))

(assert (=> b!1716822 m!2121421))

(assert (=> b!1716822 m!2120633))

(assert (=> b!1716822 m!2121423))

(assert (=> b!1716822 m!2121453))

(declare-fun m!2121457 () Bool)

(assert (=> b!1716822 m!2121457))

(declare-fun m!2121459 () Bool)

(assert (=> b!1716822 m!2121459))

(assert (=> b!1716822 m!2121453))

(assert (=> b!1716822 m!2121453))

(declare-fun m!2121461 () Bool)

(assert (=> b!1716822 m!2121461))

(assert (=> b!1716822 m!2120633))

(assert (=> b!1716816 m!2121427))

(assert (=> b!1716816 m!2121429))

(assert (=> b!1716816 m!2121429))

(assert (=> b!1716816 m!2121431))

(assert (=> b!1716816 m!2121431))

(declare-fun m!2121463 () Bool)

(assert (=> b!1716816 m!2121463))

(assert (=> b!1716818 m!2121427))

(assert (=> b!1716205 d!526737))

(declare-fun d!526739 () Bool)

(declare-fun lt!656050 () Int)

(assert (=> d!526739 (>= lt!656050 0)))

(declare-fun e!1097912 () Int)

(assert (=> d!526739 (= lt!656050 e!1097912)))

(declare-fun c!281188 () Bool)

(assert (=> d!526739 (= c!281188 ((_ is Nil!18753) lt!655758))))

(assert (=> d!526739 (= (size!14902 lt!655758) lt!656050)))

(declare-fun b!1716824 () Bool)

(assert (=> b!1716824 (= e!1097912 0)))

(declare-fun b!1716825 () Bool)

(assert (=> b!1716825 (= e!1097912 (+ 1 (size!14902 (t!158826 lt!655758))))))

(assert (= (and d!526739 c!281188) b!1716824))

(assert (= (and d!526739 (not c!281188)) b!1716825))

(declare-fun m!2121465 () Bool)

(assert (=> b!1716825 m!2121465))

(assert (=> b!1716205 d!526739))

(declare-fun b!1716826 () Bool)

(declare-fun e!1097916 () Bool)

(declare-fun lt!656051 () Bool)

(declare-fun call!109659 () Bool)

(assert (=> b!1716826 (= e!1097916 (= lt!656051 call!109659))))

(declare-fun b!1716827 () Bool)

(declare-fun e!1097915 () Bool)

(assert (=> b!1716827 (= e!1097915 (= (head!3862 (list!7574 (charsOf!1966 (_1!10631 lt!655755)))) (c!281084 (regex!3317 lt!655765))))))

(declare-fun b!1716828 () Bool)

(declare-fun res!769912 () Bool)

(declare-fun e!1097918 () Bool)

(assert (=> b!1716828 (=> res!769912 e!1097918)))

(assert (=> b!1716828 (= res!769912 (not ((_ is ElementMatch!4645) (regex!3317 lt!655765))))))

(declare-fun e!1097919 () Bool)

(assert (=> b!1716828 (= e!1097919 e!1097918)))

(declare-fun b!1716829 () Bool)

(declare-fun e!1097917 () Bool)

(assert (=> b!1716829 (= e!1097917 (nullable!1397 (regex!3317 lt!655765)))))

(declare-fun b!1716830 () Bool)

(declare-fun res!769916 () Bool)

(assert (=> b!1716830 (=> (not res!769916) (not e!1097915))))

(assert (=> b!1716830 (= res!769916 (not call!109659))))

(declare-fun b!1716831 () Bool)

(assert (=> b!1716831 (= e!1097916 e!1097919)))

(declare-fun c!281191 () Bool)

(assert (=> b!1716831 (= c!281191 ((_ is EmptyLang!4645) (regex!3317 lt!655765)))))

(declare-fun b!1716832 () Bool)

(declare-fun e!1097913 () Bool)

(assert (=> b!1716832 (= e!1097918 e!1097913)))

(declare-fun res!769915 () Bool)

(assert (=> b!1716832 (=> (not res!769915) (not e!1097913))))

(assert (=> b!1716832 (= res!769915 (not lt!656051))))

(declare-fun b!1716833 () Bool)

(declare-fun res!769913 () Bool)

(declare-fun e!1097914 () Bool)

(assert (=> b!1716833 (=> res!769913 e!1097914)))

(assert (=> b!1716833 (= res!769913 (not (isEmpty!11790 (tail!2563 (list!7574 (charsOf!1966 (_1!10631 lt!655755)))))))))

(declare-fun bm!109654 () Bool)

(assert (=> bm!109654 (= call!109659 (isEmpty!11790 (list!7574 (charsOf!1966 (_1!10631 lt!655755)))))))

(declare-fun d!526741 () Bool)

(assert (=> d!526741 e!1097916))

(declare-fun c!281190 () Bool)

(assert (=> d!526741 (= c!281190 ((_ is EmptyExpr!4645) (regex!3317 lt!655765)))))

(assert (=> d!526741 (= lt!656051 e!1097917)))

(declare-fun c!281189 () Bool)

(assert (=> d!526741 (= c!281189 (isEmpty!11790 (list!7574 (charsOf!1966 (_1!10631 lt!655755)))))))

(assert (=> d!526741 (validRegex!1871 (regex!3317 lt!655765))))

(assert (=> d!526741 (= (matchR!2119 (regex!3317 lt!655765) (list!7574 (charsOf!1966 (_1!10631 lt!655755)))) lt!656051)))

(declare-fun b!1716834 () Bool)

(assert (=> b!1716834 (= e!1097914 (not (= (head!3862 (list!7574 (charsOf!1966 (_1!10631 lt!655755)))) (c!281084 (regex!3317 lt!655765)))))))

(declare-fun b!1716835 () Bool)

(declare-fun res!769910 () Bool)

(assert (=> b!1716835 (=> (not res!769910) (not e!1097915))))

(assert (=> b!1716835 (= res!769910 (isEmpty!11790 (tail!2563 (list!7574 (charsOf!1966 (_1!10631 lt!655755))))))))

(declare-fun b!1716836 () Bool)

(assert (=> b!1716836 (= e!1097913 e!1097914)))

(declare-fun res!769914 () Bool)

(assert (=> b!1716836 (=> res!769914 e!1097914)))

(assert (=> b!1716836 (= res!769914 call!109659)))

(declare-fun b!1716837 () Bool)

(assert (=> b!1716837 (= e!1097917 (matchR!2119 (derivativeStep!1165 (regex!3317 lt!655765) (head!3862 (list!7574 (charsOf!1966 (_1!10631 lt!655755))))) (tail!2563 (list!7574 (charsOf!1966 (_1!10631 lt!655755))))))))

(declare-fun b!1716838 () Bool)

(assert (=> b!1716838 (= e!1097919 (not lt!656051))))

(declare-fun b!1716839 () Bool)

(declare-fun res!769911 () Bool)

(assert (=> b!1716839 (=> res!769911 e!1097918)))

(assert (=> b!1716839 (= res!769911 e!1097915)))

(declare-fun res!769917 () Bool)

(assert (=> b!1716839 (=> (not res!769917) (not e!1097915))))

(assert (=> b!1716839 (= res!769917 lt!656051)))

(assert (= (and d!526741 c!281189) b!1716829))

(assert (= (and d!526741 (not c!281189)) b!1716837))

(assert (= (and d!526741 c!281190) b!1716826))

(assert (= (and d!526741 (not c!281190)) b!1716831))

(assert (= (and b!1716831 c!281191) b!1716838))

(assert (= (and b!1716831 (not c!281191)) b!1716828))

(assert (= (and b!1716828 (not res!769912)) b!1716839))

(assert (= (and b!1716839 res!769917) b!1716830))

(assert (= (and b!1716830 res!769916) b!1716835))

(assert (= (and b!1716835 res!769910) b!1716827))

(assert (= (and b!1716839 (not res!769911)) b!1716832))

(assert (= (and b!1716832 res!769915) b!1716836))

(assert (= (and b!1716836 (not res!769914)) b!1716833))

(assert (= (and b!1716833 (not res!769913)) b!1716834))

(assert (= (or b!1716826 b!1716830 b!1716836) bm!109654))

(assert (=> b!1716835 m!2120689))

(declare-fun m!2121467 () Bool)

(assert (=> b!1716835 m!2121467))

(assert (=> b!1716835 m!2121467))

(declare-fun m!2121469 () Bool)

(assert (=> b!1716835 m!2121469))

(assert (=> b!1716827 m!2120689))

(declare-fun m!2121471 () Bool)

(assert (=> b!1716827 m!2121471))

(assert (=> b!1716833 m!2120689))

(assert (=> b!1716833 m!2121467))

(assert (=> b!1716833 m!2121467))

(assert (=> b!1716833 m!2121469))

(assert (=> b!1716837 m!2120689))

(assert (=> b!1716837 m!2121471))

(assert (=> b!1716837 m!2121471))

(declare-fun m!2121473 () Bool)

(assert (=> b!1716837 m!2121473))

(assert (=> b!1716837 m!2120689))

(assert (=> b!1716837 m!2121467))

(assert (=> b!1716837 m!2121473))

(assert (=> b!1716837 m!2121467))

(declare-fun m!2121475 () Bool)

(assert (=> b!1716837 m!2121475))

(assert (=> bm!109654 m!2120689))

(declare-fun m!2121477 () Bool)

(assert (=> bm!109654 m!2121477))

(declare-fun m!2121479 () Bool)

(assert (=> b!1716829 m!2121479))

(assert (=> b!1716834 m!2120689))

(assert (=> b!1716834 m!2121471))

(assert (=> d!526741 m!2120689))

(assert (=> d!526741 m!2121477))

(declare-fun m!2121481 () Bool)

(assert (=> d!526741 m!2121481))

(assert (=> b!1716203 d!526741))

(declare-fun d!526743 () Bool)

(assert (=> d!526743 (= (list!7574 (charsOf!1966 (_1!10631 lt!655755))) (list!7577 (c!281085 (charsOf!1966 (_1!10631 lt!655755)))))))

(declare-fun bs!402068 () Bool)

(assert (= bs!402068 d!526743))

(declare-fun m!2121483 () Bool)

(assert (=> bs!402068 m!2121483))

(assert (=> b!1716203 d!526743))

(assert (=> b!1716203 d!526645))

(declare-fun d!526745 () Bool)

(assert (=> d!526745 (= (get!5534 lt!655751) (v!25053 lt!655751))))

(assert (=> b!1716203 d!526745))

(declare-fun b!1716840 () Bool)

(declare-fun e!1097923 () Bool)

(declare-fun lt!656052 () Bool)

(declare-fun call!109660 () Bool)

(assert (=> b!1716840 (= e!1097923 (= lt!656052 call!109660))))

(declare-fun b!1716841 () Bool)

(declare-fun e!1097922 () Bool)

(assert (=> b!1716841 (= e!1097922 (= (head!3862 lt!655759) (c!281084 (regex!3317 rule!422))))))

(declare-fun b!1716842 () Bool)

(declare-fun res!769920 () Bool)

(declare-fun e!1097925 () Bool)

(assert (=> b!1716842 (=> res!769920 e!1097925)))

(assert (=> b!1716842 (= res!769920 (not ((_ is ElementMatch!4645) (regex!3317 rule!422))))))

(declare-fun e!1097926 () Bool)

(assert (=> b!1716842 (= e!1097926 e!1097925)))

(declare-fun b!1716843 () Bool)

(declare-fun e!1097924 () Bool)

(assert (=> b!1716843 (= e!1097924 (nullable!1397 (regex!3317 rule!422)))))

(declare-fun b!1716844 () Bool)

(declare-fun res!769924 () Bool)

(assert (=> b!1716844 (=> (not res!769924) (not e!1097922))))

(assert (=> b!1716844 (= res!769924 (not call!109660))))

(declare-fun b!1716845 () Bool)

(assert (=> b!1716845 (= e!1097923 e!1097926)))

(declare-fun c!281194 () Bool)

(assert (=> b!1716845 (= c!281194 ((_ is EmptyLang!4645) (regex!3317 rule!422)))))

(declare-fun b!1716846 () Bool)

(declare-fun e!1097920 () Bool)

(assert (=> b!1716846 (= e!1097925 e!1097920)))

(declare-fun res!769923 () Bool)

(assert (=> b!1716846 (=> (not res!769923) (not e!1097920))))

(assert (=> b!1716846 (= res!769923 (not lt!656052))))

(declare-fun b!1716847 () Bool)

(declare-fun res!769921 () Bool)

(declare-fun e!1097921 () Bool)

(assert (=> b!1716847 (=> res!769921 e!1097921)))

(assert (=> b!1716847 (= res!769921 (not (isEmpty!11790 (tail!2563 lt!655759))))))

(declare-fun bm!109655 () Bool)

(assert (=> bm!109655 (= call!109660 (isEmpty!11790 lt!655759))))

(declare-fun d!526747 () Bool)

(assert (=> d!526747 e!1097923))

(declare-fun c!281193 () Bool)

(assert (=> d!526747 (= c!281193 ((_ is EmptyExpr!4645) (regex!3317 rule!422)))))

(assert (=> d!526747 (= lt!656052 e!1097924)))

(declare-fun c!281192 () Bool)

(assert (=> d!526747 (= c!281192 (isEmpty!11790 lt!655759))))

(assert (=> d!526747 (validRegex!1871 (regex!3317 rule!422))))

(assert (=> d!526747 (= (matchR!2119 (regex!3317 rule!422) lt!655759) lt!656052)))

(declare-fun b!1716848 () Bool)

(assert (=> b!1716848 (= e!1097921 (not (= (head!3862 lt!655759) (c!281084 (regex!3317 rule!422)))))))

(declare-fun b!1716849 () Bool)

(declare-fun res!769918 () Bool)

(assert (=> b!1716849 (=> (not res!769918) (not e!1097922))))

(assert (=> b!1716849 (= res!769918 (isEmpty!11790 (tail!2563 lt!655759)))))

(declare-fun b!1716850 () Bool)

(assert (=> b!1716850 (= e!1097920 e!1097921)))

(declare-fun res!769922 () Bool)

(assert (=> b!1716850 (=> res!769922 e!1097921)))

(assert (=> b!1716850 (= res!769922 call!109660)))

(declare-fun b!1716851 () Bool)

(assert (=> b!1716851 (= e!1097924 (matchR!2119 (derivativeStep!1165 (regex!3317 rule!422) (head!3862 lt!655759)) (tail!2563 lt!655759)))))

(declare-fun b!1716852 () Bool)

(assert (=> b!1716852 (= e!1097926 (not lt!656052))))

(declare-fun b!1716853 () Bool)

(declare-fun res!769919 () Bool)

(assert (=> b!1716853 (=> res!769919 e!1097925)))

(assert (=> b!1716853 (= res!769919 e!1097922)))

(declare-fun res!769925 () Bool)

(assert (=> b!1716853 (=> (not res!769925) (not e!1097922))))

(assert (=> b!1716853 (= res!769925 lt!656052)))

(assert (= (and d!526747 c!281192) b!1716843))

(assert (= (and d!526747 (not c!281192)) b!1716851))

(assert (= (and d!526747 c!281193) b!1716840))

(assert (= (and d!526747 (not c!281193)) b!1716845))

(assert (= (and b!1716845 c!281194) b!1716852))

(assert (= (and b!1716845 (not c!281194)) b!1716842))

(assert (= (and b!1716842 (not res!769920)) b!1716853))

(assert (= (and b!1716853 res!769925) b!1716844))

(assert (= (and b!1716844 res!769924) b!1716849))

(assert (= (and b!1716849 res!769918) b!1716841))

(assert (= (and b!1716853 (not res!769919)) b!1716846))

(assert (= (and b!1716846 res!769923) b!1716850))

(assert (= (and b!1716850 (not res!769922)) b!1716847))

(assert (= (and b!1716847 (not res!769921)) b!1716848))

(assert (= (or b!1716840 b!1716844 b!1716850) bm!109655))

(assert (=> b!1716849 m!2121037))

(assert (=> b!1716849 m!2121037))

(declare-fun m!2121485 () Bool)

(assert (=> b!1716849 m!2121485))

(assert (=> b!1716841 m!2121043))

(assert (=> b!1716847 m!2121037))

(assert (=> b!1716847 m!2121037))

(assert (=> b!1716847 m!2121485))

(assert (=> b!1716851 m!2121043))

(assert (=> b!1716851 m!2121043))

(declare-fun m!2121487 () Bool)

(assert (=> b!1716851 m!2121487))

(assert (=> b!1716851 m!2121037))

(assert (=> b!1716851 m!2121487))

(assert (=> b!1716851 m!2121037))

(declare-fun m!2121489 () Bool)

(assert (=> b!1716851 m!2121489))

(declare-fun m!2121491 () Bool)

(assert (=> bm!109655 m!2121491))

(declare-fun m!2121493 () Bool)

(assert (=> b!1716843 m!2121493))

(assert (=> b!1716848 m!2121043))

(assert (=> d!526747 m!2121491))

(declare-fun m!2121495 () Bool)

(assert (=> d!526747 m!2121495))

(assert (=> b!1716202 d!526747))

(declare-fun d!526749 () Bool)

(declare-fun res!769930 () Bool)

(declare-fun e!1097929 () Bool)

(assert (=> d!526749 (=> (not res!769930) (not e!1097929))))

(assert (=> d!526749 (= res!769930 (validRegex!1871 (regex!3317 rule!422)))))

(assert (=> d!526749 (= (ruleValid!816 thiss!24550 rule!422) e!1097929)))

(declare-fun b!1716858 () Bool)

(declare-fun res!769931 () Bool)

(assert (=> b!1716858 (=> (not res!769931) (not e!1097929))))

(assert (=> b!1716858 (= res!769931 (not (nullable!1397 (regex!3317 rule!422))))))

(declare-fun b!1716859 () Bool)

(assert (=> b!1716859 (= e!1097929 (not (= (tag!3619 rule!422) (String!21368 ""))))))

(assert (= (and d!526749 res!769930) b!1716858))

(assert (= (and b!1716858 res!769931) b!1716859))

(assert (=> d!526749 m!2121495))

(assert (=> b!1716858 m!2121493))

(assert (=> b!1716202 d!526749))

(declare-fun d!526751 () Bool)

(assert (=> d!526751 (ruleValid!816 thiss!24550 rule!422)))

(declare-fun lt!656055 () Unit!32585)

(declare-fun choose!10426 (LexerInterface!2946 Rule!6434 List!18824) Unit!32585)

(assert (=> d!526751 (= lt!656055 (choose!10426 thiss!24550 rule!422 rules!3447))))

(assert (=> d!526751 (contains!3339 rules!3447 rule!422)))

(assert (=> d!526751 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!340 thiss!24550 rule!422 rules!3447) lt!656055)))

(declare-fun bs!402069 () Bool)

(assert (= bs!402069 d!526751))

(assert (=> bs!402069 m!2120615))

(declare-fun m!2121497 () Bool)

(assert (=> bs!402069 m!2121497))

(assert (=> bs!402069 m!2120611))

(assert (=> b!1716202 d!526751))

(declare-fun d!526753 () Bool)

(declare-fun choose!10427 (Int) Bool)

(assert (=> d!526753 (= (Forall!692 lambda!68984) (choose!10427 lambda!68984))))

(declare-fun bs!402070 () Bool)

(assert (= bs!402070 d!526753))

(declare-fun m!2121499 () Bool)

(assert (=> bs!402070 m!2121499))

(assert (=> b!1716201 d!526753))

(declare-fun d!526755 () Bool)

(declare-fun e!1097932 () Bool)

(assert (=> d!526755 e!1097932))

(declare-fun res!769934 () Bool)

(assert (=> d!526755 (=> (not res!769934) (not e!1097932))))

(assert (=> d!526755 (= res!769934 (semiInverseModEq!1311 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))))))

(declare-fun Unit!32593 () Unit!32585)

(assert (=> d!526755 (= (lemmaInv!524 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) Unit!32593)))

(declare-fun b!1716862 () Bool)

(assert (=> b!1716862 (= e!1097932 (equivClasses!1252 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))))))

(assert (= (and d!526755 res!769934) b!1716862))

(declare-fun m!2121501 () Bool)

(assert (=> d!526755 m!2121501))

(declare-fun m!2121503 () Bool)

(assert (=> b!1716862 m!2121503))

(assert (=> b!1716201 d!526755))

(declare-fun d!526757 () Bool)

(assert (=> d!526757 (= (inv!24190 (tag!3619 (h!24155 rules!3447))) (= (mod (str.len (value!104206 (tag!3619 (h!24155 rules!3447)))) 2) 0))))

(assert (=> b!1716200 d!526757))

(declare-fun d!526759 () Bool)

(declare-fun res!769935 () Bool)

(declare-fun e!1097933 () Bool)

(assert (=> d!526759 (=> (not res!769935) (not e!1097933))))

(assert (=> d!526759 (= res!769935 (semiInverseModEq!1311 (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toValue!4824 (transformation!3317 (h!24155 rules!3447)))))))

(assert (=> d!526759 (= (inv!24196 (transformation!3317 (h!24155 rules!3447))) e!1097933)))

(declare-fun b!1716863 () Bool)

(assert (=> b!1716863 (= e!1097933 (equivClasses!1252 (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toValue!4824 (transformation!3317 (h!24155 rules!3447)))))))

(assert (= (and d!526759 res!769935) b!1716863))

(declare-fun m!2121505 () Bool)

(assert (=> d!526759 m!2121505))

(declare-fun m!2121507 () Bool)

(assert (=> b!1716863 m!2121507))

(assert (=> b!1716200 d!526759))

(declare-fun d!526761 () Bool)

(declare-fun res!769938 () Bool)

(declare-fun e!1097936 () Bool)

(assert (=> d!526761 (=> (not res!769938) (not e!1097936))))

(declare-fun rulesValid!1237 (LexerInterface!2946 List!18824) Bool)

(assert (=> d!526761 (= res!769938 (rulesValid!1237 thiss!24550 rules!3447))))

(assert (=> d!526761 (= (rulesInvariant!2615 thiss!24550 rules!3447) e!1097936)))

(declare-fun b!1716866 () Bool)

(declare-datatypes ((List!18829 0))(
  ( (Nil!18759) (Cons!18759 (h!24160 String!21367) (t!158892 List!18829)) )
))
(declare-fun noDuplicateTag!1237 (LexerInterface!2946 List!18824 List!18829) Bool)

(assert (=> b!1716866 (= e!1097936 (noDuplicateTag!1237 thiss!24550 rules!3447 Nil!18759))))

(assert (= (and d!526761 res!769938) b!1716866))

(declare-fun m!2121509 () Bool)

(assert (=> d!526761 m!2121509))

(declare-fun m!2121511 () Bool)

(assert (=> b!1716866 m!2121511))

(assert (=> b!1716221 d!526761))

(declare-fun b!1716867 () Bool)

(declare-fun e!1097938 () Bool)

(assert (=> b!1716867 (= e!1097938 (inv!17 (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))

(declare-fun b!1716868 () Bool)

(declare-fun e!1097939 () Bool)

(assert (=> b!1716868 (= e!1097939 e!1097938)))

(declare-fun c!281195 () Bool)

(assert (=> b!1716868 (= c!281195 ((_ is IntegerValue!10222) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))

(declare-fun b!1716869 () Bool)

(assert (=> b!1716869 (= e!1097939 (inv!16 (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))

(declare-fun b!1716870 () Bool)

(declare-fun res!769939 () Bool)

(declare-fun e!1097937 () Bool)

(assert (=> b!1716870 (=> res!769939 e!1097937)))

(assert (=> b!1716870 (= res!769939 (not ((_ is IntegerValue!10223) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))))

(assert (=> b!1716870 (= e!1097938 e!1097937)))

(declare-fun b!1716871 () Bool)

(assert (=> b!1716871 (= e!1097937 (inv!15 (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))

(declare-fun d!526763 () Bool)

(declare-fun c!281196 () Bool)

(assert (=> d!526763 (= c!281196 ((_ is IntegerValue!10221) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))))

(assert (=> d!526763 (= (inv!21 (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)) e!1097939)))

(assert (= (and d!526763 c!281196) b!1716869))

(assert (= (and d!526763 (not c!281196)) b!1716868))

(assert (= (and b!1716868 c!281195) b!1716867))

(assert (= (and b!1716868 (not c!281195)) b!1716870))

(assert (= (and b!1716870 (not res!769939)) b!1716871))

(declare-fun m!2121513 () Bool)

(assert (=> b!1716867 m!2121513))

(declare-fun m!2121515 () Bool)

(assert (=> b!1716869 m!2121515))

(declare-fun m!2121517 () Bool)

(assert (=> b!1716871 m!2121517))

(assert (=> tb!101427 d!526763))

(declare-fun d!526765 () Bool)

(assert (=> d!526765 (= (get!5535 lt!655769) (v!25052 lt!655769))))

(assert (=> b!1716220 d!526765))

(declare-fun d!526767 () Bool)

(declare-fun lt!656058 () Bool)

(declare-fun content!2673 (List!18824) (InoxSet Rule!6434))

(assert (=> d!526767 (= lt!656058 (select (content!2673 rules!3447) rule!422))))

(declare-fun e!1097945 () Bool)

(assert (=> d!526767 (= lt!656058 e!1097945)))

(declare-fun res!769944 () Bool)

(assert (=> d!526767 (=> (not res!769944) (not e!1097945))))

(assert (=> d!526767 (= res!769944 ((_ is Cons!18754) rules!3447))))

(assert (=> d!526767 (= (contains!3339 rules!3447 rule!422) lt!656058)))

(declare-fun b!1716876 () Bool)

(declare-fun e!1097944 () Bool)

(assert (=> b!1716876 (= e!1097945 e!1097944)))

(declare-fun res!769945 () Bool)

(assert (=> b!1716876 (=> res!769945 e!1097944)))

(assert (=> b!1716876 (= res!769945 (= (h!24155 rules!3447) rule!422))))

(declare-fun b!1716877 () Bool)

(assert (=> b!1716877 (= e!1097944 (contains!3339 (t!158827 rules!3447) rule!422))))

(assert (= (and d!526767 res!769944) b!1716876))

(assert (= (and b!1716876 (not res!769945)) b!1716877))

(declare-fun m!2121519 () Bool)

(assert (=> d!526767 m!2121519))

(declare-fun m!2121521 () Bool)

(assert (=> d!526767 m!2121521))

(declare-fun m!2121523 () Bool)

(assert (=> b!1716877 m!2121523))

(assert (=> b!1716199 d!526767))

(declare-fun d!526769 () Bool)

(declare-fun c!281197 () Bool)

(assert (=> d!526769 (= c!281197 ((_ is Node!6237) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))))))

(declare-fun e!1097946 () Bool)

(assert (=> d!526769 (= (inv!24197 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))) e!1097946)))

(declare-fun b!1716878 () Bool)

(assert (=> b!1716878 (= e!1097946 (inv!24199 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))))))

(declare-fun b!1716879 () Bool)

(declare-fun e!1097947 () Bool)

(assert (=> b!1716879 (= e!1097946 e!1097947)))

(declare-fun res!769946 () Bool)

(assert (=> b!1716879 (= res!769946 (not ((_ is Leaf!9116) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))))))))

(assert (=> b!1716879 (=> res!769946 e!1097947)))

(declare-fun b!1716880 () Bool)

(assert (=> b!1716880 (= e!1097947 (inv!24200 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))))))

(assert (= (and d!526769 c!281197) b!1716878))

(assert (= (and d!526769 (not c!281197)) b!1716879))

(assert (= (and b!1716879 (not res!769946)) b!1716880))

(declare-fun m!2121525 () Bool)

(assert (=> b!1716878 m!2121525))

(declare-fun m!2121527 () Bool)

(assert (=> b!1716880 m!2121527))

(assert (=> b!1716240 d!526769))

(declare-fun d!526771 () Bool)

(assert (=> d!526771 (= (seqFromList!2291 (originalCharacters!4131 (_1!10631 lt!655755))) (fromListB!1052 (originalCharacters!4131 (_1!10631 lt!655755))))))

(declare-fun bs!402071 () Bool)

(assert (= bs!402071 d!526771))

(declare-fun m!2121529 () Bool)

(assert (=> bs!402071 m!2121529))

(assert (=> b!1716198 d!526771))

(declare-fun d!526773 () Bool)

(assert (=> d!526773 (= (apply!5122 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) lt!655766) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))

(declare-fun b_lambda!54281 () Bool)

(assert (=> (not b_lambda!54281) (not d!526773)))

(assert (=> d!526773 t!158814))

(declare-fun b_and!124759 () Bool)

(assert (= b_and!124753 (and (=> t!158814 result!121888) b_and!124759)))

(assert (=> d!526773 t!158816))

(declare-fun b_and!124761 () Bool)

(assert (= b_and!124755 (and (=> t!158816 result!121892) b_and!124761)))

(assert (=> d!526773 t!158818))

(declare-fun b_and!124763 () Bool)

(assert (= b_and!124757 (and (=> t!158818 result!121894) b_and!124763)))

(assert (=> d!526773 m!2120647))

(assert (=> b!1716198 d!526773))

(declare-fun d!526775 () Bool)

(assert (=> d!526775 (= (size!14900 (_1!10631 lt!655755)) (size!14902 (originalCharacters!4131 (_1!10631 lt!655755))))))

(declare-fun Unit!32594 () Unit!32585)

(assert (=> d!526775 (= (lemmaCharactersSize!389 (_1!10631 lt!655755)) Unit!32594)))

(declare-fun bs!402072 () Bool)

(assert (= bs!402072 d!526775))

(declare-fun m!2121531 () Bool)

(assert (=> bs!402072 m!2121531))

(assert (=> b!1716198 d!526775))

(declare-fun b!1716887 () Bool)

(declare-fun e!1097952 () Bool)

(assert (=> b!1716887 (= e!1097952 true)))

(declare-fun d!526777 () Bool)

(assert (=> d!526777 e!1097952))

(assert (= d!526777 b!1716887))

(declare-fun order!11347 () Int)

(declare-fun lambda!69002 () Int)

(declare-fun dynLambda!8570 (Int Int) Int)

(assert (=> b!1716887 (< (dynLambda!8564 order!11339 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) (dynLambda!8570 order!11347 lambda!69002))))

(assert (=> b!1716887 (< (dynLambda!8566 order!11343 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) (dynLambda!8570 order!11347 lambda!69002))))

(assert (=> d!526777 (= (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (seqFromList!2291 (originalCharacters!4131 (_1!10631 lt!655755)))))))

(declare-fun lt!656061 () Unit!32585)

(declare-fun Forall2of!67 (Int BalanceConc!12418 BalanceConc!12418) Unit!32585)

(assert (=> d!526777 (= lt!656061 (Forall2of!67 lambda!69002 lt!655766 (seqFromList!2291 (originalCharacters!4131 (_1!10631 lt!655755)))))))

(assert (=> d!526777 (= (list!7574 lt!655766) (list!7574 (seqFromList!2291 (originalCharacters!4131 (_1!10631 lt!655755)))))))

(assert (=> d!526777 (= (lemmaEqSameImage!242 (transformation!3317 (rule!5255 (_1!10631 lt!655755))) lt!655766 (seqFromList!2291 (originalCharacters!4131 (_1!10631 lt!655755)))) lt!656061)))

(declare-fun b_lambda!54283 () Bool)

(assert (=> (not b_lambda!54283) (not d!526777)))

(assert (=> d!526777 t!158814))

(declare-fun b_and!124765 () Bool)

(assert (= b_and!124759 (and (=> t!158814 result!121888) b_and!124765)))

(assert (=> d!526777 t!158816))

(declare-fun b_and!124767 () Bool)

(assert (= b_and!124761 (and (=> t!158816 result!121892) b_and!124767)))

(assert (=> d!526777 t!158818))

(declare-fun b_and!124769 () Bool)

(assert (= b_and!124763 (and (=> t!158818 result!121894) b_and!124769)))

(declare-fun b_lambda!54285 () Bool)

(assert (=> (not b_lambda!54285) (not d!526777)))

(declare-fun t!158871 () Bool)

(declare-fun tb!101481 () Bool)

(assert (=> (and b!1716210 (= (toValue!4824 (transformation!3317 (h!24155 rules!3447))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158871) tb!101481))

(declare-fun result!121952 () Bool)

(assert (=> tb!101481 (= result!121952 (inv!21 (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (seqFromList!2291 (originalCharacters!4131 (_1!10631 lt!655755))))))))

(declare-fun m!2121533 () Bool)

(assert (=> tb!101481 m!2121533))

(assert (=> d!526777 t!158871))

(declare-fun b_and!124771 () Bool)

(assert (= b_and!124765 (and (=> t!158871 result!121952) b_and!124771)))

(declare-fun t!158873 () Bool)

(declare-fun tb!101483 () Bool)

(assert (=> (and b!1716206 (= (toValue!4824 (transformation!3317 rule!422)) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158873) tb!101483))

(declare-fun result!121954 () Bool)

(assert (= result!121954 result!121952))

(assert (=> d!526777 t!158873))

(declare-fun b_and!124773 () Bool)

(assert (= b_and!124767 (and (=> t!158873 result!121954) b_and!124773)))

(declare-fun tb!101485 () Bool)

(declare-fun t!158875 () Bool)

(assert (=> (and b!1716214 (= (toValue!4824 (transformation!3317 (rule!5255 token!523))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158875) tb!101485))

(declare-fun result!121956 () Bool)

(assert (= result!121956 result!121952))

(assert (=> d!526777 t!158875))

(declare-fun b_and!124775 () Bool)

(assert (= b_and!124769 (and (=> t!158875 result!121956) b_and!124775)))

(assert (=> d!526777 m!2120589))

(assert (=> d!526777 m!2120647))

(assert (=> d!526777 m!2120661))

(declare-fun m!2121535 () Bool)

(assert (=> d!526777 m!2121535))

(assert (=> d!526777 m!2120661))

(declare-fun m!2121537 () Bool)

(assert (=> d!526777 m!2121537))

(assert (=> d!526777 m!2120661))

(declare-fun m!2121539 () Bool)

(assert (=> d!526777 m!2121539))

(assert (=> b!1716198 d!526777))

(declare-fun d!526779 () Bool)

(declare-fun lt!656064 () Int)

(assert (=> d!526779 (= lt!656064 (size!14902 (list!7574 lt!655766)))))

(declare-fun size!14904 (Conc!6237) Int)

(assert (=> d!526779 (= lt!656064 (size!14904 (c!281085 lt!655766)))))

(assert (=> d!526779 (= (size!14901 lt!655766) lt!656064)))

(declare-fun bs!402073 () Bool)

(assert (= bs!402073 d!526779))

(assert (=> bs!402073 m!2120589))

(assert (=> bs!402073 m!2120589))

(declare-fun m!2121541 () Bool)

(assert (=> bs!402073 m!2121541))

(declare-fun m!2121543 () Bool)

(assert (=> bs!402073 m!2121543))

(assert (=> b!1716198 d!526779))

(declare-fun b!1716901 () Bool)

(declare-fun e!1097956 () Bool)

(declare-fun tp!490295 () Bool)

(declare-fun tp!490294 () Bool)

(assert (=> b!1716901 (= e!1097956 (and tp!490295 tp!490294))))

(declare-fun b!1716899 () Bool)

(declare-fun tp!490296 () Bool)

(declare-fun tp!490298 () Bool)

(assert (=> b!1716899 (= e!1097956 (and tp!490296 tp!490298))))

(declare-fun b!1716900 () Bool)

(declare-fun tp!490297 () Bool)

(assert (=> b!1716900 (= e!1097956 tp!490297)))

(assert (=> b!1716208 (= tp!490221 e!1097956)))

(declare-fun b!1716898 () Bool)

(assert (=> b!1716898 (= e!1097956 tp_is_empty!7533)))

(assert (= (and b!1716208 ((_ is ElementMatch!4645) (regex!3317 (rule!5255 token!523)))) b!1716898))

(assert (= (and b!1716208 ((_ is Concat!8053) (regex!3317 (rule!5255 token!523)))) b!1716899))

(assert (= (and b!1716208 ((_ is Star!4645) (regex!3317 (rule!5255 token!523)))) b!1716900))

(assert (= (and b!1716208 ((_ is Union!4645) (regex!3317 (rule!5255 token!523)))) b!1716901))

(declare-fun b!1716905 () Bool)

(declare-fun e!1097957 () Bool)

(declare-fun tp!490300 () Bool)

(declare-fun tp!490299 () Bool)

(assert (=> b!1716905 (= e!1097957 (and tp!490300 tp!490299))))

(declare-fun b!1716903 () Bool)

(declare-fun tp!490301 () Bool)

(declare-fun tp!490303 () Bool)

(assert (=> b!1716903 (= e!1097957 (and tp!490301 tp!490303))))

(declare-fun b!1716904 () Bool)

(declare-fun tp!490302 () Bool)

(assert (=> b!1716904 (= e!1097957 tp!490302)))

(assert (=> b!1716200 (= tp!490217 e!1097957)))

(declare-fun b!1716902 () Bool)

(assert (=> b!1716902 (= e!1097957 tp_is_empty!7533)))

(assert (= (and b!1716200 ((_ is ElementMatch!4645) (regex!3317 (h!24155 rules!3447)))) b!1716902))

(assert (= (and b!1716200 ((_ is Concat!8053) (regex!3317 (h!24155 rules!3447)))) b!1716903))

(assert (= (and b!1716200 ((_ is Star!4645) (regex!3317 (h!24155 rules!3447)))) b!1716904))

(assert (= (and b!1716200 ((_ is Union!4645) (regex!3317 (h!24155 rules!3447)))) b!1716905))

(declare-fun b!1716910 () Bool)

(declare-fun e!1097960 () Bool)

(declare-fun tp!490306 () Bool)

(assert (=> b!1716910 (= e!1097960 (and tp_is_empty!7533 tp!490306))))

(assert (=> b!1716211 (= tp!490213 e!1097960)))

(assert (= (and b!1716211 ((_ is Cons!18753) (originalCharacters!4131 token!523))) b!1716910))

(declare-fun b!1716911 () Bool)

(declare-fun e!1097961 () Bool)

(declare-fun tp!490307 () Bool)

(assert (=> b!1716911 (= e!1097961 (and tp_is_empty!7533 tp!490307))))

(assert (=> b!1716194 (= tp!490223 e!1097961)))

(assert (= (and b!1716194 ((_ is Cons!18753) (t!158826 suffix!1421))) b!1716911))

(declare-fun b!1716915 () Bool)

(declare-fun e!1097962 () Bool)

(declare-fun tp!490309 () Bool)

(declare-fun tp!490308 () Bool)

(assert (=> b!1716915 (= e!1097962 (and tp!490309 tp!490308))))

(declare-fun b!1716913 () Bool)

(declare-fun tp!490310 () Bool)

(declare-fun tp!490312 () Bool)

(assert (=> b!1716913 (= e!1097962 (and tp!490310 tp!490312))))

(declare-fun b!1716914 () Bool)

(declare-fun tp!490311 () Bool)

(assert (=> b!1716914 (= e!1097962 tp!490311)))

(assert (=> b!1716215 (= tp!490219 e!1097962)))

(declare-fun b!1716912 () Bool)

(assert (=> b!1716912 (= e!1097962 tp_is_empty!7533)))

(assert (= (and b!1716215 ((_ is ElementMatch!4645) (regex!3317 rule!422))) b!1716912))

(assert (= (and b!1716215 ((_ is Concat!8053) (regex!3317 rule!422))) b!1716913))

(assert (= (and b!1716215 ((_ is Star!4645) (regex!3317 rule!422))) b!1716914))

(assert (= (and b!1716215 ((_ is Union!4645) (regex!3317 rule!422))) b!1716915))

(declare-fun tp!490321 () Bool)

(declare-fun e!1097968 () Bool)

(declare-fun b!1716924 () Bool)

(declare-fun tp!490319 () Bool)

(assert (=> b!1716924 (= e!1097968 (and (inv!24197 (left!14953 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))))) tp!490319 (inv!24197 (right!15283 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))))) tp!490321))))

(declare-fun b!1716926 () Bool)

(declare-fun e!1097967 () Bool)

(declare-fun tp!490320 () Bool)

(assert (=> b!1716926 (= e!1097967 tp!490320)))

(declare-fun b!1716925 () Bool)

(declare-fun inv!24203 (IArray!12479) Bool)

(assert (=> b!1716925 (= e!1097968 (and (inv!24203 (xs!9113 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))))) e!1097967))))

(assert (=> b!1716240 (= tp!490228 (and (inv!24197 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755))))) e!1097968))))

(assert (= (and b!1716240 ((_ is Node!6237) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))))) b!1716924))

(assert (= b!1716925 b!1716926))

(assert (= (and b!1716240 ((_ is Leaf!9116) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (value!104207 (_1!10631 lt!655755)))))) b!1716925))

(declare-fun m!2121545 () Bool)

(assert (=> b!1716924 m!2121545))

(declare-fun m!2121547 () Bool)

(assert (=> b!1716924 m!2121547))

(declare-fun m!2121549 () Bool)

(assert (=> b!1716925 m!2121549))

(assert (=> b!1716240 m!2120577))

(declare-fun b!1716937 () Bool)

(declare-fun b_free!46651 () Bool)

(declare-fun b_next!47355 () Bool)

(assert (=> b!1716937 (= b_free!46651 (not b_next!47355))))

(declare-fun t!158877 () Bool)

(declare-fun tb!101487 () Bool)

(assert (=> (and b!1716937 (= (toValue!4824 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158877) tb!101487))

(declare-fun result!121966 () Bool)

(assert (= result!121966 result!121888))

(assert (=> b!1716217 t!158877))

(declare-fun t!158879 () Bool)

(declare-fun tb!101489 () Bool)

(assert (=> (and b!1716937 (= (toValue!4824 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158879) tb!101489))

(declare-fun result!121968 () Bool)

(assert (= result!121968 result!121952))

(assert (=> d!526777 t!158879))

(declare-fun tb!101491 () Bool)

(declare-fun t!158881 () Bool)

(assert (=> (and b!1716937 (= (toValue!4824 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158881) tb!101491))

(declare-fun result!121970 () Bool)

(assert (= result!121970 result!121944))

(assert (=> d!526731 t!158881))

(assert (=> d!526577 t!158877))

(assert (=> d!526773 t!158877))

(assert (=> d!526777 t!158877))

(declare-fun tp!490333 () Bool)

(declare-fun b_and!124777 () Bool)

(assert (=> b!1716937 (= tp!490333 (and (=> t!158877 result!121966) (=> t!158879 result!121968) (=> t!158881 result!121970) b_and!124777))))

(declare-fun b_free!46653 () Bool)

(declare-fun b_next!47357 () Bool)

(assert (=> b!1716937 (= b_free!46653 (not b_next!47357))))

(declare-fun t!158883 () Bool)

(declare-fun tb!101493 () Bool)

(assert (=> (and b!1716937 (= (toChars!4683 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158883) tb!101493))

(declare-fun result!121972 () Bool)

(assert (= result!121972 result!121880))

(assert (=> d!526577 t!158883))

(assert (=> b!1716217 t!158883))

(declare-fun t!158885 () Bool)

(declare-fun tb!101495 () Bool)

(assert (=> (and b!1716937 (= (toChars!4683 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toChars!4683 (transformation!3317 (rule!5255 token!523)))) t!158885) tb!101495))

(declare-fun result!121974 () Bool)

(assert (= result!121974 result!121908))

(assert (=> b!1716408 t!158885))

(assert (=> d!526573 t!158885))

(declare-fun t!158887 () Bool)

(declare-fun tb!101497 () Bool)

(assert (=> (and b!1716937 (= (toChars!4683 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755))))) t!158887) tb!101497))

(declare-fun result!121976 () Bool)

(assert (= result!121976 result!121896))

(assert (=> d!526645 t!158887))

(assert (=> b!1716219 t!158887))

(declare-fun b_and!124779 () Bool)

(declare-fun tp!490332 () Bool)

(assert (=> b!1716937 (= tp!490332 (and (=> t!158883 result!121972) (=> t!158885 result!121974) (=> t!158887 result!121976) b_and!124779))))

(declare-fun e!1097980 () Bool)

(assert (=> b!1716937 (= e!1097980 (and tp!490333 tp!490332))))

(declare-fun b!1716936 () Bool)

(declare-fun e!1097977 () Bool)

(declare-fun tp!490331 () Bool)

(assert (=> b!1716936 (= e!1097977 (and tp!490331 (inv!24190 (tag!3619 (h!24155 (t!158827 rules!3447)))) (inv!24196 (transformation!3317 (h!24155 (t!158827 rules!3447)))) e!1097980))))

(declare-fun b!1716935 () Bool)

(declare-fun e!1097979 () Bool)

(declare-fun tp!490330 () Bool)

(assert (=> b!1716935 (= e!1097979 (and e!1097977 tp!490330))))

(assert (=> b!1716209 (= tp!490222 e!1097979)))

(assert (= b!1716936 b!1716937))

(assert (= b!1716935 b!1716936))

(assert (= (and b!1716209 ((_ is Cons!18754) (t!158827 rules!3447))) b!1716935))

(declare-fun m!2121551 () Bool)

(assert (=> b!1716936 m!2121551))

(declare-fun m!2121553 () Bool)

(assert (=> b!1716936 m!2121553))

(declare-fun e!1097982 () Bool)

(declare-fun b!1716938 () Bool)

(declare-fun tp!490334 () Bool)

(declare-fun tp!490336 () Bool)

(assert (=> b!1716938 (= e!1097982 (and (inv!24197 (left!14953 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))) tp!490334 (inv!24197 (right!15283 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))) tp!490336))))

(declare-fun b!1716940 () Bool)

(declare-fun e!1097981 () Bool)

(declare-fun tp!490335 () Bool)

(assert (=> b!1716940 (= e!1097981 tp!490335)))

(declare-fun b!1716939 () Bool)

(assert (=> b!1716939 (= e!1097982 (and (inv!24203 (xs!9113 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))) e!1097981))))

(assert (=> b!1716237 (= tp!490227 (and (inv!24197 (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766)))) e!1097982))))

(assert (= (and b!1716237 ((_ is Node!6237) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))) b!1716938))

(assert (= b!1716939 b!1716940))

(assert (= (and b!1716237 ((_ is Leaf!9116) (c!281085 (dynLambda!8567 (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) (dynLambda!8568 (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))) lt!655766))))) b!1716939))

(declare-fun m!2121555 () Bool)

(assert (=> b!1716938 m!2121555))

(declare-fun m!2121557 () Bool)

(assert (=> b!1716938 m!2121557))

(declare-fun m!2121559 () Bool)

(assert (=> b!1716939 m!2121559))

(assert (=> b!1716237 m!2120571))

(declare-fun b_lambda!54287 () Bool)

(assert (= b_lambda!54245 (or (and b!1716210 b_free!46637 (= (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toChars!4683 (transformation!3317 (rule!5255 token!523))))) (and b!1716206 b_free!46641 (= (toChars!4683 (transformation!3317 rule!422)) (toChars!4683 (transformation!3317 (rule!5255 token!523))))) (and b!1716214 b_free!46645) (and b!1716937 b_free!46653 (= (toChars!4683 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toChars!4683 (transformation!3317 (rule!5255 token!523))))) b_lambda!54287)))

(declare-fun b_lambda!54289 () Bool)

(assert (= b_lambda!54237 (or (and b!1716210 b_free!46635 (= (toValue!4824 (transformation!3317 (h!24155 rules!3447))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716206 b_free!46639 (= (toValue!4824 (transformation!3317 rule!422)) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716214 b_free!46643 (= (toValue!4824 (transformation!3317 (rule!5255 token!523))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716937 b_free!46651 (= (toValue!4824 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toValue!4824 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) b_lambda!54289)))

(declare-fun b_lambda!54291 () Bool)

(assert (= b_lambda!54251 (or (and b!1716210 b_free!46637 (= (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toChars!4683 (transformation!3317 (rule!5255 token!523))))) (and b!1716206 b_free!46641 (= (toChars!4683 (transformation!3317 rule!422)) (toChars!4683 (transformation!3317 (rule!5255 token!523))))) (and b!1716214 b_free!46645) (and b!1716937 b_free!46653 (= (toChars!4683 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toChars!4683 (transformation!3317 (rule!5255 token!523))))) b_lambda!54291)))

(declare-fun b_lambda!54293 () Bool)

(assert (= b_lambda!54235 (or (and b!1716210 b_free!46637 (= (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716206 b_free!46641 (= (toChars!4683 (transformation!3317 rule!422)) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716214 b_free!46645 (= (toChars!4683 (transformation!3317 (rule!5255 token!523))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716937 b_free!46653 (= (toChars!4683 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) b_lambda!54293)))

(declare-fun b_lambda!54295 () Bool)

(assert (= b_lambda!54239 (or (and b!1716210 b_free!46637 (= (toChars!4683 (transformation!3317 (h!24155 rules!3447))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716206 b_free!46641 (= (toChars!4683 (transformation!3317 rule!422)) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716214 b_free!46645 (= (toChars!4683 (transformation!3317 (rule!5255 token!523))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) (and b!1716937 b_free!46653 (= (toChars!4683 (transformation!3317 (h!24155 (t!158827 rules!3447)))) (toChars!4683 (transformation!3317 (rule!5255 (_1!10631 lt!655755)))))) b_lambda!54295)))

(check-sat (not d!526573) (not tb!101481) (not b!1716936) (not d!526753) (not b_lambda!54285) (not b!1716488) (not b!1716903) (not b_lambda!54255) (not b!1716705) (not b!1716935) (not b!1716237) (not d!526625) (not b!1716716) (not d!526643) (not d!526749) (not b!1716240) (not b!1716867) (not b!1716843) (not b!1716397) (not d!526641) (not b!1716704) (not d!526627) (not b!1716819) (not b!1716901) (not b!1716834) (not b!1716350) (not b!1716539) (not bm!109655) (not d!526595) (not b!1716848) tp_is_empty!7533 (not d!526579) (not b!1716415) (not d!526561) (not b!1716858) (not b!1716398) (not b!1716837) (not b!1716924) (not bm!109654) (not b!1716905) (not b!1716940) (not b!1716474) (not b!1716706) (not d!526591) (not d!526743) (not b!1716925) (not d!526615) b_and!124707 (not b!1716851) (not b!1716573) (not b_lambda!54247) (not b!1716796) (not b!1716748) (not b!1716401) (not bm!109651) (not b_lambda!54295) (not bm!109646) (not b_lambda!54289) (not b!1716487) (not d!526761) (not d!526583) (not b!1716863) (not b!1716572) (not d!526577) (not b!1716841) (not b!1716904) (not d!526777) (not b!1716913) (not d!526733) (not b!1716816) (not d!526741) (not b!1716351) (not b!1716543) (not b!1716817) (not b!1716355) (not d!526727) (not b!1716393) (not d!526779) (not b!1716825) (not b!1716899) (not b!1716354) (not b!1716542) (not b!1716561) (not b!1716821) (not d!526751) b_and!124709 (not b!1716536) (not b_lambda!54269) (not d!526775) (not d!526587) b_and!124777 (not d!526575) (not b!1716434) (not b!1716900) (not b!1716880) (not b!1716409) (not b_next!47343) (not b!1716835) (not d!526555) (not d!526571) (not d!526645) (not b_lambda!54249) (not b!1716356) (not b!1716578) (not b!1716745) (not d!526747) (not tb!101475) (not b_lambda!54283) (not b!1716818) b_and!124773 (not b!1716911) (not d!526647) (not d!526581) (not b!1716391) (not b_next!47349) (not b!1716833) (not b!1716473) (not b!1716352) (not b!1716563) (not b_lambda!54293) (not b_next!47341) (not b!1716565) (not d!526729) (not b_lambda!54281) (not b!1716822) (not b!1716567) (not b!1716535) (not b!1716914) (not b!1716877) (not b!1716938) (not b_lambda!54287) (not b!1716718) (not b!1716347) (not b!1716871) (not d!526771) (not b!1716915) (not d!526549) b_and!124779 (not b_next!47345) b_and!124775 (not b!1716460) (not b!1716829) (not b!1716869) (not d!526737) (not b!1716414) (not b!1716866) (not b_next!47355) (not d!526617) (not b!1716399) (not b!1716862) (not d!526623) (not b_next!47357) (not b!1716349) (not b!1716433) (not b!1716743) (not b!1716747) (not d!526605) (not b_next!47339) (not b!1716475) (not b!1716451) (not b_next!47347) (not b!1716559) b_and!124711 (not b!1716566) (not b!1716562) (not tb!101445) (not b!1716926) (not b!1716458) (not d!526755) (not bm!109643) (not d!526633) (not b!1716353) (not b!1716847) (not b!1716910) (not b!1716815) (not b!1716849) (not b!1716823) (not d!526767) b_and!124771 (not b!1716717) (not b!1716408) (not b!1716878) (not b!1716827) (not b_lambda!54291) (not b!1716577) (not b!1716564) (not d!526759) (not b!1716544) (not b!1716939) (not d!526585))
(check-sat b_and!124707 b_and!124709 b_and!124777 (not b_next!47343) (not b_next!47341) (not b_next!47355) (not b_next!47357) b_and!124771 b_and!124773 (not b_next!47349) b_and!124779 (not b_next!47345) b_and!124775 (not b_next!47339) (not b_next!47347) b_and!124711)
