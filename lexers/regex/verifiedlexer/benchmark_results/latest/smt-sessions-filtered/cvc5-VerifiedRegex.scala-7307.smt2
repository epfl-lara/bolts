; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!389434 () Bool)

(assert start!389434)

(declare-fun b!4109612 () Bool)

(declare-fun b_free!115401 () Bool)

(declare-fun b_next!116105 () Bool)

(assert (=> b!4109612 (= b_free!115401 (not b_next!116105))))

(declare-fun tp!1248889 () Bool)

(declare-fun b_and!317263 () Bool)

(assert (=> b!4109612 (= tp!1248889 b_and!317263)))

(declare-fun b_free!115403 () Bool)

(declare-fun b_next!116107 () Bool)

(assert (=> b!4109612 (= b_free!115403 (not b_next!116107))))

(declare-fun tp!1248888 () Bool)

(declare-fun b_and!317265 () Bool)

(assert (=> b!4109612 (= tp!1248888 b_and!317265)))

(declare-fun b!4109604 () Bool)

(declare-fun b_free!115405 () Bool)

(declare-fun b_next!116109 () Bool)

(assert (=> b!4109604 (= b_free!115405 (not b_next!116109))))

(declare-fun tp!1248891 () Bool)

(declare-fun b_and!317267 () Bool)

(assert (=> b!4109604 (= tp!1248891 b_and!317267)))

(declare-fun b_free!115407 () Bool)

(declare-fun b_next!116111 () Bool)

(assert (=> b!4109604 (= b_free!115407 (not b_next!116111))))

(declare-fun tp!1248890 () Bool)

(declare-fun b_and!317269 () Bool)

(assert (=> b!4109604 (= tp!1248890 b_and!317269)))

(declare-fun b!4109602 () Bool)

(declare-fun res!1679164 () Bool)

(declare-fun e!2549559 () Bool)

(assert (=> b!4109602 (=> (not res!1679164) (not e!2549559))))

(declare-datatypes ((C!24366 0))(
  ( (C!24367 (val!14293 Int)) )
))
(declare-datatypes ((List!44340 0))(
  ( (Nil!44216) (Cons!44216 (h!49636 C!24366) (t!340061 List!44340)) )
))
(declare-datatypes ((IArray!26797 0))(
  ( (IArray!26798 (innerList!13456 List!44340)) )
))
(declare-datatypes ((Conc!13396 0))(
  ( (Node!13396 (left!33175 Conc!13396) (right!33505 Conc!13396) (csize!27022 Int) (cheight!13607 Int)) (Leaf!20704 (xs!16702 IArray!26797) (csize!27023 Int)) (Empty!13396) )
))
(declare-datatypes ((List!44341 0))(
  ( (Nil!44217) (Cons!44217 (h!49637 (_ BitVec 16)) (t!340062 List!44341)) )
))
(declare-datatypes ((Regex!12090 0))(
  ( (ElementMatch!12090 (c!706775 C!24366)) (Concat!19505 (regOne!24692 Regex!12090) (regTwo!24692 Regex!12090)) (EmptyExpr!12090) (Star!12090 (reg!12419 Regex!12090)) (EmptyLang!12090) (Union!12090 (regOne!24693 Regex!12090) (regTwo!24693 Regex!12090)) )
))
(declare-datatypes ((TokenValue!7415 0))(
  ( (FloatLiteralValue!14830 (text!52350 List!44341)) (TokenValueExt!7414 (__x!27047 Int)) (Broken!37075 (value!225360 List!44341)) (Object!7538) (End!7415) (Def!7415) (Underscore!7415) (Match!7415) (Else!7415) (Error!7415) (Case!7415) (If!7415) (Extends!7415) (Abstract!7415) (Class!7415) (Val!7415) (DelimiterValue!14830 (del!7475 List!44341)) (KeywordValue!7421 (value!225361 List!44341)) (CommentValue!14830 (value!225362 List!44341)) (WhitespaceValue!14830 (value!225363 List!44341)) (IndentationValue!7415 (value!225364 List!44341)) (String!50826) (Int32!7415) (Broken!37076 (value!225365 List!44341)) (Boolean!7416) (Unit!63683) (OperatorValue!7418 (op!7475 List!44341)) (IdentifierValue!14830 (value!225366 List!44341)) (IdentifierValue!14831 (value!225367 List!44341)) (WhitespaceValue!14831 (value!225368 List!44341)) (True!14830) (False!14830) (Broken!37077 (value!225369 List!44341)) (Broken!37078 (value!225370 List!44341)) (True!14831) (RightBrace!7415) (RightBracket!7415) (Colon!7415) (Null!7415) (Comma!7415) (LeftBracket!7415) (False!14831) (LeftBrace!7415) (ImaginaryLiteralValue!7415 (text!52351 List!44341)) (StringLiteralValue!22245 (value!225371 List!44341)) (EOFValue!7415 (value!225372 List!44341)) (IdentValue!7415 (value!225373 List!44341)) (DelimiterValue!14831 (value!225374 List!44341)) (DedentValue!7415 (value!225375 List!44341)) (NewLineValue!7415 (value!225376 List!44341)) (IntegerValue!22245 (value!225377 (_ BitVec 32)) (text!52352 List!44341)) (IntegerValue!22246 (value!225378 Int) (text!52353 List!44341)) (Times!7415) (Or!7415) (Equal!7415) (Minus!7415) (Broken!37079 (value!225379 List!44341)) (And!7415) (Div!7415) (LessEqual!7415) (Mod!7415) (Concat!19506) (Not!7415) (Plus!7415) (SpaceValue!7415 (value!225380 List!44341)) (IntegerValue!22247 (value!225381 Int) (text!52354 List!44341)) (StringLiteralValue!22246 (text!52355 List!44341)) (FloatLiteralValue!14831 (text!52356 List!44341)) (BytesLiteralValue!7415 (value!225382 List!44341)) (CommentValue!14831 (value!225383 List!44341)) (StringLiteralValue!22247 (value!225384 List!44341)) (ErrorTokenValue!7415 (msg!7476 List!44341)) )
))
(declare-datatypes ((BalanceConc!26386 0))(
  ( (BalanceConc!26387 (c!706776 Conc!13396)) )
))
(declare-datatypes ((TokenValueInjection!14258 0))(
  ( (TokenValueInjection!14259 (toValue!9813 Int) (toChars!9672 Int)) )
))
(declare-datatypes ((String!50827 0))(
  ( (String!50828 (value!225385 String)) )
))
(declare-datatypes ((Rule!14170 0))(
  ( (Rule!14171 (regex!7185 Regex!12090) (tag!8045 String!50827) (isSeparator!7185 Bool) (transformation!7185 TokenValueInjection!14258)) )
))
(declare-datatypes ((List!44342 0))(
  ( (Nil!44218) (Cons!44218 (h!49638 Rule!14170) (t!340063 List!44342)) )
))
(declare-fun rTail!27 () List!44342)

(assert (=> b!4109602 (= res!1679164 (is-Cons!44218 rTail!27))))

(declare-fun b!4109603 () Bool)

(declare-fun e!2549560 () Bool)

(assert (=> b!4109603 (= e!2549560 e!2549559)))

(declare-fun res!1679161 () Bool)

(assert (=> b!4109603 (=> (not res!1679161) (not e!2549559))))

(declare-datatypes ((LexerInterface!6774 0))(
  ( (LexerInterfaceExt!6771 (__x!27048 Int)) (Lexer!6772) )
))
(declare-fun thiss!26455 () LexerInterface!6774)

(declare-fun lt!1467968 () List!44342)

(declare-fun rulesInvariant!6117 (LexerInterface!6774 List!44342) Bool)

(assert (=> b!4109603 (= res!1679161 (rulesInvariant!6117 thiss!26455 lt!1467968))))

(declare-fun rHead!24 () Rule!14170)

(assert (=> b!4109603 (= lt!1467968 (Cons!44218 rHead!24 rTail!27))))

(declare-fun e!2549565 () Bool)

(assert (=> b!4109604 (= e!2549565 (and tp!1248891 tp!1248890))))

(declare-fun b!4109605 () Bool)

(declare-fun e!2549567 () Bool)

(declare-datatypes ((Token!13416 0))(
  ( (Token!13417 (value!225386 TokenValue!7415) (rule!10305 Rule!14170) (size!32886 Int) (originalCharacters!7739 List!44340)) )
))
(declare-datatypes ((tuple2!42938 0))(
  ( (tuple2!42939 (_1!24603 Token!13416) (_2!24603 List!44340)) )
))
(declare-datatypes ((Option!9551 0))(
  ( (None!9550) (Some!9550 (v!40082 tuple2!42938)) )
))
(declare-fun lt!1467971 () Option!9551)

(declare-fun get!14472 (Option!9551) tuple2!42938)

(assert (=> b!4109605 (= e!2549567 (not (= (rule!10305 (_1!24603 (get!14472 lt!1467971))) rHead!24)))))

(declare-fun b!4109606 () Bool)

(declare-fun e!2549561 () Bool)

(declare-fun e!2549568 () Bool)

(declare-fun tp!1248885 () Bool)

(assert (=> b!4109606 (= e!2549561 (and e!2549568 tp!1248885))))

(declare-fun e!2549564 () Bool)

(declare-fun tp!1248887 () Bool)

(declare-fun b!4109607 () Bool)

(declare-fun inv!58870 (String!50827) Bool)

(declare-fun inv!58873 (TokenValueInjection!14258) Bool)

(assert (=> b!4109607 (= e!2549564 (and tp!1248887 (inv!58870 (tag!8045 rHead!24)) (inv!58873 (transformation!7185 rHead!24)) e!2549565))))

(declare-fun b!4109608 () Bool)

(declare-fun e!2549563 () Bool)

(declare-fun tp_is_empty!21147 () Bool)

(declare-fun tp!1248892 () Bool)

(assert (=> b!4109608 (= e!2549563 (and tp_is_empty!21147 tp!1248892))))

(declare-fun b!4109609 () Bool)

(declare-fun e!2549569 () Bool)

(assert (=> b!4109609 (= e!2549569 e!2549567)))

(declare-fun res!1679159 () Bool)

(assert (=> b!4109609 (=> res!1679159 e!2549567)))

(declare-fun isEmpty!26400 (Option!9551) Bool)

(assert (=> b!4109609 (= res!1679159 (isEmpty!26400 lt!1467971))))

(declare-fun input!3491 () List!44340)

(declare-fun maxPrefix!4024 (LexerInterface!6774 List!44342 List!44340) Option!9551)

(assert (=> b!4109609 (= lt!1467971 (maxPrefix!4024 thiss!26455 rTail!27 input!3491))))

(declare-fun b!4109610 () Bool)

(declare-fun res!1679160 () Bool)

(assert (=> b!4109610 (=> (not res!1679160) (not e!2549560))))

(declare-fun isEmpty!26401 (List!44342) Bool)

(assert (=> b!4109610 (= res!1679160 (not (isEmpty!26401 rTail!27)))))

(declare-fun res!1679162 () Bool)

(assert (=> start!389434 (=> (not res!1679162) (not e!2549560))))

(assert (=> start!389434 (= res!1679162 (is-Lexer!6772 thiss!26455))))

(assert (=> start!389434 e!2549560))

(assert (=> start!389434 true))

(assert (=> start!389434 e!2549561))

(assert (=> start!389434 e!2549563))

(assert (=> start!389434 e!2549564))

(declare-fun b!4109611 () Bool)

(assert (=> b!4109611 (= e!2549559 (not e!2549569))))

(declare-fun res!1679163 () Bool)

(assert (=> b!4109611 (=> res!1679163 e!2549569)))

(assert (=> b!4109611 (= res!1679163 (not (isEmpty!26401 (t!340063 rTail!27))))))

(assert (=> b!4109611 (not (= (tag!8045 rHead!24) (tag!8045 (h!49638 rTail!27))))))

(declare-datatypes ((Unit!63684 0))(
  ( (Unit!63685) )
))
(declare-fun lt!1467969 () Unit!63684)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!45 (LexerInterface!6774 List!44342 Rule!14170 Rule!14170) Unit!63684)

(assert (=> b!4109611 (= lt!1467969 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!45 thiss!26455 lt!1467968 rHead!24 (h!49638 rTail!27)))))

(declare-datatypes ((List!44343 0))(
  ( (Nil!44219) (Cons!44219 (h!49639 String!50827) (t!340064 List!44343)) )
))
(declare-fun noDuplicateTag!2862 (LexerInterface!6774 List!44342 List!44343) Bool)

(assert (=> b!4109611 (noDuplicateTag!2862 thiss!26455 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))) Nil!44219)))

(declare-fun lt!1467970 () Unit!63684)

(declare-fun lemmaNoDuplicateCanReorder!57 (LexerInterface!6774 Rule!14170 Rule!14170 List!44342) Unit!63684)

(assert (=> b!4109611 (= lt!1467970 (lemmaNoDuplicateCanReorder!57 thiss!26455 rHead!24 (h!49638 rTail!27) (t!340063 rTail!27)))))

(declare-fun e!2549558 () Bool)

(assert (=> b!4109612 (= e!2549558 (and tp!1248889 tp!1248888))))

(declare-fun tp!1248886 () Bool)

(declare-fun b!4109613 () Bool)

(assert (=> b!4109613 (= e!2549568 (and tp!1248886 (inv!58870 (tag!8045 (h!49638 rTail!27))) (inv!58873 (transformation!7185 (h!49638 rTail!27))) e!2549558))))

(assert (= (and start!389434 res!1679162) b!4109610))

(assert (= (and b!4109610 res!1679160) b!4109603))

(assert (= (and b!4109603 res!1679161) b!4109602))

(assert (= (and b!4109602 res!1679164) b!4109611))

(assert (= (and b!4109611 (not res!1679163)) b!4109609))

(assert (= (and b!4109609 (not res!1679159)) b!4109605))

(assert (= b!4109613 b!4109612))

(assert (= b!4109606 b!4109613))

(assert (= (and start!389434 (is-Cons!44218 rTail!27)) b!4109606))

(assert (= (and start!389434 (is-Cons!44216 input!3491)) b!4109608))

(assert (= b!4109607 b!4109604))

(assert (= start!389434 b!4109607))

(declare-fun m!4712121 () Bool)

(assert (=> b!4109613 m!4712121))

(declare-fun m!4712123 () Bool)

(assert (=> b!4109613 m!4712123))

(declare-fun m!4712125 () Bool)

(assert (=> b!4109610 m!4712125))

(declare-fun m!4712127 () Bool)

(assert (=> b!4109609 m!4712127))

(declare-fun m!4712129 () Bool)

(assert (=> b!4109609 m!4712129))

(declare-fun m!4712131 () Bool)

(assert (=> b!4109611 m!4712131))

(declare-fun m!4712133 () Bool)

(assert (=> b!4109611 m!4712133))

(declare-fun m!4712135 () Bool)

(assert (=> b!4109611 m!4712135))

(declare-fun m!4712137 () Bool)

(assert (=> b!4109611 m!4712137))

(declare-fun m!4712139 () Bool)

(assert (=> b!4109605 m!4712139))

(declare-fun m!4712141 () Bool)

(assert (=> b!4109607 m!4712141))

(declare-fun m!4712143 () Bool)

(assert (=> b!4109607 m!4712143))

(declare-fun m!4712145 () Bool)

(assert (=> b!4109603 m!4712145))

(push 1)

(assert (not b!4109611))

(assert (not b_next!116105))

(assert b_and!317265)

(assert (not b!4109606))

(assert (not b!4109613))

(assert (not b!4109608))

(assert (not b!4109605))

(assert (not b!4109610))

(assert (not b_next!116109))

(assert (not b!4109603))

(assert (not b_next!116111))

(assert b_and!317267)

(assert (not b!4109607))

(assert b_and!317263)

(assert b_and!317269)

(assert (not b!4109609))

(assert tp_is_empty!21147)

(assert (not b_next!116107))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116105))

(assert b_and!317265)

(assert (not b_next!116109))

(assert (not b_next!116111))

(assert b_and!317267)

(assert b_and!317263)

(assert b_and!317269)

(assert (not b_next!116107))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1219364 () Bool)

(assert (=> d!1219364 (= (inv!58870 (tag!8045 (h!49638 rTail!27))) (= (mod (str.len (value!225385 (tag!8045 (h!49638 rTail!27)))) 2) 0))))

(assert (=> b!4109613 d!1219364))

(declare-fun d!1219366 () Bool)

(declare-fun res!1679192 () Bool)

(declare-fun e!2549608 () Bool)

(assert (=> d!1219366 (=> (not res!1679192) (not e!2549608))))

(declare-fun semiInverseModEq!3096 (Int Int) Bool)

(assert (=> d!1219366 (= res!1679192 (semiInverseModEq!3096 (toChars!9672 (transformation!7185 (h!49638 rTail!27))) (toValue!9813 (transformation!7185 (h!49638 rTail!27)))))))

(assert (=> d!1219366 (= (inv!58873 (transformation!7185 (h!49638 rTail!27))) e!2549608)))

(declare-fun b!4109652 () Bool)

(declare-fun equivClasses!2995 (Int Int) Bool)

(assert (=> b!4109652 (= e!2549608 (equivClasses!2995 (toChars!9672 (transformation!7185 (h!49638 rTail!27))) (toValue!9813 (transformation!7185 (h!49638 rTail!27)))))))

(assert (= (and d!1219366 res!1679192) b!4109652))

(declare-fun m!4712173 () Bool)

(assert (=> d!1219366 m!4712173))

(declare-fun m!4712175 () Bool)

(assert (=> b!4109652 m!4712175))

(assert (=> b!4109613 d!1219366))

(declare-fun d!1219368 () Bool)

(assert (=> d!1219368 (= (inv!58870 (tag!8045 rHead!24)) (= (mod (str.len (value!225385 (tag!8045 rHead!24))) 2) 0))))

(assert (=> b!4109607 d!1219368))

(declare-fun d!1219370 () Bool)

(declare-fun res!1679193 () Bool)

(declare-fun e!2549609 () Bool)

(assert (=> d!1219370 (=> (not res!1679193) (not e!2549609))))

(assert (=> d!1219370 (= res!1679193 (semiInverseModEq!3096 (toChars!9672 (transformation!7185 rHead!24)) (toValue!9813 (transformation!7185 rHead!24))))))

(assert (=> d!1219370 (= (inv!58873 (transformation!7185 rHead!24)) e!2549609)))

(declare-fun b!4109653 () Bool)

(assert (=> b!4109653 (= e!2549609 (equivClasses!2995 (toChars!9672 (transformation!7185 rHead!24)) (toValue!9813 (transformation!7185 rHead!24))))))

(assert (= (and d!1219370 res!1679193) b!4109653))

(declare-fun m!4712177 () Bool)

(assert (=> d!1219370 m!4712177))

(declare-fun m!4712179 () Bool)

(assert (=> b!4109653 m!4712179))

(assert (=> b!4109607 d!1219370))

(declare-fun d!1219372 () Bool)

(assert (=> d!1219372 (= (isEmpty!26401 (t!340063 rTail!27)) (is-Nil!44218 (t!340063 rTail!27)))))

(assert (=> b!4109611 d!1219372))

(declare-fun d!1219374 () Bool)

(assert (=> d!1219374 (not (= (tag!8045 rHead!24) (tag!8045 (h!49638 rTail!27))))))

(declare-fun lt!1467986 () Unit!63684)

(declare-fun choose!25130 (LexerInterface!6774 List!44342 Rule!14170 Rule!14170) Unit!63684)

(assert (=> d!1219374 (= lt!1467986 (choose!25130 thiss!26455 lt!1467968 rHead!24 (h!49638 rTail!27)))))

(declare-fun contains!8869 (List!44342 Rule!14170) Bool)

(assert (=> d!1219374 (contains!8869 lt!1467968 rHead!24)))

(assert (=> d!1219374 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!45 thiss!26455 lt!1467968 rHead!24 (h!49638 rTail!27)) lt!1467986)))

(declare-fun bs!594227 () Bool)

(assert (= bs!594227 d!1219374))

(declare-fun m!4712181 () Bool)

(assert (=> bs!594227 m!4712181))

(declare-fun m!4712183 () Bool)

(assert (=> bs!594227 m!4712183))

(assert (=> b!4109611 d!1219374))

(declare-fun d!1219376 () Bool)

(declare-fun res!1679198 () Bool)

(declare-fun e!2549614 () Bool)

(assert (=> d!1219376 (=> res!1679198 e!2549614)))

(assert (=> d!1219376 (= res!1679198 (is-Nil!44218 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))))))

(assert (=> d!1219376 (= (noDuplicateTag!2862 thiss!26455 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))) Nil!44219) e!2549614)))

(declare-fun b!4109658 () Bool)

(declare-fun e!2549615 () Bool)

(assert (=> b!4109658 (= e!2549614 e!2549615)))

(declare-fun res!1679199 () Bool)

(assert (=> b!4109658 (=> (not res!1679199) (not e!2549615))))

(declare-fun contains!8870 (List!44343 String!50827) Bool)

(assert (=> b!4109658 (= res!1679199 (not (contains!8870 Nil!44219 (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))))))))

(declare-fun b!4109659 () Bool)

(assert (=> b!4109659 (= e!2549615 (noDuplicateTag!2862 thiss!26455 (t!340063 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))) (Cons!44219 (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))) Nil!44219)))))

(assert (= (and d!1219376 (not res!1679198)) b!4109658))

(assert (= (and b!4109658 res!1679199) b!4109659))

(declare-fun m!4712185 () Bool)

(assert (=> b!4109658 m!4712185))

(declare-fun m!4712187 () Bool)

(assert (=> b!4109659 m!4712187))

(assert (=> b!4109611 d!1219376))

(declare-fun d!1219384 () Bool)

(assert (=> d!1219384 (noDuplicateTag!2862 thiss!26455 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))) Nil!44219)))

(declare-fun lt!1467992 () Unit!63684)

(declare-fun choose!25131 (LexerInterface!6774 Rule!14170 Rule!14170 List!44342) Unit!63684)

(assert (=> d!1219384 (= lt!1467992 (choose!25131 thiss!26455 rHead!24 (h!49638 rTail!27) (t!340063 rTail!27)))))

(assert (=> d!1219384 (noDuplicateTag!2862 thiss!26455 (Cons!44218 rHead!24 (Cons!44218 (h!49638 rTail!27) (t!340063 rTail!27))) Nil!44219)))

(assert (=> d!1219384 (= (lemmaNoDuplicateCanReorder!57 thiss!26455 rHead!24 (h!49638 rTail!27) (t!340063 rTail!27)) lt!1467992)))

(declare-fun bs!594229 () Bool)

(assert (= bs!594229 d!1219384))

(assert (=> bs!594229 m!4712135))

(declare-fun m!4712193 () Bool)

(assert (=> bs!594229 m!4712193))

(declare-fun m!4712195 () Bool)

(assert (=> bs!594229 m!4712195))

(assert (=> b!4109611 d!1219384))

(declare-fun d!1219388 () Bool)

(assert (=> d!1219388 (= (get!14472 lt!1467971) (v!40082 lt!1467971))))

(assert (=> b!4109605 d!1219388))

(declare-fun d!1219390 () Bool)

(assert (=> d!1219390 (= (isEmpty!26401 rTail!27) (is-Nil!44218 rTail!27))))

(assert (=> b!4109610 d!1219390))

(declare-fun d!1219392 () Bool)

(assert (=> d!1219392 (= (isEmpty!26400 lt!1467971) (not (is-Some!9550 lt!1467971)))))

(assert (=> b!4109609 d!1219392))

(declare-fun b!4109691 () Bool)

(declare-fun e!2549637 () Option!9551)

(declare-fun lt!1468009 () Option!9551)

(declare-fun lt!1468008 () Option!9551)

(assert (=> b!4109691 (= e!2549637 (ite (and (is-None!9550 lt!1468009) (is-None!9550 lt!1468008)) None!9550 (ite (is-None!9550 lt!1468008) lt!1468009 (ite (is-None!9550 lt!1468009) lt!1468008 (ite (>= (size!32886 (_1!24603 (v!40082 lt!1468009))) (size!32886 (_1!24603 (v!40082 lt!1468008)))) lt!1468009 lt!1468008)))))))

(declare-fun call!289831 () Option!9551)

(assert (=> b!4109691 (= lt!1468009 call!289831)))

(assert (=> b!4109691 (= lt!1468008 (maxPrefix!4024 thiss!26455 (t!340063 rTail!27) input!3491))))

(declare-fun b!4109692 () Bool)

(declare-fun res!1679231 () Bool)

(declare-fun e!2549636 () Bool)

(assert (=> b!4109692 (=> (not res!1679231) (not e!2549636))))

(declare-fun lt!1468006 () Option!9551)

(declare-fun size!32888 (List!44340) Int)

(assert (=> b!4109692 (= res!1679231 (< (size!32888 (_2!24603 (get!14472 lt!1468006))) (size!32888 input!3491)))))

(declare-fun b!4109693 () Bool)

(declare-fun res!1679232 () Bool)

(assert (=> b!4109693 (=> (not res!1679232) (not e!2549636))))

(declare-fun matchR!5979 (Regex!12090 List!44340) Bool)

(declare-fun list!16325 (BalanceConc!26386) List!44340)

(declare-fun charsOf!4883 (Token!13416) BalanceConc!26386)

(assert (=> b!4109693 (= res!1679232 (matchR!5979 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))) (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun d!1219394 () Bool)

(declare-fun e!2549635 () Bool)

(assert (=> d!1219394 e!2549635))

(declare-fun res!1679229 () Bool)

(assert (=> d!1219394 (=> res!1679229 e!2549635)))

(assert (=> d!1219394 (= res!1679229 (isEmpty!26400 lt!1468006))))

(assert (=> d!1219394 (= lt!1468006 e!2549637)))

(declare-fun c!706782 () Bool)

(assert (=> d!1219394 (= c!706782 (and (is-Cons!44218 rTail!27) (is-Nil!44218 (t!340063 rTail!27))))))

(declare-fun lt!1468007 () Unit!63684)

(declare-fun lt!1468010 () Unit!63684)

(assert (=> d!1219394 (= lt!1468007 lt!1468010)))

(declare-fun isPrefix!4168 (List!44340 List!44340) Bool)

(assert (=> d!1219394 (isPrefix!4168 input!3491 input!3491)))

(declare-fun lemmaIsPrefixRefl!2719 (List!44340 List!44340) Unit!63684)

(assert (=> d!1219394 (= lt!1468010 (lemmaIsPrefixRefl!2719 input!3491 input!3491))))

(declare-fun rulesValidInductive!2666 (LexerInterface!6774 List!44342) Bool)

(assert (=> d!1219394 (rulesValidInductive!2666 thiss!26455 rTail!27)))

(assert (=> d!1219394 (= (maxPrefix!4024 thiss!26455 rTail!27 input!3491) lt!1468006)))

(declare-fun b!4109694 () Bool)

(declare-fun res!1679228 () Bool)

(assert (=> b!4109694 (=> (not res!1679228) (not e!2549636))))

(declare-fun ++!11539 (List!44340 List!44340) List!44340)

(assert (=> b!4109694 (= res!1679228 (= (++!11539 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))) (_2!24603 (get!14472 lt!1468006))) input!3491))))

(declare-fun b!4109695 () Bool)

(declare-fun res!1679233 () Bool)

(assert (=> b!4109695 (=> (not res!1679233) (not e!2549636))))

(assert (=> b!4109695 (= res!1679233 (= (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))) (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006)))))))

(declare-fun b!4109696 () Bool)

(declare-fun res!1679230 () Bool)

(assert (=> b!4109696 (=> (not res!1679230) (not e!2549636))))

(declare-fun apply!10316 (TokenValueInjection!14258 BalanceConc!26386) TokenValue!7415)

(declare-fun seqFromList!5350 (List!44340) BalanceConc!26386)

(assert (=> b!4109696 (= res!1679230 (= (value!225386 (_1!24603 (get!14472 lt!1468006))) (apply!10316 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))) (seqFromList!5350 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006)))))))))

(declare-fun b!4109697 () Bool)

(assert (=> b!4109697 (= e!2549637 call!289831)))

(declare-fun b!4109698 () Bool)

(assert (=> b!4109698 (= e!2549636 (contains!8869 rTail!27 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))))

(declare-fun b!4109699 () Bool)

(assert (=> b!4109699 (= e!2549635 e!2549636)))

(declare-fun res!1679227 () Bool)

(assert (=> b!4109699 (=> (not res!1679227) (not e!2549636))))

(declare-fun isDefined!7217 (Option!9551) Bool)

(assert (=> b!4109699 (= res!1679227 (isDefined!7217 lt!1468006))))

(declare-fun bm!289826 () Bool)

(declare-fun maxPrefixOneRule!2990 (LexerInterface!6774 Rule!14170 List!44340) Option!9551)

(assert (=> bm!289826 (= call!289831 (maxPrefixOneRule!2990 thiss!26455 (h!49638 rTail!27) input!3491))))

(assert (= (and d!1219394 c!706782) b!4109697))

(assert (= (and d!1219394 (not c!706782)) b!4109691))

(assert (= (or b!4109697 b!4109691) bm!289826))

(assert (= (and d!1219394 (not res!1679229)) b!4109699))

(assert (= (and b!4109699 res!1679227) b!4109695))

(assert (= (and b!4109695 res!1679233) b!4109692))

(assert (= (and b!4109692 res!1679231) b!4109694))

(assert (= (and b!4109694 res!1679228) b!4109696))

(assert (= (and b!4109696 res!1679230) b!4109693))

(assert (= (and b!4109693 res!1679232) b!4109698))

(declare-fun m!4712217 () Bool)

(assert (=> b!4109693 m!4712217))

(declare-fun m!4712219 () Bool)

(assert (=> b!4109693 m!4712219))

(assert (=> b!4109693 m!4712219))

(declare-fun m!4712221 () Bool)

(assert (=> b!4109693 m!4712221))

(assert (=> b!4109693 m!4712221))

(declare-fun m!4712223 () Bool)

(assert (=> b!4109693 m!4712223))

(declare-fun m!4712225 () Bool)

(assert (=> b!4109699 m!4712225))

(assert (=> b!4109694 m!4712217))

(assert (=> b!4109694 m!4712219))

(assert (=> b!4109694 m!4712219))

(assert (=> b!4109694 m!4712221))

(assert (=> b!4109694 m!4712221))

(declare-fun m!4712227 () Bool)

(assert (=> b!4109694 m!4712227))

(declare-fun m!4712229 () Bool)

(assert (=> d!1219394 m!4712229))

(declare-fun m!4712231 () Bool)

(assert (=> d!1219394 m!4712231))

(declare-fun m!4712233 () Bool)

(assert (=> d!1219394 m!4712233))

(declare-fun m!4712235 () Bool)

(assert (=> d!1219394 m!4712235))

(declare-fun m!4712237 () Bool)

(assert (=> b!4109691 m!4712237))

(assert (=> b!4109692 m!4712217))

(declare-fun m!4712239 () Bool)

(assert (=> b!4109692 m!4712239))

(declare-fun m!4712241 () Bool)

(assert (=> b!4109692 m!4712241))

(assert (=> b!4109695 m!4712217))

(assert (=> b!4109695 m!4712219))

(assert (=> b!4109695 m!4712219))

(assert (=> b!4109695 m!4712221))

(assert (=> b!4109696 m!4712217))

(declare-fun m!4712243 () Bool)

(assert (=> b!4109696 m!4712243))

(assert (=> b!4109696 m!4712243))

(declare-fun m!4712245 () Bool)

(assert (=> b!4109696 m!4712245))

(declare-fun m!4712247 () Bool)

(assert (=> bm!289826 m!4712247))

(assert (=> b!4109698 m!4712217))

(declare-fun m!4712249 () Bool)

(assert (=> b!4109698 m!4712249))

(assert (=> b!4109609 d!1219394))

(declare-fun d!1219412 () Bool)

(declare-fun res!1679236 () Bool)

(declare-fun e!2549640 () Bool)

(assert (=> d!1219412 (=> (not res!1679236) (not e!2549640))))

(declare-fun rulesValid!2831 (LexerInterface!6774 List!44342) Bool)

(assert (=> d!1219412 (= res!1679236 (rulesValid!2831 thiss!26455 lt!1467968))))

(assert (=> d!1219412 (= (rulesInvariant!6117 thiss!26455 lt!1467968) e!2549640)))

(declare-fun b!4109702 () Bool)

(assert (=> b!4109702 (= e!2549640 (noDuplicateTag!2862 thiss!26455 lt!1467968 Nil!44219))))

(assert (= (and d!1219412 res!1679236) b!4109702))

(declare-fun m!4712251 () Bool)

(assert (=> d!1219412 m!4712251))

(declare-fun m!4712253 () Bool)

(assert (=> b!4109702 m!4712253))

(assert (=> b!4109603 d!1219412))

(declare-fun b!4109707 () Bool)

(declare-fun e!2549643 () Bool)

(declare-fun tp!1248919 () Bool)

(assert (=> b!4109707 (= e!2549643 (and tp_is_empty!21147 tp!1248919))))

(assert (=> b!4109608 (= tp!1248892 e!2549643)))

(assert (= (and b!4109608 (is-Cons!44216 (t!340061 input!3491))) b!4109707))

(declare-fun b!4109718 () Bool)

(declare-fun e!2549646 () Bool)

(assert (=> b!4109718 (= e!2549646 tp_is_empty!21147)))

(declare-fun b!4109719 () Bool)

(declare-fun tp!1248934 () Bool)

(declare-fun tp!1248931 () Bool)

(assert (=> b!4109719 (= e!2549646 (and tp!1248934 tp!1248931))))

(declare-fun b!4109721 () Bool)

(declare-fun tp!1248932 () Bool)

(declare-fun tp!1248930 () Bool)

(assert (=> b!4109721 (= e!2549646 (and tp!1248932 tp!1248930))))

(assert (=> b!4109613 (= tp!1248886 e!2549646)))

(declare-fun b!4109720 () Bool)

(declare-fun tp!1248933 () Bool)

(assert (=> b!4109720 (= e!2549646 tp!1248933)))

(assert (= (and b!4109613 (is-ElementMatch!12090 (regex!7185 (h!49638 rTail!27)))) b!4109718))

(assert (= (and b!4109613 (is-Concat!19505 (regex!7185 (h!49638 rTail!27)))) b!4109719))

(assert (= (and b!4109613 (is-Star!12090 (regex!7185 (h!49638 rTail!27)))) b!4109720))

(assert (= (and b!4109613 (is-Union!12090 (regex!7185 (h!49638 rTail!27)))) b!4109721))

(declare-fun b!4109722 () Bool)

(declare-fun e!2549647 () Bool)

(assert (=> b!4109722 (= e!2549647 tp_is_empty!21147)))

(declare-fun b!4109723 () Bool)

(declare-fun tp!1248939 () Bool)

(declare-fun tp!1248936 () Bool)

(assert (=> b!4109723 (= e!2549647 (and tp!1248939 tp!1248936))))

(declare-fun b!4109725 () Bool)

(declare-fun tp!1248937 () Bool)

(declare-fun tp!1248935 () Bool)

(assert (=> b!4109725 (= e!2549647 (and tp!1248937 tp!1248935))))

(assert (=> b!4109607 (= tp!1248887 e!2549647)))

(declare-fun b!4109724 () Bool)

(declare-fun tp!1248938 () Bool)

(assert (=> b!4109724 (= e!2549647 tp!1248938)))

(assert (= (and b!4109607 (is-ElementMatch!12090 (regex!7185 rHead!24))) b!4109722))

(assert (= (and b!4109607 (is-Concat!19505 (regex!7185 rHead!24))) b!4109723))

(assert (= (and b!4109607 (is-Star!12090 (regex!7185 rHead!24))) b!4109724))

(assert (= (and b!4109607 (is-Union!12090 (regex!7185 rHead!24))) b!4109725))

(declare-fun b!4109736 () Bool)

(declare-fun b_free!115417 () Bool)

(declare-fun b_next!116121 () Bool)

(assert (=> b!4109736 (= b_free!115417 (not b_next!116121))))

(declare-fun tp!1248948 () Bool)

(declare-fun b_and!317279 () Bool)

(assert (=> b!4109736 (= tp!1248948 b_and!317279)))

(declare-fun b_free!115419 () Bool)

(declare-fun b_next!116123 () Bool)

(assert (=> b!4109736 (= b_free!115419 (not b_next!116123))))

(declare-fun tp!1248951 () Bool)

(declare-fun b_and!317281 () Bool)

(assert (=> b!4109736 (= tp!1248951 b_and!317281)))

(declare-fun e!2549656 () Bool)

(assert (=> b!4109736 (= e!2549656 (and tp!1248948 tp!1248951))))

(declare-fun tp!1248949 () Bool)

(declare-fun b!4109735 () Bool)

(declare-fun e!2549658 () Bool)

(assert (=> b!4109735 (= e!2549658 (and tp!1248949 (inv!58870 (tag!8045 (h!49638 (t!340063 rTail!27)))) (inv!58873 (transformation!7185 (h!49638 (t!340063 rTail!27)))) e!2549656))))

(declare-fun b!4109734 () Bool)

(declare-fun e!2549657 () Bool)

(declare-fun tp!1248950 () Bool)

(assert (=> b!4109734 (= e!2549657 (and e!2549658 tp!1248950))))

(assert (=> b!4109606 (= tp!1248885 e!2549657)))

(assert (= b!4109735 b!4109736))

(assert (= b!4109734 b!4109735))

(assert (= (and b!4109606 (is-Cons!44218 (t!340063 rTail!27))) b!4109734))

(declare-fun m!4712255 () Bool)

(assert (=> b!4109735 m!4712255))

(declare-fun m!4712257 () Bool)

(assert (=> b!4109735 m!4712257))

(push 1)

(assert (not b_next!116105))

(assert (not b!4109653))

(assert (not d!1219384))

(assert (not b_next!116121))

(assert (not d!1219370))

(assert (not bm!289826))

(assert (not b_next!116111))

(assert (not b!4109698))

(assert (not b!4109724))

(assert (not b!4109734))

(assert (not b!4109696))

(assert (not b!4109707))

(assert (not b_next!116107))

(assert b_and!317265)

(assert (not d!1219412))

(assert (not b!4109735))

(assert (not b!4109723))

(assert (not b!4109720))

(assert b_and!317281)

(assert (not d!1219374))

(assert (not b!4109721))

(assert (not b_next!116109))

(assert (not b!4109658))

(assert (not b!4109691))

(assert b_and!317267)

(assert (not b!4109695))

(assert (not b!4109659))

(assert (not b!4109694))

(assert b_and!317263)

(assert (not b!4109725))

(assert (not b_next!116123))

(assert b_and!317269)

(assert (not b!4109719))

(assert (not b!4109693))

(assert (not b!4109652))

(assert (not b!4109702))

(assert tp_is_empty!21147)

(assert (not b!4109692))

(assert b_and!317279)

(assert (not d!1219394))

(assert (not b!4109699))

(assert (not d!1219366))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116105))

(assert b_and!317265)

(assert (not b_next!116121))

(assert b_and!317281)

(assert (not b_next!116109))

(assert (not b_next!116111))

(assert b_and!317267)

(assert b_and!317263)

(assert (not b_next!116107))

(assert b_and!317279)

(assert (not b_next!116123))

(assert b_and!317269)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1219416 () Bool)

(assert (=> d!1219416 true))

(declare-fun order!23279 () Int)

(declare-fun order!23281 () Int)

(declare-fun lambda!128410 () Int)

(declare-fun dynLambda!18922 (Int Int) Int)

(declare-fun dynLambda!18923 (Int Int) Int)

(assert (=> d!1219416 (< (dynLambda!18922 order!23279 (toValue!9813 (transformation!7185 (h!49638 rTail!27)))) (dynLambda!18923 order!23281 lambda!128410))))

(declare-fun Forall2!1133 (Int) Bool)

(assert (=> d!1219416 (= (equivClasses!2995 (toChars!9672 (transformation!7185 (h!49638 rTail!27))) (toValue!9813 (transformation!7185 (h!49638 rTail!27)))) (Forall2!1133 lambda!128410))))

(declare-fun bs!594231 () Bool)

(assert (= bs!594231 d!1219416))

(declare-fun m!4712307 () Bool)

(assert (=> bs!594231 m!4712307))

(assert (=> b!4109652 d!1219416))

(declare-fun b!4109885 () Bool)

(declare-fun res!1679329 () Bool)

(declare-fun e!2549740 () Bool)

(assert (=> b!4109885 (=> (not res!1679329) (not e!2549740))))

(declare-fun lt!1468052 () Option!9551)

(assert (=> b!4109885 (= res!1679329 (= (value!225386 (_1!24603 (get!14472 lt!1468052))) (apply!10316 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468052)))) (seqFromList!5350 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468052)))))))))

(declare-fun b!4109886 () Bool)

(declare-fun e!2549737 () Option!9551)

(declare-datatypes ((tuple2!42942 0))(
  ( (tuple2!42943 (_1!24605 List!44340) (_2!24605 List!44340)) )
))
(declare-fun lt!1468051 () tuple2!42942)

(declare-fun size!32890 (BalanceConc!26386) Int)

(assert (=> b!4109886 (= e!2549737 (Some!9550 (tuple2!42939 (Token!13417 (apply!10316 (transformation!7185 (h!49638 rTail!27)) (seqFromList!5350 (_1!24605 lt!1468051))) (h!49638 rTail!27) (size!32890 (seqFromList!5350 (_1!24605 lt!1468051))) (_1!24605 lt!1468051)) (_2!24605 lt!1468051))))))

(declare-fun lt!1468053 () Unit!63684)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1452 (Regex!12090 List!44340) Unit!63684)

(assert (=> b!4109886 (= lt!1468053 (longestMatchIsAcceptedByMatchOrIsEmpty!1452 (regex!7185 (h!49638 rTail!27)) input!3491))))

(declare-fun res!1679330 () Bool)

(declare-fun isEmpty!26404 (List!44340) Bool)

(declare-fun findLongestMatchInner!1479 (Regex!12090 List!44340 Int List!44340 List!44340 Int) tuple2!42942)

(assert (=> b!4109886 (= res!1679330 (isEmpty!26404 (_1!24605 (findLongestMatchInner!1479 (regex!7185 (h!49638 rTail!27)) Nil!44216 (size!32888 Nil!44216) input!3491 input!3491 (size!32888 input!3491)))))))

(declare-fun e!2549739 () Bool)

(assert (=> b!4109886 (=> res!1679330 e!2549739)))

(assert (=> b!4109886 e!2549739))

(declare-fun lt!1468050 () Unit!63684)

(assert (=> b!4109886 (= lt!1468050 lt!1468053)))

(declare-fun lt!1468054 () Unit!63684)

(declare-fun lemmaSemiInverse!2092 (TokenValueInjection!14258 BalanceConc!26386) Unit!63684)

(assert (=> b!4109886 (= lt!1468054 (lemmaSemiInverse!2092 (transformation!7185 (h!49638 rTail!27)) (seqFromList!5350 (_1!24605 lt!1468051))))))

(declare-fun b!4109887 () Bool)

(assert (=> b!4109887 (= e!2549737 None!9550)))

(declare-fun d!1219420 () Bool)

(declare-fun e!2549738 () Bool)

(assert (=> d!1219420 e!2549738))

(declare-fun res!1679331 () Bool)

(assert (=> d!1219420 (=> res!1679331 e!2549738)))

(assert (=> d!1219420 (= res!1679331 (isEmpty!26400 lt!1468052))))

(assert (=> d!1219420 (= lt!1468052 e!2549737)))

(declare-fun c!706797 () Bool)

(assert (=> d!1219420 (= c!706797 (isEmpty!26404 (_1!24605 lt!1468051)))))

(declare-fun findLongestMatch!1392 (Regex!12090 List!44340) tuple2!42942)

(assert (=> d!1219420 (= lt!1468051 (findLongestMatch!1392 (regex!7185 (h!49638 rTail!27)) input!3491))))

(declare-fun ruleValid!3054 (LexerInterface!6774 Rule!14170) Bool)

(assert (=> d!1219420 (ruleValid!3054 thiss!26455 (h!49638 rTail!27))))

(assert (=> d!1219420 (= (maxPrefixOneRule!2990 thiss!26455 (h!49638 rTail!27) input!3491) lt!1468052)))

(declare-fun b!4109888 () Bool)

(assert (=> b!4109888 (= e!2549740 (= (size!32886 (_1!24603 (get!14472 lt!1468052))) (size!32888 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468052))))))))

(declare-fun b!4109889 () Bool)

(declare-fun res!1679327 () Bool)

(assert (=> b!4109889 (=> (not res!1679327) (not e!2549740))))

(assert (=> b!4109889 (= res!1679327 (= (rule!10305 (_1!24603 (get!14472 lt!1468052))) (h!49638 rTail!27)))))

(declare-fun b!4109890 () Bool)

(assert (=> b!4109890 (= e!2549738 e!2549740)))

(declare-fun res!1679326 () Bool)

(assert (=> b!4109890 (=> (not res!1679326) (not e!2549740))))

(assert (=> b!4109890 (= res!1679326 (matchR!5979 (regex!7185 (h!49638 rTail!27)) (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468052))))))))

(declare-fun b!4109891 () Bool)

(declare-fun res!1679328 () Bool)

(assert (=> b!4109891 (=> (not res!1679328) (not e!2549740))))

(assert (=> b!4109891 (= res!1679328 (< (size!32888 (_2!24603 (get!14472 lt!1468052))) (size!32888 input!3491)))))

(declare-fun b!4109892 () Bool)

(assert (=> b!4109892 (= e!2549739 (matchR!5979 (regex!7185 (h!49638 rTail!27)) (_1!24605 (findLongestMatchInner!1479 (regex!7185 (h!49638 rTail!27)) Nil!44216 (size!32888 Nil!44216) input!3491 input!3491 (size!32888 input!3491)))))))

(declare-fun b!4109893 () Bool)

(declare-fun res!1679332 () Bool)

(assert (=> b!4109893 (=> (not res!1679332) (not e!2549740))))

(assert (=> b!4109893 (= res!1679332 (= (++!11539 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468052)))) (_2!24603 (get!14472 lt!1468052))) input!3491))))

(assert (= (and d!1219420 c!706797) b!4109887))

(assert (= (and d!1219420 (not c!706797)) b!4109886))

(assert (= (and b!4109886 (not res!1679330)) b!4109892))

(assert (= (and d!1219420 (not res!1679331)) b!4109890))

(assert (= (and b!4109890 res!1679326) b!4109893))

(assert (= (and b!4109893 res!1679332) b!4109891))

(assert (= (and b!4109891 res!1679328) b!4109889))

(assert (= (and b!4109889 res!1679327) b!4109885))

(assert (= (and b!4109885 res!1679329) b!4109888))

(declare-fun m!4712337 () Bool)

(assert (=> b!4109889 m!4712337))

(assert (=> b!4109885 m!4712337))

(declare-fun m!4712339 () Bool)

(assert (=> b!4109885 m!4712339))

(assert (=> b!4109885 m!4712339))

(declare-fun m!4712341 () Bool)

(assert (=> b!4109885 m!4712341))

(declare-fun m!4712343 () Bool)

(assert (=> b!4109886 m!4712343))

(declare-fun m!4712345 () Bool)

(assert (=> b!4109886 m!4712345))

(assert (=> b!4109886 m!4712345))

(declare-fun m!4712347 () Bool)

(assert (=> b!4109886 m!4712347))

(declare-fun m!4712349 () Bool)

(assert (=> b!4109886 m!4712349))

(assert (=> b!4109886 m!4712241))

(declare-fun m!4712351 () Bool)

(assert (=> b!4109886 m!4712351))

(assert (=> b!4109886 m!4712241))

(declare-fun m!4712353 () Bool)

(assert (=> b!4109886 m!4712353))

(assert (=> b!4109886 m!4712345))

(declare-fun m!4712355 () Bool)

(assert (=> b!4109886 m!4712355))

(assert (=> b!4109886 m!4712351))

(assert (=> b!4109886 m!4712345))

(declare-fun m!4712357 () Bool)

(assert (=> b!4109886 m!4712357))

(assert (=> b!4109888 m!4712337))

(declare-fun m!4712359 () Bool)

(assert (=> b!4109888 m!4712359))

(declare-fun m!4712361 () Bool)

(assert (=> d!1219420 m!4712361))

(declare-fun m!4712363 () Bool)

(assert (=> d!1219420 m!4712363))

(declare-fun m!4712365 () Bool)

(assert (=> d!1219420 m!4712365))

(declare-fun m!4712367 () Bool)

(assert (=> d!1219420 m!4712367))

(assert (=> b!4109893 m!4712337))

(declare-fun m!4712369 () Bool)

(assert (=> b!4109893 m!4712369))

(assert (=> b!4109893 m!4712369))

(declare-fun m!4712371 () Bool)

(assert (=> b!4109893 m!4712371))

(assert (=> b!4109893 m!4712371))

(declare-fun m!4712373 () Bool)

(assert (=> b!4109893 m!4712373))

(assert (=> b!4109892 m!4712351))

(assert (=> b!4109892 m!4712241))

(assert (=> b!4109892 m!4712351))

(assert (=> b!4109892 m!4712241))

(assert (=> b!4109892 m!4712353))

(declare-fun m!4712375 () Bool)

(assert (=> b!4109892 m!4712375))

(assert (=> b!4109891 m!4712337))

(declare-fun m!4712377 () Bool)

(assert (=> b!4109891 m!4712377))

(assert (=> b!4109891 m!4712241))

(assert (=> b!4109890 m!4712337))

(assert (=> b!4109890 m!4712369))

(assert (=> b!4109890 m!4712369))

(assert (=> b!4109890 m!4712371))

(assert (=> b!4109890 m!4712371))

(declare-fun m!4712379 () Bool)

(assert (=> b!4109890 m!4712379))

(assert (=> bm!289826 d!1219420))

(declare-fun d!1219440 () Bool)

(assert (=> d!1219440 (= (isDefined!7217 lt!1468006) (not (isEmpty!26400 lt!1468006)))))

(declare-fun bs!594235 () Bool)

(assert (= bs!594235 d!1219440))

(assert (=> bs!594235 m!4712229))

(assert (=> b!4109699 d!1219440))

(declare-fun d!1219442 () Bool)

(assert (=> d!1219442 true))

(declare-fun lambda!128413 () Int)

(declare-fun order!23285 () Int)

(declare-fun order!23283 () Int)

(declare-fun dynLambda!18924 (Int Int) Int)

(declare-fun dynLambda!18925 (Int Int) Int)

(assert (=> d!1219442 (< (dynLambda!18924 order!23283 (toChars!9672 (transformation!7185 rHead!24))) (dynLambda!18925 order!23285 lambda!128413))))

(assert (=> d!1219442 true))

(assert (=> d!1219442 (< (dynLambda!18922 order!23279 (toValue!9813 (transformation!7185 rHead!24))) (dynLambda!18925 order!23285 lambda!128413))))

(declare-fun Forall!1534 (Int) Bool)

(assert (=> d!1219442 (= (semiInverseModEq!3096 (toChars!9672 (transformation!7185 rHead!24)) (toValue!9813 (transformation!7185 rHead!24))) (Forall!1534 lambda!128413))))

(declare-fun bs!594236 () Bool)

(assert (= bs!594236 d!1219442))

(declare-fun m!4712381 () Bool)

(assert (=> bs!594236 m!4712381))

(assert (=> d!1219370 d!1219442))

(declare-fun bs!594237 () Bool)

(declare-fun d!1219444 () Bool)

(assert (= bs!594237 (and d!1219444 d!1219442)))

(declare-fun lambda!128414 () Int)

(assert (=> bs!594237 (= (and (= (toChars!9672 (transformation!7185 (h!49638 rTail!27))) (toChars!9672 (transformation!7185 rHead!24))) (= (toValue!9813 (transformation!7185 (h!49638 rTail!27))) (toValue!9813 (transformation!7185 rHead!24)))) (= lambda!128414 lambda!128413))))

(assert (=> d!1219444 true))

(assert (=> d!1219444 (< (dynLambda!18924 order!23283 (toChars!9672 (transformation!7185 (h!49638 rTail!27)))) (dynLambda!18925 order!23285 lambda!128414))))

(assert (=> d!1219444 true))

(assert (=> d!1219444 (< (dynLambda!18922 order!23279 (toValue!9813 (transformation!7185 (h!49638 rTail!27)))) (dynLambda!18925 order!23285 lambda!128414))))

(assert (=> d!1219444 (= (semiInverseModEq!3096 (toChars!9672 (transformation!7185 (h!49638 rTail!27))) (toValue!9813 (transformation!7185 (h!49638 rTail!27)))) (Forall!1534 lambda!128414))))

(declare-fun bs!594238 () Bool)

(assert (= bs!594238 d!1219444))

(declare-fun m!4712383 () Bool)

(assert (=> bs!594238 m!4712383))

(assert (=> d!1219366 d!1219444))

(declare-fun d!1219446 () Bool)

(declare-fun lt!1468057 () Bool)

(declare-fun content!6820 (List!44342) (Set Rule!14170))

(assert (=> d!1219446 (= lt!1468057 (set.member (rule!10305 (_1!24603 (get!14472 lt!1468006))) (content!6820 rTail!27)))))

(declare-fun e!2549746 () Bool)

(assert (=> d!1219446 (= lt!1468057 e!2549746)))

(declare-fun res!1679338 () Bool)

(assert (=> d!1219446 (=> (not res!1679338) (not e!2549746))))

(assert (=> d!1219446 (= res!1679338 (is-Cons!44218 rTail!27))))

(assert (=> d!1219446 (= (contains!8869 rTail!27 (rule!10305 (_1!24603 (get!14472 lt!1468006)))) lt!1468057)))

(declare-fun b!4109902 () Bool)

(declare-fun e!2549745 () Bool)

(assert (=> b!4109902 (= e!2549746 e!2549745)))

(declare-fun res!1679337 () Bool)

(assert (=> b!4109902 (=> res!1679337 e!2549745)))

(assert (=> b!4109902 (= res!1679337 (= (h!49638 rTail!27) (rule!10305 (_1!24603 (get!14472 lt!1468006)))))))

(declare-fun b!4109903 () Bool)

(assert (=> b!4109903 (= e!2549745 (contains!8869 (t!340063 rTail!27) (rule!10305 (_1!24603 (get!14472 lt!1468006)))))))

(assert (= (and d!1219446 res!1679338) b!4109902))

(assert (= (and b!4109902 (not res!1679337)) b!4109903))

(declare-fun m!4712385 () Bool)

(assert (=> d!1219446 m!4712385))

(declare-fun m!4712387 () Bool)

(assert (=> d!1219446 m!4712387))

(declare-fun m!4712389 () Bool)

(assert (=> b!4109903 m!4712389))

(assert (=> b!4109698 d!1219446))

(declare-fun d!1219448 () Bool)

(assert (=> d!1219448 (= (get!14472 lt!1468006) (v!40082 lt!1468006))))

(assert (=> b!4109698 d!1219448))

(declare-fun d!1219450 () Bool)

(declare-fun res!1679339 () Bool)

(declare-fun e!2549747 () Bool)

(assert (=> d!1219450 (=> res!1679339 e!2549747)))

(assert (=> d!1219450 (= res!1679339 (is-Nil!44218 lt!1467968))))

(assert (=> d!1219450 (= (noDuplicateTag!2862 thiss!26455 lt!1467968 Nil!44219) e!2549747)))

(declare-fun b!4109904 () Bool)

(declare-fun e!2549748 () Bool)

(assert (=> b!4109904 (= e!2549747 e!2549748)))

(declare-fun res!1679340 () Bool)

(assert (=> b!4109904 (=> (not res!1679340) (not e!2549748))))

(assert (=> b!4109904 (= res!1679340 (not (contains!8870 Nil!44219 (tag!8045 (h!49638 lt!1467968)))))))

(declare-fun b!4109905 () Bool)

(assert (=> b!4109905 (= e!2549748 (noDuplicateTag!2862 thiss!26455 (t!340063 lt!1467968) (Cons!44219 (tag!8045 (h!49638 lt!1467968)) Nil!44219)))))

(assert (= (and d!1219450 (not res!1679339)) b!4109904))

(assert (= (and b!4109904 res!1679340) b!4109905))

(declare-fun m!4712391 () Bool)

(assert (=> b!4109904 m!4712391))

(declare-fun m!4712393 () Bool)

(assert (=> b!4109905 m!4712393))

(assert (=> b!4109702 d!1219450))

(declare-fun d!1219452 () Bool)

(assert (=> d!1219452 (not (= (tag!8045 rHead!24) (tag!8045 (h!49638 rTail!27))))))

(assert (=> d!1219452 true))

(declare-fun _$71!180 () Unit!63684)

(assert (=> d!1219452 (= (choose!25130 thiss!26455 lt!1467968 rHead!24 (h!49638 rTail!27)) _$71!180)))

(assert (=> d!1219374 d!1219452))

(declare-fun d!1219454 () Bool)

(declare-fun lt!1468058 () Bool)

(assert (=> d!1219454 (= lt!1468058 (set.member rHead!24 (content!6820 lt!1467968)))))

(declare-fun e!2549750 () Bool)

(assert (=> d!1219454 (= lt!1468058 e!2549750)))

(declare-fun res!1679342 () Bool)

(assert (=> d!1219454 (=> (not res!1679342) (not e!2549750))))

(assert (=> d!1219454 (= res!1679342 (is-Cons!44218 lt!1467968))))

(assert (=> d!1219454 (= (contains!8869 lt!1467968 rHead!24) lt!1468058)))

(declare-fun b!4109906 () Bool)

(declare-fun e!2549749 () Bool)

(assert (=> b!4109906 (= e!2549750 e!2549749)))

(declare-fun res!1679341 () Bool)

(assert (=> b!4109906 (=> res!1679341 e!2549749)))

(assert (=> b!4109906 (= res!1679341 (= (h!49638 lt!1467968) rHead!24))))

(declare-fun b!4109907 () Bool)

(assert (=> b!4109907 (= e!2549749 (contains!8869 (t!340063 lt!1467968) rHead!24))))

(assert (= (and d!1219454 res!1679342) b!4109906))

(assert (= (and b!4109906 (not res!1679341)) b!4109907))

(declare-fun m!4712395 () Bool)

(assert (=> d!1219454 m!4712395))

(declare-fun m!4712397 () Bool)

(assert (=> d!1219454 m!4712397))

(declare-fun m!4712399 () Bool)

(assert (=> b!4109907 m!4712399))

(assert (=> d!1219374 d!1219454))

(assert (=> b!4109696 d!1219448))

(declare-fun d!1219456 () Bool)

(declare-fun dynLambda!18926 (Int BalanceConc!26386) TokenValue!7415)

(assert (=> d!1219456 (= (apply!10316 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))) (seqFromList!5350 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006))))) (dynLambda!18926 (toValue!9813 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))) (seqFromList!5350 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun b_lambda!120625 () Bool)

(assert (=> (not b_lambda!120625) (not d!1219456)))

(declare-fun tb!246951 () Bool)

(declare-fun t!340076 () Bool)

(assert (=> (and b!4109612 (= (toValue!9813 (transformation!7185 (h!49638 rTail!27))) (toValue!9813 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340076) tb!246951))

(declare-fun result!299810 () Bool)

(declare-fun inv!21 (TokenValue!7415) Bool)

(assert (=> tb!246951 (= result!299810 (inv!21 (dynLambda!18926 (toValue!9813 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))) (seqFromList!5350 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006)))))))))

(declare-fun m!4712401 () Bool)

(assert (=> tb!246951 m!4712401))

(assert (=> d!1219456 t!340076))

(declare-fun b_and!317293 () Bool)

(assert (= b_and!317263 (and (=> t!340076 result!299810) b_and!317293)))

(declare-fun t!340078 () Bool)

(declare-fun tb!246953 () Bool)

(assert (=> (and b!4109604 (= (toValue!9813 (transformation!7185 rHead!24)) (toValue!9813 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340078) tb!246953))

(declare-fun result!299814 () Bool)

(assert (= result!299814 result!299810))

(assert (=> d!1219456 t!340078))

(declare-fun b_and!317295 () Bool)

(assert (= b_and!317267 (and (=> t!340078 result!299814) b_and!317295)))

(declare-fun tb!246955 () Bool)

(declare-fun t!340080 () Bool)

(assert (=> (and b!4109736 (= (toValue!9813 (transformation!7185 (h!49638 (t!340063 rTail!27)))) (toValue!9813 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340080) tb!246955))

(declare-fun result!299816 () Bool)

(assert (= result!299816 result!299810))

(assert (=> d!1219456 t!340080))

(declare-fun b_and!317297 () Bool)

(assert (= b_and!317279 (and (=> t!340080 result!299816) b_and!317297)))

(assert (=> d!1219456 m!4712243))

(declare-fun m!4712403 () Bool)

(assert (=> d!1219456 m!4712403))

(assert (=> b!4109696 d!1219456))

(declare-fun d!1219458 () Bool)

(declare-fun fromListB!2453 (List!44340) BalanceConc!26386)

(assert (=> d!1219458 (= (seqFromList!5350 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006)))) (fromListB!2453 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006)))))))

(declare-fun bs!594239 () Bool)

(assert (= bs!594239 d!1219458))

(declare-fun m!4712405 () Bool)

(assert (=> bs!594239 m!4712405))

(assert (=> b!4109696 d!1219458))

(declare-fun d!1219460 () Bool)

(declare-fun list!16327 (Conc!13396) List!44340)

(assert (=> d!1219460 (= (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))) (list!16327 (c!706776 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun bs!594240 () Bool)

(assert (= bs!594240 d!1219460))

(declare-fun m!4712407 () Bool)

(assert (=> bs!594240 m!4712407))

(assert (=> b!4109695 d!1219460))

(declare-fun d!1219462 () Bool)

(declare-fun lt!1468061 () BalanceConc!26386)

(assert (=> d!1219462 (= (list!16325 lt!1468061) (originalCharacters!7739 (_1!24603 (get!14472 lt!1468006))))))

(declare-fun dynLambda!18927 (Int TokenValue!7415) BalanceConc!26386)

(assert (=> d!1219462 (= lt!1468061 (dynLambda!18927 (toChars!9672 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))) (value!225386 (_1!24603 (get!14472 lt!1468006)))))))

(assert (=> d!1219462 (= (charsOf!4883 (_1!24603 (get!14472 lt!1468006))) lt!1468061)))

(declare-fun b_lambda!120627 () Bool)

(assert (=> (not b_lambda!120627) (not d!1219462)))

(declare-fun t!340082 () Bool)

(declare-fun tb!246957 () Bool)

(assert (=> (and b!4109612 (= (toChars!9672 (transformation!7185 (h!49638 rTail!27))) (toChars!9672 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340082) tb!246957))

(declare-fun b!4109914 () Bool)

(declare-fun e!2549756 () Bool)

(declare-fun tp!1248992 () Bool)

(declare-fun inv!58875 (Conc!13396) Bool)

(assert (=> b!4109914 (= e!2549756 (and (inv!58875 (c!706776 (dynLambda!18927 (toChars!9672 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))) (value!225386 (_1!24603 (get!14472 lt!1468006)))))) tp!1248992))))

(declare-fun result!299818 () Bool)

(declare-fun inv!58876 (BalanceConc!26386) Bool)

(assert (=> tb!246957 (= result!299818 (and (inv!58876 (dynLambda!18927 (toChars!9672 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))) (value!225386 (_1!24603 (get!14472 lt!1468006))))) e!2549756))))

(assert (= tb!246957 b!4109914))

(declare-fun m!4712409 () Bool)

(assert (=> b!4109914 m!4712409))

(declare-fun m!4712411 () Bool)

(assert (=> tb!246957 m!4712411))

(assert (=> d!1219462 t!340082))

(declare-fun b_and!317299 () Bool)

(assert (= b_and!317265 (and (=> t!340082 result!299818) b_and!317299)))

(declare-fun t!340084 () Bool)

(declare-fun tb!246959 () Bool)

(assert (=> (and b!4109604 (= (toChars!9672 (transformation!7185 rHead!24)) (toChars!9672 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340084) tb!246959))

(declare-fun result!299822 () Bool)

(assert (= result!299822 result!299818))

(assert (=> d!1219462 t!340084))

(declare-fun b_and!317301 () Bool)

(assert (= b_and!317269 (and (=> t!340084 result!299822) b_and!317301)))

(declare-fun t!340086 () Bool)

(declare-fun tb!246961 () Bool)

(assert (=> (and b!4109736 (= (toChars!9672 (transformation!7185 (h!49638 (t!340063 rTail!27)))) (toChars!9672 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340086) tb!246961))

(declare-fun result!299824 () Bool)

(assert (= result!299824 result!299818))

(assert (=> d!1219462 t!340086))

(declare-fun b_and!317303 () Bool)

(assert (= b_and!317281 (and (=> t!340086 result!299824) b_and!317303)))

(declare-fun m!4712413 () Bool)

(assert (=> d!1219462 m!4712413))

(declare-fun m!4712415 () Bool)

(assert (=> d!1219462 m!4712415))

(assert (=> b!4109695 d!1219462))

(assert (=> b!4109695 d!1219448))

(declare-fun d!1219464 () Bool)

(declare-fun res!1679343 () Bool)

(declare-fun e!2549757 () Bool)

(assert (=> d!1219464 (=> res!1679343 e!2549757)))

(assert (=> d!1219464 (= res!1679343 (is-Nil!44218 (t!340063 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))))))

(assert (=> d!1219464 (= (noDuplicateTag!2862 thiss!26455 (t!340063 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))) (Cons!44219 (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))) Nil!44219)) e!2549757)))

(declare-fun b!4109915 () Bool)

(declare-fun e!2549758 () Bool)

(assert (=> b!4109915 (= e!2549757 e!2549758)))

(declare-fun res!1679344 () Bool)

(assert (=> b!4109915 (=> (not res!1679344) (not e!2549758))))

(assert (=> b!4109915 (= res!1679344 (not (contains!8870 (Cons!44219 (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))) Nil!44219) (tag!8045 (h!49638 (t!340063 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))))))))))

(declare-fun b!4109916 () Bool)

(assert (=> b!4109916 (= e!2549758 (noDuplicateTag!2862 thiss!26455 (t!340063 (t!340063 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))) (Cons!44219 (tag!8045 (h!49638 (t!340063 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))))) (Cons!44219 (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))) Nil!44219))))))

(assert (= (and d!1219464 (not res!1679343)) b!4109915))

(assert (= (and b!4109915 res!1679344) b!4109916))

(declare-fun m!4712417 () Bool)

(assert (=> b!4109915 m!4712417))

(declare-fun m!4712419 () Bool)

(assert (=> b!4109916 m!4712419))

(assert (=> b!4109659 d!1219464))

(declare-fun d!1219466 () Bool)

(declare-fun e!2549763 () Bool)

(assert (=> d!1219466 e!2549763))

(declare-fun res!1679350 () Bool)

(assert (=> d!1219466 (=> (not res!1679350) (not e!2549763))))

(declare-fun lt!1468064 () List!44340)

(declare-fun content!6821 (List!44340) (Set C!24366))

(assert (=> d!1219466 (= res!1679350 (= (content!6821 lt!1468064) (set.union (content!6821 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))) (content!6821 (_2!24603 (get!14472 lt!1468006))))))))

(declare-fun e!2549764 () List!44340)

(assert (=> d!1219466 (= lt!1468064 e!2549764)))

(declare-fun c!706800 () Bool)

(assert (=> d!1219466 (= c!706800 (is-Nil!44216 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))))))

(assert (=> d!1219466 (= (++!11539 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))) (_2!24603 (get!14472 lt!1468006))) lt!1468064)))

(declare-fun b!4109927 () Bool)

(declare-fun res!1679349 () Bool)

(assert (=> b!4109927 (=> (not res!1679349) (not e!2549763))))

(assert (=> b!4109927 (= res!1679349 (= (size!32888 lt!1468064) (+ (size!32888 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))) (size!32888 (_2!24603 (get!14472 lt!1468006))))))))

(declare-fun b!4109926 () Bool)

(assert (=> b!4109926 (= e!2549764 (Cons!44216 (h!49636 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))) (++!11539 (t!340061 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))) (_2!24603 (get!14472 lt!1468006)))))))

(declare-fun b!4109925 () Bool)

(assert (=> b!4109925 (= e!2549764 (_2!24603 (get!14472 lt!1468006)))))

(declare-fun b!4109928 () Bool)

(assert (=> b!4109928 (= e!2549763 (or (not (= (_2!24603 (get!14472 lt!1468006)) Nil!44216)) (= lt!1468064 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))))))))

(assert (= (and d!1219466 c!706800) b!4109925))

(assert (= (and d!1219466 (not c!706800)) b!4109926))

(assert (= (and d!1219466 res!1679350) b!4109927))

(assert (= (and b!4109927 res!1679349) b!4109928))

(declare-fun m!4712421 () Bool)

(assert (=> d!1219466 m!4712421))

(assert (=> d!1219466 m!4712221))

(declare-fun m!4712423 () Bool)

(assert (=> d!1219466 m!4712423))

(declare-fun m!4712425 () Bool)

(assert (=> d!1219466 m!4712425))

(declare-fun m!4712427 () Bool)

(assert (=> b!4109927 m!4712427))

(assert (=> b!4109927 m!4712221))

(declare-fun m!4712429 () Bool)

(assert (=> b!4109927 m!4712429))

(assert (=> b!4109927 m!4712239))

(declare-fun m!4712431 () Bool)

(assert (=> b!4109926 m!4712431))

(assert (=> b!4109694 d!1219466))

(assert (=> b!4109694 d!1219460))

(assert (=> b!4109694 d!1219462))

(assert (=> b!4109694 d!1219448))

(declare-fun b!4109957 () Bool)

(declare-fun e!2549785 () Bool)

(declare-fun lt!1468067 () Bool)

(declare-fun call!289840 () Bool)

(assert (=> b!4109957 (= e!2549785 (= lt!1468067 call!289840))))

(declare-fun d!1219468 () Bool)

(assert (=> d!1219468 e!2549785))

(declare-fun c!706807 () Bool)

(assert (=> d!1219468 (= c!706807 (is-EmptyExpr!12090 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun e!2549781 () Bool)

(assert (=> d!1219468 (= lt!1468067 e!2549781)))

(declare-fun c!706809 () Bool)

(assert (=> d!1219468 (= c!706809 (isEmpty!26404 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun validRegex!5460 (Regex!12090) Bool)

(assert (=> d!1219468 (validRegex!5460 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))))

(assert (=> d!1219468 (= (matchR!5979 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))) (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))) lt!1468067)))

(declare-fun b!4109958 () Bool)

(declare-fun res!1679372 () Bool)

(declare-fun e!2549782 () Bool)

(assert (=> b!4109958 (=> (not res!1679372) (not e!2549782))))

(declare-fun tail!6401 (List!44340) List!44340)

(assert (=> b!4109958 (= res!1679372 (isEmpty!26404 (tail!6401 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))))))))

(declare-fun b!4109959 () Bool)

(declare-fun res!1679371 () Bool)

(declare-fun e!2549783 () Bool)

(assert (=> b!4109959 (=> res!1679371 e!2549783)))

(assert (=> b!4109959 (= res!1679371 (not (is-ElementMatch!12090 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))))))

(declare-fun e!2549784 () Bool)

(assert (=> b!4109959 (= e!2549784 e!2549783)))

(declare-fun b!4109960 () Bool)

(declare-fun e!2549779 () Bool)

(declare-fun e!2549780 () Bool)

(assert (=> b!4109960 (= e!2549779 e!2549780)))

(declare-fun res!1679368 () Bool)

(assert (=> b!4109960 (=> res!1679368 e!2549780)))

(assert (=> b!4109960 (= res!1679368 call!289840)))

(declare-fun b!4109961 () Bool)

(declare-fun head!8667 (List!44340) C!24366)

(assert (=> b!4109961 (= e!2549780 (not (= (head!8667 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))) (c!706775 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))))))))

(declare-fun b!4109962 () Bool)

(declare-fun res!1679373 () Bool)

(assert (=> b!4109962 (=> (not res!1679373) (not e!2549782))))

(assert (=> b!4109962 (= res!1679373 (not call!289840))))

(declare-fun b!4109963 () Bool)

(assert (=> b!4109963 (= e!2549783 e!2549779)))

(declare-fun res!1679367 () Bool)

(assert (=> b!4109963 (=> (not res!1679367) (not e!2549779))))

(assert (=> b!4109963 (= res!1679367 (not lt!1468067))))

(declare-fun b!4109964 () Bool)

(declare-fun derivativeStep!3657 (Regex!12090 C!24366) Regex!12090)

(assert (=> b!4109964 (= e!2549781 (matchR!5979 (derivativeStep!3657 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))) (head!8667 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))))) (tail!6401 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006)))))))))

(declare-fun b!4109965 () Bool)

(assert (=> b!4109965 (= e!2549785 e!2549784)))

(declare-fun c!706808 () Bool)

(assert (=> b!4109965 (= c!706808 (is-EmptyLang!12090 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun b!4109966 () Bool)

(declare-fun nullable!4260 (Regex!12090) Bool)

(assert (=> b!4109966 (= e!2549781 (nullable!4260 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun b!4109967 () Bool)

(assert (=> b!4109967 (= e!2549782 (= (head!8667 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))) (c!706775 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))))))

(declare-fun b!4109968 () Bool)

(declare-fun res!1679369 () Bool)

(assert (=> b!4109968 (=> res!1679369 e!2549783)))

(assert (=> b!4109968 (= res!1679369 e!2549782)))

(declare-fun res!1679370 () Bool)

(assert (=> b!4109968 (=> (not res!1679370) (not e!2549782))))

(assert (=> b!4109968 (= res!1679370 lt!1468067)))

(declare-fun b!4109969 () Bool)

(declare-fun res!1679374 () Bool)

(assert (=> b!4109969 (=> res!1679374 e!2549780)))

(assert (=> b!4109969 (= res!1679374 (not (isEmpty!26404 (tail!6401 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))))))))

(declare-fun bm!289835 () Bool)

(assert (=> bm!289835 (= call!289840 (isEmpty!26404 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468006))))))))

(declare-fun b!4109970 () Bool)

(assert (=> b!4109970 (= e!2549784 (not lt!1468067))))

(assert (= (and d!1219468 c!706809) b!4109966))

(assert (= (and d!1219468 (not c!706809)) b!4109964))

(assert (= (and d!1219468 c!706807) b!4109957))

(assert (= (and d!1219468 (not c!706807)) b!4109965))

(assert (= (and b!4109965 c!706808) b!4109970))

(assert (= (and b!4109965 (not c!706808)) b!4109959))

(assert (= (and b!4109959 (not res!1679371)) b!4109968))

(assert (= (and b!4109968 res!1679370) b!4109962))

(assert (= (and b!4109962 res!1679373) b!4109958))

(assert (= (and b!4109958 res!1679372) b!4109967))

(assert (= (and b!4109968 (not res!1679369)) b!4109963))

(assert (= (and b!4109963 res!1679367) b!4109960))

(assert (= (and b!4109960 (not res!1679368)) b!4109969))

(assert (= (and b!4109969 (not res!1679374)) b!4109961))

(assert (= (or b!4109957 b!4109960 b!4109962) bm!289835))

(assert (=> b!4109964 m!4712221))

(declare-fun m!4712433 () Bool)

(assert (=> b!4109964 m!4712433))

(assert (=> b!4109964 m!4712433))

(declare-fun m!4712435 () Bool)

(assert (=> b!4109964 m!4712435))

(assert (=> b!4109964 m!4712221))

(declare-fun m!4712437 () Bool)

(assert (=> b!4109964 m!4712437))

(assert (=> b!4109964 m!4712435))

(assert (=> b!4109964 m!4712437))

(declare-fun m!4712439 () Bool)

(assert (=> b!4109964 m!4712439))

(assert (=> d!1219468 m!4712221))

(declare-fun m!4712441 () Bool)

(assert (=> d!1219468 m!4712441))

(declare-fun m!4712443 () Bool)

(assert (=> d!1219468 m!4712443))

(assert (=> bm!289835 m!4712221))

(assert (=> bm!289835 m!4712441))

(assert (=> b!4109958 m!4712221))

(assert (=> b!4109958 m!4712437))

(assert (=> b!4109958 m!4712437))

(declare-fun m!4712445 () Bool)

(assert (=> b!4109958 m!4712445))

(declare-fun m!4712447 () Bool)

(assert (=> b!4109966 m!4712447))

(assert (=> b!4109961 m!4712221))

(assert (=> b!4109961 m!4712433))

(assert (=> b!4109969 m!4712221))

(assert (=> b!4109969 m!4712437))

(assert (=> b!4109969 m!4712437))

(assert (=> b!4109969 m!4712445))

(assert (=> b!4109967 m!4712221))

(assert (=> b!4109967 m!4712433))

(assert (=> b!4109693 d!1219468))

(assert (=> b!4109693 d!1219448))

(assert (=> b!4109693 d!1219460))

(assert (=> b!4109693 d!1219462))

(declare-fun d!1219470 () Bool)

(assert (=> d!1219470 true))

(declare-fun lt!1468070 () Bool)

(assert (=> d!1219470 (= lt!1468070 (rulesValidInductive!2666 thiss!26455 lt!1467968))))

(declare-fun lambda!128417 () Int)

(declare-fun forall!8434 (List!44342 Int) Bool)

(assert (=> d!1219470 (= lt!1468070 (forall!8434 lt!1467968 lambda!128417))))

(assert (=> d!1219470 (= (rulesValid!2831 thiss!26455 lt!1467968) lt!1468070)))

(declare-fun bs!594241 () Bool)

(assert (= bs!594241 d!1219470))

(declare-fun m!4712449 () Bool)

(assert (=> bs!594241 m!4712449))

(declare-fun m!4712451 () Bool)

(assert (=> bs!594241 m!4712451))

(assert (=> d!1219412 d!1219470))

(declare-fun d!1219472 () Bool)

(declare-fun lt!1468073 () Bool)

(declare-fun content!6822 (List!44343) (Set String!50827))

(assert (=> d!1219472 (= lt!1468073 (set.member (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))))) (content!6822 Nil!44219)))))

(declare-fun e!2549791 () Bool)

(assert (=> d!1219472 (= lt!1468073 e!2549791)))

(declare-fun res!1679380 () Bool)

(assert (=> d!1219472 (=> (not res!1679380) (not e!2549791))))

(assert (=> d!1219472 (= res!1679380 (is-Cons!44219 Nil!44219))))

(assert (=> d!1219472 (= (contains!8870 Nil!44219 (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))))) lt!1468073)))

(declare-fun b!4109977 () Bool)

(declare-fun e!2549790 () Bool)

(assert (=> b!4109977 (= e!2549791 e!2549790)))

(declare-fun res!1679379 () Bool)

(assert (=> b!4109977 (=> res!1679379 e!2549790)))

(assert (=> b!4109977 (= res!1679379 (= (h!49639 Nil!44219) (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))))))))

(declare-fun b!4109978 () Bool)

(assert (=> b!4109978 (= e!2549790 (contains!8870 (t!340064 Nil!44219) (tag!8045 (h!49638 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27)))))))))

(assert (= (and d!1219472 res!1679380) b!4109977))

(assert (= (and b!4109977 (not res!1679379)) b!4109978))

(declare-fun m!4712453 () Bool)

(assert (=> d!1219472 m!4712453))

(declare-fun m!4712455 () Bool)

(assert (=> d!1219472 m!4712455))

(declare-fun m!4712457 () Bool)

(assert (=> b!4109978 m!4712457))

(assert (=> b!4109658 d!1219472))

(declare-fun d!1219474 () Bool)

(assert (=> d!1219474 (= (isEmpty!26400 lt!1468006) (not (is-Some!9550 lt!1468006)))))

(assert (=> d!1219394 d!1219474))

(declare-fun b!4109987 () Bool)

(declare-fun e!2549799 () Bool)

(declare-fun e!2549798 () Bool)

(assert (=> b!4109987 (= e!2549799 e!2549798)))

(declare-fun res!1679389 () Bool)

(assert (=> b!4109987 (=> (not res!1679389) (not e!2549798))))

(assert (=> b!4109987 (= res!1679389 (not (is-Nil!44216 input!3491)))))

(declare-fun b!4109989 () Bool)

(assert (=> b!4109989 (= e!2549798 (isPrefix!4168 (tail!6401 input!3491) (tail!6401 input!3491)))))

(declare-fun d!1219476 () Bool)

(declare-fun e!2549800 () Bool)

(assert (=> d!1219476 e!2549800))

(declare-fun res!1679391 () Bool)

(assert (=> d!1219476 (=> res!1679391 e!2549800)))

(declare-fun lt!1468076 () Bool)

(assert (=> d!1219476 (= res!1679391 (not lt!1468076))))

(assert (=> d!1219476 (= lt!1468076 e!2549799)))

(declare-fun res!1679392 () Bool)

(assert (=> d!1219476 (=> res!1679392 e!2549799)))

(assert (=> d!1219476 (= res!1679392 (is-Nil!44216 input!3491))))

(assert (=> d!1219476 (= (isPrefix!4168 input!3491 input!3491) lt!1468076)))

(declare-fun b!4109990 () Bool)

(assert (=> b!4109990 (= e!2549800 (>= (size!32888 input!3491) (size!32888 input!3491)))))

(declare-fun b!4109988 () Bool)

(declare-fun res!1679390 () Bool)

(assert (=> b!4109988 (=> (not res!1679390) (not e!2549798))))

(assert (=> b!4109988 (= res!1679390 (= (head!8667 input!3491) (head!8667 input!3491)))))

(assert (= (and d!1219476 (not res!1679392)) b!4109987))

(assert (= (and b!4109987 res!1679389) b!4109988))

(assert (= (and b!4109988 res!1679390) b!4109989))

(assert (= (and d!1219476 (not res!1679391)) b!4109990))

(declare-fun m!4712459 () Bool)

(assert (=> b!4109989 m!4712459))

(assert (=> b!4109989 m!4712459))

(assert (=> b!4109989 m!4712459))

(assert (=> b!4109989 m!4712459))

(declare-fun m!4712461 () Bool)

(assert (=> b!4109989 m!4712461))

(assert (=> b!4109990 m!4712241))

(assert (=> b!4109990 m!4712241))

(declare-fun m!4712463 () Bool)

(assert (=> b!4109988 m!4712463))

(assert (=> b!4109988 m!4712463))

(assert (=> d!1219394 d!1219476))

(declare-fun d!1219478 () Bool)

(assert (=> d!1219478 (isPrefix!4168 input!3491 input!3491)))

(declare-fun lt!1468079 () Unit!63684)

(declare-fun choose!25134 (List!44340 List!44340) Unit!63684)

(assert (=> d!1219478 (= lt!1468079 (choose!25134 input!3491 input!3491))))

(assert (=> d!1219478 (= (lemmaIsPrefixRefl!2719 input!3491 input!3491) lt!1468079)))

(declare-fun bs!594242 () Bool)

(assert (= bs!594242 d!1219478))

(assert (=> bs!594242 m!4712231))

(declare-fun m!4712465 () Bool)

(assert (=> bs!594242 m!4712465))

(assert (=> d!1219394 d!1219478))

(declare-fun bs!594243 () Bool)

(declare-fun d!1219480 () Bool)

(assert (= bs!594243 (and d!1219480 d!1219470)))

(declare-fun lambda!128420 () Int)

(assert (=> bs!594243 (= lambda!128420 lambda!128417)))

(assert (=> d!1219480 true))

(declare-fun lt!1468082 () Bool)

(assert (=> d!1219480 (= lt!1468082 (forall!8434 rTail!27 lambda!128420))))

(declare-fun e!2549805 () Bool)

(assert (=> d!1219480 (= lt!1468082 e!2549805)))

(declare-fun res!1679397 () Bool)

(assert (=> d!1219480 (=> res!1679397 e!2549805)))

(assert (=> d!1219480 (= res!1679397 (not (is-Cons!44218 rTail!27)))))

(assert (=> d!1219480 (= (rulesValidInductive!2666 thiss!26455 rTail!27) lt!1468082)))

(declare-fun b!4109995 () Bool)

(declare-fun e!2549806 () Bool)

(assert (=> b!4109995 (= e!2549805 e!2549806)))

(declare-fun res!1679398 () Bool)

(assert (=> b!4109995 (=> (not res!1679398) (not e!2549806))))

(assert (=> b!4109995 (= res!1679398 (ruleValid!3054 thiss!26455 (h!49638 rTail!27)))))

(declare-fun b!4109996 () Bool)

(assert (=> b!4109996 (= e!2549806 (rulesValidInductive!2666 thiss!26455 (t!340063 rTail!27)))))

(assert (= (and d!1219480 (not res!1679397)) b!4109995))

(assert (= (and b!4109995 res!1679398) b!4109996))

(declare-fun m!4712467 () Bool)

(assert (=> d!1219480 m!4712467))

(assert (=> b!4109995 m!4712367))

(declare-fun m!4712469 () Bool)

(assert (=> b!4109996 m!4712469))

(assert (=> d!1219394 d!1219480))

(declare-fun d!1219482 () Bool)

(declare-fun lt!1468085 () Int)

(assert (=> d!1219482 (>= lt!1468085 0)))

(declare-fun e!2549809 () Int)

(assert (=> d!1219482 (= lt!1468085 e!2549809)))

(declare-fun c!706812 () Bool)

(assert (=> d!1219482 (= c!706812 (is-Nil!44216 (_2!24603 (get!14472 lt!1468006))))))

(assert (=> d!1219482 (= (size!32888 (_2!24603 (get!14472 lt!1468006))) lt!1468085)))

(declare-fun b!4110001 () Bool)

(assert (=> b!4110001 (= e!2549809 0)))

(declare-fun b!4110002 () Bool)

(assert (=> b!4110002 (= e!2549809 (+ 1 (size!32888 (t!340061 (_2!24603 (get!14472 lt!1468006))))))))

(assert (= (and d!1219482 c!706812) b!4110001))

(assert (= (and d!1219482 (not c!706812)) b!4110002))

(declare-fun m!4712471 () Bool)

(assert (=> b!4110002 m!4712471))

(assert (=> b!4109692 d!1219482))

(assert (=> b!4109692 d!1219448))

(declare-fun d!1219484 () Bool)

(declare-fun lt!1468086 () Int)

(assert (=> d!1219484 (>= lt!1468086 0)))

(declare-fun e!2549810 () Int)

(assert (=> d!1219484 (= lt!1468086 e!2549810)))

(declare-fun c!706813 () Bool)

(assert (=> d!1219484 (= c!706813 (is-Nil!44216 input!3491))))

(assert (=> d!1219484 (= (size!32888 input!3491) lt!1468086)))

(declare-fun b!4110003 () Bool)

(assert (=> b!4110003 (= e!2549810 0)))

(declare-fun b!4110004 () Bool)

(assert (=> b!4110004 (= e!2549810 (+ 1 (size!32888 (t!340061 input!3491))))))

(assert (= (and d!1219484 c!706813) b!4110003))

(assert (= (and d!1219484 (not c!706813)) b!4110004))

(declare-fun m!4712473 () Bool)

(assert (=> b!4110004 m!4712473))

(assert (=> b!4109692 d!1219484))

(declare-fun d!1219486 () Bool)

(assert (=> d!1219486 (= (inv!58870 (tag!8045 (h!49638 (t!340063 rTail!27)))) (= (mod (str.len (value!225385 (tag!8045 (h!49638 (t!340063 rTail!27))))) 2) 0))))

(assert (=> b!4109735 d!1219486))

(declare-fun d!1219488 () Bool)

(declare-fun res!1679399 () Bool)

(declare-fun e!2549811 () Bool)

(assert (=> d!1219488 (=> (not res!1679399) (not e!2549811))))

(assert (=> d!1219488 (= res!1679399 (semiInverseModEq!3096 (toChars!9672 (transformation!7185 (h!49638 (t!340063 rTail!27)))) (toValue!9813 (transformation!7185 (h!49638 (t!340063 rTail!27))))))))

(assert (=> d!1219488 (= (inv!58873 (transformation!7185 (h!49638 (t!340063 rTail!27)))) e!2549811)))

(declare-fun b!4110005 () Bool)

(assert (=> b!4110005 (= e!2549811 (equivClasses!2995 (toChars!9672 (transformation!7185 (h!49638 (t!340063 rTail!27)))) (toValue!9813 (transformation!7185 (h!49638 (t!340063 rTail!27))))))))

(assert (= (and d!1219488 res!1679399) b!4110005))

(declare-fun m!4712475 () Bool)

(assert (=> d!1219488 m!4712475))

(declare-fun m!4712477 () Bool)

(assert (=> b!4110005 m!4712477))

(assert (=> b!4109735 d!1219488))

(declare-fun bs!594244 () Bool)

(declare-fun d!1219490 () Bool)

(assert (= bs!594244 (and d!1219490 d!1219416)))

(declare-fun lambda!128421 () Int)

(assert (=> bs!594244 (= (= (toValue!9813 (transformation!7185 rHead!24)) (toValue!9813 (transformation!7185 (h!49638 rTail!27)))) (= lambda!128421 lambda!128410))))

(assert (=> d!1219490 true))

(assert (=> d!1219490 (< (dynLambda!18922 order!23279 (toValue!9813 (transformation!7185 rHead!24))) (dynLambda!18923 order!23281 lambda!128421))))

(assert (=> d!1219490 (= (equivClasses!2995 (toChars!9672 (transformation!7185 rHead!24)) (toValue!9813 (transformation!7185 rHead!24))) (Forall2!1133 lambda!128421))))

(declare-fun bs!594245 () Bool)

(assert (= bs!594245 d!1219490))

(declare-fun m!4712479 () Bool)

(assert (=> bs!594245 m!4712479))

(assert (=> b!4109653 d!1219490))

(declare-fun b!4110006 () Bool)

(declare-fun e!2549814 () Option!9551)

(declare-fun lt!1468090 () Option!9551)

(declare-fun lt!1468089 () Option!9551)

(assert (=> b!4110006 (= e!2549814 (ite (and (is-None!9550 lt!1468090) (is-None!9550 lt!1468089)) None!9550 (ite (is-None!9550 lt!1468089) lt!1468090 (ite (is-None!9550 lt!1468090) lt!1468089 (ite (>= (size!32886 (_1!24603 (v!40082 lt!1468090))) (size!32886 (_1!24603 (v!40082 lt!1468089)))) lt!1468090 lt!1468089)))))))

(declare-fun call!289841 () Option!9551)

(assert (=> b!4110006 (= lt!1468090 call!289841)))

(assert (=> b!4110006 (= lt!1468089 (maxPrefix!4024 thiss!26455 (t!340063 (t!340063 rTail!27)) input!3491))))

(declare-fun b!4110007 () Bool)

(declare-fun res!1679404 () Bool)

(declare-fun e!2549813 () Bool)

(assert (=> b!4110007 (=> (not res!1679404) (not e!2549813))))

(declare-fun lt!1468087 () Option!9551)

(assert (=> b!4110007 (= res!1679404 (< (size!32888 (_2!24603 (get!14472 lt!1468087))) (size!32888 input!3491)))))

(declare-fun b!4110008 () Bool)

(declare-fun res!1679405 () Bool)

(assert (=> b!4110008 (=> (not res!1679405) (not e!2549813))))

(assert (=> b!4110008 (= res!1679405 (matchR!5979 (regex!7185 (rule!10305 (_1!24603 (get!14472 lt!1468087)))) (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468087))))))))

(declare-fun d!1219492 () Bool)

(declare-fun e!2549812 () Bool)

(assert (=> d!1219492 e!2549812))

(declare-fun res!1679402 () Bool)

(assert (=> d!1219492 (=> res!1679402 e!2549812)))

(assert (=> d!1219492 (= res!1679402 (isEmpty!26400 lt!1468087))))

(assert (=> d!1219492 (= lt!1468087 e!2549814)))

(declare-fun c!706814 () Bool)

(assert (=> d!1219492 (= c!706814 (and (is-Cons!44218 (t!340063 rTail!27)) (is-Nil!44218 (t!340063 (t!340063 rTail!27)))))))

(declare-fun lt!1468088 () Unit!63684)

(declare-fun lt!1468091 () Unit!63684)

(assert (=> d!1219492 (= lt!1468088 lt!1468091)))

(assert (=> d!1219492 (isPrefix!4168 input!3491 input!3491)))

(assert (=> d!1219492 (= lt!1468091 (lemmaIsPrefixRefl!2719 input!3491 input!3491))))

(assert (=> d!1219492 (rulesValidInductive!2666 thiss!26455 (t!340063 rTail!27))))

(assert (=> d!1219492 (= (maxPrefix!4024 thiss!26455 (t!340063 rTail!27) input!3491) lt!1468087)))

(declare-fun b!4110009 () Bool)

(declare-fun res!1679401 () Bool)

(assert (=> b!4110009 (=> (not res!1679401) (not e!2549813))))

(assert (=> b!4110009 (= res!1679401 (= (++!11539 (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468087)))) (_2!24603 (get!14472 lt!1468087))) input!3491))))

(declare-fun b!4110010 () Bool)

(declare-fun res!1679406 () Bool)

(assert (=> b!4110010 (=> (not res!1679406) (not e!2549813))))

(assert (=> b!4110010 (= res!1679406 (= (list!16325 (charsOf!4883 (_1!24603 (get!14472 lt!1468087)))) (originalCharacters!7739 (_1!24603 (get!14472 lt!1468087)))))))

(declare-fun b!4110011 () Bool)

(declare-fun res!1679403 () Bool)

(assert (=> b!4110011 (=> (not res!1679403) (not e!2549813))))

(assert (=> b!4110011 (= res!1679403 (= (value!225386 (_1!24603 (get!14472 lt!1468087))) (apply!10316 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468087)))) (seqFromList!5350 (originalCharacters!7739 (_1!24603 (get!14472 lt!1468087)))))))))

(declare-fun b!4110012 () Bool)

(assert (=> b!4110012 (= e!2549814 call!289841)))

(declare-fun b!4110013 () Bool)

(assert (=> b!4110013 (= e!2549813 (contains!8869 (t!340063 rTail!27) (rule!10305 (_1!24603 (get!14472 lt!1468087)))))))

(declare-fun b!4110014 () Bool)

(assert (=> b!4110014 (= e!2549812 e!2549813)))

(declare-fun res!1679400 () Bool)

(assert (=> b!4110014 (=> (not res!1679400) (not e!2549813))))

(assert (=> b!4110014 (= res!1679400 (isDefined!7217 lt!1468087))))

(declare-fun bm!289836 () Bool)

(assert (=> bm!289836 (= call!289841 (maxPrefixOneRule!2990 thiss!26455 (h!49638 (t!340063 rTail!27)) input!3491))))

(assert (= (and d!1219492 c!706814) b!4110012))

(assert (= (and d!1219492 (not c!706814)) b!4110006))

(assert (= (or b!4110012 b!4110006) bm!289836))

(assert (= (and d!1219492 (not res!1679402)) b!4110014))

(assert (= (and b!4110014 res!1679400) b!4110010))

(assert (= (and b!4110010 res!1679406) b!4110007))

(assert (= (and b!4110007 res!1679404) b!4110009))

(assert (= (and b!4110009 res!1679401) b!4110011))

(assert (= (and b!4110011 res!1679403) b!4110008))

(assert (= (and b!4110008 res!1679405) b!4110013))

(declare-fun m!4712481 () Bool)

(assert (=> b!4110008 m!4712481))

(declare-fun m!4712483 () Bool)

(assert (=> b!4110008 m!4712483))

(assert (=> b!4110008 m!4712483))

(declare-fun m!4712485 () Bool)

(assert (=> b!4110008 m!4712485))

(assert (=> b!4110008 m!4712485))

(declare-fun m!4712487 () Bool)

(assert (=> b!4110008 m!4712487))

(declare-fun m!4712489 () Bool)

(assert (=> b!4110014 m!4712489))

(assert (=> b!4110009 m!4712481))

(assert (=> b!4110009 m!4712483))

(assert (=> b!4110009 m!4712483))

(assert (=> b!4110009 m!4712485))

(assert (=> b!4110009 m!4712485))

(declare-fun m!4712491 () Bool)

(assert (=> b!4110009 m!4712491))

(declare-fun m!4712493 () Bool)

(assert (=> d!1219492 m!4712493))

(assert (=> d!1219492 m!4712231))

(assert (=> d!1219492 m!4712233))

(assert (=> d!1219492 m!4712469))

(declare-fun m!4712495 () Bool)

(assert (=> b!4110006 m!4712495))

(assert (=> b!4110007 m!4712481))

(declare-fun m!4712497 () Bool)

(assert (=> b!4110007 m!4712497))

(assert (=> b!4110007 m!4712241))

(assert (=> b!4110010 m!4712481))

(assert (=> b!4110010 m!4712483))

(assert (=> b!4110010 m!4712483))

(assert (=> b!4110010 m!4712485))

(assert (=> b!4110011 m!4712481))

(declare-fun m!4712499 () Bool)

(assert (=> b!4110011 m!4712499))

(assert (=> b!4110011 m!4712499))

(declare-fun m!4712501 () Bool)

(assert (=> b!4110011 m!4712501))

(declare-fun m!4712503 () Bool)

(assert (=> bm!289836 m!4712503))

(assert (=> b!4110013 m!4712481))

(declare-fun m!4712505 () Bool)

(assert (=> b!4110013 m!4712505))

(assert (=> b!4109691 d!1219492))

(assert (=> d!1219384 d!1219376))

(declare-fun d!1219494 () Bool)

(assert (=> d!1219494 (noDuplicateTag!2862 thiss!26455 (Cons!44218 (h!49638 rTail!27) (Cons!44218 rHead!24 (t!340063 rTail!27))) Nil!44219)))

(assert (=> d!1219494 true))

(declare-fun _$67!81 () Unit!63684)

(assert (=> d!1219494 (= (choose!25131 thiss!26455 rHead!24 (h!49638 rTail!27) (t!340063 rTail!27)) _$67!81)))

(declare-fun bs!594246 () Bool)

(assert (= bs!594246 d!1219494))

(assert (=> bs!594246 m!4712135))

(assert (=> d!1219384 d!1219494))

(declare-fun d!1219496 () Bool)

(declare-fun res!1679407 () Bool)

(declare-fun e!2549815 () Bool)

(assert (=> d!1219496 (=> res!1679407 e!2549815)))

(assert (=> d!1219496 (= res!1679407 (is-Nil!44218 (Cons!44218 rHead!24 (Cons!44218 (h!49638 rTail!27) (t!340063 rTail!27)))))))

(assert (=> d!1219496 (= (noDuplicateTag!2862 thiss!26455 (Cons!44218 rHead!24 (Cons!44218 (h!49638 rTail!27) (t!340063 rTail!27))) Nil!44219) e!2549815)))

(declare-fun b!4110015 () Bool)

(declare-fun e!2549816 () Bool)

(assert (=> b!4110015 (= e!2549815 e!2549816)))

(declare-fun res!1679408 () Bool)

(assert (=> b!4110015 (=> (not res!1679408) (not e!2549816))))

(assert (=> b!4110015 (= res!1679408 (not (contains!8870 Nil!44219 (tag!8045 (h!49638 (Cons!44218 rHead!24 (Cons!44218 (h!49638 rTail!27) (t!340063 rTail!27))))))))))

(declare-fun b!4110016 () Bool)

(assert (=> b!4110016 (= e!2549816 (noDuplicateTag!2862 thiss!26455 (t!340063 (Cons!44218 rHead!24 (Cons!44218 (h!49638 rTail!27) (t!340063 rTail!27)))) (Cons!44219 (tag!8045 (h!49638 (Cons!44218 rHead!24 (Cons!44218 (h!49638 rTail!27) (t!340063 rTail!27))))) Nil!44219)))))

(assert (= (and d!1219496 (not res!1679407)) b!4110015))

(assert (= (and b!4110015 res!1679408) b!4110016))

(declare-fun m!4712507 () Bool)

(assert (=> b!4110015 m!4712507))

(declare-fun m!4712509 () Bool)

(assert (=> b!4110016 m!4712509))

(assert (=> d!1219384 d!1219496))

(declare-fun b!4110017 () Bool)

(declare-fun e!2549817 () Bool)

(assert (=> b!4110017 (= e!2549817 tp_is_empty!21147)))

(declare-fun b!4110018 () Bool)

(declare-fun tp!1248997 () Bool)

(declare-fun tp!1248994 () Bool)

(assert (=> b!4110018 (= e!2549817 (and tp!1248997 tp!1248994))))

(declare-fun b!4110020 () Bool)

(declare-fun tp!1248995 () Bool)

(declare-fun tp!1248993 () Bool)

(assert (=> b!4110020 (= e!2549817 (and tp!1248995 tp!1248993))))

(assert (=> b!4109724 (= tp!1248938 e!2549817)))

(declare-fun b!4110019 () Bool)

(declare-fun tp!1248996 () Bool)

(assert (=> b!4110019 (= e!2549817 tp!1248996)))

(assert (= (and b!4109724 (is-ElementMatch!12090 (reg!12419 (regex!7185 rHead!24)))) b!4110017))

(assert (= (and b!4109724 (is-Concat!19505 (reg!12419 (regex!7185 rHead!24)))) b!4110018))

(assert (= (and b!4109724 (is-Star!12090 (reg!12419 (regex!7185 rHead!24)))) b!4110019))

(assert (= (and b!4109724 (is-Union!12090 (reg!12419 (regex!7185 rHead!24)))) b!4110020))

(declare-fun b!4110021 () Bool)

(declare-fun e!2549818 () Bool)

(assert (=> b!4110021 (= e!2549818 tp_is_empty!21147)))

(declare-fun b!4110022 () Bool)

(declare-fun tp!1249002 () Bool)

(declare-fun tp!1248999 () Bool)

(assert (=> b!4110022 (= e!2549818 (and tp!1249002 tp!1248999))))

(declare-fun b!4110024 () Bool)

(declare-fun tp!1249000 () Bool)

(declare-fun tp!1248998 () Bool)

(assert (=> b!4110024 (= e!2549818 (and tp!1249000 tp!1248998))))

(assert (=> b!4109719 (= tp!1248934 e!2549818)))

(declare-fun b!4110023 () Bool)

(declare-fun tp!1249001 () Bool)

(assert (=> b!4110023 (= e!2549818 tp!1249001)))

(assert (= (and b!4109719 (is-ElementMatch!12090 (regOne!24692 (regex!7185 (h!49638 rTail!27))))) b!4110021))

(assert (= (and b!4109719 (is-Concat!19505 (regOne!24692 (regex!7185 (h!49638 rTail!27))))) b!4110022))

(assert (= (and b!4109719 (is-Star!12090 (regOne!24692 (regex!7185 (h!49638 rTail!27))))) b!4110023))

(assert (= (and b!4109719 (is-Union!12090 (regOne!24692 (regex!7185 (h!49638 rTail!27))))) b!4110024))

(declare-fun b!4110025 () Bool)

(declare-fun e!2549819 () Bool)

(assert (=> b!4110025 (= e!2549819 tp_is_empty!21147)))

(declare-fun b!4110026 () Bool)

(declare-fun tp!1249007 () Bool)

(declare-fun tp!1249004 () Bool)

(assert (=> b!4110026 (= e!2549819 (and tp!1249007 tp!1249004))))

(declare-fun b!4110028 () Bool)

(declare-fun tp!1249005 () Bool)

(declare-fun tp!1249003 () Bool)

(assert (=> b!4110028 (= e!2549819 (and tp!1249005 tp!1249003))))

(assert (=> b!4109719 (= tp!1248931 e!2549819)))

(declare-fun b!4110027 () Bool)

(declare-fun tp!1249006 () Bool)

(assert (=> b!4110027 (= e!2549819 tp!1249006)))

(assert (= (and b!4109719 (is-ElementMatch!12090 (regTwo!24692 (regex!7185 (h!49638 rTail!27))))) b!4110025))

(assert (= (and b!4109719 (is-Concat!19505 (regTwo!24692 (regex!7185 (h!49638 rTail!27))))) b!4110026))

(assert (= (and b!4109719 (is-Star!12090 (regTwo!24692 (regex!7185 (h!49638 rTail!27))))) b!4110027))

(assert (= (and b!4109719 (is-Union!12090 (regTwo!24692 (regex!7185 (h!49638 rTail!27))))) b!4110028))

(declare-fun b!4110029 () Bool)

(declare-fun e!2549820 () Bool)

(assert (=> b!4110029 (= e!2549820 tp_is_empty!21147)))

(declare-fun b!4110030 () Bool)

(declare-fun tp!1249012 () Bool)

(declare-fun tp!1249009 () Bool)

(assert (=> b!4110030 (= e!2549820 (and tp!1249012 tp!1249009))))

(declare-fun b!4110032 () Bool)

(declare-fun tp!1249010 () Bool)

(declare-fun tp!1249008 () Bool)

(assert (=> b!4110032 (= e!2549820 (and tp!1249010 tp!1249008))))

(assert (=> b!4109723 (= tp!1248939 e!2549820)))

(declare-fun b!4110031 () Bool)

(declare-fun tp!1249011 () Bool)

(assert (=> b!4110031 (= e!2549820 tp!1249011)))

(assert (= (and b!4109723 (is-ElementMatch!12090 (regOne!24692 (regex!7185 rHead!24)))) b!4110029))

(assert (= (and b!4109723 (is-Concat!19505 (regOne!24692 (regex!7185 rHead!24)))) b!4110030))

(assert (= (and b!4109723 (is-Star!12090 (regOne!24692 (regex!7185 rHead!24)))) b!4110031))

(assert (= (and b!4109723 (is-Union!12090 (regOne!24692 (regex!7185 rHead!24)))) b!4110032))

(declare-fun b!4110033 () Bool)

(declare-fun e!2549821 () Bool)

(assert (=> b!4110033 (= e!2549821 tp_is_empty!21147)))

(declare-fun b!4110034 () Bool)

(declare-fun tp!1249017 () Bool)

(declare-fun tp!1249014 () Bool)

(assert (=> b!4110034 (= e!2549821 (and tp!1249017 tp!1249014))))

(declare-fun b!4110036 () Bool)

(declare-fun tp!1249015 () Bool)

(declare-fun tp!1249013 () Bool)

(assert (=> b!4110036 (= e!2549821 (and tp!1249015 tp!1249013))))

(assert (=> b!4109723 (= tp!1248936 e!2549821)))

(declare-fun b!4110035 () Bool)

(declare-fun tp!1249016 () Bool)

(assert (=> b!4110035 (= e!2549821 tp!1249016)))

(assert (= (and b!4109723 (is-ElementMatch!12090 (regTwo!24692 (regex!7185 rHead!24)))) b!4110033))

(assert (= (and b!4109723 (is-Concat!19505 (regTwo!24692 (regex!7185 rHead!24)))) b!4110034))

(assert (= (and b!4109723 (is-Star!12090 (regTwo!24692 (regex!7185 rHead!24)))) b!4110035))

(assert (= (and b!4109723 (is-Union!12090 (regTwo!24692 (regex!7185 rHead!24)))) b!4110036))

(declare-fun b!4110037 () Bool)

(declare-fun e!2549822 () Bool)

(declare-fun tp!1249018 () Bool)

(assert (=> b!4110037 (= e!2549822 (and tp_is_empty!21147 tp!1249018))))

(assert (=> b!4109707 (= tp!1248919 e!2549822)))

(assert (= (and b!4109707 (is-Cons!44216 (t!340061 (t!340061 input!3491)))) b!4110037))

(declare-fun b!4110038 () Bool)

(declare-fun e!2549823 () Bool)

(assert (=> b!4110038 (= e!2549823 tp_is_empty!21147)))

(declare-fun b!4110039 () Bool)

(declare-fun tp!1249023 () Bool)

(declare-fun tp!1249020 () Bool)

(assert (=> b!4110039 (= e!2549823 (and tp!1249023 tp!1249020))))

(declare-fun b!4110041 () Bool)

(declare-fun tp!1249021 () Bool)

(declare-fun tp!1249019 () Bool)

(assert (=> b!4110041 (= e!2549823 (and tp!1249021 tp!1249019))))

(assert (=> b!4109721 (= tp!1248932 e!2549823)))

(declare-fun b!4110040 () Bool)

(declare-fun tp!1249022 () Bool)

(assert (=> b!4110040 (= e!2549823 tp!1249022)))

(assert (= (and b!4109721 (is-ElementMatch!12090 (regOne!24693 (regex!7185 (h!49638 rTail!27))))) b!4110038))

(assert (= (and b!4109721 (is-Concat!19505 (regOne!24693 (regex!7185 (h!49638 rTail!27))))) b!4110039))

(assert (= (and b!4109721 (is-Star!12090 (regOne!24693 (regex!7185 (h!49638 rTail!27))))) b!4110040))

(assert (= (and b!4109721 (is-Union!12090 (regOne!24693 (regex!7185 (h!49638 rTail!27))))) b!4110041))

(declare-fun b!4110042 () Bool)

(declare-fun e!2549824 () Bool)

(assert (=> b!4110042 (= e!2549824 tp_is_empty!21147)))

(declare-fun b!4110043 () Bool)

(declare-fun tp!1249028 () Bool)

(declare-fun tp!1249025 () Bool)

(assert (=> b!4110043 (= e!2549824 (and tp!1249028 tp!1249025))))

(declare-fun b!4110045 () Bool)

(declare-fun tp!1249026 () Bool)

(declare-fun tp!1249024 () Bool)

(assert (=> b!4110045 (= e!2549824 (and tp!1249026 tp!1249024))))

(assert (=> b!4109721 (= tp!1248930 e!2549824)))

(declare-fun b!4110044 () Bool)

(declare-fun tp!1249027 () Bool)

(assert (=> b!4110044 (= e!2549824 tp!1249027)))

(assert (= (and b!4109721 (is-ElementMatch!12090 (regTwo!24693 (regex!7185 (h!49638 rTail!27))))) b!4110042))

(assert (= (and b!4109721 (is-Concat!19505 (regTwo!24693 (regex!7185 (h!49638 rTail!27))))) b!4110043))

(assert (= (and b!4109721 (is-Star!12090 (regTwo!24693 (regex!7185 (h!49638 rTail!27))))) b!4110044))

(assert (= (and b!4109721 (is-Union!12090 (regTwo!24693 (regex!7185 (h!49638 rTail!27))))) b!4110045))

(declare-fun b!4110046 () Bool)

(declare-fun e!2549825 () Bool)

(assert (=> b!4110046 (= e!2549825 tp_is_empty!21147)))

(declare-fun b!4110047 () Bool)

(declare-fun tp!1249033 () Bool)

(declare-fun tp!1249030 () Bool)

(assert (=> b!4110047 (= e!2549825 (and tp!1249033 tp!1249030))))

(declare-fun b!4110049 () Bool)

(declare-fun tp!1249031 () Bool)

(declare-fun tp!1249029 () Bool)

(assert (=> b!4110049 (= e!2549825 (and tp!1249031 tp!1249029))))

(assert (=> b!4109735 (= tp!1248949 e!2549825)))

(declare-fun b!4110048 () Bool)

(declare-fun tp!1249032 () Bool)

(assert (=> b!4110048 (= e!2549825 tp!1249032)))

(assert (= (and b!4109735 (is-ElementMatch!12090 (regex!7185 (h!49638 (t!340063 rTail!27))))) b!4110046))

(assert (= (and b!4109735 (is-Concat!19505 (regex!7185 (h!49638 (t!340063 rTail!27))))) b!4110047))

(assert (= (and b!4109735 (is-Star!12090 (regex!7185 (h!49638 (t!340063 rTail!27))))) b!4110048))

(assert (= (and b!4109735 (is-Union!12090 (regex!7185 (h!49638 (t!340063 rTail!27))))) b!4110049))

(declare-fun b!4110050 () Bool)

(declare-fun e!2549826 () Bool)

(assert (=> b!4110050 (= e!2549826 tp_is_empty!21147)))

(declare-fun b!4110051 () Bool)

(declare-fun tp!1249038 () Bool)

(declare-fun tp!1249035 () Bool)

(assert (=> b!4110051 (= e!2549826 (and tp!1249038 tp!1249035))))

(declare-fun b!4110053 () Bool)

(declare-fun tp!1249036 () Bool)

(declare-fun tp!1249034 () Bool)

(assert (=> b!4110053 (= e!2549826 (and tp!1249036 tp!1249034))))

(assert (=> b!4109720 (= tp!1248933 e!2549826)))

(declare-fun b!4110052 () Bool)

(declare-fun tp!1249037 () Bool)

(assert (=> b!4110052 (= e!2549826 tp!1249037)))

(assert (= (and b!4109720 (is-ElementMatch!12090 (reg!12419 (regex!7185 (h!49638 rTail!27))))) b!4110050))

(assert (= (and b!4109720 (is-Concat!19505 (reg!12419 (regex!7185 (h!49638 rTail!27))))) b!4110051))

(assert (= (and b!4109720 (is-Star!12090 (reg!12419 (regex!7185 (h!49638 rTail!27))))) b!4110052))

(assert (= (and b!4109720 (is-Union!12090 (reg!12419 (regex!7185 (h!49638 rTail!27))))) b!4110053))

(declare-fun b!4110056 () Bool)

(declare-fun b_free!115425 () Bool)

(declare-fun b_next!116129 () Bool)

(assert (=> b!4110056 (= b_free!115425 (not b_next!116129))))

(declare-fun tb!246963 () Bool)

(declare-fun t!340088 () Bool)

(assert (=> (and b!4110056 (= (toValue!9813 (transformation!7185 (h!49638 (t!340063 (t!340063 rTail!27))))) (toValue!9813 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340088) tb!246963))

(declare-fun result!299826 () Bool)

(assert (= result!299826 result!299810))

(assert (=> d!1219456 t!340088))

(declare-fun tp!1249039 () Bool)

(declare-fun b_and!317305 () Bool)

(assert (=> b!4110056 (= tp!1249039 (and (=> t!340088 result!299826) b_and!317305))))

(declare-fun b_free!115427 () Bool)

(declare-fun b_next!116131 () Bool)

(assert (=> b!4110056 (= b_free!115427 (not b_next!116131))))

(declare-fun tb!246965 () Bool)

(declare-fun t!340090 () Bool)

(assert (=> (and b!4110056 (= (toChars!9672 (transformation!7185 (h!49638 (t!340063 (t!340063 rTail!27))))) (toChars!9672 (transformation!7185 (rule!10305 (_1!24603 (get!14472 lt!1468006)))))) t!340090) tb!246965))

(declare-fun result!299828 () Bool)

(assert (= result!299828 result!299818))

(assert (=> d!1219462 t!340090))

(declare-fun tp!1249042 () Bool)

(declare-fun b_and!317307 () Bool)

(assert (=> b!4110056 (= tp!1249042 (and (=> t!340090 result!299828) b_and!317307))))

(declare-fun e!2549827 () Bool)

(assert (=> b!4110056 (= e!2549827 (and tp!1249039 tp!1249042))))

(declare-fun b!4110055 () Bool)

(declare-fun e!2549829 () Bool)

(declare-fun tp!1249040 () Bool)

(assert (=> b!4110055 (= e!2549829 (and tp!1249040 (inv!58870 (tag!8045 (h!49638 (t!340063 (t!340063 rTail!27))))) (inv!58873 (transformation!7185 (h!49638 (t!340063 (t!340063 rTail!27))))) e!2549827))))

(declare-fun b!4110054 () Bool)

(declare-fun e!2549828 () Bool)

(declare-fun tp!1249041 () Bool)

(assert (=> b!4110054 (= e!2549828 (and e!2549829 tp!1249041))))

(assert (=> b!4109734 (= tp!1248950 e!2549828)))

(assert (= b!4110055 b!4110056))

(assert (= b!4110054 b!4110055))

(assert (= (and b!4109734 (is-Cons!44218 (t!340063 (t!340063 rTail!27)))) b!4110054))

(declare-fun m!4712511 () Bool)

(assert (=> b!4110055 m!4712511))

(declare-fun m!4712513 () Bool)

(assert (=> b!4110055 m!4712513))

(declare-fun b!4110057 () Bool)

(declare-fun e!2549831 () Bool)

(assert (=> b!4110057 (= e!2549831 tp_is_empty!21147)))

(declare-fun b!4110058 () Bool)

(declare-fun tp!1249047 () Bool)

(declare-fun tp!1249044 () Bool)

(assert (=> b!4110058 (= e!2549831 (and tp!1249047 tp!1249044))))

(declare-fun b!4110060 () Bool)

(declare-fun tp!1249045 () Bool)

(declare-fun tp!1249043 () Bool)

(assert (=> b!4110060 (= e!2549831 (and tp!1249045 tp!1249043))))

(assert (=> b!4109725 (= tp!1248937 e!2549831)))

(declare-fun b!4110059 () Bool)

(declare-fun tp!1249046 () Bool)

(assert (=> b!4110059 (= e!2549831 tp!1249046)))

(assert (= (and b!4109725 (is-ElementMatch!12090 (regOne!24693 (regex!7185 rHead!24)))) b!4110057))

(assert (= (and b!4109725 (is-Concat!19505 (regOne!24693 (regex!7185 rHead!24)))) b!4110058))

(assert (= (and b!4109725 (is-Star!12090 (regOne!24693 (regex!7185 rHead!24)))) b!4110059))

(assert (= (and b!4109725 (is-Union!12090 (regOne!24693 (regex!7185 rHead!24)))) b!4110060))

(declare-fun b!4110061 () Bool)

(declare-fun e!2549832 () Bool)

(assert (=> b!4110061 (= e!2549832 tp_is_empty!21147)))

(declare-fun b!4110062 () Bool)

(declare-fun tp!1249052 () Bool)

(declare-fun tp!1249049 () Bool)

(assert (=> b!4110062 (= e!2549832 (and tp!1249052 tp!1249049))))

(declare-fun b!4110064 () Bool)

(declare-fun tp!1249050 () Bool)

(declare-fun tp!1249048 () Bool)

(assert (=> b!4110064 (= e!2549832 (and tp!1249050 tp!1249048))))

(assert (=> b!4109725 (= tp!1248935 e!2549832)))

(declare-fun b!4110063 () Bool)

(declare-fun tp!1249051 () Bool)

(assert (=> b!4110063 (= e!2549832 tp!1249051)))

(assert (= (and b!4109725 (is-ElementMatch!12090 (regTwo!24693 (regex!7185 rHead!24)))) b!4110061))

(assert (= (and b!4109725 (is-Concat!19505 (regTwo!24693 (regex!7185 rHead!24)))) b!4110062))

(assert (= (and b!4109725 (is-Star!12090 (regTwo!24693 (regex!7185 rHead!24)))) b!4110063))

(assert (= (and b!4109725 (is-Union!12090 (regTwo!24693 (regex!7185 rHead!24)))) b!4110064))

(push 1)

(assert (not b!4110026))

(assert (not d!1219480))

(assert (not d!1219490))

(assert (not b!4109969))

(assert (not b!4110054))

(assert (not d!1219440))

(assert (not b!4110006))

(assert (not b_lambda!120625))

(assert (not b!4109907))

(assert (not b!4110062))

(assert (not b_next!116105))

(assert (not tb!246957))

(assert (not d!1219472))

(assert (not b!4110022))

(assert (not b!4110019))

(assert (not b!4110004))

(assert (not d!1219420))

(assert (not b!4110047))

(assert (not b_next!116131))

(assert (not b!4109961))

(assert (not d!1219462))

(assert (not b!4109978))

(assert (not d!1219444))

(assert (not d!1219478))

(assert (not b!4110034))

(assert b_and!317307)

(assert (not d!1219442))

(assert b_and!317301)

(assert (not b_lambda!120627))

(assert (not b!4109893))

(assert (not b!4109996))

(assert (not d!1219460))

(assert (not b!4110063))

(assert (not b!4110008))

(assert (not b!4110060))

(assert (not b!4109995))

(assert (not d!1219470))

(assert (not b!4109915))

(assert (not b_next!116121))

(assert (not d!1219468))

(assert (not b!4109914))

(assert (not b!4109888))

(assert (not b!4109890))

(assert (not b!4109988))

(assert (not b!4110064))

(assert (not b!4109966))

(assert (not b!4110005))

(assert b_and!317299)

(assert b_and!317303)

(assert (not b!4110036))

(assert (not b!4110024))

(assert (not b!4110058))

(assert (not b!4110031))

(assert (not b!4110059))

(assert (not bm!289835))

(assert (not b!4109964))

(assert (not b!4109905))

(assert (not d!1219454))

(assert (not b!4110014))

(assert (not b!4110037))

(assert (not b_next!116109))

(assert (not d!1219494))

(assert (not b!4109891))

(assert (not b!4110055))

(assert (not b_next!116111))

(assert (not b!4110048))

(assert (not b!4110040))

(assert (not b!4109989))

(assert (not b!4110027))

(assert (not b!4110044))

(assert (not b!4110035))

(assert (not b!4110010))

(assert (not b!4110011))

(assert (not b!4110018))

(assert (not b!4109903))

(assert b_and!317305)

(assert (not b!4109892))

(assert (not b!4110052))

(assert (not b!4109927))

(assert (not b!4110020))

(assert (not d!1219446))

(assert (not b_next!116129))

(assert (not b!4110030))

(assert (not b_next!116123))

(assert (not tb!246951))

(assert (not b!4109916))

(assert (not b!4110039))

(assert (not b!4110009))

(assert (not d!1219458))

(assert (not b!4110045))

(assert (not b!4110007))

(assert (not d!1219466))

(assert b_and!317297)

(assert (not b!4109889))

(assert (not b!4110028))

(assert (not b!4110041))

(assert (not b!4110032))

(assert (not b!4110013))

(assert (not b!4110049))

(assert tp_is_empty!21147)

(assert b_and!317295)

(assert (not b!4109926))

(assert (not b!4109990))

(assert (not b!4109967))

(assert (not b!4109885))

(assert (not b!4110053))

(assert (not b!4110016))

(assert (not b!4109904))

(assert (not b_next!116107))

(assert (not b!4110002))

(assert (not b!4110043))

(assert (not d!1219492))

(assert (not d!1219416))

(assert (not b!4110051))

(assert (not b!4109958))

(assert (not b!4110023))

(assert (not b!4109886))

(assert (not d!1219488))

(assert (not bm!289836))

(assert (not b!4110015))

(assert b_and!317293)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!116105))

(assert (not b_next!116131))

(assert (not b_next!116121))

(assert (not b_next!116109))

(assert (not b_next!116111))

(assert b_and!317305)

(assert (not b_next!116129))

(assert (not b_next!116123))

(assert b_and!317297)

(assert b_and!317295)

(assert (not b_next!116107))

(assert b_and!317293)

(assert b_and!317307)

(assert b_and!317301)

(assert b_and!317299)

(assert b_and!317303)

(check-sat)

(pop 1)

