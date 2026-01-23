; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511588 () Bool)

(assert start!511588)

(declare-fun b!4887741 () Bool)

(declare-fun b_free!131351 () Bool)

(declare-fun b_next!132141 () Bool)

(assert (=> b!4887741 (= b_free!131351 (not b_next!132141))))

(declare-fun tp!1375573 () Bool)

(declare-fun b_and!344183 () Bool)

(assert (=> b!4887741 (= tp!1375573 b_and!344183)))

(declare-fun b_free!131353 () Bool)

(declare-fun b_next!132143 () Bool)

(assert (=> b!4887741 (= b_free!131353 (not b_next!132143))))

(declare-fun tp!1375575 () Bool)

(declare-fun b_and!344185 () Bool)

(assert (=> b!4887741 (= tp!1375575 b_and!344185)))

(declare-fun b!4887729 () Bool)

(declare-fun e!3055477 () Bool)

(declare-fun e!3055479 () Bool)

(assert (=> b!4887729 (= e!3055477 e!3055479)))

(declare-fun res!2087363 () Bool)

(assert (=> b!4887729 (=> res!2087363 e!3055479)))

(declare-datatypes ((C!26652 0))(
  ( (C!26653 (val!22660 Int)) )
))
(declare-datatypes ((List!56461 0))(
  ( (Nil!56337) (Cons!56337 (h!62785 C!26652) (t!365107 List!56461)) )
))
(declare-datatypes ((String!63751 0))(
  ( (String!63752 (value!261458 String)) )
))
(declare-datatypes ((IArray!29501 0))(
  ( (IArray!29502 (innerList!14808 List!56461)) )
))
(declare-datatypes ((Conc!14720 0))(
  ( (Node!14720 (left!40918 Conc!14720) (right!41248 Conc!14720) (csize!29670 Int) (cheight!14931 Int)) (Leaf!24513 (xs!18036 IArray!29501) (csize!29671 Int)) (Empty!14720) )
))
(declare-datatypes ((BalanceConc!28870 0))(
  ( (BalanceConc!28871 (c!830847 Conc!14720)) )
))
(declare-datatypes ((List!56462 0))(
  ( (Nil!56338) (Cons!56338 (h!62786 (_ BitVec 16)) (t!365108 List!56462)) )
))
(declare-datatypes ((TokenValue!8462 0))(
  ( (FloatLiteralValue!16924 (text!59679 List!56462)) (TokenValueExt!8461 (__x!34217 Int)) (Broken!42310 (value!261459 List!56462)) (Object!8585) (End!8462) (Def!8462) (Underscore!8462) (Match!8462) (Else!8462) (Error!8462) (Case!8462) (If!8462) (Extends!8462) (Abstract!8462) (Class!8462) (Val!8462) (DelimiterValue!16924 (del!8522 List!56462)) (KeywordValue!8468 (value!261460 List!56462)) (CommentValue!16924 (value!261461 List!56462)) (WhitespaceValue!16924 (value!261462 List!56462)) (IndentationValue!8462 (value!261463 List!56462)) (String!63753) (Int32!8462) (Broken!42311 (value!261464 List!56462)) (Boolean!8463) (Unit!146327) (OperatorValue!8465 (op!8522 List!56462)) (IdentifierValue!16924 (value!261465 List!56462)) (IdentifierValue!16925 (value!261466 List!56462)) (WhitespaceValue!16925 (value!261467 List!56462)) (True!16924) (False!16924) (Broken!42312 (value!261468 List!56462)) (Broken!42313 (value!261469 List!56462)) (True!16925) (RightBrace!8462) (RightBracket!8462) (Colon!8462) (Null!8462) (Comma!8462) (LeftBracket!8462) (False!16925) (LeftBrace!8462) (ImaginaryLiteralValue!8462 (text!59680 List!56462)) (StringLiteralValue!25386 (value!261470 List!56462)) (EOFValue!8462 (value!261471 List!56462)) (IdentValue!8462 (value!261472 List!56462)) (DelimiterValue!16925 (value!261473 List!56462)) (DedentValue!8462 (value!261474 List!56462)) (NewLineValue!8462 (value!261475 List!56462)) (IntegerValue!25386 (value!261476 (_ BitVec 32)) (text!59681 List!56462)) (IntegerValue!25387 (value!261477 Int) (text!59682 List!56462)) (Times!8462) (Or!8462) (Equal!8462) (Minus!8462) (Broken!42314 (value!261478 List!56462)) (And!8462) (Div!8462) (LessEqual!8462) (Mod!8462) (Concat!21689) (Not!8462) (Plus!8462) (SpaceValue!8462 (value!261479 List!56462)) (IntegerValue!25388 (value!261480 Int) (text!59683 List!56462)) (StringLiteralValue!25387 (text!59684 List!56462)) (FloatLiteralValue!16925 (text!59685 List!56462)) (BytesLiteralValue!8462 (value!261481 List!56462)) (CommentValue!16925 (value!261482 List!56462)) (StringLiteralValue!25388 (value!261483 List!56462)) (ErrorTokenValue!8462 (msg!8523 List!56462)) )
))
(declare-datatypes ((Regex!13227 0))(
  ( (ElementMatch!13227 (c!830848 C!26652)) (Concat!21690 (regOne!26966 Regex!13227) (regTwo!26966 Regex!13227)) (EmptyExpr!13227) (Star!13227 (reg!13556 Regex!13227)) (EmptyLang!13227) (Union!13227 (regOne!26967 Regex!13227) (regTwo!26967 Regex!13227)) )
))
(declare-datatypes ((TokenValueInjection!16232 0))(
  ( (TokenValueInjection!16233 (toValue!11039 Int) (toChars!10898 Int)) )
))
(declare-datatypes ((Rule!16104 0))(
  ( (Rule!16105 (regex!8152 Regex!13227) (tag!9016 String!63751) (isSeparator!8152 Bool) (transformation!8152 TokenValueInjection!16232)) )
))
(declare-datatypes ((Token!14872 0))(
  ( (Token!14873 (value!261484 TokenValue!8462) (rule!11328 Rule!16104) (size!37094 Int) (originalCharacters!8467 List!56461)) )
))
(declare-datatypes ((tuple2!60344 0))(
  ( (tuple2!60345 (_1!33475 Token!14872) (_2!33475 BalanceConc!28870)) )
))
(declare-datatypes ((Option!13987 0))(
  ( (None!13986) (Some!13986 (v!49936 tuple2!60344)) )
))
(declare-fun lt!2003192 () Option!13987)

(declare-datatypes ((tuple2!60346 0))(
  ( (tuple2!60347 (_1!33476 Token!14872) (_2!33476 List!56461)) )
))
(declare-datatypes ((Option!13988 0))(
  ( (None!13987) (Some!13987 (v!49937 tuple2!60346)) )
))
(declare-fun lt!2003195 () Option!13988)

(declare-fun get!19435 (Option!13987) tuple2!60344)

(declare-fun get!19436 (Option!13988) tuple2!60346)

(assert (=> b!4887729 (= res!2087363 (not (= (_1!33475 (get!19435 lt!2003192)) (_1!33476 (get!19436 lt!2003195)))))))

(declare-datatypes ((LexerInterface!7744 0))(
  ( (LexerInterfaceExt!7741 (__x!34218 Int)) (Lexer!7742) )
))
(declare-fun thiss!14805 () LexerInterface!7744)

(declare-fun lt!2003193 () List!56461)

(declare-datatypes ((List!56463 0))(
  ( (Nil!56339) (Cons!56339 (h!62787 Rule!16104) (t!365109 List!56463)) )
))
(declare-fun rulesArg!165 () List!56463)

(declare-fun maxPrefix!4593 (LexerInterface!7744 List!56463 List!56461) Option!13988)

(assert (=> b!4887729 (= lt!2003195 (maxPrefix!4593 thiss!14805 rulesArg!165 lt!2003193))))

(declare-fun b!4887730 () Bool)

(declare-fun e!3055471 () Bool)

(declare-fun e!3055476 () Bool)

(declare-fun tp!1375572 () Bool)

(assert (=> b!4887730 (= e!3055471 (and e!3055476 tp!1375572))))

(declare-fun res!2087364 () Bool)

(declare-fun e!3055480 () Bool)

(assert (=> start!511588 (=> (not res!2087364) (not e!3055480))))

(get-info :version)

(assert (=> start!511588 (= res!2087364 ((_ is Lexer!7742) thiss!14805))))

(assert (=> start!511588 e!3055480))

(assert (=> start!511588 true))

(assert (=> start!511588 e!3055471))

(declare-fun input!1236 () BalanceConc!28870)

(declare-fun e!3055468 () Bool)

(declare-fun inv!72541 (BalanceConc!28870) Bool)

(assert (=> start!511588 (and (inv!72541 input!1236) e!3055468)))

(declare-fun b!4887731 () Bool)

(declare-fun e!3055474 () Bool)

(assert (=> b!4887731 (= e!3055480 (not e!3055474))))

(declare-fun res!2087368 () Bool)

(assert (=> b!4887731 (=> res!2087368 e!3055474)))

(assert (=> b!4887731 (= res!2087368 (or (and ((_ is Cons!56339) rulesArg!165) ((_ is Nil!56339) (t!365109 rulesArg!165))) (not ((_ is Cons!56339) rulesArg!165))))))

(declare-fun isPrefix!4874 (List!56461 List!56461) Bool)

(assert (=> b!4887731 (isPrefix!4874 lt!2003193 lt!2003193)))

(declare-datatypes ((Unit!146328 0))(
  ( (Unit!146329) )
))
(declare-fun lt!2003190 () Unit!146328)

(declare-fun lemmaIsPrefixRefl!3271 (List!56461 List!56461) Unit!146328)

(assert (=> b!4887731 (= lt!2003190 (lemmaIsPrefixRefl!3271 lt!2003193 lt!2003193))))

(declare-fun list!17690 (BalanceConc!28870) List!56461)

(assert (=> b!4887731 (= lt!2003193 (list!17690 input!1236))))

(declare-fun tp!1375574 () Bool)

(declare-fun e!3055470 () Bool)

(declare-fun b!4887732 () Bool)

(declare-fun inv!72537 (String!63751) Bool)

(declare-fun inv!72542 (TokenValueInjection!16232) Bool)

(assert (=> b!4887732 (= e!3055476 (and tp!1375574 (inv!72537 (tag!9016 (h!62787 rulesArg!165))) (inv!72542 (transformation!8152 (h!62787 rulesArg!165))) e!3055470))))

(declare-fun b!4887733 () Bool)

(declare-fun e!3055469 () Bool)

(declare-fun e!3055473 () Bool)

(assert (=> b!4887733 (= e!3055469 e!3055473)))

(declare-fun res!2087369 () Bool)

(assert (=> b!4887733 (=> res!2087369 e!3055473)))

(declare-fun lt!2003197 () tuple2!60344)

(declare-fun lt!2003196 () tuple2!60346)

(assert (=> b!4887733 (= res!2087369 (not (= (_1!33475 lt!2003197) (_1!33476 lt!2003196))))))

(declare-fun lt!2003188 () Option!13988)

(assert (=> b!4887733 (= lt!2003196 (get!19436 lt!2003188))))

(assert (=> b!4887733 (= lt!2003197 (get!19435 lt!2003192))))

(declare-fun b!4887734 () Bool)

(declare-fun res!2087359 () Bool)

(assert (=> b!4887734 (=> res!2087359 e!3055477)))

(declare-fun lt!2003194 () Bool)

(assert (=> b!4887734 (= res!2087359 lt!2003194)))

(declare-fun b!4887735 () Bool)

(declare-fun e!3055475 () Bool)

(assert (=> b!4887735 (= e!3055475 e!3055477)))

(declare-fun res!2087367 () Bool)

(assert (=> b!4887735 (=> res!2087367 e!3055477)))

(assert (=> b!4887735 (= res!2087367 e!3055469)))

(declare-fun res!2087366 () Bool)

(assert (=> b!4887735 (=> (not res!2087366) (not e!3055469))))

(assert (=> b!4887735 (= res!2087366 (not lt!2003194))))

(declare-fun lt!2003189 () Bool)

(assert (=> b!4887735 (= lt!2003194 (not lt!2003189))))

(declare-fun b!4887736 () Bool)

(declare-fun tp!1375571 () Bool)

(declare-fun inv!72543 (Conc!14720) Bool)

(assert (=> b!4887736 (= e!3055468 (and (inv!72543 (c!830847 input!1236)) tp!1375571))))

(declare-fun b!4887737 () Bool)

(declare-fun e!3055472 () Bool)

(assert (=> b!4887737 (= e!3055472 e!3055475)))

(declare-fun res!2087365 () Bool)

(assert (=> b!4887737 (=> res!2087365 e!3055475)))

(declare-fun isDefined!11002 (Option!13988) Bool)

(assert (=> b!4887737 (= res!2087365 (not (= lt!2003189 (isDefined!11002 lt!2003188))))))

(declare-fun isDefined!11003 (Option!13987) Bool)

(assert (=> b!4887737 (= lt!2003189 (isDefined!11003 lt!2003192))))

(declare-fun maxPrefixZipper!655 (LexerInterface!7744 List!56463 List!56461) Option!13988)

(assert (=> b!4887737 (= lt!2003188 (maxPrefixZipper!655 thiss!14805 rulesArg!165 lt!2003193))))

(declare-fun b!4887738 () Bool)

(declare-fun res!2087360 () Bool)

(assert (=> b!4887738 (=> (not res!2087360) (not e!3055480))))

(declare-fun rulesValidInductive!3131 (LexerInterface!7744 List!56463) Bool)

(assert (=> b!4887738 (= res!2087360 (rulesValidInductive!3131 thiss!14805 rulesArg!165))))

(declare-fun b!4887739 () Bool)

(assert (=> b!4887739 (= e!3055473 (not (= (list!17690 (_2!33475 lt!2003197)) (_2!33476 lt!2003196))))))

(declare-fun b!4887740 () Bool)

(declare-fun res!2087362 () Bool)

(assert (=> b!4887740 (=> (not res!2087362) (not e!3055480))))

(declare-fun isEmpty!30198 (List!56463) Bool)

(assert (=> b!4887740 (= res!2087362 (not (isEmpty!30198 rulesArg!165)))))

(assert (=> b!4887741 (= e!3055470 (and tp!1375573 tp!1375575))))

(declare-fun b!4887742 () Bool)

(assert (=> b!4887742 (= e!3055479 (isDefined!11002 lt!2003195))))

(declare-fun b!4887743 () Bool)

(assert (=> b!4887743 (= e!3055474 e!3055472)))

(declare-fun res!2087361 () Bool)

(assert (=> b!4887743 (=> res!2087361 e!3055472)))

(declare-fun lt!2003191 () Option!13987)

(assert (=> b!4887743 (= res!2087361 (or (and ((_ is None!13986) lt!2003191) ((_ is None!13986) lt!2003192)) ((_ is None!13986) lt!2003192) ((_ is None!13986) lt!2003191) (>= (size!37094 (_1!33475 (v!49936 lt!2003191))) (size!37094 (_1!33475 (v!49936 lt!2003192))))))))

(declare-fun maxPrefixZipperSequence!1313 (LexerInterface!7744 List!56463 BalanceConc!28870) Option!13987)

(assert (=> b!4887743 (= lt!2003192 (maxPrefixZipperSequence!1313 thiss!14805 (t!365109 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!678 (LexerInterface!7744 Rule!16104 BalanceConc!28870) Option!13987)

(assert (=> b!4887743 (= lt!2003191 (maxPrefixOneRuleZipperSequence!678 thiss!14805 (h!62787 rulesArg!165) input!1236))))

(assert (= (and start!511588 res!2087364) b!4887738))

(assert (= (and b!4887738 res!2087360) b!4887740))

(assert (= (and b!4887740 res!2087362) b!4887731))

(assert (= (and b!4887731 (not res!2087368)) b!4887743))

(assert (= (and b!4887743 (not res!2087361)) b!4887737))

(assert (= (and b!4887737 (not res!2087365)) b!4887735))

(assert (= (and b!4887735 res!2087366) b!4887733))

(assert (= (and b!4887733 (not res!2087369)) b!4887739))

(assert (= (and b!4887735 (not res!2087367)) b!4887734))

(assert (= (and b!4887734 (not res!2087359)) b!4887729))

(assert (= (and b!4887729 (not res!2087363)) b!4887742))

(assert (= b!4887732 b!4887741))

(assert (= b!4887730 b!4887732))

(assert (= (and start!511588 ((_ is Cons!56339) rulesArg!165)) b!4887730))

(assert (= start!511588 b!4887736))

(declare-fun m!5891420 () Bool)

(assert (=> b!4887733 m!5891420))

(declare-fun m!5891422 () Bool)

(assert (=> b!4887733 m!5891422))

(declare-fun m!5891424 () Bool)

(assert (=> b!4887739 m!5891424))

(declare-fun m!5891426 () Bool)

(assert (=> b!4887743 m!5891426))

(declare-fun m!5891428 () Bool)

(assert (=> b!4887743 m!5891428))

(declare-fun m!5891430 () Bool)

(assert (=> b!4887731 m!5891430))

(declare-fun m!5891432 () Bool)

(assert (=> b!4887731 m!5891432))

(declare-fun m!5891434 () Bool)

(assert (=> b!4887731 m!5891434))

(declare-fun m!5891436 () Bool)

(assert (=> b!4887737 m!5891436))

(declare-fun m!5891438 () Bool)

(assert (=> b!4887737 m!5891438))

(declare-fun m!5891440 () Bool)

(assert (=> b!4887737 m!5891440))

(assert (=> b!4887729 m!5891422))

(declare-fun m!5891442 () Bool)

(assert (=> b!4887729 m!5891442))

(declare-fun m!5891444 () Bool)

(assert (=> b!4887729 m!5891444))

(declare-fun m!5891446 () Bool)

(assert (=> start!511588 m!5891446))

(declare-fun m!5891448 () Bool)

(assert (=> b!4887740 m!5891448))

(declare-fun m!5891450 () Bool)

(assert (=> b!4887742 m!5891450))

(declare-fun m!5891452 () Bool)

(assert (=> b!4887738 m!5891452))

(declare-fun m!5891454 () Bool)

(assert (=> b!4887732 m!5891454))

(declare-fun m!5891456 () Bool)

(assert (=> b!4887732 m!5891456))

(declare-fun m!5891458 () Bool)

(assert (=> b!4887736 m!5891458))

(check-sat (not b!4887743) (not start!511588) (not b!4887736) (not b!4887729) (not b!4887731) (not b!4887737) (not b!4887732) (not b!4887733) b_and!344183 (not b_next!132143) (not b!4887738) b_and!344185 (not b!4887740) (not b_next!132141) (not b!4887739) (not b!4887730) (not b!4887742))
(check-sat b_and!344185 b_and!344183 (not b_next!132141) (not b_next!132143))
(get-model)

(declare-fun d!1569771 () Bool)

(declare-fun list!17692 (Conc!14720) List!56461)

(assert (=> d!1569771 (= (list!17690 (_2!33475 lt!2003197)) (list!17692 (c!830847 (_2!33475 lt!2003197))))))

(declare-fun bs!1175657 () Bool)

(assert (= bs!1175657 d!1569771))

(declare-fun m!5891472 () Bool)

(assert (=> bs!1175657 m!5891472))

(assert (=> b!4887739 d!1569771))

(declare-fun d!1569775 () Bool)

(assert (=> d!1569775 (= (get!19435 lt!2003192) (v!49936 lt!2003192))))

(assert (=> b!4887729 d!1569775))

(declare-fun d!1569777 () Bool)

(assert (=> d!1569777 (= (get!19436 lt!2003195) (v!49937 lt!2003195))))

(assert (=> b!4887729 d!1569777))

(declare-fun b!4887790 () Bool)

(declare-fun res!2087421 () Bool)

(declare-fun e!3055509 () Bool)

(assert (=> b!4887790 (=> (not res!2087421) (not e!3055509))))

(declare-fun lt!2003218 () Option!13988)

(declare-fun ++!12234 (List!56461 List!56461) List!56461)

(declare-fun charsOf!5365 (Token!14872) BalanceConc!28870)

(assert (=> b!4887790 (= res!2087421 (= (++!12234 (list!17690 (charsOf!5365 (_1!33476 (get!19436 lt!2003218)))) (_2!33476 (get!19436 lt!2003218))) lt!2003193))))

(declare-fun b!4887791 () Bool)

(declare-fun e!3055510 () Bool)

(assert (=> b!4887791 (= e!3055510 e!3055509)))

(declare-fun res!2087427 () Bool)

(assert (=> b!4887791 (=> (not res!2087427) (not e!3055509))))

(assert (=> b!4887791 (= res!2087427 (isDefined!11002 lt!2003218))))

(declare-fun call!339047 () Option!13988)

(declare-fun bm!339042 () Bool)

(declare-fun maxPrefixOneRule!3518 (LexerInterface!7744 Rule!16104 List!56461) Option!13988)

(assert (=> bm!339042 (= call!339047 (maxPrefixOneRule!3518 thiss!14805 (h!62787 rulesArg!165) lt!2003193))))

(declare-fun b!4887792 () Bool)

(declare-fun e!3055511 () Option!13988)

(assert (=> b!4887792 (= e!3055511 call!339047)))

(declare-fun b!4887793 () Bool)

(declare-fun contains!19428 (List!56463 Rule!16104) Bool)

(assert (=> b!4887793 (= e!3055509 (contains!19428 rulesArg!165 (rule!11328 (_1!33476 (get!19436 lt!2003218)))))))

(declare-fun b!4887794 () Bool)

(declare-fun res!2087424 () Bool)

(assert (=> b!4887794 (=> (not res!2087424) (not e!3055509))))

(declare-fun matchR!6519 (Regex!13227 List!56461) Bool)

(assert (=> b!4887794 (= res!2087424 (matchR!6519 (regex!8152 (rule!11328 (_1!33476 (get!19436 lt!2003218)))) (list!17690 (charsOf!5365 (_1!33476 (get!19436 lt!2003218))))))))

(declare-fun b!4887795 () Bool)

(declare-fun res!2087422 () Bool)

(assert (=> b!4887795 (=> (not res!2087422) (not e!3055509))))

(assert (=> b!4887795 (= res!2087422 (= (list!17690 (charsOf!5365 (_1!33476 (get!19436 lt!2003218)))) (originalCharacters!8467 (_1!33476 (get!19436 lt!2003218)))))))

(declare-fun b!4887796 () Bool)

(declare-fun lt!2003219 () Option!13988)

(declare-fun lt!2003217 () Option!13988)

(assert (=> b!4887796 (= e!3055511 (ite (and ((_ is None!13987) lt!2003219) ((_ is None!13987) lt!2003217)) None!13987 (ite ((_ is None!13987) lt!2003217) lt!2003219 (ite ((_ is None!13987) lt!2003219) lt!2003217 (ite (>= (size!37094 (_1!33476 (v!49937 lt!2003219))) (size!37094 (_1!33476 (v!49937 lt!2003217)))) lt!2003219 lt!2003217)))))))

(assert (=> b!4887796 (= lt!2003219 call!339047)))

(assert (=> b!4887796 (= lt!2003217 (maxPrefix!4593 thiss!14805 (t!365109 rulesArg!165) lt!2003193))))

(declare-fun b!4887797 () Bool)

(declare-fun res!2087423 () Bool)

(assert (=> b!4887797 (=> (not res!2087423) (not e!3055509))))

(declare-fun size!37096 (List!56461) Int)

(assert (=> b!4887797 (= res!2087423 (< (size!37096 (_2!33476 (get!19436 lt!2003218))) (size!37096 lt!2003193)))))

(declare-fun d!1569779 () Bool)

(assert (=> d!1569779 e!3055510))

(declare-fun res!2087425 () Bool)

(assert (=> d!1569779 (=> res!2087425 e!3055510)))

(declare-fun isEmpty!30201 (Option!13988) Bool)

(assert (=> d!1569779 (= res!2087425 (isEmpty!30201 lt!2003218))))

(assert (=> d!1569779 (= lt!2003218 e!3055511)))

(declare-fun c!830854 () Bool)

(assert (=> d!1569779 (= c!830854 (and ((_ is Cons!56339) rulesArg!165) ((_ is Nil!56339) (t!365109 rulesArg!165))))))

(declare-fun lt!2003216 () Unit!146328)

(declare-fun lt!2003220 () Unit!146328)

(assert (=> d!1569779 (= lt!2003216 lt!2003220)))

(assert (=> d!1569779 (isPrefix!4874 lt!2003193 lt!2003193)))

(assert (=> d!1569779 (= lt!2003220 (lemmaIsPrefixRefl!3271 lt!2003193 lt!2003193))))

(assert (=> d!1569779 (rulesValidInductive!3131 thiss!14805 rulesArg!165)))

(assert (=> d!1569779 (= (maxPrefix!4593 thiss!14805 rulesArg!165 lt!2003193) lt!2003218)))

(declare-fun b!4887798 () Bool)

(declare-fun res!2087426 () Bool)

(assert (=> b!4887798 (=> (not res!2087426) (not e!3055509))))

(declare-fun apply!13529 (TokenValueInjection!16232 BalanceConc!28870) TokenValue!8462)

(declare-fun seqFromList!5925 (List!56461) BalanceConc!28870)

(assert (=> b!4887798 (= res!2087426 (= (value!261484 (_1!33476 (get!19436 lt!2003218))) (apply!13529 (transformation!8152 (rule!11328 (_1!33476 (get!19436 lt!2003218)))) (seqFromList!5925 (originalCharacters!8467 (_1!33476 (get!19436 lt!2003218)))))))))

(assert (= (and d!1569779 c!830854) b!4887792))

(assert (= (and d!1569779 (not c!830854)) b!4887796))

(assert (= (or b!4887792 b!4887796) bm!339042))

(assert (= (and d!1569779 (not res!2087425)) b!4887791))

(assert (= (and b!4887791 res!2087427) b!4887795))

(assert (= (and b!4887795 res!2087422) b!4887797))

(assert (= (and b!4887797 res!2087423) b!4887790))

(assert (= (and b!4887790 res!2087421) b!4887798))

(assert (= (and b!4887798 res!2087426) b!4887794))

(assert (= (and b!4887794 res!2087424) b!4887793))

(declare-fun m!5891488 () Bool)

(assert (=> b!4887790 m!5891488))

(declare-fun m!5891490 () Bool)

(assert (=> b!4887790 m!5891490))

(assert (=> b!4887790 m!5891490))

(declare-fun m!5891492 () Bool)

(assert (=> b!4887790 m!5891492))

(assert (=> b!4887790 m!5891492))

(declare-fun m!5891494 () Bool)

(assert (=> b!4887790 m!5891494))

(declare-fun m!5891496 () Bool)

(assert (=> b!4887796 m!5891496))

(assert (=> b!4887797 m!5891488))

(declare-fun m!5891498 () Bool)

(assert (=> b!4887797 m!5891498))

(declare-fun m!5891500 () Bool)

(assert (=> b!4887797 m!5891500))

(assert (=> b!4887793 m!5891488))

(declare-fun m!5891502 () Bool)

(assert (=> b!4887793 m!5891502))

(assert (=> b!4887798 m!5891488))

(declare-fun m!5891504 () Bool)

(assert (=> b!4887798 m!5891504))

(assert (=> b!4887798 m!5891504))

(declare-fun m!5891506 () Bool)

(assert (=> b!4887798 m!5891506))

(declare-fun m!5891508 () Bool)

(assert (=> b!4887791 m!5891508))

(assert (=> b!4887795 m!5891488))

(assert (=> b!4887795 m!5891490))

(assert (=> b!4887795 m!5891490))

(assert (=> b!4887795 m!5891492))

(assert (=> b!4887794 m!5891488))

(assert (=> b!4887794 m!5891490))

(assert (=> b!4887794 m!5891490))

(assert (=> b!4887794 m!5891492))

(assert (=> b!4887794 m!5891492))

(declare-fun m!5891510 () Bool)

(assert (=> b!4887794 m!5891510))

(declare-fun m!5891512 () Bool)

(assert (=> d!1569779 m!5891512))

(assert (=> d!1569779 m!5891430))

(assert (=> d!1569779 m!5891432))

(assert (=> d!1569779 m!5891452))

(declare-fun m!5891514 () Bool)

(assert (=> bm!339042 m!5891514))

(assert (=> b!4887729 d!1569779))

(declare-fun d!1569791 () Bool)

(declare-fun isBalanced!4002 (Conc!14720) Bool)

(assert (=> d!1569791 (= (inv!72541 input!1236) (isBalanced!4002 (c!830847 input!1236)))))

(declare-fun bs!1175661 () Bool)

(assert (= bs!1175661 d!1569791))

(declare-fun m!5891516 () Bool)

(assert (=> bs!1175661 m!5891516))

(assert (=> start!511588 d!1569791))

(declare-fun d!1569793 () Bool)

(assert (=> d!1569793 (= (isEmpty!30198 rulesArg!165) ((_ is Nil!56339) rulesArg!165))))

(assert (=> b!4887740 d!1569793))

(declare-fun d!1569795 () Bool)

(declare-fun c!830857 () Bool)

(assert (=> d!1569795 (= c!830857 ((_ is Node!14720) (c!830847 input!1236)))))

(declare-fun e!3055516 () Bool)

(assert (=> d!1569795 (= (inv!72543 (c!830847 input!1236)) e!3055516)))

(declare-fun b!4887805 () Bool)

(declare-fun inv!72546 (Conc!14720) Bool)

(assert (=> b!4887805 (= e!3055516 (inv!72546 (c!830847 input!1236)))))

(declare-fun b!4887806 () Bool)

(declare-fun e!3055517 () Bool)

(assert (=> b!4887806 (= e!3055516 e!3055517)))

(declare-fun res!2087430 () Bool)

(assert (=> b!4887806 (= res!2087430 (not ((_ is Leaf!24513) (c!830847 input!1236))))))

(assert (=> b!4887806 (=> res!2087430 e!3055517)))

(declare-fun b!4887807 () Bool)

(declare-fun inv!72547 (Conc!14720) Bool)

(assert (=> b!4887807 (= e!3055517 (inv!72547 (c!830847 input!1236)))))

(assert (= (and d!1569795 c!830857) b!4887805))

(assert (= (and d!1569795 (not c!830857)) b!4887806))

(assert (= (and b!4887806 (not res!2087430)) b!4887807))

(declare-fun m!5891518 () Bool)

(assert (=> b!4887805 m!5891518))

(declare-fun m!5891520 () Bool)

(assert (=> b!4887807 m!5891520))

(assert (=> b!4887736 d!1569795))

(declare-fun d!1569797 () Bool)

(assert (=> d!1569797 (= (isDefined!11002 lt!2003188) (not (isEmpty!30201 lt!2003188)))))

(declare-fun bs!1175662 () Bool)

(assert (= bs!1175662 d!1569797))

(declare-fun m!5891522 () Bool)

(assert (=> bs!1175662 m!5891522))

(assert (=> b!4887737 d!1569797))

(declare-fun d!1569799 () Bool)

(declare-fun isEmpty!30202 (Option!13987) Bool)

(assert (=> d!1569799 (= (isDefined!11003 lt!2003192) (not (isEmpty!30202 lt!2003192)))))

(declare-fun bs!1175663 () Bool)

(assert (= bs!1175663 d!1569799))

(declare-fun m!5891524 () Bool)

(assert (=> bs!1175663 m!5891524))

(assert (=> b!4887737 d!1569799))

(declare-fun lt!2003235 () Option!13988)

(declare-fun d!1569801 () Bool)

(assert (=> d!1569801 (= lt!2003235 (maxPrefix!4593 thiss!14805 rulesArg!165 lt!2003193))))

(declare-fun e!3055520 () Option!13988)

(assert (=> d!1569801 (= lt!2003235 e!3055520)))

(declare-fun c!830860 () Bool)

(assert (=> d!1569801 (= c!830860 (and ((_ is Cons!56339) rulesArg!165) ((_ is Nil!56339) (t!365109 rulesArg!165))))))

(declare-fun lt!2003233 () Unit!146328)

(declare-fun lt!2003234 () Unit!146328)

(assert (=> d!1569801 (= lt!2003233 lt!2003234)))

(assert (=> d!1569801 (isPrefix!4874 lt!2003193 lt!2003193)))

(assert (=> d!1569801 (= lt!2003234 (lemmaIsPrefixRefl!3271 lt!2003193 lt!2003193))))

(assert (=> d!1569801 (rulesValidInductive!3131 thiss!14805 rulesArg!165)))

(assert (=> d!1569801 (= (maxPrefixZipper!655 thiss!14805 rulesArg!165 lt!2003193) lt!2003235)))

(declare-fun call!339050 () Option!13988)

(declare-fun bm!339045 () Bool)

(declare-fun maxPrefixOneRuleZipper!250 (LexerInterface!7744 Rule!16104 List!56461) Option!13988)

(assert (=> bm!339045 (= call!339050 (maxPrefixOneRuleZipper!250 thiss!14805 (h!62787 rulesArg!165) lt!2003193))))

(declare-fun b!4887812 () Bool)

(assert (=> b!4887812 (= e!3055520 call!339050)))

(declare-fun b!4887813 () Bool)

(declare-fun lt!2003231 () Option!13988)

(declare-fun lt!2003232 () Option!13988)

(assert (=> b!4887813 (= e!3055520 (ite (and ((_ is None!13987) lt!2003231) ((_ is None!13987) lt!2003232)) None!13987 (ite ((_ is None!13987) lt!2003232) lt!2003231 (ite ((_ is None!13987) lt!2003231) lt!2003232 (ite (>= (size!37094 (_1!33476 (v!49937 lt!2003231))) (size!37094 (_1!33476 (v!49937 lt!2003232)))) lt!2003231 lt!2003232)))))))

(assert (=> b!4887813 (= lt!2003231 call!339050)))

(assert (=> b!4887813 (= lt!2003232 (maxPrefixZipper!655 thiss!14805 (t!365109 rulesArg!165) lt!2003193))))

(assert (= (and d!1569801 c!830860) b!4887812))

(assert (= (and d!1569801 (not c!830860)) b!4887813))

(assert (= (or b!4887812 b!4887813) bm!339045))

(assert (=> d!1569801 m!5891444))

(assert (=> d!1569801 m!5891430))

(assert (=> d!1569801 m!5891432))

(assert (=> d!1569801 m!5891452))

(declare-fun m!5891526 () Bool)

(assert (=> bm!339045 m!5891526))

(declare-fun m!5891528 () Bool)

(assert (=> b!4887813 m!5891528))

(assert (=> b!4887737 d!1569801))

(declare-fun d!1569803 () Bool)

(assert (=> d!1569803 true))

(declare-fun lt!2003254 () Bool)

(declare-fun lambda!243882 () Int)

(declare-fun forall!13079 (List!56463 Int) Bool)

(assert (=> d!1569803 (= lt!2003254 (forall!13079 rulesArg!165 lambda!243882))))

(declare-fun e!3055530 () Bool)

(assert (=> d!1569803 (= lt!2003254 e!3055530)))

(declare-fun res!2087438 () Bool)

(assert (=> d!1569803 (=> res!2087438 e!3055530)))

(assert (=> d!1569803 (= res!2087438 (not ((_ is Cons!56339) rulesArg!165)))))

(assert (=> d!1569803 (= (rulesValidInductive!3131 thiss!14805 rulesArg!165) lt!2003254)))

(declare-fun b!4887828 () Bool)

(declare-fun e!3055531 () Bool)

(assert (=> b!4887828 (= e!3055530 e!3055531)))

(declare-fun res!2087437 () Bool)

(assert (=> b!4887828 (=> (not res!2087437) (not e!3055531))))

(declare-fun ruleValid!3661 (LexerInterface!7744 Rule!16104) Bool)

(assert (=> b!4887828 (= res!2087437 (ruleValid!3661 thiss!14805 (h!62787 rulesArg!165)))))

(declare-fun b!4887829 () Bool)

(assert (=> b!4887829 (= e!3055531 (rulesValidInductive!3131 thiss!14805 (t!365109 rulesArg!165)))))

(assert (= (and d!1569803 (not res!2087438)) b!4887828))

(assert (= (and b!4887828 res!2087437) b!4887829))

(declare-fun m!5891544 () Bool)

(assert (=> d!1569803 m!5891544))

(declare-fun m!5891546 () Bool)

(assert (=> b!4887828 m!5891546))

(declare-fun m!5891548 () Bool)

(assert (=> b!4887829 m!5891548))

(assert (=> b!4887738 d!1569803))

(declare-fun d!1569813 () Bool)

(assert (=> d!1569813 (= (get!19436 lt!2003188) (v!49937 lt!2003188))))

(assert (=> b!4887733 d!1569813))

(assert (=> b!4887733 d!1569775))

(declare-fun b!4887842 () Bool)

(declare-fun e!3055539 () Bool)

(declare-fun tail!9591 (List!56461) List!56461)

(assert (=> b!4887842 (= e!3055539 (isPrefix!4874 (tail!9591 lt!2003193) (tail!9591 lt!2003193)))))

(declare-fun b!4887840 () Bool)

(declare-fun e!3055538 () Bool)

(assert (=> b!4887840 (= e!3055538 e!3055539)))

(declare-fun res!2087449 () Bool)

(assert (=> b!4887840 (=> (not res!2087449) (not e!3055539))))

(assert (=> b!4887840 (= res!2087449 (not ((_ is Nil!56337) lt!2003193)))))

(declare-fun b!4887841 () Bool)

(declare-fun res!2087450 () Bool)

(assert (=> b!4887841 (=> (not res!2087450) (not e!3055539))))

(declare-fun head!10445 (List!56461) C!26652)

(assert (=> b!4887841 (= res!2087450 (= (head!10445 lt!2003193) (head!10445 lt!2003193)))))

(declare-fun d!1569815 () Bool)

(declare-fun e!3055540 () Bool)

(assert (=> d!1569815 e!3055540))

(declare-fun res!2087448 () Bool)

(assert (=> d!1569815 (=> res!2087448 e!3055540)))

(declare-fun lt!2003257 () Bool)

(assert (=> d!1569815 (= res!2087448 (not lt!2003257))))

(assert (=> d!1569815 (= lt!2003257 e!3055538)))

(declare-fun res!2087447 () Bool)

(assert (=> d!1569815 (=> res!2087447 e!3055538)))

(assert (=> d!1569815 (= res!2087447 ((_ is Nil!56337) lt!2003193))))

(assert (=> d!1569815 (= (isPrefix!4874 lt!2003193 lt!2003193) lt!2003257)))

(declare-fun b!4887843 () Bool)

(assert (=> b!4887843 (= e!3055540 (>= (size!37096 lt!2003193) (size!37096 lt!2003193)))))

(assert (= (and d!1569815 (not res!2087447)) b!4887840))

(assert (= (and b!4887840 res!2087449) b!4887841))

(assert (= (and b!4887841 res!2087450) b!4887842))

(assert (= (and d!1569815 (not res!2087448)) b!4887843))

(declare-fun m!5891550 () Bool)

(assert (=> b!4887842 m!5891550))

(assert (=> b!4887842 m!5891550))

(assert (=> b!4887842 m!5891550))

(assert (=> b!4887842 m!5891550))

(declare-fun m!5891552 () Bool)

(assert (=> b!4887842 m!5891552))

(declare-fun m!5891554 () Bool)

(assert (=> b!4887841 m!5891554))

(assert (=> b!4887841 m!5891554))

(assert (=> b!4887843 m!5891500))

(assert (=> b!4887843 m!5891500))

(assert (=> b!4887731 d!1569815))

(declare-fun d!1569817 () Bool)

(assert (=> d!1569817 (isPrefix!4874 lt!2003193 lt!2003193)))

(declare-fun lt!2003260 () Unit!146328)

(declare-fun choose!35683 (List!56461 List!56461) Unit!146328)

(assert (=> d!1569817 (= lt!2003260 (choose!35683 lt!2003193 lt!2003193))))

(assert (=> d!1569817 (= (lemmaIsPrefixRefl!3271 lt!2003193 lt!2003193) lt!2003260)))

(declare-fun bs!1175666 () Bool)

(assert (= bs!1175666 d!1569817))

(assert (=> bs!1175666 m!5891430))

(declare-fun m!5891556 () Bool)

(assert (=> bs!1175666 m!5891556))

(assert (=> b!4887731 d!1569817))

(declare-fun d!1569819 () Bool)

(assert (=> d!1569819 (= (list!17690 input!1236) (list!17692 (c!830847 input!1236)))))

(declare-fun bs!1175667 () Bool)

(assert (= bs!1175667 d!1569819))

(declare-fun m!5891558 () Bool)

(assert (=> bs!1175667 m!5891558))

(assert (=> b!4887731 d!1569819))

(declare-fun d!1569821 () Bool)

(assert (=> d!1569821 (= (isDefined!11002 lt!2003195) (not (isEmpty!30201 lt!2003195)))))

(declare-fun bs!1175668 () Bool)

(assert (= bs!1175668 d!1569821))

(declare-fun m!5891560 () Bool)

(assert (=> bs!1175668 m!5891560))

(assert (=> b!4887742 d!1569821))

(declare-fun d!1569823 () Bool)

(assert (=> d!1569823 (= (inv!72537 (tag!9016 (h!62787 rulesArg!165))) (= (mod (str.len (value!261458 (tag!9016 (h!62787 rulesArg!165)))) 2) 0))))

(assert (=> b!4887732 d!1569823))

(declare-fun d!1569825 () Bool)

(declare-fun res!2087465 () Bool)

(declare-fun e!3055555 () Bool)

(assert (=> d!1569825 (=> (not res!2087465) (not e!3055555))))

(declare-fun semiInverseModEq!3575 (Int Int) Bool)

(assert (=> d!1569825 (= res!2087465 (semiInverseModEq!3575 (toChars!10898 (transformation!8152 (h!62787 rulesArg!165))) (toValue!11039 (transformation!8152 (h!62787 rulesArg!165)))))))

(assert (=> d!1569825 (= (inv!72542 (transformation!8152 (h!62787 rulesArg!165))) e!3055555)))

(declare-fun b!4887862 () Bool)

(declare-fun equivClasses!3454 (Int Int) Bool)

(assert (=> b!4887862 (= e!3055555 (equivClasses!3454 (toChars!10898 (transformation!8152 (h!62787 rulesArg!165))) (toValue!11039 (transformation!8152 (h!62787 rulesArg!165)))))))

(assert (= (and d!1569825 res!2087465) b!4887862))

(declare-fun m!5891562 () Bool)

(assert (=> d!1569825 m!5891562))

(declare-fun m!5891564 () Bool)

(assert (=> b!4887862 m!5891564))

(assert (=> b!4887732 d!1569825))

(declare-fun e!3055578 () Bool)

(declare-fun lt!2003302 () Option!13987)

(declare-fun b!4887887 () Bool)

(assert (=> b!4887887 (= e!3055578 (= (list!17690 (_2!33475 (get!19435 lt!2003302))) (_2!33476 (get!19436 (maxPrefix!4593 thiss!14805 (t!365109 rulesArg!165) (list!17690 input!1236))))))))

(declare-fun d!1569827 () Bool)

(declare-fun e!3055575 () Bool)

(assert (=> d!1569827 e!3055575))

(declare-fun res!2087485 () Bool)

(assert (=> d!1569827 (=> (not res!2087485) (not e!3055575))))

(assert (=> d!1569827 (= res!2087485 (= (isDefined!11003 lt!2003302) (isDefined!11002 (maxPrefixZipper!655 thiss!14805 (t!365109 rulesArg!165) (list!17690 input!1236)))))))

(declare-fun e!3055574 () Option!13987)

(assert (=> d!1569827 (= lt!2003302 e!3055574)))

(declare-fun c!830869 () Bool)

(assert (=> d!1569827 (= c!830869 (and ((_ is Cons!56339) (t!365109 rulesArg!165)) ((_ is Nil!56339) (t!365109 (t!365109 rulesArg!165)))))))

(declare-fun lt!2003301 () Unit!146328)

(declare-fun lt!2003300 () Unit!146328)

(assert (=> d!1569827 (= lt!2003301 lt!2003300)))

(declare-fun lt!2003296 () List!56461)

(declare-fun lt!2003298 () List!56461)

(assert (=> d!1569827 (isPrefix!4874 lt!2003296 lt!2003298)))

(assert (=> d!1569827 (= lt!2003300 (lemmaIsPrefixRefl!3271 lt!2003296 lt!2003298))))

(assert (=> d!1569827 (= lt!2003298 (list!17690 input!1236))))

(assert (=> d!1569827 (= lt!2003296 (list!17690 input!1236))))

(assert (=> d!1569827 (rulesValidInductive!3131 thiss!14805 (t!365109 rulesArg!165))))

(assert (=> d!1569827 (= (maxPrefixZipperSequence!1313 thiss!14805 (t!365109 rulesArg!165) input!1236) lt!2003302)))

(declare-fun b!4887888 () Bool)

(declare-fun e!3055577 () Bool)

(assert (=> b!4887888 (= e!3055577 e!3055578)))

(declare-fun res!2087486 () Bool)

(assert (=> b!4887888 (=> (not res!2087486) (not e!3055578))))

(assert (=> b!4887888 (= res!2087486 (= (_1!33475 (get!19435 lt!2003302)) (_1!33476 (get!19436 (maxPrefix!4593 thiss!14805 (t!365109 rulesArg!165) (list!17690 input!1236))))))))

(declare-fun b!4887889 () Bool)

(declare-fun lt!2003297 () Option!13987)

(declare-fun lt!2003299 () Option!13987)

(assert (=> b!4887889 (= e!3055574 (ite (and ((_ is None!13986) lt!2003297) ((_ is None!13986) lt!2003299)) None!13986 (ite ((_ is None!13986) lt!2003299) lt!2003297 (ite ((_ is None!13986) lt!2003297) lt!2003299 (ite (>= (size!37094 (_1!33475 (v!49936 lt!2003297))) (size!37094 (_1!33475 (v!49936 lt!2003299)))) lt!2003297 lt!2003299)))))))

(declare-fun call!339059 () Option!13987)

(assert (=> b!4887889 (= lt!2003297 call!339059)))

(assert (=> b!4887889 (= lt!2003299 (maxPrefixZipperSequence!1313 thiss!14805 (t!365109 (t!365109 rulesArg!165)) input!1236))))

(declare-fun bm!339054 () Bool)

(assert (=> bm!339054 (= call!339059 (maxPrefixOneRuleZipperSequence!678 thiss!14805 (h!62787 (t!365109 rulesArg!165)) input!1236))))

(declare-fun b!4887890 () Bool)

(declare-fun e!3055576 () Bool)

(declare-fun e!3055579 () Bool)

(assert (=> b!4887890 (= e!3055576 e!3055579)))

(declare-fun res!2087487 () Bool)

(assert (=> b!4887890 (=> (not res!2087487) (not e!3055579))))

(assert (=> b!4887890 (= res!2087487 (= (_1!33475 (get!19435 lt!2003302)) (_1!33476 (get!19436 (maxPrefixZipper!655 thiss!14805 (t!365109 rulesArg!165) (list!17690 input!1236))))))))

(declare-fun b!4887891 () Bool)

(assert (=> b!4887891 (= e!3055575 e!3055577)))

(declare-fun res!2087488 () Bool)

(assert (=> b!4887891 (=> res!2087488 e!3055577)))

(assert (=> b!4887891 (= res!2087488 (not (isDefined!11003 lt!2003302)))))

(declare-fun b!4887892 () Bool)

(declare-fun res!2087484 () Bool)

(assert (=> b!4887892 (=> (not res!2087484) (not e!3055575))))

(assert (=> b!4887892 (= res!2087484 e!3055576)))

(declare-fun res!2087489 () Bool)

(assert (=> b!4887892 (=> res!2087489 e!3055576)))

(assert (=> b!4887892 (= res!2087489 (not (isDefined!11003 lt!2003302)))))

(declare-fun b!4887893 () Bool)

(assert (=> b!4887893 (= e!3055579 (= (list!17690 (_2!33475 (get!19435 lt!2003302))) (_2!33476 (get!19436 (maxPrefixZipper!655 thiss!14805 (t!365109 rulesArg!165) (list!17690 input!1236))))))))

(declare-fun b!4887894 () Bool)

(assert (=> b!4887894 (= e!3055574 call!339059)))

(assert (= (and d!1569827 c!830869) b!4887894))

(assert (= (and d!1569827 (not c!830869)) b!4887889))

(assert (= (or b!4887894 b!4887889) bm!339054))

(assert (= (and d!1569827 res!2087485) b!4887892))

(assert (= (and b!4887892 (not res!2087489)) b!4887890))

(assert (= (and b!4887890 res!2087487) b!4887893))

(assert (= (and b!4887892 res!2087484) b!4887891))

(assert (= (and b!4887891 (not res!2087488)) b!4887888))

(assert (= (and b!4887888 res!2087486) b!4887887))

(declare-fun m!5891590 () Bool)

(assert (=> bm!339054 m!5891590))

(assert (=> d!1569827 m!5891434))

(declare-fun m!5891592 () Bool)

(assert (=> d!1569827 m!5891592))

(assert (=> d!1569827 m!5891548))

(assert (=> d!1569827 m!5891434))

(declare-fun m!5891594 () Bool)

(assert (=> d!1569827 m!5891594))

(declare-fun m!5891596 () Bool)

(assert (=> d!1569827 m!5891596))

(declare-fun m!5891598 () Bool)

(assert (=> d!1569827 m!5891598))

(assert (=> d!1569827 m!5891594))

(declare-fun m!5891600 () Bool)

(assert (=> d!1569827 m!5891600))

(declare-fun m!5891602 () Bool)

(assert (=> b!4887890 m!5891602))

(assert (=> b!4887890 m!5891434))

(assert (=> b!4887890 m!5891434))

(assert (=> b!4887890 m!5891594))

(assert (=> b!4887890 m!5891594))

(declare-fun m!5891604 () Bool)

(assert (=> b!4887890 m!5891604))

(assert (=> b!4887891 m!5891592))

(assert (=> b!4887888 m!5891602))

(assert (=> b!4887888 m!5891434))

(assert (=> b!4887888 m!5891434))

(declare-fun m!5891606 () Bool)

(assert (=> b!4887888 m!5891606))

(assert (=> b!4887888 m!5891606))

(declare-fun m!5891608 () Bool)

(assert (=> b!4887888 m!5891608))

(assert (=> b!4887887 m!5891434))

(assert (=> b!4887887 m!5891434))

(assert (=> b!4887887 m!5891606))

(assert (=> b!4887887 m!5891602))

(assert (=> b!4887887 m!5891606))

(assert (=> b!4887887 m!5891608))

(declare-fun m!5891610 () Bool)

(assert (=> b!4887887 m!5891610))

(assert (=> b!4887892 m!5891592))

(assert (=> b!4887893 m!5891434))

(assert (=> b!4887893 m!5891610))

(assert (=> b!4887893 m!5891434))

(assert (=> b!4887893 m!5891594))

(assert (=> b!4887893 m!5891594))

(assert (=> b!4887893 m!5891604))

(assert (=> b!4887893 m!5891602))

(declare-fun m!5891612 () Bool)

(assert (=> b!4887889 m!5891612))

(assert (=> b!4887743 d!1569827))

(declare-fun b!4888009 () Bool)

(declare-fun e!3055651 () Bool)

(assert (=> b!4888009 (= e!3055651 true)))

(declare-fun b!4888008 () Bool)

(declare-fun e!3055650 () Bool)

(assert (=> b!4888008 (= e!3055650 e!3055651)))

(declare-fun b!4888001 () Bool)

(assert (=> b!4888001 e!3055650))

(assert (= b!4888008 b!4888009))

(assert (= b!4888001 b!4888008))

(declare-fun lambda!243892 () Int)

(declare-fun order!25431 () Int)

(declare-fun order!25429 () Int)

(declare-fun dynLambda!22588 (Int Int) Int)

(declare-fun dynLambda!22589 (Int Int) Int)

(assert (=> b!4888009 (< (dynLambda!22588 order!25429 (toValue!11039 (transformation!8152 (h!62787 rulesArg!165)))) (dynLambda!22589 order!25431 lambda!243892))))

(declare-fun order!25433 () Int)

(declare-fun dynLambda!22590 (Int Int) Int)

(assert (=> b!4888009 (< (dynLambda!22590 order!25433 (toChars!10898 (transformation!8152 (h!62787 rulesArg!165)))) (dynLambda!22589 order!25431 lambda!243892))))

(declare-fun d!1569831 () Bool)

(declare-fun e!3055641 () Bool)

(assert (=> d!1569831 e!3055641))

(declare-fun res!2087534 () Bool)

(assert (=> d!1569831 (=> (not res!2087534) (not e!3055641))))

(declare-fun lt!2003368 () Option!13987)

(assert (=> d!1569831 (= res!2087534 (= (isDefined!11003 lt!2003368) (isDefined!11002 (maxPrefixOneRule!3518 thiss!14805 (h!62787 rulesArg!165) (list!17690 input!1236)))))))

(declare-fun e!3055644 () Option!13987)

(assert (=> d!1569831 (= lt!2003368 e!3055644)))

(declare-fun c!830878 () Bool)

(declare-datatypes ((tuple2!60352 0))(
  ( (tuple2!60353 (_1!33479 BalanceConc!28870) (_2!33479 BalanceConc!28870)) )
))
(declare-fun lt!2003371 () tuple2!60352)

(declare-fun isEmpty!30205 (BalanceConc!28870) Bool)

(assert (=> d!1569831 (= c!830878 (isEmpty!30205 (_1!33479 lt!2003371)))))

(declare-fun findLongestMatchWithZipperSequence!262 (Regex!13227 BalanceConc!28870) tuple2!60352)

(assert (=> d!1569831 (= lt!2003371 (findLongestMatchWithZipperSequence!262 (regex!8152 (h!62787 rulesArg!165)) input!1236))))

(assert (=> d!1569831 (ruleValid!3661 thiss!14805 (h!62787 rulesArg!165))))

(assert (=> d!1569831 (= (maxPrefixOneRuleZipperSequence!678 thiss!14805 (h!62787 rulesArg!165) input!1236) lt!2003368)))

(declare-fun b!4887996 () Bool)

(assert (=> b!4887996 (= e!3055644 None!13986)))

(declare-fun b!4887997 () Bool)

(declare-fun e!3055643 () Bool)

(declare-fun e!3055645 () Bool)

(assert (=> b!4887997 (= e!3055643 e!3055645)))

(declare-fun res!2087532 () Bool)

(assert (=> b!4887997 (=> (not res!2087532) (not e!3055645))))

(assert (=> b!4887997 (= res!2087532 (= (_1!33475 (get!19435 lt!2003368)) (_1!33476 (get!19436 (maxPrefixOneRule!3518 thiss!14805 (h!62787 rulesArg!165) (list!17690 input!1236))))))))

(declare-fun b!4887998 () Bool)

(assert (=> b!4887998 (= e!3055641 e!3055643)))

(declare-fun res!2087531 () Bool)

(assert (=> b!4887998 (=> res!2087531 e!3055643)))

(assert (=> b!4887998 (= res!2087531 (not (isDefined!11003 lt!2003368)))))

(declare-fun b!4887999 () Bool)

(assert (=> b!4887999 (= e!3055645 (= (list!17690 (_2!33475 (get!19435 lt!2003368))) (_2!33476 (get!19436 (maxPrefixOneRule!3518 thiss!14805 (h!62787 rulesArg!165) (list!17690 input!1236))))))))

(declare-fun b!4888000 () Bool)

(declare-fun e!3055642 () Bool)

(declare-fun lt!2003376 () List!56461)

(declare-datatypes ((tuple2!60354 0))(
  ( (tuple2!60355 (_1!33480 List!56461) (_2!33480 List!56461)) )
))
(declare-fun findLongestMatchInner!1747 (Regex!13227 List!56461 Int List!56461 List!56461 Int) tuple2!60354)

(assert (=> b!4888000 (= e!3055642 (matchR!6519 (regex!8152 (h!62787 rulesArg!165)) (_1!33480 (findLongestMatchInner!1747 (regex!8152 (h!62787 rulesArg!165)) Nil!56337 (size!37096 Nil!56337) lt!2003376 lt!2003376 (size!37096 lt!2003376)))))))

(declare-fun size!37098 (BalanceConc!28870) Int)

(assert (=> b!4888001 (= e!3055644 (Some!13986 (tuple2!60345 (Token!14873 (apply!13529 (transformation!8152 (h!62787 rulesArg!165)) (_1!33479 lt!2003371)) (h!62787 rulesArg!165) (size!37098 (_1!33479 lt!2003371)) (list!17690 (_1!33479 lt!2003371))) (_2!33479 lt!2003371))))))

(assert (=> b!4888001 (= lt!2003376 (list!17690 input!1236))))

(declare-fun lt!2003377 () Unit!146328)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1710 (Regex!13227 List!56461) Unit!146328)

(assert (=> b!4888001 (= lt!2003377 (longestMatchIsAcceptedByMatchOrIsEmpty!1710 (regex!8152 (h!62787 rulesArg!165)) lt!2003376))))

(declare-fun res!2087533 () Bool)

(declare-fun isEmpty!30206 (List!56461) Bool)

(assert (=> b!4888001 (= res!2087533 (isEmpty!30206 (_1!33480 (findLongestMatchInner!1747 (regex!8152 (h!62787 rulesArg!165)) Nil!56337 (size!37096 Nil!56337) lt!2003376 lt!2003376 (size!37096 lt!2003376)))))))

(assert (=> b!4888001 (=> res!2087533 e!3055642)))

(assert (=> b!4888001 e!3055642))

(declare-fun lt!2003373 () Unit!146328)

(assert (=> b!4888001 (= lt!2003373 lt!2003377)))

(declare-fun lt!2003374 () Unit!146328)

(declare-fun lemmaInv!1230 (TokenValueInjection!16232) Unit!146328)

(assert (=> b!4888001 (= lt!2003374 (lemmaInv!1230 (transformation!8152 (h!62787 rulesArg!165))))))

(declare-fun lt!2003372 () Unit!146328)

(declare-fun ForallOf!1127 (Int BalanceConc!28870) Unit!146328)

(assert (=> b!4888001 (= lt!2003372 (ForallOf!1127 lambda!243892 (_1!33479 lt!2003371)))))

(declare-fun lt!2003369 () Unit!146328)

(assert (=> b!4888001 (= lt!2003369 (ForallOf!1127 lambda!243892 (seqFromList!5925 (list!17690 (_1!33479 lt!2003371)))))))

(declare-fun lt!2003375 () Option!13987)

(assert (=> b!4888001 (= lt!2003375 (Some!13986 (tuple2!60345 (Token!14873 (apply!13529 (transformation!8152 (h!62787 rulesArg!165)) (_1!33479 lt!2003371)) (h!62787 rulesArg!165) (size!37098 (_1!33479 lt!2003371)) (list!17690 (_1!33479 lt!2003371))) (_2!33479 lt!2003371))))))

(declare-fun lt!2003370 () Unit!146328)

(declare-fun lemmaEqSameImage!1084 (TokenValueInjection!16232 BalanceConc!28870 BalanceConc!28870) Unit!146328)

(assert (=> b!4888001 (= lt!2003370 (lemmaEqSameImage!1084 (transformation!8152 (h!62787 rulesArg!165)) (_1!33479 lt!2003371) (seqFromList!5925 (list!17690 (_1!33479 lt!2003371)))))))

(assert (= (and d!1569831 c!830878) b!4887996))

(assert (= (and d!1569831 (not c!830878)) b!4888001))

(assert (= (and b!4888001 (not res!2087533)) b!4888000))

(assert (= (and d!1569831 res!2087534) b!4887998))

(assert (= (and b!4887998 (not res!2087531)) b!4887997))

(assert (= (and b!4887997 res!2087532) b!4887999))

(declare-fun m!5891694 () Bool)

(assert (=> b!4887997 m!5891694))

(assert (=> b!4887997 m!5891434))

(assert (=> b!4887997 m!5891434))

(declare-fun m!5891696 () Bool)

(assert (=> b!4887997 m!5891696))

(assert (=> b!4887997 m!5891696))

(declare-fun m!5891698 () Bool)

(assert (=> b!4887997 m!5891698))

(declare-fun m!5891700 () Bool)

(assert (=> b!4887998 m!5891700))

(declare-fun m!5891702 () Bool)

(assert (=> d!1569831 m!5891702))

(assert (=> d!1569831 m!5891696))

(declare-fun m!5891704 () Bool)

(assert (=> d!1569831 m!5891704))

(assert (=> d!1569831 m!5891700))

(declare-fun m!5891706 () Bool)

(assert (=> d!1569831 m!5891706))

(assert (=> d!1569831 m!5891434))

(assert (=> d!1569831 m!5891546))

(assert (=> d!1569831 m!5891434))

(assert (=> d!1569831 m!5891696))

(declare-fun m!5891708 () Bool)

(assert (=> b!4888000 m!5891708))

(declare-fun m!5891710 () Bool)

(assert (=> b!4888000 m!5891710))

(assert (=> b!4888000 m!5891708))

(assert (=> b!4888000 m!5891710))

(declare-fun m!5891712 () Bool)

(assert (=> b!4888000 m!5891712))

(declare-fun m!5891714 () Bool)

(assert (=> b!4888000 m!5891714))

(assert (=> b!4887999 m!5891696))

(assert (=> b!4887999 m!5891698))

(assert (=> b!4887999 m!5891434))

(assert (=> b!4887999 m!5891434))

(assert (=> b!4887999 m!5891696))

(assert (=> b!4887999 m!5891694))

(declare-fun m!5891716 () Bool)

(assert (=> b!4887999 m!5891716))

(declare-fun m!5891718 () Bool)

(assert (=> b!4888001 m!5891718))

(assert (=> b!4888001 m!5891708))

(declare-fun m!5891720 () Bool)

(assert (=> b!4888001 m!5891720))

(declare-fun m!5891722 () Bool)

(assert (=> b!4888001 m!5891722))

(assert (=> b!4888001 m!5891710))

(assert (=> b!4888001 m!5891720))

(declare-fun m!5891724 () Bool)

(assert (=> b!4888001 m!5891724))

(declare-fun m!5891726 () Bool)

(assert (=> b!4888001 m!5891726))

(declare-fun m!5891728 () Bool)

(assert (=> b!4888001 m!5891728))

(declare-fun m!5891730 () Bool)

(assert (=> b!4888001 m!5891730))

(assert (=> b!4888001 m!5891720))

(declare-fun m!5891732 () Bool)

(assert (=> b!4888001 m!5891732))

(assert (=> b!4888001 m!5891730))

(assert (=> b!4888001 m!5891434))

(assert (=> b!4888001 m!5891708))

(assert (=> b!4888001 m!5891710))

(assert (=> b!4888001 m!5891712))

(declare-fun m!5891734 () Bool)

(assert (=> b!4888001 m!5891734))

(declare-fun m!5891736 () Bool)

(assert (=> b!4888001 m!5891736))

(assert (=> b!4887743 d!1569831))

(declare-fun b!4888020 () Bool)

(declare-fun b_free!131359 () Bool)

(declare-fun b_next!132149 () Bool)

(assert (=> b!4888020 (= b_free!131359 (not b_next!132149))))

(declare-fun tp!1375623 () Bool)

(declare-fun b_and!344191 () Bool)

(assert (=> b!4888020 (= tp!1375623 b_and!344191)))

(declare-fun b_free!131361 () Bool)

(declare-fun b_next!132151 () Bool)

(assert (=> b!4888020 (= b_free!131361 (not b_next!132151))))

(declare-fun tp!1375622 () Bool)

(declare-fun b_and!344193 () Bool)

(assert (=> b!4888020 (= tp!1375622 b_and!344193)))

(declare-fun e!3055660 () Bool)

(assert (=> b!4888020 (= e!3055660 (and tp!1375623 tp!1375622))))

(declare-fun e!3055663 () Bool)

(declare-fun tp!1375621 () Bool)

(declare-fun b!4888019 () Bool)

(assert (=> b!4888019 (= e!3055663 (and tp!1375621 (inv!72537 (tag!9016 (h!62787 (t!365109 rulesArg!165)))) (inv!72542 (transformation!8152 (h!62787 (t!365109 rulesArg!165)))) e!3055660))))

(declare-fun b!4888018 () Bool)

(declare-fun e!3055662 () Bool)

(declare-fun tp!1375620 () Bool)

(assert (=> b!4888018 (= e!3055662 (and e!3055663 tp!1375620))))

(assert (=> b!4887730 (= tp!1375572 e!3055662)))

(assert (= b!4888019 b!4888020))

(assert (= b!4888018 b!4888019))

(assert (= (and b!4887730 ((_ is Cons!56339) (t!365109 rulesArg!165))) b!4888018))

(declare-fun m!5891738 () Bool)

(assert (=> b!4888019 m!5891738))

(declare-fun m!5891740 () Bool)

(assert (=> b!4888019 m!5891740))

(declare-fun b!4888029 () Bool)

(declare-fun e!3055668 () Bool)

(declare-fun tp!1375630 () Bool)

(declare-fun tp!1375632 () Bool)

(assert (=> b!4888029 (= e!3055668 (and (inv!72543 (left!40918 (c!830847 input!1236))) tp!1375632 (inv!72543 (right!41248 (c!830847 input!1236))) tp!1375630))))

(declare-fun b!4888031 () Bool)

(declare-fun e!3055669 () Bool)

(declare-fun tp!1375631 () Bool)

(assert (=> b!4888031 (= e!3055669 tp!1375631)))

(declare-fun b!4888030 () Bool)

(declare-fun inv!72549 (IArray!29501) Bool)

(assert (=> b!4888030 (= e!3055668 (and (inv!72549 (xs!18036 (c!830847 input!1236))) e!3055669))))

(assert (=> b!4887736 (= tp!1375571 (and (inv!72543 (c!830847 input!1236)) e!3055668))))

(assert (= (and b!4887736 ((_ is Node!14720) (c!830847 input!1236))) b!4888029))

(assert (= b!4888030 b!4888031))

(assert (= (and b!4887736 ((_ is Leaf!24513) (c!830847 input!1236))) b!4888030))

(declare-fun m!5891742 () Bool)

(assert (=> b!4888029 m!5891742))

(declare-fun m!5891744 () Bool)

(assert (=> b!4888029 m!5891744))

(declare-fun m!5891746 () Bool)

(assert (=> b!4888030 m!5891746))

(assert (=> b!4887736 m!5891458))

(declare-fun b!4888042 () Bool)

(declare-fun e!3055672 () Bool)

(declare-fun tp_is_empty!35755 () Bool)

(assert (=> b!4888042 (= e!3055672 tp_is_empty!35755)))

(declare-fun b!4888043 () Bool)

(declare-fun tp!1375647 () Bool)

(declare-fun tp!1375644 () Bool)

(assert (=> b!4888043 (= e!3055672 (and tp!1375647 tp!1375644))))

(declare-fun b!4888045 () Bool)

(declare-fun tp!1375645 () Bool)

(declare-fun tp!1375646 () Bool)

(assert (=> b!4888045 (= e!3055672 (and tp!1375645 tp!1375646))))

(assert (=> b!4887732 (= tp!1375574 e!3055672)))

(declare-fun b!4888044 () Bool)

(declare-fun tp!1375643 () Bool)

(assert (=> b!4888044 (= e!3055672 tp!1375643)))

(assert (= (and b!4887732 ((_ is ElementMatch!13227) (regex!8152 (h!62787 rulesArg!165)))) b!4888042))

(assert (= (and b!4887732 ((_ is Concat!21690) (regex!8152 (h!62787 rulesArg!165)))) b!4888043))

(assert (= (and b!4887732 ((_ is Star!13227) (regex!8152 (h!62787 rulesArg!165)))) b!4888044))

(assert (= (and b!4887732 ((_ is Union!13227) (regex!8152 (h!62787 rulesArg!165)))) b!4888045))

(check-sat (not b!4887841) tp_is_empty!35755 (not d!1569797) (not d!1569779) (not b_next!132141) (not b!4887828) (not d!1569831) (not d!1569817) (not b!4888001) (not b!4887807) (not b!4888045) (not b!4887887) (not b!4887805) (not d!1569799) (not b!4887842) (not b!4887893) (not b!4887794) (not b!4887999) (not d!1569827) (not b!4887736) (not b!4887791) (not d!1569821) (not b!4887790) (not b!4887890) (not b_next!132149) (not b!4888000) (not b!4888019) (not b!4887813) (not b!4887829) (not b!4888029) b_and!344191 b_and!344193 (not b!4887793) (not b!4888018) (not d!1569825) (not b!4887889) (not d!1569791) (not b!4887796) (not b!4887998) (not b!4888044) (not b!4887997) (not b!4887795) (not bm!339045) (not bm!339042) b_and!344183 (not b!4887843) (not b!4888030) (not b_next!132143) (not b!4887891) (not d!1569771) (not b_next!132151) (not b!4887798) (not b!4887892) b_and!344185 (not b!4888043) (not b!4888031) (not bm!339054) (not d!1569819) (not b!4887797) (not b!4887862) (not d!1569801) (not d!1569803) (not b!4887888))
(check-sat (not b_next!132149) (not b_next!132141) b_and!344183 (not b_next!132143) (not b_next!132151) b_and!344185 b_and!344191 b_and!344193)
