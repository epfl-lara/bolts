; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54936 () Bool)

(assert start!54936)

(declare-fun b!588532 () Bool)

(declare-fun b_free!16461 () Bool)

(declare-fun b_next!16477 () Bool)

(assert (=> b!588532 (= b_free!16461 (not b_next!16477))))

(declare-fun tp!183567 () Bool)

(declare-fun b_and!57979 () Bool)

(assert (=> b!588532 (= tp!183567 b_and!57979)))

(declare-fun b_free!16463 () Bool)

(declare-fun b_next!16479 () Bool)

(assert (=> b!588532 (= b_free!16463 (not b_next!16479))))

(declare-fun tp!183572 () Bool)

(declare-fun b_and!57981 () Bool)

(assert (=> b!588532 (= tp!183572 b_and!57981)))

(declare-fun b!588531 () Bool)

(declare-fun b_free!16465 () Bool)

(declare-fun b_next!16481 () Bool)

(assert (=> b!588531 (= b_free!16465 (not b_next!16481))))

(declare-fun tp!183569 () Bool)

(declare-fun b_and!57983 () Bool)

(assert (=> b!588531 (= tp!183569 b_and!57983)))

(declare-fun b_free!16467 () Bool)

(declare-fun b_next!16483 () Bool)

(assert (=> b!588531 (= b_free!16467 (not b_next!16483))))

(declare-fun tp!183568 () Bool)

(declare-fun b_and!57985 () Bool)

(assert (=> b!588531 (= tp!183568 b_and!57985)))

(declare-fun res!253587 () Bool)

(declare-fun e!355746 () Bool)

(assert (=> start!54936 (=> (not res!253587) (not e!355746))))

(declare-datatypes ((LexerInterface!1021 0))(
  ( (LexerInterfaceExt!1018 (__x!4216 Int)) (Lexer!1019) )
))
(declare-fun thiss!22590 () LexerInterface!1021)

(get-info :version)

(assert (=> start!54936 (= res!253587 ((_ is Lexer!1019) thiss!22590))))

(assert (=> start!54936 e!355746))

(declare-fun e!355745 () Bool)

(assert (=> start!54936 e!355745))

(declare-fun e!355750 () Bool)

(assert (=> start!54936 e!355750))

(declare-datatypes ((C!3860 0))(
  ( (C!3861 (val!2156 Int)) )
))
(declare-datatypes ((Regex!1469 0))(
  ( (ElementMatch!1469 (c!109921 C!3860)) (Concat!2628 (regOne!3450 Regex!1469) (regTwo!3450 Regex!1469)) (EmptyExpr!1469) (Star!1469 (reg!1798 Regex!1469)) (EmptyLang!1469) (Union!1469 (regOne!3451 Regex!1469) (regTwo!3451 Regex!1469)) )
))
(declare-datatypes ((List!5806 0))(
  ( (Nil!5796) (Cons!5796 (h!11197 (_ BitVec 16)) (t!78759 List!5806)) )
))
(declare-datatypes ((TokenValue!1159 0))(
  ( (FloatLiteralValue!2318 (text!8558 List!5806)) (TokenValueExt!1158 (__x!4217 Int)) (Broken!5795 (value!37188 List!5806)) (Object!1168) (End!1159) (Def!1159) (Underscore!1159) (Match!1159) (Else!1159) (Error!1159) (Case!1159) (If!1159) (Extends!1159) (Abstract!1159) (Class!1159) (Val!1159) (DelimiterValue!2318 (del!1219 List!5806)) (KeywordValue!1165 (value!37189 List!5806)) (CommentValue!2318 (value!37190 List!5806)) (WhitespaceValue!2318 (value!37191 List!5806)) (IndentationValue!1159 (value!37192 List!5806)) (String!7538) (Int32!1159) (Broken!5796 (value!37193 List!5806)) (Boolean!1160) (Unit!10524) (OperatorValue!1162 (op!1219 List!5806)) (IdentifierValue!2318 (value!37194 List!5806)) (IdentifierValue!2319 (value!37195 List!5806)) (WhitespaceValue!2319 (value!37196 List!5806)) (True!2318) (False!2318) (Broken!5797 (value!37197 List!5806)) (Broken!5798 (value!37198 List!5806)) (True!2319) (RightBrace!1159) (RightBracket!1159) (Colon!1159) (Null!1159) (Comma!1159) (LeftBracket!1159) (False!2319) (LeftBrace!1159) (ImaginaryLiteralValue!1159 (text!8559 List!5806)) (StringLiteralValue!3477 (value!37199 List!5806)) (EOFValue!1159 (value!37200 List!5806)) (IdentValue!1159 (value!37201 List!5806)) (DelimiterValue!2319 (value!37202 List!5806)) (DedentValue!1159 (value!37203 List!5806)) (NewLineValue!1159 (value!37204 List!5806)) (IntegerValue!3477 (value!37205 (_ BitVec 32)) (text!8560 List!5806)) (IntegerValue!3478 (value!37206 Int) (text!8561 List!5806)) (Times!1159) (Or!1159) (Equal!1159) (Minus!1159) (Broken!5799 (value!37207 List!5806)) (And!1159) (Div!1159) (LessEqual!1159) (Mod!1159) (Concat!2629) (Not!1159) (Plus!1159) (SpaceValue!1159 (value!37208 List!5806)) (IntegerValue!3479 (value!37209 Int) (text!8562 List!5806)) (StringLiteralValue!3478 (text!8563 List!5806)) (FloatLiteralValue!2319 (text!8564 List!5806)) (BytesLiteralValue!1159 (value!37210 List!5806)) (CommentValue!2319 (value!37211 List!5806)) (StringLiteralValue!3479 (value!37212 List!5806)) (ErrorTokenValue!1159 (msg!1220 List!5806)) )
))
(declare-datatypes ((String!7539 0))(
  ( (String!7540 (value!37213 String)) )
))
(declare-datatypes ((List!5807 0))(
  ( (Nil!5797) (Cons!5797 (h!11198 C!3860) (t!78760 List!5807)) )
))
(declare-datatypes ((IArray!3705 0))(
  ( (IArray!3706 (innerList!1910 List!5807)) )
))
(declare-datatypes ((Conc!1852 0))(
  ( (Node!1852 (left!4720 Conc!1852) (right!5050 Conc!1852) (csize!3934 Int) (cheight!2063 Int)) (Leaf!2927 (xs!4489 IArray!3705) (csize!3935 Int)) (Empty!1852) )
))
(declare-datatypes ((BalanceConc!3712 0))(
  ( (BalanceConc!3713 (c!109922 Conc!1852)) )
))
(declare-datatypes ((TokenValueInjection!2086 0))(
  ( (TokenValueInjection!2087 (toValue!2018 Int) (toChars!1877 Int)) )
))
(declare-datatypes ((Rule!2070 0))(
  ( (Rule!2071 (regex!1135 Regex!1469) (tag!1397 String!7539) (isSeparator!1135 Bool) (transformation!1135 TokenValueInjection!2086)) )
))
(declare-datatypes ((Token!2006 0))(
  ( (Token!2007 (value!37214 TokenValue!1159) (rule!1901 Rule!2070) (size!4600 Int) (originalCharacters!1174 List!5807)) )
))
(declare-fun token!491 () Token!2006)

(declare-fun e!355755 () Bool)

(declare-fun inv!7331 (Token!2006) Bool)

(assert (=> start!54936 (and (inv!7331 token!491) e!355755)))

(assert (=> start!54936 true))

(declare-fun e!355757 () Bool)

(assert (=> start!54936 e!355757))

(declare-fun b!588525 () Bool)

(declare-fun tp!183574 () Bool)

(declare-fun e!355752 () Bool)

(declare-fun inv!21 (TokenValue!1159) Bool)

(assert (=> b!588525 (= e!355755 (and (inv!21 (value!37214 token!491)) e!355752 tp!183574))))

(declare-fun b!588526 () Bool)

(declare-fun e!355749 () Bool)

(assert (=> b!588526 (= e!355746 e!355749)))

(declare-fun res!253588 () Bool)

(assert (=> b!588526 (=> (not res!253588) (not e!355749))))

(declare-fun lt!249310 () List!5807)

(declare-fun input!2705 () List!5807)

(assert (=> b!588526 (= res!253588 (= lt!249310 input!2705))))

(declare-fun list!2422 (BalanceConc!3712) List!5807)

(declare-fun charsOf!764 (Token!2006) BalanceConc!3712)

(assert (=> b!588526 (= lt!249310 (list!2422 (charsOf!764 token!491)))))

(declare-fun b!588527 () Bool)

(declare-fun e!355744 () Bool)

(declare-fun tp!183576 () Bool)

(assert (=> b!588527 (= e!355750 (and e!355744 tp!183576))))

(declare-fun b!588528 () Bool)

(declare-fun res!253586 () Bool)

(assert (=> b!588528 (=> (not res!253586) (not e!355746))))

(declare-fun isEmpty!4185 (List!5807) Bool)

(assert (=> b!588528 (= res!253586 (not (isEmpty!4185 input!2705)))))

(declare-fun b!588529 () Bool)

(declare-fun tp_is_empty!3293 () Bool)

(declare-fun tp!183575 () Bool)

(assert (=> b!588529 (= e!355757 (and tp_is_empty!3293 tp!183575))))

(declare-fun b!588530 () Bool)

(declare-fun res!253589 () Bool)

(declare-fun e!355756 () Bool)

(assert (=> b!588530 (=> (not res!253589) (not e!355756))))

(declare-fun suffix!1342 () List!5807)

(declare-fun lt!249316 () List!5807)

(declare-fun ++!1623 (List!5807 List!5807) List!5807)

(assert (=> b!588530 (= res!253589 (= (++!1623 lt!249310 suffix!1342) lt!249316))))

(declare-fun e!355754 () Bool)

(assert (=> b!588531 (= e!355754 (and tp!183569 tp!183568))))

(declare-fun e!355743 () Bool)

(assert (=> b!588532 (= e!355743 (and tp!183567 tp!183572))))

(declare-fun tp!183573 () Bool)

(declare-fun b!588533 () Bool)

(declare-fun inv!7328 (String!7539) Bool)

(declare-fun inv!7332 (TokenValueInjection!2086) Bool)

(assert (=> b!588533 (= e!355752 (and tp!183573 (inv!7328 (tag!1397 (rule!1901 token!491))) (inv!7332 (transformation!1135 (rule!1901 token!491))) e!355754))))

(declare-fun b!588534 () Bool)

(declare-datatypes ((Unit!10525 0))(
  ( (Unit!10526) )
))
(declare-fun e!355758 () Unit!10525)

(declare-fun Unit!10527 () Unit!10525)

(assert (=> b!588534 (= e!355758 Unit!10527)))

(declare-datatypes ((List!5808 0))(
  ( (Nil!5798) (Cons!5798 (h!11199 Rule!2070) (t!78761 List!5808)) )
))
(declare-fun rules!3103 () List!5808)

(declare-fun b!588535 () Bool)

(declare-fun tp!183570 () Bool)

(assert (=> b!588535 (= e!355744 (and tp!183570 (inv!7328 (tag!1397 (h!11199 rules!3103))) (inv!7332 (transformation!1135 (h!11199 rules!3103))) e!355743))))

(declare-fun b!588536 () Bool)

(declare-fun e!355748 () Bool)

(declare-fun e!355753 () Bool)

(assert (=> b!588536 (= e!355748 e!355753)))

(declare-fun res!253592 () Bool)

(assert (=> b!588536 (=> (not res!253592) (not e!355753))))

(declare-datatypes ((tuple2!6756 0))(
  ( (tuple2!6757 (_1!3642 Token!2006) (_2!3642 List!5807)) )
))
(declare-fun lt!249309 () tuple2!6756)

(assert (=> b!588536 (= res!253592 (and (= (_1!3642 lt!249309) token!491) (= (_2!3642 lt!249309) suffix!1342)))))

(declare-datatypes ((Option!1486 0))(
  ( (None!1485) (Some!1485 (v!16364 tuple2!6756)) )
))
(declare-fun lt!249315 () Option!1486)

(declare-fun get!2217 (Option!1486) tuple2!6756)

(assert (=> b!588536 (= lt!249309 (get!2217 lt!249315))))

(declare-fun b!588537 () Bool)

(declare-fun res!253591 () Bool)

(assert (=> b!588537 (=> (not res!253591) (not e!355746))))

(declare-fun rulesInvariant!984 (LexerInterface!1021 List!5808) Bool)

(assert (=> b!588537 (= res!253591 (rulesInvariant!984 thiss!22590 rules!3103))))

(declare-fun b!588538 () Bool)

(declare-fun Unit!10528 () Unit!10525)

(assert (=> b!588538 (= e!355758 Unit!10528)))

(assert (=> b!588538 false))

(declare-fun b!588539 () Bool)

(declare-fun res!253584 () Bool)

(assert (=> b!588539 (=> (not res!253584) (not e!355746))))

(declare-fun isEmpty!4186 (List!5808) Bool)

(assert (=> b!588539 (= res!253584 (not (isEmpty!4186 rules!3103)))))

(declare-fun b!588540 () Bool)

(assert (=> b!588540 (= e!355756 (not true))))

(declare-fun lt!249308 () Option!1486)

(declare-fun ruleValid!333 (LexerInterface!1021 Rule!2070) Bool)

(assert (=> b!588540 (ruleValid!333 thiss!22590 (rule!1901 (_1!3642 (v!16364 lt!249308))))))

(declare-fun lt!249320 () Unit!10525)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!180 (LexerInterface!1021 Rule!2070 List!5808) Unit!10525)

(assert (=> b!588540 (= lt!249320 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!180 thiss!22590 (rule!1901 (_1!3642 (v!16364 lt!249308))) rules!3103))))

(declare-fun isPrefix!763 (List!5807 List!5807) Bool)

(assert (=> b!588540 (isPrefix!763 input!2705 input!2705)))

(declare-fun lt!249314 () Unit!10525)

(declare-fun lemmaIsPrefixRefl!499 (List!5807 List!5807) Unit!10525)

(assert (=> b!588540 (= lt!249314 (lemmaIsPrefixRefl!499 input!2705 input!2705))))

(declare-fun lt!249312 () List!5807)

(assert (=> b!588540 (= (_2!3642 (v!16364 lt!249308)) lt!249312)))

(declare-fun lt!249313 () Unit!10525)

(declare-fun lt!249318 () List!5807)

(declare-fun lemmaSamePrefixThenSameSuffix!476 (List!5807 List!5807 List!5807 List!5807 List!5807) Unit!10525)

(assert (=> b!588540 (= lt!249313 (lemmaSamePrefixThenSameSuffix!476 lt!249318 (_2!3642 (v!16364 lt!249308)) lt!249318 lt!249312 input!2705))))

(declare-fun getSuffix!280 (List!5807 List!5807) List!5807)

(assert (=> b!588540 (= lt!249312 (getSuffix!280 input!2705 lt!249318))))

(assert (=> b!588540 (isPrefix!763 lt!249318 (++!1623 lt!249318 (_2!3642 (v!16364 lt!249308))))))

(declare-fun lt!249319 () Unit!10525)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!608 (List!5807 List!5807) Unit!10525)

(assert (=> b!588540 (= lt!249319 (lemmaConcatTwoListThenFirstIsPrefix!608 lt!249318 (_2!3642 (v!16364 lt!249308))))))

(declare-fun lt!249311 () Unit!10525)

(declare-fun lemmaCharactersSize!194 (Token!2006) Unit!10525)

(assert (=> b!588540 (= lt!249311 (lemmaCharactersSize!194 token!491))))

(declare-fun lt!249317 () Unit!10525)

(assert (=> b!588540 (= lt!249317 (lemmaCharactersSize!194 (_1!3642 (v!16364 lt!249308))))))

(declare-fun lt!249321 () Unit!10525)

(assert (=> b!588540 (= lt!249321 e!355758)))

(declare-fun c!109920 () Bool)

(declare-fun size!4601 (List!5807) Int)

(assert (=> b!588540 (= c!109920 (> (size!4601 lt!249318) (size!4601 lt!249310)))))

(assert (=> b!588540 (= lt!249318 (list!2422 (charsOf!764 (_1!3642 (v!16364 lt!249308)))))))

(assert (=> b!588540 (= lt!249308 (Some!1485 (v!16364 lt!249308)))))

(declare-fun lt!249322 () Unit!10525)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!208 (List!5807 List!5807 List!5807 List!5807) Unit!10525)

(assert (=> b!588540 (= lt!249322 (lemmaConcatSameAndSameSizesThenSameLists!208 lt!249310 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!588541 () Bool)

(declare-fun tp!183571 () Bool)

(assert (=> b!588541 (= e!355745 (and tp_is_empty!3293 tp!183571))))

(declare-fun b!588542 () Bool)

(assert (=> b!588542 (= e!355753 e!355756)))

(declare-fun res!253585 () Bool)

(assert (=> b!588542 (=> (not res!253585) (not e!355756))))

(assert (=> b!588542 (= res!253585 ((_ is Some!1485) lt!249308))))

(declare-fun maxPrefix!719 (LexerInterface!1021 List!5808 List!5807) Option!1486)

(assert (=> b!588542 (= lt!249308 (maxPrefix!719 thiss!22590 rules!3103 input!2705))))

(declare-fun b!588543 () Bool)

(assert (=> b!588543 (= e!355749 e!355748)))

(declare-fun res!253590 () Bool)

(assert (=> b!588543 (=> (not res!253590) (not e!355748))))

(declare-fun isDefined!1297 (Option!1486) Bool)

(assert (=> b!588543 (= res!253590 (isDefined!1297 lt!249315))))

(assert (=> b!588543 (= lt!249315 (maxPrefix!719 thiss!22590 rules!3103 lt!249316))))

(assert (=> b!588543 (= lt!249316 (++!1623 input!2705 suffix!1342))))

(assert (= (and start!54936 res!253587) b!588539))

(assert (= (and b!588539 res!253584) b!588537))

(assert (= (and b!588537 res!253591) b!588528))

(assert (= (and b!588528 res!253586) b!588526))

(assert (= (and b!588526 res!253588) b!588543))

(assert (= (and b!588543 res!253590) b!588536))

(assert (= (and b!588536 res!253592) b!588542))

(assert (= (and b!588542 res!253585) b!588530))

(assert (= (and b!588530 res!253589) b!588540))

(assert (= (and b!588540 c!109920) b!588538))

(assert (= (and b!588540 (not c!109920)) b!588534))

(assert (= (and start!54936 ((_ is Cons!5797) suffix!1342)) b!588541))

(assert (= b!588535 b!588532))

(assert (= b!588527 b!588535))

(assert (= (and start!54936 ((_ is Cons!5798) rules!3103)) b!588527))

(assert (= b!588533 b!588531))

(assert (= b!588525 b!588533))

(assert (= start!54936 b!588525))

(assert (= (and start!54936 ((_ is Cons!5797) input!2705)) b!588529))

(declare-fun m!849123 () Bool)

(assert (=> b!588539 m!849123))

(declare-fun m!849125 () Bool)

(assert (=> start!54936 m!849125))

(declare-fun m!849127 () Bool)

(assert (=> b!588536 m!849127))

(declare-fun m!849129 () Bool)

(assert (=> b!588530 m!849129))

(declare-fun m!849131 () Bool)

(assert (=> b!588540 m!849131))

(declare-fun m!849133 () Bool)

(assert (=> b!588540 m!849133))

(declare-fun m!849135 () Bool)

(assert (=> b!588540 m!849135))

(declare-fun m!849137 () Bool)

(assert (=> b!588540 m!849137))

(assert (=> b!588540 m!849133))

(declare-fun m!849139 () Bool)

(assert (=> b!588540 m!849139))

(declare-fun m!849141 () Bool)

(assert (=> b!588540 m!849141))

(declare-fun m!849143 () Bool)

(assert (=> b!588540 m!849143))

(declare-fun m!849145 () Bool)

(assert (=> b!588540 m!849145))

(assert (=> b!588540 m!849139))

(declare-fun m!849147 () Bool)

(assert (=> b!588540 m!849147))

(declare-fun m!849149 () Bool)

(assert (=> b!588540 m!849149))

(declare-fun m!849151 () Bool)

(assert (=> b!588540 m!849151))

(declare-fun m!849153 () Bool)

(assert (=> b!588540 m!849153))

(declare-fun m!849155 () Bool)

(assert (=> b!588540 m!849155))

(declare-fun m!849157 () Bool)

(assert (=> b!588540 m!849157))

(declare-fun m!849159 () Bool)

(assert (=> b!588540 m!849159))

(declare-fun m!849161 () Bool)

(assert (=> b!588540 m!849161))

(declare-fun m!849163 () Bool)

(assert (=> b!588535 m!849163))

(declare-fun m!849165 () Bool)

(assert (=> b!588535 m!849165))

(declare-fun m!849167 () Bool)

(assert (=> b!588543 m!849167))

(declare-fun m!849169 () Bool)

(assert (=> b!588543 m!849169))

(declare-fun m!849171 () Bool)

(assert (=> b!588543 m!849171))

(declare-fun m!849173 () Bool)

(assert (=> b!588542 m!849173))

(declare-fun m!849175 () Bool)

(assert (=> b!588528 m!849175))

(declare-fun m!849177 () Bool)

(assert (=> b!588537 m!849177))

(declare-fun m!849179 () Bool)

(assert (=> b!588526 m!849179))

(assert (=> b!588526 m!849179))

(declare-fun m!849181 () Bool)

(assert (=> b!588526 m!849181))

(declare-fun m!849183 () Bool)

(assert (=> b!588525 m!849183))

(declare-fun m!849185 () Bool)

(assert (=> b!588533 m!849185))

(declare-fun m!849187 () Bool)

(assert (=> b!588533 m!849187))

(check-sat tp_is_empty!3293 b_and!57981 b_and!57985 (not b!588530) (not b!588526) b_and!57983 (not b_next!16481) (not b!588542) (not b_next!16479) (not b!588535) (not b!588539) (not b!588525) (not b!588527) (not b!588540) (not b!588529) (not b_next!16483) (not b!588536) (not b_next!16477) (not start!54936) (not b!588537) (not b!588541) (not b!588533) (not b!588528) b_and!57979 (not b!588543))
(check-sat b_and!57981 b_and!57985 b_and!57979 b_and!57983 (not b_next!16481) (not b_next!16479) (not b_next!16483) (not b_next!16477))
