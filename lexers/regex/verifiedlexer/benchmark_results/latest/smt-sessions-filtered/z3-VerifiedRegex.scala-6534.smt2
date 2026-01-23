; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!345434 () Bool)

(assert start!345434)

(declare-fun b!3681260 () Bool)

(declare-fun b_free!97521 () Bool)

(declare-fun b_next!98225 () Bool)

(assert (=> b!3681260 (= b_free!97521 (not b_next!98225))))

(declare-fun tp!1118996 () Bool)

(declare-fun b_and!275011 () Bool)

(assert (=> b!3681260 (= tp!1118996 b_and!275011)))

(declare-fun b_free!97523 () Bool)

(declare-fun b_next!98227 () Bool)

(assert (=> b!3681260 (= b_free!97523 (not b_next!98227))))

(declare-fun tp!1119006 () Bool)

(declare-fun b_and!275013 () Bool)

(assert (=> b!3681260 (= tp!1119006 b_and!275013)))

(declare-fun b!3681276 () Bool)

(declare-fun b_free!97525 () Bool)

(declare-fun b_next!98229 () Bool)

(assert (=> b!3681276 (= b_free!97525 (not b_next!98229))))

(declare-fun tp!1119003 () Bool)

(declare-fun b_and!275015 () Bool)

(assert (=> b!3681276 (= tp!1119003 b_and!275015)))

(declare-fun b_free!97527 () Bool)

(declare-fun b_next!98231 () Bool)

(assert (=> b!3681276 (= b_free!97527 (not b_next!98231))))

(declare-fun tp!1119000 () Bool)

(declare-fun b_and!275017 () Bool)

(assert (=> b!3681276 (= tp!1119000 b_and!275017)))

(declare-fun b!3681250 () Bool)

(declare-fun b_free!97529 () Bool)

(declare-fun b_next!98233 () Bool)

(assert (=> b!3681250 (= b_free!97529 (not b_next!98233))))

(declare-fun tp!1118999 () Bool)

(declare-fun b_and!275019 () Bool)

(assert (=> b!3681250 (= tp!1118999 b_and!275019)))

(declare-fun b_free!97531 () Bool)

(declare-fun b_next!98235 () Bool)

(assert (=> b!3681250 (= b_free!97531 (not b_next!98235))))

(declare-fun tp!1119010 () Bool)

(declare-fun b_and!275021 () Bool)

(assert (=> b!3681250 (= tp!1119010 b_and!275021)))

(declare-fun b!3681253 () Bool)

(declare-fun b_free!97533 () Bool)

(declare-fun b_next!98237 () Bool)

(assert (=> b!3681253 (= b_free!97533 (not b_next!98237))))

(declare-fun tp!1119009 () Bool)

(declare-fun b_and!275023 () Bool)

(assert (=> b!3681253 (= tp!1119009 b_and!275023)))

(declare-fun b_free!97535 () Bool)

(declare-fun b_next!98239 () Bool)

(assert (=> b!3681253 (= b_free!97535 (not b_next!98239))))

(declare-fun tp!1119001 () Bool)

(declare-fun b_and!275025 () Bool)

(assert (=> b!3681253 (= tp!1119001 b_and!275025)))

(declare-fun b!3681242 () Bool)

(declare-fun e!2279521 () Bool)

(declare-fun tp_is_empty!18297 () Bool)

(declare-fun tp!1119005 () Bool)

(assert (=> b!3681242 (= e!2279521 (and tp_is_empty!18297 tp!1119005))))

(declare-fun b!3681243 () Bool)

(declare-datatypes ((Unit!56886 0))(
  ( (Unit!56887) )
))
(declare-fun e!2279510 () Unit!56886)

(declare-fun Unit!56888 () Unit!56886)

(assert (=> b!3681243 (= e!2279510 Unit!56888)))

(declare-fun bm!266662 () Bool)

(declare-fun call!266667 () Bool)

(declare-datatypes ((C!21400 0))(
  ( (C!21401 (val!12748 Int)) )
))
(declare-datatypes ((List!38951 0))(
  ( (Nil!38827) (Cons!38827 (h!44247 C!21400) (t!300706 List!38951)) )
))
(declare-fun call!266668 () List!38951)

(declare-fun lt!1287192 () C!21400)

(declare-fun contains!7763 (List!38951 C!21400) Bool)

(assert (=> bm!266662 (= call!266667 (contains!7763 call!266668 lt!1287192))))

(declare-fun b!3681245 () Bool)

(declare-fun res!1495632 () Bool)

(declare-fun e!2279536 () Bool)

(assert (=> b!3681245 (=> (not res!1495632) (not e!2279536))))

(declare-datatypes ((List!38952 0))(
  ( (Nil!38828) (Cons!38828 (h!44248 (_ BitVec 16)) (t!300707 List!38952)) )
))
(declare-datatypes ((TokenValue!6078 0))(
  ( (FloatLiteralValue!12156 (text!42991 List!38952)) (TokenValueExt!6077 (__x!24373 Int)) (Broken!30390 (value!187102 List!38952)) (Object!6201) (End!6078) (Def!6078) (Underscore!6078) (Match!6078) (Else!6078) (Error!6078) (Case!6078) (If!6078) (Extends!6078) (Abstract!6078) (Class!6078) (Val!6078) (DelimiterValue!12156 (del!6138 List!38952)) (KeywordValue!6084 (value!187103 List!38952)) (CommentValue!12156 (value!187104 List!38952)) (WhitespaceValue!12156 (value!187105 List!38952)) (IndentationValue!6078 (value!187106 List!38952)) (String!43723) (Int32!6078) (Broken!30391 (value!187107 List!38952)) (Boolean!6079) (Unit!56889) (OperatorValue!6081 (op!6138 List!38952)) (IdentifierValue!12156 (value!187108 List!38952)) (IdentifierValue!12157 (value!187109 List!38952)) (WhitespaceValue!12157 (value!187110 List!38952)) (True!12156) (False!12156) (Broken!30392 (value!187111 List!38952)) (Broken!30393 (value!187112 List!38952)) (True!12157) (RightBrace!6078) (RightBracket!6078) (Colon!6078) (Null!6078) (Comma!6078) (LeftBracket!6078) (False!12157) (LeftBrace!6078) (ImaginaryLiteralValue!6078 (text!42992 List!38952)) (StringLiteralValue!18234 (value!187113 List!38952)) (EOFValue!6078 (value!187114 List!38952)) (IdentValue!6078 (value!187115 List!38952)) (DelimiterValue!12157 (value!187116 List!38952)) (DedentValue!6078 (value!187117 List!38952)) (NewLineValue!6078 (value!187118 List!38952)) (IntegerValue!18234 (value!187119 (_ BitVec 32)) (text!42993 List!38952)) (IntegerValue!18235 (value!187120 Int) (text!42994 List!38952)) (Times!6078) (Or!6078) (Equal!6078) (Minus!6078) (Broken!30394 (value!187121 List!38952)) (And!6078) (Div!6078) (LessEqual!6078) (Mod!6078) (Concat!16685) (Not!6078) (Plus!6078) (SpaceValue!6078 (value!187122 List!38952)) (IntegerValue!18236 (value!187123 Int) (text!42995 List!38952)) (StringLiteralValue!18235 (text!42996 List!38952)) (FloatLiteralValue!12157 (text!42997 List!38952)) (BytesLiteralValue!6078 (value!187124 List!38952)) (CommentValue!12157 (value!187125 List!38952)) (StringLiteralValue!18236 (value!187126 List!38952)) (ErrorTokenValue!6078 (msg!6139 List!38952)) )
))
(declare-datatypes ((Regex!10607 0))(
  ( (ElementMatch!10607 (c!636788 C!21400)) (Concat!16686 (regOne!21726 Regex!10607) (regTwo!21726 Regex!10607)) (EmptyExpr!10607) (Star!10607 (reg!10936 Regex!10607)) (EmptyLang!10607) (Union!10607 (regOne!21727 Regex!10607) (regTwo!21727 Regex!10607)) )
))
(declare-datatypes ((String!43724 0))(
  ( (String!43725 (value!187127 String)) )
))
(declare-datatypes ((IArray!23779 0))(
  ( (IArray!23780 (innerList!11947 List!38951)) )
))
(declare-datatypes ((Conc!11887 0))(
  ( (Node!11887 (left!30297 Conc!11887) (right!30627 Conc!11887) (csize!24004 Int) (cheight!12098 Int)) (Leaf!18422 (xs!15089 IArray!23779) (csize!24005 Int)) (Empty!11887) )
))
(declare-datatypes ((BalanceConc!23388 0))(
  ( (BalanceConc!23389 (c!636789 Conc!11887)) )
))
(declare-datatypes ((TokenValueInjection!11584 0))(
  ( (TokenValueInjection!11585 (toValue!8144 Int) (toChars!8003 Int)) )
))
(declare-datatypes ((Rule!11496 0))(
  ( (Rule!11497 (regex!5848 Regex!10607) (tag!6652 String!43724) (isSeparator!5848 Bool) (transformation!5848 TokenValueInjection!11584)) )
))
(declare-datatypes ((List!38953 0))(
  ( (Nil!38829) (Cons!38829 (h!44249 Rule!11496) (t!300708 List!38953)) )
))
(declare-fun rules!3307 () List!38953)

(declare-fun anOtherTypeRule!33 () Rule!11496)

(declare-fun contains!7764 (List!38953 Rule!11496) Bool)

(assert (=> b!3681245 (= res!1495632 (contains!7764 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3681246 () Bool)

(declare-fun e!2279516 () Unit!56886)

(declare-fun Unit!56890 () Unit!56886)

(assert (=> b!3681246 (= e!2279516 Unit!56890)))

(declare-fun lt!1287198 () Int)

(declare-datatypes ((Token!11062 0))(
  ( (Token!11063 (value!187128 TokenValue!6078) (rule!8686 Rule!11496) (size!29689 Int) (originalCharacters!6562 List!38951)) )
))
(declare-datatypes ((tuple2!38696 0))(
  ( (tuple2!38697 (_1!22482 Token!11062) (_2!22482 List!38951)) )
))
(declare-fun lt!1287178 () tuple2!38696)

(declare-fun getIndex!516 (List!38953 Rule!11496) Int)

(assert (=> b!3681246 (= lt!1287198 (getIndex!516 rules!3307 (rule!8686 (_1!22482 lt!1287178))))))

(declare-fun lt!1287221 () Int)

(declare-fun rule!403 () Rule!11496)

(assert (=> b!3681246 (= lt!1287221 (getIndex!516 rules!3307 rule!403))))

(declare-fun c!636783 () Bool)

(assert (=> b!3681246 (= c!636783 (< lt!1287198 lt!1287221))))

(declare-fun lt!1287223 () Unit!56886)

(declare-fun e!2279520 () Unit!56886)

(assert (=> b!3681246 (= lt!1287223 e!2279520)))

(declare-fun c!636779 () Bool)

(assert (=> b!3681246 (= c!636779 (< lt!1287221 lt!1287198))))

(declare-fun lt!1287195 () Unit!56886)

(declare-fun e!2279527 () Unit!56886)

(assert (=> b!3681246 (= lt!1287195 e!2279527)))

(declare-fun lt!1287197 () Unit!56886)

(declare-fun lemmaSameIndexThenSameElement!248 (List!38953 Rule!11496 Rule!11496) Unit!56886)

(assert (=> b!3681246 (= lt!1287197 (lemmaSameIndexThenSameElement!248 rules!3307 (rule!8686 (_1!22482 lt!1287178)) rule!403))))

(assert (=> b!3681246 false))

(declare-fun b!3681247 () Bool)

(declare-fun e!2279531 () Bool)

(declare-fun e!2279507 () Bool)

(assert (=> b!3681247 (= e!2279531 e!2279507)))

(declare-fun res!1495626 () Bool)

(assert (=> b!3681247 (=> res!1495626 e!2279507)))

(declare-fun lt!1287218 () List!38951)

(declare-fun lt!1287211 () List!38951)

(declare-fun isPrefix!3211 (List!38951 List!38951) Bool)

(assert (=> b!3681247 (= res!1495626 (not (isPrefix!3211 lt!1287218 lt!1287211)))))

(declare-fun lt!1287228 () List!38951)

(assert (=> b!3681247 (isPrefix!3211 lt!1287218 lt!1287228)))

(declare-fun ++!9664 (List!38951 List!38951) List!38951)

(assert (=> b!3681247 (= lt!1287228 (++!9664 lt!1287218 (_2!22482 lt!1287178)))))

(declare-fun lt!1287206 () Unit!56886)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2130 (List!38951 List!38951) Unit!56886)

(assert (=> b!3681247 (= lt!1287206 (lemmaConcatTwoListThenFirstIsPrefix!2130 lt!1287218 (_2!22482 lt!1287178)))))

(declare-fun lt!1287216 () BalanceConc!23388)

(declare-fun list!14434 (BalanceConc!23388) List!38951)

(assert (=> b!3681247 (= lt!1287218 (list!14434 lt!1287216))))

(declare-fun charsOf!3862 (Token!11062) BalanceConc!23388)

(assert (=> b!3681247 (= lt!1287216 (charsOf!3862 (_1!22482 lt!1287178)))))

(declare-fun e!2279519 () Bool)

(assert (=> b!3681247 e!2279519))

(declare-fun res!1495638 () Bool)

(assert (=> b!3681247 (=> (not res!1495638) (not e!2279519))))

(declare-datatypes ((Option!8324 0))(
  ( (None!8323) (Some!8323 (v!38263 Rule!11496)) )
))
(declare-fun lt!1287220 () Option!8324)

(declare-fun isDefined!6556 (Option!8324) Bool)

(assert (=> b!3681247 (= res!1495638 (isDefined!6556 lt!1287220))))

(declare-datatypes ((LexerInterface!5437 0))(
  ( (LexerInterfaceExt!5434 (__x!24374 Int)) (Lexer!5435) )
))
(declare-fun thiss!23823 () LexerInterface!5437)

(declare-fun getRuleFromTag!1452 (LexerInterface!5437 List!38953 String!43724) Option!8324)

(assert (=> b!3681247 (= lt!1287220 (getRuleFromTag!1452 thiss!23823 rules!3307 (tag!6652 (rule!8686 (_1!22482 lt!1287178)))))))

(declare-fun lt!1287209 () Unit!56886)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1452 (LexerInterface!5437 List!38953 List!38951 Token!11062) Unit!56886)

(assert (=> b!3681247 (= lt!1287209 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1452 thiss!23823 rules!3307 lt!1287211 (_1!22482 lt!1287178)))))

(declare-datatypes ((Option!8325 0))(
  ( (None!8324) (Some!8324 (v!38264 tuple2!38696)) )
))
(declare-fun lt!1287213 () Option!8325)

(declare-fun get!12858 (Option!8325) tuple2!38696)

(assert (=> b!3681247 (= lt!1287178 (get!12858 lt!1287213))))

(declare-fun lt!1287175 () List!38951)

(declare-fun suffix!1395 () List!38951)

(declare-fun lt!1287187 () Unit!56886)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1115 (LexerInterface!5437 List!38953 List!38951 List!38951) Unit!56886)

(assert (=> b!3681247 (= lt!1287187 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!1115 thiss!23823 rules!3307 lt!1287175 suffix!1395))))

(declare-fun maxPrefix!2971 (LexerInterface!5437 List!38953 List!38951) Option!8325)

(assert (=> b!3681247 (= lt!1287213 (maxPrefix!2971 thiss!23823 rules!3307 lt!1287211))))

(assert (=> b!3681247 (isPrefix!3211 lt!1287175 lt!1287211)))

(declare-fun lt!1287201 () Unit!56886)

(assert (=> b!3681247 (= lt!1287201 (lemmaConcatTwoListThenFirstIsPrefix!2130 lt!1287175 suffix!1395))))

(assert (=> b!3681247 (= lt!1287211 (++!9664 lt!1287175 suffix!1395))))

(declare-fun b!3681248 () Bool)

(declare-fun e!2279534 () Bool)

(declare-fun e!2279528 () Bool)

(assert (=> b!3681248 (= e!2279534 (not e!2279528))))

(declare-fun res!1495630 () Bool)

(assert (=> b!3681248 (=> res!1495630 e!2279528)))

(declare-fun matchR!5176 (Regex!10607 List!38951) Bool)

(assert (=> b!3681248 (= res!1495630 (not (matchR!5176 (regex!5848 rule!403) lt!1287175)))))

(declare-fun ruleValid!2112 (LexerInterface!5437 Rule!11496) Bool)

(assert (=> b!3681248 (ruleValid!2112 thiss!23823 rule!403)))

(declare-fun lt!1287199 () Unit!56886)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1266 (LexerInterface!5437 Rule!11496 List!38953) Unit!56886)

(assert (=> b!3681248 (= lt!1287199 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1266 thiss!23823 rule!403 rules!3307))))

(declare-fun bm!266663 () Bool)

(declare-fun call!266672 () Unit!56886)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!796 (Regex!10607 List!38951 C!21400) Unit!56886)

(assert (=> bm!266663 (= call!266672 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!796 (regex!5848 (rule!8686 (_1!22482 lt!1287178))) lt!1287218 lt!1287192))))

(declare-fun b!3681249 () Bool)

(declare-fun e!2279524 () Bool)

(declare-fun e!2279514 () Bool)

(declare-fun tp!1119004 () Bool)

(assert (=> b!3681249 (= e!2279524 (and e!2279514 tp!1119004))))

(declare-fun e!2279522 () Bool)

(assert (=> b!3681250 (= e!2279522 (and tp!1118999 tp!1119010))))

(declare-fun b!3681251 () Bool)

(declare-fun e!2279504 () Bool)

(assert (=> b!3681251 (= e!2279507 e!2279504)))

(declare-fun res!1495641 () Bool)

(assert (=> b!3681251 (=> res!1495641 e!2279504)))

(declare-fun lt!1287180 () TokenValue!6078)

(declare-fun lt!1287207 () Int)

(assert (=> b!3681251 (= res!1495641 (not (= lt!1287213 (Some!8324 (tuple2!38697 (Token!11063 lt!1287180 (rule!8686 (_1!22482 lt!1287178)) lt!1287207 lt!1287218) (_2!22482 lt!1287178))))))))

(declare-fun size!29690 (BalanceConc!23388) Int)

(assert (=> b!3681251 (= lt!1287207 (size!29690 lt!1287216))))

(declare-fun apply!9350 (TokenValueInjection!11584 BalanceConc!23388) TokenValue!6078)

(assert (=> b!3681251 (= lt!1287180 (apply!9350 (transformation!5848 (rule!8686 (_1!22482 lt!1287178))) lt!1287216))))

(declare-fun lt!1287177 () Unit!56886)

(declare-fun lemmaCharactersSize!893 (Token!11062) Unit!56886)

(assert (=> b!3681251 (= lt!1287177 (lemmaCharactersSize!893 (_1!22482 lt!1287178)))))

(declare-fun lt!1287224 () Unit!56886)

(declare-fun lemmaEqSameImage!1031 (TokenValueInjection!11584 BalanceConc!23388 BalanceConc!23388) Unit!56886)

(declare-fun seqFromList!4397 (List!38951) BalanceConc!23388)

(assert (=> b!3681251 (= lt!1287224 (lemmaEqSameImage!1031 (transformation!5848 (rule!8686 (_1!22482 lt!1287178))) lt!1287216 (seqFromList!4397 (originalCharacters!6562 (_1!22482 lt!1287178)))))))

(declare-fun lt!1287176 () Unit!56886)

(declare-fun lemmaSemiInverse!1597 (TokenValueInjection!11584 BalanceConc!23388) Unit!56886)

(assert (=> b!3681251 (= lt!1287176 (lemmaSemiInverse!1597 (transformation!5848 (rule!8686 (_1!22482 lt!1287178))) lt!1287216))))

(declare-fun e!2279540 () Bool)

(declare-fun b!3681252 () Bool)

(declare-fun e!2279533 () Bool)

(declare-fun tp!1119008 () Bool)

(declare-fun inv!52323 (String!43724) Bool)

(declare-fun inv!52326 (TokenValueInjection!11584) Bool)

(assert (=> b!3681252 (= e!2279533 (and tp!1119008 (inv!52323 (tag!6652 anOtherTypeRule!33)) (inv!52326 (transformation!5848 anOtherTypeRule!33)) e!2279540))))

(declare-fun e!2279515 () Bool)

(assert (=> b!3681253 (= e!2279515 (and tp!1119009 tp!1119001))))

(declare-fun b!3681254 () Bool)

(declare-fun res!1495625 () Bool)

(assert (=> b!3681254 (=> res!1495625 e!2279531)))

(declare-fun usedCharacters!1060 (Regex!10607) List!38951)

(assert (=> b!3681254 (= res!1495625 (not (contains!7763 (usedCharacters!1060 (regex!5848 anOtherTypeRule!33)) lt!1287192)))))

(declare-fun b!3681255 () Bool)

(assert (=> b!3681255 false))

(declare-fun lt!1287205 () Unit!56886)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!256 (LexerInterface!5437 List!38953 Rule!11496 List!38951 List!38951 Rule!11496) Unit!56886)

(assert (=> b!3681255 (= lt!1287205 (lemmaMaxPrefNoSmallerRuleMatches!256 thiss!23823 rules!3307 (rule!8686 (_1!22482 lt!1287178)) lt!1287175 lt!1287211 rule!403))))

(declare-fun Unit!56891 () Unit!56886)

(assert (=> b!3681255 (= e!2279527 Unit!56891)))

(declare-fun b!3681256 () Bool)

(assert (=> b!3681256 (= e!2279528 e!2279531)))

(declare-fun res!1495636 () Bool)

(assert (=> b!3681256 (=> res!1495636 e!2279531)))

(declare-fun lt!1287232 () List!38951)

(assert (=> b!3681256 (= res!1495636 (contains!7763 lt!1287232 lt!1287192))))

(declare-fun head!7902 (List!38951) C!21400)

(assert (=> b!3681256 (= lt!1287192 (head!7902 suffix!1395))))

(assert (=> b!3681256 (= lt!1287232 (usedCharacters!1060 (regex!5848 rule!403)))))

(declare-fun b!3681257 () Bool)

(declare-fun e!2279539 () Unit!56886)

(declare-fun e!2279512 () Unit!56886)

(assert (=> b!3681257 (= e!2279539 e!2279512)))

(declare-fun c!636785 () Bool)

(assert (=> b!3681257 (= c!636785 (isSeparator!5848 (rule!8686 (_1!22482 lt!1287178))))))

(declare-fun b!3681258 () Bool)

(declare-fun res!1495628 () Bool)

(assert (=> b!3681258 (=> (not res!1495628) (not e!2279536))))

(declare-fun isEmpty!23062 (List!38953) Bool)

(assert (=> b!3681258 (= res!1495628 (not (isEmpty!23062 rules!3307)))))

(declare-fun b!3681259 () Bool)

(declare-fun e!2279537 () Unit!56886)

(declare-fun Unit!56892 () Unit!56886)

(assert (=> b!3681259 (= e!2279537 Unit!56892)))

(declare-fun lt!1287231 () C!21400)

(declare-fun call!266669 () Unit!56886)

(declare-fun bm!266664 () Bool)

(assert (=> bm!266664 (= call!266669 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!796 (regex!5848 (rule!8686 (_1!22482 lt!1287178))) lt!1287218 lt!1287231))))

(assert (=> b!3681260 (= e!2279540 (and tp!1118996 tp!1119006))))

(declare-fun b!3681261 () Bool)

(declare-fun e!2279523 () Bool)

(assert (=> b!3681261 e!2279523))

(declare-fun res!1495637 () Bool)

(assert (=> b!3681261 (=> (not res!1495637) (not e!2279523))))

(assert (=> b!3681261 (= res!1495637 (not (matchR!5176 (regex!5848 (rule!8686 (_1!22482 lt!1287178))) lt!1287175)))))

(declare-fun lt!1287181 () Unit!56886)

(assert (=> b!3681261 (= lt!1287181 (lemmaMaxPrefNoSmallerRuleMatches!256 thiss!23823 rules!3307 rule!403 lt!1287175 lt!1287175 (rule!8686 (_1!22482 lt!1287178))))))

(declare-fun isEmpty!23063 (List!38951) Bool)

(declare-fun getSuffix!1764 (List!38951 List!38951) List!38951)

(assert (=> b!3681261 (isEmpty!23063 (getSuffix!1764 lt!1287175 lt!1287175))))

(declare-fun lt!1287217 () Unit!56886)

(declare-fun lemmaGetSuffixOnListWithItSelfIsEmpty!228 (List!38951) Unit!56886)

(assert (=> b!3681261 (= lt!1287217 (lemmaGetSuffixOnListWithItSelfIsEmpty!228 lt!1287175))))

(declare-fun Unit!56893 () Unit!56886)

(assert (=> b!3681261 (= e!2279520 Unit!56893)))

(declare-fun b!3681262 () Bool)

(declare-fun Unit!56894 () Unit!56886)

(assert (=> b!3681262 (= e!2279516 Unit!56894)))

(declare-fun tp!1118998 () Bool)

(declare-fun b!3681263 () Bool)

(assert (=> b!3681263 (= e!2279514 (and tp!1118998 (inv!52323 (tag!6652 (h!44249 rules!3307))) (inv!52326 (transformation!5848 (h!44249 rules!3307))) e!2279522))))

(declare-fun b!3681264 () Bool)

(assert (=> b!3681264 (= e!2279539 e!2279510)))

(declare-fun c!636780 () Bool)

(assert (=> b!3681264 (= c!636780 (not (isSeparator!5848 (rule!8686 (_1!22482 lt!1287178)))))))

(declare-fun b!3681265 () Bool)

(declare-fun res!1495643 () Bool)

(assert (=> b!3681265 (=> res!1495643 e!2279528)))

(assert (=> b!3681265 (= res!1495643 (isEmpty!23063 suffix!1395))))

(declare-fun e!2279517 () Bool)

(declare-fun tp!1118997 () Bool)

(declare-fun token!511 () Token!11062)

(declare-fun e!2279518 () Bool)

(declare-fun b!3681266 () Bool)

(declare-fun inv!21 (TokenValue!6078) Bool)

(assert (=> b!3681266 (= e!2279518 (and (inv!21 (value!187128 token!511)) e!2279517 tp!1118997))))

(declare-fun b!3681267 () Bool)

(declare-fun res!1495645 () Bool)

(assert (=> b!3681267 (=> res!1495645 e!2279507)))

(assert (=> b!3681267 (= res!1495645 (not (matchR!5176 (regex!5848 (rule!8686 (_1!22482 lt!1287178))) lt!1287218)))))

(declare-fun b!3681268 () Bool)

(assert (=> b!3681268 false))

(declare-fun lt!1287225 () Unit!56886)

(assert (=> b!3681268 (= lt!1287225 call!266669)))

(declare-fun call!266670 () Bool)

(assert (=> b!3681268 (not call!266670)))

(declare-fun lt!1287229 () Unit!56886)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!376 (LexerInterface!5437 List!38953 List!38953 Rule!11496 Rule!11496 C!21400) Unit!56886)

(assert (=> b!3681268 (= lt!1287229 (lemmaSepRuleNotContainsCharContainedInANonSepRule!376 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8686 (_1!22482 lt!1287178)) lt!1287231))))

(declare-fun Unit!56895 () Unit!56886)

(assert (=> b!3681268 (= e!2279512 Unit!56895)))

(declare-fun b!3681269 () Bool)

(declare-fun e!2279526 () Bool)

(assert (=> b!3681269 (= e!2279526 (or (not (= lt!1287228 lt!1287211)) (= lt!1287175 lt!1287218)))))

(declare-fun lt!1287186 () List!38951)

(assert (=> b!3681269 (= lt!1287186 (_2!22482 lt!1287178))))

(declare-fun lt!1287179 () Unit!56886)

(declare-fun lemmaSamePrefixThenSameSuffix!1538 (List!38951 List!38951 List!38951 List!38951 List!38951) Unit!56886)

(assert (=> b!3681269 (= lt!1287179 (lemmaSamePrefixThenSameSuffix!1538 lt!1287175 lt!1287186 lt!1287218 (_2!22482 lt!1287178) lt!1287211))))

(declare-fun maxPrefixOneRule!2109 (LexerInterface!5437 Rule!11496 List!38951) Option!8325)

(declare-fun size!29691 (List!38951) Int)

(assert (=> b!3681269 (= (maxPrefixOneRule!2109 thiss!23823 rule!403 lt!1287211) (Some!8324 (tuple2!38697 (Token!11063 (apply!9350 (transformation!5848 rule!403) (seqFromList!4397 lt!1287175)) rule!403 (size!29691 lt!1287175) lt!1287175) lt!1287186)))))

(declare-fun lt!1287185 () Unit!56886)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1165 (LexerInterface!5437 List!38953 List!38951 List!38951 List!38951 Rule!11496) Unit!56886)

(assert (=> b!3681269 (= lt!1287185 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1165 thiss!23823 rules!3307 lt!1287175 lt!1287211 lt!1287186 rule!403))))

(assert (=> b!3681269 (= lt!1287186 (getSuffix!1764 lt!1287211 lt!1287175))))

(declare-fun lt!1287227 () Unit!56886)

(assert (=> b!3681269 (= lt!1287227 e!2279516)))

(declare-fun c!636778 () Bool)

(assert (=> b!3681269 (= c!636778 (not (= (rule!8686 (_1!22482 lt!1287178)) (rule!8686 token!511))))))

(assert (=> b!3681269 (= lt!1287218 lt!1287175)))

(declare-fun lt!1287210 () Unit!56886)

(declare-fun lemmaIsPrefixSameLengthThenSameList!673 (List!38951 List!38951 List!38951) Unit!56886)

(assert (=> b!3681269 (= lt!1287210 (lemmaIsPrefixSameLengthThenSameList!673 lt!1287218 lt!1287175 lt!1287211))))

(declare-fun lt!1287214 () Unit!56886)

(declare-fun e!2279530 () Unit!56886)

(assert (=> b!3681269 (= lt!1287214 e!2279530)))

(declare-fun c!636782 () Bool)

(declare-fun lt!1287188 () Int)

(assert (=> b!3681269 (= c!636782 (< lt!1287207 lt!1287188))))

(declare-fun lt!1287182 () Unit!56886)

(declare-fun e!2279525 () Unit!56886)

(assert (=> b!3681269 (= lt!1287182 e!2279525)))

(declare-fun c!636787 () Bool)

(assert (=> b!3681269 (= c!636787 (> lt!1287207 lt!1287188))))

(declare-fun lt!1287200 () BalanceConc!23388)

(assert (=> b!3681269 (= lt!1287188 (size!29690 lt!1287200))))

(declare-fun lt!1287234 () Unit!56886)

(assert (=> b!3681269 (= lt!1287234 e!2279539)))

(declare-fun c!636784 () Bool)

(assert (=> b!3681269 (= c!636784 (isSeparator!5848 rule!403))))

(declare-fun lt!1287190 () Unit!56886)

(assert (=> b!3681269 (= lt!1287190 e!2279537)))

(declare-fun c!636786 () Bool)

(assert (=> b!3681269 (= c!636786 (not (contains!7763 lt!1287232 lt!1287231)))))

(assert (=> b!3681269 (= lt!1287231 (head!7902 lt!1287218))))

(declare-fun b!3681244 () Bool)

(assert (=> b!3681244 (= e!2279523 false)))

(declare-fun res!1495633 () Bool)

(assert (=> start!345434 (=> (not res!1495633) (not e!2279536))))

(get-info :version)

(assert (=> start!345434 (= res!1495633 ((_ is Lexer!5435) thiss!23823))))

(assert (=> start!345434 e!2279536))

(assert (=> start!345434 e!2279524))

(assert (=> start!345434 e!2279521))

(assert (=> start!345434 true))

(declare-fun inv!52327 (Token!11062) Bool)

(assert (=> start!345434 (and (inv!52327 token!511) e!2279518)))

(declare-fun e!2279532 () Bool)

(assert (=> start!345434 e!2279532))

(assert (=> start!345434 e!2279533))

(declare-fun b!3681270 () Bool)

(declare-fun e!2279513 () Bool)

(assert (=> b!3681270 (= e!2279513 e!2279534)))

(declare-fun res!1495635 () Bool)

(assert (=> b!3681270 (=> (not res!1495635) (not e!2279534))))

(declare-fun lt!1287233 () tuple2!38696)

(assert (=> b!3681270 (= res!1495635 (= (_1!22482 lt!1287233) token!511))))

(declare-fun lt!1287193 () Option!8325)

(assert (=> b!3681270 (= lt!1287233 (get!12858 lt!1287193))))

(declare-fun bm!266665 () Bool)

(declare-fun call!266671 () List!38951)

(assert (=> bm!266665 (= call!266670 (contains!7763 call!266671 lt!1287231))))

(declare-fun b!3681271 () Bool)

(declare-fun res!1495639 () Bool)

(assert (=> b!3681271 (=> (not res!1495639) (not e!2279534))))

(assert (=> b!3681271 (= res!1495639 (= (rule!8686 token!511) rule!403))))

(declare-fun b!3681272 () Bool)

(declare-fun e!2279509 () Unit!56886)

(assert (=> b!3681272 (= e!2279525 e!2279509)))

(declare-fun lt!1287204 () Unit!56886)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!156 (List!38951 List!38951 List!38951 List!38951) Unit!56886)

(assert (=> b!3681272 (= lt!1287204 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!156 lt!1287175 suffix!1395 lt!1287218 lt!1287211))))

(assert (=> b!3681272 (contains!7763 lt!1287218 lt!1287192)))

(declare-fun c!636781 () Bool)

(assert (=> b!3681272 (= c!636781 (isSeparator!5848 rule!403))))

(declare-fun b!3681273 () Bool)

(declare-fun Unit!56896 () Unit!56886)

(assert (=> b!3681273 (= e!2279525 Unit!56896)))

(declare-fun b!3681274 () Bool)

(declare-fun res!1495629 () Bool)

(assert (=> b!3681274 (=> (not res!1495629) (not e!2279536))))

(assert (=> b!3681274 (= res!1495629 (not (= (isSeparator!5848 anOtherTypeRule!33) (isSeparator!5848 rule!403))))))

(declare-fun b!3681275 () Bool)

(assert (=> b!3681275 false))

(declare-fun lt!1287184 () Unit!56886)

(assert (=> b!3681275 (= lt!1287184 call!266672)))

(assert (=> b!3681275 (not call!266667)))

(declare-fun lt!1287183 () Unit!56886)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!494 (LexerInterface!5437 List!38953 List!38953 Rule!11496 Rule!11496 C!21400) Unit!56886)

(assert (=> b!3681275 (= lt!1287183 (lemmaNonSepRuleNotContainsCharContainedInASepRule!494 thiss!23823 rules!3307 rules!3307 (rule!8686 (_1!22482 lt!1287178)) anOtherTypeRule!33 lt!1287192))))

(declare-fun Unit!56897 () Unit!56886)

(assert (=> b!3681275 (= e!2279509 Unit!56897)))

(declare-fun e!2279511 () Bool)

(assert (=> b!3681276 (= e!2279511 (and tp!1119003 tp!1119000))))

(declare-fun b!3681277 () Bool)

(declare-fun e!2279506 () Bool)

(assert (=> b!3681277 (= e!2279519 e!2279506)))

(declare-fun res!1495644 () Bool)

(assert (=> b!3681277 (=> (not res!1495644) (not e!2279506))))

(declare-fun lt!1287222 () Rule!11496)

(assert (=> b!3681277 (= res!1495644 (matchR!5176 (regex!5848 lt!1287222) (list!14434 (charsOf!3862 (_1!22482 lt!1287178)))))))

(declare-fun get!12859 (Option!8324) Rule!11496)

(assert (=> b!3681277 (= lt!1287222 (get!12859 lt!1287220))))

(declare-fun b!3681278 () Bool)

(assert (=> b!3681278 (= e!2279504 e!2279526)))

(declare-fun res!1495640 () Bool)

(assert (=> b!3681278 (=> res!1495640 e!2279526)))

(declare-fun lt!1287219 () Option!8325)

(declare-fun lt!1287212 () List!38951)

(assert (=> b!3681278 (= res!1495640 (or (not (= lt!1287212 (_2!22482 lt!1287178))) (not (= lt!1287219 (Some!8324 (tuple2!38697 (_1!22482 lt!1287178) lt!1287212))))))))

(assert (=> b!3681278 (= (_2!22482 lt!1287178) lt!1287212)))

(declare-fun lt!1287208 () Unit!56886)

(assert (=> b!3681278 (= lt!1287208 (lemmaSamePrefixThenSameSuffix!1538 lt!1287218 (_2!22482 lt!1287178) lt!1287218 lt!1287212 lt!1287211))))

(assert (=> b!3681278 (= lt!1287212 (getSuffix!1764 lt!1287211 lt!1287218))))

(declare-fun lt!1287196 () Int)

(declare-fun lt!1287194 () TokenValue!6078)

(assert (=> b!3681278 (= lt!1287219 (Some!8324 (tuple2!38697 (Token!11063 lt!1287194 (rule!8686 (_1!22482 lt!1287178)) lt!1287196 lt!1287218) (_2!22482 lt!1287178))))))

(assert (=> b!3681278 (= lt!1287219 (maxPrefixOneRule!2109 thiss!23823 (rule!8686 (_1!22482 lt!1287178)) lt!1287211))))

(assert (=> b!3681278 (= lt!1287196 (size!29691 lt!1287218))))

(assert (=> b!3681278 (= lt!1287194 (apply!9350 (transformation!5848 (rule!8686 (_1!22482 lt!1287178))) (seqFromList!4397 lt!1287218)))))

(declare-fun lt!1287189 () Unit!56886)

(assert (=> b!3681278 (= lt!1287189 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1165 thiss!23823 rules!3307 lt!1287218 lt!1287211 (_2!22482 lt!1287178) (rule!8686 (_1!22482 lt!1287178))))))

(declare-fun b!3681279 () Bool)

(declare-fun Unit!56898 () Unit!56886)

(assert (=> b!3681279 (= e!2279527 Unit!56898)))

(declare-fun b!3681280 () Bool)

(assert (=> b!3681280 (= e!2279506 (= (rule!8686 (_1!22482 lt!1287178)) lt!1287222))))

(declare-fun b!3681281 () Bool)

(assert (=> b!3681281 (= e!2279536 e!2279513)))

(declare-fun res!1495627 () Bool)

(assert (=> b!3681281 (=> (not res!1495627) (not e!2279513))))

(declare-fun isDefined!6557 (Option!8325) Bool)

(assert (=> b!3681281 (= res!1495627 (isDefined!6557 lt!1287193))))

(assert (=> b!3681281 (= lt!1287193 (maxPrefix!2971 thiss!23823 rules!3307 lt!1287175))))

(assert (=> b!3681281 (= lt!1287175 (list!14434 lt!1287200))))

(assert (=> b!3681281 (= lt!1287200 (charsOf!3862 token!511))))

(declare-fun b!3681282 () Bool)

(declare-fun Unit!56899 () Unit!56886)

(assert (=> b!3681282 (= e!2279537 Unit!56899)))

(declare-fun lt!1287203 () Unit!56886)

(assert (=> b!3681282 (= lt!1287203 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!796 (regex!5848 rule!403) lt!1287175 lt!1287231))))

(assert (=> b!3681282 false))

(declare-fun b!3681283 () Bool)

(declare-fun Unit!56900 () Unit!56886)

(assert (=> b!3681283 (= e!2279530 Unit!56900)))

(declare-fun b!3681284 () Bool)

(declare-fun Unit!56901 () Unit!56886)

(assert (=> b!3681284 (= e!2279512 Unit!56901)))

(declare-fun b!3681285 () Bool)

(assert (=> b!3681285 false))

(declare-fun lt!1287215 () Unit!56886)

(assert (=> b!3681285 (= lt!1287215 call!266672)))

(assert (=> b!3681285 (not call!266667)))

(declare-fun lt!1287191 () Unit!56886)

(assert (=> b!3681285 (= lt!1287191 (lemmaSepRuleNotContainsCharContainedInANonSepRule!376 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8686 (_1!22482 lt!1287178)) lt!1287192))))

(declare-fun Unit!56902 () Unit!56886)

(assert (=> b!3681285 (= e!2279509 Unit!56902)))

(declare-fun b!3681286 () Bool)

(declare-fun res!1495634 () Bool)

(assert (=> b!3681286 (=> (not res!1495634) (not e!2279536))))

(declare-fun rulesInvariant!4834 (LexerInterface!5437 List!38953) Bool)

(assert (=> b!3681286 (= res!1495634 (rulesInvariant!4834 thiss!23823 rules!3307))))

(declare-fun b!3681287 () Bool)

(declare-fun res!1495646 () Bool)

(assert (=> b!3681287 (=> res!1495646 e!2279531)))

(declare-fun sepAndNonSepRulesDisjointChars!2016 (List!38953 List!38953) Bool)

(assert (=> b!3681287 (= res!1495646 (not (sepAndNonSepRulesDisjointChars!2016 rules!3307 rules!3307)))))

(declare-fun b!3681288 () Bool)

(assert (=> b!3681288 false))

(declare-fun lt!1287230 () Unit!56886)

(assert (=> b!3681288 (= lt!1287230 call!266669)))

(assert (=> b!3681288 (not call!266670)))

(declare-fun lt!1287202 () Unit!56886)

(assert (=> b!3681288 (= lt!1287202 (lemmaNonSepRuleNotContainsCharContainedInASepRule!494 thiss!23823 rules!3307 rules!3307 (rule!8686 (_1!22482 lt!1287178)) rule!403 lt!1287231))))

(declare-fun Unit!56903 () Unit!56886)

(assert (=> b!3681288 (= e!2279510 Unit!56903)))

(declare-fun bm!266666 () Bool)

(assert (=> bm!266666 (= call!266671 (usedCharacters!1060 (regex!5848 (rule!8686 (_1!22482 lt!1287178)))))))

(declare-fun b!3681289 () Bool)

(declare-fun tp!1119002 () Bool)

(assert (=> b!3681289 (= e!2279517 (and tp!1119002 (inv!52323 (tag!6652 (rule!8686 token!511))) (inv!52326 (transformation!5848 (rule!8686 token!511))) e!2279515))))

(declare-fun b!3681290 () Bool)

(declare-fun Unit!56904 () Unit!56886)

(assert (=> b!3681290 (= e!2279520 Unit!56904)))

(declare-fun tp!1119007 () Bool)

(declare-fun b!3681291 () Bool)

(assert (=> b!3681291 (= e!2279532 (and tp!1119007 (inv!52323 (tag!6652 rule!403)) (inv!52326 (transformation!5848 rule!403)) e!2279511))))

(declare-fun b!3681292 () Bool)

(declare-fun res!1495631 () Bool)

(assert (=> b!3681292 (=> (not res!1495631) (not e!2279534))))

(assert (=> b!3681292 (= res!1495631 (isEmpty!23063 (_2!22482 lt!1287233)))))

(declare-fun b!3681293 () Bool)

(declare-fun res!1495642 () Bool)

(assert (=> b!3681293 (=> (not res!1495642) (not e!2279536))))

(assert (=> b!3681293 (= res!1495642 (contains!7764 rules!3307 rule!403))))

(declare-fun bm!266667 () Bool)

(assert (=> bm!266667 (= call!266668 (usedCharacters!1060 (regex!5848 (rule!8686 (_1!22482 lt!1287178)))))))

(declare-fun b!3681294 () Bool)

(declare-fun Unit!56905 () Unit!56886)

(assert (=> b!3681294 (= e!2279530 Unit!56905)))

(declare-fun lt!1287226 () Unit!56886)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!390 (LexerInterface!5437 List!38953 Rule!11496 List!38951 List!38951 List!38951 Rule!11496) Unit!56886)

(assert (=> b!3681294 (= lt!1287226 (lemmaMaxPrefixOutputsMaxPrefix!390 thiss!23823 rules!3307 (rule!8686 (_1!22482 lt!1287178)) lt!1287218 lt!1287211 lt!1287175 rule!403))))

(assert (=> b!3681294 false))

(assert (= (and start!345434 res!1495633) b!3681258))

(assert (= (and b!3681258 res!1495628) b!3681286))

(assert (= (and b!3681286 res!1495634) b!3681293))

(assert (= (and b!3681293 res!1495642) b!3681245))

(assert (= (and b!3681245 res!1495632) b!3681274))

(assert (= (and b!3681274 res!1495629) b!3681281))

(assert (= (and b!3681281 res!1495627) b!3681270))

(assert (= (and b!3681270 res!1495635) b!3681292))

(assert (= (and b!3681292 res!1495631) b!3681271))

(assert (= (and b!3681271 res!1495639) b!3681248))

(assert (= (and b!3681248 (not res!1495630)) b!3681265))

(assert (= (and b!3681265 (not res!1495643)) b!3681256))

(assert (= (and b!3681256 (not res!1495636)) b!3681254))

(assert (= (and b!3681254 (not res!1495625)) b!3681287))

(assert (= (and b!3681287 (not res!1495646)) b!3681247))

(assert (= (and b!3681247 res!1495638) b!3681277))

(assert (= (and b!3681277 res!1495644) b!3681280))

(assert (= (and b!3681247 (not res!1495626)) b!3681267))

(assert (= (and b!3681267 (not res!1495645)) b!3681251))

(assert (= (and b!3681251 (not res!1495641)) b!3681278))

(assert (= (and b!3681278 (not res!1495640)) b!3681269))

(assert (= (and b!3681269 c!636786) b!3681282))

(assert (= (and b!3681269 (not c!636786)) b!3681259))

(assert (= (and b!3681269 c!636784) b!3681264))

(assert (= (and b!3681269 (not c!636784)) b!3681257))

(assert (= (and b!3681264 c!636780) b!3681288))

(assert (= (and b!3681264 (not c!636780)) b!3681243))

(assert (= (and b!3681257 c!636785) b!3681268))

(assert (= (and b!3681257 (not c!636785)) b!3681284))

(assert (= (or b!3681288 b!3681268) bm!266664))

(assert (= (or b!3681288 b!3681268) bm!266666))

(assert (= (or b!3681288 b!3681268) bm!266665))

(assert (= (and b!3681269 c!636787) b!3681272))

(assert (= (and b!3681269 (not c!636787)) b!3681273))

(assert (= (and b!3681272 c!636781) b!3681285))

(assert (= (and b!3681272 (not c!636781)) b!3681275))

(assert (= (or b!3681285 b!3681275) bm!266663))

(assert (= (or b!3681285 b!3681275) bm!266667))

(assert (= (or b!3681285 b!3681275) bm!266662))

(assert (= (and b!3681269 c!636782) b!3681294))

(assert (= (and b!3681269 (not c!636782)) b!3681283))

(assert (= (and b!3681269 c!636778) b!3681246))

(assert (= (and b!3681269 (not c!636778)) b!3681262))

(assert (= (and b!3681246 c!636783) b!3681261))

(assert (= (and b!3681246 (not c!636783)) b!3681290))

(assert (= (and b!3681261 res!1495637) b!3681244))

(assert (= (and b!3681246 c!636779) b!3681255))

(assert (= (and b!3681246 (not c!636779)) b!3681279))

(assert (= b!3681263 b!3681250))

(assert (= b!3681249 b!3681263))

(assert (= (and start!345434 ((_ is Cons!38829) rules!3307)) b!3681249))

(assert (= (and start!345434 ((_ is Cons!38827) suffix!1395)) b!3681242))

(assert (= b!3681289 b!3681253))

(assert (= b!3681266 b!3681289))

(assert (= start!345434 b!3681266))

(assert (= b!3681291 b!3681276))

(assert (= start!345434 b!3681291))

(assert (= b!3681252 b!3681260))

(assert (= start!345434 b!3681252))

(declare-fun m!4191851 () Bool)

(assert (=> b!3681282 m!4191851))

(declare-fun m!4191853 () Bool)

(assert (=> b!3681247 m!4191853))

(declare-fun m!4191855 () Bool)

(assert (=> b!3681247 m!4191855))

(declare-fun m!4191857 () Bool)

(assert (=> b!3681247 m!4191857))

(declare-fun m!4191859 () Bool)

(assert (=> b!3681247 m!4191859))

(declare-fun m!4191861 () Bool)

(assert (=> b!3681247 m!4191861))

(declare-fun m!4191863 () Bool)

(assert (=> b!3681247 m!4191863))

(declare-fun m!4191865 () Bool)

(assert (=> b!3681247 m!4191865))

(declare-fun m!4191867 () Bool)

(assert (=> b!3681247 m!4191867))

(declare-fun m!4191869 () Bool)

(assert (=> b!3681247 m!4191869))

(declare-fun m!4191871 () Bool)

(assert (=> b!3681247 m!4191871))

(declare-fun m!4191873 () Bool)

(assert (=> b!3681247 m!4191873))

(declare-fun m!4191875 () Bool)

(assert (=> b!3681247 m!4191875))

(declare-fun m!4191877 () Bool)

(assert (=> b!3681247 m!4191877))

(declare-fun m!4191879 () Bool)

(assert (=> b!3681247 m!4191879))

(declare-fun m!4191881 () Bool)

(assert (=> b!3681247 m!4191881))

(declare-fun m!4191883 () Bool)

(assert (=> b!3681286 m!4191883))

(declare-fun m!4191885 () Bool)

(assert (=> bm!266663 m!4191885))

(declare-fun m!4191887 () Bool)

(assert (=> bm!266664 m!4191887))

(declare-fun m!4191889 () Bool)

(assert (=> b!3681268 m!4191889))

(declare-fun m!4191891 () Bool)

(assert (=> start!345434 m!4191891))

(declare-fun m!4191893 () Bool)

(assert (=> b!3681251 m!4191893))

(declare-fun m!4191895 () Bool)

(assert (=> b!3681251 m!4191895))

(declare-fun m!4191897 () Bool)

(assert (=> b!3681251 m!4191897))

(declare-fun m!4191899 () Bool)

(assert (=> b!3681251 m!4191899))

(declare-fun m!4191901 () Bool)

(assert (=> b!3681251 m!4191901))

(assert (=> b!3681251 m!4191899))

(declare-fun m!4191903 () Bool)

(assert (=> b!3681251 m!4191903))

(declare-fun m!4191905 () Bool)

(assert (=> b!3681254 m!4191905))

(assert (=> b!3681254 m!4191905))

(declare-fun m!4191907 () Bool)

(assert (=> b!3681254 m!4191907))

(declare-fun m!4191909 () Bool)

(assert (=> b!3681288 m!4191909))

(declare-fun m!4191911 () Bool)

(assert (=> b!3681292 m!4191911))

(declare-fun m!4191913 () Bool)

(assert (=> b!3681275 m!4191913))

(declare-fun m!4191915 () Bool)

(assert (=> b!3681289 m!4191915))

(declare-fun m!4191917 () Bool)

(assert (=> b!3681289 m!4191917))

(assert (=> b!3681277 m!4191857))

(assert (=> b!3681277 m!4191857))

(declare-fun m!4191919 () Bool)

(assert (=> b!3681277 m!4191919))

(assert (=> b!3681277 m!4191919))

(declare-fun m!4191921 () Bool)

(assert (=> b!3681277 m!4191921))

(declare-fun m!4191923 () Bool)

(assert (=> b!3681277 m!4191923))

(declare-fun m!4191925 () Bool)

(assert (=> b!3681256 m!4191925))

(declare-fun m!4191927 () Bool)

(assert (=> b!3681256 m!4191927))

(declare-fun m!4191929 () Bool)

(assert (=> b!3681256 m!4191929))

(declare-fun m!4191931 () Bool)

(assert (=> b!3681246 m!4191931))

(declare-fun m!4191933 () Bool)

(assert (=> b!3681246 m!4191933))

(declare-fun m!4191935 () Bool)

(assert (=> b!3681246 m!4191935))

(declare-fun m!4191937 () Bool)

(assert (=> b!3681267 m!4191937))

(declare-fun m!4191939 () Bool)

(assert (=> b!3681278 m!4191939))

(declare-fun m!4191941 () Bool)

(assert (=> b!3681278 m!4191941))

(declare-fun m!4191943 () Bool)

(assert (=> b!3681278 m!4191943))

(declare-fun m!4191945 () Bool)

(assert (=> b!3681278 m!4191945))

(assert (=> b!3681278 m!4191945))

(declare-fun m!4191947 () Bool)

(assert (=> b!3681278 m!4191947))

(declare-fun m!4191949 () Bool)

(assert (=> b!3681278 m!4191949))

(declare-fun m!4191951 () Bool)

(assert (=> b!3681278 m!4191951))

(declare-fun m!4191953 () Bool)

(assert (=> b!3681265 m!4191953))

(declare-fun m!4191955 () Bool)

(assert (=> b!3681261 m!4191955))

(declare-fun m!4191957 () Bool)

(assert (=> b!3681261 m!4191957))

(declare-fun m!4191959 () Bool)

(assert (=> b!3681261 m!4191959))

(declare-fun m!4191961 () Bool)

(assert (=> b!3681261 m!4191961))

(declare-fun m!4191963 () Bool)

(assert (=> b!3681261 m!4191963))

(assert (=> b!3681261 m!4191957))

(declare-fun m!4191965 () Bool)

(assert (=> b!3681272 m!4191965))

(declare-fun m!4191967 () Bool)

(assert (=> b!3681272 m!4191967))

(declare-fun m!4191969 () Bool)

(assert (=> b!3681263 m!4191969))

(declare-fun m!4191971 () Bool)

(assert (=> b!3681263 m!4191971))

(declare-fun m!4191973 () Bool)

(assert (=> b!3681266 m!4191973))

(declare-fun m!4191975 () Bool)

(assert (=> b!3681270 m!4191975))

(declare-fun m!4191977 () Bool)

(assert (=> bm!266665 m!4191977))

(declare-fun m!4191979 () Bool)

(assert (=> bm!266667 m!4191979))

(declare-fun m!4191981 () Bool)

(assert (=> b!3681291 m!4191981))

(declare-fun m!4191983 () Bool)

(assert (=> b!3681291 m!4191983))

(declare-fun m!4191985 () Bool)

(assert (=> b!3681294 m!4191985))

(declare-fun m!4191987 () Bool)

(assert (=> b!3681281 m!4191987))

(declare-fun m!4191989 () Bool)

(assert (=> b!3681281 m!4191989))

(declare-fun m!4191991 () Bool)

(assert (=> b!3681281 m!4191991))

(declare-fun m!4191993 () Bool)

(assert (=> b!3681281 m!4191993))

(assert (=> bm!266666 m!4191979))

(declare-fun m!4191995 () Bool)

(assert (=> b!3681293 m!4191995))

(declare-fun m!4191997 () Bool)

(assert (=> b!3681248 m!4191997))

(declare-fun m!4191999 () Bool)

(assert (=> b!3681248 m!4191999))

(declare-fun m!4192001 () Bool)

(assert (=> b!3681248 m!4192001))

(declare-fun m!4192003 () Bool)

(assert (=> bm!266662 m!4192003))

(declare-fun m!4192005 () Bool)

(assert (=> b!3681287 m!4192005))

(declare-fun m!4192007 () Bool)

(assert (=> b!3681255 m!4192007))

(declare-fun m!4192009 () Bool)

(assert (=> b!3681252 m!4192009))

(declare-fun m!4192011 () Bool)

(assert (=> b!3681252 m!4192011))

(declare-fun m!4192013 () Bool)

(assert (=> b!3681258 m!4192013))

(declare-fun m!4192015 () Bool)

(assert (=> b!3681269 m!4192015))

(declare-fun m!4192017 () Bool)

(assert (=> b!3681269 m!4192017))

(declare-fun m!4192019 () Bool)

(assert (=> b!3681269 m!4192019))

(declare-fun m!4192021 () Bool)

(assert (=> b!3681269 m!4192021))

(declare-fun m!4192023 () Bool)

(assert (=> b!3681269 m!4192023))

(assert (=> b!3681269 m!4192017))

(declare-fun m!4192025 () Bool)

(assert (=> b!3681269 m!4192025))

(declare-fun m!4192027 () Bool)

(assert (=> b!3681269 m!4192027))

(declare-fun m!4192029 () Bool)

(assert (=> b!3681269 m!4192029))

(declare-fun m!4192031 () Bool)

(assert (=> b!3681269 m!4192031))

(declare-fun m!4192033 () Bool)

(assert (=> b!3681269 m!4192033))

(declare-fun m!4192035 () Bool)

(assert (=> b!3681269 m!4192035))

(declare-fun m!4192037 () Bool)

(assert (=> b!3681285 m!4192037))

(declare-fun m!4192039 () Bool)

(assert (=> b!3681245 m!4192039))

(check-sat (not b!3681249) (not b!3681282) (not b!3681265) (not bm!266666) (not b!3681242) (not b!3681255) b_and!275021 (not b_next!98225) (not b_next!98237) b_and!275025 (not b!3681252) (not b!3681266) (not bm!266663) (not b_next!98229) (not b!3681294) (not b!3681277) (not b!3681281) (not b!3681246) (not b!3681254) (not b!3681285) (not b!3681258) tp_is_empty!18297 (not b!3681278) (not b!3681292) (not b!3681247) (not b!3681272) (not b_next!98239) b_and!275011 (not b!3681275) (not b_next!98227) (not b!3681269) (not bm!266662) (not b!3681245) (not b!3681287) (not b!3681251) (not bm!266667) (not b!3681261) (not b!3681248) (not b!3681263) (not b_next!98235) b_and!275019 (not b!3681256) (not b!3681267) (not b!3681293) (not bm!266664) (not b_next!98231) (not bm!266665) (not b!3681288) (not b!3681268) (not b!3681270) (not b_next!98233) b_and!275023 (not b!3681286) (not b!3681291) b_and!275015 b_and!275013 (not start!345434) (not b!3681289) b_and!275017)
(check-sat (not b_next!98229) (not b_next!98239) b_and!275011 (not b_next!98227) (not b_next!98235) b_and!275019 (not b_next!98231) (not b_next!98233) b_and!275023 b_and!275015 b_and!275021 (not b_next!98225) (not b_next!98237) b_and!275025 b_and!275013 b_and!275017)
