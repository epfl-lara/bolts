; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56476 () Bool)

(assert start!56476)

(declare-fun b!597486 () Bool)

(declare-fun b_free!16957 () Bool)

(declare-fun b_next!16973 () Bool)

(assert (=> b!597486 (= b_free!16957 (not b_next!16973))))

(declare-fun tp!186304 () Bool)

(declare-fun b_and!58979 () Bool)

(assert (=> b!597486 (= tp!186304 b_and!58979)))

(declare-fun b_free!16959 () Bool)

(declare-fun b_next!16975 () Bool)

(assert (=> b!597486 (= b_free!16959 (not b_next!16975))))

(declare-fun tp!186310 () Bool)

(declare-fun b_and!58981 () Bool)

(assert (=> b!597486 (= tp!186310 b_and!58981)))

(declare-fun b!597499 () Bool)

(declare-fun b_free!16961 () Bool)

(declare-fun b_next!16977 () Bool)

(assert (=> b!597499 (= b_free!16961 (not b_next!16977))))

(declare-fun tp!186306 () Bool)

(declare-fun b_and!58983 () Bool)

(assert (=> b!597499 (= tp!186306 b_and!58983)))

(declare-fun b_free!16963 () Bool)

(declare-fun b_next!16979 () Bool)

(assert (=> b!597499 (= b_free!16963 (not b_next!16979))))

(declare-fun tp!186311 () Bool)

(declare-fun b_and!58985 () Bool)

(assert (=> b!597499 (= tp!186311 b_and!58985)))

(declare-fun b!597476 () Bool)

(declare-fun e!361816 () Bool)

(assert (=> b!597476 (= e!361816 true)))

(declare-fun e!361818 () Bool)

(assert (=> b!597476 e!361818))

(declare-fun res!258131 () Bool)

(assert (=> b!597476 (=> (not res!258131) (not e!361818))))

(declare-datatypes ((C!3956 0))(
  ( (C!3957 (val!2204 Int)) )
))
(declare-datatypes ((Regex!1517 0))(
  ( (ElementMatch!1517 (c!111065 C!3956)) (Concat!2724 (regOne!3546 Regex!1517) (regTwo!3546 Regex!1517)) (EmptyExpr!1517) (Star!1517 (reg!1846 Regex!1517)) (EmptyLang!1517) (Union!1517 (regOne!3547 Regex!1517) (regTwo!3547 Regex!1517)) )
))
(declare-datatypes ((List!5974 0))(
  ( (Nil!5964) (Cons!5964 (h!11365 (_ BitVec 16)) (t!79555 List!5974)) )
))
(declare-datatypes ((TokenValue!1207 0))(
  ( (FloatLiteralValue!2414 (text!8894 List!5974)) (TokenValueExt!1206 (__x!4312 Int)) (Broken!6035 (value!38556 List!5974)) (Object!1216) (End!1207) (Def!1207) (Underscore!1207) (Match!1207) (Else!1207) (Error!1207) (Case!1207) (If!1207) (Extends!1207) (Abstract!1207) (Class!1207) (Val!1207) (DelimiterValue!2414 (del!1267 List!5974)) (KeywordValue!1213 (value!38557 List!5974)) (CommentValue!2414 (value!38558 List!5974)) (WhitespaceValue!2414 (value!38559 List!5974)) (IndentationValue!1207 (value!38560 List!5974)) (String!7778) (Int32!1207) (Broken!6036 (value!38561 List!5974)) (Boolean!1208) (Unit!10850) (OperatorValue!1210 (op!1267 List!5974)) (IdentifierValue!2414 (value!38562 List!5974)) (IdentifierValue!2415 (value!38563 List!5974)) (WhitespaceValue!2415 (value!38564 List!5974)) (True!2414) (False!2414) (Broken!6037 (value!38565 List!5974)) (Broken!6038 (value!38566 List!5974)) (True!2415) (RightBrace!1207) (RightBracket!1207) (Colon!1207) (Null!1207) (Comma!1207) (LeftBracket!1207) (False!2415) (LeftBrace!1207) (ImaginaryLiteralValue!1207 (text!8895 List!5974)) (StringLiteralValue!3621 (value!38567 List!5974)) (EOFValue!1207 (value!38568 List!5974)) (IdentValue!1207 (value!38569 List!5974)) (DelimiterValue!2415 (value!38570 List!5974)) (DedentValue!1207 (value!38571 List!5974)) (NewLineValue!1207 (value!38572 List!5974)) (IntegerValue!3621 (value!38573 (_ BitVec 32)) (text!8896 List!5974)) (IntegerValue!3622 (value!38574 Int) (text!8897 List!5974)) (Times!1207) (Or!1207) (Equal!1207) (Minus!1207) (Broken!6039 (value!38575 List!5974)) (And!1207) (Div!1207) (LessEqual!1207) (Mod!1207) (Concat!2725) (Not!1207) (Plus!1207) (SpaceValue!1207 (value!38576 List!5974)) (IntegerValue!3623 (value!38577 Int) (text!8898 List!5974)) (StringLiteralValue!3622 (text!8899 List!5974)) (FloatLiteralValue!2415 (text!8900 List!5974)) (BytesLiteralValue!1207 (value!38578 List!5974)) (CommentValue!2415 (value!38579 List!5974)) (StringLiteralValue!3623 (value!38580 List!5974)) (ErrorTokenValue!1207 (msg!1268 List!5974)) )
))
(declare-datatypes ((String!7779 0))(
  ( (String!7780 (value!38581 String)) )
))
(declare-datatypes ((List!5975 0))(
  ( (Nil!5965) (Cons!5965 (h!11366 C!3956) (t!79556 List!5975)) )
))
(declare-datatypes ((IArray!3801 0))(
  ( (IArray!3802 (innerList!1958 List!5975)) )
))
(declare-datatypes ((Conc!1900 0))(
  ( (Node!1900 (left!4804 Conc!1900) (right!5134 Conc!1900) (csize!4030 Int) (cheight!2111 Int)) (Leaf!2999 (xs!4537 IArray!3801) (csize!4031 Int)) (Empty!1900) )
))
(declare-datatypes ((BalanceConc!3808 0))(
  ( (BalanceConc!3809 (c!111066 Conc!1900)) )
))
(declare-datatypes ((TokenValueInjection!2182 0))(
  ( (TokenValueInjection!2183 (toValue!2074 Int) (toChars!1933 Int)) )
))
(declare-datatypes ((Rule!2166 0))(
  ( (Rule!2167 (regex!1183 Regex!1517) (tag!1445 String!7779) (isSeparator!1183 Bool) (transformation!1183 TokenValueInjection!2182)) )
))
(declare-datatypes ((Token!2102 0))(
  ( (Token!2103 (value!38582 TokenValue!1207) (rule!1953 Rule!2166) (size!4700 Int) (originalCharacters!1222 List!5975)) )
))
(declare-fun token!491 () Token!2102)

(declare-fun lt!254252 () TokenValue!1207)

(assert (=> b!597476 (= res!258131 (= (value!38582 token!491) lt!254252))))

(declare-fun lt!254248 () List!5975)

(declare-fun apply!1436 (TokenValueInjection!2182 BalanceConc!3808) TokenValue!1207)

(declare-fun seqFromList!1359 (List!5975) BalanceConc!3808)

(assert (=> b!597476 (= lt!254252 (apply!1436 (transformation!1183 (rule!1953 token!491)) (seqFromList!1359 lt!254248)))))

(declare-fun suffix!1342 () List!5975)

(declare-fun lt!254269 () List!5975)

(assert (=> b!597476 (= suffix!1342 lt!254269)))

(declare-fun lt!254246 () List!5975)

(declare-datatypes ((Unit!10851 0))(
  ( (Unit!10852) )
))
(declare-fun lt!254255 () Unit!10851)

(declare-fun lemmaSamePrefixThenSameSuffix!524 (List!5975 List!5975 List!5975 List!5975 List!5975) Unit!10851)

(assert (=> b!597476 (= lt!254255 (lemmaSamePrefixThenSameSuffix!524 lt!254248 suffix!1342 lt!254248 lt!254269 lt!254246))))

(declare-fun getSuffix!328 (List!5975 List!5975) List!5975)

(assert (=> b!597476 (= lt!254269 (getSuffix!328 lt!254246 lt!254248))))

(declare-fun b!597477 () Bool)

(declare-fun e!361829 () Bool)

(declare-fun e!361826 () Bool)

(assert (=> b!597477 (= e!361829 e!361826)))

(declare-fun res!258136 () Bool)

(assert (=> b!597477 (=> (not res!258136) (not e!361826))))

(declare-fun input!2705 () List!5975)

(assert (=> b!597477 (= res!258136 (= lt!254248 input!2705))))

(declare-fun list!2498 (BalanceConc!3808) List!5975)

(declare-fun charsOf!812 (Token!2102) BalanceConc!3808)

(assert (=> b!597477 (= lt!254248 (list!2498 (charsOf!812 token!491)))))

(declare-fun b!597478 () Bool)

(declare-fun e!361824 () Bool)

(assert (=> b!597478 (= e!361826 e!361824)))

(declare-fun res!258140 () Bool)

(assert (=> b!597478 (=> (not res!258140) (not e!361824))))

(declare-datatypes ((tuple2!6860 0))(
  ( (tuple2!6861 (_1!3694 Token!2102) (_2!3694 List!5975)) )
))
(declare-datatypes ((Option!1534 0))(
  ( (None!1533) (Some!1533 (v!16420 tuple2!6860)) )
))
(declare-fun lt!254270 () Option!1534)

(declare-fun isDefined!1345 (Option!1534) Bool)

(assert (=> b!597478 (= res!258140 (isDefined!1345 lt!254270))))

(declare-datatypes ((List!5976 0))(
  ( (Nil!5966) (Cons!5966 (h!11367 Rule!2166) (t!79557 List!5976)) )
))
(declare-fun rules!3103 () List!5976)

(declare-datatypes ((LexerInterface!1069 0))(
  ( (LexerInterfaceExt!1066 (__x!4313 Int)) (Lexer!1067) )
))
(declare-fun thiss!22590 () LexerInterface!1069)

(declare-fun maxPrefix!767 (LexerInterface!1069 List!5976 List!5975) Option!1534)

(assert (=> b!597478 (= lt!254270 (maxPrefix!767 thiss!22590 rules!3103 lt!254246))))

(declare-fun ++!1671 (List!5975 List!5975) List!5975)

(assert (=> b!597478 (= lt!254246 (++!1671 input!2705 suffix!1342))))

(declare-fun b!597479 () Bool)

(declare-fun res!258130 () Bool)

(declare-fun e!361815 () Bool)

(assert (=> b!597479 (=> (not res!258130) (not e!361815))))

(declare-fun lt!254271 () Option!1534)

(declare-fun size!4701 (List!5975) Int)

(assert (=> b!597479 (= res!258130 (= (size!4700 (_1!3694 (v!16420 lt!254271))) (size!4701 (originalCharacters!1222 (_1!3694 (v!16420 lt!254271))))))))

(declare-fun lt!254250 () Int)

(declare-fun b!597480 () Bool)

(assert (=> b!597480 (= e!361818 (and (= (size!4700 token!491) lt!254250) (= (originalCharacters!1222 token!491) lt!254248) (= (tuple2!6861 token!491 suffix!1342) (tuple2!6861 (Token!2103 lt!254252 (rule!1953 token!491) lt!254250 lt!254248) lt!254269))))))

(declare-fun lt!254267 () List!5975)

(declare-fun lt!254259 () List!5975)

(declare-fun lt!254247 () Int)

(declare-fun b!597481 () Bool)

(declare-fun lt!254272 () TokenValue!1207)

(assert (=> b!597481 (= e!361815 (and (= (size!4700 (_1!3694 (v!16420 lt!254271))) lt!254247) (= (originalCharacters!1222 (_1!3694 (v!16420 lt!254271))) lt!254267) (= (v!16420 lt!254271) (tuple2!6861 (Token!2103 lt!254272 (rule!1953 (_1!3694 (v!16420 lt!254271))) lt!254247 lt!254267) lt!254259))))))

(declare-fun res!258134 () Bool)

(assert (=> start!56476 (=> (not res!258134) (not e!361829))))

(get-info :version)

(assert (=> start!56476 (= res!258134 ((_ is Lexer!1067) thiss!22590))))

(assert (=> start!56476 e!361829))

(declare-fun e!361822 () Bool)

(assert (=> start!56476 e!361822))

(declare-fun e!361821 () Bool)

(assert (=> start!56476 e!361821))

(declare-fun e!361814 () Bool)

(declare-fun inv!7559 (Token!2102) Bool)

(assert (=> start!56476 (and (inv!7559 token!491) e!361814)))

(assert (=> start!56476 true))

(declare-fun e!361828 () Bool)

(assert (=> start!56476 e!361828))

(declare-fun b!597482 () Bool)

(declare-fun res!258135 () Bool)

(assert (=> b!597482 (=> (not res!258135) (not e!361829))))

(declare-fun rulesInvariant!1032 (LexerInterface!1069 List!5976) Bool)

(assert (=> b!597482 (= res!258135 (rulesInvariant!1032 thiss!22590 rules!3103))))

(declare-fun b!597483 () Bool)

(declare-fun e!361823 () Bool)

(declare-fun tp!186305 () Bool)

(assert (=> b!597483 (= e!361821 (and e!361823 tp!186305))))

(declare-fun b!597484 () Bool)

(declare-fun e!361811 () Unit!10851)

(declare-fun Unit!10853 () Unit!10851)

(assert (=> b!597484 (= e!361811 Unit!10853)))

(assert (=> b!597484 false))

(declare-fun tp!186308 () Bool)

(declare-fun e!361813 () Bool)

(declare-fun b!597485 () Bool)

(declare-fun e!361819 () Bool)

(declare-fun inv!7556 (String!7779) Bool)

(declare-fun inv!7560 (TokenValueInjection!2182) Bool)

(assert (=> b!597485 (= e!361813 (and tp!186308 (inv!7556 (tag!1445 (rule!1953 token!491))) (inv!7560 (transformation!1183 (rule!1953 token!491))) e!361819))))

(declare-fun e!361825 () Bool)

(assert (=> b!597486 (= e!361825 (and tp!186304 tp!186310))))

(declare-fun b!597487 () Bool)

(declare-fun tp_is_empty!3389 () Bool)

(declare-fun tp!186312 () Bool)

(assert (=> b!597487 (= e!361822 (and tp_is_empty!3389 tp!186312))))

(declare-fun b!597488 () Bool)

(declare-fun e!361820 () Bool)

(declare-fun e!361812 () Bool)

(assert (=> b!597488 (= e!361820 e!361812)))

(declare-fun res!258129 () Bool)

(assert (=> b!597488 (=> (not res!258129) (not e!361812))))

(declare-fun lt!254261 () List!5975)

(assert (=> b!597488 (= res!258129 (= lt!254261 lt!254246))))

(assert (=> b!597488 (= lt!254261 (++!1671 lt!254248 suffix!1342))))

(declare-fun b!597489 () Bool)

(declare-fun res!258141 () Bool)

(assert (=> b!597489 (=> (not res!258141) (not e!361829))))

(declare-fun isEmpty!4305 (List!5976) Bool)

(assert (=> b!597489 (= res!258141 (not (isEmpty!4305 rules!3103)))))

(declare-fun b!597490 () Bool)

(declare-fun tp!186303 () Bool)

(assert (=> b!597490 (= e!361828 (and tp_is_empty!3389 tp!186303))))

(declare-fun b!597491 () Bool)

(declare-fun res!258137 () Bool)

(assert (=> b!597491 (=> (not res!258137) (not e!361829))))

(declare-fun isEmpty!4306 (List!5975) Bool)

(assert (=> b!597491 (= res!258137 (not (isEmpty!4306 input!2705)))))

(declare-fun b!597492 () Bool)

(declare-fun tp!186309 () Bool)

(declare-fun inv!21 (TokenValue!1207) Bool)

(assert (=> b!597492 (= e!361814 (and (inv!21 (value!38582 token!491)) e!361813 tp!186309))))

(declare-fun b!597493 () Bool)

(declare-fun e!361817 () Bool)

(assert (=> b!597493 (= e!361817 e!361820)))

(declare-fun res!258139 () Bool)

(assert (=> b!597493 (=> (not res!258139) (not e!361820))))

(assert (=> b!597493 (= res!258139 ((_ is Some!1533) lt!254271))))

(assert (=> b!597493 (= lt!254271 (maxPrefix!767 thiss!22590 rules!3103 input!2705))))

(declare-fun b!597494 () Bool)

(assert (=> b!597494 (= e!361812 (not e!361816))))

(declare-fun res!258132 () Bool)

(assert (=> b!597494 (=> res!258132 e!361816)))

(declare-fun isPrefix!811 (List!5975 List!5975) Bool)

(assert (=> b!597494 (= res!258132 (not (isPrefix!811 input!2705 lt!254261)))))

(assert (=> b!597494 (isPrefix!811 lt!254248 lt!254261)))

(declare-fun lt!254258 () Unit!10851)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!656 (List!5975 List!5975) Unit!10851)

(assert (=> b!597494 (= lt!254258 (lemmaConcatTwoListThenFirstIsPrefix!656 lt!254248 suffix!1342))))

(assert (=> b!597494 (isPrefix!811 input!2705 lt!254246)))

(declare-fun lt!254260 () Unit!10851)

(assert (=> b!597494 (= lt!254260 (lemmaConcatTwoListThenFirstIsPrefix!656 input!2705 suffix!1342))))

(assert (=> b!597494 e!361815))

(declare-fun res!258138 () Bool)

(assert (=> b!597494 (=> (not res!258138) (not e!361815))))

(assert (=> b!597494 (= res!258138 (= (value!38582 (_1!3694 (v!16420 lt!254271))) lt!254272))))

(assert (=> b!597494 (= lt!254272 (apply!1436 (transformation!1183 (rule!1953 (_1!3694 (v!16420 lt!254271)))) (seqFromList!1359 lt!254267)))))

(declare-fun lt!254251 () Unit!10851)

(declare-fun lemmaInv!291 (TokenValueInjection!2182) Unit!10851)

(assert (=> b!597494 (= lt!254251 (lemmaInv!291 (transformation!1183 (rule!1953 token!491))))))

(declare-fun lt!254262 () Unit!10851)

(assert (=> b!597494 (= lt!254262 (lemmaInv!291 (transformation!1183 (rule!1953 (_1!3694 (v!16420 lt!254271))))))))

(declare-fun ruleValid!381 (LexerInterface!1069 Rule!2166) Bool)

(assert (=> b!597494 (ruleValid!381 thiss!22590 (rule!1953 token!491))))

(declare-fun lt!254253 () Unit!10851)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!228 (LexerInterface!1069 Rule!2166 List!5976) Unit!10851)

(assert (=> b!597494 (= lt!254253 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!228 thiss!22590 (rule!1953 token!491) rules!3103))))

(assert (=> b!597494 (ruleValid!381 thiss!22590 (rule!1953 (_1!3694 (v!16420 lt!254271))))))

(declare-fun lt!254265 () Unit!10851)

(assert (=> b!597494 (= lt!254265 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!228 thiss!22590 (rule!1953 (_1!3694 (v!16420 lt!254271))) rules!3103))))

(assert (=> b!597494 (isPrefix!811 input!2705 input!2705)))

(declare-fun lt!254268 () Unit!10851)

(declare-fun lemmaIsPrefixRefl!547 (List!5975 List!5975) Unit!10851)

(assert (=> b!597494 (= lt!254268 (lemmaIsPrefixRefl!547 input!2705 input!2705))))

(assert (=> b!597494 (= (_2!3694 (v!16420 lt!254271)) lt!254259)))

(declare-fun lt!254249 () Unit!10851)

(assert (=> b!597494 (= lt!254249 (lemmaSamePrefixThenSameSuffix!524 lt!254267 (_2!3694 (v!16420 lt!254271)) lt!254267 lt!254259 input!2705))))

(assert (=> b!597494 (= lt!254259 (getSuffix!328 input!2705 lt!254267))))

(assert (=> b!597494 (isPrefix!811 lt!254267 (++!1671 lt!254267 (_2!3694 (v!16420 lt!254271))))))

(declare-fun lt!254257 () Unit!10851)

(assert (=> b!597494 (= lt!254257 (lemmaConcatTwoListThenFirstIsPrefix!656 lt!254267 (_2!3694 (v!16420 lt!254271))))))

(declare-fun lt!254263 () Unit!10851)

(declare-fun lemmaCharactersSize!242 (Token!2102) Unit!10851)

(assert (=> b!597494 (= lt!254263 (lemmaCharactersSize!242 token!491))))

(declare-fun lt!254254 () Unit!10851)

(assert (=> b!597494 (= lt!254254 (lemmaCharactersSize!242 (_1!3694 (v!16420 lt!254271))))))

(declare-fun lt!254256 () Unit!10851)

(assert (=> b!597494 (= lt!254256 e!361811)))

(declare-fun c!111064 () Bool)

(assert (=> b!597494 (= c!111064 (> lt!254247 lt!254250))))

(assert (=> b!597494 (= lt!254250 (size!4701 lt!254248))))

(assert (=> b!597494 (= lt!254247 (size!4701 lt!254267))))

(assert (=> b!597494 (= lt!254267 (list!2498 (charsOf!812 (_1!3694 (v!16420 lt!254271)))))))

(assert (=> b!597494 (= lt!254271 (Some!1533 (v!16420 lt!254271)))))

(declare-fun lt!254266 () Unit!10851)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!256 (List!5975 List!5975 List!5975 List!5975) Unit!10851)

(assert (=> b!597494 (= lt!254266 (lemmaConcatSameAndSameSizesThenSameLists!256 lt!254248 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!597495 () Bool)

(declare-fun res!258133 () Bool)

(assert (=> b!597495 (=> (not res!258133) (not e!361818))))

(assert (=> b!597495 (= res!258133 (= (size!4700 token!491) (size!4701 (originalCharacters!1222 token!491))))))

(declare-fun b!597496 () Bool)

(assert (=> b!597496 (= e!361824 e!361817)))

(declare-fun res!258142 () Bool)

(assert (=> b!597496 (=> (not res!258142) (not e!361817))))

(declare-fun lt!254264 () tuple2!6860)

(assert (=> b!597496 (= res!258142 (and (= (_1!3694 lt!254264) token!491) (= (_2!3694 lt!254264) suffix!1342)))))

(declare-fun get!2289 (Option!1534) tuple2!6860)

(assert (=> b!597496 (= lt!254264 (get!2289 lt!254270))))

(declare-fun tp!186307 () Bool)

(declare-fun b!597497 () Bool)

(assert (=> b!597497 (= e!361823 (and tp!186307 (inv!7556 (tag!1445 (h!11367 rules!3103))) (inv!7560 (transformation!1183 (h!11367 rules!3103))) e!361825))))

(declare-fun b!597498 () Bool)

(declare-fun Unit!10854 () Unit!10851)

(assert (=> b!597498 (= e!361811 Unit!10854)))

(assert (=> b!597499 (= e!361819 (and tp!186306 tp!186311))))

(assert (= (and start!56476 res!258134) b!597489))

(assert (= (and b!597489 res!258141) b!597482))

(assert (= (and b!597482 res!258135) b!597491))

(assert (= (and b!597491 res!258137) b!597477))

(assert (= (and b!597477 res!258136) b!597478))

(assert (= (and b!597478 res!258140) b!597496))

(assert (= (and b!597496 res!258142) b!597493))

(assert (= (and b!597493 res!258139) b!597488))

(assert (= (and b!597488 res!258129) b!597494))

(assert (= (and b!597494 c!111064) b!597484))

(assert (= (and b!597494 (not c!111064)) b!597498))

(assert (= (and b!597494 res!258138) b!597479))

(assert (= (and b!597479 res!258130) b!597481))

(assert (= (and b!597494 (not res!258132)) b!597476))

(assert (= (and b!597476 res!258131) b!597495))

(assert (= (and b!597495 res!258133) b!597480))

(assert (= (and start!56476 ((_ is Cons!5965) suffix!1342)) b!597487))

(assert (= b!597497 b!597486))

(assert (= b!597483 b!597497))

(assert (= (and start!56476 ((_ is Cons!5966) rules!3103)) b!597483))

(assert (= b!597485 b!597499))

(assert (= b!597492 b!597485))

(assert (= start!56476 b!597492))

(assert (= (and start!56476 ((_ is Cons!5965) input!2705)) b!597490))

(declare-fun m!860701 () Bool)

(assert (=> b!597492 m!860701))

(declare-fun m!860703 () Bool)

(assert (=> start!56476 m!860703))

(declare-fun m!860705 () Bool)

(assert (=> b!597493 m!860705))

(declare-fun m!860707 () Bool)

(assert (=> b!597485 m!860707))

(declare-fun m!860709 () Bool)

(assert (=> b!597485 m!860709))

(declare-fun m!860711 () Bool)

(assert (=> b!597478 m!860711))

(declare-fun m!860713 () Bool)

(assert (=> b!597478 m!860713))

(declare-fun m!860715 () Bool)

(assert (=> b!597478 m!860715))

(declare-fun m!860717 () Bool)

(assert (=> b!597496 m!860717))

(declare-fun m!860719 () Bool)

(assert (=> b!597476 m!860719))

(assert (=> b!597476 m!860719))

(declare-fun m!860721 () Bool)

(assert (=> b!597476 m!860721))

(declare-fun m!860723 () Bool)

(assert (=> b!597476 m!860723))

(declare-fun m!860725 () Bool)

(assert (=> b!597476 m!860725))

(declare-fun m!860727 () Bool)

(assert (=> b!597479 m!860727))

(declare-fun m!860729 () Bool)

(assert (=> b!597497 m!860729))

(declare-fun m!860731 () Bool)

(assert (=> b!597497 m!860731))

(declare-fun m!860733 () Bool)

(assert (=> b!597489 m!860733))

(declare-fun m!860735 () Bool)

(assert (=> b!597495 m!860735))

(declare-fun m!860737 () Bool)

(assert (=> b!597477 m!860737))

(assert (=> b!597477 m!860737))

(declare-fun m!860739 () Bool)

(assert (=> b!597477 m!860739))

(declare-fun m!860741 () Bool)

(assert (=> b!597488 m!860741))

(declare-fun m!860743 () Bool)

(assert (=> b!597482 m!860743))

(declare-fun m!860745 () Bool)

(assert (=> b!597494 m!860745))

(declare-fun m!860747 () Bool)

(assert (=> b!597494 m!860747))

(declare-fun m!860749 () Bool)

(assert (=> b!597494 m!860749))

(declare-fun m!860751 () Bool)

(assert (=> b!597494 m!860751))

(declare-fun m!860753 () Bool)

(assert (=> b!597494 m!860753))

(declare-fun m!860755 () Bool)

(assert (=> b!597494 m!860755))

(declare-fun m!860757 () Bool)

(assert (=> b!597494 m!860757))

(declare-fun m!860759 () Bool)

(assert (=> b!597494 m!860759))

(declare-fun m!860761 () Bool)

(assert (=> b!597494 m!860761))

(declare-fun m!860763 () Bool)

(assert (=> b!597494 m!860763))

(declare-fun m!860765 () Bool)

(assert (=> b!597494 m!860765))

(declare-fun m!860767 () Bool)

(assert (=> b!597494 m!860767))

(declare-fun m!860769 () Bool)

(assert (=> b!597494 m!860769))

(declare-fun m!860771 () Bool)

(assert (=> b!597494 m!860771))

(declare-fun m!860773 () Bool)

(assert (=> b!597494 m!860773))

(declare-fun m!860775 () Bool)

(assert (=> b!597494 m!860775))

(declare-fun m!860777 () Bool)

(assert (=> b!597494 m!860777))

(declare-fun m!860779 () Bool)

(assert (=> b!597494 m!860779))

(declare-fun m!860781 () Bool)

(assert (=> b!597494 m!860781))

(declare-fun m!860783 () Bool)

(assert (=> b!597494 m!860783))

(declare-fun m!860785 () Bool)

(assert (=> b!597494 m!860785))

(declare-fun m!860787 () Bool)

(assert (=> b!597494 m!860787))

(assert (=> b!597494 m!860753))

(assert (=> b!597494 m!860781))

(declare-fun m!860789 () Bool)

(assert (=> b!597494 m!860789))

(declare-fun m!860791 () Bool)

(assert (=> b!597494 m!860791))

(declare-fun m!860793 () Bool)

(assert (=> b!597494 m!860793))

(assert (=> b!597494 m!860769))

(declare-fun m!860795 () Bool)

(assert (=> b!597494 m!860795))

(declare-fun m!860797 () Bool)

(assert (=> b!597494 m!860797))

(declare-fun m!860799 () Bool)

(assert (=> b!597491 m!860799))

(check-sat b_and!58979 (not start!56476) b_and!58983 b_and!58985 (not b!597485) (not b!597479) (not b!597477) (not b!597476) (not b!597492) (not b_next!16973) (not b!597488) (not b!597483) (not b!597493) (not b!597489) (not b!597497) (not b!597478) (not b!597487) (not b_next!16979) (not b_next!16975) (not b!597494) b_and!58981 (not b!597490) tp_is_empty!3389 (not b!597482) (not b!597495) (not b_next!16977) (not b!597496) (not b!597491))
(check-sat b_and!58979 b_and!58983 b_and!58985 b_and!58981 (not b_next!16977) (not b_next!16973) (not b_next!16979) (not b_next!16975))
