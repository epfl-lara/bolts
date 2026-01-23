; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!394522 () Bool)

(assert start!394522)

(declare-fun b!4146672 () Bool)

(declare-fun b_free!118299 () Bool)

(declare-fun b_next!119003 () Bool)

(assert (=> b!4146672 (= b_free!118299 (not b_next!119003))))

(declare-fun tp!1263898 () Bool)

(declare-fun b_and!322325 () Bool)

(assert (=> b!4146672 (= tp!1263898 b_and!322325)))

(declare-fun b_free!118301 () Bool)

(declare-fun b_next!119005 () Bool)

(assert (=> b!4146672 (= b_free!118301 (not b_next!119005))))

(declare-fun tp!1263895 () Bool)

(declare-fun b_and!322327 () Bool)

(assert (=> b!4146672 (= tp!1263895 b_and!322327)))

(declare-fun b!4146678 () Bool)

(declare-fun b_free!118303 () Bool)

(declare-fun b_next!119007 () Bool)

(assert (=> b!4146678 (= b_free!118303 (not b_next!119007))))

(declare-fun tp!1263903 () Bool)

(declare-fun b_and!322329 () Bool)

(assert (=> b!4146678 (= tp!1263903 b_and!322329)))

(declare-fun b_free!118305 () Bool)

(declare-fun b_next!119009 () Bool)

(assert (=> b!4146678 (= b_free!118305 (not b_next!119009))))

(declare-fun tp!1263901 () Bool)

(declare-fun b_and!322331 () Bool)

(assert (=> b!4146678 (= tp!1263901 b_and!322331)))

(declare-fun b!4146688 () Bool)

(declare-fun b_free!118307 () Bool)

(declare-fun b_next!119011 () Bool)

(assert (=> b!4146688 (= b_free!118307 (not b_next!119011))))

(declare-fun tp!1263897 () Bool)

(declare-fun b_and!322333 () Bool)

(assert (=> b!4146688 (= tp!1263897 b_and!322333)))

(declare-fun b_free!118309 () Bool)

(declare-fun b_next!119013 () Bool)

(assert (=> b!4146688 (= b_free!118309 (not b_next!119013))))

(declare-fun tp!1263899 () Bool)

(declare-fun b_and!322335 () Bool)

(assert (=> b!4146688 (= tp!1263899 b_and!322335)))

(declare-fun b!4146667 () Bool)

(declare-fun e!2572876 () Bool)

(declare-datatypes ((List!45127 0))(
  ( (Nil!45003) (Cons!45003 (h!50423 (_ BitVec 16)) (t!342854 List!45127)) )
))
(declare-datatypes ((TokenValue!7632 0))(
  ( (FloatLiteralValue!15264 (text!53869 List!45127)) (TokenValueExt!7631 (__x!27481 Int)) (Broken!38160 (value!231485 List!45127)) (Object!7755) (End!7632) (Def!7632) (Underscore!7632) (Match!7632) (Else!7632) (Error!7632) (Case!7632) (If!7632) (Extends!7632) (Abstract!7632) (Class!7632) (Val!7632) (DelimiterValue!15264 (del!7692 List!45127)) (KeywordValue!7638 (value!231486 List!45127)) (CommentValue!15264 (value!231487 List!45127)) (WhitespaceValue!15264 (value!231488 List!45127)) (IndentationValue!7632 (value!231489 List!45127)) (String!51909) (Int32!7632) (Broken!38161 (value!231490 List!45127)) (Boolean!7633) (Unit!64288) (OperatorValue!7635 (op!7692 List!45127)) (IdentifierValue!15264 (value!231491 List!45127)) (IdentifierValue!15265 (value!231492 List!45127)) (WhitespaceValue!15265 (value!231493 List!45127)) (True!15264) (False!15264) (Broken!38162 (value!231494 List!45127)) (Broken!38163 (value!231495 List!45127)) (True!15265) (RightBrace!7632) (RightBracket!7632) (Colon!7632) (Null!7632) (Comma!7632) (LeftBracket!7632) (False!15265) (LeftBrace!7632) (ImaginaryLiteralValue!7632 (text!53870 List!45127)) (StringLiteralValue!22896 (value!231496 List!45127)) (EOFValue!7632 (value!231497 List!45127)) (IdentValue!7632 (value!231498 List!45127)) (DelimiterValue!15265 (value!231499 List!45127)) (DedentValue!7632 (value!231500 List!45127)) (NewLineValue!7632 (value!231501 List!45127)) (IntegerValue!22896 (value!231502 (_ BitVec 32)) (text!53871 List!45127)) (IntegerValue!22897 (value!231503 Int) (text!53872 List!45127)) (Times!7632) (Or!7632) (Equal!7632) (Minus!7632) (Broken!38164 (value!231504 List!45127)) (And!7632) (Div!7632) (LessEqual!7632) (Mod!7632) (Concat!19939) (Not!7632) (Plus!7632) (SpaceValue!7632 (value!231505 List!45127)) (IntegerValue!22898 (value!231506 Int) (text!53873 List!45127)) (StringLiteralValue!22897 (text!53874 List!45127)) (FloatLiteralValue!15265 (text!53875 List!45127)) (BytesLiteralValue!7632 (value!231507 List!45127)) (CommentValue!15265 (value!231508 List!45127)) (StringLiteralValue!22898 (value!231509 List!45127)) (ErrorTokenValue!7632 (msg!7693 List!45127)) )
))
(declare-datatypes ((C!24800 0))(
  ( (C!24801 (val!14510 Int)) )
))
(declare-datatypes ((List!45128 0))(
  ( (Nil!45004) (Cons!45004 (h!50424 C!24800) (t!342855 List!45128)) )
))
(declare-datatypes ((IArray!27231 0))(
  ( (IArray!27232 (innerList!13673 List!45128)) )
))
(declare-datatypes ((Conc!13613 0))(
  ( (Node!13613 (left!33700 Conc!13613) (right!34030 Conc!13613) (csize!27456 Int) (cheight!13824 Int)) (Leaf!21029 (xs!16919 IArray!27231) (csize!27457 Int)) (Empty!13613) )
))
(declare-datatypes ((BalanceConc!26820 0))(
  ( (BalanceConc!26821 (c!710486 Conc!13613)) )
))
(declare-datatypes ((String!51910 0))(
  ( (String!51911 (value!231510 String)) )
))
(declare-datatypes ((Regex!12307 0))(
  ( (ElementMatch!12307 (c!710487 C!24800)) (Concat!19940 (regOne!25126 Regex!12307) (regTwo!25126 Regex!12307)) (EmptyExpr!12307) (Star!12307 (reg!12636 Regex!12307)) (EmptyLang!12307) (Union!12307 (regOne!25127 Regex!12307) (regTwo!25127 Regex!12307)) )
))
(declare-datatypes ((TokenValueInjection!14692 0))(
  ( (TokenValueInjection!14693 (toValue!10066 Int) (toChars!9925 Int)) )
))
(declare-datatypes ((Rule!14604 0))(
  ( (Rule!14605 (regex!7402 Regex!12307) (tag!8262 String!51910) (isSeparator!7402 Bool) (transformation!7402 TokenValueInjection!14692)) )
))
(declare-fun rBis!149 () Rule!14604)

(declare-fun p!2912 () List!45128)

(declare-fun matchR!6136 (Regex!12307 List!45128) Bool)

(assert (=> b!4146667 (= e!2572876 (not (matchR!6136 (regex!7402 rBis!149) p!2912)))))

(declare-datatypes ((Token!13734 0))(
  ( (Token!13735 (value!231511 TokenValue!7632) (rule!10528 Rule!14604) (size!33362 Int) (originalCharacters!7898 List!45128)) )
))
(declare-datatypes ((tuple2!43378 0))(
  ( (tuple2!43379 (_1!24823 Token!13734) (_2!24823 List!45128)) )
))
(declare-fun lt!1479054 () tuple2!43378)

(declare-fun lt!1479043 () tuple2!43378)

(declare-fun r!4008 () Rule!14604)

(assert (=> b!4146667 (and (not (= (tag!8262 rBis!149) (tag!8262 r!4008))) (not (= lt!1479043 lt!1479054)))))

(declare-datatypes ((List!45129 0))(
  ( (Nil!45005) (Cons!45005 (h!50425 Rule!14604) (t!342856 List!45129)) )
))
(declare-fun rules!3756 () List!45129)

(declare-datatypes ((Unit!64289 0))(
  ( (Unit!64290) )
))
(declare-fun lt!1479052 () Unit!64289)

(declare-datatypes ((LexerInterface!6991 0))(
  ( (LexerInterfaceExt!6988 (__x!27482 Int)) (Lexer!6989) )
))
(declare-fun thiss!25645 () LexerInterface!6991)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!64 (LexerInterface!6991 List!45129 Rule!14604 Rule!14604) Unit!64289)

(assert (=> b!4146667 (= lt!1479052 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!64 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun e!2572882 () Bool)

(declare-fun b!4146668 () Bool)

(declare-fun tp!1263893 () Bool)

(declare-fun e!2572881 () Bool)

(declare-fun inv!59614 (String!51910) Bool)

(declare-fun inv!59616 (TokenValueInjection!14692) Bool)

(assert (=> b!4146668 (= e!2572882 (and tp!1263893 (inv!59614 (tag!8262 rBis!149)) (inv!59616 (transformation!7402 rBis!149)) e!2572881))))

(declare-fun b!4146669 () Bool)

(declare-fun res!1697325 () Bool)

(declare-fun e!2572883 () Bool)

(assert (=> b!4146669 (=> (not res!1697325) (not e!2572883))))

(declare-fun input!3238 () List!45128)

(declare-fun isPrefix!4337 (List!45128 List!45128) Bool)

(assert (=> b!4146669 (= res!1697325 (isPrefix!4337 p!2912 input!3238))))

(declare-fun b!4146670 () Bool)

(declare-fun res!1697327 () Bool)

(assert (=> b!4146670 (=> (not res!1697327) (not e!2572883))))

(declare-fun rulesInvariant!6288 (LexerInterface!6991 List!45129) Bool)

(assert (=> b!4146670 (= res!1697327 (rulesInvariant!6288 thiss!25645 rules!3756))))

(declare-fun b!4146671 () Bool)

(declare-fun e!2572874 () Bool)

(declare-fun e!2572870 () Bool)

(assert (=> b!4146671 (= e!2572874 (not e!2572870))))

(declare-fun res!1697326 () Bool)

(assert (=> b!4146671 (=> res!1697326 e!2572870)))

(get-info :version)

(assert (=> b!4146671 (= res!1697326 (or (not ((_ is Cons!45005) rules!3756)) (not (= (h!50425 rules!3756) rBis!149))))))

(declare-fun lt!1479046 () Unit!64289)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2248 (LexerInterface!6991 Rule!14604 List!45129) Unit!64289)

(assert (=> b!4146671 (= lt!1479046 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2248 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3208 (LexerInterface!6991 Rule!14604) Bool)

(assert (=> b!4146671 (ruleValid!3208 thiss!25645 rBis!149)))

(declare-fun lt!1479044 () Unit!64289)

(assert (=> b!4146671 (= lt!1479044 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2248 thiss!25645 rBis!149 rules!3756))))

(assert (=> b!4146672 (= e!2572881 (and tp!1263898 tp!1263895))))

(declare-fun b!4146673 () Bool)

(declare-fun e!2572878 () Bool)

(declare-fun e!2572872 () Bool)

(declare-fun tp!1263900 () Bool)

(assert (=> b!4146673 (= e!2572878 (and e!2572872 tp!1263900))))

(declare-fun b!4146674 () Bool)

(assert (=> b!4146674 (= e!2572883 e!2572874)))

(declare-fun res!1697331 () Bool)

(assert (=> b!4146674 (=> (not res!1697331) (not e!2572874))))

(declare-datatypes ((Option!9708 0))(
  ( (None!9707) (Some!9707 (v!40361 tuple2!43378)) )
))
(declare-fun maxPrefix!4181 (LexerInterface!6991 List!45129 List!45128) Option!9708)

(assert (=> b!4146674 (= res!1697331 (= (maxPrefix!4181 thiss!25645 rules!3756 input!3238) (Some!9707 lt!1479054)))))

(declare-fun lt!1479047 () TokenValue!7632)

(declare-fun lt!1479048 () Int)

(declare-fun getSuffix!2664 (List!45128 List!45128) List!45128)

(assert (=> b!4146674 (= lt!1479054 (tuple2!43379 (Token!13735 lt!1479047 r!4008 lt!1479048 p!2912) (getSuffix!2664 input!3238 p!2912)))))

(declare-fun size!33363 (List!45128) Int)

(assert (=> b!4146674 (= lt!1479048 (size!33363 p!2912))))

(declare-fun lt!1479050 () BalanceConc!26820)

(declare-fun apply!10475 (TokenValueInjection!14692 BalanceConc!26820) TokenValue!7632)

(assert (=> b!4146674 (= lt!1479047 (apply!10475 (transformation!7402 r!4008) lt!1479050))))

(declare-fun lt!1479049 () Unit!64289)

(declare-fun lemmaSemiInverse!2260 (TokenValueInjection!14692 BalanceConc!26820) Unit!64289)

(assert (=> b!4146674 (= lt!1479049 (lemmaSemiInverse!2260 (transformation!7402 r!4008) lt!1479050))))

(declare-fun seqFromList!5519 (List!45128) BalanceConc!26820)

(assert (=> b!4146674 (= lt!1479050 (seqFromList!5519 p!2912))))

(declare-fun b!4146666 () Bool)

(declare-fun e!2572869 () Bool)

(assert (=> b!4146666 (= e!2572870 e!2572869)))

(declare-fun res!1697328 () Bool)

(assert (=> b!4146666 (=> res!1697328 e!2572869)))

(declare-fun lt!1479045 () Option!9708)

(declare-fun isEmpty!26859 (Option!9708) Bool)

(assert (=> b!4146666 (= res!1697328 (isEmpty!26859 lt!1479045))))

(declare-fun maxPrefixOneRule!3120 (LexerInterface!6991 Rule!14604 List!45128) Option!9708)

(assert (=> b!4146666 (= lt!1479045 (maxPrefixOneRule!3120 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4146666 (not (= rBis!149 r!4008))))

(declare-fun lt!1479053 () Unit!64289)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!100 (LexerInterface!6991 List!45129 Rule!14604 Rule!14604) Unit!64289)

(assert (=> b!4146666 (= lt!1479053 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!100 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun contains!9084 (List!45129 Rule!14604) Bool)

(declare-fun tail!6589 (List!45129) List!45129)

(assert (=> b!4146666 (contains!9084 (tail!6589 rules!3756) r!4008)))

(declare-fun lt!1479051 () Unit!64289)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!106 (List!45129 Rule!14604 Rule!14604) Unit!64289)

(assert (=> b!4146666 (= lt!1479051 (lemmaGetIndexBiggerAndHeadEqThenTailContains!106 rules!3756 rBis!149 r!4008))))

(declare-fun res!1697323 () Bool)

(assert (=> start!394522 (=> (not res!1697323) (not e!2572883))))

(assert (=> start!394522 (= res!1697323 ((_ is Lexer!6989) thiss!25645))))

(assert (=> start!394522 e!2572883))

(assert (=> start!394522 e!2572878))

(declare-fun e!2572868 () Bool)

(assert (=> start!394522 e!2572868))

(assert (=> start!394522 true))

(declare-fun e!2572880 () Bool)

(assert (=> start!394522 e!2572880))

(declare-fun e!2572884 () Bool)

(assert (=> start!394522 e!2572884))

(assert (=> start!394522 e!2572882))

(declare-fun tp!1263904 () Bool)

(declare-fun b!4146675 () Bool)

(declare-fun e!2572871 () Bool)

(assert (=> b!4146675 (= e!2572872 (and tp!1263904 (inv!59614 (tag!8262 (h!50425 rules!3756))) (inv!59616 (transformation!7402 (h!50425 rules!3756))) e!2572871))))

(declare-fun b!4146676 () Bool)

(declare-fun res!1697332 () Bool)

(assert (=> b!4146676 (=> (not res!1697332) (not e!2572874))))

(assert (=> b!4146676 (= res!1697332 (matchR!6136 (regex!7402 r!4008) p!2912))))

(declare-fun b!4146677 () Bool)

(assert (=> b!4146677 (= e!2572869 e!2572876)))

(declare-fun res!1697335 () Bool)

(assert (=> b!4146677 (=> res!1697335 e!2572876)))

(declare-fun lt!1479042 () Int)

(assert (=> b!4146677 (= res!1697335 (or (> lt!1479042 lt!1479048) (< lt!1479042 lt!1479048)))))

(declare-fun size!33364 (BalanceConc!26820) Int)

(declare-fun charsOf!5001 (Token!13734) BalanceConc!26820)

(assert (=> b!4146677 (= lt!1479042 (size!33364 (charsOf!5001 (_1!24823 lt!1479043))))))

(declare-fun get!14698 (Option!9708) tuple2!43378)

(assert (=> b!4146677 (= lt!1479043 (get!14698 lt!1479045))))

(assert (=> b!4146678 (= e!2572871 (and tp!1263903 tp!1263901))))

(declare-fun b!4146679 () Bool)

(declare-fun res!1697322 () Bool)

(assert (=> b!4146679 (=> (not res!1697322) (not e!2572874))))

(assert (=> b!4146679 (= res!1697322 (ruleValid!3208 thiss!25645 r!4008))))

(declare-fun b!4146680 () Bool)

(declare-fun tp_is_empty!21537 () Bool)

(declare-fun tp!1263896 () Bool)

(assert (=> b!4146680 (= e!2572868 (and tp_is_empty!21537 tp!1263896))))

(declare-fun b!4146681 () Bool)

(declare-fun res!1697330 () Bool)

(assert (=> b!4146681 (=> (not res!1697330) (not e!2572883))))

(assert (=> b!4146681 (= res!1697330 (contains!9084 rules!3756 r!4008))))

(declare-fun b!4146682 () Bool)

(declare-fun res!1697324 () Bool)

(assert (=> b!4146682 (=> (not res!1697324) (not e!2572883))))

(declare-fun isEmpty!26860 (List!45129) Bool)

(assert (=> b!4146682 (= res!1697324 (not (isEmpty!26860 rules!3756)))))

(declare-fun b!4146683 () Bool)

(declare-fun res!1697334 () Bool)

(assert (=> b!4146683 (=> (not res!1697334) (not e!2572874))))

(declare-fun getIndex!748 (List!45129 Rule!14604) Int)

(assert (=> b!4146683 (= res!1697334 (< (getIndex!748 rules!3756 rBis!149) (getIndex!748 rules!3756 r!4008)))))

(declare-fun b!4146684 () Bool)

(declare-fun res!1697333 () Bool)

(assert (=> b!4146684 (=> (not res!1697333) (not e!2572883))))

(declare-fun isEmpty!26861 (List!45128) Bool)

(assert (=> b!4146684 (= res!1697333 (not (isEmpty!26861 p!2912)))))

(declare-fun b!4146685 () Bool)

(declare-fun tp!1263902 () Bool)

(declare-fun e!2572875 () Bool)

(assert (=> b!4146685 (= e!2572880 (and tp!1263902 (inv!59614 (tag!8262 r!4008)) (inv!59616 (transformation!7402 r!4008)) e!2572875))))

(declare-fun b!4146686 () Bool)

(declare-fun res!1697329 () Bool)

(assert (=> b!4146686 (=> (not res!1697329) (not e!2572883))))

(assert (=> b!4146686 (= res!1697329 (contains!9084 rules!3756 rBis!149))))

(declare-fun b!4146687 () Bool)

(declare-fun tp!1263894 () Bool)

(assert (=> b!4146687 (= e!2572884 (and tp_is_empty!21537 tp!1263894))))

(assert (=> b!4146688 (= e!2572875 (and tp!1263897 tp!1263899))))

(assert (= (and start!394522 res!1697323) b!4146669))

(assert (= (and b!4146669 res!1697325) b!4146682))

(assert (= (and b!4146682 res!1697324) b!4146670))

(assert (= (and b!4146670 res!1697327) b!4146681))

(assert (= (and b!4146681 res!1697330) b!4146686))

(assert (= (and b!4146686 res!1697329) b!4146684))

(assert (= (and b!4146684 res!1697333) b!4146674))

(assert (= (and b!4146674 res!1697331) b!4146676))

(assert (= (and b!4146676 res!1697332) b!4146683))

(assert (= (and b!4146683 res!1697334) b!4146679))

(assert (= (and b!4146679 res!1697322) b!4146671))

(assert (= (and b!4146671 (not res!1697326)) b!4146666))

(assert (= (and b!4146666 (not res!1697328)) b!4146677))

(assert (= (and b!4146677 (not res!1697335)) b!4146667))

(assert (= b!4146675 b!4146678))

(assert (= b!4146673 b!4146675))

(assert (= (and start!394522 ((_ is Cons!45005) rules!3756)) b!4146673))

(assert (= (and start!394522 ((_ is Cons!45004) p!2912)) b!4146680))

(assert (= b!4146685 b!4146688))

(assert (= start!394522 b!4146685))

(assert (= (and start!394522 ((_ is Cons!45004) input!3238)) b!4146687))

(assert (= b!4146668 b!4146672))

(assert (= start!394522 b!4146668))

(declare-fun m!4742641 () Bool)

(assert (=> b!4146668 m!4742641))

(declare-fun m!4742643 () Bool)

(assert (=> b!4146668 m!4742643))

(declare-fun m!4742645 () Bool)

(assert (=> b!4146685 m!4742645))

(declare-fun m!4742647 () Bool)

(assert (=> b!4146685 m!4742647))

(declare-fun m!4742649 () Bool)

(assert (=> b!4146677 m!4742649))

(assert (=> b!4146677 m!4742649))

(declare-fun m!4742651 () Bool)

(assert (=> b!4146677 m!4742651))

(declare-fun m!4742653 () Bool)

(assert (=> b!4146677 m!4742653))

(declare-fun m!4742655 () Bool)

(assert (=> b!4146670 m!4742655))

(declare-fun m!4742657 () Bool)

(assert (=> b!4146675 m!4742657))

(declare-fun m!4742659 () Bool)

(assert (=> b!4146675 m!4742659))

(declare-fun m!4742661 () Bool)

(assert (=> b!4146679 m!4742661))

(declare-fun m!4742663 () Bool)

(assert (=> b!4146674 m!4742663))

(declare-fun m!4742665 () Bool)

(assert (=> b!4146674 m!4742665))

(declare-fun m!4742667 () Bool)

(assert (=> b!4146674 m!4742667))

(declare-fun m!4742669 () Bool)

(assert (=> b!4146674 m!4742669))

(declare-fun m!4742671 () Bool)

(assert (=> b!4146674 m!4742671))

(declare-fun m!4742673 () Bool)

(assert (=> b!4146674 m!4742673))

(declare-fun m!4742675 () Bool)

(assert (=> b!4146686 m!4742675))

(declare-fun m!4742677 () Bool)

(assert (=> b!4146682 m!4742677))

(declare-fun m!4742679 () Bool)

(assert (=> b!4146676 m!4742679))

(declare-fun m!4742681 () Bool)

(assert (=> b!4146667 m!4742681))

(declare-fun m!4742683 () Bool)

(assert (=> b!4146667 m!4742683))

(declare-fun m!4742685 () Bool)

(assert (=> b!4146671 m!4742685))

(declare-fun m!4742687 () Bool)

(assert (=> b!4146671 m!4742687))

(declare-fun m!4742689 () Bool)

(assert (=> b!4146671 m!4742689))

(declare-fun m!4742691 () Bool)

(assert (=> b!4146684 m!4742691))

(declare-fun m!4742693 () Bool)

(assert (=> b!4146683 m!4742693))

(declare-fun m!4742695 () Bool)

(assert (=> b!4146683 m!4742695))

(declare-fun m!4742697 () Bool)

(assert (=> b!4146666 m!4742697))

(declare-fun m!4742699 () Bool)

(assert (=> b!4146666 m!4742699))

(declare-fun m!4742701 () Bool)

(assert (=> b!4146666 m!4742701))

(declare-fun m!4742703 () Bool)

(assert (=> b!4146666 m!4742703))

(assert (=> b!4146666 m!4742699))

(declare-fun m!4742705 () Bool)

(assert (=> b!4146666 m!4742705))

(declare-fun m!4742707 () Bool)

(assert (=> b!4146666 m!4742707))

(declare-fun m!4742709 () Bool)

(assert (=> b!4146669 m!4742709))

(declare-fun m!4742711 () Bool)

(assert (=> b!4146681 m!4742711))

(check-sat (not b_next!119011) (not b_next!119009) b_and!322329 b_and!322333 (not b!4146682) (not b!4146669) b_and!322335 b_and!322327 (not b!4146684) b_and!322325 (not b_next!119003) tp_is_empty!21537 (not b!4146677) (not b!4146674) (not b!4146687) (not b!4146681) (not b_next!119007) (not b!4146679) (not b!4146676) (not b_next!119005) (not b!4146675) (not b!4146685) (not b!4146666) (not b!4146683) (not b!4146668) (not b!4146671) (not b!4146686) b_and!322331 (not b_next!119013) (not b!4146667) (not b!4146670) (not b!4146673) (not b!4146680))
(check-sat b_and!322325 (not b_next!119003) (not b_next!119007) (not b_next!119011) (not b_next!119009) (not b_next!119005) b_and!322329 b_and!322333 b_and!322335 b_and!322327 b_and!322331 (not b_next!119013))
(get-model)

(declare-fun d!1227142 () Bool)

(declare-fun dynLambda!19389 (Int BalanceConc!26820) TokenValue!7632)

(assert (=> d!1227142 (= (apply!10475 (transformation!7402 r!4008) lt!1479050) (dynLambda!19389 (toValue!10066 (transformation!7402 r!4008)) lt!1479050))))

(declare-fun b_lambda!121939 () Bool)

(assert (=> (not b_lambda!121939) (not d!1227142)))

(declare-fun tb!248947 () Bool)

(declare-fun t!342858 () Bool)

(assert (=> (and b!4146672 (= (toValue!10066 (transformation!7402 rBis!149)) (toValue!10066 (transformation!7402 r!4008))) t!342858) tb!248947))

(declare-fun result!302784 () Bool)

(declare-fun inv!21 (TokenValue!7632) Bool)

(assert (=> tb!248947 (= result!302784 (inv!21 (dynLambda!19389 (toValue!10066 (transformation!7402 r!4008)) lt!1479050)))))

(declare-fun m!4742723 () Bool)

(assert (=> tb!248947 m!4742723))

(assert (=> d!1227142 t!342858))

(declare-fun b_and!322337 () Bool)

(assert (= b_and!322325 (and (=> t!342858 result!302784) b_and!322337)))

(declare-fun tb!248949 () Bool)

(declare-fun t!342860 () Bool)

(assert (=> (and b!4146678 (= (toValue!10066 (transformation!7402 (h!50425 rules!3756))) (toValue!10066 (transformation!7402 r!4008))) t!342860) tb!248949))

(declare-fun result!302788 () Bool)

(assert (= result!302788 result!302784))

(assert (=> d!1227142 t!342860))

(declare-fun b_and!322339 () Bool)

(assert (= b_and!322329 (and (=> t!342860 result!302788) b_and!322339)))

(declare-fun t!342862 () Bool)

(declare-fun tb!248951 () Bool)

(assert (=> (and b!4146688 (= (toValue!10066 (transformation!7402 r!4008)) (toValue!10066 (transformation!7402 r!4008))) t!342862) tb!248951))

(declare-fun result!302790 () Bool)

(assert (= result!302790 result!302784))

(assert (=> d!1227142 t!342862))

(declare-fun b_and!322341 () Bool)

(assert (= b_and!322333 (and (=> t!342862 result!302790) b_and!322341)))

(declare-fun m!4742725 () Bool)

(assert (=> d!1227142 m!4742725))

(assert (=> b!4146674 d!1227142))

(declare-fun d!1227146 () Bool)

(declare-fun lt!1479063 () List!45128)

(declare-fun ++!11640 (List!45128 List!45128) List!45128)

(assert (=> d!1227146 (= (++!11640 p!2912 lt!1479063) input!3238)))

(declare-fun e!2572920 () List!45128)

(assert (=> d!1227146 (= lt!1479063 e!2572920)))

(declare-fun c!710499 () Bool)

(assert (=> d!1227146 (= c!710499 ((_ is Cons!45004) p!2912))))

(assert (=> d!1227146 (>= (size!33363 input!3238) (size!33363 p!2912))))

(assert (=> d!1227146 (= (getSuffix!2664 input!3238 p!2912) lt!1479063)))

(declare-fun b!4146746 () Bool)

(declare-fun tail!6591 (List!45128) List!45128)

(assert (=> b!4146746 (= e!2572920 (getSuffix!2664 (tail!6591 input!3238) (t!342855 p!2912)))))

(declare-fun b!4146747 () Bool)

(assert (=> b!4146747 (= e!2572920 input!3238)))

(assert (= (and d!1227146 c!710499) b!4146746))

(assert (= (and d!1227146 (not c!710499)) b!4146747))

(declare-fun m!4742727 () Bool)

(assert (=> d!1227146 m!4742727))

(declare-fun m!4742729 () Bool)

(assert (=> d!1227146 m!4742729))

(assert (=> d!1227146 m!4742663))

(declare-fun m!4742733 () Bool)

(assert (=> b!4146746 m!4742733))

(assert (=> b!4146746 m!4742733))

(declare-fun m!4742741 () Bool)

(assert (=> b!4146746 m!4742741))

(assert (=> b!4146674 d!1227146))

(declare-fun b!4146815 () Bool)

(declare-fun res!1697437 () Bool)

(declare-fun e!2572959 () Bool)

(assert (=> b!4146815 (=> (not res!1697437) (not e!2572959))))

(declare-fun lt!1479102 () Option!9708)

(assert (=> b!4146815 (= res!1697437 (= (value!231511 (_1!24823 (get!14698 lt!1479102))) (apply!10475 (transformation!7402 (rule!10528 (_1!24823 (get!14698 lt!1479102)))) (seqFromList!5519 (originalCharacters!7898 (_1!24823 (get!14698 lt!1479102)))))))))

(declare-fun d!1227148 () Bool)

(declare-fun e!2572958 () Bool)

(assert (=> d!1227148 e!2572958))

(declare-fun res!1697436 () Bool)

(assert (=> d!1227148 (=> res!1697436 e!2572958)))

(assert (=> d!1227148 (= res!1697436 (isEmpty!26859 lt!1479102))))

(declare-fun e!2572960 () Option!9708)

(assert (=> d!1227148 (= lt!1479102 e!2572960)))

(declare-fun c!710504 () Bool)

(assert (=> d!1227148 (= c!710504 (and ((_ is Cons!45005) rules!3756) ((_ is Nil!45005) (t!342856 rules!3756))))))

(declare-fun lt!1479105 () Unit!64289)

(declare-fun lt!1479103 () Unit!64289)

(assert (=> d!1227148 (= lt!1479105 lt!1479103)))

(assert (=> d!1227148 (isPrefix!4337 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2801 (List!45128 List!45128) Unit!64289)

(assert (=> d!1227148 (= lt!1479103 (lemmaIsPrefixRefl!2801 input!3238 input!3238))))

(declare-fun rulesValidInductive!2753 (LexerInterface!6991 List!45129) Bool)

(assert (=> d!1227148 (rulesValidInductive!2753 thiss!25645 rules!3756)))

(assert (=> d!1227148 (= (maxPrefix!4181 thiss!25645 rules!3756 input!3238) lt!1479102)))

(declare-fun b!4146816 () Bool)

(declare-fun res!1697433 () Bool)

(assert (=> b!4146816 (=> (not res!1697433) (not e!2572959))))

(assert (=> b!4146816 (= res!1697433 (< (size!33363 (_2!24823 (get!14698 lt!1479102))) (size!33363 input!3238)))))

(declare-fun b!4146817 () Bool)

(declare-fun res!1697435 () Bool)

(assert (=> b!4146817 (=> (not res!1697435) (not e!2572959))))

(declare-fun list!16483 (BalanceConc!26820) List!45128)

(assert (=> b!4146817 (= res!1697435 (matchR!6136 (regex!7402 (rule!10528 (_1!24823 (get!14698 lt!1479102)))) (list!16483 (charsOf!5001 (_1!24823 (get!14698 lt!1479102))))))))

(declare-fun b!4146818 () Bool)

(declare-fun res!1697438 () Bool)

(assert (=> b!4146818 (=> (not res!1697438) (not e!2572959))))

(assert (=> b!4146818 (= res!1697438 (= (list!16483 (charsOf!5001 (_1!24823 (get!14698 lt!1479102)))) (originalCharacters!7898 (_1!24823 (get!14698 lt!1479102)))))))

(declare-fun b!4146819 () Bool)

(assert (=> b!4146819 (= e!2572958 e!2572959)))

(declare-fun res!1697432 () Bool)

(assert (=> b!4146819 (=> (not res!1697432) (not e!2572959))))

(declare-fun isDefined!7293 (Option!9708) Bool)

(assert (=> b!4146819 (= res!1697432 (isDefined!7293 lt!1479102))))

(declare-fun b!4146820 () Bool)

(assert (=> b!4146820 (= e!2572959 (contains!9084 rules!3756 (rule!10528 (_1!24823 (get!14698 lt!1479102)))))))

(declare-fun b!4146821 () Bool)

(declare-fun call!290660 () Option!9708)

(assert (=> b!4146821 (= e!2572960 call!290660)))

(declare-fun b!4146822 () Bool)

(declare-fun res!1697434 () Bool)

(assert (=> b!4146822 (=> (not res!1697434) (not e!2572959))))

(assert (=> b!4146822 (= res!1697434 (= (++!11640 (list!16483 (charsOf!5001 (_1!24823 (get!14698 lt!1479102)))) (_2!24823 (get!14698 lt!1479102))) input!3238))))

(declare-fun b!4146823 () Bool)

(declare-fun lt!1479104 () Option!9708)

(declare-fun lt!1479106 () Option!9708)

(assert (=> b!4146823 (= e!2572960 (ite (and ((_ is None!9707) lt!1479104) ((_ is None!9707) lt!1479106)) None!9707 (ite ((_ is None!9707) lt!1479106) lt!1479104 (ite ((_ is None!9707) lt!1479104) lt!1479106 (ite (>= (size!33362 (_1!24823 (v!40361 lt!1479104))) (size!33362 (_1!24823 (v!40361 lt!1479106)))) lt!1479104 lt!1479106)))))))

(assert (=> b!4146823 (= lt!1479104 call!290660)))

(assert (=> b!4146823 (= lt!1479106 (maxPrefix!4181 thiss!25645 (t!342856 rules!3756) input!3238))))

(declare-fun bm!290655 () Bool)

(assert (=> bm!290655 (= call!290660 (maxPrefixOneRule!3120 thiss!25645 (h!50425 rules!3756) input!3238))))

(assert (= (and d!1227148 c!710504) b!4146821))

(assert (= (and d!1227148 (not c!710504)) b!4146823))

(assert (= (or b!4146821 b!4146823) bm!290655))

(assert (= (and d!1227148 (not res!1697436)) b!4146819))

(assert (= (and b!4146819 res!1697432) b!4146818))

(assert (= (and b!4146818 res!1697438) b!4146816))

(assert (= (and b!4146816 res!1697433) b!4146822))

(assert (= (and b!4146822 res!1697434) b!4146815))

(assert (= (and b!4146815 res!1697437) b!4146817))

(assert (= (and b!4146817 res!1697435) b!4146820))

(declare-fun m!4742795 () Bool)

(assert (=> b!4146816 m!4742795))

(declare-fun m!4742797 () Bool)

(assert (=> b!4146816 m!4742797))

(assert (=> b!4146816 m!4742729))

(assert (=> b!4146822 m!4742795))

(declare-fun m!4742799 () Bool)

(assert (=> b!4146822 m!4742799))

(assert (=> b!4146822 m!4742799))

(declare-fun m!4742801 () Bool)

(assert (=> b!4146822 m!4742801))

(assert (=> b!4146822 m!4742801))

(declare-fun m!4742809 () Bool)

(assert (=> b!4146822 m!4742809))

(assert (=> b!4146817 m!4742795))

(assert (=> b!4146817 m!4742799))

(assert (=> b!4146817 m!4742799))

(assert (=> b!4146817 m!4742801))

(assert (=> b!4146817 m!4742801))

(declare-fun m!4742829 () Bool)

(assert (=> b!4146817 m!4742829))

(declare-fun m!4742831 () Bool)

(assert (=> b!4146819 m!4742831))

(declare-fun m!4742837 () Bool)

(assert (=> b!4146823 m!4742837))

(assert (=> b!4146820 m!4742795))

(declare-fun m!4742845 () Bool)

(assert (=> b!4146820 m!4742845))

(assert (=> b!4146815 m!4742795))

(declare-fun m!4742847 () Bool)

(assert (=> b!4146815 m!4742847))

(assert (=> b!4146815 m!4742847))

(declare-fun m!4742857 () Bool)

(assert (=> b!4146815 m!4742857))

(assert (=> b!4146818 m!4742795))

(assert (=> b!4146818 m!4742799))

(assert (=> b!4146818 m!4742799))

(assert (=> b!4146818 m!4742801))

(declare-fun m!4742859 () Bool)

(assert (=> d!1227148 m!4742859))

(declare-fun m!4742861 () Bool)

(assert (=> d!1227148 m!4742861))

(declare-fun m!4742863 () Bool)

(assert (=> d!1227148 m!4742863))

(declare-fun m!4742865 () Bool)

(assert (=> d!1227148 m!4742865))

(declare-fun m!4742867 () Bool)

(assert (=> bm!290655 m!4742867))

(assert (=> b!4146674 d!1227148))

(declare-fun d!1227186 () Bool)

(declare-fun fromListB!2534 (List!45128) BalanceConc!26820)

(assert (=> d!1227186 (= (seqFromList!5519 p!2912) (fromListB!2534 p!2912))))

(declare-fun bs!595368 () Bool)

(assert (= bs!595368 d!1227186))

(declare-fun m!4742871 () Bool)

(assert (=> bs!595368 m!4742871))

(assert (=> b!4146674 d!1227186))

(declare-fun b!4146869 () Bool)

(declare-fun e!2572983 () Bool)

(assert (=> b!4146869 (= e!2572983 true)))

(declare-fun d!1227190 () Bool)

(assert (=> d!1227190 e!2572983))

(assert (= d!1227190 b!4146869))

(declare-fun order!23863 () Int)

(declare-fun lambda!128997 () Int)

(declare-fun order!23861 () Int)

(declare-fun dynLambda!19394 (Int Int) Int)

(declare-fun dynLambda!19395 (Int Int) Int)

(assert (=> b!4146869 (< (dynLambda!19394 order!23861 (toValue!10066 (transformation!7402 r!4008))) (dynLambda!19395 order!23863 lambda!128997))))

(declare-fun order!23865 () Int)

(declare-fun dynLambda!19396 (Int Int) Int)

(assert (=> b!4146869 (< (dynLambda!19396 order!23865 (toChars!9925 (transformation!7402 r!4008))) (dynLambda!19395 order!23863 lambda!128997))))

(declare-fun dynLambda!19397 (Int TokenValue!7632) BalanceConc!26820)

(assert (=> d!1227190 (= (list!16483 (dynLambda!19397 (toChars!9925 (transformation!7402 r!4008)) (dynLambda!19389 (toValue!10066 (transformation!7402 r!4008)) lt!1479050))) (list!16483 lt!1479050))))

(declare-fun lt!1479133 () Unit!64289)

(declare-fun ForallOf!986 (Int BalanceConc!26820) Unit!64289)

(assert (=> d!1227190 (= lt!1479133 (ForallOf!986 lambda!128997 lt!1479050))))

(assert (=> d!1227190 (= (lemmaSemiInverse!2260 (transformation!7402 r!4008) lt!1479050) lt!1479133)))

(declare-fun b_lambda!121949 () Bool)

(assert (=> (not b_lambda!121949) (not d!1227190)))

(declare-fun t!342882 () Bool)

(declare-fun tb!248971 () Bool)

(assert (=> (and b!4146672 (= (toChars!9925 (transformation!7402 rBis!149)) (toChars!9925 (transformation!7402 r!4008))) t!342882) tb!248971))

(declare-fun b!4146874 () Bool)

(declare-fun tp!1263911 () Bool)

(declare-fun e!2572986 () Bool)

(declare-fun inv!59619 (Conc!13613) Bool)

(assert (=> b!4146874 (= e!2572986 (and (inv!59619 (c!710486 (dynLambda!19397 (toChars!9925 (transformation!7402 r!4008)) (dynLambda!19389 (toValue!10066 (transformation!7402 r!4008)) lt!1479050)))) tp!1263911))))

(declare-fun result!302814 () Bool)

(declare-fun inv!59620 (BalanceConc!26820) Bool)

(assert (=> tb!248971 (= result!302814 (and (inv!59620 (dynLambda!19397 (toChars!9925 (transformation!7402 r!4008)) (dynLambda!19389 (toValue!10066 (transformation!7402 r!4008)) lt!1479050))) e!2572986))))

(assert (= tb!248971 b!4146874))

(declare-fun m!4742893 () Bool)

(assert (=> b!4146874 m!4742893))

(declare-fun m!4742895 () Bool)

(assert (=> tb!248971 m!4742895))

(assert (=> d!1227190 t!342882))

(declare-fun b_and!322367 () Bool)

(assert (= b_and!322327 (and (=> t!342882 result!302814) b_and!322367)))

(declare-fun tb!248973 () Bool)

(declare-fun t!342884 () Bool)

(assert (=> (and b!4146678 (= (toChars!9925 (transformation!7402 (h!50425 rules!3756))) (toChars!9925 (transformation!7402 r!4008))) t!342884) tb!248973))

(declare-fun result!302818 () Bool)

(assert (= result!302818 result!302814))

(assert (=> d!1227190 t!342884))

(declare-fun b_and!322369 () Bool)

(assert (= b_and!322331 (and (=> t!342884 result!302818) b_and!322369)))

(declare-fun t!342886 () Bool)

(declare-fun tb!248975 () Bool)

(assert (=> (and b!4146688 (= (toChars!9925 (transformation!7402 r!4008)) (toChars!9925 (transformation!7402 r!4008))) t!342886) tb!248975))

(declare-fun result!302820 () Bool)

(assert (= result!302820 result!302814))

(assert (=> d!1227190 t!342886))

(declare-fun b_and!322371 () Bool)

(assert (= b_and!322335 (and (=> t!342886 result!302820) b_and!322371)))

(declare-fun b_lambda!121951 () Bool)

(assert (=> (not b_lambda!121951) (not d!1227190)))

(assert (=> d!1227190 t!342858))

(declare-fun b_and!322373 () Bool)

(assert (= b_and!322337 (and (=> t!342858 result!302784) b_and!322373)))

(assert (=> d!1227190 t!342860))

(declare-fun b_and!322375 () Bool)

(assert (= b_and!322339 (and (=> t!342860 result!302788) b_and!322375)))

(assert (=> d!1227190 t!342862))

(declare-fun b_and!322377 () Bool)

(assert (= b_and!322341 (and (=> t!342862 result!302790) b_and!322377)))

(declare-fun m!4742897 () Bool)

(assert (=> d!1227190 m!4742897))

(declare-fun m!4742899 () Bool)

(assert (=> d!1227190 m!4742899))

(declare-fun m!4742901 () Bool)

(assert (=> d!1227190 m!4742901))

(assert (=> d!1227190 m!4742725))

(declare-fun m!4742903 () Bool)

(assert (=> d!1227190 m!4742903))

(assert (=> d!1227190 m!4742725))

(assert (=> d!1227190 m!4742897))

(assert (=> b!4146674 d!1227190))

(declare-fun d!1227198 () Bool)

(declare-fun lt!1479136 () Int)

(assert (=> d!1227198 (>= lt!1479136 0)))

(declare-fun e!2572989 () Int)

(assert (=> d!1227198 (= lt!1479136 e!2572989)))

(declare-fun c!710515 () Bool)

(assert (=> d!1227198 (= c!710515 ((_ is Nil!45004) p!2912))))

(assert (=> d!1227198 (= (size!33363 p!2912) lt!1479136)))

(declare-fun b!4146879 () Bool)

(assert (=> b!4146879 (= e!2572989 0)))

(declare-fun b!4146880 () Bool)

(assert (=> b!4146880 (= e!2572989 (+ 1 (size!33363 (t!342855 p!2912))))))

(assert (= (and d!1227198 c!710515) b!4146879))

(assert (= (and d!1227198 (not c!710515)) b!4146880))

(declare-fun m!4742905 () Bool)

(assert (=> b!4146880 m!4742905))

(assert (=> b!4146674 d!1227198))

(declare-fun d!1227200 () Bool)

(assert (=> d!1227200 (= (inv!59614 (tag!8262 r!4008)) (= (mod (str.len (value!231510 (tag!8262 r!4008))) 2) 0))))

(assert (=> b!4146685 d!1227200))

(declare-fun d!1227202 () Bool)

(declare-fun res!1697469 () Bool)

(declare-fun e!2572995 () Bool)

(assert (=> d!1227202 (=> (not res!1697469) (not e!2572995))))

(declare-fun semiInverseModEq!3203 (Int Int) Bool)

(assert (=> d!1227202 (= res!1697469 (semiInverseModEq!3203 (toChars!9925 (transformation!7402 r!4008)) (toValue!10066 (transformation!7402 r!4008))))))

(assert (=> d!1227202 (= (inv!59616 (transformation!7402 r!4008)) e!2572995)))

(declare-fun b!4146892 () Bool)

(declare-fun equivClasses!3102 (Int Int) Bool)

(assert (=> b!4146892 (= e!2572995 (equivClasses!3102 (toChars!9925 (transformation!7402 r!4008)) (toValue!10066 (transformation!7402 r!4008))))))

(assert (= (and d!1227202 res!1697469) b!4146892))

(declare-fun m!4742939 () Bool)

(assert (=> d!1227202 m!4742939))

(declare-fun m!4742941 () Bool)

(assert (=> b!4146892 m!4742941))

(assert (=> b!4146685 d!1227202))

(declare-fun b!4146909 () Bool)

(declare-fun e!2573005 () Int)

(assert (=> b!4146909 (= e!2573005 (+ 1 (getIndex!748 (t!342856 rules!3756) rBis!149)))))

(declare-fun b!4146908 () Bool)

(declare-fun e!2573004 () Int)

(assert (=> b!4146908 (= e!2573004 e!2573005)))

(declare-fun c!710524 () Bool)

(assert (=> b!4146908 (= c!710524 (and ((_ is Cons!45005) rules!3756) (not (= (h!50425 rules!3756) rBis!149))))))

(declare-fun d!1227206 () Bool)

(declare-fun lt!1479147 () Int)

(assert (=> d!1227206 (>= lt!1479147 0)))

(assert (=> d!1227206 (= lt!1479147 e!2573004)))

(declare-fun c!710525 () Bool)

(assert (=> d!1227206 (= c!710525 (and ((_ is Cons!45005) rules!3756) (= (h!50425 rules!3756) rBis!149)))))

(assert (=> d!1227206 (contains!9084 rules!3756 rBis!149)))

(assert (=> d!1227206 (= (getIndex!748 rules!3756 rBis!149) lt!1479147)))

(declare-fun b!4146910 () Bool)

(assert (=> b!4146910 (= e!2573005 (- 1))))

(declare-fun b!4146907 () Bool)

(assert (=> b!4146907 (= e!2573004 0)))

(assert (= (and d!1227206 c!710525) b!4146907))

(assert (= (and d!1227206 (not c!710525)) b!4146908))

(assert (= (and b!4146908 c!710524) b!4146909))

(assert (= (and b!4146908 (not c!710524)) b!4146910))

(declare-fun m!4742947 () Bool)

(assert (=> b!4146909 m!4742947))

(assert (=> d!1227206 m!4742675))

(assert (=> b!4146683 d!1227206))

(declare-fun b!4146915 () Bool)

(declare-fun e!2573009 () Int)

(assert (=> b!4146915 (= e!2573009 (+ 1 (getIndex!748 (t!342856 rules!3756) r!4008)))))

(declare-fun b!4146914 () Bool)

(declare-fun e!2573008 () Int)

(assert (=> b!4146914 (= e!2573008 e!2573009)))

(declare-fun c!710526 () Bool)

(assert (=> b!4146914 (= c!710526 (and ((_ is Cons!45005) rules!3756) (not (= (h!50425 rules!3756) r!4008))))))

(declare-fun d!1227212 () Bool)

(declare-fun lt!1479148 () Int)

(assert (=> d!1227212 (>= lt!1479148 0)))

(assert (=> d!1227212 (= lt!1479148 e!2573008)))

(declare-fun c!710527 () Bool)

(assert (=> d!1227212 (= c!710527 (and ((_ is Cons!45005) rules!3756) (= (h!50425 rules!3756) r!4008)))))

(assert (=> d!1227212 (contains!9084 rules!3756 r!4008)))

(assert (=> d!1227212 (= (getIndex!748 rules!3756 r!4008) lt!1479148)))

(declare-fun b!4146916 () Bool)

(assert (=> b!4146916 (= e!2573009 (- 1))))

(declare-fun b!4146913 () Bool)

(assert (=> b!4146913 (= e!2573008 0)))

(assert (= (and d!1227212 c!710527) b!4146913))

(assert (= (and d!1227212 (not c!710527)) b!4146914))

(assert (= (and b!4146914 c!710526) b!4146915))

(assert (= (and b!4146914 (not c!710526)) b!4146916))

(declare-fun m!4742949 () Bool)

(assert (=> b!4146915 m!4742949))

(assert (=> d!1227212 m!4742711))

(assert (=> b!4146683 d!1227212))

(declare-fun d!1227214 () Bool)

(assert (=> d!1227214 (= (isEmpty!26861 p!2912) ((_ is Nil!45004) p!2912))))

(assert (=> b!4146684 d!1227214))

(declare-fun d!1227218 () Bool)

(assert (=> d!1227218 (ruleValid!3208 thiss!25645 r!4008)))

(declare-fun lt!1479152 () Unit!64289)

(declare-fun choose!25392 (LexerInterface!6991 Rule!14604 List!45129) Unit!64289)

(assert (=> d!1227218 (= lt!1479152 (choose!25392 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1227218 (contains!9084 rules!3756 r!4008)))

(assert (=> d!1227218 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2248 thiss!25645 r!4008 rules!3756) lt!1479152)))

(declare-fun bs!595370 () Bool)

(assert (= bs!595370 d!1227218))

(assert (=> bs!595370 m!4742661))

(declare-fun m!4742963 () Bool)

(assert (=> bs!595370 m!4742963))

(assert (=> bs!595370 m!4742711))

(assert (=> b!4146671 d!1227218))

(declare-fun d!1227226 () Bool)

(declare-fun res!1697488 () Bool)

(declare-fun e!2573022 () Bool)

(assert (=> d!1227226 (=> (not res!1697488) (not e!2573022))))

(declare-fun validRegex!5549 (Regex!12307) Bool)

(assert (=> d!1227226 (= res!1697488 (validRegex!5549 (regex!7402 rBis!149)))))

(assert (=> d!1227226 (= (ruleValid!3208 thiss!25645 rBis!149) e!2573022)))

(declare-fun b!4146939 () Bool)

(declare-fun res!1697489 () Bool)

(assert (=> b!4146939 (=> (not res!1697489) (not e!2573022))))

(declare-fun nullable!4339 (Regex!12307) Bool)

(assert (=> b!4146939 (= res!1697489 (not (nullable!4339 (regex!7402 rBis!149))))))

(declare-fun b!4146940 () Bool)

(assert (=> b!4146940 (= e!2573022 (not (= (tag!8262 rBis!149) (String!51911 ""))))))

(assert (= (and d!1227226 res!1697488) b!4146939))

(assert (= (and b!4146939 res!1697489) b!4146940))

(declare-fun m!4742967 () Bool)

(assert (=> d!1227226 m!4742967))

(declare-fun m!4742969 () Bool)

(assert (=> b!4146939 m!4742969))

(assert (=> b!4146671 d!1227226))

(declare-fun d!1227232 () Bool)

(assert (=> d!1227232 (ruleValid!3208 thiss!25645 rBis!149)))

(declare-fun lt!1479156 () Unit!64289)

(assert (=> d!1227232 (= lt!1479156 (choose!25392 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1227232 (contains!9084 rules!3756 rBis!149)))

(assert (=> d!1227232 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2248 thiss!25645 rBis!149 rules!3756) lt!1479156)))

(declare-fun bs!595372 () Bool)

(assert (= bs!595372 d!1227232))

(assert (=> bs!595372 m!4742687))

(declare-fun m!4742971 () Bool)

(assert (=> bs!595372 m!4742971))

(assert (=> bs!595372 m!4742675))

(assert (=> b!4146671 d!1227232))

(declare-fun d!1227234 () Bool)

(assert (=> d!1227234 (= (isEmpty!26860 rules!3756) ((_ is Nil!45005) rules!3756))))

(assert (=> b!4146682 d!1227234))

(declare-fun d!1227236 () Bool)

(declare-fun res!1697492 () Bool)

(declare-fun e!2573030 () Bool)

(assert (=> d!1227236 (=> (not res!1697492) (not e!2573030))))

(declare-fun rulesValid!2916 (LexerInterface!6991 List!45129) Bool)

(assert (=> d!1227236 (= res!1697492 (rulesValid!2916 thiss!25645 rules!3756))))

(assert (=> d!1227236 (= (rulesInvariant!6288 thiss!25645 rules!3756) e!2573030)))

(declare-fun b!4146951 () Bool)

(declare-datatypes ((List!45131 0))(
  ( (Nil!45007) (Cons!45007 (h!50427 String!51910) (t!342906 List!45131)) )
))
(declare-fun noDuplicateTag!2999 (LexerInterface!6991 List!45129 List!45131) Bool)

(assert (=> b!4146951 (= e!2573030 (noDuplicateTag!2999 thiss!25645 rules!3756 Nil!45007))))

(assert (= (and d!1227236 res!1697492) b!4146951))

(declare-fun m!4742973 () Bool)

(assert (=> d!1227236 m!4742973))

(declare-fun m!4742975 () Bool)

(assert (=> b!4146951 m!4742975))

(assert (=> b!4146670 d!1227236))

(declare-fun d!1227238 () Bool)

(declare-fun lt!1479163 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6965 (List!45129) (InoxSet Rule!14604))

(assert (=> d!1227238 (= lt!1479163 (select (content!6965 rules!3756) r!4008))))

(declare-fun e!2573042 () Bool)

(assert (=> d!1227238 (= lt!1479163 e!2573042)))

(declare-fun res!1697497 () Bool)

(assert (=> d!1227238 (=> (not res!1697497) (not e!2573042))))

(assert (=> d!1227238 (= res!1697497 ((_ is Cons!45005) rules!3756))))

(assert (=> d!1227238 (= (contains!9084 rules!3756 r!4008) lt!1479163)))

(declare-fun b!4146974 () Bool)

(declare-fun e!2573041 () Bool)

(assert (=> b!4146974 (= e!2573042 e!2573041)))

(declare-fun res!1697498 () Bool)

(assert (=> b!4146974 (=> res!1697498 e!2573041)))

(assert (=> b!4146974 (= res!1697498 (= (h!50425 rules!3756) r!4008))))

(declare-fun b!4146975 () Bool)

(assert (=> b!4146975 (= e!2573041 (contains!9084 (t!342856 rules!3756) r!4008))))

(assert (= (and d!1227238 res!1697497) b!4146974))

(assert (= (and b!4146974 (not res!1697498)) b!4146975))

(declare-fun m!4742981 () Bool)

(assert (=> d!1227238 m!4742981))

(declare-fun m!4742983 () Bool)

(assert (=> d!1227238 m!4742983))

(declare-fun m!4742985 () Bool)

(assert (=> b!4146975 m!4742985))

(assert (=> b!4146681 d!1227238))

(declare-fun d!1227242 () Bool)

(declare-fun res!1697499 () Bool)

(declare-fun e!2573044 () Bool)

(assert (=> d!1227242 (=> (not res!1697499) (not e!2573044))))

(assert (=> d!1227242 (= res!1697499 (validRegex!5549 (regex!7402 r!4008)))))

(assert (=> d!1227242 (= (ruleValid!3208 thiss!25645 r!4008) e!2573044)))

(declare-fun b!4146980 () Bool)

(declare-fun res!1697500 () Bool)

(assert (=> b!4146980 (=> (not res!1697500) (not e!2573044))))

(assert (=> b!4146980 (= res!1697500 (not (nullable!4339 (regex!7402 r!4008))))))

(declare-fun b!4146981 () Bool)

(assert (=> b!4146981 (= e!2573044 (not (= (tag!8262 r!4008) (String!51911 ""))))))

(assert (= (and d!1227242 res!1697499) b!4146980))

(assert (= (and b!4146980 res!1697500) b!4146981))

(declare-fun m!4742987 () Bool)

(assert (=> d!1227242 m!4742987))

(declare-fun m!4742989 () Bool)

(assert (=> b!4146980 m!4742989))

(assert (=> b!4146679 d!1227242))

(declare-fun b!4147017 () Bool)

(declare-fun e!2573071 () Bool)

(assert (=> b!4147017 (= e!2573071 (isPrefix!4337 (tail!6591 p!2912) (tail!6591 input!3238)))))

(declare-fun b!4147015 () Bool)

(declare-fun e!2573070 () Bool)

(assert (=> b!4147015 (= e!2573070 e!2573071)))

(declare-fun res!1697509 () Bool)

(assert (=> b!4147015 (=> (not res!1697509) (not e!2573071))))

(assert (=> b!4147015 (= res!1697509 (not ((_ is Nil!45004) input!3238)))))

(declare-fun b!4147018 () Bool)

(declare-fun e!2573069 () Bool)

(assert (=> b!4147018 (= e!2573069 (>= (size!33363 input!3238) (size!33363 p!2912)))))

(declare-fun b!4147016 () Bool)

(declare-fun res!1697511 () Bool)

(assert (=> b!4147016 (=> (not res!1697511) (not e!2573071))))

(declare-fun head!8752 (List!45128) C!24800)

(assert (=> b!4147016 (= res!1697511 (= (head!8752 p!2912) (head!8752 input!3238)))))

(declare-fun d!1227244 () Bool)

(assert (=> d!1227244 e!2573069))

(declare-fun res!1697510 () Bool)

(assert (=> d!1227244 (=> res!1697510 e!2573069)))

(declare-fun lt!1479166 () Bool)

(assert (=> d!1227244 (= res!1697510 (not lt!1479166))))

(assert (=> d!1227244 (= lt!1479166 e!2573070)))

(declare-fun res!1697512 () Bool)

(assert (=> d!1227244 (=> res!1697512 e!2573070)))

(assert (=> d!1227244 (= res!1697512 ((_ is Nil!45004) p!2912))))

(assert (=> d!1227244 (= (isPrefix!4337 p!2912 input!3238) lt!1479166)))

(assert (= (and d!1227244 (not res!1697512)) b!4147015))

(assert (= (and b!4147015 res!1697509) b!4147016))

(assert (= (and b!4147016 res!1697511) b!4147017))

(assert (= (and d!1227244 (not res!1697510)) b!4147018))

(declare-fun m!4742995 () Bool)

(assert (=> b!4147017 m!4742995))

(assert (=> b!4147017 m!4742733))

(assert (=> b!4147017 m!4742995))

(assert (=> b!4147017 m!4742733))

(declare-fun m!4742997 () Bool)

(assert (=> b!4147017 m!4742997))

(assert (=> b!4147018 m!4742729))

(assert (=> b!4147018 m!4742663))

(declare-fun m!4742999 () Bool)

(assert (=> b!4147016 m!4742999))

(declare-fun m!4743001 () Bool)

(assert (=> b!4147016 m!4743001))

(assert (=> b!4146669 d!1227244))

(declare-fun b!4147047 () Bool)

(declare-fun res!1697535 () Bool)

(declare-fun e!2573087 () Bool)

(assert (=> b!4147047 (=> (not res!1697535) (not e!2573087))))

(declare-fun call!290667 () Bool)

(assert (=> b!4147047 (= res!1697535 (not call!290667))))

(declare-fun b!4147048 () Bool)

(declare-fun e!2573088 () Bool)

(declare-fun e!2573091 () Bool)

(assert (=> b!4147048 (= e!2573088 e!2573091)))

(declare-fun c!710546 () Bool)

(assert (=> b!4147048 (= c!710546 ((_ is EmptyLang!12307) (regex!7402 rBis!149)))))

(declare-fun bm!290662 () Bool)

(assert (=> bm!290662 (= call!290667 (isEmpty!26861 p!2912))))

(declare-fun b!4147049 () Bool)

(declare-fun res!1697529 () Bool)

(declare-fun e!2573090 () Bool)

(assert (=> b!4147049 (=> res!1697529 e!2573090)))

(assert (=> b!4147049 (= res!1697529 e!2573087)))

(declare-fun res!1697533 () Bool)

(assert (=> b!4147049 (=> (not res!1697533) (not e!2573087))))

(declare-fun lt!1479169 () Bool)

(assert (=> b!4147049 (= res!1697533 lt!1479169)))

(declare-fun b!4147050 () Bool)

(declare-fun e!2573089 () Bool)

(assert (=> b!4147050 (= e!2573089 (nullable!4339 (regex!7402 rBis!149)))))

(declare-fun b!4147051 () Bool)

(assert (=> b!4147051 (= e!2573088 (= lt!1479169 call!290667))))

(declare-fun b!4147052 () Bool)

(assert (=> b!4147052 (= e!2573091 (not lt!1479169))))

(declare-fun b!4147053 () Bool)

(declare-fun e!2573092 () Bool)

(assert (=> b!4147053 (= e!2573092 (not (= (head!8752 p!2912) (c!710487 (regex!7402 rBis!149)))))))

(declare-fun b!4147055 () Bool)

(declare-fun derivativeStep!3733 (Regex!12307 C!24800) Regex!12307)

(assert (=> b!4147055 (= e!2573089 (matchR!6136 (derivativeStep!3733 (regex!7402 rBis!149) (head!8752 p!2912)) (tail!6591 p!2912)))))

(declare-fun b!4147056 () Bool)

(declare-fun res!1697534 () Bool)

(assert (=> b!4147056 (=> res!1697534 e!2573090)))

(assert (=> b!4147056 (= res!1697534 (not ((_ is ElementMatch!12307) (regex!7402 rBis!149))))))

(assert (=> b!4147056 (= e!2573091 e!2573090)))

(declare-fun b!4147057 () Bool)

(declare-fun e!2573086 () Bool)

(assert (=> b!4147057 (= e!2573090 e!2573086)))

(declare-fun res!1697531 () Bool)

(assert (=> b!4147057 (=> (not res!1697531) (not e!2573086))))

(assert (=> b!4147057 (= res!1697531 (not lt!1479169))))

(declare-fun b!4147058 () Bool)

(assert (=> b!4147058 (= e!2573087 (= (head!8752 p!2912) (c!710487 (regex!7402 rBis!149))))))

(declare-fun d!1227246 () Bool)

(assert (=> d!1227246 e!2573088))

(declare-fun c!710547 () Bool)

(assert (=> d!1227246 (= c!710547 ((_ is EmptyExpr!12307) (regex!7402 rBis!149)))))

(assert (=> d!1227246 (= lt!1479169 e!2573089)))

(declare-fun c!710545 () Bool)

(assert (=> d!1227246 (= c!710545 (isEmpty!26861 p!2912))))

(assert (=> d!1227246 (validRegex!5549 (regex!7402 rBis!149))))

(assert (=> d!1227246 (= (matchR!6136 (regex!7402 rBis!149) p!2912) lt!1479169)))

(declare-fun b!4147054 () Bool)

(assert (=> b!4147054 (= e!2573086 e!2573092)))

(declare-fun res!1697532 () Bool)

(assert (=> b!4147054 (=> res!1697532 e!2573092)))

(assert (=> b!4147054 (= res!1697532 call!290667)))

(declare-fun b!4147059 () Bool)

(declare-fun res!1697536 () Bool)

(assert (=> b!4147059 (=> (not res!1697536) (not e!2573087))))

(assert (=> b!4147059 (= res!1697536 (isEmpty!26861 (tail!6591 p!2912)))))

(declare-fun b!4147060 () Bool)

(declare-fun res!1697530 () Bool)

(assert (=> b!4147060 (=> res!1697530 e!2573092)))

(assert (=> b!4147060 (= res!1697530 (not (isEmpty!26861 (tail!6591 p!2912))))))

(assert (= (and d!1227246 c!710545) b!4147050))

(assert (= (and d!1227246 (not c!710545)) b!4147055))

(assert (= (and d!1227246 c!710547) b!4147051))

(assert (= (and d!1227246 (not c!710547)) b!4147048))

(assert (= (and b!4147048 c!710546) b!4147052))

(assert (= (and b!4147048 (not c!710546)) b!4147056))

(assert (= (and b!4147056 (not res!1697534)) b!4147049))

(assert (= (and b!4147049 res!1697533) b!4147047))

(assert (= (and b!4147047 res!1697535) b!4147059))

(assert (= (and b!4147059 res!1697536) b!4147058))

(assert (= (and b!4147049 (not res!1697529)) b!4147057))

(assert (= (and b!4147057 res!1697531) b!4147054))

(assert (= (and b!4147054 (not res!1697532)) b!4147060))

(assert (= (and b!4147060 (not res!1697530)) b!4147053))

(assert (= (or b!4147051 b!4147047 b!4147054) bm!290662))

(assert (=> b!4147059 m!4742995))

(assert (=> b!4147059 m!4742995))

(declare-fun m!4743003 () Bool)

(assert (=> b!4147059 m!4743003))

(assert (=> b!4147053 m!4742999))

(assert (=> b!4147050 m!4742969))

(assert (=> d!1227246 m!4742691))

(assert (=> d!1227246 m!4742967))

(assert (=> bm!290662 m!4742691))

(assert (=> b!4147058 m!4742999))

(assert (=> b!4147060 m!4742995))

(assert (=> b!4147060 m!4742995))

(assert (=> b!4147060 m!4743003))

(assert (=> b!4147055 m!4742999))

(assert (=> b!4147055 m!4742999))

(declare-fun m!4743005 () Bool)

(assert (=> b!4147055 m!4743005))

(assert (=> b!4147055 m!4742995))

(assert (=> b!4147055 m!4743005))

(assert (=> b!4147055 m!4742995))

(declare-fun m!4743007 () Bool)

(assert (=> b!4147055 m!4743007))

(assert (=> b!4146667 d!1227246))

(declare-fun d!1227248 () Bool)

(assert (=> d!1227248 (not (= (tag!8262 rBis!149) (tag!8262 r!4008)))))

(declare-fun lt!1479172 () Unit!64289)

(declare-fun choose!25394 (LexerInterface!6991 List!45129 Rule!14604 Rule!14604) Unit!64289)

(assert (=> d!1227248 (= lt!1479172 (choose!25394 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1227248 (contains!9084 rules!3756 rBis!149)))

(assert (=> d!1227248 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!64 thiss!25645 rules!3756 rBis!149 r!4008) lt!1479172)))

(declare-fun bs!595373 () Bool)

(assert (= bs!595373 d!1227248))

(declare-fun m!4743009 () Bool)

(assert (=> bs!595373 m!4743009))

(assert (=> bs!595373 m!4742675))

(assert (=> b!4146667 d!1227248))

(declare-fun d!1227250 () Bool)

(assert (=> d!1227250 (= (inv!59614 (tag!8262 rBis!149)) (= (mod (str.len (value!231510 (tag!8262 rBis!149))) 2) 0))))

(assert (=> b!4146668 d!1227250))

(declare-fun d!1227252 () Bool)

(declare-fun res!1697537 () Bool)

(declare-fun e!2573093 () Bool)

(assert (=> d!1227252 (=> (not res!1697537) (not e!2573093))))

(assert (=> d!1227252 (= res!1697537 (semiInverseModEq!3203 (toChars!9925 (transformation!7402 rBis!149)) (toValue!10066 (transformation!7402 rBis!149))))))

(assert (=> d!1227252 (= (inv!59616 (transformation!7402 rBis!149)) e!2573093)))

(declare-fun b!4147061 () Bool)

(assert (=> b!4147061 (= e!2573093 (equivClasses!3102 (toChars!9925 (transformation!7402 rBis!149)) (toValue!10066 (transformation!7402 rBis!149))))))

(assert (= (and d!1227252 res!1697537) b!4147061))

(declare-fun m!4743011 () Bool)

(assert (=> d!1227252 m!4743011))

(declare-fun m!4743013 () Bool)

(assert (=> b!4147061 m!4743013))

(assert (=> b!4146668 d!1227252))

(declare-fun d!1227254 () Bool)

(declare-fun lt!1479173 () Bool)

(assert (=> d!1227254 (= lt!1479173 (select (content!6965 (tail!6589 rules!3756)) r!4008))))

(declare-fun e!2573095 () Bool)

(assert (=> d!1227254 (= lt!1479173 e!2573095)))

(declare-fun res!1697538 () Bool)

(assert (=> d!1227254 (=> (not res!1697538) (not e!2573095))))

(assert (=> d!1227254 (= res!1697538 ((_ is Cons!45005) (tail!6589 rules!3756)))))

(assert (=> d!1227254 (= (contains!9084 (tail!6589 rules!3756) r!4008) lt!1479173)))

(declare-fun b!4147062 () Bool)

(declare-fun e!2573094 () Bool)

(assert (=> b!4147062 (= e!2573095 e!2573094)))

(declare-fun res!1697539 () Bool)

(assert (=> b!4147062 (=> res!1697539 e!2573094)))

(assert (=> b!4147062 (= res!1697539 (= (h!50425 (tail!6589 rules!3756)) r!4008))))

(declare-fun b!4147063 () Bool)

(assert (=> b!4147063 (= e!2573094 (contains!9084 (t!342856 (tail!6589 rules!3756)) r!4008))))

(assert (= (and d!1227254 res!1697538) b!4147062))

(assert (= (and b!4147062 (not res!1697539)) b!4147063))

(assert (=> d!1227254 m!4742699))

(declare-fun m!4743015 () Bool)

(assert (=> d!1227254 m!4743015))

(declare-fun m!4743017 () Bool)

(assert (=> d!1227254 m!4743017))

(declare-fun m!4743019 () Bool)

(assert (=> b!4147063 m!4743019))

(assert (=> b!4146666 d!1227254))

(declare-fun d!1227256 () Bool)

(assert (=> d!1227256 (= (tail!6589 rules!3756) (t!342856 rules!3756))))

(assert (=> b!4146666 d!1227256))

(declare-fun d!1227258 () Bool)

(assert (=> d!1227258 (contains!9084 (tail!6589 rules!3756) r!4008)))

(declare-fun lt!1479176 () Unit!64289)

(declare-fun choose!25395 (List!45129 Rule!14604 Rule!14604) Unit!64289)

(assert (=> d!1227258 (= lt!1479176 (choose!25395 rules!3756 rBis!149 r!4008))))

(declare-fun e!2573098 () Bool)

(assert (=> d!1227258 e!2573098))

(declare-fun res!1697542 () Bool)

(assert (=> d!1227258 (=> (not res!1697542) (not e!2573098))))

(assert (=> d!1227258 (= res!1697542 (contains!9084 rules!3756 rBis!149))))

(assert (=> d!1227258 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!106 rules!3756 rBis!149 r!4008) lt!1479176)))

(declare-fun b!4147066 () Bool)

(assert (=> b!4147066 (= e!2573098 (contains!9084 rules!3756 r!4008))))

(assert (= (and d!1227258 res!1697542) b!4147066))

(assert (=> d!1227258 m!4742699))

(assert (=> d!1227258 m!4742699))

(assert (=> d!1227258 m!4742705))

(declare-fun m!4743021 () Bool)

(assert (=> d!1227258 m!4743021))

(assert (=> d!1227258 m!4742675))

(assert (=> b!4147066 m!4742711))

(assert (=> b!4146666 d!1227258))

(declare-fun d!1227260 () Bool)

(declare-fun e!2573108 () Bool)

(assert (=> d!1227260 e!2573108))

(declare-fun res!1697561 () Bool)

(assert (=> d!1227260 (=> res!1697561 e!2573108)))

(declare-fun lt!1479189 () Option!9708)

(assert (=> d!1227260 (= res!1697561 (isEmpty!26859 lt!1479189))))

(declare-fun e!2573110 () Option!9708)

(assert (=> d!1227260 (= lt!1479189 e!2573110)))

(declare-fun c!710550 () Bool)

(declare-datatypes ((tuple2!43382 0))(
  ( (tuple2!43383 (_1!24825 List!45128) (_2!24825 List!45128)) )
))
(declare-fun lt!1479188 () tuple2!43382)

(assert (=> d!1227260 (= c!710550 (isEmpty!26861 (_1!24825 lt!1479188)))))

(declare-fun findLongestMatch!1456 (Regex!12307 List!45128) tuple2!43382)

(assert (=> d!1227260 (= lt!1479188 (findLongestMatch!1456 (regex!7402 rBis!149) input!3238))))

(assert (=> d!1227260 (ruleValid!3208 thiss!25645 rBis!149)))

(assert (=> d!1227260 (= (maxPrefixOneRule!3120 thiss!25645 rBis!149 input!3238) lt!1479189)))

(declare-fun b!4147085 () Bool)

(assert (=> b!4147085 (= e!2573110 None!9707)))

(declare-fun b!4147086 () Bool)

(declare-fun res!1697557 () Bool)

(declare-fun e!2573109 () Bool)

(assert (=> b!4147086 (=> (not res!1697557) (not e!2573109))))

(assert (=> b!4147086 (= res!1697557 (= (rule!10528 (_1!24823 (get!14698 lt!1479189))) rBis!149))))

(declare-fun b!4147087 () Bool)

(assert (=> b!4147087 (= e!2573109 (= (size!33362 (_1!24823 (get!14698 lt!1479189))) (size!33363 (originalCharacters!7898 (_1!24823 (get!14698 lt!1479189))))))))

(declare-fun b!4147088 () Bool)

(declare-fun res!1697562 () Bool)

(assert (=> b!4147088 (=> (not res!1697562) (not e!2573109))))

(assert (=> b!4147088 (= res!1697562 (= (value!231511 (_1!24823 (get!14698 lt!1479189))) (apply!10475 (transformation!7402 (rule!10528 (_1!24823 (get!14698 lt!1479189)))) (seqFromList!5519 (originalCharacters!7898 (_1!24823 (get!14698 lt!1479189)))))))))

(declare-fun b!4147089 () Bool)

(declare-fun res!1697563 () Bool)

(assert (=> b!4147089 (=> (not res!1697563) (not e!2573109))))

(assert (=> b!4147089 (= res!1697563 (< (size!33363 (_2!24823 (get!14698 lt!1479189))) (size!33363 input!3238)))))

(declare-fun b!4147090 () Bool)

(declare-fun res!1697559 () Bool)

(assert (=> b!4147090 (=> (not res!1697559) (not e!2573109))))

(assert (=> b!4147090 (= res!1697559 (= (++!11640 (list!16483 (charsOf!5001 (_1!24823 (get!14698 lt!1479189)))) (_2!24823 (get!14698 lt!1479189))) input!3238))))

(declare-fun b!4147091 () Bool)

(assert (=> b!4147091 (= e!2573108 e!2573109)))

(declare-fun res!1697558 () Bool)

(assert (=> b!4147091 (=> (not res!1697558) (not e!2573109))))

(assert (=> b!4147091 (= res!1697558 (matchR!6136 (regex!7402 rBis!149) (list!16483 (charsOf!5001 (_1!24823 (get!14698 lt!1479189))))))))

(declare-fun b!4147092 () Bool)

(declare-fun e!2573107 () Bool)

(declare-fun findLongestMatchInner!1543 (Regex!12307 List!45128 Int List!45128 List!45128 Int) tuple2!43382)

(assert (=> b!4147092 (= e!2573107 (matchR!6136 (regex!7402 rBis!149) (_1!24825 (findLongestMatchInner!1543 (regex!7402 rBis!149) Nil!45004 (size!33363 Nil!45004) input!3238 input!3238 (size!33363 input!3238)))))))

(declare-fun b!4147093 () Bool)

(assert (=> b!4147093 (= e!2573110 (Some!9707 (tuple2!43379 (Token!13735 (apply!10475 (transformation!7402 rBis!149) (seqFromList!5519 (_1!24825 lt!1479188))) rBis!149 (size!33364 (seqFromList!5519 (_1!24825 lt!1479188))) (_1!24825 lt!1479188)) (_2!24825 lt!1479188))))))

(declare-fun lt!1479190 () Unit!64289)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1516 (Regex!12307 List!45128) Unit!64289)

(assert (=> b!4147093 (= lt!1479190 (longestMatchIsAcceptedByMatchOrIsEmpty!1516 (regex!7402 rBis!149) input!3238))))

(declare-fun res!1697560 () Bool)

(assert (=> b!4147093 (= res!1697560 (isEmpty!26861 (_1!24825 (findLongestMatchInner!1543 (regex!7402 rBis!149) Nil!45004 (size!33363 Nil!45004) input!3238 input!3238 (size!33363 input!3238)))))))

(assert (=> b!4147093 (=> res!1697560 e!2573107)))

(assert (=> b!4147093 e!2573107))

(declare-fun lt!1479187 () Unit!64289)

(assert (=> b!4147093 (= lt!1479187 lt!1479190)))

(declare-fun lt!1479191 () Unit!64289)

(assert (=> b!4147093 (= lt!1479191 (lemmaSemiInverse!2260 (transformation!7402 rBis!149) (seqFromList!5519 (_1!24825 lt!1479188))))))

(assert (= (and d!1227260 c!710550) b!4147085))

(assert (= (and d!1227260 (not c!710550)) b!4147093))

(assert (= (and b!4147093 (not res!1697560)) b!4147092))

(assert (= (and d!1227260 (not res!1697561)) b!4147091))

(assert (= (and b!4147091 res!1697558) b!4147090))

(assert (= (and b!4147090 res!1697559) b!4147089))

(assert (= (and b!4147089 res!1697563) b!4147086))

(assert (= (and b!4147086 res!1697557) b!4147088))

(assert (= (and b!4147088 res!1697562) b!4147087))

(declare-fun m!4743023 () Bool)

(assert (=> b!4147086 m!4743023))

(declare-fun m!4743025 () Bool)

(assert (=> b!4147093 m!4743025))

(declare-fun m!4743027 () Bool)

(assert (=> b!4147093 m!4743027))

(assert (=> b!4147093 m!4743025))

(assert (=> b!4147093 m!4742729))

(declare-fun m!4743029 () Bool)

(assert (=> b!4147093 m!4743029))

(assert (=> b!4147093 m!4742729))

(declare-fun m!4743031 () Bool)

(assert (=> b!4147093 m!4743031))

(declare-fun m!4743033 () Bool)

(assert (=> b!4147093 m!4743033))

(assert (=> b!4147093 m!4743033))

(declare-fun m!4743035 () Bool)

(assert (=> b!4147093 m!4743035))

(assert (=> b!4147093 m!4743033))

(declare-fun m!4743037 () Bool)

(assert (=> b!4147093 m!4743037))

(assert (=> b!4147093 m!4743033))

(declare-fun m!4743039 () Bool)

(assert (=> b!4147093 m!4743039))

(assert (=> b!4147087 m!4743023))

(declare-fun m!4743041 () Bool)

(assert (=> b!4147087 m!4743041))

(assert (=> b!4147091 m!4743023))

(declare-fun m!4743043 () Bool)

(assert (=> b!4147091 m!4743043))

(assert (=> b!4147091 m!4743043))

(declare-fun m!4743045 () Bool)

(assert (=> b!4147091 m!4743045))

(assert (=> b!4147091 m!4743045))

(declare-fun m!4743047 () Bool)

(assert (=> b!4147091 m!4743047))

(assert (=> b!4147089 m!4743023))

(declare-fun m!4743049 () Bool)

(assert (=> b!4147089 m!4743049))

(assert (=> b!4147089 m!4742729))

(declare-fun m!4743051 () Bool)

(assert (=> d!1227260 m!4743051))

(declare-fun m!4743053 () Bool)

(assert (=> d!1227260 m!4743053))

(declare-fun m!4743055 () Bool)

(assert (=> d!1227260 m!4743055))

(assert (=> d!1227260 m!4742687))

(assert (=> b!4147088 m!4743023))

(declare-fun m!4743057 () Bool)

(assert (=> b!4147088 m!4743057))

(assert (=> b!4147088 m!4743057))

(declare-fun m!4743059 () Bool)

(assert (=> b!4147088 m!4743059))

(assert (=> b!4147090 m!4743023))

(assert (=> b!4147090 m!4743043))

(assert (=> b!4147090 m!4743043))

(assert (=> b!4147090 m!4743045))

(assert (=> b!4147090 m!4743045))

(declare-fun m!4743061 () Bool)

(assert (=> b!4147090 m!4743061))

(assert (=> b!4147092 m!4743025))

(assert (=> b!4147092 m!4742729))

(assert (=> b!4147092 m!4743025))

(assert (=> b!4147092 m!4742729))

(assert (=> b!4147092 m!4743029))

(declare-fun m!4743063 () Bool)

(assert (=> b!4147092 m!4743063))

(assert (=> b!4146666 d!1227260))

(declare-fun d!1227262 () Bool)

(assert (=> d!1227262 (not (= rBis!149 r!4008))))

(declare-fun lt!1479194 () Unit!64289)

(declare-fun choose!25396 (LexerInterface!6991 List!45129 Rule!14604 Rule!14604) Unit!64289)

(assert (=> d!1227262 (= lt!1479194 (choose!25396 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1227262 (contains!9084 rules!3756 rBis!149)))

(assert (=> d!1227262 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!100 thiss!25645 rules!3756 rBis!149 r!4008) lt!1479194)))

(declare-fun bs!595374 () Bool)

(assert (= bs!595374 d!1227262))

(declare-fun m!4743065 () Bool)

(assert (=> bs!595374 m!4743065))

(assert (=> bs!595374 m!4742675))

(assert (=> b!4146666 d!1227262))

(declare-fun d!1227264 () Bool)

(assert (=> d!1227264 (= (isEmpty!26859 lt!1479045) (not ((_ is Some!9707) lt!1479045)))))

(assert (=> b!4146666 d!1227264))

(declare-fun d!1227266 () Bool)

(declare-fun lt!1479197 () Int)

(assert (=> d!1227266 (= lt!1479197 (size!33363 (list!16483 (charsOf!5001 (_1!24823 lt!1479043)))))))

(declare-fun size!33366 (Conc!13613) Int)

(assert (=> d!1227266 (= lt!1479197 (size!33366 (c!710486 (charsOf!5001 (_1!24823 lt!1479043)))))))

(assert (=> d!1227266 (= (size!33364 (charsOf!5001 (_1!24823 lt!1479043))) lt!1479197)))

(declare-fun bs!595375 () Bool)

(assert (= bs!595375 d!1227266))

(assert (=> bs!595375 m!4742649))

(declare-fun m!4743067 () Bool)

(assert (=> bs!595375 m!4743067))

(assert (=> bs!595375 m!4743067))

(declare-fun m!4743069 () Bool)

(assert (=> bs!595375 m!4743069))

(declare-fun m!4743071 () Bool)

(assert (=> bs!595375 m!4743071))

(assert (=> b!4146677 d!1227266))

(declare-fun d!1227268 () Bool)

(declare-fun lt!1479200 () BalanceConc!26820)

(assert (=> d!1227268 (= (list!16483 lt!1479200) (originalCharacters!7898 (_1!24823 lt!1479043)))))

(assert (=> d!1227268 (= lt!1479200 (dynLambda!19397 (toChars!9925 (transformation!7402 (rule!10528 (_1!24823 lt!1479043)))) (value!231511 (_1!24823 lt!1479043))))))

(assert (=> d!1227268 (= (charsOf!5001 (_1!24823 lt!1479043)) lt!1479200)))

(declare-fun b_lambda!121959 () Bool)

(assert (=> (not b_lambda!121959) (not d!1227268)))

(declare-fun t!342894 () Bool)

(declare-fun tb!248983 () Bool)

(assert (=> (and b!4146672 (= (toChars!9925 (transformation!7402 rBis!149)) (toChars!9925 (transformation!7402 (rule!10528 (_1!24823 lt!1479043))))) t!342894) tb!248983))

(declare-fun b!4147094 () Bool)

(declare-fun e!2573111 () Bool)

(declare-fun tp!1263953 () Bool)

(assert (=> b!4147094 (= e!2573111 (and (inv!59619 (c!710486 (dynLambda!19397 (toChars!9925 (transformation!7402 (rule!10528 (_1!24823 lt!1479043)))) (value!231511 (_1!24823 lt!1479043))))) tp!1263953))))

(declare-fun result!302834 () Bool)

(assert (=> tb!248983 (= result!302834 (and (inv!59620 (dynLambda!19397 (toChars!9925 (transformation!7402 (rule!10528 (_1!24823 lt!1479043)))) (value!231511 (_1!24823 lt!1479043)))) e!2573111))))

(assert (= tb!248983 b!4147094))

(declare-fun m!4743073 () Bool)

(assert (=> b!4147094 m!4743073))

(declare-fun m!4743075 () Bool)

(assert (=> tb!248983 m!4743075))

(assert (=> d!1227268 t!342894))

(declare-fun b_and!322383 () Bool)

(assert (= b_and!322367 (and (=> t!342894 result!302834) b_and!322383)))

(declare-fun tb!248985 () Bool)

(declare-fun t!342896 () Bool)

(assert (=> (and b!4146678 (= (toChars!9925 (transformation!7402 (h!50425 rules!3756))) (toChars!9925 (transformation!7402 (rule!10528 (_1!24823 lt!1479043))))) t!342896) tb!248985))

(declare-fun result!302836 () Bool)

(assert (= result!302836 result!302834))

(assert (=> d!1227268 t!342896))

(declare-fun b_and!322385 () Bool)

(assert (= b_and!322369 (and (=> t!342896 result!302836) b_and!322385)))

(declare-fun t!342898 () Bool)

(declare-fun tb!248987 () Bool)

(assert (=> (and b!4146688 (= (toChars!9925 (transformation!7402 r!4008)) (toChars!9925 (transformation!7402 (rule!10528 (_1!24823 lt!1479043))))) t!342898) tb!248987))

(declare-fun result!302838 () Bool)

(assert (= result!302838 result!302834))

(assert (=> d!1227268 t!342898))

(declare-fun b_and!322387 () Bool)

(assert (= b_and!322371 (and (=> t!342898 result!302838) b_and!322387)))

(declare-fun m!4743077 () Bool)

(assert (=> d!1227268 m!4743077))

(declare-fun m!4743079 () Bool)

(assert (=> d!1227268 m!4743079))

(assert (=> b!4146677 d!1227268))

(declare-fun d!1227270 () Bool)

(assert (=> d!1227270 (= (get!14698 lt!1479045) (v!40361 lt!1479045))))

(assert (=> b!4146677 d!1227270))

(declare-fun d!1227272 () Bool)

(assert (=> d!1227272 (= (inv!59614 (tag!8262 (h!50425 rules!3756))) (= (mod (str.len (value!231510 (tag!8262 (h!50425 rules!3756)))) 2) 0))))

(assert (=> b!4146675 d!1227272))

(declare-fun d!1227274 () Bool)

(declare-fun res!1697564 () Bool)

(declare-fun e!2573112 () Bool)

(assert (=> d!1227274 (=> (not res!1697564) (not e!2573112))))

(assert (=> d!1227274 (= res!1697564 (semiInverseModEq!3203 (toChars!9925 (transformation!7402 (h!50425 rules!3756))) (toValue!10066 (transformation!7402 (h!50425 rules!3756)))))))

(assert (=> d!1227274 (= (inv!59616 (transformation!7402 (h!50425 rules!3756))) e!2573112)))

(declare-fun b!4147095 () Bool)

(assert (=> b!4147095 (= e!2573112 (equivClasses!3102 (toChars!9925 (transformation!7402 (h!50425 rules!3756))) (toValue!10066 (transformation!7402 (h!50425 rules!3756)))))))

(assert (= (and d!1227274 res!1697564) b!4147095))

(declare-fun m!4743081 () Bool)

(assert (=> d!1227274 m!4743081))

(declare-fun m!4743083 () Bool)

(assert (=> b!4147095 m!4743083))

(assert (=> b!4146675 d!1227274))

(declare-fun d!1227276 () Bool)

(declare-fun lt!1479201 () Bool)

(assert (=> d!1227276 (= lt!1479201 (select (content!6965 rules!3756) rBis!149))))

(declare-fun e!2573114 () Bool)

(assert (=> d!1227276 (= lt!1479201 e!2573114)))

(declare-fun res!1697565 () Bool)

(assert (=> d!1227276 (=> (not res!1697565) (not e!2573114))))

(assert (=> d!1227276 (= res!1697565 ((_ is Cons!45005) rules!3756))))

(assert (=> d!1227276 (= (contains!9084 rules!3756 rBis!149) lt!1479201)))

(declare-fun b!4147096 () Bool)

(declare-fun e!2573113 () Bool)

(assert (=> b!4147096 (= e!2573114 e!2573113)))

(declare-fun res!1697566 () Bool)

(assert (=> b!4147096 (=> res!1697566 e!2573113)))

(assert (=> b!4147096 (= res!1697566 (= (h!50425 rules!3756) rBis!149))))

(declare-fun b!4147097 () Bool)

(assert (=> b!4147097 (= e!2573113 (contains!9084 (t!342856 rules!3756) rBis!149))))

(assert (= (and d!1227276 res!1697565) b!4147096))

(assert (= (and b!4147096 (not res!1697566)) b!4147097))

(assert (=> d!1227276 m!4742981))

(declare-fun m!4743085 () Bool)

(assert (=> d!1227276 m!4743085))

(declare-fun m!4743087 () Bool)

(assert (=> b!4147097 m!4743087))

(assert (=> b!4146686 d!1227276))

(declare-fun b!4147098 () Bool)

(declare-fun res!1697573 () Bool)

(declare-fun e!2573116 () Bool)

(assert (=> b!4147098 (=> (not res!1697573) (not e!2573116))))

(declare-fun call!290668 () Bool)

(assert (=> b!4147098 (= res!1697573 (not call!290668))))

(declare-fun b!4147099 () Bool)

(declare-fun e!2573117 () Bool)

(declare-fun e!2573120 () Bool)

(assert (=> b!4147099 (= e!2573117 e!2573120)))

(declare-fun c!710552 () Bool)

(assert (=> b!4147099 (= c!710552 ((_ is EmptyLang!12307) (regex!7402 r!4008)))))

(declare-fun bm!290663 () Bool)

(assert (=> bm!290663 (= call!290668 (isEmpty!26861 p!2912))))

(declare-fun b!4147100 () Bool)

(declare-fun res!1697567 () Bool)

(declare-fun e!2573119 () Bool)

(assert (=> b!4147100 (=> res!1697567 e!2573119)))

(assert (=> b!4147100 (= res!1697567 e!2573116)))

(declare-fun res!1697571 () Bool)

(assert (=> b!4147100 (=> (not res!1697571) (not e!2573116))))

(declare-fun lt!1479202 () Bool)

(assert (=> b!4147100 (= res!1697571 lt!1479202)))

(declare-fun b!4147101 () Bool)

(declare-fun e!2573118 () Bool)

(assert (=> b!4147101 (= e!2573118 (nullable!4339 (regex!7402 r!4008)))))

(declare-fun b!4147102 () Bool)

(assert (=> b!4147102 (= e!2573117 (= lt!1479202 call!290668))))

(declare-fun b!4147103 () Bool)

(assert (=> b!4147103 (= e!2573120 (not lt!1479202))))

(declare-fun b!4147104 () Bool)

(declare-fun e!2573121 () Bool)

(assert (=> b!4147104 (= e!2573121 (not (= (head!8752 p!2912) (c!710487 (regex!7402 r!4008)))))))

(declare-fun b!4147106 () Bool)

(assert (=> b!4147106 (= e!2573118 (matchR!6136 (derivativeStep!3733 (regex!7402 r!4008) (head!8752 p!2912)) (tail!6591 p!2912)))))

(declare-fun b!4147107 () Bool)

(declare-fun res!1697572 () Bool)

(assert (=> b!4147107 (=> res!1697572 e!2573119)))

(assert (=> b!4147107 (= res!1697572 (not ((_ is ElementMatch!12307) (regex!7402 r!4008))))))

(assert (=> b!4147107 (= e!2573120 e!2573119)))

(declare-fun b!4147108 () Bool)

(declare-fun e!2573115 () Bool)

(assert (=> b!4147108 (= e!2573119 e!2573115)))

(declare-fun res!1697569 () Bool)

(assert (=> b!4147108 (=> (not res!1697569) (not e!2573115))))

(assert (=> b!4147108 (= res!1697569 (not lt!1479202))))

(declare-fun b!4147109 () Bool)

(assert (=> b!4147109 (= e!2573116 (= (head!8752 p!2912) (c!710487 (regex!7402 r!4008))))))

(declare-fun d!1227278 () Bool)

(assert (=> d!1227278 e!2573117))

(declare-fun c!710553 () Bool)

(assert (=> d!1227278 (= c!710553 ((_ is EmptyExpr!12307) (regex!7402 r!4008)))))

(assert (=> d!1227278 (= lt!1479202 e!2573118)))

(declare-fun c!710551 () Bool)

(assert (=> d!1227278 (= c!710551 (isEmpty!26861 p!2912))))

(assert (=> d!1227278 (validRegex!5549 (regex!7402 r!4008))))

(assert (=> d!1227278 (= (matchR!6136 (regex!7402 r!4008) p!2912) lt!1479202)))

(declare-fun b!4147105 () Bool)

(assert (=> b!4147105 (= e!2573115 e!2573121)))

(declare-fun res!1697570 () Bool)

(assert (=> b!4147105 (=> res!1697570 e!2573121)))

(assert (=> b!4147105 (= res!1697570 call!290668)))

(declare-fun b!4147110 () Bool)

(declare-fun res!1697574 () Bool)

(assert (=> b!4147110 (=> (not res!1697574) (not e!2573116))))

(assert (=> b!4147110 (= res!1697574 (isEmpty!26861 (tail!6591 p!2912)))))

(declare-fun b!4147111 () Bool)

(declare-fun res!1697568 () Bool)

(assert (=> b!4147111 (=> res!1697568 e!2573121)))

(assert (=> b!4147111 (= res!1697568 (not (isEmpty!26861 (tail!6591 p!2912))))))

(assert (= (and d!1227278 c!710551) b!4147101))

(assert (= (and d!1227278 (not c!710551)) b!4147106))

(assert (= (and d!1227278 c!710553) b!4147102))

(assert (= (and d!1227278 (not c!710553)) b!4147099))

(assert (= (and b!4147099 c!710552) b!4147103))

(assert (= (and b!4147099 (not c!710552)) b!4147107))

(assert (= (and b!4147107 (not res!1697572)) b!4147100))

(assert (= (and b!4147100 res!1697571) b!4147098))

(assert (= (and b!4147098 res!1697573) b!4147110))

(assert (= (and b!4147110 res!1697574) b!4147109))

(assert (= (and b!4147100 (not res!1697567)) b!4147108))

(assert (= (and b!4147108 res!1697569) b!4147105))

(assert (= (and b!4147105 (not res!1697570)) b!4147111))

(assert (= (and b!4147111 (not res!1697568)) b!4147104))

(assert (= (or b!4147102 b!4147098 b!4147105) bm!290663))

(assert (=> b!4147110 m!4742995))

(assert (=> b!4147110 m!4742995))

(assert (=> b!4147110 m!4743003))

(assert (=> b!4147104 m!4742999))

(assert (=> b!4147101 m!4742989))

(assert (=> d!1227278 m!4742691))

(assert (=> d!1227278 m!4742987))

(assert (=> bm!290663 m!4742691))

(assert (=> b!4147109 m!4742999))

(assert (=> b!4147111 m!4742995))

(assert (=> b!4147111 m!4742995))

(assert (=> b!4147111 m!4743003))

(assert (=> b!4147106 m!4742999))

(assert (=> b!4147106 m!4742999))

(declare-fun m!4743089 () Bool)

(assert (=> b!4147106 m!4743089))

(assert (=> b!4147106 m!4742995))

(assert (=> b!4147106 m!4743089))

(assert (=> b!4147106 m!4742995))

(declare-fun m!4743091 () Bool)

(assert (=> b!4147106 m!4743091))

(assert (=> b!4146676 d!1227278))

(declare-fun b!4147125 () Bool)

(declare-fun e!2573124 () Bool)

(declare-fun tp!1263968 () Bool)

(declare-fun tp!1263964 () Bool)

(assert (=> b!4147125 (= e!2573124 (and tp!1263968 tp!1263964))))

(declare-fun b!4147122 () Bool)

(assert (=> b!4147122 (= e!2573124 tp_is_empty!21537)))

(declare-fun b!4147124 () Bool)

(declare-fun tp!1263967 () Bool)

(assert (=> b!4147124 (= e!2573124 tp!1263967)))

(declare-fun b!4147123 () Bool)

(declare-fun tp!1263966 () Bool)

(declare-fun tp!1263965 () Bool)

(assert (=> b!4147123 (= e!2573124 (and tp!1263966 tp!1263965))))

(assert (=> b!4146685 (= tp!1263902 e!2573124)))

(assert (= (and b!4146685 ((_ is ElementMatch!12307) (regex!7402 r!4008))) b!4147122))

(assert (= (and b!4146685 ((_ is Concat!19940) (regex!7402 r!4008))) b!4147123))

(assert (= (and b!4146685 ((_ is Star!12307) (regex!7402 r!4008))) b!4147124))

(assert (= (and b!4146685 ((_ is Union!12307) (regex!7402 r!4008))) b!4147125))

(declare-fun b!4147130 () Bool)

(declare-fun e!2573127 () Bool)

(declare-fun tp!1263971 () Bool)

(assert (=> b!4147130 (= e!2573127 (and tp_is_empty!21537 tp!1263971))))

(assert (=> b!4146680 (= tp!1263896 e!2573127)))

(assert (= (and b!4146680 ((_ is Cons!45004) (t!342855 p!2912))) b!4147130))

(declare-fun b!4147141 () Bool)

(declare-fun b_free!118315 () Bool)

(declare-fun b_next!119019 () Bool)

(assert (=> b!4147141 (= b_free!118315 (not b_next!119019))))

(declare-fun t!342900 () Bool)

(declare-fun tb!248989 () Bool)

(assert (=> (and b!4147141 (= (toValue!10066 (transformation!7402 (h!50425 (t!342856 rules!3756)))) (toValue!10066 (transformation!7402 r!4008))) t!342900) tb!248989))

(declare-fun result!302846 () Bool)

(assert (= result!302846 result!302784))

(assert (=> d!1227142 t!342900))

(assert (=> d!1227190 t!342900))

(declare-fun tp!1263983 () Bool)

(declare-fun b_and!322389 () Bool)

(assert (=> b!4147141 (= tp!1263983 (and (=> t!342900 result!302846) b_and!322389))))

(declare-fun b_free!118317 () Bool)

(declare-fun b_next!119021 () Bool)

(assert (=> b!4147141 (= b_free!118317 (not b_next!119021))))

(declare-fun tb!248991 () Bool)

(declare-fun t!342902 () Bool)

(assert (=> (and b!4147141 (= (toChars!9925 (transformation!7402 (h!50425 (t!342856 rules!3756)))) (toChars!9925 (transformation!7402 r!4008))) t!342902) tb!248991))

(declare-fun result!302848 () Bool)

(assert (= result!302848 result!302814))

(assert (=> d!1227190 t!342902))

(declare-fun tb!248993 () Bool)

(declare-fun t!342904 () Bool)

(assert (=> (and b!4147141 (= (toChars!9925 (transformation!7402 (h!50425 (t!342856 rules!3756)))) (toChars!9925 (transformation!7402 (rule!10528 (_1!24823 lt!1479043))))) t!342904) tb!248993))

(declare-fun result!302850 () Bool)

(assert (= result!302850 result!302834))

(assert (=> d!1227268 t!342904))

(declare-fun b_and!322391 () Bool)

(declare-fun tp!1263981 () Bool)

(assert (=> b!4147141 (= tp!1263981 (and (=> t!342902 result!302848) (=> t!342904 result!302850) b_and!322391))))

(declare-fun e!2573137 () Bool)

(assert (=> b!4147141 (= e!2573137 (and tp!1263983 tp!1263981))))

(declare-fun tp!1263980 () Bool)

(declare-fun e!2573138 () Bool)

(declare-fun b!4147140 () Bool)

(assert (=> b!4147140 (= e!2573138 (and tp!1263980 (inv!59614 (tag!8262 (h!50425 (t!342856 rules!3756)))) (inv!59616 (transformation!7402 (h!50425 (t!342856 rules!3756)))) e!2573137))))

(declare-fun b!4147139 () Bool)

(declare-fun e!2573136 () Bool)

(declare-fun tp!1263982 () Bool)

(assert (=> b!4147139 (= e!2573136 (and e!2573138 tp!1263982))))

(assert (=> b!4146673 (= tp!1263900 e!2573136)))

(assert (= b!4147140 b!4147141))

(assert (= b!4147139 b!4147140))

(assert (= (and b!4146673 ((_ is Cons!45005) (t!342856 rules!3756))) b!4147139))

(declare-fun m!4743093 () Bool)

(assert (=> b!4147140 m!4743093))

(declare-fun m!4743095 () Bool)

(assert (=> b!4147140 m!4743095))

(declare-fun b!4147145 () Bool)

(declare-fun e!2573140 () Bool)

(declare-fun tp!1263988 () Bool)

(declare-fun tp!1263984 () Bool)

(assert (=> b!4147145 (= e!2573140 (and tp!1263988 tp!1263984))))

(declare-fun b!4147142 () Bool)

(assert (=> b!4147142 (= e!2573140 tp_is_empty!21537)))

(declare-fun b!4147144 () Bool)

(declare-fun tp!1263987 () Bool)

(assert (=> b!4147144 (= e!2573140 tp!1263987)))

(declare-fun b!4147143 () Bool)

(declare-fun tp!1263986 () Bool)

(declare-fun tp!1263985 () Bool)

(assert (=> b!4147143 (= e!2573140 (and tp!1263986 tp!1263985))))

(assert (=> b!4146668 (= tp!1263893 e!2573140)))

(assert (= (and b!4146668 ((_ is ElementMatch!12307) (regex!7402 rBis!149))) b!4147142))

(assert (= (and b!4146668 ((_ is Concat!19940) (regex!7402 rBis!149))) b!4147143))

(assert (= (and b!4146668 ((_ is Star!12307) (regex!7402 rBis!149))) b!4147144))

(assert (= (and b!4146668 ((_ is Union!12307) (regex!7402 rBis!149))) b!4147145))

(declare-fun b!4147146 () Bool)

(declare-fun e!2573141 () Bool)

(declare-fun tp!1263989 () Bool)

(assert (=> b!4147146 (= e!2573141 (and tp_is_empty!21537 tp!1263989))))

(assert (=> b!4146687 (= tp!1263894 e!2573141)))

(assert (= (and b!4146687 ((_ is Cons!45004) (t!342855 input!3238))) b!4147146))

(declare-fun b!4147150 () Bool)

(declare-fun e!2573142 () Bool)

(declare-fun tp!1263994 () Bool)

(declare-fun tp!1263990 () Bool)

(assert (=> b!4147150 (= e!2573142 (and tp!1263994 tp!1263990))))

(declare-fun b!4147147 () Bool)

(assert (=> b!4147147 (= e!2573142 tp_is_empty!21537)))

(declare-fun b!4147149 () Bool)

(declare-fun tp!1263993 () Bool)

(assert (=> b!4147149 (= e!2573142 tp!1263993)))

(declare-fun b!4147148 () Bool)

(declare-fun tp!1263992 () Bool)

(declare-fun tp!1263991 () Bool)

(assert (=> b!4147148 (= e!2573142 (and tp!1263992 tp!1263991))))

(assert (=> b!4146675 (= tp!1263904 e!2573142)))

(assert (= (and b!4146675 ((_ is ElementMatch!12307) (regex!7402 (h!50425 rules!3756)))) b!4147147))

(assert (= (and b!4146675 ((_ is Concat!19940) (regex!7402 (h!50425 rules!3756)))) b!4147148))

(assert (= (and b!4146675 ((_ is Star!12307) (regex!7402 (h!50425 rules!3756)))) b!4147149))

(assert (= (and b!4146675 ((_ is Union!12307) (regex!7402 (h!50425 rules!3756)))) b!4147150))

(declare-fun b_lambda!121961 () Bool)

(assert (= b_lambda!121951 (or (and b!4146672 b_free!118299 (= (toValue!10066 (transformation!7402 rBis!149)) (toValue!10066 (transformation!7402 r!4008)))) (and b!4146678 b_free!118303 (= (toValue!10066 (transformation!7402 (h!50425 rules!3756))) (toValue!10066 (transformation!7402 r!4008)))) (and b!4146688 b_free!118307) (and b!4147141 b_free!118315 (= (toValue!10066 (transformation!7402 (h!50425 (t!342856 rules!3756)))) (toValue!10066 (transformation!7402 r!4008)))) b_lambda!121961)))

(declare-fun b_lambda!121963 () Bool)

(assert (= b_lambda!121939 (or (and b!4146672 b_free!118299 (= (toValue!10066 (transformation!7402 rBis!149)) (toValue!10066 (transformation!7402 r!4008)))) (and b!4146678 b_free!118303 (= (toValue!10066 (transformation!7402 (h!50425 rules!3756))) (toValue!10066 (transformation!7402 r!4008)))) (and b!4146688 b_free!118307) (and b!4147141 b_free!118315 (= (toValue!10066 (transformation!7402 (h!50425 (t!342856 rules!3756)))) (toValue!10066 (transformation!7402 r!4008)))) b_lambda!121963)))

(declare-fun b_lambda!121965 () Bool)

(assert (= b_lambda!121949 (or (and b!4146672 b_free!118301 (= (toChars!9925 (transformation!7402 rBis!149)) (toChars!9925 (transformation!7402 r!4008)))) (and b!4146678 b_free!118305 (= (toChars!9925 (transformation!7402 (h!50425 rules!3756))) (toChars!9925 (transformation!7402 r!4008)))) (and b!4146688 b_free!118309) (and b!4147141 b_free!118317 (= (toChars!9925 (transformation!7402 (h!50425 (t!342856 rules!3756)))) (toChars!9925 (transformation!7402 r!4008)))) b_lambda!121965)))

(check-sat (not b!4147124) (not b_next!119019) (not b!4147125) (not bm!290655) b_and!322387 (not d!1227190) (not b!4147150) (not d!1227246) (not d!1227186) (not bm!290663) (not d!1227212) (not b!4147144) (not b!4147143) (not d!1227232) (not b!4147087) (not b!4147148) (not b_next!119003) (not d!1227148) tp_is_empty!21537 (not b!4147091) (not d!1227236) (not b_next!119007) (not b_next!119011) (not b_lambda!121961) (not b_next!119021) b_and!322377 (not b!4147110) (not d!1227278) (not tb!248947) (not b!4147050) (not b!4147088) (not b!4146815) (not d!1227276) (not b_lambda!121959) (not b!4147111) (not d!1227258) (not b!4147139) (not b_next!119009) (not b!4147097) (not b!4147149) b_and!322391 (not b!4147089) (not d!1227268) (not b!4146951) (not b_next!119005) (not d!1227226) (not b!4147053) (not b!4146746) (not d!1227254) (not b!4147146) (not b!4146820) (not d!1227266) (not d!1227260) (not b!4147104) (not b!4147063) (not d!1227252) (not b!4146817) (not b!4147017) (not bm!290662) (not b!4147109) (not b!4146819) (not b!4146880) (not tb!248983) (not b!4146975) (not b!4146822) (not b!4147060) (not b_lambda!121963) (not b!4147123) (not d!1227274) (not b!4146909) (not b!4146939) (not b!4146915) (not b!4147093) (not b!4147145) (not d!1227262) (not b!4147106) (not d!1227146) (not b!4147058) (not b!4146818) (not b!4147092) (not b!4147090) (not b!4147055) (not b!4147066) (not tb!248971) b_and!322383 (not b!4147095) (not d!1227238) (not b!4146892) (not b_next!119013) (not d!1227206) (not b!4146874) (not d!1227242) (not b!4146823) (not b!4147016) (not b!4147101) (not b_lambda!121965) b_and!322375 b_and!322373 b_and!322389 b_and!322385 (not b!4146980) (not d!1227202) (not b!4147086) (not b!4147059) (not b!4147130) (not d!1227218) (not b!4147061) (not b!4147140) (not b!4147018) (not b!4147094) (not d!1227248) (not b!4146816))
(check-sat b_and!322387 (not b_next!119003) (not b_next!119007) (not b_next!119009) b_and!322391 (not b_next!119019) (not b_next!119005) b_and!322383 (not b_next!119013) (not b_next!119011) (not b_next!119021) b_and!322377 b_and!322375 b_and!322373 b_and!322389 b_and!322385)
