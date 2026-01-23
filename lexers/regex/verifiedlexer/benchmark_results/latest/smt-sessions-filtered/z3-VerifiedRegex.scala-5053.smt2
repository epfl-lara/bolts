; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255650 () Bool)

(assert start!255650)

(declare-fun b!2629947 () Bool)

(declare-fun b_free!74109 () Bool)

(declare-fun b_next!74813 () Bool)

(assert (=> b!2629947 (= b_free!74109 (not b_next!74813))))

(declare-fun tp!833841 () Bool)

(declare-fun b_and!192667 () Bool)

(assert (=> b!2629947 (= tp!833841 b_and!192667)))

(declare-fun b_free!74111 () Bool)

(declare-fun b_next!74815 () Bool)

(assert (=> b!2629947 (= b_free!74111 (not b_next!74815))))

(declare-fun tp!833836 () Bool)

(declare-fun b_and!192669 () Bool)

(assert (=> b!2629947 (= tp!833836 b_and!192669)))

(declare-fun b!2629935 () Bool)

(declare-fun b_free!74113 () Bool)

(declare-fun b_next!74817 () Bool)

(assert (=> b!2629935 (= b_free!74113 (not b_next!74817))))

(declare-fun tp!833838 () Bool)

(declare-fun b_and!192671 () Bool)

(assert (=> b!2629935 (= tp!833838 b_and!192671)))

(declare-fun b_free!74115 () Bool)

(declare-fun b_next!74819 () Bool)

(assert (=> b!2629935 (= b_free!74115 (not b_next!74819))))

(declare-fun tp!833839 () Bool)

(declare-fun b_and!192673 () Bool)

(assert (=> b!2629935 (= tp!833839 b_and!192673)))

(declare-fun bs!475697 () Bool)

(declare-fun b!2629940 () Bool)

(declare-fun b!2629942 () Bool)

(assert (= bs!475697 (and b!2629940 b!2629942)))

(declare-fun lambda!98622 () Int)

(declare-fun lambda!98621 () Int)

(assert (=> bs!475697 (not (= lambda!98622 lambda!98621))))

(declare-fun b!2629964 () Bool)

(declare-fun e!1659344 () Bool)

(assert (=> b!2629964 (= e!1659344 true)))

(declare-fun b!2629963 () Bool)

(declare-fun e!1659343 () Bool)

(assert (=> b!2629963 (= e!1659343 e!1659344)))

(declare-fun b!2629962 () Bool)

(declare-fun e!1659342 () Bool)

(assert (=> b!2629962 (= e!1659342 e!1659343)))

(assert (=> b!2629940 e!1659342))

(assert (= b!2629963 b!2629964))

(assert (= b!2629962 b!2629963))

(declare-datatypes ((List!30545 0))(
  ( (Nil!30445) (Cons!30445 (h!35865 (_ BitVec 16)) (t!216290 List!30545)) )
))
(declare-datatypes ((C!15700 0))(
  ( (C!15701 (val!9784 Int)) )
))
(declare-datatypes ((TokenValue!4849 0))(
  ( (FloatLiteralValue!9698 (text!34388 List!30545)) (TokenValueExt!4848 (__x!19531 Int)) (Broken!24245 (value!149448 List!30545)) (Object!4948) (End!4849) (Def!4849) (Underscore!4849) (Match!4849) (Else!4849) (Error!4849) (Case!4849) (If!4849) (Extends!4849) (Abstract!4849) (Class!4849) (Val!4849) (DelimiterValue!9698 (del!4909 List!30545)) (KeywordValue!4855 (value!149449 List!30545)) (CommentValue!9698 (value!149450 List!30545)) (WhitespaceValue!9698 (value!149451 List!30545)) (IndentationValue!4849 (value!149452 List!30545)) (String!34128) (Int32!4849) (Broken!24246 (value!149453 List!30545)) (Boolean!4850) (Unit!44466) (OperatorValue!4852 (op!4909 List!30545)) (IdentifierValue!9698 (value!149454 List!30545)) (IdentifierValue!9699 (value!149455 List!30545)) (WhitespaceValue!9699 (value!149456 List!30545)) (True!9698) (False!9698) (Broken!24247 (value!149457 List!30545)) (Broken!24248 (value!149458 List!30545)) (True!9699) (RightBrace!4849) (RightBracket!4849) (Colon!4849) (Null!4849) (Comma!4849) (LeftBracket!4849) (False!9699) (LeftBrace!4849) (ImaginaryLiteralValue!4849 (text!34389 List!30545)) (StringLiteralValue!14547 (value!149459 List!30545)) (EOFValue!4849 (value!149460 List!30545)) (IdentValue!4849 (value!149461 List!30545)) (DelimiterValue!9699 (value!149462 List!30545)) (DedentValue!4849 (value!149463 List!30545)) (NewLineValue!4849 (value!149464 List!30545)) (IntegerValue!14547 (value!149465 (_ BitVec 32)) (text!34390 List!30545)) (IntegerValue!14548 (value!149466 Int) (text!34391 List!30545)) (Times!4849) (Or!4849) (Equal!4849) (Minus!4849) (Broken!24249 (value!149467 List!30545)) (And!4849) (Div!4849) (LessEqual!4849) (Mod!4849) (Concat!12620) (Not!4849) (Plus!4849) (SpaceValue!4849 (value!149468 List!30545)) (IntegerValue!14549 (value!149469 Int) (text!34392 List!30545)) (StringLiteralValue!14548 (text!34393 List!30545)) (FloatLiteralValue!9699 (text!34394 List!30545)) (BytesLiteralValue!4849 (value!149470 List!30545)) (CommentValue!9699 (value!149471 List!30545)) (StringLiteralValue!14549 (value!149472 List!30545)) (ErrorTokenValue!4849 (msg!4910 List!30545)) )
))
(declare-datatypes ((List!30546 0))(
  ( (Nil!30446) (Cons!30446 (h!35866 C!15700) (t!216291 List!30546)) )
))
(declare-datatypes ((IArray!18997 0))(
  ( (IArray!18998 (innerList!9556 List!30546)) )
))
(declare-datatypes ((Conc!9496 0))(
  ( (Node!9496 (left!23509 Conc!9496) (right!23839 Conc!9496) (csize!19222 Int) (cheight!9707 Int)) (Leaf!14550 (xs!12496 IArray!18997) (csize!19223 Int)) (Empty!9496) )
))
(declare-datatypes ((BalanceConc!18606 0))(
  ( (BalanceConc!18607 (c!422840 Conc!9496)) )
))
(declare-datatypes ((TokenValueInjection!9138 0))(
  ( (TokenValueInjection!9139 (toValue!6541 Int) (toChars!6400 Int)) )
))
(declare-datatypes ((Regex!7771 0))(
  ( (ElementMatch!7771 (c!422841 C!15700)) (Concat!12621 (regOne!16054 Regex!7771) (regTwo!16054 Regex!7771)) (EmptyExpr!7771) (Star!7771 (reg!8100 Regex!7771)) (EmptyLang!7771) (Union!7771 (regOne!16055 Regex!7771) (regTwo!16055 Regex!7771)) )
))
(declare-datatypes ((String!34129 0))(
  ( (String!34130 (value!149473 String)) )
))
(declare-datatypes ((Rule!9054 0))(
  ( (Rule!9055 (regex!4627 Regex!7771) (tag!5121 String!34129) (isSeparator!4627 Bool) (transformation!4627 TokenValueInjection!9138)) )
))
(declare-datatypes ((List!30547 0))(
  ( (Nil!30447) (Cons!30447 (h!35867 Rule!9054) (t!216292 List!30547)) )
))
(declare-fun rules!1726 () List!30547)

(get-info :version)

(assert (= (and b!2629940 ((_ is Cons!30447) rules!1726)) b!2629962))

(declare-fun order!16465 () Int)

(declare-fun order!16463 () Int)

(declare-fun dynLambda!13023 (Int Int) Int)

(declare-fun dynLambda!13024 (Int Int) Int)

(assert (=> b!2629964 (< (dynLambda!13023 order!16463 (toValue!6541 (transformation!4627 (h!35867 rules!1726)))) (dynLambda!13024 order!16465 lambda!98622))))

(declare-fun order!16467 () Int)

(declare-fun dynLambda!13025 (Int Int) Int)

(assert (=> b!2629964 (< (dynLambda!13025 order!16467 (toChars!6400 (transformation!4627 (h!35867 rules!1726)))) (dynLambda!13024 order!16465 lambda!98622))))

(assert (=> b!2629940 true))

(declare-fun b!2629934 () Bool)

(declare-fun e!1659325 () Bool)

(declare-fun e!1659329 () Bool)

(assert (=> b!2629934 (= e!1659325 e!1659329)))

(declare-fun res!1107268 () Bool)

(assert (=> b!2629934 (=> (not res!1107268) (not e!1659329))))

(declare-fun from!862 () Int)

(declare-fun lt!925400 () Int)

(assert (=> b!2629934 (= res!1107268 (< from!862 lt!925400))))

(declare-datatypes ((Unit!44467 0))(
  ( (Unit!44468) )
))
(declare-fun lt!925402 () Unit!44467)

(declare-datatypes ((Token!8724 0))(
  ( (Token!8725 (value!149474 TokenValue!4849) (rule!7009 Rule!9054) (size!23536 Int) (originalCharacters!5393 List!30546)) )
))
(declare-datatypes ((List!30548 0))(
  ( (Nil!30448) (Cons!30448 (h!35868 Token!8724) (t!216293 List!30548)) )
))
(declare-fun lt!925405 () List!30548)

(declare-fun lt!925409 () List!30548)

(declare-fun lemmaContentSubsetPreservesForall!296 (List!30548 List!30548 Int) Unit!44467)

(assert (=> b!2629934 (= lt!925402 (lemmaContentSubsetPreservesForall!296 lt!925405 lt!925409 lambda!98621))))

(declare-datatypes ((IArray!18999 0))(
  ( (IArray!19000 (innerList!9557 List!30548)) )
))
(declare-datatypes ((Conc!9497 0))(
  ( (Node!9497 (left!23510 Conc!9497) (right!23840 Conc!9497) (csize!19224 Int) (cheight!9708 Int)) (Leaf!14551 (xs!12497 IArray!18999) (csize!19225 Int)) (Empty!9497) )
))
(declare-datatypes ((BalanceConc!18608 0))(
  ( (BalanceConc!18609 (c!422842 Conc!9497)) )
))
(declare-fun v!6381 () BalanceConc!18608)

(declare-fun dropList!930 (BalanceConc!18608 Int) List!30548)

(assert (=> b!2629934 (= lt!925409 (dropList!930 v!6381 from!862))))

(declare-fun list!11443 (BalanceConc!18608) List!30548)

(assert (=> b!2629934 (= lt!925405 (list!11443 v!6381))))

(declare-fun e!1659333 () Bool)

(assert (=> b!2629935 (= e!1659333 (and tp!833838 tp!833839))))

(declare-fun b!2629936 () Bool)

(declare-fun e!1659328 () Bool)

(declare-fun tp!833835 () Bool)

(declare-fun inv!41263 (Conc!9497) Bool)

(assert (=> b!2629936 (= e!1659328 (and (inv!41263 (c!422842 v!6381)) tp!833835))))

(declare-fun res!1107263 () Bool)

(declare-fun e!1659330 () Bool)

(assert (=> start!255650 (=> (not res!1107263) (not e!1659330))))

(declare-datatypes ((LexerInterface!4224 0))(
  ( (LexerInterfaceExt!4221 (__x!19532 Int)) (Lexer!4222) )
))
(declare-fun thiss!14197 () LexerInterface!4224)

(assert (=> start!255650 (= res!1107263 (and ((_ is Lexer!4222) thiss!14197) (>= from!862 0)))))

(assert (=> start!255650 e!1659330))

(assert (=> start!255650 true))

(declare-fun e!1659335 () Bool)

(assert (=> start!255650 e!1659335))

(declare-fun separatorToken!156 () Token!8724)

(declare-fun e!1659331 () Bool)

(declare-fun inv!41264 (Token!8724) Bool)

(assert (=> start!255650 (and (inv!41264 separatorToken!156) e!1659331)))

(declare-fun inv!41265 (BalanceConc!18608) Bool)

(assert (=> start!255650 (and (inv!41265 v!6381) e!1659328)))

(declare-fun b!2629937 () Bool)

(declare-fun res!1107265 () Bool)

(assert (=> b!2629937 (=> (not res!1107265) (not e!1659325))))

(declare-fun isEmpty!17366 (List!30547) Bool)

(assert (=> b!2629937 (= res!1107265 (not (isEmpty!17366 rules!1726)))))

(declare-fun b!2629938 () Bool)

(declare-fun res!1107260 () Bool)

(assert (=> b!2629938 (=> (not res!1107260) (not e!1659325))))

(assert (=> b!2629938 (= res!1107260 (isSeparator!4627 (rule!7009 separatorToken!156)))))

(declare-fun b!2629939 () Bool)

(declare-fun e!1659321 () Bool)

(declare-fun tp!833834 () Bool)

(declare-fun inv!21 (TokenValue!4849) Bool)

(assert (=> b!2629939 (= e!1659331 (and (inv!21 (value!149474 separatorToken!156)) e!1659321 tp!833834))))

(declare-fun e!1659322 () Bool)

(declare-fun e!1659323 () Bool)

(assert (=> b!2629940 (= e!1659322 e!1659323)))

(declare-fun res!1107261 () Bool)

(assert (=> b!2629940 (=> res!1107261 e!1659323)))

(declare-fun lt!925401 () Bool)

(declare-fun lt!925407 () Token!8724)

(declare-datatypes ((tuple2!29960 0))(
  ( (tuple2!29961 (_1!17522 Token!8724) (_2!17522 BalanceConc!18606)) )
))
(declare-datatypes ((Option!6018 0))(
  ( (None!6017) (Some!6017 (v!32404 tuple2!29960)) )
))
(declare-fun lt!925403 () Option!6018)

(assert (=> b!2629940 (= res!1107261 (or (and (not lt!925401) (= (_1!17522 (v!32404 lt!925403)) lt!925407)) (and (not lt!925401) (not (= (_1!17522 (v!32404 lt!925403)) lt!925407))) ((_ is None!6017) lt!925403)))))

(assert (=> b!2629940 (= lt!925401 (not ((_ is Some!6017) lt!925403)))))

(declare-fun maxPrefixZipperSequence!954 (LexerInterface!4224 List!30547 BalanceConc!18606) Option!6018)

(declare-fun ++!7413 (BalanceConc!18606 BalanceConc!18606) BalanceConc!18606)

(declare-fun charsOf!2918 (Token!8724) BalanceConc!18606)

(declare-fun printWithSeparatorTokenWhenNeededRec!502 (LexerInterface!4224 List!30547 BalanceConc!18608 Token!8724 Int) BalanceConc!18606)

(assert (=> b!2629940 (= lt!925403 (maxPrefixZipperSequence!954 thiss!14197 rules!1726 (++!7413 (charsOf!2918 lt!925407) (printWithSeparatorTokenWhenNeededRec!502 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))))

(declare-fun lt!925404 () Unit!44467)

(declare-fun forallContained!983 (List!30548 Int Token!8724) Unit!44467)

(assert (=> b!2629940 (= lt!925404 (forallContained!983 lt!925405 lambda!98622 lt!925407))))

(declare-fun b!2629941 () Bool)

(assert (=> b!2629941 (= e!1659323 true)))

(declare-fun lt!925408 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1457 (LexerInterface!4224 List!30547 List!30548) Bool)

(assert (=> b!2629941 (= lt!925408 (rulesProduceEachTokenIndividuallyList!1457 thiss!14197 rules!1726 lt!925409))))

(declare-fun res!1107269 () Bool)

(assert (=> b!2629942 (=> (not res!1107269) (not e!1659325))))

(declare-fun forall!6359 (BalanceConc!18608 Int) Bool)

(assert (=> b!2629942 (= res!1107269 (forall!6359 v!6381 lambda!98621))))

(declare-fun b!2629943 () Bool)

(declare-fun res!1107266 () Bool)

(assert (=> b!2629943 (=> (not res!1107266) (not e!1659325))))

(declare-fun rulesInvariant!3724 (LexerInterface!4224 List!30547) Bool)

(assert (=> b!2629943 (= res!1107266 (rulesInvariant!3724 thiss!14197 rules!1726))))

(declare-fun b!2629944 () Bool)

(declare-fun res!1107264 () Bool)

(assert (=> b!2629944 (=> (not res!1107264) (not e!1659325))))

(declare-fun rulesProduceEachTokenIndividually!1044 (LexerInterface!4224 List!30547 BalanceConc!18608) Bool)

(assert (=> b!2629944 (= res!1107264 (rulesProduceEachTokenIndividually!1044 thiss!14197 rules!1726 v!6381))))

(declare-fun e!1659332 () Bool)

(declare-fun tp!833840 () Bool)

(declare-fun b!2629945 () Bool)

(declare-fun e!1659334 () Bool)

(declare-fun inv!41258 (String!34129) Bool)

(declare-fun inv!41266 (TokenValueInjection!9138) Bool)

(assert (=> b!2629945 (= e!1659332 (and tp!833840 (inv!41258 (tag!5121 (h!35867 rules!1726))) (inv!41266 (transformation!4627 (h!35867 rules!1726))) e!1659334))))

(declare-fun b!2629946 () Bool)

(declare-fun res!1107259 () Bool)

(assert (=> b!2629946 (=> (not res!1107259) (not e!1659325))))

(declare-fun rulesProduceIndividualToken!1936 (LexerInterface!4224 List!30547 Token!8724) Bool)

(assert (=> b!2629946 (= res!1107259 (rulesProduceIndividualToken!1936 thiss!14197 rules!1726 separatorToken!156))))

(assert (=> b!2629947 (= e!1659334 (and tp!833841 tp!833836))))

(declare-fun b!2629948 () Bool)

(declare-fun res!1107258 () Bool)

(assert (=> b!2629948 (=> (not res!1107258) (not e!1659325))))

(declare-fun sepAndNonSepRulesDisjointChars!1200 (List!30547 List!30547) Bool)

(assert (=> b!2629948 (= res!1107258 (sepAndNonSepRulesDisjointChars!1200 rules!1726 rules!1726))))

(declare-fun b!2629949 () Bool)

(assert (=> b!2629949 (= e!1659329 (not e!1659322))))

(declare-fun res!1107262 () Bool)

(assert (=> b!2629949 (=> res!1107262 e!1659322)))

(declare-fun contains!5756 (BalanceConc!18608 Token!8724) Bool)

(assert (=> b!2629949 (= res!1107262 (not (contains!5756 v!6381 lt!925407)))))

(declare-fun apply!7236 (BalanceConc!18608 Int) Token!8724)

(assert (=> b!2629949 (= lt!925407 (apply!7236 v!6381 from!862))))

(declare-fun lt!925410 () List!30548)

(declare-fun tail!4264 (List!30548) List!30548)

(declare-fun drop!1623 (List!30548 Int) List!30548)

(assert (=> b!2629949 (= (tail!4264 lt!925410) (drop!1623 lt!925405 (+ 1 from!862)))))

(declare-fun lt!925411 () Unit!44467)

(declare-fun lemmaDropTail!812 (List!30548 Int) Unit!44467)

(assert (=> b!2629949 (= lt!925411 (lemmaDropTail!812 lt!925405 from!862))))

(declare-fun head!6026 (List!30548) Token!8724)

(declare-fun apply!7237 (List!30548 Int) Token!8724)

(assert (=> b!2629949 (= (head!6026 lt!925410) (apply!7237 lt!925405 from!862))))

(assert (=> b!2629949 (= lt!925410 (drop!1623 lt!925405 from!862))))

(declare-fun lt!925406 () Unit!44467)

(declare-fun lemmaDropApply!838 (List!30548 Int) Unit!44467)

(assert (=> b!2629949 (= lt!925406 (lemmaDropApply!838 lt!925405 from!862))))

(declare-fun b!2629950 () Bool)

(declare-fun tp!833842 () Bool)

(assert (=> b!2629950 (= e!1659321 (and tp!833842 (inv!41258 (tag!5121 (rule!7009 separatorToken!156))) (inv!41266 (transformation!4627 (rule!7009 separatorToken!156))) e!1659333))))

(declare-fun b!2629951 () Bool)

(assert (=> b!2629951 (= e!1659330 e!1659325)))

(declare-fun res!1107267 () Bool)

(assert (=> b!2629951 (=> (not res!1107267) (not e!1659325))))

(assert (=> b!2629951 (= res!1107267 (<= from!862 lt!925400))))

(declare-fun size!23537 (BalanceConc!18608) Int)

(assert (=> b!2629951 (= lt!925400 (size!23537 v!6381))))

(declare-fun b!2629952 () Bool)

(declare-fun tp!833837 () Bool)

(assert (=> b!2629952 (= e!1659335 (and e!1659332 tp!833837))))

(declare-fun b!2629953 () Bool)

(declare-fun res!1107257 () Bool)

(assert (=> b!2629953 (=> res!1107257 e!1659322)))

(declare-fun contains!5757 (List!30548 Token!8724) Bool)

(assert (=> b!2629953 (= res!1107257 (not (contains!5757 lt!925405 lt!925407)))))

(assert (= (and start!255650 res!1107263) b!2629951))

(assert (= (and b!2629951 res!1107267) b!2629937))

(assert (= (and b!2629937 res!1107265) b!2629943))

(assert (= (and b!2629943 res!1107266) b!2629944))

(assert (= (and b!2629944 res!1107264) b!2629946))

(assert (= (and b!2629946 res!1107259) b!2629938))

(assert (= (and b!2629938 res!1107260) b!2629942))

(assert (= (and b!2629942 res!1107269) b!2629948))

(assert (= (and b!2629948 res!1107258) b!2629934))

(assert (= (and b!2629934 res!1107268) b!2629949))

(assert (= (and b!2629949 (not res!1107262)) b!2629953))

(assert (= (and b!2629953 (not res!1107257)) b!2629940))

(assert (= (and b!2629940 (not res!1107261)) b!2629941))

(assert (= b!2629945 b!2629947))

(assert (= b!2629952 b!2629945))

(assert (= (and start!255650 ((_ is Cons!30447) rules!1726)) b!2629952))

(assert (= b!2629950 b!2629935))

(assert (= b!2629939 b!2629950))

(assert (= start!255650 b!2629939))

(assert (= start!255650 b!2629936))

(declare-fun m!2973021 () Bool)

(assert (=> b!2629942 m!2973021))

(declare-fun m!2973023 () Bool)

(assert (=> b!2629945 m!2973023))

(declare-fun m!2973025 () Bool)

(assert (=> b!2629945 m!2973025))

(declare-fun m!2973027 () Bool)

(assert (=> b!2629950 m!2973027))

(declare-fun m!2973029 () Bool)

(assert (=> b!2629950 m!2973029))

(declare-fun m!2973031 () Bool)

(assert (=> b!2629934 m!2973031))

(declare-fun m!2973033 () Bool)

(assert (=> b!2629934 m!2973033))

(declare-fun m!2973035 () Bool)

(assert (=> b!2629934 m!2973035))

(declare-fun m!2973037 () Bool)

(assert (=> b!2629949 m!2973037))

(declare-fun m!2973039 () Bool)

(assert (=> b!2629949 m!2973039))

(declare-fun m!2973041 () Bool)

(assert (=> b!2629949 m!2973041))

(declare-fun m!2973043 () Bool)

(assert (=> b!2629949 m!2973043))

(declare-fun m!2973045 () Bool)

(assert (=> b!2629949 m!2973045))

(declare-fun m!2973047 () Bool)

(assert (=> b!2629949 m!2973047))

(declare-fun m!2973049 () Bool)

(assert (=> b!2629949 m!2973049))

(declare-fun m!2973051 () Bool)

(assert (=> b!2629949 m!2973051))

(declare-fun m!2973053 () Bool)

(assert (=> b!2629949 m!2973053))

(declare-fun m!2973055 () Bool)

(assert (=> start!255650 m!2973055))

(declare-fun m!2973057 () Bool)

(assert (=> start!255650 m!2973057))

(declare-fun m!2973059 () Bool)

(assert (=> b!2629941 m!2973059))

(declare-fun m!2973061 () Bool)

(assert (=> b!2629939 m!2973061))

(declare-fun m!2973063 () Bool)

(assert (=> b!2629944 m!2973063))

(declare-fun m!2973065 () Bool)

(assert (=> b!2629946 m!2973065))

(declare-fun m!2973067 () Bool)

(assert (=> b!2629940 m!2973067))

(declare-fun m!2973069 () Bool)

(assert (=> b!2629940 m!2973069))

(declare-fun m!2973071 () Bool)

(assert (=> b!2629940 m!2973071))

(declare-fun m!2973073 () Bool)

(assert (=> b!2629940 m!2973073))

(declare-fun m!2973075 () Bool)

(assert (=> b!2629940 m!2973075))

(assert (=> b!2629940 m!2973073))

(assert (=> b!2629940 m!2973071))

(assert (=> b!2629940 m!2973067))

(declare-fun m!2973077 () Bool)

(assert (=> b!2629951 m!2973077))

(declare-fun m!2973079 () Bool)

(assert (=> b!2629953 m!2973079))

(declare-fun m!2973081 () Bool)

(assert (=> b!2629937 m!2973081))

(declare-fun m!2973083 () Bool)

(assert (=> b!2629943 m!2973083))

(declare-fun m!2973085 () Bool)

(assert (=> b!2629948 m!2973085))

(declare-fun m!2973087 () Bool)

(assert (=> b!2629936 m!2973087))

(check-sat (not b!2629937) (not b!2629943) (not b!2629953) (not b!2629934) (not b!2629949) b_and!192671 (not b!2629939) (not b!2629940) (not b!2629944) (not b!2629946) (not b_next!74813) (not b_next!74815) (not b!2629962) (not b!2629948) (not b!2629942) (not b!2629950) (not b!2629941) (not b!2629936) (not b!2629952) b_and!192667 b_and!192669 b_and!192673 (not b_next!74819) (not start!255650) (not b!2629945) (not b_next!74817) (not b!2629951))
(check-sat b_and!192671 (not b_next!74813) (not b_next!74815) (not b_next!74817) b_and!192667 b_and!192669 b_and!192673 (not b_next!74819))
