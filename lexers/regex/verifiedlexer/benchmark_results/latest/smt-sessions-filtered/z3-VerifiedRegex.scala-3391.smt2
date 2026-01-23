; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192016 () Bool)

(assert start!192016)

(declare-fun b!1914572 () Bool)

(declare-fun b_free!54177 () Bool)

(declare-fun b_next!54881 () Bool)

(assert (=> b!1914572 (= b_free!54177 (not b_next!54881))))

(declare-fun tp!546404 () Bool)

(declare-fun b_and!149287 () Bool)

(assert (=> b!1914572 (= tp!546404 b_and!149287)))

(declare-fun b_free!54179 () Bool)

(declare-fun b_next!54883 () Bool)

(assert (=> b!1914572 (= b_free!54179 (not b_next!54883))))

(declare-fun tp!546406 () Bool)

(declare-fun b_and!149289 () Bool)

(assert (=> b!1914572 (= tp!546406 b_and!149289)))

(declare-fun b!1914581 () Bool)

(declare-fun b_free!54181 () Bool)

(declare-fun b_next!54885 () Bool)

(assert (=> b!1914581 (= b_free!54181 (not b_next!54885))))

(declare-fun tp!546397 () Bool)

(declare-fun b_and!149291 () Bool)

(assert (=> b!1914581 (= tp!546397 b_and!149291)))

(declare-fun b_free!54183 () Bool)

(declare-fun b_next!54887 () Bool)

(assert (=> b!1914581 (= b_free!54183 (not b_next!54887))))

(declare-fun tp!546405 () Bool)

(declare-fun b_and!149293 () Bool)

(assert (=> b!1914581 (= tp!546405 b_and!149293)))

(declare-fun b!1914584 () Bool)

(declare-fun b_free!54185 () Bool)

(declare-fun b_next!54889 () Bool)

(assert (=> b!1914584 (= b_free!54185 (not b_next!54889))))

(declare-fun tp!546395 () Bool)

(declare-fun b_and!149295 () Bool)

(assert (=> b!1914584 (= tp!546395 b_and!149295)))

(declare-fun b_free!54187 () Bool)

(declare-fun b_next!54891 () Bool)

(assert (=> b!1914584 (= b_free!54187 (not b_next!54891))))

(declare-fun tp!546394 () Bool)

(declare-fun b_and!149297 () Bool)

(assert (=> b!1914584 (= tp!546394 b_and!149297)))

(declare-fun e!1223126 () Bool)

(assert (=> b!1914572 (= e!1223126 (and tp!546404 tp!546406))))

(declare-fun e!1223109 () Bool)

(declare-fun tp!546401 () Bool)

(declare-fun b!1914574 () Bool)

(declare-datatypes ((List!21698 0))(
  ( (Nil!21616) (Cons!21616 (h!27017 (_ BitVec 16)) (t!178379 List!21698)) )
))
(declare-datatypes ((TokenValue!3994 0))(
  ( (FloatLiteralValue!7988 (text!28403 List!21698)) (TokenValueExt!3993 (__x!13486 Int)) (Broken!19970 (value!121518 List!21698)) (Object!4075) (End!3994) (Def!3994) (Underscore!3994) (Match!3994) (Else!3994) (Error!3994) (Case!3994) (If!3994) (Extends!3994) (Abstract!3994) (Class!3994) (Val!3994) (DelimiterValue!7988 (del!4054 List!21698)) (KeywordValue!4000 (value!121519 List!21698)) (CommentValue!7988 (value!121520 List!21698)) (WhitespaceValue!7988 (value!121521 List!21698)) (IndentationValue!3994 (value!121522 List!21698)) (String!25087) (Int32!3994) (Broken!19971 (value!121523 List!21698)) (Boolean!3995) (Unit!36003) (OperatorValue!3997 (op!4054 List!21698)) (IdentifierValue!7988 (value!121524 List!21698)) (IdentifierValue!7989 (value!121525 List!21698)) (WhitespaceValue!7989 (value!121526 List!21698)) (True!7988) (False!7988) (Broken!19972 (value!121527 List!21698)) (Broken!19973 (value!121528 List!21698)) (True!7989) (RightBrace!3994) (RightBracket!3994) (Colon!3994) (Null!3994) (Comma!3994) (LeftBracket!3994) (False!7989) (LeftBrace!3994) (ImaginaryLiteralValue!3994 (text!28404 List!21698)) (StringLiteralValue!11982 (value!121529 List!21698)) (EOFValue!3994 (value!121530 List!21698)) (IdentValue!3994 (value!121531 List!21698)) (DelimiterValue!7989 (value!121532 List!21698)) (DedentValue!3994 (value!121533 List!21698)) (NewLineValue!3994 (value!121534 List!21698)) (IntegerValue!11982 (value!121535 (_ BitVec 32)) (text!28405 List!21698)) (IntegerValue!11983 (value!121536 Int) (text!28406 List!21698)) (Times!3994) (Or!3994) (Equal!3994) (Minus!3994) (Broken!19974 (value!121537 List!21698)) (And!3994) (Div!3994) (LessEqual!3994) (Mod!3994) (Concat!9277) (Not!3994) (Plus!3994) (SpaceValue!3994 (value!121538 List!21698)) (IntegerValue!11984 (value!121539 Int) (text!28407 List!21698)) (StringLiteralValue!11983 (text!28408 List!21698)) (FloatLiteralValue!7989 (text!28409 List!21698)) (BytesLiteralValue!3994 (value!121540 List!21698)) (CommentValue!7989 (value!121541 List!21698)) (StringLiteralValue!11984 (value!121542 List!21698)) (ErrorTokenValue!3994 (msg!4055 List!21698)) )
))
(declare-datatypes ((C!10712 0))(
  ( (C!10713 (val!6308 Int)) )
))
(declare-datatypes ((List!21699 0))(
  ( (Nil!21617) (Cons!21617 (h!27018 C!10712) (t!178380 List!21699)) )
))
(declare-datatypes ((Regex!5283 0))(
  ( (ElementMatch!5283 (c!311764 C!10712)) (Concat!9278 (regOne!11078 Regex!5283) (regTwo!11078 Regex!5283)) (EmptyExpr!5283) (Star!5283 (reg!5612 Regex!5283)) (EmptyLang!5283) (Union!5283 (regOne!11079 Regex!5283) (regTwo!11079 Regex!5283)) )
))
(declare-datatypes ((String!25088 0))(
  ( (String!25089 (value!121543 String)) )
))
(declare-datatypes ((IArray!14421 0))(
  ( (IArray!14422 (innerList!7268 List!21699)) )
))
(declare-datatypes ((Conc!7208 0))(
  ( (Node!7208 (left!17267 Conc!7208) (right!17597 Conc!7208) (csize!14646 Int) (cheight!7419 Int)) (Leaf!10600 (xs!10102 IArray!14421) (csize!14647 Int)) (Empty!7208) )
))
(declare-datatypes ((BalanceConc!14232 0))(
  ( (BalanceConc!14233 (c!311765 Conc!7208)) )
))
(declare-datatypes ((TokenValueInjection!7572 0))(
  ( (TokenValueInjection!7573 (toValue!5487 Int) (toChars!5346 Int)) )
))
(declare-datatypes ((Rule!7516 0))(
  ( (Rule!7517 (regex!3858 Regex!5283) (tag!4296 String!25088) (isSeparator!3858 Bool) (transformation!3858 TokenValueInjection!7572)) )
))
(declare-datatypes ((Token!7268 0))(
  ( (Token!7269 (value!121544 TokenValue!3994) (rule!6059 Rule!7516) (size!16998 Int) (originalCharacters!4665 List!21699)) )
))
(declare-datatypes ((List!21700 0))(
  ( (Nil!21618) (Cons!21618 (h!27019 Token!7268) (t!178381 List!21700)) )
))
(declare-fun tokens!598 () List!21700)

(declare-fun inv!28714 (String!25088) Bool)

(declare-fun inv!28717 (TokenValueInjection!7572) Bool)

(assert (=> b!1914574 (= e!1223109 (and tp!546401 (inv!28714 (tag!4296 (rule!6059 (h!27019 tokens!598)))) (inv!28717 (transformation!3858 (rule!6059 (h!27019 tokens!598)))) e!1223126))))

(declare-fun b!1914575 () Bool)

(declare-fun e!1223118 () Bool)

(declare-fun tp!546396 () Bool)

(declare-fun inv!21 (TokenValue!3994) Bool)

(assert (=> b!1914575 (= e!1223118 (and (inv!21 (value!121544 (h!27019 tokens!598))) e!1223109 tp!546396))))

(declare-fun tp!546399 () Bool)

(declare-fun separatorToken!354 () Token!7268)

(declare-fun e!1223125 () Bool)

(declare-fun e!1223132 () Bool)

(declare-fun b!1914576 () Bool)

(assert (=> b!1914576 (= e!1223132 (and tp!546399 (inv!28714 (tag!4296 (rule!6059 separatorToken!354))) (inv!28717 (transformation!3858 (rule!6059 separatorToken!354))) e!1223125))))

(declare-fun b!1914577 () Bool)

(declare-fun e!1223120 () Bool)

(declare-fun e!1223122 () Bool)

(assert (=> b!1914577 (= e!1223120 e!1223122)))

(declare-fun res!855432 () Bool)

(assert (=> b!1914577 (=> (not res!855432) (not e!1223122))))

(declare-fun lt!733296 () Rule!7516)

(declare-fun lt!733294 () List!21699)

(declare-fun matchR!2569 (Regex!5283 List!21699) Bool)

(assert (=> b!1914577 (= res!855432 (matchR!2569 (regex!3858 lt!733296) lt!733294))))

(declare-datatypes ((Option!4421 0))(
  ( (None!4420) (Some!4420 (v!26485 Rule!7516)) )
))
(declare-fun lt!733295 () Option!4421)

(declare-fun get!6757 (Option!4421) Rule!7516)

(assert (=> b!1914577 (= lt!733296 (get!6757 lt!733295))))

(declare-fun b!1914578 () Bool)

(declare-fun res!855441 () Bool)

(declare-fun e!1223117 () Bool)

(assert (=> b!1914578 (=> res!855441 e!1223117)))

(declare-fun lt!733301 () List!21699)

(declare-fun isEmpty!13301 (List!21699) Bool)

(assert (=> b!1914578 (= res!855441 (isEmpty!13301 lt!733301))))

(declare-fun tp!546400 () Bool)

(declare-fun e!1223127 () Bool)

(declare-fun b!1914579 () Bool)

(declare-datatypes ((List!21701 0))(
  ( (Nil!21619) (Cons!21619 (h!27020 Rule!7516) (t!178382 List!21701)) )
))
(declare-fun rules!3198 () List!21701)

(declare-fun e!1223129 () Bool)

(assert (=> b!1914579 (= e!1223127 (and tp!546400 (inv!28714 (tag!4296 (h!27020 rules!3198))) (inv!28717 (transformation!3858 (h!27020 rules!3198))) e!1223129))))

(declare-fun b!1914580 () Bool)

(declare-fun res!855428 () Bool)

(declare-fun e!1223108 () Bool)

(assert (=> b!1914580 (=> res!855428 e!1223108)))

(declare-fun contains!3920 (List!21701 Rule!7516) Bool)

(assert (=> b!1914580 (= res!855428 (not (contains!3920 rules!3198 (rule!6059 (h!27019 tokens!598)))))))

(assert (=> b!1914581 (= e!1223129 (and tp!546397 tp!546405))))

(declare-fun b!1914582 () Bool)

(assert (=> b!1914582 (= e!1223108 e!1223117)))

(declare-fun res!855448 () Bool)

(assert (=> b!1914582 (=> res!855448 e!1223117)))

(assert (=> b!1914582 (= res!855448 (not (matchR!2569 (regex!3858 (rule!6059 (h!27019 tokens!598))) lt!733294)))))

(declare-datatypes ((LexerInterface!3471 0))(
  ( (LexerInterfaceExt!3468 (__x!13487 Int)) (Lexer!3469) )
))
(declare-fun thiss!23328 () LexerInterface!3471)

(declare-fun ruleValid!1177 (LexerInterface!3471 Rule!7516) Bool)

(assert (=> b!1914582 (ruleValid!1177 thiss!23328 (rule!6059 (h!27019 tokens!598)))))

(declare-datatypes ((Unit!36004 0))(
  ( (Unit!36005) )
))
(declare-fun lt!733297 () Unit!36004)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!674 (LexerInterface!3471 Rule!7516 List!21701) Unit!36004)

(assert (=> b!1914582 (= lt!733297 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!674 thiss!23328 (rule!6059 (h!27019 tokens!598)) rules!3198))))

(declare-fun b!1914583 () Bool)

(declare-fun e!1223124 () Bool)

(assert (=> b!1914583 (= e!1223117 e!1223124)))

(declare-fun res!855449 () Bool)

(assert (=> b!1914583 (=> res!855449 e!1223124)))

(declare-fun lt!733302 () List!21699)

(declare-fun lt!733306 () C!10712)

(declare-fun contains!3921 (List!21699 C!10712) Bool)

(assert (=> b!1914583 (= res!855449 (contains!3921 lt!733302 lt!733306))))

(declare-fun head!4466 (List!21699) C!10712)

(assert (=> b!1914583 (= lt!733306 (head!4466 lt!733301))))

(assert (=> b!1914584 (= e!1223125 (and tp!546395 tp!546394))))

(declare-fun tp!546398 () Bool)

(declare-fun e!1223128 () Bool)

(declare-fun b!1914585 () Bool)

(assert (=> b!1914585 (= e!1223128 (and (inv!21 (value!121544 separatorToken!354)) e!1223132 tp!546398))))

(declare-fun b!1914586 () Bool)

(declare-fun res!855447 () Bool)

(declare-fun e!1223116 () Bool)

(assert (=> b!1914586 (=> (not res!855447) (not e!1223116))))

(declare-fun sepAndNonSepRulesDisjointChars!956 (List!21701 List!21701) Bool)

(assert (=> b!1914586 (= res!855447 (sepAndNonSepRulesDisjointChars!956 rules!3198 rules!3198))))

(declare-fun e!1223133 () Bool)

(declare-fun b!1914587 () Bool)

(declare-fun tp!546403 () Bool)

(declare-fun inv!28718 (Token!7268) Bool)

(assert (=> b!1914587 (= e!1223133 (and (inv!28718 (h!27019 tokens!598)) e!1223118 tp!546403))))

(declare-fun b!1914588 () Bool)

(declare-fun res!855444 () Bool)

(assert (=> b!1914588 (=> res!855444 e!1223108)))

(assert (=> b!1914588 (= res!855444 (isSeparator!3858 (rule!6059 (h!27019 tokens!598))))))

(declare-fun b!1914589 () Bool)

(declare-fun res!855430 () Bool)

(assert (=> b!1914589 (=> res!855430 e!1223108)))

(declare-datatypes ((tuple2!20346 0))(
  ( (tuple2!20347 (_1!11642 Token!7268) (_2!11642 List!21699)) )
))
(declare-fun lt!733315 () tuple2!20346)

(assert (=> b!1914589 (= res!855430 (not (isEmpty!13301 (_2!11642 lt!733315))))))

(declare-fun b!1914590 () Bool)

(declare-fun e!1223111 () Bool)

(assert (=> b!1914590 (= e!1223111 e!1223108)))

(declare-fun res!855434 () Bool)

(assert (=> b!1914590 (=> res!855434 e!1223108)))

(declare-fun lt!733305 () List!21699)

(declare-fun lt!733316 () List!21699)

(assert (=> b!1914590 (= res!855434 (or (not (= lt!733316 lt!733305)) (not (= lt!733305 lt!733294)) (not (= lt!733316 lt!733294))))))

(declare-fun printList!1054 (LexerInterface!3471 List!21700) List!21699)

(assert (=> b!1914590 (= lt!733305 (printList!1054 thiss!23328 (Cons!21618 (h!27019 tokens!598) Nil!21618)))))

(declare-fun lt!733311 () BalanceConc!14232)

(declare-fun list!8786 (BalanceConc!14232) List!21699)

(assert (=> b!1914590 (= lt!733316 (list!8786 lt!733311))))

(declare-datatypes ((IArray!14423 0))(
  ( (IArray!14424 (innerList!7269 List!21700)) )
))
(declare-datatypes ((Conc!7209 0))(
  ( (Node!7209 (left!17268 Conc!7209) (right!17598 Conc!7209) (csize!14648 Int) (cheight!7420 Int)) (Leaf!10601 (xs!10103 IArray!14423) (csize!14649 Int)) (Empty!7209) )
))
(declare-datatypes ((BalanceConc!14234 0))(
  ( (BalanceConc!14235 (c!311766 Conc!7209)) )
))
(declare-fun lt!733304 () BalanceConc!14234)

(declare-fun printTailRec!988 (LexerInterface!3471 BalanceConc!14234 Int BalanceConc!14232) BalanceConc!14232)

(assert (=> b!1914590 (= lt!733311 (printTailRec!988 thiss!23328 lt!733304 0 (BalanceConc!14233 Empty!7208)))))

(declare-fun print!1481 (LexerInterface!3471 BalanceConc!14234) BalanceConc!14232)

(assert (=> b!1914590 (= lt!733311 (print!1481 thiss!23328 lt!733304))))

(declare-fun singletonSeq!1881 (Token!7268) BalanceConc!14234)

(assert (=> b!1914590 (= lt!733304 (singletonSeq!1881 (h!27019 tokens!598)))))

(declare-fun lt!733307 () C!10712)

(assert (=> b!1914590 (not (contains!3921 lt!733302 lt!733307))))

(declare-fun usedCharacters!366 (Regex!5283) List!21699)

(assert (=> b!1914590 (= lt!733302 (usedCharacters!366 (regex!3858 (rule!6059 (h!27019 tokens!598)))))))

(declare-fun lt!733287 () Unit!36004)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!62 (LexerInterface!3471 List!21701 List!21701 Rule!7516 Rule!7516 C!10712) Unit!36004)

(assert (=> b!1914590 (= lt!733287 (lemmaNonSepRuleNotContainsCharContainedInASepRule!62 thiss!23328 rules!3198 rules!3198 (rule!6059 (h!27019 tokens!598)) (rule!6059 separatorToken!354) lt!733307))))

(declare-fun lt!733286 () Unit!36004)

(declare-fun e!1223130 () Unit!36004)

(assert (=> b!1914590 (= lt!733286 e!1223130)))

(declare-fun c!311763 () Bool)

(declare-fun lt!733308 () List!21699)

(assert (=> b!1914590 (= c!311763 (not (contains!3921 lt!733308 lt!733307)))))

(declare-fun lt!733290 () List!21699)

(assert (=> b!1914590 (= lt!733307 (head!4466 lt!733290))))

(assert (=> b!1914590 (= lt!733308 (usedCharacters!366 (regex!3858 (rule!6059 separatorToken!354))))))

(declare-fun lt!733310 () List!21699)

(declare-fun lt!733314 () List!21699)

(assert (=> b!1914590 (= lt!733310 lt!733314)))

(declare-fun ++!5811 (List!21699 List!21699) List!21699)

(assert (=> b!1914590 (= lt!733314 (++!5811 lt!733294 lt!733301))))

(declare-fun lt!733309 () List!21699)

(declare-fun lt!733293 () List!21699)

(assert (=> b!1914590 (= lt!733310 (++!5811 lt!733309 lt!733293))))

(assert (=> b!1914590 (= lt!733301 (++!5811 lt!733290 lt!733293))))

(assert (=> b!1914590 (= lt!733309 (++!5811 lt!733294 lt!733290))))

(declare-fun lt!733291 () Unit!36004)

(declare-fun lemmaConcatAssociativity!1173 (List!21699 List!21699 List!21699) Unit!36004)

(assert (=> b!1914590 (= lt!733291 (lemmaConcatAssociativity!1173 lt!733294 lt!733290 lt!733293))))

(declare-fun b!1914591 () Bool)

(declare-fun res!855451 () Bool)

(assert (=> b!1914591 (=> (not res!855451) (not e!1223116))))

(declare-fun isEmpty!13302 (List!21701) Bool)

(assert (=> b!1914591 (= res!855451 (not (isEmpty!13302 rules!3198)))))

(declare-fun b!1914573 () Bool)

(declare-fun e!1223119 () Bool)

(assert (=> b!1914573 (= e!1223119 false)))

(declare-fun res!855429 () Bool)

(assert (=> start!192016 (=> (not res!855429) (not e!1223116))))

(get-info :version)

(assert (=> start!192016 (= res!855429 ((_ is Lexer!3469) thiss!23328))))

(assert (=> start!192016 e!1223116))

(assert (=> start!192016 true))

(declare-fun e!1223123 () Bool)

(assert (=> start!192016 e!1223123))

(assert (=> start!192016 e!1223133))

(assert (=> start!192016 (and (inv!28718 separatorToken!354) e!1223128)))

(declare-fun b!1914592 () Bool)

(declare-fun Unit!36006 () Unit!36004)

(assert (=> b!1914592 (= e!1223130 Unit!36006)))

(declare-fun lt!733292 () Unit!36004)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!266 (Regex!5283 List!21699 C!10712) Unit!36004)

(assert (=> b!1914592 (= lt!733292 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!266 (regex!3858 (rule!6059 separatorToken!354)) lt!733290 lt!733307))))

(declare-fun res!855426 () Bool)

(assert (=> b!1914592 (= res!855426 (not (matchR!2569 (regex!3858 (rule!6059 separatorToken!354)) lt!733290)))))

(assert (=> b!1914592 (=> (not res!855426) (not e!1223119))))

(assert (=> b!1914592 e!1223119))

(declare-fun b!1914593 () Bool)

(declare-fun e!1223115 () Bool)

(assert (=> b!1914593 (= e!1223124 e!1223115)))

(declare-fun res!855437 () Bool)

(assert (=> b!1914593 (=> res!855437 e!1223115)))

(declare-fun isEmpty!13303 (List!21700) Bool)

(assert (=> b!1914593 (= res!855437 (isEmpty!13303 tokens!598))))

(declare-datatypes ((Option!4422 0))(
  ( (None!4421) (Some!4421 (v!26486 tuple2!20346)) )
))
(declare-fun maxPrefix!1917 (LexerInterface!3471 List!21701 List!21699) Option!4422)

(assert (=> b!1914593 (= (maxPrefix!1917 thiss!23328 rules!3198 lt!733314) (Some!4421 (tuple2!20347 (h!27019 tokens!598) lt!733301)))))

(declare-fun lt!733319 () Unit!36004)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!94 (LexerInterface!3471 List!21701 Token!7268 Rule!7516 List!21699 Rule!7516) Unit!36004)

(assert (=> b!1914593 (= lt!733319 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!94 thiss!23328 rules!3198 (h!27019 tokens!598) (rule!6059 (h!27019 tokens!598)) lt!733301 (rule!6059 separatorToken!354)))))

(declare-fun b!1914594 () Bool)

(declare-fun res!855439 () Bool)

(assert (=> b!1914594 (=> (not res!855439) (not e!1223116))))

(assert (=> b!1914594 (= res!855439 (isSeparator!3858 (rule!6059 separatorToken!354)))))

(declare-fun b!1914595 () Bool)

(assert (=> b!1914595 (= e!1223115 true)))

(declare-fun lt!733318 () Option!4422)

(declare-fun printWithSeparatorTokenWhenNeededList!514 (LexerInterface!3471 List!21701 List!21700 Token!7268) List!21699)

(assert (=> b!1914595 (= lt!733318 (maxPrefix!1917 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!514 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))

(declare-fun b!1914596 () Bool)

(declare-fun res!855443 () Bool)

(assert (=> b!1914596 (=> res!855443 e!1223108)))

(declare-fun rulesProduceIndividualToken!1643 (LexerInterface!3471 List!21701 Token!7268) Bool)

(assert (=> b!1914596 (= res!855443 (not (rulesProduceIndividualToken!1643 thiss!23328 rules!3198 (h!27019 tokens!598))))))

(declare-fun b!1914597 () Bool)

(declare-fun res!855435 () Bool)

(assert (=> b!1914597 (=> (not res!855435) (not e!1223116))))

(declare-fun lambda!74737 () Int)

(declare-fun forall!4552 (List!21700 Int) Bool)

(assert (=> b!1914597 (= res!855435 (forall!4552 tokens!598 lambda!74737))))

(declare-fun b!1914598 () Bool)

(assert (=> b!1914598 (= e!1223122 (= (rule!6059 (h!27019 tokens!598)) lt!733296))))

(declare-fun b!1914599 () Bool)

(declare-fun e!1223113 () Bool)

(declare-fun e!1223112 () Bool)

(assert (=> b!1914599 (= e!1223113 e!1223112)))

(declare-fun res!855431 () Bool)

(assert (=> b!1914599 (=> (not res!855431) (not e!1223112))))

(declare-fun lt!733317 () Rule!7516)

(assert (=> b!1914599 (= res!855431 (matchR!2569 (regex!3858 lt!733317) lt!733290))))

(declare-fun lt!733313 () Option!4421)

(assert (=> b!1914599 (= lt!733317 (get!6757 lt!733313))))

(declare-fun b!1914600 () Bool)

(assert (=> b!1914600 (= e!1223116 (not e!1223111))))

(declare-fun res!855452 () Bool)

(assert (=> b!1914600 (=> res!855452 e!1223111)))

(declare-fun lt!733312 () Option!4422)

(declare-fun lt!733303 () Bool)

(assert (=> b!1914600 (= res!855452 (or (and (not lt!733303) (= (_1!11642 (v!26486 lt!733312)) (h!27019 tokens!598))) lt!733303 (= (_1!11642 (v!26486 lt!733312)) (h!27019 tokens!598))))))

(assert (=> b!1914600 (= lt!733303 (not ((_ is Some!4421) lt!733312)))))

(assert (=> b!1914600 (= lt!733312 (maxPrefix!1917 thiss!23328 rules!3198 (++!5811 lt!733294 lt!733293)))))

(assert (=> b!1914600 (= lt!733293 (printWithSeparatorTokenWhenNeededList!514 thiss!23328 rules!3198 (t!178381 tokens!598) separatorToken!354))))

(assert (=> b!1914600 e!1223120))

(declare-fun res!855442 () Bool)

(assert (=> b!1914600 (=> (not res!855442) (not e!1223120))))

(declare-fun isDefined!3719 (Option!4421) Bool)

(assert (=> b!1914600 (= res!855442 (isDefined!3719 lt!733295))))

(declare-fun getRuleFromTag!701 (LexerInterface!3471 List!21701 String!25088) Option!4421)

(assert (=> b!1914600 (= lt!733295 (getRuleFromTag!701 thiss!23328 rules!3198 (tag!4296 (rule!6059 (h!27019 tokens!598)))))))

(declare-fun lt!733289 () Unit!36004)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!701 (LexerInterface!3471 List!21701 List!21699 Token!7268) Unit!36004)

(assert (=> b!1914600 (= lt!733289 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!701 thiss!23328 rules!3198 lt!733294 (h!27019 tokens!598)))))

(assert (=> b!1914600 (= (_1!11642 lt!733315) (h!27019 tokens!598))))

(declare-fun lt!733288 () Option!4422)

(declare-fun get!6758 (Option!4422) tuple2!20346)

(assert (=> b!1914600 (= lt!733315 (get!6758 lt!733288))))

(declare-fun isDefined!3720 (Option!4422) Bool)

(assert (=> b!1914600 (isDefined!3720 lt!733288)))

(assert (=> b!1914600 (= lt!733288 (maxPrefix!1917 thiss!23328 rules!3198 lt!733294))))

(declare-fun lt!733320 () BalanceConc!14232)

(assert (=> b!1914600 (= lt!733294 (list!8786 lt!733320))))

(assert (=> b!1914600 e!1223113))

(declare-fun res!855427 () Bool)

(assert (=> b!1914600 (=> (not res!855427) (not e!1223113))))

(assert (=> b!1914600 (= res!855427 (isDefined!3719 lt!733313))))

(assert (=> b!1914600 (= lt!733313 (getRuleFromTag!701 thiss!23328 rules!3198 (tag!4296 (rule!6059 separatorToken!354))))))

(declare-fun lt!733298 () Unit!36004)

(assert (=> b!1914600 (= lt!733298 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!701 thiss!23328 rules!3198 lt!733290 separatorToken!354))))

(declare-fun charsOf!2414 (Token!7268) BalanceConc!14232)

(assert (=> b!1914600 (= lt!733290 (list!8786 (charsOf!2414 separatorToken!354)))))

(declare-fun lt!733300 () Unit!36004)

(declare-fun lemmaEqSameImage!566 (TokenValueInjection!7572 BalanceConc!14232 BalanceConc!14232) Unit!36004)

(declare-fun seqFromList!2730 (List!21699) BalanceConc!14232)

(assert (=> b!1914600 (= lt!733300 (lemmaEqSameImage!566 (transformation!3858 (rule!6059 (h!27019 tokens!598))) lt!733320 (seqFromList!2730 (originalCharacters!4665 (h!27019 tokens!598)))))))

(declare-fun lt!733299 () Unit!36004)

(declare-fun lemmaSemiInverse!837 (TokenValueInjection!7572 BalanceConc!14232) Unit!36004)

(assert (=> b!1914600 (= lt!733299 (lemmaSemiInverse!837 (transformation!3858 (rule!6059 (h!27019 tokens!598))) lt!733320))))

(assert (=> b!1914600 (= lt!733320 (charsOf!2414 (h!27019 tokens!598)))))

(declare-fun b!1914601 () Bool)

(declare-fun res!855438 () Bool)

(assert (=> b!1914601 (=> (not res!855438) (not e!1223116))))

(assert (=> b!1914601 (= res!855438 ((_ is Cons!21618) tokens!598))))

(declare-fun b!1914602 () Bool)

(declare-fun Unit!36007 () Unit!36004)

(assert (=> b!1914602 (= e!1223130 Unit!36007)))

(declare-fun b!1914603 () Bool)

(declare-fun res!855446 () Bool)

(assert (=> b!1914603 (=> res!855446 e!1223124)))

(assert (=> b!1914603 (= res!855446 (not (contains!3921 lt!733308 lt!733306)))))

(declare-fun b!1914604 () Bool)

(assert (=> b!1914604 (= e!1223112 (= (rule!6059 separatorToken!354) lt!733317))))

(declare-fun b!1914605 () Bool)

(declare-fun res!855436 () Bool)

(assert (=> b!1914605 (=> (not res!855436) (not e!1223116))))

(declare-fun rulesInvariant!3078 (LexerInterface!3471 List!21701) Bool)

(assert (=> b!1914605 (= res!855436 (rulesInvariant!3078 thiss!23328 rules!3198))))

(declare-fun b!1914606 () Bool)

(declare-fun res!855445 () Bool)

(assert (=> b!1914606 (=> res!855445 e!1223108)))

(assert (=> b!1914606 (= res!855445 (not (contains!3920 rules!3198 (rule!6059 separatorToken!354))))))

(declare-fun b!1914607 () Bool)

(declare-fun res!855440 () Bool)

(assert (=> b!1914607 (=> (not res!855440) (not e!1223116))))

(assert (=> b!1914607 (= res!855440 (rulesProduceIndividualToken!1643 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1914608 () Bool)

(declare-fun tp!546402 () Bool)

(assert (=> b!1914608 (= e!1223123 (and e!1223127 tp!546402))))

(declare-fun b!1914609 () Bool)

(declare-fun res!855433 () Bool)

(assert (=> b!1914609 (=> res!855433 e!1223108)))

(declare-fun isEmpty!13304 (BalanceConc!14234) Bool)

(declare-datatypes ((tuple2!20348 0))(
  ( (tuple2!20349 (_1!11643 BalanceConc!14234) (_2!11643 BalanceConc!14232)) )
))
(declare-fun lex!1546 (LexerInterface!3471 List!21701 BalanceConc!14232) tuple2!20348)

(assert (=> b!1914609 (= res!855433 (isEmpty!13304 (_1!11643 (lex!1546 thiss!23328 rules!3198 (seqFromList!2730 lt!733294)))))))

(declare-fun b!1914610 () Bool)

(declare-fun res!855450 () Bool)

(assert (=> b!1914610 (=> (not res!855450) (not e!1223116))))

(declare-fun rulesProduceEachTokenIndividuallyList!1202 (LexerInterface!3471 List!21701 List!21700) Bool)

(assert (=> b!1914610 (= res!855450 (rulesProduceEachTokenIndividuallyList!1202 thiss!23328 rules!3198 tokens!598))))

(assert (= (and start!192016 res!855429) b!1914591))

(assert (= (and b!1914591 res!855451) b!1914605))

(assert (= (and b!1914605 res!855436) b!1914610))

(assert (= (and b!1914610 res!855450) b!1914607))

(assert (= (and b!1914607 res!855440) b!1914594))

(assert (= (and b!1914594 res!855439) b!1914597))

(assert (= (and b!1914597 res!855435) b!1914586))

(assert (= (and b!1914586 res!855447) b!1914601))

(assert (= (and b!1914601 res!855438) b!1914600))

(assert (= (and b!1914600 res!855427) b!1914599))

(assert (= (and b!1914599 res!855431) b!1914604))

(assert (= (and b!1914600 res!855442) b!1914577))

(assert (= (and b!1914577 res!855432) b!1914598))

(assert (= (and b!1914600 (not res!855452)) b!1914590))

(assert (= (and b!1914590 c!311763) b!1914592))

(assert (= (and b!1914590 (not c!311763)) b!1914602))

(assert (= (and b!1914592 res!855426) b!1914573))

(assert (= (and b!1914590 (not res!855434)) b!1914596))

(assert (= (and b!1914596 (not res!855443)) b!1914609))

(assert (= (and b!1914609 (not res!855433)) b!1914580))

(assert (= (and b!1914580 (not res!855428)) b!1914606))

(assert (= (and b!1914606 (not res!855445)) b!1914588))

(assert (= (and b!1914588 (not res!855444)) b!1914589))

(assert (= (and b!1914589 (not res!855430)) b!1914582))

(assert (= (and b!1914582 (not res!855448)) b!1914578))

(assert (= (and b!1914578 (not res!855441)) b!1914583))

(assert (= (and b!1914583 (not res!855449)) b!1914603))

(assert (= (and b!1914603 (not res!855446)) b!1914593))

(assert (= (and b!1914593 (not res!855437)) b!1914595))

(assert (= b!1914579 b!1914581))

(assert (= b!1914608 b!1914579))

(assert (= (and start!192016 ((_ is Cons!21619) rules!3198)) b!1914608))

(assert (= b!1914574 b!1914572))

(assert (= b!1914575 b!1914574))

(assert (= b!1914587 b!1914575))

(assert (= (and start!192016 ((_ is Cons!21618) tokens!598)) b!1914587))

(assert (= b!1914576 b!1914584))

(assert (= b!1914585 b!1914576))

(assert (= start!192016 b!1914585))

(declare-fun m!2349151 () Bool)

(assert (=> b!1914599 m!2349151))

(declare-fun m!2349153 () Bool)

(assert (=> b!1914599 m!2349153))

(declare-fun m!2349155 () Bool)

(assert (=> b!1914596 m!2349155))

(declare-fun m!2349157 () Bool)

(assert (=> start!192016 m!2349157))

(declare-fun m!2349159 () Bool)

(assert (=> b!1914577 m!2349159))

(declare-fun m!2349161 () Bool)

(assert (=> b!1914577 m!2349161))

(declare-fun m!2349163 () Bool)

(assert (=> b!1914585 m!2349163))

(declare-fun m!2349165 () Bool)

(assert (=> b!1914591 m!2349165))

(declare-fun m!2349167 () Bool)

(assert (=> b!1914607 m!2349167))

(declare-fun m!2349169 () Bool)

(assert (=> b!1914590 m!2349169))

(declare-fun m!2349171 () Bool)

(assert (=> b!1914590 m!2349171))

(declare-fun m!2349173 () Bool)

(assert (=> b!1914590 m!2349173))

(declare-fun m!2349175 () Bool)

(assert (=> b!1914590 m!2349175))

(declare-fun m!2349177 () Bool)

(assert (=> b!1914590 m!2349177))

(declare-fun m!2349179 () Bool)

(assert (=> b!1914590 m!2349179))

(declare-fun m!2349181 () Bool)

(assert (=> b!1914590 m!2349181))

(declare-fun m!2349183 () Bool)

(assert (=> b!1914590 m!2349183))

(declare-fun m!2349185 () Bool)

(assert (=> b!1914590 m!2349185))

(declare-fun m!2349187 () Bool)

(assert (=> b!1914590 m!2349187))

(declare-fun m!2349189 () Bool)

(assert (=> b!1914590 m!2349189))

(declare-fun m!2349191 () Bool)

(assert (=> b!1914590 m!2349191))

(declare-fun m!2349193 () Bool)

(assert (=> b!1914590 m!2349193))

(declare-fun m!2349195 () Bool)

(assert (=> b!1914590 m!2349195))

(declare-fun m!2349197 () Bool)

(assert (=> b!1914590 m!2349197))

(declare-fun m!2349199 () Bool)

(assert (=> b!1914590 m!2349199))

(declare-fun m!2349201 () Bool)

(assert (=> b!1914583 m!2349201))

(declare-fun m!2349203 () Bool)

(assert (=> b!1914583 m!2349203))

(declare-fun m!2349205 () Bool)

(assert (=> b!1914579 m!2349205))

(declare-fun m!2349207 () Bool)

(assert (=> b!1914579 m!2349207))

(declare-fun m!2349209 () Bool)

(assert (=> b!1914589 m!2349209))

(declare-fun m!2349211 () Bool)

(assert (=> b!1914575 m!2349211))

(declare-fun m!2349213 () Bool)

(assert (=> b!1914597 m!2349213))

(declare-fun m!2349215 () Bool)

(assert (=> b!1914574 m!2349215))

(declare-fun m!2349217 () Bool)

(assert (=> b!1914574 m!2349217))

(declare-fun m!2349219 () Bool)

(assert (=> b!1914609 m!2349219))

(assert (=> b!1914609 m!2349219))

(declare-fun m!2349221 () Bool)

(assert (=> b!1914609 m!2349221))

(declare-fun m!2349223 () Bool)

(assert (=> b!1914609 m!2349223))

(declare-fun m!2349225 () Bool)

(assert (=> b!1914582 m!2349225))

(declare-fun m!2349227 () Bool)

(assert (=> b!1914582 m!2349227))

(declare-fun m!2349229 () Bool)

(assert (=> b!1914582 m!2349229))

(declare-fun m!2349231 () Bool)

(assert (=> b!1914580 m!2349231))

(declare-fun m!2349233 () Bool)

(assert (=> b!1914586 m!2349233))

(declare-fun m!2349235 () Bool)

(assert (=> b!1914610 m!2349235))

(declare-fun m!2349237 () Bool)

(assert (=> b!1914606 m!2349237))

(declare-fun m!2349239 () Bool)

(assert (=> b!1914595 m!2349239))

(assert (=> b!1914595 m!2349239))

(declare-fun m!2349241 () Bool)

(assert (=> b!1914595 m!2349241))

(declare-fun m!2349243 () Bool)

(assert (=> b!1914576 m!2349243))

(declare-fun m!2349245 () Bool)

(assert (=> b!1914576 m!2349245))

(declare-fun m!2349247 () Bool)

(assert (=> b!1914605 m!2349247))

(declare-fun m!2349249 () Bool)

(assert (=> b!1914578 m!2349249))

(declare-fun m!2349251 () Bool)

(assert (=> b!1914593 m!2349251))

(declare-fun m!2349253 () Bool)

(assert (=> b!1914593 m!2349253))

(declare-fun m!2349255 () Bool)

(assert (=> b!1914593 m!2349255))

(declare-fun m!2349257 () Bool)

(assert (=> b!1914603 m!2349257))

(declare-fun m!2349259 () Bool)

(assert (=> b!1914587 m!2349259))

(declare-fun m!2349261 () Bool)

(assert (=> b!1914600 m!2349261))

(declare-fun m!2349263 () Bool)

(assert (=> b!1914600 m!2349263))

(declare-fun m!2349265 () Bool)

(assert (=> b!1914600 m!2349265))

(declare-fun m!2349267 () Bool)

(assert (=> b!1914600 m!2349267))

(declare-fun m!2349269 () Bool)

(assert (=> b!1914600 m!2349269))

(declare-fun m!2349271 () Bool)

(assert (=> b!1914600 m!2349271))

(assert (=> b!1914600 m!2349267))

(declare-fun m!2349273 () Bool)

(assert (=> b!1914600 m!2349273))

(declare-fun m!2349275 () Bool)

(assert (=> b!1914600 m!2349275))

(declare-fun m!2349277 () Bool)

(assert (=> b!1914600 m!2349277))

(declare-fun m!2349279 () Bool)

(assert (=> b!1914600 m!2349279))

(declare-fun m!2349281 () Bool)

(assert (=> b!1914600 m!2349281))

(declare-fun m!2349283 () Bool)

(assert (=> b!1914600 m!2349283))

(declare-fun m!2349285 () Bool)

(assert (=> b!1914600 m!2349285))

(assert (=> b!1914600 m!2349279))

(declare-fun m!2349287 () Bool)

(assert (=> b!1914600 m!2349287))

(assert (=> b!1914600 m!2349271))

(declare-fun m!2349289 () Bool)

(assert (=> b!1914600 m!2349289))

(declare-fun m!2349291 () Bool)

(assert (=> b!1914600 m!2349291))

(declare-fun m!2349293 () Bool)

(assert (=> b!1914600 m!2349293))

(declare-fun m!2349295 () Bool)

(assert (=> b!1914600 m!2349295))

(declare-fun m!2349297 () Bool)

(assert (=> b!1914600 m!2349297))

(declare-fun m!2349299 () Bool)

(assert (=> b!1914592 m!2349299))

(declare-fun m!2349301 () Bool)

(assert (=> b!1914592 m!2349301))

(check-sat (not b!1914600) (not b!1914609) (not b!1914607) (not b!1914596) (not b!1914579) b_and!149291 (not b!1914605) (not b!1914575) (not b_next!54889) (not b!1914592) b_and!149287 b_and!149297 (not b!1914589) (not b!1914577) b_and!149295 (not b_next!54881) (not b!1914585) (not b!1914590) (not b!1914597) (not b!1914583) (not b!1914580) (not b!1914599) (not b!1914587) (not start!192016) (not b!1914586) (not b!1914610) (not b_next!54887) (not b!1914591) (not b!1914606) (not b!1914595) (not b!1914603) (not b!1914608) (not b!1914576) b_and!149289 (not b!1914593) (not b!1914578) (not b_next!54883) (not b_next!54885) b_and!149293 (not b_next!54891) (not b!1914582) (not b!1914574))
(check-sat b_and!149291 (not b_next!54887) (not b_next!54889) b_and!149289 b_and!149287 b_and!149297 b_and!149295 (not b_next!54881) (not b_next!54883) (not b_next!54885) b_and!149293 (not b_next!54891))
