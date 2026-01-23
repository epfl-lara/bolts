; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255634 () Bool)

(assert start!255634)

(declare-fun b!2629316 () Bool)

(declare-fun b_free!74045 () Bool)

(declare-fun b_next!74749 () Bool)

(assert (=> b!2629316 (= b_free!74045 (not b_next!74749))))

(declare-fun tp!833622 () Bool)

(declare-fun b_and!192603 () Bool)

(assert (=> b!2629316 (= tp!833622 b_and!192603)))

(declare-fun b_free!74047 () Bool)

(declare-fun b_next!74751 () Bool)

(assert (=> b!2629316 (= b_free!74047 (not b_next!74751))))

(declare-fun tp!833623 () Bool)

(declare-fun b_and!192605 () Bool)

(assert (=> b!2629316 (= tp!833623 b_and!192605)))

(declare-fun b!2629315 () Bool)

(declare-fun b_free!74049 () Bool)

(declare-fun b_next!74753 () Bool)

(assert (=> b!2629315 (= b_free!74049 (not b_next!74753))))

(declare-fun tp!833618 () Bool)

(declare-fun b_and!192607 () Bool)

(assert (=> b!2629315 (= tp!833618 b_and!192607)))

(declare-fun b_free!74051 () Bool)

(declare-fun b_next!74755 () Bool)

(assert (=> b!2629315 (= b_free!74051 (not b_next!74755))))

(declare-fun tp!833626 () Bool)

(declare-fun b_and!192609 () Bool)

(assert (=> b!2629315 (= tp!833626 b_and!192609)))

(declare-fun bs!475681 () Bool)

(declare-fun b!2629298 () Bool)

(declare-fun b!2629312 () Bool)

(assert (= bs!475681 (and b!2629298 b!2629312)))

(declare-fun lambda!98558 () Int)

(declare-fun lambda!98557 () Int)

(assert (=> bs!475681 (not (= lambda!98558 lambda!98557))))

(declare-fun b!2629332 () Bool)

(declare-fun e!1658888 () Bool)

(assert (=> b!2629332 (= e!1658888 true)))

(declare-fun b!2629331 () Bool)

(declare-fun e!1658887 () Bool)

(assert (=> b!2629331 (= e!1658887 e!1658888)))

(declare-fun b!2629330 () Bool)

(declare-fun e!1658886 () Bool)

(assert (=> b!2629330 (= e!1658886 e!1658887)))

(assert (=> b!2629298 e!1658886))

(assert (= b!2629331 b!2629332))

(assert (= b!2629330 b!2629331))

(declare-datatypes ((List!30513 0))(
  ( (Nil!30413) (Cons!30413 (h!35833 (_ BitVec 16)) (t!216226 List!30513)) )
))
(declare-datatypes ((C!15684 0))(
  ( (C!15685 (val!9776 Int)) )
))
(declare-datatypes ((Regex!7763 0))(
  ( (ElementMatch!7763 (c!422812 C!15684)) (Concat!12604 (regOne!16038 Regex!7763) (regTwo!16038 Regex!7763)) (EmptyExpr!7763) (Star!7763 (reg!8092 Regex!7763)) (EmptyLang!7763) (Union!7763 (regOne!16039 Regex!7763) (regTwo!16039 Regex!7763)) )
))
(declare-datatypes ((TokenValue!4841 0))(
  ( (FloatLiteralValue!9682 (text!34332 List!30513)) (TokenValueExt!4840 (__x!19515 Int)) (Broken!24205 (value!149220 List!30513)) (Object!4940) (End!4841) (Def!4841) (Underscore!4841) (Match!4841) (Else!4841) (Error!4841) (Case!4841) (If!4841) (Extends!4841) (Abstract!4841) (Class!4841) (Val!4841) (DelimiterValue!9682 (del!4901 List!30513)) (KeywordValue!4847 (value!149221 List!30513)) (CommentValue!9682 (value!149222 List!30513)) (WhitespaceValue!9682 (value!149223 List!30513)) (IndentationValue!4841 (value!149224 List!30513)) (String!34088) (Int32!4841) (Broken!24206 (value!149225 List!30513)) (Boolean!4842) (Unit!44442) (OperatorValue!4844 (op!4901 List!30513)) (IdentifierValue!9682 (value!149226 List!30513)) (IdentifierValue!9683 (value!149227 List!30513)) (WhitespaceValue!9683 (value!149228 List!30513)) (True!9682) (False!9682) (Broken!24207 (value!149229 List!30513)) (Broken!24208 (value!149230 List!30513)) (True!9683) (RightBrace!4841) (RightBracket!4841) (Colon!4841) (Null!4841) (Comma!4841) (LeftBracket!4841) (False!9683) (LeftBrace!4841) (ImaginaryLiteralValue!4841 (text!34333 List!30513)) (StringLiteralValue!14523 (value!149231 List!30513)) (EOFValue!4841 (value!149232 List!30513)) (IdentValue!4841 (value!149233 List!30513)) (DelimiterValue!9683 (value!149234 List!30513)) (DedentValue!4841 (value!149235 List!30513)) (NewLineValue!4841 (value!149236 List!30513)) (IntegerValue!14523 (value!149237 (_ BitVec 32)) (text!34334 List!30513)) (IntegerValue!14524 (value!149238 Int) (text!34335 List!30513)) (Times!4841) (Or!4841) (Equal!4841) (Minus!4841) (Broken!24209 (value!149239 List!30513)) (And!4841) (Div!4841) (LessEqual!4841) (Mod!4841) (Concat!12605) (Not!4841) (Plus!4841) (SpaceValue!4841 (value!149240 List!30513)) (IntegerValue!14525 (value!149241 Int) (text!34336 List!30513)) (StringLiteralValue!14524 (text!34337 List!30513)) (FloatLiteralValue!9683 (text!34338 List!30513)) (BytesLiteralValue!4841 (value!149242 List!30513)) (CommentValue!9683 (value!149243 List!30513)) (StringLiteralValue!14525 (value!149244 List!30513)) (ErrorTokenValue!4841 (msg!4902 List!30513)) )
))
(declare-datatypes ((List!30514 0))(
  ( (Nil!30414) (Cons!30414 (h!35834 C!15684) (t!216227 List!30514)) )
))
(declare-datatypes ((IArray!18965 0))(
  ( (IArray!18966 (innerList!9540 List!30514)) )
))
(declare-datatypes ((Conc!9480 0))(
  ( (Node!9480 (left!23473 Conc!9480) (right!23803 Conc!9480) (csize!19190 Int) (cheight!9691 Int)) (Leaf!14530 (xs!12480 IArray!18965) (csize!19191 Int)) (Empty!9480) )
))
(declare-datatypes ((BalanceConc!18574 0))(
  ( (BalanceConc!18575 (c!422813 Conc!9480)) )
))
(declare-datatypes ((TokenValueInjection!9122 0))(
  ( (TokenValueInjection!9123 (toValue!6533 Int) (toChars!6392 Int)) )
))
(declare-datatypes ((String!34089 0))(
  ( (String!34090 (value!149245 String)) )
))
(declare-datatypes ((Rule!9038 0))(
  ( (Rule!9039 (regex!4619 Regex!7763) (tag!5113 String!34089) (isSeparator!4619 Bool) (transformation!4619 TokenValueInjection!9122)) )
))
(declare-datatypes ((List!30515 0))(
  ( (Nil!30415) (Cons!30415 (h!35835 Rule!9038) (t!216228 List!30515)) )
))
(declare-fun rules!1726 () List!30515)

(get-info :version)

(assert (= (and b!2629298 ((_ is Cons!30415) rules!1726)) b!2629330))

(declare-fun order!16415 () Int)

(declare-fun order!16417 () Int)

(declare-fun dynLambda!12999 (Int Int) Int)

(declare-fun dynLambda!13000 (Int Int) Int)

(assert (=> b!2629332 (< (dynLambda!12999 order!16415 (toValue!6533 (transformation!4619 (h!35835 rules!1726)))) (dynLambda!13000 order!16417 lambda!98558))))

(declare-fun order!16419 () Int)

(declare-fun dynLambda!13001 (Int Int) Int)

(assert (=> b!2629332 (< (dynLambda!13001 order!16419 (toChars!6392 (transformation!4619 (h!35835 rules!1726)))) (dynLambda!13000 order!16417 lambda!98558))))

(assert (=> b!2629298 true))

(declare-fun e!1658878 () Bool)

(declare-fun e!1658870 () Bool)

(assert (=> b!2629298 (= e!1658878 e!1658870)))

(declare-fun res!1106899 () Bool)

(assert (=> b!2629298 (=> res!1106899 e!1658870)))

(declare-datatypes ((Token!8708 0))(
  ( (Token!8709 (value!149246 TokenValue!4841) (rule!7001 Rule!9038) (size!23520 Int) (originalCharacters!5385 List!30514)) )
))
(declare-fun lt!925044 () Token!8708)

(declare-fun lt!925042 () Bool)

(declare-datatypes ((tuple2!29934 0))(
  ( (tuple2!29935 (_1!17509 Token!8708) (_2!17509 BalanceConc!18574)) )
))
(declare-datatypes ((Option!6010 0))(
  ( (None!6009) (Some!6009 (v!32396 tuple2!29934)) )
))
(declare-fun lt!925048 () Option!6010)

(assert (=> b!2629298 (= res!1106899 (or (and (not lt!925042) (= (_1!17509 (v!32396 lt!925048)) lt!925044)) (and (not lt!925042) (not (= (_1!17509 (v!32396 lt!925048)) lt!925044))) (not ((_ is None!6009) lt!925048))))))

(assert (=> b!2629298 (= lt!925042 (not ((_ is Some!6009) lt!925048)))))

(declare-datatypes ((LexerInterface!4216 0))(
  ( (LexerInterfaceExt!4213 (__x!19516 Int)) (Lexer!4214) )
))
(declare-fun thiss!14197 () LexerInterface!4216)

(declare-fun lt!925045 () BalanceConc!18574)

(declare-fun lt!925053 () BalanceConc!18574)

(declare-fun maxPrefixZipperSequence!946 (LexerInterface!4216 List!30515 BalanceConc!18574) Option!6010)

(declare-fun ++!7405 (BalanceConc!18574 BalanceConc!18574) BalanceConc!18574)

(assert (=> b!2629298 (= lt!925048 (maxPrefixZipperSequence!946 thiss!14197 rules!1726 (++!7405 lt!925053 lt!925045)))))

(declare-fun charsOf!2910 (Token!8708) BalanceConc!18574)

(assert (=> b!2629298 (= lt!925053 (charsOf!2910 lt!925044))))

(declare-fun separatorToken!156 () Token!8708)

(declare-datatypes ((List!30516 0))(
  ( (Nil!30416) (Cons!30416 (h!35836 Token!8708) (t!216229 List!30516)) )
))
(declare-datatypes ((IArray!18967 0))(
  ( (IArray!18968 (innerList!9541 List!30516)) )
))
(declare-datatypes ((Conc!9481 0))(
  ( (Node!9481 (left!23474 Conc!9481) (right!23804 Conc!9481) (csize!19192 Int) (cheight!9692 Int)) (Leaf!14531 (xs!12481 IArray!18967) (csize!19193 Int)) (Empty!9481) )
))
(declare-datatypes ((BalanceConc!18576 0))(
  ( (BalanceConc!18577 (c!422814 Conc!9481)) )
))
(declare-fun v!6381 () BalanceConc!18576)

(declare-fun from!862 () Int)

(declare-fun printWithSeparatorTokenWhenNeededRec!494 (LexerInterface!4216 List!30515 BalanceConc!18576 Token!8708 Int) BalanceConc!18574)

(assert (=> b!2629298 (= lt!925045 (printWithSeparatorTokenWhenNeededRec!494 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!925054 () List!30516)

(declare-datatypes ((Unit!44443 0))(
  ( (Unit!44444) )
))
(declare-fun lt!925057 () Unit!44443)

(declare-fun forallContained!975 (List!30516 Int Token!8708) Unit!44443)

(assert (=> b!2629298 (= lt!925057 (forallContained!975 lt!925054 lambda!98558 lt!925044))))

(declare-fun b!2629299 () Bool)

(declare-fun res!1106906 () Bool)

(assert (=> b!2629299 (=> res!1106906 e!1658878)))

(declare-fun contains!5740 (List!30516 Token!8708) Bool)

(assert (=> b!2629299 (= res!1106906 (not (contains!5740 lt!925054 lt!925044)))))

(declare-fun b!2629300 () Bool)

(declare-fun res!1106905 () Bool)

(declare-fun e!1658872 () Bool)

(assert (=> b!2629300 (=> (not res!1106905) (not e!1658872))))

(declare-fun sepAndNonSepRulesDisjointChars!1192 (List!30515 List!30515) Bool)

(assert (=> b!2629300 (= res!1106905 (sepAndNonSepRulesDisjointChars!1192 rules!1726 rules!1726))))

(declare-fun res!1106904 () Bool)

(declare-fun e!1658876 () Bool)

(assert (=> start!255634 (=> (not res!1106904) (not e!1658876))))

(assert (=> start!255634 (= res!1106904 (and ((_ is Lexer!4214) thiss!14197) (>= from!862 0)))))

(assert (=> start!255634 e!1658876))

(assert (=> start!255634 true))

(declare-fun e!1658865 () Bool)

(assert (=> start!255634 e!1658865))

(declare-fun e!1658868 () Bool)

(declare-fun inv!41219 (Token!8708) Bool)

(assert (=> start!255634 (and (inv!41219 separatorToken!156) e!1658868)))

(declare-fun e!1658869 () Bool)

(declare-fun inv!41220 (BalanceConc!18576) Bool)

(assert (=> start!255634 (and (inv!41220 v!6381) e!1658869)))

(declare-fun b!2629301 () Bool)

(declare-fun e!1658864 () Bool)

(assert (=> b!2629301 (= e!1658864 (not e!1658878))))

(declare-fun res!1106896 () Bool)

(assert (=> b!2629301 (=> res!1106896 e!1658878)))

(declare-fun contains!5741 (BalanceConc!18576 Token!8708) Bool)

(assert (=> b!2629301 (= res!1106896 (not (contains!5741 v!6381 lt!925044)))))

(declare-fun apply!7220 (BalanceConc!18576 Int) Token!8708)

(assert (=> b!2629301 (= lt!925044 (apply!7220 v!6381 from!862))))

(declare-fun lt!925051 () List!30516)

(declare-fun tail!4256 (List!30516) List!30516)

(declare-fun drop!1615 (List!30516 Int) List!30516)

(assert (=> b!2629301 (= (tail!4256 lt!925051) (drop!1615 lt!925054 (+ 1 from!862)))))

(declare-fun lt!925052 () Unit!44443)

(declare-fun lemmaDropTail!804 (List!30516 Int) Unit!44443)

(assert (=> b!2629301 (= lt!925052 (lemmaDropTail!804 lt!925054 from!862))))

(declare-fun head!6018 (List!30516) Token!8708)

(declare-fun apply!7221 (List!30516 Int) Token!8708)

(assert (=> b!2629301 (= (head!6018 lt!925051) (apply!7221 lt!925054 from!862))))

(assert (=> b!2629301 (= lt!925051 (drop!1615 lt!925054 from!862))))

(declare-fun lt!925049 () Unit!44443)

(declare-fun lemmaDropApply!830 (List!30516 Int) Unit!44443)

(assert (=> b!2629301 (= lt!925049 (lemmaDropApply!830 lt!925054 from!862))))

(declare-fun b!2629302 () Bool)

(declare-fun res!1106895 () Bool)

(assert (=> b!2629302 (=> (not res!1106895) (not e!1658872))))

(declare-fun rulesProduceEachTokenIndividually!1036 (LexerInterface!4216 List!30515 BalanceConc!18576) Bool)

(assert (=> b!2629302 (= res!1106895 (rulesProduceEachTokenIndividually!1036 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2629303 () Bool)

(declare-fun res!1106897 () Bool)

(assert (=> b!2629303 (=> (not res!1106897) (not e!1658872))))

(assert (=> b!2629303 (= res!1106897 (isSeparator!4619 (rule!7001 separatorToken!156)))))

(declare-fun b!2629304 () Bool)

(declare-fun res!1106894 () Bool)

(assert (=> b!2629304 (=> (not res!1106894) (not e!1658872))))

(declare-fun isEmpty!17353 (List!30515) Bool)

(assert (=> b!2629304 (= res!1106894 (not (isEmpty!17353 rules!1726)))))

(declare-fun tp!833625 () Bool)

(declare-fun e!1658871 () Bool)

(declare-fun b!2629305 () Bool)

(declare-fun inv!21 (TokenValue!4841) Bool)

(assert (=> b!2629305 (= e!1658868 (and (inv!21 (value!149246 separatorToken!156)) e!1658871 tp!833625))))

(declare-fun e!1658874 () Bool)

(declare-fun b!2629306 () Bool)

(declare-fun tp!833621 () Bool)

(declare-fun e!1658877 () Bool)

(declare-fun inv!41214 (String!34089) Bool)

(declare-fun inv!41221 (TokenValueInjection!9122) Bool)

(assert (=> b!2629306 (= e!1658874 (and tp!833621 (inv!41214 (tag!5113 (h!35835 rules!1726))) (inv!41221 (transformation!4619 (h!35835 rules!1726))) e!1658877))))

(declare-fun b!2629307 () Bool)

(declare-fun res!1106908 () Bool)

(assert (=> b!2629307 (=> (not res!1106908) (not e!1658872))))

(declare-fun rulesProduceIndividualToken!1928 (LexerInterface!4216 List!30515 Token!8708) Bool)

(assert (=> b!2629307 (= res!1106908 (rulesProduceIndividualToken!1928 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2629308 () Bool)

(declare-fun res!1106903 () Bool)

(declare-fun e!1658867 () Bool)

(assert (=> b!2629308 (=> res!1106903 e!1658867)))

(declare-fun lt!925050 () List!30514)

(declare-fun isEmpty!17354 (BalanceConc!18576) Bool)

(declare-datatypes ((tuple2!29936 0))(
  ( (tuple2!29937 (_1!17510 BalanceConc!18576) (_2!17510 BalanceConc!18574)) )
))
(declare-fun lex!1888 (LexerInterface!4216 List!30515 BalanceConc!18574) tuple2!29936)

(declare-fun seqFromList!3175 (List!30514) BalanceConc!18574)

(assert (=> b!2629308 (= res!1106903 (isEmpty!17354 (_1!17510 (lex!1888 thiss!14197 rules!1726 (seqFromList!3175 lt!925050)))))))

(declare-fun b!2629309 () Bool)

(declare-fun e!1658866 () Bool)

(assert (=> b!2629309 (= e!1658870 e!1658866)))

(declare-fun res!1106893 () Bool)

(assert (=> b!2629309 (=> res!1106893 e!1658866)))

(declare-fun lt!925047 () List!30514)

(declare-fun lt!925046 () List!30514)

(assert (=> b!2629309 (= res!1106893 (not (= lt!925047 lt!925046)))))

(declare-fun printList!1156 (LexerInterface!4216 List!30516) List!30514)

(assert (=> b!2629309 (= lt!925046 (printList!1156 thiss!14197 (Cons!30416 lt!925044 Nil!30416)))))

(declare-fun lt!925055 () BalanceConc!18574)

(declare-fun list!11430 (BalanceConc!18574) List!30514)

(assert (=> b!2629309 (= lt!925047 (list!11430 lt!925055))))

(declare-fun lt!925056 () BalanceConc!18576)

(declare-fun printTailRec!1115 (LexerInterface!4216 BalanceConc!18576 Int BalanceConc!18574) BalanceConc!18574)

(assert (=> b!2629309 (= lt!925055 (printTailRec!1115 thiss!14197 lt!925056 0 (BalanceConc!18575 Empty!9480)))))

(declare-fun print!1626 (LexerInterface!4216 BalanceConc!18576) BalanceConc!18574)

(assert (=> b!2629309 (= lt!925055 (print!1626 thiss!14197 lt!925056))))

(declare-fun singletonSeq!2045 (Token!8708) BalanceConc!18576)

(assert (=> b!2629309 (= lt!925056 (singletonSeq!2045 lt!925044))))

(declare-fun b!2629310 () Bool)

(declare-fun tp!833619 () Bool)

(assert (=> b!2629310 (= e!1658865 (and e!1658874 tp!833619))))

(declare-fun b!2629311 () Bool)

(declare-fun res!1106907 () Bool)

(assert (=> b!2629311 (=> res!1106907 e!1658867)))

(assert (=> b!2629311 (= res!1106907 (not (rulesProduceIndividualToken!1928 thiss!14197 rules!1726 lt!925044)))))

(declare-fun res!1106901 () Bool)

(assert (=> b!2629312 (=> (not res!1106901) (not e!1658872))))

(declare-fun forall!6351 (BalanceConc!18576 Int) Bool)

(assert (=> b!2629312 (= res!1106901 (forall!6351 v!6381 lambda!98557))))

(declare-fun e!1658879 () Bool)

(declare-fun b!2629313 () Bool)

(declare-fun tp!833620 () Bool)

(assert (=> b!2629313 (= e!1658871 (and tp!833620 (inv!41214 (tag!5113 (rule!7001 separatorToken!156))) (inv!41221 (transformation!4619 (rule!7001 separatorToken!156))) e!1658879))))

(declare-fun b!2629314 () Bool)

(declare-fun tp!833624 () Bool)

(declare-fun inv!41222 (Conc!9481) Bool)

(assert (=> b!2629314 (= e!1658869 (and (inv!41222 (c!422814 v!6381)) tp!833624))))

(assert (=> b!2629315 (= e!1658877 (and tp!833618 tp!833626))))

(assert (=> b!2629316 (= e!1658879 (and tp!833622 tp!833623))))

(declare-fun b!2629317 () Bool)

(assert (=> b!2629317 (= e!1658866 e!1658867)))

(declare-fun res!1106902 () Bool)

(assert (=> b!2629317 (=> res!1106902 e!1658867)))

(assert (=> b!2629317 (= res!1106902 (not (= lt!925046 lt!925050)))))

(assert (=> b!2629317 (= lt!925050 (list!11430 lt!925053))))

(declare-fun b!2629318 () Bool)

(assert (=> b!2629318 (= e!1658867 (<= 0 from!862))))

(declare-fun b!2629319 () Bool)

(declare-fun res!1106909 () Bool)

(assert (=> b!2629319 (=> (not res!1106909) (not e!1658872))))

(declare-fun rulesInvariant!3716 (LexerInterface!4216 List!30515) Bool)

(assert (=> b!2629319 (= res!1106909 (rulesInvariant!3716 thiss!14197 rules!1726))))

(declare-fun b!2629320 () Bool)

(assert (=> b!2629320 (= e!1658872 e!1658864)))

(declare-fun res!1106900 () Bool)

(assert (=> b!2629320 (=> (not res!1106900) (not e!1658864))))

(declare-fun lt!925043 () Int)

(assert (=> b!2629320 (= res!1106900 (< from!862 lt!925043))))

(declare-fun lt!925041 () Unit!44443)

(declare-fun lemmaContentSubsetPreservesForall!288 (List!30516 List!30516 Int) Unit!44443)

(declare-fun dropList!922 (BalanceConc!18576 Int) List!30516)

(assert (=> b!2629320 (= lt!925041 (lemmaContentSubsetPreservesForall!288 lt!925054 (dropList!922 v!6381 from!862) lambda!98557))))

(declare-fun list!11431 (BalanceConc!18576) List!30516)

(assert (=> b!2629320 (= lt!925054 (list!11431 v!6381))))

(declare-fun b!2629321 () Bool)

(assert (=> b!2629321 (= e!1658876 e!1658872)))

(declare-fun res!1106898 () Bool)

(assert (=> b!2629321 (=> (not res!1106898) (not e!1658872))))

(assert (=> b!2629321 (= res!1106898 (<= from!862 lt!925043))))

(declare-fun size!23521 (BalanceConc!18576) Int)

(assert (=> b!2629321 (= lt!925043 (size!23521 v!6381))))

(assert (= (and start!255634 res!1106904) b!2629321))

(assert (= (and b!2629321 res!1106898) b!2629304))

(assert (= (and b!2629304 res!1106894) b!2629319))

(assert (= (and b!2629319 res!1106909) b!2629302))

(assert (= (and b!2629302 res!1106895) b!2629307))

(assert (= (and b!2629307 res!1106908) b!2629303))

(assert (= (and b!2629303 res!1106897) b!2629312))

(assert (= (and b!2629312 res!1106901) b!2629300))

(assert (= (and b!2629300 res!1106905) b!2629320))

(assert (= (and b!2629320 res!1106900) b!2629301))

(assert (= (and b!2629301 (not res!1106896)) b!2629299))

(assert (= (and b!2629299 (not res!1106906)) b!2629298))

(assert (= (and b!2629298 (not res!1106899)) b!2629309))

(assert (= (and b!2629309 (not res!1106893)) b!2629317))

(assert (= (and b!2629317 (not res!1106902)) b!2629311))

(assert (= (and b!2629311 (not res!1106907)) b!2629308))

(assert (= (and b!2629308 (not res!1106903)) b!2629318))

(assert (= b!2629306 b!2629315))

(assert (= b!2629310 b!2629306))

(assert (= (and start!255634 ((_ is Cons!30415) rules!1726)) b!2629310))

(assert (= b!2629313 b!2629316))

(assert (= b!2629305 b!2629313))

(assert (= start!255634 b!2629305))

(assert (= start!255634 b!2629314))

(declare-fun m!2972375 () Bool)

(assert (=> b!2629312 m!2972375))

(declare-fun m!2972377 () Bool)

(assert (=> b!2629320 m!2972377))

(assert (=> b!2629320 m!2972377))

(declare-fun m!2972379 () Bool)

(assert (=> b!2629320 m!2972379))

(declare-fun m!2972381 () Bool)

(assert (=> b!2629320 m!2972381))

(declare-fun m!2972383 () Bool)

(assert (=> b!2629300 m!2972383))

(declare-fun m!2972385 () Bool)

(assert (=> b!2629321 m!2972385))

(declare-fun m!2972387 () Bool)

(assert (=> b!2629306 m!2972387))

(declare-fun m!2972389 () Bool)

(assert (=> b!2629306 m!2972389))

(declare-fun m!2972391 () Bool)

(assert (=> b!2629319 m!2972391))

(declare-fun m!2972393 () Bool)

(assert (=> b!2629309 m!2972393))

(declare-fun m!2972395 () Bool)

(assert (=> b!2629309 m!2972395))

(declare-fun m!2972397 () Bool)

(assert (=> b!2629309 m!2972397))

(declare-fun m!2972399 () Bool)

(assert (=> b!2629309 m!2972399))

(declare-fun m!2972401 () Bool)

(assert (=> b!2629309 m!2972401))

(declare-fun m!2972403 () Bool)

(assert (=> b!2629311 m!2972403))

(declare-fun m!2972405 () Bool)

(assert (=> b!2629317 m!2972405))

(declare-fun m!2972407 () Bool)

(assert (=> b!2629298 m!2972407))

(declare-fun m!2972409 () Bool)

(assert (=> b!2629298 m!2972409))

(assert (=> b!2629298 m!2972409))

(declare-fun m!2972411 () Bool)

(assert (=> b!2629298 m!2972411))

(declare-fun m!2972413 () Bool)

(assert (=> b!2629298 m!2972413))

(declare-fun m!2972415 () Bool)

(assert (=> b!2629298 m!2972415))

(declare-fun m!2972417 () Bool)

(assert (=> b!2629299 m!2972417))

(declare-fun m!2972419 () Bool)

(assert (=> b!2629313 m!2972419))

(declare-fun m!2972421 () Bool)

(assert (=> b!2629313 m!2972421))

(declare-fun m!2972423 () Bool)

(assert (=> b!2629305 m!2972423))

(declare-fun m!2972425 () Bool)

(assert (=> b!2629307 m!2972425))

(declare-fun m!2972427 () Bool)

(assert (=> b!2629314 m!2972427))

(declare-fun m!2972429 () Bool)

(assert (=> b!2629308 m!2972429))

(assert (=> b!2629308 m!2972429))

(declare-fun m!2972431 () Bool)

(assert (=> b!2629308 m!2972431))

(declare-fun m!2972433 () Bool)

(assert (=> b!2629308 m!2972433))

(declare-fun m!2972435 () Bool)

(assert (=> b!2629302 m!2972435))

(declare-fun m!2972437 () Bool)

(assert (=> start!255634 m!2972437))

(declare-fun m!2972439 () Bool)

(assert (=> start!255634 m!2972439))

(declare-fun m!2972441 () Bool)

(assert (=> b!2629301 m!2972441))

(declare-fun m!2972443 () Bool)

(assert (=> b!2629301 m!2972443))

(declare-fun m!2972445 () Bool)

(assert (=> b!2629301 m!2972445))

(declare-fun m!2972447 () Bool)

(assert (=> b!2629301 m!2972447))

(declare-fun m!2972449 () Bool)

(assert (=> b!2629301 m!2972449))

(declare-fun m!2972451 () Bool)

(assert (=> b!2629301 m!2972451))

(declare-fun m!2972453 () Bool)

(assert (=> b!2629301 m!2972453))

(declare-fun m!2972455 () Bool)

(assert (=> b!2629301 m!2972455))

(declare-fun m!2972457 () Bool)

(assert (=> b!2629301 m!2972457))

(declare-fun m!2972459 () Bool)

(assert (=> b!2629304 m!2972459))

(check-sat (not b!2629312) (not b!2629319) (not b!2629311) (not start!255634) b_and!192603 (not b!2629314) (not b_next!74751) (not b!2629321) (not b!2629310) (not b_next!74753) (not b!2629320) (not b!2629306) (not b!2629301) (not b!2629309) (not b!2629304) (not b!2629313) b_and!192607 (not b_next!74749) (not b!2629317) (not b!2629299) (not b!2629308) b_and!192605 (not b_next!74755) b_and!192609 (not b!2629302) (not b!2629307) (not b!2629305) (not b!2629330) (not b!2629298) (not b!2629300))
(check-sat (not b_next!74753) b_and!192607 b_and!192603 (not b_next!74749) b_and!192605 (not b_next!74751) (not b_next!74755) b_and!192609)
