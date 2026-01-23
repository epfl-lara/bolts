; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!390866 () Bool)

(assert start!390866)

(declare-fun b!4121974 () Bool)

(declare-fun b_free!116595 () Bool)

(declare-fun b_next!117299 () Bool)

(assert (=> b!4121974 (= b_free!116595 (not b_next!117299))))

(declare-fun tp!1256121 () Bool)

(declare-fun b_and!318893 () Bool)

(assert (=> b!4121974 (= tp!1256121 b_and!318893)))

(declare-fun b_free!116597 () Bool)

(declare-fun b_next!117301 () Bool)

(assert (=> b!4121974 (= b_free!116597 (not b_next!117301))))

(declare-fun tp!1256119 () Bool)

(declare-fun b_and!318895 () Bool)

(assert (=> b!4121974 (= tp!1256119 b_and!318895)))

(declare-fun b!4121968 () Bool)

(declare-fun b_free!116599 () Bool)

(declare-fun b_next!117303 () Bool)

(assert (=> b!4121968 (= b_free!116599 (not b_next!117303))))

(declare-fun tp!1256111 () Bool)

(declare-fun b_and!318897 () Bool)

(assert (=> b!4121968 (= tp!1256111 b_and!318897)))

(declare-fun b_free!116601 () Bool)

(declare-fun b_next!117305 () Bool)

(assert (=> b!4121968 (= b_free!116601 (not b_next!117305))))

(declare-fun tp!1256115 () Bool)

(declare-fun b_and!318899 () Bool)

(assert (=> b!4121968 (= tp!1256115 b_and!318899)))

(declare-fun b!4121959 () Bool)

(declare-fun b_free!116603 () Bool)

(declare-fun b_next!117307 () Bool)

(assert (=> b!4121959 (= b_free!116603 (not b_next!117307))))

(declare-fun tp!1256114 () Bool)

(declare-fun b_and!318901 () Bool)

(assert (=> b!4121959 (= tp!1256114 b_and!318901)))

(declare-fun b_free!116605 () Bool)

(declare-fun b_next!117309 () Bool)

(assert (=> b!4121959 (= b_free!116605 (not b_next!117309))))

(declare-fun tp!1256112 () Bool)

(declare-fun b_and!318903 () Bool)

(assert (=> b!4121959 (= tp!1256112 b_and!318903)))

(declare-fun b!4121952 () Bool)

(declare-fun res!1684241 () Bool)

(declare-fun e!2557681 () Bool)

(assert (=> b!4121952 (=> (not res!1684241) (not e!2557681))))

(declare-datatypes ((List!44705 0))(
  ( (Nil!44581) (Cons!44581 (h!50001 (_ BitVec 16)) (t!340816 List!44705)) )
))
(declare-datatypes ((TokenValue!7514 0))(
  ( (FloatLiteralValue!15028 (text!53043 List!44705)) (TokenValueExt!7513 (__x!27245 Int)) (Broken!37570 (value!228122 List!44705)) (Object!7637) (End!7514) (Def!7514) (Underscore!7514) (Match!7514) (Else!7514) (Error!7514) (Case!7514) (If!7514) (Extends!7514) (Abstract!7514) (Class!7514) (Val!7514) (DelimiterValue!15028 (del!7574 List!44705)) (KeywordValue!7520 (value!228123 List!44705)) (CommentValue!15028 (value!228124 List!44705)) (WhitespaceValue!15028 (value!228125 List!44705)) (IndentationValue!7514 (value!228126 List!44705)) (String!51319) (Int32!7514) (Broken!37571 (value!228127 List!44705)) (Boolean!7515) (Unit!63928) (OperatorValue!7517 (op!7574 List!44705)) (IdentifierValue!15028 (value!228128 List!44705)) (IdentifierValue!15029 (value!228129 List!44705)) (WhitespaceValue!15029 (value!228130 List!44705)) (True!15028) (False!15028) (Broken!37572 (value!228131 List!44705)) (Broken!37573 (value!228132 List!44705)) (True!15029) (RightBrace!7514) (RightBracket!7514) (Colon!7514) (Null!7514) (Comma!7514) (LeftBracket!7514) (False!15029) (LeftBrace!7514) (ImaginaryLiteralValue!7514 (text!53044 List!44705)) (StringLiteralValue!22542 (value!228133 List!44705)) (EOFValue!7514 (value!228134 List!44705)) (IdentValue!7514 (value!228135 List!44705)) (DelimiterValue!15029 (value!228136 List!44705)) (DedentValue!7514 (value!228137 List!44705)) (NewLineValue!7514 (value!228138 List!44705)) (IntegerValue!22542 (value!228139 (_ BitVec 32)) (text!53045 List!44705)) (IntegerValue!22543 (value!228140 Int) (text!53046 List!44705)) (Times!7514) (Or!7514) (Equal!7514) (Minus!7514) (Broken!37574 (value!228141 List!44705)) (And!7514) (Div!7514) (LessEqual!7514) (Mod!7514) (Concat!19703) (Not!7514) (Plus!7514) (SpaceValue!7514 (value!228142 List!44705)) (IntegerValue!22544 (value!228143 Int) (text!53047 List!44705)) (StringLiteralValue!22543 (text!53048 List!44705)) (FloatLiteralValue!15029 (text!53049 List!44705)) (BytesLiteralValue!7514 (value!228144 List!44705)) (CommentValue!15029 (value!228145 List!44705)) (StringLiteralValue!22544 (value!228146 List!44705)) (ErrorTokenValue!7514 (msg!7575 List!44705)) )
))
(declare-datatypes ((C!24564 0))(
  ( (C!24565 (val!14392 Int)) )
))
(declare-datatypes ((List!44706 0))(
  ( (Nil!44582) (Cons!44582 (h!50002 C!24564) (t!340817 List!44706)) )
))
(declare-datatypes ((IArray!26995 0))(
  ( (IArray!26996 (innerList!13555 List!44706)) )
))
(declare-datatypes ((Conc!13495 0))(
  ( (Node!13495 (left!33391 Conc!13495) (right!33721 Conc!13495) (csize!27220 Int) (cheight!13706 Int)) (Leaf!20852 (xs!16801 IArray!26995) (csize!27221 Int)) (Empty!13495) )
))
(declare-datatypes ((BalanceConc!26584 0))(
  ( (BalanceConc!26585 (c!707690 Conc!13495)) )
))
(declare-datatypes ((Regex!12189 0))(
  ( (ElementMatch!12189 (c!707691 C!24564)) (Concat!19704 (regOne!24890 Regex!12189) (regTwo!24890 Regex!12189)) (EmptyExpr!12189) (Star!12189 (reg!12518 Regex!12189)) (EmptyLang!12189) (Union!12189 (regOne!24891 Regex!12189) (regTwo!24891 Regex!12189)) )
))
(declare-datatypes ((String!51320 0))(
  ( (String!51321 (value!228147 String)) )
))
(declare-datatypes ((TokenValueInjection!14456 0))(
  ( (TokenValueInjection!14457 (toValue!9936 Int) (toChars!9795 Int)) )
))
(declare-datatypes ((Rule!14368 0))(
  ( (Rule!14369 (regex!7284 Regex!12189) (tag!8144 String!51320) (isSeparator!7284 Bool) (transformation!7284 TokenValueInjection!14456)) )
))
(declare-datatypes ((List!44707 0))(
  ( (Nil!44583) (Cons!44583 (h!50003 Rule!14368) (t!340818 List!44707)) )
))
(declare-fun rules!3756 () List!44707)

(declare-fun rBis!149 () Rule!14368)

(declare-fun r!4008 () Rule!14368)

(declare-fun getIndex!632 (List!44707 Rule!14368) Int)

(assert (=> b!4121952 (= res!1684241 (< (getIndex!632 rules!3756 rBis!149) (getIndex!632 rules!3756 r!4008)))))

(declare-fun b!4121953 () Bool)

(declare-fun res!1684225 () Bool)

(declare-fun e!2557683 () Bool)

(assert (=> b!4121953 (=> (not res!1684225) (not e!2557683))))

(declare-fun p!2912 () List!44706)

(declare-fun isEmpty!26526 (List!44706) Bool)

(assert (=> b!4121953 (= res!1684225 (not (isEmpty!26526 p!2912)))))

(declare-fun b!4121954 () Bool)

(assert (=> b!4121954 (= e!2557683 e!2557681)))

(declare-fun res!1684239 () Bool)

(assert (=> b!4121954 (=> (not res!1684239) (not e!2557681))))

(declare-fun input!3238 () List!44706)

(declare-fun lt!1470612 () TokenValue!7514)

(declare-datatypes ((LexerInterface!6873 0))(
  ( (LexerInterfaceExt!6870 (__x!27246 Int)) (Lexer!6871) )
))
(declare-fun thiss!25645 () LexerInterface!6873)

(declare-fun lt!1470614 () Int)

(declare-datatypes ((Token!13498 0))(
  ( (Token!13499 (value!228148 TokenValue!7514) (rule!10360 Rule!14368) (size!33002 Int) (originalCharacters!7780 List!44706)) )
))
(declare-datatypes ((tuple2!43046 0))(
  ( (tuple2!43047 (_1!24657 Token!13498) (_2!24657 List!44706)) )
))
(declare-datatypes ((Option!9592 0))(
  ( (None!9591) (Some!9591 (v!40179 tuple2!43046)) )
))
(declare-fun maxPrefix!4065 (LexerInterface!6873 List!44707 List!44706) Option!9592)

(declare-fun getSuffix!2548 (List!44706 List!44706) List!44706)

(assert (=> b!4121954 (= res!1684239 (= (maxPrefix!4065 thiss!25645 rules!3756 input!3238) (Some!9591 (tuple2!43047 (Token!13499 lt!1470612 r!4008 lt!1470614 p!2912) (getSuffix!2548 input!3238 p!2912)))))))

(declare-fun size!33003 (List!44706) Int)

(assert (=> b!4121954 (= lt!1470614 (size!33003 p!2912))))

(declare-fun lt!1470607 () BalanceConc!26584)

(declare-fun apply!10357 (TokenValueInjection!14456 BalanceConc!26584) TokenValue!7514)

(assert (=> b!4121954 (= lt!1470612 (apply!10357 (transformation!7284 r!4008) lt!1470607))))

(declare-datatypes ((Unit!63929 0))(
  ( (Unit!63930) )
))
(declare-fun lt!1470617 () Unit!63929)

(declare-fun lemmaSemiInverse!2142 (TokenValueInjection!14456 BalanceConc!26584) Unit!63929)

(assert (=> b!4121954 (= lt!1470617 (lemmaSemiInverse!2142 (transformation!7284 r!4008) lt!1470607))))

(declare-fun seqFromList!5401 (List!44706) BalanceConc!26584)

(assert (=> b!4121954 (= lt!1470607 (seqFromList!5401 p!2912))))

(declare-fun e!2557687 () Bool)

(declare-fun b!4121955 () Bool)

(declare-fun e!2557679 () Bool)

(declare-fun tp!1256120 () Bool)

(declare-fun inv!59163 (String!51320) Bool)

(declare-fun inv!59165 (TokenValueInjection!14456) Bool)

(assert (=> b!4121955 (= e!2557687 (and tp!1256120 (inv!59163 (tag!8144 rBis!149)) (inv!59165 (transformation!7284 rBis!149)) e!2557679))))

(declare-fun b!4121956 () Bool)

(declare-fun res!1684235 () Bool)

(declare-fun e!2557688 () Bool)

(assert (=> b!4121956 (=> res!1684235 e!2557688)))

(declare-fun lt!1470605 () List!44706)

(assert (=> b!4121956 (= res!1684235 (<= lt!1470614 (size!33003 lt!1470605)))))

(declare-fun b!4121957 () Bool)

(declare-fun res!1684228 () Bool)

(assert (=> b!4121957 (=> (not res!1684228) (not e!2557683))))

(declare-fun contains!8956 (List!44707 Rule!14368) Bool)

(assert (=> b!4121957 (= res!1684228 (contains!8956 rules!3756 rBis!149))))

(declare-fun b!4121958 () Bool)

(declare-fun res!1684226 () Bool)

(assert (=> b!4121958 (=> res!1684226 e!2557688)))

(declare-fun validRegex!5480 (Regex!12189) Bool)

(assert (=> b!4121958 (= res!1684226 (not (validRegex!5480 (regex!7284 rBis!149))))))

(declare-fun res!1684227 () Bool)

(assert (=> start!390866 (=> (not res!1684227) (not e!2557683))))

(get-info :version)

(assert (=> start!390866 (= res!1684227 ((_ is Lexer!6871) thiss!25645))))

(assert (=> start!390866 e!2557683))

(declare-fun e!2557694 () Bool)

(assert (=> start!390866 e!2557694))

(declare-fun e!2557690 () Bool)

(assert (=> start!390866 e!2557690))

(assert (=> start!390866 true))

(declare-fun e!2557693 () Bool)

(assert (=> start!390866 e!2557693))

(declare-fun e!2557680 () Bool)

(assert (=> start!390866 e!2557680))

(assert (=> start!390866 e!2557687))

(declare-fun e!2557684 () Bool)

(assert (=> b!4121959 (= e!2557684 (and tp!1256114 tp!1256112))))

(declare-fun b!4121960 () Bool)

(declare-fun res!1684233 () Bool)

(assert (=> b!4121960 (=> (not res!1684233) (not e!2557683))))

(declare-fun isEmpty!26527 (List!44707) Bool)

(assert (=> b!4121960 (= res!1684233 (not (isEmpty!26527 rules!3756)))))

(declare-fun b!4121961 () Bool)

(declare-fun tp_is_empty!21301 () Bool)

(declare-fun tp!1256117 () Bool)

(assert (=> b!4121961 (= e!2557680 (and tp_is_empty!21301 tp!1256117))))

(declare-fun b!4121962 () Bool)

(declare-fun e!2557691 () Bool)

(declare-fun tp!1256118 () Bool)

(assert (=> b!4121962 (= e!2557694 (and e!2557691 tp!1256118))))

(declare-fun b!4121963 () Bool)

(declare-fun res!1684240 () Bool)

(assert (=> b!4121963 (=> res!1684240 e!2557688)))

(declare-fun matchR!6020 (Regex!12189 List!44706) Bool)

(assert (=> b!4121963 (= res!1684240 (not (matchR!6020 (regex!7284 rBis!149) lt!1470605)))))

(declare-fun b!4121964 () Bool)

(declare-fun tp!1256113 () Bool)

(assert (=> b!4121964 (= e!2557690 (and tp_is_empty!21301 tp!1256113))))

(declare-fun b!4121965 () Bool)

(declare-fun e!2557685 () Bool)

(declare-fun e!2557692 () Bool)

(assert (=> b!4121965 (= e!2557685 e!2557692)))

(declare-fun res!1684237 () Bool)

(assert (=> b!4121965 (=> res!1684237 e!2557692)))

(declare-fun lt!1470615 () Int)

(assert (=> b!4121965 (= res!1684237 (or (> lt!1470615 lt!1470614) (>= lt!1470615 lt!1470614)))))

(declare-fun lt!1470604 () BalanceConc!26584)

(declare-fun size!33004 (BalanceConc!26584) Int)

(assert (=> b!4121965 (= lt!1470615 (size!33004 lt!1470604))))

(declare-fun lt!1470609 () tuple2!43046)

(declare-fun charsOf!4906 (Token!13498) BalanceConc!26584)

(assert (=> b!4121965 (= lt!1470604 (charsOf!4906 (_1!24657 lt!1470609)))))

(declare-fun lt!1470606 () Option!9592)

(declare-fun get!14544 (Option!9592) tuple2!43046)

(assert (=> b!4121965 (= lt!1470609 (get!14544 lt!1470606))))

(declare-fun b!4121966 () Bool)

(declare-fun e!2557686 () Bool)

(declare-fun tp!1256116 () Bool)

(assert (=> b!4121966 (= e!2557693 (and tp!1256116 (inv!59163 (tag!8144 r!4008)) (inv!59165 (transformation!7284 r!4008)) e!2557686))))

(declare-fun b!4121967 () Bool)

(declare-fun res!1684234 () Bool)

(assert (=> b!4121967 (=> res!1684234 e!2557688)))

(assert (=> b!4121967 (= res!1684234 (> lt!1470614 (size!33003 input!3238)))))

(assert (=> b!4121968 (= e!2557686 (and tp!1256111 tp!1256115))))

(declare-fun b!4121969 () Bool)

(declare-fun res!1684238 () Bool)

(assert (=> b!4121969 (=> (not res!1684238) (not e!2557681))))

(declare-fun ruleValid!3092 (LexerInterface!6873 Rule!14368) Bool)

(assert (=> b!4121969 (= res!1684238 (ruleValid!3092 thiss!25645 r!4008))))

(declare-fun b!4121970 () Bool)

(declare-fun e!2557682 () Bool)

(assert (=> b!4121970 (= e!2557681 (not e!2557682))))

(declare-fun res!1684231 () Bool)

(assert (=> b!4121970 (=> res!1684231 e!2557682)))

(assert (=> b!4121970 (= res!1684231 (or (not ((_ is Cons!44583) rules!3756)) (not (= (h!50003 rules!3756) rBis!149))))))

(declare-fun lt!1470611 () Unit!63929)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2136 (LexerInterface!6873 Rule!14368 List!44707) Unit!63929)

(assert (=> b!4121970 (= lt!1470611 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2136 thiss!25645 r!4008 rules!3756))))

(assert (=> b!4121970 (ruleValid!3092 thiss!25645 rBis!149)))

(declare-fun lt!1470618 () Unit!63929)

(assert (=> b!4121970 (= lt!1470618 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2136 thiss!25645 rBis!149 rules!3756))))

(declare-fun b!4121971 () Bool)

(declare-fun res!1684236 () Bool)

(assert (=> b!4121971 (=> (not res!1684236) (not e!2557683))))

(assert (=> b!4121971 (= res!1684236 (contains!8956 rules!3756 r!4008))))

(declare-fun b!4121972 () Bool)

(declare-fun res!1684243 () Bool)

(assert (=> b!4121972 (=> res!1684243 e!2557688)))

(declare-fun isPrefix!4219 (List!44706 List!44706) Bool)

(assert (=> b!4121972 (= res!1684243 (not (isPrefix!4219 lt!1470605 input!3238)))))

(declare-fun b!4121973 () Bool)

(assert (=> b!4121973 (= e!2557682 e!2557685)))

(declare-fun res!1684242 () Bool)

(assert (=> b!4121973 (=> res!1684242 e!2557685)))

(declare-fun isEmpty!26528 (Option!9592) Bool)

(assert (=> b!4121973 (= res!1684242 (isEmpty!26528 lt!1470606))))

(declare-fun maxPrefixOneRule!3015 (LexerInterface!6873 Rule!14368 List!44706) Option!9592)

(assert (=> b!4121973 (= lt!1470606 (maxPrefixOneRule!3015 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4121973 (not (= rBis!149 r!4008))))

(declare-fun lt!1470603 () Unit!63929)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!24 (LexerInterface!6873 List!44707 Rule!14368 Rule!14368) Unit!63929)

(assert (=> b!4121973 (= lt!1470603 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!24 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6443 (List!44707) List!44707)

(assert (=> b!4121973 (contains!8956 (tail!6443 rules!3756) r!4008)))

(declare-fun lt!1470613 () Unit!63929)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!26 (List!44707 Rule!14368 Rule!14368) Unit!63929)

(assert (=> b!4121973 (= lt!1470613 (lemmaGetIndexBiggerAndHeadEqThenTailContains!26 rules!3756 rBis!149 r!4008))))

(assert (=> b!4121974 (= e!2557679 (and tp!1256121 tp!1256119))))

(declare-fun b!4121975 () Bool)

(declare-fun res!1684232 () Bool)

(assert (=> b!4121975 (=> (not res!1684232) (not e!2557683))))

(assert (=> b!4121975 (= res!1684232 (isPrefix!4219 p!2912 input!3238))))

(declare-fun b!4121976 () Bool)

(declare-fun res!1684230 () Bool)

(assert (=> b!4121976 (=> (not res!1684230) (not e!2557683))))

(declare-fun rulesInvariant!6170 (LexerInterface!6873 List!44707) Bool)

(assert (=> b!4121976 (= res!1684230 (rulesInvariant!6170 thiss!25645 rules!3756))))

(declare-fun b!4121977 () Bool)

(declare-fun res!1684244 () Bool)

(assert (=> b!4121977 (=> (not res!1684244) (not e!2557681))))

(assert (=> b!4121977 (= res!1684244 (matchR!6020 (regex!7284 r!4008) p!2912))))

(declare-fun b!4121978 () Bool)

(assert (=> b!4121978 (= e!2557688 true)))

(assert (=> b!4121978 (isPrefix!4219 input!3238 input!3238)))

(declare-fun lt!1470608 () Unit!63929)

(declare-fun lemmaIsPrefixRefl!2736 (List!44706 List!44706) Unit!63929)

(assert (=> b!4121978 (= lt!1470608 (lemmaIsPrefixRefl!2736 input!3238 input!3238))))

(declare-fun b!4121979 () Bool)

(assert (=> b!4121979 (= e!2557692 e!2557688)))

(declare-fun res!1684229 () Bool)

(assert (=> b!4121979 (=> res!1684229 e!2557688)))

(declare-fun lt!1470610 () List!44706)

(assert (=> b!4121979 (= res!1684229 (not (= lt!1470610 input!3238)))))

(assert (=> b!4121979 (isPrefix!4219 lt!1470605 lt!1470610)))

(declare-fun ++!11556 (List!44706 List!44706) List!44706)

(assert (=> b!4121979 (= lt!1470610 (++!11556 lt!1470605 (_2!24657 lt!1470609)))))

(declare-fun lt!1470616 () Unit!63929)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2928 (List!44706 List!44706) Unit!63929)

(assert (=> b!4121979 (= lt!1470616 (lemmaConcatTwoListThenFirstIsPrefix!2928 lt!1470605 (_2!24657 lt!1470609)))))

(declare-fun list!16359 (BalanceConc!26584) List!44706)

(assert (=> b!4121979 (= lt!1470605 (list!16359 lt!1470604))))

(declare-fun b!4121980 () Bool)

(declare-fun tp!1256122 () Bool)

(assert (=> b!4121980 (= e!2557691 (and tp!1256122 (inv!59163 (tag!8144 (h!50003 rules!3756))) (inv!59165 (transformation!7284 (h!50003 rules!3756))) e!2557684))))

(assert (= (and start!390866 res!1684227) b!4121975))

(assert (= (and b!4121975 res!1684232) b!4121960))

(assert (= (and b!4121960 res!1684233) b!4121976))

(assert (= (and b!4121976 res!1684230) b!4121971))

(assert (= (and b!4121971 res!1684236) b!4121957))

(assert (= (and b!4121957 res!1684228) b!4121953))

(assert (= (and b!4121953 res!1684225) b!4121954))

(assert (= (and b!4121954 res!1684239) b!4121977))

(assert (= (and b!4121977 res!1684244) b!4121952))

(assert (= (and b!4121952 res!1684241) b!4121969))

(assert (= (and b!4121969 res!1684238) b!4121970))

(assert (= (and b!4121970 (not res!1684231)) b!4121973))

(assert (= (and b!4121973 (not res!1684242)) b!4121965))

(assert (= (and b!4121965 (not res!1684237)) b!4121979))

(assert (= (and b!4121979 (not res!1684229)) b!4121972))

(assert (= (and b!4121972 (not res!1684243)) b!4121967))

(assert (= (and b!4121967 (not res!1684234)) b!4121956))

(assert (= (and b!4121956 (not res!1684235)) b!4121958))

(assert (= (and b!4121958 (not res!1684226)) b!4121963))

(assert (= (and b!4121963 (not res!1684240)) b!4121978))

(assert (= b!4121980 b!4121959))

(assert (= b!4121962 b!4121980))

(assert (= (and start!390866 ((_ is Cons!44583) rules!3756)) b!4121962))

(assert (= (and start!390866 ((_ is Cons!44582) p!2912)) b!4121964))

(assert (= b!4121966 b!4121968))

(assert (= start!390866 b!4121966))

(assert (= (and start!390866 ((_ is Cons!44582) input!3238)) b!4121961))

(assert (= b!4121955 b!4121974))

(assert (= start!390866 b!4121955))

(declare-fun m!4721051 () Bool)

(assert (=> b!4121971 m!4721051))

(declare-fun m!4721053 () Bool)

(assert (=> b!4121972 m!4721053))

(declare-fun m!4721055 () Bool)

(assert (=> b!4121977 m!4721055))

(declare-fun m!4721057 () Bool)

(assert (=> b!4121979 m!4721057))

(declare-fun m!4721059 () Bool)

(assert (=> b!4121979 m!4721059))

(declare-fun m!4721061 () Bool)

(assert (=> b!4121979 m!4721061))

(declare-fun m!4721063 () Bool)

(assert (=> b!4121979 m!4721063))

(declare-fun m!4721065 () Bool)

(assert (=> b!4121969 m!4721065))

(declare-fun m!4721067 () Bool)

(assert (=> b!4121966 m!4721067))

(declare-fun m!4721069 () Bool)

(assert (=> b!4121966 m!4721069))

(declare-fun m!4721071 () Bool)

(assert (=> b!4121973 m!4721071))

(declare-fun m!4721073 () Bool)

(assert (=> b!4121973 m!4721073))

(declare-fun m!4721075 () Bool)

(assert (=> b!4121973 m!4721075))

(assert (=> b!4121973 m!4721071))

(declare-fun m!4721077 () Bool)

(assert (=> b!4121973 m!4721077))

(declare-fun m!4721079 () Bool)

(assert (=> b!4121973 m!4721079))

(declare-fun m!4721081 () Bool)

(assert (=> b!4121973 m!4721081))

(declare-fun m!4721083 () Bool)

(assert (=> b!4121963 m!4721083))

(declare-fun m!4721085 () Bool)

(assert (=> b!4121957 m!4721085))

(declare-fun m!4721087 () Bool)

(assert (=> b!4121980 m!4721087))

(declare-fun m!4721089 () Bool)

(assert (=> b!4121980 m!4721089))

(declare-fun m!4721091 () Bool)

(assert (=> b!4121967 m!4721091))

(declare-fun m!4721093 () Bool)

(assert (=> b!4121958 m!4721093))

(declare-fun m!4721095 () Bool)

(assert (=> b!4121956 m!4721095))

(declare-fun m!4721097 () Bool)

(assert (=> b!4121954 m!4721097))

(declare-fun m!4721099 () Bool)

(assert (=> b!4121954 m!4721099))

(declare-fun m!4721101 () Bool)

(assert (=> b!4121954 m!4721101))

(declare-fun m!4721103 () Bool)

(assert (=> b!4121954 m!4721103))

(declare-fun m!4721105 () Bool)

(assert (=> b!4121954 m!4721105))

(declare-fun m!4721107 () Bool)

(assert (=> b!4121954 m!4721107))

(declare-fun m!4721109 () Bool)

(assert (=> b!4121976 m!4721109))

(declare-fun m!4721111 () Bool)

(assert (=> b!4121975 m!4721111))

(declare-fun m!4721113 () Bool)

(assert (=> b!4121955 m!4721113))

(declare-fun m!4721115 () Bool)

(assert (=> b!4121955 m!4721115))

(declare-fun m!4721117 () Bool)

(assert (=> b!4121960 m!4721117))

(declare-fun m!4721119 () Bool)

(assert (=> b!4121970 m!4721119))

(declare-fun m!4721121 () Bool)

(assert (=> b!4121970 m!4721121))

(declare-fun m!4721123 () Bool)

(assert (=> b!4121970 m!4721123))

(declare-fun m!4721125 () Bool)

(assert (=> b!4121978 m!4721125))

(declare-fun m!4721127 () Bool)

(assert (=> b!4121978 m!4721127))

(declare-fun m!4721129 () Bool)

(assert (=> b!4121965 m!4721129))

(declare-fun m!4721131 () Bool)

(assert (=> b!4121965 m!4721131))

(declare-fun m!4721133 () Bool)

(assert (=> b!4121965 m!4721133))

(declare-fun m!4721135 () Bool)

(assert (=> b!4121952 m!4721135))

(declare-fun m!4721137 () Bool)

(assert (=> b!4121952 m!4721137))

(declare-fun m!4721139 () Bool)

(assert (=> b!4121953 m!4721139))

(check-sat (not b!4121980) (not b!4121963) (not b!4121956) (not b!4121962) (not b!4121972) b_and!318899 b_and!318895 (not b!4121953) (not b!4121976) (not b!4121978) (not b!4121979) (not b!4121973) (not b!4121977) (not b_next!117299) (not b!4121960) (not b_next!117301) (not b!4121961) b_and!318903 (not b!4121975) (not b!4121970) (not b!4121964) (not b!4121955) (not b!4121969) b_and!318897 (not b!4121957) (not b!4121967) b_and!318893 (not b!4121958) (not b_next!117309) (not b_next!117307) (not b_next!117303) (not b_next!117305) (not b!4121966) tp_is_empty!21301 (not b!4121965) (not b!4121952) b_and!318901 (not b!4121971) (not b!4121954))
(check-sat (not b_next!117299) b_and!318897 (not b_next!117305) b_and!318899 b_and!318895 b_and!318901 (not b_next!117301) b_and!318903 b_and!318893 (not b_next!117309) (not b_next!117307) (not b_next!117303))
