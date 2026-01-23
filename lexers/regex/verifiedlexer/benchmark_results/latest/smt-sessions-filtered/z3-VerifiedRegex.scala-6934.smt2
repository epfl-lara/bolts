; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!366600 () Bool)

(assert start!366600)

(declare-fun b!3913276 () Bool)

(declare-fun b_free!106181 () Bool)

(declare-fun b_next!106885 () Bool)

(assert (=> b!3913276 (= b_free!106181 (not b_next!106885))))

(declare-fun tp!1191174 () Bool)

(declare-fun b_and!297827 () Bool)

(assert (=> b!3913276 (= tp!1191174 b_and!297827)))

(declare-fun b_free!106183 () Bool)

(declare-fun b_next!106887 () Bool)

(assert (=> b!3913276 (= b_free!106183 (not b_next!106887))))

(declare-fun tp!1191162 () Bool)

(declare-fun b_and!297829 () Bool)

(assert (=> b!3913276 (= tp!1191162 b_and!297829)))

(declare-fun b!3913270 () Bool)

(declare-fun b_free!106185 () Bool)

(declare-fun b_next!106889 () Bool)

(assert (=> b!3913270 (= b_free!106185 (not b_next!106889))))

(declare-fun tp!1191167 () Bool)

(declare-fun b_and!297831 () Bool)

(assert (=> b!3913270 (= tp!1191167 b_and!297831)))

(declare-fun b_free!106187 () Bool)

(declare-fun b_next!106891 () Bool)

(assert (=> b!3913270 (= b_free!106187 (not b_next!106891))))

(declare-fun tp!1191173 () Bool)

(declare-fun b_and!297833 () Bool)

(assert (=> b!3913270 (= tp!1191173 b_and!297833)))

(declare-fun b!3913289 () Bool)

(declare-fun b_free!106189 () Bool)

(declare-fun b_next!106893 () Bool)

(assert (=> b!3913289 (= b_free!106189 (not b_next!106893))))

(declare-fun tp!1191168 () Bool)

(declare-fun b_and!297835 () Bool)

(assert (=> b!3913289 (= tp!1191168 b_and!297835)))

(declare-fun b_free!106191 () Bool)

(declare-fun b_next!106895 () Bool)

(assert (=> b!3913289 (= b_free!106191 (not b_next!106895))))

(declare-fun tp!1191159 () Bool)

(declare-fun b_and!297837 () Bool)

(assert (=> b!3913289 (= tp!1191159 b_and!297837)))

(declare-fun e!2419426 () Bool)

(declare-fun b!3913260 () Bool)

(declare-fun tp!1191170 () Bool)

(declare-datatypes ((List!41593 0))(
  ( (Nil!41469) (Cons!41469 (h!46889 (_ BitVec 16)) (t!323406 List!41593)) )
))
(declare-datatypes ((TokenValue!6686 0))(
  ( (FloatLiteralValue!13372 (text!47247 List!41593)) (TokenValueExt!6685 (__x!25589 Int)) (Broken!33430 (value!204604 List!41593)) (Object!6809) (End!6686) (Def!6686) (Underscore!6686) (Match!6686) (Else!6686) (Error!6686) (Case!6686) (If!6686) (Extends!6686) (Abstract!6686) (Class!6686) (Val!6686) (DelimiterValue!13372 (del!6746 List!41593)) (KeywordValue!6692 (value!204605 List!41593)) (CommentValue!13372 (value!204606 List!41593)) (WhitespaceValue!13372 (value!204607 List!41593)) (IndentationValue!6686 (value!204608 List!41593)) (String!47147) (Int32!6686) (Broken!33431 (value!204609 List!41593)) (Boolean!6687) (Unit!59612) (OperatorValue!6689 (op!6746 List!41593)) (IdentifierValue!13372 (value!204610 List!41593)) (IdentifierValue!13373 (value!204611 List!41593)) (WhitespaceValue!13373 (value!204612 List!41593)) (True!13372) (False!13372) (Broken!33432 (value!204613 List!41593)) (Broken!33433 (value!204614 List!41593)) (True!13373) (RightBrace!6686) (RightBracket!6686) (Colon!6686) (Null!6686) (Comma!6686) (LeftBracket!6686) (False!13373) (LeftBrace!6686) (ImaginaryLiteralValue!6686 (text!47248 List!41593)) (StringLiteralValue!20058 (value!204615 List!41593)) (EOFValue!6686 (value!204616 List!41593)) (IdentValue!6686 (value!204617 List!41593)) (DelimiterValue!13373 (value!204618 List!41593)) (DedentValue!6686 (value!204619 List!41593)) (NewLineValue!6686 (value!204620 List!41593)) (IntegerValue!20058 (value!204621 (_ BitVec 32)) (text!47249 List!41593)) (IntegerValue!20059 (value!204622 Int) (text!47250 List!41593)) (Times!6686) (Or!6686) (Equal!6686) (Minus!6686) (Broken!33434 (value!204623 List!41593)) (And!6686) (Div!6686) (LessEqual!6686) (Mod!6686) (Concat!18047) (Not!6686) (Plus!6686) (SpaceValue!6686 (value!204624 List!41593)) (IntegerValue!20060 (value!204625 Int) (text!47251 List!41593)) (StringLiteralValue!20059 (text!47252 List!41593)) (FloatLiteralValue!13373 (text!47253 List!41593)) (BytesLiteralValue!6686 (value!204626 List!41593)) (CommentValue!13373 (value!204627 List!41593)) (StringLiteralValue!20060 (value!204628 List!41593)) (ErrorTokenValue!6686 (msg!6747 List!41593)) )
))
(declare-datatypes ((C!22908 0))(
  ( (C!22909 (val!13548 Int)) )
))
(declare-datatypes ((Regex!11361 0))(
  ( (ElementMatch!11361 (c!680214 C!22908)) (Concat!18048 (regOne!23234 Regex!11361) (regTwo!23234 Regex!11361)) (EmptyExpr!11361) (Star!11361 (reg!11690 Regex!11361)) (EmptyLang!11361) (Union!11361 (regOne!23235 Regex!11361) (regTwo!23235 Regex!11361)) )
))
(declare-datatypes ((String!47148 0))(
  ( (String!47149 (value!204629 String)) )
))
(declare-datatypes ((List!41594 0))(
  ( (Nil!41470) (Cons!41470 (h!46890 C!22908) (t!323407 List!41594)) )
))
(declare-datatypes ((IArray!25339 0))(
  ( (IArray!25340 (innerList!12727 List!41594)) )
))
(declare-datatypes ((Conc!12667 0))(
  ( (Node!12667 (left!31741 Conc!12667) (right!32071 Conc!12667) (csize!25564 Int) (cheight!12878 Int)) (Leaf!19602 (xs!15973 IArray!25339) (csize!25565 Int)) (Empty!12667) )
))
(declare-datatypes ((BalanceConc!24928 0))(
  ( (BalanceConc!24929 (c!680215 Conc!12667)) )
))
(declare-datatypes ((TokenValueInjection!12800 0))(
  ( (TokenValueInjection!12801 (toValue!8904 Int) (toChars!8763 Int)) )
))
(declare-datatypes ((Rule!12712 0))(
  ( (Rule!12713 (regex!6456 Regex!11361) (tag!7316 String!47148) (isSeparator!6456 Bool) (transformation!6456 TokenValueInjection!12800)) )
))
(declare-datatypes ((Token!12050 0))(
  ( (Token!12051 (value!204630 TokenValue!6686) (rule!9374 Rule!12712) (size!31135 Int) (originalCharacters!7056 List!41594)) )
))
(declare-datatypes ((List!41595 0))(
  ( (Nil!41471) (Cons!41471 (h!46891 Token!12050) (t!323408 List!41595)) )
))
(declare-fun prefixTokens!80 () List!41595)

(declare-fun e!2419441 () Bool)

(declare-fun inv!55658 (Token!12050) Bool)

(assert (=> b!3913260 (= e!2419426 (and (inv!55658 (h!46891 prefixTokens!80)) e!2419441 tp!1191170))))

(declare-fun b!3913261 () Bool)

(declare-fun e!2419442 () Bool)

(declare-fun e!2419429 () Bool)

(assert (=> b!3913261 (= e!2419442 e!2419429)))

(declare-fun res!1582753 () Bool)

(assert (=> b!3913261 (=> res!1582753 e!2419429)))

(declare-datatypes ((tuple2!40718 0))(
  ( (tuple2!40719 (_1!23493 Token!12050) (_2!23493 List!41594)) )
))
(declare-datatypes ((Option!8876 0))(
  ( (None!8875) (Some!8875 (v!39199 tuple2!40718)) )
))
(declare-fun lt!1363328 () Option!8876)

(declare-fun lt!1363329 () List!41594)

(declare-fun matchR!5450 (Regex!11361 List!41594) Bool)

(assert (=> b!3913261 (= res!1582753 (not (matchR!5450 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) lt!1363329)))))

(declare-fun lt!1363330 () TokenValue!6686)

(declare-datatypes ((LexerInterface!6045 0))(
  ( (LexerInterfaceExt!6042 (__x!25590 Int)) (Lexer!6043) )
))
(declare-fun thiss!20629 () LexerInterface!6045)

(declare-fun lt!1363332 () List!41594)

(declare-fun lt!1363338 () Int)

(declare-fun maxPrefixOneRule!2419 (LexerInterface!6045 Rule!12712 List!41594) Option!8876)

(assert (=> b!3913261 (= (maxPrefixOneRule!2419 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))) lt!1363332) (Some!8875 (tuple2!40719 (Token!12051 lt!1363330 (rule!9374 (_1!23493 (v!39199 lt!1363328))) lt!1363338 lt!1363329) (_2!23493 (v!39199 lt!1363328)))))))

(declare-datatypes ((Unit!59613 0))(
  ( (Unit!59614) )
))
(declare-fun lt!1363326 () Unit!59613)

(declare-datatypes ((List!41596 0))(
  ( (Nil!41472) (Cons!41472 (h!46892 Rule!12712) (t!323409 List!41596)) )
))
(declare-fun rules!2768 () List!41596)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1287 (LexerInterface!6045 List!41596 List!41594 List!41594 List!41594 Rule!12712) Unit!59613)

(assert (=> b!3913261 (= lt!1363326 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1287 thiss!20629 rules!2768 lt!1363329 lt!1363332 (_2!23493 (v!39199 lt!1363328)) (rule!9374 (_1!23493 (v!39199 lt!1363328)))))))

(declare-fun b!3913262 () Bool)

(declare-fun e!2419431 () Bool)

(declare-fun size!31136 (List!41594) Int)

(assert (=> b!3913262 (= e!2419431 (= (size!31135 (_1!23493 (v!39199 lt!1363328))) (size!31136 (originalCharacters!7056 (_1!23493 (v!39199 lt!1363328))))))))

(declare-fun b!3913263 () Bool)

(declare-fun res!1582750 () Bool)

(declare-fun e!2419425 () Bool)

(assert (=> b!3913263 (=> (not res!1582750) (not e!2419425))))

(declare-fun isEmpty!24672 (List!41595) Bool)

(assert (=> b!3913263 (= res!1582750 (not (isEmpty!24672 prefixTokens!80)))))

(declare-fun b!3913264 () Bool)

(declare-fun res!1582763 () Bool)

(declare-fun e!2419436 () Bool)

(assert (=> b!3913264 (=> (not res!1582763) (not e!2419436))))

(declare-fun suffixResult!91 () List!41594)

(declare-fun suffix!1176 () List!41594)

(declare-fun suffixTokens!72 () List!41595)

(declare-datatypes ((tuple2!40720 0))(
  ( (tuple2!40721 (_1!23494 List!41595) (_2!23494 List!41594)) )
))
(declare-fun lexList!1813 (LexerInterface!6045 List!41596 List!41594) tuple2!40720)

(assert (=> b!3913264 (= res!1582763 (= (lexList!1813 thiss!20629 rules!2768 suffix!1176) (tuple2!40721 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3913265 () Bool)

(declare-fun e!2419424 () Bool)

(declare-fun tp_is_empty!19693 () Bool)

(declare-fun tp!1191158 () Bool)

(assert (=> b!3913265 (= e!2419424 (and tp_is_empty!19693 tp!1191158))))

(declare-fun tp!1191165 () Bool)

(declare-fun e!2419428 () Bool)

(declare-fun b!3913266 () Bool)

(declare-fun e!2419432 () Bool)

(declare-fun inv!21 (TokenValue!6686) Bool)

(assert (=> b!3913266 (= e!2419428 (and (inv!21 (value!204630 (h!46891 suffixTokens!72))) e!2419432 tp!1191165))))

(declare-fun b!3913267 () Bool)

(declare-fun e!2419451 () Bool)

(declare-fun e!2419433 () Bool)

(assert (=> b!3913267 (= e!2419451 e!2419433)))

(declare-fun res!1582752 () Bool)

(assert (=> b!3913267 (=> res!1582752 e!2419433)))

(declare-fun lt!1363333 () Int)

(declare-fun lt!1363337 () Int)

(assert (=> b!3913267 (= res!1582752 (>= lt!1363333 lt!1363337))))

(assert (=> b!3913267 (= lt!1363337 (size!31136 suffix!1176))))

(assert (=> b!3913267 (= lt!1363333 (size!31136 (_2!23493 (v!39199 lt!1363328))))))

(declare-fun res!1582759 () Bool)

(assert (=> start!366600 (=> (not res!1582759) (not e!2419425))))

(get-info :version)

(assert (=> start!366600 (= res!1582759 ((_ is Lexer!6043) thiss!20629))))

(assert (=> start!366600 e!2419425))

(declare-fun e!2419443 () Bool)

(assert (=> start!366600 e!2419443))

(assert (=> start!366600 true))

(assert (=> start!366600 e!2419424))

(declare-fun e!2419434 () Bool)

(assert (=> start!366600 e!2419434))

(assert (=> start!366600 e!2419426))

(declare-fun e!2419440 () Bool)

(assert (=> start!366600 e!2419440))

(declare-fun e!2419437 () Bool)

(assert (=> start!366600 e!2419437))

(declare-fun b!3913268 () Bool)

(declare-fun res!1582754 () Bool)

(assert (=> b!3913268 (=> (not res!1582754) (not e!2419425))))

(declare-fun rulesInvariant!5388 (LexerInterface!6045 List!41596) Bool)

(assert (=> b!3913268 (= res!1582754 (rulesInvariant!5388 thiss!20629 rules!2768))))

(declare-fun b!3913269 () Bool)

(declare-fun e!2419444 () Bool)

(declare-fun lt!1363324 () Token!12050)

(assert (=> b!3913269 (= e!2419444 (= prefixTokens!80 (Cons!41471 lt!1363324 Nil!41471)))))

(declare-fun e!2419449 () Bool)

(assert (=> b!3913270 (= e!2419449 (and tp!1191167 tp!1191173))))

(declare-fun b!3913271 () Bool)

(declare-fun tp!1191161 () Bool)

(assert (=> b!3913271 (= e!2419440 (and (inv!55658 (h!46891 suffixTokens!72)) e!2419428 tp!1191161))))

(declare-fun b!3913272 () Bool)

(declare-fun res!1582757 () Bool)

(assert (=> b!3913272 (=> (not res!1582757) (not e!2419425))))

(declare-fun prefix!426 () List!41594)

(declare-fun isEmpty!24673 (List!41594) Bool)

(assert (=> b!3913272 (= res!1582757 (not (isEmpty!24673 prefix!426)))))

(declare-fun b!3913273 () Bool)

(declare-fun e!2419439 () Bool)

(assert (=> b!3913273 (= e!2419439 (not e!2419451))))

(declare-fun res!1582747 () Bool)

(assert (=> b!3913273 (=> res!1582747 e!2419451)))

(declare-fun lt!1363319 () List!41594)

(assert (=> b!3913273 (= res!1582747 (not (= lt!1363319 lt!1363332)))))

(declare-fun lt!1363331 () tuple2!40720)

(assert (=> b!3913273 (= lt!1363331 (lexList!1813 thiss!20629 rules!2768 (_2!23493 (v!39199 lt!1363328))))))

(declare-fun lt!1363321 () List!41594)

(assert (=> b!3913273 (and (= (size!31135 (_1!23493 (v!39199 lt!1363328))) lt!1363338) (= (originalCharacters!7056 (_1!23493 (v!39199 lt!1363328))) lt!1363329) (= (v!39199 lt!1363328) (tuple2!40719 (Token!12051 lt!1363330 (rule!9374 (_1!23493 (v!39199 lt!1363328))) lt!1363338 lt!1363329) lt!1363321)))))

(assert (=> b!3913273 (= lt!1363338 (size!31136 lt!1363329))))

(assert (=> b!3913273 e!2419431))

(declare-fun res!1582756 () Bool)

(assert (=> b!3913273 (=> (not res!1582756) (not e!2419431))))

(assert (=> b!3913273 (= res!1582756 (= (value!204630 (_1!23493 (v!39199 lt!1363328))) lt!1363330))))

(declare-fun apply!9695 (TokenValueInjection!12800 BalanceConc!24928) TokenValue!6686)

(declare-fun seqFromList!4723 (List!41594) BalanceConc!24928)

(assert (=> b!3913273 (= lt!1363330 (apply!9695 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (seqFromList!4723 lt!1363329)))))

(assert (=> b!3913273 (= (_2!23493 (v!39199 lt!1363328)) lt!1363321)))

(declare-fun lt!1363339 () Unit!59613)

(declare-fun lemmaSamePrefixThenSameSuffix!1772 (List!41594 List!41594 List!41594 List!41594 List!41594) Unit!59613)

(assert (=> b!3913273 (= lt!1363339 (lemmaSamePrefixThenSameSuffix!1772 lt!1363329 (_2!23493 (v!39199 lt!1363328)) lt!1363329 lt!1363321 lt!1363332))))

(declare-fun getSuffix!2006 (List!41594 List!41594) List!41594)

(assert (=> b!3913273 (= lt!1363321 (getSuffix!2006 lt!1363332 lt!1363329))))

(declare-fun isPrefix!3551 (List!41594 List!41594) Bool)

(assert (=> b!3913273 (isPrefix!3551 lt!1363329 lt!1363319)))

(declare-fun ++!10669 (List!41594 List!41594) List!41594)

(assert (=> b!3913273 (= lt!1363319 (++!10669 lt!1363329 (_2!23493 (v!39199 lt!1363328))))))

(declare-fun lt!1363325 () Unit!59613)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2414 (List!41594 List!41594) Unit!59613)

(assert (=> b!3913273 (= lt!1363325 (lemmaConcatTwoListThenFirstIsPrefix!2414 lt!1363329 (_2!23493 (v!39199 lt!1363328))))))

(declare-fun list!15417 (BalanceConc!24928) List!41594)

(declare-fun charsOf!4280 (Token!12050) BalanceConc!24928)

(assert (=> b!3913273 (= lt!1363329 (list!15417 (charsOf!4280 (_1!23493 (v!39199 lt!1363328)))))))

(declare-fun ruleValid!2404 (LexerInterface!6045 Rule!12712) Bool)

(assert (=> b!3913273 (ruleValid!2404 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))

(declare-fun lt!1363320 () Unit!59613)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1484 (LexerInterface!6045 Rule!12712 List!41596) Unit!59613)

(assert (=> b!3913273 (= lt!1363320 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1484 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))) rules!2768))))

(declare-fun lt!1363336 () Unit!59613)

(declare-fun lemmaCharactersSize!1113 (Token!12050) Unit!59613)

(assert (=> b!3913273 (= lt!1363336 (lemmaCharactersSize!1113 (_1!23493 (v!39199 lt!1363328))))))

(declare-fun b!3913274 () Bool)

(declare-fun res!1582746 () Bool)

(assert (=> b!3913274 (=> res!1582746 e!2419444)))

(declare-fun tail!5981 (List!41595) List!41595)

(assert (=> b!3913274 (= res!1582746 (not (isEmpty!24672 (tail!5981 prefixTokens!80))))))

(declare-fun b!3913275 () Bool)

(assert (=> b!3913275 (= e!2419425 e!2419436)))

(declare-fun res!1582745 () Bool)

(assert (=> b!3913275 (=> (not res!1582745) (not e!2419436))))

(declare-fun lt!1363334 () List!41595)

(declare-fun lt!1363322 () tuple2!40720)

(assert (=> b!3913275 (= res!1582745 (= lt!1363322 (tuple2!40721 lt!1363334 suffixResult!91)))))

(assert (=> b!3913275 (= lt!1363322 (lexList!1813 thiss!20629 rules!2768 lt!1363332))))

(declare-fun ++!10670 (List!41595 List!41595) List!41595)

(assert (=> b!3913275 (= lt!1363334 (++!10670 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3913275 (= lt!1363332 (++!10669 prefix!426 suffix!1176))))

(declare-fun e!2419448 () Bool)

(assert (=> b!3913276 (= e!2419448 (and tp!1191174 tp!1191162))))

(declare-fun b!3913277 () Bool)

(declare-fun e!2419452 () Bool)

(declare-fun tp!1191164 () Bool)

(declare-fun inv!55655 (String!47148) Bool)

(declare-fun inv!55659 (TokenValueInjection!12800) Bool)

(assert (=> b!3913277 (= e!2419452 (and tp!1191164 (inv!55655 (tag!7316 (rule!9374 (h!46891 prefixTokens!80)))) (inv!55659 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) e!2419448))))

(declare-fun b!3913278 () Bool)

(declare-fun e!2419445 () Bool)

(assert (=> b!3913278 (= e!2419445 e!2419442)))

(declare-fun res!1582749 () Bool)

(assert (=> b!3913278 (=> res!1582749 e!2419442)))

(declare-fun lt!1363327 () Int)

(declare-fun lt!1363323 () Int)

(assert (=> b!3913278 (= res!1582749 (or (not (= (+ lt!1363323 lt!1363337) lt!1363327)) (<= lt!1363338 lt!1363323)))))

(assert (=> b!3913278 (= lt!1363323 (size!31136 prefix!426))))

(declare-fun tp!1191163 () Bool)

(declare-fun b!3913279 () Bool)

(assert (=> b!3913279 (= e!2419432 (and tp!1191163 (inv!55655 (tag!7316 (rule!9374 (h!46891 suffixTokens!72)))) (inv!55659 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) e!2419449))))

(declare-fun b!3913280 () Bool)

(declare-fun res!1582755 () Bool)

(assert (=> b!3913280 (=> (not res!1582755) (not e!2419425))))

(declare-fun isEmpty!24674 (List!41596) Bool)

(assert (=> b!3913280 (= res!1582755 (not (isEmpty!24674 rules!2768)))))

(declare-fun b!3913281 () Bool)

(assert (=> b!3913281 (= e!2419436 e!2419439)))

(declare-fun res!1582751 () Bool)

(assert (=> b!3913281 (=> (not res!1582751) (not e!2419439))))

(assert (=> b!3913281 (= res!1582751 ((_ is Some!8875) lt!1363328))))

(declare-fun maxPrefix!3349 (LexerInterface!6045 List!41596 List!41594) Option!8876)

(assert (=> b!3913281 (= lt!1363328 (maxPrefix!3349 thiss!20629 rules!2768 lt!1363332))))

(declare-fun b!3913282 () Bool)

(declare-fun tp!1191160 () Bool)

(assert (=> b!3913282 (= e!2419443 (and tp_is_empty!19693 tp!1191160))))

(declare-fun b!3913283 () Bool)

(declare-fun res!1582748 () Bool)

(assert (=> b!3913283 (=> res!1582748 e!2419444)))

(declare-fun lt!1363335 () tuple2!40718)

(assert (=> b!3913283 (= res!1582748 (>= (size!31136 (_2!23493 lt!1363335)) lt!1363337))))

(declare-fun b!3913284 () Bool)

(assert (=> b!3913284 (= e!2419429 e!2419444)))

(declare-fun res!1582758 () Bool)

(assert (=> b!3913284 (=> res!1582758 e!2419444)))

(assert (=> b!3913284 (= res!1582758 (not (= (_1!23493 lt!1363335) lt!1363324)))))

(declare-fun head!8265 (List!41595) Token!12050)

(assert (=> b!3913284 (= lt!1363324 (head!8265 prefixTokens!80))))

(declare-fun get!13704 (Option!8876) tuple2!40718)

(assert (=> b!3913284 (= lt!1363335 (get!13704 lt!1363328))))

(declare-fun tp!1191172 () Bool)

(declare-fun b!3913285 () Bool)

(assert (=> b!3913285 (= e!2419441 (and (inv!21 (value!204630 (h!46891 prefixTokens!80))) e!2419452 tp!1191172))))

(declare-fun b!3913286 () Bool)

(declare-fun tp!1191166 () Bool)

(assert (=> b!3913286 (= e!2419437 (and tp_is_empty!19693 tp!1191166))))

(declare-fun b!3913287 () Bool)

(declare-fun e!2419435 () Bool)

(declare-fun tp!1191171 () Bool)

(assert (=> b!3913287 (= e!2419434 (and e!2419435 tp!1191171))))

(declare-fun b!3913288 () Bool)

(declare-fun res!1582760 () Bool)

(assert (=> b!3913288 (=> res!1582760 e!2419451)))

(assert (=> b!3913288 (= res!1582760 (not (= lt!1363322 (tuple2!40721 (++!10670 (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471) (_1!23494 lt!1363331)) (_2!23494 lt!1363331)))))))

(declare-fun e!2419447 () Bool)

(assert (=> b!3913289 (= e!2419447 (and tp!1191168 tp!1191159))))

(declare-fun b!3913290 () Bool)

(assert (=> b!3913290 (= e!2419433 e!2419445)))

(declare-fun res!1582761 () Bool)

(assert (=> b!3913290 (=> res!1582761 e!2419445)))

(assert (=> b!3913290 (= res!1582761 (not (= (+ lt!1363338 lt!1363333) lt!1363327)))))

(assert (=> b!3913290 (= lt!1363327 (size!31136 lt!1363332))))

(declare-fun tp!1191169 () Bool)

(declare-fun b!3913291 () Bool)

(assert (=> b!3913291 (= e!2419435 (and tp!1191169 (inv!55655 (tag!7316 (h!46892 rules!2768))) (inv!55659 (transformation!6456 (h!46892 rules!2768))) e!2419447))))

(declare-fun b!3913292 () Bool)

(declare-fun res!1582762 () Bool)

(assert (=> b!3913292 (=> res!1582762 e!2419451)))

(assert (=> b!3913292 (= res!1582762 (or (not (= lt!1363331 (tuple2!40721 (_1!23494 lt!1363331) (_2!23494 lt!1363331)))) (= (_2!23493 (v!39199 lt!1363328)) suffix!1176)))))

(assert (= (and start!366600 res!1582759) b!3913280))

(assert (= (and b!3913280 res!1582755) b!3913268))

(assert (= (and b!3913268 res!1582754) b!3913263))

(assert (= (and b!3913263 res!1582750) b!3913272))

(assert (= (and b!3913272 res!1582757) b!3913275))

(assert (= (and b!3913275 res!1582745) b!3913264))

(assert (= (and b!3913264 res!1582763) b!3913281))

(assert (= (and b!3913281 res!1582751) b!3913273))

(assert (= (and b!3913273 res!1582756) b!3913262))

(assert (= (and b!3913273 (not res!1582747)) b!3913288))

(assert (= (and b!3913288 (not res!1582760)) b!3913292))

(assert (= (and b!3913292 (not res!1582762)) b!3913267))

(assert (= (and b!3913267 (not res!1582752)) b!3913290))

(assert (= (and b!3913290 (not res!1582761)) b!3913278))

(assert (= (and b!3913278 (not res!1582749)) b!3913261))

(assert (= (and b!3913261 (not res!1582753)) b!3913284))

(assert (= (and b!3913284 (not res!1582758)) b!3913283))

(assert (= (and b!3913283 (not res!1582748)) b!3913274))

(assert (= (and b!3913274 (not res!1582746)) b!3913269))

(assert (= (and start!366600 ((_ is Cons!41470) suffixResult!91)) b!3913282))

(assert (= (and start!366600 ((_ is Cons!41470) suffix!1176)) b!3913265))

(assert (= b!3913291 b!3913289))

(assert (= b!3913287 b!3913291))

(assert (= (and start!366600 ((_ is Cons!41472) rules!2768)) b!3913287))

(assert (= b!3913277 b!3913276))

(assert (= b!3913285 b!3913277))

(assert (= b!3913260 b!3913285))

(assert (= (and start!366600 ((_ is Cons!41471) prefixTokens!80)) b!3913260))

(assert (= b!3913279 b!3913270))

(assert (= b!3913266 b!3913279))

(assert (= b!3913271 b!3913266))

(assert (= (and start!366600 ((_ is Cons!41471) suffixTokens!72)) b!3913271))

(assert (= (and start!366600 ((_ is Cons!41470) prefix!426)) b!3913286))

(declare-fun m!4476631 () Bool)

(assert (=> b!3913268 m!4476631))

(declare-fun m!4476633 () Bool)

(assert (=> b!3913275 m!4476633))

(declare-fun m!4476635 () Bool)

(assert (=> b!3913275 m!4476635))

(declare-fun m!4476637 () Bool)

(assert (=> b!3913275 m!4476637))

(declare-fun m!4476639 () Bool)

(assert (=> b!3913278 m!4476639))

(declare-fun m!4476641 () Bool)

(assert (=> b!3913283 m!4476641))

(declare-fun m!4476643 () Bool)

(assert (=> b!3913280 m!4476643))

(declare-fun m!4476645 () Bool)

(assert (=> b!3913279 m!4476645))

(declare-fun m!4476647 () Bool)

(assert (=> b!3913279 m!4476647))

(declare-fun m!4476649 () Bool)

(assert (=> b!3913261 m!4476649))

(declare-fun m!4476651 () Bool)

(assert (=> b!3913261 m!4476651))

(declare-fun m!4476653 () Bool)

(assert (=> b!3913261 m!4476653))

(declare-fun m!4476655 () Bool)

(assert (=> b!3913272 m!4476655))

(declare-fun m!4476657 () Bool)

(assert (=> b!3913264 m!4476657))

(declare-fun m!4476659 () Bool)

(assert (=> b!3913281 m!4476659))

(declare-fun m!4476661 () Bool)

(assert (=> b!3913274 m!4476661))

(assert (=> b!3913274 m!4476661))

(declare-fun m!4476663 () Bool)

(assert (=> b!3913274 m!4476663))

(declare-fun m!4476665 () Bool)

(assert (=> b!3913271 m!4476665))

(declare-fun m!4476667 () Bool)

(assert (=> b!3913277 m!4476667))

(declare-fun m!4476669 () Bool)

(assert (=> b!3913277 m!4476669))

(declare-fun m!4476671 () Bool)

(assert (=> b!3913260 m!4476671))

(declare-fun m!4476673 () Bool)

(assert (=> b!3913288 m!4476673))

(declare-fun m!4476675 () Bool)

(assert (=> b!3913273 m!4476675))

(declare-fun m!4476677 () Bool)

(assert (=> b!3913273 m!4476677))

(declare-fun m!4476679 () Bool)

(assert (=> b!3913273 m!4476679))

(declare-fun m!4476681 () Bool)

(assert (=> b!3913273 m!4476681))

(declare-fun m!4476683 () Bool)

(assert (=> b!3913273 m!4476683))

(declare-fun m!4476685 () Bool)

(assert (=> b!3913273 m!4476685))

(declare-fun m!4476687 () Bool)

(assert (=> b!3913273 m!4476687))

(declare-fun m!4476689 () Bool)

(assert (=> b!3913273 m!4476689))

(declare-fun m!4476691 () Bool)

(assert (=> b!3913273 m!4476691))

(declare-fun m!4476693 () Bool)

(assert (=> b!3913273 m!4476693))

(declare-fun m!4476695 () Bool)

(assert (=> b!3913273 m!4476695))

(assert (=> b!3913273 m!4476687))

(declare-fun m!4476697 () Bool)

(assert (=> b!3913273 m!4476697))

(declare-fun m!4476699 () Bool)

(assert (=> b!3913273 m!4476699))

(assert (=> b!3913273 m!4476691))

(declare-fun m!4476701 () Bool)

(assert (=> b!3913273 m!4476701))

(declare-fun m!4476703 () Bool)

(assert (=> b!3913263 m!4476703))

(declare-fun m!4476705 () Bool)

(assert (=> b!3913267 m!4476705))

(declare-fun m!4476707 () Bool)

(assert (=> b!3913267 m!4476707))

(declare-fun m!4476709 () Bool)

(assert (=> b!3913290 m!4476709))

(declare-fun m!4476711 () Bool)

(assert (=> b!3913266 m!4476711))

(declare-fun m!4476713 () Bool)

(assert (=> b!3913284 m!4476713))

(declare-fun m!4476715 () Bool)

(assert (=> b!3913284 m!4476715))

(declare-fun m!4476717 () Bool)

(assert (=> b!3913262 m!4476717))

(declare-fun m!4476719 () Bool)

(assert (=> b!3913291 m!4476719))

(declare-fun m!4476721 () Bool)

(assert (=> b!3913291 m!4476721))

(declare-fun m!4476723 () Bool)

(assert (=> b!3913285 m!4476723))

(check-sat b_and!297837 (not b!3913267) (not b!3913290) (not b!3913266) (not b!3913265) (not b!3913286) b_and!297827 (not b!3913281) (not b!3913268) (not b!3913283) (not b!3913263) tp_is_empty!19693 (not b_next!106893) (not b!3913271) b_and!297835 (not b!3913264) (not b_next!106895) (not b!3913274) (not b!3913279) (not b!3913261) (not b!3913288) (not b!3913287) (not b_next!106887) (not b_next!106885) (not b_next!106891) (not b!3913285) (not b!3913282) (not b!3913272) (not b!3913284) b_and!297829 (not b!3913262) b_and!297833 (not b!3913260) (not b!3913278) (not b!3913273) (not b!3913275) b_and!297831 (not b!3913291) (not b_next!106889) (not b!3913277) (not b!3913280))
(check-sat (not b_next!106893) b_and!297837 b_and!297835 (not b_next!106895) (not b_next!106887) b_and!297827 b_and!297831 (not b_next!106889) (not b_next!106885) (not b_next!106891) b_and!297829 b_and!297833)
(get-model)

(declare-fun b!3913311 () Bool)

(declare-fun res!1582786 () Bool)

(declare-fun e!2419459 () Bool)

(assert (=> b!3913311 (=> (not res!1582786) (not e!2419459))))

(declare-fun lt!1363354 () Option!8876)

(assert (=> b!3913311 (= res!1582786 (matchR!5450 (regex!6456 (rule!9374 (_1!23493 (get!13704 lt!1363354)))) (list!15417 (charsOf!4280 (_1!23493 (get!13704 lt!1363354))))))))

(declare-fun b!3913312 () Bool)

(declare-fun res!1582787 () Bool)

(assert (=> b!3913312 (=> (not res!1582787) (not e!2419459))))

(assert (=> b!3913312 (= res!1582787 (= (list!15417 (charsOf!4280 (_1!23493 (get!13704 lt!1363354)))) (originalCharacters!7056 (_1!23493 (get!13704 lt!1363354)))))))

(declare-fun b!3913313 () Bool)

(declare-fun contains!8334 (List!41596 Rule!12712) Bool)

(assert (=> b!3913313 (= e!2419459 (contains!8334 rules!2768 (rule!9374 (_1!23493 (get!13704 lt!1363354)))))))

(declare-fun b!3913314 () Bool)

(declare-fun res!1582784 () Bool)

(assert (=> b!3913314 (=> (not res!1582784) (not e!2419459))))

(assert (=> b!3913314 (= res!1582784 (= (++!10669 (list!15417 (charsOf!4280 (_1!23493 (get!13704 lt!1363354)))) (_2!23493 (get!13704 lt!1363354))) lt!1363332))))

(declare-fun b!3913315 () Bool)

(declare-fun e!2419460 () Bool)

(assert (=> b!3913315 (= e!2419460 e!2419459)))

(declare-fun res!1582782 () Bool)

(assert (=> b!3913315 (=> (not res!1582782) (not e!2419459))))

(declare-fun isDefined!6920 (Option!8876) Bool)

(assert (=> b!3913315 (= res!1582782 (isDefined!6920 lt!1363354))))

(declare-fun d!1160931 () Bool)

(assert (=> d!1160931 e!2419460))

(declare-fun res!1582788 () Bool)

(assert (=> d!1160931 (=> res!1582788 e!2419460)))

(declare-fun isEmpty!24675 (Option!8876) Bool)

(assert (=> d!1160931 (= res!1582788 (isEmpty!24675 lt!1363354))))

(declare-fun e!2419461 () Option!8876)

(assert (=> d!1160931 (= lt!1363354 e!2419461)))

(declare-fun c!680218 () Bool)

(assert (=> d!1160931 (= c!680218 (and ((_ is Cons!41472) rules!2768) ((_ is Nil!41472) (t!323409 rules!2768))))))

(declare-fun lt!1363353 () Unit!59613)

(declare-fun lt!1363350 () Unit!59613)

(assert (=> d!1160931 (= lt!1363353 lt!1363350)))

(assert (=> d!1160931 (isPrefix!3551 lt!1363332 lt!1363332)))

(declare-fun lemmaIsPrefixRefl!2251 (List!41594 List!41594) Unit!59613)

(assert (=> d!1160931 (= lt!1363350 (lemmaIsPrefixRefl!2251 lt!1363332 lt!1363332))))

(declare-fun rulesValidInductive!2321 (LexerInterface!6045 List!41596) Bool)

(assert (=> d!1160931 (rulesValidInductive!2321 thiss!20629 rules!2768)))

(assert (=> d!1160931 (= (maxPrefix!3349 thiss!20629 rules!2768 lt!1363332) lt!1363354)))

(declare-fun b!3913316 () Bool)

(declare-fun res!1582783 () Bool)

(assert (=> b!3913316 (=> (not res!1582783) (not e!2419459))))

(assert (=> b!3913316 (= res!1582783 (= (value!204630 (_1!23493 (get!13704 lt!1363354))) (apply!9695 (transformation!6456 (rule!9374 (_1!23493 (get!13704 lt!1363354)))) (seqFromList!4723 (originalCharacters!7056 (_1!23493 (get!13704 lt!1363354)))))))))

(declare-fun b!3913317 () Bool)

(declare-fun call!284403 () Option!8876)

(assert (=> b!3913317 (= e!2419461 call!284403)))

(declare-fun b!3913318 () Bool)

(declare-fun lt!1363352 () Option!8876)

(declare-fun lt!1363351 () Option!8876)

(assert (=> b!3913318 (= e!2419461 (ite (and ((_ is None!8875) lt!1363352) ((_ is None!8875) lt!1363351)) None!8875 (ite ((_ is None!8875) lt!1363351) lt!1363352 (ite ((_ is None!8875) lt!1363352) lt!1363351 (ite (>= (size!31135 (_1!23493 (v!39199 lt!1363352))) (size!31135 (_1!23493 (v!39199 lt!1363351)))) lt!1363352 lt!1363351)))))))

(assert (=> b!3913318 (= lt!1363352 call!284403)))

(assert (=> b!3913318 (= lt!1363351 (maxPrefix!3349 thiss!20629 (t!323409 rules!2768) lt!1363332))))

(declare-fun b!3913319 () Bool)

(declare-fun res!1582785 () Bool)

(assert (=> b!3913319 (=> (not res!1582785) (not e!2419459))))

(assert (=> b!3913319 (= res!1582785 (< (size!31136 (_2!23493 (get!13704 lt!1363354))) (size!31136 lt!1363332)))))

(declare-fun bm!284398 () Bool)

(assert (=> bm!284398 (= call!284403 (maxPrefixOneRule!2419 thiss!20629 (h!46892 rules!2768) lt!1363332))))

(assert (= (and d!1160931 c!680218) b!3913317))

(assert (= (and d!1160931 (not c!680218)) b!3913318))

(assert (= (or b!3913317 b!3913318) bm!284398))

(assert (= (and d!1160931 (not res!1582788)) b!3913315))

(assert (= (and b!3913315 res!1582782) b!3913312))

(assert (= (and b!3913312 res!1582787) b!3913319))

(assert (= (and b!3913319 res!1582785) b!3913314))

(assert (= (and b!3913314 res!1582784) b!3913316))

(assert (= (and b!3913316 res!1582783) b!3913311))

(assert (= (and b!3913311 res!1582786) b!3913313))

(declare-fun m!4476725 () Bool)

(assert (=> b!3913312 m!4476725))

(declare-fun m!4476727 () Bool)

(assert (=> b!3913312 m!4476727))

(assert (=> b!3913312 m!4476727))

(declare-fun m!4476729 () Bool)

(assert (=> b!3913312 m!4476729))

(assert (=> b!3913311 m!4476725))

(assert (=> b!3913311 m!4476727))

(assert (=> b!3913311 m!4476727))

(assert (=> b!3913311 m!4476729))

(assert (=> b!3913311 m!4476729))

(declare-fun m!4476731 () Bool)

(assert (=> b!3913311 m!4476731))

(declare-fun m!4476733 () Bool)

(assert (=> b!3913315 m!4476733))

(assert (=> b!3913314 m!4476725))

(assert (=> b!3913314 m!4476727))

(assert (=> b!3913314 m!4476727))

(assert (=> b!3913314 m!4476729))

(assert (=> b!3913314 m!4476729))

(declare-fun m!4476735 () Bool)

(assert (=> b!3913314 m!4476735))

(declare-fun m!4476737 () Bool)

(assert (=> bm!284398 m!4476737))

(assert (=> b!3913319 m!4476725))

(declare-fun m!4476739 () Bool)

(assert (=> b!3913319 m!4476739))

(assert (=> b!3913319 m!4476709))

(assert (=> b!3913313 m!4476725))

(declare-fun m!4476741 () Bool)

(assert (=> b!3913313 m!4476741))

(assert (=> b!3913316 m!4476725))

(declare-fun m!4476743 () Bool)

(assert (=> b!3913316 m!4476743))

(assert (=> b!3913316 m!4476743))

(declare-fun m!4476745 () Bool)

(assert (=> b!3913316 m!4476745))

(declare-fun m!4476747 () Bool)

(assert (=> d!1160931 m!4476747))

(declare-fun m!4476749 () Bool)

(assert (=> d!1160931 m!4476749))

(declare-fun m!4476751 () Bool)

(assert (=> d!1160931 m!4476751))

(declare-fun m!4476753 () Bool)

(assert (=> d!1160931 m!4476753))

(declare-fun m!4476755 () Bool)

(assert (=> b!3913318 m!4476755))

(assert (=> b!3913281 d!1160931))

(declare-fun d!1160933 () Bool)

(declare-fun res!1582796 () Bool)

(declare-fun e!2419464 () Bool)

(assert (=> d!1160933 (=> (not res!1582796) (not e!2419464))))

(assert (=> d!1160933 (= res!1582796 (not (isEmpty!24673 (originalCharacters!7056 (h!46891 prefixTokens!80)))))))

(assert (=> d!1160933 (= (inv!55658 (h!46891 prefixTokens!80)) e!2419464)))

(declare-fun b!3913324 () Bool)

(declare-fun res!1582797 () Bool)

(assert (=> b!3913324 (=> (not res!1582797) (not e!2419464))))

(declare-fun dynLambda!17815 (Int TokenValue!6686) BalanceConc!24928)

(assert (=> b!3913324 (= res!1582797 (= (originalCharacters!7056 (h!46891 prefixTokens!80)) (list!15417 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (value!204630 (h!46891 prefixTokens!80))))))))

(declare-fun b!3913325 () Bool)

(assert (=> b!3913325 (= e!2419464 (= (size!31135 (h!46891 prefixTokens!80)) (size!31136 (originalCharacters!7056 (h!46891 prefixTokens!80)))))))

(assert (= (and d!1160933 res!1582796) b!3913324))

(assert (= (and b!3913324 res!1582797) b!3913325))

(declare-fun b_lambda!114575 () Bool)

(assert (=> (not b_lambda!114575) (not b!3913324)))

(declare-fun t!323411 () Bool)

(declare-fun tb!233093 () Bool)

(assert (=> (and b!3913276 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))) t!323411) tb!233093))

(declare-fun b!3913330 () Bool)

(declare-fun e!2419467 () Bool)

(declare-fun tp!1191177 () Bool)

(declare-fun inv!55660 (Conc!12667) Bool)

(assert (=> b!3913330 (= e!2419467 (and (inv!55660 (c!680215 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (value!204630 (h!46891 prefixTokens!80))))) tp!1191177))))

(declare-fun result!282498 () Bool)

(declare-fun inv!55661 (BalanceConc!24928) Bool)

(assert (=> tb!233093 (= result!282498 (and (inv!55661 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (value!204630 (h!46891 prefixTokens!80)))) e!2419467))))

(assert (= tb!233093 b!3913330))

(declare-fun m!4476757 () Bool)

(assert (=> b!3913330 m!4476757))

(declare-fun m!4476759 () Bool)

(assert (=> tb!233093 m!4476759))

(assert (=> b!3913324 t!323411))

(declare-fun b_and!297839 () Bool)

(assert (= b_and!297829 (and (=> t!323411 result!282498) b_and!297839)))

(declare-fun tb!233095 () Bool)

(declare-fun t!323413 () Bool)

(assert (=> (and b!3913270 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))) t!323413) tb!233095))

(declare-fun result!282502 () Bool)

(assert (= result!282502 result!282498))

(assert (=> b!3913324 t!323413))

(declare-fun b_and!297841 () Bool)

(assert (= b_and!297833 (and (=> t!323413 result!282502) b_and!297841)))

(declare-fun t!323415 () Bool)

(declare-fun tb!233097 () Bool)

(assert (=> (and b!3913289 (= (toChars!8763 (transformation!6456 (h!46892 rules!2768))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))) t!323415) tb!233097))

(declare-fun result!282504 () Bool)

(assert (= result!282504 result!282498))

(assert (=> b!3913324 t!323415))

(declare-fun b_and!297843 () Bool)

(assert (= b_and!297837 (and (=> t!323415 result!282504) b_and!297843)))

(declare-fun m!4476761 () Bool)

(assert (=> d!1160933 m!4476761))

(declare-fun m!4476763 () Bool)

(assert (=> b!3913324 m!4476763))

(assert (=> b!3913324 m!4476763))

(declare-fun m!4476765 () Bool)

(assert (=> b!3913324 m!4476765))

(declare-fun m!4476767 () Bool)

(assert (=> b!3913325 m!4476767))

(assert (=> b!3913260 d!1160933))

(declare-fun d!1160935 () Bool)

(declare-fun lt!1363357 () Int)

(assert (=> d!1160935 (>= lt!1363357 0)))

(declare-fun e!2419470 () Int)

(assert (=> d!1160935 (= lt!1363357 e!2419470)))

(declare-fun c!680221 () Bool)

(assert (=> d!1160935 (= c!680221 ((_ is Nil!41470) (originalCharacters!7056 (_1!23493 (v!39199 lt!1363328)))))))

(assert (=> d!1160935 (= (size!31136 (originalCharacters!7056 (_1!23493 (v!39199 lt!1363328)))) lt!1363357)))

(declare-fun b!3913335 () Bool)

(assert (=> b!3913335 (= e!2419470 0)))

(declare-fun b!3913336 () Bool)

(assert (=> b!3913336 (= e!2419470 (+ 1 (size!31136 (t!323407 (originalCharacters!7056 (_1!23493 (v!39199 lt!1363328)))))))))

(assert (= (and d!1160935 c!680221) b!3913335))

(assert (= (and d!1160935 (not c!680221)) b!3913336))

(declare-fun m!4476769 () Bool)

(assert (=> b!3913336 m!4476769))

(assert (=> b!3913262 d!1160935))

(declare-fun b!3913399 () Bool)

(declare-fun e!2419507 () Bool)

(declare-fun head!8266 (List!41594) C!22908)

(assert (=> b!3913399 (= e!2419507 (not (= (head!8266 lt!1363329) (c!680214 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))))))

(declare-fun b!3913400 () Bool)

(declare-fun e!2419508 () Bool)

(declare-fun e!2419502 () Bool)

(assert (=> b!3913400 (= e!2419508 e!2419502)))

(declare-fun c!680238 () Bool)

(assert (=> b!3913400 (= c!680238 ((_ is EmptyLang!11361) (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))))

(declare-fun b!3913401 () Bool)

(declare-fun lt!1363365 () Bool)

(assert (=> b!3913401 (= e!2419502 (not lt!1363365))))

(declare-fun b!3913402 () Bool)

(declare-fun res!1582834 () Bool)

(declare-fun e!2419504 () Bool)

(assert (=> b!3913402 (=> (not res!1582834) (not e!2419504))))

(declare-fun tail!5982 (List!41594) List!41594)

(assert (=> b!3913402 (= res!1582834 (isEmpty!24673 (tail!5982 lt!1363329)))))

(declare-fun b!3913403 () Bool)

(declare-fun res!1582836 () Bool)

(assert (=> b!3913403 (=> res!1582836 e!2419507)))

(assert (=> b!3913403 (= res!1582836 (not (isEmpty!24673 (tail!5982 lt!1363329))))))

(declare-fun b!3913404 () Bool)

(declare-fun res!1582833 () Bool)

(assert (=> b!3913404 (=> (not res!1582833) (not e!2419504))))

(declare-fun call!284406 () Bool)

(assert (=> b!3913404 (= res!1582833 (not call!284406))))

(declare-fun b!3913405 () Bool)

(declare-fun res!1582832 () Bool)

(declare-fun e!2419505 () Bool)

(assert (=> b!3913405 (=> res!1582832 e!2419505)))

(assert (=> b!3913405 (= res!1582832 (not ((_ is ElementMatch!11361) (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))))))

(assert (=> b!3913405 (= e!2419502 e!2419505)))

(declare-fun b!3913406 () Bool)

(declare-fun res!1582835 () Bool)

(assert (=> b!3913406 (=> res!1582835 e!2419505)))

(assert (=> b!3913406 (= res!1582835 e!2419504)))

(declare-fun res!1582830 () Bool)

(assert (=> b!3913406 (=> (not res!1582830) (not e!2419504))))

(assert (=> b!3913406 (= res!1582830 lt!1363365)))

(declare-fun b!3913407 () Bool)

(declare-fun e!2419503 () Bool)

(assert (=> b!3913407 (= e!2419505 e!2419503)))

(declare-fun res!1582831 () Bool)

(assert (=> b!3913407 (=> (not res!1582831) (not e!2419503))))

(assert (=> b!3913407 (= res!1582831 (not lt!1363365))))

(declare-fun bm!284401 () Bool)

(assert (=> bm!284401 (= call!284406 (isEmpty!24673 lt!1363329))))

(declare-fun b!3913409 () Bool)

(declare-fun e!2419506 () Bool)

(declare-fun derivativeStep!3437 (Regex!11361 C!22908) Regex!11361)

(assert (=> b!3913409 (= e!2419506 (matchR!5450 (derivativeStep!3437 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (head!8266 lt!1363329)) (tail!5982 lt!1363329)))))

(declare-fun b!3913410 () Bool)

(assert (=> b!3913410 (= e!2419503 e!2419507)))

(declare-fun res!1582837 () Bool)

(assert (=> b!3913410 (=> res!1582837 e!2419507)))

(assert (=> b!3913410 (= res!1582837 call!284406)))

(declare-fun b!3913411 () Bool)

(assert (=> b!3913411 (= e!2419504 (= (head!8266 lt!1363329) (c!680214 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))))))

(declare-fun b!3913412 () Bool)

(declare-fun nullable!3972 (Regex!11361) Bool)

(assert (=> b!3913412 (= e!2419506 (nullable!3972 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))))

(declare-fun b!3913408 () Bool)

(assert (=> b!3913408 (= e!2419508 (= lt!1363365 call!284406))))

(declare-fun d!1160937 () Bool)

(assert (=> d!1160937 e!2419508))

(declare-fun c!680237 () Bool)

(assert (=> d!1160937 (= c!680237 ((_ is EmptyExpr!11361) (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))))

(assert (=> d!1160937 (= lt!1363365 e!2419506)))

(declare-fun c!680239 () Bool)

(assert (=> d!1160937 (= c!680239 (isEmpty!24673 lt!1363329))))

(declare-fun validRegex!5171 (Regex!11361) Bool)

(assert (=> d!1160937 (validRegex!5171 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))))

(assert (=> d!1160937 (= (matchR!5450 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) lt!1363329) lt!1363365)))

(assert (= (and d!1160937 c!680239) b!3913412))

(assert (= (and d!1160937 (not c!680239)) b!3913409))

(assert (= (and d!1160937 c!680237) b!3913408))

(assert (= (and d!1160937 (not c!680237)) b!3913400))

(assert (= (and b!3913400 c!680238) b!3913401))

(assert (= (and b!3913400 (not c!680238)) b!3913405))

(assert (= (and b!3913405 (not res!1582832)) b!3913406))

(assert (= (and b!3913406 res!1582830) b!3913404))

(assert (= (and b!3913404 res!1582833) b!3913402))

(assert (= (and b!3913402 res!1582834) b!3913411))

(assert (= (and b!3913406 (not res!1582835)) b!3913407))

(assert (= (and b!3913407 res!1582831) b!3913410))

(assert (= (and b!3913410 (not res!1582837)) b!3913403))

(assert (= (and b!3913403 (not res!1582836)) b!3913399))

(assert (= (or b!3913408 b!3913404 b!3913410) bm!284401))

(declare-fun m!4476773 () Bool)

(assert (=> d!1160937 m!4476773))

(declare-fun m!4476775 () Bool)

(assert (=> d!1160937 m!4476775))

(declare-fun m!4476777 () Bool)

(assert (=> b!3913412 m!4476777))

(declare-fun m!4476779 () Bool)

(assert (=> b!3913399 m!4476779))

(assert (=> bm!284401 m!4476773))

(declare-fun m!4476781 () Bool)

(assert (=> b!3913403 m!4476781))

(assert (=> b!3913403 m!4476781))

(declare-fun m!4476783 () Bool)

(assert (=> b!3913403 m!4476783))

(assert (=> b!3913409 m!4476779))

(assert (=> b!3913409 m!4476779))

(declare-fun m!4476785 () Bool)

(assert (=> b!3913409 m!4476785))

(assert (=> b!3913409 m!4476781))

(assert (=> b!3913409 m!4476785))

(assert (=> b!3913409 m!4476781))

(declare-fun m!4476787 () Bool)

(assert (=> b!3913409 m!4476787))

(assert (=> b!3913402 m!4476781))

(assert (=> b!3913402 m!4476781))

(assert (=> b!3913402 m!4476783))

(assert (=> b!3913411 m!4476779))

(assert (=> b!3913261 d!1160937))

(declare-fun d!1160943 () Bool)

(declare-fun e!2419533 () Bool)

(assert (=> d!1160943 e!2419533))

(declare-fun res!1582879 () Bool)

(assert (=> d!1160943 (=> res!1582879 e!2419533)))

(declare-fun lt!1363390 () Option!8876)

(assert (=> d!1160943 (= res!1582879 (isEmpty!24675 lt!1363390))))

(declare-fun e!2419534 () Option!8876)

(assert (=> d!1160943 (= lt!1363390 e!2419534)))

(declare-fun c!680247 () Bool)

(declare-datatypes ((tuple2!40722 0))(
  ( (tuple2!40723 (_1!23495 List!41594) (_2!23495 List!41594)) )
))
(declare-fun lt!1363389 () tuple2!40722)

(assert (=> d!1160943 (= c!680247 (isEmpty!24673 (_1!23495 lt!1363389)))))

(declare-fun findLongestMatch!1146 (Regex!11361 List!41594) tuple2!40722)

(assert (=> d!1160943 (= lt!1363389 (findLongestMatch!1146 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) lt!1363332))))

(assert (=> d!1160943 (ruleValid!2404 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))

(assert (=> d!1160943 (= (maxPrefixOneRule!2419 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))) lt!1363332) lt!1363390)))

(declare-fun b!3913463 () Bool)

(declare-fun res!1582874 () Bool)

(declare-fun e!2419535 () Bool)

(assert (=> b!3913463 (=> (not res!1582874) (not e!2419535))))

(assert (=> b!3913463 (= res!1582874 (= (++!10669 (list!15417 (charsOf!4280 (_1!23493 (get!13704 lt!1363390)))) (_2!23493 (get!13704 lt!1363390))) lt!1363332))))

(declare-fun b!3913464 () Bool)

(declare-fun res!1582876 () Bool)

(assert (=> b!3913464 (=> (not res!1582876) (not e!2419535))))

(assert (=> b!3913464 (= res!1582876 (= (value!204630 (_1!23493 (get!13704 lt!1363390))) (apply!9695 (transformation!6456 (rule!9374 (_1!23493 (get!13704 lt!1363390)))) (seqFromList!4723 (originalCharacters!7056 (_1!23493 (get!13704 lt!1363390)))))))))

(declare-fun b!3913465 () Bool)

(declare-fun size!31137 (BalanceConc!24928) Int)

(assert (=> b!3913465 (= e!2419534 (Some!8875 (tuple2!40719 (Token!12051 (apply!9695 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (seqFromList!4723 (_1!23495 lt!1363389))) (rule!9374 (_1!23493 (v!39199 lt!1363328))) (size!31137 (seqFromList!4723 (_1!23495 lt!1363389))) (_1!23495 lt!1363389)) (_2!23495 lt!1363389))))))

(declare-fun lt!1363388 () Unit!59613)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1206 (Regex!11361 List!41594) Unit!59613)

(assert (=> b!3913465 (= lt!1363388 (longestMatchIsAcceptedByMatchOrIsEmpty!1206 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) lt!1363332))))

(declare-fun res!1582875 () Bool)

(declare-fun findLongestMatchInner!1233 (Regex!11361 List!41594 Int List!41594 List!41594 Int) tuple2!40722)

(assert (=> b!3913465 (= res!1582875 (isEmpty!24673 (_1!23495 (findLongestMatchInner!1233 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) Nil!41470 (size!31136 Nil!41470) lt!1363332 lt!1363332 (size!31136 lt!1363332)))))))

(declare-fun e!2419532 () Bool)

(assert (=> b!3913465 (=> res!1582875 e!2419532)))

(assert (=> b!3913465 e!2419532))

(declare-fun lt!1363387 () Unit!59613)

(assert (=> b!3913465 (= lt!1363387 lt!1363388)))

(declare-fun lt!1363391 () Unit!59613)

(declare-fun lemmaSemiInverse!1739 (TokenValueInjection!12800 BalanceConc!24928) Unit!59613)

(assert (=> b!3913465 (= lt!1363391 (lemmaSemiInverse!1739 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (seqFromList!4723 (_1!23495 lt!1363389))))))

(declare-fun b!3913466 () Bool)

(assert (=> b!3913466 (= e!2419532 (matchR!5450 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (_1!23495 (findLongestMatchInner!1233 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) Nil!41470 (size!31136 Nil!41470) lt!1363332 lt!1363332 (size!31136 lt!1363332)))))))

(declare-fun b!3913467 () Bool)

(assert (=> b!3913467 (= e!2419534 None!8875)))

(declare-fun b!3913468 () Bool)

(assert (=> b!3913468 (= e!2419535 (= (size!31135 (_1!23493 (get!13704 lt!1363390))) (size!31136 (originalCharacters!7056 (_1!23493 (get!13704 lt!1363390))))))))

(declare-fun b!3913469 () Bool)

(declare-fun res!1582880 () Bool)

(assert (=> b!3913469 (=> (not res!1582880) (not e!2419535))))

(assert (=> b!3913469 (= res!1582880 (< (size!31136 (_2!23493 (get!13704 lt!1363390))) (size!31136 lt!1363332)))))

(declare-fun b!3913470 () Bool)

(assert (=> b!3913470 (= e!2419533 e!2419535)))

(declare-fun res!1582877 () Bool)

(assert (=> b!3913470 (=> (not res!1582877) (not e!2419535))))

(assert (=> b!3913470 (= res!1582877 (matchR!5450 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (list!15417 (charsOf!4280 (_1!23493 (get!13704 lt!1363390))))))))

(declare-fun b!3913471 () Bool)

(declare-fun res!1582878 () Bool)

(assert (=> b!3913471 (=> (not res!1582878) (not e!2419535))))

(assert (=> b!3913471 (= res!1582878 (= (rule!9374 (_1!23493 (get!13704 lt!1363390))) (rule!9374 (_1!23493 (v!39199 lt!1363328)))))))

(assert (= (and d!1160943 c!680247) b!3913467))

(assert (= (and d!1160943 (not c!680247)) b!3913465))

(assert (= (and b!3913465 (not res!1582875)) b!3913466))

(assert (= (and d!1160943 (not res!1582879)) b!3913470))

(assert (= (and b!3913470 res!1582877) b!3913463))

(assert (= (and b!3913463 res!1582874) b!3913469))

(assert (= (and b!3913469 res!1582880) b!3913471))

(assert (= (and b!3913471 res!1582878) b!3913464))

(assert (= (and b!3913464 res!1582876) b!3913468))

(declare-fun m!4476805 () Bool)

(assert (=> b!3913465 m!4476805))

(declare-fun m!4476807 () Bool)

(assert (=> b!3913465 m!4476807))

(assert (=> b!3913465 m!4476805))

(declare-fun m!4476809 () Bool)

(assert (=> b!3913465 m!4476809))

(assert (=> b!3913465 m!4476807))

(assert (=> b!3913465 m!4476709))

(declare-fun m!4476811 () Bool)

(assert (=> b!3913465 m!4476811))

(declare-fun m!4476813 () Bool)

(assert (=> b!3913465 m!4476813))

(assert (=> b!3913465 m!4476805))

(declare-fun m!4476815 () Bool)

(assert (=> b!3913465 m!4476815))

(assert (=> b!3913465 m!4476805))

(declare-fun m!4476817 () Bool)

(assert (=> b!3913465 m!4476817))

(assert (=> b!3913465 m!4476709))

(declare-fun m!4476819 () Bool)

(assert (=> b!3913465 m!4476819))

(declare-fun m!4476821 () Bool)

(assert (=> b!3913469 m!4476821))

(declare-fun m!4476823 () Bool)

(assert (=> b!3913469 m!4476823))

(assert (=> b!3913469 m!4476709))

(assert (=> b!3913466 m!4476807))

(assert (=> b!3913466 m!4476709))

(assert (=> b!3913466 m!4476807))

(assert (=> b!3913466 m!4476709))

(assert (=> b!3913466 m!4476811))

(declare-fun m!4476825 () Bool)

(assert (=> b!3913466 m!4476825))

(declare-fun m!4476827 () Bool)

(assert (=> d!1160943 m!4476827))

(declare-fun m!4476829 () Bool)

(assert (=> d!1160943 m!4476829))

(declare-fun m!4476831 () Bool)

(assert (=> d!1160943 m!4476831))

(assert (=> d!1160943 m!4476699))

(assert (=> b!3913471 m!4476821))

(assert (=> b!3913463 m!4476821))

(declare-fun m!4476833 () Bool)

(assert (=> b!3913463 m!4476833))

(assert (=> b!3913463 m!4476833))

(declare-fun m!4476835 () Bool)

(assert (=> b!3913463 m!4476835))

(assert (=> b!3913463 m!4476835))

(declare-fun m!4476837 () Bool)

(assert (=> b!3913463 m!4476837))

(assert (=> b!3913468 m!4476821))

(declare-fun m!4476839 () Bool)

(assert (=> b!3913468 m!4476839))

(assert (=> b!3913464 m!4476821))

(declare-fun m!4476841 () Bool)

(assert (=> b!3913464 m!4476841))

(assert (=> b!3913464 m!4476841))

(declare-fun m!4476843 () Bool)

(assert (=> b!3913464 m!4476843))

(assert (=> b!3913470 m!4476821))

(assert (=> b!3913470 m!4476833))

(assert (=> b!3913470 m!4476833))

(assert (=> b!3913470 m!4476835))

(assert (=> b!3913470 m!4476835))

(declare-fun m!4476845 () Bool)

(assert (=> b!3913470 m!4476845))

(assert (=> b!3913261 d!1160943))

(declare-fun d!1160947 () Bool)

(assert (=> d!1160947 (= (maxPrefixOneRule!2419 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))) lt!1363332) (Some!8875 (tuple2!40719 (Token!12051 (apply!9695 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (seqFromList!4723 lt!1363329)) (rule!9374 (_1!23493 (v!39199 lt!1363328))) (size!31136 lt!1363329) lt!1363329) (_2!23493 (v!39199 lt!1363328)))))))

(declare-fun lt!1363399 () Unit!59613)

(declare-fun choose!23169 (LexerInterface!6045 List!41596 List!41594 List!41594 List!41594 Rule!12712) Unit!59613)

(assert (=> d!1160947 (= lt!1363399 (choose!23169 thiss!20629 rules!2768 lt!1363329 lt!1363332 (_2!23493 (v!39199 lt!1363328)) (rule!9374 (_1!23493 (v!39199 lt!1363328)))))))

(assert (=> d!1160947 (not (isEmpty!24674 rules!2768))))

(assert (=> d!1160947 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1287 thiss!20629 rules!2768 lt!1363329 lt!1363332 (_2!23493 (v!39199 lt!1363328)) (rule!9374 (_1!23493 (v!39199 lt!1363328)))) lt!1363399)))

(declare-fun bs!585651 () Bool)

(assert (= bs!585651 d!1160947))

(assert (=> bs!585651 m!4476651))

(assert (=> bs!585651 m!4476691))

(assert (=> bs!585651 m!4476691))

(assert (=> bs!585651 m!4476701))

(assert (=> bs!585651 m!4476643))

(assert (=> bs!585651 m!4476675))

(declare-fun m!4476889 () Bool)

(assert (=> bs!585651 m!4476889))

(assert (=> b!3913261 d!1160947))

(declare-fun d!1160951 () Bool)

(declare-fun lt!1363400 () Int)

(assert (=> d!1160951 (>= lt!1363400 0)))

(declare-fun e!2419540 () Int)

(assert (=> d!1160951 (= lt!1363400 e!2419540)))

(declare-fun c!680249 () Bool)

(assert (=> d!1160951 (= c!680249 ((_ is Nil!41470) (_2!23493 lt!1363335)))))

(assert (=> d!1160951 (= (size!31136 (_2!23493 lt!1363335)) lt!1363400)))

(declare-fun b!3913481 () Bool)

(assert (=> b!3913481 (= e!2419540 0)))

(declare-fun b!3913482 () Bool)

(assert (=> b!3913482 (= e!2419540 (+ 1 (size!31136 (t!323407 (_2!23493 lt!1363335)))))))

(assert (= (and d!1160951 c!680249) b!3913481))

(assert (= (and d!1160951 (not c!680249)) b!3913482))

(declare-fun m!4476891 () Bool)

(assert (=> b!3913482 m!4476891))

(assert (=> b!3913283 d!1160951))

(declare-fun d!1160953 () Bool)

(assert (=> d!1160953 (= (inv!55655 (tag!7316 (rule!9374 (h!46891 suffixTokens!72)))) (= (mod (str.len (value!204629 (tag!7316 (rule!9374 (h!46891 suffixTokens!72))))) 2) 0))))

(assert (=> b!3913279 d!1160953))

(declare-fun d!1160955 () Bool)

(declare-fun res!1582890 () Bool)

(declare-fun e!2419543 () Bool)

(assert (=> d!1160955 (=> (not res!1582890) (not e!2419543))))

(declare-fun semiInverseModEq!2772 (Int Int) Bool)

(assert (=> d!1160955 (= res!1582890 (semiInverseModEq!2772 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (toValue!8904 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))))))

(assert (=> d!1160955 (= (inv!55659 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) e!2419543)))

(declare-fun b!3913485 () Bool)

(declare-fun equivClasses!2671 (Int Int) Bool)

(assert (=> b!3913485 (= e!2419543 (equivClasses!2671 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (toValue!8904 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))))))

(assert (= (and d!1160955 res!1582890) b!3913485))

(declare-fun m!4476893 () Bool)

(assert (=> d!1160955 m!4476893))

(declare-fun m!4476895 () Bool)

(assert (=> b!3913485 m!4476895))

(assert (=> b!3913279 d!1160955))

(declare-fun d!1160957 () Bool)

(assert (=> d!1160957 (= (isEmpty!24674 rules!2768) ((_ is Nil!41472) rules!2768))))

(assert (=> b!3913280 d!1160957))

(declare-fun d!1160959 () Bool)

(assert (=> d!1160959 (= (inv!55655 (tag!7316 (rule!9374 (h!46891 prefixTokens!80)))) (= (mod (str.len (value!204629 (tag!7316 (rule!9374 (h!46891 prefixTokens!80))))) 2) 0))))

(assert (=> b!3913277 d!1160959))

(declare-fun d!1160961 () Bool)

(declare-fun res!1582891 () Bool)

(declare-fun e!2419544 () Bool)

(assert (=> d!1160961 (=> (not res!1582891) (not e!2419544))))

(assert (=> d!1160961 (= res!1582891 (semiInverseModEq!2772 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (toValue!8904 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))))))

(assert (=> d!1160961 (= (inv!55659 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) e!2419544)))

(declare-fun b!3913486 () Bool)

(assert (=> b!3913486 (= e!2419544 (equivClasses!2671 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (toValue!8904 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))))))

(assert (= (and d!1160961 res!1582891) b!3913486))

(declare-fun m!4476897 () Bool)

(assert (=> d!1160961 m!4476897))

(declare-fun m!4476899 () Bool)

(assert (=> b!3913486 m!4476899))

(assert (=> b!3913277 d!1160961))

(declare-fun d!1160963 () Bool)

(declare-fun lt!1363403 () Int)

(assert (=> d!1160963 (>= lt!1363403 0)))

(declare-fun e!2419545 () Int)

(assert (=> d!1160963 (= lt!1363403 e!2419545)))

(declare-fun c!680250 () Bool)

(assert (=> d!1160963 (= c!680250 ((_ is Nil!41470) prefix!426))))

(assert (=> d!1160963 (= (size!31136 prefix!426) lt!1363403)))

(declare-fun b!3913487 () Bool)

(assert (=> b!3913487 (= e!2419545 0)))

(declare-fun b!3913488 () Bool)

(assert (=> b!3913488 (= e!2419545 (+ 1 (size!31136 (t!323407 prefix!426))))))

(assert (= (and d!1160963 c!680250) b!3913487))

(assert (= (and d!1160963 (not c!680250)) b!3913488))

(declare-fun m!4476901 () Bool)

(assert (=> b!3913488 m!4476901))

(assert (=> b!3913278 d!1160963))

(declare-fun d!1160965 () Bool)

(assert (=> d!1160965 (= (isEmpty!24672 (tail!5981 prefixTokens!80)) ((_ is Nil!41471) (tail!5981 prefixTokens!80)))))

(assert (=> b!3913274 d!1160965))

(declare-fun d!1160967 () Bool)

(assert (=> d!1160967 (= (tail!5981 prefixTokens!80) (t!323408 prefixTokens!80))))

(assert (=> b!3913274 d!1160967))

(declare-fun b!3913509 () Bool)

(declare-fun res!1582907 () Bool)

(declare-fun e!2419558 () Bool)

(assert (=> b!3913509 (=> (not res!1582907) (not e!2419558))))

(assert (=> b!3913509 (= res!1582907 (= (head!8266 lt!1363329) (head!8266 lt!1363319)))))

(declare-fun b!3913508 () Bool)

(declare-fun e!2419560 () Bool)

(assert (=> b!3913508 (= e!2419560 e!2419558)))

(declare-fun res!1582908 () Bool)

(assert (=> b!3913508 (=> (not res!1582908) (not e!2419558))))

(assert (=> b!3913508 (= res!1582908 (not ((_ is Nil!41470) lt!1363319)))))

(declare-fun b!3913511 () Bool)

(declare-fun e!2419559 () Bool)

(assert (=> b!3913511 (= e!2419559 (>= (size!31136 lt!1363319) (size!31136 lt!1363329)))))

(declare-fun d!1160971 () Bool)

(assert (=> d!1160971 e!2419559))

(declare-fun res!1582909 () Bool)

(assert (=> d!1160971 (=> res!1582909 e!2419559)))

(declare-fun lt!1363407 () Bool)

(assert (=> d!1160971 (= res!1582909 (not lt!1363407))))

(assert (=> d!1160971 (= lt!1363407 e!2419560)))

(declare-fun res!1582906 () Bool)

(assert (=> d!1160971 (=> res!1582906 e!2419560)))

(assert (=> d!1160971 (= res!1582906 ((_ is Nil!41470) lt!1363329))))

(assert (=> d!1160971 (= (isPrefix!3551 lt!1363329 lt!1363319) lt!1363407)))

(declare-fun b!3913510 () Bool)

(assert (=> b!3913510 (= e!2419558 (isPrefix!3551 (tail!5982 lt!1363329) (tail!5982 lt!1363319)))))

(assert (= (and d!1160971 (not res!1582906)) b!3913508))

(assert (= (and b!3913508 res!1582908) b!3913509))

(assert (= (and b!3913509 res!1582907) b!3913510))

(assert (= (and d!1160971 (not res!1582909)) b!3913511))

(assert (=> b!3913509 m!4476779))

(declare-fun m!4476913 () Bool)

(assert (=> b!3913509 m!4476913))

(declare-fun m!4476915 () Bool)

(assert (=> b!3913511 m!4476915))

(assert (=> b!3913511 m!4476675))

(assert (=> b!3913510 m!4476781))

(declare-fun m!4476917 () Bool)

(assert (=> b!3913510 m!4476917))

(assert (=> b!3913510 m!4476781))

(assert (=> b!3913510 m!4476917))

(declare-fun m!4476923 () Bool)

(assert (=> b!3913510 m!4476923))

(assert (=> b!3913273 d!1160971))

(declare-fun d!1160975 () Bool)

(declare-fun lt!1363410 () BalanceConc!24928)

(assert (=> d!1160975 (= (list!15417 lt!1363410) (originalCharacters!7056 (_1!23493 (v!39199 lt!1363328))))))

(assert (=> d!1160975 (= lt!1363410 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))) (value!204630 (_1!23493 (v!39199 lt!1363328)))))))

(assert (=> d!1160975 (= (charsOf!4280 (_1!23493 (v!39199 lt!1363328))) lt!1363410)))

(declare-fun b_lambda!114579 () Bool)

(assert (=> (not b_lambda!114579) (not d!1160975)))

(declare-fun t!323423 () Bool)

(declare-fun tb!233105 () Bool)

(assert (=> (and b!3913276 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323423) tb!233105))

(declare-fun b!3913512 () Bool)

(declare-fun e!2419561 () Bool)

(declare-fun tp!1191181 () Bool)

(assert (=> b!3913512 (= e!2419561 (and (inv!55660 (c!680215 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))) (value!204630 (_1!23493 (v!39199 lt!1363328)))))) tp!1191181))))

(declare-fun result!282514 () Bool)

(assert (=> tb!233105 (= result!282514 (and (inv!55661 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))) (value!204630 (_1!23493 (v!39199 lt!1363328))))) e!2419561))))

(assert (= tb!233105 b!3913512))

(declare-fun m!4476925 () Bool)

(assert (=> b!3913512 m!4476925))

(declare-fun m!4476927 () Bool)

(assert (=> tb!233105 m!4476927))

(assert (=> d!1160975 t!323423))

(declare-fun b_and!297851 () Bool)

(assert (= b_and!297839 (and (=> t!323423 result!282514) b_and!297851)))

(declare-fun tb!233107 () Bool)

(declare-fun t!323425 () Bool)

(assert (=> (and b!3913270 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323425) tb!233107))

(declare-fun result!282516 () Bool)

(assert (= result!282516 result!282514))

(assert (=> d!1160975 t!323425))

(declare-fun b_and!297853 () Bool)

(assert (= b_and!297841 (and (=> t!323425 result!282516) b_and!297853)))

(declare-fun t!323427 () Bool)

(declare-fun tb!233109 () Bool)

(assert (=> (and b!3913289 (= (toChars!8763 (transformation!6456 (h!46892 rules!2768))) (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323427) tb!233109))

(declare-fun result!282518 () Bool)

(assert (= result!282518 result!282514))

(assert (=> d!1160975 t!323427))

(declare-fun b_and!297855 () Bool)

(assert (= b_and!297843 (and (=> t!323427 result!282518) b_and!297855)))

(declare-fun m!4476929 () Bool)

(assert (=> d!1160975 m!4476929))

(declare-fun m!4476931 () Bool)

(assert (=> d!1160975 m!4476931))

(assert (=> b!3913273 d!1160975))

(declare-fun b!3913536 () Bool)

(declare-fun e!2419577 () tuple2!40720)

(assert (=> b!3913536 (= e!2419577 (tuple2!40721 Nil!41471 (_2!23493 (v!39199 lt!1363328))))))

(declare-fun b!3913537 () Bool)

(declare-fun e!2419578 () Bool)

(declare-fun lt!1363424 () tuple2!40720)

(assert (=> b!3913537 (= e!2419578 (not (isEmpty!24672 (_1!23494 lt!1363424))))))

(declare-fun d!1160979 () Bool)

(declare-fun e!2419579 () Bool)

(assert (=> d!1160979 e!2419579))

(declare-fun c!680259 () Bool)

(declare-fun size!31139 (List!41595) Int)

(assert (=> d!1160979 (= c!680259 (> (size!31139 (_1!23494 lt!1363424)) 0))))

(assert (=> d!1160979 (= lt!1363424 e!2419577)))

(declare-fun c!680260 () Bool)

(declare-fun lt!1363423 () Option!8876)

(assert (=> d!1160979 (= c!680260 ((_ is Some!8875) lt!1363423))))

(assert (=> d!1160979 (= lt!1363423 (maxPrefix!3349 thiss!20629 rules!2768 (_2!23493 (v!39199 lt!1363328))))))

(assert (=> d!1160979 (= (lexList!1813 thiss!20629 rules!2768 (_2!23493 (v!39199 lt!1363328))) lt!1363424)))

(declare-fun b!3913538 () Bool)

(declare-fun lt!1363425 () tuple2!40720)

(assert (=> b!3913538 (= e!2419577 (tuple2!40721 (Cons!41471 (_1!23493 (v!39199 lt!1363423)) (_1!23494 lt!1363425)) (_2!23494 lt!1363425)))))

(assert (=> b!3913538 (= lt!1363425 (lexList!1813 thiss!20629 rules!2768 (_2!23493 (v!39199 lt!1363423))))))

(declare-fun b!3913539 () Bool)

(assert (=> b!3913539 (= e!2419579 e!2419578)))

(declare-fun res!1582917 () Bool)

(assert (=> b!3913539 (= res!1582917 (< (size!31136 (_2!23494 lt!1363424)) (size!31136 (_2!23493 (v!39199 lt!1363328)))))))

(assert (=> b!3913539 (=> (not res!1582917) (not e!2419578))))

(declare-fun b!3913540 () Bool)

(assert (=> b!3913540 (= e!2419579 (= (_2!23494 lt!1363424) (_2!23493 (v!39199 lt!1363328))))))

(assert (= (and d!1160979 c!680260) b!3913538))

(assert (= (and d!1160979 (not c!680260)) b!3913536))

(assert (= (and d!1160979 c!680259) b!3913539))

(assert (= (and d!1160979 (not c!680259)) b!3913540))

(assert (= (and b!3913539 res!1582917) b!3913537))

(declare-fun m!4476937 () Bool)

(assert (=> b!3913537 m!4476937))

(declare-fun m!4476939 () Bool)

(assert (=> d!1160979 m!4476939))

(declare-fun m!4476941 () Bool)

(assert (=> d!1160979 m!4476941))

(declare-fun m!4476943 () Bool)

(assert (=> b!3913538 m!4476943))

(declare-fun m!4476945 () Bool)

(assert (=> b!3913539 m!4476945))

(assert (=> b!3913539 m!4476707))

(assert (=> b!3913273 d!1160979))

(declare-fun d!1160983 () Bool)

(assert (=> d!1160983 (= (_2!23493 (v!39199 lt!1363328)) lt!1363321)))

(declare-fun lt!1363431 () Unit!59613)

(declare-fun choose!23171 (List!41594 List!41594 List!41594 List!41594 List!41594) Unit!59613)

(assert (=> d!1160983 (= lt!1363431 (choose!23171 lt!1363329 (_2!23493 (v!39199 lt!1363328)) lt!1363329 lt!1363321 lt!1363332))))

(assert (=> d!1160983 (isPrefix!3551 lt!1363329 lt!1363332)))

(assert (=> d!1160983 (= (lemmaSamePrefixThenSameSuffix!1772 lt!1363329 (_2!23493 (v!39199 lt!1363328)) lt!1363329 lt!1363321 lt!1363332) lt!1363431)))

(declare-fun bs!585653 () Bool)

(assert (= bs!585653 d!1160983))

(declare-fun m!4476955 () Bool)

(assert (=> bs!585653 m!4476955))

(declare-fun m!4476957 () Bool)

(assert (=> bs!585653 m!4476957))

(assert (=> b!3913273 d!1160983))

(declare-fun d!1160987 () Bool)

(declare-fun res!1582927 () Bool)

(declare-fun e!2419589 () Bool)

(assert (=> d!1160987 (=> (not res!1582927) (not e!2419589))))

(assert (=> d!1160987 (= res!1582927 (validRegex!5171 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))))

(assert (=> d!1160987 (= (ruleValid!2404 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) e!2419589)))

(declare-fun b!3913558 () Bool)

(declare-fun res!1582928 () Bool)

(assert (=> b!3913558 (=> (not res!1582928) (not e!2419589))))

(assert (=> b!3913558 (= res!1582928 (not (nullable!3972 (regex!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))))))

(declare-fun b!3913559 () Bool)

(assert (=> b!3913559 (= e!2419589 (not (= (tag!7316 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (String!47149 ""))))))

(assert (= (and d!1160987 res!1582927) b!3913558))

(assert (= (and b!3913558 res!1582928) b!3913559))

(assert (=> d!1160987 m!4476775))

(assert (=> b!3913558 m!4476777))

(assert (=> b!3913273 d!1160987))

(declare-fun d!1160989 () Bool)

(declare-fun dynLambda!17817 (Int BalanceConc!24928) TokenValue!6686)

(assert (=> d!1160989 (= (apply!9695 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))) (seqFromList!4723 lt!1363329)) (dynLambda!17817 (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))) (seqFromList!4723 lt!1363329)))))

(declare-fun b_lambda!114581 () Bool)

(assert (=> (not b_lambda!114581) (not d!1160989)))

(declare-fun t!323429 () Bool)

(declare-fun tb!233111 () Bool)

(assert (=> (and b!3913276 (= (toValue!8904 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323429) tb!233111))

(declare-fun result!282520 () Bool)

(assert (=> tb!233111 (= result!282520 (inv!21 (dynLambda!17817 (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328))))) (seqFromList!4723 lt!1363329))))))

(declare-fun m!4476973 () Bool)

(assert (=> tb!233111 m!4476973))

(assert (=> d!1160989 t!323429))

(declare-fun b_and!297857 () Bool)

(assert (= b_and!297827 (and (=> t!323429 result!282520) b_and!297857)))

(declare-fun tb!233113 () Bool)

(declare-fun t!323431 () Bool)

(assert (=> (and b!3913270 (= (toValue!8904 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323431) tb!233113))

(declare-fun result!282524 () Bool)

(assert (= result!282524 result!282520))

(assert (=> d!1160989 t!323431))

(declare-fun b_and!297859 () Bool)

(assert (= b_and!297831 (and (=> t!323431 result!282524) b_and!297859)))

(declare-fun t!323433 () Bool)

(declare-fun tb!233115 () Bool)

(assert (=> (and b!3913289 (= (toValue!8904 (transformation!6456 (h!46892 rules!2768))) (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323433) tb!233115))

(declare-fun result!282526 () Bool)

(assert (= result!282526 result!282520))

(assert (=> d!1160989 t!323433))

(declare-fun b_and!297861 () Bool)

(assert (= b_and!297835 (and (=> t!323433 result!282526) b_and!297861)))

(assert (=> d!1160989 m!4476691))

(declare-fun m!4476975 () Bool)

(assert (=> d!1160989 m!4476975))

(assert (=> b!3913273 d!1160989))

(declare-fun d!1160993 () Bool)

(assert (=> d!1160993 (isPrefix!3551 lt!1363329 (++!10669 lt!1363329 (_2!23493 (v!39199 lt!1363328))))))

(declare-fun lt!1363437 () Unit!59613)

(declare-fun choose!23172 (List!41594 List!41594) Unit!59613)

(assert (=> d!1160993 (= lt!1363437 (choose!23172 lt!1363329 (_2!23493 (v!39199 lt!1363328))))))

(assert (=> d!1160993 (= (lemmaConcatTwoListThenFirstIsPrefix!2414 lt!1363329 (_2!23493 (v!39199 lt!1363328))) lt!1363437)))

(declare-fun bs!585654 () Bool)

(assert (= bs!585654 d!1160993))

(assert (=> bs!585654 m!4476697))

(assert (=> bs!585654 m!4476697))

(declare-fun m!4476977 () Bool)

(assert (=> bs!585654 m!4476977))

(declare-fun m!4476979 () Bool)

(assert (=> bs!585654 m!4476979))

(assert (=> b!3913273 d!1160993))

(declare-fun d!1160995 () Bool)

(assert (=> d!1160995 (= (size!31135 (_1!23493 (v!39199 lt!1363328))) (size!31136 (originalCharacters!7056 (_1!23493 (v!39199 lt!1363328)))))))

(declare-fun Unit!59615 () Unit!59613)

(assert (=> d!1160995 (= (lemmaCharactersSize!1113 (_1!23493 (v!39199 lt!1363328))) Unit!59615)))

(declare-fun bs!585655 () Bool)

(assert (= bs!585655 d!1160995))

(assert (=> bs!585655 m!4476717))

(assert (=> b!3913273 d!1160995))

(declare-fun d!1160997 () Bool)

(declare-fun lt!1363440 () Int)

(assert (=> d!1160997 (>= lt!1363440 0)))

(declare-fun e!2419599 () Int)

(assert (=> d!1160997 (= lt!1363440 e!2419599)))

(declare-fun c!680268 () Bool)

(assert (=> d!1160997 (= c!680268 ((_ is Nil!41470) lt!1363329))))

(assert (=> d!1160997 (= (size!31136 lt!1363329) lt!1363440)))

(declare-fun b!3913574 () Bool)

(assert (=> b!3913574 (= e!2419599 0)))

(declare-fun b!3913575 () Bool)

(assert (=> b!3913575 (= e!2419599 (+ 1 (size!31136 (t!323407 lt!1363329))))))

(assert (= (and d!1160997 c!680268) b!3913574))

(assert (= (and d!1160997 (not c!680268)) b!3913575))

(declare-fun m!4476981 () Bool)

(assert (=> b!3913575 m!4476981))

(assert (=> b!3913273 d!1160997))

(declare-fun d!1160999 () Bool)

(assert (=> d!1160999 (ruleValid!2404 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))

(declare-fun lt!1363444 () Unit!59613)

(declare-fun choose!23173 (LexerInterface!6045 Rule!12712 List!41596) Unit!59613)

(assert (=> d!1160999 (= lt!1363444 (choose!23173 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))) rules!2768))))

(assert (=> d!1160999 (contains!8334 rules!2768 (rule!9374 (_1!23493 (v!39199 lt!1363328))))))

(assert (=> d!1160999 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1484 thiss!20629 (rule!9374 (_1!23493 (v!39199 lt!1363328))) rules!2768) lt!1363444)))

(declare-fun bs!585656 () Bool)

(assert (= bs!585656 d!1160999))

(assert (=> bs!585656 m!4476699))

(declare-fun m!4476993 () Bool)

(assert (=> bs!585656 m!4476993))

(declare-fun m!4476995 () Bool)

(assert (=> bs!585656 m!4476995))

(assert (=> b!3913273 d!1160999))

(declare-fun d!1161003 () Bool)

(declare-fun list!15418 (Conc!12667) List!41594)

(assert (=> d!1161003 (= (list!15417 (charsOf!4280 (_1!23493 (v!39199 lt!1363328)))) (list!15418 (c!680215 (charsOf!4280 (_1!23493 (v!39199 lt!1363328))))))))

(declare-fun bs!585657 () Bool)

(assert (= bs!585657 d!1161003))

(declare-fun m!4476997 () Bool)

(assert (=> bs!585657 m!4476997))

(assert (=> b!3913273 d!1161003))

(declare-fun d!1161005 () Bool)

(declare-fun lt!1363449 () List!41594)

(assert (=> d!1161005 (= (++!10669 lt!1363329 lt!1363449) lt!1363332)))

(declare-fun e!2419616 () List!41594)

(assert (=> d!1161005 (= lt!1363449 e!2419616)))

(declare-fun c!680280 () Bool)

(assert (=> d!1161005 (= c!680280 ((_ is Cons!41470) lt!1363329))))

(assert (=> d!1161005 (>= (size!31136 lt!1363332) (size!31136 lt!1363329))))

(assert (=> d!1161005 (= (getSuffix!2006 lt!1363332 lt!1363329) lt!1363449)))

(declare-fun b!3913604 () Bool)

(assert (=> b!3913604 (= e!2419616 (getSuffix!2006 (tail!5982 lt!1363332) (t!323407 lt!1363329)))))

(declare-fun b!3913605 () Bool)

(assert (=> b!3913605 (= e!2419616 lt!1363332)))

(assert (= (and d!1161005 c!680280) b!3913604))

(assert (= (and d!1161005 (not c!680280)) b!3913605))

(declare-fun m!4477013 () Bool)

(assert (=> d!1161005 m!4477013))

(assert (=> d!1161005 m!4476709))

(assert (=> d!1161005 m!4476675))

(declare-fun m!4477015 () Bool)

(assert (=> b!3913604 m!4477015))

(assert (=> b!3913604 m!4477015))

(declare-fun m!4477017 () Bool)

(assert (=> b!3913604 m!4477017))

(assert (=> b!3913273 d!1161005))

(declare-fun d!1161019 () Bool)

(declare-fun fromListB!2181 (List!41594) BalanceConc!24928)

(assert (=> d!1161019 (= (seqFromList!4723 lt!1363329) (fromListB!2181 lt!1363329))))

(declare-fun bs!585658 () Bool)

(assert (= bs!585658 d!1161019))

(declare-fun m!4477019 () Bool)

(assert (=> bs!585658 m!4477019))

(assert (=> b!3913273 d!1161019))

(declare-fun b!3913614 () Bool)

(declare-fun e!2419621 () List!41594)

(assert (=> b!3913614 (= e!2419621 (_2!23493 (v!39199 lt!1363328)))))

(declare-fun d!1161021 () Bool)

(declare-fun e!2419622 () Bool)

(assert (=> d!1161021 e!2419622))

(declare-fun res!1582946 () Bool)

(assert (=> d!1161021 (=> (not res!1582946) (not e!2419622))))

(declare-fun lt!1363452 () List!41594)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6229 (List!41594) (InoxSet C!22908))

(assert (=> d!1161021 (= res!1582946 (= (content!6229 lt!1363452) ((_ map or) (content!6229 lt!1363329) (content!6229 (_2!23493 (v!39199 lt!1363328))))))))

(assert (=> d!1161021 (= lt!1363452 e!2419621)))

(declare-fun c!680283 () Bool)

(assert (=> d!1161021 (= c!680283 ((_ is Nil!41470) lt!1363329))))

(assert (=> d!1161021 (= (++!10669 lt!1363329 (_2!23493 (v!39199 lt!1363328))) lt!1363452)))

(declare-fun b!3913615 () Bool)

(assert (=> b!3913615 (= e!2419621 (Cons!41470 (h!46890 lt!1363329) (++!10669 (t!323407 lt!1363329) (_2!23493 (v!39199 lt!1363328)))))))

(declare-fun b!3913617 () Bool)

(assert (=> b!3913617 (= e!2419622 (or (not (= (_2!23493 (v!39199 lt!1363328)) Nil!41470)) (= lt!1363452 lt!1363329)))))

(declare-fun b!3913616 () Bool)

(declare-fun res!1582945 () Bool)

(assert (=> b!3913616 (=> (not res!1582945) (not e!2419622))))

(assert (=> b!3913616 (= res!1582945 (= (size!31136 lt!1363452) (+ (size!31136 lt!1363329) (size!31136 (_2!23493 (v!39199 lt!1363328))))))))

(assert (= (and d!1161021 c!680283) b!3913614))

(assert (= (and d!1161021 (not c!680283)) b!3913615))

(assert (= (and d!1161021 res!1582946) b!3913616))

(assert (= (and b!3913616 res!1582945) b!3913617))

(declare-fun m!4477021 () Bool)

(assert (=> d!1161021 m!4477021))

(declare-fun m!4477023 () Bool)

(assert (=> d!1161021 m!4477023))

(declare-fun m!4477025 () Bool)

(assert (=> d!1161021 m!4477025))

(declare-fun m!4477027 () Bool)

(assert (=> b!3913615 m!4477027))

(declare-fun m!4477029 () Bool)

(assert (=> b!3913616 m!4477029))

(assert (=> b!3913616 m!4476675))

(assert (=> b!3913616 m!4476707))

(assert (=> b!3913273 d!1161021))

(declare-fun b!3913618 () Bool)

(declare-fun e!2419623 () tuple2!40720)

(assert (=> b!3913618 (= e!2419623 (tuple2!40721 Nil!41471 lt!1363332))))

(declare-fun b!3913619 () Bool)

(declare-fun e!2419624 () Bool)

(declare-fun lt!1363454 () tuple2!40720)

(assert (=> b!3913619 (= e!2419624 (not (isEmpty!24672 (_1!23494 lt!1363454))))))

(declare-fun d!1161023 () Bool)

(declare-fun e!2419625 () Bool)

(assert (=> d!1161023 e!2419625))

(declare-fun c!680284 () Bool)

(assert (=> d!1161023 (= c!680284 (> (size!31139 (_1!23494 lt!1363454)) 0))))

(assert (=> d!1161023 (= lt!1363454 e!2419623)))

(declare-fun c!680285 () Bool)

(declare-fun lt!1363453 () Option!8876)

(assert (=> d!1161023 (= c!680285 ((_ is Some!8875) lt!1363453))))

(assert (=> d!1161023 (= lt!1363453 (maxPrefix!3349 thiss!20629 rules!2768 lt!1363332))))

(assert (=> d!1161023 (= (lexList!1813 thiss!20629 rules!2768 lt!1363332) lt!1363454)))

(declare-fun b!3913620 () Bool)

(declare-fun lt!1363455 () tuple2!40720)

(assert (=> b!3913620 (= e!2419623 (tuple2!40721 (Cons!41471 (_1!23493 (v!39199 lt!1363453)) (_1!23494 lt!1363455)) (_2!23494 lt!1363455)))))

(assert (=> b!3913620 (= lt!1363455 (lexList!1813 thiss!20629 rules!2768 (_2!23493 (v!39199 lt!1363453))))))

(declare-fun b!3913621 () Bool)

(assert (=> b!3913621 (= e!2419625 e!2419624)))

(declare-fun res!1582947 () Bool)

(assert (=> b!3913621 (= res!1582947 (< (size!31136 (_2!23494 lt!1363454)) (size!31136 lt!1363332)))))

(assert (=> b!3913621 (=> (not res!1582947) (not e!2419624))))

(declare-fun b!3913622 () Bool)

(assert (=> b!3913622 (= e!2419625 (= (_2!23494 lt!1363454) lt!1363332))))

(assert (= (and d!1161023 c!680285) b!3913620))

(assert (= (and d!1161023 (not c!680285)) b!3913618))

(assert (= (and d!1161023 c!680284) b!3913621))

(assert (= (and d!1161023 (not c!680284)) b!3913622))

(assert (= (and b!3913621 res!1582947) b!3913619))

(declare-fun m!4477031 () Bool)

(assert (=> b!3913619 m!4477031))

(declare-fun m!4477033 () Bool)

(assert (=> d!1161023 m!4477033))

(assert (=> d!1161023 m!4476659))

(declare-fun m!4477035 () Bool)

(assert (=> b!3913620 m!4477035))

(declare-fun m!4477037 () Bool)

(assert (=> b!3913621 m!4477037))

(assert (=> b!3913621 m!4476709))

(assert (=> b!3913275 d!1161023))

(declare-fun e!2419631 () Bool)

(declare-fun b!3913634 () Bool)

(declare-fun lt!1363458 () List!41595)

(assert (=> b!3913634 (= e!2419631 (or (not (= suffixTokens!72 Nil!41471)) (= lt!1363458 prefixTokens!80)))))

(declare-fun b!3913633 () Bool)

(declare-fun res!1582952 () Bool)

(assert (=> b!3913633 (=> (not res!1582952) (not e!2419631))))

(assert (=> b!3913633 (= res!1582952 (= (size!31139 lt!1363458) (+ (size!31139 prefixTokens!80) (size!31139 suffixTokens!72))))))

(declare-fun d!1161025 () Bool)

(assert (=> d!1161025 e!2419631))

(declare-fun res!1582953 () Bool)

(assert (=> d!1161025 (=> (not res!1582953) (not e!2419631))))

(declare-fun content!6230 (List!41595) (InoxSet Token!12050))

(assert (=> d!1161025 (= res!1582953 (= (content!6230 lt!1363458) ((_ map or) (content!6230 prefixTokens!80) (content!6230 suffixTokens!72))))))

(declare-fun e!2419630 () List!41595)

(assert (=> d!1161025 (= lt!1363458 e!2419630)))

(declare-fun c!680288 () Bool)

(assert (=> d!1161025 (= c!680288 ((_ is Nil!41471) prefixTokens!80))))

(assert (=> d!1161025 (= (++!10670 prefixTokens!80 suffixTokens!72) lt!1363458)))

(declare-fun b!3913632 () Bool)

(assert (=> b!3913632 (= e!2419630 (Cons!41471 (h!46891 prefixTokens!80) (++!10670 (t!323408 prefixTokens!80) suffixTokens!72)))))

(declare-fun b!3913631 () Bool)

(assert (=> b!3913631 (= e!2419630 suffixTokens!72)))

(assert (= (and d!1161025 c!680288) b!3913631))

(assert (= (and d!1161025 (not c!680288)) b!3913632))

(assert (= (and d!1161025 res!1582953) b!3913633))

(assert (= (and b!3913633 res!1582952) b!3913634))

(declare-fun m!4477039 () Bool)

(assert (=> b!3913633 m!4477039))

(declare-fun m!4477041 () Bool)

(assert (=> b!3913633 m!4477041))

(declare-fun m!4477043 () Bool)

(assert (=> b!3913633 m!4477043))

(declare-fun m!4477045 () Bool)

(assert (=> d!1161025 m!4477045))

(declare-fun m!4477047 () Bool)

(assert (=> d!1161025 m!4477047))

(declare-fun m!4477049 () Bool)

(assert (=> d!1161025 m!4477049))

(declare-fun m!4477051 () Bool)

(assert (=> b!3913632 m!4477051))

(assert (=> b!3913275 d!1161025))

(declare-fun b!3913635 () Bool)

(declare-fun e!2419632 () List!41594)

(assert (=> b!3913635 (= e!2419632 suffix!1176)))

(declare-fun d!1161027 () Bool)

(declare-fun e!2419633 () Bool)

(assert (=> d!1161027 e!2419633))

(declare-fun res!1582955 () Bool)

(assert (=> d!1161027 (=> (not res!1582955) (not e!2419633))))

(declare-fun lt!1363459 () List!41594)

(assert (=> d!1161027 (= res!1582955 (= (content!6229 lt!1363459) ((_ map or) (content!6229 prefix!426) (content!6229 suffix!1176))))))

(assert (=> d!1161027 (= lt!1363459 e!2419632)))

(declare-fun c!680289 () Bool)

(assert (=> d!1161027 (= c!680289 ((_ is Nil!41470) prefix!426))))

(assert (=> d!1161027 (= (++!10669 prefix!426 suffix!1176) lt!1363459)))

(declare-fun b!3913636 () Bool)

(assert (=> b!3913636 (= e!2419632 (Cons!41470 (h!46890 prefix!426) (++!10669 (t!323407 prefix!426) suffix!1176)))))

(declare-fun b!3913638 () Bool)

(assert (=> b!3913638 (= e!2419633 (or (not (= suffix!1176 Nil!41470)) (= lt!1363459 prefix!426)))))

(declare-fun b!3913637 () Bool)

(declare-fun res!1582954 () Bool)

(assert (=> b!3913637 (=> (not res!1582954) (not e!2419633))))

(assert (=> b!3913637 (= res!1582954 (= (size!31136 lt!1363459) (+ (size!31136 prefix!426) (size!31136 suffix!1176))))))

(assert (= (and d!1161027 c!680289) b!3913635))

(assert (= (and d!1161027 (not c!680289)) b!3913636))

(assert (= (and d!1161027 res!1582955) b!3913637))

(assert (= (and b!3913637 res!1582954) b!3913638))

(declare-fun m!4477053 () Bool)

(assert (=> d!1161027 m!4477053))

(declare-fun m!4477055 () Bool)

(assert (=> d!1161027 m!4477055))

(declare-fun m!4477057 () Bool)

(assert (=> d!1161027 m!4477057))

(declare-fun m!4477059 () Bool)

(assert (=> b!3913636 m!4477059))

(declare-fun m!4477061 () Bool)

(assert (=> b!3913637 m!4477061))

(assert (=> b!3913637 m!4476639))

(assert (=> b!3913637 m!4476705))

(assert (=> b!3913275 d!1161027))

(declare-fun d!1161029 () Bool)

(declare-fun res!1582956 () Bool)

(declare-fun e!2419634 () Bool)

(assert (=> d!1161029 (=> (not res!1582956) (not e!2419634))))

(assert (=> d!1161029 (= res!1582956 (not (isEmpty!24673 (originalCharacters!7056 (h!46891 suffixTokens!72)))))))

(assert (=> d!1161029 (= (inv!55658 (h!46891 suffixTokens!72)) e!2419634)))

(declare-fun b!3913639 () Bool)

(declare-fun res!1582957 () Bool)

(assert (=> b!3913639 (=> (not res!1582957) (not e!2419634))))

(assert (=> b!3913639 (= res!1582957 (= (originalCharacters!7056 (h!46891 suffixTokens!72)) (list!15417 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (value!204630 (h!46891 suffixTokens!72))))))))

(declare-fun b!3913640 () Bool)

(assert (=> b!3913640 (= e!2419634 (= (size!31135 (h!46891 suffixTokens!72)) (size!31136 (originalCharacters!7056 (h!46891 suffixTokens!72)))))))

(assert (= (and d!1161029 res!1582956) b!3913639))

(assert (= (and b!3913639 res!1582957) b!3913640))

(declare-fun b_lambda!114583 () Bool)

(assert (=> (not b_lambda!114583) (not b!3913639)))

(declare-fun tb!233117 () Bool)

(declare-fun t!323435 () Bool)

(assert (=> (and b!3913276 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))) t!323435) tb!233117))

(declare-fun b!3913641 () Bool)

(declare-fun e!2419635 () Bool)

(declare-fun tp!1191182 () Bool)

(assert (=> b!3913641 (= e!2419635 (and (inv!55660 (c!680215 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (value!204630 (h!46891 suffixTokens!72))))) tp!1191182))))

(declare-fun result!282528 () Bool)

(assert (=> tb!233117 (= result!282528 (and (inv!55661 (dynLambda!17815 (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (value!204630 (h!46891 suffixTokens!72)))) e!2419635))))

(assert (= tb!233117 b!3913641))

(declare-fun m!4477063 () Bool)

(assert (=> b!3913641 m!4477063))

(declare-fun m!4477065 () Bool)

(assert (=> tb!233117 m!4477065))

(assert (=> b!3913639 t!323435))

(declare-fun b_and!297863 () Bool)

(assert (= b_and!297851 (and (=> t!323435 result!282528) b_and!297863)))

(declare-fun t!323437 () Bool)

(declare-fun tb!233119 () Bool)

(assert (=> (and b!3913270 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))) t!323437) tb!233119))

(declare-fun result!282530 () Bool)

(assert (= result!282530 result!282528))

(assert (=> b!3913639 t!323437))

(declare-fun b_and!297865 () Bool)

(assert (= b_and!297853 (and (=> t!323437 result!282530) b_and!297865)))

(declare-fun tb!233121 () Bool)

(declare-fun t!323439 () Bool)

(assert (=> (and b!3913289 (= (toChars!8763 (transformation!6456 (h!46892 rules!2768))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))) t!323439) tb!233121))

(declare-fun result!282532 () Bool)

(assert (= result!282532 result!282528))

(assert (=> b!3913639 t!323439))

(declare-fun b_and!297867 () Bool)

(assert (= b_and!297855 (and (=> t!323439 result!282532) b_and!297867)))

(declare-fun m!4477067 () Bool)

(assert (=> d!1161029 m!4477067))

(declare-fun m!4477069 () Bool)

(assert (=> b!3913639 m!4477069))

(assert (=> b!3913639 m!4477069))

(declare-fun m!4477071 () Bool)

(assert (=> b!3913639 m!4477071))

(declare-fun m!4477073 () Bool)

(assert (=> b!3913640 m!4477073))

(assert (=> b!3913271 d!1161029))

(declare-fun d!1161031 () Bool)

(assert (=> d!1161031 (= (isEmpty!24673 prefix!426) ((_ is Nil!41470) prefix!426))))

(assert (=> b!3913272 d!1161031))

(declare-fun d!1161033 () Bool)

(declare-fun lt!1363460 () Int)

(assert (=> d!1161033 (>= lt!1363460 0)))

(declare-fun e!2419636 () Int)

(assert (=> d!1161033 (= lt!1363460 e!2419636)))

(declare-fun c!680290 () Bool)

(assert (=> d!1161033 (= c!680290 ((_ is Nil!41470) lt!1363332))))

(assert (=> d!1161033 (= (size!31136 lt!1363332) lt!1363460)))

(declare-fun b!3913642 () Bool)

(assert (=> b!3913642 (= e!2419636 0)))

(declare-fun b!3913643 () Bool)

(assert (=> b!3913643 (= e!2419636 (+ 1 (size!31136 (t!323407 lt!1363332))))))

(assert (= (and d!1161033 c!680290) b!3913642))

(assert (= (and d!1161033 (not c!680290)) b!3913643))

(declare-fun m!4477075 () Bool)

(assert (=> b!3913643 m!4477075))

(assert (=> b!3913290 d!1161033))

(declare-fun d!1161035 () Bool)

(declare-fun res!1582960 () Bool)

(declare-fun e!2419639 () Bool)

(assert (=> d!1161035 (=> (not res!1582960) (not e!2419639))))

(declare-fun rulesValid!2506 (LexerInterface!6045 List!41596) Bool)

(assert (=> d!1161035 (= res!1582960 (rulesValid!2506 thiss!20629 rules!2768))))

(assert (=> d!1161035 (= (rulesInvariant!5388 thiss!20629 rules!2768) e!2419639)))

(declare-fun b!3913646 () Bool)

(declare-datatypes ((List!41597 0))(
  ( (Nil!41473) (Cons!41473 (h!46893 String!47148) (t!323506 List!41597)) )
))
(declare-fun noDuplicateTag!2507 (LexerInterface!6045 List!41596 List!41597) Bool)

(assert (=> b!3913646 (= e!2419639 (noDuplicateTag!2507 thiss!20629 rules!2768 Nil!41473))))

(assert (= (and d!1161035 res!1582960) b!3913646))

(declare-fun m!4477077 () Bool)

(assert (=> d!1161035 m!4477077))

(declare-fun m!4477079 () Bool)

(assert (=> b!3913646 m!4477079))

(assert (=> b!3913268 d!1161035))

(declare-fun d!1161037 () Bool)

(assert (=> d!1161037 (= (inv!55655 (tag!7316 (h!46892 rules!2768))) (= (mod (str.len (value!204629 (tag!7316 (h!46892 rules!2768)))) 2) 0))))

(assert (=> b!3913291 d!1161037))

(declare-fun d!1161039 () Bool)

(declare-fun res!1582961 () Bool)

(declare-fun e!2419640 () Bool)

(assert (=> d!1161039 (=> (not res!1582961) (not e!2419640))))

(assert (=> d!1161039 (= res!1582961 (semiInverseModEq!2772 (toChars!8763 (transformation!6456 (h!46892 rules!2768))) (toValue!8904 (transformation!6456 (h!46892 rules!2768)))))))

(assert (=> d!1161039 (= (inv!55659 (transformation!6456 (h!46892 rules!2768))) e!2419640)))

(declare-fun b!3913647 () Bool)

(assert (=> b!3913647 (= e!2419640 (equivClasses!2671 (toChars!8763 (transformation!6456 (h!46892 rules!2768))) (toValue!8904 (transformation!6456 (h!46892 rules!2768)))))))

(assert (= (and d!1161039 res!1582961) b!3913647))

(declare-fun m!4477081 () Bool)

(assert (=> d!1161039 m!4477081))

(declare-fun m!4477083 () Bool)

(assert (=> b!3913647 m!4477083))

(assert (=> b!3913291 d!1161039))

(declare-fun b!3913658 () Bool)

(declare-fun e!2419649 () Bool)

(declare-fun inv!15 (TokenValue!6686) Bool)

(assert (=> b!3913658 (= e!2419649 (inv!15 (value!204630 (h!46891 suffixTokens!72))))))

(declare-fun b!3913659 () Bool)

(declare-fun e!2419648 () Bool)

(declare-fun inv!17 (TokenValue!6686) Bool)

(assert (=> b!3913659 (= e!2419648 (inv!17 (value!204630 (h!46891 suffixTokens!72))))))

(declare-fun b!3913660 () Bool)

(declare-fun e!2419647 () Bool)

(assert (=> b!3913660 (= e!2419647 e!2419648)))

(declare-fun c!680296 () Bool)

(assert (=> b!3913660 (= c!680296 ((_ is IntegerValue!20059) (value!204630 (h!46891 suffixTokens!72))))))

(declare-fun b!3913661 () Bool)

(declare-fun inv!16 (TokenValue!6686) Bool)

(assert (=> b!3913661 (= e!2419647 (inv!16 (value!204630 (h!46891 suffixTokens!72))))))

(declare-fun b!3913662 () Bool)

(declare-fun res!1582964 () Bool)

(assert (=> b!3913662 (=> res!1582964 e!2419649)))

(assert (=> b!3913662 (= res!1582964 (not ((_ is IntegerValue!20060) (value!204630 (h!46891 suffixTokens!72)))))))

(assert (=> b!3913662 (= e!2419648 e!2419649)))

(declare-fun d!1161041 () Bool)

(declare-fun c!680295 () Bool)

(assert (=> d!1161041 (= c!680295 ((_ is IntegerValue!20058) (value!204630 (h!46891 suffixTokens!72))))))

(assert (=> d!1161041 (= (inv!21 (value!204630 (h!46891 suffixTokens!72))) e!2419647)))

(assert (= (and d!1161041 c!680295) b!3913661))

(assert (= (and d!1161041 (not c!680295)) b!3913660))

(assert (= (and b!3913660 c!680296) b!3913659))

(assert (= (and b!3913660 (not c!680296)) b!3913662))

(assert (= (and b!3913662 (not res!1582964)) b!3913658))

(declare-fun m!4477085 () Bool)

(assert (=> b!3913658 m!4477085))

(declare-fun m!4477087 () Bool)

(assert (=> b!3913659 m!4477087))

(declare-fun m!4477089 () Bool)

(assert (=> b!3913661 m!4477089))

(assert (=> b!3913266 d!1161041))

(declare-fun d!1161043 () Bool)

(declare-fun lt!1363461 () Int)

(assert (=> d!1161043 (>= lt!1363461 0)))

(declare-fun e!2419650 () Int)

(assert (=> d!1161043 (= lt!1363461 e!2419650)))

(declare-fun c!680297 () Bool)

(assert (=> d!1161043 (= c!680297 ((_ is Nil!41470) suffix!1176))))

(assert (=> d!1161043 (= (size!31136 suffix!1176) lt!1363461)))

(declare-fun b!3913663 () Bool)

(assert (=> b!3913663 (= e!2419650 0)))

(declare-fun b!3913664 () Bool)

(assert (=> b!3913664 (= e!2419650 (+ 1 (size!31136 (t!323407 suffix!1176))))))

(assert (= (and d!1161043 c!680297) b!3913663))

(assert (= (and d!1161043 (not c!680297)) b!3913664))

(declare-fun m!4477091 () Bool)

(assert (=> b!3913664 m!4477091))

(assert (=> b!3913267 d!1161043))

(declare-fun d!1161045 () Bool)

(declare-fun lt!1363468 () Int)

(assert (=> d!1161045 (>= lt!1363468 0)))

(declare-fun e!2419651 () Int)

(assert (=> d!1161045 (= lt!1363468 e!2419651)))

(declare-fun c!680298 () Bool)

(assert (=> d!1161045 (= c!680298 ((_ is Nil!41470) (_2!23493 (v!39199 lt!1363328))))))

(assert (=> d!1161045 (= (size!31136 (_2!23493 (v!39199 lt!1363328))) lt!1363468)))

(declare-fun b!3913665 () Bool)

(assert (=> b!3913665 (= e!2419651 0)))

(declare-fun b!3913666 () Bool)

(assert (=> b!3913666 (= e!2419651 (+ 1 (size!31136 (t!323407 (_2!23493 (v!39199 lt!1363328))))))))

(assert (= (and d!1161045 c!680298) b!3913665))

(assert (= (and d!1161045 (not c!680298)) b!3913666))

(declare-fun m!4477093 () Bool)

(assert (=> b!3913666 m!4477093))

(assert (=> b!3913267 d!1161045))

(declare-fun lt!1363469 () List!41595)

(declare-fun b!3913674 () Bool)

(declare-fun e!2419655 () Bool)

(assert (=> b!3913674 (= e!2419655 (or (not (= (_1!23494 lt!1363331) Nil!41471)) (= lt!1363469 (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471))))))

(declare-fun b!3913673 () Bool)

(declare-fun res!1582965 () Bool)

(assert (=> b!3913673 (=> (not res!1582965) (not e!2419655))))

(assert (=> b!3913673 (= res!1582965 (= (size!31139 lt!1363469) (+ (size!31139 (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471)) (size!31139 (_1!23494 lt!1363331)))))))

(declare-fun d!1161047 () Bool)

(assert (=> d!1161047 e!2419655))

(declare-fun res!1582966 () Bool)

(assert (=> d!1161047 (=> (not res!1582966) (not e!2419655))))

(assert (=> d!1161047 (= res!1582966 (= (content!6230 lt!1363469) ((_ map or) (content!6230 (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471)) (content!6230 (_1!23494 lt!1363331)))))))

(declare-fun e!2419654 () List!41595)

(assert (=> d!1161047 (= lt!1363469 e!2419654)))

(declare-fun c!680301 () Bool)

(assert (=> d!1161047 (= c!680301 ((_ is Nil!41471) (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471)))))

(assert (=> d!1161047 (= (++!10670 (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471) (_1!23494 lt!1363331)) lt!1363469)))

(declare-fun b!3913672 () Bool)

(assert (=> b!3913672 (= e!2419654 (Cons!41471 (h!46891 (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471)) (++!10670 (t!323408 (Cons!41471 (_1!23493 (v!39199 lt!1363328)) Nil!41471)) (_1!23494 lt!1363331))))))

(declare-fun b!3913671 () Bool)

(assert (=> b!3913671 (= e!2419654 (_1!23494 lt!1363331))))

(assert (= (and d!1161047 c!680301) b!3913671))

(assert (= (and d!1161047 (not c!680301)) b!3913672))

(assert (= (and d!1161047 res!1582966) b!3913673))

(assert (= (and b!3913673 res!1582965) b!3913674))

(declare-fun m!4477095 () Bool)

(assert (=> b!3913673 m!4477095))

(declare-fun m!4477097 () Bool)

(assert (=> b!3913673 m!4477097))

(declare-fun m!4477099 () Bool)

(assert (=> b!3913673 m!4477099))

(declare-fun m!4477101 () Bool)

(assert (=> d!1161047 m!4477101))

(declare-fun m!4477103 () Bool)

(assert (=> d!1161047 m!4477103))

(declare-fun m!4477105 () Bool)

(assert (=> d!1161047 m!4477105))

(declare-fun m!4477107 () Bool)

(assert (=> b!3913672 m!4477107))

(assert (=> b!3913288 d!1161047))

(declare-fun d!1161049 () Bool)

(assert (=> d!1161049 (= (isEmpty!24672 prefixTokens!80) ((_ is Nil!41471) prefixTokens!80))))

(assert (=> b!3913263 d!1161049))

(declare-fun d!1161051 () Bool)

(assert (=> d!1161051 (= (head!8265 prefixTokens!80) (h!46891 prefixTokens!80))))

(assert (=> b!3913284 d!1161051))

(declare-fun d!1161053 () Bool)

(assert (=> d!1161053 (= (get!13704 lt!1363328) (v!39199 lt!1363328))))

(assert (=> b!3913284 d!1161053))

(declare-fun b!3913689 () Bool)

(declare-fun e!2419662 () Bool)

(assert (=> b!3913689 (= e!2419662 (inv!15 (value!204630 (h!46891 prefixTokens!80))))))

(declare-fun b!3913690 () Bool)

(declare-fun e!2419661 () Bool)

(assert (=> b!3913690 (= e!2419661 (inv!17 (value!204630 (h!46891 prefixTokens!80))))))

(declare-fun b!3913691 () Bool)

(declare-fun e!2419660 () Bool)

(assert (=> b!3913691 (= e!2419660 e!2419661)))

(declare-fun c!680303 () Bool)

(assert (=> b!3913691 (= c!680303 ((_ is IntegerValue!20059) (value!204630 (h!46891 prefixTokens!80))))))

(declare-fun b!3913692 () Bool)

(assert (=> b!3913692 (= e!2419660 (inv!16 (value!204630 (h!46891 prefixTokens!80))))))

(declare-fun b!3913693 () Bool)

(declare-fun res!1582981 () Bool)

(assert (=> b!3913693 (=> res!1582981 e!2419662)))

(assert (=> b!3913693 (= res!1582981 (not ((_ is IntegerValue!20060) (value!204630 (h!46891 prefixTokens!80)))))))

(assert (=> b!3913693 (= e!2419661 e!2419662)))

(declare-fun d!1161055 () Bool)

(declare-fun c!680302 () Bool)

(assert (=> d!1161055 (= c!680302 ((_ is IntegerValue!20058) (value!204630 (h!46891 prefixTokens!80))))))

(assert (=> d!1161055 (= (inv!21 (value!204630 (h!46891 prefixTokens!80))) e!2419660)))

(assert (= (and d!1161055 c!680302) b!3913692))

(assert (= (and d!1161055 (not c!680302)) b!3913691))

(assert (= (and b!3913691 c!680303) b!3913690))

(assert (= (and b!3913691 (not c!680303)) b!3913693))

(assert (= (and b!3913693 (not res!1582981)) b!3913689))

(declare-fun m!4477109 () Bool)

(assert (=> b!3913689 m!4477109))

(declare-fun m!4477111 () Bool)

(assert (=> b!3913690 m!4477111))

(declare-fun m!4477113 () Bool)

(assert (=> b!3913692 m!4477113))

(assert (=> b!3913285 d!1161055))

(declare-fun b!3913694 () Bool)

(declare-fun e!2419663 () tuple2!40720)

(assert (=> b!3913694 (= e!2419663 (tuple2!40721 Nil!41471 suffix!1176))))

(declare-fun b!3913695 () Bool)

(declare-fun e!2419664 () Bool)

(declare-fun lt!1363475 () tuple2!40720)

(assert (=> b!3913695 (= e!2419664 (not (isEmpty!24672 (_1!23494 lt!1363475))))))

(declare-fun d!1161057 () Bool)

(declare-fun e!2419665 () Bool)

(assert (=> d!1161057 e!2419665))

(declare-fun c!680304 () Bool)

(assert (=> d!1161057 (= c!680304 (> (size!31139 (_1!23494 lt!1363475)) 0))))

(assert (=> d!1161057 (= lt!1363475 e!2419663)))

(declare-fun c!680305 () Bool)

(declare-fun lt!1363474 () Option!8876)

(assert (=> d!1161057 (= c!680305 ((_ is Some!8875) lt!1363474))))

(assert (=> d!1161057 (= lt!1363474 (maxPrefix!3349 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1161057 (= (lexList!1813 thiss!20629 rules!2768 suffix!1176) lt!1363475)))

(declare-fun b!3913696 () Bool)

(declare-fun lt!1363476 () tuple2!40720)

(assert (=> b!3913696 (= e!2419663 (tuple2!40721 (Cons!41471 (_1!23493 (v!39199 lt!1363474)) (_1!23494 lt!1363476)) (_2!23494 lt!1363476)))))

(assert (=> b!3913696 (= lt!1363476 (lexList!1813 thiss!20629 rules!2768 (_2!23493 (v!39199 lt!1363474))))))

(declare-fun b!3913697 () Bool)

(assert (=> b!3913697 (= e!2419665 e!2419664)))

(declare-fun res!1582982 () Bool)

(assert (=> b!3913697 (= res!1582982 (< (size!31136 (_2!23494 lt!1363475)) (size!31136 suffix!1176)))))

(assert (=> b!3913697 (=> (not res!1582982) (not e!2419664))))

(declare-fun b!3913698 () Bool)

(assert (=> b!3913698 (= e!2419665 (= (_2!23494 lt!1363475) suffix!1176))))

(assert (= (and d!1161057 c!680305) b!3913696))

(assert (= (and d!1161057 (not c!680305)) b!3913694))

(assert (= (and d!1161057 c!680304) b!3913697))

(assert (= (and d!1161057 (not c!680304)) b!3913698))

(assert (= (and b!3913697 res!1582982) b!3913695))

(declare-fun m!4477115 () Bool)

(assert (=> b!3913695 m!4477115))

(declare-fun m!4477117 () Bool)

(assert (=> d!1161057 m!4477117))

(declare-fun m!4477119 () Bool)

(assert (=> d!1161057 m!4477119))

(declare-fun m!4477121 () Bool)

(assert (=> b!3913696 m!4477121))

(declare-fun m!4477123 () Bool)

(assert (=> b!3913697 m!4477123))

(assert (=> b!3913697 m!4476705))

(assert (=> b!3913264 d!1161057))

(declare-fun b!3913712 () Bool)

(declare-fun b_free!106193 () Bool)

(declare-fun b_next!106897 () Bool)

(assert (=> b!3913712 (= b_free!106193 (not b_next!106897))))

(declare-fun tb!233123 () Bool)

(declare-fun t!323441 () Bool)

(assert (=> (and b!3913712 (= (toValue!8904 (transformation!6456 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323441) tb!233123))

(declare-fun result!282536 () Bool)

(assert (= result!282536 result!282520))

(assert (=> d!1160989 t!323441))

(declare-fun b_and!297869 () Bool)

(declare-fun tp!1191193 () Bool)

(assert (=> b!3913712 (= tp!1191193 (and (=> t!323441 result!282536) b_and!297869))))

(declare-fun b_free!106195 () Bool)

(declare-fun b_next!106899 () Bool)

(assert (=> b!3913712 (= b_free!106195 (not b_next!106899))))

(declare-fun t!323443 () Bool)

(declare-fun tb!233125 () Bool)

(assert (=> (and b!3913712 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))) t!323443) tb!233125))

(declare-fun result!282538 () Bool)

(assert (= result!282538 result!282498))

(assert (=> b!3913324 t!323443))

(declare-fun t!323445 () Bool)

(declare-fun tb!233127 () Bool)

(assert (=> (and b!3913712 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323445) tb!233127))

(declare-fun result!282540 () Bool)

(assert (= result!282540 result!282514))

(assert (=> d!1160975 t!323445))

(declare-fun t!323447 () Bool)

(declare-fun tb!233129 () Bool)

(assert (=> (and b!3913712 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))) t!323447) tb!233129))

(declare-fun result!282542 () Bool)

(assert (= result!282542 result!282528))

(assert (=> b!3913639 t!323447))

(declare-fun b_and!297871 () Bool)

(declare-fun tp!1191194 () Bool)

(assert (=> b!3913712 (= tp!1191194 (and (=> t!323443 result!282538) (=> t!323445 result!282540) (=> t!323447 result!282542) b_and!297871))))

(declare-fun e!2419680 () Bool)

(assert (=> b!3913271 (= tp!1191161 e!2419680)))

(declare-fun tp!1191196 () Bool)

(declare-fun b!3913709 () Bool)

(declare-fun e!2419683 () Bool)

(assert (=> b!3913709 (= e!2419680 (and (inv!55658 (h!46891 (t!323408 suffixTokens!72))) e!2419683 tp!1191196))))

(declare-fun tp!1191195 () Bool)

(declare-fun b!3913710 () Bool)

(declare-fun e!2419678 () Bool)

(assert (=> b!3913710 (= e!2419683 (and (inv!21 (value!204630 (h!46891 (t!323408 suffixTokens!72)))) e!2419678 tp!1191195))))

(declare-fun e!2419679 () Bool)

(declare-fun tp!1191197 () Bool)

(declare-fun b!3913711 () Bool)

(assert (=> b!3913711 (= e!2419678 (and tp!1191197 (inv!55655 (tag!7316 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) (inv!55659 (transformation!6456 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) e!2419679))))

(assert (=> b!3913712 (= e!2419679 (and tp!1191193 tp!1191194))))

(assert (= b!3913711 b!3913712))

(assert (= b!3913710 b!3913711))

(assert (= b!3913709 b!3913710))

(assert (= (and b!3913271 ((_ is Cons!41471) (t!323408 suffixTokens!72))) b!3913709))

(declare-fun m!4477125 () Bool)

(assert (=> b!3913709 m!4477125))

(declare-fun m!4477127 () Bool)

(assert (=> b!3913710 m!4477127))

(declare-fun m!4477129 () Bool)

(assert (=> b!3913711 m!4477129))

(declare-fun m!4477131 () Bool)

(assert (=> b!3913711 m!4477131))

(declare-fun b!3913726 () Bool)

(declare-fun e!2419689 () Bool)

(declare-fun tp!1191200 () Bool)

(assert (=> b!3913726 (= e!2419689 (and tp_is_empty!19693 tp!1191200))))

(assert (=> b!3913282 (= tp!1191160 e!2419689)))

(assert (= (and b!3913282 ((_ is Cons!41470) (t!323407 suffixResult!91))) b!3913726))

(declare-fun b!3913730 () Bool)

(declare-fun b_free!106197 () Bool)

(declare-fun b_next!106901 () Bool)

(assert (=> b!3913730 (= b_free!106197 (not b_next!106901))))

(declare-fun t!323449 () Bool)

(declare-fun tb!233131 () Bool)

(assert (=> (and b!3913730 (= (toValue!8904 (transformation!6456 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323449) tb!233131))

(declare-fun result!282546 () Bool)

(assert (= result!282546 result!282520))

(assert (=> d!1160989 t!323449))

(declare-fun b_and!297873 () Bool)

(declare-fun tp!1191201 () Bool)

(assert (=> b!3913730 (= tp!1191201 (and (=> t!323449 result!282546) b_and!297873))))

(declare-fun b_free!106199 () Bool)

(declare-fun b_next!106903 () Bool)

(assert (=> b!3913730 (= b_free!106199 (not b_next!106903))))

(declare-fun t!323451 () Bool)

(declare-fun tb!233133 () Bool)

(assert (=> (and b!3913730 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))) t!323451) tb!233133))

(declare-fun result!282548 () Bool)

(assert (= result!282548 result!282498))

(assert (=> b!3913324 t!323451))

(declare-fun t!323453 () Bool)

(declare-fun tb!233135 () Bool)

(assert (=> (and b!3913730 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323453) tb!233135))

(declare-fun result!282550 () Bool)

(assert (= result!282550 result!282514))

(assert (=> d!1160975 t!323453))

(declare-fun tb!233137 () Bool)

(declare-fun t!323455 () Bool)

(assert (=> (and b!3913730 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))) t!323455) tb!233137))

(declare-fun result!282552 () Bool)

(assert (= result!282552 result!282528))

(assert (=> b!3913639 t!323455))

(declare-fun tp!1191202 () Bool)

(declare-fun b_and!297875 () Bool)

(assert (=> b!3913730 (= tp!1191202 (and (=> t!323451 result!282548) (=> t!323453 result!282550) (=> t!323455 result!282552) b_and!297875))))

(declare-fun e!2419692 () Bool)

(assert (=> b!3913260 (= tp!1191170 e!2419692)))

(declare-fun tp!1191204 () Bool)

(declare-fun e!2419695 () Bool)

(declare-fun b!3913727 () Bool)

(assert (=> b!3913727 (= e!2419692 (and (inv!55658 (h!46891 (t!323408 prefixTokens!80))) e!2419695 tp!1191204))))

(declare-fun b!3913728 () Bool)

(declare-fun e!2419690 () Bool)

(declare-fun tp!1191203 () Bool)

(assert (=> b!3913728 (= e!2419695 (and (inv!21 (value!204630 (h!46891 (t!323408 prefixTokens!80)))) e!2419690 tp!1191203))))

(declare-fun e!2419691 () Bool)

(declare-fun tp!1191205 () Bool)

(declare-fun b!3913729 () Bool)

(assert (=> b!3913729 (= e!2419690 (and tp!1191205 (inv!55655 (tag!7316 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) (inv!55659 (transformation!6456 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) e!2419691))))

(assert (=> b!3913730 (= e!2419691 (and tp!1191201 tp!1191202))))

(assert (= b!3913729 b!3913730))

(assert (= b!3913728 b!3913729))

(assert (= b!3913727 b!3913728))

(assert (= (and b!3913260 ((_ is Cons!41471) (t!323408 prefixTokens!80))) b!3913727))

(declare-fun m!4477133 () Bool)

(assert (=> b!3913727 m!4477133))

(declare-fun m!4477137 () Bool)

(assert (=> b!3913728 m!4477137))

(declare-fun m!4477139 () Bool)

(assert (=> b!3913729 m!4477139))

(declare-fun m!4477143 () Bool)

(assert (=> b!3913729 m!4477143))

(declare-fun b!3913743 () Bool)

(declare-fun e!2419698 () Bool)

(declare-fun tp!1191220 () Bool)

(assert (=> b!3913743 (= e!2419698 tp!1191220)))

(assert (=> b!3913279 (= tp!1191163 e!2419698)))

(declare-fun b!3913741 () Bool)

(assert (=> b!3913741 (= e!2419698 tp_is_empty!19693)))

(declare-fun b!3913742 () Bool)

(declare-fun tp!1191217 () Bool)

(declare-fun tp!1191219 () Bool)

(assert (=> b!3913742 (= e!2419698 (and tp!1191217 tp!1191219))))

(declare-fun b!3913744 () Bool)

(declare-fun tp!1191218 () Bool)

(declare-fun tp!1191216 () Bool)

(assert (=> b!3913744 (= e!2419698 (and tp!1191218 tp!1191216))))

(assert (= (and b!3913279 ((_ is ElementMatch!11361) (regex!6456 (rule!9374 (h!46891 suffixTokens!72))))) b!3913741))

(assert (= (and b!3913279 ((_ is Concat!18048) (regex!6456 (rule!9374 (h!46891 suffixTokens!72))))) b!3913742))

(assert (= (and b!3913279 ((_ is Star!11361) (regex!6456 (rule!9374 (h!46891 suffixTokens!72))))) b!3913743))

(assert (= (and b!3913279 ((_ is Union!11361) (regex!6456 (rule!9374 (h!46891 suffixTokens!72))))) b!3913744))

(declare-fun b!3913751 () Bool)

(declare-fun e!2419701 () Bool)

(declare-fun tp!1191225 () Bool)

(assert (=> b!3913751 (= e!2419701 tp!1191225)))

(assert (=> b!3913291 (= tp!1191169 e!2419701)))

(declare-fun b!3913749 () Bool)

(assert (=> b!3913749 (= e!2419701 tp_is_empty!19693)))

(declare-fun b!3913750 () Bool)

(declare-fun tp!1191222 () Bool)

(declare-fun tp!1191224 () Bool)

(assert (=> b!3913750 (= e!2419701 (and tp!1191222 tp!1191224))))

(declare-fun b!3913752 () Bool)

(declare-fun tp!1191223 () Bool)

(declare-fun tp!1191221 () Bool)

(assert (=> b!3913752 (= e!2419701 (and tp!1191223 tp!1191221))))

(assert (= (and b!3913291 ((_ is ElementMatch!11361) (regex!6456 (h!46892 rules!2768)))) b!3913749))

(assert (= (and b!3913291 ((_ is Concat!18048) (regex!6456 (h!46892 rules!2768)))) b!3913750))

(assert (= (and b!3913291 ((_ is Star!11361) (regex!6456 (h!46892 rules!2768)))) b!3913751))

(assert (= (and b!3913291 ((_ is Union!11361) (regex!6456 (h!46892 rules!2768)))) b!3913752))

(declare-fun b!3913753 () Bool)

(declare-fun e!2419702 () Bool)

(declare-fun tp!1191226 () Bool)

(assert (=> b!3913753 (= e!2419702 (and tp_is_empty!19693 tp!1191226))))

(assert (=> b!3913266 (= tp!1191165 e!2419702)))

(assert (= (and b!3913266 ((_ is Cons!41470) (originalCharacters!7056 (h!46891 suffixTokens!72)))) b!3913753))

(declare-fun b!3913754 () Bool)

(declare-fun e!2419703 () Bool)

(declare-fun tp!1191227 () Bool)

(assert (=> b!3913754 (= e!2419703 (and tp_is_empty!19693 tp!1191227))))

(assert (=> b!3913265 (= tp!1191158 e!2419703)))

(assert (= (and b!3913265 ((_ is Cons!41470) (t!323407 suffix!1176))) b!3913754))

(declare-fun b!3913774 () Bool)

(declare-fun b_free!106201 () Bool)

(declare-fun b_next!106905 () Bool)

(assert (=> b!3913774 (= b_free!106201 (not b_next!106905))))

(declare-fun t!323457 () Bool)

(declare-fun tb!233139 () Bool)

(assert (=> (and b!3913774 (= (toValue!8904 (transformation!6456 (h!46892 (t!323409 rules!2768)))) (toValue!8904 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323457) tb!233139))

(declare-fun result!282558 () Bool)

(assert (= result!282558 result!282520))

(assert (=> d!1160989 t!323457))

(declare-fun tp!1191236 () Bool)

(declare-fun b_and!297877 () Bool)

(assert (=> b!3913774 (= tp!1191236 (and (=> t!323457 result!282558) b_and!297877))))

(declare-fun b_free!106203 () Bool)

(declare-fun b_next!106907 () Bool)

(assert (=> b!3913774 (= b_free!106203 (not b_next!106907))))

(declare-fun tb!233141 () Bool)

(declare-fun t!323459 () Bool)

(assert (=> (and b!3913774 (= (toChars!8763 (transformation!6456 (h!46892 (t!323409 rules!2768)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80))))) t!323459) tb!233141))

(declare-fun result!282560 () Bool)

(assert (= result!282560 result!282498))

(assert (=> b!3913324 t!323459))

(declare-fun t!323461 () Bool)

(declare-fun tb!233143 () Bool)

(assert (=> (and b!3913774 (= (toChars!8763 (transformation!6456 (h!46892 (t!323409 rules!2768)))) (toChars!8763 (transformation!6456 (rule!9374 (_1!23493 (v!39199 lt!1363328)))))) t!323461) tb!233143))

(declare-fun result!282562 () Bool)

(assert (= result!282562 result!282514))

(assert (=> d!1160975 t!323461))

(declare-fun tb!233145 () Bool)

(declare-fun t!323463 () Bool)

(assert (=> (and b!3913774 (= (toChars!8763 (transformation!6456 (h!46892 (t!323409 rules!2768)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72))))) t!323463) tb!233145))

(declare-fun result!282564 () Bool)

(assert (= result!282564 result!282528))

(assert (=> b!3913639 t!323463))

(declare-fun tp!1191239 () Bool)

(declare-fun b_and!297879 () Bool)

(assert (=> b!3913774 (= tp!1191239 (and (=> t!323459 result!282560) (=> t!323461 result!282562) (=> t!323463 result!282564) b_and!297879))))

(declare-fun e!2419718 () Bool)

(assert (=> b!3913774 (= e!2419718 (and tp!1191236 tp!1191239))))

(declare-fun e!2419717 () Bool)

(declare-fun tp!1191237 () Bool)

(declare-fun b!3913773 () Bool)

(assert (=> b!3913773 (= e!2419717 (and tp!1191237 (inv!55655 (tag!7316 (h!46892 (t!323409 rules!2768)))) (inv!55659 (transformation!6456 (h!46892 (t!323409 rules!2768)))) e!2419718))))

(declare-fun b!3913772 () Bool)

(declare-fun e!2419720 () Bool)

(declare-fun tp!1191238 () Bool)

(assert (=> b!3913772 (= e!2419720 (and e!2419717 tp!1191238))))

(assert (=> b!3913287 (= tp!1191171 e!2419720)))

(assert (= b!3913773 b!3913774))

(assert (= b!3913772 b!3913773))

(assert (= (and b!3913287 ((_ is Cons!41472) (t!323409 rules!2768))) b!3913772))

(declare-fun m!4477197 () Bool)

(assert (=> b!3913773 m!4477197))

(declare-fun m!4477199 () Bool)

(assert (=> b!3913773 m!4477199))

(declare-fun b!3913778 () Bool)

(declare-fun e!2419722 () Bool)

(declare-fun tp!1191244 () Bool)

(assert (=> b!3913778 (= e!2419722 tp!1191244)))

(assert (=> b!3913277 (= tp!1191164 e!2419722)))

(declare-fun b!3913776 () Bool)

(assert (=> b!3913776 (= e!2419722 tp_is_empty!19693)))

(declare-fun b!3913777 () Bool)

(declare-fun tp!1191241 () Bool)

(declare-fun tp!1191243 () Bool)

(assert (=> b!3913777 (= e!2419722 (and tp!1191241 tp!1191243))))

(declare-fun b!3913779 () Bool)

(declare-fun tp!1191242 () Bool)

(declare-fun tp!1191240 () Bool)

(assert (=> b!3913779 (= e!2419722 (and tp!1191242 tp!1191240))))

(assert (= (and b!3913277 ((_ is ElementMatch!11361) (regex!6456 (rule!9374 (h!46891 prefixTokens!80))))) b!3913776))

(assert (= (and b!3913277 ((_ is Concat!18048) (regex!6456 (rule!9374 (h!46891 prefixTokens!80))))) b!3913777))

(assert (= (and b!3913277 ((_ is Star!11361) (regex!6456 (rule!9374 (h!46891 prefixTokens!80))))) b!3913778))

(assert (= (and b!3913277 ((_ is Union!11361) (regex!6456 (rule!9374 (h!46891 prefixTokens!80))))) b!3913779))

(declare-fun b!3913780 () Bool)

(declare-fun e!2419723 () Bool)

(declare-fun tp!1191245 () Bool)

(assert (=> b!3913780 (= e!2419723 (and tp_is_empty!19693 tp!1191245))))

(assert (=> b!3913285 (= tp!1191172 e!2419723)))

(assert (= (and b!3913285 ((_ is Cons!41470) (originalCharacters!7056 (h!46891 prefixTokens!80)))) b!3913780))

(declare-fun b!3913781 () Bool)

(declare-fun e!2419724 () Bool)

(declare-fun tp!1191246 () Bool)

(assert (=> b!3913781 (= e!2419724 (and tp_is_empty!19693 tp!1191246))))

(assert (=> b!3913286 (= tp!1191166 e!2419724)))

(assert (= (and b!3913286 ((_ is Cons!41470) (t!323407 prefix!426))) b!3913781))

(declare-fun b_lambda!114585 () Bool)

(assert (= b_lambda!114583 (or (and b!3913289 b_free!106191 (= (toChars!8763 (transformation!6456 (h!46892 rules!2768))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))))) (and b!3913712 b_free!106195 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))))) (and b!3913270 b_free!106187) (and b!3913730 b_free!106199 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))))) (and b!3913276 b_free!106183 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))))) (and b!3913774 b_free!106203 (= (toChars!8763 (transformation!6456 (h!46892 (t!323409 rules!2768)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))))) b_lambda!114585)))

(declare-fun b_lambda!114587 () Bool)

(assert (= b_lambda!114575 (or (and b!3913730 b_free!106199 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 prefixTokens!80))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))))) (and b!3913270 b_free!106187 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 suffixTokens!72)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))))) (and b!3913774 b_free!106203 (= (toChars!8763 (transformation!6456 (h!46892 (t!323409 rules!2768)))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))))) (and b!3913276 b_free!106183) (and b!3913712 b_free!106195 (= (toChars!8763 (transformation!6456 (rule!9374 (h!46891 (t!323408 suffixTokens!72))))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))))) (and b!3913289 b_free!106191 (= (toChars!8763 (transformation!6456 (h!46892 rules!2768))) (toChars!8763 (transformation!6456 (rule!9374 (h!46891 prefixTokens!80)))))) b_lambda!114587)))

(check-sat (not b!3913640) (not b!3913469) (not b!3913330) tp_is_empty!19693 (not b!3913633) b_and!297869 (not b!3913751) (not b!3913319) (not b!3913512) (not b_next!106893) (not b!3913643) (not b!3913466) (not b!3913482) (not b_lambda!114581) (not b!3913325) b_and!297863 (not tb!233105) (not b!3913510) (not d!1161047) b_and!297873 (not b!3913468) (not b!3913777) (not d!1161057) (not b!3913486) (not d!1160983) (not d!1161023) (not d!1161035) (not b!3913615) (not b!3913324) (not d!1160999) (not b!3913509) (not b!3913636) (not b_next!106895) (not b!3913315) (not b!3913463) (not b!3913639) (not b!3913696) (not b!3913692) (not tb!233117) b_and!297861 (not b!3913411) (not b_next!106903) (not b!3913412) (not d!1160947) (not d!1161021) (not b!3913726) (not d!1160943) (not b!3913488) (not d!1160937) (not b!3913658) b_and!297865 (not b_next!106887) (not d!1160975) (not b!3913399) (not b!3913336) (not b!3913619) (not b!3913511) (not d!1161027) (not b_next!106891) (not b!3913752) (not b_next!106885) (not b!3913781) (not b!3913621) (not tb!233093) (not b!3913558) (not bm!284398) (not b_next!106897) (not b!3913641) (not b!3913689) (not b!3913710) (not d!1161019) (not b!3913402) (not b!3913604) (not bm!284401) (not b!3913709) (not b!3913311) (not d!1161025) (not b!3913646) (not b_next!106907) (not tb!233111) b_and!297871 (not b!3913409) (not d!1161029) b_and!297875 (not b!3913673) (not b!3913647) (not b!3913637) (not b!3913728) (not b!3913539) (not d!1160979) (not b!3913697) (not d!1160993) (not b!3913575) (not b!3913750) (not b!3913778) (not b!3913743) (not b!3913690) (not b!3913318) b_and!297877 b_and!297867 (not b!3913316) (not b!3913538) (not b!3913471) b_and!297859 (not b!3913537) (not b_next!106901) (not b!3913672) (not b!3913659) (not d!1160955) (not b!3913780) (not b_next!106899) (not b!3913632) (not b!3913314) (not d!1160995) (not b!3913711) (not b!3913666) (not b!3913695) (not b!3913664) (not b!3913729) (not b!3913470) (not b!3913464) (not b!3913773) (not b!3913753) (not b!3913779) (not d!1161003) (not b!3913742) (not b!3913312) (not d!1160931) (not d!1160933) (not d!1160961) (not b!3913620) (not b!3913754) (not b!3913403) (not b_next!106905) (not b_next!106889) (not b!3913727) (not d!1160987) (not b_lambda!114587) (not b!3913485) (not b_lambda!114579) (not d!1161039) (not b!3913661) b_and!297857 (not b_lambda!114585) (not b!3913616) b_and!297879 (not d!1161005) (not b!3913313) (not b!3913744) (not b!3913465) (not b!3913772))
(check-sat b_and!297863 b_and!297873 (not b_next!106895) (not b_next!106897) (not b_next!106907) b_and!297859 (not b_next!106901) (not b_next!106899) (not b_next!106905) (not b_next!106889) b_and!297857 b_and!297879 b_and!297869 (not b_next!106893) b_and!297861 (not b_next!106903) b_and!297865 (not b_next!106887) (not b_next!106885) (not b_next!106891) b_and!297871 b_and!297875 b_and!297877 b_and!297867)
