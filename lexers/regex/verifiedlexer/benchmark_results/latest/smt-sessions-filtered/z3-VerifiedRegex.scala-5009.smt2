; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!253682 () Bool)

(assert start!253682)

(declare-fun b!2609464 () Bool)

(declare-fun b_free!73245 () Bool)

(declare-fun b_next!73949 () Bool)

(assert (=> b!2609464 (= b_free!73245 (not b_next!73949))))

(declare-fun tp!828909 () Bool)

(declare-fun b_and!190803 () Bool)

(assert (=> b!2609464 (= tp!828909 b_and!190803)))

(declare-fun b_free!73247 () Bool)

(declare-fun b_next!73951 () Bool)

(assert (=> b!2609464 (= b_free!73247 (not b_next!73951))))

(declare-fun tp!828906 () Bool)

(declare-fun b_and!190805 () Bool)

(assert (=> b!2609464 (= tp!828906 b_and!190805)))

(declare-fun b!2609466 () Bool)

(declare-fun b_free!73249 () Bool)

(declare-fun b_next!73953 () Bool)

(assert (=> b!2609466 (= b_free!73249 (not b_next!73953))))

(declare-fun tp!828904 () Bool)

(declare-fun b_and!190807 () Bool)

(assert (=> b!2609466 (= tp!828904 b_and!190807)))

(declare-fun b_free!73251 () Bool)

(declare-fun b_next!73955 () Bool)

(assert (=> b!2609466 (= b_free!73251 (not b_next!73955))))

(declare-fun tp!828911 () Bool)

(declare-fun b_and!190809 () Bool)

(assert (=> b!2609466 (= tp!828911 b_and!190809)))

(declare-fun b!2609451 () Bool)

(declare-fun res!1098219 () Bool)

(declare-fun e!1646297 () Bool)

(assert (=> b!2609451 (=> (not res!1098219) (not e!1646297))))

(declare-datatypes ((LexerInterface!4136 0))(
  ( (LexerInterfaceExt!4133 (__x!19355 Int)) (Lexer!4134) )
))
(declare-fun thiss!14197 () LexerInterface!4136)

(declare-datatypes ((List!30181 0))(
  ( (Nil!30081) (Cons!30081 (h!35501 (_ BitVec 16)) (t!213936 List!30181)) )
))
(declare-datatypes ((C!15524 0))(
  ( (C!15525 (val!9696 Int)) )
))
(declare-datatypes ((Regex!7683 0))(
  ( (ElementMatch!7683 (c!419570 C!15524)) (Concat!12444 (regOne!15878 Regex!7683) (regTwo!15878 Regex!7683)) (EmptyExpr!7683) (Star!7683 (reg!8012 Regex!7683)) (EmptyLang!7683) (Union!7683 (regOne!15879 Regex!7683) (regTwo!15879 Regex!7683)) )
))
(declare-datatypes ((List!30182 0))(
  ( (Nil!30082) (Cons!30082 (h!35502 C!15524) (t!213937 List!30182)) )
))
(declare-datatypes ((IArray!18645 0))(
  ( (IArray!18646 (innerList!9380 List!30182)) )
))
(declare-datatypes ((Conc!9320 0))(
  ( (Node!9320 (left!23137 Conc!9320) (right!23467 Conc!9320) (csize!18870 Int) (cheight!9531 Int)) (Leaf!14330 (xs!12304 IArray!18645) (csize!18871 Int)) (Empty!9320) )
))
(declare-datatypes ((BalanceConc!18254 0))(
  ( (BalanceConc!18255 (c!419571 Conc!9320)) )
))
(declare-datatypes ((TokenValue!4761 0))(
  ( (FloatLiteralValue!9522 (text!33772 List!30181)) (TokenValueExt!4760 (__x!19356 Int)) (Broken!23805 (value!146940 List!30181)) (Object!4860) (End!4761) (Def!4761) (Underscore!4761) (Match!4761) (Else!4761) (Error!4761) (Case!4761) (If!4761) (Extends!4761) (Abstract!4761) (Class!4761) (Val!4761) (DelimiterValue!9522 (del!4821 List!30181)) (KeywordValue!4767 (value!146941 List!30181)) (CommentValue!9522 (value!146942 List!30181)) (WhitespaceValue!9522 (value!146943 List!30181)) (IndentationValue!4761 (value!146944 List!30181)) (String!33688) (Int32!4761) (Broken!23806 (value!146945 List!30181)) (Boolean!4762) (Unit!44082) (OperatorValue!4764 (op!4821 List!30181)) (IdentifierValue!9522 (value!146946 List!30181)) (IdentifierValue!9523 (value!146947 List!30181)) (WhitespaceValue!9523 (value!146948 List!30181)) (True!9522) (False!9522) (Broken!23807 (value!146949 List!30181)) (Broken!23808 (value!146950 List!30181)) (True!9523) (RightBrace!4761) (RightBracket!4761) (Colon!4761) (Null!4761) (Comma!4761) (LeftBracket!4761) (False!9523) (LeftBrace!4761) (ImaginaryLiteralValue!4761 (text!33773 List!30181)) (StringLiteralValue!14283 (value!146951 List!30181)) (EOFValue!4761 (value!146952 List!30181)) (IdentValue!4761 (value!146953 List!30181)) (DelimiterValue!9523 (value!146954 List!30181)) (DedentValue!4761 (value!146955 List!30181)) (NewLineValue!4761 (value!146956 List!30181)) (IntegerValue!14283 (value!146957 (_ BitVec 32)) (text!33774 List!30181)) (IntegerValue!14284 (value!146958 Int) (text!33775 List!30181)) (Times!4761) (Or!4761) (Equal!4761) (Minus!4761) (Broken!23809 (value!146959 List!30181)) (And!4761) (Div!4761) (LessEqual!4761) (Mod!4761) (Concat!12445) (Not!4761) (Plus!4761) (SpaceValue!4761 (value!146960 List!30181)) (IntegerValue!14285 (value!146961 Int) (text!33776 List!30181)) (StringLiteralValue!14284 (text!33777 List!30181)) (FloatLiteralValue!9523 (text!33778 List!30181)) (BytesLiteralValue!4761 (value!146962 List!30181)) (CommentValue!9523 (value!146963 List!30181)) (StringLiteralValue!14285 (value!146964 List!30181)) (ErrorTokenValue!4761 (msg!4822 List!30181)) )
))
(declare-datatypes ((String!33689 0))(
  ( (String!33690 (value!146965 String)) )
))
(declare-datatypes ((TokenValueInjection!8962 0))(
  ( (TokenValueInjection!8963 (toValue!6441 Int) (toChars!6300 Int)) )
))
(declare-datatypes ((Rule!8878 0))(
  ( (Rule!8879 (regex!4539 Regex!7683) (tag!5029 String!33689) (isSeparator!4539 Bool) (transformation!4539 TokenValueInjection!8962)) )
))
(declare-datatypes ((List!30183 0))(
  ( (Nil!30083) (Cons!30083 (h!35503 Rule!8878) (t!213938 List!30183)) )
))
(declare-fun rules!1726 () List!30183)

(declare-datatypes ((Token!8548 0))(
  ( (Token!8549 (value!146966 TokenValue!4761) (rule!6909 Rule!8878) (size!23306 Int) (originalCharacters!5305 List!30182)) )
))
(declare-fun separatorToken!156 () Token!8548)

(declare-fun rulesProduceIndividualToken!1848 (LexerInterface!4136 List!30183 Token!8548) Bool)

(assert (=> b!2609451 (= res!1098219 (rulesProduceIndividualToken!1848 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2609452 () Bool)

(declare-fun res!1098215 () Bool)

(declare-fun e!1646303 () Bool)

(assert (=> b!2609452 (=> (not res!1098215) (not e!1646303))))

(declare-datatypes ((List!30184 0))(
  ( (Nil!30084) (Cons!30084 (h!35504 Token!8548) (t!213939 List!30184)) )
))
(declare-fun lt!916962 () List!30184)

(declare-fun rulesProduceEachTokenIndividuallyList!1433 (LexerInterface!4136 List!30183 List!30184) Bool)

(assert (=> b!2609452 (= res!1098215 (rulesProduceEachTokenIndividuallyList!1433 thiss!14197 rules!1726 lt!916962))))

(declare-fun b!2609453 () Bool)

(declare-fun res!1098216 () Bool)

(assert (=> b!2609453 (=> (not res!1098216) (not e!1646297))))

(assert (=> b!2609453 (= res!1098216 (isSeparator!4539 (rule!6909 separatorToken!156)))))

(declare-fun b!2609454 () Bool)

(declare-fun res!1098220 () Bool)

(assert (=> b!2609454 (=> (not res!1098220) (not e!1646297))))

(declare-fun rulesInvariant!3636 (LexerInterface!4136 List!30183) Bool)

(assert (=> b!2609454 (= res!1098220 (rulesInvariant!3636 thiss!14197 rules!1726))))

(declare-fun b!2609455 () Bool)

(declare-fun e!1646305 () Bool)

(assert (=> b!2609455 (= e!1646305 e!1646297)))

(declare-fun res!1098210 () Bool)

(assert (=> b!2609455 (=> (not res!1098210) (not e!1646297))))

(declare-fun from!862 () Int)

(declare-fun lt!916963 () Int)

(assert (=> b!2609455 (= res!1098210 (<= from!862 lt!916963))))

(declare-datatypes ((IArray!18647 0))(
  ( (IArray!18648 (innerList!9381 List!30184)) )
))
(declare-datatypes ((Conc!9321 0))(
  ( (Node!9321 (left!23138 Conc!9321) (right!23468 Conc!9321) (csize!18872 Int) (cheight!9532 Int)) (Leaf!14331 (xs!12305 IArray!18647) (csize!18873 Int)) (Empty!9321) )
))
(declare-datatypes ((BalanceConc!18256 0))(
  ( (BalanceConc!18257 (c!419572 Conc!9321)) )
))
(declare-fun v!6381 () BalanceConc!18256)

(declare-fun size!23307 (BalanceConc!18256) Int)

(assert (=> b!2609455 (= lt!916963 (size!23307 v!6381))))

(declare-fun e!1646306 () Bool)

(declare-fun b!2609456 () Bool)

(declare-fun e!1646296 () Bool)

(declare-fun tp!828907 () Bool)

(declare-fun inv!40696 (String!33689) Bool)

(declare-fun inv!40701 (TokenValueInjection!8962) Bool)

(assert (=> b!2609456 (= e!1646306 (and tp!828907 (inv!40696 (tag!5029 (h!35503 rules!1726))) (inv!40701 (transformation!4539 (h!35503 rules!1726))) e!1646296))))

(declare-fun res!1098214 () Bool)

(assert (=> start!253682 (=> (not res!1098214) (not e!1646305))))

(get-info :version)

(assert (=> start!253682 (= res!1098214 (and ((_ is Lexer!4134) thiss!14197) (>= from!862 0)))))

(assert (=> start!253682 e!1646305))

(assert (=> start!253682 true))

(declare-fun e!1646302 () Bool)

(assert (=> start!253682 e!1646302))

(declare-fun e!1646294 () Bool)

(declare-fun inv!40702 (Token!8548) Bool)

(assert (=> start!253682 (and (inv!40702 separatorToken!156) e!1646294)))

(declare-fun e!1646304 () Bool)

(declare-fun inv!40703 (BalanceConc!18256) Bool)

(assert (=> start!253682 (and (inv!40703 v!6381) e!1646304)))

(declare-fun b!2609457 () Bool)

(declare-fun tp!828908 () Bool)

(declare-fun inv!40704 (Conc!9321) Bool)

(assert (=> b!2609457 (= e!1646304 (and (inv!40704 (c!419572 v!6381)) tp!828908))))

(declare-fun tp!828912 () Bool)

(declare-fun e!1646298 () Bool)

(declare-fun e!1646301 () Bool)

(declare-fun b!2609458 () Bool)

(assert (=> b!2609458 (= e!1646298 (and tp!828912 (inv!40696 (tag!5029 (rule!6909 separatorToken!156))) (inv!40701 (transformation!4539 (rule!6909 separatorToken!156))) e!1646301))))

(declare-fun b!2609459 () Bool)

(assert (=> b!2609459 (= e!1646303 false)))

(declare-fun b!2609460 () Bool)

(declare-fun res!1098213 () Bool)

(assert (=> b!2609460 (=> (not res!1098213) (not e!1646297))))

(declare-fun lambda!97568 () Int)

(declare-fun forall!6231 (BalanceConc!18256 Int) Bool)

(assert (=> b!2609460 (= res!1098213 (forall!6231 v!6381 lambda!97568))))

(declare-fun b!2609461 () Bool)

(declare-fun res!1098211 () Bool)

(assert (=> b!2609461 (=> (not res!1098211) (not e!1646297))))

(declare-fun isEmpty!17212 (List!30183) Bool)

(assert (=> b!2609461 (= res!1098211 (not (isEmpty!17212 rules!1726)))))

(declare-fun b!2609462 () Bool)

(declare-fun tp!828905 () Bool)

(assert (=> b!2609462 (= e!1646302 (and e!1646306 tp!828905))))

(declare-fun tp!828910 () Bool)

(declare-fun b!2609463 () Bool)

(declare-fun inv!21 (TokenValue!4761) Bool)

(assert (=> b!2609463 (= e!1646294 (and (inv!21 (value!146966 separatorToken!156)) e!1646298 tp!828910))))

(assert (=> b!2609464 (= e!1646301 (and tp!828909 tp!828906))))

(declare-fun b!2609465 () Bool)

(declare-fun res!1098212 () Bool)

(assert (=> b!2609465 (=> (not res!1098212) (not e!1646297))))

(declare-fun sepAndNonSepRulesDisjointChars!1112 (List!30183 List!30183) Bool)

(assert (=> b!2609465 (= res!1098212 (sepAndNonSepRulesDisjointChars!1112 rules!1726 rules!1726))))

(assert (=> b!2609466 (= e!1646296 (and tp!828904 tp!828911))))

(declare-fun b!2609467 () Bool)

(declare-fun res!1098217 () Bool)

(assert (=> b!2609467 (=> (not res!1098217) (not e!1646297))))

(declare-fun rulesProduceEachTokenIndividually!956 (LexerInterface!4136 List!30183 BalanceConc!18256) Bool)

(assert (=> b!2609467 (= res!1098217 (rulesProduceEachTokenIndividually!956 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2609468 () Bool)

(assert (=> b!2609468 (= e!1646297 e!1646303)))

(declare-fun res!1098218 () Bool)

(assert (=> b!2609468 (=> (not res!1098218) (not e!1646303))))

(assert (=> b!2609468 (= res!1098218 (>= from!862 lt!916963))))

(declare-fun lt!916960 () List!30184)

(declare-datatypes ((Unit!44083 0))(
  ( (Unit!44084) )
))
(declare-fun lt!916961 () Unit!44083)

(declare-fun lemmaContentSubsetPreservesForall!208 (List!30184 List!30184 Int) Unit!44083)

(assert (=> b!2609468 (= lt!916961 (lemmaContentSubsetPreservesForall!208 lt!916960 lt!916962 lambda!97568))))

(declare-fun dropList!842 (BalanceConc!18256 Int) List!30184)

(assert (=> b!2609468 (= lt!916962 (dropList!842 v!6381 from!862))))

(declare-fun list!11297 (BalanceConc!18256) List!30184)

(assert (=> b!2609468 (= lt!916960 (list!11297 v!6381))))

(assert (= (and start!253682 res!1098214) b!2609455))

(assert (= (and b!2609455 res!1098210) b!2609461))

(assert (= (and b!2609461 res!1098211) b!2609454))

(assert (= (and b!2609454 res!1098220) b!2609467))

(assert (= (and b!2609467 res!1098217) b!2609451))

(assert (= (and b!2609451 res!1098219) b!2609453))

(assert (= (and b!2609453 res!1098216) b!2609460))

(assert (= (and b!2609460 res!1098213) b!2609465))

(assert (= (and b!2609465 res!1098212) b!2609468))

(assert (= (and b!2609468 res!1098218) b!2609452))

(assert (= (and b!2609452 res!1098215) b!2609459))

(assert (= b!2609456 b!2609466))

(assert (= b!2609462 b!2609456))

(assert (= (and start!253682 ((_ is Cons!30083) rules!1726)) b!2609462))

(assert (= b!2609458 b!2609464))

(assert (= b!2609463 b!2609458))

(assert (= start!253682 b!2609463))

(assert (= start!253682 b!2609457))

(declare-fun m!2944195 () Bool)

(assert (=> b!2609461 m!2944195))

(declare-fun m!2944197 () Bool)

(assert (=> b!2609457 m!2944197))

(declare-fun m!2944199 () Bool)

(assert (=> b!2609467 m!2944199))

(declare-fun m!2944201 () Bool)

(assert (=> b!2609455 m!2944201))

(declare-fun m!2944203 () Bool)

(assert (=> b!2609458 m!2944203))

(declare-fun m!2944205 () Bool)

(assert (=> b!2609458 m!2944205))

(declare-fun m!2944207 () Bool)

(assert (=> b!2609463 m!2944207))

(declare-fun m!2944209 () Bool)

(assert (=> start!253682 m!2944209))

(declare-fun m!2944211 () Bool)

(assert (=> start!253682 m!2944211))

(declare-fun m!2944213 () Bool)

(assert (=> b!2609451 m!2944213))

(declare-fun m!2944215 () Bool)

(assert (=> b!2609465 m!2944215))

(declare-fun m!2944217 () Bool)

(assert (=> b!2609452 m!2944217))

(declare-fun m!2944219 () Bool)

(assert (=> b!2609454 m!2944219))

(declare-fun m!2944221 () Bool)

(assert (=> b!2609468 m!2944221))

(declare-fun m!2944223 () Bool)

(assert (=> b!2609468 m!2944223))

(declare-fun m!2944225 () Bool)

(assert (=> b!2609468 m!2944225))

(declare-fun m!2944227 () Bool)

(assert (=> b!2609456 m!2944227))

(declare-fun m!2944229 () Bool)

(assert (=> b!2609456 m!2944229))

(declare-fun m!2944231 () Bool)

(assert (=> b!2609460 m!2944231))

(check-sat (not start!253682) (not b_next!73949) (not b!2609463) (not b!2609456) (not b!2609455) (not b_next!73953) (not b!2609465) (not b_next!73955) (not b_next!73951) (not b!2609460) (not b!2609461) (not b!2609451) (not b!2609457) b_and!190807 (not b!2609468) b_and!190809 (not b!2609454) b_and!190803 b_and!190805 (not b!2609462) (not b!2609458) (not b!2609452) (not b!2609467))
(check-sat (not b_next!73949) b_and!190803 b_and!190805 (not b_next!73953) (not b_next!73955) (not b_next!73951) b_and!190807 b_and!190809)
