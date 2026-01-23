; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169758 () Bool)

(assert start!169758)

(declare-fun b!1728236 () Bool)

(declare-fun b_free!47219 () Bool)

(declare-fun b_next!47923 () Bool)

(assert (=> b!1728236 (= b_free!47219 (not b_next!47923))))

(declare-fun tp!492978 () Bool)

(declare-fun b_and!127055 () Bool)

(assert (=> b!1728236 (= tp!492978 b_and!127055)))

(declare-fun b_free!47221 () Bool)

(declare-fun b_next!47925 () Bool)

(assert (=> b!1728236 (= b_free!47221 (not b_next!47925))))

(declare-fun tp!492984 () Bool)

(declare-fun b_and!127057 () Bool)

(assert (=> b!1728236 (= tp!492984 b_and!127057)))

(declare-fun b!1728230 () Bool)

(declare-fun b_free!47223 () Bool)

(declare-fun b_next!47927 () Bool)

(assert (=> b!1728230 (= b_free!47223 (not b_next!47927))))

(declare-fun tp!492977 () Bool)

(declare-fun b_and!127059 () Bool)

(assert (=> b!1728230 (= tp!492977 b_and!127059)))

(declare-fun b_free!47225 () Bool)

(declare-fun b_next!47929 () Bool)

(assert (=> b!1728230 (= b_free!47225 (not b_next!47929))))

(declare-fun tp!492975 () Bool)

(declare-fun b_and!127061 () Bool)

(assert (=> b!1728230 (= tp!492975 b_and!127061)))

(declare-fun b!1728238 () Bool)

(declare-fun b_free!47227 () Bool)

(declare-fun b_next!47931 () Bool)

(assert (=> b!1728238 (= b_free!47227 (not b_next!47931))))

(declare-fun tp!492979 () Bool)

(declare-fun b_and!127063 () Bool)

(assert (=> b!1728238 (= tp!492979 b_and!127063)))

(declare-fun b_free!47229 () Bool)

(declare-fun b_next!47933 () Bool)

(assert (=> b!1728238 (= b_free!47229 (not b_next!47933))))

(declare-fun tp!492980 () Bool)

(declare-fun b_and!127065 () Bool)

(assert (=> b!1728238 (= tp!492980 b_and!127065)))

(declare-fun b!1728250 () Bool)

(declare-fun e!1105583 () Bool)

(assert (=> b!1728250 (= e!1105583 true)))

(declare-fun b!1728249 () Bool)

(declare-fun e!1105582 () Bool)

(assert (=> b!1728249 (= e!1105582 e!1105583)))

(declare-fun b!1728248 () Bool)

(declare-fun e!1105581 () Bool)

(assert (=> b!1728248 (= e!1105581 e!1105582)))

(declare-fun b!1728211 () Bool)

(assert (=> b!1728211 e!1105581))

(assert (= b!1728249 b!1728250))

(assert (= b!1728248 b!1728249))

(assert (= b!1728211 b!1728248))

(declare-fun order!11631 () Int)

(declare-fun lambda!69302 () Int)

(declare-fun order!11633 () Int)

(declare-datatypes ((List!19008 0))(
  ( (Nil!18938) (Cons!18938 (h!24339 (_ BitVec 16)) (t!160367 List!19008)) )
))
(declare-datatypes ((TokenValue!3449 0))(
  ( (FloatLiteralValue!6898 (text!24588 List!19008)) (TokenValueExt!3448 (__x!12200 Int)) (Broken!17245 (value!105378 List!19008)) (Object!3518) (End!3449) (Def!3449) (Underscore!3449) (Match!3449) (Else!3449) (Error!3449) (Case!3449) (If!3449) (Extends!3449) (Abstract!3449) (Class!3449) (Val!3449) (DelimiterValue!6898 (del!3509 List!19008)) (KeywordValue!3455 (value!105379 List!19008)) (CommentValue!6898 (value!105380 List!19008)) (WhitespaceValue!6898 (value!105381 List!19008)) (IndentationValue!3449 (value!105382 List!19008)) (String!21576) (Int32!3449) (Broken!17246 (value!105383 List!19008)) (Boolean!3450) (Unit!32790) (OperatorValue!3452 (op!3509 List!19008)) (IdentifierValue!6898 (value!105384 List!19008)) (IdentifierValue!6899 (value!105385 List!19008)) (WhitespaceValue!6899 (value!105386 List!19008)) (True!6898) (False!6898) (Broken!17247 (value!105387 List!19008)) (Broken!17248 (value!105388 List!19008)) (True!6899) (RightBrace!3449) (RightBracket!3449) (Colon!3449) (Null!3449) (Comma!3449) (LeftBracket!3449) (False!6899) (LeftBrace!3449) (ImaginaryLiteralValue!3449 (text!24589 List!19008)) (StringLiteralValue!10347 (value!105389 List!19008)) (EOFValue!3449 (value!105390 List!19008)) (IdentValue!3449 (value!105391 List!19008)) (DelimiterValue!6899 (value!105392 List!19008)) (DedentValue!3449 (value!105393 List!19008)) (NewLineValue!3449 (value!105394 List!19008)) (IntegerValue!10347 (value!105395 (_ BitVec 32)) (text!24590 List!19008)) (IntegerValue!10348 (value!105396 Int) (text!24591 List!19008)) (Times!3449) (Or!3449) (Equal!3449) (Minus!3449) (Broken!17249 (value!105397 List!19008)) (And!3449) (Div!3449) (LessEqual!3449) (Mod!3449) (Concat!8136) (Not!3449) (Plus!3449) (SpaceValue!3449 (value!105398 List!19008)) (IntegerValue!10349 (value!105399 Int) (text!24592 List!19008)) (StringLiteralValue!10348 (text!24593 List!19008)) (FloatLiteralValue!6899 (text!24594 List!19008)) (BytesLiteralValue!3449 (value!105400 List!19008)) (CommentValue!6899 (value!105401 List!19008)) (StringLiteralValue!10349 (value!105402 List!19008)) (ErrorTokenValue!3449 (msg!3510 List!19008)) )
))
(declare-datatypes ((C!9548 0))(
  ( (C!9549 (val!5370 Int)) )
))
(declare-datatypes ((List!19009 0))(
  ( (Nil!18939) (Cons!18939 (h!24340 C!9548) (t!160368 List!19009)) )
))
(declare-datatypes ((Regex!4687 0))(
  ( (ElementMatch!4687 (c!282484 C!9548)) (Concat!8137 (regOne!9886 Regex!4687) (regTwo!9886 Regex!4687)) (EmptyExpr!4687) (Star!4687 (reg!5016 Regex!4687)) (EmptyLang!4687) (Union!4687 (regOne!9887 Regex!4687) (regTwo!9887 Regex!4687)) )
))
(declare-datatypes ((String!21577 0))(
  ( (String!21578 (value!105403 String)) )
))
(declare-datatypes ((IArray!12603 0))(
  ( (IArray!12604 (innerList!6359 List!19009)) )
))
(declare-datatypes ((Conc!6299 0))(
  ( (Node!6299 (left!15120 Conc!6299) (right!15450 Conc!6299) (csize!12828 Int) (cheight!6510 Int)) (Leaf!9199 (xs!9175 IArray!12603) (csize!12829 Int)) (Empty!6299) )
))
(declare-datatypes ((BalanceConc!12542 0))(
  ( (BalanceConc!12543 (c!282485 Conc!6299)) )
))
(declare-datatypes ((TokenValueInjection!6558 0))(
  ( (TokenValueInjection!6559 (toValue!4866 Int) (toChars!4725 Int)) )
))
(declare-datatypes ((Rule!6518 0))(
  ( (Rule!6519 (regex!3359 Regex!4687) (tag!3681 String!21577) (isSeparator!3359 Bool) (transformation!3359 TokenValueInjection!6558)) )
))
(declare-datatypes ((Token!6284 0))(
  ( (Token!6285 (value!105404 TokenValue!3449) (rule!5329 Rule!6518) (size!15046 Int) (originalCharacters!4173 List!19009)) )
))
(declare-datatypes ((tuple2!18622 0))(
  ( (tuple2!18623 (_1!10713 Token!6284) (_2!10713 List!19009)) )
))
(declare-fun lt!662340 () tuple2!18622)

(declare-fun dynLambda!8794 (Int Int) Int)

(declare-fun dynLambda!8795 (Int Int) Int)

(assert (=> b!1728250 (< (dynLambda!8794 order!11631 (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) (dynLambda!8795 order!11633 lambda!69302))))

(declare-fun order!11635 () Int)

(declare-fun dynLambda!8796 (Int Int) Int)

(assert (=> b!1728250 (< (dynLambda!8796 order!11635 (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) (dynLambda!8795 order!11633 lambda!69302))))

(declare-fun b!1728210 () Bool)

(declare-fun e!1105573 () Bool)

(declare-fun e!1105570 () Bool)

(assert (=> b!1728210 (= e!1105573 e!1105570)))

(declare-fun res!775916 () Bool)

(assert (=> b!1728210 (=> res!775916 e!1105570)))

(declare-fun lt!662329 () List!19009)

(declare-datatypes ((Option!3742 0))(
  ( (None!3741) (Some!3741 (v!25156 tuple2!18622)) )
))
(declare-fun lt!662322 () Option!3742)

(assert (=> b!1728210 (= res!775916 (or (not (= lt!662329 (_2!10713 lt!662340))) (not (= lt!662322 (Some!3741 (tuple2!18623 (_1!10713 lt!662340) lt!662329))))))))

(assert (=> b!1728210 (= (_2!10713 lt!662340) lt!662329)))

(declare-datatypes ((Unit!32791 0))(
  ( (Unit!32792) )
))
(declare-fun lt!662342 () Unit!32791)

(declare-fun lt!662346 () List!19009)

(declare-fun lt!662348 () List!19009)

(declare-fun lemmaSamePrefixThenSameSuffix!744 (List!19009 List!19009 List!19009 List!19009 List!19009) Unit!32791)

(assert (=> b!1728210 (= lt!662342 (lemmaSamePrefixThenSameSuffix!744 lt!662348 (_2!10713 lt!662340) lt!662348 lt!662329 lt!662346))))

(declare-fun getSuffix!794 (List!19009 List!19009) List!19009)

(assert (=> b!1728210 (= lt!662329 (getSuffix!794 lt!662346 lt!662348))))

(declare-fun lt!662338 () TokenValue!3449)

(declare-fun lt!662330 () Int)

(assert (=> b!1728210 (= lt!662322 (Some!3741 (tuple2!18623 (Token!6285 lt!662338 (rule!5329 (_1!10713 lt!662340)) lt!662330 lt!662348) (_2!10713 lt!662340))))))

(declare-datatypes ((LexerInterface!2988 0))(
  ( (LexerInterfaceExt!2985 (__x!12201 Int)) (Lexer!2986) )
))
(declare-fun thiss!24550 () LexerInterface!2988)

(declare-fun maxPrefixOneRule!918 (LexerInterface!2988 Rule!6518 List!19009) Option!3742)

(assert (=> b!1728210 (= lt!662322 (maxPrefixOneRule!918 thiss!24550 (rule!5329 (_1!10713 lt!662340)) lt!662346))))

(declare-fun size!15047 (List!19009) Int)

(assert (=> b!1728210 (= lt!662330 (size!15047 lt!662348))))

(declare-fun apply!5164 (TokenValueInjection!6558 BalanceConc!12542) TokenValue!3449)

(declare-fun seqFromList!2333 (List!19009) BalanceConc!12542)

(assert (=> b!1728210 (= lt!662338 (apply!5164 (transformation!3359 (rule!5329 (_1!10713 lt!662340))) (seqFromList!2333 lt!662348)))))

(declare-fun lt!662318 () Unit!32791)

(declare-datatypes ((List!19010 0))(
  ( (Nil!18940) (Cons!18940 (h!24341 Rule!6518) (t!160369 List!19010)) )
))
(declare-fun rules!3447 () List!19010)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!317 (LexerInterface!2988 List!19010 List!19009 List!19009 List!19009 Rule!6518) Unit!32791)

(assert (=> b!1728210 (= lt!662318 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!317 thiss!24550 rules!3447 lt!662348 lt!662346 (_2!10713 lt!662340) (rule!5329 (_1!10713 lt!662340))))))

(declare-fun e!1105574 () Bool)

(declare-fun e!1105556 () Bool)

(assert (=> b!1728211 (= e!1105574 e!1105556)))

(declare-fun res!775924 () Bool)

(assert (=> b!1728211 (=> res!775924 e!1105556)))

(declare-fun Forall!734 (Int) Bool)

(assert (=> b!1728211 (= res!775924 (not (Forall!734 lambda!69302)))))

(declare-fun lt!662324 () Unit!32791)

(declare-fun lemmaInv!566 (TokenValueInjection!6558) Unit!32791)

(assert (=> b!1728211 (= lt!662324 (lemmaInv!566 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))))))

(declare-fun b!1728212 () Bool)

(declare-fun res!775909 () Bool)

(assert (=> b!1728212 (=> res!775909 e!1105574)))

(declare-fun matchR!2161 (Regex!4687 List!19009) Bool)

(assert (=> b!1728212 (= res!775909 (not (matchR!2161 (regex!3359 (rule!5329 (_1!10713 lt!662340))) lt!662348)))))

(declare-fun b!1728213 () Bool)

(declare-fun res!775920 () Bool)

(declare-fun e!1105551 () Bool)

(assert (=> b!1728213 (=> res!775920 e!1105551)))

(declare-fun lt!662327 () BalanceConc!12542)

(declare-fun dynLambda!8797 (Int TokenValue!3449) BalanceConc!12542)

(assert (=> b!1728213 (= res!775920 (not (= lt!662327 (dynLambda!8797 (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) (value!105404 (_1!10713 lt!662340))))))))

(declare-fun b!1728214 () Bool)

(declare-fun e!1105553 () Bool)

(declare-fun e!1105561 () Bool)

(assert (=> b!1728214 (= e!1105553 e!1105561)))

(declare-fun res!775907 () Bool)

(assert (=> b!1728214 (=> (not res!775907) (not e!1105561))))

(declare-fun lt!662333 () tuple2!18622)

(declare-fun token!523 () Token!6284)

(assert (=> b!1728214 (= res!775907 (= (_1!10713 lt!662333) token!523))))

(declare-fun lt!662323 () Option!3742)

(declare-fun get!5639 (Option!3742) tuple2!18622)

(assert (=> b!1728214 (= lt!662333 (get!5639 lt!662323))))

(declare-fun b!1728215 () Bool)

(declare-fun e!1105555 () Bool)

(assert (=> b!1728215 (= e!1105555 true)))

(declare-fun lt!662345 () Int)

(declare-fun lt!662336 () List!19009)

(assert (=> b!1728215 (= lt!662345 (size!15047 lt!662336))))

(declare-fun lt!662339 () Int)

(assert (=> b!1728215 (= lt!662339 (size!15047 lt!662346))))

(declare-fun suffix!1421 () List!19009)

(declare-fun lt!662326 () List!19009)

(assert (=> b!1728215 (= suffix!1421 lt!662326)))

(declare-fun lt!662328 () Unit!32791)

(assert (=> b!1728215 (= lt!662328 (lemmaSamePrefixThenSameSuffix!744 lt!662336 suffix!1421 lt!662336 lt!662326 lt!662346))))

(assert (=> b!1728215 (= lt!662326 (getSuffix!794 lt!662346 lt!662336))))

(declare-fun lt!662334 () Regex!4687)

(assert (=> b!1728215 (matchR!2161 lt!662334 lt!662348)))

(declare-fun lt!662335 () Unit!32791)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!108 (LexerInterface!2988 List!19010 List!19009 Token!6284 Rule!6518 List!19009) Unit!32791)

(assert (=> b!1728215 (= lt!662335 (lemmaMaxPrefixThenMatchesRulesRegex!108 thiss!24550 rules!3447 lt!662346 (_1!10713 lt!662340) (rule!5329 (_1!10713 lt!662340)) (_2!10713 lt!662340)))))

(declare-fun b!1728216 () Bool)

(declare-fun e!1105566 () Bool)

(declare-fun lt!662332 () Rule!6518)

(assert (=> b!1728216 (= e!1105566 (= (rule!5329 (_1!10713 lt!662340)) lt!662332))))

(declare-fun b!1728217 () Bool)

(declare-fun e!1105568 () Bool)

(assert (=> b!1728217 (= e!1105561 (not e!1105568))))

(declare-fun res!775911 () Bool)

(assert (=> b!1728217 (=> res!775911 e!1105568)))

(declare-fun rule!422 () Rule!6518)

(assert (=> b!1728217 (= res!775911 (not (matchR!2161 (regex!3359 rule!422) lt!662336)))))

(declare-fun ruleValid!858 (LexerInterface!2988 Rule!6518) Bool)

(assert (=> b!1728217 (ruleValid!858 thiss!24550 rule!422)))

(declare-fun lt!662350 () Unit!32791)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!382 (LexerInterface!2988 Rule!6518 List!19010) Unit!32791)

(assert (=> b!1728217 (= lt!662350 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!382 thiss!24550 rule!422 rules!3447))))

(declare-fun res!775919 () Bool)

(declare-fun e!1105557 () Bool)

(assert (=> start!169758 (=> (not res!775919) (not e!1105557))))

(get-info :version)

(assert (=> start!169758 (= res!775919 ((_ is Lexer!2986) thiss!24550))))

(assert (=> start!169758 e!1105557))

(declare-fun e!1105559 () Bool)

(assert (=> start!169758 e!1105559))

(declare-fun e!1105569 () Bool)

(assert (=> start!169758 e!1105569))

(assert (=> start!169758 true))

(declare-fun e!1105560 () Bool)

(declare-fun inv!24484 (Token!6284) Bool)

(assert (=> start!169758 (and (inv!24484 token!523) e!1105560)))

(declare-fun e!1105550 () Bool)

(assert (=> start!169758 e!1105550))

(declare-fun tp!492983 () Bool)

(declare-fun b!1728218 () Bool)

(declare-fun e!1105565 () Bool)

(declare-fun inv!21 (TokenValue!3449) Bool)

(assert (=> b!1728218 (= e!1105560 (and (inv!21 (value!105404 token!523)) e!1105565 tp!492983))))

(declare-fun b!1728219 () Bool)

(declare-fun e!1105549 () Bool)

(assert (=> b!1728219 (= e!1105549 e!1105574)))

(declare-fun res!775915 () Bool)

(assert (=> b!1728219 (=> res!775915 e!1105574)))

(declare-fun isPrefix!1600 (List!19009 List!19009) Bool)

(assert (=> b!1728219 (= res!775915 (not (isPrefix!1600 lt!662348 lt!662346)))))

(declare-fun ++!5184 (List!19009 List!19009) List!19009)

(assert (=> b!1728219 (isPrefix!1600 lt!662348 (++!5184 lt!662348 (_2!10713 lt!662340)))))

(declare-fun lt!662316 () Unit!32791)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1110 (List!19009 List!19009) Unit!32791)

(assert (=> b!1728219 (= lt!662316 (lemmaConcatTwoListThenFirstIsPrefix!1110 lt!662348 (_2!10713 lt!662340)))))

(declare-fun list!7656 (BalanceConc!12542) List!19009)

(assert (=> b!1728219 (= lt!662348 (list!7656 lt!662327))))

(declare-fun charsOf!2008 (Token!6284) BalanceConc!12542)

(assert (=> b!1728219 (= lt!662327 (charsOf!2008 (_1!10713 lt!662340)))))

(declare-fun e!1105567 () Bool)

(assert (=> b!1728219 e!1105567))

(declare-fun res!775923 () Bool)

(assert (=> b!1728219 (=> (not res!775923) (not e!1105567))))

(declare-datatypes ((Option!3743 0))(
  ( (None!3742) (Some!3742 (v!25157 Rule!6518)) )
))
(declare-fun lt!662317 () Option!3743)

(declare-fun isDefined!3085 (Option!3743) Bool)

(assert (=> b!1728219 (= res!775923 (isDefined!3085 lt!662317))))

(declare-fun getRuleFromTag!409 (LexerInterface!2988 List!19010 String!21577) Option!3743)

(assert (=> b!1728219 (= lt!662317 (getRuleFromTag!409 thiss!24550 rules!3447 (tag!3681 (rule!5329 (_1!10713 lt!662340)))))))

(declare-fun lt!662325 () Unit!32791)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!409 (LexerInterface!2988 List!19010 List!19009 Token!6284) Unit!32791)

(assert (=> b!1728219 (= lt!662325 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!409 thiss!24550 rules!3447 lt!662346 (_1!10713 lt!662340)))))

(declare-fun lt!662331 () Option!3742)

(assert (=> b!1728219 (= lt!662340 (get!5639 lt!662331))))

(declare-fun lt!662337 () Unit!32791)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!512 (LexerInterface!2988 List!19010 List!19009 List!19009) Unit!32791)

(assert (=> b!1728219 (= lt!662337 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!512 thiss!24550 rules!3447 lt!662336 suffix!1421))))

(declare-fun maxPrefix!1542 (LexerInterface!2988 List!19010 List!19009) Option!3742)

(assert (=> b!1728219 (= lt!662331 (maxPrefix!1542 thiss!24550 rules!3447 lt!662346))))

(assert (=> b!1728219 (isPrefix!1600 lt!662336 lt!662346)))

(declare-fun lt!662343 () Unit!32791)

(assert (=> b!1728219 (= lt!662343 (lemmaConcatTwoListThenFirstIsPrefix!1110 lt!662336 suffix!1421))))

(assert (=> b!1728219 (= lt!662346 (++!5184 lt!662336 suffix!1421))))

(declare-fun b!1728220 () Bool)

(declare-fun res!775917 () Bool)

(assert (=> b!1728220 (=> res!775917 e!1105568)))

(declare-fun isEmpty!11913 (List!19009) Bool)

(assert (=> b!1728220 (= res!775917 (isEmpty!11913 suffix!1421))))

(declare-fun b!1728221 () Bool)

(declare-fun res!775906 () Bool)

(assert (=> b!1728221 (=> (not res!775906) (not e!1105557))))

(declare-fun rulesInvariant!2657 (LexerInterface!2988 List!19010) Bool)

(assert (=> b!1728221 (= res!775906 (rulesInvariant!2657 thiss!24550 rules!3447))))

(declare-fun b!1728222 () Bool)

(assert (=> b!1728222 (= e!1105556 e!1105551)))

(declare-fun res!775913 () Bool)

(assert (=> b!1728222 (=> res!775913 e!1105551)))

(declare-fun dynLambda!8798 (Int BalanceConc!12542) TokenValue!3449)

(assert (=> b!1728222 (= res!775913 (not (= (list!7656 (dynLambda!8797 (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) (dynLambda!8798 (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) lt!662327))) lt!662348)))))

(declare-fun lt!662344 () Unit!32791)

(declare-fun lemmaSemiInverse!505 (TokenValueInjection!6558 BalanceConc!12542) Unit!32791)

(assert (=> b!1728222 (= lt!662344 (lemmaSemiInverse!505 (transformation!3359 (rule!5329 (_1!10713 lt!662340))) lt!662327))))

(declare-fun b!1728223 () Bool)

(assert (=> b!1728223 (= e!1105570 e!1105555)))

(declare-fun res!775926 () Bool)

(assert (=> b!1728223 (=> res!775926 e!1105555)))

(declare-fun lt!662341 () Int)

(declare-fun lt!662319 () BalanceConc!12542)

(declare-fun size!15048 (BalanceConc!12542) Int)

(assert (=> b!1728223 (= res!775926 (<= lt!662341 (size!15048 lt!662319)))))

(assert (=> b!1728223 (matchR!2161 lt!662334 lt!662336)))

(declare-fun lt!662347 () Unit!32791)

(assert (=> b!1728223 (= lt!662347 (lemmaMaxPrefixThenMatchesRulesRegex!108 thiss!24550 rules!3447 lt!662336 token!523 rule!422 Nil!18939))))

(declare-fun b!1728224 () Bool)

(declare-fun tp_is_empty!7617 () Bool)

(declare-fun tp!492976 () Bool)

(assert (=> b!1728224 (= e!1105559 (and tp_is_empty!7617 tp!492976))))

(declare-fun tp!492982 () Bool)

(declare-fun e!1105554 () Bool)

(declare-fun b!1728225 () Bool)

(declare-fun inv!24479 (String!21577) Bool)

(declare-fun inv!24485 (TokenValueInjection!6558) Bool)

(assert (=> b!1728225 (= e!1105569 (and tp!492982 (inv!24479 (tag!3681 rule!422)) (inv!24485 (transformation!3359 rule!422)) e!1105554))))

(declare-fun b!1728226 () Bool)

(declare-fun res!775908 () Bool)

(assert (=> b!1728226 (=> (not res!775908) (not e!1105561))))

(assert (=> b!1728226 (= res!775908 (= (rule!5329 token!523) rule!422))))

(declare-fun b!1728227 () Bool)

(declare-fun res!775910 () Bool)

(assert (=> b!1728227 (=> (not res!775910) (not e!1105557))))

(declare-fun contains!3381 (List!19010 Rule!6518) Bool)

(assert (=> b!1728227 (= res!775910 (contains!3381 rules!3447 rule!422))))

(declare-fun b!1728228 () Bool)

(declare-fun res!775914 () Bool)

(assert (=> b!1728228 (=> (not res!775914) (not e!1105561))))

(assert (=> b!1728228 (= res!775914 (isEmpty!11913 (_2!10713 lt!662333)))))

(declare-fun b!1728229 () Bool)

(assert (=> b!1728229 (= e!1105551 e!1105573)))

(declare-fun res!775922 () Bool)

(assert (=> b!1728229 (=> res!775922 e!1105573)))

(declare-fun lt!662349 () TokenValue!3449)

(assert (=> b!1728229 (= res!775922 (not (= lt!662331 (Some!3741 (tuple2!18623 (Token!6285 lt!662349 (rule!5329 (_1!10713 lt!662340)) lt!662341 lt!662348) (_2!10713 lt!662340))))))))

(assert (=> b!1728229 (= lt!662341 (size!15048 lt!662327))))

(assert (=> b!1728229 (= lt!662349 (apply!5164 (transformation!3359 (rule!5329 (_1!10713 lt!662340))) lt!662327))))

(declare-fun lt!662320 () Unit!32791)

(declare-fun lemmaCharactersSize!431 (Token!6284) Unit!32791)

(assert (=> b!1728229 (= lt!662320 (lemmaCharactersSize!431 (_1!10713 lt!662340)))))

(declare-fun lt!662321 () Unit!32791)

(declare-fun lemmaEqSameImage!284 (TokenValueInjection!6558 BalanceConc!12542 BalanceConc!12542) Unit!32791)

(assert (=> b!1728229 (= lt!662321 (lemmaEqSameImage!284 (transformation!3359 (rule!5329 (_1!10713 lt!662340))) lt!662327 (seqFromList!2333 (originalCharacters!4173 (_1!10713 lt!662340)))))))

(declare-fun e!1105558 () Bool)

(assert (=> b!1728230 (= e!1105558 (and tp!492977 tp!492975))))

(declare-fun tp!492981 () Bool)

(declare-fun b!1728231 () Bool)

(assert (=> b!1728231 (= e!1105565 (and tp!492981 (inv!24479 (tag!3681 (rule!5329 token!523))) (inv!24485 (transformation!3359 (rule!5329 token!523))) e!1105558))))

(declare-fun b!1728232 () Bool)

(assert (=> b!1728232 (= e!1105568 e!1105549)))

(declare-fun res!775921 () Bool)

(assert (=> b!1728232 (=> res!775921 e!1105549)))

(declare-fun prefixMatch!572 (Regex!4687 List!19009) Bool)

(declare-fun head!3924 (List!19009) C!9548)

(assert (=> b!1728232 (= res!775921 (prefixMatch!572 lt!662334 (++!5184 lt!662336 (Cons!18939 (head!3924 suffix!1421) Nil!18939))))))

(declare-fun rulesRegex!717 (LexerInterface!2988 List!19010) Regex!4687)

(assert (=> b!1728232 (= lt!662334 (rulesRegex!717 thiss!24550 rules!3447))))

(declare-fun tp!492974 () Bool)

(declare-fun b!1728233 () Bool)

(declare-fun e!1105571 () Bool)

(declare-fun e!1105552 () Bool)

(assert (=> b!1728233 (= e!1105571 (and tp!492974 (inv!24479 (tag!3681 (h!24341 rules!3447))) (inv!24485 (transformation!3359 (h!24341 rules!3447))) e!1105552))))

(declare-fun b!1728234 () Bool)

(assert (=> b!1728234 (= e!1105557 e!1105553)))

(declare-fun res!775918 () Bool)

(assert (=> b!1728234 (=> (not res!775918) (not e!1105553))))

(declare-fun isDefined!3086 (Option!3742) Bool)

(assert (=> b!1728234 (= res!775918 (isDefined!3086 lt!662323))))

(assert (=> b!1728234 (= lt!662323 (maxPrefix!1542 thiss!24550 rules!3447 lt!662336))))

(assert (=> b!1728234 (= lt!662336 (list!7656 lt!662319))))

(assert (=> b!1728234 (= lt!662319 (charsOf!2008 token!523))))

(declare-fun b!1728235 () Bool)

(declare-fun res!775912 () Bool)

(assert (=> b!1728235 (=> (not res!775912) (not e!1105557))))

(declare-fun isEmpty!11914 (List!19010) Bool)

(assert (=> b!1728235 (= res!775912 (not (isEmpty!11914 rules!3447)))))

(assert (=> b!1728236 (= e!1105552 (and tp!492978 tp!492984))))

(declare-fun b!1728237 () Bool)

(declare-fun tp!492973 () Bool)

(assert (=> b!1728237 (= e!1105550 (and e!1105571 tp!492973))))

(assert (=> b!1728238 (= e!1105554 (and tp!492979 tp!492980))))

(declare-fun b!1728239 () Bool)

(assert (=> b!1728239 (= e!1105567 e!1105566)))

(declare-fun res!775925 () Bool)

(assert (=> b!1728239 (=> (not res!775925) (not e!1105566))))

(assert (=> b!1728239 (= res!775925 (matchR!2161 (regex!3359 lt!662332) (list!7656 (charsOf!2008 (_1!10713 lt!662340)))))))

(declare-fun get!5640 (Option!3743) Rule!6518)

(assert (=> b!1728239 (= lt!662332 (get!5640 lt!662317))))

(assert (= (and start!169758 res!775919) b!1728235))

(assert (= (and b!1728235 res!775912) b!1728221))

(assert (= (and b!1728221 res!775906) b!1728227))

(assert (= (and b!1728227 res!775910) b!1728234))

(assert (= (and b!1728234 res!775918) b!1728214))

(assert (= (and b!1728214 res!775907) b!1728228))

(assert (= (and b!1728228 res!775914) b!1728226))

(assert (= (and b!1728226 res!775908) b!1728217))

(assert (= (and b!1728217 (not res!775911)) b!1728220))

(assert (= (and b!1728220 (not res!775917)) b!1728232))

(assert (= (and b!1728232 (not res!775921)) b!1728219))

(assert (= (and b!1728219 res!775923) b!1728239))

(assert (= (and b!1728239 res!775925) b!1728216))

(assert (= (and b!1728219 (not res!775915)) b!1728212))

(assert (= (and b!1728212 (not res!775909)) b!1728211))

(assert (= (and b!1728211 (not res!775924)) b!1728222))

(assert (= (and b!1728222 (not res!775913)) b!1728213))

(assert (= (and b!1728213 (not res!775920)) b!1728229))

(assert (= (and b!1728229 (not res!775922)) b!1728210))

(assert (= (and b!1728210 (not res!775916)) b!1728223))

(assert (= (and b!1728223 (not res!775926)) b!1728215))

(assert (= (and start!169758 ((_ is Cons!18939) suffix!1421)) b!1728224))

(assert (= b!1728225 b!1728238))

(assert (= start!169758 b!1728225))

(assert (= b!1728231 b!1728230))

(assert (= b!1728218 b!1728231))

(assert (= start!169758 b!1728218))

(assert (= b!1728233 b!1728236))

(assert (= b!1728237 b!1728233))

(assert (= (and start!169758 ((_ is Cons!18940) rules!3447)) b!1728237))

(declare-fun b_lambda!55047 () Bool)

(assert (=> (not b_lambda!55047) (not b!1728213)))

(declare-fun tb!102777 () Bool)

(declare-fun t!160350 () Bool)

(assert (=> (and b!1728236 (= (toChars!4725 (transformation!3359 (h!24341 rules!3447))) (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160350) tb!102777))

(declare-fun b!1728255 () Bool)

(declare-fun e!1105586 () Bool)

(declare-fun tp!492987 () Bool)

(declare-fun inv!24486 (Conc!6299) Bool)

(assert (=> b!1728255 (= e!1105586 (and (inv!24486 (c!282485 (dynLambda!8797 (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) (value!105404 (_1!10713 lt!662340))))) tp!492987))))

(declare-fun result!123564 () Bool)

(declare-fun inv!24487 (BalanceConc!12542) Bool)

(assert (=> tb!102777 (= result!123564 (and (inv!24487 (dynLambda!8797 (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) (value!105404 (_1!10713 lt!662340)))) e!1105586))))

(assert (= tb!102777 b!1728255))

(declare-fun m!2135527 () Bool)

(assert (=> b!1728255 m!2135527))

(declare-fun m!2135529 () Bool)

(assert (=> tb!102777 m!2135529))

(assert (=> b!1728213 t!160350))

(declare-fun b_and!127067 () Bool)

(assert (= b_and!127057 (and (=> t!160350 result!123564) b_and!127067)))

(declare-fun t!160352 () Bool)

(declare-fun tb!102779 () Bool)

(assert (=> (and b!1728230 (= (toChars!4725 (transformation!3359 (rule!5329 token!523))) (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160352) tb!102779))

(declare-fun result!123568 () Bool)

(assert (= result!123568 result!123564))

(assert (=> b!1728213 t!160352))

(declare-fun b_and!127069 () Bool)

(assert (= b_and!127061 (and (=> t!160352 result!123568) b_and!127069)))

(declare-fun t!160354 () Bool)

(declare-fun tb!102781 () Bool)

(assert (=> (and b!1728238 (= (toChars!4725 (transformation!3359 rule!422)) (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160354) tb!102781))

(declare-fun result!123570 () Bool)

(assert (= result!123570 result!123564))

(assert (=> b!1728213 t!160354))

(declare-fun b_and!127071 () Bool)

(assert (= b_and!127065 (and (=> t!160354 result!123570) b_and!127071)))

(declare-fun b_lambda!55049 () Bool)

(assert (=> (not b_lambda!55049) (not b!1728222)))

(declare-fun tb!102783 () Bool)

(declare-fun t!160356 () Bool)

(assert (=> (and b!1728236 (= (toChars!4725 (transformation!3359 (h!24341 rules!3447))) (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160356) tb!102783))

(declare-fun b!1728256 () Bool)

(declare-fun tp!492988 () Bool)

(declare-fun e!1105587 () Bool)

(assert (=> b!1728256 (= e!1105587 (and (inv!24486 (c!282485 (dynLambda!8797 (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) (dynLambda!8798 (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) lt!662327)))) tp!492988))))

(declare-fun result!123572 () Bool)

(assert (=> tb!102783 (= result!123572 (and (inv!24487 (dynLambda!8797 (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) (dynLambda!8798 (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) lt!662327))) e!1105587))))

(assert (= tb!102783 b!1728256))

(declare-fun m!2135531 () Bool)

(assert (=> b!1728256 m!2135531))

(declare-fun m!2135533 () Bool)

(assert (=> tb!102783 m!2135533))

(assert (=> b!1728222 t!160356))

(declare-fun b_and!127073 () Bool)

(assert (= b_and!127067 (and (=> t!160356 result!123572) b_and!127073)))

(declare-fun tb!102785 () Bool)

(declare-fun t!160358 () Bool)

(assert (=> (and b!1728230 (= (toChars!4725 (transformation!3359 (rule!5329 token!523))) (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160358) tb!102785))

(declare-fun result!123574 () Bool)

(assert (= result!123574 result!123572))

(assert (=> b!1728222 t!160358))

(declare-fun b_and!127075 () Bool)

(assert (= b_and!127069 (and (=> t!160358 result!123574) b_and!127075)))

(declare-fun t!160360 () Bool)

(declare-fun tb!102787 () Bool)

(assert (=> (and b!1728238 (= (toChars!4725 (transformation!3359 rule!422)) (toChars!4725 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160360) tb!102787))

(declare-fun result!123576 () Bool)

(assert (= result!123576 result!123572))

(assert (=> b!1728222 t!160360))

(declare-fun b_and!127077 () Bool)

(assert (= b_and!127071 (and (=> t!160360 result!123576) b_and!127077)))

(declare-fun b_lambda!55051 () Bool)

(assert (=> (not b_lambda!55051) (not b!1728222)))

(declare-fun tb!102789 () Bool)

(declare-fun t!160362 () Bool)

(assert (=> (and b!1728236 (= (toValue!4866 (transformation!3359 (h!24341 rules!3447))) (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160362) tb!102789))

(declare-fun result!123578 () Bool)

(assert (=> tb!102789 (= result!123578 (inv!21 (dynLambda!8798 (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340)))) lt!662327)))))

(declare-fun m!2135535 () Bool)

(assert (=> tb!102789 m!2135535))

(assert (=> b!1728222 t!160362))

(declare-fun b_and!127079 () Bool)

(assert (= b_and!127055 (and (=> t!160362 result!123578) b_and!127079)))

(declare-fun tb!102791 () Bool)

(declare-fun t!160364 () Bool)

(assert (=> (and b!1728230 (= (toValue!4866 (transformation!3359 (rule!5329 token!523))) (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160364) tb!102791))

(declare-fun result!123582 () Bool)

(assert (= result!123582 result!123578))

(assert (=> b!1728222 t!160364))

(declare-fun b_and!127081 () Bool)

(assert (= b_and!127059 (and (=> t!160364 result!123582) b_and!127081)))

(declare-fun t!160366 () Bool)

(declare-fun tb!102793 () Bool)

(assert (=> (and b!1728238 (= (toValue!4866 (transformation!3359 rule!422)) (toValue!4866 (transformation!3359 (rule!5329 (_1!10713 lt!662340))))) t!160366) tb!102793))

(declare-fun result!123584 () Bool)

(assert (= result!123584 result!123578))

(assert (=> b!1728222 t!160366))

(declare-fun b_and!127083 () Bool)

(assert (= b_and!127063 (and (=> t!160366 result!123584) b_and!127083)))

(declare-fun m!2135537 () Bool)

(assert (=> b!1728229 m!2135537))

(declare-fun m!2135539 () Bool)

(assert (=> b!1728229 m!2135539))

(assert (=> b!1728229 m!2135537))

(declare-fun m!2135541 () Bool)

(assert (=> b!1728229 m!2135541))

(declare-fun m!2135543 () Bool)

(assert (=> b!1728229 m!2135543))

(declare-fun m!2135545 () Bool)

(assert (=> b!1728229 m!2135545))

(declare-fun m!2135547 () Bool)

(assert (=> b!1728217 m!2135547))

(declare-fun m!2135549 () Bool)

(assert (=> b!1728217 m!2135549))

(declare-fun m!2135551 () Bool)

(assert (=> b!1728217 m!2135551))

(declare-fun m!2135553 () Bool)

(assert (=> b!1728228 m!2135553))

(declare-fun m!2135555 () Bool)

(assert (=> b!1728212 m!2135555))

(declare-fun m!2135557 () Bool)

(assert (=> b!1728219 m!2135557))

(declare-fun m!2135559 () Bool)

(assert (=> b!1728219 m!2135559))

(declare-fun m!2135561 () Bool)

(assert (=> b!1728219 m!2135561))

(declare-fun m!2135563 () Bool)

(assert (=> b!1728219 m!2135563))

(declare-fun m!2135565 () Bool)

(assert (=> b!1728219 m!2135565))

(declare-fun m!2135567 () Bool)

(assert (=> b!1728219 m!2135567))

(declare-fun m!2135569 () Bool)

(assert (=> b!1728219 m!2135569))

(declare-fun m!2135571 () Bool)

(assert (=> b!1728219 m!2135571))

(declare-fun m!2135573 () Bool)

(assert (=> b!1728219 m!2135573))

(declare-fun m!2135575 () Bool)

(assert (=> b!1728219 m!2135575))

(declare-fun m!2135577 () Bool)

(assert (=> b!1728219 m!2135577))

(declare-fun m!2135579 () Bool)

(assert (=> b!1728219 m!2135579))

(declare-fun m!2135581 () Bool)

(assert (=> b!1728219 m!2135581))

(assert (=> b!1728219 m!2135575))

(declare-fun m!2135583 () Bool)

(assert (=> b!1728219 m!2135583))

(declare-fun m!2135585 () Bool)

(assert (=> b!1728219 m!2135585))

(declare-fun m!2135587 () Bool)

(assert (=> b!1728221 m!2135587))

(declare-fun m!2135589 () Bool)

(assert (=> b!1728214 m!2135589))

(assert (=> b!1728239 m!2135585))

(assert (=> b!1728239 m!2135585))

(declare-fun m!2135591 () Bool)

(assert (=> b!1728239 m!2135591))

(assert (=> b!1728239 m!2135591))

(declare-fun m!2135593 () Bool)

(assert (=> b!1728239 m!2135593))

(declare-fun m!2135595 () Bool)

(assert (=> b!1728239 m!2135595))

(declare-fun m!2135597 () Bool)

(assert (=> b!1728215 m!2135597))

(declare-fun m!2135599 () Bool)

(assert (=> b!1728215 m!2135599))

(declare-fun m!2135601 () Bool)

(assert (=> b!1728215 m!2135601))

(declare-fun m!2135603 () Bool)

(assert (=> b!1728215 m!2135603))

(declare-fun m!2135605 () Bool)

(assert (=> b!1728215 m!2135605))

(declare-fun m!2135607 () Bool)

(assert (=> b!1728215 m!2135607))

(declare-fun m!2135609 () Bool)

(assert (=> b!1728218 m!2135609))

(declare-fun m!2135611 () Bool)

(assert (=> b!1728232 m!2135611))

(declare-fun m!2135613 () Bool)

(assert (=> b!1728232 m!2135613))

(assert (=> b!1728232 m!2135613))

(declare-fun m!2135615 () Bool)

(assert (=> b!1728232 m!2135615))

(declare-fun m!2135617 () Bool)

(assert (=> b!1728232 m!2135617))

(declare-fun m!2135619 () Bool)

(assert (=> b!1728213 m!2135619))

(declare-fun m!2135621 () Bool)

(assert (=> b!1728211 m!2135621))

(declare-fun m!2135623 () Bool)

(assert (=> b!1728211 m!2135623))

(declare-fun m!2135625 () Bool)

(assert (=> b!1728233 m!2135625))

(declare-fun m!2135627 () Bool)

(assert (=> b!1728233 m!2135627))

(declare-fun m!2135629 () Bool)

(assert (=> b!1728222 m!2135629))

(assert (=> b!1728222 m!2135629))

(declare-fun m!2135631 () Bool)

(assert (=> b!1728222 m!2135631))

(assert (=> b!1728222 m!2135631))

(declare-fun m!2135633 () Bool)

(assert (=> b!1728222 m!2135633))

(declare-fun m!2135635 () Bool)

(assert (=> b!1728222 m!2135635))

(declare-fun m!2135637 () Bool)

(assert (=> b!1728225 m!2135637))

(declare-fun m!2135639 () Bool)

(assert (=> b!1728225 m!2135639))

(declare-fun m!2135641 () Bool)

(assert (=> b!1728234 m!2135641))

(declare-fun m!2135643 () Bool)

(assert (=> b!1728234 m!2135643))

(declare-fun m!2135645 () Bool)

(assert (=> b!1728234 m!2135645))

(declare-fun m!2135647 () Bool)

(assert (=> b!1728234 m!2135647))

(declare-fun m!2135649 () Bool)

(assert (=> b!1728223 m!2135649))

(declare-fun m!2135651 () Bool)

(assert (=> b!1728223 m!2135651))

(declare-fun m!2135653 () Bool)

(assert (=> b!1728223 m!2135653))

(declare-fun m!2135655 () Bool)

(assert (=> b!1728220 m!2135655))

(declare-fun m!2135657 () Bool)

(assert (=> b!1728227 m!2135657))

(declare-fun m!2135659 () Bool)

(assert (=> b!1728231 m!2135659))

(declare-fun m!2135661 () Bool)

(assert (=> b!1728231 m!2135661))

(declare-fun m!2135663 () Bool)

(assert (=> start!169758 m!2135663))

(declare-fun m!2135665 () Bool)

(assert (=> b!1728210 m!2135665))

(declare-fun m!2135667 () Bool)

(assert (=> b!1728210 m!2135667))

(declare-fun m!2135669 () Bool)

(assert (=> b!1728210 m!2135669))

(declare-fun m!2135671 () Bool)

(assert (=> b!1728210 m!2135671))

(declare-fun m!2135673 () Bool)

(assert (=> b!1728210 m!2135673))

(assert (=> b!1728210 m!2135665))

(declare-fun m!2135675 () Bool)

(assert (=> b!1728210 m!2135675))

(declare-fun m!2135677 () Bool)

(assert (=> b!1728210 m!2135677))

(declare-fun m!2135679 () Bool)

(assert (=> b!1728235 m!2135679))

(check-sat (not b!1728256) (not b!1728220) (not b!1728225) (not b!1728211) (not b!1728255) (not b!1728224) (not b!1728222) (not b!1728232) (not b!1728214) (not b_next!47923) (not b!1728237) b_and!127083 (not tb!102783) (not b!1728233) (not b!1728215) (not b!1728229) (not b_lambda!55051) (not b_lambda!55049) (not b_lambda!55047) (not start!169758) b_and!127077 (not b_next!47925) (not b_next!47927) b_and!127075 (not tb!102789) (not b!1728210) (not b_next!47933) b_and!127079 (not b_next!47931) (not b!1728223) (not b!1728217) (not b!1728227) (not b_next!47929) (not b!1728212) tp_is_empty!7617 (not b!1728231) (not b!1728221) (not b!1728228) (not tb!102777) (not b!1728234) (not b!1728239) b_and!127081 b_and!127073 (not b!1728219) (not b!1728235) (not b!1728218))
(check-sat b_and!127077 (not b_next!47931) (not b_next!47923) (not b_next!47929) b_and!127083 (not b_next!47925) (not b_next!47927) b_and!127075 (not b_next!47933) b_and!127079 b_and!127081 b_and!127073)
