; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49048 () Bool)

(assert start!49048)

(declare-fun b!533173 () Bool)

(declare-fun b_free!14457 () Bool)

(declare-fun b_next!14473 () Bool)

(assert (=> b!533173 (= b_free!14457 (not b_next!14473))))

(declare-fun tp!170130 () Bool)

(declare-fun b_and!52107 () Bool)

(assert (=> b!533173 (= tp!170130 b_and!52107)))

(declare-fun b_free!14459 () Bool)

(declare-fun b_next!14475 () Bool)

(assert (=> b!533173 (= b_free!14459 (not b_next!14475))))

(declare-fun tp!170127 () Bool)

(declare-fun b_and!52109 () Bool)

(assert (=> b!533173 (= tp!170127 b_and!52109)))

(declare-fun b!533178 () Bool)

(declare-fun b_free!14461 () Bool)

(declare-fun b_next!14477 () Bool)

(assert (=> b!533178 (= b_free!14461 (not b_next!14477))))

(declare-fun tp!170129 () Bool)

(declare-fun b_and!52111 () Bool)

(assert (=> b!533178 (= tp!170129 b_and!52111)))

(declare-fun b_free!14463 () Bool)

(declare-fun b_next!14479 () Bool)

(assert (=> b!533178 (= b_free!14463 (not b_next!14479))))

(declare-fun tp!170132 () Bool)

(declare-fun b_and!52113 () Bool)

(assert (=> b!533178 (= tp!170132 b_and!52113)))

(declare-fun e!321157 () Bool)

(declare-fun e!321143 () Bool)

(declare-datatypes ((String!6528 0))(
  ( (String!6529 (value!31431 String)) )
))
(declare-datatypes ((C!3456 0))(
  ( (C!3457 (val!1954 Int)) )
))
(declare-datatypes ((Regex!1267 0))(
  ( (ElementMatch!1267 (c!101674 C!3456)) (Concat!2224 (regOne!3046 Regex!1267) (regTwo!3046 Regex!1267)) (EmptyExpr!1267) (Star!1267 (reg!1596 Regex!1267)) (EmptyLang!1267) (Union!1267 (regOne!3047 Regex!1267) (regTwo!3047 Regex!1267)) )
))
(declare-datatypes ((List!5127 0))(
  ( (Nil!5117) (Cons!5117 (h!10518 (_ BitVec 16)) (t!73912 List!5127)) )
))
(declare-datatypes ((TokenValue!957 0))(
  ( (FloatLiteralValue!1914 (text!7144 List!5127)) (TokenValueExt!956 (__x!3812 Int)) (Broken!4785 (value!31432 List!5127)) (Object!966) (End!957) (Def!957) (Underscore!957) (Match!957) (Else!957) (Error!957) (Case!957) (If!957) (Extends!957) (Abstract!957) (Class!957) (Val!957) (DelimiterValue!1914 (del!1017 List!5127)) (KeywordValue!963 (value!31433 List!5127)) (CommentValue!1914 (value!31434 List!5127)) (WhitespaceValue!1914 (value!31435 List!5127)) (IndentationValue!957 (value!31436 List!5127)) (String!6530) (Int32!957) (Broken!4786 (value!31437 List!5127)) (Boolean!958) (Unit!8924) (OperatorValue!960 (op!1017 List!5127)) (IdentifierValue!1914 (value!31438 List!5127)) (IdentifierValue!1915 (value!31439 List!5127)) (WhitespaceValue!1915 (value!31440 List!5127)) (True!1914) (False!1914) (Broken!4787 (value!31441 List!5127)) (Broken!4788 (value!31442 List!5127)) (True!1915) (RightBrace!957) (RightBracket!957) (Colon!957) (Null!957) (Comma!957) (LeftBracket!957) (False!1915) (LeftBrace!957) (ImaginaryLiteralValue!957 (text!7145 List!5127)) (StringLiteralValue!2871 (value!31443 List!5127)) (EOFValue!957 (value!31444 List!5127)) (IdentValue!957 (value!31445 List!5127)) (DelimiterValue!1915 (value!31446 List!5127)) (DedentValue!957 (value!31447 List!5127)) (NewLineValue!957 (value!31448 List!5127)) (IntegerValue!2871 (value!31449 (_ BitVec 32)) (text!7146 List!5127)) (IntegerValue!2872 (value!31450 Int) (text!7147 List!5127)) (Times!957) (Or!957) (Equal!957) (Minus!957) (Broken!4789 (value!31451 List!5127)) (And!957) (Div!957) (LessEqual!957) (Mod!957) (Concat!2225) (Not!957) (Plus!957) (SpaceValue!957 (value!31452 List!5127)) (IntegerValue!2873 (value!31453 Int) (text!7148 List!5127)) (StringLiteralValue!2872 (text!7149 List!5127)) (FloatLiteralValue!1915 (text!7150 List!5127)) (BytesLiteralValue!957 (value!31454 List!5127)) (CommentValue!1915 (value!31455 List!5127)) (StringLiteralValue!2873 (value!31456 List!5127)) (ErrorTokenValue!957 (msg!1018 List!5127)) )
))
(declare-datatypes ((List!5128 0))(
  ( (Nil!5118) (Cons!5118 (h!10519 C!3456) (t!73913 List!5128)) )
))
(declare-datatypes ((IArray!3301 0))(
  ( (IArray!3302 (innerList!1708 List!5128)) )
))
(declare-datatypes ((Conc!1650 0))(
  ( (Node!1650 (left!4313 Conc!1650) (right!4643 Conc!1650) (csize!3530 Int) (cheight!1861 Int)) (Leaf!2624 (xs!4287 IArray!3301) (csize!3531 Int)) (Empty!1650) )
))
(declare-datatypes ((BalanceConc!3308 0))(
  ( (BalanceConc!3309 (c!101675 Conc!1650)) )
))
(declare-datatypes ((TokenValueInjection!1682 0))(
  ( (TokenValueInjection!1683 (toValue!1780 Int) (toChars!1639 Int)) )
))
(declare-datatypes ((Rule!1666 0))(
  ( (Rule!1667 (regex!933 Regex!1267) (tag!1195 String!6528) (isSeparator!933 Bool) (transformation!933 TokenValueInjection!1682)) )
))
(declare-datatypes ((Token!1602 0))(
  ( (Token!1603 (value!31457 TokenValue!957) (rule!1635 Rule!1666) (size!4136 Int) (originalCharacters!972 List!5128)) )
))
(declare-fun token!491 () Token!1602)

(declare-fun tp!170131 () Bool)

(declare-fun b!533162 () Bool)

(declare-fun inv!6422 (String!6528) Bool)

(declare-fun inv!6425 (TokenValueInjection!1682) Bool)

(assert (=> b!533162 (= e!321157 (and tp!170131 (inv!6422 (tag!1195 (rule!1635 token!491))) (inv!6425 (transformation!933 (rule!1635 token!491))) e!321143))))

(declare-fun tp!170128 () Bool)

(declare-fun e!321148 () Bool)

(declare-fun b!533163 () Bool)

(declare-datatypes ((List!5129 0))(
  ( (Nil!5119) (Cons!5119 (h!10520 Rule!1666) (t!73914 List!5129)) )
))
(declare-fun rules!3103 () List!5129)

(declare-fun e!321147 () Bool)

(assert (=> b!533163 (= e!321148 (and tp!170128 (inv!6422 (tag!1195 (h!10520 rules!3103))) (inv!6425 (transformation!933 (h!10520 rules!3103))) e!321147))))

(declare-fun e!321159 () Bool)

(declare-fun b!533164 () Bool)

(declare-fun tp!170126 () Bool)

(declare-fun inv!21 (TokenValue!957) Bool)

(assert (=> b!533164 (= e!321159 (and (inv!21 (value!31457 token!491)) e!321157 tp!170126))))

(declare-fun b!533165 () Bool)

(declare-fun e!321158 () Bool)

(assert (=> b!533165 (= e!321158 true)))

(declare-fun lt!219486 () Bool)

(declare-datatypes ((LexerInterface!819 0))(
  ( (LexerInterfaceExt!816 (__x!3813 Int)) (Lexer!817) )
))
(declare-fun thiss!22590 () LexerInterface!819)

(declare-fun rulesValidInductive!324 (LexerInterface!819 List!5129) Bool)

(assert (=> b!533165 (= lt!219486 (rulesValidInductive!324 thiss!22590 rules!3103))))

(declare-fun b!533166 () Bool)

(declare-fun res!225244 () Bool)

(declare-fun e!321153 () Bool)

(assert (=> b!533166 (=> (not res!225244) (not e!321153))))

(declare-fun input!2705 () List!5128)

(declare-fun isEmpty!3702 (List!5128) Bool)

(assert (=> b!533166 (= res!225244 (not (isEmpty!3702 input!2705)))))

(declare-fun b!533167 () Bool)

(declare-fun e!321149 () Bool)

(declare-fun e!321155 () Bool)

(assert (=> b!533167 (= e!321149 e!321155)))

(declare-fun res!225250 () Bool)

(assert (=> b!533167 (=> (not res!225250) (not e!321155))))

(declare-datatypes ((tuple2!6224 0))(
  ( (tuple2!6225 (_1!3376 Token!1602) (_2!3376 List!5128)) )
))
(declare-fun lt!219484 () tuple2!6224)

(declare-fun suffix!1342 () List!5128)

(assert (=> b!533167 (= res!225250 (and (= (_1!3376 lt!219484) token!491) (= (_2!3376 lt!219484) suffix!1342)))))

(declare-datatypes ((Option!1283 0))(
  ( (None!1282) (Some!1282 (v!16089 tuple2!6224)) )
))
(declare-fun lt!219485 () Option!1283)

(declare-fun get!1914 (Option!1283) tuple2!6224)

(assert (=> b!533167 (= lt!219484 (get!1914 lt!219485))))

(declare-fun b!533168 () Bool)

(declare-fun e!321154 () Bool)

(declare-fun tp_is_empty!2889 () Bool)

(declare-fun tp!170125 () Bool)

(assert (=> b!533168 (= e!321154 (and tp_is_empty!2889 tp!170125))))

(declare-fun res!225249 () Bool)

(assert (=> start!49048 (=> (not res!225249) (not e!321153))))

(get-info :version)

(assert (=> start!49048 (= res!225249 ((_ is Lexer!817) thiss!22590))))

(assert (=> start!49048 e!321153))

(declare-fun e!321151 () Bool)

(assert (=> start!49048 e!321151))

(declare-fun e!321146 () Bool)

(assert (=> start!49048 e!321146))

(declare-fun inv!6426 (Token!1602) Bool)

(assert (=> start!49048 (and (inv!6426 token!491) e!321159)))

(assert (=> start!49048 true))

(assert (=> start!49048 e!321154))

(declare-fun b!533169 () Bool)

(declare-fun e!321150 () Bool)

(assert (=> b!533169 (= e!321155 e!321150)))

(declare-fun res!225246 () Bool)

(assert (=> b!533169 (=> (not res!225246) (not e!321150))))

(declare-fun lt!219477 () Option!1283)

(assert (=> b!533169 (= res!225246 ((_ is Some!1282) lt!219477))))

(declare-fun maxPrefix!517 (LexerInterface!819 List!5129 List!5128) Option!1283)

(assert (=> b!533169 (= lt!219477 (maxPrefix!517 thiss!22590 rules!3103 input!2705))))

(declare-fun b!533170 () Bool)

(declare-fun tp!170124 () Bool)

(assert (=> b!533170 (= e!321146 (and e!321148 tp!170124))))

(declare-fun b!533171 () Bool)

(declare-fun tp!170123 () Bool)

(assert (=> b!533171 (= e!321151 (and tp_is_empty!2889 tp!170123))))

(declare-fun b!533172 () Bool)

(declare-fun res!225248 () Bool)

(assert (=> b!533172 (=> (not res!225248) (not e!321153))))

(declare-fun rulesInvariant!782 (LexerInterface!819 List!5129) Bool)

(assert (=> b!533172 (= res!225248 (rulesInvariant!782 thiss!22590 rules!3103))))

(assert (=> b!533173 (= e!321147 (and tp!170130 tp!170127))))

(declare-fun b!533174 () Bool)

(assert (=> b!533174 (= e!321150 (not e!321158))))

(declare-fun res!225251 () Bool)

(assert (=> b!533174 (=> res!225251 e!321158)))

(declare-fun contains!1193 (List!5129 Rule!1666) Bool)

(assert (=> b!533174 (= res!225251 (not (contains!1193 rules!3103 (rule!1635 token!491))))))

(declare-fun ruleValid!153 (LexerInterface!819 Rule!1666) Bool)

(assert (=> b!533174 (ruleValid!153 thiss!22590 (rule!1635 (_1!3376 (v!16089 lt!219477))))))

(declare-datatypes ((Unit!8925 0))(
  ( (Unit!8926) )
))
(declare-fun lt!219474 () Unit!8925)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!12 (LexerInterface!819 Rule!1666 List!5129) Unit!8925)

(assert (=> b!533174 (= lt!219474 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!12 thiss!22590 (rule!1635 (_1!3376 (v!16089 lt!219477))) rules!3103))))

(declare-fun isPrefix!575 (List!5128 List!5128) Bool)

(assert (=> b!533174 (isPrefix!575 input!2705 input!2705)))

(declare-fun lt!219476 () Unit!8925)

(declare-fun lemmaIsPrefixRefl!315 (List!5128 List!5128) Unit!8925)

(assert (=> b!533174 (= lt!219476 (lemmaIsPrefixRefl!315 input!2705 input!2705))))

(declare-fun lt!219483 () List!5128)

(assert (=> b!533174 (= (_2!3376 (v!16089 lt!219477)) lt!219483)))

(declare-fun lt!219487 () Unit!8925)

(declare-fun lt!219488 () List!5128)

(declare-fun lemmaSamePrefixThenSameSuffix!302 (List!5128 List!5128 List!5128 List!5128 List!5128) Unit!8925)

(assert (=> b!533174 (= lt!219487 (lemmaSamePrefixThenSameSuffix!302 lt!219488 (_2!3376 (v!16089 lt!219477)) lt!219488 lt!219483 input!2705))))

(declare-fun getSuffix!98 (List!5128 List!5128) List!5128)

(assert (=> b!533174 (= lt!219483 (getSuffix!98 input!2705 lt!219488))))

(declare-fun ++!1421 (List!5128 List!5128) List!5128)

(assert (=> b!533174 (isPrefix!575 lt!219488 (++!1421 lt!219488 (_2!3376 (v!16089 lt!219477))))))

(declare-fun lt!219482 () Unit!8925)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!426 (List!5128 List!5128) Unit!8925)

(assert (=> b!533174 (= lt!219482 (lemmaConcatTwoListThenFirstIsPrefix!426 lt!219488 (_2!3376 (v!16089 lt!219477))))))

(declare-fun lt!219489 () Unit!8925)

(declare-fun lemmaCharactersSize!12 (Token!1602) Unit!8925)

(assert (=> b!533174 (= lt!219489 (lemmaCharactersSize!12 token!491))))

(declare-fun lt!219479 () Unit!8925)

(assert (=> b!533174 (= lt!219479 (lemmaCharactersSize!12 (_1!3376 (v!16089 lt!219477))))))

(declare-fun lt!219481 () Unit!8925)

(declare-fun e!321152 () Unit!8925)

(assert (=> b!533174 (= lt!219481 e!321152)))

(declare-fun c!101673 () Bool)

(declare-fun lt!219480 () List!5128)

(declare-fun size!4137 (List!5128) Int)

(assert (=> b!533174 (= c!101673 (> (size!4137 lt!219488) (size!4137 lt!219480)))))

(declare-fun list!2129 (BalanceConc!3308) List!5128)

(declare-fun charsOf!562 (Token!1602) BalanceConc!3308)

(assert (=> b!533174 (= lt!219488 (list!2129 (charsOf!562 (_1!3376 (v!16089 lt!219477)))))))

(assert (=> b!533174 (= lt!219477 (Some!1282 (v!16089 lt!219477)))))

(declare-fun lt!219478 () Unit!8925)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!18 (List!5128 List!5128 List!5128 List!5128) Unit!8925)

(assert (=> b!533174 (= lt!219478 (lemmaConcatSameAndSameSizesThenSameLists!18 lt!219480 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!533175 () Bool)

(declare-fun res!225243 () Bool)

(assert (=> b!533175 (=> (not res!225243) (not e!321150))))

(declare-fun lt!219475 () List!5128)

(assert (=> b!533175 (= res!225243 (= (++!1421 lt!219480 suffix!1342) lt!219475))))

(declare-fun b!533176 () Bool)

(declare-fun e!321144 () Bool)

(assert (=> b!533176 (= e!321144 e!321149)))

(declare-fun res!225252 () Bool)

(assert (=> b!533176 (=> (not res!225252) (not e!321149))))

(declare-fun isDefined!1095 (Option!1283) Bool)

(assert (=> b!533176 (= res!225252 (isDefined!1095 lt!219485))))

(assert (=> b!533176 (= lt!219485 (maxPrefix!517 thiss!22590 rules!3103 lt!219475))))

(assert (=> b!533176 (= lt!219475 (++!1421 input!2705 suffix!1342))))

(declare-fun b!533177 () Bool)

(declare-fun res!225247 () Bool)

(assert (=> b!533177 (=> (not res!225247) (not e!321153))))

(declare-fun isEmpty!3703 (List!5129) Bool)

(assert (=> b!533177 (= res!225247 (not (isEmpty!3703 rules!3103)))))

(assert (=> b!533178 (= e!321143 (and tp!170129 tp!170132))))

(declare-fun b!533179 () Bool)

(declare-fun Unit!8927 () Unit!8925)

(assert (=> b!533179 (= e!321152 Unit!8927)))

(assert (=> b!533179 false))

(declare-fun b!533180 () Bool)

(declare-fun Unit!8928 () Unit!8925)

(assert (=> b!533180 (= e!321152 Unit!8928)))

(declare-fun b!533181 () Bool)

(assert (=> b!533181 (= e!321153 e!321144)))

(declare-fun res!225245 () Bool)

(assert (=> b!533181 (=> (not res!225245) (not e!321144))))

(assert (=> b!533181 (= res!225245 (= lt!219480 input!2705))))

(assert (=> b!533181 (= lt!219480 (list!2129 (charsOf!562 token!491)))))

(assert (= (and start!49048 res!225249) b!533177))

(assert (= (and b!533177 res!225247) b!533172))

(assert (= (and b!533172 res!225248) b!533166))

(assert (= (and b!533166 res!225244) b!533181))

(assert (= (and b!533181 res!225245) b!533176))

(assert (= (and b!533176 res!225252) b!533167))

(assert (= (and b!533167 res!225250) b!533169))

(assert (= (and b!533169 res!225246) b!533175))

(assert (= (and b!533175 res!225243) b!533174))

(assert (= (and b!533174 c!101673) b!533179))

(assert (= (and b!533174 (not c!101673)) b!533180))

(assert (= (and b!533174 (not res!225251)) b!533165))

(assert (= (and start!49048 ((_ is Cons!5118) suffix!1342)) b!533171))

(assert (= b!533163 b!533173))

(assert (= b!533170 b!533163))

(assert (= (and start!49048 ((_ is Cons!5119) rules!3103)) b!533170))

(assert (= b!533162 b!533178))

(assert (= b!533164 b!533162))

(assert (= start!49048 b!533164))

(assert (= (and start!49048 ((_ is Cons!5118) input!2705)) b!533168))

(declare-fun m!778469 () Bool)

(assert (=> b!533166 m!778469))

(declare-fun m!778471 () Bool)

(assert (=> b!533181 m!778471))

(assert (=> b!533181 m!778471))

(declare-fun m!778473 () Bool)

(assert (=> b!533181 m!778473))

(declare-fun m!778475 () Bool)

(assert (=> b!533174 m!778475))

(declare-fun m!778477 () Bool)

(assert (=> b!533174 m!778477))

(declare-fun m!778479 () Bool)

(assert (=> b!533174 m!778479))

(declare-fun m!778481 () Bool)

(assert (=> b!533174 m!778481))

(declare-fun m!778483 () Bool)

(assert (=> b!533174 m!778483))

(declare-fun m!778485 () Bool)

(assert (=> b!533174 m!778485))

(declare-fun m!778487 () Bool)

(assert (=> b!533174 m!778487))

(declare-fun m!778489 () Bool)

(assert (=> b!533174 m!778489))

(declare-fun m!778491 () Bool)

(assert (=> b!533174 m!778491))

(declare-fun m!778493 () Bool)

(assert (=> b!533174 m!778493))

(declare-fun m!778495 () Bool)

(assert (=> b!533174 m!778495))

(declare-fun m!778497 () Bool)

(assert (=> b!533174 m!778497))

(declare-fun m!778499 () Bool)

(assert (=> b!533174 m!778499))

(declare-fun m!778501 () Bool)

(assert (=> b!533174 m!778501))

(declare-fun m!778503 () Bool)

(assert (=> b!533174 m!778503))

(assert (=> b!533174 m!778475))

(declare-fun m!778505 () Bool)

(assert (=> b!533174 m!778505))

(assert (=> b!533174 m!778479))

(declare-fun m!778507 () Bool)

(assert (=> b!533174 m!778507))

(declare-fun m!778509 () Bool)

(assert (=> b!533167 m!778509))

(declare-fun m!778511 () Bool)

(assert (=> b!533162 m!778511))

(declare-fun m!778513 () Bool)

(assert (=> b!533162 m!778513))

(declare-fun m!778515 () Bool)

(assert (=> b!533172 m!778515))

(declare-fun m!778517 () Bool)

(assert (=> b!533165 m!778517))

(declare-fun m!778519 () Bool)

(assert (=> b!533175 m!778519))

(declare-fun m!778521 () Bool)

(assert (=> b!533177 m!778521))

(declare-fun m!778523 () Bool)

(assert (=> b!533169 m!778523))

(declare-fun m!778525 () Bool)

(assert (=> b!533176 m!778525))

(declare-fun m!778527 () Bool)

(assert (=> b!533176 m!778527))

(declare-fun m!778529 () Bool)

(assert (=> b!533176 m!778529))

(declare-fun m!778531 () Bool)

(assert (=> b!533164 m!778531))

(declare-fun m!778533 () Bool)

(assert (=> start!49048 m!778533))

(declare-fun m!778535 () Bool)

(assert (=> b!533163 m!778535))

(declare-fun m!778537 () Bool)

(assert (=> b!533163 m!778537))

(check-sat (not b!533168) (not b!533165) b_and!52111 (not b_next!14479) (not b!533174) (not b!533167) tp_is_empty!2889 b_and!52107 (not b!533166) (not b!533162) (not b_next!14473) (not b!533176) (not b!533171) (not b!533163) (not b!533175) b_and!52109 b_and!52113 (not b!533164) (not b_next!14477) (not b!533181) (not b!533169) (not b!533172) (not b!533170) (not b_next!14475) (not b!533177) (not start!49048))
(check-sat b_and!52111 (not b_next!14479) (not b_next!14473) b_and!52109 b_and!52113 (not b_next!14477) b_and!52107 (not b_next!14475))
