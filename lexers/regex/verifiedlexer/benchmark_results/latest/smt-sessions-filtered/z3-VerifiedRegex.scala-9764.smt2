; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511016 () Bool)

(assert start!511016)

(declare-fun b!4883625 () Bool)

(declare-fun b_free!131075 () Bool)

(declare-fun b_next!131865 () Bool)

(assert (=> b!4883625 (= b_free!131075 (not b_next!131865))))

(declare-fun tp!1374227 () Bool)

(declare-fun b_and!343907 () Bool)

(assert (=> b!4883625 (= tp!1374227 b_and!343907)))

(declare-fun b_free!131077 () Bool)

(declare-fun b_next!131867 () Bool)

(assert (=> b!4883625 (= b_free!131077 (not b_next!131867))))

(declare-fun tp!1374231 () Bool)

(declare-fun b_and!343909 () Bool)

(assert (=> b!4883625 (= tp!1374231 b_and!343909)))

(declare-fun tp!1374230 () Bool)

(declare-fun e!3052401 () Bool)

(declare-fun e!3052392 () Bool)

(declare-datatypes ((C!26540 0))(
  ( (C!26541 (val!22604 Int)) )
))
(declare-datatypes ((List!56293 0))(
  ( (Nil!56169) (Cons!56169 (h!62617 C!26540) (t!364939 List!56293)) )
))
(declare-datatypes ((IArray!29389 0))(
  ( (IArray!29390 (innerList!14752 List!56293)) )
))
(declare-datatypes ((Conc!14664 0))(
  ( (Node!14664 (left!40806 Conc!14664) (right!41136 Conc!14664) (csize!29558 Int) (cheight!14875 Int)) (Leaf!24429 (xs!17980 IArray!29389) (csize!29559 Int)) (Empty!14664) )
))
(declare-datatypes ((BalanceConc!28758 0))(
  ( (BalanceConc!28759 (c!830469 Conc!14664)) )
))
(declare-datatypes ((List!56294 0))(
  ( (Nil!56170) (Cons!56170 (h!62618 (_ BitVec 16)) (t!364940 List!56294)) )
))
(declare-datatypes ((TokenValue!8406 0))(
  ( (FloatLiteralValue!16812 (text!59287 List!56294)) (TokenValueExt!8405 (__x!34105 Int)) (Broken!42030 (value!259862 List!56294)) (Object!8529) (End!8406) (Def!8406) (Underscore!8406) (Match!8406) (Else!8406) (Error!8406) (Case!8406) (If!8406) (Extends!8406) (Abstract!8406) (Class!8406) (Val!8406) (DelimiterValue!16812 (del!8466 List!56294)) (KeywordValue!8412 (value!259863 List!56294)) (CommentValue!16812 (value!259864 List!56294)) (WhitespaceValue!16812 (value!259865 List!56294)) (IndentationValue!8406 (value!259866 List!56294)) (String!63471) (Int32!8406) (Broken!42031 (value!259867 List!56294)) (Boolean!8407) (Unit!146159) (OperatorValue!8409 (op!8466 List!56294)) (IdentifierValue!16812 (value!259868 List!56294)) (IdentifierValue!16813 (value!259869 List!56294)) (WhitespaceValue!16813 (value!259870 List!56294)) (True!16812) (False!16812) (Broken!42032 (value!259871 List!56294)) (Broken!42033 (value!259872 List!56294)) (True!16813) (RightBrace!8406) (RightBracket!8406) (Colon!8406) (Null!8406) (Comma!8406) (LeftBracket!8406) (False!16813) (LeftBrace!8406) (ImaginaryLiteralValue!8406 (text!59288 List!56294)) (StringLiteralValue!25218 (value!259873 List!56294)) (EOFValue!8406 (value!259874 List!56294)) (IdentValue!8406 (value!259875 List!56294)) (DelimiterValue!16813 (value!259876 List!56294)) (DedentValue!8406 (value!259877 List!56294)) (NewLineValue!8406 (value!259878 List!56294)) (IntegerValue!25218 (value!259879 (_ BitVec 32)) (text!59289 List!56294)) (IntegerValue!25219 (value!259880 Int) (text!59290 List!56294)) (Times!8406) (Or!8406) (Equal!8406) (Minus!8406) (Broken!42034 (value!259881 List!56294)) (And!8406) (Div!8406) (LessEqual!8406) (Mod!8406) (Concat!21577) (Not!8406) (Plus!8406) (SpaceValue!8406 (value!259882 List!56294)) (IntegerValue!25220 (value!259883 Int) (text!59291 List!56294)) (StringLiteralValue!25219 (text!59292 List!56294)) (FloatLiteralValue!16813 (text!59293 List!56294)) (BytesLiteralValue!8406 (value!259884 List!56294)) (CommentValue!16813 (value!259885 List!56294)) (StringLiteralValue!25220 (value!259886 List!56294)) (ErrorTokenValue!8406 (msg!8467 List!56294)) )
))
(declare-datatypes ((Regex!13171 0))(
  ( (ElementMatch!13171 (c!830470 C!26540)) (Concat!21578 (regOne!26854 Regex!13171) (regTwo!26854 Regex!13171)) (EmptyExpr!13171) (Star!13171 (reg!13500 Regex!13171)) (EmptyLang!13171) (Union!13171 (regOne!26855 Regex!13171) (regTwo!26855 Regex!13171)) )
))
(declare-datatypes ((String!63472 0))(
  ( (String!63473 (value!259887 String)) )
))
(declare-datatypes ((TokenValueInjection!16120 0))(
  ( (TokenValueInjection!16121 (toValue!10983 Int) (toChars!10842 Int)) )
))
(declare-datatypes ((Rule!15992 0))(
  ( (Rule!15993 (regex!8096 Regex!13171) (tag!8960 String!63472) (isSeparator!8096 Bool) (transformation!8096 TokenValueInjection!16120)) )
))
(declare-datatypes ((List!56295 0))(
  ( (Nil!56171) (Cons!56171 (h!62619 Rule!15992) (t!364941 List!56295)) )
))
(declare-fun rulesArg!165 () List!56295)

(declare-fun b!4883622 () Bool)

(declare-fun inv!72252 (String!63472) Bool)

(declare-fun inv!72256 (TokenValueInjection!16120) Bool)

(assert (=> b!4883622 (= e!3052401 (and tp!1374230 (inv!72252 (tag!8960 (h!62619 rulesArg!165))) (inv!72256 (transformation!8096 (h!62619 rulesArg!165))) e!3052392))))

(declare-fun b!4883623 () Bool)

(declare-fun e!3052397 () Bool)

(declare-fun e!3052399 () Bool)

(assert (=> b!4883623 (= e!3052397 (not e!3052399))))

(declare-fun res!2084899 () Bool)

(assert (=> b!4883623 (=> res!2084899 e!3052399)))

(get-info :version)

(assert (=> b!4883623 (= res!2084899 (or (and ((_ is Cons!56171) rulesArg!165) ((_ is Nil!56171) (t!364941 rulesArg!165))) (not ((_ is Cons!56171) rulesArg!165))))))

(declare-fun lt!2000593 () List!56293)

(declare-fun isPrefix!4818 (List!56293 List!56293) Bool)

(assert (=> b!4883623 (isPrefix!4818 lt!2000593 lt!2000593)))

(declare-datatypes ((Unit!146160 0))(
  ( (Unit!146161) )
))
(declare-fun lt!2000600 () Unit!146160)

(declare-fun lemmaIsPrefixRefl!3215 (List!56293 List!56293) Unit!146160)

(assert (=> b!4883623 (= lt!2000600 (lemmaIsPrefixRefl!3215 lt!2000593 lt!2000593))))

(declare-fun input!1236 () BalanceConc!28758)

(declare-fun list!17621 (BalanceConc!28758) List!56293)

(assert (=> b!4883623 (= lt!2000593 (list!17621 input!1236))))

(declare-fun b!4883624 () Bool)

(declare-fun e!3052393 () Bool)

(declare-datatypes ((Token!14760 0))(
  ( (Token!14761 (value!259888 TokenValue!8406) (rule!11258 Rule!15992) (size!37015 Int) (originalCharacters!8411 List!56293)) )
))
(declare-datatypes ((tuple2!60080 0))(
  ( (tuple2!60081 (_1!33343 Token!14760) (_2!33343 List!56293)) )
))
(declare-datatypes ((Option!13875 0))(
  ( (None!13874) (Some!13874 (v!49824 tuple2!60080)) )
))
(declare-fun lt!2000601 () Option!13875)

(declare-fun isDefined!10907 (Option!13875) Bool)

(assert (=> b!4883624 (= e!3052393 (isDefined!10907 lt!2000601))))

(assert (=> b!4883625 (= e!3052392 (and tp!1374227 tp!1374231))))

(declare-fun b!4883626 () Bool)

(declare-fun e!3052390 () Bool)

(declare-datatypes ((tuple2!60082 0))(
  ( (tuple2!60083 (_1!33344 Token!14760) (_2!33344 BalanceConc!28758)) )
))
(declare-fun lt!2000599 () tuple2!60082)

(declare-fun lt!2000595 () tuple2!60080)

(assert (=> b!4883626 (= e!3052390 (not (= (list!17621 (_2!33344 lt!2000599)) (_2!33343 lt!2000595))))))

(declare-fun b!4883627 () Bool)

(declare-fun res!2084896 () Bool)

(assert (=> b!4883627 (=> (not res!2084896) (not e!3052397))))

(declare-datatypes ((LexerInterface!7688 0))(
  ( (LexerInterfaceExt!7685 (__x!34106 Int)) (Lexer!7686) )
))
(declare-fun thiss!14805 () LexerInterface!7688)

(declare-fun rulesValidInductive!3075 (LexerInterface!7688 List!56295) Bool)

(assert (=> b!4883627 (= res!2084896 (rulesValidInductive!3075 thiss!14805 rulesArg!165))))

(declare-fun b!4883628 () Bool)

(declare-fun res!2084898 () Bool)

(assert (=> b!4883628 (=> (not res!2084898) (not e!3052397))))

(declare-fun isEmpty!30097 (List!56295) Bool)

(assert (=> b!4883628 (= res!2084898 (not (isEmpty!30097 rulesArg!165)))))

(declare-fun b!4883629 () Bool)

(declare-fun res!2084904 () Bool)

(declare-fun e!3052391 () Bool)

(assert (=> b!4883629 (=> res!2084904 e!3052391)))

(declare-fun lt!2000596 () Bool)

(assert (=> b!4883629 (= res!2084904 lt!2000596)))

(declare-fun res!2084905 () Bool)

(assert (=> start!511016 (=> (not res!2084905) (not e!3052397))))

(assert (=> start!511016 (= res!2084905 ((_ is Lexer!7686) thiss!14805))))

(assert (=> start!511016 e!3052397))

(assert (=> start!511016 true))

(declare-fun e!3052394 () Bool)

(assert (=> start!511016 e!3052394))

(declare-fun e!3052396 () Bool)

(declare-fun inv!72257 (BalanceConc!28758) Bool)

(assert (=> start!511016 (and (inv!72257 input!1236) e!3052396)))

(declare-fun b!4883630 () Bool)

(declare-fun e!3052402 () Bool)

(assert (=> b!4883630 (= e!3052399 e!3052402)))

(declare-fun res!2084903 () Bool)

(assert (=> b!4883630 (=> res!2084903 e!3052402)))

(declare-datatypes ((Option!13876 0))(
  ( (None!13875) (Some!13875 (v!49825 tuple2!60082)) )
))
(declare-fun lt!2000594 () Option!13876)

(declare-fun lt!2000597 () Option!13876)

(assert (=> b!4883630 (= res!2084903 (or (not ((_ is None!13875) lt!2000594)) (not ((_ is None!13875) lt!2000597))))))

(declare-fun maxPrefixZipperSequence!1257 (LexerInterface!7688 List!56295 BalanceConc!28758) Option!13876)

(assert (=> b!4883630 (= lt!2000597 (maxPrefixZipperSequence!1257 thiss!14805 (t!364941 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!622 (LexerInterface!7688 Rule!15992 BalanceConc!28758) Option!13876)

(assert (=> b!4883630 (= lt!2000594 (maxPrefixOneRuleZipperSequence!622 thiss!14805 (h!62619 rulesArg!165) input!1236))))

(declare-fun b!4883631 () Bool)

(declare-fun tp!1374228 () Bool)

(declare-fun inv!72258 (Conc!14664) Bool)

(assert (=> b!4883631 (= e!3052396 (and (inv!72258 (c!830469 input!1236)) tp!1374228))))

(declare-fun b!4883632 () Bool)

(assert (=> b!4883632 (= e!3052391 e!3052393)))

(declare-fun res!2084901 () Bool)

(assert (=> b!4883632 (=> res!2084901 e!3052393)))

(declare-fun get!19327 (Option!13876) tuple2!60082)

(declare-fun get!19328 (Option!13875) tuple2!60080)

(assert (=> b!4883632 (= res!2084901 (not (= (_1!33344 (get!19327 None!13875)) (_1!33343 (get!19328 lt!2000601)))))))

(declare-fun maxPrefix!4569 (LexerInterface!7688 List!56295 List!56293) Option!13875)

(assert (=> b!4883632 (= lt!2000601 (maxPrefix!4569 thiss!14805 rulesArg!165 lt!2000593))))

(declare-fun b!4883633 () Bool)

(declare-fun e!3052400 () Bool)

(assert (=> b!4883633 (= e!3052400 e!3052390)))

(declare-fun res!2084897 () Bool)

(assert (=> b!4883633 (=> res!2084897 e!3052390)))

(assert (=> b!4883633 (= res!2084897 (not (= (_1!33344 lt!2000599) (_1!33343 lt!2000595))))))

(declare-fun lt!2000598 () Option!13875)

(assert (=> b!4883633 (= lt!2000595 (get!19328 lt!2000598))))

(assert (=> b!4883633 (= lt!2000599 (get!19327 None!13875))))

(declare-fun b!4883634 () Bool)

(declare-fun tp!1374229 () Bool)

(assert (=> b!4883634 (= e!3052394 (and e!3052401 tp!1374229))))

(declare-fun b!4883635 () Bool)

(declare-fun e!3052398 () Bool)

(assert (=> b!4883635 (= e!3052398 e!3052391)))

(declare-fun res!2084902 () Bool)

(assert (=> b!4883635 (=> res!2084902 e!3052391)))

(assert (=> b!4883635 (= res!2084902 e!3052400)))

(declare-fun res!2084895 () Bool)

(assert (=> b!4883635 (=> (not res!2084895) (not e!3052400))))

(assert (=> b!4883635 (= res!2084895 (not lt!2000596))))

(declare-fun lt!2000602 () Bool)

(assert (=> b!4883635 (= lt!2000596 (not lt!2000602))))

(declare-fun b!4883636 () Bool)

(assert (=> b!4883636 (= e!3052402 e!3052398)))

(declare-fun res!2084900 () Bool)

(assert (=> b!4883636 (=> res!2084900 e!3052398)))

(assert (=> b!4883636 (= res!2084900 (not (= lt!2000602 (isDefined!10907 lt!2000598))))))

(assert (=> b!4883636 (= lt!2000602 false)))

(declare-fun maxPrefixZipper!599 (LexerInterface!7688 List!56295 List!56293) Option!13875)

(assert (=> b!4883636 (= lt!2000598 (maxPrefixZipper!599 thiss!14805 rulesArg!165 lt!2000593))))

(assert (= (and start!511016 res!2084905) b!4883627))

(assert (= (and b!4883627 res!2084896) b!4883628))

(assert (= (and b!4883628 res!2084898) b!4883623))

(assert (= (and b!4883623 (not res!2084899)) b!4883630))

(assert (= (and b!4883630 (not res!2084903)) b!4883636))

(assert (= (and b!4883636 (not res!2084900)) b!4883635))

(assert (= (and b!4883635 res!2084895) b!4883633))

(assert (= (and b!4883633 (not res!2084897)) b!4883626))

(assert (= (and b!4883635 (not res!2084902)) b!4883629))

(assert (= (and b!4883629 (not res!2084904)) b!4883632))

(assert (= (and b!4883632 (not res!2084901)) b!4883624))

(assert (= b!4883622 b!4883625))

(assert (= b!4883634 b!4883622))

(assert (= (and start!511016 ((_ is Cons!56171) rulesArg!165)) b!4883634))

(assert (= start!511016 b!4883631))

(declare-fun m!5887582 () Bool)

(assert (=> b!4883623 m!5887582))

(declare-fun m!5887584 () Bool)

(assert (=> b!4883623 m!5887584))

(declare-fun m!5887586 () Bool)

(assert (=> b!4883623 m!5887586))

(declare-fun m!5887588 () Bool)

(assert (=> b!4883628 m!5887588))

(declare-fun m!5887590 () Bool)

(assert (=> b!4883636 m!5887590))

(declare-fun m!5887592 () Bool)

(assert (=> b!4883636 m!5887592))

(declare-fun m!5887594 () Bool)

(assert (=> b!4883631 m!5887594))

(declare-fun m!5887596 () Bool)

(assert (=> start!511016 m!5887596))

(declare-fun m!5887598 () Bool)

(assert (=> b!4883632 m!5887598))

(declare-fun m!5887600 () Bool)

(assert (=> b!4883632 m!5887600))

(declare-fun m!5887602 () Bool)

(assert (=> b!4883632 m!5887602))

(declare-fun m!5887604 () Bool)

(assert (=> b!4883630 m!5887604))

(declare-fun m!5887606 () Bool)

(assert (=> b!4883630 m!5887606))

(declare-fun m!5887608 () Bool)

(assert (=> b!4883626 m!5887608))

(declare-fun m!5887610 () Bool)

(assert (=> b!4883624 m!5887610))

(declare-fun m!5887612 () Bool)

(assert (=> b!4883622 m!5887612))

(declare-fun m!5887614 () Bool)

(assert (=> b!4883622 m!5887614))

(declare-fun m!5887616 () Bool)

(assert (=> b!4883627 m!5887616))

(declare-fun m!5887618 () Bool)

(assert (=> b!4883633 m!5887618))

(assert (=> b!4883633 m!5887598))

(check-sat (not b!4883627) (not b!4883626) (not b_next!131865) (not b_next!131867) (not b!4883624) (not b!4883630) b_and!343909 (not b!4883633) b_and!343907 (not b!4883636) (not b!4883622) (not b!4883628) (not b!4883632) (not b!4883634) (not b!4883623) (not b!4883631) (not start!511016))
(check-sat b_and!343909 b_and!343907 (not b_next!131865) (not b_next!131867))
