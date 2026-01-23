; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393442 () Bool)

(assert start!393442)

(declare-fun b!4139593 () Bool)

(declare-fun b_free!117795 () Bool)

(declare-fun b_next!118499 () Bool)

(assert (=> b!4139593 (= b_free!117795 (not b_next!118499))))

(declare-fun tp!1261793 () Bool)

(declare-fun b_and!321377 () Bool)

(assert (=> b!4139593 (= tp!1261793 b_and!321377)))

(declare-fun b_free!117797 () Bool)

(declare-fun b_next!118501 () Bool)

(assert (=> b!4139593 (= b_free!117797 (not b_next!118501))))

(declare-fun tp!1261789 () Bool)

(declare-fun b_and!321379 () Bool)

(assert (=> b!4139593 (= tp!1261789 b_and!321379)))

(declare-fun b!4139584 () Bool)

(declare-fun b_free!117799 () Bool)

(declare-fun b_next!118503 () Bool)

(assert (=> b!4139584 (= b_free!117799 (not b_next!118503))))

(declare-fun tp!1261795 () Bool)

(declare-fun b_and!321381 () Bool)

(assert (=> b!4139584 (= tp!1261795 b_and!321381)))

(declare-fun b_free!117801 () Bool)

(declare-fun b_next!118505 () Bool)

(assert (=> b!4139584 (= b_free!117801 (not b_next!118505))))

(declare-fun tp!1261787 () Bool)

(declare-fun b_and!321383 () Bool)

(assert (=> b!4139584 (= tp!1261787 b_and!321383)))

(declare-fun b!4139585 () Bool)

(declare-fun b_free!117803 () Bool)

(declare-fun b_next!118507 () Bool)

(assert (=> b!4139585 (= b_free!117803 (not b_next!118507))))

(declare-fun tp!1261788 () Bool)

(declare-fun b_and!321385 () Bool)

(assert (=> b!4139585 (= tp!1261788 b_and!321385)))

(declare-fun b_free!117805 () Bool)

(declare-fun b_next!118509 () Bool)

(assert (=> b!4139585 (= b_free!117805 (not b_next!118509))))

(declare-fun tp!1261791 () Bool)

(declare-fun b_and!321387 () Bool)

(assert (=> b!4139585 (= tp!1261791 b_and!321387)))

(declare-fun b!4139575 () Bool)

(declare-fun e!2568446 () Bool)

(declare-fun e!2568449 () Bool)

(assert (=> b!4139575 (= e!2568446 e!2568449)))

(declare-fun res!1693323 () Bool)

(assert (=> b!4139575 (=> res!1693323 e!2568449)))

(declare-datatypes ((C!24728 0))(
  ( (C!24729 (val!14474 Int)) )
))
(declare-datatypes ((List!45002 0))(
  ( (Nil!44878) (Cons!44878 (h!50298 C!24728) (t!342281 List!45002)) )
))
(declare-datatypes ((IArray!27159 0))(
  ( (IArray!27160 (innerList!13637 List!45002)) )
))
(declare-datatypes ((Conc!13577 0))(
  ( (Node!13577 (left!33610 Conc!13577) (right!33940 Conc!13577) (csize!27384 Int) (cheight!13788 Int)) (Leaf!20975 (xs!16883 IArray!27159) (csize!27385 Int)) (Empty!13577) )
))
(declare-datatypes ((BalanceConc!26748 0))(
  ( (BalanceConc!26749 (c!709736 Conc!13577)) )
))
(declare-fun lt!1476125 () BalanceConc!26748)

(declare-fun lt!1476115 () Int)

(declare-fun size!33236 (BalanceConc!26748) Int)

(assert (=> b!4139575 (= res!1693323 (<= (size!33236 lt!1476125) lt!1476115))))

(declare-datatypes ((List!45003 0))(
  ( (Nil!44879) (Cons!44879 (h!50299 (_ BitVec 16)) (t!342282 List!45003)) )
))
(declare-datatypes ((TokenValue!7596 0))(
  ( (FloatLiteralValue!15192 (text!53617 List!45003)) (TokenValueExt!7595 (__x!27409 Int)) (Broken!37980 (value!230459 List!45003)) (Object!7719) (End!7596) (Def!7596) (Underscore!7596) (Match!7596) (Else!7596) (Error!7596) (Case!7596) (If!7596) (Extends!7596) (Abstract!7596) (Class!7596) (Val!7596) (DelimiterValue!15192 (del!7656 List!45003)) (KeywordValue!7602 (value!230460 List!45003)) (CommentValue!15192 (value!230461 List!45003)) (WhitespaceValue!15192 (value!230462 List!45003)) (IndentationValue!7596 (value!230463 List!45003)) (String!51729) (Int32!7596) (Broken!37981 (value!230464 List!45003)) (Boolean!7597) (Unit!64180) (OperatorValue!7599 (op!7656 List!45003)) (IdentifierValue!15192 (value!230465 List!45003)) (IdentifierValue!15193 (value!230466 List!45003)) (WhitespaceValue!15193 (value!230467 List!45003)) (True!15192) (False!15192) (Broken!37982 (value!230468 List!45003)) (Broken!37983 (value!230469 List!45003)) (True!15193) (RightBrace!7596) (RightBracket!7596) (Colon!7596) (Null!7596) (Comma!7596) (LeftBracket!7596) (False!15193) (LeftBrace!7596) (ImaginaryLiteralValue!7596 (text!53618 List!45003)) (StringLiteralValue!22788 (value!230470 List!45003)) (EOFValue!7596 (value!230471 List!45003)) (IdentValue!7596 (value!230472 List!45003)) (DelimiterValue!15193 (value!230473 List!45003)) (DedentValue!7596 (value!230474 List!45003)) (NewLineValue!7596 (value!230475 List!45003)) (IntegerValue!22788 (value!230476 (_ BitVec 32)) (text!53619 List!45003)) (IntegerValue!22789 (value!230477 Int) (text!53620 List!45003)) (Times!7596) (Or!7596) (Equal!7596) (Minus!7596) (Broken!37984 (value!230478 List!45003)) (And!7596) (Div!7596) (LessEqual!7596) (Mod!7596) (Concat!19867) (Not!7596) (Plus!7596) (SpaceValue!7596 (value!230479 List!45003)) (IntegerValue!22790 (value!230480 Int) (text!53621 List!45003)) (StringLiteralValue!22789 (text!53622 List!45003)) (FloatLiteralValue!15193 (text!53623 List!45003)) (BytesLiteralValue!7596 (value!230481 List!45003)) (CommentValue!15193 (value!230482 List!45003)) (StringLiteralValue!22790 (value!230483 List!45003)) (ErrorTokenValue!7596 (msg!7657 List!45003)) )
))
(declare-datatypes ((Regex!12271 0))(
  ( (ElementMatch!12271 (c!709737 C!24728)) (Concat!19868 (regOne!25054 Regex!12271) (regTwo!25054 Regex!12271)) (EmptyExpr!12271) (Star!12271 (reg!12600 Regex!12271)) (EmptyLang!12271) (Union!12271 (regOne!25055 Regex!12271) (regTwo!25055 Regex!12271)) )
))
(declare-datatypes ((String!51730 0))(
  ( (String!51731 (value!230484 String)) )
))
(declare-datatypes ((TokenValueInjection!14620 0))(
  ( (TokenValueInjection!14621 (toValue!10030 Int) (toChars!9889 Int)) )
))
(declare-datatypes ((Rule!14532 0))(
  ( (Rule!14533 (regex!7366 Regex!12271) (tag!8226 String!51730) (isSeparator!7366 Bool) (transformation!7366 TokenValueInjection!14620)) )
))
(declare-datatypes ((Token!13662 0))(
  ( (Token!13663 (value!230485 TokenValue!7596) (rule!10474 Rule!14532) (size!33237 Int) (originalCharacters!7862 List!45002)) )
))
(declare-datatypes ((tuple2!43270 0))(
  ( (tuple2!43271 (_1!24769 Token!13662) (_2!24769 List!45002)) )
))
(declare-fun lt!1476126 () tuple2!43270)

(declare-fun charsOf!4965 (Token!13662) BalanceConc!26748)

(assert (=> b!4139575 (= lt!1476125 (charsOf!4965 (_1!24769 lt!1476126)))))

(declare-datatypes ((Option!9672 0))(
  ( (None!9671) (Some!9671 (v!40307 tuple2!43270)) )
))
(declare-fun lt!1476121 () Option!9672)

(declare-fun get!14644 (Option!9672) tuple2!43270)

(assert (=> b!4139575 (= lt!1476126 (get!14644 lt!1476121))))

(declare-fun b!4139576 () Bool)

(declare-fun e!2568456 () Bool)

(declare-fun tp_is_empty!21465 () Bool)

(declare-fun tp!1261790 () Bool)

(assert (=> b!4139576 (= e!2568456 (and tp_is_empty!21465 tp!1261790))))

(declare-fun b!4139577 () Bool)

(declare-fun e!2568459 () Bool)

(declare-fun e!2568451 () Bool)

(assert (=> b!4139577 (= e!2568459 e!2568451)))

(declare-fun res!1693318 () Bool)

(assert (=> b!4139577 (=> (not res!1693318) (not e!2568451))))

(declare-datatypes ((List!45004 0))(
  ( (Nil!44880) (Cons!44880 (h!50300 Rule!14532) (t!342283 List!45004)) )
))
(declare-fun rules!3756 () List!45004)

(declare-fun input!3238 () List!45002)

(declare-fun lt!1476123 () Token!13662)

(declare-datatypes ((LexerInterface!6955 0))(
  ( (LexerInterfaceExt!6952 (__x!27410 Int)) (Lexer!6953) )
))
(declare-fun thiss!25645 () LexerInterface!6955)

(declare-fun lt!1476120 () List!45002)

(declare-fun maxPrefix!4145 (LexerInterface!6955 List!45004 List!45002) Option!9672)

(assert (=> b!4139577 (= res!1693318 (= (maxPrefix!4145 thiss!25645 rules!3756 input!3238) (Some!9671 (tuple2!43271 lt!1476123 lt!1476120))))))

(declare-fun p!2912 () List!45002)

(declare-fun getSuffix!2628 (List!45002 List!45002) List!45002)

(assert (=> b!4139577 (= lt!1476120 (getSuffix!2628 input!3238 p!2912))))

(declare-fun lt!1476118 () TokenValue!7596)

(declare-fun r!4008 () Rule!14532)

(assert (=> b!4139577 (= lt!1476123 (Token!13663 lt!1476118 r!4008 lt!1476115 p!2912))))

(declare-fun size!33238 (List!45002) Int)

(assert (=> b!4139577 (= lt!1476115 (size!33238 p!2912))))

(declare-fun lt!1476128 () BalanceConc!26748)

(declare-fun apply!10439 (TokenValueInjection!14620 BalanceConc!26748) TokenValue!7596)

(assert (=> b!4139577 (= lt!1476118 (apply!10439 (transformation!7366 r!4008) lt!1476128))))

(declare-datatypes ((Unit!64181 0))(
  ( (Unit!64182) )
))
(declare-fun lt!1476117 () Unit!64181)

(declare-fun lemmaSemiInverse!2224 (TokenValueInjection!14620 BalanceConc!26748) Unit!64181)

(assert (=> b!4139577 (= lt!1476117 (lemmaSemiInverse!2224 (transformation!7366 r!4008) lt!1476128))))

(declare-fun seqFromList!5483 (List!45002) BalanceConc!26748)

(assert (=> b!4139577 (= lt!1476128 (seqFromList!5483 p!2912))))

(declare-fun b!4139578 () Bool)

(declare-fun res!1693324 () Bool)

(assert (=> b!4139578 (=> (not res!1693324) (not e!2568459))))

(declare-fun isPrefix!4301 (List!45002 List!45002) Bool)

(assert (=> b!4139578 (= res!1693324 (isPrefix!4301 p!2912 input!3238))))

(declare-fun b!4139579 () Bool)

(declare-fun res!1693317 () Bool)

(assert (=> b!4139579 (=> (not res!1693317) (not e!2568459))))

(declare-fun contains!9046 (List!45004 Rule!14532) Bool)

(assert (=> b!4139579 (= res!1693317 (contains!9046 rules!3756 r!4008))))

(declare-fun e!2568461 () Bool)

(declare-fun tp!1261786 () Bool)

(declare-fun b!4139580 () Bool)

(declare-fun e!2568448 () Bool)

(declare-fun inv!59486 (String!51730) Bool)

(declare-fun inv!59488 (TokenValueInjection!14620) Bool)

(assert (=> b!4139580 (= e!2568461 (and tp!1261786 (inv!59486 (tag!8226 (h!50300 rules!3756))) (inv!59488 (transformation!7366 (h!50300 rules!3756))) e!2568448))))

(declare-fun rBis!149 () Rule!14532)

(declare-fun e!2568455 () Bool)

(declare-fun b!4139581 () Bool)

(declare-fun e!2568453 () Bool)

(declare-fun tp!1261794 () Bool)

(assert (=> b!4139581 (= e!2568453 (and tp!1261794 (inv!59486 (tag!8226 rBis!149)) (inv!59488 (transformation!7366 rBis!149)) e!2568455))))

(declare-fun b!4139582 () Bool)

(declare-fun res!1693325 () Bool)

(assert (=> b!4139582 (=> (not res!1693325) (not e!2568459))))

(declare-fun rulesInvariant!6252 (LexerInterface!6955 List!45004) Bool)

(assert (=> b!4139582 (= res!1693325 (rulesInvariant!6252 thiss!25645 rules!3756))))

(declare-fun b!4139583 () Bool)

(declare-fun e!2568462 () Bool)

(assert (=> b!4139583 (= e!2568451 (not e!2568462))))

(declare-fun res!1693321 () Bool)

(assert (=> b!4139583 (=> res!1693321 e!2568462)))

(get-info :version)

(assert (=> b!4139583 (= res!1693321 (or (not ((_ is Cons!44880) rules!3756)) (not (= (h!50300 rules!3756) rBis!149))))))

(declare-fun lt!1476127 () Unit!64181)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2212 (LexerInterface!6955 Rule!14532 List!45004) Unit!64181)

(assert (=> b!4139583 (= lt!1476127 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2212 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3172 (LexerInterface!6955 Rule!14532) Bool)

(assert (=> b!4139583 (ruleValid!3172 thiss!25645 rBis!149)))

(declare-fun lt!1476122 () Unit!64181)

(assert (=> b!4139583 (= lt!1476122 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2212 thiss!25645 rBis!149 rules!3756))))

(assert (=> b!4139584 (= e!2568455 (and tp!1261795 tp!1261787))))

(assert (=> b!4139585 (= e!2568448 (and tp!1261788 tp!1261791))))

(declare-fun b!4139586 () Bool)

(declare-fun res!1693322 () Bool)

(assert (=> b!4139586 (=> (not res!1693322) (not e!2568459))))

(declare-fun isEmpty!26751 (List!45004) Bool)

(assert (=> b!4139586 (= res!1693322 (not (isEmpty!26751 rules!3756)))))

(declare-fun b!4139588 () Bool)

(declare-fun e!2568457 () Bool)

(declare-fun tp!1261796 () Bool)

(assert (=> b!4139588 (= e!2568457 (and e!2568461 tp!1261796))))

(declare-fun b!4139589 () Bool)

(declare-fun res!1693316 () Bool)

(assert (=> b!4139589 (=> (not res!1693316) (not e!2568459))))

(declare-fun isEmpty!26752 (List!45002) Bool)

(assert (=> b!4139589 (= res!1693316 (not (isEmpty!26752 p!2912)))))

(declare-fun b!4139590 () Bool)

(declare-fun res!1693327 () Bool)

(assert (=> b!4139590 (=> (not res!1693327) (not e!2568451))))

(declare-fun getIndex!712 (List!45004 Rule!14532) Int)

(assert (=> b!4139590 (= res!1693327 (< (getIndex!712 rules!3756 rBis!149) (getIndex!712 rules!3756 r!4008)))))

(declare-fun b!4139591 () Bool)

(declare-fun res!1693319 () Bool)

(assert (=> b!4139591 (=> (not res!1693319) (not e!2568451))))

(assert (=> b!4139591 (= res!1693319 (ruleValid!3172 thiss!25645 r!4008))))

(declare-fun b!4139592 () Bool)

(declare-fun matchR!6100 (Regex!12271 List!45002) Bool)

(assert (=> b!4139592 (= e!2568449 (not (matchR!6100 (regex!7366 rBis!149) p!2912)))))

(declare-fun e!2568458 () Bool)

(assert (=> b!4139592 e!2568458))

(declare-fun res!1693315 () Bool)

(assert (=> b!4139592 (=> (not res!1693315) (not e!2568458))))

(declare-fun lt!1476124 () List!45002)

(assert (=> b!4139592 (= res!1693315 (<= (size!33238 lt!1476124) lt!1476115))))

(declare-fun lt!1476114 () Unit!64181)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!8 (LexerInterface!6955 List!45004 List!45002 Token!13662 List!45002 List!45002 List!45002 List!45002 Rule!14532 Token!13662) Unit!64181)

(assert (=> b!4139592 (= lt!1476114 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!8 thiss!25645 rules!3756 p!2912 lt!1476123 input!3238 lt!1476120 lt!1476124 (getSuffix!2628 input!3238 lt!1476124) rBis!149 (_1!24769 lt!1476126)))))

(declare-fun list!16437 (BalanceConc!26748) List!45002)

(assert (=> b!4139592 (= lt!1476124 (list!16437 lt!1476125))))

(declare-fun res!1693320 () Bool)

(assert (=> start!393442 (=> (not res!1693320) (not e!2568459))))

(assert (=> start!393442 (= res!1693320 ((_ is Lexer!6953) thiss!25645))))

(assert (=> start!393442 e!2568459))

(assert (=> start!393442 e!2568457))

(declare-fun e!2568454 () Bool)

(assert (=> start!393442 e!2568454))

(assert (=> start!393442 true))

(declare-fun e!2568447 () Bool)

(assert (=> start!393442 e!2568447))

(assert (=> start!393442 e!2568456))

(assert (=> start!393442 e!2568453))

(declare-fun b!4139587 () Bool)

(assert (=> b!4139587 (= e!2568462 e!2568446)))

(declare-fun res!1693328 () Bool)

(assert (=> b!4139587 (=> res!1693328 e!2568446)))

(declare-fun isEmpty!26753 (Option!9672) Bool)

(assert (=> b!4139587 (= res!1693328 (isEmpty!26753 lt!1476121))))

(declare-fun maxPrefixOneRule!3084 (LexerInterface!6955 Rule!14532 List!45002) Option!9672)

(assert (=> b!4139587 (= lt!1476121 (maxPrefixOneRule!3084 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4139587 (not (= rBis!149 r!4008))))

(declare-fun lt!1476119 () Unit!64181)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!64 (LexerInterface!6955 List!45004 Rule!14532 Rule!14532) Unit!64181)

(assert (=> b!4139587 (= lt!1476119 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!64 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6535 (List!45004) List!45004)

(assert (=> b!4139587 (contains!9046 (tail!6535 rules!3756) r!4008)))

(declare-fun lt!1476116 () Unit!64181)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!70 (List!45004 Rule!14532 Rule!14532) Unit!64181)

(assert (=> b!4139587 (= lt!1476116 (lemmaGetIndexBiggerAndHeadEqThenTailContains!70 rules!3756 rBis!149 r!4008))))

(declare-fun e!2568460 () Bool)

(assert (=> b!4139593 (= e!2568460 (and tp!1261793 tp!1261789))))

(declare-fun b!4139594 () Bool)

(declare-fun tp!1261785 () Bool)

(assert (=> b!4139594 (= e!2568447 (and tp!1261785 (inv!59486 (tag!8226 r!4008)) (inv!59488 (transformation!7366 r!4008)) e!2568460))))

(declare-fun b!4139595 () Bool)

(assert (=> b!4139595 (= e!2568458 false)))

(declare-fun b!4139596 () Bool)

(declare-fun res!1693314 () Bool)

(assert (=> b!4139596 (=> (not res!1693314) (not e!2568451))))

(assert (=> b!4139596 (= res!1693314 (matchR!6100 (regex!7366 r!4008) p!2912))))

(declare-fun b!4139597 () Bool)

(declare-fun res!1693326 () Bool)

(assert (=> b!4139597 (=> (not res!1693326) (not e!2568459))))

(assert (=> b!4139597 (= res!1693326 (contains!9046 rules!3756 rBis!149))))

(declare-fun b!4139598 () Bool)

(declare-fun tp!1261792 () Bool)

(assert (=> b!4139598 (= e!2568454 (and tp_is_empty!21465 tp!1261792))))

(assert (= (and start!393442 res!1693320) b!4139578))

(assert (= (and b!4139578 res!1693324) b!4139586))

(assert (= (and b!4139586 res!1693322) b!4139582))

(assert (= (and b!4139582 res!1693325) b!4139579))

(assert (= (and b!4139579 res!1693317) b!4139597))

(assert (= (and b!4139597 res!1693326) b!4139589))

(assert (= (and b!4139589 res!1693316) b!4139577))

(assert (= (and b!4139577 res!1693318) b!4139596))

(assert (= (and b!4139596 res!1693314) b!4139590))

(assert (= (and b!4139590 res!1693327) b!4139591))

(assert (= (and b!4139591 res!1693319) b!4139583))

(assert (= (and b!4139583 (not res!1693321)) b!4139587))

(assert (= (and b!4139587 (not res!1693328)) b!4139575))

(assert (= (and b!4139575 (not res!1693323)) b!4139592))

(assert (= (and b!4139592 res!1693315) b!4139595))

(assert (= b!4139580 b!4139585))

(assert (= b!4139588 b!4139580))

(assert (= (and start!393442 ((_ is Cons!44880) rules!3756)) b!4139588))

(assert (= (and start!393442 ((_ is Cons!44878) p!2912)) b!4139598))

(assert (= b!4139594 b!4139593))

(assert (= start!393442 b!4139594))

(assert (= (and start!393442 ((_ is Cons!44878) input!3238)) b!4139576))

(assert (= b!4139581 b!4139584))

(assert (= start!393442 b!4139581))

(declare-fun m!4735991 () Bool)

(assert (=> b!4139579 m!4735991))

(declare-fun m!4735993 () Bool)

(assert (=> b!4139581 m!4735993))

(declare-fun m!4735995 () Bool)

(assert (=> b!4139581 m!4735995))

(declare-fun m!4735997 () Bool)

(assert (=> b!4139580 m!4735997))

(declare-fun m!4735999 () Bool)

(assert (=> b!4139580 m!4735999))

(declare-fun m!4736001 () Bool)

(assert (=> b!4139578 m!4736001))

(declare-fun m!4736003 () Bool)

(assert (=> b!4139589 m!4736003))

(declare-fun m!4736005 () Bool)

(assert (=> b!4139583 m!4736005))

(declare-fun m!4736007 () Bool)

(assert (=> b!4139583 m!4736007))

(declare-fun m!4736009 () Bool)

(assert (=> b!4139583 m!4736009))

(declare-fun m!4736011 () Bool)

(assert (=> b!4139586 m!4736011))

(declare-fun m!4736013 () Bool)

(assert (=> b!4139597 m!4736013))

(declare-fun m!4736015 () Bool)

(assert (=> b!4139591 m!4736015))

(declare-fun m!4736017 () Bool)

(assert (=> b!4139594 m!4736017))

(declare-fun m!4736019 () Bool)

(assert (=> b!4139594 m!4736019))

(declare-fun m!4736021 () Bool)

(assert (=> b!4139592 m!4736021))

(declare-fun m!4736023 () Bool)

(assert (=> b!4139592 m!4736023))

(declare-fun m!4736025 () Bool)

(assert (=> b!4139592 m!4736025))

(assert (=> b!4139592 m!4736021))

(declare-fun m!4736027 () Bool)

(assert (=> b!4139592 m!4736027))

(declare-fun m!4736029 () Bool)

(assert (=> b!4139592 m!4736029))

(declare-fun m!4736031 () Bool)

(assert (=> b!4139587 m!4736031))

(declare-fun m!4736033 () Bool)

(assert (=> b!4139587 m!4736033))

(declare-fun m!4736035 () Bool)

(assert (=> b!4139587 m!4736035))

(declare-fun m!4736037 () Bool)

(assert (=> b!4139587 m!4736037))

(assert (=> b!4139587 m!4736033))

(declare-fun m!4736039 () Bool)

(assert (=> b!4139587 m!4736039))

(declare-fun m!4736041 () Bool)

(assert (=> b!4139587 m!4736041))

(declare-fun m!4736043 () Bool)

(assert (=> b!4139596 m!4736043))

(declare-fun m!4736045 () Bool)

(assert (=> b!4139575 m!4736045))

(declare-fun m!4736047 () Bool)

(assert (=> b!4139575 m!4736047))

(declare-fun m!4736049 () Bool)

(assert (=> b!4139575 m!4736049))

(declare-fun m!4736051 () Bool)

(assert (=> b!4139577 m!4736051))

(declare-fun m!4736053 () Bool)

(assert (=> b!4139577 m!4736053))

(declare-fun m!4736055 () Bool)

(assert (=> b!4139577 m!4736055))

(declare-fun m!4736057 () Bool)

(assert (=> b!4139577 m!4736057))

(declare-fun m!4736059 () Bool)

(assert (=> b!4139577 m!4736059))

(declare-fun m!4736061 () Bool)

(assert (=> b!4139577 m!4736061))

(declare-fun m!4736063 () Bool)

(assert (=> b!4139582 m!4736063))

(declare-fun m!4736065 () Bool)

(assert (=> b!4139590 m!4736065))

(declare-fun m!4736067 () Bool)

(assert (=> b!4139590 m!4736067))

(check-sat (not b!4139588) (not b!4139587) (not b!4139576) (not b!4139591) (not b_next!118505) (not b!4139580) (not b!4139579) b_and!321387 (not b!4139577) (not b!4139586) (not b!4139589) (not b!4139594) (not b!4139578) (not b!4139596) (not b_next!118501) (not b!4139598) b_and!321381 b_and!321385 tp_is_empty!21465 (not b!4139583) (not b_next!118507) (not b!4139582) (not b!4139597) b_and!321377 (not b!4139581) (not b!4139575) (not b_next!118499) (not b_next!118503) b_and!321383 (not b!4139592) (not b_next!118509) (not b!4139590) b_and!321379)
(check-sat b_and!321377 (not b_next!118499) (not b_next!118505) (not b_next!118509) b_and!321379 b_and!321387 (not b_next!118501) b_and!321381 b_and!321385 (not b_next!118507) (not b_next!118503) b_and!321383)
