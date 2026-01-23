; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255654 () Bool)

(assert start!255654)

(declare-fun b!2630092 () Bool)

(declare-fun b_free!74125 () Bool)

(declare-fun b_next!74829 () Bool)

(assert (=> b!2630092 (= b_free!74125 (not b_next!74829))))

(declare-fun tp!833888 () Bool)

(declare-fun b_and!192683 () Bool)

(assert (=> b!2630092 (= tp!833888 b_and!192683)))

(declare-fun b_free!74127 () Bool)

(declare-fun b_next!74831 () Bool)

(assert (=> b!2630092 (= b_free!74127 (not b_next!74831))))

(declare-fun tp!833892 () Bool)

(declare-fun b_and!192685 () Bool)

(assert (=> b!2630092 (= tp!833892 b_and!192685)))

(declare-fun b!2630096 () Bool)

(declare-fun b_free!74129 () Bool)

(declare-fun b_next!74833 () Bool)

(assert (=> b!2630096 (= b_free!74129 (not b_next!74833))))

(declare-fun tp!833895 () Bool)

(declare-fun b_and!192687 () Bool)

(assert (=> b!2630096 (= tp!833895 b_and!192687)))

(declare-fun b_free!74131 () Bool)

(declare-fun b_next!74835 () Bool)

(assert (=> b!2630096 (= b_free!74131 (not b_next!74835))))

(declare-fun tp!833894 () Bool)

(declare-fun b_and!192689 () Bool)

(assert (=> b!2630096 (= tp!833894 b_and!192689)))

(declare-fun bs!475701 () Bool)

(declare-fun b!2630085 () Bool)

(declare-fun b!2630100 () Bool)

(assert (= bs!475701 (and b!2630085 b!2630100)))

(declare-fun lambda!98642 () Int)

(declare-fun lambda!98641 () Int)

(assert (=> bs!475701 (not (= lambda!98642 lambda!98641))))

(declare-fun b!2630116 () Bool)

(declare-fun e!1659452 () Bool)

(assert (=> b!2630116 (= e!1659452 true)))

(declare-fun b!2630115 () Bool)

(declare-fun e!1659451 () Bool)

(assert (=> b!2630115 (= e!1659451 e!1659452)))

(declare-fun b!2630114 () Bool)

(declare-fun e!1659450 () Bool)

(assert (=> b!2630114 (= e!1659450 e!1659451)))

(assert (=> b!2630085 e!1659450))

(assert (= b!2630115 b!2630116))

(assert (= b!2630114 b!2630115))

(declare-datatypes ((C!15704 0))(
  ( (C!15705 (val!9786 Int)) )
))
(declare-datatypes ((Regex!7773 0))(
  ( (ElementMatch!7773 (c!422846 C!15704)) (Concat!12624 (regOne!16058 Regex!7773) (regTwo!16058 Regex!7773)) (EmptyExpr!7773) (Star!7773 (reg!8102 Regex!7773)) (EmptyLang!7773) (Union!7773 (regOne!16059 Regex!7773) (regTwo!16059 Regex!7773)) )
))
(declare-datatypes ((List!30553 0))(
  ( (Nil!30453) (Cons!30453 (h!35873 (_ BitVec 16)) (t!216306 List!30553)) )
))
(declare-datatypes ((TokenValue!4851 0))(
  ( (FloatLiteralValue!9702 (text!34402 List!30553)) (TokenValueExt!4850 (__x!19535 Int)) (Broken!24255 (value!149505 List!30553)) (Object!4950) (End!4851) (Def!4851) (Underscore!4851) (Match!4851) (Else!4851) (Error!4851) (Case!4851) (If!4851) (Extends!4851) (Abstract!4851) (Class!4851) (Val!4851) (DelimiterValue!9702 (del!4911 List!30553)) (KeywordValue!4857 (value!149506 List!30553)) (CommentValue!9702 (value!149507 List!30553)) (WhitespaceValue!9702 (value!149508 List!30553)) (IndentationValue!4851 (value!149509 List!30553)) (String!34138) (Int32!4851) (Broken!24256 (value!149510 List!30553)) (Boolean!4852) (Unit!44472) (OperatorValue!4854 (op!4911 List!30553)) (IdentifierValue!9702 (value!149511 List!30553)) (IdentifierValue!9703 (value!149512 List!30553)) (WhitespaceValue!9703 (value!149513 List!30553)) (True!9702) (False!9702) (Broken!24257 (value!149514 List!30553)) (Broken!24258 (value!149515 List!30553)) (True!9703) (RightBrace!4851) (RightBracket!4851) (Colon!4851) (Null!4851) (Comma!4851) (LeftBracket!4851) (False!9703) (LeftBrace!4851) (ImaginaryLiteralValue!4851 (text!34403 List!30553)) (StringLiteralValue!14553 (value!149516 List!30553)) (EOFValue!4851 (value!149517 List!30553)) (IdentValue!4851 (value!149518 List!30553)) (DelimiterValue!9703 (value!149519 List!30553)) (DedentValue!4851 (value!149520 List!30553)) (NewLineValue!4851 (value!149521 List!30553)) (IntegerValue!14553 (value!149522 (_ BitVec 32)) (text!34404 List!30553)) (IntegerValue!14554 (value!149523 Int) (text!34405 List!30553)) (Times!4851) (Or!4851) (Equal!4851) (Minus!4851) (Broken!24259 (value!149524 List!30553)) (And!4851) (Div!4851) (LessEqual!4851) (Mod!4851) (Concat!12625) (Not!4851) (Plus!4851) (SpaceValue!4851 (value!149525 List!30553)) (IntegerValue!14555 (value!149526 Int) (text!34406 List!30553)) (StringLiteralValue!14554 (text!34407 List!30553)) (FloatLiteralValue!9703 (text!34408 List!30553)) (BytesLiteralValue!4851 (value!149527 List!30553)) (CommentValue!9703 (value!149528 List!30553)) (StringLiteralValue!14555 (value!149529 List!30553)) (ErrorTokenValue!4851 (msg!4912 List!30553)) )
))
(declare-datatypes ((List!30554 0))(
  ( (Nil!30454) (Cons!30454 (h!35874 C!15704) (t!216307 List!30554)) )
))
(declare-datatypes ((IArray!19005 0))(
  ( (IArray!19006 (innerList!9560 List!30554)) )
))
(declare-datatypes ((Conc!9500 0))(
  ( (Node!9500 (left!23518 Conc!9500) (right!23848 Conc!9500) (csize!19230 Int) (cheight!9711 Int)) (Leaf!14555 (xs!12500 IArray!19005) (csize!19231 Int)) (Empty!9500) )
))
(declare-datatypes ((BalanceConc!18614 0))(
  ( (BalanceConc!18615 (c!422847 Conc!9500)) )
))
(declare-datatypes ((TokenValueInjection!9142 0))(
  ( (TokenValueInjection!9143 (toValue!6543 Int) (toChars!6402 Int)) )
))
(declare-datatypes ((String!34139 0))(
  ( (String!34140 (value!149530 String)) )
))
(declare-datatypes ((Rule!9058 0))(
  ( (Rule!9059 (regex!4629 Regex!7773) (tag!5123 String!34139) (isSeparator!4629 Bool) (transformation!4629 TokenValueInjection!9142)) )
))
(declare-datatypes ((List!30555 0))(
  ( (Nil!30455) (Cons!30455 (h!35875 Rule!9058) (t!216308 List!30555)) )
))
(declare-fun rules!1726 () List!30555)

(get-info :version)

(assert (= (and b!2630085 ((_ is Cons!30455) rules!1726)) b!2630114))

(declare-fun order!16477 () Int)

(declare-fun order!16475 () Int)

(declare-fun dynLambda!13029 (Int Int) Int)

(declare-fun dynLambda!13030 (Int Int) Int)

(assert (=> b!2630116 (< (dynLambda!13029 order!16475 (toValue!6543 (transformation!4629 (h!35875 rules!1726)))) (dynLambda!13030 order!16477 lambda!98642))))

(declare-fun order!16479 () Int)

(declare-fun dynLambda!13031 (Int Int) Int)

(assert (=> b!2630116 (< (dynLambda!13031 order!16479 (toChars!6402 (transformation!4629 (h!35875 rules!1726)))) (dynLambda!13030 order!16477 lambda!98642))))

(assert (=> b!2630085 true))

(declare-fun e!1659429 () Bool)

(declare-fun e!1659432 () Bool)

(assert (=> b!2630085 (= e!1659429 e!1659432)))

(declare-fun res!1107345 () Bool)

(assert (=> b!2630085 (=> res!1107345 e!1659432)))

(declare-fun lt!925467 () Bool)

(declare-datatypes ((Token!8728 0))(
  ( (Token!8729 (value!149531 TokenValue!4851) (rule!7011 Rule!9058) (size!23540 Int) (originalCharacters!5395 List!30554)) )
))
(declare-datatypes ((tuple2!29964 0))(
  ( (tuple2!29965 (_1!17524 Token!8728) (_2!17524 BalanceConc!18614)) )
))
(declare-datatypes ((Option!6020 0))(
  ( (None!6019) (Some!6019 (v!32406 tuple2!29964)) )
))
(declare-fun lt!925470 () Option!6020)

(declare-fun lt!925471 () Token!8728)

(assert (=> b!2630085 (= res!1107345 (or (and (not lt!925467) (= (_1!17524 (v!32406 lt!925470)) lt!925471)) (and (not lt!925467) (not (= (_1!17524 (v!32406 lt!925470)) lt!925471))) ((_ is None!6019) lt!925470)))))

(assert (=> b!2630085 (= lt!925467 (not ((_ is Some!6019) lt!925470)))))

(declare-datatypes ((LexerInterface!4226 0))(
  ( (LexerInterfaceExt!4223 (__x!19536 Int)) (Lexer!4224) )
))
(declare-fun thiss!14197 () LexerInterface!4226)

(declare-fun separatorToken!156 () Token!8728)

(declare-datatypes ((List!30556 0))(
  ( (Nil!30456) (Cons!30456 (h!35876 Token!8728) (t!216309 List!30556)) )
))
(declare-datatypes ((IArray!19007 0))(
  ( (IArray!19008 (innerList!9561 List!30556)) )
))
(declare-datatypes ((Conc!9501 0))(
  ( (Node!9501 (left!23519 Conc!9501) (right!23849 Conc!9501) (csize!19232 Int) (cheight!9712 Int)) (Leaf!14556 (xs!12501 IArray!19007) (csize!19233 Int)) (Empty!9501) )
))
(declare-datatypes ((BalanceConc!18616 0))(
  ( (BalanceConc!18617 (c!422848 Conc!9501)) )
))
(declare-fun v!6381 () BalanceConc!18616)

(declare-fun from!862 () Int)

(declare-fun maxPrefixZipperSequence!956 (LexerInterface!4226 List!30555 BalanceConc!18614) Option!6020)

(declare-fun ++!7415 (BalanceConc!18614 BalanceConc!18614) BalanceConc!18614)

(declare-fun charsOf!2920 (Token!8728) BalanceConc!18614)

(declare-fun printWithSeparatorTokenWhenNeededRec!504 (LexerInterface!4226 List!30555 BalanceConc!18616 Token!8728 Int) BalanceConc!18614)

(assert (=> b!2630085 (= lt!925470 (maxPrefixZipperSequence!956 thiss!14197 rules!1726 (++!7415 (charsOf!2920 lt!925471) (printWithSeparatorTokenWhenNeededRec!504 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-datatypes ((Unit!44473 0))(
  ( (Unit!44474) )
))
(declare-fun lt!925473 () Unit!44473)

(declare-fun lt!925477 () List!30556)

(declare-fun forallContained!985 (List!30556 Int Token!8728) Unit!44473)

(assert (=> b!2630085 (= lt!925473 (forallContained!985 lt!925477 lambda!98642 lt!925471))))

(declare-fun b!2630086 () Bool)

(declare-fun e!1659441 () Bool)

(assert (=> b!2630086 (= e!1659441 (not e!1659429))))

(declare-fun res!1107347 () Bool)

(assert (=> b!2630086 (=> res!1107347 e!1659429)))

(declare-fun contains!5760 (BalanceConc!18616 Token!8728) Bool)

(assert (=> b!2630086 (= res!1107347 (not (contains!5760 v!6381 lt!925471)))))

(declare-fun apply!7240 (BalanceConc!18616 Int) Token!8728)

(assert (=> b!2630086 (= lt!925471 (apply!7240 v!6381 from!862))))

(declare-fun lt!925468 () List!30556)

(declare-fun tail!4266 (List!30556) List!30556)

(declare-fun drop!1625 (List!30556 Int) List!30556)

(assert (=> b!2630086 (= (tail!4266 lt!925468) (drop!1625 lt!925477 (+ 1 from!862)))))

(declare-fun lt!925474 () Unit!44473)

(declare-fun lemmaDropTail!814 (List!30556 Int) Unit!44473)

(assert (=> b!2630086 (= lt!925474 (lemmaDropTail!814 lt!925477 from!862))))

(declare-fun head!6028 (List!30556) Token!8728)

(declare-fun apply!7241 (List!30556 Int) Token!8728)

(assert (=> b!2630086 (= (head!6028 lt!925468) (apply!7241 lt!925477 from!862))))

(assert (=> b!2630086 (= lt!925468 (drop!1625 lt!925477 from!862))))

(declare-fun lt!925469 () Unit!44473)

(declare-fun lemmaDropApply!840 (List!30556 Int) Unit!44473)

(assert (=> b!2630086 (= lt!925469 (lemmaDropApply!840 lt!925477 from!862))))

(declare-fun b!2630087 () Bool)

(declare-fun tp!833896 () Bool)

(declare-fun e!1659439 () Bool)

(declare-fun e!1659434 () Bool)

(declare-fun inv!41269 (String!34139) Bool)

(declare-fun inv!41274 (TokenValueInjection!9142) Bool)

(assert (=> b!2630087 (= e!1659439 (and tp!833896 (inv!41269 (tag!5123 (rule!7011 separatorToken!156))) (inv!41274 (transformation!4629 (rule!7011 separatorToken!156))) e!1659434))))

(declare-fun b!2630088 () Bool)

(declare-fun e!1659435 () Bool)

(declare-fun e!1659438 () Bool)

(assert (=> b!2630088 (= e!1659435 e!1659438)))

(declare-fun res!1107343 () Bool)

(assert (=> b!2630088 (=> (not res!1107343) (not e!1659438))))

(declare-fun lt!925476 () Int)

(assert (=> b!2630088 (= res!1107343 (<= from!862 lt!925476))))

(declare-fun size!23541 (BalanceConc!18616) Int)

(assert (=> b!2630088 (= lt!925476 (size!23541 v!6381))))

(declare-fun b!2630089 () Bool)

(declare-fun e!1659440 () Bool)

(declare-fun tp!833891 () Bool)

(declare-fun inv!21 (TokenValue!4851) Bool)

(assert (=> b!2630089 (= e!1659440 (and (inv!21 (value!149531 separatorToken!156)) e!1659439 tp!833891))))

(declare-fun b!2630090 () Bool)

(declare-fun res!1107353 () Bool)

(assert (=> b!2630090 (=> (not res!1107353) (not e!1659438))))

(declare-fun sepAndNonSepRulesDisjointChars!1202 (List!30555 List!30555) Bool)

(assert (=> b!2630090 (= res!1107353 (sepAndNonSepRulesDisjointChars!1202 rules!1726 rules!1726))))

(declare-fun b!2630091 () Bool)

(declare-fun res!1107341 () Bool)

(assert (=> b!2630091 (=> res!1107341 e!1659429)))

(declare-fun contains!5761 (List!30556 Token!8728) Bool)

(assert (=> b!2630091 (= res!1107341 (not (contains!5761 lt!925477 lt!925471)))))

(declare-fun e!1659443 () Bool)

(assert (=> b!2630092 (= e!1659443 (and tp!833888 tp!833892))))

(declare-fun b!2630093 () Bool)

(declare-fun res!1107346 () Bool)

(assert (=> b!2630093 (=> (not res!1107346) (not e!1659438))))

(declare-fun rulesInvariant!3726 (LexerInterface!4226 List!30555) Bool)

(assert (=> b!2630093 (= res!1107346 (rulesInvariant!3726 thiss!14197 rules!1726))))

(declare-fun b!2630094 () Bool)

(assert (=> b!2630094 (= e!1659438 e!1659441)))

(declare-fun res!1107348 () Bool)

(assert (=> b!2630094 (=> (not res!1107348) (not e!1659441))))

(assert (=> b!2630094 (= res!1107348 (< from!862 lt!925476))))

(declare-fun lt!925475 () Unit!44473)

(declare-fun lt!925472 () List!30556)

(declare-fun lemmaContentSubsetPreservesForall!298 (List!30556 List!30556 Int) Unit!44473)

(assert (=> b!2630094 (= lt!925475 (lemmaContentSubsetPreservesForall!298 lt!925477 lt!925472 lambda!98641))))

(declare-fun dropList!932 (BalanceConc!18616 Int) List!30556)

(assert (=> b!2630094 (= lt!925472 (dropList!932 v!6381 from!862))))

(declare-fun list!11445 (BalanceConc!18616) List!30556)

(assert (=> b!2630094 (= lt!925477 (list!11445 v!6381))))

(declare-fun res!1107352 () Bool)

(assert (=> start!255654 (=> (not res!1107352) (not e!1659435))))

(assert (=> start!255654 (= res!1107352 (and ((_ is Lexer!4224) thiss!14197) (>= from!862 0)))))

(assert (=> start!255654 e!1659435))

(assert (=> start!255654 true))

(declare-fun e!1659436 () Bool)

(assert (=> start!255654 e!1659436))

(declare-fun inv!41275 (Token!8728) Bool)

(assert (=> start!255654 (and (inv!41275 separatorToken!156) e!1659440)))

(declare-fun e!1659433 () Bool)

(declare-fun inv!41276 (BalanceConc!18616) Bool)

(assert (=> start!255654 (and (inv!41276 v!6381) e!1659433)))

(declare-fun b!2630095 () Bool)

(declare-fun res!1107342 () Bool)

(assert (=> b!2630095 (=> res!1107342 e!1659432)))

(declare-fun rulesProduceEachTokenIndividuallyList!1459 (LexerInterface!4226 List!30555 List!30556) Bool)

(assert (=> b!2630095 (= res!1107342 (not (rulesProduceEachTokenIndividuallyList!1459 thiss!14197 rules!1726 lt!925472)))))

(assert (=> b!2630096 (= e!1659434 (and tp!833895 tp!833894))))

(declare-fun b!2630097 () Bool)

(declare-fun e!1659430 () Bool)

(declare-fun tp!833893 () Bool)

(assert (=> b!2630097 (= e!1659436 (and e!1659430 tp!833893))))

(declare-fun tp!833890 () Bool)

(declare-fun b!2630098 () Bool)

(assert (=> b!2630098 (= e!1659430 (and tp!833890 (inv!41269 (tag!5123 (h!35875 rules!1726))) (inv!41274 (transformation!4629 (h!35875 rules!1726))) e!1659443))))

(declare-fun b!2630099 () Bool)

(declare-fun res!1107351 () Bool)

(assert (=> b!2630099 (=> (not res!1107351) (not e!1659438))))

(declare-fun rulesProduceEachTokenIndividually!1046 (LexerInterface!4226 List!30555 BalanceConc!18616) Bool)

(assert (=> b!2630099 (= res!1107351 (rulesProduceEachTokenIndividually!1046 thiss!14197 rules!1726 v!6381))))

(declare-fun res!1107340 () Bool)

(assert (=> b!2630100 (=> (not res!1107340) (not e!1659438))))

(declare-fun forall!6362 (BalanceConc!18616 Int) Bool)

(assert (=> b!2630100 (= res!1107340 (forall!6362 v!6381 lambda!98641))))

(declare-fun b!2630101 () Bool)

(declare-fun res!1107349 () Bool)

(assert (=> b!2630101 (=> (not res!1107349) (not e!1659438))))

(assert (=> b!2630101 (= res!1107349 (isSeparator!4629 (rule!7011 separatorToken!156)))))

(declare-fun b!2630102 () Bool)

(declare-fun res!1107344 () Bool)

(assert (=> b!2630102 (=> (not res!1107344) (not e!1659438))))

(declare-fun rulesProduceIndividualToken!1938 (LexerInterface!4226 List!30555 Token!8728) Bool)

(assert (=> b!2630102 (= res!1107344 (rulesProduceIndividualToken!1938 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2630103 () Bool)

(declare-fun res!1107350 () Bool)

(assert (=> b!2630103 (=> (not res!1107350) (not e!1659438))))

(declare-fun isEmpty!17368 (List!30555) Bool)

(assert (=> b!2630103 (= res!1107350 (not (isEmpty!17368 rules!1726)))))

(declare-fun b!2630104 () Bool)

(declare-fun forall!6363 (List!30556 Int) Bool)

(assert (=> b!2630104 (= e!1659432 (forall!6363 lt!925472 lambda!98641))))

(declare-fun b!2630105 () Bool)

(declare-fun tp!833889 () Bool)

(declare-fun inv!41277 (Conc!9501) Bool)

(assert (=> b!2630105 (= e!1659433 (and (inv!41277 (c!422848 v!6381)) tp!833889))))

(assert (= (and start!255654 res!1107352) b!2630088))

(assert (= (and b!2630088 res!1107343) b!2630103))

(assert (= (and b!2630103 res!1107350) b!2630093))

(assert (= (and b!2630093 res!1107346) b!2630099))

(assert (= (and b!2630099 res!1107351) b!2630102))

(assert (= (and b!2630102 res!1107344) b!2630101))

(assert (= (and b!2630101 res!1107349) b!2630100))

(assert (= (and b!2630100 res!1107340) b!2630090))

(assert (= (and b!2630090 res!1107353) b!2630094))

(assert (= (and b!2630094 res!1107348) b!2630086))

(assert (= (and b!2630086 (not res!1107347)) b!2630091))

(assert (= (and b!2630091 (not res!1107341)) b!2630085))

(assert (= (and b!2630085 (not res!1107345)) b!2630095))

(assert (= (and b!2630095 (not res!1107342)) b!2630104))

(assert (= b!2630098 b!2630092))

(assert (= b!2630097 b!2630098))

(assert (= (and start!255654 ((_ is Cons!30455) rules!1726)) b!2630097))

(assert (= b!2630087 b!2630096))

(assert (= b!2630089 b!2630087))

(assert (= start!255654 b!2630089))

(assert (= start!255654 b!2630105))

(declare-fun m!2973159 () Bool)

(assert (=> b!2630089 m!2973159))

(declare-fun m!2973161 () Bool)

(assert (=> b!2630088 m!2973161))

(declare-fun m!2973163 () Bool)

(assert (=> b!2630103 m!2973163))

(declare-fun m!2973165 () Bool)

(assert (=> b!2630098 m!2973165))

(declare-fun m!2973167 () Bool)

(assert (=> b!2630098 m!2973167))

(declare-fun m!2973169 () Bool)

(assert (=> b!2630100 m!2973169))

(declare-fun m!2973171 () Bool)

(assert (=> b!2630091 m!2973171))

(declare-fun m!2973173 () Bool)

(assert (=> b!2630087 m!2973173))

(declare-fun m!2973175 () Bool)

(assert (=> b!2630087 m!2973175))

(declare-fun m!2973177 () Bool)

(assert (=> b!2630095 m!2973177))

(declare-fun m!2973179 () Bool)

(assert (=> b!2630085 m!2973179))

(declare-fun m!2973181 () Bool)

(assert (=> b!2630085 m!2973181))

(assert (=> b!2630085 m!2973179))

(assert (=> b!2630085 m!2973181))

(declare-fun m!2973183 () Bool)

(assert (=> b!2630085 m!2973183))

(assert (=> b!2630085 m!2973183))

(declare-fun m!2973185 () Bool)

(assert (=> b!2630085 m!2973185))

(declare-fun m!2973187 () Bool)

(assert (=> b!2630085 m!2973187))

(declare-fun m!2973189 () Bool)

(assert (=> start!255654 m!2973189))

(declare-fun m!2973191 () Bool)

(assert (=> start!255654 m!2973191))

(declare-fun m!2973193 () Bool)

(assert (=> b!2630102 m!2973193))

(declare-fun m!2973195 () Bool)

(assert (=> b!2630104 m!2973195))

(declare-fun m!2973197 () Bool)

(assert (=> b!2630105 m!2973197))

(declare-fun m!2973199 () Bool)

(assert (=> b!2630090 m!2973199))

(declare-fun m!2973201 () Bool)

(assert (=> b!2630093 m!2973201))

(declare-fun m!2973203 () Bool)

(assert (=> b!2630086 m!2973203))

(declare-fun m!2973205 () Bool)

(assert (=> b!2630086 m!2973205))

(declare-fun m!2973207 () Bool)

(assert (=> b!2630086 m!2973207))

(declare-fun m!2973209 () Bool)

(assert (=> b!2630086 m!2973209))

(declare-fun m!2973211 () Bool)

(assert (=> b!2630086 m!2973211))

(declare-fun m!2973213 () Bool)

(assert (=> b!2630086 m!2973213))

(declare-fun m!2973215 () Bool)

(assert (=> b!2630086 m!2973215))

(declare-fun m!2973217 () Bool)

(assert (=> b!2630086 m!2973217))

(declare-fun m!2973219 () Bool)

(assert (=> b!2630086 m!2973219))

(declare-fun m!2973221 () Bool)

(assert (=> b!2630094 m!2973221))

(declare-fun m!2973223 () Bool)

(assert (=> b!2630094 m!2973223))

(declare-fun m!2973225 () Bool)

(assert (=> b!2630094 m!2973225))

(declare-fun m!2973227 () Bool)

(assert (=> b!2630099 m!2973227))

(check-sat (not b!2630098) (not b!2630099) (not b_next!74829) (not b_next!74835) (not b!2630100) (not b!2630114) (not b!2630087) (not b!2630104) (not b!2630090) b_and!192687 (not b!2630086) (not b!2630105) (not b_next!74831) b_and!192683 (not b!2630085) (not b!2630095) (not b!2630094) (not b_next!74833) (not b!2630093) (not b!2630088) (not b!2630102) (not b!2630097) (not start!255654) (not b!2630103) b_and!192685 b_and!192689 (not b!2630091) (not b!2630089))
(check-sat (not b_next!74833) (not b_next!74829) (not b_next!74835) b_and!192687 (not b_next!74831) b_and!192683 b_and!192685 b_and!192689)
