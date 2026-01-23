; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522398 () Bool)

(assert start!522398)

(declare-fun b!4955925 () Bool)

(declare-fun b_free!132247 () Bool)

(declare-fun b_next!133037 () Bool)

(assert (=> b!4955925 (= b_free!132247 (not b_next!133037))))

(declare-fun tp!1389763 () Bool)

(declare-fun b_and!347099 () Bool)

(assert (=> b!4955925 (= tp!1389763 b_and!347099)))

(declare-fun b_free!132249 () Bool)

(declare-fun b_next!133039 () Bool)

(assert (=> b!4955925 (= b_free!132249 (not b_next!133039))))

(declare-fun tp!1389767 () Bool)

(declare-fun b_and!347101 () Bool)

(assert (=> b!4955925 (= tp!1389767 b_and!347101)))

(declare-fun b!4955919 () Bool)

(declare-fun e!3096834 () Bool)

(declare-fun e!3096831 () Bool)

(assert (=> b!4955919 (= e!3096834 (not e!3096831))))

(declare-fun res!2114465 () Bool)

(assert (=> b!4955919 (=> res!2114465 e!3096831)))

(declare-datatypes ((List!57310 0))(
  ( (Nil!57186) (Cons!57186 (h!63634 (_ BitVec 16)) (t!367876 List!57310)) )
))
(declare-datatypes ((TokenValue!8618 0))(
  ( (FloatLiteralValue!17236 (text!60771 List!57310)) (TokenValueExt!8617 (__x!34529 Int)) (Broken!43090 (value!266194 List!57310)) (Object!8741) (End!8618) (Def!8618) (Underscore!8618) (Match!8618) (Else!8618) (Error!8618) (Case!8618) (If!8618) (Extends!8618) (Abstract!8618) (Class!8618) (Val!8618) (DelimiterValue!17236 (del!8678 List!57310)) (KeywordValue!8624 (value!266195 List!57310)) (CommentValue!17236 (value!266196 List!57310)) (WhitespaceValue!17236 (value!266197 List!57310)) (IndentationValue!8618 (value!266198 List!57310)) (String!64963) (Int32!8618) (Broken!43091 (value!266199 List!57310)) (Boolean!8619) (Unit!148080) (OperatorValue!8621 (op!8678 List!57310)) (IdentifierValue!17236 (value!266200 List!57310)) (IdentifierValue!17237 (value!266201 List!57310)) (WhitespaceValue!17237 (value!266202 List!57310)) (True!17236) (False!17236) (Broken!43092 (value!266203 List!57310)) (Broken!43093 (value!266204 List!57310)) (True!17237) (RightBrace!8618) (RightBracket!8618) (Colon!8618) (Null!8618) (Comma!8618) (LeftBracket!8618) (False!17237) (LeftBrace!8618) (ImaginaryLiteralValue!8618 (text!60772 List!57310)) (StringLiteralValue!25854 (value!266205 List!57310)) (EOFValue!8618 (value!266206 List!57310)) (IdentValue!8618 (value!266207 List!57310)) (DelimiterValue!17237 (value!266208 List!57310)) (DedentValue!8618 (value!266209 List!57310)) (NewLineValue!8618 (value!266210 List!57310)) (IntegerValue!25854 (value!266211 (_ BitVec 32)) (text!60773 List!57310)) (IntegerValue!25855 (value!266212 Int) (text!60774 List!57310)) (Times!8618) (Or!8618) (Equal!8618) (Minus!8618) (Broken!43094 (value!266213 List!57310)) (And!8618) (Div!8618) (LessEqual!8618) (Mod!8618) (Concat!22159) (Not!8618) (Plus!8618) (SpaceValue!8618 (value!266214 List!57310)) (IntegerValue!25856 (value!266215 Int) (text!60775 List!57310)) (StringLiteralValue!25855 (text!60776 List!57310)) (FloatLiteralValue!17237 (text!60777 List!57310)) (BytesLiteralValue!8618 (value!266216 List!57310)) (CommentValue!17237 (value!266217 List!57310)) (StringLiteralValue!25856 (value!266218 List!57310)) (ErrorTokenValue!8618 (msg!8679 List!57310)) )
))
(declare-datatypes ((C!27332 0))(
  ( (C!27333 (val!23032 Int)) )
))
(declare-datatypes ((List!57311 0))(
  ( (Nil!57187) (Cons!57187 (h!63635 C!27332) (t!367877 List!57311)) )
))
(declare-datatypes ((IArray!30181 0))(
  ( (IArray!30182 (innerList!15148 List!57311)) )
))
(declare-datatypes ((Regex!13541 0))(
  ( (ElementMatch!13541 (c!846131 C!27332)) (Concat!22160 (regOne!27594 Regex!13541) (regTwo!27594 Regex!13541)) (EmptyExpr!13541) (Star!13541 (reg!13870 Regex!13541)) (EmptyLang!13541) (Union!13541 (regOne!27595 Regex!13541) (regTwo!27595 Regex!13541)) )
))
(declare-datatypes ((String!64964 0))(
  ( (String!64965 (value!266219 String)) )
))
(declare-datatypes ((Conc!15060 0))(
  ( (Node!15060 (left!41716 Conc!15060) (right!42046 Conc!15060) (csize!30350 Int) (cheight!15271 Int)) (Leaf!25039 (xs!18386 IArray!30181) (csize!30351 Int)) (Empty!15060) )
))
(declare-datatypes ((BalanceConc!29550 0))(
  ( (BalanceConc!29551 (c!846132 Conc!15060)) )
))
(declare-datatypes ((TokenValueInjection!16544 0))(
  ( (TokenValueInjection!16545 (toValue!11259 Int) (toChars!11118 Int)) )
))
(declare-datatypes ((Rule!16416 0))(
  ( (Rule!16417 (regex!8308 Regex!13541) (tag!9172 String!64964) (isSeparator!8308 Bool) (transformation!8308 TokenValueInjection!16544)) )
))
(declare-datatypes ((List!57312 0))(
  ( (Nil!57188) (Cons!57188 (h!63636 Rule!16416) (t!367878 List!57312)) )
))
(declare-fun rulesArg!259 () List!57312)

(get-info :version)

(assert (=> b!4955919 (= res!2114465 (or (and ((_ is Cons!57188) rulesArg!259) ((_ is Nil!57188) (t!367878 rulesArg!259))) (not ((_ is Cons!57188) rulesArg!259))))))

(declare-fun lt!2045405 () List!57311)

(declare-fun isPrefix!5161 (List!57311 List!57311) Bool)

(assert (=> b!4955919 (isPrefix!5161 lt!2045405 lt!2045405)))

(declare-datatypes ((Unit!148081 0))(
  ( (Unit!148082) )
))
(declare-fun lt!2045403 () Unit!148081)

(declare-fun lemmaIsPrefixRefl!3485 (List!57311 List!57311) Unit!148081)

(assert (=> b!4955919 (= lt!2045403 (lemmaIsPrefixRefl!3485 lt!2045405 lt!2045405))))

(declare-fun b!4955920 () Bool)

(declare-fun e!3096837 () Bool)

(assert (=> b!4955920 (= e!3096837 e!3096834)))

(declare-fun res!2114461 () Bool)

(assert (=> b!4955920 (=> (not res!2114461) (not e!3096834))))

(declare-fun totalInput!464 () BalanceConc!29550)

(declare-fun isSuffix!1107 (List!57311 List!57311) Bool)

(declare-fun list!18249 (BalanceConc!29550) List!57311)

(assert (=> b!4955920 (= res!2114461 (isSuffix!1107 lt!2045405 (list!18249 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29550)

(assert (=> b!4955920 (= lt!2045405 (list!18249 input!1342))))

(declare-fun tp!1389766 () Bool)

(declare-fun b!4955921 () Bool)

(declare-fun e!3096840 () Bool)

(declare-fun e!3096836 () Bool)

(declare-fun inv!74595 (String!64964) Bool)

(declare-fun inv!74599 (TokenValueInjection!16544) Bool)

(assert (=> b!4955921 (= e!3096836 (and tp!1389766 (inv!74595 (tag!9172 (h!63636 rulesArg!259))) (inv!74599 (transformation!8308 (h!63636 rulesArg!259))) e!3096840))))

(declare-fun b!4955922 () Bool)

(declare-fun res!2114463 () Bool)

(assert (=> b!4955922 (=> (not res!2114463) (not e!3096837))))

(declare-fun isEmpty!30748 (List!57312) Bool)

(assert (=> b!4955922 (= res!2114463 (not (isEmpty!30748 rulesArg!259)))))

(declare-fun b!4955923 () Bool)

(declare-fun e!3096842 () Bool)

(assert (=> b!4955923 (= e!3096842 true)))

(declare-fun lt!2045402 () Bool)

(declare-fun e!3096841 () Bool)

(assert (=> b!4955923 (= lt!2045402 e!3096841)))

(declare-fun res!2114462 () Bool)

(assert (=> b!4955923 (=> res!2114462 e!3096841)))

(declare-fun lt!2045400 () Bool)

(assert (=> b!4955923 (= res!2114462 (not lt!2045400))))

(declare-fun b!4955924 () Bool)

(declare-fun e!3096838 () Bool)

(declare-fun tp!1389768 () Bool)

(assert (=> b!4955924 (= e!3096838 (and e!3096836 tp!1389768))))

(declare-fun res!2114466 () Bool)

(assert (=> start!522398 (=> (not res!2114466) (not e!3096837))))

(declare-datatypes ((LexerInterface!7900 0))(
  ( (LexerInterfaceExt!7897 (__x!34530 Int)) (Lexer!7898) )
))
(declare-fun thiss!15247 () LexerInterface!7900)

(assert (=> start!522398 (= res!2114466 ((_ is Lexer!7898) thiss!15247))))

(assert (=> start!522398 e!3096837))

(assert (=> start!522398 true))

(assert (=> start!522398 e!3096838))

(declare-fun e!3096835 () Bool)

(declare-fun inv!74600 (BalanceConc!29550) Bool)

(assert (=> start!522398 (and (inv!74600 input!1342) e!3096835)))

(declare-fun e!3096839 () Bool)

(assert (=> start!522398 (and (inv!74600 totalInput!464) e!3096839)))

(assert (=> b!4955925 (= e!3096840 (and tp!1389763 tp!1389767))))

(declare-fun b!4955926 () Bool)

(declare-fun tp!1389765 () Bool)

(declare-fun inv!74601 (Conc!15060) Bool)

(assert (=> b!4955926 (= e!3096835 (and (inv!74601 (c!846132 input!1342)) tp!1389765))))

(declare-fun b!4955927 () Bool)

(declare-fun res!2114469 () Bool)

(assert (=> b!4955927 (=> (not res!2114469) (not e!3096837))))

(declare-fun rulesValidInductive!3211 (LexerInterface!7900 List!57312) Bool)

(assert (=> b!4955927 (= res!2114469 (rulesValidInductive!3211 thiss!15247 rulesArg!259))))

(declare-fun b!4955928 () Bool)

(declare-fun tp!1389764 () Bool)

(assert (=> b!4955928 (= e!3096839 (and (inv!74601 (c!846132 totalInput!464)) tp!1389764))))

(declare-fun b!4955929 () Bool)

(declare-fun e!3096833 () Bool)

(declare-datatypes ((Token!15116 0))(
  ( (Token!15117 (value!266220 TokenValue!8618) (rule!11524 Rule!16416) (size!37930 Int) (originalCharacters!8589 List!57311)) )
))
(declare-datatypes ((tuple2!61748 0))(
  ( (tuple2!61749 (_1!34177 Token!15116) (_2!34177 BalanceConc!29550)) )
))
(declare-fun lt!2045404 () tuple2!61748)

(declare-datatypes ((tuple2!61750 0))(
  ( (tuple2!61751 (_1!34178 Token!15116) (_2!34178 List!57311)) )
))
(declare-fun lt!2045406 () tuple2!61750)

(assert (=> b!4955929 (= e!3096833 (= (list!18249 (_2!34177 lt!2045404)) (_2!34178 lt!2045406)))))

(declare-fun b!4955930 () Bool)

(declare-fun e!3096832 () Bool)

(assert (=> b!4955930 (= e!3096831 e!3096832)))

(declare-fun res!2114464 () Bool)

(assert (=> b!4955930 (=> res!2114464 e!3096832)))

(declare-datatypes ((Option!14285 0))(
  ( (None!14284) (Some!14284 (v!50269 tuple2!61748)) )
))
(declare-fun lt!2045398 () Option!14285)

(declare-fun lt!2045399 () Option!14285)

(assert (=> b!4955930 (= res!2114464 (or (not ((_ is None!14284) lt!2045398)) (not ((_ is None!14284) lt!2045399))))))

(declare-fun maxPrefixZipperSequenceV2!639 (LexerInterface!7900 List!57312 BalanceConc!29550 BalanceConc!29550) Option!14285)

(assert (=> b!4955930 (= lt!2045399 (maxPrefixZipperSequenceV2!639 thiss!15247 (t!367878 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!292 (LexerInterface!7900 Rule!16416 BalanceConc!29550 BalanceConc!29550) Option!14285)

(assert (=> b!4955930 (= lt!2045398 (maxPrefixOneRuleZipperSequenceV2!292 thiss!15247 (h!63636 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4955931 () Bool)

(assert (=> b!4955931 (= e!3096832 e!3096842)))

(declare-fun res!2114468 () Bool)

(assert (=> b!4955931 (=> res!2114468 e!3096842)))

(declare-datatypes ((Option!14286 0))(
  ( (None!14285) (Some!14285 (v!50270 tuple2!61750)) )
))
(declare-fun lt!2045401 () Option!14286)

(declare-fun isDefined!11223 (Option!14286) Bool)

(assert (=> b!4955931 (= res!2114468 (not (= lt!2045400 (isDefined!11223 lt!2045401))))))

(assert (=> b!4955931 (= lt!2045400 false)))

(declare-fun maxPrefixZipper!705 (LexerInterface!7900 List!57312 List!57311) Option!14286)

(assert (=> b!4955931 (= lt!2045401 (maxPrefixZipper!705 thiss!15247 rulesArg!259 lt!2045405))))

(declare-fun b!4955932 () Bool)

(assert (=> b!4955932 (= e!3096841 e!3096833)))

(declare-fun res!2114467 () Bool)

(assert (=> b!4955932 (=> (not res!2114467) (not e!3096833))))

(assert (=> b!4955932 (= res!2114467 (= (_1!34177 lt!2045404) (_1!34178 lt!2045406)))))

(declare-fun get!19771 (Option!14286) tuple2!61750)

(assert (=> b!4955932 (= lt!2045406 (get!19771 lt!2045401))))

(declare-fun get!19772 (Option!14285) tuple2!61748)

(assert (=> b!4955932 (= lt!2045404 (get!19772 None!14284))))

(assert (= (and start!522398 res!2114466) b!4955927))

(assert (= (and b!4955927 res!2114469) b!4955922))

(assert (= (and b!4955922 res!2114463) b!4955920))

(assert (= (and b!4955920 res!2114461) b!4955919))

(assert (= (and b!4955919 (not res!2114465)) b!4955930))

(assert (= (and b!4955930 (not res!2114464)) b!4955931))

(assert (= (and b!4955931 (not res!2114468)) b!4955923))

(assert (= (and b!4955923 (not res!2114462)) b!4955932))

(assert (= (and b!4955932 res!2114467) b!4955929))

(assert (= b!4955921 b!4955925))

(assert (= b!4955924 b!4955921))

(assert (= (and start!522398 ((_ is Cons!57188) rulesArg!259)) b!4955924))

(assert (= start!522398 b!4955926))

(assert (= start!522398 b!4955928))

(declare-fun m!5980524 () Bool)

(assert (=> b!4955929 m!5980524))

(declare-fun m!5980526 () Bool)

(assert (=> b!4955928 m!5980526))

(declare-fun m!5980528 () Bool)

(assert (=> b!4955931 m!5980528))

(declare-fun m!5980530 () Bool)

(assert (=> b!4955931 m!5980530))

(declare-fun m!5980532 () Bool)

(assert (=> start!522398 m!5980532))

(declare-fun m!5980534 () Bool)

(assert (=> start!522398 m!5980534))

(declare-fun m!5980536 () Bool)

(assert (=> b!4955927 m!5980536))

(declare-fun m!5980538 () Bool)

(assert (=> b!4955926 m!5980538))

(declare-fun m!5980540 () Bool)

(assert (=> b!4955930 m!5980540))

(declare-fun m!5980542 () Bool)

(assert (=> b!4955930 m!5980542))

(declare-fun m!5980544 () Bool)

(assert (=> b!4955921 m!5980544))

(declare-fun m!5980546 () Bool)

(assert (=> b!4955921 m!5980546))

(declare-fun m!5980548 () Bool)

(assert (=> b!4955932 m!5980548))

(declare-fun m!5980550 () Bool)

(assert (=> b!4955932 m!5980550))

(declare-fun m!5980552 () Bool)

(assert (=> b!4955920 m!5980552))

(assert (=> b!4955920 m!5980552))

(declare-fun m!5980554 () Bool)

(assert (=> b!4955920 m!5980554))

(declare-fun m!5980556 () Bool)

(assert (=> b!4955920 m!5980556))

(declare-fun m!5980558 () Bool)

(assert (=> b!4955919 m!5980558))

(declare-fun m!5980560 () Bool)

(assert (=> b!4955919 m!5980560))

(declare-fun m!5980562 () Bool)

(assert (=> b!4955922 m!5980562))

(check-sat (not b!4955919) (not b!4955931) (not start!522398) (not b!4955920) (not b!4955921) (not b!4955928) (not b!4955927) (not b!4955932) (not b!4955930) b_and!347099 (not b!4955929) (not b_next!133037) b_and!347101 (not b_next!133039) (not b!4955926) (not b!4955924) (not b!4955922))
(check-sat b_and!347099 b_and!347101 (not b_next!133037) (not b_next!133039))
