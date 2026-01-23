; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386504 () Bool)

(assert start!386504)

(declare-fun b!4086733 () Bool)

(declare-fun b_free!114193 () Bool)

(declare-fun b_next!114897 () Bool)

(assert (=> b!4086733 (= b_free!114193 (not b_next!114897))))

(declare-fun tp!1237367 () Bool)

(declare-fun b_and!314699 () Bool)

(assert (=> b!4086733 (= tp!1237367 b_and!314699)))

(declare-fun b_free!114195 () Bool)

(declare-fun b_next!114899 () Bool)

(assert (=> b!4086733 (= b_free!114195 (not b_next!114899))))

(declare-fun tp!1237363 () Bool)

(declare-fun b_and!314701 () Bool)

(assert (=> b!4086733 (= tp!1237363 b_and!314701)))

(declare-fun b!4086734 () Bool)

(declare-fun b_free!114197 () Bool)

(declare-fun b_next!114901 () Bool)

(assert (=> b!4086734 (= b_free!114197 (not b_next!114901))))

(declare-fun tp!1237364 () Bool)

(declare-fun b_and!314703 () Bool)

(assert (=> b!4086734 (= tp!1237364 b_and!314703)))

(declare-fun b_free!114199 () Bool)

(declare-fun b_next!114903 () Bool)

(assert (=> b!4086734 (= b_free!114199 (not b_next!114903))))

(declare-fun tp!1237366 () Bool)

(declare-fun b_and!314705 () Bool)

(assert (=> b!4086734 (= tp!1237366 b_and!314705)))

(declare-fun b!4086714 () Bool)

(declare-fun res!1669880 () Bool)

(declare-fun e!2536392 () Bool)

(assert (=> b!4086714 (=> (not res!1669880) (not e!2536392))))

(declare-datatypes ((LexerInterface!6669 0))(
  ( (LexerInterfaceExt!6666 (__x!26837 Int)) (Lexer!6667) )
))
(declare-fun thiss!26199 () LexerInterface!6669)

(declare-datatypes ((List!43935 0))(
  ( (Nil!43811) (Cons!43811 (h!49231 (_ BitVec 16)) (t!338238 List!43935)) )
))
(declare-datatypes ((TokenValue!7310 0))(
  ( (FloatLiteralValue!14620 (text!51615 List!43935)) (TokenValueExt!7309 (__x!26838 Int)) (Broken!36550 (value!222406 List!43935)) (Object!7433) (End!7310) (Def!7310) (Underscore!7310) (Match!7310) (Else!7310) (Error!7310) (Case!7310) (If!7310) (Extends!7310) (Abstract!7310) (Class!7310) (Val!7310) (DelimiterValue!14620 (del!7370 List!43935)) (KeywordValue!7316 (value!222407 List!43935)) (CommentValue!14620 (value!222408 List!43935)) (WhitespaceValue!14620 (value!222409 List!43935)) (IndentationValue!7310 (value!222410 List!43935)) (String!50299) (Int32!7310) (Broken!36551 (value!222411 List!43935)) (Boolean!7311) (Unit!63336) (OperatorValue!7313 (op!7370 List!43935)) (IdentifierValue!14620 (value!222412 List!43935)) (IdentifierValue!14621 (value!222413 List!43935)) (WhitespaceValue!14621 (value!222414 List!43935)) (True!14620) (False!14620) (Broken!36552 (value!222415 List!43935)) (Broken!36553 (value!222416 List!43935)) (True!14621) (RightBrace!7310) (RightBracket!7310) (Colon!7310) (Null!7310) (Comma!7310) (LeftBracket!7310) (False!14621) (LeftBrace!7310) (ImaginaryLiteralValue!7310 (text!51616 List!43935)) (StringLiteralValue!21930 (value!222417 List!43935)) (EOFValue!7310 (value!222418 List!43935)) (IdentValue!7310 (value!222419 List!43935)) (DelimiterValue!14621 (value!222420 List!43935)) (DedentValue!7310 (value!222421 List!43935)) (NewLineValue!7310 (value!222422 List!43935)) (IntegerValue!21930 (value!222423 (_ BitVec 32)) (text!51617 List!43935)) (IntegerValue!21931 (value!222424 Int) (text!51618 List!43935)) (Times!7310) (Or!7310) (Equal!7310) (Minus!7310) (Broken!36554 (value!222425 List!43935)) (And!7310) (Div!7310) (LessEqual!7310) (Mod!7310) (Concat!19295) (Not!7310) (Plus!7310) (SpaceValue!7310 (value!222426 List!43935)) (IntegerValue!21932 (value!222427 Int) (text!51619 List!43935)) (StringLiteralValue!21931 (text!51620 List!43935)) (FloatLiteralValue!14621 (text!51621 List!43935)) (BytesLiteralValue!7310 (value!222428 List!43935)) (CommentValue!14621 (value!222429 List!43935)) (StringLiteralValue!21932 (value!222430 List!43935)) (ErrorTokenValue!7310 (msg!7371 List!43935)) )
))
(declare-datatypes ((String!50300 0))(
  ( (String!50301 (value!222431 String)) )
))
(declare-datatypes ((C!24156 0))(
  ( (C!24157 (val!14188 Int)) )
))
(declare-datatypes ((Regex!11985 0))(
  ( (ElementMatch!11985 (c!704502 C!24156)) (Concat!19296 (regOne!24482 Regex!11985) (regTwo!24482 Regex!11985)) (EmptyExpr!11985) (Star!11985 (reg!12314 Regex!11985)) (EmptyLang!11985) (Union!11985 (regOne!24483 Regex!11985) (regTwo!24483 Regex!11985)) )
))
(declare-datatypes ((List!43936 0))(
  ( (Nil!43812) (Cons!43812 (h!49232 C!24156) (t!338239 List!43936)) )
))
(declare-datatypes ((IArray!26587 0))(
  ( (IArray!26588 (innerList!13351 List!43936)) )
))
(declare-datatypes ((Conc!13291 0))(
  ( (Node!13291 (left!32929 Conc!13291) (right!33259 Conc!13291) (csize!26812 Int) (cheight!13502 Int)) (Leaf!20546 (xs!16597 IArray!26587) (csize!26813 Int)) (Empty!13291) )
))
(declare-datatypes ((BalanceConc!26176 0))(
  ( (BalanceConc!26177 (c!704503 Conc!13291)) )
))
(declare-datatypes ((TokenValueInjection!14048 0))(
  ( (TokenValueInjection!14049 (toValue!9664 Int) (toChars!9523 Int)) )
))
(declare-datatypes ((Rule!13960 0))(
  ( (Rule!13961 (regex!7080 Regex!11985) (tag!7940 String!50300) (isSeparator!7080 Bool) (transformation!7080 TokenValueInjection!14048)) )
))
(declare-datatypes ((List!43937 0))(
  ( (Nil!43813) (Cons!43813 (h!49233 Rule!13960) (t!338240 List!43937)) )
))
(declare-fun rules!3870 () List!43937)

(declare-fun rulesInvariant!6012 (LexerInterface!6669 List!43937) Bool)

(assert (=> b!4086714 (= res!1669880 (rulesInvariant!6012 thiss!26199 rules!3870))))

(declare-fun b!4086715 () Bool)

(declare-fun e!2536396 () Bool)

(assert (=> b!4086715 (= e!2536392 e!2536396)))

(declare-fun res!1669882 () Bool)

(assert (=> b!4086715 (=> (not res!1669882) (not e!2536396))))

(declare-datatypes ((Token!13286 0))(
  ( (Token!13287 (value!222432 TokenValue!7310) (rule!10210 Rule!13960) (size!32722 Int) (originalCharacters!7674 List!43936)) )
))
(declare-datatypes ((tuple2!42748 0))(
  ( (tuple2!42749 (_1!24508 Token!13286) (_2!24508 List!43936)) )
))
(declare-datatypes ((Option!9486 0))(
  ( (None!9485) (Some!9485 (v!39961 tuple2!42748)) )
))
(declare-fun lt!1461736 () Option!9486)

(declare-fun input!3411 () List!43936)

(declare-fun maxPrefix!3959 (LexerInterface!6669 List!43937 List!43936) Option!9486)

(assert (=> b!4086715 (= res!1669882 (= (maxPrefix!3959 thiss!26199 rules!3870 input!3411) lt!1461736))))

(declare-fun lt!1461740 () BalanceConc!26176)

(declare-fun p!2988 () List!43936)

(declare-fun r!4213 () Rule!13960)

(declare-fun suffix!1518 () List!43936)

(declare-fun apply!10263 (TokenValueInjection!14048 BalanceConc!26176) TokenValue!7310)

(declare-fun size!32723 (List!43936) Int)

(assert (=> b!4086715 (= lt!1461736 (Some!9485 (tuple2!42749 (Token!13287 (apply!10263 (transformation!7080 r!4213) lt!1461740) r!4213 (size!32723 p!2988) p!2988) suffix!1518)))))

(declare-datatypes ((Unit!63337 0))(
  ( (Unit!63338) )
))
(declare-fun lt!1461735 () Unit!63337)

(declare-fun lemmaSemiInverse!2047 (TokenValueInjection!14048 BalanceConc!26176) Unit!63337)

(assert (=> b!4086715 (= lt!1461735 (lemmaSemiInverse!2047 (transformation!7080 r!4213) lt!1461740))))

(declare-fun seqFromList!5297 (List!43936) BalanceConc!26176)

(assert (=> b!4086715 (= lt!1461740 (seqFromList!5297 p!2988))))

(declare-fun b!4086716 () Bool)

(declare-fun e!2536385 () Bool)

(declare-fun tp_is_empty!20973 () Bool)

(declare-fun tp!1237369 () Bool)

(assert (=> b!4086716 (= e!2536385 (and tp_is_empty!20973 tp!1237369))))

(declare-fun b!4086717 () Bool)

(declare-fun e!2536387 () Bool)

(declare-fun tp!1237371 () Bool)

(assert (=> b!4086717 (= e!2536387 (and tp_is_empty!20973 tp!1237371))))

(declare-fun res!1669889 () Bool)

(assert (=> start!386504 (=> (not res!1669889) (not e!2536392))))

(get-info :version)

(assert (=> start!386504 (= res!1669889 ((_ is Lexer!6667) thiss!26199))))

(assert (=> start!386504 e!2536392))

(assert (=> start!386504 true))

(assert (=> start!386504 e!2536385))

(declare-fun e!2536388 () Bool)

(assert (=> start!386504 e!2536388))

(declare-fun e!2536382 () Bool)

(assert (=> start!386504 e!2536382))

(assert (=> start!386504 e!2536387))

(declare-fun e!2536390 () Bool)

(assert (=> start!386504 e!2536390))

(declare-fun tp!1237368 () Bool)

(declare-fun e!2536391 () Bool)

(declare-fun b!4086718 () Bool)

(declare-fun inv!58499 (String!50300) Bool)

(declare-fun inv!58501 (TokenValueInjection!14048) Bool)

(assert (=> b!4086718 (= e!2536390 (and tp!1237368 (inv!58499 (tag!7940 r!4213)) (inv!58501 (transformation!7080 r!4213)) e!2536391))))

(declare-fun b!4086719 () Bool)

(declare-fun res!1669884 () Bool)

(assert (=> b!4086719 (=> (not res!1669884) (not e!2536392))))

(declare-fun isEmpty!26195 (List!43937) Bool)

(assert (=> b!4086719 (= res!1669884 (not (isEmpty!26195 rules!3870)))))

(declare-fun b!4086720 () Bool)

(declare-fun res!1669891 () Bool)

(assert (=> b!4086720 (=> (not res!1669891) (not e!2536392))))

(declare-fun contains!8757 (List!43937 Rule!13960) Bool)

(assert (=> b!4086720 (= res!1669891 (contains!8757 rules!3870 r!4213))))

(declare-fun b!4086721 () Bool)

(declare-fun e!2536383 () Bool)

(assert (=> b!4086721 (= e!2536396 (not e!2536383))))

(declare-fun res!1669892 () Bool)

(assert (=> b!4086721 (=> res!1669892 e!2536383)))

(declare-fun matchR!5926 (Regex!11985 List!43936) Bool)

(assert (=> b!4086721 (= res!1669892 (not (matchR!5926 (regex!7080 r!4213) p!2988)))))

(declare-fun ruleValid!3000 (LexerInterface!6669 Rule!13960) Bool)

(assert (=> b!4086721 (ruleValid!3000 thiss!26199 r!4213)))

(declare-fun lt!1461738 () Unit!63337)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2066 (LexerInterface!6669 Rule!13960 List!43937) Unit!63337)

(assert (=> b!4086721 (= lt!1461738 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2066 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4086722 () Bool)

(declare-fun e!2536389 () Bool)

(declare-fun maxPrefixOneRule!2943 (LexerInterface!6669 Rule!13960 List!43936) Option!9486)

(assert (=> b!4086722 (= e!2536389 (= (maxPrefixOneRule!2943 thiss!26199 r!4213 input!3411) lt!1461736))))

(declare-fun b!4086723 () Bool)

(declare-fun e!2536386 () Bool)

(assert (=> b!4086723 (= e!2536386 e!2536389)))

(declare-fun res!1669886 () Bool)

(assert (=> b!4086723 (=> res!1669886 e!2536389)))

(declare-fun e!2536381 () Bool)

(assert (=> b!4086723 (= res!1669886 e!2536381)))

(declare-fun res!1669888 () Bool)

(assert (=> b!4086723 (=> (not res!1669888) (not e!2536381))))

(declare-fun lt!1461741 () Bool)

(assert (=> b!4086723 (= res!1669888 (not lt!1461741))))

(declare-fun e!2536394 () Bool)

(assert (=> b!4086723 e!2536394))

(declare-fun res!1669883 () Bool)

(assert (=> b!4086723 (=> res!1669883 e!2536394)))

(assert (=> b!4086723 (= res!1669883 lt!1461741)))

(declare-fun lt!1461739 () Option!9486)

(declare-fun isEmpty!26196 (Option!9486) Bool)

(assert (=> b!4086723 (= lt!1461741 (isEmpty!26196 lt!1461739))))

(assert (=> b!4086723 (= lt!1461739 (maxPrefix!3959 thiss!26199 (t!338240 rules!3870) input!3411))))

(declare-fun lt!1461737 () Unit!63337)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!18 (LexerInterface!6669 Rule!13960 List!43937 List!43936) Unit!63337)

(assert (=> b!4086723 (= lt!1461737 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!18 thiss!26199 (h!49233 rules!3870) (t!338240 rules!3870) input!3411))))

(declare-fun b!4086724 () Bool)

(declare-fun get!14368 (Option!9486) tuple2!42748)

(assert (=> b!4086724 (= e!2536394 (not (= (rule!10210 (_1!24508 (get!14368 lt!1461739))) (h!49233 rules!3870))))))

(declare-fun b!4086725 () Bool)

(declare-fun res!1669890 () Bool)

(assert (=> b!4086725 (=> (not res!1669890) (not e!2536392))))

(declare-fun isEmpty!26197 (List!43936) Bool)

(assert (=> b!4086725 (= res!1669890 (not (isEmpty!26197 p!2988)))))

(declare-fun b!4086726 () Bool)

(declare-fun res!1669887 () Bool)

(assert (=> b!4086726 (=> res!1669887 e!2536383)))

(assert (=> b!4086726 (= res!1669887 (or (not ((_ is Cons!43813) rules!3870)) (not (= (h!49233 rules!3870) r!4213))))))

(declare-fun b!4086727 () Bool)

(declare-fun res!1669881 () Bool)

(assert (=> b!4086727 (=> (not res!1669881) (not e!2536392))))

(declare-fun ++!11486 (List!43936 List!43936) List!43936)

(assert (=> b!4086727 (= res!1669881 (= input!3411 (++!11486 p!2988 suffix!1518)))))

(declare-fun b!4086728 () Bool)

(declare-fun tp!1237372 () Bool)

(assert (=> b!4086728 (= e!2536382 (and tp_is_empty!20973 tp!1237372))))

(declare-fun b!4086729 () Bool)

(assert (=> b!4086729 (= e!2536381 (= (rule!10210 (_1!24508 (get!14368 lt!1461739))) r!4213))))

(declare-fun b!4086730 () Bool)

(declare-fun e!2536380 () Bool)

(declare-fun tp!1237365 () Bool)

(assert (=> b!4086730 (= e!2536388 (and e!2536380 tp!1237365))))

(declare-fun tp!1237370 () Bool)

(declare-fun e!2536384 () Bool)

(declare-fun b!4086731 () Bool)

(assert (=> b!4086731 (= e!2536380 (and tp!1237370 (inv!58499 (tag!7940 (h!49233 rules!3870))) (inv!58501 (transformation!7080 (h!49233 rules!3870))) e!2536384))))

(declare-fun b!4086732 () Bool)

(assert (=> b!4086732 (= e!2536383 e!2536386)))

(declare-fun res!1669885 () Bool)

(assert (=> b!4086732 (=> res!1669885 e!2536386)))

(assert (=> b!4086732 (= res!1669885 (isEmpty!26195 (t!338240 rules!3870)))))

(assert (=> b!4086732 (rulesInvariant!6012 thiss!26199 (t!338240 rules!3870))))

(declare-fun lt!1461734 () Unit!63337)

(declare-fun lemmaInvariantOnRulesThenOnTail!784 (LexerInterface!6669 Rule!13960 List!43937) Unit!63337)

(assert (=> b!4086732 (= lt!1461734 (lemmaInvariantOnRulesThenOnTail!784 thiss!26199 (h!49233 rules!3870) (t!338240 rules!3870)))))

(assert (=> b!4086733 (= e!2536384 (and tp!1237367 tp!1237363))))

(assert (=> b!4086734 (= e!2536391 (and tp!1237364 tp!1237366))))

(assert (= (and start!386504 res!1669889) b!4086719))

(assert (= (and b!4086719 res!1669884) b!4086714))

(assert (= (and b!4086714 res!1669880) b!4086720))

(assert (= (and b!4086720 res!1669891) b!4086727))

(assert (= (and b!4086727 res!1669881) b!4086725))

(assert (= (and b!4086725 res!1669890) b!4086715))

(assert (= (and b!4086715 res!1669882) b!4086721))

(assert (= (and b!4086721 (not res!1669892)) b!4086726))

(assert (= (and b!4086726 (not res!1669887)) b!4086732))

(assert (= (and b!4086732 (not res!1669885)) b!4086723))

(assert (= (and b!4086723 (not res!1669883)) b!4086724))

(assert (= (and b!4086723 res!1669888) b!4086729))

(assert (= (and b!4086723 (not res!1669886)) b!4086722))

(assert (= (and start!386504 ((_ is Cons!43812) suffix!1518)) b!4086716))

(assert (= b!4086731 b!4086733))

(assert (= b!4086730 b!4086731))

(assert (= (and start!386504 ((_ is Cons!43813) rules!3870)) b!4086730))

(assert (= (and start!386504 ((_ is Cons!43812) p!2988)) b!4086728))

(assert (= (and start!386504 ((_ is Cons!43812) input!3411)) b!4086717))

(assert (= b!4086718 b!4086734))

(assert (= start!386504 b!4086718))

(declare-fun m!4693551 () Bool)

(assert (=> b!4086714 m!4693551))

(declare-fun m!4693553 () Bool)

(assert (=> b!4086727 m!4693553))

(declare-fun m!4693555 () Bool)

(assert (=> b!4086719 m!4693555))

(declare-fun m!4693557 () Bool)

(assert (=> b!4086723 m!4693557))

(declare-fun m!4693559 () Bool)

(assert (=> b!4086723 m!4693559))

(declare-fun m!4693561 () Bool)

(assert (=> b!4086723 m!4693561))

(declare-fun m!4693563 () Bool)

(assert (=> b!4086722 m!4693563))

(declare-fun m!4693565 () Bool)

(assert (=> b!4086732 m!4693565))

(declare-fun m!4693567 () Bool)

(assert (=> b!4086732 m!4693567))

(declare-fun m!4693569 () Bool)

(assert (=> b!4086732 m!4693569))

(declare-fun m!4693571 () Bool)

(assert (=> b!4086715 m!4693571))

(declare-fun m!4693573 () Bool)

(assert (=> b!4086715 m!4693573))

(declare-fun m!4693575 () Bool)

(assert (=> b!4086715 m!4693575))

(declare-fun m!4693577 () Bool)

(assert (=> b!4086715 m!4693577))

(declare-fun m!4693579 () Bool)

(assert (=> b!4086715 m!4693579))

(declare-fun m!4693581 () Bool)

(assert (=> b!4086721 m!4693581))

(declare-fun m!4693583 () Bool)

(assert (=> b!4086721 m!4693583))

(declare-fun m!4693585 () Bool)

(assert (=> b!4086721 m!4693585))

(declare-fun m!4693587 () Bool)

(assert (=> b!4086731 m!4693587))

(declare-fun m!4693589 () Bool)

(assert (=> b!4086731 m!4693589))

(declare-fun m!4693591 () Bool)

(assert (=> b!4086725 m!4693591))

(declare-fun m!4693593 () Bool)

(assert (=> b!4086729 m!4693593))

(declare-fun m!4693595 () Bool)

(assert (=> b!4086718 m!4693595))

(declare-fun m!4693597 () Bool)

(assert (=> b!4086718 m!4693597))

(declare-fun m!4693599 () Bool)

(assert (=> b!4086720 m!4693599))

(assert (=> b!4086724 m!4693593))

(check-sat (not b_next!114899) (not b!4086730) (not b!4086721) (not b!4086716) (not b!4086719) (not b!4086727) (not b!4086720) (not b!4086725) tp_is_empty!20973 (not b!4086717) (not b!4086728) (not b!4086724) b_and!314701 (not b!4086715) (not b_next!114901) (not b!4086718) (not b!4086731) (not b_next!114903) (not b!4086729) (not b_next!114897) b_and!314703 b_and!314699 (not b!4086723) (not b!4086722) (not b!4086714) b_and!314705 (not b!4086732))
(check-sat (not b_next!114899) b_and!314701 (not b_next!114901) (not b_next!114903) (not b_next!114897) b_and!314705 b_and!314703 b_and!314699)
(get-model)

(declare-fun b!4086791 () Bool)

(declare-fun res!1669941 () Bool)

(declare-fun e!2536424 () Bool)

(assert (=> b!4086791 (=> (not res!1669941) (not e!2536424))))

(declare-fun lt!1461785 () Option!9486)

(declare-fun list!16270 (BalanceConc!26176) List!43936)

(declare-fun charsOf!4844 (Token!13286) BalanceConc!26176)

(assert (=> b!4086791 (= res!1669941 (= (++!11486 (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461785)))) (_2!24508 (get!14368 lt!1461785))) input!3411))))

(declare-fun b!4086792 () Bool)

(declare-fun e!2536423 () Option!9486)

(declare-datatypes ((tuple2!42752 0))(
  ( (tuple2!42753 (_1!24510 List!43936) (_2!24510 List!43936)) )
))
(declare-fun lt!1461779 () tuple2!42752)

(declare-fun size!32725 (BalanceConc!26176) Int)

(assert (=> b!4086792 (= e!2536423 (Some!9485 (tuple2!42749 (Token!13287 (apply!10263 (transformation!7080 r!4213) (seqFromList!5297 (_1!24510 lt!1461779))) r!4213 (size!32725 (seqFromList!5297 (_1!24510 lt!1461779))) (_1!24510 lt!1461779)) (_2!24510 lt!1461779))))))

(declare-fun lt!1461780 () Unit!63337)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1423 (Regex!11985 List!43936) Unit!63337)

(assert (=> b!4086792 (= lt!1461780 (longestMatchIsAcceptedByMatchOrIsEmpty!1423 (regex!7080 r!4213) input!3411))))

(declare-fun res!1669943 () Bool)

(declare-fun findLongestMatchInner!1450 (Regex!11985 List!43936 Int List!43936 List!43936 Int) tuple2!42752)

(assert (=> b!4086792 (= res!1669943 (isEmpty!26197 (_1!24510 (findLongestMatchInner!1450 (regex!7080 r!4213) Nil!43812 (size!32723 Nil!43812) input!3411 input!3411 (size!32723 input!3411)))))))

(declare-fun e!2536426 () Bool)

(assert (=> b!4086792 (=> res!1669943 e!2536426)))

(assert (=> b!4086792 e!2536426))

(declare-fun lt!1461778 () Unit!63337)

(assert (=> b!4086792 (= lt!1461778 lt!1461780)))

(declare-fun lt!1461777 () Unit!63337)

(assert (=> b!4086792 (= lt!1461777 (lemmaSemiInverse!2047 (transformation!7080 r!4213) (seqFromList!5297 (_1!24510 lt!1461779))))))

(declare-fun b!4086793 () Bool)

(declare-fun res!1669940 () Bool)

(assert (=> b!4086793 (=> (not res!1669940) (not e!2536424))))

(assert (=> b!4086793 (= res!1669940 (< (size!32723 (_2!24508 (get!14368 lt!1461785))) (size!32723 input!3411)))))

(declare-fun b!4086794 () Bool)

(declare-fun res!1669942 () Bool)

(assert (=> b!4086794 (=> (not res!1669942) (not e!2536424))))

(assert (=> b!4086794 (= res!1669942 (= (value!222432 (_1!24508 (get!14368 lt!1461785))) (apply!10263 (transformation!7080 (rule!10210 (_1!24508 (get!14368 lt!1461785)))) (seqFromList!5297 (originalCharacters!7674 (_1!24508 (get!14368 lt!1461785)))))))))

(declare-fun b!4086795 () Bool)

(assert (=> b!4086795 (= e!2536423 None!9485)))

(declare-fun b!4086796 () Bool)

(assert (=> b!4086796 (= e!2536424 (= (size!32722 (_1!24508 (get!14368 lt!1461785))) (size!32723 (originalCharacters!7674 (_1!24508 (get!14368 lt!1461785))))))))

(declare-fun b!4086797 () Bool)

(declare-fun res!1669945 () Bool)

(assert (=> b!4086797 (=> (not res!1669945) (not e!2536424))))

(assert (=> b!4086797 (= res!1669945 (= (rule!10210 (_1!24508 (get!14368 lt!1461785))) r!4213))))

(declare-fun b!4086798 () Bool)

(assert (=> b!4086798 (= e!2536426 (matchR!5926 (regex!7080 r!4213) (_1!24510 (findLongestMatchInner!1450 (regex!7080 r!4213) Nil!43812 (size!32723 Nil!43812) input!3411 input!3411 (size!32723 input!3411)))))))

(declare-fun d!1213483 () Bool)

(declare-fun e!2536425 () Bool)

(assert (=> d!1213483 e!2536425))

(declare-fun res!1669944 () Bool)

(assert (=> d!1213483 (=> res!1669944 e!2536425)))

(assert (=> d!1213483 (= res!1669944 (isEmpty!26196 lt!1461785))))

(assert (=> d!1213483 (= lt!1461785 e!2536423)))

(declare-fun c!704511 () Bool)

(assert (=> d!1213483 (= c!704511 (isEmpty!26197 (_1!24510 lt!1461779)))))

(declare-fun findLongestMatch!1363 (Regex!11985 List!43936) tuple2!42752)

(assert (=> d!1213483 (= lt!1461779 (findLongestMatch!1363 (regex!7080 r!4213) input!3411))))

(assert (=> d!1213483 (ruleValid!3000 thiss!26199 r!4213)))

(assert (=> d!1213483 (= (maxPrefixOneRule!2943 thiss!26199 r!4213 input!3411) lt!1461785)))

(declare-fun b!4086799 () Bool)

(assert (=> b!4086799 (= e!2536425 e!2536424)))

(declare-fun res!1669939 () Bool)

(assert (=> b!4086799 (=> (not res!1669939) (not e!2536424))))

(assert (=> b!4086799 (= res!1669939 (matchR!5926 (regex!7080 r!4213) (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461785))))))))

(assert (= (and d!1213483 c!704511) b!4086795))

(assert (= (and d!1213483 (not c!704511)) b!4086792))

(assert (= (and b!4086792 (not res!1669943)) b!4086798))

(assert (= (and d!1213483 (not res!1669944)) b!4086799))

(assert (= (and b!4086799 res!1669939) b!4086791))

(assert (= (and b!4086791 res!1669941) b!4086793))

(assert (= (and b!4086793 res!1669940) b!4086797))

(assert (= (and b!4086797 res!1669945) b!4086794))

(assert (= (and b!4086794 res!1669942) b!4086796))

(declare-fun m!4693653 () Bool)

(assert (=> b!4086799 m!4693653))

(declare-fun m!4693655 () Bool)

(assert (=> b!4086799 m!4693655))

(assert (=> b!4086799 m!4693655))

(declare-fun m!4693657 () Bool)

(assert (=> b!4086799 m!4693657))

(assert (=> b!4086799 m!4693657))

(declare-fun m!4693659 () Bool)

(assert (=> b!4086799 m!4693659))

(assert (=> b!4086794 m!4693653))

(declare-fun m!4693661 () Bool)

(assert (=> b!4086794 m!4693661))

(assert (=> b!4086794 m!4693661))

(declare-fun m!4693663 () Bool)

(assert (=> b!4086794 m!4693663))

(declare-fun m!4693665 () Bool)

(assert (=> b!4086792 m!4693665))

(declare-fun m!4693667 () Bool)

(assert (=> b!4086792 m!4693667))

(assert (=> b!4086792 m!4693667))

(declare-fun m!4693669 () Bool)

(assert (=> b!4086792 m!4693669))

(declare-fun m!4693671 () Bool)

(assert (=> b!4086792 m!4693671))

(assert (=> b!4086792 m!4693669))

(declare-fun m!4693673 () Bool)

(assert (=> b!4086792 m!4693673))

(declare-fun m!4693675 () Bool)

(assert (=> b!4086792 m!4693675))

(assert (=> b!4086792 m!4693675))

(declare-fun m!4693677 () Bool)

(assert (=> b!4086792 m!4693677))

(assert (=> b!4086792 m!4693675))

(declare-fun m!4693679 () Bool)

(assert (=> b!4086792 m!4693679))

(assert (=> b!4086792 m!4693675))

(declare-fun m!4693681 () Bool)

(assert (=> b!4086792 m!4693681))

(assert (=> b!4086793 m!4693653))

(declare-fun m!4693683 () Bool)

(assert (=> b!4086793 m!4693683))

(assert (=> b!4086793 m!4693669))

(assert (=> b!4086797 m!4693653))

(assert (=> b!4086796 m!4693653))

(declare-fun m!4693685 () Bool)

(assert (=> b!4086796 m!4693685))

(assert (=> b!4086791 m!4693653))

(assert (=> b!4086791 m!4693655))

(assert (=> b!4086791 m!4693655))

(assert (=> b!4086791 m!4693657))

(assert (=> b!4086791 m!4693657))

(declare-fun m!4693687 () Bool)

(assert (=> b!4086791 m!4693687))

(declare-fun m!4693689 () Bool)

(assert (=> d!1213483 m!4693689))

(declare-fun m!4693691 () Bool)

(assert (=> d!1213483 m!4693691))

(declare-fun m!4693693 () Bool)

(assert (=> d!1213483 m!4693693))

(assert (=> d!1213483 m!4693583))

(assert (=> b!4086798 m!4693667))

(assert (=> b!4086798 m!4693669))

(assert (=> b!4086798 m!4693667))

(assert (=> b!4086798 m!4693669))

(assert (=> b!4086798 m!4693671))

(declare-fun m!4693695 () Bool)

(assert (=> b!4086798 m!4693695))

(assert (=> b!4086722 d!1213483))

(declare-fun b!4086902 () Bool)

(declare-fun e!2536485 () Bool)

(declare-fun e!2536483 () Bool)

(assert (=> b!4086902 (= e!2536485 e!2536483)))

(declare-fun res!1670018 () Bool)

(assert (=> b!4086902 (=> (not res!1670018) (not e!2536483))))

(declare-fun lt!1461801 () Bool)

(assert (=> b!4086902 (= res!1670018 (not lt!1461801))))

(declare-fun b!4086903 () Bool)

(declare-fun e!2536487 () Bool)

(declare-fun head!8637 (List!43936) C!24156)

(assert (=> b!4086903 (= e!2536487 (not (= (head!8637 p!2988) (c!704502 (regex!7080 r!4213)))))))

(declare-fun b!4086904 () Bool)

(declare-fun e!2536486 () Bool)

(declare-fun call!288921 () Bool)

(assert (=> b!4086904 (= e!2536486 (= lt!1461801 call!288921))))

(declare-fun b!4086905 () Bool)

(declare-fun e!2536481 () Bool)

(declare-fun derivativeStep!3627 (Regex!11985 C!24156) Regex!11985)

(declare-fun tail!6371 (List!43936) List!43936)

(assert (=> b!4086905 (= e!2536481 (matchR!5926 (derivativeStep!3627 (regex!7080 r!4213) (head!8637 p!2988)) (tail!6371 p!2988)))))

(declare-fun b!4086906 () Bool)

(declare-fun e!2536484 () Bool)

(assert (=> b!4086906 (= e!2536486 e!2536484)))

(declare-fun c!704529 () Bool)

(assert (=> b!4086906 (= c!704529 ((_ is EmptyLang!11985) (regex!7080 r!4213)))))

(declare-fun d!1213499 () Bool)

(assert (=> d!1213499 e!2536486))

(declare-fun c!704530 () Bool)

(assert (=> d!1213499 (= c!704530 ((_ is EmptyExpr!11985) (regex!7080 r!4213)))))

(assert (=> d!1213499 (= lt!1461801 e!2536481)))

(declare-fun c!704528 () Bool)

(assert (=> d!1213499 (= c!704528 (isEmpty!26197 p!2988))))

(declare-fun validRegex!5426 (Regex!11985) Bool)

(assert (=> d!1213499 (validRegex!5426 (regex!7080 r!4213))))

(assert (=> d!1213499 (= (matchR!5926 (regex!7080 r!4213) p!2988) lt!1461801)))

(declare-fun b!4086907 () Bool)

(declare-fun nullable!4226 (Regex!11985) Bool)

(assert (=> b!4086907 (= e!2536481 (nullable!4226 (regex!7080 r!4213)))))

(declare-fun b!4086908 () Bool)

(declare-fun res!1670016 () Bool)

(assert (=> b!4086908 (=> res!1670016 e!2536485)))

(declare-fun e!2536482 () Bool)

(assert (=> b!4086908 (= res!1670016 e!2536482)))

(declare-fun res!1670019 () Bool)

(assert (=> b!4086908 (=> (not res!1670019) (not e!2536482))))

(assert (=> b!4086908 (= res!1670019 lt!1461801)))

(declare-fun b!4086909 () Bool)

(declare-fun res!1670022 () Bool)

(assert (=> b!4086909 (=> (not res!1670022) (not e!2536482))))

(assert (=> b!4086909 (= res!1670022 (not call!288921))))

(declare-fun b!4086910 () Bool)

(assert (=> b!4086910 (= e!2536482 (= (head!8637 p!2988) (c!704502 (regex!7080 r!4213))))))

(declare-fun b!4086911 () Bool)

(assert (=> b!4086911 (= e!2536483 e!2536487)))

(declare-fun res!1670017 () Bool)

(assert (=> b!4086911 (=> res!1670017 e!2536487)))

(assert (=> b!4086911 (= res!1670017 call!288921)))

(declare-fun bm!288916 () Bool)

(assert (=> bm!288916 (= call!288921 (isEmpty!26197 p!2988))))

(declare-fun b!4086912 () Bool)

(assert (=> b!4086912 (= e!2536484 (not lt!1461801))))

(declare-fun b!4086913 () Bool)

(declare-fun res!1670023 () Bool)

(assert (=> b!4086913 (=> res!1670023 e!2536487)))

(assert (=> b!4086913 (= res!1670023 (not (isEmpty!26197 (tail!6371 p!2988))))))

(declare-fun b!4086914 () Bool)

(declare-fun res!1670020 () Bool)

(assert (=> b!4086914 (=> (not res!1670020) (not e!2536482))))

(assert (=> b!4086914 (= res!1670020 (isEmpty!26197 (tail!6371 p!2988)))))

(declare-fun b!4086915 () Bool)

(declare-fun res!1670021 () Bool)

(assert (=> b!4086915 (=> res!1670021 e!2536485)))

(assert (=> b!4086915 (= res!1670021 (not ((_ is ElementMatch!11985) (regex!7080 r!4213))))))

(assert (=> b!4086915 (= e!2536484 e!2536485)))

(assert (= (and d!1213499 c!704528) b!4086907))

(assert (= (and d!1213499 (not c!704528)) b!4086905))

(assert (= (and d!1213499 c!704530) b!4086904))

(assert (= (and d!1213499 (not c!704530)) b!4086906))

(assert (= (and b!4086906 c!704529) b!4086912))

(assert (= (and b!4086906 (not c!704529)) b!4086915))

(assert (= (and b!4086915 (not res!1670021)) b!4086908))

(assert (= (and b!4086908 res!1670019) b!4086909))

(assert (= (and b!4086909 res!1670022) b!4086914))

(assert (= (and b!4086914 res!1670020) b!4086910))

(assert (= (and b!4086908 (not res!1670016)) b!4086902))

(assert (= (and b!4086902 res!1670018) b!4086911))

(assert (= (and b!4086911 (not res!1670017)) b!4086913))

(assert (= (and b!4086913 (not res!1670023)) b!4086903))

(assert (= (or b!4086904 b!4086909 b!4086911) bm!288916))

(declare-fun m!4693763 () Bool)

(assert (=> b!4086907 m!4693763))

(declare-fun m!4693765 () Bool)

(assert (=> b!4086903 m!4693765))

(declare-fun m!4693767 () Bool)

(assert (=> b!4086913 m!4693767))

(assert (=> b!4086913 m!4693767))

(declare-fun m!4693769 () Bool)

(assert (=> b!4086913 m!4693769))

(assert (=> b!4086905 m!4693765))

(assert (=> b!4086905 m!4693765))

(declare-fun m!4693771 () Bool)

(assert (=> b!4086905 m!4693771))

(assert (=> b!4086905 m!4693767))

(assert (=> b!4086905 m!4693771))

(assert (=> b!4086905 m!4693767))

(declare-fun m!4693773 () Bool)

(assert (=> b!4086905 m!4693773))

(assert (=> bm!288916 m!4693591))

(assert (=> b!4086910 m!4693765))

(assert (=> d!1213499 m!4693591))

(declare-fun m!4693775 () Bool)

(assert (=> d!1213499 m!4693775))

(assert (=> b!4086914 m!4693767))

(assert (=> b!4086914 m!4693767))

(assert (=> b!4086914 m!4693769))

(assert (=> b!4086721 d!1213499))

(declare-fun d!1213515 () Bool)

(declare-fun res!1670034 () Bool)

(declare-fun e!2536493 () Bool)

(assert (=> d!1213515 (=> (not res!1670034) (not e!2536493))))

(assert (=> d!1213515 (= res!1670034 (validRegex!5426 (regex!7080 r!4213)))))

(assert (=> d!1213515 (= (ruleValid!3000 thiss!26199 r!4213) e!2536493)))

(declare-fun b!4086926 () Bool)

(declare-fun res!1670035 () Bool)

(assert (=> b!4086926 (=> (not res!1670035) (not e!2536493))))

(assert (=> b!4086926 (= res!1670035 (not (nullable!4226 (regex!7080 r!4213))))))

(declare-fun b!4086927 () Bool)

(assert (=> b!4086927 (= e!2536493 (not (= (tag!7940 r!4213) (String!50301 ""))))))

(assert (= (and d!1213515 res!1670034) b!4086926))

(assert (= (and b!4086926 res!1670035) b!4086927))

(assert (=> d!1213515 m!4693775))

(assert (=> b!4086926 m!4693763))

(assert (=> b!4086721 d!1213515))

(declare-fun d!1213521 () Bool)

(assert (=> d!1213521 (ruleValid!3000 thiss!26199 r!4213)))

(declare-fun lt!1461809 () Unit!63337)

(declare-fun choose!24953 (LexerInterface!6669 Rule!13960 List!43937) Unit!63337)

(assert (=> d!1213521 (= lt!1461809 (choose!24953 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1213521 (contains!8757 rules!3870 r!4213)))

(assert (=> d!1213521 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2066 thiss!26199 r!4213 rules!3870) lt!1461809)))

(declare-fun bs!593129 () Bool)

(assert (= bs!593129 d!1213521))

(assert (=> bs!593129 m!4693583))

(declare-fun m!4693779 () Bool)

(assert (=> bs!593129 m!4693779))

(assert (=> bs!593129 m!4693599))

(assert (=> b!4086721 d!1213521))

(declare-fun d!1213523 () Bool)

(assert (=> d!1213523 (= (isEmpty!26195 (t!338240 rules!3870)) ((_ is Nil!43813) (t!338240 rules!3870)))))

(assert (=> b!4086732 d!1213523))

(declare-fun d!1213525 () Bool)

(declare-fun res!1670051 () Bool)

(declare-fun e!2536508 () Bool)

(assert (=> d!1213525 (=> (not res!1670051) (not e!2536508))))

(declare-fun rulesValid!2772 (LexerInterface!6669 List!43937) Bool)

(assert (=> d!1213525 (= res!1670051 (rulesValid!2772 thiss!26199 (t!338240 rules!3870)))))

(assert (=> d!1213525 (= (rulesInvariant!6012 thiss!26199 (t!338240 rules!3870)) e!2536508)))

(declare-fun b!4086953 () Bool)

(declare-datatypes ((List!43939 0))(
  ( (Nil!43815) (Cons!43815 (h!49235 String!50300) (t!338266 List!43939)) )
))
(declare-fun noDuplicateTag!2773 (LexerInterface!6669 List!43937 List!43939) Bool)

(assert (=> b!4086953 (= e!2536508 (noDuplicateTag!2773 thiss!26199 (t!338240 rules!3870) Nil!43815))))

(assert (= (and d!1213525 res!1670051) b!4086953))

(declare-fun m!4693797 () Bool)

(assert (=> d!1213525 m!4693797))

(declare-fun m!4693799 () Bool)

(assert (=> b!4086953 m!4693799))

(assert (=> b!4086732 d!1213525))

(declare-fun d!1213531 () Bool)

(assert (=> d!1213531 (rulesInvariant!6012 thiss!26199 (t!338240 rules!3870))))

(declare-fun lt!1461820 () Unit!63337)

(declare-fun choose!24954 (LexerInterface!6669 Rule!13960 List!43937) Unit!63337)

(assert (=> d!1213531 (= lt!1461820 (choose!24954 thiss!26199 (h!49233 rules!3870) (t!338240 rules!3870)))))

(assert (=> d!1213531 (rulesInvariant!6012 thiss!26199 (Cons!43813 (h!49233 rules!3870) (t!338240 rules!3870)))))

(assert (=> d!1213531 (= (lemmaInvariantOnRulesThenOnTail!784 thiss!26199 (h!49233 rules!3870) (t!338240 rules!3870)) lt!1461820)))

(declare-fun bs!593130 () Bool)

(assert (= bs!593130 d!1213531))

(assert (=> bs!593130 m!4693567))

(declare-fun m!4693827 () Bool)

(assert (=> bs!593130 m!4693827))

(declare-fun m!4693829 () Bool)

(assert (=> bs!593130 m!4693829))

(assert (=> b!4086732 d!1213531))

(declare-fun d!1213535 () Bool)

(assert (=> d!1213535 (= (inv!58499 (tag!7940 (h!49233 rules!3870))) (= (mod (str.len (value!222431 (tag!7940 (h!49233 rules!3870)))) 2) 0))))

(assert (=> b!4086731 d!1213535))

(declare-fun d!1213537 () Bool)

(declare-fun res!1670054 () Bool)

(declare-fun e!2536511 () Bool)

(assert (=> d!1213537 (=> (not res!1670054) (not e!2536511))))

(declare-fun semiInverseModEq!3038 (Int Int) Bool)

(assert (=> d!1213537 (= res!1670054 (semiInverseModEq!3038 (toChars!9523 (transformation!7080 (h!49233 rules!3870))) (toValue!9664 (transformation!7080 (h!49233 rules!3870)))))))

(assert (=> d!1213537 (= (inv!58501 (transformation!7080 (h!49233 rules!3870))) e!2536511)))

(declare-fun b!4086956 () Bool)

(declare-fun equivClasses!2937 (Int Int) Bool)

(assert (=> b!4086956 (= e!2536511 (equivClasses!2937 (toChars!9523 (transformation!7080 (h!49233 rules!3870))) (toValue!9664 (transformation!7080 (h!49233 rules!3870)))))))

(assert (= (and d!1213537 res!1670054) b!4086956))

(declare-fun m!4693831 () Bool)

(assert (=> d!1213537 m!4693831))

(declare-fun m!4693833 () Bool)

(assert (=> b!4086956 m!4693833))

(assert (=> b!4086731 d!1213537))

(declare-fun d!1213539 () Bool)

(assert (=> d!1213539 (= (isEmpty!26197 p!2988) ((_ is Nil!43812) p!2988))))

(assert (=> b!4086725 d!1213539))

(declare-fun d!1213541 () Bool)

(declare-fun res!1670055 () Bool)

(declare-fun e!2536512 () Bool)

(assert (=> d!1213541 (=> (not res!1670055) (not e!2536512))))

(assert (=> d!1213541 (= res!1670055 (rulesValid!2772 thiss!26199 rules!3870))))

(assert (=> d!1213541 (= (rulesInvariant!6012 thiss!26199 rules!3870) e!2536512)))

(declare-fun b!4086957 () Bool)

(assert (=> b!4086957 (= e!2536512 (noDuplicateTag!2773 thiss!26199 rules!3870 Nil!43815))))

(assert (= (and d!1213541 res!1670055) b!4086957))

(declare-fun m!4693835 () Bool)

(assert (=> d!1213541 m!4693835))

(declare-fun m!4693837 () Bool)

(assert (=> b!4086957 m!4693837))

(assert (=> b!4086714 d!1213541))

(declare-fun d!1213543 () Bool)

(assert (=> d!1213543 (= (get!14368 lt!1461739) (v!39961 lt!1461739))))

(assert (=> b!4086724 d!1213543))

(declare-fun d!1213545 () Bool)

(assert (=> d!1213545 (= (isEmpty!26196 lt!1461739) (not ((_ is Some!9485) lt!1461739)))))

(assert (=> b!4086723 d!1213545))

(declare-fun d!1213547 () Bool)

(declare-fun e!2536521 () Bool)

(assert (=> d!1213547 e!2536521))

(declare-fun res!1670074 () Bool)

(assert (=> d!1213547 (=> res!1670074 e!2536521)))

(declare-fun lt!1461833 () Option!9486)

(assert (=> d!1213547 (= res!1670074 (isEmpty!26196 lt!1461833))))

(declare-fun e!2536520 () Option!9486)

(assert (=> d!1213547 (= lt!1461833 e!2536520)))

(declare-fun c!704538 () Bool)

(assert (=> d!1213547 (= c!704538 (and ((_ is Cons!43813) (t!338240 rules!3870)) ((_ is Nil!43813) (t!338240 (t!338240 rules!3870)))))))

(declare-fun lt!1461831 () Unit!63337)

(declare-fun lt!1461832 () Unit!63337)

(assert (=> d!1213547 (= lt!1461831 lt!1461832)))

(declare-fun isPrefix!4131 (List!43936 List!43936) Bool)

(assert (=> d!1213547 (isPrefix!4131 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2682 (List!43936 List!43936) Unit!63337)

(assert (=> d!1213547 (= lt!1461832 (lemmaIsPrefixRefl!2682 input!3411 input!3411))))

(declare-fun rulesValidInductive!2613 (LexerInterface!6669 List!43937) Bool)

(assert (=> d!1213547 (rulesValidInductive!2613 thiss!26199 (t!338240 rules!3870))))

(assert (=> d!1213547 (= (maxPrefix!3959 thiss!26199 (t!338240 rules!3870) input!3411) lt!1461833)))

(declare-fun b!4086976 () Bool)

(declare-fun call!288925 () Option!9486)

(assert (=> b!4086976 (= e!2536520 call!288925)))

(declare-fun b!4086977 () Bool)

(declare-fun res!1670075 () Bool)

(declare-fun e!2536519 () Bool)

(assert (=> b!4086977 (=> (not res!1670075) (not e!2536519))))

(assert (=> b!4086977 (= res!1670075 (= (value!222432 (_1!24508 (get!14368 lt!1461833))) (apply!10263 (transformation!7080 (rule!10210 (_1!24508 (get!14368 lt!1461833)))) (seqFromList!5297 (originalCharacters!7674 (_1!24508 (get!14368 lt!1461833)))))))))

(declare-fun bm!288920 () Bool)

(assert (=> bm!288920 (= call!288925 (maxPrefixOneRule!2943 thiss!26199 (h!49233 (t!338240 rules!3870)) input!3411))))

(declare-fun b!4086978 () Bool)

(declare-fun res!1670070 () Bool)

(assert (=> b!4086978 (=> (not res!1670070) (not e!2536519))))

(assert (=> b!4086978 (= res!1670070 (= (++!11486 (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461833)))) (_2!24508 (get!14368 lt!1461833))) input!3411))))

(declare-fun b!4086979 () Bool)

(declare-fun res!1670072 () Bool)

(assert (=> b!4086979 (=> (not res!1670072) (not e!2536519))))

(assert (=> b!4086979 (= res!1670072 (= (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461833)))) (originalCharacters!7674 (_1!24508 (get!14368 lt!1461833)))))))

(declare-fun b!4086980 () Bool)

(declare-fun res!1670076 () Bool)

(assert (=> b!4086980 (=> (not res!1670076) (not e!2536519))))

(assert (=> b!4086980 (= res!1670076 (< (size!32723 (_2!24508 (get!14368 lt!1461833))) (size!32723 input!3411)))))

(declare-fun b!4086981 () Bool)

(assert (=> b!4086981 (= e!2536519 (contains!8757 (t!338240 rules!3870) (rule!10210 (_1!24508 (get!14368 lt!1461833)))))))

(declare-fun b!4086982 () Bool)

(declare-fun lt!1461834 () Option!9486)

(declare-fun lt!1461835 () Option!9486)

(assert (=> b!4086982 (= e!2536520 (ite (and ((_ is None!9485) lt!1461834) ((_ is None!9485) lt!1461835)) None!9485 (ite ((_ is None!9485) lt!1461835) lt!1461834 (ite ((_ is None!9485) lt!1461834) lt!1461835 (ite (>= (size!32722 (_1!24508 (v!39961 lt!1461834))) (size!32722 (_1!24508 (v!39961 lt!1461835)))) lt!1461834 lt!1461835)))))))

(assert (=> b!4086982 (= lt!1461834 call!288925)))

(assert (=> b!4086982 (= lt!1461835 (maxPrefix!3959 thiss!26199 (t!338240 (t!338240 rules!3870)) input!3411))))

(declare-fun b!4086983 () Bool)

(assert (=> b!4086983 (= e!2536521 e!2536519)))

(declare-fun res!1670071 () Bool)

(assert (=> b!4086983 (=> (not res!1670071) (not e!2536519))))

(declare-fun isDefined!7180 (Option!9486) Bool)

(assert (=> b!4086983 (= res!1670071 (isDefined!7180 lt!1461833))))

(declare-fun b!4086984 () Bool)

(declare-fun res!1670073 () Bool)

(assert (=> b!4086984 (=> (not res!1670073) (not e!2536519))))

(assert (=> b!4086984 (= res!1670073 (matchR!5926 (regex!7080 (rule!10210 (_1!24508 (get!14368 lt!1461833)))) (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461833))))))))

(assert (= (and d!1213547 c!704538) b!4086976))

(assert (= (and d!1213547 (not c!704538)) b!4086982))

(assert (= (or b!4086976 b!4086982) bm!288920))

(assert (= (and d!1213547 (not res!1670074)) b!4086983))

(assert (= (and b!4086983 res!1670071) b!4086979))

(assert (= (and b!4086979 res!1670072) b!4086980))

(assert (= (and b!4086980 res!1670076) b!4086978))

(assert (= (and b!4086978 res!1670070) b!4086977))

(assert (= (and b!4086977 res!1670075) b!4086984))

(assert (= (and b!4086984 res!1670073) b!4086981))

(declare-fun m!4693839 () Bool)

(assert (=> b!4086979 m!4693839))

(declare-fun m!4693841 () Bool)

(assert (=> b!4086979 m!4693841))

(assert (=> b!4086979 m!4693841))

(declare-fun m!4693843 () Bool)

(assert (=> b!4086979 m!4693843))

(assert (=> b!4086981 m!4693839))

(declare-fun m!4693845 () Bool)

(assert (=> b!4086981 m!4693845))

(declare-fun m!4693847 () Bool)

(assert (=> b!4086982 m!4693847))

(assert (=> b!4086984 m!4693839))

(assert (=> b!4086984 m!4693841))

(assert (=> b!4086984 m!4693841))

(assert (=> b!4086984 m!4693843))

(assert (=> b!4086984 m!4693843))

(declare-fun m!4693849 () Bool)

(assert (=> b!4086984 m!4693849))

(declare-fun m!4693851 () Bool)

(assert (=> bm!288920 m!4693851))

(assert (=> b!4086978 m!4693839))

(assert (=> b!4086978 m!4693841))

(assert (=> b!4086978 m!4693841))

(assert (=> b!4086978 m!4693843))

(assert (=> b!4086978 m!4693843))

(declare-fun m!4693853 () Bool)

(assert (=> b!4086978 m!4693853))

(declare-fun m!4693855 () Bool)

(assert (=> b!4086983 m!4693855))

(declare-fun m!4693857 () Bool)

(assert (=> d!1213547 m!4693857))

(declare-fun m!4693859 () Bool)

(assert (=> d!1213547 m!4693859))

(declare-fun m!4693861 () Bool)

(assert (=> d!1213547 m!4693861))

(declare-fun m!4693863 () Bool)

(assert (=> d!1213547 m!4693863))

(assert (=> b!4086977 m!4693839))

(declare-fun m!4693865 () Bool)

(assert (=> b!4086977 m!4693865))

(assert (=> b!4086977 m!4693865))

(declare-fun m!4693867 () Bool)

(assert (=> b!4086977 m!4693867))

(assert (=> b!4086980 m!4693839))

(declare-fun m!4693869 () Bool)

(assert (=> b!4086980 m!4693869))

(assert (=> b!4086980 m!4693669))

(assert (=> b!4086723 d!1213547))

(declare-fun d!1213549 () Bool)

(declare-fun e!2536524 () Bool)

(assert (=> d!1213549 e!2536524))

(declare-fun res!1670079 () Bool)

(assert (=> d!1213549 (=> res!1670079 e!2536524)))

(assert (=> d!1213549 (= res!1670079 (isEmpty!26196 (maxPrefix!3959 thiss!26199 (t!338240 rules!3870) input!3411)))))

(declare-fun lt!1461838 () Unit!63337)

(declare-fun choose!24955 (LexerInterface!6669 Rule!13960 List!43937 List!43936) Unit!63337)

(assert (=> d!1213549 (= lt!1461838 (choose!24955 thiss!26199 (h!49233 rules!3870) (t!338240 rules!3870) input!3411))))

(assert (=> d!1213549 (not (isEmpty!26195 (t!338240 rules!3870)))))

(assert (=> d!1213549 (= (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!18 thiss!26199 (h!49233 rules!3870) (t!338240 rules!3870) input!3411) lt!1461838)))

(declare-fun b!4086987 () Bool)

(assert (=> b!4086987 (= e!2536524 (not (= (rule!10210 (_1!24508 (get!14368 (maxPrefix!3959 thiss!26199 (t!338240 rules!3870) input!3411)))) (h!49233 rules!3870))))))

(assert (= (and d!1213549 (not res!1670079)) b!4086987))

(assert (=> d!1213549 m!4693559))

(assert (=> d!1213549 m!4693559))

(declare-fun m!4693871 () Bool)

(assert (=> d!1213549 m!4693871))

(declare-fun m!4693873 () Bool)

(assert (=> d!1213549 m!4693873))

(assert (=> d!1213549 m!4693565))

(assert (=> b!4086987 m!4693559))

(assert (=> b!4086987 m!4693559))

(declare-fun m!4693875 () Bool)

(assert (=> b!4086987 m!4693875))

(assert (=> b!4086723 d!1213549))

(declare-fun d!1213551 () Bool)

(declare-fun e!2536530 () Bool)

(assert (=> d!1213551 e!2536530))

(declare-fun res!1670084 () Bool)

(assert (=> d!1213551 (=> (not res!1670084) (not e!2536530))))

(declare-fun lt!1461841 () List!43936)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6738 (List!43936) (InoxSet C!24156))

(assert (=> d!1213551 (= res!1670084 (= (content!6738 lt!1461841) ((_ map or) (content!6738 p!2988) (content!6738 suffix!1518))))))

(declare-fun e!2536529 () List!43936)

(assert (=> d!1213551 (= lt!1461841 e!2536529)))

(declare-fun c!704541 () Bool)

(assert (=> d!1213551 (= c!704541 ((_ is Nil!43812) p!2988))))

(assert (=> d!1213551 (= (++!11486 p!2988 suffix!1518) lt!1461841)))

(declare-fun b!4086999 () Bool)

(assert (=> b!4086999 (= e!2536530 (or (not (= suffix!1518 Nil!43812)) (= lt!1461841 p!2988)))))

(declare-fun b!4086997 () Bool)

(assert (=> b!4086997 (= e!2536529 (Cons!43812 (h!49232 p!2988) (++!11486 (t!338239 p!2988) suffix!1518)))))

(declare-fun b!4086996 () Bool)

(assert (=> b!4086996 (= e!2536529 suffix!1518)))

(declare-fun b!4086998 () Bool)

(declare-fun res!1670085 () Bool)

(assert (=> b!4086998 (=> (not res!1670085) (not e!2536530))))

(assert (=> b!4086998 (= res!1670085 (= (size!32723 lt!1461841) (+ (size!32723 p!2988) (size!32723 suffix!1518))))))

(assert (= (and d!1213551 c!704541) b!4086996))

(assert (= (and d!1213551 (not c!704541)) b!4086997))

(assert (= (and d!1213551 res!1670084) b!4086998))

(assert (= (and b!4086998 res!1670085) b!4086999))

(declare-fun m!4693877 () Bool)

(assert (=> d!1213551 m!4693877))

(declare-fun m!4693879 () Bool)

(assert (=> d!1213551 m!4693879))

(declare-fun m!4693881 () Bool)

(assert (=> d!1213551 m!4693881))

(declare-fun m!4693883 () Bool)

(assert (=> b!4086997 m!4693883))

(declare-fun m!4693885 () Bool)

(assert (=> b!4086998 m!4693885))

(assert (=> b!4086998 m!4693577))

(declare-fun m!4693887 () Bool)

(assert (=> b!4086998 m!4693887))

(assert (=> b!4086727 d!1213551))

(declare-fun b!4087057 () Bool)

(declare-fun e!2536564 () Bool)

(assert (=> b!4087057 (= e!2536564 true)))

(declare-fun d!1213553 () Bool)

(assert (=> d!1213553 e!2536564))

(assert (= d!1213553 b!4087057))

(declare-fun lambda!127931 () Int)

(declare-fun order!23001 () Int)

(declare-fun order!23003 () Int)

(declare-fun dynLambda!18712 (Int Int) Int)

(declare-fun dynLambda!18713 (Int Int) Int)

(assert (=> b!4087057 (< (dynLambda!18712 order!23001 (toValue!9664 (transformation!7080 r!4213))) (dynLambda!18713 order!23003 lambda!127931))))

(declare-fun order!23005 () Int)

(declare-fun dynLambda!18714 (Int Int) Int)

(assert (=> b!4087057 (< (dynLambda!18714 order!23005 (toChars!9523 (transformation!7080 r!4213))) (dynLambda!18713 order!23003 lambda!127931))))

(declare-fun dynLambda!18715 (Int TokenValue!7310) BalanceConc!26176)

(declare-fun dynLambda!18716 (Int BalanceConc!26176) TokenValue!7310)

(assert (=> d!1213553 (= (list!16270 (dynLambda!18715 (toChars!9523 (transformation!7080 r!4213)) (dynLambda!18716 (toValue!9664 (transformation!7080 r!4213)) lt!1461740))) (list!16270 lt!1461740))))

(declare-fun lt!1461848 () Unit!63337)

(declare-fun ForallOf!877 (Int BalanceConc!26176) Unit!63337)

(assert (=> d!1213553 (= lt!1461848 (ForallOf!877 lambda!127931 lt!1461740))))

(assert (=> d!1213553 (= (lemmaSemiInverse!2047 (transformation!7080 r!4213) lt!1461740) lt!1461848)))

(declare-fun b_lambda!119675 () Bool)

(assert (=> (not b_lambda!119675) (not d!1213553)))

(declare-fun tb!245541 () Bool)

(declare-fun t!338255 () Bool)

(assert (=> (and b!4086733 (= (toChars!9523 (transformation!7080 (h!49233 rules!3870))) (toChars!9523 (transformation!7080 r!4213))) t!338255) tb!245541))

(declare-fun b!4087062 () Bool)

(declare-fun tp!1237415 () Bool)

(declare-fun e!2536567 () Bool)

(declare-fun inv!58504 (Conc!13291) Bool)

(assert (=> b!4087062 (= e!2536567 (and (inv!58504 (c!704503 (dynLambda!18715 (toChars!9523 (transformation!7080 r!4213)) (dynLambda!18716 (toValue!9664 (transformation!7080 r!4213)) lt!1461740)))) tp!1237415))))

(declare-fun result!297916 () Bool)

(declare-fun inv!58505 (BalanceConc!26176) Bool)

(assert (=> tb!245541 (= result!297916 (and (inv!58505 (dynLambda!18715 (toChars!9523 (transformation!7080 r!4213)) (dynLambda!18716 (toValue!9664 (transformation!7080 r!4213)) lt!1461740))) e!2536567))))

(assert (= tb!245541 b!4087062))

(declare-fun m!4693913 () Bool)

(assert (=> b!4087062 m!4693913))

(declare-fun m!4693915 () Bool)

(assert (=> tb!245541 m!4693915))

(assert (=> d!1213553 t!338255))

(declare-fun b_and!314723 () Bool)

(assert (= b_and!314701 (and (=> t!338255 result!297916) b_and!314723)))

(declare-fun t!338257 () Bool)

(declare-fun tb!245543 () Bool)

(assert (=> (and b!4086734 (= (toChars!9523 (transformation!7080 r!4213)) (toChars!9523 (transformation!7080 r!4213))) t!338257) tb!245543))

(declare-fun result!297920 () Bool)

(assert (= result!297920 result!297916))

(assert (=> d!1213553 t!338257))

(declare-fun b_and!314725 () Bool)

(assert (= b_and!314705 (and (=> t!338257 result!297920) b_and!314725)))

(declare-fun b_lambda!119677 () Bool)

(assert (=> (not b_lambda!119677) (not d!1213553)))

(declare-fun tb!245545 () Bool)

(declare-fun t!338259 () Bool)

(assert (=> (and b!4086733 (= (toValue!9664 (transformation!7080 (h!49233 rules!3870))) (toValue!9664 (transformation!7080 r!4213))) t!338259) tb!245545))

(declare-fun result!297922 () Bool)

(declare-fun inv!21 (TokenValue!7310) Bool)

(assert (=> tb!245545 (= result!297922 (inv!21 (dynLambda!18716 (toValue!9664 (transformation!7080 r!4213)) lt!1461740)))))

(declare-fun m!4693917 () Bool)

(assert (=> tb!245545 m!4693917))

(assert (=> d!1213553 t!338259))

(declare-fun b_and!314727 () Bool)

(assert (= b_and!314699 (and (=> t!338259 result!297922) b_and!314727)))

(declare-fun t!338261 () Bool)

(declare-fun tb!245547 () Bool)

(assert (=> (and b!4086734 (= (toValue!9664 (transformation!7080 r!4213)) (toValue!9664 (transformation!7080 r!4213))) t!338261) tb!245547))

(declare-fun result!297926 () Bool)

(assert (= result!297926 result!297922))

(assert (=> d!1213553 t!338261))

(declare-fun b_and!314729 () Bool)

(assert (= b_and!314703 (and (=> t!338261 result!297926) b_and!314729)))

(declare-fun m!4693919 () Bool)

(assert (=> d!1213553 m!4693919))

(declare-fun m!4693921 () Bool)

(assert (=> d!1213553 m!4693921))

(declare-fun m!4693923 () Bool)

(assert (=> d!1213553 m!4693923))

(declare-fun m!4693925 () Bool)

(assert (=> d!1213553 m!4693925))

(declare-fun m!4693927 () Bool)

(assert (=> d!1213553 m!4693927))

(assert (=> d!1213553 m!4693921))

(assert (=> d!1213553 m!4693923))

(assert (=> b!4086715 d!1213553))

(declare-fun d!1213563 () Bool)

(declare-fun e!2536573 () Bool)

(assert (=> d!1213563 e!2536573))

(declare-fun res!1670091 () Bool)

(assert (=> d!1213563 (=> res!1670091 e!2536573)))

(declare-fun lt!1461851 () Option!9486)

(assert (=> d!1213563 (= res!1670091 (isEmpty!26196 lt!1461851))))

(declare-fun e!2536572 () Option!9486)

(assert (=> d!1213563 (= lt!1461851 e!2536572)))

(declare-fun c!704546 () Bool)

(assert (=> d!1213563 (= c!704546 (and ((_ is Cons!43813) rules!3870) ((_ is Nil!43813) (t!338240 rules!3870))))))

(declare-fun lt!1461849 () Unit!63337)

(declare-fun lt!1461850 () Unit!63337)

(assert (=> d!1213563 (= lt!1461849 lt!1461850)))

(assert (=> d!1213563 (isPrefix!4131 input!3411 input!3411)))

(assert (=> d!1213563 (= lt!1461850 (lemmaIsPrefixRefl!2682 input!3411 input!3411))))

(assert (=> d!1213563 (rulesValidInductive!2613 thiss!26199 rules!3870)))

(assert (=> d!1213563 (= (maxPrefix!3959 thiss!26199 rules!3870 input!3411) lt!1461851)))

(declare-fun b!4087065 () Bool)

(declare-fun call!288926 () Option!9486)

(assert (=> b!4087065 (= e!2536572 call!288926)))

(declare-fun b!4087066 () Bool)

(declare-fun res!1670092 () Bool)

(declare-fun e!2536571 () Bool)

(assert (=> b!4087066 (=> (not res!1670092) (not e!2536571))))

(assert (=> b!4087066 (= res!1670092 (= (value!222432 (_1!24508 (get!14368 lt!1461851))) (apply!10263 (transformation!7080 (rule!10210 (_1!24508 (get!14368 lt!1461851)))) (seqFromList!5297 (originalCharacters!7674 (_1!24508 (get!14368 lt!1461851)))))))))

(declare-fun bm!288921 () Bool)

(assert (=> bm!288921 (= call!288926 (maxPrefixOneRule!2943 thiss!26199 (h!49233 rules!3870) input!3411))))

(declare-fun b!4087067 () Bool)

(declare-fun res!1670087 () Bool)

(assert (=> b!4087067 (=> (not res!1670087) (not e!2536571))))

(assert (=> b!4087067 (= res!1670087 (= (++!11486 (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461851)))) (_2!24508 (get!14368 lt!1461851))) input!3411))))

(declare-fun b!4087068 () Bool)

(declare-fun res!1670089 () Bool)

(assert (=> b!4087068 (=> (not res!1670089) (not e!2536571))))

(assert (=> b!4087068 (= res!1670089 (= (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461851)))) (originalCharacters!7674 (_1!24508 (get!14368 lt!1461851)))))))

(declare-fun b!4087069 () Bool)

(declare-fun res!1670093 () Bool)

(assert (=> b!4087069 (=> (not res!1670093) (not e!2536571))))

(assert (=> b!4087069 (= res!1670093 (< (size!32723 (_2!24508 (get!14368 lt!1461851))) (size!32723 input!3411)))))

(declare-fun b!4087070 () Bool)

(assert (=> b!4087070 (= e!2536571 (contains!8757 rules!3870 (rule!10210 (_1!24508 (get!14368 lt!1461851)))))))

(declare-fun b!4087071 () Bool)

(declare-fun lt!1461852 () Option!9486)

(declare-fun lt!1461853 () Option!9486)

(assert (=> b!4087071 (= e!2536572 (ite (and ((_ is None!9485) lt!1461852) ((_ is None!9485) lt!1461853)) None!9485 (ite ((_ is None!9485) lt!1461853) lt!1461852 (ite ((_ is None!9485) lt!1461852) lt!1461853 (ite (>= (size!32722 (_1!24508 (v!39961 lt!1461852))) (size!32722 (_1!24508 (v!39961 lt!1461853)))) lt!1461852 lt!1461853)))))))

(assert (=> b!4087071 (= lt!1461852 call!288926)))

(assert (=> b!4087071 (= lt!1461853 (maxPrefix!3959 thiss!26199 (t!338240 rules!3870) input!3411))))

(declare-fun b!4087072 () Bool)

(assert (=> b!4087072 (= e!2536573 e!2536571)))

(declare-fun res!1670088 () Bool)

(assert (=> b!4087072 (=> (not res!1670088) (not e!2536571))))

(assert (=> b!4087072 (= res!1670088 (isDefined!7180 lt!1461851))))

(declare-fun b!4087073 () Bool)

(declare-fun res!1670090 () Bool)

(assert (=> b!4087073 (=> (not res!1670090) (not e!2536571))))

(assert (=> b!4087073 (= res!1670090 (matchR!5926 (regex!7080 (rule!10210 (_1!24508 (get!14368 lt!1461851)))) (list!16270 (charsOf!4844 (_1!24508 (get!14368 lt!1461851))))))))

(assert (= (and d!1213563 c!704546) b!4087065))

(assert (= (and d!1213563 (not c!704546)) b!4087071))

(assert (= (or b!4087065 b!4087071) bm!288921))

(assert (= (and d!1213563 (not res!1670091)) b!4087072))

(assert (= (and b!4087072 res!1670088) b!4087068))

(assert (= (and b!4087068 res!1670089) b!4087069))

(assert (= (and b!4087069 res!1670093) b!4087067))

(assert (= (and b!4087067 res!1670087) b!4087066))

(assert (= (and b!4087066 res!1670092) b!4087073))

(assert (= (and b!4087073 res!1670090) b!4087070))

(declare-fun m!4693929 () Bool)

(assert (=> b!4087068 m!4693929))

(declare-fun m!4693931 () Bool)

(assert (=> b!4087068 m!4693931))

(assert (=> b!4087068 m!4693931))

(declare-fun m!4693933 () Bool)

(assert (=> b!4087068 m!4693933))

(assert (=> b!4087070 m!4693929))

(declare-fun m!4693935 () Bool)

(assert (=> b!4087070 m!4693935))

(assert (=> b!4087071 m!4693559))

(assert (=> b!4087073 m!4693929))

(assert (=> b!4087073 m!4693931))

(assert (=> b!4087073 m!4693931))

(assert (=> b!4087073 m!4693933))

(assert (=> b!4087073 m!4693933))

(declare-fun m!4693937 () Bool)

(assert (=> b!4087073 m!4693937))

(declare-fun m!4693939 () Bool)

(assert (=> bm!288921 m!4693939))

(assert (=> b!4087067 m!4693929))

(assert (=> b!4087067 m!4693931))

(assert (=> b!4087067 m!4693931))

(assert (=> b!4087067 m!4693933))

(assert (=> b!4087067 m!4693933))

(declare-fun m!4693941 () Bool)

(assert (=> b!4087067 m!4693941))

(declare-fun m!4693943 () Bool)

(assert (=> b!4087072 m!4693943))

(declare-fun m!4693945 () Bool)

(assert (=> d!1213563 m!4693945))

(assert (=> d!1213563 m!4693859))

(assert (=> d!1213563 m!4693861))

(declare-fun m!4693947 () Bool)

(assert (=> d!1213563 m!4693947))

(assert (=> b!4087066 m!4693929))

(declare-fun m!4693949 () Bool)

(assert (=> b!4087066 m!4693949))

(assert (=> b!4087066 m!4693949))

(declare-fun m!4693951 () Bool)

(assert (=> b!4087066 m!4693951))

(assert (=> b!4087069 m!4693929))

(declare-fun m!4693953 () Bool)

(assert (=> b!4087069 m!4693953))

(assert (=> b!4087069 m!4693669))

(assert (=> b!4086715 d!1213563))

(declare-fun d!1213565 () Bool)

(declare-fun lt!1461856 () Int)

(assert (=> d!1213565 (>= lt!1461856 0)))

(declare-fun e!2536576 () Int)

(assert (=> d!1213565 (= lt!1461856 e!2536576)))

(declare-fun c!704549 () Bool)

(assert (=> d!1213565 (= c!704549 ((_ is Nil!43812) p!2988))))

(assert (=> d!1213565 (= (size!32723 p!2988) lt!1461856)))

(declare-fun b!4087078 () Bool)

(assert (=> b!4087078 (= e!2536576 0)))

(declare-fun b!4087079 () Bool)

(assert (=> b!4087079 (= e!2536576 (+ 1 (size!32723 (t!338239 p!2988))))))

(assert (= (and d!1213565 c!704549) b!4087078))

(assert (= (and d!1213565 (not c!704549)) b!4087079))

(declare-fun m!4693955 () Bool)

(assert (=> b!4087079 m!4693955))

(assert (=> b!4086715 d!1213565))

(declare-fun d!1213567 () Bool)

(declare-fun fromListB!2424 (List!43936) BalanceConc!26176)

(assert (=> d!1213567 (= (seqFromList!5297 p!2988) (fromListB!2424 p!2988))))

(declare-fun bs!593132 () Bool)

(assert (= bs!593132 d!1213567))

(declare-fun m!4693957 () Bool)

(assert (=> bs!593132 m!4693957))

(assert (=> b!4086715 d!1213567))

(declare-fun d!1213569 () Bool)

(assert (=> d!1213569 (= (apply!10263 (transformation!7080 r!4213) lt!1461740) (dynLambda!18716 (toValue!9664 (transformation!7080 r!4213)) lt!1461740))))

(declare-fun b_lambda!119679 () Bool)

(assert (=> (not b_lambda!119679) (not d!1213569)))

(assert (=> d!1213569 t!338259))

(declare-fun b_and!314731 () Bool)

(assert (= b_and!314727 (and (=> t!338259 result!297922) b_and!314731)))

(assert (=> d!1213569 t!338261))

(declare-fun b_and!314733 () Bool)

(assert (= b_and!314729 (and (=> t!338261 result!297926) b_and!314733)))

(assert (=> d!1213569 m!4693921))

(assert (=> b!4086715 d!1213569))

(declare-fun d!1213571 () Bool)

(declare-fun lt!1461859 () Bool)

(declare-fun content!6739 (List!43937) (InoxSet Rule!13960))

(assert (=> d!1213571 (= lt!1461859 (select (content!6739 rules!3870) r!4213))))

(declare-fun e!2536582 () Bool)

(assert (=> d!1213571 (= lt!1461859 e!2536582)))

(declare-fun res!1670099 () Bool)

(assert (=> d!1213571 (=> (not res!1670099) (not e!2536582))))

(assert (=> d!1213571 (= res!1670099 ((_ is Cons!43813) rules!3870))))

(assert (=> d!1213571 (= (contains!8757 rules!3870 r!4213) lt!1461859)))

(declare-fun b!4087084 () Bool)

(declare-fun e!2536581 () Bool)

(assert (=> b!4087084 (= e!2536582 e!2536581)))

(declare-fun res!1670098 () Bool)

(assert (=> b!4087084 (=> res!1670098 e!2536581)))

(assert (=> b!4087084 (= res!1670098 (= (h!49233 rules!3870) r!4213))))

(declare-fun b!4087085 () Bool)

(assert (=> b!4087085 (= e!2536581 (contains!8757 (t!338240 rules!3870) r!4213))))

(assert (= (and d!1213571 res!1670099) b!4087084))

(assert (= (and b!4087084 (not res!1670098)) b!4087085))

(declare-fun m!4693959 () Bool)

(assert (=> d!1213571 m!4693959))

(declare-fun m!4693961 () Bool)

(assert (=> d!1213571 m!4693961))

(declare-fun m!4693963 () Bool)

(assert (=> b!4087085 m!4693963))

(assert (=> b!4086720 d!1213571))

(declare-fun d!1213573 () Bool)

(assert (=> d!1213573 (= (isEmpty!26195 rules!3870) ((_ is Nil!43813) rules!3870))))

(assert (=> b!4086719 d!1213573))

(assert (=> b!4086729 d!1213543))

(declare-fun d!1213575 () Bool)

(assert (=> d!1213575 (= (inv!58499 (tag!7940 r!4213)) (= (mod (str.len (value!222431 (tag!7940 r!4213))) 2) 0))))

(assert (=> b!4086718 d!1213575))

(declare-fun d!1213577 () Bool)

(declare-fun res!1670100 () Bool)

(declare-fun e!2536583 () Bool)

(assert (=> d!1213577 (=> (not res!1670100) (not e!2536583))))

(assert (=> d!1213577 (= res!1670100 (semiInverseModEq!3038 (toChars!9523 (transformation!7080 r!4213)) (toValue!9664 (transformation!7080 r!4213))))))

(assert (=> d!1213577 (= (inv!58501 (transformation!7080 r!4213)) e!2536583)))

(declare-fun b!4087086 () Bool)

(assert (=> b!4087086 (= e!2536583 (equivClasses!2937 (toChars!9523 (transformation!7080 r!4213)) (toValue!9664 (transformation!7080 r!4213))))))

(assert (= (and d!1213577 res!1670100) b!4087086))

(declare-fun m!4693965 () Bool)

(assert (=> d!1213577 m!4693965))

(declare-fun m!4693967 () Bool)

(assert (=> b!4087086 m!4693967))

(assert (=> b!4086718 d!1213577))

(declare-fun b!4087091 () Bool)

(declare-fun e!2536586 () Bool)

(declare-fun tp!1237418 () Bool)

(assert (=> b!4087091 (= e!2536586 (and tp_is_empty!20973 tp!1237418))))

(assert (=> b!4086717 (= tp!1237371 e!2536586)))

(assert (= (and b!4086717 ((_ is Cons!43812) (t!338239 input!3411))) b!4087091))

(declare-fun b!4087092 () Bool)

(declare-fun e!2536587 () Bool)

(declare-fun tp!1237419 () Bool)

(assert (=> b!4087092 (= e!2536587 (and tp_is_empty!20973 tp!1237419))))

(assert (=> b!4086728 (= tp!1237372 e!2536587)))

(assert (= (and b!4086728 ((_ is Cons!43812) (t!338239 p!2988))) b!4087092))

(declare-fun b!4087093 () Bool)

(declare-fun e!2536588 () Bool)

(declare-fun tp!1237420 () Bool)

(assert (=> b!4087093 (= e!2536588 (and tp_is_empty!20973 tp!1237420))))

(assert (=> b!4086716 (= tp!1237369 e!2536588)))

(assert (= (and b!4086716 ((_ is Cons!43812) (t!338239 suffix!1518))) b!4087093))

(declare-fun b!4087106 () Bool)

(declare-fun e!2536591 () Bool)

(declare-fun tp!1237432 () Bool)

(assert (=> b!4087106 (= e!2536591 tp!1237432)))

(declare-fun b!4087104 () Bool)

(assert (=> b!4087104 (= e!2536591 tp_is_empty!20973)))

(declare-fun b!4087107 () Bool)

(declare-fun tp!1237433 () Bool)

(declare-fun tp!1237434 () Bool)

(assert (=> b!4087107 (= e!2536591 (and tp!1237433 tp!1237434))))

(declare-fun b!4087105 () Bool)

(declare-fun tp!1237435 () Bool)

(declare-fun tp!1237431 () Bool)

(assert (=> b!4087105 (= e!2536591 (and tp!1237435 tp!1237431))))

(assert (=> b!4086731 (= tp!1237370 e!2536591)))

(assert (= (and b!4086731 ((_ is ElementMatch!11985) (regex!7080 (h!49233 rules!3870)))) b!4087104))

(assert (= (and b!4086731 ((_ is Concat!19296) (regex!7080 (h!49233 rules!3870)))) b!4087105))

(assert (= (and b!4086731 ((_ is Star!11985) (regex!7080 (h!49233 rules!3870)))) b!4087106))

(assert (= (and b!4086731 ((_ is Union!11985) (regex!7080 (h!49233 rules!3870)))) b!4087107))

(declare-fun b!4087118 () Bool)

(declare-fun b_free!114205 () Bool)

(declare-fun b_next!114909 () Bool)

(assert (=> b!4087118 (= b_free!114205 (not b_next!114909))))

(declare-fun t!338263 () Bool)

(declare-fun tb!245549 () Bool)

(assert (=> (and b!4087118 (= (toValue!9664 (transformation!7080 (h!49233 (t!338240 rules!3870)))) (toValue!9664 (transformation!7080 r!4213))) t!338263) tb!245549))

(declare-fun result!297934 () Bool)

(assert (= result!297934 result!297922))

(assert (=> d!1213553 t!338263))

(assert (=> d!1213569 t!338263))

(declare-fun b_and!314735 () Bool)

(declare-fun tp!1237447 () Bool)

(assert (=> b!4087118 (= tp!1237447 (and (=> t!338263 result!297934) b_and!314735))))

(declare-fun b_free!114207 () Bool)

(declare-fun b_next!114911 () Bool)

(assert (=> b!4087118 (= b_free!114207 (not b_next!114911))))

(declare-fun tb!245551 () Bool)

(declare-fun t!338265 () Bool)

(assert (=> (and b!4087118 (= (toChars!9523 (transformation!7080 (h!49233 (t!338240 rules!3870)))) (toChars!9523 (transformation!7080 r!4213))) t!338265) tb!245551))

(declare-fun result!297936 () Bool)

(assert (= result!297936 result!297916))

(assert (=> d!1213553 t!338265))

(declare-fun b_and!314737 () Bool)

(declare-fun tp!1237444 () Bool)

(assert (=> b!4087118 (= tp!1237444 (and (=> t!338265 result!297936) b_and!314737))))

(declare-fun e!2536601 () Bool)

(assert (=> b!4087118 (= e!2536601 (and tp!1237447 tp!1237444))))

(declare-fun e!2536600 () Bool)

(declare-fun tp!1237445 () Bool)

(declare-fun b!4087117 () Bool)

(assert (=> b!4087117 (= e!2536600 (and tp!1237445 (inv!58499 (tag!7940 (h!49233 (t!338240 rules!3870)))) (inv!58501 (transformation!7080 (h!49233 (t!338240 rules!3870)))) e!2536601))))

(declare-fun b!4087116 () Bool)

(declare-fun e!2536602 () Bool)

(declare-fun tp!1237446 () Bool)

(assert (=> b!4087116 (= e!2536602 (and e!2536600 tp!1237446))))

(assert (=> b!4086730 (= tp!1237365 e!2536602)))

(assert (= b!4087117 b!4087118))

(assert (= b!4087116 b!4087117))

(assert (= (and b!4086730 ((_ is Cons!43813) (t!338240 rules!3870))) b!4087116))

(declare-fun m!4693969 () Bool)

(assert (=> b!4087117 m!4693969))

(declare-fun m!4693971 () Bool)

(assert (=> b!4087117 m!4693971))

(declare-fun b!4087121 () Bool)

(declare-fun e!2536604 () Bool)

(declare-fun tp!1237449 () Bool)

(assert (=> b!4087121 (= e!2536604 tp!1237449)))

(declare-fun b!4087119 () Bool)

(assert (=> b!4087119 (= e!2536604 tp_is_empty!20973)))

(declare-fun b!4087122 () Bool)

(declare-fun tp!1237450 () Bool)

(declare-fun tp!1237451 () Bool)

(assert (=> b!4087122 (= e!2536604 (and tp!1237450 tp!1237451))))

(declare-fun b!4087120 () Bool)

(declare-fun tp!1237452 () Bool)

(declare-fun tp!1237448 () Bool)

(assert (=> b!4087120 (= e!2536604 (and tp!1237452 tp!1237448))))

(assert (=> b!4086718 (= tp!1237368 e!2536604)))

(assert (= (and b!4086718 ((_ is ElementMatch!11985) (regex!7080 r!4213))) b!4087119))

(assert (= (and b!4086718 ((_ is Concat!19296) (regex!7080 r!4213))) b!4087120))

(assert (= (and b!4086718 ((_ is Star!11985) (regex!7080 r!4213))) b!4087121))

(assert (= (and b!4086718 ((_ is Union!11985) (regex!7080 r!4213))) b!4087122))

(declare-fun b_lambda!119681 () Bool)

(assert (= b_lambda!119675 (or (and b!4086733 b_free!114195 (= (toChars!9523 (transformation!7080 (h!49233 rules!3870))) (toChars!9523 (transformation!7080 r!4213)))) (and b!4086734 b_free!114199) (and b!4087118 b_free!114207 (= (toChars!9523 (transformation!7080 (h!49233 (t!338240 rules!3870)))) (toChars!9523 (transformation!7080 r!4213)))) b_lambda!119681)))

(declare-fun b_lambda!119683 () Bool)

(assert (= b_lambda!119679 (or (and b!4086733 b_free!114193 (= (toValue!9664 (transformation!7080 (h!49233 rules!3870))) (toValue!9664 (transformation!7080 r!4213)))) (and b!4086734 b_free!114197) (and b!4087118 b_free!114205 (= (toValue!9664 (transformation!7080 (h!49233 (t!338240 rules!3870)))) (toValue!9664 (transformation!7080 r!4213)))) b_lambda!119683)))

(declare-fun b_lambda!119685 () Bool)

(assert (= b_lambda!119677 (or (and b!4086733 b_free!114193 (= (toValue!9664 (transformation!7080 (h!49233 rules!3870))) (toValue!9664 (transformation!7080 r!4213)))) (and b!4086734 b_free!114197) (and b!4087118 b_free!114205 (= (toValue!9664 (transformation!7080 (h!49233 (t!338240 rules!3870)))) (toValue!9664 (transformation!7080 r!4213)))) b_lambda!119685)))

(check-sat (not b!4087122) (not b!4086905) (not b!4087072) (not b_next!114903) (not tb!245541) b_and!314733 (not b!4086926) (not b_next!114899) (not b_lambda!119685) (not b!4087117) (not b!4086792) (not d!1213551) (not b!4087106) (not b!4086913) (not b_next!114911) (not b!4087066) (not b!4086794) (not b!4087067) (not b_next!114909) (not b!4086987) (not b!4086997) (not b!4086956) (not b!4086979) (not b!4087079) (not b!4086977) (not b!4086981) (not b!4087092) (not b!4087121) (not b!4086982) (not b!4086797) (not d!1213537) (not d!1213515) (not b!4087085) (not b!4086984) b_and!314737 b_and!314731 (not d!1213571) (not b!4087073) (not b!4087105) (not bm!288920) (not b!4087070) (not b!4087086) (not b!4086980) (not b!4086983) b_and!314725 (not bm!288916) (not b!4086799) (not b!4087062) (not d!1213563) (not b!4086793) (not d!1213541) (not bm!288921) (not d!1213549) (not d!1213483) (not b_next!114901) (not b!4086903) (not b!4087120) (not b!4087107) (not b_next!114897) (not b!4086798) (not b!4086791) (not d!1213521) (not b!4087091) (not b!4087116) (not d!1213553) (not b!4086914) (not b!4087068) (not b!4086953) (not b!4086978) (not b!4087071) (not b!4086998) tp_is_empty!20973 (not b!4087069) (not b!4086796) b_and!314735 (not d!1213531) (not tb!245545) (not d!1213525) (not b!4086957) (not d!1213567) (not b!4086910) (not d!1213577) (not b_lambda!119681) (not b_lambda!119683) (not b!4086907) (not b!4087093) (not d!1213499) b_and!314723 (not d!1213547))
(check-sat (not b_next!114911) (not b_next!114909) b_and!314737 b_and!314731 b_and!314725 (not b_next!114901) (not b_next!114903) (not b_next!114897) b_and!314735 b_and!314723 b_and!314733 (not b_next!114899))
