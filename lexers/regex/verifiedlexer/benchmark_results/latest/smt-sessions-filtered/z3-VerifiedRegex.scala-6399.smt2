; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333358 () Bool)

(assert start!333358)

(declare-fun b!3591594 () Bool)

(declare-fun b_free!92649 () Bool)

(declare-fun b_next!93353 () Bool)

(assert (=> b!3591594 (= b_free!92649 (not b_next!93353))))

(declare-fun tp!1099326 () Bool)

(declare-fun b_and!259819 () Bool)

(assert (=> b!3591594 (= tp!1099326 b_and!259819)))

(declare-fun b_free!92651 () Bool)

(declare-fun b_next!93355 () Bool)

(assert (=> b!3591594 (= b_free!92651 (not b_next!93355))))

(declare-fun tp!1099324 () Bool)

(declare-fun b_and!259821 () Bool)

(assert (=> b!3591594 (= tp!1099324 b_and!259821)))

(declare-fun b!3591608 () Bool)

(declare-fun b_free!92653 () Bool)

(declare-fun b_next!93357 () Bool)

(assert (=> b!3591608 (= b_free!92653 (not b_next!93357))))

(declare-fun tp!1099325 () Bool)

(declare-fun b_and!259823 () Bool)

(assert (=> b!3591608 (= tp!1099325 b_and!259823)))

(declare-fun b_free!92655 () Bool)

(declare-fun b_next!93359 () Bool)

(assert (=> b!3591608 (= b_free!92655 (not b_next!93359))))

(declare-fun tp!1099335 () Bool)

(declare-fun b_and!259825 () Bool)

(assert (=> b!3591608 (= tp!1099335 b_and!259825)))

(declare-fun b!3591584 () Bool)

(declare-fun b_free!92657 () Bool)

(declare-fun b_next!93361 () Bool)

(assert (=> b!3591584 (= b_free!92657 (not b_next!93361))))

(declare-fun tp!1099334 () Bool)

(declare-fun b_and!259827 () Bool)

(assert (=> b!3591584 (= tp!1099334 b_and!259827)))

(declare-fun b_free!92659 () Bool)

(declare-fun b_next!93363 () Bool)

(assert (=> b!3591584 (= b_free!92659 (not b_next!93363))))

(declare-fun tp!1099331 () Bool)

(declare-fun b_and!259829 () Bool)

(assert (=> b!3591584 (= tp!1099331 b_and!259829)))

(declare-fun b!3591599 () Bool)

(declare-fun b_free!92661 () Bool)

(declare-fun b_next!93365 () Bool)

(assert (=> b!3591599 (= b_free!92661 (not b_next!93365))))

(declare-fun tp!1099332 () Bool)

(declare-fun b_and!259831 () Bool)

(assert (=> b!3591599 (= tp!1099332 b_and!259831)))

(declare-fun b_free!92663 () Bool)

(declare-fun b_next!93367 () Bool)

(assert (=> b!3591599 (= b_free!92663 (not b_next!93367))))

(declare-fun tp!1099327 () Bool)

(declare-fun b_and!259833 () Bool)

(assert (=> b!3591599 (= tp!1099327 b_and!259833)))

(declare-fun b!3591583 () Bool)

(declare-fun e!2222344 () Bool)

(declare-fun e!2222338 () Bool)

(assert (=> b!3591583 (= e!2222344 e!2222338)))

(declare-fun res!1450104 () Bool)

(assert (=> b!3591583 (=> res!1450104 e!2222338)))

(declare-datatypes ((C!20860 0))(
  ( (C!20861 (val!12478 Int)) )
))
(declare-datatypes ((List!37881 0))(
  ( (Nil!37757) (Cons!37757 (h!43177 C!20860) (t!291132 List!37881)) )
))
(declare-fun lt!1232243 () List!37881)

(declare-fun lt!1232258 () List!37881)

(declare-fun isPrefix!2941 (List!37881 List!37881) Bool)

(assert (=> b!3591583 (= res!1450104 (not (isPrefix!2941 lt!1232243 lt!1232258)))))

(declare-fun lt!1232239 () List!37881)

(assert (=> b!3591583 (isPrefix!2941 lt!1232243 lt!1232239)))

(declare-datatypes ((List!37882 0))(
  ( (Nil!37758) (Cons!37758 (h!43178 (_ BitVec 16)) (t!291133 List!37882)) )
))
(declare-datatypes ((TokenValue!5808 0))(
  ( (FloatLiteralValue!11616 (text!41101 List!37882)) (TokenValueExt!5807 (__x!23833 Int)) (Broken!29040 (value!179407 List!37882)) (Object!5931) (End!5808) (Def!5808) (Underscore!5808) (Match!5808) (Else!5808) (Error!5808) (Case!5808) (If!5808) (Extends!5808) (Abstract!5808) (Class!5808) (Val!5808) (DelimiterValue!11616 (del!5868 List!37882)) (KeywordValue!5814 (value!179408 List!37882)) (CommentValue!11616 (value!179409 List!37882)) (WhitespaceValue!11616 (value!179410 List!37882)) (IndentationValue!5808 (value!179411 List!37882)) (String!42373) (Int32!5808) (Broken!29041 (value!179412 List!37882)) (Boolean!5809) (Unit!53758) (OperatorValue!5811 (op!5868 List!37882)) (IdentifierValue!11616 (value!179413 List!37882)) (IdentifierValue!11617 (value!179414 List!37882)) (WhitespaceValue!11617 (value!179415 List!37882)) (True!11616) (False!11616) (Broken!29042 (value!179416 List!37882)) (Broken!29043 (value!179417 List!37882)) (True!11617) (RightBrace!5808) (RightBracket!5808) (Colon!5808) (Null!5808) (Comma!5808) (LeftBracket!5808) (False!11617) (LeftBrace!5808) (ImaginaryLiteralValue!5808 (text!41102 List!37882)) (StringLiteralValue!17424 (value!179418 List!37882)) (EOFValue!5808 (value!179419 List!37882)) (IdentValue!5808 (value!179420 List!37882)) (DelimiterValue!11617 (value!179421 List!37882)) (DedentValue!5808 (value!179422 List!37882)) (NewLineValue!5808 (value!179423 List!37882)) (IntegerValue!17424 (value!179424 (_ BitVec 32)) (text!41103 List!37882)) (IntegerValue!17425 (value!179425 Int) (text!41104 List!37882)) (Times!5808) (Or!5808) (Equal!5808) (Minus!5808) (Broken!29044 (value!179426 List!37882)) (And!5808) (Div!5808) (LessEqual!5808) (Mod!5808) (Concat!16145) (Not!5808) (Plus!5808) (SpaceValue!5808 (value!179427 List!37882)) (IntegerValue!17426 (value!179428 Int) (text!41105 List!37882)) (StringLiteralValue!17425 (text!41106 List!37882)) (FloatLiteralValue!11617 (text!41107 List!37882)) (BytesLiteralValue!5808 (value!179429 List!37882)) (CommentValue!11617 (value!179430 List!37882)) (StringLiteralValue!17426 (value!179431 List!37882)) (ErrorTokenValue!5808 (msg!5869 List!37882)) )
))
(declare-datatypes ((Regex!10337 0))(
  ( (ElementMatch!10337 (c!621956 C!20860)) (Concat!16146 (regOne!21186 Regex!10337) (regTwo!21186 Regex!10337)) (EmptyExpr!10337) (Star!10337 (reg!10666 Regex!10337)) (EmptyLang!10337) (Union!10337 (regOne!21187 Regex!10337) (regTwo!21187 Regex!10337)) )
))
(declare-datatypes ((String!42374 0))(
  ( (String!42375 (value!179432 String)) )
))
(declare-datatypes ((IArray!22979 0))(
  ( (IArray!22980 (innerList!11547 List!37881)) )
))
(declare-datatypes ((Conc!11487 0))(
  ( (Node!11487 (left!29502 Conc!11487) (right!29832 Conc!11487) (csize!23204 Int) (cheight!11698 Int)) (Leaf!17887 (xs!14689 IArray!22979) (csize!23205 Int)) (Empty!11487) )
))
(declare-datatypes ((BalanceConc!22588 0))(
  ( (BalanceConc!22589 (c!621957 Conc!11487)) )
))
(declare-datatypes ((TokenValueInjection!11044 0))(
  ( (TokenValueInjection!11045 (toValue!7862 Int) (toChars!7721 Int)) )
))
(declare-datatypes ((Rule!10956 0))(
  ( (Rule!10957 (regex!5578 Regex!10337) (tag!6252 String!42374) (isSeparator!5578 Bool) (transformation!5578 TokenValueInjection!11044)) )
))
(declare-datatypes ((Token!10522 0))(
  ( (Token!10523 (value!179433 TokenValue!5808) (rule!8296 Rule!10956) (size!28760 Int) (originalCharacters!6292 List!37881)) )
))
(declare-datatypes ((tuple2!37644 0))(
  ( (tuple2!37645 (_1!21956 Token!10522) (_2!21956 List!37881)) )
))
(declare-fun lt!1232238 () tuple2!37644)

(declare-fun ++!9394 (List!37881 List!37881) List!37881)

(assert (=> b!3591583 (= lt!1232239 (++!9394 lt!1232243 (_2!21956 lt!1232238)))))

(declare-datatypes ((Unit!53759 0))(
  ( (Unit!53760) )
))
(declare-fun lt!1232241 () Unit!53759)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1862 (List!37881 List!37881) Unit!53759)

(assert (=> b!3591583 (= lt!1232241 (lemmaConcatTwoListThenFirstIsPrefix!1862 lt!1232243 (_2!21956 lt!1232238)))))

(declare-fun lt!1232242 () BalanceConc!22588)

(declare-fun list!13890 (BalanceConc!22588) List!37881)

(assert (=> b!3591583 (= lt!1232243 (list!13890 lt!1232242))))

(declare-fun charsOf!3592 (Token!10522) BalanceConc!22588)

(assert (=> b!3591583 (= lt!1232242 (charsOf!3592 (_1!21956 lt!1232238)))))

(declare-fun e!2222323 () Bool)

(assert (=> b!3591583 e!2222323))

(declare-fun res!1450115 () Bool)

(assert (=> b!3591583 (=> (not res!1450115) (not e!2222323))))

(declare-datatypes ((Option!7786 0))(
  ( (None!7785) (Some!7785 (v!37463 Rule!10956)) )
))
(declare-fun lt!1232249 () Option!7786)

(declare-fun isDefined!6018 (Option!7786) Bool)

(assert (=> b!3591583 (= res!1450115 (isDefined!6018 lt!1232249))))

(declare-datatypes ((List!37883 0))(
  ( (Nil!37759) (Cons!37759 (h!43179 Rule!10956) (t!291134 List!37883)) )
))
(declare-fun rules!3307 () List!37883)

(declare-datatypes ((LexerInterface!5167 0))(
  ( (LexerInterfaceExt!5164 (__x!23834 Int)) (Lexer!5165) )
))
(declare-fun thiss!23823 () LexerInterface!5167)

(declare-fun getRuleFromTag!1184 (LexerInterface!5167 List!37883 String!42374) Option!7786)

(assert (=> b!3591583 (= lt!1232249 (getRuleFromTag!1184 thiss!23823 rules!3307 (tag!6252 (rule!8296 (_1!21956 lt!1232238)))))))

(declare-fun lt!1232246 () Unit!53759)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1184 (LexerInterface!5167 List!37883 List!37881 Token!10522) Unit!53759)

(assert (=> b!3591583 (= lt!1232246 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1184 thiss!23823 rules!3307 lt!1232258 (_1!21956 lt!1232238)))))

(declare-datatypes ((Option!7787 0))(
  ( (None!7786) (Some!7786 (v!37464 tuple2!37644)) )
))
(declare-fun lt!1232245 () Option!7787)

(declare-fun get!12185 (Option!7787) tuple2!37644)

(assert (=> b!3591583 (= lt!1232238 (get!12185 lt!1232245))))

(declare-fun lt!1232248 () List!37881)

(declare-fun lt!1232244 () Unit!53759)

(declare-fun suffix!1395 () List!37881)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!847 (LexerInterface!5167 List!37883 List!37881 List!37881) Unit!53759)

(assert (=> b!3591583 (= lt!1232244 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!847 thiss!23823 rules!3307 lt!1232248 suffix!1395))))

(declare-fun maxPrefix!2701 (LexerInterface!5167 List!37883 List!37881) Option!7787)

(assert (=> b!3591583 (= lt!1232245 (maxPrefix!2701 thiss!23823 rules!3307 lt!1232258))))

(assert (=> b!3591583 (isPrefix!2941 lt!1232248 lt!1232258)))

(declare-fun lt!1232254 () Unit!53759)

(assert (=> b!3591583 (= lt!1232254 (lemmaConcatTwoListThenFirstIsPrefix!1862 lt!1232248 suffix!1395))))

(assert (=> b!3591583 (= lt!1232258 (++!9394 lt!1232248 suffix!1395))))

(declare-fun e!2222325 () Bool)

(assert (=> b!3591584 (= e!2222325 (and tp!1099334 tp!1099331))))

(declare-fun b!3591585 () Bool)

(declare-fun res!1450112 () Bool)

(declare-fun e!2222327 () Bool)

(assert (=> b!3591585 (=> (not res!1450112) (not e!2222327))))

(declare-fun isEmpty!22254 (List!37883) Bool)

(assert (=> b!3591585 (= res!1450112 (not (isEmpty!22254 rules!3307)))))

(declare-fun b!3591586 () Bool)

(declare-fun res!1450101 () Bool)

(assert (=> b!3591586 (=> res!1450101 e!2222344)))

(declare-fun anOtherTypeRule!33 () Rule!10956)

(declare-fun lt!1232240 () C!20860)

(declare-fun contains!7219 (List!37881 C!20860) Bool)

(declare-fun usedCharacters!792 (Regex!10337) List!37881)

(assert (=> b!3591586 (= res!1450101 (not (contains!7219 (usedCharacters!792 (regex!5578 anOtherTypeRule!33)) lt!1232240)))))

(declare-fun b!3591587 () Bool)

(declare-fun res!1450110 () Bool)

(assert (=> b!3591587 (=> (not res!1450110) (not e!2222327))))

(declare-fun rulesInvariant!4564 (LexerInterface!5167 List!37883) Bool)

(assert (=> b!3591587 (= res!1450110 (rulesInvariant!4564 thiss!23823 rules!3307))))

(declare-fun b!3591588 () Bool)

(declare-fun e!2222324 () Bool)

(declare-fun e!2222348 () Bool)

(assert (=> b!3591588 (= e!2222324 (not e!2222348))))

(declare-fun res!1450109 () Bool)

(assert (=> b!3591588 (=> res!1450109 e!2222348)))

(declare-fun rule!403 () Rule!10956)

(declare-fun matchR!4906 (Regex!10337 List!37881) Bool)

(assert (=> b!3591588 (= res!1450109 (not (matchR!4906 (regex!5578 rule!403) lt!1232248)))))

(declare-fun ruleValid!1843 (LexerInterface!5167 Rule!10956) Bool)

(assert (=> b!3591588 (ruleValid!1843 thiss!23823 rule!403)))

(declare-fun lt!1232236 () Unit!53759)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!998 (LexerInterface!5167 Rule!10956 List!37883) Unit!53759)

(assert (=> b!3591588 (= lt!1232236 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!998 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3591589 () Bool)

(declare-fun e!2222331 () Bool)

(assert (=> b!3591589 (= e!2222331 e!2222324)))

(declare-fun res!1450099 () Bool)

(assert (=> b!3591589 (=> (not res!1450099) (not e!2222324))))

(declare-fun lt!1232256 () tuple2!37644)

(declare-fun token!511 () Token!10522)

(assert (=> b!3591589 (= res!1450099 (= (_1!21956 lt!1232256) token!511))))

(declare-fun lt!1232252 () Option!7787)

(assert (=> b!3591589 (= lt!1232256 (get!12185 lt!1232252))))

(declare-fun b!3591590 () Bool)

(declare-fun res!1450106 () Bool)

(assert (=> b!3591590 (=> (not res!1450106) (not e!2222327))))

(declare-fun contains!7220 (List!37883 Rule!10956) Bool)

(assert (=> b!3591590 (= res!1450106 (contains!7220 rules!3307 rule!403))))

(declare-fun b!3591591 () Bool)

(declare-fun e!2222336 () Bool)

(declare-fun lt!1232247 () Rule!10956)

(assert (=> b!3591591 (= e!2222336 (= (rule!8296 (_1!21956 lt!1232238)) lt!1232247))))

(declare-fun tp!1099330 () Bool)

(declare-fun e!2222347 () Bool)

(declare-fun e!2222334 () Bool)

(declare-fun b!3591592 () Bool)

(declare-fun inv!51097 (String!42374) Bool)

(declare-fun inv!51100 (TokenValueInjection!11044) Bool)

(assert (=> b!3591592 (= e!2222334 (and tp!1099330 (inv!51097 (tag!6252 (rule!8296 token!511))) (inv!51100 (transformation!5578 (rule!8296 token!511))) e!2222347))))

(declare-fun b!3591593 () Bool)

(declare-fun res!1450098 () Bool)

(assert (=> b!3591593 (=> (not res!1450098) (not e!2222324))))

(declare-fun isEmpty!22255 (List!37881) Bool)

(assert (=> b!3591593 (= res!1450098 (isEmpty!22255 (_2!21956 lt!1232256)))))

(declare-fun e!2222341 () Bool)

(assert (=> b!3591594 (= e!2222341 (and tp!1099326 tp!1099324))))

(declare-fun b!3591595 () Bool)

(assert (=> b!3591595 (= e!2222323 e!2222336)))

(declare-fun res!1450105 () Bool)

(assert (=> b!3591595 (=> (not res!1450105) (not e!2222336))))

(assert (=> b!3591595 (= res!1450105 (matchR!4906 (regex!5578 lt!1232247) (list!13890 (charsOf!3592 (_1!21956 lt!1232238)))))))

(declare-fun get!12186 (Option!7786) Rule!10956)

(assert (=> b!3591595 (= lt!1232247 (get!12186 lt!1232249))))

(declare-fun e!2222335 () Bool)

(declare-fun tp!1099333 () Bool)

(declare-fun e!2222333 () Bool)

(declare-fun b!3591596 () Bool)

(assert (=> b!3591596 (= e!2222333 (and tp!1099333 (inv!51097 (tag!6252 (h!43179 rules!3307))) (inv!51100 (transformation!5578 (h!43179 rules!3307))) e!2222335))))

(declare-fun tp!1099328 () Bool)

(declare-fun b!3591597 () Bool)

(declare-fun e!2222340 () Bool)

(assert (=> b!3591597 (= e!2222340 (and tp!1099328 (inv!51097 (tag!6252 anOtherTypeRule!33)) (inv!51100 (transformation!5578 anOtherTypeRule!33)) e!2222341))))

(declare-fun b!3591598 () Bool)

(declare-fun e!2222332 () Bool)

(declare-fun tp!1099323 () Bool)

(assert (=> b!3591598 (= e!2222332 (and e!2222333 tp!1099323))))

(assert (=> b!3591599 (= e!2222335 (and tp!1099332 tp!1099327))))

(declare-fun b!3591600 () Bool)

(declare-fun res!1450108 () Bool)

(assert (=> b!3591600 (=> (not res!1450108) (not e!2222327))))

(assert (=> b!3591600 (= res!1450108 (not (= (isSeparator!5578 anOtherTypeRule!33) (isSeparator!5578 rule!403))))))

(declare-fun b!3591601 () Bool)

(declare-fun res!1450111 () Bool)

(assert (=> b!3591601 (=> (not res!1450111) (not e!2222324))))

(assert (=> b!3591601 (= res!1450111 (= (rule!8296 token!511) rule!403))))

(declare-fun b!3591602 () Bool)

(declare-fun res!1450103 () Bool)

(assert (=> b!3591602 (=> (not res!1450103) (not e!2222327))))

(assert (=> b!3591602 (= res!1450103 (contains!7220 rules!3307 anOtherTypeRule!33))))

(declare-fun res!1450114 () Bool)

(assert (=> start!333358 (=> (not res!1450114) (not e!2222327))))

(get-info :version)

(assert (=> start!333358 (= res!1450114 ((_ is Lexer!5165) thiss!23823))))

(assert (=> start!333358 e!2222327))

(assert (=> start!333358 e!2222332))

(declare-fun e!2222346 () Bool)

(assert (=> start!333358 e!2222346))

(assert (=> start!333358 true))

(declare-fun e!2222330 () Bool)

(declare-fun inv!51101 (Token!10522) Bool)

(assert (=> start!333358 (and (inv!51101 token!511) e!2222330)))

(declare-fun e!2222342 () Bool)

(assert (=> start!333358 e!2222342))

(assert (=> start!333358 e!2222340))

(declare-fun b!3591603 () Bool)

(declare-fun e!2222326 () Bool)

(declare-fun e!2222328 () Bool)

(assert (=> b!3591603 (= e!2222326 e!2222328)))

(declare-fun res!1450113 () Bool)

(assert (=> b!3591603 (=> res!1450113 e!2222328)))

(assert (=> b!3591603 (= res!1450113 (not (= lt!1232239 lt!1232258)))))

(declare-fun lt!1232257 () List!37881)

(declare-fun getSuffix!1516 (List!37881 List!37881) List!37881)

(assert (=> b!3591603 (= lt!1232257 (getSuffix!1516 lt!1232258 lt!1232243))))

(declare-fun maxPrefixOneRule!1845 (LexerInterface!5167 Rule!10956 List!37881) Option!7787)

(declare-fun apply!9084 (TokenValueInjection!11044 BalanceConc!22588) TokenValue!5808)

(declare-fun seqFromList!4131 (List!37881) BalanceConc!22588)

(declare-fun size!28761 (List!37881) Int)

(assert (=> b!3591603 (= (maxPrefixOneRule!1845 thiss!23823 (rule!8296 (_1!21956 lt!1232238)) lt!1232258) (Some!7786 (tuple2!37645 (Token!10523 (apply!9084 (transformation!5578 (rule!8296 (_1!21956 lt!1232238))) (seqFromList!4131 lt!1232243)) (rule!8296 (_1!21956 lt!1232238)) (size!28761 lt!1232243) lt!1232243) (_2!21956 lt!1232238))))))

(declare-fun lt!1232237 () Unit!53759)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!917 (LexerInterface!5167 List!37883 List!37881 List!37881 List!37881 Rule!10956) Unit!53759)

(assert (=> b!3591603 (= lt!1232237 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!917 thiss!23823 rules!3307 lt!1232243 lt!1232258 (_2!21956 lt!1232238) (rule!8296 (_1!21956 lt!1232238))))))

(declare-fun b!3591604 () Bool)

(declare-fun res!1450107 () Bool)

(assert (=> b!3591604 (=> res!1450107 e!2222338)))

(assert (=> b!3591604 (= res!1450107 (not (matchR!4906 (regex!5578 (rule!8296 (_1!21956 lt!1232238))) lt!1232243)))))

(declare-fun tp!1099336 () Bool)

(declare-fun b!3591605 () Bool)

(declare-fun inv!21 (TokenValue!5808) Bool)

(assert (=> b!3591605 (= e!2222330 (and (inv!21 (value!179433 token!511)) e!2222334 tp!1099336))))

(declare-fun b!3591606 () Bool)

(assert (=> b!3591606 (= e!2222327 e!2222331)))

(declare-fun res!1450102 () Bool)

(assert (=> b!3591606 (=> (not res!1450102) (not e!2222331))))

(declare-fun isDefined!6019 (Option!7787) Bool)

(assert (=> b!3591606 (= res!1450102 (isDefined!6019 lt!1232252))))

(assert (=> b!3591606 (= lt!1232252 (maxPrefix!2701 thiss!23823 rules!3307 lt!1232248))))

(assert (=> b!3591606 (= lt!1232248 (list!13890 (charsOf!3592 token!511)))))

(declare-fun b!3591607 () Bool)

(declare-fun res!1450116 () Bool)

(assert (=> b!3591607 (=> res!1450116 e!2222344)))

(declare-fun sepAndNonSepRulesDisjointChars!1748 (List!37883 List!37883) Bool)

(assert (=> b!3591607 (= res!1450116 (not (sepAndNonSepRulesDisjointChars!1748 rules!3307 rules!3307)))))

(assert (=> b!3591608 (= e!2222347 (and tp!1099325 tp!1099335))))

(declare-fun b!3591609 () Bool)

(assert (=> b!3591609 (= e!2222348 e!2222344)))

(declare-fun res!1450100 () Bool)

(assert (=> b!3591609 (=> res!1450100 e!2222344)))

(assert (=> b!3591609 (= res!1450100 (contains!7219 (usedCharacters!792 (regex!5578 rule!403)) lt!1232240))))

(declare-fun head!7504 (List!37881) C!20860)

(assert (=> b!3591609 (= lt!1232240 (head!7504 suffix!1395))))

(declare-fun b!3591610 () Bool)

(assert (=> b!3591610 (= e!2222328 true)))

(declare-fun lt!1232255 () List!37881)

(assert (=> b!3591610 (= lt!1232255 (++!9394 lt!1232243 lt!1232257))))

(declare-fun b!3591611 () Bool)

(declare-fun res!1450118 () Bool)

(assert (=> b!3591611 (=> res!1450118 e!2222348)))

(assert (=> b!3591611 (= res!1450118 (isEmpty!22255 suffix!1395))))

(declare-fun b!3591612 () Bool)

(declare-fun tp_is_empty!17757 () Bool)

(declare-fun tp!1099322 () Bool)

(assert (=> b!3591612 (= e!2222346 (and tp_is_empty!17757 tp!1099322))))

(declare-fun b!3591613 () Bool)

(assert (=> b!3591613 (= e!2222338 e!2222326)))

(declare-fun res!1450117 () Bool)

(assert (=> b!3591613 (=> res!1450117 e!2222326)))

(declare-fun size!28762 (BalanceConc!22588) Int)

(assert (=> b!3591613 (= res!1450117 (not (= lt!1232245 (Some!7786 (tuple2!37645 (Token!10523 (apply!9084 (transformation!5578 (rule!8296 (_1!21956 lt!1232238))) lt!1232242) (rule!8296 (_1!21956 lt!1232238)) (size!28762 lt!1232242) lt!1232243) (_2!21956 lt!1232238))))))))

(declare-fun lt!1232253 () Unit!53759)

(declare-fun lemmaCharactersSize!631 (Token!10522) Unit!53759)

(assert (=> b!3591613 (= lt!1232253 (lemmaCharactersSize!631 (_1!21956 lt!1232238)))))

(declare-fun lt!1232251 () Unit!53759)

(declare-fun lemmaEqSameImage!769 (TokenValueInjection!11044 BalanceConc!22588 BalanceConc!22588) Unit!53759)

(assert (=> b!3591613 (= lt!1232251 (lemmaEqSameImage!769 (transformation!5578 (rule!8296 (_1!21956 lt!1232238))) lt!1232242 (seqFromList!4131 (originalCharacters!6292 (_1!21956 lt!1232238)))))))

(declare-fun lt!1232250 () Unit!53759)

(declare-fun lemmaSemiInverse!1335 (TokenValueInjection!11044 BalanceConc!22588) Unit!53759)

(assert (=> b!3591613 (= lt!1232250 (lemmaSemiInverse!1335 (transformation!5578 (rule!8296 (_1!21956 lt!1232238))) lt!1232242))))

(declare-fun tp!1099329 () Bool)

(declare-fun b!3591614 () Bool)

(assert (=> b!3591614 (= e!2222342 (and tp!1099329 (inv!51097 (tag!6252 rule!403)) (inv!51100 (transformation!5578 rule!403)) e!2222325))))

(assert (= (and start!333358 res!1450114) b!3591585))

(assert (= (and b!3591585 res!1450112) b!3591587))

(assert (= (and b!3591587 res!1450110) b!3591590))

(assert (= (and b!3591590 res!1450106) b!3591602))

(assert (= (and b!3591602 res!1450103) b!3591600))

(assert (= (and b!3591600 res!1450108) b!3591606))

(assert (= (and b!3591606 res!1450102) b!3591589))

(assert (= (and b!3591589 res!1450099) b!3591593))

(assert (= (and b!3591593 res!1450098) b!3591601))

(assert (= (and b!3591601 res!1450111) b!3591588))

(assert (= (and b!3591588 (not res!1450109)) b!3591611))

(assert (= (and b!3591611 (not res!1450118)) b!3591609))

(assert (= (and b!3591609 (not res!1450100)) b!3591586))

(assert (= (and b!3591586 (not res!1450101)) b!3591607))

(assert (= (and b!3591607 (not res!1450116)) b!3591583))

(assert (= (and b!3591583 res!1450115) b!3591595))

(assert (= (and b!3591595 res!1450105) b!3591591))

(assert (= (and b!3591583 (not res!1450104)) b!3591604))

(assert (= (and b!3591604 (not res!1450107)) b!3591613))

(assert (= (and b!3591613 (not res!1450117)) b!3591603))

(assert (= (and b!3591603 (not res!1450113)) b!3591610))

(assert (= b!3591596 b!3591599))

(assert (= b!3591598 b!3591596))

(assert (= (and start!333358 ((_ is Cons!37759) rules!3307)) b!3591598))

(assert (= (and start!333358 ((_ is Cons!37757) suffix!1395)) b!3591612))

(assert (= b!3591592 b!3591608))

(assert (= b!3591605 b!3591592))

(assert (= start!333358 b!3591605))

(assert (= b!3591614 b!3591584))

(assert (= start!333358 b!3591614))

(assert (= b!3591597 b!3591594))

(assert (= start!333358 b!3591597))

(declare-fun m!4085749 () Bool)

(assert (=> b!3591610 m!4085749))

(declare-fun m!4085751 () Bool)

(assert (=> b!3591603 m!4085751))

(declare-fun m!4085753 () Bool)

(assert (=> b!3591603 m!4085753))

(declare-fun m!4085755 () Bool)

(assert (=> b!3591603 m!4085755))

(declare-fun m!4085757 () Bool)

(assert (=> b!3591603 m!4085757))

(declare-fun m!4085759 () Bool)

(assert (=> b!3591603 m!4085759))

(assert (=> b!3591603 m!4085755))

(declare-fun m!4085761 () Bool)

(assert (=> b!3591603 m!4085761))

(declare-fun m!4085763 () Bool)

(assert (=> b!3591596 m!4085763))

(declare-fun m!4085765 () Bool)

(assert (=> b!3591596 m!4085765))

(declare-fun m!4085767 () Bool)

(assert (=> b!3591611 m!4085767))

(declare-fun m!4085769 () Bool)

(assert (=> b!3591589 m!4085769))

(declare-fun m!4085771 () Bool)

(assert (=> b!3591609 m!4085771))

(assert (=> b!3591609 m!4085771))

(declare-fun m!4085773 () Bool)

(assert (=> b!3591609 m!4085773))

(declare-fun m!4085775 () Bool)

(assert (=> b!3591609 m!4085775))

(declare-fun m!4085777 () Bool)

(assert (=> b!3591588 m!4085777))

(declare-fun m!4085779 () Bool)

(assert (=> b!3591588 m!4085779))

(declare-fun m!4085781 () Bool)

(assert (=> b!3591588 m!4085781))

(declare-fun m!4085783 () Bool)

(assert (=> b!3591583 m!4085783))

(declare-fun m!4085785 () Bool)

(assert (=> b!3591583 m!4085785))

(declare-fun m!4085787 () Bool)

(assert (=> b!3591583 m!4085787))

(declare-fun m!4085789 () Bool)

(assert (=> b!3591583 m!4085789))

(declare-fun m!4085791 () Bool)

(assert (=> b!3591583 m!4085791))

(declare-fun m!4085793 () Bool)

(assert (=> b!3591583 m!4085793))

(declare-fun m!4085795 () Bool)

(assert (=> b!3591583 m!4085795))

(declare-fun m!4085797 () Bool)

(assert (=> b!3591583 m!4085797))

(declare-fun m!4085799 () Bool)

(assert (=> b!3591583 m!4085799))

(declare-fun m!4085801 () Bool)

(assert (=> b!3591583 m!4085801))

(declare-fun m!4085803 () Bool)

(assert (=> b!3591583 m!4085803))

(declare-fun m!4085805 () Bool)

(assert (=> b!3591583 m!4085805))

(declare-fun m!4085807 () Bool)

(assert (=> b!3591583 m!4085807))

(declare-fun m!4085809 () Bool)

(assert (=> b!3591583 m!4085809))

(declare-fun m!4085811 () Bool)

(assert (=> b!3591583 m!4085811))

(declare-fun m!4085813 () Bool)

(assert (=> b!3591607 m!4085813))

(declare-fun m!4085815 () Bool)

(assert (=> b!3591605 m!4085815))

(declare-fun m!4085817 () Bool)

(assert (=> b!3591606 m!4085817))

(declare-fun m!4085819 () Bool)

(assert (=> b!3591606 m!4085819))

(declare-fun m!4085821 () Bool)

(assert (=> b!3591606 m!4085821))

(assert (=> b!3591606 m!4085821))

(declare-fun m!4085823 () Bool)

(assert (=> b!3591606 m!4085823))

(assert (=> b!3591595 m!4085795))

(assert (=> b!3591595 m!4085795))

(declare-fun m!4085825 () Bool)

(assert (=> b!3591595 m!4085825))

(assert (=> b!3591595 m!4085825))

(declare-fun m!4085827 () Bool)

(assert (=> b!3591595 m!4085827))

(declare-fun m!4085829 () Bool)

(assert (=> b!3591595 m!4085829))

(declare-fun m!4085831 () Bool)

(assert (=> b!3591586 m!4085831))

(assert (=> b!3591586 m!4085831))

(declare-fun m!4085833 () Bool)

(assert (=> b!3591586 m!4085833))

(declare-fun m!4085835 () Bool)

(assert (=> start!333358 m!4085835))

(declare-fun m!4085837 () Bool)

(assert (=> b!3591613 m!4085837))

(declare-fun m!4085839 () Bool)

(assert (=> b!3591613 m!4085839))

(declare-fun m!4085841 () Bool)

(assert (=> b!3591613 m!4085841))

(declare-fun m!4085843 () Bool)

(assert (=> b!3591613 m!4085843))

(declare-fun m!4085845 () Bool)

(assert (=> b!3591613 m!4085845))

(assert (=> b!3591613 m!4085845))

(declare-fun m!4085847 () Bool)

(assert (=> b!3591613 m!4085847))

(declare-fun m!4085849 () Bool)

(assert (=> b!3591597 m!4085849))

(declare-fun m!4085851 () Bool)

(assert (=> b!3591597 m!4085851))

(declare-fun m!4085853 () Bool)

(assert (=> b!3591602 m!4085853))

(declare-fun m!4085855 () Bool)

(assert (=> b!3591604 m!4085855))

(declare-fun m!4085857 () Bool)

(assert (=> b!3591585 m!4085857))

(declare-fun m!4085859 () Bool)

(assert (=> b!3591590 m!4085859))

(declare-fun m!4085861 () Bool)

(assert (=> b!3591587 m!4085861))

(declare-fun m!4085863 () Bool)

(assert (=> b!3591593 m!4085863))

(declare-fun m!4085865 () Bool)

(assert (=> b!3591614 m!4085865))

(declare-fun m!4085867 () Bool)

(assert (=> b!3591614 m!4085867))

(declare-fun m!4085869 () Bool)

(assert (=> b!3591592 m!4085869))

(declare-fun m!4085871 () Bool)

(assert (=> b!3591592 m!4085871))

(check-sat b_and!259821 (not b!3591596) (not b!3591613) (not b!3591609) (not b!3591614) (not b!3591592) (not b!3591585) (not b_next!93365) (not b_next!93357) (not b!3591604) b_and!259825 (not b!3591587) (not b_next!93355) (not b!3591605) (not b!3591589) (not b!3591607) (not b_next!93363) (not b!3591602) (not b!3591603) (not b!3591583) b_and!259823 b_and!259819 (not b!3591590) tp_is_empty!17757 (not b_next!93353) (not b!3591606) b_and!259827 (not b!3591593) (not start!333358) (not b_next!93361) (not b!3591588) (not b!3591611) (not b!3591610) (not b_next!93367) b_and!259831 (not b!3591595) (not b!3591597) (not b!3591586) (not b!3591598) b_and!259829 (not b!3591612) (not b_next!93359) b_and!259833)
(check-sat b_and!259821 (not b_next!93363) (not b_next!93353) b_and!259827 (not b_next!93361) (not b_next!93365) (not b_next!93357) b_and!259829 b_and!259825 (not b_next!93355) b_and!259823 b_and!259819 (not b_next!93367) b_and!259831 (not b_next!93359) b_and!259833)
