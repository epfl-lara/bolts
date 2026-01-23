; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!339924 () Bool)

(assert start!339924)

(declare-fun b!3640217 () Bool)

(declare-fun b_free!95417 () Bool)

(declare-fun b_next!96121 () Bool)

(assert (=> b!3640217 (= b_free!95417 (not b_next!96121))))

(declare-fun tp!1110596 () Bool)

(declare-fun b_and!268243 () Bool)

(assert (=> b!3640217 (= tp!1110596 b_and!268243)))

(declare-fun b_free!95419 () Bool)

(declare-fun b_next!96123 () Bool)

(assert (=> b!3640217 (= b_free!95419 (not b_next!96123))))

(declare-fun tp!1110609 () Bool)

(declare-fun b_and!268245 () Bool)

(assert (=> b!3640217 (= tp!1110609 b_and!268245)))

(declare-fun b!3640213 () Bool)

(declare-fun b_free!95421 () Bool)

(declare-fun b_next!96125 () Bool)

(assert (=> b!3640213 (= b_free!95421 (not b_next!96125))))

(declare-fun tp!1110599 () Bool)

(declare-fun b_and!268247 () Bool)

(assert (=> b!3640213 (= tp!1110599 b_and!268247)))

(declare-fun b_free!95423 () Bool)

(declare-fun b_next!96127 () Bool)

(assert (=> b!3640213 (= b_free!95423 (not b_next!96127))))

(declare-fun tp!1110597 () Bool)

(declare-fun b_and!268249 () Bool)

(assert (=> b!3640213 (= tp!1110597 b_and!268249)))

(declare-fun b!3640200 () Bool)

(declare-fun b_free!95425 () Bool)

(declare-fun b_next!96129 () Bool)

(assert (=> b!3640200 (= b_free!95425 (not b_next!96129))))

(declare-fun tp!1110600 () Bool)

(declare-fun b_and!268251 () Bool)

(assert (=> b!3640200 (= tp!1110600 b_and!268251)))

(declare-fun b_free!95427 () Bool)

(declare-fun b_next!96131 () Bool)

(assert (=> b!3640200 (= b_free!95427 (not b_next!96131))))

(declare-fun tp!1110606 () Bool)

(declare-fun b_and!268253 () Bool)

(assert (=> b!3640200 (= tp!1110606 b_and!268253)))

(declare-fun b!3640188 () Bool)

(declare-fun b_free!95429 () Bool)

(declare-fun b_next!96133 () Bool)

(assert (=> b!3640188 (= b_free!95429 (not b_next!96133))))

(declare-fun tp!1110604 () Bool)

(declare-fun b_and!268255 () Bool)

(assert (=> b!3640188 (= tp!1110604 b_and!268255)))

(declare-fun b_free!95431 () Bool)

(declare-fun b_next!96135 () Bool)

(assert (=> b!3640188 (= b_free!95431 (not b_next!96135))))

(declare-fun tp!1110603 () Bool)

(declare-fun b_and!268257 () Bool)

(assert (=> b!3640188 (= tp!1110603 b_and!268257)))

(declare-fun b!3640181 () Bool)

(declare-fun e!2253397 () Bool)

(declare-fun e!2253393 () Bool)

(assert (=> b!3640181 (= e!2253397 e!2253393)))

(declare-fun res!1475362 () Bool)

(assert (=> b!3640181 (=> (not res!1475362) (not e!2253393))))

(declare-datatypes ((List!38488 0))(
  ( (Nil!38364) (Cons!38364 (h!43784 (_ BitVec 16)) (t!296391 List!38488)) )
))
(declare-datatypes ((TokenValue!5961 0))(
  ( (FloatLiteralValue!11922 (text!42172 List!38488)) (TokenValueExt!5960 (__x!24139 Int)) (Broken!29805 (value!183769 List!38488)) (Object!6084) (End!5961) (Def!5961) (Underscore!5961) (Match!5961) (Else!5961) (Error!5961) (Case!5961) (If!5961) (Extends!5961) (Abstract!5961) (Class!5961) (Val!5961) (DelimiterValue!11922 (del!6021 List!38488)) (KeywordValue!5967 (value!183770 List!38488)) (CommentValue!11922 (value!183771 List!38488)) (WhitespaceValue!11922 (value!183772 List!38488)) (IndentationValue!5961 (value!183773 List!38488)) (String!43140) (Int32!5961) (Broken!29806 (value!183774 List!38488)) (Boolean!5962) (Unit!55206) (OperatorValue!5964 (op!6021 List!38488)) (IdentifierValue!11922 (value!183775 List!38488)) (IdentifierValue!11923 (value!183776 List!38488)) (WhitespaceValue!11923 (value!183777 List!38488)) (True!11922) (False!11922) (Broken!29807 (value!183778 List!38488)) (Broken!29808 (value!183779 List!38488)) (True!11923) (RightBrace!5961) (RightBracket!5961) (Colon!5961) (Null!5961) (Comma!5961) (LeftBracket!5961) (False!11923) (LeftBrace!5961) (ImaginaryLiteralValue!5961 (text!42173 List!38488)) (StringLiteralValue!17883 (value!183780 List!38488)) (EOFValue!5961 (value!183781 List!38488)) (IdentValue!5961 (value!183782 List!38488)) (DelimiterValue!11923 (value!183783 List!38488)) (DedentValue!5961 (value!183784 List!38488)) (NewLineValue!5961 (value!183785 List!38488)) (IntegerValue!17883 (value!183786 (_ BitVec 32)) (text!42174 List!38488)) (IntegerValue!17884 (value!183787 Int) (text!42175 List!38488)) (Times!5961) (Or!5961) (Equal!5961) (Minus!5961) (Broken!29809 (value!183788 List!38488)) (And!5961) (Div!5961) (LessEqual!5961) (Mod!5961) (Concat!16451) (Not!5961) (Plus!5961) (SpaceValue!5961 (value!183789 List!38488)) (IntegerValue!17885 (value!183790 Int) (text!42176 List!38488)) (StringLiteralValue!17884 (text!42177 List!38488)) (FloatLiteralValue!11923 (text!42178 List!38488)) (BytesLiteralValue!5961 (value!183791 List!38488)) (CommentValue!11923 (value!183792 List!38488)) (StringLiteralValue!17885 (value!183793 List!38488)) (ErrorTokenValue!5961 (msg!6022 List!38488)) )
))
(declare-datatypes ((C!21166 0))(
  ( (C!21167 (val!12631 Int)) )
))
(declare-datatypes ((Regex!10490 0))(
  ( (ElementMatch!10490 (c!629420 C!21166)) (Concat!16452 (regOne!21492 Regex!10490) (regTwo!21492 Regex!10490)) (EmptyExpr!10490) (Star!10490 (reg!10819 Regex!10490)) (EmptyLang!10490) (Union!10490 (regOne!21493 Regex!10490) (regTwo!21493 Regex!10490)) )
))
(declare-datatypes ((String!43141 0))(
  ( (String!43142 (value!183794 String)) )
))
(declare-datatypes ((List!38489 0))(
  ( (Nil!38365) (Cons!38365 (h!43785 C!21166) (t!296392 List!38489)) )
))
(declare-datatypes ((IArray!23433 0))(
  ( (IArray!23434 (innerList!11774 List!38489)) )
))
(declare-datatypes ((Conc!11714 0))(
  ( (Node!11714 (left!29954 Conc!11714) (right!30284 Conc!11714) (csize!23658 Int) (cheight!11925 Int)) (Leaf!18191 (xs!14916 IArray!23433) (csize!23659 Int)) (Empty!11714) )
))
(declare-datatypes ((BalanceConc!23042 0))(
  ( (BalanceConc!23043 (c!629421 Conc!11714)) )
))
(declare-datatypes ((TokenValueInjection!11350 0))(
  ( (TokenValueInjection!11351 (toValue!8023 Int) (toChars!7882 Int)) )
))
(declare-datatypes ((Rule!11262 0))(
  ( (Rule!11263 (regex!5731 Regex!10490) (tag!6479 String!43141) (isSeparator!5731 Bool) (transformation!5731 TokenValueInjection!11350)) )
))
(declare-datatypes ((Token!10828 0))(
  ( (Token!10829 (value!183795 TokenValue!5961) (rule!8513 Rule!11262) (size!29280 Int) (originalCharacters!6445 List!38489)) )
))
(declare-datatypes ((tuple2!38234 0))(
  ( (tuple2!38235 (_1!22251 Token!10828) (_2!22251 List!38489)) )
))
(declare-datatypes ((Option!8090 0))(
  ( (None!8089) (Some!8089 (v!37917 tuple2!38234)) )
))
(declare-fun lt!1260293 () Option!8090)

(declare-fun isDefined!6322 (Option!8090) Bool)

(assert (=> b!3640181 (= res!1475362 (isDefined!6322 lt!1260293))))

(declare-datatypes ((List!38490 0))(
  ( (Nil!38366) (Cons!38366 (h!43786 Rule!11262) (t!296393 List!38490)) )
))
(declare-fun rules!3307 () List!38490)

(declare-datatypes ((LexerInterface!5320 0))(
  ( (LexerInterfaceExt!5317 (__x!24140 Int)) (Lexer!5318) )
))
(declare-fun thiss!23823 () LexerInterface!5320)

(declare-fun lt!1260282 () List!38489)

(declare-fun maxPrefix!2854 (LexerInterface!5320 List!38490 List!38489) Option!8090)

(assert (=> b!3640181 (= lt!1260293 (maxPrefix!2854 thiss!23823 rules!3307 lt!1260282))))

(declare-fun token!511 () Token!10828)

(declare-fun list!14201 (BalanceConc!23042) List!38489)

(declare-fun charsOf!3745 (Token!10828) BalanceConc!23042)

(assert (=> b!3640181 (= lt!1260282 (list!14201 (charsOf!3745 token!511)))))

(declare-fun e!2253402 () Bool)

(declare-fun b!3640182 () Bool)

(declare-fun e!2253391 () Bool)

(declare-fun tp!1110598 () Bool)

(declare-fun inv!51797 (String!43141) Bool)

(declare-fun inv!51800 (TokenValueInjection!11350) Bool)

(assert (=> b!3640182 (= e!2253391 (and tp!1110598 (inv!51797 (tag!6479 (rule!8513 token!511))) (inv!51800 (transformation!5731 (rule!8513 token!511))) e!2253402))))

(declare-fun b!3640183 () Bool)

(declare-datatypes ((Unit!55207 0))(
  ( (Unit!55208) )
))
(declare-fun e!2253389 () Unit!55207)

(declare-fun Unit!55209 () Unit!55207)

(assert (=> b!3640183 (= e!2253389 Unit!55209)))

(declare-fun b!3640184 () Bool)

(declare-fun res!1475364 () Bool)

(declare-fun e!2253410 () Bool)

(assert (=> b!3640184 (=> res!1475364 e!2253410)))

(declare-fun anOtherTypeRule!33 () Rule!11262)

(declare-fun lt!1260281 () C!21166)

(declare-fun contains!7527 (List!38489 C!21166) Bool)

(declare-fun usedCharacters!943 (Regex!10490) List!38489)

(assert (=> b!3640184 (= res!1475364 (not (contains!7527 (usedCharacters!943 (regex!5731 anOtherTypeRule!33)) lt!1260281)))))

(declare-fun b!3640185 () Bool)

(declare-fun e!2253406 () Bool)

(assert (=> b!3640185 (= e!2253393 e!2253406)))

(declare-fun res!1475352 () Bool)

(assert (=> b!3640185 (=> (not res!1475352) (not e!2253406))))

(declare-fun lt!1260292 () tuple2!38234)

(assert (=> b!3640185 (= res!1475352 (= (_1!22251 lt!1260292) token!511))))

(declare-fun get!12566 (Option!8090) tuple2!38234)

(assert (=> b!3640185 (= lt!1260292 (get!12566 lt!1260293))))

(declare-fun e!2253405 () Bool)

(declare-fun b!3640186 () Bool)

(declare-fun tp!1110605 () Bool)

(declare-fun e!2253411 () Bool)

(declare-fun rule!403 () Rule!11262)

(assert (=> b!3640186 (= e!2253411 (and tp!1110605 (inv!51797 (tag!6479 rule!403)) (inv!51800 (transformation!5731 rule!403)) e!2253405))))

(declare-fun b!3640187 () Bool)

(declare-fun res!1475358 () Bool)

(assert (=> b!3640187 (=> (not res!1475358) (not e!2253397))))

(assert (=> b!3640187 (= res!1475358 (not (= (isSeparator!5731 anOtherTypeRule!33) (isSeparator!5731 rule!403))))))

(assert (=> b!3640188 (= e!2253405 (and tp!1110604 tp!1110603))))

(declare-fun b!3640189 () Bool)

(declare-fun e!2253407 () Bool)

(declare-fun e!2253388 () Bool)

(assert (=> b!3640189 (= e!2253407 e!2253388)))

(declare-fun res!1475372 () Bool)

(assert (=> b!3640189 (=> (not res!1475372) (not e!2253388))))

(declare-fun lt!1260274 () Rule!11262)

(declare-fun lt!1260277 () tuple2!38234)

(declare-fun matchR!5059 (Regex!10490 List!38489) Bool)

(assert (=> b!3640189 (= res!1475372 (matchR!5059 (regex!5731 lt!1260274) (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))))))

(declare-datatypes ((Option!8091 0))(
  ( (None!8090) (Some!8090 (v!37918 Rule!11262)) )
))
(declare-fun lt!1260284 () Option!8091)

(declare-fun get!12567 (Option!8091) Rule!11262)

(assert (=> b!3640189 (= lt!1260274 (get!12567 lt!1260284))))

(declare-fun res!1475359 () Bool)

(assert (=> start!339924 (=> (not res!1475359) (not e!2253397))))

(assert (=> start!339924 (= res!1475359 (is-Lexer!5318 thiss!23823))))

(assert (=> start!339924 e!2253397))

(declare-fun e!2253396 () Bool)

(assert (=> start!339924 e!2253396))

(declare-fun e!2253398 () Bool)

(assert (=> start!339924 e!2253398))

(assert (=> start!339924 true))

(declare-fun e!2253413 () Bool)

(declare-fun inv!51801 (Token!10828) Bool)

(assert (=> start!339924 (and (inv!51801 token!511) e!2253413)))

(assert (=> start!339924 e!2253411))

(declare-fun e!2253403 () Bool)

(assert (=> start!339924 e!2253403))

(declare-fun b!3640190 () Bool)

(declare-fun res!1475374 () Bool)

(assert (=> b!3640190 (=> (not res!1475374) (not e!2253397))))

(declare-fun isEmpty!22714 (List!38490) Bool)

(assert (=> b!3640190 (= res!1475374 (not (isEmpty!22714 rules!3307)))))

(declare-fun b!3640191 () Bool)

(declare-fun e!2253392 () Bool)

(assert (=> b!3640191 (= e!2253392 e!2253410)))

(declare-fun res!1475363 () Bool)

(assert (=> b!3640191 (=> res!1475363 e!2253410)))

(declare-fun lt!1260266 () List!38489)

(assert (=> b!3640191 (= res!1475363 (contains!7527 lt!1260266 lt!1260281))))

(declare-fun suffix!1395 () List!38489)

(declare-fun head!7729 (List!38489) C!21166)

(assert (=> b!3640191 (= lt!1260281 (head!7729 suffix!1395))))

(assert (=> b!3640191 (= lt!1260266 (usedCharacters!943 (regex!5731 rule!403)))))

(declare-fun b!3640192 () Bool)

(declare-fun e!2253387 () Bool)

(declare-fun validRegex!4802 (Regex!10490) Bool)

(assert (=> b!3640192 (= e!2253387 (validRegex!4802 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun lt!1260276 () C!21166)

(assert (=> b!3640192 (not (contains!7527 (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260276))))

(declare-fun lt!1260278 () Unit!55207)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!387 (LexerInterface!5320 List!38490 List!38490 Rule!11262 Rule!11262 C!21166) Unit!55207)

(assert (=> b!3640192 (= lt!1260278 (lemmaNonSepRuleNotContainsCharContainedInASepRule!387 thiss!23823 rules!3307 rules!3307 (rule!8513 (_1!22251 lt!1260277)) rule!403 lt!1260276))))

(declare-fun b!3640193 () Bool)

(assert (=> b!3640193 (= e!2253388 (= (rule!8513 (_1!22251 lt!1260277)) lt!1260274))))

(declare-fun b!3640194 () Bool)

(declare-fun res!1475355 () Bool)

(assert (=> b!3640194 (=> res!1475355 e!2253387)))

(assert (=> b!3640194 (= res!1475355 (not (contains!7527 lt!1260282 lt!1260276)))))

(declare-fun b!3640195 () Bool)

(declare-fun res!1475375 () Bool)

(assert (=> b!3640195 (=> (not res!1475375) (not e!2253397))))

(declare-fun rulesInvariant!4717 (LexerInterface!5320 List!38490) Bool)

(assert (=> b!3640195 (= res!1475375 (rulesInvariant!4717 thiss!23823 rules!3307))))

(declare-fun b!3640196 () Bool)

(declare-fun res!1475365 () Bool)

(assert (=> b!3640196 (=> res!1475365 e!2253387)))

(declare-fun lt!1260283 () Bool)

(assert (=> b!3640196 (= res!1475365 lt!1260283)))

(declare-fun b!3640197 () Bool)

(declare-fun res!1475371 () Bool)

(assert (=> b!3640197 (=> (not res!1475371) (not e!2253397))))

(declare-fun contains!7528 (List!38490 Rule!11262) Bool)

(assert (=> b!3640197 (= res!1475371 (contains!7528 rules!3307 anOtherTypeRule!33))))

(declare-fun e!2253412 () Bool)

(declare-fun b!3640198 () Bool)

(declare-fun tp!1110608 () Bool)

(assert (=> b!3640198 (= e!2253403 (and tp!1110608 (inv!51797 (tag!6479 anOtherTypeRule!33)) (inv!51800 (transformation!5731 anOtherTypeRule!33)) e!2253412))))

(declare-fun b!3640199 () Bool)

(declare-fun Unit!55210 () Unit!55207)

(assert (=> b!3640199 (= e!2253389 Unit!55210)))

(declare-fun lt!1260269 () Unit!55207)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!679 (Regex!10490 List!38489 C!21166) Unit!55207)

(assert (=> b!3640199 (= lt!1260269 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!679 (regex!5731 rule!403) lt!1260282 lt!1260276))))

(assert (=> b!3640199 false))

(assert (=> b!3640200 (= e!2253412 (and tp!1110600 tp!1110606))))

(declare-fun e!2253390 () Bool)

(declare-fun e!2253414 () Bool)

(declare-fun b!3640201 () Bool)

(declare-fun tp!1110595 () Bool)

(assert (=> b!3640201 (= e!2253390 (and tp!1110595 (inv!51797 (tag!6479 (h!43786 rules!3307))) (inv!51800 (transformation!5731 (h!43786 rules!3307))) e!2253414))))

(declare-fun b!3640202 () Bool)

(declare-fun res!1475370 () Bool)

(assert (=> b!3640202 (=> res!1475370 e!2253410)))

(declare-fun sepAndNonSepRulesDisjointChars!1899 (List!38490 List!38490) Bool)

(assert (=> b!3640202 (= res!1475370 (not (sepAndNonSepRulesDisjointChars!1899 rules!3307 rules!3307)))))

(declare-fun b!3640203 () Bool)

(declare-fun res!1475367 () Bool)

(assert (=> b!3640203 (=> (not res!1475367) (not e!2253406))))

(declare-fun isEmpty!22715 (List!38489) Bool)

(assert (=> b!3640203 (= res!1475367 (isEmpty!22715 (_2!22251 lt!1260292)))))

(declare-fun b!3640204 () Bool)

(declare-fun e!2253394 () Bool)

(assert (=> b!3640204 (= e!2253410 e!2253394)))

(declare-fun res!1475368 () Bool)

(assert (=> b!3640204 (=> res!1475368 e!2253394)))

(declare-fun lt!1260267 () List!38489)

(declare-fun lt!1260280 () List!38489)

(declare-fun isPrefix!3094 (List!38489 List!38489) Bool)

(assert (=> b!3640204 (= res!1475368 (not (isPrefix!3094 lt!1260267 lt!1260280)))))

(declare-fun ++!9547 (List!38489 List!38489) List!38489)

(assert (=> b!3640204 (isPrefix!3094 lt!1260267 (++!9547 lt!1260267 (_2!22251 lt!1260277)))))

(declare-fun lt!1260268 () Unit!55207)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2013 (List!38489 List!38489) Unit!55207)

(assert (=> b!3640204 (= lt!1260268 (lemmaConcatTwoListThenFirstIsPrefix!2013 lt!1260267 (_2!22251 lt!1260277)))))

(declare-fun lt!1260265 () BalanceConc!23042)

(assert (=> b!3640204 (= lt!1260267 (list!14201 lt!1260265))))

(assert (=> b!3640204 (= lt!1260265 (charsOf!3745 (_1!22251 lt!1260277)))))

(assert (=> b!3640204 e!2253407))

(declare-fun res!1475373 () Bool)

(assert (=> b!3640204 (=> (not res!1475373) (not e!2253407))))

(declare-fun isDefined!6323 (Option!8091) Bool)

(assert (=> b!3640204 (= res!1475373 (isDefined!6323 lt!1260284))))

(declare-fun getRuleFromTag!1335 (LexerInterface!5320 List!38490 String!43141) Option!8091)

(assert (=> b!3640204 (= lt!1260284 (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun lt!1260270 () Unit!55207)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1335 (LexerInterface!5320 List!38490 List!38489 Token!10828) Unit!55207)

(assert (=> b!3640204 (= lt!1260270 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1335 thiss!23823 rules!3307 lt!1260280 (_1!22251 lt!1260277)))))

(declare-fun lt!1260289 () Option!8090)

(assert (=> b!3640204 (= lt!1260277 (get!12566 lt!1260289))))

(declare-fun lt!1260287 () Unit!55207)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!998 (LexerInterface!5320 List!38490 List!38489 List!38489) Unit!55207)

(assert (=> b!3640204 (= lt!1260287 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!998 thiss!23823 rules!3307 lt!1260282 suffix!1395))))

(assert (=> b!3640204 (= lt!1260289 (maxPrefix!2854 thiss!23823 rules!3307 lt!1260280))))

(assert (=> b!3640204 (isPrefix!3094 lt!1260282 lt!1260280)))

(declare-fun lt!1260272 () Unit!55207)

(assert (=> b!3640204 (= lt!1260272 (lemmaConcatTwoListThenFirstIsPrefix!2013 lt!1260282 suffix!1395))))

(assert (=> b!3640204 (= lt!1260280 (++!9547 lt!1260282 suffix!1395))))

(declare-fun b!3640205 () Bool)

(declare-fun tp_is_empty!18063 () Bool)

(declare-fun tp!1110602 () Bool)

(assert (=> b!3640205 (= e!2253398 (and tp_is_empty!18063 tp!1110602))))

(declare-fun b!3640206 () Bool)

(declare-fun res!1475361 () Bool)

(assert (=> b!3640206 (=> (not res!1475361) (not e!2253397))))

(assert (=> b!3640206 (= res!1475361 (contains!7528 rules!3307 rule!403))))

(declare-fun b!3640207 () Bool)

(declare-fun tp!1110601 () Bool)

(assert (=> b!3640207 (= e!2253396 (and e!2253390 tp!1110601))))

(declare-fun b!3640208 () Bool)

(assert (=> b!3640208 (= e!2253406 (not e!2253392))))

(declare-fun res!1475353 () Bool)

(assert (=> b!3640208 (=> res!1475353 e!2253392)))

(assert (=> b!3640208 (= res!1475353 (not (matchR!5059 (regex!5731 rule!403) lt!1260282)))))

(declare-fun ruleValid!1995 (LexerInterface!5320 Rule!11262) Bool)

(assert (=> b!3640208 (ruleValid!1995 thiss!23823 rule!403)))

(declare-fun lt!1260279 () Unit!55207)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1149 (LexerInterface!5320 Rule!11262 List!38490) Unit!55207)

(assert (=> b!3640208 (= lt!1260279 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1149 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3640209 () Bool)

(declare-fun res!1475354 () Bool)

(assert (=> b!3640209 (=> (not res!1475354) (not e!2253406))))

(assert (=> b!3640209 (= res!1475354 (= (rule!8513 token!511) rule!403))))

(declare-fun b!3640210 () Bool)

(declare-fun e!2253395 () Bool)

(assert (=> b!3640210 (= e!2253395 e!2253387)))

(declare-fun res!1475357 () Bool)

(assert (=> b!3640210 (=> res!1475357 e!2253387)))

(assert (=> b!3640210 (= res!1475357 (or (not (isSeparator!5731 rule!403)) (isSeparator!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun lt!1260273 () Unit!55207)

(assert (=> b!3640210 (= lt!1260273 e!2253389)))

(declare-fun c!629419 () Bool)

(assert (=> b!3640210 (= c!629419 lt!1260283)))

(assert (=> b!3640210 (= lt!1260283 (not (contains!7527 lt!1260266 lt!1260276)))))

(assert (=> b!3640210 (= lt!1260276 (head!7729 lt!1260267))))

(declare-fun b!3640211 () Bool)

(declare-fun res!1475356 () Bool)

(assert (=> b!3640211 (=> res!1475356 e!2253394)))

(assert (=> b!3640211 (= res!1475356 (not (matchR!5059 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260267)))))

(declare-fun b!3640212 () Bool)

(declare-fun res!1475366 () Bool)

(assert (=> b!3640212 (=> res!1475366 e!2253392)))

(assert (=> b!3640212 (= res!1475366 (isEmpty!22715 suffix!1395))))

(assert (=> b!3640213 (= e!2253414 (and tp!1110599 tp!1110597))))

(declare-fun b!3640214 () Bool)

(declare-fun tp!1110607 () Bool)

(declare-fun inv!21 (TokenValue!5961) Bool)

(assert (=> b!3640214 (= e!2253413 (and (inv!21 (value!183795 token!511)) e!2253391 tp!1110607))))

(declare-fun b!3640215 () Bool)

(declare-fun e!2253408 () Bool)

(assert (=> b!3640215 (= e!2253408 e!2253395)))

(declare-fun res!1475369 () Bool)

(assert (=> b!3640215 (=> res!1475369 e!2253395)))

(declare-fun lt!1260286 () Option!8090)

(declare-fun lt!1260290 () List!38489)

(assert (=> b!3640215 (= res!1475369 (or (not (= lt!1260290 (_2!22251 lt!1260277))) (not (= lt!1260286 (Some!8089 (tuple2!38235 (_1!22251 lt!1260277) lt!1260290))))))))

(assert (=> b!3640215 (= (_2!22251 lt!1260277) lt!1260290)))

(declare-fun lt!1260288 () Unit!55207)

(declare-fun lemmaSamePrefixThenSameSuffix!1421 (List!38489 List!38489 List!38489 List!38489 List!38489) Unit!55207)

(assert (=> b!3640215 (= lt!1260288 (lemmaSamePrefixThenSameSuffix!1421 lt!1260267 (_2!22251 lt!1260277) lt!1260267 lt!1260290 lt!1260280))))

(declare-fun getSuffix!1647 (List!38489 List!38489) List!38489)

(assert (=> b!3640215 (= lt!1260290 (getSuffix!1647 lt!1260280 lt!1260267))))

(declare-fun lt!1260294 () TokenValue!5961)

(declare-fun lt!1260271 () Int)

(assert (=> b!3640215 (= lt!1260286 (Some!8089 (tuple2!38235 (Token!10829 lt!1260294 (rule!8513 (_1!22251 lt!1260277)) lt!1260271 lt!1260267) (_2!22251 lt!1260277))))))

(declare-fun maxPrefixOneRule!1992 (LexerInterface!5320 Rule!11262 List!38489) Option!8090)

(assert (=> b!3640215 (= lt!1260286 (maxPrefixOneRule!1992 thiss!23823 (rule!8513 (_1!22251 lt!1260277)) lt!1260280))))

(declare-fun size!29281 (List!38489) Int)

(assert (=> b!3640215 (= lt!1260271 (size!29281 lt!1260267))))

(declare-fun apply!9233 (TokenValueInjection!11350 BalanceConc!23042) TokenValue!5961)

(declare-fun seqFromList!4280 (List!38489) BalanceConc!23042)

(assert (=> b!3640215 (= lt!1260294 (apply!9233 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) (seqFromList!4280 lt!1260267)))))

(declare-fun lt!1260285 () Unit!55207)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1048 (LexerInterface!5320 List!38490 List!38489 List!38489 List!38489 Rule!11262) Unit!55207)

(assert (=> b!3640215 (= lt!1260285 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1048 thiss!23823 rules!3307 lt!1260267 lt!1260280 (_2!22251 lt!1260277) (rule!8513 (_1!22251 lt!1260277))))))

(declare-fun b!3640216 () Bool)

(assert (=> b!3640216 (= e!2253394 e!2253408)))

(declare-fun res!1475360 () Bool)

(assert (=> b!3640216 (=> res!1475360 e!2253408)))

(declare-fun size!29282 (BalanceConc!23042) Int)

(assert (=> b!3640216 (= res!1475360 (not (= lt!1260289 (Some!8089 (tuple2!38235 (Token!10829 (apply!9233 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260265) (rule!8513 (_1!22251 lt!1260277)) (size!29282 lt!1260265) lt!1260267) (_2!22251 lt!1260277))))))))

(declare-fun lt!1260295 () Unit!55207)

(declare-fun lemmaCharactersSize!776 (Token!10828) Unit!55207)

(assert (=> b!3640216 (= lt!1260295 (lemmaCharactersSize!776 (_1!22251 lt!1260277)))))

(declare-fun lt!1260275 () Unit!55207)

(declare-fun lemmaEqSameImage!914 (TokenValueInjection!11350 BalanceConc!23042 BalanceConc!23042) Unit!55207)

(assert (=> b!3640216 (= lt!1260275 (lemmaEqSameImage!914 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260265 (seqFromList!4280 (originalCharacters!6445 (_1!22251 lt!1260277)))))))

(declare-fun lt!1260291 () Unit!55207)

(declare-fun lemmaSemiInverse!1480 (TokenValueInjection!11350 BalanceConc!23042) Unit!55207)

(assert (=> b!3640216 (= lt!1260291 (lemmaSemiInverse!1480 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260265))))

(assert (=> b!3640217 (= e!2253402 (and tp!1110596 tp!1110609))))

(assert (= (and start!339924 res!1475359) b!3640190))

(assert (= (and b!3640190 res!1475374) b!3640195))

(assert (= (and b!3640195 res!1475375) b!3640206))

(assert (= (and b!3640206 res!1475361) b!3640197))

(assert (= (and b!3640197 res!1475371) b!3640187))

(assert (= (and b!3640187 res!1475358) b!3640181))

(assert (= (and b!3640181 res!1475362) b!3640185))

(assert (= (and b!3640185 res!1475352) b!3640203))

(assert (= (and b!3640203 res!1475367) b!3640209))

(assert (= (and b!3640209 res!1475354) b!3640208))

(assert (= (and b!3640208 (not res!1475353)) b!3640212))

(assert (= (and b!3640212 (not res!1475366)) b!3640191))

(assert (= (and b!3640191 (not res!1475363)) b!3640184))

(assert (= (and b!3640184 (not res!1475364)) b!3640202))

(assert (= (and b!3640202 (not res!1475370)) b!3640204))

(assert (= (and b!3640204 res!1475373) b!3640189))

(assert (= (and b!3640189 res!1475372) b!3640193))

(assert (= (and b!3640204 (not res!1475368)) b!3640211))

(assert (= (and b!3640211 (not res!1475356)) b!3640216))

(assert (= (and b!3640216 (not res!1475360)) b!3640215))

(assert (= (and b!3640215 (not res!1475369)) b!3640210))

(assert (= (and b!3640210 c!629419) b!3640199))

(assert (= (and b!3640210 (not c!629419)) b!3640183))

(assert (= (and b!3640210 (not res!1475357)) b!3640194))

(assert (= (and b!3640194 (not res!1475355)) b!3640196))

(assert (= (and b!3640196 (not res!1475365)) b!3640192))

(assert (= b!3640201 b!3640213))

(assert (= b!3640207 b!3640201))

(assert (= (and start!339924 (is-Cons!38366 rules!3307)) b!3640207))

(assert (= (and start!339924 (is-Cons!38365 suffix!1395)) b!3640205))

(assert (= b!3640182 b!3640217))

(assert (= b!3640214 b!3640182))

(assert (= start!339924 b!3640214))

(assert (= b!3640186 b!3640188))

(assert (= start!339924 b!3640186))

(assert (= b!3640198 b!3640200))

(assert (= start!339924 b!3640198))

(declare-fun m!4143085 () Bool)

(assert (=> b!3640199 m!4143085))

(declare-fun m!4143087 () Bool)

(assert (=> b!3640181 m!4143087))

(declare-fun m!4143089 () Bool)

(assert (=> b!3640181 m!4143089))

(declare-fun m!4143091 () Bool)

(assert (=> b!3640181 m!4143091))

(assert (=> b!3640181 m!4143091))

(declare-fun m!4143093 () Bool)

(assert (=> b!3640181 m!4143093))

(declare-fun m!4143095 () Bool)

(assert (=> b!3640198 m!4143095))

(declare-fun m!4143097 () Bool)

(assert (=> b!3640198 m!4143097))

(declare-fun m!4143099 () Bool)

(assert (=> b!3640211 m!4143099))

(declare-fun m!4143101 () Bool)

(assert (=> b!3640197 m!4143101))

(declare-fun m!4143103 () Bool)

(assert (=> b!3640202 m!4143103))

(declare-fun m!4143105 () Bool)

(assert (=> b!3640210 m!4143105))

(declare-fun m!4143107 () Bool)

(assert (=> b!3640210 m!4143107))

(declare-fun m!4143109 () Bool)

(assert (=> b!3640195 m!4143109))

(declare-fun m!4143111 () Bool)

(assert (=> b!3640216 m!4143111))

(declare-fun m!4143113 () Bool)

(assert (=> b!3640216 m!4143113))

(declare-fun m!4143115 () Bool)

(assert (=> b!3640216 m!4143115))

(declare-fun m!4143117 () Bool)

(assert (=> b!3640216 m!4143117))

(declare-fun m!4143119 () Bool)

(assert (=> b!3640216 m!4143119))

(assert (=> b!3640216 m!4143111))

(declare-fun m!4143121 () Bool)

(assert (=> b!3640216 m!4143121))

(declare-fun m!4143123 () Bool)

(assert (=> start!339924 m!4143123))

(declare-fun m!4143125 () Bool)

(assert (=> b!3640186 m!4143125))

(declare-fun m!4143127 () Bool)

(assert (=> b!3640186 m!4143127))

(declare-fun m!4143129 () Bool)

(assert (=> b!3640192 m!4143129))

(declare-fun m!4143131 () Bool)

(assert (=> b!3640192 m!4143131))

(assert (=> b!3640192 m!4143131))

(declare-fun m!4143133 () Bool)

(assert (=> b!3640192 m!4143133))

(declare-fun m!4143135 () Bool)

(assert (=> b!3640192 m!4143135))

(declare-fun m!4143137 () Bool)

(assert (=> b!3640194 m!4143137))

(declare-fun m!4143139 () Bool)

(assert (=> b!3640190 m!4143139))

(declare-fun m!4143141 () Bool)

(assert (=> b!3640212 m!4143141))

(declare-fun m!4143143 () Bool)

(assert (=> b!3640215 m!4143143))

(declare-fun m!4143145 () Bool)

(assert (=> b!3640215 m!4143145))

(declare-fun m!4143147 () Bool)

(assert (=> b!3640215 m!4143147))

(declare-fun m!4143149 () Bool)

(assert (=> b!3640215 m!4143149))

(declare-fun m!4143151 () Bool)

(assert (=> b!3640215 m!4143151))

(declare-fun m!4143153 () Bool)

(assert (=> b!3640215 m!4143153))

(assert (=> b!3640215 m!4143143))

(declare-fun m!4143155 () Bool)

(assert (=> b!3640215 m!4143155))

(declare-fun m!4143157 () Bool)

(assert (=> b!3640206 m!4143157))

(declare-fun m!4143159 () Bool)

(assert (=> b!3640182 m!4143159))

(declare-fun m!4143161 () Bool)

(assert (=> b!3640182 m!4143161))

(declare-fun m!4143163 () Bool)

(assert (=> b!3640201 m!4143163))

(declare-fun m!4143165 () Bool)

(assert (=> b!3640201 m!4143165))

(declare-fun m!4143167 () Bool)

(assert (=> b!3640185 m!4143167))

(declare-fun m!4143169 () Bool)

(assert (=> b!3640208 m!4143169))

(declare-fun m!4143171 () Bool)

(assert (=> b!3640208 m!4143171))

(declare-fun m!4143173 () Bool)

(assert (=> b!3640208 m!4143173))

(declare-fun m!4143175 () Bool)

(assert (=> b!3640191 m!4143175))

(declare-fun m!4143177 () Bool)

(assert (=> b!3640191 m!4143177))

(declare-fun m!4143179 () Bool)

(assert (=> b!3640191 m!4143179))

(declare-fun m!4143181 () Bool)

(assert (=> b!3640214 m!4143181))

(declare-fun m!4143183 () Bool)

(assert (=> b!3640203 m!4143183))

(declare-fun m!4143185 () Bool)

(assert (=> b!3640189 m!4143185))

(assert (=> b!3640189 m!4143185))

(declare-fun m!4143187 () Bool)

(assert (=> b!3640189 m!4143187))

(assert (=> b!3640189 m!4143187))

(declare-fun m!4143189 () Bool)

(assert (=> b!3640189 m!4143189))

(declare-fun m!4143191 () Bool)

(assert (=> b!3640189 m!4143191))

(declare-fun m!4143193 () Bool)

(assert (=> b!3640204 m!4143193))

(declare-fun m!4143195 () Bool)

(assert (=> b!3640204 m!4143195))

(declare-fun m!4143197 () Bool)

(assert (=> b!3640204 m!4143197))

(declare-fun m!4143199 () Bool)

(assert (=> b!3640204 m!4143199))

(declare-fun m!4143201 () Bool)

(assert (=> b!3640204 m!4143201))

(declare-fun m!4143203 () Bool)

(assert (=> b!3640204 m!4143203))

(declare-fun m!4143205 () Bool)

(assert (=> b!3640204 m!4143205))

(declare-fun m!4143207 () Bool)

(assert (=> b!3640204 m!4143207))

(declare-fun m!4143209 () Bool)

(assert (=> b!3640204 m!4143209))

(declare-fun m!4143211 () Bool)

(assert (=> b!3640204 m!4143211))

(assert (=> b!3640204 m!4143185))

(declare-fun m!4143213 () Bool)

(assert (=> b!3640204 m!4143213))

(assert (=> b!3640204 m!4143207))

(declare-fun m!4143215 () Bool)

(assert (=> b!3640204 m!4143215))

(declare-fun m!4143217 () Bool)

(assert (=> b!3640204 m!4143217))

(declare-fun m!4143219 () Bool)

(assert (=> b!3640204 m!4143219))

(declare-fun m!4143221 () Bool)

(assert (=> b!3640184 m!4143221))

(assert (=> b!3640184 m!4143221))

(declare-fun m!4143223 () Bool)

(assert (=> b!3640184 m!4143223))

(push 1)

(assert b_and!268245)

(assert (not b!3640208))

(assert (not b_next!96133))

(assert (not b!3640185))

(assert b_and!268247)

(assert b_and!268251)

(assert (not b!3640205))

(assert (not b_next!96121))

(assert (not b!3640184))

(assert (not b!3640201))

(assert b_and!268257)

(assert (not b!3640199))

(assert (not b_next!96125))

(assert tp_is_empty!18063)

(assert (not b!3640186))

(assert (not b!3640215))

(assert (not b!3640216))

(assert (not b!3640192))

(assert (not b_next!96123))

(assert (not b!3640202))

(assert (not b!3640198))

(assert (not b!3640195))

(assert (not b!3640214))

(assert (not b_next!96127))

(assert (not b_next!96129))

(assert (not b!3640206))

(assert (not start!339924))

(assert (not b!3640197))

(assert (not b!3640189))

(assert b_and!268253)

(assert b_and!268243)

(assert (not b!3640210))

(assert (not b!3640204))

(assert b_and!268255)

(assert (not b!3640207))

(assert (not b_next!96131))

(assert (not b!3640191))

(assert (not b!3640203))

(assert b_and!268249)

(assert (not b_next!96135))

(assert (not b!3640181))

(assert (not b!3640211))

(assert (not b!3640190))

(assert (not b!3640194))

(assert (not b!3640212))

(assert (not b!3640182))

(check-sat)

(pop 1)

(push 1)

(assert b_and!268245)

(assert b_and!268257)

(assert (not b_next!96125))

(assert (not b_next!96123))

(assert (not b_next!96133))

(assert (not b_next!96127))

(assert (not b_next!96129))

(assert b_and!268255)

(assert (not b_next!96131))

(assert b_and!268247)

(assert b_and!268251)

(assert (not b_next!96121))

(assert b_and!268253)

(assert b_and!268243)

(assert b_and!268249)

(assert (not b_next!96135))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1070319 () Bool)

(declare-fun lt!1260391 () Bool)

(declare-fun content!5520 (List!38489) (Set C!21166))

(assert (=> d!1070319 (= lt!1260391 (set.member lt!1260281 (content!5520 (usedCharacters!943 (regex!5731 anOtherTypeRule!33)))))))

(declare-fun e!2253503 () Bool)

(assert (=> d!1070319 (= lt!1260391 e!2253503)))

(declare-fun res!1475457 () Bool)

(assert (=> d!1070319 (=> (not res!1475457) (not e!2253503))))

(assert (=> d!1070319 (= res!1475457 (is-Cons!38365 (usedCharacters!943 (regex!5731 anOtherTypeRule!33))))))

(assert (=> d!1070319 (= (contains!7527 (usedCharacters!943 (regex!5731 anOtherTypeRule!33)) lt!1260281) lt!1260391)))

(declare-fun b!3640333 () Bool)

(declare-fun e!2253504 () Bool)

(assert (=> b!3640333 (= e!2253503 e!2253504)))

(declare-fun res!1475458 () Bool)

(assert (=> b!3640333 (=> res!1475458 e!2253504)))

(assert (=> b!3640333 (= res!1475458 (= (h!43785 (usedCharacters!943 (regex!5731 anOtherTypeRule!33))) lt!1260281))))

(declare-fun b!3640334 () Bool)

(assert (=> b!3640334 (= e!2253504 (contains!7527 (t!296392 (usedCharacters!943 (regex!5731 anOtherTypeRule!33))) lt!1260281))))

(assert (= (and d!1070319 res!1475457) b!3640333))

(assert (= (and b!3640333 (not res!1475458)) b!3640334))

(assert (=> d!1070319 m!4143221))

(declare-fun m!4143365 () Bool)

(assert (=> d!1070319 m!4143365))

(declare-fun m!4143367 () Bool)

(assert (=> d!1070319 m!4143367))

(declare-fun m!4143369 () Bool)

(assert (=> b!3640334 m!4143369))

(assert (=> b!3640184 d!1070319))

(declare-fun bm!263132 () Bool)

(declare-fun c!629439 () Bool)

(declare-fun call!263137 () List!38489)

(declare-fun c!629436 () Bool)

(assert (=> bm!263132 (= call!263137 (usedCharacters!943 (ite c!629436 (reg!10819 (regex!5731 anOtherTypeRule!33)) (ite c!629439 (regOne!21493 (regex!5731 anOtherTypeRule!33)) (regTwo!21492 (regex!5731 anOtherTypeRule!33))))))))

(declare-fun b!3640351 () Bool)

(declare-fun e!2253514 () List!38489)

(assert (=> b!3640351 (= e!2253514 call!263137)))

(declare-fun b!3640352 () Bool)

(assert (=> b!3640352 (= c!629436 (is-Star!10490 (regex!5731 anOtherTypeRule!33)))))

(declare-fun e!2253515 () List!38489)

(assert (=> b!3640352 (= e!2253515 e!2253514)))

(declare-fun bm!263133 () Bool)

(declare-fun call!263138 () List!38489)

(assert (=> bm!263133 (= call!263138 (usedCharacters!943 (ite c!629439 (regTwo!21493 (regex!5731 anOtherTypeRule!33)) (regOne!21492 (regex!5731 anOtherTypeRule!33)))))))

(declare-fun b!3640353 () Bool)

(declare-fun e!2253513 () List!38489)

(assert (=> b!3640353 (= e!2253513 e!2253515)))

(declare-fun c!629437 () Bool)

(assert (=> b!3640353 (= c!629437 (is-ElementMatch!10490 (regex!5731 anOtherTypeRule!33)))))

(declare-fun b!3640354 () Bool)

(declare-fun e!2253516 () List!38489)

(assert (=> b!3640354 (= e!2253514 e!2253516)))

(assert (=> b!3640354 (= c!629439 (is-Union!10490 (regex!5731 anOtherTypeRule!33)))))

(declare-fun b!3640355 () Bool)

(declare-fun call!263140 () List!38489)

(assert (=> b!3640355 (= e!2253516 call!263140)))

(declare-fun d!1070321 () Bool)

(declare-fun c!629438 () Bool)

(assert (=> d!1070321 (= c!629438 (or (is-EmptyExpr!10490 (regex!5731 anOtherTypeRule!33)) (is-EmptyLang!10490 (regex!5731 anOtherTypeRule!33))))))

(assert (=> d!1070321 (= (usedCharacters!943 (regex!5731 anOtherTypeRule!33)) e!2253513)))

(declare-fun b!3640356 () Bool)

(assert (=> b!3640356 (= e!2253515 (Cons!38365 (c!629420 (regex!5731 anOtherTypeRule!33)) Nil!38365))))

(declare-fun b!3640357 () Bool)

(assert (=> b!3640357 (= e!2253513 Nil!38365)))

(declare-fun bm!263134 () Bool)

(declare-fun call!263139 () List!38489)

(assert (=> bm!263134 (= call!263139 call!263137)))

(declare-fun b!3640358 () Bool)

(assert (=> b!3640358 (= e!2253516 call!263140)))

(declare-fun bm!263135 () Bool)

(assert (=> bm!263135 (= call!263140 (++!9547 (ite c!629439 call!263139 call!263138) (ite c!629439 call!263138 call!263139)))))

(assert (= (and d!1070321 c!629438) b!3640357))

(assert (= (and d!1070321 (not c!629438)) b!3640353))

(assert (= (and b!3640353 c!629437) b!3640356))

(assert (= (and b!3640353 (not c!629437)) b!3640352))

(assert (= (and b!3640352 c!629436) b!3640351))

(assert (= (and b!3640352 (not c!629436)) b!3640354))

(assert (= (and b!3640354 c!629439) b!3640358))

(assert (= (and b!3640354 (not c!629439)) b!3640355))

(assert (= (or b!3640358 b!3640355) bm!263134))

(assert (= (or b!3640358 b!3640355) bm!263133))

(assert (= (or b!3640358 b!3640355) bm!263135))

(assert (= (or b!3640351 bm!263134) bm!263132))

(declare-fun m!4143371 () Bool)

(assert (=> bm!263132 m!4143371))

(declare-fun m!4143373 () Bool)

(assert (=> bm!263133 m!4143373))

(declare-fun m!4143375 () Bool)

(assert (=> bm!263135 m!4143375))

(assert (=> b!3640184 d!1070321))

(declare-fun d!1070323 () Bool)

(declare-fun lt!1260394 () Bool)

(declare-fun content!5521 (List!38490) (Set Rule!11262))

(assert (=> d!1070323 (= lt!1260394 (set.member rule!403 (content!5521 rules!3307)))))

(declare-fun e!2253522 () Bool)

(assert (=> d!1070323 (= lt!1260394 e!2253522)))

(declare-fun res!1475468 () Bool)

(assert (=> d!1070323 (=> (not res!1475468) (not e!2253522))))

(assert (=> d!1070323 (= res!1475468 (is-Cons!38366 rules!3307))))

(assert (=> d!1070323 (= (contains!7528 rules!3307 rule!403) lt!1260394)))

(declare-fun b!3640363 () Bool)

(declare-fun e!2253521 () Bool)

(assert (=> b!3640363 (= e!2253522 e!2253521)))

(declare-fun res!1475469 () Bool)

(assert (=> b!3640363 (=> res!1475469 e!2253521)))

(assert (=> b!3640363 (= res!1475469 (= (h!43786 rules!3307) rule!403))))

(declare-fun b!3640364 () Bool)

(assert (=> b!3640364 (= e!2253521 (contains!7528 (t!296393 rules!3307) rule!403))))

(assert (= (and d!1070323 res!1475468) b!3640363))

(assert (= (and b!3640363 (not res!1475469)) b!3640364))

(declare-fun m!4143377 () Bool)

(assert (=> d!1070323 m!4143377))

(declare-fun m!4143379 () Bool)

(assert (=> d!1070323 m!4143379))

(declare-fun m!4143381 () Bool)

(assert (=> b!3640364 m!4143381))

(assert (=> b!3640206 d!1070323))

(declare-fun d!1070325 () Bool)

(assert (=> d!1070325 (= (get!12566 lt!1260293) (v!37917 lt!1260293))))

(assert (=> b!3640185 d!1070325))

(declare-fun d!1070327 () Bool)

(declare-fun res!1475474 () Bool)

(declare-fun e!2253527 () Bool)

(assert (=> d!1070327 (=> res!1475474 e!2253527)))

(assert (=> d!1070327 (= res!1475474 (not (is-Cons!38366 rules!3307)))))

(assert (=> d!1070327 (= (sepAndNonSepRulesDisjointChars!1899 rules!3307 rules!3307) e!2253527)))

(declare-fun b!3640369 () Bool)

(declare-fun e!2253528 () Bool)

(assert (=> b!3640369 (= e!2253527 e!2253528)))

(declare-fun res!1475475 () Bool)

(assert (=> b!3640369 (=> (not res!1475475) (not e!2253528))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!864 (Rule!11262 List!38490) Bool)

(assert (=> b!3640369 (= res!1475475 (ruleDisjointCharsFromAllFromOtherType!864 (h!43786 rules!3307) rules!3307))))

(declare-fun b!3640370 () Bool)

(assert (=> b!3640370 (= e!2253528 (sepAndNonSepRulesDisjointChars!1899 rules!3307 (t!296393 rules!3307)))))

(assert (= (and d!1070327 (not res!1475474)) b!3640369))

(assert (= (and b!3640369 res!1475475) b!3640370))

(declare-fun m!4143383 () Bool)

(assert (=> b!3640369 m!4143383))

(declare-fun m!4143385 () Bool)

(assert (=> b!3640370 m!4143385))

(assert (=> b!3640202 d!1070327))

(declare-fun d!1070329 () Bool)

(declare-fun isEmpty!22718 (Option!8090) Bool)

(assert (=> d!1070329 (= (isDefined!6322 lt!1260293) (not (isEmpty!22718 lt!1260293)))))

(declare-fun bs!571924 () Bool)

(assert (= bs!571924 d!1070329))

(declare-fun m!4143387 () Bool)

(assert (=> bs!571924 m!4143387))

(assert (=> b!3640181 d!1070329))

(declare-fun call!263143 () Option!8090)

(declare-fun bm!263138 () Bool)

(assert (=> bm!263138 (= call!263143 (maxPrefixOneRule!1992 thiss!23823 (h!43786 rules!3307) lt!1260282))))

(declare-fun d!1070331 () Bool)

(declare-fun e!2253536 () Bool)

(assert (=> d!1070331 e!2253536))

(declare-fun res!1475495 () Bool)

(assert (=> d!1070331 (=> res!1475495 e!2253536)))

(declare-fun lt!1260405 () Option!8090)

(assert (=> d!1070331 (= res!1475495 (isEmpty!22718 lt!1260405))))

(declare-fun e!2253535 () Option!8090)

(assert (=> d!1070331 (= lt!1260405 e!2253535)))

(declare-fun c!629442 () Bool)

(assert (=> d!1070331 (= c!629442 (and (is-Cons!38366 rules!3307) (is-Nil!38366 (t!296393 rules!3307))))))

(declare-fun lt!1260406 () Unit!55207)

(declare-fun lt!1260409 () Unit!55207)

(assert (=> d!1070331 (= lt!1260406 lt!1260409)))

(assert (=> d!1070331 (isPrefix!3094 lt!1260282 lt!1260282)))

(declare-fun lemmaIsPrefixRefl!1961 (List!38489 List!38489) Unit!55207)

(assert (=> d!1070331 (= lt!1260409 (lemmaIsPrefixRefl!1961 lt!1260282 lt!1260282))))

(declare-fun rulesValidInductive!2026 (LexerInterface!5320 List!38490) Bool)

(assert (=> d!1070331 (rulesValidInductive!2026 thiss!23823 rules!3307)))

(assert (=> d!1070331 (= (maxPrefix!2854 thiss!23823 rules!3307 lt!1260282) lt!1260405)))

(declare-fun b!3640389 () Bool)

(declare-fun e!2253537 () Bool)

(assert (=> b!3640389 (= e!2253537 (contains!7528 rules!3307 (rule!8513 (_1!22251 (get!12566 lt!1260405)))))))

(declare-fun b!3640390 () Bool)

(declare-fun res!1475493 () Bool)

(assert (=> b!3640390 (=> (not res!1475493) (not e!2253537))))

(assert (=> b!3640390 (= res!1475493 (< (size!29281 (_2!22251 (get!12566 lt!1260405))) (size!29281 lt!1260282)))))

(declare-fun b!3640391 () Bool)

(declare-fun res!1475496 () Bool)

(assert (=> b!3640391 (=> (not res!1475496) (not e!2253537))))

(assert (=> b!3640391 (= res!1475496 (= (value!183795 (_1!22251 (get!12566 lt!1260405))) (apply!9233 (transformation!5731 (rule!8513 (_1!22251 (get!12566 lt!1260405)))) (seqFromList!4280 (originalCharacters!6445 (_1!22251 (get!12566 lt!1260405)))))))))

(declare-fun b!3640392 () Bool)

(assert (=> b!3640392 (= e!2253536 e!2253537)))

(declare-fun res!1475492 () Bool)

(assert (=> b!3640392 (=> (not res!1475492) (not e!2253537))))

(assert (=> b!3640392 (= res!1475492 (isDefined!6322 lt!1260405))))

(declare-fun b!3640393 () Bool)

(declare-fun res!1475494 () Bool)

(assert (=> b!3640393 (=> (not res!1475494) (not e!2253537))))

(assert (=> b!3640393 (= res!1475494 (matchR!5059 (regex!5731 (rule!8513 (_1!22251 (get!12566 lt!1260405)))) (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260405))))))))

(declare-fun b!3640394 () Bool)

(declare-fun res!1475490 () Bool)

(assert (=> b!3640394 (=> (not res!1475490) (not e!2253537))))

(assert (=> b!3640394 (= res!1475490 (= (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260405)))) (originalCharacters!6445 (_1!22251 (get!12566 lt!1260405)))))))

(declare-fun b!3640395 () Bool)

(declare-fun lt!1260408 () Option!8090)

(declare-fun lt!1260407 () Option!8090)

(assert (=> b!3640395 (= e!2253535 (ite (and (is-None!8089 lt!1260408) (is-None!8089 lt!1260407)) None!8089 (ite (is-None!8089 lt!1260407) lt!1260408 (ite (is-None!8089 lt!1260408) lt!1260407 (ite (>= (size!29280 (_1!22251 (v!37917 lt!1260408))) (size!29280 (_1!22251 (v!37917 lt!1260407)))) lt!1260408 lt!1260407)))))))

(assert (=> b!3640395 (= lt!1260408 call!263143)))

(assert (=> b!3640395 (= lt!1260407 (maxPrefix!2854 thiss!23823 (t!296393 rules!3307) lt!1260282))))

(declare-fun b!3640396 () Bool)

(assert (=> b!3640396 (= e!2253535 call!263143)))

(declare-fun b!3640397 () Bool)

(declare-fun res!1475491 () Bool)

(assert (=> b!3640397 (=> (not res!1475491) (not e!2253537))))

(assert (=> b!3640397 (= res!1475491 (= (++!9547 (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260405)))) (_2!22251 (get!12566 lt!1260405))) lt!1260282))))

(assert (= (and d!1070331 c!629442) b!3640396))

(assert (= (and d!1070331 (not c!629442)) b!3640395))

(assert (= (or b!3640396 b!3640395) bm!263138))

(assert (= (and d!1070331 (not res!1475495)) b!3640392))

(assert (= (and b!3640392 res!1475492) b!3640394))

(assert (= (and b!3640394 res!1475490) b!3640390))

(assert (= (and b!3640390 res!1475493) b!3640397))

(assert (= (and b!3640397 res!1475491) b!3640391))

(assert (= (and b!3640391 res!1475496) b!3640393))

(assert (= (and b!3640393 res!1475494) b!3640389))

(declare-fun m!4143389 () Bool)

(assert (=> b!3640390 m!4143389))

(declare-fun m!4143391 () Bool)

(assert (=> b!3640390 m!4143391))

(declare-fun m!4143393 () Bool)

(assert (=> b!3640390 m!4143393))

(assert (=> b!3640397 m!4143389))

(declare-fun m!4143395 () Bool)

(assert (=> b!3640397 m!4143395))

(assert (=> b!3640397 m!4143395))

(declare-fun m!4143397 () Bool)

(assert (=> b!3640397 m!4143397))

(assert (=> b!3640397 m!4143397))

(declare-fun m!4143399 () Bool)

(assert (=> b!3640397 m!4143399))

(assert (=> b!3640394 m!4143389))

(assert (=> b!3640394 m!4143395))

(assert (=> b!3640394 m!4143395))

(assert (=> b!3640394 m!4143397))

(declare-fun m!4143401 () Bool)

(assert (=> b!3640392 m!4143401))

(declare-fun m!4143403 () Bool)

(assert (=> bm!263138 m!4143403))

(assert (=> b!3640393 m!4143389))

(assert (=> b!3640393 m!4143395))

(assert (=> b!3640393 m!4143395))

(assert (=> b!3640393 m!4143397))

(assert (=> b!3640393 m!4143397))

(declare-fun m!4143405 () Bool)

(assert (=> b!3640393 m!4143405))

(declare-fun m!4143407 () Bool)

(assert (=> b!3640395 m!4143407))

(assert (=> b!3640391 m!4143389))

(declare-fun m!4143409 () Bool)

(assert (=> b!3640391 m!4143409))

(assert (=> b!3640391 m!4143409))

(declare-fun m!4143411 () Bool)

(assert (=> b!3640391 m!4143411))

(declare-fun m!4143413 () Bool)

(assert (=> d!1070331 m!4143413))

(declare-fun m!4143415 () Bool)

(assert (=> d!1070331 m!4143415))

(declare-fun m!4143417 () Bool)

(assert (=> d!1070331 m!4143417))

(declare-fun m!4143419 () Bool)

(assert (=> d!1070331 m!4143419))

(assert (=> b!3640389 m!4143389))

(declare-fun m!4143421 () Bool)

(assert (=> b!3640389 m!4143421))

(assert (=> b!3640181 d!1070331))

(declare-fun d!1070333 () Bool)

(declare-fun list!14203 (Conc!11714) List!38489)

(assert (=> d!1070333 (= (list!14201 (charsOf!3745 token!511)) (list!14203 (c!629421 (charsOf!3745 token!511))))))

(declare-fun bs!571925 () Bool)

(assert (= bs!571925 d!1070333))

(declare-fun m!4143423 () Bool)

(assert (=> bs!571925 m!4143423))

(assert (=> b!3640181 d!1070333))

(declare-fun d!1070335 () Bool)

(declare-fun lt!1260412 () BalanceConc!23042)

(assert (=> d!1070335 (= (list!14201 lt!1260412) (originalCharacters!6445 token!511))))

(declare-fun dynLambda!16686 (Int TokenValue!5961) BalanceConc!23042)

(assert (=> d!1070335 (= lt!1260412 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 token!511))) (value!183795 token!511)))))

(assert (=> d!1070335 (= (charsOf!3745 token!511) lt!1260412)))

(declare-fun b_lambda!107899 () Bool)

(assert (=> (not b_lambda!107899) (not d!1070335)))

(declare-fun t!296398 () Bool)

(declare-fun tb!209661 () Bool)

(assert (=> (and b!3640217 (= (toChars!7882 (transformation!5731 (rule!8513 token!511))) (toChars!7882 (transformation!5731 (rule!8513 token!511)))) t!296398) tb!209661))

(declare-fun b!3640402 () Bool)

(declare-fun e!2253540 () Bool)

(declare-fun tp!1110657 () Bool)

(declare-fun inv!51804 (Conc!11714) Bool)

(assert (=> b!3640402 (= e!2253540 (and (inv!51804 (c!629421 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 token!511))) (value!183795 token!511)))) tp!1110657))))

(declare-fun result!255362 () Bool)

(declare-fun inv!51805 (BalanceConc!23042) Bool)

(assert (=> tb!209661 (= result!255362 (and (inv!51805 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 token!511))) (value!183795 token!511))) e!2253540))))

(assert (= tb!209661 b!3640402))

(declare-fun m!4143425 () Bool)

(assert (=> b!3640402 m!4143425))

(declare-fun m!4143427 () Bool)

(assert (=> tb!209661 m!4143427))

(assert (=> d!1070335 t!296398))

(declare-fun b_and!268275 () Bool)

(assert (= b_and!268245 (and (=> t!296398 result!255362) b_and!268275)))

(declare-fun tb!209663 () Bool)

(declare-fun t!296400 () Bool)

(assert (=> (and b!3640213 (= (toChars!7882 (transformation!5731 (h!43786 rules!3307))) (toChars!7882 (transformation!5731 (rule!8513 token!511)))) t!296400) tb!209663))

(declare-fun result!255366 () Bool)

(assert (= result!255366 result!255362))

(assert (=> d!1070335 t!296400))

(declare-fun b_and!268277 () Bool)

(assert (= b_and!268249 (and (=> t!296400 result!255366) b_and!268277)))

(declare-fun t!296402 () Bool)

(declare-fun tb!209665 () Bool)

(assert (=> (and b!3640200 (= (toChars!7882 (transformation!5731 anOtherTypeRule!33)) (toChars!7882 (transformation!5731 (rule!8513 token!511)))) t!296402) tb!209665))

(declare-fun result!255368 () Bool)

(assert (= result!255368 result!255362))

(assert (=> d!1070335 t!296402))

(declare-fun b_and!268279 () Bool)

(assert (= b_and!268253 (and (=> t!296402 result!255368) b_and!268279)))

(declare-fun t!296404 () Bool)

(declare-fun tb!209667 () Bool)

(assert (=> (and b!3640188 (= (toChars!7882 (transformation!5731 rule!403)) (toChars!7882 (transformation!5731 (rule!8513 token!511)))) t!296404) tb!209667))

(declare-fun result!255370 () Bool)

(assert (= result!255370 result!255362))

(assert (=> d!1070335 t!296404))

(declare-fun b_and!268281 () Bool)

(assert (= b_and!268257 (and (=> t!296404 result!255370) b_and!268281)))

(declare-fun m!4143429 () Bool)

(assert (=> d!1070335 m!4143429))

(declare-fun m!4143431 () Bool)

(assert (=> d!1070335 m!4143431))

(assert (=> b!3640181 d!1070335))

(declare-fun d!1070337 () Bool)

(assert (=> d!1070337 (= (inv!51797 (tag!6479 (rule!8513 token!511))) (= (mod (str.len (value!183794 (tag!6479 (rule!8513 token!511)))) 2) 0))))

(assert (=> b!3640182 d!1070337))

(declare-fun d!1070339 () Bool)

(declare-fun res!1475499 () Bool)

(declare-fun e!2253543 () Bool)

(assert (=> d!1070339 (=> (not res!1475499) (not e!2253543))))

(declare-fun semiInverseModEq!2440 (Int Int) Bool)

(assert (=> d!1070339 (= res!1475499 (semiInverseModEq!2440 (toChars!7882 (transformation!5731 (rule!8513 token!511))) (toValue!8023 (transformation!5731 (rule!8513 token!511)))))))

(assert (=> d!1070339 (= (inv!51800 (transformation!5731 (rule!8513 token!511))) e!2253543)))

(declare-fun b!3640405 () Bool)

(declare-fun equivClasses!2339 (Int Int) Bool)

(assert (=> b!3640405 (= e!2253543 (equivClasses!2339 (toChars!7882 (transformation!5731 (rule!8513 token!511))) (toValue!8023 (transformation!5731 (rule!8513 token!511)))))))

(assert (= (and d!1070339 res!1475499) b!3640405))

(declare-fun m!4143433 () Bool)

(assert (=> d!1070339 m!4143433))

(declare-fun m!4143435 () Bool)

(assert (=> b!3640405 m!4143435))

(assert (=> b!3640182 d!1070339))

(declare-fun d!1070341 () Bool)

(assert (=> d!1070341 (= (isEmpty!22715 (_2!22251 lt!1260292)) (is-Nil!38365 (_2!22251 lt!1260292)))))

(assert (=> b!3640203 d!1070341))

(declare-fun b!3640416 () Bool)

(declare-fun e!2253550 () Bool)

(declare-fun tail!5638 (List!38489) List!38489)

(assert (=> b!3640416 (= e!2253550 (isPrefix!3094 (tail!5638 lt!1260267) (tail!5638 lt!1260280)))))

(declare-fun d!1070343 () Bool)

(declare-fun e!2253552 () Bool)

(assert (=> d!1070343 e!2253552))

(declare-fun res!1475508 () Bool)

(assert (=> d!1070343 (=> res!1475508 e!2253552)))

(declare-fun lt!1260415 () Bool)

(assert (=> d!1070343 (= res!1475508 (not lt!1260415))))

(declare-fun e!2253551 () Bool)

(assert (=> d!1070343 (= lt!1260415 e!2253551)))

(declare-fun res!1475511 () Bool)

(assert (=> d!1070343 (=> res!1475511 e!2253551)))

(assert (=> d!1070343 (= res!1475511 (is-Nil!38365 lt!1260267))))

(assert (=> d!1070343 (= (isPrefix!3094 lt!1260267 lt!1260280) lt!1260415)))

(declare-fun b!3640415 () Bool)

(declare-fun res!1475510 () Bool)

(assert (=> b!3640415 (=> (not res!1475510) (not e!2253550))))

(assert (=> b!3640415 (= res!1475510 (= (head!7729 lt!1260267) (head!7729 lt!1260280)))))

(declare-fun b!3640414 () Bool)

(assert (=> b!3640414 (= e!2253551 e!2253550)))

(declare-fun res!1475509 () Bool)

(assert (=> b!3640414 (=> (not res!1475509) (not e!2253550))))

(assert (=> b!3640414 (= res!1475509 (not (is-Nil!38365 lt!1260280)))))

(declare-fun b!3640417 () Bool)

(assert (=> b!3640417 (= e!2253552 (>= (size!29281 lt!1260280) (size!29281 lt!1260267)))))

(assert (= (and d!1070343 (not res!1475511)) b!3640414))

(assert (= (and b!3640414 res!1475509) b!3640415))

(assert (= (and b!3640415 res!1475510) b!3640416))

(assert (= (and d!1070343 (not res!1475508)) b!3640417))

(declare-fun m!4143437 () Bool)

(assert (=> b!3640416 m!4143437))

(declare-fun m!4143439 () Bool)

(assert (=> b!3640416 m!4143439))

(assert (=> b!3640416 m!4143437))

(assert (=> b!3640416 m!4143439))

(declare-fun m!4143441 () Bool)

(assert (=> b!3640416 m!4143441))

(assert (=> b!3640415 m!4143107))

(declare-fun m!4143443 () Bool)

(assert (=> b!3640415 m!4143443))

(declare-fun m!4143445 () Bool)

(assert (=> b!3640417 m!4143445))

(assert (=> b!3640417 m!4143147))

(assert (=> b!3640204 d!1070343))

(declare-fun b!3640428 () Bool)

(declare-fun res!1475516 () Bool)

(declare-fun e!2253557 () Bool)

(assert (=> b!3640428 (=> (not res!1475516) (not e!2253557))))

(declare-fun lt!1260418 () List!38489)

(assert (=> b!3640428 (= res!1475516 (= (size!29281 lt!1260418) (+ (size!29281 lt!1260267) (size!29281 (_2!22251 lt!1260277)))))))

(declare-fun b!3640429 () Bool)

(assert (=> b!3640429 (= e!2253557 (or (not (= (_2!22251 lt!1260277) Nil!38365)) (= lt!1260418 lt!1260267)))))

(declare-fun d!1070349 () Bool)

(assert (=> d!1070349 e!2253557))

(declare-fun res!1475517 () Bool)

(assert (=> d!1070349 (=> (not res!1475517) (not e!2253557))))

(assert (=> d!1070349 (= res!1475517 (= (content!5520 lt!1260418) (set.union (content!5520 lt!1260267) (content!5520 (_2!22251 lt!1260277)))))))

(declare-fun e!2253558 () List!38489)

(assert (=> d!1070349 (= lt!1260418 e!2253558)))

(declare-fun c!629445 () Bool)

(assert (=> d!1070349 (= c!629445 (is-Nil!38365 lt!1260267))))

(assert (=> d!1070349 (= (++!9547 lt!1260267 (_2!22251 lt!1260277)) lt!1260418)))

(declare-fun b!3640426 () Bool)

(assert (=> b!3640426 (= e!2253558 (_2!22251 lt!1260277))))

(declare-fun b!3640427 () Bool)

(assert (=> b!3640427 (= e!2253558 (Cons!38365 (h!43785 lt!1260267) (++!9547 (t!296392 lt!1260267) (_2!22251 lt!1260277))))))

(assert (= (and d!1070349 c!629445) b!3640426))

(assert (= (and d!1070349 (not c!629445)) b!3640427))

(assert (= (and d!1070349 res!1475517) b!3640428))

(assert (= (and b!3640428 res!1475516) b!3640429))

(declare-fun m!4143447 () Bool)

(assert (=> b!3640428 m!4143447))

(assert (=> b!3640428 m!4143147))

(declare-fun m!4143449 () Bool)

(assert (=> b!3640428 m!4143449))

(declare-fun m!4143451 () Bool)

(assert (=> d!1070349 m!4143451))

(declare-fun m!4143453 () Bool)

(assert (=> d!1070349 m!4143453))

(declare-fun m!4143455 () Bool)

(assert (=> d!1070349 m!4143455))

(declare-fun m!4143457 () Bool)

(assert (=> b!3640427 m!4143457))

(assert (=> b!3640204 d!1070349))

(declare-fun d!1070351 () Bool)

(declare-fun lt!1260419 () BalanceConc!23042)

(assert (=> d!1070351 (= (list!14201 lt!1260419) (originalCharacters!6445 (_1!22251 lt!1260277)))))

(assert (=> d!1070351 (= lt!1260419 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (value!183795 (_1!22251 lt!1260277))))))

(assert (=> d!1070351 (= (charsOf!3745 (_1!22251 lt!1260277)) lt!1260419)))

(declare-fun b_lambda!107901 () Bool)

(assert (=> (not b_lambda!107901) (not d!1070351)))

(declare-fun t!296406 () Bool)

(declare-fun tb!209669 () Bool)

(assert (=> (and b!3640217 (= (toChars!7882 (transformation!5731 (rule!8513 token!511))) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296406) tb!209669))

(declare-fun b!3640430 () Bool)

(declare-fun e!2253559 () Bool)

(declare-fun tp!1110658 () Bool)

(assert (=> b!3640430 (= e!2253559 (and (inv!51804 (c!629421 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (value!183795 (_1!22251 lt!1260277))))) tp!1110658))))

(declare-fun result!255372 () Bool)

(assert (=> tb!209669 (= result!255372 (and (inv!51805 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (value!183795 (_1!22251 lt!1260277)))) e!2253559))))

(assert (= tb!209669 b!3640430))

(declare-fun m!4143459 () Bool)

(assert (=> b!3640430 m!4143459))

(declare-fun m!4143461 () Bool)

(assert (=> tb!209669 m!4143461))

(assert (=> d!1070351 t!296406))

(declare-fun b_and!268283 () Bool)

(assert (= b_and!268275 (and (=> t!296406 result!255372) b_and!268283)))

(declare-fun tb!209671 () Bool)

(declare-fun t!296408 () Bool)

(assert (=> (and b!3640213 (= (toChars!7882 (transformation!5731 (h!43786 rules!3307))) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296408) tb!209671))

(declare-fun result!255374 () Bool)

(assert (= result!255374 result!255372))

(assert (=> d!1070351 t!296408))

(declare-fun b_and!268285 () Bool)

(assert (= b_and!268277 (and (=> t!296408 result!255374) b_and!268285)))

(declare-fun t!296410 () Bool)

(declare-fun tb!209673 () Bool)

(assert (=> (and b!3640200 (= (toChars!7882 (transformation!5731 anOtherTypeRule!33)) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296410) tb!209673))

(declare-fun result!255376 () Bool)

(assert (= result!255376 result!255372))

(assert (=> d!1070351 t!296410))

(declare-fun b_and!268287 () Bool)

(assert (= b_and!268279 (and (=> t!296410 result!255376) b_and!268287)))

(declare-fun t!296412 () Bool)

(declare-fun tb!209675 () Bool)

(assert (=> (and b!3640188 (= (toChars!7882 (transformation!5731 rule!403)) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296412) tb!209675))

(declare-fun result!255378 () Bool)

(assert (= result!255378 result!255372))

(assert (=> d!1070351 t!296412))

(declare-fun b_and!268289 () Bool)

(assert (= b_and!268281 (and (=> t!296412 result!255378) b_and!268289)))

(declare-fun m!4143463 () Bool)

(assert (=> d!1070351 m!4143463))

(declare-fun m!4143465 () Bool)

(assert (=> d!1070351 m!4143465))

(assert (=> b!3640204 d!1070351))

(declare-fun d!1070353 () Bool)

(assert (=> d!1070353 (= (get!12566 lt!1260289) (v!37917 lt!1260289))))

(assert (=> b!3640204 d!1070353))

(declare-fun d!1070355 () Bool)

(assert (=> d!1070355 (isPrefix!3094 lt!1260282 (++!9547 lt!1260282 suffix!1395))))

(declare-fun lt!1260422 () Unit!55207)

(declare-fun choose!21399 (List!38489 List!38489) Unit!55207)

(assert (=> d!1070355 (= lt!1260422 (choose!21399 lt!1260282 suffix!1395))))

(assert (=> d!1070355 (= (lemmaConcatTwoListThenFirstIsPrefix!2013 lt!1260282 suffix!1395) lt!1260422)))

(declare-fun bs!571926 () Bool)

(assert (= bs!571926 d!1070355))

(assert (=> bs!571926 m!4143203))

(assert (=> bs!571926 m!4143203))

(declare-fun m!4143467 () Bool)

(assert (=> bs!571926 m!4143467))

(declare-fun m!4143469 () Bool)

(assert (=> bs!571926 m!4143469))

(assert (=> b!3640204 d!1070355))

(declare-fun b!3640433 () Bool)

(declare-fun res!1475518 () Bool)

(declare-fun e!2253560 () Bool)

(assert (=> b!3640433 (=> (not res!1475518) (not e!2253560))))

(declare-fun lt!1260423 () List!38489)

(assert (=> b!3640433 (= res!1475518 (= (size!29281 lt!1260423) (+ (size!29281 lt!1260282) (size!29281 suffix!1395))))))

(declare-fun b!3640434 () Bool)

(assert (=> b!3640434 (= e!2253560 (or (not (= suffix!1395 Nil!38365)) (= lt!1260423 lt!1260282)))))

(declare-fun d!1070357 () Bool)

(assert (=> d!1070357 e!2253560))

(declare-fun res!1475519 () Bool)

(assert (=> d!1070357 (=> (not res!1475519) (not e!2253560))))

(assert (=> d!1070357 (= res!1475519 (= (content!5520 lt!1260423) (set.union (content!5520 lt!1260282) (content!5520 suffix!1395))))))

(declare-fun e!2253561 () List!38489)

(assert (=> d!1070357 (= lt!1260423 e!2253561)))

(declare-fun c!629446 () Bool)

(assert (=> d!1070357 (= c!629446 (is-Nil!38365 lt!1260282))))

(assert (=> d!1070357 (= (++!9547 lt!1260282 suffix!1395) lt!1260423)))

(declare-fun b!3640431 () Bool)

(assert (=> b!3640431 (= e!2253561 suffix!1395)))

(declare-fun b!3640432 () Bool)

(assert (=> b!3640432 (= e!2253561 (Cons!38365 (h!43785 lt!1260282) (++!9547 (t!296392 lt!1260282) suffix!1395)))))

(assert (= (and d!1070357 c!629446) b!3640431))

(assert (= (and d!1070357 (not c!629446)) b!3640432))

(assert (= (and d!1070357 res!1475519) b!3640433))

(assert (= (and b!3640433 res!1475518) b!3640434))

(declare-fun m!4143471 () Bool)

(assert (=> b!3640433 m!4143471))

(assert (=> b!3640433 m!4143393))

(declare-fun m!4143473 () Bool)

(assert (=> b!3640433 m!4143473))

(declare-fun m!4143475 () Bool)

(assert (=> d!1070357 m!4143475))

(declare-fun m!4143477 () Bool)

(assert (=> d!1070357 m!4143477))

(declare-fun m!4143479 () Bool)

(assert (=> d!1070357 m!4143479))

(declare-fun m!4143481 () Bool)

(assert (=> b!3640432 m!4143481))

(assert (=> b!3640204 d!1070357))

(declare-fun b!3640437 () Bool)

(declare-fun e!2253562 () Bool)

(assert (=> b!3640437 (= e!2253562 (isPrefix!3094 (tail!5638 lt!1260267) (tail!5638 (++!9547 lt!1260267 (_2!22251 lt!1260277)))))))

(declare-fun d!1070359 () Bool)

(declare-fun e!2253564 () Bool)

(assert (=> d!1070359 e!2253564))

(declare-fun res!1475520 () Bool)

(assert (=> d!1070359 (=> res!1475520 e!2253564)))

(declare-fun lt!1260424 () Bool)

(assert (=> d!1070359 (= res!1475520 (not lt!1260424))))

(declare-fun e!2253563 () Bool)

(assert (=> d!1070359 (= lt!1260424 e!2253563)))

(declare-fun res!1475523 () Bool)

(assert (=> d!1070359 (=> res!1475523 e!2253563)))

(assert (=> d!1070359 (= res!1475523 (is-Nil!38365 lt!1260267))))

(assert (=> d!1070359 (= (isPrefix!3094 lt!1260267 (++!9547 lt!1260267 (_2!22251 lt!1260277))) lt!1260424)))

(declare-fun b!3640436 () Bool)

(declare-fun res!1475522 () Bool)

(assert (=> b!3640436 (=> (not res!1475522) (not e!2253562))))

(assert (=> b!3640436 (= res!1475522 (= (head!7729 lt!1260267) (head!7729 (++!9547 lt!1260267 (_2!22251 lt!1260277)))))))

(declare-fun b!3640435 () Bool)

(assert (=> b!3640435 (= e!2253563 e!2253562)))

(declare-fun res!1475521 () Bool)

(assert (=> b!3640435 (=> (not res!1475521) (not e!2253562))))

(assert (=> b!3640435 (= res!1475521 (not (is-Nil!38365 (++!9547 lt!1260267 (_2!22251 lt!1260277)))))))

(declare-fun b!3640438 () Bool)

(assert (=> b!3640438 (= e!2253564 (>= (size!29281 (++!9547 lt!1260267 (_2!22251 lt!1260277))) (size!29281 lt!1260267)))))

(assert (= (and d!1070359 (not res!1475523)) b!3640435))

(assert (= (and b!3640435 res!1475521) b!3640436))

(assert (= (and b!3640436 res!1475522) b!3640437))

(assert (= (and d!1070359 (not res!1475520)) b!3640438))

(assert (=> b!3640437 m!4143437))

(assert (=> b!3640437 m!4143207))

(declare-fun m!4143483 () Bool)

(assert (=> b!3640437 m!4143483))

(assert (=> b!3640437 m!4143437))

(assert (=> b!3640437 m!4143483))

(declare-fun m!4143485 () Bool)

(assert (=> b!3640437 m!4143485))

(assert (=> b!3640436 m!4143107))

(assert (=> b!3640436 m!4143207))

(declare-fun m!4143487 () Bool)

(assert (=> b!3640436 m!4143487))

(assert (=> b!3640438 m!4143207))

(declare-fun m!4143489 () Bool)

(assert (=> b!3640438 m!4143489))

(assert (=> b!3640438 m!4143147))

(assert (=> b!3640204 d!1070359))

(declare-fun d!1070361 () Bool)

(declare-fun isEmpty!22719 (Option!8091) Bool)

(assert (=> d!1070361 (= (isDefined!6323 lt!1260284) (not (isEmpty!22719 lt!1260284)))))

(declare-fun bs!571927 () Bool)

(assert (= bs!571927 d!1070361))

(declare-fun m!4143491 () Bool)

(assert (=> bs!571927 m!4143491))

(assert (=> b!3640204 d!1070361))

(declare-fun b!3640515 () Bool)

(declare-fun e!2253603 () Unit!55207)

(declare-fun Unit!55216 () Unit!55207)

(assert (=> b!3640515 (= e!2253603 Unit!55216)))

(declare-fun b!3640512 () Bool)

(declare-fun res!1475565 () Bool)

(declare-fun e!2253602 () Bool)

(assert (=> b!3640512 (=> (not res!1475565) (not e!2253602))))

(declare-fun lt!1260472 () Token!10828)

(assert (=> b!3640512 (= res!1475565 (matchR!5059 (regex!5731 (get!12567 (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 lt!1260472))))) (list!14201 (charsOf!3745 lt!1260472))))))

(declare-fun d!1070363 () Bool)

(assert (=> d!1070363 (isDefined!6322 (maxPrefix!2854 thiss!23823 rules!3307 (++!9547 lt!1260282 suffix!1395)))))

(declare-fun lt!1260475 () Unit!55207)

(assert (=> d!1070363 (= lt!1260475 e!2253603)))

(declare-fun c!629461 () Bool)

(assert (=> d!1070363 (= c!629461 (isEmpty!22718 (maxPrefix!2854 thiss!23823 rules!3307 (++!9547 lt!1260282 suffix!1395))))))

(declare-fun lt!1260473 () Unit!55207)

(declare-fun lt!1260477 () Unit!55207)

(assert (=> d!1070363 (= lt!1260473 lt!1260477)))

(assert (=> d!1070363 e!2253602))

(declare-fun res!1475564 () Bool)

(assert (=> d!1070363 (=> (not res!1475564) (not e!2253602))))

(assert (=> d!1070363 (= res!1475564 (isDefined!6323 (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 lt!1260472)))))))

(assert (=> d!1070363 (= lt!1260477 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1335 thiss!23823 rules!3307 lt!1260282 lt!1260472))))

(declare-fun lt!1260479 () Unit!55207)

(declare-fun lt!1260484 () Unit!55207)

(assert (=> d!1070363 (= lt!1260479 lt!1260484)))

(declare-fun lt!1260486 () List!38489)

(assert (=> d!1070363 (isPrefix!3094 lt!1260486 (++!9547 lt!1260282 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!491 (List!38489 List!38489 List!38489) Unit!55207)

(assert (=> d!1070363 (= lt!1260484 (lemmaPrefixStaysPrefixWhenAddingToSuffix!491 lt!1260486 lt!1260282 suffix!1395))))

(assert (=> d!1070363 (= lt!1260486 (list!14201 (charsOf!3745 lt!1260472)))))

(declare-fun lt!1260487 () Unit!55207)

(declare-fun lt!1260480 () Unit!55207)

(assert (=> d!1070363 (= lt!1260487 lt!1260480)))

(declare-fun lt!1260474 () List!38489)

(declare-fun lt!1260481 () List!38489)

(assert (=> d!1070363 (isPrefix!3094 lt!1260474 (++!9547 lt!1260474 lt!1260481))))

(assert (=> d!1070363 (= lt!1260480 (lemmaConcatTwoListThenFirstIsPrefix!2013 lt!1260474 lt!1260481))))

(assert (=> d!1070363 (= lt!1260481 (_2!22251 (get!12566 (maxPrefix!2854 thiss!23823 rules!3307 lt!1260282))))))

(assert (=> d!1070363 (= lt!1260474 (list!14201 (charsOf!3745 lt!1260472)))))

(declare-datatypes ((List!38494 0))(
  ( (Nil!38370) (Cons!38370 (h!43790 Token!10828) (t!296505 List!38494)) )
))
(declare-fun head!7731 (List!38494) Token!10828)

(declare-datatypes ((IArray!23437 0))(
  ( (IArray!23438 (innerList!11776 List!38494)) )
))
(declare-datatypes ((Conc!11716 0))(
  ( (Node!11716 (left!29960 Conc!11716) (right!30290 Conc!11716) (csize!23662 Int) (cheight!11927 Int)) (Leaf!18193 (xs!14918 IArray!23437) (csize!23663 Int)) (Empty!11716) )
))
(declare-datatypes ((BalanceConc!23046 0))(
  ( (BalanceConc!23047 (c!629561 Conc!11716)) )
))
(declare-fun list!14204 (BalanceConc!23046) List!38494)

(declare-datatypes ((tuple2!38238 0))(
  ( (tuple2!38239 (_1!22253 BalanceConc!23046) (_2!22253 BalanceConc!23042)) )
))
(declare-fun lex!2523 (LexerInterface!5320 List!38490 BalanceConc!23042) tuple2!38238)

(assert (=> d!1070363 (= lt!1260472 (head!7731 (list!14204 (_1!22253 (lex!2523 thiss!23823 rules!3307 (seqFromList!4280 lt!1260282))))))))

(assert (=> d!1070363 (not (isEmpty!22714 rules!3307))))

(assert (=> d!1070363 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!998 thiss!23823 rules!3307 lt!1260282 suffix!1395) lt!1260475)))

(declare-fun b!3640514 () Bool)

(declare-fun Unit!55217 () Unit!55207)

(assert (=> b!3640514 (= e!2253603 Unit!55217)))

(declare-fun lt!1260478 () List!38489)

(assert (=> b!3640514 (= lt!1260478 (++!9547 lt!1260282 suffix!1395))))

(declare-fun lt!1260471 () Unit!55207)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!527 (LexerInterface!5320 Rule!11262 List!38490 List!38489) Unit!55207)

(assert (=> b!3640514 (= lt!1260471 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!527 thiss!23823 (rule!8513 lt!1260472) rules!3307 lt!1260478))))

(assert (=> b!3640514 (isEmpty!22718 (maxPrefixOneRule!1992 thiss!23823 (rule!8513 lt!1260472) lt!1260478))))

(declare-fun lt!1260476 () Unit!55207)

(assert (=> b!3640514 (= lt!1260476 lt!1260471)))

(declare-fun lt!1260482 () List!38489)

(assert (=> b!3640514 (= lt!1260482 (list!14201 (charsOf!3745 lt!1260472)))))

(declare-fun lt!1260485 () Unit!55207)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!515 (LexerInterface!5320 Rule!11262 List!38489 List!38489) Unit!55207)

(assert (=> b!3640514 (= lt!1260485 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!515 thiss!23823 (rule!8513 lt!1260472) lt!1260482 (++!9547 lt!1260282 suffix!1395)))))

(assert (=> b!3640514 (not (matchR!5059 (regex!5731 (rule!8513 lt!1260472)) lt!1260482))))

(declare-fun lt!1260483 () Unit!55207)

(assert (=> b!3640514 (= lt!1260483 lt!1260485)))

(assert (=> b!3640514 false))

(declare-fun b!3640513 () Bool)

(assert (=> b!3640513 (= e!2253602 (= (rule!8513 lt!1260472) (get!12567 (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 lt!1260472))))))))

(assert (= (and d!1070363 res!1475564) b!3640512))

(assert (= (and b!3640512 res!1475565) b!3640513))

(assert (= (and d!1070363 c!629461) b!3640514))

(assert (= (and d!1070363 (not c!629461)) b!3640515))

(declare-fun m!4143531 () Bool)

(assert (=> b!3640512 m!4143531))

(declare-fun m!4143533 () Bool)

(assert (=> b!3640512 m!4143533))

(declare-fun m!4143535 () Bool)

(assert (=> b!3640512 m!4143535))

(declare-fun m!4143537 () Bool)

(assert (=> b!3640512 m!4143537))

(assert (=> b!3640512 m!4143531))

(declare-fun m!4143539 () Bool)

(assert (=> b!3640512 m!4143539))

(assert (=> b!3640512 m!4143535))

(assert (=> b!3640512 m!4143539))

(declare-fun m!4143541 () Bool)

(assert (=> d!1070363 m!4143541))

(declare-fun m!4143543 () Bool)

(assert (=> d!1070363 m!4143543))

(declare-fun m!4143545 () Bool)

(assert (=> d!1070363 m!4143545))

(assert (=> d!1070363 m!4143089))

(declare-fun m!4143547 () Bool)

(assert (=> d!1070363 m!4143547))

(assert (=> d!1070363 m!4143139))

(assert (=> d!1070363 m!4143531))

(declare-fun m!4143549 () Bool)

(assert (=> d!1070363 m!4143549))

(declare-fun m!4143551 () Bool)

(assert (=> d!1070363 m!4143551))

(assert (=> d!1070363 m!4143543))

(declare-fun m!4143553 () Bool)

(assert (=> d!1070363 m!4143553))

(declare-fun m!4143555 () Bool)

(assert (=> d!1070363 m!4143555))

(declare-fun m!4143557 () Bool)

(assert (=> d!1070363 m!4143557))

(assert (=> d!1070363 m!4143203))

(assert (=> d!1070363 m!4143555))

(assert (=> d!1070363 m!4143531))

(assert (=> d!1070363 m!4143539))

(assert (=> d!1070363 m!4143535))

(assert (=> d!1070363 m!4143089))

(assert (=> d!1070363 m!4143203))

(declare-fun m!4143559 () Bool)

(assert (=> d!1070363 m!4143559))

(assert (=> d!1070363 m!4143555))

(declare-fun m!4143561 () Bool)

(assert (=> d!1070363 m!4143561))

(assert (=> d!1070363 m!4143539))

(declare-fun m!4143563 () Bool)

(assert (=> d!1070363 m!4143563))

(assert (=> d!1070363 m!4143545))

(declare-fun m!4143565 () Bool)

(assert (=> d!1070363 m!4143565))

(assert (=> d!1070363 m!4143563))

(declare-fun m!4143567 () Bool)

(assert (=> d!1070363 m!4143567))

(assert (=> d!1070363 m!4143203))

(declare-fun m!4143569 () Bool)

(assert (=> d!1070363 m!4143569))

(declare-fun m!4143571 () Bool)

(assert (=> b!3640514 m!4143571))

(assert (=> b!3640514 m!4143203))

(declare-fun m!4143573 () Bool)

(assert (=> b!3640514 m!4143573))

(declare-fun m!4143575 () Bool)

(assert (=> b!3640514 m!4143575))

(declare-fun m!4143577 () Bool)

(assert (=> b!3640514 m!4143577))

(assert (=> b!3640514 m!4143575))

(assert (=> b!3640514 m!4143203))

(assert (=> b!3640514 m!4143539))

(assert (=> b!3640514 m!4143535))

(assert (=> b!3640514 m!4143539))

(declare-fun m!4143579 () Bool)

(assert (=> b!3640514 m!4143579))

(assert (=> b!3640513 m!4143531))

(assert (=> b!3640513 m!4143531))

(assert (=> b!3640513 m!4143533))

(assert (=> b!3640204 d!1070363))

(declare-fun b!3640518 () Bool)

(declare-fun e!2253604 () Bool)

(assert (=> b!3640518 (= e!2253604 (isPrefix!3094 (tail!5638 lt!1260282) (tail!5638 lt!1260280)))))

(declare-fun d!1070375 () Bool)

(declare-fun e!2253606 () Bool)

(assert (=> d!1070375 e!2253606))

(declare-fun res!1475566 () Bool)

(assert (=> d!1070375 (=> res!1475566 e!2253606)))

(declare-fun lt!1260488 () Bool)

(assert (=> d!1070375 (= res!1475566 (not lt!1260488))))

(declare-fun e!2253605 () Bool)

(assert (=> d!1070375 (= lt!1260488 e!2253605)))

(declare-fun res!1475569 () Bool)

(assert (=> d!1070375 (=> res!1475569 e!2253605)))

(assert (=> d!1070375 (= res!1475569 (is-Nil!38365 lt!1260282))))

(assert (=> d!1070375 (= (isPrefix!3094 lt!1260282 lt!1260280) lt!1260488)))

(declare-fun b!3640517 () Bool)

(declare-fun res!1475568 () Bool)

(assert (=> b!3640517 (=> (not res!1475568) (not e!2253604))))

(assert (=> b!3640517 (= res!1475568 (= (head!7729 lt!1260282) (head!7729 lt!1260280)))))

(declare-fun b!3640516 () Bool)

(assert (=> b!3640516 (= e!2253605 e!2253604)))

(declare-fun res!1475567 () Bool)

(assert (=> b!3640516 (=> (not res!1475567) (not e!2253604))))

(assert (=> b!3640516 (= res!1475567 (not (is-Nil!38365 lt!1260280)))))

(declare-fun b!3640519 () Bool)

(assert (=> b!3640519 (= e!2253606 (>= (size!29281 lt!1260280) (size!29281 lt!1260282)))))

(assert (= (and d!1070375 (not res!1475569)) b!3640516))

(assert (= (and b!3640516 res!1475567) b!3640517))

(assert (= (and b!3640517 res!1475568) b!3640518))

(assert (= (and d!1070375 (not res!1475566)) b!3640519))

(declare-fun m!4143581 () Bool)

(assert (=> b!3640518 m!4143581))

(assert (=> b!3640518 m!4143439))

(assert (=> b!3640518 m!4143581))

(assert (=> b!3640518 m!4143439))

(declare-fun m!4143583 () Bool)

(assert (=> b!3640518 m!4143583))

(declare-fun m!4143585 () Bool)

(assert (=> b!3640517 m!4143585))

(assert (=> b!3640517 m!4143443))

(assert (=> b!3640519 m!4143445))

(assert (=> b!3640519 m!4143393))

(assert (=> b!3640204 d!1070375))

(declare-fun d!1070377 () Bool)

(assert (=> d!1070377 (= (list!14201 lt!1260265) (list!14203 (c!629421 lt!1260265)))))

(declare-fun bs!571929 () Bool)

(assert (= bs!571929 d!1070377))

(declare-fun m!4143587 () Bool)

(assert (=> bs!571929 m!4143587))

(assert (=> b!3640204 d!1070377))

(declare-fun bm!263142 () Bool)

(declare-fun call!263147 () Option!8090)

(assert (=> bm!263142 (= call!263147 (maxPrefixOneRule!1992 thiss!23823 (h!43786 rules!3307) lt!1260280))))

(declare-fun d!1070379 () Bool)

(declare-fun e!2253608 () Bool)

(assert (=> d!1070379 e!2253608))

(declare-fun res!1475575 () Bool)

(assert (=> d!1070379 (=> res!1475575 e!2253608)))

(declare-fun lt!1260489 () Option!8090)

(assert (=> d!1070379 (= res!1475575 (isEmpty!22718 lt!1260489))))

(declare-fun e!2253607 () Option!8090)

(assert (=> d!1070379 (= lt!1260489 e!2253607)))

(declare-fun c!629462 () Bool)

(assert (=> d!1070379 (= c!629462 (and (is-Cons!38366 rules!3307) (is-Nil!38366 (t!296393 rules!3307))))))

(declare-fun lt!1260490 () Unit!55207)

(declare-fun lt!1260493 () Unit!55207)

(assert (=> d!1070379 (= lt!1260490 lt!1260493)))

(assert (=> d!1070379 (isPrefix!3094 lt!1260280 lt!1260280)))

(assert (=> d!1070379 (= lt!1260493 (lemmaIsPrefixRefl!1961 lt!1260280 lt!1260280))))

(assert (=> d!1070379 (rulesValidInductive!2026 thiss!23823 rules!3307)))

(assert (=> d!1070379 (= (maxPrefix!2854 thiss!23823 rules!3307 lt!1260280) lt!1260489)))

(declare-fun b!3640520 () Bool)

(declare-fun e!2253609 () Bool)

(assert (=> b!3640520 (= e!2253609 (contains!7528 rules!3307 (rule!8513 (_1!22251 (get!12566 lt!1260489)))))))

(declare-fun b!3640521 () Bool)

(declare-fun res!1475573 () Bool)

(assert (=> b!3640521 (=> (not res!1475573) (not e!2253609))))

(assert (=> b!3640521 (= res!1475573 (< (size!29281 (_2!22251 (get!12566 lt!1260489))) (size!29281 lt!1260280)))))

(declare-fun b!3640522 () Bool)

(declare-fun res!1475576 () Bool)

(assert (=> b!3640522 (=> (not res!1475576) (not e!2253609))))

(assert (=> b!3640522 (= res!1475576 (= (value!183795 (_1!22251 (get!12566 lt!1260489))) (apply!9233 (transformation!5731 (rule!8513 (_1!22251 (get!12566 lt!1260489)))) (seqFromList!4280 (originalCharacters!6445 (_1!22251 (get!12566 lt!1260489)))))))))

(declare-fun b!3640523 () Bool)

(assert (=> b!3640523 (= e!2253608 e!2253609)))

(declare-fun res!1475572 () Bool)

(assert (=> b!3640523 (=> (not res!1475572) (not e!2253609))))

(assert (=> b!3640523 (= res!1475572 (isDefined!6322 lt!1260489))))

(declare-fun b!3640524 () Bool)

(declare-fun res!1475574 () Bool)

(assert (=> b!3640524 (=> (not res!1475574) (not e!2253609))))

(assert (=> b!3640524 (= res!1475574 (matchR!5059 (regex!5731 (rule!8513 (_1!22251 (get!12566 lt!1260489)))) (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260489))))))))

(declare-fun b!3640525 () Bool)

(declare-fun res!1475570 () Bool)

(assert (=> b!3640525 (=> (not res!1475570) (not e!2253609))))

(assert (=> b!3640525 (= res!1475570 (= (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260489)))) (originalCharacters!6445 (_1!22251 (get!12566 lt!1260489)))))))

(declare-fun b!3640526 () Bool)

(declare-fun lt!1260492 () Option!8090)

(declare-fun lt!1260491 () Option!8090)

(assert (=> b!3640526 (= e!2253607 (ite (and (is-None!8089 lt!1260492) (is-None!8089 lt!1260491)) None!8089 (ite (is-None!8089 lt!1260491) lt!1260492 (ite (is-None!8089 lt!1260492) lt!1260491 (ite (>= (size!29280 (_1!22251 (v!37917 lt!1260492))) (size!29280 (_1!22251 (v!37917 lt!1260491)))) lt!1260492 lt!1260491)))))))

(assert (=> b!3640526 (= lt!1260492 call!263147)))

(assert (=> b!3640526 (= lt!1260491 (maxPrefix!2854 thiss!23823 (t!296393 rules!3307) lt!1260280))))

(declare-fun b!3640527 () Bool)

(assert (=> b!3640527 (= e!2253607 call!263147)))

(declare-fun b!3640528 () Bool)

(declare-fun res!1475571 () Bool)

(assert (=> b!3640528 (=> (not res!1475571) (not e!2253609))))

(assert (=> b!3640528 (= res!1475571 (= (++!9547 (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260489)))) (_2!22251 (get!12566 lt!1260489))) lt!1260280))))

(assert (= (and d!1070379 c!629462) b!3640527))

(assert (= (and d!1070379 (not c!629462)) b!3640526))

(assert (= (or b!3640527 b!3640526) bm!263142))

(assert (= (and d!1070379 (not res!1475575)) b!3640523))

(assert (= (and b!3640523 res!1475572) b!3640525))

(assert (= (and b!3640525 res!1475570) b!3640521))

(assert (= (and b!3640521 res!1475573) b!3640528))

(assert (= (and b!3640528 res!1475571) b!3640522))

(assert (= (and b!3640522 res!1475576) b!3640524))

(assert (= (and b!3640524 res!1475574) b!3640520))

(declare-fun m!4143589 () Bool)

(assert (=> b!3640521 m!4143589))

(declare-fun m!4143591 () Bool)

(assert (=> b!3640521 m!4143591))

(assert (=> b!3640521 m!4143445))

(assert (=> b!3640528 m!4143589))

(declare-fun m!4143593 () Bool)

(assert (=> b!3640528 m!4143593))

(assert (=> b!3640528 m!4143593))

(declare-fun m!4143595 () Bool)

(assert (=> b!3640528 m!4143595))

(assert (=> b!3640528 m!4143595))

(declare-fun m!4143597 () Bool)

(assert (=> b!3640528 m!4143597))

(assert (=> b!3640525 m!4143589))

(assert (=> b!3640525 m!4143593))

(assert (=> b!3640525 m!4143593))

(assert (=> b!3640525 m!4143595))

(declare-fun m!4143599 () Bool)

(assert (=> b!3640523 m!4143599))

(declare-fun m!4143601 () Bool)

(assert (=> bm!263142 m!4143601))

(assert (=> b!3640524 m!4143589))

(assert (=> b!3640524 m!4143593))

(assert (=> b!3640524 m!4143593))

(assert (=> b!3640524 m!4143595))

(assert (=> b!3640524 m!4143595))

(declare-fun m!4143603 () Bool)

(assert (=> b!3640524 m!4143603))

(declare-fun m!4143605 () Bool)

(assert (=> b!3640526 m!4143605))

(assert (=> b!3640522 m!4143589))

(declare-fun m!4143607 () Bool)

(assert (=> b!3640522 m!4143607))

(assert (=> b!3640522 m!4143607))

(declare-fun m!4143609 () Bool)

(assert (=> b!3640522 m!4143609))

(declare-fun m!4143611 () Bool)

(assert (=> d!1070379 m!4143611))

(declare-fun m!4143613 () Bool)

(assert (=> d!1070379 m!4143613))

(declare-fun m!4143615 () Bool)

(assert (=> d!1070379 m!4143615))

(assert (=> d!1070379 m!4143419))

(assert (=> b!3640520 m!4143589))

(declare-fun m!4143617 () Bool)

(assert (=> b!3640520 m!4143617))

(assert (=> b!3640204 d!1070379))

(declare-fun d!1070381 () Bool)

(declare-fun e!2253612 () Bool)

(assert (=> d!1070381 e!2253612))

(declare-fun res!1475581 () Bool)

(assert (=> d!1070381 (=> (not res!1475581) (not e!2253612))))

(assert (=> d!1070381 (= res!1475581 (isDefined!6323 (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 (_1!22251 lt!1260277))))))))

(declare-fun lt!1260496 () Unit!55207)

(declare-fun choose!21400 (LexerInterface!5320 List!38490 List!38489 Token!10828) Unit!55207)

(assert (=> d!1070381 (= lt!1260496 (choose!21400 thiss!23823 rules!3307 lt!1260280 (_1!22251 lt!1260277)))))

(assert (=> d!1070381 (rulesInvariant!4717 thiss!23823 rules!3307)))

(assert (=> d!1070381 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1335 thiss!23823 rules!3307 lt!1260280 (_1!22251 lt!1260277)) lt!1260496)))

(declare-fun b!3640533 () Bool)

(declare-fun res!1475582 () Bool)

(assert (=> b!3640533 (=> (not res!1475582) (not e!2253612))))

(assert (=> b!3640533 (= res!1475582 (matchR!5059 (regex!5731 (get!12567 (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 (_1!22251 lt!1260277)))))) (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))))))

(declare-fun b!3640534 () Bool)

(assert (=> b!3640534 (= e!2253612 (= (rule!8513 (_1!22251 lt!1260277)) (get!12567 (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 (_1!22251 lt!1260277)))))))))

(assert (= (and d!1070381 res!1475581) b!3640533))

(assert (= (and b!3640533 res!1475582) b!3640534))

(assert (=> d!1070381 m!4143193))

(assert (=> d!1070381 m!4143193))

(declare-fun m!4143619 () Bool)

(assert (=> d!1070381 m!4143619))

(declare-fun m!4143621 () Bool)

(assert (=> d!1070381 m!4143621))

(assert (=> d!1070381 m!4143109))

(assert (=> b!3640533 m!4143187))

(declare-fun m!4143623 () Bool)

(assert (=> b!3640533 m!4143623))

(assert (=> b!3640533 m!4143193))

(assert (=> b!3640533 m!4143185))

(assert (=> b!3640533 m!4143185))

(assert (=> b!3640533 m!4143187))

(assert (=> b!3640533 m!4143193))

(declare-fun m!4143625 () Bool)

(assert (=> b!3640533 m!4143625))

(assert (=> b!3640534 m!4143193))

(assert (=> b!3640534 m!4143193))

(assert (=> b!3640534 m!4143625))

(assert (=> b!3640204 d!1070381))

(declare-fun d!1070383 () Bool)

(assert (=> d!1070383 (isPrefix!3094 lt!1260267 (++!9547 lt!1260267 (_2!22251 lt!1260277)))))

(declare-fun lt!1260497 () Unit!55207)

(assert (=> d!1070383 (= lt!1260497 (choose!21399 lt!1260267 (_2!22251 lt!1260277)))))

(assert (=> d!1070383 (= (lemmaConcatTwoListThenFirstIsPrefix!2013 lt!1260267 (_2!22251 lt!1260277)) lt!1260497)))

(declare-fun bs!571930 () Bool)

(assert (= bs!571930 d!1070383))

(assert (=> bs!571930 m!4143207))

(assert (=> bs!571930 m!4143207))

(assert (=> bs!571930 m!4143215))

(declare-fun m!4143627 () Bool)

(assert (=> bs!571930 m!4143627))

(assert (=> b!3640204 d!1070383))

(declare-fun b!3640547 () Bool)

(declare-fun e!2253623 () Option!8091)

(assert (=> b!3640547 (= e!2253623 (Some!8090 (h!43786 rules!3307)))))

(declare-fun b!3640548 () Bool)

(declare-fun e!2253621 () Bool)

(declare-fun e!2253622 () Bool)

(assert (=> b!3640548 (= e!2253621 e!2253622)))

(declare-fun res!1475588 () Bool)

(assert (=> b!3640548 (=> (not res!1475588) (not e!2253622))))

(declare-fun lt!1260504 () Option!8091)

(assert (=> b!3640548 (= res!1475588 (contains!7528 rules!3307 (get!12567 lt!1260504)))))

(declare-fun b!3640549 () Bool)

(declare-fun lt!1260506 () Unit!55207)

(declare-fun lt!1260505 () Unit!55207)

(assert (=> b!3640549 (= lt!1260506 lt!1260505)))

(assert (=> b!3640549 (rulesInvariant!4717 thiss!23823 (t!296393 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!570 (LexerInterface!5320 Rule!11262 List!38490) Unit!55207)

(assert (=> b!3640549 (= lt!1260505 (lemmaInvariantOnRulesThenOnTail!570 thiss!23823 (h!43786 rules!3307) (t!296393 rules!3307)))))

(declare-fun e!2253624 () Option!8091)

(assert (=> b!3640549 (= e!2253624 (getRuleFromTag!1335 thiss!23823 (t!296393 rules!3307) (tag!6479 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun b!3640550 () Bool)

(assert (=> b!3640550 (= e!2253622 (= (tag!6479 (get!12567 lt!1260504)) (tag!6479 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun b!3640551 () Bool)

(assert (=> b!3640551 (= e!2253623 e!2253624)))

(declare-fun c!629467 () Bool)

(assert (=> b!3640551 (= c!629467 (and (is-Cons!38366 rules!3307) (not (= (tag!6479 (h!43786 rules!3307)) (tag!6479 (rule!8513 (_1!22251 lt!1260277)))))))))

(declare-fun b!3640552 () Bool)

(assert (=> b!3640552 (= e!2253624 None!8090)))

(declare-fun d!1070385 () Bool)

(assert (=> d!1070385 e!2253621))

(declare-fun res!1475587 () Bool)

(assert (=> d!1070385 (=> res!1475587 e!2253621)))

(assert (=> d!1070385 (= res!1475587 (isEmpty!22719 lt!1260504))))

(assert (=> d!1070385 (= lt!1260504 e!2253623)))

(declare-fun c!629468 () Bool)

(assert (=> d!1070385 (= c!629468 (and (is-Cons!38366 rules!3307) (= (tag!6479 (h!43786 rules!3307)) (tag!6479 (rule!8513 (_1!22251 lt!1260277))))))))

(assert (=> d!1070385 (rulesInvariant!4717 thiss!23823 rules!3307)))

(assert (=> d!1070385 (= (getRuleFromTag!1335 thiss!23823 rules!3307 (tag!6479 (rule!8513 (_1!22251 lt!1260277)))) lt!1260504)))

(assert (= (and d!1070385 c!629468) b!3640547))

(assert (= (and d!1070385 (not c!629468)) b!3640551))

(assert (= (and b!3640551 c!629467) b!3640549))

(assert (= (and b!3640551 (not c!629467)) b!3640552))

(assert (= (and d!1070385 (not res!1475587)) b!3640548))

(assert (= (and b!3640548 res!1475588) b!3640550))

(declare-fun m!4143629 () Bool)

(assert (=> b!3640548 m!4143629))

(assert (=> b!3640548 m!4143629))

(declare-fun m!4143631 () Bool)

(assert (=> b!3640548 m!4143631))

(declare-fun m!4143633 () Bool)

(assert (=> b!3640549 m!4143633))

(declare-fun m!4143635 () Bool)

(assert (=> b!3640549 m!4143635))

(declare-fun m!4143637 () Bool)

(assert (=> b!3640549 m!4143637))

(assert (=> b!3640550 m!4143629))

(declare-fun m!4143639 () Bool)

(assert (=> d!1070385 m!4143639))

(assert (=> d!1070385 m!4143109))

(assert (=> b!3640204 d!1070385))

(declare-fun d!1070387 () Bool)

(declare-fun lt!1260507 () Bool)

(assert (=> d!1070387 (= lt!1260507 (set.member lt!1260276 (content!5520 lt!1260266)))))

(declare-fun e!2253625 () Bool)

(assert (=> d!1070387 (= lt!1260507 e!2253625)))

(declare-fun res!1475589 () Bool)

(assert (=> d!1070387 (=> (not res!1475589) (not e!2253625))))

(assert (=> d!1070387 (= res!1475589 (is-Cons!38365 lt!1260266))))

(assert (=> d!1070387 (= (contains!7527 lt!1260266 lt!1260276) lt!1260507)))

(declare-fun b!3640553 () Bool)

(declare-fun e!2253626 () Bool)

(assert (=> b!3640553 (= e!2253625 e!2253626)))

(declare-fun res!1475590 () Bool)

(assert (=> b!3640553 (=> res!1475590 e!2253626)))

(assert (=> b!3640553 (= res!1475590 (= (h!43785 lt!1260266) lt!1260276))))

(declare-fun b!3640554 () Bool)

(assert (=> b!3640554 (= e!2253626 (contains!7527 (t!296392 lt!1260266) lt!1260276))))

(assert (= (and d!1070387 res!1475589) b!3640553))

(assert (= (and b!3640553 (not res!1475590)) b!3640554))

(declare-fun m!4143641 () Bool)

(assert (=> d!1070387 m!4143641))

(declare-fun m!4143643 () Bool)

(assert (=> d!1070387 m!4143643))

(declare-fun m!4143645 () Bool)

(assert (=> b!3640554 m!4143645))

(assert (=> b!3640210 d!1070387))

(declare-fun d!1070389 () Bool)

(assert (=> d!1070389 (= (head!7729 lt!1260267) (h!43785 lt!1260267))))

(assert (=> b!3640210 d!1070389))

(declare-fun b!3640583 () Bool)

(declare-fun res!1475609 () Bool)

(declare-fun e!2253647 () Bool)

(assert (=> b!3640583 (=> res!1475609 e!2253647)))

(assert (=> b!3640583 (= res!1475609 (not (is-ElementMatch!10490 (regex!5731 lt!1260274))))))

(declare-fun e!2253642 () Bool)

(assert (=> b!3640583 (= e!2253642 e!2253647)))

(declare-fun b!3640584 () Bool)

(declare-fun res!1475612 () Bool)

(assert (=> b!3640584 (=> res!1475612 e!2253647)))

(declare-fun e!2253644 () Bool)

(assert (=> b!3640584 (= res!1475612 e!2253644)))

(declare-fun res!1475607 () Bool)

(assert (=> b!3640584 (=> (not res!1475607) (not e!2253644))))

(declare-fun lt!1260510 () Bool)

(assert (=> b!3640584 (= res!1475607 lt!1260510)))

(declare-fun b!3640585 () Bool)

(assert (=> b!3640585 (= e!2253644 (= (head!7729 (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))) (c!629420 (regex!5731 lt!1260274))))))

(declare-fun b!3640586 () Bool)

(assert (=> b!3640586 (= e!2253642 (not lt!1260510))))

(declare-fun b!3640587 () Bool)

(declare-fun res!1475611 () Bool)

(declare-fun e!2253641 () Bool)

(assert (=> b!3640587 (=> res!1475611 e!2253641)))

(assert (=> b!3640587 (= res!1475611 (not (isEmpty!22715 (tail!5638 (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))))))))

(declare-fun b!3640589 () Bool)

(declare-fun e!2253645 () Bool)

(assert (=> b!3640589 (= e!2253645 e!2253641)))

(declare-fun res!1475613 () Bool)

(assert (=> b!3640589 (=> res!1475613 e!2253641)))

(declare-fun call!263150 () Bool)

(assert (=> b!3640589 (= res!1475613 call!263150)))

(declare-fun b!3640590 () Bool)

(declare-fun e!2253646 () Bool)

(assert (=> b!3640590 (= e!2253646 (= lt!1260510 call!263150))))

(declare-fun b!3640591 () Bool)

(declare-fun e!2253643 () Bool)

(declare-fun nullable!3641 (Regex!10490) Bool)

(assert (=> b!3640591 (= e!2253643 (nullable!3641 (regex!5731 lt!1260274)))))

(declare-fun b!3640592 () Bool)

(assert (=> b!3640592 (= e!2253641 (not (= (head!7729 (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))) (c!629420 (regex!5731 lt!1260274)))))))

(declare-fun b!3640593 () Bool)

(declare-fun res!1475614 () Bool)

(assert (=> b!3640593 (=> (not res!1475614) (not e!2253644))))

(assert (=> b!3640593 (= res!1475614 (isEmpty!22715 (tail!5638 (list!14201 (charsOf!3745 (_1!22251 lt!1260277))))))))

(declare-fun b!3640594 () Bool)

(declare-fun derivativeStep!3190 (Regex!10490 C!21166) Regex!10490)

(assert (=> b!3640594 (= e!2253643 (matchR!5059 (derivativeStep!3190 (regex!5731 lt!1260274) (head!7729 (list!14201 (charsOf!3745 (_1!22251 lt!1260277))))) (tail!5638 (list!14201 (charsOf!3745 (_1!22251 lt!1260277))))))))

(declare-fun b!3640588 () Bool)

(assert (=> b!3640588 (= e!2253646 e!2253642)))

(declare-fun c!629476 () Bool)

(assert (=> b!3640588 (= c!629476 (is-EmptyLang!10490 (regex!5731 lt!1260274)))))

(declare-fun d!1070391 () Bool)

(assert (=> d!1070391 e!2253646))

(declare-fun c!629477 () Bool)

(assert (=> d!1070391 (= c!629477 (is-EmptyExpr!10490 (regex!5731 lt!1260274)))))

(assert (=> d!1070391 (= lt!1260510 e!2253643)))

(declare-fun c!629475 () Bool)

(assert (=> d!1070391 (= c!629475 (isEmpty!22715 (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))))))

(assert (=> d!1070391 (validRegex!4802 (regex!5731 lt!1260274))))

(assert (=> d!1070391 (= (matchR!5059 (regex!5731 lt!1260274) (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))) lt!1260510)))

(declare-fun b!3640595 () Bool)

(declare-fun res!1475610 () Bool)

(assert (=> b!3640595 (=> (not res!1475610) (not e!2253644))))

(assert (=> b!3640595 (= res!1475610 (not call!263150))))

(declare-fun bm!263145 () Bool)

(assert (=> bm!263145 (= call!263150 (isEmpty!22715 (list!14201 (charsOf!3745 (_1!22251 lt!1260277)))))))

(declare-fun b!3640596 () Bool)

(assert (=> b!3640596 (= e!2253647 e!2253645)))

(declare-fun res!1475608 () Bool)

(assert (=> b!3640596 (=> (not res!1475608) (not e!2253645))))

(assert (=> b!3640596 (= res!1475608 (not lt!1260510))))

(assert (= (and d!1070391 c!629475) b!3640591))

(assert (= (and d!1070391 (not c!629475)) b!3640594))

(assert (= (and d!1070391 c!629477) b!3640590))

(assert (= (and d!1070391 (not c!629477)) b!3640588))

(assert (= (and b!3640588 c!629476) b!3640586))

(assert (= (and b!3640588 (not c!629476)) b!3640583))

(assert (= (and b!3640583 (not res!1475609)) b!3640584))

(assert (= (and b!3640584 res!1475607) b!3640595))

(assert (= (and b!3640595 res!1475610) b!3640593))

(assert (= (and b!3640593 res!1475614) b!3640585))

(assert (= (and b!3640584 (not res!1475612)) b!3640596))

(assert (= (and b!3640596 res!1475608) b!3640589))

(assert (= (and b!3640589 (not res!1475613)) b!3640587))

(assert (= (and b!3640587 (not res!1475611)) b!3640592))

(assert (= (or b!3640590 b!3640589 b!3640595) bm!263145))

(assert (=> bm!263145 m!4143187))

(declare-fun m!4143647 () Bool)

(assert (=> bm!263145 m!4143647))

(assert (=> b!3640594 m!4143187))

(declare-fun m!4143649 () Bool)

(assert (=> b!3640594 m!4143649))

(assert (=> b!3640594 m!4143649))

(declare-fun m!4143651 () Bool)

(assert (=> b!3640594 m!4143651))

(assert (=> b!3640594 m!4143187))

(declare-fun m!4143653 () Bool)

(assert (=> b!3640594 m!4143653))

(assert (=> b!3640594 m!4143651))

(assert (=> b!3640594 m!4143653))

(declare-fun m!4143655 () Bool)

(assert (=> b!3640594 m!4143655))

(assert (=> b!3640592 m!4143187))

(assert (=> b!3640592 m!4143649))

(assert (=> b!3640585 m!4143187))

(assert (=> b!3640585 m!4143649))

(declare-fun m!4143657 () Bool)

(assert (=> b!3640591 m!4143657))

(assert (=> b!3640593 m!4143187))

(assert (=> b!3640593 m!4143653))

(assert (=> b!3640593 m!4143653))

(declare-fun m!4143659 () Bool)

(assert (=> b!3640593 m!4143659))

(assert (=> d!1070391 m!4143187))

(assert (=> d!1070391 m!4143647))

(declare-fun m!4143661 () Bool)

(assert (=> d!1070391 m!4143661))

(assert (=> b!3640587 m!4143187))

(assert (=> b!3640587 m!4143653))

(assert (=> b!3640587 m!4143653))

(assert (=> b!3640587 m!4143659))

(assert (=> b!3640189 d!1070391))

(declare-fun d!1070393 () Bool)

(assert (=> d!1070393 (= (list!14201 (charsOf!3745 (_1!22251 lt!1260277))) (list!14203 (c!629421 (charsOf!3745 (_1!22251 lt!1260277)))))))

(declare-fun bs!571931 () Bool)

(assert (= bs!571931 d!1070393))

(declare-fun m!4143663 () Bool)

(assert (=> bs!571931 m!4143663))

(assert (=> b!3640189 d!1070393))

(assert (=> b!3640189 d!1070351))

(declare-fun d!1070395 () Bool)

(assert (=> d!1070395 (= (get!12567 lt!1260284) (v!37918 lt!1260284))))

(assert (=> b!3640189 d!1070395))

(declare-fun d!1070397 () Bool)

(declare-fun res!1475619 () Bool)

(declare-fun e!2253650 () Bool)

(assert (=> d!1070397 (=> (not res!1475619) (not e!2253650))))

(assert (=> d!1070397 (= res!1475619 (not (isEmpty!22715 (originalCharacters!6445 token!511))))))

(assert (=> d!1070397 (= (inv!51801 token!511) e!2253650)))

(declare-fun b!3640601 () Bool)

(declare-fun res!1475620 () Bool)

(assert (=> b!3640601 (=> (not res!1475620) (not e!2253650))))

(assert (=> b!3640601 (= res!1475620 (= (originalCharacters!6445 token!511) (list!14201 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 token!511))) (value!183795 token!511)))))))

(declare-fun b!3640602 () Bool)

(assert (=> b!3640602 (= e!2253650 (= (size!29280 token!511) (size!29281 (originalCharacters!6445 token!511))))))

(assert (= (and d!1070397 res!1475619) b!3640601))

(assert (= (and b!3640601 res!1475620) b!3640602))

(declare-fun b_lambda!107905 () Bool)

(assert (=> (not b_lambda!107905) (not b!3640601)))

(assert (=> b!3640601 t!296398))

(declare-fun b_and!268299 () Bool)

(assert (= b_and!268283 (and (=> t!296398 result!255362) b_and!268299)))

(assert (=> b!3640601 t!296400))

(declare-fun b_and!268301 () Bool)

(assert (= b_and!268285 (and (=> t!296400 result!255366) b_and!268301)))

(assert (=> b!3640601 t!296402))

(declare-fun b_and!268303 () Bool)

(assert (= b_and!268287 (and (=> t!296402 result!255368) b_and!268303)))

(assert (=> b!3640601 t!296404))

(declare-fun b_and!268305 () Bool)

(assert (= b_and!268289 (and (=> t!296404 result!255370) b_and!268305)))

(declare-fun m!4143665 () Bool)

(assert (=> d!1070397 m!4143665))

(assert (=> b!3640601 m!4143431))

(assert (=> b!3640601 m!4143431))

(declare-fun m!4143667 () Bool)

(assert (=> b!3640601 m!4143667))

(declare-fun m!4143669 () Bool)

(assert (=> b!3640602 m!4143669))

(assert (=> start!339924 d!1070397))

(declare-fun d!1070399 () Bool)

(assert (=> d!1070399 (= (isEmpty!22714 rules!3307) (is-Nil!38366 rules!3307))))

(assert (=> b!3640190 d!1070399))

(declare-fun b!3640603 () Bool)

(declare-fun res!1475623 () Bool)

(declare-fun e!2253657 () Bool)

(assert (=> b!3640603 (=> res!1475623 e!2253657)))

(assert (=> b!3640603 (= res!1475623 (not (is-ElementMatch!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))))

(declare-fun e!2253652 () Bool)

(assert (=> b!3640603 (= e!2253652 e!2253657)))

(declare-fun b!3640604 () Bool)

(declare-fun res!1475626 () Bool)

(assert (=> b!3640604 (=> res!1475626 e!2253657)))

(declare-fun e!2253654 () Bool)

(assert (=> b!3640604 (= res!1475626 e!2253654)))

(declare-fun res!1475621 () Bool)

(assert (=> b!3640604 (=> (not res!1475621) (not e!2253654))))

(declare-fun lt!1260511 () Bool)

(assert (=> b!3640604 (= res!1475621 lt!1260511)))

(declare-fun b!3640605 () Bool)

(assert (=> b!3640605 (= e!2253654 (= (head!7729 lt!1260267) (c!629420 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))))

(declare-fun b!3640606 () Bool)

(assert (=> b!3640606 (= e!2253652 (not lt!1260511))))

(declare-fun b!3640607 () Bool)

(declare-fun res!1475625 () Bool)

(declare-fun e!2253651 () Bool)

(assert (=> b!3640607 (=> res!1475625 e!2253651)))

(assert (=> b!3640607 (= res!1475625 (not (isEmpty!22715 (tail!5638 lt!1260267))))))

(declare-fun b!3640609 () Bool)

(declare-fun e!2253655 () Bool)

(assert (=> b!3640609 (= e!2253655 e!2253651)))

(declare-fun res!1475627 () Bool)

(assert (=> b!3640609 (=> res!1475627 e!2253651)))

(declare-fun call!263151 () Bool)

(assert (=> b!3640609 (= res!1475627 call!263151)))

(declare-fun b!3640610 () Bool)

(declare-fun e!2253656 () Bool)

(assert (=> b!3640610 (= e!2253656 (= lt!1260511 call!263151))))

(declare-fun b!3640611 () Bool)

(declare-fun e!2253653 () Bool)

(assert (=> b!3640611 (= e!2253653 (nullable!3641 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun b!3640612 () Bool)

(assert (=> b!3640612 (= e!2253651 (not (= (head!7729 lt!1260267) (c!629420 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))))

(declare-fun b!3640613 () Bool)

(declare-fun res!1475628 () Bool)

(assert (=> b!3640613 (=> (not res!1475628) (not e!2253654))))

(assert (=> b!3640613 (= res!1475628 (isEmpty!22715 (tail!5638 lt!1260267)))))

(declare-fun b!3640614 () Bool)

(assert (=> b!3640614 (= e!2253653 (matchR!5059 (derivativeStep!3190 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) (head!7729 lt!1260267)) (tail!5638 lt!1260267)))))

(declare-fun b!3640608 () Bool)

(assert (=> b!3640608 (= e!2253656 e!2253652)))

(declare-fun c!629479 () Bool)

(assert (=> b!3640608 (= c!629479 (is-EmptyLang!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun d!1070401 () Bool)

(assert (=> d!1070401 e!2253656))

(declare-fun c!629480 () Bool)

(assert (=> d!1070401 (= c!629480 (is-EmptyExpr!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(assert (=> d!1070401 (= lt!1260511 e!2253653)))

(declare-fun c!629478 () Bool)

(assert (=> d!1070401 (= c!629478 (isEmpty!22715 lt!1260267))))

(assert (=> d!1070401 (validRegex!4802 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))

(assert (=> d!1070401 (= (matchR!5059 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260267) lt!1260511)))

(declare-fun b!3640615 () Bool)

(declare-fun res!1475624 () Bool)

(assert (=> b!3640615 (=> (not res!1475624) (not e!2253654))))

(assert (=> b!3640615 (= res!1475624 (not call!263151))))

(declare-fun bm!263146 () Bool)

(assert (=> bm!263146 (= call!263151 (isEmpty!22715 lt!1260267))))

(declare-fun b!3640616 () Bool)

(assert (=> b!3640616 (= e!2253657 e!2253655)))

(declare-fun res!1475622 () Bool)

(assert (=> b!3640616 (=> (not res!1475622) (not e!2253655))))

(assert (=> b!3640616 (= res!1475622 (not lt!1260511))))

(assert (= (and d!1070401 c!629478) b!3640611))

(assert (= (and d!1070401 (not c!629478)) b!3640614))

(assert (= (and d!1070401 c!629480) b!3640610))

(assert (= (and d!1070401 (not c!629480)) b!3640608))

(assert (= (and b!3640608 c!629479) b!3640606))

(assert (= (and b!3640608 (not c!629479)) b!3640603))

(assert (= (and b!3640603 (not res!1475623)) b!3640604))

(assert (= (and b!3640604 res!1475621) b!3640615))

(assert (= (and b!3640615 res!1475624) b!3640613))

(assert (= (and b!3640613 res!1475628) b!3640605))

(assert (= (and b!3640604 (not res!1475626)) b!3640616))

(assert (= (and b!3640616 res!1475622) b!3640609))

(assert (= (and b!3640609 (not res!1475627)) b!3640607))

(assert (= (and b!3640607 (not res!1475625)) b!3640612))

(assert (= (or b!3640610 b!3640609 b!3640615) bm!263146))

(declare-fun m!4143671 () Bool)

(assert (=> bm!263146 m!4143671))

(assert (=> b!3640614 m!4143107))

(assert (=> b!3640614 m!4143107))

(declare-fun m!4143673 () Bool)

(assert (=> b!3640614 m!4143673))

(assert (=> b!3640614 m!4143437))

(assert (=> b!3640614 m!4143673))

(assert (=> b!3640614 m!4143437))

(declare-fun m!4143675 () Bool)

(assert (=> b!3640614 m!4143675))

(assert (=> b!3640612 m!4143107))

(assert (=> b!3640605 m!4143107))

(declare-fun m!4143677 () Bool)

(assert (=> b!3640611 m!4143677))

(assert (=> b!3640613 m!4143437))

(assert (=> b!3640613 m!4143437))

(declare-fun m!4143679 () Bool)

(assert (=> b!3640613 m!4143679))

(assert (=> d!1070401 m!4143671))

(assert (=> d!1070401 m!4143129))

(assert (=> b!3640607 m!4143437))

(assert (=> b!3640607 m!4143437))

(assert (=> b!3640607 m!4143679))

(assert (=> b!3640211 d!1070401))

(declare-fun d!1070403 () Bool)

(assert (=> d!1070403 (= (isEmpty!22715 suffix!1395) (is-Nil!38365 suffix!1395))))

(assert (=> b!3640212 d!1070403))

(declare-fun d!1070405 () Bool)

(assert (=> d!1070405 (= (inv!51797 (tag!6479 rule!403)) (= (mod (str.len (value!183794 (tag!6479 rule!403))) 2) 0))))

(assert (=> b!3640186 d!1070405))

(declare-fun d!1070407 () Bool)

(declare-fun res!1475629 () Bool)

(declare-fun e!2253658 () Bool)

(assert (=> d!1070407 (=> (not res!1475629) (not e!2253658))))

(assert (=> d!1070407 (= res!1475629 (semiInverseModEq!2440 (toChars!7882 (transformation!5731 rule!403)) (toValue!8023 (transformation!5731 rule!403))))))

(assert (=> d!1070407 (= (inv!51800 (transformation!5731 rule!403)) e!2253658)))

(declare-fun b!3640617 () Bool)

(assert (=> b!3640617 (= e!2253658 (equivClasses!2339 (toChars!7882 (transformation!5731 rule!403)) (toValue!8023 (transformation!5731 rule!403))))))

(assert (= (and d!1070407 res!1475629) b!3640617))

(declare-fun m!4143681 () Bool)

(assert (=> d!1070407 m!4143681))

(declare-fun m!4143683 () Bool)

(assert (=> b!3640617 m!4143683))

(assert (=> b!3640186 d!1070407))

(declare-fun b!3640618 () Bool)

(declare-fun res!1475632 () Bool)

(declare-fun e!2253665 () Bool)

(assert (=> b!3640618 (=> res!1475632 e!2253665)))

(assert (=> b!3640618 (= res!1475632 (not (is-ElementMatch!10490 (regex!5731 rule!403))))))

(declare-fun e!2253660 () Bool)

(assert (=> b!3640618 (= e!2253660 e!2253665)))

(declare-fun b!3640619 () Bool)

(declare-fun res!1475635 () Bool)

(assert (=> b!3640619 (=> res!1475635 e!2253665)))

(declare-fun e!2253662 () Bool)

(assert (=> b!3640619 (= res!1475635 e!2253662)))

(declare-fun res!1475630 () Bool)

(assert (=> b!3640619 (=> (not res!1475630) (not e!2253662))))

(declare-fun lt!1260512 () Bool)

(assert (=> b!3640619 (= res!1475630 lt!1260512)))

(declare-fun b!3640620 () Bool)

(assert (=> b!3640620 (= e!2253662 (= (head!7729 lt!1260282) (c!629420 (regex!5731 rule!403))))))

(declare-fun b!3640621 () Bool)

(assert (=> b!3640621 (= e!2253660 (not lt!1260512))))

(declare-fun b!3640622 () Bool)

(declare-fun res!1475634 () Bool)

(declare-fun e!2253659 () Bool)

(assert (=> b!3640622 (=> res!1475634 e!2253659)))

(assert (=> b!3640622 (= res!1475634 (not (isEmpty!22715 (tail!5638 lt!1260282))))))

(declare-fun b!3640624 () Bool)

(declare-fun e!2253663 () Bool)

(assert (=> b!3640624 (= e!2253663 e!2253659)))

(declare-fun res!1475636 () Bool)

(assert (=> b!3640624 (=> res!1475636 e!2253659)))

(declare-fun call!263152 () Bool)

(assert (=> b!3640624 (= res!1475636 call!263152)))

(declare-fun b!3640625 () Bool)

(declare-fun e!2253664 () Bool)

(assert (=> b!3640625 (= e!2253664 (= lt!1260512 call!263152))))

(declare-fun b!3640626 () Bool)

(declare-fun e!2253661 () Bool)

(assert (=> b!3640626 (= e!2253661 (nullable!3641 (regex!5731 rule!403)))))

(declare-fun b!3640627 () Bool)

(assert (=> b!3640627 (= e!2253659 (not (= (head!7729 lt!1260282) (c!629420 (regex!5731 rule!403)))))))

(declare-fun b!3640628 () Bool)

(declare-fun res!1475637 () Bool)

(assert (=> b!3640628 (=> (not res!1475637) (not e!2253662))))

(assert (=> b!3640628 (= res!1475637 (isEmpty!22715 (tail!5638 lt!1260282)))))

(declare-fun b!3640629 () Bool)

(assert (=> b!3640629 (= e!2253661 (matchR!5059 (derivativeStep!3190 (regex!5731 rule!403) (head!7729 lt!1260282)) (tail!5638 lt!1260282)))))

(declare-fun b!3640623 () Bool)

(assert (=> b!3640623 (= e!2253664 e!2253660)))

(declare-fun c!629482 () Bool)

(assert (=> b!3640623 (= c!629482 (is-EmptyLang!10490 (regex!5731 rule!403)))))

(declare-fun d!1070409 () Bool)

(assert (=> d!1070409 e!2253664))

(declare-fun c!629483 () Bool)

(assert (=> d!1070409 (= c!629483 (is-EmptyExpr!10490 (regex!5731 rule!403)))))

(assert (=> d!1070409 (= lt!1260512 e!2253661)))

(declare-fun c!629481 () Bool)

(assert (=> d!1070409 (= c!629481 (isEmpty!22715 lt!1260282))))

(assert (=> d!1070409 (validRegex!4802 (regex!5731 rule!403))))

(assert (=> d!1070409 (= (matchR!5059 (regex!5731 rule!403) lt!1260282) lt!1260512)))

(declare-fun b!3640630 () Bool)

(declare-fun res!1475633 () Bool)

(assert (=> b!3640630 (=> (not res!1475633) (not e!2253662))))

(assert (=> b!3640630 (= res!1475633 (not call!263152))))

(declare-fun bm!263147 () Bool)

(assert (=> bm!263147 (= call!263152 (isEmpty!22715 lt!1260282))))

(declare-fun b!3640631 () Bool)

(assert (=> b!3640631 (= e!2253665 e!2253663)))

(declare-fun res!1475631 () Bool)

(assert (=> b!3640631 (=> (not res!1475631) (not e!2253663))))

(assert (=> b!3640631 (= res!1475631 (not lt!1260512))))

(assert (= (and d!1070409 c!629481) b!3640626))

(assert (= (and d!1070409 (not c!629481)) b!3640629))

(assert (= (and d!1070409 c!629483) b!3640625))

(assert (= (and d!1070409 (not c!629483)) b!3640623))

(assert (= (and b!3640623 c!629482) b!3640621))

(assert (= (and b!3640623 (not c!629482)) b!3640618))

(assert (= (and b!3640618 (not res!1475632)) b!3640619))

(assert (= (and b!3640619 res!1475630) b!3640630))

(assert (= (and b!3640630 res!1475633) b!3640628))

(assert (= (and b!3640628 res!1475637) b!3640620))

(assert (= (and b!3640619 (not res!1475635)) b!3640631))

(assert (= (and b!3640631 res!1475631) b!3640624))

(assert (= (and b!3640624 (not res!1475636)) b!3640622))

(assert (= (and b!3640622 (not res!1475634)) b!3640627))

(assert (= (or b!3640625 b!3640624 b!3640630) bm!263147))

(declare-fun m!4143685 () Bool)

(assert (=> bm!263147 m!4143685))

(assert (=> b!3640629 m!4143585))

(assert (=> b!3640629 m!4143585))

(declare-fun m!4143687 () Bool)

(assert (=> b!3640629 m!4143687))

(assert (=> b!3640629 m!4143581))

(assert (=> b!3640629 m!4143687))

(assert (=> b!3640629 m!4143581))

(declare-fun m!4143689 () Bool)

(assert (=> b!3640629 m!4143689))

(assert (=> b!3640627 m!4143585))

(assert (=> b!3640620 m!4143585))

(declare-fun m!4143691 () Bool)

(assert (=> b!3640626 m!4143691))

(assert (=> b!3640628 m!4143581))

(assert (=> b!3640628 m!4143581))

(declare-fun m!4143693 () Bool)

(assert (=> b!3640628 m!4143693))

(assert (=> d!1070409 m!4143685))

(declare-fun m!4143695 () Bool)

(assert (=> d!1070409 m!4143695))

(assert (=> b!3640622 m!4143581))

(assert (=> b!3640622 m!4143581))

(assert (=> b!3640622 m!4143693))

(assert (=> b!3640208 d!1070409))

(declare-fun d!1070411 () Bool)

(declare-fun res!1475642 () Bool)

(declare-fun e!2253668 () Bool)

(assert (=> d!1070411 (=> (not res!1475642) (not e!2253668))))

(assert (=> d!1070411 (= res!1475642 (validRegex!4802 (regex!5731 rule!403)))))

(assert (=> d!1070411 (= (ruleValid!1995 thiss!23823 rule!403) e!2253668)))

(declare-fun b!3640636 () Bool)

(declare-fun res!1475643 () Bool)

(assert (=> b!3640636 (=> (not res!1475643) (not e!2253668))))

(assert (=> b!3640636 (= res!1475643 (not (nullable!3641 (regex!5731 rule!403))))))

(declare-fun b!3640637 () Bool)

(assert (=> b!3640637 (= e!2253668 (not (= (tag!6479 rule!403) (String!43142 ""))))))

(assert (= (and d!1070411 res!1475642) b!3640636))

(assert (= (and b!3640636 res!1475643) b!3640637))

(assert (=> d!1070411 m!4143695))

(assert (=> b!3640636 m!4143691))

(assert (=> b!3640208 d!1070411))

(declare-fun d!1070413 () Bool)

(assert (=> d!1070413 (ruleValid!1995 thiss!23823 rule!403)))

(declare-fun lt!1260515 () Unit!55207)

(declare-fun choose!21402 (LexerInterface!5320 Rule!11262 List!38490) Unit!55207)

(assert (=> d!1070413 (= lt!1260515 (choose!21402 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1070413 (contains!7528 rules!3307 rule!403)))

(assert (=> d!1070413 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1149 thiss!23823 rule!403 rules!3307) lt!1260515)))

(declare-fun bs!571932 () Bool)

(assert (= bs!571932 d!1070413))

(assert (=> bs!571932 m!4143171))

(declare-fun m!4143697 () Bool)

(assert (=> bs!571932 m!4143697))

(assert (=> bs!571932 m!4143157))

(assert (=> b!3640208 d!1070413))

(declare-fun d!1070415 () Bool)

(declare-fun lt!1260516 () Bool)

(assert (=> d!1070415 (= lt!1260516 (set.member lt!1260276 (content!5520 lt!1260282)))))

(declare-fun e!2253669 () Bool)

(assert (=> d!1070415 (= lt!1260516 e!2253669)))

(declare-fun res!1475644 () Bool)

(assert (=> d!1070415 (=> (not res!1475644) (not e!2253669))))

(assert (=> d!1070415 (= res!1475644 (is-Cons!38365 lt!1260282))))

(assert (=> d!1070415 (= (contains!7527 lt!1260282 lt!1260276) lt!1260516)))

(declare-fun b!3640638 () Bool)

(declare-fun e!2253670 () Bool)

(assert (=> b!3640638 (= e!2253669 e!2253670)))

(declare-fun res!1475645 () Bool)

(assert (=> b!3640638 (=> res!1475645 e!2253670)))

(assert (=> b!3640638 (= res!1475645 (= (h!43785 lt!1260282) lt!1260276))))

(declare-fun b!3640639 () Bool)

(assert (=> b!3640639 (= e!2253670 (contains!7527 (t!296392 lt!1260282) lt!1260276))))

(assert (= (and d!1070415 res!1475644) b!3640638))

(assert (= (and b!3640638 (not res!1475645)) b!3640639))

(assert (=> d!1070415 m!4143477))

(declare-fun m!4143699 () Bool)

(assert (=> d!1070415 m!4143699))

(declare-fun m!4143701 () Bool)

(assert (=> b!3640639 m!4143701))

(assert (=> b!3640194 d!1070415))

(declare-fun d!1070417 () Bool)

(declare-fun lt!1260519 () Int)

(assert (=> d!1070417 (>= lt!1260519 0)))

(declare-fun e!2253673 () Int)

(assert (=> d!1070417 (= lt!1260519 e!2253673)))

(declare-fun c!629486 () Bool)

(assert (=> d!1070417 (= c!629486 (is-Nil!38365 lt!1260267))))

(assert (=> d!1070417 (= (size!29281 lt!1260267) lt!1260519)))

(declare-fun b!3640644 () Bool)

(assert (=> b!3640644 (= e!2253673 0)))

(declare-fun b!3640645 () Bool)

(assert (=> b!3640645 (= e!2253673 (+ 1 (size!29281 (t!296392 lt!1260267))))))

(assert (= (and d!1070417 c!629486) b!3640644))

(assert (= (and d!1070417 (not c!629486)) b!3640645))

(declare-fun m!4143703 () Bool)

(assert (=> b!3640645 m!4143703))

(assert (=> b!3640215 d!1070417))

(declare-fun d!1070419 () Bool)

(declare-fun lt!1260522 () List!38489)

(assert (=> d!1070419 (= (++!9547 lt!1260267 lt!1260522) lt!1260280)))

(declare-fun e!2253676 () List!38489)

(assert (=> d!1070419 (= lt!1260522 e!2253676)))

(declare-fun c!629489 () Bool)

(assert (=> d!1070419 (= c!629489 (is-Cons!38365 lt!1260267))))

(assert (=> d!1070419 (>= (size!29281 lt!1260280) (size!29281 lt!1260267))))

(assert (=> d!1070419 (= (getSuffix!1647 lt!1260280 lt!1260267) lt!1260522)))

(declare-fun b!3640650 () Bool)

(assert (=> b!3640650 (= e!2253676 (getSuffix!1647 (tail!5638 lt!1260280) (t!296392 lt!1260267)))))

(declare-fun b!3640651 () Bool)

(assert (=> b!3640651 (= e!2253676 lt!1260280)))

(assert (= (and d!1070419 c!629489) b!3640650))

(assert (= (and d!1070419 (not c!629489)) b!3640651))

(declare-fun m!4143705 () Bool)

(assert (=> d!1070419 m!4143705))

(assert (=> d!1070419 m!4143445))

(assert (=> d!1070419 m!4143147))

(assert (=> b!3640650 m!4143439))

(assert (=> b!3640650 m!4143439))

(declare-fun m!4143707 () Bool)

(assert (=> b!3640650 m!4143707))

(assert (=> b!3640215 d!1070419))

(declare-fun d!1070421 () Bool)

(assert (=> d!1070421 (= (maxPrefixOneRule!1992 thiss!23823 (rule!8513 (_1!22251 lt!1260277)) lt!1260280) (Some!8089 (tuple2!38235 (Token!10829 (apply!9233 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) (seqFromList!4280 lt!1260267)) (rule!8513 (_1!22251 lt!1260277)) (size!29281 lt!1260267) lt!1260267) (_2!22251 lt!1260277))))))

(declare-fun lt!1260525 () Unit!55207)

(declare-fun choose!21403 (LexerInterface!5320 List!38490 List!38489 List!38489 List!38489 Rule!11262) Unit!55207)

(assert (=> d!1070421 (= lt!1260525 (choose!21403 thiss!23823 rules!3307 lt!1260267 lt!1260280 (_2!22251 lt!1260277) (rule!8513 (_1!22251 lt!1260277))))))

(assert (=> d!1070421 (not (isEmpty!22714 rules!3307))))

(assert (=> d!1070421 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1048 thiss!23823 rules!3307 lt!1260267 lt!1260280 (_2!22251 lt!1260277) (rule!8513 (_1!22251 lt!1260277))) lt!1260525)))

(declare-fun bs!571933 () Bool)

(assert (= bs!571933 d!1070421))

(assert (=> bs!571933 m!4143139))

(declare-fun m!4143709 () Bool)

(assert (=> bs!571933 m!4143709))

(assert (=> bs!571933 m!4143145))

(assert (=> bs!571933 m!4143143))

(assert (=> bs!571933 m!4143155))

(assert (=> bs!571933 m!4143147))

(assert (=> bs!571933 m!4143143))

(assert (=> b!3640215 d!1070421))

(declare-fun b!3640716 () Bool)

(declare-fun e!2253709 () Bool)

(declare-datatypes ((tuple2!38242 0))(
  ( (tuple2!38243 (_1!22255 List!38489) (_2!22255 List!38489)) )
))
(declare-fun findLongestMatchInner!1036 (Regex!10490 List!38489 Int List!38489 List!38489 Int) tuple2!38242)

(assert (=> b!3640716 (= e!2253709 (matchR!5059 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) (_1!22255 (findLongestMatchInner!1036 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) Nil!38365 (size!29281 Nil!38365) lt!1260280 lt!1260280 (size!29281 lt!1260280)))))))

(declare-fun b!3640717 () Bool)

(declare-fun res!1475694 () Bool)

(declare-fun e!2253710 () Bool)

(assert (=> b!3640717 (=> (not res!1475694) (not e!2253710))))

(declare-fun lt!1260605 () Option!8090)

(assert (=> b!3640717 (= res!1475694 (< (size!29281 (_2!22251 (get!12566 lt!1260605))) (size!29281 lt!1260280)))))

(declare-fun b!3640718 () Bool)

(assert (=> b!3640718 (= e!2253710 (= (size!29280 (_1!22251 (get!12566 lt!1260605))) (size!29281 (originalCharacters!6445 (_1!22251 (get!12566 lt!1260605))))))))

(declare-fun b!3640719 () Bool)

(declare-fun e!2253711 () Option!8090)

(declare-fun lt!1260609 () tuple2!38242)

(assert (=> b!3640719 (= e!2253711 (Some!8089 (tuple2!38235 (Token!10829 (apply!9233 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) (seqFromList!4280 (_1!22255 lt!1260609))) (rule!8513 (_1!22251 lt!1260277)) (size!29282 (seqFromList!4280 (_1!22255 lt!1260609))) (_1!22255 lt!1260609)) (_2!22255 lt!1260609))))))

(declare-fun lt!1260607 () Unit!55207)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1009 (Regex!10490 List!38489) Unit!55207)

(assert (=> b!3640719 (= lt!1260607 (longestMatchIsAcceptedByMatchOrIsEmpty!1009 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260280))))

(declare-fun res!1475698 () Bool)

(assert (=> b!3640719 (= res!1475698 (isEmpty!22715 (_1!22255 (findLongestMatchInner!1036 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) Nil!38365 (size!29281 Nil!38365) lt!1260280 lt!1260280 (size!29281 lt!1260280)))))))

(assert (=> b!3640719 (=> res!1475698 e!2253709)))

(assert (=> b!3640719 e!2253709))

(declare-fun lt!1260606 () Unit!55207)

(assert (=> b!3640719 (= lt!1260606 lt!1260607)))

(declare-fun lt!1260608 () Unit!55207)

(assert (=> b!3640719 (= lt!1260608 (lemmaSemiInverse!1480 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) (seqFromList!4280 (_1!22255 lt!1260609))))))

(declare-fun b!3640720 () Bool)

(declare-fun e!2253708 () Bool)

(assert (=> b!3640720 (= e!2253708 e!2253710)))

(declare-fun res!1475697 () Bool)

(assert (=> b!3640720 (=> (not res!1475697) (not e!2253710))))

(assert (=> b!3640720 (= res!1475697 (matchR!5059 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260605))))))))

(declare-fun b!3640721 () Bool)

(assert (=> b!3640721 (= e!2253711 None!8089)))

(declare-fun b!3640722 () Bool)

(declare-fun res!1475699 () Bool)

(assert (=> b!3640722 (=> (not res!1475699) (not e!2253710))))

(assert (=> b!3640722 (= res!1475699 (= (++!9547 (list!14201 (charsOf!3745 (_1!22251 (get!12566 lt!1260605)))) (_2!22251 (get!12566 lt!1260605))) lt!1260280))))

(declare-fun d!1070423 () Bool)

(assert (=> d!1070423 e!2253708))

(declare-fun res!1475700 () Bool)

(assert (=> d!1070423 (=> res!1475700 e!2253708)))

(assert (=> d!1070423 (= res!1475700 (isEmpty!22718 lt!1260605))))

(assert (=> d!1070423 (= lt!1260605 e!2253711)))

(declare-fun c!629498 () Bool)

(assert (=> d!1070423 (= c!629498 (isEmpty!22715 (_1!22255 lt!1260609)))))

(declare-fun findLongestMatch!951 (Regex!10490 List!38489) tuple2!38242)

(assert (=> d!1070423 (= lt!1260609 (findLongestMatch!951 (regex!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260280))))

(assert (=> d!1070423 (ruleValid!1995 thiss!23823 (rule!8513 (_1!22251 lt!1260277)))))

(assert (=> d!1070423 (= (maxPrefixOneRule!1992 thiss!23823 (rule!8513 (_1!22251 lt!1260277)) lt!1260280) lt!1260605)))

(declare-fun b!3640723 () Bool)

(declare-fun res!1475695 () Bool)

(assert (=> b!3640723 (=> (not res!1475695) (not e!2253710))))

(assert (=> b!3640723 (= res!1475695 (= (value!183795 (_1!22251 (get!12566 lt!1260605))) (apply!9233 (transformation!5731 (rule!8513 (_1!22251 (get!12566 lt!1260605)))) (seqFromList!4280 (originalCharacters!6445 (_1!22251 (get!12566 lt!1260605)))))))))

(declare-fun b!3640724 () Bool)

(declare-fun res!1475696 () Bool)

(assert (=> b!3640724 (=> (not res!1475696) (not e!2253710))))

(assert (=> b!3640724 (= res!1475696 (= (rule!8513 (_1!22251 (get!12566 lt!1260605))) (rule!8513 (_1!22251 lt!1260277))))))

(assert (= (and d!1070423 c!629498) b!3640721))

(assert (= (and d!1070423 (not c!629498)) b!3640719))

(assert (= (and b!3640719 (not res!1475698)) b!3640716))

(assert (= (and d!1070423 (not res!1475700)) b!3640720))

(assert (= (and b!3640720 res!1475697) b!3640722))

(assert (= (and b!3640722 res!1475699) b!3640717))

(assert (= (and b!3640717 res!1475694) b!3640724))

(assert (= (and b!3640724 res!1475696) b!3640723))

(assert (= (and b!3640723 res!1475695) b!3640718))

(declare-fun m!4143791 () Bool)

(assert (=> b!3640724 m!4143791))

(assert (=> b!3640723 m!4143791))

(declare-fun m!4143793 () Bool)

(assert (=> b!3640723 m!4143793))

(assert (=> b!3640723 m!4143793))

(declare-fun m!4143795 () Bool)

(assert (=> b!3640723 m!4143795))

(declare-fun m!4143797 () Bool)

(assert (=> b!3640716 m!4143797))

(assert (=> b!3640716 m!4143445))

(assert (=> b!3640716 m!4143797))

(assert (=> b!3640716 m!4143445))

(declare-fun m!4143799 () Bool)

(assert (=> b!3640716 m!4143799))

(declare-fun m!4143801 () Bool)

(assert (=> b!3640716 m!4143801))

(assert (=> b!3640717 m!4143791))

(declare-fun m!4143803 () Bool)

(assert (=> b!3640717 m!4143803))

(assert (=> b!3640717 m!4143445))

(declare-fun m!4143805 () Bool)

(assert (=> d!1070423 m!4143805))

(declare-fun m!4143807 () Bool)

(assert (=> d!1070423 m!4143807))

(declare-fun m!4143809 () Bool)

(assert (=> d!1070423 m!4143809))

(declare-fun m!4143811 () Bool)

(assert (=> d!1070423 m!4143811))

(assert (=> b!3640720 m!4143791))

(declare-fun m!4143813 () Bool)

(assert (=> b!3640720 m!4143813))

(assert (=> b!3640720 m!4143813))

(declare-fun m!4143815 () Bool)

(assert (=> b!3640720 m!4143815))

(assert (=> b!3640720 m!4143815))

(declare-fun m!4143817 () Bool)

(assert (=> b!3640720 m!4143817))

(assert (=> b!3640722 m!4143791))

(assert (=> b!3640722 m!4143813))

(assert (=> b!3640722 m!4143813))

(assert (=> b!3640722 m!4143815))

(assert (=> b!3640722 m!4143815))

(declare-fun m!4143825 () Bool)

(assert (=> b!3640722 m!4143825))

(assert (=> b!3640718 m!4143791))

(declare-fun m!4143831 () Bool)

(assert (=> b!3640718 m!4143831))

(declare-fun m!4143833 () Bool)

(assert (=> b!3640719 m!4143833))

(declare-fun m!4143835 () Bool)

(assert (=> b!3640719 m!4143835))

(declare-fun m!4143837 () Bool)

(assert (=> b!3640719 m!4143837))

(assert (=> b!3640719 m!4143835))

(declare-fun m!4143841 () Bool)

(assert (=> b!3640719 m!4143841))

(assert (=> b!3640719 m!4143445))

(assert (=> b!3640719 m!4143797))

(assert (=> b!3640719 m!4143445))

(assert (=> b!3640719 m!4143799))

(assert (=> b!3640719 m!4143835))

(assert (=> b!3640719 m!4143797))

(declare-fun m!4143849 () Bool)

(assert (=> b!3640719 m!4143849))

(assert (=> b!3640719 m!4143835))

(declare-fun m!4143851 () Bool)

(assert (=> b!3640719 m!4143851))

(assert (=> b!3640215 d!1070423))

(declare-fun d!1070439 () Bool)

(declare-fun fromListB!1976 (List!38489) BalanceConc!23042)

(assert (=> d!1070439 (= (seqFromList!4280 lt!1260267) (fromListB!1976 lt!1260267))))

(declare-fun bs!571937 () Bool)

(assert (= bs!571937 d!1070439))

(declare-fun m!4143877 () Bool)

(assert (=> bs!571937 m!4143877))

(assert (=> b!3640215 d!1070439))

(declare-fun d!1070445 () Bool)

(declare-fun dynLambda!16688 (Int BalanceConc!23042) TokenValue!5961)

(assert (=> d!1070445 (= (apply!9233 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) (seqFromList!4280 lt!1260267)) (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (seqFromList!4280 lt!1260267)))))

(declare-fun b_lambda!107907 () Bool)

(assert (=> (not b_lambda!107907) (not d!1070445)))

(declare-fun t!296422 () Bool)

(declare-fun tb!209685 () Bool)

(assert (=> (and b!3640217 (= (toValue!8023 (transformation!5731 (rule!8513 token!511))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296422) tb!209685))

(declare-fun result!255390 () Bool)

(assert (=> tb!209685 (= result!255390 (inv!21 (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (seqFromList!4280 lt!1260267))))))

(declare-fun m!4143881 () Bool)

(assert (=> tb!209685 m!4143881))

(assert (=> d!1070445 t!296422))

(declare-fun b_and!268307 () Bool)

(assert (= b_and!268243 (and (=> t!296422 result!255390) b_and!268307)))

(declare-fun tb!209687 () Bool)

(declare-fun t!296424 () Bool)

(assert (=> (and b!3640213 (= (toValue!8023 (transformation!5731 (h!43786 rules!3307))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296424) tb!209687))

(declare-fun result!255394 () Bool)

(assert (= result!255394 result!255390))

(assert (=> d!1070445 t!296424))

(declare-fun b_and!268309 () Bool)

(assert (= b_and!268247 (and (=> t!296424 result!255394) b_and!268309)))

(declare-fun tb!209689 () Bool)

(declare-fun t!296426 () Bool)

(assert (=> (and b!3640200 (= (toValue!8023 (transformation!5731 anOtherTypeRule!33)) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296426) tb!209689))

(declare-fun result!255396 () Bool)

(assert (= result!255396 result!255390))

(assert (=> d!1070445 t!296426))

(declare-fun b_and!268311 () Bool)

(assert (= b_and!268251 (and (=> t!296426 result!255396) b_and!268311)))

(declare-fun tb!209691 () Bool)

(declare-fun t!296428 () Bool)

(assert (=> (and b!3640188 (= (toValue!8023 (transformation!5731 rule!403)) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296428) tb!209691))

(declare-fun result!255398 () Bool)

(assert (= result!255398 result!255390))

(assert (=> d!1070445 t!296428))

(declare-fun b_and!268313 () Bool)

(assert (= b_and!268255 (and (=> t!296428 result!255398) b_and!268313)))

(assert (=> d!1070445 m!4143143))

(declare-fun m!4143883 () Bool)

(assert (=> d!1070445 m!4143883))

(assert (=> b!3640215 d!1070445))

(declare-fun d!1070449 () Bool)

(assert (=> d!1070449 (= (_2!22251 lt!1260277) lt!1260290)))

(declare-fun lt!1260618 () Unit!55207)

(declare-fun choose!21405 (List!38489 List!38489 List!38489 List!38489 List!38489) Unit!55207)

(assert (=> d!1070449 (= lt!1260618 (choose!21405 lt!1260267 (_2!22251 lt!1260277) lt!1260267 lt!1260290 lt!1260280))))

(assert (=> d!1070449 (isPrefix!3094 lt!1260267 lt!1260280)))

(assert (=> d!1070449 (= (lemmaSamePrefixThenSameSuffix!1421 lt!1260267 (_2!22251 lt!1260277) lt!1260267 lt!1260290 lt!1260280) lt!1260618)))

(declare-fun bs!571939 () Bool)

(assert (= bs!571939 d!1070449))

(declare-fun m!4143885 () Bool)

(assert (=> bs!571939 m!4143885))

(assert (=> bs!571939 m!4143195))

(assert (=> b!3640215 d!1070449))

(declare-fun b!3640822 () Bool)

(declare-fun e!2253775 () Bool)

(assert (=> b!3640822 (= e!2253775 true)))

(declare-fun d!1070451 () Bool)

(assert (=> d!1070451 e!2253775))

(assert (= d!1070451 b!3640822))

(declare-fun order!21077 () Int)

(declare-fun order!21075 () Int)

(declare-fun lambda!124382 () Int)

(declare-fun dynLambda!16689 (Int Int) Int)

(declare-fun dynLambda!16690 (Int Int) Int)

(assert (=> b!3640822 (< (dynLambda!16689 order!21075 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) (dynLambda!16690 order!21077 lambda!124382))))

(declare-fun order!21079 () Int)

(declare-fun dynLambda!16691 (Int Int) Int)

(assert (=> b!3640822 (< (dynLambda!16691 order!21079 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) (dynLambda!16690 order!21077 lambda!124382))))

(assert (=> d!1070451 (= (list!14201 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260265))) (list!14201 lt!1260265))))

(declare-fun lt!1260644 () Unit!55207)

(declare-fun ForallOf!697 (Int BalanceConc!23042) Unit!55207)

(assert (=> d!1070451 (= lt!1260644 (ForallOf!697 lambda!124382 lt!1260265))))

(assert (=> d!1070451 (= (lemmaSemiInverse!1480 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260265) lt!1260644)))

(declare-fun b_lambda!107909 () Bool)

(assert (=> (not b_lambda!107909) (not d!1070451)))

(declare-fun t!296430 () Bool)

(declare-fun tb!209693 () Bool)

(assert (=> (and b!3640217 (= (toChars!7882 (transformation!5731 (rule!8513 token!511))) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296430) tb!209693))

(declare-fun e!2253776 () Bool)

(declare-fun b!3640823 () Bool)

(declare-fun tp!1110662 () Bool)

(assert (=> b!3640823 (= e!2253776 (and (inv!51804 (c!629421 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260265)))) tp!1110662))))

(declare-fun result!255400 () Bool)

(assert (=> tb!209693 (= result!255400 (and (inv!51805 (dynLambda!16686 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260265))) e!2253776))))

(assert (= tb!209693 b!3640823))

(declare-fun m!4143961 () Bool)

(assert (=> b!3640823 m!4143961))

(declare-fun m!4143963 () Bool)

(assert (=> tb!209693 m!4143963))

(assert (=> d!1070451 t!296430))

(declare-fun b_and!268315 () Bool)

(assert (= b_and!268299 (and (=> t!296430 result!255400) b_and!268315)))

(declare-fun tb!209695 () Bool)

(declare-fun t!296432 () Bool)

(assert (=> (and b!3640213 (= (toChars!7882 (transformation!5731 (h!43786 rules!3307))) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296432) tb!209695))

(declare-fun result!255402 () Bool)

(assert (= result!255402 result!255400))

(assert (=> d!1070451 t!296432))

(declare-fun b_and!268317 () Bool)

(assert (= b_and!268301 (and (=> t!296432 result!255402) b_and!268317)))

(declare-fun t!296434 () Bool)

(declare-fun tb!209697 () Bool)

(assert (=> (and b!3640200 (= (toChars!7882 (transformation!5731 anOtherTypeRule!33)) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296434) tb!209697))

(declare-fun result!255404 () Bool)

(assert (= result!255404 result!255400))

(assert (=> d!1070451 t!296434))

(declare-fun b_and!268319 () Bool)

(assert (= b_and!268303 (and (=> t!296434 result!255404) b_and!268319)))

(declare-fun tb!209699 () Bool)

(declare-fun t!296436 () Bool)

(assert (=> (and b!3640188 (= (toChars!7882 (transformation!5731 rule!403)) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296436) tb!209699))

(declare-fun result!255406 () Bool)

(assert (= result!255406 result!255400))

(assert (=> d!1070451 t!296436))

(declare-fun b_and!268321 () Bool)

(assert (= b_and!268305 (and (=> t!296436 result!255406) b_and!268321)))

(declare-fun b_lambda!107911 () Bool)

(assert (=> (not b_lambda!107911) (not d!1070451)))

(declare-fun t!296438 () Bool)

(declare-fun tb!209701 () Bool)

(assert (=> (and b!3640217 (= (toValue!8023 (transformation!5731 (rule!8513 token!511))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296438) tb!209701))

(declare-fun result!255408 () Bool)

(assert (=> tb!209701 (= result!255408 (inv!21 (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260265)))))

(declare-fun m!4143965 () Bool)

(assert (=> tb!209701 m!4143965))

(assert (=> d!1070451 t!296438))

(declare-fun b_and!268323 () Bool)

(assert (= b_and!268307 (and (=> t!296438 result!255408) b_and!268323)))

(declare-fun tb!209703 () Bool)

(declare-fun t!296440 () Bool)

(assert (=> (and b!3640213 (= (toValue!8023 (transformation!5731 (h!43786 rules!3307))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296440) tb!209703))

(declare-fun result!255410 () Bool)

(assert (= result!255410 result!255408))

(assert (=> d!1070451 t!296440))

(declare-fun b_and!268325 () Bool)

(assert (= b_and!268309 (and (=> t!296440 result!255410) b_and!268325)))

(declare-fun t!296442 () Bool)

(declare-fun tb!209705 () Bool)

(assert (=> (and b!3640200 (= (toValue!8023 (transformation!5731 anOtherTypeRule!33)) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296442) tb!209705))

(declare-fun result!255412 () Bool)

(assert (= result!255412 result!255408))

(assert (=> d!1070451 t!296442))

(declare-fun b_and!268327 () Bool)

(assert (= b_and!268311 (and (=> t!296442 result!255412) b_and!268327)))

(declare-fun t!296444 () Bool)

(declare-fun tb!209707 () Bool)

(assert (=> (and b!3640188 (= (toValue!8023 (transformation!5731 rule!403)) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296444) tb!209707))

(declare-fun result!255414 () Bool)

(assert (= result!255414 result!255408))

(assert (=> d!1070451 t!296444))

(declare-fun b_and!268329 () Bool)

(assert (= b_and!268313 (and (=> t!296444 result!255414) b_and!268329)))

(declare-fun m!4143967 () Bool)

(assert (=> d!1070451 m!4143967))

(declare-fun m!4143969 () Bool)

(assert (=> d!1070451 m!4143969))

(assert (=> d!1070451 m!4143205))

(declare-fun m!4143971 () Bool)

(assert (=> d!1070451 m!4143971))

(declare-fun m!4143973 () Bool)

(assert (=> d!1070451 m!4143973))

(assert (=> d!1070451 m!4143971))

(assert (=> d!1070451 m!4143967))

(assert (=> b!3640216 d!1070451))

(declare-fun d!1070491 () Bool)

(assert (=> d!1070491 (= (apply!9233 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260265) (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260265))))

(declare-fun b_lambda!107913 () Bool)

(assert (=> (not b_lambda!107913) (not d!1070491)))

(assert (=> d!1070491 t!296438))

(declare-fun b_and!268331 () Bool)

(assert (= b_and!268323 (and (=> t!296438 result!255408) b_and!268331)))

(assert (=> d!1070491 t!296440))

(declare-fun b_and!268333 () Bool)

(assert (= b_and!268325 (and (=> t!296440 result!255410) b_and!268333)))

(assert (=> d!1070491 t!296442))

(declare-fun b_and!268335 () Bool)

(assert (= b_and!268327 (and (=> t!296442 result!255412) b_and!268335)))

(assert (=> d!1070491 t!296444))

(declare-fun b_and!268337 () Bool)

(assert (= b_and!268329 (and (=> t!296444 result!255414) b_and!268337)))

(assert (=> d!1070491 m!4143971))

(assert (=> b!3640216 d!1070491))

(declare-fun d!1070493 () Bool)

(assert (=> d!1070493 (= (size!29280 (_1!22251 lt!1260277)) (size!29281 (originalCharacters!6445 (_1!22251 lt!1260277))))))

(declare-fun Unit!55220 () Unit!55207)

(assert (=> d!1070493 (= (lemmaCharactersSize!776 (_1!22251 lt!1260277)) Unit!55220)))

(declare-fun bs!571943 () Bool)

(assert (= bs!571943 d!1070493))

(declare-fun m!4143975 () Bool)

(assert (=> bs!571943 m!4143975))

(assert (=> b!3640216 d!1070493))

(declare-fun d!1070495 () Bool)

(declare-fun lt!1260647 () Int)

(assert (=> d!1070495 (= lt!1260647 (size!29281 (list!14201 lt!1260265)))))

(declare-fun size!29286 (Conc!11714) Int)

(assert (=> d!1070495 (= lt!1260647 (size!29286 (c!629421 lt!1260265)))))

(assert (=> d!1070495 (= (size!29282 lt!1260265) lt!1260647)))

(declare-fun bs!571944 () Bool)

(assert (= bs!571944 d!1070495))

(assert (=> bs!571944 m!4143205))

(assert (=> bs!571944 m!4143205))

(declare-fun m!4143977 () Bool)

(assert (=> bs!571944 m!4143977))

(declare-fun m!4143979 () Bool)

(assert (=> bs!571944 m!4143979))

(assert (=> b!3640216 d!1070495))

(declare-fun d!1070497 () Bool)

(assert (=> d!1070497 (= (seqFromList!4280 (originalCharacters!6445 (_1!22251 lt!1260277))) (fromListB!1976 (originalCharacters!6445 (_1!22251 lt!1260277))))))

(declare-fun bs!571945 () Bool)

(assert (= bs!571945 d!1070497))

(declare-fun m!4143981 () Bool)

(assert (=> bs!571945 m!4143981))

(assert (=> b!3640216 d!1070497))

(declare-fun b!3640830 () Bool)

(declare-fun e!2253782 () Bool)

(assert (=> b!3640830 (= e!2253782 true)))

(declare-fun d!1070499 () Bool)

(assert (=> d!1070499 e!2253782))

(assert (= d!1070499 b!3640830))

(declare-fun order!21081 () Int)

(declare-fun lambda!124385 () Int)

(declare-fun dynLambda!16692 (Int Int) Int)

(assert (=> b!3640830 (< (dynLambda!16689 order!21075 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) (dynLambda!16692 order!21081 lambda!124385))))

(assert (=> b!3640830 (< (dynLambda!16691 order!21079 (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) (dynLambda!16692 order!21081 lambda!124385))))

(assert (=> d!1070499 (= (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260265) (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (seqFromList!4280 (originalCharacters!6445 (_1!22251 lt!1260277)))))))

(declare-fun lt!1260650 () Unit!55207)

(declare-fun Forall2of!355 (Int BalanceConc!23042 BalanceConc!23042) Unit!55207)

(assert (=> d!1070499 (= lt!1260650 (Forall2of!355 lambda!124385 lt!1260265 (seqFromList!4280 (originalCharacters!6445 (_1!22251 lt!1260277)))))))

(assert (=> d!1070499 (= (list!14201 lt!1260265) (list!14201 (seqFromList!4280 (originalCharacters!6445 (_1!22251 lt!1260277)))))))

(assert (=> d!1070499 (= (lemmaEqSameImage!914 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))) lt!1260265 (seqFromList!4280 (originalCharacters!6445 (_1!22251 lt!1260277)))) lt!1260650)))

(declare-fun b_lambda!107915 () Bool)

(assert (=> (not b_lambda!107915) (not d!1070499)))

(assert (=> d!1070499 t!296438))

(declare-fun b_and!268339 () Bool)

(assert (= b_and!268331 (and (=> t!296438 result!255408) b_and!268339)))

(assert (=> d!1070499 t!296440))

(declare-fun b_and!268341 () Bool)

(assert (= b_and!268333 (and (=> t!296440 result!255410) b_and!268341)))

(assert (=> d!1070499 t!296442))

(declare-fun b_and!268343 () Bool)

(assert (= b_and!268335 (and (=> t!296442 result!255412) b_and!268343)))

(assert (=> d!1070499 t!296444))

(declare-fun b_and!268345 () Bool)

(assert (= b_and!268337 (and (=> t!296444 result!255414) b_and!268345)))

(declare-fun b_lambda!107917 () Bool)

(assert (=> (not b_lambda!107917) (not d!1070499)))

(declare-fun tb!209709 () Bool)

(declare-fun t!296446 () Bool)

(assert (=> (and b!3640217 (= (toValue!8023 (transformation!5731 (rule!8513 token!511))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296446) tb!209709))

(declare-fun result!255416 () Bool)

(assert (=> tb!209709 (= result!255416 (inv!21 (dynLambda!16688 (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277)))) (seqFromList!4280 (originalCharacters!6445 (_1!22251 lt!1260277))))))))

(declare-fun m!4143983 () Bool)

(assert (=> tb!209709 m!4143983))

(assert (=> d!1070499 t!296446))

(declare-fun b_and!268347 () Bool)

(assert (= b_and!268339 (and (=> t!296446 result!255416) b_and!268347)))

(declare-fun t!296448 () Bool)

(declare-fun tb!209711 () Bool)

(assert (=> (and b!3640213 (= (toValue!8023 (transformation!5731 (h!43786 rules!3307))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296448) tb!209711))

(declare-fun result!255418 () Bool)

(assert (= result!255418 result!255416))

(assert (=> d!1070499 t!296448))

(declare-fun b_and!268349 () Bool)

(assert (= b_and!268341 (and (=> t!296448 result!255418) b_and!268349)))

(declare-fun t!296450 () Bool)

(declare-fun tb!209713 () Bool)

(assert (=> (and b!3640200 (= (toValue!8023 (transformation!5731 anOtherTypeRule!33)) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296450) tb!209713))

(declare-fun result!255420 () Bool)

(assert (= result!255420 result!255416))

(assert (=> d!1070499 t!296450))

(declare-fun b_and!268351 () Bool)

(assert (= b_and!268343 (and (=> t!296450 result!255420) b_and!268351)))

(declare-fun t!296452 () Bool)

(declare-fun tb!209715 () Bool)

(assert (=> (and b!3640188 (= (toValue!8023 (transformation!5731 rule!403)) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296452) tb!209715))

(declare-fun result!255422 () Bool)

(assert (= result!255422 result!255416))

(assert (=> d!1070499 t!296452))

(declare-fun b_and!268353 () Bool)

(assert (= b_and!268345 (and (=> t!296452 result!255422) b_and!268353)))

(assert (=> d!1070499 m!4143111))

(declare-fun m!4143985 () Bool)

(assert (=> d!1070499 m!4143985))

(assert (=> d!1070499 m!4143111))

(declare-fun m!4143987 () Bool)

(assert (=> d!1070499 m!4143987))

(assert (=> d!1070499 m!4143111))

(declare-fun m!4143989 () Bool)

(assert (=> d!1070499 m!4143989))

(assert (=> d!1070499 m!4143205))

(assert (=> d!1070499 m!4143971))

(assert (=> b!3640216 d!1070499))

(declare-fun d!1070501 () Bool)

(declare-fun res!1475750 () Bool)

(declare-fun e!2253786 () Bool)

(assert (=> d!1070501 (=> (not res!1475750) (not e!2253786))))

(declare-fun rulesValid!2198 (LexerInterface!5320 List!38490) Bool)

(assert (=> d!1070501 (= res!1475750 (rulesValid!2198 thiss!23823 rules!3307))))

(assert (=> d!1070501 (= (rulesInvariant!4717 thiss!23823 rules!3307) e!2253786)))

(declare-fun b!3640833 () Bool)

(declare-datatypes ((List!38497 0))(
  ( (Nil!38373) (Cons!38373 (h!43793 String!43141) (t!296520 List!38497)) )
))
(declare-fun noDuplicateTag!2194 (LexerInterface!5320 List!38490 List!38497) Bool)

(assert (=> b!3640833 (= e!2253786 (noDuplicateTag!2194 thiss!23823 rules!3307 Nil!38373))))

(assert (= (and d!1070501 res!1475750) b!3640833))

(declare-fun m!4143991 () Bool)

(assert (=> d!1070501 m!4143991))

(declare-fun m!4143993 () Bool)

(assert (=> b!3640833 m!4143993))

(assert (=> b!3640195 d!1070501))

(declare-fun d!1070503 () Bool)

(declare-fun lt!1260651 () Bool)

(assert (=> d!1070503 (= lt!1260651 (set.member lt!1260281 (content!5520 lt!1260266)))))

(declare-fun e!2253787 () Bool)

(assert (=> d!1070503 (= lt!1260651 e!2253787)))

(declare-fun res!1475751 () Bool)

(assert (=> d!1070503 (=> (not res!1475751) (not e!2253787))))

(assert (=> d!1070503 (= res!1475751 (is-Cons!38365 lt!1260266))))

(assert (=> d!1070503 (= (contains!7527 lt!1260266 lt!1260281) lt!1260651)))

(declare-fun b!3640834 () Bool)

(declare-fun e!2253788 () Bool)

(assert (=> b!3640834 (= e!2253787 e!2253788)))

(declare-fun res!1475752 () Bool)

(assert (=> b!3640834 (=> res!1475752 e!2253788)))

(assert (=> b!3640834 (= res!1475752 (= (h!43785 lt!1260266) lt!1260281))))

(declare-fun b!3640835 () Bool)

(assert (=> b!3640835 (= e!2253788 (contains!7527 (t!296392 lt!1260266) lt!1260281))))

(assert (= (and d!1070503 res!1475751) b!3640834))

(assert (= (and b!3640834 (not res!1475752)) b!3640835))

(assert (=> d!1070503 m!4143641))

(declare-fun m!4143995 () Bool)

(assert (=> d!1070503 m!4143995))

(declare-fun m!4143997 () Bool)

(assert (=> b!3640835 m!4143997))

(assert (=> b!3640191 d!1070503))

(declare-fun d!1070505 () Bool)

(assert (=> d!1070505 (= (head!7729 suffix!1395) (h!43785 suffix!1395))))

(assert (=> b!3640191 d!1070505))

(declare-fun bm!263167 () Bool)

(declare-fun c!629527 () Bool)

(declare-fun call!263172 () List!38489)

(declare-fun c!629524 () Bool)

(assert (=> bm!263167 (= call!263172 (usedCharacters!943 (ite c!629524 (reg!10819 (regex!5731 rule!403)) (ite c!629527 (regOne!21493 (regex!5731 rule!403)) (regTwo!21492 (regex!5731 rule!403))))))))

(declare-fun b!3640836 () Bool)

(declare-fun e!2253790 () List!38489)

(assert (=> b!3640836 (= e!2253790 call!263172)))

(declare-fun b!3640837 () Bool)

(assert (=> b!3640837 (= c!629524 (is-Star!10490 (regex!5731 rule!403)))))

(declare-fun e!2253791 () List!38489)

(assert (=> b!3640837 (= e!2253791 e!2253790)))

(declare-fun bm!263168 () Bool)

(declare-fun call!263173 () List!38489)

(assert (=> bm!263168 (= call!263173 (usedCharacters!943 (ite c!629527 (regTwo!21493 (regex!5731 rule!403)) (regOne!21492 (regex!5731 rule!403)))))))

(declare-fun b!3640838 () Bool)

(declare-fun e!2253789 () List!38489)

(assert (=> b!3640838 (= e!2253789 e!2253791)))

(declare-fun c!629525 () Bool)

(assert (=> b!3640838 (= c!629525 (is-ElementMatch!10490 (regex!5731 rule!403)))))

(declare-fun b!3640839 () Bool)

(declare-fun e!2253792 () List!38489)

(assert (=> b!3640839 (= e!2253790 e!2253792)))

(assert (=> b!3640839 (= c!629527 (is-Union!10490 (regex!5731 rule!403)))))

(declare-fun b!3640840 () Bool)

(declare-fun call!263175 () List!38489)

(assert (=> b!3640840 (= e!2253792 call!263175)))

(declare-fun d!1070507 () Bool)

(declare-fun c!629526 () Bool)

(assert (=> d!1070507 (= c!629526 (or (is-EmptyExpr!10490 (regex!5731 rule!403)) (is-EmptyLang!10490 (regex!5731 rule!403))))))

(assert (=> d!1070507 (= (usedCharacters!943 (regex!5731 rule!403)) e!2253789)))

(declare-fun b!3640841 () Bool)

(assert (=> b!3640841 (= e!2253791 (Cons!38365 (c!629420 (regex!5731 rule!403)) Nil!38365))))

(declare-fun b!3640842 () Bool)

(assert (=> b!3640842 (= e!2253789 Nil!38365)))

(declare-fun bm!263169 () Bool)

(declare-fun call!263174 () List!38489)

(assert (=> bm!263169 (= call!263174 call!263172)))

(declare-fun b!3640843 () Bool)

(assert (=> b!3640843 (= e!2253792 call!263175)))

(declare-fun bm!263170 () Bool)

(assert (=> bm!263170 (= call!263175 (++!9547 (ite c!629527 call!263174 call!263173) (ite c!629527 call!263173 call!263174)))))

(assert (= (and d!1070507 c!629526) b!3640842))

(assert (= (and d!1070507 (not c!629526)) b!3640838))

(assert (= (and b!3640838 c!629525) b!3640841))

(assert (= (and b!3640838 (not c!629525)) b!3640837))

(assert (= (and b!3640837 c!629524) b!3640836))

(assert (= (and b!3640837 (not c!629524)) b!3640839))

(assert (= (and b!3640839 c!629527) b!3640843))

(assert (= (and b!3640839 (not c!629527)) b!3640840))

(assert (= (or b!3640843 b!3640840) bm!263169))

(assert (= (or b!3640843 b!3640840) bm!263168))

(assert (= (or b!3640843 b!3640840) bm!263170))

(assert (= (or b!3640836 bm!263169) bm!263167))

(declare-fun m!4143999 () Bool)

(assert (=> bm!263167 m!4143999))

(declare-fun m!4144001 () Bool)

(assert (=> bm!263168 m!4144001))

(declare-fun m!4144003 () Bool)

(assert (=> bm!263170 m!4144003))

(assert (=> b!3640191 d!1070507))

(declare-fun b!3640862 () Bool)

(declare-fun res!1475765 () Bool)

(declare-fun e!2253812 () Bool)

(assert (=> b!3640862 (=> (not res!1475765) (not e!2253812))))

(declare-fun call!263182 () Bool)

(assert (=> b!3640862 (= res!1475765 call!263182)))

(declare-fun e!2253810 () Bool)

(assert (=> b!3640862 (= e!2253810 e!2253812)))

(declare-fun bm!263177 () Bool)

(declare-fun call!263183 () Bool)

(declare-fun c!629532 () Bool)

(assert (=> bm!263177 (= call!263183 (validRegex!4802 (ite c!629532 (regTwo!21493 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) (regOne!21492 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))))

(declare-fun bm!263178 () Bool)

(declare-fun call!263184 () Bool)

(assert (=> bm!263178 (= call!263182 call!263184)))

(declare-fun c!629533 () Bool)

(declare-fun bm!263179 () Bool)

(assert (=> bm!263179 (= call!263184 (validRegex!4802 (ite c!629533 (reg!10819 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) (ite c!629532 (regOne!21493 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) (regTwo!21492 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))))))

(declare-fun b!3640863 () Bool)

(declare-fun e!2253811 () Bool)

(assert (=> b!3640863 (= e!2253811 e!2253810)))

(assert (=> b!3640863 (= c!629532 (is-Union!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun b!3640864 () Bool)

(declare-fun e!2253807 () Bool)

(declare-fun e!2253808 () Bool)

(assert (=> b!3640864 (= e!2253807 e!2253808)))

(declare-fun res!1475767 () Bool)

(assert (=> b!3640864 (=> (not res!1475767) (not e!2253808))))

(assert (=> b!3640864 (= res!1475767 call!263183)))

(declare-fun b!3640865 () Bool)

(declare-fun res!1475766 () Bool)

(assert (=> b!3640865 (=> res!1475766 e!2253807)))

(assert (=> b!3640865 (= res!1475766 (not (is-Concat!16452 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))))

(assert (=> b!3640865 (= e!2253810 e!2253807)))

(declare-fun b!3640866 () Bool)

(declare-fun e!2253809 () Bool)

(assert (=> b!3640866 (= e!2253811 e!2253809)))

(declare-fun res!1475763 () Bool)

(assert (=> b!3640866 (= res!1475763 (not (nullable!3641 (reg!10819 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))))

(assert (=> b!3640866 (=> (not res!1475763) (not e!2253809))))

(declare-fun d!1070509 () Bool)

(declare-fun res!1475764 () Bool)

(declare-fun e!2253813 () Bool)

(assert (=> d!1070509 (=> res!1475764 e!2253813)))

(assert (=> d!1070509 (= res!1475764 (is-ElementMatch!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(assert (=> d!1070509 (= (validRegex!4802 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) e!2253813)))

(declare-fun b!3640867 () Bool)

(assert (=> b!3640867 (= e!2253808 call!263182)))

(declare-fun b!3640868 () Bool)

(assert (=> b!3640868 (= e!2253813 e!2253811)))

(assert (=> b!3640868 (= c!629533 (is-Star!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun b!3640869 () Bool)

(assert (=> b!3640869 (= e!2253812 call!263183)))

(declare-fun b!3640870 () Bool)

(assert (=> b!3640870 (= e!2253809 call!263184)))

(assert (= (and d!1070509 (not res!1475764)) b!3640868))

(assert (= (and b!3640868 c!629533) b!3640866))

(assert (= (and b!3640868 (not c!629533)) b!3640863))

(assert (= (and b!3640866 res!1475763) b!3640870))

(assert (= (and b!3640863 c!629532) b!3640862))

(assert (= (and b!3640863 (not c!629532)) b!3640865))

(assert (= (and b!3640862 res!1475765) b!3640869))

(assert (= (and b!3640865 (not res!1475766)) b!3640864))

(assert (= (and b!3640864 res!1475767) b!3640867))

(assert (= (or b!3640862 b!3640867) bm!263178))

(assert (= (or b!3640869 b!3640864) bm!263177))

(assert (= (or b!3640870 bm!263178) bm!263179))

(declare-fun m!4144005 () Bool)

(assert (=> bm!263177 m!4144005))

(declare-fun m!4144007 () Bool)

(assert (=> bm!263179 m!4144007))

(declare-fun m!4144009 () Bool)

(assert (=> b!3640866 m!4144009))

(assert (=> b!3640192 d!1070509))

(declare-fun d!1070511 () Bool)

(declare-fun lt!1260652 () Bool)

(assert (=> d!1070511 (= lt!1260652 (set.member lt!1260276 (content!5520 (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))))

(declare-fun e!2253814 () Bool)

(assert (=> d!1070511 (= lt!1260652 e!2253814)))

(declare-fun res!1475768 () Bool)

(assert (=> d!1070511 (=> (not res!1475768) (not e!2253814))))

(assert (=> d!1070511 (= res!1475768 (is-Cons!38365 (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))))

(assert (=> d!1070511 (= (contains!7527 (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260276) lt!1260652)))

(declare-fun b!3640871 () Bool)

(declare-fun e!2253815 () Bool)

(assert (=> b!3640871 (= e!2253814 e!2253815)))

(declare-fun res!1475769 () Bool)

(assert (=> b!3640871 (=> res!1475769 e!2253815)))

(assert (=> b!3640871 (= res!1475769 (= (h!43785 (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))) lt!1260276))))

(declare-fun b!3640872 () Bool)

(assert (=> b!3640872 (= e!2253815 (contains!7527 (t!296392 (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))) lt!1260276))))

(assert (= (and d!1070511 res!1475768) b!3640871))

(assert (= (and b!3640871 (not res!1475769)) b!3640872))

(assert (=> d!1070511 m!4143131))

(declare-fun m!4144011 () Bool)

(assert (=> d!1070511 m!4144011))

(declare-fun m!4144013 () Bool)

(assert (=> d!1070511 m!4144013))

(declare-fun m!4144015 () Bool)

(assert (=> b!3640872 m!4144015))

(assert (=> b!3640192 d!1070511))

(declare-fun c!629537 () Bool)

(declare-fun call!263185 () List!38489)

(declare-fun c!629534 () Bool)

(declare-fun bm!263180 () Bool)

(assert (=> bm!263180 (= call!263185 (usedCharacters!943 (ite c!629534 (reg!10819 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) (ite c!629537 (regOne!21493 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) (regTwo!21492 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))))))

(declare-fun b!3640873 () Bool)

(declare-fun e!2253817 () List!38489)

(assert (=> b!3640873 (= e!2253817 call!263185)))

(declare-fun b!3640874 () Bool)

(assert (=> b!3640874 (= c!629534 (is-Star!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun e!2253818 () List!38489)

(assert (=> b!3640874 (= e!2253818 e!2253817)))

(declare-fun bm!263181 () Bool)

(declare-fun call!263186 () List!38489)

(assert (=> bm!263181 (= call!263186 (usedCharacters!943 (ite c!629537 (regTwo!21493 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) (regOne!21492 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))))

(declare-fun b!3640875 () Bool)

(declare-fun e!2253816 () List!38489)

(assert (=> b!3640875 (= e!2253816 e!2253818)))

(declare-fun c!629535 () Bool)

(assert (=> b!3640875 (= c!629535 (is-ElementMatch!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun b!3640876 () Bool)

(declare-fun e!2253819 () List!38489)

(assert (=> b!3640876 (= e!2253817 e!2253819)))

(assert (=> b!3640876 (= c!629537 (is-Union!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))))))

(declare-fun b!3640877 () Bool)

(declare-fun call!263188 () List!38489)

(assert (=> b!3640877 (= e!2253819 call!263188)))

(declare-fun d!1070513 () Bool)

(declare-fun c!629536 () Bool)

(assert (=> d!1070513 (= c!629536 (or (is-EmptyExpr!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) (is-EmptyLang!10490 (regex!5731 (rule!8513 (_1!22251 lt!1260277))))))))

(assert (=> d!1070513 (= (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) e!2253816)))

(declare-fun b!3640878 () Bool)

(assert (=> b!3640878 (= e!2253818 (Cons!38365 (c!629420 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) Nil!38365))))

(declare-fun b!3640879 () Bool)

(assert (=> b!3640879 (= e!2253816 Nil!38365)))

(declare-fun bm!263182 () Bool)

(declare-fun call!263187 () List!38489)

(assert (=> bm!263182 (= call!263187 call!263185)))

(declare-fun b!3640880 () Bool)

(assert (=> b!3640880 (= e!2253819 call!263188)))

(declare-fun bm!263183 () Bool)

(assert (=> bm!263183 (= call!263188 (++!9547 (ite c!629537 call!263187 call!263186) (ite c!629537 call!263186 call!263187)))))

(assert (= (and d!1070513 c!629536) b!3640879))

(assert (= (and d!1070513 (not c!629536)) b!3640875))

(assert (= (and b!3640875 c!629535) b!3640878))

(assert (= (and b!3640875 (not c!629535)) b!3640874))

(assert (= (and b!3640874 c!629534) b!3640873))

(assert (= (and b!3640874 (not c!629534)) b!3640876))

(assert (= (and b!3640876 c!629537) b!3640880))

(assert (= (and b!3640876 (not c!629537)) b!3640877))

(assert (= (or b!3640880 b!3640877) bm!263182))

(assert (= (or b!3640880 b!3640877) bm!263181))

(assert (= (or b!3640880 b!3640877) bm!263183))

(assert (= (or b!3640873 bm!263182) bm!263180))

(declare-fun m!4144017 () Bool)

(assert (=> bm!263180 m!4144017))

(declare-fun m!4144019 () Bool)

(assert (=> bm!263181 m!4144019))

(declare-fun m!4144021 () Bool)

(assert (=> bm!263183 m!4144021))

(assert (=> b!3640192 d!1070513))

(declare-fun d!1070515 () Bool)

(assert (=> d!1070515 (not (contains!7527 (usedCharacters!943 (regex!5731 (rule!8513 (_1!22251 lt!1260277)))) lt!1260276))))

(declare-fun lt!1260655 () Unit!55207)

(declare-fun choose!21407 (LexerInterface!5320 List!38490 List!38490 Rule!11262 Rule!11262 C!21166) Unit!55207)

(assert (=> d!1070515 (= lt!1260655 (choose!21407 thiss!23823 rules!3307 rules!3307 (rule!8513 (_1!22251 lt!1260277)) rule!403 lt!1260276))))

(assert (=> d!1070515 (rulesInvariant!4717 thiss!23823 rules!3307)))

(assert (=> d!1070515 (= (lemmaNonSepRuleNotContainsCharContainedInASepRule!387 thiss!23823 rules!3307 rules!3307 (rule!8513 (_1!22251 lt!1260277)) rule!403 lt!1260276) lt!1260655)))

(declare-fun bs!571946 () Bool)

(assert (= bs!571946 d!1070515))

(assert (=> bs!571946 m!4143131))

(assert (=> bs!571946 m!4143131))

(assert (=> bs!571946 m!4143133))

(declare-fun m!4144023 () Bool)

(assert (=> bs!571946 m!4144023))

(assert (=> bs!571946 m!4143109))

(assert (=> b!3640192 d!1070515))

(declare-fun b!3640891 () Bool)

(declare-fun e!2253827 () Bool)

(declare-fun inv!15 (TokenValue!5961) Bool)

(assert (=> b!3640891 (= e!2253827 (inv!15 (value!183795 token!511)))))

(declare-fun b!3640892 () Bool)

(declare-fun e!2253826 () Bool)

(declare-fun inv!17 (TokenValue!5961) Bool)

(assert (=> b!3640892 (= e!2253826 (inv!17 (value!183795 token!511)))))

(declare-fun b!3640893 () Bool)

(declare-fun res!1475772 () Bool)

(assert (=> b!3640893 (=> res!1475772 e!2253827)))

(assert (=> b!3640893 (= res!1475772 (not (is-IntegerValue!17885 (value!183795 token!511))))))

(assert (=> b!3640893 (= e!2253826 e!2253827)))

(declare-fun b!3640894 () Bool)

(declare-fun e!2253828 () Bool)

(declare-fun inv!16 (TokenValue!5961) Bool)

(assert (=> b!3640894 (= e!2253828 (inv!16 (value!183795 token!511)))))

(declare-fun b!3640895 () Bool)

(assert (=> b!3640895 (= e!2253828 e!2253826)))

(declare-fun c!629544 () Bool)

(assert (=> b!3640895 (= c!629544 (is-IntegerValue!17884 (value!183795 token!511)))))

(declare-fun d!1070517 () Bool)

(declare-fun c!629543 () Bool)

(assert (=> d!1070517 (= c!629543 (is-IntegerValue!17883 (value!183795 token!511)))))

(assert (=> d!1070517 (= (inv!21 (value!183795 token!511)) e!2253828)))

(assert (= (and d!1070517 c!629543) b!3640894))

(assert (= (and d!1070517 (not c!629543)) b!3640895))

(assert (= (and b!3640895 c!629544) b!3640892))

(assert (= (and b!3640895 (not c!629544)) b!3640893))

(assert (= (and b!3640893 (not res!1475772)) b!3640891))

(declare-fun m!4144025 () Bool)

(assert (=> b!3640891 m!4144025))

(declare-fun m!4144027 () Bool)

(assert (=> b!3640892 m!4144027))

(declare-fun m!4144029 () Bool)

(assert (=> b!3640894 m!4144029))

(assert (=> b!3640214 d!1070517))

(declare-fun d!1070519 () Bool)

(assert (=> d!1070519 (not (matchR!5059 (regex!5731 rule!403) lt!1260282))))

(declare-fun lt!1260659 () Unit!55207)

(declare-fun choose!21408 (Regex!10490 List!38489 C!21166) Unit!55207)

(assert (=> d!1070519 (= lt!1260659 (choose!21408 (regex!5731 rule!403) lt!1260282 lt!1260276))))

(assert (=> d!1070519 (validRegex!4802 (regex!5731 rule!403))))

(assert (=> d!1070519 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!679 (regex!5731 rule!403) lt!1260282 lt!1260276) lt!1260659)))

(declare-fun bs!571947 () Bool)

(assert (= bs!571947 d!1070519))

(assert (=> bs!571947 m!4143169))

(declare-fun m!4144035 () Bool)

(assert (=> bs!571947 m!4144035))

(assert (=> bs!571947 m!4143695))

(assert (=> b!3640199 d!1070519))

(declare-fun d!1070521 () Bool)

(assert (=> d!1070521 (= (inv!51797 (tag!6479 (h!43786 rules!3307))) (= (mod (str.len (value!183794 (tag!6479 (h!43786 rules!3307)))) 2) 0))))

(assert (=> b!3640201 d!1070521))

(declare-fun d!1070523 () Bool)

(declare-fun res!1475773 () Bool)

(declare-fun e!2253833 () Bool)

(assert (=> d!1070523 (=> (not res!1475773) (not e!2253833))))

(assert (=> d!1070523 (= res!1475773 (semiInverseModEq!2440 (toChars!7882 (transformation!5731 (h!43786 rules!3307))) (toValue!8023 (transformation!5731 (h!43786 rules!3307)))))))

(assert (=> d!1070523 (= (inv!51800 (transformation!5731 (h!43786 rules!3307))) e!2253833)))

(declare-fun b!3640902 () Bool)

(assert (=> b!3640902 (= e!2253833 (equivClasses!2339 (toChars!7882 (transformation!5731 (h!43786 rules!3307))) (toValue!8023 (transformation!5731 (h!43786 rules!3307)))))))

(assert (= (and d!1070523 res!1475773) b!3640902))

(declare-fun m!4144037 () Bool)

(assert (=> d!1070523 m!4144037))

(declare-fun m!4144039 () Bool)

(assert (=> b!3640902 m!4144039))

(assert (=> b!3640201 d!1070523))

(declare-fun d!1070525 () Bool)

(declare-fun lt!1260660 () Bool)

(assert (=> d!1070525 (= lt!1260660 (set.member anOtherTypeRule!33 (content!5521 rules!3307)))))

(declare-fun e!2253837 () Bool)

(assert (=> d!1070525 (= lt!1260660 e!2253837)))

(declare-fun res!1475774 () Bool)

(assert (=> d!1070525 (=> (not res!1475774) (not e!2253837))))

(assert (=> d!1070525 (= res!1475774 (is-Cons!38366 rules!3307))))

(assert (=> d!1070525 (= (contains!7528 rules!3307 anOtherTypeRule!33) lt!1260660)))

(declare-fun b!3640905 () Bool)

(declare-fun e!2253836 () Bool)

(assert (=> b!3640905 (= e!2253837 e!2253836)))

(declare-fun res!1475775 () Bool)

(assert (=> b!3640905 (=> res!1475775 e!2253836)))

(assert (=> b!3640905 (= res!1475775 (= (h!43786 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3640906 () Bool)

(assert (=> b!3640906 (= e!2253836 (contains!7528 (t!296393 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1070525 res!1475774) b!3640905))

(assert (= (and b!3640905 (not res!1475775)) b!3640906))

(assert (=> d!1070525 m!4143377))

(declare-fun m!4144043 () Bool)

(assert (=> d!1070525 m!4144043))

(declare-fun m!4144045 () Bool)

(assert (=> b!3640906 m!4144045))

(assert (=> b!3640197 d!1070525))

(declare-fun d!1070527 () Bool)

(assert (=> d!1070527 (= (inv!51797 (tag!6479 anOtherTypeRule!33)) (= (mod (str.len (value!183794 (tag!6479 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3640198 d!1070527))

(declare-fun d!1070529 () Bool)

(declare-fun res!1475776 () Bool)

(declare-fun e!2253839 () Bool)

(assert (=> d!1070529 (=> (not res!1475776) (not e!2253839))))

(assert (=> d!1070529 (= res!1475776 (semiInverseModEq!2440 (toChars!7882 (transformation!5731 anOtherTypeRule!33)) (toValue!8023 (transformation!5731 anOtherTypeRule!33))))))

(assert (=> d!1070529 (= (inv!51800 (transformation!5731 anOtherTypeRule!33)) e!2253839)))

(declare-fun b!3640907 () Bool)

(assert (=> b!3640907 (= e!2253839 (equivClasses!2339 (toChars!7882 (transformation!5731 anOtherTypeRule!33)) (toValue!8023 (transformation!5731 anOtherTypeRule!33))))))

(assert (= (and d!1070529 res!1475776) b!3640907))

(declare-fun m!4144047 () Bool)

(assert (=> d!1070529 m!4144047))

(declare-fun m!4144049 () Bool)

(assert (=> b!3640907 m!4144049))

(assert (=> b!3640198 d!1070529))

(declare-fun b!3640912 () Bool)

(declare-fun e!2253842 () Bool)

(declare-fun tp!1110666 () Bool)

(assert (=> b!3640912 (= e!2253842 (and tp_is_empty!18063 tp!1110666))))

(assert (=> b!3640205 (= tp!1110602 e!2253842)))

(assert (= (and b!3640205 (is-Cons!38365 (t!296392 suffix!1395))) b!3640912))

(declare-fun b!3640926 () Bool)

(declare-fun e!2253845 () Bool)

(declare-fun tp!1110678 () Bool)

(declare-fun tp!1110681 () Bool)

(assert (=> b!3640926 (= e!2253845 (and tp!1110678 tp!1110681))))

(declare-fun b!3640924 () Bool)

(declare-fun tp!1110677 () Bool)

(declare-fun tp!1110680 () Bool)

(assert (=> b!3640924 (= e!2253845 (and tp!1110677 tp!1110680))))

(declare-fun b!3640925 () Bool)

(declare-fun tp!1110679 () Bool)

(assert (=> b!3640925 (= e!2253845 tp!1110679)))

(declare-fun b!3640923 () Bool)

(assert (=> b!3640923 (= e!2253845 tp_is_empty!18063)))

(assert (=> b!3640201 (= tp!1110595 e!2253845)))

(assert (= (and b!3640201 (is-ElementMatch!10490 (regex!5731 (h!43786 rules!3307)))) b!3640923))

(assert (= (and b!3640201 (is-Concat!16452 (regex!5731 (h!43786 rules!3307)))) b!3640924))

(assert (= (and b!3640201 (is-Star!10490 (regex!5731 (h!43786 rules!3307)))) b!3640925))

(assert (= (and b!3640201 (is-Union!10490 (regex!5731 (h!43786 rules!3307)))) b!3640926))

(declare-fun b!3640930 () Bool)

(declare-fun e!2253846 () Bool)

(declare-fun tp!1110683 () Bool)

(declare-fun tp!1110686 () Bool)

(assert (=> b!3640930 (= e!2253846 (and tp!1110683 tp!1110686))))

(declare-fun b!3640928 () Bool)

(declare-fun tp!1110682 () Bool)

(declare-fun tp!1110685 () Bool)

(assert (=> b!3640928 (= e!2253846 (and tp!1110682 tp!1110685))))

(declare-fun b!3640929 () Bool)

(declare-fun tp!1110684 () Bool)

(assert (=> b!3640929 (= e!2253846 tp!1110684)))

(declare-fun b!3640927 () Bool)

(assert (=> b!3640927 (= e!2253846 tp_is_empty!18063)))

(assert (=> b!3640186 (= tp!1110605 e!2253846)))

(assert (= (and b!3640186 (is-ElementMatch!10490 (regex!5731 rule!403))) b!3640927))

(assert (= (and b!3640186 (is-Concat!16452 (regex!5731 rule!403))) b!3640928))

(assert (= (and b!3640186 (is-Star!10490 (regex!5731 rule!403))) b!3640929))

(assert (= (and b!3640186 (is-Union!10490 (regex!5731 rule!403))) b!3640930))

(declare-fun b!3640941 () Bool)

(declare-fun b_free!95449 () Bool)

(declare-fun b_next!96153 () Bool)

(assert (=> b!3640941 (= b_free!95449 (not b_next!96153))))

(declare-fun t!296470 () Bool)

(declare-fun tb!209733 () Bool)

(assert (=> (and b!3640941 (= (toValue!8023 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296470) tb!209733))

(declare-fun result!255448 () Bool)

(assert (= result!255448 result!255416))

(assert (=> d!1070499 t!296470))

(declare-fun t!296472 () Bool)

(declare-fun tb!209735 () Bool)

(assert (=> (and b!3640941 (= (toValue!8023 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296472) tb!209735))

(declare-fun result!255450 () Bool)

(assert (= result!255450 result!255390))

(assert (=> d!1070445 t!296472))

(declare-fun t!296474 () Bool)

(declare-fun tb!209737 () Bool)

(assert (=> (and b!3640941 (= (toValue!8023 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toValue!8023 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296474) tb!209737))

(declare-fun result!255452 () Bool)

(assert (= result!255452 result!255408))

(assert (=> d!1070499 t!296474))

(assert (=> d!1070451 t!296474))

(assert (=> d!1070491 t!296474))

(declare-fun b_and!268379 () Bool)

(declare-fun tp!1110697 () Bool)

(assert (=> b!3640941 (= tp!1110697 (and (=> t!296470 result!255448) (=> t!296472 result!255450) (=> t!296474 result!255452) b_and!268379))))

(declare-fun b_free!95451 () Bool)

(declare-fun b_next!96155 () Bool)

(assert (=> b!3640941 (= b_free!95451 (not b_next!96155))))

(declare-fun tb!209739 () Bool)

(declare-fun t!296476 () Bool)

(assert (=> (and b!3640941 (= (toChars!7882 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toChars!7882 (transformation!5731 (rule!8513 token!511)))) t!296476) tb!209739))

(declare-fun result!255454 () Bool)

(assert (= result!255454 result!255362))

(assert (=> d!1070335 t!296476))

(declare-fun tb!209741 () Bool)

(declare-fun t!296478 () Bool)

(assert (=> (and b!3640941 (= (toChars!7882 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296478) tb!209741))

(declare-fun result!255456 () Bool)

(assert (= result!255456 result!255372))

(assert (=> d!1070351 t!296478))

(assert (=> b!3640601 t!296476))

(declare-fun tb!209743 () Bool)

(declare-fun t!296480 () Bool)

(assert (=> (and b!3640941 (= (toChars!7882 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toChars!7882 (transformation!5731 (rule!8513 (_1!22251 lt!1260277))))) t!296480) tb!209743))

(declare-fun result!255458 () Bool)

(assert (= result!255458 result!255400))

(assert (=> d!1070451 t!296480))

(declare-fun tp!1110696 () Bool)

(declare-fun b_and!268381 () Bool)

(assert (=> b!3640941 (= tp!1110696 (and (=> t!296476 result!255454) (=> t!296478 result!255456) (=> t!296480 result!255458) b_and!268381))))

(declare-fun e!2253858 () Bool)

(assert (=> b!3640941 (= e!2253858 (and tp!1110697 tp!1110696))))

(declare-fun b!3640940 () Bool)

(declare-fun e!2253855 () Bool)

(declare-fun tp!1110698 () Bool)

(assert (=> b!3640940 (= e!2253855 (and tp!1110698 (inv!51797 (tag!6479 (h!43786 (t!296393 rules!3307)))) (inv!51800 (transformation!5731 (h!43786 (t!296393 rules!3307)))) e!2253858))))

(declare-fun b!3640939 () Bool)

(declare-fun e!2253857 () Bool)

(declare-fun tp!1110695 () Bool)

(assert (=> b!3640939 (= e!2253857 (and e!2253855 tp!1110695))))

(assert (=> b!3640207 (= tp!1110601 e!2253857)))

(assert (= b!3640940 b!3640941))

(assert (= b!3640939 b!3640940))

(assert (= (and b!3640207 (is-Cons!38366 (t!296393 rules!3307))) b!3640939))

(declare-fun m!4144059 () Bool)

(assert (=> b!3640940 m!4144059))

(declare-fun m!4144061 () Bool)

(assert (=> b!3640940 m!4144061))

(declare-fun b!3640945 () Bool)

(declare-fun e!2253859 () Bool)

(declare-fun tp!1110700 () Bool)

(declare-fun tp!1110703 () Bool)

(assert (=> b!3640945 (= e!2253859 (and tp!1110700 tp!1110703))))

(declare-fun b!3640943 () Bool)

(declare-fun tp!1110699 () Bool)

(declare-fun tp!1110702 () Bool)

(assert (=> b!3640943 (= e!2253859 (and tp!1110699 tp!1110702))))

(declare-fun b!3640944 () Bool)

(declare-fun tp!1110701 () Bool)

(assert (=> b!3640944 (= e!2253859 tp!1110701)))

(declare-fun b!3640942 () Bool)

(assert (=> b!3640942 (= e!2253859 tp_is_empty!18063)))

(assert (=> b!3640182 (= tp!1110598 e!2253859)))

(assert (= (and b!3640182 (is-ElementMatch!10490 (regex!5731 (rule!8513 token!511)))) b!3640942))

(assert (= (and b!3640182 (is-Concat!16452 (regex!5731 (rule!8513 token!511)))) b!3640943))

(assert (= (and b!3640182 (is-Star!10490 (regex!5731 (rule!8513 token!511)))) b!3640944))

(assert (= (and b!3640182 (is-Union!10490 (regex!5731 (rule!8513 token!511)))) b!3640945))

(declare-fun b!3640946 () Bool)

(declare-fun e!2253860 () Bool)

(declare-fun tp!1110704 () Bool)

(assert (=> b!3640946 (= e!2253860 (and tp_is_empty!18063 tp!1110704))))

(assert (=> b!3640214 (= tp!1110607 e!2253860)))

(assert (= (and b!3640214 (is-Cons!38365 (originalCharacters!6445 token!511))) b!3640946))

(declare-fun b!3640950 () Bool)

(declare-fun e!2253861 () Bool)

(declare-fun tp!1110706 () Bool)

(declare-fun tp!1110709 () Bool)

(assert (=> b!3640950 (= e!2253861 (and tp!1110706 tp!1110709))))

(declare-fun b!3640948 () Bool)

(declare-fun tp!1110705 () Bool)

(declare-fun tp!1110708 () Bool)

(assert (=> b!3640948 (= e!2253861 (and tp!1110705 tp!1110708))))

(declare-fun b!3640949 () Bool)

(declare-fun tp!1110707 () Bool)

(assert (=> b!3640949 (= e!2253861 tp!1110707)))

(declare-fun b!3640947 () Bool)

(assert (=> b!3640947 (= e!2253861 tp_is_empty!18063)))

(assert (=> b!3640198 (= tp!1110608 e!2253861)))

(assert (= (and b!3640198 (is-ElementMatch!10490 (regex!5731 anOtherTypeRule!33))) b!3640947))

(assert (= (and b!3640198 (is-Concat!16452 (regex!5731 anOtherTypeRule!33))) b!3640948))

(assert (= (and b!3640198 (is-Star!10490 (regex!5731 anOtherTypeRule!33))) b!3640949))

(assert (= (and b!3640198 (is-Union!10490 (regex!5731 anOtherTypeRule!33))) b!3640950))

(declare-fun b_lambda!107925 () Bool)

(assert (= b_lambda!107899 (or (and b!3640213 b_free!95423 (= (toChars!7882 (transformation!5731 (h!43786 rules!3307))) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) (and b!3640217 b_free!95419) (and b!3640941 b_free!95451 (= (toChars!7882 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) (and b!3640200 b_free!95427 (= (toChars!7882 (transformation!5731 anOtherTypeRule!33)) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) (and b!3640188 b_free!95431 (= (toChars!7882 (transformation!5731 rule!403)) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) b_lambda!107925)))

(declare-fun b_lambda!107927 () Bool)

(assert (= b_lambda!107905 (or (and b!3640213 b_free!95423 (= (toChars!7882 (transformation!5731 (h!43786 rules!3307))) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) (and b!3640217 b_free!95419) (and b!3640941 b_free!95451 (= (toChars!7882 (transformation!5731 (h!43786 (t!296393 rules!3307)))) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) (and b!3640200 b_free!95427 (= (toChars!7882 (transformation!5731 anOtherTypeRule!33)) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) (and b!3640188 b_free!95431 (= (toChars!7882 (transformation!5731 rule!403)) (toChars!7882 (transformation!5731 (rule!8513 token!511))))) b_lambda!107927)))

(push 1)

(assert (not d!1070385))

(assert (not d!1070449))

(assert (not b!3640519))

(assert (not d!1070411))

(assert (not d!1070397))

(assert b_and!268379)

(assert (not b!3640622))

(assert (not b!3640369))

(assert (not b!3640334))

(assert (not b!3640427))

(assert (not bm!263133))

(assert (not b!3640930))

(assert (not b!3640894))

(assert (not b!3640628))

(assert (not d!1070409))

(assert (not b_next!96125))

(assert (not d!1070339))

(assert (not b!3640928))

(assert tp_is_empty!18063)

(assert (not d!1070381))

(assert (not bm!263170))

(assert (not b!3640395))

(assert (not b!3640723))

(assert (not b!3640528))

(assert (not d!1070523))

(assert (not b!3640627))

(assert (not d!1070451))

(assert (not b!3640525))

(assert (not d!1070519))

(assert (not d!1070357))

(assert (not b_lambda!107927))

(assert (not b!3640892))

(assert (not d!1070439))

(assert (not bm!263147))

(assert (not b!3640607))

(assert (not b!3640924))

(assert (not b!3640594))

(assert b_and!268349)

(assert (not b!3640929))

(assert b_and!268317)

(assert (not b!3640626))

(assert (not d!1070419))

(assert (not b_lambda!107901))

(assert (not tb!209661))

(assert (not d!1070391))

(assert (not b!3640393))

(assert (not b!3640523))

(assert b_and!268319)

(assert (not d!1070349))

(assert (not bm!263145))

(assert (not b!3640724))

(assert (not b!3640548))

(assert (not d!1070393))

(assert (not b!3640906))

(assert (not b!3640405))

(assert (not b_next!96123))

(assert (not b!3640613))

(assert (not bm!263183))

(assert (not b!3640520))

(assert (not bm!263167))

(assert (not d!1070331))

(assert (not b!3640585))

(assert (not d!1070335))

(assert (not b_lambda!107913))

(assert (not d!1070355))

(assert (not b!3640428))

(assert (not b!3640415))

(assert (not b!3640521))

(assert (not b!3640438))

(assert (not d!1070407))

(assert (not b_next!96155))

(assert (not b_next!96133))

(assert b_and!268321)

(assert (not b!3640823))

(assert (not b!3640718))

(assert (not b!3640593))

(assert (not d!1070423))

(assert (not bm!263180))

(assert (not bm!263179))

(assert (not b!3640605))

(assert (not tb!209709))

(assert (not d!1070383))

(assert (not b!3640587))

(assert (not b!3640389))

(assert (not b_next!96127))

(assert (not b!3640866))

(assert (not d!1070497))

(assert (not b!3640940))

(assert (not b!3640925))

(assert (not b_next!96129))

(assert (not b!3640602))

(assert (not d!1070413))

(assert (not bm!263135))

(assert (not b!3640614))

(assert (not b!3640430))

(assert (not d!1070503))

(assert (not b!3640891))

(assert (not b!3640517))

(assert (not b_lambda!107917))

(assert (not b!3640717))

(assert (not b!3640554))

(assert (not b!3640417))

(assert (not b!3640549))

(assert (not b!3640636))

(assert (not tb!209669))

(assert (not b!3640534))

(assert (not b!3640639))

(assert (not b!3640907))

(assert b_and!268315)

(assert b_and!268353)

(assert (not d!1070415))

(assert (not b_lambda!107911))

(assert (not d!1070329))

(assert (not d!1070525))

(assert (not b_next!96131))

(assert (not b!3640926))

(assert (not b!3640524))

(assert (not d!1070511))

(assert (not bm!263146))

(assert (not d!1070421))

(assert (not b!3640390))

(assert (not b!3640645))

(assert (not b!3640948))

(assert (not b!3640526))

(assert (not d!1070379))

(assert (not b!3640949))

(assert (not b_next!96135))

(assert (not bm!263168))

(assert b_and!268347)

(assert (not b!3640722))

(assert (not b!3640416))

(assert (not d!1070515))

(assert (not b!3640601))

(assert (not b!3640432))

(assert (not b!3640370))

(assert (not b!3640550))

(assert (not tb!209693))

(assert (not b!3640402))

(assert (not b!3640945))

(assert (not b!3640939))

(assert (not b!3640433))

(assert (not d!1070363))

(assert (not b!3640612))

(assert (not b!3640533))

(assert (not b!3640719))

(assert (not b!3640950))

(assert (not b!3640392))

(assert (not b!3640436))

(assert (not b!3640720))

(assert (not d!1070333))

(assert (not b!3640591))

(assert (not bm!263132))

(assert (not d!1070351))

(assert (not d!1070361))

(assert b_and!268381)

(assert (not b!3640946))

(assert (not b!3640650))

(assert (not b!3640364))

(assert (not b_lambda!107907))

(assert (not d!1070499))

(assert (not d!1070401))

(assert b_and!268351)

(assert (not b!3640512))

(assert (not b!3640611))

(assert (not d!1070319))

(assert (not d!1070387))

(assert (not b_lambda!107925))

(assert (not b!3640397))

(assert (not bm!263138))

(assert (not d!1070529))

(assert (not tb!209685))

(assert (not b!3640912))

(assert (not b!3640872))

(assert (not d!1070493))

(assert (not b!3640944))

(assert (not d!1070495))

(assert (not b!3640902))

(assert (not b!3640394))

(assert (not b_next!96121))

(assert (not b!3640617))

(assert (not b!3640391))

(assert (not b!3640513))

(assert (not b!3640592))

(assert (not bm!263142))

(assert (not bm!263181))

(assert (not b_lambda!107909))

(assert (not d!1070323))

(assert (not b!3640716))

(assert (not b!3640620))

(assert (not b!3640522))

(assert (not b!3640437))

(assert (not d!1070377))

(assert (not b_next!96153))

(assert (not b!3640629))

(assert (not b!3640833))

(assert (not tb!209701))

(assert (not b_lambda!107915))

(assert (not b!3640943))

(assert (not bm!263177))

(assert (not b!3640835))

(assert (not d!1070501))

(assert (not b!3640518))

(assert (not b!3640514))

(check-sat)

(pop 1)

(push 1)

(assert b_and!268379)

(assert (not b_next!96125))

(assert b_and!268319)

(assert (not b_next!96123))

(assert b_and!268321)

(assert (not b_next!96127))

(assert (not b_next!96129))

(assert (not b_next!96131))

(assert (not b_next!96135))

(assert b_and!268347)

(assert b_and!268381)

(assert b_and!268351)

(assert (not b_next!96121))

(assert (not b_next!96153))

(assert b_and!268349)

(assert b_and!268317)

(assert (not b_next!96155))

(assert (not b_next!96133))

(assert b_and!268315)

(assert b_and!268353)

(check-sat)

(pop 1)

