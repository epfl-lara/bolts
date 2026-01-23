; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156958 () Bool)

(assert start!156958)

(declare-fun b!1641065 () Bool)

(declare-fun b_free!44471 () Bool)

(declare-fun b_next!45175 () Bool)

(assert (=> b!1641065 (= b_free!44471 (not b_next!45175))))

(declare-fun tp!475633 () Bool)

(declare-fun b_and!116349 () Bool)

(assert (=> b!1641065 (= tp!475633 b_and!116349)))

(declare-fun b_free!44473 () Bool)

(declare-fun b_next!45177 () Bool)

(assert (=> b!1641065 (= b_free!44473 (not b_next!45177))))

(declare-fun tp!475634 () Bool)

(declare-fun b_and!116351 () Bool)

(assert (=> b!1641065 (= tp!475634 b_and!116351)))

(declare-fun b!1641063 () Bool)

(declare-fun b_free!44475 () Bool)

(declare-fun b_next!45179 () Bool)

(assert (=> b!1641063 (= b_free!44475 (not b_next!45179))))

(declare-fun tp!475635 () Bool)

(declare-fun b_and!116353 () Bool)

(assert (=> b!1641063 (= tp!475635 b_and!116353)))

(declare-fun b_free!44477 () Bool)

(declare-fun b_next!45181 () Bool)

(assert (=> b!1641063 (= b_free!44477 (not b_next!45181))))

(declare-fun tp!475631 () Bool)

(declare-fun b_and!116355 () Bool)

(assert (=> b!1641063 (= tp!475631 b_and!116355)))

(declare-fun tp!475630 () Bool)

(declare-fun e!1052487 () Bool)

(declare-datatypes ((List!18157 0))(
  ( (Nil!18087) (Cons!18087 (h!23488 (_ BitVec 16)) (t!150028 List!18157)) )
))
(declare-datatypes ((TokenValue!3279 0))(
  ( (FloatLiteralValue!6558 (text!23398 List!18157)) (TokenValueExt!3278 (__x!11860 Int)) (Broken!16395 (value!100533 List!18157)) (Object!3348) (End!3279) (Def!3279) (Underscore!3279) (Match!3279) (Else!3279) (Error!3279) (Case!3279) (If!3279) (Extends!3279) (Abstract!3279) (Class!3279) (Val!3279) (DelimiterValue!6558 (del!3339 List!18157)) (KeywordValue!3285 (value!100534 List!18157)) (CommentValue!6558 (value!100535 List!18157)) (WhitespaceValue!6558 (value!100536 List!18157)) (IndentationValue!3279 (value!100537 List!18157)) (String!20726) (Int32!3279) (Broken!16396 (value!100538 List!18157)) (Boolean!3280) (Unit!29725) (OperatorValue!3282 (op!3339 List!18157)) (IdentifierValue!6558 (value!100539 List!18157)) (IdentifierValue!6559 (value!100540 List!18157)) (WhitespaceValue!6559 (value!100541 List!18157)) (True!6558) (False!6558) (Broken!16397 (value!100542 List!18157)) (Broken!16398 (value!100543 List!18157)) (True!6559) (RightBrace!3279) (RightBracket!3279) (Colon!3279) (Null!3279) (Comma!3279) (LeftBracket!3279) (False!6559) (LeftBrace!3279) (ImaginaryLiteralValue!3279 (text!23399 List!18157)) (StringLiteralValue!9837 (value!100544 List!18157)) (EOFValue!3279 (value!100545 List!18157)) (IdentValue!3279 (value!100546 List!18157)) (DelimiterValue!6559 (value!100547 List!18157)) (DedentValue!3279 (value!100548 List!18157)) (NewLineValue!3279 (value!100549 List!18157)) (IntegerValue!9837 (value!100550 (_ BitVec 32)) (text!23400 List!18157)) (IntegerValue!9838 (value!100551 Int) (text!23401 List!18157)) (Times!3279) (Or!3279) (Equal!3279) (Minus!3279) (Broken!16399 (value!100552 List!18157)) (And!3279) (Div!3279) (LessEqual!3279) (Mod!3279) (Concat!7796) (Not!3279) (Plus!3279) (SpaceValue!3279 (value!100553 List!18157)) (IntegerValue!9839 (value!100554 Int) (text!23402 List!18157)) (StringLiteralValue!9838 (text!23403 List!18157)) (FloatLiteralValue!6559 (text!23404 List!18157)) (BytesLiteralValue!3279 (value!100555 List!18157)) (CommentValue!6559 (value!100556 List!18157)) (StringLiteralValue!9839 (value!100557 List!18157)) (ErrorTokenValue!3279 (msg!3340 List!18157)) )
))
(declare-datatypes ((C!9208 0))(
  ( (C!9209 (val!5200 Int)) )
))
(declare-datatypes ((List!18158 0))(
  ( (Nil!18088) (Cons!18088 (h!23489 C!9208) (t!150029 List!18158)) )
))
(declare-datatypes ((IArray!12057 0))(
  ( (IArray!12058 (innerList!6086 List!18158)) )
))
(declare-datatypes ((Conc!6026 0))(
  ( (Node!6026 (left!14502 Conc!6026) (right!14832 Conc!6026) (csize!12282 Int) (cheight!6237 Int)) (Leaf!8841 (xs!8862 IArray!12057) (csize!12283 Int)) (Empty!6026) )
))
(declare-datatypes ((BalanceConc!11996 0))(
  ( (BalanceConc!11997 (c!266879 Conc!6026)) )
))
(declare-datatypes ((Regex!4517 0))(
  ( (ElementMatch!4517 (c!266880 C!9208)) (Concat!7797 (regOne!9546 Regex!4517) (regTwo!9546 Regex!4517)) (EmptyExpr!4517) (Star!4517 (reg!4846 Regex!4517)) (EmptyLang!4517) (Union!4517 (regOne!9547 Regex!4517) (regTwo!9547 Regex!4517)) )
))
(declare-datatypes ((String!20727 0))(
  ( (String!20728 (value!100558 String)) )
))
(declare-datatypes ((TokenValueInjection!6218 0))(
  ( (TokenValueInjection!6219 (toValue!4624 Int) (toChars!4483 Int)) )
))
(declare-datatypes ((Rule!6178 0))(
  ( (Rule!6179 (regex!3189 Regex!4517) (tag!3469 String!20727) (isSeparator!3189 Bool) (transformation!3189 TokenValueInjection!6218)) )
))
(declare-datatypes ((Token!5944 0))(
  ( (Token!5945 (value!100559 TokenValue!3279) (rule!5037 Rule!6178) (size!14404 Int) (originalCharacters!4003 List!18158)) )
))
(declare-datatypes ((List!18159 0))(
  ( (Nil!18089) (Cons!18089 (h!23490 Token!5944) (t!150030 List!18159)) )
))
(declare-fun tokens!457 () List!18159)

(declare-fun b!1641062 () Bool)

(declare-fun e!1052488 () Bool)

(declare-fun inv!23435 (String!20727) Bool)

(declare-fun inv!23438 (TokenValueInjection!6218) Bool)

(assert (=> b!1641062 (= e!1052487 (and tp!475630 (inv!23435 (tag!3469 (rule!5037 (h!23490 tokens!457)))) (inv!23438 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) e!1052488))))

(declare-fun e!1052486 () Bool)

(assert (=> b!1641063 (= e!1052486 (and tp!475635 tp!475631))))

(declare-fun tp!475637 () Bool)

(declare-fun e!1052484 () Bool)

(declare-fun b!1641064 () Bool)

(declare-fun e!1052482 () Bool)

(declare-fun inv!23439 (Token!5944) Bool)

(assert (=> b!1641064 (= e!1052482 (and (inv!23439 (h!23490 tokens!457)) e!1052484 tp!475637))))

(assert (=> b!1641065 (= e!1052488 (and tp!475633 tp!475634))))

(declare-fun b!1641066 () Bool)

(declare-fun res!735271 () Bool)

(declare-fun e!1052483 () Bool)

(assert (=> b!1641066 (=> (not res!735271) (not e!1052483))))

(declare-datatypes ((List!18160 0))(
  ( (Nil!18090) (Cons!18090 (h!23491 Rule!6178) (t!150031 List!18160)) )
))
(declare-fun rules!1846 () List!18160)

(declare-fun isEmpty!11115 (List!18160) Bool)

(assert (=> b!1641066 (= res!735271 (not (isEmpty!11115 rules!1846)))))

(declare-fun b!1641067 () Bool)

(declare-fun e!1052485 () Bool)

(declare-fun e!1052481 () Bool)

(assert (=> b!1641067 (= e!1052485 (not e!1052481))))

(declare-fun res!735273 () Bool)

(assert (=> b!1641067 (=> res!735273 e!1052481)))

(declare-fun lt!603206 () List!18159)

(assert (=> b!1641067 (= res!735273 (not (= lt!603206 (t!150030 tokens!457))))))

(declare-datatypes ((IArray!12059 0))(
  ( (IArray!12060 (innerList!6087 List!18159)) )
))
(declare-datatypes ((Conc!6027 0))(
  ( (Node!6027 (left!14503 Conc!6027) (right!14833 Conc!6027) (csize!12284 Int) (cheight!6238 Int)) (Leaf!8842 (xs!8863 IArray!12059) (csize!12285 Int)) (Empty!6027) )
))
(declare-datatypes ((BalanceConc!11998 0))(
  ( (BalanceConc!11999 (c!266881 Conc!6027)) )
))
(declare-datatypes ((tuple2!17738 0))(
  ( (tuple2!17739 (_1!10271 BalanceConc!11998) (_2!10271 BalanceConc!11996)) )
))
(declare-fun lt!603201 () tuple2!17738)

(declare-fun list!7149 (BalanceConc!11998) List!18159)

(assert (=> b!1641067 (= lt!603206 (list!7149 (_1!10271 lt!603201)))))

(declare-datatypes ((Unit!29726 0))(
  ( (Unit!29727) )
))
(declare-fun lt!603199 () Unit!29726)

(declare-datatypes ((LexerInterface!2818 0))(
  ( (LexerInterfaceExt!2815 (__x!11861 Int)) (Lexer!2816) )
))
(declare-fun thiss!17113 () LexerInterface!2818)

(declare-fun theoremInvertabilityWhenTokenListSeparable!261 (LexerInterface!2818 List!18160 List!18159) Unit!29726)

(assert (=> b!1641067 (= lt!603199 (theoremInvertabilityWhenTokenListSeparable!261 thiss!17113 rules!1846 (t!150030 tokens!457)))))

(declare-fun lt!603204 () List!18158)

(declare-fun lt!603195 () List!18158)

(declare-fun isPrefix!1447 (List!18158 List!18158) Bool)

(assert (=> b!1641067 (isPrefix!1447 lt!603204 lt!603195)))

(declare-fun lt!603197 () Unit!29726)

(declare-fun lt!603205 () List!18158)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!972 (List!18158 List!18158) Unit!29726)

(assert (=> b!1641067 (= lt!603197 (lemmaConcatTwoListThenFirstIsPrefix!972 lt!603204 lt!603205))))

(declare-fun b!1641068 () Bool)

(declare-fun res!735277 () Bool)

(assert (=> b!1641068 (=> (not res!735277) (not e!1052483))))

(declare-fun rulesInvariant!2487 (LexerInterface!2818 List!18160) Bool)

(assert (=> b!1641068 (= res!735277 (rulesInvariant!2487 thiss!17113 rules!1846))))

(declare-fun res!735274 () Bool)

(assert (=> start!156958 (=> (not res!735274) (not e!1052483))))

(get-info :version)

(assert (=> start!156958 (= res!735274 ((_ is Lexer!2816) thiss!17113))))

(assert (=> start!156958 e!1052483))

(assert (=> start!156958 true))

(declare-fun e!1052489 () Bool)

(assert (=> start!156958 e!1052489))

(assert (=> start!156958 e!1052482))

(declare-fun b!1641069 () Bool)

(declare-fun res!735275 () Bool)

(assert (=> b!1641069 (=> (not res!735275) (not e!1052483))))

(declare-fun rulesProduceEachTokenIndividuallyList!1020 (LexerInterface!2818 List!18160 List!18159) Bool)

(assert (=> b!1641069 (= res!735275 (rulesProduceEachTokenIndividuallyList!1020 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1641070 () Bool)

(declare-fun res!735272 () Bool)

(assert (=> b!1641070 (=> (not res!735272) (not e!1052483))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!511 (LexerInterface!2818 List!18159 List!18160) Bool)

(assert (=> b!1641070 (= res!735272 (tokensListTwoByTwoPredicateSeparableList!511 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1641071 () Bool)

(assert (=> b!1641071 (= e!1052483 e!1052485)))

(declare-fun res!735278 () Bool)

(assert (=> b!1641071 (=> (not res!735278) (not e!1052485))))

(declare-fun lt!603196 () List!18158)

(assert (=> b!1641071 (= res!735278 (= lt!603196 lt!603195))))

(declare-fun ++!4860 (List!18158 List!18158) List!18158)

(assert (=> b!1641071 (= lt!603195 (++!4860 lt!603204 lt!603205))))

(declare-fun lt!603203 () BalanceConc!11996)

(declare-fun list!7150 (BalanceConc!11996) List!18158)

(assert (=> b!1641071 (= lt!603196 (list!7150 lt!603203))))

(declare-fun lt!603200 () BalanceConc!11996)

(assert (=> b!1641071 (= lt!603205 (list!7150 lt!603200))))

(declare-fun charsOf!1838 (Token!5944) BalanceConc!11996)

(assert (=> b!1641071 (= lt!603204 (list!7150 (charsOf!1838 (h!23490 tokens!457))))))

(declare-fun lex!1302 (LexerInterface!2818 List!18160 BalanceConc!11996) tuple2!17738)

(assert (=> b!1641071 (= lt!603201 (lex!1302 thiss!17113 rules!1846 lt!603200))))

(declare-fun lt!603202 () BalanceConc!11998)

(declare-fun print!1349 (LexerInterface!2818 BalanceConc!11998) BalanceConc!11996)

(assert (=> b!1641071 (= lt!603200 (print!1349 thiss!17113 lt!603202))))

(declare-fun seqFromList!2122 (List!18159) BalanceConc!11998)

(assert (=> b!1641071 (= lt!603202 (seqFromList!2122 (t!150030 tokens!457)))))

(assert (=> b!1641071 (= lt!603203 (print!1349 thiss!17113 (seqFromList!2122 tokens!457)))))

(declare-fun b!1641072 () Bool)

(declare-fun tp!475632 () Bool)

(declare-fun e!1052480 () Bool)

(assert (=> b!1641072 (= e!1052480 (and tp!475632 (inv!23435 (tag!3469 (h!23491 rules!1846))) (inv!23438 (transformation!3189 (h!23491 rules!1846))) e!1052486))))

(declare-fun b!1641073 () Bool)

(declare-fun tp!475638 () Bool)

(assert (=> b!1641073 (= e!1052489 (and e!1052480 tp!475638))))

(declare-fun b!1641074 () Bool)

(declare-fun res!735276 () Bool)

(assert (=> b!1641074 (=> (not res!735276) (not e!1052483))))

(assert (=> b!1641074 (= res!735276 (and (not ((_ is Nil!18089) tokens!457)) (not ((_ is Nil!18089) (t!150030 tokens!457)))))))

(declare-fun b!1641075 () Bool)

(assert (=> b!1641075 (= e!1052481 (= lt!603206 (list!7149 lt!603202)))))

(declare-fun prepend!735 (BalanceConc!11998 Token!5944) BalanceConc!11998)

(assert (=> b!1641075 (= lt!603206 (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603198 () Unit!29726)

(declare-fun seqFromListBHdTlConstructive!264 (Token!5944 List!18159 BalanceConc!11998) Unit!29726)

(assert (=> b!1641075 (= lt!603198 (seqFromListBHdTlConstructive!264 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)) (_1!10271 lt!603201)))))

(declare-fun b!1641076 () Bool)

(declare-fun tp!475636 () Bool)

(declare-fun inv!21 (TokenValue!3279) Bool)

(assert (=> b!1641076 (= e!1052484 (and (inv!21 (value!100559 (h!23490 tokens!457))) e!1052487 tp!475636))))

(assert (= (and start!156958 res!735274) b!1641066))

(assert (= (and b!1641066 res!735271) b!1641068))

(assert (= (and b!1641068 res!735277) b!1641069))

(assert (= (and b!1641069 res!735275) b!1641070))

(assert (= (and b!1641070 res!735272) b!1641074))

(assert (= (and b!1641074 res!735276) b!1641071))

(assert (= (and b!1641071 res!735278) b!1641067))

(assert (= (and b!1641067 (not res!735273)) b!1641075))

(assert (= b!1641072 b!1641063))

(assert (= b!1641073 b!1641072))

(assert (= (and start!156958 ((_ is Cons!18090) rules!1846)) b!1641073))

(assert (= b!1641062 b!1641065))

(assert (= b!1641076 b!1641062))

(assert (= b!1641064 b!1641076))

(assert (= (and start!156958 ((_ is Cons!18089) tokens!457)) b!1641064))

(declare-fun m!1981491 () Bool)

(assert (=> b!1641068 m!1981491))

(declare-fun m!1981493 () Bool)

(assert (=> b!1641071 m!1981493))

(declare-fun m!1981495 () Bool)

(assert (=> b!1641071 m!1981495))

(declare-fun m!1981497 () Bool)

(assert (=> b!1641071 m!1981497))

(assert (=> b!1641071 m!1981493))

(declare-fun m!1981499 () Bool)

(assert (=> b!1641071 m!1981499))

(declare-fun m!1981501 () Bool)

(assert (=> b!1641071 m!1981501))

(declare-fun m!1981503 () Bool)

(assert (=> b!1641071 m!1981503))

(declare-fun m!1981505 () Bool)

(assert (=> b!1641071 m!1981505))

(declare-fun m!1981507 () Bool)

(assert (=> b!1641071 m!1981507))

(declare-fun m!1981509 () Bool)

(assert (=> b!1641071 m!1981509))

(assert (=> b!1641071 m!1981505))

(declare-fun m!1981511 () Bool)

(assert (=> b!1641071 m!1981511))

(declare-fun m!1981513 () Bool)

(assert (=> b!1641076 m!1981513))

(declare-fun m!1981515 () Bool)

(assert (=> b!1641075 m!1981515))

(declare-fun m!1981517 () Bool)

(assert (=> b!1641075 m!1981517))

(declare-fun m!1981519 () Bool)

(assert (=> b!1641075 m!1981519))

(assert (=> b!1641075 m!1981515))

(assert (=> b!1641075 m!1981517))

(declare-fun m!1981521 () Bool)

(assert (=> b!1641075 m!1981521))

(declare-fun m!1981523 () Bool)

(assert (=> b!1641075 m!1981523))

(declare-fun m!1981525 () Bool)

(assert (=> b!1641072 m!1981525))

(declare-fun m!1981527 () Bool)

(assert (=> b!1641072 m!1981527))

(declare-fun m!1981529 () Bool)

(assert (=> b!1641067 m!1981529))

(declare-fun m!1981531 () Bool)

(assert (=> b!1641067 m!1981531))

(declare-fun m!1981533 () Bool)

(assert (=> b!1641067 m!1981533))

(declare-fun m!1981535 () Bool)

(assert (=> b!1641067 m!1981535))

(declare-fun m!1981537 () Bool)

(assert (=> b!1641069 m!1981537))

(declare-fun m!1981539 () Bool)

(assert (=> b!1641062 m!1981539))

(declare-fun m!1981541 () Bool)

(assert (=> b!1641062 m!1981541))

(declare-fun m!1981543 () Bool)

(assert (=> b!1641064 m!1981543))

(declare-fun m!1981545 () Bool)

(assert (=> b!1641066 m!1981545))

(declare-fun m!1981547 () Bool)

(assert (=> b!1641070 m!1981547))

(check-sat (not b!1641067) (not b!1641076) (not b!1641072) b_and!116355 (not b_next!45181) (not b_next!45179) (not b!1641068) b_and!116351 b_and!116353 b_and!116349 (not b!1641071) (not b!1641073) (not b!1641066) (not b!1641062) (not b!1641069) (not b!1641075) (not b_next!45177) (not b_next!45175) (not b!1641064) (not b!1641070))
(check-sat (not b_next!45177) b_and!116355 (not b_next!45181) (not b_next!45179) b_and!116351 b_and!116353 b_and!116349 (not b_next!45175))
(get-model)

(declare-fun b!1641094 () Bool)

(declare-fun e!1052505 () Bool)

(declare-fun inv!16 (TokenValue!3279) Bool)

(assert (=> b!1641094 (= e!1052505 (inv!16 (value!100559 (h!23490 tokens!457))))))

(declare-fun b!1641095 () Bool)

(declare-fun e!1052506 () Bool)

(declare-fun inv!17 (TokenValue!3279) Bool)

(assert (=> b!1641095 (= e!1052506 (inv!17 (value!100559 (h!23490 tokens!457))))))

(declare-fun b!1641096 () Bool)

(declare-fun res!735295 () Bool)

(declare-fun e!1052504 () Bool)

(assert (=> b!1641096 (=> res!735295 e!1052504)))

(assert (=> b!1641096 (= res!735295 (not ((_ is IntegerValue!9839) (value!100559 (h!23490 tokens!457)))))))

(assert (=> b!1641096 (= e!1052506 e!1052504)))

(declare-fun d!493963 () Bool)

(declare-fun c!266887 () Bool)

(assert (=> d!493963 (= c!266887 ((_ is IntegerValue!9837) (value!100559 (h!23490 tokens!457))))))

(assert (=> d!493963 (= (inv!21 (value!100559 (h!23490 tokens!457))) e!1052505)))

(declare-fun b!1641097 () Bool)

(declare-fun inv!15 (TokenValue!3279) Bool)

(assert (=> b!1641097 (= e!1052504 (inv!15 (value!100559 (h!23490 tokens!457))))))

(declare-fun b!1641098 () Bool)

(assert (=> b!1641098 (= e!1052505 e!1052506)))

(declare-fun c!266888 () Bool)

(assert (=> b!1641098 (= c!266888 ((_ is IntegerValue!9838) (value!100559 (h!23490 tokens!457))))))

(assert (= (and d!493963 c!266887) b!1641094))

(assert (= (and d!493963 (not c!266887)) b!1641098))

(assert (= (and b!1641098 c!266888) b!1641095))

(assert (= (and b!1641098 (not c!266888)) b!1641096))

(assert (= (and b!1641096 (not res!735295)) b!1641097))

(declare-fun m!1981581 () Bool)

(assert (=> b!1641094 m!1981581))

(declare-fun m!1981583 () Bool)

(assert (=> b!1641095 m!1981583))

(declare-fun m!1981585 () Bool)

(assert (=> b!1641097 m!1981585))

(assert (=> b!1641076 d!493963))

(declare-fun d!493965 () Bool)

(assert (=> d!493965 (= (isEmpty!11115 rules!1846) ((_ is Nil!18090) rules!1846))))

(assert (=> b!1641066 d!493965))

(declare-fun d!493967 () Bool)

(declare-fun list!7153 (Conc!6027) List!18159)

(assert (=> d!493967 (= (list!7149 (_1!10271 lt!603201)) (list!7153 (c!266881 (_1!10271 lt!603201))))))

(declare-fun bs!395671 () Bool)

(assert (= bs!395671 d!493967))

(declare-fun m!1981587 () Bool)

(assert (=> bs!395671 m!1981587))

(assert (=> b!1641067 d!493967))

(declare-fun d!493969 () Bool)

(declare-fun e!1052545 () Bool)

(assert (=> d!493969 e!1052545))

(declare-fun res!735325 () Bool)

(assert (=> d!493969 (=> (not res!735325) (not e!1052545))))

(assert (=> d!493969 (= res!735325 (= (list!7149 (_1!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457)))))) (t!150030 tokens!457)))))

(declare-fun lt!603393 () Unit!29726)

(declare-fun e!1052544 () Unit!29726)

(assert (=> d!493969 (= lt!603393 e!1052544)))

(declare-fun c!266900 () Bool)

(assert (=> d!493969 (= c!266900 (or ((_ is Nil!18089) (t!150030 tokens!457)) ((_ is Nil!18089) (t!150030 (t!150030 tokens!457)))))))

(assert (=> d!493969 (not (isEmpty!11115 rules!1846))))

(assert (=> d!493969 (= (theoremInvertabilityWhenTokenListSeparable!261 thiss!17113 rules!1846 (t!150030 tokens!457)) lt!603393)))

(declare-fun b!1641150 () Bool)

(declare-fun Unit!29745 () Unit!29726)

(assert (=> b!1641150 (= e!1052544 Unit!29745)))

(declare-fun b!1641151 () Bool)

(declare-fun Unit!29746 () Unit!29726)

(assert (=> b!1641151 (= e!1052544 Unit!29746)))

(declare-fun lt!603378 () BalanceConc!11996)

(assert (=> b!1641151 (= lt!603378 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))))))

(declare-fun lt!603388 () BalanceConc!11996)

(assert (=> b!1641151 (= lt!603388 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))))))

(declare-fun lt!603392 () tuple2!17738)

(assert (=> b!1641151 (= lt!603392 (lex!1302 thiss!17113 rules!1846 lt!603388))))

(declare-fun lt!603381 () List!18158)

(assert (=> b!1641151 (= lt!603381 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603376 () List!18158)

(assert (=> b!1641151 (= lt!603376 (list!7150 lt!603388))))

(declare-fun lt!603377 () Unit!29726)

(assert (=> b!1641151 (= lt!603377 (lemmaConcatTwoListThenFirstIsPrefix!972 lt!603381 lt!603376))))

(assert (=> b!1641151 (isPrefix!1447 lt!603381 (++!4860 lt!603381 lt!603376))))

(declare-fun lt!603386 () Unit!29726)

(assert (=> b!1641151 (= lt!603386 lt!603377)))

(declare-fun lt!603382 () Unit!29726)

(assert (=> b!1641151 (= lt!603382 (theoremInvertabilityWhenTokenListSeparable!261 thiss!17113 rules!1846 (t!150030 (t!150030 tokens!457))))))

(declare-fun lt!603383 () Unit!29726)

(assert (=> b!1641151 (= lt!603383 (seqFromListBHdTlConstructive!264 (h!23490 (t!150030 (t!150030 tokens!457))) (t!150030 (t!150030 (t!150030 tokens!457))) (_1!10271 lt!603392)))))

(assert (=> b!1641151 (= (list!7149 (_1!10271 lt!603392)) (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!603379 () Unit!29726)

(assert (=> b!1641151 (= lt!603379 lt!603383)))

(declare-datatypes ((tuple2!17744 0))(
  ( (tuple2!17745 (_1!10274 Token!5944) (_2!10274 List!18158)) )
))
(declare-datatypes ((Option!3418 0))(
  ( (None!3417) (Some!3417 (v!24528 tuple2!17744)) )
))
(declare-fun lt!603387 () Option!3418)

(declare-fun maxPrefix!1382 (LexerInterface!2818 List!18160 List!18158) Option!3418)

(assert (=> b!1641151 (= lt!603387 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 lt!603378)))))

(declare-fun singletonSeq!1656 (Token!5944) BalanceConc!11998)

(declare-fun printTailRec!871 (LexerInterface!2818 BalanceConc!11998 Int BalanceConc!11996) BalanceConc!11996)

(assert (=> b!1641151 (= (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457)))) (printTailRec!871 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))) 0 (BalanceConc!11997 Empty!6026)))))

(declare-fun lt!603374 () Unit!29726)

(declare-fun Unit!29747 () Unit!29726)

(assert (=> b!1641151 (= lt!603374 Unit!29747)))

(declare-fun lt!603373 () Unit!29726)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!390 (LexerInterface!2818 List!18160 List!18158 List!18158) Unit!29726)

(assert (=> b!1641151 (= lt!603373 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!390 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)))))

(assert (=> b!1641151 (= (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))))

(declare-fun lt!603395 () Unit!29726)

(declare-fun Unit!29748 () Unit!29726)

(assert (=> b!1641151 (= lt!603395 Unit!29748)))

(declare-fun singletonSeq!1657 (C!9208) BalanceConc!11996)

(declare-fun apply!4708 (BalanceConc!11996 Int) C!9208)

(declare-fun head!3572 (List!18158) C!9208)

(assert (=> b!1641151 (= (list!7150 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0))) (Cons!18088 (head!3572 (originalCharacters!4003 (h!23490 (t!150030 (t!150030 tokens!457))))) Nil!18088))))

(declare-fun lt!603380 () Unit!29726)

(declare-fun Unit!29749 () Unit!29726)

(assert (=> b!1641151 (= lt!603380 Unit!29749)))

(assert (=> b!1641151 (= (list!7150 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0))) (Cons!18088 (head!3572 (list!7150 lt!603388)) Nil!18088))))

(declare-fun lt!603397 () Unit!29726)

(declare-fun Unit!29750 () Unit!29726)

(assert (=> b!1641151 (= lt!603397 Unit!29750)))

(declare-fun head!3573 (BalanceConc!11996) C!9208)

(assert (=> b!1641151 (= (list!7150 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0))) (Cons!18088 (head!3573 lt!603388) Nil!18088))))

(declare-fun lt!603389 () Unit!29726)

(declare-fun Unit!29751 () Unit!29726)

(assert (=> b!1641151 (= lt!603389 Unit!29751)))

(declare-fun isDefined!2781 (Option!3418) Bool)

(assert (=> b!1641151 (isDefined!2781 (maxPrefix!1382 thiss!17113 rules!1846 (originalCharacters!4003 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603396 () Unit!29726)

(declare-fun Unit!29752 () Unit!29726)

(assert (=> b!1641151 (= lt!603396 Unit!29752)))

(assert (=> b!1641151 (isDefined!2781 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun lt!603375 () Unit!29726)

(declare-fun Unit!29753 () Unit!29726)

(assert (=> b!1641151 (= lt!603375 Unit!29753)))

(declare-fun lt!603385 () Unit!29726)

(declare-fun Unit!29754 () Unit!29726)

(assert (=> b!1641151 (= lt!603385 Unit!29754)))

(declare-fun get!5260 (Option!3418) tuple2!17744)

(assert (=> b!1641151 (= (_1!10274 (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))) (h!23490 (t!150030 tokens!457)))))

(declare-fun lt!603390 () Unit!29726)

(declare-fun Unit!29755 () Unit!29726)

(assert (=> b!1641151 (= lt!603390 Unit!29755)))

(declare-fun isEmpty!11119 (List!18158) Bool)

(assert (=> b!1641151 (isEmpty!11119 (_2!10274 (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))))

(declare-fun lt!603398 () Unit!29726)

(declare-fun Unit!29756 () Unit!29726)

(assert (=> b!1641151 (= lt!603398 Unit!29756)))

(declare-fun matchR!2014 (Regex!4517 List!18158) Bool)

(assert (=> b!1641151 (matchR!2014 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603384 () Unit!29726)

(declare-fun Unit!29757 () Unit!29726)

(assert (=> b!1641151 (= lt!603384 Unit!29757)))

(assert (=> b!1641151 (= (rule!5037 (h!23490 (t!150030 tokens!457))) (rule!5037 (h!23490 (t!150030 tokens!457))))))

(declare-fun lt!603391 () Unit!29726)

(declare-fun Unit!29758 () Unit!29726)

(assert (=> b!1641151 (= lt!603391 Unit!29758)))

(declare-fun lt!603394 () Unit!29726)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!152 (LexerInterface!2818 List!18160 Token!5944 Rule!6178 List!18158) Unit!29726)

(assert (=> b!1641151 (= lt!603394 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!152 thiss!17113 rules!1846 (h!23490 (t!150030 tokens!457)) (rule!5037 (h!23490 (t!150030 tokens!457))) (list!7150 lt!603388)))))

(declare-fun b!1641152 () Bool)

(declare-fun isEmpty!11120 (BalanceConc!11996) Bool)

(assert (=> b!1641152 (= e!1052545 (isEmpty!11120 (_2!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457)))))))))

(assert (= (and d!493969 c!266900) b!1641150))

(assert (= (and d!493969 (not c!266900)) b!1641151))

(assert (= (and d!493969 res!735325) b!1641152))

(assert (=> d!493969 m!1981545))

(assert (=> d!493969 m!1981495))

(declare-fun m!1981719 () Bool)

(assert (=> d!493969 m!1981719))

(declare-fun m!1981721 () Bool)

(assert (=> d!493969 m!1981721))

(declare-fun m!1981723 () Bool)

(assert (=> d!493969 m!1981723))

(assert (=> d!493969 m!1981495))

(assert (=> d!493969 m!1981719))

(declare-fun m!1981725 () Bool)

(assert (=> b!1641151 m!1981725))

(declare-fun m!1981727 () Bool)

(assert (=> b!1641151 m!1981727))

(declare-fun m!1981729 () Bool)

(assert (=> b!1641151 m!1981729))

(declare-fun m!1981731 () Bool)

(assert (=> b!1641151 m!1981731))

(declare-fun m!1981733 () Bool)

(assert (=> b!1641151 m!1981733))

(assert (=> b!1641151 m!1981495))

(declare-fun m!1981737 () Bool)

(assert (=> b!1641151 m!1981737))

(assert (=> b!1641151 m!1981495))

(assert (=> b!1641151 m!1981719))

(declare-fun m!1981747 () Bool)

(assert (=> b!1641151 m!1981747))

(declare-fun m!1981751 () Bool)

(assert (=> b!1641151 m!1981751))

(assert (=> b!1641151 m!1981515))

(declare-fun m!1981753 () Bool)

(assert (=> b!1641151 m!1981753))

(declare-fun m!1981757 () Bool)

(assert (=> b!1641151 m!1981757))

(assert (=> b!1641151 m!1981515))

(declare-fun m!1981759 () Bool)

(assert (=> b!1641151 m!1981759))

(declare-fun m!1981761 () Bool)

(assert (=> b!1641151 m!1981761))

(declare-fun m!1981763 () Bool)

(assert (=> b!1641151 m!1981763))

(assert (=> b!1641151 m!1981737))

(declare-fun m!1981765 () Bool)

(assert (=> b!1641151 m!1981765))

(assert (=> b!1641151 m!1981725))

(declare-fun m!1981767 () Bool)

(assert (=> b!1641151 m!1981767))

(declare-fun m!1981769 () Bool)

(assert (=> b!1641151 m!1981769))

(declare-fun m!1981771 () Bool)

(assert (=> b!1641151 m!1981771))

(assert (=> b!1641151 m!1981763))

(declare-fun m!1981773 () Bool)

(assert (=> b!1641151 m!1981773))

(declare-fun m!1981775 () Bool)

(assert (=> b!1641151 m!1981775))

(assert (=> b!1641151 m!1981733))

(assert (=> b!1641151 m!1981727))

(assert (=> b!1641151 m!1981769))

(declare-fun m!1981777 () Bool)

(assert (=> b!1641151 m!1981777))

(declare-fun m!1981779 () Bool)

(assert (=> b!1641151 m!1981779))

(declare-fun m!1981781 () Bool)

(assert (=> b!1641151 m!1981781))

(assert (=> b!1641151 m!1981733))

(declare-fun m!1981783 () Bool)

(assert (=> b!1641151 m!1981783))

(declare-fun m!1981785 () Bool)

(assert (=> b!1641151 m!1981785))

(assert (=> b!1641151 m!1981783))

(assert (=> b!1641151 m!1981783))

(declare-fun m!1981787 () Bool)

(assert (=> b!1641151 m!1981787))

(assert (=> b!1641151 m!1981727))

(declare-fun m!1981789 () Bool)

(assert (=> b!1641151 m!1981789))

(declare-fun m!1981791 () Bool)

(assert (=> b!1641151 m!1981791))

(assert (=> b!1641151 m!1981761))

(assert (=> b!1641151 m!1981757))

(assert (=> b!1641151 m!1981747))

(assert (=> b!1641151 m!1981779))

(assert (=> b!1641151 m!1981731))

(assert (=> b!1641151 m!1981783))

(declare-fun m!1981793 () Bool)

(assert (=> b!1641151 m!1981793))

(assert (=> b!1641151 m!1981769))

(assert (=> b!1641151 m!1981733))

(declare-fun m!1981795 () Bool)

(assert (=> b!1641151 m!1981795))

(declare-fun m!1981797 () Bool)

(assert (=> b!1641151 m!1981797))

(declare-fun m!1981799 () Bool)

(assert (=> b!1641151 m!1981799))

(assert (=> b!1641151 m!1981791))

(declare-fun m!1981801 () Bool)

(assert (=> b!1641151 m!1981801))

(declare-fun m!1981803 () Bool)

(assert (=> b!1641151 m!1981803))

(declare-fun m!1981805 () Bool)

(assert (=> b!1641151 m!1981805))

(declare-fun m!1981807 () Bool)

(assert (=> b!1641151 m!1981807))

(assert (=> b!1641152 m!1981495))

(assert (=> b!1641152 m!1981495))

(assert (=> b!1641152 m!1981719))

(assert (=> b!1641152 m!1981719))

(assert (=> b!1641152 m!1981721))

(declare-fun m!1981809 () Bool)

(assert (=> b!1641152 m!1981809))

(assert (=> b!1641067 d!493969))

(declare-fun b!1641181 () Bool)

(declare-fun e!1052563 () Bool)

(declare-fun size!14408 (List!18158) Int)

(assert (=> b!1641181 (= e!1052563 (>= (size!14408 lt!603195) (size!14408 lt!603204)))))

(declare-fun b!1641178 () Bool)

(declare-fun e!1052561 () Bool)

(declare-fun e!1052562 () Bool)

(assert (=> b!1641178 (= e!1052561 e!1052562)))

(declare-fun res!735343 () Bool)

(assert (=> b!1641178 (=> (not res!735343) (not e!1052562))))

(assert (=> b!1641178 (= res!735343 (not ((_ is Nil!18088) lt!603195)))))

(declare-fun b!1641179 () Bool)

(declare-fun res!735342 () Bool)

(assert (=> b!1641179 (=> (not res!735342) (not e!1052562))))

(assert (=> b!1641179 (= res!735342 (= (head!3572 lt!603204) (head!3572 lt!603195)))))

(declare-fun d!493993 () Bool)

(assert (=> d!493993 e!1052563))

(declare-fun res!735340 () Bool)

(assert (=> d!493993 (=> res!735340 e!1052563)))

(declare-fun lt!603408 () Bool)

(assert (=> d!493993 (= res!735340 (not lt!603408))))

(assert (=> d!493993 (= lt!603408 e!1052561)))

(declare-fun res!735341 () Bool)

(assert (=> d!493993 (=> res!735341 e!1052561)))

(assert (=> d!493993 (= res!735341 ((_ is Nil!18088) lt!603204))))

(assert (=> d!493993 (= (isPrefix!1447 lt!603204 lt!603195) lt!603408)))

(declare-fun b!1641180 () Bool)

(declare-fun tail!2408 (List!18158) List!18158)

(assert (=> b!1641180 (= e!1052562 (isPrefix!1447 (tail!2408 lt!603204) (tail!2408 lt!603195)))))

(assert (= (and d!493993 (not res!735341)) b!1641178))

(assert (= (and b!1641178 res!735343) b!1641179))

(assert (= (and b!1641179 res!735342) b!1641180))

(assert (= (and d!493993 (not res!735340)) b!1641181))

(declare-fun m!1981829 () Bool)

(assert (=> b!1641181 m!1981829))

(declare-fun m!1981831 () Bool)

(assert (=> b!1641181 m!1981831))

(declare-fun m!1981833 () Bool)

(assert (=> b!1641179 m!1981833))

(declare-fun m!1981835 () Bool)

(assert (=> b!1641179 m!1981835))

(declare-fun m!1981837 () Bool)

(assert (=> b!1641180 m!1981837))

(declare-fun m!1981839 () Bool)

(assert (=> b!1641180 m!1981839))

(assert (=> b!1641180 m!1981837))

(assert (=> b!1641180 m!1981839))

(declare-fun m!1981841 () Bool)

(assert (=> b!1641180 m!1981841))

(assert (=> b!1641067 d!493993))

(declare-fun d!494003 () Bool)

(assert (=> d!494003 (isPrefix!1447 lt!603204 (++!4860 lt!603204 lt!603205))))

(declare-fun lt!603411 () Unit!29726)

(declare-fun choose!9847 (List!18158 List!18158) Unit!29726)

(assert (=> d!494003 (= lt!603411 (choose!9847 lt!603204 lt!603205))))

(assert (=> d!494003 (= (lemmaConcatTwoListThenFirstIsPrefix!972 lt!603204 lt!603205) lt!603411)))

(declare-fun bs!395679 () Bool)

(assert (= bs!395679 d!494003))

(assert (=> bs!395679 m!1981497))

(assert (=> bs!395679 m!1981497))

(declare-fun m!1981843 () Bool)

(assert (=> bs!395679 m!1981843))

(declare-fun m!1981845 () Bool)

(assert (=> bs!395679 m!1981845))

(assert (=> b!1641067 d!494003))

(declare-fun d!494005 () Bool)

(declare-fun res!735346 () Bool)

(declare-fun e!1052566 () Bool)

(assert (=> d!494005 (=> (not res!735346) (not e!1052566))))

(declare-fun rulesValid!1152 (LexerInterface!2818 List!18160) Bool)

(assert (=> d!494005 (= res!735346 (rulesValid!1152 thiss!17113 rules!1846))))

(assert (=> d!494005 (= (rulesInvariant!2487 thiss!17113 rules!1846) e!1052566)))

(declare-fun b!1641184 () Bool)

(declare-datatypes ((List!18162 0))(
  ( (Nil!18092) (Cons!18092 (h!23493 String!20727) (t!150053 List!18162)) )
))
(declare-fun noDuplicateTag!1152 (LexerInterface!2818 List!18160 List!18162) Bool)

(assert (=> b!1641184 (= e!1052566 (noDuplicateTag!1152 thiss!17113 rules!1846 Nil!18092))))

(assert (= (and d!494005 res!735346) b!1641184))

(declare-fun m!1981847 () Bool)

(assert (=> d!494005 m!1981847))

(declare-fun m!1981849 () Bool)

(assert (=> b!1641184 m!1981849))

(assert (=> b!1641068 d!494005))

(declare-fun b!1641220 () Bool)

(declare-fun e!1052594 () Bool)

(assert (=> b!1641220 (= e!1052594 true)))

(declare-fun b!1641219 () Bool)

(declare-fun e!1052593 () Bool)

(assert (=> b!1641219 (= e!1052593 e!1052594)))

(declare-fun b!1641218 () Bool)

(declare-fun e!1052592 () Bool)

(assert (=> b!1641218 (= e!1052592 e!1052593)))

(declare-fun d!494007 () Bool)

(assert (=> d!494007 e!1052592))

(assert (= b!1641219 b!1641220))

(assert (= b!1641218 b!1641219))

(assert (= (and d!494007 ((_ is Cons!18090) rules!1846)) b!1641218))

(declare-fun order!10733 () Int)

(declare-fun order!10735 () Int)

(declare-fun lambda!67493 () Int)

(declare-fun dynLambda!8068 (Int Int) Int)

(declare-fun dynLambda!8069 (Int Int) Int)

(assert (=> b!1641220 (< (dynLambda!8068 order!10733 (toValue!4624 (transformation!3189 (h!23491 rules!1846)))) (dynLambda!8069 order!10735 lambda!67493))))

(declare-fun order!10737 () Int)

(declare-fun dynLambda!8070 (Int Int) Int)

(assert (=> b!1641220 (< (dynLambda!8070 order!10737 (toChars!4483 (transformation!3189 (h!23491 rules!1846)))) (dynLambda!8069 order!10735 lambda!67493))))

(assert (=> d!494007 true))

(declare-fun lt!603419 () Bool)

(declare-fun forall!4122 (List!18159 Int) Bool)

(assert (=> d!494007 (= lt!603419 (forall!4122 tokens!457 lambda!67493))))

(declare-fun e!1052585 () Bool)

(assert (=> d!494007 (= lt!603419 e!1052585)))

(declare-fun res!735364 () Bool)

(assert (=> d!494007 (=> res!735364 e!1052585)))

(assert (=> d!494007 (= res!735364 (not ((_ is Cons!18089) tokens!457)))))

(assert (=> d!494007 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494007 (= (rulesProduceEachTokenIndividuallyList!1020 thiss!17113 rules!1846 tokens!457) lt!603419)))

(declare-fun b!1641208 () Bool)

(declare-fun e!1052584 () Bool)

(assert (=> b!1641208 (= e!1052585 e!1052584)))

(declare-fun res!735365 () Bool)

(assert (=> b!1641208 (=> (not res!735365) (not e!1052584))))

(declare-fun rulesProduceIndividualToken!1470 (LexerInterface!2818 List!18160 Token!5944) Bool)

(assert (=> b!1641208 (= res!735365 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 tokens!457)))))

(declare-fun b!1641209 () Bool)

(assert (=> b!1641209 (= e!1052584 (rulesProduceEachTokenIndividuallyList!1020 thiss!17113 rules!1846 (t!150030 tokens!457)))))

(assert (= (and d!494007 (not res!735364)) b!1641208))

(assert (= (and b!1641208 res!735365) b!1641209))

(declare-fun m!1981869 () Bool)

(assert (=> d!494007 m!1981869))

(assert (=> d!494007 m!1981545))

(declare-fun m!1981871 () Bool)

(assert (=> b!1641208 m!1981871))

(declare-fun m!1981873 () Bool)

(assert (=> b!1641209 m!1981873))

(assert (=> b!1641069 d!494007))

(declare-fun d!494013 () Bool)

(declare-fun res!735378 () Bool)

(declare-fun e!1052651 () Bool)

(assert (=> d!494013 (=> res!735378 e!1052651)))

(assert (=> d!494013 (= res!735378 (or (not ((_ is Cons!18089) tokens!457)) (not ((_ is Cons!18089) (t!150030 tokens!457)))))))

(assert (=> d!494013 (= (tokensListTwoByTwoPredicateSeparableList!511 thiss!17113 tokens!457 rules!1846) e!1052651)))

(declare-fun b!1641296 () Bool)

(declare-fun e!1052650 () Bool)

(assert (=> b!1641296 (= e!1052651 e!1052650)))

(declare-fun res!735379 () Bool)

(assert (=> b!1641296 (=> (not res!735379) (not e!1052650))))

(declare-fun separableTokensPredicate!760 (LexerInterface!2818 Token!5944 Token!5944 List!18160) Bool)

(assert (=> b!1641296 (= res!735379 (separableTokensPredicate!760 thiss!17113 (h!23490 tokens!457) (h!23490 (t!150030 tokens!457)) rules!1846))))

(declare-fun lt!603438 () Unit!29726)

(declare-fun Unit!29759 () Unit!29726)

(assert (=> b!1641296 (= lt!603438 Unit!29759)))

(declare-fun size!14409 (BalanceConc!11996) Int)

(assert (=> b!1641296 (> (size!14409 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) 0)))

(declare-fun lt!603440 () Unit!29726)

(declare-fun Unit!29760 () Unit!29726)

(assert (=> b!1641296 (= lt!603440 Unit!29760)))

(assert (=> b!1641296 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (t!150030 tokens!457)))))

(declare-fun lt!603441 () Unit!29726)

(declare-fun Unit!29761 () Unit!29726)

(assert (=> b!1641296 (= lt!603441 Unit!29761)))

(assert (=> b!1641296 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 tokens!457))))

(declare-fun lt!603437 () Unit!29726)

(declare-fun lt!603436 () Unit!29726)

(assert (=> b!1641296 (= lt!603437 lt!603436)))

(assert (=> b!1641296 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (t!150030 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!589 (LexerInterface!2818 List!18160 List!18159 Token!5944) Unit!29726)

(assert (=> b!1641296 (= lt!603436 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!589 thiss!17113 rules!1846 tokens!457 (h!23490 (t!150030 tokens!457))))))

(declare-fun lt!603439 () Unit!29726)

(declare-fun lt!603435 () Unit!29726)

(assert (=> b!1641296 (= lt!603439 lt!603435)))

(assert (=> b!1641296 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 tokens!457))))

(assert (=> b!1641296 (= lt!603435 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!589 thiss!17113 rules!1846 tokens!457 (h!23490 tokens!457)))))

(declare-fun b!1641297 () Bool)

(assert (=> b!1641297 (= e!1052650 (tokensListTwoByTwoPredicateSeparableList!511 thiss!17113 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))) rules!1846))))

(assert (= (and d!494013 (not res!735378)) b!1641296))

(assert (= (and b!1641296 res!735379) b!1641297))

(assert (=> b!1641296 m!1981871))

(assert (=> b!1641296 m!1981731))

(declare-fun m!1981897 () Bool)

(assert (=> b!1641296 m!1981897))

(declare-fun m!1981899 () Bool)

(assert (=> b!1641296 m!1981899))

(assert (=> b!1641296 m!1981731))

(declare-fun m!1981901 () Bool)

(assert (=> b!1641296 m!1981901))

(declare-fun m!1981903 () Bool)

(assert (=> b!1641296 m!1981903))

(declare-fun m!1981905 () Bool)

(assert (=> b!1641296 m!1981905))

(declare-fun m!1981907 () Bool)

(assert (=> b!1641297 m!1981907))

(assert (=> b!1641070 d!494013))

(declare-fun d!494017 () Bool)

(declare-fun lt!603444 () BalanceConc!11996)

(declare-fun printList!933 (LexerInterface!2818 List!18159) List!18158)

(assert (=> d!494017 (= (list!7150 lt!603444) (printList!933 thiss!17113 (list!7149 (seqFromList!2122 tokens!457))))))

(assert (=> d!494017 (= lt!603444 (printTailRec!871 thiss!17113 (seqFromList!2122 tokens!457) 0 (BalanceConc!11997 Empty!6026)))))

(assert (=> d!494017 (= (print!1349 thiss!17113 (seqFromList!2122 tokens!457)) lt!603444)))

(declare-fun bs!395681 () Bool)

(assert (= bs!395681 d!494017))

(declare-fun m!1981909 () Bool)

(assert (=> bs!395681 m!1981909))

(assert (=> bs!395681 m!1981505))

(declare-fun m!1981911 () Bool)

(assert (=> bs!395681 m!1981911))

(assert (=> bs!395681 m!1981911))

(declare-fun m!1981913 () Bool)

(assert (=> bs!395681 m!1981913))

(assert (=> bs!395681 m!1981505))

(declare-fun m!1981915 () Bool)

(assert (=> bs!395681 m!1981915))

(assert (=> b!1641071 d!494017))

(declare-fun lt!603447 () tuple2!17738)

(declare-fun b!1641308 () Bool)

(declare-fun e!1052660 () Bool)

(declare-datatypes ((tuple2!17746 0))(
  ( (tuple2!17747 (_1!10275 List!18159) (_2!10275 List!18158)) )
))
(declare-fun lexList!853 (LexerInterface!2818 List!18160 List!18158) tuple2!17746)

(assert (=> b!1641308 (= e!1052660 (= (list!7150 (_2!10271 lt!603447)) (_2!10275 (lexList!853 thiss!17113 rules!1846 (list!7150 lt!603200)))))))

(declare-fun d!494019 () Bool)

(assert (=> d!494019 e!1052660))

(declare-fun res!735388 () Bool)

(assert (=> d!494019 (=> (not res!735388) (not e!1052660))))

(declare-fun e!1052659 () Bool)

(assert (=> d!494019 (= res!735388 e!1052659)))

(declare-fun c!266909 () Bool)

(declare-fun size!14410 (BalanceConc!11998) Int)

(assert (=> d!494019 (= c!266909 (> (size!14410 (_1!10271 lt!603447)) 0))))

(declare-fun lexTailRecV2!576 (LexerInterface!2818 List!18160 BalanceConc!11996 BalanceConc!11996 BalanceConc!11996 BalanceConc!11998) tuple2!17738)

(assert (=> d!494019 (= lt!603447 (lexTailRecV2!576 thiss!17113 rules!1846 lt!603200 (BalanceConc!11997 Empty!6026) lt!603200 (BalanceConc!11999 Empty!6027)))))

(assert (=> d!494019 (= (lex!1302 thiss!17113 rules!1846 lt!603200) lt!603447)))

(declare-fun b!1641309 () Bool)

(declare-fun res!735386 () Bool)

(assert (=> b!1641309 (=> (not res!735386) (not e!1052660))))

(assert (=> b!1641309 (= res!735386 (= (list!7149 (_1!10271 lt!603447)) (_1!10275 (lexList!853 thiss!17113 rules!1846 (list!7150 lt!603200)))))))

(declare-fun b!1641310 () Bool)

(assert (=> b!1641310 (= e!1052659 (= (_2!10271 lt!603447) lt!603200))))

(declare-fun b!1641311 () Bool)

(declare-fun e!1052658 () Bool)

(declare-fun isEmpty!11121 (BalanceConc!11998) Bool)

(assert (=> b!1641311 (= e!1052658 (not (isEmpty!11121 (_1!10271 lt!603447))))))

(declare-fun b!1641312 () Bool)

(assert (=> b!1641312 (= e!1052659 e!1052658)))

(declare-fun res!735387 () Bool)

(assert (=> b!1641312 (= res!735387 (< (size!14409 (_2!10271 lt!603447)) (size!14409 lt!603200)))))

(assert (=> b!1641312 (=> (not res!735387) (not e!1052658))))

(assert (= (and d!494019 c!266909) b!1641312))

(assert (= (and d!494019 (not c!266909)) b!1641310))

(assert (= (and b!1641312 res!735387) b!1641311))

(assert (= (and d!494019 res!735388) b!1641309))

(assert (= (and b!1641309 res!735386) b!1641308))

(declare-fun m!1981917 () Bool)

(assert (=> b!1641308 m!1981917))

(assert (=> b!1641308 m!1981503))

(assert (=> b!1641308 m!1981503))

(declare-fun m!1981919 () Bool)

(assert (=> b!1641308 m!1981919))

(declare-fun m!1981921 () Bool)

(assert (=> b!1641312 m!1981921))

(declare-fun m!1981923 () Bool)

(assert (=> b!1641312 m!1981923))

(declare-fun m!1981925 () Bool)

(assert (=> d!494019 m!1981925))

(declare-fun m!1981927 () Bool)

(assert (=> d!494019 m!1981927))

(declare-fun m!1981929 () Bool)

(assert (=> b!1641309 m!1981929))

(assert (=> b!1641309 m!1981503))

(assert (=> b!1641309 m!1981503))

(assert (=> b!1641309 m!1981919))

(declare-fun m!1981931 () Bool)

(assert (=> b!1641311 m!1981931))

(assert (=> b!1641071 d!494019))

(declare-fun d!494021 () Bool)

(declare-fun lt!603448 () BalanceConc!11996)

(assert (=> d!494021 (= (list!7150 lt!603448) (printList!933 thiss!17113 (list!7149 lt!603202)))))

(assert (=> d!494021 (= lt!603448 (printTailRec!871 thiss!17113 lt!603202 0 (BalanceConc!11997 Empty!6026)))))

(assert (=> d!494021 (= (print!1349 thiss!17113 lt!603202) lt!603448)))

(declare-fun bs!395682 () Bool)

(assert (= bs!395682 d!494021))

(declare-fun m!1981933 () Bool)

(assert (=> bs!395682 m!1981933))

(assert (=> bs!395682 m!1981521))

(assert (=> bs!395682 m!1981521))

(declare-fun m!1981935 () Bool)

(assert (=> bs!395682 m!1981935))

(declare-fun m!1981937 () Bool)

(assert (=> bs!395682 m!1981937))

(assert (=> b!1641071 d!494021))

(declare-fun d!494023 () Bool)

(declare-fun fromListB!937 (List!18159) BalanceConc!11998)

(assert (=> d!494023 (= (seqFromList!2122 tokens!457) (fromListB!937 tokens!457))))

(declare-fun bs!395683 () Bool)

(assert (= bs!395683 d!494023))

(declare-fun m!1981939 () Bool)

(assert (=> bs!395683 m!1981939))

(assert (=> b!1641071 d!494023))

(declare-fun d!494025 () Bool)

(declare-fun lt!603451 () BalanceConc!11996)

(assert (=> d!494025 (= (list!7150 lt!603451) (originalCharacters!4003 (h!23490 tokens!457)))))

(declare-fun dynLambda!8071 (Int TokenValue!3279) BalanceConc!11996)

(assert (=> d!494025 (= lt!603451 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))))

(assert (=> d!494025 (= (charsOf!1838 (h!23490 tokens!457)) lt!603451)))

(declare-fun b_lambda!51573 () Bool)

(assert (=> (not b_lambda!51573) (not d!494025)))

(declare-fun t!150046 () Bool)

(declare-fun tb!93951 () Bool)

(assert (=> (and b!1641065 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) t!150046) tb!93951))

(declare-fun b!1641317 () Bool)

(declare-fun e!1052663 () Bool)

(declare-fun tp!475694 () Bool)

(declare-fun inv!23442 (Conc!6026) Bool)

(assert (=> b!1641317 (= e!1052663 (and (inv!23442 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))) tp!475694))))

(declare-fun result!113432 () Bool)

(declare-fun inv!23443 (BalanceConc!11996) Bool)

(assert (=> tb!93951 (= result!113432 (and (inv!23443 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))) e!1052663))))

(assert (= tb!93951 b!1641317))

(declare-fun m!1981941 () Bool)

(assert (=> b!1641317 m!1981941))

(declare-fun m!1981943 () Bool)

(assert (=> tb!93951 m!1981943))

(assert (=> d!494025 t!150046))

(declare-fun b_and!116373 () Bool)

(assert (= b_and!116351 (and (=> t!150046 result!113432) b_and!116373)))

(declare-fun t!150048 () Bool)

(declare-fun tb!93953 () Bool)

(assert (=> (and b!1641063 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) t!150048) tb!93953))

(declare-fun result!113436 () Bool)

(assert (= result!113436 result!113432))

(assert (=> d!494025 t!150048))

(declare-fun b_and!116375 () Bool)

(assert (= b_and!116355 (and (=> t!150048 result!113436) b_and!116375)))

(declare-fun m!1981945 () Bool)

(assert (=> d!494025 m!1981945))

(declare-fun m!1981947 () Bool)

(assert (=> d!494025 m!1981947))

(assert (=> b!1641071 d!494025))

(declare-fun d!494027 () Bool)

(assert (=> d!494027 (= (seqFromList!2122 (t!150030 tokens!457)) (fromListB!937 (t!150030 tokens!457)))))

(declare-fun bs!395684 () Bool)

(assert (= bs!395684 d!494027))

(declare-fun m!1981949 () Bool)

(assert (=> bs!395684 m!1981949))

(assert (=> b!1641071 d!494027))

(declare-fun b!1641328 () Bool)

(declare-fun res!735394 () Bool)

(declare-fun e!1052669 () Bool)

(assert (=> b!1641328 (=> (not res!735394) (not e!1052669))))

(declare-fun lt!603454 () List!18158)

(assert (=> b!1641328 (= res!735394 (= (size!14408 lt!603454) (+ (size!14408 lt!603204) (size!14408 lt!603205))))))

(declare-fun b!1641327 () Bool)

(declare-fun e!1052668 () List!18158)

(assert (=> b!1641327 (= e!1052668 (Cons!18088 (h!23489 lt!603204) (++!4860 (t!150029 lt!603204) lt!603205)))))

(declare-fun b!1641329 () Bool)

(assert (=> b!1641329 (= e!1052669 (or (not (= lt!603205 Nil!18088)) (= lt!603454 lt!603204)))))

(declare-fun d!494029 () Bool)

(assert (=> d!494029 e!1052669))

(declare-fun res!735393 () Bool)

(assert (=> d!494029 (=> (not res!735393) (not e!1052669))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2503 (List!18158) (InoxSet C!9208))

(assert (=> d!494029 (= res!735393 (= (content!2503 lt!603454) ((_ map or) (content!2503 lt!603204) (content!2503 lt!603205))))))

(assert (=> d!494029 (= lt!603454 e!1052668)))

(declare-fun c!266912 () Bool)

(assert (=> d!494029 (= c!266912 ((_ is Nil!18088) lt!603204))))

(assert (=> d!494029 (= (++!4860 lt!603204 lt!603205) lt!603454)))

(declare-fun b!1641326 () Bool)

(assert (=> b!1641326 (= e!1052668 lt!603205)))

(assert (= (and d!494029 c!266912) b!1641326))

(assert (= (and d!494029 (not c!266912)) b!1641327))

(assert (= (and d!494029 res!735393) b!1641328))

(assert (= (and b!1641328 res!735394) b!1641329))

(declare-fun m!1981951 () Bool)

(assert (=> b!1641328 m!1981951))

(assert (=> b!1641328 m!1981831))

(declare-fun m!1981953 () Bool)

(assert (=> b!1641328 m!1981953))

(declare-fun m!1981955 () Bool)

(assert (=> b!1641327 m!1981955))

(declare-fun m!1981957 () Bool)

(assert (=> d!494029 m!1981957))

(declare-fun m!1981959 () Bool)

(assert (=> d!494029 m!1981959))

(declare-fun m!1981961 () Bool)

(assert (=> d!494029 m!1981961))

(assert (=> b!1641071 d!494029))

(declare-fun d!494031 () Bool)

(declare-fun list!7154 (Conc!6026) List!18158)

(assert (=> d!494031 (= (list!7150 (charsOf!1838 (h!23490 tokens!457))) (list!7154 (c!266879 (charsOf!1838 (h!23490 tokens!457)))))))

(declare-fun bs!395685 () Bool)

(assert (= bs!395685 d!494031))

(declare-fun m!1981963 () Bool)

(assert (=> bs!395685 m!1981963))

(assert (=> b!1641071 d!494031))

(declare-fun d!494033 () Bool)

(assert (=> d!494033 (= (list!7150 lt!603203) (list!7154 (c!266879 lt!603203)))))

(declare-fun bs!395686 () Bool)

(assert (= bs!395686 d!494033))

(declare-fun m!1981965 () Bool)

(assert (=> bs!395686 m!1981965))

(assert (=> b!1641071 d!494033))

(declare-fun d!494035 () Bool)

(assert (=> d!494035 (= (list!7150 lt!603200) (list!7154 (c!266879 lt!603200)))))

(declare-fun bs!395687 () Bool)

(assert (= bs!395687 d!494035))

(declare-fun m!1981967 () Bool)

(assert (=> bs!395687 m!1981967))

(assert (=> b!1641071 d!494035))

(declare-fun d!494037 () Bool)

(assert (=> d!494037 (= (inv!23435 (tag!3469 (h!23491 rules!1846))) (= (mod (str.len (value!100558 (tag!3469 (h!23491 rules!1846)))) 2) 0))))

(assert (=> b!1641072 d!494037))

(declare-fun d!494039 () Bool)

(declare-fun res!735397 () Bool)

(declare-fun e!1052672 () Bool)

(assert (=> d!494039 (=> (not res!735397) (not e!1052672))))

(declare-fun semiInverseModEq!1224 (Int Int) Bool)

(assert (=> d!494039 (= res!735397 (semiInverseModEq!1224 (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toValue!4624 (transformation!3189 (h!23491 rules!1846)))))))

(assert (=> d!494039 (= (inv!23438 (transformation!3189 (h!23491 rules!1846))) e!1052672)))

(declare-fun b!1641332 () Bool)

(declare-fun equivClasses!1165 (Int Int) Bool)

(assert (=> b!1641332 (= e!1052672 (equivClasses!1165 (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toValue!4624 (transformation!3189 (h!23491 rules!1846)))))))

(assert (= (and d!494039 res!735397) b!1641332))

(declare-fun m!1981969 () Bool)

(assert (=> d!494039 m!1981969))

(declare-fun m!1981971 () Bool)

(assert (=> b!1641332 m!1981971))

(assert (=> b!1641072 d!494039))

(declare-fun d!494041 () Bool)

(assert (=> d!494041 (= (inv!23435 (tag!3469 (rule!5037 (h!23490 tokens!457)))) (= (mod (str.len (value!100558 (tag!3469 (rule!5037 (h!23490 tokens!457))))) 2) 0))))

(assert (=> b!1641062 d!494041))

(declare-fun d!494043 () Bool)

(declare-fun res!735398 () Bool)

(declare-fun e!1052673 () Bool)

(assert (=> d!494043 (=> (not res!735398) (not e!1052673))))

(assert (=> d!494043 (= res!735398 (semiInverseModEq!1224 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457))))))))

(assert (=> d!494043 (= (inv!23438 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) e!1052673)))

(declare-fun b!1641333 () Bool)

(assert (=> b!1641333 (= e!1052673 (equivClasses!1165 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457))))))))

(assert (= (and d!494043 res!735398) b!1641333))

(declare-fun m!1981973 () Bool)

(assert (=> d!494043 m!1981973))

(declare-fun m!1981975 () Bool)

(assert (=> b!1641333 m!1981975))

(assert (=> b!1641062 d!494043))

(declare-fun d!494045 () Bool)

(assert (=> d!494045 (= (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457)))) (list!7153 (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457))))))))

(declare-fun bs!395688 () Bool)

(assert (= bs!395688 d!494045))

(declare-fun m!1981977 () Bool)

(assert (=> bs!395688 m!1981977))

(assert (=> b!1641075 d!494045))

(declare-fun d!494047 () Bool)

(assert (=> d!494047 (= (list!7149 lt!603202) (list!7153 (c!266881 lt!603202)))))

(declare-fun bs!395689 () Bool)

(assert (= bs!395689 d!494047))

(declare-fun m!1981979 () Bool)

(assert (=> bs!395689 m!1981979))

(assert (=> b!1641075 d!494047))

(declare-fun d!494049 () Bool)

(assert (=> d!494049 (= (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (fromListB!937 (t!150030 (t!150030 tokens!457))))))

(declare-fun bs!395690 () Bool)

(assert (= bs!395690 d!494049))

(declare-fun m!1981981 () Bool)

(assert (=> bs!395690 m!1981981))

(assert (=> b!1641075 d!494049))

(declare-fun d!494051 () Bool)

(assert (=> d!494051 (= (list!7149 (_1!10271 lt!603201)) (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603457 () Unit!29726)

(declare-fun choose!9848 (Token!5944 List!18159 BalanceConc!11998) Unit!29726)

(assert (=> d!494051 (= lt!603457 (choose!9848 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)) (_1!10271 lt!603201)))))

(declare-fun $colon$colon!351 (List!18159 Token!5944) List!18159)

(assert (=> d!494051 (= (list!7149 (_1!10271 lt!603201)) (list!7149 (seqFromList!2122 ($colon$colon!351 (t!150030 (t!150030 tokens!457)) (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494051 (= (seqFromListBHdTlConstructive!264 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)) (_1!10271 lt!603201)) lt!603457)))

(declare-fun bs!395691 () Bool)

(assert (= bs!395691 d!494051))

(assert (=> bs!395691 m!1981529))

(declare-fun m!1981983 () Bool)

(assert (=> bs!395691 m!1981983))

(assert (=> bs!395691 m!1981515))

(assert (=> bs!395691 m!1981517))

(declare-fun m!1981985 () Bool)

(assert (=> bs!395691 m!1981985))

(declare-fun m!1981987 () Bool)

(assert (=> bs!395691 m!1981987))

(assert (=> bs!395691 m!1981515))

(declare-fun m!1981989 () Bool)

(assert (=> bs!395691 m!1981989))

(assert (=> bs!395691 m!1981985))

(assert (=> bs!395691 m!1981517))

(assert (=> bs!395691 m!1981519))

(assert (=> bs!395691 m!1981989))

(assert (=> b!1641075 d!494051))

(declare-fun d!494053 () Bool)

(declare-fun e!1052676 () Bool)

(assert (=> d!494053 e!1052676))

(declare-fun res!735401 () Bool)

(assert (=> d!494053 (=> (not res!735401) (not e!1052676))))

(declare-fun isBalanced!1832 (Conc!6027) Bool)

(declare-fun prepend!737 (Conc!6027 Token!5944) Conc!6027)

(assert (=> d!494053 (= res!735401 (isBalanced!1832 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603460 () BalanceConc!11998)

(assert (=> d!494053 (= lt!603460 (BalanceConc!11999 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494053 (= (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457))) lt!603460)))

(declare-fun b!1641336 () Bool)

(assert (=> b!1641336 (= e!1052676 (= (list!7149 lt!603460) (Cons!18089 (h!23490 (t!150030 tokens!457)) (list!7149 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))))))))

(assert (= (and d!494053 res!735401) b!1641336))

(declare-fun m!1981991 () Bool)

(assert (=> d!494053 m!1981991))

(assert (=> d!494053 m!1981991))

(declare-fun m!1981993 () Bool)

(assert (=> d!494053 m!1981993))

(declare-fun m!1981995 () Bool)

(assert (=> b!1641336 m!1981995))

(assert (=> b!1641336 m!1981515))

(declare-fun m!1981997 () Bool)

(assert (=> b!1641336 m!1981997))

(assert (=> b!1641075 d!494053))

(declare-fun d!494055 () Bool)

(declare-fun res!735406 () Bool)

(declare-fun e!1052679 () Bool)

(assert (=> d!494055 (=> (not res!735406) (not e!1052679))))

(assert (=> d!494055 (= res!735406 (not (isEmpty!11119 (originalCharacters!4003 (h!23490 tokens!457)))))))

(assert (=> d!494055 (= (inv!23439 (h!23490 tokens!457)) e!1052679)))

(declare-fun b!1641341 () Bool)

(declare-fun res!735407 () Bool)

(assert (=> b!1641341 (=> (not res!735407) (not e!1052679))))

(assert (=> b!1641341 (= res!735407 (= (originalCharacters!4003 (h!23490 tokens!457)) (list!7150 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))))))

(declare-fun b!1641342 () Bool)

(assert (=> b!1641342 (= e!1052679 (= (size!14404 (h!23490 tokens!457)) (size!14408 (originalCharacters!4003 (h!23490 tokens!457)))))))

(assert (= (and d!494055 res!735406) b!1641341))

(assert (= (and b!1641341 res!735407) b!1641342))

(declare-fun b_lambda!51575 () Bool)

(assert (=> (not b_lambda!51575) (not b!1641341)))

(assert (=> b!1641341 t!150046))

(declare-fun b_and!116377 () Bool)

(assert (= b_and!116373 (and (=> t!150046 result!113432) b_and!116377)))

(assert (=> b!1641341 t!150048))

(declare-fun b_and!116379 () Bool)

(assert (= b_and!116375 (and (=> t!150048 result!113436) b_and!116379)))

(declare-fun m!1981999 () Bool)

(assert (=> d!494055 m!1981999))

(assert (=> b!1641341 m!1981947))

(assert (=> b!1641341 m!1981947))

(declare-fun m!1982001 () Bool)

(assert (=> b!1641341 m!1982001))

(declare-fun m!1982003 () Bool)

(assert (=> b!1641342 m!1982003))

(assert (=> b!1641064 d!494055))

(declare-fun b!1641347 () Bool)

(declare-fun e!1052682 () Bool)

(declare-fun tp_is_empty!7329 () Bool)

(declare-fun tp!475697 () Bool)

(assert (=> b!1641347 (= e!1052682 (and tp_is_empty!7329 tp!475697))))

(assert (=> b!1641076 (= tp!475636 e!1052682)))

(assert (= (and b!1641076 ((_ is Cons!18088) (originalCharacters!4003 (h!23490 tokens!457)))) b!1641347))

(declare-fun e!1052685 () Bool)

(assert (=> b!1641072 (= tp!475632 e!1052685)))

(declare-fun b!1641359 () Bool)

(declare-fun tp!475712 () Bool)

(declare-fun tp!475711 () Bool)

(assert (=> b!1641359 (= e!1052685 (and tp!475712 tp!475711))))

(declare-fun b!1641358 () Bool)

(assert (=> b!1641358 (= e!1052685 tp_is_empty!7329)))

(declare-fun b!1641361 () Bool)

(declare-fun tp!475710 () Bool)

(declare-fun tp!475709 () Bool)

(assert (=> b!1641361 (= e!1052685 (and tp!475710 tp!475709))))

(declare-fun b!1641360 () Bool)

(declare-fun tp!475708 () Bool)

(assert (=> b!1641360 (= e!1052685 tp!475708)))

(assert (= (and b!1641072 ((_ is ElementMatch!4517) (regex!3189 (h!23491 rules!1846)))) b!1641358))

(assert (= (and b!1641072 ((_ is Concat!7797) (regex!3189 (h!23491 rules!1846)))) b!1641359))

(assert (= (and b!1641072 ((_ is Star!4517) (regex!3189 (h!23491 rules!1846)))) b!1641360))

(assert (= (and b!1641072 ((_ is Union!4517) (regex!3189 (h!23491 rules!1846)))) b!1641361))

(declare-fun b!1641372 () Bool)

(declare-fun b_free!44487 () Bool)

(declare-fun b_next!45191 () Bool)

(assert (=> b!1641372 (= b_free!44487 (not b_next!45191))))

(declare-fun tp!475724 () Bool)

(declare-fun b_and!116381 () Bool)

(assert (=> b!1641372 (= tp!475724 b_and!116381)))

(declare-fun b_free!44489 () Bool)

(declare-fun b_next!45193 () Bool)

(assert (=> b!1641372 (= b_free!44489 (not b_next!45193))))

(declare-fun t!150050 () Bool)

(declare-fun tb!93955 () Bool)

(assert (=> (and b!1641372 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) t!150050) tb!93955))

(declare-fun result!113444 () Bool)

(assert (= result!113444 result!113432))

(assert (=> d!494025 t!150050))

(assert (=> b!1641341 t!150050))

(declare-fun b_and!116383 () Bool)

(declare-fun tp!475722 () Bool)

(assert (=> b!1641372 (= tp!475722 (and (=> t!150050 result!113444) b_and!116383))))

(declare-fun e!1052697 () Bool)

(assert (=> b!1641372 (= e!1052697 (and tp!475724 tp!475722))))

(declare-fun b!1641371 () Bool)

(declare-fun e!1052694 () Bool)

(declare-fun tp!475723 () Bool)

(assert (=> b!1641371 (= e!1052694 (and tp!475723 (inv!23435 (tag!3469 (h!23491 (t!150031 rules!1846)))) (inv!23438 (transformation!3189 (h!23491 (t!150031 rules!1846)))) e!1052697))))

(declare-fun b!1641370 () Bool)

(declare-fun e!1052695 () Bool)

(declare-fun tp!475721 () Bool)

(assert (=> b!1641370 (= e!1052695 (and e!1052694 tp!475721))))

(assert (=> b!1641073 (= tp!475638 e!1052695)))

(assert (= b!1641371 b!1641372))

(assert (= b!1641370 b!1641371))

(assert (= (and b!1641073 ((_ is Cons!18090) (t!150031 rules!1846))) b!1641370))

(declare-fun m!1982005 () Bool)

(assert (=> b!1641371 m!1982005))

(declare-fun m!1982007 () Bool)

(assert (=> b!1641371 m!1982007))

(declare-fun e!1052698 () Bool)

(assert (=> b!1641062 (= tp!475630 e!1052698)))

(declare-fun b!1641374 () Bool)

(declare-fun tp!475729 () Bool)

(declare-fun tp!475728 () Bool)

(assert (=> b!1641374 (= e!1052698 (and tp!475729 tp!475728))))

(declare-fun b!1641373 () Bool)

(assert (=> b!1641373 (= e!1052698 tp_is_empty!7329)))

(declare-fun b!1641376 () Bool)

(declare-fun tp!475727 () Bool)

(declare-fun tp!475726 () Bool)

(assert (=> b!1641376 (= e!1052698 (and tp!475727 tp!475726))))

(declare-fun b!1641375 () Bool)

(declare-fun tp!475725 () Bool)

(assert (=> b!1641375 (= e!1052698 tp!475725)))

(assert (= (and b!1641062 ((_ is ElementMatch!4517) (regex!3189 (rule!5037 (h!23490 tokens!457))))) b!1641373))

(assert (= (and b!1641062 ((_ is Concat!7797) (regex!3189 (rule!5037 (h!23490 tokens!457))))) b!1641374))

(assert (= (and b!1641062 ((_ is Star!4517) (regex!3189 (rule!5037 (h!23490 tokens!457))))) b!1641375))

(assert (= (and b!1641062 ((_ is Union!4517) (regex!3189 (rule!5037 (h!23490 tokens!457))))) b!1641376))

(declare-fun b!1641390 () Bool)

(declare-fun b_free!44491 () Bool)

(declare-fun b_next!45195 () Bool)

(assert (=> b!1641390 (= b_free!44491 (not b_next!45195))))

(declare-fun tp!475743 () Bool)

(declare-fun b_and!116385 () Bool)

(assert (=> b!1641390 (= tp!475743 b_and!116385)))

(declare-fun b_free!44493 () Bool)

(declare-fun b_next!45197 () Bool)

(assert (=> b!1641390 (= b_free!44493 (not b_next!45197))))

(declare-fun t!150052 () Bool)

(declare-fun tb!93957 () Bool)

(assert (=> (and b!1641390 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) t!150052) tb!93957))

(declare-fun result!113448 () Bool)

(assert (= result!113448 result!113432))

(assert (=> d!494025 t!150052))

(assert (=> b!1641341 t!150052))

(declare-fun b_and!116387 () Bool)

(declare-fun tp!475744 () Bool)

(assert (=> b!1641390 (= tp!475744 (and (=> t!150052 result!113448) b_and!116387))))

(declare-fun e!1052711 () Bool)

(declare-fun b!1641388 () Bool)

(declare-fun e!1052716 () Bool)

(declare-fun tp!475742 () Bool)

(assert (=> b!1641388 (= e!1052716 (and (inv!21 (value!100559 (h!23490 (t!150030 tokens!457)))) e!1052711 tp!475742))))

(declare-fun b!1641387 () Bool)

(declare-fun e!1052713 () Bool)

(declare-fun tp!475740 () Bool)

(assert (=> b!1641387 (= e!1052713 (and (inv!23439 (h!23490 (t!150030 tokens!457))) e!1052716 tp!475740))))

(declare-fun e!1052712 () Bool)

(assert (=> b!1641390 (= e!1052712 (and tp!475743 tp!475744))))

(assert (=> b!1641064 (= tp!475637 e!1052713)))

(declare-fun b!1641389 () Bool)

(declare-fun tp!475741 () Bool)

(assert (=> b!1641389 (= e!1052711 (and tp!475741 (inv!23435 (tag!3469 (rule!5037 (h!23490 (t!150030 tokens!457))))) (inv!23438 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) e!1052712))))

(assert (= b!1641389 b!1641390))

(assert (= b!1641388 b!1641389))

(assert (= b!1641387 b!1641388))

(assert (= (and b!1641064 ((_ is Cons!18089) (t!150030 tokens!457))) b!1641387))

(declare-fun m!1982009 () Bool)

(assert (=> b!1641388 m!1982009))

(declare-fun m!1982011 () Bool)

(assert (=> b!1641387 m!1982011))

(declare-fun m!1982013 () Bool)

(assert (=> b!1641389 m!1982013))

(declare-fun m!1982015 () Bool)

(assert (=> b!1641389 m!1982015))

(declare-fun b_lambda!51577 () Bool)

(assert (= b_lambda!51573 (or (and b!1641065 b_free!44473) (and b!1641063 b_free!44477 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))))) (and b!1641372 b_free!44489 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))))) (and b!1641390 b_free!44493 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))))) b_lambda!51577)))

(declare-fun b_lambda!51579 () Bool)

(assert (= b_lambda!51575 (or (and b!1641065 b_free!44473) (and b!1641063 b_free!44477 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))))) (and b!1641372 b_free!44489 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))))) (and b!1641390 b_free!44493 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))))) b_lambda!51579)))

(check-sat (not b!1641179) (not b!1641297) (not d!494033) (not b!1641309) b_and!116353 (not b!1641328) (not b!1641371) (not b!1641359) (not b!1641387) (not d!494051) (not b!1641151) (not d!494039) (not b!1641312) (not b!1641342) (not b!1641333) (not b!1641361) (not d!494043) (not d!494035) (not b!1641336) (not b!1641341) (not b!1641097) (not b!1641308) (not b_next!45197) b_and!116377 (not b_lambda!51579) (not b!1641311) (not b!1641180) (not d!493967) (not b!1641152) (not b_next!45191) (not b_next!45177) (not d!494053) (not d!494007) (not b_next!45195) (not d!494025) b_and!116383 (not b!1641181) (not b_next!45181) (not b!1641376) (not b!1641374) (not b!1641296) (not b!1641347) (not b_next!45179) (not b!1641209) (not d!494029) (not b!1641389) b_and!116381 (not b!1641317) (not b!1641370) (not d!494047) (not d!494055) (not d!494005) (not b!1641184) (not b_next!45193) (not b!1641327) b_and!116349 (not b!1641095) (not b!1641375) (not b!1641360) (not d!494023) (not b!1641388) (not b!1641094) (not tb!93951) b_and!116385 (not d!494049) (not d!494027) (not d!494031) (not d!494017) tp_is_empty!7329 (not b!1641218) (not d!493969) (not b_lambda!51577) (not d!494021) (not d!494003) (not b!1641332) (not b_next!45175) (not d!494045) b_and!116387 b_and!116379 (not b!1641208) (not d!494019))
(check-sat (not b_next!45181) (not b_next!45179) b_and!116381 (not b_next!45193) b_and!116353 b_and!116349 b_and!116385 b_and!116379 b_and!116377 (not b_next!45197) (not b_next!45191) (not b_next!45177) (not b_next!45195) b_and!116383 (not b_next!45175) b_and!116387)
(get-model)

(declare-fun d!494067 () Bool)

(declare-fun charsToInt!0 (List!18157) (_ BitVec 32))

(assert (=> d!494067 (= (inv!16 (value!100559 (h!23490 tokens!457))) (= (charsToInt!0 (text!23400 (value!100559 (h!23490 tokens!457)))) (value!100550 (value!100559 (h!23490 tokens!457)))))))

(declare-fun bs!395693 () Bool)

(assert (= bs!395693 d!494067))

(declare-fun m!1982033 () Bool)

(assert (=> bs!395693 m!1982033))

(assert (=> b!1641094 d!494067))

(declare-fun d!494069 () Bool)

(declare-fun c!266921 () Bool)

(assert (=> d!494069 (= c!266921 ((_ is Node!6026) (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))))))

(declare-fun e!1052726 () Bool)

(assert (=> d!494069 (= (inv!23442 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))) e!1052726)))

(declare-fun b!1641407 () Bool)

(declare-fun inv!23444 (Conc!6026) Bool)

(assert (=> b!1641407 (= e!1052726 (inv!23444 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))))))

(declare-fun b!1641408 () Bool)

(declare-fun e!1052727 () Bool)

(assert (=> b!1641408 (= e!1052726 e!1052727)))

(declare-fun res!735416 () Bool)

(assert (=> b!1641408 (= res!735416 (not ((_ is Leaf!8841) (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))))))))

(assert (=> b!1641408 (=> res!735416 e!1052727)))

(declare-fun b!1641409 () Bool)

(declare-fun inv!23445 (Conc!6026) Bool)

(assert (=> b!1641409 (= e!1052727 (inv!23445 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))))))

(assert (= (and d!494069 c!266921) b!1641407))

(assert (= (and d!494069 (not c!266921)) b!1641408))

(assert (= (and b!1641408 (not res!735416)) b!1641409))

(declare-fun m!1982035 () Bool)

(assert (=> b!1641407 m!1982035))

(declare-fun m!1982037 () Bool)

(assert (=> b!1641409 m!1982037))

(assert (=> b!1641317 d!494069))

(declare-fun b!1641418 () Bool)

(declare-fun e!1052732 () List!18159)

(assert (=> b!1641418 (= e!1052732 Nil!18089)))

(declare-fun b!1641419 () Bool)

(declare-fun e!1052733 () List!18159)

(assert (=> b!1641419 (= e!1052732 e!1052733)))

(declare-fun c!266927 () Bool)

(assert (=> b!1641419 (= c!266927 ((_ is Leaf!8842) (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457))))))))

(declare-fun d!494071 () Bool)

(declare-fun c!266926 () Bool)

(assert (=> d!494071 (= c!266926 ((_ is Empty!6027) (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494071 (= (list!7153 (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457))))) e!1052732)))

(declare-fun b!1641421 () Bool)

(declare-fun ++!4863 (List!18159 List!18159) List!18159)

(assert (=> b!1641421 (= e!1052733 (++!4863 (list!7153 (left!14503 (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457)))))) (list!7153 (right!14833 (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457))))))))))

(declare-fun b!1641420 () Bool)

(declare-fun list!7155 (IArray!12059) List!18159)

(assert (=> b!1641420 (= e!1052733 (list!7155 (xs!8863 (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457)))))))))

(assert (= (and d!494071 c!266926) b!1641418))

(assert (= (and d!494071 (not c!266926)) b!1641419))

(assert (= (and b!1641419 c!266927) b!1641420))

(assert (= (and b!1641419 (not c!266927)) b!1641421))

(declare-fun m!1982039 () Bool)

(assert (=> b!1641421 m!1982039))

(declare-fun m!1982041 () Bool)

(assert (=> b!1641421 m!1982041))

(assert (=> b!1641421 m!1982039))

(assert (=> b!1641421 m!1982041))

(declare-fun m!1982043 () Bool)

(assert (=> b!1641421 m!1982043))

(declare-fun m!1982045 () Bool)

(assert (=> b!1641420 m!1982045))

(assert (=> d!494045 d!494071))

(declare-fun d!494073 () Bool)

(assert (=> d!494073 (= (inv!23435 (tag!3469 (rule!5037 (h!23490 (t!150030 tokens!457))))) (= (mod (str.len (value!100558 (tag!3469 (rule!5037 (h!23490 (t!150030 tokens!457)))))) 2) 0))))

(assert (=> b!1641389 d!494073))

(declare-fun d!494075 () Bool)

(declare-fun res!735417 () Bool)

(declare-fun e!1052734 () Bool)

(assert (=> d!494075 (=> (not res!735417) (not e!1052734))))

(assert (=> d!494075 (= res!735417 (semiInverseModEq!1224 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toValue!4624 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))))))

(assert (=> d!494075 (= (inv!23438 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) e!1052734)))

(declare-fun b!1641422 () Bool)

(assert (=> b!1641422 (= e!1052734 (equivClasses!1165 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toValue!4624 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))))))

(assert (= (and d!494075 res!735417) b!1641422))

(declare-fun m!1982047 () Bool)

(assert (=> d!494075 m!1982047))

(declare-fun m!1982049 () Bool)

(assert (=> b!1641422 m!1982049))

(assert (=> b!1641389 d!494075))

(declare-fun d!494077 () Bool)

(assert (=> d!494077 (= (inv!23435 (tag!3469 (h!23491 (t!150031 rules!1846)))) (= (mod (str.len (value!100558 (tag!3469 (h!23491 (t!150031 rules!1846))))) 2) 0))))

(assert (=> b!1641371 d!494077))

(declare-fun d!494079 () Bool)

(declare-fun res!735418 () Bool)

(declare-fun e!1052735 () Bool)

(assert (=> d!494079 (=> (not res!735418) (not e!1052735))))

(assert (=> d!494079 (= res!735418 (semiInverseModEq!1224 (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toValue!4624 (transformation!3189 (h!23491 (t!150031 rules!1846))))))))

(assert (=> d!494079 (= (inv!23438 (transformation!3189 (h!23491 (t!150031 rules!1846)))) e!1052735)))

(declare-fun b!1641423 () Bool)

(assert (=> b!1641423 (= e!1052735 (equivClasses!1165 (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toValue!4624 (transformation!3189 (h!23491 (t!150031 rules!1846))))))))

(assert (= (and d!494079 res!735418) b!1641423))

(declare-fun m!1982051 () Bool)

(assert (=> d!494079 m!1982051))

(declare-fun m!1982053 () Bool)

(assert (=> b!1641423 m!1982053))

(assert (=> b!1641371 d!494079))

(declare-fun d!494081 () Bool)

(declare-fun res!735419 () Bool)

(declare-fun e!1052736 () Bool)

(assert (=> d!494081 (=> (not res!735419) (not e!1052736))))

(assert (=> d!494081 (= res!735419 (not (isEmpty!11119 (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494081 (= (inv!23439 (h!23490 (t!150030 tokens!457))) e!1052736)))

(declare-fun b!1641424 () Bool)

(declare-fun res!735420 () Bool)

(assert (=> b!1641424 (=> (not res!735420) (not e!1052736))))

(assert (=> b!1641424 (= res!735420 (= (originalCharacters!4003 (h!23490 (t!150030 tokens!457))) (list!7150 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (value!100559 (h!23490 (t!150030 tokens!457)))))))))

(declare-fun b!1641425 () Bool)

(assert (=> b!1641425 (= e!1052736 (= (size!14404 (h!23490 (t!150030 tokens!457))) (size!14408 (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))))))

(assert (= (and d!494081 res!735419) b!1641424))

(assert (= (and b!1641424 res!735420) b!1641425))

(declare-fun b_lambda!51581 () Bool)

(assert (=> (not b_lambda!51581) (not b!1641424)))

(declare-fun t!150056 () Bool)

(declare-fun tb!93959 () Bool)

(assert (=> (and b!1641065 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) t!150056) tb!93959))

(declare-fun b!1641426 () Bool)

(declare-fun e!1052737 () Bool)

(declare-fun tp!475745 () Bool)

(assert (=> b!1641426 (= e!1052737 (and (inv!23442 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (value!100559 (h!23490 (t!150030 tokens!457)))))) tp!475745))))

(declare-fun result!113450 () Bool)

(assert (=> tb!93959 (= result!113450 (and (inv!23443 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (value!100559 (h!23490 (t!150030 tokens!457))))) e!1052737))))

(assert (= tb!93959 b!1641426))

(declare-fun m!1982055 () Bool)

(assert (=> b!1641426 m!1982055))

(declare-fun m!1982057 () Bool)

(assert (=> tb!93959 m!1982057))

(assert (=> b!1641424 t!150056))

(declare-fun b_and!116389 () Bool)

(assert (= b_and!116377 (and (=> t!150056 result!113450) b_and!116389)))

(declare-fun t!150058 () Bool)

(declare-fun tb!93961 () Bool)

(assert (=> (and b!1641063 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) t!150058) tb!93961))

(declare-fun result!113452 () Bool)

(assert (= result!113452 result!113450))

(assert (=> b!1641424 t!150058))

(declare-fun b_and!116391 () Bool)

(assert (= b_and!116379 (and (=> t!150058 result!113452) b_and!116391)))

(declare-fun tb!93963 () Bool)

(declare-fun t!150060 () Bool)

(assert (=> (and b!1641372 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) t!150060) tb!93963))

(declare-fun result!113454 () Bool)

(assert (= result!113454 result!113450))

(assert (=> b!1641424 t!150060))

(declare-fun b_and!116393 () Bool)

(assert (= b_and!116383 (and (=> t!150060 result!113454) b_and!116393)))

(declare-fun t!150062 () Bool)

(declare-fun tb!93965 () Bool)

(assert (=> (and b!1641390 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) t!150062) tb!93965))

(declare-fun result!113456 () Bool)

(assert (= result!113456 result!113450))

(assert (=> b!1641424 t!150062))

(declare-fun b_and!116395 () Bool)

(assert (= b_and!116387 (and (=> t!150062 result!113456) b_and!116395)))

(declare-fun m!1982059 () Bool)

(assert (=> d!494081 m!1982059))

(declare-fun m!1982061 () Bool)

(assert (=> b!1641424 m!1982061))

(assert (=> b!1641424 m!1982061))

(declare-fun m!1982063 () Bool)

(assert (=> b!1641424 m!1982063))

(declare-fun m!1982065 () Bool)

(assert (=> b!1641425 m!1982065))

(assert (=> b!1641387 d!494081))

(assert (=> d!493969 d!493965))

(declare-fun e!1052740 () Bool)

(declare-fun b!1641427 () Bool)

(declare-fun lt!603464 () tuple2!17738)

(assert (=> b!1641427 (= e!1052740 (= (list!7150 (_2!10271 lt!603464)) (_2!10275 (lexList!853 thiss!17113 rules!1846 (list!7150 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))))))))))

(declare-fun d!494083 () Bool)

(assert (=> d!494083 e!1052740))

(declare-fun res!735423 () Bool)

(assert (=> d!494083 (=> (not res!735423) (not e!1052740))))

(declare-fun e!1052739 () Bool)

(assert (=> d!494083 (= res!735423 e!1052739)))

(declare-fun c!266928 () Bool)

(assert (=> d!494083 (= c!266928 (> (size!14410 (_1!10271 lt!603464)) 0))))

(assert (=> d!494083 (= lt!603464 (lexTailRecV2!576 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))) (BalanceConc!11997 Empty!6026) (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))) (BalanceConc!11999 Empty!6027)))))

(assert (=> d!494083 (= (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457)))) lt!603464)))

(declare-fun b!1641428 () Bool)

(declare-fun res!735421 () Bool)

(assert (=> b!1641428 (=> (not res!735421) (not e!1052740))))

(assert (=> b!1641428 (= res!735421 (= (list!7149 (_1!10271 lt!603464)) (_1!10275 (lexList!853 thiss!17113 rules!1846 (list!7150 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))))))))))

(declare-fun b!1641429 () Bool)

(assert (=> b!1641429 (= e!1052739 (= (_2!10271 lt!603464) (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457)))))))

(declare-fun b!1641430 () Bool)

(declare-fun e!1052738 () Bool)

(assert (=> b!1641430 (= e!1052738 (not (isEmpty!11121 (_1!10271 lt!603464))))))

(declare-fun b!1641431 () Bool)

(assert (=> b!1641431 (= e!1052739 e!1052738)))

(declare-fun res!735422 () Bool)

(assert (=> b!1641431 (= res!735422 (< (size!14409 (_2!10271 lt!603464)) (size!14409 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))))))))

(assert (=> b!1641431 (=> (not res!735422) (not e!1052738))))

(assert (= (and d!494083 c!266928) b!1641431))

(assert (= (and d!494083 (not c!266928)) b!1641429))

(assert (= (and b!1641431 res!735422) b!1641430))

(assert (= (and d!494083 res!735423) b!1641428))

(assert (= (and b!1641428 res!735421) b!1641427))

(declare-fun m!1982067 () Bool)

(assert (=> b!1641427 m!1982067))

(assert (=> b!1641427 m!1981719))

(declare-fun m!1982069 () Bool)

(assert (=> b!1641427 m!1982069))

(assert (=> b!1641427 m!1982069))

(declare-fun m!1982071 () Bool)

(assert (=> b!1641427 m!1982071))

(declare-fun m!1982073 () Bool)

(assert (=> b!1641431 m!1982073))

(assert (=> b!1641431 m!1981719))

(declare-fun m!1982075 () Bool)

(assert (=> b!1641431 m!1982075))

(declare-fun m!1982077 () Bool)

(assert (=> d!494083 m!1982077))

(assert (=> d!494083 m!1981719))

(assert (=> d!494083 m!1981719))

(declare-fun m!1982079 () Bool)

(assert (=> d!494083 m!1982079))

(declare-fun m!1982081 () Bool)

(assert (=> b!1641428 m!1982081))

(assert (=> b!1641428 m!1981719))

(assert (=> b!1641428 m!1982069))

(assert (=> b!1641428 m!1982069))

(assert (=> b!1641428 m!1982071))

(declare-fun m!1982083 () Bool)

(assert (=> b!1641430 m!1982083))

(assert (=> d!493969 d!494083))

(declare-fun d!494085 () Bool)

(declare-fun lt!603465 () BalanceConc!11996)

(assert (=> d!494085 (= (list!7150 lt!603465) (printList!933 thiss!17113 (list!7149 (seqFromList!2122 (t!150030 tokens!457)))))))

(assert (=> d!494085 (= lt!603465 (printTailRec!871 thiss!17113 (seqFromList!2122 (t!150030 tokens!457)) 0 (BalanceConc!11997 Empty!6026)))))

(assert (=> d!494085 (= (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))) lt!603465)))

(declare-fun bs!395694 () Bool)

(assert (= bs!395694 d!494085))

(declare-fun m!1982085 () Bool)

(assert (=> bs!395694 m!1982085))

(assert (=> bs!395694 m!1981495))

(declare-fun m!1982087 () Bool)

(assert (=> bs!395694 m!1982087))

(assert (=> bs!395694 m!1982087))

(declare-fun m!1982089 () Bool)

(assert (=> bs!395694 m!1982089))

(assert (=> bs!395694 m!1981495))

(declare-fun m!1982091 () Bool)

(assert (=> bs!395694 m!1982091))

(assert (=> d!493969 d!494085))

(assert (=> d!493969 d!494027))

(declare-fun d!494087 () Bool)

(assert (=> d!494087 (= (list!7149 (_1!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457)))))) (list!7153 (c!266881 (_1!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))))))))))

(declare-fun bs!395695 () Bool)

(assert (= bs!395695 d!494087))

(declare-fun m!1982093 () Bool)

(assert (=> bs!395695 m!1982093))

(assert (=> d!493969 d!494087))

(declare-fun b!1641442 () Bool)

(declare-fun e!1052746 () List!18158)

(declare-fun list!7156 (IArray!12057) List!18158)

(assert (=> b!1641442 (= e!1052746 (list!7156 (xs!8862 (c!266879 lt!603203))))))

(declare-fun b!1641441 () Bool)

(declare-fun e!1052745 () List!18158)

(assert (=> b!1641441 (= e!1052745 e!1052746)))

(declare-fun c!266934 () Bool)

(assert (=> b!1641441 (= c!266934 ((_ is Leaf!8841) (c!266879 lt!603203)))))

(declare-fun b!1641443 () Bool)

(assert (=> b!1641443 (= e!1052746 (++!4860 (list!7154 (left!14502 (c!266879 lt!603203))) (list!7154 (right!14832 (c!266879 lt!603203)))))))

(declare-fun b!1641440 () Bool)

(assert (=> b!1641440 (= e!1052745 Nil!18088)))

(declare-fun d!494089 () Bool)

(declare-fun c!266933 () Bool)

(assert (=> d!494089 (= c!266933 ((_ is Empty!6026) (c!266879 lt!603203)))))

(assert (=> d!494089 (= (list!7154 (c!266879 lt!603203)) e!1052745)))

(assert (= (and d!494089 c!266933) b!1641440))

(assert (= (and d!494089 (not c!266933)) b!1641441))

(assert (= (and b!1641441 c!266934) b!1641442))

(assert (= (and b!1641441 (not c!266934)) b!1641443))

(declare-fun m!1982095 () Bool)

(assert (=> b!1641442 m!1982095))

(declare-fun m!1982097 () Bool)

(assert (=> b!1641443 m!1982097))

(declare-fun m!1982099 () Bool)

(assert (=> b!1641443 m!1982099))

(assert (=> b!1641443 m!1982097))

(assert (=> b!1641443 m!1982099))

(declare-fun m!1982101 () Bool)

(assert (=> b!1641443 m!1982101))

(assert (=> d!494033 d!494089))

(declare-fun d!494091 () Bool)

(declare-fun lt!603468 () Int)

(assert (=> d!494091 (>= lt!603468 0)))

(declare-fun e!1052749 () Int)

(assert (=> d!494091 (= lt!603468 e!1052749)))

(declare-fun c!266937 () Bool)

(assert (=> d!494091 (= c!266937 ((_ is Nil!18088) lt!603454))))

(assert (=> d!494091 (= (size!14408 lt!603454) lt!603468)))

(declare-fun b!1641448 () Bool)

(assert (=> b!1641448 (= e!1052749 0)))

(declare-fun b!1641449 () Bool)

(assert (=> b!1641449 (= e!1052749 (+ 1 (size!14408 (t!150029 lt!603454))))))

(assert (= (and d!494091 c!266937) b!1641448))

(assert (= (and d!494091 (not c!266937)) b!1641449))

(declare-fun m!1982103 () Bool)

(assert (=> b!1641449 m!1982103))

(assert (=> b!1641328 d!494091))

(declare-fun d!494093 () Bool)

(declare-fun lt!603469 () Int)

(assert (=> d!494093 (>= lt!603469 0)))

(declare-fun e!1052750 () Int)

(assert (=> d!494093 (= lt!603469 e!1052750)))

(declare-fun c!266938 () Bool)

(assert (=> d!494093 (= c!266938 ((_ is Nil!18088) lt!603204))))

(assert (=> d!494093 (= (size!14408 lt!603204) lt!603469)))

(declare-fun b!1641450 () Bool)

(assert (=> b!1641450 (= e!1052750 0)))

(declare-fun b!1641451 () Bool)

(assert (=> b!1641451 (= e!1052750 (+ 1 (size!14408 (t!150029 lt!603204))))))

(assert (= (and d!494093 c!266938) b!1641450))

(assert (= (and d!494093 (not c!266938)) b!1641451))

(declare-fun m!1982105 () Bool)

(assert (=> b!1641451 m!1982105))

(assert (=> b!1641328 d!494093))

(declare-fun d!494095 () Bool)

(declare-fun lt!603470 () Int)

(assert (=> d!494095 (>= lt!603470 0)))

(declare-fun e!1052751 () Int)

(assert (=> d!494095 (= lt!603470 e!1052751)))

(declare-fun c!266939 () Bool)

(assert (=> d!494095 (= c!266939 ((_ is Nil!18088) lt!603205))))

(assert (=> d!494095 (= (size!14408 lt!603205) lt!603470)))

(declare-fun b!1641452 () Bool)

(assert (=> b!1641452 (= e!1052751 0)))

(declare-fun b!1641453 () Bool)

(assert (=> b!1641453 (= e!1052751 (+ 1 (size!14408 (t!150029 lt!603205))))))

(assert (= (and d!494095 c!266939) b!1641452))

(assert (= (and d!494095 (not c!266939)) b!1641453))

(declare-fun m!1982107 () Bool)

(assert (=> b!1641453 m!1982107))

(assert (=> b!1641328 d!494095))

(assert (=> d!494051 d!494053))

(declare-fun d!494097 () Bool)

(assert (=> d!494097 (= (list!7149 (_1!10271 lt!603201)) (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494097 true))

(declare-fun _$1!10031 () Unit!29726)

(assert (=> d!494097 (= (choose!9848 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)) (_1!10271 lt!603201)) _$1!10031)))

(declare-fun bs!395696 () Bool)

(assert (= bs!395696 d!494097))

(assert (=> bs!395696 m!1981529))

(assert (=> bs!395696 m!1981515))

(assert (=> bs!395696 m!1981515))

(assert (=> bs!395696 m!1981517))

(assert (=> bs!395696 m!1981517))

(assert (=> bs!395696 m!1981519))

(assert (=> d!494051 d!494097))

(assert (=> d!494051 d!494045))

(declare-fun d!494099 () Bool)

(assert (=> d!494099 (= (list!7149 (seqFromList!2122 ($colon$colon!351 (t!150030 (t!150030 tokens!457)) (h!23490 (t!150030 tokens!457))))) (list!7153 (c!266881 (seqFromList!2122 ($colon$colon!351 (t!150030 (t!150030 tokens!457)) (h!23490 (t!150030 tokens!457)))))))))

(declare-fun bs!395697 () Bool)

(assert (= bs!395697 d!494099))

(declare-fun m!1982109 () Bool)

(assert (=> bs!395697 m!1982109))

(assert (=> d!494051 d!494099))

(assert (=> d!494051 d!494049))

(declare-fun d!494101 () Bool)

(assert (=> d!494101 (= ($colon$colon!351 (t!150030 (t!150030 tokens!457)) (h!23490 (t!150030 tokens!457))) (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))))

(assert (=> d!494051 d!494101))

(declare-fun d!494103 () Bool)

(assert (=> d!494103 (= (seqFromList!2122 ($colon$colon!351 (t!150030 (t!150030 tokens!457)) (h!23490 (t!150030 tokens!457)))) (fromListB!937 ($colon$colon!351 (t!150030 (t!150030 tokens!457)) (h!23490 (t!150030 tokens!457)))))))

(declare-fun bs!395698 () Bool)

(assert (= bs!395698 d!494103))

(assert (=> bs!395698 m!1981989))

(declare-fun m!1982111 () Bool)

(assert (=> bs!395698 m!1982111))

(assert (=> d!494051 d!494103))

(assert (=> d!494051 d!493967))

(declare-fun d!494105 () Bool)

(assert (=> d!494105 (= (list!7149 lt!603460) (list!7153 (c!266881 lt!603460)))))

(declare-fun bs!395699 () Bool)

(assert (= bs!395699 d!494105))

(declare-fun m!1982113 () Bool)

(assert (=> bs!395699 m!1982113))

(assert (=> b!1641336 d!494105))

(declare-fun d!494107 () Bool)

(assert (=> d!494107 (= (list!7149 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (list!7153 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457))))))))

(declare-fun bs!395700 () Bool)

(assert (= bs!395700 d!494107))

(declare-fun m!1982115 () Bool)

(assert (=> bs!395700 m!1982115))

(assert (=> b!1641336 d!494107))

(declare-fun d!494109 () Bool)

(declare-fun lt!603473 () Bool)

(assert (=> d!494109 (= lt!603473 (isEmpty!11119 (list!7150 (_2!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))))))))))

(declare-fun isEmpty!11122 (Conc!6026) Bool)

(assert (=> d!494109 (= lt!603473 (isEmpty!11122 (c!266879 (_2!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457))))))))))

(assert (=> d!494109 (= (isEmpty!11120 (_2!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 tokens!457)))))) lt!603473)))

(declare-fun bs!395701 () Bool)

(assert (= bs!395701 d!494109))

(declare-fun m!1982117 () Bool)

(assert (=> bs!395701 m!1982117))

(assert (=> bs!395701 m!1982117))

(declare-fun m!1982119 () Bool)

(assert (=> bs!395701 m!1982119))

(declare-fun m!1982121 () Bool)

(assert (=> bs!395701 m!1982121))

(assert (=> b!1641152 d!494109))

(assert (=> b!1641152 d!494083))

(assert (=> b!1641152 d!494085))

(assert (=> b!1641152 d!494027))

(declare-fun d!494111 () Bool)

(assert (=> d!494111 (= (list!7150 lt!603451) (list!7154 (c!266879 lt!603451)))))

(declare-fun bs!395702 () Bool)

(assert (= bs!395702 d!494111))

(declare-fun m!1982123 () Bool)

(assert (=> bs!395702 m!1982123))

(assert (=> d!494025 d!494111))

(declare-fun d!494113 () Bool)

(assert (=> d!494113 true))

(declare-fun lambda!67499 () Int)

(declare-fun order!10745 () Int)

(declare-fun dynLambda!8072 (Int Int) Int)

(assert (=> d!494113 (< (dynLambda!8070 order!10737 (toChars!4483 (transformation!3189 (h!23491 rules!1846)))) (dynLambda!8072 order!10745 lambda!67499))))

(assert (=> d!494113 true))

(assert (=> d!494113 (< (dynLambda!8068 order!10733 (toValue!4624 (transformation!3189 (h!23491 rules!1846)))) (dynLambda!8072 order!10745 lambda!67499))))

(declare-fun Forall!647 (Int) Bool)

(assert (=> d!494113 (= (semiInverseModEq!1224 (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toValue!4624 (transformation!3189 (h!23491 rules!1846)))) (Forall!647 lambda!67499))))

(declare-fun bs!395703 () Bool)

(assert (= bs!395703 d!494113))

(declare-fun m!1982125 () Bool)

(assert (=> bs!395703 m!1982125))

(assert (=> d!494039 d!494113))

(declare-fun bs!395704 () Bool)

(declare-fun d!494115 () Bool)

(assert (= bs!395704 (and d!494115 d!494113)))

(declare-fun lambda!67500 () Int)

(assert (=> bs!395704 (= (and (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toChars!4483 (transformation!3189 (h!23491 rules!1846)))) (= (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toValue!4624 (transformation!3189 (h!23491 rules!1846))))) (= lambda!67500 lambda!67499))))

(assert (=> d!494115 true))

(assert (=> d!494115 (< (dynLambda!8070 order!10737 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) (dynLambda!8072 order!10745 lambda!67500))))

(assert (=> d!494115 true))

(assert (=> d!494115 (< (dynLambda!8068 order!10733 (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) (dynLambda!8072 order!10745 lambda!67500))))

(assert (=> d!494115 (= (semiInverseModEq!1224 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) (Forall!647 lambda!67500))))

(declare-fun bs!395705 () Bool)

(assert (= bs!395705 d!494115))

(declare-fun m!1982127 () Bool)

(assert (=> bs!395705 m!1982127))

(assert (=> d!494043 d!494115))

(declare-fun d!494117 () Bool)

(declare-fun lt!603476 () Bool)

(declare-fun isEmpty!11123 (List!18159) Bool)

(assert (=> d!494117 (= lt!603476 (isEmpty!11123 (list!7149 (_1!10271 lt!603447))))))

(declare-fun isEmpty!11124 (Conc!6027) Bool)

(assert (=> d!494117 (= lt!603476 (isEmpty!11124 (c!266881 (_1!10271 lt!603447))))))

(assert (=> d!494117 (= (isEmpty!11121 (_1!10271 lt!603447)) lt!603476)))

(declare-fun bs!395706 () Bool)

(assert (= bs!395706 d!494117))

(assert (=> bs!395706 m!1981929))

(assert (=> bs!395706 m!1981929))

(declare-fun m!1982129 () Bool)

(assert (=> bs!395706 m!1982129))

(declare-fun m!1982131 () Bool)

(assert (=> bs!395706 m!1982131))

(assert (=> b!1641311 d!494117))

(declare-fun b!1641461 () Bool)

(declare-fun e!1052754 () Bool)

(assert (=> b!1641461 (= e!1052754 (>= (size!14408 (++!4860 lt!603204 lt!603205)) (size!14408 lt!603204)))))

(declare-fun b!1641458 () Bool)

(declare-fun e!1052752 () Bool)

(declare-fun e!1052753 () Bool)

(assert (=> b!1641458 (= e!1052752 e!1052753)))

(declare-fun res!735427 () Bool)

(assert (=> b!1641458 (=> (not res!735427) (not e!1052753))))

(assert (=> b!1641458 (= res!735427 (not ((_ is Nil!18088) (++!4860 lt!603204 lt!603205))))))

(declare-fun b!1641459 () Bool)

(declare-fun res!735426 () Bool)

(assert (=> b!1641459 (=> (not res!735426) (not e!1052753))))

(assert (=> b!1641459 (= res!735426 (= (head!3572 lt!603204) (head!3572 (++!4860 lt!603204 lt!603205))))))

(declare-fun d!494119 () Bool)

(assert (=> d!494119 e!1052754))

(declare-fun res!735424 () Bool)

(assert (=> d!494119 (=> res!735424 e!1052754)))

(declare-fun lt!603477 () Bool)

(assert (=> d!494119 (= res!735424 (not lt!603477))))

(assert (=> d!494119 (= lt!603477 e!1052752)))

(declare-fun res!735425 () Bool)

(assert (=> d!494119 (=> res!735425 e!1052752)))

(assert (=> d!494119 (= res!735425 ((_ is Nil!18088) lt!603204))))

(assert (=> d!494119 (= (isPrefix!1447 lt!603204 (++!4860 lt!603204 lt!603205)) lt!603477)))

(declare-fun b!1641460 () Bool)

(assert (=> b!1641460 (= e!1052753 (isPrefix!1447 (tail!2408 lt!603204) (tail!2408 (++!4860 lt!603204 lt!603205))))))

(assert (= (and d!494119 (not res!735425)) b!1641458))

(assert (= (and b!1641458 res!735427) b!1641459))

(assert (= (and b!1641459 res!735426) b!1641460))

(assert (= (and d!494119 (not res!735424)) b!1641461))

(assert (=> b!1641461 m!1981497))

(declare-fun m!1982133 () Bool)

(assert (=> b!1641461 m!1982133))

(assert (=> b!1641461 m!1981831))

(assert (=> b!1641459 m!1981833))

(assert (=> b!1641459 m!1981497))

(declare-fun m!1982135 () Bool)

(assert (=> b!1641459 m!1982135))

(assert (=> b!1641460 m!1981837))

(assert (=> b!1641460 m!1981497))

(declare-fun m!1982137 () Bool)

(assert (=> b!1641460 m!1982137))

(assert (=> b!1641460 m!1981837))

(assert (=> b!1641460 m!1982137))

(declare-fun m!1982139 () Bool)

(assert (=> b!1641460 m!1982139))

(assert (=> d!494003 d!494119))

(assert (=> d!494003 d!494029))

(declare-fun d!494121 () Bool)

(assert (=> d!494121 (isPrefix!1447 lt!603204 (++!4860 lt!603204 lt!603205))))

(assert (=> d!494121 true))

(declare-fun _$46!1094 () Unit!29726)

(assert (=> d!494121 (= (choose!9847 lt!603204 lt!603205) _$46!1094)))

(declare-fun bs!395707 () Bool)

(assert (= bs!395707 d!494121))

(assert (=> bs!395707 m!1981497))

(assert (=> bs!395707 m!1981497))

(assert (=> bs!395707 m!1981843))

(assert (=> d!494003 d!494121))

(declare-fun b!1641464 () Bool)

(declare-fun e!1052756 () List!18158)

(assert (=> b!1641464 (= e!1052756 (list!7156 (xs!8862 (c!266879 (charsOf!1838 (h!23490 tokens!457))))))))

(declare-fun b!1641463 () Bool)

(declare-fun e!1052755 () List!18158)

(assert (=> b!1641463 (= e!1052755 e!1052756)))

(declare-fun c!266941 () Bool)

(assert (=> b!1641463 (= c!266941 ((_ is Leaf!8841) (c!266879 (charsOf!1838 (h!23490 tokens!457)))))))

(declare-fun b!1641465 () Bool)

(assert (=> b!1641465 (= e!1052756 (++!4860 (list!7154 (left!14502 (c!266879 (charsOf!1838 (h!23490 tokens!457))))) (list!7154 (right!14832 (c!266879 (charsOf!1838 (h!23490 tokens!457)))))))))

(declare-fun b!1641462 () Bool)

(assert (=> b!1641462 (= e!1052755 Nil!18088)))

(declare-fun d!494123 () Bool)

(declare-fun c!266940 () Bool)

(assert (=> d!494123 (= c!266940 ((_ is Empty!6026) (c!266879 (charsOf!1838 (h!23490 tokens!457)))))))

(assert (=> d!494123 (= (list!7154 (c!266879 (charsOf!1838 (h!23490 tokens!457)))) e!1052755)))

(assert (= (and d!494123 c!266940) b!1641462))

(assert (= (and d!494123 (not c!266940)) b!1641463))

(assert (= (and b!1641463 c!266941) b!1641464))

(assert (= (and b!1641463 (not c!266941)) b!1641465))

(declare-fun m!1982141 () Bool)

(assert (=> b!1641464 m!1982141))

(declare-fun m!1982143 () Bool)

(assert (=> b!1641465 m!1982143))

(declare-fun m!1982145 () Bool)

(assert (=> b!1641465 m!1982145))

(assert (=> b!1641465 m!1982143))

(assert (=> b!1641465 m!1982145))

(declare-fun m!1982147 () Bool)

(assert (=> b!1641465 m!1982147))

(assert (=> d!494031 d!494123))

(declare-fun d!494125 () Bool)

(assert (=> d!494125 (= (list!7149 (_1!10271 lt!603447)) (list!7153 (c!266881 (_1!10271 lt!603447))))))

(declare-fun bs!395708 () Bool)

(assert (= bs!395708 d!494125))

(declare-fun m!1982149 () Bool)

(assert (=> bs!395708 m!1982149))

(assert (=> b!1641309 d!494125))

(declare-fun b!1641476 () Bool)

(declare-fun e!1052764 () Bool)

(declare-fun lt!603486 () tuple2!17746)

(assert (=> b!1641476 (= e!1052764 (not (isEmpty!11123 (_1!10275 lt!603486))))))

(declare-fun b!1641477 () Bool)

(declare-fun e!1052763 () tuple2!17746)

(declare-fun lt!603484 () Option!3418)

(declare-fun lt!603485 () tuple2!17746)

(assert (=> b!1641477 (= e!1052763 (tuple2!17747 (Cons!18089 (_1!10274 (v!24528 lt!603484)) (_1!10275 lt!603485)) (_2!10275 lt!603485)))))

(assert (=> b!1641477 (= lt!603485 (lexList!853 thiss!17113 rules!1846 (_2!10274 (v!24528 lt!603484))))))

(declare-fun b!1641479 () Bool)

(assert (=> b!1641479 (= e!1052763 (tuple2!17747 Nil!18089 (list!7150 lt!603200)))))

(declare-fun b!1641480 () Bool)

(declare-fun e!1052765 () Bool)

(assert (=> b!1641480 (= e!1052765 (= (_2!10275 lt!603486) (list!7150 lt!603200)))))

(declare-fun b!1641478 () Bool)

(assert (=> b!1641478 (= e!1052765 e!1052764)))

(declare-fun res!735430 () Bool)

(assert (=> b!1641478 (= res!735430 (< (size!14408 (_2!10275 lt!603486)) (size!14408 (list!7150 lt!603200))))))

(assert (=> b!1641478 (=> (not res!735430) (not e!1052764))))

(declare-fun d!494127 () Bool)

(assert (=> d!494127 e!1052765))

(declare-fun c!266947 () Bool)

(declare-fun size!14413 (List!18159) Int)

(assert (=> d!494127 (= c!266947 (> (size!14413 (_1!10275 lt!603486)) 0))))

(assert (=> d!494127 (= lt!603486 e!1052763)))

(declare-fun c!266946 () Bool)

(assert (=> d!494127 (= c!266946 ((_ is Some!3417) lt!603484))))

(assert (=> d!494127 (= lt!603484 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 lt!603200)))))

(assert (=> d!494127 (= (lexList!853 thiss!17113 rules!1846 (list!7150 lt!603200)) lt!603486)))

(assert (= (and d!494127 c!266946) b!1641477))

(assert (= (and d!494127 (not c!266946)) b!1641479))

(assert (= (and d!494127 c!266947) b!1641478))

(assert (= (and d!494127 (not c!266947)) b!1641480))

(assert (= (and b!1641478 res!735430) b!1641476))

(declare-fun m!1982151 () Bool)

(assert (=> b!1641476 m!1982151))

(declare-fun m!1982153 () Bool)

(assert (=> b!1641477 m!1982153))

(declare-fun m!1982155 () Bool)

(assert (=> b!1641478 m!1982155))

(assert (=> b!1641478 m!1981503))

(declare-fun m!1982157 () Bool)

(assert (=> b!1641478 m!1982157))

(declare-fun m!1982159 () Bool)

(assert (=> d!494127 m!1982159))

(assert (=> d!494127 m!1981503))

(declare-fun m!1982161 () Bool)

(assert (=> d!494127 m!1982161))

(assert (=> b!1641309 d!494127))

(assert (=> b!1641309 d!494035))

(declare-fun bs!395709 () Bool)

(declare-fun d!494129 () Bool)

(assert (= bs!395709 (and d!494129 d!494007)))

(declare-fun lambda!67501 () Int)

(assert (=> bs!395709 (= lambda!67501 lambda!67493)))

(declare-fun b!1641485 () Bool)

(declare-fun e!1052770 () Bool)

(assert (=> b!1641485 (= e!1052770 true)))

(declare-fun b!1641484 () Bool)

(declare-fun e!1052769 () Bool)

(assert (=> b!1641484 (= e!1052769 e!1052770)))

(declare-fun b!1641483 () Bool)

(declare-fun e!1052768 () Bool)

(assert (=> b!1641483 (= e!1052768 e!1052769)))

(assert (=> d!494129 e!1052768))

(assert (= b!1641484 b!1641485))

(assert (= b!1641483 b!1641484))

(assert (= (and d!494129 ((_ is Cons!18090) rules!1846)) b!1641483))

(assert (=> b!1641485 (< (dynLambda!8068 order!10733 (toValue!4624 (transformation!3189 (h!23491 rules!1846)))) (dynLambda!8069 order!10735 lambda!67501))))

(assert (=> b!1641485 (< (dynLambda!8070 order!10737 (toChars!4483 (transformation!3189 (h!23491 rules!1846)))) (dynLambda!8069 order!10735 lambda!67501))))

(assert (=> d!494129 true))

(declare-fun lt!603487 () Bool)

(assert (=> d!494129 (= lt!603487 (forall!4122 (t!150030 tokens!457) lambda!67501))))

(declare-fun e!1052767 () Bool)

(assert (=> d!494129 (= lt!603487 e!1052767)))

(declare-fun res!735431 () Bool)

(assert (=> d!494129 (=> res!735431 e!1052767)))

(assert (=> d!494129 (= res!735431 (not ((_ is Cons!18089) (t!150030 tokens!457))))))

(assert (=> d!494129 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494129 (= (rulesProduceEachTokenIndividuallyList!1020 thiss!17113 rules!1846 (t!150030 tokens!457)) lt!603487)))

(declare-fun b!1641481 () Bool)

(declare-fun e!1052766 () Bool)

(assert (=> b!1641481 (= e!1052767 e!1052766)))

(declare-fun res!735432 () Bool)

(assert (=> b!1641481 (=> (not res!735432) (not e!1052766))))

(assert (=> b!1641481 (= res!735432 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (t!150030 tokens!457))))))

(declare-fun b!1641482 () Bool)

(assert (=> b!1641482 (= e!1052766 (rulesProduceEachTokenIndividuallyList!1020 thiss!17113 rules!1846 (t!150030 (t!150030 tokens!457))))))

(assert (= (and d!494129 (not res!735431)) b!1641481))

(assert (= (and b!1641481 res!735432) b!1641482))

(declare-fun m!1982163 () Bool)

(assert (=> d!494129 m!1982163))

(assert (=> d!494129 m!1981545))

(assert (=> b!1641481 m!1981899))

(declare-fun m!1982165 () Bool)

(assert (=> b!1641482 m!1982165))

(assert (=> b!1641209 d!494129))

(declare-fun d!494131 () Bool)

(declare-fun lt!603601 () Bool)

(declare-fun e!1052820 () Bool)

(assert (=> d!494131 (= lt!603601 e!1052820)))

(declare-fun res!735474 () Bool)

(assert (=> d!494131 (=> (not res!735474) (not e!1052820))))

(assert (=> d!494131 (= res!735474 (= (list!7149 (_1!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 tokens!457)))))) (list!7149 (singletonSeq!1656 (h!23490 tokens!457)))))))

(declare-fun e!1052819 () Bool)

(assert (=> d!494131 (= lt!603601 e!1052819)))

(declare-fun res!735475 () Bool)

(assert (=> d!494131 (=> (not res!735475) (not e!1052819))))

(declare-fun lt!603600 () tuple2!17738)

(assert (=> d!494131 (= res!735475 (= (size!14410 (_1!10271 lt!603600)) 1))))

(assert (=> d!494131 (= lt!603600 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 tokens!457)))))))

(assert (=> d!494131 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494131 (= (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 tokens!457)) lt!603601)))

(declare-fun b!1641573 () Bool)

(declare-fun res!735476 () Bool)

(assert (=> b!1641573 (=> (not res!735476) (not e!1052819))))

(declare-fun apply!4710 (BalanceConc!11998 Int) Token!5944)

(assert (=> b!1641573 (= res!735476 (= (apply!4710 (_1!10271 lt!603600) 0) (h!23490 tokens!457)))))

(declare-fun b!1641574 () Bool)

(assert (=> b!1641574 (= e!1052819 (isEmpty!11120 (_2!10271 lt!603600)))))

(declare-fun b!1641575 () Bool)

(assert (=> b!1641575 (= e!1052820 (isEmpty!11120 (_2!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 tokens!457)))))))))

(assert (= (and d!494131 res!735475) b!1641573))

(assert (= (and b!1641573 res!735476) b!1641574))

(assert (= (and d!494131 res!735474) b!1641575))

(declare-fun m!1982309 () Bool)

(assert (=> d!494131 m!1982309))

(declare-fun m!1982311 () Bool)

(assert (=> d!494131 m!1982311))

(assert (=> d!494131 m!1982309))

(assert (=> d!494131 m!1982309))

(declare-fun m!1982313 () Bool)

(assert (=> d!494131 m!1982313))

(assert (=> d!494131 m!1982311))

(declare-fun m!1982315 () Bool)

(assert (=> d!494131 m!1982315))

(declare-fun m!1982317 () Bool)

(assert (=> d!494131 m!1982317))

(declare-fun m!1982319 () Bool)

(assert (=> d!494131 m!1982319))

(assert (=> d!494131 m!1981545))

(declare-fun m!1982321 () Bool)

(assert (=> b!1641573 m!1982321))

(declare-fun m!1982323 () Bool)

(assert (=> b!1641574 m!1982323))

(assert (=> b!1641575 m!1982309))

(assert (=> b!1641575 m!1982309))

(assert (=> b!1641575 m!1982311))

(assert (=> b!1641575 m!1982311))

(assert (=> b!1641575 m!1982315))

(declare-fun m!1982325 () Bool)

(assert (=> b!1641575 m!1982325))

(assert (=> b!1641296 d!494131))

(declare-fun d!494147 () Bool)

(declare-fun prefixMatchZipperSequence!594 (Regex!4517 BalanceConc!11996) Bool)

(declare-fun rulesRegex!577 (LexerInterface!2818 List!18160) Regex!4517)

(declare-fun ++!4864 (BalanceConc!11996 BalanceConc!11996) BalanceConc!11996)

(assert (=> d!494147 (= (separableTokensPredicate!760 thiss!17113 (h!23490 tokens!457) (h!23490 (t!150030 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!594 (rulesRegex!577 thiss!17113 rules!1846) (++!4864 (charsOf!1838 (h!23490 tokens!457)) (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 tokens!457))) 0))))))))

(declare-fun bs!395711 () Bool)

(assert (= bs!395711 d!494147))

(assert (=> bs!395711 m!1981493))

(assert (=> bs!395711 m!1981731))

(declare-fun m!1982327 () Bool)

(assert (=> bs!395711 m!1982327))

(declare-fun m!1982329 () Bool)

(assert (=> bs!395711 m!1982329))

(declare-fun m!1982331 () Bool)

(assert (=> bs!395711 m!1982331))

(assert (=> bs!395711 m!1982327))

(assert (=> bs!395711 m!1981493))

(declare-fun m!1982333 () Bool)

(assert (=> bs!395711 m!1982333))

(assert (=> bs!395711 m!1982329))

(declare-fun m!1982335 () Bool)

(assert (=> bs!395711 m!1982335))

(assert (=> bs!395711 m!1982333))

(assert (=> bs!395711 m!1981731))

(assert (=> bs!395711 m!1982335))

(assert (=> b!1641296 d!494147))

(declare-fun d!494149 () Bool)

(declare-fun lt!603604 () Int)

(assert (=> d!494149 (= lt!603604 (size!14408 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun size!14414 (Conc!6026) Int)

(assert (=> d!494149 (= lt!603604 (size!14414 (c!266879 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494149 (= (size!14409 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) lt!603604)))

(declare-fun bs!395712 () Bool)

(assert (= bs!395712 d!494149))

(assert (=> bs!395712 m!1981731))

(assert (=> bs!395712 m!1981733))

(assert (=> bs!395712 m!1981733))

(declare-fun m!1982337 () Bool)

(assert (=> bs!395712 m!1982337))

(declare-fun m!1982339 () Bool)

(assert (=> bs!395712 m!1982339))

(assert (=> b!1641296 d!494149))

(declare-fun d!494151 () Bool)

(assert (=> d!494151 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 tokens!457))))

(declare-fun lt!603607 () Unit!29726)

(declare-fun choose!9849 (LexerInterface!2818 List!18160 List!18159 Token!5944) Unit!29726)

(assert (=> d!494151 (= lt!603607 (choose!9849 thiss!17113 rules!1846 tokens!457 (h!23490 tokens!457)))))

(assert (=> d!494151 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494151 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!589 thiss!17113 rules!1846 tokens!457 (h!23490 tokens!457)) lt!603607)))

(declare-fun bs!395713 () Bool)

(assert (= bs!395713 d!494151))

(assert (=> bs!395713 m!1981871))

(declare-fun m!1982341 () Bool)

(assert (=> bs!395713 m!1982341))

(assert (=> bs!395713 m!1981545))

(assert (=> b!1641296 d!494151))

(declare-fun d!494153 () Bool)

(declare-fun lt!603608 () BalanceConc!11996)

(assert (=> d!494153 (= (list!7150 lt!603608) (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))))

(assert (=> d!494153 (= lt!603608 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (value!100559 (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494153 (= (charsOf!1838 (h!23490 (t!150030 tokens!457))) lt!603608)))

(declare-fun b_lambda!51583 () Bool)

(assert (=> (not b_lambda!51583) (not d!494153)))

(assert (=> d!494153 t!150056))

(declare-fun b_and!116397 () Bool)

(assert (= b_and!116389 (and (=> t!150056 result!113450) b_and!116397)))

(assert (=> d!494153 t!150058))

(declare-fun b_and!116399 () Bool)

(assert (= b_and!116391 (and (=> t!150058 result!113452) b_and!116399)))

(assert (=> d!494153 t!150060))

(declare-fun b_and!116401 () Bool)

(assert (= b_and!116393 (and (=> t!150060 result!113454) b_and!116401)))

(assert (=> d!494153 t!150062))

(declare-fun b_and!116403 () Bool)

(assert (= b_and!116395 (and (=> t!150062 result!113456) b_and!116403)))

(declare-fun m!1982343 () Bool)

(assert (=> d!494153 m!1982343))

(assert (=> d!494153 m!1982061))

(assert (=> b!1641296 d!494153))

(declare-fun d!494155 () Bool)

(declare-fun lt!603610 () Bool)

(declare-fun e!1052822 () Bool)

(assert (=> d!494155 (= lt!603610 e!1052822)))

(declare-fun res!735477 () Bool)

(assert (=> d!494155 (=> (not res!735477) (not e!1052822))))

(assert (=> d!494155 (= res!735477 (= (list!7149 (_1!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))))))) (list!7149 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))))))))

(declare-fun e!1052821 () Bool)

(assert (=> d!494155 (= lt!603610 e!1052821)))

(declare-fun res!735478 () Bool)

(assert (=> d!494155 (=> (not res!735478) (not e!1052821))))

(declare-fun lt!603609 () tuple2!17738)

(assert (=> d!494155 (= res!735478 (= (size!14410 (_1!10271 lt!603609)) 1))))

(assert (=> d!494155 (= lt!603609 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494155 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494155 (= (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (t!150030 tokens!457))) lt!603610)))

(declare-fun b!1641576 () Bool)

(declare-fun res!735479 () Bool)

(assert (=> b!1641576 (=> (not res!735479) (not e!1052821))))

(assert (=> b!1641576 (= res!735479 (= (apply!4710 (_1!10271 lt!603609) 0) (h!23490 (t!150030 tokens!457))))))

(declare-fun b!1641577 () Bool)

(assert (=> b!1641577 (= e!1052821 (isEmpty!11120 (_2!10271 lt!603609)))))

(declare-fun b!1641578 () Bool)

(assert (=> b!1641578 (= e!1052822 (isEmpty!11120 (_2!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))))))))))

(assert (= (and d!494155 res!735478) b!1641576))

(assert (= (and b!1641576 res!735479) b!1641577))

(assert (= (and d!494155 res!735477) b!1641578))

(assert (=> d!494155 m!1981769))

(assert (=> d!494155 m!1981771))

(assert (=> d!494155 m!1981769))

(assert (=> d!494155 m!1981769))

(declare-fun m!1982345 () Bool)

(assert (=> d!494155 m!1982345))

(assert (=> d!494155 m!1981771))

(declare-fun m!1982347 () Bool)

(assert (=> d!494155 m!1982347))

(declare-fun m!1982349 () Bool)

(assert (=> d!494155 m!1982349))

(declare-fun m!1982351 () Bool)

(assert (=> d!494155 m!1982351))

(assert (=> d!494155 m!1981545))

(declare-fun m!1982353 () Bool)

(assert (=> b!1641576 m!1982353))

(declare-fun m!1982355 () Bool)

(assert (=> b!1641577 m!1982355))

(assert (=> b!1641578 m!1981769))

(assert (=> b!1641578 m!1981769))

(assert (=> b!1641578 m!1981771))

(assert (=> b!1641578 m!1981771))

(assert (=> b!1641578 m!1982347))

(declare-fun m!1982357 () Bool)

(assert (=> b!1641578 m!1982357))

(assert (=> b!1641296 d!494155))

(declare-fun d!494157 () Bool)

(assert (=> d!494157 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (t!150030 tokens!457)))))

(declare-fun lt!603611 () Unit!29726)

(assert (=> d!494157 (= lt!603611 (choose!9849 thiss!17113 rules!1846 tokens!457 (h!23490 (t!150030 tokens!457))))))

(assert (=> d!494157 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494157 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!589 thiss!17113 rules!1846 tokens!457 (h!23490 (t!150030 tokens!457))) lt!603611)))

(declare-fun bs!395714 () Bool)

(assert (= bs!395714 d!494157))

(assert (=> bs!395714 m!1981899))

(declare-fun m!1982359 () Bool)

(assert (=> bs!395714 m!1982359))

(assert (=> bs!395714 m!1981545))

(assert (=> b!1641296 d!494157))

(declare-fun b!1641582 () Bool)

(declare-fun e!1052825 () Bool)

(assert (=> b!1641582 (= e!1052825 (>= (size!14408 (tail!2408 lt!603195)) (size!14408 (tail!2408 lt!603204))))))

(declare-fun b!1641579 () Bool)

(declare-fun e!1052823 () Bool)

(declare-fun e!1052824 () Bool)

(assert (=> b!1641579 (= e!1052823 e!1052824)))

(declare-fun res!735483 () Bool)

(assert (=> b!1641579 (=> (not res!735483) (not e!1052824))))

(assert (=> b!1641579 (= res!735483 (not ((_ is Nil!18088) (tail!2408 lt!603195))))))

(declare-fun b!1641580 () Bool)

(declare-fun res!735482 () Bool)

(assert (=> b!1641580 (=> (not res!735482) (not e!1052824))))

(assert (=> b!1641580 (= res!735482 (= (head!3572 (tail!2408 lt!603204)) (head!3572 (tail!2408 lt!603195))))))

(declare-fun d!494159 () Bool)

(assert (=> d!494159 e!1052825))

(declare-fun res!735480 () Bool)

(assert (=> d!494159 (=> res!735480 e!1052825)))

(declare-fun lt!603612 () Bool)

(assert (=> d!494159 (= res!735480 (not lt!603612))))

(assert (=> d!494159 (= lt!603612 e!1052823)))

(declare-fun res!735481 () Bool)

(assert (=> d!494159 (=> res!735481 e!1052823)))

(assert (=> d!494159 (= res!735481 ((_ is Nil!18088) (tail!2408 lt!603204)))))

(assert (=> d!494159 (= (isPrefix!1447 (tail!2408 lt!603204) (tail!2408 lt!603195)) lt!603612)))

(declare-fun b!1641581 () Bool)

(assert (=> b!1641581 (= e!1052824 (isPrefix!1447 (tail!2408 (tail!2408 lt!603204)) (tail!2408 (tail!2408 lt!603195))))))

(assert (= (and d!494159 (not res!735481)) b!1641579))

(assert (= (and b!1641579 res!735483) b!1641580))

(assert (= (and b!1641580 res!735482) b!1641581))

(assert (= (and d!494159 (not res!735480)) b!1641582))

(assert (=> b!1641582 m!1981839))

(declare-fun m!1982361 () Bool)

(assert (=> b!1641582 m!1982361))

(assert (=> b!1641582 m!1981837))

(declare-fun m!1982363 () Bool)

(assert (=> b!1641582 m!1982363))

(assert (=> b!1641580 m!1981837))

(declare-fun m!1982365 () Bool)

(assert (=> b!1641580 m!1982365))

(assert (=> b!1641580 m!1981839))

(declare-fun m!1982367 () Bool)

(assert (=> b!1641580 m!1982367))

(assert (=> b!1641581 m!1981837))

(declare-fun m!1982369 () Bool)

(assert (=> b!1641581 m!1982369))

(assert (=> b!1641581 m!1981839))

(declare-fun m!1982371 () Bool)

(assert (=> b!1641581 m!1982371))

(assert (=> b!1641581 m!1982369))

(assert (=> b!1641581 m!1982371))

(declare-fun m!1982373 () Bool)

(assert (=> b!1641581 m!1982373))

(assert (=> b!1641180 d!494159))

(declare-fun d!494161 () Bool)

(assert (=> d!494161 (= (tail!2408 lt!603204) (t!150029 lt!603204))))

(assert (=> b!1641180 d!494161))

(declare-fun d!494163 () Bool)

(assert (=> d!494163 (= (tail!2408 lt!603195) (t!150029 lt!603195))))

(assert (=> b!1641180 d!494163))

(declare-fun b!1641583 () Bool)

(declare-fun e!1052826 () List!18159)

(assert (=> b!1641583 (= e!1052826 Nil!18089)))

(declare-fun b!1641584 () Bool)

(declare-fun e!1052827 () List!18159)

(assert (=> b!1641584 (= e!1052826 e!1052827)))

(declare-fun c!266972 () Bool)

(assert (=> b!1641584 (= c!266972 ((_ is Leaf!8842) (c!266881 lt!603202)))))

(declare-fun d!494165 () Bool)

(declare-fun c!266971 () Bool)

(assert (=> d!494165 (= c!266971 ((_ is Empty!6027) (c!266881 lt!603202)))))

(assert (=> d!494165 (= (list!7153 (c!266881 lt!603202)) e!1052826)))

(declare-fun b!1641586 () Bool)

(assert (=> b!1641586 (= e!1052827 (++!4863 (list!7153 (left!14503 (c!266881 lt!603202))) (list!7153 (right!14833 (c!266881 lt!603202)))))))

(declare-fun b!1641585 () Bool)

(assert (=> b!1641585 (= e!1052827 (list!7155 (xs!8863 (c!266881 lt!603202))))))

(assert (= (and d!494165 c!266971) b!1641583))

(assert (= (and d!494165 (not c!266971)) b!1641584))

(assert (= (and b!1641584 c!266972) b!1641585))

(assert (= (and b!1641584 (not c!266972)) b!1641586))

(declare-fun m!1982375 () Bool)

(assert (=> b!1641586 m!1982375))

(declare-fun m!1982377 () Bool)

(assert (=> b!1641586 m!1982377))

(assert (=> b!1641586 m!1982375))

(assert (=> b!1641586 m!1982377))

(declare-fun m!1982379 () Bool)

(assert (=> b!1641586 m!1982379))

(declare-fun m!1982381 () Bool)

(assert (=> b!1641585 m!1982381))

(assert (=> d!494047 d!494165))

(declare-fun d!494167 () Bool)

(declare-fun res!735488 () Bool)

(declare-fun e!1052832 () Bool)

(assert (=> d!494167 (=> res!735488 e!1052832)))

(assert (=> d!494167 (= res!735488 ((_ is Nil!18090) rules!1846))))

(assert (=> d!494167 (= (noDuplicateTag!1152 thiss!17113 rules!1846 Nil!18092) e!1052832)))

(declare-fun b!1641591 () Bool)

(declare-fun e!1052833 () Bool)

(assert (=> b!1641591 (= e!1052832 e!1052833)))

(declare-fun res!735489 () Bool)

(assert (=> b!1641591 (=> (not res!735489) (not e!1052833))))

(declare-fun contains!3147 (List!18162 String!20727) Bool)

(assert (=> b!1641591 (= res!735489 (not (contains!3147 Nil!18092 (tag!3469 (h!23491 rules!1846)))))))

(declare-fun b!1641592 () Bool)

(assert (=> b!1641592 (= e!1052833 (noDuplicateTag!1152 thiss!17113 (t!150031 rules!1846) (Cons!18092 (tag!3469 (h!23491 rules!1846)) Nil!18092)))))

(assert (= (and d!494167 (not res!735488)) b!1641591))

(assert (= (and b!1641591 res!735489) b!1641592))

(declare-fun m!1982383 () Bool)

(assert (=> b!1641591 m!1982383))

(declare-fun m!1982385 () Bool)

(assert (=> b!1641592 m!1982385))

(assert (=> b!1641184 d!494167))

(declare-fun d!494169 () Bool)

(declare-fun e!1052836 () Bool)

(assert (=> d!494169 e!1052836))

(declare-fun res!735492 () Bool)

(assert (=> d!494169 (=> (not res!735492) (not e!1052836))))

(declare-fun lt!603615 () BalanceConc!11998)

(assert (=> d!494169 (= res!735492 (= (list!7149 lt!603615) tokens!457))))

(declare-fun fromList!389 (List!18159) Conc!6027)

(assert (=> d!494169 (= lt!603615 (BalanceConc!11999 (fromList!389 tokens!457)))))

(assert (=> d!494169 (= (fromListB!937 tokens!457) lt!603615)))

(declare-fun b!1641595 () Bool)

(assert (=> b!1641595 (= e!1052836 (isBalanced!1832 (fromList!389 tokens!457)))))

(assert (= (and d!494169 res!735492) b!1641595))

(declare-fun m!1982387 () Bool)

(assert (=> d!494169 m!1982387))

(declare-fun m!1982389 () Bool)

(assert (=> d!494169 m!1982389))

(assert (=> b!1641595 m!1982389))

(assert (=> b!1641595 m!1982389))

(declare-fun m!1982391 () Bool)

(assert (=> b!1641595 m!1982391))

(assert (=> d!494023 d!494169))

(declare-fun d!494171 () Bool)

(declare-fun isBalanced!1833 (Conc!6026) Bool)

(assert (=> d!494171 (= (inv!23443 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))) (isBalanced!1833 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))))))

(declare-fun bs!395715 () Bool)

(assert (= bs!395715 d!494171))

(declare-fun m!1982393 () Bool)

(assert (=> bs!395715 m!1982393))

(assert (=> tb!93951 d!494171))

(declare-fun d!494173 () Bool)

(assert (=> d!494173 true))

(declare-fun order!10747 () Int)

(declare-fun lambda!67504 () Int)

(declare-fun dynLambda!8073 (Int Int) Int)

(assert (=> d!494173 (< (dynLambda!8068 order!10733 (toValue!4624 (transformation!3189 (h!23491 rules!1846)))) (dynLambda!8073 order!10747 lambda!67504))))

(declare-fun Forall2!518 (Int) Bool)

(assert (=> d!494173 (= (equivClasses!1165 (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toValue!4624 (transformation!3189 (h!23491 rules!1846)))) (Forall2!518 lambda!67504))))

(declare-fun bs!395716 () Bool)

(assert (= bs!395716 d!494173))

(declare-fun m!1982395 () Bool)

(assert (=> bs!395716 m!1982395))

(assert (=> b!1641332 d!494173))

(declare-fun b!1641602 () Bool)

(declare-fun e!1052840 () List!18158)

(assert (=> b!1641602 (= e!1052840 (list!7156 (xs!8862 (c!266879 lt!603200))))))

(declare-fun b!1641601 () Bool)

(declare-fun e!1052839 () List!18158)

(assert (=> b!1641601 (= e!1052839 e!1052840)))

(declare-fun c!266975 () Bool)

(assert (=> b!1641601 (= c!266975 ((_ is Leaf!8841) (c!266879 lt!603200)))))

(declare-fun b!1641603 () Bool)

(assert (=> b!1641603 (= e!1052840 (++!4860 (list!7154 (left!14502 (c!266879 lt!603200))) (list!7154 (right!14832 (c!266879 lt!603200)))))))

(declare-fun b!1641600 () Bool)

(assert (=> b!1641600 (= e!1052839 Nil!18088)))

(declare-fun d!494175 () Bool)

(declare-fun c!266974 () Bool)

(assert (=> d!494175 (= c!266974 ((_ is Empty!6026) (c!266879 lt!603200)))))

(assert (=> d!494175 (= (list!7154 (c!266879 lt!603200)) e!1052839)))

(assert (= (and d!494175 c!266974) b!1641600))

(assert (= (and d!494175 (not c!266974)) b!1641601))

(assert (= (and b!1641601 c!266975) b!1641602))

(assert (= (and b!1641601 (not c!266975)) b!1641603))

(declare-fun m!1982397 () Bool)

(assert (=> b!1641602 m!1982397))

(declare-fun m!1982399 () Bool)

(assert (=> b!1641603 m!1982399))

(declare-fun m!1982401 () Bool)

(assert (=> b!1641603 m!1982401))

(assert (=> b!1641603 m!1982399))

(assert (=> b!1641603 m!1982401))

(declare-fun m!1982403 () Bool)

(assert (=> b!1641603 m!1982403))

(assert (=> d!494035 d!494175))

(declare-fun d!494177 () Bool)

(assert (=> d!494177 (= (list!7150 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))) (list!7154 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))))))

(declare-fun bs!395717 () Bool)

(assert (= bs!395717 d!494177))

(declare-fun m!1982405 () Bool)

(assert (=> bs!395717 m!1982405))

(assert (=> b!1641341 d!494177))

(declare-fun d!494179 () Bool)

(assert (=> d!494179 (= (list!7150 lt!603444) (list!7154 (c!266879 lt!603444)))))

(declare-fun bs!395718 () Bool)

(assert (= bs!395718 d!494179))

(declare-fun m!1982407 () Bool)

(assert (=> bs!395718 m!1982407))

(assert (=> d!494017 d!494179))

(declare-fun d!494181 () Bool)

(declare-fun c!266978 () Bool)

(assert (=> d!494181 (= c!266978 ((_ is Cons!18089) (list!7149 (seqFromList!2122 tokens!457))))))

(declare-fun e!1052843 () List!18158)

(assert (=> d!494181 (= (printList!933 thiss!17113 (list!7149 (seqFromList!2122 tokens!457))) e!1052843)))

(declare-fun b!1641608 () Bool)

(assert (=> b!1641608 (= e!1052843 (++!4860 (list!7150 (charsOf!1838 (h!23490 (list!7149 (seqFromList!2122 tokens!457))))) (printList!933 thiss!17113 (t!150030 (list!7149 (seqFromList!2122 tokens!457))))))))

(declare-fun b!1641609 () Bool)

(assert (=> b!1641609 (= e!1052843 Nil!18088)))

(assert (= (and d!494181 c!266978) b!1641608))

(assert (= (and d!494181 (not c!266978)) b!1641609))

(declare-fun m!1982409 () Bool)

(assert (=> b!1641608 m!1982409))

(assert (=> b!1641608 m!1982409))

(declare-fun m!1982411 () Bool)

(assert (=> b!1641608 m!1982411))

(declare-fun m!1982413 () Bool)

(assert (=> b!1641608 m!1982413))

(assert (=> b!1641608 m!1982411))

(assert (=> b!1641608 m!1982413))

(declare-fun m!1982415 () Bool)

(assert (=> b!1641608 m!1982415))

(assert (=> d!494017 d!494181))

(declare-fun d!494183 () Bool)

(assert (=> d!494183 (= (list!7149 (seqFromList!2122 tokens!457)) (list!7153 (c!266881 (seqFromList!2122 tokens!457))))))

(declare-fun bs!395719 () Bool)

(assert (= bs!395719 d!494183))

(declare-fun m!1982417 () Bool)

(assert (=> bs!395719 m!1982417))

(assert (=> d!494017 d!494183))

(declare-fun d!494185 () Bool)

(declare-fun lt!603636 () BalanceConc!11996)

(declare-fun printListTailRec!376 (LexerInterface!2818 List!18159 List!18158) List!18158)

(declare-fun dropList!647 (BalanceConc!11998 Int) List!18159)

(assert (=> d!494185 (= (list!7150 lt!603636) (printListTailRec!376 thiss!17113 (dropList!647 (seqFromList!2122 tokens!457) 0) (list!7150 (BalanceConc!11997 Empty!6026))))))

(declare-fun e!1052849 () BalanceConc!11996)

(assert (=> d!494185 (= lt!603636 e!1052849)))

(declare-fun c!266981 () Bool)

(assert (=> d!494185 (= c!266981 (>= 0 (size!14410 (seqFromList!2122 tokens!457))))))

(declare-fun e!1052848 () Bool)

(assert (=> d!494185 e!1052848))

(declare-fun res!735497 () Bool)

(assert (=> d!494185 (=> (not res!735497) (not e!1052848))))

(assert (=> d!494185 (= res!735497 (>= 0 0))))

(assert (=> d!494185 (= (printTailRec!871 thiss!17113 (seqFromList!2122 tokens!457) 0 (BalanceConc!11997 Empty!6026)) lt!603636)))

(declare-fun b!1641616 () Bool)

(assert (=> b!1641616 (= e!1052848 (<= 0 (size!14410 (seqFromList!2122 tokens!457))))))

(declare-fun b!1641617 () Bool)

(assert (=> b!1641617 (= e!1052849 (BalanceConc!11997 Empty!6026))))

(declare-fun b!1641618 () Bool)

(assert (=> b!1641618 (= e!1052849 (printTailRec!871 thiss!17113 (seqFromList!2122 tokens!457) (+ 0 1) (++!4864 (BalanceConc!11997 Empty!6026) (charsOf!1838 (apply!4710 (seqFromList!2122 tokens!457) 0)))))))

(declare-fun lt!603632 () List!18159)

(assert (=> b!1641618 (= lt!603632 (list!7149 (seqFromList!2122 tokens!457)))))

(declare-fun lt!603631 () Unit!29726)

(declare-fun lemmaDropApply!583 (List!18159 Int) Unit!29726)

(assert (=> b!1641618 (= lt!603631 (lemmaDropApply!583 lt!603632 0))))

(declare-fun head!3574 (List!18159) Token!5944)

(declare-fun drop!895 (List!18159 Int) List!18159)

(declare-fun apply!4711 (List!18159 Int) Token!5944)

(assert (=> b!1641618 (= (head!3574 (drop!895 lt!603632 0)) (apply!4711 lt!603632 0))))

(declare-fun lt!603634 () Unit!29726)

(assert (=> b!1641618 (= lt!603634 lt!603631)))

(declare-fun lt!603635 () List!18159)

(assert (=> b!1641618 (= lt!603635 (list!7149 (seqFromList!2122 tokens!457)))))

(declare-fun lt!603630 () Unit!29726)

(declare-fun lemmaDropTail!563 (List!18159 Int) Unit!29726)

(assert (=> b!1641618 (= lt!603630 (lemmaDropTail!563 lt!603635 0))))

(declare-fun tail!2409 (List!18159) List!18159)

(assert (=> b!1641618 (= (tail!2409 (drop!895 lt!603635 0)) (drop!895 lt!603635 (+ 0 1)))))

(declare-fun lt!603633 () Unit!29726)

(assert (=> b!1641618 (= lt!603633 lt!603630)))

(assert (= (and d!494185 res!735497) b!1641616))

(assert (= (and d!494185 c!266981) b!1641617))

(assert (= (and d!494185 (not c!266981)) b!1641618))

(assert (=> d!494185 m!1981505))

(declare-fun m!1982419 () Bool)

(assert (=> d!494185 m!1982419))

(assert (=> d!494185 m!1982419))

(declare-fun m!1982421 () Bool)

(assert (=> d!494185 m!1982421))

(declare-fun m!1982423 () Bool)

(assert (=> d!494185 m!1982423))

(assert (=> d!494185 m!1982421))

(assert (=> d!494185 m!1981505))

(declare-fun m!1982425 () Bool)

(assert (=> d!494185 m!1982425))

(declare-fun m!1982427 () Bool)

(assert (=> d!494185 m!1982427))

(assert (=> b!1641616 m!1981505))

(assert (=> b!1641616 m!1982425))

(declare-fun m!1982429 () Bool)

(assert (=> b!1641618 m!1982429))

(declare-fun m!1982431 () Bool)

(assert (=> b!1641618 m!1982431))

(declare-fun m!1982433 () Bool)

(assert (=> b!1641618 m!1982433))

(declare-fun m!1982435 () Bool)

(assert (=> b!1641618 m!1982435))

(assert (=> b!1641618 m!1981505))

(assert (=> b!1641618 m!1981911))

(assert (=> b!1641618 m!1981505))

(declare-fun m!1982437 () Bool)

(assert (=> b!1641618 m!1982437))

(declare-fun m!1982439 () Bool)

(assert (=> b!1641618 m!1982439))

(declare-fun m!1982441 () Bool)

(assert (=> b!1641618 m!1982441))

(assert (=> b!1641618 m!1982439))

(declare-fun m!1982443 () Bool)

(assert (=> b!1641618 m!1982443))

(declare-fun m!1982445 () Bool)

(assert (=> b!1641618 m!1982445))

(assert (=> b!1641618 m!1982429))

(assert (=> b!1641618 m!1982437))

(assert (=> b!1641618 m!1982433))

(assert (=> b!1641618 m!1981505))

(assert (=> b!1641618 m!1982435))

(declare-fun m!1982447 () Bool)

(assert (=> b!1641618 m!1982447))

(declare-fun m!1982449 () Bool)

(assert (=> b!1641618 m!1982449))

(declare-fun m!1982451 () Bool)

(assert (=> b!1641618 m!1982451))

(assert (=> d!494017 d!494185))

(declare-fun d!494187 () Bool)

(declare-fun charsToBigInt!1 (List!18157) Int)

(assert (=> d!494187 (= (inv!17 (value!100559 (h!23490 tokens!457))) (= (charsToBigInt!1 (text!23401 (value!100559 (h!23490 tokens!457)))) (value!100551 (value!100559 (h!23490 tokens!457)))))))

(declare-fun bs!395720 () Bool)

(assert (= bs!395720 d!494187))

(declare-fun m!1982453 () Bool)

(assert (=> bs!395720 m!1982453))

(assert (=> b!1641095 d!494187))

(declare-fun b!1641619 () Bool)

(declare-fun e!1052851 () Bool)

(assert (=> b!1641619 (= e!1052851 (inv!16 (value!100559 (h!23490 (t!150030 tokens!457)))))))

(declare-fun b!1641620 () Bool)

(declare-fun e!1052852 () Bool)

(assert (=> b!1641620 (= e!1052852 (inv!17 (value!100559 (h!23490 (t!150030 tokens!457)))))))

(declare-fun b!1641621 () Bool)

(declare-fun res!735498 () Bool)

(declare-fun e!1052850 () Bool)

(assert (=> b!1641621 (=> res!735498 e!1052850)))

(assert (=> b!1641621 (= res!735498 (not ((_ is IntegerValue!9839) (value!100559 (h!23490 (t!150030 tokens!457))))))))

(assert (=> b!1641621 (= e!1052852 e!1052850)))

(declare-fun d!494189 () Bool)

(declare-fun c!266982 () Bool)

(assert (=> d!494189 (= c!266982 ((_ is IntegerValue!9837) (value!100559 (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494189 (= (inv!21 (value!100559 (h!23490 (t!150030 tokens!457)))) e!1052851)))

(declare-fun b!1641622 () Bool)

(assert (=> b!1641622 (= e!1052850 (inv!15 (value!100559 (h!23490 (t!150030 tokens!457)))))))

(declare-fun b!1641623 () Bool)

(assert (=> b!1641623 (= e!1052851 e!1052852)))

(declare-fun c!266983 () Bool)

(assert (=> b!1641623 (= c!266983 ((_ is IntegerValue!9838) (value!100559 (h!23490 (t!150030 tokens!457)))))))

(assert (= (and d!494189 c!266982) b!1641619))

(assert (= (and d!494189 (not c!266982)) b!1641623))

(assert (= (and b!1641623 c!266983) b!1641620))

(assert (= (and b!1641623 (not c!266983)) b!1641621))

(assert (= (and b!1641621 (not res!735498)) b!1641622))

(declare-fun m!1982455 () Bool)

(assert (=> b!1641619 m!1982455))

(declare-fun m!1982457 () Bool)

(assert (=> b!1641620 m!1982457))

(declare-fun m!1982459 () Bool)

(assert (=> b!1641622 m!1982459))

(assert (=> b!1641388 d!494189))

(declare-fun d!494191 () Bool)

(declare-fun e!1052853 () Bool)

(assert (=> d!494191 e!1052853))

(declare-fun res!735499 () Bool)

(assert (=> d!494191 (=> (not res!735499) (not e!1052853))))

(declare-fun lt!603637 () BalanceConc!11998)

(assert (=> d!494191 (= res!735499 (= (list!7149 lt!603637) (t!150030 tokens!457)))))

(assert (=> d!494191 (= lt!603637 (BalanceConc!11999 (fromList!389 (t!150030 tokens!457))))))

(assert (=> d!494191 (= (fromListB!937 (t!150030 tokens!457)) lt!603637)))

(declare-fun b!1641624 () Bool)

(assert (=> b!1641624 (= e!1052853 (isBalanced!1832 (fromList!389 (t!150030 tokens!457))))))

(assert (= (and d!494191 res!735499) b!1641624))

(declare-fun m!1982461 () Bool)

(assert (=> d!494191 m!1982461))

(declare-fun m!1982463 () Bool)

(assert (=> d!494191 m!1982463))

(assert (=> b!1641624 m!1982463))

(assert (=> b!1641624 m!1982463))

(declare-fun m!1982465 () Bool)

(assert (=> b!1641624 m!1982465))

(assert (=> d!494027 d!494191))

(declare-fun d!494193 () Bool)

(declare-fun res!735504 () Bool)

(declare-fun e!1052858 () Bool)

(assert (=> d!494193 (=> res!735504 e!1052858)))

(assert (=> d!494193 (= res!735504 ((_ is Nil!18089) tokens!457))))

(assert (=> d!494193 (= (forall!4122 tokens!457 lambda!67493) e!1052858)))

(declare-fun b!1641629 () Bool)

(declare-fun e!1052859 () Bool)

(assert (=> b!1641629 (= e!1052858 e!1052859)))

(declare-fun res!735505 () Bool)

(assert (=> b!1641629 (=> (not res!735505) (not e!1052859))))

(declare-fun dynLambda!8074 (Int Token!5944) Bool)

(assert (=> b!1641629 (= res!735505 (dynLambda!8074 lambda!67493 (h!23490 tokens!457)))))

(declare-fun b!1641630 () Bool)

(assert (=> b!1641630 (= e!1052859 (forall!4122 (t!150030 tokens!457) lambda!67493))))

(assert (= (and d!494193 (not res!735504)) b!1641629))

(assert (= (and b!1641629 res!735505) b!1641630))

(declare-fun b_lambda!51585 () Bool)

(assert (=> (not b_lambda!51585) (not b!1641629)))

(declare-fun m!1982467 () Bool)

(assert (=> b!1641629 m!1982467))

(declare-fun m!1982469 () Bool)

(assert (=> b!1641630 m!1982469))

(assert (=> d!494007 d!494193))

(assert (=> d!494007 d!493965))

(declare-fun d!494195 () Bool)

(declare-fun charsToBigInt!0 (List!18157 Int) Int)

(assert (=> d!494195 (= (inv!15 (value!100559 (h!23490 tokens!457))) (= (charsToBigInt!0 (text!23402 (value!100559 (h!23490 tokens!457))) 0) (value!100554 (value!100559 (h!23490 tokens!457)))))))

(declare-fun bs!395721 () Bool)

(assert (= bs!395721 d!494195))

(declare-fun m!1982471 () Bool)

(assert (=> bs!395721 m!1982471))

(assert (=> b!1641097 d!494195))

(declare-fun d!494197 () Bool)

(assert (=> d!494197 true))

(declare-fun lt!603640 () Bool)

(declare-fun rulesValidInductive!1002 (LexerInterface!2818 List!18160) Bool)

(assert (=> d!494197 (= lt!603640 (rulesValidInductive!1002 thiss!17113 rules!1846))))

(declare-fun lambda!67507 () Int)

(declare-fun forall!4123 (List!18160 Int) Bool)

(assert (=> d!494197 (= lt!603640 (forall!4123 rules!1846 lambda!67507))))

(assert (=> d!494197 (= (rulesValid!1152 thiss!17113 rules!1846) lt!603640)))

(declare-fun bs!395722 () Bool)

(assert (= bs!395722 d!494197))

(declare-fun m!1982473 () Bool)

(assert (=> bs!395722 m!1982473))

(declare-fun m!1982475 () Bool)

(assert (=> bs!395722 m!1982475))

(assert (=> d!494005 d!494197))

(declare-fun b!1641635 () Bool)

(declare-fun res!735507 () Bool)

(declare-fun e!1052861 () Bool)

(assert (=> b!1641635 (=> (not res!735507) (not e!1052861))))

(declare-fun lt!603641 () List!18158)

(assert (=> b!1641635 (= res!735507 (= (size!14408 lt!603641) (+ (size!14408 (t!150029 lt!603204)) (size!14408 lt!603205))))))

(declare-fun b!1641634 () Bool)

(declare-fun e!1052860 () List!18158)

(assert (=> b!1641634 (= e!1052860 (Cons!18088 (h!23489 (t!150029 lt!603204)) (++!4860 (t!150029 (t!150029 lt!603204)) lt!603205)))))

(declare-fun b!1641636 () Bool)

(assert (=> b!1641636 (= e!1052861 (or (not (= lt!603205 Nil!18088)) (= lt!603641 (t!150029 lt!603204))))))

(declare-fun d!494199 () Bool)

(assert (=> d!494199 e!1052861))

(declare-fun res!735506 () Bool)

(assert (=> d!494199 (=> (not res!735506) (not e!1052861))))

(assert (=> d!494199 (= res!735506 (= (content!2503 lt!603641) ((_ map or) (content!2503 (t!150029 lt!603204)) (content!2503 lt!603205))))))

(assert (=> d!494199 (= lt!603641 e!1052860)))

(declare-fun c!266984 () Bool)

(assert (=> d!494199 (= c!266984 ((_ is Nil!18088) (t!150029 lt!603204)))))

(assert (=> d!494199 (= (++!4860 (t!150029 lt!603204) lt!603205) lt!603641)))

(declare-fun b!1641633 () Bool)

(assert (=> b!1641633 (= e!1052860 lt!603205)))

(assert (= (and d!494199 c!266984) b!1641633))

(assert (= (and d!494199 (not c!266984)) b!1641634))

(assert (= (and d!494199 res!735506) b!1641635))

(assert (= (and b!1641635 res!735507) b!1641636))

(declare-fun m!1982477 () Bool)

(assert (=> b!1641635 m!1982477))

(assert (=> b!1641635 m!1982105))

(assert (=> b!1641635 m!1981953))

(declare-fun m!1982479 () Bool)

(assert (=> b!1641634 m!1982479))

(declare-fun m!1982481 () Bool)

(assert (=> d!494199 m!1982481))

(declare-fun m!1982483 () Bool)

(assert (=> d!494199 m!1982483))

(assert (=> d!494199 m!1981961))

(assert (=> b!1641327 d!494199))

(declare-fun bs!395723 () Bool)

(declare-fun d!494201 () Bool)

(assert (= bs!395723 (and d!494201 d!494173)))

(declare-fun lambda!67508 () Int)

(assert (=> bs!395723 (= (= (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toValue!4624 (transformation!3189 (h!23491 rules!1846)))) (= lambda!67508 lambda!67504))))

(assert (=> d!494201 true))

(assert (=> d!494201 (< (dynLambda!8068 order!10733 (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) (dynLambda!8073 order!10747 lambda!67508))))

(assert (=> d!494201 (= (equivClasses!1165 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toValue!4624 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) (Forall2!518 lambda!67508))))

(declare-fun bs!395724 () Bool)

(assert (= bs!395724 d!494201))

(declare-fun m!1982485 () Bool)

(assert (=> bs!395724 m!1982485))

(assert (=> b!1641333 d!494201))

(declare-fun b!1641649 () Bool)

(declare-fun res!735521 () Bool)

(declare-fun e!1052867 () Bool)

(assert (=> b!1641649 (=> (not res!735521) (not e!1052867))))

(assert (=> b!1641649 (= res!735521 (not (isEmpty!11124 (left!14503 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457)))))))))

(declare-fun b!1641650 () Bool)

(declare-fun res!735524 () Bool)

(assert (=> b!1641650 (=> (not res!735524) (not e!1052867))))

(declare-fun height!926 (Conc!6027) Int)

(assert (=> b!1641650 (= res!735524 (<= (- (height!926 (left!14503 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457))))) (height!926 (right!14833 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457)))))) 1))))

(declare-fun d!494203 () Bool)

(declare-fun res!735522 () Bool)

(declare-fun e!1052866 () Bool)

(assert (=> d!494203 (=> res!735522 e!1052866)))

(assert (=> d!494203 (= res!735522 (not ((_ is Node!6027) (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494203 (= (isBalanced!1832 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457)))) e!1052866)))

(declare-fun b!1641651 () Bool)

(declare-fun res!735523 () Bool)

(assert (=> b!1641651 (=> (not res!735523) (not e!1052867))))

(assert (=> b!1641651 (= res!735523 (isBalanced!1832 (right!14833 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641652 () Bool)

(declare-fun res!735520 () Bool)

(assert (=> b!1641652 (=> (not res!735520) (not e!1052867))))

(assert (=> b!1641652 (= res!735520 (isBalanced!1832 (left!14503 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641653 () Bool)

(assert (=> b!1641653 (= e!1052866 e!1052867)))

(declare-fun res!735525 () Bool)

(assert (=> b!1641653 (=> (not res!735525) (not e!1052867))))

(assert (=> b!1641653 (= res!735525 (<= (- 1) (- (height!926 (left!14503 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457))))) (height!926 (right!14833 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457))))))))))

(declare-fun b!1641654 () Bool)

(assert (=> b!1641654 (= e!1052867 (not (isEmpty!11124 (right!14833 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457)))))))))

(assert (= (and d!494203 (not res!735522)) b!1641653))

(assert (= (and b!1641653 res!735525) b!1641650))

(assert (= (and b!1641650 res!735524) b!1641652))

(assert (= (and b!1641652 res!735520) b!1641651))

(assert (= (and b!1641651 res!735523) b!1641649))

(assert (= (and b!1641649 res!735521) b!1641654))

(declare-fun m!1982487 () Bool)

(assert (=> b!1641654 m!1982487))

(declare-fun m!1982489 () Bool)

(assert (=> b!1641651 m!1982489))

(declare-fun m!1982491 () Bool)

(assert (=> b!1641652 m!1982491))

(declare-fun m!1982493 () Bool)

(assert (=> b!1641649 m!1982493))

(declare-fun m!1982495 () Bool)

(assert (=> b!1641650 m!1982495))

(declare-fun m!1982497 () Bool)

(assert (=> b!1641650 m!1982497))

(assert (=> b!1641653 m!1982495))

(assert (=> b!1641653 m!1982497))

(assert (=> d!494053 d!494203))

(declare-fun d!494205 () Bool)

(declare-fun e!1052870 () Bool)

(assert (=> d!494205 e!1052870))

(declare-fun res!735528 () Bool)

(assert (=> d!494205 (=> (not res!735528) (not e!1052870))))

(declare-fun lt!603644 () Conc!6027)

(assert (=> d!494205 (= res!735528 (isBalanced!1832 lt!603644))))

(declare-fun ++!4865 (Conc!6027 Conc!6027) Conc!6027)

(declare-fun fill!99 (Int Token!5944) IArray!12059)

(assert (=> d!494205 (= lt!603644 (++!4865 (Leaf!8842 (fill!99 1 (h!23490 (t!150030 tokens!457))) 1) (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457))))))))

(assert (=> d!494205 (isBalanced!1832 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))))))

(assert (=> d!494205 (= (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457))) lt!603644)))

(declare-fun b!1641657 () Bool)

(assert (=> b!1641657 (= e!1052870 (= (list!7153 lt!603644) (Cons!18089 (h!23490 (t!150030 tokens!457)) (list!7153 (c!266881 (seqFromList!2122 (t!150030 (t!150030 tokens!457))))))))))

(assert (= (and d!494205 res!735528) b!1641657))

(declare-fun m!1982499 () Bool)

(assert (=> d!494205 m!1982499))

(declare-fun m!1982501 () Bool)

(assert (=> d!494205 m!1982501))

(declare-fun m!1982503 () Bool)

(assert (=> d!494205 m!1982503))

(declare-fun m!1982505 () Bool)

(assert (=> d!494205 m!1982505))

(declare-fun m!1982507 () Bool)

(assert (=> b!1641657 m!1982507))

(assert (=> b!1641657 m!1982115))

(assert (=> d!494053 d!494205))

(declare-fun d!494207 () Bool)

(declare-fun isEmpty!11126 (Option!3418) Bool)

(assert (=> d!494207 (= (isDefined!2781 (maxPrefix!1382 thiss!17113 rules!1846 (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))) (not (isEmpty!11126 (maxPrefix!1382 thiss!17113 rules!1846 (originalCharacters!4003 (h!23490 (t!150030 tokens!457)))))))))

(declare-fun bs!395725 () Bool)

(assert (= bs!395725 d!494207))

(assert (=> bs!395725 m!1981725))

(declare-fun m!1982509 () Bool)

(assert (=> bs!395725 m!1982509))

(assert (=> b!1641151 d!494207))

(declare-fun b!1641660 () Bool)

(declare-fun res!735530 () Bool)

(declare-fun e!1052872 () Bool)

(assert (=> b!1641660 (=> (not res!735530) (not e!1052872))))

(declare-fun lt!603645 () List!18158)

(assert (=> b!1641660 (= res!735530 (= (size!14408 lt!603645) (+ (size!14408 lt!603381) (size!14408 lt!603376))))))

(declare-fun b!1641659 () Bool)

(declare-fun e!1052871 () List!18158)

(assert (=> b!1641659 (= e!1052871 (Cons!18088 (h!23489 lt!603381) (++!4860 (t!150029 lt!603381) lt!603376)))))

(declare-fun b!1641661 () Bool)

(assert (=> b!1641661 (= e!1052872 (or (not (= lt!603376 Nil!18088)) (= lt!603645 lt!603381)))))

(declare-fun d!494209 () Bool)

(assert (=> d!494209 e!1052872))

(declare-fun res!735529 () Bool)

(assert (=> d!494209 (=> (not res!735529) (not e!1052872))))

(assert (=> d!494209 (= res!735529 (= (content!2503 lt!603645) ((_ map or) (content!2503 lt!603381) (content!2503 lt!603376))))))

(assert (=> d!494209 (= lt!603645 e!1052871)))

(declare-fun c!266985 () Bool)

(assert (=> d!494209 (= c!266985 ((_ is Nil!18088) lt!603381))))

(assert (=> d!494209 (= (++!4860 lt!603381 lt!603376) lt!603645)))

(declare-fun b!1641658 () Bool)

(assert (=> b!1641658 (= e!1052871 lt!603376)))

(assert (= (and d!494209 c!266985) b!1641658))

(assert (= (and d!494209 (not c!266985)) b!1641659))

(assert (= (and d!494209 res!735529) b!1641660))

(assert (= (and b!1641660 res!735530) b!1641661))

(declare-fun m!1982511 () Bool)

(assert (=> b!1641660 m!1982511))

(declare-fun m!1982513 () Bool)

(assert (=> b!1641660 m!1982513))

(declare-fun m!1982515 () Bool)

(assert (=> b!1641660 m!1982515))

(declare-fun m!1982517 () Bool)

(assert (=> b!1641659 m!1982517))

(declare-fun m!1982519 () Bool)

(assert (=> d!494209 m!1982519))

(declare-fun m!1982521 () Bool)

(assert (=> d!494209 m!1982521))

(declare-fun m!1982523 () Bool)

(assert (=> d!494209 m!1982523))

(assert (=> b!1641151 d!494209))

(declare-fun d!494211 () Bool)

(assert (=> d!494211 (= (head!3572 (list!7150 lt!603388)) (h!23489 (list!7150 lt!603388)))))

(assert (=> b!1641151 d!494211))

(declare-fun d!494213 () Bool)

(assert (=> d!494213 (= (head!3572 (originalCharacters!4003 (h!23490 (t!150030 (t!150030 tokens!457))))) (h!23489 (originalCharacters!4003 (h!23490 (t!150030 (t!150030 tokens!457))))))))

(assert (=> b!1641151 d!494213))

(declare-fun d!494215 () Bool)

(assert (=> d!494215 (= (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457)))) (fromListB!937 (t!150030 (t!150030 (t!150030 tokens!457)))))))

(declare-fun bs!395726 () Bool)

(assert (= bs!395726 d!494215))

(declare-fun m!1982525 () Bool)

(assert (=> bs!395726 m!1982525))

(assert (=> b!1641151 d!494215))

(declare-fun d!494217 () Bool)

(declare-fun lt!603648 () C!9208)

(declare-fun apply!4714 (List!18158 Int) C!9208)

(assert (=> d!494217 (= lt!603648 (apply!4714 (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457))))) 0))))

(declare-fun apply!4715 (Conc!6026 Int) C!9208)

(assert (=> d!494217 (= lt!603648 (apply!4715 (c!266879 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457))))) 0))))

(declare-fun e!1052875 () Bool)

(assert (=> d!494217 e!1052875))

(declare-fun res!735533 () Bool)

(assert (=> d!494217 (=> (not res!735533) (not e!1052875))))

(assert (=> d!494217 (= res!735533 (<= 0 0))))

(assert (=> d!494217 (= (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0) lt!603648)))

(declare-fun b!1641664 () Bool)

(assert (=> b!1641664 (= e!1052875 (< 0 (size!14409 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))))))))

(assert (= (and d!494217 res!735533) b!1641664))

(assert (=> d!494217 m!1981791))

(declare-fun m!1982527 () Bool)

(assert (=> d!494217 m!1982527))

(assert (=> d!494217 m!1982527))

(declare-fun m!1982529 () Bool)

(assert (=> d!494217 m!1982529))

(declare-fun m!1982531 () Bool)

(assert (=> d!494217 m!1982531))

(assert (=> b!1641664 m!1981791))

(declare-fun m!1982533 () Bool)

(assert (=> b!1641664 m!1982533))

(assert (=> b!1641151 d!494217))

(assert (=> b!1641151 d!494027))

(declare-fun d!494219 () Bool)

(assert (=> d!494219 (isDefined!2781 (maxPrefix!1382 thiss!17113 rules!1846 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388))))))

(declare-fun lt!603683 () Unit!29726)

(declare-fun e!1052880 () Unit!29726)

(assert (=> d!494219 (= lt!603683 e!1052880)))

(declare-fun c!266988 () Bool)

(assert (=> d!494219 (= c!266988 (isEmpty!11126 (maxPrefix!1382 thiss!17113 rules!1846 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)))))))

(declare-fun lt!603698 () Unit!29726)

(declare-fun lt!603692 () Unit!29726)

(assert (=> d!494219 (= lt!603698 lt!603692)))

(declare-fun e!1052881 () Bool)

(assert (=> d!494219 e!1052881))

(declare-fun res!735539 () Bool)

(assert (=> d!494219 (=> (not res!735539) (not e!1052881))))

(declare-fun lt!603693 () Token!5944)

(declare-datatypes ((Option!3421 0))(
  ( (None!3420) (Some!3420 (v!24535 Rule!6178)) )
))
(declare-fun isDefined!2783 (Option!3421) Bool)

(declare-fun getRuleFromTag!304 (LexerInterface!2818 List!18160 String!20727) Option!3421)

(assert (=> d!494219 (= res!735539 (isDefined!2783 (getRuleFromTag!304 thiss!17113 rules!1846 (tag!3469 (rule!5037 lt!603693)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!304 (LexerInterface!2818 List!18160 List!18158 Token!5944) Unit!29726)

(assert (=> d!494219 (= lt!603692 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!304 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) lt!603693))))

(declare-fun lt!603694 () Unit!29726)

(declare-fun lt!603689 () Unit!29726)

(assert (=> d!494219 (= lt!603694 lt!603689)))

(declare-fun lt!603690 () List!18158)

(assert (=> d!494219 (isPrefix!1447 lt!603690 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!190 (List!18158 List!18158 List!18158) Unit!29726)

(assert (=> d!494219 (= lt!603689 (lemmaPrefixStaysPrefixWhenAddingToSuffix!190 lt!603690 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)))))

(assert (=> d!494219 (= lt!603690 (list!7150 (charsOf!1838 lt!603693)))))

(declare-fun lt!603691 () Unit!29726)

(declare-fun lt!603696 () Unit!29726)

(assert (=> d!494219 (= lt!603691 lt!603696)))

(declare-fun lt!603687 () List!18158)

(declare-fun lt!603688 () List!18158)

(assert (=> d!494219 (isPrefix!1447 lt!603687 (++!4860 lt!603687 lt!603688))))

(assert (=> d!494219 (= lt!603696 (lemmaConcatTwoListThenFirstIsPrefix!972 lt!603687 lt!603688))))

(assert (=> d!494219 (= lt!603688 (_2!10274 (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))))

(assert (=> d!494219 (= lt!603687 (list!7150 (charsOf!1838 lt!603693)))))

(declare-fun seqFromList!2124 (List!18158) BalanceConc!11996)

(assert (=> d!494219 (= lt!603693 (head!3574 (list!7149 (_1!10271 (lex!1302 thiss!17113 rules!1846 (seqFromList!2124 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))))))

(assert (=> d!494219 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494219 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!390 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)) lt!603683)))

(declare-fun b!1641676 () Bool)

(declare-fun Unit!29779 () Unit!29726)

(assert (=> b!1641676 (= e!1052880 Unit!29779)))

(declare-fun b!1641673 () Bool)

(declare-fun res!735538 () Bool)

(assert (=> b!1641673 (=> (not res!735538) (not e!1052881))))

(declare-fun get!5262 (Option!3421) Rule!6178)

(assert (=> b!1641673 (= res!735538 (matchR!2014 (regex!3189 (get!5262 (getRuleFromTag!304 thiss!17113 rules!1846 (tag!3469 (rule!5037 lt!603693))))) (list!7150 (charsOf!1838 lt!603693))))))

(declare-fun b!1641675 () Bool)

(declare-fun Unit!29780 () Unit!29726)

(assert (=> b!1641675 (= e!1052880 Unit!29780)))

(declare-fun lt!603684 () List!18158)

(assert (=> b!1641675 (= lt!603684 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)))))

(declare-fun lt!603695 () Unit!29726)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!198 (LexerInterface!2818 Rule!6178 List!18160 List!18158) Unit!29726)

(assert (=> b!1641675 (= lt!603695 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!198 thiss!17113 (rule!5037 lt!603693) rules!1846 lt!603684))))

(declare-fun maxPrefixOneRule!795 (LexerInterface!2818 Rule!6178 List!18158) Option!3418)

(assert (=> b!1641675 (isEmpty!11126 (maxPrefixOneRule!795 thiss!17113 (rule!5037 lt!603693) lt!603684))))

(declare-fun lt!603697 () Unit!29726)

(assert (=> b!1641675 (= lt!603697 lt!603695)))

(declare-fun lt!603699 () List!18158)

(assert (=> b!1641675 (= lt!603699 (list!7150 (charsOf!1838 lt!603693)))))

(declare-fun lt!603686 () Unit!29726)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!194 (LexerInterface!2818 Rule!6178 List!18158 List!18158) Unit!29726)

(assert (=> b!1641675 (= lt!603686 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!194 thiss!17113 (rule!5037 lt!603693) lt!603699 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388))))))

(assert (=> b!1641675 (not (matchR!2014 (regex!3189 (rule!5037 lt!603693)) lt!603699))))

(declare-fun lt!603685 () Unit!29726)

(assert (=> b!1641675 (= lt!603685 lt!603686)))

(assert (=> b!1641675 false))

(declare-fun b!1641674 () Bool)

(assert (=> b!1641674 (= e!1052881 (= (rule!5037 lt!603693) (get!5262 (getRuleFromTag!304 thiss!17113 rules!1846 (tag!3469 (rule!5037 lt!603693))))))))

(assert (= (and d!494219 res!735539) b!1641673))

(assert (= (and b!1641673 res!735538) b!1641674))

(assert (= (and d!494219 c!266988) b!1641675))

(assert (= (and d!494219 (not c!266988)) b!1641676))

(declare-fun m!1982535 () Bool)

(assert (=> d!494219 m!1982535))

(declare-fun m!1982537 () Bool)

(assert (=> d!494219 m!1982537))

(declare-fun m!1982539 () Bool)

(assert (=> d!494219 m!1982539))

(declare-fun m!1982541 () Bool)

(assert (=> d!494219 m!1982541))

(declare-fun m!1982543 () Bool)

(assert (=> d!494219 m!1982543))

(assert (=> d!494219 m!1982535))

(declare-fun m!1982545 () Bool)

(assert (=> d!494219 m!1982545))

(assert (=> d!494219 m!1981733))

(assert (=> d!494219 m!1981727))

(declare-fun m!1982547 () Bool)

(assert (=> d!494219 m!1982547))

(assert (=> d!494219 m!1981733))

(assert (=> d!494219 m!1981783))

(declare-fun m!1982549 () Bool)

(assert (=> d!494219 m!1982549))

(declare-fun m!1982551 () Bool)

(assert (=> d!494219 m!1982551))

(assert (=> d!494219 m!1982541))

(assert (=> d!494219 m!1981733))

(declare-fun m!1982553 () Bool)

(assert (=> d!494219 m!1982553))

(declare-fun m!1982555 () Bool)

(assert (=> d!494219 m!1982555))

(assert (=> d!494219 m!1982551))

(declare-fun m!1982557 () Bool)

(assert (=> d!494219 m!1982557))

(assert (=> d!494219 m!1981733))

(declare-fun m!1982559 () Bool)

(assert (=> d!494219 m!1982559))

(assert (=> d!494219 m!1982537))

(assert (=> d!494219 m!1982541))

(declare-fun m!1982561 () Bool)

(assert (=> d!494219 m!1982561))

(assert (=> d!494219 m!1981727))

(assert (=> d!494219 m!1981789))

(declare-fun m!1982563 () Bool)

(assert (=> d!494219 m!1982563))

(declare-fun m!1982565 () Bool)

(assert (=> d!494219 m!1982565))

(assert (=> d!494219 m!1982563))

(assert (=> d!494219 m!1981733))

(assert (=> d!494219 m!1981783))

(assert (=> d!494219 m!1982551))

(assert (=> d!494219 m!1981545))

(assert (=> d!494219 m!1982559))

(declare-fun m!1982567 () Bool)

(assert (=> d!494219 m!1982567))

(assert (=> d!494219 m!1982547))

(declare-fun m!1982569 () Bool)

(assert (=> d!494219 m!1982569))

(assert (=> b!1641673 m!1982563))

(assert (=> b!1641673 m!1982539))

(declare-fun m!1982571 () Bool)

(assert (=> b!1641673 m!1982571))

(assert (=> b!1641673 m!1982537))

(assert (=> b!1641673 m!1982539))

(assert (=> b!1641673 m!1982563))

(declare-fun m!1982573 () Bool)

(assert (=> b!1641673 m!1982573))

(assert (=> b!1641673 m!1982537))

(declare-fun m!1982575 () Bool)

(assert (=> b!1641675 m!1982575))

(declare-fun m!1982577 () Bool)

(assert (=> b!1641675 m!1982577))

(assert (=> b!1641675 m!1982537))

(assert (=> b!1641675 m!1982539))

(assert (=> b!1641675 m!1982551))

(declare-fun m!1982579 () Bool)

(assert (=> b!1641675 m!1982579))

(declare-fun m!1982581 () Bool)

(assert (=> b!1641675 m!1982581))

(assert (=> b!1641675 m!1982537))

(assert (=> b!1641675 m!1982575))

(declare-fun m!1982583 () Bool)

(assert (=> b!1641675 m!1982583))

(assert (=> b!1641675 m!1981733))

(assert (=> b!1641675 m!1981783))

(assert (=> b!1641675 m!1982551))

(assert (=> b!1641674 m!1982563))

(assert (=> b!1641674 m!1982563))

(assert (=> b!1641674 m!1982573))

(assert (=> b!1641151 d!494219))

(declare-fun b!1641705 () Bool)

(declare-fun res!735557 () Bool)

(declare-fun e!1052901 () Bool)

(assert (=> b!1641705 (=> res!735557 e!1052901)))

(declare-fun e!1052896 () Bool)

(assert (=> b!1641705 (= res!735557 e!1052896)))

(declare-fun res!735561 () Bool)

(assert (=> b!1641705 (=> (not res!735561) (not e!1052896))))

(declare-fun lt!603702 () Bool)

(assert (=> b!1641705 (= res!735561 lt!603702)))

(declare-fun b!1641706 () Bool)

(declare-fun e!1052899 () Bool)

(declare-fun nullable!1337 (Regex!4517) Bool)

(assert (=> b!1641706 (= e!1052899 (nullable!1337 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641707 () Bool)

(declare-fun e!1052897 () Bool)

(assert (=> b!1641707 (= e!1052897 (not (= (head!3572 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))) (c!266880 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))))))

(declare-fun bm!105727 () Bool)

(declare-fun call!105732 () Bool)

(assert (=> bm!105727 (= call!105732 (isEmpty!11119 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641708 () Bool)

(declare-fun e!1052898 () Bool)

(assert (=> b!1641708 (= e!1052898 (= lt!603702 call!105732))))

(declare-fun b!1641709 () Bool)

(declare-fun derivativeStep!1102 (Regex!4517 C!9208) Regex!4517)

(assert (=> b!1641709 (= e!1052899 (matchR!2014 (derivativeStep!1102 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))) (head!3572 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))) (tail!2408 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))))

(declare-fun b!1641710 () Bool)

(declare-fun e!1052902 () Bool)

(assert (=> b!1641710 (= e!1052902 e!1052897)))

(declare-fun res!735562 () Bool)

(assert (=> b!1641710 (=> res!735562 e!1052897)))

(assert (=> b!1641710 (= res!735562 call!105732)))

(declare-fun b!1641711 () Bool)

(declare-fun e!1052900 () Bool)

(assert (=> b!1641711 (= e!1052900 (not lt!603702))))

(declare-fun b!1641712 () Bool)

(assert (=> b!1641712 (= e!1052896 (= (head!3572 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))) (c!266880 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))))))

(declare-fun b!1641713 () Bool)

(assert (=> b!1641713 (= e!1052901 e!1052902)))

(declare-fun res!735560 () Bool)

(assert (=> b!1641713 (=> (not res!735560) (not e!1052902))))

(assert (=> b!1641713 (= res!735560 (not lt!603702))))

(declare-fun b!1641714 () Bool)

(assert (=> b!1641714 (= e!1052898 e!1052900)))

(declare-fun c!266995 () Bool)

(assert (=> b!1641714 (= c!266995 ((_ is EmptyLang!4517) (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641715 () Bool)

(declare-fun res!735563 () Bool)

(assert (=> b!1641715 (=> (not res!735563) (not e!1052896))))

(assert (=> b!1641715 (= res!735563 (not call!105732))))

(declare-fun b!1641716 () Bool)

(declare-fun res!735556 () Bool)

(assert (=> b!1641716 (=> res!735556 e!1052897)))

(assert (=> b!1641716 (= res!735556 (not (isEmpty!11119 (tail!2408 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))))

(declare-fun b!1641717 () Bool)

(declare-fun res!735558 () Bool)

(assert (=> b!1641717 (=> (not res!735558) (not e!1052896))))

(assert (=> b!1641717 (= res!735558 (isEmpty!11119 (tail!2408 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))))

(declare-fun b!1641718 () Bool)

(declare-fun res!735559 () Bool)

(assert (=> b!1641718 (=> res!735559 e!1052901)))

(assert (=> b!1641718 (= res!735559 (not ((_ is ElementMatch!4517) (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))))))

(assert (=> b!1641718 (= e!1052900 e!1052901)))

(declare-fun d!494221 () Bool)

(assert (=> d!494221 e!1052898))

(declare-fun c!266996 () Bool)

(assert (=> d!494221 (= c!266996 ((_ is EmptyExpr!4517) (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494221 (= lt!603702 e!1052899)))

(declare-fun c!266997 () Bool)

(assert (=> d!494221 (= c!266997 (isEmpty!11119 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun validRegex!1798 (Regex!4517) Bool)

(assert (=> d!494221 (validRegex!1798 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494221 (= (matchR!2014 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))) lt!603702)))

(assert (= (and d!494221 c!266997) b!1641706))

(assert (= (and d!494221 (not c!266997)) b!1641709))

(assert (= (and d!494221 c!266996) b!1641708))

(assert (= (and d!494221 (not c!266996)) b!1641714))

(assert (= (and b!1641714 c!266995) b!1641711))

(assert (= (and b!1641714 (not c!266995)) b!1641718))

(assert (= (and b!1641718 (not res!735559)) b!1641705))

(assert (= (and b!1641705 res!735561) b!1641715))

(assert (= (and b!1641715 res!735563) b!1641717))

(assert (= (and b!1641717 res!735558) b!1641712))

(assert (= (and b!1641705 (not res!735557)) b!1641713))

(assert (= (and b!1641713 res!735560) b!1641710))

(assert (= (and b!1641710 (not res!735562)) b!1641716))

(assert (= (and b!1641716 (not res!735556)) b!1641707))

(assert (= (or b!1641708 b!1641710 b!1641715) bm!105727))

(assert (=> b!1641716 m!1981733))

(declare-fun m!1982585 () Bool)

(assert (=> b!1641716 m!1982585))

(assert (=> b!1641716 m!1982585))

(declare-fun m!1982587 () Bool)

(assert (=> b!1641716 m!1982587))

(assert (=> b!1641712 m!1981733))

(declare-fun m!1982589 () Bool)

(assert (=> b!1641712 m!1982589))

(declare-fun m!1982591 () Bool)

(assert (=> b!1641706 m!1982591))

(assert (=> b!1641707 m!1981733))

(assert (=> b!1641707 m!1982589))

(assert (=> b!1641717 m!1981733))

(assert (=> b!1641717 m!1982585))

(assert (=> b!1641717 m!1982585))

(assert (=> b!1641717 m!1982587))

(assert (=> b!1641709 m!1981733))

(assert (=> b!1641709 m!1982589))

(assert (=> b!1641709 m!1982589))

(declare-fun m!1982593 () Bool)

(assert (=> b!1641709 m!1982593))

(assert (=> b!1641709 m!1981733))

(assert (=> b!1641709 m!1982585))

(assert (=> b!1641709 m!1982593))

(assert (=> b!1641709 m!1982585))

(declare-fun m!1982595 () Bool)

(assert (=> b!1641709 m!1982595))

(assert (=> d!494221 m!1981733))

(declare-fun m!1982597 () Bool)

(assert (=> d!494221 m!1982597))

(declare-fun m!1982599 () Bool)

(assert (=> d!494221 m!1982599))

(assert (=> bm!105727 m!1981733))

(assert (=> bm!105727 m!1982597))

(assert (=> b!1641151 d!494221))

(declare-fun b!1641737 () Bool)

(declare-fun res!735579 () Bool)

(declare-fun e!1052909 () Bool)

(assert (=> b!1641737 (=> (not res!735579) (not e!1052909))))

(declare-fun lt!603716 () Option!3418)

(assert (=> b!1641737 (= res!735579 (< (size!14408 (_2!10274 (get!5260 lt!603716))) (size!14408 (list!7150 lt!603378))))))

(declare-fun b!1641738 () Bool)

(declare-fun res!735584 () Bool)

(assert (=> b!1641738 (=> (not res!735584) (not e!1052909))))

(assert (=> b!1641738 (= res!735584 (= (++!4860 (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603716)))) (_2!10274 (get!5260 lt!603716))) (list!7150 lt!603378)))))

(declare-fun b!1641739 () Bool)

(declare-fun res!735581 () Bool)

(assert (=> b!1641739 (=> (not res!735581) (not e!1052909))))

(assert (=> b!1641739 (= res!735581 (matchR!2014 (regex!3189 (rule!5037 (_1!10274 (get!5260 lt!603716)))) (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603716))))))))

(declare-fun b!1641740 () Bool)

(declare-fun contains!3149 (List!18160 Rule!6178) Bool)

(assert (=> b!1641740 (= e!1052909 (contains!3149 rules!1846 (rule!5037 (_1!10274 (get!5260 lt!603716)))))))

(declare-fun b!1641741 () Bool)

(declare-fun res!735580 () Bool)

(assert (=> b!1641741 (=> (not res!735580) (not e!1052909))))

(declare-fun apply!4716 (TokenValueInjection!6218 BalanceConc!11996) TokenValue!3279)

(assert (=> b!1641741 (= res!735580 (= (value!100559 (_1!10274 (get!5260 lt!603716))) (apply!4716 (transformation!3189 (rule!5037 (_1!10274 (get!5260 lt!603716)))) (seqFromList!2124 (originalCharacters!4003 (_1!10274 (get!5260 lt!603716)))))))))

(declare-fun d!494223 () Bool)

(declare-fun e!1052910 () Bool)

(assert (=> d!494223 e!1052910))

(declare-fun res!735578 () Bool)

(assert (=> d!494223 (=> res!735578 e!1052910)))

(assert (=> d!494223 (= res!735578 (isEmpty!11126 lt!603716))))

(declare-fun e!1052911 () Option!3418)

(assert (=> d!494223 (= lt!603716 e!1052911)))

(declare-fun c!267000 () Bool)

(assert (=> d!494223 (= c!267000 (and ((_ is Cons!18090) rules!1846) ((_ is Nil!18090) (t!150031 rules!1846))))))

(declare-fun lt!603714 () Unit!29726)

(declare-fun lt!603717 () Unit!29726)

(assert (=> d!494223 (= lt!603714 lt!603717)))

(assert (=> d!494223 (isPrefix!1447 (list!7150 lt!603378) (list!7150 lt!603378))))

(declare-fun lemmaIsPrefixRefl!980 (List!18158 List!18158) Unit!29726)

(assert (=> d!494223 (= lt!603717 (lemmaIsPrefixRefl!980 (list!7150 lt!603378) (list!7150 lt!603378)))))

(assert (=> d!494223 (rulesValidInductive!1002 thiss!17113 rules!1846)))

(assert (=> d!494223 (= (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 lt!603378)) lt!603716)))

(declare-fun b!1641742 () Bool)

(declare-fun res!735583 () Bool)

(assert (=> b!1641742 (=> (not res!735583) (not e!1052909))))

(assert (=> b!1641742 (= res!735583 (= (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603716)))) (originalCharacters!4003 (_1!10274 (get!5260 lt!603716)))))))

(declare-fun b!1641743 () Bool)

(assert (=> b!1641743 (= e!1052910 e!1052909)))

(declare-fun res!735582 () Bool)

(assert (=> b!1641743 (=> (not res!735582) (not e!1052909))))

(assert (=> b!1641743 (= res!735582 (isDefined!2781 lt!603716))))

(declare-fun call!105735 () Option!3418)

(declare-fun bm!105730 () Bool)

(assert (=> bm!105730 (= call!105735 (maxPrefixOneRule!795 thiss!17113 (h!23491 rules!1846) (list!7150 lt!603378)))))

(declare-fun b!1641744 () Bool)

(assert (=> b!1641744 (= e!1052911 call!105735)))

(declare-fun b!1641745 () Bool)

(declare-fun lt!603715 () Option!3418)

(declare-fun lt!603713 () Option!3418)

(assert (=> b!1641745 (= e!1052911 (ite (and ((_ is None!3417) lt!603715) ((_ is None!3417) lt!603713)) None!3417 (ite ((_ is None!3417) lt!603713) lt!603715 (ite ((_ is None!3417) lt!603715) lt!603713 (ite (>= (size!14404 (_1!10274 (v!24528 lt!603715))) (size!14404 (_1!10274 (v!24528 lt!603713)))) lt!603715 lt!603713)))))))

(assert (=> b!1641745 (= lt!603715 call!105735)))

(assert (=> b!1641745 (= lt!603713 (maxPrefix!1382 thiss!17113 (t!150031 rules!1846) (list!7150 lt!603378)))))

(assert (= (and d!494223 c!267000) b!1641744))

(assert (= (and d!494223 (not c!267000)) b!1641745))

(assert (= (or b!1641744 b!1641745) bm!105730))

(assert (= (and d!494223 (not res!735578)) b!1641743))

(assert (= (and b!1641743 res!735582) b!1641742))

(assert (= (and b!1641742 res!735583) b!1641737))

(assert (= (and b!1641737 res!735579) b!1641738))

(assert (= (and b!1641738 res!735584) b!1641741))

(assert (= (and b!1641741 res!735580) b!1641739))

(assert (= (and b!1641739 res!735581) b!1641740))

(declare-fun m!1982601 () Bool)

(assert (=> b!1641742 m!1982601))

(declare-fun m!1982603 () Bool)

(assert (=> b!1641742 m!1982603))

(assert (=> b!1641742 m!1982603))

(declare-fun m!1982605 () Bool)

(assert (=> b!1641742 m!1982605))

(assert (=> b!1641745 m!1981779))

(declare-fun m!1982607 () Bool)

(assert (=> b!1641745 m!1982607))

(assert (=> b!1641738 m!1982601))

(assert (=> b!1641738 m!1982603))

(assert (=> b!1641738 m!1982603))

(assert (=> b!1641738 m!1982605))

(assert (=> b!1641738 m!1982605))

(declare-fun m!1982609 () Bool)

(assert (=> b!1641738 m!1982609))

(declare-fun m!1982611 () Bool)

(assert (=> d!494223 m!1982611))

(assert (=> d!494223 m!1981779))

(assert (=> d!494223 m!1981779))

(declare-fun m!1982613 () Bool)

(assert (=> d!494223 m!1982613))

(assert (=> d!494223 m!1981779))

(assert (=> d!494223 m!1981779))

(declare-fun m!1982615 () Bool)

(assert (=> d!494223 m!1982615))

(assert (=> d!494223 m!1982473))

(assert (=> b!1641739 m!1982601))

(assert (=> b!1641739 m!1982603))

(assert (=> b!1641739 m!1982603))

(assert (=> b!1641739 m!1982605))

(assert (=> b!1641739 m!1982605))

(declare-fun m!1982617 () Bool)

(assert (=> b!1641739 m!1982617))

(assert (=> b!1641740 m!1982601))

(declare-fun m!1982619 () Bool)

(assert (=> b!1641740 m!1982619))

(assert (=> b!1641741 m!1982601))

(declare-fun m!1982621 () Bool)

(assert (=> b!1641741 m!1982621))

(assert (=> b!1641741 m!1982621))

(declare-fun m!1982623 () Bool)

(assert (=> b!1641741 m!1982623))

(assert (=> bm!105730 m!1981779))

(declare-fun m!1982625 () Bool)

(assert (=> bm!105730 m!1982625))

(declare-fun m!1982627 () Bool)

(assert (=> b!1641743 m!1982627))

(assert (=> b!1641737 m!1982601))

(declare-fun m!1982629 () Bool)

(assert (=> b!1641737 m!1982629))

(assert (=> b!1641737 m!1981779))

(declare-fun m!1982631 () Bool)

(assert (=> b!1641737 m!1982631))

(assert (=> b!1641151 d!494223))

(declare-fun d!494225 () Bool)

(assert (=> d!494225 (= (isEmpty!11119 (_2!10274 (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))) ((_ is Nil!18088) (_2!10274 (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))))))

(assert (=> b!1641151 d!494225))

(declare-fun b!1641749 () Bool)

(declare-fun e!1052914 () Bool)

(assert (=> b!1641749 (= e!1052914 (>= (size!14408 (++!4860 lt!603381 lt!603376)) (size!14408 lt!603381)))))

(declare-fun b!1641746 () Bool)

(declare-fun e!1052912 () Bool)

(declare-fun e!1052913 () Bool)

(assert (=> b!1641746 (= e!1052912 e!1052913)))

(declare-fun res!735588 () Bool)

(assert (=> b!1641746 (=> (not res!735588) (not e!1052913))))

(assert (=> b!1641746 (= res!735588 (not ((_ is Nil!18088) (++!4860 lt!603381 lt!603376))))))

(declare-fun b!1641747 () Bool)

(declare-fun res!735587 () Bool)

(assert (=> b!1641747 (=> (not res!735587) (not e!1052913))))

(assert (=> b!1641747 (= res!735587 (= (head!3572 lt!603381) (head!3572 (++!4860 lt!603381 lt!603376))))))

(declare-fun d!494227 () Bool)

(assert (=> d!494227 e!1052914))

(declare-fun res!735585 () Bool)

(assert (=> d!494227 (=> res!735585 e!1052914)))

(declare-fun lt!603718 () Bool)

(assert (=> d!494227 (= res!735585 (not lt!603718))))

(assert (=> d!494227 (= lt!603718 e!1052912)))

(declare-fun res!735586 () Bool)

(assert (=> d!494227 (=> res!735586 e!1052912)))

(assert (=> d!494227 (= res!735586 ((_ is Nil!18088) lt!603381))))

(assert (=> d!494227 (= (isPrefix!1447 lt!603381 (++!4860 lt!603381 lt!603376)) lt!603718)))

(declare-fun b!1641748 () Bool)

(assert (=> b!1641748 (= e!1052913 (isPrefix!1447 (tail!2408 lt!603381) (tail!2408 (++!4860 lt!603381 lt!603376))))))

(assert (= (and d!494227 (not res!735586)) b!1641746))

(assert (= (and b!1641746 res!735588) b!1641747))

(assert (= (and b!1641747 res!735587) b!1641748))

(assert (= (and d!494227 (not res!735585)) b!1641749))

(assert (=> b!1641749 m!1981737))

(declare-fun m!1982633 () Bool)

(assert (=> b!1641749 m!1982633))

(assert (=> b!1641749 m!1982513))

(declare-fun m!1982635 () Bool)

(assert (=> b!1641747 m!1982635))

(assert (=> b!1641747 m!1981737))

(declare-fun m!1982637 () Bool)

(assert (=> b!1641747 m!1982637))

(declare-fun m!1982639 () Bool)

(assert (=> b!1641748 m!1982639))

(assert (=> b!1641748 m!1981737))

(declare-fun m!1982641 () Bool)

(assert (=> b!1641748 m!1982641))

(assert (=> b!1641748 m!1982639))

(assert (=> b!1641748 m!1982641))

(declare-fun m!1982643 () Bool)

(assert (=> b!1641748 m!1982643))

(assert (=> b!1641151 d!494227))

(declare-fun d!494229 () Bool)

(assert (=> d!494229 (= (list!7150 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0))) (list!7154 (c!266879 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0)))))))

(declare-fun bs!395727 () Bool)

(assert (= bs!395727 d!494229))

(declare-fun m!1982645 () Bool)

(assert (=> bs!395727 m!1982645))

(assert (=> b!1641151 d!494229))

(declare-fun d!494231 () Bool)

(declare-fun lt!603719 () BalanceConc!11996)

(assert (=> d!494231 (= (list!7150 lt!603719) (printList!933 thiss!17113 (list!7149 (seqFromList!2122 (t!150030 (t!150030 tokens!457))))))))

(assert (=> d!494231 (= lt!603719 (printTailRec!871 thiss!17113 (seqFromList!2122 (t!150030 (t!150030 tokens!457))) 0 (BalanceConc!11997 Empty!6026)))))

(assert (=> d!494231 (= (print!1349 thiss!17113 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))) lt!603719)))

(declare-fun bs!395728 () Bool)

(assert (= bs!395728 d!494231))

(declare-fun m!1982647 () Bool)

(assert (=> bs!395728 m!1982647))

(assert (=> bs!395728 m!1981515))

(assert (=> bs!395728 m!1981997))

(assert (=> bs!395728 m!1981997))

(declare-fun m!1982649 () Bool)

(assert (=> bs!395728 m!1982649))

(assert (=> bs!395728 m!1981515))

(declare-fun m!1982651 () Bool)

(assert (=> bs!395728 m!1982651))

(assert (=> b!1641151 d!494231))

(declare-fun d!494233 () Bool)

(declare-fun e!1052917 () Bool)

(assert (=> d!494233 e!1052917))

(declare-fun res!735591 () Bool)

(assert (=> d!494233 (=> (not res!735591) (not e!1052917))))

(declare-fun lt!603722 () BalanceConc!11998)

(assert (=> d!494233 (= res!735591 (= (list!7149 lt!603722) (Cons!18089 (h!23490 (t!150030 tokens!457)) Nil!18089)))))

(declare-fun singleton!708 (Token!5944) BalanceConc!11998)

(assert (=> d!494233 (= lt!603722 (singleton!708 (h!23490 (t!150030 tokens!457))))))

(assert (=> d!494233 (= (singletonSeq!1656 (h!23490 (t!150030 tokens!457))) lt!603722)))

(declare-fun b!1641752 () Bool)

(assert (=> b!1641752 (= e!1052917 (isBalanced!1832 (c!266881 lt!603722)))))

(assert (= (and d!494233 res!735591) b!1641752))

(declare-fun m!1982653 () Bool)

(assert (=> d!494233 m!1982653))

(declare-fun m!1982655 () Bool)

(assert (=> d!494233 m!1982655))

(declare-fun m!1982657 () Bool)

(assert (=> b!1641752 m!1982657))

(assert (=> b!1641151 d!494233))

(declare-fun d!494235 () Bool)

(declare-fun lt!603723 () BalanceConc!11996)

(assert (=> d!494235 (= (list!7150 lt!603723) (printList!933 thiss!17113 (list!7149 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494235 (= lt!603723 (printTailRec!871 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))) 0 (BalanceConc!11997 Empty!6026)))))

(assert (=> d!494235 (= (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457)))) lt!603723)))

(declare-fun bs!395729 () Bool)

(assert (= bs!395729 d!494235))

(declare-fun m!1982659 () Bool)

(assert (=> bs!395729 m!1982659))

(assert (=> bs!395729 m!1981769))

(assert (=> bs!395729 m!1982345))

(assert (=> bs!395729 m!1982345))

(declare-fun m!1982661 () Bool)

(assert (=> bs!395729 m!1982661))

(assert (=> bs!395729 m!1981769))

(assert (=> bs!395729 m!1981777))

(assert (=> b!1641151 d!494235))

(declare-fun d!494237 () Bool)

(declare-fun lt!603724 () BalanceConc!11996)

(assert (=> d!494237 (= (list!7150 lt!603724) (originalCharacters!4003 (h!23490 (t!150030 (t!150030 tokens!457)))))))

(assert (=> d!494237 (= lt!603724 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (value!100559 (h!23490 (t!150030 (t!150030 tokens!457))))))))

(assert (=> d!494237 (= (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) lt!603724)))

(declare-fun b_lambda!51587 () Bool)

(assert (=> (not b_lambda!51587) (not d!494237)))

(declare-fun t!150071 () Bool)

(declare-fun tb!93967 () Bool)

(assert (=> (and b!1641065 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457))))))) t!150071) tb!93967))

(declare-fun b!1641753 () Bool)

(declare-fun e!1052918 () Bool)

(declare-fun tp!475746 () Bool)

(assert (=> b!1641753 (= e!1052918 (and (inv!23442 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (value!100559 (h!23490 (t!150030 (t!150030 tokens!457))))))) tp!475746))))

(declare-fun result!113458 () Bool)

(assert (=> tb!93967 (= result!113458 (and (inv!23443 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (value!100559 (h!23490 (t!150030 (t!150030 tokens!457)))))) e!1052918))))

(assert (= tb!93967 b!1641753))

(declare-fun m!1982663 () Bool)

(assert (=> b!1641753 m!1982663))

(declare-fun m!1982665 () Bool)

(assert (=> tb!93967 m!1982665))

(assert (=> d!494237 t!150071))

(declare-fun b_and!116405 () Bool)

(assert (= b_and!116397 (and (=> t!150071 result!113458) b_and!116405)))

(declare-fun tb!93969 () Bool)

(declare-fun t!150073 () Bool)

(assert (=> (and b!1641063 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457))))))) t!150073) tb!93969))

(declare-fun result!113460 () Bool)

(assert (= result!113460 result!113458))

(assert (=> d!494237 t!150073))

(declare-fun b_and!116407 () Bool)

(assert (= b_and!116399 (and (=> t!150073 result!113460) b_and!116407)))

(declare-fun tb!93971 () Bool)

(declare-fun t!150075 () Bool)

(assert (=> (and b!1641372 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457))))))) t!150075) tb!93971))

(declare-fun result!113462 () Bool)

(assert (= result!113462 result!113458))

(assert (=> d!494237 t!150075))

(declare-fun b_and!116409 () Bool)

(assert (= b_and!116401 (and (=> t!150075 result!113462) b_and!116409)))

(declare-fun t!150077 () Bool)

(declare-fun tb!93973 () Bool)

(assert (=> (and b!1641390 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457))))))) t!150077) tb!93973))

(declare-fun result!113464 () Bool)

(assert (= result!113464 result!113458))

(assert (=> d!494237 t!150077))

(declare-fun b_and!116411 () Bool)

(assert (= b_and!116403 (and (=> t!150077 result!113464) b_and!116411)))

(declare-fun m!1982667 () Bool)

(assert (=> d!494237 m!1982667))

(declare-fun m!1982669 () Bool)

(assert (=> d!494237 m!1982669))

(assert (=> b!1641151 d!494237))

(declare-fun lt!603725 () tuple2!17738)

(declare-fun e!1052921 () Bool)

(declare-fun b!1641754 () Bool)

(assert (=> b!1641754 (= e!1052921 (= (list!7150 (_2!10271 lt!603725)) (_2!10275 (lexList!853 thiss!17113 rules!1846 (list!7150 lt!603388)))))))

(declare-fun d!494239 () Bool)

(assert (=> d!494239 e!1052921))

(declare-fun res!735594 () Bool)

(assert (=> d!494239 (=> (not res!735594) (not e!1052921))))

(declare-fun e!1052920 () Bool)

(assert (=> d!494239 (= res!735594 e!1052920)))

(declare-fun c!267001 () Bool)

(assert (=> d!494239 (= c!267001 (> (size!14410 (_1!10271 lt!603725)) 0))))

(assert (=> d!494239 (= lt!603725 (lexTailRecV2!576 thiss!17113 rules!1846 lt!603388 (BalanceConc!11997 Empty!6026) lt!603388 (BalanceConc!11999 Empty!6027)))))

(assert (=> d!494239 (= (lex!1302 thiss!17113 rules!1846 lt!603388) lt!603725)))

(declare-fun b!1641755 () Bool)

(declare-fun res!735592 () Bool)

(assert (=> b!1641755 (=> (not res!735592) (not e!1052921))))

(assert (=> b!1641755 (= res!735592 (= (list!7149 (_1!10271 lt!603725)) (_1!10275 (lexList!853 thiss!17113 rules!1846 (list!7150 lt!603388)))))))

(declare-fun b!1641756 () Bool)

(assert (=> b!1641756 (= e!1052920 (= (_2!10271 lt!603725) lt!603388))))

(declare-fun b!1641757 () Bool)

(declare-fun e!1052919 () Bool)

(assert (=> b!1641757 (= e!1052919 (not (isEmpty!11121 (_1!10271 lt!603725))))))

(declare-fun b!1641758 () Bool)

(assert (=> b!1641758 (= e!1052920 e!1052919)))

(declare-fun res!735593 () Bool)

(assert (=> b!1641758 (= res!735593 (< (size!14409 (_2!10271 lt!603725)) (size!14409 lt!603388)))))

(assert (=> b!1641758 (=> (not res!735593) (not e!1052919))))

(assert (= (and d!494239 c!267001) b!1641758))

(assert (= (and d!494239 (not c!267001)) b!1641756))

(assert (= (and b!1641758 res!735593) b!1641757))

(assert (= (and d!494239 res!735594) b!1641755))

(assert (= (and b!1641755 res!735592) b!1641754))

(declare-fun m!1982671 () Bool)

(assert (=> b!1641754 m!1982671))

(assert (=> b!1641754 m!1981783))

(assert (=> b!1641754 m!1981783))

(declare-fun m!1982673 () Bool)

(assert (=> b!1641754 m!1982673))

(declare-fun m!1982675 () Bool)

(assert (=> b!1641758 m!1982675))

(declare-fun m!1982677 () Bool)

(assert (=> b!1641758 m!1982677))

(declare-fun m!1982679 () Bool)

(assert (=> d!494239 m!1982679))

(declare-fun m!1982681 () Bool)

(assert (=> d!494239 m!1982681))

(declare-fun m!1982683 () Bool)

(assert (=> b!1641755 m!1982683))

(assert (=> b!1641755 m!1981783))

(assert (=> b!1641755 m!1981783))

(assert (=> b!1641755 m!1982673))

(declare-fun m!1982685 () Bool)

(assert (=> b!1641757 m!1982685))

(assert (=> b!1641151 d!494239))

(declare-fun d!494241 () Bool)

(assert (=> d!494241 (= (list!7150 lt!603388) (list!7154 (c!266879 lt!603388)))))

(declare-fun bs!395730 () Bool)

(assert (= bs!395730 d!494241))

(declare-fun m!1982687 () Bool)

(assert (=> bs!395730 m!1982687))

(assert (=> b!1641151 d!494241))

(declare-fun d!494243 () Bool)

(assert (=> d!494243 (= (list!7150 lt!603378) (list!7154 (c!266879 lt!603378)))))

(declare-fun bs!395731 () Bool)

(assert (= bs!395731 d!494243))

(declare-fun m!1982689 () Bool)

(assert (=> bs!395731 m!1982689))

(assert (=> b!1641151 d!494243))

(declare-fun d!494245 () Bool)

(declare-fun e!1052922 () Bool)

(assert (=> d!494245 e!1052922))

(declare-fun res!735595 () Bool)

(assert (=> d!494245 (=> (not res!735595) (not e!1052922))))

(assert (=> d!494245 (= res!735595 (isBalanced!1832 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457))))) (h!23490 (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!603726 () BalanceConc!11998)

(assert (=> d!494245 (= lt!603726 (BalanceConc!11999 (prepend!737 (c!266881 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457))))) (h!23490 (t!150030 (t!150030 tokens!457))))))))

(assert (=> d!494245 (= (prepend!735 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 (t!150030 tokens!457)))) lt!603726)))

(declare-fun b!1641759 () Bool)

(assert (=> b!1641759 (= e!1052922 (= (list!7149 lt!603726) (Cons!18089 (h!23490 (t!150030 (t!150030 tokens!457))) (list!7149 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457))))))))))

(assert (= (and d!494245 res!735595) b!1641759))

(declare-fun m!1982691 () Bool)

(assert (=> d!494245 m!1982691))

(assert (=> d!494245 m!1982691))

(declare-fun m!1982693 () Bool)

(assert (=> d!494245 m!1982693))

(declare-fun m!1982695 () Bool)

(assert (=> b!1641759 m!1982695))

(assert (=> b!1641759 m!1981757))

(declare-fun m!1982697 () Bool)

(assert (=> b!1641759 m!1982697))

(assert (=> b!1641151 d!494245))

(assert (=> b!1641151 d!494049))

(declare-fun d!494247 () Bool)

(assert (=> d!494247 (= (list!7149 (_1!10271 lt!603392)) (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!603727 () Unit!29726)

(assert (=> d!494247 (= lt!603727 (choose!9848 (h!23490 (t!150030 (t!150030 tokens!457))) (t!150030 (t!150030 (t!150030 tokens!457))) (_1!10271 lt!603392)))))

(assert (=> d!494247 (= (list!7149 (_1!10271 lt!603392)) (list!7149 (seqFromList!2122 ($colon$colon!351 (t!150030 (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 (t!150030 tokens!457)))))))))

(assert (=> d!494247 (= (seqFromListBHdTlConstructive!264 (h!23490 (t!150030 (t!150030 tokens!457))) (t!150030 (t!150030 (t!150030 tokens!457))) (_1!10271 lt!603392)) lt!603727)))

(declare-fun bs!395732 () Bool)

(assert (= bs!395732 d!494247))

(assert (=> bs!395732 m!1981799))

(declare-fun m!1982699 () Bool)

(assert (=> bs!395732 m!1982699))

(assert (=> bs!395732 m!1981757))

(assert (=> bs!395732 m!1981747))

(declare-fun m!1982701 () Bool)

(assert (=> bs!395732 m!1982701))

(declare-fun m!1982703 () Bool)

(assert (=> bs!395732 m!1982703))

(assert (=> bs!395732 m!1981757))

(declare-fun m!1982705 () Bool)

(assert (=> bs!395732 m!1982705))

(assert (=> bs!395732 m!1982701))

(assert (=> bs!395732 m!1981747))

(assert (=> bs!395732 m!1981751))

(assert (=> bs!395732 m!1982705))

(assert (=> b!1641151 d!494247))

(declare-fun d!494249 () Bool)

(assert (=> d!494249 (= (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7154 (c!266879 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun bs!395733 () Bool)

(assert (= bs!395733 d!494249))

(declare-fun m!1982707 () Bool)

(assert (=> bs!395733 m!1982707))

(assert (=> b!1641151 d!494249))

(declare-fun d!494251 () Bool)

(assert (=> d!494251 (isPrefix!1447 lt!603381 (++!4860 lt!603381 lt!603376))))

(declare-fun lt!603728 () Unit!29726)

(assert (=> d!494251 (= lt!603728 (choose!9847 lt!603381 lt!603376))))

(assert (=> d!494251 (= (lemmaConcatTwoListThenFirstIsPrefix!972 lt!603381 lt!603376) lt!603728)))

(declare-fun bs!395734 () Bool)

(assert (= bs!395734 d!494251))

(assert (=> bs!395734 m!1981737))

(assert (=> bs!395734 m!1981737))

(assert (=> bs!395734 m!1981765))

(declare-fun m!1982709 () Bool)

(assert (=> bs!395734 m!1982709))

(assert (=> b!1641151 d!494251))

(declare-fun b!1641760 () Bool)

(declare-fun res!735597 () Bool)

(declare-fun e!1052923 () Bool)

(assert (=> b!1641760 (=> (not res!735597) (not e!1052923))))

(declare-fun lt!603732 () Option!3418)

(assert (=> b!1641760 (= res!735597 (< (size!14408 (_2!10274 (get!5260 lt!603732))) (size!14408 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))))

(declare-fun b!1641761 () Bool)

(declare-fun res!735602 () Bool)

(assert (=> b!1641761 (=> (not res!735602) (not e!1052923))))

(assert (=> b!1641761 (= res!735602 (= (++!4860 (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603732)))) (_2!10274 (get!5260 lt!603732))) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641762 () Bool)

(declare-fun res!735599 () Bool)

(assert (=> b!1641762 (=> (not res!735599) (not e!1052923))))

(assert (=> b!1641762 (= res!735599 (matchR!2014 (regex!3189 (rule!5037 (_1!10274 (get!5260 lt!603732)))) (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603732))))))))

(declare-fun b!1641763 () Bool)

(assert (=> b!1641763 (= e!1052923 (contains!3149 rules!1846 (rule!5037 (_1!10274 (get!5260 lt!603732)))))))

(declare-fun b!1641764 () Bool)

(declare-fun res!735598 () Bool)

(assert (=> b!1641764 (=> (not res!735598) (not e!1052923))))

(assert (=> b!1641764 (= res!735598 (= (value!100559 (_1!10274 (get!5260 lt!603732))) (apply!4716 (transformation!3189 (rule!5037 (_1!10274 (get!5260 lt!603732)))) (seqFromList!2124 (originalCharacters!4003 (_1!10274 (get!5260 lt!603732)))))))))

(declare-fun d!494253 () Bool)

(declare-fun e!1052924 () Bool)

(assert (=> d!494253 e!1052924))

(declare-fun res!735596 () Bool)

(assert (=> d!494253 (=> res!735596 e!1052924)))

(assert (=> d!494253 (= res!735596 (isEmpty!11126 lt!603732))))

(declare-fun e!1052925 () Option!3418)

(assert (=> d!494253 (= lt!603732 e!1052925)))

(declare-fun c!267002 () Bool)

(assert (=> d!494253 (= c!267002 (and ((_ is Cons!18090) rules!1846) ((_ is Nil!18090) (t!150031 rules!1846))))))

(declare-fun lt!603730 () Unit!29726)

(declare-fun lt!603733 () Unit!29726)

(assert (=> d!494253 (= lt!603730 lt!603733)))

(assert (=> d!494253 (isPrefix!1447 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494253 (= lt!603733 (lemmaIsPrefixRefl!980 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(assert (=> d!494253 (rulesValidInductive!1002 thiss!17113 rules!1846)))

(assert (=> d!494253 (= (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))) lt!603732)))

(declare-fun b!1641765 () Bool)

(declare-fun res!735601 () Bool)

(assert (=> b!1641765 (=> (not res!735601) (not e!1052923))))

(assert (=> b!1641765 (= res!735601 (= (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603732)))) (originalCharacters!4003 (_1!10274 (get!5260 lt!603732)))))))

(declare-fun b!1641766 () Bool)

(assert (=> b!1641766 (= e!1052924 e!1052923)))

(declare-fun res!735600 () Bool)

(assert (=> b!1641766 (=> (not res!735600) (not e!1052923))))

(assert (=> b!1641766 (= res!735600 (isDefined!2781 lt!603732))))

(declare-fun call!105736 () Option!3418)

(declare-fun bm!105731 () Bool)

(assert (=> bm!105731 (= call!105736 (maxPrefixOneRule!795 thiss!17113 (h!23491 rules!1846) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641767 () Bool)

(assert (=> b!1641767 (= e!1052925 call!105736)))

(declare-fun b!1641768 () Bool)

(declare-fun lt!603731 () Option!3418)

(declare-fun lt!603729 () Option!3418)

(assert (=> b!1641768 (= e!1052925 (ite (and ((_ is None!3417) lt!603731) ((_ is None!3417) lt!603729)) None!3417 (ite ((_ is None!3417) lt!603729) lt!603731 (ite ((_ is None!3417) lt!603731) lt!603729 (ite (>= (size!14404 (_1!10274 (v!24528 lt!603731))) (size!14404 (_1!10274 (v!24528 lt!603729)))) lt!603731 lt!603729)))))))

(assert (=> b!1641768 (= lt!603731 call!105736)))

(assert (=> b!1641768 (= lt!603729 (maxPrefix!1382 thiss!17113 (t!150031 rules!1846) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(assert (= (and d!494253 c!267002) b!1641767))

(assert (= (and d!494253 (not c!267002)) b!1641768))

(assert (= (or b!1641767 b!1641768) bm!105731))

(assert (= (and d!494253 (not res!735596)) b!1641766))

(assert (= (and b!1641766 res!735600) b!1641765))

(assert (= (and b!1641765 res!735601) b!1641760))

(assert (= (and b!1641760 res!735597) b!1641761))

(assert (= (and b!1641761 res!735602) b!1641764))

(assert (= (and b!1641764 res!735598) b!1641762))

(assert (= (and b!1641762 res!735599) b!1641763))

(declare-fun m!1982711 () Bool)

(assert (=> b!1641765 m!1982711))

(declare-fun m!1982713 () Bool)

(assert (=> b!1641765 m!1982713))

(assert (=> b!1641765 m!1982713))

(declare-fun m!1982715 () Bool)

(assert (=> b!1641765 m!1982715))

(assert (=> b!1641768 m!1981733))

(declare-fun m!1982717 () Bool)

(assert (=> b!1641768 m!1982717))

(assert (=> b!1641761 m!1982711))

(assert (=> b!1641761 m!1982713))

(assert (=> b!1641761 m!1982713))

(assert (=> b!1641761 m!1982715))

(assert (=> b!1641761 m!1982715))

(declare-fun m!1982719 () Bool)

(assert (=> b!1641761 m!1982719))

(declare-fun m!1982721 () Bool)

(assert (=> d!494253 m!1982721))

(assert (=> d!494253 m!1981733))

(assert (=> d!494253 m!1981733))

(declare-fun m!1982723 () Bool)

(assert (=> d!494253 m!1982723))

(assert (=> d!494253 m!1981733))

(assert (=> d!494253 m!1981733))

(declare-fun m!1982725 () Bool)

(assert (=> d!494253 m!1982725))

(assert (=> d!494253 m!1982473))

(assert (=> b!1641762 m!1982711))

(assert (=> b!1641762 m!1982713))

(assert (=> b!1641762 m!1982713))

(assert (=> b!1641762 m!1982715))

(assert (=> b!1641762 m!1982715))

(declare-fun m!1982727 () Bool)

(assert (=> b!1641762 m!1982727))

(assert (=> b!1641763 m!1982711))

(declare-fun m!1982729 () Bool)

(assert (=> b!1641763 m!1982729))

(assert (=> b!1641764 m!1982711))

(declare-fun m!1982731 () Bool)

(assert (=> b!1641764 m!1982731))

(assert (=> b!1641764 m!1982731))

(declare-fun m!1982733 () Bool)

(assert (=> b!1641764 m!1982733))

(assert (=> bm!105731 m!1981733))

(declare-fun m!1982735 () Bool)

(assert (=> bm!105731 m!1982735))

(declare-fun m!1982737 () Bool)

(assert (=> b!1641766 m!1982737))

(assert (=> b!1641760 m!1982711))

(declare-fun m!1982739 () Bool)

(assert (=> b!1641760 m!1982739))

(assert (=> b!1641760 m!1981733))

(assert (=> b!1641760 m!1982337))

(assert (=> b!1641151 d!494253))

(declare-fun d!494255 () Bool)

(assert (=> d!494255 (= (isDefined!2781 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))) (not (isEmpty!11126 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))))

(declare-fun bs!395735 () Bool)

(assert (= bs!395735 d!494255))

(assert (=> bs!395735 m!1981727))

(declare-fun m!1982741 () Bool)

(assert (=> bs!395735 m!1982741))

(assert (=> b!1641151 d!494255))

(declare-fun d!494257 () Bool)

(declare-fun e!1052927 () Bool)

(assert (=> d!494257 e!1052927))

(declare-fun res!735603 () Bool)

(assert (=> d!494257 (=> (not res!735603) (not e!1052927))))

(assert (=> d!494257 (= res!735603 (= (list!7149 (_1!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 (t!150030 tokens!457))))))) (t!150030 (t!150030 tokens!457))))))

(declare-fun lt!603754 () Unit!29726)

(declare-fun e!1052926 () Unit!29726)

(assert (=> d!494257 (= lt!603754 e!1052926)))

(declare-fun c!267003 () Bool)

(assert (=> d!494257 (= c!267003 (or ((_ is Nil!18089) (t!150030 (t!150030 tokens!457))) ((_ is Nil!18089) (t!150030 (t!150030 (t!150030 tokens!457))))))))

(assert (=> d!494257 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494257 (= (theoremInvertabilityWhenTokenListSeparable!261 thiss!17113 rules!1846 (t!150030 (t!150030 tokens!457))) lt!603754)))

(declare-fun b!1641769 () Bool)

(declare-fun Unit!29795 () Unit!29726)

(assert (=> b!1641769 (= e!1052926 Unit!29795)))

(declare-fun b!1641770 () Bool)

(declare-fun Unit!29796 () Unit!29726)

(assert (=> b!1641770 (= e!1052926 Unit!29796)))

(declare-fun lt!603739 () BalanceConc!11996)

(assert (=> b!1641770 (= lt!603739 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 (t!150030 tokens!457)))))))

(declare-fun lt!603749 () BalanceConc!11996)

(assert (=> b!1641770 (= lt!603749 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!603753 () tuple2!17738)

(assert (=> b!1641770 (= lt!603753 (lex!1302 thiss!17113 rules!1846 lt!603749))))

(declare-fun lt!603742 () List!18158)

(assert (=> b!1641770 (= lt!603742 (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!603737 () List!18158)

(assert (=> b!1641770 (= lt!603737 (list!7150 lt!603749))))

(declare-fun lt!603738 () Unit!29726)

(assert (=> b!1641770 (= lt!603738 (lemmaConcatTwoListThenFirstIsPrefix!972 lt!603742 lt!603737))))

(assert (=> b!1641770 (isPrefix!1447 lt!603742 (++!4860 lt!603742 lt!603737))))

(declare-fun lt!603747 () Unit!29726)

(assert (=> b!1641770 (= lt!603747 lt!603738)))

(declare-fun lt!603743 () Unit!29726)

(assert (=> b!1641770 (= lt!603743 (theoremInvertabilityWhenTokenListSeparable!261 thiss!17113 rules!1846 (t!150030 (t!150030 (t!150030 tokens!457)))))))

(declare-fun lt!603744 () Unit!29726)

(assert (=> b!1641770 (= lt!603744 (seqFromListBHdTlConstructive!264 (h!23490 (t!150030 (t!150030 (t!150030 tokens!457)))) (t!150030 (t!150030 (t!150030 (t!150030 tokens!457)))) (_1!10271 lt!603753)))))

(assert (=> b!1641770 (= (list!7149 (_1!10271 lt!603753)) (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 (t!150030 (t!150030 tokens!457))))) (h!23490 (t!150030 (t!150030 (t!150030 tokens!457)))))))))

(declare-fun lt!603740 () Unit!29726)

(assert (=> b!1641770 (= lt!603740 lt!603744)))

(declare-fun lt!603748 () Option!3418)

(assert (=> b!1641770 (= lt!603748 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 lt!603739)))))

(assert (=> b!1641770 (= (print!1349 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 (t!150030 tokens!457))))) (printTailRec!871 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 (t!150030 tokens!457)))) 0 (BalanceConc!11997 Empty!6026)))))

(declare-fun lt!603735 () Unit!29726)

(declare-fun Unit!29797 () Unit!29726)

(assert (=> b!1641770 (= lt!603735 Unit!29797)))

(declare-fun lt!603734 () Unit!29726)

(assert (=> b!1641770 (= lt!603734 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!390 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457))))) (list!7150 lt!603749)))))

(assert (=> b!1641770 (= (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457))))) (originalCharacters!4003 (h!23490 (t!150030 (t!150030 tokens!457)))))))

(declare-fun lt!603756 () Unit!29726)

(declare-fun Unit!29798 () Unit!29726)

(assert (=> b!1641770 (= lt!603756 Unit!29798)))

(assert (=> b!1641770 (= (list!7150 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 (t!150030 tokens!457))))) 0))) (Cons!18088 (head!3572 (originalCharacters!4003 (h!23490 (t!150030 (t!150030 (t!150030 tokens!457)))))) Nil!18088))))

(declare-fun lt!603741 () Unit!29726)

(declare-fun Unit!29799 () Unit!29726)

(assert (=> b!1641770 (= lt!603741 Unit!29799)))

(assert (=> b!1641770 (= (list!7150 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 (t!150030 tokens!457))))) 0))) (Cons!18088 (head!3572 (list!7150 lt!603749)) Nil!18088))))

(declare-fun lt!603758 () Unit!29726)

(declare-fun Unit!29800 () Unit!29726)

(assert (=> b!1641770 (= lt!603758 Unit!29800)))

(assert (=> b!1641770 (= (list!7150 (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 (t!150030 tokens!457))))) 0))) (Cons!18088 (head!3573 lt!603749) Nil!18088))))

(declare-fun lt!603750 () Unit!29726)

(declare-fun Unit!29801 () Unit!29726)

(assert (=> b!1641770 (= lt!603750 Unit!29801)))

(assert (=> b!1641770 (isDefined!2781 (maxPrefix!1382 thiss!17113 rules!1846 (originalCharacters!4003 (h!23490 (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!603757 () Unit!29726)

(declare-fun Unit!29802 () Unit!29726)

(assert (=> b!1641770 (= lt!603757 Unit!29802)))

(assert (=> b!1641770 (isDefined!2781 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))))))))

(declare-fun lt!603736 () Unit!29726)

(declare-fun Unit!29803 () Unit!29726)

(assert (=> b!1641770 (= lt!603736 Unit!29803)))

(declare-fun lt!603746 () Unit!29726)

(declare-fun Unit!29804 () Unit!29726)

(assert (=> b!1641770 (= lt!603746 Unit!29804)))

(assert (=> b!1641770 (= (_1!10274 (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))))))) (h!23490 (t!150030 (t!150030 tokens!457))))))

(declare-fun lt!603751 () Unit!29726)

(declare-fun Unit!29805 () Unit!29726)

(assert (=> b!1641770 (= lt!603751 Unit!29805)))

(assert (=> b!1641770 (isEmpty!11119 (_2!10274 (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))))))))))

(declare-fun lt!603759 () Unit!29726)

(declare-fun Unit!29806 () Unit!29726)

(assert (=> b!1641770 (= lt!603759 Unit!29806)))

(assert (=> b!1641770 (matchR!2014 (regex!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457))))) (list!7150 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!603745 () Unit!29726)

(declare-fun Unit!29807 () Unit!29726)

(assert (=> b!1641770 (= lt!603745 Unit!29807)))

(assert (=> b!1641770 (= (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))) (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))))

(declare-fun lt!603752 () Unit!29726)

(declare-fun Unit!29808 () Unit!29726)

(assert (=> b!1641770 (= lt!603752 Unit!29808)))

(declare-fun lt!603755 () Unit!29726)

(assert (=> b!1641770 (= lt!603755 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!152 thiss!17113 rules!1846 (h!23490 (t!150030 (t!150030 tokens!457))) (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))) (list!7150 lt!603749)))))

(declare-fun b!1641771 () Bool)

(assert (=> b!1641771 (= e!1052927 (isEmpty!11120 (_2!10271 (lex!1302 thiss!17113 rules!1846 (print!1349 thiss!17113 (seqFromList!2122 (t!150030 (t!150030 tokens!457))))))))))

(assert (= (and d!494257 c!267003) b!1641769))

(assert (= (and d!494257 (not c!267003)) b!1641770))

(assert (= (and d!494257 res!735603) b!1641771))

(assert (=> d!494257 m!1981545))

(assert (=> d!494257 m!1981515))

(assert (=> d!494257 m!1981753))

(declare-fun m!1982743 () Bool)

(assert (=> d!494257 m!1982743))

(declare-fun m!1982745 () Bool)

(assert (=> d!494257 m!1982745))

(assert (=> d!494257 m!1981515))

(assert (=> d!494257 m!1981753))

(declare-fun m!1982747 () Bool)

(assert (=> b!1641770 m!1982747))

(declare-fun m!1982749 () Bool)

(assert (=> b!1641770 m!1982749))

(declare-fun m!1982751 () Bool)

(assert (=> b!1641770 m!1982751))

(assert (=> b!1641770 m!1981791))

(assert (=> b!1641770 m!1982527))

(assert (=> b!1641770 m!1981515))

(declare-fun m!1982753 () Bool)

(assert (=> b!1641770 m!1982753))

(assert (=> b!1641770 m!1981515))

(assert (=> b!1641770 m!1981753))

(declare-fun m!1982755 () Bool)

(assert (=> b!1641770 m!1982755))

(declare-fun m!1982757 () Bool)

(assert (=> b!1641770 m!1982757))

(assert (=> b!1641770 m!1981757))

(declare-fun m!1982759 () Bool)

(assert (=> b!1641770 m!1982759))

(declare-fun m!1982761 () Bool)

(assert (=> b!1641770 m!1982761))

(assert (=> b!1641770 m!1981757))

(declare-fun m!1982763 () Bool)

(assert (=> b!1641770 m!1982763))

(declare-fun m!1982765 () Bool)

(assert (=> b!1641770 m!1982765))

(declare-fun m!1982767 () Bool)

(assert (=> b!1641770 m!1982767))

(assert (=> b!1641770 m!1982753))

(declare-fun m!1982769 () Bool)

(assert (=> b!1641770 m!1982769))

(assert (=> b!1641770 m!1982747))

(declare-fun m!1982771 () Bool)

(assert (=> b!1641770 m!1982771))

(declare-fun m!1982773 () Bool)

(assert (=> b!1641770 m!1982773))

(declare-fun m!1982775 () Bool)

(assert (=> b!1641770 m!1982775))

(assert (=> b!1641770 m!1982767))

(declare-fun m!1982777 () Bool)

(assert (=> b!1641770 m!1982777))

(declare-fun m!1982779 () Bool)

(assert (=> b!1641770 m!1982779))

(assert (=> b!1641770 m!1982527))

(assert (=> b!1641770 m!1982749))

(assert (=> b!1641770 m!1982773))

(declare-fun m!1982781 () Bool)

(assert (=> b!1641770 m!1982781))

(declare-fun m!1982783 () Bool)

(assert (=> b!1641770 m!1982783))

(declare-fun m!1982785 () Bool)

(assert (=> b!1641770 m!1982785))

(assert (=> b!1641770 m!1982527))

(declare-fun m!1982787 () Bool)

(assert (=> b!1641770 m!1982787))

(declare-fun m!1982789 () Bool)

(assert (=> b!1641770 m!1982789))

(assert (=> b!1641770 m!1982787))

(assert (=> b!1641770 m!1982787))

(declare-fun m!1982791 () Bool)

(assert (=> b!1641770 m!1982791))

(assert (=> b!1641770 m!1982749))

(declare-fun m!1982793 () Bool)

(assert (=> b!1641770 m!1982793))

(declare-fun m!1982795 () Bool)

(assert (=> b!1641770 m!1982795))

(assert (=> b!1641770 m!1982765))

(assert (=> b!1641770 m!1982761))

(assert (=> b!1641770 m!1982755))

(assert (=> b!1641770 m!1982783))

(assert (=> b!1641770 m!1981791))

(assert (=> b!1641770 m!1982787))

(declare-fun m!1982797 () Bool)

(assert (=> b!1641770 m!1982797))

(assert (=> b!1641770 m!1982773))

(assert (=> b!1641770 m!1982527))

(declare-fun m!1982799 () Bool)

(assert (=> b!1641770 m!1982799))

(declare-fun m!1982801 () Bool)

(assert (=> b!1641770 m!1982801))

(declare-fun m!1982803 () Bool)

(assert (=> b!1641770 m!1982803))

(assert (=> b!1641770 m!1982795))

(declare-fun m!1982805 () Bool)

(assert (=> b!1641770 m!1982805))

(declare-fun m!1982807 () Bool)

(assert (=> b!1641770 m!1982807))

(declare-fun m!1982809 () Bool)

(assert (=> b!1641770 m!1982809))

(declare-fun m!1982811 () Bool)

(assert (=> b!1641770 m!1982811))

(assert (=> b!1641771 m!1981515))

(assert (=> b!1641771 m!1981515))

(assert (=> b!1641771 m!1981753))

(assert (=> b!1641771 m!1981753))

(assert (=> b!1641771 m!1982743))

(declare-fun m!1982813 () Bool)

(assert (=> b!1641771 m!1982813))

(assert (=> b!1641151 d!494257))

(declare-fun d!494259 () Bool)

(declare-fun lt!603766 () BalanceConc!11996)

(assert (=> d!494259 (= (list!7150 lt!603766) (printListTailRec!376 thiss!17113 (dropList!647 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))) 0) (list!7150 (BalanceConc!11997 Empty!6026))))))

(declare-fun e!1052929 () BalanceConc!11996)

(assert (=> d!494259 (= lt!603766 e!1052929)))

(declare-fun c!267004 () Bool)

(assert (=> d!494259 (= c!267004 (>= 0 (size!14410 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))))))))

(declare-fun e!1052928 () Bool)

(assert (=> d!494259 e!1052928))

(declare-fun res!735604 () Bool)

(assert (=> d!494259 (=> (not res!735604) (not e!1052928))))

(assert (=> d!494259 (= res!735604 (>= 0 0))))

(assert (=> d!494259 (= (printTailRec!871 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))) 0 (BalanceConc!11997 Empty!6026)) lt!603766)))

(declare-fun b!1641772 () Bool)

(assert (=> b!1641772 (= e!1052928 (<= 0 (size!14410 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641773 () Bool)

(assert (=> b!1641773 (= e!1052929 (BalanceConc!11997 Empty!6026))))

(declare-fun b!1641774 () Bool)

(assert (=> b!1641774 (= e!1052929 (printTailRec!871 thiss!17113 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))) (+ 0 1) (++!4864 (BalanceConc!11997 Empty!6026) (charsOf!1838 (apply!4710 (singletonSeq!1656 (h!23490 (t!150030 tokens!457))) 0)))))))

(declare-fun lt!603762 () List!18159)

(assert (=> b!1641774 (= lt!603762 (list!7149 (singletonSeq!1656 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603761 () Unit!29726)

(assert (=> b!1641774 (= lt!603761 (lemmaDropApply!583 lt!603762 0))))

(assert (=> b!1641774 (= (head!3574 (drop!895 lt!603762 0)) (apply!4711 lt!603762 0))))

(declare-fun lt!603764 () Unit!29726)

(assert (=> b!1641774 (= lt!603764 lt!603761)))

(declare-fun lt!603765 () List!18159)

(assert (=> b!1641774 (= lt!603765 (list!7149 (singletonSeq!1656 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!603760 () Unit!29726)

(assert (=> b!1641774 (= lt!603760 (lemmaDropTail!563 lt!603765 0))))

(assert (=> b!1641774 (= (tail!2409 (drop!895 lt!603765 0)) (drop!895 lt!603765 (+ 0 1)))))

(declare-fun lt!603763 () Unit!29726)

(assert (=> b!1641774 (= lt!603763 lt!603760)))

(assert (= (and d!494259 res!735604) b!1641772))

(assert (= (and d!494259 c!267004) b!1641773))

(assert (= (and d!494259 (not c!267004)) b!1641774))

(assert (=> d!494259 m!1981769))

(declare-fun m!1982815 () Bool)

(assert (=> d!494259 m!1982815))

(assert (=> d!494259 m!1982815))

(assert (=> d!494259 m!1982421))

(declare-fun m!1982817 () Bool)

(assert (=> d!494259 m!1982817))

(assert (=> d!494259 m!1982421))

(assert (=> d!494259 m!1981769))

(declare-fun m!1982819 () Bool)

(assert (=> d!494259 m!1982819))

(declare-fun m!1982821 () Bool)

(assert (=> d!494259 m!1982821))

(assert (=> b!1641772 m!1981769))

(assert (=> b!1641772 m!1982819))

(declare-fun m!1982823 () Bool)

(assert (=> b!1641774 m!1982823))

(declare-fun m!1982825 () Bool)

(assert (=> b!1641774 m!1982825))

(declare-fun m!1982827 () Bool)

(assert (=> b!1641774 m!1982827))

(declare-fun m!1982829 () Bool)

(assert (=> b!1641774 m!1982829))

(assert (=> b!1641774 m!1981769))

(assert (=> b!1641774 m!1982345))

(assert (=> b!1641774 m!1981769))

(declare-fun m!1982831 () Bool)

(assert (=> b!1641774 m!1982831))

(declare-fun m!1982833 () Bool)

(assert (=> b!1641774 m!1982833))

(declare-fun m!1982835 () Bool)

(assert (=> b!1641774 m!1982835))

(assert (=> b!1641774 m!1982833))

(declare-fun m!1982837 () Bool)

(assert (=> b!1641774 m!1982837))

(declare-fun m!1982839 () Bool)

(assert (=> b!1641774 m!1982839))

(assert (=> b!1641774 m!1982823))

(assert (=> b!1641774 m!1982831))

(assert (=> b!1641774 m!1982827))

(assert (=> b!1641774 m!1981769))

(assert (=> b!1641774 m!1982829))

(declare-fun m!1982841 () Bool)

(assert (=> b!1641774 m!1982841))

(declare-fun m!1982843 () Bool)

(assert (=> b!1641774 m!1982843))

(declare-fun m!1982845 () Bool)

(assert (=> b!1641774 m!1982845))

(assert (=> b!1641151 d!494259))

(assert (=> b!1641151 d!494085))

(declare-fun d!494261 () Bool)

(declare-fun lt!603769 () C!9208)

(assert (=> d!494261 (= lt!603769 (head!3572 (list!7150 lt!603388)))))

(declare-fun head!3577 (Conc!6026) C!9208)

(assert (=> d!494261 (= lt!603769 (head!3577 (c!266879 lt!603388)))))

(assert (=> d!494261 (not (isEmpty!11120 lt!603388))))

(assert (=> d!494261 (= (head!3573 lt!603388) lt!603769)))

(declare-fun bs!395736 () Bool)

(assert (= bs!395736 d!494261))

(assert (=> bs!395736 m!1981783))

(assert (=> bs!395736 m!1981783))

(assert (=> bs!395736 m!1981787))

(declare-fun m!1982847 () Bool)

(assert (=> bs!395736 m!1982847))

(declare-fun m!1982849 () Bool)

(assert (=> bs!395736 m!1982849))

(assert (=> b!1641151 d!494261))

(declare-fun b!1641775 () Bool)

(declare-fun res!735606 () Bool)

(declare-fun e!1052930 () Bool)

(assert (=> b!1641775 (=> (not res!735606) (not e!1052930))))

(declare-fun lt!603773 () Option!3418)

(assert (=> b!1641775 (= res!735606 (< (size!14408 (_2!10274 (get!5260 lt!603773))) (size!14408 (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))))))

(declare-fun b!1641776 () Bool)

(declare-fun res!735611 () Bool)

(assert (=> b!1641776 (=> (not res!735611) (not e!1052930))))

(assert (=> b!1641776 (= res!735611 (= (++!4860 (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603773)))) (_2!10274 (get!5260 lt!603773))) (originalCharacters!4003 (h!23490 (t!150030 tokens!457)))))))

(declare-fun b!1641777 () Bool)

(declare-fun res!735608 () Bool)

(assert (=> b!1641777 (=> (not res!735608) (not e!1052930))))

(assert (=> b!1641777 (= res!735608 (matchR!2014 (regex!3189 (rule!5037 (_1!10274 (get!5260 lt!603773)))) (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603773))))))))

(declare-fun b!1641778 () Bool)

(assert (=> b!1641778 (= e!1052930 (contains!3149 rules!1846 (rule!5037 (_1!10274 (get!5260 lt!603773)))))))

(declare-fun b!1641779 () Bool)

(declare-fun res!735607 () Bool)

(assert (=> b!1641779 (=> (not res!735607) (not e!1052930))))

(assert (=> b!1641779 (= res!735607 (= (value!100559 (_1!10274 (get!5260 lt!603773))) (apply!4716 (transformation!3189 (rule!5037 (_1!10274 (get!5260 lt!603773)))) (seqFromList!2124 (originalCharacters!4003 (_1!10274 (get!5260 lt!603773)))))))))

(declare-fun d!494263 () Bool)

(declare-fun e!1052931 () Bool)

(assert (=> d!494263 e!1052931))

(declare-fun res!735605 () Bool)

(assert (=> d!494263 (=> res!735605 e!1052931)))

(assert (=> d!494263 (= res!735605 (isEmpty!11126 lt!603773))))

(declare-fun e!1052932 () Option!3418)

(assert (=> d!494263 (= lt!603773 e!1052932)))

(declare-fun c!267005 () Bool)

(assert (=> d!494263 (= c!267005 (and ((_ is Cons!18090) rules!1846) ((_ is Nil!18090) (t!150031 rules!1846))))))

(declare-fun lt!603771 () Unit!29726)

(declare-fun lt!603774 () Unit!29726)

(assert (=> d!494263 (= lt!603771 lt!603774)))

(assert (=> d!494263 (isPrefix!1447 (originalCharacters!4003 (h!23490 (t!150030 tokens!457))) (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))))

(assert (=> d!494263 (= lt!603774 (lemmaIsPrefixRefl!980 (originalCharacters!4003 (h!23490 (t!150030 tokens!457))) (originalCharacters!4003 (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494263 (rulesValidInductive!1002 thiss!17113 rules!1846)))

(assert (=> d!494263 (= (maxPrefix!1382 thiss!17113 rules!1846 (originalCharacters!4003 (h!23490 (t!150030 tokens!457)))) lt!603773)))

(declare-fun b!1641780 () Bool)

(declare-fun res!735610 () Bool)

(assert (=> b!1641780 (=> (not res!735610) (not e!1052930))))

(assert (=> b!1641780 (= res!735610 (= (list!7150 (charsOf!1838 (_1!10274 (get!5260 lt!603773)))) (originalCharacters!4003 (_1!10274 (get!5260 lt!603773)))))))

(declare-fun b!1641781 () Bool)

(assert (=> b!1641781 (= e!1052931 e!1052930)))

(declare-fun res!735609 () Bool)

(assert (=> b!1641781 (=> (not res!735609) (not e!1052930))))

(assert (=> b!1641781 (= res!735609 (isDefined!2781 lt!603773))))

(declare-fun call!105737 () Option!3418)

(declare-fun bm!105732 () Bool)

(assert (=> bm!105732 (= call!105737 (maxPrefixOneRule!795 thiss!17113 (h!23491 rules!1846) (originalCharacters!4003 (h!23490 (t!150030 tokens!457)))))))

(declare-fun b!1641782 () Bool)

(assert (=> b!1641782 (= e!1052932 call!105737)))

(declare-fun b!1641783 () Bool)

(declare-fun lt!603772 () Option!3418)

(declare-fun lt!603770 () Option!3418)

(assert (=> b!1641783 (= e!1052932 (ite (and ((_ is None!3417) lt!603772) ((_ is None!3417) lt!603770)) None!3417 (ite ((_ is None!3417) lt!603770) lt!603772 (ite ((_ is None!3417) lt!603772) lt!603770 (ite (>= (size!14404 (_1!10274 (v!24528 lt!603772))) (size!14404 (_1!10274 (v!24528 lt!603770)))) lt!603772 lt!603770)))))))

(assert (=> b!1641783 (= lt!603772 call!105737)))

(assert (=> b!1641783 (= lt!603770 (maxPrefix!1382 thiss!17113 (t!150031 rules!1846) (originalCharacters!4003 (h!23490 (t!150030 tokens!457)))))))

(assert (= (and d!494263 c!267005) b!1641782))

(assert (= (and d!494263 (not c!267005)) b!1641783))

(assert (= (or b!1641782 b!1641783) bm!105732))

(assert (= (and d!494263 (not res!735605)) b!1641781))

(assert (= (and b!1641781 res!735609) b!1641780))

(assert (= (and b!1641780 res!735610) b!1641775))

(assert (= (and b!1641775 res!735606) b!1641776))

(assert (= (and b!1641776 res!735611) b!1641779))

(assert (= (and b!1641779 res!735607) b!1641777))

(assert (= (and b!1641777 res!735608) b!1641778))

(declare-fun m!1982851 () Bool)

(assert (=> b!1641780 m!1982851))

(declare-fun m!1982853 () Bool)

(assert (=> b!1641780 m!1982853))

(assert (=> b!1641780 m!1982853))

(declare-fun m!1982855 () Bool)

(assert (=> b!1641780 m!1982855))

(declare-fun m!1982857 () Bool)

(assert (=> b!1641783 m!1982857))

(assert (=> b!1641776 m!1982851))

(assert (=> b!1641776 m!1982853))

(assert (=> b!1641776 m!1982853))

(assert (=> b!1641776 m!1982855))

(assert (=> b!1641776 m!1982855))

(declare-fun m!1982859 () Bool)

(assert (=> b!1641776 m!1982859))

(declare-fun m!1982861 () Bool)

(assert (=> d!494263 m!1982861))

(declare-fun m!1982863 () Bool)

(assert (=> d!494263 m!1982863))

(declare-fun m!1982865 () Bool)

(assert (=> d!494263 m!1982865))

(assert (=> d!494263 m!1982473))

(assert (=> b!1641777 m!1982851))

(assert (=> b!1641777 m!1982853))

(assert (=> b!1641777 m!1982853))

(assert (=> b!1641777 m!1982855))

(assert (=> b!1641777 m!1982855))

(declare-fun m!1982867 () Bool)

(assert (=> b!1641777 m!1982867))

(assert (=> b!1641778 m!1982851))

(declare-fun m!1982869 () Bool)

(assert (=> b!1641778 m!1982869))

(assert (=> b!1641779 m!1982851))

(declare-fun m!1982871 () Bool)

(assert (=> b!1641779 m!1982871))

(assert (=> b!1641779 m!1982871))

(declare-fun m!1982873 () Bool)

(assert (=> b!1641779 m!1982873))

(declare-fun m!1982875 () Bool)

(assert (=> bm!105732 m!1982875))

(declare-fun m!1982877 () Bool)

(assert (=> b!1641781 m!1982877))

(assert (=> b!1641775 m!1982851))

(declare-fun m!1982879 () Bool)

(assert (=> b!1641775 m!1982879))

(assert (=> b!1641775 m!1982065))

(assert (=> b!1641151 d!494263))

(declare-fun d!494265 () Bool)

(assert (=> d!494265 (= (list!7149 (_1!10271 lt!603392)) (list!7153 (c!266881 (_1!10271 lt!603392))))))

(declare-fun bs!395737 () Bool)

(assert (= bs!395737 d!494265))

(declare-fun m!1982881 () Bool)

(assert (=> bs!395737 m!1982881))

(assert (=> b!1641151 d!494265))

(assert (=> b!1641151 d!494153))

(declare-fun d!494267 () Bool)

(assert (=> d!494267 (= (get!5260 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))) (v!24528 (maxPrefix!1382 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))))

(assert (=> b!1641151 d!494267))

(declare-fun b!1642028 () Bool)

(declare-fun e!1053073 () Unit!29726)

(declare-fun Unit!29809 () Unit!29726)

(assert (=> b!1642028 (= e!1053073 Unit!29809)))

(declare-fun b!1642029 () Bool)

(assert (=> b!1642029 false))

(declare-fun lt!604346 () Unit!29726)

(declare-fun lt!604306 () Unit!29726)

(assert (=> b!1642029 (= lt!604346 lt!604306)))

(declare-fun lt!604369 () Token!5944)

(assert (=> b!1642029 (= (rule!5037 lt!604369) (rule!5037 (h!23490 (t!150030 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!64 (List!18160 Rule!6178 Rule!6178) Unit!29726)

(assert (=> b!1642029 (= lt!604306 (lemmaSameIndexThenSameElement!64 rules!1846 (rule!5037 lt!604369) (rule!5037 (h!23490 (t!150030 tokens!457)))))))

(declare-fun e!1053068 () Unit!29726)

(declare-fun Unit!29810 () Unit!29726)

(assert (=> b!1642029 (= e!1053068 Unit!29810)))

(declare-fun b!1642030 () Bool)

(declare-fun e!1053072 () Unit!29726)

(declare-fun Unit!29811 () Unit!29726)

(assert (=> b!1642030 (= e!1053072 Unit!29811)))

(declare-fun d!494269 () Bool)

(assert (=> d!494269 (= (maxPrefix!1382 thiss!17113 rules!1846 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388))) (Some!3417 (tuple2!17745 (h!23490 (t!150030 tokens!457)) (list!7150 lt!603388))))))

(declare-fun lt!604311 () Unit!29726)

(declare-fun Unit!29812 () Unit!29726)

(assert (=> d!494269 (= lt!604311 Unit!29812)))

(declare-fun lt!604348 () Unit!29726)

(declare-fun e!1053071 () Unit!29726)

(assert (=> d!494269 (= lt!604348 e!1053071)))

(declare-fun c!267063 () Bool)

(assert (=> d!494269 (= c!267063 (not (= (rule!5037 lt!604369) (rule!5037 (h!23490 (t!150030 tokens!457))))))))

(declare-fun lt!604326 () Unit!29726)

(declare-fun lt!604358 () Unit!29726)

(assert (=> d!494269 (= lt!604326 lt!604358)))

(declare-fun lt!604355 () List!18158)

(assert (=> d!494269 (= (list!7150 lt!603388) lt!604355)))

(declare-fun lt!604345 () List!18158)

(declare-fun lemmaSamePrefixThenSameSuffix!670 (List!18158 List!18158 List!18158 List!18158 List!18158) Unit!29726)

(assert (=> d!494269 (= lt!604358 (lemmaSamePrefixThenSameSuffix!670 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) lt!604355 lt!604345))))

(declare-fun lt!604352 () Unit!29726)

(declare-fun lt!604364 () Unit!29726)

(assert (=> d!494269 (= lt!604352 lt!604364)))

(declare-fun lt!604301 () List!18158)

(declare-fun lt!604338 () List!18158)

(assert (=> d!494269 (= lt!604301 lt!604338)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!171 (List!18158 List!18158 List!18158) Unit!29726)

(assert (=> d!494269 (= lt!604364 (lemmaIsPrefixSameLengthThenSameList!171 lt!604301 lt!604338 lt!604345))))

(assert (=> d!494269 (= lt!604338 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494269 (= lt!604301 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604325 () Unit!29726)

(declare-fun e!1053070 () Unit!29726)

(assert (=> d!494269 (= lt!604325 e!1053070)))

(declare-fun c!267067 () Bool)

(assert (=> d!494269 (= c!267067 (< (size!14409 (charsOf!1838 lt!604369)) (size!14409 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun lt!604367 () Unit!29726)

(assert (=> d!494269 (= lt!604367 e!1053073)))

(declare-fun c!267064 () Bool)

(assert (=> d!494269 (= c!267064 (> (size!14409 (charsOf!1838 lt!604369)) (size!14409 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun lt!604332 () Unit!29726)

(declare-fun lt!604303 () Unit!29726)

(assert (=> d!494269 (= lt!604332 lt!604303)))

(assert (=> d!494269 (matchR!2014 (rulesRegex!577 thiss!17113 rules!1846) (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!48 (LexerInterface!2818 List!18160 List!18158 Token!5944 Rule!6178 List!18158) Unit!29726)

(assert (=> d!494269 (= lt!604303 (lemmaMaxPrefixThenMatchesRulesRegex!48 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (h!23490 (t!150030 tokens!457)) (rule!5037 (h!23490 (t!150030 tokens!457))) Nil!18088))))

(declare-fun lt!604368 () Unit!29726)

(declare-fun lt!604314 () Unit!29726)

(assert (=> d!494269 (= lt!604368 lt!604314)))

(declare-fun lt!604302 () List!18158)

(assert (=> d!494269 (= lt!604355 lt!604302)))

(declare-fun lt!604309 () List!18158)

(declare-fun lt!604304 () List!18158)

(assert (=> d!494269 (= lt!604314 (lemmaSamePrefixThenSameSuffix!670 lt!604309 lt!604355 lt!604304 lt!604302 lt!604345))))

(declare-fun getSuffix!718 (List!18158 List!18158) List!18158)

(assert (=> d!494269 (= lt!604302 (getSuffix!718 lt!604345 (list!7150 (charsOf!1838 lt!604369))))))

(assert (=> d!494269 (= lt!604304 (list!7150 (charsOf!1838 lt!604369)))))

(assert (=> d!494269 (= lt!604309 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604361 () Unit!29726)

(declare-fun lt!604317 () Unit!29726)

(assert (=> d!494269 (= lt!604361 lt!604317)))

(declare-fun lt!604357 () List!18158)

(assert (=> d!494269 (= (maxPrefixOneRule!795 thiss!17113 (rule!5037 lt!604369) lt!604345) (Some!3417 (tuple2!17745 (Token!5945 (apply!4716 (transformation!3189 (rule!5037 lt!604369)) (seqFromList!2124 lt!604357)) (rule!5037 lt!604369) (size!14408 lt!604357) lt!604357) lt!604355)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!237 (LexerInterface!2818 List!18160 List!18158 List!18158 List!18158 Rule!6178) Unit!29726)

(assert (=> d!494269 (= lt!604317 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!237 thiss!17113 rules!1846 lt!604357 lt!604345 lt!604355 (rule!5037 lt!604369)))))

(assert (=> d!494269 (= lt!604357 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604324 () Unit!29726)

(declare-fun lemmaCharactersSize!343 (Token!5944) Unit!29726)

(assert (=> d!494269 (= lt!604324 (lemmaCharactersSize!343 lt!604369))))

(declare-fun lt!604349 () Unit!29726)

(declare-fun lemmaEqSameImage!196 (TokenValueInjection!6218 BalanceConc!11996 BalanceConc!11996) Unit!29726)

(assert (=> d!494269 (= lt!604349 (lemmaEqSameImage!196 (transformation!3189 (rule!5037 lt!604369)) (charsOf!1838 lt!604369) (seqFromList!2124 (originalCharacters!4003 lt!604369))))))

(declare-fun lt!604336 () Unit!29726)

(declare-fun lemmaSemiInverse!411 (TokenValueInjection!6218 BalanceConc!11996) Unit!29726)

(assert (=> d!494269 (= lt!604336 (lemmaSemiInverse!411 (transformation!3189 (rule!5037 lt!604369)) (charsOf!1838 lt!604369)))))

(declare-fun lt!604321 () Unit!29726)

(declare-fun lemmaInv!476 (TokenValueInjection!6218) Unit!29726)

(assert (=> d!494269 (= lt!604321 (lemmaInv!476 (transformation!3189 (rule!5037 lt!604369))))))

(declare-fun lt!604342 () Unit!29726)

(declare-fun lt!604310 () Unit!29726)

(assert (=> d!494269 (= lt!604342 lt!604310)))

(declare-fun lt!604337 () List!18158)

(assert (=> d!494269 (isPrefix!1447 lt!604337 (++!4860 lt!604337 lt!604355))))

(assert (=> d!494269 (= lt!604310 (lemmaConcatTwoListThenFirstIsPrefix!972 lt!604337 lt!604355))))

(assert (=> d!494269 (= lt!604337 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604329 () Unit!29726)

(declare-fun lt!604300 () Unit!29726)

(assert (=> d!494269 (= lt!604329 lt!604300)))

(declare-fun e!1053067 () Bool)

(assert (=> d!494269 e!1053067))

(declare-fun res!735740 () Bool)

(assert (=> d!494269 (=> (not res!735740) (not e!1053067))))

(assert (=> d!494269 (= res!735740 (isDefined!2783 (getRuleFromTag!304 thiss!17113 rules!1846 (tag!3469 (rule!5037 lt!604369)))))))

(assert (=> d!494269 (= lt!604300 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!304 thiss!17113 rules!1846 lt!604345 lt!604369))))

(declare-fun lt!604347 () Option!3418)

(assert (=> d!494269 (= lt!604355 (_2!10274 (get!5260 lt!604347)))))

(assert (=> d!494269 (= lt!604369 (_1!10274 (get!5260 lt!604347)))))

(declare-fun lt!604331 () Unit!29726)

(assert (=> d!494269 (= lt!604331 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!390 thiss!17113 rules!1846 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)))))

(assert (=> d!494269 (= lt!604347 (maxPrefix!1382 thiss!17113 rules!1846 lt!604345))))

(declare-fun lt!604320 () Unit!29726)

(declare-fun lt!604339 () Unit!29726)

(assert (=> d!494269 (= lt!604320 lt!604339)))

(declare-fun lt!604334 () List!18158)

(assert (=> d!494269 (isPrefix!1447 lt!604334 (++!4860 lt!604334 (list!7150 lt!603388)))))

(assert (=> d!494269 (= lt!604339 (lemmaConcatTwoListThenFirstIsPrefix!972 lt!604334 (list!7150 lt!603388)))))

(assert (=> d!494269 (= lt!604334 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(assert (=> d!494269 (= lt!604345 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (list!7150 lt!603388)))))

(assert (=> d!494269 (not (isEmpty!11115 rules!1846))))

(assert (=> d!494269 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!152 thiss!17113 rules!1846 (h!23490 (t!150030 tokens!457)) (rule!5037 (h!23490 (t!150030 tokens!457))) (list!7150 lt!603388)) lt!604311)))

(declare-fun b!1642031 () Bool)

(declare-fun Unit!29813 () Unit!29726)

(assert (=> b!1642031 (= e!1053071 Unit!29813)))

(declare-fun c!267068 () Bool)

(declare-fun getIndex!116 (List!18160 Rule!6178) Int)

(assert (=> b!1642031 (= c!267068 (< (getIndex!116 rules!1846 (rule!5037 (h!23490 (t!150030 tokens!457)))) (getIndex!116 rules!1846 (rule!5037 lt!604369))))))

(declare-fun lt!604307 () Unit!29726)

(declare-fun e!1053069 () Unit!29726)

(assert (=> b!1642031 (= lt!604307 e!1053069)))

(declare-fun c!267066 () Bool)

(assert (=> b!1642031 (= c!267066 (< (getIndex!116 rules!1846 (rule!5037 lt!604369)) (getIndex!116 rules!1846 (rule!5037 (h!23490 (t!150030 tokens!457))))))))

(declare-fun lt!604305 () Unit!29726)

(assert (=> b!1642031 (= lt!604305 e!1053072)))

(declare-fun c!267065 () Bool)

(assert (=> b!1642031 (= c!267065 (= (getIndex!116 rules!1846 (rule!5037 lt!604369)) (getIndex!116 rules!1846 (rule!5037 (h!23490 (t!150030 tokens!457))))))))

(declare-fun lt!604319 () Unit!29726)

(assert (=> b!1642031 (= lt!604319 e!1053068)))

(assert (=> b!1642031 false))

(declare-fun b!1642032 () Bool)

(declare-fun res!735741 () Bool)

(assert (=> b!1642032 (=> (not res!735741) (not e!1053067))))

(assert (=> b!1642032 (= res!735741 (matchR!2014 (regex!3189 (get!5262 (getRuleFromTag!304 thiss!17113 rules!1846 (tag!3469 (rule!5037 lt!604369))))) (list!7150 (charsOf!1838 lt!604369))))))

(declare-fun b!1642033 () Bool)

(declare-fun Unit!29814 () Unit!29726)

(assert (=> b!1642033 (= e!1053071 Unit!29814)))

(declare-fun b!1642034 () Bool)

(declare-fun Unit!29815 () Unit!29726)

(assert (=> b!1642034 (= e!1053068 Unit!29815)))

(declare-fun b!1642035 () Bool)

(declare-fun Unit!29816 () Unit!29726)

(assert (=> b!1642035 (= e!1053070 Unit!29816)))

(declare-fun b!1642036 () Bool)

(assert (=> b!1642036 false))

(declare-fun lt!604341 () Unit!29726)

(declare-fun lt!604327 () Unit!29726)

(assert (=> b!1642036 (= lt!604341 lt!604327)))

(declare-fun lt!604366 () List!18158)

(assert (=> b!1642036 (not (matchR!2014 (regex!3189 (rule!5037 lt!604369)) lt!604366))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!88 (LexerInterface!2818 List!18160 Rule!6178 List!18158 List!18158 Rule!6178) Unit!29726)

(assert (=> b!1642036 (= lt!604327 (lemmaMaxPrefNoSmallerRuleMatches!88 thiss!17113 rules!1846 (rule!5037 (h!23490 (t!150030 tokens!457))) lt!604366 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (rule!5037 lt!604369)))))

(assert (=> b!1642036 (= lt!604366 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun Unit!29817 () Unit!29726)

(assert (=> b!1642036 (= e!1053072 Unit!29817)))

(declare-fun b!1642037 () Bool)

(assert (=> b!1642037 (= e!1053067 (= (rule!5037 lt!604369) (get!5262 (getRuleFromTag!304 thiss!17113 rules!1846 (tag!3469 (rule!5037 lt!604369))))))))

(declare-fun b!1642038 () Bool)

(declare-fun Unit!29818 () Unit!29726)

(assert (=> b!1642038 (= e!1053069 Unit!29818)))

(declare-fun b!1642039 () Bool)

(assert (=> b!1642039 false))

(declare-fun lt!604365 () Unit!29726)

(declare-fun lt!604318 () Unit!29726)

(assert (=> b!1642039 (= lt!604365 lt!604318)))

(declare-fun lt!604354 () List!18158)

(assert (=> b!1642039 (not (matchR!2014 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))) lt!604354))))

(assert (=> b!1642039 (= lt!604318 (lemmaMaxPrefNoSmallerRuleMatches!88 thiss!17113 rules!1846 (rule!5037 lt!604369) lt!604354 lt!604345 (rule!5037 (h!23490 (t!150030 tokens!457)))))))

(assert (=> b!1642039 (= lt!604354 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun Unit!29819 () Unit!29726)

(assert (=> b!1642039 (= e!1053069 Unit!29819)))

(declare-fun b!1642040 () Bool)

(declare-fun Unit!29820 () Unit!29726)

(assert (=> b!1642040 (= e!1053073 Unit!29820)))

(declare-fun lt!604356 () Unit!29726)

(assert (=> b!1642040 (= lt!604356 (lemmaMaxPrefixThenMatchesRulesRegex!48 thiss!17113 rules!1846 lt!604345 lt!604369 (rule!5037 lt!604369) lt!604355))))

(assert (=> b!1642040 (matchR!2014 (rulesRegex!577 thiss!17113 rules!1846) (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604353 () Unit!29726)

(assert (=> b!1642040 (= lt!604353 lt!604356)))

(declare-fun lt!604363 () List!18158)

(assert (=> b!1642040 (= lt!604363 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!604308 () List!18158)

(assert (=> b!1642040 (= lt!604308 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!604359 () List!18158)

(assert (=> b!1642040 (= lt!604359 (getSuffix!718 lt!604345 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457))))))))

(declare-fun lt!604362 () Unit!29726)

(assert (=> b!1642040 (= lt!604362 (lemmaSamePrefixThenSameSuffix!670 lt!604363 (list!7150 lt!603388) lt!604308 lt!604359 lt!604345))))

(assert (=> b!1642040 (= (list!7150 lt!603388) lt!604359)))

(declare-fun lt!604335 () Unit!29726)

(assert (=> b!1642040 (= lt!604335 lt!604362)))

(declare-fun lt!604333 () List!18158)

(assert (=> b!1642040 (= lt!604333 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!604315 () Unit!29726)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!161 (List!18158 List!18158) Unit!29726)

(assert (=> b!1642040 (= lt!604315 (lemmaAddHeadSuffixToPrefixStillPrefix!161 lt!604333 lt!604345))))

(assert (=> b!1642040 (isPrefix!1447 (++!4860 lt!604333 (Cons!18088 (head!3572 (getSuffix!718 lt!604345 lt!604333)) Nil!18088)) lt!604345)))

(declare-fun lt!604340 () Unit!29726)

(assert (=> b!1642040 (= lt!604340 lt!604315)))

(declare-fun lt!604350 () List!18158)

(assert (=> b!1642040 (= lt!604350 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604323 () List!18158)

(assert (=> b!1642040 (= lt!604323 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (Cons!18088 (head!3572 (list!7150 lt!603388)) Nil!18088)))))

(declare-fun lt!604328 () Unit!29726)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!47 (List!18158 List!18158 List!18158) Unit!29726)

(assert (=> b!1642040 (= lt!604328 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!47 lt!604350 lt!604323 lt!604345))))

(assert (=> b!1642040 (isPrefix!1447 lt!604323 lt!604350)))

(declare-fun lt!604330 () Unit!29726)

(assert (=> b!1642040 (= lt!604330 lt!604328)))

(declare-fun lt!604360 () Regex!4517)

(assert (=> b!1642040 (= lt!604360 (rulesRegex!577 thiss!17113 rules!1846))))

(declare-fun lt!604344 () List!18158)

(assert (=> b!1642040 (= lt!604344 (++!4860 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))) (Cons!18088 (head!3572 (list!7150 lt!603388)) Nil!18088)))))

(declare-fun lt!604322 () List!18158)

(assert (=> b!1642040 (= lt!604322 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604343 () Unit!29726)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!48 (Regex!4517 List!18158 List!18158) Unit!29726)

(assert (=> b!1642040 (= lt!604343 (lemmaNotPrefixMatchThenCannotMatchLonger!48 lt!604360 lt!604344 lt!604322))))

(assert (=> b!1642040 (not (matchR!2014 lt!604360 lt!604322))))

(declare-fun lt!604312 () Unit!29726)

(assert (=> b!1642040 (= lt!604312 lt!604343)))

(assert (=> b!1642040 false))

(declare-fun b!1642041 () Bool)

(declare-fun Unit!29821 () Unit!29726)

(assert (=> b!1642041 (= e!1053070 Unit!29821)))

(declare-fun lt!604316 () List!18158)

(assert (=> b!1642041 (= lt!604316 (list!7150 (charsOf!1838 lt!604369)))))

(declare-fun lt!604351 () List!18158)

(assert (=> b!1642041 (= lt!604351 (list!7150 (charsOf!1838 (h!23490 (t!150030 tokens!457)))))))

(declare-fun lt!604313 () Unit!29726)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!138 (LexerInterface!2818 List!18160 Rule!6178 List!18158 List!18158 List!18158 Rule!6178) Unit!29726)

(assert (=> b!1642041 (= lt!604313 (lemmaMaxPrefixOutputsMaxPrefix!138 thiss!17113 rules!1846 (rule!5037 lt!604369) lt!604316 lt!604345 lt!604351 (rule!5037 (h!23490 (t!150030 tokens!457)))))))

(assert (=> b!1642041 (not (matchR!2014 (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))) lt!604351))))

(declare-fun lt!604370 () Unit!29726)

(assert (=> b!1642041 (= lt!604370 lt!604313)))

(assert (=> b!1642041 false))

(assert (= (and d!494269 res!735740) b!1642032))

(assert (= (and b!1642032 res!735741) b!1642037))

(assert (= (and d!494269 c!267064) b!1642040))

(assert (= (and d!494269 (not c!267064)) b!1642028))

(assert (= (and d!494269 c!267067) b!1642041))

(assert (= (and d!494269 (not c!267067)) b!1642035))

(assert (= (and d!494269 c!267063) b!1642031))

(assert (= (and d!494269 (not c!267063)) b!1642033))

(assert (= (and b!1642031 c!267068) b!1642039))

(assert (= (and b!1642031 (not c!267068)) b!1642038))

(assert (= (and b!1642031 c!267066) b!1642036))

(assert (= (and b!1642031 (not c!267066)) b!1642030))

(assert (= (and b!1642031 c!267065) b!1642029))

(assert (= (and b!1642031 (not c!267065)) b!1642034))

(declare-fun m!1983485 () Bool)

(assert (=> b!1642036 m!1983485))

(assert (=> b!1642036 m!1981731))

(assert (=> b!1642036 m!1981731))

(assert (=> b!1642036 m!1981733))

(assert (=> b!1642036 m!1981733))

(declare-fun m!1983487 () Bool)

(assert (=> b!1642036 m!1983487))

(declare-fun m!1983489 () Bool)

(assert (=> b!1642037 m!1983489))

(assert (=> b!1642037 m!1983489))

(declare-fun m!1983491 () Bool)

(assert (=> b!1642037 m!1983491))

(declare-fun m!1983493 () Bool)

(assert (=> b!1642032 m!1983493))

(declare-fun m!1983495 () Bool)

(assert (=> b!1642032 m!1983495))

(assert (=> b!1642032 m!1983489))

(assert (=> b!1642032 m!1983491))

(declare-fun m!1983497 () Bool)

(assert (=> b!1642032 m!1983497))

(assert (=> b!1642032 m!1983493))

(assert (=> b!1642032 m!1983489))

(assert (=> b!1642032 m!1983497))

(declare-fun m!1983499 () Bool)

(assert (=> d!494269 m!1983499))

(assert (=> d!494269 m!1981733))

(assert (=> d!494269 m!1981783))

(assert (=> d!494269 m!1981785))

(declare-fun m!1983501 () Bool)

(assert (=> d!494269 m!1983501))

(assert (=> d!494269 m!1981545))

(declare-fun m!1983503 () Bool)

(assert (=> d!494269 m!1983503))

(declare-fun m!1983505 () Bool)

(assert (=> d!494269 m!1983505))

(assert (=> d!494269 m!1981733))

(assert (=> d!494269 m!1981783))

(assert (=> d!494269 m!1982551))

(assert (=> d!494269 m!1981783))

(declare-fun m!1983507 () Bool)

(assert (=> d!494269 m!1983507))

(assert (=> d!494269 m!1982551))

(assert (=> d!494269 m!1982541))

(declare-fun m!1983509 () Bool)

(assert (=> d!494269 m!1983509))

(declare-fun m!1983511 () Bool)

(assert (=> d!494269 m!1983511))

(assert (=> d!494269 m!1981783))

(assert (=> d!494269 m!1983503))

(assert (=> d!494269 m!1983497))

(declare-fun m!1983513 () Bool)

(assert (=> d!494269 m!1983513))

(assert (=> d!494269 m!1983497))

(declare-fun m!1983515 () Bool)

(assert (=> d!494269 m!1983515))

(declare-fun m!1983517 () Bool)

(assert (=> d!494269 m!1983517))

(declare-fun m!1983519 () Bool)

(assert (=> d!494269 m!1983519))

(declare-fun m!1983521 () Bool)

(assert (=> d!494269 m!1983521))

(declare-fun m!1983523 () Bool)

(assert (=> d!494269 m!1983523))

(assert (=> d!494269 m!1981731))

(assert (=> d!494269 m!1981733))

(declare-fun m!1983525 () Bool)

(assert (=> d!494269 m!1983525))

(assert (=> d!494269 m!1981733))

(assert (=> d!494269 m!1981783))

(assert (=> d!494269 m!1981733))

(declare-fun m!1983527 () Bool)

(assert (=> d!494269 m!1983527))

(assert (=> d!494269 m!1982327))

(assert (=> d!494269 m!1981733))

(declare-fun m!1983529 () Bool)

(assert (=> d!494269 m!1983529))

(declare-fun m!1983531 () Bool)

(assert (=> d!494269 m!1983531))

(assert (=> d!494269 m!1983497))

(assert (=> d!494269 m!1983493))

(assert (=> d!494269 m!1983493))

(declare-fun m!1983533 () Bool)

(assert (=> d!494269 m!1983533))

(assert (=> d!494269 m!1983497))

(assert (=> d!494269 m!1983523))

(declare-fun m!1983535 () Bool)

(assert (=> d!494269 m!1983535))

(assert (=> d!494269 m!1983489))

(declare-fun m!1983537 () Bool)

(assert (=> d!494269 m!1983537))

(assert (=> d!494269 m!1981731))

(assert (=> d!494269 m!1981733))

(declare-fun m!1983539 () Bool)

(assert (=> d!494269 m!1983539))

(declare-fun m!1983541 () Bool)

(assert (=> d!494269 m!1983541))

(declare-fun m!1983543 () Bool)

(assert (=> d!494269 m!1983543))

(assert (=> d!494269 m!1981731))

(assert (=> d!494269 m!1981901))

(assert (=> d!494269 m!1983489))

(assert (=> d!494269 m!1983497))

(assert (=> d!494269 m!1983517))

(declare-fun m!1983545 () Bool)

(assert (=> d!494269 m!1983545))

(assert (=> d!494269 m!1982327))

(declare-fun m!1983547 () Bool)

(assert (=> d!494269 m!1983547))

(declare-fun m!1983549 () Bool)

(assert (=> d!494269 m!1983549))

(declare-fun m!1983551 () Bool)

(assert (=> d!494269 m!1983551))

(assert (=> d!494269 m!1983549))

(declare-fun m!1983553 () Bool)

(assert (=> b!1642039 m!1983553))

(declare-fun m!1983555 () Bool)

(assert (=> b!1642039 m!1983555))

(assert (=> b!1642039 m!1983497))

(assert (=> b!1642039 m!1983497))

(assert (=> b!1642039 m!1983493))

(assert (=> b!1642040 m!1981733))

(declare-fun m!1983557 () Bool)

(assert (=> b!1642040 m!1983557))

(declare-fun m!1983559 () Bool)

(assert (=> b!1642040 m!1983559))

(declare-fun m!1983561 () Bool)

(assert (=> b!1642040 m!1983561))

(assert (=> b!1642040 m!1981731))

(assert (=> b!1642040 m!1983561))

(declare-fun m!1983563 () Bool)

(assert (=> b!1642040 m!1983563))

(assert (=> b!1642040 m!1981783))

(assert (=> b!1642040 m!1981787))

(assert (=> b!1642040 m!1981783))

(declare-fun m!1983565 () Bool)

(assert (=> b!1642040 m!1983565))

(declare-fun m!1983567 () Bool)

(assert (=> b!1642040 m!1983567))

(assert (=> b!1642040 m!1981731))

(assert (=> b!1642040 m!1981733))

(declare-fun m!1983569 () Bool)

(assert (=> b!1642040 m!1983569))

(assert (=> b!1642040 m!1981733))

(declare-fun m!1983571 () Bool)

(assert (=> b!1642040 m!1983571))

(declare-fun m!1983573 () Bool)

(assert (=> b!1642040 m!1983573))

(declare-fun m!1983575 () Bool)

(assert (=> b!1642040 m!1983575))

(assert (=> b!1642040 m!1983497))

(assert (=> b!1642040 m!1983493))

(declare-fun m!1983577 () Bool)

(assert (=> b!1642040 m!1983577))

(assert (=> b!1642040 m!1983573))

(declare-fun m!1983579 () Bool)

(assert (=> b!1642040 m!1983579))

(assert (=> b!1642040 m!1982327))

(assert (=> b!1642040 m!1983493))

(declare-fun m!1983581 () Bool)

(assert (=> b!1642040 m!1983581))

(declare-fun m!1983583 () Bool)

(assert (=> b!1642040 m!1983583))

(assert (=> b!1642040 m!1983497))

(assert (=> b!1642040 m!1982327))

(assert (=> b!1642041 m!1981731))

(declare-fun m!1983585 () Bool)

(assert (=> b!1642041 m!1983585))

(assert (=> b!1642041 m!1983497))

(assert (=> b!1642041 m!1983493))

(declare-fun m!1983587 () Bool)

(assert (=> b!1642041 m!1983587))

(assert (=> b!1642041 m!1981731))

(assert (=> b!1642041 m!1981733))

(assert (=> b!1642041 m!1983497))

(declare-fun m!1983589 () Bool)

(assert (=> b!1642029 m!1983589))

(declare-fun m!1983591 () Bool)

(assert (=> b!1642031 m!1983591))

(declare-fun m!1983593 () Bool)

(assert (=> b!1642031 m!1983593))

(assert (=> b!1641151 d!494269))

(declare-fun d!494383 () Bool)

(assert (=> d!494383 (= (list!7149 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 (t!150030 tokens!457))))) (list!7153 (c!266881 (prepend!735 (seqFromList!2122 (t!150030 (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 (t!150030 tokens!457)))))))))

(declare-fun bs!395761 () Bool)

(assert (= bs!395761 d!494383))

(declare-fun m!1983595 () Bool)

(assert (=> bs!395761 m!1983595))

(assert (=> b!1641151 d!494383))

(declare-fun d!494385 () Bool)

(declare-fun e!1053076 () Bool)

(assert (=> d!494385 e!1053076))

(declare-fun res!735744 () Bool)

(assert (=> d!494385 (=> (not res!735744) (not e!1053076))))

(declare-fun lt!604373 () BalanceConc!11996)

(assert (=> d!494385 (= res!735744 (= (list!7150 lt!604373) (Cons!18088 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0) Nil!18088)))))

(declare-fun singleton!710 (C!9208) BalanceConc!11996)

(assert (=> d!494385 (= lt!604373 (singleton!710 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0)))))

(assert (=> d!494385 (= (singletonSeq!1657 (apply!4708 (charsOf!1838 (h!23490 (t!150030 (t!150030 tokens!457)))) 0)) lt!604373)))

(declare-fun b!1642044 () Bool)

(assert (=> b!1642044 (= e!1053076 (isBalanced!1833 (c!266879 lt!604373)))))

(assert (= (and d!494385 res!735744) b!1642044))

(declare-fun m!1983597 () Bool)

(assert (=> d!494385 m!1983597))

(assert (=> d!494385 m!1981761))

(declare-fun m!1983599 () Bool)

(assert (=> d!494385 m!1983599))

(declare-fun m!1983601 () Bool)

(assert (=> b!1642044 m!1983601))

(assert (=> b!1641151 d!494385))

(declare-fun d!494387 () Bool)

(declare-fun lt!604374 () Int)

(assert (=> d!494387 (= lt!604374 (size!14408 (list!7150 (_2!10271 lt!603447))))))

(assert (=> d!494387 (= lt!604374 (size!14414 (c!266879 (_2!10271 lt!603447))))))

(assert (=> d!494387 (= (size!14409 (_2!10271 lt!603447)) lt!604374)))

(declare-fun bs!395762 () Bool)

(assert (= bs!395762 d!494387))

(assert (=> bs!395762 m!1981917))

(assert (=> bs!395762 m!1981917))

(declare-fun m!1983603 () Bool)

(assert (=> bs!395762 m!1983603))

(declare-fun m!1983605 () Bool)

(assert (=> bs!395762 m!1983605))

(assert (=> b!1641312 d!494387))

(declare-fun d!494389 () Bool)

(declare-fun lt!604375 () Int)

(assert (=> d!494389 (= lt!604375 (size!14408 (list!7150 lt!603200)))))

(assert (=> d!494389 (= lt!604375 (size!14414 (c!266879 lt!603200)))))

(assert (=> d!494389 (= (size!14409 lt!603200) lt!604375)))

(declare-fun bs!395763 () Bool)

(assert (= bs!395763 d!494389))

(assert (=> bs!395763 m!1981503))

(assert (=> bs!395763 m!1981503))

(assert (=> bs!395763 m!1982157))

(declare-fun m!1983607 () Bool)

(assert (=> bs!395763 m!1983607))

(assert (=> b!1641312 d!494389))

(declare-fun d!494391 () Bool)

(declare-fun e!1053077 () Bool)

(assert (=> d!494391 e!1053077))

(declare-fun res!735745 () Bool)

(assert (=> d!494391 (=> (not res!735745) (not e!1053077))))

(declare-fun lt!604376 () BalanceConc!11998)

(assert (=> d!494391 (= res!735745 (= (list!7149 lt!604376) (t!150030 (t!150030 tokens!457))))))

(assert (=> d!494391 (= lt!604376 (BalanceConc!11999 (fromList!389 (t!150030 (t!150030 tokens!457)))))))

(assert (=> d!494391 (= (fromListB!937 (t!150030 (t!150030 tokens!457))) lt!604376)))

(declare-fun b!1642045 () Bool)

(assert (=> b!1642045 (= e!1053077 (isBalanced!1832 (fromList!389 (t!150030 (t!150030 tokens!457)))))))

(assert (= (and d!494391 res!735745) b!1642045))

(declare-fun m!1983609 () Bool)

(assert (=> d!494391 m!1983609))

(declare-fun m!1983611 () Bool)

(assert (=> d!494391 m!1983611))

(assert (=> b!1642045 m!1983611))

(assert (=> b!1642045 m!1983611))

(declare-fun m!1983613 () Bool)

(assert (=> b!1642045 m!1983613))

(assert (=> d!494049 d!494391))

(declare-fun d!494393 () Bool)

(assert (=> d!494393 (= (list!7150 lt!603448) (list!7154 (c!266879 lt!603448)))))

(declare-fun bs!395764 () Bool)

(assert (= bs!395764 d!494393))

(declare-fun m!1983615 () Bool)

(assert (=> bs!395764 m!1983615))

(assert (=> d!494021 d!494393))

(declare-fun d!494395 () Bool)

(declare-fun c!267069 () Bool)

(assert (=> d!494395 (= c!267069 ((_ is Cons!18089) (list!7149 lt!603202)))))

(declare-fun e!1053078 () List!18158)

(assert (=> d!494395 (= (printList!933 thiss!17113 (list!7149 lt!603202)) e!1053078)))

(declare-fun b!1642046 () Bool)

(assert (=> b!1642046 (= e!1053078 (++!4860 (list!7150 (charsOf!1838 (h!23490 (list!7149 lt!603202)))) (printList!933 thiss!17113 (t!150030 (list!7149 lt!603202)))))))

(declare-fun b!1642047 () Bool)

(assert (=> b!1642047 (= e!1053078 Nil!18088)))

(assert (= (and d!494395 c!267069) b!1642046))

(assert (= (and d!494395 (not c!267069)) b!1642047))

(declare-fun m!1983617 () Bool)

(assert (=> b!1642046 m!1983617))

(assert (=> b!1642046 m!1983617))

(declare-fun m!1983619 () Bool)

(assert (=> b!1642046 m!1983619))

(declare-fun m!1983621 () Bool)

(assert (=> b!1642046 m!1983621))

(assert (=> b!1642046 m!1983619))

(assert (=> b!1642046 m!1983621))

(declare-fun m!1983623 () Bool)

(assert (=> b!1642046 m!1983623))

(assert (=> d!494021 d!494395))

(assert (=> d!494021 d!494047))

(declare-fun d!494397 () Bool)

(declare-fun lt!604383 () BalanceConc!11996)

(assert (=> d!494397 (= (list!7150 lt!604383) (printListTailRec!376 thiss!17113 (dropList!647 lt!603202 0) (list!7150 (BalanceConc!11997 Empty!6026))))))

(declare-fun e!1053080 () BalanceConc!11996)

(assert (=> d!494397 (= lt!604383 e!1053080)))

(declare-fun c!267070 () Bool)

(assert (=> d!494397 (= c!267070 (>= 0 (size!14410 lt!603202)))))

(declare-fun e!1053079 () Bool)

(assert (=> d!494397 e!1053079))

(declare-fun res!735746 () Bool)

(assert (=> d!494397 (=> (not res!735746) (not e!1053079))))

(assert (=> d!494397 (= res!735746 (>= 0 0))))

(assert (=> d!494397 (= (printTailRec!871 thiss!17113 lt!603202 0 (BalanceConc!11997 Empty!6026)) lt!604383)))

(declare-fun b!1642048 () Bool)

(assert (=> b!1642048 (= e!1053079 (<= 0 (size!14410 lt!603202)))))

(declare-fun b!1642049 () Bool)

(assert (=> b!1642049 (= e!1053080 (BalanceConc!11997 Empty!6026))))

(declare-fun b!1642050 () Bool)

(assert (=> b!1642050 (= e!1053080 (printTailRec!871 thiss!17113 lt!603202 (+ 0 1) (++!4864 (BalanceConc!11997 Empty!6026) (charsOf!1838 (apply!4710 lt!603202 0)))))))

(declare-fun lt!604379 () List!18159)

(assert (=> b!1642050 (= lt!604379 (list!7149 lt!603202))))

(declare-fun lt!604378 () Unit!29726)

(assert (=> b!1642050 (= lt!604378 (lemmaDropApply!583 lt!604379 0))))

(assert (=> b!1642050 (= (head!3574 (drop!895 lt!604379 0)) (apply!4711 lt!604379 0))))

(declare-fun lt!604381 () Unit!29726)

(assert (=> b!1642050 (= lt!604381 lt!604378)))

(declare-fun lt!604382 () List!18159)

(assert (=> b!1642050 (= lt!604382 (list!7149 lt!603202))))

(declare-fun lt!604377 () Unit!29726)

(assert (=> b!1642050 (= lt!604377 (lemmaDropTail!563 lt!604382 0))))

(assert (=> b!1642050 (= (tail!2409 (drop!895 lt!604382 0)) (drop!895 lt!604382 (+ 0 1)))))

(declare-fun lt!604380 () Unit!29726)

(assert (=> b!1642050 (= lt!604380 lt!604377)))

(assert (= (and d!494397 res!735746) b!1642048))

(assert (= (and d!494397 c!267070) b!1642049))

(assert (= (and d!494397 (not c!267070)) b!1642050))

(declare-fun m!1983625 () Bool)

(assert (=> d!494397 m!1983625))

(assert (=> d!494397 m!1983625))

(assert (=> d!494397 m!1982421))

(declare-fun m!1983627 () Bool)

(assert (=> d!494397 m!1983627))

(assert (=> d!494397 m!1982421))

(declare-fun m!1983631 () Bool)

(assert (=> d!494397 m!1983631))

(declare-fun m!1983633 () Bool)

(assert (=> d!494397 m!1983633))

(assert (=> b!1642048 m!1983631))

(declare-fun m!1983637 () Bool)

(assert (=> b!1642050 m!1983637))

(declare-fun m!1983639 () Bool)

(assert (=> b!1642050 m!1983639))

(declare-fun m!1983643 () Bool)

(assert (=> b!1642050 m!1983643))

(declare-fun m!1983645 () Bool)

(assert (=> b!1642050 m!1983645))

(assert (=> b!1642050 m!1981521))

(declare-fun m!1983647 () Bool)

(assert (=> b!1642050 m!1983647))

(declare-fun m!1983649 () Bool)

(assert (=> b!1642050 m!1983649))

(declare-fun m!1983651 () Bool)

(assert (=> b!1642050 m!1983651))

(assert (=> b!1642050 m!1983649))

(declare-fun m!1983653 () Bool)

(assert (=> b!1642050 m!1983653))

(declare-fun m!1983657 () Bool)

(assert (=> b!1642050 m!1983657))

(assert (=> b!1642050 m!1983637))

(assert (=> b!1642050 m!1983647))

(assert (=> b!1642050 m!1983643))

(assert (=> b!1642050 m!1983645))

(declare-fun m!1983659 () Bool)

(assert (=> b!1642050 m!1983659))

(declare-fun m!1983661 () Bool)

(assert (=> b!1642050 m!1983661))

(declare-fun m!1983663 () Bool)

(assert (=> b!1642050 m!1983663))

(assert (=> d!494021 d!494397))

(declare-fun d!494401 () Bool)

(declare-fun res!735747 () Bool)

(declare-fun e!1053082 () Bool)

(assert (=> d!494401 (=> res!735747 e!1053082)))

(assert (=> d!494401 (= res!735747 (or (not ((_ is Cons!18089) (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))) (not ((_ is Cons!18089) (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))))))))

(assert (=> d!494401 (= (tokensListTwoByTwoPredicateSeparableList!511 thiss!17113 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))) rules!1846) e!1053082)))

(declare-fun b!1642051 () Bool)

(declare-fun e!1053081 () Bool)

(assert (=> b!1642051 (= e!1053082 e!1053081)))

(declare-fun res!735748 () Bool)

(assert (=> b!1642051 (=> (not res!735748) (not e!1053081))))

(assert (=> b!1642051 (= res!735748 (separableTokensPredicate!760 thiss!17113 (h!23490 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)))) (h!23490 (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))) rules!1846))))

(declare-fun lt!604388 () Unit!29726)

(declare-fun Unit!29822 () Unit!29726)

(assert (=> b!1642051 (= lt!604388 Unit!29822)))

(assert (=> b!1642051 (> (size!14409 (charsOf!1838 (h!23490 (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))))) 0)))

(declare-fun lt!604390 () Unit!29726)

(declare-fun Unit!29823 () Unit!29726)

(assert (=> b!1642051 (= lt!604390 Unit!29823)))

(assert (=> b!1642051 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))))))

(declare-fun lt!604391 () Unit!29726)

(declare-fun Unit!29824 () Unit!29726)

(assert (=> b!1642051 (= lt!604391 Unit!29824)))

(assert (=> b!1642051 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)))))))

(declare-fun lt!604387 () Unit!29726)

(declare-fun lt!604386 () Unit!29726)

(assert (=> b!1642051 (= lt!604387 lt!604386)))

(assert (=> b!1642051 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))))))

(assert (=> b!1642051 (= lt!604386 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!589 thiss!17113 rules!1846 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))) (h!23490 (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)))))))))

(declare-fun lt!604389 () Unit!29726)

(declare-fun lt!604385 () Unit!29726)

(assert (=> b!1642051 (= lt!604389 lt!604385)))

(assert (=> b!1642051 (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)))))))

(assert (=> b!1642051 (= lt!604385 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!589 thiss!17113 rules!1846 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))) (h!23490 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))))))

(declare-fun b!1642052 () Bool)

(assert (=> b!1642052 (= e!1053081 (tokensListTwoByTwoPredicateSeparableList!511 thiss!17113 (Cons!18089 (h!23490 (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457))))) (t!150030 (t!150030 (Cons!18089 (h!23490 (t!150030 tokens!457)) (t!150030 (t!150030 tokens!457)))))) rules!1846))))

(assert (= (and d!494401 (not res!735747)) b!1642051))

(assert (= (and b!1642051 res!735748) b!1642052))

(declare-fun m!1983667 () Bool)

(assert (=> b!1642051 m!1983667))

(declare-fun m!1983669 () Bool)

(assert (=> b!1642051 m!1983669))

(declare-fun m!1983671 () Bool)

(assert (=> b!1642051 m!1983671))

(declare-fun m!1983673 () Bool)

(assert (=> b!1642051 m!1983673))

(assert (=> b!1642051 m!1983669))

(declare-fun m!1983675 () Bool)

(assert (=> b!1642051 m!1983675))

(declare-fun m!1983677 () Bool)

(assert (=> b!1642051 m!1983677))

(declare-fun m!1983679 () Bool)

(assert (=> b!1642051 m!1983679))

(declare-fun m!1983681 () Bool)

(assert (=> b!1642052 m!1983681))

(assert (=> b!1641297 d!494401))

(declare-fun d!494405 () Bool)

(assert (=> d!494405 (= (list!7150 (_2!10271 lt!603447)) (list!7154 (c!266879 (_2!10271 lt!603447))))))

(declare-fun bs!395767 () Bool)

(assert (= bs!395767 d!494405))

(declare-fun m!1983683 () Bool)

(assert (=> bs!395767 m!1983683))

(assert (=> b!1641308 d!494405))

(assert (=> b!1641308 d!494127))

(assert (=> b!1641308 d!494035))

(declare-fun d!494407 () Bool)

(assert (=> d!494407 (= (head!3572 lt!603204) (h!23489 lt!603204))))

(assert (=> b!1641179 d!494407))

(declare-fun d!494409 () Bool)

(assert (=> d!494409 (= (head!3572 lt!603195) (h!23489 lt!603195))))

(assert (=> b!1641179 d!494409))

(assert (=> b!1641208 d!494131))

(declare-fun d!494411 () Bool)

(assert (=> d!494411 (= (isEmpty!11119 (originalCharacters!4003 (h!23490 tokens!457))) ((_ is Nil!18088) (originalCharacters!4003 (h!23490 tokens!457))))))

(assert (=> d!494055 d!494411))

(declare-fun b!1642053 () Bool)

(declare-fun e!1053083 () List!18159)

(assert (=> b!1642053 (= e!1053083 Nil!18089)))

(declare-fun b!1642054 () Bool)

(declare-fun e!1053084 () List!18159)

(assert (=> b!1642054 (= e!1053083 e!1053084)))

(declare-fun c!267072 () Bool)

(assert (=> b!1642054 (= c!267072 ((_ is Leaf!8842) (c!266881 (_1!10271 lt!603201))))))

(declare-fun d!494413 () Bool)

(declare-fun c!267071 () Bool)

(assert (=> d!494413 (= c!267071 ((_ is Empty!6027) (c!266881 (_1!10271 lt!603201))))))

(assert (=> d!494413 (= (list!7153 (c!266881 (_1!10271 lt!603201))) e!1053083)))

(declare-fun b!1642056 () Bool)

(assert (=> b!1642056 (= e!1053084 (++!4863 (list!7153 (left!14503 (c!266881 (_1!10271 lt!603201)))) (list!7153 (right!14833 (c!266881 (_1!10271 lt!603201))))))))

(declare-fun b!1642055 () Bool)

(assert (=> b!1642055 (= e!1053084 (list!7155 (xs!8863 (c!266881 (_1!10271 lt!603201)))))))

(assert (= (and d!494413 c!267071) b!1642053))

(assert (= (and d!494413 (not c!267071)) b!1642054))

(assert (= (and b!1642054 c!267072) b!1642055))

(assert (= (and b!1642054 (not c!267072)) b!1642056))

(declare-fun m!1983685 () Bool)

(assert (=> b!1642056 m!1983685))

(declare-fun m!1983687 () Bool)

(assert (=> b!1642056 m!1983687))

(assert (=> b!1642056 m!1983685))

(assert (=> b!1642056 m!1983687))

(declare-fun m!1983689 () Bool)

(assert (=> b!1642056 m!1983689))

(declare-fun m!1983691 () Bool)

(assert (=> b!1642055 m!1983691))

(assert (=> d!493967 d!494413))

(declare-fun d!494415 () Bool)

(declare-fun lt!604392 () Int)

(assert (=> d!494415 (>= lt!604392 0)))

(declare-fun e!1053085 () Int)

(assert (=> d!494415 (= lt!604392 e!1053085)))

(declare-fun c!267073 () Bool)

(assert (=> d!494415 (= c!267073 ((_ is Nil!18088) lt!603195))))

(assert (=> d!494415 (= (size!14408 lt!603195) lt!604392)))

(declare-fun b!1642057 () Bool)

(assert (=> b!1642057 (= e!1053085 0)))

(declare-fun b!1642058 () Bool)

(assert (=> b!1642058 (= e!1053085 (+ 1 (size!14408 (t!150029 lt!603195))))))

(assert (= (and d!494415 c!267073) b!1642057))

(assert (= (and d!494415 (not c!267073)) b!1642058))

(declare-fun m!1983693 () Bool)

(assert (=> b!1642058 m!1983693))

(assert (=> b!1641181 d!494415))

(assert (=> b!1641181 d!494093))

(declare-fun d!494417 () Bool)

(declare-fun c!267076 () Bool)

(assert (=> d!494417 (= c!267076 ((_ is Nil!18088) lt!603454))))

(declare-fun e!1053088 () (InoxSet C!9208))

(assert (=> d!494417 (= (content!2503 lt!603454) e!1053088)))

(declare-fun b!1642063 () Bool)

(assert (=> b!1642063 (= e!1053088 ((as const (Array C!9208 Bool)) false))))

(declare-fun b!1642064 () Bool)

(assert (=> b!1642064 (= e!1053088 ((_ map or) (store ((as const (Array C!9208 Bool)) false) (h!23489 lt!603454) true) (content!2503 (t!150029 lt!603454))))))

(assert (= (and d!494417 c!267076) b!1642063))

(assert (= (and d!494417 (not c!267076)) b!1642064))

(declare-fun m!1983695 () Bool)

(assert (=> b!1642064 m!1983695))

(declare-fun m!1983697 () Bool)

(assert (=> b!1642064 m!1983697))

(assert (=> d!494029 d!494417))

(declare-fun d!494419 () Bool)

(declare-fun c!267077 () Bool)

(assert (=> d!494419 (= c!267077 ((_ is Nil!18088) lt!603204))))

(declare-fun e!1053089 () (InoxSet C!9208))

(assert (=> d!494419 (= (content!2503 lt!603204) e!1053089)))

(declare-fun b!1642065 () Bool)

(assert (=> b!1642065 (= e!1053089 ((as const (Array C!9208 Bool)) false))))

(declare-fun b!1642066 () Bool)

(assert (=> b!1642066 (= e!1053089 ((_ map or) (store ((as const (Array C!9208 Bool)) false) (h!23489 lt!603204) true) (content!2503 (t!150029 lt!603204))))))

(assert (= (and d!494419 c!267077) b!1642065))

(assert (= (and d!494419 (not c!267077)) b!1642066))

(declare-fun m!1983699 () Bool)

(assert (=> b!1642066 m!1983699))

(assert (=> b!1642066 m!1982483))

(assert (=> d!494029 d!494419))

(declare-fun d!494421 () Bool)

(declare-fun c!267078 () Bool)

(assert (=> d!494421 (= c!267078 ((_ is Nil!18088) lt!603205))))

(declare-fun e!1053090 () (InoxSet C!9208))

(assert (=> d!494421 (= (content!2503 lt!603205) e!1053090)))

(declare-fun b!1642067 () Bool)

(assert (=> b!1642067 (= e!1053090 ((as const (Array C!9208 Bool)) false))))

(declare-fun b!1642068 () Bool)

(assert (=> b!1642068 (= e!1053090 ((_ map or) (store ((as const (Array C!9208 Bool)) false) (h!23489 lt!603205) true) (content!2503 (t!150029 lt!603205))))))

(assert (= (and d!494421 c!267078) b!1642067))

(assert (= (and d!494421 (not c!267078)) b!1642068))

(declare-fun m!1983701 () Bool)

(assert (=> b!1642068 m!1983701))

(declare-fun m!1983703 () Bool)

(assert (=> b!1642068 m!1983703))

(assert (=> d!494029 d!494421))

(declare-fun d!494423 () Bool)

(declare-fun lt!604395 () Int)

(assert (=> d!494423 (= lt!604395 (size!14413 (list!7149 (_1!10271 lt!603447))))))

(declare-fun size!14416 (Conc!6027) Int)

(assert (=> d!494423 (= lt!604395 (size!14416 (c!266881 (_1!10271 lt!603447))))))

(assert (=> d!494423 (= (size!14410 (_1!10271 lt!603447)) lt!604395)))

(declare-fun bs!395768 () Bool)

(assert (= bs!395768 d!494423))

(assert (=> bs!395768 m!1981929))

(assert (=> bs!395768 m!1981929))

(declare-fun m!1983705 () Bool)

(assert (=> bs!395768 m!1983705))

(declare-fun m!1983707 () Bool)

(assert (=> bs!395768 m!1983707))

(assert (=> d!494019 d!494423))

(declare-fun b!1642241 () Bool)

(declare-fun e!1053183 () Bool)

(declare-fun lt!604541 () tuple2!17738)

(declare-fun lexRec!369 (LexerInterface!2818 List!18160 BalanceConc!11996) tuple2!17738)

(assert (=> b!1642241 (= e!1053183 (= (list!7150 (_2!10271 lt!604541)) (list!7150 (_2!10271 (lexRec!369 thiss!17113 rules!1846 lt!603200)))))))

(declare-fun b!1642242 () Bool)

(declare-fun e!1053182 () tuple2!17738)

(assert (=> b!1642242 (= e!1053182 (tuple2!17739 (BalanceConc!11999 Empty!6027) lt!603200))))

(declare-datatypes ((tuple2!17750 0))(
  ( (tuple2!17751 (_1!10277 Token!5944) (_2!10277 BalanceConc!11996)) )
))
(declare-datatypes ((Option!3422 0))(
  ( (None!3421) (Some!3421 (v!24536 tuple2!17750)) )
))
(declare-fun lt!604531 () Option!3422)

(declare-fun b!1642243 () Bool)

(declare-fun lt!604528 () tuple2!17738)

(assert (=> b!1642243 (= lt!604528 (lexRec!369 thiss!17113 rules!1846 (_2!10277 (v!24536 lt!604531))))))

(declare-fun e!1053184 () tuple2!17738)

(assert (=> b!1642243 (= e!1053184 (tuple2!17739 (prepend!735 (_1!10271 lt!604528) (_1!10277 (v!24536 lt!604531))) (_2!10271 lt!604528)))))

(declare-fun lt!604530 () Option!3422)

(declare-fun lt!604525 () tuple2!17738)

(declare-fun b!1642244 () Bool)

(assert (=> b!1642244 (= lt!604525 (lexRec!369 thiss!17113 rules!1846 (_2!10277 (v!24536 lt!604530))))))

(declare-fun e!1053181 () tuple2!17738)

(assert (=> b!1642244 (= e!1053181 (tuple2!17739 (prepend!735 (_1!10271 lt!604525) (_1!10277 (v!24536 lt!604530))) (_2!10271 lt!604525)))))

(declare-fun b!1642245 () Bool)

(assert (=> b!1642245 (= e!1053181 (tuple2!17739 (BalanceConc!11999 Empty!6027) lt!603200))))

(declare-fun b!1642246 () Bool)

(declare-fun lt!604522 () BalanceConc!11996)

(assert (=> b!1642246 (= e!1053184 (tuple2!17739 (BalanceConc!11999 Empty!6027) lt!604522))))

(declare-fun lt!604538 () Option!3422)

(declare-fun lt!604539 () BalanceConc!11996)

(declare-fun b!1642247 () Bool)

(declare-fun append!552 (BalanceConc!11998 Token!5944) BalanceConc!11998)

(assert (=> b!1642247 (= e!1053182 (lexTailRecV2!576 thiss!17113 rules!1846 lt!603200 lt!604539 (_2!10277 (v!24536 lt!604538)) (append!552 (BalanceConc!11999 Empty!6027) (_1!10277 (v!24536 lt!604538)))))))

(declare-fun lt!604513 () tuple2!17738)

(assert (=> b!1642247 (= lt!604513 (lexRec!369 thiss!17113 rules!1846 (_2!10277 (v!24536 lt!604538))))))

(declare-fun lt!604529 () List!18158)

(assert (=> b!1642247 (= lt!604529 (list!7150 (BalanceConc!11997 Empty!6026)))))

(declare-fun lt!604535 () List!18158)

(assert (=> b!1642247 (= lt!604535 (list!7150 (charsOf!1838 (_1!10277 (v!24536 lt!604538)))))))

(declare-fun lt!604515 () List!18158)

(assert (=> b!1642247 (= lt!604515 (list!7150 (_2!10277 (v!24536 lt!604538))))))

(declare-fun lt!604544 () Unit!29726)

(declare-fun lemmaConcatAssociativity!1014 (List!18158 List!18158 List!18158) Unit!29726)

(assert (=> b!1642247 (= lt!604544 (lemmaConcatAssociativity!1014 lt!604529 lt!604535 lt!604515))))

(assert (=> b!1642247 (= (++!4860 (++!4860 lt!604529 lt!604535) lt!604515) (++!4860 lt!604529 (++!4860 lt!604535 lt!604515)))))

(declare-fun lt!604514 () Unit!29726)

(assert (=> b!1642247 (= lt!604514 lt!604544)))

(declare-fun maxPrefixZipperSequence!711 (LexerInterface!2818 List!18160 BalanceConc!11996) Option!3422)

(assert (=> b!1642247 (= lt!604530 (maxPrefixZipperSequence!711 thiss!17113 rules!1846 lt!603200))))

(declare-fun c!267114 () Bool)

(assert (=> b!1642247 (= c!267114 ((_ is Some!3421) lt!604530))))

(assert (=> b!1642247 (= (lexRec!369 thiss!17113 rules!1846 lt!603200) e!1053181)))

(declare-fun lt!604534 () Unit!29726)

(declare-fun Unit!29825 () Unit!29726)

(assert (=> b!1642247 (= lt!604534 Unit!29825)))

(declare-fun lt!604532 () List!18159)

(assert (=> b!1642247 (= lt!604532 (list!7149 (BalanceConc!11999 Empty!6027)))))

(declare-fun lt!604516 () List!18159)

(assert (=> b!1642247 (= lt!604516 (Cons!18089 (_1!10277 (v!24536 lt!604538)) Nil!18089))))

(declare-fun lt!604526 () List!18159)

(assert (=> b!1642247 (= lt!604526 (list!7149 (_1!10271 lt!604513)))))

(declare-fun lt!604542 () Unit!29726)

(declare-fun lemmaConcatAssociativity!1015 (List!18159 List!18159 List!18159) Unit!29726)

(assert (=> b!1642247 (= lt!604542 (lemmaConcatAssociativity!1015 lt!604532 lt!604516 lt!604526))))

(assert (=> b!1642247 (= (++!4863 (++!4863 lt!604532 lt!604516) lt!604526) (++!4863 lt!604532 (++!4863 lt!604516 lt!604526)))))

(declare-fun lt!604545 () Unit!29726)

(assert (=> b!1642247 (= lt!604545 lt!604542)))

(declare-fun lt!604519 () List!18158)

(assert (=> b!1642247 (= lt!604519 (++!4860 (list!7150 (BalanceConc!11997 Empty!6026)) (list!7150 (charsOf!1838 (_1!10277 (v!24536 lt!604538))))))))

(declare-fun lt!604537 () List!18158)

(assert (=> b!1642247 (= lt!604537 (list!7150 (_2!10277 (v!24536 lt!604538))))))

(declare-fun lt!604523 () List!18159)

(assert (=> b!1642247 (= lt!604523 (list!7149 (append!552 (BalanceConc!11999 Empty!6027) (_1!10277 (v!24536 lt!604538)))))))

(declare-fun lt!604536 () Unit!29726)

(declare-fun lemmaLexThenLexPrefix!257 (LexerInterface!2818 List!18160 List!18158 List!18158 List!18159 List!18159 List!18158) Unit!29726)

(assert (=> b!1642247 (= lt!604536 (lemmaLexThenLexPrefix!257 thiss!17113 rules!1846 lt!604519 lt!604537 lt!604523 (list!7149 (_1!10271 lt!604513)) (list!7150 (_2!10271 lt!604513))))))

(assert (=> b!1642247 (= (lexList!853 thiss!17113 rules!1846 lt!604519) (tuple2!17747 lt!604523 Nil!18088))))

(declare-fun lt!604512 () Unit!29726)

(assert (=> b!1642247 (= lt!604512 lt!604536)))

(assert (=> b!1642247 (= lt!604522 (++!4864 (BalanceConc!11997 Empty!6026) (charsOf!1838 (_1!10277 (v!24536 lt!604538)))))))

(assert (=> b!1642247 (= lt!604531 (maxPrefixZipperSequence!711 thiss!17113 rules!1846 lt!604522))))

(declare-fun c!267116 () Bool)

(assert (=> b!1642247 (= c!267116 ((_ is Some!3421) lt!604531))))

(assert (=> b!1642247 (= (lexRec!369 thiss!17113 rules!1846 (++!4864 (BalanceConc!11997 Empty!6026) (charsOf!1838 (_1!10277 (v!24536 lt!604538))))) e!1053184)))

(declare-fun lt!604517 () Unit!29726)

(declare-fun Unit!29826 () Unit!29726)

(assert (=> b!1642247 (= lt!604517 Unit!29826)))

(assert (=> b!1642247 (= lt!604539 (++!4864 (BalanceConc!11997 Empty!6026) (charsOf!1838 (_1!10277 (v!24536 lt!604538)))))))

(declare-fun lt!604520 () List!18158)

(assert (=> b!1642247 (= lt!604520 (list!7150 lt!604539))))

(declare-fun lt!604533 () List!18158)

(assert (=> b!1642247 (= lt!604533 (list!7150 (_2!10277 (v!24536 lt!604538))))))

(declare-fun lt!604524 () Unit!29726)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!316 (List!18158 List!18158) Unit!29726)

(assert (=> b!1642247 (= lt!604524 (lemmaConcatTwoListThenFSndIsSuffix!316 lt!604520 lt!604533))))

(declare-fun isSuffix!415 (List!18158 List!18158) Bool)

(assert (=> b!1642247 (isSuffix!415 lt!604533 (++!4860 lt!604520 lt!604533))))

(declare-fun lt!604543 () Unit!29726)

(assert (=> b!1642247 (= lt!604543 lt!604524)))

(declare-fun d!494425 () Bool)

(assert (=> d!494425 e!1053183))

(declare-fun res!735771 () Bool)

(assert (=> d!494425 (=> (not res!735771) (not e!1053183))))

(assert (=> d!494425 (= res!735771 (= (list!7149 (_1!10271 lt!604541)) (list!7149 (_1!10271 (lexRec!369 thiss!17113 rules!1846 lt!603200)))))))

(assert (=> d!494425 (= lt!604541 e!1053182)))

(declare-fun c!267115 () Bool)

(assert (=> d!494425 (= c!267115 ((_ is Some!3421) lt!604538))))

(declare-fun maxPrefixZipperSequenceV2!264 (LexerInterface!2818 List!18160 BalanceConc!11996 BalanceConc!11996) Option!3422)

(assert (=> d!494425 (= lt!604538 (maxPrefixZipperSequenceV2!264 thiss!17113 rules!1846 lt!603200 lt!603200))))

(declare-fun lt!604540 () Unit!29726)

(declare-fun lt!604518 () Unit!29726)

(assert (=> d!494425 (= lt!604540 lt!604518)))

(declare-fun lt!604527 () List!18158)

(declare-fun lt!604521 () List!18158)

(assert (=> d!494425 (isSuffix!415 lt!604527 (++!4860 lt!604521 lt!604527))))

(assert (=> d!494425 (= lt!604518 (lemmaConcatTwoListThenFSndIsSuffix!316 lt!604521 lt!604527))))

(assert (=> d!494425 (= lt!604527 (list!7150 lt!603200))))

(assert (=> d!494425 (= lt!604521 (list!7150 (BalanceConc!11997 Empty!6026)))))

(assert (=> d!494425 (= (lexTailRecV2!576 thiss!17113 rules!1846 lt!603200 (BalanceConc!11997 Empty!6026) lt!603200 (BalanceConc!11999 Empty!6027)) lt!604541)))

(assert (= (and d!494425 c!267115) b!1642247))

(assert (= (and d!494425 (not c!267115)) b!1642242))

(assert (= (and b!1642247 c!267114) b!1642244))

(assert (= (and b!1642247 (not c!267114)) b!1642245))

(assert (= (and b!1642247 c!267116) b!1642243))

(assert (= (and b!1642247 (not c!267116)) b!1642246))

(assert (= (and d!494425 res!735771) b!1642241))

(declare-fun m!1983969 () Bool)

(assert (=> b!1642247 m!1983969))

(declare-fun m!1983971 () Bool)

(assert (=> b!1642247 m!1983971))

(declare-fun m!1983973 () Bool)

(assert (=> b!1642247 m!1983973))

(declare-fun m!1983975 () Bool)

(assert (=> b!1642247 m!1983975))

(declare-fun m!1983977 () Bool)

(assert (=> b!1642247 m!1983977))

(declare-fun m!1983979 () Bool)

(assert (=> b!1642247 m!1983979))

(declare-fun m!1983981 () Bool)

(assert (=> b!1642247 m!1983981))

(declare-fun m!1983983 () Bool)

(assert (=> b!1642247 m!1983983))

(declare-fun m!1983985 () Bool)

(assert (=> b!1642247 m!1983985))

(declare-fun m!1983987 () Bool)

(assert (=> b!1642247 m!1983987))

(assert (=> b!1642247 m!1982421))

(declare-fun m!1983989 () Bool)

(assert (=> b!1642247 m!1983989))

(declare-fun m!1983991 () Bool)

(assert (=> b!1642247 m!1983991))

(declare-fun m!1983993 () Bool)

(assert (=> b!1642247 m!1983993))

(assert (=> b!1642247 m!1983975))

(assert (=> b!1642247 m!1983969))

(declare-fun m!1983995 () Bool)

(assert (=> b!1642247 m!1983995))

(assert (=> b!1642247 m!1983975))

(assert (=> b!1642247 m!1983979))

(declare-fun m!1983997 () Bool)

(assert (=> b!1642247 m!1983997))

(declare-fun m!1983999 () Bool)

(assert (=> b!1642247 m!1983999))

(declare-fun m!1984001 () Bool)

(assert (=> b!1642247 m!1984001))

(declare-fun m!1984003 () Bool)

(assert (=> b!1642247 m!1984003))

(declare-fun m!1984005 () Bool)

(assert (=> b!1642247 m!1984005))

(declare-fun m!1984007 () Bool)

(assert (=> b!1642247 m!1984007))

(assert (=> b!1642247 m!1983991))

(declare-fun m!1984009 () Bool)

(assert (=> b!1642247 m!1984009))

(declare-fun m!1984011 () Bool)

(assert (=> b!1642247 m!1984011))

(declare-fun m!1984013 () Bool)

(assert (=> b!1642247 m!1984013))

(declare-fun m!1984015 () Bool)

(assert (=> b!1642247 m!1984015))

(declare-fun m!1984017 () Bool)

(assert (=> b!1642247 m!1984017))

(declare-fun m!1984019 () Bool)

(assert (=> b!1642247 m!1984019))

(declare-fun m!1984021 () Bool)

(assert (=> b!1642247 m!1984021))

(declare-fun m!1984023 () Bool)

(assert (=> b!1642247 m!1984023))

(assert (=> b!1642247 m!1984019))

(declare-fun m!1984025 () Bool)

(assert (=> b!1642247 m!1984025))

(assert (=> b!1642247 m!1982421))

(assert (=> b!1642247 m!1983977))

(declare-fun m!1984027 () Bool)

(assert (=> b!1642247 m!1984027))

(assert (=> b!1642247 m!1984001))

(declare-fun m!1984029 () Bool)

(assert (=> b!1642247 m!1984029))

(assert (=> b!1642247 m!1984013))

(assert (=> b!1642247 m!1984013))

(declare-fun m!1984031 () Bool)

(assert (=> b!1642247 m!1984031))

(assert (=> b!1642247 m!1984005))

(assert (=> b!1642247 m!1983983))

(assert (=> b!1642247 m!1984003))

(declare-fun m!1984033 () Bool)

(assert (=> b!1642244 m!1984033))

(declare-fun m!1984035 () Bool)

(assert (=> b!1642244 m!1984035))

(declare-fun m!1984037 () Bool)

(assert (=> b!1642241 m!1984037))

(assert (=> b!1642241 m!1984009))

(declare-fun m!1984039 () Bool)

(assert (=> b!1642241 m!1984039))

(declare-fun m!1984041 () Bool)

(assert (=> b!1642243 m!1984041))

(declare-fun m!1984043 () Bool)

(assert (=> b!1642243 m!1984043))

(declare-fun m!1984045 () Bool)

(assert (=> d!494425 m!1984045))

(declare-fun m!1984047 () Bool)

(assert (=> d!494425 m!1984047))

(assert (=> d!494425 m!1981503))

(declare-fun m!1984049 () Bool)

(assert (=> d!494425 m!1984049))

(declare-fun m!1984051 () Bool)

(assert (=> d!494425 m!1984051))

(assert (=> d!494425 m!1984045))

(declare-fun m!1984053 () Bool)

(assert (=> d!494425 m!1984053))

(declare-fun m!1984055 () Bool)

(assert (=> d!494425 m!1984055))

(assert (=> d!494425 m!1984009))

(assert (=> d!494425 m!1982421))

(assert (=> d!494019 d!494425))

(declare-fun d!494521 () Bool)

(declare-fun lt!604546 () Int)

(assert (=> d!494521 (>= lt!604546 0)))

(declare-fun e!1053185 () Int)

(assert (=> d!494521 (= lt!604546 e!1053185)))

(declare-fun c!267117 () Bool)

(assert (=> d!494521 (= c!267117 ((_ is Nil!18088) (originalCharacters!4003 (h!23490 tokens!457))))))

(assert (=> d!494521 (= (size!14408 (originalCharacters!4003 (h!23490 tokens!457))) lt!604546)))

(declare-fun b!1642248 () Bool)

(assert (=> b!1642248 (= e!1053185 0)))

(declare-fun b!1642249 () Bool)

(assert (=> b!1642249 (= e!1053185 (+ 1 (size!14408 (t!150029 (originalCharacters!4003 (h!23490 tokens!457))))))))

(assert (= (and d!494521 c!267117) b!1642248))

(assert (= (and d!494521 (not c!267117)) b!1642249))

(declare-fun m!1984057 () Bool)

(assert (=> b!1642249 m!1984057))

(assert (=> b!1641342 d!494521))

(declare-fun e!1053186 () Bool)

(assert (=> b!1641359 (= tp!475712 e!1053186)))

(declare-fun b!1642251 () Bool)

(declare-fun tp!475833 () Bool)

(declare-fun tp!475832 () Bool)

(assert (=> b!1642251 (= e!1053186 (and tp!475833 tp!475832))))

(declare-fun b!1642250 () Bool)

(assert (=> b!1642250 (= e!1053186 tp_is_empty!7329)))

(declare-fun b!1642253 () Bool)

(declare-fun tp!475831 () Bool)

(declare-fun tp!475830 () Bool)

(assert (=> b!1642253 (= e!1053186 (and tp!475831 tp!475830))))

(declare-fun b!1642252 () Bool)

(declare-fun tp!475829 () Bool)

(assert (=> b!1642252 (= e!1053186 tp!475829)))

(assert (= (and b!1641359 ((_ is ElementMatch!4517) (regOne!9546 (regex!3189 (h!23491 rules!1846))))) b!1642250))

(assert (= (and b!1641359 ((_ is Concat!7797) (regOne!9546 (regex!3189 (h!23491 rules!1846))))) b!1642251))

(assert (= (and b!1641359 ((_ is Star!4517) (regOne!9546 (regex!3189 (h!23491 rules!1846))))) b!1642252))

(assert (= (and b!1641359 ((_ is Union!4517) (regOne!9546 (regex!3189 (h!23491 rules!1846))))) b!1642253))

(declare-fun e!1053187 () Bool)

(assert (=> b!1641359 (= tp!475711 e!1053187)))

(declare-fun b!1642255 () Bool)

(declare-fun tp!475838 () Bool)

(declare-fun tp!475837 () Bool)

(assert (=> b!1642255 (= e!1053187 (and tp!475838 tp!475837))))

(declare-fun b!1642254 () Bool)

(assert (=> b!1642254 (= e!1053187 tp_is_empty!7329)))

(declare-fun b!1642257 () Bool)

(declare-fun tp!475836 () Bool)

(declare-fun tp!475835 () Bool)

(assert (=> b!1642257 (= e!1053187 (and tp!475836 tp!475835))))

(declare-fun b!1642256 () Bool)

(declare-fun tp!475834 () Bool)

(assert (=> b!1642256 (= e!1053187 tp!475834)))

(assert (= (and b!1641359 ((_ is ElementMatch!4517) (regTwo!9546 (regex!3189 (h!23491 rules!1846))))) b!1642254))

(assert (= (and b!1641359 ((_ is Concat!7797) (regTwo!9546 (regex!3189 (h!23491 rules!1846))))) b!1642255))

(assert (= (and b!1641359 ((_ is Star!4517) (regTwo!9546 (regex!3189 (h!23491 rules!1846))))) b!1642256))

(assert (= (and b!1641359 ((_ is Union!4517) (regTwo!9546 (regex!3189 (h!23491 rules!1846))))) b!1642257))

(declare-fun b!1642266 () Bool)

(declare-fun tp!475846 () Bool)

(declare-fun tp!475845 () Bool)

(declare-fun e!1053192 () Bool)

(assert (=> b!1642266 (= e!1053192 (and (inv!23442 (left!14502 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))))) tp!475846 (inv!23442 (right!14832 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))))) tp!475845))))

(declare-fun b!1642268 () Bool)

(declare-fun e!1053193 () Bool)

(declare-fun tp!475847 () Bool)

(assert (=> b!1642268 (= e!1053193 tp!475847)))

(declare-fun b!1642267 () Bool)

(declare-fun inv!23448 (IArray!12057) Bool)

(assert (=> b!1642267 (= e!1053192 (and (inv!23448 (xs!8862 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))))) e!1053193))))

(assert (=> b!1641317 (= tp!475694 (and (inv!23442 (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457))))) e!1053192))))

(assert (= (and b!1641317 ((_ is Node!6026) (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))))) b!1642266))

(assert (= b!1642267 b!1642268))

(assert (= (and b!1641317 ((_ is Leaf!8841) (c!266879 (dynLambda!8071 (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (value!100559 (h!23490 tokens!457)))))) b!1642267))

(declare-fun m!1984059 () Bool)

(assert (=> b!1642266 m!1984059))

(declare-fun m!1984061 () Bool)

(assert (=> b!1642266 m!1984061))

(declare-fun m!1984063 () Bool)

(assert (=> b!1642267 m!1984063))

(assert (=> b!1641317 m!1981941))

(declare-fun e!1053194 () Bool)

(assert (=> b!1641376 (= tp!475727 e!1053194)))

(declare-fun b!1642270 () Bool)

(declare-fun tp!475852 () Bool)

(declare-fun tp!475851 () Bool)

(assert (=> b!1642270 (= e!1053194 (and tp!475852 tp!475851))))

(declare-fun b!1642269 () Bool)

(assert (=> b!1642269 (= e!1053194 tp_is_empty!7329)))

(declare-fun b!1642272 () Bool)

(declare-fun tp!475850 () Bool)

(declare-fun tp!475849 () Bool)

(assert (=> b!1642272 (= e!1053194 (and tp!475850 tp!475849))))

(declare-fun b!1642271 () Bool)

(declare-fun tp!475848 () Bool)

(assert (=> b!1642271 (= e!1053194 tp!475848)))

(assert (= (and b!1641376 ((_ is ElementMatch!4517) (regOne!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642269))

(assert (= (and b!1641376 ((_ is Concat!7797) (regOne!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642270))

(assert (= (and b!1641376 ((_ is Star!4517) (regOne!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642271))

(assert (= (and b!1641376 ((_ is Union!4517) (regOne!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642272))

(declare-fun e!1053195 () Bool)

(assert (=> b!1641376 (= tp!475726 e!1053195)))

(declare-fun b!1642274 () Bool)

(declare-fun tp!475857 () Bool)

(declare-fun tp!475856 () Bool)

(assert (=> b!1642274 (= e!1053195 (and tp!475857 tp!475856))))

(declare-fun b!1642273 () Bool)

(assert (=> b!1642273 (= e!1053195 tp_is_empty!7329)))

(declare-fun b!1642276 () Bool)

(declare-fun tp!475855 () Bool)

(declare-fun tp!475854 () Bool)

(assert (=> b!1642276 (= e!1053195 (and tp!475855 tp!475854))))

(declare-fun b!1642275 () Bool)

(declare-fun tp!475853 () Bool)

(assert (=> b!1642275 (= e!1053195 tp!475853)))

(assert (= (and b!1641376 ((_ is ElementMatch!4517) (regTwo!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642273))

(assert (= (and b!1641376 ((_ is Concat!7797) (regTwo!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642274))

(assert (= (and b!1641376 ((_ is Star!4517) (regTwo!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642275))

(assert (= (and b!1641376 ((_ is Union!4517) (regTwo!9547 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642276))

(declare-fun b!1642277 () Bool)

(declare-fun e!1053196 () Bool)

(declare-fun tp!475858 () Bool)

(assert (=> b!1642277 (= e!1053196 (and tp_is_empty!7329 tp!475858))))

(assert (=> b!1641347 (= tp!475697 e!1053196)))

(assert (= (and b!1641347 ((_ is Cons!18088) (t!150029 (originalCharacters!4003 (h!23490 tokens!457))))) b!1642277))

(declare-fun e!1053197 () Bool)

(assert (=> b!1641389 (= tp!475741 e!1053197)))

(declare-fun b!1642279 () Bool)

(declare-fun tp!475863 () Bool)

(declare-fun tp!475862 () Bool)

(assert (=> b!1642279 (= e!1053197 (and tp!475863 tp!475862))))

(declare-fun b!1642278 () Bool)

(assert (=> b!1642278 (= e!1053197 tp_is_empty!7329)))

(declare-fun b!1642281 () Bool)

(declare-fun tp!475861 () Bool)

(declare-fun tp!475860 () Bool)

(assert (=> b!1642281 (= e!1053197 (and tp!475861 tp!475860))))

(declare-fun b!1642280 () Bool)

(declare-fun tp!475859 () Bool)

(assert (=> b!1642280 (= e!1053197 tp!475859)))

(assert (= (and b!1641389 ((_ is ElementMatch!4517) (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) b!1642278))

(assert (= (and b!1641389 ((_ is Concat!7797) (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) b!1642279))

(assert (= (and b!1641389 ((_ is Star!4517) (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) b!1642280))

(assert (= (and b!1641389 ((_ is Union!4517) (regex!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) b!1642281))

(declare-fun e!1053198 () Bool)

(assert (=> b!1641371 (= tp!475723 e!1053198)))

(declare-fun b!1642283 () Bool)

(declare-fun tp!475868 () Bool)

(declare-fun tp!475867 () Bool)

(assert (=> b!1642283 (= e!1053198 (and tp!475868 tp!475867))))

(declare-fun b!1642282 () Bool)

(assert (=> b!1642282 (= e!1053198 tp_is_empty!7329)))

(declare-fun b!1642285 () Bool)

(declare-fun tp!475866 () Bool)

(declare-fun tp!475865 () Bool)

(assert (=> b!1642285 (= e!1053198 (and tp!475866 tp!475865))))

(declare-fun b!1642284 () Bool)

(declare-fun tp!475864 () Bool)

(assert (=> b!1642284 (= e!1053198 tp!475864)))

(assert (= (and b!1641371 ((_ is ElementMatch!4517) (regex!3189 (h!23491 (t!150031 rules!1846))))) b!1642282))

(assert (= (and b!1641371 ((_ is Concat!7797) (regex!3189 (h!23491 (t!150031 rules!1846))))) b!1642283))

(assert (= (and b!1641371 ((_ is Star!4517) (regex!3189 (h!23491 (t!150031 rules!1846))))) b!1642284))

(assert (= (and b!1641371 ((_ is Union!4517) (regex!3189 (h!23491 (t!150031 rules!1846))))) b!1642285))

(declare-fun e!1053199 () Bool)

(assert (=> b!1641375 (= tp!475725 e!1053199)))

(declare-fun b!1642287 () Bool)

(declare-fun tp!475873 () Bool)

(declare-fun tp!475872 () Bool)

(assert (=> b!1642287 (= e!1053199 (and tp!475873 tp!475872))))

(declare-fun b!1642286 () Bool)

(assert (=> b!1642286 (= e!1053199 tp_is_empty!7329)))

(declare-fun b!1642289 () Bool)

(declare-fun tp!475871 () Bool)

(declare-fun tp!475870 () Bool)

(assert (=> b!1642289 (= e!1053199 (and tp!475871 tp!475870))))

(declare-fun b!1642288 () Bool)

(declare-fun tp!475869 () Bool)

(assert (=> b!1642288 (= e!1053199 tp!475869)))

(assert (= (and b!1641375 ((_ is ElementMatch!4517) (reg!4846 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642286))

(assert (= (and b!1641375 ((_ is Concat!7797) (reg!4846 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642287))

(assert (= (and b!1641375 ((_ is Star!4517) (reg!4846 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642288))

(assert (= (and b!1641375 ((_ is Union!4517) (reg!4846 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642289))

(declare-fun b!1642290 () Bool)

(declare-fun e!1053200 () Bool)

(declare-fun tp!475874 () Bool)

(assert (=> b!1642290 (= e!1053200 (and tp_is_empty!7329 tp!475874))))

(assert (=> b!1641388 (= tp!475742 e!1053200)))

(assert (= (and b!1641388 ((_ is Cons!18088) (originalCharacters!4003 (h!23490 (t!150030 tokens!457))))) b!1642290))

(declare-fun b!1642293 () Bool)

(declare-fun b_free!44503 () Bool)

(declare-fun b_next!45207 () Bool)

(assert (=> b!1642293 (= b_free!44503 (not b_next!45207))))

(declare-fun tp!475878 () Bool)

(declare-fun b_and!116445 () Bool)

(assert (=> b!1642293 (= tp!475878 b_and!116445)))

(declare-fun b_free!44505 () Bool)

(declare-fun b_next!45209 () Bool)

(assert (=> b!1642293 (= b_free!44505 (not b_next!45209))))

(declare-fun tb!94003 () Bool)

(declare-fun t!150117 () Bool)

(assert (=> (and b!1642293 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 (t!150031 rules!1846))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) t!150117) tb!94003))

(declare-fun result!113498 () Bool)

(assert (= result!113498 result!113432))

(assert (=> b!1641341 t!150117))

(assert (=> d!494025 t!150117))

(declare-fun tb!94005 () Bool)

(declare-fun t!150119 () Bool)

(assert (=> (and b!1642293 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 (t!150031 rules!1846))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) t!150119) tb!94005))

(declare-fun result!113500 () Bool)

(assert (= result!113500 result!113450))

(assert (=> b!1641424 t!150119))

(assert (=> d!494153 t!150119))

(declare-fun t!150121 () Bool)

(declare-fun tb!94007 () Bool)

(assert (=> (and b!1642293 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 (t!150031 rules!1846))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457))))))) t!150121) tb!94007))

(declare-fun result!113502 () Bool)

(assert (= result!113502 result!113458))

(assert (=> d!494237 t!150121))

(declare-fun b_and!116447 () Bool)

(declare-fun tp!475876 () Bool)

(assert (=> b!1642293 (= tp!475876 (and (=> t!150117 result!113498) (=> t!150119 result!113500) (=> t!150121 result!113502) b_and!116447))))

(declare-fun e!1053204 () Bool)

(assert (=> b!1642293 (= e!1053204 (and tp!475878 tp!475876))))

(declare-fun e!1053201 () Bool)

(declare-fun b!1642292 () Bool)

(declare-fun tp!475877 () Bool)

(assert (=> b!1642292 (= e!1053201 (and tp!475877 (inv!23435 (tag!3469 (h!23491 (t!150031 (t!150031 rules!1846))))) (inv!23438 (transformation!3189 (h!23491 (t!150031 (t!150031 rules!1846))))) e!1053204))))

(declare-fun b!1642291 () Bool)

(declare-fun e!1053202 () Bool)

(declare-fun tp!475875 () Bool)

(assert (=> b!1642291 (= e!1053202 (and e!1053201 tp!475875))))

(assert (=> b!1641370 (= tp!475721 e!1053202)))

(assert (= b!1642292 b!1642293))

(assert (= b!1642291 b!1642292))

(assert (= (and b!1641370 ((_ is Cons!18090) (t!150031 (t!150031 rules!1846)))) b!1642291))

(declare-fun m!1984065 () Bool)

(assert (=> b!1642292 m!1984065))

(declare-fun m!1984067 () Bool)

(assert (=> b!1642292 m!1984067))

(declare-fun e!1053205 () Bool)

(assert (=> b!1641374 (= tp!475729 e!1053205)))

(declare-fun b!1642295 () Bool)

(declare-fun tp!475883 () Bool)

(declare-fun tp!475882 () Bool)

(assert (=> b!1642295 (= e!1053205 (and tp!475883 tp!475882))))

(declare-fun b!1642294 () Bool)

(assert (=> b!1642294 (= e!1053205 tp_is_empty!7329)))

(declare-fun b!1642297 () Bool)

(declare-fun tp!475881 () Bool)

(declare-fun tp!475880 () Bool)

(assert (=> b!1642297 (= e!1053205 (and tp!475881 tp!475880))))

(declare-fun b!1642296 () Bool)

(declare-fun tp!475879 () Bool)

(assert (=> b!1642296 (= e!1053205 tp!475879)))

(assert (= (and b!1641374 ((_ is ElementMatch!4517) (regOne!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642294))

(assert (= (and b!1641374 ((_ is Concat!7797) (regOne!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642295))

(assert (= (and b!1641374 ((_ is Star!4517) (regOne!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642296))

(assert (= (and b!1641374 ((_ is Union!4517) (regOne!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642297))

(declare-fun e!1053206 () Bool)

(assert (=> b!1641374 (= tp!475728 e!1053206)))

(declare-fun b!1642299 () Bool)

(declare-fun tp!475888 () Bool)

(declare-fun tp!475887 () Bool)

(assert (=> b!1642299 (= e!1053206 (and tp!475888 tp!475887))))

(declare-fun b!1642298 () Bool)

(assert (=> b!1642298 (= e!1053206 tp_is_empty!7329)))

(declare-fun b!1642301 () Bool)

(declare-fun tp!475886 () Bool)

(declare-fun tp!475885 () Bool)

(assert (=> b!1642301 (= e!1053206 (and tp!475886 tp!475885))))

(declare-fun b!1642300 () Bool)

(declare-fun tp!475884 () Bool)

(assert (=> b!1642300 (= e!1053206 tp!475884)))

(assert (= (and b!1641374 ((_ is ElementMatch!4517) (regTwo!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642298))

(assert (= (and b!1641374 ((_ is Concat!7797) (regTwo!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642299))

(assert (= (and b!1641374 ((_ is Star!4517) (regTwo!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642300))

(assert (= (and b!1641374 ((_ is Union!4517) (regTwo!9546 (regex!3189 (rule!5037 (h!23490 tokens!457)))))) b!1642301))

(declare-fun b!1642305 () Bool)

(declare-fun b_free!44507 () Bool)

(declare-fun b_next!45211 () Bool)

(assert (=> b!1642305 (= b_free!44507 (not b_next!45211))))

(declare-fun tp!475892 () Bool)

(declare-fun b_and!116449 () Bool)

(assert (=> b!1642305 (= tp!475892 b_and!116449)))

(declare-fun b_free!44509 () Bool)

(declare-fun b_next!45213 () Bool)

(assert (=> b!1642305 (= b_free!44509 (not b_next!45213))))

(declare-fun t!150123 () Bool)

(declare-fun tb!94009 () Bool)

(assert (=> (and b!1642305 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457))))) t!150123) tb!94009))

(declare-fun result!113504 () Bool)

(assert (= result!113504 result!113432))

(assert (=> b!1641341 t!150123))

(assert (=> d!494025 t!150123))

(declare-fun t!150125 () Bool)

(declare-fun tb!94011 () Bool)

(assert (=> (and b!1642305 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457)))))) t!150125) tb!94011))

(declare-fun result!113506 () Bool)

(assert (= result!113506 result!113450))

(assert (=> b!1641424 t!150125))

(assert (=> d!494153 t!150125))

(declare-fun t!150127 () Bool)

(declare-fun tb!94013 () Bool)

(assert (=> (and b!1642305 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457))))))) t!150127) tb!94013))

(declare-fun result!113508 () Bool)

(assert (= result!113508 result!113458))

(assert (=> d!494237 t!150127))

(declare-fun b_and!116451 () Bool)

(declare-fun tp!475893 () Bool)

(assert (=> b!1642305 (= tp!475893 (and (=> t!150123 result!113504) (=> t!150125 result!113506) (=> t!150127 result!113508) b_and!116451))))

(declare-fun b!1642303 () Bool)

(declare-fun tp!475891 () Bool)

(declare-fun e!1053207 () Bool)

(declare-fun e!1053212 () Bool)

(assert (=> b!1642303 (= e!1053212 (and (inv!21 (value!100559 (h!23490 (t!150030 (t!150030 tokens!457))))) e!1053207 tp!475891))))

(declare-fun b!1642302 () Bool)

(declare-fun tp!475889 () Bool)

(declare-fun e!1053209 () Bool)

(assert (=> b!1642302 (= e!1053209 (and (inv!23439 (h!23490 (t!150030 (t!150030 tokens!457)))) e!1053212 tp!475889))))

(declare-fun e!1053208 () Bool)

(assert (=> b!1642305 (= e!1053208 (and tp!475892 tp!475893))))

(assert (=> b!1641387 (= tp!475740 e!1053209)))

(declare-fun b!1642304 () Bool)

(declare-fun tp!475890 () Bool)

(assert (=> b!1642304 (= e!1053207 (and tp!475890 (inv!23435 (tag!3469 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (inv!23438 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) e!1053208))))

(assert (= b!1642304 b!1642305))

(assert (= b!1642303 b!1642304))

(assert (= b!1642302 b!1642303))

(assert (= (and b!1641387 ((_ is Cons!18089) (t!150030 (t!150030 tokens!457)))) b!1642302))

(declare-fun m!1984069 () Bool)

(assert (=> b!1642303 m!1984069))

(declare-fun m!1984071 () Bool)

(assert (=> b!1642302 m!1984071))

(declare-fun m!1984073 () Bool)

(assert (=> b!1642304 m!1984073))

(declare-fun m!1984075 () Bool)

(assert (=> b!1642304 m!1984075))

(declare-fun e!1053213 () Bool)

(assert (=> b!1641361 (= tp!475710 e!1053213)))

(declare-fun b!1642307 () Bool)

(declare-fun tp!475898 () Bool)

(declare-fun tp!475897 () Bool)

(assert (=> b!1642307 (= e!1053213 (and tp!475898 tp!475897))))

(declare-fun b!1642306 () Bool)

(assert (=> b!1642306 (= e!1053213 tp_is_empty!7329)))

(declare-fun b!1642309 () Bool)

(declare-fun tp!475896 () Bool)

(declare-fun tp!475895 () Bool)

(assert (=> b!1642309 (= e!1053213 (and tp!475896 tp!475895))))

(declare-fun b!1642308 () Bool)

(declare-fun tp!475894 () Bool)

(assert (=> b!1642308 (= e!1053213 tp!475894)))

(assert (= (and b!1641361 ((_ is ElementMatch!4517) (regOne!9547 (regex!3189 (h!23491 rules!1846))))) b!1642306))

(assert (= (and b!1641361 ((_ is Concat!7797) (regOne!9547 (regex!3189 (h!23491 rules!1846))))) b!1642307))

(assert (= (and b!1641361 ((_ is Star!4517) (regOne!9547 (regex!3189 (h!23491 rules!1846))))) b!1642308))

(assert (= (and b!1641361 ((_ is Union!4517) (regOne!9547 (regex!3189 (h!23491 rules!1846))))) b!1642309))

(declare-fun e!1053214 () Bool)

(assert (=> b!1641361 (= tp!475709 e!1053214)))

(declare-fun b!1642311 () Bool)

(declare-fun tp!475903 () Bool)

(declare-fun tp!475902 () Bool)

(assert (=> b!1642311 (= e!1053214 (and tp!475903 tp!475902))))

(declare-fun b!1642310 () Bool)

(assert (=> b!1642310 (= e!1053214 tp_is_empty!7329)))

(declare-fun b!1642313 () Bool)

(declare-fun tp!475901 () Bool)

(declare-fun tp!475900 () Bool)

(assert (=> b!1642313 (= e!1053214 (and tp!475901 tp!475900))))

(declare-fun b!1642312 () Bool)

(declare-fun tp!475899 () Bool)

(assert (=> b!1642312 (= e!1053214 tp!475899)))

(assert (= (and b!1641361 ((_ is ElementMatch!4517) (regTwo!9547 (regex!3189 (h!23491 rules!1846))))) b!1642310))

(assert (= (and b!1641361 ((_ is Concat!7797) (regTwo!9547 (regex!3189 (h!23491 rules!1846))))) b!1642311))

(assert (= (and b!1641361 ((_ is Star!4517) (regTwo!9547 (regex!3189 (h!23491 rules!1846))))) b!1642312))

(assert (= (and b!1641361 ((_ is Union!4517) (regTwo!9547 (regex!3189 (h!23491 rules!1846))))) b!1642313))

(declare-fun b!1642316 () Bool)

(declare-fun e!1053217 () Bool)

(assert (=> b!1642316 (= e!1053217 true)))

(declare-fun b!1642315 () Bool)

(declare-fun e!1053216 () Bool)

(assert (=> b!1642315 (= e!1053216 e!1053217)))

(declare-fun b!1642314 () Bool)

(declare-fun e!1053215 () Bool)

(assert (=> b!1642314 (= e!1053215 e!1053216)))

(assert (=> b!1641218 e!1053215))

(assert (= b!1642315 b!1642316))

(assert (= b!1642314 b!1642315))

(assert (= (and b!1641218 ((_ is Cons!18090) (t!150031 rules!1846))) b!1642314))

(assert (=> b!1642316 (< (dynLambda!8068 order!10733 (toValue!4624 (transformation!3189 (h!23491 (t!150031 rules!1846))))) (dynLambda!8069 order!10735 lambda!67493))))

(assert (=> b!1642316 (< (dynLambda!8070 order!10737 (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846))))) (dynLambda!8069 order!10735 lambda!67493))))

(declare-fun e!1053218 () Bool)

(assert (=> b!1641360 (= tp!475708 e!1053218)))

(declare-fun b!1642318 () Bool)

(declare-fun tp!475908 () Bool)

(declare-fun tp!475907 () Bool)

(assert (=> b!1642318 (= e!1053218 (and tp!475908 tp!475907))))

(declare-fun b!1642317 () Bool)

(assert (=> b!1642317 (= e!1053218 tp_is_empty!7329)))

(declare-fun b!1642320 () Bool)

(declare-fun tp!475906 () Bool)

(declare-fun tp!475905 () Bool)

(assert (=> b!1642320 (= e!1053218 (and tp!475906 tp!475905))))

(declare-fun b!1642319 () Bool)

(declare-fun tp!475904 () Bool)

(assert (=> b!1642319 (= e!1053218 tp!475904)))

(assert (= (and b!1641360 ((_ is ElementMatch!4517) (reg!4846 (regex!3189 (h!23491 rules!1846))))) b!1642317))

(assert (= (and b!1641360 ((_ is Concat!7797) (reg!4846 (regex!3189 (h!23491 rules!1846))))) b!1642318))

(assert (= (and b!1641360 ((_ is Star!4517) (reg!4846 (regex!3189 (h!23491 rules!1846))))) b!1642319))

(assert (= (and b!1641360 ((_ is Union!4517) (reg!4846 (regex!3189 (h!23491 rules!1846))))) b!1642320))

(declare-fun b_lambda!51605 () Bool)

(assert (= b_lambda!51581 (or (and b!1641372 b_free!44489 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1641063 b_free!44477 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1641065 b_free!44473 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1642305 b_free!44509 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1641390 b_free!44493) (and b!1642293 b_free!44505 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 (t!150031 rules!1846))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) b_lambda!51605)))

(declare-fun b_lambda!51607 () Bool)

(assert (= b_lambda!51583 (or (and b!1641372 b_free!44489 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1641063 b_free!44477 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1641065 b_free!44473 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1642305 b_free!44509 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) (and b!1641390 b_free!44493) (and b!1642293 b_free!44505 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 (t!150031 rules!1846))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))))) b_lambda!51607)))

(declare-fun b_lambda!51609 () Bool)

(assert (= b_lambda!51585 (or d!494007 b_lambda!51609)))

(declare-fun bs!395793 () Bool)

(declare-fun d!494523 () Bool)

(assert (= bs!395793 (and d!494523 d!494007)))

(assert (=> bs!395793 (= (dynLambda!8074 lambda!67493 (h!23490 tokens!457)) (rulesProduceIndividualToken!1470 thiss!17113 rules!1846 (h!23490 tokens!457)))))

(assert (=> bs!395793 m!1981871))

(assert (=> b!1641629 d!494523))

(declare-fun b_lambda!51611 () Bool)

(assert (= b_lambda!51587 (or (and b!1641065 b_free!44473 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 tokens!457)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))))) (and b!1641372 b_free!44489 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 rules!1846)))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))))) (and b!1642293 b_free!44505 (= (toChars!4483 (transformation!3189 (h!23491 (t!150031 (t!150031 rules!1846))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))))) (and b!1641063 b_free!44477 (= (toChars!4483 (transformation!3189 (h!23491 rules!1846))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))))) (and b!1642305 b_free!44509) (and b!1641390 b_free!44493 (= (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 tokens!457))))) (toChars!4483 (transformation!3189 (rule!5037 (h!23490 (t!150030 (t!150030 tokens!457)))))))) b_lambda!51611)))

(check-sat b_and!116405 (not b!1642301) (not b!1641635) b_and!116447 (not b!1642307) (not b!1641425) (not b!1641423) (not b!1641591) (not d!494169) (not b!1641766) (not b!1641459) (not b!1641443) (not b_lambda!51607) (not b!1641770) (not b!1641740) (not b_lambda!51609) (not b!1642291) (not b!1642287) (not b!1641618) (not d!494115) (not d!494105) (not b!1641608) (not d!494205) (not d!494099) (not b!1641426) (not b!1641651) (not b!1641779) (not b!1642068) (not b!1642274) (not b!1642029) (not b!1641453) b_and!116451 (not d!494127) b_and!116411 (not b!1642031) (not b!1641624) (not d!494079) (not b!1642052) (not d!494215) (not d!494103) (not b!1641476) (not d!494183) (not b!1642288) (not b!1642281) (not b!1641577) (not b!1641578) (not bm!105731) (not b!1641745) (not d!494217) (not b!1642039) (not b_next!45207) (not b!1641581) (not b!1641675) (not bm!105727) (not bm!105730) (not b!1641575) (not d!494229) (not b!1641737) (not d!494177) (not b_lambda!51579) (not d!494197) (not tb!93967) (not d!494253) (not b!1641706) (not b!1641761) (not b!1642253) (not b_next!45197) (not b!1642285) (not b_next!45213) (not b!1642257) (not d!494097) (not b!1642252) (not b!1641747) (not b!1641754) (not b!1642267) (not b_next!45209) (not d!494259) (not b_next!45191) (not b_next!45177) (not bm!105732) (not b!1641777) (not b!1641654) (not b!1641573) (not d!494425) (not b!1641482) (not b!1641652) (not b_next!45195) (not b!1641576) (not d!494235) (not b!1641442) (not b_lambda!51605) (not b!1642251) (not b!1642302) (not b!1641595) (not d!494185) (not b!1641758) (not b_next!45181) (not b_lambda!51611) (not b!1641759) b_and!116445 (not d!494155) (not d!494255) (not d!494221) (not b!1641602) (not b!1642276) (not b!1641483) (not b!1642308) (not b!1642048) (not b!1642037) b_and!116449 (not b!1642280) (not d!494237) (not b!1641478) (not bs!395793) (not b!1642064) (not d!494191) (not b!1642247) (not b!1641630) (not d!494383) (not d!494385) (not b!1641771) (not d!494187) (not b!1642051) (not b!1641460) (not b!1642312) (not b!1642292) (not d!494405) (not d!494219) (not b_next!45179) (not b!1642243) (not b!1641739) (not b!1641712) (not b!1642271) (not b!1641422) (not b!1641580) (not d!494199) (not b!1641420) (not d!494083) (not d!494241) (not b!1641752) (not b!1641461) (not d!494179) (not b!1642066) (not b!1641451) (not b!1641585) (not d!494393) (not b!1641481) (not b!1642256) (not d!494223) (not d!494201) (not b!1641757) (not b!1642244) (not b!1641427) (not d!494257) b_and!116381 (not b!1642309) (not d!494261) (not b!1641755) (not d!494125) (not b!1642046) (not b!1641764) (not d!494397) (not b!1641738) (not b!1641774) (not b!1642318) (not b!1642270) (not b!1642320) (not b!1641742) (not b!1641743) (not d!494269) (not d!494195) (not b!1642032) (not b!1642313) (not d!494149) (not b_next!45211) (not d!494391) (not b!1641768) (not b!1641574) (not b!1641619) (not d!494243) (not d!494247) (not b!1642296) (not b!1641317) (not b!1641650) (not d!494085) (not d!494249) (not b!1642319) (not b_next!45193) (not b!1642290) (not b!1642279) (not b!1641673) (not b!1642300) (not d!494107) (not b!1642299) (not b!1641749) (not b!1641620) (not d!494389) b_and!116353 (not b!1642303) (not b!1642058) (not b!1641664) (not b!1642266) (not b!1641659) (not b!1642249) (not b!1641409) (not b!1641763) (not b!1641407) (not d!494147) (not d!494081) (not b!1642275) (not b!1641586) b_and!116349 (not b!1642268) (not d!494171) (not b!1641430) (not b!1642056) (not d!494109) (not d!494129) (not b!1642311) (not b!1641428) (not b!1642297) (not d!494233) (not b!1641781) (not d!494251) (not b!1641653) (not b!1641783) (not d!494075) b_and!116385 (not b!1641616) (not d!494121) (not b!1642040) (not tb!93959) (not b!1641772) (not d!494209) (not b!1641780) (not b!1641449) (not d!494111) (not b!1641741) (not d!494245) (not b!1642277) (not b!1641477) (not b!1641657) (not b!1641748) (not b!1641674) (not b!1642272) (not b!1641753) (not b!1641592) (not d!494113) (not b!1642283) (not b!1642255) (not b!1641660) (not b!1642284) b_and!116407 (not b!1642041) tp_is_empty!7329 (not d!494131) (not b_lambda!51577) (not b!1641760) (not d!494117) (not d!494265) (not b!1641622) (not b!1642036) (not d!494173) (not b!1641709) (not d!494423) (not d!494387) (not b!1642044) (not b!1641765) (not b!1641717) (not d!494263) (not b!1642241) (not b!1641775) (not b!1641762) (not d!494151) (not b!1641716) (not b!1641582) (not d!494231) (not b!1641778) (not b!1641649) (not d!494153) (not b!1641707) (not b!1642314) (not b!1641634) (not b!1641603) (not b!1642055) (not b!1641776) (not d!494067) (not b_next!45175) (not d!494207) (not b!1641431) (not b!1641465) (not b!1641424) b_and!116409 (not b!1641421) (not b!1642304) (not b!1642289) (not d!494239) (not b!1641464) (not b!1642050) (not b!1642045) (not d!494157) (not d!494087) (not b!1642295))
(check-sat (not b_next!45207) (not b_next!45209) (not b_next!45195) (not b_next!45179) b_and!116381 (not b_next!45211) (not b_next!45193) b_and!116353 b_and!116349 b_and!116385 b_and!116407 (not b_next!45175) b_and!116409 b_and!116405 b_and!116447 b_and!116451 b_and!116411 (not b_next!45197) (not b_next!45213) (not b_next!45191) (not b_next!45177) (not b_next!45181) b_and!116449 b_and!116445)
