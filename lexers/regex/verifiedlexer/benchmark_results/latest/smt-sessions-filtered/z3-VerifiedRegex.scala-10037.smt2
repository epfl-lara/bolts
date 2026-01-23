; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525150 () Bool)

(assert start!525150)

(declare-fun b!4977054 () Bool)

(declare-fun b_free!133003 () Bool)

(declare-fun b_next!133793 () Bool)

(assert (=> b!4977054 (= b_free!133003 (not b_next!133793))))

(declare-fun tp!1395670 () Bool)

(declare-fun b_and!349415 () Bool)

(assert (=> b!4977054 (= tp!1395670 b_and!349415)))

(declare-fun b_free!133005 () Bool)

(declare-fun b_next!133795 () Bool)

(assert (=> b!4977054 (= b_free!133005 (not b_next!133795))))

(declare-fun tp!1395672 () Bool)

(declare-fun b_and!349417 () Bool)

(assert (=> b!4977054 (= tp!1395672 b_and!349417)))

(declare-fun b!4977068 () Bool)

(declare-fun e!3110677 () Bool)

(assert (=> b!4977068 (= e!3110677 true)))

(declare-fun b!4977067 () Bool)

(declare-fun e!3110676 () Bool)

(assert (=> b!4977067 (= e!3110676 e!3110677)))

(declare-fun b!4977060 () Bool)

(assert (=> b!4977060 e!3110676))

(assert (= b!4977067 b!4977068))

(assert (= b!4977060 b!4977067))

(declare-fun order!26309 () Int)

(declare-fun order!26311 () Int)

(declare-datatypes ((C!27568 0))(
  ( (C!27569 (val!23150 Int)) )
))
(declare-datatypes ((List!57648 0))(
  ( (Nil!57524) (Cons!57524 (h!63972 C!27568) (t!369660 List!57648)) )
))
(declare-datatypes ((IArray!30417 0))(
  ( (IArray!30418 (innerList!15266 List!57648)) )
))
(declare-datatypes ((List!57649 0))(
  ( (Nil!57525) (Cons!57525 (h!63973 (_ BitVec 16)) (t!369661 List!57649)) )
))
(declare-datatypes ((Regex!13659 0))(
  ( (ElementMatch!13659 (c!849225 C!27568)) (Concat!22395 (regOne!27830 Regex!13659) (regTwo!27830 Regex!13659)) (EmptyExpr!13659) (Star!13659 (reg!13988 Regex!13659)) (EmptyLang!13659) (Union!13659 (regOne!27831 Regex!13659) (regTwo!27831 Regex!13659)) )
))
(declare-datatypes ((Conc!15178 0))(
  ( (Node!15178 (left!41989 Conc!15178) (right!42319 Conc!15178) (csize!30586 Int) (cheight!15389 Int)) (Leaf!25216 (xs!18504 IArray!30417) (csize!30587 Int)) (Empty!15178) )
))
(declare-datatypes ((BalanceConc!29786 0))(
  ( (BalanceConc!29787 (c!849226 Conc!15178)) )
))
(declare-datatypes ((TokenValue!8736 0))(
  ( (FloatLiteralValue!17472 (text!61597 List!57649)) (TokenValueExt!8735 (__x!34765 Int)) (Broken!43680 (value!269539 List!57649)) (Object!8859) (End!8736) (Def!8736) (Underscore!8736) (Match!8736) (Else!8736) (Error!8736) (Case!8736) (If!8736) (Extends!8736) (Abstract!8736) (Class!8736) (Val!8736) (DelimiterValue!17472 (del!8796 List!57649)) (KeywordValue!8742 (value!269540 List!57649)) (CommentValue!17472 (value!269541 List!57649)) (WhitespaceValue!17472 (value!269542 List!57649)) (IndentationValue!8736 (value!269543 List!57649)) (String!65553) (Int32!8736) (Broken!43681 (value!269544 List!57649)) (Boolean!8737) (Unit!148513) (OperatorValue!8739 (op!8796 List!57649)) (IdentifierValue!17472 (value!269545 List!57649)) (IdentifierValue!17473 (value!269546 List!57649)) (WhitespaceValue!17473 (value!269547 List!57649)) (True!17472) (False!17472) (Broken!43682 (value!269548 List!57649)) (Broken!43683 (value!269549 List!57649)) (True!17473) (RightBrace!8736) (RightBracket!8736) (Colon!8736) (Null!8736) (Comma!8736) (LeftBracket!8736) (False!17473) (LeftBrace!8736) (ImaginaryLiteralValue!8736 (text!61598 List!57649)) (StringLiteralValue!26208 (value!269550 List!57649)) (EOFValue!8736 (value!269551 List!57649)) (IdentValue!8736 (value!269552 List!57649)) (DelimiterValue!17473 (value!269553 List!57649)) (DedentValue!8736 (value!269554 List!57649)) (NewLineValue!8736 (value!269555 List!57649)) (IntegerValue!26208 (value!269556 (_ BitVec 32)) (text!61599 List!57649)) (IntegerValue!26209 (value!269557 Int) (text!61600 List!57649)) (Times!8736) (Or!8736) (Equal!8736) (Minus!8736) (Broken!43684 (value!269558 List!57649)) (And!8736) (Div!8736) (LessEqual!8736) (Mod!8736) (Concat!22396) (Not!8736) (Plus!8736) (SpaceValue!8736 (value!269559 List!57649)) (IntegerValue!26210 (value!269560 Int) (text!61601 List!57649)) (StringLiteralValue!26209 (text!61602 List!57649)) (FloatLiteralValue!17473 (text!61603 List!57649)) (BytesLiteralValue!8736 (value!269561 List!57649)) (CommentValue!17473 (value!269562 List!57649)) (StringLiteralValue!26210 (value!269563 List!57649)) (ErrorTokenValue!8736 (msg!8797 List!57649)) )
))
(declare-datatypes ((TokenValueInjection!16780 0))(
  ( (TokenValueInjection!16781 (toValue!11401 Int) (toChars!11260 Int)) )
))
(declare-datatypes ((String!65554 0))(
  ( (String!65555 (value!269564 String)) )
))
(declare-datatypes ((Rule!16652 0))(
  ( (Rule!16653 (regex!8426 Regex!13659) (tag!9290 String!65554) (isSeparator!8426 Bool) (transformation!8426 TokenValueInjection!16780)) )
))
(declare-fun rule!200 () Rule!16652)

(declare-fun lambda!247612 () Int)

(declare-fun dynLambda!23246 (Int Int) Int)

(declare-fun dynLambda!23247 (Int Int) Int)

(assert (=> b!4977068 (< (dynLambda!23246 order!26309 (toValue!11401 (transformation!8426 rule!200))) (dynLambda!23247 order!26311 lambda!247612))))

(declare-fun order!26313 () Int)

(declare-fun dynLambda!23248 (Int Int) Int)

(assert (=> b!4977068 (< (dynLambda!23248 order!26313 (toChars!11260 (transformation!8426 rule!200))) (dynLambda!23247 order!26311 lambda!247612))))

(declare-fun b!4977048 () Bool)

(declare-fun e!3110671 () Bool)

(declare-fun totalInput!520 () BalanceConc!29786)

(declare-fun tp!1395668 () Bool)

(declare-fun inv!75261 (Conc!15178) Bool)

(assert (=> b!4977048 (= e!3110671 (and (inv!75261 (c!849226 totalInput!520)) tp!1395668))))

(declare-fun b!4977049 () Bool)

(declare-fun e!3110662 () Bool)

(declare-fun lt!2055410 () List!57648)

(declare-fun lt!2055414 () List!57648)

(assert (=> b!4977049 (= e!3110662 (or (not (= lt!2055410 lt!2055414)) (= lt!2055414 lt!2055410)))))

(declare-fun lt!2055409 () BalanceConc!29786)

(declare-fun list!18418 (BalanceConc!29786) List!57648)

(assert (=> b!4977049 (= lt!2055410 (list!18418 lt!2055409))))

(declare-fun b!4977050 () Bool)

(declare-fun e!3110664 () Bool)

(declare-fun e!3110669 () Bool)

(assert (=> b!4977050 (= e!3110664 e!3110669)))

(declare-fun res!2124545 () Bool)

(assert (=> b!4977050 (=> (not res!2124545) (not e!3110669))))

(declare-datatypes ((tuple2!62304 0))(
  ( (tuple2!62305 (_1!34455 BalanceConc!29786) (_2!34455 BalanceConc!29786)) )
))
(declare-fun lt!2055416 () tuple2!62304)

(declare-fun isEmpty!31013 (BalanceConc!29786) Bool)

(assert (=> b!4977050 (= res!2124545 (not (isEmpty!31013 (_1!34455 lt!2055416))))))

(declare-fun input!1580 () BalanceConc!29786)

(declare-fun findLongestMatchWithZipperSequenceV2!189 (Regex!13659 BalanceConc!29786 BalanceConc!29786) tuple2!62304)

(assert (=> b!4977050 (= lt!2055416 (findLongestMatchWithZipperSequenceV2!189 (regex!8426 rule!200) input!1580 totalInput!520))))

(declare-fun b!4977051 () Bool)

(declare-fun e!3110667 () Bool)

(declare-fun tp!1395671 () Bool)

(assert (=> b!4977051 (= e!3110667 (and (inv!75261 (c!849226 input!1580)) tp!1395671))))

(declare-fun b!4977052 () Bool)

(declare-fun e!3110670 () Bool)

(declare-datatypes ((tuple2!62306 0))(
  ( (tuple2!62307 (_1!34456 List!57648) (_2!34456 List!57648)) )
))
(declare-fun lt!2055411 () tuple2!62306)

(declare-fun matchR!6653 (Regex!13659 List!57648) Bool)

(assert (=> b!4977052 (= e!3110670 (matchR!6653 (regex!8426 rule!200) (_1!34456 lt!2055411)))))

(declare-fun b!4977053 () Bool)

(declare-fun e!3110663 () Bool)

(assert (=> b!4977053 (= e!3110663 e!3110662)))

(declare-fun res!2124548 () Bool)

(assert (=> b!4977053 (=> res!2124548 e!3110662)))

(declare-fun lt!2055418 () Bool)

(declare-fun lt!2055408 () List!57648)

(declare-datatypes ((LexerInterface!8018 0))(
  ( (LexerInterfaceExt!8015 (__x!34766 Int)) (Lexer!8016) )
))
(declare-fun thiss!16165 () LexerInterface!8018)

(declare-datatypes ((Token!15316 0))(
  ( (Token!15317 (value!269565 TokenValue!8736) (rule!11678 Rule!16652) (size!38125 Int) (originalCharacters!8689 List!57648)) )
))
(declare-datatypes ((tuple2!62308 0))(
  ( (tuple2!62309 (_1!34457 Token!15316) (_2!34457 List!57648)) )
))
(declare-datatypes ((Option!14479 0))(
  ( (None!14478) (Some!14478 (v!50475 tuple2!62308)) )
))
(declare-fun isDefined!11388 (Option!14479) Bool)

(declare-fun maxPrefixOneRule!3646 (LexerInterface!8018 Rule!16652 List!57648) Option!14479)

(assert (=> b!4977053 (= res!2124548 (not (= lt!2055418 (isDefined!11388 (maxPrefixOneRule!3646 thiss!16165 rule!200 lt!2055408)))))))

(declare-datatypes ((tuple2!62310 0))(
  ( (tuple2!62311 (_1!34458 Token!15316) (_2!34458 BalanceConc!29786)) )
))
(declare-datatypes ((Option!14480 0))(
  ( (None!14479) (Some!14479 (v!50476 tuple2!62310)) )
))
(declare-fun isDefined!11389 (Option!14480) Bool)

(declare-fun apply!13917 (TokenValueInjection!16780 BalanceConc!29786) TokenValue!8736)

(declare-fun size!38126 (BalanceConc!29786) Int)

(assert (=> b!4977053 (= lt!2055418 (isDefined!11389 (Some!14479 (tuple2!62311 (Token!15317 (apply!13917 (transformation!8426 rule!200) (_1!34455 lt!2055416)) rule!200 (size!38126 (_1!34455 lt!2055416)) lt!2055414) (_2!34455 lt!2055416)))))))

(declare-datatypes ((Unit!148514 0))(
  ( (Unit!148515) )
))
(declare-fun lt!2055415 () Unit!148514)

(declare-fun ForallOf!1240 (Int BalanceConc!29786) Unit!148514)

(assert (=> b!4977053 (= lt!2055415 (ForallOf!1240 lambda!247612 lt!2055409))))

(declare-fun seqFromList!6051 (List!57648) BalanceConc!29786)

(assert (=> b!4977053 (= lt!2055409 (seqFromList!6051 lt!2055414))))

(assert (=> b!4977053 (= lt!2055414 (list!18418 (_1!34455 lt!2055416)))))

(declare-fun lt!2055417 () Unit!148514)

(assert (=> b!4977053 (= lt!2055417 (ForallOf!1240 lambda!247612 (_1!34455 lt!2055416)))))

(declare-fun e!3110668 () Bool)

(assert (=> b!4977054 (= e!3110668 (and tp!1395670 tp!1395672))))

(declare-fun res!2124547 () Bool)

(declare-fun e!3110665 () Bool)

(assert (=> start!525150 (=> (not res!2124547) (not e!3110665))))

(get-info :version)

(assert (=> start!525150 (= res!2124547 ((_ is Lexer!8016) thiss!16165))))

(assert (=> start!525150 e!3110665))

(assert (=> start!525150 true))

(declare-fun e!3110661 () Bool)

(assert (=> start!525150 e!3110661))

(declare-fun inv!75262 (BalanceConc!29786) Bool)

(assert (=> start!525150 (and (inv!75262 totalInput!520) e!3110671)))

(assert (=> start!525150 (and (inv!75262 input!1580) e!3110667)))

(declare-fun b!4977055 () Bool)

(assert (=> b!4977055 (= e!3110669 (not e!3110663))))

(declare-fun res!2124546 () Bool)

(assert (=> b!4977055 (=> res!2124546 e!3110663)))

(declare-fun semiInverseModEq!3719 (Int Int) Bool)

(assert (=> b!4977055 (= res!2124546 (not (semiInverseModEq!3719 (toChars!11260 (transformation!8426 rule!200)) (toValue!11401 (transformation!8426 rule!200)))))))

(declare-fun lt!2055413 () Unit!148514)

(declare-fun lemmaInv!1349 (TokenValueInjection!16780) Unit!148514)

(assert (=> b!4977055 (= lt!2055413 (lemmaInv!1349 (transformation!8426 rule!200)))))

(assert (=> b!4977055 e!3110670))

(declare-fun res!2124543 () Bool)

(assert (=> b!4977055 (=> res!2124543 e!3110670)))

(declare-fun isEmpty!31014 (List!57648) Bool)

(assert (=> b!4977055 (= res!2124543 (isEmpty!31014 (_1!34456 lt!2055411)))))

(declare-fun findLongestMatchInner!1870 (Regex!13659 List!57648 Int List!57648 List!57648 Int) tuple2!62306)

(declare-fun size!38127 (List!57648) Int)

(assert (=> b!4977055 (= lt!2055411 (findLongestMatchInner!1870 (regex!8426 rule!200) Nil!57524 (size!38127 Nil!57524) lt!2055408 lt!2055408 (size!38127 lt!2055408)))))

(declare-fun lt!2055412 () Unit!148514)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1831 (Regex!13659 List!57648) Unit!148514)

(assert (=> b!4977055 (= lt!2055412 (longestMatchIsAcceptedByMatchOrIsEmpty!1831 (regex!8426 rule!200) lt!2055408))))

(declare-fun b!4977056 () Bool)

(assert (=> b!4977056 (= e!3110665 e!3110664)))

(declare-fun res!2124542 () Bool)

(assert (=> b!4977056 (=> (not res!2124542) (not e!3110664))))

(declare-fun isSuffix!1225 (List!57648 List!57648) Bool)

(assert (=> b!4977056 (= res!2124542 (isSuffix!1225 lt!2055408 (list!18418 totalInput!520)))))

(assert (=> b!4977056 (= lt!2055408 (list!18418 input!1580))))

(declare-fun b!4977057 () Bool)

(declare-fun res!2124544 () Bool)

(assert (=> b!4977057 (=> res!2124544 e!3110662)))

(assert (=> b!4977057 (= res!2124544 (not lt!2055418))))

(declare-fun tp!1395669 () Bool)

(declare-fun b!4977058 () Bool)

(declare-fun inv!75257 (String!65554) Bool)

(declare-fun inv!75263 (TokenValueInjection!16780) Bool)

(assert (=> b!4977058 (= e!3110661 (and tp!1395669 (inv!75257 (tag!9290 rule!200)) (inv!75263 (transformation!8426 rule!200)) e!3110668))))

(declare-fun b!4977059 () Bool)

(declare-fun res!2124549 () Bool)

(assert (=> b!4977059 (=> (not res!2124549) (not e!3110665))))

(declare-fun ruleValid!3834 (LexerInterface!8018 Rule!16652) Bool)

(assert (=> b!4977059 (= res!2124549 (ruleValid!3834 thiss!16165 rule!200))))

(declare-fun res!2124541 () Bool)

(assert (=> b!4977060 (=> res!2124541 e!3110663)))

(declare-fun Forall!1776 (Int) Bool)

(assert (=> b!4977060 (= res!2124541 (not (Forall!1776 lambda!247612)))))

(assert (= (and start!525150 res!2124547) b!4977059))

(assert (= (and b!4977059 res!2124549) b!4977056))

(assert (= (and b!4977056 res!2124542) b!4977050))

(assert (= (and b!4977050 res!2124545) b!4977055))

(assert (= (and b!4977055 (not res!2124543)) b!4977052))

(assert (= (and b!4977055 (not res!2124546)) b!4977060))

(assert (= (and b!4977060 (not res!2124541)) b!4977053))

(assert (= (and b!4977053 (not res!2124548)) b!4977057))

(assert (= (and b!4977057 (not res!2124544)) b!4977049))

(assert (= b!4977058 b!4977054))

(assert (= start!525150 b!4977058))

(assert (= start!525150 b!4977048))

(assert (= start!525150 b!4977051))

(declare-fun m!6007312 () Bool)

(assert (=> b!4977049 m!6007312))

(declare-fun m!6007314 () Bool)

(assert (=> b!4977055 m!6007314))

(declare-fun m!6007316 () Bool)

(assert (=> b!4977055 m!6007316))

(declare-fun m!6007318 () Bool)

(assert (=> b!4977055 m!6007318))

(declare-fun m!6007320 () Bool)

(assert (=> b!4977055 m!6007320))

(declare-fun m!6007322 () Bool)

(assert (=> b!4977055 m!6007322))

(assert (=> b!4977055 m!6007320))

(assert (=> b!4977055 m!6007318))

(declare-fun m!6007324 () Bool)

(assert (=> b!4977055 m!6007324))

(declare-fun m!6007326 () Bool)

(assert (=> b!4977055 m!6007326))

(declare-fun m!6007328 () Bool)

(assert (=> start!525150 m!6007328))

(declare-fun m!6007330 () Bool)

(assert (=> start!525150 m!6007330))

(declare-fun m!6007332 () Bool)

(assert (=> b!4977058 m!6007332))

(declare-fun m!6007334 () Bool)

(assert (=> b!4977058 m!6007334))

(declare-fun m!6007336 () Bool)

(assert (=> b!4977051 m!6007336))

(declare-fun m!6007338 () Bool)

(assert (=> b!4977059 m!6007338))

(declare-fun m!6007340 () Bool)

(assert (=> b!4977053 m!6007340))

(declare-fun m!6007342 () Bool)

(assert (=> b!4977053 m!6007342))

(declare-fun m!6007344 () Bool)

(assert (=> b!4977053 m!6007344))

(declare-fun m!6007346 () Bool)

(assert (=> b!4977053 m!6007346))

(declare-fun m!6007348 () Bool)

(assert (=> b!4977053 m!6007348))

(declare-fun m!6007350 () Bool)

(assert (=> b!4977053 m!6007350))

(assert (=> b!4977053 m!6007344))

(declare-fun m!6007352 () Bool)

(assert (=> b!4977053 m!6007352))

(declare-fun m!6007354 () Bool)

(assert (=> b!4977053 m!6007354))

(declare-fun m!6007356 () Bool)

(assert (=> b!4977053 m!6007356))

(declare-fun m!6007358 () Bool)

(assert (=> b!4977052 m!6007358))

(declare-fun m!6007360 () Bool)

(assert (=> b!4977060 m!6007360))

(declare-fun m!6007362 () Bool)

(assert (=> b!4977048 m!6007362))

(declare-fun m!6007364 () Bool)

(assert (=> b!4977056 m!6007364))

(assert (=> b!4977056 m!6007364))

(declare-fun m!6007366 () Bool)

(assert (=> b!4977056 m!6007366))

(declare-fun m!6007368 () Bool)

(assert (=> b!4977056 m!6007368))

(declare-fun m!6007370 () Bool)

(assert (=> b!4977050 m!6007370))

(declare-fun m!6007372 () Bool)

(assert (=> b!4977050 m!6007372))

(check-sat (not start!525150) (not b!4977059) (not b_next!133795) b_and!349415 (not b!4977056) (not b!4977051) (not b!4977058) (not b!4977050) (not b!4977053) (not b!4977060) (not b!4977048) (not b!4977052) (not b!4977055) b_and!349417 (not b!4977049) (not b_next!133793))
(check-sat b_and!349417 b_and!349415 (not b_next!133795) (not b_next!133793))
