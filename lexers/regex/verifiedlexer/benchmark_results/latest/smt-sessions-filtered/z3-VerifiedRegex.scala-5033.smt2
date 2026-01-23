; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!254878 () Bool)

(assert start!254878)

(declare-fun b!2620471 () Bool)

(declare-fun b_free!73725 () Bool)

(declare-fun b_next!74429 () Bool)

(assert (=> b!2620471 (= b_free!73725 (not b_next!74429))))

(declare-fun tp!831673 () Bool)

(declare-fun b_and!191815 () Bool)

(assert (=> b!2620471 (= tp!831673 b_and!191815)))

(declare-fun b_free!73727 () Bool)

(declare-fun b_next!74431 () Bool)

(assert (=> b!2620471 (= b_free!73727 (not b_next!74431))))

(declare-fun tp!831676 () Bool)

(declare-fun b_and!191817 () Bool)

(assert (=> b!2620471 (= tp!831676 b_and!191817)))

(declare-fun b!2620464 () Bool)

(declare-fun b_free!73729 () Bool)

(declare-fun b_next!74433 () Bool)

(assert (=> b!2620464 (= b_free!73729 (not b_next!74433))))

(declare-fun tp!831670 () Bool)

(declare-fun b_and!191819 () Bool)

(assert (=> b!2620464 (= tp!831670 b_and!191819)))

(declare-fun b_free!73731 () Bool)

(declare-fun b_next!74435 () Bool)

(assert (=> b!2620464 (= b_free!73731 (not b_next!74435))))

(declare-fun tp!831675 () Bool)

(declare-fun b_and!191821 () Bool)

(assert (=> b!2620464 (= tp!831675 b_and!191821)))

(declare-fun bs!474865 () Bool)

(declare-fun b!2620460 () Bool)

(declare-fun b!2620463 () Bool)

(assert (= bs!474865 (and b!2620460 b!2620463)))

(declare-fun lambda!98152 () Int)

(declare-fun lambda!98151 () Int)

(assert (=> bs!474865 (not (= lambda!98152 lambda!98151))))

(declare-fun b!2620482 () Bool)

(declare-fun e!1653380 () Bool)

(assert (=> b!2620482 (= e!1653380 true)))

(declare-fun b!2620481 () Bool)

(declare-fun e!1653379 () Bool)

(assert (=> b!2620481 (= e!1653379 e!1653380)))

(declare-fun b!2620480 () Bool)

(declare-fun e!1653378 () Bool)

(assert (=> b!2620480 (= e!1653378 e!1653379)))

(assert (=> b!2620460 e!1653378))

(assert (= b!2620481 b!2620482))

(assert (= b!2620480 b!2620481))

(declare-datatypes ((List!30381 0))(
  ( (Nil!30281) (Cons!30281 (h!35701 (_ BitVec 16)) (t!215218 List!30381)) )
))
(declare-datatypes ((C!15620 0))(
  ( (C!15621 (val!9744 Int)) )
))
(declare-datatypes ((String!33928 0))(
  ( (String!33929 (value!148308 String)) )
))
(declare-datatypes ((Regex!7731 0))(
  ( (ElementMatch!7731 (c!421314 C!15620)) (Concat!12540 (regOne!15974 Regex!7731) (regTwo!15974 Regex!7731)) (EmptyExpr!7731) (Star!7731 (reg!8060 Regex!7731)) (EmptyLang!7731) (Union!7731 (regOne!15975 Regex!7731) (regTwo!15975 Regex!7731)) )
))
(declare-datatypes ((TokenValue!4809 0))(
  ( (FloatLiteralValue!9618 (text!34108 List!30381)) (TokenValueExt!4808 (__x!19451 Int)) (Broken!24045 (value!148309 List!30381)) (Object!4908) (End!4809) (Def!4809) (Underscore!4809) (Match!4809) (Else!4809) (Error!4809) (Case!4809) (If!4809) (Extends!4809) (Abstract!4809) (Class!4809) (Val!4809) (DelimiterValue!9618 (del!4869 List!30381)) (KeywordValue!4815 (value!148310 List!30381)) (CommentValue!9618 (value!148311 List!30381)) (WhitespaceValue!9618 (value!148312 List!30381)) (IndentationValue!4809 (value!148313 List!30381)) (String!33930) (Int32!4809) (Broken!24046 (value!148314 List!30381)) (Boolean!4810) (Unit!44294) (OperatorValue!4812 (op!4869 List!30381)) (IdentifierValue!9618 (value!148315 List!30381)) (IdentifierValue!9619 (value!148316 List!30381)) (WhitespaceValue!9619 (value!148317 List!30381)) (True!9618) (False!9618) (Broken!24047 (value!148318 List!30381)) (Broken!24048 (value!148319 List!30381)) (True!9619) (RightBrace!4809) (RightBracket!4809) (Colon!4809) (Null!4809) (Comma!4809) (LeftBracket!4809) (False!9619) (LeftBrace!4809) (ImaginaryLiteralValue!4809 (text!34109 List!30381)) (StringLiteralValue!14427 (value!148320 List!30381)) (EOFValue!4809 (value!148321 List!30381)) (IdentValue!4809 (value!148322 List!30381)) (DelimiterValue!9619 (value!148323 List!30381)) (DedentValue!4809 (value!148324 List!30381)) (NewLineValue!4809 (value!148325 List!30381)) (IntegerValue!14427 (value!148326 (_ BitVec 32)) (text!34110 List!30381)) (IntegerValue!14428 (value!148327 Int) (text!34111 List!30381)) (Times!4809) (Or!4809) (Equal!4809) (Minus!4809) (Broken!24049 (value!148328 List!30381)) (And!4809) (Div!4809) (LessEqual!4809) (Mod!4809) (Concat!12541) (Not!4809) (Plus!4809) (SpaceValue!4809 (value!148329 List!30381)) (IntegerValue!14429 (value!148330 Int) (text!34112 List!30381)) (StringLiteralValue!14428 (text!34113 List!30381)) (FloatLiteralValue!9619 (text!34114 List!30381)) (BytesLiteralValue!4809 (value!148331 List!30381)) (CommentValue!9619 (value!148332 List!30381)) (StringLiteralValue!14429 (value!148333 List!30381)) (ErrorTokenValue!4809 (msg!4870 List!30381)) )
))
(declare-datatypes ((List!30382 0))(
  ( (Nil!30282) (Cons!30282 (h!35702 C!15620) (t!215219 List!30382)) )
))
(declare-datatypes ((IArray!18837 0))(
  ( (IArray!18838 (innerList!9476 List!30382)) )
))
(declare-datatypes ((Conc!9416 0))(
  ( (Node!9416 (left!23329 Conc!9416) (right!23659 Conc!9416) (csize!19062 Int) (cheight!9627 Int)) (Leaf!14450 (xs!12410 IArray!18837) (csize!19063 Int)) (Empty!9416) )
))
(declare-datatypes ((BalanceConc!18446 0))(
  ( (BalanceConc!18447 (c!421315 Conc!9416)) )
))
(declare-datatypes ((TokenValueInjection!9058 0))(
  ( (TokenValueInjection!9059 (toValue!6497 Int) (toChars!6356 Int)) )
))
(declare-datatypes ((Rule!8974 0))(
  ( (Rule!8975 (regex!4587 Regex!7731) (tag!5079 String!33928) (isSeparator!4587 Bool) (transformation!4587 TokenValueInjection!9058)) )
))
(declare-datatypes ((List!30383 0))(
  ( (Nil!30283) (Cons!30283 (h!35703 Rule!8974) (t!215220 List!30383)) )
))
(declare-fun rules!1726 () List!30383)

(get-info :version)

(assert (= (and b!2620460 ((_ is Cons!30283) rules!1726)) b!2620480))

(declare-fun order!16211 () Int)

(declare-fun order!16213 () Int)

(declare-fun dynLambda!12883 (Int Int) Int)

(declare-fun dynLambda!12884 (Int Int) Int)

(assert (=> b!2620482 (< (dynLambda!12883 order!16211 (toValue!6497 (transformation!4587 (h!35703 rules!1726)))) (dynLambda!12884 order!16213 lambda!98152))))

(declare-fun order!16215 () Int)

(declare-fun dynLambda!12885 (Int Int) Int)

(assert (=> b!2620482 (< (dynLambda!12885 order!16215 (toChars!6356 (transformation!4587 (h!35703 rules!1726)))) (dynLambda!12884 order!16213 lambda!98152))))

(assert (=> b!2620460 true))

(declare-fun b!2620453 () Bool)

(declare-fun e!1653371 () Bool)

(declare-fun e!1653364 () Bool)

(assert (=> b!2620453 (= e!1653371 e!1653364)))

(declare-fun res!1103035 () Bool)

(assert (=> b!2620453 (=> (not res!1103035) (not e!1653364))))

(declare-fun from!862 () Int)

(declare-fun lt!921238 () Int)

(assert (=> b!2620453 (= res!1103035 (< from!862 lt!921238))))

(declare-datatypes ((Token!8644 0))(
  ( (Token!8645 (value!148334 TokenValue!4809) (rule!6963 Rule!8974) (size!23438 Int) (originalCharacters!5353 List!30382)) )
))
(declare-datatypes ((List!30384 0))(
  ( (Nil!30284) (Cons!30284 (h!35704 Token!8644) (t!215221 List!30384)) )
))
(declare-fun lt!921241 () List!30384)

(declare-datatypes ((Unit!44295 0))(
  ( (Unit!44296) )
))
(declare-fun lt!921239 () Unit!44295)

(declare-datatypes ((IArray!18839 0))(
  ( (IArray!18840 (innerList!9477 List!30384)) )
))
(declare-datatypes ((Conc!9417 0))(
  ( (Node!9417 (left!23330 Conc!9417) (right!23660 Conc!9417) (csize!19064 Int) (cheight!9628 Int)) (Leaf!14451 (xs!12411 IArray!18839) (csize!19065 Int)) (Empty!9417) )
))
(declare-datatypes ((BalanceConc!18448 0))(
  ( (BalanceConc!18449 (c!421316 Conc!9417)) )
))
(declare-fun v!6381 () BalanceConc!18448)

(declare-fun lemmaContentSubsetPreservesForall!256 (List!30384 List!30384 Int) Unit!44295)

(declare-fun dropList!890 (BalanceConc!18448 Int) List!30384)

(assert (=> b!2620453 (= lt!921239 (lemmaContentSubsetPreservesForall!256 lt!921241 (dropList!890 v!6381 from!862) lambda!98151))))

(declare-fun list!11371 (BalanceConc!18448) List!30384)

(assert (=> b!2620453 (= lt!921241 (list!11371 v!6381))))

(declare-fun b!2620454 () Bool)

(declare-fun res!1103039 () Bool)

(assert (=> b!2620454 (=> (not res!1103039) (not e!1653371))))

(declare-fun separatorToken!156 () Token!8644)

(assert (=> b!2620454 (= res!1103039 (isSeparator!4587 (rule!6963 separatorToken!156)))))

(declare-fun b!2620455 () Bool)

(declare-fun res!1103042 () Bool)

(assert (=> b!2620455 (=> (not res!1103042) (not e!1653371))))

(declare-datatypes ((LexerInterface!4184 0))(
  ( (LexerInterfaceExt!4181 (__x!19452 Int)) (Lexer!4182) )
))
(declare-fun thiss!14197 () LexerInterface!4184)

(declare-fun rulesInvariant!3684 (LexerInterface!4184 List!30383) Bool)

(assert (=> b!2620455 (= res!1103042 (rulesInvariant!3684 thiss!14197 rules!1726))))

(declare-fun tp!831669 () Bool)

(declare-fun b!2620456 () Bool)

(declare-fun e!1653360 () Bool)

(declare-fun e!1653370 () Bool)

(declare-fun inv!41012 (String!33928) Bool)

(declare-fun inv!41017 (TokenValueInjection!9058) Bool)

(assert (=> b!2620456 (= e!1653360 (and tp!831669 (inv!41012 (tag!5079 (h!35703 rules!1726))) (inv!41017 (transformation!4587 (h!35703 rules!1726))) e!1653370))))

(declare-fun b!2620457 () Bool)

(declare-fun e!1653368 () Bool)

(declare-fun tp!831674 () Bool)

(declare-fun inv!41018 (Conc!9417) Bool)

(assert (=> b!2620457 (= e!1653368 (and (inv!41018 (c!421316 v!6381)) tp!831674))))

(declare-fun tp!831672 () Bool)

(declare-fun e!1653369 () Bool)

(declare-fun b!2620458 () Bool)

(declare-fun e!1653363 () Bool)

(assert (=> b!2620458 (= e!1653369 (and tp!831672 (inv!41012 (tag!5079 (rule!6963 separatorToken!156))) (inv!41017 (transformation!4587 (rule!6963 separatorToken!156))) e!1653363))))

(declare-fun b!2620459 () Bool)

(declare-fun res!1103040 () Bool)

(declare-fun e!1653362 () Bool)

(assert (=> b!2620459 (=> res!1103040 e!1653362)))

(declare-fun lt!921233 () Token!8644)

(declare-fun contains!5666 (List!30384 Token!8644) Bool)

(assert (=> b!2620459 (= res!1103040 (not (contains!5666 lt!921241 lt!921233)))))

(declare-fun res!1103032 () Bool)

(declare-fun e!1653365 () Bool)

(assert (=> start!254878 (=> (not res!1103032) (not e!1653365))))

(assert (=> start!254878 (= res!1103032 (and ((_ is Lexer!4182) thiss!14197) (>= from!862 0)))))

(assert (=> start!254878 e!1653365))

(assert (=> start!254878 true))

(declare-fun e!1653366 () Bool)

(assert (=> start!254878 e!1653366))

(declare-fun e!1653367 () Bool)

(declare-fun inv!41019 (Token!8644) Bool)

(assert (=> start!254878 (and (inv!41019 separatorToken!156) e!1653367)))

(declare-fun inv!41020 (BalanceConc!18448) Bool)

(assert (=> start!254878 (and (inv!41020 v!6381) e!1653368)))

(declare-datatypes ((tuple2!29840 0))(
  ( (tuple2!29841 (_1!17462 Token!8644) (_2!17462 BalanceConc!18446)) )
))
(declare-datatypes ((Option!5972 0))(
  ( (None!5971) (Some!5971 (v!32332 tuple2!29840)) )
))
(declare-fun lt!921237 () Option!5972)

(declare-fun lt!921240 () Bool)

(assert (=> b!2620460 (= e!1653362 (or (and (not lt!921240) (= (_1!17462 (v!32332 lt!921237)) lt!921233)) lt!921240 (= (_1!17462 (v!32332 lt!921237)) lt!921233) (<= 0 from!862)))))

(assert (=> b!2620460 (= lt!921240 (not ((_ is Some!5971) lt!921237)))))

(declare-fun maxPrefixZipperSequence!914 (LexerInterface!4184 List!30383 BalanceConc!18446) Option!5972)

(declare-fun ++!7363 (BalanceConc!18446 BalanceConc!18446) BalanceConc!18446)

(declare-fun charsOf!2878 (Token!8644) BalanceConc!18446)

(declare-fun printWithSeparatorTokenWhenNeededRec!462 (LexerInterface!4184 List!30383 BalanceConc!18448 Token!8644 Int) BalanceConc!18446)

(assert (=> b!2620460 (= lt!921237 (maxPrefixZipperSequence!914 thiss!14197 rules!1726 (++!7363 (charsOf!2878 lt!921233) (printWithSeparatorTokenWhenNeededRec!462 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!921235 () Unit!44295)

(declare-fun forallContained!943 (List!30384 Int Token!8644) Unit!44295)

(assert (=> b!2620460 (= lt!921235 (forallContained!943 lt!921241 lambda!98152 lt!921233))))

(declare-fun b!2620461 () Bool)

(declare-fun res!1103034 () Bool)

(assert (=> b!2620461 (=> (not res!1103034) (not e!1653371))))

(declare-fun isEmpty!17298 (List!30383) Bool)

(assert (=> b!2620461 (= res!1103034 (not (isEmpty!17298 rules!1726)))))

(declare-fun b!2620462 () Bool)

(declare-fun res!1103037 () Bool)

(assert (=> b!2620462 (=> (not res!1103037) (not e!1653371))))

(declare-fun sepAndNonSepRulesDisjointChars!1160 (List!30383 List!30383) Bool)

(assert (=> b!2620462 (= res!1103037 (sepAndNonSepRulesDisjointChars!1160 rules!1726 rules!1726))))

(declare-fun res!1103038 () Bool)

(assert (=> b!2620463 (=> (not res!1103038) (not e!1653371))))

(declare-fun forall!6305 (BalanceConc!18448 Int) Bool)

(assert (=> b!2620463 (= res!1103038 (forall!6305 v!6381 lambda!98151))))

(assert (=> b!2620464 (= e!1653363 (and tp!831670 tp!831675))))

(declare-fun b!2620465 () Bool)

(declare-fun res!1103033 () Bool)

(assert (=> b!2620465 (=> (not res!1103033) (not e!1653371))))

(declare-fun rulesProduceEachTokenIndividually!1004 (LexerInterface!4184 List!30383 BalanceConc!18448) Bool)

(assert (=> b!2620465 (= res!1103033 (rulesProduceEachTokenIndividually!1004 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2620466 () Bool)

(declare-fun tp!831671 () Bool)

(assert (=> b!2620466 (= e!1653366 (and e!1653360 tp!831671))))

(declare-fun b!2620467 () Bool)

(assert (=> b!2620467 (= e!1653364 (not e!1653362))))

(declare-fun res!1103041 () Bool)

(assert (=> b!2620467 (=> res!1103041 e!1653362)))

(declare-fun contains!5667 (BalanceConc!18448 Token!8644) Bool)

(assert (=> b!2620467 (= res!1103041 (not (contains!5667 v!6381 lt!921233)))))

(declare-fun apply!7148 (BalanceConc!18448 Int) Token!8644)

(assert (=> b!2620467 (= lt!921233 (apply!7148 v!6381 from!862))))

(declare-fun lt!921236 () List!30384)

(declare-fun tail!4222 (List!30384) List!30384)

(declare-fun drop!1583 (List!30384 Int) List!30384)

(assert (=> b!2620467 (= (tail!4222 lt!921236) (drop!1583 lt!921241 (+ 1 from!862)))))

(declare-fun lt!921232 () Unit!44295)

(declare-fun lemmaDropTail!772 (List!30384 Int) Unit!44295)

(assert (=> b!2620467 (= lt!921232 (lemmaDropTail!772 lt!921241 from!862))))

(declare-fun head!5984 (List!30384) Token!8644)

(declare-fun apply!7149 (List!30384 Int) Token!8644)

(assert (=> b!2620467 (= (head!5984 lt!921236) (apply!7149 lt!921241 from!862))))

(assert (=> b!2620467 (= lt!921236 (drop!1583 lt!921241 from!862))))

(declare-fun lt!921234 () Unit!44295)

(declare-fun lemmaDropApply!798 (List!30384 Int) Unit!44295)

(assert (=> b!2620467 (= lt!921234 (lemmaDropApply!798 lt!921241 from!862))))

(declare-fun b!2620468 () Bool)

(declare-fun res!1103036 () Bool)

(assert (=> b!2620468 (=> (not res!1103036) (not e!1653371))))

(declare-fun rulesProduceIndividualToken!1896 (LexerInterface!4184 List!30383 Token!8644) Bool)

(assert (=> b!2620468 (= res!1103036 (rulesProduceIndividualToken!1896 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun tp!831668 () Bool)

(declare-fun b!2620469 () Bool)

(declare-fun inv!21 (TokenValue!4809) Bool)

(assert (=> b!2620469 (= e!1653367 (and (inv!21 (value!148334 separatorToken!156)) e!1653369 tp!831668))))

(declare-fun b!2620470 () Bool)

(assert (=> b!2620470 (= e!1653365 e!1653371)))

(declare-fun res!1103031 () Bool)

(assert (=> b!2620470 (=> (not res!1103031) (not e!1653371))))

(assert (=> b!2620470 (= res!1103031 (<= from!862 lt!921238))))

(declare-fun size!23439 (BalanceConc!18448) Int)

(assert (=> b!2620470 (= lt!921238 (size!23439 v!6381))))

(assert (=> b!2620471 (= e!1653370 (and tp!831673 tp!831676))))

(assert (= (and start!254878 res!1103032) b!2620470))

(assert (= (and b!2620470 res!1103031) b!2620461))

(assert (= (and b!2620461 res!1103034) b!2620455))

(assert (= (and b!2620455 res!1103042) b!2620465))

(assert (= (and b!2620465 res!1103033) b!2620468))

(assert (= (and b!2620468 res!1103036) b!2620454))

(assert (= (and b!2620454 res!1103039) b!2620463))

(assert (= (and b!2620463 res!1103038) b!2620462))

(assert (= (and b!2620462 res!1103037) b!2620453))

(assert (= (and b!2620453 res!1103035) b!2620467))

(assert (= (and b!2620467 (not res!1103041)) b!2620459))

(assert (= (and b!2620459 (not res!1103040)) b!2620460))

(assert (= b!2620456 b!2620471))

(assert (= b!2620466 b!2620456))

(assert (= (and start!254878 ((_ is Cons!30283) rules!1726)) b!2620466))

(assert (= b!2620458 b!2620464))

(assert (= b!2620469 b!2620458))

(assert (= start!254878 b!2620469))

(assert (= start!254878 b!2620457))

(declare-fun m!2958939 () Bool)

(assert (=> b!2620467 m!2958939))

(declare-fun m!2958941 () Bool)

(assert (=> b!2620467 m!2958941))

(declare-fun m!2958943 () Bool)

(assert (=> b!2620467 m!2958943))

(declare-fun m!2958945 () Bool)

(assert (=> b!2620467 m!2958945))

(declare-fun m!2958947 () Bool)

(assert (=> b!2620467 m!2958947))

(declare-fun m!2958949 () Bool)

(assert (=> b!2620467 m!2958949))

(declare-fun m!2958951 () Bool)

(assert (=> b!2620467 m!2958951))

(declare-fun m!2958953 () Bool)

(assert (=> b!2620467 m!2958953))

(declare-fun m!2958955 () Bool)

(assert (=> b!2620467 m!2958955))

(declare-fun m!2958957 () Bool)

(assert (=> b!2620465 m!2958957))

(declare-fun m!2958959 () Bool)

(assert (=> b!2620468 m!2958959))

(declare-fun m!2958961 () Bool)

(assert (=> b!2620463 m!2958961))

(declare-fun m!2958963 () Bool)

(assert (=> b!2620469 m!2958963))

(declare-fun m!2958965 () Bool)

(assert (=> b!2620460 m!2958965))

(declare-fun m!2958967 () Bool)

(assert (=> b!2620460 m!2958967))

(declare-fun m!2958969 () Bool)

(assert (=> b!2620460 m!2958969))

(declare-fun m!2958971 () Bool)

(assert (=> b!2620460 m!2958971))

(declare-fun m!2958973 () Bool)

(assert (=> b!2620460 m!2958973))

(assert (=> b!2620460 m!2958971))

(assert (=> b!2620460 m!2958965))

(assert (=> b!2620460 m!2958973))

(declare-fun m!2958975 () Bool)

(assert (=> b!2620458 m!2958975))

(declare-fun m!2958977 () Bool)

(assert (=> b!2620458 m!2958977))

(declare-fun m!2958979 () Bool)

(assert (=> b!2620459 m!2958979))

(declare-fun m!2958981 () Bool)

(assert (=> b!2620455 m!2958981))

(declare-fun m!2958983 () Bool)

(assert (=> b!2620461 m!2958983))

(declare-fun m!2958985 () Bool)

(assert (=> b!2620457 m!2958985))

(declare-fun m!2958987 () Bool)

(assert (=> start!254878 m!2958987))

(declare-fun m!2958989 () Bool)

(assert (=> start!254878 m!2958989))

(declare-fun m!2958991 () Bool)

(assert (=> b!2620462 m!2958991))

(declare-fun m!2958993 () Bool)

(assert (=> b!2620470 m!2958993))

(declare-fun m!2958995 () Bool)

(assert (=> b!2620453 m!2958995))

(assert (=> b!2620453 m!2958995))

(declare-fun m!2958997 () Bool)

(assert (=> b!2620453 m!2958997))

(declare-fun m!2958999 () Bool)

(assert (=> b!2620453 m!2958999))

(declare-fun m!2959001 () Bool)

(assert (=> b!2620456 m!2959001))

(declare-fun m!2959003 () Bool)

(assert (=> b!2620456 m!2959003))

(check-sat (not b!2620456) (not b!2620470) (not b!2620455) (not b!2620462) b_and!191819 (not b!2620453) (not b!2620468) (not b_next!74433) (not b!2620457) b_and!191815 (not b_next!74431) b_and!191817 (not b_next!74429) (not b!2620459) (not b!2620458) (not b!2620463) (not b!2620467) (not b_next!74435) (not b!2620466) (not b!2620469) (not b!2620460) (not b!2620480) (not b!2620465) (not start!254878) b_and!191821 (not b!2620461))
(check-sat b_and!191815 (not b_next!74429) (not b_next!74435) b_and!191819 (not b_next!74433) b_and!191821 (not b_next!74431) b_and!191817)
