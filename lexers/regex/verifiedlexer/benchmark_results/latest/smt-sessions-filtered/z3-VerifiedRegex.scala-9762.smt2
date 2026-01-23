; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511008 () Bool)

(assert start!511008)

(declare-fun b!4883452 () Bool)

(declare-fun b_free!131059 () Bool)

(declare-fun b_next!131849 () Bool)

(assert (=> b!4883452 (= b_free!131059 (not b_next!131849))))

(declare-fun tp!1374168 () Bool)

(declare-fun b_and!343891 () Bool)

(assert (=> b!4883452 (= tp!1374168 b_and!343891)))

(declare-fun b_free!131061 () Bool)

(declare-fun b_next!131851 () Bool)

(assert (=> b!4883452 (= b_free!131061 (not b_next!131851))))

(declare-fun tp!1374171 () Bool)

(declare-fun b_and!343893 () Bool)

(assert (=> b!4883452 (= tp!1374171 b_and!343893)))

(declare-fun e!3052248 () Bool)

(declare-fun tp!1374169 () Bool)

(declare-fun e!3052249 () Bool)

(declare-fun b!4883449 () Bool)

(declare-datatypes ((String!63451 0))(
  ( (String!63452 (value!259748 String)) )
))
(declare-datatypes ((C!26532 0))(
  ( (C!26533 (val!22600 Int)) )
))
(declare-datatypes ((List!56281 0))(
  ( (Nil!56157) (Cons!56157 (h!62605 C!26532) (t!364927 List!56281)) )
))
(declare-datatypes ((IArray!29381 0))(
  ( (IArray!29382 (innerList!14748 List!56281)) )
))
(declare-datatypes ((Conc!14660 0))(
  ( (Node!14660 (left!40800 Conc!14660) (right!41130 Conc!14660) (csize!29550 Int) (cheight!14871 Int)) (Leaf!24423 (xs!17976 IArray!29381) (csize!29551 Int)) (Empty!14660) )
))
(declare-datatypes ((BalanceConc!28750 0))(
  ( (BalanceConc!28751 (c!830457 Conc!14660)) )
))
(declare-datatypes ((List!56282 0))(
  ( (Nil!56158) (Cons!56158 (h!62606 (_ BitVec 16)) (t!364928 List!56282)) )
))
(declare-datatypes ((TokenValue!8402 0))(
  ( (FloatLiteralValue!16804 (text!59259 List!56282)) (TokenValueExt!8401 (__x!34097 Int)) (Broken!42010 (value!259749 List!56282)) (Object!8525) (End!8402) (Def!8402) (Underscore!8402) (Match!8402) (Else!8402) (Error!8402) (Case!8402) (If!8402) (Extends!8402) (Abstract!8402) (Class!8402) (Val!8402) (DelimiterValue!16804 (del!8462 List!56282)) (KeywordValue!8408 (value!259750 List!56282)) (CommentValue!16804 (value!259751 List!56282)) (WhitespaceValue!16804 (value!259752 List!56282)) (IndentationValue!8402 (value!259753 List!56282)) (String!63453) (Int32!8402) (Broken!42011 (value!259754 List!56282)) (Boolean!8403) (Unit!146147) (OperatorValue!8405 (op!8462 List!56282)) (IdentifierValue!16804 (value!259755 List!56282)) (IdentifierValue!16805 (value!259756 List!56282)) (WhitespaceValue!16805 (value!259757 List!56282)) (True!16804) (False!16804) (Broken!42012 (value!259758 List!56282)) (Broken!42013 (value!259759 List!56282)) (True!16805) (RightBrace!8402) (RightBracket!8402) (Colon!8402) (Null!8402) (Comma!8402) (LeftBracket!8402) (False!16805) (LeftBrace!8402) (ImaginaryLiteralValue!8402 (text!59260 List!56282)) (StringLiteralValue!25206 (value!259760 List!56282)) (EOFValue!8402 (value!259761 List!56282)) (IdentValue!8402 (value!259762 List!56282)) (DelimiterValue!16805 (value!259763 List!56282)) (DedentValue!8402 (value!259764 List!56282)) (NewLineValue!8402 (value!259765 List!56282)) (IntegerValue!25206 (value!259766 (_ BitVec 32)) (text!59261 List!56282)) (IntegerValue!25207 (value!259767 Int) (text!59262 List!56282)) (Times!8402) (Or!8402) (Equal!8402) (Minus!8402) (Broken!42014 (value!259768 List!56282)) (And!8402) (Div!8402) (LessEqual!8402) (Mod!8402) (Concat!21569) (Not!8402) (Plus!8402) (SpaceValue!8402 (value!259769 List!56282)) (IntegerValue!25208 (value!259770 Int) (text!59263 List!56282)) (StringLiteralValue!25207 (text!59264 List!56282)) (FloatLiteralValue!16805 (text!59265 List!56282)) (BytesLiteralValue!8402 (value!259771 List!56282)) (CommentValue!16805 (value!259772 List!56282)) (StringLiteralValue!25208 (value!259773 List!56282)) (ErrorTokenValue!8402 (msg!8463 List!56282)) )
))
(declare-datatypes ((Regex!13167 0))(
  ( (ElementMatch!13167 (c!830458 C!26532)) (Concat!21570 (regOne!26846 Regex!13167) (regTwo!26846 Regex!13167)) (EmptyExpr!13167) (Star!13167 (reg!13496 Regex!13167)) (EmptyLang!13167) (Union!13167 (regOne!26847 Regex!13167) (regTwo!26847 Regex!13167)) )
))
(declare-datatypes ((TokenValueInjection!16112 0))(
  ( (TokenValueInjection!16113 (toValue!10979 Int) (toChars!10838 Int)) )
))
(declare-datatypes ((Rule!15984 0))(
  ( (Rule!15985 (regex!8092 Regex!13167) (tag!8956 String!63451) (isSeparator!8092 Bool) (transformation!8092 TokenValueInjection!16112)) )
))
(declare-datatypes ((List!56283 0))(
  ( (Nil!56159) (Cons!56159 (h!62607 Rule!15984) (t!364929 List!56283)) )
))
(declare-fun rulesArg!165 () List!56283)

(declare-fun inv!72234 (String!63451) Bool)

(declare-fun inv!72238 (TokenValueInjection!16112) Bool)

(assert (=> b!4883449 (= e!3052249 (and tp!1374169 (inv!72234 (tag!8956 (h!62607 rulesArg!165))) (inv!72238 (transformation!8092 (h!62607 rulesArg!165))) e!3052248))))

(declare-fun b!4883450 () Bool)

(declare-fun e!3052252 () Bool)

(declare-fun e!3052245 () Bool)

(assert (=> b!4883450 (= e!3052252 e!3052245)))

(declare-fun res!2084778 () Bool)

(assert (=> b!4883450 (=> res!2084778 e!3052245)))

(declare-datatypes ((Token!14752 0))(
  ( (Token!14753 (value!259774 TokenValue!8402) (rule!11254 Rule!15984) (size!37011 Int) (originalCharacters!8407 List!56281)) )
))
(declare-datatypes ((tuple2!60064 0))(
  ( (tuple2!60065 (_1!33335 Token!14752) (_2!33335 BalanceConc!28750)) )
))
(declare-datatypes ((Option!13867 0))(
  ( (None!13866) (Some!13866 (v!49816 tuple2!60064)) )
))
(declare-fun lt!2000479 () Option!13867)

(declare-fun lt!2000474 () Option!13867)

(get-info :version)

(assert (=> b!4883450 (= res!2084778 (or (not ((_ is None!13866) lt!2000479)) (not ((_ is None!13866) lt!2000474))))))

(declare-datatypes ((LexerInterface!7684 0))(
  ( (LexerInterfaceExt!7681 (__x!34098 Int)) (Lexer!7682) )
))
(declare-fun thiss!14805 () LexerInterface!7684)

(declare-fun input!1236 () BalanceConc!28750)

(declare-fun maxPrefixZipperSequence!1253 (LexerInterface!7684 List!56283 BalanceConc!28750) Option!13867)

(assert (=> b!4883450 (= lt!2000474 (maxPrefixZipperSequence!1253 thiss!14805 (t!364929 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!618 (LexerInterface!7684 Rule!15984 BalanceConc!28750) Option!13867)

(assert (=> b!4883450 (= lt!2000479 (maxPrefixOneRuleZipperSequence!618 thiss!14805 (h!62607 rulesArg!165) input!1236))))

(declare-fun b!4883451 () Bool)

(declare-fun e!3052250 () Bool)

(declare-fun e!3052251 () Bool)

(assert (=> b!4883451 (= e!3052250 e!3052251)))

(declare-fun res!2084779 () Bool)

(assert (=> b!4883451 (=> res!2084779 e!3052251)))

(declare-fun lt!2000477 () tuple2!60064)

(declare-datatypes ((tuple2!60066 0))(
  ( (tuple2!60067 (_1!33336 Token!14752) (_2!33336 List!56281)) )
))
(declare-fun lt!2000478 () tuple2!60066)

(assert (=> b!4883451 (= res!2084779 (not (= (_1!33335 lt!2000477) (_1!33336 lt!2000478))))))

(declare-datatypes ((Option!13868 0))(
  ( (None!13867) (Some!13867 (v!49817 tuple2!60066)) )
))
(declare-fun lt!2000481 () Option!13868)

(declare-fun get!19317 (Option!13868) tuple2!60066)

(assert (=> b!4883451 (= lt!2000478 (get!19317 lt!2000481))))

(declare-fun get!19318 (Option!13867) tuple2!60064)

(assert (=> b!4883451 (= lt!2000477 (get!19318 None!13866))))

(declare-fun res!2084775 () Bool)

(declare-fun e!3052241 () Bool)

(assert (=> start!511008 (=> (not res!2084775) (not e!3052241))))

(assert (=> start!511008 (= res!2084775 ((_ is Lexer!7682) thiss!14805))))

(assert (=> start!511008 e!3052241))

(assert (=> start!511008 true))

(declare-fun e!3052242 () Bool)

(assert (=> start!511008 e!3052242))

(declare-fun e!3052244 () Bool)

(declare-fun inv!72239 (BalanceConc!28750) Bool)

(assert (=> start!511008 (and (inv!72239 input!1236) e!3052244)))

(assert (=> b!4883452 (= e!3052248 (and tp!1374168 tp!1374171))))

(declare-fun b!4883453 () Bool)

(declare-fun e!3052246 () Bool)

(declare-fun lt!2000475 () List!56281)

(declare-fun isDefined!10903 (Option!13868) Bool)

(declare-fun maxPrefix!4565 (LexerInterface!7684 List!56283 List!56281) Option!13868)

(assert (=> b!4883453 (= e!3052246 (isDefined!10903 (maxPrefix!4565 thiss!14805 rulesArg!165 lt!2000475)))))

(declare-fun b!4883454 () Bool)

(declare-fun list!17617 (BalanceConc!28750) List!56281)

(assert (=> b!4883454 (= e!3052251 (not (= (list!17617 (_2!33335 lt!2000477)) (_2!33336 lt!2000478))))))

(declare-fun b!4883455 () Bool)

(declare-fun tp!1374167 () Bool)

(assert (=> b!4883455 (= e!3052242 (and e!3052249 tp!1374167))))

(declare-fun b!4883456 () Bool)

(declare-fun res!2084770 () Bool)

(assert (=> b!4883456 (=> (not res!2084770) (not e!3052241))))

(declare-fun rulesValidInductive!3071 (LexerInterface!7684 List!56283) Bool)

(assert (=> b!4883456 (= res!2084770 (rulesValidInductive!3071 thiss!14805 rulesArg!165))))

(declare-fun b!4883457 () Bool)

(declare-fun res!2084773 () Bool)

(assert (=> b!4883457 (=> (not res!2084773) (not e!3052241))))

(declare-fun isEmpty!30093 (List!56283) Bool)

(assert (=> b!4883457 (= res!2084773 (not (isEmpty!30093 rulesArg!165)))))

(declare-fun b!4883458 () Bool)

(declare-fun e!3052247 () Bool)

(assert (=> b!4883458 (= e!3052245 e!3052247)))

(declare-fun res!2084774 () Bool)

(assert (=> b!4883458 (=> res!2084774 e!3052247)))

(declare-fun lt!2000482 () Bool)

(assert (=> b!4883458 (= res!2084774 (not (= lt!2000482 (isDefined!10903 lt!2000481))))))

(assert (=> b!4883458 (= lt!2000482 false)))

(declare-fun maxPrefixZipper!595 (LexerInterface!7684 List!56283 List!56281) Option!13868)

(assert (=> b!4883458 (= lt!2000481 (maxPrefixZipper!595 thiss!14805 rulesArg!165 lt!2000475))))

(declare-fun b!4883459 () Bool)

(declare-fun tp!1374170 () Bool)

(declare-fun inv!72240 (Conc!14660) Bool)

(assert (=> b!4883459 (= e!3052244 (and (inv!72240 (c!830457 input!1236)) tp!1374170))))

(declare-fun b!4883460 () Bool)

(declare-fun res!2084777 () Bool)

(assert (=> b!4883460 (=> res!2084777 e!3052246)))

(declare-fun lt!2000480 () Bool)

(assert (=> b!4883460 (= res!2084777 lt!2000480)))

(declare-fun b!4883461 () Bool)

(assert (=> b!4883461 (= e!3052247 e!3052246)))

(declare-fun res!2084776 () Bool)

(assert (=> b!4883461 (=> res!2084776 e!3052246)))

(assert (=> b!4883461 (= res!2084776 e!3052250)))

(declare-fun res!2084771 () Bool)

(assert (=> b!4883461 (=> (not res!2084771) (not e!3052250))))

(assert (=> b!4883461 (= res!2084771 (not lt!2000480))))

(assert (=> b!4883461 (= lt!2000480 (not lt!2000482))))

(declare-fun b!4883462 () Bool)

(assert (=> b!4883462 (= e!3052241 (not e!3052252))))

(declare-fun res!2084772 () Bool)

(assert (=> b!4883462 (=> res!2084772 e!3052252)))

(assert (=> b!4883462 (= res!2084772 (or (and ((_ is Cons!56159) rulesArg!165) ((_ is Nil!56159) (t!364929 rulesArg!165))) (not ((_ is Cons!56159) rulesArg!165))))))

(declare-fun isPrefix!4814 (List!56281 List!56281) Bool)

(assert (=> b!4883462 (isPrefix!4814 lt!2000475 lt!2000475)))

(declare-datatypes ((Unit!146148 0))(
  ( (Unit!146149) )
))
(declare-fun lt!2000476 () Unit!146148)

(declare-fun lemmaIsPrefixRefl!3211 (List!56281 List!56281) Unit!146148)

(assert (=> b!4883462 (= lt!2000476 (lemmaIsPrefixRefl!3211 lt!2000475 lt!2000475))))

(assert (=> b!4883462 (= lt!2000475 (list!17617 input!1236))))

(assert (= (and start!511008 res!2084775) b!4883456))

(assert (= (and b!4883456 res!2084770) b!4883457))

(assert (= (and b!4883457 res!2084773) b!4883462))

(assert (= (and b!4883462 (not res!2084772)) b!4883450))

(assert (= (and b!4883450 (not res!2084778)) b!4883458))

(assert (= (and b!4883458 (not res!2084774)) b!4883461))

(assert (= (and b!4883461 res!2084771) b!4883451))

(assert (= (and b!4883451 (not res!2084779)) b!4883454))

(assert (= (and b!4883461 (not res!2084776)) b!4883460))

(assert (= (and b!4883460 (not res!2084777)) b!4883453))

(assert (= b!4883449 b!4883452))

(assert (= b!4883455 b!4883449))

(assert (= (and start!511008 ((_ is Cons!56159) rulesArg!165)) b!4883455))

(assert (= start!511008 b!4883459))

(declare-fun m!5887440 () Bool)

(assert (=> b!4883458 m!5887440))

(declare-fun m!5887442 () Bool)

(assert (=> b!4883458 m!5887442))

(declare-fun m!5887444 () Bool)

(assert (=> b!4883454 m!5887444))

(declare-fun m!5887446 () Bool)

(assert (=> b!4883456 m!5887446))

(declare-fun m!5887448 () Bool)

(assert (=> b!4883457 m!5887448))

(declare-fun m!5887450 () Bool)

(assert (=> b!4883450 m!5887450))

(declare-fun m!5887452 () Bool)

(assert (=> b!4883450 m!5887452))

(declare-fun m!5887454 () Bool)

(assert (=> b!4883451 m!5887454))

(declare-fun m!5887456 () Bool)

(assert (=> b!4883451 m!5887456))

(declare-fun m!5887458 () Bool)

(assert (=> b!4883449 m!5887458))

(declare-fun m!5887460 () Bool)

(assert (=> b!4883449 m!5887460))

(declare-fun m!5887462 () Bool)

(assert (=> b!4883453 m!5887462))

(assert (=> b!4883453 m!5887462))

(declare-fun m!5887464 () Bool)

(assert (=> b!4883453 m!5887464))

(declare-fun m!5887466 () Bool)

(assert (=> b!4883459 m!5887466))

(declare-fun m!5887468 () Bool)

(assert (=> start!511008 m!5887468))

(declare-fun m!5887470 () Bool)

(assert (=> b!4883462 m!5887470))

(declare-fun m!5887472 () Bool)

(assert (=> b!4883462 m!5887472))

(declare-fun m!5887474 () Bool)

(assert (=> b!4883462 m!5887474))

(check-sat (not b!4883455) (not b!4883449) (not b_next!131849) (not start!511008) b_and!343893 (not b!4883462) (not b!4883454) (not b!4883453) (not b!4883451) (not b!4883457) (not b!4883459) (not b!4883450) (not b!4883458) (not b!4883456) (not b_next!131851) b_and!343891)
(check-sat b_and!343893 b_and!343891 (not b_next!131849) (not b_next!131851))
