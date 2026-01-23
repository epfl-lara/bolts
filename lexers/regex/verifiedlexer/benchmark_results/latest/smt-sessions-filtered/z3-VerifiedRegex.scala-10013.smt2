; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523114 () Bool)

(assert start!523114)

(declare-fun b!4961494 () Bool)

(declare-fun b_free!132611 () Bool)

(declare-fun b_next!133401 () Bool)

(assert (=> b!4961494 (= b_free!132611 (not b_next!133401))))

(declare-fun tp!1391736 () Bool)

(declare-fun b_and!347463 () Bool)

(assert (=> b!4961494 (= tp!1391736 b_and!347463)))

(declare-fun b_free!132613 () Bool)

(declare-fun b_next!133403 () Bool)

(assert (=> b!4961494 (= b_free!132613 (not b_next!133403))))

(declare-fun tp!1391733 () Bool)

(declare-fun b_and!347465 () Bool)

(assert (=> b!4961494 (= tp!1391733 b_and!347465)))

(declare-fun b!4961483 () Bool)

(declare-fun b_free!132615 () Bool)

(declare-fun b_next!133405 () Bool)

(assert (=> b!4961483 (= b_free!132615 (not b_next!133405))))

(declare-fun tp!1391734 () Bool)

(declare-fun b_and!347467 () Bool)

(assert (=> b!4961483 (= tp!1391734 b_and!347467)))

(declare-fun b_free!132617 () Bool)

(declare-fun b_next!133407 () Bool)

(assert (=> b!4961483 (= b_free!132617 (not b_next!133407))))

(declare-fun tp!1391735 () Bool)

(declare-fun b_and!347469 () Bool)

(assert (=> b!4961483 (= tp!1391735 b_and!347469)))

(declare-fun b!4961481 () Bool)

(declare-fun res!2117702 () Bool)

(declare-fun e!3101196 () Bool)

(assert (=> b!4961481 (=> (not res!2117702) (not e!3101196))))

(declare-datatypes ((C!27472 0))(
  ( (C!27473 (val!23102 Int)) )
))
(declare-datatypes ((List!57520 0))(
  ( (Nil!57396) (Cons!57396 (h!63844 C!27472) (t!368086 List!57520)) )
))
(declare-datatypes ((IArray!30321 0))(
  ( (IArray!30322 (innerList!15218 List!57520)) )
))
(declare-datatypes ((Regex!13611 0))(
  ( (ElementMatch!13611 (c!846597 C!27472)) (Concat!22299 (regOne!27734 Regex!13611) (regTwo!27734 Regex!13611)) (EmptyExpr!13611) (Star!13611 (reg!13940 Regex!13611)) (EmptyLang!13611) (Union!13611 (regOne!27735 Regex!13611) (regTwo!27735 Regex!13611)) )
))
(declare-datatypes ((String!65313 0))(
  ( (String!65314 (value!268189 String)) )
))
(declare-datatypes ((List!57521 0))(
  ( (Nil!57397) (Cons!57397 (h!63845 (_ BitVec 16)) (t!368087 List!57521)) )
))
(declare-datatypes ((TokenValue!8688 0))(
  ( (FloatLiteralValue!17376 (text!61261 List!57521)) (TokenValueExt!8687 (__x!34669 Int)) (Broken!43440 (value!268190 List!57521)) (Object!8811) (End!8688) (Def!8688) (Underscore!8688) (Match!8688) (Else!8688) (Error!8688) (Case!8688) (If!8688) (Extends!8688) (Abstract!8688) (Class!8688) (Val!8688) (DelimiterValue!17376 (del!8748 List!57521)) (KeywordValue!8694 (value!268191 List!57521)) (CommentValue!17376 (value!268192 List!57521)) (WhitespaceValue!17376 (value!268193 List!57521)) (IndentationValue!8688 (value!268194 List!57521)) (String!65315) (Int32!8688) (Broken!43441 (value!268195 List!57521)) (Boolean!8689) (Unit!148290) (OperatorValue!8691 (op!8748 List!57521)) (IdentifierValue!17376 (value!268196 List!57521)) (IdentifierValue!17377 (value!268197 List!57521)) (WhitespaceValue!17377 (value!268198 List!57521)) (True!17376) (False!17376) (Broken!43442 (value!268199 List!57521)) (Broken!43443 (value!268200 List!57521)) (True!17377) (RightBrace!8688) (RightBracket!8688) (Colon!8688) (Null!8688) (Comma!8688) (LeftBracket!8688) (False!17377) (LeftBrace!8688) (ImaginaryLiteralValue!8688 (text!61262 List!57521)) (StringLiteralValue!26064 (value!268201 List!57521)) (EOFValue!8688 (value!268202 List!57521)) (IdentValue!8688 (value!268203 List!57521)) (DelimiterValue!17377 (value!268204 List!57521)) (DedentValue!8688 (value!268205 List!57521)) (NewLineValue!8688 (value!268206 List!57521)) (IntegerValue!26064 (value!268207 (_ BitVec 32)) (text!61263 List!57521)) (IntegerValue!26065 (value!268208 Int) (text!61264 List!57521)) (Times!8688) (Or!8688) (Equal!8688) (Minus!8688) (Broken!43444 (value!268209 List!57521)) (And!8688) (Div!8688) (LessEqual!8688) (Mod!8688) (Concat!22300) (Not!8688) (Plus!8688) (SpaceValue!8688 (value!268210 List!57521)) (IntegerValue!26066 (value!268211 Int) (text!61265 List!57521)) (StringLiteralValue!26065 (text!61266 List!57521)) (FloatLiteralValue!17377 (text!61267 List!57521)) (BytesLiteralValue!8688 (value!268212 List!57521)) (CommentValue!17377 (value!268213 List!57521)) (StringLiteralValue!26066 (value!268214 List!57521)) (ErrorTokenValue!8688 (msg!8749 List!57521)) )
))
(declare-datatypes ((Conc!15130 0))(
  ( (Node!15130 (left!41853 Conc!15130) (right!42183 Conc!15130) (csize!30490 Int) (cheight!15341 Int)) (Leaf!25144 (xs!18456 IArray!30321) (csize!30491 Int)) (Empty!15130) )
))
(declare-datatypes ((BalanceConc!29690 0))(
  ( (BalanceConc!29691 (c!846598 Conc!15130)) )
))
(declare-datatypes ((TokenValueInjection!16684 0))(
  ( (TokenValueInjection!16685 (toValue!11329 Int) (toChars!11188 Int)) )
))
(declare-datatypes ((Rule!16556 0))(
  ( (Rule!16557 (regex!8378 Regex!13611) (tag!9242 String!65313) (isSeparator!8378 Bool) (transformation!8378 TokenValueInjection!16684)) )
))
(declare-datatypes ((List!57522 0))(
  ( (Nil!57398) (Cons!57398 (h!63846 Rule!16556) (t!368088 List!57522)) )
))
(declare-fun rulesArg!259 () List!57522)

(declare-fun isEmpty!30882 (List!57522) Bool)

(assert (=> b!4961481 (= res!2117702 (not (isEmpty!30882 rulesArg!259)))))

(declare-fun b!4961482 () Bool)

(declare-fun e!3101191 () Bool)

(declare-fun totalInput!464 () BalanceConc!29690)

(declare-fun tp!1391739 () Bool)

(declare-fun inv!74965 (Conc!15130) Bool)

(assert (=> b!4961482 (= e!3101191 (and (inv!74965 (c!846598 totalInput!464)) tp!1391739))))

(declare-fun e!3101188 () Bool)

(assert (=> b!4961483 (= e!3101188 (and tp!1391734 tp!1391735))))

(declare-fun b!4961484 () Bool)

(declare-fun e!3101200 () Bool)

(declare-datatypes ((Token!15256 0))(
  ( (Token!15257 (value!268215 TokenValue!8688) (rule!11610 Rule!16556) (size!38032 Int) (originalCharacters!8659 List!57520)) )
))
(declare-datatypes ((tuple2!62088 0))(
  ( (tuple2!62089 (_1!34347 Token!15256) (_2!34347 BalanceConc!29690)) )
))
(declare-fun lt!2048538 () tuple2!62088)

(declare-datatypes ((tuple2!62090 0))(
  ( (tuple2!62091 (_1!34348 Token!15256) (_2!34348 List!57520)) )
))
(declare-fun lt!2048537 () tuple2!62090)

(declare-fun list!18335 (BalanceConc!29690) List!57520)

(assert (=> b!4961484 (= e!3101200 (= (list!18335 (_2!34347 lt!2048538)) (_2!34348 lt!2048537)))))

(declare-fun b!4961485 () Bool)

(declare-fun e!3101189 () Bool)

(declare-fun e!3101193 () Bool)

(declare-fun tp!1391742 () Bool)

(assert (=> b!4961485 (= e!3101189 (and e!3101193 tp!1391742))))

(declare-fun b!4961487 () Bool)

(declare-fun e!3101194 () Bool)

(assert (=> b!4961487 (= e!3101196 e!3101194)))

(declare-fun res!2117697 () Bool)

(assert (=> b!4961487 (=> (not res!2117697) (not e!3101194))))

(declare-fun lt!2048534 () List!57520)

(declare-fun isSuffix!1177 (List!57520 List!57520) Bool)

(assert (=> b!4961487 (= res!2117697 (isSuffix!1177 lt!2048534 (list!18335 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29690)

(assert (=> b!4961487 (= lt!2048534 (list!18335 input!1342))))

(declare-fun b!4961488 () Bool)

(declare-fun e!3101186 () Bool)

(declare-fun e!3101199 () Bool)

(assert (=> b!4961488 (= e!3101186 e!3101199)))

(declare-fun res!2117703 () Bool)

(assert (=> b!4961488 (=> res!2117703 e!3101199)))

(declare-fun lt!2048535 () Bool)

(declare-datatypes ((Option!14423 0))(
  ( (None!14422) (Some!14422 (v!50407 tuple2!62090)) )
))
(declare-fun lt!2048536 () Option!14423)

(declare-fun isDefined!11336 (Option!14423) Bool)

(assert (=> b!4961488 (= res!2117703 (not (= lt!2048535 (isDefined!11336 lt!2048536))))))

(declare-datatypes ((Option!14424 0))(
  ( (None!14423) (Some!14423 (v!50408 tuple2!62088)) )
))
(declare-fun lt!2048531 () Option!14424)

(declare-fun isDefined!11337 (Option!14424) Bool)

(assert (=> b!4961488 (= lt!2048535 (isDefined!11337 lt!2048531))))

(declare-datatypes ((LexerInterface!7970 0))(
  ( (LexerInterfaceExt!7967 (__x!34670 Int)) (Lexer!7968) )
))
(declare-fun thiss!15247 () LexerInterface!7970)

(declare-fun maxPrefixZipper!775 (LexerInterface!7970 List!57522 List!57520) Option!14423)

(assert (=> b!4961488 (= lt!2048536 (maxPrefixZipper!775 thiss!15247 rulesArg!259 lt!2048534))))

(declare-fun err!4561 () Option!14424)

(assert (=> b!4961488 (= lt!2048531 err!4561)))

(assert (=> b!4961488 true))

(declare-fun e!3101185 () Bool)

(assert (=> b!4961488 e!3101185))

(declare-fun b!4961489 () Bool)

(declare-fun e!3101190 () Bool)

(declare-fun tp!1391732 () Bool)

(assert (=> b!4961489 (= e!3101190 (and (inv!74965 (c!846598 input!1342)) tp!1391732))))

(declare-fun b!4961490 () Bool)

(assert (=> b!4961490 (= e!3101199 true)))

(declare-fun lt!2048533 () Bool)

(declare-fun e!3101192 () Bool)

(assert (=> b!4961490 (= lt!2048533 e!3101192)))

(declare-fun res!2117699 () Bool)

(assert (=> b!4961490 (=> res!2117699 e!3101192)))

(assert (=> b!4961490 (= res!2117699 (not lt!2048535))))

(declare-fun e!3101202 () Bool)

(declare-fun b!4961491 () Bool)

(declare-fun e!3101197 () Bool)

(declare-fun tp!1391740 () Bool)

(declare-fun inv!21 (TokenValue!8688) Bool)

(assert (=> b!4961491 (= e!3101197 (and (inv!21 (value!268215 (_1!34347 (v!50408 err!4561)))) e!3101202 tp!1391740))))

(declare-fun e!3101195 () Bool)

(declare-fun b!4961492 () Bool)

(declare-fun inv!74966 (Token!15256) Bool)

(declare-fun inv!74967 (BalanceConc!29690) Bool)

(assert (=> b!4961492 (= e!3101185 (and (inv!74966 (_1!34347 (v!50408 err!4561))) e!3101197 (inv!74967 (_2!34347 (v!50408 err!4561))) e!3101195))))

(declare-fun b!4961493 () Bool)

(declare-fun res!2117701 () Bool)

(assert (=> b!4961493 (=> (not res!2117701) (not e!3101196))))

(declare-fun rulesValidInductive!3281 (LexerInterface!7970 List!57522) Bool)

(assert (=> b!4961493 (= res!2117701 (rulesValidInductive!3281 thiss!15247 rulesArg!259))))

(declare-fun e!3101201 () Bool)

(assert (=> b!4961494 (= e!3101201 (and tp!1391736 tp!1391733))))

(declare-fun b!4961495 () Bool)

(assert (=> b!4961495 (= e!3101194 (not e!3101186))))

(declare-fun res!2117698 () Bool)

(assert (=> b!4961495 (=> res!2117698 e!3101186)))

(get-info :version)

(assert (=> b!4961495 (= res!2117698 (or (and ((_ is Cons!57398) rulesArg!259) ((_ is Nil!57398) (t!368088 rulesArg!259))) ((_ is Cons!57398) rulesArg!259)))))

(declare-fun isPrefix!5231 (List!57520 List!57520) Bool)

(assert (=> b!4961495 (isPrefix!5231 lt!2048534 lt!2048534)))

(declare-datatypes ((Unit!148291 0))(
  ( (Unit!148292) )
))
(declare-fun lt!2048532 () Unit!148291)

(declare-fun lemmaIsPrefixRefl!3555 (List!57520 List!57520) Unit!148291)

(assert (=> b!4961495 (= lt!2048532 (lemmaIsPrefixRefl!3555 lt!2048534 lt!2048534))))

(declare-fun tp!1391738 () Bool)

(declare-fun b!4961496 () Bool)

(declare-fun inv!74960 (String!65313) Bool)

(declare-fun inv!74968 (TokenValueInjection!16684) Bool)

(assert (=> b!4961496 (= e!3101202 (and tp!1391738 (inv!74960 (tag!9242 (rule!11610 (_1!34347 (v!50408 err!4561))))) (inv!74968 (transformation!8378 (rule!11610 (_1!34347 (v!50408 err!4561))))) e!3101188))))

(declare-fun b!4961497 () Bool)

(declare-fun tp!1391737 () Bool)

(assert (=> b!4961497 (= e!3101195 (and (inv!74965 (c!846598 (_2!34347 (v!50408 err!4561)))) tp!1391737))))

(declare-fun tp!1391741 () Bool)

(declare-fun b!4961498 () Bool)

(assert (=> b!4961498 (= e!3101193 (and tp!1391741 (inv!74960 (tag!9242 (h!63846 rulesArg!259))) (inv!74968 (transformation!8378 (h!63846 rulesArg!259))) e!3101201))))

(declare-fun b!4961486 () Bool)

(assert (=> b!4961486 (= e!3101192 e!3101200)))

(declare-fun res!2117700 () Bool)

(assert (=> b!4961486 (=> (not res!2117700) (not e!3101200))))

(assert (=> b!4961486 (= res!2117700 (= (_1!34347 lt!2048538) (_1!34348 lt!2048537)))))

(declare-fun get!19906 (Option!14423) tuple2!62090)

(assert (=> b!4961486 (= lt!2048537 (get!19906 lt!2048536))))

(declare-fun get!19907 (Option!14424) tuple2!62088)

(assert (=> b!4961486 (= lt!2048538 (get!19907 lt!2048531))))

(declare-fun res!2117704 () Bool)

(assert (=> start!523114 (=> (not res!2117704) (not e!3101196))))

(assert (=> start!523114 (= res!2117704 ((_ is Lexer!7968) thiss!15247))))

(assert (=> start!523114 e!3101196))

(assert (=> start!523114 true))

(assert (=> start!523114 e!3101189))

(assert (=> start!523114 (and (inv!74967 input!1342) e!3101190)))

(assert (=> start!523114 (and (inv!74967 totalInput!464) e!3101191)))

(assert (= (and start!523114 res!2117704) b!4961493))

(assert (= (and b!4961493 res!2117701) b!4961481))

(assert (= (and b!4961481 res!2117702) b!4961487))

(assert (= (and b!4961487 res!2117697) b!4961495))

(assert (= (and b!4961495 (not res!2117698)) b!4961488))

(assert (= b!4961496 b!4961483))

(assert (= b!4961491 b!4961496))

(assert (= b!4961492 b!4961491))

(assert (= b!4961492 b!4961497))

(assert (= (and b!4961488 ((_ is Some!14423) err!4561)) b!4961492))

(assert (= (and b!4961488 (not res!2117703)) b!4961490))

(assert (= (and b!4961490 (not res!2117699)) b!4961486))

(assert (= (and b!4961486 res!2117700) b!4961484))

(assert (= b!4961498 b!4961494))

(assert (= b!4961485 b!4961498))

(assert (= (and start!523114 ((_ is Cons!57398) rulesArg!259)) b!4961485))

(assert (= start!523114 b!4961489))

(assert (= start!523114 b!4961482))

(declare-fun m!5986014 () Bool)

(assert (=> b!4961495 m!5986014))

(declare-fun m!5986016 () Bool)

(assert (=> b!4961495 m!5986016))

(declare-fun m!5986018 () Bool)

(assert (=> b!4961497 m!5986018))

(declare-fun m!5986020 () Bool)

(assert (=> b!4961487 m!5986020))

(assert (=> b!4961487 m!5986020))

(declare-fun m!5986022 () Bool)

(assert (=> b!4961487 m!5986022))

(declare-fun m!5986024 () Bool)

(assert (=> b!4961487 m!5986024))

(declare-fun m!5986026 () Bool)

(assert (=> start!523114 m!5986026))

(declare-fun m!5986028 () Bool)

(assert (=> start!523114 m!5986028))

(declare-fun m!5986030 () Bool)

(assert (=> b!4961496 m!5986030))

(declare-fun m!5986032 () Bool)

(assert (=> b!4961496 m!5986032))

(declare-fun m!5986034 () Bool)

(assert (=> b!4961489 m!5986034))

(declare-fun m!5986036 () Bool)

(assert (=> b!4961498 m!5986036))

(declare-fun m!5986038 () Bool)

(assert (=> b!4961498 m!5986038))

(declare-fun m!5986040 () Bool)

(assert (=> b!4961484 m!5986040))

(declare-fun m!5986042 () Bool)

(assert (=> b!4961486 m!5986042))

(declare-fun m!5986044 () Bool)

(assert (=> b!4961486 m!5986044))

(declare-fun m!5986046 () Bool)

(assert (=> b!4961488 m!5986046))

(declare-fun m!5986048 () Bool)

(assert (=> b!4961488 m!5986048))

(declare-fun m!5986050 () Bool)

(assert (=> b!4961488 m!5986050))

(declare-fun m!5986052 () Bool)

(assert (=> b!4961491 m!5986052))

(declare-fun m!5986054 () Bool)

(assert (=> b!4961481 m!5986054))

(declare-fun m!5986056 () Bool)

(assert (=> b!4961493 m!5986056))

(declare-fun m!5986058 () Bool)

(assert (=> b!4961492 m!5986058))

(declare-fun m!5986060 () Bool)

(assert (=> b!4961492 m!5986060))

(declare-fun m!5986062 () Bool)

(assert (=> b!4961482 m!5986062))

(check-sat (not start!523114) (not b_next!133403) (not b!4961485) (not b!4961498) (not b!4961495) (not b!4961491) (not b_next!133405) (not b!4961489) (not b!4961487) (not b!4961488) (not b!4961496) (not b!4961492) b_and!347463 (not b_next!133407) (not b_next!133401) (not b!4961484) (not b!4961493) b_and!347467 (not b!4961482) (not b!4961497) b_and!347469 b_and!347465 (not b!4961481) (not b!4961486))
(check-sat (not b_next!133403) (not b_next!133405) (not b_next!133401) b_and!347467 b_and!347463 (not b_next!133407) b_and!347469 b_and!347465)
