; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!157218 () Bool)

(assert start!157218)

(declare-fun b!1642400 () Bool)

(declare-fun b_free!44519 () Bool)

(declare-fun b_next!45223 () Bool)

(assert (=> b!1642400 (= b_free!44519 (not b_next!45223))))

(declare-fun tp!475957 () Bool)

(declare-fun b_and!116461 () Bool)

(assert (=> b!1642400 (= tp!475957 b_and!116461)))

(declare-fun b_free!44521 () Bool)

(declare-fun b_next!45225 () Bool)

(assert (=> b!1642400 (= b_free!44521 (not b_next!45225))))

(declare-fun tp!475960 () Bool)

(declare-fun b_and!116463 () Bool)

(assert (=> b!1642400 (= tp!475960 b_and!116463)))

(declare-fun b!1642398 () Bool)

(declare-fun b_free!44523 () Bool)

(declare-fun b_next!45227 () Bool)

(assert (=> b!1642398 (= b_free!44523 (not b_next!45227))))

(declare-fun tp!475956 () Bool)

(declare-fun b_and!116465 () Bool)

(assert (=> b!1642398 (= tp!475956 b_and!116465)))

(declare-fun b_free!44525 () Bool)

(declare-fun b_next!45229 () Bool)

(assert (=> b!1642398 (= b_free!44525 (not b_next!45229))))

(declare-fun tp!475961 () Bool)

(declare-fun b_and!116467 () Bool)

(assert (=> b!1642398 (= tp!475961 b_and!116467)))

(declare-fun b!1642396 () Bool)

(declare-fun res!735819 () Bool)

(declare-fun e!1053285 () Bool)

(assert (=> b!1642396 (=> (not res!735819) (not e!1053285))))

(declare-datatypes ((List!18167 0))(
  ( (Nil!18097) (Cons!18097 (h!23498 (_ BitVec 16)) (t!150132 List!18167)) )
))
(declare-datatypes ((TokenValue!3281 0))(
  ( (FloatLiteralValue!6562 (text!23412 List!18167)) (TokenValueExt!3280 (__x!11864 Int)) (Broken!16405 (value!100590 List!18167)) (Object!3350) (End!3281) (Def!3281) (Underscore!3281) (Match!3281) (Else!3281) (Error!3281) (Case!3281) (If!3281) (Extends!3281) (Abstract!3281) (Class!3281) (Val!3281) (DelimiterValue!6562 (del!3341 List!18167)) (KeywordValue!3287 (value!100591 List!18167)) (CommentValue!6562 (value!100592 List!18167)) (WhitespaceValue!6562 (value!100593 List!18167)) (IndentationValue!3281 (value!100594 List!18167)) (String!20736) (Int32!3281) (Broken!16406 (value!100595 List!18167)) (Boolean!3282) (Unit!29833) (OperatorValue!3284 (op!3341 List!18167)) (IdentifierValue!6562 (value!100596 List!18167)) (IdentifierValue!6563 (value!100597 List!18167)) (WhitespaceValue!6563 (value!100598 List!18167)) (True!6562) (False!6562) (Broken!16407 (value!100599 List!18167)) (Broken!16408 (value!100600 List!18167)) (True!6563) (RightBrace!3281) (RightBracket!3281) (Colon!3281) (Null!3281) (Comma!3281) (LeftBracket!3281) (False!6563) (LeftBrace!3281) (ImaginaryLiteralValue!3281 (text!23413 List!18167)) (StringLiteralValue!9843 (value!100601 List!18167)) (EOFValue!3281 (value!100602 List!18167)) (IdentValue!3281 (value!100603 List!18167)) (DelimiterValue!6563 (value!100604 List!18167)) (DedentValue!3281 (value!100605 List!18167)) (NewLineValue!3281 (value!100606 List!18167)) (IntegerValue!9843 (value!100607 (_ BitVec 32)) (text!23414 List!18167)) (IntegerValue!9844 (value!100608 Int) (text!23415 List!18167)) (Times!3281) (Or!3281) (Equal!3281) (Minus!3281) (Broken!16409 (value!100609 List!18167)) (And!3281) (Div!3281) (LessEqual!3281) (Mod!3281) (Concat!7800) (Not!3281) (Plus!3281) (SpaceValue!3281 (value!100610 List!18167)) (IntegerValue!9845 (value!100611 Int) (text!23416 List!18167)) (StringLiteralValue!9844 (text!23417 List!18167)) (FloatLiteralValue!6563 (text!23418 List!18167)) (BytesLiteralValue!3281 (value!100612 List!18167)) (CommentValue!6563 (value!100613 List!18167)) (StringLiteralValue!9845 (value!100614 List!18167)) (ErrorTokenValue!3281 (msg!3342 List!18167)) )
))
(declare-datatypes ((C!9212 0))(
  ( (C!9213 (val!5202 Int)) )
))
(declare-datatypes ((List!18168 0))(
  ( (Nil!18098) (Cons!18098 (h!23499 C!9212) (t!150133 List!18168)) )
))
(declare-datatypes ((Regex!4519 0))(
  ( (ElementMatch!4519 (c!267123 C!9212)) (Concat!7801 (regOne!9550 Regex!4519) (regTwo!9550 Regex!4519)) (EmptyExpr!4519) (Star!4519 (reg!4848 Regex!4519)) (EmptyLang!4519) (Union!4519 (regOne!9551 Regex!4519) (regTwo!9551 Regex!4519)) )
))
(declare-datatypes ((String!20737 0))(
  ( (String!20738 (value!100615 String)) )
))
(declare-datatypes ((IArray!12065 0))(
  ( (IArray!12066 (innerList!6090 List!18168)) )
))
(declare-datatypes ((Conc!6030 0))(
  ( (Node!6030 (left!14511 Conc!6030) (right!14841 Conc!6030) (csize!12290 Int) (cheight!6241 Int)) (Leaf!8846 (xs!8866 IArray!12065) (csize!12291 Int)) (Empty!6030) )
))
(declare-datatypes ((BalanceConc!12004 0))(
  ( (BalanceConc!12005 (c!267124 Conc!6030)) )
))
(declare-datatypes ((TokenValueInjection!6222 0))(
  ( (TokenValueInjection!6223 (toValue!4630 Int) (toChars!4489 Int)) )
))
(declare-datatypes ((Rule!6182 0))(
  ( (Rule!6183 (regex!3191 Regex!4519) (tag!3471 String!20737) (isSeparator!3191 Bool) (transformation!3191 TokenValueInjection!6222)) )
))
(declare-datatypes ((List!18169 0))(
  ( (Nil!18099) (Cons!18099 (h!23500 Rule!6182) (t!150134 List!18169)) )
))
(declare-fun rules!1846 () List!18169)

(declare-fun isEmpty!11131 (List!18169) Bool)

(assert (=> b!1642396 (= res!735819 (not (isEmpty!11131 rules!1846)))))

(declare-fun b!1642397 () Bool)

(declare-fun e!1053286 () Bool)

(declare-fun e!1053289 () Bool)

(declare-fun tp!475959 () Bool)

(assert (=> b!1642397 (= e!1053286 (and e!1053289 tp!475959))))

(declare-fun e!1053291 () Bool)

(assert (=> b!1642398 (= e!1053291 (and tp!475956 tp!475961))))

(declare-fun e!1053290 () Bool)

(declare-fun b!1642399 () Bool)

(declare-fun e!1053288 () Bool)

(declare-datatypes ((Token!5948 0))(
  ( (Token!5949 (value!100616 TokenValue!3281) (rule!5041 Rule!6182) (size!14418 Int) (originalCharacters!4005 List!18168)) )
))
(declare-datatypes ((List!18170 0))(
  ( (Nil!18100) (Cons!18100 (h!23501 Token!5948) (t!150135 List!18170)) )
))
(declare-fun tokens!457 () List!18170)

(declare-fun tp!475962 () Bool)

(declare-fun inv!21 (TokenValue!3281) Bool)

(assert (=> b!1642399 (= e!1053288 (and (inv!21 (value!100616 (h!23501 tokens!457))) e!1053290 tp!475962))))

(declare-fun e!1053292 () Bool)

(assert (=> b!1642400 (= e!1053292 (and tp!475957 tp!475960))))

(declare-fun res!735812 () Bool)

(assert (=> start!157218 (=> (not res!735812) (not e!1053285))))

(declare-datatypes ((LexerInterface!2820 0))(
  ( (LexerInterfaceExt!2817 (__x!11865 Int)) (Lexer!2818) )
))
(declare-fun thiss!17113 () LexerInterface!2820)

(get-info :version)

(assert (=> start!157218 (= res!735812 ((_ is Lexer!2818) thiss!17113))))

(assert (=> start!157218 e!1053285))

(assert (=> start!157218 true))

(assert (=> start!157218 e!1053286))

(declare-fun e!1053284 () Bool)

(assert (=> start!157218 e!1053284))

(declare-fun b!1642401 () Bool)

(declare-fun e!1053287 () Bool)

(assert (=> b!1642401 (= e!1053285 e!1053287)))

(declare-fun res!735817 () Bool)

(assert (=> b!1642401 (=> (not res!735817) (not e!1053287))))

(declare-fun lt!604624 () List!18168)

(declare-fun lt!604630 () List!18168)

(assert (=> b!1642401 (= res!735817 (= lt!604624 lt!604630))))

(declare-fun lt!604627 () List!18168)

(declare-fun lt!604628 () List!18168)

(declare-fun ++!4868 (List!18168 List!18168) List!18168)

(assert (=> b!1642401 (= lt!604630 (++!4868 lt!604627 lt!604628))))

(declare-fun lt!604626 () BalanceConc!12004)

(declare-fun list!7161 (BalanceConc!12004) List!18168)

(assert (=> b!1642401 (= lt!604624 (list!7161 lt!604626))))

(declare-fun lt!604621 () BalanceConc!12004)

(assert (=> b!1642401 (= lt!604628 (list!7161 lt!604621))))

(declare-fun charsOf!1840 (Token!5948) BalanceConc!12004)

(assert (=> b!1642401 (= lt!604627 (list!7161 (charsOf!1840 (h!23501 tokens!457))))))

(declare-datatypes ((IArray!12067 0))(
  ( (IArray!12068 (innerList!6091 List!18170)) )
))
(declare-datatypes ((Conc!6031 0))(
  ( (Node!6031 (left!14512 Conc!6031) (right!14842 Conc!6031) (csize!12292 Int) (cheight!6242 Int)) (Leaf!8847 (xs!8867 IArray!12067) (csize!12293 Int)) (Empty!6031) )
))
(declare-datatypes ((BalanceConc!12006 0))(
  ( (BalanceConc!12007 (c!267125 Conc!6031)) )
))
(declare-datatypes ((tuple2!17754 0))(
  ( (tuple2!17755 (_1!10279 BalanceConc!12006) (_2!10279 BalanceConc!12004)) )
))
(declare-fun lt!604629 () tuple2!17754)

(declare-fun lex!1304 (LexerInterface!2820 List!18169 BalanceConc!12004) tuple2!17754)

(assert (=> b!1642401 (= lt!604629 (lex!1304 thiss!17113 rules!1846 lt!604621))))

(declare-fun lt!604617 () BalanceConc!12006)

(declare-fun print!1351 (LexerInterface!2820 BalanceConc!12006) BalanceConc!12004)

(assert (=> b!1642401 (= lt!604621 (print!1351 thiss!17113 lt!604617))))

(declare-fun seqFromList!2126 (List!18170) BalanceConc!12006)

(assert (=> b!1642401 (= lt!604617 (seqFromList!2126 (t!150135 tokens!457)))))

(assert (=> b!1642401 (= lt!604626 (print!1351 thiss!17113 (seqFromList!2126 tokens!457)))))

(declare-fun b!1642402 () Bool)

(declare-fun res!735814 () Bool)

(assert (=> b!1642402 (=> (not res!735814) (not e!1053285))))

(declare-fun rulesProduceEachTokenIndividuallyList!1022 (LexerInterface!2820 List!18169 List!18170) Bool)

(assert (=> b!1642402 (= res!735814 (rulesProduceEachTokenIndividuallyList!1022 thiss!17113 rules!1846 tokens!457))))

(declare-fun lt!604625 () List!18170)

(declare-fun lt!604622 () List!18170)

(declare-fun lt!604618 () List!18170)

(declare-fun b!1642403 () Bool)

(declare-fun e!1053296 () Bool)

(assert (=> b!1642403 (= e!1053296 (or (not (= lt!604625 lt!604618)) (= lt!604618 lt!604622)))))

(declare-fun list!7162 (BalanceConc!12006) List!18170)

(assert (=> b!1642403 (= lt!604618 (list!7162 lt!604617))))

(assert (=> b!1642403 (= lt!604625 lt!604622)))

(declare-fun prepend!739 (BalanceConc!12006 Token!5948) BalanceConc!12006)

(assert (=> b!1642403 (= lt!604622 (list!7162 (prepend!739 (seqFromList!2126 (t!150135 (t!150135 tokens!457))) (h!23501 (t!150135 tokens!457)))))))

(declare-datatypes ((Unit!29834 0))(
  ( (Unit!29835) )
))
(declare-fun lt!604620 () Unit!29834)

(declare-fun seqFromListBHdTlConstructive!266 (Token!5948 List!18170 BalanceConc!12006) Unit!29834)

(assert (=> b!1642403 (= lt!604620 (seqFromListBHdTlConstructive!266 (h!23501 (t!150135 tokens!457)) (t!150135 (t!150135 tokens!457)) (_1!10279 lt!604629)))))

(declare-fun b!1642404 () Bool)

(declare-fun tp!475955 () Bool)

(declare-fun inv!23452 (String!20737) Bool)

(declare-fun inv!23455 (TokenValueInjection!6222) Bool)

(assert (=> b!1642404 (= e!1053289 (and tp!475955 (inv!23452 (tag!3471 (h!23500 rules!1846))) (inv!23455 (transformation!3191 (h!23500 rules!1846))) e!1053292))))

(declare-fun b!1642405 () Bool)

(declare-fun tp!475954 () Bool)

(declare-fun inv!23456 (Token!5948) Bool)

(assert (=> b!1642405 (= e!1053284 (and (inv!23456 (h!23501 tokens!457)) e!1053288 tp!475954))))

(declare-fun tp!475958 () Bool)

(declare-fun b!1642406 () Bool)

(assert (=> b!1642406 (= e!1053290 (and tp!475958 (inv!23452 (tag!3471 (rule!5041 (h!23501 tokens!457)))) (inv!23455 (transformation!3191 (rule!5041 (h!23501 tokens!457)))) e!1053291))))

(declare-fun b!1642407 () Bool)

(declare-fun res!735816 () Bool)

(assert (=> b!1642407 (=> (not res!735816) (not e!1053285))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!513 (LexerInterface!2820 List!18170 List!18169) Bool)

(assert (=> b!1642407 (= res!735816 (tokensListTwoByTwoPredicateSeparableList!513 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1642408 () Bool)

(assert (=> b!1642408 (= e!1053287 (not e!1053296))))

(declare-fun res!735818 () Bool)

(assert (=> b!1642408 (=> res!735818 e!1053296)))

(assert (=> b!1642408 (= res!735818 (not (= lt!604625 (t!150135 tokens!457))))))

(assert (=> b!1642408 (= lt!604625 (list!7162 (_1!10279 lt!604629)))))

(declare-fun lt!604619 () Unit!29834)

(declare-fun theoremInvertabilityWhenTokenListSeparable!263 (LexerInterface!2820 List!18169 List!18170) Unit!29834)

(assert (=> b!1642408 (= lt!604619 (theoremInvertabilityWhenTokenListSeparable!263 thiss!17113 rules!1846 (t!150135 tokens!457)))))

(declare-fun isPrefix!1449 (List!18168 List!18168) Bool)

(assert (=> b!1642408 (isPrefix!1449 lt!604627 lt!604630)))

(declare-fun lt!604623 () Unit!29834)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!974 (List!18168 List!18168) Unit!29834)

(assert (=> b!1642408 (= lt!604623 (lemmaConcatTwoListThenFirstIsPrefix!974 lt!604627 lt!604628))))

(declare-fun b!1642409 () Bool)

(declare-fun res!735813 () Bool)

(assert (=> b!1642409 (=> (not res!735813) (not e!1053285))))

(declare-fun rulesInvariant!2489 (LexerInterface!2820 List!18169) Bool)

(assert (=> b!1642409 (= res!735813 (rulesInvariant!2489 thiss!17113 rules!1846))))

(declare-fun b!1642410 () Bool)

(declare-fun res!735815 () Bool)

(assert (=> b!1642410 (=> (not res!735815) (not e!1053285))))

(assert (=> b!1642410 (= res!735815 (and (not ((_ is Nil!18100) tokens!457)) (not ((_ is Nil!18100) (t!150135 tokens!457)))))))

(assert (= (and start!157218 res!735812) b!1642396))

(assert (= (and b!1642396 res!735819) b!1642409))

(assert (= (and b!1642409 res!735813) b!1642402))

(assert (= (and b!1642402 res!735814) b!1642407))

(assert (= (and b!1642407 res!735816) b!1642410))

(assert (= (and b!1642410 res!735815) b!1642401))

(assert (= (and b!1642401 res!735817) b!1642408))

(assert (= (and b!1642408 (not res!735818)) b!1642403))

(assert (= b!1642404 b!1642400))

(assert (= b!1642397 b!1642404))

(assert (= (and start!157218 ((_ is Cons!18099) rules!1846)) b!1642397))

(assert (= b!1642406 b!1642398))

(assert (= b!1642399 b!1642406))

(assert (= b!1642405 b!1642399))

(assert (= (and start!157218 ((_ is Cons!18100) tokens!457)) b!1642405))

(declare-fun m!1984135 () Bool)

(assert (=> b!1642405 m!1984135))

(declare-fun m!1984137 () Bool)

(assert (=> b!1642408 m!1984137))

(declare-fun m!1984139 () Bool)

(assert (=> b!1642408 m!1984139))

(declare-fun m!1984141 () Bool)

(assert (=> b!1642408 m!1984141))

(declare-fun m!1984143 () Bool)

(assert (=> b!1642408 m!1984143))

(declare-fun m!1984145 () Bool)

(assert (=> b!1642401 m!1984145))

(declare-fun m!1984147 () Bool)

(assert (=> b!1642401 m!1984147))

(declare-fun m!1984149 () Bool)

(assert (=> b!1642401 m!1984149))

(declare-fun m!1984151 () Bool)

(assert (=> b!1642401 m!1984151))

(declare-fun m!1984153 () Bool)

(assert (=> b!1642401 m!1984153))

(declare-fun m!1984155 () Bool)

(assert (=> b!1642401 m!1984155))

(declare-fun m!1984157 () Bool)

(assert (=> b!1642401 m!1984157))

(assert (=> b!1642401 m!1984149))

(declare-fun m!1984159 () Bool)

(assert (=> b!1642401 m!1984159))

(assert (=> b!1642401 m!1984153))

(declare-fun m!1984161 () Bool)

(assert (=> b!1642401 m!1984161))

(declare-fun m!1984163 () Bool)

(assert (=> b!1642401 m!1984163))

(declare-fun m!1984165 () Bool)

(assert (=> b!1642404 m!1984165))

(declare-fun m!1984167 () Bool)

(assert (=> b!1642404 m!1984167))

(declare-fun m!1984169 () Bool)

(assert (=> b!1642403 m!1984169))

(declare-fun m!1984171 () Bool)

(assert (=> b!1642403 m!1984171))

(declare-fun m!1984173 () Bool)

(assert (=> b!1642403 m!1984173))

(declare-fun m!1984175 () Bool)

(assert (=> b!1642403 m!1984175))

(declare-fun m!1984177 () Bool)

(assert (=> b!1642403 m!1984177))

(assert (=> b!1642403 m!1984173))

(assert (=> b!1642403 m!1984175))

(declare-fun m!1984179 () Bool)

(assert (=> b!1642402 m!1984179))

(declare-fun m!1984181 () Bool)

(assert (=> b!1642399 m!1984181))

(declare-fun m!1984183 () Bool)

(assert (=> b!1642407 m!1984183))

(declare-fun m!1984185 () Bool)

(assert (=> b!1642406 m!1984185))

(declare-fun m!1984187 () Bool)

(assert (=> b!1642406 m!1984187))

(declare-fun m!1984189 () Bool)

(assert (=> b!1642409 m!1984189))

(declare-fun m!1984191 () Bool)

(assert (=> b!1642396 m!1984191))

(check-sat (not b!1642397) (not b_next!45229) (not b!1642409) (not b!1642408) b_and!116465 (not b_next!45225) (not b!1642401) (not b!1642404) b_and!116461 (not b!1642406) (not b!1642402) (not b!1642403) (not b!1642396) (not b!1642407) b_and!116467 (not b!1642399) (not b_next!45223) (not b!1642405) (not b_next!45227) b_and!116463)
(check-sat (not b_next!45229) b_and!116465 (not b_next!45225) b_and!116467 (not b_next!45223) b_and!116461 (not b_next!45227) b_and!116463)
