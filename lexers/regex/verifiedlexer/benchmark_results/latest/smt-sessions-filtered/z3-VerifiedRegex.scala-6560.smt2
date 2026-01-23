; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347110 () Bool)

(assert start!347110)

(declare-fun b!3689939 () Bool)

(declare-fun b_free!97909 () Bool)

(declare-fun b_next!98613 () Bool)

(assert (=> b!3689939 (= b_free!97909 (not b_next!98613))))

(declare-fun tp!1121309 () Bool)

(declare-fun b_and!275663 () Bool)

(assert (=> b!3689939 (= tp!1121309 b_and!275663)))

(declare-fun b_free!97911 () Bool)

(declare-fun b_next!98615 () Bool)

(assert (=> b!3689939 (= b_free!97911 (not b_next!98615))))

(declare-fun tp!1121305 () Bool)

(declare-fun b_and!275665 () Bool)

(assert (=> b!3689939 (= tp!1121305 b_and!275665)))

(declare-fun b!3689929 () Bool)

(declare-fun e!2284932 () Bool)

(declare-fun e!2284930 () Bool)

(assert (=> b!3689929 (= e!2284932 e!2284930)))

(declare-fun res!1499766 () Bool)

(assert (=> b!3689929 (=> (not res!1499766) (not e!2284930))))

(declare-datatypes ((List!39182 0))(
  ( (Nil!39058) (Cons!39058 (h!44478 (_ BitVec 16)) (t!301307 List!39182)) )
))
(declare-datatypes ((TokenValue!6130 0))(
  ( (FloatLiteralValue!12260 (text!43355 List!39182)) (TokenValueExt!6129 (__x!24477 Int)) (Broken!30650 (value!188584 List!39182)) (Object!6253) (End!6130) (Def!6130) (Underscore!6130) (Match!6130) (Else!6130) (Error!6130) (Case!6130) (If!6130) (Extends!6130) (Abstract!6130) (Class!6130) (Val!6130) (DelimiterValue!12260 (del!6190 List!39182)) (KeywordValue!6136 (value!188585 List!39182)) (CommentValue!12260 (value!188586 List!39182)) (WhitespaceValue!12260 (value!188587 List!39182)) (IndentationValue!6130 (value!188588 List!39182)) (String!43983) (Int32!6130) (Broken!30651 (value!188589 List!39182)) (Boolean!6131) (Unit!57107) (OperatorValue!6133 (op!6190 List!39182)) (IdentifierValue!12260 (value!188590 List!39182)) (IdentifierValue!12261 (value!188591 List!39182)) (WhitespaceValue!12261 (value!188592 List!39182)) (True!12260) (False!12260) (Broken!30652 (value!188593 List!39182)) (Broken!30653 (value!188594 List!39182)) (True!12261) (RightBrace!6130) (RightBracket!6130) (Colon!6130) (Null!6130) (Comma!6130) (LeftBracket!6130) (False!12261) (LeftBrace!6130) (ImaginaryLiteralValue!6130 (text!43356 List!39182)) (StringLiteralValue!18390 (value!188595 List!39182)) (EOFValue!6130 (value!188596 List!39182)) (IdentValue!6130 (value!188597 List!39182)) (DelimiterValue!12261 (value!188598 List!39182)) (DedentValue!6130 (value!188599 List!39182)) (NewLineValue!6130 (value!188600 List!39182)) (IntegerValue!18390 (value!188601 (_ BitVec 32)) (text!43357 List!39182)) (IntegerValue!18391 (value!188602 Int) (text!43358 List!39182)) (Times!6130) (Or!6130) (Equal!6130) (Minus!6130) (Broken!30654 (value!188603 List!39182)) (And!6130) (Div!6130) (LessEqual!6130) (Mod!6130) (Concat!16789) (Not!6130) (Plus!6130) (SpaceValue!6130 (value!188604 List!39182)) (IntegerValue!18392 (value!188605 Int) (text!43359 List!39182)) (StringLiteralValue!18391 (text!43360 List!39182)) (FloatLiteralValue!12261 (text!43361 List!39182)) (BytesLiteralValue!6130 (value!188606 List!39182)) (CommentValue!12261 (value!188607 List!39182)) (StringLiteralValue!18392 (value!188608 List!39182)) (ErrorTokenValue!6130 (msg!6191 List!39182)) )
))
(declare-datatypes ((C!21504 0))(
  ( (C!21505 (val!12800 Int)) )
))
(declare-datatypes ((List!39183 0))(
  ( (Nil!39059) (Cons!39059 (h!44479 C!21504) (t!301308 List!39183)) )
))
(declare-datatypes ((IArray!23985 0))(
  ( (IArray!23986 (innerList!12050 List!39183)) )
))
(declare-datatypes ((Conc!11990 0))(
  ( (Node!11990 (left!30470 Conc!11990) (right!30800 Conc!11990) (csize!24210 Int) (cheight!12201 Int)) (Leaf!18551 (xs!15192 IArray!23985) (csize!24211 Int)) (Empty!11990) )
))
(declare-datatypes ((BalanceConc!23594 0))(
  ( (BalanceConc!23595 (c!638191 Conc!11990)) )
))
(declare-datatypes ((Regex!10659 0))(
  ( (ElementMatch!10659 (c!638192 C!21504)) (Concat!16790 (regOne!21830 Regex!10659) (regTwo!21830 Regex!10659)) (EmptyExpr!10659) (Star!10659 (reg!10988 Regex!10659)) (EmptyLang!10659) (Union!10659 (regOne!21831 Regex!10659) (regTwo!21831 Regex!10659)) )
))
(declare-datatypes ((String!43984 0))(
  ( (String!43985 (value!188609 String)) )
))
(declare-datatypes ((TokenValueInjection!11688 0))(
  ( (TokenValueInjection!11689 (toValue!8220 Int) (toChars!8079 Int)) )
))
(declare-datatypes ((Rule!11600 0))(
  ( (Rule!11601 (regex!5900 Regex!10659) (tag!6716 String!43984) (isSeparator!5900 Bool) (transformation!5900 TokenValueInjection!11688)) )
))
(declare-fun lt!1291930 () Rule!11600)

(declare-fun lt!1291926 () List!39183)

(declare-fun matchR!5214 (Regex!10659 List!39183) Bool)

(assert (=> b!3689929 (= res!1499766 (matchR!5214 (regex!5900 lt!1291930) lt!1291926))))

(declare-datatypes ((Option!8411 0))(
  ( (None!8410) (Some!8410 (v!38364 Rule!11600)) )
))
(declare-fun lt!1291922 () Option!8411)

(declare-fun get!12956 (Option!8411) Rule!11600)

(assert (=> b!3689929 (= lt!1291930 (get!12956 lt!1291922))))

(declare-fun b!3689930 () Bool)

(declare-fun e!2284926 () Bool)

(declare-fun e!2284934 () Bool)

(declare-fun tp!1121308 () Bool)

(assert (=> b!3689930 (= e!2284926 (and e!2284934 tp!1121308))))

(declare-fun b!3689931 () Bool)

(declare-fun e!2284933 () Bool)

(assert (=> b!3689931 (= e!2284933 true)))

(declare-datatypes ((LexerInterface!5489 0))(
  ( (LexerInterfaceExt!5486 (__x!24478 Int)) (Lexer!5487) )
))
(declare-fun thiss!25197 () LexerInterface!5489)

(declare-datatypes ((Token!11166 0))(
  ( (Token!11167 (value!188610 TokenValue!6130) (rule!8748 Rule!11600) (size!29850 Int) (originalCharacters!6614 List!39183)) )
))
(declare-fun lt!1291921 () Token!11166)

(declare-fun lt!1291923 () List!39183)

(declare-datatypes ((tuple2!38976 0))(
  ( (tuple2!38977 (_1!22622 Token!11166) (_2!22622 List!39183)) )
))
(declare-datatypes ((Option!8412 0))(
  ( (None!8411) (Some!8411 (v!38365 tuple2!38976)) )
))
(declare-fun isEmpty!23268 (Option!8412) Bool)

(declare-fun maxPrefixOneRule!2135 (LexerInterface!5489 Rule!11600 List!39183) Option!8412)

(assert (=> b!3689931 (isEmpty!23268 (maxPrefixOneRule!2135 thiss!25197 (rule!8748 lt!1291921) lt!1291923))))

(declare-datatypes ((Unit!57108 0))(
  ( (Unit!57109) )
))
(declare-fun lt!1291928 () Unit!57108)

(declare-datatypes ((List!39184 0))(
  ( (Nil!39060) (Cons!39060 (h!44480 Rule!11600) (t!301309 List!39184)) )
))
(declare-fun rules!3568 () List!39184)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!590 (LexerInterface!5489 Rule!11600 List!39184 List!39183) Unit!57108)

(assert (=> b!3689931 (= lt!1291928 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!590 thiss!25197 (rule!8748 lt!1291921) rules!3568 lt!1291923))))

(declare-fun b!3689932 () Bool)

(declare-fun res!1499767 () Bool)

(assert (=> b!3689932 (=> res!1499767 e!2284933)))

(declare-fun maxPrefix!3017 (LexerInterface!5489 List!39184 List!39183) Option!8412)

(assert (=> b!3689932 (= res!1499767 (not (isEmpty!23268 (maxPrefix!3017 thiss!25197 rules!3568 lt!1291923))))))

(declare-fun b!3689933 () Bool)

(declare-fun e!2284931 () Bool)

(declare-fun tp_is_empty!18401 () Bool)

(declare-fun tp!1121307 () Bool)

(assert (=> b!3689933 (= e!2284931 (and tp_is_empty!18401 tp!1121307))))

(declare-fun b!3689934 () Bool)

(declare-fun e!2284925 () Bool)

(declare-fun e!2284928 () Bool)

(assert (=> b!3689934 (= e!2284925 e!2284928)))

(declare-fun res!1499771 () Bool)

(assert (=> b!3689934 (=> (not res!1499771) (not e!2284928))))

(declare-datatypes ((List!39185 0))(
  ( (Nil!39061) (Cons!39061 (h!44481 Token!11166) (t!301310 List!39185)) )
))
(declare-datatypes ((IArray!23987 0))(
  ( (IArray!23988 (innerList!12051 List!39185)) )
))
(declare-datatypes ((Conc!11991 0))(
  ( (Node!11991 (left!30471 Conc!11991) (right!30801 Conc!11991) (csize!24212 Int) (cheight!12202 Int)) (Leaf!18552 (xs!15193 IArray!23987) (csize!24213 Int)) (Empty!11991) )
))
(declare-datatypes ((BalanceConc!23596 0))(
  ( (BalanceConc!23597 (c!638193 Conc!11991)) )
))
(declare-datatypes ((tuple2!38978 0))(
  ( (tuple2!38979 (_1!22623 BalanceConc!23596) (_2!22623 BalanceConc!23594)) )
))
(declare-fun lt!1291924 () tuple2!38978)

(declare-fun isEmpty!23269 (BalanceConc!23596) Bool)

(assert (=> b!3689934 (= res!1499771 (not (isEmpty!23269 (_1!22623 lt!1291924))))))

(declare-fun input!3129 () List!39183)

(declare-fun lex!2630 (LexerInterface!5489 List!39184 BalanceConc!23594) tuple2!38978)

(declare-fun seqFromList!4449 (List!39183) BalanceConc!23594)

(assert (=> b!3689934 (= lt!1291924 (lex!2630 thiss!25197 rules!3568 (seqFromList!4449 input!3129)))))

(declare-fun res!1499765 () Bool)

(assert (=> start!347110 (=> (not res!1499765) (not e!2284925))))

(get-info :version)

(assert (=> start!347110 (= res!1499765 ((_ is Lexer!5487) thiss!25197))))

(assert (=> start!347110 e!2284925))

(assert (=> start!347110 true))

(assert (=> start!347110 e!2284926))

(assert (=> start!347110 e!2284931))

(declare-fun e!2284927 () Bool)

(assert (=> start!347110 e!2284927))

(declare-fun b!3689928 () Bool)

(declare-fun res!1499768 () Bool)

(assert (=> b!3689928 (=> (not res!1499768) (not e!2284925))))

(declare-fun rulesInvariant!4886 (LexerInterface!5489 List!39184) Bool)

(assert (=> b!3689928 (= res!1499768 (rulesInvariant!4886 thiss!25197 rules!3568))))

(declare-fun tp!1121310 () Bool)

(declare-fun b!3689935 () Bool)

(declare-fun e!2284929 () Bool)

(declare-fun inv!52527 (String!43984) Bool)

(declare-fun inv!52529 (TokenValueInjection!11688) Bool)

(assert (=> b!3689935 (= e!2284934 (and tp!1121310 (inv!52527 (tag!6716 (h!44480 rules!3568))) (inv!52529 (transformation!5900 (h!44480 rules!3568))) e!2284929))))

(declare-fun b!3689936 () Bool)

(declare-fun res!1499769 () Bool)

(assert (=> b!3689936 (=> (not res!1499769) (not e!2284925))))

(declare-fun isEmpty!23270 (List!39184) Bool)

(assert (=> b!3689936 (= res!1499769 (not (isEmpty!23270 rules!3568)))))

(declare-fun b!3689937 () Bool)

(assert (=> b!3689937 (= e!2284930 (= (rule!8748 lt!1291921) lt!1291930))))

(declare-fun b!3689938 () Bool)

(declare-fun tp!1121306 () Bool)

(assert (=> b!3689938 (= e!2284927 (and tp_is_empty!18401 tp!1121306))))

(assert (=> b!3689939 (= e!2284929 (and tp!1121309 tp!1121305))))

(declare-fun b!3689940 () Bool)

(assert (=> b!3689940 (= e!2284928 (not e!2284933))))

(declare-fun res!1499764 () Bool)

(assert (=> b!3689940 (=> res!1499764 e!2284933)))

(assert (=> b!3689940 (= res!1499764 (not (matchR!5214 (regex!5900 (rule!8748 lt!1291921)) lt!1291926)))))

(assert (=> b!3689940 e!2284932))

(declare-fun res!1499770 () Bool)

(assert (=> b!3689940 (=> (not res!1499770) (not e!2284932))))

(declare-fun isDefined!6607 (Option!8411) Bool)

(assert (=> b!3689940 (= res!1499770 (isDefined!6607 lt!1291922))))

(declare-fun getRuleFromTag!1482 (LexerInterface!5489 List!39184 String!43984) Option!8411)

(assert (=> b!3689940 (= lt!1291922 (getRuleFromTag!1482 thiss!25197 rules!3568 (tag!6716 (rule!8748 lt!1291921))))))

(declare-fun lt!1291920 () Unit!57108)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1482 (LexerInterface!5489 List!39184 List!39183 Token!11166) Unit!57108)

(assert (=> b!3689940 (= lt!1291920 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1482 thiss!25197 rules!3568 input!3129 lt!1291921))))

(declare-fun isPrefix!3253 (List!39183 List!39183) Bool)

(assert (=> b!3689940 (isPrefix!3253 lt!1291926 lt!1291923)))

(declare-fun suffix!1448 () List!39183)

(declare-fun ++!9731 (List!39183 List!39183) List!39183)

(assert (=> b!3689940 (= lt!1291923 (++!9731 input!3129 suffix!1448))))

(declare-fun lt!1291929 () Unit!57108)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!582 (List!39183 List!39183 List!39183) Unit!57108)

(assert (=> b!3689940 (= lt!1291929 (lemmaPrefixStaysPrefixWhenAddingToSuffix!582 lt!1291926 input!3129 suffix!1448))))

(declare-fun lt!1291925 () tuple2!38976)

(assert (=> b!3689940 (isPrefix!3253 lt!1291926 (++!9731 lt!1291926 (_2!22622 lt!1291925)))))

(declare-fun lt!1291927 () Unit!57108)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2170 (List!39183 List!39183) Unit!57108)

(assert (=> b!3689940 (= lt!1291927 (lemmaConcatTwoListThenFirstIsPrefix!2170 lt!1291926 (_2!22622 lt!1291925)))))

(declare-fun get!12957 (Option!8412) tuple2!38976)

(assert (=> b!3689940 (= lt!1291925 (get!12957 (maxPrefix!3017 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14598 (BalanceConc!23594) List!39183)

(declare-fun charsOf!3911 (Token!11166) BalanceConc!23594)

(assert (=> b!3689940 (= lt!1291926 (list!14598 (charsOf!3911 lt!1291921)))))

(declare-fun head!7970 (List!39185) Token!11166)

(declare-fun list!14599 (BalanceConc!23596) List!39185)

(assert (=> b!3689940 (= lt!1291921 (head!7970 (list!14599 (_1!22623 lt!1291924))))))

(assert (= (and start!347110 res!1499765) b!3689936))

(assert (= (and b!3689936 res!1499769) b!3689928))

(assert (= (and b!3689928 res!1499768) b!3689934))

(assert (= (and b!3689934 res!1499771) b!3689940))

(assert (= (and b!3689940 res!1499770) b!3689929))

(assert (= (and b!3689929 res!1499766) b!3689937))

(assert (= (and b!3689940 (not res!1499764)) b!3689932))

(assert (= (and b!3689932 (not res!1499767)) b!3689931))

(assert (= b!3689935 b!3689939))

(assert (= b!3689930 b!3689935))

(assert (= (and start!347110 ((_ is Cons!39060) rules!3568)) b!3689930))

(assert (= (and start!347110 ((_ is Cons!39059) suffix!1448)) b!3689933))

(assert (= (and start!347110 ((_ is Cons!39059) input!3129)) b!3689938))

(declare-fun m!4202385 () Bool)

(assert (=> b!3689940 m!4202385))

(declare-fun m!4202387 () Bool)

(assert (=> b!3689940 m!4202387))

(declare-fun m!4202389 () Bool)

(assert (=> b!3689940 m!4202389))

(declare-fun m!4202391 () Bool)

(assert (=> b!3689940 m!4202391))

(declare-fun m!4202393 () Bool)

(assert (=> b!3689940 m!4202393))

(declare-fun m!4202395 () Bool)

(assert (=> b!3689940 m!4202395))

(declare-fun m!4202397 () Bool)

(assert (=> b!3689940 m!4202397))

(declare-fun m!4202399 () Bool)

(assert (=> b!3689940 m!4202399))

(assert (=> b!3689940 m!4202395))

(declare-fun m!4202401 () Bool)

(assert (=> b!3689940 m!4202401))

(declare-fun m!4202403 () Bool)

(assert (=> b!3689940 m!4202403))

(declare-fun m!4202405 () Bool)

(assert (=> b!3689940 m!4202405))

(declare-fun m!4202407 () Bool)

(assert (=> b!3689940 m!4202407))

(declare-fun m!4202409 () Bool)

(assert (=> b!3689940 m!4202409))

(declare-fun m!4202411 () Bool)

(assert (=> b!3689940 m!4202411))

(declare-fun m!4202413 () Bool)

(assert (=> b!3689940 m!4202413))

(assert (=> b!3689940 m!4202387))

(declare-fun m!4202415 () Bool)

(assert (=> b!3689940 m!4202415))

(assert (=> b!3689940 m!4202391))

(assert (=> b!3689940 m!4202405))

(declare-fun m!4202417 () Bool)

(assert (=> b!3689928 m!4202417))

(declare-fun m!4202419 () Bool)

(assert (=> b!3689935 m!4202419))

(declare-fun m!4202421 () Bool)

(assert (=> b!3689935 m!4202421))

(declare-fun m!4202423 () Bool)

(assert (=> b!3689932 m!4202423))

(assert (=> b!3689932 m!4202423))

(declare-fun m!4202425 () Bool)

(assert (=> b!3689932 m!4202425))

(declare-fun m!4202427 () Bool)

(assert (=> b!3689929 m!4202427))

(declare-fun m!4202429 () Bool)

(assert (=> b!3689929 m!4202429))

(declare-fun m!4202431 () Bool)

(assert (=> b!3689931 m!4202431))

(assert (=> b!3689931 m!4202431))

(declare-fun m!4202433 () Bool)

(assert (=> b!3689931 m!4202433))

(declare-fun m!4202435 () Bool)

(assert (=> b!3689931 m!4202435))

(declare-fun m!4202437 () Bool)

(assert (=> b!3689936 m!4202437))

(declare-fun m!4202439 () Bool)

(assert (=> b!3689934 m!4202439))

(declare-fun m!4202441 () Bool)

(assert (=> b!3689934 m!4202441))

(assert (=> b!3689934 m!4202441))

(declare-fun m!4202443 () Bool)

(assert (=> b!3689934 m!4202443))

(check-sat (not b!3689940) (not b!3689936) (not b!3689929) tp_is_empty!18401 (not b!3689930) (not b!3689931) (not b_next!98615) b_and!275665 (not b!3689928) (not b!3689934) (not b!3689933) (not b!3689932) (not b!3689935) b_and!275663 (not b_next!98613) (not b!3689938))
(check-sat b_and!275663 b_and!275665 (not b_next!98615) (not b_next!98613))
