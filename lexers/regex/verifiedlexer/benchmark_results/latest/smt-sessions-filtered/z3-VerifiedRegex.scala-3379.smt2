; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!191640 () Bool)

(assert start!191640)

(declare-fun b!1910209 () Bool)

(declare-fun b_free!53857 () Bool)

(declare-fun b_next!54561 () Bool)

(assert (=> b!1910209 (= b_free!53857 (not b_next!54561))))

(declare-fun tp!545224 () Bool)

(declare-fun b_and!148775 () Bool)

(assert (=> b!1910209 (= tp!545224 b_and!148775)))

(declare-fun b_free!53859 () Bool)

(declare-fun b_next!54563 () Bool)

(assert (=> b!1910209 (= b_free!53859 (not b_next!54563))))

(declare-fun tp!545222 () Bool)

(declare-fun b_and!148777 () Bool)

(assert (=> b!1910209 (= tp!545222 b_and!148777)))

(declare-fun b!1910194 () Bool)

(declare-fun b_free!53861 () Bool)

(declare-fun b_next!54565 () Bool)

(assert (=> b!1910194 (= b_free!53861 (not b_next!54565))))

(declare-fun tp!545216 () Bool)

(declare-fun b_and!148779 () Bool)

(assert (=> b!1910194 (= tp!545216 b_and!148779)))

(declare-fun b_free!53863 () Bool)

(declare-fun b_next!54567 () Bool)

(assert (=> b!1910194 (= b_free!53863 (not b_next!54567))))

(declare-fun tp!545226 () Bool)

(declare-fun b_and!148781 () Bool)

(assert (=> b!1910194 (= tp!545226 b_and!148781)))

(declare-fun b!1910196 () Bool)

(declare-fun b_free!53865 () Bool)

(declare-fun b_next!54569 () Bool)

(assert (=> b!1910196 (= b_free!53865 (not b_next!54569))))

(declare-fun tp!545218 () Bool)

(declare-fun b_and!148783 () Bool)

(assert (=> b!1910196 (= tp!545218 b_and!148783)))

(declare-fun b_free!53867 () Bool)

(declare-fun b_next!54571 () Bool)

(assert (=> b!1910196 (= b_free!53867 (not b_next!54571))))

(declare-fun tp!545225 () Bool)

(declare-fun b_and!148785 () Bool)

(assert (=> b!1910196 (= tp!545225 b_and!148785)))

(declare-fun b!1910191 () Bool)

(declare-fun e!1220125 () Bool)

(declare-fun e!1220128 () Bool)

(assert (=> b!1910191 (= e!1220125 (not e!1220128))))

(declare-fun res!852931 () Bool)

(assert (=> b!1910191 (=> res!852931 e!1220128)))

(declare-fun lt!730471 () Bool)

(declare-datatypes ((List!21598 0))(
  ( (Nil!21516) (Cons!21516 (h!26917 (_ BitVec 16)) (t!178055 List!21598)) )
))
(declare-datatypes ((TokenValue!3970 0))(
  ( (FloatLiteralValue!7940 (text!28235 List!21598)) (TokenValueExt!3969 (__x!13438 Int)) (Broken!19850 (value!120834 List!21598)) (Object!4051) (End!3970) (Def!3970) (Underscore!3970) (Match!3970) (Else!3970) (Error!3970) (Case!3970) (If!3970) (Extends!3970) (Abstract!3970) (Class!3970) (Val!3970) (DelimiterValue!7940 (del!4030 List!21598)) (KeywordValue!3976 (value!120835 List!21598)) (CommentValue!7940 (value!120836 List!21598)) (WhitespaceValue!7940 (value!120837 List!21598)) (IndentationValue!3970 (value!120838 List!21598)) (String!24967) (Int32!3970) (Broken!19851 (value!120839 List!21598)) (Boolean!3971) (Unit!35871) (OperatorValue!3973 (op!4030 List!21598)) (IdentifierValue!7940 (value!120840 List!21598)) (IdentifierValue!7941 (value!120841 List!21598)) (WhitespaceValue!7941 (value!120842 List!21598)) (True!7940) (False!7940) (Broken!19852 (value!120843 List!21598)) (Broken!19853 (value!120844 List!21598)) (True!7941) (RightBrace!3970) (RightBracket!3970) (Colon!3970) (Null!3970) (Comma!3970) (LeftBracket!3970) (False!7941) (LeftBrace!3970) (ImaginaryLiteralValue!3970 (text!28236 List!21598)) (StringLiteralValue!11910 (value!120845 List!21598)) (EOFValue!3970 (value!120846 List!21598)) (IdentValue!3970 (value!120847 List!21598)) (DelimiterValue!7941 (value!120848 List!21598)) (DedentValue!3970 (value!120849 List!21598)) (NewLineValue!3970 (value!120850 List!21598)) (IntegerValue!11910 (value!120851 (_ BitVec 32)) (text!28237 List!21598)) (IntegerValue!11911 (value!120852 Int) (text!28238 List!21598)) (Times!3970) (Or!3970) (Equal!3970) (Minus!3970) (Broken!19854 (value!120853 List!21598)) (And!3970) (Div!3970) (LessEqual!3970) (Mod!3970) (Concat!9229) (Not!3970) (Plus!3970) (SpaceValue!3970 (value!120854 List!21598)) (IntegerValue!11912 (value!120855 Int) (text!28239 List!21598)) (StringLiteralValue!11911 (text!28240 List!21598)) (FloatLiteralValue!7941 (text!28241 List!21598)) (BytesLiteralValue!3970 (value!120856 List!21598)) (CommentValue!7941 (value!120857 List!21598)) (StringLiteralValue!11912 (value!120858 List!21598)) (ErrorTokenValue!3970 (msg!4031 List!21598)) )
))
(declare-datatypes ((C!10664 0))(
  ( (C!10665 (val!6284 Int)) )
))
(declare-datatypes ((List!21599 0))(
  ( (Nil!21517) (Cons!21517 (h!26918 C!10664) (t!178056 List!21599)) )
))
(declare-datatypes ((String!24968 0))(
  ( (String!24969 (value!120859 String)) )
))
(declare-datatypes ((Regex!5259 0))(
  ( (ElementMatch!5259 (c!311252 C!10664)) (Concat!9230 (regOne!11030 Regex!5259) (regTwo!11030 Regex!5259)) (EmptyExpr!5259) (Star!5259 (reg!5588 Regex!5259)) (EmptyLang!5259) (Union!5259 (regOne!11031 Regex!5259) (regTwo!11031 Regex!5259)) )
))
(declare-datatypes ((IArray!14325 0))(
  ( (IArray!14326 (innerList!7220 List!21599)) )
))
(declare-datatypes ((Conc!7160 0))(
  ( (Node!7160 (left!17199 Conc!7160) (right!17529 Conc!7160) (csize!14550 Int) (cheight!7371 Int)) (Leaf!10540 (xs!10054 IArray!14325) (csize!14551 Int)) (Empty!7160) )
))
(declare-datatypes ((BalanceConc!14136 0))(
  ( (BalanceConc!14137 (c!311253 Conc!7160)) )
))
(declare-datatypes ((TokenValueInjection!7524 0))(
  ( (TokenValueInjection!7525 (toValue!5463 Int) (toChars!5322 Int)) )
))
(declare-datatypes ((Rule!7468 0))(
  ( (Rule!7469 (regex!3834 Regex!5259) (tag!4268 String!24968) (isSeparator!3834 Bool) (transformation!3834 TokenValueInjection!7524)) )
))
(declare-datatypes ((Token!7220 0))(
  ( (Token!7221 (value!120860 TokenValue!3970) (rule!6033 Rule!7468) (size!16962 Int) (originalCharacters!4641 List!21599)) )
))
(declare-datatypes ((tuple2!20248 0))(
  ( (tuple2!20249 (_1!11593 Token!7220) (_2!11593 List!21599)) )
))
(declare-datatypes ((Option!4373 0))(
  ( (None!4372) (Some!4372 (v!26423 tuple2!20248)) )
))
(declare-fun lt!730470 () Option!4373)

(declare-datatypes ((List!21600 0))(
  ( (Nil!21518) (Cons!21518 (h!26919 Token!7220) (t!178057 List!21600)) )
))
(declare-fun tokens!598 () List!21600)

(assert (=> b!1910191 (= res!852931 (or (and (not lt!730471) (= (_1!11593 (v!26423 lt!730470)) (h!26919 tokens!598))) lt!730471 (= (_1!11593 (v!26423 lt!730470)) (h!26919 tokens!598))))))

(get-info :version)

(assert (=> b!1910191 (= lt!730471 (not ((_ is Some!4372) lt!730470)))))

(declare-fun lt!730484 () List!21599)

(declare-fun lt!730461 () List!21599)

(declare-datatypes ((LexerInterface!3447 0))(
  ( (LexerInterfaceExt!3444 (__x!13439 Int)) (Lexer!3445) )
))
(declare-fun thiss!23328 () LexerInterface!3447)

(declare-datatypes ((List!21601 0))(
  ( (Nil!21519) (Cons!21519 (h!26920 Rule!7468) (t!178058 List!21601)) )
))
(declare-fun rules!3198 () List!21601)

(declare-fun maxPrefix!1893 (LexerInterface!3447 List!21601 List!21599) Option!4373)

(declare-fun ++!5783 (List!21599 List!21599) List!21599)

(assert (=> b!1910191 (= lt!730470 (maxPrefix!1893 thiss!23328 rules!3198 (++!5783 lt!730461 lt!730484)))))

(declare-fun separatorToken!354 () Token!7220)

(declare-fun printWithSeparatorTokenWhenNeededList!490 (LexerInterface!3447 List!21601 List!21600 Token!7220) List!21599)

(assert (=> b!1910191 (= lt!730484 (printWithSeparatorTokenWhenNeededList!490 thiss!23328 rules!3198 (t!178057 tokens!598) separatorToken!354))))

(declare-fun e!1220139 () Bool)

(assert (=> b!1910191 e!1220139))

(declare-fun res!852925 () Bool)

(assert (=> b!1910191 (=> (not res!852925) (not e!1220139))))

(declare-datatypes ((Option!4374 0))(
  ( (None!4373) (Some!4373 (v!26424 Rule!7468)) )
))
(declare-fun lt!730476 () Option!4374)

(declare-fun isDefined!3671 (Option!4374) Bool)

(assert (=> b!1910191 (= res!852925 (isDefined!3671 lt!730476))))

(declare-fun getRuleFromTag!677 (LexerInterface!3447 List!21601 String!24968) Option!4374)

(assert (=> b!1910191 (= lt!730476 (getRuleFromTag!677 thiss!23328 rules!3198 (tag!4268 (rule!6033 (h!26919 tokens!598)))))))

(declare-datatypes ((Unit!35872 0))(
  ( (Unit!35873) )
))
(declare-fun lt!730481 () Unit!35872)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!677 (LexerInterface!3447 List!21601 List!21599 Token!7220) Unit!35872)

(assert (=> b!1910191 (= lt!730481 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!677 thiss!23328 rules!3198 lt!730461 (h!26919 tokens!598)))))

(declare-fun e!1220142 () Bool)

(assert (=> b!1910191 e!1220142))

(declare-fun res!852924 () Bool)

(assert (=> b!1910191 (=> (not res!852924) (not e!1220142))))

(declare-fun lt!730464 () Option!4373)

(declare-fun isDefined!3672 (Option!4373) Bool)

(assert (=> b!1910191 (= res!852924 (isDefined!3672 lt!730464))))

(assert (=> b!1910191 (= lt!730464 (maxPrefix!1893 thiss!23328 rules!3198 lt!730461))))

(declare-fun lt!730463 () BalanceConc!14136)

(declare-fun list!8754 (BalanceConc!14136) List!21599)

(assert (=> b!1910191 (= lt!730461 (list!8754 lt!730463))))

(declare-fun e!1220141 () Bool)

(assert (=> b!1910191 e!1220141))

(declare-fun res!852927 () Bool)

(assert (=> b!1910191 (=> (not res!852927) (not e!1220141))))

(declare-fun lt!730473 () Option!4374)

(assert (=> b!1910191 (= res!852927 (isDefined!3671 lt!730473))))

(assert (=> b!1910191 (= lt!730473 (getRuleFromTag!677 thiss!23328 rules!3198 (tag!4268 (rule!6033 separatorToken!354))))))

(declare-fun lt!730467 () Unit!35872)

(declare-fun lt!730462 () List!21599)

(assert (=> b!1910191 (= lt!730467 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!677 thiss!23328 rules!3198 lt!730462 separatorToken!354))))

(declare-fun charsOf!2390 (Token!7220) BalanceConc!14136)

(assert (=> b!1910191 (= lt!730462 (list!8754 (charsOf!2390 separatorToken!354)))))

(declare-fun lt!730465 () Unit!35872)

(declare-fun lemmaEqSameImage!542 (TokenValueInjection!7524 BalanceConc!14136 BalanceConc!14136) Unit!35872)

(declare-fun seqFromList!2706 (List!21599) BalanceConc!14136)

(assert (=> b!1910191 (= lt!730465 (lemmaEqSameImage!542 (transformation!3834 (rule!6033 (h!26919 tokens!598))) lt!730463 (seqFromList!2706 (originalCharacters!4641 (h!26919 tokens!598)))))))

(declare-fun lt!730479 () Unit!35872)

(declare-fun lemmaSemiInverse!813 (TokenValueInjection!7524 BalanceConc!14136) Unit!35872)

(assert (=> b!1910191 (= lt!730479 (lemmaSemiInverse!813 (transformation!3834 (rule!6033 (h!26919 tokens!598))) lt!730463))))

(assert (=> b!1910191 (= lt!730463 (charsOf!2390 (h!26919 tokens!598)))))

(declare-fun b!1910192 () Bool)

(declare-fun res!852934 () Bool)

(assert (=> b!1910192 (=> (not res!852934) (not e!1220125))))

(declare-fun rulesProduceEachTokenIndividuallyList!1178 (LexerInterface!3447 List!21601 List!21600) Bool)

(assert (=> b!1910192 (= res!852934 (rulesProduceEachTokenIndividuallyList!1178 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1910193 () Bool)

(declare-fun e!1220138 () Bool)

(declare-fun tp!545217 () Bool)

(declare-fun e!1220123 () Bool)

(declare-fun inv!28625 (Token!7220) Bool)

(assert (=> b!1910193 (= e!1220123 (and (inv!28625 (h!26919 tokens!598)) e!1220138 tp!545217))))

(declare-fun e!1220132 () Bool)

(assert (=> b!1910194 (= e!1220132 (and tp!545216 tp!545226))))

(declare-fun b!1910195 () Bool)

(declare-fun e!1220127 () Unit!35872)

(declare-fun Unit!35874 () Unit!35872)

(assert (=> b!1910195 (= e!1220127 Unit!35874)))

(declare-fun e!1220131 () Bool)

(assert (=> b!1910196 (= e!1220131 (and tp!545218 tp!545225))))

(declare-fun b!1910197 () Bool)

(declare-fun res!852928 () Bool)

(assert (=> b!1910197 (=> (not res!852928) (not e!1220125))))

(assert (=> b!1910197 (= res!852928 (isSeparator!3834 (rule!6033 separatorToken!354)))))

(declare-fun tp!545221 () Bool)

(declare-fun e!1220137 () Bool)

(declare-fun b!1910198 () Bool)

(declare-fun inv!28622 (String!24968) Bool)

(declare-fun inv!28626 (TokenValueInjection!7524) Bool)

(assert (=> b!1910198 (= e!1220137 (and tp!545221 (inv!28622 (tag!4268 (rule!6033 separatorToken!354))) (inv!28626 (transformation!3834 (rule!6033 separatorToken!354))) e!1220132))))

(declare-fun res!852933 () Bool)

(assert (=> start!191640 (=> (not res!852933) (not e!1220125))))

(assert (=> start!191640 (= res!852933 ((_ is Lexer!3445) thiss!23328))))

(assert (=> start!191640 e!1220125))

(assert (=> start!191640 true))

(declare-fun e!1220134 () Bool)

(assert (=> start!191640 e!1220134))

(assert (=> start!191640 e!1220123))

(declare-fun e!1220133 () Bool)

(assert (=> start!191640 (and (inv!28625 separatorToken!354) e!1220133)))

(declare-fun b!1910199 () Bool)

(declare-fun res!852932 () Bool)

(assert (=> b!1910199 (=> (not res!852932) (not e!1220125))))

(declare-fun isEmpty!13212 (List!21601) Bool)

(assert (=> b!1910199 (= res!852932 (not (isEmpty!13212 rules!3198)))))

(declare-fun b!1910200 () Bool)

(declare-fun e!1220143 () Bool)

(declare-fun lt!730468 () Rule!7468)

(assert (=> b!1910200 (= e!1220143 (= (rule!6033 (h!26919 tokens!598)) lt!730468))))

(declare-fun b!1910201 () Bool)

(assert (=> b!1910201 (= e!1220128 true)))

(declare-fun lt!730483 () List!21599)

(declare-fun printList!1030 (LexerInterface!3447 List!21600) List!21599)

(assert (=> b!1910201 (= lt!730483 (printList!1030 thiss!23328 (Cons!21518 (h!26919 tokens!598) Nil!21518)))))

(declare-fun lt!730478 () List!21599)

(declare-fun lt!730474 () BalanceConc!14136)

(assert (=> b!1910201 (= lt!730478 (list!8754 lt!730474))))

(declare-datatypes ((IArray!14327 0))(
  ( (IArray!14328 (innerList!7221 List!21600)) )
))
(declare-datatypes ((Conc!7161 0))(
  ( (Node!7161 (left!17200 Conc!7161) (right!17530 Conc!7161) (csize!14552 Int) (cheight!7372 Int)) (Leaf!10541 (xs!10055 IArray!14327) (csize!14553 Int)) (Empty!7161) )
))
(declare-datatypes ((BalanceConc!14138 0))(
  ( (BalanceConc!14139 (c!311254 Conc!7161)) )
))
(declare-fun lt!730477 () BalanceConc!14138)

(declare-fun printTailRec!964 (LexerInterface!3447 BalanceConc!14138 Int BalanceConc!14136) BalanceConc!14136)

(assert (=> b!1910201 (= lt!730474 (printTailRec!964 thiss!23328 lt!730477 0 (BalanceConc!14137 Empty!7160)))))

(declare-fun print!1457 (LexerInterface!3447 BalanceConc!14138) BalanceConc!14136)

(assert (=> b!1910201 (= lt!730474 (print!1457 thiss!23328 lt!730477))))

(declare-fun singletonSeq!1857 (Token!7220) BalanceConc!14138)

(assert (=> b!1910201 (= lt!730477 (singletonSeq!1857 (h!26919 tokens!598)))))

(declare-fun lt!730469 () C!10664)

(declare-fun contains!3879 (List!21599 C!10664) Bool)

(declare-fun usedCharacters!342 (Regex!5259) List!21599)

(assert (=> b!1910201 (not (contains!3879 (usedCharacters!342 (regex!3834 (rule!6033 (h!26919 tokens!598)))) lt!730469))))

(declare-fun lt!730472 () Unit!35872)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!38 (LexerInterface!3447 List!21601 List!21601 Rule!7468 Rule!7468 C!10664) Unit!35872)

(assert (=> b!1910201 (= lt!730472 (lemmaNonSepRuleNotContainsCharContainedInASepRule!38 thiss!23328 rules!3198 rules!3198 (rule!6033 (h!26919 tokens!598)) (rule!6033 separatorToken!354) lt!730469))))

(declare-fun lt!730475 () Unit!35872)

(assert (=> b!1910201 (= lt!730475 e!1220127)))

(declare-fun c!311251 () Bool)

(assert (=> b!1910201 (= c!311251 (not (contains!3879 (usedCharacters!342 (regex!3834 (rule!6033 separatorToken!354))) lt!730469)))))

(declare-fun head!4438 (List!21599) C!10664)

(assert (=> b!1910201 (= lt!730469 (head!4438 lt!730462))))

(assert (=> b!1910201 (= (++!5783 (++!5783 lt!730461 lt!730462) lt!730484) (++!5783 lt!730461 (++!5783 lt!730462 lt!730484)))))

(declare-fun lt!730480 () Unit!35872)

(declare-fun lemmaConcatAssociativity!1149 (List!21599 List!21599 List!21599) Unit!35872)

(assert (=> b!1910201 (= lt!730480 (lemmaConcatAssociativity!1149 lt!730461 lt!730462 lt!730484))))

(declare-fun b!1910202 () Bool)

(declare-fun e!1220130 () Bool)

(assert (=> b!1910202 (= e!1220130 false)))

(declare-fun e!1220144 () Bool)

(declare-fun e!1220121 () Bool)

(declare-fun tp!545214 () Bool)

(declare-fun b!1910203 () Bool)

(assert (=> b!1910203 (= e!1220121 (and tp!545214 (inv!28622 (tag!4268 (rule!6033 (h!26919 tokens!598)))) (inv!28626 (transformation!3834 (rule!6033 (h!26919 tokens!598)))) e!1220144))))

(declare-fun b!1910204 () Bool)

(declare-fun tp!545219 () Bool)

(declare-fun inv!21 (TokenValue!3970) Bool)

(assert (=> b!1910204 (= e!1220138 (and (inv!21 (value!120860 (h!26919 tokens!598))) e!1220121 tp!545219))))

(declare-fun b!1910205 () Bool)

(declare-fun res!852921 () Bool)

(assert (=> b!1910205 (=> (not res!852921) (not e!1220125))))

(assert (=> b!1910205 (= res!852921 ((_ is Cons!21518) tokens!598))))

(declare-fun b!1910206 () Bool)

(declare-fun res!852922 () Bool)

(assert (=> b!1910206 (=> (not res!852922) (not e!1220125))))

(declare-fun rulesProduceIndividualToken!1619 (LexerInterface!3447 List!21601 Token!7220) Bool)

(assert (=> b!1910206 (= res!852922 (rulesProduceIndividualToken!1619 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1910207 () Bool)

(declare-fun res!852930 () Bool)

(assert (=> b!1910207 (=> (not res!852930) (not e!1220125))))

(declare-fun sepAndNonSepRulesDisjointChars!932 (List!21601 List!21601) Bool)

(assert (=> b!1910207 (= res!852930 (sepAndNonSepRulesDisjointChars!932 rules!3198 rules!3198))))

(declare-fun b!1910208 () Bool)

(declare-fun res!852926 () Bool)

(assert (=> b!1910208 (=> (not res!852926) (not e!1220125))))

(declare-fun lambda!74599 () Int)

(declare-fun forall!4524 (List!21600 Int) Bool)

(assert (=> b!1910208 (= res!852926 (forall!4524 tokens!598 lambda!74599))))

(assert (=> b!1910209 (= e!1220144 (and tp!545224 tp!545222))))

(declare-fun b!1910210 () Bool)

(declare-fun e!1220140 () Bool)

(declare-fun tp!545215 () Bool)

(assert (=> b!1910210 (= e!1220134 (and e!1220140 tp!545215))))

(declare-fun b!1910211 () Bool)

(assert (=> b!1910211 (= e!1220139 e!1220143)))

(declare-fun res!852929 () Bool)

(assert (=> b!1910211 (=> (not res!852929) (not e!1220143))))

(declare-fun matchR!2545 (Regex!5259 List!21599) Bool)

(assert (=> b!1910211 (= res!852929 (matchR!2545 (regex!3834 lt!730468) lt!730461))))

(declare-fun get!6697 (Option!4374) Rule!7468)

(assert (=> b!1910211 (= lt!730468 (get!6697 lt!730476))))

(declare-fun b!1910212 () Bool)

(declare-fun e!1220129 () Bool)

(assert (=> b!1910212 (= e!1220141 e!1220129)))

(declare-fun res!852919 () Bool)

(assert (=> b!1910212 (=> (not res!852919) (not e!1220129))))

(declare-fun lt!730466 () Rule!7468)

(assert (=> b!1910212 (= res!852919 (matchR!2545 (regex!3834 lt!730466) lt!730462))))

(assert (=> b!1910212 (= lt!730466 (get!6697 lt!730473))))

(declare-fun b!1910213 () Bool)

(declare-fun get!6698 (Option!4373) tuple2!20248)

(assert (=> b!1910213 (= e!1220142 (= (_1!11593 (get!6698 lt!730464)) (h!26919 tokens!598)))))

(declare-fun tp!545220 () Bool)

(declare-fun b!1910214 () Bool)

(assert (=> b!1910214 (= e!1220140 (and tp!545220 (inv!28622 (tag!4268 (h!26920 rules!3198))) (inv!28626 (transformation!3834 (h!26920 rules!3198))) e!1220131))))

(declare-fun tp!545223 () Bool)

(declare-fun b!1910215 () Bool)

(assert (=> b!1910215 (= e!1220133 (and (inv!21 (value!120860 separatorToken!354)) e!1220137 tp!545223))))

(declare-fun b!1910216 () Bool)

(declare-fun Unit!35875 () Unit!35872)

(assert (=> b!1910216 (= e!1220127 Unit!35875)))

(declare-fun lt!730482 () Unit!35872)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!242 (Regex!5259 List!21599 C!10664) Unit!35872)

(assert (=> b!1910216 (= lt!730482 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!242 (regex!3834 (rule!6033 separatorToken!354)) lt!730462 lt!730469))))

(declare-fun res!852920 () Bool)

(assert (=> b!1910216 (= res!852920 (not (matchR!2545 (regex!3834 (rule!6033 separatorToken!354)) lt!730462)))))

(assert (=> b!1910216 (=> (not res!852920) (not e!1220130))))

(assert (=> b!1910216 e!1220130))

(declare-fun b!1910217 () Bool)

(assert (=> b!1910217 (= e!1220129 (= (rule!6033 separatorToken!354) lt!730466))))

(declare-fun b!1910218 () Bool)

(declare-fun res!852923 () Bool)

(assert (=> b!1910218 (=> (not res!852923) (not e!1220125))))

(declare-fun rulesInvariant!3054 (LexerInterface!3447 List!21601) Bool)

(assert (=> b!1910218 (= res!852923 (rulesInvariant!3054 thiss!23328 rules!3198))))

(assert (= (and start!191640 res!852933) b!1910199))

(assert (= (and b!1910199 res!852932) b!1910218))

(assert (= (and b!1910218 res!852923) b!1910192))

(assert (= (and b!1910192 res!852934) b!1910206))

(assert (= (and b!1910206 res!852922) b!1910197))

(assert (= (and b!1910197 res!852928) b!1910208))

(assert (= (and b!1910208 res!852926) b!1910207))

(assert (= (and b!1910207 res!852930) b!1910205))

(assert (= (and b!1910205 res!852921) b!1910191))

(assert (= (and b!1910191 res!852927) b!1910212))

(assert (= (and b!1910212 res!852919) b!1910217))

(assert (= (and b!1910191 res!852924) b!1910213))

(assert (= (and b!1910191 res!852925) b!1910211))

(assert (= (and b!1910211 res!852929) b!1910200))

(assert (= (and b!1910191 (not res!852931)) b!1910201))

(assert (= (and b!1910201 c!311251) b!1910216))

(assert (= (and b!1910201 (not c!311251)) b!1910195))

(assert (= (and b!1910216 res!852920) b!1910202))

(assert (= b!1910214 b!1910196))

(assert (= b!1910210 b!1910214))

(assert (= (and start!191640 ((_ is Cons!21519) rules!3198)) b!1910210))

(assert (= b!1910203 b!1910209))

(assert (= b!1910204 b!1910203))

(assert (= b!1910193 b!1910204))

(assert (= (and start!191640 ((_ is Cons!21518) tokens!598)) b!1910193))

(assert (= b!1910198 b!1910194))

(assert (= b!1910215 b!1910198))

(assert (= start!191640 b!1910215))

(declare-fun m!2343721 () Bool)

(assert (=> b!1910191 m!2343721))

(declare-fun m!2343723 () Bool)

(assert (=> b!1910191 m!2343723))

(declare-fun m!2343725 () Bool)

(assert (=> b!1910191 m!2343725))

(declare-fun m!2343727 () Bool)

(assert (=> b!1910191 m!2343727))

(declare-fun m!2343729 () Bool)

(assert (=> b!1910191 m!2343729))

(declare-fun m!2343731 () Bool)

(assert (=> b!1910191 m!2343731))

(declare-fun m!2343733 () Bool)

(assert (=> b!1910191 m!2343733))

(declare-fun m!2343735 () Bool)

(assert (=> b!1910191 m!2343735))

(declare-fun m!2343737 () Bool)

(assert (=> b!1910191 m!2343737))

(declare-fun m!2343739 () Bool)

(assert (=> b!1910191 m!2343739))

(declare-fun m!2343741 () Bool)

(assert (=> b!1910191 m!2343741))

(declare-fun m!2343743 () Bool)

(assert (=> b!1910191 m!2343743))

(declare-fun m!2343745 () Bool)

(assert (=> b!1910191 m!2343745))

(declare-fun m!2343747 () Bool)

(assert (=> b!1910191 m!2343747))

(declare-fun m!2343749 () Bool)

(assert (=> b!1910191 m!2343749))

(declare-fun m!2343751 () Bool)

(assert (=> b!1910191 m!2343751))

(assert (=> b!1910191 m!2343743))

(declare-fun m!2343753 () Bool)

(assert (=> b!1910191 m!2343753))

(assert (=> b!1910191 m!2343737))

(assert (=> b!1910191 m!2343751))

(declare-fun m!2343755 () Bool)

(assert (=> b!1910191 m!2343755))

(declare-fun m!2343757 () Bool)

(assert (=> b!1910207 m!2343757))

(declare-fun m!2343759 () Bool)

(assert (=> b!1910212 m!2343759))

(declare-fun m!2343761 () Bool)

(assert (=> b!1910212 m!2343761))

(declare-fun m!2343763 () Bool)

(assert (=> start!191640 m!2343763))

(declare-fun m!2343765 () Bool)

(assert (=> b!1910204 m!2343765))

(declare-fun m!2343767 () Bool)

(assert (=> b!1910218 m!2343767))

(declare-fun m!2343769 () Bool)

(assert (=> b!1910201 m!2343769))

(declare-fun m!2343771 () Bool)

(assert (=> b!1910201 m!2343771))

(declare-fun m!2343773 () Bool)

(assert (=> b!1910201 m!2343773))

(declare-fun m!2343775 () Bool)

(assert (=> b!1910201 m!2343775))

(declare-fun m!2343777 () Bool)

(assert (=> b!1910201 m!2343777))

(assert (=> b!1910201 m!2343777))

(declare-fun m!2343779 () Bool)

(assert (=> b!1910201 m!2343779))

(assert (=> b!1910201 m!2343773))

(declare-fun m!2343781 () Bool)

(assert (=> b!1910201 m!2343781))

(declare-fun m!2343783 () Bool)

(assert (=> b!1910201 m!2343783))

(declare-fun m!2343785 () Bool)

(assert (=> b!1910201 m!2343785))

(declare-fun m!2343787 () Bool)

(assert (=> b!1910201 m!2343787))

(declare-fun m!2343789 () Bool)

(assert (=> b!1910201 m!2343789))

(assert (=> b!1910201 m!2343785))

(declare-fun m!2343791 () Bool)

(assert (=> b!1910201 m!2343791))

(assert (=> b!1910201 m!2343769))

(declare-fun m!2343793 () Bool)

(assert (=> b!1910201 m!2343793))

(declare-fun m!2343795 () Bool)

(assert (=> b!1910201 m!2343795))

(declare-fun m!2343797 () Bool)

(assert (=> b!1910201 m!2343797))

(declare-fun m!2343799 () Bool)

(assert (=> b!1910201 m!2343799))

(declare-fun m!2343801 () Bool)

(assert (=> b!1910192 m!2343801))

(declare-fun m!2343803 () Bool)

(assert (=> b!1910203 m!2343803))

(declare-fun m!2343805 () Bool)

(assert (=> b!1910203 m!2343805))

(declare-fun m!2343807 () Bool)

(assert (=> b!1910198 m!2343807))

(declare-fun m!2343809 () Bool)

(assert (=> b!1910198 m!2343809))

(declare-fun m!2343811 () Bool)

(assert (=> b!1910199 m!2343811))

(declare-fun m!2343813 () Bool)

(assert (=> b!1910216 m!2343813))

(declare-fun m!2343815 () Bool)

(assert (=> b!1910216 m!2343815))

(declare-fun m!2343817 () Bool)

(assert (=> b!1910208 m!2343817))

(declare-fun m!2343819 () Bool)

(assert (=> b!1910206 m!2343819))

(declare-fun m!2343821 () Bool)

(assert (=> b!1910215 m!2343821))

(declare-fun m!2343823 () Bool)

(assert (=> b!1910211 m!2343823))

(declare-fun m!2343825 () Bool)

(assert (=> b!1910211 m!2343825))

(declare-fun m!2343827 () Bool)

(assert (=> b!1910193 m!2343827))

(declare-fun m!2343829 () Bool)

(assert (=> b!1910213 m!2343829))

(declare-fun m!2343831 () Bool)

(assert (=> b!1910214 m!2343831))

(declare-fun m!2343833 () Bool)

(assert (=> b!1910214 m!2343833))

(check-sat (not start!191640) b_and!148777 (not b!1910218) (not b!1910214) (not b!1910210) (not b!1910206) (not b_next!54567) (not b!1910199) b_and!148783 (not b!1910207) (not b_next!54563) b_and!148781 b_and!148785 (not b_next!54565) (not b!1910193) (not b!1910204) (not b!1910213) (not b!1910201) b_and!148779 (not b!1910216) (not b_next!54561) (not b!1910215) (not b!1910208) (not b!1910191) (not b!1910203) (not b!1910212) (not b_next!54571) (not b!1910192) (not b!1910198) b_and!148775 (not b!1910211) (not b_next!54569))
(check-sat b_and!148777 b_and!148779 (not b_next!54561) (not b_next!54567) b_and!148783 (not b_next!54571) b_and!148775 (not b_next!54563) b_and!148781 (not b_next!54569) b_and!148785 (not b_next!54565))
