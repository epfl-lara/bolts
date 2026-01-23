; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511352 () Bool)

(assert start!511352)

(declare-fun b!4885952 () Bool)

(declare-fun b_free!131235 () Bool)

(declare-fun b_next!132025 () Bool)

(assert (=> b!4885952 (= b_free!131235 (not b_next!132025))))

(declare-fun tp!1374997 () Bool)

(declare-fun b_and!344067 () Bool)

(assert (=> b!4885952 (= tp!1374997 b_and!344067)))

(declare-fun b_free!131237 () Bool)

(declare-fun b_next!132027 () Bool)

(assert (=> b!4885952 (= b_free!131237 (not b_next!132027))))

(declare-fun tp!1374996 () Bool)

(declare-fun b_and!344069 () Bool)

(assert (=> b!4885952 (= tp!1374996 b_and!344069)))

(declare-fun e!3054142 () Bool)

(assert (=> b!4885952 (= e!3054142 (and tp!1374997 tp!1374996))))

(declare-fun res!2086282 () Bool)

(declare-fun e!3054135 () Bool)

(assert (=> start!511352 (=> (not res!2086282) (not e!3054135))))

(declare-datatypes ((LexerInterface!7720 0))(
  ( (LexerInterfaceExt!7717 (__x!34169 Int)) (Lexer!7718) )
))
(declare-fun thiss!14805 () LexerInterface!7720)

(get-info :version)

(assert (=> start!511352 (= res!2086282 ((_ is Lexer!7718) thiss!14805))))

(assert (=> start!511352 e!3054135))

(assert (=> start!511352 true))

(declare-fun e!3054137 () Bool)

(assert (=> start!511352 e!3054137))

(declare-datatypes ((C!26604 0))(
  ( (C!26605 (val!22636 Int)) )
))
(declare-datatypes ((List!56389 0))(
  ( (Nil!56265) (Cons!56265 (h!62713 C!26604) (t!365035 List!56389)) )
))
(declare-datatypes ((IArray!29453 0))(
  ( (IArray!29454 (innerList!14784 List!56389)) )
))
(declare-datatypes ((Conc!14696 0))(
  ( (Node!14696 (left!40870 Conc!14696) (right!41200 Conc!14696) (csize!29622 Int) (cheight!14907 Int)) (Leaf!24477 (xs!18012 IArray!29453) (csize!29623 Int)) (Empty!14696) )
))
(declare-datatypes ((BalanceConc!28822 0))(
  ( (BalanceConc!28823 (c!830685 Conc!14696)) )
))
(declare-fun input!1236 () BalanceConc!28822)

(declare-fun e!3054139 () Bool)

(declare-fun inv!72419 (BalanceConc!28822) Bool)

(assert (=> start!511352 (and (inv!72419 input!1236) e!3054139)))

(declare-fun b!4885953 () Bool)

(declare-fun tp!1374998 () Bool)

(declare-fun e!3054140 () Bool)

(declare-datatypes ((List!56390 0))(
  ( (Nil!56266) (Cons!56266 (h!62714 (_ BitVec 16)) (t!365036 List!56390)) )
))
(declare-datatypes ((TokenValue!8438 0))(
  ( (FloatLiteralValue!16876 (text!59511 List!56390)) (TokenValueExt!8437 (__x!34170 Int)) (Broken!42190 (value!260774 List!56390)) (Object!8561) (End!8438) (Def!8438) (Underscore!8438) (Match!8438) (Else!8438) (Error!8438) (Case!8438) (If!8438) (Extends!8438) (Abstract!8438) (Class!8438) (Val!8438) (DelimiterValue!16876 (del!8498 List!56390)) (KeywordValue!8444 (value!260775 List!56390)) (CommentValue!16876 (value!260776 List!56390)) (WhitespaceValue!16876 (value!260777 List!56390)) (IndentationValue!8438 (value!260778 List!56390)) (String!63631) (Int32!8438) (Broken!42191 (value!260779 List!56390)) (Boolean!8439) (Unit!146255) (OperatorValue!8441 (op!8498 List!56390)) (IdentifierValue!16876 (value!260780 List!56390)) (IdentifierValue!16877 (value!260781 List!56390)) (WhitespaceValue!16877 (value!260782 List!56390)) (True!16876) (False!16876) (Broken!42192 (value!260783 List!56390)) (Broken!42193 (value!260784 List!56390)) (True!16877) (RightBrace!8438) (RightBracket!8438) (Colon!8438) (Null!8438) (Comma!8438) (LeftBracket!8438) (False!16877) (LeftBrace!8438) (ImaginaryLiteralValue!8438 (text!59512 List!56390)) (StringLiteralValue!25314 (value!260785 List!56390)) (EOFValue!8438 (value!260786 List!56390)) (IdentValue!8438 (value!260787 List!56390)) (DelimiterValue!16877 (value!260788 List!56390)) (DedentValue!8438 (value!260789 List!56390)) (NewLineValue!8438 (value!260790 List!56390)) (IntegerValue!25314 (value!260791 (_ BitVec 32)) (text!59513 List!56390)) (IntegerValue!25315 (value!260792 Int) (text!59514 List!56390)) (Times!8438) (Or!8438) (Equal!8438) (Minus!8438) (Broken!42194 (value!260793 List!56390)) (And!8438) (Div!8438) (LessEqual!8438) (Mod!8438) (Concat!21641) (Not!8438) (Plus!8438) (SpaceValue!8438 (value!260794 List!56390)) (IntegerValue!25316 (value!260795 Int) (text!59515 List!56390)) (StringLiteralValue!25315 (text!59516 List!56390)) (FloatLiteralValue!16877 (text!59517 List!56390)) (BytesLiteralValue!8438 (value!260796 List!56390)) (CommentValue!16877 (value!260797 List!56390)) (StringLiteralValue!25316 (value!260798 List!56390)) (ErrorTokenValue!8438 (msg!8499 List!56390)) )
))
(declare-datatypes ((Regex!13203 0))(
  ( (ElementMatch!13203 (c!830686 C!26604)) (Concat!21642 (regOne!26918 Regex!13203) (regTwo!26918 Regex!13203)) (EmptyExpr!13203) (Star!13203 (reg!13532 Regex!13203)) (EmptyLang!13203) (Union!13203 (regOne!26919 Regex!13203) (regTwo!26919 Regex!13203)) )
))
(declare-datatypes ((String!63632 0))(
  ( (String!63633 (value!260799 String)) )
))
(declare-datatypes ((TokenValueInjection!16184 0))(
  ( (TokenValueInjection!16185 (toValue!11015 Int) (toChars!10874 Int)) )
))
(declare-datatypes ((Rule!16056 0))(
  ( (Rule!16057 (regex!8128 Regex!13203) (tag!8992 String!63632) (isSeparator!8128 Bool) (transformation!8128 TokenValueInjection!16184)) )
))
(declare-datatypes ((List!56391 0))(
  ( (Nil!56267) (Cons!56267 (h!62715 Rule!16056) (t!365037 List!56391)) )
))
(declare-fun rulesArg!165 () List!56391)

(declare-fun inv!72415 (String!63632) Bool)

(declare-fun inv!72420 (TokenValueInjection!16184) Bool)

(assert (=> b!4885953 (= e!3054140 (and tp!1374998 (inv!72415 (tag!8992 (h!62715 rulesArg!165))) (inv!72420 (transformation!8128 (h!62715 rulesArg!165))) e!3054142))))

(declare-fun b!4885954 () Bool)

(declare-fun e!3054141 () Bool)

(assert (=> b!4885954 (= e!3054135 (not e!3054141))))

(declare-fun res!2086285 () Bool)

(assert (=> b!4885954 (=> res!2086285 e!3054141)))

(assert (=> b!4885954 (= res!2086285 (or (and ((_ is Cons!56267) rulesArg!165) ((_ is Nil!56267) (t!365037 rulesArg!165))) (not ((_ is Cons!56267) rulesArg!165))))))

(declare-fun lt!2002060 () List!56389)

(declare-fun isPrefix!4850 (List!56389 List!56389) Bool)

(assert (=> b!4885954 (isPrefix!4850 lt!2002060 lt!2002060)))

(declare-datatypes ((Unit!146256 0))(
  ( (Unit!146257) )
))
(declare-fun lt!2002056 () Unit!146256)

(declare-fun lemmaIsPrefixRefl!3247 (List!56389 List!56389) Unit!146256)

(assert (=> b!4885954 (= lt!2002056 (lemmaIsPrefixRefl!3247 lt!2002060 lt!2002060))))

(declare-fun list!17661 (BalanceConc!28822) List!56389)

(assert (=> b!4885954 (= lt!2002060 (list!17661 input!1236))))

(declare-fun b!4885955 () Bool)

(declare-fun e!3054136 () Bool)

(declare-fun lt!2002058 () Bool)

(declare-fun lt!2002055 () Bool)

(assert (=> b!4885955 (= e!3054136 (or (not (= lt!2002058 lt!2002055)) (not lt!2002058) lt!2002055))))

(declare-datatypes ((Token!14824 0))(
  ( (Token!14825 (value!260800 TokenValue!8438) (rule!11298 Rule!16056) (size!37060 Int) (originalCharacters!8443 List!56389)) )
))
(declare-datatypes ((tuple2!60228 0))(
  ( (tuple2!60229 (_1!33417 Token!14824) (_2!33417 List!56389)) )
))
(declare-datatypes ((Option!13939 0))(
  ( (None!13938) (Some!13938 (v!49888 tuple2!60228)) )
))
(declare-fun isDefined!10958 (Option!13939) Bool)

(declare-fun maxPrefixZipper!631 (LexerInterface!7720 List!56391 List!56389) Option!13939)

(assert (=> b!4885955 (= lt!2002055 (isDefined!10958 (maxPrefixZipper!631 thiss!14805 rulesArg!165 lt!2002060)))))

(declare-datatypes ((tuple2!60230 0))(
  ( (tuple2!60231 (_1!33418 Token!14824) (_2!33418 BalanceConc!28822)) )
))
(declare-datatypes ((Option!13940 0))(
  ( (None!13939) (Some!13939 (v!49889 tuple2!60230)) )
))
(declare-fun lt!2002057 () Option!13940)

(declare-fun isDefined!10959 (Option!13940) Bool)

(assert (=> b!4885955 (= lt!2002058 (isDefined!10959 lt!2002057))))

(declare-fun b!4885956 () Bool)

(declare-fun res!2086283 () Bool)

(assert (=> b!4885956 (=> (not res!2086283) (not e!3054135))))

(declare-fun rulesValidInductive!3107 (LexerInterface!7720 List!56391) Bool)

(assert (=> b!4885956 (= res!2086283 (rulesValidInductive!3107 thiss!14805 rulesArg!165))))

(declare-fun b!4885957 () Bool)

(declare-fun tp!1374995 () Bool)

(assert (=> b!4885957 (= e!3054137 (and e!3054140 tp!1374995))))

(declare-fun b!4885958 () Bool)

(assert (=> b!4885958 (= e!3054141 e!3054136)))

(declare-fun res!2086284 () Bool)

(assert (=> b!4885958 (=> res!2086284 e!3054136)))

(declare-fun lt!2002059 () Option!13940)

(assert (=> b!4885958 (= res!2086284 (or (and ((_ is None!13939) lt!2002057) ((_ is None!13939) lt!2002059)) ((_ is None!13939) lt!2002059) ((_ is None!13939) lt!2002057) (< (size!37060 (_1!33418 (v!49889 lt!2002057))) (size!37060 (_1!33418 (v!49889 lt!2002059))))))))

(declare-fun maxPrefixZipperSequence!1289 (LexerInterface!7720 List!56391 BalanceConc!28822) Option!13940)

(assert (=> b!4885958 (= lt!2002059 (maxPrefixZipperSequence!1289 thiss!14805 (t!365037 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!654 (LexerInterface!7720 Rule!16056 BalanceConc!28822) Option!13940)

(assert (=> b!4885958 (= lt!2002057 (maxPrefixOneRuleZipperSequence!654 thiss!14805 (h!62715 rulesArg!165) input!1236))))

(declare-fun b!4885959 () Bool)

(declare-fun res!2086281 () Bool)

(assert (=> b!4885959 (=> (not res!2086281) (not e!3054135))))

(declare-fun isEmpty!30155 (List!56391) Bool)

(assert (=> b!4885959 (= res!2086281 (not (isEmpty!30155 rulesArg!165)))))

(declare-fun b!4885960 () Bool)

(declare-fun tp!1374999 () Bool)

(declare-fun inv!72421 (Conc!14696) Bool)

(assert (=> b!4885960 (= e!3054139 (and (inv!72421 (c!830685 input!1236)) tp!1374999))))

(assert (= (and start!511352 res!2086282) b!4885956))

(assert (= (and b!4885956 res!2086283) b!4885959))

(assert (= (and b!4885959 res!2086281) b!4885954))

(assert (= (and b!4885954 (not res!2086285)) b!4885958))

(assert (= (and b!4885958 (not res!2086284)) b!4885955))

(assert (= b!4885953 b!4885952))

(assert (= b!4885957 b!4885953))

(assert (= (and start!511352 ((_ is Cons!56267) rulesArg!165)) b!4885957))

(assert (= start!511352 b!4885960))

(declare-fun m!5889776 () Bool)

(assert (=> start!511352 m!5889776))

(declare-fun m!5889778 () Bool)

(assert (=> b!4885959 m!5889778))

(declare-fun m!5889780 () Bool)

(assert (=> b!4885958 m!5889780))

(declare-fun m!5889782 () Bool)

(assert (=> b!4885958 m!5889782))

(declare-fun m!5889784 () Bool)

(assert (=> b!4885954 m!5889784))

(declare-fun m!5889786 () Bool)

(assert (=> b!4885954 m!5889786))

(declare-fun m!5889788 () Bool)

(assert (=> b!4885954 m!5889788))

(declare-fun m!5889790 () Bool)

(assert (=> b!4885960 m!5889790))

(declare-fun m!5889792 () Bool)

(assert (=> b!4885955 m!5889792))

(assert (=> b!4885955 m!5889792))

(declare-fun m!5889794 () Bool)

(assert (=> b!4885955 m!5889794))

(declare-fun m!5889796 () Bool)

(assert (=> b!4885955 m!5889796))

(declare-fun m!5889798 () Bool)

(assert (=> b!4885953 m!5889798))

(declare-fun m!5889800 () Bool)

(assert (=> b!4885953 m!5889800))

(declare-fun m!5889802 () Bool)

(assert (=> b!4885956 m!5889802))

(check-sat b_and!344069 (not b!4885954) (not b!4885955) (not b!4885957) (not b_next!132025) (not b!4885953) (not b!4885960) (not b!4885958) (not start!511352) (not b_next!132027) (not b!4885959) b_and!344067 (not b!4885956))
(check-sat b_and!344069 b_and!344067 (not b_next!132025) (not b_next!132027))
