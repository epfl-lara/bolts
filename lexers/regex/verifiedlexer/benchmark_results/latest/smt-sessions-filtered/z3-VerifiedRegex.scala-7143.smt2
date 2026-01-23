; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!378964 () Bool)

(assert start!378964)

(declare-fun b!4024255 () Bool)

(declare-fun b_free!112009 () Bool)

(declare-fun b_next!112713 () Bool)

(assert (=> b!4024255 (= b_free!112009 (not b_next!112713))))

(declare-fun tp!1223083 () Bool)

(declare-fun b_and!309175 () Bool)

(assert (=> b!4024255 (= tp!1223083 b_and!309175)))

(declare-fun b_free!112011 () Bool)

(declare-fun b_next!112715 () Bool)

(assert (=> b!4024255 (= b_free!112011 (not b_next!112715))))

(declare-fun tp!1223092 () Bool)

(declare-fun b_and!309177 () Bool)

(assert (=> b!4024255 (= tp!1223092 b_and!309177)))

(declare-fun b!4024250 () Bool)

(declare-fun b_free!112013 () Bool)

(declare-fun b_next!112717 () Bool)

(assert (=> b!4024250 (= b_free!112013 (not b_next!112717))))

(declare-fun tp!1223086 () Bool)

(declare-fun b_and!309179 () Bool)

(assert (=> b!4024250 (= tp!1223086 b_and!309179)))

(declare-fun b_free!112015 () Bool)

(declare-fun b_next!112719 () Bool)

(assert (=> b!4024250 (= b_free!112015 (not b_next!112719))))

(declare-fun tp!1223091 () Bool)

(declare-fun b_and!309181 () Bool)

(assert (=> b!4024250 (= tp!1223091 b_and!309181)))

(declare-fun b!4024248 () Bool)

(declare-fun res!1637569 () Bool)

(declare-fun e!2496436 () Bool)

(assert (=> b!4024248 (=> (not res!1637569) (not e!2496436))))

(declare-datatypes ((C!23744 0))(
  ( (C!23745 (val!13966 Int)) )
))
(declare-datatypes ((List!43201 0))(
  ( (Nil!43077) (Cons!43077 (h!48497 C!23744) (t!333854 List!43201)) )
))
(declare-fun suffix!1299 () List!43201)

(declare-fun newSuffix!27 () List!43201)

(declare-fun size!32205 (List!43201) Int)

(assert (=> b!4024248 (= res!1637569 (>= (size!32205 suffix!1299) (size!32205 newSuffix!27)))))

(declare-fun b!4024249 () Bool)

(declare-fun e!2496452 () Bool)

(declare-fun e!2496450 () Bool)

(assert (=> b!4024249 (= e!2496452 (not e!2496450))))

(declare-fun res!1637564 () Bool)

(assert (=> b!4024249 (=> res!1637564 e!2496450)))

(declare-fun lt!1429519 () List!43201)

(declare-fun lt!1429520 () List!43201)

(assert (=> b!4024249 (= res!1637564 (not (= lt!1429519 lt!1429520)))))

(declare-fun lt!1429523 () List!43201)

(declare-fun suffixResult!105 () List!43201)

(declare-fun ++!11276 (List!43201 List!43201) List!43201)

(assert (=> b!4024249 (= lt!1429519 (++!11276 lt!1429523 suffixResult!105))))

(declare-datatypes ((Unit!62239 0))(
  ( (Unit!62240) )
))
(declare-fun lt!1429518 () Unit!62239)

(declare-datatypes ((IArray!26175 0))(
  ( (IArray!26176 (innerList!13145 List!43201)) )
))
(declare-datatypes ((Conc!13085 0))(
  ( (Node!13085 (left!32468 Conc!13085) (right!32798 Conc!13085) (csize!26400 Int) (cheight!13296 Int)) (Leaf!20229 (xs!16391 IArray!26175) (csize!26401 Int)) (Empty!13085) )
))
(declare-datatypes ((BalanceConc!25764 0))(
  ( (BalanceConc!25765 (c!695396 Conc!13085)) )
))
(declare-datatypes ((List!43202 0))(
  ( (Nil!43078) (Cons!43078 (h!48498 (_ BitVec 16)) (t!333855 List!43202)) )
))
(declare-datatypes ((TokenValue!7104 0))(
  ( (FloatLiteralValue!14208 (text!50173 List!43202)) (TokenValueExt!7103 (__x!26425 Int)) (Broken!35520 (value!216517 List!43202)) (Object!7227) (End!7104) (Def!7104) (Underscore!7104) (Match!7104) (Else!7104) (Error!7104) (Case!7104) (If!7104) (Extends!7104) (Abstract!7104) (Class!7104) (Val!7104) (DelimiterValue!14208 (del!7164 List!43202)) (KeywordValue!7110 (value!216518 List!43202)) (CommentValue!14208 (value!216519 List!43202)) (WhitespaceValue!14208 (value!216520 List!43202)) (IndentationValue!7104 (value!216521 List!43202)) (String!49237) (Int32!7104) (Broken!35521 (value!216522 List!43202)) (Boolean!7105) (Unit!62241) (OperatorValue!7107 (op!7164 List!43202)) (IdentifierValue!14208 (value!216523 List!43202)) (IdentifierValue!14209 (value!216524 List!43202)) (WhitespaceValue!14209 (value!216525 List!43202)) (True!14208) (False!14208) (Broken!35522 (value!216526 List!43202)) (Broken!35523 (value!216527 List!43202)) (True!14209) (RightBrace!7104) (RightBracket!7104) (Colon!7104) (Null!7104) (Comma!7104) (LeftBracket!7104) (False!14209) (LeftBrace!7104) (ImaginaryLiteralValue!7104 (text!50174 List!43202)) (StringLiteralValue!21312 (value!216528 List!43202)) (EOFValue!7104 (value!216529 List!43202)) (IdentValue!7104 (value!216530 List!43202)) (DelimiterValue!14209 (value!216531 List!43202)) (DedentValue!7104 (value!216532 List!43202)) (NewLineValue!7104 (value!216533 List!43202)) (IntegerValue!21312 (value!216534 (_ BitVec 32)) (text!50175 List!43202)) (IntegerValue!21313 (value!216535 Int) (text!50176 List!43202)) (Times!7104) (Or!7104) (Equal!7104) (Minus!7104) (Broken!35524 (value!216536 List!43202)) (And!7104) (Div!7104) (LessEqual!7104) (Mod!7104) (Concat!18883) (Not!7104) (Plus!7104) (SpaceValue!7104 (value!216537 List!43202)) (IntegerValue!21314 (value!216538 Int) (text!50177 List!43202)) (StringLiteralValue!21313 (text!50178 List!43202)) (FloatLiteralValue!14209 (text!50179 List!43202)) (BytesLiteralValue!7104 (value!216539 List!43202)) (CommentValue!14209 (value!216540 List!43202)) (StringLiteralValue!21314 (value!216541 List!43202)) (ErrorTokenValue!7104 (msg!7165 List!43202)) )
))
(declare-datatypes ((Regex!11779 0))(
  ( (ElementMatch!11779 (c!695397 C!23744)) (Concat!18884 (regOne!24070 Regex!11779) (regTwo!24070 Regex!11779)) (EmptyExpr!11779) (Star!11779 (reg!12108 Regex!11779)) (EmptyLang!11779) (Union!11779 (regOne!24071 Regex!11779) (regTwo!24071 Regex!11779)) )
))
(declare-datatypes ((String!49238 0))(
  ( (String!49239 (value!216542 String)) )
))
(declare-datatypes ((TokenValueInjection!13636 0))(
  ( (TokenValueInjection!13637 (toValue!9390 Int) (toChars!9249 Int)) )
))
(declare-datatypes ((Rule!13548 0))(
  ( (Rule!13549 (regex!6874 Regex!11779) (tag!7734 String!49238) (isSeparator!6874 Bool) (transformation!6874 TokenValueInjection!13636)) )
))
(declare-datatypes ((Token!12886 0))(
  ( (Token!12887 (value!216543 TokenValue!7104) (rule!9930 Rule!13548) (size!32206 Int) (originalCharacters!7474 List!43201)) )
))
(declare-fun token!484 () Token!12886)

(declare-fun lemmaInv!1083 (TokenValueInjection!13636) Unit!62239)

(assert (=> b!4024249 (= lt!1429518 (lemmaInv!1083 (transformation!6874 (rule!9930 token!484))))))

(declare-datatypes ((LexerInterface!6463 0))(
  ( (LexerInterfaceExt!6460 (__x!26426 Int)) (Lexer!6461) )
))
(declare-fun thiss!21717 () LexerInterface!6463)

(declare-fun ruleValid!2804 (LexerInterface!6463 Rule!13548) Bool)

(assert (=> b!4024249 (ruleValid!2804 thiss!21717 (rule!9930 token!484))))

(declare-fun lt!1429525 () Unit!62239)

(declare-datatypes ((List!43203 0))(
  ( (Nil!43079) (Cons!43079 (h!48499 Rule!13548) (t!333856 List!43203)) )
))
(declare-fun rules!2999 () List!43203)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1874 (LexerInterface!6463 Rule!13548 List!43203) Unit!62239)

(assert (=> b!4024249 (= lt!1429525 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1874 thiss!21717 (rule!9930 token!484) rules!2999))))

(declare-fun e!2496437 () Bool)

(assert (=> b!4024250 (= e!2496437 (and tp!1223086 tp!1223091))))

(declare-fun res!1637566 () Bool)

(assert (=> start!378964 (=> (not res!1637566) (not e!2496436))))

(get-info :version)

(assert (=> start!378964 (= res!1637566 ((_ is Lexer!6461) thiss!21717))))

(assert (=> start!378964 e!2496436))

(declare-fun e!2496449 () Bool)

(assert (=> start!378964 e!2496449))

(declare-fun e!2496445 () Bool)

(declare-fun inv!57545 (Token!12886) Bool)

(assert (=> start!378964 (and (inv!57545 token!484) e!2496445)))

(declare-fun e!2496453 () Bool)

(assert (=> start!378964 e!2496453))

(declare-fun e!2496454 () Bool)

(assert (=> start!378964 e!2496454))

(declare-fun e!2496443 () Bool)

(assert (=> start!378964 e!2496443))

(assert (=> start!378964 true))

(declare-fun e!2496444 () Bool)

(assert (=> start!378964 e!2496444))

(declare-fun e!2496439 () Bool)

(assert (=> start!378964 e!2496439))

(declare-fun b!4024251 () Bool)

(declare-fun tp!1223080 () Bool)

(declare-fun e!2496448 () Bool)

(declare-fun inv!57542 (String!49238) Bool)

(declare-fun inv!57546 (TokenValueInjection!13636) Bool)

(assert (=> b!4024251 (= e!2496448 (and tp!1223080 (inv!57542 (tag!7734 (rule!9930 token!484))) (inv!57546 (transformation!6874 (rule!9930 token!484))) e!2496437))))

(declare-fun b!4024252 () Bool)

(declare-fun e!2496438 () Bool)

(declare-fun tp!1223085 () Bool)

(assert (=> b!4024252 (= e!2496444 (and e!2496438 tp!1223085))))

(declare-fun b!4024253 () Bool)

(declare-fun tp_is_empty!20529 () Bool)

(declare-fun tp!1223089 () Bool)

(assert (=> b!4024253 (= e!2496454 (and tp_is_empty!20529 tp!1223089))))

(declare-fun b!4024254 () Bool)

(declare-fun res!1637570 () Bool)

(assert (=> b!4024254 (=> (not res!1637570) (not e!2496436))))

(declare-fun isPrefix!3961 (List!43201 List!43201) Bool)

(assert (=> b!4024254 (= res!1637570 (isPrefix!3961 newSuffix!27 suffix!1299))))

(declare-fun e!2496442 () Bool)

(assert (=> b!4024255 (= e!2496442 (and tp!1223083 tp!1223092))))

(declare-fun b!4024256 () Bool)

(declare-fun res!1637567 () Bool)

(assert (=> b!4024256 (=> (not res!1637567) (not e!2496436))))

(declare-fun isEmpty!25719 (List!43203) Bool)

(assert (=> b!4024256 (= res!1637567 (not (isEmpty!25719 rules!2999)))))

(declare-fun tp!1223087 () Bool)

(declare-fun b!4024257 () Bool)

(assert (=> b!4024257 (= e!2496438 (and tp!1223087 (inv!57542 (tag!7734 (h!48499 rules!2999))) (inv!57546 (transformation!6874 (h!48499 rules!2999))) e!2496442))))

(declare-fun b!4024258 () Bool)

(declare-fun e!2496446 () Bool)

(assert (=> b!4024258 (= e!2496436 e!2496446)))

(declare-fun res!1637563 () Bool)

(assert (=> b!4024258 (=> (not res!1637563) (not e!2496446))))

(declare-fun lt!1429521 () Int)

(declare-fun lt!1429517 () Int)

(assert (=> b!4024258 (= res!1637563 (>= lt!1429521 lt!1429517))))

(assert (=> b!4024258 (= lt!1429517 (size!32205 lt!1429523))))

(declare-fun prefix!494 () List!43201)

(assert (=> b!4024258 (= lt!1429521 (size!32205 prefix!494))))

(declare-fun list!16020 (BalanceConc!25764) List!43201)

(declare-fun charsOf!4690 (Token!12886) BalanceConc!25764)

(assert (=> b!4024258 (= lt!1429523 (list!16020 (charsOf!4690 token!484)))))

(declare-fun b!4024259 () Bool)

(declare-fun res!1637568 () Bool)

(assert (=> b!4024259 (=> (not res!1637568) (not e!2496446))))

(declare-fun newSuffixResult!27 () List!43201)

(assert (=> b!4024259 (= res!1637568 (= (++!11276 lt!1429523 newSuffixResult!27) (++!11276 prefix!494 newSuffix!27)))))

(declare-fun b!4024260 () Bool)

(declare-fun tp!1223090 () Bool)

(assert (=> b!4024260 (= e!2496439 (and tp_is_empty!20529 tp!1223090))))

(declare-fun b!4024261 () Bool)

(declare-fun e!2496441 () Bool)

(assert (=> b!4024261 (= e!2496450 e!2496441)))

(declare-fun res!1637571 () Bool)

(assert (=> b!4024261 (=> res!1637571 e!2496441)))

(assert (=> b!4024261 (= res!1637571 (not (isPrefix!3961 lt!1429523 lt!1429520)))))

(assert (=> b!4024261 (isPrefix!3961 prefix!494 lt!1429520)))

(declare-fun lt!1429522 () Unit!62239)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2796 (List!43201 List!43201) Unit!62239)

(assert (=> b!4024261 (= lt!1429522 (lemmaConcatTwoListThenFirstIsPrefix!2796 prefix!494 suffix!1299))))

(assert (=> b!4024261 (isPrefix!3961 lt!1429523 lt!1429519)))

(declare-fun lt!1429524 () Unit!62239)

(assert (=> b!4024261 (= lt!1429524 (lemmaConcatTwoListThenFirstIsPrefix!2796 lt!1429523 suffixResult!105))))

(declare-fun b!4024262 () Bool)

(assert (=> b!4024262 (= e!2496441 (<= lt!1429517 lt!1429521))))

(declare-fun b!4024263 () Bool)

(declare-fun res!1637562 () Bool)

(assert (=> b!4024263 (=> (not res!1637562) (not e!2496436))))

(declare-fun rulesInvariant!5806 (LexerInterface!6463 List!43203) Bool)

(assert (=> b!4024263 (= res!1637562 (rulesInvariant!5806 thiss!21717 rules!2999))))

(declare-fun b!4024264 () Bool)

(declare-fun tp!1223088 () Bool)

(assert (=> b!4024264 (= e!2496449 (and tp_is_empty!20529 tp!1223088))))

(declare-fun b!4024265 () Bool)

(declare-fun tp!1223082 () Bool)

(assert (=> b!4024265 (= e!2496453 (and tp_is_empty!20529 tp!1223082))))

(declare-fun b!4024266 () Bool)

(assert (=> b!4024266 (= e!2496446 e!2496452)))

(declare-fun res!1637565 () Bool)

(assert (=> b!4024266 (=> (not res!1637565) (not e!2496452))))

(declare-datatypes ((tuple2!42194 0))(
  ( (tuple2!42195 (_1!24231 Token!12886) (_2!24231 List!43201)) )
))
(declare-datatypes ((Option!9288 0))(
  ( (None!9287) (Some!9287 (v!39667 tuple2!42194)) )
))
(declare-fun maxPrefix!3761 (LexerInterface!6463 List!43203 List!43201) Option!9288)

(assert (=> b!4024266 (= res!1637565 (= (maxPrefix!3761 thiss!21717 rules!2999 lt!1429520) (Some!9287 (tuple2!42195 token!484 suffixResult!105))))))

(assert (=> b!4024266 (= lt!1429520 (++!11276 prefix!494 suffix!1299))))

(declare-fun tp!1223084 () Bool)

(declare-fun b!4024267 () Bool)

(declare-fun inv!21 (TokenValue!7104) Bool)

(assert (=> b!4024267 (= e!2496445 (and (inv!21 (value!216543 token!484)) e!2496448 tp!1223084))))

(declare-fun b!4024268 () Bool)

(declare-fun tp!1223081 () Bool)

(assert (=> b!4024268 (= e!2496443 (and tp_is_empty!20529 tp!1223081))))

(assert (= (and start!378964 res!1637566) b!4024256))

(assert (= (and b!4024256 res!1637567) b!4024263))

(assert (= (and b!4024263 res!1637562) b!4024248))

(assert (= (and b!4024248 res!1637569) b!4024254))

(assert (= (and b!4024254 res!1637570) b!4024258))

(assert (= (and b!4024258 res!1637563) b!4024259))

(assert (= (and b!4024259 res!1637568) b!4024266))

(assert (= (and b!4024266 res!1637565) b!4024249))

(assert (= (and b!4024249 (not res!1637564)) b!4024261))

(assert (= (and b!4024261 (not res!1637571)) b!4024262))

(assert (= (and start!378964 ((_ is Cons!43077) prefix!494)) b!4024264))

(assert (= b!4024251 b!4024250))

(assert (= b!4024267 b!4024251))

(assert (= start!378964 b!4024267))

(assert (= (and start!378964 ((_ is Cons!43077) suffixResult!105)) b!4024265))

(assert (= (and start!378964 ((_ is Cons!43077) suffix!1299)) b!4024253))

(assert (= (and start!378964 ((_ is Cons!43077) newSuffix!27)) b!4024268))

(assert (= b!4024257 b!4024255))

(assert (= b!4024252 b!4024257))

(assert (= (and start!378964 ((_ is Cons!43079) rules!2999)) b!4024252))

(assert (= (and start!378964 ((_ is Cons!43077) newSuffixResult!27)) b!4024260))

(declare-fun m!4615221 () Bool)

(assert (=> b!4024263 m!4615221))

(declare-fun m!4615223 () Bool)

(assert (=> b!4024249 m!4615223))

(declare-fun m!4615225 () Bool)

(assert (=> b!4024249 m!4615225))

(declare-fun m!4615227 () Bool)

(assert (=> b!4024249 m!4615227))

(declare-fun m!4615229 () Bool)

(assert (=> b!4024249 m!4615229))

(declare-fun m!4615231 () Bool)

(assert (=> b!4024261 m!4615231))

(declare-fun m!4615233 () Bool)

(assert (=> b!4024261 m!4615233))

(declare-fun m!4615235 () Bool)

(assert (=> b!4024261 m!4615235))

(declare-fun m!4615237 () Bool)

(assert (=> b!4024261 m!4615237))

(declare-fun m!4615239 () Bool)

(assert (=> b!4024261 m!4615239))

(declare-fun m!4615241 () Bool)

(assert (=> b!4024258 m!4615241))

(declare-fun m!4615243 () Bool)

(assert (=> b!4024258 m!4615243))

(declare-fun m!4615245 () Bool)

(assert (=> b!4024258 m!4615245))

(assert (=> b!4024258 m!4615245))

(declare-fun m!4615247 () Bool)

(assert (=> b!4024258 m!4615247))

(declare-fun m!4615249 () Bool)

(assert (=> b!4024266 m!4615249))

(declare-fun m!4615251 () Bool)

(assert (=> b!4024266 m!4615251))

(declare-fun m!4615253 () Bool)

(assert (=> b!4024248 m!4615253))

(declare-fun m!4615255 () Bool)

(assert (=> b!4024248 m!4615255))

(declare-fun m!4615257 () Bool)

(assert (=> b!4024256 m!4615257))

(declare-fun m!4615259 () Bool)

(assert (=> b!4024251 m!4615259))

(declare-fun m!4615261 () Bool)

(assert (=> b!4024251 m!4615261))

(declare-fun m!4615263 () Bool)

(assert (=> b!4024259 m!4615263))

(declare-fun m!4615265 () Bool)

(assert (=> b!4024259 m!4615265))

(declare-fun m!4615267 () Bool)

(assert (=> start!378964 m!4615267))

(declare-fun m!4615269 () Bool)

(assert (=> b!4024267 m!4615269))

(declare-fun m!4615271 () Bool)

(assert (=> b!4024257 m!4615271))

(declare-fun m!4615273 () Bool)

(assert (=> b!4024257 m!4615273))

(declare-fun m!4615275 () Bool)

(assert (=> b!4024254 m!4615275))

(check-sat (not b!4024256) (not b!4024253) (not b!4024251) (not b!4024266) (not b!4024268) (not b!4024252) b_and!309181 (not b!4024263) (not b!4024258) (not b!4024249) (not b!4024261) (not start!378964) (not b_next!112715) (not b!4024267) (not b!4024248) (not b_next!112719) (not b!4024254) b_and!309179 (not b!4024264) b_and!309175 b_and!309177 (not b!4024265) (not b!4024257) (not b_next!112717) (not b!4024259) tp_is_empty!20529 (not b!4024260) (not b_next!112713))
(check-sat b_and!309181 (not b_next!112715) (not b_next!112719) b_and!309179 (not b_next!112717) (not b_next!112713) b_and!309175 b_and!309177)
