; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59976 () Bool)

(assert start!59976)

(declare-fun b!622348 () Bool)

(declare-fun b_free!18197 () Bool)

(declare-fun b_next!18213 () Bool)

(assert (=> b!622348 (= b_free!18197 (not b_next!18213))))

(declare-fun tp!193301 () Bool)

(declare-fun b_and!61855 () Bool)

(assert (=> b!622348 (= tp!193301 b_and!61855)))

(declare-fun b_free!18199 () Bool)

(declare-fun b_next!18215 () Bool)

(assert (=> b!622348 (= b_free!18199 (not b_next!18215))))

(declare-fun tp!193299 () Bool)

(declare-fun b_and!61857 () Bool)

(assert (=> b!622348 (= tp!193299 b_and!61857)))

(declare-fun e!377830 () Bool)

(assert (=> b!622348 (= e!377830 (and tp!193301 tp!193299))))

(declare-fun b!622349 () Bool)

(declare-fun e!377832 () Bool)

(declare-fun from!852 () Int)

(assert (=> b!622349 (= e!377832 (not (<= 0 from!852)))))

(declare-datatypes ((List!6394 0))(
  ( (Nil!6384) (Cons!6384 (h!11785 (_ BitVec 16)) (t!81901 List!6394)) )
))
(declare-datatypes ((TokenValue!1323 0))(
  ( (FloatLiteralValue!2646 (text!9706 List!6394)) (TokenValueExt!1322 (__x!4546 Int)) (Broken!6615 (value!41859 List!6394)) (Object!1332) (End!1323) (Def!1323) (Underscore!1323) (Match!1323) (Else!1323) (Error!1323) (Case!1323) (If!1323) (Extends!1323) (Abstract!1323) (Class!1323) (Val!1323) (DelimiterValue!2646 (del!1383 List!6394)) (KeywordValue!1329 (value!41860 List!6394)) (CommentValue!2646 (value!41861 List!6394)) (WhitespaceValue!2646 (value!41862 List!6394)) (IndentationValue!1323 (value!41863 List!6394)) (String!8362) (Int32!1323) (Broken!6616 (value!41864 List!6394)) (Boolean!1324) (Unit!11477) (OperatorValue!1326 (op!1383 List!6394)) (IdentifierValue!2646 (value!41865 List!6394)) (IdentifierValue!2647 (value!41866 List!6394)) (WhitespaceValue!2647 (value!41867 List!6394)) (True!2646) (False!2646) (Broken!6617 (value!41868 List!6394)) (Broken!6618 (value!41869 List!6394)) (True!2647) (RightBrace!1323) (RightBracket!1323) (Colon!1323) (Null!1323) (Comma!1323) (LeftBracket!1323) (False!2647) (LeftBrace!1323) (ImaginaryLiteralValue!1323 (text!9707 List!6394)) (StringLiteralValue!3969 (value!41870 List!6394)) (EOFValue!1323 (value!41871 List!6394)) (IdentValue!1323 (value!41872 List!6394)) (DelimiterValue!2647 (value!41873 List!6394)) (DedentValue!1323 (value!41874 List!6394)) (NewLineValue!1323 (value!41875 List!6394)) (IntegerValue!3969 (value!41876 (_ BitVec 32)) (text!9708 List!6394)) (IntegerValue!3970 (value!41877 Int) (text!9709 List!6394)) (Times!1323) (Or!1323) (Equal!1323) (Minus!1323) (Broken!6619 (value!41878 List!6394)) (And!1323) (Div!1323) (LessEqual!1323) (Mod!1323) (Concat!2956) (Not!1323) (Plus!1323) (SpaceValue!1323 (value!41879 List!6394)) (IntegerValue!3971 (value!41880 Int) (text!9710 List!6394)) (StringLiteralValue!3970 (text!9711 List!6394)) (FloatLiteralValue!2647 (text!9712 List!6394)) (BytesLiteralValue!1323 (value!41881 List!6394)) (CommentValue!2647 (value!41882 List!6394)) (StringLiteralValue!3971 (value!41883 List!6394)) (ErrorTokenValue!1323 (msg!1384 List!6394)) )
))
(declare-datatypes ((C!4192 0))(
  ( (C!4193 (val!2322 Int)) )
))
(declare-datatypes ((List!6395 0))(
  ( (Nil!6385) (Cons!6385 (h!11786 C!4192) (t!81902 List!6395)) )
))
(declare-datatypes ((IArray!4079 0))(
  ( (IArray!4080 (innerList!2097 List!6395)) )
))
(declare-datatypes ((Conc!2039 0))(
  ( (Node!2039 (left!5062 Conc!2039) (right!5392 Conc!2039) (csize!4308 Int) (cheight!2250 Int)) (Leaf!3197 (xs!4676 IArray!4079) (csize!4309 Int)) (Empty!2039) )
))
(declare-datatypes ((BalanceConc!4086 0))(
  ( (BalanceConc!4087 (c!114411 Conc!2039)) )
))
(declare-datatypes ((TokenValueInjection!2414 0))(
  ( (TokenValueInjection!2415 (toValue!2224 Int) (toChars!2083 Int)) )
))
(declare-datatypes ((Regex!1633 0))(
  ( (ElementMatch!1633 (c!114412 C!4192)) (Concat!2957 (regOne!3778 Regex!1633) (regTwo!3778 Regex!1633)) (EmptyExpr!1633) (Star!1633 (reg!1962 Regex!1633)) (EmptyLang!1633) (Union!1633 (regOne!3779 Regex!1633) (regTwo!3779 Regex!1633)) )
))
(declare-datatypes ((String!8363 0))(
  ( (String!8364 (value!41884 String)) )
))
(declare-datatypes ((Rule!2398 0))(
  ( (Rule!2399 (regex!1299 Regex!1633) (tag!1561 String!8363) (isSeparator!1299 Bool) (transformation!1299 TokenValueInjection!2414)) )
))
(declare-datatypes ((Token!2322 0))(
  ( (Token!2323 (value!41885 TokenValue!1323) (rule!2095 Rule!2398) (size!4980 Int) (originalCharacters!1332 List!6395)) )
))
(declare-datatypes ((List!6396 0))(
  ( (Nil!6386) (Cons!6386 (h!11787 Token!2322) (t!81903 List!6396)) )
))
(declare-fun lt!266211 () List!6396)

(declare-fun lt!266209 () List!6396)

(declare-fun tail!848 (List!6396) List!6396)

(declare-fun drop!330 (List!6396 Int) List!6396)

(assert (=> b!622349 (= (tail!848 lt!266211) (drop!330 lt!266209 (+ 1 from!852)))))

(declare-datatypes ((Unit!11478 0))(
  ( (Unit!11479) )
))
(declare-fun lt!266210 () Unit!11478)

(declare-fun lemmaDropTail!288 (List!6396 Int) Unit!11478)

(assert (=> b!622349 (= lt!266210 (lemmaDropTail!288 lt!266209 from!852))))

(declare-fun head!1319 (List!6396) Token!2322)

(declare-fun apply!1515 (List!6396 Int) Token!2322)

(assert (=> b!622349 (= (head!1319 lt!266211) (apply!1515 lt!266209 from!852))))

(assert (=> b!622349 (= lt!266211 (drop!330 lt!266209 from!852))))

(declare-fun lt!266208 () Unit!11478)

(declare-fun lemmaDropApply!298 (List!6396 Int) Unit!11478)

(assert (=> b!622349 (= lt!266208 (lemmaDropApply!298 lt!266209 from!852))))

(declare-datatypes ((IArray!4081 0))(
  ( (IArray!4082 (innerList!2098 List!6396)) )
))
(declare-datatypes ((Conc!2040 0))(
  ( (Node!2040 (left!5063 Conc!2040) (right!5393 Conc!2040) (csize!4310 Int) (cheight!2251 Int)) (Leaf!3198 (xs!4677 IArray!4081) (csize!4311 Int)) (Empty!2040) )
))
(declare-datatypes ((BalanceConc!4088 0))(
  ( (BalanceConc!4089 (c!114413 Conc!2040)) )
))
(declare-fun v!6361 () BalanceConc!4088)

(declare-fun list!2679 (BalanceConc!4088) List!6396)

(assert (=> b!622349 (= lt!266209 (list!2679 v!6361))))

(declare-fun tp!193297 () Bool)

(declare-fun e!377836 () Bool)

(declare-fun b!622350 () Bool)

(declare-fun separatorToken!136 () Token!2322)

(declare-fun e!377829 () Bool)

(declare-fun inv!21 (TokenValue!1323) Bool)

(assert (=> b!622350 (= e!377829 (and (inv!21 (value!41885 separatorToken!136)) e!377836 tp!193297))))

(declare-fun res!270800 () Bool)

(declare-fun e!377833 () Bool)

(assert (=> start!59976 (=> (not res!270800) (not e!377833))))

(declare-datatypes ((LexerInterface!1187 0))(
  ( (LexerInterfaceExt!1184 (__x!4547 Int)) (Lexer!1185) )
))
(declare-fun thiss!14007 () LexerInterface!1187)

(get-info :version)

(assert (=> start!59976 (= res!270800 (and ((_ is Lexer!1185) thiss!14007) (>= from!852 0)))))

(assert (=> start!59976 e!377833))

(assert (=> start!59976 true))

(declare-fun e!377835 () Bool)

(declare-fun inv!8091 (BalanceConc!4088) Bool)

(assert (=> start!59976 (and (inv!8091 v!6361) e!377835)))

(declare-fun inv!8092 (Token!2322) Bool)

(assert (=> start!59976 (and (inv!8092 separatorToken!136) e!377829)))

(declare-fun tp!193298 () Bool)

(declare-fun b!622351 () Bool)

(declare-fun inv!8086 (String!8363) Bool)

(declare-fun inv!8093 (TokenValueInjection!2414) Bool)

(assert (=> b!622351 (= e!377836 (and tp!193298 (inv!8086 (tag!1561 (rule!2095 separatorToken!136))) (inv!8093 (transformation!1299 (rule!2095 separatorToken!136))) e!377830))))

(declare-fun b!622352 () Bool)

(assert (=> b!622352 (= e!377833 e!377832)))

(declare-fun res!270801 () Bool)

(assert (=> b!622352 (=> (not res!270801) (not e!377832))))

(declare-fun lt!266212 () Int)

(assert (=> b!622352 (= res!270801 (and (<= from!852 lt!266212) (isSeparator!1299 (rule!2095 separatorToken!136)) (< from!852 lt!266212)))))

(declare-fun size!4981 (BalanceConc!4088) Int)

(assert (=> b!622352 (= lt!266212 (size!4981 v!6361))))

(declare-fun b!622353 () Bool)

(declare-fun tp!193300 () Bool)

(declare-fun inv!8094 (Conc!2040) Bool)

(assert (=> b!622353 (= e!377835 (and (inv!8094 (c!114413 v!6361)) tp!193300))))

(assert (= (and start!59976 res!270800) b!622352))

(assert (= (and b!622352 res!270801) b!622349))

(assert (= start!59976 b!622353))

(assert (= b!622351 b!622348))

(assert (= b!622350 b!622351))

(assert (= start!59976 b!622350))

(declare-fun m!890517 () Bool)

(assert (=> b!622349 m!890517))

(declare-fun m!890519 () Bool)

(assert (=> b!622349 m!890519))

(declare-fun m!890521 () Bool)

(assert (=> b!622349 m!890521))

(declare-fun m!890523 () Bool)

(assert (=> b!622349 m!890523))

(declare-fun m!890525 () Bool)

(assert (=> b!622349 m!890525))

(declare-fun m!890527 () Bool)

(assert (=> b!622349 m!890527))

(declare-fun m!890529 () Bool)

(assert (=> b!622349 m!890529))

(declare-fun m!890531 () Bool)

(assert (=> b!622349 m!890531))

(declare-fun m!890533 () Bool)

(assert (=> b!622351 m!890533))

(declare-fun m!890535 () Bool)

(assert (=> b!622351 m!890535))

(declare-fun m!890537 () Bool)

(assert (=> b!622353 m!890537))

(declare-fun m!890539 () Bool)

(assert (=> b!622350 m!890539))

(declare-fun m!890541 () Bool)

(assert (=> b!622352 m!890541))

(declare-fun m!890543 () Bool)

(assert (=> start!59976 m!890543))

(declare-fun m!890545 () Bool)

(assert (=> start!59976 m!890545))

(check-sat (not b_next!18215) b_and!61855 (not b!622352) b_and!61857 (not b!622351) (not b!622350) (not b!622349) (not b!622353) (not start!59976) (not b_next!18213))
(check-sat b_and!61855 b_and!61857 (not b_next!18215) (not b_next!18213))
