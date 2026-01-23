; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169030 () Bool)

(assert start!169030)

(declare-fun b!1723319 () Bool)

(declare-fun b_free!46995 () Bool)

(declare-fun b_next!47699 () Bool)

(assert (=> b!1723319 (= b_free!46995 (not b_next!47699))))

(declare-fun tp!491907 () Bool)

(declare-fun b_and!126111 () Bool)

(assert (=> b!1723319 (= tp!491907 b_and!126111)))

(declare-fun b_free!46997 () Bool)

(declare-fun b_next!47701 () Bool)

(assert (=> b!1723319 (= b_free!46997 (not b_next!47701))))

(declare-fun tp!491901 () Bool)

(declare-fun b_and!126113 () Bool)

(assert (=> b!1723319 (= tp!491901 b_and!126113)))

(declare-fun b!1723335 () Bool)

(declare-fun b_free!46999 () Bool)

(declare-fun b_next!47703 () Bool)

(assert (=> b!1723335 (= b_free!46999 (not b_next!47703))))

(declare-fun tp!491911 () Bool)

(declare-fun b_and!126115 () Bool)

(assert (=> b!1723335 (= tp!491911 b_and!126115)))

(declare-fun b_free!47001 () Bool)

(declare-fun b_next!47705 () Bool)

(assert (=> b!1723335 (= b_free!47001 (not b_next!47705))))

(declare-fun tp!491909 () Bool)

(declare-fun b_and!126117 () Bool)

(assert (=> b!1723335 (= tp!491909 b_and!126117)))

(declare-fun b!1723329 () Bool)

(declare-fun b_free!47003 () Bool)

(declare-fun b_next!47707 () Bool)

(assert (=> b!1723329 (= b_free!47003 (not b_next!47707))))

(declare-fun tp!491905 () Bool)

(declare-fun b_and!126119 () Bool)

(assert (=> b!1723329 (= tp!491905 b_and!126119)))

(declare-fun b_free!47005 () Bool)

(declare-fun b_next!47709 () Bool)

(assert (=> b!1723329 (= b_free!47005 (not b_next!47709))))

(declare-fun tp!491903 () Bool)

(declare-fun b_and!126121 () Bool)

(assert (=> b!1723329 (= tp!491903 b_and!126121)))

(declare-fun b!1723360 () Bool)

(declare-fun e!1102327 () Bool)

(assert (=> b!1723360 (= e!1102327 true)))

(declare-fun b!1723359 () Bool)

(declare-fun e!1102326 () Bool)

(assert (=> b!1723359 (= e!1102326 e!1102327)))

(declare-fun b!1723358 () Bool)

(declare-fun e!1102325 () Bool)

(assert (=> b!1723358 (= e!1102325 e!1102326)))

(declare-fun b!1723342 () Bool)

(assert (=> b!1723342 e!1102325))

(assert (= b!1723359 b!1723360))

(assert (= b!1723358 b!1723359))

(assert (= b!1723342 b!1723358))

(declare-fun lambda!69176 () Int)

(declare-fun order!11521 () Int)

(declare-datatypes ((List!18936 0))(
  ( (Nil!18866) (Cons!18866 (h!24267 (_ BitVec 16)) (t!159767 List!18936)) )
))
(declare-datatypes ((TokenValue!3433 0))(
  ( (FloatLiteralValue!6866 (text!24476 List!18936)) (TokenValueExt!3432 (__x!12168 Int)) (Broken!17165 (value!104922 List!18936)) (Object!3502) (End!3433) (Def!3433) (Underscore!3433) (Match!3433) (Else!3433) (Error!3433) (Case!3433) (If!3433) (Extends!3433) (Abstract!3433) (Class!3433) (Val!3433) (DelimiterValue!6866 (del!3493 List!18936)) (KeywordValue!3439 (value!104923 List!18936)) (CommentValue!6866 (value!104924 List!18936)) (WhitespaceValue!6866 (value!104925 List!18936)) (IndentationValue!3433 (value!104926 List!18936)) (String!21496) (Int32!3433) (Broken!17166 (value!104927 List!18936)) (Boolean!3434) (Unit!32710) (OperatorValue!3436 (op!3493 List!18936)) (IdentifierValue!6866 (value!104928 List!18936)) (IdentifierValue!6867 (value!104929 List!18936)) (WhitespaceValue!6867 (value!104930 List!18936)) (True!6866) (False!6866) (Broken!17167 (value!104931 List!18936)) (Broken!17168 (value!104932 List!18936)) (True!6867) (RightBrace!3433) (RightBracket!3433) (Colon!3433) (Null!3433) (Comma!3433) (LeftBracket!3433) (False!6867) (LeftBrace!3433) (ImaginaryLiteralValue!3433 (text!24477 List!18936)) (StringLiteralValue!10299 (value!104933 List!18936)) (EOFValue!3433 (value!104934 List!18936)) (IdentValue!3433 (value!104935 List!18936)) (DelimiterValue!6867 (value!104936 List!18936)) (DedentValue!3433 (value!104937 List!18936)) (NewLineValue!3433 (value!104938 List!18936)) (IntegerValue!10299 (value!104939 (_ BitVec 32)) (text!24478 List!18936)) (IntegerValue!10300 (value!104940 Int) (text!24479 List!18936)) (Times!3433) (Or!3433) (Equal!3433) (Minus!3433) (Broken!17169 (value!104941 List!18936)) (And!3433) (Div!3433) (LessEqual!3433) (Mod!3433) (Concat!8104) (Not!3433) (Plus!3433) (SpaceValue!3433 (value!104942 List!18936)) (IntegerValue!10301 (value!104943 Int) (text!24480 List!18936)) (StringLiteralValue!10300 (text!24481 List!18936)) (FloatLiteralValue!6867 (text!24482 List!18936)) (BytesLiteralValue!3433 (value!104944 List!18936)) (CommentValue!6867 (value!104945 List!18936)) (StringLiteralValue!10301 (value!104946 List!18936)) (ErrorTokenValue!3433 (msg!3494 List!18936)) )
))
(declare-datatypes ((C!9516 0))(
  ( (C!9517 (val!5354 Int)) )
))
(declare-datatypes ((List!18937 0))(
  ( (Nil!18867) (Cons!18867 (h!24268 C!9516) (t!159768 List!18937)) )
))
(declare-datatypes ((Regex!4671 0))(
  ( (ElementMatch!4671 (c!281894 C!9516)) (Concat!8105 (regOne!9854 Regex!4671) (regTwo!9854 Regex!4671)) (EmptyExpr!4671) (Star!4671 (reg!5000 Regex!4671)) (EmptyLang!4671) (Union!4671 (regOne!9855 Regex!4671) (regTwo!9855 Regex!4671)) )
))
(declare-datatypes ((String!21497 0))(
  ( (String!21498 (value!104947 String)) )
))
(declare-datatypes ((IArray!12555 0))(
  ( (IArray!12556 (innerList!6335 List!18937)) )
))
(declare-datatypes ((Conc!6275 0))(
  ( (Node!6275 (left!15056 Conc!6275) (right!15386 Conc!6275) (csize!12780 Int) (cheight!6486 Int)) (Leaf!9167 (xs!9151 IArray!12555) (csize!12781 Int)) (Empty!6275) )
))
(declare-datatypes ((BalanceConc!12494 0))(
  ( (BalanceConc!12495 (c!281895 Conc!6275)) )
))
(declare-datatypes ((TokenValueInjection!6526 0))(
  ( (TokenValueInjection!6527 (toValue!4850 Int) (toChars!4709 Int)) )
))
(declare-datatypes ((Rule!6486 0))(
  ( (Rule!6487 (regex!3343 Regex!4671) (tag!3657 String!21497) (isSeparator!3343 Bool) (transformation!3343 TokenValueInjection!6526)) )
))
(declare-datatypes ((Token!6252 0))(
  ( (Token!6253 (value!104948 TokenValue!3433) (rule!5297 Rule!6486) (size!14990 Int) (originalCharacters!4157 List!18937)) )
))
(declare-datatypes ((tuple2!18558 0))(
  ( (tuple2!18559 (_1!10681 Token!6252) (_2!10681 List!18937)) )
))
(declare-fun lt!659521 () tuple2!18558)

(declare-fun order!11519 () Int)

(declare-fun dynLambda!8706 (Int Int) Int)

(declare-fun dynLambda!8707 (Int Int) Int)

(assert (=> b!1723360 (< (dynLambda!8706 order!11519 (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) (dynLambda!8707 order!11521 lambda!69176))))

(declare-fun order!11523 () Int)

(declare-fun dynLambda!8708 (Int Int) Int)

(assert (=> b!1723360 (< (dynLambda!8708 order!11523 (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) (dynLambda!8707 order!11521 lambda!69176))))

(declare-fun b!1723318 () Bool)

(declare-fun e!1102307 () Bool)

(assert (=> b!1723318 (= e!1102307 true)))

(declare-datatypes ((LexerInterface!2972 0))(
  ( (LexerInterfaceExt!2969 (__x!12169 Int)) (Lexer!2970) )
))
(declare-fun thiss!24550 () LexerInterface!2972)

(declare-fun ruleValid!842 (LexerInterface!2972 Rule!6486) Bool)

(assert (=> b!1723318 (ruleValid!842 thiss!24550 (rule!5297 (_1!10681 lt!659521)))))

(declare-datatypes ((Unit!32711 0))(
  ( (Unit!32712) )
))
(declare-fun lt!659512 () Unit!32711)

(declare-datatypes ((List!18938 0))(
  ( (Nil!18868) (Cons!18868 (h!24269 Rule!6486) (t!159769 List!18938)) )
))
(declare-fun rules!3447 () List!18938)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!366 (LexerInterface!2972 Rule!6486 List!18938) Unit!32711)

(assert (=> b!1723318 (= lt!659512 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!366 thiss!24550 (rule!5297 (_1!10681 lt!659521)) rules!3447))))

(declare-fun e!1102318 () Bool)

(assert (=> b!1723319 (= e!1102318 (and tp!491907 tp!491901))))

(declare-fun b!1723320 () Bool)

(declare-fun res!773330 () Bool)

(declare-fun e!1102302 () Bool)

(assert (=> b!1723320 (=> (not res!773330) (not e!1102302))))

(declare-fun rule!422 () Rule!6486)

(declare-fun contains!3365 (List!18938 Rule!6486) Bool)

(assert (=> b!1723320 (= res!773330 (contains!3365 rules!3447 rule!422))))

(declare-fun b!1723321 () Bool)

(declare-fun e!1102315 () Bool)

(declare-fun lt!659509 () Rule!6486)

(assert (=> b!1723321 (= e!1102315 (= (rule!5297 (_1!10681 lt!659521)) lt!659509))))

(declare-fun b!1723322 () Bool)

(declare-fun res!773331 () Bool)

(declare-fun e!1102316 () Bool)

(assert (=> b!1723322 (=> (not res!773331) (not e!1102316))))

(declare-fun token!523 () Token!6252)

(assert (=> b!1723322 (= res!773331 (= (rule!5297 token!523) rule!422))))

(declare-fun tp!491908 () Bool)

(declare-fun e!1102312 () Bool)

(declare-fun b!1723323 () Bool)

(declare-fun e!1102309 () Bool)

(declare-fun inv!21 (TokenValue!3433) Bool)

(assert (=> b!1723323 (= e!1102312 (and (inv!21 (value!104948 token!523)) e!1102309 tp!491908))))

(declare-fun b!1723324 () Bool)

(declare-fun e!1102299 () Bool)

(declare-fun e!1102313 () Bool)

(assert (=> b!1723324 (= e!1102299 e!1102313)))

(declare-fun res!773337 () Bool)

(assert (=> b!1723324 (=> res!773337 e!1102313)))

(declare-fun lt!659508 () Int)

(declare-datatypes ((Option!3710 0))(
  ( (None!3709) (Some!3709 (v!25116 tuple2!18558)) )
))
(declare-fun lt!659510 () Option!3710)

(declare-fun lt!659498 () List!18937)

(declare-fun lt!659518 () TokenValue!3433)

(assert (=> b!1723324 (= res!773337 (not (= lt!659510 (Some!3709 (tuple2!18559 (Token!6253 lt!659518 (rule!5297 (_1!10681 lt!659521)) lt!659508 lt!659498) (_2!10681 lt!659521))))))))

(declare-fun lt!659500 () BalanceConc!12494)

(declare-fun size!14991 (BalanceConc!12494) Int)

(assert (=> b!1723324 (= lt!659508 (size!14991 lt!659500))))

(declare-fun apply!5148 (TokenValueInjection!6526 BalanceConc!12494) TokenValue!3433)

(assert (=> b!1723324 (= lt!659518 (apply!5148 (transformation!3343 (rule!5297 (_1!10681 lt!659521))) lt!659500))))

(declare-fun lt!659503 () Unit!32711)

(declare-fun lemmaCharactersSize!415 (Token!6252) Unit!32711)

(assert (=> b!1723324 (= lt!659503 (lemmaCharactersSize!415 (_1!10681 lt!659521)))))

(declare-fun lt!659513 () Unit!32711)

(declare-fun lemmaEqSameImage!268 (TokenValueInjection!6526 BalanceConc!12494 BalanceConc!12494) Unit!32711)

(declare-fun seqFromList!2317 (List!18937) BalanceConc!12494)

(assert (=> b!1723324 (= lt!659513 (lemmaEqSameImage!268 (transformation!3343 (rule!5297 (_1!10681 lt!659521))) lt!659500 (seqFromList!2317 (originalCharacters!4157 (_1!10681 lt!659521)))))))

(declare-fun b!1723325 () Bool)

(declare-fun res!773324 () Bool)

(declare-fun e!1102303 () Bool)

(assert (=> b!1723325 (=> res!773324 e!1102303)))

(declare-fun suffix!1421 () List!18937)

(declare-fun isEmpty!11865 (List!18937) Bool)

(assert (=> b!1723325 (= res!773324 (isEmpty!11865 suffix!1421))))

(declare-fun b!1723326 () Bool)

(declare-fun e!1102301 () Bool)

(declare-fun tp_is_empty!7585 () Bool)

(declare-fun tp!491904 () Bool)

(assert (=> b!1723326 (= e!1102301 (and tp_is_empty!7585 tp!491904))))

(declare-fun e!1102293 () Bool)

(declare-fun b!1723327 () Bool)

(declare-fun tp!491912 () Bool)

(declare-fun e!1102298 () Bool)

(declare-fun inv!24368 (String!21497) Bool)

(declare-fun inv!24373 (TokenValueInjection!6526) Bool)

(assert (=> b!1723327 (= e!1102298 (and tp!491912 (inv!24368 (tag!3657 rule!422)) (inv!24373 (transformation!3343 rule!422)) e!1102293))))

(assert (=> b!1723329 (= e!1102293 (and tp!491905 tp!491903))))

(declare-fun b!1723330 () Bool)

(declare-fun e!1102311 () Bool)

(assert (=> b!1723330 (= e!1102311 e!1102316)))

(declare-fun res!773340 () Bool)

(assert (=> b!1723330 (=> (not res!773340) (not e!1102316))))

(declare-fun lt!659506 () tuple2!18558)

(assert (=> b!1723330 (= res!773340 (= (_1!10681 lt!659506) token!523))))

(declare-fun lt!659524 () Option!3710)

(declare-fun get!5599 (Option!3710) tuple2!18558)

(assert (=> b!1723330 (= lt!659506 (get!5599 lt!659524))))

(declare-fun b!1723331 () Bool)

(declare-fun res!773320 () Bool)

(declare-fun e!1102297 () Bool)

(assert (=> b!1723331 (=> res!773320 e!1102297)))

(declare-fun matchR!2145 (Regex!4671 List!18937) Bool)

(assert (=> b!1723331 (= res!773320 (not (matchR!2145 (regex!3343 (rule!5297 (_1!10681 lt!659521))) lt!659498)))))

(declare-fun b!1723332 () Bool)

(declare-fun res!773322 () Bool)

(assert (=> b!1723332 (=> res!773322 e!1102307)))

(assert (=> b!1723332 (= res!773322 (not (contains!3365 rules!3447 (rule!5297 (_1!10681 lt!659521)))))))

(declare-fun b!1723333 () Bool)

(declare-fun e!1102294 () Bool)

(assert (=> b!1723333 (= e!1102294 e!1102307)))

(declare-fun res!773329 () Bool)

(assert (=> b!1723333 (=> res!773329 e!1102307)))

(declare-fun lt!659505 () BalanceConc!12494)

(assert (=> b!1723333 (= res!773329 (<= lt!659508 (size!14991 lt!659505)))))

(declare-fun lt!659496 () Regex!4671)

(declare-fun lt!659520 () List!18937)

(assert (=> b!1723333 (matchR!2145 lt!659496 lt!659520)))

(declare-fun lt!659495 () Unit!32711)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!92 (LexerInterface!2972 List!18938 List!18937 Token!6252 Rule!6486 List!18937) Unit!32711)

(assert (=> b!1723333 (= lt!659495 (lemmaMaxPrefixThenMatchesRulesRegex!92 thiss!24550 rules!3447 lt!659520 token!523 rule!422 Nil!18867))))

(declare-fun b!1723334 () Bool)

(declare-fun res!773338 () Bool)

(assert (=> b!1723334 (=> (not res!773338) (not e!1102316))))

(assert (=> b!1723334 (= res!773338 (isEmpty!11865 (_2!10681 lt!659506)))))

(declare-fun e!1102308 () Bool)

(assert (=> b!1723335 (= e!1102308 (and tp!491911 tp!491909))))

(declare-fun b!1723336 () Bool)

(declare-fun e!1102304 () Bool)

(assert (=> b!1723336 (= e!1102304 e!1102297)))

(declare-fun res!773339 () Bool)

(assert (=> b!1723336 (=> res!773339 e!1102297)))

(declare-fun lt!659517 () List!18937)

(declare-fun isPrefix!1584 (List!18937 List!18937) Bool)

(assert (=> b!1723336 (= res!773339 (not (isPrefix!1584 lt!659498 lt!659517)))))

(declare-fun lt!659516 () List!18937)

(assert (=> b!1723336 (isPrefix!1584 lt!659498 lt!659516)))

(declare-fun ++!5168 (List!18937 List!18937) List!18937)

(assert (=> b!1723336 (= lt!659516 (++!5168 lt!659498 (_2!10681 lt!659521)))))

(declare-fun lt!659522 () Unit!32711)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1094 (List!18937 List!18937) Unit!32711)

(assert (=> b!1723336 (= lt!659522 (lemmaConcatTwoListThenFirstIsPrefix!1094 lt!659498 (_2!10681 lt!659521)))))

(declare-fun list!7624 (BalanceConc!12494) List!18937)

(assert (=> b!1723336 (= lt!659498 (list!7624 lt!659500))))

(declare-fun charsOf!1992 (Token!6252) BalanceConc!12494)

(assert (=> b!1723336 (= lt!659500 (charsOf!1992 (_1!10681 lt!659521)))))

(declare-fun e!1102300 () Bool)

(assert (=> b!1723336 e!1102300))

(declare-fun res!773333 () Bool)

(assert (=> b!1723336 (=> (not res!773333) (not e!1102300))))

(declare-datatypes ((Option!3711 0))(
  ( (None!3710) (Some!3710 (v!25117 Rule!6486)) )
))
(declare-fun lt!659511 () Option!3711)

(declare-fun isDefined!3053 (Option!3711) Bool)

(assert (=> b!1723336 (= res!773333 (isDefined!3053 lt!659511))))

(declare-fun getRuleFromTag!393 (LexerInterface!2972 List!18938 String!21497) Option!3711)

(assert (=> b!1723336 (= lt!659511 (getRuleFromTag!393 thiss!24550 rules!3447 (tag!3657 (rule!5297 (_1!10681 lt!659521)))))))

(declare-fun lt!659501 () Unit!32711)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!393 (LexerInterface!2972 List!18938 List!18937 Token!6252) Unit!32711)

(assert (=> b!1723336 (= lt!659501 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!393 thiss!24550 rules!3447 lt!659517 (_1!10681 lt!659521)))))

(assert (=> b!1723336 (= lt!659521 (get!5599 lt!659510))))

(declare-fun lt!659519 () Unit!32711)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!496 (LexerInterface!2972 List!18938 List!18937 List!18937) Unit!32711)

(assert (=> b!1723336 (= lt!659519 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!496 thiss!24550 rules!3447 lt!659520 suffix!1421))))

(declare-fun maxPrefix!1526 (LexerInterface!2972 List!18938 List!18937) Option!3710)

(assert (=> b!1723336 (= lt!659510 (maxPrefix!1526 thiss!24550 rules!3447 lt!659517))))

(assert (=> b!1723336 (isPrefix!1584 lt!659520 lt!659517)))

(declare-fun lt!659515 () Unit!32711)

(assert (=> b!1723336 (= lt!659515 (lemmaConcatTwoListThenFirstIsPrefix!1094 lt!659520 suffix!1421))))

(assert (=> b!1723336 (= lt!659517 (++!5168 lt!659520 suffix!1421))))

(declare-fun b!1723337 () Bool)

(declare-fun e!1102306 () Bool)

(declare-fun e!1102305 () Bool)

(declare-fun tp!491910 () Bool)

(assert (=> b!1723337 (= e!1102306 (and e!1102305 tp!491910))))

(declare-fun b!1723338 () Bool)

(declare-fun tp!491906 () Bool)

(assert (=> b!1723338 (= e!1102305 (and tp!491906 (inv!24368 (tag!3657 (h!24269 rules!3447))) (inv!24373 (transformation!3343 (h!24269 rules!3447))) e!1102318))))

(declare-fun b!1723339 () Bool)

(assert (=> b!1723339 (= e!1102302 e!1102311)))

(declare-fun res!773334 () Bool)

(assert (=> b!1723339 (=> (not res!773334) (not e!1102311))))

(declare-fun isDefined!3054 (Option!3710) Bool)

(assert (=> b!1723339 (= res!773334 (isDefined!3054 lt!659524))))

(assert (=> b!1723339 (= lt!659524 (maxPrefix!1526 thiss!24550 rules!3447 lt!659520))))

(assert (=> b!1723339 (= lt!659520 (list!7624 lt!659505))))

(assert (=> b!1723339 (= lt!659505 (charsOf!1992 token!523))))

(declare-fun b!1723340 () Bool)

(declare-fun res!773336 () Bool)

(assert (=> b!1723340 (=> res!773336 e!1102299)))

(declare-fun dynLambda!8709 (Int TokenValue!3433) BalanceConc!12494)

(assert (=> b!1723340 (= res!773336 (not (= lt!659500 (dynLambda!8709 (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) (value!104948 (_1!10681 lt!659521))))))))

(declare-fun b!1723341 () Bool)

(assert (=> b!1723341 (= e!1102313 e!1102294)))

(declare-fun res!773332 () Bool)

(assert (=> b!1723341 (=> res!773332 e!1102294)))

(declare-fun lt!659507 () Option!3710)

(declare-fun lt!659523 () List!18937)

(assert (=> b!1723341 (= res!773332 (or (not (= lt!659523 (_2!10681 lt!659521))) (not (= lt!659507 (Some!3709 (tuple2!18559 (_1!10681 lt!659521) lt!659523))))))))

(assert (=> b!1723341 (= (_2!10681 lt!659521) lt!659523)))

(declare-fun lt!659499 () Unit!32711)

(declare-fun lemmaSamePrefixThenSameSuffix!728 (List!18937 List!18937 List!18937 List!18937 List!18937) Unit!32711)

(assert (=> b!1723341 (= lt!659499 (lemmaSamePrefixThenSameSuffix!728 lt!659498 (_2!10681 lt!659521) lt!659498 lt!659523 lt!659517))))

(declare-fun getSuffix!778 (List!18937 List!18937) List!18937)

(assert (=> b!1723341 (= lt!659523 (getSuffix!778 lt!659517 lt!659498))))

(declare-fun lt!659525 () TokenValue!3433)

(declare-fun lt!659514 () Int)

(assert (=> b!1723341 (= lt!659507 (Some!3709 (tuple2!18559 (Token!6253 lt!659525 (rule!5297 (_1!10681 lt!659521)) lt!659514 lt!659498) (_2!10681 lt!659521))))))

(declare-fun maxPrefixOneRule!902 (LexerInterface!2972 Rule!6486 List!18937) Option!3710)

(assert (=> b!1723341 (= lt!659507 (maxPrefixOneRule!902 thiss!24550 (rule!5297 (_1!10681 lt!659521)) lt!659517))))

(declare-fun size!14992 (List!18937) Int)

(assert (=> b!1723341 (= lt!659514 (size!14992 lt!659498))))

(assert (=> b!1723341 (= lt!659525 (apply!5148 (transformation!3343 (rule!5297 (_1!10681 lt!659521))) (seqFromList!2317 lt!659498)))))

(declare-fun lt!659497 () Unit!32711)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!301 (LexerInterface!2972 List!18938 List!18937 List!18937 List!18937 Rule!6486) Unit!32711)

(assert (=> b!1723341 (= lt!659497 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!301 thiss!24550 rules!3447 lt!659498 lt!659517 (_2!10681 lt!659521) (rule!5297 (_1!10681 lt!659521))))))

(declare-fun e!1102314 () Bool)

(assert (=> b!1723342 (= e!1102297 e!1102314)))

(declare-fun res!773327 () Bool)

(assert (=> b!1723342 (=> res!773327 e!1102314)))

(declare-fun Forall!718 (Int) Bool)

(assert (=> b!1723342 (= res!773327 (not (Forall!718 lambda!69176)))))

(declare-fun lt!659504 () Unit!32711)

(declare-fun lemmaInv!550 (TokenValueInjection!6526) Unit!32711)

(assert (=> b!1723342 (= lt!659504 (lemmaInv!550 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))))))

(declare-fun b!1723343 () Bool)

(assert (=> b!1723343 (= e!1102314 e!1102299)))

(declare-fun res!773335 () Bool)

(assert (=> b!1723343 (=> res!773335 e!1102299)))

(declare-fun dynLambda!8710 (Int BalanceConc!12494) TokenValue!3433)

(assert (=> b!1723343 (= res!773335 (not (= (list!7624 (dynLambda!8709 (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) (dynLambda!8710 (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) lt!659500))) lt!659498)))))

(declare-fun lt!659502 () Unit!32711)

(declare-fun lemmaSemiInverse!489 (TokenValueInjection!6526 BalanceConc!12494) Unit!32711)

(assert (=> b!1723343 (= lt!659502 (lemmaSemiInverse!489 (transformation!3343 (rule!5297 (_1!10681 lt!659521))) lt!659500))))

(declare-fun b!1723328 () Bool)

(declare-fun res!773325 () Bool)

(assert (=> b!1723328 (=> (not res!773325) (not e!1102302))))

(declare-fun isEmpty!11866 (List!18938) Bool)

(assert (=> b!1723328 (= res!773325 (not (isEmpty!11866 rules!3447)))))

(declare-fun res!773323 () Bool)

(assert (=> start!169030 (=> (not res!773323) (not e!1102302))))

(get-info :version)

(assert (=> start!169030 (= res!773323 ((_ is Lexer!2970) thiss!24550))))

(assert (=> start!169030 e!1102302))

(assert (=> start!169030 e!1102301))

(assert (=> start!169030 e!1102298))

(assert (=> start!169030 true))

(declare-fun inv!24374 (Token!6252) Bool)

(assert (=> start!169030 (and (inv!24374 token!523) e!1102312)))

(assert (=> start!169030 e!1102306))

(declare-fun b!1723344 () Bool)

(assert (=> b!1723344 (= e!1102300 e!1102315)))

(declare-fun res!773321 () Bool)

(assert (=> b!1723344 (=> (not res!773321) (not e!1102315))))

(assert (=> b!1723344 (= res!773321 (matchR!2145 (regex!3343 lt!659509) (list!7624 (charsOf!1992 (_1!10681 lt!659521)))))))

(declare-fun get!5600 (Option!3711) Rule!6486)

(assert (=> b!1723344 (= lt!659509 (get!5600 lt!659511))))

(declare-fun b!1723345 () Bool)

(assert (=> b!1723345 (= e!1102303 e!1102304)))

(declare-fun res!773319 () Bool)

(assert (=> b!1723345 (=> res!773319 e!1102304)))

(declare-fun prefixMatch!556 (Regex!4671 List!18937) Bool)

(declare-fun head!3900 (List!18937) C!9516)

(assert (=> b!1723345 (= res!773319 (prefixMatch!556 lt!659496 (++!5168 lt!659520 (Cons!18867 (head!3900 suffix!1421) Nil!18867))))))

(declare-fun rulesRegex!701 (LexerInterface!2972 List!18938) Regex!4671)

(assert (=> b!1723345 (= lt!659496 (rulesRegex!701 thiss!24550 rules!3447))))

(declare-fun b!1723346 () Bool)

(assert (=> b!1723346 (= e!1102316 (not e!1102303))))

(declare-fun res!773318 () Bool)

(assert (=> b!1723346 (=> res!773318 e!1102303)))

(assert (=> b!1723346 (= res!773318 (not (matchR!2145 (regex!3343 rule!422) lt!659520)))))

(assert (=> b!1723346 (ruleValid!842 thiss!24550 rule!422)))

(declare-fun lt!659526 () Unit!32711)

(assert (=> b!1723346 (= lt!659526 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!366 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1723347 () Bool)

(declare-fun tp!491902 () Bool)

(assert (=> b!1723347 (= e!1102309 (and tp!491902 (inv!24368 (tag!3657 (rule!5297 token!523))) (inv!24373 (transformation!3343 (rule!5297 token!523))) e!1102308))))

(declare-fun b!1723348 () Bool)

(declare-fun res!773326 () Bool)

(assert (=> b!1723348 (=> res!773326 e!1102307)))

(assert (=> b!1723348 (= res!773326 (or (not (= lt!659510 (Some!3709 (tuple2!18559 (_1!10681 lt!659521) (_2!10681 lt!659521))))) (not (= lt!659517 lt!659516))))))

(declare-fun b!1723349 () Bool)

(declare-fun res!773328 () Bool)

(assert (=> b!1723349 (=> (not res!773328) (not e!1102302))))

(declare-fun rulesInvariant!2641 (LexerInterface!2972 List!18938) Bool)

(assert (=> b!1723349 (= res!773328 (rulesInvariant!2641 thiss!24550 rules!3447))))

(assert (= (and start!169030 res!773323) b!1723328))

(assert (= (and b!1723328 res!773325) b!1723349))

(assert (= (and b!1723349 res!773328) b!1723320))

(assert (= (and b!1723320 res!773330) b!1723339))

(assert (= (and b!1723339 res!773334) b!1723330))

(assert (= (and b!1723330 res!773340) b!1723334))

(assert (= (and b!1723334 res!773338) b!1723322))

(assert (= (and b!1723322 res!773331) b!1723346))

(assert (= (and b!1723346 (not res!773318)) b!1723325))

(assert (= (and b!1723325 (not res!773324)) b!1723345))

(assert (= (and b!1723345 (not res!773319)) b!1723336))

(assert (= (and b!1723336 res!773333) b!1723344))

(assert (= (and b!1723344 res!773321) b!1723321))

(assert (= (and b!1723336 (not res!773339)) b!1723331))

(assert (= (and b!1723331 (not res!773320)) b!1723342))

(assert (= (and b!1723342 (not res!773327)) b!1723343))

(assert (= (and b!1723343 (not res!773335)) b!1723340))

(assert (= (and b!1723340 (not res!773336)) b!1723324))

(assert (= (and b!1723324 (not res!773337)) b!1723341))

(assert (= (and b!1723341 (not res!773332)) b!1723333))

(assert (= (and b!1723333 (not res!773329)) b!1723332))

(assert (= (and b!1723332 (not res!773322)) b!1723348))

(assert (= (and b!1723348 (not res!773326)) b!1723318))

(assert (= (and start!169030 ((_ is Cons!18867) suffix!1421)) b!1723326))

(assert (= b!1723327 b!1723329))

(assert (= start!169030 b!1723327))

(assert (= b!1723347 b!1723335))

(assert (= b!1723323 b!1723347))

(assert (= start!169030 b!1723323))

(assert (= b!1723338 b!1723319))

(assert (= b!1723337 b!1723338))

(assert (= (and start!169030 ((_ is Cons!18868) rules!3447)) b!1723337))

(declare-fun b_lambda!54727 () Bool)

(assert (=> (not b_lambda!54727) (not b!1723340)))

(declare-fun t!159750 () Bool)

(declare-fun tb!102249 () Bool)

(assert (=> (and b!1723319 (= (toChars!4709 (transformation!3343 (h!24269 rules!3447))) (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159750) tb!102249))

(declare-fun b!1723365 () Bool)

(declare-fun e!1102330 () Bool)

(declare-fun tp!491915 () Bool)

(declare-fun inv!24375 (Conc!6275) Bool)

(assert (=> b!1723365 (= e!1102330 (and (inv!24375 (c!281895 (dynLambda!8709 (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) (value!104948 (_1!10681 lt!659521))))) tp!491915))))

(declare-fun result!122908 () Bool)

(declare-fun inv!24376 (BalanceConc!12494) Bool)

(assert (=> tb!102249 (= result!122908 (and (inv!24376 (dynLambda!8709 (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) (value!104948 (_1!10681 lt!659521)))) e!1102330))))

(assert (= tb!102249 b!1723365))

(declare-fun m!2129425 () Bool)

(assert (=> b!1723365 m!2129425))

(declare-fun m!2129427 () Bool)

(assert (=> tb!102249 m!2129427))

(assert (=> b!1723340 t!159750))

(declare-fun b_and!126123 () Bool)

(assert (= b_and!126113 (and (=> t!159750 result!122908) b_and!126123)))

(declare-fun tb!102251 () Bool)

(declare-fun t!159752 () Bool)

(assert (=> (and b!1723335 (= (toChars!4709 (transformation!3343 (rule!5297 token!523))) (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159752) tb!102251))

(declare-fun result!122912 () Bool)

(assert (= result!122912 result!122908))

(assert (=> b!1723340 t!159752))

(declare-fun b_and!126125 () Bool)

(assert (= b_and!126117 (and (=> t!159752 result!122912) b_and!126125)))

(declare-fun tb!102253 () Bool)

(declare-fun t!159754 () Bool)

(assert (=> (and b!1723329 (= (toChars!4709 (transformation!3343 rule!422)) (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159754) tb!102253))

(declare-fun result!122914 () Bool)

(assert (= result!122914 result!122908))

(assert (=> b!1723340 t!159754))

(declare-fun b_and!126127 () Bool)

(assert (= b_and!126121 (and (=> t!159754 result!122914) b_and!126127)))

(declare-fun b_lambda!54729 () Bool)

(assert (=> (not b_lambda!54729) (not b!1723343)))

(declare-fun tb!102255 () Bool)

(declare-fun t!159756 () Bool)

(assert (=> (and b!1723319 (= (toChars!4709 (transformation!3343 (h!24269 rules!3447))) (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159756) tb!102255))

(declare-fun b!1723366 () Bool)

(declare-fun tp!491916 () Bool)

(declare-fun e!1102331 () Bool)

(assert (=> b!1723366 (= e!1102331 (and (inv!24375 (c!281895 (dynLambda!8709 (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) (dynLambda!8710 (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) lt!659500)))) tp!491916))))

(declare-fun result!122916 () Bool)

(assert (=> tb!102255 (= result!122916 (and (inv!24376 (dynLambda!8709 (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) (dynLambda!8710 (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) lt!659500))) e!1102331))))

(assert (= tb!102255 b!1723366))

(declare-fun m!2129429 () Bool)

(assert (=> b!1723366 m!2129429))

(declare-fun m!2129431 () Bool)

(assert (=> tb!102255 m!2129431))

(assert (=> b!1723343 t!159756))

(declare-fun b_and!126129 () Bool)

(assert (= b_and!126123 (and (=> t!159756 result!122916) b_and!126129)))

(declare-fun t!159758 () Bool)

(declare-fun tb!102257 () Bool)

(assert (=> (and b!1723335 (= (toChars!4709 (transformation!3343 (rule!5297 token!523))) (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159758) tb!102257))

(declare-fun result!122918 () Bool)

(assert (= result!122918 result!122916))

(assert (=> b!1723343 t!159758))

(declare-fun b_and!126131 () Bool)

(assert (= b_and!126125 (and (=> t!159758 result!122918) b_and!126131)))

(declare-fun t!159760 () Bool)

(declare-fun tb!102259 () Bool)

(assert (=> (and b!1723329 (= (toChars!4709 (transformation!3343 rule!422)) (toChars!4709 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159760) tb!102259))

(declare-fun result!122920 () Bool)

(assert (= result!122920 result!122916))

(assert (=> b!1723343 t!159760))

(declare-fun b_and!126133 () Bool)

(assert (= b_and!126127 (and (=> t!159760 result!122920) b_and!126133)))

(declare-fun b_lambda!54731 () Bool)

(assert (=> (not b_lambda!54731) (not b!1723343)))

(declare-fun t!159762 () Bool)

(declare-fun tb!102261 () Bool)

(assert (=> (and b!1723319 (= (toValue!4850 (transformation!3343 (h!24269 rules!3447))) (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159762) tb!102261))

(declare-fun result!122922 () Bool)

(assert (=> tb!102261 (= result!122922 (inv!21 (dynLambda!8710 (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521)))) lt!659500)))))

(declare-fun m!2129433 () Bool)

(assert (=> tb!102261 m!2129433))

(assert (=> b!1723343 t!159762))

(declare-fun b_and!126135 () Bool)

(assert (= b_and!126111 (and (=> t!159762 result!122922) b_and!126135)))

(declare-fun t!159764 () Bool)

(declare-fun tb!102263 () Bool)

(assert (=> (and b!1723335 (= (toValue!4850 (transformation!3343 (rule!5297 token!523))) (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159764) tb!102263))

(declare-fun result!122926 () Bool)

(assert (= result!122926 result!122922))

(assert (=> b!1723343 t!159764))

(declare-fun b_and!126137 () Bool)

(assert (= b_and!126115 (and (=> t!159764 result!122926) b_and!126137)))

(declare-fun t!159766 () Bool)

(declare-fun tb!102265 () Bool)

(assert (=> (and b!1723329 (= (toValue!4850 (transformation!3343 rule!422)) (toValue!4850 (transformation!3343 (rule!5297 (_1!10681 lt!659521))))) t!159766) tb!102265))

(declare-fun result!122928 () Bool)

(assert (= result!122928 result!122922))

(assert (=> b!1723343 t!159766))

(declare-fun b_and!126139 () Bool)

(assert (= b_and!126119 (and (=> t!159766 result!122928) b_and!126139)))

(declare-fun m!2129435 () Bool)

(assert (=> b!1723336 m!2129435))

(declare-fun m!2129437 () Bool)

(assert (=> b!1723336 m!2129437))

(declare-fun m!2129439 () Bool)

(assert (=> b!1723336 m!2129439))

(declare-fun m!2129441 () Bool)

(assert (=> b!1723336 m!2129441))

(declare-fun m!2129443 () Bool)

(assert (=> b!1723336 m!2129443))

(declare-fun m!2129445 () Bool)

(assert (=> b!1723336 m!2129445))

(declare-fun m!2129447 () Bool)

(assert (=> b!1723336 m!2129447))

(declare-fun m!2129449 () Bool)

(assert (=> b!1723336 m!2129449))

(declare-fun m!2129451 () Bool)

(assert (=> b!1723336 m!2129451))

(declare-fun m!2129453 () Bool)

(assert (=> b!1723336 m!2129453))

(declare-fun m!2129455 () Bool)

(assert (=> b!1723336 m!2129455))

(declare-fun m!2129457 () Bool)

(assert (=> b!1723336 m!2129457))

(declare-fun m!2129459 () Bool)

(assert (=> b!1723336 m!2129459))

(declare-fun m!2129461 () Bool)

(assert (=> b!1723336 m!2129461))

(declare-fun m!2129463 () Bool)

(assert (=> b!1723336 m!2129463))

(assert (=> b!1723344 m!2129441))

(assert (=> b!1723344 m!2129441))

(declare-fun m!2129465 () Bool)

(assert (=> b!1723344 m!2129465))

(assert (=> b!1723344 m!2129465))

(declare-fun m!2129467 () Bool)

(assert (=> b!1723344 m!2129467))

(declare-fun m!2129469 () Bool)

(assert (=> b!1723344 m!2129469))

(declare-fun m!2129471 () Bool)

(assert (=> b!1723333 m!2129471))

(declare-fun m!2129473 () Bool)

(assert (=> b!1723333 m!2129473))

(declare-fun m!2129475 () Bool)

(assert (=> b!1723333 m!2129475))

(declare-fun m!2129477 () Bool)

(assert (=> b!1723338 m!2129477))

(declare-fun m!2129479 () Bool)

(assert (=> b!1723338 m!2129479))

(declare-fun m!2129481 () Bool)

(assert (=> b!1723325 m!2129481))

(declare-fun m!2129483 () Bool)

(assert (=> b!1723347 m!2129483))

(declare-fun m!2129485 () Bool)

(assert (=> b!1723347 m!2129485))

(declare-fun m!2129487 () Bool)

(assert (=> b!1723330 m!2129487))

(declare-fun m!2129489 () Bool)

(assert (=> b!1723332 m!2129489))

(declare-fun m!2129491 () Bool)

(assert (=> b!1723342 m!2129491))

(declare-fun m!2129493 () Bool)

(assert (=> b!1723342 m!2129493))

(declare-fun m!2129495 () Bool)

(assert (=> b!1723323 m!2129495))

(declare-fun m!2129497 () Bool)

(assert (=> b!1723343 m!2129497))

(assert (=> b!1723343 m!2129497))

(declare-fun m!2129499 () Bool)

(assert (=> b!1723343 m!2129499))

(assert (=> b!1723343 m!2129499))

(declare-fun m!2129501 () Bool)

(assert (=> b!1723343 m!2129501))

(declare-fun m!2129503 () Bool)

(assert (=> b!1723343 m!2129503))

(declare-fun m!2129505 () Bool)

(assert (=> b!1723328 m!2129505))

(declare-fun m!2129507 () Bool)

(assert (=> b!1723324 m!2129507))

(declare-fun m!2129509 () Bool)

(assert (=> b!1723324 m!2129509))

(declare-fun m!2129511 () Bool)

(assert (=> b!1723324 m!2129511))

(declare-fun m!2129513 () Bool)

(assert (=> b!1723324 m!2129513))

(assert (=> b!1723324 m!2129511))

(declare-fun m!2129515 () Bool)

(assert (=> b!1723324 m!2129515))

(declare-fun m!2129517 () Bool)

(assert (=> b!1723318 m!2129517))

(declare-fun m!2129519 () Bool)

(assert (=> b!1723318 m!2129519))

(declare-fun m!2129521 () Bool)

(assert (=> b!1723331 m!2129521))

(declare-fun m!2129523 () Bool)

(assert (=> b!1723349 m!2129523))

(declare-fun m!2129525 () Bool)

(assert (=> b!1723339 m!2129525))

(declare-fun m!2129527 () Bool)

(assert (=> b!1723339 m!2129527))

(declare-fun m!2129529 () Bool)

(assert (=> b!1723339 m!2129529))

(declare-fun m!2129531 () Bool)

(assert (=> b!1723339 m!2129531))

(declare-fun m!2129533 () Bool)

(assert (=> b!1723341 m!2129533))

(declare-fun m!2129535 () Bool)

(assert (=> b!1723341 m!2129535))

(declare-fun m!2129537 () Bool)

(assert (=> b!1723341 m!2129537))

(declare-fun m!2129539 () Bool)

(assert (=> b!1723341 m!2129539))

(assert (=> b!1723341 m!2129537))

(declare-fun m!2129541 () Bool)

(assert (=> b!1723341 m!2129541))

(declare-fun m!2129543 () Bool)

(assert (=> b!1723341 m!2129543))

(declare-fun m!2129545 () Bool)

(assert (=> b!1723341 m!2129545))

(declare-fun m!2129547 () Bool)

(assert (=> start!169030 m!2129547))

(declare-fun m!2129549 () Bool)

(assert (=> b!1723320 m!2129549))

(declare-fun m!2129551 () Bool)

(assert (=> b!1723340 m!2129551))

(declare-fun m!2129553 () Bool)

(assert (=> b!1723345 m!2129553))

(declare-fun m!2129555 () Bool)

(assert (=> b!1723345 m!2129555))

(assert (=> b!1723345 m!2129555))

(declare-fun m!2129557 () Bool)

(assert (=> b!1723345 m!2129557))

(declare-fun m!2129559 () Bool)

(assert (=> b!1723345 m!2129559))

(declare-fun m!2129561 () Bool)

(assert (=> b!1723334 m!2129561))

(declare-fun m!2129563 () Bool)

(assert (=> b!1723327 m!2129563))

(declare-fun m!2129565 () Bool)

(assert (=> b!1723327 m!2129565))

(declare-fun m!2129567 () Bool)

(assert (=> b!1723346 m!2129567))

(declare-fun m!2129569 () Bool)

(assert (=> b!1723346 m!2129569))

(declare-fun m!2129571 () Bool)

(assert (=> b!1723346 m!2129571))

(check-sat (not b!1723334) (not tb!102255) (not b!1723342) (not b!1723366) (not tb!102261) (not tb!102249) (not b!1723325) b_and!126139 (not b!1723320) (not b!1723337) (not b!1723346) (not b!1723365) (not b!1723328) b_and!126137 (not b_lambda!54727) (not b!1723343) (not b!1723341) (not b!1723318) (not b!1723327) b_and!126135 (not b!1723324) (not b_next!47701) tp_is_empty!7585 (not b!1723339) (not b_lambda!54731) (not b!1723344) (not b!1723326) (not b_next!47699) (not b!1723349) (not b!1723331) (not b!1723336) (not start!169030) b_and!126129 (not b!1723323) (not b_next!47703) (not b!1723347) b_and!126133 (not b_next!47709) (not b!1723333) (not b_next!47705) (not b!1723330) b_and!126131 (not b_lambda!54729) (not b_next!47707) (not b!1723345) (not b!1723338) (not b!1723332))
(check-sat b_and!126139 b_and!126137 b_and!126135 (not b_next!47701) (not b_next!47699) (not b_next!47705) b_and!126131 (not b_next!47707) b_and!126129 (not b_next!47703) b_and!126133 (not b_next!47709))
