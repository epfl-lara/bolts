; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!341706 () Bool)

(assert start!341706)

(declare-fun b!3653414 () Bool)

(declare-fun b_free!96185 () Bool)

(declare-fun b_next!96889 () Bool)

(assert (=> b!3653414 (= b_free!96185 (not b_next!96889))))

(declare-fun tp!1113551 () Bool)

(declare-fun b_and!270451 () Bool)

(assert (=> b!3653414 (= tp!1113551 b_and!270451)))

(declare-fun b_free!96187 () Bool)

(declare-fun b_next!96891 () Bool)

(assert (=> b!3653414 (= b_free!96187 (not b_next!96891))))

(declare-fun tp!1113558 () Bool)

(declare-fun b_and!270453 () Bool)

(assert (=> b!3653414 (= tp!1113558 b_and!270453)))

(declare-fun b!3653438 () Bool)

(declare-fun b_free!96189 () Bool)

(declare-fun b_next!96893 () Bool)

(assert (=> b!3653438 (= b_free!96189 (not b_next!96893))))

(declare-fun tp!1113559 () Bool)

(declare-fun b_and!270455 () Bool)

(assert (=> b!3653438 (= tp!1113559 b_and!270455)))

(declare-fun b_free!96191 () Bool)

(declare-fun b_next!96895 () Bool)

(assert (=> b!3653438 (= b_free!96191 (not b_next!96895))))

(declare-fun tp!1113552 () Bool)

(declare-fun b_and!270457 () Bool)

(assert (=> b!3653438 (= tp!1113552 b_and!270457)))

(declare-fun b!3653421 () Bool)

(declare-fun b_free!96193 () Bool)

(declare-fun b_next!96897 () Bool)

(assert (=> b!3653421 (= b_free!96193 (not b_next!96897))))

(declare-fun tp!1113564 () Bool)

(declare-fun b_and!270459 () Bool)

(assert (=> b!3653421 (= tp!1113564 b_and!270459)))

(declare-fun b_free!96195 () Bool)

(declare-fun b_next!96899 () Bool)

(assert (=> b!3653421 (= b_free!96195 (not b_next!96899))))

(declare-fun tp!1113563 () Bool)

(declare-fun b_and!270461 () Bool)

(assert (=> b!3653421 (= tp!1113563 b_and!270461)))

(declare-fun b!3653413 () Bool)

(declare-fun b_free!96197 () Bool)

(declare-fun b_next!96901 () Bool)

(assert (=> b!3653413 (= b_free!96197 (not b_next!96901))))

(declare-fun tp!1113556 () Bool)

(declare-fun b_and!270463 () Bool)

(assert (=> b!3653413 (= tp!1113556 b_and!270463)))

(declare-fun b_free!96199 () Bool)

(declare-fun b_next!96903 () Bool)

(assert (=> b!3653413 (= b_free!96199 (not b_next!96903))))

(declare-fun tp!1113560 () Bool)

(declare-fun b_and!270465 () Bool)

(assert (=> b!3653413 (= tp!1113560 b_and!270465)))

(declare-fun b!3653411 () Bool)

(declare-fun e!2262031 () Bool)

(declare-fun tp_is_empty!18149 () Bool)

(declare-fun tp!1113562 () Bool)

(assert (=> b!3653411 (= e!2262031 (and tp_is_empty!18149 tp!1113562))))

(declare-fun b!3653412 () Bool)

(declare-fun res!1482442 () Bool)

(declare-fun e!2262033 () Bool)

(assert (=> b!3653412 (=> (not res!1482442) (not e!2262033))))

(declare-datatypes ((List!38657 0))(
  ( (Nil!38533) (Cons!38533 (h!43953 (_ BitVec 16)) (t!297760 List!38657)) )
))
(declare-datatypes ((TokenValue!6004 0))(
  ( (FloatLiteralValue!12008 (text!42473 List!38657)) (TokenValueExt!6003 (__x!24225 Int)) (Broken!30020 (value!184993 List!38657)) (Object!6127) (End!6004) (Def!6004) (Underscore!6004) (Match!6004) (Else!6004) (Error!6004) (Case!6004) (If!6004) (Extends!6004) (Abstract!6004) (Class!6004) (Val!6004) (DelimiterValue!12008 (del!6064 List!38657)) (KeywordValue!6010 (value!184994 List!38657)) (CommentValue!12008 (value!184995 List!38657)) (WhitespaceValue!12008 (value!184996 List!38657)) (IndentationValue!6004 (value!184997 List!38657)) (String!43353) (Int32!6004) (Broken!30021 (value!184998 List!38657)) (Boolean!6005) (Unit!55592) (OperatorValue!6007 (op!6064 List!38657)) (IdentifierValue!12008 (value!184999 List!38657)) (IdentifierValue!12009 (value!185000 List!38657)) (WhitespaceValue!12009 (value!185001 List!38657)) (True!12008) (False!12008) (Broken!30022 (value!185002 List!38657)) (Broken!30023 (value!185003 List!38657)) (True!12009) (RightBrace!6004) (RightBracket!6004) (Colon!6004) (Null!6004) (Comma!6004) (LeftBracket!6004) (False!12009) (LeftBrace!6004) (ImaginaryLiteralValue!6004 (text!42474 List!38657)) (StringLiteralValue!18012 (value!185004 List!38657)) (EOFValue!6004 (value!185005 List!38657)) (IdentValue!6004 (value!185006 List!38657)) (DelimiterValue!12009 (value!185007 List!38657)) (DedentValue!6004 (value!185008 List!38657)) (NewLineValue!6004 (value!185009 List!38657)) (IntegerValue!18012 (value!185010 (_ BitVec 32)) (text!42475 List!38657)) (IntegerValue!18013 (value!185011 Int) (text!42476 List!38657)) (Times!6004) (Or!6004) (Equal!6004) (Minus!6004) (Broken!30024 (value!185012 List!38657)) (And!6004) (Div!6004) (LessEqual!6004) (Mod!6004) (Concat!16537) (Not!6004) (Plus!6004) (SpaceValue!6004 (value!185013 List!38657)) (IntegerValue!18014 (value!185014 Int) (text!42477 List!38657)) (StringLiteralValue!18013 (text!42478 List!38657)) (FloatLiteralValue!12009 (text!42479 List!38657)) (BytesLiteralValue!6004 (value!185015 List!38657)) (CommentValue!12009 (value!185016 List!38657)) (StringLiteralValue!18014 (value!185017 List!38657)) (ErrorTokenValue!6004 (msg!6065 List!38657)) )
))
(declare-datatypes ((C!21252 0))(
  ( (C!21253 (val!12674 Int)) )
))
(declare-datatypes ((Regex!10533 0))(
  ( (ElementMatch!10533 (c!631436 C!21252)) (Concat!16538 (regOne!21578 Regex!10533) (regTwo!21578 Regex!10533)) (EmptyExpr!10533) (Star!10533 (reg!10862 Regex!10533)) (EmptyLang!10533) (Union!10533 (regOne!21579 Regex!10533) (regTwo!21579 Regex!10533)) )
))
(declare-datatypes ((String!43354 0))(
  ( (String!43355 (value!185018 String)) )
))
(declare-datatypes ((List!38658 0))(
  ( (Nil!38534) (Cons!38534 (h!43954 C!21252) (t!297761 List!38658)) )
))
(declare-datatypes ((IArray!23559 0))(
  ( (IArray!23560 (innerList!11837 List!38658)) )
))
(declare-datatypes ((Conc!11777 0))(
  ( (Node!11777 (left!30078 Conc!11777) (right!30408 Conc!11777) (csize!23784 Int) (cheight!11988 Int)) (Leaf!18275 (xs!14979 IArray!23559) (csize!23785 Int)) (Empty!11777) )
))
(declare-datatypes ((BalanceConc!23168 0))(
  ( (BalanceConc!23169 (c!631437 Conc!11777)) )
))
(declare-datatypes ((TokenValueInjection!11436 0))(
  ( (TokenValueInjection!11437 (toValue!8066 Int) (toChars!7925 Int)) )
))
(declare-datatypes ((Rule!11348 0))(
  ( (Rule!11349 (regex!5774 Regex!10533) (tag!6542 String!43354) (isSeparator!5774 Bool) (transformation!5774 TokenValueInjection!11436)) )
))
(declare-datatypes ((List!38659 0))(
  ( (Nil!38535) (Cons!38535 (h!43955 Rule!11348) (t!297762 List!38659)) )
))
(declare-fun rules!3307 () List!38659)

(declare-fun isEmpty!22840 (List!38659) Bool)

(assert (=> b!3653412 (= res!1482442 (not (isEmpty!22840 rules!3307)))))

(declare-fun e!2262020 () Bool)

(assert (=> b!3653413 (= e!2262020 (and tp!1113556 tp!1113560))))

(declare-fun e!2262009 () Bool)

(assert (=> b!3653414 (= e!2262009 (and tp!1113551 tp!1113558))))

(declare-fun bm!264068 () Bool)

(declare-fun call!264077 () List!38658)

(declare-datatypes ((Token!10914 0))(
  ( (Token!10915 (value!185019 TokenValue!6004) (rule!8576 Rule!11348) (size!29429 Int) (originalCharacters!6488 List!38658)) )
))
(declare-datatypes ((tuple2!38400 0))(
  ( (tuple2!38401 (_1!22334 Token!10914) (_2!22334 List!38658)) )
))
(declare-fun lt!1268226 () tuple2!38400)

(declare-fun usedCharacters!986 (Regex!10533) List!38658)

(assert (=> bm!264068 (= call!264077 (usedCharacters!986 (regex!5774 (rule!8576 (_1!22334 lt!1268226)))))))

(declare-fun b!3653415 () Bool)

(declare-fun e!2262035 () Bool)

(declare-fun e!2262007 () Bool)

(assert (=> b!3653415 (= e!2262035 e!2262007)))

(declare-fun res!1482449 () Bool)

(assert (=> b!3653415 (=> (not res!1482449) (not e!2262007))))

(declare-fun lt!1268228 () tuple2!38400)

(declare-fun token!511 () Token!10914)

(assert (=> b!3653415 (= res!1482449 (= (_1!22334 lt!1268228) token!511))))

(declare-datatypes ((Option!8176 0))(
  ( (None!8175) (Some!8175 (v!38043 tuple2!38400)) )
))
(declare-fun lt!1268204 () Option!8176)

(declare-fun get!12673 (Option!8176) tuple2!38400)

(assert (=> b!3653415 (= lt!1268228 (get!12673 lt!1268204))))

(declare-fun b!3653416 () Bool)

(declare-fun e!2262024 () Bool)

(declare-fun lt!1268195 () Rule!11348)

(assert (=> b!3653416 (= e!2262024 (= (rule!8576 (_1!22334 lt!1268226)) lt!1268195))))

(declare-fun b!3653417 () Bool)

(declare-fun e!2262032 () Bool)

(declare-fun e!2262030 () Bool)

(declare-fun rule!403 () Rule!11348)

(declare-fun tp!1113561 () Bool)

(declare-fun inv!51986 (String!43354) Bool)

(declare-fun inv!51989 (TokenValueInjection!11436) Bool)

(assert (=> b!3653417 (= e!2262030 (and tp!1113561 (inv!51986 (tag!6542 rule!403)) (inv!51989 (transformation!5774 rule!403)) e!2262032))))

(declare-fun e!2262022 () Bool)

(declare-fun b!3653418 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!11348)

(declare-fun tp!1113555 () Bool)

(assert (=> b!3653418 (= e!2262022 (and tp!1113555 (inv!51986 (tag!6542 anOtherTypeRule!33)) (inv!51989 (transformation!5774 anOtherTypeRule!33)) e!2262009))))

(declare-fun tp!1113553 () Bool)

(declare-fun e!2262006 () Bool)

(declare-fun b!3653419 () Bool)

(assert (=> b!3653419 (= e!2262006 (and tp!1113553 (inv!51986 (tag!6542 (rule!8576 token!511))) (inv!51989 (transformation!5774 (rule!8576 token!511))) e!2262020))))

(declare-fun b!3653420 () Bool)

(declare-fun res!1482453 () Bool)

(assert (=> b!3653420 (=> (not res!1482453) (not e!2262033))))

(declare-datatypes ((LexerInterface!5363 0))(
  ( (LexerInterfaceExt!5360 (__x!24226 Int)) (Lexer!5361) )
))
(declare-fun thiss!23823 () LexerInterface!5363)

(declare-fun rulesInvariant!4760 (LexerInterface!5363 List!38659) Bool)

(assert (=> b!3653420 (= res!1482453 (rulesInvariant!4760 thiss!23823 rules!3307))))

(assert (=> b!3653421 (= e!2262032 (and tp!1113564 tp!1113563))))

(declare-fun bm!264069 () Bool)

(declare-fun call!264078 () Bool)

(declare-fun lt!1268194 () C!21252)

(declare-fun contains!7613 (List!38658 C!21252) Bool)

(assert (=> bm!264069 (= call!264078 (contains!7613 call!264077 lt!1268194))))

(declare-fun b!3653422 () Bool)

(declare-fun e!2262018 () Bool)

(declare-fun e!2262017 () Bool)

(assert (=> b!3653422 (= e!2262018 e!2262017)))

(declare-fun res!1482459 () Bool)

(assert (=> b!3653422 (=> res!1482459 e!2262017)))

(declare-fun lt!1268224 () Int)

(declare-fun lt!1268192 () Option!8176)

(declare-fun lt!1268196 () TokenValue!6004)

(declare-fun lt!1268211 () List!38658)

(assert (=> b!3653422 (= res!1482459 (not (= lt!1268192 (Some!8175 (tuple2!38401 (Token!10915 lt!1268196 (rule!8576 (_1!22334 lt!1268226)) lt!1268224 lt!1268211) (_2!22334 lt!1268226))))))))

(declare-fun lt!1268200 () BalanceConc!23168)

(declare-fun size!29430 (BalanceConc!23168) Int)

(assert (=> b!3653422 (= lt!1268224 (size!29430 lt!1268200))))

(declare-fun apply!9276 (TokenValueInjection!11436 BalanceConc!23168) TokenValue!6004)

(assert (=> b!3653422 (= lt!1268196 (apply!9276 (transformation!5774 (rule!8576 (_1!22334 lt!1268226))) lt!1268200))))

(declare-datatypes ((Unit!55593 0))(
  ( (Unit!55594) )
))
(declare-fun lt!1268234 () Unit!55593)

(declare-fun lemmaCharactersSize!819 (Token!10914) Unit!55593)

(assert (=> b!3653422 (= lt!1268234 (lemmaCharactersSize!819 (_1!22334 lt!1268226)))))

(declare-fun lt!1268218 () Unit!55593)

(declare-fun lemmaEqSameImage!957 (TokenValueInjection!11436 BalanceConc!23168 BalanceConc!23168) Unit!55593)

(declare-fun seqFromList!4323 (List!38658) BalanceConc!23168)

(assert (=> b!3653422 (= lt!1268218 (lemmaEqSameImage!957 (transformation!5774 (rule!8576 (_1!22334 lt!1268226))) lt!1268200 (seqFromList!4323 (originalCharacters!6488 (_1!22334 lt!1268226)))))))

(declare-fun lt!1268230 () Unit!55593)

(declare-fun lemmaSemiInverse!1523 (TokenValueInjection!11436 BalanceConc!23168) Unit!55593)

(assert (=> b!3653422 (= lt!1268230 (lemmaSemiInverse!1523 (transformation!5774 (rule!8576 (_1!22334 lt!1268226))) lt!1268200))))

(declare-fun b!3653423 () Bool)

(declare-fun res!1482455 () Bool)

(declare-fun e!2262013 () Bool)

(assert (=> b!3653423 (=> res!1482455 e!2262013)))

(declare-fun suffix!1395 () List!38658)

(declare-fun isEmpty!22841 (List!38658) Bool)

(assert (=> b!3653423 (= res!1482455 (isEmpty!22841 suffix!1395))))

(declare-fun b!3653424 () Bool)

(declare-fun res!1482450 () Bool)

(assert (=> b!3653424 (=> (not res!1482450) (not e!2262007))))

(assert (=> b!3653424 (= res!1482450 (isEmpty!22841 (_2!22334 lt!1268228)))))

(declare-fun b!3653425 () Bool)

(declare-fun e!2262008 () Bool)

(declare-fun e!2262015 () Bool)

(declare-fun tp!1113554 () Bool)

(assert (=> b!3653425 (= e!2262008 (and e!2262015 tp!1113554))))

(declare-fun b!3653426 () Bool)

(declare-fun e!2262029 () Bool)

(assert (=> b!3653426 (= e!2262029 e!2262018)))

(declare-fun res!1482451 () Bool)

(assert (=> b!3653426 (=> res!1482451 e!2262018)))

(declare-fun lt!1268207 () List!38658)

(declare-fun isPrefix!3137 (List!38658 List!38658) Bool)

(assert (=> b!3653426 (= res!1482451 (not (isPrefix!3137 lt!1268211 lt!1268207)))))

(declare-fun ++!9590 (List!38658 List!38658) List!38658)

(assert (=> b!3653426 (isPrefix!3137 lt!1268211 (++!9590 lt!1268211 (_2!22334 lt!1268226)))))

(declare-fun lt!1268193 () Unit!55593)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2056 (List!38658 List!38658) Unit!55593)

(assert (=> b!3653426 (= lt!1268193 (lemmaConcatTwoListThenFirstIsPrefix!2056 lt!1268211 (_2!22334 lt!1268226)))))

(declare-fun list!14284 (BalanceConc!23168) List!38658)

(assert (=> b!3653426 (= lt!1268211 (list!14284 lt!1268200))))

(declare-fun charsOf!3788 (Token!10914) BalanceConc!23168)

(assert (=> b!3653426 (= lt!1268200 (charsOf!3788 (_1!22334 lt!1268226)))))

(declare-fun e!2262016 () Bool)

(assert (=> b!3653426 e!2262016))

(declare-fun res!1482443 () Bool)

(assert (=> b!3653426 (=> (not res!1482443) (not e!2262016))))

(declare-datatypes ((Option!8177 0))(
  ( (None!8176) (Some!8176 (v!38044 Rule!11348)) )
))
(declare-fun lt!1268217 () Option!8177)

(declare-fun isDefined!6408 (Option!8177) Bool)

(assert (=> b!3653426 (= res!1482443 (isDefined!6408 lt!1268217))))

(declare-fun getRuleFromTag!1378 (LexerInterface!5363 List!38659 String!43354) Option!8177)

(assert (=> b!3653426 (= lt!1268217 (getRuleFromTag!1378 thiss!23823 rules!3307 (tag!6542 (rule!8576 (_1!22334 lt!1268226)))))))

(declare-fun lt!1268208 () Unit!55593)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1378 (LexerInterface!5363 List!38659 List!38658 Token!10914) Unit!55593)

(assert (=> b!3653426 (= lt!1268208 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1378 thiss!23823 rules!3307 lt!1268207 (_1!22334 lt!1268226)))))

(assert (=> b!3653426 (= lt!1268226 (get!12673 lt!1268192))))

(declare-fun lt!1268212 () List!38658)

(declare-fun lt!1268214 () Unit!55593)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1041 (LexerInterface!5363 List!38659 List!38658 List!38658) Unit!55593)

(assert (=> b!3653426 (= lt!1268214 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1041 thiss!23823 rules!3307 lt!1268212 suffix!1395))))

(declare-fun maxPrefix!2897 (LexerInterface!5363 List!38659 List!38658) Option!8176)

(assert (=> b!3653426 (= lt!1268192 (maxPrefix!2897 thiss!23823 rules!3307 lt!1268207))))

(assert (=> b!3653426 (isPrefix!3137 lt!1268212 lt!1268207)))

(declare-fun lt!1268201 () Unit!55593)

(assert (=> b!3653426 (= lt!1268201 (lemmaConcatTwoListThenFirstIsPrefix!2056 lt!1268212 suffix!1395))))

(assert (=> b!3653426 (= lt!1268207 (++!9590 lt!1268212 suffix!1395))))

(declare-fun b!3653427 () Bool)

(declare-fun e!2262012 () Unit!55593)

(declare-fun Unit!55595 () Unit!55593)

(assert (=> b!3653427 (= e!2262012 Unit!55595)))

(declare-fun b!3653428 () Bool)

(assert (=> b!3653428 (= e!2262007 (not e!2262013))))

(declare-fun res!1482446 () Bool)

(assert (=> b!3653428 (=> res!1482446 e!2262013)))

(declare-fun matchR!5102 (Regex!10533 List!38658) Bool)

(assert (=> b!3653428 (= res!1482446 (not (matchR!5102 (regex!5774 rule!403) lt!1268212)))))

(declare-fun ruleValid!2038 (LexerInterface!5363 Rule!11348) Bool)

(assert (=> b!3653428 (ruleValid!2038 thiss!23823 rule!403)))

(declare-fun lt!1268216 () Unit!55593)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1192 (LexerInterface!5363 Rule!11348 List!38659) Unit!55593)

(assert (=> b!3653428 (= lt!1268216 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1192 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2262026 () Bool)

(declare-fun tp!1113557 () Bool)

(declare-fun b!3653429 () Bool)

(declare-fun inv!21 (TokenValue!6004) Bool)

(assert (=> b!3653429 (= e!2262026 (and (inv!21 (value!185019 token!511)) e!2262006 tp!1113557))))

(declare-fun b!3653430 () Bool)

(declare-fun e!2262014 () Bool)

(assert (=> b!3653430 (= e!2262014 true)))

(declare-fun lt!1268219 () Unit!55593)

(declare-fun e!2262011 () Unit!55593)

(assert (=> b!3653430 (= lt!1268219 e!2262011)))

(declare-fun c!631432 () Bool)

(declare-fun lt!1268213 () BalanceConc!23168)

(assert (=> b!3653430 (= c!631432 (> lt!1268224 (size!29430 lt!1268213)))))

(declare-fun lt!1268221 () Unit!55593)

(declare-fun e!2262010 () Unit!55593)

(assert (=> b!3653430 (= lt!1268221 e!2262010)))

(declare-fun c!631434 () Bool)

(assert (=> b!3653430 (= c!631434 (isSeparator!5774 rule!403))))

(declare-fun lt!1268222 () Unit!55593)

(declare-fun e!2262028 () Unit!55593)

(assert (=> b!3653430 (= lt!1268222 e!2262028)))

(declare-fun c!631430 () Bool)

(declare-fun lt!1268205 () List!38658)

(declare-fun lt!1268210 () C!21252)

(assert (=> b!3653430 (= c!631430 (not (contains!7613 lt!1268205 lt!1268210)))))

(declare-fun head!7792 (List!38658) C!21252)

(assert (=> b!3653430 (= lt!1268210 (head!7792 lt!1268211))))

(declare-fun b!3653431 () Bool)

(declare-fun res!1482457 () Bool)

(assert (=> b!3653431 (=> res!1482457 e!2262018)))

(assert (=> b!3653431 (= res!1482457 (not (matchR!5102 (regex!5774 (rule!8576 (_1!22334 lt!1268226))) lt!1268211)))))

(declare-fun b!3653432 () Bool)

(declare-fun Unit!55596 () Unit!55593)

(assert (=> b!3653432 (= e!2262011 Unit!55596)))

(declare-fun b!3653433 () Bool)

(assert (=> b!3653433 (= e!2262017 e!2262014)))

(declare-fun res!1482458 () Bool)

(assert (=> b!3653433 (=> res!1482458 e!2262014)))

(declare-fun lt!1268203 () List!38658)

(declare-fun lt!1268223 () Option!8176)

(assert (=> b!3653433 (= res!1482458 (or (not (= lt!1268203 (_2!22334 lt!1268226))) (not (= lt!1268223 (Some!8175 (tuple2!38401 (_1!22334 lt!1268226) lt!1268203))))))))

(assert (=> b!3653433 (= (_2!22334 lt!1268226) lt!1268203)))

(declare-fun lt!1268220 () Unit!55593)

(declare-fun lemmaSamePrefixThenSameSuffix!1464 (List!38658 List!38658 List!38658 List!38658 List!38658) Unit!55593)

(assert (=> b!3653433 (= lt!1268220 (lemmaSamePrefixThenSameSuffix!1464 lt!1268211 (_2!22334 lt!1268226) lt!1268211 lt!1268203 lt!1268207))))

(declare-fun getSuffix!1690 (List!38658 List!38658) List!38658)

(assert (=> b!3653433 (= lt!1268203 (getSuffix!1690 lt!1268207 lt!1268211))))

(declare-fun lt!1268197 () Int)

(declare-fun lt!1268227 () TokenValue!6004)

(assert (=> b!3653433 (= lt!1268223 (Some!8175 (tuple2!38401 (Token!10915 lt!1268227 (rule!8576 (_1!22334 lt!1268226)) lt!1268197 lt!1268211) (_2!22334 lt!1268226))))))

(declare-fun maxPrefixOneRule!2035 (LexerInterface!5363 Rule!11348 List!38658) Option!8176)

(assert (=> b!3653433 (= lt!1268223 (maxPrefixOneRule!2035 thiss!23823 (rule!8576 (_1!22334 lt!1268226)) lt!1268207))))

(declare-fun size!29431 (List!38658) Int)

(assert (=> b!3653433 (= lt!1268197 (size!29431 lt!1268211))))

(assert (=> b!3653433 (= lt!1268227 (apply!9276 (transformation!5774 (rule!8576 (_1!22334 lt!1268226))) (seqFromList!4323 lt!1268211)))))

(declare-fun lt!1268199 () Unit!55593)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1091 (LexerInterface!5363 List!38659 List!38658 List!38658 List!38658 Rule!11348) Unit!55593)

(assert (=> b!3653433 (= lt!1268199 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1091 thiss!23823 rules!3307 lt!1268211 lt!1268207 (_2!22334 lt!1268226) (rule!8576 (_1!22334 lt!1268226))))))

(declare-fun b!3653434 () Bool)

(assert (=> b!3653434 (= e!2262010 e!2262012)))

(declare-fun c!631431 () Bool)

(assert (=> b!3653434 (= c!631431 (not (isSeparator!5774 (rule!8576 (_1!22334 lt!1268226)))))))

(declare-fun b!3653435 () Bool)

(declare-fun res!1482441 () Bool)

(assert (=> b!3653435 (=> (not res!1482441) (not e!2262033))))

(declare-fun contains!7614 (List!38659 Rule!11348) Bool)

(assert (=> b!3653435 (= res!1482441 (contains!7614 rules!3307 rule!403))))

(declare-fun b!3653436 () Bool)

(assert (=> b!3653436 (= e!2262016 e!2262024)))

(declare-fun res!1482456 () Bool)

(assert (=> b!3653436 (=> (not res!1482456) (not e!2262024))))

(assert (=> b!3653436 (= res!1482456 (matchR!5102 (regex!5774 lt!1268195) (list!14284 (charsOf!3788 (_1!22334 lt!1268226)))))))

(declare-fun get!12674 (Option!8177) Rule!11348)

(assert (=> b!3653436 (= lt!1268195 (get!12674 lt!1268217))))

(declare-fun b!3653437 () Bool)

(declare-fun res!1482452 () Bool)

(assert (=> b!3653437 (=> (not res!1482452) (not e!2262007))))

(assert (=> b!3653437 (= res!1482452 (= (rule!8576 token!511) rule!403))))

(declare-fun bm!264070 () Bool)

(declare-fun call!264075 () List!38658)

(assert (=> bm!264070 (= call!264075 (usedCharacters!986 (regex!5774 (rule!8576 (_1!22334 lt!1268226)))))))

(declare-fun e!2262005 () Bool)

(assert (=> b!3653438 (= e!2262005 (and tp!1113559 tp!1113552))))

(declare-fun b!3653439 () Bool)

(declare-fun res!1482454 () Bool)

(assert (=> b!3653439 (=> (not res!1482454) (not e!2262033))))

(assert (=> b!3653439 (= res!1482454 (contains!7614 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3653440 () Bool)

(assert (=> b!3653440 false))

(declare-fun lt!1268206 () Unit!55593)

(declare-fun call!264074 () Unit!55593)

(assert (=> b!3653440 (= lt!1268206 call!264074)))

(assert (=> b!3653440 (not call!264078)))

(declare-fun lt!1268229 () Unit!55593)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!302 (LexerInterface!5363 List!38659 List!38659 Rule!11348 Rule!11348 C!21252) Unit!55593)

(assert (=> b!3653440 (= lt!1268229 (lemmaSepRuleNotContainsCharContainedInANonSepRule!302 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8576 (_1!22334 lt!1268226)) lt!1268194))))

(declare-fun e!2262027 () Unit!55593)

(declare-fun Unit!55597 () Unit!55593)

(assert (=> b!3653440 (= e!2262027 Unit!55597)))

(declare-fun b!3653441 () Bool)

(assert (=> b!3653441 (= e!2262011 e!2262027)))

(declare-fun lt!1268231 () Unit!55593)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!82 (List!38658 List!38658 List!38658 List!38658) Unit!55593)

(assert (=> b!3653441 (= lt!1268231 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!82 lt!1268212 suffix!1395 lt!1268211 lt!1268207))))

(assert (=> b!3653441 (contains!7613 lt!1268211 lt!1268194)))

(declare-fun c!631435 () Bool)

(assert (=> b!3653441 (= c!631435 (isSeparator!5774 rule!403))))

(declare-fun b!3653442 () Bool)

(declare-fun res!1482460 () Bool)

(assert (=> b!3653442 (=> res!1482460 e!2262029)))

(declare-fun sepAndNonSepRulesDisjointChars!1942 (List!38659 List!38659) Bool)

(assert (=> b!3653442 (= res!1482460 (not (sepAndNonSepRulesDisjointChars!1942 rules!3307 rules!3307)))))

(declare-fun bm!264071 () Bool)

(declare-fun call!264073 () Bool)

(assert (=> bm!264071 (= call!264073 (contains!7613 call!264075 lt!1268210))))

(declare-fun b!3653443 () Bool)

(assert (=> b!3653443 (= e!2262013 e!2262029)))

(declare-fun res!1482447 () Bool)

(assert (=> b!3653443 (=> res!1482447 e!2262029)))

(assert (=> b!3653443 (= res!1482447 (contains!7613 lt!1268205 lt!1268194))))

(assert (=> b!3653443 (= lt!1268194 (head!7792 suffix!1395))))

(assert (=> b!3653443 (= lt!1268205 (usedCharacters!986 (regex!5774 rule!403)))))

(declare-fun b!3653444 () Bool)

(assert (=> b!3653444 false))

(declare-fun lt!1268215 () Unit!55593)

(declare-fun call!264076 () Unit!55593)

(assert (=> b!3653444 (= lt!1268215 call!264076)))

(assert (=> b!3653444 (not call!264073)))

(declare-fun lt!1268202 () Unit!55593)

(assert (=> b!3653444 (= lt!1268202 (lemmaSepRuleNotContainsCharContainedInANonSepRule!302 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8576 (_1!22334 lt!1268226)) lt!1268210))))

(declare-fun e!2262034 () Unit!55593)

(declare-fun Unit!55598 () Unit!55593)

(assert (=> b!3653444 (= e!2262034 Unit!55598)))

(declare-fun b!3653445 () Bool)

(declare-fun res!1482445 () Bool)

(assert (=> b!3653445 (=> res!1482445 e!2262029)))

(assert (=> b!3653445 (= res!1482445 (not (contains!7613 (usedCharacters!986 (regex!5774 anOtherTypeRule!33)) lt!1268194)))))

(declare-fun b!3653446 () Bool)

(assert (=> b!3653446 false))

(declare-fun lt!1268232 () Unit!55593)

(assert (=> b!3653446 (= lt!1268232 call!264074)))

(assert (=> b!3653446 (not call!264078)))

(declare-fun lt!1268198 () Unit!55593)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!420 (LexerInterface!5363 List!38659 List!38659 Rule!11348 Rule!11348 C!21252) Unit!55593)

(assert (=> b!3653446 (= lt!1268198 (lemmaNonSepRuleNotContainsCharContainedInASepRule!420 thiss!23823 rules!3307 rules!3307 (rule!8576 (_1!22334 lt!1268226)) anOtherTypeRule!33 lt!1268194))))

(declare-fun Unit!55599 () Unit!55593)

(assert (=> b!3653446 (= e!2262027 Unit!55599)))

(declare-fun bm!264072 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!722 (Regex!10533 List!38658 C!21252) Unit!55593)

(assert (=> bm!264072 (= call!264076 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!722 (regex!5774 (rule!8576 (_1!22334 lt!1268226))) lt!1268211 lt!1268210))))

(declare-fun b!3653447 () Bool)

(assert (=> b!3653447 (= e!2262010 e!2262034)))

(declare-fun c!631433 () Bool)

(assert (=> b!3653447 (= c!631433 (isSeparator!5774 (rule!8576 (_1!22334 lt!1268226))))))

(declare-fun b!3653448 () Bool)

(declare-fun Unit!55600 () Unit!55593)

(assert (=> b!3653448 (= e!2262028 Unit!55600)))

(declare-fun lt!1268233 () Unit!55593)

(assert (=> b!3653448 (= lt!1268233 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!722 (regex!5774 rule!403) lt!1268212 lt!1268210))))

(assert (=> b!3653448 false))

(declare-fun b!3653449 () Bool)

(declare-fun Unit!55601 () Unit!55593)

(assert (=> b!3653449 (= e!2262034 Unit!55601)))

(declare-fun tp!1113550 () Bool)

(declare-fun b!3653450 () Bool)

(assert (=> b!3653450 (= e!2262015 (and tp!1113550 (inv!51986 (tag!6542 (h!43955 rules!3307))) (inv!51989 (transformation!5774 (h!43955 rules!3307))) e!2262005))))

(declare-fun res!1482448 () Bool)

(assert (=> start!341706 (=> (not res!1482448) (not e!2262033))))

(get-info :version)

(assert (=> start!341706 (= res!1482448 ((_ is Lexer!5361) thiss!23823))))

(assert (=> start!341706 e!2262033))

(assert (=> start!341706 e!2262008))

(assert (=> start!341706 e!2262031))

(assert (=> start!341706 true))

(declare-fun inv!51990 (Token!10914) Bool)

(assert (=> start!341706 (and (inv!51990 token!511) e!2262026)))

(assert (=> start!341706 e!2262030))

(assert (=> start!341706 e!2262022))

(declare-fun b!3653451 () Bool)

(declare-fun Unit!55602 () Unit!55593)

(assert (=> b!3653451 (= e!2262028 Unit!55602)))

(declare-fun b!3653452 () Bool)

(assert (=> b!3653452 (= e!2262033 e!2262035)))

(declare-fun res!1482444 () Bool)

(assert (=> b!3653452 (=> (not res!1482444) (not e!2262035))))

(declare-fun isDefined!6409 (Option!8176) Bool)

(assert (=> b!3653452 (= res!1482444 (isDefined!6409 lt!1268204))))

(assert (=> b!3653452 (= lt!1268204 (maxPrefix!2897 thiss!23823 rules!3307 lt!1268212))))

(assert (=> b!3653452 (= lt!1268212 (list!14284 lt!1268213))))

(assert (=> b!3653452 (= lt!1268213 (charsOf!3788 token!511))))

(declare-fun b!3653453 () Bool)

(assert (=> b!3653453 false))

(declare-fun lt!1268209 () Unit!55593)

(assert (=> b!3653453 (= lt!1268209 call!264076)))

(assert (=> b!3653453 (not call!264073)))

(declare-fun lt!1268225 () Unit!55593)

(assert (=> b!3653453 (= lt!1268225 (lemmaNonSepRuleNotContainsCharContainedInASepRule!420 thiss!23823 rules!3307 rules!3307 (rule!8576 (_1!22334 lt!1268226)) rule!403 lt!1268210))))

(declare-fun Unit!55603 () Unit!55593)

(assert (=> b!3653453 (= e!2262012 Unit!55603)))

(declare-fun b!3653454 () Bool)

(declare-fun res!1482461 () Bool)

(assert (=> b!3653454 (=> (not res!1482461) (not e!2262033))))

(assert (=> b!3653454 (= res!1482461 (not (= (isSeparator!5774 anOtherTypeRule!33) (isSeparator!5774 rule!403))))))

(declare-fun bm!264073 () Bool)

(assert (=> bm!264073 (= call!264074 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!722 (regex!5774 (rule!8576 (_1!22334 lt!1268226))) lt!1268211 lt!1268194))))

(assert (= (and start!341706 res!1482448) b!3653412))

(assert (= (and b!3653412 res!1482442) b!3653420))

(assert (= (and b!3653420 res!1482453) b!3653435))

(assert (= (and b!3653435 res!1482441) b!3653439))

(assert (= (and b!3653439 res!1482454) b!3653454))

(assert (= (and b!3653454 res!1482461) b!3653452))

(assert (= (and b!3653452 res!1482444) b!3653415))

(assert (= (and b!3653415 res!1482449) b!3653424))

(assert (= (and b!3653424 res!1482450) b!3653437))

(assert (= (and b!3653437 res!1482452) b!3653428))

(assert (= (and b!3653428 (not res!1482446)) b!3653423))

(assert (= (and b!3653423 (not res!1482455)) b!3653443))

(assert (= (and b!3653443 (not res!1482447)) b!3653445))

(assert (= (and b!3653445 (not res!1482445)) b!3653442))

(assert (= (and b!3653442 (not res!1482460)) b!3653426))

(assert (= (and b!3653426 res!1482443) b!3653436))

(assert (= (and b!3653436 res!1482456) b!3653416))

(assert (= (and b!3653426 (not res!1482451)) b!3653431))

(assert (= (and b!3653431 (not res!1482457)) b!3653422))

(assert (= (and b!3653422 (not res!1482459)) b!3653433))

(assert (= (and b!3653433 (not res!1482458)) b!3653430))

(assert (= (and b!3653430 c!631430) b!3653448))

(assert (= (and b!3653430 (not c!631430)) b!3653451))

(assert (= (and b!3653430 c!631434) b!3653434))

(assert (= (and b!3653430 (not c!631434)) b!3653447))

(assert (= (and b!3653434 c!631431) b!3653453))

(assert (= (and b!3653434 (not c!631431)) b!3653427))

(assert (= (and b!3653447 c!631433) b!3653444))

(assert (= (and b!3653447 (not c!631433)) b!3653449))

(assert (= (or b!3653453 b!3653444) bm!264072))

(assert (= (or b!3653453 b!3653444) bm!264070))

(assert (= (or b!3653453 b!3653444) bm!264071))

(assert (= (and b!3653430 c!631432) b!3653441))

(assert (= (and b!3653430 (not c!631432)) b!3653432))

(assert (= (and b!3653441 c!631435) b!3653440))

(assert (= (and b!3653441 (not c!631435)) b!3653446))

(assert (= (or b!3653440 b!3653446) bm!264073))

(assert (= (or b!3653440 b!3653446) bm!264068))

(assert (= (or b!3653440 b!3653446) bm!264069))

(assert (= b!3653450 b!3653438))

(assert (= b!3653425 b!3653450))

(assert (= (and start!341706 ((_ is Cons!38535) rules!3307)) b!3653425))

(assert (= (and start!341706 ((_ is Cons!38534) suffix!1395)) b!3653411))

(assert (= b!3653419 b!3653413))

(assert (= b!3653429 b!3653419))

(assert (= start!341706 b!3653429))

(assert (= b!3653417 b!3653421))

(assert (= start!341706 b!3653417))

(assert (= b!3653418 b!3653414))

(assert (= start!341706 b!3653418))

(declare-fun m!4158411 () Bool)

(assert (=> b!3653433 m!4158411))

(declare-fun m!4158413 () Bool)

(assert (=> b!3653433 m!4158413))

(declare-fun m!4158415 () Bool)

(assert (=> b!3653433 m!4158415))

(declare-fun m!4158417 () Bool)

(assert (=> b!3653433 m!4158417))

(declare-fun m!4158419 () Bool)

(assert (=> b!3653433 m!4158419))

(declare-fun m!4158421 () Bool)

(assert (=> b!3653433 m!4158421))

(assert (=> b!3653433 m!4158419))

(declare-fun m!4158423 () Bool)

(assert (=> b!3653433 m!4158423))

(declare-fun m!4158425 () Bool)

(assert (=> b!3653436 m!4158425))

(assert (=> b!3653436 m!4158425))

(declare-fun m!4158427 () Bool)

(assert (=> b!3653436 m!4158427))

(assert (=> b!3653436 m!4158427))

(declare-fun m!4158429 () Bool)

(assert (=> b!3653436 m!4158429))

(declare-fun m!4158431 () Bool)

(assert (=> b!3653436 m!4158431))

(declare-fun m!4158433 () Bool)

(assert (=> b!3653440 m!4158433))

(declare-fun m!4158435 () Bool)

(assert (=> b!3653423 m!4158435))

(declare-fun m!4158437 () Bool)

(assert (=> bm!264068 m!4158437))

(declare-fun m!4158439 () Bool)

(assert (=> b!3653435 m!4158439))

(declare-fun m!4158441 () Bool)

(assert (=> b!3653446 m!4158441))

(declare-fun m!4158443 () Bool)

(assert (=> b!3653426 m!4158443))

(declare-fun m!4158445 () Bool)

(assert (=> b!3653426 m!4158445))

(assert (=> b!3653426 m!4158425))

(declare-fun m!4158447 () Bool)

(assert (=> b!3653426 m!4158447))

(declare-fun m!4158449 () Bool)

(assert (=> b!3653426 m!4158449))

(declare-fun m!4158451 () Bool)

(assert (=> b!3653426 m!4158451))

(declare-fun m!4158453 () Bool)

(assert (=> b!3653426 m!4158453))

(declare-fun m!4158455 () Bool)

(assert (=> b!3653426 m!4158455))

(declare-fun m!4158457 () Bool)

(assert (=> b!3653426 m!4158457))

(declare-fun m!4158459 () Bool)

(assert (=> b!3653426 m!4158459))

(declare-fun m!4158461 () Bool)

(assert (=> b!3653426 m!4158461))

(assert (=> b!3653426 m!4158461))

(declare-fun m!4158463 () Bool)

(assert (=> b!3653426 m!4158463))

(declare-fun m!4158465 () Bool)

(assert (=> b!3653426 m!4158465))

(declare-fun m!4158467 () Bool)

(assert (=> b!3653426 m!4158467))

(declare-fun m!4158469 () Bool)

(assert (=> b!3653426 m!4158469))

(declare-fun m!4158471 () Bool)

(assert (=> b!3653444 m!4158471))

(declare-fun m!4158473 () Bool)

(assert (=> b!3653412 m!4158473))

(declare-fun m!4158475 () Bool)

(assert (=> b!3653415 m!4158475))

(declare-fun m!4158477 () Bool)

(assert (=> b!3653448 m!4158477))

(declare-fun m!4158479 () Bool)

(assert (=> b!3653441 m!4158479))

(declare-fun m!4158481 () Bool)

(assert (=> b!3653441 m!4158481))

(declare-fun m!4158483 () Bool)

(assert (=> b!3653450 m!4158483))

(declare-fun m!4158485 () Bool)

(assert (=> b!3653450 m!4158485))

(declare-fun m!4158487 () Bool)

(assert (=> b!3653431 m!4158487))

(declare-fun m!4158489 () Bool)

(assert (=> b!3653428 m!4158489))

(declare-fun m!4158491 () Bool)

(assert (=> b!3653428 m!4158491))

(declare-fun m!4158493 () Bool)

(assert (=> b!3653428 m!4158493))

(declare-fun m!4158495 () Bool)

(assert (=> b!3653419 m!4158495))

(declare-fun m!4158497 () Bool)

(assert (=> b!3653419 m!4158497))

(assert (=> bm!264070 m!4158437))

(declare-fun m!4158499 () Bool)

(assert (=> b!3653417 m!4158499))

(declare-fun m!4158501 () Bool)

(assert (=> b!3653417 m!4158501))

(declare-fun m!4158503 () Bool)

(assert (=> b!3653418 m!4158503))

(declare-fun m!4158505 () Bool)

(assert (=> b!3653418 m!4158505))

(declare-fun m!4158507 () Bool)

(assert (=> b!3653453 m!4158507))

(declare-fun m!4158509 () Bool)

(assert (=> b!3653442 m!4158509))

(declare-fun m!4158511 () Bool)

(assert (=> bm!264071 m!4158511))

(declare-fun m!4158513 () Bool)

(assert (=> bm!264073 m!4158513))

(declare-fun m!4158515 () Bool)

(assert (=> b!3653429 m!4158515))

(declare-fun m!4158517 () Bool)

(assert (=> start!341706 m!4158517))

(declare-fun m!4158519 () Bool)

(assert (=> bm!264072 m!4158519))

(declare-fun m!4158521 () Bool)

(assert (=> b!3653420 m!4158521))

(declare-fun m!4158523 () Bool)

(assert (=> b!3653424 m!4158523))

(declare-fun m!4158525 () Bool)

(assert (=> bm!264069 m!4158525))

(declare-fun m!4158527 () Bool)

(assert (=> b!3653439 m!4158527))

(declare-fun m!4158529 () Bool)

(assert (=> b!3653430 m!4158529))

(declare-fun m!4158531 () Bool)

(assert (=> b!3653430 m!4158531))

(declare-fun m!4158533 () Bool)

(assert (=> b!3653430 m!4158533))

(declare-fun m!4158535 () Bool)

(assert (=> b!3653452 m!4158535))

(declare-fun m!4158537 () Bool)

(assert (=> b!3653452 m!4158537))

(declare-fun m!4158539 () Bool)

(assert (=> b!3653452 m!4158539))

(declare-fun m!4158541 () Bool)

(assert (=> b!3653452 m!4158541))

(declare-fun m!4158543 () Bool)

(assert (=> b!3653445 m!4158543))

(assert (=> b!3653445 m!4158543))

(declare-fun m!4158545 () Bool)

(assert (=> b!3653445 m!4158545))

(declare-fun m!4158547 () Bool)

(assert (=> b!3653443 m!4158547))

(declare-fun m!4158549 () Bool)

(assert (=> b!3653443 m!4158549))

(declare-fun m!4158551 () Bool)

(assert (=> b!3653443 m!4158551))

(declare-fun m!4158553 () Bool)

(assert (=> b!3653422 m!4158553))

(declare-fun m!4158555 () Bool)

(assert (=> b!3653422 m!4158555))

(declare-fun m!4158557 () Bool)

(assert (=> b!3653422 m!4158557))

(declare-fun m!4158559 () Bool)

(assert (=> b!3653422 m!4158559))

(declare-fun m!4158561 () Bool)

(assert (=> b!3653422 m!4158561))

(assert (=> b!3653422 m!4158559))

(declare-fun m!4158563 () Bool)

(assert (=> b!3653422 m!4158563))

(check-sat (not b!3653450) (not b!3653412) b_and!270451 (not b!3653422) (not b!3653433) tp_is_empty!18149 (not start!341706) (not b_next!96903) b_and!270455 b_and!270459 (not b!3653431) (not b!3653418) (not b!3653426) (not b!3653442) (not b_next!96899) (not bm!264068) (not bm!264072) (not b!3653430) (not b_next!96891) (not b_next!96893) (not b!3653453) (not b!3653444) b_and!270457 (not bm!264071) b_and!270465 (not b!3653415) (not b!3653429) b_and!270453 (not b!3653452) (not b_next!96895) (not bm!264070) (not bm!264073) (not b_next!96889) (not b_next!96901) (not b!3653428) (not b!3653417) (not b!3653435) b_and!270463 (not b!3653446) (not b!3653440) (not b_next!96897) (not b!3653425) (not b!3653441) (not b!3653443) (not b!3653419) (not b!3653439) (not b!3653436) (not bm!264069) (not b!3653445) (not b!3653448) b_and!270461 (not b!3653420) (not b!3653411) (not b!3653423) (not b!3653424))
(check-sat (not b_next!96899) (not b_next!96891) (not b_next!96893) b_and!270451 b_and!270453 (not b_next!96895) (not b_next!96889) (not b_next!96901) b_and!270463 (not b_next!96897) b_and!270461 (not b_next!96903) b_and!270455 b_and!270459 b_and!270457 b_and!270465)
