; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!383944 () Bool)

(assert start!383944)

(declare-fun b!4069554 () Bool)

(declare-fun b_free!113209 () Bool)

(declare-fun b_next!113913 () Bool)

(assert (=> b!4069554 (= b_free!113209 (not b_next!113913))))

(declare-fun tp!1231619 () Bool)

(declare-fun b_and!312739 () Bool)

(assert (=> b!4069554 (= tp!1231619 b_and!312739)))

(declare-fun b_free!113211 () Bool)

(declare-fun b_next!113915 () Bool)

(assert (=> b!4069554 (= b_free!113211 (not b_next!113915))))

(declare-fun tp!1231612 () Bool)

(declare-fun b_and!312741 () Bool)

(assert (=> b!4069554 (= tp!1231612 b_and!312741)))

(declare-fun b!4069563 () Bool)

(declare-fun b_free!113213 () Bool)

(declare-fun b_next!113917 () Bool)

(assert (=> b!4069563 (= b_free!113213 (not b_next!113917))))

(declare-fun tp!1231613 () Bool)

(declare-fun b_and!312743 () Bool)

(assert (=> b!4069563 (= tp!1231613 b_and!312743)))

(declare-fun b_free!113215 () Bool)

(declare-fun b_next!113919 () Bool)

(assert (=> b!4069563 (= b_free!113215 (not b_next!113919))))

(declare-fun tp!1231616 () Bool)

(declare-fun b_and!312745 () Bool)

(assert (=> b!4069563 (= tp!1231616 b_and!312745)))

(declare-fun b!4069547 () Bool)

(declare-fun e!2525617 () Bool)

(declare-fun e!2525629 () Bool)

(declare-fun tp!1231618 () Bool)

(assert (=> b!4069547 (= e!2525617 (and e!2525629 tp!1231618))))

(declare-fun b!4069548 () Bool)

(declare-fun e!2525616 () Bool)

(declare-fun e!2525635 () Bool)

(assert (=> b!4069548 (= e!2525616 e!2525635)))

(declare-fun res!1661491 () Bool)

(assert (=> b!4069548 (=> res!1661491 e!2525635)))

(declare-datatypes ((C!23968 0))(
  ( (C!23969 (val!14078 Int)) )
))
(declare-datatypes ((List!43591 0))(
  ( (Nil!43467) (Cons!43467 (h!48887 C!23968) (t!336990 List!43591)) )
))
(declare-fun lt!1456729 () List!43591)

(declare-fun lt!1456743 () List!43591)

(assert (=> b!4069548 (= res!1661491 (not (= lt!1456729 lt!1456743)))))

(declare-fun lt!1456753 () List!43591)

(declare-fun lt!1456728 () List!43591)

(declare-fun ++!11388 (List!43591 List!43591) List!43591)

(assert (=> b!4069548 (= lt!1456729 (++!11388 lt!1456753 lt!1456728))))

(declare-fun getSuffix!2490 (List!43591 List!43591) List!43591)

(assert (=> b!4069548 (= lt!1456728 (getSuffix!2490 lt!1456743 lt!1456753))))

(declare-fun e!2525634 () Bool)

(assert (=> b!4069548 e!2525634))

(declare-fun res!1661480 () Bool)

(assert (=> b!4069548 (=> (not res!1661480) (not e!2525634))))

(declare-fun isPrefix!4073 (List!43591 List!43591) Bool)

(assert (=> b!4069548 (= res!1661480 (isPrefix!4073 lt!1456743 lt!1456743))))

(declare-datatypes ((Unit!63034 0))(
  ( (Unit!63035) )
))
(declare-fun lt!1456736 () Unit!63034)

(declare-fun lemmaIsPrefixRefl!2640 (List!43591 List!43591) Unit!63034)

(assert (=> b!4069548 (= lt!1456736 (lemmaIsPrefixRefl!2640 lt!1456743 lt!1456743))))

(declare-fun res!1661478 () Bool)

(declare-fun e!2525638 () Bool)

(assert (=> start!383944 (=> (not res!1661478) (not e!2525638))))

(declare-datatypes ((LexerInterface!6575 0))(
  ( (LexerInterfaceExt!6572 (__x!26649 Int)) (Lexer!6573) )
))
(declare-fun thiss!21717 () LexerInterface!6575)

(get-info :version)

(assert (=> start!383944 (= res!1661478 ((_ is Lexer!6573) thiss!21717))))

(assert (=> start!383944 e!2525638))

(declare-fun e!2525637 () Bool)

(assert (=> start!383944 e!2525637))

(declare-datatypes ((IArray!26399 0))(
  ( (IArray!26400 (innerList!13257 List!43591)) )
))
(declare-datatypes ((Conc!13197 0))(
  ( (Node!13197 (left!32692 Conc!13197) (right!33022 Conc!13197) (csize!26624 Int) (cheight!13408 Int)) (Leaf!20397 (xs!16503 IArray!26399) (csize!26625 Int)) (Empty!13197) )
))
(declare-datatypes ((BalanceConc!25988 0))(
  ( (BalanceConc!25989 (c!702504 Conc!13197)) )
))
(declare-datatypes ((List!43592 0))(
  ( (Nil!43468) (Cons!43468 (h!48888 (_ BitVec 16)) (t!336991 List!43592)) )
))
(declare-datatypes ((TokenValue!7216 0))(
  ( (FloatLiteralValue!14432 (text!50957 List!43592)) (TokenValueExt!7215 (__x!26650 Int)) (Broken!36080 (value!219709 List!43592)) (Object!7339) (End!7216) (Def!7216) (Underscore!7216) (Match!7216) (Else!7216) (Error!7216) (Case!7216) (If!7216) (Extends!7216) (Abstract!7216) (Class!7216) (Val!7216) (DelimiterValue!14432 (del!7276 List!43592)) (KeywordValue!7222 (value!219710 List!43592)) (CommentValue!14432 (value!219711 List!43592)) (WhitespaceValue!14432 (value!219712 List!43592)) (IndentationValue!7216 (value!219713 List!43592)) (String!49797) (Int32!7216) (Broken!36081 (value!219714 List!43592)) (Boolean!7217) (Unit!63036) (OperatorValue!7219 (op!7276 List!43592)) (IdentifierValue!14432 (value!219715 List!43592)) (IdentifierValue!14433 (value!219716 List!43592)) (WhitespaceValue!14433 (value!219717 List!43592)) (True!14432) (False!14432) (Broken!36082 (value!219718 List!43592)) (Broken!36083 (value!219719 List!43592)) (True!14433) (RightBrace!7216) (RightBracket!7216) (Colon!7216) (Null!7216) (Comma!7216) (LeftBracket!7216) (False!14433) (LeftBrace!7216) (ImaginaryLiteralValue!7216 (text!50958 List!43592)) (StringLiteralValue!21648 (value!219720 List!43592)) (EOFValue!7216 (value!219721 List!43592)) (IdentValue!7216 (value!219722 List!43592)) (DelimiterValue!14433 (value!219723 List!43592)) (DedentValue!7216 (value!219724 List!43592)) (NewLineValue!7216 (value!219725 List!43592)) (IntegerValue!21648 (value!219726 (_ BitVec 32)) (text!50959 List!43592)) (IntegerValue!21649 (value!219727 Int) (text!50960 List!43592)) (Times!7216) (Or!7216) (Equal!7216) (Minus!7216) (Broken!36084 (value!219728 List!43592)) (And!7216) (Div!7216) (LessEqual!7216) (Mod!7216) (Concat!19107) (Not!7216) (Plus!7216) (SpaceValue!7216 (value!219729 List!43592)) (IntegerValue!21650 (value!219730 Int) (text!50961 List!43592)) (StringLiteralValue!21649 (text!50962 List!43592)) (FloatLiteralValue!14433 (text!50963 List!43592)) (BytesLiteralValue!7216 (value!219731 List!43592)) (CommentValue!14433 (value!219732 List!43592)) (StringLiteralValue!21650 (value!219733 List!43592)) (ErrorTokenValue!7216 (msg!7277 List!43592)) )
))
(declare-datatypes ((Regex!11891 0))(
  ( (ElementMatch!11891 (c!702505 C!23968)) (Concat!19108 (regOne!24294 Regex!11891) (regTwo!24294 Regex!11891)) (EmptyExpr!11891) (Star!11891 (reg!12220 Regex!11891)) (EmptyLang!11891) (Union!11891 (regOne!24295 Regex!11891) (regTwo!24295 Regex!11891)) )
))
(declare-datatypes ((String!49798 0))(
  ( (String!49799 (value!219734 String)) )
))
(declare-datatypes ((TokenValueInjection!13860 0))(
  ( (TokenValueInjection!13861 (toValue!9546 Int) (toChars!9405 Int)) )
))
(declare-datatypes ((Rule!13772 0))(
  ( (Rule!13773 (regex!6986 Regex!11891) (tag!7846 String!49798) (isSeparator!6986 Bool) (transformation!6986 TokenValueInjection!13860)) )
))
(declare-datatypes ((Token!13110 0))(
  ( (Token!13111 (value!219735 TokenValue!7216) (rule!10092 Rule!13772) (size!32497 Int) (originalCharacters!7586 List!43591)) )
))
(declare-fun token!484 () Token!13110)

(declare-fun e!2525625 () Bool)

(declare-fun inv!58109 (Token!13110) Bool)

(assert (=> start!383944 (and (inv!58109 token!484) e!2525625)))

(declare-fun e!2525640 () Bool)

(assert (=> start!383944 e!2525640))

(declare-fun e!2525639 () Bool)

(assert (=> start!383944 e!2525639))

(declare-fun e!2525620 () Bool)

(assert (=> start!383944 e!2525620))

(assert (=> start!383944 true))

(assert (=> start!383944 e!2525617))

(declare-fun e!2525618 () Bool)

(assert (=> start!383944 e!2525618))

(declare-fun b!4069549 () Bool)

(declare-fun res!1661492 () Bool)

(assert (=> b!4069549 (=> (not res!1661492) (not e!2525638))))

(declare-fun suffix!1299 () List!43591)

(declare-fun newSuffix!27 () List!43591)

(declare-fun size!32498 (List!43591) Int)

(assert (=> b!4069549 (= res!1661492 (>= (size!32498 suffix!1299) (size!32498 newSuffix!27)))))

(declare-fun b!4069550 () Bool)

(declare-fun res!1661497 () Bool)

(declare-fun e!2525627 () Bool)

(assert (=> b!4069550 (=> res!1661497 e!2525627)))

(declare-datatypes ((List!43593 0))(
  ( (Nil!43469) (Cons!43469 (h!48889 Rule!13772) (t!336992 List!43593)) )
))
(declare-fun rules!2999 () List!43593)

(declare-fun rulesValidInductive!2559 (LexerInterface!6575 List!43593) Bool)

(assert (=> b!4069550 (= res!1661497 (not (rulesValidInductive!2559 thiss!21717 rules!2999)))))

(declare-fun b!4069551 () Bool)

(declare-fun res!1661489 () Bool)

(assert (=> b!4069551 (=> res!1661489 e!2525627)))

(declare-fun contains!8652 (List!43593 Rule!13772) Bool)

(assert (=> b!4069551 (= res!1661489 (not (contains!8652 rules!2999 (rule!10092 token!484))))))

(declare-fun b!4069552 () Bool)

(declare-fun res!1661494 () Bool)

(assert (=> b!4069552 (=> (not res!1661494) (not e!2525638))))

(declare-fun isEmpty!25944 (List!43593) Bool)

(assert (=> b!4069552 (= res!1661494 (not (isEmpty!25944 rules!2999)))))

(declare-fun b!4069553 () Bool)

(declare-datatypes ((tuple2!42518 0))(
  ( (tuple2!42519 (_1!24393 Token!13110) (_2!24393 List!43591)) )
))
(declare-datatypes ((Option!9400 0))(
  ( (None!9399) (Some!9399 (v!39831 tuple2!42518)) )
))
(declare-fun lt!1456735 () Option!9400)

(declare-fun isEmpty!25945 (Option!9400) Bool)

(assert (=> b!4069553 (= e!2525627 (isEmpty!25945 lt!1456735))))

(declare-fun e!2525614 () Bool)

(assert (=> b!4069554 (= e!2525614 (and tp!1231619 tp!1231612))))

(declare-fun b!4069555 () Bool)

(declare-fun res!1661490 () Bool)

(assert (=> b!4069555 (=> (not res!1661490) (not e!2525638))))

(assert (=> b!4069555 (= res!1661490 (isPrefix!4073 newSuffix!27 suffix!1299))))

(declare-fun b!4069556 () Bool)

(declare-fun e!2525622 () Bool)

(declare-fun e!2525636 () Bool)

(assert (=> b!4069556 (= e!2525622 (not e!2525636))))

(declare-fun res!1661496 () Bool)

(assert (=> b!4069556 (=> res!1661496 e!2525636)))

(declare-fun lt!1456738 () List!43591)

(assert (=> b!4069556 (= res!1661496 (not (= lt!1456738 lt!1456743)))))

(declare-fun suffixResult!105 () List!43591)

(assert (=> b!4069556 (= lt!1456738 (++!11388 lt!1456753 suffixResult!105))))

(declare-fun lt!1456730 () Unit!63034)

(declare-fun lemmaInv!1195 (TokenValueInjection!13860) Unit!63034)

(assert (=> b!4069556 (= lt!1456730 (lemmaInv!1195 (transformation!6986 (rule!10092 token!484))))))

(declare-fun ruleValid!2916 (LexerInterface!6575 Rule!13772) Bool)

(assert (=> b!4069556 (ruleValid!2916 thiss!21717 (rule!10092 token!484))))

(declare-fun lt!1456744 () Unit!63034)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1986 (LexerInterface!6575 Rule!13772 List!43593) Unit!63034)

(assert (=> b!4069556 (= lt!1456744 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1986 thiss!21717 (rule!10092 token!484) rules!2999))))

(declare-fun b!4069557 () Bool)

(declare-fun tp_is_empty!20753 () Bool)

(declare-fun tp!1231617 () Bool)

(assert (=> b!4069557 (= e!2525620 (and tp_is_empty!20753 tp!1231617))))

(declare-fun b!4069558 () Bool)

(declare-fun e!2525630 () Bool)

(declare-fun e!2525632 () Bool)

(assert (=> b!4069558 (= e!2525630 e!2525632)))

(declare-fun res!1661487 () Bool)

(assert (=> b!4069558 (=> res!1661487 e!2525632)))

(declare-fun lt!1456755 () List!43591)

(declare-fun prefix!494 () List!43591)

(assert (=> b!4069558 (= res!1661487 (not (= lt!1456755 prefix!494)))))

(declare-fun lt!1456727 () List!43591)

(assert (=> b!4069558 (= lt!1456755 (++!11388 lt!1456753 lt!1456727))))

(assert (=> b!4069558 (= lt!1456727 (getSuffix!2490 prefix!494 lt!1456753))))

(assert (=> b!4069558 (isPrefix!4073 lt!1456753 prefix!494)))

(declare-fun lt!1456737 () Unit!63034)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!637 (List!43591 List!43591 List!43591) Unit!63034)

(assert (=> b!4069558 (= lt!1456737 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!637 prefix!494 lt!1456753 lt!1456743))))

(declare-fun b!4069559 () Bool)

(declare-fun tp!1231615 () Bool)

(assert (=> b!4069559 (= e!2525618 (and tp_is_empty!20753 tp!1231615))))

(declare-fun b!4069560 () Bool)

(declare-fun tp!1231611 () Bool)

(assert (=> b!4069560 (= e!2525640 (and tp_is_empty!20753 tp!1231611))))

(declare-fun b!4069561 () Bool)

(declare-fun res!1661479 () Bool)

(assert (=> b!4069561 (=> (not res!1661479) (not e!2525634))))

(declare-fun lt!1456758 () TokenValue!7216)

(assert (=> b!4069561 (= res!1661479 (= (value!219735 token!484) lt!1456758))))

(declare-fun b!4069562 () Bool)

(declare-fun e!2525619 () Bool)

(declare-fun tp!1231610 () Bool)

(declare-fun inv!21 (TokenValue!7216) Bool)

(assert (=> b!4069562 (= e!2525625 (and (inv!21 (value!219735 token!484)) e!2525619 tp!1231610))))

(declare-fun e!2525631 () Bool)

(assert (=> b!4069563 (= e!2525631 (and tp!1231613 tp!1231616))))

(declare-fun tp!1231608 () Bool)

(declare-fun b!4069564 () Bool)

(declare-fun inv!58106 (String!49798) Bool)

(declare-fun inv!58110 (TokenValueInjection!13860) Bool)

(assert (=> b!4069564 (= e!2525619 (and tp!1231608 (inv!58106 (tag!7846 (rule!10092 token!484))) (inv!58110 (transformation!6986 (rule!10092 token!484))) e!2525631))))

(declare-fun lt!1456741 () Int)

(declare-fun b!4069565 () Bool)

(assert (=> b!4069565 (= e!2525634 (and (= (size!32497 token!484) lt!1456741) (= (originalCharacters!7586 token!484) lt!1456753)))))

(declare-fun b!4069566 () Bool)

(declare-fun tp!1231620 () Bool)

(assert (=> b!4069566 (= e!2525639 (and tp_is_empty!20753 tp!1231620))))

(declare-fun b!4069567 () Bool)

(declare-fun e!2525633 () Bool)

(assert (=> b!4069567 (= e!2525632 e!2525633)))

(declare-fun res!1661483 () Bool)

(assert (=> b!4069567 (=> res!1661483 e!2525633)))

(declare-fun lt!1456733 () List!43591)

(declare-fun lt!1456734 () List!43591)

(assert (=> b!4069567 (= res!1661483 (or (not (= lt!1456743 lt!1456733)) (not (= lt!1456743 lt!1456734))))))

(assert (=> b!4069567 (= lt!1456733 lt!1456734)))

(declare-fun lt!1456747 () List!43591)

(assert (=> b!4069567 (= lt!1456734 (++!11388 lt!1456753 lt!1456747))))

(assert (=> b!4069567 (= lt!1456733 (++!11388 lt!1456755 suffix!1299))))

(assert (=> b!4069567 (= lt!1456747 (++!11388 lt!1456727 suffix!1299))))

(declare-fun lt!1456749 () Unit!63034)

(declare-fun lemmaConcatAssociativity!2690 (List!43591 List!43591 List!43591) Unit!63034)

(assert (=> b!4069567 (= lt!1456749 (lemmaConcatAssociativity!2690 lt!1456753 lt!1456727 suffix!1299))))

(declare-fun b!4069568 () Bool)

(declare-fun tp!1231614 () Bool)

(assert (=> b!4069568 (= e!2525637 (and tp_is_empty!20753 tp!1231614))))

(declare-fun b!4069569 () Bool)

(declare-fun e!2525621 () Bool)

(assert (=> b!4069569 (= e!2525621 e!2525622)))

(declare-fun res!1661485 () Bool)

(assert (=> b!4069569 (=> (not res!1661485) (not e!2525622))))

(declare-fun lt!1456732 () Option!9400)

(declare-fun maxPrefix!3873 (LexerInterface!6575 List!43593 List!43591) Option!9400)

(assert (=> b!4069569 (= res!1661485 (= (maxPrefix!3873 thiss!21717 rules!2999 lt!1456743) lt!1456732))))

(declare-fun lt!1456731 () tuple2!42518)

(assert (=> b!4069569 (= lt!1456732 (Some!9399 lt!1456731))))

(assert (=> b!4069569 (= lt!1456731 (tuple2!42519 token!484 suffixResult!105))))

(assert (=> b!4069569 (= lt!1456743 (++!11388 prefix!494 suffix!1299))))

(declare-fun b!4069570 () Bool)

(declare-fun res!1661477 () Bool)

(assert (=> b!4069570 (=> (not res!1661477) (not e!2525638))))

(declare-fun rulesInvariant!5918 (LexerInterface!6575 List!43593) Bool)

(assert (=> b!4069570 (= res!1661477 (rulesInvariant!5918 thiss!21717 rules!2999))))

(declare-fun b!4069571 () Bool)

(assert (=> b!4069571 (= e!2525635 e!2525627)))

(declare-fun res!1661493 () Bool)

(assert (=> b!4069571 (=> res!1661493 e!2525627)))

(assert (=> b!4069571 (= res!1661493 ((_ is Some!9399) lt!1456735))))

(declare-fun lt!1456750 () List!43591)

(assert (=> b!4069571 (= lt!1456735 (maxPrefix!3873 thiss!21717 rules!2999 lt!1456750))))

(declare-fun lt!1456745 () Token!13110)

(assert (=> b!4069571 (and (= suffixResult!105 lt!1456728) (= lt!1456731 (tuple2!42519 lt!1456745 lt!1456728)))))

(declare-fun lt!1456742 () Unit!63034)

(declare-fun lemmaSamePrefixThenSameSuffix!2234 (List!43591 List!43591 List!43591 List!43591 List!43591) Unit!63034)

(assert (=> b!4069571 (= lt!1456742 (lemmaSamePrefixThenSameSuffix!2234 lt!1456753 suffixResult!105 lt!1456753 lt!1456728 lt!1456743))))

(assert (=> b!4069571 (isPrefix!4073 lt!1456753 lt!1456729)))

(declare-fun lt!1456752 () Unit!63034)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2908 (List!43591 List!43591) Unit!63034)

(assert (=> b!4069571 (= lt!1456752 (lemmaConcatTwoListThenFirstIsPrefix!2908 lt!1456753 lt!1456728))))

(declare-fun tp!1231609 () Bool)

(declare-fun b!4069572 () Bool)

(assert (=> b!4069572 (= e!2525629 (and tp!1231609 (inv!58106 (tag!7846 (h!48889 rules!2999))) (inv!58110 (transformation!6986 (h!48889 rules!2999))) e!2525614))))

(declare-fun b!4069573 () Bool)

(declare-fun e!2525628 () Bool)

(assert (=> b!4069573 (= e!2525633 e!2525628)))

(declare-fun res!1661486 () Bool)

(assert (=> b!4069573 (=> res!1661486 e!2525628)))

(declare-fun lt!1456726 () Option!9400)

(assert (=> b!4069573 (= res!1661486 (not (= lt!1456726 lt!1456732)))))

(assert (=> b!4069573 (= lt!1456726 (Some!9399 (tuple2!42519 lt!1456745 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2885 (LexerInterface!6575 Rule!13772 List!43591) Option!9400)

(assert (=> b!4069573 (= lt!1456726 (maxPrefixOneRule!2885 thiss!21717 (rule!10092 token!484) lt!1456743))))

(assert (=> b!4069573 (= lt!1456745 (Token!13111 lt!1456758 (rule!10092 token!484) lt!1456741 lt!1456753))))

(declare-fun apply!10175 (TokenValueInjection!13860 BalanceConc!25988) TokenValue!7216)

(declare-fun seqFromList!5203 (List!43591) BalanceConc!25988)

(assert (=> b!4069573 (= lt!1456758 (apply!10175 (transformation!6986 (rule!10092 token!484)) (seqFromList!5203 lt!1456753)))))

(declare-fun lt!1456751 () Unit!63034)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1691 (LexerInterface!6575 List!43593 List!43591 List!43591 List!43591 Rule!13772) Unit!63034)

(assert (=> b!4069573 (= lt!1456751 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1691 thiss!21717 rules!2999 lt!1456753 lt!1456743 suffixResult!105 (rule!10092 token!484)))))

(assert (=> b!4069573 (= lt!1456747 suffixResult!105)))

(declare-fun lt!1456739 () Unit!63034)

(assert (=> b!4069573 (= lt!1456739 (lemmaSamePrefixThenSameSuffix!2234 lt!1456753 lt!1456747 lt!1456753 suffixResult!105 lt!1456743))))

(assert (=> b!4069573 (isPrefix!4073 lt!1456753 lt!1456734)))

(declare-fun lt!1456757 () Unit!63034)

(assert (=> b!4069573 (= lt!1456757 (lemmaConcatTwoListThenFirstIsPrefix!2908 lt!1456753 lt!1456747))))

(declare-fun b!4069574 () Bool)

(declare-fun e!2525623 () Bool)

(assert (=> b!4069574 (= e!2525623 e!2525621)))

(declare-fun res!1661481 () Bool)

(assert (=> b!4069574 (=> (not res!1661481) (not e!2525621))))

(declare-fun lt!1456756 () List!43591)

(assert (=> b!4069574 (= res!1661481 (= lt!1456756 lt!1456750))))

(assert (=> b!4069574 (= lt!1456750 (++!11388 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43591)

(assert (=> b!4069574 (= lt!1456756 (++!11388 lt!1456753 newSuffixResult!27))))

(declare-fun b!4069575 () Bool)

(declare-fun res!1661484 () Bool)

(assert (=> b!4069575 (=> (not res!1661484) (not e!2525634))))

(assert (=> b!4069575 (= res!1661484 (= (size!32497 token!484) (size!32498 (originalCharacters!7586 token!484))))))

(declare-fun b!4069576 () Bool)

(assert (=> b!4069576 (= e!2525638 e!2525623)))

(declare-fun res!1661488 () Bool)

(assert (=> b!4069576 (=> (not res!1661488) (not e!2525623))))

(declare-fun lt!1456754 () Int)

(assert (=> b!4069576 (= res!1661488 (>= lt!1456754 lt!1456741))))

(assert (=> b!4069576 (= lt!1456741 (size!32498 lt!1456753))))

(assert (=> b!4069576 (= lt!1456754 (size!32498 prefix!494))))

(declare-fun list!16208 (BalanceConc!25988) List!43591)

(declare-fun charsOf!4802 (Token!13110) BalanceConc!25988)

(assert (=> b!4069576 (= lt!1456753 (list!16208 (charsOf!4802 token!484)))))

(declare-fun b!4069577 () Bool)

(assert (=> b!4069577 (= e!2525636 e!2525630)))

(declare-fun res!1661495 () Bool)

(assert (=> b!4069577 (=> res!1661495 e!2525630)))

(assert (=> b!4069577 (= res!1661495 (not (isPrefix!4073 lt!1456753 lt!1456743)))))

(assert (=> b!4069577 (isPrefix!4073 prefix!494 lt!1456743)))

(declare-fun lt!1456759 () Unit!63034)

(assert (=> b!4069577 (= lt!1456759 (lemmaConcatTwoListThenFirstIsPrefix!2908 prefix!494 suffix!1299))))

(assert (=> b!4069577 (isPrefix!4073 lt!1456753 lt!1456738)))

(declare-fun lt!1456746 () Unit!63034)

(assert (=> b!4069577 (= lt!1456746 (lemmaConcatTwoListThenFirstIsPrefix!2908 lt!1456753 suffixResult!105))))

(declare-fun b!4069578 () Bool)

(assert (=> b!4069578 (= e!2525628 e!2525616)))

(declare-fun res!1661482 () Bool)

(assert (=> b!4069578 (=> res!1661482 e!2525616)))

(declare-fun matchR!5844 (Regex!11891 List!43591) Bool)

(assert (=> b!4069578 (= res!1661482 (not (matchR!5844 (regex!6986 (rule!10092 token!484)) lt!1456753)))))

(assert (=> b!4069578 (isPrefix!4073 lt!1456753 lt!1456750)))

(declare-fun lt!1456740 () Unit!63034)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!866 (List!43591 List!43591 List!43591) Unit!63034)

(assert (=> b!4069578 (= lt!1456740 (lemmaPrefixStaysPrefixWhenAddingToSuffix!866 lt!1456753 prefix!494 newSuffix!27))))

(declare-fun lt!1456748 () Unit!63034)

(assert (=> b!4069578 (= lt!1456748 (lemmaPrefixStaysPrefixWhenAddingToSuffix!866 lt!1456753 prefix!494 suffix!1299))))

(assert (= (and start!383944 res!1661478) b!4069552))

(assert (= (and b!4069552 res!1661494) b!4069570))

(assert (= (and b!4069570 res!1661477) b!4069549))

(assert (= (and b!4069549 res!1661492) b!4069555))

(assert (= (and b!4069555 res!1661490) b!4069576))

(assert (= (and b!4069576 res!1661488) b!4069574))

(assert (= (and b!4069574 res!1661481) b!4069569))

(assert (= (and b!4069569 res!1661485) b!4069556))

(assert (= (and b!4069556 (not res!1661496)) b!4069577))

(assert (= (and b!4069577 (not res!1661495)) b!4069558))

(assert (= (and b!4069558 (not res!1661487)) b!4069567))

(assert (= (and b!4069567 (not res!1661483)) b!4069573))

(assert (= (and b!4069573 (not res!1661486)) b!4069578))

(assert (= (and b!4069578 (not res!1661482)) b!4069548))

(assert (= (and b!4069548 res!1661480) b!4069561))

(assert (= (and b!4069561 res!1661479) b!4069575))

(assert (= (and b!4069575 res!1661484) b!4069565))

(assert (= (and b!4069548 (not res!1661491)) b!4069571))

(assert (= (and b!4069571 (not res!1661493)) b!4069550))

(assert (= (and b!4069550 (not res!1661497)) b!4069551))

(assert (= (and b!4069551 (not res!1661489)) b!4069553))

(assert (= (and start!383944 ((_ is Cons!43467) prefix!494)) b!4069568))

(assert (= b!4069564 b!4069563))

(assert (= b!4069562 b!4069564))

(assert (= start!383944 b!4069562))

(assert (= (and start!383944 ((_ is Cons!43467) suffixResult!105)) b!4069560))

(assert (= (and start!383944 ((_ is Cons!43467) suffix!1299)) b!4069566))

(assert (= (and start!383944 ((_ is Cons!43467) newSuffix!27)) b!4069557))

(assert (= b!4069572 b!4069554))

(assert (= b!4069547 b!4069572))

(assert (= (and start!383944 ((_ is Cons!43469) rules!2999)) b!4069547))

(assert (= (and start!383944 ((_ is Cons!43467) newSuffixResult!27)) b!4069559))

(declare-fun m!4678395 () Bool)

(assert (=> b!4069558 m!4678395))

(declare-fun m!4678397 () Bool)

(assert (=> b!4069558 m!4678397))

(declare-fun m!4678399 () Bool)

(assert (=> b!4069558 m!4678399))

(declare-fun m!4678401 () Bool)

(assert (=> b!4069558 m!4678401))

(declare-fun m!4678403 () Bool)

(assert (=> b!4069573 m!4678403))

(declare-fun m!4678405 () Bool)

(assert (=> b!4069573 m!4678405))

(declare-fun m!4678407 () Bool)

(assert (=> b!4069573 m!4678407))

(assert (=> b!4069573 m!4678403))

(declare-fun m!4678409 () Bool)

(assert (=> b!4069573 m!4678409))

(declare-fun m!4678411 () Bool)

(assert (=> b!4069573 m!4678411))

(declare-fun m!4678413 () Bool)

(assert (=> b!4069573 m!4678413))

(declare-fun m!4678415 () Bool)

(assert (=> b!4069573 m!4678415))

(declare-fun m!4678417 () Bool)

(assert (=> b!4069570 m!4678417))

(declare-fun m!4678419 () Bool)

(assert (=> b!4069550 m!4678419))

(declare-fun m!4678421 () Bool)

(assert (=> b!4069548 m!4678421))

(declare-fun m!4678423 () Bool)

(assert (=> b!4069548 m!4678423))

(declare-fun m!4678425 () Bool)

(assert (=> b!4069548 m!4678425))

(declare-fun m!4678427 () Bool)

(assert (=> b!4069548 m!4678427))

(declare-fun m!4678429 () Bool)

(assert (=> b!4069552 m!4678429))

(declare-fun m!4678431 () Bool)

(assert (=> b!4069569 m!4678431))

(declare-fun m!4678433 () Bool)

(assert (=> b!4069569 m!4678433))

(declare-fun m!4678435 () Bool)

(assert (=> b!4069556 m!4678435))

(declare-fun m!4678437 () Bool)

(assert (=> b!4069556 m!4678437))

(declare-fun m!4678439 () Bool)

(assert (=> b!4069556 m!4678439))

(declare-fun m!4678441 () Bool)

(assert (=> b!4069556 m!4678441))

(declare-fun m!4678443 () Bool)

(assert (=> b!4069576 m!4678443))

(declare-fun m!4678445 () Bool)

(assert (=> b!4069576 m!4678445))

(declare-fun m!4678447 () Bool)

(assert (=> b!4069576 m!4678447))

(assert (=> b!4069576 m!4678447))

(declare-fun m!4678449 () Bool)

(assert (=> b!4069576 m!4678449))

(declare-fun m!4678451 () Bool)

(assert (=> b!4069577 m!4678451))

(declare-fun m!4678453 () Bool)

(assert (=> b!4069577 m!4678453))

(declare-fun m!4678455 () Bool)

(assert (=> b!4069577 m!4678455))

(declare-fun m!4678457 () Bool)

(assert (=> b!4069577 m!4678457))

(declare-fun m!4678459 () Bool)

(assert (=> b!4069577 m!4678459))

(declare-fun m!4678461 () Bool)

(assert (=> b!4069553 m!4678461))

(declare-fun m!4678463 () Bool)

(assert (=> b!4069564 m!4678463))

(declare-fun m!4678465 () Bool)

(assert (=> b!4069564 m!4678465))

(declare-fun m!4678467 () Bool)

(assert (=> b!4069571 m!4678467))

(declare-fun m!4678469 () Bool)

(assert (=> b!4069571 m!4678469))

(declare-fun m!4678471 () Bool)

(assert (=> b!4069571 m!4678471))

(declare-fun m!4678473 () Bool)

(assert (=> b!4069571 m!4678473))

(declare-fun m!4678475 () Bool)

(assert (=> b!4069567 m!4678475))

(declare-fun m!4678477 () Bool)

(assert (=> b!4069567 m!4678477))

(declare-fun m!4678479 () Bool)

(assert (=> b!4069567 m!4678479))

(declare-fun m!4678481 () Bool)

(assert (=> b!4069567 m!4678481))

(declare-fun m!4678483 () Bool)

(assert (=> b!4069575 m!4678483))

(declare-fun m!4678485 () Bool)

(assert (=> b!4069551 m!4678485))

(declare-fun m!4678487 () Bool)

(assert (=> b!4069574 m!4678487))

(declare-fun m!4678489 () Bool)

(assert (=> b!4069574 m!4678489))

(declare-fun m!4678491 () Bool)

(assert (=> b!4069572 m!4678491))

(declare-fun m!4678493 () Bool)

(assert (=> b!4069572 m!4678493))

(declare-fun m!4678495 () Bool)

(assert (=> b!4069562 m!4678495))

(declare-fun m!4678497 () Bool)

(assert (=> b!4069549 m!4678497))

(declare-fun m!4678499 () Bool)

(assert (=> b!4069549 m!4678499))

(declare-fun m!4678501 () Bool)

(assert (=> b!4069555 m!4678501))

(declare-fun m!4678503 () Bool)

(assert (=> b!4069578 m!4678503))

(declare-fun m!4678505 () Bool)

(assert (=> b!4069578 m!4678505))

(declare-fun m!4678507 () Bool)

(assert (=> b!4069578 m!4678507))

(declare-fun m!4678509 () Bool)

(assert (=> b!4069578 m!4678509))

(declare-fun m!4678511 () Bool)

(assert (=> start!383944 m!4678511))

(check-sat (not b!4069559) (not b_next!113913) b_and!312743 (not b!4069571) (not b_next!113915) (not b!4069547) b_and!312739 (not b!4069548) (not b!4069575) (not start!383944) (not b!4069568) (not b!4069558) (not b!4069578) (not b!4069556) (not b!4069566) (not b!4069573) (not b!4069570) (not b!4069551) (not b!4069553) (not b!4069569) (not b!4069576) (not b!4069564) b_and!312745 (not b!4069549) (not b!4069552) (not b!4069557) (not b_next!113917) (not b!4069567) (not b!4069577) (not b_next!113919) b_and!312741 (not b!4069555) (not b!4069574) (not b!4069562) (not b!4069572) tp_is_empty!20753 (not b!4069550) (not b!4069560))
(check-sat (not b_next!113913) b_and!312743 b_and!312745 (not b_next!113917) (not b_next!113915) b_and!312739 (not b_next!113919) b_and!312741)
(get-model)

(declare-fun d!1209628 () Bool)

(assert (=> d!1209628 (= (isEmpty!25945 lt!1456735) (not ((_ is Some!9399) lt!1456735)))))

(assert (=> b!4069553 d!1209628))

(declare-fun d!1209630 () Bool)

(declare-fun e!2525665 () Bool)

(assert (=> d!1209630 e!2525665))

(declare-fun res!1661518 () Bool)

(assert (=> d!1209630 (=> (not res!1661518) (not e!2525665))))

(declare-fun lt!1456772 () List!43591)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6643 (List!43591) (InoxSet C!23968))

(assert (=> d!1209630 (= res!1661518 (= (content!6643 lt!1456772) ((_ map or) (content!6643 prefix!494) (content!6643 newSuffix!27))))))

(declare-fun e!2525666 () List!43591)

(assert (=> d!1209630 (= lt!1456772 e!2525666)))

(declare-fun c!702518 () Bool)

(assert (=> d!1209630 (= c!702518 ((_ is Nil!43467) prefix!494))))

(assert (=> d!1209630 (= (++!11388 prefix!494 newSuffix!27) lt!1456772)))

(declare-fun b!4069620 () Bool)

(assert (=> b!4069620 (= e!2525666 newSuffix!27)))

(declare-fun b!4069621 () Bool)

(assert (=> b!4069621 (= e!2525666 (Cons!43467 (h!48887 prefix!494) (++!11388 (t!336990 prefix!494) newSuffix!27)))))

(declare-fun b!4069622 () Bool)

(declare-fun res!1661517 () Bool)

(assert (=> b!4069622 (=> (not res!1661517) (not e!2525665))))

(assert (=> b!4069622 (= res!1661517 (= (size!32498 lt!1456772) (+ (size!32498 prefix!494) (size!32498 newSuffix!27))))))

(declare-fun b!4069623 () Bool)

(assert (=> b!4069623 (= e!2525665 (or (not (= newSuffix!27 Nil!43467)) (= lt!1456772 prefix!494)))))

(assert (= (and d!1209630 c!702518) b!4069620))

(assert (= (and d!1209630 (not c!702518)) b!4069621))

(assert (= (and d!1209630 res!1661518) b!4069622))

(assert (= (and b!4069622 res!1661517) b!4069623))

(declare-fun m!4678549 () Bool)

(assert (=> d!1209630 m!4678549))

(declare-fun m!4678551 () Bool)

(assert (=> d!1209630 m!4678551))

(declare-fun m!4678553 () Bool)

(assert (=> d!1209630 m!4678553))

(declare-fun m!4678555 () Bool)

(assert (=> b!4069621 m!4678555))

(declare-fun m!4678557 () Bool)

(assert (=> b!4069622 m!4678557))

(assert (=> b!4069622 m!4678445))

(assert (=> b!4069622 m!4678499))

(assert (=> b!4069574 d!1209630))

(declare-fun d!1209638 () Bool)

(declare-fun e!2525667 () Bool)

(assert (=> d!1209638 e!2525667))

(declare-fun res!1661520 () Bool)

(assert (=> d!1209638 (=> (not res!1661520) (not e!2525667))))

(declare-fun lt!1456773 () List!43591)

(assert (=> d!1209638 (= res!1661520 (= (content!6643 lt!1456773) ((_ map or) (content!6643 lt!1456753) (content!6643 newSuffixResult!27))))))

(declare-fun e!2525668 () List!43591)

(assert (=> d!1209638 (= lt!1456773 e!2525668)))

(declare-fun c!702519 () Bool)

(assert (=> d!1209638 (= c!702519 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209638 (= (++!11388 lt!1456753 newSuffixResult!27) lt!1456773)))

(declare-fun b!4069624 () Bool)

(assert (=> b!4069624 (= e!2525668 newSuffixResult!27)))

(declare-fun b!4069625 () Bool)

(assert (=> b!4069625 (= e!2525668 (Cons!43467 (h!48887 lt!1456753) (++!11388 (t!336990 lt!1456753) newSuffixResult!27)))))

(declare-fun b!4069626 () Bool)

(declare-fun res!1661519 () Bool)

(assert (=> b!4069626 (=> (not res!1661519) (not e!2525667))))

(assert (=> b!4069626 (= res!1661519 (= (size!32498 lt!1456773) (+ (size!32498 lt!1456753) (size!32498 newSuffixResult!27))))))

(declare-fun b!4069627 () Bool)

(assert (=> b!4069627 (= e!2525667 (or (not (= newSuffixResult!27 Nil!43467)) (= lt!1456773 lt!1456753)))))

(assert (= (and d!1209638 c!702519) b!4069624))

(assert (= (and d!1209638 (not c!702519)) b!4069625))

(assert (= (and d!1209638 res!1661520) b!4069626))

(assert (= (and b!4069626 res!1661519) b!4069627))

(declare-fun m!4678559 () Bool)

(assert (=> d!1209638 m!4678559))

(declare-fun m!4678561 () Bool)

(assert (=> d!1209638 m!4678561))

(declare-fun m!4678563 () Bool)

(assert (=> d!1209638 m!4678563))

(declare-fun m!4678565 () Bool)

(assert (=> b!4069625 m!4678565))

(declare-fun m!4678567 () Bool)

(assert (=> b!4069626 m!4678567))

(assert (=> b!4069626 m!4678443))

(declare-fun m!4678569 () Bool)

(assert (=> b!4069626 m!4678569))

(assert (=> b!4069574 d!1209638))

(declare-fun d!1209640 () Bool)

(assert (=> d!1209640 (= (isEmpty!25944 rules!2999) ((_ is Nil!43469) rules!2999))))

(assert (=> b!4069552 d!1209640))

(declare-fun d!1209642 () Bool)

(assert (=> d!1209642 (isPrefix!4073 lt!1456753 (++!11388 lt!1456753 lt!1456747))))

(declare-fun lt!1456779 () Unit!63034)

(declare-fun choose!24822 (List!43591 List!43591) Unit!63034)

(assert (=> d!1209642 (= lt!1456779 (choose!24822 lt!1456753 lt!1456747))))

(assert (=> d!1209642 (= (lemmaConcatTwoListThenFirstIsPrefix!2908 lt!1456753 lt!1456747) lt!1456779)))

(declare-fun bs!592520 () Bool)

(assert (= bs!592520 d!1209642))

(assert (=> bs!592520 m!4678475))

(assert (=> bs!592520 m!4678475))

(declare-fun m!4678585 () Bool)

(assert (=> bs!592520 m!4678585))

(declare-fun m!4678587 () Bool)

(assert (=> bs!592520 m!4678587))

(assert (=> b!4069573 d!1209642))

(declare-fun d!1209648 () Bool)

(assert (=> d!1209648 (= lt!1456747 suffixResult!105)))

(declare-fun lt!1456785 () Unit!63034)

(declare-fun choose!24823 (List!43591 List!43591 List!43591 List!43591 List!43591) Unit!63034)

(assert (=> d!1209648 (= lt!1456785 (choose!24823 lt!1456753 lt!1456747 lt!1456753 suffixResult!105 lt!1456743))))

(assert (=> d!1209648 (isPrefix!4073 lt!1456753 lt!1456743)))

(assert (=> d!1209648 (= (lemmaSamePrefixThenSameSuffix!2234 lt!1456753 lt!1456747 lt!1456753 suffixResult!105 lt!1456743) lt!1456785)))

(declare-fun bs!592522 () Bool)

(assert (= bs!592522 d!1209648))

(declare-fun m!4678593 () Bool)

(assert (=> bs!592522 m!4678593))

(assert (=> bs!592522 m!4678451))

(assert (=> b!4069573 d!1209648))

(declare-fun b!4069726 () Bool)

(declare-fun e!2525720 () Bool)

(declare-fun lt!1456830 () Option!9400)

(declare-fun get!14255 (Option!9400) tuple2!42518)

(assert (=> b!4069726 (= e!2525720 (= (size!32497 (_1!24393 (get!14255 lt!1456830))) (size!32498 (originalCharacters!7586 (_1!24393 (get!14255 lt!1456830))))))))

(declare-fun b!4069727 () Bool)

(declare-fun e!2525722 () Bool)

(declare-datatypes ((tuple2!42522 0))(
  ( (tuple2!42523 (_1!24395 List!43591) (_2!24395 List!43591)) )
))
(declare-fun findLongestMatchInner!1421 (Regex!11891 List!43591 Int List!43591 List!43591 Int) tuple2!42522)

(assert (=> b!4069727 (= e!2525722 (matchR!5844 (regex!6986 (rule!10092 token!484)) (_1!24395 (findLongestMatchInner!1421 (regex!6986 (rule!10092 token!484)) Nil!43467 (size!32498 Nil!43467) lt!1456743 lt!1456743 (size!32498 lt!1456743)))))))

(declare-fun b!4069728 () Bool)

(declare-fun e!2525719 () Option!9400)

(declare-fun lt!1456831 () tuple2!42522)

(declare-fun size!32500 (BalanceConc!25988) Int)

(assert (=> b!4069728 (= e!2525719 (Some!9399 (tuple2!42519 (Token!13111 (apply!10175 (transformation!6986 (rule!10092 token!484)) (seqFromList!5203 (_1!24395 lt!1456831))) (rule!10092 token!484) (size!32500 (seqFromList!5203 (_1!24395 lt!1456831))) (_1!24395 lt!1456831)) (_2!24395 lt!1456831))))))

(declare-fun lt!1456833 () Unit!63034)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1394 (Regex!11891 List!43591) Unit!63034)

(assert (=> b!4069728 (= lt!1456833 (longestMatchIsAcceptedByMatchOrIsEmpty!1394 (regex!6986 (rule!10092 token!484)) lt!1456743))))

(declare-fun res!1661601 () Bool)

(declare-fun isEmpty!25947 (List!43591) Bool)

(assert (=> b!4069728 (= res!1661601 (isEmpty!25947 (_1!24395 (findLongestMatchInner!1421 (regex!6986 (rule!10092 token!484)) Nil!43467 (size!32498 Nil!43467) lt!1456743 lt!1456743 (size!32498 lt!1456743)))))))

(assert (=> b!4069728 (=> res!1661601 e!2525722)))

(assert (=> b!4069728 e!2525722))

(declare-fun lt!1456832 () Unit!63034)

(assert (=> b!4069728 (= lt!1456832 lt!1456833)))

(declare-fun lt!1456829 () Unit!63034)

(declare-fun lemmaSemiInverse!1953 (TokenValueInjection!13860 BalanceConc!25988) Unit!63034)

(assert (=> b!4069728 (= lt!1456829 (lemmaSemiInverse!1953 (transformation!6986 (rule!10092 token!484)) (seqFromList!5203 (_1!24395 lt!1456831))))))

(declare-fun b!4069729 () Bool)

(declare-fun e!2525721 () Bool)

(assert (=> b!4069729 (= e!2525721 e!2525720)))

(declare-fun res!1661604 () Bool)

(assert (=> b!4069729 (=> (not res!1661604) (not e!2525720))))

(assert (=> b!4069729 (= res!1661604 (matchR!5844 (regex!6986 (rule!10092 token!484)) (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456830))))))))

(declare-fun b!4069730 () Bool)

(declare-fun res!1661605 () Bool)

(assert (=> b!4069730 (=> (not res!1661605) (not e!2525720))))

(assert (=> b!4069730 (= res!1661605 (= (++!11388 (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456830)))) (_2!24393 (get!14255 lt!1456830))) lt!1456743))))

(declare-fun b!4069731 () Bool)

(declare-fun res!1661606 () Bool)

(assert (=> b!4069731 (=> (not res!1661606) (not e!2525720))))

(assert (=> b!4069731 (= res!1661606 (= (value!219735 (_1!24393 (get!14255 lt!1456830))) (apply!10175 (transformation!6986 (rule!10092 (_1!24393 (get!14255 lt!1456830)))) (seqFromList!5203 (originalCharacters!7586 (_1!24393 (get!14255 lt!1456830)))))))))

(declare-fun d!1209652 () Bool)

(assert (=> d!1209652 e!2525721))

(declare-fun res!1661602 () Bool)

(assert (=> d!1209652 (=> res!1661602 e!2525721)))

(assert (=> d!1209652 (= res!1661602 (isEmpty!25945 lt!1456830))))

(assert (=> d!1209652 (= lt!1456830 e!2525719)))

(declare-fun c!702529 () Bool)

(assert (=> d!1209652 (= c!702529 (isEmpty!25947 (_1!24395 lt!1456831)))))

(declare-fun findLongestMatch!1334 (Regex!11891 List!43591) tuple2!42522)

(assert (=> d!1209652 (= lt!1456831 (findLongestMatch!1334 (regex!6986 (rule!10092 token!484)) lt!1456743))))

(assert (=> d!1209652 (ruleValid!2916 thiss!21717 (rule!10092 token!484))))

(assert (=> d!1209652 (= (maxPrefixOneRule!2885 thiss!21717 (rule!10092 token!484) lt!1456743) lt!1456830)))

(declare-fun b!4069732 () Bool)

(declare-fun res!1661603 () Bool)

(assert (=> b!4069732 (=> (not res!1661603) (not e!2525720))))

(assert (=> b!4069732 (= res!1661603 (= (rule!10092 (_1!24393 (get!14255 lt!1456830))) (rule!10092 token!484)))))

(declare-fun b!4069733 () Bool)

(assert (=> b!4069733 (= e!2525719 None!9399)))

(declare-fun b!4069734 () Bool)

(declare-fun res!1661607 () Bool)

(assert (=> b!4069734 (=> (not res!1661607) (not e!2525720))))

(assert (=> b!4069734 (= res!1661607 (< (size!32498 (_2!24393 (get!14255 lt!1456830))) (size!32498 lt!1456743)))))

(assert (= (and d!1209652 c!702529) b!4069733))

(assert (= (and d!1209652 (not c!702529)) b!4069728))

(assert (= (and b!4069728 (not res!1661601)) b!4069727))

(assert (= (and d!1209652 (not res!1661602)) b!4069729))

(assert (= (and b!4069729 res!1661604) b!4069730))

(assert (= (and b!4069730 res!1661605) b!4069734))

(assert (= (and b!4069734 res!1661607) b!4069732))

(assert (= (and b!4069732 res!1661603) b!4069731))

(assert (= (and b!4069731 res!1661606) b!4069726))

(declare-fun m!4678681 () Bool)

(assert (=> b!4069728 m!4678681))

(declare-fun m!4678683 () Bool)

(assert (=> b!4069728 m!4678683))

(assert (=> b!4069728 m!4678681))

(declare-fun m!4678685 () Bool)

(assert (=> b!4069728 m!4678685))

(declare-fun m!4678687 () Bool)

(assert (=> b!4069728 m!4678687))

(assert (=> b!4069728 m!4678681))

(declare-fun m!4678689 () Bool)

(assert (=> b!4069728 m!4678689))

(declare-fun m!4678691 () Bool)

(assert (=> b!4069728 m!4678691))

(assert (=> b!4069728 m!4678681))

(declare-fun m!4678693 () Bool)

(assert (=> b!4069728 m!4678693))

(declare-fun m!4678695 () Bool)

(assert (=> b!4069728 m!4678695))

(assert (=> b!4069728 m!4678689))

(declare-fun m!4678697 () Bool)

(assert (=> b!4069728 m!4678697))

(assert (=> b!4069728 m!4678695))

(declare-fun m!4678699 () Bool)

(assert (=> b!4069731 m!4678699))

(declare-fun m!4678701 () Bool)

(assert (=> b!4069731 m!4678701))

(assert (=> b!4069731 m!4678701))

(declare-fun m!4678703 () Bool)

(assert (=> b!4069731 m!4678703))

(assert (=> b!4069730 m!4678699))

(declare-fun m!4678705 () Bool)

(assert (=> b!4069730 m!4678705))

(assert (=> b!4069730 m!4678705))

(declare-fun m!4678707 () Bool)

(assert (=> b!4069730 m!4678707))

(assert (=> b!4069730 m!4678707))

(declare-fun m!4678709 () Bool)

(assert (=> b!4069730 m!4678709))

(assert (=> b!4069732 m!4678699))

(assert (=> b!4069727 m!4678695))

(assert (=> b!4069727 m!4678689))

(assert (=> b!4069727 m!4678695))

(assert (=> b!4069727 m!4678689))

(assert (=> b!4069727 m!4678697))

(declare-fun m!4678711 () Bool)

(assert (=> b!4069727 m!4678711))

(declare-fun m!4678713 () Bool)

(assert (=> d!1209652 m!4678713))

(declare-fun m!4678715 () Bool)

(assert (=> d!1209652 m!4678715))

(declare-fun m!4678717 () Bool)

(assert (=> d!1209652 m!4678717))

(assert (=> d!1209652 m!4678439))

(assert (=> b!4069729 m!4678699))

(assert (=> b!4069729 m!4678705))

(assert (=> b!4069729 m!4678705))

(assert (=> b!4069729 m!4678707))

(assert (=> b!4069729 m!4678707))

(declare-fun m!4678719 () Bool)

(assert (=> b!4069729 m!4678719))

(assert (=> b!4069734 m!4678699))

(declare-fun m!4678721 () Bool)

(assert (=> b!4069734 m!4678721))

(assert (=> b!4069734 m!4678689))

(assert (=> b!4069726 m!4678699))

(declare-fun m!4678723 () Bool)

(assert (=> b!4069726 m!4678723))

(assert (=> b!4069573 d!1209652))

(declare-fun d!1209668 () Bool)

(assert (=> d!1209668 (= (maxPrefixOneRule!2885 thiss!21717 (rule!10092 token!484) lt!1456743) (Some!9399 (tuple2!42519 (Token!13111 (apply!10175 (transformation!6986 (rule!10092 token!484)) (seqFromList!5203 lt!1456753)) (rule!10092 token!484) (size!32498 lt!1456753) lt!1456753) suffixResult!105)))))

(declare-fun lt!1456836 () Unit!63034)

(declare-fun choose!24825 (LexerInterface!6575 List!43593 List!43591 List!43591 List!43591 Rule!13772) Unit!63034)

(assert (=> d!1209668 (= lt!1456836 (choose!24825 thiss!21717 rules!2999 lt!1456753 lt!1456743 suffixResult!105 (rule!10092 token!484)))))

(assert (=> d!1209668 (not (isEmpty!25944 rules!2999))))

(assert (=> d!1209668 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1691 thiss!21717 rules!2999 lt!1456753 lt!1456743 suffixResult!105 (rule!10092 token!484)) lt!1456836)))

(declare-fun bs!592523 () Bool)

(assert (= bs!592523 d!1209668))

(assert (=> bs!592523 m!4678403))

(assert (=> bs!592523 m!4678409))

(declare-fun m!4678725 () Bool)

(assert (=> bs!592523 m!4678725))

(assert (=> bs!592523 m!4678403))

(assert (=> bs!592523 m!4678415))

(assert (=> bs!592523 m!4678429))

(assert (=> bs!592523 m!4678443))

(assert (=> b!4069573 d!1209668))

(declare-fun d!1209670 () Bool)

(declare-fun dynLambda!18464 (Int BalanceConc!25988) TokenValue!7216)

(assert (=> d!1209670 (= (apply!10175 (transformation!6986 (rule!10092 token!484)) (seqFromList!5203 lt!1456753)) (dynLambda!18464 (toValue!9546 (transformation!6986 (rule!10092 token!484))) (seqFromList!5203 lt!1456753)))))

(declare-fun b_lambda!118889 () Bool)

(assert (=> (not b_lambda!118889) (not d!1209670)))

(declare-fun t!336998 () Bool)

(declare-fun tb!244629 () Bool)

(assert (=> (and b!4069554 (= (toValue!9546 (transformation!6986 (h!48889 rules!2999))) (toValue!9546 (transformation!6986 (rule!10092 token!484)))) t!336998) tb!244629))

(declare-fun result!296488 () Bool)

(assert (=> tb!244629 (= result!296488 (inv!21 (dynLambda!18464 (toValue!9546 (transformation!6986 (rule!10092 token!484))) (seqFromList!5203 lt!1456753))))))

(declare-fun m!4678727 () Bool)

(assert (=> tb!244629 m!4678727))

(assert (=> d!1209670 t!336998))

(declare-fun b_and!312751 () Bool)

(assert (= b_and!312739 (and (=> t!336998 result!296488) b_and!312751)))

(declare-fun t!337000 () Bool)

(declare-fun tb!244631 () Bool)

(assert (=> (and b!4069563 (= (toValue!9546 (transformation!6986 (rule!10092 token!484))) (toValue!9546 (transformation!6986 (rule!10092 token!484)))) t!337000) tb!244631))

(declare-fun result!296492 () Bool)

(assert (= result!296492 result!296488))

(assert (=> d!1209670 t!337000))

(declare-fun b_and!312753 () Bool)

(assert (= b_and!312743 (and (=> t!337000 result!296492) b_and!312753)))

(assert (=> d!1209670 m!4678403))

(declare-fun m!4678729 () Bool)

(assert (=> d!1209670 m!4678729))

(assert (=> b!4069573 d!1209670))

(declare-fun b!4069745 () Bool)

(declare-fun e!2525732 () Bool)

(declare-fun e!2525733 () Bool)

(assert (=> b!4069745 (= e!2525732 e!2525733)))

(declare-fun res!1661616 () Bool)

(assert (=> b!4069745 (=> (not res!1661616) (not e!2525733))))

(assert (=> b!4069745 (= res!1661616 (not ((_ is Nil!43467) lt!1456734)))))

(declare-fun d!1209672 () Bool)

(declare-fun e!2525734 () Bool)

(assert (=> d!1209672 e!2525734))

(declare-fun res!1661617 () Bool)

(assert (=> d!1209672 (=> res!1661617 e!2525734)))

(declare-fun lt!1456839 () Bool)

(assert (=> d!1209672 (= res!1661617 (not lt!1456839))))

(assert (=> d!1209672 (= lt!1456839 e!2525732)))

(declare-fun res!1661619 () Bool)

(assert (=> d!1209672 (=> res!1661619 e!2525732)))

(assert (=> d!1209672 (= res!1661619 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209672 (= (isPrefix!4073 lt!1456753 lt!1456734) lt!1456839)))

(declare-fun b!4069748 () Bool)

(assert (=> b!4069748 (= e!2525734 (>= (size!32498 lt!1456734) (size!32498 lt!1456753)))))

(declare-fun b!4069746 () Bool)

(declare-fun res!1661618 () Bool)

(assert (=> b!4069746 (=> (not res!1661618) (not e!2525733))))

(declare-fun head!8587 (List!43591) C!23968)

(assert (=> b!4069746 (= res!1661618 (= (head!8587 lt!1456753) (head!8587 lt!1456734)))))

(declare-fun b!4069747 () Bool)

(declare-fun tail!6319 (List!43591) List!43591)

(assert (=> b!4069747 (= e!2525733 (isPrefix!4073 (tail!6319 lt!1456753) (tail!6319 lt!1456734)))))

(assert (= (and d!1209672 (not res!1661619)) b!4069745))

(assert (= (and b!4069745 res!1661616) b!4069746))

(assert (= (and b!4069746 res!1661618) b!4069747))

(assert (= (and d!1209672 (not res!1661617)) b!4069748))

(declare-fun m!4678731 () Bool)

(assert (=> b!4069748 m!4678731))

(assert (=> b!4069748 m!4678443))

(declare-fun m!4678733 () Bool)

(assert (=> b!4069746 m!4678733))

(declare-fun m!4678735 () Bool)

(assert (=> b!4069746 m!4678735))

(declare-fun m!4678737 () Bool)

(assert (=> b!4069747 m!4678737))

(declare-fun m!4678739 () Bool)

(assert (=> b!4069747 m!4678739))

(assert (=> b!4069747 m!4678737))

(assert (=> b!4069747 m!4678739))

(declare-fun m!4678741 () Bool)

(assert (=> b!4069747 m!4678741))

(assert (=> b!4069573 d!1209672))

(declare-fun d!1209674 () Bool)

(declare-fun fromListB!2378 (List!43591) BalanceConc!25988)

(assert (=> d!1209674 (= (seqFromList!5203 lt!1456753) (fromListB!2378 lt!1456753))))

(declare-fun bs!592524 () Bool)

(assert (= bs!592524 d!1209674))

(declare-fun m!4678743 () Bool)

(assert (=> bs!592524 m!4678743))

(assert (=> b!4069573 d!1209674))

(declare-fun b!4069759 () Bool)

(declare-fun e!2525741 () Bool)

(declare-fun inv!17 (TokenValue!7216) Bool)

(assert (=> b!4069759 (= e!2525741 (inv!17 (value!219735 token!484)))))

(declare-fun b!4069760 () Bool)

(declare-fun res!1661622 () Bool)

(declare-fun e!2525742 () Bool)

(assert (=> b!4069760 (=> res!1661622 e!2525742)))

(assert (=> b!4069760 (= res!1661622 (not ((_ is IntegerValue!21650) (value!219735 token!484))))))

(assert (=> b!4069760 (= e!2525741 e!2525742)))

(declare-fun b!4069762 () Bool)

(declare-fun e!2525743 () Bool)

(declare-fun inv!16 (TokenValue!7216) Bool)

(assert (=> b!4069762 (= e!2525743 (inv!16 (value!219735 token!484)))))

(declare-fun b!4069763 () Bool)

(assert (=> b!4069763 (= e!2525743 e!2525741)))

(declare-fun c!702534 () Bool)

(assert (=> b!4069763 (= c!702534 ((_ is IntegerValue!21649) (value!219735 token!484)))))

(declare-fun b!4069761 () Bool)

(declare-fun inv!15 (TokenValue!7216) Bool)

(assert (=> b!4069761 (= e!2525742 (inv!15 (value!219735 token!484)))))

(declare-fun d!1209676 () Bool)

(declare-fun c!702535 () Bool)

(assert (=> d!1209676 (= c!702535 ((_ is IntegerValue!21648) (value!219735 token!484)))))

(assert (=> d!1209676 (= (inv!21 (value!219735 token!484)) e!2525743)))

(assert (= (and d!1209676 c!702535) b!4069762))

(assert (= (and d!1209676 (not c!702535)) b!4069763))

(assert (= (and b!4069763 c!702534) b!4069759))

(assert (= (and b!4069763 (not c!702534)) b!4069760))

(assert (= (and b!4069760 (not res!1661622)) b!4069761))

(declare-fun m!4678745 () Bool)

(assert (=> b!4069759 m!4678745))

(declare-fun m!4678747 () Bool)

(assert (=> b!4069762 m!4678747))

(declare-fun m!4678749 () Bool)

(assert (=> b!4069761 m!4678749))

(assert (=> b!4069562 d!1209676))

(declare-fun d!1209678 () Bool)

(declare-fun lt!1456842 () Bool)

(declare-fun content!6644 (List!43593) (InoxSet Rule!13772))

(assert (=> d!1209678 (= lt!1456842 (select (content!6644 rules!2999) (rule!10092 token!484)))))

(declare-fun e!2525749 () Bool)

(assert (=> d!1209678 (= lt!1456842 e!2525749)))

(declare-fun res!1661628 () Bool)

(assert (=> d!1209678 (=> (not res!1661628) (not e!2525749))))

(assert (=> d!1209678 (= res!1661628 ((_ is Cons!43469) rules!2999))))

(assert (=> d!1209678 (= (contains!8652 rules!2999 (rule!10092 token!484)) lt!1456842)))

(declare-fun b!4069768 () Bool)

(declare-fun e!2525748 () Bool)

(assert (=> b!4069768 (= e!2525749 e!2525748)))

(declare-fun res!1661627 () Bool)

(assert (=> b!4069768 (=> res!1661627 e!2525748)))

(assert (=> b!4069768 (= res!1661627 (= (h!48889 rules!2999) (rule!10092 token!484)))))

(declare-fun b!4069769 () Bool)

(assert (=> b!4069769 (= e!2525748 (contains!8652 (t!336992 rules!2999) (rule!10092 token!484)))))

(assert (= (and d!1209678 res!1661628) b!4069768))

(assert (= (and b!4069768 (not res!1661627)) b!4069769))

(declare-fun m!4678751 () Bool)

(assert (=> d!1209678 m!4678751))

(declare-fun m!4678753 () Bool)

(assert (=> d!1209678 m!4678753))

(declare-fun m!4678755 () Bool)

(assert (=> b!4069769 m!4678755))

(assert (=> b!4069551 d!1209678))

(declare-fun d!1209680 () Bool)

(assert (=> d!1209680 (= (inv!58106 (tag!7846 (h!48889 rules!2999))) (= (mod (str.len (value!219734 (tag!7846 (h!48889 rules!2999)))) 2) 0))))

(assert (=> b!4069572 d!1209680))

(declare-fun d!1209682 () Bool)

(declare-fun res!1661631 () Bool)

(declare-fun e!2525752 () Bool)

(assert (=> d!1209682 (=> (not res!1661631) (not e!2525752))))

(declare-fun semiInverseModEq!2992 (Int Int) Bool)

(assert (=> d!1209682 (= res!1661631 (semiInverseModEq!2992 (toChars!9405 (transformation!6986 (h!48889 rules!2999))) (toValue!9546 (transformation!6986 (h!48889 rules!2999)))))))

(assert (=> d!1209682 (= (inv!58110 (transformation!6986 (h!48889 rules!2999))) e!2525752)))

(declare-fun b!4069772 () Bool)

(declare-fun equivClasses!2891 (Int Int) Bool)

(assert (=> b!4069772 (= e!2525752 (equivClasses!2891 (toChars!9405 (transformation!6986 (h!48889 rules!2999))) (toValue!9546 (transformation!6986 (h!48889 rules!2999)))))))

(assert (= (and d!1209682 res!1661631) b!4069772))

(declare-fun m!4678757 () Bool)

(assert (=> d!1209682 m!4678757))

(declare-fun m!4678759 () Bool)

(assert (=> b!4069772 m!4678759))

(assert (=> b!4069572 d!1209682))

(declare-fun d!1209684 () Bool)

(assert (=> d!1209684 true))

(declare-fun lt!1456905 () Bool)

(declare-fun lambda!127597 () Int)

(declare-fun forall!8388 (List!43593 Int) Bool)

(assert (=> d!1209684 (= lt!1456905 (forall!8388 rules!2999 lambda!127597))))

(declare-fun e!2525873 () Bool)

(assert (=> d!1209684 (= lt!1456905 e!2525873)))

(declare-fun res!1661736 () Bool)

(assert (=> d!1209684 (=> res!1661736 e!2525873)))

(assert (=> d!1209684 (= res!1661736 (not ((_ is Cons!43469) rules!2999)))))

(assert (=> d!1209684 (= (rulesValidInductive!2559 thiss!21717 rules!2999) lt!1456905)))

(declare-fun b!4069976 () Bool)

(declare-fun e!2525874 () Bool)

(assert (=> b!4069976 (= e!2525873 e!2525874)))

(declare-fun res!1661735 () Bool)

(assert (=> b!4069976 (=> (not res!1661735) (not e!2525874))))

(assert (=> b!4069976 (= res!1661735 (ruleValid!2916 thiss!21717 (h!48889 rules!2999)))))

(declare-fun b!4069977 () Bool)

(assert (=> b!4069977 (= e!2525874 (rulesValidInductive!2559 thiss!21717 (t!336992 rules!2999)))))

(assert (= (and d!1209684 (not res!1661736)) b!4069976))

(assert (= (and b!4069976 res!1661735) b!4069977))

(declare-fun m!4678995 () Bool)

(assert (=> d!1209684 m!4678995))

(declare-fun m!4678997 () Bool)

(assert (=> b!4069976 m!4678997))

(declare-fun m!4678999 () Bool)

(assert (=> b!4069977 m!4678999))

(assert (=> b!4069550 d!1209684))

(declare-fun d!1209770 () Bool)

(declare-fun e!2525883 () Bool)

(assert (=> d!1209770 e!2525883))

(declare-fun res!1661755 () Bool)

(assert (=> d!1209770 (=> res!1661755 e!2525883)))

(declare-fun lt!1456917 () Option!9400)

(assert (=> d!1209770 (= res!1661755 (isEmpty!25945 lt!1456917))))

(declare-fun e!2525882 () Option!9400)

(assert (=> d!1209770 (= lt!1456917 e!2525882)))

(declare-fun c!702565 () Bool)

(assert (=> d!1209770 (= c!702565 (and ((_ is Cons!43469) rules!2999) ((_ is Nil!43469) (t!336992 rules!2999))))))

(declare-fun lt!1456916 () Unit!63034)

(declare-fun lt!1456919 () Unit!63034)

(assert (=> d!1209770 (= lt!1456916 lt!1456919)))

(assert (=> d!1209770 (isPrefix!4073 lt!1456750 lt!1456750)))

(assert (=> d!1209770 (= lt!1456919 (lemmaIsPrefixRefl!2640 lt!1456750 lt!1456750))))

(assert (=> d!1209770 (rulesValidInductive!2559 thiss!21717 rules!2999)))

(assert (=> d!1209770 (= (maxPrefix!3873 thiss!21717 rules!2999 lt!1456750) lt!1456917)))

(declare-fun b!4069998 () Bool)

(declare-fun res!1661754 () Bool)

(declare-fun e!2525881 () Bool)

(assert (=> b!4069998 (=> (not res!1661754) (not e!2525881))))

(assert (=> b!4069998 (= res!1661754 (matchR!5844 (regex!6986 (rule!10092 (_1!24393 (get!14255 lt!1456917)))) (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456917))))))))

(declare-fun b!4069999 () Bool)

(assert (=> b!4069999 (= e!2525883 e!2525881)))

(declare-fun res!1661757 () Bool)

(assert (=> b!4069999 (=> (not res!1661757) (not e!2525881))))

(declare-fun isDefined!7138 (Option!9400) Bool)

(assert (=> b!4069999 (= res!1661757 (isDefined!7138 lt!1456917))))

(declare-fun b!4070000 () Bool)

(assert (=> b!4070000 (= e!2525881 (contains!8652 rules!2999 (rule!10092 (_1!24393 (get!14255 lt!1456917)))))))

(declare-fun b!4070001 () Bool)

(declare-fun res!1661753 () Bool)

(assert (=> b!4070001 (=> (not res!1661753) (not e!2525881))))

(assert (=> b!4070001 (= res!1661753 (= (value!219735 (_1!24393 (get!14255 lt!1456917))) (apply!10175 (transformation!6986 (rule!10092 (_1!24393 (get!14255 lt!1456917)))) (seqFromList!5203 (originalCharacters!7586 (_1!24393 (get!14255 lt!1456917)))))))))

(declare-fun b!4070002 () Bool)

(declare-fun lt!1456920 () Option!9400)

(declare-fun lt!1456918 () Option!9400)

(assert (=> b!4070002 (= e!2525882 (ite (and ((_ is None!9399) lt!1456920) ((_ is None!9399) lt!1456918)) None!9399 (ite ((_ is None!9399) lt!1456918) lt!1456920 (ite ((_ is None!9399) lt!1456920) lt!1456918 (ite (>= (size!32497 (_1!24393 (v!39831 lt!1456920))) (size!32497 (_1!24393 (v!39831 lt!1456918)))) lt!1456920 lt!1456918)))))))

(declare-fun call!288350 () Option!9400)

(assert (=> b!4070002 (= lt!1456920 call!288350)))

(assert (=> b!4070002 (= lt!1456918 (maxPrefix!3873 thiss!21717 (t!336992 rules!2999) lt!1456750))))

(declare-fun b!4070003 () Bool)

(declare-fun res!1661751 () Bool)

(assert (=> b!4070003 (=> (not res!1661751) (not e!2525881))))

(assert (=> b!4070003 (= res!1661751 (< (size!32498 (_2!24393 (get!14255 lt!1456917))) (size!32498 lt!1456750)))))

(declare-fun b!4070004 () Bool)

(assert (=> b!4070004 (= e!2525882 call!288350)))

(declare-fun b!4070005 () Bool)

(declare-fun res!1661752 () Bool)

(assert (=> b!4070005 (=> (not res!1661752) (not e!2525881))))

(assert (=> b!4070005 (= res!1661752 (= (++!11388 (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456917)))) (_2!24393 (get!14255 lt!1456917))) lt!1456750))))

(declare-fun bm!288345 () Bool)

(assert (=> bm!288345 (= call!288350 (maxPrefixOneRule!2885 thiss!21717 (h!48889 rules!2999) lt!1456750))))

(declare-fun b!4070006 () Bool)

(declare-fun res!1661756 () Bool)

(assert (=> b!4070006 (=> (not res!1661756) (not e!2525881))))

(assert (=> b!4070006 (= res!1661756 (= (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456917)))) (originalCharacters!7586 (_1!24393 (get!14255 lt!1456917)))))))

(assert (= (and d!1209770 c!702565) b!4070004))

(assert (= (and d!1209770 (not c!702565)) b!4070002))

(assert (= (or b!4070004 b!4070002) bm!288345))

(assert (= (and d!1209770 (not res!1661755)) b!4069999))

(assert (= (and b!4069999 res!1661757) b!4070006))

(assert (= (and b!4070006 res!1661756) b!4070003))

(assert (= (and b!4070003 res!1661751) b!4070005))

(assert (= (and b!4070005 res!1661752) b!4070001))

(assert (= (and b!4070001 res!1661753) b!4069998))

(assert (= (and b!4069998 res!1661754) b!4070000))

(declare-fun m!4679001 () Bool)

(assert (=> b!4070002 m!4679001))

(declare-fun m!4679003 () Bool)

(assert (=> d!1209770 m!4679003))

(declare-fun m!4679005 () Bool)

(assert (=> d!1209770 m!4679005))

(declare-fun m!4679007 () Bool)

(assert (=> d!1209770 m!4679007))

(assert (=> d!1209770 m!4678419))

(declare-fun m!4679009 () Bool)

(assert (=> b!4070006 m!4679009))

(declare-fun m!4679011 () Bool)

(assert (=> b!4070006 m!4679011))

(assert (=> b!4070006 m!4679011))

(declare-fun m!4679013 () Bool)

(assert (=> b!4070006 m!4679013))

(assert (=> b!4070000 m!4679009))

(declare-fun m!4679015 () Bool)

(assert (=> b!4070000 m!4679015))

(assert (=> b!4070005 m!4679009))

(assert (=> b!4070005 m!4679011))

(assert (=> b!4070005 m!4679011))

(assert (=> b!4070005 m!4679013))

(assert (=> b!4070005 m!4679013))

(declare-fun m!4679017 () Bool)

(assert (=> b!4070005 m!4679017))

(declare-fun m!4679019 () Bool)

(assert (=> bm!288345 m!4679019))

(assert (=> b!4069998 m!4679009))

(assert (=> b!4069998 m!4679011))

(assert (=> b!4069998 m!4679011))

(assert (=> b!4069998 m!4679013))

(assert (=> b!4069998 m!4679013))

(declare-fun m!4679021 () Bool)

(assert (=> b!4069998 m!4679021))

(assert (=> b!4070001 m!4679009))

(declare-fun m!4679023 () Bool)

(assert (=> b!4070001 m!4679023))

(assert (=> b!4070001 m!4679023))

(declare-fun m!4679025 () Bool)

(assert (=> b!4070001 m!4679025))

(declare-fun m!4679027 () Bool)

(assert (=> b!4069999 m!4679027))

(assert (=> b!4070003 m!4679009))

(declare-fun m!4679029 () Bool)

(assert (=> b!4070003 m!4679029))

(declare-fun m!4679031 () Bool)

(assert (=> b!4070003 m!4679031))

(assert (=> b!4069571 d!1209770))

(declare-fun d!1209772 () Bool)

(assert (=> d!1209772 (= suffixResult!105 lt!1456728)))

(declare-fun lt!1456921 () Unit!63034)

(assert (=> d!1209772 (= lt!1456921 (choose!24823 lt!1456753 suffixResult!105 lt!1456753 lt!1456728 lt!1456743))))

(assert (=> d!1209772 (isPrefix!4073 lt!1456753 lt!1456743)))

(assert (=> d!1209772 (= (lemmaSamePrefixThenSameSuffix!2234 lt!1456753 suffixResult!105 lt!1456753 lt!1456728 lt!1456743) lt!1456921)))

(declare-fun bs!592536 () Bool)

(assert (= bs!592536 d!1209772))

(declare-fun m!4679033 () Bool)

(assert (=> bs!592536 m!4679033))

(assert (=> bs!592536 m!4678451))

(assert (=> b!4069571 d!1209772))

(declare-fun b!4070007 () Bool)

(declare-fun e!2525884 () Bool)

(declare-fun e!2525885 () Bool)

(assert (=> b!4070007 (= e!2525884 e!2525885)))

(declare-fun res!1661758 () Bool)

(assert (=> b!4070007 (=> (not res!1661758) (not e!2525885))))

(assert (=> b!4070007 (= res!1661758 (not ((_ is Nil!43467) lt!1456729)))))

(declare-fun d!1209774 () Bool)

(declare-fun e!2525886 () Bool)

(assert (=> d!1209774 e!2525886))

(declare-fun res!1661759 () Bool)

(assert (=> d!1209774 (=> res!1661759 e!2525886)))

(declare-fun lt!1456922 () Bool)

(assert (=> d!1209774 (= res!1661759 (not lt!1456922))))

(assert (=> d!1209774 (= lt!1456922 e!2525884)))

(declare-fun res!1661761 () Bool)

(assert (=> d!1209774 (=> res!1661761 e!2525884)))

(assert (=> d!1209774 (= res!1661761 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209774 (= (isPrefix!4073 lt!1456753 lt!1456729) lt!1456922)))

(declare-fun b!4070010 () Bool)

(assert (=> b!4070010 (= e!2525886 (>= (size!32498 lt!1456729) (size!32498 lt!1456753)))))

(declare-fun b!4070008 () Bool)

(declare-fun res!1661760 () Bool)

(assert (=> b!4070008 (=> (not res!1661760) (not e!2525885))))

(assert (=> b!4070008 (= res!1661760 (= (head!8587 lt!1456753) (head!8587 lt!1456729)))))

(declare-fun b!4070009 () Bool)

(assert (=> b!4070009 (= e!2525885 (isPrefix!4073 (tail!6319 lt!1456753) (tail!6319 lt!1456729)))))

(assert (= (and d!1209774 (not res!1661761)) b!4070007))

(assert (= (and b!4070007 res!1661758) b!4070008))

(assert (= (and b!4070008 res!1661760) b!4070009))

(assert (= (and d!1209774 (not res!1661759)) b!4070010))

(declare-fun m!4679035 () Bool)

(assert (=> b!4070010 m!4679035))

(assert (=> b!4070010 m!4678443))

(assert (=> b!4070008 m!4678733))

(declare-fun m!4679037 () Bool)

(assert (=> b!4070008 m!4679037))

(assert (=> b!4070009 m!4678737))

(declare-fun m!4679039 () Bool)

(assert (=> b!4070009 m!4679039))

(assert (=> b!4070009 m!4678737))

(assert (=> b!4070009 m!4679039))

(declare-fun m!4679041 () Bool)

(assert (=> b!4070009 m!4679041))

(assert (=> b!4069571 d!1209774))

(declare-fun d!1209776 () Bool)

(assert (=> d!1209776 (isPrefix!4073 lt!1456753 (++!11388 lt!1456753 lt!1456728))))

(declare-fun lt!1456923 () Unit!63034)

(assert (=> d!1209776 (= lt!1456923 (choose!24822 lt!1456753 lt!1456728))))

(assert (=> d!1209776 (= (lemmaConcatTwoListThenFirstIsPrefix!2908 lt!1456753 lt!1456728) lt!1456923)))

(declare-fun bs!592537 () Bool)

(assert (= bs!592537 d!1209776))

(assert (=> bs!592537 m!4678421))

(assert (=> bs!592537 m!4678421))

(declare-fun m!4679043 () Bool)

(assert (=> bs!592537 m!4679043))

(declare-fun m!4679045 () Bool)

(assert (=> bs!592537 m!4679045))

(assert (=> b!4069571 d!1209776))

(declare-fun d!1209778 () Bool)

(declare-fun lt!1456926 () Int)

(assert (=> d!1209778 (>= lt!1456926 0)))

(declare-fun e!2525889 () Int)

(assert (=> d!1209778 (= lt!1456926 e!2525889)))

(declare-fun c!702568 () Bool)

(assert (=> d!1209778 (= c!702568 ((_ is Nil!43467) suffix!1299))))

(assert (=> d!1209778 (= (size!32498 suffix!1299) lt!1456926)))

(declare-fun b!4070015 () Bool)

(assert (=> b!4070015 (= e!2525889 0)))

(declare-fun b!4070016 () Bool)

(assert (=> b!4070016 (= e!2525889 (+ 1 (size!32498 (t!336990 suffix!1299))))))

(assert (= (and d!1209778 c!702568) b!4070015))

(assert (= (and d!1209778 (not c!702568)) b!4070016))

(declare-fun m!4679047 () Bool)

(assert (=> b!4070016 m!4679047))

(assert (=> b!4069549 d!1209778))

(declare-fun d!1209780 () Bool)

(declare-fun lt!1456927 () Int)

(assert (=> d!1209780 (>= lt!1456927 0)))

(declare-fun e!2525890 () Int)

(assert (=> d!1209780 (= lt!1456927 e!2525890)))

(declare-fun c!702569 () Bool)

(assert (=> d!1209780 (= c!702569 ((_ is Nil!43467) newSuffix!27))))

(assert (=> d!1209780 (= (size!32498 newSuffix!27) lt!1456927)))

(declare-fun b!4070017 () Bool)

(assert (=> b!4070017 (= e!2525890 0)))

(declare-fun b!4070018 () Bool)

(assert (=> b!4070018 (= e!2525890 (+ 1 (size!32498 (t!336990 newSuffix!27))))))

(assert (= (and d!1209780 c!702569) b!4070017))

(assert (= (and d!1209780 (not c!702569)) b!4070018))

(declare-fun m!4679049 () Bool)

(assert (=> b!4070018 m!4679049))

(assert (=> b!4069549 d!1209780))

(declare-fun d!1209782 () Bool)

(declare-fun res!1661764 () Bool)

(declare-fun e!2525893 () Bool)

(assert (=> d!1209782 (=> (not res!1661764) (not e!2525893))))

(declare-fun rulesValid!2726 (LexerInterface!6575 List!43593) Bool)

(assert (=> d!1209782 (= res!1661764 (rulesValid!2726 thiss!21717 rules!2999))))

(assert (=> d!1209782 (= (rulesInvariant!5918 thiss!21717 rules!2999) e!2525893)))

(declare-fun b!4070021 () Bool)

(declare-datatypes ((List!43595 0))(
  ( (Nil!43471) (Cons!43471 (h!48891 String!49798) (t!337018 List!43595)) )
))
(declare-fun noDuplicateTag!2727 (LexerInterface!6575 List!43593 List!43595) Bool)

(assert (=> b!4070021 (= e!2525893 (noDuplicateTag!2727 thiss!21717 rules!2999 Nil!43471))))

(assert (= (and d!1209782 res!1661764) b!4070021))

(declare-fun m!4679051 () Bool)

(assert (=> d!1209782 m!4679051))

(declare-fun m!4679053 () Bool)

(assert (=> b!4070021 m!4679053))

(assert (=> b!4069570 d!1209782))

(declare-fun d!1209784 () Bool)

(declare-fun e!2525894 () Bool)

(assert (=> d!1209784 e!2525894))

(declare-fun res!1661766 () Bool)

(assert (=> d!1209784 (=> (not res!1661766) (not e!2525894))))

(declare-fun lt!1456928 () List!43591)

(assert (=> d!1209784 (= res!1661766 (= (content!6643 lt!1456928) ((_ map or) (content!6643 lt!1456753) (content!6643 lt!1456728))))))

(declare-fun e!2525895 () List!43591)

(assert (=> d!1209784 (= lt!1456928 e!2525895)))

(declare-fun c!702570 () Bool)

(assert (=> d!1209784 (= c!702570 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209784 (= (++!11388 lt!1456753 lt!1456728) lt!1456928)))

(declare-fun b!4070022 () Bool)

(assert (=> b!4070022 (= e!2525895 lt!1456728)))

(declare-fun b!4070023 () Bool)

(assert (=> b!4070023 (= e!2525895 (Cons!43467 (h!48887 lt!1456753) (++!11388 (t!336990 lt!1456753) lt!1456728)))))

(declare-fun b!4070024 () Bool)

(declare-fun res!1661765 () Bool)

(assert (=> b!4070024 (=> (not res!1661765) (not e!2525894))))

(assert (=> b!4070024 (= res!1661765 (= (size!32498 lt!1456928) (+ (size!32498 lt!1456753) (size!32498 lt!1456728))))))

(declare-fun b!4070025 () Bool)

(assert (=> b!4070025 (= e!2525894 (or (not (= lt!1456728 Nil!43467)) (= lt!1456928 lt!1456753)))))

(assert (= (and d!1209784 c!702570) b!4070022))

(assert (= (and d!1209784 (not c!702570)) b!4070023))

(assert (= (and d!1209784 res!1661766) b!4070024))

(assert (= (and b!4070024 res!1661765) b!4070025))

(declare-fun m!4679055 () Bool)

(assert (=> d!1209784 m!4679055))

(assert (=> d!1209784 m!4678561))

(declare-fun m!4679057 () Bool)

(assert (=> d!1209784 m!4679057))

(declare-fun m!4679059 () Bool)

(assert (=> b!4070023 m!4679059))

(declare-fun m!4679061 () Bool)

(assert (=> b!4070024 m!4679061))

(assert (=> b!4070024 m!4678443))

(declare-fun m!4679063 () Bool)

(assert (=> b!4070024 m!4679063))

(assert (=> b!4069548 d!1209784))

(declare-fun d!1209786 () Bool)

(declare-fun lt!1456931 () List!43591)

(assert (=> d!1209786 (= (++!11388 lt!1456753 lt!1456931) lt!1456743)))

(declare-fun e!2525898 () List!43591)

(assert (=> d!1209786 (= lt!1456931 e!2525898)))

(declare-fun c!702573 () Bool)

(assert (=> d!1209786 (= c!702573 ((_ is Cons!43467) lt!1456753))))

(assert (=> d!1209786 (>= (size!32498 lt!1456743) (size!32498 lt!1456753))))

(assert (=> d!1209786 (= (getSuffix!2490 lt!1456743 lt!1456753) lt!1456931)))

(declare-fun b!4070030 () Bool)

(assert (=> b!4070030 (= e!2525898 (getSuffix!2490 (tail!6319 lt!1456743) (t!336990 lt!1456753)))))

(declare-fun b!4070031 () Bool)

(assert (=> b!4070031 (= e!2525898 lt!1456743)))

(assert (= (and d!1209786 c!702573) b!4070030))

(assert (= (and d!1209786 (not c!702573)) b!4070031))

(declare-fun m!4679065 () Bool)

(assert (=> d!1209786 m!4679065))

(assert (=> d!1209786 m!4678689))

(assert (=> d!1209786 m!4678443))

(declare-fun m!4679067 () Bool)

(assert (=> b!4070030 m!4679067))

(assert (=> b!4070030 m!4679067))

(declare-fun m!4679069 () Bool)

(assert (=> b!4070030 m!4679069))

(assert (=> b!4069548 d!1209786))

(declare-fun b!4070032 () Bool)

(declare-fun e!2525899 () Bool)

(declare-fun e!2525900 () Bool)

(assert (=> b!4070032 (= e!2525899 e!2525900)))

(declare-fun res!1661767 () Bool)

(assert (=> b!4070032 (=> (not res!1661767) (not e!2525900))))

(assert (=> b!4070032 (= res!1661767 (not ((_ is Nil!43467) lt!1456743)))))

(declare-fun d!1209788 () Bool)

(declare-fun e!2525901 () Bool)

(assert (=> d!1209788 e!2525901))

(declare-fun res!1661768 () Bool)

(assert (=> d!1209788 (=> res!1661768 e!2525901)))

(declare-fun lt!1456932 () Bool)

(assert (=> d!1209788 (= res!1661768 (not lt!1456932))))

(assert (=> d!1209788 (= lt!1456932 e!2525899)))

(declare-fun res!1661770 () Bool)

(assert (=> d!1209788 (=> res!1661770 e!2525899)))

(assert (=> d!1209788 (= res!1661770 ((_ is Nil!43467) lt!1456743))))

(assert (=> d!1209788 (= (isPrefix!4073 lt!1456743 lt!1456743) lt!1456932)))

(declare-fun b!4070035 () Bool)

(assert (=> b!4070035 (= e!2525901 (>= (size!32498 lt!1456743) (size!32498 lt!1456743)))))

(declare-fun b!4070033 () Bool)

(declare-fun res!1661769 () Bool)

(assert (=> b!4070033 (=> (not res!1661769) (not e!2525900))))

(assert (=> b!4070033 (= res!1661769 (= (head!8587 lt!1456743) (head!8587 lt!1456743)))))

(declare-fun b!4070034 () Bool)

(assert (=> b!4070034 (= e!2525900 (isPrefix!4073 (tail!6319 lt!1456743) (tail!6319 lt!1456743)))))

(assert (= (and d!1209788 (not res!1661770)) b!4070032))

(assert (= (and b!4070032 res!1661767) b!4070033))

(assert (= (and b!4070033 res!1661769) b!4070034))

(assert (= (and d!1209788 (not res!1661768)) b!4070035))

(assert (=> b!4070035 m!4678689))

(assert (=> b!4070035 m!4678689))

(declare-fun m!4679071 () Bool)

(assert (=> b!4070033 m!4679071))

(assert (=> b!4070033 m!4679071))

(assert (=> b!4070034 m!4679067))

(assert (=> b!4070034 m!4679067))

(assert (=> b!4070034 m!4679067))

(assert (=> b!4070034 m!4679067))

(declare-fun m!4679073 () Bool)

(assert (=> b!4070034 m!4679073))

(assert (=> b!4069548 d!1209788))

(declare-fun d!1209790 () Bool)

(assert (=> d!1209790 (isPrefix!4073 lt!1456743 lt!1456743)))

(declare-fun lt!1456935 () Unit!63034)

(declare-fun choose!24829 (List!43591 List!43591) Unit!63034)

(assert (=> d!1209790 (= lt!1456935 (choose!24829 lt!1456743 lt!1456743))))

(assert (=> d!1209790 (= (lemmaIsPrefixRefl!2640 lt!1456743 lt!1456743) lt!1456935)))

(declare-fun bs!592538 () Bool)

(assert (= bs!592538 d!1209790))

(assert (=> bs!592538 m!4678425))

(declare-fun m!4679075 () Bool)

(assert (=> bs!592538 m!4679075))

(assert (=> b!4069548 d!1209790))

(declare-fun d!1209792 () Bool)

(declare-fun e!2525904 () Bool)

(assert (=> d!1209792 e!2525904))

(declare-fun res!1661775 () Bool)

(assert (=> d!1209792 (=> res!1661775 e!2525904)))

(declare-fun lt!1456937 () Option!9400)

(assert (=> d!1209792 (= res!1661775 (isEmpty!25945 lt!1456937))))

(declare-fun e!2525903 () Option!9400)

(assert (=> d!1209792 (= lt!1456937 e!2525903)))

(declare-fun c!702574 () Bool)

(assert (=> d!1209792 (= c!702574 (and ((_ is Cons!43469) rules!2999) ((_ is Nil!43469) (t!336992 rules!2999))))))

(declare-fun lt!1456936 () Unit!63034)

(declare-fun lt!1456939 () Unit!63034)

(assert (=> d!1209792 (= lt!1456936 lt!1456939)))

(assert (=> d!1209792 (isPrefix!4073 lt!1456743 lt!1456743)))

(assert (=> d!1209792 (= lt!1456939 (lemmaIsPrefixRefl!2640 lt!1456743 lt!1456743))))

(assert (=> d!1209792 (rulesValidInductive!2559 thiss!21717 rules!2999)))

(assert (=> d!1209792 (= (maxPrefix!3873 thiss!21717 rules!2999 lt!1456743) lt!1456937)))

(declare-fun b!4070036 () Bool)

(declare-fun res!1661774 () Bool)

(declare-fun e!2525902 () Bool)

(assert (=> b!4070036 (=> (not res!1661774) (not e!2525902))))

(assert (=> b!4070036 (= res!1661774 (matchR!5844 (regex!6986 (rule!10092 (_1!24393 (get!14255 lt!1456937)))) (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456937))))))))

(declare-fun b!4070037 () Bool)

(assert (=> b!4070037 (= e!2525904 e!2525902)))

(declare-fun res!1661777 () Bool)

(assert (=> b!4070037 (=> (not res!1661777) (not e!2525902))))

(assert (=> b!4070037 (= res!1661777 (isDefined!7138 lt!1456937))))

(declare-fun b!4070038 () Bool)

(assert (=> b!4070038 (= e!2525902 (contains!8652 rules!2999 (rule!10092 (_1!24393 (get!14255 lt!1456937)))))))

(declare-fun b!4070039 () Bool)

(declare-fun res!1661773 () Bool)

(assert (=> b!4070039 (=> (not res!1661773) (not e!2525902))))

(assert (=> b!4070039 (= res!1661773 (= (value!219735 (_1!24393 (get!14255 lt!1456937))) (apply!10175 (transformation!6986 (rule!10092 (_1!24393 (get!14255 lt!1456937)))) (seqFromList!5203 (originalCharacters!7586 (_1!24393 (get!14255 lt!1456937)))))))))

(declare-fun b!4070040 () Bool)

(declare-fun lt!1456940 () Option!9400)

(declare-fun lt!1456938 () Option!9400)

(assert (=> b!4070040 (= e!2525903 (ite (and ((_ is None!9399) lt!1456940) ((_ is None!9399) lt!1456938)) None!9399 (ite ((_ is None!9399) lt!1456938) lt!1456940 (ite ((_ is None!9399) lt!1456940) lt!1456938 (ite (>= (size!32497 (_1!24393 (v!39831 lt!1456940))) (size!32497 (_1!24393 (v!39831 lt!1456938)))) lt!1456940 lt!1456938)))))))

(declare-fun call!288351 () Option!9400)

(assert (=> b!4070040 (= lt!1456940 call!288351)))

(assert (=> b!4070040 (= lt!1456938 (maxPrefix!3873 thiss!21717 (t!336992 rules!2999) lt!1456743))))

(declare-fun b!4070041 () Bool)

(declare-fun res!1661771 () Bool)

(assert (=> b!4070041 (=> (not res!1661771) (not e!2525902))))

(assert (=> b!4070041 (= res!1661771 (< (size!32498 (_2!24393 (get!14255 lt!1456937))) (size!32498 lt!1456743)))))

(declare-fun b!4070042 () Bool)

(assert (=> b!4070042 (= e!2525903 call!288351)))

(declare-fun b!4070043 () Bool)

(declare-fun res!1661772 () Bool)

(assert (=> b!4070043 (=> (not res!1661772) (not e!2525902))))

(assert (=> b!4070043 (= res!1661772 (= (++!11388 (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456937)))) (_2!24393 (get!14255 lt!1456937))) lt!1456743))))

(declare-fun bm!288346 () Bool)

(assert (=> bm!288346 (= call!288351 (maxPrefixOneRule!2885 thiss!21717 (h!48889 rules!2999) lt!1456743))))

(declare-fun b!4070044 () Bool)

(declare-fun res!1661776 () Bool)

(assert (=> b!4070044 (=> (not res!1661776) (not e!2525902))))

(assert (=> b!4070044 (= res!1661776 (= (list!16208 (charsOf!4802 (_1!24393 (get!14255 lt!1456937)))) (originalCharacters!7586 (_1!24393 (get!14255 lt!1456937)))))))

(assert (= (and d!1209792 c!702574) b!4070042))

(assert (= (and d!1209792 (not c!702574)) b!4070040))

(assert (= (or b!4070042 b!4070040) bm!288346))

(assert (= (and d!1209792 (not res!1661775)) b!4070037))

(assert (= (and b!4070037 res!1661777) b!4070044))

(assert (= (and b!4070044 res!1661776) b!4070041))

(assert (= (and b!4070041 res!1661771) b!4070043))

(assert (= (and b!4070043 res!1661772) b!4070039))

(assert (= (and b!4070039 res!1661773) b!4070036))

(assert (= (and b!4070036 res!1661774) b!4070038))

(declare-fun m!4679077 () Bool)

(assert (=> b!4070040 m!4679077))

(declare-fun m!4679079 () Bool)

(assert (=> d!1209792 m!4679079))

(assert (=> d!1209792 m!4678425))

(assert (=> d!1209792 m!4678427))

(assert (=> d!1209792 m!4678419))

(declare-fun m!4679081 () Bool)

(assert (=> b!4070044 m!4679081))

(declare-fun m!4679083 () Bool)

(assert (=> b!4070044 m!4679083))

(assert (=> b!4070044 m!4679083))

(declare-fun m!4679085 () Bool)

(assert (=> b!4070044 m!4679085))

(assert (=> b!4070038 m!4679081))

(declare-fun m!4679087 () Bool)

(assert (=> b!4070038 m!4679087))

(assert (=> b!4070043 m!4679081))

(assert (=> b!4070043 m!4679083))

(assert (=> b!4070043 m!4679083))

(assert (=> b!4070043 m!4679085))

(assert (=> b!4070043 m!4679085))

(declare-fun m!4679089 () Bool)

(assert (=> b!4070043 m!4679089))

(declare-fun m!4679091 () Bool)

(assert (=> bm!288346 m!4679091))

(assert (=> b!4070036 m!4679081))

(assert (=> b!4070036 m!4679083))

(assert (=> b!4070036 m!4679083))

(assert (=> b!4070036 m!4679085))

(assert (=> b!4070036 m!4679085))

(declare-fun m!4679093 () Bool)

(assert (=> b!4070036 m!4679093))

(assert (=> b!4070039 m!4679081))

(declare-fun m!4679095 () Bool)

(assert (=> b!4070039 m!4679095))

(assert (=> b!4070039 m!4679095))

(declare-fun m!4679097 () Bool)

(assert (=> b!4070039 m!4679097))

(declare-fun m!4679099 () Bool)

(assert (=> b!4070037 m!4679099))

(assert (=> b!4070041 m!4679081))

(declare-fun m!4679101 () Bool)

(assert (=> b!4070041 m!4679101))

(assert (=> b!4070041 m!4678689))

(assert (=> b!4069569 d!1209792))

(declare-fun d!1209794 () Bool)

(declare-fun e!2525905 () Bool)

(assert (=> d!1209794 e!2525905))

(declare-fun res!1661779 () Bool)

(assert (=> d!1209794 (=> (not res!1661779) (not e!2525905))))

(declare-fun lt!1456941 () List!43591)

(assert (=> d!1209794 (= res!1661779 (= (content!6643 lt!1456941) ((_ map or) (content!6643 prefix!494) (content!6643 suffix!1299))))))

(declare-fun e!2525906 () List!43591)

(assert (=> d!1209794 (= lt!1456941 e!2525906)))

(declare-fun c!702575 () Bool)

(assert (=> d!1209794 (= c!702575 ((_ is Nil!43467) prefix!494))))

(assert (=> d!1209794 (= (++!11388 prefix!494 suffix!1299) lt!1456941)))

(declare-fun b!4070045 () Bool)

(assert (=> b!4070045 (= e!2525906 suffix!1299)))

(declare-fun b!4070046 () Bool)

(assert (=> b!4070046 (= e!2525906 (Cons!43467 (h!48887 prefix!494) (++!11388 (t!336990 prefix!494) suffix!1299)))))

(declare-fun b!4070047 () Bool)

(declare-fun res!1661778 () Bool)

(assert (=> b!4070047 (=> (not res!1661778) (not e!2525905))))

(assert (=> b!4070047 (= res!1661778 (= (size!32498 lt!1456941) (+ (size!32498 prefix!494) (size!32498 suffix!1299))))))

(declare-fun b!4070048 () Bool)

(assert (=> b!4070048 (= e!2525905 (or (not (= suffix!1299 Nil!43467)) (= lt!1456941 prefix!494)))))

(assert (= (and d!1209794 c!702575) b!4070045))

(assert (= (and d!1209794 (not c!702575)) b!4070046))

(assert (= (and d!1209794 res!1661779) b!4070047))

(assert (= (and b!4070047 res!1661778) b!4070048))

(declare-fun m!4679103 () Bool)

(assert (=> d!1209794 m!4679103))

(assert (=> d!1209794 m!4678551))

(declare-fun m!4679105 () Bool)

(assert (=> d!1209794 m!4679105))

(declare-fun m!4679107 () Bool)

(assert (=> b!4070046 m!4679107))

(declare-fun m!4679109 () Bool)

(assert (=> b!4070047 m!4679109))

(assert (=> b!4070047 m!4678445))

(assert (=> b!4070047 m!4678497))

(assert (=> b!4069569 d!1209794))

(declare-fun d!1209796 () Bool)

(declare-fun e!2525907 () Bool)

(assert (=> d!1209796 e!2525907))

(declare-fun res!1661781 () Bool)

(assert (=> d!1209796 (=> (not res!1661781) (not e!2525907))))

(declare-fun lt!1456942 () List!43591)

(assert (=> d!1209796 (= res!1661781 (= (content!6643 lt!1456942) ((_ map or) (content!6643 lt!1456753) (content!6643 lt!1456727))))))

(declare-fun e!2525908 () List!43591)

(assert (=> d!1209796 (= lt!1456942 e!2525908)))

(declare-fun c!702576 () Bool)

(assert (=> d!1209796 (= c!702576 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209796 (= (++!11388 lt!1456753 lt!1456727) lt!1456942)))

(declare-fun b!4070049 () Bool)

(assert (=> b!4070049 (= e!2525908 lt!1456727)))

(declare-fun b!4070050 () Bool)

(assert (=> b!4070050 (= e!2525908 (Cons!43467 (h!48887 lt!1456753) (++!11388 (t!336990 lt!1456753) lt!1456727)))))

(declare-fun b!4070051 () Bool)

(declare-fun res!1661780 () Bool)

(assert (=> b!4070051 (=> (not res!1661780) (not e!2525907))))

(assert (=> b!4070051 (= res!1661780 (= (size!32498 lt!1456942) (+ (size!32498 lt!1456753) (size!32498 lt!1456727))))))

(declare-fun b!4070052 () Bool)

(assert (=> b!4070052 (= e!2525907 (or (not (= lt!1456727 Nil!43467)) (= lt!1456942 lt!1456753)))))

(assert (= (and d!1209796 c!702576) b!4070049))

(assert (= (and d!1209796 (not c!702576)) b!4070050))

(assert (= (and d!1209796 res!1661781) b!4070051))

(assert (= (and b!4070051 res!1661780) b!4070052))

(declare-fun m!4679111 () Bool)

(assert (=> d!1209796 m!4679111))

(assert (=> d!1209796 m!4678561))

(declare-fun m!4679113 () Bool)

(assert (=> d!1209796 m!4679113))

(declare-fun m!4679115 () Bool)

(assert (=> b!4070050 m!4679115))

(declare-fun m!4679117 () Bool)

(assert (=> b!4070051 m!4679117))

(assert (=> b!4070051 m!4678443))

(declare-fun m!4679119 () Bool)

(assert (=> b!4070051 m!4679119))

(assert (=> b!4069558 d!1209796))

(declare-fun d!1209798 () Bool)

(declare-fun lt!1456943 () List!43591)

(assert (=> d!1209798 (= (++!11388 lt!1456753 lt!1456943) prefix!494)))

(declare-fun e!2525909 () List!43591)

(assert (=> d!1209798 (= lt!1456943 e!2525909)))

(declare-fun c!702577 () Bool)

(assert (=> d!1209798 (= c!702577 ((_ is Cons!43467) lt!1456753))))

(assert (=> d!1209798 (>= (size!32498 prefix!494) (size!32498 lt!1456753))))

(assert (=> d!1209798 (= (getSuffix!2490 prefix!494 lt!1456753) lt!1456943)))

(declare-fun b!4070053 () Bool)

(assert (=> b!4070053 (= e!2525909 (getSuffix!2490 (tail!6319 prefix!494) (t!336990 lt!1456753)))))

(declare-fun b!4070054 () Bool)

(assert (=> b!4070054 (= e!2525909 prefix!494)))

(assert (= (and d!1209798 c!702577) b!4070053))

(assert (= (and d!1209798 (not c!702577)) b!4070054))

(declare-fun m!4679121 () Bool)

(assert (=> d!1209798 m!4679121))

(assert (=> d!1209798 m!4678445))

(assert (=> d!1209798 m!4678443))

(declare-fun m!4679123 () Bool)

(assert (=> b!4070053 m!4679123))

(assert (=> b!4070053 m!4679123))

(declare-fun m!4679125 () Bool)

(assert (=> b!4070053 m!4679125))

(assert (=> b!4069558 d!1209798))

(declare-fun b!4070055 () Bool)

(declare-fun e!2525910 () Bool)

(declare-fun e!2525911 () Bool)

(assert (=> b!4070055 (= e!2525910 e!2525911)))

(declare-fun res!1661782 () Bool)

(assert (=> b!4070055 (=> (not res!1661782) (not e!2525911))))

(assert (=> b!4070055 (= res!1661782 (not ((_ is Nil!43467) prefix!494)))))

(declare-fun d!1209800 () Bool)

(declare-fun e!2525912 () Bool)

(assert (=> d!1209800 e!2525912))

(declare-fun res!1661783 () Bool)

(assert (=> d!1209800 (=> res!1661783 e!2525912)))

(declare-fun lt!1456944 () Bool)

(assert (=> d!1209800 (= res!1661783 (not lt!1456944))))

(assert (=> d!1209800 (= lt!1456944 e!2525910)))

(declare-fun res!1661785 () Bool)

(assert (=> d!1209800 (=> res!1661785 e!2525910)))

(assert (=> d!1209800 (= res!1661785 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209800 (= (isPrefix!4073 lt!1456753 prefix!494) lt!1456944)))

(declare-fun b!4070058 () Bool)

(assert (=> b!4070058 (= e!2525912 (>= (size!32498 prefix!494) (size!32498 lt!1456753)))))

(declare-fun b!4070056 () Bool)

(declare-fun res!1661784 () Bool)

(assert (=> b!4070056 (=> (not res!1661784) (not e!2525911))))

(assert (=> b!4070056 (= res!1661784 (= (head!8587 lt!1456753) (head!8587 prefix!494)))))

(declare-fun b!4070057 () Bool)

(assert (=> b!4070057 (= e!2525911 (isPrefix!4073 (tail!6319 lt!1456753) (tail!6319 prefix!494)))))

(assert (= (and d!1209800 (not res!1661785)) b!4070055))

(assert (= (and b!4070055 res!1661782) b!4070056))

(assert (= (and b!4070056 res!1661784) b!4070057))

(assert (= (and d!1209800 (not res!1661783)) b!4070058))

(assert (=> b!4070058 m!4678445))

(assert (=> b!4070058 m!4678443))

(assert (=> b!4070056 m!4678733))

(declare-fun m!4679127 () Bool)

(assert (=> b!4070056 m!4679127))

(assert (=> b!4070057 m!4678737))

(assert (=> b!4070057 m!4679123))

(assert (=> b!4070057 m!4678737))

(assert (=> b!4070057 m!4679123))

(declare-fun m!4679129 () Bool)

(assert (=> b!4070057 m!4679129))

(assert (=> b!4069558 d!1209800))

(declare-fun d!1209802 () Bool)

(assert (=> d!1209802 (isPrefix!4073 lt!1456753 prefix!494)))

(declare-fun lt!1456947 () Unit!63034)

(declare-fun choose!24831 (List!43591 List!43591 List!43591) Unit!63034)

(assert (=> d!1209802 (= lt!1456947 (choose!24831 prefix!494 lt!1456753 lt!1456743))))

(assert (=> d!1209802 (isPrefix!4073 prefix!494 lt!1456743)))

(assert (=> d!1209802 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!637 prefix!494 lt!1456753 lt!1456743) lt!1456947)))

(declare-fun bs!592539 () Bool)

(assert (= bs!592539 d!1209802))

(assert (=> bs!592539 m!4678399))

(declare-fun m!4679131 () Bool)

(assert (=> bs!592539 m!4679131))

(assert (=> bs!592539 m!4678459))

(assert (=> b!4069558 d!1209802))

(declare-fun b!4070087 () Bool)

(declare-fun e!2525927 () Bool)

(assert (=> b!4070087 (= e!2525927 (not (= (head!8587 lt!1456753) (c!702505 (regex!6986 (rule!10092 token!484))))))))

(declare-fun b!4070089 () Bool)

(declare-fun res!1661804 () Bool)

(declare-fun e!2525930 () Bool)

(assert (=> b!4070089 (=> res!1661804 e!2525930)))

(declare-fun e!2525928 () Bool)

(assert (=> b!4070089 (= res!1661804 e!2525928)))

(declare-fun res!1661809 () Bool)

(assert (=> b!4070089 (=> (not res!1661809) (not e!2525928))))

(declare-fun lt!1456950 () Bool)

(assert (=> b!4070089 (= res!1661809 lt!1456950)))

(declare-fun b!4070090 () Bool)

(declare-fun res!1661807 () Bool)

(assert (=> b!4070090 (=> (not res!1661807) (not e!2525928))))

(declare-fun call!288354 () Bool)

(assert (=> b!4070090 (= res!1661807 (not call!288354))))

(declare-fun b!4070091 () Bool)

(declare-fun e!2525933 () Bool)

(assert (=> b!4070091 (= e!2525933 (not lt!1456950))))

(declare-fun b!4070092 () Bool)

(declare-fun e!2525929 () Bool)

(assert (=> b!4070092 (= e!2525929 e!2525933)))

(declare-fun c!702586 () Bool)

(assert (=> b!4070092 (= c!702586 ((_ is EmptyLang!11891) (regex!6986 (rule!10092 token!484))))))

(declare-fun b!4070093 () Bool)

(declare-fun e!2525932 () Bool)

(assert (=> b!4070093 (= e!2525932 e!2525927)))

(declare-fun res!1661805 () Bool)

(assert (=> b!4070093 (=> res!1661805 e!2525927)))

(assert (=> b!4070093 (= res!1661805 call!288354)))

(declare-fun b!4070094 () Bool)

(declare-fun e!2525931 () Bool)

(declare-fun nullable!4184 (Regex!11891) Bool)

(assert (=> b!4070094 (= e!2525931 (nullable!4184 (regex!6986 (rule!10092 token!484))))))

(declare-fun bm!288349 () Bool)

(assert (=> bm!288349 (= call!288354 (isEmpty!25947 lt!1456753))))

(declare-fun b!4070095 () Bool)

(declare-fun res!1661802 () Bool)

(assert (=> b!4070095 (=> res!1661802 e!2525927)))

(assert (=> b!4070095 (= res!1661802 (not (isEmpty!25947 (tail!6319 lt!1456753))))))

(declare-fun b!4070096 () Bool)

(assert (=> b!4070096 (= e!2525928 (= (head!8587 lt!1456753) (c!702505 (regex!6986 (rule!10092 token!484)))))))

(declare-fun b!4070088 () Bool)

(assert (=> b!4070088 (= e!2525930 e!2525932)))

(declare-fun res!1661806 () Bool)

(assert (=> b!4070088 (=> (not res!1661806) (not e!2525932))))

(assert (=> b!4070088 (= res!1661806 (not lt!1456950))))

(declare-fun d!1209804 () Bool)

(assert (=> d!1209804 e!2525929))

(declare-fun c!702585 () Bool)

(assert (=> d!1209804 (= c!702585 ((_ is EmptyExpr!11891) (regex!6986 (rule!10092 token!484))))))

(assert (=> d!1209804 (= lt!1456950 e!2525931)))

(declare-fun c!702584 () Bool)

(assert (=> d!1209804 (= c!702584 (isEmpty!25947 lt!1456753))))

(declare-fun validRegex!5384 (Regex!11891) Bool)

(assert (=> d!1209804 (validRegex!5384 (regex!6986 (rule!10092 token!484)))))

(assert (=> d!1209804 (= (matchR!5844 (regex!6986 (rule!10092 token!484)) lt!1456753) lt!1456950)))

(declare-fun b!4070097 () Bool)

(assert (=> b!4070097 (= e!2525929 (= lt!1456950 call!288354))))

(declare-fun b!4070098 () Bool)

(declare-fun derivativeStep!3589 (Regex!11891 C!23968) Regex!11891)

(assert (=> b!4070098 (= e!2525931 (matchR!5844 (derivativeStep!3589 (regex!6986 (rule!10092 token!484)) (head!8587 lt!1456753)) (tail!6319 lt!1456753)))))

(declare-fun b!4070099 () Bool)

(declare-fun res!1661803 () Bool)

(assert (=> b!4070099 (=> res!1661803 e!2525930)))

(assert (=> b!4070099 (= res!1661803 (not ((_ is ElementMatch!11891) (regex!6986 (rule!10092 token!484)))))))

(assert (=> b!4070099 (= e!2525933 e!2525930)))

(declare-fun b!4070100 () Bool)

(declare-fun res!1661808 () Bool)

(assert (=> b!4070100 (=> (not res!1661808) (not e!2525928))))

(assert (=> b!4070100 (= res!1661808 (isEmpty!25947 (tail!6319 lt!1456753)))))

(assert (= (and d!1209804 c!702584) b!4070094))

(assert (= (and d!1209804 (not c!702584)) b!4070098))

(assert (= (and d!1209804 c!702585) b!4070097))

(assert (= (and d!1209804 (not c!702585)) b!4070092))

(assert (= (and b!4070092 c!702586) b!4070091))

(assert (= (and b!4070092 (not c!702586)) b!4070099))

(assert (= (and b!4070099 (not res!1661803)) b!4070089))

(assert (= (and b!4070089 res!1661809) b!4070090))

(assert (= (and b!4070090 res!1661807) b!4070100))

(assert (= (and b!4070100 res!1661808) b!4070096))

(assert (= (and b!4070089 (not res!1661804)) b!4070088))

(assert (= (and b!4070088 res!1661806) b!4070093))

(assert (= (and b!4070093 (not res!1661805)) b!4070095))

(assert (= (and b!4070095 (not res!1661802)) b!4070087))

(assert (= (or b!4070097 b!4070090 b!4070093) bm!288349))

(assert (=> b!4070095 m!4678737))

(assert (=> b!4070095 m!4678737))

(declare-fun m!4679133 () Bool)

(assert (=> b!4070095 m!4679133))

(assert (=> b!4070098 m!4678733))

(assert (=> b!4070098 m!4678733))

(declare-fun m!4679135 () Bool)

(assert (=> b!4070098 m!4679135))

(assert (=> b!4070098 m!4678737))

(assert (=> b!4070098 m!4679135))

(assert (=> b!4070098 m!4678737))

(declare-fun m!4679137 () Bool)

(assert (=> b!4070098 m!4679137))

(assert (=> b!4070087 m!4678733))

(assert (=> b!4070100 m!4678737))

(assert (=> b!4070100 m!4678737))

(assert (=> b!4070100 m!4679133))

(declare-fun m!4679139 () Bool)

(assert (=> d!1209804 m!4679139))

(declare-fun m!4679141 () Bool)

(assert (=> d!1209804 m!4679141))

(assert (=> bm!288349 m!4679139))

(declare-fun m!4679143 () Bool)

(assert (=> b!4070094 m!4679143))

(assert (=> b!4070096 m!4678733))

(assert (=> b!4069578 d!1209804))

(declare-fun b!4070101 () Bool)

(declare-fun e!2525934 () Bool)

(declare-fun e!2525935 () Bool)

(assert (=> b!4070101 (= e!2525934 e!2525935)))

(declare-fun res!1661810 () Bool)

(assert (=> b!4070101 (=> (not res!1661810) (not e!2525935))))

(assert (=> b!4070101 (= res!1661810 (not ((_ is Nil!43467) lt!1456750)))))

(declare-fun d!1209806 () Bool)

(declare-fun e!2525936 () Bool)

(assert (=> d!1209806 e!2525936))

(declare-fun res!1661811 () Bool)

(assert (=> d!1209806 (=> res!1661811 e!2525936)))

(declare-fun lt!1456951 () Bool)

(assert (=> d!1209806 (= res!1661811 (not lt!1456951))))

(assert (=> d!1209806 (= lt!1456951 e!2525934)))

(declare-fun res!1661813 () Bool)

(assert (=> d!1209806 (=> res!1661813 e!2525934)))

(assert (=> d!1209806 (= res!1661813 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209806 (= (isPrefix!4073 lt!1456753 lt!1456750) lt!1456951)))

(declare-fun b!4070104 () Bool)

(assert (=> b!4070104 (= e!2525936 (>= (size!32498 lt!1456750) (size!32498 lt!1456753)))))

(declare-fun b!4070102 () Bool)

(declare-fun res!1661812 () Bool)

(assert (=> b!4070102 (=> (not res!1661812) (not e!2525935))))

(assert (=> b!4070102 (= res!1661812 (= (head!8587 lt!1456753) (head!8587 lt!1456750)))))

(declare-fun b!4070103 () Bool)

(assert (=> b!4070103 (= e!2525935 (isPrefix!4073 (tail!6319 lt!1456753) (tail!6319 lt!1456750)))))

(assert (= (and d!1209806 (not res!1661813)) b!4070101))

(assert (= (and b!4070101 res!1661810) b!4070102))

(assert (= (and b!4070102 res!1661812) b!4070103))

(assert (= (and d!1209806 (not res!1661811)) b!4070104))

(assert (=> b!4070104 m!4679031))

(assert (=> b!4070104 m!4678443))

(assert (=> b!4070102 m!4678733))

(declare-fun m!4679145 () Bool)

(assert (=> b!4070102 m!4679145))

(assert (=> b!4070103 m!4678737))

(declare-fun m!4679147 () Bool)

(assert (=> b!4070103 m!4679147))

(assert (=> b!4070103 m!4678737))

(assert (=> b!4070103 m!4679147))

(declare-fun m!4679149 () Bool)

(assert (=> b!4070103 m!4679149))

(assert (=> b!4069578 d!1209806))

(declare-fun d!1209808 () Bool)

(assert (=> d!1209808 (isPrefix!4073 lt!1456753 (++!11388 prefix!494 newSuffix!27))))

(declare-fun lt!1456954 () Unit!63034)

(declare-fun choose!24832 (List!43591 List!43591 List!43591) Unit!63034)

(assert (=> d!1209808 (= lt!1456954 (choose!24832 lt!1456753 prefix!494 newSuffix!27))))

(assert (=> d!1209808 (isPrefix!4073 lt!1456753 prefix!494)))

(assert (=> d!1209808 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!866 lt!1456753 prefix!494 newSuffix!27) lt!1456954)))

(declare-fun bs!592540 () Bool)

(assert (= bs!592540 d!1209808))

(assert (=> bs!592540 m!4678487))

(assert (=> bs!592540 m!4678487))

(declare-fun m!4679151 () Bool)

(assert (=> bs!592540 m!4679151))

(declare-fun m!4679153 () Bool)

(assert (=> bs!592540 m!4679153))

(assert (=> bs!592540 m!4678399))

(assert (=> b!4069578 d!1209808))

(declare-fun d!1209810 () Bool)

(assert (=> d!1209810 (isPrefix!4073 lt!1456753 (++!11388 prefix!494 suffix!1299))))

(declare-fun lt!1456955 () Unit!63034)

(assert (=> d!1209810 (= lt!1456955 (choose!24832 lt!1456753 prefix!494 suffix!1299))))

(assert (=> d!1209810 (isPrefix!4073 lt!1456753 prefix!494)))

(assert (=> d!1209810 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!866 lt!1456753 prefix!494 suffix!1299) lt!1456955)))

(declare-fun bs!592541 () Bool)

(assert (= bs!592541 d!1209810))

(assert (=> bs!592541 m!4678433))

(assert (=> bs!592541 m!4678433))

(declare-fun m!4679155 () Bool)

(assert (=> bs!592541 m!4679155))

(declare-fun m!4679157 () Bool)

(assert (=> bs!592541 m!4679157))

(assert (=> bs!592541 m!4678399))

(assert (=> b!4069578 d!1209810))

(declare-fun d!1209812 () Bool)

(declare-fun res!1661818 () Bool)

(declare-fun e!2525939 () Bool)

(assert (=> d!1209812 (=> (not res!1661818) (not e!2525939))))

(assert (=> d!1209812 (= res!1661818 (not (isEmpty!25947 (originalCharacters!7586 token!484))))))

(assert (=> d!1209812 (= (inv!58109 token!484) e!2525939)))

(declare-fun b!4070109 () Bool)

(declare-fun res!1661819 () Bool)

(assert (=> b!4070109 (=> (not res!1661819) (not e!2525939))))

(declare-fun dynLambda!18466 (Int TokenValue!7216) BalanceConc!25988)

(assert (=> b!4070109 (= res!1661819 (= (originalCharacters!7586 token!484) (list!16208 (dynLambda!18466 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (value!219735 token!484)))))))

(declare-fun b!4070110 () Bool)

(assert (=> b!4070110 (= e!2525939 (= (size!32497 token!484) (size!32498 (originalCharacters!7586 token!484))))))

(assert (= (and d!1209812 res!1661818) b!4070109))

(assert (= (and b!4070109 res!1661819) b!4070110))

(declare-fun b_lambda!118901 () Bool)

(assert (=> (not b_lambda!118901) (not b!4070109)))

(declare-fun t!337010 () Bool)

(declare-fun tb!244641 () Bool)

(assert (=> (and b!4069554 (= (toChars!9405 (transformation!6986 (h!48889 rules!2999))) (toChars!9405 (transformation!6986 (rule!10092 token!484)))) t!337010) tb!244641))

(declare-fun b!4070115 () Bool)

(declare-fun e!2525942 () Bool)

(declare-fun tp!1231666 () Bool)

(declare-fun inv!58113 (Conc!13197) Bool)

(assert (=> b!4070115 (= e!2525942 (and (inv!58113 (c!702504 (dynLambda!18466 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (value!219735 token!484)))) tp!1231666))))

(declare-fun result!296510 () Bool)

(declare-fun inv!58114 (BalanceConc!25988) Bool)

(assert (=> tb!244641 (= result!296510 (and (inv!58114 (dynLambda!18466 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (value!219735 token!484))) e!2525942))))

(assert (= tb!244641 b!4070115))

(declare-fun m!4679159 () Bool)

(assert (=> b!4070115 m!4679159))

(declare-fun m!4679161 () Bool)

(assert (=> tb!244641 m!4679161))

(assert (=> b!4070109 t!337010))

(declare-fun b_and!312767 () Bool)

(assert (= b_and!312741 (and (=> t!337010 result!296510) b_and!312767)))

(declare-fun t!337012 () Bool)

(declare-fun tb!244643 () Bool)

(assert (=> (and b!4069563 (= (toChars!9405 (transformation!6986 (rule!10092 token!484))) (toChars!9405 (transformation!6986 (rule!10092 token!484)))) t!337012) tb!244643))

(declare-fun result!296514 () Bool)

(assert (= result!296514 result!296510))

(assert (=> b!4070109 t!337012))

(declare-fun b_and!312769 () Bool)

(assert (= b_and!312745 (and (=> t!337012 result!296514) b_and!312769)))

(declare-fun m!4679163 () Bool)

(assert (=> d!1209812 m!4679163))

(declare-fun m!4679165 () Bool)

(assert (=> b!4070109 m!4679165))

(assert (=> b!4070109 m!4679165))

(declare-fun m!4679167 () Bool)

(assert (=> b!4070109 m!4679167))

(assert (=> b!4070110 m!4678483))

(assert (=> start!383944 d!1209812))

(declare-fun d!1209814 () Bool)

(declare-fun e!2525943 () Bool)

(assert (=> d!1209814 e!2525943))

(declare-fun res!1661821 () Bool)

(assert (=> d!1209814 (=> (not res!1661821) (not e!2525943))))

(declare-fun lt!1456956 () List!43591)

(assert (=> d!1209814 (= res!1661821 (= (content!6643 lt!1456956) ((_ map or) (content!6643 lt!1456753) (content!6643 lt!1456747))))))

(declare-fun e!2525944 () List!43591)

(assert (=> d!1209814 (= lt!1456956 e!2525944)))

(declare-fun c!702587 () Bool)

(assert (=> d!1209814 (= c!702587 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209814 (= (++!11388 lt!1456753 lt!1456747) lt!1456956)))

(declare-fun b!4070116 () Bool)

(assert (=> b!4070116 (= e!2525944 lt!1456747)))

(declare-fun b!4070117 () Bool)

(assert (=> b!4070117 (= e!2525944 (Cons!43467 (h!48887 lt!1456753) (++!11388 (t!336990 lt!1456753) lt!1456747)))))

(declare-fun b!4070118 () Bool)

(declare-fun res!1661820 () Bool)

(assert (=> b!4070118 (=> (not res!1661820) (not e!2525943))))

(assert (=> b!4070118 (= res!1661820 (= (size!32498 lt!1456956) (+ (size!32498 lt!1456753) (size!32498 lt!1456747))))))

(declare-fun b!4070119 () Bool)

(assert (=> b!4070119 (= e!2525943 (or (not (= lt!1456747 Nil!43467)) (= lt!1456956 lt!1456753)))))

(assert (= (and d!1209814 c!702587) b!4070116))

(assert (= (and d!1209814 (not c!702587)) b!4070117))

(assert (= (and d!1209814 res!1661821) b!4070118))

(assert (= (and b!4070118 res!1661820) b!4070119))

(declare-fun m!4679169 () Bool)

(assert (=> d!1209814 m!4679169))

(assert (=> d!1209814 m!4678561))

(declare-fun m!4679171 () Bool)

(assert (=> d!1209814 m!4679171))

(declare-fun m!4679173 () Bool)

(assert (=> b!4070117 m!4679173))

(declare-fun m!4679175 () Bool)

(assert (=> b!4070118 m!4679175))

(assert (=> b!4070118 m!4678443))

(declare-fun m!4679177 () Bool)

(assert (=> b!4070118 m!4679177))

(assert (=> b!4069567 d!1209814))

(declare-fun d!1209816 () Bool)

(declare-fun e!2525945 () Bool)

(assert (=> d!1209816 e!2525945))

(declare-fun res!1661823 () Bool)

(assert (=> d!1209816 (=> (not res!1661823) (not e!2525945))))

(declare-fun lt!1456957 () List!43591)

(assert (=> d!1209816 (= res!1661823 (= (content!6643 lt!1456957) ((_ map or) (content!6643 lt!1456755) (content!6643 suffix!1299))))))

(declare-fun e!2525946 () List!43591)

(assert (=> d!1209816 (= lt!1456957 e!2525946)))

(declare-fun c!702588 () Bool)

(assert (=> d!1209816 (= c!702588 ((_ is Nil!43467) lt!1456755))))

(assert (=> d!1209816 (= (++!11388 lt!1456755 suffix!1299) lt!1456957)))

(declare-fun b!4070120 () Bool)

(assert (=> b!4070120 (= e!2525946 suffix!1299)))

(declare-fun b!4070121 () Bool)

(assert (=> b!4070121 (= e!2525946 (Cons!43467 (h!48887 lt!1456755) (++!11388 (t!336990 lt!1456755) suffix!1299)))))

(declare-fun b!4070122 () Bool)

(declare-fun res!1661822 () Bool)

(assert (=> b!4070122 (=> (not res!1661822) (not e!2525945))))

(assert (=> b!4070122 (= res!1661822 (= (size!32498 lt!1456957) (+ (size!32498 lt!1456755) (size!32498 suffix!1299))))))

(declare-fun b!4070123 () Bool)

(assert (=> b!4070123 (= e!2525945 (or (not (= suffix!1299 Nil!43467)) (= lt!1456957 lt!1456755)))))

(assert (= (and d!1209816 c!702588) b!4070120))

(assert (= (and d!1209816 (not c!702588)) b!4070121))

(assert (= (and d!1209816 res!1661823) b!4070122))

(assert (= (and b!4070122 res!1661822) b!4070123))

(declare-fun m!4679179 () Bool)

(assert (=> d!1209816 m!4679179))

(declare-fun m!4679181 () Bool)

(assert (=> d!1209816 m!4679181))

(assert (=> d!1209816 m!4679105))

(declare-fun m!4679183 () Bool)

(assert (=> b!4070121 m!4679183))

(declare-fun m!4679185 () Bool)

(assert (=> b!4070122 m!4679185))

(declare-fun m!4679187 () Bool)

(assert (=> b!4070122 m!4679187))

(assert (=> b!4070122 m!4678497))

(assert (=> b!4069567 d!1209816))

(declare-fun d!1209818 () Bool)

(declare-fun e!2525947 () Bool)

(assert (=> d!1209818 e!2525947))

(declare-fun res!1661825 () Bool)

(assert (=> d!1209818 (=> (not res!1661825) (not e!2525947))))

(declare-fun lt!1456958 () List!43591)

(assert (=> d!1209818 (= res!1661825 (= (content!6643 lt!1456958) ((_ map or) (content!6643 lt!1456727) (content!6643 suffix!1299))))))

(declare-fun e!2525948 () List!43591)

(assert (=> d!1209818 (= lt!1456958 e!2525948)))

(declare-fun c!702589 () Bool)

(assert (=> d!1209818 (= c!702589 ((_ is Nil!43467) lt!1456727))))

(assert (=> d!1209818 (= (++!11388 lt!1456727 suffix!1299) lt!1456958)))

(declare-fun b!4070124 () Bool)

(assert (=> b!4070124 (= e!2525948 suffix!1299)))

(declare-fun b!4070125 () Bool)

(assert (=> b!4070125 (= e!2525948 (Cons!43467 (h!48887 lt!1456727) (++!11388 (t!336990 lt!1456727) suffix!1299)))))

(declare-fun b!4070126 () Bool)

(declare-fun res!1661824 () Bool)

(assert (=> b!4070126 (=> (not res!1661824) (not e!2525947))))

(assert (=> b!4070126 (= res!1661824 (= (size!32498 lt!1456958) (+ (size!32498 lt!1456727) (size!32498 suffix!1299))))))

(declare-fun b!4070127 () Bool)

(assert (=> b!4070127 (= e!2525947 (or (not (= suffix!1299 Nil!43467)) (= lt!1456958 lt!1456727)))))

(assert (= (and d!1209818 c!702589) b!4070124))

(assert (= (and d!1209818 (not c!702589)) b!4070125))

(assert (= (and d!1209818 res!1661825) b!4070126))

(assert (= (and b!4070126 res!1661824) b!4070127))

(declare-fun m!4679189 () Bool)

(assert (=> d!1209818 m!4679189))

(assert (=> d!1209818 m!4679113))

(assert (=> d!1209818 m!4679105))

(declare-fun m!4679191 () Bool)

(assert (=> b!4070125 m!4679191))

(declare-fun m!4679193 () Bool)

(assert (=> b!4070126 m!4679193))

(assert (=> b!4070126 m!4679119))

(assert (=> b!4070126 m!4678497))

(assert (=> b!4069567 d!1209818))

(declare-fun d!1209820 () Bool)

(assert (=> d!1209820 (= (++!11388 (++!11388 lt!1456753 lt!1456727) suffix!1299) (++!11388 lt!1456753 (++!11388 lt!1456727 suffix!1299)))))

(declare-fun lt!1456961 () Unit!63034)

(declare-fun choose!24833 (List!43591 List!43591 List!43591) Unit!63034)

(assert (=> d!1209820 (= lt!1456961 (choose!24833 lt!1456753 lt!1456727 suffix!1299))))

(assert (=> d!1209820 (= (lemmaConcatAssociativity!2690 lt!1456753 lt!1456727 suffix!1299) lt!1456961)))

(declare-fun bs!592542 () Bool)

(assert (= bs!592542 d!1209820))

(assert (=> bs!592542 m!4678479))

(declare-fun m!4679195 () Bool)

(assert (=> bs!592542 m!4679195))

(assert (=> bs!592542 m!4678395))

(assert (=> bs!592542 m!4678479))

(declare-fun m!4679197 () Bool)

(assert (=> bs!592542 m!4679197))

(assert (=> bs!592542 m!4678395))

(declare-fun m!4679199 () Bool)

(assert (=> bs!592542 m!4679199))

(assert (=> b!4069567 d!1209820))

(declare-fun d!1209822 () Bool)

(declare-fun e!2525949 () Bool)

(assert (=> d!1209822 e!2525949))

(declare-fun res!1661827 () Bool)

(assert (=> d!1209822 (=> (not res!1661827) (not e!2525949))))

(declare-fun lt!1456962 () List!43591)

(assert (=> d!1209822 (= res!1661827 (= (content!6643 lt!1456962) ((_ map or) (content!6643 lt!1456753) (content!6643 suffixResult!105))))))

(declare-fun e!2525950 () List!43591)

(assert (=> d!1209822 (= lt!1456962 e!2525950)))

(declare-fun c!702590 () Bool)

(assert (=> d!1209822 (= c!702590 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209822 (= (++!11388 lt!1456753 suffixResult!105) lt!1456962)))

(declare-fun b!4070128 () Bool)

(assert (=> b!4070128 (= e!2525950 suffixResult!105)))

(declare-fun b!4070129 () Bool)

(assert (=> b!4070129 (= e!2525950 (Cons!43467 (h!48887 lt!1456753) (++!11388 (t!336990 lt!1456753) suffixResult!105)))))

(declare-fun b!4070130 () Bool)

(declare-fun res!1661826 () Bool)

(assert (=> b!4070130 (=> (not res!1661826) (not e!2525949))))

(assert (=> b!4070130 (= res!1661826 (= (size!32498 lt!1456962) (+ (size!32498 lt!1456753) (size!32498 suffixResult!105))))))

(declare-fun b!4070131 () Bool)

(assert (=> b!4070131 (= e!2525949 (or (not (= suffixResult!105 Nil!43467)) (= lt!1456962 lt!1456753)))))

(assert (= (and d!1209822 c!702590) b!4070128))

(assert (= (and d!1209822 (not c!702590)) b!4070129))

(assert (= (and d!1209822 res!1661827) b!4070130))

(assert (= (and b!4070130 res!1661826) b!4070131))

(declare-fun m!4679201 () Bool)

(assert (=> d!1209822 m!4679201))

(assert (=> d!1209822 m!4678561))

(declare-fun m!4679203 () Bool)

(assert (=> d!1209822 m!4679203))

(declare-fun m!4679205 () Bool)

(assert (=> b!4070129 m!4679205))

(declare-fun m!4679207 () Bool)

(assert (=> b!4070130 m!4679207))

(assert (=> b!4070130 m!4678443))

(declare-fun m!4679209 () Bool)

(assert (=> b!4070130 m!4679209))

(assert (=> b!4069556 d!1209822))

(declare-fun d!1209824 () Bool)

(declare-fun e!2525953 () Bool)

(assert (=> d!1209824 e!2525953))

(declare-fun res!1661830 () Bool)

(assert (=> d!1209824 (=> (not res!1661830) (not e!2525953))))

(assert (=> d!1209824 (= res!1661830 (semiInverseModEq!2992 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (toValue!9546 (transformation!6986 (rule!10092 token!484)))))))

(declare-fun Unit!63038 () Unit!63034)

(assert (=> d!1209824 (= (lemmaInv!1195 (transformation!6986 (rule!10092 token!484))) Unit!63038)))

(declare-fun b!4070134 () Bool)

(assert (=> b!4070134 (= e!2525953 (equivClasses!2891 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (toValue!9546 (transformation!6986 (rule!10092 token!484)))))))

(assert (= (and d!1209824 res!1661830) b!4070134))

(declare-fun m!4679211 () Bool)

(assert (=> d!1209824 m!4679211))

(declare-fun m!4679213 () Bool)

(assert (=> b!4070134 m!4679213))

(assert (=> b!4069556 d!1209824))

(declare-fun d!1209826 () Bool)

(declare-fun res!1661835 () Bool)

(declare-fun e!2525956 () Bool)

(assert (=> d!1209826 (=> (not res!1661835) (not e!2525956))))

(assert (=> d!1209826 (= res!1661835 (validRegex!5384 (regex!6986 (rule!10092 token!484))))))

(assert (=> d!1209826 (= (ruleValid!2916 thiss!21717 (rule!10092 token!484)) e!2525956)))

(declare-fun b!4070139 () Bool)

(declare-fun res!1661836 () Bool)

(assert (=> b!4070139 (=> (not res!1661836) (not e!2525956))))

(assert (=> b!4070139 (= res!1661836 (not (nullable!4184 (regex!6986 (rule!10092 token!484)))))))

(declare-fun b!4070140 () Bool)

(assert (=> b!4070140 (= e!2525956 (not (= (tag!7846 (rule!10092 token!484)) (String!49799 ""))))))

(assert (= (and d!1209826 res!1661835) b!4070139))

(assert (= (and b!4070139 res!1661836) b!4070140))

(assert (=> d!1209826 m!4679141))

(assert (=> b!4070139 m!4679143))

(assert (=> b!4069556 d!1209826))

(declare-fun d!1209828 () Bool)

(assert (=> d!1209828 (ruleValid!2916 thiss!21717 (rule!10092 token!484))))

(declare-fun lt!1456965 () Unit!63034)

(declare-fun choose!24834 (LexerInterface!6575 Rule!13772 List!43593) Unit!63034)

(assert (=> d!1209828 (= lt!1456965 (choose!24834 thiss!21717 (rule!10092 token!484) rules!2999))))

(assert (=> d!1209828 (contains!8652 rules!2999 (rule!10092 token!484))))

(assert (=> d!1209828 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1986 thiss!21717 (rule!10092 token!484) rules!2999) lt!1456965)))

(declare-fun bs!592543 () Bool)

(assert (= bs!592543 d!1209828))

(assert (=> bs!592543 m!4678439))

(declare-fun m!4679215 () Bool)

(assert (=> bs!592543 m!4679215))

(assert (=> bs!592543 m!4678485))

(assert (=> b!4069556 d!1209828))

(declare-fun d!1209830 () Bool)

(assert (=> d!1209830 (isPrefix!4073 lt!1456753 (++!11388 lt!1456753 suffixResult!105))))

(declare-fun lt!1456966 () Unit!63034)

(assert (=> d!1209830 (= lt!1456966 (choose!24822 lt!1456753 suffixResult!105))))

(assert (=> d!1209830 (= (lemmaConcatTwoListThenFirstIsPrefix!2908 lt!1456753 suffixResult!105) lt!1456966)))

(declare-fun bs!592544 () Bool)

(assert (= bs!592544 d!1209830))

(assert (=> bs!592544 m!4678435))

(assert (=> bs!592544 m!4678435))

(declare-fun m!4679217 () Bool)

(assert (=> bs!592544 m!4679217))

(declare-fun m!4679219 () Bool)

(assert (=> bs!592544 m!4679219))

(assert (=> b!4069577 d!1209830))

(declare-fun b!4070141 () Bool)

(declare-fun e!2525957 () Bool)

(declare-fun e!2525958 () Bool)

(assert (=> b!4070141 (= e!2525957 e!2525958)))

(declare-fun res!1661837 () Bool)

(assert (=> b!4070141 (=> (not res!1661837) (not e!2525958))))

(assert (=> b!4070141 (= res!1661837 (not ((_ is Nil!43467) lt!1456743)))))

(declare-fun d!1209832 () Bool)

(declare-fun e!2525959 () Bool)

(assert (=> d!1209832 e!2525959))

(declare-fun res!1661838 () Bool)

(assert (=> d!1209832 (=> res!1661838 e!2525959)))

(declare-fun lt!1456967 () Bool)

(assert (=> d!1209832 (= res!1661838 (not lt!1456967))))

(assert (=> d!1209832 (= lt!1456967 e!2525957)))

(declare-fun res!1661840 () Bool)

(assert (=> d!1209832 (=> res!1661840 e!2525957)))

(assert (=> d!1209832 (= res!1661840 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209832 (= (isPrefix!4073 lt!1456753 lt!1456743) lt!1456967)))

(declare-fun b!4070144 () Bool)

(assert (=> b!4070144 (= e!2525959 (>= (size!32498 lt!1456743) (size!32498 lt!1456753)))))

(declare-fun b!4070142 () Bool)

(declare-fun res!1661839 () Bool)

(assert (=> b!4070142 (=> (not res!1661839) (not e!2525958))))

(assert (=> b!4070142 (= res!1661839 (= (head!8587 lt!1456753) (head!8587 lt!1456743)))))

(declare-fun b!4070143 () Bool)

(assert (=> b!4070143 (= e!2525958 (isPrefix!4073 (tail!6319 lt!1456753) (tail!6319 lt!1456743)))))

(assert (= (and d!1209832 (not res!1661840)) b!4070141))

(assert (= (and b!4070141 res!1661837) b!4070142))

(assert (= (and b!4070142 res!1661839) b!4070143))

(assert (= (and d!1209832 (not res!1661838)) b!4070144))

(assert (=> b!4070144 m!4678689))

(assert (=> b!4070144 m!4678443))

(assert (=> b!4070142 m!4678733))

(assert (=> b!4070142 m!4679071))

(assert (=> b!4070143 m!4678737))

(assert (=> b!4070143 m!4679067))

(assert (=> b!4070143 m!4678737))

(assert (=> b!4070143 m!4679067))

(declare-fun m!4679221 () Bool)

(assert (=> b!4070143 m!4679221))

(assert (=> b!4069577 d!1209832))

(declare-fun b!4070145 () Bool)

(declare-fun e!2525960 () Bool)

(declare-fun e!2525961 () Bool)

(assert (=> b!4070145 (= e!2525960 e!2525961)))

(declare-fun res!1661841 () Bool)

(assert (=> b!4070145 (=> (not res!1661841) (not e!2525961))))

(assert (=> b!4070145 (= res!1661841 (not ((_ is Nil!43467) lt!1456738)))))

(declare-fun d!1209834 () Bool)

(declare-fun e!2525962 () Bool)

(assert (=> d!1209834 e!2525962))

(declare-fun res!1661842 () Bool)

(assert (=> d!1209834 (=> res!1661842 e!2525962)))

(declare-fun lt!1456968 () Bool)

(assert (=> d!1209834 (= res!1661842 (not lt!1456968))))

(assert (=> d!1209834 (= lt!1456968 e!2525960)))

(declare-fun res!1661844 () Bool)

(assert (=> d!1209834 (=> res!1661844 e!2525960)))

(assert (=> d!1209834 (= res!1661844 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209834 (= (isPrefix!4073 lt!1456753 lt!1456738) lt!1456968)))

(declare-fun b!4070148 () Bool)

(assert (=> b!4070148 (= e!2525962 (>= (size!32498 lt!1456738) (size!32498 lt!1456753)))))

(declare-fun b!4070146 () Bool)

(declare-fun res!1661843 () Bool)

(assert (=> b!4070146 (=> (not res!1661843) (not e!2525961))))

(assert (=> b!4070146 (= res!1661843 (= (head!8587 lt!1456753) (head!8587 lt!1456738)))))

(declare-fun b!4070147 () Bool)

(assert (=> b!4070147 (= e!2525961 (isPrefix!4073 (tail!6319 lt!1456753) (tail!6319 lt!1456738)))))

(assert (= (and d!1209834 (not res!1661844)) b!4070145))

(assert (= (and b!4070145 res!1661841) b!4070146))

(assert (= (and b!4070146 res!1661843) b!4070147))

(assert (= (and d!1209834 (not res!1661842)) b!4070148))

(declare-fun m!4679223 () Bool)

(assert (=> b!4070148 m!4679223))

(assert (=> b!4070148 m!4678443))

(assert (=> b!4070146 m!4678733))

(declare-fun m!4679225 () Bool)

(assert (=> b!4070146 m!4679225))

(assert (=> b!4070147 m!4678737))

(declare-fun m!4679227 () Bool)

(assert (=> b!4070147 m!4679227))

(assert (=> b!4070147 m!4678737))

(assert (=> b!4070147 m!4679227))

(declare-fun m!4679229 () Bool)

(assert (=> b!4070147 m!4679229))

(assert (=> b!4069577 d!1209834))

(declare-fun b!4070149 () Bool)

(declare-fun e!2525963 () Bool)

(declare-fun e!2525964 () Bool)

(assert (=> b!4070149 (= e!2525963 e!2525964)))

(declare-fun res!1661845 () Bool)

(assert (=> b!4070149 (=> (not res!1661845) (not e!2525964))))

(assert (=> b!4070149 (= res!1661845 (not ((_ is Nil!43467) lt!1456743)))))

(declare-fun d!1209836 () Bool)

(declare-fun e!2525965 () Bool)

(assert (=> d!1209836 e!2525965))

(declare-fun res!1661846 () Bool)

(assert (=> d!1209836 (=> res!1661846 e!2525965)))

(declare-fun lt!1456969 () Bool)

(assert (=> d!1209836 (= res!1661846 (not lt!1456969))))

(assert (=> d!1209836 (= lt!1456969 e!2525963)))

(declare-fun res!1661848 () Bool)

(assert (=> d!1209836 (=> res!1661848 e!2525963)))

(assert (=> d!1209836 (= res!1661848 ((_ is Nil!43467) prefix!494))))

(assert (=> d!1209836 (= (isPrefix!4073 prefix!494 lt!1456743) lt!1456969)))

(declare-fun b!4070152 () Bool)

(assert (=> b!4070152 (= e!2525965 (>= (size!32498 lt!1456743) (size!32498 prefix!494)))))

(declare-fun b!4070150 () Bool)

(declare-fun res!1661847 () Bool)

(assert (=> b!4070150 (=> (not res!1661847) (not e!2525964))))

(assert (=> b!4070150 (= res!1661847 (= (head!8587 prefix!494) (head!8587 lt!1456743)))))

(declare-fun b!4070151 () Bool)

(assert (=> b!4070151 (= e!2525964 (isPrefix!4073 (tail!6319 prefix!494) (tail!6319 lt!1456743)))))

(assert (= (and d!1209836 (not res!1661848)) b!4070149))

(assert (= (and b!4070149 res!1661845) b!4070150))

(assert (= (and b!4070150 res!1661847) b!4070151))

(assert (= (and d!1209836 (not res!1661846)) b!4070152))

(assert (=> b!4070152 m!4678689))

(assert (=> b!4070152 m!4678445))

(assert (=> b!4070150 m!4679127))

(assert (=> b!4070150 m!4679071))

(assert (=> b!4070151 m!4679123))

(assert (=> b!4070151 m!4679067))

(assert (=> b!4070151 m!4679123))

(assert (=> b!4070151 m!4679067))

(declare-fun m!4679231 () Bool)

(assert (=> b!4070151 m!4679231))

(assert (=> b!4069577 d!1209836))

(declare-fun d!1209838 () Bool)

(assert (=> d!1209838 (isPrefix!4073 prefix!494 (++!11388 prefix!494 suffix!1299))))

(declare-fun lt!1456970 () Unit!63034)

(assert (=> d!1209838 (= lt!1456970 (choose!24822 prefix!494 suffix!1299))))

(assert (=> d!1209838 (= (lemmaConcatTwoListThenFirstIsPrefix!2908 prefix!494 suffix!1299) lt!1456970)))

(declare-fun bs!592545 () Bool)

(assert (= bs!592545 d!1209838))

(assert (=> bs!592545 m!4678433))

(assert (=> bs!592545 m!4678433))

(declare-fun m!4679233 () Bool)

(assert (=> bs!592545 m!4679233))

(declare-fun m!4679235 () Bool)

(assert (=> bs!592545 m!4679235))

(assert (=> b!4069577 d!1209838))

(declare-fun b!4070153 () Bool)

(declare-fun e!2525966 () Bool)

(declare-fun e!2525967 () Bool)

(assert (=> b!4070153 (= e!2525966 e!2525967)))

(declare-fun res!1661849 () Bool)

(assert (=> b!4070153 (=> (not res!1661849) (not e!2525967))))

(assert (=> b!4070153 (= res!1661849 (not ((_ is Nil!43467) suffix!1299)))))

(declare-fun d!1209840 () Bool)

(declare-fun e!2525968 () Bool)

(assert (=> d!1209840 e!2525968))

(declare-fun res!1661850 () Bool)

(assert (=> d!1209840 (=> res!1661850 e!2525968)))

(declare-fun lt!1456971 () Bool)

(assert (=> d!1209840 (= res!1661850 (not lt!1456971))))

(assert (=> d!1209840 (= lt!1456971 e!2525966)))

(declare-fun res!1661852 () Bool)

(assert (=> d!1209840 (=> res!1661852 e!2525966)))

(assert (=> d!1209840 (= res!1661852 ((_ is Nil!43467) newSuffix!27))))

(assert (=> d!1209840 (= (isPrefix!4073 newSuffix!27 suffix!1299) lt!1456971)))

(declare-fun b!4070156 () Bool)

(assert (=> b!4070156 (= e!2525968 (>= (size!32498 suffix!1299) (size!32498 newSuffix!27)))))

(declare-fun b!4070154 () Bool)

(declare-fun res!1661851 () Bool)

(assert (=> b!4070154 (=> (not res!1661851) (not e!2525967))))

(assert (=> b!4070154 (= res!1661851 (= (head!8587 newSuffix!27) (head!8587 suffix!1299)))))

(declare-fun b!4070155 () Bool)

(assert (=> b!4070155 (= e!2525967 (isPrefix!4073 (tail!6319 newSuffix!27) (tail!6319 suffix!1299)))))

(assert (= (and d!1209840 (not res!1661852)) b!4070153))

(assert (= (and b!4070153 res!1661849) b!4070154))

(assert (= (and b!4070154 res!1661851) b!4070155))

(assert (= (and d!1209840 (not res!1661850)) b!4070156))

(assert (=> b!4070156 m!4678497))

(assert (=> b!4070156 m!4678499))

(declare-fun m!4679237 () Bool)

(assert (=> b!4070154 m!4679237))

(declare-fun m!4679239 () Bool)

(assert (=> b!4070154 m!4679239))

(declare-fun m!4679241 () Bool)

(assert (=> b!4070155 m!4679241))

(declare-fun m!4679243 () Bool)

(assert (=> b!4070155 m!4679243))

(assert (=> b!4070155 m!4679241))

(assert (=> b!4070155 m!4679243))

(declare-fun m!4679245 () Bool)

(assert (=> b!4070155 m!4679245))

(assert (=> b!4069555 d!1209840))

(declare-fun d!1209842 () Bool)

(declare-fun lt!1456972 () Int)

(assert (=> d!1209842 (>= lt!1456972 0)))

(declare-fun e!2525969 () Int)

(assert (=> d!1209842 (= lt!1456972 e!2525969)))

(declare-fun c!702591 () Bool)

(assert (=> d!1209842 (= c!702591 ((_ is Nil!43467) lt!1456753))))

(assert (=> d!1209842 (= (size!32498 lt!1456753) lt!1456972)))

(declare-fun b!4070157 () Bool)

(assert (=> b!4070157 (= e!2525969 0)))

(declare-fun b!4070158 () Bool)

(assert (=> b!4070158 (= e!2525969 (+ 1 (size!32498 (t!336990 lt!1456753))))))

(assert (= (and d!1209842 c!702591) b!4070157))

(assert (= (and d!1209842 (not c!702591)) b!4070158))

(declare-fun m!4679247 () Bool)

(assert (=> b!4070158 m!4679247))

(assert (=> b!4069576 d!1209842))

(declare-fun d!1209844 () Bool)

(declare-fun lt!1456973 () Int)

(assert (=> d!1209844 (>= lt!1456973 0)))

(declare-fun e!2525970 () Int)

(assert (=> d!1209844 (= lt!1456973 e!2525970)))

(declare-fun c!702592 () Bool)

(assert (=> d!1209844 (= c!702592 ((_ is Nil!43467) prefix!494))))

(assert (=> d!1209844 (= (size!32498 prefix!494) lt!1456973)))

(declare-fun b!4070159 () Bool)

(assert (=> b!4070159 (= e!2525970 0)))

(declare-fun b!4070160 () Bool)

(assert (=> b!4070160 (= e!2525970 (+ 1 (size!32498 (t!336990 prefix!494))))))

(assert (= (and d!1209844 c!702592) b!4070159))

(assert (= (and d!1209844 (not c!702592)) b!4070160))

(declare-fun m!4679249 () Bool)

(assert (=> b!4070160 m!4679249))

(assert (=> b!4069576 d!1209844))

(declare-fun d!1209846 () Bool)

(declare-fun list!16210 (Conc!13197) List!43591)

(assert (=> d!1209846 (= (list!16208 (charsOf!4802 token!484)) (list!16210 (c!702504 (charsOf!4802 token!484))))))

(declare-fun bs!592546 () Bool)

(assert (= bs!592546 d!1209846))

(declare-fun m!4679251 () Bool)

(assert (=> bs!592546 m!4679251))

(assert (=> b!4069576 d!1209846))

(declare-fun d!1209848 () Bool)

(declare-fun lt!1456976 () BalanceConc!25988)

(assert (=> d!1209848 (= (list!16208 lt!1456976) (originalCharacters!7586 token!484))))

(assert (=> d!1209848 (= lt!1456976 (dynLambda!18466 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (value!219735 token!484)))))

(assert (=> d!1209848 (= (charsOf!4802 token!484) lt!1456976)))

(declare-fun b_lambda!118903 () Bool)

(assert (=> (not b_lambda!118903) (not d!1209848)))

(assert (=> d!1209848 t!337010))

(declare-fun b_and!312771 () Bool)

(assert (= b_and!312767 (and (=> t!337010 result!296510) b_and!312771)))

(assert (=> d!1209848 t!337012))

(declare-fun b_and!312773 () Bool)

(assert (= b_and!312769 (and (=> t!337012 result!296514) b_and!312773)))

(declare-fun m!4679253 () Bool)

(assert (=> d!1209848 m!4679253))

(assert (=> d!1209848 m!4679165))

(assert (=> b!4069576 d!1209848))

(declare-fun d!1209850 () Bool)

(declare-fun lt!1456977 () Int)

(assert (=> d!1209850 (>= lt!1456977 0)))

(declare-fun e!2525971 () Int)

(assert (=> d!1209850 (= lt!1456977 e!2525971)))

(declare-fun c!702593 () Bool)

(assert (=> d!1209850 (= c!702593 ((_ is Nil!43467) (originalCharacters!7586 token!484)))))

(assert (=> d!1209850 (= (size!32498 (originalCharacters!7586 token!484)) lt!1456977)))

(declare-fun b!4070161 () Bool)

(assert (=> b!4070161 (= e!2525971 0)))

(declare-fun b!4070162 () Bool)

(assert (=> b!4070162 (= e!2525971 (+ 1 (size!32498 (t!336990 (originalCharacters!7586 token!484)))))))

(assert (= (and d!1209850 c!702593) b!4070161))

(assert (= (and d!1209850 (not c!702593)) b!4070162))

(declare-fun m!4679255 () Bool)

(assert (=> b!4070162 m!4679255))

(assert (=> b!4069575 d!1209850))

(declare-fun d!1209852 () Bool)

(assert (=> d!1209852 (= (inv!58106 (tag!7846 (rule!10092 token!484))) (= (mod (str.len (value!219734 (tag!7846 (rule!10092 token!484)))) 2) 0))))

(assert (=> b!4069564 d!1209852))

(declare-fun d!1209854 () Bool)

(declare-fun res!1661853 () Bool)

(declare-fun e!2525972 () Bool)

(assert (=> d!1209854 (=> (not res!1661853) (not e!2525972))))

(assert (=> d!1209854 (= res!1661853 (semiInverseModEq!2992 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (toValue!9546 (transformation!6986 (rule!10092 token!484)))))))

(assert (=> d!1209854 (= (inv!58110 (transformation!6986 (rule!10092 token!484))) e!2525972)))

(declare-fun b!4070163 () Bool)

(assert (=> b!4070163 (= e!2525972 (equivClasses!2891 (toChars!9405 (transformation!6986 (rule!10092 token!484))) (toValue!9546 (transformation!6986 (rule!10092 token!484)))))))

(assert (= (and d!1209854 res!1661853) b!4070163))

(assert (=> d!1209854 m!4679211))

(assert (=> b!4070163 m!4679213))

(assert (=> b!4069564 d!1209854))

(declare-fun b!4070174 () Bool)

(declare-fun b_free!113221 () Bool)

(declare-fun b_next!113925 () Bool)

(assert (=> b!4070174 (= b_free!113221 (not b_next!113925))))

(declare-fun t!337015 () Bool)

(declare-fun tb!244645 () Bool)

(assert (=> (and b!4070174 (= (toValue!9546 (transformation!6986 (h!48889 (t!336992 rules!2999)))) (toValue!9546 (transformation!6986 (rule!10092 token!484)))) t!337015) tb!244645))

(declare-fun result!296518 () Bool)

(assert (= result!296518 result!296488))

(assert (=> d!1209670 t!337015))

(declare-fun b_and!312775 () Bool)

(declare-fun tp!1231677 () Bool)

(assert (=> b!4070174 (= tp!1231677 (and (=> t!337015 result!296518) b_and!312775))))

(declare-fun b_free!113223 () Bool)

(declare-fun b_next!113927 () Bool)

(assert (=> b!4070174 (= b_free!113223 (not b_next!113927))))

(declare-fun tb!244647 () Bool)

(declare-fun t!337017 () Bool)

(assert (=> (and b!4070174 (= (toChars!9405 (transformation!6986 (h!48889 (t!336992 rules!2999)))) (toChars!9405 (transformation!6986 (rule!10092 token!484)))) t!337017) tb!244647))

(declare-fun result!296520 () Bool)

(assert (= result!296520 result!296510))

(assert (=> b!4070109 t!337017))

(assert (=> d!1209848 t!337017))

(declare-fun tp!1231678 () Bool)

(declare-fun b_and!312777 () Bool)

(assert (=> b!4070174 (= tp!1231678 (and (=> t!337017 result!296520) b_and!312777))))

(declare-fun e!2525982 () Bool)

(assert (=> b!4070174 (= e!2525982 (and tp!1231677 tp!1231678))))

(declare-fun tp!1231675 () Bool)

(declare-fun b!4070173 () Bool)

(declare-fun e!2525983 () Bool)

(assert (=> b!4070173 (= e!2525983 (and tp!1231675 (inv!58106 (tag!7846 (h!48889 (t!336992 rules!2999)))) (inv!58110 (transformation!6986 (h!48889 (t!336992 rules!2999)))) e!2525982))))

(declare-fun b!4070172 () Bool)

(declare-fun e!2525984 () Bool)

(declare-fun tp!1231676 () Bool)

(assert (=> b!4070172 (= e!2525984 (and e!2525983 tp!1231676))))

(assert (=> b!4069547 (= tp!1231618 e!2525984)))

(assert (= b!4070173 b!4070174))

(assert (= b!4070172 b!4070173))

(assert (= (and b!4069547 ((_ is Cons!43469) (t!336992 rules!2999))) b!4070172))

(declare-fun m!4679257 () Bool)

(assert (=> b!4070173 m!4679257))

(declare-fun m!4679259 () Bool)

(assert (=> b!4070173 m!4679259))

(declare-fun b!4070179 () Bool)

(declare-fun e!2525987 () Bool)

(declare-fun tp!1231681 () Bool)

(assert (=> b!4070179 (= e!2525987 (and tp_is_empty!20753 tp!1231681))))

(assert (=> b!4069568 (= tp!1231614 e!2525987)))

(assert (= (and b!4069568 ((_ is Cons!43467) (t!336990 prefix!494))) b!4070179))

(declare-fun b!4070180 () Bool)

(declare-fun e!2525988 () Bool)

(declare-fun tp!1231682 () Bool)

(assert (=> b!4070180 (= e!2525988 (and tp_is_empty!20753 tp!1231682))))

(assert (=> b!4069557 (= tp!1231617 e!2525988)))

(assert (= (and b!4069557 ((_ is Cons!43467) (t!336990 newSuffix!27))) b!4070180))

(declare-fun b!4070181 () Bool)

(declare-fun e!2525989 () Bool)

(declare-fun tp!1231683 () Bool)

(assert (=> b!4070181 (= e!2525989 (and tp_is_empty!20753 tp!1231683))))

(assert (=> b!4069562 (= tp!1231610 e!2525989)))

(assert (= (and b!4069562 ((_ is Cons!43467) (originalCharacters!7586 token!484))) b!4070181))

(declare-fun b!4070193 () Bool)

(declare-fun e!2525992 () Bool)

(declare-fun tp!1231696 () Bool)

(declare-fun tp!1231695 () Bool)

(assert (=> b!4070193 (= e!2525992 (and tp!1231696 tp!1231695))))

(declare-fun b!4070195 () Bool)

(declare-fun tp!1231698 () Bool)

(declare-fun tp!1231697 () Bool)

(assert (=> b!4070195 (= e!2525992 (and tp!1231698 tp!1231697))))

(declare-fun b!4070192 () Bool)

(assert (=> b!4070192 (= e!2525992 tp_is_empty!20753)))

(declare-fun b!4070194 () Bool)

(declare-fun tp!1231694 () Bool)

(assert (=> b!4070194 (= e!2525992 tp!1231694)))

(assert (=> b!4069572 (= tp!1231609 e!2525992)))

(assert (= (and b!4069572 ((_ is ElementMatch!11891) (regex!6986 (h!48889 rules!2999)))) b!4070192))

(assert (= (and b!4069572 ((_ is Concat!19108) (regex!6986 (h!48889 rules!2999)))) b!4070193))

(assert (= (and b!4069572 ((_ is Star!11891) (regex!6986 (h!48889 rules!2999)))) b!4070194))

(assert (= (and b!4069572 ((_ is Union!11891) (regex!6986 (h!48889 rules!2999)))) b!4070195))

(declare-fun b!4070196 () Bool)

(declare-fun e!2525993 () Bool)

(declare-fun tp!1231699 () Bool)

(assert (=> b!4070196 (= e!2525993 (and tp_is_empty!20753 tp!1231699))))

(assert (=> b!4069566 (= tp!1231620 e!2525993)))

(assert (= (and b!4069566 ((_ is Cons!43467) (t!336990 suffix!1299))) b!4070196))

(declare-fun b!4070197 () Bool)

(declare-fun e!2525994 () Bool)

(declare-fun tp!1231700 () Bool)

(assert (=> b!4070197 (= e!2525994 (and tp_is_empty!20753 tp!1231700))))

(assert (=> b!4069560 (= tp!1231611 e!2525994)))

(assert (= (and b!4069560 ((_ is Cons!43467) (t!336990 suffixResult!105))) b!4070197))

(declare-fun b!4070198 () Bool)

(declare-fun e!2525995 () Bool)

(declare-fun tp!1231701 () Bool)

(assert (=> b!4070198 (= e!2525995 (and tp_is_empty!20753 tp!1231701))))

(assert (=> b!4069559 (= tp!1231615 e!2525995)))

(assert (= (and b!4069559 ((_ is Cons!43467) (t!336990 newSuffixResult!27))) b!4070198))

(declare-fun b!4070200 () Bool)

(declare-fun e!2525996 () Bool)

(declare-fun tp!1231704 () Bool)

(declare-fun tp!1231703 () Bool)

(assert (=> b!4070200 (= e!2525996 (and tp!1231704 tp!1231703))))

(declare-fun b!4070202 () Bool)

(declare-fun tp!1231706 () Bool)

(declare-fun tp!1231705 () Bool)

(assert (=> b!4070202 (= e!2525996 (and tp!1231706 tp!1231705))))

(declare-fun b!4070199 () Bool)

(assert (=> b!4070199 (= e!2525996 tp_is_empty!20753)))

(declare-fun b!4070201 () Bool)

(declare-fun tp!1231702 () Bool)

(assert (=> b!4070201 (= e!2525996 tp!1231702)))

(assert (=> b!4069564 (= tp!1231608 e!2525996)))

(assert (= (and b!4069564 ((_ is ElementMatch!11891) (regex!6986 (rule!10092 token!484)))) b!4070199))

(assert (= (and b!4069564 ((_ is Concat!19108) (regex!6986 (rule!10092 token!484)))) b!4070200))

(assert (= (and b!4069564 ((_ is Star!11891) (regex!6986 (rule!10092 token!484)))) b!4070201))

(assert (= (and b!4069564 ((_ is Union!11891) (regex!6986 (rule!10092 token!484)))) b!4070202))

(declare-fun b_lambda!118905 () Bool)

(assert (= b_lambda!118889 (or (and b!4069554 b_free!113209 (= (toValue!9546 (transformation!6986 (h!48889 rules!2999))) (toValue!9546 (transformation!6986 (rule!10092 token!484))))) (and b!4069563 b_free!113213) (and b!4070174 b_free!113221 (= (toValue!9546 (transformation!6986 (h!48889 (t!336992 rules!2999)))) (toValue!9546 (transformation!6986 (rule!10092 token!484))))) b_lambda!118905)))

(declare-fun b_lambda!118907 () Bool)

(assert (= b_lambda!118903 (or (and b!4069554 b_free!113211 (= (toChars!9405 (transformation!6986 (h!48889 rules!2999))) (toChars!9405 (transformation!6986 (rule!10092 token!484))))) (and b!4069563 b_free!113215) (and b!4070174 b_free!113223 (= (toChars!9405 (transformation!6986 (h!48889 (t!336992 rules!2999)))) (toChars!9405 (transformation!6986 (rule!10092 token!484))))) b_lambda!118907)))

(declare-fun b_lambda!118909 () Bool)

(assert (= b_lambda!118901 (or (and b!4069554 b_free!113211 (= (toChars!9405 (transformation!6986 (h!48889 rules!2999))) (toChars!9405 (transformation!6986 (rule!10092 token!484))))) (and b!4069563 b_free!113215) (and b!4070174 b_free!113223 (= (toChars!9405 (transformation!6986 (h!48889 (t!336992 rules!2999)))) (toChars!9405 (transformation!6986 (rule!10092 token!484))))) b_lambda!118909)))

(check-sat (not b!4069730) (not b!4070041) (not d!1209682) (not b!4070196) (not b!4070096) (not b!4070109) (not b!4070110) (not b!4070033) (not bm!288346) (not b!4070151) (not b!4070051) (not b!4070056) (not b!4070130) b_and!312771 (not b!4070036) (not b!4069769) (not b!4070046) (not b!4070160) (not d!1209808) (not b!4070125) (not d!1209826) (not b!4069772) (not d!1209846) (not b_lambda!118905) (not b!4069626) (not d!1209684) (not b_next!113913) (not b!4069761) (not b!4069727) (not b!4070146) (not d!1209776) (not b_next!113927) (not d!1209854) (not b!4070005) (not b!4070198) (not b_lambda!118907) b_and!312777 (not b!4070139) (not b!4070053) (not d!1209820) (not d!1209802) (not b!4069746) b_and!312751 (not b!4070202) (not b!4070003) (not b!4070134) (not d!1209652) (not d!1209810) (not d!1209796) (not d!1209816) (not d!1209668) (not b!4070193) (not b!4069726) (not b!4070195) (not b!4070144) (not d!1209790) (not d!1209792) (not d!1209678) (not b!4069731) b_and!312753 (not b!4070043) (not b!4069759) (not b_next!113925) (not b!4069728) (not b!4070115) (not b!4070037) (not b!4070024) (not b_next!113917) (not b!4070163) (not b!4070104) (not b_lambda!118909) (not b!4070181) (not b!4069732) (not b!4070098) (not bm!288345) (not b!4069729) (not b!4070057) (not b!4069977) (not d!1209630) (not b!4070173) (not b_next!113915) (not d!1209784) (not b!4070129) (not b!4070094) (not b!4070100) (not b!4070162) (not d!1209828) (not b!4069625) (not b!4070102) (not b!4070006) (not d!1209786) (not b!4069621) (not b!4070047) (not b!4070035) (not b!4070016) (not b!4070179) (not b!4070158) (not b!4070039) (not b!4070121) (not d!1209770) (not d!1209798) (not b!4069734) (not b!4070156) b_and!312773 (not d!1209818) (not d!1209830) (not d!1209782) (not b!4070154) (not b!4070155) (not b!4069622) (not b!4070126) (not b!4070018) (not d!1209794) (not b!4069762) (not tb!244629) (not tb!244641) (not b!4070194) (not b!4070103) (not d!1209814) (not b!4070142) (not b!4070147) (not b!4070058) (not b_next!113919) (not b!4070044) (not d!1209824) (not d!1209812) (not d!1209642) (not b!4070040) (not b!4070148) (not b!4070197) (not b!4070009) (not d!1209838) (not d!1209822) (not b!4069999) (not b!4070030) (not b!4070143) (not b!4070002) (not d!1209648) (not b!4070008) (not b!4070021) (not b!4070095) (not b!4070050) (not b!4070001) (not b!4070122) b_and!312775 (not b!4070000) (not b!4070023) (not b!4069976) (not b!4070180) (not b!4070010) (not b!4070152) (not b!4070172) (not b!4070118) (not d!1209638) (not d!1209772) (not b!4070201) (not b!4069748) (not d!1209848) (not b!4070117) (not b!4069998) tp_is_empty!20753 (not d!1209804) (not b!4070038) (not b!4070034) (not b!4069747) (not b!4070200) (not b!4070150) (not d!1209674) (not bm!288349) (not b!4070087))
(check-sat b_and!312771 (not b_next!113913) (not b_next!113927) b_and!312777 b_and!312751 (not b_next!113917) (not b_next!113915) b_and!312773 (not b_next!113919) b_and!312775 b_and!312753 (not b_next!113925))
